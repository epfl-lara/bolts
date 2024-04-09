; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129354 () Bool)

(assert start!129354)

(declare-fun b!1518753 () Bool)

(declare-fun res!1038731 () Bool)

(declare-fun e!847264 () Bool)

(assert (=> b!1518753 (=> (not res!1038731) (not e!847264))))

(declare-datatypes ((array!101123 0))(
  ( (array!101124 (arr!48794 (Array (_ BitVec 32) (_ BitVec 64))) (size!49345 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101123)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1518753 (= res!1038731 (validKeyInArray!0 (select (arr!48794 a!2804) i!961)))))

(declare-fun b!1518755 () Bool)

(declare-fun e!847265 () Bool)

(declare-fun e!847263 () Bool)

(assert (=> b!1518755 (= e!847265 (not e!847263))))

(declare-fun res!1038733 () Bool)

(assert (=> b!1518755 (=> res!1038733 e!847263)))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun lt!658305 () (_ BitVec 64))

(assert (=> b!1518755 (= res!1038733 (or (not (= (select (arr!48794 a!2804) j!70) lt!658305)) (= x!534 resX!21)))))

(declare-fun e!847259 () Bool)

(assert (=> b!1518755 e!847259))

(declare-fun res!1038730 () Bool)

(assert (=> b!1518755 (=> (not res!1038730) (not e!847259))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101123 (_ BitVec 32)) Bool)

(assert (=> b!1518755 (= res!1038730 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50796 0))(
  ( (Unit!50797) )
))
(declare-fun lt!658304 () Unit!50796)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101123 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50796)

(assert (=> b!1518755 (= lt!658304 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1518756 () Bool)

(declare-fun res!1038736 () Bool)

(declare-fun e!847261 () Bool)

(assert (=> b!1518756 (=> res!1038736 e!847261)))

(declare-fun lt!658303 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12986 0))(
  ( (MissingZero!12986 (index!54338 (_ BitVec 32))) (Found!12986 (index!54339 (_ BitVec 32))) (Intermediate!12986 (undefined!13798 Bool) (index!54340 (_ BitVec 32)) (x!136021 (_ BitVec 32))) (Undefined!12986) (MissingVacant!12986 (index!54341 (_ BitVec 32))) )
))
(declare-fun lt!658309 () SeekEntryResult!12986)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101123 (_ BitVec 32)) SeekEntryResult!12986)

(assert (=> b!1518756 (= res!1038736 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!658303 (select (arr!48794 a!2804) j!70) a!2804 mask!2512) lt!658309)))))

(declare-fun b!1518757 () Bool)

(declare-fun res!1038740 () Bool)

(assert (=> b!1518757 (=> (not res!1038740) (not e!847264))))

(declare-datatypes ((List!35457 0))(
  ( (Nil!35454) (Cons!35453 (h!36866 (_ BitVec 64)) (t!50158 List!35457)) )
))
(declare-fun arrayNoDuplicates!0 (array!101123 (_ BitVec 32) List!35457) Bool)

(assert (=> b!1518757 (= res!1038740 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35454))))

(declare-fun b!1518758 () Bool)

(declare-fun e!847262 () Bool)

(assert (=> b!1518758 (= e!847262 e!847265)))

(declare-fun res!1038732 () Bool)

(assert (=> b!1518758 (=> (not res!1038732) (not e!847265))))

(declare-fun lt!658308 () array!101123)

(declare-fun lt!658307 () SeekEntryResult!12986)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518758 (= res!1038732 (= lt!658307 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!658305 mask!2512) lt!658305 lt!658308 mask!2512)))))

(assert (=> b!1518758 (= lt!658305 (select (store (arr!48794 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1518758 (= lt!658308 (array!101124 (store (arr!48794 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49345 a!2804)))))

(declare-fun b!1518759 () Bool)

(assert (=> b!1518759 (= e!847264 e!847262)))

(declare-fun res!1038734 () Bool)

(assert (=> b!1518759 (=> (not res!1038734) (not e!847262))))

(assert (=> b!1518759 (= res!1038734 (= lt!658307 lt!658309))))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1518759 (= lt!658309 (Intermediate!12986 false resIndex!21 resX!21))))

(assert (=> b!1518759 (= lt!658307 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48794 a!2804) j!70) mask!2512) (select (arr!48794 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1518760 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101123 (_ BitVec 32)) SeekEntryResult!12986)

(assert (=> b!1518760 (= e!847259 (= (seekEntry!0 (select (arr!48794 a!2804) j!70) a!2804 mask!2512) (Found!12986 j!70)))))

(declare-fun b!1518754 () Bool)

(assert (=> b!1518754 (= e!847261 true)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101123 (_ BitVec 32)) SeekEntryResult!12986)

(assert (=> b!1518754 (= (seekEntryOrOpen!0 (select (arr!48794 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!658305 lt!658308 mask!2512))))

(declare-fun lt!658306 () Unit!50796)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101123 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50796)

(assert (=> b!1518754 (= lt!658306 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!658303 resX!21 resIndex!21 mask!2512))))

(declare-fun res!1038729 () Bool)

(assert (=> start!129354 (=> (not res!1038729) (not e!847264))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129354 (= res!1038729 (validMask!0 mask!2512))))

(assert (=> start!129354 e!847264))

(assert (=> start!129354 true))

(declare-fun array_inv!37739 (array!101123) Bool)

(assert (=> start!129354 (array_inv!37739 a!2804)))

(declare-fun b!1518761 () Bool)

(declare-fun res!1038738 () Bool)

(assert (=> b!1518761 (=> (not res!1038738) (not e!847264))))

(assert (=> b!1518761 (= res!1038738 (and (= (size!49345 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49345 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49345 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1518762 () Bool)

(declare-fun res!1038737 () Bool)

(assert (=> b!1518762 (=> (not res!1038737) (not e!847264))))

(assert (=> b!1518762 (= res!1038737 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1518763 () Bool)

(declare-fun res!1038741 () Bool)

(assert (=> b!1518763 (=> (not res!1038741) (not e!847264))))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1518763 (= res!1038741 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49345 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49345 a!2804))))))

(declare-fun b!1518764 () Bool)

(declare-fun res!1038728 () Bool)

(assert (=> b!1518764 (=> (not res!1038728) (not e!847262))))

(assert (=> b!1518764 (= res!1038728 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48794 a!2804) j!70) a!2804 mask!2512) lt!658309))))

(declare-fun b!1518765 () Bool)

(assert (=> b!1518765 (= e!847263 e!847261)))

(declare-fun res!1038735 () Bool)

(assert (=> b!1518765 (=> res!1038735 e!847261)))

(assert (=> b!1518765 (= res!1038735 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!658303 #b00000000000000000000000000000000) (bvsge lt!658303 (size!49345 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518765 (= lt!658303 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1518766 () Bool)

(declare-fun res!1038739 () Bool)

(assert (=> b!1518766 (=> (not res!1038739) (not e!847264))))

(assert (=> b!1518766 (= res!1038739 (validKeyInArray!0 (select (arr!48794 a!2804) j!70)))))

(assert (= (and start!129354 res!1038729) b!1518761))

(assert (= (and b!1518761 res!1038738) b!1518753))

(assert (= (and b!1518753 res!1038731) b!1518766))

(assert (= (and b!1518766 res!1038739) b!1518762))

(assert (= (and b!1518762 res!1038737) b!1518757))

(assert (= (and b!1518757 res!1038740) b!1518763))

(assert (= (and b!1518763 res!1038741) b!1518759))

(assert (= (and b!1518759 res!1038734) b!1518764))

(assert (= (and b!1518764 res!1038728) b!1518758))

(assert (= (and b!1518758 res!1038732) b!1518755))

(assert (= (and b!1518755 res!1038730) b!1518760))

(assert (= (and b!1518755 (not res!1038733)) b!1518765))

(assert (= (and b!1518765 (not res!1038735)) b!1518756))

(assert (= (and b!1518756 (not res!1038736)) b!1518754))

(declare-fun m!1402153 () Bool)

(assert (=> b!1518757 m!1402153))

(declare-fun m!1402155 () Bool)

(assert (=> b!1518765 m!1402155))

(declare-fun m!1402157 () Bool)

(assert (=> b!1518764 m!1402157))

(assert (=> b!1518764 m!1402157))

(declare-fun m!1402159 () Bool)

(assert (=> b!1518764 m!1402159))

(assert (=> b!1518754 m!1402157))

(assert (=> b!1518754 m!1402157))

(declare-fun m!1402161 () Bool)

(assert (=> b!1518754 m!1402161))

(declare-fun m!1402163 () Bool)

(assert (=> b!1518754 m!1402163))

(declare-fun m!1402165 () Bool)

(assert (=> b!1518754 m!1402165))

(assert (=> b!1518756 m!1402157))

(assert (=> b!1518756 m!1402157))

(declare-fun m!1402167 () Bool)

(assert (=> b!1518756 m!1402167))

(assert (=> b!1518760 m!1402157))

(assert (=> b!1518760 m!1402157))

(declare-fun m!1402169 () Bool)

(assert (=> b!1518760 m!1402169))

(declare-fun m!1402171 () Bool)

(assert (=> b!1518753 m!1402171))

(assert (=> b!1518753 m!1402171))

(declare-fun m!1402173 () Bool)

(assert (=> b!1518753 m!1402173))

(declare-fun m!1402175 () Bool)

(assert (=> b!1518762 m!1402175))

(assert (=> b!1518759 m!1402157))

(assert (=> b!1518759 m!1402157))

(declare-fun m!1402177 () Bool)

(assert (=> b!1518759 m!1402177))

(assert (=> b!1518759 m!1402177))

(assert (=> b!1518759 m!1402157))

(declare-fun m!1402179 () Bool)

(assert (=> b!1518759 m!1402179))

(declare-fun m!1402181 () Bool)

(assert (=> start!129354 m!1402181))

(declare-fun m!1402183 () Bool)

(assert (=> start!129354 m!1402183))

(assert (=> b!1518755 m!1402157))

(declare-fun m!1402185 () Bool)

(assert (=> b!1518755 m!1402185))

(declare-fun m!1402187 () Bool)

(assert (=> b!1518755 m!1402187))

(declare-fun m!1402189 () Bool)

(assert (=> b!1518758 m!1402189))

(assert (=> b!1518758 m!1402189))

(declare-fun m!1402191 () Bool)

(assert (=> b!1518758 m!1402191))

(declare-fun m!1402193 () Bool)

(assert (=> b!1518758 m!1402193))

(declare-fun m!1402195 () Bool)

(assert (=> b!1518758 m!1402195))

(assert (=> b!1518766 m!1402157))

(assert (=> b!1518766 m!1402157))

(declare-fun m!1402197 () Bool)

(assert (=> b!1518766 m!1402197))

(check-sat (not b!1518765) (not b!1518760) (not b!1518754) (not start!129354) (not b!1518759) (not b!1518764) (not b!1518757) (not b!1518766) (not b!1518753) (not b!1518755) (not b!1518758) (not b!1518756) (not b!1518762))
(check-sat)
