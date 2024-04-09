; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45650 () Bool)

(assert start!45650)

(declare-fun b!503053 () Bool)

(declare-fun res!304525 () Bool)

(declare-fun e!294619 () Bool)

(assert (=> b!503053 (=> (not res!304525) (not e!294619))))

(declare-datatypes ((array!32366 0))(
  ( (array!32367 (arr!15560 (Array (_ BitVec 32) (_ BitVec 64))) (size!15924 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32366)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32366 (_ BitVec 32)) Bool)

(assert (=> b!503053 (= res!304525 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!503055 () Bool)

(declare-datatypes ((Unit!15226 0))(
  ( (Unit!15227) )
))
(declare-fun e!294614 () Unit!15226)

(declare-fun Unit!15228 () Unit!15226)

(assert (=> b!503055 (= e!294614 Unit!15228)))

(declare-fun b!503056 () Bool)

(declare-fun e!294615 () Bool)

(assert (=> b!503056 (= e!294615 e!294619)))

(declare-fun res!304527 () Bool)

(assert (=> b!503056 (=> (not res!304527) (not e!294619))))

(declare-datatypes ((SeekEntryResult!4034 0))(
  ( (MissingZero!4034 (index!18324 (_ BitVec 32))) (Found!4034 (index!18325 (_ BitVec 32))) (Intermediate!4034 (undefined!4846 Bool) (index!18326 (_ BitVec 32)) (x!47374 (_ BitVec 32))) (Undefined!4034) (MissingVacant!4034 (index!18327 (_ BitVec 32))) )
))
(declare-fun lt!228865 () SeekEntryResult!4034)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!503056 (= res!304527 (or (= lt!228865 (MissingZero!4034 i!1204)) (= lt!228865 (MissingVacant!4034 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32366 (_ BitVec 32)) SeekEntryResult!4034)

(assert (=> b!503056 (= lt!228865 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!503057 () Bool)

(declare-fun e!294622 () Bool)

(assert (=> b!503057 (= e!294622 true)))

(declare-fun lt!228869 () (_ BitVec 64))

(declare-fun lt!228868 () (_ BitVec 32))

(declare-fun lt!228863 () array!32366)

(declare-fun lt!228870 () SeekEntryResult!4034)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32366 (_ BitVec 32)) SeekEntryResult!4034)

(assert (=> b!503057 (= lt!228870 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228868 lt!228869 lt!228863 mask!3524))))

(declare-fun b!503058 () Bool)

(declare-fun res!304532 () Bool)

(declare-fun e!294620 () Bool)

(assert (=> b!503058 (=> res!304532 e!294620)))

(declare-fun lt!228866 () SeekEntryResult!4034)

(assert (=> b!503058 (= res!304532 (or (undefined!4846 lt!228866) (not (is-Intermediate!4034 lt!228866))))))

(declare-fun b!503059 () Bool)

(declare-fun res!304524 () Bool)

(assert (=> b!503059 (=> (not res!304524) (not e!294615))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!503059 (= res!304524 (validKeyInArray!0 (select (arr!15560 a!3235) j!176)))))

(declare-fun b!503060 () Bool)

(declare-fun Unit!15229 () Unit!15226)

(assert (=> b!503060 (= e!294614 Unit!15229)))

(declare-fun lt!228864 () Unit!15226)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32366 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15226)

(assert (=> b!503060 (= lt!228864 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!228868 #b00000000000000000000000000000000 (index!18326 lt!228866) (x!47374 lt!228866) mask!3524))))

(declare-fun res!304536 () Bool)

(assert (=> b!503060 (= res!304536 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228868 lt!228869 lt!228863 mask!3524) (Intermediate!4034 false (index!18326 lt!228866) (x!47374 lt!228866))))))

(declare-fun e!294616 () Bool)

(assert (=> b!503060 (=> (not res!304536) (not e!294616))))

(assert (=> b!503060 e!294616))

(declare-fun b!503054 () Bool)

(assert (=> b!503054 (= e!294616 false)))

(declare-fun res!304533 () Bool)

(assert (=> start!45650 (=> (not res!304533) (not e!294615))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45650 (= res!304533 (validMask!0 mask!3524))))

(assert (=> start!45650 e!294615))

(assert (=> start!45650 true))

(declare-fun array_inv!11334 (array!32366) Bool)

(assert (=> start!45650 (array_inv!11334 a!3235)))

(declare-fun b!503061 () Bool)

(declare-fun e!294617 () Bool)

(assert (=> b!503061 (= e!294617 (= (seekEntryOrOpen!0 (select (arr!15560 a!3235) j!176) a!3235 mask!3524) (Found!4034 j!176)))))

(declare-fun b!503062 () Bool)

(declare-fun res!304538 () Bool)

(assert (=> b!503062 (=> res!304538 e!294622)))

(declare-fun e!294618 () Bool)

(assert (=> b!503062 (= res!304538 e!294618)))

(declare-fun res!304534 () Bool)

(assert (=> b!503062 (=> (not res!304534) (not e!294618))))

(assert (=> b!503062 (= res!304534 (bvsgt #b00000000000000000000000000000000 (x!47374 lt!228866)))))

(declare-fun b!503063 () Bool)

(assert (=> b!503063 (= e!294620 e!294622)))

(declare-fun res!304531 () Bool)

(assert (=> b!503063 (=> res!304531 e!294622)))

(assert (=> b!503063 (= res!304531 (or (bvsgt (x!47374 lt!228866) #b01111111111111111111111111111110) (bvslt lt!228868 #b00000000000000000000000000000000) (bvsge lt!228868 (size!15924 a!3235)) (bvslt (index!18326 lt!228866) #b00000000000000000000000000000000) (bvsge (index!18326 lt!228866) (size!15924 a!3235)) (not (= lt!228866 (Intermediate!4034 false (index!18326 lt!228866) (x!47374 lt!228866))))))))

(assert (=> b!503063 (= (index!18326 lt!228866) i!1204)))

(declare-fun lt!228862 () Unit!15226)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32366 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15226)

(assert (=> b!503063 (= lt!228862 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!228868 #b00000000000000000000000000000000 (index!18326 lt!228866) (x!47374 lt!228866) mask!3524))))

(assert (=> b!503063 (and (or (= (select (arr!15560 a!3235) (index!18326 lt!228866)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15560 a!3235) (index!18326 lt!228866)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15560 a!3235) (index!18326 lt!228866)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15560 a!3235) (index!18326 lt!228866)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!228872 () Unit!15226)

(assert (=> b!503063 (= lt!228872 e!294614)))

(declare-fun c!59543 () Bool)

(assert (=> b!503063 (= c!59543 (= (select (arr!15560 a!3235) (index!18326 lt!228866)) (select (arr!15560 a!3235) j!176)))))

(assert (=> b!503063 (and (bvslt (x!47374 lt!228866) #b01111111111111111111111111111110) (or (= (select (arr!15560 a!3235) (index!18326 lt!228866)) (select (arr!15560 a!3235) j!176)) (= (select (arr!15560 a!3235) (index!18326 lt!228866)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15560 a!3235) (index!18326 lt!228866)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!503064 () Bool)

(declare-fun res!304529 () Bool)

(assert (=> b!503064 (=> (not res!304529) (not e!294615))))

(assert (=> b!503064 (= res!304529 (validKeyInArray!0 k!2280))))

(declare-fun b!503065 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32366 (_ BitVec 32)) SeekEntryResult!4034)

(assert (=> b!503065 (= e!294618 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!228868 (index!18326 lt!228866) (select (arr!15560 a!3235) j!176) a!3235 mask!3524) (Found!4034 j!176))))))

(declare-fun b!503066 () Bool)

(declare-fun res!304537 () Bool)

(assert (=> b!503066 (=> (not res!304537) (not e!294615))))

(assert (=> b!503066 (= res!304537 (and (= (size!15924 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15924 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15924 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!503067 () Bool)

(assert (=> b!503067 (= e!294619 (not e!294620))))

(declare-fun res!304530 () Bool)

(assert (=> b!503067 (=> res!304530 e!294620)))

(declare-fun lt!228867 () (_ BitVec 32))

(assert (=> b!503067 (= res!304530 (= lt!228866 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228867 lt!228869 lt!228863 mask!3524)))))

(assert (=> b!503067 (= lt!228866 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228868 (select (arr!15560 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!503067 (= lt!228867 (toIndex!0 lt!228869 mask!3524))))

(assert (=> b!503067 (= lt!228869 (select (store (arr!15560 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!503067 (= lt!228868 (toIndex!0 (select (arr!15560 a!3235) j!176) mask!3524))))

(assert (=> b!503067 (= lt!228863 (array!32367 (store (arr!15560 a!3235) i!1204 k!2280) (size!15924 a!3235)))))

(assert (=> b!503067 e!294617))

(declare-fun res!304535 () Bool)

(assert (=> b!503067 (=> (not res!304535) (not e!294617))))

(assert (=> b!503067 (= res!304535 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!228871 () Unit!15226)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32366 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15226)

(assert (=> b!503067 (= lt!228871 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!503068 () Bool)

(declare-fun res!304526 () Bool)

(assert (=> b!503068 (=> (not res!304526) (not e!294619))))

(declare-datatypes ((List!9771 0))(
  ( (Nil!9768) (Cons!9767 (h!10644 (_ BitVec 64)) (t!16007 List!9771)) )
))
(declare-fun arrayNoDuplicates!0 (array!32366 (_ BitVec 32) List!9771) Bool)

(assert (=> b!503068 (= res!304526 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9768))))

(declare-fun b!503069 () Bool)

(declare-fun res!304528 () Bool)

(assert (=> b!503069 (=> (not res!304528) (not e!294615))))

(declare-fun arrayContainsKey!0 (array!32366 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!503069 (= res!304528 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!45650 res!304533) b!503066))

(assert (= (and b!503066 res!304537) b!503059))

(assert (= (and b!503059 res!304524) b!503064))

(assert (= (and b!503064 res!304529) b!503069))

(assert (= (and b!503069 res!304528) b!503056))

(assert (= (and b!503056 res!304527) b!503053))

(assert (= (and b!503053 res!304525) b!503068))

(assert (= (and b!503068 res!304526) b!503067))

(assert (= (and b!503067 res!304535) b!503061))

(assert (= (and b!503067 (not res!304530)) b!503058))

(assert (= (and b!503058 (not res!304532)) b!503063))

(assert (= (and b!503063 c!59543) b!503060))

(assert (= (and b!503063 (not c!59543)) b!503055))

(assert (= (and b!503060 res!304536) b!503054))

(assert (= (and b!503063 (not res!304531)) b!503062))

(assert (= (and b!503062 res!304534) b!503065))

(assert (= (and b!503062 (not res!304538)) b!503057))

(declare-fun m!483945 () Bool)

(assert (=> b!503053 m!483945))

(declare-fun m!483947 () Bool)

(assert (=> b!503061 m!483947))

(assert (=> b!503061 m!483947))

(declare-fun m!483949 () Bool)

(assert (=> b!503061 m!483949))

(declare-fun m!483951 () Bool)

(assert (=> b!503067 m!483951))

(declare-fun m!483953 () Bool)

(assert (=> b!503067 m!483953))

(assert (=> b!503067 m!483947))

(declare-fun m!483955 () Bool)

(assert (=> b!503067 m!483955))

(assert (=> b!503067 m!483947))

(declare-fun m!483957 () Bool)

(assert (=> b!503067 m!483957))

(declare-fun m!483959 () Bool)

(assert (=> b!503067 m!483959))

(assert (=> b!503067 m!483947))

(declare-fun m!483961 () Bool)

(assert (=> b!503067 m!483961))

(declare-fun m!483963 () Bool)

(assert (=> b!503067 m!483963))

(declare-fun m!483965 () Bool)

(assert (=> b!503067 m!483965))

(declare-fun m!483967 () Bool)

(assert (=> b!503063 m!483967))

(declare-fun m!483969 () Bool)

(assert (=> b!503063 m!483969))

(assert (=> b!503063 m!483947))

(declare-fun m!483971 () Bool)

(assert (=> start!45650 m!483971))

(declare-fun m!483973 () Bool)

(assert (=> start!45650 m!483973))

(declare-fun m!483975 () Bool)

(assert (=> b!503064 m!483975))

(declare-fun m!483977 () Bool)

(assert (=> b!503056 m!483977))

(declare-fun m!483979 () Bool)

(assert (=> b!503068 m!483979))

(declare-fun m!483981 () Bool)

(assert (=> b!503060 m!483981))

(declare-fun m!483983 () Bool)

(assert (=> b!503060 m!483983))

(assert (=> b!503057 m!483983))

(declare-fun m!483985 () Bool)

(assert (=> b!503069 m!483985))

(assert (=> b!503065 m!483947))

(assert (=> b!503065 m!483947))

(declare-fun m!483987 () Bool)

(assert (=> b!503065 m!483987))

(assert (=> b!503059 m!483947))

(assert (=> b!503059 m!483947))

(declare-fun m!483989 () Bool)

(assert (=> b!503059 m!483989))

(push 1)

