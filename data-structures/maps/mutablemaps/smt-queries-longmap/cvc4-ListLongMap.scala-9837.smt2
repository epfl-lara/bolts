; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116754 () Bool)

(assert start!116754)

(declare-fun bm!65684 () Bool)

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93341 0))(
  ( (array!93342 (arr!45069 (Array (_ BitVec 32) (_ BitVec 64))) (size!45620 (_ BitVec 32))) )
))
(declare-fun lt!604404 () array!93341)

(declare-fun call!65688 () (_ BitVec 32))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93341 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!65684 (= call!65688 (arrayCountValidKeys!0 lt!604404 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375431 () Bool)

(declare-datatypes ((Unit!45501 0))(
  ( (Unit!45502) )
))
(declare-fun e!779204 () Unit!45501)

(declare-fun lt!604408 () Unit!45501)

(assert (=> b!1375431 (= e!779204 lt!604408)))

(declare-fun a!4032 () array!93341)

(declare-fun lt!604411 () Unit!45501)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93341 (_ BitVec 32) (_ BitVec 32)) Unit!45501)

(assert (=> b!1375431 (= lt!604411 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65687 () (_ BitVec 32))

(declare-fun lt!604403 () (_ BitVec 32))

(assert (=> b!1375431 (= call!65687 (bvadd #b00000000000000000000000000000001 lt!604403))))

(assert (=> b!1375431 (= lt!604408 (lemmaValidKeyIncreasesNumOfKeys!0 lt!604404 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!604406 () (_ BitVec 32))

(assert (=> b!1375431 (= call!65688 (bvadd #b00000000000000000000000000000001 lt!604406))))

(declare-fun b!1375432 () Bool)

(declare-fun lt!604410 () Unit!45501)

(assert (=> b!1375432 (= e!779204 lt!604410)))

(declare-fun lt!604402 () Unit!45501)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93341 (_ BitVec 32) (_ BitVec 32)) Unit!45501)

(assert (=> b!1375432 (= lt!604402 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375432 (= call!65687 lt!604403)))

(assert (=> b!1375432 (= lt!604410 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!604404 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375432 (= call!65688 lt!604406)))

(declare-fun bm!65685 () Bool)

(assert (=> bm!65685 (= call!65687 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375433 () Bool)

(declare-fun res!918593 () Bool)

(declare-fun e!779207 () Bool)

(assert (=> b!1375433 (=> (not res!918593) (not e!779207))))

(assert (=> b!1375433 (= res!918593 (and (bvslt (size!45620 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45620 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1375434 () Bool)

(declare-fun res!918596 () Bool)

(assert (=> b!1375434 (=> (not res!918596) (not e!779207))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375434 (= res!918596 (validKeyInArray!0 (select (arr!45069 a!4032) i!1445)))))

(declare-fun b!1375435 () Bool)

(declare-fun e!779203 () Bool)

(assert (=> b!1375435 (= e!779203 false)))

(declare-fun lt!604409 () (_ BitVec 32))

(assert (=> b!1375435 (= lt!604409 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun lt!604407 () (_ BitVec 32))

(assert (=> b!1375435 (= lt!604407 (arrayCountValidKeys!0 lt!604404 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375436 () Bool)

(declare-fun e!779205 () Bool)

(assert (=> b!1375436 (= e!779205 e!779203)))

(declare-fun res!918597 () Bool)

(assert (=> b!1375436 (=> (not res!918597) (not e!779203))))

(assert (=> b!1375436 (= res!918597 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45620 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-fun lt!604405 () Unit!45501)

(assert (=> b!1375436 (= lt!604405 e!779204)))

(declare-fun c!127862 () Bool)

(assert (=> b!1375436 (= c!127862 (validKeyInArray!0 (select (arr!45069 a!4032) to!206)))))

(declare-fun b!1375438 () Bool)

(assert (=> b!1375438 (= e!779207 e!779205)))

(declare-fun res!918592 () Bool)

(assert (=> b!1375438 (=> (not res!918592) (not e!779205))))

(assert (=> b!1375438 (= res!918592 (and (= lt!604406 lt!604403) (not (= to!206 (size!45620 a!4032)))))))

(assert (=> b!1375438 (= lt!604403 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375438 (= lt!604406 (arrayCountValidKeys!0 lt!604404 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1375438 (= lt!604404 (array!93342 (store (arr!45069 a!4032) i!1445 k!2947) (size!45620 a!4032)))))

(declare-fun b!1375437 () Bool)

(declare-fun res!918594 () Bool)

(assert (=> b!1375437 (=> (not res!918594) (not e!779207))))

(assert (=> b!1375437 (= res!918594 (not (validKeyInArray!0 k!2947)))))

(declare-fun res!918595 () Bool)

(assert (=> start!116754 (=> (not res!918595) (not e!779207))))

(assert (=> start!116754 (= res!918595 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45620 a!4032))))))

(assert (=> start!116754 e!779207))

(assert (=> start!116754 true))

(declare-fun array_inv!34014 (array!93341) Bool)

(assert (=> start!116754 (array_inv!34014 a!4032)))

(assert (= (and start!116754 res!918595) b!1375434))

(assert (= (and b!1375434 res!918596) b!1375437))

(assert (= (and b!1375437 res!918594) b!1375433))

(assert (= (and b!1375433 res!918593) b!1375438))

(assert (= (and b!1375438 res!918592) b!1375436))

(assert (= (and b!1375436 c!127862) b!1375431))

(assert (= (and b!1375436 (not c!127862)) b!1375432))

(assert (= (or b!1375431 b!1375432) bm!65684))

(assert (= (or b!1375431 b!1375432) bm!65685))

(assert (= (and b!1375436 res!918597) b!1375435))

(declare-fun m!1259335 () Bool)

(assert (=> b!1375432 m!1259335))

(declare-fun m!1259337 () Bool)

(assert (=> b!1375432 m!1259337))

(declare-fun m!1259339 () Bool)

(assert (=> b!1375437 m!1259339))

(declare-fun m!1259341 () Bool)

(assert (=> b!1375434 m!1259341))

(assert (=> b!1375434 m!1259341))

(declare-fun m!1259343 () Bool)

(assert (=> b!1375434 m!1259343))

(declare-fun m!1259345 () Bool)

(assert (=> b!1375436 m!1259345))

(assert (=> b!1375436 m!1259345))

(declare-fun m!1259347 () Bool)

(assert (=> b!1375436 m!1259347))

(declare-fun m!1259349 () Bool)

(assert (=> start!116754 m!1259349))

(declare-fun m!1259351 () Bool)

(assert (=> b!1375431 m!1259351))

(declare-fun m!1259353 () Bool)

(assert (=> b!1375431 m!1259353))

(declare-fun m!1259355 () Bool)

(assert (=> bm!65684 m!1259355))

(declare-fun m!1259357 () Bool)

(assert (=> b!1375435 m!1259357))

(assert (=> b!1375435 m!1259355))

(assert (=> bm!65685 m!1259357))

(declare-fun m!1259359 () Bool)

(assert (=> b!1375438 m!1259359))

(declare-fun m!1259361 () Bool)

(assert (=> b!1375438 m!1259361))

(declare-fun m!1259363 () Bool)

(assert (=> b!1375438 m!1259363))

(push 1)

(assert (not b!1375438))

