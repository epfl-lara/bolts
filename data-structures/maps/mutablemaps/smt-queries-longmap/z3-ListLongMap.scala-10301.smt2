; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121170 () Bool)

(assert start!121170)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96242 0))(
  ( (array!96243 (arr!46460 (Array (_ BitVec 32) (_ BitVec 64))) (size!47011 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96242)

(declare-fun e!797063 () Bool)

(declare-fun b!1408320 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10793 0))(
  ( (MissingZero!10793 (index!45548 (_ BitVec 32))) (Found!10793 (index!45549 (_ BitVec 32))) (Intermediate!10793 (undefined!11605 Bool) (index!45550 (_ BitVec 32)) (x!127157 (_ BitVec 32))) (Undefined!10793) (MissingVacant!10793 (index!45551 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96242 (_ BitVec 32)) SeekEntryResult!10793)

(assert (=> b!1408320 (= e!797063 (= (seekEntryOrOpen!0 (select (arr!46460 a!2901) j!112) a!2901 mask!2840) (Found!10793 j!112)))))

(declare-fun b!1408321 () Bool)

(declare-fun res!946151 () Bool)

(declare-fun e!797060 () Bool)

(assert (=> b!1408321 (=> (not res!946151) (not e!797060))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1408321 (= res!946151 (and (= (size!47011 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47011 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47011 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1408322 () Bool)

(declare-fun e!797061 () Bool)

(assert (=> b!1408322 (= e!797061 true)))

(declare-fun lt!620275 () SeekEntryResult!10793)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96242 (_ BitVec 32)) SeekEntryResult!10793)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408322 (= lt!620275 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46460 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46460 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96243 (store (arr!46460 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47011 a!2901)) mask!2840))))

(declare-fun b!1408323 () Bool)

(declare-fun res!946153 () Bool)

(assert (=> b!1408323 (=> (not res!946153) (not e!797060))))

(declare-datatypes ((List!33159 0))(
  ( (Nil!33156) (Cons!33155 (h!34418 (_ BitVec 64)) (t!47860 List!33159)) )
))
(declare-fun arrayNoDuplicates!0 (array!96242 (_ BitVec 32) List!33159) Bool)

(assert (=> b!1408323 (= res!946153 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33156))))

(declare-fun b!1408324 () Bool)

(assert (=> b!1408324 (= e!797060 (not e!797061))))

(declare-fun res!946152 () Bool)

(assert (=> b!1408324 (=> res!946152 e!797061)))

(declare-fun lt!620274 () SeekEntryResult!10793)

(get-info :version)

(assert (=> b!1408324 (= res!946152 (or (not ((_ is Intermediate!10793) lt!620274)) (undefined!11605 lt!620274)))))

(assert (=> b!1408324 e!797063))

(declare-fun res!946158 () Bool)

(assert (=> b!1408324 (=> (not res!946158) (not e!797063))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96242 (_ BitVec 32)) Bool)

(assert (=> b!1408324 (= res!946158 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47510 0))(
  ( (Unit!47511) )
))
(declare-fun lt!620273 () Unit!47510)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96242 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47510)

(assert (=> b!1408324 (= lt!620273 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1408324 (= lt!620274 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46460 a!2901) j!112) mask!2840) (select (arr!46460 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1408325 () Bool)

(declare-fun res!946155 () Bool)

(assert (=> b!1408325 (=> (not res!946155) (not e!797060))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408325 (= res!946155 (validKeyInArray!0 (select (arr!46460 a!2901) j!112)))))

(declare-fun res!946156 () Bool)

(assert (=> start!121170 (=> (not res!946156) (not e!797060))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121170 (= res!946156 (validMask!0 mask!2840))))

(assert (=> start!121170 e!797060))

(assert (=> start!121170 true))

(declare-fun array_inv!35405 (array!96242) Bool)

(assert (=> start!121170 (array_inv!35405 a!2901)))

(declare-fun b!1408326 () Bool)

(declare-fun res!946157 () Bool)

(assert (=> b!1408326 (=> (not res!946157) (not e!797060))))

(assert (=> b!1408326 (= res!946157 (validKeyInArray!0 (select (arr!46460 a!2901) i!1037)))))

(declare-fun b!1408327 () Bool)

(declare-fun res!946154 () Bool)

(assert (=> b!1408327 (=> (not res!946154) (not e!797060))))

(assert (=> b!1408327 (= res!946154 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!121170 res!946156) b!1408321))

(assert (= (and b!1408321 res!946151) b!1408326))

(assert (= (and b!1408326 res!946157) b!1408325))

(assert (= (and b!1408325 res!946155) b!1408327))

(assert (= (and b!1408327 res!946154) b!1408323))

(assert (= (and b!1408323 res!946153) b!1408324))

(assert (= (and b!1408324 res!946158) b!1408320))

(assert (= (and b!1408324 (not res!946152)) b!1408322))

(declare-fun m!1297665 () Bool)

(assert (=> b!1408324 m!1297665))

(declare-fun m!1297667 () Bool)

(assert (=> b!1408324 m!1297667))

(assert (=> b!1408324 m!1297665))

(declare-fun m!1297669 () Bool)

(assert (=> b!1408324 m!1297669))

(assert (=> b!1408324 m!1297667))

(assert (=> b!1408324 m!1297665))

(declare-fun m!1297671 () Bool)

(assert (=> b!1408324 m!1297671))

(declare-fun m!1297673 () Bool)

(assert (=> b!1408324 m!1297673))

(declare-fun m!1297675 () Bool)

(assert (=> b!1408326 m!1297675))

(assert (=> b!1408326 m!1297675))

(declare-fun m!1297677 () Bool)

(assert (=> b!1408326 m!1297677))

(declare-fun m!1297679 () Bool)

(assert (=> b!1408323 m!1297679))

(assert (=> b!1408325 m!1297665))

(assert (=> b!1408325 m!1297665))

(declare-fun m!1297681 () Bool)

(assert (=> b!1408325 m!1297681))

(declare-fun m!1297683 () Bool)

(assert (=> b!1408322 m!1297683))

(declare-fun m!1297685 () Bool)

(assert (=> b!1408322 m!1297685))

(assert (=> b!1408322 m!1297685))

(declare-fun m!1297687 () Bool)

(assert (=> b!1408322 m!1297687))

(assert (=> b!1408322 m!1297687))

(assert (=> b!1408322 m!1297685))

(declare-fun m!1297689 () Bool)

(assert (=> b!1408322 m!1297689))

(assert (=> b!1408320 m!1297665))

(assert (=> b!1408320 m!1297665))

(declare-fun m!1297691 () Bool)

(assert (=> b!1408320 m!1297691))

(declare-fun m!1297693 () Bool)

(assert (=> start!121170 m!1297693))

(declare-fun m!1297695 () Bool)

(assert (=> start!121170 m!1297695))

(declare-fun m!1297697 () Bool)

(assert (=> b!1408327 m!1297697))

(check-sat (not b!1408320) (not b!1408327) (not b!1408322) (not b!1408324) (not start!121170) (not b!1408325) (not b!1408323) (not b!1408326))
(check-sat)
