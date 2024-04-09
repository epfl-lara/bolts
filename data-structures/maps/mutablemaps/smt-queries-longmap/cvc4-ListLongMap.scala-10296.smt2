; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121142 () Bool)

(assert start!121142)

(declare-fun b!1407947 () Bool)

(declare-fun res!945786 () Bool)

(declare-fun e!796895 () Bool)

(assert (=> b!1407947 (=> (not res!945786) (not e!796895))))

(declare-datatypes ((array!96214 0))(
  ( (array!96215 (arr!46446 (Array (_ BitVec 32) (_ BitVec 64))) (size!46997 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96214)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1407947 (= res!945786 (validKeyInArray!0 (select (arr!46446 a!2901) i!1037)))))

(declare-fun b!1407948 () Bool)

(declare-fun res!945782 () Bool)

(declare-fun e!796893 () Bool)

(assert (=> b!1407948 (=> res!945782 e!796893)))

(declare-datatypes ((SeekEntryResult!10779 0))(
  ( (MissingZero!10779 (index!45492 (_ BitVec 32))) (Found!10779 (index!45493 (_ BitVec 32))) (Intermediate!10779 (undefined!11591 Bool) (index!45494 (_ BitVec 32)) (x!127103 (_ BitVec 32))) (Undefined!10779) (MissingVacant!10779 (index!45495 (_ BitVec 32))) )
))
(declare-fun lt!620003 () SeekEntryResult!10779)

(declare-fun lt!620005 () (_ BitVec 32))

(assert (=> b!1407948 (= res!945782 (or (bvslt (x!127103 lt!620003) #b00000000000000000000000000000000) (bvsgt (x!127103 lt!620003) #b01111111111111111111111111111110) (bvslt lt!620005 #b00000000000000000000000000000000) (bvsge lt!620005 (size!46997 a!2901)) (bvslt (index!45494 lt!620003) #b00000000000000000000000000000000) (bvsge (index!45494 lt!620003) (size!46997 a!2901)) (not (= lt!620003 (Intermediate!10779 false (index!45494 lt!620003) (x!127103 lt!620003))))))))

(declare-fun b!1407949 () Bool)

(declare-fun res!945783 () Bool)

(assert (=> b!1407949 (=> (not res!945783) (not e!796895))))

(declare-datatypes ((List!33145 0))(
  ( (Nil!33142) (Cons!33141 (h!34404 (_ BitVec 64)) (t!47846 List!33145)) )
))
(declare-fun arrayNoDuplicates!0 (array!96214 (_ BitVec 32) List!33145) Bool)

(assert (=> b!1407949 (= res!945783 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33142))))

(declare-fun b!1407950 () Bool)

(declare-fun e!796892 () Bool)

(assert (=> b!1407950 (= e!796895 (not e!796892))))

(declare-fun res!945781 () Bool)

(assert (=> b!1407950 (=> res!945781 e!796892)))

(assert (=> b!1407950 (= res!945781 (or (not (is-Intermediate!10779 lt!620003)) (undefined!11591 lt!620003)))))

(declare-fun lt!620000 () SeekEntryResult!10779)

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1407950 (= lt!620000 (Found!10779 j!112))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96214 (_ BitVec 32)) SeekEntryResult!10779)

(assert (=> b!1407950 (= lt!620000 (seekEntryOrOpen!0 (select (arr!46446 a!2901) j!112) a!2901 mask!2840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96214 (_ BitVec 32)) Bool)

(assert (=> b!1407950 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!47482 0))(
  ( (Unit!47483) )
))
(declare-fun lt!620004 () Unit!47482)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96214 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47482)

(assert (=> b!1407950 (= lt!620004 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96214 (_ BitVec 32)) SeekEntryResult!10779)

(assert (=> b!1407950 (= lt!620003 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!620005 (select (arr!46446 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1407950 (= lt!620005 (toIndex!0 (select (arr!46446 a!2901) j!112) mask!2840))))

(declare-fun b!1407951 () Bool)

(assert (=> b!1407951 (= e!796892 e!796893)))

(declare-fun res!945780 () Bool)

(assert (=> b!1407951 (=> res!945780 e!796893)))

(declare-fun lt!619999 () array!96214)

(declare-fun lt!620002 () (_ BitVec 64))

(assert (=> b!1407951 (= res!945780 (not (= lt!620003 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!620002 mask!2840) lt!620002 lt!619999 mask!2840))))))

(assert (=> b!1407951 (= lt!620002 (select (store (arr!46446 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1407951 (= lt!619999 (array!96215 (store (arr!46446 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46997 a!2901)))))

(declare-fun res!945785 () Bool)

(assert (=> start!121142 (=> (not res!945785) (not e!796895))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121142 (= res!945785 (validMask!0 mask!2840))))

(assert (=> start!121142 e!796895))

(assert (=> start!121142 true))

(declare-fun array_inv!35391 (array!96214) Bool)

(assert (=> start!121142 (array_inv!35391 a!2901)))

(declare-fun b!1407952 () Bool)

(declare-fun res!945779 () Bool)

(assert (=> b!1407952 (=> (not res!945779) (not e!796895))))

(assert (=> b!1407952 (= res!945779 (validKeyInArray!0 (select (arr!46446 a!2901) j!112)))))

(declare-fun b!1407953 () Bool)

(declare-fun res!945778 () Bool)

(assert (=> b!1407953 (=> (not res!945778) (not e!796895))))

(assert (=> b!1407953 (= res!945778 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1407954 () Bool)

(declare-fun res!945784 () Bool)

(assert (=> b!1407954 (=> (not res!945784) (not e!796895))))

(assert (=> b!1407954 (= res!945784 (and (= (size!46997 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46997 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46997 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1407955 () Bool)

(assert (=> b!1407955 (= e!796893 true)))

(assert (=> b!1407955 (= lt!620000 (seekEntryOrOpen!0 lt!620002 lt!619999 mask!2840))))

(declare-fun lt!620001 () Unit!47482)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!96214 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47482)

(assert (=> b!1407955 (= lt!620001 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!620005 (x!127103 lt!620003) (index!45494 lt!620003) mask!2840))))

(assert (= (and start!121142 res!945785) b!1407954))

(assert (= (and b!1407954 res!945784) b!1407947))

(assert (= (and b!1407947 res!945786) b!1407952))

(assert (= (and b!1407952 res!945779) b!1407953))

(assert (= (and b!1407953 res!945778) b!1407949))

(assert (= (and b!1407949 res!945783) b!1407950))

(assert (= (and b!1407950 (not res!945781)) b!1407951))

(assert (= (and b!1407951 (not res!945780)) b!1407948))

(assert (= (and b!1407948 (not res!945782)) b!1407955))

(declare-fun m!1297137 () Bool)

(assert (=> b!1407947 m!1297137))

(assert (=> b!1407947 m!1297137))

(declare-fun m!1297139 () Bool)

(assert (=> b!1407947 m!1297139))

(declare-fun m!1297141 () Bool)

(assert (=> b!1407951 m!1297141))

(assert (=> b!1407951 m!1297141))

(declare-fun m!1297143 () Bool)

(assert (=> b!1407951 m!1297143))

(declare-fun m!1297145 () Bool)

(assert (=> b!1407951 m!1297145))

(declare-fun m!1297147 () Bool)

(assert (=> b!1407951 m!1297147))

(declare-fun m!1297149 () Bool)

(assert (=> b!1407949 m!1297149))

(declare-fun m!1297151 () Bool)

(assert (=> start!121142 m!1297151))

(declare-fun m!1297153 () Bool)

(assert (=> start!121142 m!1297153))

(declare-fun m!1297155 () Bool)

(assert (=> b!1407953 m!1297155))

(declare-fun m!1297157 () Bool)

(assert (=> b!1407955 m!1297157))

(declare-fun m!1297159 () Bool)

(assert (=> b!1407955 m!1297159))

(declare-fun m!1297161 () Bool)

(assert (=> b!1407950 m!1297161))

(declare-fun m!1297163 () Bool)

(assert (=> b!1407950 m!1297163))

(assert (=> b!1407950 m!1297161))

(assert (=> b!1407950 m!1297161))

(declare-fun m!1297165 () Bool)

(assert (=> b!1407950 m!1297165))

(declare-fun m!1297167 () Bool)

(assert (=> b!1407950 m!1297167))

(assert (=> b!1407950 m!1297161))

(declare-fun m!1297169 () Bool)

(assert (=> b!1407950 m!1297169))

(declare-fun m!1297171 () Bool)

(assert (=> b!1407950 m!1297171))

(assert (=> b!1407952 m!1297161))

(assert (=> b!1407952 m!1297161))

(declare-fun m!1297173 () Bool)

(assert (=> b!1407952 m!1297173))

(push 1)

