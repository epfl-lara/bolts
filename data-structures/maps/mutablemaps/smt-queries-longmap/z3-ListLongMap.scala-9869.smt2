; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116944 () Bool)

(assert start!116944)

(declare-fun res!920269 () Bool)

(declare-fun e!780276 () Bool)

(assert (=> start!116944 (=> (not res!920269) (not e!780276))))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93531 0))(
  ( (array!93532 (arr!45164 (Array (_ BitVec 32) (_ BitVec 64))) (size!45715 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93531)

(assert (=> start!116944 (= res!920269 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45715 a!4032))))))

(assert (=> start!116944 e!780276))

(assert (=> start!116944 true))

(declare-fun array_inv!34109 (array!93531) Bool)

(assert (=> start!116944 (array_inv!34109 a!4032)))

(declare-fun b!1377431 () Bool)

(declare-fun e!780278 () Bool)

(assert (=> b!1377431 (= e!780276 e!780278)))

(declare-fun res!920270 () Bool)

(assert (=> b!1377431 (=> (not res!920270) (not e!780278))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun lt!606019 () array!93531)

(declare-fun arrayCountValidKeys!0 (array!93531 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377431 (= res!920270 (= (arrayCountValidKeys!0 lt!606019 (bvadd #b00000000000000000000000000000001 i!1445) to!206) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206)))))

(declare-fun k0!2947 () (_ BitVec 64))

(assert (=> b!1377431 (= lt!606019 (array!93532 (store (arr!45164 a!4032) i!1445 k0!2947) (size!45715 a!4032)))))

(declare-fun b!1377432 () Bool)

(declare-fun res!920268 () Bool)

(assert (=> b!1377432 (=> (not res!920268) (not e!780276))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377432 (= res!920268 (validKeyInArray!0 (select (arr!45164 a!4032) i!1445)))))

(declare-fun b!1377433 () Bool)

(declare-fun res!920267 () Bool)

(assert (=> b!1377433 (=> (not res!920267) (not e!780278))))

(assert (=> b!1377433 (= res!920267 (= to!206 (size!45715 a!4032)))))

(declare-fun b!1377434 () Bool)

(declare-fun res!920271 () Bool)

(assert (=> b!1377434 (=> (not res!920271) (not e!780276))))

(assert (=> b!1377434 (= res!920271 (and (bvslt (size!45715 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45715 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1377435 () Bool)

(declare-fun res!920266 () Bool)

(assert (=> b!1377435 (=> (not res!920266) (not e!780276))))

(assert (=> b!1377435 (= res!920266 (not (validKeyInArray!0 k0!2947)))))

(declare-fun b!1377436 () Bool)

(assert (=> b!1377436 (= e!780278 (not (= (arrayCountValidKeys!0 lt!606019 (bvadd #b00000000000000000000000000000001 i!1445) (size!45715 a!4032)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (size!45715 a!4032)))))))

(assert (= (and start!116944 res!920269) b!1377432))

(assert (= (and b!1377432 res!920268) b!1377435))

(assert (= (and b!1377435 res!920266) b!1377434))

(assert (= (and b!1377434 res!920271) b!1377431))

(assert (= (and b!1377431 res!920270) b!1377433))

(assert (= (and b!1377433 res!920267) b!1377436))

(declare-fun m!1261809 () Bool)

(assert (=> b!1377436 m!1261809))

(declare-fun m!1261811 () Bool)

(assert (=> b!1377436 m!1261811))

(declare-fun m!1261813 () Bool)

(assert (=> start!116944 m!1261813))

(declare-fun m!1261815 () Bool)

(assert (=> b!1377432 m!1261815))

(assert (=> b!1377432 m!1261815))

(declare-fun m!1261817 () Bool)

(assert (=> b!1377432 m!1261817))

(declare-fun m!1261819 () Bool)

(assert (=> b!1377431 m!1261819))

(declare-fun m!1261821 () Bool)

(assert (=> b!1377431 m!1261821))

(declare-fun m!1261823 () Bool)

(assert (=> b!1377431 m!1261823))

(declare-fun m!1261825 () Bool)

(assert (=> b!1377435 m!1261825))

(check-sat (not b!1377431) (not start!116944) (not b!1377436) (not b!1377435) (not b!1377432))
(check-sat)
