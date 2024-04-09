; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129214 () Bool)

(assert start!129214)

(declare-fun b!1516050 () Bool)

(declare-fun res!1036028 () Bool)

(declare-fun e!846029 () Bool)

(assert (=> b!1516050 (=> (not res!1036028) (not e!846029))))

(declare-datatypes ((SeekEntryResult!12916 0))(
  ( (MissingZero!12916 (index!54058 (_ BitVec 32))) (Found!12916 (index!54059 (_ BitVec 32))) (Intermediate!12916 (undefined!13728 Bool) (index!54060 (_ BitVec 32)) (x!135767 (_ BitVec 32))) (Undefined!12916) (MissingVacant!12916 (index!54061 (_ BitVec 32))) )
))
(declare-fun lt!657258 () SeekEntryResult!12916)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100983 0))(
  ( (array!100984 (arr!48724 (Array (_ BitVec 32) (_ BitVec 64))) (size!49275 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100983)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100983 (_ BitVec 32)) SeekEntryResult!12916)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516050 (= res!1036028 (= lt!657258 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48724 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48724 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100984 (store (arr!48724 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49275 a!2804)) mask!2512)))))

(declare-fun b!1516051 () Bool)

(declare-fun res!1036026 () Bool)

(declare-fun e!846026 () Bool)

(assert (=> b!1516051 (=> (not res!1036026) (not e!846026))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1516051 (= res!1036026 (validKeyInArray!0 (select (arr!48724 a!2804) j!70)))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun b!1516052 () Bool)

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1516052 (= e!846029 (not (or (not (= (select (arr!48724 a!2804) j!70) (select (store (arr!48724 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21) (bvsge mask!2512 #b00000000000000000000000000000000))))))

(declare-fun e!846028 () Bool)

(assert (=> b!1516052 e!846028))

(declare-fun res!1036029 () Bool)

(assert (=> b!1516052 (=> (not res!1036029) (not e!846028))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100983 (_ BitVec 32)) Bool)

(assert (=> b!1516052 (= res!1036029 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50656 0))(
  ( (Unit!50657) )
))
(declare-fun lt!657257 () Unit!50656)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100983 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50656)

(assert (=> b!1516052 (= lt!657257 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1516053 () Bool)

(declare-fun res!1036032 () Bool)

(assert (=> b!1516053 (=> (not res!1036032) (not e!846026))))

(declare-datatypes ((List!35387 0))(
  ( (Nil!35384) (Cons!35383 (h!36796 (_ BitVec 64)) (t!50088 List!35387)) )
))
(declare-fun arrayNoDuplicates!0 (array!100983 (_ BitVec 32) List!35387) Bool)

(assert (=> b!1516053 (= res!1036032 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35384))))

(declare-fun b!1516054 () Bool)

(assert (=> b!1516054 (= e!846026 e!846029)))

(declare-fun res!1036035 () Bool)

(assert (=> b!1516054 (=> (not res!1036035) (not e!846029))))

(declare-fun lt!657259 () SeekEntryResult!12916)

(assert (=> b!1516054 (= res!1036035 (= lt!657258 lt!657259))))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1516054 (= lt!657259 (Intermediate!12916 false resIndex!21 resX!21))))

(assert (=> b!1516054 (= lt!657258 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48724 a!2804) j!70) mask!2512) (select (arr!48724 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516055 () Bool)

(declare-fun res!1036031 () Bool)

(assert (=> b!1516055 (=> (not res!1036031) (not e!846026))))

(assert (=> b!1516055 (= res!1036031 (validKeyInArray!0 (select (arr!48724 a!2804) i!961)))))

(declare-fun b!1516056 () Bool)

(declare-fun res!1036034 () Bool)

(assert (=> b!1516056 (=> (not res!1036034) (not e!846026))))

(assert (=> b!1516056 (= res!1036034 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1516057 () Bool)

(declare-fun res!1036033 () Bool)

(assert (=> b!1516057 (=> (not res!1036033) (not e!846029))))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1516057 (= res!1036033 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48724 a!2804) j!70) a!2804 mask!2512) lt!657259))))

(declare-fun res!1036025 () Bool)

(assert (=> start!129214 (=> (not res!1036025) (not e!846026))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129214 (= res!1036025 (validMask!0 mask!2512))))

(assert (=> start!129214 e!846026))

(assert (=> start!129214 true))

(declare-fun array_inv!37669 (array!100983) Bool)

(assert (=> start!129214 (array_inv!37669 a!2804)))

(declare-fun b!1516058 () Bool)

(declare-fun res!1036027 () Bool)

(assert (=> b!1516058 (=> (not res!1036027) (not e!846026))))

(assert (=> b!1516058 (= res!1036027 (and (= (size!49275 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49275 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49275 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1516059 () Bool)

(declare-fun res!1036030 () Bool)

(assert (=> b!1516059 (=> (not res!1036030) (not e!846026))))

(assert (=> b!1516059 (= res!1036030 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49275 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49275 a!2804))))))

(declare-fun b!1516060 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100983 (_ BitVec 32)) SeekEntryResult!12916)

(assert (=> b!1516060 (= e!846028 (= (seekEntry!0 (select (arr!48724 a!2804) j!70) a!2804 mask!2512) (Found!12916 j!70)))))

(assert (= (and start!129214 res!1036025) b!1516058))

(assert (= (and b!1516058 res!1036027) b!1516055))

(assert (= (and b!1516055 res!1036031) b!1516051))

(assert (= (and b!1516051 res!1036026) b!1516056))

(assert (= (and b!1516056 res!1036034) b!1516053))

(assert (= (and b!1516053 res!1036032) b!1516059))

(assert (= (and b!1516059 res!1036030) b!1516054))

(assert (= (and b!1516054 res!1036035) b!1516057))

(assert (= (and b!1516057 res!1036033) b!1516050))

(assert (= (and b!1516050 res!1036028) b!1516052))

(assert (= (and b!1516052 res!1036029) b!1516060))

(declare-fun m!1399347 () Bool)

(assert (=> start!129214 m!1399347))

(declare-fun m!1399349 () Bool)

(assert (=> start!129214 m!1399349))

(declare-fun m!1399351 () Bool)

(assert (=> b!1516053 m!1399351))

(declare-fun m!1399353 () Bool)

(assert (=> b!1516056 m!1399353))

(declare-fun m!1399355 () Bool)

(assert (=> b!1516050 m!1399355))

(declare-fun m!1399357 () Bool)

(assert (=> b!1516050 m!1399357))

(assert (=> b!1516050 m!1399357))

(declare-fun m!1399359 () Bool)

(assert (=> b!1516050 m!1399359))

(assert (=> b!1516050 m!1399359))

(assert (=> b!1516050 m!1399357))

(declare-fun m!1399361 () Bool)

(assert (=> b!1516050 m!1399361))

(declare-fun m!1399363 () Bool)

(assert (=> b!1516054 m!1399363))

(assert (=> b!1516054 m!1399363))

(declare-fun m!1399365 () Bool)

(assert (=> b!1516054 m!1399365))

(assert (=> b!1516054 m!1399365))

(assert (=> b!1516054 m!1399363))

(declare-fun m!1399367 () Bool)

(assert (=> b!1516054 m!1399367))

(assert (=> b!1516060 m!1399363))

(assert (=> b!1516060 m!1399363))

(declare-fun m!1399369 () Bool)

(assert (=> b!1516060 m!1399369))

(declare-fun m!1399371 () Bool)

(assert (=> b!1516055 m!1399371))

(assert (=> b!1516055 m!1399371))

(declare-fun m!1399373 () Bool)

(assert (=> b!1516055 m!1399373))

(assert (=> b!1516051 m!1399363))

(assert (=> b!1516051 m!1399363))

(declare-fun m!1399375 () Bool)

(assert (=> b!1516051 m!1399375))

(assert (=> b!1516052 m!1399363))

(declare-fun m!1399377 () Bool)

(assert (=> b!1516052 m!1399377))

(assert (=> b!1516052 m!1399355))

(assert (=> b!1516052 m!1399357))

(declare-fun m!1399379 () Bool)

(assert (=> b!1516052 m!1399379))

(assert (=> b!1516057 m!1399363))

(assert (=> b!1516057 m!1399363))

(declare-fun m!1399381 () Bool)

(assert (=> b!1516057 m!1399381))

(push 1)

