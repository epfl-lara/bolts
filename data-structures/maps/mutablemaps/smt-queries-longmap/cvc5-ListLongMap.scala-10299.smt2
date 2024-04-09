; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121156 () Bool)

(assert start!121156)

(declare-fun b!1408136 () Bool)

(declare-fun e!796976 () Bool)

(assert (=> b!1408136 (= e!796976 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96228 0))(
  ( (array!96229 (arr!46453 (Array (_ BitVec 32) (_ BitVec 64))) (size!47004 (_ BitVec 32))) )
))
(declare-fun lt!620152 () array!96228)

(declare-fun lt!620147 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!10786 0))(
  ( (MissingZero!10786 (index!45520 (_ BitVec 32))) (Found!10786 (index!45521 (_ BitVec 32))) (Intermediate!10786 (undefined!11598 Bool) (index!45522 (_ BitVec 32)) (x!127134 (_ BitVec 32))) (Undefined!10786) (MissingVacant!10786 (index!45523 (_ BitVec 32))) )
))
(declare-fun lt!620146 () SeekEntryResult!10786)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96228 (_ BitVec 32)) SeekEntryResult!10786)

(assert (=> b!1408136 (= lt!620146 (seekEntryOrOpen!0 lt!620147 lt!620152 mask!2840))))

(declare-fun a!2901 () array!96228)

(declare-datatypes ((Unit!47496 0))(
  ( (Unit!47497) )
))
(declare-fun lt!620148 () Unit!47496)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!620149 () SeekEntryResult!10786)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lt!620150 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!96228 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47496)

(assert (=> b!1408136 (= lt!620148 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!620150 (x!127134 lt!620149) (index!45522 lt!620149) mask!2840))))

(declare-fun b!1408137 () Bool)

(declare-fun res!945970 () Bool)

(declare-fun e!796977 () Bool)

(assert (=> b!1408137 (=> (not res!945970) (not e!796977))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408137 (= res!945970 (validKeyInArray!0 (select (arr!46453 a!2901) i!1037)))))

(declare-fun b!1408138 () Bool)

(declare-fun res!945972 () Bool)

(assert (=> b!1408138 (=> (not res!945972) (not e!796977))))

(declare-datatypes ((List!33152 0))(
  ( (Nil!33149) (Cons!33148 (h!34411 (_ BitVec 64)) (t!47853 List!33152)) )
))
(declare-fun arrayNoDuplicates!0 (array!96228 (_ BitVec 32) List!33152) Bool)

(assert (=> b!1408138 (= res!945972 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33149))))

(declare-fun b!1408139 () Bool)

(declare-fun res!945975 () Bool)

(assert (=> b!1408139 (=> (not res!945975) (not e!796977))))

(assert (=> b!1408139 (= res!945975 (and (= (size!47004 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47004 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47004 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1408141 () Bool)

(declare-fun res!945973 () Bool)

(assert (=> b!1408141 (=> (not res!945973) (not e!796977))))

(assert (=> b!1408141 (= res!945973 (validKeyInArray!0 (select (arr!46453 a!2901) j!112)))))

(declare-fun b!1408142 () Bool)

(declare-fun e!796978 () Bool)

(assert (=> b!1408142 (= e!796978 e!796976)))

(declare-fun res!945974 () Bool)

(assert (=> b!1408142 (=> res!945974 e!796976)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96228 (_ BitVec 32)) SeekEntryResult!10786)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408142 (= res!945974 (not (= lt!620149 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!620147 mask!2840) lt!620147 lt!620152 mask!2840))))))

(assert (=> b!1408142 (= lt!620147 (select (store (arr!46453 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1408142 (= lt!620152 (array!96229 (store (arr!46453 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47004 a!2901)))))

(declare-fun b!1408143 () Bool)

(declare-fun res!945967 () Bool)

(assert (=> b!1408143 (=> (not res!945967) (not e!796977))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96228 (_ BitVec 32)) Bool)

(assert (=> b!1408143 (= res!945967 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1408144 () Bool)

(declare-fun res!945971 () Bool)

(assert (=> b!1408144 (=> res!945971 e!796976)))

(assert (=> b!1408144 (= res!945971 (or (bvslt (x!127134 lt!620149) #b00000000000000000000000000000000) (bvsgt (x!127134 lt!620149) #b01111111111111111111111111111110) (bvslt lt!620150 #b00000000000000000000000000000000) (bvsge lt!620150 (size!47004 a!2901)) (bvslt (index!45522 lt!620149) #b00000000000000000000000000000000) (bvsge (index!45522 lt!620149) (size!47004 a!2901)) (not (= lt!620149 (Intermediate!10786 false (index!45522 lt!620149) (x!127134 lt!620149))))))))

(declare-fun res!945968 () Bool)

(assert (=> start!121156 (=> (not res!945968) (not e!796977))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121156 (= res!945968 (validMask!0 mask!2840))))

(assert (=> start!121156 e!796977))

(assert (=> start!121156 true))

(declare-fun array_inv!35398 (array!96228) Bool)

(assert (=> start!121156 (array_inv!35398 a!2901)))

(declare-fun b!1408140 () Bool)

(assert (=> b!1408140 (= e!796977 (not e!796978))))

(declare-fun res!945969 () Bool)

(assert (=> b!1408140 (=> res!945969 e!796978)))

(assert (=> b!1408140 (= res!945969 (or (not (is-Intermediate!10786 lt!620149)) (undefined!11598 lt!620149)))))

(assert (=> b!1408140 (= lt!620146 (Found!10786 j!112))))

(assert (=> b!1408140 (= lt!620146 (seekEntryOrOpen!0 (select (arr!46453 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1408140 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!620151 () Unit!47496)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96228 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47496)

(assert (=> b!1408140 (= lt!620151 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1408140 (= lt!620149 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!620150 (select (arr!46453 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1408140 (= lt!620150 (toIndex!0 (select (arr!46453 a!2901) j!112) mask!2840))))

(assert (= (and start!121156 res!945968) b!1408139))

(assert (= (and b!1408139 res!945975) b!1408137))

(assert (= (and b!1408137 res!945970) b!1408141))

(assert (= (and b!1408141 res!945973) b!1408143))

(assert (= (and b!1408143 res!945967) b!1408138))

(assert (= (and b!1408138 res!945972) b!1408140))

(assert (= (and b!1408140 (not res!945969)) b!1408142))

(assert (= (and b!1408142 (not res!945974)) b!1408144))

(assert (= (and b!1408144 (not res!945971)) b!1408136))

(declare-fun m!1297403 () Bool)

(assert (=> b!1408142 m!1297403))

(assert (=> b!1408142 m!1297403))

(declare-fun m!1297405 () Bool)

(assert (=> b!1408142 m!1297405))

(declare-fun m!1297407 () Bool)

(assert (=> b!1408142 m!1297407))

(declare-fun m!1297409 () Bool)

(assert (=> b!1408142 m!1297409))

(declare-fun m!1297411 () Bool)

(assert (=> start!121156 m!1297411))

(declare-fun m!1297413 () Bool)

(assert (=> start!121156 m!1297413))

(declare-fun m!1297415 () Bool)

(assert (=> b!1408141 m!1297415))

(assert (=> b!1408141 m!1297415))

(declare-fun m!1297417 () Bool)

(assert (=> b!1408141 m!1297417))

(declare-fun m!1297419 () Bool)

(assert (=> b!1408137 m!1297419))

(assert (=> b!1408137 m!1297419))

(declare-fun m!1297421 () Bool)

(assert (=> b!1408137 m!1297421))

(declare-fun m!1297423 () Bool)

(assert (=> b!1408138 m!1297423))

(declare-fun m!1297425 () Bool)

(assert (=> b!1408143 m!1297425))

(assert (=> b!1408140 m!1297415))

(declare-fun m!1297427 () Bool)

(assert (=> b!1408140 m!1297427))

(assert (=> b!1408140 m!1297415))

(declare-fun m!1297429 () Bool)

(assert (=> b!1408140 m!1297429))

(assert (=> b!1408140 m!1297415))

(declare-fun m!1297431 () Bool)

(assert (=> b!1408140 m!1297431))

(declare-fun m!1297433 () Bool)

(assert (=> b!1408140 m!1297433))

(assert (=> b!1408140 m!1297415))

(declare-fun m!1297435 () Bool)

(assert (=> b!1408140 m!1297435))

(declare-fun m!1297437 () Bool)

(assert (=> b!1408136 m!1297437))

(declare-fun m!1297439 () Bool)

(assert (=> b!1408136 m!1297439))

(push 1)

