; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127426 () Bool)

(assert start!127426)

(declare-fun res!1018795 () Bool)

(declare-fun e!838651 () Bool)

(assert (=> start!127426 (=> (not res!1018795) (not e!838651))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127426 (= res!1018795 (validMask!0 mask!2661))))

(assert (=> start!127426 e!838651))

(assert (=> start!127426 true))

(declare-datatypes ((array!99801 0))(
  ( (array!99802 (arr!48160 (Array (_ BitVec 32) (_ BitVec 64))) (size!48711 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99801)

(declare-fun array_inv!37105 (array!99801) Bool)

(assert (=> start!127426 (array_inv!37105 a!2850)))

(declare-fun b!1497595 () Bool)

(assert (=> b!1497595 (= e!838651 (bvsgt #b00000000000000000000000000000000 (size!48711 a!2850)))))

(declare-fun b!1497592 () Bool)

(declare-fun res!1018796 () Bool)

(assert (=> b!1497592 (=> (not res!1018796) (not e!838651))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1497592 (= res!1018796 (and (= (size!48711 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48711 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48711 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1497593 () Bool)

(declare-fun res!1018797 () Bool)

(assert (=> b!1497593 (=> (not res!1018797) (not e!838651))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1497593 (= res!1018797 (validKeyInArray!0 (select (arr!48160 a!2850) i!996)))))

(declare-fun b!1497594 () Bool)

(declare-fun res!1018794 () Bool)

(assert (=> b!1497594 (=> (not res!1018794) (not e!838651))))

(assert (=> b!1497594 (= res!1018794 (validKeyInArray!0 (select (arr!48160 a!2850) j!87)))))

(assert (= (and start!127426 res!1018795) b!1497592))

(assert (= (and b!1497592 res!1018796) b!1497593))

(assert (= (and b!1497593 res!1018797) b!1497594))

(assert (= (and b!1497594 res!1018794) b!1497595))

(declare-fun m!1380741 () Bool)

(assert (=> start!127426 m!1380741))

(declare-fun m!1380743 () Bool)

(assert (=> start!127426 m!1380743))

(declare-fun m!1380745 () Bool)

(assert (=> b!1497593 m!1380745))

(assert (=> b!1497593 m!1380745))

(declare-fun m!1380747 () Bool)

(assert (=> b!1497593 m!1380747))

(declare-fun m!1380749 () Bool)

(assert (=> b!1497594 m!1380749))

(assert (=> b!1497594 m!1380749))

(declare-fun m!1380751 () Bool)

(assert (=> b!1497594 m!1380751))

(push 1)

(assert (not start!127426))

(assert (not b!1497593))

(assert (not b!1497594))

(check-sat)

