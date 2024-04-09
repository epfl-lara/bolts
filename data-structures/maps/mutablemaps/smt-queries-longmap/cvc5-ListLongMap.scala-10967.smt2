; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128512 () Bool)

(assert start!128512)

(declare-fun res!1026748 () Bool)

(declare-fun e!841904 () Bool)

(assert (=> start!128512 (=> (not res!1026748) (not e!841904))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128512 (= res!1026748 (validMask!0 mask!2512))))

(assert (=> start!128512 e!841904))

(assert (=> start!128512 true))

(declare-datatypes ((array!100437 0))(
  ( (array!100438 (arr!48457 (Array (_ BitVec 32) (_ BitVec 64))) (size!49008 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100437)

(declare-fun array_inv!37402 (array!100437) Bool)

(assert (=> start!128512 (array_inv!37402 a!2804)))

(declare-fun b!1506349 () Bool)

(declare-fun res!1026750 () Bool)

(assert (=> b!1506349 (=> (not res!1026750) (not e!841904))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100437 (_ BitVec 32)) Bool)

(assert (=> b!1506349 (= res!1026750 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1506350 () Bool)

(assert (=> b!1506350 (= e!841904 false)))

(declare-fun lt!654190 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506350 (= lt!654190 (toIndex!0 (select (arr!48457 a!2804) j!70) mask!2512))))

(declare-fun b!1506351 () Bool)

(declare-fun res!1026747 () Bool)

(assert (=> b!1506351 (=> (not res!1026747) (not e!841904))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506351 (= res!1026747 (validKeyInArray!0 (select (arr!48457 a!2804) i!961)))))

(declare-fun b!1506352 () Bool)

(declare-fun res!1026745 () Bool)

(assert (=> b!1506352 (=> (not res!1026745) (not e!841904))))

(assert (=> b!1506352 (= res!1026745 (validKeyInArray!0 (select (arr!48457 a!2804) j!70)))))

(declare-fun b!1506353 () Bool)

(declare-fun res!1026749 () Bool)

(assert (=> b!1506353 (=> (not res!1026749) (not e!841904))))

(assert (=> b!1506353 (= res!1026749 (and (= (size!49008 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49008 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49008 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1506354 () Bool)

(declare-fun res!1026744 () Bool)

(assert (=> b!1506354 (=> (not res!1026744) (not e!841904))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1506354 (= res!1026744 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49008 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49008 a!2804))))))

(declare-fun b!1506355 () Bool)

(declare-fun res!1026746 () Bool)

(assert (=> b!1506355 (=> (not res!1026746) (not e!841904))))

(declare-datatypes ((List!35120 0))(
  ( (Nil!35117) (Cons!35116 (h!36517 (_ BitVec 64)) (t!49821 List!35120)) )
))
(declare-fun arrayNoDuplicates!0 (array!100437 (_ BitVec 32) List!35120) Bool)

(assert (=> b!1506355 (= res!1026746 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35117))))

(assert (= (and start!128512 res!1026748) b!1506353))

(assert (= (and b!1506353 res!1026749) b!1506351))

(assert (= (and b!1506351 res!1026747) b!1506352))

(assert (= (and b!1506352 res!1026745) b!1506349))

(assert (= (and b!1506349 res!1026750) b!1506355))

(assert (= (and b!1506355 res!1026746) b!1506354))

(assert (= (and b!1506354 res!1026744) b!1506350))

(declare-fun m!1389357 () Bool)

(assert (=> start!128512 m!1389357))

(declare-fun m!1389359 () Bool)

(assert (=> start!128512 m!1389359))

(declare-fun m!1389361 () Bool)

(assert (=> b!1506349 m!1389361))

(declare-fun m!1389363 () Bool)

(assert (=> b!1506351 m!1389363))

(assert (=> b!1506351 m!1389363))

(declare-fun m!1389365 () Bool)

(assert (=> b!1506351 m!1389365))

(declare-fun m!1389367 () Bool)

(assert (=> b!1506352 m!1389367))

(assert (=> b!1506352 m!1389367))

(declare-fun m!1389369 () Bool)

(assert (=> b!1506352 m!1389369))

(assert (=> b!1506350 m!1389367))

(assert (=> b!1506350 m!1389367))

(declare-fun m!1389371 () Bool)

(assert (=> b!1506350 m!1389371))

(declare-fun m!1389373 () Bool)

(assert (=> b!1506355 m!1389373))

(push 1)

(assert (not b!1506355))

(assert (not b!1506352))

(assert (not start!128512))

(assert (not b!1506349))

(assert (not b!1506351))

(assert (not b!1506350))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

