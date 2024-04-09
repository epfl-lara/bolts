; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33034 () Bool)

(assert start!33034)

(declare-fun b!328754 () Bool)

(declare-fun res!181238 () Bool)

(declare-fun e!202008 () Bool)

(assert (=> b!328754 (=> (not res!181238) (not e!202008))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!328754 (= res!181238 (validKeyInArray!0 k!2497))))

(declare-fun b!328755 () Bool)

(declare-fun res!181244 () Bool)

(assert (=> b!328755 (=> (not res!181244) (not e!202008))))

(declare-datatypes ((array!16836 0))(
  ( (array!16837 (arr!7962 (Array (_ BitVec 32) (_ BitVec 64))) (size!8314 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16836)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3104 0))(
  ( (MissingZero!3104 (index!14592 (_ BitVec 32))) (Found!3104 (index!14593 (_ BitVec 32))) (Intermediate!3104 (undefined!3916 Bool) (index!14594 (_ BitVec 32)) (x!32818 (_ BitVec 32))) (Undefined!3104) (MissingVacant!3104 (index!14595 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16836 (_ BitVec 32)) SeekEntryResult!3104)

(assert (=> b!328755 (= res!181244 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3104 i!1250)))))

(declare-fun b!328756 () Bool)

(declare-fun res!181241 () Bool)

(assert (=> b!328756 (=> (not res!181241) (not e!202008))))

(declare-fun arrayContainsKey!0 (array!16836 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!328756 (= res!181241 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!328757 () Bool)

(declare-fun res!181239 () Bool)

(assert (=> b!328757 (=> (not res!181239) (not e!202008))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16836 (_ BitVec 32)) Bool)

(assert (=> b!328757 (= res!181239 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!328758 () Bool)

(declare-fun e!202007 () Bool)

(assert (=> b!328758 (= e!202008 e!202007)))

(declare-fun res!181243 () Bool)

(assert (=> b!328758 (=> (not res!181243) (not e!202007))))

(declare-fun lt!158015 () SeekEntryResult!3104)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16836 (_ BitVec 32)) SeekEntryResult!3104)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!328758 (= res!181243 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!158015))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!328758 (= lt!158015 (Intermediate!3104 false resIndex!58 resX!58))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun b!328759 () Bool)

(declare-fun lt!158014 () SeekEntryResult!3104)

(assert (=> b!328759 (= e!202007 (and (= lt!158014 lt!158015) (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7962 a!3305) index!1840) k!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (or (= (select (arr!7962 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7962 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!158014 (Intermediate!3104 false index!1840 resX!58)))))))

(assert (=> b!328759 (= lt!158014 (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777))))

(declare-fun res!181240 () Bool)

(assert (=> start!33034 (=> (not res!181240) (not e!202008))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33034 (= res!181240 (validMask!0 mask!3777))))

(assert (=> start!33034 e!202008))

(declare-fun array_inv!5916 (array!16836) Bool)

(assert (=> start!33034 (array_inv!5916 a!3305)))

(assert (=> start!33034 true))

(declare-fun b!328760 () Bool)

(declare-fun res!181245 () Bool)

(assert (=> b!328760 (=> (not res!181245) (not e!202007))))

(assert (=> b!328760 (= res!181245 (and (= (select (arr!7962 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8314 a!3305))))))

(declare-fun b!328761 () Bool)

(declare-fun res!181242 () Bool)

(assert (=> b!328761 (=> (not res!181242) (not e!202008))))

(assert (=> b!328761 (= res!181242 (and (= (size!8314 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8314 a!3305))))))

(assert (= (and start!33034 res!181240) b!328761))

(assert (= (and b!328761 res!181242) b!328754))

(assert (= (and b!328754 res!181238) b!328756))

(assert (= (and b!328756 res!181241) b!328755))

(assert (= (and b!328755 res!181244) b!328757))

(assert (= (and b!328757 res!181239) b!328758))

(assert (= (and b!328758 res!181243) b!328760))

(assert (= (and b!328760 res!181245) b!328759))

(declare-fun m!334629 () Bool)

(assert (=> b!328758 m!334629))

(assert (=> b!328758 m!334629))

(declare-fun m!334631 () Bool)

(assert (=> b!328758 m!334631))

(declare-fun m!334633 () Bool)

(assert (=> b!328760 m!334633))

(declare-fun m!334635 () Bool)

(assert (=> b!328754 m!334635))

(declare-fun m!334637 () Bool)

(assert (=> b!328757 m!334637))

(declare-fun m!334639 () Bool)

(assert (=> b!328755 m!334639))

(declare-fun m!334641 () Bool)

(assert (=> b!328756 m!334641))

(declare-fun m!334643 () Bool)

(assert (=> start!33034 m!334643))

(declare-fun m!334645 () Bool)

(assert (=> start!33034 m!334645))

(declare-fun m!334647 () Bool)

(assert (=> b!328759 m!334647))

(declare-fun m!334649 () Bool)

(assert (=> b!328759 m!334649))

(push 1)

(assert (not b!328759))

(assert (not b!328754))

(assert (not b!328756))

(assert (not b!328757))

(assert (not b!328758))

(assert (not start!33034))

(assert (not b!328755))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!69969 () Bool)

(assert (=> d!69969 (= (validKeyInArray!0 k!2497) (and (not (= k!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!328754 d!69969))

(declare-fun b!328843 () Bool)

(declare-fun e!202059 () Bool)

(declare-fun lt!158039 () SeekEntryResult!3104)

(assert (=> b!328843 (= e!202059 (bvsge (x!32818 lt!158039) #b01111111111111111111111111111110))))

(declare-fun b!328844 () Bool)

(declare-fun e!202055 () SeekEntryResult!3104)

(declare-fun e!202056 () SeekEntryResult!3104)

(assert (=> b!328844 (= e!202055 e!202056)))

(declare-fun c!51425 () Bool)

(declare-fun lt!158038 () (_ BitVec 64))

(assert (=> b!328844 (= c!51425 (or (= lt!158038 k!2497) (= (bvadd lt!158038 lt!158038) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!328845 () Bool)

(assert (=> b!328845 (and (bvsge (index!14594 lt!158039) #b00000000000000000000000000000000) (bvslt (index!14594 lt!158039) (size!8314 a!3305)))))

(declare-fun res!181276 () Bool)

(assert (=> b!328845 (= res!181276 (= (select (arr!7962 a!3305) (index!14594 lt!158039)) k!2497))))

(declare-fun e!202058 () Bool)

(assert (=> b!328845 (=> res!181276 e!202058)))

(declare-fun e!202057 () Bool)

(assert (=> b!328845 (= e!202057 e!202058)))

(declare-fun b!328846 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!328846 (= e!202056 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!328847 () Bool)

(assert (=> b!328847 (= e!202056 (Intermediate!3104 false index!1840 x!1490))))

(declare-fun d!69971 () Bool)

(assert (=> d!69971 e!202059))

(declare-fun c!51424 () Bool)

(assert (=> d!69971 (= c!51424 (and (is-Intermediate!3104 lt!158039) (undefined!3916 lt!158039)))))

(assert (=> d!69971 (= lt!158039 e!202055)))

(declare-fun c!51423 () Bool)

(assert (=> d!69971 (= c!51423 (bvsge x!1490 #b01111111111111111111111111111110))))

(assert (=> d!69971 (= lt!158038 (select (arr!7962 a!3305) index!1840))))

(assert (=> d!69971 (validMask!0 mask!3777)))

(assert (=> d!69971 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!158039)))

(declare-fun b!328848 () Bool)

(assert (=> b!328848 (and (bvsge (index!14594 lt!158039) #b00000000000000000000000000000000) (bvslt (index!14594 lt!158039) (size!8314 a!3305)))))

(declare-fun res!181275 () Bool)

(assert (=> b!328848 (= res!181275 (= (select (arr!7962 a!3305) (index!14594 lt!158039)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!328848 (=> res!181275 e!202058)))

(declare-fun b!328849 () Bool)

(assert (=> b!328849 (= e!202055 (Intermediate!3104 true index!1840 x!1490))))

(declare-fun b!328850 () Bool)

(assert (=> b!328850 (and (bvsge (index!14594 lt!158039) #b00000000000000000000000000000000) (bvslt (index!14594 lt!158039) (size!8314 a!3305)))))

(assert (=> b!328850 (= e!202058 (= (select (arr!7962 a!3305) (index!14594 lt!158039)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!328851 () Bool)

(assert (=> b!328851 (= e!202059 e!202057)))

(declare-fun res!181274 () Bool)

(assert (=> b!328851 (= res!181274 (and (is-Intermediate!3104 lt!158039) (not (undefined!3916 lt!158039)) (bvslt (x!32818 lt!158039) #b01111111111111111111111111111110) (bvsge (x!32818 lt!158039) #b00000000000000000000000000000000) (bvsge (x!32818 lt!158039) x!1490)))))

(assert (=> b!328851 (=> (not res!181274) (not e!202057))))

(assert (= (and d!69971 c!51423) b!328849))

(assert (= (and d!69971 (not c!51423)) b!328844))

(assert (= (and b!328844 c!51425) b!328847))

(assert (= (and b!328844 (not c!51425)) b!328846))

(assert (= (and d!69971 c!51424) b!328843))

(assert (= (and d!69971 (not c!51424)) b!328851))

(assert (= (and b!328851 res!181274) b!328845))

(assert (= (and b!328845 (not res!181276)) b!328848))

(assert (= (and b!328848 (not res!181275)) b!328850))

(declare-fun m!334671 () Bool)

(assert (=> b!328848 m!334671))

(assert (=> d!69971 m!334647))

(assert (=> d!69971 m!334643))

(assert (=> b!328845 m!334671))

(declare-fun m!334673 () Bool)

(assert (=> b!328846 m!334673))

(assert (=> b!328846 m!334673))

(declare-fun m!334675 () Bool)

(assert (=> b!328846 m!334675))

(assert (=> b!328850 m!334671))

(assert (=> b!328759 d!69971))

(declare-fun b!328852 () Bool)

(declare-fun e!202064 () Bool)

(declare-fun lt!158043 () SeekEntryResult!3104)

(assert (=> b!328852 (= e!202064 (bvsge (x!32818 lt!158043) #b01111111111111111111111111111110))))

(declare-fun b!328853 () Bool)

(declare-fun e!202060 () SeekEntryResult!3104)

(declare-fun e!202061 () SeekEntryResult!3104)

(assert (=> b!328853 (= e!202060 e!202061)))

(declare-fun c!51428 () Bool)

(declare-fun lt!158042 () (_ BitVec 64))

(assert (=> b!328853 (= c!51428 (or (= lt!158042 k!2497) (= (bvadd lt!158042 lt!158042) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!328854 () Bool)

(assert (=> b!328854 (and (bvsge (index!14594 lt!158043) #b00000000000000000000000000000000) (bvslt (index!14594 lt!158043) (size!8314 a!3305)))))

(declare-fun res!181279 () Bool)

(assert (=> b!328854 (= res!181279 (= (select (arr!7962 a!3305) (index!14594 lt!158043)) k!2497))))

(declare-fun e!202063 () Bool)

(assert (=> b!328854 (=> res!181279 e!202063)))

(declare-fun e!202062 () Bool)

(assert (=> b!328854 (= e!202062 e!202063)))

(declare-fun b!328855 () Bool)

(assert (=> b!328855 (= e!202061 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!328856 () Bool)

(assert (=> b!328856 (= e!202061 (Intermediate!3104 false (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun d!69981 () Bool)

(assert (=> d!69981 e!202064))

(declare-fun c!51427 () Bool)

(assert (=> d!69981 (= c!51427 (and (is-Intermediate!3104 lt!158043) (undefined!3916 lt!158043)))))

(assert (=> d!69981 (= lt!158043 e!202060)))

(declare-fun c!51426 () Bool)

(assert (=> d!69981 (= c!51426 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!69981 (= lt!158042 (select (arr!7962 a!3305) (toIndex!0 k!2497 mask!3777)))))

(assert (=> d!69981 (validMask!0 mask!3777)))

(assert (=> d!69981 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!158043)))

(declare-fun b!328857 () Bool)

(assert (=> b!328857 (and (bvsge (index!14594 lt!158043) #b00000000000000000000000000000000) (bvslt (index!14594 lt!158043) (size!8314 a!3305)))))

(declare-fun res!181278 () Bool)

(assert (=> b!328857 (= res!181278 (= (select (arr!7962 a!3305) (index!14594 lt!158043)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!328857 (=> res!181278 e!202063)))

(declare-fun b!328858 () Bool)

(assert (=> b!328858 (= e!202060 (Intermediate!3104 true (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!328859 () Bool)

(assert (=> b!328859 (and (bvsge (index!14594 lt!158043) #b00000000000000000000000000000000) (bvslt (index!14594 lt!158043) (size!8314 a!3305)))))

(assert (=> b!328859 (= e!202063 (= (select (arr!7962 a!3305) (index!14594 lt!158043)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!328860 () Bool)

(assert (=> b!328860 (= e!202064 e!202062)))

(declare-fun res!181277 () Bool)

(assert (=> b!328860 (= res!181277 (and (is-Intermediate!3104 lt!158043) (not (undefined!3916 lt!158043)) (bvslt (x!32818 lt!158043) #b01111111111111111111111111111110) (bvsge (x!32818 lt!158043) #b00000000000000000000000000000000) (bvsge (x!32818 lt!158043) #b00000000000000000000000000000000)))))

(assert (=> b!328860 (=> (not res!181277) (not e!202062))))

(assert (= (and d!69981 c!51426) b!328858))

(assert (= (and d!69981 (not c!51426)) b!328853))

(assert (= (and b!328853 c!51428) b!328856))

(assert (= (and b!328853 (not c!51428)) b!328855))

(assert (= (and d!69981 c!51427) b!328852))

(assert (= (and d!69981 (not c!51427)) b!328860))

(assert (= (and b!328860 res!181277) b!328854))

(assert (= (and b!328854 (not res!181279)) b!328857))

(assert (= (and b!328857 (not res!181278)) b!328859))

(declare-fun m!334677 () Bool)

(assert (=> b!328857 m!334677))

(assert (=> d!69981 m!334629))

(declare-fun m!334679 () Bool)

(assert (=> d!69981 m!334679))

(assert (=> d!69981 m!334643))

(assert (=> b!328854 m!334677))

(assert (=> b!328855 m!334629))

(declare-fun m!334681 () Bool)

(assert (=> b!328855 m!334681))

(assert (=> b!328855 m!334681))

(declare-fun m!334683 () Bool)

(assert (=> b!328855 m!334683))

(assert (=> b!328859 m!334677))

(assert (=> b!328758 d!69981))

(declare-fun d!69983 () Bool)

(declare-fun lt!158055 () (_ BitVec 32))

(declare-fun lt!158054 () (_ BitVec 32))

(assert (=> d!69983 (= lt!158055 (bvmul (bvxor lt!158054 (bvlshr lt!158054 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!69983 (= lt!158054 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!69983 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!181280 (let ((h!5433 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!32823 (bvmul (bvxor h!5433 (bvlshr h!5433 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!32823 (bvlshr x!32823 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!181280 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!181280 #b00000000000000000000000000000000))))))

(assert (=> d!69983 (= (toIndex!0 k!2497 mask!3777) (bvand (bvxor lt!158055 (bvlshr lt!158055 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!328758 d!69983))

(declare-fun d!69989 () Bool)

(assert (=> d!69989 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!33034 d!69989))

(declare-fun d!69997 () Bool)

(assert (=> d!69997 (= (array_inv!5916 a!3305) (bvsge (size!8314 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!33034 d!69997))

(declare-fun b!328914 () Bool)

(declare-fun e!202101 () Bool)

(declare-fun call!26135 () Bool)

(assert (=> b!328914 (= e!202101 call!26135)))

(declare-fun b!328915 () Bool)

(declare-fun e!202102 () Bool)

(assert (=> b!328915 (= e!202101 e!202102)))

(declare-fun lt!158076 () (_ BitVec 64))

(assert (=> b!328915 (= lt!158076 (select (arr!7962 a!3305) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10197 0))(
  ( (Unit!10198) )
))
(declare-fun lt!158078 () Unit!10197)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16836 (_ BitVec 64) (_ BitVec 32)) Unit!10197)

(assert (=> b!328915 (= lt!158078 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!158076 #b00000000000000000000000000000000))))

(assert (=> b!328915 (arrayContainsKey!0 a!3305 lt!158076 #b00000000000000000000000000000000)))

(declare-fun lt!158077 () Unit!10197)

(assert (=> b!328915 (= lt!158077 lt!158078)))

(declare-fun res!181300 () Bool)

(assert (=> b!328915 (= res!181300 (= (seekEntryOrOpen!0 (select (arr!7962 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!3104 #b00000000000000000000000000000000)))))

(assert (=> b!328915 (=> (not res!181300) (not e!202102))))

(declare-fun b!328917 () Bool)

(declare-fun e!202100 () Bool)

(assert (=> b!328917 (= e!202100 e!202101)))

(declare-fun c!51446 () Bool)

(assert (=> b!328917 (= c!51446 (validKeyInArray!0 (select (arr!7962 a!3305) #b00000000000000000000000000000000)))))

(declare-fun bm!26132 () Bool)

(assert (=> bm!26132 (= call!26135 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(declare-fun b!328916 () Bool)

(assert (=> b!328916 (= e!202102 call!26135)))

(declare-fun d!69999 () Bool)

(declare-fun res!181301 () Bool)

(assert (=> d!69999 (=> res!181301 e!202100)))

(assert (=> d!69999 (= res!181301 (bvsge #b00000000000000000000000000000000 (size!8314 a!3305)))))

(assert (=> d!69999 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!202100)))

(assert (= (and d!69999 (not res!181301)) b!328917))

(assert (= (and b!328917 c!51446) b!328915))

(assert (= (and b!328917 (not c!51446)) b!328914))

(assert (= (and b!328915 res!181300) b!328916))

(assert (= (or b!328916 b!328914) bm!26132))

(declare-fun m!334715 () Bool)

(assert (=> b!328915 m!334715))

(declare-fun m!334719 () Bool)

(assert (=> b!328915 m!334719))

(declare-fun m!334721 () Bool)

(assert (=> b!328915 m!334721))

(assert (=> b!328915 m!334715))

(declare-fun m!334723 () Bool)

(assert (=> b!328915 m!334723))

(assert (=> b!328917 m!334715))

(assert (=> b!328917 m!334715))

(declare-fun m!334725 () Bool)

(assert (=> b!328917 m!334725))

(declare-fun m!334727 () Bool)

(assert (=> bm!26132 m!334727))

(assert (=> b!328757 d!69999))

(declare-fun d!70007 () Bool)

(declare-fun res!181307 () Bool)

(declare-fun e!202113 () Bool)

(assert (=> d!70007 (=> res!181307 e!202113)))

(assert (=> d!70007 (= res!181307 (= (select (arr!7962 a!3305) #b00000000000000000000000000000000) k!2497))))

(assert (=> d!70007 (= (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000) e!202113)))

(declare-fun b!328934 () Bool)

(declare-fun e!202114 () Bool)

(assert (=> b!328934 (= e!202113 e!202114)))

(declare-fun res!181308 () Bool)

(assert (=> b!328934 (=> (not res!181308) (not e!202114))))

(assert (=> b!328934 (= res!181308 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8314 a!3305)))))

(declare-fun b!328935 () Bool)

(assert (=> b!328935 (= e!202114 (arrayContainsKey!0 a!3305 k!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!70007 (not res!181307)) b!328934))

(assert (= (and b!328934 res!181308) b!328935))

(assert (=> d!70007 m!334715))

(declare-fun m!334729 () Bool)

(assert (=> b!328935 m!334729))

(assert (=> b!328756 d!70007))

(declare-fun b!328972 () Bool)

(declare-fun e!202139 () SeekEntryResult!3104)

(declare-fun e!202140 () SeekEntryResult!3104)

(assert (=> b!328972 (= e!202139 e!202140)))

(declare-fun lt!158111 () (_ BitVec 64))

(declare-fun lt!158110 () SeekEntryResult!3104)

(assert (=> b!328972 (= lt!158111 (select (arr!7962 a!3305) (index!14594 lt!158110)))))

(declare-fun c!51465 () Bool)

(assert (=> b!328972 (= c!51465 (= lt!158111 k!2497))))

(declare-fun e!202141 () SeekEntryResult!3104)

(declare-fun b!328973 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16836 (_ BitVec 32)) SeekEntryResult!3104)

(assert (=> b!328973 (= e!202141 (seekKeyOrZeroReturnVacant!0 (x!32818 lt!158110) (index!14594 lt!158110) (index!14594 lt!158110) k!2497 a!3305 mask!3777))))

(declare-fun b!328974 () Bool)

(declare-fun c!51466 () Bool)

(assert (=> b!328974 (= c!51466 (= lt!158111 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!328974 (= e!202140 e!202141)))

(declare-fun b!328976 () Bool)

(assert (=> b!328976 (= e!202140 (Found!3104 (index!14594 lt!158110)))))

(declare-fun b!328977 () Bool)

(assert (=> b!328977 (= e!202139 Undefined!3104)))

(declare-fun d!70009 () Bool)

(declare-fun lt!158109 () SeekEntryResult!3104)

(assert (=> d!70009 (and (or (is-Undefined!3104 lt!158109) (not (is-Found!3104 lt!158109)) (and (bvsge (index!14593 lt!158109) #b00000000000000000000000000000000) (bvslt (index!14593 lt!158109) (size!8314 a!3305)))) (or (is-Undefined!3104 lt!158109) (is-Found!3104 lt!158109) (not (is-MissingZero!3104 lt!158109)) (and (bvsge (index!14592 lt!158109) #b00000000000000000000000000000000) (bvslt (index!14592 lt!158109) (size!8314 a!3305)))) (or (is-Undefined!3104 lt!158109) (is-Found!3104 lt!158109) (is-MissingZero!3104 lt!158109) (not (is-MissingVacant!3104 lt!158109)) (and (bvsge (index!14595 lt!158109) #b00000000000000000000000000000000) (bvslt (index!14595 lt!158109) (size!8314 a!3305)))) (or (is-Undefined!3104 lt!158109) (ite (is-Found!3104 lt!158109) (= (select (arr!7962 a!3305) (index!14593 lt!158109)) k!2497) (ite (is-MissingZero!3104 lt!158109) (= (select (arr!7962 a!3305) (index!14592 lt!158109)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3104 lt!158109) (= (select (arr!7962 a!3305) (index!14595 lt!158109)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!70009 (= lt!158109 e!202139)))

(declare-fun c!51467 () Bool)

(assert (=> d!70009 (= c!51467 (and (is-Intermediate!3104 lt!158110) (undefined!3916 lt!158110)))))

(assert (=> d!70009 (= lt!158110 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777))))

(assert (=> d!70009 (validMask!0 mask!3777)))

(assert (=> d!70009 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) lt!158109)))

(declare-fun b!328975 () Bool)

(assert (=> b!328975 (= e!202141 (MissingZero!3104 (index!14594 lt!158110)))))

(assert (= (and d!70009 c!51467) b!328977))

(assert (= (and d!70009 (not c!51467)) b!328972))

(assert (= (and b!328972 c!51465) b!328976))

(assert (= (and b!328972 (not c!51465)) b!328974))

(assert (= (and b!328974 c!51466) b!328975))

(assert (= (and b!328974 (not c!51466)) b!328973))

(declare-fun m!334755 () Bool)

(assert (=> b!328972 m!334755))

(declare-fun m!334757 () Bool)

(assert (=> b!328973 m!334757))

(declare-fun m!334759 () Bool)

(assert (=> d!70009 m!334759))

(declare-fun m!334761 () Bool)

(assert (=> d!70009 m!334761))

(assert (=> d!70009 m!334629))

(declare-fun m!334763 () Bool)

(assert (=> d!70009 m!334763))

(assert (=> d!70009 m!334643))

(assert (=> d!70009 m!334629))

(assert (=> d!70009 m!334631))

(assert (=> b!328755 d!70009))

(push 1)

(assert (not d!70009))

(assert (not b!328915))

(assert (not bm!26132))

(assert (not b!328917))

(assert (not d!69981))

(assert (not b!328973))

(assert (not b!328935))

(assert (not b!328846))

(assert (not b!328855))

(assert (not d!69971))

(check-sat)

(pop 1)

(push 1)

(check-sat)

