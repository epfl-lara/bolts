; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134394 () Bool)

(assert start!134394)

(declare-fun b!1568872 () Bool)

(declare-datatypes ((B!2494 0))(
  ( (B!2495 (val!19609 Int)) )
))
(declare-fun v2!10 () B!2494)

(declare-datatypes ((tuple2!25484 0))(
  ( (tuple2!25485 (_1!12752 (_ BitVec 64)) (_2!12752 B!2494)) )
))
(declare-datatypes ((List!36890 0))(
  ( (Nil!36887) (Cons!36886 (h!38334 tuple2!25484) (t!51805 List!36890)) )
))
(declare-fun l!750 () List!36890)

(declare-fun key2!21 () (_ BitVec 64))

(declare-fun e!874604 () Bool)

(declare-fun isStrictlySorted!1000 (List!36890) Bool)

(declare-fun insertStrictlySorted!587 (List!36890 (_ BitVec 64) B!2494) List!36890)

(assert (=> b!1568872 (= e!874604 (not (isStrictlySorted!1000 (insertStrictlySorted!587 l!750 key2!21 v2!10))))))

(declare-fun v1!32 () B!2494)

(declare-fun key1!37 () (_ BitVec 64))

(assert (=> b!1568872 (= (insertStrictlySorted!587 (insertStrictlySorted!587 (t!51805 l!750) key1!37 v1!32) key2!21 v2!10) (insertStrictlySorted!587 (insertStrictlySorted!587 (t!51805 l!750) key2!21 v2!10) key1!37 v1!32))))

(declare-datatypes ((Unit!52032 0))(
  ( (Unit!52033) )
))
(declare-fun lt!673186 () Unit!52032)

(declare-fun lemmaInsertStrictlySortedCommutative!14 (List!36890 (_ BitVec 64) B!2494 (_ BitVec 64) B!2494) Unit!52032)

(assert (=> b!1568872 (= lt!673186 (lemmaInsertStrictlySortedCommutative!14 (t!51805 l!750) key1!37 v1!32 key2!21 v2!10))))

(declare-fun b!1568873 () Bool)

(declare-fun res!1072463 () Bool)

(assert (=> b!1568873 (=> (not res!1072463) (not e!874604))))

(get-info :version)

(assert (=> b!1568873 (= res!1072463 (and ((_ is Cons!36886) l!750) (bvslt (_1!12752 (h!38334 l!750)) key1!37) (bvslt (_1!12752 (h!38334 l!750)) key2!21)))))

(declare-fun b!1568874 () Bool)

(declare-fun e!874605 () Bool)

(declare-fun tp_is_empty!39045 () Bool)

(declare-fun tp!114079 () Bool)

(assert (=> b!1568874 (= e!874605 (and tp_is_empty!39045 tp!114079))))

(declare-fun res!1072465 () Bool)

(assert (=> start!134394 (=> (not res!1072465) (not e!874604))))

(assert (=> start!134394 (= res!1072465 (not (= key1!37 key2!21)))))

(assert (=> start!134394 e!874604))

(assert (=> start!134394 tp_is_empty!39045))

(assert (=> start!134394 e!874605))

(assert (=> start!134394 true))

(declare-fun b!1568875 () Bool)

(declare-fun res!1072464 () Bool)

(assert (=> b!1568875 (=> (not res!1072464) (not e!874604))))

(assert (=> b!1568875 (= res!1072464 (isStrictlySorted!1000 l!750))))

(declare-fun b!1568876 () Bool)

(declare-fun res!1072466 () Bool)

(assert (=> b!1568876 (=> (not res!1072466) (not e!874604))))

(assert (=> b!1568876 (= res!1072466 (isStrictlySorted!1000 (t!51805 l!750)))))

(assert (= (and start!134394 res!1072465) b!1568875))

(assert (= (and b!1568875 res!1072464) b!1568873))

(assert (= (and b!1568873 res!1072463) b!1568876))

(assert (= (and b!1568876 res!1072466) b!1568872))

(assert (= (and start!134394 ((_ is Cons!36886) l!750)) b!1568874))

(declare-fun m!1443451 () Bool)

(assert (=> b!1568872 m!1443451))

(declare-fun m!1443453 () Bool)

(assert (=> b!1568872 m!1443453))

(declare-fun m!1443455 () Bool)

(assert (=> b!1568872 m!1443455))

(assert (=> b!1568872 m!1443453))

(declare-fun m!1443457 () Bool)

(assert (=> b!1568872 m!1443457))

(declare-fun m!1443459 () Bool)

(assert (=> b!1568872 m!1443459))

(declare-fun m!1443461 () Bool)

(assert (=> b!1568872 m!1443461))

(assert (=> b!1568872 m!1443459))

(assert (=> b!1568872 m!1443451))

(declare-fun m!1443463 () Bool)

(assert (=> b!1568872 m!1443463))

(declare-fun m!1443465 () Bool)

(assert (=> b!1568875 m!1443465))

(declare-fun m!1443467 () Bool)

(assert (=> b!1568876 m!1443467))

(check-sat tp_is_empty!39045 (not b!1568876) (not b!1568874) (not b!1568872) (not b!1568875))
(check-sat)
(get-model)

(declare-fun d!163737 () Bool)

(declare-fun res!1072483 () Bool)

(declare-fun e!874616 () Bool)

(assert (=> d!163737 (=> res!1072483 e!874616)))

(assert (=> d!163737 (= res!1072483 (or ((_ is Nil!36887) (t!51805 l!750)) ((_ is Nil!36887) (t!51805 (t!51805 l!750)))))))

(assert (=> d!163737 (= (isStrictlySorted!1000 (t!51805 l!750)) e!874616)))

(declare-fun b!1568896 () Bool)

(declare-fun e!874617 () Bool)

(assert (=> b!1568896 (= e!874616 e!874617)))

(declare-fun res!1072484 () Bool)

(assert (=> b!1568896 (=> (not res!1072484) (not e!874617))))

(assert (=> b!1568896 (= res!1072484 (bvslt (_1!12752 (h!38334 (t!51805 l!750))) (_1!12752 (h!38334 (t!51805 (t!51805 l!750))))))))

(declare-fun b!1568897 () Bool)

(assert (=> b!1568897 (= e!874617 (isStrictlySorted!1000 (t!51805 (t!51805 l!750))))))

(assert (= (and d!163737 (not res!1072483)) b!1568896))

(assert (= (and b!1568896 res!1072484) b!1568897))

(declare-fun m!1443487 () Bool)

(assert (=> b!1568897 m!1443487))

(assert (=> b!1568876 d!163737))

(declare-fun d!163739 () Bool)

(assert (=> d!163739 (= (insertStrictlySorted!587 (insertStrictlySorted!587 (t!51805 l!750) key1!37 v1!32) key2!21 v2!10) (insertStrictlySorted!587 (insertStrictlySorted!587 (t!51805 l!750) key2!21 v2!10) key1!37 v1!32))))

(declare-fun lt!673192 () Unit!52032)

(declare-fun choose!2087 (List!36890 (_ BitVec 64) B!2494 (_ BitVec 64) B!2494) Unit!52032)

(assert (=> d!163739 (= lt!673192 (choose!2087 (t!51805 l!750) key1!37 v1!32 key2!21 v2!10))))

(assert (=> d!163739 (not (= key1!37 key2!21))))

(assert (=> d!163739 (= (lemmaInsertStrictlySortedCommutative!14 (t!51805 l!750) key1!37 v1!32 key2!21 v2!10) lt!673192)))

(declare-fun bs!45185 () Bool)

(assert (= bs!45185 d!163739))

(declare-fun m!1443491 () Bool)

(assert (=> bs!45185 m!1443491))

(assert (=> bs!45185 m!1443451))

(assert (=> bs!45185 m!1443463))

(assert (=> bs!45185 m!1443453))

(assert (=> bs!45185 m!1443451))

(assert (=> bs!45185 m!1443453))

(assert (=> bs!45185 m!1443455))

(assert (=> b!1568872 d!163739))

(declare-fun b!1568946 () Bool)

(declare-fun e!874654 () List!36890)

(declare-fun call!72014 () List!36890)

(assert (=> b!1568946 (= e!874654 call!72014)))

(declare-fun bm!72009 () Bool)

(declare-fun call!72013 () List!36890)

(assert (=> bm!72009 (= call!72014 call!72013)))

(declare-fun b!1568947 () Bool)

(assert (=> b!1568947 (= e!874654 call!72014)))

(declare-fun c!144568 () Bool)

(declare-fun call!72012 () List!36890)

(declare-fun e!874653 () List!36890)

(declare-fun bm!72010 () Bool)

(declare-fun $colon$colon!993 (List!36890 tuple2!25484) List!36890)

(assert (=> bm!72010 (= call!72012 ($colon$colon!993 e!874653 (ite c!144568 (h!38334 l!750) (tuple2!25485 key2!21 v2!10))))))

(declare-fun c!144569 () Bool)

(assert (=> bm!72010 (= c!144569 c!144568)))

(declare-fun b!1568948 () Bool)

(declare-fun res!1072505 () Bool)

(declare-fun e!874650 () Bool)

(assert (=> b!1568948 (=> (not res!1072505) (not e!874650))))

(declare-fun lt!673203 () List!36890)

(declare-fun containsKey!858 (List!36890 (_ BitVec 64)) Bool)

(assert (=> b!1568948 (= res!1072505 (containsKey!858 lt!673203 key2!21))))

(declare-fun b!1568949 () Bool)

(declare-fun e!874651 () List!36890)

(assert (=> b!1568949 (= e!874651 call!72013)))

(declare-fun b!1568950 () Bool)

(assert (=> b!1568950 (= e!874653 (insertStrictlySorted!587 (t!51805 l!750) key2!21 v2!10))))

(declare-fun c!144567 () Bool)

(declare-fun c!144570 () Bool)

(declare-fun b!1568951 () Bool)

(assert (=> b!1568951 (= e!874653 (ite c!144567 (t!51805 l!750) (ite c!144570 (Cons!36886 (h!38334 l!750) (t!51805 l!750)) Nil!36887)))))

(declare-fun bm!72011 () Bool)

(assert (=> bm!72011 (= call!72013 call!72012)))

(declare-fun d!163747 () Bool)

(assert (=> d!163747 e!874650))

(declare-fun res!1072506 () Bool)

(assert (=> d!163747 (=> (not res!1072506) (not e!874650))))

(assert (=> d!163747 (= res!1072506 (isStrictlySorted!1000 lt!673203))))

(declare-fun e!874652 () List!36890)

(assert (=> d!163747 (= lt!673203 e!874652)))

(assert (=> d!163747 (= c!144568 (and ((_ is Cons!36886) l!750) (bvslt (_1!12752 (h!38334 l!750)) key2!21)))))

(assert (=> d!163747 (isStrictlySorted!1000 l!750)))

(assert (=> d!163747 (= (insertStrictlySorted!587 l!750 key2!21 v2!10) lt!673203)))

(declare-fun b!1568954 () Bool)

(assert (=> b!1568954 (= c!144570 (and ((_ is Cons!36886) l!750) (bvsgt (_1!12752 (h!38334 l!750)) key2!21)))))

(assert (=> b!1568954 (= e!874651 e!874654)))

(declare-fun b!1568955 () Bool)

(declare-fun contains!10436 (List!36890 tuple2!25484) Bool)

(assert (=> b!1568955 (= e!874650 (contains!10436 lt!673203 (tuple2!25485 key2!21 v2!10)))))

(declare-fun b!1568956 () Bool)

(assert (=> b!1568956 (= e!874652 call!72012)))

(declare-fun b!1568957 () Bool)

(assert (=> b!1568957 (= e!874652 e!874651)))

(assert (=> b!1568957 (= c!144567 (and ((_ is Cons!36886) l!750) (= (_1!12752 (h!38334 l!750)) key2!21)))))

(assert (= (and d!163747 c!144568) b!1568956))

(assert (= (and d!163747 (not c!144568)) b!1568957))

(assert (= (and b!1568957 c!144567) b!1568949))

(assert (= (and b!1568957 (not c!144567)) b!1568954))

(assert (= (and b!1568954 c!144570) b!1568946))

(assert (= (and b!1568954 (not c!144570)) b!1568947))

(assert (= (or b!1568946 b!1568947) bm!72009))

(assert (= (or b!1568949 bm!72009) bm!72011))

(assert (= (or b!1568956 bm!72011) bm!72010))

(assert (= (and bm!72010 c!144569) b!1568950))

(assert (= (and bm!72010 (not c!144569)) b!1568951))

(assert (= (and d!163747 res!1072506) b!1568948))

(assert (= (and b!1568948 res!1072505) b!1568955))

(declare-fun m!1443499 () Bool)

(assert (=> d!163747 m!1443499))

(assert (=> d!163747 m!1443465))

(declare-fun m!1443501 () Bool)

(assert (=> b!1568948 m!1443501))

(declare-fun m!1443503 () Bool)

(assert (=> bm!72010 m!1443503))

(declare-fun m!1443505 () Bool)

(assert (=> b!1568955 m!1443505))

(assert (=> b!1568950 m!1443451))

(assert (=> b!1568872 d!163747))

(declare-fun b!1568964 () Bool)

(declare-fun e!874663 () List!36890)

(declare-fun call!72017 () List!36890)

(assert (=> b!1568964 (= e!874663 call!72017)))

(declare-fun bm!72012 () Bool)

(declare-fun call!72016 () List!36890)

(assert (=> bm!72012 (= call!72017 call!72016)))

(declare-fun b!1568965 () Bool)

(assert (=> b!1568965 (= e!874663 call!72017)))

(declare-fun call!72015 () List!36890)

(declare-fun bm!72013 () Bool)

(declare-fun e!874662 () List!36890)

(declare-fun c!144574 () Bool)

(assert (=> bm!72013 (= call!72015 ($colon$colon!993 e!874662 (ite c!144574 (h!38334 (insertStrictlySorted!587 (t!51805 l!750) key1!37 v1!32)) (tuple2!25485 key2!21 v2!10))))))

(declare-fun c!144575 () Bool)

(assert (=> bm!72013 (= c!144575 c!144574)))

(declare-fun b!1568966 () Bool)

(declare-fun res!1072511 () Bool)

(declare-fun e!874659 () Bool)

(assert (=> b!1568966 (=> (not res!1072511) (not e!874659))))

(declare-fun lt!673204 () List!36890)

(assert (=> b!1568966 (= res!1072511 (containsKey!858 lt!673204 key2!21))))

(declare-fun b!1568967 () Bool)

(declare-fun e!874660 () List!36890)

(assert (=> b!1568967 (= e!874660 call!72016)))

(declare-fun b!1568968 () Bool)

(assert (=> b!1568968 (= e!874662 (insertStrictlySorted!587 (t!51805 (insertStrictlySorted!587 (t!51805 l!750) key1!37 v1!32)) key2!21 v2!10))))

(declare-fun b!1568969 () Bool)

(declare-fun c!144576 () Bool)

(declare-fun c!144573 () Bool)

(assert (=> b!1568969 (= e!874662 (ite c!144573 (t!51805 (insertStrictlySorted!587 (t!51805 l!750) key1!37 v1!32)) (ite c!144576 (Cons!36886 (h!38334 (insertStrictlySorted!587 (t!51805 l!750) key1!37 v1!32)) (t!51805 (insertStrictlySorted!587 (t!51805 l!750) key1!37 v1!32))) Nil!36887)))))

(declare-fun bm!72014 () Bool)

(assert (=> bm!72014 (= call!72016 call!72015)))

(declare-fun d!163759 () Bool)

(assert (=> d!163759 e!874659))

(declare-fun res!1072512 () Bool)

(assert (=> d!163759 (=> (not res!1072512) (not e!874659))))

(assert (=> d!163759 (= res!1072512 (isStrictlySorted!1000 lt!673204))))

(declare-fun e!874661 () List!36890)

(assert (=> d!163759 (= lt!673204 e!874661)))

(assert (=> d!163759 (= c!144574 (and ((_ is Cons!36886) (insertStrictlySorted!587 (t!51805 l!750) key1!37 v1!32)) (bvslt (_1!12752 (h!38334 (insertStrictlySorted!587 (t!51805 l!750) key1!37 v1!32))) key2!21)))))

(assert (=> d!163759 (isStrictlySorted!1000 (insertStrictlySorted!587 (t!51805 l!750) key1!37 v1!32))))

(assert (=> d!163759 (= (insertStrictlySorted!587 (insertStrictlySorted!587 (t!51805 l!750) key1!37 v1!32) key2!21 v2!10) lt!673204)))

(declare-fun b!1568970 () Bool)

(assert (=> b!1568970 (= c!144576 (and ((_ is Cons!36886) (insertStrictlySorted!587 (t!51805 l!750) key1!37 v1!32)) (bvsgt (_1!12752 (h!38334 (insertStrictlySorted!587 (t!51805 l!750) key1!37 v1!32))) key2!21)))))

(assert (=> b!1568970 (= e!874660 e!874663)))

(declare-fun b!1568971 () Bool)

(assert (=> b!1568971 (= e!874659 (contains!10436 lt!673204 (tuple2!25485 key2!21 v2!10)))))

(declare-fun b!1568972 () Bool)

(assert (=> b!1568972 (= e!874661 call!72015)))

(declare-fun b!1568973 () Bool)

(assert (=> b!1568973 (= e!874661 e!874660)))

(assert (=> b!1568973 (= c!144573 (and ((_ is Cons!36886) (insertStrictlySorted!587 (t!51805 l!750) key1!37 v1!32)) (= (_1!12752 (h!38334 (insertStrictlySorted!587 (t!51805 l!750) key1!37 v1!32))) key2!21)))))

(assert (= (and d!163759 c!144574) b!1568972))

(assert (= (and d!163759 (not c!144574)) b!1568973))

(assert (= (and b!1568973 c!144573) b!1568967))

(assert (= (and b!1568973 (not c!144573)) b!1568970))

(assert (= (and b!1568970 c!144576) b!1568964))

(assert (= (and b!1568970 (not c!144576)) b!1568965))

(assert (= (or b!1568964 b!1568965) bm!72012))

(assert (= (or b!1568967 bm!72012) bm!72014))

(assert (= (or b!1568972 bm!72014) bm!72013))

(assert (= (and bm!72013 c!144575) b!1568968))

(assert (= (and bm!72013 (not c!144575)) b!1568969))

(assert (= (and d!163759 res!1072512) b!1568966))

(assert (= (and b!1568966 res!1072511) b!1568971))

(declare-fun m!1443507 () Bool)

(assert (=> d!163759 m!1443507))

(assert (=> d!163759 m!1443453))

(declare-fun m!1443509 () Bool)

(assert (=> d!163759 m!1443509))

(declare-fun m!1443511 () Bool)

(assert (=> b!1568966 m!1443511))

(declare-fun m!1443513 () Bool)

(assert (=> bm!72013 m!1443513))

(declare-fun m!1443515 () Bool)

(assert (=> b!1568971 m!1443515))

(declare-fun m!1443517 () Bool)

(assert (=> b!1568968 m!1443517))

(assert (=> b!1568872 d!163759))

(declare-fun b!1568974 () Bool)

(declare-fun e!874668 () List!36890)

(declare-fun call!72020 () List!36890)

(assert (=> b!1568974 (= e!874668 call!72020)))

(declare-fun bm!72015 () Bool)

(declare-fun call!72019 () List!36890)

(assert (=> bm!72015 (= call!72020 call!72019)))

(declare-fun b!1568975 () Bool)

(assert (=> b!1568975 (= e!874668 call!72020)))

(declare-fun call!72018 () List!36890)

(declare-fun e!874667 () List!36890)

(declare-fun c!144578 () Bool)

(declare-fun bm!72016 () Bool)

(assert (=> bm!72016 (= call!72018 ($colon$colon!993 e!874667 (ite c!144578 (h!38334 (t!51805 l!750)) (tuple2!25485 key2!21 v2!10))))))

(declare-fun c!144579 () Bool)

(assert (=> bm!72016 (= c!144579 c!144578)))

(declare-fun b!1568976 () Bool)

(declare-fun res!1072513 () Bool)

(declare-fun e!874664 () Bool)

(assert (=> b!1568976 (=> (not res!1072513) (not e!874664))))

(declare-fun lt!673205 () List!36890)

(assert (=> b!1568976 (= res!1072513 (containsKey!858 lt!673205 key2!21))))

(declare-fun b!1568977 () Bool)

(declare-fun e!874665 () List!36890)

(assert (=> b!1568977 (= e!874665 call!72019)))

(declare-fun b!1568978 () Bool)

(assert (=> b!1568978 (= e!874667 (insertStrictlySorted!587 (t!51805 (t!51805 l!750)) key2!21 v2!10))))

(declare-fun c!144577 () Bool)

(declare-fun b!1568979 () Bool)

(declare-fun c!144580 () Bool)

(assert (=> b!1568979 (= e!874667 (ite c!144577 (t!51805 (t!51805 l!750)) (ite c!144580 (Cons!36886 (h!38334 (t!51805 l!750)) (t!51805 (t!51805 l!750))) Nil!36887)))))

(declare-fun bm!72017 () Bool)

(assert (=> bm!72017 (= call!72019 call!72018)))

(declare-fun d!163761 () Bool)

(assert (=> d!163761 e!874664))

(declare-fun res!1072514 () Bool)

(assert (=> d!163761 (=> (not res!1072514) (not e!874664))))

(assert (=> d!163761 (= res!1072514 (isStrictlySorted!1000 lt!673205))))

(declare-fun e!874666 () List!36890)

(assert (=> d!163761 (= lt!673205 e!874666)))

(assert (=> d!163761 (= c!144578 (and ((_ is Cons!36886) (t!51805 l!750)) (bvslt (_1!12752 (h!38334 (t!51805 l!750))) key2!21)))))

(assert (=> d!163761 (isStrictlySorted!1000 (t!51805 l!750))))

(assert (=> d!163761 (= (insertStrictlySorted!587 (t!51805 l!750) key2!21 v2!10) lt!673205)))

(declare-fun b!1568980 () Bool)

(assert (=> b!1568980 (= c!144580 (and ((_ is Cons!36886) (t!51805 l!750)) (bvsgt (_1!12752 (h!38334 (t!51805 l!750))) key2!21)))))

(assert (=> b!1568980 (= e!874665 e!874668)))

(declare-fun b!1568981 () Bool)

(assert (=> b!1568981 (= e!874664 (contains!10436 lt!673205 (tuple2!25485 key2!21 v2!10)))))

(declare-fun b!1568982 () Bool)

(assert (=> b!1568982 (= e!874666 call!72018)))

(declare-fun b!1568983 () Bool)

(assert (=> b!1568983 (= e!874666 e!874665)))

(assert (=> b!1568983 (= c!144577 (and ((_ is Cons!36886) (t!51805 l!750)) (= (_1!12752 (h!38334 (t!51805 l!750))) key2!21)))))

(assert (= (and d!163761 c!144578) b!1568982))

(assert (= (and d!163761 (not c!144578)) b!1568983))

(assert (= (and b!1568983 c!144577) b!1568977))

(assert (= (and b!1568983 (not c!144577)) b!1568980))

(assert (= (and b!1568980 c!144580) b!1568974))

(assert (= (and b!1568980 (not c!144580)) b!1568975))

(assert (= (or b!1568974 b!1568975) bm!72015))

(assert (= (or b!1568977 bm!72015) bm!72017))

(assert (= (or b!1568982 bm!72017) bm!72016))

(assert (= (and bm!72016 c!144579) b!1568978))

(assert (= (and bm!72016 (not c!144579)) b!1568979))

(assert (= (and d!163761 res!1072514) b!1568976))

(assert (= (and b!1568976 res!1072513) b!1568981))

(declare-fun m!1443519 () Bool)

(assert (=> d!163761 m!1443519))

(assert (=> d!163761 m!1443467))

(declare-fun m!1443521 () Bool)

(assert (=> b!1568976 m!1443521))

(declare-fun m!1443523 () Bool)

(assert (=> bm!72016 m!1443523))

(declare-fun m!1443525 () Bool)

(assert (=> b!1568981 m!1443525))

(declare-fun m!1443527 () Bool)

(assert (=> b!1568978 m!1443527))

(assert (=> b!1568872 d!163761))

(declare-fun d!163763 () Bool)

(declare-fun res!1072515 () Bool)

(declare-fun e!874669 () Bool)

(assert (=> d!163763 (=> res!1072515 e!874669)))

(assert (=> d!163763 (= res!1072515 (or ((_ is Nil!36887) (insertStrictlySorted!587 l!750 key2!21 v2!10)) ((_ is Nil!36887) (t!51805 (insertStrictlySorted!587 l!750 key2!21 v2!10)))))))

(assert (=> d!163763 (= (isStrictlySorted!1000 (insertStrictlySorted!587 l!750 key2!21 v2!10)) e!874669)))

(declare-fun b!1568984 () Bool)

(declare-fun e!874670 () Bool)

(assert (=> b!1568984 (= e!874669 e!874670)))

(declare-fun res!1072516 () Bool)

(assert (=> b!1568984 (=> (not res!1072516) (not e!874670))))

(assert (=> b!1568984 (= res!1072516 (bvslt (_1!12752 (h!38334 (insertStrictlySorted!587 l!750 key2!21 v2!10))) (_1!12752 (h!38334 (t!51805 (insertStrictlySorted!587 l!750 key2!21 v2!10))))))))

(declare-fun b!1568985 () Bool)

(assert (=> b!1568985 (= e!874670 (isStrictlySorted!1000 (t!51805 (insertStrictlySorted!587 l!750 key2!21 v2!10))))))

(assert (= (and d!163763 (not res!1072515)) b!1568984))

(assert (= (and b!1568984 res!1072516) b!1568985))

(declare-fun m!1443529 () Bool)

(assert (=> b!1568985 m!1443529))

(assert (=> b!1568872 d!163763))

(declare-fun b!1568986 () Bool)

(declare-fun e!874675 () List!36890)

(declare-fun call!72023 () List!36890)

(assert (=> b!1568986 (= e!874675 call!72023)))

(declare-fun bm!72018 () Bool)

(declare-fun call!72022 () List!36890)

(assert (=> bm!72018 (= call!72023 call!72022)))

(declare-fun b!1568987 () Bool)

(assert (=> b!1568987 (= e!874675 call!72023)))

(declare-fun e!874674 () List!36890)

(declare-fun c!144582 () Bool)

(declare-fun bm!72019 () Bool)

(declare-fun call!72021 () List!36890)

(assert (=> bm!72019 (= call!72021 ($colon$colon!993 e!874674 (ite c!144582 (h!38334 (insertStrictlySorted!587 (t!51805 l!750) key2!21 v2!10)) (tuple2!25485 key1!37 v1!32))))))

(declare-fun c!144583 () Bool)

(assert (=> bm!72019 (= c!144583 c!144582)))

(declare-fun b!1568988 () Bool)

(declare-fun res!1072517 () Bool)

(declare-fun e!874671 () Bool)

(assert (=> b!1568988 (=> (not res!1072517) (not e!874671))))

(declare-fun lt!673206 () List!36890)

(assert (=> b!1568988 (= res!1072517 (containsKey!858 lt!673206 key1!37))))

(declare-fun b!1568989 () Bool)

(declare-fun e!874672 () List!36890)

(assert (=> b!1568989 (= e!874672 call!72022)))

(declare-fun b!1568990 () Bool)

(assert (=> b!1568990 (= e!874674 (insertStrictlySorted!587 (t!51805 (insertStrictlySorted!587 (t!51805 l!750) key2!21 v2!10)) key1!37 v1!32))))

(declare-fun b!1568991 () Bool)

(declare-fun c!144584 () Bool)

(declare-fun c!144581 () Bool)

(assert (=> b!1568991 (= e!874674 (ite c!144581 (t!51805 (insertStrictlySorted!587 (t!51805 l!750) key2!21 v2!10)) (ite c!144584 (Cons!36886 (h!38334 (insertStrictlySorted!587 (t!51805 l!750) key2!21 v2!10)) (t!51805 (insertStrictlySorted!587 (t!51805 l!750) key2!21 v2!10))) Nil!36887)))))

(declare-fun bm!72020 () Bool)

(assert (=> bm!72020 (= call!72022 call!72021)))

(declare-fun d!163765 () Bool)

(assert (=> d!163765 e!874671))

(declare-fun res!1072518 () Bool)

(assert (=> d!163765 (=> (not res!1072518) (not e!874671))))

(assert (=> d!163765 (= res!1072518 (isStrictlySorted!1000 lt!673206))))

(declare-fun e!874673 () List!36890)

(assert (=> d!163765 (= lt!673206 e!874673)))

(assert (=> d!163765 (= c!144582 (and ((_ is Cons!36886) (insertStrictlySorted!587 (t!51805 l!750) key2!21 v2!10)) (bvslt (_1!12752 (h!38334 (insertStrictlySorted!587 (t!51805 l!750) key2!21 v2!10))) key1!37)))))

(assert (=> d!163765 (isStrictlySorted!1000 (insertStrictlySorted!587 (t!51805 l!750) key2!21 v2!10))))

(assert (=> d!163765 (= (insertStrictlySorted!587 (insertStrictlySorted!587 (t!51805 l!750) key2!21 v2!10) key1!37 v1!32) lt!673206)))

(declare-fun b!1568992 () Bool)

(assert (=> b!1568992 (= c!144584 (and ((_ is Cons!36886) (insertStrictlySorted!587 (t!51805 l!750) key2!21 v2!10)) (bvsgt (_1!12752 (h!38334 (insertStrictlySorted!587 (t!51805 l!750) key2!21 v2!10))) key1!37)))))

(assert (=> b!1568992 (= e!874672 e!874675)))

(declare-fun b!1568993 () Bool)

(assert (=> b!1568993 (= e!874671 (contains!10436 lt!673206 (tuple2!25485 key1!37 v1!32)))))

(declare-fun b!1568994 () Bool)

(assert (=> b!1568994 (= e!874673 call!72021)))

(declare-fun b!1568995 () Bool)

(assert (=> b!1568995 (= e!874673 e!874672)))

(assert (=> b!1568995 (= c!144581 (and ((_ is Cons!36886) (insertStrictlySorted!587 (t!51805 l!750) key2!21 v2!10)) (= (_1!12752 (h!38334 (insertStrictlySorted!587 (t!51805 l!750) key2!21 v2!10))) key1!37)))))

(assert (= (and d!163765 c!144582) b!1568994))

(assert (= (and d!163765 (not c!144582)) b!1568995))

(assert (= (and b!1568995 c!144581) b!1568989))

(assert (= (and b!1568995 (not c!144581)) b!1568992))

(assert (= (and b!1568992 c!144584) b!1568986))

(assert (= (and b!1568992 (not c!144584)) b!1568987))

(assert (= (or b!1568986 b!1568987) bm!72018))

(assert (= (or b!1568989 bm!72018) bm!72020))

(assert (= (or b!1568994 bm!72020) bm!72019))

(assert (= (and bm!72019 c!144583) b!1568990))

(assert (= (and bm!72019 (not c!144583)) b!1568991))

(assert (= (and d!163765 res!1072518) b!1568988))

(assert (= (and b!1568988 res!1072517) b!1568993))

(declare-fun m!1443531 () Bool)

(assert (=> d!163765 m!1443531))

(assert (=> d!163765 m!1443451))

(declare-fun m!1443533 () Bool)

(assert (=> d!163765 m!1443533))

(declare-fun m!1443535 () Bool)

(assert (=> b!1568988 m!1443535))

(declare-fun m!1443539 () Bool)

(assert (=> bm!72019 m!1443539))

(declare-fun m!1443543 () Bool)

(assert (=> b!1568993 m!1443543))

(declare-fun m!1443545 () Bool)

(assert (=> b!1568990 m!1443545))

(assert (=> b!1568872 d!163765))

(declare-fun b!1569018 () Bool)

(declare-fun e!874691 () List!36890)

(declare-fun call!72029 () List!36890)

(assert (=> b!1569018 (= e!874691 call!72029)))

(declare-fun bm!72024 () Bool)

(declare-fun call!72028 () List!36890)

(assert (=> bm!72024 (= call!72029 call!72028)))

(declare-fun b!1569019 () Bool)

(assert (=> b!1569019 (= e!874691 call!72029)))

(declare-fun call!72027 () List!36890)

(declare-fun e!874690 () List!36890)

(declare-fun bm!72025 () Bool)

(declare-fun c!144596 () Bool)

(assert (=> bm!72025 (= call!72027 ($colon$colon!993 e!874690 (ite c!144596 (h!38334 (t!51805 l!750)) (tuple2!25485 key1!37 v1!32))))))

(declare-fun c!144597 () Bool)

(assert (=> bm!72025 (= c!144597 c!144596)))

(declare-fun b!1569020 () Bool)

(declare-fun res!1072521 () Bool)

(declare-fun e!874686 () Bool)

(assert (=> b!1569020 (=> (not res!1072521) (not e!874686))))

(declare-fun lt!673210 () List!36890)

(assert (=> b!1569020 (= res!1072521 (containsKey!858 lt!673210 key1!37))))

(declare-fun b!1569021 () Bool)

(declare-fun e!874688 () List!36890)

(assert (=> b!1569021 (= e!874688 call!72028)))

(declare-fun b!1569022 () Bool)

(assert (=> b!1569022 (= e!874690 (insertStrictlySorted!587 (t!51805 (t!51805 l!750)) key1!37 v1!32))))

(declare-fun b!1569023 () Bool)

(declare-fun c!144598 () Bool)

(declare-fun c!144594 () Bool)

(assert (=> b!1569023 (= e!874690 (ite c!144594 (t!51805 (t!51805 l!750)) (ite c!144598 (Cons!36886 (h!38334 (t!51805 l!750)) (t!51805 (t!51805 l!750))) Nil!36887)))))

(declare-fun bm!72026 () Bool)

(assert (=> bm!72026 (= call!72028 call!72027)))

(declare-fun d!163767 () Bool)

(assert (=> d!163767 e!874686))

(declare-fun res!1072522 () Bool)

(assert (=> d!163767 (=> (not res!1072522) (not e!874686))))

(assert (=> d!163767 (= res!1072522 (isStrictlySorted!1000 lt!673210))))

(declare-fun e!874689 () List!36890)

(assert (=> d!163767 (= lt!673210 e!874689)))

(assert (=> d!163767 (= c!144596 (and ((_ is Cons!36886) (t!51805 l!750)) (bvslt (_1!12752 (h!38334 (t!51805 l!750))) key1!37)))))

(assert (=> d!163767 (isStrictlySorted!1000 (t!51805 l!750))))

(assert (=> d!163767 (= (insertStrictlySorted!587 (t!51805 l!750) key1!37 v1!32) lt!673210)))

(declare-fun b!1569024 () Bool)

(assert (=> b!1569024 (= c!144598 (and ((_ is Cons!36886) (t!51805 l!750)) (bvsgt (_1!12752 (h!38334 (t!51805 l!750))) key1!37)))))

(assert (=> b!1569024 (= e!874688 e!874691)))

(declare-fun b!1569025 () Bool)

(assert (=> b!1569025 (= e!874686 (contains!10436 lt!673210 (tuple2!25485 key1!37 v1!32)))))

(declare-fun b!1569026 () Bool)

(assert (=> b!1569026 (= e!874689 call!72027)))

(declare-fun b!1569027 () Bool)

(assert (=> b!1569027 (= e!874689 e!874688)))

(assert (=> b!1569027 (= c!144594 (and ((_ is Cons!36886) (t!51805 l!750)) (= (_1!12752 (h!38334 (t!51805 l!750))) key1!37)))))

(assert (= (and d!163767 c!144596) b!1569026))

(assert (= (and d!163767 (not c!144596)) b!1569027))

(assert (= (and b!1569027 c!144594) b!1569021))

(assert (= (and b!1569027 (not c!144594)) b!1569024))

(assert (= (and b!1569024 c!144598) b!1569018))

(assert (= (and b!1569024 (not c!144598)) b!1569019))

(assert (= (or b!1569018 b!1569019) bm!72024))

(assert (= (or b!1569021 bm!72024) bm!72026))

(assert (= (or b!1569026 bm!72026) bm!72025))

(assert (= (and bm!72025 c!144597) b!1569022))

(assert (= (and bm!72025 (not c!144597)) b!1569023))

(assert (= (and d!163767 res!1072522) b!1569020))

(assert (= (and b!1569020 res!1072521) b!1569025))

(declare-fun m!1443551 () Bool)

(assert (=> d!163767 m!1443551))

(assert (=> d!163767 m!1443467))

(declare-fun m!1443553 () Bool)

(assert (=> b!1569020 m!1443553))

(declare-fun m!1443555 () Bool)

(assert (=> bm!72025 m!1443555))

(declare-fun m!1443557 () Bool)

(assert (=> b!1569025 m!1443557))

(declare-fun m!1443561 () Bool)

(assert (=> b!1569022 m!1443561))

(assert (=> b!1568872 d!163767))

(declare-fun d!163771 () Bool)

(declare-fun res!1072525 () Bool)

(declare-fun e!874697 () Bool)

(assert (=> d!163771 (=> res!1072525 e!874697)))

(assert (=> d!163771 (= res!1072525 (or ((_ is Nil!36887) l!750) ((_ is Nil!36887) (t!51805 l!750))))))

(assert (=> d!163771 (= (isStrictlySorted!1000 l!750) e!874697)))

(declare-fun b!1569038 () Bool)

(declare-fun e!874698 () Bool)

(assert (=> b!1569038 (= e!874697 e!874698)))

(declare-fun res!1072526 () Bool)

(assert (=> b!1569038 (=> (not res!1072526) (not e!874698))))

(assert (=> b!1569038 (= res!1072526 (bvslt (_1!12752 (h!38334 l!750)) (_1!12752 (h!38334 (t!51805 l!750)))))))

(declare-fun b!1569039 () Bool)

(assert (=> b!1569039 (= e!874698 (isStrictlySorted!1000 (t!51805 l!750)))))

(assert (= (and d!163771 (not res!1072525)) b!1569038))

(assert (= (and b!1569038 res!1072526) b!1569039))

(assert (=> b!1569039 m!1443467))

(assert (=> b!1568875 d!163771))

(declare-fun b!1569058 () Bool)

(declare-fun e!874708 () Bool)

(declare-fun tp!114085 () Bool)

(assert (=> b!1569058 (= e!874708 (and tp_is_empty!39045 tp!114085))))

(assert (=> b!1568874 (= tp!114079 e!874708)))

(assert (= (and b!1568874 ((_ is Cons!36886) (t!51805 l!750))) b!1569058))

(check-sat (not b!1569022) (not bm!72013) (not b!1569020) (not b!1568897) (not bm!72025) (not bm!72016) (not b!1568948) (not d!163759) (not b!1568971) (not b!1569039) (not d!163761) (not b!1568966) (not b!1568955) (not d!163765) tp_is_empty!39045 (not b!1568950) (not b!1568976) (not b!1568978) (not bm!72019) (not b!1568988) (not d!163747) (not d!163739) (not bm!72010) (not b!1568993) (not b!1568968) (not b!1569058) (not b!1568981) (not b!1568985) (not b!1569025) (not b!1568990) (not d!163767))
(check-sat)
