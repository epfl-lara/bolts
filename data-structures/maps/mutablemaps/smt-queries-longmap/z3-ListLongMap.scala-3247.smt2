; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45300 () Bool)

(assert start!45300)

(declare-fun b!497455 () Bool)

(declare-fun res!299969 () Bool)

(declare-fun e!291579 () Bool)

(assert (=> b!497455 (=> (not res!299969) (not e!291579))))

(declare-datatypes ((array!32148 0))(
  ( (array!32149 (arr!15454 (Array (_ BitVec 32) (_ BitVec 64))) (size!15818 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32148)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!497455 (= res!299969 (validKeyInArray!0 (select (arr!15454 a!3235) j!176)))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!291577 () Bool)

(declare-fun b!497456 () Bool)

(declare-datatypes ((SeekEntryResult!3928 0))(
  ( (MissingZero!3928 (index!17891 (_ BitVec 32))) (Found!3928 (index!17892 (_ BitVec 32))) (Intermediate!3928 (undefined!4740 Bool) (index!17893 (_ BitVec 32)) (x!46967 (_ BitVec 32))) (Undefined!3928) (MissingVacant!3928 (index!17894 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32148 (_ BitVec 32)) SeekEntryResult!3928)

(assert (=> b!497456 (= e!291577 (= (seekEntryOrOpen!0 (select (arr!15454 a!3235) j!176) a!3235 mask!3524) (Found!3928 j!176)))))

(declare-fun b!497457 () Bool)

(declare-fun res!299965 () Bool)

(assert (=> b!497457 (=> (not res!299965) (not e!291579))))

(declare-fun k0!2280 () (_ BitVec 64))

(assert (=> b!497457 (= res!299965 (validKeyInArray!0 k0!2280))))

(declare-fun b!497458 () Bool)

(declare-datatypes ((Unit!14802 0))(
  ( (Unit!14803) )
))
(declare-fun e!291575 () Unit!14802)

(declare-fun Unit!14804 () Unit!14802)

(assert (=> b!497458 (= e!291575 Unit!14804)))

(declare-fun res!299967 () Bool)

(assert (=> start!45300 (=> (not res!299967) (not e!291579))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45300 (= res!299967 (validMask!0 mask!3524))))

(assert (=> start!45300 e!291579))

(assert (=> start!45300 true))

(declare-fun array_inv!11228 (array!32148) Bool)

(assert (=> start!45300 (array_inv!11228 a!3235)))

(declare-fun b!497459 () Bool)

(declare-fun Unit!14805 () Unit!14802)

(assert (=> b!497459 (= e!291575 Unit!14805)))

(declare-fun lt!225293 () SeekEntryResult!3928)

(declare-fun lt!225299 () (_ BitVec 32))

(declare-fun lt!225291 () Unit!14802)

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32148 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14802)

(assert (=> b!497459 (= lt!225291 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!225299 #b00000000000000000000000000000000 (index!17893 lt!225293) (x!46967 lt!225293) mask!3524))))

(declare-fun res!299970 () Bool)

(declare-fun lt!225295 () (_ BitVec 64))

(declare-fun lt!225294 () array!32148)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32148 (_ BitVec 32)) SeekEntryResult!3928)

(assert (=> b!497459 (= res!299970 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225299 lt!225295 lt!225294 mask!3524) (Intermediate!3928 false (index!17893 lt!225293) (x!46967 lt!225293))))))

(declare-fun e!291580 () Bool)

(assert (=> b!497459 (=> (not res!299970) (not e!291580))))

(assert (=> b!497459 e!291580))

(declare-fun b!497460 () Bool)

(declare-fun e!291578 () Bool)

(assert (=> b!497460 (= e!291578 (or (bvslt mask!3524 #b00000000000000000000000000000000) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> b!497460 (and (or (= (select (arr!15454 a!3235) (index!17893 lt!225293)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15454 a!3235) (index!17893 lt!225293)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15454 a!3235) (index!17893 lt!225293)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15454 a!3235) (index!17893 lt!225293)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!225292 () Unit!14802)

(assert (=> b!497460 (= lt!225292 e!291575)))

(declare-fun c!59021 () Bool)

(assert (=> b!497460 (= c!59021 (= (select (arr!15454 a!3235) (index!17893 lt!225293)) (select (arr!15454 a!3235) j!176)))))

(assert (=> b!497460 (and (bvslt (x!46967 lt!225293) #b01111111111111111111111111111110) (or (= (select (arr!15454 a!3235) (index!17893 lt!225293)) (select (arr!15454 a!3235) j!176)) (= (select (arr!15454 a!3235) (index!17893 lt!225293)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15454 a!3235) (index!17893 lt!225293)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!497461 () Bool)

(declare-fun res!299971 () Bool)

(assert (=> b!497461 (=> res!299971 e!291578)))

(get-info :version)

(assert (=> b!497461 (= res!299971 (or (undefined!4740 lt!225293) (not ((_ is Intermediate!3928) lt!225293))))))

(declare-fun b!497462 () Bool)

(declare-fun e!291574 () Bool)

(assert (=> b!497462 (= e!291574 (not e!291578))))

(declare-fun res!299974 () Bool)

(assert (=> b!497462 (=> res!299974 e!291578)))

(declare-fun lt!225297 () (_ BitVec 32))

(assert (=> b!497462 (= res!299974 (= lt!225293 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225297 lt!225295 lt!225294 mask!3524)))))

(assert (=> b!497462 (= lt!225293 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225299 (select (arr!15454 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!497462 (= lt!225297 (toIndex!0 lt!225295 mask!3524))))

(assert (=> b!497462 (= lt!225295 (select (store (arr!15454 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!497462 (= lt!225299 (toIndex!0 (select (arr!15454 a!3235) j!176) mask!3524))))

(assert (=> b!497462 (= lt!225294 (array!32149 (store (arr!15454 a!3235) i!1204 k0!2280) (size!15818 a!3235)))))

(assert (=> b!497462 e!291577))

(declare-fun res!299968 () Bool)

(assert (=> b!497462 (=> (not res!299968) (not e!291577))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32148 (_ BitVec 32)) Bool)

(assert (=> b!497462 (= res!299968 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!225296 () Unit!14802)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32148 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14802)

(assert (=> b!497462 (= lt!225296 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!497463 () Bool)

(declare-fun res!299964 () Bool)

(assert (=> b!497463 (=> (not res!299964) (not e!291579))))

(declare-fun arrayContainsKey!0 (array!32148 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!497463 (= res!299964 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!497464 () Bool)

(declare-fun res!299973 () Bool)

(assert (=> b!497464 (=> (not res!299973) (not e!291574))))

(assert (=> b!497464 (= res!299973 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!497465 () Bool)

(assert (=> b!497465 (= e!291580 false)))

(declare-fun b!497466 () Bool)

(assert (=> b!497466 (= e!291579 e!291574)))

(declare-fun res!299975 () Bool)

(assert (=> b!497466 (=> (not res!299975) (not e!291574))))

(declare-fun lt!225298 () SeekEntryResult!3928)

(assert (=> b!497466 (= res!299975 (or (= lt!225298 (MissingZero!3928 i!1204)) (= lt!225298 (MissingVacant!3928 i!1204))))))

(assert (=> b!497466 (= lt!225298 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!497467 () Bool)

(declare-fun res!299972 () Bool)

(assert (=> b!497467 (=> (not res!299972) (not e!291574))))

(declare-datatypes ((List!9665 0))(
  ( (Nil!9662) (Cons!9661 (h!10532 (_ BitVec 64)) (t!15901 List!9665)) )
))
(declare-fun arrayNoDuplicates!0 (array!32148 (_ BitVec 32) List!9665) Bool)

(assert (=> b!497467 (= res!299972 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9662))))

(declare-fun b!497468 () Bool)

(declare-fun res!299966 () Bool)

(assert (=> b!497468 (=> (not res!299966) (not e!291579))))

(assert (=> b!497468 (= res!299966 (and (= (size!15818 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15818 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15818 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!45300 res!299967) b!497468))

(assert (= (and b!497468 res!299966) b!497455))

(assert (= (and b!497455 res!299969) b!497457))

(assert (= (and b!497457 res!299965) b!497463))

(assert (= (and b!497463 res!299964) b!497466))

(assert (= (and b!497466 res!299975) b!497464))

(assert (= (and b!497464 res!299973) b!497467))

(assert (= (and b!497467 res!299972) b!497462))

(assert (= (and b!497462 res!299968) b!497456))

(assert (= (and b!497462 (not res!299974)) b!497461))

(assert (= (and b!497461 (not res!299971)) b!497460))

(assert (= (and b!497460 c!59021) b!497459))

(assert (= (and b!497460 (not c!59021)) b!497458))

(assert (= (and b!497459 res!299970) b!497465))

(declare-fun m!478879 () Bool)

(assert (=> b!497457 m!478879))

(declare-fun m!478881 () Bool)

(assert (=> b!497460 m!478881))

(declare-fun m!478883 () Bool)

(assert (=> b!497460 m!478883))

(declare-fun m!478885 () Bool)

(assert (=> b!497467 m!478885))

(assert (=> b!497456 m!478883))

(assert (=> b!497456 m!478883))

(declare-fun m!478887 () Bool)

(assert (=> b!497456 m!478887))

(assert (=> b!497455 m!478883))

(assert (=> b!497455 m!478883))

(declare-fun m!478889 () Bool)

(assert (=> b!497455 m!478889))

(declare-fun m!478891 () Bool)

(assert (=> b!497463 m!478891))

(declare-fun m!478893 () Bool)

(assert (=> start!45300 m!478893))

(declare-fun m!478895 () Bool)

(assert (=> start!45300 m!478895))

(declare-fun m!478897 () Bool)

(assert (=> b!497462 m!478897))

(declare-fun m!478899 () Bool)

(assert (=> b!497462 m!478899))

(declare-fun m!478901 () Bool)

(assert (=> b!497462 m!478901))

(declare-fun m!478903 () Bool)

(assert (=> b!497462 m!478903))

(declare-fun m!478905 () Bool)

(assert (=> b!497462 m!478905))

(assert (=> b!497462 m!478883))

(declare-fun m!478907 () Bool)

(assert (=> b!497462 m!478907))

(assert (=> b!497462 m!478883))

(declare-fun m!478909 () Bool)

(assert (=> b!497462 m!478909))

(assert (=> b!497462 m!478883))

(declare-fun m!478911 () Bool)

(assert (=> b!497462 m!478911))

(declare-fun m!478913 () Bool)

(assert (=> b!497464 m!478913))

(declare-fun m!478915 () Bool)

(assert (=> b!497466 m!478915))

(declare-fun m!478917 () Bool)

(assert (=> b!497459 m!478917))

(declare-fun m!478919 () Bool)

(assert (=> b!497459 m!478919))

(check-sat (not start!45300) (not b!497467) (not b!497462) (not b!497463) (not b!497455) (not b!497459) (not b!497466) (not b!497457) (not b!497464) (not b!497456))
(check-sat)
(get-model)

(declare-fun b!497521 () Bool)

(declare-fun e!291612 () Bool)

(declare-fun e!291613 () Bool)

(assert (=> b!497521 (= e!291612 e!291613)))

(declare-fun c!59027 () Bool)

(assert (=> b!497521 (= c!59027 (validKeyInArray!0 (select (arr!15454 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!497522 () Bool)

(declare-fun e!291610 () Bool)

(declare-fun contains!2720 (List!9665 (_ BitVec 64)) Bool)

(assert (=> b!497522 (= e!291610 (contains!2720 Nil!9662 (select (arr!15454 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!497523 () Bool)

(declare-fun call!31430 () Bool)

(assert (=> b!497523 (= e!291613 call!31430)))

(declare-fun b!497524 () Bool)

(assert (=> b!497524 (= e!291613 call!31430)))

(declare-fun b!497525 () Bool)

(declare-fun e!291611 () Bool)

(assert (=> b!497525 (= e!291611 e!291612)))

(declare-fun res!300018 () Bool)

(assert (=> b!497525 (=> (not res!300018) (not e!291612))))

(assert (=> b!497525 (= res!300018 (not e!291610))))

(declare-fun res!300020 () Bool)

(assert (=> b!497525 (=> (not res!300020) (not e!291610))))

(assert (=> b!497525 (= res!300020 (validKeyInArray!0 (select (arr!15454 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!78251 () Bool)

(declare-fun res!300019 () Bool)

(assert (=> d!78251 (=> res!300019 e!291611)))

(assert (=> d!78251 (= res!300019 (bvsge #b00000000000000000000000000000000 (size!15818 a!3235)))))

(assert (=> d!78251 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9662) e!291611)))

(declare-fun bm!31427 () Bool)

(assert (=> bm!31427 (= call!31430 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!59027 (Cons!9661 (select (arr!15454 a!3235) #b00000000000000000000000000000000) Nil!9662) Nil!9662)))))

(assert (= (and d!78251 (not res!300019)) b!497525))

(assert (= (and b!497525 res!300020) b!497522))

(assert (= (and b!497525 res!300018) b!497521))

(assert (= (and b!497521 c!59027) b!497523))

(assert (= (and b!497521 (not c!59027)) b!497524))

(assert (= (or b!497523 b!497524) bm!31427))

(declare-fun m!478963 () Bool)

(assert (=> b!497521 m!478963))

(assert (=> b!497521 m!478963))

(declare-fun m!478965 () Bool)

(assert (=> b!497521 m!478965))

(assert (=> b!497522 m!478963))

(assert (=> b!497522 m!478963))

(declare-fun m!478967 () Bool)

(assert (=> b!497522 m!478967))

(assert (=> b!497525 m!478963))

(assert (=> b!497525 m!478963))

(assert (=> b!497525 m!478965))

(assert (=> bm!31427 m!478963))

(declare-fun m!478969 () Bool)

(assert (=> bm!31427 m!478969))

(assert (=> b!497467 d!78251))

(declare-fun d!78253 () Bool)

(declare-fun lt!225332 () (_ BitVec 32))

(declare-fun lt!225331 () (_ BitVec 32))

(assert (=> d!78253 (= lt!225332 (bvmul (bvxor lt!225331 (bvlshr lt!225331 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!78253 (= lt!225331 ((_ extract 31 0) (bvand (bvxor (select (arr!15454 a!3235) j!176) (bvlshr (select (arr!15454 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!78253 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!300021 (let ((h!10534 ((_ extract 31 0) (bvand (bvxor (select (arr!15454 a!3235) j!176) (bvlshr (select (arr!15454 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!46969 (bvmul (bvxor h!10534 (bvlshr h!10534 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!46969 (bvlshr x!46969 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!300021 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!300021 #b00000000000000000000000000000000))))))

(assert (=> d!78253 (= (toIndex!0 (select (arr!15454 a!3235) j!176) mask!3524) (bvand (bvxor lt!225332 (bvlshr lt!225332 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!497462 d!78253))

(declare-fun call!31433 () Bool)

(declare-fun bm!31430 () Bool)

(assert (=> bm!31430 (= call!31433 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!497534 () Bool)

(declare-fun e!291621 () Bool)

(assert (=> b!497534 (= e!291621 call!31433)))

(declare-fun b!497535 () Bool)

(declare-fun e!291620 () Bool)

(assert (=> b!497535 (= e!291621 e!291620)))

(declare-fun lt!225339 () (_ BitVec 64))

(assert (=> b!497535 (= lt!225339 (select (arr!15454 a!3235) j!176))))

(declare-fun lt!225341 () Unit!14802)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!32148 (_ BitVec 64) (_ BitVec 32)) Unit!14802)

(assert (=> b!497535 (= lt!225341 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!225339 j!176))))

(assert (=> b!497535 (arrayContainsKey!0 a!3235 lt!225339 #b00000000000000000000000000000000)))

(declare-fun lt!225340 () Unit!14802)

(assert (=> b!497535 (= lt!225340 lt!225341)))

(declare-fun res!300027 () Bool)

(assert (=> b!497535 (= res!300027 (= (seekEntryOrOpen!0 (select (arr!15454 a!3235) j!176) a!3235 mask!3524) (Found!3928 j!176)))))

(assert (=> b!497535 (=> (not res!300027) (not e!291620))))

(declare-fun d!78255 () Bool)

(declare-fun res!300026 () Bool)

(declare-fun e!291622 () Bool)

(assert (=> d!78255 (=> res!300026 e!291622)))

(assert (=> d!78255 (= res!300026 (bvsge j!176 (size!15818 a!3235)))))

(assert (=> d!78255 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!291622)))

(declare-fun b!497536 () Bool)

(assert (=> b!497536 (= e!291622 e!291621)))

(declare-fun c!59030 () Bool)

(assert (=> b!497536 (= c!59030 (validKeyInArray!0 (select (arr!15454 a!3235) j!176)))))

(declare-fun b!497537 () Bool)

(assert (=> b!497537 (= e!291620 call!31433)))

(assert (= (and d!78255 (not res!300026)) b!497536))

(assert (= (and b!497536 c!59030) b!497535))

(assert (= (and b!497536 (not c!59030)) b!497534))

(assert (= (and b!497535 res!300027) b!497537))

(assert (= (or b!497537 b!497534) bm!31430))

(declare-fun m!478971 () Bool)

(assert (=> bm!31430 m!478971))

(assert (=> b!497535 m!478883))

(declare-fun m!478973 () Bool)

(assert (=> b!497535 m!478973))

(declare-fun m!478975 () Bool)

(assert (=> b!497535 m!478975))

(assert (=> b!497535 m!478883))

(assert (=> b!497535 m!478887))

(assert (=> b!497536 m!478883))

(assert (=> b!497536 m!478883))

(assert (=> b!497536 m!478889))

(assert (=> b!497462 d!78255))

(declare-fun b!497571 () Bool)

(declare-fun e!291647 () Bool)

(declare-fun lt!225347 () SeekEntryResult!3928)

(assert (=> b!497571 (= e!291647 (bvsge (x!46967 lt!225347) #b01111111111111111111111111111110))))

(declare-fun b!497573 () Bool)

(declare-fun e!291645 () SeekEntryResult!3928)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!497573 (= e!291645 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!225299 #b00000000000000000000000000000000 mask!3524) (select (arr!15454 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!497574 () Bool)

(assert (=> b!497574 (and (bvsge (index!17893 lt!225347) #b00000000000000000000000000000000) (bvslt (index!17893 lt!225347) (size!15818 a!3235)))))

(declare-fun res!300044 () Bool)

(assert (=> b!497574 (= res!300044 (= (select (arr!15454 a!3235) (index!17893 lt!225347)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!291649 () Bool)

(assert (=> b!497574 (=> res!300044 e!291649)))

(declare-fun b!497575 () Bool)

(assert (=> b!497575 (and (bvsge (index!17893 lt!225347) #b00000000000000000000000000000000) (bvslt (index!17893 lt!225347) (size!15818 a!3235)))))

(assert (=> b!497575 (= e!291649 (= (select (arr!15454 a!3235) (index!17893 lt!225347)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!497576 () Bool)

(assert (=> b!497576 (= e!291645 (Intermediate!3928 false lt!225299 #b00000000000000000000000000000000))))

(declare-fun b!497577 () Bool)

(declare-fun e!291646 () SeekEntryResult!3928)

(assert (=> b!497577 (= e!291646 e!291645)))

(declare-fun c!59041 () Bool)

(declare-fun lt!225346 () (_ BitVec 64))

(assert (=> b!497577 (= c!59041 (or (= lt!225346 (select (arr!15454 a!3235) j!176)) (= (bvadd lt!225346 lt!225346) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!497578 () Bool)

(declare-fun e!291648 () Bool)

(assert (=> b!497578 (= e!291647 e!291648)))

(declare-fun res!300043 () Bool)

(assert (=> b!497578 (= res!300043 (and ((_ is Intermediate!3928) lt!225347) (not (undefined!4740 lt!225347)) (bvslt (x!46967 lt!225347) #b01111111111111111111111111111110) (bvsge (x!46967 lt!225347) #b00000000000000000000000000000000) (bvsge (x!46967 lt!225347) #b00000000000000000000000000000000)))))

(assert (=> b!497578 (=> (not res!300043) (not e!291648))))

(declare-fun b!497579 () Bool)

(assert (=> b!497579 (= e!291646 (Intermediate!3928 true lt!225299 #b00000000000000000000000000000000))))

(declare-fun b!497572 () Bool)

(assert (=> b!497572 (and (bvsge (index!17893 lt!225347) #b00000000000000000000000000000000) (bvslt (index!17893 lt!225347) (size!15818 a!3235)))))

(declare-fun res!300045 () Bool)

(assert (=> b!497572 (= res!300045 (= (select (arr!15454 a!3235) (index!17893 lt!225347)) (select (arr!15454 a!3235) j!176)))))

(assert (=> b!497572 (=> res!300045 e!291649)))

(assert (=> b!497572 (= e!291648 e!291649)))

(declare-fun d!78259 () Bool)

(assert (=> d!78259 e!291647))

(declare-fun c!59040 () Bool)

(assert (=> d!78259 (= c!59040 (and ((_ is Intermediate!3928) lt!225347) (undefined!4740 lt!225347)))))

(assert (=> d!78259 (= lt!225347 e!291646)))

(declare-fun c!59042 () Bool)

(assert (=> d!78259 (= c!59042 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!78259 (= lt!225346 (select (arr!15454 a!3235) lt!225299))))

(assert (=> d!78259 (validMask!0 mask!3524)))

(assert (=> d!78259 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225299 (select (arr!15454 a!3235) j!176) a!3235 mask!3524) lt!225347)))

(assert (= (and d!78259 c!59042) b!497579))

(assert (= (and d!78259 (not c!59042)) b!497577))

(assert (= (and b!497577 c!59041) b!497576))

(assert (= (and b!497577 (not c!59041)) b!497573))

(assert (= (and d!78259 c!59040) b!497571))

(assert (= (and d!78259 (not c!59040)) b!497578))

(assert (= (and b!497578 res!300043) b!497572))

(assert (= (and b!497572 (not res!300045)) b!497574))

(assert (= (and b!497574 (not res!300044)) b!497575))

(declare-fun m!478985 () Bool)

(assert (=> b!497574 m!478985))

(assert (=> b!497572 m!478985))

(declare-fun m!478987 () Bool)

(assert (=> d!78259 m!478987))

(assert (=> d!78259 m!478893))

(declare-fun m!478989 () Bool)

(assert (=> b!497573 m!478989))

(assert (=> b!497573 m!478989))

(assert (=> b!497573 m!478883))

(declare-fun m!478991 () Bool)

(assert (=> b!497573 m!478991))

(assert (=> b!497575 m!478985))

(assert (=> b!497462 d!78259))

(declare-fun d!78267 () Bool)

(assert (=> d!78267 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!225356 () Unit!14802)

(declare-fun choose!38 (array!32148 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14802)

(assert (=> d!78267 (= lt!225356 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!78267 (validMask!0 mask!3524)))

(assert (=> d!78267 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!225356)))

(declare-fun bs!15849 () Bool)

(assert (= bs!15849 d!78267))

(assert (=> bs!15849 m!478909))

(declare-fun m!478993 () Bool)

(assert (=> bs!15849 m!478993))

(assert (=> bs!15849 m!478893))

(assert (=> b!497462 d!78267))

(declare-fun d!78269 () Bool)

(declare-fun lt!225358 () (_ BitVec 32))

(declare-fun lt!225357 () (_ BitVec 32))

(assert (=> d!78269 (= lt!225358 (bvmul (bvxor lt!225357 (bvlshr lt!225357 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!78269 (= lt!225357 ((_ extract 31 0) (bvand (bvxor lt!225295 (bvlshr lt!225295 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!78269 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!300021 (let ((h!10534 ((_ extract 31 0) (bvand (bvxor lt!225295 (bvlshr lt!225295 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!46969 (bvmul (bvxor h!10534 (bvlshr h!10534 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!46969 (bvlshr x!46969 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!300021 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!300021 #b00000000000000000000000000000000))))))

(assert (=> d!78269 (= (toIndex!0 lt!225295 mask!3524) (bvand (bvxor lt!225358 (bvlshr lt!225358 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!497462 d!78269))

(declare-fun b!497592 () Bool)

(declare-fun e!291658 () Bool)

(declare-fun lt!225360 () SeekEntryResult!3928)

(assert (=> b!497592 (= e!291658 (bvsge (x!46967 lt!225360) #b01111111111111111111111111111110))))

(declare-fun e!291656 () SeekEntryResult!3928)

(declare-fun b!497594 () Bool)

(assert (=> b!497594 (= e!291656 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!225297 #b00000000000000000000000000000000 mask!3524) lt!225295 lt!225294 mask!3524))))

(declare-fun b!497595 () Bool)

(assert (=> b!497595 (and (bvsge (index!17893 lt!225360) #b00000000000000000000000000000000) (bvslt (index!17893 lt!225360) (size!15818 lt!225294)))))

(declare-fun res!300047 () Bool)

(assert (=> b!497595 (= res!300047 (= (select (arr!15454 lt!225294) (index!17893 lt!225360)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!291660 () Bool)

(assert (=> b!497595 (=> res!300047 e!291660)))

(declare-fun b!497596 () Bool)

(assert (=> b!497596 (and (bvsge (index!17893 lt!225360) #b00000000000000000000000000000000) (bvslt (index!17893 lt!225360) (size!15818 lt!225294)))))

(assert (=> b!497596 (= e!291660 (= (select (arr!15454 lt!225294) (index!17893 lt!225360)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!497597 () Bool)

(assert (=> b!497597 (= e!291656 (Intermediate!3928 false lt!225297 #b00000000000000000000000000000000))))

(declare-fun b!497598 () Bool)

(declare-fun e!291657 () SeekEntryResult!3928)

(assert (=> b!497598 (= e!291657 e!291656)))

(declare-fun c!59050 () Bool)

(declare-fun lt!225359 () (_ BitVec 64))

(assert (=> b!497598 (= c!59050 (or (= lt!225359 lt!225295) (= (bvadd lt!225359 lt!225359) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!497599 () Bool)

(declare-fun e!291659 () Bool)

(assert (=> b!497599 (= e!291658 e!291659)))

(declare-fun res!300046 () Bool)

(assert (=> b!497599 (= res!300046 (and ((_ is Intermediate!3928) lt!225360) (not (undefined!4740 lt!225360)) (bvslt (x!46967 lt!225360) #b01111111111111111111111111111110) (bvsge (x!46967 lt!225360) #b00000000000000000000000000000000) (bvsge (x!46967 lt!225360) #b00000000000000000000000000000000)))))

(assert (=> b!497599 (=> (not res!300046) (not e!291659))))

(declare-fun b!497600 () Bool)

(assert (=> b!497600 (= e!291657 (Intermediate!3928 true lt!225297 #b00000000000000000000000000000000))))

(declare-fun b!497593 () Bool)

(assert (=> b!497593 (and (bvsge (index!17893 lt!225360) #b00000000000000000000000000000000) (bvslt (index!17893 lt!225360) (size!15818 lt!225294)))))

(declare-fun res!300048 () Bool)

(assert (=> b!497593 (= res!300048 (= (select (arr!15454 lt!225294) (index!17893 lt!225360)) lt!225295))))

(assert (=> b!497593 (=> res!300048 e!291660)))

(assert (=> b!497593 (= e!291659 e!291660)))

(declare-fun d!78271 () Bool)

(assert (=> d!78271 e!291658))

(declare-fun c!59049 () Bool)

(assert (=> d!78271 (= c!59049 (and ((_ is Intermediate!3928) lt!225360) (undefined!4740 lt!225360)))))

(assert (=> d!78271 (= lt!225360 e!291657)))

(declare-fun c!59051 () Bool)

(assert (=> d!78271 (= c!59051 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!78271 (= lt!225359 (select (arr!15454 lt!225294) lt!225297))))

(assert (=> d!78271 (validMask!0 mask!3524)))

(assert (=> d!78271 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225297 lt!225295 lt!225294 mask!3524) lt!225360)))

(assert (= (and d!78271 c!59051) b!497600))

(assert (= (and d!78271 (not c!59051)) b!497598))

(assert (= (and b!497598 c!59050) b!497597))

(assert (= (and b!497598 (not c!59050)) b!497594))

(assert (= (and d!78271 c!59049) b!497592))

(assert (= (and d!78271 (not c!59049)) b!497599))

(assert (= (and b!497599 res!300046) b!497593))

(assert (= (and b!497593 (not res!300048)) b!497595))

(assert (= (and b!497595 (not res!300047)) b!497596))

(declare-fun m!478995 () Bool)

(assert (=> b!497595 m!478995))

(assert (=> b!497593 m!478995))

(declare-fun m!478997 () Bool)

(assert (=> d!78271 m!478997))

(assert (=> d!78271 m!478893))

(declare-fun m!478999 () Bool)

(assert (=> b!497594 m!478999))

(assert (=> b!497594 m!478999))

(declare-fun m!479001 () Bool)

(assert (=> b!497594 m!479001))

(assert (=> b!497596 m!478995))

(assert (=> b!497462 d!78271))

(declare-fun b!497664 () Bool)

(declare-fun e!291702 () SeekEntryResult!3928)

(declare-fun lt!225394 () SeekEntryResult!3928)

(assert (=> b!497664 (= e!291702 (Found!3928 (index!17893 lt!225394)))))

(declare-fun b!497665 () Bool)

(declare-fun e!291700 () SeekEntryResult!3928)

(assert (=> b!497665 (= e!291700 Undefined!3928)))

(declare-fun d!78273 () Bool)

(declare-fun lt!225396 () SeekEntryResult!3928)

(assert (=> d!78273 (and (or ((_ is Undefined!3928) lt!225396) (not ((_ is Found!3928) lt!225396)) (and (bvsge (index!17892 lt!225396) #b00000000000000000000000000000000) (bvslt (index!17892 lt!225396) (size!15818 a!3235)))) (or ((_ is Undefined!3928) lt!225396) ((_ is Found!3928) lt!225396) (not ((_ is MissingZero!3928) lt!225396)) (and (bvsge (index!17891 lt!225396) #b00000000000000000000000000000000) (bvslt (index!17891 lt!225396) (size!15818 a!3235)))) (or ((_ is Undefined!3928) lt!225396) ((_ is Found!3928) lt!225396) ((_ is MissingZero!3928) lt!225396) (not ((_ is MissingVacant!3928) lt!225396)) (and (bvsge (index!17894 lt!225396) #b00000000000000000000000000000000) (bvslt (index!17894 lt!225396) (size!15818 a!3235)))) (or ((_ is Undefined!3928) lt!225396) (ite ((_ is Found!3928) lt!225396) (= (select (arr!15454 a!3235) (index!17892 lt!225396)) (select (arr!15454 a!3235) j!176)) (ite ((_ is MissingZero!3928) lt!225396) (= (select (arr!15454 a!3235) (index!17891 lt!225396)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3928) lt!225396) (= (select (arr!15454 a!3235) (index!17894 lt!225396)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!78273 (= lt!225396 e!291700)))

(declare-fun c!59078 () Bool)

(assert (=> d!78273 (= c!59078 (and ((_ is Intermediate!3928) lt!225394) (undefined!4740 lt!225394)))))

(assert (=> d!78273 (= lt!225394 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15454 a!3235) j!176) mask!3524) (select (arr!15454 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!78273 (validMask!0 mask!3524)))

(assert (=> d!78273 (= (seekEntryOrOpen!0 (select (arr!15454 a!3235) j!176) a!3235 mask!3524) lt!225396)))

(declare-fun e!291701 () SeekEntryResult!3928)

(declare-fun b!497666 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32148 (_ BitVec 32)) SeekEntryResult!3928)

(assert (=> b!497666 (= e!291701 (seekKeyOrZeroReturnVacant!0 (x!46967 lt!225394) (index!17893 lt!225394) (index!17893 lt!225394) (select (arr!15454 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!497667 () Bool)

(assert (=> b!497667 (= e!291700 e!291702)))

(declare-fun lt!225395 () (_ BitVec 64))

(assert (=> b!497667 (= lt!225395 (select (arr!15454 a!3235) (index!17893 lt!225394)))))

(declare-fun c!59077 () Bool)

(assert (=> b!497667 (= c!59077 (= lt!225395 (select (arr!15454 a!3235) j!176)))))

(declare-fun b!497668 () Bool)

(assert (=> b!497668 (= e!291701 (MissingZero!3928 (index!17893 lt!225394)))))

(declare-fun b!497669 () Bool)

(declare-fun c!59076 () Bool)

(assert (=> b!497669 (= c!59076 (= lt!225395 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!497669 (= e!291702 e!291701)))

(assert (= (and d!78273 c!59078) b!497665))

(assert (= (and d!78273 (not c!59078)) b!497667))

(assert (= (and b!497667 c!59077) b!497664))

(assert (= (and b!497667 (not c!59077)) b!497669))

(assert (= (and b!497669 c!59076) b!497668))

(assert (= (and b!497669 (not c!59076)) b!497666))

(declare-fun m!479055 () Bool)

(assert (=> d!78273 m!479055))

(declare-fun m!479057 () Bool)

(assert (=> d!78273 m!479057))

(assert (=> d!78273 m!478883))

(assert (=> d!78273 m!478907))

(assert (=> d!78273 m!478907))

(assert (=> d!78273 m!478883))

(declare-fun m!479059 () Bool)

(assert (=> d!78273 m!479059))

(declare-fun m!479061 () Bool)

(assert (=> d!78273 m!479061))

(assert (=> d!78273 m!478893))

(assert (=> b!497666 m!478883))

(declare-fun m!479063 () Bool)

(assert (=> b!497666 m!479063))

(declare-fun m!479065 () Bool)

(assert (=> b!497667 m!479065))

(assert (=> b!497456 d!78273))

(declare-fun d!78293 () Bool)

(assert (=> d!78293 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!45300 d!78293))

(declare-fun d!78299 () Bool)

(assert (=> d!78299 (= (array_inv!11228 a!3235) (bvsge (size!15818 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!45300 d!78299))

(declare-fun d!78305 () Bool)

(assert (=> d!78305 (= (validKeyInArray!0 (select (arr!15454 a!3235) j!176)) (and (not (= (select (arr!15454 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15454 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!497455 d!78305))

(declare-fun b!497670 () Bool)

(declare-fun e!291705 () SeekEntryResult!3928)

(declare-fun lt!225405 () SeekEntryResult!3928)

(assert (=> b!497670 (= e!291705 (Found!3928 (index!17893 lt!225405)))))

(declare-fun b!497671 () Bool)

(declare-fun e!291703 () SeekEntryResult!3928)

(assert (=> b!497671 (= e!291703 Undefined!3928)))

(declare-fun d!78307 () Bool)

(declare-fun lt!225407 () SeekEntryResult!3928)

(assert (=> d!78307 (and (or ((_ is Undefined!3928) lt!225407) (not ((_ is Found!3928) lt!225407)) (and (bvsge (index!17892 lt!225407) #b00000000000000000000000000000000) (bvslt (index!17892 lt!225407) (size!15818 a!3235)))) (or ((_ is Undefined!3928) lt!225407) ((_ is Found!3928) lt!225407) (not ((_ is MissingZero!3928) lt!225407)) (and (bvsge (index!17891 lt!225407) #b00000000000000000000000000000000) (bvslt (index!17891 lt!225407) (size!15818 a!3235)))) (or ((_ is Undefined!3928) lt!225407) ((_ is Found!3928) lt!225407) ((_ is MissingZero!3928) lt!225407) (not ((_ is MissingVacant!3928) lt!225407)) (and (bvsge (index!17894 lt!225407) #b00000000000000000000000000000000) (bvslt (index!17894 lt!225407) (size!15818 a!3235)))) (or ((_ is Undefined!3928) lt!225407) (ite ((_ is Found!3928) lt!225407) (= (select (arr!15454 a!3235) (index!17892 lt!225407)) k0!2280) (ite ((_ is MissingZero!3928) lt!225407) (= (select (arr!15454 a!3235) (index!17891 lt!225407)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3928) lt!225407) (= (select (arr!15454 a!3235) (index!17894 lt!225407)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!78307 (= lt!225407 e!291703)))

(declare-fun c!59081 () Bool)

(assert (=> d!78307 (= c!59081 (and ((_ is Intermediate!3928) lt!225405) (undefined!4740 lt!225405)))))

(assert (=> d!78307 (= lt!225405 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2280 mask!3524) k0!2280 a!3235 mask!3524))))

(assert (=> d!78307 (validMask!0 mask!3524)))

(assert (=> d!78307 (= (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524) lt!225407)))

(declare-fun b!497672 () Bool)

(declare-fun e!291704 () SeekEntryResult!3928)

(assert (=> b!497672 (= e!291704 (seekKeyOrZeroReturnVacant!0 (x!46967 lt!225405) (index!17893 lt!225405) (index!17893 lt!225405) k0!2280 a!3235 mask!3524))))

(declare-fun b!497673 () Bool)

(assert (=> b!497673 (= e!291703 e!291705)))

(declare-fun lt!225406 () (_ BitVec 64))

(assert (=> b!497673 (= lt!225406 (select (arr!15454 a!3235) (index!17893 lt!225405)))))

(declare-fun c!59080 () Bool)

(assert (=> b!497673 (= c!59080 (= lt!225406 k0!2280))))

(declare-fun b!497674 () Bool)

(assert (=> b!497674 (= e!291704 (MissingZero!3928 (index!17893 lt!225405)))))

(declare-fun b!497675 () Bool)

(declare-fun c!59079 () Bool)

(assert (=> b!497675 (= c!59079 (= lt!225406 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!497675 (= e!291705 e!291704)))

(assert (= (and d!78307 c!59081) b!497671))

(assert (= (and d!78307 (not c!59081)) b!497673))

(assert (= (and b!497673 c!59080) b!497670))

(assert (= (and b!497673 (not c!59080)) b!497675))

(assert (= (and b!497675 c!59079) b!497674))

(assert (= (and b!497675 (not c!59079)) b!497672))

(declare-fun m!479067 () Bool)

(assert (=> d!78307 m!479067))

(declare-fun m!479069 () Bool)

(assert (=> d!78307 m!479069))

(declare-fun m!479071 () Bool)

(assert (=> d!78307 m!479071))

(assert (=> d!78307 m!479071))

(declare-fun m!479073 () Bool)

(assert (=> d!78307 m!479073))

(declare-fun m!479075 () Bool)

(assert (=> d!78307 m!479075))

(assert (=> d!78307 m!478893))

(declare-fun m!479077 () Bool)

(assert (=> b!497672 m!479077))

(declare-fun m!479079 () Bool)

(assert (=> b!497673 m!479079))

(assert (=> b!497466 d!78307))

(declare-fun d!78309 () Bool)

(declare-fun e!291723 () Bool)

(assert (=> d!78309 e!291723))

(declare-fun res!300076 () Bool)

(assert (=> d!78309 (=> (not res!300076) (not e!291723))))

(assert (=> d!78309 (= res!300076 (and (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!15818 a!3235)) (and (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15818 a!3235)))) (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!15818 a!3235)) (and (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15818 a!3235)))) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15818 a!3235))))))

(declare-fun lt!225416 () Unit!14802)

(declare-fun choose!47 (array!32148 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14802)

(assert (=> d!78309 (= lt!225416 (choose!47 a!3235 i!1204 k0!2280 j!176 lt!225299 #b00000000000000000000000000000000 (index!17893 lt!225293) (x!46967 lt!225293) mask!3524))))

(assert (=> d!78309 (validMask!0 mask!3524)))

(assert (=> d!78309 (= (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!225299 #b00000000000000000000000000000000 (index!17893 lt!225293) (x!46967 lt!225293) mask!3524) lt!225416)))

(declare-fun b!497705 () Bool)

(assert (=> b!497705 (= e!291723 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225299 (select (store (arr!15454 a!3235) i!1204 k0!2280) j!176) (array!32149 (store (arr!15454 a!3235) i!1204 k0!2280) (size!15818 a!3235)) mask!3524) (Intermediate!3928 false (index!17893 lt!225293) (x!46967 lt!225293))))))

(assert (= (and d!78309 res!300076) b!497705))

(declare-fun m!479089 () Bool)

(assert (=> d!78309 m!479089))

(assert (=> d!78309 m!478893))

(assert (=> b!497705 m!478899))

(assert (=> b!497705 m!478903))

(assert (=> b!497705 m!478903))

(declare-fun m!479091 () Bool)

(assert (=> b!497705 m!479091))

(assert (=> b!497459 d!78309))

(declare-fun b!497712 () Bool)

(declare-fun e!291730 () Bool)

(declare-fun lt!225418 () SeekEntryResult!3928)

(assert (=> b!497712 (= e!291730 (bvsge (x!46967 lt!225418) #b01111111111111111111111111111110))))

(declare-fun e!291728 () SeekEntryResult!3928)

(declare-fun b!497714 () Bool)

(assert (=> b!497714 (= e!291728 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!225299 #b00000000000000000000000000000000 mask!3524) lt!225295 lt!225294 mask!3524))))

(declare-fun b!497715 () Bool)

(assert (=> b!497715 (and (bvsge (index!17893 lt!225418) #b00000000000000000000000000000000) (bvslt (index!17893 lt!225418) (size!15818 lt!225294)))))

(declare-fun res!300080 () Bool)

(assert (=> b!497715 (= res!300080 (= (select (arr!15454 lt!225294) (index!17893 lt!225418)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!291732 () Bool)

(assert (=> b!497715 (=> res!300080 e!291732)))

(declare-fun b!497716 () Bool)

(assert (=> b!497716 (and (bvsge (index!17893 lt!225418) #b00000000000000000000000000000000) (bvslt (index!17893 lt!225418) (size!15818 lt!225294)))))

(assert (=> b!497716 (= e!291732 (= (select (arr!15454 lt!225294) (index!17893 lt!225418)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!497717 () Bool)

(assert (=> b!497717 (= e!291728 (Intermediate!3928 false lt!225299 #b00000000000000000000000000000000))))

(declare-fun b!497718 () Bool)

(declare-fun e!291729 () SeekEntryResult!3928)

(assert (=> b!497718 (= e!291729 e!291728)))

(declare-fun c!59094 () Bool)

(declare-fun lt!225417 () (_ BitVec 64))

(assert (=> b!497718 (= c!59094 (or (= lt!225417 lt!225295) (= (bvadd lt!225417 lt!225417) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!497719 () Bool)

(declare-fun e!291731 () Bool)

(assert (=> b!497719 (= e!291730 e!291731)))

(declare-fun res!300079 () Bool)

(assert (=> b!497719 (= res!300079 (and ((_ is Intermediate!3928) lt!225418) (not (undefined!4740 lt!225418)) (bvslt (x!46967 lt!225418) #b01111111111111111111111111111110) (bvsge (x!46967 lt!225418) #b00000000000000000000000000000000) (bvsge (x!46967 lt!225418) #b00000000000000000000000000000000)))))

(assert (=> b!497719 (=> (not res!300079) (not e!291731))))

(declare-fun b!497720 () Bool)

(assert (=> b!497720 (= e!291729 (Intermediate!3928 true lt!225299 #b00000000000000000000000000000000))))

(declare-fun b!497713 () Bool)

(assert (=> b!497713 (and (bvsge (index!17893 lt!225418) #b00000000000000000000000000000000) (bvslt (index!17893 lt!225418) (size!15818 lt!225294)))))

(declare-fun res!300081 () Bool)

(assert (=> b!497713 (= res!300081 (= (select (arr!15454 lt!225294) (index!17893 lt!225418)) lt!225295))))

(assert (=> b!497713 (=> res!300081 e!291732)))

(assert (=> b!497713 (= e!291731 e!291732)))

(declare-fun d!78313 () Bool)

(assert (=> d!78313 e!291730))

(declare-fun c!59093 () Bool)

(assert (=> d!78313 (= c!59093 (and ((_ is Intermediate!3928) lt!225418) (undefined!4740 lt!225418)))))

(assert (=> d!78313 (= lt!225418 e!291729)))

(declare-fun c!59095 () Bool)

(assert (=> d!78313 (= c!59095 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!78313 (= lt!225417 (select (arr!15454 lt!225294) lt!225299))))

(assert (=> d!78313 (validMask!0 mask!3524)))

(assert (=> d!78313 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225299 lt!225295 lt!225294 mask!3524) lt!225418)))

(assert (= (and d!78313 c!59095) b!497720))

(assert (= (and d!78313 (not c!59095)) b!497718))

(assert (= (and b!497718 c!59094) b!497717))

(assert (= (and b!497718 (not c!59094)) b!497714))

(assert (= (and d!78313 c!59093) b!497712))

(assert (= (and d!78313 (not c!59093)) b!497719))

(assert (= (and b!497719 res!300079) b!497713))

(assert (= (and b!497713 (not res!300081)) b!497715))

(assert (= (and b!497715 (not res!300080)) b!497716))

(declare-fun m!479093 () Bool)

(assert (=> b!497715 m!479093))

(assert (=> b!497713 m!479093))

(declare-fun m!479095 () Bool)

(assert (=> d!78313 m!479095))

(assert (=> d!78313 m!478893))

(assert (=> b!497714 m!478989))

(assert (=> b!497714 m!478989))

(declare-fun m!479097 () Bool)

(assert (=> b!497714 m!479097))

(assert (=> b!497716 m!479093))

(assert (=> b!497459 d!78313))

(declare-fun bm!31439 () Bool)

(declare-fun call!31442 () Bool)

(assert (=> bm!31439 (= call!31442 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!497731 () Bool)

(declare-fun e!291740 () Bool)

(assert (=> b!497731 (= e!291740 call!31442)))

(declare-fun b!497732 () Bool)

(declare-fun e!291739 () Bool)

(assert (=> b!497732 (= e!291740 e!291739)))

(declare-fun lt!225429 () (_ BitVec 64))

(assert (=> b!497732 (= lt!225429 (select (arr!15454 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!225431 () Unit!14802)

(assert (=> b!497732 (= lt!225431 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!225429 #b00000000000000000000000000000000))))

(assert (=> b!497732 (arrayContainsKey!0 a!3235 lt!225429 #b00000000000000000000000000000000)))

(declare-fun lt!225430 () Unit!14802)

(assert (=> b!497732 (= lt!225430 lt!225431)))

(declare-fun res!300085 () Bool)

(assert (=> b!497732 (= res!300085 (= (seekEntryOrOpen!0 (select (arr!15454 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!3928 #b00000000000000000000000000000000)))))

(assert (=> b!497732 (=> (not res!300085) (not e!291739))))

(declare-fun d!78315 () Bool)

(declare-fun res!300084 () Bool)

(declare-fun e!291741 () Bool)

(assert (=> d!78315 (=> res!300084 e!291741)))

(assert (=> d!78315 (= res!300084 (bvsge #b00000000000000000000000000000000 (size!15818 a!3235)))))

(assert (=> d!78315 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!291741)))

(declare-fun b!497733 () Bool)

(assert (=> b!497733 (= e!291741 e!291740)))

(declare-fun c!59100 () Bool)

(assert (=> b!497733 (= c!59100 (validKeyInArray!0 (select (arr!15454 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!497734 () Bool)

(assert (=> b!497734 (= e!291739 call!31442)))

(assert (= (and d!78315 (not res!300084)) b!497733))

(assert (= (and b!497733 c!59100) b!497732))

(assert (= (and b!497733 (not c!59100)) b!497731))

(assert (= (and b!497732 res!300085) b!497734))

(assert (= (or b!497734 b!497731) bm!31439))

(declare-fun m!479099 () Bool)

(assert (=> bm!31439 m!479099))

(assert (=> b!497732 m!478963))

(declare-fun m!479101 () Bool)

(assert (=> b!497732 m!479101))

(declare-fun m!479103 () Bool)

(assert (=> b!497732 m!479103))

(assert (=> b!497732 m!478963))

(declare-fun m!479105 () Bool)

(assert (=> b!497732 m!479105))

(assert (=> b!497733 m!478963))

(assert (=> b!497733 m!478963))

(assert (=> b!497733 m!478965))

(assert (=> b!497464 d!78315))

(declare-fun d!78317 () Bool)

(declare-fun res!300099 () Bool)

(declare-fun e!291755 () Bool)

(assert (=> d!78317 (=> res!300099 e!291755)))

(assert (=> d!78317 (= res!300099 (= (select (arr!15454 a!3235) #b00000000000000000000000000000000) k0!2280))))

(assert (=> d!78317 (= (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000) e!291755)))

(declare-fun b!497753 () Bool)

(declare-fun e!291756 () Bool)

(assert (=> b!497753 (= e!291755 e!291756)))

(declare-fun res!300100 () Bool)

(assert (=> b!497753 (=> (not res!300100) (not e!291756))))

(assert (=> b!497753 (= res!300100 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!15818 a!3235)))))

(declare-fun b!497754 () Bool)

(assert (=> b!497754 (= e!291756 (arrayContainsKey!0 a!3235 k0!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!78317 (not res!300099)) b!497753))

(assert (= (and b!497753 res!300100) b!497754))

(assert (=> d!78317 m!478963))

(declare-fun m!479119 () Bool)

(assert (=> b!497754 m!479119))

(assert (=> b!497463 d!78317))

(declare-fun d!78321 () Bool)

(assert (=> d!78321 (= (validKeyInArray!0 k0!2280) (and (not (= k0!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!497457 d!78321))

(check-sat (not d!78313) (not bm!31430) (not b!497714) (not d!78267) (not b!497536) (not b!497732) (not d!78259) (not d!78271) (not b!497754) (not b!497525) (not b!497521) (not d!78307) (not b!497666) (not b!497535) (not b!497672) (not d!78273) (not d!78309) (not b!497573) (not b!497733) (not b!497705) (not b!497594) (not bm!31427) (not bm!31439) (not b!497522))
(check-sat)
