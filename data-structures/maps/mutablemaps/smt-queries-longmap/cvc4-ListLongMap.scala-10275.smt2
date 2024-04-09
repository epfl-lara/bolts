; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120854 () Bool)

(assert start!120854)

(declare-fun b!1405626 () Bool)

(declare-fun e!795659 () Bool)

(assert (=> b!1405626 (= e!795659 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96079 0))(
  ( (array!96080 (arr!46383 (Array (_ BitVec 32) (_ BitVec 64))) (size!46934 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96079)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lt!619049 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405626 (= lt!619049 (toIndex!0 (select (store (arr!46383 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840))))

(declare-fun b!1405627 () Bool)

(declare-fun res!943954 () Bool)

(declare-fun e!795660 () Bool)

(assert (=> b!1405627 (=> (not res!943954) (not e!795660))))

(declare-datatypes ((List!33082 0))(
  ( (Nil!33079) (Cons!33078 (h!34332 (_ BitVec 64)) (t!47783 List!33082)) )
))
(declare-fun arrayNoDuplicates!0 (array!96079 (_ BitVec 32) List!33082) Bool)

(assert (=> b!1405627 (= res!943954 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33079))))

(declare-fun e!795662 () Bool)

(declare-fun b!1405628 () Bool)

(declare-datatypes ((SeekEntryResult!10716 0))(
  ( (MissingZero!10716 (index!45240 (_ BitVec 32))) (Found!10716 (index!45241 (_ BitVec 32))) (Intermediate!10716 (undefined!11528 Bool) (index!45242 (_ BitVec 32)) (x!126854 (_ BitVec 32))) (Undefined!10716) (MissingVacant!10716 (index!45243 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96079 (_ BitVec 32)) SeekEntryResult!10716)

(assert (=> b!1405628 (= e!795662 (= (seekEntryOrOpen!0 (select (arr!46383 a!2901) j!112) a!2901 mask!2840) (Found!10716 j!112)))))

(declare-fun b!1405629 () Bool)

(declare-fun res!943958 () Bool)

(assert (=> b!1405629 (=> (not res!943958) (not e!795660))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405629 (= res!943958 (validKeyInArray!0 (select (arr!46383 a!2901) i!1037)))))

(declare-fun res!943952 () Bool)

(assert (=> start!120854 (=> (not res!943952) (not e!795660))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120854 (= res!943952 (validMask!0 mask!2840))))

(assert (=> start!120854 e!795660))

(assert (=> start!120854 true))

(declare-fun array_inv!35328 (array!96079) Bool)

(assert (=> start!120854 (array_inv!35328 a!2901)))

(declare-fun b!1405630 () Bool)

(declare-fun res!943953 () Bool)

(assert (=> b!1405630 (=> (not res!943953) (not e!795660))))

(assert (=> b!1405630 (= res!943953 (validKeyInArray!0 (select (arr!46383 a!2901) j!112)))))

(declare-fun b!1405631 () Bool)

(declare-fun res!943955 () Bool)

(assert (=> b!1405631 (=> (not res!943955) (not e!795660))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96079 (_ BitVec 32)) Bool)

(assert (=> b!1405631 (= res!943955 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1405632 () Bool)

(assert (=> b!1405632 (= e!795660 (not e!795659))))

(declare-fun res!943956 () Bool)

(assert (=> b!1405632 (=> res!943956 e!795659)))

(declare-fun lt!619050 () SeekEntryResult!10716)

(assert (=> b!1405632 (= res!943956 (or (not (is-Intermediate!10716 lt!619050)) (undefined!11528 lt!619050)))))

(assert (=> b!1405632 e!795662))

(declare-fun res!943959 () Bool)

(assert (=> b!1405632 (=> (not res!943959) (not e!795662))))

(assert (=> b!1405632 (= res!943959 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47356 0))(
  ( (Unit!47357) )
))
(declare-fun lt!619051 () Unit!47356)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96079 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47356)

(assert (=> b!1405632 (= lt!619051 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96079 (_ BitVec 32)) SeekEntryResult!10716)

(assert (=> b!1405632 (= lt!619050 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46383 a!2901) j!112) mask!2840) (select (arr!46383 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1405633 () Bool)

(declare-fun res!943957 () Bool)

(assert (=> b!1405633 (=> (not res!943957) (not e!795660))))

(assert (=> b!1405633 (= res!943957 (and (= (size!46934 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46934 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46934 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!120854 res!943952) b!1405633))

(assert (= (and b!1405633 res!943957) b!1405629))

(assert (= (and b!1405629 res!943958) b!1405630))

(assert (= (and b!1405630 res!943953) b!1405631))

(assert (= (and b!1405631 res!943955) b!1405627))

(assert (= (and b!1405627 res!943954) b!1405632))

(assert (= (and b!1405632 res!943959) b!1405628))

(assert (= (and b!1405632 (not res!943956)) b!1405626))

(declare-fun m!1294533 () Bool)

(assert (=> b!1405627 m!1294533))

(declare-fun m!1294535 () Bool)

(assert (=> b!1405629 m!1294535))

(assert (=> b!1405629 m!1294535))

(declare-fun m!1294537 () Bool)

(assert (=> b!1405629 m!1294537))

(declare-fun m!1294539 () Bool)

(assert (=> b!1405626 m!1294539))

(declare-fun m!1294541 () Bool)

(assert (=> b!1405626 m!1294541))

(assert (=> b!1405626 m!1294541))

(declare-fun m!1294543 () Bool)

(assert (=> b!1405626 m!1294543))

(declare-fun m!1294545 () Bool)

(assert (=> b!1405631 m!1294545))

(declare-fun m!1294547 () Bool)

(assert (=> b!1405630 m!1294547))

(assert (=> b!1405630 m!1294547))

(declare-fun m!1294549 () Bool)

(assert (=> b!1405630 m!1294549))

(assert (=> b!1405632 m!1294547))

(declare-fun m!1294551 () Bool)

(assert (=> b!1405632 m!1294551))

(assert (=> b!1405632 m!1294547))

(declare-fun m!1294553 () Bool)

(assert (=> b!1405632 m!1294553))

(assert (=> b!1405632 m!1294551))

(assert (=> b!1405632 m!1294547))

(declare-fun m!1294555 () Bool)

(assert (=> b!1405632 m!1294555))

(declare-fun m!1294557 () Bool)

(assert (=> b!1405632 m!1294557))

(declare-fun m!1294559 () Bool)

(assert (=> start!120854 m!1294559))

(declare-fun m!1294561 () Bool)

(assert (=> start!120854 m!1294561))

(assert (=> b!1405628 m!1294547))

(assert (=> b!1405628 m!1294547))

(declare-fun m!1294563 () Bool)

(assert (=> b!1405628 m!1294563))

(push 1)

(assert (not start!120854))

(assert (not b!1405626))

(assert (not b!1405632))

(assert (not b!1405627))

(assert (not b!1405631))

(assert (not b!1405628))

(assert (not b!1405629))

(assert (not b!1405630))

(check-sat)

(pop 1)

(push 1)

