; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128520 () Bool)

(assert start!128520)

(declare-fun b!1506433 () Bool)

(declare-fun res!1026831 () Bool)

(declare-fun e!841927 () Bool)

(assert (=> b!1506433 (=> (not res!1026831) (not e!841927))))

(declare-datatypes ((array!100445 0))(
  ( (array!100446 (arr!48461 (Array (_ BitVec 32) (_ BitVec 64))) (size!49012 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100445)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506433 (= res!1026831 (validKeyInArray!0 (select (arr!48461 a!2804) i!961)))))

(declare-fun res!1026828 () Bool)

(assert (=> start!128520 (=> (not res!1026828) (not e!841927))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128520 (= res!1026828 (validMask!0 mask!2512))))

(assert (=> start!128520 e!841927))

(assert (=> start!128520 true))

(declare-fun array_inv!37406 (array!100445) Bool)

(assert (=> start!128520 (array_inv!37406 a!2804)))

(declare-fun b!1506434 () Bool)

(declare-fun res!1026833 () Bool)

(assert (=> b!1506434 (=> (not res!1026833) (not e!841927))))

(declare-datatypes ((List!35124 0))(
  ( (Nil!35121) (Cons!35120 (h!36521 (_ BitVec 64)) (t!49825 List!35124)) )
))
(declare-fun arrayNoDuplicates!0 (array!100445 (_ BitVec 32) List!35124) Bool)

(assert (=> b!1506434 (= res!1026833 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35121))))

(declare-fun b!1506435 () Bool)

(assert (=> b!1506435 (= e!841927 false)))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun lt!654202 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506435 (= lt!654202 (toIndex!0 (select (arr!48461 a!2804) j!70) mask!2512))))

(declare-fun b!1506436 () Bool)

(declare-fun res!1026829 () Bool)

(assert (=> b!1506436 (=> (not res!1026829) (not e!841927))))

(assert (=> b!1506436 (= res!1026829 (and (= (size!49012 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49012 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49012 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1506437 () Bool)

(declare-fun res!1026830 () Bool)

(assert (=> b!1506437 (=> (not res!1026830) (not e!841927))))

(assert (=> b!1506437 (= res!1026830 (validKeyInArray!0 (select (arr!48461 a!2804) j!70)))))

(declare-fun b!1506438 () Bool)

(declare-fun res!1026834 () Bool)

(assert (=> b!1506438 (=> (not res!1026834) (not e!841927))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100445 (_ BitVec 32)) Bool)

(assert (=> b!1506438 (= res!1026834 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1506439 () Bool)

(declare-fun res!1026832 () Bool)

(assert (=> b!1506439 (=> (not res!1026832) (not e!841927))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1506439 (= res!1026832 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49012 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49012 a!2804))))))

(assert (= (and start!128520 res!1026828) b!1506436))

(assert (= (and b!1506436 res!1026829) b!1506433))

(assert (= (and b!1506433 res!1026831) b!1506437))

(assert (= (and b!1506437 res!1026830) b!1506438))

(assert (= (and b!1506438 res!1026834) b!1506434))

(assert (= (and b!1506434 res!1026833) b!1506439))

(assert (= (and b!1506439 res!1026832) b!1506435))

(declare-fun m!1389429 () Bool)

(assert (=> b!1506438 m!1389429))

(declare-fun m!1389431 () Bool)

(assert (=> b!1506435 m!1389431))

(assert (=> b!1506435 m!1389431))

(declare-fun m!1389433 () Bool)

(assert (=> b!1506435 m!1389433))

(declare-fun m!1389435 () Bool)

(assert (=> b!1506433 m!1389435))

(assert (=> b!1506433 m!1389435))

(declare-fun m!1389437 () Bool)

(assert (=> b!1506433 m!1389437))

(assert (=> b!1506437 m!1389431))

(assert (=> b!1506437 m!1389431))

(declare-fun m!1389439 () Bool)

(assert (=> b!1506437 m!1389439))

(declare-fun m!1389441 () Bool)

(assert (=> b!1506434 m!1389441))

(declare-fun m!1389443 () Bool)

(assert (=> start!128520 m!1389443))

(declare-fun m!1389445 () Bool)

(assert (=> start!128520 m!1389445))

(check-sat (not b!1506437) (not b!1506433) (not start!128520) (not b!1506434) (not b!1506435) (not b!1506438))
