; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116816 () Bool)

(assert start!116816)

(declare-fun b!1376177 () Bool)

(declare-fun res!919175 () Bool)

(declare-fun e!779635 () Bool)

(assert (=> b!1376177 (=> (not res!919175) (not e!779635))))

(declare-fun k!2947 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376177 (= res!919175 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1376178 () Bool)

(declare-fun res!919176 () Bool)

(assert (=> b!1376178 (=> (not res!919176) (not e!779635))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93403 0))(
  ( (array!93404 (arr!45100 (Array (_ BitVec 32) (_ BitVec 64))) (size!45651 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93403)

(assert (=> b!1376178 (= res!919176 (and (bvslt (size!45651 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45651 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun res!919173 () Bool)

(assert (=> start!116816 (=> (not res!919173) (not e!779635))))

(assert (=> start!116816 (= res!919173 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45651 a!4032))))))

(assert (=> start!116816 e!779635))

(assert (=> start!116816 true))

(declare-fun array_inv!34045 (array!93403) Bool)

(assert (=> start!116816 (array_inv!34045 a!4032)))

(declare-fun b!1376179 () Bool)

(assert (=> b!1376179 (= e!779635 false)))

(declare-fun lt!605191 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93403 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376179 (= lt!605191 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!605190 () (_ BitVec 32))

(assert (=> b!1376179 (= lt!605190 (arrayCountValidKeys!0 (array!93404 (store (arr!45100 a!4032) i!1445 k!2947) (size!45651 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun b!1376176 () Bool)

(declare-fun res!919174 () Bool)

(assert (=> b!1376176 (=> (not res!919174) (not e!779635))))

(assert (=> b!1376176 (= res!919174 (validKeyInArray!0 (select (arr!45100 a!4032) i!1445)))))

(assert (= (and start!116816 res!919173) b!1376176))

(assert (= (and b!1376176 res!919174) b!1376177))

(assert (= (and b!1376177 res!919175) b!1376178))

(assert (= (and b!1376178 res!919176) b!1376179))

(declare-fun m!1260293 () Bool)

(assert (=> b!1376177 m!1260293))

(declare-fun m!1260295 () Bool)

(assert (=> start!116816 m!1260295))

(declare-fun m!1260297 () Bool)

(assert (=> b!1376179 m!1260297))

(declare-fun m!1260299 () Bool)

(assert (=> b!1376179 m!1260299))

(declare-fun m!1260301 () Bool)

(assert (=> b!1376179 m!1260301))

(declare-fun m!1260303 () Bool)

(assert (=> b!1376176 m!1260303))

(assert (=> b!1376176 m!1260303))

(declare-fun m!1260305 () Bool)

(assert (=> b!1376176 m!1260305))

(push 1)

(assert (not b!1376179))

(assert (not start!116816))

(assert (not b!1376176))

(assert (not b!1376177))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

