; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129360 () Bool)

(assert start!129360)

(declare-fun b!1518879 () Bool)

(declare-fun res!1038855 () Bool)

(declare-fun e!847324 () Bool)

(assert (=> b!1518879 (=> (not res!1038855) (not e!847324))))

(declare-datatypes ((array!101129 0))(
  ( (array!101130 (arr!48797 (Array (_ BitVec 32) (_ BitVec 64))) (size!49348 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101129)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101129 (_ BitVec 32)) Bool)

(assert (=> b!1518879 (= res!1038855 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1518880 () Bool)

(declare-fun res!1038856 () Bool)

(assert (=> b!1518880 (=> (not res!1038856) (not e!847324))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1518880 (= res!1038856 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49348 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49348 a!2804))))))

(declare-fun b!1518881 () Bool)

(declare-fun e!847325 () Bool)

(assert (=> b!1518881 (= e!847324 e!847325)))

(declare-fun res!1038857 () Bool)

(assert (=> b!1518881 (=> (not res!1038857) (not e!847325))))

(declare-datatypes ((SeekEntryResult!12989 0))(
  ( (MissingZero!12989 (index!54350 (_ BitVec 32))) (Found!12989 (index!54351 (_ BitVec 32))) (Intermediate!12989 (undefined!13801 Bool) (index!54352 (_ BitVec 32)) (x!136032 (_ BitVec 32))) (Undefined!12989) (MissingVacant!12989 (index!54353 (_ BitVec 32))) )
))
(declare-fun lt!658367 () SeekEntryResult!12989)

(declare-fun lt!658368 () SeekEntryResult!12989)

(assert (=> b!1518881 (= res!1038857 (= lt!658367 lt!658368))))

(assert (=> b!1518881 (= lt!658368 (Intermediate!12989 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101129 (_ BitVec 32)) SeekEntryResult!12989)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518881 (= lt!658367 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48797 a!2804) j!70) mask!2512) (select (arr!48797 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1518882 () Bool)

(declare-fun res!1038864 () Bool)

(assert (=> b!1518882 (=> (not res!1038864) (not e!847325))))

(assert (=> b!1518882 (= res!1038864 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48797 a!2804) j!70) a!2804 mask!2512) lt!658368))))

(declare-fun b!1518883 () Bool)

(declare-fun e!847328 () Bool)

(declare-fun e!847323 () Bool)

(assert (=> b!1518883 (= e!847328 (not e!847323))))

(declare-fun res!1038862 () Bool)

(assert (=> b!1518883 (=> res!1038862 e!847323)))

(declare-fun lt!658371 () (_ BitVec 64))

(assert (=> b!1518883 (= res!1038862 (or (not (= (select (arr!48797 a!2804) j!70) lt!658371)) (= x!534 resX!21)))))

(declare-fun e!847326 () Bool)

(assert (=> b!1518883 e!847326))

(declare-fun res!1038859 () Bool)

(assert (=> b!1518883 (=> (not res!1038859) (not e!847326))))

(assert (=> b!1518883 (= res!1038859 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50802 0))(
  ( (Unit!50803) )
))
(declare-fun lt!658372 () Unit!50802)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101129 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50802)

(assert (=> b!1518883 (= lt!658372 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1518884 () Bool)

(declare-fun res!1038854 () Bool)

(assert (=> b!1518884 (=> (not res!1038854) (not e!847324))))

(declare-datatypes ((List!35460 0))(
  ( (Nil!35457) (Cons!35456 (h!36869 (_ BitVec 64)) (t!50161 List!35460)) )
))
(declare-fun arrayNoDuplicates!0 (array!101129 (_ BitVec 32) List!35460) Bool)

(assert (=> b!1518884 (= res!1038854 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35457))))

(declare-fun b!1518885 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101129 (_ BitVec 32)) SeekEntryResult!12989)

(assert (=> b!1518885 (= e!847326 (= (seekEntry!0 (select (arr!48797 a!2804) j!70) a!2804 mask!2512) (Found!12989 j!70)))))

(declare-fun res!1038858 () Bool)

(assert (=> start!129360 (=> (not res!1038858) (not e!847324))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129360 (= res!1038858 (validMask!0 mask!2512))))

(assert (=> start!129360 e!847324))

(assert (=> start!129360 true))

(declare-fun array_inv!37742 (array!101129) Bool)

(assert (=> start!129360 (array_inv!37742 a!2804)))

(declare-fun b!1518886 () Bool)

(declare-fun res!1038860 () Bool)

(assert (=> b!1518886 (=> (not res!1038860) (not e!847324))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1518886 (= res!1038860 (validKeyInArray!0 (select (arr!48797 a!2804) j!70)))))

(declare-fun b!1518887 () Bool)

(assert (=> b!1518887 (= e!847325 e!847328)))

(declare-fun res!1038867 () Bool)

(assert (=> b!1518887 (=> (not res!1038867) (not e!847328))))

(declare-fun lt!658366 () array!101129)

(assert (=> b!1518887 (= res!1038867 (= lt!658367 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!658371 mask!2512) lt!658371 lt!658366 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1518887 (= lt!658371 (select (store (arr!48797 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1518887 (= lt!658366 (array!101130 (store (arr!48797 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49348 a!2804)))))

(declare-fun b!1518888 () Bool)

(declare-fun res!1038861 () Bool)

(assert (=> b!1518888 (=> (not res!1038861) (not e!847324))))

(assert (=> b!1518888 (= res!1038861 (validKeyInArray!0 (select (arr!48797 a!2804) i!961)))))

(declare-fun b!1518889 () Bool)

(declare-fun e!847327 () Bool)

(assert (=> b!1518889 (= e!847323 e!847327)))

(declare-fun res!1038865 () Bool)

(assert (=> b!1518889 (=> res!1038865 e!847327)))

(declare-fun lt!658369 () (_ BitVec 32))

(assert (=> b!1518889 (= res!1038865 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!658369 #b00000000000000000000000000000000) (bvsge lt!658369 (size!49348 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518889 (= lt!658369 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1518890 () Bool)

(declare-fun res!1038863 () Bool)

(assert (=> b!1518890 (=> (not res!1038863) (not e!847324))))

(assert (=> b!1518890 (= res!1038863 (and (= (size!49348 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49348 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49348 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1518891 () Bool)

(assert (=> b!1518891 (= e!847327 true)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101129 (_ BitVec 32)) SeekEntryResult!12989)

(assert (=> b!1518891 (= (seekEntryOrOpen!0 (select (arr!48797 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!658371 lt!658366 mask!2512))))

(declare-fun lt!658370 () Unit!50802)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101129 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50802)

(assert (=> b!1518891 (= lt!658370 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!658369 resX!21 resIndex!21 mask!2512))))

(declare-fun b!1518892 () Bool)

(declare-fun res!1038866 () Bool)

(assert (=> b!1518892 (=> res!1038866 e!847327)))

(assert (=> b!1518892 (= res!1038866 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!658369 (select (arr!48797 a!2804) j!70) a!2804 mask!2512) lt!658368)))))

(assert (= (and start!129360 res!1038858) b!1518890))

(assert (= (and b!1518890 res!1038863) b!1518888))

(assert (= (and b!1518888 res!1038861) b!1518886))

(assert (= (and b!1518886 res!1038860) b!1518879))

(assert (= (and b!1518879 res!1038855) b!1518884))

(assert (= (and b!1518884 res!1038854) b!1518880))

(assert (= (and b!1518880 res!1038856) b!1518881))

(assert (= (and b!1518881 res!1038857) b!1518882))

(assert (= (and b!1518882 res!1038864) b!1518887))

(assert (= (and b!1518887 res!1038867) b!1518883))

(assert (= (and b!1518883 res!1038859) b!1518885))

(assert (= (and b!1518883 (not res!1038862)) b!1518889))

(assert (= (and b!1518889 (not res!1038865)) b!1518892))

(assert (= (and b!1518892 (not res!1038866)) b!1518891))

(declare-fun m!1402291 () Bool)

(assert (=> b!1518887 m!1402291))

(assert (=> b!1518887 m!1402291))

(declare-fun m!1402293 () Bool)

(assert (=> b!1518887 m!1402293))

(declare-fun m!1402295 () Bool)

(assert (=> b!1518887 m!1402295))

(declare-fun m!1402297 () Bool)

(assert (=> b!1518887 m!1402297))

(declare-fun m!1402299 () Bool)

(assert (=> start!129360 m!1402299))

(declare-fun m!1402301 () Bool)

(assert (=> start!129360 m!1402301))

(declare-fun m!1402303 () Bool)

(assert (=> b!1518889 m!1402303))

(declare-fun m!1402305 () Bool)

(assert (=> b!1518886 m!1402305))

(assert (=> b!1518886 m!1402305))

(declare-fun m!1402307 () Bool)

(assert (=> b!1518886 m!1402307))

(declare-fun m!1402309 () Bool)

(assert (=> b!1518879 m!1402309))

(assert (=> b!1518892 m!1402305))

(assert (=> b!1518892 m!1402305))

(declare-fun m!1402311 () Bool)

(assert (=> b!1518892 m!1402311))

(assert (=> b!1518883 m!1402305))

(declare-fun m!1402313 () Bool)

(assert (=> b!1518883 m!1402313))

(declare-fun m!1402315 () Bool)

(assert (=> b!1518883 m!1402315))

(declare-fun m!1402317 () Bool)

(assert (=> b!1518884 m!1402317))

(assert (=> b!1518882 m!1402305))

(assert (=> b!1518882 m!1402305))

(declare-fun m!1402319 () Bool)

(assert (=> b!1518882 m!1402319))

(assert (=> b!1518891 m!1402305))

(assert (=> b!1518891 m!1402305))

(declare-fun m!1402321 () Bool)

(assert (=> b!1518891 m!1402321))

(declare-fun m!1402323 () Bool)

(assert (=> b!1518891 m!1402323))

(declare-fun m!1402325 () Bool)

(assert (=> b!1518891 m!1402325))

(assert (=> b!1518881 m!1402305))

(assert (=> b!1518881 m!1402305))

(declare-fun m!1402327 () Bool)

(assert (=> b!1518881 m!1402327))

(assert (=> b!1518881 m!1402327))

(assert (=> b!1518881 m!1402305))

(declare-fun m!1402329 () Bool)

(assert (=> b!1518881 m!1402329))

(assert (=> b!1518885 m!1402305))

(assert (=> b!1518885 m!1402305))

(declare-fun m!1402331 () Bool)

(assert (=> b!1518885 m!1402331))

(declare-fun m!1402333 () Bool)

(assert (=> b!1518888 m!1402333))

(assert (=> b!1518888 m!1402333))

(declare-fun m!1402335 () Bool)

(assert (=> b!1518888 m!1402335))

(check-sat (not b!1518886) (not b!1518892) (not b!1518891) (not b!1518885) (not start!129360) (not b!1518884) (not b!1518879) (not b!1518883) (not b!1518887) (not b!1518881) (not b!1518889) (not b!1518888) (not b!1518882))
(check-sat)
