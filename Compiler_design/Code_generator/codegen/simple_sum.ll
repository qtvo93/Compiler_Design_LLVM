; ModuleID = 'simple_sum.bc'
source_filename = "simple_sum.txt"

define i32 @sum(i32 %0, i32 %1) {
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = alloca i32, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = add i32 %5, %6
  ret i32 %7
}

define i32 @main() {
  %1 = alloca i32, align 4
  store i32 10, i32* %1, align 4
  %2 = alloca i32, align 4
  store i32 15, i32* %2, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @sum(i32 %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  call void @printVarInt(i32 %7)
  ret i32 0
}

declare void @printVarInt(i32)

declare void @printVarFloat(float)
