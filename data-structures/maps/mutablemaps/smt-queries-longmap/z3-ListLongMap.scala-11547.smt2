; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134448 () Bool)

(assert start!134448)

(declare-fun b!1569353 () Bool)

(declare-fun e!874881 () Bool)

(declare-fun tp_is_empty!39069 () Bool)

(declare-fun tp!114133 () Bool)

(assert (=> b!1569353 (= e!874881 (and tp_is_empty!39069 tp!114133))))

(declare-fun res!1072637 () Bool)

(declare-fun e!874880 () Bool)

(assert (=> start!134448 (=> (not res!1072637) (not e!874880))))

(declare-fun key1!37 () (_ BitVec 64))

(declare-fun key2!21 () (_ BitVec 64))

(assert (=> start!134448 (= res!1072637 (not (= key1!37 key2!21)))))

(assert (=> start!134448 e!874880))

(assert (=> start!134448 true))

(assert (=> start!134448 e!874881))

(assert (=> start!134448 tp_is_empty!39069))

(declare-fun b!1569350 () Bool)

(declare-fun res!1072636 () Bool)

(assert (=> b!1569350 (=> (not res!1072636) (not e!874880))))

(declare-datatypes ((B!2518 0))(
  ( (B!2519 (val!19621 Int)) )
))
(declare-datatypes ((tuple2!25508 0))(
  ( (tuple2!25509 (_1!12764 (_ BitVec 64)) (_2!12764 B!2518)) )
))
(declare-datatypes ((List!36902 0))(
  ( (Nil!36899) (Cons!36898 (h!38346 tuple2!25508) (t!51817 List!36902)) )
))
(declare-fun l!750 () List!36902)

(declare-fun isStrictlySorted!1006 (List!36902) Bool)

(assert (=> b!1569350 (= res!1072636 (isStrictlySorted!1006 l!750))))

(declare-fun b!1569351 () Bool)

(declare-fun res!1072635 () Bool)

(assert (=> b!1569351 (=> (not res!1072635) (not e!874880))))

(get-info :version)

(assert (=> b!1569351 (= res!1072635 (or (not ((_ is Cons!36898) l!750)) (bvsge (_1!12764 (h!38346 l!750)) key1!37) (bvsge (_1!12764 (h!38346 l!750)) key2!21)))))

(declare-fun v2!10 () B!2518)

(declare-fun b!1569352 () Bool)

(declare-fun insertStrictlySorted!593 (List!36902 (_ BitVec 64) B!2518) List!36902)

(assert (=> b!1569352 (= e!874880 (not (isStrictlySorted!1006 (insertStrictlySorted!593 l!750 key2!21 v2!10))))))

(assert (= (and start!134448 res!1072637) b!1569350))

(assert (= (and b!1569350 res!1072636) b!1569351))

(assert (= (and b!1569351 res!1072635) b!1569352))

(assert (= (and start!134448 ((_ is Cons!36898) l!750)) b!1569353))

(declare-fun m!1443727 () Bool)

(assert (=> b!1569350 m!1443727))

(declare-fun m!1443729 () Bool)

(assert (=> b!1569352 m!1443729))

(assert (=> b!1569352 m!1443729))

(declare-fun m!1443731 () Bool)

(assert (=> b!1569352 m!1443731))

(check-sat (not b!1569350) (not b!1569352) (not b!1569353) tp_is_empty!39069)
(check-sat)
(get-model)

(declare-fun d!163823 () Bool)

(declare-fun res!1072665 () Bool)

(declare-fun e!874906 () Bool)

(assert (=> d!163823 (=> res!1072665 e!874906)))

(assert (=> d!163823 (= res!1072665 (or ((_ is Nil!36899) l!750) ((_ is Nil!36899) (t!51817 l!750))))))

(assert (=> d!163823 (= (isStrictlySorted!1006 l!750) e!874906)))

(declare-fun b!1569384 () Bool)

(declare-fun e!874907 () Bool)

(assert (=> b!1569384 (= e!874906 e!874907)))

(declare-fun res!1072666 () Bool)

(assert (=> b!1569384 (=> (not res!1072666) (not e!874907))))

(assert (=> b!1569384 (= res!1072666 (bvslt (_1!12764 (h!38346 l!750)) (_1!12764 (h!38346 (t!51817 l!750)))))))

(declare-fun b!1569385 () Bool)

(assert (=> b!1569385 (= e!874907 (isStrictlySorted!1006 (t!51817 l!750)))))

(assert (= (and d!163823 (not res!1072665)) b!1569384))

(assert (= (and b!1569384 res!1072666) b!1569385))

(declare-fun m!1443745 () Bool)

(assert (=> b!1569385 m!1443745))

(assert (=> b!1569350 d!163823))

(declare-fun d!163829 () Bool)

(declare-fun res!1072667 () Bool)

(declare-fun e!874908 () Bool)

(assert (=> d!163829 (=> res!1072667 e!874908)))

(assert (=> d!163829 (= res!1072667 (or ((_ is Nil!36899) (insertStrictlySorted!593 l!750 key2!21 v2!10)) ((_ is Nil!36899) (t!51817 (insertStrictlySorted!593 l!750 key2!21 v2!10)))))))

(assert (=> d!163829 (= (isStrictlySorted!1006 (insertStrictlySorted!593 l!750 key2!21 v2!10)) e!874908)))

(declare-fun b!1569386 () Bool)

(declare-fun e!874909 () Bool)

(assert (=> b!1569386 (= e!874908 e!874909)))

(declare-fun res!1072668 () Bool)

(assert (=> b!1569386 (=> (not res!1072668) (not e!874909))))

(assert (=> b!1569386 (= res!1072668 (bvslt (_1!12764 (h!38346 (insertStrictlySorted!593 l!750 key2!21 v2!10))) (_1!12764 (h!38346 (t!51817 (insertStrictlySorted!593 l!750 key2!21 v2!10))))))))

(declare-fun b!1569387 () Bool)

(assert (=> b!1569387 (= e!874909 (isStrictlySorted!1006 (t!51817 (insertStrictlySorted!593 l!750 key2!21 v2!10))))))

(assert (= (and d!163829 (not res!1072667)) b!1569386))

(assert (= (and b!1569386 res!1072668) b!1569387))

(declare-fun m!1443747 () Bool)

(assert (=> b!1569387 m!1443747))

(assert (=> b!1569352 d!163829))

(declare-fun b!1569475 () Bool)

(declare-fun res!1072688 () Bool)

(declare-fun e!874958 () Bool)

(assert (=> b!1569475 (=> (not res!1072688) (not e!874958))))

(declare-fun lt!673237 () List!36902)

(declare-fun containsKey!866 (List!36902 (_ BitVec 64)) Bool)

(assert (=> b!1569475 (= res!1072688 (containsKey!866 lt!673237 key2!21))))

(declare-fun b!1569476 () Bool)

(declare-fun e!874955 () List!36902)

(declare-fun call!72115 () List!36902)

(assert (=> b!1569476 (= e!874955 call!72115)))

(declare-fun b!1569477 () Bool)

(declare-fun e!874959 () List!36902)

(declare-fun e!874956 () List!36902)

(assert (=> b!1569477 (= e!874959 e!874956)))

(declare-fun c!144705 () Bool)

(assert (=> b!1569477 (= c!144705 (and ((_ is Cons!36898) l!750) (= (_1!12764 (h!38346 l!750)) key2!21)))))

(declare-fun d!163831 () Bool)

(assert (=> d!163831 e!874958))

(declare-fun res!1072687 () Bool)

(assert (=> d!163831 (=> (not res!1072687) (not e!874958))))

(assert (=> d!163831 (= res!1072687 (isStrictlySorted!1006 lt!673237))))

(assert (=> d!163831 (= lt!673237 e!874959)))

(declare-fun c!144708 () Bool)

(assert (=> d!163831 (= c!144708 (and ((_ is Cons!36898) l!750) (bvslt (_1!12764 (h!38346 l!750)) key2!21)))))

(assert (=> d!163831 (isStrictlySorted!1006 l!750)))

(assert (=> d!163831 (= (insertStrictlySorted!593 l!750 key2!21 v2!10) lt!673237)))

(declare-fun b!1569478 () Bool)

(declare-fun c!144707 () Bool)

(assert (=> b!1569478 (= c!144707 (and ((_ is Cons!36898) l!750) (bvsgt (_1!12764 (h!38346 l!750)) key2!21)))))

(assert (=> b!1569478 (= e!874956 e!874955)))

(declare-fun b!1569479 () Bool)

(declare-fun contains!10443 (List!36902 tuple2!25508) Bool)

(assert (=> b!1569479 (= e!874958 (contains!10443 lt!673237 (tuple2!25509 key2!21 v2!10)))))

(declare-fun b!1569480 () Bool)

(assert (=> b!1569480 (= e!874955 call!72115)))

(declare-fun bm!72111 () Bool)

(declare-fun e!874957 () List!36902)

(declare-fun call!72114 () List!36902)

(declare-fun $colon$colon!999 (List!36902 tuple2!25508) List!36902)

(assert (=> bm!72111 (= call!72114 ($colon$colon!999 e!874957 (ite c!144708 (h!38346 l!750) (tuple2!25509 key2!21 v2!10))))))

(declare-fun c!144706 () Bool)

(assert (=> bm!72111 (= c!144706 c!144708)))

(declare-fun b!1569481 () Bool)

(assert (=> b!1569481 (= e!874957 (insertStrictlySorted!593 (t!51817 l!750) key2!21 v2!10))))

(declare-fun b!1569482 () Bool)

(declare-fun call!72116 () List!36902)

(assert (=> b!1569482 (= e!874956 call!72116)))

(declare-fun bm!72112 () Bool)

(assert (=> bm!72112 (= call!72116 call!72114)))

(declare-fun b!1569483 () Bool)

(assert (=> b!1569483 (= e!874957 (ite c!144705 (t!51817 l!750) (ite c!144707 (Cons!36898 (h!38346 l!750) (t!51817 l!750)) Nil!36899)))))

(declare-fun b!1569484 () Bool)

(assert (=> b!1569484 (= e!874959 call!72114)))

(declare-fun bm!72113 () Bool)

(assert (=> bm!72113 (= call!72115 call!72116)))

(assert (= (and d!163831 c!144708) b!1569484))

(assert (= (and d!163831 (not c!144708)) b!1569477))

(assert (= (and b!1569477 c!144705) b!1569482))

(assert (= (and b!1569477 (not c!144705)) b!1569478))

(assert (= (and b!1569478 c!144707) b!1569480))

(assert (= (and b!1569478 (not c!144707)) b!1569476))

(assert (= (or b!1569480 b!1569476) bm!72113))

(assert (= (or b!1569482 bm!72113) bm!72112))

(assert (= (or b!1569484 bm!72112) bm!72111))

(assert (= (and bm!72111 c!144706) b!1569481))

(assert (= (and bm!72111 (not c!144706)) b!1569483))

(assert (= (and d!163831 res!1072687) b!1569475))

(assert (= (and b!1569475 res!1072688) b!1569479))

(declare-fun m!1443771 () Bool)

(assert (=> b!1569479 m!1443771))

(declare-fun m!1443773 () Bool)

(assert (=> b!1569481 m!1443773))

(declare-fun m!1443775 () Bool)

(assert (=> bm!72111 m!1443775))

(declare-fun m!1443777 () Bool)

