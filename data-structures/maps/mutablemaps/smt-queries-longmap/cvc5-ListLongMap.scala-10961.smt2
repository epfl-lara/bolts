; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128410 () Bool)

(assert start!128410)

(declare-fun b!1505825 () Bool)

(declare-fun res!1026294 () Bool)

(declare-fun e!841670 () Bool)

(assert (=> b!1505825 (=> (not res!1026294) (not e!841670))))

(declare-datatypes ((array!100395 0))(
  ( (array!100396 (arr!48439 (Array (_ BitVec 32) (_ BitVec 64))) (size!48990 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100395)

(declare-datatypes ((List!35102 0))(
  ( (Nil!35099) (Cons!35098 (h!36496 (_ BitVec 64)) (t!49803 List!35102)) )
))
(declare-fun arrayNoDuplicates!0 (array!100395 (_ BitVec 32) List!35102) Bool)

(assert (=> b!1505825 (= res!1026294 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35099))))

(declare-fun b!1505826 () Bool)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1505826 (= e!841670 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!48990 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!48990 a!2804)) (bvslt mask!2512 #b00000000000000000000000000000000)))))

(declare-fun b!1505827 () Bool)

(declare-fun res!1026290 () Bool)

(assert (=> b!1505827 (=> (not res!1026290) (not e!841670))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1505827 (= res!1026290 (and (= (size!48990 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!48990 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!48990 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1505828 () Bool)

(declare-fun res!1026291 () Bool)

(assert (=> b!1505828 (=> (not res!1026291) (not e!841670))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100395 (_ BitVec 32)) Bool)

(assert (=> b!1505828 (= res!1026291 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1505830 () Bool)

(declare-fun res!1026292 () Bool)

(assert (=> b!1505830 (=> (not res!1026292) (not e!841670))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1505830 (= res!1026292 (validKeyInArray!0 (select (arr!48439 a!2804) i!961)))))

(declare-fun res!1026293 () Bool)

(assert (=> start!128410 (=> (not res!1026293) (not e!841670))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128410 (= res!1026293 (validMask!0 mask!2512))))

(assert (=> start!128410 e!841670))

(assert (=> start!128410 true))

(declare-fun array_inv!37384 (array!100395) Bool)

(assert (=> start!128410 (array_inv!37384 a!2804)))

(declare-fun b!1505829 () Bool)

(declare-fun res!1026289 () Bool)

(assert (=> b!1505829 (=> (not res!1026289) (not e!841670))))

(assert (=> b!1505829 (= res!1026289 (validKeyInArray!0 (select (arr!48439 a!2804) j!70)))))

(assert (= (and start!128410 res!1026293) b!1505827))

(assert (= (and b!1505827 res!1026290) b!1505830))

(assert (= (and b!1505830 res!1026292) b!1505829))

(assert (= (and b!1505829 res!1026289) b!1505828))

(assert (= (and b!1505828 res!1026291) b!1505825))

(assert (= (and b!1505825 res!1026294) b!1505826))

(declare-fun m!1388949 () Bool)

(assert (=> b!1505828 m!1388949))

(declare-fun m!1388951 () Bool)

(assert (=> b!1505825 m!1388951))

(declare-fun m!1388953 () Bool)

(assert (=> start!128410 m!1388953))

(declare-fun m!1388955 () Bool)

(assert (=> start!128410 m!1388955))

(declare-fun m!1388957 () Bool)

(assert (=> b!1505829 m!1388957))

(assert (=> b!1505829 m!1388957))

(declare-fun m!1388959 () Bool)

(assert (=> b!1505829 m!1388959))

(declare-fun m!1388961 () Bool)

(assert (=> b!1505830 m!1388961))

(assert (=> b!1505830 m!1388961))

(declare-fun m!1388963 () Bool)

(assert (=> b!1505830 m!1388963))

(push 1)

(assert (not start!128410))

(assert (not b!1505830))

(assert (not b!1505825))

(assert (not b!1505829))

(assert (not b!1505828))

(check-sat)

(pop 1)

(push 1)

(check-sat)

