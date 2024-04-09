; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116938 () Bool)

(assert start!116938)

(declare-fun b!1377385 () Bool)

(declare-fun res!920220 () Bool)

(declare-fun e!780254 () Bool)

(assert (=> b!1377385 (=> (not res!920220) (not e!780254))))

(declare-datatypes ((array!93525 0))(
  ( (array!93526 (arr!45161 (Array (_ BitVec 32) (_ BitVec 64))) (size!45712 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93525)

(declare-fun i!1445 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377385 (= res!920220 (validKeyInArray!0 (select (arr!45161 a!4032) i!1445)))))

(declare-fun b!1377386 () Bool)

(declare-fun res!920221 () Bool)

(assert (=> b!1377386 (=> (not res!920221) (not e!780254))))

(declare-fun k0!2947 () (_ BitVec 64))

(assert (=> b!1377386 (= res!920221 (not (validKeyInArray!0 k0!2947)))))

(declare-fun b!1377387 () Bool)

(declare-fun res!920223 () Bool)

(assert (=> b!1377387 (=> (not res!920223) (not e!780254))))

(declare-fun to!206 () (_ BitVec 32))

(assert (=> b!1377387 (= res!920223 (and (bvslt (size!45712 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45712 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1377388 () Bool)

(assert (=> b!1377388 (= e!780254 false)))

(declare-fun lt!606007 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93525 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377388 (= lt!606007 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!606006 () (_ BitVec 32))

(assert (=> b!1377388 (= lt!606006 (arrayCountValidKeys!0 (array!93526 (store (arr!45161 a!4032) i!1445 k0!2947) (size!45712 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun res!920222 () Bool)

(assert (=> start!116938 (=> (not res!920222) (not e!780254))))

(assert (=> start!116938 (= res!920222 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45712 a!4032))))))

(assert (=> start!116938 e!780254))

(assert (=> start!116938 true))

(declare-fun array_inv!34106 (array!93525) Bool)

(assert (=> start!116938 (array_inv!34106 a!4032)))

(assert (= (and start!116938 res!920222) b!1377385))

(assert (= (and b!1377385 res!920220) b!1377386))

(assert (= (and b!1377386 res!920221) b!1377387))

(assert (= (and b!1377387 res!920223) b!1377388))

(declare-fun m!1261763 () Bool)

(assert (=> b!1377385 m!1261763))

(assert (=> b!1377385 m!1261763))

(declare-fun m!1261765 () Bool)

(assert (=> b!1377385 m!1261765))

(declare-fun m!1261767 () Bool)

(assert (=> b!1377386 m!1261767))

(declare-fun m!1261769 () Bool)

(assert (=> b!1377388 m!1261769))

(declare-fun m!1261771 () Bool)

(assert (=> b!1377388 m!1261771))

(declare-fun m!1261773 () Bool)

(assert (=> b!1377388 m!1261773))

(declare-fun m!1261775 () Bool)

(assert (=> start!116938 m!1261775))

(check-sat (not b!1377385) (not b!1377386) (not b!1377388) (not start!116938))
