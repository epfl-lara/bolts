; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129334 () Bool)

(assert start!129334)

(declare-fun b!1518340 () Bool)

(declare-fun e!847058 () Bool)

(declare-fun e!847057 () Bool)

(assert (=> b!1518340 (= e!847058 (not e!847057))))

(declare-fun res!1038323 () Bool)

(assert (=> b!1518340 (=> res!1038323 e!847057)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((array!101103 0))(
  ( (array!101104 (arr!48784 (Array (_ BitVec 32) (_ BitVec 64))) (size!49335 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101103)

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1518340 (= res!1038323 (or (not (= (select (arr!48784 a!2804) j!70) (select (store (arr!48784 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!847060 () Bool)

(assert (=> b!1518340 e!847060))

(declare-fun res!1038318 () Bool)

(assert (=> b!1518340 (=> (not res!1038318) (not e!847060))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101103 (_ BitVec 32)) Bool)

(assert (=> b!1518340 (= res!1038318 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50776 0))(
  ( (Unit!50777) )
))
(declare-fun lt!658108 () Unit!50776)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101103 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50776)

(assert (=> b!1518340 (= lt!658108 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1518341 () Bool)

(declare-fun res!1038324 () Bool)

(declare-fun e!847056 () Bool)

(assert (=> b!1518341 (=> (not res!1038324) (not e!847056))))

(declare-datatypes ((List!35447 0))(
  ( (Nil!35444) (Cons!35443 (h!36856 (_ BitVec 64)) (t!50148 List!35447)) )
))
(declare-fun arrayNoDuplicates!0 (array!101103 (_ BitVec 32) List!35447) Bool)

(assert (=> b!1518341 (= res!1038324 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35444))))

(declare-fun res!1038319 () Bool)

(assert (=> start!129334 (=> (not res!1038319) (not e!847056))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129334 (= res!1038319 (validMask!0 mask!2512))))

(assert (=> start!129334 e!847056))

(assert (=> start!129334 true))

(declare-fun array_inv!37729 (array!101103) Bool)

(assert (=> start!129334 (array_inv!37729 a!2804)))

(declare-fun b!1518342 () Bool)

(declare-fun e!847059 () Bool)

(assert (=> b!1518342 (= e!847059 true)))

(declare-datatypes ((SeekEntryResult!12976 0))(
  ( (MissingZero!12976 (index!54298 (_ BitVec 32))) (Found!12976 (index!54299 (_ BitVec 32))) (Intermediate!12976 (undefined!13788 Bool) (index!54300 (_ BitVec 32)) (x!135987 (_ BitVec 32))) (Undefined!12976) (MissingVacant!12976 (index!54301 (_ BitVec 32))) )
))
(declare-fun lt!658107 () SeekEntryResult!12976)

(declare-fun lt!658110 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101103 (_ BitVec 32)) SeekEntryResult!12976)

(assert (=> b!1518342 (= lt!658107 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!658110 (select (arr!48784 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1518343 () Bool)

(declare-fun res!1038327 () Bool)

(assert (=> b!1518343 (=> (not res!1038327) (not e!847058))))

(declare-fun lt!658109 () SeekEntryResult!12976)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518343 (= res!1038327 (= lt!658109 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48784 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48784 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101104 (store (arr!48784 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49335 a!2804)) mask!2512)))))

(declare-fun b!1518344 () Bool)

(declare-fun res!1038320 () Bool)

(assert (=> b!1518344 (=> (not res!1038320) (not e!847056))))

(assert (=> b!1518344 (= res!1038320 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1518345 () Bool)

(declare-fun res!1038326 () Bool)

(assert (=> b!1518345 (=> (not res!1038326) (not e!847056))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1518345 (= res!1038326 (validKeyInArray!0 (select (arr!48784 a!2804) j!70)))))

(declare-fun b!1518346 () Bool)

(declare-fun res!1038316 () Bool)

(assert (=> b!1518346 (=> (not res!1038316) (not e!847056))))

(assert (=> b!1518346 (= res!1038316 (validKeyInArray!0 (select (arr!48784 a!2804) i!961)))))

(declare-fun b!1518347 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101103 (_ BitVec 32)) SeekEntryResult!12976)

(assert (=> b!1518347 (= e!847060 (= (seekEntry!0 (select (arr!48784 a!2804) j!70) a!2804 mask!2512) (Found!12976 j!70)))))

(declare-fun b!1518348 () Bool)

(assert (=> b!1518348 (= e!847056 e!847058)))

(declare-fun res!1038315 () Bool)

(assert (=> b!1518348 (=> (not res!1038315) (not e!847058))))

(declare-fun lt!658111 () SeekEntryResult!12976)

(assert (=> b!1518348 (= res!1038315 (= lt!658109 lt!658111))))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1518348 (= lt!658111 (Intermediate!12976 false resIndex!21 resX!21))))

(assert (=> b!1518348 (= lt!658109 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48784 a!2804) j!70) mask!2512) (select (arr!48784 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1518349 () Bool)

(declare-fun res!1038321 () Bool)

(assert (=> b!1518349 (=> (not res!1038321) (not e!847058))))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1518349 (= res!1038321 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48784 a!2804) j!70) a!2804 mask!2512) lt!658111))))

(declare-fun b!1518350 () Bool)

(declare-fun res!1038325 () Bool)

(assert (=> b!1518350 (=> (not res!1038325) (not e!847056))))

(assert (=> b!1518350 (= res!1038325 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49335 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49335 a!2804))))))

(declare-fun b!1518351 () Bool)

(assert (=> b!1518351 (= e!847057 e!847059)))

(declare-fun res!1038317 () Bool)

(assert (=> b!1518351 (=> res!1038317 e!847059)))

(assert (=> b!1518351 (= res!1038317 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!658110 #b00000000000000000000000000000000) (bvsge lt!658110 (size!49335 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518351 (= lt!658110 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1518352 () Bool)

(declare-fun res!1038322 () Bool)

(assert (=> b!1518352 (=> (not res!1038322) (not e!847056))))

(assert (=> b!1518352 (= res!1038322 (and (= (size!49335 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49335 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49335 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!129334 res!1038319) b!1518352))

(assert (= (and b!1518352 res!1038322) b!1518346))

(assert (= (and b!1518346 res!1038316) b!1518345))

(assert (= (and b!1518345 res!1038326) b!1518344))

(assert (= (and b!1518344 res!1038320) b!1518341))

(assert (= (and b!1518341 res!1038324) b!1518350))

(assert (= (and b!1518350 res!1038325) b!1518348))

(assert (= (and b!1518348 res!1038315) b!1518349))

(assert (= (and b!1518349 res!1038321) b!1518343))

(assert (= (and b!1518343 res!1038327) b!1518340))

(assert (= (and b!1518340 res!1038318) b!1518347))

(assert (= (and b!1518340 (not res!1038323)) b!1518351))

(assert (= (and b!1518351 (not res!1038317)) b!1518342))

(declare-fun m!1401711 () Bool)

(assert (=> b!1518343 m!1401711))

(declare-fun m!1401713 () Bool)

(assert (=> b!1518343 m!1401713))

(assert (=> b!1518343 m!1401713))

(declare-fun m!1401715 () Bool)

(assert (=> b!1518343 m!1401715))

(assert (=> b!1518343 m!1401715))

(assert (=> b!1518343 m!1401713))

(declare-fun m!1401717 () Bool)

(assert (=> b!1518343 m!1401717))

(declare-fun m!1401719 () Bool)

(assert (=> b!1518351 m!1401719))

(declare-fun m!1401721 () Bool)

(assert (=> start!129334 m!1401721))

(declare-fun m!1401723 () Bool)

(assert (=> start!129334 m!1401723))

(declare-fun m!1401725 () Bool)

(assert (=> b!1518341 m!1401725))

(declare-fun m!1401727 () Bool)

(assert (=> b!1518342 m!1401727))

(assert (=> b!1518342 m!1401727))

(declare-fun m!1401729 () Bool)

(assert (=> b!1518342 m!1401729))

(assert (=> b!1518345 m!1401727))

(assert (=> b!1518345 m!1401727))

(declare-fun m!1401731 () Bool)

(assert (=> b!1518345 m!1401731))

(assert (=> b!1518340 m!1401727))

(declare-fun m!1401733 () Bool)

(assert (=> b!1518340 m!1401733))

(assert (=> b!1518340 m!1401711))

(assert (=> b!1518340 m!1401713))

(declare-fun m!1401735 () Bool)

(assert (=> b!1518340 m!1401735))

(declare-fun m!1401737 () Bool)

(assert (=> b!1518346 m!1401737))

(assert (=> b!1518346 m!1401737))

(declare-fun m!1401739 () Bool)

(assert (=> b!1518346 m!1401739))

(assert (=> b!1518348 m!1401727))

(assert (=> b!1518348 m!1401727))

(declare-fun m!1401741 () Bool)

(assert (=> b!1518348 m!1401741))

(assert (=> b!1518348 m!1401741))

(assert (=> b!1518348 m!1401727))

(declare-fun m!1401743 () Bool)

(assert (=> b!1518348 m!1401743))

(assert (=> b!1518349 m!1401727))

(assert (=> b!1518349 m!1401727))

(declare-fun m!1401745 () Bool)

(assert (=> b!1518349 m!1401745))

(declare-fun m!1401747 () Bool)

(assert (=> b!1518344 m!1401747))

(assert (=> b!1518347 m!1401727))

(assert (=> b!1518347 m!1401727))

(declare-fun m!1401749 () Bool)

(assert (=> b!1518347 m!1401749))

(push 1)

