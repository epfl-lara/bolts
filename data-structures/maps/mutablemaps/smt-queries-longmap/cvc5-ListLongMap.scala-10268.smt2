; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120808 () Bool)

(assert start!120808)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96033 0))(
  ( (array!96034 (arr!46360 (Array (_ BitVec 32) (_ BitVec 64))) (size!46911 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96033)

(declare-fun b!1405136 () Bool)

(declare-fun e!795446 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10693 0))(
  ( (MissingZero!10693 (index!45148 (_ BitVec 32))) (Found!10693 (index!45149 (_ BitVec 32))) (Intermediate!10693 (undefined!11505 Bool) (index!45150 (_ BitVec 32)) (x!126775 (_ BitVec 32))) (Undefined!10693) (MissingVacant!10693 (index!45151 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96033 (_ BitVec 32)) SeekEntryResult!10693)

(assert (=> b!1405136 (= e!795446 (= (seekEntryOrOpen!0 (select (arr!46360 a!2901) j!112) a!2901 mask!2840) (Found!10693 j!112)))))

(declare-fun b!1405137 () Bool)

(declare-fun res!943462 () Bool)

(declare-fun e!795445 () Bool)

(assert (=> b!1405137 (=> (not res!943462) (not e!795445))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96033 (_ BitVec 32)) Bool)

(assert (=> b!1405137 (= res!943462 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1405138 () Bool)

(declare-fun res!943461 () Bool)

(assert (=> b!1405138 (=> (not res!943461) (not e!795445))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405138 (= res!943461 (validKeyInArray!0 (select (arr!46360 a!2901) i!1037)))))

(declare-fun b!1405139 () Bool)

(declare-fun res!943463 () Bool)

(assert (=> b!1405139 (=> (not res!943463) (not e!795445))))

(declare-datatypes ((List!33059 0))(
  ( (Nil!33056) (Cons!33055 (h!34309 (_ BitVec 64)) (t!47760 List!33059)) )
))
(declare-fun arrayNoDuplicates!0 (array!96033 (_ BitVec 32) List!33059) Bool)

(assert (=> b!1405139 (= res!943463 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33056))))

(declare-fun res!943465 () Bool)

(assert (=> start!120808 (=> (not res!943465) (not e!795445))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120808 (= res!943465 (validMask!0 mask!2840))))

(assert (=> start!120808 e!795445))

(assert (=> start!120808 true))

(declare-fun array_inv!35305 (array!96033) Bool)

(assert (=> start!120808 (array_inv!35305 a!2901)))

(declare-fun b!1405135 () Bool)

(declare-fun res!943464 () Bool)

(assert (=> b!1405135 (=> (not res!943464) (not e!795445))))

(assert (=> b!1405135 (= res!943464 (and (= (size!46911 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46911 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46911 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1405140 () Bool)

(assert (=> b!1405140 (= e!795445 (not true))))

(assert (=> b!1405140 e!795446))

(declare-fun res!943467 () Bool)

(assert (=> b!1405140 (=> (not res!943467) (not e!795446))))

(assert (=> b!1405140 (= res!943467 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47310 0))(
  ( (Unit!47311) )
))
(declare-fun lt!618903 () Unit!47310)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96033 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47310)

(assert (=> b!1405140 (= lt!618903 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!618904 () SeekEntryResult!10693)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96033 (_ BitVec 32)) SeekEntryResult!10693)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405140 (= lt!618904 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46360 a!2901) j!112) mask!2840) (select (arr!46360 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1405141 () Bool)

(declare-fun res!943466 () Bool)

(assert (=> b!1405141 (=> (not res!943466) (not e!795445))))

(assert (=> b!1405141 (= res!943466 (validKeyInArray!0 (select (arr!46360 a!2901) j!112)))))

(assert (= (and start!120808 res!943465) b!1405135))

(assert (= (and b!1405135 res!943464) b!1405138))

(assert (= (and b!1405138 res!943461) b!1405141))

(assert (= (and b!1405141 res!943466) b!1405137))

(assert (= (and b!1405137 res!943462) b!1405139))

(assert (= (and b!1405139 res!943463) b!1405140))

(assert (= (and b!1405140 res!943467) b!1405136))

(declare-fun m!1293923 () Bool)

(assert (=> b!1405140 m!1293923))

(declare-fun m!1293925 () Bool)

(assert (=> b!1405140 m!1293925))

(assert (=> b!1405140 m!1293923))

(declare-fun m!1293927 () Bool)

(assert (=> b!1405140 m!1293927))

(assert (=> b!1405140 m!1293925))

(assert (=> b!1405140 m!1293923))

(declare-fun m!1293929 () Bool)

(assert (=> b!1405140 m!1293929))

(declare-fun m!1293931 () Bool)

(assert (=> b!1405140 m!1293931))

(declare-fun m!1293933 () Bool)

(assert (=> b!1405137 m!1293933))

(declare-fun m!1293935 () Bool)

(assert (=> start!120808 m!1293935))

(declare-fun m!1293937 () Bool)

(assert (=> start!120808 m!1293937))

(declare-fun m!1293939 () Bool)

(assert (=> b!1405139 m!1293939))

(declare-fun m!1293941 () Bool)

(assert (=> b!1405138 m!1293941))

(assert (=> b!1405138 m!1293941))

(declare-fun m!1293943 () Bool)

(assert (=> b!1405138 m!1293943))

(assert (=> b!1405141 m!1293923))

(assert (=> b!1405141 m!1293923))

(declare-fun m!1293945 () Bool)

(assert (=> b!1405141 m!1293945))

(assert (=> b!1405136 m!1293923))

(assert (=> b!1405136 m!1293923))

(declare-fun m!1293947 () Bool)

(assert (=> b!1405136 m!1293947))

(push 1)

(assert (not b!1405136))

(assert (not b!1405137))

(assert (not b!1405139))

(assert (not b!1405140))

(assert (not b!1405141))

(assert (not b!1405138))

(assert (not start!120808))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

