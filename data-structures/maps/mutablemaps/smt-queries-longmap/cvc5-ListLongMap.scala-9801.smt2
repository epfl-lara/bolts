; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116492 () Bool)

(assert start!116492)

(declare-fun b!1373817 () Bool)

(declare-fun res!917124 () Bool)

(declare-fun e!778311 () Bool)

(assert (=> b!1373817 (=> (not res!917124) (not e!778311))))

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1373817 (= res!917124 (not (validKeyInArray!0 k!2959)))))

(declare-fun b!1373818 () Bool)

(declare-fun res!917121 () Bool)

(assert (=> b!1373818 (=> (not res!917121) (not e!778311))))

(declare-datatypes ((array!93115 0))(
  ( (array!93116 (arr!44959 (Array (_ BitVec 32) (_ BitVec 64))) (size!45510 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93115)

(declare-fun i!1457 () (_ BitVec 32))

(assert (=> b!1373818 (= res!917121 (and (bvslt (size!45510 a!4142) #b01111111111111111111111111111111) (bvsle i!1457 (size!45510 a!4142))))))

(declare-fun b!1373816 () Bool)

(declare-fun res!917122 () Bool)

(assert (=> b!1373816 (=> (not res!917122) (not e!778311))))

(assert (=> b!1373816 (= res!917122 (validKeyInArray!0 (select (arr!44959 a!4142) i!1457)))))

(declare-fun b!1373819 () Bool)

(assert (=> b!1373819 (= e!778311 false)))

(declare-fun lt!603079 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93115 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1373819 (= lt!603079 (arrayCountValidKeys!0 (array!93116 (store (arr!44959 a!4142) i!1457 k!2959) (size!45510 a!4142)) i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603080 () (_ BitVec 32))

(assert (=> b!1373819 (= lt!603080 (arrayCountValidKeys!0 a!4142 i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun res!917123 () Bool)

(assert (=> start!116492 (=> (not res!917123) (not e!778311))))

(assert (=> start!116492 (= res!917123 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45510 a!4142))))))

(assert (=> start!116492 e!778311))

(assert (=> start!116492 true))

(declare-fun array_inv!33904 (array!93115) Bool)

(assert (=> start!116492 (array_inv!33904 a!4142)))

(assert (= (and start!116492 res!917123) b!1373816))

(assert (= (and b!1373816 res!917122) b!1373817))

(assert (= (and b!1373817 res!917124) b!1373818))

(assert (= (and b!1373818 res!917121) b!1373819))

(declare-fun m!1257043 () Bool)

(assert (=> b!1373817 m!1257043))

(declare-fun m!1257045 () Bool)

(assert (=> b!1373816 m!1257045))

(assert (=> b!1373816 m!1257045))

(declare-fun m!1257047 () Bool)

(assert (=> b!1373816 m!1257047))

(declare-fun m!1257049 () Bool)

(assert (=> b!1373819 m!1257049))

(declare-fun m!1257051 () Bool)

(assert (=> b!1373819 m!1257051))

(declare-fun m!1257053 () Bool)

(assert (=> b!1373819 m!1257053))

(declare-fun m!1257055 () Bool)

(assert (=> start!116492 m!1257055))

(push 1)

(assert (not start!116492))

(assert (not b!1373819))

(assert (not b!1373816))

(assert (not b!1373817))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

