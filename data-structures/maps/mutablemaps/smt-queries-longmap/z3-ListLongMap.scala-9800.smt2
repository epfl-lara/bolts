; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116488 () Bool)

(assert start!116488)

(declare-fun b!1373794 () Bool)

(declare-fun res!917100 () Bool)

(declare-fun e!778299 () Bool)

(assert (=> b!1373794 (=> (not res!917100) (not e!778299))))

(declare-datatypes ((array!93111 0))(
  ( (array!93112 (arr!44957 (Array (_ BitVec 32) (_ BitVec 64))) (size!45508 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93111)

(declare-fun i!1457 () (_ BitVec 32))

(assert (=> b!1373794 (= res!917100 (and (bvslt (size!45508 a!4142) #b01111111111111111111111111111111) (bvsle i!1457 (size!45508 a!4142))))))

(declare-fun b!1373793 () Bool)

(declare-fun res!917098 () Bool)

(assert (=> b!1373793 (=> (not res!917098) (not e!778299))))

(declare-fun k0!2959 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1373793 (= res!917098 (not (validKeyInArray!0 k0!2959)))))

(declare-fun res!917099 () Bool)

(assert (=> start!116488 (=> (not res!917099) (not e!778299))))

(assert (=> start!116488 (= res!917099 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45508 a!4142))))))

(assert (=> start!116488 e!778299))

(assert (=> start!116488 true))

(declare-fun array_inv!33902 (array!93111) Bool)

(assert (=> start!116488 (array_inv!33902 a!4142)))

(declare-fun b!1373795 () Bool)

(assert (=> b!1373795 (= e!778299 false)))

(declare-fun lt!603068 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93111 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1373795 (= lt!603068 (arrayCountValidKeys!0 (array!93112 (store (arr!44957 a!4142) i!1457 k0!2959) (size!45508 a!4142)) i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603067 () (_ BitVec 32))

(assert (=> b!1373795 (= lt!603067 (arrayCountValidKeys!0 a!4142 i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1373792 () Bool)

(declare-fun res!917097 () Bool)

(assert (=> b!1373792 (=> (not res!917097) (not e!778299))))

(assert (=> b!1373792 (= res!917097 (validKeyInArray!0 (select (arr!44957 a!4142) i!1457)))))

(assert (= (and start!116488 res!917099) b!1373792))

(assert (= (and b!1373792 res!917097) b!1373793))

(assert (= (and b!1373793 res!917098) b!1373794))

(assert (= (and b!1373794 res!917100) b!1373795))

(declare-fun m!1257015 () Bool)

(assert (=> b!1373793 m!1257015))

(declare-fun m!1257017 () Bool)

(assert (=> start!116488 m!1257017))

(declare-fun m!1257019 () Bool)

(assert (=> b!1373795 m!1257019))

(declare-fun m!1257021 () Bool)

(assert (=> b!1373795 m!1257021))

(declare-fun m!1257023 () Bool)

(assert (=> b!1373795 m!1257023))

(declare-fun m!1257025 () Bool)

(assert (=> b!1373792 m!1257025))

(assert (=> b!1373792 m!1257025))

(declare-fun m!1257027 () Bool)

(assert (=> b!1373792 m!1257027))

(check-sat (not b!1373795) (not b!1373793) (not b!1373792) (not start!116488))
