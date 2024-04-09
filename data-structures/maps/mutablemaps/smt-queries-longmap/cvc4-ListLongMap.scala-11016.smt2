; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128978 () Bool)

(assert start!128978)

(declare-fun b!1511337 () Bool)

(declare-fun res!1031318 () Bool)

(declare-fun e!843811 () Bool)

(assert (=> b!1511337 (=> (not res!1031318) (not e!843811))))

(declare-datatypes ((array!100747 0))(
  ( (array!100748 (arr!48606 (Array (_ BitVec 32) (_ BitVec 64))) (size!49157 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100747)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1511337 (= res!1031318 (validKeyInArray!0 (select (arr!48606 a!2804) i!961)))))

(declare-fun b!1511338 () Bool)

(declare-fun res!1031322 () Bool)

(assert (=> b!1511338 (=> (not res!1031322) (not e!843811))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1511338 (= res!1031322 (and (= (size!49157 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49157 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49157 a!2804)) (not (= i!961 j!70))))))

(declare-fun e!843812 () Bool)

(declare-fun b!1511339 () Bool)

(declare-datatypes ((SeekEntryResult!12798 0))(
  ( (MissingZero!12798 (index!53586 (_ BitVec 32))) (Found!12798 (index!53587 (_ BitVec 32))) (Intermediate!12798 (undefined!13610 Bool) (index!53588 (_ BitVec 32)) (x!135329 (_ BitVec 32))) (Undefined!12798) (MissingVacant!12798 (index!53589 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!100747 (_ BitVec 32)) SeekEntryResult!12798)

(assert (=> b!1511339 (= e!843812 (= (seekEntry!0 (select (arr!48606 a!2804) j!70) a!2804 mask!2512) (Found!12798 j!70)))))

(declare-fun b!1511340 () Bool)

(declare-fun res!1031313 () Bool)

(declare-fun e!843809 () Bool)

(assert (=> b!1511340 (=> (not res!1031313) (not e!843809))))

(declare-fun lt!655387 () SeekEntryResult!12798)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100747 (_ BitVec 32)) SeekEntryResult!12798)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1511340 (= res!1031313 (= lt!655387 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48606 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48606 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100748 (store (arr!48606 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49157 a!2804)) mask!2512)))))

(declare-fun b!1511341 () Bool)

(declare-fun res!1031317 () Bool)

(assert (=> b!1511341 (=> (not res!1031317) (not e!843811))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1511341 (= res!1031317 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49157 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49157 a!2804))))))

(declare-fun b!1511342 () Bool)

(declare-fun res!1031312 () Bool)

(assert (=> b!1511342 (=> (not res!1031312) (not e!843809))))

(declare-fun lt!655385 () SeekEntryResult!12798)

(assert (=> b!1511342 (= res!1031312 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48606 a!2804) j!70) a!2804 mask!2512) lt!655385))))

(declare-fun b!1511343 () Bool)

(declare-fun res!1031316 () Bool)

(assert (=> b!1511343 (=> (not res!1031316) (not e!843811))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100747 (_ BitVec 32)) Bool)

(assert (=> b!1511343 (= res!1031316 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1031315 () Bool)

(assert (=> start!128978 (=> (not res!1031315) (not e!843811))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128978 (= res!1031315 (validMask!0 mask!2512))))

(assert (=> start!128978 e!843811))

(assert (=> start!128978 true))

(declare-fun array_inv!37551 (array!100747) Bool)

(assert (=> start!128978 (array_inv!37551 a!2804)))

(declare-fun b!1511344 () Bool)

(declare-fun res!1031314 () Bool)

(assert (=> b!1511344 (=> (not res!1031314) (not e!843811))))

(assert (=> b!1511344 (= res!1031314 (validKeyInArray!0 (select (arr!48606 a!2804) j!70)))))

(declare-fun b!1511345 () Bool)

(assert (=> b!1511345 (= e!843809 (not true))))

(assert (=> b!1511345 e!843812))

(declare-fun res!1031320 () Bool)

(assert (=> b!1511345 (=> (not res!1031320) (not e!843812))))

(assert (=> b!1511345 (= res!1031320 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50420 0))(
  ( (Unit!50421) )
))
(declare-fun lt!655386 () Unit!50420)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100747 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50420)

(assert (=> b!1511345 (= lt!655386 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1511346 () Bool)

(declare-fun res!1031321 () Bool)

(assert (=> b!1511346 (=> (not res!1031321) (not e!843811))))

(declare-datatypes ((List!35269 0))(
  ( (Nil!35266) (Cons!35265 (h!36678 (_ BitVec 64)) (t!49970 List!35269)) )
))
(declare-fun arrayNoDuplicates!0 (array!100747 (_ BitVec 32) List!35269) Bool)

(assert (=> b!1511346 (= res!1031321 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35266))))

(declare-fun b!1511347 () Bool)

(assert (=> b!1511347 (= e!843811 e!843809)))

(declare-fun res!1031319 () Bool)

(assert (=> b!1511347 (=> (not res!1031319) (not e!843809))))

(assert (=> b!1511347 (= res!1031319 (= lt!655387 lt!655385))))

(assert (=> b!1511347 (= lt!655385 (Intermediate!12798 false resIndex!21 resX!21))))

(assert (=> b!1511347 (= lt!655387 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48606 a!2804) j!70) mask!2512) (select (arr!48606 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!128978 res!1031315) b!1511338))

(assert (= (and b!1511338 res!1031322) b!1511337))

(assert (= (and b!1511337 res!1031318) b!1511344))

(assert (= (and b!1511344 res!1031314) b!1511343))

(assert (= (and b!1511343 res!1031316) b!1511346))

(assert (= (and b!1511346 res!1031321) b!1511341))

(assert (= (and b!1511341 res!1031317) b!1511347))

(assert (= (and b!1511347 res!1031319) b!1511342))

(assert (= (and b!1511342 res!1031312) b!1511340))

(assert (= (and b!1511340 res!1031313) b!1511345))

(assert (= (and b!1511345 res!1031320) b!1511339))

(declare-fun m!1394085 () Bool)

(assert (=> b!1511345 m!1394085))

(declare-fun m!1394087 () Bool)

(assert (=> b!1511345 m!1394087))

(declare-fun m!1394089 () Bool)

(assert (=> b!1511339 m!1394089))

(assert (=> b!1511339 m!1394089))

(declare-fun m!1394091 () Bool)

(assert (=> b!1511339 m!1394091))

(declare-fun m!1394093 () Bool)

(assert (=> b!1511337 m!1394093))

(assert (=> b!1511337 m!1394093))

(declare-fun m!1394095 () Bool)

(assert (=> b!1511337 m!1394095))

(declare-fun m!1394097 () Bool)

(assert (=> b!1511346 m!1394097))

(declare-fun m!1394099 () Bool)

(assert (=> b!1511343 m!1394099))

(assert (=> b!1511347 m!1394089))

(assert (=> b!1511347 m!1394089))

(declare-fun m!1394101 () Bool)

(assert (=> b!1511347 m!1394101))

(assert (=> b!1511347 m!1394101))

(assert (=> b!1511347 m!1394089))

(declare-fun m!1394103 () Bool)

(assert (=> b!1511347 m!1394103))

(declare-fun m!1394105 () Bool)

(assert (=> b!1511340 m!1394105))

(declare-fun m!1394107 () Bool)

(assert (=> b!1511340 m!1394107))

(assert (=> b!1511340 m!1394107))

(declare-fun m!1394109 () Bool)

(assert (=> b!1511340 m!1394109))

(assert (=> b!1511340 m!1394109))

(assert (=> b!1511340 m!1394107))

(declare-fun m!1394111 () Bool)

(assert (=> b!1511340 m!1394111))

(declare-fun m!1394113 () Bool)

(assert (=> start!128978 m!1394113))

(declare-fun m!1394115 () Bool)

(assert (=> start!128978 m!1394115))

(assert (=> b!1511342 m!1394089))

(assert (=> b!1511342 m!1394089))

(declare-fun m!1394117 () Bool)

(assert (=> b!1511342 m!1394117))

(assert (=> b!1511344 m!1394089))

(assert (=> b!1511344 m!1394089))

(declare-fun m!1394119 () Bool)

(assert (=> b!1511344 m!1394119))

(push 1)

(assert (not b!1511340))

(assert (not b!1511344))

(assert (not b!1511347))

(assert (not b!1511339))

(assert (not b!1511337))

