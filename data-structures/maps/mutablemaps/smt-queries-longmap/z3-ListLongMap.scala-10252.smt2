; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120606 () Bool)

(assert start!120606)

(declare-fun b!1403782 () Bool)

(declare-fun res!942405 () Bool)

(declare-fun e!794816 () Bool)

(assert (=> b!1403782 (=> (not res!942405) (not e!794816))))

(declare-datatypes ((array!95933 0))(
  ( (array!95934 (arr!46313 (Array (_ BitVec 32) (_ BitVec 64))) (size!46864 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95933)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95933 (_ BitVec 32)) Bool)

(assert (=> b!1403782 (= res!942405 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!942407 () Bool)

(assert (=> start!120606 (=> (not res!942407) (not e!794816))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120606 (= res!942407 (validMask!0 mask!2840))))

(assert (=> start!120606 e!794816))

(assert (=> start!120606 true))

(declare-fun array_inv!35258 (array!95933) Bool)

(assert (=> start!120606 (array_inv!35258 a!2901)))

(declare-fun b!1403783 () Bool)

(assert (=> b!1403783 (= e!794816 (not true))))

(declare-fun e!794814 () Bool)

(assert (=> b!1403783 e!794814))

(declare-fun res!942402 () Bool)

(assert (=> b!1403783 (=> (not res!942402) (not e!794814))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1403783 (= res!942402 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47258 0))(
  ( (Unit!47259) )
))
(declare-fun lt!618469 () Unit!47258)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95933 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47258)

(assert (=> b!1403783 (= lt!618469 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10652 0))(
  ( (MissingZero!10652 (index!44984 (_ BitVec 32))) (Found!10652 (index!44985 (_ BitVec 32))) (Intermediate!10652 (undefined!11464 Bool) (index!44986 (_ BitVec 32)) (x!126594 (_ BitVec 32))) (Undefined!10652) (MissingVacant!10652 (index!44987 (_ BitVec 32))) )
))
(declare-fun lt!618468 () SeekEntryResult!10652)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95933 (_ BitVec 32)) SeekEntryResult!10652)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403783 (= lt!618468 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46313 a!2901) j!112) mask!2840) (select (arr!46313 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1403784 () Bool)

(declare-fun res!942406 () Bool)

(assert (=> b!1403784 (=> (not res!942406) (not e!794816))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1403784 (= res!942406 (and (= (size!46864 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46864 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46864 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1403785 () Bool)

(declare-fun res!942403 () Bool)

(assert (=> b!1403785 (=> (not res!942403) (not e!794816))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403785 (= res!942403 (validKeyInArray!0 (select (arr!46313 a!2901) j!112)))))

(declare-fun b!1403786 () Bool)

(declare-fun res!942408 () Bool)

(assert (=> b!1403786 (=> (not res!942408) (not e!794816))))

(declare-datatypes ((List!33012 0))(
  ( (Nil!33009) (Cons!33008 (h!34256 (_ BitVec 64)) (t!47713 List!33012)) )
))
(declare-fun arrayNoDuplicates!0 (array!95933 (_ BitVec 32) List!33012) Bool)

(assert (=> b!1403786 (= res!942408 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33009))))

(declare-fun b!1403787 () Bool)

(declare-fun res!942404 () Bool)

(assert (=> b!1403787 (=> (not res!942404) (not e!794816))))

(assert (=> b!1403787 (= res!942404 (validKeyInArray!0 (select (arr!46313 a!2901) i!1037)))))

(declare-fun b!1403788 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95933 (_ BitVec 32)) SeekEntryResult!10652)

(assert (=> b!1403788 (= e!794814 (= (seekEntryOrOpen!0 (select (arr!46313 a!2901) j!112) a!2901 mask!2840) (Found!10652 j!112)))))

(assert (= (and start!120606 res!942407) b!1403784))

(assert (= (and b!1403784 res!942406) b!1403787))

(assert (= (and b!1403787 res!942404) b!1403785))

(assert (= (and b!1403785 res!942403) b!1403782))

(assert (= (and b!1403782 res!942405) b!1403786))

(assert (= (and b!1403786 res!942408) b!1403783))

(assert (= (and b!1403783 res!942402) b!1403788))

(declare-fun m!1292599 () Bool)

(assert (=> b!1403788 m!1292599))

(assert (=> b!1403788 m!1292599))

(declare-fun m!1292601 () Bool)

(assert (=> b!1403788 m!1292601))

(assert (=> b!1403783 m!1292599))

(declare-fun m!1292603 () Bool)

(assert (=> b!1403783 m!1292603))

(assert (=> b!1403783 m!1292599))

(declare-fun m!1292605 () Bool)

(assert (=> b!1403783 m!1292605))

(assert (=> b!1403783 m!1292603))

(assert (=> b!1403783 m!1292599))

(declare-fun m!1292607 () Bool)

(assert (=> b!1403783 m!1292607))

(declare-fun m!1292609 () Bool)

(assert (=> b!1403783 m!1292609))

(declare-fun m!1292611 () Bool)

(assert (=> start!120606 m!1292611))

(declare-fun m!1292613 () Bool)

(assert (=> start!120606 m!1292613))

(declare-fun m!1292615 () Bool)

(assert (=> b!1403786 m!1292615))

(assert (=> b!1403785 m!1292599))

(assert (=> b!1403785 m!1292599))

(declare-fun m!1292617 () Bool)

(assert (=> b!1403785 m!1292617))

(declare-fun m!1292619 () Bool)

(assert (=> b!1403782 m!1292619))

(declare-fun m!1292621 () Bool)

(assert (=> b!1403787 m!1292621))

(assert (=> b!1403787 m!1292621))

(declare-fun m!1292623 () Bool)

(assert (=> b!1403787 m!1292623))

(check-sat (not b!1403782) (not b!1403785) (not b!1403788) (not b!1403783) (not b!1403787) (not start!120606) (not b!1403786))
(check-sat)
