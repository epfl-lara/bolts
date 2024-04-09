; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121470 () Bool)

(assert start!121470)

(declare-fun res!948080 () Bool)

(declare-fun e!798368 () Bool)

(assert (=> start!121470 (=> (not res!948080) (not e!798368))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121470 (= res!948080 (validMask!0 mask!2840))))

(assert (=> start!121470 e!798368))

(assert (=> start!121470 true))

(declare-datatypes ((array!96389 0))(
  ( (array!96390 (arr!46529 (Array (_ BitVec 32) (_ BitVec 64))) (size!47080 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96389)

(declare-fun array_inv!35474 (array!96389) Bool)

(assert (=> start!121470 (array_inv!35474 a!2901)))

(declare-fun b!1410741 () Bool)

(declare-fun res!948079 () Bool)

(assert (=> b!1410741 (=> (not res!948079) (not e!798368))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1410741 (= res!948079 (and (= (size!47080 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47080 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47080 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1410742 () Bool)

(declare-fun res!948083 () Bool)

(assert (=> b!1410742 (=> (not res!948083) (not e!798368))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96389 (_ BitVec 32)) Bool)

(assert (=> b!1410742 (= res!948083 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1410743 () Bool)

(declare-fun res!948077 () Bool)

(assert (=> b!1410743 (=> (not res!948077) (not e!798368))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1410743 (= res!948077 (validKeyInArray!0 (select (arr!46529 a!2901) i!1037)))))

(declare-fun b!1410744 () Bool)

(declare-fun e!798367 () Bool)

(assert (=> b!1410744 (= e!798367 true)))

(declare-datatypes ((SeekEntryResult!10862 0))(
  ( (MissingZero!10862 (index!45824 (_ BitVec 32))) (Found!10862 (index!45825 (_ BitVec 32))) (Intermediate!10862 (undefined!11674 Bool) (index!45826 (_ BitVec 32)) (x!127428 (_ BitVec 32))) (Undefined!10862) (MissingVacant!10862 (index!45827 (_ BitVec 32))) )
))
(declare-fun lt!621292 () SeekEntryResult!10862)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96389 (_ BitVec 32)) SeekEntryResult!10862)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1410744 (= lt!621292 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46529 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46529 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96390 (store (arr!46529 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47080 a!2901)) mask!2840))))

(declare-fun e!798365 () Bool)

(declare-fun b!1410745 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96389 (_ BitVec 32)) SeekEntryResult!10862)

(assert (=> b!1410745 (= e!798365 (= (seekEntryOrOpen!0 (select (arr!46529 a!2901) j!112) a!2901 mask!2840) (Found!10862 j!112)))))

(declare-fun b!1410746 () Bool)

(declare-fun res!948084 () Bool)

(assert (=> b!1410746 (=> (not res!948084) (not e!798368))))

(declare-datatypes ((List!33228 0))(
  ( (Nil!33225) (Cons!33224 (h!34496 (_ BitVec 64)) (t!47929 List!33228)) )
))
(declare-fun arrayNoDuplicates!0 (array!96389 (_ BitVec 32) List!33228) Bool)

(assert (=> b!1410746 (= res!948084 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33225))))

(declare-fun b!1410747 () Bool)

(assert (=> b!1410747 (= e!798368 (not e!798367))))

(declare-fun res!948082 () Bool)

(assert (=> b!1410747 (=> res!948082 e!798367)))

(declare-fun lt!621291 () SeekEntryResult!10862)

(get-info :version)

(assert (=> b!1410747 (= res!948082 (or (not ((_ is Intermediate!10862) lt!621291)) (undefined!11674 lt!621291)))))

(assert (=> b!1410747 e!798365))

(declare-fun res!948081 () Bool)

(assert (=> b!1410747 (=> (not res!948081) (not e!798365))))

(assert (=> b!1410747 (= res!948081 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47648 0))(
  ( (Unit!47649) )
))
(declare-fun lt!621290 () Unit!47648)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96389 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47648)

(assert (=> b!1410747 (= lt!621290 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1410747 (= lt!621291 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46529 a!2901) j!112) mask!2840) (select (arr!46529 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1410748 () Bool)

(declare-fun res!948078 () Bool)

(assert (=> b!1410748 (=> (not res!948078) (not e!798368))))

(assert (=> b!1410748 (= res!948078 (validKeyInArray!0 (select (arr!46529 a!2901) j!112)))))

(assert (= (and start!121470 res!948080) b!1410741))

(assert (= (and b!1410741 res!948079) b!1410743))

(assert (= (and b!1410743 res!948077) b!1410748))

(assert (= (and b!1410748 res!948078) b!1410742))

(assert (= (and b!1410742 res!948083) b!1410746))

(assert (= (and b!1410746 res!948084) b!1410747))

(assert (= (and b!1410747 res!948081) b!1410745))

(assert (= (and b!1410747 (not res!948082)) b!1410744))

(declare-fun m!1300473 () Bool)

(assert (=> b!1410748 m!1300473))

(assert (=> b!1410748 m!1300473))

(declare-fun m!1300475 () Bool)

(assert (=> b!1410748 m!1300475))

(declare-fun m!1300477 () Bool)

(assert (=> b!1410743 m!1300477))

(assert (=> b!1410743 m!1300477))

(declare-fun m!1300479 () Bool)

(assert (=> b!1410743 m!1300479))

(declare-fun m!1300481 () Bool)

(assert (=> b!1410742 m!1300481))

(assert (=> b!1410745 m!1300473))

(assert (=> b!1410745 m!1300473))

(declare-fun m!1300483 () Bool)

(assert (=> b!1410745 m!1300483))

(assert (=> b!1410747 m!1300473))

(declare-fun m!1300485 () Bool)

(assert (=> b!1410747 m!1300485))

(assert (=> b!1410747 m!1300473))

(declare-fun m!1300487 () Bool)

(assert (=> b!1410747 m!1300487))

(assert (=> b!1410747 m!1300485))

(assert (=> b!1410747 m!1300473))

(declare-fun m!1300489 () Bool)

(assert (=> b!1410747 m!1300489))

(declare-fun m!1300491 () Bool)

(assert (=> b!1410747 m!1300491))

(declare-fun m!1300493 () Bool)

(assert (=> b!1410744 m!1300493))

(declare-fun m!1300495 () Bool)

(assert (=> b!1410744 m!1300495))

(assert (=> b!1410744 m!1300495))

(declare-fun m!1300497 () Bool)

(assert (=> b!1410744 m!1300497))

(assert (=> b!1410744 m!1300497))

(assert (=> b!1410744 m!1300495))

(declare-fun m!1300499 () Bool)

(assert (=> b!1410744 m!1300499))

(declare-fun m!1300501 () Bool)

(assert (=> start!121470 m!1300501))

(declare-fun m!1300503 () Bool)

(assert (=> start!121470 m!1300503))

(declare-fun m!1300505 () Bool)

(assert (=> b!1410746 m!1300505))

(check-sat (not b!1410743) (not b!1410746) (not b!1410748) (not b!1410744) (not start!121470) (not b!1410745) (not b!1410747) (not b!1410742))
