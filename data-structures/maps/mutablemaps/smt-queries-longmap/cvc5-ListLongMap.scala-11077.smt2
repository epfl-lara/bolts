; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129340 () Bool)

(assert start!129340)

(declare-fun b!1518459 () Bool)

(declare-fun e!847114 () Bool)

(assert (=> b!1518459 (= e!847114 true)))

(declare-datatypes ((array!101109 0))(
  ( (array!101110 (arr!48787 (Array (_ BitVec 32) (_ BitVec 64))) (size!49338 (_ BitVec 32))) )
))
(declare-fun lt!658156 () array!101109)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun a!2804 () array!101109)

(declare-fun lt!658161 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!12979 0))(
  ( (MissingZero!12979 (index!54310 (_ BitVec 32))) (Found!12979 (index!54311 (_ BitVec 32))) (Intermediate!12979 (undefined!13791 Bool) (index!54312 (_ BitVec 32)) (x!135998 (_ BitVec 32))) (Undefined!12979) (MissingVacant!12979 (index!54313 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101109 (_ BitVec 32)) SeekEntryResult!12979)

(assert (=> b!1518459 (= (seekEntryOrOpen!0 (select (arr!48787 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!658161 lt!658156 mask!2512))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun lt!658157 () (_ BitVec 32))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-datatypes ((Unit!50782 0))(
  ( (Unit!50783) )
))
(declare-fun lt!658158 () Unit!50782)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101109 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50782)

(assert (=> b!1518459 (= lt!658158 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!658157 resX!21 resIndex!21 mask!2512))))

(declare-fun b!1518460 () Bool)

(declare-fun e!847112 () Bool)

(assert (=> b!1518460 (= e!847112 e!847114)))

(declare-fun res!1038441 () Bool)

(assert (=> b!1518460 (=> res!1038441 e!847114)))

(assert (=> b!1518460 (= res!1038441 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!658157 #b00000000000000000000000000000000) (bvsge lt!658157 (size!49338 a!2804))))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518460 (= lt!658157 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1518461 () Bool)

(declare-fun e!847118 () Bool)

(declare-fun e!847115 () Bool)

(assert (=> b!1518461 (= e!847118 e!847115)))

(declare-fun res!1038434 () Bool)

(assert (=> b!1518461 (=> (not res!1038434) (not e!847115))))

(declare-fun lt!658159 () SeekEntryResult!12979)

(declare-fun lt!658160 () SeekEntryResult!12979)

(assert (=> b!1518461 (= res!1038434 (= lt!658159 lt!658160))))

(assert (=> b!1518461 (= lt!658160 (Intermediate!12979 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101109 (_ BitVec 32)) SeekEntryResult!12979)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518461 (= lt!658159 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48787 a!2804) j!70) mask!2512) (select (arr!48787 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1518462 () Bool)

(declare-fun e!847116 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101109 (_ BitVec 32)) SeekEntryResult!12979)

(assert (=> b!1518462 (= e!847116 (= (seekEntry!0 (select (arr!48787 a!2804) j!70) a!2804 mask!2512) (Found!12979 j!70)))))

(declare-fun b!1518463 () Bool)

(declare-fun res!1038442 () Bool)

(assert (=> b!1518463 (=> (not res!1038442) (not e!847118))))

(declare-datatypes ((List!35450 0))(
  ( (Nil!35447) (Cons!35446 (h!36859 (_ BitVec 64)) (t!50151 List!35450)) )
))
(declare-fun arrayNoDuplicates!0 (array!101109 (_ BitVec 32) List!35450) Bool)

(assert (=> b!1518463 (= res!1038442 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35447))))

(declare-fun b!1518464 () Bool)

(declare-fun e!847113 () Bool)

(assert (=> b!1518464 (= e!847113 (not e!847112))))

(declare-fun res!1038437 () Bool)

(assert (=> b!1518464 (=> res!1038437 e!847112)))

(assert (=> b!1518464 (= res!1038437 (or (not (= (select (arr!48787 a!2804) j!70) lt!658161)) (= x!534 resX!21)))))

(assert (=> b!1518464 e!847116))

(declare-fun res!1038447 () Bool)

(assert (=> b!1518464 (=> (not res!1038447) (not e!847116))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101109 (_ BitVec 32)) Bool)

(assert (=> b!1518464 (= res!1038447 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!658162 () Unit!50782)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101109 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50782)

(assert (=> b!1518464 (= lt!658162 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1518465 () Bool)

(declare-fun res!1038440 () Bool)

(assert (=> b!1518465 (=> (not res!1038440) (not e!847115))))

(assert (=> b!1518465 (= res!1038440 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48787 a!2804) j!70) a!2804 mask!2512) lt!658160))))

(declare-fun b!1518466 () Bool)

(declare-fun res!1038438 () Bool)

(assert (=> b!1518466 (=> (not res!1038438) (not e!847118))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1518466 (= res!1038438 (validKeyInArray!0 (select (arr!48787 a!2804) j!70)))))

(declare-fun b!1518467 () Bool)

(assert (=> b!1518467 (= e!847115 e!847113)))

(declare-fun res!1038446 () Bool)

(assert (=> b!1518467 (=> (not res!1038446) (not e!847113))))

(assert (=> b!1518467 (= res!1038446 (= lt!658159 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!658161 mask!2512) lt!658161 lt!658156 mask!2512)))))

(assert (=> b!1518467 (= lt!658161 (select (store (arr!48787 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1518467 (= lt!658156 (array!101110 (store (arr!48787 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49338 a!2804)))))

(declare-fun res!1038445 () Bool)

(assert (=> start!129340 (=> (not res!1038445) (not e!847118))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129340 (= res!1038445 (validMask!0 mask!2512))))

(assert (=> start!129340 e!847118))

(assert (=> start!129340 true))

(declare-fun array_inv!37732 (array!101109) Bool)

(assert (=> start!129340 (array_inv!37732 a!2804)))

(declare-fun b!1518468 () Bool)

(declare-fun res!1038443 () Bool)

(assert (=> b!1518468 (=> (not res!1038443) (not e!847118))))

(assert (=> b!1518468 (= res!1038443 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49338 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49338 a!2804))))))

(declare-fun b!1518469 () Bool)

(declare-fun res!1038436 () Bool)

(assert (=> b!1518469 (=> (not res!1038436) (not e!847118))))

(assert (=> b!1518469 (= res!1038436 (validKeyInArray!0 (select (arr!48787 a!2804) i!961)))))

(declare-fun b!1518470 () Bool)

(declare-fun res!1038435 () Bool)

(assert (=> b!1518470 (=> res!1038435 e!847114)))

(assert (=> b!1518470 (= res!1038435 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!658157 (select (arr!48787 a!2804) j!70) a!2804 mask!2512) lt!658160)))))

(declare-fun b!1518471 () Bool)

(declare-fun res!1038439 () Bool)

(assert (=> b!1518471 (=> (not res!1038439) (not e!847118))))

(assert (=> b!1518471 (= res!1038439 (and (= (size!49338 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49338 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49338 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1518472 () Bool)

(declare-fun res!1038444 () Bool)

(assert (=> b!1518472 (=> (not res!1038444) (not e!847118))))

(assert (=> b!1518472 (= res!1038444 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!129340 res!1038445) b!1518471))

(assert (= (and b!1518471 res!1038439) b!1518469))

(assert (= (and b!1518469 res!1038436) b!1518466))

(assert (= (and b!1518466 res!1038438) b!1518472))

(assert (= (and b!1518472 res!1038444) b!1518463))

(assert (= (and b!1518463 res!1038442) b!1518468))

(assert (= (and b!1518468 res!1038443) b!1518461))

(assert (= (and b!1518461 res!1038434) b!1518465))

(assert (= (and b!1518465 res!1038440) b!1518467))

(assert (= (and b!1518467 res!1038446) b!1518464))

(assert (= (and b!1518464 res!1038447) b!1518462))

(assert (= (and b!1518464 (not res!1038437)) b!1518460))

(assert (= (and b!1518460 (not res!1038441)) b!1518470))

(assert (= (and b!1518470 (not res!1038435)) b!1518459))

(declare-fun m!1401831 () Bool)

(assert (=> b!1518466 m!1401831))

(assert (=> b!1518466 m!1401831))

(declare-fun m!1401833 () Bool)

(assert (=> b!1518466 m!1401833))

(assert (=> b!1518465 m!1401831))

(assert (=> b!1518465 m!1401831))

(declare-fun m!1401835 () Bool)

(assert (=> b!1518465 m!1401835))

(assert (=> b!1518470 m!1401831))

(assert (=> b!1518470 m!1401831))

(declare-fun m!1401837 () Bool)

(assert (=> b!1518470 m!1401837))

(assert (=> b!1518459 m!1401831))

(assert (=> b!1518459 m!1401831))

(declare-fun m!1401839 () Bool)

(assert (=> b!1518459 m!1401839))

(declare-fun m!1401841 () Bool)

(assert (=> b!1518459 m!1401841))

(declare-fun m!1401843 () Bool)

(assert (=> b!1518459 m!1401843))

(declare-fun m!1401845 () Bool)

(assert (=> b!1518469 m!1401845))

(assert (=> b!1518469 m!1401845))

(declare-fun m!1401847 () Bool)

(assert (=> b!1518469 m!1401847))

(declare-fun m!1401849 () Bool)

(assert (=> b!1518467 m!1401849))

(assert (=> b!1518467 m!1401849))

(declare-fun m!1401851 () Bool)

(assert (=> b!1518467 m!1401851))

(declare-fun m!1401853 () Bool)

(assert (=> b!1518467 m!1401853))

(declare-fun m!1401855 () Bool)

(assert (=> b!1518467 m!1401855))

(assert (=> b!1518462 m!1401831))

(assert (=> b!1518462 m!1401831))

(declare-fun m!1401857 () Bool)

(assert (=> b!1518462 m!1401857))

(declare-fun m!1401859 () Bool)

(assert (=> b!1518472 m!1401859))

(declare-fun m!1401861 () Bool)

(assert (=> b!1518463 m!1401861))

(assert (=> b!1518464 m!1401831))

(declare-fun m!1401863 () Bool)

(assert (=> b!1518464 m!1401863))

(declare-fun m!1401865 () Bool)

(assert (=> b!1518464 m!1401865))

(declare-fun m!1401867 () Bool)

(assert (=> start!129340 m!1401867))

(declare-fun m!1401869 () Bool)

(assert (=> start!129340 m!1401869))

(assert (=> b!1518461 m!1401831))

(assert (=> b!1518461 m!1401831))

(declare-fun m!1401871 () Bool)

(assert (=> b!1518461 m!1401871))

(assert (=> b!1518461 m!1401871))

(assert (=> b!1518461 m!1401831))

(declare-fun m!1401873 () Bool)

(assert (=> b!1518461 m!1401873))

(declare-fun m!1401875 () Bool)

(assert (=> b!1518460 m!1401875))

(push 1)

