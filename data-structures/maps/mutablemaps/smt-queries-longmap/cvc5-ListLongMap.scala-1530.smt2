; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28968 () Bool)

(assert start!28968)

(declare-fun lt!146054 () Bool)

(declare-fun b!294510 () Bool)

(declare-datatypes ((array!14903 0))(
  ( (array!14904 (arr!7066 (Array (_ BitVec 32) (_ BitVec 64))) (size!7418 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14903)

(declare-datatypes ((SeekEntryResult!2226 0))(
  ( (MissingZero!2226 (index!11074 (_ BitVec 32))) (Found!2226 (index!11075 (_ BitVec 32))) (Intermediate!2226 (undefined!3038 Bool) (index!11076 (_ BitVec 32)) (x!29249 (_ BitVec 32))) (Undefined!2226) (MissingVacant!2226 (index!11077 (_ BitVec 32))) )
))
(declare-fun lt!146050 () SeekEntryResult!2226)

(declare-fun e!186187 () Bool)

(declare-fun k!2524 () (_ BitVec 64))

(assert (=> b!294510 (= e!186187 (and lt!146054 (let ((bdg!6241 (not (is-Intermediate!2226 lt!146050)))) (and (or bdg!6241 (not (undefined!3038 lt!146050))) (or bdg!6241 (not (= (select (arr!7066 a!3312) (index!11076 lt!146050)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or bdg!6241 (not (= (select (arr!7066 a!3312) (index!11076 lt!146050)) k!2524))) (not bdg!6241) (or (bvslt (index!11076 lt!146050) #b00000000000000000000000000000000) (bvsge (index!11076 lt!146050) (size!7418 a!3312)))))))))

(declare-fun lt!146051 () (_ BitVec 32))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!146053 () SeekEntryResult!2226)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14903 (_ BitVec 32)) SeekEntryResult!2226)

(assert (=> b!294510 (= lt!146053 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146051 k!2524 (array!14904 (store (arr!7066 a!3312) i!1256 k!2524) (size!7418 a!3312)) mask!3809))))

(assert (=> b!294510 (= lt!146050 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146051 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!294510 (= lt!146051 (toIndex!0 k!2524 mask!3809))))

(declare-fun res!154856 () Bool)

(declare-fun e!186186 () Bool)

(assert (=> start!28968 (=> (not res!154856) (not e!186186))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28968 (= res!154856 (validMask!0 mask!3809))))

(assert (=> start!28968 e!186186))

(assert (=> start!28968 true))

(declare-fun array_inv!5020 (array!14903) Bool)

(assert (=> start!28968 (array_inv!5020 a!3312)))

(declare-fun b!294511 () Bool)

(assert (=> b!294511 (= e!186186 e!186187)))

(declare-fun res!154860 () Bool)

(assert (=> b!294511 (=> (not res!154860) (not e!186187))))

(declare-fun lt!146052 () SeekEntryResult!2226)

(assert (=> b!294511 (= res!154860 (or lt!146054 (= lt!146052 (MissingVacant!2226 i!1256))))))

(assert (=> b!294511 (= lt!146054 (= lt!146052 (MissingZero!2226 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14903 (_ BitVec 32)) SeekEntryResult!2226)

(assert (=> b!294511 (= lt!146052 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!294512 () Bool)

(declare-fun res!154857 () Bool)

(assert (=> b!294512 (=> (not res!154857) (not e!186187))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14903 (_ BitVec 32)) Bool)

(assert (=> b!294512 (= res!154857 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!294513 () Bool)

(declare-fun res!154855 () Bool)

(assert (=> b!294513 (=> (not res!154855) (not e!186186))))

(declare-fun arrayContainsKey!0 (array!14903 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!294513 (= res!154855 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!294514 () Bool)

(declare-fun res!154859 () Bool)

(assert (=> b!294514 (=> (not res!154859) (not e!186186))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!294514 (= res!154859 (validKeyInArray!0 k!2524))))

(declare-fun b!294515 () Bool)

(declare-fun res!154858 () Bool)

(assert (=> b!294515 (=> (not res!154858) (not e!186186))))

(assert (=> b!294515 (= res!154858 (and (= (size!7418 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7418 a!3312))))))

(assert (= (and start!28968 res!154856) b!294515))

(assert (= (and b!294515 res!154858) b!294514))

(assert (= (and b!294514 res!154859) b!294513))

(assert (= (and b!294513 res!154855) b!294511))

(assert (= (and b!294511 res!154860) b!294512))

(assert (= (and b!294512 res!154857) b!294510))

(declare-fun m!307925 () Bool)

(assert (=> start!28968 m!307925))

(declare-fun m!307927 () Bool)

(assert (=> start!28968 m!307927))

(declare-fun m!307929 () Bool)

(assert (=> b!294512 m!307929))

(declare-fun m!307931 () Bool)

(assert (=> b!294514 m!307931))

(declare-fun m!307933 () Bool)

(assert (=> b!294511 m!307933))

(declare-fun m!307935 () Bool)

(assert (=> b!294510 m!307935))

(declare-fun m!307937 () Bool)

(assert (=> b!294510 m!307937))

(declare-fun m!307939 () Bool)

(assert (=> b!294510 m!307939))

(declare-fun m!307941 () Bool)

(assert (=> b!294510 m!307941))

(declare-fun m!307943 () Bool)

(assert (=> b!294510 m!307943))

(declare-fun m!307945 () Bool)

(assert (=> b!294513 m!307945))

(push 1)

(assert (not start!28968))

(assert (not b!294514))

(assert (not b!294511))

(assert (not b!294512))

(assert (not b!294510))

(assert (not b!294513))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!186261 () SeekEntryResult!2226)

(declare-fun b!294636 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!294636 (= e!186261 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!146051 #b00000000000000000000000000000000 mask!3809) k!2524 (array!14904 (store (arr!7066 a!3312) i!1256 k!2524) (size!7418 a!3312)) mask!3809))))

(declare-fun b!294637 () Bool)

(assert (=> b!294637 (= e!186261 (Intermediate!2226 false lt!146051 #b00000000000000000000000000000000))))

(declare-fun b!294638 () Bool)

(declare-fun e!186263 () Bool)

(declare-fun lt!146121 () SeekEntryResult!2226)

(assert (=> b!294638 (= e!186263 (bvsge (x!29249 lt!146121) #b01111111111111111111111111111110))))

(declare-fun b!294639 () Bool)

(declare-fun e!186262 () SeekEntryResult!2226)

(assert (=> b!294639 (= e!186262 e!186261)))

(declare-fun c!47425 () Bool)

(declare-fun lt!146122 () (_ BitVec 64))

(assert (=> b!294639 (= c!47425 (or (= lt!146122 k!2524) (= (bvadd lt!146122 lt!146122) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!66739 () Bool)

(assert (=> d!66739 e!186263))

(declare-fun c!47426 () Bool)

(assert (=> d!66739 (= c!47426 (and (is-Intermediate!2226 lt!146121) (undefined!3038 lt!146121)))))

(assert (=> d!66739 (= lt!146121 e!186262)))

(declare-fun c!47427 () Bool)

(assert (=> d!66739 (= c!47427 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66739 (= lt!146122 (select (arr!7066 (array!14904 (store (arr!7066 a!3312) i!1256 k!2524) (size!7418 a!3312))) lt!146051))))

(assert (=> d!66739 (validMask!0 mask!3809)))

(assert (=> d!66739 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146051 k!2524 (array!14904 (store (arr!7066 a!3312) i!1256 k!2524) (size!7418 a!3312)) mask!3809) lt!146121)))

(declare-fun b!294640 () Bool)

(assert (=> b!294640 (and (bvsge (index!11076 lt!146121) #b00000000000000000000000000000000) (bvslt (index!11076 lt!146121) (size!7418 (array!14904 (store (arr!7066 a!3312) i!1256 k!2524) (size!7418 a!3312)))))))

(declare-fun res!154934 () Bool)

(assert (=> b!294640 (= res!154934 (= (select (arr!7066 (array!14904 (store (arr!7066 a!3312) i!1256 k!2524) (size!7418 a!3312))) (index!11076 lt!146121)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!186265 () Bool)

(assert (=> b!294640 (=> res!154934 e!186265)))

(declare-fun b!294641 () Bool)

(assert (=> b!294641 (and (bvsge (index!11076 lt!146121) #b00000000000000000000000000000000) (bvslt (index!11076 lt!146121) (size!7418 (array!14904 (store (arr!7066 a!3312) i!1256 k!2524) (size!7418 a!3312)))))))

(assert (=> b!294641 (= e!186265 (= (select (arr!7066 (array!14904 (store (arr!7066 a!3312) i!1256 k!2524) (size!7418 a!3312))) (index!11076 lt!146121)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!294642 () Bool)

(assert (=> b!294642 (= e!186262 (Intermediate!2226 true lt!146051 #b00000000000000000000000000000000))))

(declare-fun b!294643 () Bool)

(assert (=> b!294643 (and (bvsge (index!11076 lt!146121) #b00000000000000000000000000000000) (bvslt (index!11076 lt!146121) (size!7418 (array!14904 (store (arr!7066 a!3312) i!1256 k!2524) (size!7418 a!3312)))))))

(declare-fun res!154935 () Bool)

(assert (=> b!294643 (= res!154935 (= (select (arr!7066 (array!14904 (store (arr!7066 a!3312) i!1256 k!2524) (size!7418 a!3312))) (index!11076 lt!146121)) k!2524))))

(assert (=> b!294643 (=> res!154935 e!186265)))

(declare-fun e!186264 () Bool)

(assert (=> b!294643 (= e!186264 e!186265)))

(declare-fun b!294644 () Bool)

(assert (=> b!294644 (= e!186263 e!186264)))

(declare-fun res!154936 () Bool)

(assert (=> b!294644 (= res!154936 (and (is-Intermediate!2226 lt!146121) (not (undefined!3038 lt!146121)) (bvslt (x!29249 lt!146121) #b01111111111111111111111111111110) (bvsge (x!29249 lt!146121) #b00000000000000000000000000000000) (bvsge (x!29249 lt!146121) #b00000000000000000000000000000000)))))

(assert (=> b!294644 (=> (not res!154936) (not e!186264))))

(assert (= (and d!66739 c!47427) b!294642))

(assert (= (and d!66739 (not c!47427)) b!294639))

(assert (= (and b!294639 c!47425) b!294637))

(assert (= (and b!294639 (not c!47425)) b!294636))

(assert (= (and d!66739 c!47426) b!294638))

(assert (= (and d!66739 (not c!47426)) b!294644))

(assert (= (and b!294644 res!154936) b!294643))

(assert (= (and b!294643 (not res!154935)) b!294640))

(assert (= (and b!294640 (not res!154934)) b!294641))

(declare-fun m!308031 () Bool)

(assert (=> b!294643 m!308031))

(declare-fun m!308033 () Bool)

(assert (=> b!294636 m!308033))

(assert (=> b!294636 m!308033))

(declare-fun m!308035 () Bool)

(assert (=> b!294636 m!308035))

(assert (=> b!294641 m!308031))

(assert (=> b!294640 m!308031))

(declare-fun m!308037 () Bool)

(assert (=> d!66739 m!308037))

(assert (=> d!66739 m!307925))

(assert (=> b!294510 d!66739))

(declare-fun b!294645 () Bool)

(declare-fun e!186266 () SeekEntryResult!2226)

(assert (=> b!294645 (= e!186266 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!146051 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!294646 () Bool)

(assert (=> b!294646 (= e!186266 (Intermediate!2226 false lt!146051 #b00000000000000000000000000000000))))

(declare-fun b!294647 () Bool)

(declare-fun e!186268 () Bool)

(declare-fun lt!146123 () SeekEntryResult!2226)

(assert (=> b!294647 (= e!186268 (bvsge (x!29249 lt!146123) #b01111111111111111111111111111110))))

(declare-fun b!294648 () Bool)

(declare-fun e!186267 () SeekEntryResult!2226)

(assert (=> b!294648 (= e!186267 e!186266)))

(declare-fun c!47428 () Bool)

(declare-fun lt!146124 () (_ BitVec 64))

(assert (=> b!294648 (= c!47428 (or (= lt!146124 k!2524) (= (bvadd lt!146124 lt!146124) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!66755 () Bool)

(assert (=> d!66755 e!186268))

(declare-fun c!47429 () Bool)

(assert (=> d!66755 (= c!47429 (and (is-Intermediate!2226 lt!146123) (undefined!3038 lt!146123)))))

(assert (=> d!66755 (= lt!146123 e!186267)))

(declare-fun c!47430 () Bool)

(assert (=> d!66755 (= c!47430 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66755 (= lt!146124 (select (arr!7066 a!3312) lt!146051))))

(assert (=> d!66755 (validMask!0 mask!3809)))

(assert (=> d!66755 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146051 k!2524 a!3312 mask!3809) lt!146123)))

(declare-fun b!294649 () Bool)

(assert (=> b!294649 (and (bvsge (index!11076 lt!146123) #b00000000000000000000000000000000) (bvslt (index!11076 lt!146123) (size!7418 a!3312)))))

(declare-fun res!154937 () Bool)

(assert (=> b!294649 (= res!154937 (= (select (arr!7066 a!3312) (index!11076 lt!146123)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!186270 () Bool)

(assert (=> b!294649 (=> res!154937 e!186270)))

(declare-fun b!294650 () Bool)

(assert (=> b!294650 (and (bvsge (index!11076 lt!146123) #b00000000000000000000000000000000) (bvslt (index!11076 lt!146123) (size!7418 a!3312)))))

(assert (=> b!294650 (= e!186270 (= (select (arr!7066 a!3312) (index!11076 lt!146123)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!294651 () Bool)

(assert (=> b!294651 (= e!186267 (Intermediate!2226 true lt!146051 #b00000000000000000000000000000000))))

(declare-fun b!294652 () Bool)

(assert (=> b!294652 (and (bvsge (index!11076 lt!146123) #b00000000000000000000000000000000) (bvslt (index!11076 lt!146123) (size!7418 a!3312)))))

(declare-fun res!154938 () Bool)

(assert (=> b!294652 (= res!154938 (= (select (arr!7066 a!3312) (index!11076 lt!146123)) k!2524))))

(assert (=> b!294652 (=> res!154938 e!186270)))

(declare-fun e!186269 () Bool)

(assert (=> b!294652 (= e!186269 e!186270)))

(declare-fun b!294653 () Bool)

(assert (=> b!294653 (= e!186268 e!186269)))

(declare-fun res!154939 () Bool)

(assert (=> b!294653 (= res!154939 (and (is-Intermediate!2226 lt!146123) (not (undefined!3038 lt!146123)) (bvslt (x!29249 lt!146123) #b01111111111111111111111111111110) (bvsge (x!29249 lt!146123) #b00000000000000000000000000000000) (bvsge (x!29249 lt!146123) #b00000000000000000000000000000000)))))

(assert (=> b!294653 (=> (not res!154939) (not e!186269))))

(assert (= (and d!66755 c!47430) b!294651))

(assert (= (and d!66755 (not c!47430)) b!294648))

(assert (= (and b!294648 c!47428) b!294646))

(assert (= (and b!294648 (not c!47428)) b!294645))

(assert (= (and d!66755 c!47429) b!294647))

(assert (= (and d!66755 (not c!47429)) b!294653))

(assert (= (and b!294653 res!154939) b!294652))

(assert (= (and b!294652 (not res!154938)) b!294649))

(assert (= (and b!294649 (not res!154937)) b!294650))

(declare-fun m!308039 () Bool)

(assert (=> b!294652 m!308039))

(assert (=> b!294645 m!308033))

(assert (=> b!294645 m!308033))

(declare-fun m!308041 () Bool)

(assert (=> b!294645 m!308041))

(assert (=> b!294650 m!308039))

(assert (=> b!294649 m!308039))

(declare-fun m!308043 () Bool)

(assert (=> d!66755 m!308043))

(assert (=> d!66755 m!307925))

(assert (=> b!294510 d!66755))

(declare-fun d!66757 () Bool)

(declare-fun lt!146130 () (_ BitVec 32))

(declare-fun lt!146129 () (_ BitVec 32))

(assert (=> d!66757 (= lt!146130 (bvmul (bvxor lt!146129 (bvlshr lt!146129 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!66757 (= lt!146129 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!66757 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!154940 (let ((h!5304 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29255 (bvmul (bvxor h!5304 (bvlshr h!5304 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29255 (bvlshr x!29255 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!154940 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!154940 #b00000000000000000000000000000000))))))

(assert (=> d!66757 (= (toIndex!0 k!2524 mask!3809) (bvand (bvxor lt!146130 (bvlshr lt!146130 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!294510 d!66757))

(declare-fun d!66765 () Bool)

(assert (=> d!66765 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!28968 d!66765))

(declare-fun d!66767 () Bool)

(assert (=> d!66767 (= (array_inv!5020 a!3312) (bvsge (size!7418 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!28968 d!66767))

(declare-fun d!66769 () Bool)

(assert (=> d!66769 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!294514 d!66769))

(declare-fun d!66771 () Bool)

(declare-fun res!154951 () Bool)

(declare-fun e!186290 () Bool)

(assert (=> d!66771 (=> res!154951 e!186290)))

(assert (=> d!66771 (= res!154951 (= (select (arr!7066 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!66771 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!186290)))

(declare-fun b!294682 () Bool)

(declare-fun e!186291 () Bool)

(assert (=> b!294682 (= e!186290 e!186291)))

(declare-fun res!154952 () Bool)

(assert (=> b!294682 (=> (not res!154952) (not e!186291))))

(assert (=> b!294682 (= res!154952 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7418 a!3312)))))

(declare-fun b!294683 () Bool)

(assert (=> b!294683 (= e!186291 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!66771 (not res!154951)) b!294682))

(assert (= (and b!294682 res!154952) b!294683))

(declare-fun m!308053 () Bool)

(assert (=> d!66771 m!308053))

(declare-fun m!308055 () Bool)

(assert (=> b!294683 m!308055))

(assert (=> b!294513 d!66771))

(declare-fun bm!25710 () Bool)

(declare-fun call!25713 () Bool)

(assert (=> bm!25710 (= call!25713 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun d!66773 () Bool)

(declare-fun res!154958 () Bool)

(declare-fun e!186308 () Bool)

(assert (=> d!66773 (=> res!154958 e!186308)))

(assert (=> d!66773 (= res!154958 (bvsge #b00000000000000000000000000000000 (size!7418 a!3312)))))

(assert (=> d!66773 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!186308)))

(declare-fun b!294710 () Bool)

(declare-fun e!186307 () Bool)

(declare-fun e!186309 () Bool)

(assert (=> b!294710 (= e!186307 e!186309)))

(declare-fun lt!146156 () (_ BitVec 64))

(assert (=> b!294710 (= lt!146156 (select (arr!7066 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9201 0))(
  ( (Unit!9202) )
))
(declare-fun lt!146155 () Unit!9201)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14903 (_ BitVec 64) (_ BitVec 32)) Unit!9201)

(assert (=> b!294710 (= lt!146155 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!146156 #b00000000000000000000000000000000))))

(assert (=> b!294710 (arrayContainsKey!0 a!3312 lt!146156 #b00000000000000000000000000000000)))

(declare-fun lt!146157 () Unit!9201)

(assert (=> b!294710 (= lt!146157 lt!146155)))

(declare-fun res!154957 () Bool)

(assert (=> b!294710 (= res!154957 (= (seekEntryOrOpen!0 (select (arr!7066 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2226 #b00000000000000000000000000000000)))))

(assert (=> b!294710 (=> (not res!154957) (not e!186309))))

(declare-fun b!294711 () Bool)

(assert (=> b!294711 (= e!186308 e!186307)))

(declare-fun c!47451 () Bool)

(assert (=> b!294711 (= c!47451 (validKeyInArray!0 (select (arr!7066 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!294712 () Bool)

(assert (=> b!294712 (= e!186309 call!25713)))

(declare-fun b!294713 () Bool)

(assert (=> b!294713 (= e!186307 call!25713)))

(assert (= (and d!66773 (not res!154958)) b!294711))

(assert (= (and b!294711 c!47451) b!294710))

(assert (= (and b!294711 (not c!47451)) b!294713))

(assert (= (and b!294710 res!154957) b!294712))

(assert (= (or b!294712 b!294713) bm!25710))

(declare-fun m!308075 () Bool)

(assert (=> bm!25710 m!308075))

(assert (=> b!294710 m!308053))

(declare-fun m!308077 () Bool)

(assert (=> b!294710 m!308077))

(declare-fun m!308079 () Bool)

(assert (=> b!294710 m!308079))

(assert (=> b!294710 m!308053))

(declare-fun m!308081 () Bool)

(assert (=> b!294710 m!308081))

(assert (=> b!294711 m!308053))

(assert (=> b!294711 m!308053))

(declare-fun m!308083 () Bool)

(assert (=> b!294711 m!308083))

(assert (=> b!294512 d!66773))

(declare-fun d!66777 () Bool)

(declare-fun lt!146180 () SeekEntryResult!2226)

(assert (=> d!66777 (and (or (is-Undefined!2226 lt!146180) (not (is-Found!2226 lt!146180)) (and (bvsge (index!11075 lt!146180) #b00000000000000000000000000000000) (bvslt (index!11075 lt!146180) (size!7418 a!3312)))) (or (is-Undefined!2226 lt!146180) (is-Found!2226 lt!146180) (not (is-MissingZero!2226 lt!146180)) (and (bvsge (index!11074 lt!146180) #b00000000000000000000000000000000) (bvslt (index!11074 lt!146180) (size!7418 a!3312)))) (or (is-Undefined!2226 lt!146180) (is-Found!2226 lt!146180) (is-MissingZero!2226 lt!146180) (not (is-MissingVacant!2226 lt!146180)) (and (bvsge (index!11077 lt!146180) #b00000000000000000000000000000000) (bvslt (index!11077 lt!146180) (size!7418 a!3312)))) (or (is-Undefined!2226 lt!146180) (ite (is-Found!2226 lt!146180) (= (select (arr!7066 a!3312) (index!11075 lt!146180)) k!2524) (ite (is-MissingZero!2226 lt!146180) (= (select (arr!7066 a!3312) (index!11074 lt!146180)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2226 lt!146180) (= (select (arr!7066 a!3312) (index!11077 lt!146180)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!186336 () SeekEntryResult!2226)

(assert (=> d!66777 (= lt!146180 e!186336)))

(declare-fun c!47470 () Bool)

(declare-fun lt!146178 () SeekEntryResult!2226)

(assert (=> d!66777 (= c!47470 (and (is-Intermediate!2226 lt!146178) (undefined!3038 lt!146178)))))

(assert (=> d!66777 (= lt!146178 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!66777 (validMask!0 mask!3809)))

(assert (=> d!66777 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!146180)))

(declare-fun b!294762 () Bool)

(declare-fun c!47472 () Bool)

(declare-fun lt!146179 () (_ BitVec 64))

(assert (=> b!294762 (= c!47472 (= lt!146179 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!186338 () SeekEntryResult!2226)

(declare-fun e!186337 () SeekEntryResult!2226)

(assert (=> b!294762 (= e!186338 e!186337)))

(declare-fun b!294763 () Bool)

(assert (=> b!294763 (= e!186338 (Found!2226 (index!11076 lt!146178)))))

(declare-fun b!294764 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14903 (_ BitVec 32)) SeekEntryResult!2226)

(assert (=> b!294764 (= e!186337 (seekKeyOrZeroReturnVacant!0 (x!29249 lt!146178) (index!11076 lt!146178) (index!11076 lt!146178) k!2524 a!3312 mask!3809))))

(declare-fun b!294765 () Bool)

(assert (=> b!294765 (= e!186336 Undefined!2226)))

(declare-fun b!294766 () Bool)

(assert (=> b!294766 (= e!186336 e!186338)))

(assert (=> b!294766 (= lt!146179 (select (arr!7066 a!3312) (index!11076 lt!146178)))))

(declare-fun c!47471 () Bool)

(assert (=> b!294766 (= c!47471 (= lt!146179 k!2524))))

(declare-fun b!294767 () Bool)

(assert (=> b!294767 (= e!186337 (MissingZero!2226 (index!11076 lt!146178)))))

(assert (= (and d!66777 c!47470) b!294765))

(assert (= (and d!66777 (not c!47470)) b!294766))

(assert (= (and b!294766 c!47471) b!294763))

(assert (= (and b!294766 (not c!47471)) b!294762))

(assert (= (and b!294762 c!47472) b!294767))

(assert (= (and b!294762 (not c!47472)) b!294764))

(assert (=> d!66777 m!307925))

(declare-fun m!308099 () Bool)

(assert (=> d!66777 m!308099))

(declare-fun m!308101 () Bool)

(assert (=> d!66777 m!308101))

(assert (=> d!66777 m!307943))

(declare-fun m!308103 () Bool)

(assert (=> d!66777 m!308103))

(declare-fun m!308105 () Bool)

(assert (=> d!66777 m!308105))

(assert (=> d!66777 m!307943))

(declare-fun m!308107 () Bool)

(assert (=> b!294764 m!308107))

(declare-fun m!308109 () Bool)

(assert (=> b!294766 m!308109))

(assert (=> b!294511 d!66777))

(push 1)

(assert (not bm!25710))

(assert (not d!66755))

(assert (not b!294710))

(assert (not b!294645))

(assert (not d!66777))

(assert (not b!294683))

(assert (not b!294711))

(assert (not d!66739))

(assert (not b!294636))

(assert (not b!294764))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

