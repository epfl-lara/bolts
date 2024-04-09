; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121508 () Bool)

(assert start!121508)

(declare-fun b!1411277 () Bool)

(declare-fun res!948621 () Bool)

(declare-fun e!798667 () Bool)

(assert (=> b!1411277 (=> (not res!948621) (not e!798667))))

(declare-datatypes ((array!96427 0))(
  ( (array!96428 (arr!46548 (Array (_ BitVec 32) (_ BitVec 64))) (size!47099 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96427)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1411277 (= res!948621 (validKeyInArray!0 (select (arr!46548 a!2901) i!1037)))))

(declare-fun b!1411278 () Bool)

(declare-fun e!798666 () Bool)

(declare-datatypes ((SeekEntryResult!10881 0))(
  ( (MissingZero!10881 (index!45900 (_ BitVec 32))) (Found!10881 (index!45901 (_ BitVec 32))) (Intermediate!10881 (undefined!11693 Bool) (index!45902 (_ BitVec 32)) (x!127495 (_ BitVec 32))) (Undefined!10881) (MissingVacant!10881 (index!45903 (_ BitVec 32))) )
))
(declare-fun lt!621605 () SeekEntryResult!10881)

(assert (=> b!1411278 (= e!798666 (and (bvsge (index!45902 lt!621605) #b00000000000000000000000000000000) (bvslt (index!45902 lt!621605) (size!47099 a!2901))))))

(declare-fun lt!621604 () SeekEntryResult!10881)

(assert (=> b!1411278 (and (not (undefined!11693 lt!621605)) (= (index!45902 lt!621605) i!1037) (bvslt (x!127495 lt!621605) (x!127495 lt!621604)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((Unit!47686 0))(
  ( (Unit!47687) )
))
(declare-fun lt!621607 () Unit!47686)

(declare-fun lt!621603 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96427 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47686)

(assert (=> b!1411278 (= lt!621607 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!621603 (x!127495 lt!621604) (index!45902 lt!621604) (x!127495 lt!621605) (index!45902 lt!621605) (undefined!11693 lt!621605) mask!2840))))

(declare-fun b!1411279 () Bool)

(declare-fun res!948618 () Bool)

(assert (=> b!1411279 (=> (not res!948618) (not e!798667))))

(assert (=> b!1411279 (= res!948618 (validKeyInArray!0 (select (arr!46548 a!2901) j!112)))))

(declare-fun b!1411280 () Bool)

(declare-fun e!798668 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96427 (_ BitVec 32)) SeekEntryResult!10881)

(assert (=> b!1411280 (= e!798668 (= (seekEntryOrOpen!0 (select (arr!46548 a!2901) j!112) a!2901 mask!2840) (Found!10881 j!112)))))

(declare-fun b!1411281 () Bool)

(declare-fun res!948617 () Bool)

(assert (=> b!1411281 (=> (not res!948617) (not e!798667))))

(declare-datatypes ((List!33247 0))(
  ( (Nil!33244) (Cons!33243 (h!34515 (_ BitVec 64)) (t!47948 List!33247)) )
))
(declare-fun arrayNoDuplicates!0 (array!96427 (_ BitVec 32) List!33247) Bool)

(assert (=> b!1411281 (= res!948617 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33244))))

(declare-fun res!948615 () Bool)

(assert (=> start!121508 (=> (not res!948615) (not e!798667))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121508 (= res!948615 (validMask!0 mask!2840))))

(assert (=> start!121508 e!798667))

(assert (=> start!121508 true))

(declare-fun array_inv!35493 (array!96427) Bool)

(assert (=> start!121508 (array_inv!35493 a!2901)))

(declare-fun b!1411282 () Bool)

(declare-fun e!798664 () Bool)

(assert (=> b!1411282 (= e!798667 (not e!798664))))

(declare-fun res!948616 () Bool)

(assert (=> b!1411282 (=> res!948616 e!798664)))

(assert (=> b!1411282 (= res!948616 (or (not (is-Intermediate!10881 lt!621604)) (undefined!11693 lt!621604)))))

(assert (=> b!1411282 e!798668))

(declare-fun res!948613 () Bool)

(assert (=> b!1411282 (=> (not res!948613) (not e!798668))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96427 (_ BitVec 32)) Bool)

(assert (=> b!1411282 (= res!948613 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!621606 () Unit!47686)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96427 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47686)

(assert (=> b!1411282 (= lt!621606 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96427 (_ BitVec 32)) SeekEntryResult!10881)

(assert (=> b!1411282 (= lt!621604 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621603 (select (arr!46548 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1411282 (= lt!621603 (toIndex!0 (select (arr!46548 a!2901) j!112) mask!2840))))

(declare-fun b!1411283 () Bool)

(declare-fun res!948620 () Bool)

(assert (=> b!1411283 (=> (not res!948620) (not e!798667))))

(assert (=> b!1411283 (= res!948620 (and (= (size!47099 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47099 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47099 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1411284 () Bool)

(assert (=> b!1411284 (= e!798664 e!798666)))

(declare-fun res!948619 () Bool)

(assert (=> b!1411284 (=> res!948619 e!798666)))

(assert (=> b!1411284 (= res!948619 (or (= lt!621604 lt!621605) (not (is-Intermediate!10881 lt!621605))))))

(assert (=> b!1411284 (= lt!621605 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46548 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46548 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96428 (store (arr!46548 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47099 a!2901)) mask!2840))))

(declare-fun b!1411285 () Bool)

(declare-fun res!948614 () Bool)

(assert (=> b!1411285 (=> (not res!948614) (not e!798667))))

(assert (=> b!1411285 (= res!948614 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!121508 res!948615) b!1411283))

(assert (= (and b!1411283 res!948620) b!1411277))

(assert (= (and b!1411277 res!948621) b!1411279))

(assert (= (and b!1411279 res!948618) b!1411285))

(assert (= (and b!1411285 res!948614) b!1411281))

(assert (= (and b!1411281 res!948617) b!1411282))

(assert (= (and b!1411282 res!948613) b!1411280))

(assert (= (and b!1411282 (not res!948616)) b!1411284))

(assert (= (and b!1411284 (not res!948619)) b!1411278))

(declare-fun m!1301153 () Bool)

(assert (=> start!121508 m!1301153))

(declare-fun m!1301155 () Bool)

(assert (=> start!121508 m!1301155))

(declare-fun m!1301157 () Bool)

(assert (=> b!1411282 m!1301157))

(declare-fun m!1301159 () Bool)

(assert (=> b!1411282 m!1301159))

(assert (=> b!1411282 m!1301157))

(assert (=> b!1411282 m!1301157))

(declare-fun m!1301161 () Bool)

(assert (=> b!1411282 m!1301161))

(declare-fun m!1301163 () Bool)

(assert (=> b!1411282 m!1301163))

(declare-fun m!1301165 () Bool)

(assert (=> b!1411282 m!1301165))

(declare-fun m!1301167 () Bool)

(assert (=> b!1411285 m!1301167))

(assert (=> b!1411279 m!1301157))

(assert (=> b!1411279 m!1301157))

(declare-fun m!1301169 () Bool)

(assert (=> b!1411279 m!1301169))

(assert (=> b!1411280 m!1301157))

(assert (=> b!1411280 m!1301157))

(declare-fun m!1301171 () Bool)

(assert (=> b!1411280 m!1301171))

(declare-fun m!1301173 () Bool)

(assert (=> b!1411278 m!1301173))

(declare-fun m!1301175 () Bool)

(assert (=> b!1411277 m!1301175))

(assert (=> b!1411277 m!1301175))

(declare-fun m!1301177 () Bool)

(assert (=> b!1411277 m!1301177))

(declare-fun m!1301179 () Bool)

(assert (=> b!1411281 m!1301179))

(declare-fun m!1301181 () Bool)

(assert (=> b!1411284 m!1301181))

(declare-fun m!1301183 () Bool)

(assert (=> b!1411284 m!1301183))

(assert (=> b!1411284 m!1301183))

(declare-fun m!1301185 () Bool)

(assert (=> b!1411284 m!1301185))

(assert (=> b!1411284 m!1301185))

(assert (=> b!1411284 m!1301183))

(declare-fun m!1301187 () Bool)

(assert (=> b!1411284 m!1301187))

(push 1)

(assert (not start!121508))

(assert (not b!1411285))

(assert (not b!1411277))

(assert (not b!1411281))

(assert (not b!1411280))

(assert (not b!1411278))

(assert (not b!1411279))

(assert (not b!1411282))

(assert (not b!1411284))

(check-sat)

(pop 1)

(push 1)

(check-sat)

