; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129210 () Bool)

(assert start!129210)

(declare-fun b!1515984 () Bool)

(declare-fun res!1035962 () Bool)

(declare-fun e!846002 () Bool)

(assert (=> b!1515984 (=> (not res!1035962) (not e!846002))))

(declare-datatypes ((array!100979 0))(
  ( (array!100980 (arr!48722 (Array (_ BitVec 32) (_ BitVec 64))) (size!49273 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100979)

(declare-datatypes ((List!35385 0))(
  ( (Nil!35382) (Cons!35381 (h!36794 (_ BitVec 64)) (t!50086 List!35385)) )
))
(declare-fun arrayNoDuplicates!0 (array!100979 (_ BitVec 32) List!35385) Bool)

(assert (=> b!1515984 (= res!1035962 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35382))))

(declare-fun res!1035966 () Bool)

(assert (=> start!129210 (=> (not res!1035966) (not e!846002))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129210 (= res!1035966 (validMask!0 mask!2512))))

(assert (=> start!129210 e!846002))

(assert (=> start!129210 true))

(declare-fun array_inv!37667 (array!100979) Bool)

(assert (=> start!129210 (array_inv!37667 a!2804)))

(declare-fun b!1515985 () Bool)

(declare-fun res!1035968 () Bool)

(declare-fun e!846003 () Bool)

(assert (=> b!1515985 (=> (not res!1035968) (not e!846003))))

(declare-datatypes ((SeekEntryResult!12914 0))(
  ( (MissingZero!12914 (index!54050 (_ BitVec 32))) (Found!12914 (index!54051 (_ BitVec 32))) (Intermediate!12914 (undefined!13726 Bool) (index!54052 (_ BitVec 32)) (x!135757 (_ BitVec 32))) (Undefined!12914) (MissingVacant!12914 (index!54053 (_ BitVec 32))) )
))
(declare-fun lt!657240 () SeekEntryResult!12914)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100979 (_ BitVec 32)) SeekEntryResult!12914)

(assert (=> b!1515985 (= res!1035968 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48722 a!2804) j!70) a!2804 mask!2512) lt!657240))))

(declare-fun b!1515986 () Bool)

(assert (=> b!1515986 (= e!846002 e!846003)))

(declare-fun res!1035964 () Bool)

(assert (=> b!1515986 (=> (not res!1035964) (not e!846003))))

(declare-fun lt!657239 () SeekEntryResult!12914)

(assert (=> b!1515986 (= res!1035964 (= lt!657239 lt!657240))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1515986 (= lt!657240 (Intermediate!12914 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1515986 (= lt!657239 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48722 a!2804) j!70) mask!2512) (select (arr!48722 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515987 () Bool)

(declare-fun res!1035965 () Bool)

(assert (=> b!1515987 (=> (not res!1035965) (not e!846002))))

(assert (=> b!1515987 (= res!1035965 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49273 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49273 a!2804))))))

(declare-fun b!1515988 () Bool)

(declare-fun res!1035963 () Bool)

(assert (=> b!1515988 (=> (not res!1035963) (not e!846003))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1515988 (= res!1035963 (= lt!657239 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48722 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48722 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100980 (store (arr!48722 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49273 a!2804)) mask!2512)))))

(declare-fun b!1515989 () Bool)

(declare-fun res!1035959 () Bool)

(assert (=> b!1515989 (=> (not res!1035959) (not e!846002))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1515989 (= res!1035959 (validKeyInArray!0 (select (arr!48722 a!2804) j!70)))))

(declare-fun e!846004 () Bool)

(declare-fun b!1515990 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100979 (_ BitVec 32)) SeekEntryResult!12914)

(assert (=> b!1515990 (= e!846004 (= (seekEntry!0 (select (arr!48722 a!2804) j!70) a!2804 mask!2512) (Found!12914 j!70)))))

(declare-fun b!1515991 () Bool)

(declare-fun res!1035961 () Bool)

(assert (=> b!1515991 (=> (not res!1035961) (not e!846002))))

(assert (=> b!1515991 (= res!1035961 (and (= (size!49273 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49273 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49273 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1515992 () Bool)

(declare-fun res!1035969 () Bool)

(assert (=> b!1515992 (=> (not res!1035969) (not e!846002))))

(assert (=> b!1515992 (= res!1035969 (validKeyInArray!0 (select (arr!48722 a!2804) i!961)))))

(declare-fun b!1515993 () Bool)

(declare-fun res!1035967 () Bool)

(assert (=> b!1515993 (=> (not res!1035967) (not e!846002))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100979 (_ BitVec 32)) Bool)

(assert (=> b!1515993 (= res!1035967 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1515994 () Bool)

(assert (=> b!1515994 (= e!846003 (not true))))

(assert (=> b!1515994 e!846004))

(declare-fun res!1035960 () Bool)

(assert (=> b!1515994 (=> (not res!1035960) (not e!846004))))

(assert (=> b!1515994 (= res!1035960 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50652 0))(
  ( (Unit!50653) )
))
(declare-fun lt!657241 () Unit!50652)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100979 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50652)

(assert (=> b!1515994 (= lt!657241 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!129210 res!1035966) b!1515991))

(assert (= (and b!1515991 res!1035961) b!1515992))

(assert (= (and b!1515992 res!1035969) b!1515989))

(assert (= (and b!1515989 res!1035959) b!1515993))

(assert (= (and b!1515993 res!1035967) b!1515984))

(assert (= (and b!1515984 res!1035962) b!1515987))

(assert (= (and b!1515987 res!1035965) b!1515986))

(assert (= (and b!1515986 res!1035964) b!1515985))

(assert (= (and b!1515985 res!1035968) b!1515988))

(assert (= (and b!1515988 res!1035963) b!1515994))

(assert (= (and b!1515994 res!1035960) b!1515990))

(declare-fun m!1399275 () Bool)

(assert (=> b!1515984 m!1399275))

(declare-fun m!1399277 () Bool)

(assert (=> b!1515985 m!1399277))

(assert (=> b!1515985 m!1399277))

(declare-fun m!1399279 () Bool)

(assert (=> b!1515985 m!1399279))

(declare-fun m!1399281 () Bool)

(assert (=> b!1515988 m!1399281))

(declare-fun m!1399283 () Bool)

(assert (=> b!1515988 m!1399283))

(assert (=> b!1515988 m!1399283))

(declare-fun m!1399285 () Bool)

(assert (=> b!1515988 m!1399285))

(assert (=> b!1515988 m!1399285))

(assert (=> b!1515988 m!1399283))

(declare-fun m!1399287 () Bool)

(assert (=> b!1515988 m!1399287))

(declare-fun m!1399289 () Bool)

(assert (=> b!1515992 m!1399289))

(assert (=> b!1515992 m!1399289))

(declare-fun m!1399291 () Bool)

(assert (=> b!1515992 m!1399291))

(assert (=> b!1515989 m!1399277))

(assert (=> b!1515989 m!1399277))

(declare-fun m!1399293 () Bool)

(assert (=> b!1515989 m!1399293))

(declare-fun m!1399295 () Bool)

(assert (=> b!1515994 m!1399295))

(declare-fun m!1399297 () Bool)

(assert (=> b!1515994 m!1399297))

(assert (=> b!1515990 m!1399277))

(assert (=> b!1515990 m!1399277))

(declare-fun m!1399299 () Bool)

(assert (=> b!1515990 m!1399299))

(assert (=> b!1515986 m!1399277))

(assert (=> b!1515986 m!1399277))

(declare-fun m!1399301 () Bool)

(assert (=> b!1515986 m!1399301))

(assert (=> b!1515986 m!1399301))

(assert (=> b!1515986 m!1399277))

(declare-fun m!1399303 () Bool)

(assert (=> b!1515986 m!1399303))

(declare-fun m!1399305 () Bool)

(assert (=> b!1515993 m!1399305))

(declare-fun m!1399307 () Bool)

(assert (=> start!129210 m!1399307))

(declare-fun m!1399309 () Bool)

(assert (=> start!129210 m!1399309))

(check-sat (not b!1515986) (not b!1515993) (not b!1515994) (not b!1515990) (not start!129210) (not b!1515992) (not b!1515984) (not b!1515988) (not b!1515989) (not b!1515985))
(check-sat)
