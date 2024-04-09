; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116770 () Bool)

(assert start!116770)

(declare-fun b!1375623 () Bool)

(declare-fun res!918736 () Bool)

(declare-fun e!779326 () Bool)

(assert (=> b!1375623 (=> (not res!918736) (not e!779326))))

(declare-fun k0!2947 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375623 (= res!918736 (not (validKeyInArray!0 k0!2947)))))

(declare-fun b!1375624 () Bool)

(declare-fun e!779325 () Bool)

(assert (=> b!1375624 (= e!779326 e!779325)))

(declare-fun res!918738 () Bool)

(assert (=> b!1375624 (=> (not res!918738) (not e!779325))))

(declare-fun lt!604648 () (_ BitVec 32))

(declare-fun to!206 () (_ BitVec 32))

(declare-datatypes ((array!93357 0))(
  ( (array!93358 (arr!45077 (Array (_ BitVec 32) (_ BitVec 64))) (size!45628 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93357)

(declare-fun lt!604647 () (_ BitVec 32))

(assert (=> b!1375624 (= res!918738 (and (= lt!604647 lt!604648) (not (= to!206 (size!45628 a!4032)))))))

(declare-fun i!1445 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93357 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1375624 (= lt!604648 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!604645 () array!93357)

(assert (=> b!1375624 (= lt!604647 (arrayCountValidKeys!0 lt!604645 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375624 (= lt!604645 (array!93358 (store (arr!45077 a!4032) i!1445 k0!2947) (size!45628 a!4032)))))

(declare-fun b!1375625 () Bool)

(declare-fun res!918737 () Bool)

(assert (=> b!1375625 (=> (not res!918737) (not e!779326))))

(assert (=> b!1375625 (= res!918737 (validKeyInArray!0 (select (arr!45077 a!4032) i!1445)))))

(declare-fun b!1375626 () Bool)

(declare-fun e!779324 () Bool)

(assert (=> b!1375626 (= e!779324 false)))

(declare-fun lt!604646 () (_ BitVec 32))

(assert (=> b!1375626 (= lt!604646 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun lt!604651 () (_ BitVec 32))

(assert (=> b!1375626 (= lt!604651 (arrayCountValidKeys!0 lt!604645 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun res!918741 () Bool)

(assert (=> start!116770 (=> (not res!918741) (not e!779326))))

(assert (=> start!116770 (= res!918741 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45628 a!4032))))))

(assert (=> start!116770 e!779326))

(assert (=> start!116770 true))

(declare-fun array_inv!34022 (array!93357) Bool)

(assert (=> start!116770 (array_inv!34022 a!4032)))

(declare-fun b!1375627 () Bool)

(declare-datatypes ((Unit!45517 0))(
  ( (Unit!45518) )
))
(declare-fun e!779327 () Unit!45517)

(declare-fun lt!604649 () Unit!45517)

(assert (=> b!1375627 (= e!779327 lt!604649)))

(declare-fun lt!604650 () Unit!45517)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93357 (_ BitVec 32) (_ BitVec 32)) Unit!45517)

(assert (=> b!1375627 (= lt!604650 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65735 () (_ BitVec 32))

(assert (=> b!1375627 (= call!65735 (bvadd #b00000000000000000000000000000001 lt!604648))))

(assert (=> b!1375627 (= lt!604649 (lemmaValidKeyIncreasesNumOfKeys!0 lt!604645 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65736 () (_ BitVec 32))

(assert (=> b!1375627 (= call!65736 (bvadd #b00000000000000000000000000000001 lt!604647))))

(declare-fun b!1375628 () Bool)

(assert (=> b!1375628 (= e!779325 e!779324)))

(declare-fun res!918740 () Bool)

(assert (=> b!1375628 (=> (not res!918740) (not e!779324))))

(assert (=> b!1375628 (= res!918740 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45628 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-fun lt!604642 () Unit!45517)

(assert (=> b!1375628 (= lt!604642 e!779327)))

(declare-fun c!127886 () Bool)

(assert (=> b!1375628 (= c!127886 (validKeyInArray!0 (select (arr!45077 a!4032) to!206)))))

(declare-fun b!1375629 () Bool)

(declare-fun res!918739 () Bool)

(assert (=> b!1375629 (=> (not res!918739) (not e!779326))))

(assert (=> b!1375629 (= res!918739 (and (bvslt (size!45628 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45628 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1375630 () Bool)

(declare-fun lt!604643 () Unit!45517)

(assert (=> b!1375630 (= e!779327 lt!604643)))

(declare-fun lt!604644 () Unit!45517)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93357 (_ BitVec 32) (_ BitVec 32)) Unit!45517)

(assert (=> b!1375630 (= lt!604644 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375630 (= call!65735 lt!604648)))

(assert (=> b!1375630 (= lt!604643 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!604645 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375630 (= call!65736 lt!604647)))

(declare-fun bm!65732 () Bool)

(assert (=> bm!65732 (= call!65735 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun bm!65733 () Bool)

(assert (=> bm!65733 (= call!65736 (arrayCountValidKeys!0 lt!604645 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(assert (= (and start!116770 res!918741) b!1375625))

(assert (= (and b!1375625 res!918737) b!1375623))

(assert (= (and b!1375623 res!918736) b!1375629))

(assert (= (and b!1375629 res!918739) b!1375624))

(assert (= (and b!1375624 res!918738) b!1375628))

(assert (= (and b!1375628 c!127886) b!1375627))

(assert (= (and b!1375628 (not c!127886)) b!1375630))

(assert (= (or b!1375627 b!1375630) bm!65732))

(assert (= (or b!1375627 b!1375630) bm!65733))

(assert (= (and b!1375628 res!918740) b!1375626))

(declare-fun m!1259579 () Bool)

(assert (=> start!116770 m!1259579))

(declare-fun m!1259581 () Bool)

(assert (=> b!1375624 m!1259581))

(declare-fun m!1259583 () Bool)

(assert (=> b!1375624 m!1259583))

(declare-fun m!1259585 () Bool)

(assert (=> b!1375624 m!1259585))

(declare-fun m!1259587 () Bool)

(assert (=> b!1375626 m!1259587))

(declare-fun m!1259589 () Bool)

(assert (=> b!1375626 m!1259589))

(declare-fun m!1259591 () Bool)

(assert (=> b!1375628 m!1259591))

(assert (=> b!1375628 m!1259591))

(declare-fun m!1259593 () Bool)

(assert (=> b!1375628 m!1259593))

(declare-fun m!1259595 () Bool)

(assert (=> b!1375630 m!1259595))

(declare-fun m!1259597 () Bool)

(assert (=> b!1375630 m!1259597))

(declare-fun m!1259599 () Bool)

(assert (=> b!1375627 m!1259599))

(declare-fun m!1259601 () Bool)

(assert (=> b!1375627 m!1259601))

(declare-fun m!1259603 () Bool)

(assert (=> b!1375625 m!1259603))

(assert (=> b!1375625 m!1259603))

(declare-fun m!1259605 () Bool)

(assert (=> b!1375625 m!1259605))

(declare-fun m!1259607 () Bool)

(assert (=> b!1375623 m!1259607))

(assert (=> bm!65733 m!1259589))

(assert (=> bm!65732 m!1259587))

(check-sat (not b!1375626) (not bm!65733) (not start!116770) (not b!1375628) (not bm!65732) (not b!1375623) (not b!1375624) (not b!1375625) (not b!1375630) (not b!1375627))
(check-sat)
