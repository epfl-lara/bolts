; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47454 () Bool)

(assert start!47454)

(declare-fun b!522097 () Bool)

(declare-fun res!319925 () Bool)

(declare-fun e!304539 () Bool)

(assert (=> b!522097 (=> (not res!319925) (not e!304539))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!522097 (= res!319925 (validKeyInArray!0 k0!2280))))

(declare-fun b!522098 () Bool)

(declare-fun res!319923 () Bool)

(declare-fun e!304536 () Bool)

(assert (=> b!522098 (=> res!319923 e!304536)))

(declare-datatypes ((SeekEntryResult!4447 0))(
  ( (MissingZero!4447 (index!19991 (_ BitVec 32))) (Found!4447 (index!19992 (_ BitVec 32))) (Intermediate!4447 (undefined!5259 Bool) (index!19993 (_ BitVec 32)) (x!48996 (_ BitVec 32))) (Undefined!4447) (MissingVacant!4447 (index!19994 (_ BitVec 32))) )
))
(declare-fun lt!239472 () SeekEntryResult!4447)

(get-info :version)

(assert (=> b!522098 (= res!319923 (or (undefined!5259 lt!239472) (not ((_ is Intermediate!4447) lt!239472))))))

(declare-fun b!522100 () Bool)

(declare-fun res!319931 () Bool)

(declare-fun e!304534 () Bool)

(assert (=> b!522100 (=> (not res!319931) (not e!304534))))

(declare-datatypes ((array!33240 0))(
  ( (array!33241 (arr!15973 (Array (_ BitVec 32) (_ BitVec 64))) (size!16337 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33240)

(declare-datatypes ((List!10184 0))(
  ( (Nil!10181) (Cons!10180 (h!11102 (_ BitVec 64)) (t!16420 List!10184)) )
))
(declare-fun arrayNoDuplicates!0 (array!33240 (_ BitVec 32) List!10184) Bool)

(assert (=> b!522100 (= res!319931 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10181))))

(declare-fun b!522101 () Bool)

(declare-datatypes ((Unit!16254 0))(
  ( (Unit!16255) )
))
(declare-fun e!304537 () Unit!16254)

(declare-fun Unit!16256 () Unit!16254)

(assert (=> b!522101 (= e!304537 Unit!16256)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!239470 () (_ BitVec 32))

(declare-fun lt!239475 () Unit!16254)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33240 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16254)

(assert (=> b!522101 (= lt!239475 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!239470 #b00000000000000000000000000000000 (index!19993 lt!239472) (x!48996 lt!239472) mask!3524))))

(declare-fun lt!239473 () (_ BitVec 64))

(declare-fun lt!239476 () array!33240)

(declare-fun res!319930 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33240 (_ BitVec 32)) SeekEntryResult!4447)

(assert (=> b!522101 (= res!319930 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239470 lt!239473 lt!239476 mask!3524) (Intermediate!4447 false (index!19993 lt!239472) (x!48996 lt!239472))))))

(declare-fun e!304538 () Bool)

(assert (=> b!522101 (=> (not res!319930) (not e!304538))))

(assert (=> b!522101 e!304538))

(declare-fun b!522102 () Bool)

(declare-fun Unit!16257 () Unit!16254)

(assert (=> b!522102 (= e!304537 Unit!16257)))

(declare-fun b!522103 () Bool)

(declare-fun e!304535 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33240 (_ BitVec 32)) SeekEntryResult!4447)

(assert (=> b!522103 (= e!304535 (= (seekEntryOrOpen!0 (select (arr!15973 a!3235) j!176) a!3235 mask!3524) (Found!4447 j!176)))))

(declare-fun b!522104 () Bool)

(declare-fun res!319932 () Bool)

(assert (=> b!522104 (=> (not res!319932) (not e!304539))))

(assert (=> b!522104 (= res!319932 (and (= (size!16337 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16337 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16337 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!522105 () Bool)

(declare-fun res!319928 () Bool)

(assert (=> b!522105 (=> (not res!319928) (not e!304534))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33240 (_ BitVec 32)) Bool)

(assert (=> b!522105 (= res!319928 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!522106 () Bool)

(assert (=> b!522106 (= e!304536 true)))

(assert (=> b!522106 (and (or (= (select (arr!15973 a!3235) (index!19993 lt!239472)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15973 a!3235) (index!19993 lt!239472)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15973 a!3235) (index!19993 lt!239472)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15973 a!3235) (index!19993 lt!239472)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!239469 () Unit!16254)

(assert (=> b!522106 (= lt!239469 e!304537)))

(declare-fun c!61388 () Bool)

(assert (=> b!522106 (= c!61388 (= (select (arr!15973 a!3235) (index!19993 lt!239472)) (select (arr!15973 a!3235) j!176)))))

(assert (=> b!522106 (and (bvslt (x!48996 lt!239472) #b01111111111111111111111111111110) (or (= (select (arr!15973 a!3235) (index!19993 lt!239472)) (select (arr!15973 a!3235) j!176)) (= (select (arr!15973 a!3235) (index!19993 lt!239472)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15973 a!3235) (index!19993 lt!239472)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!522107 () Bool)

(assert (=> b!522107 (= e!304539 e!304534)))

(declare-fun res!319933 () Bool)

(assert (=> b!522107 (=> (not res!319933) (not e!304534))))

(declare-fun lt!239474 () SeekEntryResult!4447)

(assert (=> b!522107 (= res!319933 (or (= lt!239474 (MissingZero!4447 i!1204)) (= lt!239474 (MissingVacant!4447 i!1204))))))

(assert (=> b!522107 (= lt!239474 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!522108 () Bool)

(declare-fun res!319924 () Bool)

(assert (=> b!522108 (=> (not res!319924) (not e!304539))))

(declare-fun arrayContainsKey!0 (array!33240 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!522108 (= res!319924 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun res!319926 () Bool)

(assert (=> start!47454 (=> (not res!319926) (not e!304539))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47454 (= res!319926 (validMask!0 mask!3524))))

(assert (=> start!47454 e!304539))

(assert (=> start!47454 true))

(declare-fun array_inv!11747 (array!33240) Bool)

(assert (=> start!47454 (array_inv!11747 a!3235)))

(declare-fun b!522099 () Bool)

(assert (=> b!522099 (= e!304538 false)))

(declare-fun b!522109 () Bool)

(declare-fun res!319934 () Bool)

(assert (=> b!522109 (=> (not res!319934) (not e!304539))))

(assert (=> b!522109 (= res!319934 (validKeyInArray!0 (select (arr!15973 a!3235) j!176)))))

(declare-fun b!522110 () Bool)

(assert (=> b!522110 (= e!304534 (not e!304536))))

(declare-fun res!319927 () Bool)

(assert (=> b!522110 (=> res!319927 e!304536)))

(declare-fun lt!239477 () (_ BitVec 32))

(assert (=> b!522110 (= res!319927 (= lt!239472 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239477 lt!239473 lt!239476 mask!3524)))))

(assert (=> b!522110 (= lt!239472 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239470 (select (arr!15973 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!522110 (= lt!239477 (toIndex!0 lt!239473 mask!3524))))

(assert (=> b!522110 (= lt!239473 (select (store (arr!15973 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!522110 (= lt!239470 (toIndex!0 (select (arr!15973 a!3235) j!176) mask!3524))))

(assert (=> b!522110 (= lt!239476 (array!33241 (store (arr!15973 a!3235) i!1204 k0!2280) (size!16337 a!3235)))))

(assert (=> b!522110 e!304535))

(declare-fun res!319929 () Bool)

(assert (=> b!522110 (=> (not res!319929) (not e!304535))))

(assert (=> b!522110 (= res!319929 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!239471 () Unit!16254)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33240 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16254)

(assert (=> b!522110 (= lt!239471 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!47454 res!319926) b!522104))

(assert (= (and b!522104 res!319932) b!522109))

(assert (= (and b!522109 res!319934) b!522097))

(assert (= (and b!522097 res!319925) b!522108))

(assert (= (and b!522108 res!319924) b!522107))

(assert (= (and b!522107 res!319933) b!522105))

(assert (= (and b!522105 res!319928) b!522100))

(assert (= (and b!522100 res!319931) b!522110))

(assert (= (and b!522110 res!319929) b!522103))

(assert (= (and b!522110 (not res!319927)) b!522098))

(assert (= (and b!522098 (not res!319923)) b!522106))

(assert (= (and b!522106 c!61388) b!522101))

(assert (= (and b!522106 (not c!61388)) b!522102))

(assert (= (and b!522101 res!319930) b!522099))

(declare-fun m!503047 () Bool)

(assert (=> b!522109 m!503047))

(assert (=> b!522109 m!503047))

(declare-fun m!503049 () Bool)

(assert (=> b!522109 m!503049))

(declare-fun m!503051 () Bool)

(assert (=> b!522101 m!503051))

(declare-fun m!503053 () Bool)

(assert (=> b!522101 m!503053))

(declare-fun m!503055 () Bool)

(assert (=> b!522108 m!503055))

(declare-fun m!503057 () Bool)

(assert (=> b!522107 m!503057))

(declare-fun m!503059 () Bool)

(assert (=> b!522100 m!503059))

(declare-fun m!503061 () Bool)

(assert (=> b!522110 m!503061))

(declare-fun m!503063 () Bool)

(assert (=> b!522110 m!503063))

(declare-fun m!503065 () Bool)

(assert (=> b!522110 m!503065))

(declare-fun m!503067 () Bool)

(assert (=> b!522110 m!503067))

(assert (=> b!522110 m!503047))

(declare-fun m!503069 () Bool)

(assert (=> b!522110 m!503069))

(declare-fun m!503071 () Bool)

(assert (=> b!522110 m!503071))

(assert (=> b!522110 m!503047))

(assert (=> b!522110 m!503047))

(declare-fun m!503073 () Bool)

(assert (=> b!522110 m!503073))

(declare-fun m!503075 () Bool)

(assert (=> b!522110 m!503075))

(declare-fun m!503077 () Bool)

(assert (=> b!522097 m!503077))

(declare-fun m!503079 () Bool)

(assert (=> start!47454 m!503079))

(declare-fun m!503081 () Bool)

(assert (=> start!47454 m!503081))

(declare-fun m!503083 () Bool)

(assert (=> b!522106 m!503083))

(assert (=> b!522106 m!503047))

(assert (=> b!522103 m!503047))

(assert (=> b!522103 m!503047))

(declare-fun m!503085 () Bool)

(assert (=> b!522103 m!503085))

(declare-fun m!503087 () Bool)

(assert (=> b!522105 m!503087))

(check-sat (not b!522105) (not start!47454) (not b!522110) (not b!522100) (not b!522101) (not b!522108) (not b!522097) (not b!522107) (not b!522103) (not b!522109))
(check-sat)
