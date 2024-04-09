; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127432 () Bool)

(assert start!127432)

(declare-fun b!1497630 () Bool)

(declare-fun res!1018834 () Bool)

(declare-fun e!838669 () Bool)

(assert (=> b!1497630 (=> (not res!1018834) (not e!838669))))

(declare-datatypes ((array!99807 0))(
  ( (array!99808 (arr!48163 (Array (_ BitVec 32) (_ BitVec 64))) (size!48714 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99807)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99807 (_ BitVec 32)) Bool)

(assert (=> b!1497630 (= res!1018834 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1497631 () Bool)

(declare-fun res!1018835 () Bool)

(assert (=> b!1497631 (=> (not res!1018835) (not e!838669))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1497631 (= res!1018835 (validKeyInArray!0 (select (arr!48163 a!2850) i!996)))))

(declare-fun b!1497632 () Bool)

(declare-fun res!1018836 () Bool)

(assert (=> b!1497632 (=> (not res!1018836) (not e!838669))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1497632 (= res!1018836 (and (= (size!48714 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48714 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48714 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1497633 () Bool)

(declare-fun res!1018833 () Bool)

(assert (=> b!1497633 (=> (not res!1018833) (not e!838669))))

(assert (=> b!1497633 (= res!1018833 (validKeyInArray!0 (select (arr!48163 a!2850) j!87)))))

(declare-fun b!1497634 () Bool)

(assert (=> b!1497634 (= e!838669 (bvsgt #b00000000000000000000000000000000 (size!48714 a!2850)))))

(declare-fun res!1018832 () Bool)

(assert (=> start!127432 (=> (not res!1018832) (not e!838669))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127432 (= res!1018832 (validMask!0 mask!2661))))

(assert (=> start!127432 e!838669))

(assert (=> start!127432 true))

(declare-fun array_inv!37108 (array!99807) Bool)

(assert (=> start!127432 (array_inv!37108 a!2850)))

(assert (= (and start!127432 res!1018832) b!1497632))

(assert (= (and b!1497632 res!1018836) b!1497631))

(assert (= (and b!1497631 res!1018835) b!1497633))

(assert (= (and b!1497633 res!1018833) b!1497630))

(assert (= (and b!1497630 res!1018834) b!1497634))

(declare-fun m!1380777 () Bool)

(assert (=> b!1497630 m!1380777))

(declare-fun m!1380779 () Bool)

(assert (=> b!1497631 m!1380779))

(assert (=> b!1497631 m!1380779))

(declare-fun m!1380781 () Bool)

(assert (=> b!1497631 m!1380781))

(declare-fun m!1380783 () Bool)

(assert (=> b!1497633 m!1380783))

(assert (=> b!1497633 m!1380783))

(declare-fun m!1380785 () Bool)

(assert (=> b!1497633 m!1380785))

(declare-fun m!1380787 () Bool)

(assert (=> start!127432 m!1380787))

(declare-fun m!1380789 () Bool)

(assert (=> start!127432 m!1380789))

(push 1)

(assert (not b!1497633))

(assert (not b!1497630))

(assert (not start!127432))

(assert (not b!1497631))

(check-sat)

(pop 1)

