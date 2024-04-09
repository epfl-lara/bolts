; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129358 () Bool)

(assert start!129358)

(declare-fun e!847302 () Bool)

(declare-fun b!1518837 () Bool)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101127 0))(
  ( (array!101128 (arr!48796 (Array (_ BitVec 32) (_ BitVec 64))) (size!49347 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101127)

(declare-datatypes ((SeekEntryResult!12988 0))(
  ( (MissingZero!12988 (index!54346 (_ BitVec 32))) (Found!12988 (index!54347 (_ BitVec 32))) (Intermediate!12988 (undefined!13800 Bool) (index!54348 (_ BitVec 32)) (x!136031 (_ BitVec 32))) (Undefined!12988) (MissingVacant!12988 (index!54349 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101127 (_ BitVec 32)) SeekEntryResult!12988)

(assert (=> b!1518837 (= e!847302 (= (seekEntry!0 (select (arr!48796 a!2804) j!70) a!2804 mask!2512) (Found!12988 j!70)))))

(declare-fun b!1518838 () Bool)

(declare-fun res!1038816 () Bool)

(declare-fun e!847305 () Bool)

(assert (=> b!1518838 (=> (not res!1038816) (not e!847305))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1518838 (= res!1038816 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49347 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49347 a!2804))))))

(declare-fun b!1518839 () Bool)

(declare-fun res!1038823 () Bool)

(declare-fun e!847307 () Bool)

(assert (=> b!1518839 (=> (not res!1038823) (not e!847307))))

(declare-fun lt!658351 () SeekEntryResult!12988)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101127 (_ BitVec 32)) SeekEntryResult!12988)

(assert (=> b!1518839 (= res!1038823 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48796 a!2804) j!70) a!2804 mask!2512) lt!658351))))

(declare-fun b!1518840 () Bool)

(declare-fun e!847301 () Bool)

(declare-fun e!847304 () Bool)

(assert (=> b!1518840 (= e!847301 (not e!847304))))

(declare-fun res!1038821 () Bool)

(assert (=> b!1518840 (=> res!1038821 e!847304)))

(declare-fun lt!658347 () (_ BitVec 64))

(assert (=> b!1518840 (= res!1038821 (or (not (= (select (arr!48796 a!2804) j!70) lt!658347)) (= x!534 resX!21)))))

(assert (=> b!1518840 e!847302))

(declare-fun res!1038822 () Bool)

(assert (=> b!1518840 (=> (not res!1038822) (not e!847302))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101127 (_ BitVec 32)) Bool)

(assert (=> b!1518840 (= res!1038822 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50800 0))(
  ( (Unit!50801) )
))
(declare-fun lt!658346 () Unit!50800)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101127 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50800)

(assert (=> b!1518840 (= lt!658346 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1518841 () Bool)

(declare-fun res!1038825 () Bool)

(assert (=> b!1518841 (=> (not res!1038825) (not e!847305))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1518841 (= res!1038825 (and (= (size!49347 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49347 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49347 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1518842 () Bool)

(declare-fun res!1038815 () Bool)

(assert (=> b!1518842 (=> (not res!1038815) (not e!847305))))

(assert (=> b!1518842 (= res!1038815 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1518843 () Bool)

(declare-fun res!1038813 () Bool)

(declare-fun e!847306 () Bool)

(assert (=> b!1518843 (=> res!1038813 e!847306)))

(declare-fun lt!658348 () (_ BitVec 32))

(assert (=> b!1518843 (= res!1038813 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!658348 (select (arr!48796 a!2804) j!70) a!2804 mask!2512) lt!658351)))))

(declare-fun res!1038817 () Bool)

(assert (=> start!129358 (=> (not res!1038817) (not e!847305))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129358 (= res!1038817 (validMask!0 mask!2512))))

(assert (=> start!129358 e!847305))

(assert (=> start!129358 true))

(declare-fun array_inv!37741 (array!101127) Bool)

(assert (=> start!129358 (array_inv!37741 a!2804)))

(declare-fun b!1518844 () Bool)

(assert (=> b!1518844 (= e!847305 e!847307)))

(declare-fun res!1038820 () Bool)

(assert (=> b!1518844 (=> (not res!1038820) (not e!847307))))

(declare-fun lt!658345 () SeekEntryResult!12988)

(assert (=> b!1518844 (= res!1038820 (= lt!658345 lt!658351))))

(assert (=> b!1518844 (= lt!658351 (Intermediate!12988 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518844 (= lt!658345 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48796 a!2804) j!70) mask!2512) (select (arr!48796 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1518845 () Bool)

(assert (=> b!1518845 (= e!847304 e!847306)))

(declare-fun res!1038819 () Bool)

(assert (=> b!1518845 (=> res!1038819 e!847306)))

(assert (=> b!1518845 (= res!1038819 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!658348 #b00000000000000000000000000000000) (bvsge lt!658348 (size!49347 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518845 (= lt!658348 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1518846 () Bool)

(assert (=> b!1518846 (= e!847307 e!847301)))

(declare-fun res!1038814 () Bool)

(assert (=> b!1518846 (=> (not res!1038814) (not e!847301))))

(declare-fun lt!658350 () array!101127)

(assert (=> b!1518846 (= res!1038814 (= lt!658345 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!658347 mask!2512) lt!658347 lt!658350 mask!2512)))))

(assert (=> b!1518846 (= lt!658347 (select (store (arr!48796 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1518846 (= lt!658350 (array!101128 (store (arr!48796 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49347 a!2804)))))

(declare-fun b!1518847 () Bool)

(assert (=> b!1518847 (= e!847306 true)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101127 (_ BitVec 32)) SeekEntryResult!12988)

(assert (=> b!1518847 (= (seekEntryOrOpen!0 (select (arr!48796 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!658347 lt!658350 mask!2512))))

(declare-fun lt!658349 () Unit!50800)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101127 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50800)

(assert (=> b!1518847 (= lt!658349 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!658348 resX!21 resIndex!21 mask!2512))))

(declare-fun b!1518848 () Bool)

(declare-fun res!1038824 () Bool)

(assert (=> b!1518848 (=> (not res!1038824) (not e!847305))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1518848 (= res!1038824 (validKeyInArray!0 (select (arr!48796 a!2804) j!70)))))

(declare-fun b!1518849 () Bool)

(declare-fun res!1038818 () Bool)

(assert (=> b!1518849 (=> (not res!1038818) (not e!847305))))

(assert (=> b!1518849 (= res!1038818 (validKeyInArray!0 (select (arr!48796 a!2804) i!961)))))

(declare-fun b!1518850 () Bool)

(declare-fun res!1038812 () Bool)

(assert (=> b!1518850 (=> (not res!1038812) (not e!847305))))

(declare-datatypes ((List!35459 0))(
  ( (Nil!35456) (Cons!35455 (h!36868 (_ BitVec 64)) (t!50160 List!35459)) )
))
(declare-fun arrayNoDuplicates!0 (array!101127 (_ BitVec 32) List!35459) Bool)

(assert (=> b!1518850 (= res!1038812 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35456))))

(assert (= (and start!129358 res!1038817) b!1518841))

(assert (= (and b!1518841 res!1038825) b!1518849))

(assert (= (and b!1518849 res!1038818) b!1518848))

(assert (= (and b!1518848 res!1038824) b!1518842))

(assert (= (and b!1518842 res!1038815) b!1518850))

(assert (= (and b!1518850 res!1038812) b!1518838))

(assert (= (and b!1518838 res!1038816) b!1518844))

(assert (= (and b!1518844 res!1038820) b!1518839))

(assert (= (and b!1518839 res!1038823) b!1518846))

(assert (= (and b!1518846 res!1038814) b!1518840))

(assert (= (and b!1518840 res!1038822) b!1518837))

(assert (= (and b!1518840 (not res!1038821)) b!1518845))

(assert (= (and b!1518845 (not res!1038819)) b!1518843))

(assert (= (and b!1518843 (not res!1038813)) b!1518847))

(declare-fun m!1402245 () Bool)

(assert (=> b!1518844 m!1402245))

(assert (=> b!1518844 m!1402245))

(declare-fun m!1402247 () Bool)

(assert (=> b!1518844 m!1402247))

(assert (=> b!1518844 m!1402247))

(assert (=> b!1518844 m!1402245))

(declare-fun m!1402249 () Bool)

(assert (=> b!1518844 m!1402249))

(assert (=> b!1518837 m!1402245))

(assert (=> b!1518837 m!1402245))

(declare-fun m!1402251 () Bool)

(assert (=> b!1518837 m!1402251))

(declare-fun m!1402253 () Bool)

(assert (=> b!1518846 m!1402253))

(assert (=> b!1518846 m!1402253))

(declare-fun m!1402255 () Bool)

(assert (=> b!1518846 m!1402255))

(declare-fun m!1402257 () Bool)

(assert (=> b!1518846 m!1402257))

(declare-fun m!1402259 () Bool)

(assert (=> b!1518846 m!1402259))

(assert (=> b!1518839 m!1402245))

(assert (=> b!1518839 m!1402245))

(declare-fun m!1402261 () Bool)

(assert (=> b!1518839 m!1402261))

(assert (=> b!1518843 m!1402245))

(assert (=> b!1518843 m!1402245))

(declare-fun m!1402263 () Bool)

(assert (=> b!1518843 m!1402263))

(declare-fun m!1402265 () Bool)

(assert (=> b!1518842 m!1402265))

(declare-fun m!1402267 () Bool)

(assert (=> b!1518845 m!1402267))

(assert (=> b!1518848 m!1402245))

(assert (=> b!1518848 m!1402245))

(declare-fun m!1402269 () Bool)

(assert (=> b!1518848 m!1402269))

(assert (=> b!1518847 m!1402245))

(assert (=> b!1518847 m!1402245))

(declare-fun m!1402271 () Bool)

(assert (=> b!1518847 m!1402271))

(declare-fun m!1402273 () Bool)

(assert (=> b!1518847 m!1402273))

(declare-fun m!1402275 () Bool)

(assert (=> b!1518847 m!1402275))

(declare-fun m!1402277 () Bool)

(assert (=> b!1518849 m!1402277))

(assert (=> b!1518849 m!1402277))

(declare-fun m!1402279 () Bool)

(assert (=> b!1518849 m!1402279))

(declare-fun m!1402281 () Bool)

(assert (=> b!1518850 m!1402281))

(assert (=> b!1518840 m!1402245))

(declare-fun m!1402283 () Bool)

(assert (=> b!1518840 m!1402283))

(declare-fun m!1402285 () Bool)

(assert (=> b!1518840 m!1402285))

(declare-fun m!1402287 () Bool)

(assert (=> start!129358 m!1402287))

(declare-fun m!1402289 () Bool)

(assert (=> start!129358 m!1402289))

(push 1)

