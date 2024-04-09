; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33306 () Bool)

(assert start!33306)

(declare-fun b!330931 () Bool)

(declare-fun e!203047 () Bool)

(declare-fun e!203048 () Bool)

(assert (=> b!330931 (= e!203047 e!203048)))

(declare-fun res!182492 () Bool)

(assert (=> b!330931 (=> (not res!182492) (not e!203048))))

(declare-datatypes ((array!16910 0))(
  ( (array!16911 (arr!7993 (Array (_ BitVec 32) (_ BitVec 64))) (size!8345 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16910)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3135 0))(
  ( (MissingZero!3135 (index!14716 (_ BitVec 32))) (Found!3135 (index!14717 (_ BitVec 32))) (Intermediate!3135 (undefined!3947 Bool) (index!14718 (_ BitVec 32)) (x!32970 (_ BitVec 32))) (Undefined!3135) (MissingVacant!3135 (index!14719 (_ BitVec 32))) )
))
(declare-fun lt!158684 () SeekEntryResult!3135)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16910 (_ BitVec 32)) SeekEntryResult!3135)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!330931 (= res!182492 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!158684))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!330931 (= lt!158684 (Intermediate!3135 false resIndex!58 resX!58))))

(declare-fun res!182497 () Bool)

(assert (=> start!33306 (=> (not res!182497) (not e!203047))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33306 (= res!182497 (validMask!0 mask!3777))))

(assert (=> start!33306 e!203047))

(declare-fun array_inv!5947 (array!16910) Bool)

(assert (=> start!33306 (array_inv!5947 a!3305)))

(assert (=> start!33306 true))

(declare-fun b!330932 () Bool)

(declare-fun res!182494 () Bool)

(assert (=> b!330932 (=> (not res!182494) (not e!203047))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!330932 (= res!182494 (validKeyInArray!0 k!2497))))

(declare-fun b!330933 () Bool)

(declare-fun res!182496 () Bool)

(assert (=> b!330933 (=> (not res!182496) (not e!203047))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16910 (_ BitVec 32)) Bool)

(assert (=> b!330933 (= res!182496 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!330934 () Bool)

(declare-fun e!203050 () Bool)

(assert (=> b!330934 (= e!203048 e!203050)))

(declare-fun res!182498 () Bool)

(assert (=> b!330934 (=> (not res!182498) (not e!203050))))

(declare-fun lt!158682 () SeekEntryResult!3135)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!330934 (= res!182498 (and (= lt!158682 lt!158684) (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7993 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(assert (=> b!330934 (= lt!158682 (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777))))

(declare-fun b!330935 () Bool)

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!330935 (= e!203050 (not (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 (array!16911 (store (arr!7993 a!3305) i!1250 k!2497) (size!8345 a!3305)) mask!3777) lt!158682)))))

(declare-datatypes ((Unit!10328 0))(
  ( (Unit!10329) )
))
(declare-fun lt!158683 () Unit!10328)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16910 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10328)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!330935 (= lt!158683 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(declare-fun b!330936 () Bool)

(declare-fun res!182499 () Bool)

(assert (=> b!330936 (=> (not res!182499) (not e!203047))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16910 (_ BitVec 32)) SeekEntryResult!3135)

(assert (=> b!330936 (= res!182499 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3135 i!1250)))))

(declare-fun b!330937 () Bool)

(declare-fun res!182495 () Bool)

(assert (=> b!330937 (=> (not res!182495) (not e!203047))))

(assert (=> b!330937 (= res!182495 (and (= (size!8345 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8345 a!3305))))))

(declare-fun b!330938 () Bool)

(declare-fun res!182491 () Bool)

(assert (=> b!330938 (=> (not res!182491) (not e!203048))))

(assert (=> b!330938 (= res!182491 (and (= (select (arr!7993 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8345 a!3305))))))

(declare-fun b!330939 () Bool)

(declare-fun res!182493 () Bool)

(assert (=> b!330939 (=> (not res!182493) (not e!203047))))

(declare-fun arrayContainsKey!0 (array!16910 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!330939 (= res!182493 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(assert (= (and start!33306 res!182497) b!330937))

(assert (= (and b!330937 res!182495) b!330932))

(assert (= (and b!330932 res!182494) b!330939))

(assert (= (and b!330939 res!182493) b!330936))

(assert (= (and b!330936 res!182499) b!330933))

(assert (= (and b!330933 res!182496) b!330931))

(assert (= (and b!330931 res!182492) b!330938))

(assert (= (and b!330938 res!182491) b!330934))

(assert (= (and b!330934 res!182498) b!330935))

(declare-fun m!335971 () Bool)

(assert (=> b!330931 m!335971))

(assert (=> b!330931 m!335971))

(declare-fun m!335973 () Bool)

(assert (=> b!330931 m!335973))

(declare-fun m!335975 () Bool)

(assert (=> b!330939 m!335975))

(declare-fun m!335977 () Bool)

(assert (=> b!330936 m!335977))

(declare-fun m!335979 () Bool)

(assert (=> b!330932 m!335979))

(declare-fun m!335981 () Bool)

(assert (=> b!330933 m!335981))

(declare-fun m!335983 () Bool)

(assert (=> b!330934 m!335983))

(declare-fun m!335985 () Bool)

(assert (=> b!330934 m!335985))

(declare-fun m!335987 () Bool)

(assert (=> start!33306 m!335987))

(declare-fun m!335989 () Bool)

(assert (=> start!33306 m!335989))

(declare-fun m!335991 () Bool)

(assert (=> b!330938 m!335991))

(declare-fun m!335993 () Bool)

(assert (=> b!330935 m!335993))

(declare-fun m!335995 () Bool)

(assert (=> b!330935 m!335995))

(declare-fun m!335997 () Bool)

(assert (=> b!330935 m!335997))

(assert (=> b!330935 m!335997))

(declare-fun m!335999 () Bool)

(assert (=> b!330935 m!335999))

(push 1)

(assert (not b!330933))

(assert (not b!330939))

(assert (not b!330935))

(assert (not b!330934))

(assert (not b!330936))

(assert (not b!330932))

(assert (not start!33306))

(assert (not b!330931))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!331075 () Bool)

(declare-fun e!203123 () SeekEntryResult!3135)

(assert (=> b!331075 (= e!203123 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!331076 () Bool)

(declare-fun e!203122 () Bool)

(declare-fun lt!158726 () SeekEntryResult!3135)

(assert (=> b!331076 (= e!203122 (bvsge (x!32970 lt!158726) #b01111111111111111111111111111110))))

(declare-fun b!331077 () Bool)

(declare-fun e!203120 () SeekEntryResult!3135)

(assert (=> b!331077 (= e!203120 (Intermediate!3135 true (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!331078 () Bool)

(assert (=> b!331078 (and (bvsge (index!14718 lt!158726) #b00000000000000000000000000000000) (bvslt (index!14718 lt!158726) (size!8345 a!3305)))))

(declare-fun res!182577 () Bool)

(assert (=> b!331078 (= res!182577 (= (select (arr!7993 a!3305) (index!14718 lt!158726)) k!2497))))

(declare-fun e!203121 () Bool)

(assert (=> b!331078 (=> res!182577 e!203121)))

(declare-fun e!203119 () Bool)

(assert (=> b!331078 (= e!203119 e!203121)))

(declare-fun b!331079 () Bool)

(assert (=> b!331079 (and (bvsge (index!14718 lt!158726) #b00000000000000000000000000000000) (bvslt (index!14718 lt!158726) (size!8345 a!3305)))))

(assert (=> b!331079 (= e!203121 (= (select (arr!7993 a!3305) (index!14718 lt!158726)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!331080 () Bool)

(assert (=> b!331080 (= e!203122 e!203119)))

(declare-fun res!182575 () Bool)

(assert (=> b!331080 (= res!182575 (and (is-Intermediate!3135 lt!158726) (not (undefined!3947 lt!158726)) (bvslt (x!32970 lt!158726) #b01111111111111111111111111111110) (bvsge (x!32970 lt!158726) #b00000000000000000000000000000000) (bvsge (x!32970 lt!158726) #b00000000000000000000000000000000)))))

(assert (=> b!331080 (=> (not res!182575) (not e!203119))))

(declare-fun b!331081 () Bool)

(assert (=> b!331081 (= e!203123 (Intermediate!3135 false (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun d!70249 () Bool)

(assert (=> d!70249 e!203122))

(declare-fun c!51895 () Bool)

(assert (=> d!70249 (= c!51895 (and (is-Intermediate!3135 lt!158726) (undefined!3947 lt!158726)))))

(assert (=> d!70249 (= lt!158726 e!203120)))

(declare-fun c!51894 () Bool)

(assert (=> d!70249 (= c!51894 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!158727 () (_ BitVec 64))

(assert (=> d!70249 (= lt!158727 (select (arr!7993 a!3305) (toIndex!0 k!2497 mask!3777)))))

(assert (=> d!70249 (validMask!0 mask!3777)))

(assert (=> d!70249 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!158726)))

(declare-fun b!331082 () Bool)

(assert (=> b!331082 (= e!203120 e!203123)))

(declare-fun c!51896 () Bool)

(assert (=> b!331082 (= c!51896 (or (= lt!158727 k!2497) (= (bvadd lt!158727 lt!158727) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!331083 () Bool)

(assert (=> b!331083 (and (bvsge (index!14718 lt!158726) #b00000000000000000000000000000000) (bvslt (index!14718 lt!158726) (size!8345 a!3305)))))

(declare-fun res!182576 () Bool)

(assert (=> b!331083 (= res!182576 (= (select (arr!7993 a!3305) (index!14718 lt!158726)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!331083 (=> res!182576 e!203121)))

(assert (= (and d!70249 c!51894) b!331077))

(assert (= (and d!70249 (not c!51894)) b!331082))

(assert (= (and b!331082 c!51896) b!331081))

(assert (= (and b!331082 (not c!51896)) b!331075))

(assert (= (and d!70249 c!51895) b!331076))

(assert (= (and d!70249 (not c!51895)) b!331080))

(assert (= (and b!331080 res!182575) b!331078))

(assert (= (and b!331078 (not res!182577)) b!331083))

(assert (= (and b!331083 (not res!182576)) b!331079))

(assert (=> b!331075 m!335971))

(declare-fun m!336079 () Bool)

(assert (=> b!331075 m!336079))

(assert (=> b!331075 m!336079))

(declare-fun m!336081 () Bool)

(assert (=> b!331075 m!336081))

(declare-fun m!336085 () Bool)

(assert (=> b!331083 m!336085))

(assert (=> b!331078 m!336085))

(assert (=> d!70249 m!335971))

(declare-fun m!336089 () Bool)

(assert (=> d!70249 m!336089))

(assert (=> d!70249 m!335987))

(assert (=> b!331079 m!336085))

(assert (=> b!330931 d!70249))

(declare-fun d!70253 () Bool)

(declare-fun lt!158741 () (_ BitVec 32))

(declare-fun lt!158740 () (_ BitVec 32))

(assert (=> d!70253 (= lt!158741 (bvmul (bvxor lt!158740 (bvlshr lt!158740 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!70253 (= lt!158740 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!70253 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!182582 (let ((h!5445 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!32977 (bvmul (bvxor h!5445 (bvlshr h!5445 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!32977 (bvlshr x!32977 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!182582 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!182582 #b00000000000000000000000000000000))))))

(assert (=> d!70253 (= (toIndex!0 k!2497 mask!3777) (bvand (bvxor lt!158741 (bvlshr lt!158741 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!330931 d!70253))

(declare-fun b!331144 () Bool)

(declare-fun e!203166 () SeekEntryResult!3135)

(assert (=> b!331144 (= e!203166 Undefined!3135)))

(declare-fun lt!158769 () SeekEntryResult!3135)

(declare-fun e!203164 () SeekEntryResult!3135)

(declare-fun b!331145 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16910 (_ BitVec 32)) SeekEntryResult!3135)

(assert (=> b!331145 (= e!203164 (seekKeyOrZeroReturnVacant!0 (x!32970 lt!158769) (index!14718 lt!158769) (index!14718 lt!158769) k!2497 a!3305 mask!3777))))

(declare-fun b!331146 () Bool)

(declare-fun e!203165 () SeekEntryResult!3135)

(assert (=> b!331146 (= e!203166 e!203165)))

(declare-fun lt!158770 () (_ BitVec 64))

(assert (=> b!331146 (= lt!158770 (select (arr!7993 a!3305) (index!14718 lt!158769)))))

(declare-fun c!51916 () Bool)

(assert (=> b!331146 (= c!51916 (= lt!158770 k!2497))))

(declare-fun d!70259 () Bool)

(declare-fun lt!158768 () SeekEntryResult!3135)

(assert (=> d!70259 (and (or (is-Undefined!3135 lt!158768) (not (is-Found!3135 lt!158768)) (and (bvsge (index!14717 lt!158768) #b00000000000000000000000000000000) (bvslt (index!14717 lt!158768) (size!8345 a!3305)))) (or (is-Undefined!3135 lt!158768) (is-Found!3135 lt!158768) (not (is-MissingZero!3135 lt!158768)) (and (bvsge (index!14716 lt!158768) #b00000000000000000000000000000000) (bvslt (index!14716 lt!158768) (size!8345 a!3305)))) (or (is-Undefined!3135 lt!158768) (is-Found!3135 lt!158768) (is-MissingZero!3135 lt!158768) (not (is-MissingVacant!3135 lt!158768)) (and (bvsge (index!14719 lt!158768) #b00000000000000000000000000000000) (bvslt (index!14719 lt!158768) (size!8345 a!3305)))) (or (is-Undefined!3135 lt!158768) (ite (is-Found!3135 lt!158768) (= (select (arr!7993 a!3305) (index!14717 lt!158768)) k!2497) (ite (is-MissingZero!3135 lt!158768) (= (select (arr!7993 a!3305) (index!14716 lt!158768)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3135 lt!158768) (= (select (arr!7993 a!3305) (index!14719 lt!158768)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!70259 (= lt!158768 e!203166)))

(declare-fun c!51917 () Bool)

(assert (=> d!70259 (= c!51917 (and (is-Intermediate!3135 lt!158769) (undefined!3947 lt!158769)))))

(assert (=> d!70259 (= lt!158769 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777))))

(assert (=> d!70259 (validMask!0 mask!3777)))

(assert (=> d!70259 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) lt!158768)))

(declare-fun b!331147 () Bool)

(assert (=> b!331147 (= e!203165 (Found!3135 (index!14718 lt!158769)))))

(declare-fun b!331148 () Bool)

(declare-fun c!51915 () Bool)

(assert (=> b!331148 (= c!51915 (= lt!158770 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!331148 (= e!203165 e!203164)))

(declare-fun b!331149 () Bool)

(assert (=> b!331149 (= e!203164 (MissingZero!3135 (index!14718 lt!158769)))))

(assert (= (and d!70259 c!51917) b!331144))

(assert (= (and d!70259 (not c!51917)) b!331146))

(assert (= (and b!331146 c!51916) b!331147))

(assert (= (and b!331146 (not c!51916)) b!331148))

(assert (= (and b!331148 c!51915) b!331149))

(assert (= (and b!331148 (not c!51915)) b!331145))

(declare-fun m!336125 () Bool)

(assert (=> b!331145 m!336125))

(declare-fun m!336127 () Bool)

(assert (=> b!331146 m!336127))

(declare-fun m!336129 () Bool)

(assert (=> d!70259 m!336129))

(assert (=> d!70259 m!335971))

(assert (=> d!70259 m!335971))

(assert (=> d!70259 m!335973))

(declare-fun m!336131 () Bool)

(assert (=> d!70259 m!336131))

(assert (=> d!70259 m!335987))

(declare-fun m!336133 () Bool)

(assert (=> d!70259 m!336133))

(assert (=> b!330936 d!70259))

(declare-fun e!203175 () SeekEntryResult!3135)

(declare-fun b!331154 () Bool)

(assert (=> b!331154 (= e!203175 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 (array!16911 (store (arr!7993 a!3305) i!1250 k!2497) (size!8345 a!3305)) mask!3777))))

(declare-fun b!331155 () Bool)

(declare-fun e!203174 () Bool)

(declare-fun lt!158771 () SeekEntryResult!3135)

(assert (=> b!331155 (= e!203174 (bvsge (x!32970 lt!158771) #b01111111111111111111111111111110))))

(declare-fun b!331156 () Bool)

(declare-fun e!203172 () SeekEntryResult!3135)

(assert (=> b!331156 (= e!203172 (Intermediate!3135 true index!1840 x!1490))))

(declare-fun b!331157 () Bool)

(assert (=> b!331157 (and (bvsge (index!14718 lt!158771) #b00000000000000000000000000000000) (bvslt (index!14718 lt!158771) (size!8345 (array!16911 (store (arr!7993 a!3305) i!1250 k!2497) (size!8345 a!3305)))))))

(declare-fun res!182611 () Bool)

(assert (=> b!331157 (= res!182611 (= (select (arr!7993 (array!16911 (store (arr!7993 a!3305) i!1250 k!2497) (size!8345 a!3305))) (index!14718 lt!158771)) k!2497))))

(declare-fun e!203173 () Bool)

(assert (=> b!331157 (=> res!182611 e!203173)))

(declare-fun e!203171 () Bool)

(assert (=> b!331157 (= e!203171 e!203173)))

(declare-fun b!331158 () Bool)

(assert (=> b!331158 (and (bvsge (index!14718 lt!158771) #b00000000000000000000000000000000) (bvslt (index!14718 lt!158771) (size!8345 (array!16911 (store (arr!7993 a!3305) i!1250 k!2497) (size!8345 a!3305)))))))

(assert (=> b!331158 (= e!203173 (= (select (arr!7993 (array!16911 (store (arr!7993 a!3305) i!1250 k!2497) (size!8345 a!3305))) (index!14718 lt!158771)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!331159 () Bool)

(assert (=> b!331159 (= e!203174 e!203171)))

(declare-fun res!182609 () Bool)

(assert (=> b!331159 (= res!182609 (and (is-Intermediate!3135 lt!158771) (not (undefined!3947 lt!158771)) (bvslt (x!32970 lt!158771) #b01111111111111111111111111111110) (bvsge (x!32970 lt!158771) #b00000000000000000000000000000000) (bvsge (x!32970 lt!158771) x!1490)))))

(assert (=> b!331159 (=> (not res!182609) (not e!203171))))

(declare-fun b!331160 () Bool)

(assert (=> b!331160 (= e!203175 (Intermediate!3135 false index!1840 x!1490))))

(declare-fun d!70279 () Bool)

(assert (=> d!70279 e!203174))

(declare-fun c!51919 () Bool)

(assert (=> d!70279 (= c!51919 (and (is-Intermediate!3135 lt!158771) (undefined!3947 lt!158771)))))

(assert (=> d!70279 (= lt!158771 e!203172)))

(declare-fun c!51918 () Bool)

(assert (=> d!70279 (= c!51918 (bvsge x!1490 #b01111111111111111111111111111110))))

(declare-fun lt!158772 () (_ BitVec 64))

(assert (=> d!70279 (= lt!158772 (select (arr!7993 (array!16911 (store (arr!7993 a!3305) i!1250 k!2497) (size!8345 a!3305))) index!1840))))

(assert (=> d!70279 (validMask!0 mask!3777)))

(assert (=> d!70279 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 (array!16911 (store (arr!7993 a!3305) i!1250 k!2497) (size!8345 a!3305)) mask!3777) lt!158771)))

(declare-fun b!331161 () Bool)

(assert (=> b!331161 (= e!203172 e!203175)))

(declare-fun c!51920 () Bool)

(assert (=> b!331161 (= c!51920 (or (= lt!158772 k!2497) (= (bvadd lt!158772 lt!158772) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!331162 () Bool)

(assert (=> b!331162 (and (bvsge (index!14718 lt!158771) #b00000000000000000000000000000000) (bvslt (index!14718 lt!158771) (size!8345 (array!16911 (store (arr!7993 a!3305) i!1250 k!2497) (size!8345 a!3305)))))))

(declare-fun res!182610 () Bool)

(assert (=> b!331162 (= res!182610 (= (select (arr!7993 (array!16911 (store (arr!7993 a!3305) i!1250 k!2497) (size!8345 a!3305))) (index!14718 lt!158771)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!331162 (=> res!182610 e!203173)))

(assert (= (and d!70279 c!51918) b!331156))

(assert (= (and d!70279 (not c!51918)) b!331161))

(assert (= (and b!331161 c!51920) b!331160))

(assert (= (and b!331161 (not c!51920)) b!331154))

(assert (= (and d!70279 c!51919) b!331155))

(assert (= (and d!70279 (not c!51919)) b!331159))

(assert (= (and b!331159 res!182609) b!331157))

(assert (= (and b!331157 (not res!182611)) b!331162))

(assert (= (and b!331162 (not res!182610)) b!331158))

(assert (=> b!331154 m!335997))

(assert (=> b!331154 m!335997))

(declare-fun m!336137 () Bool)

(assert (=> b!331154 m!336137))

(declare-fun m!336139 () Bool)

(assert (=> b!331162 m!336139))

(assert (=> b!331157 m!336139))

(declare-fun m!336141 () Bool)

(assert (=> d!70279 m!336141))

(assert (=> d!70279 m!335987))

(assert (=> b!331158 m!336139))

(assert (=> b!330935 d!70279))

(declare-fun b!331255 () Bool)

(declare-fun e!203227 () Unit!10328)

(declare-fun Unit!10334 () Unit!10328)

(assert (=> b!331255 (= e!203227 Unit!10334)))

(declare-fun c!51962 () Bool)

(declare-fun call!26180 () SeekEntryResult!3135)

(assert (=> b!331255 (= c!51962 (is-Intermediate!3135 call!26180))))

(declare-fun lt!158815 () Unit!10328)

(declare-fun e!203226 () Unit!10328)

(assert (=> b!331255 (= lt!158815 e!203226)))

(assert (=> b!331255 false))

(declare-fun e!203230 () Bool)

(declare-fun b!331256 () Bool)

(assert (=> b!331256 (= e!203230 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 (array!16911 (store (arr!7993 a!3305) i!1250 k!2497) (size!8345 a!3305)) mask!3777) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777)))))

(declare-fun b!331257 () Bool)

(declare-fun Unit!10336 () Unit!10328)

(assert (=> b!331257 (= e!203226 Unit!10336)))

(declare-fun e!203229 () (_ BitVec 32))

(declare-fun b!331258 () Bool)

(assert (=> b!331258 (= e!203229 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!331259 () Bool)

(declare-fun Unit!10338 () Unit!10328)

(assert (=> b!331259 (= e!203227 Unit!10338)))

(assert (=> b!331259 (= call!26180 (Intermediate!3135 false (nextIndex!0 index!1840 x!1490 mask!3777) resX!58))))

(declare-fun lt!158817 () Unit!10328)

(declare-fun Unit!10340 () Unit!10328)

(assert (=> b!331259 (= lt!158817 Unit!10340)))

(assert (=> b!331259 false))

(declare-fun call!26181 () (_ BitVec 32))

(declare-fun e!203228 () Unit!10328)

(declare-fun b!331260 () Bool)

(assert (=> b!331260 (= e!203228 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k!2497 (bvadd #b00000000000000000000000000000001 x!1490 #b00000000000000000000000000000001) call!26181 resIndex!58 resX!58 mask!3777))))

(declare-fun c!51960 () Bool)

(declare-fun b!331261 () Bool)

(assert (=> b!331261 (= c!51960 (or (= (select (arr!7993 a!3305) (nextIndex!0 index!1840 x!1490 mask!3777)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7993 a!3305) (nextIndex!0 index!1840 x!1490 mask!3777)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!203231 () Unit!10328)

(assert (=> b!331261 (= e!203231 e!203227)))

(declare-fun b!331262 () Bool)

(declare-fun Unit!10341 () Unit!10328)

(assert (=> b!331262 (= e!203228 Unit!10341)))

(declare-fun c!51961 () Bool)

(assert (=> b!331262 (= c!51961 (not (= resIndex!58 (nextIndex!0 index!1840 x!1490 mask!3777))))))

(declare-fun lt!158818 () Unit!10328)

(assert (=> b!331262 (= lt!158818 e!203231)))

(assert (=> b!331262 (= (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58)))

(declare-fun lt!158814 () Unit!10328)

(declare-fun Unit!10342 () Unit!10328)

(assert (=> b!331262 (= lt!158814 Unit!10342)))

(assert (=> b!331262 (= (select (arr!7993 a!3305) (nextIndex!0 index!1840 x!1490 mask!3777)) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!331263 () Bool)

(assert (=> b!331263 (= e!203229 call!26181)))

(declare-fun bm!26177 () Bool)

(assert (=> bm!26177 (= call!26181 (nextIndex!0 (nextIndex!0 index!1840 x!1490 mask!3777) (bvadd #b00000000000000000000000000000001 x!1490) mask!3777))))

(declare-fun d!70283 () Bool)

(assert (=> d!70283 e!203230))

(declare-fun res!182627 () Bool)

(assert (=> d!70283 (=> (not res!182627) (not e!203230))))

(assert (=> d!70283 (= res!182627 (and (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8345 a!3305))))))

(declare-fun lt!158816 () Unit!10328)

(assert (=> d!70283 (= lt!158816 e!203228)))

(declare-fun c!51959 () Bool)

(assert (=> d!70283 (= c!51959 (= (bvadd #b00000000000000000000000000000001 x!1490) resX!58))))

(assert (=> d!70283 (validMask!0 mask!3777)))

(assert (=> d!70283 (= (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777) lt!158816)))

(declare-fun b!331254 () Bool)

(assert (=> b!331254 false))

(declare-fun Unit!10346 () Unit!10328)

(assert (=> b!331254 (= e!203226 Unit!10346)))

(declare-fun bm!26178 () Bool)

(assert (=> bm!26178 (= call!26180 (seekKeyOrZeroOrLongMinValue!0 (ite c!51960 (bvadd #b00000000000000000000000000000001 x!1490) (bvadd #b00000000000000000000000000000001 x!1490 #b00000000000000000000000000000001)) e!203229 k!2497 a!3305 mask!3777))))

(declare-fun c!51963 () Bool)

(assert (=> bm!26178 (= c!51963 c!51960)))

(declare-fun b!331264 () Bool)

(declare-fun Unit!10348 () Unit!10328)

(assert (=> b!331264 (= e!203231 Unit!10348)))

(assert (= (and d!70283 c!51959) b!331262))

(assert (= (and d!70283 (not c!51959)) b!331260))

(assert (= (and b!331262 c!51961) b!331261))

(assert (= (and b!331262 (not c!51961)) b!331264))

(assert (= (and b!331261 c!51960) b!331259))

(assert (= (and b!331261 (not c!51960)) b!331255))

(assert (= (and b!331255 c!51962) b!331257))

(assert (= (and b!331255 (not c!51962)) b!331254))

(assert (= (or b!331259 b!331255) bm!26178))

(assert (= (and bm!26178 c!51963) b!331258))

(assert (= (and bm!26178 (not c!51963)) b!331263))

(assert (= (or b!331263 b!331260) bm!26177))

(assert (= (and d!70283 res!182627) b!331256))

(declare-fun m!336169 () Bool)

(assert (=> b!331260 m!336169))

(assert (=> b!331261 m!335997))

(declare-fun m!336171 () Bool)

(assert (=> b!331261 m!336171))

(assert (=> b!331262 m!335997))

(assert (=> b!331262 m!336171))

(declare-fun m!336173 () Bool)

(assert (=> bm!26178 m!336173))

(assert (=> d!70283 m!335987))

(assert (=> b!331256 m!335993))

(assert (=> b!331256 m!335997))

(declare-fun m!336175 () Bool)

(assert (=> b!331256 m!336175))

(assert (=> b!331256 m!335997))

(declare-fun m!336177 () Bool)

(assert (=> b!331256 m!336177))

(assert (=> bm!26177 m!335997))

(declare-fun m!336179 () Bool)

(assert (=> bm!26177 m!336179))

(assert (=> b!330935 d!70283))

(declare-fun d!70295 () Bool)

(declare-fun lt!158826 () (_ BitVec 32))

(assert (=> d!70295 (and (bvsge lt!158826 #b00000000000000000000000000000000) (bvslt lt!158826 (bvadd mask!3777 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!70295 (= lt!158826 (choose!52 index!1840 x!1490 mask!3777))))

(assert (=> d!70295 (validMask!0 mask!3777)))

(assert (=> d!70295 (= (nextIndex!0 index!1840 x!1490 mask!3777) lt!158826)))

(declare-fun bs!11440 () Bool)

(assert (= bs!11440 d!70295))

(declare-fun m!336193 () Bool)

(assert (=> bs!11440 m!336193))

(assert (=> bs!11440 m!335987))

(assert (=> b!330935 d!70295))

(declare-fun d!70299 () Bool)

(declare-fun res!182633 () Bool)

(declare-fun e!203242 () Bool)

(assert (=> d!70299 (=> res!182633 e!203242)))

(assert (=> d!70299 (= res!182633 (= (select (arr!7993 a!3305) #b00000000000000000000000000000000) k!2497))))

(assert (=> d!70299 (= (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000) e!203242)))

(declare-fun b!331280 () Bool)

(declare-fun e!203243 () Bool)

(assert (=> b!331280 (= e!203242 e!203243)))

(declare-fun res!182634 () Bool)

(assert (=> b!331280 (=> (not res!182634) (not e!203243))))

(assert (=> b!331280 (= res!182634 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8345 a!3305)))))

(declare-fun b!331281 () Bool)

(assert (=> b!331281 (= e!203243 (arrayContainsKey!0 a!3305 k!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!70299 (not res!182633)) b!331280))

(assert (= (and b!331280 res!182634) b!331281))

(declare-fun m!336197 () Bool)

(assert (=> d!70299 m!336197))

(declare-fun m!336199 () Bool)

(assert (=> b!331281 m!336199))

(assert (=> b!330939 d!70299))

(declare-fun d!70301 () Bool)

(assert (=> d!70301 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!33306 d!70301))

(declare-fun d!70303 () Bool)

(assert (=> d!70303 (= (array_inv!5947 a!3305) (bvsge (size!8345 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!33306 d!70303))

(declare-fun b!331282 () Bool)

(declare-fun e!203248 () SeekEntryResult!3135)

(assert (=> b!331282 (= e!203248 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!331283 () Bool)

(declare-fun e!203247 () Bool)

(declare-fun lt!158830 () SeekEntryResult!3135)

(assert (=> b!331283 (= e!203247 (bvsge (x!32970 lt!158830) #b01111111111111111111111111111110))))

(declare-fun b!331284 () Bool)

(declare-fun e!203245 () SeekEntryResult!3135)

(assert (=> b!331284 (= e!203245 (Intermediate!3135 true index!1840 x!1490))))

(declare-fun b!331285 () Bool)

(assert (=> b!331285 (and (bvsge (index!14718 lt!158830) #b00000000000000000000000000000000) (bvslt (index!14718 lt!158830) (size!8345 a!3305)))))

(declare-fun res!182637 () Bool)

(assert (=> b!331285 (= res!182637 (= (select (arr!7993 a!3305) (index!14718 lt!158830)) k!2497))))

(declare-fun e!203246 () Bool)

(assert (=> b!331285 (=> res!182637 e!203246)))

(declare-fun e!203244 () Bool)

(assert (=> b!331285 (= e!203244 e!203246)))

(declare-fun b!331286 () Bool)

(assert (=> b!331286 (and (bvsge (index!14718 lt!158830) #b00000000000000000000000000000000) (bvslt (index!14718 lt!158830) (size!8345 a!3305)))))

(assert (=> b!331286 (= e!203246 (= (select (arr!7993 a!3305) (index!14718 lt!158830)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!331287 () Bool)

(assert (=> b!331287 (= e!203247 e!203244)))

(declare-fun res!182635 () Bool)

(assert (=> b!331287 (= res!182635 (and (is-Intermediate!3135 lt!158830) (not (undefined!3947 lt!158830)) (bvslt (x!32970 lt!158830) #b01111111111111111111111111111110) (bvsge (x!32970 lt!158830) #b00000000000000000000000000000000) (bvsge (x!32970 lt!158830) x!1490)))))

(assert (=> b!331287 (=> (not res!182635) (not e!203244))))

(declare-fun b!331288 () Bool)

(assert (=> b!331288 (= e!203248 (Intermediate!3135 false index!1840 x!1490))))

(declare-fun d!70305 () Bool)

(assert (=> d!70305 e!203247))

(declare-fun c!51970 () Bool)

(assert (=> d!70305 (= c!51970 (and (is-Intermediate!3135 lt!158830) (undefined!3947 lt!158830)))))

(assert (=> d!70305 (= lt!158830 e!203245)))

(declare-fun c!51969 () Bool)

(assert (=> d!70305 (= c!51969 (bvsge x!1490 #b01111111111111111111111111111110))))

(declare-fun lt!158831 () (_ BitVec 64))

(assert (=> d!70305 (= lt!158831 (select (arr!7993 a!3305) index!1840))))

(assert (=> d!70305 (validMask!0 mask!3777)))

(assert (=> d!70305 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!158830)))

(declare-fun b!331289 () Bool)

(assert (=> b!331289 (= e!203245 e!203248)))

(declare-fun c!51971 () Bool)

(assert (=> b!331289 (= c!51971 (or (= lt!158831 k!2497) (= (bvadd lt!158831 lt!158831) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!331290 () Bool)

(assert (=> b!331290 (and (bvsge (index!14718 lt!158830) #b00000000000000000000000000000000) (bvslt (index!14718 lt!158830) (size!8345 a!3305)))))

(declare-fun res!182636 () Bool)

(assert (=> b!331290 (= res!182636 (= (select (arr!7993 a!3305) (index!14718 lt!158830)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!331290 (=> res!182636 e!203246)))

(assert (= (and d!70305 c!51969) b!331284))

(assert (= (and d!70305 (not c!51969)) b!331289))

(assert (= (and b!331289 c!51971) b!331288))

(assert (= (and b!331289 (not c!51971)) b!331282))

(assert (= (and d!70305 c!51970) b!331283))

(assert (= (and d!70305 (not c!51970)) b!331287))

(assert (= (and b!331287 res!182635) b!331285))

(assert (= (and b!331285 (not res!182637)) b!331290))

(assert (= (and b!331290 (not res!182636)) b!331286))

(assert (=> b!331282 m!335997))

(assert (=> b!331282 m!335997))

(declare-fun m!336201 () Bool)

(assert (=> b!331282 m!336201))

(declare-fun m!336203 () Bool)

(assert (=> b!331290 m!336203))

(assert (=> b!331285 m!336203))

(assert (=> d!70305 m!335983))

(assert (=> d!70305 m!335987))

(assert (=> b!331286 m!336203))

(assert (=> b!330934 d!70305))

(declare-fun d!70307 () Bool)

(assert (=> d!70307 (= (validKeyInArray!0 k!2497) (and (not (= k!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!330932 d!70307))

(declare-fun d!70309 () Bool)

(declare-fun res!182644 () Bool)

(declare-fun e!203267 () Bool)

(assert (=> d!70309 (=> res!182644 e!203267)))

(assert (=> d!70309 (= res!182644 (bvsge #b00000000000000000000000000000000 (size!8345 a!3305)))))

(assert (=> d!70309 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!203267)))

(declare-fun b!331321 () Bool)

(declare-fun e!203269 () Bool)

(assert (=> b!331321 (= e!203267 e!203269)))

(declare-fun c!51984 () Bool)

(assert (=> b!331321 (= c!51984 (validKeyInArray!0 (select (arr!7993 a!3305) #b00000000000000000000000000000000)))))

(declare-fun b!331322 () Bool)

(declare-fun e!203268 () Bool)

(assert (=> b!331322 (= e!203269 e!203268)))

(declare-fun lt!158849 () (_ BitVec 64))

(assert (=> b!331322 (= lt!158849 (select (arr!7993 a!3305) #b00000000000000000000000000000000))))

(declare-fun lt!158848 () Unit!10328)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16910 (_ BitVec 64) (_ BitVec 32)) Unit!10328)

(assert (=> b!331322 (= lt!158848 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!158849 #b00000000000000000000000000000000))))

(assert (=> b!331322 (arrayContainsKey!0 a!3305 lt!158849 #b00000000000000000000000000000000)))

(declare-fun lt!158850 () Unit!10328)

(assert (=> b!331322 (= lt!158850 lt!158848)))

(declare-fun res!182645 () Bool)

(assert (=> b!331322 (= res!182645 (= (seekEntryOrOpen!0 (select (arr!7993 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!3135 #b00000000000000000000000000000000)))))

(assert (=> b!331322 (=> (not res!182645) (not e!203268))))

(declare-fun b!331323 () Bool)

(declare-fun call!26190 () Bool)

(assert (=> b!331323 (= e!203269 call!26190)))

(declare-fun b!331324 () Bool)

(assert (=> b!331324 (= e!203268 call!26190)))

(declare-fun bm!26187 () Bool)

(assert (=> bm!26187 (= call!26190 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(assert (= (and d!70309 (not res!182644)) b!331321))

(assert (= (and b!331321 c!51984) b!331322))

(assert (= (and b!331321 (not c!51984)) b!331323))

(assert (= (and b!331322 res!182645) b!331324))

(assert (= (or b!331324 b!331323) bm!26187))

(assert (=> b!331321 m!336197))

(assert (=> b!331321 m!336197))

(declare-fun m!336205 () Bool)

(assert (=> b!331321 m!336205))

(assert (=> b!331322 m!336197))

(declare-fun m!336207 () Bool)

(assert (=> b!331322 m!336207))

(declare-fun m!336209 () Bool)

(assert (=> b!331322 m!336209))

(assert (=> b!331322 m!336197))

(declare-fun m!336211 () Bool)

(assert (=> b!331322 m!336211))

(declare-fun m!336213 () Bool)

(assert (=> bm!26187 m!336213))

(assert (=> b!330933 d!70309))

(push 1)

