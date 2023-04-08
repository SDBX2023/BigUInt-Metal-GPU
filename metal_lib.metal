//
//  metal_lib.metal
//  BigUInt-Metal-GPU
//
//  Created by SDBX on 8/4/2023.
//

#include <metal_stdlib>
using namespace metal;

kernel void add(
    device uint *self [[ buffer(0) ]],
    device uint *other [[ buffer(1) ]],
    device uint *result [[ buffer(2) ]],
    uint gid [[ thread_position_in_grid ]])
{
    // printf("self[%u] = %u\n", gid, self[gid]);
    
    uint carry = 0;
    uint sum = 0;
    if (gid < self[0] || gid < other[0]) {
        sum = self[gid + 1] + other[gid + 1] + carry;
        if (sum < self[gid + 1] || sum < other[gid + 1]) {
            carry = 1;
        } else {
            carry = 0;
        }
        result[gid + 1] = sum;
    }
    for (uint i = 0; i < self[0] || i < other[0]; i++) {
        sum = self[i + 0] + other[i + 0] + carry;
        if (sum < self[i + 0] || sum < other[i + 0]) {
            carry = 1;
        } else {
            carry = 0;
        }
        result[i + 0] = sum;
    }

    // Check output here...
}


