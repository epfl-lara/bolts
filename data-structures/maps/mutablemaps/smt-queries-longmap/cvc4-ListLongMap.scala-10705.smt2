; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125414 () Bool)

(assert start!125414)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!823558 () Bool)

(declare-fun b!1465663 () Bool)

(declare-datatypes ((array!98779 0))(
  ( (array!98780 (arr!47673 (Array (_ BitVec 32) (_ BitVec 64))) (size!48224 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98779)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1465663 (= e!823558 (or (= (select (arr!47673 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47673 a!2862) intermediateBeforeIndex!19) (select (arr!47673 a!2862) j!93))))))

(declare-fun b!1465664 () Bool)

(declare-fun e!823562 () Bool)

(assert (=> b!1465664 (= e!823562 true)))

(declare-fun lt!641445 () Bool)

(declare-fun e!823553 () Bool)

(assert (=> b!1465664 (= lt!641445 e!823553)))

(declare-fun c!135043 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1465664 (= c!135043 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1465665 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun e!823554 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lt!641441 () (_ BitVec 64))

(declare-fun lt!641444 () array!98779)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11948 0))(
  ( (MissingZero!11948 (index!50183 (_ BitVec 32))) (Found!11948 (index!50184 (_ BitVec 32))) (Intermediate!11948 (undefined!12760 Bool) (index!50185 (_ BitVec 32)) (x!131760 (_ BitVec 32))) (Undefined!11948) (MissingVacant!11948 (index!50186 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98779 (_ BitVec 32)) SeekEntryResult!11948)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98779 (_ BitVec 32)) SeekEntryResult!11948)

(assert (=> b!1465665 (= e!823554 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641441 lt!641444 mask!2687) (seekEntryOrOpen!0 lt!641441 lt!641444 mask!2687)))))

(declare-fun b!1465666 () Bool)

(declare-fun res!994616 () Bool)

(assert (=> b!1465666 (=> res!994616 e!823562)))

(declare-fun lt!641440 () SeekEntryResult!11948)

(declare-fun lt!641443 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98779 (_ BitVec 32)) SeekEntryResult!11948)

(assert (=> b!1465666 (= res!994616 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641443 (select (arr!47673 a!2862) j!93) a!2862 mask!2687) lt!641440)))))

(declare-fun b!1465667 () Bool)

(declare-fun e!823557 () Bool)

(declare-fun e!823560 () Bool)

(assert (=> b!1465667 (= e!823557 (not e!823560))))

(declare-fun res!994604 () Bool)

(assert (=> b!1465667 (=> res!994604 e!823560)))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1465667 (= res!994604 (or (and (= (select (arr!47673 a!2862) index!646) (select (store (arr!47673 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47673 a!2862) index!646) (select (arr!47673 a!2862) j!93))) (= (select (arr!47673 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1465667 e!823558))

(declare-fun res!994603 () Bool)

(assert (=> b!1465667 (=> (not res!994603) (not e!823558))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98779 (_ BitVec 32)) Bool)

(assert (=> b!1465667 (= res!994603 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49340 0))(
  ( (Unit!49341) )
))
(declare-fun lt!641446 () Unit!49340)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98779 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49340)

(assert (=> b!1465667 (= lt!641446 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1465668 () Bool)

(declare-fun res!994610 () Bool)

(declare-fun e!823561 () Bool)

(assert (=> b!1465668 (=> (not res!994610) (not e!823561))))

(assert (=> b!1465668 (= res!994610 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1465669 () Bool)

(declare-fun lt!641442 () SeekEntryResult!11948)

(assert (=> b!1465669 (= e!823554 (= lt!641442 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641441 lt!641444 mask!2687)))))

(declare-fun b!1465670 () Bool)

(declare-fun e!823556 () Bool)

(declare-fun e!823559 () Bool)

(assert (=> b!1465670 (= e!823556 e!823559)))

(declare-fun res!994619 () Bool)

(assert (=> b!1465670 (=> (not res!994619) (not e!823559))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1465670 (= res!994619 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47673 a!2862) j!93) mask!2687) (select (arr!47673 a!2862) j!93) a!2862 mask!2687) lt!641440))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1465670 (= lt!641440 (Intermediate!11948 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1465671 () Bool)

(declare-fun res!994614 () Bool)

(assert (=> b!1465671 (=> (not res!994614) (not e!823561))))

(assert (=> b!1465671 (= res!994614 (and (= (size!48224 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48224 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48224 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1465672 () Bool)

(declare-fun res!994607 () Bool)

(assert (=> b!1465672 (=> (not res!994607) (not e!823561))))

(assert (=> b!1465672 (= res!994607 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48224 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48224 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48224 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1465673 () Bool)

(declare-fun res!994611 () Bool)

(assert (=> b!1465673 (=> (not res!994611) (not e!823557))))

(assert (=> b!1465673 (= res!994611 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1465674 () Bool)

(assert (=> b!1465674 (= e!823553 (not (= lt!641442 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641443 lt!641441 lt!641444 mask!2687))))))

(declare-fun b!1465675 () Bool)

(assert (=> b!1465675 (= e!823561 e!823556)))

(declare-fun res!994613 () Bool)

(assert (=> b!1465675 (=> (not res!994613) (not e!823556))))

(assert (=> b!1465675 (= res!994613 (= (select (store (arr!47673 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1465675 (= lt!641444 (array!98780 (store (arr!47673 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48224 a!2862)))))

(declare-fun b!1465676 () Bool)

(declare-fun res!994615 () Bool)

(assert (=> b!1465676 (=> (not res!994615) (not e!823561))))

(declare-datatypes ((List!34354 0))(
  ( (Nil!34351) (Cons!34350 (h!35700 (_ BitVec 64)) (t!49055 List!34354)) )
))
(declare-fun arrayNoDuplicates!0 (array!98779 (_ BitVec 32) List!34354) Bool)

(assert (=> b!1465676 (= res!994615 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34351))))

(declare-fun b!1465677 () Bool)

(declare-fun res!994608 () Bool)

(assert (=> b!1465677 (=> (not res!994608) (not e!823561))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1465677 (= res!994608 (validKeyInArray!0 (select (arr!47673 a!2862) i!1006)))))

(declare-fun b!1465678 () Bool)

(assert (=> b!1465678 (= e!823559 e!823557)))

(declare-fun res!994605 () Bool)

(assert (=> b!1465678 (=> (not res!994605) (not e!823557))))

(assert (=> b!1465678 (= res!994605 (= lt!641442 (Intermediate!11948 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1465678 (= lt!641442 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641441 mask!2687) lt!641441 lt!641444 mask!2687))))

(assert (=> b!1465678 (= lt!641441 (select (store (arr!47673 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1465679 () Bool)

(declare-fun res!994612 () Bool)

(assert (=> b!1465679 (=> (not res!994612) (not e!823561))))

(assert (=> b!1465679 (= res!994612 (validKeyInArray!0 (select (arr!47673 a!2862) j!93)))))

(declare-fun b!1465680 () Bool)

(declare-fun res!994606 () Bool)

(assert (=> b!1465680 (=> (not res!994606) (not e!823557))))

(assert (=> b!1465680 (= res!994606 e!823554)))

(declare-fun c!135044 () Bool)

(assert (=> b!1465680 (= c!135044 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1465681 () Bool)

(assert (=> b!1465681 (= e!823553 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641443 intermediateAfterIndex!19 lt!641441 lt!641444 mask!2687) (seekEntryOrOpen!0 lt!641441 lt!641444 mask!2687))))))

(declare-fun b!1465682 () Bool)

(declare-fun res!994618 () Bool)

(assert (=> b!1465682 (=> (not res!994618) (not e!823559))))

(assert (=> b!1465682 (= res!994618 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47673 a!2862) j!93) a!2862 mask!2687) lt!641440))))

(declare-fun res!994617 () Bool)

(assert (=> start!125414 (=> (not res!994617) (not e!823561))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125414 (= res!994617 (validMask!0 mask!2687))))

(assert (=> start!125414 e!823561))

(assert (=> start!125414 true))

(declare-fun array_inv!36618 (array!98779) Bool)

(assert (=> start!125414 (array_inv!36618 a!2862)))

(declare-fun b!1465683 () Bool)

(assert (=> b!1465683 (= e!823560 e!823562)))

(declare-fun res!994620 () Bool)

(assert (=> b!1465683 (=> res!994620 e!823562)))

(assert (=> b!1465683 (= res!994620 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641443 #b00000000000000000000000000000000) (bvsge lt!641443 (size!48224 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1465683 (= lt!641443 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1465684 () Bool)

(declare-fun res!994609 () Bool)

(assert (=> b!1465684 (=> (not res!994609) (not e!823558))))

(assert (=> b!1465684 (= res!994609 (= (seekEntryOrOpen!0 (select (arr!47673 a!2862) j!93) a!2862 mask!2687) (Found!11948 j!93)))))

(assert (= (and start!125414 res!994617) b!1465671))

(assert (= (and b!1465671 res!994614) b!1465677))

(assert (= (and b!1465677 res!994608) b!1465679))

(assert (= (and b!1465679 res!994612) b!1465668))

(assert (= (and b!1465668 res!994610) b!1465676))

(assert (= (and b!1465676 res!994615) b!1465672))

(assert (= (and b!1465672 res!994607) b!1465675))

(assert (= (and b!1465675 res!994613) b!1465670))

(assert (= (and b!1465670 res!994619) b!1465682))

(assert (= (and b!1465682 res!994618) b!1465678))

(assert (= (and b!1465678 res!994605) b!1465680))

(assert (= (and b!1465680 c!135044) b!1465669))

(assert (= (and b!1465680 (not c!135044)) b!1465665))

(assert (= (and b!1465680 res!994606) b!1465673))

(assert (= (and b!1465673 res!994611) b!1465667))

(assert (= (and b!1465667 res!994603) b!1465684))

(assert (= (and b!1465684 res!994609) b!1465663))

(assert (= (and b!1465667 (not res!994604)) b!1465683))

(assert (= (and b!1465683 (not res!994620)) b!1465666))

(assert (= (and b!1465666 (not res!994616)) b!1465664))

(assert (= (and b!1465664 c!135043) b!1465674))

(assert (= (and b!1465664 (not c!135043)) b!1465681))

(declare-fun m!1352777 () Bool)

(assert (=> b!1465678 m!1352777))

(assert (=> b!1465678 m!1352777))

(declare-fun m!1352779 () Bool)

(assert (=> b!1465678 m!1352779))

(declare-fun m!1352781 () Bool)

(assert (=> b!1465678 m!1352781))

(declare-fun m!1352783 () Bool)

(assert (=> b!1465678 m!1352783))

(declare-fun m!1352785 () Bool)

(assert (=> b!1465679 m!1352785))

(assert (=> b!1465679 m!1352785))

(declare-fun m!1352787 () Bool)

(assert (=> b!1465679 m!1352787))

(declare-fun m!1352789 () Bool)

(assert (=> b!1465676 m!1352789))

(declare-fun m!1352791 () Bool)

(assert (=> b!1465674 m!1352791))

(assert (=> b!1465675 m!1352781))

(declare-fun m!1352793 () Bool)

(assert (=> b!1465675 m!1352793))

(declare-fun m!1352795 () Bool)

(assert (=> b!1465668 m!1352795))

(declare-fun m!1352797 () Bool)

(assert (=> b!1465667 m!1352797))

(assert (=> b!1465667 m!1352781))

(declare-fun m!1352799 () Bool)

(assert (=> b!1465667 m!1352799))

(declare-fun m!1352801 () Bool)

(assert (=> b!1465667 m!1352801))

(declare-fun m!1352803 () Bool)

(assert (=> b!1465667 m!1352803))

(assert (=> b!1465667 m!1352785))

(assert (=> b!1465684 m!1352785))

(assert (=> b!1465684 m!1352785))

(declare-fun m!1352805 () Bool)

(assert (=> b!1465684 m!1352805))

(declare-fun m!1352807 () Bool)

(assert (=> b!1465669 m!1352807))

(assert (=> b!1465670 m!1352785))

(assert (=> b!1465670 m!1352785))

(declare-fun m!1352809 () Bool)

(assert (=> b!1465670 m!1352809))

(assert (=> b!1465670 m!1352809))

(assert (=> b!1465670 m!1352785))

(declare-fun m!1352811 () Bool)

(assert (=> b!1465670 m!1352811))

(assert (=> b!1465666 m!1352785))

(assert (=> b!1465666 m!1352785))

(declare-fun m!1352813 () Bool)

(assert (=> b!1465666 m!1352813))

(assert (=> b!1465682 m!1352785))

(assert (=> b!1465682 m!1352785))

(declare-fun m!1352815 () Bool)

(assert (=> b!1465682 m!1352815))

(declare-fun m!1352817 () Bool)

(assert (=> b!1465683 m!1352817))

(declare-fun m!1352819 () Bool)

(assert (=> b!1465677 m!1352819))

(assert (=> b!1465677 m!1352819))

(declare-fun m!1352821 () Bool)

(assert (=> b!1465677 m!1352821))

(declare-fun m!1352823 () Bool)

(assert (=> b!1465665 m!1352823))

(declare-fun m!1352825 () Bool)

(assert (=> b!1465665 m!1352825))

(declare-fun m!1352827 () Bool)

(assert (=> b!1465681 m!1352827))

(assert (=> b!1465681 m!1352825))

(declare-fun m!1352829 () Bool)

(assert (=> b!1465663 m!1352829))

(assert (=> b!1465663 m!1352785))

(declare-fun m!1352831 () Bool)

(assert (=> start!125414 m!1352831))

(declare-fun m!1352833 () Bool)

(assert (=> start!125414 m!1352833))

(push 1)

(assert (not b!1465668))

(assert (not b!1465684))

(assert (not b!1465676))

(assert (not b!1465667))

(assert (not start!125414))

(assert (not b!1465682))

(assert (not b!1465669))

(assert (not b!1465678))

(assert (not b!1465670))

(assert (not b!1465681))

(assert (not b!1465683))

(assert (not b!1465666))

(assert (not b!1465674))

(assert (not b!1465665))

(assert (not b!1465679))

(assert (not b!1465677))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

