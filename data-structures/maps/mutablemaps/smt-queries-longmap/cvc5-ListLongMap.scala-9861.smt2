; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116894 () Bool)

(assert start!116894)

(declare-fun b!1376875 () Bool)

(declare-datatypes ((Unit!45593 0))(
  ( (Unit!45594) )
))
(declare-fun e!779964 () Unit!45593)

(declare-fun lt!605493 () Unit!45593)

(assert (=> b!1376875 (= e!779964 lt!605493)))

(declare-fun lt!605497 () Unit!45593)

(declare-fun to!206 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93481 0))(
  ( (array!93482 (arr!45139 (Array (_ BitVec 32) (_ BitVec 64))) (size!45690 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93481)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93481 (_ BitVec 32) (_ BitVec 32)) Unit!45593)

(assert (=> b!1376875 (= lt!605497 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65891 () (_ BitVec 32))

(declare-fun lt!605494 () (_ BitVec 32))

(assert (=> b!1376875 (= call!65891 lt!605494)))

(declare-fun lt!605492 () array!93481)

(assert (=> b!1376875 (= lt!605493 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!605492 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65892 () (_ BitVec 32))

(declare-fun lt!605490 () (_ BitVec 32))

(assert (=> b!1376875 (= call!65892 lt!605490)))

(declare-fun b!1376876 () Bool)

(declare-fun lt!605495 () Unit!45593)

(assert (=> b!1376876 (= e!779964 lt!605495)))

(declare-fun lt!605491 () Unit!45593)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93481 (_ BitVec 32) (_ BitVec 32)) Unit!45593)

(assert (=> b!1376876 (= lt!605491 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376876 (= call!65891 (bvadd #b00000000000000000000000000000001 lt!605494))))

(assert (=> b!1376876 (= lt!605495 (lemmaValidKeyIncreasesNumOfKeys!0 lt!605492 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376876 (= call!65892 (bvadd #b00000000000000000000000000000001 lt!605490))))

(declare-fun bm!65888 () Bool)

(declare-fun arrayCountValidKeys!0 (array!93481 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!65888 (= call!65891 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1376877 () Bool)

(declare-fun res!919833 () Bool)

(declare-fun e!779966 () Bool)

(assert (=> b!1376877 (=> (not res!919833) (not e!779966))))

(declare-fun k!2947 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376877 (= res!919833 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1376878 () Bool)

(declare-fun res!919832 () Bool)

(assert (=> b!1376878 (=> (not res!919832) (not e!779966))))

(assert (=> b!1376878 (= res!919832 (and (bvslt (size!45690 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45690 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun res!919835 () Bool)

(assert (=> start!116894 (=> (not res!919835) (not e!779966))))

(assert (=> start!116894 (= res!919835 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45690 a!4032))))))

(assert (=> start!116894 e!779966))

(assert (=> start!116894 true))

(declare-fun array_inv!34084 (array!93481) Bool)

(assert (=> start!116894 (array_inv!34084 a!4032)))

(declare-fun b!1376879 () Bool)

(declare-fun res!919836 () Bool)

(assert (=> b!1376879 (=> (not res!919836) (not e!779966))))

(assert (=> b!1376879 (= res!919836 (validKeyInArray!0 (select (arr!45139 a!4032) i!1445)))))

(declare-fun b!1376880 () Bool)

(declare-fun e!779963 () Bool)

(assert (=> b!1376880 (= e!779963 false)))

(declare-fun lt!605496 () Unit!45593)

(assert (=> b!1376880 (= lt!605496 e!779964)))

(declare-fun c!127964 () Bool)

(assert (=> b!1376880 (= c!127964 (validKeyInArray!0 (select (arr!45139 a!4032) to!206)))))

(declare-fun b!1376881 () Bool)

(assert (=> b!1376881 (= e!779966 e!779963)))

(declare-fun res!919834 () Bool)

(assert (=> b!1376881 (=> (not res!919834) (not e!779963))))

(assert (=> b!1376881 (= res!919834 (and (= lt!605490 lt!605494) (not (= to!206 (size!45690 a!4032)))))))

(assert (=> b!1376881 (= lt!605494 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376881 (= lt!605490 (arrayCountValidKeys!0 lt!605492 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376881 (= lt!605492 (array!93482 (store (arr!45139 a!4032) i!1445 k!2947) (size!45690 a!4032)))))

(declare-fun bm!65889 () Bool)

(assert (=> bm!65889 (= call!65892 (arrayCountValidKeys!0 lt!605492 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(assert (= (and start!116894 res!919835) b!1376879))

(assert (= (and b!1376879 res!919836) b!1376877))

(assert (= (and b!1376877 res!919833) b!1376878))

(assert (= (and b!1376878 res!919832) b!1376881))

(assert (= (and b!1376881 res!919834) b!1376880))

(assert (= (and b!1376880 c!127964) b!1376876))

(assert (= (and b!1376880 (not c!127964)) b!1376875))

(assert (= (or b!1376876 b!1376875) bm!65889))

(assert (= (or b!1376876 b!1376875) bm!65888))

(declare-fun m!1261079 () Bool)

(assert (=> b!1376875 m!1261079))

(declare-fun m!1261081 () Bool)

(assert (=> b!1376875 m!1261081))

(declare-fun m!1261083 () Bool)

(assert (=> bm!65889 m!1261083))

(declare-fun m!1261085 () Bool)

(assert (=> b!1376879 m!1261085))

(assert (=> b!1376879 m!1261085))

(declare-fun m!1261087 () Bool)

(assert (=> b!1376879 m!1261087))

(declare-fun m!1261089 () Bool)

(assert (=> b!1376881 m!1261089))

(declare-fun m!1261091 () Bool)

(assert (=> b!1376881 m!1261091))

(declare-fun m!1261093 () Bool)

(assert (=> b!1376881 m!1261093))

(declare-fun m!1261095 () Bool)

(assert (=> start!116894 m!1261095))

(declare-fun m!1261097 () Bool)

(assert (=> bm!65888 m!1261097))

(declare-fun m!1261099 () Bool)

(assert (=> b!1376880 m!1261099))

(assert (=> b!1376880 m!1261099))

(declare-fun m!1261101 () Bool)

(assert (=> b!1376880 m!1261101))

(declare-fun m!1261103 () Bool)

(assert (=> b!1376877 m!1261103))

(declare-fun m!1261105 () Bool)

(assert (=> b!1376876 m!1261105))

(declare-fun m!1261107 () Bool)

(assert (=> b!1376876 m!1261107))

(push 1)

