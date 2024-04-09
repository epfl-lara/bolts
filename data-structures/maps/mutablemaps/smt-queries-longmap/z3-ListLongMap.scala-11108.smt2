; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129786 () Bool)

(assert start!129786)

(declare-fun b!1522791 () Bool)

(declare-fun e!849101 () Bool)

(assert (=> b!1522791 (= e!849101 (not true))))

(declare-fun e!849102 () Bool)

(assert (=> b!1522791 e!849102))

(declare-fun res!1041840 () Bool)

(assert (=> b!1522791 (=> (not res!1041840) (not e!849102))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101309 0))(
  ( (array!101310 (arr!48881 (Array (_ BitVec 32) (_ BitVec 64))) (size!49432 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101309)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101309 (_ BitVec 32)) Bool)

(assert (=> b!1522791 (= res!1041840 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50874 0))(
  ( (Unit!50875) )
))
(declare-fun lt!659733 () Unit!50874)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101309 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50874)

(assert (=> b!1522791 (= lt!659733 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1522792 () Bool)

(declare-fun res!1041844 () Bool)

(declare-fun e!849104 () Bool)

(assert (=> b!1522792 (=> (not res!1041844) (not e!849104))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1522792 (= res!1041844 (validKeyInArray!0 (select (arr!48881 a!2804) j!70)))))

(declare-fun b!1522793 () Bool)

(declare-fun res!1041838 () Bool)

(assert (=> b!1522793 (=> (not res!1041838) (not e!849101))))

(declare-datatypes ((SeekEntryResult!13067 0))(
  ( (MissingZero!13067 (index!54662 (_ BitVec 32))) (Found!13067 (index!54663 (_ BitVec 32))) (Intermediate!13067 (undefined!13879 Bool) (index!54664 (_ BitVec 32)) (x!136364 (_ BitVec 32))) (Undefined!13067) (MissingVacant!13067 (index!54665 (_ BitVec 32))) )
))
(declare-fun lt!659734 () SeekEntryResult!13067)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101309 (_ BitVec 32)) SeekEntryResult!13067)

(assert (=> b!1522793 (= res!1041838 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48881 a!2804) j!70) a!2804 mask!2512) lt!659734))))

(declare-fun b!1522794 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101309 (_ BitVec 32)) SeekEntryResult!13067)

(assert (=> b!1522794 (= e!849102 (= (seekEntry!0 (select (arr!48881 a!2804) j!70) a!2804 mask!2512) (Found!13067 j!70)))))

(declare-fun b!1522795 () Bool)

(declare-fun res!1041836 () Bool)

(assert (=> b!1522795 (=> (not res!1041836) (not e!849104))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1522795 (= res!1041836 (validKeyInArray!0 (select (arr!48881 a!2804) i!961)))))

(declare-fun b!1522796 () Bool)

(declare-fun res!1041841 () Bool)

(assert (=> b!1522796 (=> (not res!1041841) (not e!849101))))

(declare-fun lt!659732 () SeekEntryResult!13067)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1522796 (= res!1041841 (= lt!659732 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48881 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48881 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101310 (store (arr!48881 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49432 a!2804)) mask!2512)))))

(declare-fun res!1041845 () Bool)

(assert (=> start!129786 (=> (not res!1041845) (not e!849104))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129786 (= res!1041845 (validMask!0 mask!2512))))

(assert (=> start!129786 e!849104))

(assert (=> start!129786 true))

(declare-fun array_inv!37826 (array!101309) Bool)

(assert (=> start!129786 (array_inv!37826 a!2804)))

(declare-fun b!1522797 () Bool)

(declare-fun res!1041837 () Bool)

(assert (=> b!1522797 (=> (not res!1041837) (not e!849104))))

(assert (=> b!1522797 (= res!1041837 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1522798 () Bool)

(declare-fun res!1041842 () Bool)

(assert (=> b!1522798 (=> (not res!1041842) (not e!849104))))

(declare-datatypes ((List!35544 0))(
  ( (Nil!35541) (Cons!35540 (h!36965 (_ BitVec 64)) (t!50245 List!35544)) )
))
(declare-fun arrayNoDuplicates!0 (array!101309 (_ BitVec 32) List!35544) Bool)

(assert (=> b!1522798 (= res!1041842 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35541))))

(declare-fun b!1522799 () Bool)

(declare-fun res!1041839 () Bool)

(assert (=> b!1522799 (=> (not res!1041839) (not e!849104))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1522799 (= res!1041839 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49432 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49432 a!2804))))))

(declare-fun b!1522800 () Bool)

(assert (=> b!1522800 (= e!849104 e!849101)))

(declare-fun res!1041846 () Bool)

(assert (=> b!1522800 (=> (not res!1041846) (not e!849101))))

(assert (=> b!1522800 (= res!1041846 (= lt!659732 lt!659734))))

(assert (=> b!1522800 (= lt!659734 (Intermediate!13067 false resIndex!21 resX!21))))

(assert (=> b!1522800 (= lt!659732 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48881 a!2804) j!70) mask!2512) (select (arr!48881 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1522801 () Bool)

(declare-fun res!1041843 () Bool)

(assert (=> b!1522801 (=> (not res!1041843) (not e!849104))))

(assert (=> b!1522801 (= res!1041843 (and (= (size!49432 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49432 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49432 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!129786 res!1041845) b!1522801))

(assert (= (and b!1522801 res!1041843) b!1522795))

(assert (= (and b!1522795 res!1041836) b!1522792))

(assert (= (and b!1522792 res!1041844) b!1522797))

(assert (= (and b!1522797 res!1041837) b!1522798))

(assert (= (and b!1522798 res!1041842) b!1522799))

(assert (= (and b!1522799 res!1041839) b!1522800))

(assert (= (and b!1522800 res!1041846) b!1522793))

(assert (= (and b!1522793 res!1041838) b!1522796))

(assert (= (and b!1522796 res!1041841) b!1522791))

(assert (= (and b!1522791 res!1041840) b!1522794))

(declare-fun m!1405911 () Bool)

(assert (=> b!1522791 m!1405911))

(declare-fun m!1405913 () Bool)

(assert (=> b!1522791 m!1405913))

(declare-fun m!1405915 () Bool)

(assert (=> b!1522797 m!1405915))

(declare-fun m!1405917 () Bool)

(assert (=> b!1522794 m!1405917))

(assert (=> b!1522794 m!1405917))

(declare-fun m!1405919 () Bool)

(assert (=> b!1522794 m!1405919))

(assert (=> b!1522800 m!1405917))

(assert (=> b!1522800 m!1405917))

(declare-fun m!1405921 () Bool)

(assert (=> b!1522800 m!1405921))

(assert (=> b!1522800 m!1405921))

(assert (=> b!1522800 m!1405917))

(declare-fun m!1405923 () Bool)

(assert (=> b!1522800 m!1405923))

(declare-fun m!1405925 () Bool)

(assert (=> b!1522798 m!1405925))

(declare-fun m!1405927 () Bool)

(assert (=> b!1522796 m!1405927))

(declare-fun m!1405929 () Bool)

(assert (=> b!1522796 m!1405929))

(assert (=> b!1522796 m!1405929))

(declare-fun m!1405931 () Bool)

(assert (=> b!1522796 m!1405931))

(assert (=> b!1522796 m!1405931))

(assert (=> b!1522796 m!1405929))

(declare-fun m!1405933 () Bool)

(assert (=> b!1522796 m!1405933))

(declare-fun m!1405935 () Bool)

(assert (=> start!129786 m!1405935))

(declare-fun m!1405937 () Bool)

(assert (=> start!129786 m!1405937))

(assert (=> b!1522793 m!1405917))

(assert (=> b!1522793 m!1405917))

(declare-fun m!1405939 () Bool)

(assert (=> b!1522793 m!1405939))

(assert (=> b!1522792 m!1405917))

(assert (=> b!1522792 m!1405917))

(declare-fun m!1405941 () Bool)

(assert (=> b!1522792 m!1405941))

(declare-fun m!1405943 () Bool)

(assert (=> b!1522795 m!1405943))

(assert (=> b!1522795 m!1405943))

(declare-fun m!1405945 () Bool)

(assert (=> b!1522795 m!1405945))

(check-sat (not b!1522796) (not b!1522794) (not b!1522797) (not b!1522793) (not b!1522795) (not b!1522792) (not b!1522798) (not start!129786) (not b!1522791) (not b!1522800))
(check-sat)
