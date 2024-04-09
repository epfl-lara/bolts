; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119620 () Bool)

(assert start!119620)

(declare-fun res!932334 () Bool)

(declare-fun e!788731 () Bool)

(assert (=> start!119620 (=> (not res!932334) (not e!788731))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119620 (= res!932334 (validMask!0 mask!2840))))

(assert (=> start!119620 e!788731))

(assert (=> start!119620 true))

(declare-datatypes ((array!95220 0))(
  ( (array!95221 (arr!45964 (Array (_ BitVec 32) (_ BitVec 64))) (size!46515 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95220)

(declare-fun array_inv!34909 (array!95220) Bool)

(assert (=> start!119620 (array_inv!34909 a!2901)))

(declare-fun b!1392813 () Bool)

(declare-fun res!932330 () Bool)

(assert (=> b!1392813 (=> (not res!932330) (not e!788731))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1392813 (= res!932330 (validKeyInArray!0 (select (arr!45964 a!2901) j!112)))))

(declare-fun b!1392814 () Bool)

(declare-fun e!788729 () Bool)

(assert (=> b!1392814 (= e!788731 (not e!788729))))

(declare-fun res!932336 () Bool)

(assert (=> b!1392814 (=> res!932336 e!788729)))

(declare-datatypes ((SeekEntryResult!10303 0))(
  ( (MissingZero!10303 (index!43582 (_ BitVec 32))) (Found!10303 (index!43583 (_ BitVec 32))) (Intermediate!10303 (undefined!11115 Bool) (index!43584 (_ BitVec 32)) (x!125278 (_ BitVec 32))) (Undefined!10303) (MissingVacant!10303 (index!43585 (_ BitVec 32))) )
))
(declare-fun lt!611727 () SeekEntryResult!10303)

(assert (=> b!1392814 (= res!932336 (or (not (is-Intermediate!10303 lt!611727)) (undefined!11115 lt!611727)))))

(declare-fun e!788732 () Bool)

(assert (=> b!1392814 e!788732))

(declare-fun res!932332 () Bool)

(assert (=> b!1392814 (=> (not res!932332) (not e!788732))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95220 (_ BitVec 32)) Bool)

(assert (=> b!1392814 (= res!932332 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46560 0))(
  ( (Unit!46561) )
))
(declare-fun lt!611726 () Unit!46560)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95220 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46560)

(assert (=> b!1392814 (= lt!611726 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95220 (_ BitVec 32)) SeekEntryResult!10303)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1392814 (= lt!611727 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45964 a!2901) j!112) mask!2840) (select (arr!45964 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1392815 () Bool)

(assert (=> b!1392815 (= e!788729 true)))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!611728 () SeekEntryResult!10303)

(assert (=> b!1392815 (= lt!611728 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45964 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45964 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95221 (store (arr!45964 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46515 a!2901)) mask!2840))))

(declare-fun b!1392816 () Bool)

(declare-fun res!932337 () Bool)

(assert (=> b!1392816 (=> (not res!932337) (not e!788731))))

(assert (=> b!1392816 (= res!932337 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1392817 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95220 (_ BitVec 32)) SeekEntryResult!10303)

(assert (=> b!1392817 (= e!788732 (= (seekEntryOrOpen!0 (select (arr!45964 a!2901) j!112) a!2901 mask!2840) (Found!10303 j!112)))))

(declare-fun b!1392818 () Bool)

(declare-fun res!932333 () Bool)

(assert (=> b!1392818 (=> (not res!932333) (not e!788731))))

(declare-datatypes ((List!32663 0))(
  ( (Nil!32660) (Cons!32659 (h!33892 (_ BitVec 64)) (t!47364 List!32663)) )
))
(declare-fun arrayNoDuplicates!0 (array!95220 (_ BitVec 32) List!32663) Bool)

(assert (=> b!1392818 (= res!932333 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32660))))

(declare-fun b!1392819 () Bool)

(declare-fun res!932335 () Bool)

(assert (=> b!1392819 (=> (not res!932335) (not e!788731))))

(assert (=> b!1392819 (= res!932335 (and (= (size!46515 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46515 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46515 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1392820 () Bool)

(declare-fun res!932331 () Bool)

(assert (=> b!1392820 (=> (not res!932331) (not e!788731))))

(assert (=> b!1392820 (= res!932331 (validKeyInArray!0 (select (arr!45964 a!2901) i!1037)))))

(assert (= (and start!119620 res!932334) b!1392819))

(assert (= (and b!1392819 res!932335) b!1392820))

(assert (= (and b!1392820 res!932331) b!1392813))

(assert (= (and b!1392813 res!932330) b!1392816))

(assert (= (and b!1392816 res!932337) b!1392818))

(assert (= (and b!1392818 res!932333) b!1392814))

(assert (= (and b!1392814 res!932332) b!1392817))

(assert (= (and b!1392814 (not res!932336)) b!1392815))

(declare-fun m!1278557 () Bool)

(assert (=> b!1392814 m!1278557))

(declare-fun m!1278559 () Bool)

(assert (=> b!1392814 m!1278559))

(assert (=> b!1392814 m!1278557))

(declare-fun m!1278561 () Bool)

(assert (=> b!1392814 m!1278561))

(assert (=> b!1392814 m!1278559))

(assert (=> b!1392814 m!1278557))

(declare-fun m!1278563 () Bool)

(assert (=> b!1392814 m!1278563))

(declare-fun m!1278565 () Bool)

(assert (=> b!1392814 m!1278565))

(assert (=> b!1392817 m!1278557))

(assert (=> b!1392817 m!1278557))

(declare-fun m!1278567 () Bool)

(assert (=> b!1392817 m!1278567))

(declare-fun m!1278569 () Bool)

(assert (=> b!1392818 m!1278569))

(declare-fun m!1278571 () Bool)

(assert (=> b!1392815 m!1278571))

(declare-fun m!1278573 () Bool)

(assert (=> b!1392815 m!1278573))

(assert (=> b!1392815 m!1278573))

(declare-fun m!1278575 () Bool)

(assert (=> b!1392815 m!1278575))

(assert (=> b!1392815 m!1278575))

(assert (=> b!1392815 m!1278573))

(declare-fun m!1278577 () Bool)

(assert (=> b!1392815 m!1278577))

(assert (=> b!1392813 m!1278557))

(assert (=> b!1392813 m!1278557))

(declare-fun m!1278579 () Bool)

(assert (=> b!1392813 m!1278579))

(declare-fun m!1278581 () Bool)

(assert (=> b!1392816 m!1278581))

(declare-fun m!1278583 () Bool)

(assert (=> start!119620 m!1278583))

(declare-fun m!1278585 () Bool)

(assert (=> start!119620 m!1278585))

(declare-fun m!1278587 () Bool)

(assert (=> b!1392820 m!1278587))

(assert (=> b!1392820 m!1278587))

(declare-fun m!1278589 () Bool)

(assert (=> b!1392820 m!1278589))

(push 1)

(assert (not b!1392813))

(assert (not b!1392816))

(assert (not start!119620))

(assert (not b!1392820))

(assert (not b!1392815))

(assert (not b!1392817))

(assert (not b!1392818))

(assert (not b!1392814))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

