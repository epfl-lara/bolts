; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29770 () Bool)

(assert start!29770)

(declare-fun b!299704 () Bool)

(declare-fun res!158038 () Bool)

(declare-fun e!189298 () Bool)

(assert (=> b!299704 (=> (not res!158038) (not e!189298))))

(declare-datatypes ((array!15141 0))(
  ( (array!15142 (arr!7167 (Array (_ BitVec 32) (_ BitVec 64))) (size!7519 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15141)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15141 (_ BitVec 32)) Bool)

(assert (=> b!299704 (= res!158038 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!299705 () Bool)

(declare-fun res!158039 () Bool)

(declare-fun e!189297 () Bool)

(assert (=> b!299705 (=> (not res!158039) (not e!189297))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!299705 (= res!158039 (and (= (size!7519 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7519 a!3312))))))

(declare-fun b!299706 () Bool)

(declare-fun res!158040 () Bool)

(assert (=> b!299706 (=> (not res!158040) (not e!189297))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15141 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!299706 (= res!158040 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!299707 () Bool)

(declare-fun res!158035 () Bool)

(assert (=> b!299707 (=> (not res!158035) (not e!189297))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!299707 (= res!158035 (validKeyInArray!0 k!2524))))

(declare-fun res!158036 () Bool)

(assert (=> start!29770 (=> (not res!158036) (not e!189297))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29770 (= res!158036 (validMask!0 mask!3809))))

(assert (=> start!29770 e!189297))

(assert (=> start!29770 true))

(declare-fun array_inv!5121 (array!15141) Bool)

(assert (=> start!29770 (array_inv!5121 a!3312)))

(declare-fun b!299708 () Bool)

(assert (=> b!299708 (= e!189297 e!189298)))

(declare-fun res!158037 () Bool)

(assert (=> b!299708 (=> (not res!158037) (not e!189298))))

(declare-datatypes ((SeekEntryResult!2327 0))(
  ( (MissingZero!2327 (index!11484 (_ BitVec 32))) (Found!2327 (index!11485 (_ BitVec 32))) (Intermediate!2327 (undefined!3139 Bool) (index!11486 (_ BitVec 32)) (x!29696 (_ BitVec 32))) (Undefined!2327) (MissingVacant!2327 (index!11487 (_ BitVec 32))) )
))
(declare-fun lt!149125 () SeekEntryResult!2327)

(declare-fun lt!149129 () Bool)

(assert (=> b!299708 (= res!158037 (or lt!149129 (= lt!149125 (MissingVacant!2327 i!1256))))))

(assert (=> b!299708 (= lt!149129 (= lt!149125 (MissingZero!2327 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15141 (_ BitVec 32)) SeekEntryResult!2327)

(assert (=> b!299708 (= lt!149125 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun lt!149127 () SeekEntryResult!2327)

(declare-fun b!299709 () Bool)

(assert (=> b!299709 (= e!189298 (and (not lt!149129) (= lt!149125 (MissingVacant!2327 i!1256)) (let ((bdg!6452 (not (is-Intermediate!2327 lt!149127)))) (and (or bdg!6452 (not (undefined!3139 lt!149127))) (or bdg!6452 (not (= (select (arr!7167 a!3312) (index!11486 lt!149127)) #b1000000000000000000000000000000000000000000000000000000000000000))) (not bdg!6452) (= (select (arr!7167 a!3312) (index!11486 lt!149127)) k!2524)))))))

(declare-fun lt!149128 () SeekEntryResult!2327)

(declare-fun lt!149126 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15141 (_ BitVec 32)) SeekEntryResult!2327)

(assert (=> b!299709 (= lt!149128 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149126 k!2524 (array!15142 (store (arr!7167 a!3312) i!1256 k!2524) (size!7519 a!3312)) mask!3809))))

(assert (=> b!299709 (= lt!149127 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149126 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!299709 (= lt!149126 (toIndex!0 k!2524 mask!3809))))

(assert (= (and start!29770 res!158036) b!299705))

(assert (= (and b!299705 res!158039) b!299707))

(assert (= (and b!299707 res!158035) b!299706))

(assert (= (and b!299706 res!158040) b!299708))

(assert (= (and b!299708 res!158037) b!299704))

(assert (= (and b!299704 res!158038) b!299709))

(declare-fun m!311871 () Bool)

(assert (=> b!299707 m!311871))

(declare-fun m!311873 () Bool)

(assert (=> b!299708 m!311873))

(declare-fun m!311875 () Bool)

(assert (=> b!299706 m!311875))

(declare-fun m!311877 () Bool)

(assert (=> b!299709 m!311877))

(declare-fun m!311879 () Bool)

(assert (=> b!299709 m!311879))

(declare-fun m!311881 () Bool)

(assert (=> b!299709 m!311881))

(declare-fun m!311883 () Bool)

(assert (=> b!299709 m!311883))

(declare-fun m!311885 () Bool)

(assert (=> b!299709 m!311885))

(declare-fun m!311887 () Bool)

(assert (=> b!299704 m!311887))

(declare-fun m!311889 () Bool)

(assert (=> start!29770 m!311889))

(declare-fun m!311891 () Bool)

(assert (=> start!29770 m!311891))

(push 1)

(assert (not b!299707))

(assert (not b!299708))

(assert (not start!29770))

(assert (not b!299709))

(assert (not b!299706))

(assert (not b!299704))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!67515 () Bool)

(declare-fun res!158058 () Bool)

(declare-fun e!189322 () Bool)

(assert (=> d!67515 (=> res!158058 e!189322)))

(assert (=> d!67515 (= res!158058 (bvsge #b00000000000000000000000000000000 (size!7519 a!3312)))))

(assert (=> d!67515 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!189322)))

(declare-fun bm!25832 () Bool)

(declare-fun call!25835 () Bool)

(assert (=> bm!25832 (= call!25835 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!299742 () Bool)

(declare-fun e!189321 () Bool)

(assert (=> b!299742 (= e!189321 call!25835)))

(declare-fun b!299743 () Bool)

(declare-fun e!189323 () Bool)

(assert (=> b!299743 (= e!189321 e!189323)))

(declare-fun lt!149142 () (_ BitVec 64))

(assert (=> b!299743 (= lt!149142 (select (arr!7167 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9346 0))(
  ( (Unit!9347) )
))
(declare-fun lt!149141 () Unit!9346)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15141 (_ BitVec 64) (_ BitVec 32)) Unit!9346)

(assert (=> b!299743 (= lt!149141 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!149142 #b00000000000000000000000000000000))))

(assert (=> b!299743 (arrayContainsKey!0 a!3312 lt!149142 #b00000000000000000000000000000000)))

(declare-fun lt!149140 () Unit!9346)

(assert (=> b!299743 (= lt!149140 lt!149141)))

(declare-fun res!158057 () Bool)

(assert (=> b!299743 (= res!158057 (= (seekEntryOrOpen!0 (select (arr!7167 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2327 #b00000000000000000000000000000000)))))

(assert (=> b!299743 (=> (not res!158057) (not e!189323))))

(declare-fun b!299744 () Bool)

(assert (=> b!299744 (= e!189322 e!189321)))

(declare-fun c!48434 () Bool)

(assert (=> b!299744 (= c!48434 (validKeyInArray!0 (select (arr!7167 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!299745 () Bool)

(assert (=> b!299745 (= e!189323 call!25835)))

(assert (= (and d!67515 (not res!158058)) b!299744))

(assert (= (and b!299744 c!48434) b!299743))

(assert (= (and b!299744 (not c!48434)) b!299742))

(assert (= (and b!299743 res!158057) b!299745))

(assert (= (or b!299745 b!299742) bm!25832))

(declare-fun m!311897 () Bool)

(assert (=> bm!25832 m!311897))

(declare-fun m!311899 () Bool)

(assert (=> b!299743 m!311899))

(declare-fun m!311901 () Bool)

(assert (=> b!299743 m!311901))

(declare-fun m!311903 () Bool)

(assert (=> b!299743 m!311903))

(assert (=> b!299743 m!311899))

(declare-fun m!311905 () Bool)

(assert (=> b!299743 m!311905))

(assert (=> b!299744 m!311899))

(assert (=> b!299744 m!311899))

(declare-fun m!311907 () Bool)

(assert (=> b!299744 m!311907))

(assert (=> b!299704 d!67515))

(declare-fun b!299818 () Bool)

(declare-fun e!189368 () Bool)

(declare-fun lt!149175 () SeekEntryResult!2327)

(assert (=> b!299818 (= e!189368 (bvsge (x!29696 lt!149175) #b01111111111111111111111111111110))))

(declare-fun d!67521 () Bool)

(assert (=> d!67521 e!189368))

(declare-fun c!48459 () Bool)

(assert (=> d!67521 (= c!48459 (and (is-Intermediate!2327 lt!149175) (undefined!3139 lt!149175)))))

(declare-fun e!189370 () SeekEntryResult!2327)

(assert (=> d!67521 (= lt!149175 e!189370)))

(declare-fun c!48460 () Bool)

(assert (=> d!67521 (= c!48460 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!149176 () (_ BitVec 64))

(assert (=> d!67521 (= lt!149176 (select (arr!7167 (array!15142 (store (arr!7167 a!3312) i!1256 k!2524) (size!7519 a!3312))) lt!149126))))

(assert (=> d!67521 (validMask!0 mask!3809)))

(assert (=> d!67521 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149126 k!2524 (array!15142 (store (arr!7167 a!3312) i!1256 k!2524) (size!7519 a!3312)) mask!3809) lt!149175)))

(declare-fun b!299819 () Bool)

(assert (=> b!299819 (and (bvsge (index!11486 lt!149175) #b00000000000000000000000000000000) (bvslt (index!11486 lt!149175) (size!7519 (array!15142 (store (arr!7167 a!3312) i!1256 k!2524) (size!7519 a!3312)))))))

(declare-fun e!189371 () Bool)

(assert (=> b!299819 (= e!189371 (= (select (arr!7167 (array!15142 (store (arr!7167 a!3312) i!1256 k!2524) (size!7519 a!3312))) (index!11486 lt!149175)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!299820 () Bool)

(declare-fun e!189372 () SeekEntryResult!2327)

(assert (=> b!299820 (= e!189370 e!189372)))

(declare-fun c!48461 () Bool)

(assert (=> b!299820 (= c!48461 (or (= lt!149176 k!2524) (= (bvadd lt!149176 lt!149176) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!299821 () Bool)

(declare-fun e!189369 () Bool)

(assert (=> b!299821 (= e!189368 e!189369)))

(declare-fun res!158086 () Bool)

(assert (=> b!299821 (= res!158086 (and (is-Intermediate!2327 lt!149175) (not (undefined!3139 lt!149175)) (bvslt (x!29696 lt!149175) #b01111111111111111111111111111110) (bvsge (x!29696 lt!149175) #b00000000000000000000000000000000) (bvsge (x!29696 lt!149175) #b00000000000000000000000000000000)))))

(assert (=> b!299821 (=> (not res!158086) (not e!189369))))

(declare-fun b!299822 () Bool)

(assert (=> b!299822 (and (bvsge (index!11486 lt!149175) #b00000000000000000000000000000000) (bvslt (index!11486 lt!149175) (size!7519 (array!15142 (store (arr!7167 a!3312) i!1256 k!2524) (size!7519 a!3312)))))))

(declare-fun res!158085 () Bool)

(assert (=> b!299822 (= res!158085 (= (select (arr!7167 (array!15142 (store (arr!7167 a!3312) i!1256 k!2524) (size!7519 a!3312))) (index!11486 lt!149175)) k!2524))))

(assert (=> b!299822 (=> res!158085 e!189371)))

(assert (=> b!299822 (= e!189369 e!189371)))

(declare-fun b!299823 () Bool)

(assert (=> b!299823 (= e!189372 (Intermediate!2327 false lt!149126 #b00000000000000000000000000000000))))

(declare-fun b!299824 () Bool)

(assert (=> b!299824 (= e!189370 (Intermediate!2327 true lt!149126 #b00000000000000000000000000000000))))

(declare-fun b!299825 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!299825 (= e!189372 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!149126 #b00000000000000000000000000000000 mask!3809) k!2524 (array!15142 (store (arr!7167 a!3312) i!1256 k!2524) (size!7519 a!3312)) mask!3809))))

(declare-fun b!299826 () Bool)

(assert (=> b!299826 (and (bvsge (index!11486 lt!149175) #b00000000000000000000000000000000) (bvslt (index!11486 lt!149175) (size!7519 (array!15142 (store (arr!7167 a!3312) i!1256 k!2524) (size!7519 a!3312)))))))

(declare-fun res!158084 () Bool)

(assert (=> b!299826 (= res!158084 (= (select (arr!7167 (array!15142 (store (arr!7167 a!3312) i!1256 k!2524) (size!7519 a!3312))) (index!11486 lt!149175)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!299826 (=> res!158084 e!189371)))

(assert (= (and d!67521 c!48460) b!299824))

(assert (= (and d!67521 (not c!48460)) b!299820))

(assert (= (and b!299820 c!48461) b!299823))

(assert (= (and b!299820 (not c!48461)) b!299825))

(assert (= (and d!67521 c!48459) b!299818))

(assert (= (and d!67521 (not c!48459)) b!299821))

(assert (= (and b!299821 res!158086) b!299822))

(assert (= (and b!299822 (not res!158085)) b!299826))

(assert (= (and b!299826 (not res!158084)) b!299819))

(declare-fun m!311949 () Bool)

(assert (=> b!299825 m!311949))

(assert (=> b!299825 m!311949))

(declare-fun m!311951 () Bool)

(assert (=> b!299825 m!311951))

(declare-fun m!311953 () Bool)

(assert (=> b!299822 m!311953))

(assert (=> b!299826 m!311953))

(assert (=> b!299819 m!311953))

(declare-fun m!311955 () Bool)

(assert (=> d!67521 m!311955))

(assert (=> d!67521 m!311889))

(assert (=> b!299709 d!67521))

(declare-fun b!299831 () Bool)

(declare-fun e!189375 () Bool)

(declare-fun lt!149177 () SeekEntryResult!2327)

(assert (=> b!299831 (= e!189375 (bvsge (x!29696 lt!149177) #b01111111111111111111111111111110))))

(declare-fun d!67537 () Bool)

(assert (=> d!67537 e!189375))

(declare-fun c!48462 () Bool)

(assert (=> d!67537 (= c!48462 (and (is-Intermediate!2327 lt!149177) (undefined!3139 lt!149177)))))

(declare-fun e!189377 () SeekEntryResult!2327)

(assert (=> d!67537 (= lt!149177 e!189377)))

(declare-fun c!48463 () Bool)

(assert (=> d!67537 (= c!48463 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!149178 () (_ BitVec 64))

(assert (=> d!67537 (= lt!149178 (select (arr!7167 a!3312) lt!149126))))

(assert (=> d!67537 (validMask!0 mask!3809)))

(assert (=> d!67537 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149126 k!2524 a!3312 mask!3809) lt!149177)))

(declare-fun b!299832 () Bool)

(assert (=> b!299832 (and (bvsge (index!11486 lt!149177) #b00000000000000000000000000000000) (bvslt (index!11486 lt!149177) (size!7519 a!3312)))))

(declare-fun e!189378 () Bool)

(assert (=> b!299832 (= e!189378 (= (select (arr!7167 a!3312) (index!11486 lt!149177)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!299833 () Bool)

(declare-fun e!189379 () SeekEntryResult!2327)

(assert (=> b!299833 (= e!189377 e!189379)))

(declare-fun c!48464 () Bool)

(assert (=> b!299833 (= c!48464 (or (= lt!149178 k!2524) (= (bvadd lt!149178 lt!149178) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!299834 () Bool)

(declare-fun e!189376 () Bool)

(assert (=> b!299834 (= e!189375 e!189376)))

(declare-fun res!158091 () Bool)

(assert (=> b!299834 (= res!158091 (and (is-Intermediate!2327 lt!149177) (not (undefined!3139 lt!149177)) (bvslt (x!29696 lt!149177) #b01111111111111111111111111111110) (bvsge (x!29696 lt!149177) #b00000000000000000000000000000000) (bvsge (x!29696 lt!149177) #b00000000000000000000000000000000)))))

(assert (=> b!299834 (=> (not res!158091) (not e!189376))))

(declare-fun b!299835 () Bool)

(assert (=> b!299835 (and (bvsge (index!11486 lt!149177) #b00000000000000000000000000000000) (bvslt (index!11486 lt!149177) (size!7519 a!3312)))))

(declare-fun res!158090 () Bool)

(assert (=> b!299835 (= res!158090 (= (select (arr!7167 a!3312) (index!11486 lt!149177)) k!2524))))

(assert (=> b!299835 (=> res!158090 e!189378)))

(assert (=> b!299835 (= e!189376 e!189378)))

(declare-fun b!299836 () Bool)

(assert (=> b!299836 (= e!189379 (Intermediate!2327 false lt!149126 #b00000000000000000000000000000000))))

(declare-fun b!299837 () Bool)

(assert (=> b!299837 (= e!189377 (Intermediate!2327 true lt!149126 #b00000000000000000000000000000000))))

(declare-fun b!299838 () Bool)

(assert (=> b!299838 (= e!189379 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!149126 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!299839 () Bool)

(assert (=> b!299839 (and (bvsge (index!11486 lt!149177) #b00000000000000000000000000000000) (bvslt (index!11486 lt!149177) (size!7519 a!3312)))))

(declare-fun res!158089 () Bool)

(assert (=> b!299839 (= res!158089 (= (select (arr!7167 a!3312) (index!11486 lt!149177)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!299839 (=> res!158089 e!189378)))

(assert (= (and d!67537 c!48463) b!299837))

(assert (= (and d!67537 (not c!48463)) b!299833))

(assert (= (and b!299833 c!48464) b!299836))

(assert (= (and b!299833 (not c!48464)) b!299838))

(assert (= (and d!67537 c!48462) b!299831))

(assert (= (and d!67537 (not c!48462)) b!299834))

(assert (= (and b!299834 res!158091) b!299835))

(assert (= (and b!299835 (not res!158090)) b!299839))

(assert (= (and b!299839 (not res!158089)) b!299832))

(assert (=> b!299838 m!311949))

(assert (=> b!299838 m!311949))

(declare-fun m!311957 () Bool)

(assert (=> b!299838 m!311957))

(declare-fun m!311959 () Bool)

(assert (=> b!299835 m!311959))

(assert (=> b!299839 m!311959))

(assert (=> b!299832 m!311959))

(declare-fun m!311961 () Bool)

(assert (=> d!67537 m!311961))

(assert (=> d!67537 m!311889))

(assert (=> b!299709 d!67537))

(declare-fun d!67539 () Bool)

(declare-fun lt!149193 () (_ BitVec 32))

(declare-fun lt!149192 () (_ BitVec 32))

(assert (=> d!67539 (= lt!149193 (bvmul (bvxor lt!149192 (bvlshr lt!149192 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!67539 (= lt!149192 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!67539 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!158094 (let ((h!5340 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29700 (bvmul (bvxor h!5340 (bvlshr h!5340 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29700 (bvlshr x!29700 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!158094 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!158094 #b00000000000000000000000000000000))))))

(assert (=> d!67539 (= (toIndex!0 k!2524 mask!3809) (bvand (bvxor lt!149193 (bvlshr lt!149193 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!299709 d!67539))

(declare-fun d!67543 () Bool)

(declare-fun res!158101 () Bool)

(declare-fun e!189391 () Bool)

(assert (=> d!67543 (=> res!158101 e!189391)))

(assert (=> d!67543 (= res!158101 (= (select (arr!7167 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!67543 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!189391)))

(declare-fun b!299852 () Bool)

(declare-fun e!189392 () Bool)

(assert (=> b!299852 (= e!189391 e!189392)))

(declare-fun res!158102 () Bool)

(assert (=> b!299852 (=> (not res!158102) (not e!189392))))

(assert (=> b!299852 (= res!158102 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7519 a!3312)))))

(declare-fun b!299853 () Bool)

(assert (=> b!299853 (= e!189392 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67543 (not res!158101)) b!299852))

(assert (= (and b!299852 res!158102) b!299853))

(assert (=> d!67543 m!311899))

(declare-fun m!311973 () Bool)

(assert (=> b!299853 m!311973))

(assert (=> b!299706 d!67543))

(declare-fun d!67545 () Bool)

(assert (=> d!67545 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!299707 d!67545))

(declare-fun b!299892 () Bool)

(declare-fun e!189414 () SeekEntryResult!2327)

(declare-fun lt!149214 () SeekEntryResult!2327)

(assert (=> b!299892 (= e!189414 (MissingZero!2327 (index!11486 lt!149214)))))

(declare-fun b!299893 () Bool)

(declare-fun c!48488 () Bool)

(declare-fun lt!149215 () (_ BitVec 64))

(assert (=> b!299893 (= c!48488 (= lt!149215 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!189412 () SeekEntryResult!2327)

(assert (=> b!299893 (= e!189412 e!189414)))

(declare-fun b!299894 () Bool)

(assert (=> b!299894 (= e!189412 (Found!2327 (index!11486 lt!149214)))))

(declare-fun d!67547 () Bool)

(declare-fun lt!149213 () SeekEntryResult!2327)

(assert (=> d!67547 (and (or (is-Undefined!2327 lt!149213) (not (is-Found!2327 lt!149213)) (and (bvsge (index!11485 lt!149213) #b00000000000000000000000000000000) (bvslt (index!11485 lt!149213) (size!7519 a!3312)))) (or (is-Undefined!2327 lt!149213) (is-Found!2327 lt!149213) (not (is-MissingZero!2327 lt!149213)) (and (bvsge (index!11484 lt!149213) #b00000000000000000000000000000000) (bvslt (index!11484 lt!149213) (size!7519 a!3312)))) (or (is-Undefined!2327 lt!149213) (is-Found!2327 lt!149213) (is-MissingZero!2327 lt!149213) (not (is-MissingVacant!2327 lt!149213)) (and (bvsge (index!11487 lt!149213) #b00000000000000000000000000000000) (bvslt (index!11487 lt!149213) (size!7519 a!3312)))) (or (is-Undefined!2327 lt!149213) (ite (is-Found!2327 lt!149213) (= (select (arr!7167 a!3312) (index!11485 lt!149213)) k!2524) (ite (is-MissingZero!2327 lt!149213) (= (select (arr!7167 a!3312) (index!11484 lt!149213)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2327 lt!149213) (= (select (arr!7167 a!3312) (index!11487 lt!149213)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!189413 () SeekEntryResult!2327)

(assert (=> d!67547 (= lt!149213 e!189413)))

(declare-fun c!48489 () Bool)

(assert (=> d!67547 (= c!48489 (and (is-Intermediate!2327 lt!149214) (undefined!3139 lt!149214)))))

(assert (=> d!67547 (= lt!149214 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!67547 (validMask!0 mask!3809)))

(assert (=> d!67547 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!149213)))

(declare-fun b!299895 () Bool)

(assert (=> b!299895 (= e!189413 e!189412)))

(assert (=> b!299895 (= lt!149215 (select (arr!7167 a!3312) (index!11486 lt!149214)))))

(declare-fun c!48487 () Bool)

(assert (=> b!299895 (= c!48487 (= lt!149215 k!2524))))

(declare-fun b!299896 () Bool)

(assert (=> b!299896 (= e!189413 Undefined!2327)))

(declare-fun b!299897 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15141 (_ BitVec 32)) SeekEntryResult!2327)

(assert (=> b!299897 (= e!189414 (seekKeyOrZeroReturnVacant!0 (x!29696 lt!149214) (index!11486 lt!149214) (index!11486 lt!149214) k!2524 a!3312 mask!3809))))

(assert (= (and d!67547 c!48489) b!299896))

(assert (= (and d!67547 (not c!48489)) b!299895))

(assert (= (and b!299895 c!48487) b!299894))

(assert (= (and b!299895 (not c!48487)) b!299893))

(assert (= (and b!299893 c!48488) b!299892))

(assert (= (and b!299893 (not c!48488)) b!299897))

(assert (=> d!67547 m!311881))

(declare-fun m!311987 () Bool)

(assert (=> d!67547 m!311987))

(declare-fun m!311989 () Bool)

(assert (=> d!67547 m!311989))

(assert (=> d!67547 m!311889))

(assert (=> d!67547 m!311881))

(declare-fun m!311991 () Bool)

(assert (=> d!67547 m!311991))

(declare-fun m!311993 () Bool)

(assert (=> d!67547 m!311993))

(declare-fun m!311995 () Bool)

(assert (=> b!299895 m!311995))

(declare-fun m!311997 () Bool)

(assert (=> b!299897 m!311997))

(assert (=> b!299708 d!67547))

(declare-fun d!67557 () Bool)

(assert (=> d!67557 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

