; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129326 () Bool)

(assert start!129326)

(declare-fun b!1518184 () Bool)

(declare-fun res!1038164 () Bool)

(declare-fun e!846984 () Bool)

(assert (=> b!1518184 (=> (not res!1038164) (not e!846984))))

(declare-datatypes ((array!101095 0))(
  ( (array!101096 (arr!48780 (Array (_ BitVec 32) (_ BitVec 64))) (size!49331 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101095)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101095 (_ BitVec 32)) Bool)

(assert (=> b!1518184 (= res!1038164 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1518185 () Bool)

(declare-fun res!1038166 () Bool)

(assert (=> b!1518185 (=> (not res!1038166) (not e!846984))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1518185 (= res!1038166 (validKeyInArray!0 (select (arr!48780 a!2804) j!70)))))

(declare-fun b!1518186 () Bool)

(declare-fun res!1038163 () Bool)

(assert (=> b!1518186 (=> (not res!1038163) (not e!846984))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1518186 (= res!1038163 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49331 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49331 a!2804))))))

(declare-fun b!1518187 () Bool)

(declare-fun e!846988 () Bool)

(declare-fun e!846986 () Bool)

(assert (=> b!1518187 (= e!846988 e!846986)))

(declare-fun res!1038170 () Bool)

(assert (=> b!1518187 (=> res!1038170 e!846986)))

(declare-fun lt!658048 () (_ BitVec 32))

(assert (=> b!1518187 (= res!1038170 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!658048 #b00000000000000000000000000000000) (bvsge lt!658048 (size!49331 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518187 (= lt!658048 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1518189 () Bool)

(assert (=> b!1518189 (= e!846986 true)))

(declare-datatypes ((SeekEntryResult!12972 0))(
  ( (MissingZero!12972 (index!54282 (_ BitVec 32))) (Found!12972 (index!54283 (_ BitVec 32))) (Intermediate!12972 (undefined!13784 Bool) (index!54284 (_ BitVec 32)) (x!135967 (_ BitVec 32))) (Undefined!12972) (MissingVacant!12972 (index!54285 (_ BitVec 32))) )
))
(declare-fun lt!658051 () SeekEntryResult!12972)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101095 (_ BitVec 32)) SeekEntryResult!12972)

(assert (=> b!1518189 (= lt!658051 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!658048 (select (arr!48780 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1518190 () Bool)

(declare-fun res!1038169 () Bool)

(assert (=> b!1518190 (=> (not res!1038169) (not e!846984))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1518190 (= res!1038169 (and (= (size!49331 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49331 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49331 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1518191 () Bool)

(declare-fun res!1038171 () Bool)

(declare-fun e!846985 () Bool)

(assert (=> b!1518191 (=> (not res!1038171) (not e!846985))))

(declare-fun lt!658047 () SeekEntryResult!12972)

(assert (=> b!1518191 (= res!1038171 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48780 a!2804) j!70) a!2804 mask!2512) lt!658047))))

(declare-fun b!1518192 () Bool)

(declare-fun res!1038161 () Bool)

(assert (=> b!1518192 (=> (not res!1038161) (not e!846984))))

(declare-datatypes ((List!35443 0))(
  ( (Nil!35440) (Cons!35439 (h!36852 (_ BitVec 64)) (t!50144 List!35443)) )
))
(declare-fun arrayNoDuplicates!0 (array!101095 (_ BitVec 32) List!35443) Bool)

(assert (=> b!1518192 (= res!1038161 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35440))))

(declare-fun b!1518193 () Bool)

(assert (=> b!1518193 (= e!846985 (not e!846988))))

(declare-fun res!1038162 () Bool)

(assert (=> b!1518193 (=> res!1038162 e!846988)))

(assert (=> b!1518193 (= res!1038162 (or (not (= (select (arr!48780 a!2804) j!70) (select (store (arr!48780 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!846987 () Bool)

(assert (=> b!1518193 e!846987))

(declare-fun res!1038159 () Bool)

(assert (=> b!1518193 (=> (not res!1038159) (not e!846987))))

(assert (=> b!1518193 (= res!1038159 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50768 0))(
  ( (Unit!50769) )
))
(declare-fun lt!658049 () Unit!50768)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101095 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50768)

(assert (=> b!1518193 (= lt!658049 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1518194 () Bool)

(assert (=> b!1518194 (= e!846984 e!846985)))

(declare-fun res!1038160 () Bool)

(assert (=> b!1518194 (=> (not res!1038160) (not e!846985))))

(declare-fun lt!658050 () SeekEntryResult!12972)

(assert (=> b!1518194 (= res!1038160 (= lt!658050 lt!658047))))

(assert (=> b!1518194 (= lt!658047 (Intermediate!12972 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518194 (= lt!658050 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48780 a!2804) j!70) mask!2512) (select (arr!48780 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1518195 () Bool)

(declare-fun res!1038165 () Bool)

(assert (=> b!1518195 (=> (not res!1038165) (not e!846985))))

(assert (=> b!1518195 (= res!1038165 (= lt!658050 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48780 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48780 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101096 (store (arr!48780 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49331 a!2804)) mask!2512)))))

(declare-fun b!1518196 () Bool)

(declare-fun res!1038168 () Bool)

(assert (=> b!1518196 (=> (not res!1038168) (not e!846984))))

(assert (=> b!1518196 (= res!1038168 (validKeyInArray!0 (select (arr!48780 a!2804) i!961)))))

(declare-fun b!1518188 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101095 (_ BitVec 32)) SeekEntryResult!12972)

(assert (=> b!1518188 (= e!846987 (= (seekEntry!0 (select (arr!48780 a!2804) j!70) a!2804 mask!2512) (Found!12972 j!70)))))

(declare-fun res!1038167 () Bool)

(assert (=> start!129326 (=> (not res!1038167) (not e!846984))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129326 (= res!1038167 (validMask!0 mask!2512))))

(assert (=> start!129326 e!846984))

(assert (=> start!129326 true))

(declare-fun array_inv!37725 (array!101095) Bool)

(assert (=> start!129326 (array_inv!37725 a!2804)))

(assert (= (and start!129326 res!1038167) b!1518190))

(assert (= (and b!1518190 res!1038169) b!1518196))

(assert (= (and b!1518196 res!1038168) b!1518185))

(assert (= (and b!1518185 res!1038166) b!1518184))

(assert (= (and b!1518184 res!1038164) b!1518192))

(assert (= (and b!1518192 res!1038161) b!1518186))

(assert (= (and b!1518186 res!1038163) b!1518194))

(assert (= (and b!1518194 res!1038160) b!1518191))

(assert (= (and b!1518191 res!1038171) b!1518195))

(assert (= (and b!1518195 res!1038165) b!1518193))

(assert (= (and b!1518193 res!1038159) b!1518188))

(assert (= (and b!1518193 (not res!1038162)) b!1518187))

(assert (= (and b!1518187 (not res!1038170)) b!1518189))

(declare-fun m!1401551 () Bool)

(assert (=> b!1518184 m!1401551))

(declare-fun m!1401553 () Bool)

(assert (=> b!1518193 m!1401553))

(declare-fun m!1401555 () Bool)

(assert (=> b!1518193 m!1401555))

(declare-fun m!1401557 () Bool)

(assert (=> b!1518193 m!1401557))

(declare-fun m!1401559 () Bool)

(assert (=> b!1518193 m!1401559))

(declare-fun m!1401561 () Bool)

(assert (=> b!1518193 m!1401561))

(declare-fun m!1401563 () Bool)

(assert (=> start!129326 m!1401563))

(declare-fun m!1401565 () Bool)

(assert (=> start!129326 m!1401565))

(assert (=> b!1518189 m!1401553))

(assert (=> b!1518189 m!1401553))

(declare-fun m!1401567 () Bool)

(assert (=> b!1518189 m!1401567))

(assert (=> b!1518195 m!1401557))

(assert (=> b!1518195 m!1401559))

(assert (=> b!1518195 m!1401559))

(declare-fun m!1401569 () Bool)

(assert (=> b!1518195 m!1401569))

(assert (=> b!1518195 m!1401569))

(assert (=> b!1518195 m!1401559))

(declare-fun m!1401571 () Bool)

(assert (=> b!1518195 m!1401571))

(assert (=> b!1518185 m!1401553))

(assert (=> b!1518185 m!1401553))

(declare-fun m!1401573 () Bool)

(assert (=> b!1518185 m!1401573))

(assert (=> b!1518194 m!1401553))

(assert (=> b!1518194 m!1401553))

(declare-fun m!1401575 () Bool)

(assert (=> b!1518194 m!1401575))

(assert (=> b!1518194 m!1401575))

(assert (=> b!1518194 m!1401553))

(declare-fun m!1401577 () Bool)

(assert (=> b!1518194 m!1401577))

(declare-fun m!1401579 () Bool)

(assert (=> b!1518196 m!1401579))

(assert (=> b!1518196 m!1401579))

(declare-fun m!1401581 () Bool)

(assert (=> b!1518196 m!1401581))

(declare-fun m!1401583 () Bool)

(assert (=> b!1518187 m!1401583))

(assert (=> b!1518188 m!1401553))

(assert (=> b!1518188 m!1401553))

(declare-fun m!1401585 () Bool)

(assert (=> b!1518188 m!1401585))

(declare-fun m!1401587 () Bool)

(assert (=> b!1518192 m!1401587))

(assert (=> b!1518191 m!1401553))

(assert (=> b!1518191 m!1401553))

(declare-fun m!1401589 () Bool)

(assert (=> b!1518191 m!1401589))

(push 1)

