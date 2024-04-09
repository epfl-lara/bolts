; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116786 () Bool)

(assert start!116786)

(declare-fun to!206 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93373 0))(
  ( (array!93374 (arr!45085 (Array (_ BitVec 32) (_ BitVec 64))) (size!45636 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93373)

(declare-fun bm!65780 () Bool)

(declare-fun call!65784 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93373 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!65780 (= call!65784 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375817 () Bool)

(declare-datatypes ((Unit!45533 0))(
  ( (Unit!45534) )
))
(declare-fun e!779446 () Unit!45533)

(declare-fun lt!604880 () Unit!45533)

(assert (=> b!1375817 (= e!779446 lt!604880)))

(declare-fun lt!604886 () Unit!45533)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93373 (_ BitVec 32) (_ BitVec 32)) Unit!45533)

(assert (=> b!1375817 (= lt!604886 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!604884 () (_ BitVec 32))

(assert (=> b!1375817 (= call!65784 (bvadd #b00000000000000000000000000000001 lt!604884))))

(declare-fun lt!604882 () array!93373)

(assert (=> b!1375817 (= lt!604880 (lemmaValidKeyIncreasesNumOfKeys!0 lt!604882 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65783 () (_ BitVec 32))

(declare-fun lt!604888 () (_ BitVec 32))

(assert (=> b!1375817 (= call!65783 (bvadd #b00000000000000000000000000000001 lt!604888))))

(declare-fun b!1375818 () Bool)

(declare-fun res!918884 () Bool)

(declare-fun e!779444 () Bool)

(assert (=> b!1375818 (=> (not res!918884) (not e!779444))))

(declare-fun k!2947 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375818 (= res!918884 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1375820 () Bool)

(declare-fun res!918888 () Bool)

(assert (=> b!1375820 (=> (not res!918888) (not e!779444))))

(assert (=> b!1375820 (= res!918888 (and (bvslt (size!45636 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45636 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun bm!65781 () Bool)

(assert (=> bm!65781 (= call!65783 (arrayCountValidKeys!0 lt!604882 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375821 () Bool)

(declare-fun lt!604887 () Unit!45533)

(assert (=> b!1375821 (= e!779446 lt!604887)))

(declare-fun lt!604881 () Unit!45533)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93373 (_ BitVec 32) (_ BitVec 32)) Unit!45533)

(assert (=> b!1375821 (= lt!604881 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375821 (= call!65784 lt!604884)))

(assert (=> b!1375821 (= lt!604887 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!604882 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375821 (= call!65783 lt!604888)))

(declare-fun b!1375822 () Bool)

(declare-fun res!918886 () Bool)

(declare-fun e!779443 () Bool)

(assert (=> b!1375822 (=> (not res!918886) (not e!779443))))

(assert (=> b!1375822 (= res!918886 (= (arrayCountValidKeys!0 lt!604882 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206))))))

(declare-fun b!1375823 () Bool)

(assert (=> b!1375823 (= e!779443 (not (bvsge (bvadd #b00000000000000000000000000000001 i!1445) #b00000000000000000000000000000000)))))

(assert (=> b!1375823 (= (arrayCountValidKeys!0 lt!604882 (bvadd #b00000000000000000000000000000001 i!1445) (size!45636 a!4032)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (size!45636 a!4032)))))

(declare-fun lt!604883 () Unit!45533)

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93373 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45533)

(assert (=> b!1375823 (= lt!604883 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4032 i!1445 k!2947 (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun res!918883 () Bool)

(assert (=> start!116786 (=> (not res!918883) (not e!779444))))

(assert (=> start!116786 (= res!918883 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45636 a!4032))))))

(assert (=> start!116786 e!779444))

(assert (=> start!116786 true))

(declare-fun array_inv!34030 (array!93373) Bool)

(assert (=> start!116786 (array_inv!34030 a!4032)))

(declare-fun b!1375819 () Bool)

(declare-fun e!779445 () Bool)

(assert (=> b!1375819 (= e!779444 e!779445)))

(declare-fun res!918885 () Bool)

(assert (=> b!1375819 (=> (not res!918885) (not e!779445))))

(assert (=> b!1375819 (= res!918885 (and (= lt!604888 lt!604884) (not (= to!206 (size!45636 a!4032)))))))

(assert (=> b!1375819 (= lt!604884 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375819 (= lt!604888 (arrayCountValidKeys!0 lt!604882 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375819 (= lt!604882 (array!93374 (store (arr!45085 a!4032) i!1445 k!2947) (size!45636 a!4032)))))

(declare-fun b!1375824 () Bool)

(declare-fun res!918887 () Bool)

(assert (=> b!1375824 (=> (not res!918887) (not e!779444))))

(assert (=> b!1375824 (= res!918887 (validKeyInArray!0 (select (arr!45085 a!4032) i!1445)))))

(declare-fun b!1375825 () Bool)

(assert (=> b!1375825 (= e!779445 e!779443)))

(declare-fun res!918882 () Bool)

(assert (=> b!1375825 (=> (not res!918882) (not e!779443))))

(assert (=> b!1375825 (= res!918882 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45636 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-fun lt!604885 () Unit!45533)

(assert (=> b!1375825 (= lt!604885 e!779446)))

(declare-fun c!127910 () Bool)

(assert (=> b!1375825 (= c!127910 (validKeyInArray!0 (select (arr!45085 a!4032) to!206)))))

(assert (= (and start!116786 res!918883) b!1375824))

(assert (= (and b!1375824 res!918887) b!1375818))

(assert (= (and b!1375818 res!918884) b!1375820))

(assert (= (and b!1375820 res!918888) b!1375819))

(assert (= (and b!1375819 res!918885) b!1375825))

(assert (= (and b!1375825 c!127910) b!1375817))

(assert (= (and b!1375825 (not c!127910)) b!1375821))

(assert (= (or b!1375817 b!1375821) bm!65780))

(assert (= (or b!1375817 b!1375821) bm!65781))

(assert (= (and b!1375825 res!918882) b!1375822))

(assert (= (and b!1375822 res!918886) b!1375823))

(declare-fun m!1259819 () Bool)

(assert (=> b!1375823 m!1259819))

(declare-fun m!1259821 () Bool)

(assert (=> b!1375823 m!1259821))

(declare-fun m!1259823 () Bool)

(assert (=> b!1375823 m!1259823))

(declare-fun m!1259825 () Bool)

(assert (=> start!116786 m!1259825))

(declare-fun m!1259827 () Bool)

(assert (=> bm!65780 m!1259827))

(declare-fun m!1259829 () Bool)

(assert (=> bm!65781 m!1259829))

(declare-fun m!1259831 () Bool)

(assert (=> b!1375821 m!1259831))

(declare-fun m!1259833 () Bool)

(assert (=> b!1375821 m!1259833))

(declare-fun m!1259835 () Bool)

(assert (=> b!1375825 m!1259835))

(assert (=> b!1375825 m!1259835))

(declare-fun m!1259837 () Bool)

(assert (=> b!1375825 m!1259837))

(declare-fun m!1259839 () Bool)

(assert (=> b!1375824 m!1259839))

(assert (=> b!1375824 m!1259839))

(declare-fun m!1259841 () Bool)

(assert (=> b!1375824 m!1259841))

(declare-fun m!1259843 () Bool)

(assert (=> b!1375819 m!1259843))

(declare-fun m!1259845 () Bool)

(assert (=> b!1375819 m!1259845))

(declare-fun m!1259847 () Bool)

(assert (=> b!1375819 m!1259847))

(declare-fun m!1259849 () Bool)

(assert (=> b!1375818 m!1259849))

(assert (=> b!1375822 m!1259829))

(assert (=> b!1375822 m!1259827))

(declare-fun m!1259851 () Bool)

(assert (=> b!1375817 m!1259851))

(declare-fun m!1259853 () Bool)

(assert (=> b!1375817 m!1259853))

(push 1)

