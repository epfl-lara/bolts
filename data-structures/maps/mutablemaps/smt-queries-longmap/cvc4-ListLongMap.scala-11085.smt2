; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129392 () Bool)

(assert start!129392)

(declare-fun b!1519536 () Bool)

(declare-fun e!847646 () Bool)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101161 0))(
  ( (array!101162 (arr!48813 (Array (_ BitVec 32) (_ BitVec 64))) (size!49364 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101161)

(declare-datatypes ((SeekEntryResult!13005 0))(
  ( (MissingZero!13005 (index!54414 (_ BitVec 32))) (Found!13005 (index!54415 (_ BitVec 32))) (Intermediate!13005 (undefined!13817 Bool) (index!54416 (_ BitVec 32)) (x!136088 (_ BitVec 32))) (Undefined!13005) (MissingVacant!13005 (index!54417 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101161 (_ BitVec 32)) SeekEntryResult!13005)

(assert (=> b!1519536 (= e!847646 (= (seekEntry!0 (select (arr!48813 a!2804) j!70) a!2804 mask!2512) (Found!13005 j!70)))))

(declare-fun b!1519537 () Bool)

(declare-fun res!1039520 () Bool)

(declare-fun e!847645 () Bool)

(assert (=> b!1519537 (=> (not res!1039520) (not e!847645))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun lt!658670 () SeekEntryResult!13005)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101161 (_ BitVec 32)) SeekEntryResult!13005)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1519537 (= res!1039520 (= lt!658670 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48813 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48813 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101162 (store (arr!48813 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49364 a!2804)) mask!2512)))))

(declare-fun b!1519538 () Bool)

(declare-fun res!1039512 () Bool)

(assert (=> b!1519538 (=> (not res!1039512) (not e!847645))))

(declare-fun lt!658672 () SeekEntryResult!13005)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1519538 (= res!1039512 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48813 a!2804) j!70) a!2804 mask!2512) lt!658672))))

(declare-fun b!1519539 () Bool)

(declare-fun e!847644 () Bool)

(assert (=> b!1519539 (= e!847644 e!847645)))

(declare-fun res!1039518 () Bool)

(assert (=> b!1519539 (=> (not res!1039518) (not e!847645))))

(assert (=> b!1519539 (= res!1039518 (= lt!658670 lt!658672))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1519539 (= lt!658672 (Intermediate!13005 false resIndex!21 resX!21))))

(assert (=> b!1519539 (= lt!658670 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48813 a!2804) j!70) mask!2512) (select (arr!48813 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1519540 () Bool)

(declare-fun res!1039519 () Bool)

(assert (=> b!1519540 (=> (not res!1039519) (not e!847644))))

(assert (=> b!1519540 (= res!1039519 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49364 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49364 a!2804))))))

(declare-fun res!1039513 () Bool)

(assert (=> start!129392 (=> (not res!1039513) (not e!847644))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129392 (= res!1039513 (validMask!0 mask!2512))))

(assert (=> start!129392 e!847644))

(assert (=> start!129392 true))

(declare-fun array_inv!37758 (array!101161) Bool)

(assert (=> start!129392 (array_inv!37758 a!2804)))

(declare-fun b!1519541 () Bool)

(declare-fun res!1039521 () Bool)

(assert (=> b!1519541 (=> (not res!1039521) (not e!847644))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101161 (_ BitVec 32)) Bool)

(assert (=> b!1519541 (= res!1039521 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1519542 () Bool)

(declare-fun res!1039514 () Bool)

(assert (=> b!1519542 (=> (not res!1039514) (not e!847644))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1519542 (= res!1039514 (validKeyInArray!0 (select (arr!48813 a!2804) j!70)))))

(declare-fun b!1519543 () Bool)

(declare-fun res!1039515 () Bool)

(assert (=> b!1519543 (=> (not res!1039515) (not e!847644))))

(declare-datatypes ((List!35476 0))(
  ( (Nil!35473) (Cons!35472 (h!36885 (_ BitVec 64)) (t!50177 List!35476)) )
))
(declare-fun arrayNoDuplicates!0 (array!101161 (_ BitVec 32) List!35476) Bool)

(assert (=> b!1519543 (= res!1039515 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35473))))

(declare-fun b!1519544 () Bool)

(declare-fun res!1039517 () Bool)

(assert (=> b!1519544 (=> (not res!1039517) (not e!847644))))

(assert (=> b!1519544 (= res!1039517 (and (= (size!49364 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49364 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49364 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1519545 () Bool)

(declare-fun res!1039511 () Bool)

(assert (=> b!1519545 (=> (not res!1039511) (not e!847644))))

(assert (=> b!1519545 (= res!1039511 (validKeyInArray!0 (select (arr!48813 a!2804) i!961)))))

(declare-fun b!1519546 () Bool)

(assert (=> b!1519546 (= e!847645 (not (= (select (arr!48813 a!2804) j!70) (select (store (arr!48813 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))))

(assert (=> b!1519546 e!847646))

(declare-fun res!1039516 () Bool)

(assert (=> b!1519546 (=> (not res!1039516) (not e!847646))))

(assert (=> b!1519546 (= res!1039516 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50834 0))(
  ( (Unit!50835) )
))
(declare-fun lt!658671 () Unit!50834)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101161 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50834)

(assert (=> b!1519546 (= lt!658671 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!129392 res!1039513) b!1519544))

(assert (= (and b!1519544 res!1039517) b!1519545))

(assert (= (and b!1519545 res!1039511) b!1519542))

(assert (= (and b!1519542 res!1039514) b!1519541))

(assert (= (and b!1519541 res!1039521) b!1519543))

(assert (= (and b!1519543 res!1039515) b!1519540))

(assert (= (and b!1519540 res!1039519) b!1519539))

(assert (= (and b!1519539 res!1039518) b!1519538))

(assert (= (and b!1519538 res!1039512) b!1519537))

(assert (= (and b!1519537 res!1039520) b!1519546))

(assert (= (and b!1519546 res!1039516) b!1519536))

(declare-fun m!1403013 () Bool)

(assert (=> start!129392 m!1403013))

(declare-fun m!1403015 () Bool)

(assert (=> start!129392 m!1403015))

(declare-fun m!1403017 () Bool)

(assert (=> b!1519545 m!1403017))

(assert (=> b!1519545 m!1403017))

(declare-fun m!1403019 () Bool)

(assert (=> b!1519545 m!1403019))

(declare-fun m!1403021 () Bool)

(assert (=> b!1519539 m!1403021))

(assert (=> b!1519539 m!1403021))

(declare-fun m!1403023 () Bool)

(assert (=> b!1519539 m!1403023))

(assert (=> b!1519539 m!1403023))

(assert (=> b!1519539 m!1403021))

(declare-fun m!1403025 () Bool)

(assert (=> b!1519539 m!1403025))

(declare-fun m!1403027 () Bool)

(assert (=> b!1519543 m!1403027))

(assert (=> b!1519536 m!1403021))

(assert (=> b!1519536 m!1403021))

(declare-fun m!1403029 () Bool)

(assert (=> b!1519536 m!1403029))

(assert (=> b!1519538 m!1403021))

(assert (=> b!1519538 m!1403021))

(declare-fun m!1403031 () Bool)

(assert (=> b!1519538 m!1403031))

(assert (=> b!1519546 m!1403021))

(declare-fun m!1403033 () Bool)

(assert (=> b!1519546 m!1403033))

(declare-fun m!1403035 () Bool)

(assert (=> b!1519546 m!1403035))

(declare-fun m!1403037 () Bool)

(assert (=> b!1519546 m!1403037))

(declare-fun m!1403039 () Bool)

(assert (=> b!1519546 m!1403039))

(declare-fun m!1403041 () Bool)

(assert (=> b!1519541 m!1403041))

(assert (=> b!1519537 m!1403035))

(assert (=> b!1519537 m!1403037))

(assert (=> b!1519537 m!1403037))

(declare-fun m!1403043 () Bool)

(assert (=> b!1519537 m!1403043))

(assert (=> b!1519537 m!1403043))

(assert (=> b!1519537 m!1403037))

(declare-fun m!1403045 () Bool)

(assert (=> b!1519537 m!1403045))

(assert (=> b!1519542 m!1403021))

(assert (=> b!1519542 m!1403021))

(declare-fun m!1403047 () Bool)

(assert (=> b!1519542 m!1403047))

(push 1)

(assert (not start!129392))

(assert (not b!1519543))

(assert (not b!1519546))

(assert (not b!1519539))

(assert (not b!1519542))

(assert (not b!1519536))

(assert (not b!1519538))

(assert (not b!1519545))

(assert (not b!1519541))

(assert (not b!1519537))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

