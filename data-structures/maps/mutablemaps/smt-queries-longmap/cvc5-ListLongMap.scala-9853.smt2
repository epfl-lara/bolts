; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116846 () Bool)

(assert start!116846)

(declare-fun b!1376389 () Bool)

(declare-fun res!919392 () Bool)

(declare-fun e!779726 () Bool)

(assert (=> b!1376389 (=> (not res!919392) (not e!779726))))

(declare-fun to!206 () (_ BitVec 32))

(declare-datatypes ((array!93433 0))(
  ( (array!93434 (arr!45115 (Array (_ BitVec 32) (_ BitVec 64))) (size!45666 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93433)

(declare-fun i!1445 () (_ BitVec 32))

(assert (=> b!1376389 (= res!919392 (and (bvslt (size!45666 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45666 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376390 () Bool)

(declare-fun res!919391 () Bool)

(assert (=> b!1376390 (=> (not res!919391) (not e!779726))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376390 (= res!919391 (validKeyInArray!0 (select (arr!45115 a!4032) i!1445)))))

(declare-fun b!1376391 () Bool)

(assert (=> b!1376391 (= e!779726 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1445) #b00000000000000000000000000000000) (bvsge to!206 (size!45666 a!4032))))))

(declare-fun res!919389 () Bool)

(assert (=> start!116846 (=> (not res!919389) (not e!779726))))

(assert (=> start!116846 (= res!919389 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45666 a!4032))))))

(assert (=> start!116846 e!779726))

(assert (=> start!116846 true))

(declare-fun array_inv!34060 (array!93433) Bool)

(assert (=> start!116846 (array_inv!34060 a!4032)))

(declare-fun b!1376392 () Bool)

(declare-fun res!919388 () Bool)

(assert (=> b!1376392 (=> (not res!919388) (not e!779726))))

(assert (=> b!1376392 (= res!919388 (not (= to!206 (size!45666 a!4032))))))

(declare-fun b!1376393 () Bool)

(declare-fun res!919390 () Bool)

(assert (=> b!1376393 (=> (not res!919390) (not e!779726))))

(assert (=> b!1376393 (= res!919390 (validKeyInArray!0 (select (arr!45115 a!4032) to!206)))))

(declare-fun b!1376394 () Bool)

(declare-fun res!919387 () Bool)

(assert (=> b!1376394 (=> (not res!919387) (not e!779726))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1376394 (= res!919387 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1376395 () Bool)

(declare-fun res!919386 () Bool)

(assert (=> b!1376395 (=> (not res!919386) (not e!779726))))

(declare-fun arrayCountValidKeys!0 (array!93433 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376395 (= res!919386 (= (arrayCountValidKeys!0 (array!93434 (store (arr!45115 a!4032) i!1445 k!2947) (size!45666 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206)))))

(assert (= (and start!116846 res!919389) b!1376390))

(assert (= (and b!1376390 res!919391) b!1376394))

(assert (= (and b!1376394 res!919387) b!1376389))

(assert (= (and b!1376389 res!919392) b!1376395))

(assert (= (and b!1376395 res!919386) b!1376392))

(assert (= (and b!1376392 res!919388) b!1376393))

(assert (= (and b!1376393 res!919390) b!1376391))

(declare-fun m!1260503 () Bool)

(assert (=> b!1376395 m!1260503))

(declare-fun m!1260505 () Bool)

(assert (=> b!1376395 m!1260505))

(declare-fun m!1260507 () Bool)

(assert (=> b!1376395 m!1260507))

(declare-fun m!1260509 () Bool)

(assert (=> b!1376390 m!1260509))

(assert (=> b!1376390 m!1260509))

(declare-fun m!1260511 () Bool)

(assert (=> b!1376390 m!1260511))

(declare-fun m!1260513 () Bool)

(assert (=> start!116846 m!1260513))

(declare-fun m!1260515 () Bool)

(assert (=> b!1376393 m!1260515))

(assert (=> b!1376393 m!1260515))

(declare-fun m!1260517 () Bool)

(assert (=> b!1376393 m!1260517))

(declare-fun m!1260519 () Bool)

(assert (=> b!1376394 m!1260519))

(push 1)

(assert (not b!1376390))

(assert (not b!1376393))

(assert (not start!116846))

(assert (not b!1376394))

(assert (not b!1376395))

(check-sat)

(pop 1)

(push 1)

(check-sat)

