; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116790 () Bool)

(assert start!116790)

(declare-fun b!1375871 () Bool)

(declare-fun res!918924 () Bool)

(declare-fun e!779473 () Bool)

(assert (=> b!1375871 (=> (not res!918924) (not e!779473))))

(declare-fun k!2947 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375871 (= res!918924 (not (validKeyInArray!0 k!2947)))))

(declare-fun bm!65792 () Bool)

(declare-fun to!206 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93377 0))(
  ( (array!93378 (arr!45087 (Array (_ BitVec 32) (_ BitVec 64))) (size!45638 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93377)

(declare-fun call!65796 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93377 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!65792 (= call!65796 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun bm!65793 () Bool)

(declare-fun call!65795 () (_ BitVec 32))

(declare-fun lt!604940 () array!93377)

(assert (=> bm!65793 (= call!65795 (arrayCountValidKeys!0 lt!604940 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375872 () Bool)

(declare-fun e!779477 () Bool)

(declare-fun e!779474 () Bool)

(assert (=> b!1375872 (= e!779477 e!779474)))

(declare-fun res!918929 () Bool)

(assert (=> b!1375872 (=> (not res!918929) (not e!779474))))

(assert (=> b!1375872 (= res!918929 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45638 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-datatypes ((Unit!45537 0))(
  ( (Unit!45538) )
))
(declare-fun lt!604934 () Unit!45537)

(declare-fun e!779476 () Unit!45537)

(assert (=> b!1375872 (= lt!604934 e!779476)))

(declare-fun c!127916 () Bool)

(assert (=> b!1375872 (= c!127916 (validKeyInArray!0 (select (arr!45087 a!4032) to!206)))))

(declare-fun b!1375873 () Bool)

(declare-fun lt!604936 () Unit!45537)

(assert (=> b!1375873 (= e!779476 lt!604936)))

(declare-fun lt!604941 () Unit!45537)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93377 (_ BitVec 32) (_ BitVec 32)) Unit!45537)

(assert (=> b!1375873 (= lt!604941 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!604935 () (_ BitVec 32))

(assert (=> b!1375873 (= call!65796 lt!604935)))

(assert (=> b!1375873 (= lt!604936 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!604940 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!604938 () (_ BitVec 32))

(assert (=> b!1375873 (= call!65795 lt!604938)))

(declare-fun b!1375874 () Bool)

(declare-fun res!918930 () Bool)

(assert (=> b!1375874 (=> (not res!918930) (not e!779474))))

(assert (=> b!1375874 (= res!918930 (= (arrayCountValidKeys!0 lt!604940 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206))))))

(declare-fun res!918926 () Bool)

(assert (=> start!116790 (=> (not res!918926) (not e!779473))))

(assert (=> start!116790 (= res!918926 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45638 a!4032))))))

(assert (=> start!116790 e!779473))

(assert (=> start!116790 true))

(declare-fun array_inv!34032 (array!93377) Bool)

(assert (=> start!116790 (array_inv!34032 a!4032)))

(declare-fun b!1375875 () Bool)

(declare-fun res!918927 () Bool)

(assert (=> b!1375875 (=> (not res!918927) (not e!779473))))

(assert (=> b!1375875 (= res!918927 (validKeyInArray!0 (select (arr!45087 a!4032) i!1445)))))

(declare-fun b!1375876 () Bool)

(assert (=> b!1375876 (= e!779473 e!779477)))

(declare-fun res!918925 () Bool)

(assert (=> b!1375876 (=> (not res!918925) (not e!779477))))

(assert (=> b!1375876 (= res!918925 (and (= lt!604938 lt!604935) (not (= to!206 (size!45638 a!4032)))))))

(assert (=> b!1375876 (= lt!604935 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375876 (= lt!604938 (arrayCountValidKeys!0 lt!604940 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375876 (= lt!604940 (array!93378 (store (arr!45087 a!4032) i!1445 k!2947) (size!45638 a!4032)))))

(declare-fun b!1375877 () Bool)

(declare-fun res!918928 () Bool)

(assert (=> b!1375877 (=> (not res!918928) (not e!779473))))

(assert (=> b!1375877 (= res!918928 (and (bvslt (size!45638 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45638 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1375878 () Bool)

(assert (=> b!1375878 (= e!779474 (not (bvsge (bvadd #b00000000000000000000000000000001 i!1445) #b00000000000000000000000000000000)))))

(assert (=> b!1375878 (= (arrayCountValidKeys!0 lt!604940 (bvadd #b00000000000000000000000000000001 i!1445) (size!45638 a!4032)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (size!45638 a!4032)))))

(declare-fun lt!604939 () Unit!45537)

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93377 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45537)

(assert (=> b!1375878 (= lt!604939 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4032 i!1445 k!2947 (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375879 () Bool)

(declare-fun lt!604942 () Unit!45537)

(assert (=> b!1375879 (= e!779476 lt!604942)))

(declare-fun lt!604937 () Unit!45537)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93377 (_ BitVec 32) (_ BitVec 32)) Unit!45537)

(assert (=> b!1375879 (= lt!604937 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375879 (= call!65796 (bvadd #b00000000000000000000000000000001 lt!604935))))

(assert (=> b!1375879 (= lt!604942 (lemmaValidKeyIncreasesNumOfKeys!0 lt!604940 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375879 (= call!65795 (bvadd #b00000000000000000000000000000001 lt!604938))))

(assert (= (and start!116790 res!918926) b!1375875))

(assert (= (and b!1375875 res!918927) b!1375871))

(assert (= (and b!1375871 res!918924) b!1375877))

(assert (= (and b!1375877 res!918928) b!1375876))

(assert (= (and b!1375876 res!918925) b!1375872))

(assert (= (and b!1375872 c!127916) b!1375879))

(assert (= (and b!1375872 (not c!127916)) b!1375873))

(assert (= (or b!1375879 b!1375873) bm!65793))

(assert (= (or b!1375879 b!1375873) bm!65792))

(assert (= (and b!1375872 res!918929) b!1375874))

(assert (= (and b!1375874 res!918930) b!1375878))

(declare-fun m!1259891 () Bool)

(assert (=> b!1375878 m!1259891))

(declare-fun m!1259893 () Bool)

(assert (=> b!1375878 m!1259893))

(declare-fun m!1259895 () Bool)

(assert (=> b!1375878 m!1259895))

(declare-fun m!1259897 () Bool)

(assert (=> bm!65792 m!1259897))

(declare-fun m!1259899 () Bool)

(assert (=> start!116790 m!1259899))

(declare-fun m!1259901 () Bool)

(assert (=> b!1375876 m!1259901))

(declare-fun m!1259903 () Bool)

(assert (=> b!1375876 m!1259903))

(declare-fun m!1259905 () Bool)

(assert (=> b!1375876 m!1259905))

(declare-fun m!1259907 () Bool)

(assert (=> bm!65793 m!1259907))

(declare-fun m!1259909 () Bool)

(assert (=> b!1375872 m!1259909))

(assert (=> b!1375872 m!1259909))

(declare-fun m!1259911 () Bool)

(assert (=> b!1375872 m!1259911))

(declare-fun m!1259913 () Bool)

(assert (=> b!1375875 m!1259913))

(assert (=> b!1375875 m!1259913))

(declare-fun m!1259915 () Bool)

(assert (=> b!1375875 m!1259915))

(assert (=> b!1375874 m!1259907))

(assert (=> b!1375874 m!1259897))

(declare-fun m!1259917 () Bool)

(assert (=> b!1375873 m!1259917))

(declare-fun m!1259919 () Bool)

(assert (=> b!1375873 m!1259919))

(declare-fun m!1259921 () Bool)

(assert (=> b!1375879 m!1259921))

(declare-fun m!1259923 () Bool)

(assert (=> b!1375879 m!1259923))

(declare-fun m!1259925 () Bool)

(assert (=> b!1375871 m!1259925))

(push 1)

(assert (not b!1375873))

(assert (not b!1375874))

(assert (not b!1375871))

