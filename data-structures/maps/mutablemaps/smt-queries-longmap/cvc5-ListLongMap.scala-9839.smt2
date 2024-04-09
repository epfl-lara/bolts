; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116762 () Bool)

(assert start!116762)

(declare-fun b!1375527 () Bool)

(declare-fun res!918664 () Bool)

(declare-fun e!779267 () Bool)

(assert (=> b!1375527 (=> (not res!918664) (not e!779267))))

(declare-datatypes ((array!93349 0))(
  ( (array!93350 (arr!45073 (Array (_ BitVec 32) (_ BitVec 64))) (size!45624 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93349)

(declare-fun i!1445 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375527 (= res!918664 (validKeyInArray!0 (select (arr!45073 a!4032) i!1445)))))

(declare-fun b!1375528 () Bool)

(declare-fun res!918669 () Bool)

(assert (=> b!1375528 (=> (not res!918669) (not e!779267))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1375528 (= res!918669 (not (validKeyInArray!0 k!2947)))))

(declare-fun bm!65708 () Bool)

(declare-fun to!206 () (_ BitVec 32))

(declare-fun call!65711 () (_ BitVec 32))

(declare-fun lt!604531 () array!93349)

(declare-fun c!127874 () Bool)

(declare-fun arrayCountValidKeys!0 (array!93349 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!65708 (= call!65711 (arrayCountValidKeys!0 (ite c!127874 lt!604531 a!4032) (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375529 () Bool)

(declare-fun e!779264 () Bool)

(assert (=> b!1375529 (= e!779264 false)))

(declare-fun lt!604530 () (_ BitVec 32))

(assert (=> b!1375529 (= lt!604530 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun lt!604523 () (_ BitVec 32))

(assert (=> b!1375529 (= lt!604523 (arrayCountValidKeys!0 lt!604531 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375530 () Bool)

(declare-fun res!918665 () Bool)

(assert (=> b!1375530 (=> (not res!918665) (not e!779267))))

(assert (=> b!1375530 (= res!918665 (and (bvslt (size!45624 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45624 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1375532 () Bool)

(declare-fun e!779266 () Bool)

(assert (=> b!1375532 (= e!779266 e!779264)))

(declare-fun res!918667 () Bool)

(assert (=> b!1375532 (=> (not res!918667) (not e!779264))))

(assert (=> b!1375532 (= res!918667 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45624 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-datatypes ((Unit!45509 0))(
  ( (Unit!45510) )
))
(declare-fun lt!604529 () Unit!45509)

(declare-fun e!779265 () Unit!45509)

(assert (=> b!1375532 (= lt!604529 e!779265)))

(assert (=> b!1375532 (= c!127874 (validKeyInArray!0 (select (arr!45073 a!4032) to!206)))))

(declare-fun b!1375533 () Bool)

(declare-fun lt!604526 () Unit!45509)

(assert (=> b!1375533 (= e!779265 lt!604526)))

(declare-fun lt!604522 () Unit!45509)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93349 (_ BitVec 32) (_ BitVec 32)) Unit!45509)

(assert (=> b!1375533 (= lt!604522 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65712 () (_ BitVec 32))

(declare-fun lt!604525 () (_ BitVec 32))

(assert (=> b!1375533 (= call!65712 (bvadd #b00000000000000000000000000000001 lt!604525))))

(assert (=> b!1375533 (= lt!604526 (lemmaValidKeyIncreasesNumOfKeys!0 lt!604531 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!604524 () (_ BitVec 32))

(assert (=> b!1375533 (= call!65711 (bvadd #b00000000000000000000000000000001 lt!604524))))

(declare-fun b!1375534 () Bool)

(declare-fun lt!604528 () Unit!45509)

(assert (=> b!1375534 (= e!779265 lt!604528)))

(declare-fun lt!604527 () Unit!45509)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93349 (_ BitVec 32) (_ BitVec 32)) Unit!45509)

(assert (=> b!1375534 (= lt!604527 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375534 (= call!65711 lt!604525)))

(assert (=> b!1375534 (= lt!604528 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!604531 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375534 (= call!65712 lt!604524)))

(declare-fun bm!65709 () Bool)

(assert (=> bm!65709 (= call!65712 (arrayCountValidKeys!0 (ite c!127874 a!4032 lt!604531) (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375531 () Bool)

(assert (=> b!1375531 (= e!779267 e!779266)))

(declare-fun res!918668 () Bool)

(assert (=> b!1375531 (=> (not res!918668) (not e!779266))))

(assert (=> b!1375531 (= res!918668 (and (= lt!604524 lt!604525) (not (= to!206 (size!45624 a!4032)))))))

(assert (=> b!1375531 (= lt!604525 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375531 (= lt!604524 (arrayCountValidKeys!0 lt!604531 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375531 (= lt!604531 (array!93350 (store (arr!45073 a!4032) i!1445 k!2947) (size!45624 a!4032)))))

(declare-fun res!918666 () Bool)

(assert (=> start!116762 (=> (not res!918666) (not e!779267))))

(assert (=> start!116762 (= res!918666 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45624 a!4032))))))

(assert (=> start!116762 e!779267))

(assert (=> start!116762 true))

(declare-fun array_inv!34018 (array!93349) Bool)

(assert (=> start!116762 (array_inv!34018 a!4032)))

(assert (= (and start!116762 res!918666) b!1375527))

(assert (= (and b!1375527 res!918664) b!1375528))

(assert (= (and b!1375528 res!918669) b!1375530))

(assert (= (and b!1375530 res!918665) b!1375531))

(assert (= (and b!1375531 res!918668) b!1375532))

(assert (= (and b!1375532 c!127874) b!1375533))

(assert (= (and b!1375532 (not c!127874)) b!1375534))

(assert (= (or b!1375533 b!1375534) bm!65709))

(assert (= (or b!1375533 b!1375534) bm!65708))

(assert (= (and b!1375532 res!918667) b!1375529))

(declare-fun m!1259455 () Bool)

(assert (=> b!1375534 m!1259455))

(declare-fun m!1259457 () Bool)

(assert (=> b!1375534 m!1259457))

(declare-fun m!1259459 () Bool)

(assert (=> b!1375529 m!1259459))

(declare-fun m!1259461 () Bool)

(assert (=> b!1375529 m!1259461))

(declare-fun m!1259463 () Bool)

(assert (=> b!1375531 m!1259463))

(declare-fun m!1259465 () Bool)

(assert (=> b!1375531 m!1259465))

(declare-fun m!1259467 () Bool)

(assert (=> b!1375531 m!1259467))

(declare-fun m!1259469 () Bool)

(assert (=> b!1375532 m!1259469))

(assert (=> b!1375532 m!1259469))

(declare-fun m!1259471 () Bool)

(assert (=> b!1375532 m!1259471))

(declare-fun m!1259473 () Bool)

(assert (=> bm!65709 m!1259473))

(declare-fun m!1259475 () Bool)

(assert (=> start!116762 m!1259475))

(declare-fun m!1259477 () Bool)

(assert (=> b!1375528 m!1259477))

(declare-fun m!1259479 () Bool)

(assert (=> b!1375533 m!1259479))

(declare-fun m!1259481 () Bool)

(assert (=> b!1375533 m!1259481))

(declare-fun m!1259483 () Bool)

(assert (=> b!1375527 m!1259483))

(assert (=> b!1375527 m!1259483))

(declare-fun m!1259485 () Bool)

(assert (=> b!1375527 m!1259485))

(declare-fun m!1259487 () Bool)

(assert (=> bm!65708 m!1259487))

(push 1)

