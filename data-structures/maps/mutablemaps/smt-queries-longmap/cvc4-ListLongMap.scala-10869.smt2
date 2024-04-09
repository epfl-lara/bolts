; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127436 () Bool)

(assert start!127436)

(declare-fun b!1497660 () Bool)

(declare-fun res!1018865 () Bool)

(declare-fun e!838682 () Bool)

(assert (=> b!1497660 (=> (not res!1018865) (not e!838682))))

(declare-datatypes ((array!99811 0))(
  ( (array!99812 (arr!48165 (Array (_ BitVec 32) (_ BitVec 64))) (size!48716 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99811)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1497660 (= res!1018865 (validKeyInArray!0 (select (arr!48165 a!2850) j!87)))))

(declare-fun b!1497661 () Bool)

(declare-fun res!1018862 () Bool)

(assert (=> b!1497661 (=> (not res!1018862) (not e!838682))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99811 (_ BitVec 32)) Bool)

(assert (=> b!1497661 (= res!1018862 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1497662 () Bool)

(declare-fun res!1018864 () Bool)

(assert (=> b!1497662 (=> (not res!1018864) (not e!838682))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1497662 (= res!1018864 (and (= (size!48716 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48716 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48716 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1497663 () Bool)

(declare-fun res!1018863 () Bool)

(assert (=> b!1497663 (=> (not res!1018863) (not e!838682))))

(assert (=> b!1497663 (= res!1018863 (validKeyInArray!0 (select (arr!48165 a!2850) i!996)))))

(declare-fun res!1018866 () Bool)

(assert (=> start!127436 (=> (not res!1018866) (not e!838682))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127436 (= res!1018866 (validMask!0 mask!2661))))

(assert (=> start!127436 e!838682))

(assert (=> start!127436 true))

(declare-fun array_inv!37110 (array!99811) Bool)

(assert (=> start!127436 (array_inv!37110 a!2850)))

(declare-fun b!1497664 () Bool)

(assert (=> b!1497664 (= e!838682 (bvsgt #b00000000000000000000000000000000 (size!48716 a!2850)))))

(assert (= (and start!127436 res!1018866) b!1497662))

(assert (= (and b!1497662 res!1018864) b!1497663))

(assert (= (and b!1497663 res!1018863) b!1497660))

(assert (= (and b!1497660 res!1018865) b!1497661))

(assert (= (and b!1497661 res!1018862) b!1497664))

(declare-fun m!1380805 () Bool)

(assert (=> b!1497660 m!1380805))

(assert (=> b!1497660 m!1380805))

(declare-fun m!1380807 () Bool)

(assert (=> b!1497660 m!1380807))

(declare-fun m!1380809 () Bool)

(assert (=> b!1497661 m!1380809))

(declare-fun m!1380811 () Bool)

(assert (=> b!1497663 m!1380811))

(assert (=> b!1497663 m!1380811))

(declare-fun m!1380813 () Bool)

(assert (=> b!1497663 m!1380813))

(declare-fun m!1380815 () Bool)

(assert (=> start!127436 m!1380815))

(declare-fun m!1380817 () Bool)

(assert (=> start!127436 m!1380817))

(push 1)

(assert (not b!1497661))

(assert (not b!1497663))

(assert (not b!1497660))

(assert (not start!127436))

(check-sat)

(pop 1)

(push 1)

(check-sat)

