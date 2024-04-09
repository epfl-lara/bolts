; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127430 () Bool)

(assert start!127430)

(declare-fun res!1018821 () Bool)

(declare-fun e!838663 () Bool)

(assert (=> start!127430 (=> (not res!1018821) (not e!838663))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127430 (= res!1018821 (validMask!0 mask!2661))))

(assert (=> start!127430 e!838663))

(assert (=> start!127430 true))

(declare-datatypes ((array!99805 0))(
  ( (array!99806 (arr!48162 (Array (_ BitVec 32) (_ BitVec 64))) (size!48713 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99805)

(declare-fun array_inv!37107 (array!99805) Bool)

(assert (=> start!127430 (array_inv!37107 a!2850)))

(declare-fun b!1497617 () Bool)

(declare-fun res!1018819 () Bool)

(assert (=> b!1497617 (=> (not res!1018819) (not e!838663))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1497617 (= res!1018819 (validKeyInArray!0 (select (arr!48162 a!2850) i!996)))))

(declare-fun b!1497618 () Bool)

(declare-fun res!1018820 () Bool)

(assert (=> b!1497618 (=> (not res!1018820) (not e!838663))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1497618 (= res!1018820 (validKeyInArray!0 (select (arr!48162 a!2850) j!87)))))

(declare-fun b!1497619 () Bool)

(assert (=> b!1497619 (= e!838663 (bvsgt #b00000000000000000000000000000000 (size!48713 a!2850)))))

(declare-fun b!1497616 () Bool)

(declare-fun res!1018818 () Bool)

(assert (=> b!1497616 (=> (not res!1018818) (not e!838663))))

(assert (=> b!1497616 (= res!1018818 (and (= (size!48713 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48713 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48713 a!2850)) (not (= i!996 j!87))))))

(assert (= (and start!127430 res!1018821) b!1497616))

(assert (= (and b!1497616 res!1018818) b!1497617))

(assert (= (and b!1497617 res!1018819) b!1497618))

(assert (= (and b!1497618 res!1018820) b!1497619))

(declare-fun m!1380765 () Bool)

(assert (=> start!127430 m!1380765))

(declare-fun m!1380767 () Bool)

(assert (=> start!127430 m!1380767))

(declare-fun m!1380769 () Bool)

(assert (=> b!1497617 m!1380769))

(assert (=> b!1497617 m!1380769))

(declare-fun m!1380771 () Bool)

(assert (=> b!1497617 m!1380771))

(declare-fun m!1380773 () Bool)

(assert (=> b!1497618 m!1380773))

(assert (=> b!1497618 m!1380773))

(declare-fun m!1380775 () Bool)

(assert (=> b!1497618 m!1380775))

(push 1)

(assert (not start!127430))

(assert (not b!1497617))

(assert (not b!1497618))

(check-sat)

(pop 1)

(push 1)

(check-sat)

