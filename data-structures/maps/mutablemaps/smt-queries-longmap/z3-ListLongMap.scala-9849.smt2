; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116824 () Bool)

(assert start!116824)

(declare-fun b!1376229 () Bool)

(declare-fun res!919229 () Bool)

(declare-fun e!779660 () Bool)

(assert (=> b!1376229 (=> (not res!919229) (not e!779660))))

(declare-fun k0!2947 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376229 (= res!919229 (not (validKeyInArray!0 k0!2947)))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93411 0))(
  ( (array!93412 (arr!45104 (Array (_ BitVec 32) (_ BitVec 64))) (size!45655 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93411)

(declare-fun b!1376230 () Bool)

(assert (=> b!1376230 (= e!779660 (and (= to!206 (size!45655 a!4032)) (bvslt (bvadd #b00000000000000000000000000000001 i!1445) #b00000000000000000000000000000000)))))

(declare-fun res!919228 () Bool)

(assert (=> start!116824 (=> (not res!919228) (not e!779660))))

(assert (=> start!116824 (= res!919228 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45655 a!4032))))))

(assert (=> start!116824 e!779660))

(assert (=> start!116824 true))

(declare-fun array_inv!34049 (array!93411) Bool)

(assert (=> start!116824 (array_inv!34049 a!4032)))

(declare-fun b!1376231 () Bool)

(declare-fun res!919226 () Bool)

(assert (=> b!1376231 (=> (not res!919226) (not e!779660))))

(declare-fun arrayCountValidKeys!0 (array!93411 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376231 (= res!919226 (= (arrayCountValidKeys!0 (array!93412 (store (arr!45104 a!4032) i!1445 k0!2947) (size!45655 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206)))))

(declare-fun b!1376232 () Bool)

(declare-fun res!919230 () Bool)

(assert (=> b!1376232 (=> (not res!919230) (not e!779660))))

(assert (=> b!1376232 (= res!919230 (and (bvslt (size!45655 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45655 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376233 () Bool)

(declare-fun res!919227 () Bool)

(assert (=> b!1376233 (=> (not res!919227) (not e!779660))))

(assert (=> b!1376233 (= res!919227 (validKeyInArray!0 (select (arr!45104 a!4032) i!1445)))))

(assert (= (and start!116824 res!919228) b!1376233))

(assert (= (and b!1376233 res!919227) b!1376229))

(assert (= (and b!1376229 res!919229) b!1376232))

(assert (= (and b!1376232 res!919230) b!1376231))

(assert (= (and b!1376231 res!919226) b!1376230))

(declare-fun m!1260349 () Bool)

(assert (=> b!1376229 m!1260349))

(declare-fun m!1260351 () Bool)

(assert (=> start!116824 m!1260351))

(declare-fun m!1260353 () Bool)

(assert (=> b!1376231 m!1260353))

(declare-fun m!1260355 () Bool)

(assert (=> b!1376231 m!1260355))

(declare-fun m!1260357 () Bool)

(assert (=> b!1376231 m!1260357))

(declare-fun m!1260359 () Bool)

(assert (=> b!1376233 m!1260359))

(assert (=> b!1376233 m!1260359))

(declare-fun m!1260361 () Bool)

(assert (=> b!1376233 m!1260361))

(check-sat (not b!1376229) (not start!116824) (not b!1376231) (not b!1376233))
(check-sat)
