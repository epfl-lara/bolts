; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33236 () Bool)

(assert start!33236)

(declare-fun b!330399 () Bool)

(declare-datatypes ((Unit!10308 0))(
  ( (Unit!10309) )
))
(declare-fun e!202793 () Unit!10308)

(declare-fun Unit!10310 () Unit!10308)

(assert (=> b!330399 (= e!202793 Unit!10310)))

(assert (=> b!330399 false))

(declare-fun b!330400 () Bool)

(declare-fun e!202791 () Bool)

(declare-fun e!202792 () Bool)

(assert (=> b!330400 (= e!202791 e!202792)))

(declare-fun res!182162 () Bool)

(assert (=> b!330400 (=> (not res!182162) (not e!202792))))

(declare-datatypes ((array!16891 0))(
  ( (array!16892 (arr!7985 (Array (_ BitVec 32) (_ BitVec 64))) (size!8337 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16891)

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3127 0))(
  ( (MissingZero!3127 (index!14684 (_ BitVec 32))) (Found!3127 (index!14685 (_ BitVec 32))) (Intermediate!3127 (undefined!3939 Bool) (index!14686 (_ BitVec 32)) (x!32929 (_ BitVec 32))) (Undefined!3127) (MissingVacant!3127 (index!14687 (_ BitVec 32))) )
))
(declare-fun lt!158508 () SeekEntryResult!3127)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16891 (_ BitVec 32)) SeekEntryResult!3127)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!330400 (= res!182162 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!158508))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!330400 (= lt!158508 (Intermediate!3127 false resIndex!58 resX!58))))

(declare-fun res!182163 () Bool)

(assert (=> start!33236 (=> (not res!182163) (not e!202791))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33236 (= res!182163 (validMask!0 mask!3777))))

(assert (=> start!33236 e!202791))

(declare-fun array_inv!5939 (array!16891) Bool)

(assert (=> start!33236 (array_inv!5939 a!3305)))

(assert (=> start!33236 true))

(declare-fun b!330401 () Bool)

(declare-fun res!182166 () Bool)

(assert (=> b!330401 (=> (not res!182166) (not e!202791))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!330401 (= res!182166 (and (= (size!8337 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8337 a!3305))))))

(declare-fun b!330402 () Bool)

(declare-fun res!182168 () Bool)

(assert (=> b!330402 (=> (not res!182168) (not e!202791))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16891 (_ BitVec 32)) SeekEntryResult!3127)

(assert (=> b!330402 (= res!182168 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3127 i!1250)))))

(declare-fun b!330403 () Bool)

(declare-fun e!202796 () Bool)

(declare-fun e!202798 () Bool)

(assert (=> b!330403 (= e!202796 (not e!202798))))

(declare-fun res!182161 () Bool)

(assert (=> b!330403 (=> res!182161 e!202798)))

(declare-fun index!1840 () (_ BitVec 32))

(assert (=> b!330403 (= res!182161 (not (= (select (arr!7985 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!330403 (= index!1840 resIndex!58)))

(declare-fun lt!158509 () Unit!10308)

(declare-fun e!202795 () Unit!10308)

(assert (=> b!330403 (= lt!158509 e!202795)))

(declare-fun c!51763 () Bool)

(assert (=> b!330403 (= c!51763 (not (= resIndex!58 index!1840)))))

(declare-fun b!330404 () Bool)

(declare-fun Unit!10311 () Unit!10308)

(assert (=> b!330404 (= e!202795 Unit!10311)))

(declare-fun b!330405 () Bool)

(declare-fun e!202794 () Unit!10308)

(assert (=> b!330405 (= e!202795 e!202794)))

(declare-fun c!51764 () Bool)

(assert (=> b!330405 (= c!51764 (or (= (select (arr!7985 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7985 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!330406 () Bool)

(declare-fun Unit!10312 () Unit!10308)

(assert (=> b!330406 (= e!202793 Unit!10312)))

(declare-fun b!330407 () Bool)

(assert (=> b!330407 (= e!202792 e!202796)))

(declare-fun res!182167 () Bool)

(assert (=> b!330407 (=> (not res!182167) (not e!202796))))

(declare-fun lt!158510 () SeekEntryResult!3127)

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!330407 (= res!182167 (and (= lt!158510 lt!158508) (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7985 a!3305) index!1840) k0!2497)) (= x!1490 resX!58)))))

(assert (=> b!330407 (= lt!158510 (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777))))

(declare-fun b!330408 () Bool)

(declare-fun res!182169 () Bool)

(assert (=> b!330408 (=> (not res!182169) (not e!202791))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16891 (_ BitVec 32)) Bool)

(assert (=> b!330408 (= res!182169 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!330409 () Bool)

(assert (=> b!330409 false))

(declare-fun lt!158507 () Unit!10308)

(assert (=> b!330409 (= lt!158507 e!202793)))

(declare-fun c!51762 () Bool)

(get-info :version)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!330409 (= c!51762 ((_ is Intermediate!3127) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 a!3305 mask!3777)))))

(declare-fun Unit!10313 () Unit!10308)

(assert (=> b!330409 (= e!202794 Unit!10313)))

(declare-fun b!330410 () Bool)

(declare-fun res!182165 () Bool)

(assert (=> b!330410 (=> (not res!182165) (not e!202792))))

(assert (=> b!330410 (= res!182165 (and (= (select (arr!7985 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8337 a!3305))))))

(declare-fun b!330411 () Bool)

(declare-fun res!182160 () Bool)

(assert (=> b!330411 (=> (not res!182160) (not e!202791))))

(declare-fun arrayContainsKey!0 (array!16891 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!330411 (= res!182160 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!330412 () Bool)

(declare-fun res!182164 () Bool)

(assert (=> b!330412 (=> (not res!182164) (not e!202791))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!330412 (= res!182164 (validKeyInArray!0 k0!2497))))

(declare-fun b!330413 () Bool)

(assert (=> b!330413 false))

(declare-fun Unit!10314 () Unit!10308)

(assert (=> b!330413 (= e!202794 Unit!10314)))

(declare-fun b!330414 () Bool)

(assert (=> b!330414 (= e!202798 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 (array!16892 (store (arr!7985 a!3305) i!1250 k0!2497) (size!8337 a!3305)) mask!3777) lt!158510))))

(assert (= (and start!33236 res!182163) b!330401))

(assert (= (and b!330401 res!182166) b!330412))

(assert (= (and b!330412 res!182164) b!330411))

(assert (= (and b!330411 res!182160) b!330402))

(assert (= (and b!330402 res!182168) b!330408))

(assert (= (and b!330408 res!182169) b!330400))

(assert (= (and b!330400 res!182162) b!330410))

(assert (= (and b!330410 res!182165) b!330407))

(assert (= (and b!330407 res!182167) b!330403))

(assert (= (and b!330403 c!51763) b!330405))

(assert (= (and b!330403 (not c!51763)) b!330404))

(assert (= (and b!330405 c!51764) b!330413))

(assert (= (and b!330405 (not c!51764)) b!330409))

(assert (= (and b!330409 c!51762) b!330406))

(assert (= (and b!330409 (not c!51762)) b!330399))

(assert (= (and b!330403 (not res!182161)) b!330414))

(declare-fun m!335605 () Bool)

(assert (=> b!330402 m!335605))

(declare-fun m!335607 () Bool)

(assert (=> b!330400 m!335607))

(assert (=> b!330400 m!335607))

(declare-fun m!335609 () Bool)

(assert (=> b!330400 m!335609))

(declare-fun m!335611 () Bool)

(assert (=> b!330408 m!335611))

(declare-fun m!335613 () Bool)

(assert (=> b!330410 m!335613))

(declare-fun m!335615 () Bool)

(assert (=> b!330409 m!335615))

(assert (=> b!330409 m!335615))

(declare-fun m!335617 () Bool)

(assert (=> b!330409 m!335617))

(declare-fun m!335619 () Bool)

(assert (=> b!330411 m!335619))

(declare-fun m!335621 () Bool)

(assert (=> b!330414 m!335621))

(declare-fun m!335623 () Bool)

(assert (=> b!330414 m!335623))

(declare-fun m!335625 () Bool)

(assert (=> b!330405 m!335625))

(assert (=> b!330403 m!335625))

(declare-fun m!335627 () Bool)

(assert (=> start!33236 m!335627))

(declare-fun m!335629 () Bool)

(assert (=> start!33236 m!335629))

(assert (=> b!330407 m!335625))

(declare-fun m!335631 () Bool)

(assert (=> b!330407 m!335631))

(declare-fun m!335633 () Bool)

(assert (=> b!330412 m!335633))

(check-sat (not b!330402) (not b!330408) (not b!330400) (not b!330407) (not b!330412) (not start!33236) (not b!330414) (not b!330409) (not b!330411))
(check-sat)
(get-model)

(declare-fun d!70163 () Bool)

(declare-fun e!202849 () Bool)

(assert (=> d!70163 e!202849))

(declare-fun c!51789 () Bool)

(declare-fun lt!158538 () SeekEntryResult!3127)

(assert (=> d!70163 (= c!51789 (and ((_ is Intermediate!3127) lt!158538) (undefined!3939 lt!158538)))))

(declare-fun e!202852 () SeekEntryResult!3127)

(assert (=> d!70163 (= lt!158538 e!202852)))

(declare-fun c!51790 () Bool)

(assert (=> d!70163 (= c!51790 (bvsge (bvadd #b00000000000000000000000000000001 x!1490) #b01111111111111111111111111111110))))

(declare-fun lt!158537 () (_ BitVec 64))

(assert (=> d!70163 (= lt!158537 (select (arr!7985 a!3305) (nextIndex!0 index!1840 x!1490 mask!3777)))))

(assert (=> d!70163 (validMask!0 mask!3777)))

(assert (=> d!70163 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 a!3305 mask!3777) lt!158538)))

(declare-fun b!330507 () Bool)

(declare-fun e!202850 () SeekEntryResult!3127)

(assert (=> b!330507 (= e!202852 e!202850)))

(declare-fun c!51788 () Bool)

(assert (=> b!330507 (= c!51788 (or (= lt!158537 k0!2497) (= (bvadd lt!158537 lt!158537) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!330508 () Bool)

(assert (=> b!330508 (and (bvsge (index!14686 lt!158538) #b00000000000000000000000000000000) (bvslt (index!14686 lt!158538) (size!8337 a!3305)))))

(declare-fun e!202853 () Bool)

(assert (=> b!330508 (= e!202853 (= (select (arr!7985 a!3305) (index!14686 lt!158538)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!330509 () Bool)

(assert (=> b!330509 (= e!202850 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1840 x!1490 mask!3777) (bvadd #b00000000000000000000000000000001 x!1490) mask!3777) k0!2497 a!3305 mask!3777))))

(declare-fun b!330510 () Bool)

(declare-fun e!202851 () Bool)

(assert (=> b!330510 (= e!202849 e!202851)))

(declare-fun res!182217 () Bool)

(assert (=> b!330510 (= res!182217 (and ((_ is Intermediate!3127) lt!158538) (not (undefined!3939 lt!158538)) (bvslt (x!32929 lt!158538) #b01111111111111111111111111111110) (bvsge (x!32929 lt!158538) #b00000000000000000000000000000000) (bvsge (x!32929 lt!158538) (bvadd #b00000000000000000000000000000001 x!1490))))))

(assert (=> b!330510 (=> (not res!182217) (not e!202851))))

(declare-fun b!330511 () Bool)

(assert (=> b!330511 (= e!202849 (bvsge (x!32929 lt!158538) #b01111111111111111111111111111110))))

(declare-fun b!330512 () Bool)

(assert (=> b!330512 (= e!202850 (Intermediate!3127 false (nextIndex!0 index!1840 x!1490 mask!3777) (bvadd #b00000000000000000000000000000001 x!1490)))))

(declare-fun b!330513 () Bool)

(assert (=> b!330513 (= e!202852 (Intermediate!3127 true (nextIndex!0 index!1840 x!1490 mask!3777) (bvadd #b00000000000000000000000000000001 x!1490)))))

(declare-fun b!330514 () Bool)

(assert (=> b!330514 (and (bvsge (index!14686 lt!158538) #b00000000000000000000000000000000) (bvslt (index!14686 lt!158538) (size!8337 a!3305)))))

(declare-fun res!182218 () Bool)

(assert (=> b!330514 (= res!182218 (= (select (arr!7985 a!3305) (index!14686 lt!158538)) k0!2497))))

(assert (=> b!330514 (=> res!182218 e!202853)))

(assert (=> b!330514 (= e!202851 e!202853)))

(declare-fun b!330515 () Bool)

(assert (=> b!330515 (and (bvsge (index!14686 lt!158538) #b00000000000000000000000000000000) (bvslt (index!14686 lt!158538) (size!8337 a!3305)))))

(declare-fun res!182216 () Bool)

(assert (=> b!330515 (= res!182216 (= (select (arr!7985 a!3305) (index!14686 lt!158538)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!330515 (=> res!182216 e!202853)))

(assert (= (and d!70163 c!51790) b!330513))

(assert (= (and d!70163 (not c!51790)) b!330507))

(assert (= (and b!330507 c!51788) b!330512))

(assert (= (and b!330507 (not c!51788)) b!330509))

(assert (= (and d!70163 c!51789) b!330511))

(assert (= (and d!70163 (not c!51789)) b!330510))

(assert (= (and b!330510 res!182217) b!330514))

(assert (= (and b!330514 (not res!182218)) b!330515))

(assert (= (and b!330515 (not res!182216)) b!330508))

(declare-fun m!335665 () Bool)

(assert (=> b!330515 m!335665))

(assert (=> d!70163 m!335615))

(declare-fun m!335669 () Bool)

(assert (=> d!70163 m!335669))

(assert (=> d!70163 m!335627))

(assert (=> b!330514 m!335665))

(assert (=> b!330508 m!335665))

(assert (=> b!330509 m!335615))

(declare-fun m!335677 () Bool)

(assert (=> b!330509 m!335677))

(assert (=> b!330509 m!335677))

(declare-fun m!335681 () Bool)

(assert (=> b!330509 m!335681))

(assert (=> b!330409 d!70163))

(declare-fun d!70175 () Bool)

(declare-fun lt!158546 () (_ BitVec 32))

(assert (=> d!70175 (and (bvsge lt!158546 #b00000000000000000000000000000000) (bvslt lt!158546 (bvadd mask!3777 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!70175 (= lt!158546 (choose!52 index!1840 x!1490 mask!3777))))

(assert (=> d!70175 (validMask!0 mask!3777)))

(assert (=> d!70175 (= (nextIndex!0 index!1840 x!1490 mask!3777) lt!158546)))

(declare-fun bs!11428 () Bool)

(assert (= bs!11428 d!70175))

(declare-fun m!335685 () Bool)

(assert (=> bs!11428 m!335685))

(assert (=> bs!11428 m!335627))

(assert (=> b!330409 d!70175))

(declare-fun d!70177 () Bool)

(declare-fun e!202862 () Bool)

(assert (=> d!70177 e!202862))

(declare-fun c!51796 () Bool)

(declare-fun lt!158548 () SeekEntryResult!3127)

(assert (=> d!70177 (= c!51796 (and ((_ is Intermediate!3127) lt!158548) (undefined!3939 lt!158548)))))

(declare-fun e!202865 () SeekEntryResult!3127)

(assert (=> d!70177 (= lt!158548 e!202865)))

(declare-fun c!51797 () Bool)

(assert (=> d!70177 (= c!51797 (bvsge x!1490 #b01111111111111111111111111111110))))

(declare-fun lt!158547 () (_ BitVec 64))

(assert (=> d!70177 (= lt!158547 (select (arr!7985 (array!16892 (store (arr!7985 a!3305) i!1250 k0!2497) (size!8337 a!3305))) index!1840))))

(assert (=> d!70177 (validMask!0 mask!3777)))

(assert (=> d!70177 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 (array!16892 (store (arr!7985 a!3305) i!1250 k0!2497) (size!8337 a!3305)) mask!3777) lt!158548)))

(declare-fun b!330529 () Bool)

(declare-fun e!202863 () SeekEntryResult!3127)

(assert (=> b!330529 (= e!202865 e!202863)))

(declare-fun c!51795 () Bool)

(assert (=> b!330529 (= c!51795 (or (= lt!158547 k0!2497) (= (bvadd lt!158547 lt!158547) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!330530 () Bool)

(assert (=> b!330530 (and (bvsge (index!14686 lt!158548) #b00000000000000000000000000000000) (bvslt (index!14686 lt!158548) (size!8337 (array!16892 (store (arr!7985 a!3305) i!1250 k0!2497) (size!8337 a!3305)))))))

(declare-fun e!202866 () Bool)

(assert (=> b!330530 (= e!202866 (= (select (arr!7985 (array!16892 (store (arr!7985 a!3305) i!1250 k0!2497) (size!8337 a!3305))) (index!14686 lt!158548)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!330531 () Bool)

(assert (=> b!330531 (= e!202863 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 (array!16892 (store (arr!7985 a!3305) i!1250 k0!2497) (size!8337 a!3305)) mask!3777))))

(declare-fun b!330532 () Bool)

(declare-fun e!202864 () Bool)

(assert (=> b!330532 (= e!202862 e!202864)))

(declare-fun res!182225 () Bool)

(assert (=> b!330532 (= res!182225 (and ((_ is Intermediate!3127) lt!158548) (not (undefined!3939 lt!158548)) (bvslt (x!32929 lt!158548) #b01111111111111111111111111111110) (bvsge (x!32929 lt!158548) #b00000000000000000000000000000000) (bvsge (x!32929 lt!158548) x!1490)))))

(assert (=> b!330532 (=> (not res!182225) (not e!202864))))

(declare-fun b!330533 () Bool)

(assert (=> b!330533 (= e!202862 (bvsge (x!32929 lt!158548) #b01111111111111111111111111111110))))

(declare-fun b!330534 () Bool)

(assert (=> b!330534 (= e!202863 (Intermediate!3127 false index!1840 x!1490))))

(declare-fun b!330535 () Bool)

(assert (=> b!330535 (= e!202865 (Intermediate!3127 true index!1840 x!1490))))

(declare-fun b!330536 () Bool)

(assert (=> b!330536 (and (bvsge (index!14686 lt!158548) #b00000000000000000000000000000000) (bvslt (index!14686 lt!158548) (size!8337 (array!16892 (store (arr!7985 a!3305) i!1250 k0!2497) (size!8337 a!3305)))))))

(declare-fun res!182226 () Bool)

(assert (=> b!330536 (= res!182226 (= (select (arr!7985 (array!16892 (store (arr!7985 a!3305) i!1250 k0!2497) (size!8337 a!3305))) (index!14686 lt!158548)) k0!2497))))

(assert (=> b!330536 (=> res!182226 e!202866)))

(assert (=> b!330536 (= e!202864 e!202866)))

(declare-fun b!330537 () Bool)

(assert (=> b!330537 (and (bvsge (index!14686 lt!158548) #b00000000000000000000000000000000) (bvslt (index!14686 lt!158548) (size!8337 (array!16892 (store (arr!7985 a!3305) i!1250 k0!2497) (size!8337 a!3305)))))))

(declare-fun res!182224 () Bool)

(assert (=> b!330537 (= res!182224 (= (select (arr!7985 (array!16892 (store (arr!7985 a!3305) i!1250 k0!2497) (size!8337 a!3305))) (index!14686 lt!158548)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!330537 (=> res!182224 e!202866)))

(assert (= (and d!70177 c!51797) b!330535))

(assert (= (and d!70177 (not c!51797)) b!330529))

(assert (= (and b!330529 c!51795) b!330534))

(assert (= (and b!330529 (not c!51795)) b!330531))

(assert (= (and d!70177 c!51796) b!330533))

(assert (= (and d!70177 (not c!51796)) b!330532))

(assert (= (and b!330532 res!182225) b!330536))

(assert (= (and b!330536 (not res!182226)) b!330537))

(assert (= (and b!330537 (not res!182224)) b!330530))

(declare-fun m!335691 () Bool)

(assert (=> b!330537 m!335691))

(declare-fun m!335693 () Bool)

(assert (=> d!70177 m!335693))

(assert (=> d!70177 m!335627))

(assert (=> b!330536 m!335691))

(assert (=> b!330530 m!335691))

(assert (=> b!330531 m!335615))

(assert (=> b!330531 m!335615))

(declare-fun m!335695 () Bool)

(assert (=> b!330531 m!335695))

(assert (=> b!330414 d!70177))

(declare-fun d!70181 () Bool)

(assert (=> d!70181 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!33236 d!70181))

(declare-fun d!70185 () Bool)

(assert (=> d!70185 (= (array_inv!5939 a!3305) (bvsge (size!8337 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!33236 d!70185))

(declare-fun d!70189 () Bool)

(declare-fun res!182241 () Bool)

(declare-fun e!202897 () Bool)

(assert (=> d!70189 (=> res!182241 e!202897)))

(assert (=> d!70189 (= res!182241 (bvsge #b00000000000000000000000000000000 (size!8337 a!3305)))))

(assert (=> d!70189 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!202897)))

(declare-fun b!330585 () Bool)

(declare-fun e!202898 () Bool)

(declare-fun e!202896 () Bool)

(assert (=> b!330585 (= e!202898 e!202896)))

(declare-fun lt!158579 () (_ BitVec 64))

(assert (=> b!330585 (= lt!158579 (select (arr!7985 a!3305) #b00000000000000000000000000000000))))

(declare-fun lt!158580 () Unit!10308)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16891 (_ BitVec 64) (_ BitVec 32)) Unit!10308)

(assert (=> b!330585 (= lt!158580 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!158579 #b00000000000000000000000000000000))))

(assert (=> b!330585 (arrayContainsKey!0 a!3305 lt!158579 #b00000000000000000000000000000000)))

(declare-fun lt!158578 () Unit!10308)

(assert (=> b!330585 (= lt!158578 lt!158580)))

(declare-fun res!182240 () Bool)

(assert (=> b!330585 (= res!182240 (= (seekEntryOrOpen!0 (select (arr!7985 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!3127 #b00000000000000000000000000000000)))))

(assert (=> b!330585 (=> (not res!182240) (not e!202896))))

(declare-fun b!330586 () Bool)

(assert (=> b!330586 (= e!202897 e!202898)))

(declare-fun c!51815 () Bool)

(assert (=> b!330586 (= c!51815 (validKeyInArray!0 (select (arr!7985 a!3305) #b00000000000000000000000000000000)))))

(declare-fun b!330587 () Bool)

(declare-fun call!26165 () Bool)

(assert (=> b!330587 (= e!202898 call!26165)))

(declare-fun b!330588 () Bool)

(assert (=> b!330588 (= e!202896 call!26165)))

(declare-fun bm!26162 () Bool)

(assert (=> bm!26162 (= call!26165 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(assert (= (and d!70189 (not res!182241)) b!330586))

(assert (= (and b!330586 c!51815) b!330585))

(assert (= (and b!330586 (not c!51815)) b!330587))

(assert (= (and b!330585 res!182240) b!330588))

(assert (= (or b!330588 b!330587) bm!26162))

(declare-fun m!335729 () Bool)

(assert (=> b!330585 m!335729))

(declare-fun m!335731 () Bool)

(assert (=> b!330585 m!335731))

(declare-fun m!335733 () Bool)

(assert (=> b!330585 m!335733))

(assert (=> b!330585 m!335729))

(declare-fun m!335735 () Bool)

(assert (=> b!330585 m!335735))

(assert (=> b!330586 m!335729))

(assert (=> b!330586 m!335729))

(declare-fun m!335737 () Bool)

(assert (=> b!330586 m!335737))

(declare-fun m!335739 () Bool)

(assert (=> bm!26162 m!335739))

(assert (=> b!330408 d!70189))

(declare-fun b!330643 () Bool)

(declare-fun e!202932 () SeekEntryResult!3127)

(assert (=> b!330643 (= e!202932 Undefined!3127)))

(declare-fun b!330644 () Bool)

(declare-fun e!202933 () SeekEntryResult!3127)

(declare-fun lt!158596 () SeekEntryResult!3127)

(assert (=> b!330644 (= e!202933 (Found!3127 (index!14686 lt!158596)))))

(declare-fun d!70197 () Bool)

(declare-fun lt!158597 () SeekEntryResult!3127)

(assert (=> d!70197 (and (or ((_ is Undefined!3127) lt!158597) (not ((_ is Found!3127) lt!158597)) (and (bvsge (index!14685 lt!158597) #b00000000000000000000000000000000) (bvslt (index!14685 lt!158597) (size!8337 a!3305)))) (or ((_ is Undefined!3127) lt!158597) ((_ is Found!3127) lt!158597) (not ((_ is MissingZero!3127) lt!158597)) (and (bvsge (index!14684 lt!158597) #b00000000000000000000000000000000) (bvslt (index!14684 lt!158597) (size!8337 a!3305)))) (or ((_ is Undefined!3127) lt!158597) ((_ is Found!3127) lt!158597) ((_ is MissingZero!3127) lt!158597) (not ((_ is MissingVacant!3127) lt!158597)) (and (bvsge (index!14687 lt!158597) #b00000000000000000000000000000000) (bvslt (index!14687 lt!158597) (size!8337 a!3305)))) (or ((_ is Undefined!3127) lt!158597) (ite ((_ is Found!3127) lt!158597) (= (select (arr!7985 a!3305) (index!14685 lt!158597)) k0!2497) (ite ((_ is MissingZero!3127) lt!158597) (= (select (arr!7985 a!3305) (index!14684 lt!158597)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3127) lt!158597) (= (select (arr!7985 a!3305) (index!14687 lt!158597)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!70197 (= lt!158597 e!202932)))

(declare-fun c!51835 () Bool)

(assert (=> d!70197 (= c!51835 (and ((_ is Intermediate!3127) lt!158596) (undefined!3939 lt!158596)))))

(assert (=> d!70197 (= lt!158596 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777))))

(assert (=> d!70197 (validMask!0 mask!3777)))

(assert (=> d!70197 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) lt!158597)))

(declare-fun b!330645 () Bool)

(declare-fun e!202931 () SeekEntryResult!3127)

(assert (=> b!330645 (= e!202931 (MissingZero!3127 (index!14686 lt!158596)))))

(declare-fun b!330646 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16891 (_ BitVec 32)) SeekEntryResult!3127)

(assert (=> b!330646 (= e!202931 (seekKeyOrZeroReturnVacant!0 (x!32929 lt!158596) (index!14686 lt!158596) (index!14686 lt!158596) k0!2497 a!3305 mask!3777))))

(declare-fun b!330647 () Bool)

(assert (=> b!330647 (= e!202932 e!202933)))

(declare-fun lt!158595 () (_ BitVec 64))

(assert (=> b!330647 (= lt!158595 (select (arr!7985 a!3305) (index!14686 lt!158596)))))

(declare-fun c!51834 () Bool)

(assert (=> b!330647 (= c!51834 (= lt!158595 k0!2497))))

(declare-fun b!330648 () Bool)

(declare-fun c!51836 () Bool)

(assert (=> b!330648 (= c!51836 (= lt!158595 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!330648 (= e!202933 e!202931)))

(assert (= (and d!70197 c!51835) b!330643))

(assert (= (and d!70197 (not c!51835)) b!330647))

(assert (= (and b!330647 c!51834) b!330644))

(assert (= (and b!330647 (not c!51834)) b!330648))

(assert (= (and b!330648 c!51836) b!330645))

(assert (= (and b!330648 (not c!51836)) b!330646))

(declare-fun m!335757 () Bool)

(assert (=> d!70197 m!335757))

(assert (=> d!70197 m!335607))

(declare-fun m!335759 () Bool)

(assert (=> d!70197 m!335759))

(assert (=> d!70197 m!335607))

(assert (=> d!70197 m!335609))

(assert (=> d!70197 m!335627))

(declare-fun m!335761 () Bool)

(assert (=> d!70197 m!335761))

(declare-fun m!335763 () Bool)

(assert (=> b!330646 m!335763))

(declare-fun m!335765 () Bool)

(assert (=> b!330647 m!335765))

(assert (=> b!330402 d!70197))

(declare-fun d!70209 () Bool)

(declare-fun e!202934 () Bool)

(assert (=> d!70209 e!202934))

(declare-fun c!51838 () Bool)

(declare-fun lt!158599 () SeekEntryResult!3127)

(assert (=> d!70209 (= c!51838 (and ((_ is Intermediate!3127) lt!158599) (undefined!3939 lt!158599)))))

(declare-fun e!202937 () SeekEntryResult!3127)

(assert (=> d!70209 (= lt!158599 e!202937)))

(declare-fun c!51839 () Bool)

(assert (=> d!70209 (= c!51839 (bvsge x!1490 #b01111111111111111111111111111110))))

(declare-fun lt!158598 () (_ BitVec 64))

(assert (=> d!70209 (= lt!158598 (select (arr!7985 a!3305) index!1840))))

(assert (=> d!70209 (validMask!0 mask!3777)))

(assert (=> d!70209 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!158599)))

(declare-fun b!330649 () Bool)

(declare-fun e!202935 () SeekEntryResult!3127)

(assert (=> b!330649 (= e!202937 e!202935)))

(declare-fun c!51837 () Bool)

(assert (=> b!330649 (= c!51837 (or (= lt!158598 k0!2497) (= (bvadd lt!158598 lt!158598) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!330650 () Bool)

(assert (=> b!330650 (and (bvsge (index!14686 lt!158599) #b00000000000000000000000000000000) (bvslt (index!14686 lt!158599) (size!8337 a!3305)))))

(declare-fun e!202938 () Bool)

(assert (=> b!330650 (= e!202938 (= (select (arr!7985 a!3305) (index!14686 lt!158599)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!330651 () Bool)

(assert (=> b!330651 (= e!202935 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 a!3305 mask!3777))))

(declare-fun b!330652 () Bool)

(declare-fun e!202936 () Bool)

(assert (=> b!330652 (= e!202934 e!202936)))

(declare-fun res!182262 () Bool)

(assert (=> b!330652 (= res!182262 (and ((_ is Intermediate!3127) lt!158599) (not (undefined!3939 lt!158599)) (bvslt (x!32929 lt!158599) #b01111111111111111111111111111110) (bvsge (x!32929 lt!158599) #b00000000000000000000000000000000) (bvsge (x!32929 lt!158599) x!1490)))))

(assert (=> b!330652 (=> (not res!182262) (not e!202936))))

(declare-fun b!330653 () Bool)

(assert (=> b!330653 (= e!202934 (bvsge (x!32929 lt!158599) #b01111111111111111111111111111110))))

(declare-fun b!330654 () Bool)

(assert (=> b!330654 (= e!202935 (Intermediate!3127 false index!1840 x!1490))))

(declare-fun b!330655 () Bool)

(assert (=> b!330655 (= e!202937 (Intermediate!3127 true index!1840 x!1490))))

(declare-fun b!330656 () Bool)

(assert (=> b!330656 (and (bvsge (index!14686 lt!158599) #b00000000000000000000000000000000) (bvslt (index!14686 lt!158599) (size!8337 a!3305)))))

(declare-fun res!182263 () Bool)

(assert (=> b!330656 (= res!182263 (= (select (arr!7985 a!3305) (index!14686 lt!158599)) k0!2497))))

(assert (=> b!330656 (=> res!182263 e!202938)))

(assert (=> b!330656 (= e!202936 e!202938)))

(declare-fun b!330657 () Bool)

(assert (=> b!330657 (and (bvsge (index!14686 lt!158599) #b00000000000000000000000000000000) (bvslt (index!14686 lt!158599) (size!8337 a!3305)))))

(declare-fun res!182261 () Bool)

(assert (=> b!330657 (= res!182261 (= (select (arr!7985 a!3305) (index!14686 lt!158599)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!330657 (=> res!182261 e!202938)))

(assert (= (and d!70209 c!51839) b!330655))

(assert (= (and d!70209 (not c!51839)) b!330649))

(assert (= (and b!330649 c!51837) b!330654))

(assert (= (and b!330649 (not c!51837)) b!330651))

(assert (= (and d!70209 c!51838) b!330653))

(assert (= (and d!70209 (not c!51838)) b!330652))

(assert (= (and b!330652 res!182262) b!330656))

(assert (= (and b!330656 (not res!182263)) b!330657))

(assert (= (and b!330657 (not res!182261)) b!330650))

(declare-fun m!335767 () Bool)

(assert (=> b!330657 m!335767))

(assert (=> d!70209 m!335625))

(assert (=> d!70209 m!335627))

(assert (=> b!330656 m!335767))

(assert (=> b!330650 m!335767))

(assert (=> b!330651 m!335615))

(assert (=> b!330651 m!335615))

(declare-fun m!335769 () Bool)

(assert (=> b!330651 m!335769))

(assert (=> b!330407 d!70209))

(declare-fun d!70211 () Bool)

(assert (=> d!70211 (= (validKeyInArray!0 k0!2497) (and (not (= k0!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!330412 d!70211))

(declare-fun d!70213 () Bool)

(declare-fun res!182270 () Bool)

(declare-fun e!202951 () Bool)

(assert (=> d!70213 (=> res!182270 e!202951)))

(assert (=> d!70213 (= res!182270 (= (select (arr!7985 a!3305) #b00000000000000000000000000000000) k0!2497))))

(assert (=> d!70213 (= (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000) e!202951)))

(declare-fun b!330674 () Bool)

(declare-fun e!202952 () Bool)

(assert (=> b!330674 (= e!202951 e!202952)))

(declare-fun res!182271 () Bool)

(assert (=> b!330674 (=> (not res!182271) (not e!202952))))

(assert (=> b!330674 (= res!182271 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8337 a!3305)))))

(declare-fun b!330676 () Bool)

(assert (=> b!330676 (= e!202952 (arrayContainsKey!0 a!3305 k0!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!70213 (not res!182270)) b!330674))

(assert (= (and b!330674 res!182271) b!330676))

(assert (=> d!70213 m!335729))

(declare-fun m!335771 () Bool)

(assert (=> b!330676 m!335771))

(assert (=> b!330411 d!70213))

(declare-fun d!70217 () Bool)

(declare-fun e!202955 () Bool)

(assert (=> d!70217 e!202955))

(declare-fun c!51847 () Bool)

(declare-fun lt!158613 () SeekEntryResult!3127)

(assert (=> d!70217 (= c!51847 (and ((_ is Intermediate!3127) lt!158613) (undefined!3939 lt!158613)))))

(declare-fun e!202958 () SeekEntryResult!3127)

(assert (=> d!70217 (= lt!158613 e!202958)))

(declare-fun c!51848 () Bool)

(assert (=> d!70217 (= c!51848 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!158612 () (_ BitVec 64))

(assert (=> d!70217 (= lt!158612 (select (arr!7985 a!3305) (toIndex!0 k0!2497 mask!3777)))))

(assert (=> d!70217 (validMask!0 mask!3777)))

(assert (=> d!70217 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!158613)))

(declare-fun b!330680 () Bool)

(declare-fun e!202956 () SeekEntryResult!3127)

(assert (=> b!330680 (= e!202958 e!202956)))

(declare-fun c!51846 () Bool)

(assert (=> b!330680 (= c!51846 (or (= lt!158612 k0!2497) (= (bvadd lt!158612 lt!158612) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!330681 () Bool)

(assert (=> b!330681 (and (bvsge (index!14686 lt!158613) #b00000000000000000000000000000000) (bvslt (index!14686 lt!158613) (size!8337 a!3305)))))

(declare-fun e!202959 () Bool)

(assert (=> b!330681 (= e!202959 (= (select (arr!7985 a!3305) (index!14686 lt!158613)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!330682 () Bool)

(assert (=> b!330682 (= e!202956 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k0!2497 a!3305 mask!3777))))

(declare-fun b!330683 () Bool)

(declare-fun e!202957 () Bool)

(assert (=> b!330683 (= e!202955 e!202957)))

(declare-fun res!182275 () Bool)

(assert (=> b!330683 (= res!182275 (and ((_ is Intermediate!3127) lt!158613) (not (undefined!3939 lt!158613)) (bvslt (x!32929 lt!158613) #b01111111111111111111111111111110) (bvsge (x!32929 lt!158613) #b00000000000000000000000000000000) (bvsge (x!32929 lt!158613) #b00000000000000000000000000000000)))))

(assert (=> b!330683 (=> (not res!182275) (not e!202957))))

(declare-fun b!330684 () Bool)

(assert (=> b!330684 (= e!202955 (bvsge (x!32929 lt!158613) #b01111111111111111111111111111110))))

(declare-fun b!330685 () Bool)

(assert (=> b!330685 (= e!202956 (Intermediate!3127 false (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!330686 () Bool)

(assert (=> b!330686 (= e!202958 (Intermediate!3127 true (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!330687 () Bool)

(assert (=> b!330687 (and (bvsge (index!14686 lt!158613) #b00000000000000000000000000000000) (bvslt (index!14686 lt!158613) (size!8337 a!3305)))))

(declare-fun res!182276 () Bool)

(assert (=> b!330687 (= res!182276 (= (select (arr!7985 a!3305) (index!14686 lt!158613)) k0!2497))))

(assert (=> b!330687 (=> res!182276 e!202959)))

(assert (=> b!330687 (= e!202957 e!202959)))

(declare-fun b!330688 () Bool)

(assert (=> b!330688 (and (bvsge (index!14686 lt!158613) #b00000000000000000000000000000000) (bvslt (index!14686 lt!158613) (size!8337 a!3305)))))

(declare-fun res!182274 () Bool)

(assert (=> b!330688 (= res!182274 (= (select (arr!7985 a!3305) (index!14686 lt!158613)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!330688 (=> res!182274 e!202959)))

(assert (= (and d!70217 c!51848) b!330686))

(assert (= (and d!70217 (not c!51848)) b!330680))

(assert (= (and b!330680 c!51846) b!330685))

(assert (= (and b!330680 (not c!51846)) b!330682))

(assert (= (and d!70217 c!51847) b!330684))

(assert (= (and d!70217 (not c!51847)) b!330683))

(assert (= (and b!330683 res!182275) b!330687))

(assert (= (and b!330687 (not res!182276)) b!330688))

(assert (= (and b!330688 (not res!182274)) b!330681))

(declare-fun m!335773 () Bool)

(assert (=> b!330688 m!335773))

(assert (=> d!70217 m!335607))

(declare-fun m!335775 () Bool)

(assert (=> d!70217 m!335775))

(assert (=> d!70217 m!335627))

(assert (=> b!330687 m!335773))

(assert (=> b!330681 m!335773))

(assert (=> b!330682 m!335607))

(declare-fun m!335777 () Bool)

(assert (=> b!330682 m!335777))

(assert (=> b!330682 m!335777))

(declare-fun m!335781 () Bool)

(assert (=> b!330682 m!335781))

(assert (=> b!330400 d!70217))

(declare-fun d!70221 () Bool)

(declare-fun lt!158631 () (_ BitVec 32))

(declare-fun lt!158630 () (_ BitVec 32))

(assert (=> d!70221 (= lt!158631 (bvmul (bvxor lt!158630 (bvlshr lt!158630 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!70221 (= lt!158630 ((_ extract 31 0) (bvand (bvxor k0!2497 (bvlshr k0!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!70221 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!182282 (let ((h!5442 ((_ extract 31 0) (bvand (bvxor k0!2497 (bvlshr k0!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!32937 (bvmul (bvxor h!5442 (bvlshr h!5442 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!32937 (bvlshr x!32937 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!182282 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!182282 #b00000000000000000000000000000000))))))

(assert (=> d!70221 (= (toIndex!0 k0!2497 mask!3777) (bvand (bvxor lt!158631 (bvlshr lt!158631 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!330400 d!70221))

(check-sat (not b!330585) (not b!330646) (not b!330509) (not d!70177) (not b!330682) (not b!330586) (not bm!26162) (not b!330531) (not d!70175) (not b!330676) (not d!70209) (not d!70217) (not d!70197) (not b!330651) (not d!70163))
(check-sat)
