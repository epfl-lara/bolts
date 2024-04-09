; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134364 () Bool)

(assert start!134364)

(declare-datatypes ((B!2482 0))(
  ( (B!2483 (val!19603 Int)) )
))
(declare-datatypes ((tuple2!25472 0))(
  ( (tuple2!25473 (_1!12746 (_ BitVec 64)) (_2!12746 B!2482)) )
))
(declare-datatypes ((List!36884 0))(
  ( (Nil!36881) (Cons!36880 (h!38328 tuple2!25472) (t!51799 List!36884)) )
))
(declare-fun l!750 () List!36884)

(declare-fun key1!37 () (_ BitVec 64))

(declare-fun b!1568528 () Bool)

(declare-fun e!874424 () Bool)

(declare-fun v1!32 () B!2482)

(declare-fun isStrictlySorted!994 (List!36884) Bool)

(declare-fun insertStrictlySorted!581 (List!36884 (_ BitVec 64) B!2482) List!36884)

(assert (=> b!1568528 (= e!874424 (not (isStrictlySorted!994 (insertStrictlySorted!581 l!750 key1!37 v1!32))))))

(declare-fun v2!10 () B!2482)

(declare-fun key2!21 () (_ BitVec 64))

(assert (=> b!1568528 (= (insertStrictlySorted!581 (insertStrictlySorted!581 (t!51799 l!750) key1!37 v1!32) key2!21 v2!10) (insertStrictlySorted!581 (insertStrictlySorted!581 (t!51799 l!750) key2!21 v2!10) key1!37 v1!32))))

(declare-datatypes ((Unit!52020 0))(
  ( (Unit!52021) )
))
(declare-fun lt!673138 () Unit!52020)

(declare-fun lemmaInsertStrictlySortedCommutative!8 (List!36884 (_ BitVec 64) B!2482 (_ BitVec 64) B!2482) Unit!52020)

(assert (=> b!1568528 (= lt!673138 (lemmaInsertStrictlySortedCommutative!8 (t!51799 l!750) key1!37 v1!32 key2!21 v2!10))))

(declare-fun b!1568529 () Bool)

(declare-fun res!1072320 () Bool)

(assert (=> b!1568529 (=> (not res!1072320) (not e!874424))))

(assert (=> b!1568529 (= res!1072320 (isStrictlySorted!994 (t!51799 l!750)))))

(declare-fun b!1568530 () Bool)

(declare-fun res!1072322 () Bool)

(assert (=> b!1568530 (=> (not res!1072322) (not e!874424))))

(assert (=> b!1568530 (= res!1072322 (isStrictlySorted!994 l!750))))

(declare-fun b!1568531 () Bool)

(declare-fun res!1072321 () Bool)

(assert (=> b!1568531 (=> (not res!1072321) (not e!874424))))

(get-info :version)

(assert (=> b!1568531 (= res!1072321 (and ((_ is Cons!36880) l!750) (bvslt (_1!12746 (h!38328 l!750)) key1!37) (bvslt (_1!12746 (h!38328 l!750)) key2!21)))))

(declare-fun res!1072319 () Bool)

(assert (=> start!134364 (=> (not res!1072319) (not e!874424))))

(assert (=> start!134364 (= res!1072319 (not (= key1!37 key2!21)))))

(assert (=> start!134364 e!874424))

(declare-fun tp_is_empty!39033 () Bool)

(assert (=> start!134364 tp_is_empty!39033))

(declare-fun e!874425 () Bool)

(assert (=> start!134364 e!874425))

(assert (=> start!134364 true))

(declare-fun b!1568527 () Bool)

(declare-fun tp!114052 () Bool)

(assert (=> b!1568527 (= e!874425 (and tp_is_empty!39033 tp!114052))))

(assert (= (and start!134364 res!1072319) b!1568530))

(assert (= (and b!1568530 res!1072322) b!1568531))

(assert (= (and b!1568531 res!1072321) b!1568529))

(assert (= (and b!1568529 res!1072320) b!1568528))

(assert (= (and start!134364 ((_ is Cons!36880) l!750)) b!1568527))

(declare-fun m!1443181 () Bool)

(assert (=> b!1568528 m!1443181))

(assert (=> b!1568528 m!1443181))

(declare-fun m!1443183 () Bool)

(assert (=> b!1568528 m!1443183))

(declare-fun m!1443185 () Bool)

(assert (=> b!1568528 m!1443185))

(declare-fun m!1443187 () Bool)

(assert (=> b!1568528 m!1443187))

(assert (=> b!1568528 m!1443185))

(declare-fun m!1443189 () Bool)

(assert (=> b!1568528 m!1443189))

(declare-fun m!1443191 () Bool)

(assert (=> b!1568528 m!1443191))

(assert (=> b!1568528 m!1443191))

(declare-fun m!1443193 () Bool)

(assert (=> b!1568528 m!1443193))

(declare-fun m!1443195 () Bool)

(assert (=> b!1568529 m!1443195))

(declare-fun m!1443197 () Bool)

(assert (=> b!1568530 m!1443197))

(check-sat (not b!1568529) (not b!1568527) (not b!1568530) tp_is_empty!39033 (not b!1568528))
(check-sat)
(get-model)

(declare-fun d!163679 () Bool)

(declare-fun res!1072339 () Bool)

(declare-fun e!874436 () Bool)

(assert (=> d!163679 (=> res!1072339 e!874436)))

(assert (=> d!163679 (= res!1072339 (or ((_ is Nil!36881) l!750) ((_ is Nil!36881) (t!51799 l!750))))))

(assert (=> d!163679 (= (isStrictlySorted!994 l!750) e!874436)))

(declare-fun b!1568551 () Bool)

(declare-fun e!874437 () Bool)

(assert (=> b!1568551 (= e!874436 e!874437)))

(declare-fun res!1072340 () Bool)

(assert (=> b!1568551 (=> (not res!1072340) (not e!874437))))

(assert (=> b!1568551 (= res!1072340 (bvslt (_1!12746 (h!38328 l!750)) (_1!12746 (h!38328 (t!51799 l!750)))))))

(declare-fun b!1568552 () Bool)

(assert (=> b!1568552 (= e!874437 (isStrictlySorted!994 (t!51799 l!750)))))

(assert (= (and d!163679 (not res!1072339)) b!1568551))

(assert (= (and b!1568551 res!1072340) b!1568552))

(assert (=> b!1568552 m!1443195))

(assert (=> b!1568530 d!163679))

(declare-fun d!163683 () Bool)

(assert (=> d!163683 (= (insertStrictlySorted!581 (insertStrictlySorted!581 (t!51799 l!750) key1!37 v1!32) key2!21 v2!10) (insertStrictlySorted!581 (insertStrictlySorted!581 (t!51799 l!750) key2!21 v2!10) key1!37 v1!32))))

(declare-fun lt!673147 () Unit!52020)

(declare-fun choose!2085 (List!36884 (_ BitVec 64) B!2482 (_ BitVec 64) B!2482) Unit!52020)

(assert (=> d!163683 (= lt!673147 (choose!2085 (t!51799 l!750) key1!37 v1!32 key2!21 v2!10))))

(assert (=> d!163683 (not (= key1!37 key2!21))))

(assert (=> d!163683 (= (lemmaInsertStrictlySortedCommutative!8 (t!51799 l!750) key1!37 v1!32 key2!21 v2!10) lt!673147)))

(declare-fun bs!45177 () Bool)

(assert (= bs!45177 d!163683))

(assert (=> bs!45177 m!1443185))

(assert (=> bs!45177 m!1443181))

(assert (=> bs!45177 m!1443181))

(assert (=> bs!45177 m!1443183))

(assert (=> bs!45177 m!1443185))

(assert (=> bs!45177 m!1443187))

(declare-fun m!1443221 () Bool)

(assert (=> bs!45177 m!1443221))

(assert (=> b!1568528 d!163683))

(declare-fun d!163689 () Bool)

(declare-fun res!1072347 () Bool)

(declare-fun e!874444 () Bool)

(assert (=> d!163689 (=> res!1072347 e!874444)))

(assert (=> d!163689 (= res!1072347 (or ((_ is Nil!36881) (insertStrictlySorted!581 l!750 key1!37 v1!32)) ((_ is Nil!36881) (t!51799 (insertStrictlySorted!581 l!750 key1!37 v1!32)))))))

(assert (=> d!163689 (= (isStrictlySorted!994 (insertStrictlySorted!581 l!750 key1!37 v1!32)) e!874444)))

(declare-fun b!1568559 () Bool)

(declare-fun e!874445 () Bool)

(assert (=> b!1568559 (= e!874444 e!874445)))

(declare-fun res!1072348 () Bool)

(assert (=> b!1568559 (=> (not res!1072348) (not e!874445))))

(assert (=> b!1568559 (= res!1072348 (bvslt (_1!12746 (h!38328 (insertStrictlySorted!581 l!750 key1!37 v1!32))) (_1!12746 (h!38328 (t!51799 (insertStrictlySorted!581 l!750 key1!37 v1!32))))))))

(declare-fun b!1568560 () Bool)

(assert (=> b!1568560 (= e!874445 (isStrictlySorted!994 (t!51799 (insertStrictlySorted!581 l!750 key1!37 v1!32))))))

(assert (= (and d!163689 (not res!1072347)) b!1568559))

(assert (= (and b!1568559 res!1072348) b!1568560))

(declare-fun m!1443223 () Bool)

(assert (=> b!1568560 m!1443223))

(assert (=> b!1568528 d!163689))

(declare-fun b!1568631 () Bool)

(declare-fun e!874489 () List!36884)

(declare-fun call!71956 () List!36884)

(assert (=> b!1568631 (= e!874489 call!71956)))

(declare-fun b!1568632 () Bool)

(declare-fun e!874486 () List!36884)

(declare-fun call!71955 () List!36884)

(assert (=> b!1568632 (= e!874486 call!71955)))

(declare-fun b!1568633 () Bool)

(assert (=> b!1568633 (= e!874489 call!71956)))

(declare-fun d!163691 () Bool)

(declare-fun e!874487 () Bool)

(assert (=> d!163691 e!874487))

(declare-fun res!1072371 () Bool)

(assert (=> d!163691 (=> (not res!1072371) (not e!874487))))

(declare-fun lt!673157 () List!36884)

(assert (=> d!163691 (= res!1072371 (isStrictlySorted!994 lt!673157))))

(assert (=> d!163691 (= lt!673157 e!874486)))

(declare-fun c!144495 () Bool)

(assert (=> d!163691 (= c!144495 (and ((_ is Cons!36880) l!750) (bvslt (_1!12746 (h!38328 l!750)) key1!37)))))

(assert (=> d!163691 (isStrictlySorted!994 l!750)))

(assert (=> d!163691 (= (insertStrictlySorted!581 l!750 key1!37 v1!32) lt!673157)))

(declare-fun b!1568634 () Bool)

(declare-fun e!874490 () List!36884)

(declare-fun call!71957 () List!36884)

(assert (=> b!1568634 (= e!874490 call!71957)))

(declare-fun b!1568635 () Bool)

(declare-fun res!1072372 () Bool)

(assert (=> b!1568635 (=> (not res!1072372) (not e!874487))))

(declare-fun containsKey!855 (List!36884 (_ BitVec 64)) Bool)

(assert (=> b!1568635 (= res!1072372 (containsKey!855 lt!673157 key1!37))))

(declare-fun b!1568636 () Bool)

(declare-fun contains!10433 (List!36884 tuple2!25472) Bool)

(assert (=> b!1568636 (= e!874487 (contains!10433 lt!673157 (tuple2!25473 key1!37 v1!32)))))

(declare-fun bm!71952 () Bool)

(assert (=> bm!71952 (= call!71957 call!71955)))

(declare-fun bm!71953 () Bool)

(declare-fun e!874488 () List!36884)

(declare-fun $colon$colon!991 (List!36884 tuple2!25472) List!36884)

(assert (=> bm!71953 (= call!71955 ($colon$colon!991 e!874488 (ite c!144495 (h!38328 l!750) (tuple2!25473 key1!37 v1!32))))))

(declare-fun c!144496 () Bool)

(assert (=> bm!71953 (= c!144496 c!144495)))

(declare-fun b!1568637 () Bool)

(assert (=> b!1568637 (= e!874486 e!874490)))

(declare-fun c!144493 () Bool)

(assert (=> b!1568637 (= c!144493 (and ((_ is Cons!36880) l!750) (= (_1!12746 (h!38328 l!750)) key1!37)))))

(declare-fun c!144494 () Bool)

(declare-fun b!1568638 () Bool)

(assert (=> b!1568638 (= e!874488 (ite c!144493 (t!51799 l!750) (ite c!144494 (Cons!36880 (h!38328 l!750) (t!51799 l!750)) Nil!36881)))))

(declare-fun b!1568639 () Bool)

(assert (=> b!1568639 (= c!144494 (and ((_ is Cons!36880) l!750) (bvsgt (_1!12746 (h!38328 l!750)) key1!37)))))

(assert (=> b!1568639 (= e!874490 e!874489)))

(declare-fun b!1568640 () Bool)

(assert (=> b!1568640 (= e!874488 (insertStrictlySorted!581 (t!51799 l!750) key1!37 v1!32))))

(declare-fun bm!71954 () Bool)

(assert (=> bm!71954 (= call!71956 call!71957)))

(assert (= (and d!163691 c!144495) b!1568632))

(assert (= (and d!163691 (not c!144495)) b!1568637))

(assert (= (and b!1568637 c!144493) b!1568634))

(assert (= (and b!1568637 (not c!144493)) b!1568639))

(assert (= (and b!1568639 c!144494) b!1568631))

(assert (= (and b!1568639 (not c!144494)) b!1568633))

(assert (= (or b!1568631 b!1568633) bm!71954))

(assert (= (or b!1568634 bm!71954) bm!71952))

(assert (= (or b!1568632 bm!71952) bm!71953))

(assert (= (and bm!71953 c!144496) b!1568640))

(assert (= (and bm!71953 (not c!144496)) b!1568638))

(assert (= (and d!163691 res!1072371) b!1568635))

(assert (= (and b!1568635 res!1072372) b!1568636))

(assert (=> b!1568640 m!1443185))

(declare-fun m!1443251 () Bool)

(assert (=> b!1568635 m!1443251))

(declare-fun m!1443253 () Bool)

(assert (=> bm!71953 m!1443253))

(declare-fun m!1443255 () Bool)

(assert (=> b!1568636 m!1443255))

(declare-fun m!1443257 () Bool)

(assert (=> d!163691 m!1443257))

(assert (=> d!163691 m!1443197))

(assert (=> b!1568528 d!163691))

(declare-fun b!1568651 () Bool)

(declare-fun e!874499 () List!36884)

(declare-fun call!71962 () List!36884)

(assert (=> b!1568651 (= e!874499 call!71962)))

(declare-fun b!1568652 () Bool)

(declare-fun e!874496 () List!36884)

(declare-fun call!71961 () List!36884)

(assert (=> b!1568652 (= e!874496 call!71961)))

(declare-fun b!1568653 () Bool)

(assert (=> b!1568653 (= e!874499 call!71962)))

(declare-fun d!163707 () Bool)

(declare-fun e!874497 () Bool)

(assert (=> d!163707 e!874497))

(declare-fun res!1072375 () Bool)

(assert (=> d!163707 (=> (not res!1072375) (not e!874497))))

(declare-fun lt!673159 () List!36884)

(assert (=> d!163707 (= res!1072375 (isStrictlySorted!994 lt!673159))))

(assert (=> d!163707 (= lt!673159 e!874496)))

(declare-fun c!144503 () Bool)

(assert (=> d!163707 (= c!144503 (and ((_ is Cons!36880) (insertStrictlySorted!581 (t!51799 l!750) key1!37 v1!32)) (bvslt (_1!12746 (h!38328 (insertStrictlySorted!581 (t!51799 l!750) key1!37 v1!32))) key2!21)))))

(assert (=> d!163707 (isStrictlySorted!994 (insertStrictlySorted!581 (t!51799 l!750) key1!37 v1!32))))

(assert (=> d!163707 (= (insertStrictlySorted!581 (insertStrictlySorted!581 (t!51799 l!750) key1!37 v1!32) key2!21 v2!10) lt!673159)))

(declare-fun b!1568654 () Bool)

(declare-fun e!874500 () List!36884)

(declare-fun call!71963 () List!36884)

(assert (=> b!1568654 (= e!874500 call!71963)))

(declare-fun b!1568655 () Bool)

(declare-fun res!1072376 () Bool)

(assert (=> b!1568655 (=> (not res!1072376) (not e!874497))))

(assert (=> b!1568655 (= res!1072376 (containsKey!855 lt!673159 key2!21))))

(declare-fun b!1568656 () Bool)

(assert (=> b!1568656 (= e!874497 (contains!10433 lt!673159 (tuple2!25473 key2!21 v2!10)))))

(declare-fun bm!71958 () Bool)

(assert (=> bm!71958 (= call!71963 call!71961)))

(declare-fun e!874498 () List!36884)

(declare-fun bm!71959 () Bool)

(assert (=> bm!71959 (= call!71961 ($colon$colon!991 e!874498 (ite c!144503 (h!38328 (insertStrictlySorted!581 (t!51799 l!750) key1!37 v1!32)) (tuple2!25473 key2!21 v2!10))))))

(declare-fun c!144504 () Bool)

(assert (=> bm!71959 (= c!144504 c!144503)))

(declare-fun b!1568657 () Bool)

(assert (=> b!1568657 (= e!874496 e!874500)))

(declare-fun c!144501 () Bool)

(assert (=> b!1568657 (= c!144501 (and ((_ is Cons!36880) (insertStrictlySorted!581 (t!51799 l!750) key1!37 v1!32)) (= (_1!12746 (h!38328 (insertStrictlySorted!581 (t!51799 l!750) key1!37 v1!32))) key2!21)))))

(declare-fun b!1568658 () Bool)

(declare-fun c!144502 () Bool)

(assert (=> b!1568658 (= e!874498 (ite c!144501 (t!51799 (insertStrictlySorted!581 (t!51799 l!750) key1!37 v1!32)) (ite c!144502 (Cons!36880 (h!38328 (insertStrictlySorted!581 (t!51799 l!750) key1!37 v1!32)) (t!51799 (insertStrictlySorted!581 (t!51799 l!750) key1!37 v1!32))) Nil!36881)))))

(declare-fun b!1568659 () Bool)

(assert (=> b!1568659 (= c!144502 (and ((_ is Cons!36880) (insertStrictlySorted!581 (t!51799 l!750) key1!37 v1!32)) (bvsgt (_1!12746 (h!38328 (insertStrictlySorted!581 (t!51799 l!750) key1!37 v1!32))) key2!21)))))

(assert (=> b!1568659 (= e!874500 e!874499)))

(declare-fun b!1568660 () Bool)

(assert (=> b!1568660 (= e!874498 (insertStrictlySorted!581 (t!51799 (insertStrictlySorted!581 (t!51799 l!750) key1!37 v1!32)) key2!21 v2!10))))

(declare-fun bm!71960 () Bool)

(assert (=> bm!71960 (= call!71962 call!71963)))

(assert (= (and d!163707 c!144503) b!1568652))

(assert (= (and d!163707 (not c!144503)) b!1568657))

(assert (= (and b!1568657 c!144501) b!1568654))

(assert (= (and b!1568657 (not c!144501)) b!1568659))

(assert (= (and b!1568659 c!144502) b!1568651))

(assert (= (and b!1568659 (not c!144502)) b!1568653))

(assert (= (or b!1568651 b!1568653) bm!71960))

(assert (= (or b!1568654 bm!71960) bm!71958))

(assert (= (or b!1568652 bm!71958) bm!71959))

(assert (= (and bm!71959 c!144504) b!1568660))

(assert (= (and bm!71959 (not c!144504)) b!1568658))

(assert (= (and d!163707 res!1072375) b!1568655))

(assert (= (and b!1568655 res!1072376) b!1568656))

(declare-fun m!1443269 () Bool)

(assert (=> b!1568660 m!1443269))

(declare-fun m!1443271 () Bool)

(assert (=> b!1568655 m!1443271))

(declare-fun m!1443273 () Bool)

(assert (=> bm!71959 m!1443273))

(declare-fun m!1443275 () Bool)

(assert (=> b!1568656 m!1443275))

(declare-fun m!1443277 () Bool)

(assert (=> d!163707 m!1443277))

(assert (=> d!163707 m!1443185))

(declare-fun m!1443279 () Bool)

(assert (=> d!163707 m!1443279))

(assert (=> b!1568528 d!163707))

(declare-fun b!1568671 () Bool)

(declare-fun e!874509 () List!36884)

(declare-fun call!71968 () List!36884)

(assert (=> b!1568671 (= e!874509 call!71968)))

(declare-fun b!1568672 () Bool)

(declare-fun e!874506 () List!36884)

(declare-fun call!71967 () List!36884)

(assert (=> b!1568672 (= e!874506 call!71967)))

(declare-fun b!1568673 () Bool)

(assert (=> b!1568673 (= e!874509 call!71968)))

(declare-fun d!163711 () Bool)

(declare-fun e!874507 () Bool)

(assert (=> d!163711 e!874507))

(declare-fun res!1072379 () Bool)

(assert (=> d!163711 (=> (not res!1072379) (not e!874507))))

(declare-fun lt!673161 () List!36884)

(assert (=> d!163711 (= res!1072379 (isStrictlySorted!994 lt!673161))))

(assert (=> d!163711 (= lt!673161 e!874506)))

(declare-fun c!144511 () Bool)

(assert (=> d!163711 (= c!144511 (and ((_ is Cons!36880) (t!51799 l!750)) (bvslt (_1!12746 (h!38328 (t!51799 l!750))) key2!21)))))

(assert (=> d!163711 (isStrictlySorted!994 (t!51799 l!750))))

(assert (=> d!163711 (= (insertStrictlySorted!581 (t!51799 l!750) key2!21 v2!10) lt!673161)))

(declare-fun b!1568674 () Bool)

(declare-fun e!874510 () List!36884)

(declare-fun call!71969 () List!36884)

(assert (=> b!1568674 (= e!874510 call!71969)))

(declare-fun b!1568675 () Bool)

(declare-fun res!1072380 () Bool)

(assert (=> b!1568675 (=> (not res!1072380) (not e!874507))))

(assert (=> b!1568675 (= res!1072380 (containsKey!855 lt!673161 key2!21))))

(declare-fun b!1568676 () Bool)

(assert (=> b!1568676 (= e!874507 (contains!10433 lt!673161 (tuple2!25473 key2!21 v2!10)))))

(declare-fun bm!71964 () Bool)

(assert (=> bm!71964 (= call!71969 call!71967)))

(declare-fun bm!71965 () Bool)

(declare-fun e!874508 () List!36884)

(assert (=> bm!71965 (= call!71967 ($colon$colon!991 e!874508 (ite c!144511 (h!38328 (t!51799 l!750)) (tuple2!25473 key2!21 v2!10))))))

(declare-fun c!144512 () Bool)

(assert (=> bm!71965 (= c!144512 c!144511)))

(declare-fun b!1568677 () Bool)

(assert (=> b!1568677 (= e!874506 e!874510)))

(declare-fun c!144509 () Bool)

(assert (=> b!1568677 (= c!144509 (and ((_ is Cons!36880) (t!51799 l!750)) (= (_1!12746 (h!38328 (t!51799 l!750))) key2!21)))))

(declare-fun b!1568678 () Bool)

(declare-fun c!144510 () Bool)

(assert (=> b!1568678 (= e!874508 (ite c!144509 (t!51799 (t!51799 l!750)) (ite c!144510 (Cons!36880 (h!38328 (t!51799 l!750)) (t!51799 (t!51799 l!750))) Nil!36881)))))

(declare-fun b!1568679 () Bool)

(assert (=> b!1568679 (= c!144510 (and ((_ is Cons!36880) (t!51799 l!750)) (bvsgt (_1!12746 (h!38328 (t!51799 l!750))) key2!21)))))

(assert (=> b!1568679 (= e!874510 e!874509)))

(declare-fun b!1568680 () Bool)

(assert (=> b!1568680 (= e!874508 (insertStrictlySorted!581 (t!51799 (t!51799 l!750)) key2!21 v2!10))))

(declare-fun bm!71966 () Bool)

(assert (=> bm!71966 (= call!71968 call!71969)))

(assert (= (and d!163711 c!144511) b!1568672))

(assert (= (and d!163711 (not c!144511)) b!1568677))

(assert (= (and b!1568677 c!144509) b!1568674))

(assert (= (and b!1568677 (not c!144509)) b!1568679))

(assert (= (and b!1568679 c!144510) b!1568671))

(assert (= (and b!1568679 (not c!144510)) b!1568673))

(assert (= (or b!1568671 b!1568673) bm!71966))

(assert (= (or b!1568674 bm!71966) bm!71964))

(assert (= (or b!1568672 bm!71964) bm!71965))

(assert (= (and bm!71965 c!144512) b!1568680))

(assert (= (and bm!71965 (not c!144512)) b!1568678))

(assert (= (and d!163711 res!1072379) b!1568675))

(assert (= (and b!1568675 res!1072380) b!1568676))

(declare-fun m!1443293 () Bool)

(assert (=> b!1568680 m!1443293))

(declare-fun m!1443295 () Bool)

(assert (=> b!1568675 m!1443295))

(declare-fun m!1443297 () Bool)

(assert (=> bm!71965 m!1443297))

(declare-fun m!1443299 () Bool)

(assert (=> b!1568676 m!1443299))

(declare-fun m!1443301 () Bool)

(assert (=> d!163711 m!1443301))

(assert (=> d!163711 m!1443195))

(assert (=> b!1568528 d!163711))

(declare-fun b!1568703 () Bool)

(declare-fun e!874525 () List!36884)

(declare-fun call!71976 () List!36884)

(assert (=> b!1568703 (= e!874525 call!71976)))

(declare-fun b!1568704 () Bool)

(declare-fun e!874522 () List!36884)

(declare-fun call!71975 () List!36884)

(assert (=> b!1568704 (= e!874522 call!71975)))

(declare-fun b!1568705 () Bool)

(assert (=> b!1568705 (= e!874525 call!71976)))

(declare-fun d!163715 () Bool)

(declare-fun e!874523 () Bool)

(assert (=> d!163715 e!874523))

(declare-fun res!1072383 () Bool)

(assert (=> d!163715 (=> (not res!1072383) (not e!874523))))

(declare-fun lt!673165 () List!36884)

(assert (=> d!163715 (= res!1072383 (isStrictlySorted!994 lt!673165))))

(assert (=> d!163715 (= lt!673165 e!874522)))

(declare-fun c!144525 () Bool)

(assert (=> d!163715 (= c!144525 (and ((_ is Cons!36880) (insertStrictlySorted!581 (t!51799 l!750) key2!21 v2!10)) (bvslt (_1!12746 (h!38328 (insertStrictlySorted!581 (t!51799 l!750) key2!21 v2!10))) key1!37)))))

(assert (=> d!163715 (isStrictlySorted!994 (insertStrictlySorted!581 (t!51799 l!750) key2!21 v2!10))))

(assert (=> d!163715 (= (insertStrictlySorted!581 (insertStrictlySorted!581 (t!51799 l!750) key2!21 v2!10) key1!37 v1!32) lt!673165)))

(declare-fun b!1568706 () Bool)

(declare-fun e!874526 () List!36884)

(declare-fun call!71977 () List!36884)

(assert (=> b!1568706 (= e!874526 call!71977)))

(declare-fun b!1568707 () Bool)

(declare-fun res!1072384 () Bool)

(assert (=> b!1568707 (=> (not res!1072384) (not e!874523))))

(assert (=> b!1568707 (= res!1072384 (containsKey!855 lt!673165 key1!37))))

(declare-fun b!1568708 () Bool)

(assert (=> b!1568708 (= e!874523 (contains!10433 lt!673165 (tuple2!25473 key1!37 v1!32)))))

(declare-fun bm!71970 () Bool)

(assert (=> bm!71970 (= call!71977 call!71975)))

(declare-fun bm!71971 () Bool)

(declare-fun e!874524 () List!36884)

(assert (=> bm!71971 (= call!71975 ($colon$colon!991 e!874524 (ite c!144525 (h!38328 (insertStrictlySorted!581 (t!51799 l!750) key2!21 v2!10)) (tuple2!25473 key1!37 v1!32))))))

(declare-fun c!144526 () Bool)

(assert (=> bm!71971 (= c!144526 c!144525)))

(declare-fun b!1568709 () Bool)

(assert (=> b!1568709 (= e!874522 e!874526)))

(declare-fun c!144523 () Bool)

(assert (=> b!1568709 (= c!144523 (and ((_ is Cons!36880) (insertStrictlySorted!581 (t!51799 l!750) key2!21 v2!10)) (= (_1!12746 (h!38328 (insertStrictlySorted!581 (t!51799 l!750) key2!21 v2!10))) key1!37)))))

(declare-fun b!1568710 () Bool)

(declare-fun c!144524 () Bool)

(assert (=> b!1568710 (= e!874524 (ite c!144523 (t!51799 (insertStrictlySorted!581 (t!51799 l!750) key2!21 v2!10)) (ite c!144524 (Cons!36880 (h!38328 (insertStrictlySorted!581 (t!51799 l!750) key2!21 v2!10)) (t!51799 (insertStrictlySorted!581 (t!51799 l!750) key2!21 v2!10))) Nil!36881)))))

(declare-fun b!1568711 () Bool)

(assert (=> b!1568711 (= c!144524 (and ((_ is Cons!36880) (insertStrictlySorted!581 (t!51799 l!750) key2!21 v2!10)) (bvsgt (_1!12746 (h!38328 (insertStrictlySorted!581 (t!51799 l!750) key2!21 v2!10))) key1!37)))))

(assert (=> b!1568711 (= e!874526 e!874525)))

(declare-fun b!1568712 () Bool)

(assert (=> b!1568712 (= e!874524 (insertStrictlySorted!581 (t!51799 (insertStrictlySorted!581 (t!51799 l!750) key2!21 v2!10)) key1!37 v1!32))))

(declare-fun bm!71974 () Bool)

(assert (=> bm!71974 (= call!71976 call!71977)))

(assert (= (and d!163715 c!144525) b!1568704))

(assert (= (and d!163715 (not c!144525)) b!1568709))

(assert (= (and b!1568709 c!144523) b!1568706))

(assert (= (and b!1568709 (not c!144523)) b!1568711))

(assert (= (and b!1568711 c!144524) b!1568703))

(assert (= (and b!1568711 (not c!144524)) b!1568705))

(assert (= (or b!1568703 b!1568705) bm!71974))

(assert (= (or b!1568706 bm!71974) bm!71970))

(assert (= (or b!1568704 bm!71970) bm!71971))

(assert (= (and bm!71971 c!144526) b!1568712))

(assert (= (and bm!71971 (not c!144526)) b!1568710))

(assert (= (and d!163715 res!1072383) b!1568707))

(assert (= (and b!1568707 res!1072384) b!1568708))

(declare-fun m!1443315 () Bool)

(assert (=> b!1568712 m!1443315))

(declare-fun m!1443317 () Bool)

(assert (=> b!1568707 m!1443317))

(declare-fun m!1443319 () Bool)

(assert (=> bm!71971 m!1443319))

(declare-fun m!1443321 () Bool)

(assert (=> b!1568708 m!1443321))

(declare-fun m!1443323 () Bool)

(assert (=> d!163715 m!1443323))

(assert (=> d!163715 m!1443181))

(declare-fun m!1443325 () Bool)

(assert (=> d!163715 m!1443325))

(assert (=> b!1568528 d!163715))

(declare-fun b!1568721 () Bool)

(declare-fun e!874536 () List!36884)

(declare-fun call!71981 () List!36884)

(assert (=> b!1568721 (= e!874536 call!71981)))

(declare-fun b!1568722 () Bool)

(declare-fun e!874533 () List!36884)

(declare-fun call!71980 () List!36884)

(assert (=> b!1568722 (= e!874533 call!71980)))

(declare-fun b!1568723 () Bool)

(assert (=> b!1568723 (= e!874536 call!71981)))

(declare-fun d!163721 () Bool)

(declare-fun e!874534 () Bool)

(assert (=> d!163721 e!874534))

(declare-fun res!1072389 () Bool)

(assert (=> d!163721 (=> (not res!1072389) (not e!874534))))

(declare-fun lt!673166 () List!36884)

(assert (=> d!163721 (= res!1072389 (isStrictlySorted!994 lt!673166))))

(assert (=> d!163721 (= lt!673166 e!874533)))

(declare-fun c!144529 () Bool)

(assert (=> d!163721 (= c!144529 (and ((_ is Cons!36880) (t!51799 l!750)) (bvslt (_1!12746 (h!38328 (t!51799 l!750))) key1!37)))))

(assert (=> d!163721 (isStrictlySorted!994 (t!51799 l!750))))

(assert (=> d!163721 (= (insertStrictlySorted!581 (t!51799 l!750) key1!37 v1!32) lt!673166)))

(declare-fun b!1568724 () Bool)

(declare-fun e!874537 () List!36884)

(declare-fun call!71982 () List!36884)

(assert (=> b!1568724 (= e!874537 call!71982)))

(declare-fun b!1568725 () Bool)

(declare-fun res!1072390 () Bool)

(assert (=> b!1568725 (=> (not res!1072390) (not e!874534))))

(assert (=> b!1568725 (= res!1072390 (containsKey!855 lt!673166 key1!37))))

(declare-fun b!1568726 () Bool)

(assert (=> b!1568726 (= e!874534 (contains!10433 lt!673166 (tuple2!25473 key1!37 v1!32)))))

(declare-fun bm!71977 () Bool)

(assert (=> bm!71977 (= call!71982 call!71980)))

(declare-fun bm!71978 () Bool)

(declare-fun e!874535 () List!36884)

(assert (=> bm!71978 (= call!71980 ($colon$colon!991 e!874535 (ite c!144529 (h!38328 (t!51799 l!750)) (tuple2!25473 key1!37 v1!32))))))

(declare-fun c!144530 () Bool)

(assert (=> bm!71978 (= c!144530 c!144529)))

(declare-fun b!1568727 () Bool)

(assert (=> b!1568727 (= e!874533 e!874537)))

(declare-fun c!144527 () Bool)

(assert (=> b!1568727 (= c!144527 (and ((_ is Cons!36880) (t!51799 l!750)) (= (_1!12746 (h!38328 (t!51799 l!750))) key1!37)))))

(declare-fun c!144528 () Bool)

(declare-fun b!1568728 () Bool)

(assert (=> b!1568728 (= e!874535 (ite c!144527 (t!51799 (t!51799 l!750)) (ite c!144528 (Cons!36880 (h!38328 (t!51799 l!750)) (t!51799 (t!51799 l!750))) Nil!36881)))))

(declare-fun b!1568729 () Bool)

(assert (=> b!1568729 (= c!144528 (and ((_ is Cons!36880) (t!51799 l!750)) (bvsgt (_1!12746 (h!38328 (t!51799 l!750))) key1!37)))))

(assert (=> b!1568729 (= e!874537 e!874536)))

(declare-fun b!1568730 () Bool)

(assert (=> b!1568730 (= e!874535 (insertStrictlySorted!581 (t!51799 (t!51799 l!750)) key1!37 v1!32))))

(declare-fun bm!71979 () Bool)

(assert (=> bm!71979 (= call!71981 call!71982)))

(assert (= (and d!163721 c!144529) b!1568722))

(assert (= (and d!163721 (not c!144529)) b!1568727))

(assert (= (and b!1568727 c!144527) b!1568724))

(assert (= (and b!1568727 (not c!144527)) b!1568729))

(assert (= (and b!1568729 c!144528) b!1568721))

(assert (= (and b!1568729 (not c!144528)) b!1568723))

(assert (= (or b!1568721 b!1568723) bm!71979))

(assert (= (or b!1568724 bm!71979) bm!71977))

(assert (= (or b!1568722 bm!71977) bm!71978))

(assert (= (and bm!71978 c!144530) b!1568730))

(assert (= (and bm!71978 (not c!144530)) b!1568728))

(assert (= (and d!163721 res!1072389) b!1568725))

(assert (= (and b!1568725 res!1072390) b!1568726))

(declare-fun m!1443327 () Bool)

(assert (=> b!1568730 m!1443327))

(declare-fun m!1443329 () Bool)

(assert (=> b!1568725 m!1443329))

(declare-fun m!1443331 () Bool)

(assert (=> bm!71978 m!1443331))

(declare-fun m!1443333 () Bool)

(assert (=> b!1568726 m!1443333))

(declare-fun m!1443335 () Bool)

(assert (=> d!163721 m!1443335))

(assert (=> d!163721 m!1443195))

(assert (=> b!1568528 d!163721))

(declare-fun d!163723 () Bool)

(declare-fun res!1072393 () Bool)

(declare-fun e!874543 () Bool)

(assert (=> d!163723 (=> res!1072393 e!874543)))

(assert (=> d!163723 (= res!1072393 (or ((_ is Nil!36881) (t!51799 l!750)) ((_ is Nil!36881) (t!51799 (t!51799 l!750)))))))

(assert (=> d!163723 (= (isStrictlySorted!994 (t!51799 l!750)) e!874543)))

(declare-fun b!1568736 () Bool)

(declare-fun e!874544 () Bool)

(assert (=> b!1568736 (= e!874543 e!874544)))

(declare-fun res!1072394 () Bool)

(assert (=> b!1568736 (=> (not res!1072394) (not e!874544))))

(assert (=> b!1568736 (= res!1072394 (bvslt (_1!12746 (h!38328 (t!51799 l!750))) (_1!12746 (h!38328 (t!51799 (t!51799 l!750))))))))

(declare-fun b!1568737 () Bool)

(assert (=> b!1568737 (= e!874544 (isStrictlySorted!994 (t!51799 (t!51799 l!750))))))

(assert (= (and d!163723 (not res!1072393)) b!1568736))

(assert (= (and b!1568736 res!1072394) b!1568737))

(declare-fun m!1443337 () Bool)

(assert (=> b!1568737 m!1443337))

(assert (=> b!1568529 d!163723))

(declare-fun b!1568746 () Bool)

(declare-fun e!874547 () Bool)

(declare-fun tp!114061 () Bool)

(assert (=> b!1568746 (= e!874547 (and tp_is_empty!39033 tp!114061))))

(assert (=> b!1568527 (= tp!114052 e!874547)))

(assert (= (and b!1568527 ((_ is Cons!36880) (t!51799 l!750))) b!1568746))

(check-sat (not b!1568675) (not b!1568660) (not b!1568730) (not d!163715) (not b!1568746) (not b!1568640) (not b!1568552) (not d!163711) (not b!1568707) (not b!1568635) (not bm!71965) tp_is_empty!39033 (not bm!71978) (not d!163707) (not d!163691) (not bm!71953) (not b!1568726) (not b!1568725) (not b!1568656) (not b!1568636) (not b!1568737) (not b!1568712) (not b!1568676) (not b!1568680) (not d!163721) (not bm!71959) (not b!1568560) (not d!163683) (not bm!71971) (not b!1568708) (not b!1568655))
(check-sat)
