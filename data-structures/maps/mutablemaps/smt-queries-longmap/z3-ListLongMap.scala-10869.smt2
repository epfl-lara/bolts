; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127434 () Bool)

(assert start!127434)

(declare-fun b!1497645 () Bool)

(declare-fun res!1018849 () Bool)

(declare-fun e!838676 () Bool)

(assert (=> b!1497645 (=> (not res!1018849) (not e!838676))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!99809 0))(
  ( (array!99810 (arr!48164 (Array (_ BitVec 32) (_ BitVec 64))) (size!48715 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99809)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1497645 (= res!1018849 (and (= (size!48715 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48715 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48715 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1497647 () Bool)

(declare-fun res!1018848 () Bool)

(assert (=> b!1497647 (=> (not res!1018848) (not e!838676))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1497647 (= res!1018848 (validKeyInArray!0 (select (arr!48164 a!2850) i!996)))))

(declare-fun b!1497646 () Bool)

(declare-fun res!1018847 () Bool)

(assert (=> b!1497646 (=> (not res!1018847) (not e!838676))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99809 (_ BitVec 32)) Bool)

(assert (=> b!1497646 (= res!1018847 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun res!1018850 () Bool)

(assert (=> start!127434 (=> (not res!1018850) (not e!838676))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127434 (= res!1018850 (validMask!0 mask!2661))))

(assert (=> start!127434 e!838676))

(assert (=> start!127434 true))

(declare-fun array_inv!37109 (array!99809) Bool)

(assert (=> start!127434 (array_inv!37109 a!2850)))

(declare-fun b!1497648 () Bool)

(declare-fun res!1018851 () Bool)

(assert (=> b!1497648 (=> (not res!1018851) (not e!838676))))

(assert (=> b!1497648 (= res!1018851 (validKeyInArray!0 (select (arr!48164 a!2850) j!87)))))

(declare-fun b!1497649 () Bool)

(assert (=> b!1497649 (= e!838676 (bvsgt #b00000000000000000000000000000000 (size!48715 a!2850)))))

(assert (= (and start!127434 res!1018850) b!1497645))

(assert (= (and b!1497645 res!1018849) b!1497647))

(assert (= (and b!1497647 res!1018848) b!1497648))

(assert (= (and b!1497648 res!1018851) b!1497646))

(assert (= (and b!1497646 res!1018847) b!1497649))

(declare-fun m!1380791 () Bool)

(assert (=> b!1497647 m!1380791))

(assert (=> b!1497647 m!1380791))

(declare-fun m!1380793 () Bool)

(assert (=> b!1497647 m!1380793))

(declare-fun m!1380795 () Bool)

(assert (=> b!1497646 m!1380795))

(declare-fun m!1380797 () Bool)

(assert (=> start!127434 m!1380797))

(declare-fun m!1380799 () Bool)

(assert (=> start!127434 m!1380799))

(declare-fun m!1380801 () Bool)

(assert (=> b!1497648 m!1380801))

(assert (=> b!1497648 m!1380801))

(declare-fun m!1380803 () Bool)

(assert (=> b!1497648 m!1380803))

(check-sat (not start!127434) (not b!1497646) (not b!1497647) (not b!1497648))
(check-sat)
