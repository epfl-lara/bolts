; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128858 () Bool)

(assert start!128858)

(declare-fun b!1509368 () Bool)

(declare-fun res!1029348 () Bool)

(declare-fun e!843101 () Bool)

(assert (=> b!1509368 (=> (not res!1029348) (not e!843101))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100627 0))(
  ( (array!100628 (arr!48546 (Array (_ BitVec 32) (_ BitVec 64))) (size!49097 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100627)

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1509368 (= res!1029348 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49097 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49097 a!2804))))))

(declare-fun b!1509369 () Bool)

(declare-fun res!1029342 () Bool)

(assert (=> b!1509369 (=> (not res!1029342) (not e!843101))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100627 (_ BitVec 32)) Bool)

(assert (=> b!1509369 (= res!1029342 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1509370 () Bool)

(declare-fun e!843099 () Bool)

(assert (=> b!1509370 (= e!843099 (not true))))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1509370 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-datatypes ((Unit!50300 0))(
  ( (Unit!50301) )
))
(declare-fun lt!654846 () Unit!50300)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100627 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50300)

(assert (=> b!1509370 (= lt!654846 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1509371 () Bool)

(declare-fun res!1029345 () Bool)

(assert (=> b!1509371 (=> (not res!1029345) (not e!843101))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1509371 (= res!1029345 (validKeyInArray!0 (select (arr!48546 a!2804) j!70)))))

(declare-fun b!1509372 () Bool)

(declare-fun res!1029347 () Bool)

(assert (=> b!1509372 (=> (not res!1029347) (not e!843101))))

(declare-datatypes ((List!35209 0))(
  ( (Nil!35206) (Cons!35205 (h!36618 (_ BitVec 64)) (t!49910 List!35209)) )
))
(declare-fun arrayNoDuplicates!0 (array!100627 (_ BitVec 32) List!35209) Bool)

(assert (=> b!1509372 (= res!1029347 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35206))))

(declare-fun b!1509373 () Bool)

(declare-fun res!1029351 () Bool)

(assert (=> b!1509373 (=> (not res!1029351) (not e!843101))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1509373 (= res!1029351 (validKeyInArray!0 (select (arr!48546 a!2804) i!961)))))

(declare-fun b!1509374 () Bool)

(declare-fun res!1029343 () Bool)

(assert (=> b!1509374 (=> (not res!1029343) (not e!843101))))

(assert (=> b!1509374 (= res!1029343 (and (= (size!49097 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49097 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49097 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1509367 () Bool)

(declare-fun res!1029350 () Bool)

(assert (=> b!1509367 (=> (not res!1029350) (not e!843099))))

(declare-datatypes ((SeekEntryResult!12738 0))(
  ( (MissingZero!12738 (index!53346 (_ BitVec 32))) (Found!12738 (index!53347 (_ BitVec 32))) (Intermediate!12738 (undefined!13550 Bool) (index!53348 (_ BitVec 32)) (x!135109 (_ BitVec 32))) (Undefined!12738) (MissingVacant!12738 (index!53349 (_ BitVec 32))) )
))
(declare-fun lt!654845 () SeekEntryResult!12738)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100627 (_ BitVec 32)) SeekEntryResult!12738)

(assert (=> b!1509367 (= res!1029350 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48546 a!2804) j!70) a!2804 mask!2512) lt!654845))))

(declare-fun res!1029349 () Bool)

(assert (=> start!128858 (=> (not res!1029349) (not e!843101))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128858 (= res!1029349 (validMask!0 mask!2512))))

(assert (=> start!128858 e!843101))

(assert (=> start!128858 true))

(declare-fun array_inv!37491 (array!100627) Bool)

(assert (=> start!128858 (array_inv!37491 a!2804)))

(declare-fun b!1509375 () Bool)

(declare-fun res!1029346 () Bool)

(assert (=> b!1509375 (=> (not res!1029346) (not e!843099))))

(declare-fun lt!654847 () SeekEntryResult!12738)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1509375 (= res!1029346 (= lt!654847 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48546 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48546 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100628 (store (arr!48546 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49097 a!2804)) mask!2512)))))

(declare-fun b!1509376 () Bool)

(assert (=> b!1509376 (= e!843101 e!843099)))

(declare-fun res!1029344 () Bool)

(assert (=> b!1509376 (=> (not res!1029344) (not e!843099))))

(assert (=> b!1509376 (= res!1029344 (= lt!654847 lt!654845))))

(assert (=> b!1509376 (= lt!654845 (Intermediate!12738 false resIndex!21 resX!21))))

(assert (=> b!1509376 (= lt!654847 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48546 a!2804) j!70) mask!2512) (select (arr!48546 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!128858 res!1029349) b!1509374))

(assert (= (and b!1509374 res!1029343) b!1509373))

(assert (= (and b!1509373 res!1029351) b!1509371))

(assert (= (and b!1509371 res!1029345) b!1509369))

(assert (= (and b!1509369 res!1029342) b!1509372))

(assert (= (and b!1509372 res!1029347) b!1509368))

(assert (= (and b!1509368 res!1029348) b!1509376))

(assert (= (and b!1509376 res!1029344) b!1509367))

(assert (= (and b!1509367 res!1029350) b!1509375))

(assert (= (and b!1509375 res!1029346) b!1509370))

(declare-fun m!1391897 () Bool)

(assert (=> b!1509367 m!1391897))

(assert (=> b!1509367 m!1391897))

(declare-fun m!1391899 () Bool)

(assert (=> b!1509367 m!1391899))

(declare-fun m!1391901 () Bool)

(assert (=> b!1509373 m!1391901))

(assert (=> b!1509373 m!1391901))

(declare-fun m!1391903 () Bool)

(assert (=> b!1509373 m!1391903))

(assert (=> b!1509371 m!1391897))

(assert (=> b!1509371 m!1391897))

(declare-fun m!1391905 () Bool)

(assert (=> b!1509371 m!1391905))

(assert (=> b!1509376 m!1391897))

(assert (=> b!1509376 m!1391897))

(declare-fun m!1391907 () Bool)

(assert (=> b!1509376 m!1391907))

(assert (=> b!1509376 m!1391907))

(assert (=> b!1509376 m!1391897))

(declare-fun m!1391909 () Bool)

(assert (=> b!1509376 m!1391909))

(declare-fun m!1391911 () Bool)

(assert (=> b!1509369 m!1391911))

(declare-fun m!1391913 () Bool)

(assert (=> start!128858 m!1391913))

(declare-fun m!1391915 () Bool)

(assert (=> start!128858 m!1391915))

(declare-fun m!1391917 () Bool)

(assert (=> b!1509375 m!1391917))

(declare-fun m!1391919 () Bool)

(assert (=> b!1509375 m!1391919))

(assert (=> b!1509375 m!1391919))

(declare-fun m!1391921 () Bool)

(assert (=> b!1509375 m!1391921))

(assert (=> b!1509375 m!1391921))

(assert (=> b!1509375 m!1391919))

(declare-fun m!1391923 () Bool)

(assert (=> b!1509375 m!1391923))

(declare-fun m!1391925 () Bool)

(assert (=> b!1509372 m!1391925))

(declare-fun m!1391927 () Bool)

(assert (=> b!1509370 m!1391927))

(declare-fun m!1391929 () Bool)

(assert (=> b!1509370 m!1391929))

(push 1)

