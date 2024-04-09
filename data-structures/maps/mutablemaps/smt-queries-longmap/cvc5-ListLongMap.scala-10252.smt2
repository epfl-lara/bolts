; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120604 () Bool)

(assert start!120604)

(declare-fun b!1403762 () Bool)

(declare-fun res!942383 () Bool)

(declare-fun e!794805 () Bool)

(assert (=> b!1403762 (=> (not res!942383) (not e!794805))))

(declare-datatypes ((array!95931 0))(
  ( (array!95932 (arr!46312 (Array (_ BitVec 32) (_ BitVec 64))) (size!46863 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95931)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403762 (= res!942383 (validKeyInArray!0 (select (arr!46312 a!2901) i!1037)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun e!794806 () Bool)

(declare-fun b!1403763 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10651 0))(
  ( (MissingZero!10651 (index!44980 (_ BitVec 32))) (Found!10651 (index!44981 (_ BitVec 32))) (Intermediate!10651 (undefined!11463 Bool) (index!44982 (_ BitVec 32)) (x!126593 (_ BitVec 32))) (Undefined!10651) (MissingVacant!10651 (index!44983 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95931 (_ BitVec 32)) SeekEntryResult!10651)

(assert (=> b!1403763 (= e!794806 (= (seekEntryOrOpen!0 (select (arr!46312 a!2901) j!112) a!2901 mask!2840) (Found!10651 j!112)))))

(declare-fun b!1403764 () Bool)

(assert (=> b!1403764 (= e!794805 (not true))))

(assert (=> b!1403764 e!794806))

(declare-fun res!942381 () Bool)

(assert (=> b!1403764 (=> (not res!942381) (not e!794806))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95931 (_ BitVec 32)) Bool)

(assert (=> b!1403764 (= res!942381 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47256 0))(
  ( (Unit!47257) )
))
(declare-fun lt!618462 () Unit!47256)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95931 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47256)

(assert (=> b!1403764 (= lt!618462 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!618463 () SeekEntryResult!10651)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95931 (_ BitVec 32)) SeekEntryResult!10651)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403764 (= lt!618463 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46312 a!2901) j!112) mask!2840) (select (arr!46312 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1403765 () Bool)

(declare-fun res!942386 () Bool)

(assert (=> b!1403765 (=> (not res!942386) (not e!794805))))

(assert (=> b!1403765 (= res!942386 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403761 () Bool)

(declare-fun res!942382 () Bool)

(assert (=> b!1403761 (=> (not res!942382) (not e!794805))))

(assert (=> b!1403761 (= res!942382 (and (= (size!46863 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46863 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46863 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!942387 () Bool)

(assert (=> start!120604 (=> (not res!942387) (not e!794805))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120604 (= res!942387 (validMask!0 mask!2840))))

(assert (=> start!120604 e!794805))

(assert (=> start!120604 true))

(declare-fun array_inv!35257 (array!95931) Bool)

(assert (=> start!120604 (array_inv!35257 a!2901)))

(declare-fun b!1403766 () Bool)

(declare-fun res!942385 () Bool)

(assert (=> b!1403766 (=> (not res!942385) (not e!794805))))

(assert (=> b!1403766 (= res!942385 (validKeyInArray!0 (select (arr!46312 a!2901) j!112)))))

(declare-fun b!1403767 () Bool)

(declare-fun res!942384 () Bool)

(assert (=> b!1403767 (=> (not res!942384) (not e!794805))))

(declare-datatypes ((List!33011 0))(
  ( (Nil!33008) (Cons!33007 (h!34255 (_ BitVec 64)) (t!47712 List!33011)) )
))
(declare-fun arrayNoDuplicates!0 (array!95931 (_ BitVec 32) List!33011) Bool)

(assert (=> b!1403767 (= res!942384 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33008))))

(assert (= (and start!120604 res!942387) b!1403761))

(assert (= (and b!1403761 res!942382) b!1403762))

(assert (= (and b!1403762 res!942383) b!1403766))

(assert (= (and b!1403766 res!942385) b!1403765))

(assert (= (and b!1403765 res!942386) b!1403767))

(assert (= (and b!1403767 res!942384) b!1403764))

(assert (= (and b!1403764 res!942381) b!1403763))

(declare-fun m!1292573 () Bool)

(assert (=> b!1403764 m!1292573))

(declare-fun m!1292575 () Bool)

(assert (=> b!1403764 m!1292575))

(assert (=> b!1403764 m!1292573))

(declare-fun m!1292577 () Bool)

(assert (=> b!1403764 m!1292577))

(assert (=> b!1403764 m!1292575))

(assert (=> b!1403764 m!1292573))

(declare-fun m!1292579 () Bool)

(assert (=> b!1403764 m!1292579))

(declare-fun m!1292581 () Bool)

(assert (=> b!1403764 m!1292581))

(declare-fun m!1292583 () Bool)

(assert (=> b!1403765 m!1292583))

(assert (=> b!1403763 m!1292573))

(assert (=> b!1403763 m!1292573))

(declare-fun m!1292585 () Bool)

(assert (=> b!1403763 m!1292585))

(declare-fun m!1292587 () Bool)

(assert (=> start!120604 m!1292587))

(declare-fun m!1292589 () Bool)

(assert (=> start!120604 m!1292589))

(assert (=> b!1403766 m!1292573))

(assert (=> b!1403766 m!1292573))

(declare-fun m!1292591 () Bool)

(assert (=> b!1403766 m!1292591))

(declare-fun m!1292593 () Bool)

(assert (=> b!1403767 m!1292593))

(declare-fun m!1292595 () Bool)

(assert (=> b!1403762 m!1292595))

(assert (=> b!1403762 m!1292595))

(declare-fun m!1292597 () Bool)

(assert (=> b!1403762 m!1292597))

(push 1)

(assert (not b!1403763))

(assert (not b!1403765))

(assert (not b!1403762))

(assert (not b!1403764))

(assert (not b!1403767))

(assert (not start!120604))

(assert (not b!1403766))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

