; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116596 () Bool)

(assert start!116596)

(declare-fun res!917831 () Bool)

(declare-fun e!778713 () Bool)

(assert (=> start!116596 (=> (not res!917831) (not e!778713))))

(declare-fun i!1457 () (_ BitVec 32))

(declare-datatypes ((array!93219 0))(
  ( (array!93220 (arr!45011 (Array (_ BitVec 32) (_ BitVec 64))) (size!45562 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93219)

(assert (=> start!116596 (= res!917831 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45562 a!4142))))))

(assert (=> start!116596 e!778713))

(assert (=> start!116596 true))

(declare-fun array_inv!33956 (array!93219) Bool)

(assert (=> start!116596 (array_inv!33956 a!4142)))

(declare-fun b!1374525 () Bool)

(declare-fun res!917832 () Bool)

(assert (=> b!1374525 (=> (not res!917832) (not e!778713))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374525 (= res!917832 (validKeyInArray!0 (select (arr!45011 a!4142) i!1457)))))

(declare-fun b!1374526 () Bool)

(declare-fun res!917830 () Bool)

(assert (=> b!1374526 (=> (not res!917830) (not e!778713))))

(declare-fun k0!2959 () (_ BitVec 64))

(assert (=> b!1374526 (= res!917830 (not (validKeyInArray!0 k0!2959)))))

(declare-fun b!1374527 () Bool)

(assert (=> b!1374527 (= e!778713 (and (bvslt (size!45562 a!4142) #b01111111111111111111111111111111) (bvsgt i!1457 (size!45562 a!4142))))))

(assert (= (and start!116596 res!917831) b!1374525))

(assert (= (and b!1374525 res!917832) b!1374526))

(assert (= (and b!1374526 res!917830) b!1374527))

(declare-fun m!1258125 () Bool)

(assert (=> start!116596 m!1258125))

(declare-fun m!1258127 () Bool)

(assert (=> b!1374525 m!1258127))

(assert (=> b!1374525 m!1258127))

(declare-fun m!1258129 () Bool)

(assert (=> b!1374525 m!1258129))

(declare-fun m!1258131 () Bool)

(assert (=> b!1374526 m!1258131))

(check-sat (not b!1374526) (not b!1374525) (not start!116596))
(check-sat)
