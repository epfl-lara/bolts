; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116818 () Bool)

(assert start!116818)

(declare-fun b!1376191 () Bool)

(declare-fun e!779641 () Bool)

(assert (=> b!1376191 (= e!779641 false)))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93405 0))(
  ( (array!93406 (arr!45101 (Array (_ BitVec 32) (_ BitVec 64))) (size!45652 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93405)

(declare-fun lt!605197 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93405 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376191 (= lt!605197 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun k0!2947 () (_ BitVec 64))

(declare-fun lt!605196 () (_ BitVec 32))

(assert (=> b!1376191 (= lt!605196 (arrayCountValidKeys!0 (array!93406 (store (arr!45101 a!4032) i!1445 k0!2947) (size!45652 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun b!1376189 () Bool)

(declare-fun res!919186 () Bool)

(assert (=> b!1376189 (=> (not res!919186) (not e!779641))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376189 (= res!919186 (not (validKeyInArray!0 k0!2947)))))

(declare-fun res!919188 () Bool)

(assert (=> start!116818 (=> (not res!919188) (not e!779641))))

(assert (=> start!116818 (= res!919188 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45652 a!4032))))))

(assert (=> start!116818 e!779641))

(assert (=> start!116818 true))

(declare-fun array_inv!34046 (array!93405) Bool)

(assert (=> start!116818 (array_inv!34046 a!4032)))

(declare-fun b!1376188 () Bool)

(declare-fun res!919187 () Bool)

(assert (=> b!1376188 (=> (not res!919187) (not e!779641))))

(assert (=> b!1376188 (= res!919187 (validKeyInArray!0 (select (arr!45101 a!4032) i!1445)))))

(declare-fun b!1376190 () Bool)

(declare-fun res!919185 () Bool)

(assert (=> b!1376190 (=> (not res!919185) (not e!779641))))

(assert (=> b!1376190 (= res!919185 (and (bvslt (size!45652 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45652 a!4032)) (bvsgt to!206 i!1445)))))

(assert (= (and start!116818 res!919188) b!1376188))

(assert (= (and b!1376188 res!919187) b!1376189))

(assert (= (and b!1376189 res!919186) b!1376190))

(assert (= (and b!1376190 res!919185) b!1376191))

(declare-fun m!1260307 () Bool)

(assert (=> b!1376191 m!1260307))

(declare-fun m!1260309 () Bool)

(assert (=> b!1376191 m!1260309))

(declare-fun m!1260311 () Bool)

(assert (=> b!1376191 m!1260311))

(declare-fun m!1260313 () Bool)

(assert (=> b!1376189 m!1260313))

(declare-fun m!1260315 () Bool)

(assert (=> start!116818 m!1260315))

(declare-fun m!1260317 () Bool)

(assert (=> b!1376188 m!1260317))

(assert (=> b!1376188 m!1260317))

(declare-fun m!1260319 () Bool)

(assert (=> b!1376188 m!1260319))

(check-sat (not b!1376191) (not start!116818) (not b!1376188) (not b!1376189))
