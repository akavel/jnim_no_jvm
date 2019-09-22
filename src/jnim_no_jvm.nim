import jnim
import macros

dumpTree:
  proc Java_com_akavel_hello2_HelloActivity_stringFromJNI*(env: JNIEnvPtr, thiz: jobject): jstring {.cdecl,exportc,dynlib.} =
    return env.NewStringUTF(env, "Hello from Nim :D")

when isMainModule:
  echo("Hello, World!")

