; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120614 () Bool)

(assert start!120614)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95941 0))(
  ( (array!95942 (arr!46317 (Array (_ BitVec 32) (_ BitVec 64))) (size!46868 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95941)

(declare-fun e!794851 () Bool)

(declare-fun b!1403866 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10656 0))(
  ( (MissingZero!10656 (index!45000 (_ BitVec 32))) (Found!10656 (index!45001 (_ BitVec 32))) (Intermediate!10656 (undefined!11468 Bool) (index!45002 (_ BitVec 32)) (x!126606 (_ BitVec 32))) (Undefined!10656) (MissingVacant!10656 (index!45003 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95941 (_ BitVec 32)) SeekEntryResult!10656)

(assert (=> b!1403866 (= e!794851 (= (seekEntryOrOpen!0 (select (arr!46317 a!2901) j!112) a!2901 mask!2840) (Found!10656 j!112)))))

(declare-fun b!1403867 () Bool)

(declare-fun res!942489 () Bool)

(declare-fun e!794850 () Bool)

(assert (=> b!1403867 (=> (not res!942489) (not e!794850))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1403867 (= res!942489 (and (= (size!46868 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46868 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46868 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1403868 () Bool)

(declare-fun res!942490 () Bool)

(assert (=> b!1403868 (=> (not res!942490) (not e!794850))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403868 (= res!942490 (validKeyInArray!0 (select (arr!46317 a!2901) j!112)))))

(declare-fun b!1403869 () Bool)

(declare-fun res!942487 () Bool)

(assert (=> b!1403869 (=> (not res!942487) (not e!794850))))

(assert (=> b!1403869 (= res!942487 (validKeyInArray!0 (select (arr!46317 a!2901) i!1037)))))

(declare-fun b!1403870 () Bool)

(assert (=> b!1403870 (= e!794850 (not true))))

(assert (=> b!1403870 e!794851))

(declare-fun res!942486 () Bool)

(assert (=> b!1403870 (=> (not res!942486) (not e!794851))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95941 (_ BitVec 32)) Bool)

(assert (=> b!1403870 (= res!942486 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47266 0))(
  ( (Unit!47267) )
))
(declare-fun lt!618492 () Unit!47266)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95941 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47266)

(assert (=> b!1403870 (= lt!618492 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!618493 () SeekEntryResult!10656)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95941 (_ BitVec 32)) SeekEntryResult!10656)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403870 (= lt!618493 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46317 a!2901) j!112) mask!2840) (select (arr!46317 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!942491 () Bool)

(assert (=> start!120614 (=> (not res!942491) (not e!794850))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120614 (= res!942491 (validMask!0 mask!2840))))

(assert (=> start!120614 e!794850))

(assert (=> start!120614 true))

(declare-fun array_inv!35262 (array!95941) Bool)

(assert (=> start!120614 (array_inv!35262 a!2901)))

(declare-fun b!1403871 () Bool)

(declare-fun res!942492 () Bool)

(assert (=> b!1403871 (=> (not res!942492) (not e!794850))))

(assert (=> b!1403871 (= res!942492 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403872 () Bool)

(declare-fun res!942488 () Bool)

(assert (=> b!1403872 (=> (not res!942488) (not e!794850))))

(declare-datatypes ((List!33016 0))(
  ( (Nil!33013) (Cons!33012 (h!34260 (_ BitVec 64)) (t!47717 List!33016)) )
))
(declare-fun arrayNoDuplicates!0 (array!95941 (_ BitVec 32) List!33016) Bool)

(assert (=> b!1403872 (= res!942488 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33013))))

(assert (= (and start!120614 res!942491) b!1403867))

(assert (= (and b!1403867 res!942489) b!1403869))

(assert (= (and b!1403869 res!942487) b!1403868))

(assert (= (and b!1403868 res!942490) b!1403871))

(assert (= (and b!1403871 res!942492) b!1403872))

(assert (= (and b!1403872 res!942488) b!1403870))

(assert (= (and b!1403870 res!942486) b!1403866))

(declare-fun m!1292703 () Bool)

(assert (=> start!120614 m!1292703))

(declare-fun m!1292705 () Bool)

(assert (=> start!120614 m!1292705))

(declare-fun m!1292707 () Bool)

(assert (=> b!1403870 m!1292707))

(declare-fun m!1292709 () Bool)

(assert (=> b!1403870 m!1292709))

(assert (=> b!1403870 m!1292707))

(declare-fun m!1292711 () Bool)

(assert (=> b!1403870 m!1292711))

(assert (=> b!1403870 m!1292709))

(assert (=> b!1403870 m!1292707))

(declare-fun m!1292713 () Bool)

(assert (=> b!1403870 m!1292713))

(declare-fun m!1292715 () Bool)

(assert (=> b!1403870 m!1292715))

(assert (=> b!1403868 m!1292707))

(assert (=> b!1403868 m!1292707))

(declare-fun m!1292717 () Bool)

(assert (=> b!1403868 m!1292717))

(assert (=> b!1403866 m!1292707))

(assert (=> b!1403866 m!1292707))

(declare-fun m!1292719 () Bool)

(assert (=> b!1403866 m!1292719))

(declare-fun m!1292721 () Bool)

(assert (=> b!1403869 m!1292721))

(assert (=> b!1403869 m!1292721))

(declare-fun m!1292723 () Bool)

(assert (=> b!1403869 m!1292723))

(declare-fun m!1292725 () Bool)

(assert (=> b!1403872 m!1292725))

(declare-fun m!1292727 () Bool)

(assert (=> b!1403871 m!1292727))

(push 1)

(assert (not b!1403871))

(assert (not b!1403869))

(assert (not b!1403868))

(assert (not b!1403870))

(assert (not start!120614))

(assert (not b!1403866))

(assert (not b!1403872))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

