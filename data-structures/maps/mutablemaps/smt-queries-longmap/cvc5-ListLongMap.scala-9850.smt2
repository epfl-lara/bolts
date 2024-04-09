; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116828 () Bool)

(assert start!116828)

(declare-fun b!1376258 () Bool)

(declare-fun res!919257 () Bool)

(declare-fun e!779671 () Bool)

(assert (=> b!1376258 (=> (not res!919257) (not e!779671))))

(declare-fun k!2947 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376258 (= res!919257 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1376257 () Bool)

(declare-fun res!919256 () Bool)

(assert (=> b!1376257 (=> (not res!919256) (not e!779671))))

(declare-datatypes ((array!93415 0))(
  ( (array!93416 (arr!45106 (Array (_ BitVec 32) (_ BitVec 64))) (size!45657 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93415)

(declare-fun i!1445 () (_ BitVec 32))

(assert (=> b!1376257 (= res!919256 (validKeyInArray!0 (select (arr!45106 a!4032) i!1445)))))

(declare-fun res!919255 () Bool)

(assert (=> start!116828 (=> (not res!919255) (not e!779671))))

(assert (=> start!116828 (= res!919255 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45657 a!4032))))))

(assert (=> start!116828 e!779671))

(assert (=> start!116828 true))

(declare-fun array_inv!34051 (array!93415) Bool)

(assert (=> start!116828 (array_inv!34051 a!4032)))

(declare-fun b!1376259 () Bool)

(declare-fun res!919254 () Bool)

(assert (=> b!1376259 (=> (not res!919254) (not e!779671))))

(declare-fun to!206 () (_ BitVec 32))

(assert (=> b!1376259 (= res!919254 (and (bvslt (size!45657 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45657 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376260 () Bool)

(assert (=> b!1376260 (= e!779671 false)))

(declare-fun lt!605208 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93415 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376260 (= lt!605208 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!605209 () (_ BitVec 32))

(assert (=> b!1376260 (= lt!605209 (arrayCountValidKeys!0 (array!93416 (store (arr!45106 a!4032) i!1445 k!2947) (size!45657 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (= (and start!116828 res!919255) b!1376257))

(assert (= (and b!1376257 res!919256) b!1376258))

(assert (= (and b!1376258 res!919257) b!1376259))

(assert (= (and b!1376259 res!919254) b!1376260))

(declare-fun m!1260377 () Bool)

(assert (=> b!1376258 m!1260377))

(declare-fun m!1260379 () Bool)

(assert (=> b!1376257 m!1260379))

(assert (=> b!1376257 m!1260379))

(declare-fun m!1260381 () Bool)

(assert (=> b!1376257 m!1260381))

(declare-fun m!1260383 () Bool)

(assert (=> start!116828 m!1260383))

(declare-fun m!1260385 () Bool)

(assert (=> b!1376260 m!1260385))

(declare-fun m!1260387 () Bool)

(assert (=> b!1376260 m!1260387))

(declare-fun m!1260389 () Bool)

(assert (=> b!1376260 m!1260389))

(push 1)

(assert (not b!1376257))

(assert (not b!1376258))

(assert (not b!1376260))

(assert (not start!116828))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

