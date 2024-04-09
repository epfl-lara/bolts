; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128934 () Bool)

(assert start!128934)

(declare-fun b!1510611 () Bool)

(declare-fun res!1030595 () Bool)

(declare-fun e!843547 () Bool)

(assert (=> b!1510611 (=> (not res!1030595) (not e!843547))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100703 0))(
  ( (array!100704 (arr!48584 (Array (_ BitVec 32) (_ BitVec 64))) (size!49135 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100703)

(assert (=> b!1510611 (= res!1030595 (and (= (size!49135 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49135 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49135 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1510612 () Bool)

(declare-fun res!1030594 () Bool)

(assert (=> b!1510612 (=> (not res!1030594) (not e!843547))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1510612 (= res!1030594 (validKeyInArray!0 (select (arr!48584 a!2804) j!70)))))

(declare-fun b!1510613 () Bool)

(declare-fun res!1030592 () Bool)

(assert (=> b!1510613 (=> (not res!1030592) (not e!843547))))

(declare-datatypes ((List!35247 0))(
  ( (Nil!35244) (Cons!35243 (h!36656 (_ BitVec 64)) (t!49948 List!35247)) )
))
(declare-fun arrayNoDuplicates!0 (array!100703 (_ BitVec 32) List!35247) Bool)

(assert (=> b!1510613 (= res!1030592 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35244))))

(declare-fun b!1510614 () Bool)

(declare-fun e!843546 () Bool)

(assert (=> b!1510614 (= e!843547 e!843546)))

(declare-fun res!1030589 () Bool)

(assert (=> b!1510614 (=> (not res!1030589) (not e!843546))))

(declare-datatypes ((SeekEntryResult!12776 0))(
  ( (MissingZero!12776 (index!53498 (_ BitVec 32))) (Found!12776 (index!53499 (_ BitVec 32))) (Intermediate!12776 (undefined!13588 Bool) (index!53500 (_ BitVec 32)) (x!135251 (_ BitVec 32))) (Undefined!12776) (MissingVacant!12776 (index!53501 (_ BitVec 32))) )
))
(declare-fun lt!655188 () SeekEntryResult!12776)

(declare-fun lt!655187 () SeekEntryResult!12776)

(assert (=> b!1510614 (= res!1030589 (= lt!655188 lt!655187))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1510614 (= lt!655187 (Intermediate!12776 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100703 (_ BitVec 32)) SeekEntryResult!12776)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1510614 (= lt!655188 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48584 a!2804) j!70) mask!2512) (select (arr!48584 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1510615 () Bool)

(declare-fun res!1030593 () Bool)

(assert (=> b!1510615 (=> (not res!1030593) (not e!843547))))

(assert (=> b!1510615 (= res!1030593 (validKeyInArray!0 (select (arr!48584 a!2804) i!961)))))

(declare-fun b!1510616 () Bool)

(declare-fun res!1030588 () Bool)

(assert (=> b!1510616 (=> (not res!1030588) (not e!843546))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1510616 (= res!1030588 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48584 a!2804) j!70) a!2804 mask!2512) lt!655187))))

(declare-fun res!1030596 () Bool)

(assert (=> start!128934 (=> (not res!1030596) (not e!843547))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128934 (= res!1030596 (validMask!0 mask!2512))))

(assert (=> start!128934 e!843547))

(assert (=> start!128934 true))

(declare-fun array_inv!37529 (array!100703) Bool)

(assert (=> start!128934 (array_inv!37529 a!2804)))

(declare-fun b!1510617 () Bool)

(declare-fun res!1030590 () Bool)

(assert (=> b!1510617 (=> (not res!1030590) (not e!843547))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100703 (_ BitVec 32)) Bool)

(assert (=> b!1510617 (= res!1030590 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun e!843545 () Bool)

(declare-fun b!1510618 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100703 (_ BitVec 32)) SeekEntryResult!12776)

(assert (=> b!1510618 (= e!843545 (= (seekEntry!0 (select (arr!48584 a!2804) j!70) a!2804 mask!2512) (Found!12776 j!70)))))

(declare-fun b!1510619 () Bool)

(declare-fun res!1030586 () Bool)

(assert (=> b!1510619 (=> (not res!1030586) (not e!843546))))

(assert (=> b!1510619 (= res!1030586 (= lt!655188 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48584 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48584 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100704 (store (arr!48584 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49135 a!2804)) mask!2512)))))

(declare-fun b!1510620 () Bool)

(declare-fun res!1030591 () Bool)

(assert (=> b!1510620 (=> (not res!1030591) (not e!843547))))

(assert (=> b!1510620 (= res!1030591 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49135 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49135 a!2804))))))

(declare-fun b!1510621 () Bool)

(assert (=> b!1510621 (= e!843546 (not true))))

(assert (=> b!1510621 e!843545))

(declare-fun res!1030587 () Bool)

(assert (=> b!1510621 (=> (not res!1030587) (not e!843545))))

(assert (=> b!1510621 (= res!1030587 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50376 0))(
  ( (Unit!50377) )
))
(declare-fun lt!655189 () Unit!50376)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100703 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50376)

(assert (=> b!1510621 (= lt!655189 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!128934 res!1030596) b!1510611))

(assert (= (and b!1510611 res!1030595) b!1510615))

(assert (= (and b!1510615 res!1030593) b!1510612))

(assert (= (and b!1510612 res!1030594) b!1510617))

(assert (= (and b!1510617 res!1030590) b!1510613))

(assert (= (and b!1510613 res!1030592) b!1510620))

(assert (= (and b!1510620 res!1030591) b!1510614))

(assert (= (and b!1510614 res!1030589) b!1510616))

(assert (= (and b!1510616 res!1030588) b!1510619))

(assert (= (and b!1510619 res!1030586) b!1510621))

(assert (= (and b!1510621 res!1030587) b!1510618))

(declare-fun m!1393281 () Bool)

(assert (=> b!1510612 m!1393281))

(assert (=> b!1510612 m!1393281))

(declare-fun m!1393283 () Bool)

(assert (=> b!1510612 m!1393283))

(declare-fun m!1393285 () Bool)

(assert (=> b!1510621 m!1393285))

(declare-fun m!1393287 () Bool)

(assert (=> b!1510621 m!1393287))

(declare-fun m!1393289 () Bool)

(assert (=> b!1510617 m!1393289))

(assert (=> b!1510618 m!1393281))

(assert (=> b!1510618 m!1393281))

(declare-fun m!1393291 () Bool)

(assert (=> b!1510618 m!1393291))

(assert (=> b!1510614 m!1393281))

(assert (=> b!1510614 m!1393281))

(declare-fun m!1393293 () Bool)

(assert (=> b!1510614 m!1393293))

(assert (=> b!1510614 m!1393293))

(assert (=> b!1510614 m!1393281))

(declare-fun m!1393295 () Bool)

(assert (=> b!1510614 m!1393295))

(declare-fun m!1393297 () Bool)

(assert (=> b!1510615 m!1393297))

(assert (=> b!1510615 m!1393297))

(declare-fun m!1393299 () Bool)

(assert (=> b!1510615 m!1393299))

(declare-fun m!1393301 () Bool)

(assert (=> b!1510619 m!1393301))

(declare-fun m!1393303 () Bool)

(assert (=> b!1510619 m!1393303))

(assert (=> b!1510619 m!1393303))

(declare-fun m!1393305 () Bool)

(assert (=> b!1510619 m!1393305))

(assert (=> b!1510619 m!1393305))

(assert (=> b!1510619 m!1393303))

(declare-fun m!1393307 () Bool)

(assert (=> b!1510619 m!1393307))

(assert (=> b!1510616 m!1393281))

(assert (=> b!1510616 m!1393281))

(declare-fun m!1393309 () Bool)

(assert (=> b!1510616 m!1393309))

(declare-fun m!1393311 () Bool)

(assert (=> b!1510613 m!1393311))

(declare-fun m!1393313 () Bool)

(assert (=> start!128934 m!1393313))

(declare-fun m!1393315 () Bool)

(assert (=> start!128934 m!1393315))

(check-sat (not b!1510613) (not b!1510617) (not b!1510618) (not b!1510621) (not b!1510612) (not b!1510615) (not b!1510614) (not b!1510619) (not b!1510616) (not start!128934))
(check-sat)
