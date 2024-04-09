; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45652 () Bool)

(assert start!45652)

(declare-fun b!503104 () Bool)

(declare-fun res!304581 () Bool)

(declare-fun e!294645 () Bool)

(assert (=> b!503104 (=> (not res!304581) (not e!294645))))

(declare-datatypes ((array!32368 0))(
  ( (array!32369 (arr!15561 (Array (_ BitVec 32) (_ BitVec 64))) (size!15925 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32368)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32368 (_ BitVec 32)) Bool)

(assert (=> b!503104 (= res!304581 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-datatypes ((SeekEntryResult!4035 0))(
  ( (MissingZero!4035 (index!18328 (_ BitVec 32))) (Found!4035 (index!18329 (_ BitVec 32))) (Intermediate!4035 (undefined!4847 Bool) (index!18330 (_ BitVec 32)) (x!47383 (_ BitVec 32))) (Undefined!4035) (MissingVacant!4035 (index!18331 (_ BitVec 32))) )
))
(declare-fun lt!228901 () SeekEntryResult!4035)

(declare-fun b!503106 () Bool)

(declare-fun e!294648 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!228899 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32368 (_ BitVec 32)) SeekEntryResult!4035)

(assert (=> b!503106 (= e!294648 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!228899 (index!18330 lt!228901) (select (arr!15561 a!3235) j!176) a!3235 mask!3524) (Found!4035 j!176))))))

(declare-fun b!503107 () Bool)

(declare-fun res!304570 () Bool)

(declare-fun e!294647 () Bool)

(assert (=> b!503107 (=> (not res!304570) (not e!294647))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!503107 (= res!304570 (validKeyInArray!0 (select (arr!15561 a!3235) j!176)))))

(declare-fun b!503108 () Bool)

(assert (=> b!503108 (= e!294647 e!294645)))

(declare-fun res!304575 () Bool)

(assert (=> b!503108 (=> (not res!304575) (not e!294645))))

(declare-fun lt!228905 () SeekEntryResult!4035)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!503108 (= res!304575 (or (= lt!228905 (MissingZero!4035 i!1204)) (= lt!228905 (MissingVacant!4035 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32368 (_ BitVec 32)) SeekEntryResult!4035)

(assert (=> b!503108 (= lt!228905 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!503109 () Bool)

(declare-fun e!294641 () Bool)

(assert (=> b!503109 (= e!294641 true)))

(declare-fun lt!228903 () (_ BitVec 64))

(declare-fun lt!228900 () array!32368)

(declare-fun lt!228897 () SeekEntryResult!4035)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32368 (_ BitVec 32)) SeekEntryResult!4035)

(assert (=> b!503109 (= lt!228897 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228899 lt!228903 lt!228900 mask!3524))))

(declare-fun b!503110 () Bool)

(declare-datatypes ((Unit!15230 0))(
  ( (Unit!15231) )
))
(declare-fun e!294649 () Unit!15230)

(declare-fun Unit!15232 () Unit!15230)

(assert (=> b!503110 (= e!294649 Unit!15232)))

(declare-fun lt!228896 () Unit!15230)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32368 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15230)

(assert (=> b!503110 (= lt!228896 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!228899 #b00000000000000000000000000000000 (index!18330 lt!228901) (x!47383 lt!228901) mask!3524))))

(declare-fun res!304583 () Bool)

(assert (=> b!503110 (= res!304583 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228899 lt!228903 lt!228900 mask!3524) (Intermediate!4035 false (index!18330 lt!228901) (x!47383 lt!228901))))))

(declare-fun e!294644 () Bool)

(assert (=> b!503110 (=> (not res!304583) (not e!294644))))

(assert (=> b!503110 e!294644))

(declare-fun b!503111 () Bool)

(declare-fun e!294642 () Bool)

(assert (=> b!503111 (= e!294642 e!294641)))

(declare-fun res!304579 () Bool)

(assert (=> b!503111 (=> res!304579 e!294641)))

(assert (=> b!503111 (= res!304579 (or (bvsgt (x!47383 lt!228901) #b01111111111111111111111111111110) (bvslt lt!228899 #b00000000000000000000000000000000) (bvsge lt!228899 (size!15925 a!3235)) (bvslt (index!18330 lt!228901) #b00000000000000000000000000000000) (bvsge (index!18330 lt!228901) (size!15925 a!3235)) (not (= lt!228901 (Intermediate!4035 false (index!18330 lt!228901) (x!47383 lt!228901))))))))

(assert (=> b!503111 (= (index!18330 lt!228901) i!1204)))

(declare-fun lt!228902 () Unit!15230)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32368 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15230)

(assert (=> b!503111 (= lt!228902 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!228899 #b00000000000000000000000000000000 (index!18330 lt!228901) (x!47383 lt!228901) mask!3524))))

(assert (=> b!503111 (and (or (= (select (arr!15561 a!3235) (index!18330 lt!228901)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15561 a!3235) (index!18330 lt!228901)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15561 a!3235) (index!18330 lt!228901)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15561 a!3235) (index!18330 lt!228901)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!228895 () Unit!15230)

(assert (=> b!503111 (= lt!228895 e!294649)))

(declare-fun c!59546 () Bool)

(assert (=> b!503111 (= c!59546 (= (select (arr!15561 a!3235) (index!18330 lt!228901)) (select (arr!15561 a!3235) j!176)))))

(assert (=> b!503111 (and (bvslt (x!47383 lt!228901) #b01111111111111111111111111111110) (or (= (select (arr!15561 a!3235) (index!18330 lt!228901)) (select (arr!15561 a!3235) j!176)) (= (select (arr!15561 a!3235) (index!18330 lt!228901)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15561 a!3235) (index!18330 lt!228901)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!503112 () Bool)

(assert (=> b!503112 (= e!294645 (not e!294642))))

(declare-fun res!304572 () Bool)

(assert (=> b!503112 (=> res!304572 e!294642)))

(declare-fun lt!228904 () (_ BitVec 32))

(assert (=> b!503112 (= res!304572 (= lt!228901 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228904 lt!228903 lt!228900 mask!3524)))))

(assert (=> b!503112 (= lt!228901 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228899 (select (arr!15561 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!503112 (= lt!228904 (toIndex!0 lt!228903 mask!3524))))

(assert (=> b!503112 (= lt!228903 (select (store (arr!15561 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!503112 (= lt!228899 (toIndex!0 (select (arr!15561 a!3235) j!176) mask!3524))))

(assert (=> b!503112 (= lt!228900 (array!32369 (store (arr!15561 a!3235) i!1204 k!2280) (size!15925 a!3235)))))

(declare-fun e!294643 () Bool)

(assert (=> b!503112 e!294643))

(declare-fun res!304582 () Bool)

(assert (=> b!503112 (=> (not res!304582) (not e!294643))))

(assert (=> b!503112 (= res!304582 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!228898 () Unit!15230)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32368 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15230)

(assert (=> b!503112 (= lt!228898 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!503113 () Bool)

(declare-fun res!304574 () Bool)

(assert (=> b!503113 (=> (not res!304574) (not e!294647))))

(assert (=> b!503113 (= res!304574 (and (= (size!15925 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15925 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15925 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!503114 () Bool)

(assert (=> b!503114 (= e!294643 (= (seekEntryOrOpen!0 (select (arr!15561 a!3235) j!176) a!3235 mask!3524) (Found!4035 j!176)))))

(declare-fun b!503115 () Bool)

(assert (=> b!503115 (= e!294644 false)))

(declare-fun res!304571 () Bool)

(assert (=> start!45652 (=> (not res!304571) (not e!294647))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45652 (= res!304571 (validMask!0 mask!3524))))

(assert (=> start!45652 e!294647))

(assert (=> start!45652 true))

(declare-fun array_inv!11335 (array!32368) Bool)

(assert (=> start!45652 (array_inv!11335 a!3235)))

(declare-fun b!503105 () Bool)

(declare-fun res!304573 () Bool)

(assert (=> b!503105 (=> res!304573 e!294641)))

(assert (=> b!503105 (= res!304573 e!294648)))

(declare-fun res!304578 () Bool)

(assert (=> b!503105 (=> (not res!304578) (not e!294648))))

(assert (=> b!503105 (= res!304578 (bvsgt #b00000000000000000000000000000000 (x!47383 lt!228901)))))

(declare-fun b!503116 () Bool)

(declare-fun res!304577 () Bool)

(assert (=> b!503116 (=> (not res!304577) (not e!294647))))

(assert (=> b!503116 (= res!304577 (validKeyInArray!0 k!2280))))

(declare-fun b!503117 () Bool)

(declare-fun res!304569 () Bool)

(assert (=> b!503117 (=> res!304569 e!294642)))

(assert (=> b!503117 (= res!304569 (or (undefined!4847 lt!228901) (not (is-Intermediate!4035 lt!228901))))))

(declare-fun b!503118 () Bool)

(declare-fun Unit!15233 () Unit!15230)

(assert (=> b!503118 (= e!294649 Unit!15233)))

(declare-fun b!503119 () Bool)

(declare-fun res!304576 () Bool)

(assert (=> b!503119 (=> (not res!304576) (not e!294647))))

(declare-fun arrayContainsKey!0 (array!32368 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!503119 (= res!304576 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!503120 () Bool)

(declare-fun res!304580 () Bool)

(assert (=> b!503120 (=> (not res!304580) (not e!294645))))

(declare-datatypes ((List!9772 0))(
  ( (Nil!9769) (Cons!9768 (h!10645 (_ BitVec 64)) (t!16008 List!9772)) )
))
(declare-fun arrayNoDuplicates!0 (array!32368 (_ BitVec 32) List!9772) Bool)

(assert (=> b!503120 (= res!304580 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9769))))

(assert (= (and start!45652 res!304571) b!503113))

(assert (= (and b!503113 res!304574) b!503107))

(assert (= (and b!503107 res!304570) b!503116))

(assert (= (and b!503116 res!304577) b!503119))

(assert (= (and b!503119 res!304576) b!503108))

(assert (= (and b!503108 res!304575) b!503104))

(assert (= (and b!503104 res!304581) b!503120))

(assert (= (and b!503120 res!304580) b!503112))

(assert (= (and b!503112 res!304582) b!503114))

(assert (= (and b!503112 (not res!304572)) b!503117))

(assert (= (and b!503117 (not res!304569)) b!503111))

(assert (= (and b!503111 c!59546) b!503110))

(assert (= (and b!503111 (not c!59546)) b!503118))

(assert (= (and b!503110 res!304583) b!503115))

(assert (= (and b!503111 (not res!304579)) b!503105))

(assert (= (and b!503105 res!304578) b!503106))

(assert (= (and b!503105 (not res!304573)) b!503109))

(declare-fun m!483991 () Bool)

(assert (=> b!503108 m!483991))

(declare-fun m!483993 () Bool)

(assert (=> b!503104 m!483993))

(declare-fun m!483995 () Bool)

(assert (=> b!503110 m!483995))

(declare-fun m!483997 () Bool)

(assert (=> b!503110 m!483997))

(declare-fun m!483999 () Bool)

(assert (=> b!503107 m!483999))

(assert (=> b!503107 m!483999))

(declare-fun m!484001 () Bool)

(assert (=> b!503107 m!484001))

(assert (=> b!503114 m!483999))

(assert (=> b!503114 m!483999))

(declare-fun m!484003 () Bool)

(assert (=> b!503114 m!484003))

(assert (=> b!503106 m!483999))

(assert (=> b!503106 m!483999))

(declare-fun m!484005 () Bool)

(assert (=> b!503106 m!484005))

(assert (=> b!503109 m!483997))

(declare-fun m!484007 () Bool)

(assert (=> b!503120 m!484007))

(declare-fun m!484009 () Bool)

(assert (=> b!503116 m!484009))

(declare-fun m!484011 () Bool)

(assert (=> start!45652 m!484011))

(declare-fun m!484013 () Bool)

(assert (=> start!45652 m!484013))

(declare-fun m!484015 () Bool)

(assert (=> b!503119 m!484015))

(declare-fun m!484017 () Bool)

(assert (=> b!503111 m!484017))

(declare-fun m!484019 () Bool)

(assert (=> b!503111 m!484019))

(assert (=> b!503111 m!483999))

(declare-fun m!484021 () Bool)

(assert (=> b!503112 m!484021))

(declare-fun m!484023 () Bool)

(assert (=> b!503112 m!484023))

(assert (=> b!503112 m!483999))

(declare-fun m!484025 () Bool)

(assert (=> b!503112 m!484025))

(declare-fun m!484027 () Bool)

(assert (=> b!503112 m!484027))

(declare-fun m!484029 () Bool)

(assert (=> b!503112 m!484029))

(declare-fun m!484031 () Bool)

(assert (=> b!503112 m!484031))

(assert (=> b!503112 m!483999))

(declare-fun m!484033 () Bool)

(assert (=> b!503112 m!484033))

(assert (=> b!503112 m!483999))

(declare-fun m!484035 () Bool)

(assert (=> b!503112 m!484035))

(push 1)

