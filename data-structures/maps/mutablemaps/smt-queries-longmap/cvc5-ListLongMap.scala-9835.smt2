; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116738 () Bool)

(assert start!116738)

(declare-fun b!1375285 () Bool)

(declare-fun res!918464 () Bool)

(declare-fun e!779122 () Bool)

(assert (=> b!1375285 (=> (not res!918464) (not e!779122))))

(declare-datatypes ((array!93325 0))(
  ( (array!93326 (arr!45061 (Array (_ BitVec 32) (_ BitVec 64))) (size!45612 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93325)

(declare-fun i!1445 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375285 (= res!918464 (validKeyInArray!0 (select (arr!45061 a!4032) i!1445)))))

(declare-fun b!1375287 () Bool)

(declare-fun res!918462 () Bool)

(assert (=> b!1375287 (=> (not res!918462) (not e!779122))))

(declare-fun to!206 () (_ BitVec 32))

(assert (=> b!1375287 (= res!918462 (and (bvslt (size!45612 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45612 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1375286 () Bool)

(declare-fun res!918465 () Bool)

(assert (=> b!1375286 (=> (not res!918465) (not e!779122))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1375286 (= res!918465 (not (validKeyInArray!0 k!2947)))))

(declare-fun res!918463 () Bool)

(assert (=> start!116738 (=> (not res!918463) (not e!779122))))

(assert (=> start!116738 (= res!918463 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45612 a!4032))))))

(assert (=> start!116738 e!779122))

(assert (=> start!116738 true))

(declare-fun array_inv!34006 (array!93325) Bool)

(assert (=> start!116738 (array_inv!34006 a!4032)))

(declare-fun b!1375288 () Bool)

(assert (=> b!1375288 (= e!779122 false)))

(declare-fun lt!604282 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93325 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1375288 (= lt!604282 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!604281 () (_ BitVec 32))

(assert (=> b!1375288 (= lt!604281 (arrayCountValidKeys!0 (array!93326 (store (arr!45061 a!4032) i!1445 k!2947) (size!45612 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (= (and start!116738 res!918463) b!1375285))

(assert (= (and b!1375285 res!918464) b!1375286))

(assert (= (and b!1375286 res!918465) b!1375287))

(assert (= (and b!1375287 res!918462) b!1375288))

(declare-fun m!1259167 () Bool)

(assert (=> b!1375285 m!1259167))

(assert (=> b!1375285 m!1259167))

(declare-fun m!1259169 () Bool)

(assert (=> b!1375285 m!1259169))

(declare-fun m!1259171 () Bool)

(assert (=> b!1375286 m!1259171))

(declare-fun m!1259173 () Bool)

(assert (=> start!116738 m!1259173))

(declare-fun m!1259175 () Bool)

(assert (=> b!1375288 m!1259175))

(declare-fun m!1259177 () Bool)

(assert (=> b!1375288 m!1259177))

(declare-fun m!1259179 () Bool)

(assert (=> b!1375288 m!1259179))

(push 1)

(assert (not b!1375286))

(assert (not b!1375288))

(assert (not start!116738))

(assert (not b!1375285))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

