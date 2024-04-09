; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129004 () Bool)

(assert start!129004)

(declare-fun b!1511806 () Bool)

(declare-fun e!843986 () Bool)

(declare-fun e!843989 () Bool)

(assert (=> b!1511806 (= e!843986 e!843989)))

(declare-fun res!1031784 () Bool)

(assert (=> b!1511806 (=> (not res!1031784) (not e!843989))))

(declare-datatypes ((SeekEntryResult!12811 0))(
  ( (MissingZero!12811 (index!53638 (_ BitVec 32))) (Found!12811 (index!53639 (_ BitVec 32))) (Intermediate!12811 (undefined!13623 Bool) (index!53640 (_ BitVec 32)) (x!135382 (_ BitVec 32))) (Undefined!12811) (MissingVacant!12811 (index!53641 (_ BitVec 32))) )
))
(declare-fun lt!655503 () SeekEntryResult!12811)

(declare-fun lt!655502 () SeekEntryResult!12811)

(assert (=> b!1511806 (= res!1031784 (= lt!655503 lt!655502))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1511806 (= lt!655502 (Intermediate!12811 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100773 0))(
  ( (array!100774 (arr!48619 (Array (_ BitVec 32) (_ BitVec 64))) (size!49170 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100773)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100773 (_ BitVec 32)) SeekEntryResult!12811)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1511806 (= lt!655503 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48619 a!2804) j!70) mask!2512) (select (arr!48619 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1511807 () Bool)

(declare-fun res!1031781 () Bool)

(assert (=> b!1511807 (=> (not res!1031781) (not e!843989))))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1511807 (= res!1031781 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48619 a!2804) j!70) a!2804 mask!2512) lt!655502))))

(declare-fun b!1511808 () Bool)

(declare-fun res!1031786 () Bool)

(assert (=> b!1511808 (=> (not res!1031786) (not e!843986))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1511808 (= res!1031786 (validKeyInArray!0 (select (arr!48619 a!2804) j!70)))))

(declare-fun b!1511809 () Bool)

(declare-fun res!1031788 () Bool)

(assert (=> b!1511809 (=> (not res!1031788) (not e!843986))))

(declare-datatypes ((List!35282 0))(
  ( (Nil!35279) (Cons!35278 (h!36691 (_ BitVec 64)) (t!49983 List!35282)) )
))
(declare-fun arrayNoDuplicates!0 (array!100773 (_ BitVec 32) List!35282) Bool)

(assert (=> b!1511809 (= res!1031788 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35279))))

(declare-fun res!1031785 () Bool)

(assert (=> start!129004 (=> (not res!1031785) (not e!843986))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129004 (= res!1031785 (validMask!0 mask!2512))))

(assert (=> start!129004 e!843986))

(assert (=> start!129004 true))

(declare-fun array_inv!37564 (array!100773) Bool)

(assert (=> start!129004 (array_inv!37564 a!2804)))

(declare-fun b!1511810 () Bool)

(declare-fun e!843987 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100773 (_ BitVec 32)) SeekEntryResult!12811)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100773 (_ BitVec 32)) SeekEntryResult!12811)

(assert (=> b!1511810 (= e!843987 (= (seekEntryOrOpen!0 (select (arr!48619 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48619 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1511811 () Bool)

(declare-fun res!1031789 () Bool)

(assert (=> b!1511811 (=> (not res!1031789) (not e!843989))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1511811 (= res!1031789 (= lt!655503 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48619 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48619 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100774 (store (arr!48619 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49170 a!2804)) mask!2512)))))

(declare-fun b!1511812 () Bool)

(declare-fun res!1031790 () Bool)

(assert (=> b!1511812 (=> (not res!1031790) (not e!843986))))

(assert (=> b!1511812 (= res!1031790 (validKeyInArray!0 (select (arr!48619 a!2804) i!961)))))

(declare-fun b!1511813 () Bool)

(assert (=> b!1511813 (= e!843989 (not true))))

(declare-fun e!843985 () Bool)

(assert (=> b!1511813 e!843985))

(declare-fun res!1031783 () Bool)

(assert (=> b!1511813 (=> (not res!1031783) (not e!843985))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100773 (_ BitVec 32)) Bool)

(assert (=> b!1511813 (= res!1031783 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50446 0))(
  ( (Unit!50447) )
))
(declare-fun lt!655504 () Unit!50446)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100773 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50446)

(assert (=> b!1511813 (= lt!655504 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1511814 () Bool)

(assert (=> b!1511814 (= e!843985 e!843987)))

(declare-fun res!1031793 () Bool)

(assert (=> b!1511814 (=> res!1031793 e!843987)))

(assert (=> b!1511814 (= res!1031793 (or (not (= (select (arr!48619 a!2804) j!70) (select (store (arr!48619 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48619 a!2804) index!487) (select (arr!48619 a!2804) j!70)) (not (= (select (arr!48619 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1511815 () Bool)

(declare-fun res!1031791 () Bool)

(assert (=> b!1511815 (=> (not res!1031791) (not e!843985))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100773 (_ BitVec 32)) SeekEntryResult!12811)

(assert (=> b!1511815 (= res!1031791 (= (seekEntry!0 (select (arr!48619 a!2804) j!70) a!2804 mask!2512) (Found!12811 j!70)))))

(declare-fun b!1511816 () Bool)

(declare-fun res!1031792 () Bool)

(assert (=> b!1511816 (=> (not res!1031792) (not e!843986))))

(assert (=> b!1511816 (= res!1031792 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49170 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49170 a!2804))))))

(declare-fun b!1511817 () Bool)

(declare-fun res!1031782 () Bool)

(assert (=> b!1511817 (=> (not res!1031782) (not e!843986))))

(assert (=> b!1511817 (= res!1031782 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1511818 () Bool)

(declare-fun res!1031787 () Bool)

(assert (=> b!1511818 (=> (not res!1031787) (not e!843986))))

(assert (=> b!1511818 (= res!1031787 (and (= (size!49170 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49170 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49170 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!129004 res!1031785) b!1511818))

(assert (= (and b!1511818 res!1031787) b!1511812))

(assert (= (and b!1511812 res!1031790) b!1511808))

(assert (= (and b!1511808 res!1031786) b!1511817))

(assert (= (and b!1511817 res!1031782) b!1511809))

(assert (= (and b!1511809 res!1031788) b!1511816))

(assert (= (and b!1511816 res!1031792) b!1511806))

(assert (= (and b!1511806 res!1031784) b!1511807))

(assert (= (and b!1511807 res!1031781) b!1511811))

(assert (= (and b!1511811 res!1031789) b!1511813))

(assert (= (and b!1511813 res!1031783) b!1511815))

(assert (= (and b!1511815 res!1031791) b!1511814))

(assert (= (and b!1511814 (not res!1031793)) b!1511810))

(declare-fun m!1394589 () Bool)

(assert (=> b!1511808 m!1394589))

(assert (=> b!1511808 m!1394589))

(declare-fun m!1394591 () Bool)

(assert (=> b!1511808 m!1394591))

(declare-fun m!1394593 () Bool)

(assert (=> b!1511811 m!1394593))

(declare-fun m!1394595 () Bool)

(assert (=> b!1511811 m!1394595))

(assert (=> b!1511811 m!1394595))

(declare-fun m!1394597 () Bool)

(assert (=> b!1511811 m!1394597))

(assert (=> b!1511811 m!1394597))

(assert (=> b!1511811 m!1394595))

(declare-fun m!1394599 () Bool)

(assert (=> b!1511811 m!1394599))

(assert (=> b!1511810 m!1394589))

(assert (=> b!1511810 m!1394589))

(declare-fun m!1394601 () Bool)

(assert (=> b!1511810 m!1394601))

(assert (=> b!1511810 m!1394589))

(declare-fun m!1394603 () Bool)

(assert (=> b!1511810 m!1394603))

(declare-fun m!1394605 () Bool)

(assert (=> b!1511813 m!1394605))

(declare-fun m!1394607 () Bool)

(assert (=> b!1511813 m!1394607))

(assert (=> b!1511807 m!1394589))

(assert (=> b!1511807 m!1394589))

(declare-fun m!1394609 () Bool)

(assert (=> b!1511807 m!1394609))

(assert (=> b!1511806 m!1394589))

(assert (=> b!1511806 m!1394589))

(declare-fun m!1394611 () Bool)

(assert (=> b!1511806 m!1394611))

(assert (=> b!1511806 m!1394611))

(assert (=> b!1511806 m!1394589))

(declare-fun m!1394613 () Bool)

(assert (=> b!1511806 m!1394613))

(assert (=> b!1511815 m!1394589))

(assert (=> b!1511815 m!1394589))

(declare-fun m!1394615 () Bool)

(assert (=> b!1511815 m!1394615))

(declare-fun m!1394617 () Bool)

(assert (=> b!1511812 m!1394617))

(assert (=> b!1511812 m!1394617))

(declare-fun m!1394619 () Bool)

(assert (=> b!1511812 m!1394619))

(declare-fun m!1394621 () Bool)

(assert (=> b!1511817 m!1394621))

(assert (=> b!1511814 m!1394589))

(assert (=> b!1511814 m!1394593))

(assert (=> b!1511814 m!1394595))

(declare-fun m!1394623 () Bool)

(assert (=> b!1511814 m!1394623))

(declare-fun m!1394625 () Bool)

(assert (=> b!1511809 m!1394625))

(declare-fun m!1394627 () Bool)

(assert (=> start!129004 m!1394627))

(declare-fun m!1394629 () Bool)

(assert (=> start!129004 m!1394629))

(push 1)

