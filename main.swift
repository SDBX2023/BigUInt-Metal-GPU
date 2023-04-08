//
//  main.swift
//  BigUInt-Metal-GPU
//
//  Created by SDBX on 8/4/2023.
//

import Foundation
import Metal

let metalDevice = MTLCopyAllDevices()[0];
print("Running on Device:", metalDevice.name)

class BigUInt {
    var value: [UInt32] // Array of 32-bit unsigned integers
    // let metalDevice = MTLCreateSystemDefaultDevice() // Create Metal device
    // let metalDevice = MTLCopyAllDevices()[1];
        
    init(_ value: [UInt32]) {
        self.value = value
    }
    
    // Adds two BigUInts and returns the result
    func add(_ other: BigUInt) -> BigUInt {
        
        let bufferSize = max(self.value.count, other.value.count) + 1
        var result = [UInt32](repeating: 0, count: bufferSize)
        
        let addKernelFunction = "add"
        
        //let library = try! metalDevice!.makeLibrary(source: "metal_lib.metal", options: nil)
        //let libraryPath = Bundle.main.path(forResource: "metal_lib", ofType: "metal")!
        //let library = try! metalDevice!.makeLibrary(filepath: libraryPath)
        
        //let metalLibFilePath = Bundle.main.path(forResource: "metal_lib", ofType: "metal")!
        //let metalLibContent = try! String(contentsOfFile: metalLibFilePath, encoding: .utf8)
        //let library = try! metalDevice!.makeLibrary(source: metalLibContent, options: nil)

        let defaultLibrary = metalDevice.makeDefaultLibrary()
        let kernelFunction = defaultLibrary?.makeFunction(name: "add")!
        
        let addKernel = (defaultLibrary?.makeFunction(name: addKernelFunction))!
        let pipelineState = try! metalDevice.makeComputePipelineState(function: addKernel)
        
        let commandQueue = metalDevice.makeCommandQueue()
        
        
        // let bufferSize = max(self.value.count, other.value.count) + 1
        let buffer1 = metalDevice.makeBuffer(bytes: self.value, length: bufferSize * MemoryLayout<UInt32>.size, options: [])!
        let buffer2 = metalDevice.makeBuffer(bytes: other.value, length: bufferSize * MemoryLayout<UInt32>.size, options: [])!
        // var result = [UInt32](repeating: 0, count: bufferSize)
        var resultData = Data(bytes: &result, count: result.count * MemoryLayout<UInt32>.size)
        var buffer3 = metalDevice.makeBuffer(length: resultData.count, options: .storageModeShared)!
        /* resultData.withUnsafeMutableBytes { (bytes: UnsafeMutableRawBufferPointer) in
            memcpy(bytes.baseAddress!, resultData.bytes, resultData.count)
        } */
        resultData.withUnsafeBytes { (bytes: UnsafeRawBufferPointer) in
            memcpy(buffer3.contents(), bytes.baseAddress!, resultData.count)
        }
        // ...
        
        let commandBuffer = commandQueue?.makeCommandBuffer()!
        let commandEncoder = commandBuffer?.makeComputeCommandEncoder()!
        commandEncoder?.setComputePipelineState(pipelineState)
        commandEncoder?.setBuffer(buffer1, offset: 0, index: 0)
        commandEncoder?.setBuffer(buffer2, offset: 0, index: 1)
        commandEncoder?.setBuffer(buffer3, offset: 0, index: 2)
        
        let threadsPerGroup = MTLSize(width: 64, height: 1, depth: 1)
        let numThreadgroups = MTLSize(width: (max(self.value.count, other.value.count) + 63) / 64, height: 1, depth: 1)
        commandEncoder?.dispatchThreadgroups(numThreadgroups, threadsPerThreadgroup: threadsPerGroup)
        
        commandEncoder?.endEncoding()
        commandBuffer?.commit()
        commandBuffer?.waitUntilCompleted()
        
        resultData.withUnsafeBytes { (bytes: UnsafeRawBufferPointer) in
            memcpy(buffer3.contents(), bytes.baseAddress!, resultData.count)
        }
        
        // Get output data back into Swift
        let data = NSData(bytesNoCopy: buffer3.contents(), length: bufferSize,
                            freeWhenDone: false)
        data.getBytes(&buffer3, length: bufferSize)
        
        // print(result, result.count)
        // print(resultData[512], resultData.count)
        
        // print(buffer3, buffer3.contents(), buffer3.length)
        print(data, data[128], data.length)
        
        return BigUInt(Array(result.drop(while: { $0 == 0 })))
    }
}

print("Hello, World!")

var testInputA: [UInt32] = Array(0x00...0xFF)
var testInputB: [UInt32] = Array(0xFF00...0xFFFF)

var bigGPUnumA: BigUInt = BigUInt(testInputA)
var bigGPUnumB: BigUInt = BigUInt(testInputB)
let rsltOutptC = bigGPUnumA.add(bigGPUnumB)

print(bigGPUnumA, bigGPUnumA.value)
print(bigGPUnumB, bigGPUnumB.value)
print(rsltOutptC, rsltOutptC.value)

print("Goodbye.")
sleep(300);
