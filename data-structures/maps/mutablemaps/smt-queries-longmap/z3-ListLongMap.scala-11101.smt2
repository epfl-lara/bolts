; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129662 () Bool)

(assert start!129662)

(declare-fun b!1521686 () Bool)

(declare-fun res!1041048 () Bool)

(declare-fun e!848606 () Bool)

(assert (=> b!1521686 (=> (not res!1041048) (not e!848606))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101264 0))(
  ( (array!101265 (arr!48860 (Array (_ BitVec 32) (_ BitVec 64))) (size!49411 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101264)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1521686 (= res!1041048 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49411 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49411 a!2804))))))

(declare-fun b!1521687 () Bool)

(declare-fun e!848605 () Bool)

(assert (=> b!1521687 (= e!848605 false)))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13046 0))(
  ( (MissingZero!13046 (index!54578 (_ BitVec 32))) (Found!13046 (index!54579 (_ BitVec 32))) (Intermediate!13046 (undefined!13858 Bool) (index!54580 (_ BitVec 32)) (x!136277 (_ BitVec 32))) (Undefined!13046) (MissingVacant!13046 (index!54581 (_ BitVec 32))) )
))
(declare-fun lt!659356 () SeekEntryResult!13046)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101264 (_ BitVec 32)) SeekEntryResult!13046)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1521687 (= lt!659356 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48860 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48860 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101265 (store (arr!48860 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49411 a!2804)) mask!2512))))

(declare-fun b!1521688 () Bool)

(declare-fun res!1041046 () Bool)

(assert (=> b!1521688 (=> (not res!1041046) (not e!848606))))

(assert (=> b!1521688 (= res!1041046 (and (= (size!49411 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49411 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49411 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1521689 () Bool)

(assert (=> b!1521689 (= e!848606 e!848605)))

(declare-fun res!1041053 () Bool)

(assert (=> b!1521689 (=> (not res!1041053) (not e!848605))))

(declare-fun lt!659355 () SeekEntryResult!13046)

(assert (=> b!1521689 (= res!1041053 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48860 a!2804) j!70) mask!2512) (select (arr!48860 a!2804) j!70) a!2804 mask!2512) lt!659355))))

(assert (=> b!1521689 (= lt!659355 (Intermediate!13046 false resIndex!21 resX!21))))

(declare-fun res!1041047 () Bool)

(assert (=> start!129662 (=> (not res!1041047) (not e!848606))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129662 (= res!1041047 (validMask!0 mask!2512))))

(assert (=> start!129662 e!848606))

(assert (=> start!129662 true))

(declare-fun array_inv!37805 (array!101264) Bool)

(assert (=> start!129662 (array_inv!37805 a!2804)))

(declare-fun b!1521690 () Bool)

(declare-fun res!1041049 () Bool)

(assert (=> b!1521690 (=> (not res!1041049) (not e!848605))))

(assert (=> b!1521690 (= res!1041049 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48860 a!2804) j!70) a!2804 mask!2512) lt!659355))))

(declare-fun b!1521691 () Bool)

(declare-fun res!1041052 () Bool)

(assert (=> b!1521691 (=> (not res!1041052) (not e!848606))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1521691 (= res!1041052 (validKeyInArray!0 (select (arr!48860 a!2804) i!961)))))

(declare-fun b!1521692 () Bool)

(declare-fun res!1041051 () Bool)

(assert (=> b!1521692 (=> (not res!1041051) (not e!848606))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101264 (_ BitVec 32)) Bool)

(assert (=> b!1521692 (= res!1041051 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1521693 () Bool)

(declare-fun res!1041050 () Bool)

(assert (=> b!1521693 (=> (not res!1041050) (not e!848606))))

(declare-datatypes ((List!35523 0))(
  ( (Nil!35520) (Cons!35519 (h!36941 (_ BitVec 64)) (t!50224 List!35523)) )
))
(declare-fun arrayNoDuplicates!0 (array!101264 (_ BitVec 32) List!35523) Bool)

(assert (=> b!1521693 (= res!1041050 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35520))))

(declare-fun b!1521694 () Bool)

(declare-fun res!1041054 () Bool)

(assert (=> b!1521694 (=> (not res!1041054) (not e!848606))))

(assert (=> b!1521694 (= res!1041054 (validKeyInArray!0 (select (arr!48860 a!2804) j!70)))))

(assert (= (and start!129662 res!1041047) b!1521688))

(assert (= (and b!1521688 res!1041046) b!1521691))

(assert (= (and b!1521691 res!1041052) b!1521694))

(assert (= (and b!1521694 res!1041054) b!1521692))

(assert (= (and b!1521692 res!1041051) b!1521693))

(assert (= (and b!1521693 res!1041050) b!1521686))

(assert (= (and b!1521686 res!1041048) b!1521689))

(assert (= (and b!1521689 res!1041053) b!1521690))

(assert (= (and b!1521690 res!1041049) b!1521687))

(declare-fun m!1404851 () Bool)

(assert (=> b!1521694 m!1404851))

(assert (=> b!1521694 m!1404851))

(declare-fun m!1404853 () Bool)

(assert (=> b!1521694 m!1404853))

(declare-fun m!1404855 () Bool)

(assert (=> b!1521691 m!1404855))

(assert (=> b!1521691 m!1404855))

(declare-fun m!1404857 () Bool)

(assert (=> b!1521691 m!1404857))

(assert (=> b!1521689 m!1404851))

(assert (=> b!1521689 m!1404851))

(declare-fun m!1404859 () Bool)

(assert (=> b!1521689 m!1404859))

(assert (=> b!1521689 m!1404859))

(assert (=> b!1521689 m!1404851))

(declare-fun m!1404861 () Bool)

(assert (=> b!1521689 m!1404861))

(declare-fun m!1404863 () Bool)

(assert (=> b!1521687 m!1404863))

(declare-fun m!1404865 () Bool)

(assert (=> b!1521687 m!1404865))

(assert (=> b!1521687 m!1404865))

(declare-fun m!1404867 () Bool)

(assert (=> b!1521687 m!1404867))

(assert (=> b!1521687 m!1404867))

(assert (=> b!1521687 m!1404865))

(declare-fun m!1404869 () Bool)

(assert (=> b!1521687 m!1404869))

(declare-fun m!1404871 () Bool)

(assert (=> start!129662 m!1404871))

(declare-fun m!1404873 () Bool)

(assert (=> start!129662 m!1404873))

(declare-fun m!1404875 () Bool)

(assert (=> b!1521692 m!1404875))

(declare-fun m!1404877 () Bool)

(assert (=> b!1521693 m!1404877))

(assert (=> b!1521690 m!1404851))

(assert (=> b!1521690 m!1404851))

(declare-fun m!1404879 () Bool)

(assert (=> b!1521690 m!1404879))

(check-sat (not b!1521692) (not b!1521690) (not b!1521687) (not b!1521694) (not start!129662) (not b!1521689) (not b!1521691) (not b!1521693))
(check-sat)
