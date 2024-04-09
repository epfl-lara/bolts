; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129206 () Bool)

(assert start!129206)

(declare-fun b!1515915 () Bool)

(declare-fun e!845974 () Bool)

(declare-fun lt!657221 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1515915 (= e!845974 (validKeyInArray!0 lt!657221))))

(declare-fun b!1515916 () Bool)

(declare-fun res!1035893 () Bool)

(declare-fun e!845976 () Bool)

(assert (=> b!1515916 (=> (not res!1035893) (not e!845976))))

(declare-datatypes ((array!100975 0))(
  ( (array!100976 (arr!48720 (Array (_ BitVec 32) (_ BitVec 64))) (size!49271 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100975)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100975 (_ BitVec 32)) Bool)

(assert (=> b!1515916 (= res!1035893 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1035903 () Bool)

(assert (=> start!129206 (=> (not res!1035903) (not e!845976))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129206 (= res!1035903 (validMask!0 mask!2512))))

(assert (=> start!129206 e!845976))

(assert (=> start!129206 true))

(declare-fun array_inv!37665 (array!100975) Bool)

(assert (=> start!129206 (array_inv!37665 a!2804)))

(declare-fun b!1515917 () Bool)

(declare-fun e!845975 () Bool)

(assert (=> b!1515917 (= e!845975 e!845974)))

(declare-fun res!1035897 () Bool)

(assert (=> b!1515917 (=> res!1035897 e!845974)))

(assert (=> b!1515917 (= res!1035897 (bvslt mask!2512 #b00000000000000000000000000000000))))

(declare-datatypes ((SeekEntryResult!12912 0))(
  ( (MissingZero!12912 (index!54042 (_ BitVec 32))) (Found!12912 (index!54043 (_ BitVec 32))) (Intermediate!12912 (undefined!13724 Bool) (index!54044 (_ BitVec 32)) (x!135747 (_ BitVec 32))) (Undefined!12912) (MissingVacant!12912 (index!54045 (_ BitVec 32))) )
))
(declare-fun lt!657217 () SeekEntryResult!12912)

(declare-fun lt!657219 () SeekEntryResult!12912)

(assert (=> b!1515917 (= lt!657217 lt!657219)))

(declare-fun i!961 () (_ BitVec 32))

(declare-datatypes ((Unit!50648 0))(
  ( (Unit!50649) )
))
(declare-fun lt!657216 () Unit!50648)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!100975 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50648)

(assert (=> b!1515917 (= lt!657216 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(declare-fun e!845978 () Bool)

(declare-fun b!1515918 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100975 (_ BitVec 32)) SeekEntryResult!12912)

(assert (=> b!1515918 (= e!845978 (= (seekEntry!0 (select (arr!48720 a!2804) j!70) a!2804 mask!2512) (Found!12912 j!70)))))

(declare-fun b!1515919 () Bool)

(declare-fun e!845979 () Bool)

(declare-fun e!845977 () Bool)

(assert (=> b!1515919 (= e!845979 (not e!845977))))

(declare-fun res!1035895 () Bool)

(assert (=> b!1515919 (=> res!1035895 e!845977)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1515919 (= res!1035895 (or (not (= (select (arr!48720 a!2804) j!70) lt!657221)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48720 a!2804) index!487) (select (arr!48720 a!2804) j!70)) (not (= (select (arr!48720 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1515919 e!845978))

(declare-fun res!1035898 () Bool)

(assert (=> b!1515919 (=> (not res!1035898) (not e!845978))))

(assert (=> b!1515919 (= res!1035898 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!657218 () Unit!50648)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100975 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50648)

(assert (=> b!1515919 (= lt!657218 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1515920 () Bool)

(assert (=> b!1515920 (= e!845977 e!845975)))

(declare-fun res!1035902 () Bool)

(assert (=> b!1515920 (=> res!1035902 e!845975)))

(assert (=> b!1515920 (= res!1035902 (not (= lt!657219 (Found!12912 j!70))))))

(declare-fun lt!657222 () SeekEntryResult!12912)

(assert (=> b!1515920 (= lt!657222 lt!657217)))

(declare-fun lt!657223 () array!100975)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100975 (_ BitVec 32)) SeekEntryResult!12912)

(assert (=> b!1515920 (= lt!657217 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!657221 lt!657223 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100975 (_ BitVec 32)) SeekEntryResult!12912)

(assert (=> b!1515920 (= lt!657222 (seekEntryOrOpen!0 lt!657221 lt!657223 mask!2512))))

(declare-fun lt!657215 () SeekEntryResult!12912)

(assert (=> b!1515920 (= lt!657215 lt!657219)))

(assert (=> b!1515920 (= lt!657219 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48720 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1515920 (= lt!657215 (seekEntryOrOpen!0 (select (arr!48720 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515921 () Bool)

(declare-fun res!1035894 () Bool)

(declare-fun e!845980 () Bool)

(assert (=> b!1515921 (=> (not res!1035894) (not e!845980))))

(declare-fun lt!657214 () SeekEntryResult!12912)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100975 (_ BitVec 32)) SeekEntryResult!12912)

(assert (=> b!1515921 (= res!1035894 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48720 a!2804) j!70) a!2804 mask!2512) lt!657214))))

(declare-fun b!1515922 () Bool)

(assert (=> b!1515922 (= e!845980 e!845979)))

(declare-fun res!1035899 () Bool)

(assert (=> b!1515922 (=> (not res!1035899) (not e!845979))))

(declare-fun lt!657220 () SeekEntryResult!12912)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1515922 (= res!1035899 (= lt!657220 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!657221 mask!2512) lt!657221 lt!657223 mask!2512)))))

(assert (=> b!1515922 (= lt!657221 (select (store (arr!48720 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1515922 (= lt!657223 (array!100976 (store (arr!48720 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49271 a!2804)))))

(declare-fun b!1515923 () Bool)

(declare-fun res!1035891 () Bool)

(assert (=> b!1515923 (=> (not res!1035891) (not e!845976))))

(assert (=> b!1515923 (= res!1035891 (validKeyInArray!0 (select (arr!48720 a!2804) j!70)))))

(declare-fun b!1515924 () Bool)

(assert (=> b!1515924 (= e!845976 e!845980)))

(declare-fun res!1035901 () Bool)

(assert (=> b!1515924 (=> (not res!1035901) (not e!845980))))

(assert (=> b!1515924 (= res!1035901 (= lt!657220 lt!657214))))

(assert (=> b!1515924 (= lt!657214 (Intermediate!12912 false resIndex!21 resX!21))))

(assert (=> b!1515924 (= lt!657220 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48720 a!2804) j!70) mask!2512) (select (arr!48720 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515925 () Bool)

(declare-fun res!1035890 () Bool)

(assert (=> b!1515925 (=> (not res!1035890) (not e!845976))))

(assert (=> b!1515925 (= res!1035890 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49271 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49271 a!2804))))))

(declare-fun b!1515926 () Bool)

(declare-fun res!1035892 () Bool)

(assert (=> b!1515926 (=> (not res!1035892) (not e!845976))))

(declare-datatypes ((List!35383 0))(
  ( (Nil!35380) (Cons!35379 (h!36792 (_ BitVec 64)) (t!50084 List!35383)) )
))
(declare-fun arrayNoDuplicates!0 (array!100975 (_ BitVec 32) List!35383) Bool)

(assert (=> b!1515926 (= res!1035892 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35380))))

(declare-fun b!1515927 () Bool)

(declare-fun res!1035896 () Bool)

(assert (=> b!1515927 (=> (not res!1035896) (not e!845976))))

(assert (=> b!1515927 (= res!1035896 (and (= (size!49271 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49271 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49271 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1515928 () Bool)

(declare-fun res!1035900 () Bool)

(assert (=> b!1515928 (=> (not res!1035900) (not e!845976))))

(assert (=> b!1515928 (= res!1035900 (validKeyInArray!0 (select (arr!48720 a!2804) i!961)))))

(assert (= (and start!129206 res!1035903) b!1515927))

(assert (= (and b!1515927 res!1035896) b!1515928))

(assert (= (and b!1515928 res!1035900) b!1515923))

(assert (= (and b!1515923 res!1035891) b!1515916))

(assert (= (and b!1515916 res!1035893) b!1515926))

(assert (= (and b!1515926 res!1035892) b!1515925))

(assert (= (and b!1515925 res!1035890) b!1515924))

(assert (= (and b!1515924 res!1035901) b!1515921))

(assert (= (and b!1515921 res!1035894) b!1515922))

(assert (= (and b!1515922 res!1035899) b!1515919))

(assert (= (and b!1515919 res!1035898) b!1515918))

(assert (= (and b!1515919 (not res!1035895)) b!1515920))

(assert (= (and b!1515920 (not res!1035902)) b!1515917))

(assert (= (and b!1515917 (not res!1035897)) b!1515915))

(declare-fun m!1399189 () Bool)

(assert (=> b!1515919 m!1399189))

(declare-fun m!1399191 () Bool)

(assert (=> b!1515919 m!1399191))

(declare-fun m!1399193 () Bool)

(assert (=> b!1515919 m!1399193))

(declare-fun m!1399195 () Bool)

(assert (=> b!1515919 m!1399195))

(declare-fun m!1399197 () Bool)

(assert (=> b!1515917 m!1399197))

(declare-fun m!1399199 () Bool)

(assert (=> b!1515928 m!1399199))

(assert (=> b!1515928 m!1399199))

(declare-fun m!1399201 () Bool)

(assert (=> b!1515928 m!1399201))

(assert (=> b!1515923 m!1399189))

(assert (=> b!1515923 m!1399189))

(declare-fun m!1399203 () Bool)

(assert (=> b!1515923 m!1399203))

(declare-fun m!1399205 () Bool)

(assert (=> b!1515922 m!1399205))

(assert (=> b!1515922 m!1399205))

(declare-fun m!1399207 () Bool)

(assert (=> b!1515922 m!1399207))

(declare-fun m!1399209 () Bool)

(assert (=> b!1515922 m!1399209))

(declare-fun m!1399211 () Bool)

(assert (=> b!1515922 m!1399211))

(assert (=> b!1515924 m!1399189))

(assert (=> b!1515924 m!1399189))

(declare-fun m!1399213 () Bool)

(assert (=> b!1515924 m!1399213))

(assert (=> b!1515924 m!1399213))

(assert (=> b!1515924 m!1399189))

(declare-fun m!1399215 () Bool)

(assert (=> b!1515924 m!1399215))

(assert (=> b!1515918 m!1399189))

(assert (=> b!1515918 m!1399189))

(declare-fun m!1399217 () Bool)

(assert (=> b!1515918 m!1399217))

(declare-fun m!1399219 () Bool)

(assert (=> b!1515915 m!1399219))

(declare-fun m!1399221 () Bool)

(assert (=> b!1515916 m!1399221))

(assert (=> b!1515921 m!1399189))

(assert (=> b!1515921 m!1399189))

(declare-fun m!1399223 () Bool)

(assert (=> b!1515921 m!1399223))

(declare-fun m!1399225 () Bool)

(assert (=> b!1515926 m!1399225))

(assert (=> b!1515920 m!1399189))

(declare-fun m!1399227 () Bool)

(assert (=> b!1515920 m!1399227))

(assert (=> b!1515920 m!1399189))

(declare-fun m!1399229 () Bool)

(assert (=> b!1515920 m!1399229))

(declare-fun m!1399231 () Bool)

(assert (=> b!1515920 m!1399231))

(assert (=> b!1515920 m!1399189))

(declare-fun m!1399233 () Bool)

(assert (=> b!1515920 m!1399233))

(declare-fun m!1399235 () Bool)

(assert (=> start!129206 m!1399235))

(declare-fun m!1399237 () Bool)

(assert (=> start!129206 m!1399237))

(push 1)

