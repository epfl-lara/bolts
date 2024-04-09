; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28120 () Bool)

(assert start!28120)

(declare-fun b!287994 () Bool)

(declare-fun res!149795 () Bool)

(declare-fun e!182360 () Bool)

(assert (=> b!287994 (=> (not res!149795) (not e!182360))))

(declare-datatypes ((array!14468 0))(
  ( (array!14469 (arr!6862 (Array (_ BitVec 32) (_ BitVec 64))) (size!7214 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14468)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14468 (_ BitVec 32)) Bool)

(assert (=> b!287994 (= res!149795 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!287995 () Bool)

(declare-fun e!182361 () Bool)

(assert (=> b!287995 (= e!182360 e!182361)))

(declare-fun res!149798 () Bool)

(assert (=> b!287995 (=> (not res!149798) (not e!182361))))

(declare-fun lt!141869 () Bool)

(assert (=> b!287995 (= res!149798 lt!141869)))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2022 0))(
  ( (MissingZero!2022 (index!10258 (_ BitVec 32))) (Found!2022 (index!10259 (_ BitVec 32))) (Intermediate!2022 (undefined!2834 Bool) (index!10260 (_ BitVec 32)) (x!28445 (_ BitVec 32))) (Undefined!2022) (MissingVacant!2022 (index!10261 (_ BitVec 32))) )
))
(declare-fun lt!141871 () SeekEntryResult!2022)

(declare-fun lt!141870 () (_ BitVec 32))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14468 (_ BitVec 32)) SeekEntryResult!2022)

(assert (=> b!287995 (= lt!141871 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141870 k!2524 (array!14469 (store (arr!6862 a!3312) i!1256 k!2524) (size!7214 a!3312)) mask!3809))))

(declare-fun lt!141872 () SeekEntryResult!2022)

(assert (=> b!287995 (= lt!141872 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141870 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!287995 (= lt!141870 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!287996 () Bool)

(declare-fun res!149799 () Bool)

(declare-fun e!182358 () Bool)

(assert (=> b!287996 (=> (not res!149799) (not e!182358))))

(assert (=> b!287996 (= res!149799 (and (= (size!7214 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7214 a!3312))))))

(declare-fun b!287997 () Bool)

(declare-fun res!149797 () Bool)

(assert (=> b!287997 (=> (not res!149797) (not e!182358))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!287997 (= res!149797 (validKeyInArray!0 k!2524))))

(declare-fun b!287998 () Bool)

(declare-fun e!182359 () Bool)

(assert (=> b!287998 (= e!182361 e!182359)))

(declare-fun res!149802 () Bool)

(assert (=> b!287998 (=> (not res!149802) (not e!182359))))

(declare-fun lt!141867 () Bool)

(assert (=> b!287998 (= res!149802 (and (or lt!141867 (not (undefined!2834 lt!141872))) (or lt!141867 (not (= (select (arr!6862 a!3312) (index!10260 lt!141872)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!141867 (not (= (select (arr!6862 a!3312) (index!10260 lt!141872)) k!2524))) (not lt!141867)))))

(assert (=> b!287998 (= lt!141867 (not (is-Intermediate!2022 lt!141872)))))

(declare-fun b!287993 () Bool)

(declare-fun res!149800 () Bool)

(assert (=> b!287993 (=> (not res!149800) (not e!182358))))

(declare-fun arrayContainsKey!0 (array!14468 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!287993 (= res!149800 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun res!149796 () Bool)

(assert (=> start!28120 (=> (not res!149796) (not e!182358))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28120 (= res!149796 (validMask!0 mask!3809))))

(assert (=> start!28120 e!182358))

(assert (=> start!28120 true))

(declare-fun array_inv!4816 (array!14468) Bool)

(assert (=> start!28120 (array_inv!4816 a!3312)))

(declare-fun b!287999 () Bool)

(assert (=> b!287999 (= e!182358 e!182360)))

(declare-fun res!149801 () Bool)

(assert (=> b!287999 (=> (not res!149801) (not e!182360))))

(declare-fun lt!141868 () SeekEntryResult!2022)

(assert (=> b!287999 (= res!149801 (or lt!141869 (= lt!141868 (MissingVacant!2022 i!1256))))))

(assert (=> b!287999 (= lt!141869 (= lt!141868 (MissingZero!2022 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14468 (_ BitVec 32)) SeekEntryResult!2022)

(assert (=> b!287999 (= lt!141868 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!288000 () Bool)

(assert (=> b!288000 (= e!182359 (not (or (bvslt mask!3809 #b00000000000000000000000000000000) (bvsle mask!3809 #b00111111111111111111111111111111))))))

(assert (=> b!288000 (and (= (select (arr!6862 a!3312) (index!10260 lt!141872)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10260 lt!141872) i!1256))))

(assert (= (and start!28120 res!149796) b!287996))

(assert (= (and b!287996 res!149799) b!287997))

(assert (= (and b!287997 res!149797) b!287993))

(assert (= (and b!287993 res!149800) b!287999))

(assert (= (and b!287999 res!149801) b!287994))

(assert (= (and b!287994 res!149795) b!287995))

(assert (= (and b!287995 res!149798) b!287998))

(assert (= (and b!287998 res!149802) b!288000))

(declare-fun m!302377 () Bool)

(assert (=> b!287997 m!302377))

(declare-fun m!302379 () Bool)

(assert (=> b!287994 m!302379))

(declare-fun m!302381 () Bool)

(assert (=> b!287993 m!302381))

(declare-fun m!302383 () Bool)

(assert (=> b!287999 m!302383))

(declare-fun m!302385 () Bool)

(assert (=> b!287998 m!302385))

(declare-fun m!302387 () Bool)

(assert (=> start!28120 m!302387))

(declare-fun m!302389 () Bool)

(assert (=> start!28120 m!302389))

(declare-fun m!302391 () Bool)

(assert (=> b!287995 m!302391))

(declare-fun m!302393 () Bool)

(assert (=> b!287995 m!302393))

(declare-fun m!302395 () Bool)

(assert (=> b!287995 m!302395))

(declare-fun m!302397 () Bool)

(assert (=> b!287995 m!302397))

(assert (=> b!288000 m!302385))

(push 1)

(assert (not b!287993))

(assert (not b!287999))

(assert (not b!287994))

(assert (not start!28120))

(assert (not b!287997))

(assert (not b!287995))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!66087 () Bool)

(assert (=> d!66087 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!287997 d!66087))

(declare-fun b!288104 () Bool)

(declare-fun e!182428 () Bool)

(declare-fun lt!141931 () SeekEntryResult!2022)

(assert (=> b!288104 (= e!182428 (bvsge (x!28445 lt!141931) #b01111111111111111111111111111110))))

(declare-fun b!288105 () Bool)

(assert (=> b!288105 (and (bvsge (index!10260 lt!141931) #b00000000000000000000000000000000) (bvslt (index!10260 lt!141931) (size!7214 (array!14469 (store (arr!6862 a!3312) i!1256 k!2524) (size!7214 a!3312)))))))

(declare-fun res!149870 () Bool)

(assert (=> b!288105 (= res!149870 (= (select (arr!6862 (array!14469 (store (arr!6862 a!3312) i!1256 k!2524) (size!7214 a!3312))) (index!10260 lt!141931)) k!2524))))

(declare-fun e!182429 () Bool)

(assert (=> b!288105 (=> res!149870 e!182429)))

(declare-fun e!182427 () Bool)

(assert (=> b!288105 (= e!182427 e!182429)))

(declare-fun b!288106 () Bool)

(declare-fun e!182430 () SeekEntryResult!2022)

(declare-fun e!182431 () SeekEntryResult!2022)

(assert (=> b!288106 (= e!182430 e!182431)))

(declare-fun c!46678 () Bool)

(declare-fun lt!141932 () (_ BitVec 64))

(assert (=> b!288106 (= c!46678 (or (= lt!141932 k!2524) (= (bvadd lt!141932 lt!141932) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!288107 () Bool)

(assert (=> b!288107 (= e!182431 (Intermediate!2022 false lt!141870 #b00000000000000000000000000000000))))

(declare-fun b!288108 () Bool)

(assert (=> b!288108 (= e!182428 e!182427)))

(declare-fun res!149869 () Bool)

(assert (=> b!288108 (= res!149869 (and (is-Intermediate!2022 lt!141931) (not (undefined!2834 lt!141931)) (bvslt (x!28445 lt!141931) #b01111111111111111111111111111110) (bvsge (x!28445 lt!141931) #b00000000000000000000000000000000) (bvsge (x!28445 lt!141931) #b00000000000000000000000000000000)))))

(assert (=> b!288108 (=> (not res!149869) (not e!182427))))

(declare-fun b!288109 () Bool)

(assert (=> b!288109 (= e!182430 (Intermediate!2022 true lt!141870 #b00000000000000000000000000000000))))

(declare-fun d!66091 () Bool)

(assert (=> d!66091 e!182428))

(declare-fun c!46677 () Bool)

(assert (=> d!66091 (= c!46677 (and (is-Intermediate!2022 lt!141931) (undefined!2834 lt!141931)))))

(assert (=> d!66091 (= lt!141931 e!182430)))

(declare-fun c!46679 () Bool)

(assert (=> d!66091 (= c!46679 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66091 (= lt!141932 (select (arr!6862 (array!14469 (store (arr!6862 a!3312) i!1256 k!2524) (size!7214 a!3312))) lt!141870))))

(assert (=> d!66091 (validMask!0 mask!3809)))

(assert (=> d!66091 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141870 k!2524 (array!14469 (store (arr!6862 a!3312) i!1256 k!2524) (size!7214 a!3312)) mask!3809) lt!141931)))

(declare-fun b!288103 () Bool)

(assert (=> b!288103 (and (bvsge (index!10260 lt!141931) #b00000000000000000000000000000000) (bvslt (index!10260 lt!141931) (size!7214 (array!14469 (store (arr!6862 a!3312) i!1256 k!2524) (size!7214 a!3312)))))))

(declare-fun res!149871 () Bool)

(assert (=> b!288103 (= res!149871 (= (select (arr!6862 (array!14469 (store (arr!6862 a!3312) i!1256 k!2524) (size!7214 a!3312))) (index!10260 lt!141931)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!288103 (=> res!149871 e!182429)))

(declare-fun b!288110 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!288110 (= e!182431 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!141870 #b00000000000000000000000000000000 mask!3809) k!2524 (array!14469 (store (arr!6862 a!3312) i!1256 k!2524) (size!7214 a!3312)) mask!3809))))

(declare-fun b!288111 () Bool)

(assert (=> b!288111 (and (bvsge (index!10260 lt!141931) #b00000000000000000000000000000000) (bvslt (index!10260 lt!141931) (size!7214 (array!14469 (store (arr!6862 a!3312) i!1256 k!2524) (size!7214 a!3312)))))))

(assert (=> b!288111 (= e!182429 (= (select (arr!6862 (array!14469 (store (arr!6862 a!3312) i!1256 k!2524) (size!7214 a!3312))) (index!10260 lt!141931)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!66091 c!46679) b!288109))

(assert (= (and d!66091 (not c!46679)) b!288106))

(assert (= (and b!288106 c!46678) b!288107))

(assert (= (and b!288106 (not c!46678)) b!288110))

(assert (= (and d!66091 c!46677) b!288104))

(assert (= (and d!66091 (not c!46677)) b!288108))

(assert (= (and b!288108 res!149869) b!288105))

(assert (= (and b!288105 (not res!149870)) b!288103))

(assert (= (and b!288103 (not res!149871)) b!288111))

(declare-fun m!302469 () Bool)

(assert (=> b!288105 m!302469))

(assert (=> b!288103 m!302469))

(assert (=> b!288111 m!302469))

(declare-fun m!302471 () Bool)

(assert (=> b!288110 m!302471))

(assert (=> b!288110 m!302471))

(declare-fun m!302473 () Bool)

(assert (=> b!288110 m!302473))

(declare-fun m!302475 () Bool)

(assert (=> d!66091 m!302475))

(assert (=> d!66091 m!302387))

(assert (=> b!287995 d!66091))

(declare-fun b!288113 () Bool)

(declare-fun e!182433 () Bool)

(declare-fun lt!141933 () SeekEntryResult!2022)

(assert (=> b!288113 (= e!182433 (bvsge (x!28445 lt!141933) #b01111111111111111111111111111110))))

(declare-fun b!288114 () Bool)

(assert (=> b!288114 (and (bvsge (index!10260 lt!141933) #b00000000000000000000000000000000) (bvslt (index!10260 lt!141933) (size!7214 a!3312)))))

(declare-fun res!149873 () Bool)

(assert (=> b!288114 (= res!149873 (= (select (arr!6862 a!3312) (index!10260 lt!141933)) k!2524))))

(declare-fun e!182434 () Bool)

(assert (=> b!288114 (=> res!149873 e!182434)))

(declare-fun e!182432 () Bool)

(assert (=> b!288114 (= e!182432 e!182434)))

(declare-fun b!288115 () Bool)

(declare-fun e!182435 () SeekEntryResult!2022)

(declare-fun e!182436 () SeekEntryResult!2022)

(assert (=> b!288115 (= e!182435 e!182436)))

(declare-fun c!46681 () Bool)

(declare-fun lt!141934 () (_ BitVec 64))

(assert (=> b!288115 (= c!46681 (or (= lt!141934 k!2524) (= (bvadd lt!141934 lt!141934) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!288116 () Bool)

(assert (=> b!288116 (= e!182436 (Intermediate!2022 false lt!141870 #b00000000000000000000000000000000))))

(declare-fun b!288117 () Bool)

(assert (=> b!288117 (= e!182433 e!182432)))

(declare-fun res!149872 () Bool)

(assert (=> b!288117 (= res!149872 (and (is-Intermediate!2022 lt!141933) (not (undefined!2834 lt!141933)) (bvslt (x!28445 lt!141933) #b01111111111111111111111111111110) (bvsge (x!28445 lt!141933) #b00000000000000000000000000000000) (bvsge (x!28445 lt!141933) #b00000000000000000000000000000000)))))

(assert (=> b!288117 (=> (not res!149872) (not e!182432))))

(declare-fun b!288118 () Bool)

(assert (=> b!288118 (= e!182435 (Intermediate!2022 true lt!141870 #b00000000000000000000000000000000))))

(declare-fun d!66105 () Bool)

(assert (=> d!66105 e!182433))

(declare-fun c!46680 () Bool)

(assert (=> d!66105 (= c!46680 (and (is-Intermediate!2022 lt!141933) (undefined!2834 lt!141933)))))

(assert (=> d!66105 (= lt!141933 e!182435)))

(declare-fun c!46682 () Bool)

(assert (=> d!66105 (= c!46682 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66105 (= lt!141934 (select (arr!6862 a!3312) lt!141870))))

(assert (=> d!66105 (validMask!0 mask!3809)))

(assert (=> d!66105 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141870 k!2524 a!3312 mask!3809) lt!141933)))

(declare-fun b!288112 () Bool)

(assert (=> b!288112 (and (bvsge (index!10260 lt!141933) #b00000000000000000000000000000000) (bvslt (index!10260 lt!141933) (size!7214 a!3312)))))

(declare-fun res!149874 () Bool)

(assert (=> b!288112 (= res!149874 (= (select (arr!6862 a!3312) (index!10260 lt!141933)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!288112 (=> res!149874 e!182434)))

(declare-fun b!288119 () Bool)

(assert (=> b!288119 (= e!182436 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!141870 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!288120 () Bool)

(assert (=> b!288120 (and (bvsge (index!10260 lt!141933) #b00000000000000000000000000000000) (bvslt (index!10260 lt!141933) (size!7214 a!3312)))))

(assert (=> b!288120 (= e!182434 (= (select (arr!6862 a!3312) (index!10260 lt!141933)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!66105 c!46682) b!288118))

(assert (= (and d!66105 (not c!46682)) b!288115))

(assert (= (and b!288115 c!46681) b!288116))

(assert (= (and b!288115 (not c!46681)) b!288119))

(assert (= (and d!66105 c!46680) b!288113))

(assert (= (and d!66105 (not c!46680)) b!288117))

(assert (= (and b!288117 res!149872) b!288114))

(assert (= (and b!288114 (not res!149873)) b!288112))

(assert (= (and b!288112 (not res!149874)) b!288120))

(declare-fun m!302477 () Bool)

(assert (=> b!288114 m!302477))

(assert (=> b!288112 m!302477))

(assert (=> b!288120 m!302477))

(assert (=> b!288119 m!302471))

(assert (=> b!288119 m!302471))

(declare-fun m!302479 () Bool)

(assert (=> b!288119 m!302479))

(declare-fun m!302481 () Bool)

(assert (=> d!66105 m!302481))

(assert (=> d!66105 m!302387))

(assert (=> b!287995 d!66105))

(declare-fun d!66109 () Bool)

(declare-fun lt!141944 () (_ BitVec 32))

(declare-fun lt!141943 () (_ BitVec 32))

(assert (=> d!66109 (= lt!141944 (bvmul (bvxor lt!141943 (bvlshr lt!141943 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!66109 (= lt!141943 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!66109 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!149875 (let ((h!5276 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!28450 (bvmul (bvxor h!5276 (bvlshr h!5276 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!28450 (bvlshr x!28450 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!149875 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!149875 #b00000000000000000000000000000000))))))

(assert (=> d!66109 (= (toIndex!0 k!2524 mask!3809) (bvand (bvxor lt!141944 (bvlshr lt!141944 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!287995 d!66109))

(declare-fun d!66111 () Bool)

(declare-fun res!149893 () Bool)

(declare-fun e!182461 () Bool)

(assert (=> d!66111 (=> res!149893 e!182461)))

(assert (=> d!66111 (= res!149893 (= (select (arr!6862 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!66111 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!182461)))

(declare-fun b!288161 () Bool)

(declare-fun e!182462 () Bool)

(assert (=> b!288161 (= e!182461 e!182462)))

(declare-fun res!149894 () Bool)

(assert (=> b!288161 (=> (not res!149894) (not e!182462))))

(assert (=> b!288161 (= res!149894 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7214 a!3312)))))

(declare-fun b!288162 () Bool)

(assert (=> b!288162 (= e!182462 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!66111 (not res!149893)) b!288161))

(assert (= (and b!288161 res!149894) b!288162))

(declare-fun m!302497 () Bool)

(assert (=> d!66111 m!302497))

(declare-fun m!302499 () Bool)

(assert (=> b!288162 m!302499))

(assert (=> b!287993 d!66111))

(declare-fun lt!141986 () SeekEntryResult!2022)

(declare-fun b!288229 () Bool)

(declare-fun e!182506 () SeekEntryResult!2022)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14468 (_ BitVec 32)) SeekEntryResult!2022)

(assert (=> b!288229 (= e!182506 (seekKeyOrZeroReturnVacant!0 (x!28445 lt!141986) (index!10260 lt!141986) (index!10260 lt!141986) k!2524 a!3312 mask!3809))))

(declare-fun d!66117 () Bool)

(declare-fun lt!141985 () SeekEntryResult!2022)

(assert (=> d!66117 (and (or (is-Undefined!2022 lt!141985) (not (is-Found!2022 lt!141985)) (and (bvsge (index!10259 lt!141985) #b00000000000000000000000000000000) (bvslt (index!10259 lt!141985) (size!7214 a!3312)))) (or (is-Undefined!2022 lt!141985) (is-Found!2022 lt!141985) (not (is-MissingZero!2022 lt!141985)) (and (bvsge (index!10258 lt!141985) #b00000000000000000000000000000000) (bvslt (index!10258 lt!141985) (size!7214 a!3312)))) (or (is-Undefined!2022 lt!141985) (is-Found!2022 lt!141985) (is-MissingZero!2022