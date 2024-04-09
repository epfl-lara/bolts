; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116820 () Bool)

(assert start!116820)

(declare-fun res!919198 () Bool)

(declare-fun e!779647 () Bool)

(assert (=> start!116820 (=> (not res!919198) (not e!779647))))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93407 0))(
  ( (array!93408 (arr!45102 (Array (_ BitVec 32) (_ BitVec 64))) (size!45653 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93407)

(assert (=> start!116820 (= res!919198 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45653 a!4032))))))

(assert (=> start!116820 e!779647))

(assert (=> start!116820 true))

(declare-fun array_inv!34047 (array!93407) Bool)

(assert (=> start!116820 (array_inv!34047 a!4032)))

(declare-fun b!1376200 () Bool)

(declare-fun res!919200 () Bool)

(assert (=> b!1376200 (=> (not res!919200) (not e!779647))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376200 (= res!919200 (validKeyInArray!0 (select (arr!45102 a!4032) i!1445)))))

(declare-fun b!1376202 () Bool)

(declare-fun res!919197 () Bool)

(assert (=> b!1376202 (=> (not res!919197) (not e!779647))))

(declare-fun to!206 () (_ BitVec 32))

(assert (=> b!1376202 (= res!919197 (and (bvslt (size!45653 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45653 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376203 () Bool)

(assert (=> b!1376203 (= e!779647 false)))

(declare-fun lt!605202 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93407 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376203 (= lt!605202 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun k!2947 () (_ BitVec 64))

(declare-fun lt!605203 () (_ BitVec 32))

(assert (=> b!1376203 (= lt!605203 (arrayCountValidKeys!0 (array!93408 (store (arr!45102 a!4032) i!1445 k!2947) (size!45653 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun b!1376201 () Bool)

(declare-fun res!919199 () Bool)

(assert (=> b!1376201 (=> (not res!919199) (not e!779647))))

(assert (=> b!1376201 (= res!919199 (not (validKeyInArray!0 k!2947)))))

(assert (= (and start!116820 res!919198) b!1376200))

(assert (= (and b!1376200 res!919200) b!1376201))

(assert (= (and b!1376201 res!919199) b!1376202))

(assert (= (and b!1376202 res!919197) b!1376203))

(declare-fun m!1260321 () Bool)

(assert (=> start!116820 m!1260321))

(declare-fun m!1260323 () Bool)

(assert (=> b!1376200 m!1260323))

(assert (=> b!1376200 m!1260323))

(declare-fun m!1260325 () Bool)

(assert (=> b!1376200 m!1260325))

(declare-fun m!1260327 () Bool)

(assert (=> b!1376203 m!1260327))

(declare-fun m!1260329 () Bool)

(assert (=> b!1376203 m!1260329))

(declare-fun m!1260331 () Bool)

(assert (=> b!1376203 m!1260331))

(declare-fun m!1260333 () Bool)

(assert (=> b!1376201 m!1260333))

(push 1)

(assert (not b!1376200))

(assert (not b!1376201))

(assert (not b!1376203))

(assert (not start!116820))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

