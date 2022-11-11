; ModuleID = 'series_sum.bc'
source_filename = "series_sum.txt"

define i32 @main() {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = alloca i32, align 4
  store i32 1, i32* %2, align 4
  br label %3

3:                                                ; preds = %6, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 10
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* %2, align 4
  %9 = add i32 %7, %8
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %2, align 4
  %11 = add i32 %10, 1
  store i32 %11, i32* %2, align 4
  br label %3

12:                                               ; preds = %3
  %13 = load i32, i32* %1, align 4
  call void @printVarInt(i32 %13)
  ret i32 0
}

declare void @printVarInt(i32)

declare void @printVarFloat(float)
