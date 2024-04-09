; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116494 () Bool)

(assert start!116494)

(declare-fun b!1373829 () Bool)

(declare-fun res!917135 () Bool)

(declare-fun e!778318 () Bool)

(assert (=> b!1373829 (=> (not res!917135) (not e!778318))))

(declare-fun k0!2959 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1373829 (= res!917135 (not (validKeyInArray!0 k0!2959)))))

(declare-fun b!1373830 () Bool)

(declare-fun res!917136 () Bool)

(assert (=> b!1373830 (=> (not res!917136) (not e!778318))))

(declare-datatypes ((array!93117 0))(
  ( (array!93118 (arr!44960 (Array (_ BitVec 32) (_ BitVec 64))) (size!45511 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93117)

(declare-fun i!1457 () (_ BitVec 32))

(assert (=> b!1373830 (= res!917136 (and (bvslt (size!45511 a!4142) #b01111111111111111111111111111111) (bvsle i!1457 (size!45511 a!4142))))))

(declare-fun b!1373831 () Bool)

(assert (=> b!1373831 (= e!778318 false)))

(declare-fun lt!603085 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93117 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1373831 (= lt!603085 (arrayCountValidKeys!0 (array!93118 (store (arr!44960 a!4142) i!1457 k0!2959) (size!45511 a!4142)) i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603086 () (_ BitVec 32))

(assert (=> b!1373831 (= lt!603086 (arrayCountValidKeys!0 a!4142 i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1373828 () Bool)

(declare-fun res!917134 () Bool)

(assert (=> b!1373828 (=> (not res!917134) (not e!778318))))

(assert (=> b!1373828 (= res!917134 (validKeyInArray!0 (select (arr!44960 a!4142) i!1457)))))

(declare-fun res!917133 () Bool)

(assert (=> start!116494 (=> (not res!917133) (not e!778318))))

(assert (=> start!116494 (= res!917133 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45511 a!4142))))))

(assert (=> start!116494 e!778318))

(assert (=> start!116494 true))

(declare-fun array_inv!33905 (array!93117) Bool)

(assert (=> start!116494 (array_inv!33905 a!4142)))

(assert (= (and start!116494 res!917133) b!1373828))

(assert (= (and b!1373828 res!917134) b!1373829))

(assert (= (and b!1373829 res!917135) b!1373830))

(assert (= (and b!1373830 res!917136) b!1373831))

(declare-fun m!1257057 () Bool)

(assert (=> b!1373829 m!1257057))

(declare-fun m!1257059 () Bool)

(assert (=> b!1373831 m!1257059))

(declare-fun m!1257061 () Bool)

(assert (=> b!1373831 m!1257061))

(declare-fun m!1257063 () Bool)

(assert (=> b!1373831 m!1257063))

(declare-fun m!1257065 () Bool)

(assert (=> b!1373828 m!1257065))

(assert (=> b!1373828 m!1257065))

(declare-fun m!1257067 () Bool)

(assert (=> b!1373828 m!1257067))

(declare-fun m!1257069 () Bool)

(assert (=> start!116494 m!1257069))

(check-sat (not b!1373829) (not start!116494) (not b!1373828) (not b!1373831))
