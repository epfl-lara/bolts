; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116892 () Bool)

(assert start!116892)

(declare-fun res!919821 () Bool)

(declare-fun e!779951 () Bool)

(assert (=> start!116892 (=> (not res!919821) (not e!779951))))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93479 0))(
  ( (array!93480 (arr!45138 (Array (_ BitVec 32) (_ BitVec 64))) (size!45689 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93479)

(assert (=> start!116892 (= res!919821 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45689 a!4032))))))

(assert (=> start!116892 e!779951))

(assert (=> start!116892 true))

(declare-fun array_inv!34083 (array!93479) Bool)

(assert (=> start!116892 (array_inv!34083 a!4032)))

(declare-fun call!65886 () (_ BitVec 32))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun bm!65882 () Bool)

(declare-fun lt!605467 () array!93479)

(declare-fun arrayCountValidKeys!0 (array!93479 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!65882 (= call!65886 (arrayCountValidKeys!0 lt!605467 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1376854 () Bool)

(declare-fun res!919819 () Bool)

(assert (=> b!1376854 (=> (not res!919819) (not e!779951))))

(declare-fun k!2947 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376854 (= res!919819 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1376855 () Bool)

(declare-fun res!919820 () Bool)

(assert (=> b!1376855 (=> (not res!919820) (not e!779951))))

(assert (=> b!1376855 (= res!919820 (validKeyInArray!0 (select (arr!45138 a!4032) i!1445)))))

(declare-fun b!1376856 () Bool)

(declare-datatypes ((Unit!45591 0))(
  ( (Unit!45592) )
))
(declare-fun e!779954 () Unit!45591)

(declare-fun lt!605469 () Unit!45591)

(assert (=> b!1376856 (= e!779954 lt!605469)))

(declare-fun lt!605470 () Unit!45591)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93479 (_ BitVec 32) (_ BitVec 32)) Unit!45591)

(assert (=> b!1376856 (= lt!605470 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65885 () (_ BitVec 32))

(declare-fun lt!605473 () (_ BitVec 32))

(assert (=> b!1376856 (= call!65885 lt!605473)))

(assert (=> b!1376856 (= lt!605469 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!605467 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!605471 () (_ BitVec 32))

(assert (=> b!1376856 (= call!65886 lt!605471)))

(declare-fun b!1376857 () Bool)

(declare-fun e!779953 () Bool)

(assert (=> b!1376857 (= e!779953 false)))

(declare-fun lt!605472 () Unit!45591)

(assert (=> b!1376857 (= lt!605472 e!779954)))

(declare-fun c!127961 () Bool)

(assert (=> b!1376857 (= c!127961 (validKeyInArray!0 (select (arr!45138 a!4032) to!206)))))

(declare-fun b!1376858 () Bool)

(assert (=> b!1376858 (= e!779951 e!779953)))

(declare-fun res!919818 () Bool)

(assert (=> b!1376858 (=> (not res!919818) (not e!779953))))

(assert (=> b!1376858 (= res!919818 (and (= lt!605471 lt!605473) (not (= to!206 (size!45689 a!4032)))))))

(assert (=> b!1376858 (= lt!605473 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376858 (= lt!605471 (arrayCountValidKeys!0 lt!605467 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376858 (= lt!605467 (array!93480 (store (arr!45138 a!4032) i!1445 k!2947) (size!45689 a!4032)))))

(declare-fun b!1376859 () Bool)

(declare-fun res!919817 () Bool)

(assert (=> b!1376859 (=> (not res!919817) (not e!779951))))

(assert (=> b!1376859 (= res!919817 (and (bvslt (size!45689 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45689 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun bm!65883 () Bool)

(assert (=> bm!65883 (= call!65885 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1376860 () Bool)

(declare-fun lt!605466 () Unit!45591)

(assert (=> b!1376860 (= e!779954 lt!605466)))

(declare-fun lt!605468 () Unit!45591)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93479 (_ BitVec 32) (_ BitVec 32)) Unit!45591)

(assert (=> b!1376860 (= lt!605468 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376860 (= call!65885 (bvadd #b00000000000000000000000000000001 lt!605473))))

(assert (=> b!1376860 (= lt!605466 (lemmaValidKeyIncreasesNumOfKeys!0 lt!605467 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376860 (= call!65886 (bvadd #b00000000000000000000000000000001 lt!605471))))

(assert (= (and start!116892 res!919821) b!1376855))

(assert (= (and b!1376855 res!919820) b!1376854))

(assert (= (and b!1376854 res!919819) b!1376859))

(assert (= (and b!1376859 res!919817) b!1376858))

(assert (= (and b!1376858 res!919818) b!1376857))

(assert (= (and b!1376857 c!127961) b!1376860))

(assert (= (and b!1376857 (not c!127961)) b!1376856))

(assert (= (or b!1376860 b!1376856) bm!65883))

(assert (= (or b!1376860 b!1376856) bm!65882))

(declare-fun m!1261049 () Bool)

(assert (=> b!1376855 m!1261049))

(assert (=> b!1376855 m!1261049))

(declare-fun m!1261051 () Bool)

(assert (=> b!1376855 m!1261051))

(declare-fun m!1261053 () Bool)

(assert (=> b!1376858 m!1261053))

(declare-fun m!1261055 () Bool)

(assert (=> b!1376858 m!1261055))

(declare-fun m!1261057 () Bool)

(assert (=> b!1376858 m!1261057))

(declare-fun m!1261059 () Bool)

(assert (=> b!1376857 m!1261059))

(assert (=> b!1376857 m!1261059))

(declare-fun m!1261061 () Bool)

(assert (=> b!1376857 m!1261061))

(declare-fun m!1261063 () Bool)

(assert (=> bm!65883 m!1261063))

(declare-fun m!1261065 () Bool)

(assert (=> b!1376856 m!1261065))

(declare-fun m!1261067 () Bool)

(assert (=> b!1376856 m!1261067))

(declare-fun m!1261069 () Bool)

(assert (=> b!1376860 m!1261069))

(declare-fun m!1261071 () Bool)

(assert (=> b!1376860 m!1261071))

(declare-fun m!1261073 () Bool)

(assert (=> b!1376854 m!1261073))

(declare-fun m!1261075 () Bool)

(assert (=> bm!65882 m!1261075))

(declare-fun m!1261077 () Bool)

(assert (=> start!116892 m!1261077))

(push 1)

(assert (not b!1376855))

(assert (not b!1376854))

(assert (not b!1376858))

(assert (not bm!65883))

(assert (not b!1376857))

