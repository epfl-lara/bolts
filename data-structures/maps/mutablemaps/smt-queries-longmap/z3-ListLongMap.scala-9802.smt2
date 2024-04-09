; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116500 () Bool)

(assert start!116500)

(declare-fun b!1373865 () Bool)

(declare-fun res!917172 () Bool)

(declare-fun e!778336 () Bool)

(assert (=> b!1373865 (=> (not res!917172) (not e!778336))))

(declare-fun k0!2959 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1373865 (= res!917172 (not (validKeyInArray!0 k0!2959)))))

(declare-fun b!1373867 () Bool)

(assert (=> b!1373867 (= e!778336 false)))

(declare-fun i!1457 () (_ BitVec 32))

(declare-datatypes ((array!93123 0))(
  ( (array!93124 (arr!44963 (Array (_ BitVec 32) (_ BitVec 64))) (size!45514 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93123)

(declare-fun lt!603104 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93123 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1373867 (= lt!603104 (arrayCountValidKeys!0 (array!93124 (store (arr!44963 a!4142) i!1457 k0!2959) (size!45514 a!4142)) i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603103 () (_ BitVec 32))

(assert (=> b!1373867 (= lt!603103 (arrayCountValidKeys!0 a!4142 i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1373866 () Bool)

(declare-fun res!917169 () Bool)

(assert (=> b!1373866 (=> (not res!917169) (not e!778336))))

(assert (=> b!1373866 (= res!917169 (and (bvslt (size!45514 a!4142) #b01111111111111111111111111111111) (bvsle i!1457 (size!45514 a!4142))))))

(declare-fun res!917170 () Bool)

(assert (=> start!116500 (=> (not res!917170) (not e!778336))))

(assert (=> start!116500 (= res!917170 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45514 a!4142))))))

(assert (=> start!116500 e!778336))

(assert (=> start!116500 true))

(declare-fun array_inv!33908 (array!93123) Bool)

(assert (=> start!116500 (array_inv!33908 a!4142)))

(declare-fun b!1373864 () Bool)

(declare-fun res!917171 () Bool)

(assert (=> b!1373864 (=> (not res!917171) (not e!778336))))

(assert (=> b!1373864 (= res!917171 (validKeyInArray!0 (select (arr!44963 a!4142) i!1457)))))

(assert (= (and start!116500 res!917170) b!1373864))

(assert (= (and b!1373864 res!917171) b!1373865))

(assert (= (and b!1373865 res!917172) b!1373866))

(assert (= (and b!1373866 res!917169) b!1373867))

(declare-fun m!1257099 () Bool)

(assert (=> b!1373865 m!1257099))

(declare-fun m!1257101 () Bool)

(assert (=> b!1373867 m!1257101))

(declare-fun m!1257103 () Bool)

(assert (=> b!1373867 m!1257103))

(declare-fun m!1257105 () Bool)

(assert (=> b!1373867 m!1257105))

(declare-fun m!1257107 () Bool)

(assert (=> start!116500 m!1257107))

(declare-fun m!1257109 () Bool)

(assert (=> b!1373864 m!1257109))

(assert (=> b!1373864 m!1257109))

(declare-fun m!1257111 () Bool)

(assert (=> b!1373864 m!1257111))

(check-sat (not b!1373867) (not start!116500) (not b!1373865) (not b!1373864))
