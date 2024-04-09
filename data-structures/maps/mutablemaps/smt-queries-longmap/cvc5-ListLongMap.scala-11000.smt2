; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128878 () Bool)

(assert start!128878)

(declare-fun b!1509678 () Bool)

(declare-fun res!1029653 () Bool)

(declare-fun e!843202 () Bool)

(assert (=> b!1509678 (=> (not res!1029653) (not e!843202))))

(declare-datatypes ((array!100647 0))(
  ( (array!100648 (arr!48556 (Array (_ BitVec 32) (_ BitVec 64))) (size!49107 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100647)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1509678 (= res!1029653 (validKeyInArray!0 (select (arr!48556 a!2804) i!961)))))

(declare-fun res!1029654 () Bool)

(assert (=> start!128878 (=> (not res!1029654) (not e!843202))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128878 (= res!1029654 (validMask!0 mask!2512))))

(assert (=> start!128878 e!843202))

(assert (=> start!128878 true))

(declare-fun array_inv!37501 (array!100647) Bool)

(assert (=> start!128878 (array_inv!37501 a!2804)))

(declare-fun b!1509679 () Bool)

(declare-fun res!1029657 () Bool)

(assert (=> b!1509679 (=> (not res!1029657) (not e!843202))))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1509679 (= res!1029657 (and (= (size!49107 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49107 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49107 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1509680 () Bool)

(declare-fun res!1029662 () Bool)

(assert (=> b!1509680 (=> (not res!1029662) (not e!843202))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1509680 (= res!1029662 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49107 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49107 a!2804))))))

(declare-fun b!1509681 () Bool)

(declare-fun res!1029663 () Bool)

(declare-fun e!843203 () Bool)

(assert (=> b!1509681 (=> (not res!1029663) (not e!843203))))

(declare-datatypes ((SeekEntryResult!12748 0))(
  ( (MissingZero!12748 (index!53386 (_ BitVec 32))) (Found!12748 (index!53387 (_ BitVec 32))) (Intermediate!12748 (undefined!13560 Bool) (index!53388 (_ BitVec 32)) (x!135151 (_ BitVec 32))) (Undefined!12748) (MissingVacant!12748 (index!53389 (_ BitVec 32))) )
))
(declare-fun lt!654936 () SeekEntryResult!12748)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100647 (_ BitVec 32)) SeekEntryResult!12748)

(assert (=> b!1509681 (= res!1029663 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48556 a!2804) j!70) a!2804 mask!2512) lt!654936))))

(declare-fun b!1509682 () Bool)

(declare-fun res!1029660 () Bool)

(assert (=> b!1509682 (=> (not res!1029660) (not e!843203))))

(declare-fun lt!654935 () SeekEntryResult!12748)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1509682 (= res!1029660 (= lt!654935 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48556 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48556 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100648 (store (arr!48556 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49107 a!2804)) mask!2512)))))

(declare-fun b!1509683 () Bool)

(assert (=> b!1509683 (= e!843203 (not (or (not (= (select (arr!48556 a!2804) j!70) (select (store (arr!48556 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (not (= (select (arr!48556 a!2804) index!487) (select (arr!48556 a!2804) j!70))) (not (= j!70 index!487)) (bvsge mask!2512 #b00000000000000000000000000000000))))))

(declare-fun e!843201 () Bool)

(assert (=> b!1509683 e!843201))

(declare-fun res!1029655 () Bool)

(assert (=> b!1509683 (=> (not res!1029655) (not e!843201))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100647 (_ BitVec 32)) Bool)

(assert (=> b!1509683 (= res!1029655 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50320 0))(
  ( (Unit!50321) )
))
(declare-fun lt!654937 () Unit!50320)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100647 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50320)

(assert (=> b!1509683 (= lt!654937 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1509684 () Bool)

(declare-fun res!1029658 () Bool)

(assert (=> b!1509684 (=> (not res!1029658) (not e!843202))))

(assert (=> b!1509684 (= res!1029658 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1509685 () Bool)

(declare-fun res!1029659 () Bool)

(assert (=> b!1509685 (=> (not res!1029659) (not e!843202))))

(declare-datatypes ((List!35219 0))(
  ( (Nil!35216) (Cons!35215 (h!36628 (_ BitVec 64)) (t!49920 List!35219)) )
))
(declare-fun arrayNoDuplicates!0 (array!100647 (_ BitVec 32) List!35219) Bool)

(assert (=> b!1509685 (= res!1029659 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35216))))

(declare-fun b!1509686 () Bool)

(declare-fun res!1029661 () Bool)

(assert (=> b!1509686 (=> (not res!1029661) (not e!843202))))

(assert (=> b!1509686 (= res!1029661 (validKeyInArray!0 (select (arr!48556 a!2804) j!70)))))

(declare-fun b!1509687 () Bool)

(assert (=> b!1509687 (= e!843202 e!843203)))

(declare-fun res!1029656 () Bool)

(assert (=> b!1509687 (=> (not res!1029656) (not e!843203))))

(assert (=> b!1509687 (= res!1029656 (= lt!654935 lt!654936))))

(assert (=> b!1509687 (= lt!654936 (Intermediate!12748 false resIndex!21 resX!21))))

(assert (=> b!1509687 (= lt!654935 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48556 a!2804) j!70) mask!2512) (select (arr!48556 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1509688 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100647 (_ BitVec 32)) SeekEntryResult!12748)

(assert (=> b!1509688 (= e!843201 (= (seekEntry!0 (select (arr!48556 a!2804) j!70) a!2804 mask!2512) (Found!12748 j!70)))))

(assert (= (and start!128878 res!1029654) b!1509679))

(assert (= (and b!1509679 res!1029657) b!1509678))

(assert (= (and b!1509678 res!1029653) b!1509686))

(assert (= (and b!1509686 res!1029661) b!1509684))

(assert (= (and b!1509684 res!1029658) b!1509685))

(assert (= (and b!1509685 res!1029659) b!1509680))

(assert (= (and b!1509680 res!1029662) b!1509687))

(assert (= (and b!1509687 res!1029656) b!1509681))

(assert (= (and b!1509681 res!1029663) b!1509682))

(assert (= (and b!1509682 res!1029660) b!1509683))

(assert (= (and b!1509683 res!1029655) b!1509688))

(declare-fun m!1392243 () Bool)

(assert (=> b!1509678 m!1392243))

(assert (=> b!1509678 m!1392243))

(declare-fun m!1392245 () Bool)

(assert (=> b!1509678 m!1392245))

(declare-fun m!1392247 () Bool)

(assert (=> start!128878 m!1392247))

(declare-fun m!1392249 () Bool)

(assert (=> start!128878 m!1392249))

(declare-fun m!1392251 () Bool)

(assert (=> b!1509688 m!1392251))

(assert (=> b!1509688 m!1392251))

(declare-fun m!1392253 () Bool)

(assert (=> b!1509688 m!1392253))

(assert (=> b!1509686 m!1392251))

(assert (=> b!1509686 m!1392251))

(declare-fun m!1392255 () Bool)

(assert (=> b!1509686 m!1392255))

(assert (=> b!1509683 m!1392251))

(declare-fun m!1392257 () Bool)

(assert (=> b!1509683 m!1392257))

(declare-fun m!1392259 () Bool)

(assert (=> b!1509683 m!1392259))

(declare-fun m!1392261 () Bool)

(assert (=> b!1509683 m!1392261))

(declare-fun m!1392263 () Bool)

(assert (=> b!1509683 m!1392263))

(declare-fun m!1392265 () Bool)

(assert (=> b!1509683 m!1392265))

(assert (=> b!1509681 m!1392251))

(assert (=> b!1509681 m!1392251))

(declare-fun m!1392267 () Bool)

(assert (=> b!1509681 m!1392267))

(assert (=> b!1509682 m!1392259))

(assert (=> b!1509682 m!1392263))

(assert (=> b!1509682 m!1392263))

(declare-fun m!1392269 () Bool)

(assert (=> b!1509682 m!1392269))

(assert (=> b!1509682 m!1392269))

(assert (=> b!1509682 m!1392263))

(declare-fun m!1392271 () Bool)

(assert (=> b!1509682 m!1392271))

(declare-fun m!1392273 () Bool)

(assert (=> b!1509685 m!1392273))

(declare-fun m!1392275 () Bool)

(assert (=> b!1509684 m!1392275))

(assert (=> b!1509687 m!1392251))

(assert (=> b!1509687 m!1392251))

(declare-fun m!1392277 () Bool)

(assert (=> b!1509687 m!1392277))

(assert (=> b!1509687 m!1392277))

(assert (=> b!1509687 m!1392251))

(declare-fun m!1392279 () Bool)

(assert (=> b!1509687 m!1392279))

(push 1)

