; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45826 () Bool)

(assert start!45826)

(declare-fun b!507052 () Bool)

(declare-fun res!308162 () Bool)

(declare-fun e!296754 () Bool)

(assert (=> b!507052 (=> (not res!308162) (not e!296754))))

(declare-datatypes ((array!32542 0))(
  ( (array!32543 (arr!15648 (Array (_ BitVec 32) (_ BitVec 64))) (size!16012 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32542)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!507052 (= res!308162 (validKeyInArray!0 (select (arr!15648 a!3235) j!176)))))

(declare-fun b!507053 () Bool)

(declare-fun e!296755 () Bool)

(assert (=> b!507053 (= e!296754 e!296755)))

(declare-fun res!308171 () Bool)

(assert (=> b!507053 (=> (not res!308171) (not e!296755))))

(declare-datatypes ((SeekEntryResult!4122 0))(
  ( (MissingZero!4122 (index!18676 (_ BitVec 32))) (Found!4122 (index!18677 (_ BitVec 32))) (Intermediate!4122 (undefined!4934 Bool) (index!18678 (_ BitVec 32)) (x!47702 (_ BitVec 32))) (Undefined!4122) (MissingVacant!4122 (index!18679 (_ BitVec 32))) )
))
(declare-fun lt!231532 () SeekEntryResult!4122)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!507053 (= res!308171 (or (= lt!231532 (MissingZero!4122 i!1204)) (= lt!231532 (MissingVacant!4122 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32542 (_ BitVec 32)) SeekEntryResult!4122)

(assert (=> b!507053 (= lt!231532 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun e!296750 () Bool)

(declare-fun b!507054 () Bool)

(assert (=> b!507054 (= e!296750 (= (seekEntryOrOpen!0 (select (arr!15648 a!3235) j!176) a!3235 mask!3524) (Found!4122 j!176)))))

(declare-fun b!507055 () Bool)

(declare-fun e!296751 () Bool)

(assert (=> b!507055 (= e!296755 (not e!296751))))

(declare-fun res!308165 () Bool)

(assert (=> b!507055 (=> res!308165 e!296751)))

(declare-fun lt!231528 () (_ BitVec 64))

(declare-fun lt!231531 () (_ BitVec 32))

(declare-fun lt!231536 () array!32542)

(declare-fun lt!231529 () SeekEntryResult!4122)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32542 (_ BitVec 32)) SeekEntryResult!4122)

(assert (=> b!507055 (= res!308165 (= lt!231529 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231531 lt!231528 lt!231536 mask!3524)))))

(declare-fun lt!231535 () (_ BitVec 32))

(assert (=> b!507055 (= lt!231529 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231535 (select (arr!15648 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!507055 (= lt!231531 (toIndex!0 lt!231528 mask!3524))))

(assert (=> b!507055 (= lt!231528 (select (store (arr!15648 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!507055 (= lt!231535 (toIndex!0 (select (arr!15648 a!3235) j!176) mask!3524))))

(assert (=> b!507055 (= lt!231536 (array!32543 (store (arr!15648 a!3235) i!1204 k!2280) (size!16012 a!3235)))))

(assert (=> b!507055 e!296750))

(declare-fun res!308163 () Bool)

(assert (=> b!507055 (=> (not res!308163) (not e!296750))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32542 (_ BitVec 32)) Bool)

(assert (=> b!507055 (= res!308163 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15524 0))(
  ( (Unit!15525) )
))
(declare-fun lt!231530 () Unit!15524)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32542 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15524)

(assert (=> b!507055 (= lt!231530 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!507056 () Bool)

(declare-fun e!296753 () Bool)

(assert (=> b!507056 (= e!296751 e!296753)))

(declare-fun res!308161 () Bool)

(assert (=> b!507056 (=> res!308161 e!296753)))

(declare-fun lt!231533 () Bool)

(assert (=> b!507056 (= res!308161 (or (and (not lt!231533) (undefined!4934 lt!231529)) (and (not lt!231533) (not (undefined!4934 lt!231529)))))))

(assert (=> b!507056 (= lt!231533 (not (is-Intermediate!4122 lt!231529)))))

(declare-fun b!507057 () Bool)

(assert (=> b!507057 (= e!296753 true)))

(declare-fun lt!231534 () SeekEntryResult!4122)

(assert (=> b!507057 (= lt!231534 (seekEntryOrOpen!0 lt!231528 lt!231536 mask!3524))))

(assert (=> b!507057 false))

(declare-fun res!308167 () Bool)

(assert (=> start!45826 (=> (not res!308167) (not e!296754))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45826 (= res!308167 (validMask!0 mask!3524))))

(assert (=> start!45826 e!296754))

(assert (=> start!45826 true))

(declare-fun array_inv!11422 (array!32542) Bool)

(assert (=> start!45826 (array_inv!11422 a!3235)))

(declare-fun b!507058 () Bool)

(declare-fun res!308168 () Bool)

(assert (=> b!507058 (=> (not res!308168) (not e!296754))))

(declare-fun arrayContainsKey!0 (array!32542 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!507058 (= res!308168 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!507059 () Bool)

(declare-fun res!308164 () Bool)

(assert (=> b!507059 (=> (not res!308164) (not e!296754))))

(assert (=> b!507059 (= res!308164 (validKeyInArray!0 k!2280))))

(declare-fun b!507060 () Bool)

(declare-fun res!308169 () Bool)

(assert (=> b!507060 (=> (not res!308169) (not e!296754))))

(assert (=> b!507060 (= res!308169 (and (= (size!16012 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16012 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16012 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!507061 () Bool)

(declare-fun res!308166 () Bool)

(assert (=> b!507061 (=> (not res!308166) (not e!296755))))

(declare-datatypes ((List!9859 0))(
  ( (Nil!9856) (Cons!9855 (h!10732 (_ BitVec 64)) (t!16095 List!9859)) )
))
(declare-fun arrayNoDuplicates!0 (array!32542 (_ BitVec 32) List!9859) Bool)

(assert (=> b!507061 (= res!308166 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9856))))

(declare-fun b!507062 () Bool)

(declare-fun res!308170 () Bool)

(assert (=> b!507062 (=> (not res!308170) (not e!296755))))

(assert (=> b!507062 (= res!308170 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!45826 res!308167) b!507060))

(assert (= (and b!507060 res!308169) b!507052))

(assert (= (and b!507052 res!308162) b!507059))

(assert (= (and b!507059 res!308164) b!507058))

(assert (= (and b!507058 res!308168) b!507053))

(assert (= (and b!507053 res!308171) b!507062))

(assert (= (and b!507062 res!308170) b!507061))

(assert (= (and b!507061 res!308166) b!507055))

(assert (= (and b!507055 res!308163) b!507054))

(assert (= (and b!507055 (not res!308165)) b!507056))

(assert (= (and b!507056 (not res!308161)) b!507057))

(declare-fun m!487831 () Bool)

(assert (=> start!45826 m!487831))

(declare-fun m!487833 () Bool)

(assert (=> start!45826 m!487833))

(declare-fun m!487835 () Bool)

(assert (=> b!507052 m!487835))

(assert (=> b!507052 m!487835))

(declare-fun m!487837 () Bool)

(assert (=> b!507052 m!487837))

(declare-fun m!487839 () Bool)

(assert (=> b!507057 m!487839))

(declare-fun m!487841 () Bool)

(assert (=> b!507062 m!487841))

(declare-fun m!487843 () Bool)

(assert (=> b!507053 m!487843))

(declare-fun m!487845 () Bool)

(assert (=> b!507061 m!487845))

(declare-fun m!487847 () Bool)

(assert (=> b!507058 m!487847))

(assert (=> b!507054 m!487835))

(assert (=> b!507054 m!487835))

(declare-fun m!487849 () Bool)

(assert (=> b!507054 m!487849))

(declare-fun m!487851 () Bool)

(assert (=> b!507055 m!487851))

(declare-fun m!487853 () Bool)

(assert (=> b!507055 m!487853))

(declare-fun m!487855 () Bool)

(assert (=> b!507055 m!487855))

(assert (=> b!507055 m!487835))

(declare-fun m!487857 () Bool)

(assert (=> b!507055 m!487857))

(assert (=> b!507055 m!487835))

(declare-fun m!487859 () Bool)

(assert (=> b!507055 m!487859))

(declare-fun m!487861 () Bool)

(assert (=> b!507055 m!487861))

(assert (=> b!507055 m!487835))

(declare-fun m!487863 () Bool)

(assert (=> b!507055 m!487863))

(declare-fun m!487865 () Bool)

(assert (=> b!507055 m!487865))

(declare-fun m!487867 () Bool)

(assert (=> b!507059 m!487867))

(push 1)

