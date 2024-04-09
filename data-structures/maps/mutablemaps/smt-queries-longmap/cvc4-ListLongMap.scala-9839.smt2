; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116766 () Bool)

(assert start!116766)

(declare-fun b!1375575 () Bool)

(declare-fun res!918701 () Bool)

(declare-fun e!779296 () Bool)

(assert (=> b!1375575 (=> (not res!918701) (not e!779296))))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93353 0))(
  ( (array!93354 (arr!45075 (Array (_ BitVec 32) (_ BitVec 64))) (size!45626 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93353)

(declare-fun to!206 () (_ BitVec 32))

(assert (=> b!1375575 (= res!918701 (and (bvslt (size!45626 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45626 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1375576 () Bool)

(declare-datatypes ((Unit!45513 0))(
  ( (Unit!45514) )
))
(declare-fun e!779295 () Unit!45513)

(declare-fun lt!604589 () Unit!45513)

(assert (=> b!1375576 (= e!779295 lt!604589)))

(declare-fun lt!604584 () Unit!45513)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93353 (_ BitVec 32) (_ BitVec 32)) Unit!45513)

(assert (=> b!1375576 (= lt!604584 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65724 () (_ BitVec 32))

(declare-fun lt!604582 () (_ BitVec 32))

(assert (=> b!1375576 (= call!65724 lt!604582)))

(declare-fun lt!604583 () array!93353)

(assert (=> b!1375576 (= lt!604589 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!604583 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65723 () (_ BitVec 32))

(declare-fun lt!604588 () (_ BitVec 32))

(assert (=> b!1375576 (= call!65723 lt!604588)))

(declare-fun b!1375577 () Bool)

(declare-fun lt!604587 () Unit!45513)

(assert (=> b!1375577 (= e!779295 lt!604587)))

(declare-fun lt!604590 () Unit!45513)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93353 (_ BitVec 32) (_ BitVec 32)) Unit!45513)

(assert (=> b!1375577 (= lt!604590 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375577 (= call!65724 (bvadd #b00000000000000000000000000000001 lt!604582))))

(assert (=> b!1375577 (= lt!604587 (lemmaValidKeyIncreasesNumOfKeys!0 lt!604583 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375577 (= call!65723 (bvadd #b00000000000000000000000000000001 lt!604588))))

(declare-fun b!1375578 () Bool)

(declare-fun e!779293 () Bool)

(declare-fun e!779297 () Bool)

(assert (=> b!1375578 (= e!779293 e!779297)))

(declare-fun res!918705 () Bool)

(assert (=> b!1375578 (=> (not res!918705) (not e!779297))))

(assert (=> b!1375578 (= res!918705 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45626 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-fun lt!604585 () Unit!45513)

(assert (=> b!1375578 (= lt!604585 e!779295)))

(declare-fun c!127880 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375578 (= c!127880 (validKeyInArray!0 (select (arr!45075 a!4032) to!206)))))

(declare-fun b!1375579 () Bool)

(declare-fun res!918702 () Bool)

(assert (=> b!1375579 (=> (not res!918702) (not e!779296))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1375579 (= res!918702 (not (validKeyInArray!0 k!2947)))))

(declare-fun bm!65720 () Bool)

(declare-fun arrayCountValidKeys!0 (array!93353 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!65720 (= call!65723 (arrayCountValidKeys!0 lt!604583 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375580 () Bool)

(assert (=> b!1375580 (= e!779296 e!779293)))

(declare-fun res!918704 () Bool)

(assert (=> b!1375580 (=> (not res!918704) (not e!779293))))

(assert (=> b!1375580 (= res!918704 (and (= lt!604588 lt!604582) (not (= to!206 (size!45626 a!4032)))))))

(assert (=> b!1375580 (= lt!604582 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375580 (= lt!604588 (arrayCountValidKeys!0 lt!604583 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375580 (= lt!604583 (array!93354 (store (arr!45075 a!4032) i!1445 k!2947) (size!45626 a!4032)))))

(declare-fun res!918703 () Bool)

(assert (=> start!116766 (=> (not res!918703) (not e!779296))))

(assert (=> start!116766 (= res!918703 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45626 a!4032))))))

(assert (=> start!116766 e!779296))

(assert (=> start!116766 true))

(declare-fun array_inv!34020 (array!93353) Bool)

(assert (=> start!116766 (array_inv!34020 a!4032)))

(declare-fun b!1375581 () Bool)

(assert (=> b!1375581 (= e!779297 false)))

(declare-fun lt!604586 () (_ BitVec 32))

(assert (=> b!1375581 (= lt!604586 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun lt!604591 () (_ BitVec 32))

(assert (=> b!1375581 (= lt!604591 (arrayCountValidKeys!0 lt!604583 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun bm!65721 () Bool)

(assert (=> bm!65721 (= call!65724 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375582 () Bool)

(declare-fun res!918700 () Bool)

(assert (=> b!1375582 (=> (not res!918700) (not e!779296))))

(assert (=> b!1375582 (= res!918700 (validKeyInArray!0 (select (arr!45075 a!4032) i!1445)))))

(assert (= (and start!116766 res!918703) b!1375582))

(assert (= (and b!1375582 res!918700) b!1375579))

(assert (= (and b!1375579 res!918702) b!1375575))

(assert (= (and b!1375575 res!918701) b!1375580))

(assert (= (and b!1375580 res!918704) b!1375578))

(assert (= (and b!1375578 c!127880) b!1375577))

(assert (= (and b!1375578 (not c!127880)) b!1375576))

(assert (= (or b!1375577 b!1375576) bm!65721))

(assert (= (or b!1375577 b!1375576) bm!65720))

(assert (= (and b!1375578 res!918705) b!1375581))

(declare-fun m!1259519 () Bool)

(assert (=> bm!65720 m!1259519))

(declare-fun m!1259521 () Bool)

(assert (=> start!116766 m!1259521))

(declare-fun m!1259523 () Bool)

(assert (=> b!1375580 m!1259523))

(declare-fun m!1259525 () Bool)

(assert (=> b!1375580 m!1259525))

(declare-fun m!1259527 () Bool)

(assert (=> b!1375580 m!1259527))

(declare-fun m!1259529 () Bool)

(assert (=> b!1375581 m!1259529))

(assert (=> b!1375581 m!1259519))

(declare-fun m!1259531 () Bool)

(assert (=> b!1375578 m!1259531))

(assert (=> b!1375578 m!1259531))

(declare-fun m!1259533 () Bool)

(assert (=> b!1375578 m!1259533))

(assert (=> bm!65721 m!1259529))

(declare-fun m!1259535 () Bool)

(assert (=> b!1375579 m!1259535))

(declare-fun m!1259537 () Bool)

(assert (=> b!1375576 m!1259537))

(declare-fun m!1259539 () Bool)

(assert (=> b!1375576 m!1259539))

(declare-fun m!1259541 () Bool)

(assert (=> b!1375577 m!1259541))

(declare-fun m!1259543 () Bool)

(assert (=> b!1375577 m!1259543))

(declare-fun m!1259545 () Bool)

(assert (=> b!1375582 m!1259545))

(assert (=> b!1375582 m!1259545))

(declare-fun m!1259547 () Bool)

(assert (=> b!1375582 m!1259547))

(push 1)

(assert (not start!116766))

(assert (not bm!65721))

(assert (not b!1375579))

(assert (not b!1375576))

(assert (not b!1375578))

