; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122134 () Bool)

(assert start!122134)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun e!801854 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun b!1416720 () Bool)

(declare-datatypes ((array!96687 0))(
  ( (array!96688 (arr!46669 (Array (_ BitVec 32) (_ BitVec 64))) (size!47220 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96687)

(declare-datatypes ((SeekEntryResult!11002 0))(
  ( (MissingZero!11002 (index!46399 (_ BitVec 32))) (Found!11002 (index!46400 (_ BitVec 32))) (Intermediate!11002 (undefined!11814 Bool) (index!46401 (_ BitVec 32)) (x!128010 (_ BitVec 32))) (Undefined!11002) (MissingVacant!11002 (index!46402 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96687 (_ BitVec 32)) SeekEntryResult!11002)

(assert (=> b!1416720 (= e!801854 (= (seekEntryOrOpen!0 (select (arr!46669 a!2901) j!112) a!2901 mask!2840) (Found!11002 j!112)))))

(declare-fun b!1416721 () Bool)

(declare-fun res!952706 () Bool)

(declare-fun e!801857 () Bool)

(assert (=> b!1416721 (=> (not res!952706) (not e!801857))))

(declare-datatypes ((List!33368 0))(
  ( (Nil!33365) (Cons!33364 (h!34654 (_ BitVec 64)) (t!48069 List!33368)) )
))
(declare-fun arrayNoDuplicates!0 (array!96687 (_ BitVec 32) List!33368) Bool)

(assert (=> b!1416721 (= res!952706 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33365))))

(declare-fun b!1416722 () Bool)

(declare-fun e!801856 () Bool)

(assert (=> b!1416722 (= e!801857 (not e!801856))))

(declare-fun res!952708 () Bool)

(assert (=> b!1416722 (=> res!952708 e!801856)))

(declare-fun lt!625063 () SeekEntryResult!11002)

(assert (=> b!1416722 (= res!952708 (or (not (is-Intermediate!11002 lt!625063)) (undefined!11814 lt!625063)))))

(assert (=> b!1416722 e!801854))

(declare-fun res!952710 () Bool)

(assert (=> b!1416722 (=> (not res!952710) (not e!801854))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96687 (_ BitVec 32)) Bool)

(assert (=> b!1416722 (= res!952710 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47928 0))(
  ( (Unit!47929) )
))
(declare-fun lt!625062 () Unit!47928)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96687 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47928)

(assert (=> b!1416722 (= lt!625062 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96687 (_ BitVec 32)) SeekEntryResult!11002)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1416722 (= lt!625063 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46669 a!2901) j!112) mask!2840) (select (arr!46669 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1416723 () Bool)

(declare-fun res!952713 () Bool)

(assert (=> b!1416723 (=> (not res!952713) (not e!801857))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1416723 (= res!952713 (and (= (size!47220 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47220 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47220 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!952707 () Bool)

(assert (=> start!122134 (=> (not res!952707) (not e!801857))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122134 (= res!952707 (validMask!0 mask!2840))))

(assert (=> start!122134 e!801857))

(assert (=> start!122134 true))

(declare-fun array_inv!35614 (array!96687) Bool)

(assert (=> start!122134 (array_inv!35614 a!2901)))

(declare-fun b!1416724 () Bool)

(declare-fun res!952712 () Bool)

(assert (=> b!1416724 (=> (not res!952712) (not e!801857))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1416724 (= res!952712 (validKeyInArray!0 (select (arr!46669 a!2901) j!112)))))

(declare-fun b!1416725 () Bool)

(declare-fun res!952711 () Bool)

(assert (=> b!1416725 (=> (not res!952711) (not e!801857))))

(assert (=> b!1416725 (= res!952711 (validKeyInArray!0 (select (arr!46669 a!2901) i!1037)))))

(declare-fun b!1416726 () Bool)

(declare-fun res!952709 () Bool)

(assert (=> b!1416726 (=> (not res!952709) (not e!801857))))

(assert (=> b!1416726 (= res!952709 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1416727 () Bool)

(assert (=> b!1416727 (= e!801856 true)))

(declare-fun lt!625061 () SeekEntryResult!11002)

(assert (=> b!1416727 (= lt!625061 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46669 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46669 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96688 (store (arr!46669 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47220 a!2901)) mask!2840))))

(assert (= (and start!122134 res!952707) b!1416723))

(assert (= (and b!1416723 res!952713) b!1416725))

(assert (= (and b!1416725 res!952711) b!1416724))

(assert (= (and b!1416724 res!952712) b!1416726))

(assert (= (and b!1416726 res!952709) b!1416721))

(assert (= (and b!1416721 res!952706) b!1416722))

(assert (= (and b!1416722 res!952710) b!1416720))

(assert (= (and b!1416722 (not res!952708)) b!1416727))

(declare-fun m!1307447 () Bool)

(assert (=> start!122134 m!1307447))

(declare-fun m!1307449 () Bool)

(assert (=> start!122134 m!1307449))

(declare-fun m!1307451 () Bool)

(assert (=> b!1416726 m!1307451))

(declare-fun m!1307453 () Bool)

(assert (=> b!1416727 m!1307453))

(declare-fun m!1307455 () Bool)

(assert (=> b!1416727 m!1307455))

(assert (=> b!1416727 m!1307455))

(declare-fun m!1307457 () Bool)

(assert (=> b!1416727 m!1307457))

(assert (=> b!1416727 m!1307457))

(assert (=> b!1416727 m!1307455))

(declare-fun m!1307459 () Bool)

(assert (=> b!1416727 m!1307459))

(declare-fun m!1307461 () Bool)

(assert (=> b!1416724 m!1307461))

(assert (=> b!1416724 m!1307461))

(declare-fun m!1307463 () Bool)

(assert (=> b!1416724 m!1307463))

(declare-fun m!1307465 () Bool)

(assert (=> b!1416725 m!1307465))

(assert (=> b!1416725 m!1307465))

(declare-fun m!1307467 () Bool)

(assert (=> b!1416725 m!1307467))

(declare-fun m!1307469 () Bool)

(assert (=> b!1416721 m!1307469))

(assert (=> b!1416720 m!1307461))

(assert (=> b!1416720 m!1307461))

(declare-fun m!1307471 () Bool)

(assert (=> b!1416720 m!1307471))

(assert (=> b!1416722 m!1307461))

(declare-fun m!1307473 () Bool)

(assert (=> b!1416722 m!1307473))

(assert (=> b!1416722 m!1307461))

(declare-fun m!1307475 () Bool)

(assert (=> b!1416722 m!1307475))

(assert (=> b!1416722 m!1307473))

(assert (=> b!1416722 m!1307461))

(declare-fun m!1307477 () Bool)

(assert (=> b!1416722 m!1307477))

(declare-fun m!1307479 () Bool)

(assert (=> b!1416722 m!1307479))

(push 1)

(assert (not b!1416727))

(assert (not b!1416720))

(assert (not b!1416725))

(assert (not b!1416721))

(assert (not b!1416724))

(assert (not b!1416722))

(assert (not b!1416726))

(assert (not start!122134))

(check-sat)

(pop 1)

