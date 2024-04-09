; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121252 () Bool)

(assert start!121252)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun e!797553 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun b!1409304 () Bool)

(declare-datatypes ((array!96324 0))(
  ( (array!96325 (arr!46501 (Array (_ BitVec 32) (_ BitVec 64))) (size!47052 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96324)

(declare-datatypes ((SeekEntryResult!10834 0))(
  ( (MissingZero!10834 (index!45712 (_ BitVec 32))) (Found!10834 (index!45713 (_ BitVec 32))) (Intermediate!10834 (undefined!11646 Bool) (index!45714 (_ BitVec 32)) (x!127310 (_ BitVec 32))) (Undefined!10834) (MissingVacant!10834 (index!45715 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96324 (_ BitVec 32)) SeekEntryResult!10834)

(assert (=> b!1409304 (= e!797553 (= (seekEntryOrOpen!0 (select (arr!46501 a!2901) j!112) a!2901 mask!2840) (Found!10834 j!112)))))

(declare-fun b!1409305 () Bool)

(declare-fun res!947139 () Bool)

(declare-fun e!797554 () Bool)

(assert (=> b!1409305 (=> (not res!947139) (not e!797554))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1409305 (= res!947139 (validKeyInArray!0 (select (arr!46501 a!2901) i!1037)))))

(declare-fun b!1409306 () Bool)

(declare-fun res!947137 () Bool)

(assert (=> b!1409306 (=> (not res!947137) (not e!797554))))

(declare-datatypes ((List!33200 0))(
  ( (Nil!33197) (Cons!33196 (h!34459 (_ BitVec 64)) (t!47901 List!33200)) )
))
(declare-fun arrayNoDuplicates!0 (array!96324 (_ BitVec 32) List!33200) Bool)

(assert (=> b!1409306 (= res!947137 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33197))))

(declare-fun b!1409307 () Bool)

(declare-fun res!947138 () Bool)

(assert (=> b!1409307 (=> (not res!947138) (not e!797554))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96324 (_ BitVec 32)) Bool)

(assert (=> b!1409307 (= res!947138 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1409308 () Bool)

(declare-fun res!947141 () Bool)

(assert (=> b!1409308 (=> (not res!947141) (not e!797554))))

(assert (=> b!1409308 (= res!947141 (validKeyInArray!0 (select (arr!46501 a!2901) j!112)))))

(declare-fun b!1409309 () Bool)

(declare-fun e!797555 () Bool)

(assert (=> b!1409309 (= e!797554 (not e!797555))))

(declare-fun res!947136 () Bool)

(assert (=> b!1409309 (=> res!947136 e!797555)))

(declare-fun lt!620644 () SeekEntryResult!10834)

(assert (=> b!1409309 (= res!947136 (or (not (is-Intermediate!10834 lt!620644)) (undefined!11646 lt!620644)))))

(assert (=> b!1409309 e!797553))

(declare-fun res!947135 () Bool)

(assert (=> b!1409309 (=> (not res!947135) (not e!797553))))

(assert (=> b!1409309 (= res!947135 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47592 0))(
  ( (Unit!47593) )
))
(declare-fun lt!620642 () Unit!47592)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96324 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47592)

(assert (=> b!1409309 (= lt!620642 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96324 (_ BitVec 32)) SeekEntryResult!10834)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1409309 (= lt!620644 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46501 a!2901) j!112) mask!2840) (select (arr!46501 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1409310 () Bool)

(assert (=> b!1409310 (= e!797555 true)))

(declare-fun lt!620643 () SeekEntryResult!10834)

(assert (=> b!1409310 (= lt!620643 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46501 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46501 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96325 (store (arr!46501 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47052 a!2901)) mask!2840))))

(declare-fun res!947142 () Bool)

(assert (=> start!121252 (=> (not res!947142) (not e!797554))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121252 (= res!947142 (validMask!0 mask!2840))))

(assert (=> start!121252 e!797554))

(assert (=> start!121252 true))

(declare-fun array_inv!35446 (array!96324) Bool)

(assert (=> start!121252 (array_inv!35446 a!2901)))

(declare-fun b!1409311 () Bool)

(declare-fun res!947140 () Bool)

(assert (=> b!1409311 (=> (not res!947140) (not e!797554))))

(assert (=> b!1409311 (= res!947140 (and (= (size!47052 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47052 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47052 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!121252 res!947142) b!1409311))

(assert (= (and b!1409311 res!947140) b!1409305))

(assert (= (and b!1409305 res!947139) b!1409308))

(assert (= (and b!1409308 res!947141) b!1409307))

(assert (= (and b!1409307 res!947138) b!1409306))

(assert (= (and b!1409306 res!947137) b!1409309))

(assert (= (and b!1409309 res!947135) b!1409304))

(assert (= (and b!1409309 (not res!947136)) b!1409310))

(declare-fun m!1299059 () Bool)

(assert (=> b!1409307 m!1299059))

(declare-fun m!1299061 () Bool)

(assert (=> start!121252 m!1299061))

(declare-fun m!1299063 () Bool)

(assert (=> start!121252 m!1299063))

(declare-fun m!1299065 () Bool)

(assert (=> b!1409310 m!1299065))

(declare-fun m!1299067 () Bool)

(assert (=> b!1409310 m!1299067))

(assert (=> b!1409310 m!1299067))

(declare-fun m!1299069 () Bool)

(assert (=> b!1409310 m!1299069))

(assert (=> b!1409310 m!1299069))

(assert (=> b!1409310 m!1299067))

(declare-fun m!1299071 () Bool)

(assert (=> b!1409310 m!1299071))

(declare-fun m!1299073 () Bool)

(assert (=> b!1409309 m!1299073))

(declare-fun m!1299075 () Bool)

(assert (=> b!1409309 m!1299075))

(assert (=> b!1409309 m!1299073))

(declare-fun m!1299077 () Bool)

(assert (=> b!1409309 m!1299077))

(assert (=> b!1409309 m!1299075))

(assert (=> b!1409309 m!1299073))

(declare-fun m!1299079 () Bool)

(assert (=> b!1409309 m!1299079))

(declare-fun m!1299081 () Bool)

(assert (=> b!1409309 m!1299081))

(declare-fun m!1299083 () Bool)

(assert (=> b!1409306 m!1299083))

(declare-fun m!1299085 () Bool)

(assert (=> b!1409305 m!1299085))

(assert (=> b!1409305 m!1299085))

(declare-fun m!1299087 () Bool)

(assert (=> b!1409305 m!1299087))

(assert (=> b!1409304 m!1299073))

(assert (=> b!1409304 m!1299073))

(declare-fun m!1299089 () Bool)

(assert (=> b!1409304 m!1299089))

(assert (=> b!1409308 m!1299073))

(assert (=> b!1409308 m!1299073))

(declare-fun m!1299091 () Bool)

(assert (=> b!1409308 m!1299091))

(push 1)

(assert (not b!1409307))

(assert (not b!1409308))

(assert (not b!1409310))

(assert (not start!121252))

(assert (not b!1409304))

(assert (not b!1409309))

(assert (not b!1409305))

(assert (not b!1409306))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

