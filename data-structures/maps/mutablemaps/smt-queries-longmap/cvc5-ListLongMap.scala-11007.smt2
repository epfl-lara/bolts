; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128920 () Bool)

(assert start!128920)

(declare-fun b!1510380 () Bool)

(declare-fun e!843463 () Bool)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100689 0))(
  ( (array!100690 (arr!48577 (Array (_ BitVec 32) (_ BitVec 64))) (size!49128 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100689)

(declare-datatypes ((SeekEntryResult!12769 0))(
  ( (MissingZero!12769 (index!53470 (_ BitVec 32))) (Found!12769 (index!53471 (_ BitVec 32))) (Intermediate!12769 (undefined!13581 Bool) (index!53472 (_ BitVec 32)) (x!135228 (_ BitVec 32))) (Undefined!12769) (MissingVacant!12769 (index!53473 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!100689 (_ BitVec 32)) SeekEntryResult!12769)

(assert (=> b!1510380 (= e!843463 (= (seekEntry!0 (select (arr!48577 a!2804) j!70) a!2804 mask!2512) (Found!12769 j!70)))))

(declare-fun res!1030356 () Bool)

(declare-fun e!843464 () Bool)

(assert (=> start!128920 (=> (not res!1030356) (not e!843464))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128920 (= res!1030356 (validMask!0 mask!2512))))

(assert (=> start!128920 e!843464))

(assert (=> start!128920 true))

(declare-fun array_inv!37522 (array!100689) Bool)

(assert (=> start!128920 (array_inv!37522 a!2804)))

(declare-fun b!1510381 () Bool)

(declare-fun res!1030355 () Bool)

(assert (=> b!1510381 (=> (not res!1030355) (not e!843464))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1510381 (= res!1030355 (validKeyInArray!0 (select (arr!48577 a!2804) i!961)))))

(declare-fun b!1510382 () Bool)

(declare-fun res!1030358 () Bool)

(declare-fun e!843462 () Bool)

(assert (=> b!1510382 (=> (not res!1030358) (not e!843462))))

(declare-fun lt!655124 () SeekEntryResult!12769)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100689 (_ BitVec 32)) SeekEntryResult!12769)

(assert (=> b!1510382 (= res!1030358 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48577 a!2804) j!70) a!2804 mask!2512) lt!655124))))

(declare-fun b!1510383 () Bool)

(declare-fun res!1030357 () Bool)

(assert (=> b!1510383 (=> (not res!1030357) (not e!843462))))

(declare-fun lt!655125 () SeekEntryResult!12769)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1510383 (= res!1030357 (= lt!655125 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48577 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48577 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100690 (store (arr!48577 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49128 a!2804)) mask!2512)))))

(declare-fun b!1510384 () Bool)

(declare-fun res!1030360 () Bool)

(assert (=> b!1510384 (=> (not res!1030360) (not e!843464))))

(assert (=> b!1510384 (= res!1030360 (and (= (size!49128 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49128 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49128 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1510385 () Bool)

(assert (=> b!1510385 (= e!843462 (not true))))

(assert (=> b!1510385 e!843463))

(declare-fun res!1030365 () Bool)

(assert (=> b!1510385 (=> (not res!1030365) (not e!843463))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100689 (_ BitVec 32)) Bool)

(assert (=> b!1510385 (= res!1030365 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50362 0))(
  ( (Unit!50363) )
))
(declare-fun lt!655126 () Unit!50362)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100689 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50362)

(assert (=> b!1510385 (= lt!655126 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1510386 () Bool)

(declare-fun res!1030363 () Bool)

(assert (=> b!1510386 (=> (not res!1030363) (not e!843464))))

(declare-datatypes ((List!35240 0))(
  ( (Nil!35237) (Cons!35236 (h!36649 (_ BitVec 64)) (t!49941 List!35240)) )
))
(declare-fun arrayNoDuplicates!0 (array!100689 (_ BitVec 32) List!35240) Bool)

(assert (=> b!1510386 (= res!1030363 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35237))))

(declare-fun b!1510387 () Bool)

(declare-fun res!1030364 () Bool)

(assert (=> b!1510387 (=> (not res!1030364) (not e!843464))))

(assert (=> b!1510387 (= res!1030364 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1510388 () Bool)

(assert (=> b!1510388 (= e!843464 e!843462)))

(declare-fun res!1030361 () Bool)

(assert (=> b!1510388 (=> (not res!1030361) (not e!843462))))

(assert (=> b!1510388 (= res!1030361 (= lt!655125 lt!655124))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1510388 (= lt!655124 (Intermediate!12769 false resIndex!21 resX!21))))

(assert (=> b!1510388 (= lt!655125 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48577 a!2804) j!70) mask!2512) (select (arr!48577 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1510389 () Bool)

(declare-fun res!1030359 () Bool)

(assert (=> b!1510389 (=> (not res!1030359) (not e!843464))))

(assert (=> b!1510389 (= res!1030359 (validKeyInArray!0 (select (arr!48577 a!2804) j!70)))))

(declare-fun b!1510390 () Bool)

(declare-fun res!1030362 () Bool)

(assert (=> b!1510390 (=> (not res!1030362) (not e!843464))))

(assert (=> b!1510390 (= res!1030362 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49128 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49128 a!2804))))))

(assert (= (and start!128920 res!1030356) b!1510384))

(assert (= (and b!1510384 res!1030360) b!1510381))

(assert (= (and b!1510381 res!1030355) b!1510389))

(assert (= (and b!1510389 res!1030359) b!1510387))

(assert (= (and b!1510387 res!1030364) b!1510386))

(assert (= (and b!1510386 res!1030363) b!1510390))

(assert (= (and b!1510390 res!1030362) b!1510388))

(assert (= (and b!1510388 res!1030361) b!1510382))

(assert (= (and b!1510382 res!1030358) b!1510383))

(assert (= (and b!1510383 res!1030357) b!1510385))

(assert (= (and b!1510385 res!1030365) b!1510380))

(declare-fun m!1393023 () Bool)

(assert (=> b!1510386 m!1393023))

(declare-fun m!1393025 () Bool)

(assert (=> b!1510381 m!1393025))

(assert (=> b!1510381 m!1393025))

(declare-fun m!1393027 () Bool)

(assert (=> b!1510381 m!1393027))

(declare-fun m!1393029 () Bool)

(assert (=> b!1510389 m!1393029))

(assert (=> b!1510389 m!1393029))

(declare-fun m!1393031 () Bool)

(assert (=> b!1510389 m!1393031))

(declare-fun m!1393033 () Bool)

(assert (=> b!1510383 m!1393033))

(declare-fun m!1393035 () Bool)

(assert (=> b!1510383 m!1393035))

(assert (=> b!1510383 m!1393035))

(declare-fun m!1393037 () Bool)

(assert (=> b!1510383 m!1393037))

(assert (=> b!1510383 m!1393037))

(assert (=> b!1510383 m!1393035))

(declare-fun m!1393039 () Bool)

(assert (=> b!1510383 m!1393039))

(declare-fun m!1393041 () Bool)

(assert (=> b!1510387 m!1393041))

(declare-fun m!1393043 () Bool)

(assert (=> start!128920 m!1393043))

(declare-fun m!1393045 () Bool)

(assert (=> start!128920 m!1393045))

(declare-fun m!1393047 () Bool)

(assert (=> b!1510385 m!1393047))

(declare-fun m!1393049 () Bool)

(assert (=> b!1510385 m!1393049))

(assert (=> b!1510382 m!1393029))

(assert (=> b!1510382 m!1393029))

(declare-fun m!1393051 () Bool)

(assert (=> b!1510382 m!1393051))

(assert (=> b!1510388 m!1393029))

(assert (=> b!1510388 m!1393029))

(declare-fun m!1393053 () Bool)

(assert (=> b!1510388 m!1393053))

(assert (=> b!1510388 m!1393053))

(assert (=> b!1510388 m!1393029))

(declare-fun m!1393055 () Bool)

(assert (=> b!1510388 m!1393055))

(assert (=> b!1510380 m!1393029))

(assert (=> b!1510380 m!1393029))

(declare-fun m!1393057 () Bool)

(assert (=> b!1510380 m!1393057))

(push 1)

