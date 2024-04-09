; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116886 () Bool)

(assert start!116886)

(declare-fun to!206 () (_ BitVec 32))

(declare-datatypes ((array!93473 0))(
  ( (array!93474 (arr!45135 (Array (_ BitVec 32) (_ BitVec 64))) (size!45686 (_ BitVec 32))) )
))
(declare-fun lt!605399 () array!93473)

(declare-fun i!1445 () (_ BitVec 32))

(declare-fun call!65868 () (_ BitVec 32))

(declare-fun bm!65864 () Bool)

(declare-fun arrayCountValidKeys!0 (array!93473 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!65864 (= call!65868 (arrayCountValidKeys!0 lt!605399 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1376791 () Bool)

(declare-fun e!779917 () Bool)

(declare-fun e!779916 () Bool)

(assert (=> b!1376791 (= e!779917 e!779916)))

(declare-fun res!919775 () Bool)

(assert (=> b!1376791 (=> (not res!919775) (not e!779916))))

(declare-fun lt!605394 () (_ BitVec 32))

(declare-fun lt!605395 () (_ BitVec 32))

(declare-fun a!4032 () array!93473)

(assert (=> b!1376791 (= res!919775 (and (= lt!605395 lt!605394) (not (= to!206 (size!45686 a!4032)))))))

(assert (=> b!1376791 (= lt!605394 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376791 (= lt!605395 (arrayCountValidKeys!0 lt!605399 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1376791 (= lt!605399 (array!93474 (store (arr!45135 a!4032) i!1445 k!2947) (size!45686 a!4032)))))

(declare-fun bm!65865 () Bool)

(declare-fun call!65867 () (_ BitVec 32))

(assert (=> bm!65865 (= call!65867 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun res!919772 () Bool)

(assert (=> start!116886 (=> (not res!919772) (not e!779917))))

(assert (=> start!116886 (= res!919772 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45686 a!4032))))))

(assert (=> start!116886 e!779917))

(assert (=> start!116886 true))

(declare-fun array_inv!34080 (array!93473) Bool)

(assert (=> start!116886 (array_inv!34080 a!4032)))

(declare-fun b!1376792 () Bool)

(declare-fun res!919776 () Bool)

(assert (=> b!1376792 (=> (not res!919776) (not e!779917))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376792 (= res!919776 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1376793 () Bool)

(declare-datatypes ((Unit!45585 0))(
  ( (Unit!45586) )
))
(declare-fun e!779918 () Unit!45585)

(declare-fun lt!605396 () Unit!45585)

(assert (=> b!1376793 (= e!779918 lt!605396)))

(declare-fun lt!605401 () Unit!45585)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93473 (_ BitVec 32) (_ BitVec 32)) Unit!45585)

(assert (=> b!1376793 (= lt!605401 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376793 (= call!65867 lt!605394)))

(assert (=> b!1376793 (= lt!605396 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!605399 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376793 (= call!65868 lt!605395)))

(declare-fun b!1376794 () Bool)

(assert (=> b!1376794 (= e!779916 false)))

(declare-fun lt!605400 () Unit!45585)

(assert (=> b!1376794 (= lt!605400 e!779918)))

(declare-fun c!127952 () Bool)

(assert (=> b!1376794 (= c!127952 (validKeyInArray!0 (select (arr!45135 a!4032) to!206)))))

(declare-fun b!1376795 () Bool)

(declare-fun lt!605398 () Unit!45585)

(assert (=> b!1376795 (= e!779918 lt!605398)))

(declare-fun lt!605397 () Unit!45585)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93473 (_ BitVec 32) (_ BitVec 32)) Unit!45585)

(assert (=> b!1376795 (= lt!605397 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376795 (= call!65867 (bvadd #b00000000000000000000000000000001 lt!605394))))

(assert (=> b!1376795 (= lt!605398 (lemmaValidKeyIncreasesNumOfKeys!0 lt!605399 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376795 (= call!65868 (bvadd #b00000000000000000000000000000001 lt!605395))))

(declare-fun b!1376796 () Bool)

(declare-fun res!919774 () Bool)

(assert (=> b!1376796 (=> (not res!919774) (not e!779917))))

(assert (=> b!1376796 (= res!919774 (and (bvslt (size!45686 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45686 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376797 () Bool)

(declare-fun res!919773 () Bool)

(assert (=> b!1376797 (=> (not res!919773) (not e!779917))))

(assert (=> b!1376797 (= res!919773 (validKeyInArray!0 (select (arr!45135 a!4032) i!1445)))))

(assert (= (and start!116886 res!919772) b!1376797))

(assert (= (and b!1376797 res!919773) b!1376792))

(assert (= (and b!1376792 res!919776) b!1376796))

(assert (= (and b!1376796 res!919774) b!1376791))

(assert (= (and b!1376791 res!919775) b!1376794))

(assert (= (and b!1376794 c!127952) b!1376795))

(assert (= (and b!1376794 (not c!127952)) b!1376793))

(assert (= (or b!1376795 b!1376793) bm!65864))

(assert (= (or b!1376795 b!1376793) bm!65865))

(declare-fun m!1260959 () Bool)

(assert (=> start!116886 m!1260959))

(declare-fun m!1260961 () Bool)

(assert (=> b!1376791 m!1260961))

(declare-fun m!1260963 () Bool)

(assert (=> b!1376791 m!1260963))

(declare-fun m!1260965 () Bool)

(assert (=> b!1376791 m!1260965))

(declare-fun m!1260967 () Bool)

(assert (=> b!1376794 m!1260967))

(assert (=> b!1376794 m!1260967))

(declare-fun m!1260969 () Bool)

(assert (=> b!1376794 m!1260969))

(declare-fun m!1260971 () Bool)

(assert (=> b!1376793 m!1260971))

(declare-fun m!1260973 () Bool)

(assert (=> b!1376793 m!1260973))

(declare-fun m!1260975 () Bool)

(assert (=> b!1376797 m!1260975))

(assert (=> b!1376797 m!1260975))

(declare-fun m!1260977 () Bool)

(assert (=> b!1376797 m!1260977))

(declare-fun m!1260979 () Bool)

(assert (=> b!1376795 m!1260979))

(declare-fun m!1260981 () Bool)

(assert (=> b!1376795 m!1260981))

(declare-fun m!1260983 () Bool)

(assert (=> bm!65864 m!1260983))

(declare-fun m!1260985 () Bool)

(assert (=> bm!65865 m!1260985))

(declare-fun m!1260987 () Bool)

(assert (=> b!1376792 m!1260987))

(push 1)

(assert (not b!1376797))

(assert (not b!1376795))

(assert (not start!116886))

