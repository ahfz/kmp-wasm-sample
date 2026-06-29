package org.example.wasm

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform