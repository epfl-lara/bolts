; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116826 () Bool)

(assert start!116826)

(declare-fun res!919242 () Bool)

(declare-fun e!779666 () Bool)

(assert (=> start!116826 (=> (not res!919242) (not e!779666))))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93413 0))(
  ( (array!93414 (arr!45105 (Array (_ BitVec 32) (_ BitVec 64))) (size!45656 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93413)

(assert (=> start!116826 (= res!919242 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45656 a!4032))))))

(assert (=> start!116826 e!779666))

(assert (=> start!116826 true))

(declare-fun array_inv!34050 (array!93413) Bool)

(assert (=> start!116826 (array_inv!34050 a!4032)))

(declare-fun b!1376244 () Bool)

(declare-fun res!919241 () Bool)

(assert (=> b!1376244 (=> (not res!919241) (not e!779666))))

(declare-fun k!2947 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376244 (= res!919241 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1376245 () Bool)

(declare-fun res!919244 () Bool)

(assert (=> b!1376245 (=> (not res!919244) (not e!779666))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93413 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376245 (= res!919244 (= (arrayCountValidKeys!0 (array!93414 (store (arr!45105 a!4032) i!1445 k!2947) (size!45656 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206)))))

(declare-fun b!1376246 () Bool)

(declare-fun res!919243 () Bool)

(assert (=> b!1376246 (=> (not res!919243) (not e!779666))))

(assert (=> b!1376246 (= res!919243 (and (bvslt (size!45656 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45656 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376247 () Bool)

(declare-fun res!919245 () Bool)

(assert (=> b!1376247 (=> (not res!919245) (not e!779666))))

(assert (=> b!1376247 (= res!919245 (validKeyInArray!0 (select (arr!45105 a!4032) i!1445)))))

(declare-fun b!1376248 () Bool)

(assert (=> b!1376248 (= e!779666 (and (= to!206 (size!45656 a!4032)) (bvslt (bvadd #b00000000000000000000000000000001 i!1445) #b00000000000000000000000000000000)))))

(assert (= (and start!116826 res!919242) b!1376247))

(assert (= (and b!1376247 res!919245) b!1376244))

(assert (= (and b!1376244 res!919241) b!1376246))

(assert (= (and b!1376246 res!919243) b!1376245))

(assert (= (and b!1376245 res!919244) b!1376248))

(declare-fun m!1260363 () Bool)

(assert (=> start!116826 m!1260363))

(declare-fun m!1260365 () Bool)

(assert (=> b!1376244 m!1260365))

(declare-fun m!1260367 () Bool)

(assert (=> b!1376245 m!1260367))

(declare-fun m!1260369 () Bool)

(assert (=> b!1376245 m!1260369))

(declare-fun m!1260371 () Bool)

(assert (=> b!1376245 m!1260371))

(declare-fun m!1260373 () Bool)

(assert (=> b!1376247 m!1260373))

(assert (=> b!1376247 m!1260373))

(declare-fun m!1260375 () Bool)

(assert (=> b!1376247 m!1260375))

(push 1)

(assert (not b!1376245))

(assert (not b!1376247))

(assert (not start!116826))

(assert (not b!1376244))

(check-sat)

(pop 1)

(push 1)

(check-sat)

