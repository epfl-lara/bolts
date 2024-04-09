; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129346 () Bool)

(assert start!129346)

(declare-fun b!1518585 () Bool)

(declare-fun e!847178 () Bool)

(declare-fun e!847177 () Bool)

(assert (=> b!1518585 (= e!847178 e!847177)))

(declare-fun res!1038564 () Bool)

(assert (=> b!1518585 (=> (not res!1038564) (not e!847177))))

(declare-datatypes ((SeekEntryResult!12982 0))(
  ( (MissingZero!12982 (index!54322 (_ BitVec 32))) (Found!12982 (index!54323 (_ BitVec 32))) (Intermediate!12982 (undefined!13794 Bool) (index!54324 (_ BitVec 32)) (x!136009 (_ BitVec 32))) (Undefined!12982) (MissingVacant!12982 (index!54325 (_ BitVec 32))) )
))
(declare-fun lt!658225 () SeekEntryResult!12982)

(declare-fun lt!658221 () SeekEntryResult!12982)

(assert (=> b!1518585 (= res!1038564 (= lt!658225 lt!658221))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1518585 (= lt!658221 (Intermediate!12982 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101115 0))(
  ( (array!101116 (arr!48790 (Array (_ BitVec 32) (_ BitVec 64))) (size!49341 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101115)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101115 (_ BitVec 32)) SeekEntryResult!12982)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518585 (= lt!658225 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48790 a!2804) j!70) mask!2512) (select (arr!48790 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1518586 () Bool)

(declare-fun e!847176 () Bool)

(declare-fun e!847179 () Bool)

(assert (=> b!1518586 (= e!847176 e!847179)))

(declare-fun res!1038563 () Bool)

(assert (=> b!1518586 (=> res!1038563 e!847179)))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lt!658222 () (_ BitVec 32))

(assert (=> b!1518586 (= res!1038563 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!658222 #b00000000000000000000000000000000) (bvsge lt!658222 (size!49341 a!2804))))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518586 (= lt!658222 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1518587 () Bool)

(declare-fun e!847175 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101115 (_ BitVec 32)) SeekEntryResult!12982)

(assert (=> b!1518587 (= e!847175 (= (seekEntry!0 (select (arr!48790 a!2804) j!70) a!2804 mask!2512) (Found!12982 j!70)))))

(declare-fun b!1518588 () Bool)

(declare-fun res!1038570 () Bool)

(assert (=> b!1518588 (=> (not res!1038570) (not e!847178))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1518588 (= res!1038570 (validKeyInArray!0 (select (arr!48790 a!2804) i!961)))))

(declare-fun b!1518589 () Bool)

(declare-fun e!847181 () Bool)

(assert (=> b!1518589 (= e!847177 e!847181)))

(declare-fun res!1038561 () Bool)

(assert (=> b!1518589 (=> (not res!1038561) (not e!847181))))

(declare-fun lt!658220 () (_ BitVec 64))

(declare-fun lt!658223 () array!101115)

(assert (=> b!1518589 (= res!1038561 (= lt!658225 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!658220 mask!2512) lt!658220 lt!658223 mask!2512)))))

(assert (=> b!1518589 (= lt!658220 (select (store (arr!48790 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1518589 (= lt!658223 (array!101116 (store (arr!48790 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49341 a!2804)))))

(declare-fun b!1518590 () Bool)

(declare-fun res!1038560 () Bool)

(assert (=> b!1518590 (=> (not res!1038560) (not e!847177))))

(assert (=> b!1518590 (= res!1038560 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48790 a!2804) j!70) a!2804 mask!2512) lt!658221))))

(declare-fun b!1518591 () Bool)

(declare-fun res!1038568 () Bool)

(assert (=> b!1518591 (=> (not res!1038568) (not e!847178))))

(assert (=> b!1518591 (= res!1038568 (validKeyInArray!0 (select (arr!48790 a!2804) j!70)))))

(declare-fun b!1518592 () Bool)

(assert (=> b!1518592 (= e!847181 (not e!847176))))

(declare-fun res!1038571 () Bool)

(assert (=> b!1518592 (=> res!1038571 e!847176)))

(assert (=> b!1518592 (= res!1038571 (or (not (= (select (arr!48790 a!2804) j!70) lt!658220)) (= x!534 resX!21)))))

(assert (=> b!1518592 e!847175))

(declare-fun res!1038565 () Bool)

(assert (=> b!1518592 (=> (not res!1038565) (not e!847175))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101115 (_ BitVec 32)) Bool)

(assert (=> b!1518592 (= res!1038565 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50788 0))(
  ( (Unit!50789) )
))
(declare-fun lt!658224 () Unit!50788)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101115 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50788)

(assert (=> b!1518592 (= lt!658224 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun res!1038566 () Bool)

(assert (=> start!129346 (=> (not res!1038566) (not e!847178))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129346 (= res!1038566 (validMask!0 mask!2512))))

(assert (=> start!129346 e!847178))

(assert (=> start!129346 true))

(declare-fun array_inv!37735 (array!101115) Bool)

(assert (=> start!129346 (array_inv!37735 a!2804)))

(declare-fun b!1518593 () Bool)

(declare-fun res!1038572 () Bool)

(assert (=> b!1518593 (=> (not res!1038572) (not e!847178))))

(assert (=> b!1518593 (= res!1038572 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1518594 () Bool)

(declare-fun res!1038567 () Bool)

(assert (=> b!1518594 (=> (not res!1038567) (not e!847178))))

(assert (=> b!1518594 (= res!1038567 (and (= (size!49341 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49341 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49341 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1518595 () Bool)

(declare-fun res!1038569 () Bool)

(assert (=> b!1518595 (=> res!1038569 e!847179)))

(assert (=> b!1518595 (= res!1038569 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!658222 (select (arr!48790 a!2804) j!70) a!2804 mask!2512) lt!658221)))))

(declare-fun b!1518596 () Bool)

(declare-fun res!1038573 () Bool)

(assert (=> b!1518596 (=> (not res!1038573) (not e!847178))))

(assert (=> b!1518596 (= res!1038573 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49341 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49341 a!2804))))))

(declare-fun b!1518597 () Bool)

(assert (=> b!1518597 (= e!847179 (bvsge mask!2512 #b00000000000000000000000000000000))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101115 (_ BitVec 32)) SeekEntryResult!12982)

(assert (=> b!1518597 (= (seekEntryOrOpen!0 (select (arr!48790 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!658220 lt!658223 mask!2512))))

(declare-fun lt!658219 () Unit!50788)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101115 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50788)

(assert (=> b!1518597 (= lt!658219 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!658222 resX!21 resIndex!21 mask!2512))))

(declare-fun b!1518598 () Bool)

(declare-fun res!1038562 () Bool)

(assert (=> b!1518598 (=> (not res!1038562) (not e!847178))))

(declare-datatypes ((List!35453 0))(
  ( (Nil!35450) (Cons!35449 (h!36862 (_ BitVec 64)) (t!50154 List!35453)) )
))
(declare-fun arrayNoDuplicates!0 (array!101115 (_ BitVec 32) List!35453) Bool)

(assert (=> b!1518598 (= res!1038562 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35450))))

(assert (= (and start!129346 res!1038566) b!1518594))

(assert (= (and b!1518594 res!1038567) b!1518588))

(assert (= (and b!1518588 res!1038570) b!1518591))

(assert (= (and b!1518591 res!1038568) b!1518593))

(assert (= (and b!1518593 res!1038572) b!1518598))

(assert (= (and b!1518598 res!1038562) b!1518596))

(assert (= (and b!1518596 res!1038573) b!1518585))

(assert (= (and b!1518585 res!1038564) b!1518590))

(assert (= (and b!1518590 res!1038560) b!1518589))

(assert (= (and b!1518589 res!1038561) b!1518592))

(assert (= (and b!1518592 res!1038565) b!1518587))

(assert (= (and b!1518592 (not res!1038571)) b!1518586))

(assert (= (and b!1518586 (not res!1038563)) b!1518595))

(assert (= (and b!1518595 (not res!1038569)) b!1518597))

(declare-fun m!1401969 () Bool)

(assert (=> start!129346 m!1401969))

(declare-fun m!1401971 () Bool)

(assert (=> start!129346 m!1401971))

(declare-fun m!1401973 () Bool)

(assert (=> b!1518592 m!1401973))

(declare-fun m!1401975 () Bool)

(assert (=> b!1518592 m!1401975))

(declare-fun m!1401977 () Bool)

(assert (=> b!1518592 m!1401977))

(assert (=> b!1518591 m!1401973))

(assert (=> b!1518591 m!1401973))

(declare-fun m!1401979 () Bool)

(assert (=> b!1518591 m!1401979))

(declare-fun m!1401981 () Bool)

(assert (=> b!1518598 m!1401981))

(assert (=> b!1518595 m!1401973))

(assert (=> b!1518595 m!1401973))

(declare-fun m!1401983 () Bool)

(assert (=> b!1518595 m!1401983))

(declare-fun m!1401985 () Bool)

(assert (=> b!1518588 m!1401985))

(assert (=> b!1518588 m!1401985))

(declare-fun m!1401987 () Bool)

(assert (=> b!1518588 m!1401987))

(declare-fun m!1401989 () Bool)

(assert (=> b!1518589 m!1401989))

(assert (=> b!1518589 m!1401989))

(declare-fun m!1401991 () Bool)

(assert (=> b!1518589 m!1401991))

(declare-fun m!1401993 () Bool)

(assert (=> b!1518589 m!1401993))

(declare-fun m!1401995 () Bool)

(assert (=> b!1518589 m!1401995))

(assert (=> b!1518597 m!1401973))

(assert (=> b!1518597 m!1401973))

(declare-fun m!1401997 () Bool)

(assert (=> b!1518597 m!1401997))

(declare-fun m!1401999 () Bool)

(assert (=> b!1518597 m!1401999))

(declare-fun m!1402001 () Bool)

(assert (=> b!1518597 m!1402001))

(assert (=> b!1518590 m!1401973))

(assert (=> b!1518590 m!1401973))

(declare-fun m!1402003 () Bool)

(assert (=> b!1518590 m!1402003))

(declare-fun m!1402005 () Bool)

(assert (=> b!1518586 m!1402005))

(assert (=> b!1518585 m!1401973))

(assert (=> b!1518585 m!1401973))

(declare-fun m!1402007 () Bool)

(assert (=> b!1518585 m!1402007))

(assert (=> b!1518585 m!1402007))

(assert (=> b!1518585 m!1401973))

(declare-fun m!1402009 () Bool)

(assert (=> b!1518585 m!1402009))

(declare-fun m!1402011 () Bool)

(assert (=> b!1518593 m!1402011))

(assert (=> b!1518587 m!1401973))

(assert (=> b!1518587 m!1401973))

(declare-fun m!1402013 () Bool)

(assert (=> b!1518587 m!1402013))

(push 1)

