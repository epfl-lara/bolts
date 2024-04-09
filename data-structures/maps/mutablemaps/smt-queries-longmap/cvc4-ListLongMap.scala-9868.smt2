; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116940 () Bool)

(assert start!116940)

(declare-fun b!1377398 () Bool)

(declare-fun res!920232 () Bool)

(declare-fun e!780259 () Bool)

(assert (=> b!1377398 (=> (not res!920232) (not e!780259))))

(declare-fun k!2947 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377398 (= res!920232 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1377397 () Bool)

(declare-fun res!920233 () Bool)

(assert (=> b!1377397 (=> (not res!920233) (not e!780259))))

(declare-datatypes ((array!93527 0))(
  ( (array!93528 (arr!45162 (Array (_ BitVec 32) (_ BitVec 64))) (size!45713 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93527)

(declare-fun i!1445 () (_ BitVec 32))

(assert (=> b!1377397 (= res!920233 (validKeyInArray!0 (select (arr!45162 a!4032) i!1445)))))

(declare-fun b!1377400 () Bool)

(assert (=> b!1377400 (= e!780259 false)))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun lt!606013 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93527 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377400 (= lt!606013 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!606012 () (_ BitVec 32))

(assert (=> b!1377400 (= lt!606012 (arrayCountValidKeys!0 (array!93528 (store (arr!45162 a!4032) i!1445 k!2947) (size!45713 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun res!920234 () Bool)

(assert (=> start!116940 (=> (not res!920234) (not e!780259))))

(assert (=> start!116940 (= res!920234 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45713 a!4032))))))

(assert (=> start!116940 e!780259))

(assert (=> start!116940 true))

(declare-fun array_inv!34107 (array!93527) Bool)

(assert (=> start!116940 (array_inv!34107 a!4032)))

(declare-fun b!1377399 () Bool)

(declare-fun res!920235 () Bool)

(assert (=> b!1377399 (=> (not res!920235) (not e!780259))))

(assert (=> b!1377399 (= res!920235 (and (bvslt (size!45713 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45713 a!4032)) (bvsgt to!206 i!1445)))))

(assert (= (and start!116940 res!920234) b!1377397))

(assert (= (and b!1377397 res!920233) b!1377398))

(assert (= (and b!1377398 res!920232) b!1377399))

(assert (= (and b!1377399 res!920235) b!1377400))

(declare-fun m!1261777 () Bool)

(assert (=> b!1377398 m!1261777))

(declare-fun m!1261779 () Bool)

(assert (=> b!1377397 m!1261779))

(assert (=> b!1377397 m!1261779))

(declare-fun m!1261781 () Bool)

(assert (=> b!1377397 m!1261781))

(declare-fun m!1261783 () Bool)

(assert (=> b!1377400 m!1261783))

(declare-fun m!1261785 () Bool)

(assert (=> b!1377400 m!1261785))

(declare-fun m!1261787 () Bool)

(assert (=> b!1377400 m!1261787))

(declare-fun m!1261789 () Bool)

(assert (=> start!116940 m!1261789))

(push 1)

(assert (not b!1377398))

(assert (not b!1377400))

(assert (not start!116940))

(assert (not b!1377397))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

