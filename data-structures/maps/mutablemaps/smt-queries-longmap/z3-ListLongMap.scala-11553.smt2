; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134568 () Bool)

(assert start!134568)

(declare-datatypes ((B!2554 0))(
  ( (B!2555 (val!19639 Int)) )
))
(declare-fun v1!32 () B!2554)

(declare-fun v2!10 () B!2554)

(declare-fun e!875645 () Bool)

(declare-datatypes ((tuple2!25544 0))(
  ( (tuple2!25545 (_1!12782 (_ BitVec 64)) (_2!12782 B!2554)) )
))
(declare-datatypes ((List!36920 0))(
  ( (Nil!36917) (Cons!36916 (h!38364 tuple2!25544) (t!51838 List!36920)) )
))
(declare-fun l!750 () List!36920)

(declare-fun b!1570552 () Bool)

(declare-fun key2!21 () (_ BitVec 64))

(declare-fun key1!37 () (_ BitVec 64))

(declare-fun insertStrictlySorted!599 (List!36920 (_ BitVec 64) B!2554) List!36920)

(assert (=> b!1570552 (= e!875645 (not (= (insertStrictlySorted!599 (insertStrictlySorted!599 l!750 key1!37 v1!32) key2!21 v2!10) (insertStrictlySorted!599 (insertStrictlySorted!599 l!750 key2!21 v2!10) key1!37 v1!32))))))

(declare-fun b!1570551 () Bool)

(declare-fun res!1073205 () Bool)

(assert (=> b!1570551 (=> (not res!1073205) (not e!875645))))

(get-info :version)

(assert (=> b!1570551 (= res!1073205 (or (not ((_ is Cons!36916) l!750)) (bvsge (_1!12782 (h!38364 l!750)) key1!37) (bvsge (_1!12782 (h!38364 l!750)) key2!21)))))

(declare-fun b!1570550 () Bool)

(declare-fun res!1073207 () Bool)

(assert (=> b!1570550 (=> (not res!1073207) (not e!875645))))

(declare-fun isStrictlySorted!1021 (List!36920) Bool)

(assert (=> b!1570550 (= res!1073207 (isStrictlySorted!1021 l!750))))

(declare-fun res!1073206 () Bool)

(assert (=> start!134568 (=> (not res!1073206) (not e!875645))))

(assert (=> start!134568 (= res!1073206 (not (= key1!37 key2!21)))))

(assert (=> start!134568 e!875645))

(declare-fun tp_is_empty!39105 () Bool)

(assert (=> start!134568 tp_is_empty!39105))

(declare-fun e!875646 () Bool)

(assert (=> start!134568 e!875646))

(assert (=> start!134568 true))

(declare-fun b!1570553 () Bool)

(declare-fun tp!114235 () Bool)

(assert (=> b!1570553 (= e!875646 (and tp_is_empty!39105 tp!114235))))

(assert (= (and start!134568 res!1073206) b!1570550))

(assert (= (and b!1570550 res!1073207) b!1570551))

(assert (= (and b!1570551 res!1073205) b!1570552))

(assert (= (and start!134568 ((_ is Cons!36916) l!750)) b!1570553))

(declare-fun m!1444649 () Bool)

(assert (=> b!1570552 m!1444649))

(assert (=> b!1570552 m!1444649))

(declare-fun m!1444651 () Bool)

(assert (=> b!1570552 m!1444651))

(declare-fun m!1444653 () Bool)

(assert (=> b!1570552 m!1444653))

(assert (=> b!1570552 m!1444653))

(declare-fun m!1444655 () Bool)

(assert (=> b!1570552 m!1444655))

(declare-fun m!1444657 () Bool)

(assert (=> b!1570550 m!1444657))

(check-sat (not b!1570550) (not b!1570552) (not b!1570553) tp_is_empty!39105)
(check-sat)
(get-model)

(declare-fun d!164225 () Bool)

(declare-fun res!1073226 () Bool)

(declare-fun e!875662 () Bool)

(assert (=> d!164225 (=> res!1073226 e!875662)))

(assert (=> d!164225 (= res!1073226 (or ((_ is Nil!36917) l!750) ((_ is Nil!36917) (t!51838 l!750))))))

(assert (=> d!164225 (= (isStrictlySorted!1021 l!750) e!875662)))

(declare-fun b!1570575 () Bool)

(declare-fun e!875664 () Bool)

(assert (=> b!1570575 (= e!875662 e!875664)))

(declare-fun res!1073228 () Bool)

(assert (=> b!1570575 (=> (not res!1073228) (not e!875664))))

(assert (=> b!1570575 (= res!1073228 (bvslt (_1!12782 (h!38364 l!750)) (_1!12782 (h!38364 (t!51838 l!750)))))))

(declare-fun b!1570577 () Bool)

(assert (=> b!1570577 (= e!875664 (isStrictlySorted!1021 (t!51838 l!750)))))

(assert (= (and d!164225 (not res!1073226)) b!1570575))

(assert (= (and b!1570575 res!1073228) b!1570577))

(declare-fun m!1444670 () Bool)

(assert (=> b!1570577 m!1444670))

(assert (=> b!1570550 d!164225))

(declare-fun bm!72271 () Bool)

(declare-fun call!72278 () List!36920)

(declare-fun call!72273 () List!36920)

(assert (=> bm!72271 (= call!72278 call!72273)))

(declare-fun b!1570637 () Bool)

(declare-fun e!875704 () List!36920)

(declare-fun call!72276 () List!36920)

(assert (=> b!1570637 (= e!875704 call!72276)))

(declare-fun b!1570639 () Bool)

(declare-fun e!875698 () List!36920)

(assert (=> b!1570639 (= e!875698 call!72273)))

(declare-fun b!1570641 () Bool)

(declare-fun e!875706 () List!36920)

(assert (=> b!1570641 (= e!875706 call!72278)))

(declare-fun b!1570642 () Bool)

(declare-fun e!875700 () List!36920)

(declare-fun c!144950 () Bool)

(declare-fun c!144946 () Bool)

(assert (=> b!1570642 (= e!875700 (ite c!144950 (t!51838 (insertStrictlySorted!599 l!750 key1!37 v1!32)) (ite c!144946 (Cons!36916 (h!38364 (insertStrictlySorted!599 l!750 key1!37 v1!32)) (t!51838 (insertStrictlySorted!599 l!750 key1!37 v1!32))) Nil!36917)))))

(declare-fun b!1570644 () Bool)

(assert (=> b!1570644 (= e!875698 e!875706)))

(assert (=> b!1570644 (= c!144950 (and ((_ is Cons!36916) (insertStrictlySorted!599 l!750 key1!37 v1!32)) (= (_1!12782 (h!38364 (insertStrictlySorted!599 l!750 key1!37 v1!32))) key2!21)))))

(declare-fun b!1570646 () Bool)

(assert (=> b!1570646 (= e!875704 call!72276)))

(declare-fun c!144944 () Bool)

(declare-fun bm!72274 () Bool)

(declare-fun $colon$colon!1003 (List!36920 tuple2!25544) List!36920)

(assert (=> bm!72274 (= call!72273 ($colon$colon!1003 e!875700 (ite c!144944 (h!38364 (insertStrictlySorted!599 l!750 key1!37 v1!32)) (tuple2!25545 key2!21 v2!10))))))

(declare-fun c!144948 () Bool)

(assert (=> bm!72274 (= c!144948 c!144944)))

(declare-fun bm!72275 () Bool)

(assert (=> bm!72275 (= call!72276 call!72278)))

(declare-fun e!875702 () Bool)

(declare-fun lt!673362 () List!36920)

(declare-fun b!1570651 () Bool)

(declare-fun contains!10447 (List!36920 tuple2!25544) Bool)

(assert (=> b!1570651 (= e!875702 (contains!10447 lt!673362 (tuple2!25545 key2!21 v2!10)))))

(declare-fun b!1570653 () Bool)

(assert (=> b!1570653 (= c!144946 (and ((_ is Cons!36916) (insertStrictlySorted!599 l!750 key1!37 v1!32)) (bvsgt (_1!12782 (h!38364 (insertStrictlySorted!599 l!750 key1!37 v1!32))) key2!21)))))

(assert (=> b!1570653 (= e!875706 e!875704)))

(declare-fun b!1570655 () Bool)

(declare-fun res!1073245 () Bool)

(assert (=> b!1570655 (=> (not res!1073245) (not e!875702))))

(declare-fun containsKey!871 (List!36920 (_ BitVec 64)) Bool)

(assert (=> b!1570655 (= res!1073245 (containsKey!871 lt!673362 key2!21))))

(declare-fun d!164233 () Bool)

(assert (=> d!164233 e!875702))

(declare-fun res!1073244 () Bool)

(assert (=> d!164233 (=> (not res!1073244) (not e!875702))))

(assert (=> d!164233 (= res!1073244 (isStrictlySorted!1021 lt!673362))))

(assert (=> d!164233 (= lt!673362 e!875698)))

(assert (=> d!164233 (= c!144944 (and ((_ is Cons!36916) (insertStrictlySorted!599 l!750 key1!37 v1!32)) (bvslt (_1!12782 (h!38364 (insertStrictlySorted!599 l!750 key1!37 v1!32))) key2!21)))))

(assert (=> d!164233 (isStrictlySorted!1021 (insertStrictlySorted!599 l!750 key1!37 v1!32))))

(assert (=> d!164233 (= (insertStrictlySorted!599 (insertStrictlySorted!599 l!750 key1!37 v1!32) key2!21 v2!10) lt!673362)))

(declare-fun b!1570648 () Bool)

(assert (=> b!1570648 (= e!875700 (insertStrictlySorted!599 (t!51838 (insertStrictlySorted!599 l!750 key1!37 v1!32)) key2!21 v2!10))))

(assert (= (and d!164233 c!144944) b!1570639))

(assert (= (and d!164233 (not c!144944)) b!1570644))

(assert (= (and b!1570644 c!144950) b!1570641))

(assert (= (and b!1570644 (not c!144950)) b!1570653))

(assert (= (and b!1570653 c!144946) b!1570637))

(assert (= (and b!1570653 (not c!144946)) b!1570646))

(assert (= (or b!1570637 b!1570646) bm!72275))

(assert (= (or b!1570641 bm!72275) bm!72271))

(assert (= (or b!1570639 bm!72271) bm!72274))

(assert (= (and bm!72274 c!144948) b!1570648))

(assert (= (and bm!72274 (not c!144948)) b!1570642))

(assert (= (and d!164233 res!1073244) b!1570655))

(assert (= (and b!1570655 res!1073245) b!1570651))

(declare-fun m!1444677 () Bool)

(assert (=> b!1570651 m!1444677))

(declare-fun m!1444681 () Bool)

(assert (=> b!1570648 m!1444681))

(declare-fun m!1444685 () Bool)

(assert (=> b!1570655 m!1444685))

(declare-fun m!1444689 () Bool)

(assert (=> bm!72274 m!1444689))

(declare-fun m!1444693 () Bool)

(assert (=> d!164233 m!1444693))

(assert (=> d!164233 m!1444649))

(declare-fun m!1444697 () Bool)

(assert (=> d!164233 m!1444697))

(assert (=> b!1570552 d!164233))

(declare-fun bm!72281 () Bool)

(declare-fun call!72288 () List!36920)

(declare-fun call!72283 () List!36920)

(assert (=> bm!72281 (= call!72288 call!72283)))

(declare-fun b!1570657 () Bool)

(declare-fun e!875714 () List!36920)

(declare-fun call!72286 () List!36920)

(assert (=> b!1570657 (= e!875714 call!72286)))

(declare-fun b!1570659 () Bool)

(declare-fun e!875708 () List!36920)

(assert (=> b!1570659 (= e!875708 call!72283)))

(declare-fun b!1570661 () Bool)

(declare-fun e!875716 () List!36920)

(assert (=> b!1570661 (= e!875716 call!72288)))

(declare-fun e!875710 () List!36920)

(declare-fun c!144958 () Bool)

(declare-fun c!144954 () Bool)

(declare-fun b!1570662 () Bool)

(assert (=> b!1570662 (= e!875710 (ite c!144958 (t!51838 l!750) (ite c!144954 (Cons!36916 (h!38364 l!750) (t!51838 l!750)) Nil!36917)))))

(declare-fun b!1570664 () Bool)

(assert (=> b!1570664 (= e!875708 e!875716)))

(assert (=> b!1570664 (= c!144958 (and ((_ is Cons!36916) l!750) (= (_1!12782 (h!38364 l!750)) key1!37)))))

(declare-fun b!1570666 () Bool)

(assert (=> b!1570666 (= e!875714 call!72286)))

(declare-fun c!144952 () Bool)

(declare-fun bm!72284 () Bool)

(assert (=> bm!72284 (= call!72283 ($colon$colon!1003 e!875710 (ite c!144952 (h!38364 l!750) (tuple2!25545 key1!37 v1!32))))))

(declare-fun c!144956 () Bool)

(assert (=> bm!72284 (= c!144956 c!144952)))

(declare-fun bm!72285 () Bool)

(assert (=> bm!72285 (= call!72286 call!72288)))

(declare-fun lt!673364 () List!36920)

(declare-fun b!1570671 () Bool)

(declare-fun e!875712 () Bool)

(assert (=> b!1570671 (= e!875712 (contains!10447 lt!673364 (tuple2!25545 key1!37 v1!32)))))

(declare-fun b!1570673 () Bool)

(assert (=> b!1570673 (= c!144954 (and ((_ is Cons!36916) l!750) (bvsgt (_1!12782 (h!38364 l!750)) key1!37)))))

(assert (=> b!1570673 (= e!875716 e!875714)))

(declare-fun b!1570675 () Bool)

(declare-fun res!1073249 () Bool)

(assert (=> b!1570675 (=> (not res!1073249) (not e!875712))))

(assert (=> b!1570675 (= res!1073249 (containsKey!871 lt!673364 key1!37))))

(declare-fun d!164239 () Bool)

(assert (=> d!164239 e!875712))

(declare-fun res!1073248 () Bool)

(assert (=> d!164239 (=> (not res!1073248) (not e!875712))))

(assert (=> d!164239 (= res!1073248 (isStrictlySorted!1021 lt!673364))))

(assert (=> d!164239 (= lt!673364 e!875708)))

(assert (=> d!164239 (= c!144952 (and ((_ is Cons!36916) l!750) (bvslt (_1!12782 (h!38364 l!750)) key1!37)))))

(assert (=> d!164239 (isStrictlySorted!1021 l!750)))

(assert (=> d!164239 (= (insertStrictlySorted!599 l!750 key1!37 v1!32) lt!673364)))

(declare-fun b!1570668 () Bool)

(assert (=> b!1570668 (= e!875710 (insertStrictlySorted!599 (t!51838 l!750) key1!37 v1!32))))

(assert (= (and d!164239 c!144952) b!1570659))

(assert (= (and d!164239 (not c!144952)) b!1570664))

(assert (= (and b!1570664 c!144958) b!1570661))

(assert (= (and b!1570664 (not c!144958)) b!1570673))

(assert (= (and b!1570673 c!144954) b!1570657))

(assert (= (and b!1570673 (not c!144954)) b!1570666))

(assert (= (or b!1570657 b!1570666) bm!72285))

(assert (= (or b!1570661 bm!72285) bm!72281))

(assert (= (or b!1570659 bm!72281) bm!72284))

(assert (= (and bm!72284 c!144956) b!1570668))

(assert (= (and bm!72284 (not c!144956)) b!1570662))

(assert (= (and d!164239 res!1073248) b!1570675))

(assert (= (and b!1570675 res!1073249) b!1570671))

(declare-fun m!1444701 () Bool)

(assert (=> b!1570671 m!1444701))

(declare-fun m!1444705 () Bool)

(assert (=> b!1570668 m!1444705))

(declare-fun m!1444707 () Bool)

(assert (=> b!1570675 m!1444707))

(declare-fun m!1444711 () Bool)

(assert (=> bm!72284 m!1444711))

(declare-fun m!1444715 () Bool)

(assert (=> d!164239 m!1444715))

(assert (=> d!164239 m!1444657))

(assert (=> b!1570552 d!164239))

(declare-fun bm!72289 () Bool)

(declare-fun call!72296 () List!36920)

(declare-fun call!72291 () List!36920)

(assert (=> bm!72289 (= call!72296 call!72291)))

(declare-fun b!1570681 () Bool)

(declare-fun e!875726 () List!36920)

(declare-fun call!72294 () List!36920)

(assert (=> b!1570681 (= e!875726 call!72294)))

(declare-fun b!1570683 () Bool)

(declare-fun e!875720 () List!36920)

(assert (=> b!1570683 (= e!875720 call!72291)))

(declare-fun b!1570685 () Bool)

(declare-fun e!875728 () List!36920)

(assert (=> b!1570685 (= e!875728 call!72296)))

(declare-fun c!144968 () Bool)

(declare-fun c!144964 () Bool)

(declare-fun b!1570686 () Bool)

(declare-fun e!875722 () List!36920)

(assert (=> b!1570686 (= e!875722 (ite c!144968 (t!51838 (insertStrictlySorted!599 l!750 key2!21 v2!10)) (ite c!144964 (Cons!36916 (h!38364 (insertStrictlySorted!599 l!750 key2!21 v2!10)) (t!51838 (insertStrictlySorted!599 l!750 key2!21 v2!10))) Nil!36917)))))

(declare-fun b!1570688 () Bool)

(assert (=> b!1570688 (= e!875720 e!875728)))

(assert (=> b!1570688 (= c!144968 (and ((_ is Cons!36916) (insertStrictlySorted!599 l!750 key2!21 v2!10)) (= (_1!12782 (h!38364 (insertStrictlySorted!599 l!750 key2!21 v2!10))) key1!37)))))

(declare-fun b!1570690 () Bool)

(assert (=> b!1570690 (= e!875726 call!72294)))

(declare-fun c!144962 () Bool)

(declare-fun bm!72292 () Bool)

(assert (=> bm!72292 (= call!72291 ($colon$colon!1003 e!875722 (ite c!144962 (h!38364 (insertStrictlySorted!599 l!750 key2!21 v2!10)) (tuple2!25545 key1!37 v1!32))))))

(declare-fun c!144966 () Bool)

(assert (=> bm!72292 (= c!144966 c!144962)))

(declare-fun bm!72293 () Bool)

(assert (=> bm!72293 (= call!72294 call!72296)))

(declare-fun e!875724 () Bool)

(declare-fun lt!673366 () List!36920)

(declare-fun b!1570695 () Bool)

(assert (=> b!1570695 (= e!875724 (contains!10447 lt!673366 (tuple2!25545 key1!37 v1!32)))))

(declare-fun b!1570697 () Bool)

(assert (=> b!1570697 (= c!144964 (and ((_ is Cons!36916) (insertStrictlySorted!599 l!750 key2!21 v2!10)) (bvsgt (_1!12782 (h!38364 (insertStrictlySorted!599 l!750 key2!21 v2!10))) key1!37)))))

(assert (=> b!1570697 (= e!875728 e!875726)))

(declare-fun b!1570699 () Bool)

(declare-fun res!1073253 () Bool)

(assert (=> b!1570699 (=> (not res!1073253) (not e!875724))))

(assert (=> b!1570699 (= res!1073253 (containsKey!871 lt!673366 key1!37))))

(declare-fun d!164243 () Bool)

(assert (=> d!164243 e!875724))

(declare-fun res!1073252 () Bool)

(assert (=> d!164243 (=> (not res!1073252) (not e!875724))))

(assert (=> d!164243 (= res!1073252 (isStrictlySorted!1021 lt!673366))))

(assert (=> d!164243 (= lt!673366 e!875720)))

(assert (=> d!164243 (= c!144962 (and ((_ is Cons!36916) (insertStrictlySorted!599 l!750 key2!21 v2!10)) (bvslt (_1!12782 (h!38364 (insertStrictlySorted!599 l!750 key2!21 v2!10))) key1!37)))))

(assert (=> d!164243 (isStrictlySorted!1021 (insertStrictlySorted!599 l!750 key2!21 v2!10))))

(assert (=> d!164243 (= (insertStrictlySorted!599 (insertStrictlySorted!599 l!750 key2!21 v2!10) key1!37 v1!32) lt!673366)))

(declare-fun b!1570692 () Bool)

(assert (=> b!1570692 (= e!875722 (insertStrictlySorted!599 (t!51838 (insertStrictlySorted!599 l!750 key2!21 v2!10)) key1!37 v1!32))))

(assert (= (and d!164243 c!144962) b!1570683))

(assert (= (and d!164243 (not c!144962)) b!1570688))

(assert (= (and b!1570688 c!144968) b!1570685))

(assert (= (and b!1570688 (not c!144968)) b!1570697))

(assert (= (and b!1570697 c!144964) b!1570681))

(assert (= (and b!1570697 (not c!144964)) b!1570690))

(assert (= (or b!1570681 b!1570690) bm!72293))

(assert (= (or b!1570685 bm!72293) bm!72289))

(assert (= (or b!1570683 bm!72289) bm!72292))

(assert (= (and bm!72292 c!144966) b!1570692))

(assert (= (and bm!72292 (not c!144966)) b!1570686))

(assert (= (and d!164243 res!1073252) b!1570699))

(assert (= (and b!1570699 res!1073253) b!1570695))

(declare-fun m!1444721 () Bool)

(assert (=> b!1570695 m!1444721))

(declare-fun m!1444725 () Bool)

(assert (=> b!1570692 m!1444725))

(declare-fun m!1444729 () Bool)

(assert (=> b!1570699 m!1444729))

(declare-fun m!1444733 () Bool)

(assert (=> bm!72292 m!1444733))

(declare-fun m!1444735 () Bool)

(assert (=> d!164243 m!1444735))

(assert (=> d!164243 m!1444653))

(declare-fun m!1444739 () Bool)

(assert (=> d!164243 m!1444739))

(assert (=> b!1570552 d!164243))

(declare-fun bm!72294 () Bool)

(declare-fun call!72299 () List!36920)

(declare-fun call!72297 () List!36920)

(assert (=> bm!72294 (= call!72299 call!72297)))

(declare-fun b!1570704 () Bool)

(declare-fun e!875735 () List!36920)

(declare-fun call!72298 () List!36920)

(assert (=> b!1570704 (= e!875735 call!72298)))

(declare-fun b!1570705 () Bool)

(declare-fun e!875731 () List!36920)

(assert (=> b!1570705 (= e!875731 call!72297)))

(declare-fun b!1570706 () Bool)

(declare-fun e!875736 () List!36920)

(assert (=> b!1570706 (= e!875736 call!72299)))

(declare-fun b!1570707 () Bool)

(declare-fun c!144971 () Bool)

(declare-fun e!875732 () List!36920)

(declare-fun c!144973 () Bool)

(assert (=> b!1570707 (= e!875732 (ite c!144973 (t!51838 l!750) (ite c!144971 (Cons!36916 (h!38364 l!750) (t!51838 l!750)) Nil!36917)))))

(declare-fun b!1570708 () Bool)

(assert (=> b!1570708 (= e!875731 e!875736)))

(assert (=> b!1570708 (= c!144973 (and ((_ is Cons!36916) l!750) (= (_1!12782 (h!38364 l!750)) key2!21)))))

(declare-fun b!1570709 () Bool)

(assert (=> b!1570709 (= e!875735 call!72298)))

(declare-fun c!144970 () Bool)

(declare-fun bm!72295 () Bool)

(assert (=> bm!72295 (= call!72297 ($colon$colon!1003 e!875732 (ite c!144970 (h!38364 l!750) (tuple2!25545 key2!21 v2!10))))))

(declare-fun c!144972 () Bool)

(assert (=> bm!72295 (= c!144972 c!144970)))

(declare-fun bm!72296 () Bool)

(assert (=> bm!72296 (= call!72298 call!72299)))

(declare-fun b!1570711 () Bool)

(declare-fun lt!673367 () List!36920)

(declare-fun e!875733 () Bool)

(assert (=> b!1570711 (= e!875733 (contains!10447 lt!673367 (tuple2!25545 key2!21 v2!10)))))

(declare-fun b!1570712 () Bool)

(assert (=> b!1570712 (= c!144971 (and ((_ is Cons!36916) l!750) (bvsgt (_1!12782 (h!38364 l!750)) key2!21)))))

(assert (=> b!1570712 (= e!875736 e!875735)))

(declare-fun b!1570713 () Bool)

(declare-fun res!1073260 () Bool)

(assert (=> b!1570713 (=> (not res!1073260) (not e!875733))))

(assert (=> b!1570713 (= res!1073260 (containsKey!871 lt!673367 key2!21))))

(declare-fun d!164245 () Bool)

(assert (=> d!164245 e!875733))

(declare-fun res!1073259 () Bool)

(assert (=> d!164245 (=> (not res!1073259) (not e!875733))))

(assert (=> d!164245 (= res!1073259 (isStrictlySorted!1021 lt!673367))))

(assert (=> d!164245 (= lt!673367 e!875731)))

(assert (=> d!164245 (= c!144970 (and ((_ is Cons!36916) l!750) (bvslt (_1!12782 (h!38364 l!750)) key2!21)))))

(assert (=> d!164245 (isStrictlySorted!1021 l!750)))

(assert (=> d!164245 (= (insertStrictlySorted!599 l!750 key2!21 v2!10) lt!673367)))

(declare-fun b!1570710 () Bool)

(assert (=> b!1570710 (= e!875732 (insertStrictlySorted!599 (t!51838 l!750) key2!21 v2!10))))

(assert (= (and d!164245 c!144970) b!1570705))

(assert (= (and d!164245 (not c!144970)) b!1570708))

(assert (= (and b!1570708 c!144973) b!1570706))

(assert (= (and b!1570708 (not c!144973)) b!1570712))

(assert (= (and b!1570712 c!144971) b!1570704))

(assert (= (and b!1570712 (not c!144971)) b!1570709))

(assert (= (or b!1570704 b!1570709) bm!72296))

(assert (= (or b!1570706 bm!72296) bm!72294))

(assert (= (or b!1570705 bm!72294) bm!72295))

(assert (= (and bm!72295 c!144972) b!1570710))

(assert (= (and bm!72295 (not c!144972)) b!1570707))

(assert (= (and d!164245 res!1073259) b!1570713))

(assert (= (and b!1570713 res!1073260) b!1570711))

(declare-fun m!1444745 () Bool)

(assert (=> b!1570711 m!1444745))

(declare-fun m!1444749 () Bool)

(assert (=> b!1570710 m!1444749))

(declare-fun m!1444751 () Bool)

(assert (=> b!1570713 m!1444751))

(declare-fun m!1444755 () Bool)

(assert (=> bm!72295 m!1444755))

(declare-fun m!1444759 () Bool)

(assert (=> d!164245 m!1444759))

(assert (=> d!164245 m!1444657))

(assert (=> b!1570552 d!164245))

(declare-fun b!1570732 () Bool)

(declare-fun e!875745 () Bool)

(declare-fun tp!114243 () Bool)

(assert (=> b!1570732 (= e!875745 (and tp_is_empty!39105 tp!114243))))

(assert (=> b!1570553 (= tp!114235 e!875745)))

(assert (= (and b!1570553 ((_ is Cons!36916) (t!51838 l!750))) b!1570732))

(check-sat (not b!1570732) tp_is_empty!39105 (not b!1570648) (not d!164245) (not b!1570699) (not d!164243) (not bm!72295) (not b!1570710) (not b!1570695) (not b!1570671) (not b!1570651) (not bm!72292) (not b!1570577) (not b!1570713) (not b!1570711) (not b!1570675) (not bm!72284) (not d!164239) (not d!164233) (not b!1570668) (not b!1570655) (not bm!72274) (not b!1570692))
(check-sat)
(get-model)

(declare-fun d!164255 () Bool)

(assert (=> d!164255 (= ($colon$colon!1003 e!875700 (ite c!144944 (h!38364 (insertStrictlySorted!599 l!750 key1!37 v1!32)) (tuple2!25545 key2!21 v2!10))) (Cons!36916 (ite c!144944 (h!38364 (insertStrictlySorted!599 l!750 key1!37 v1!32)) (tuple2!25545 key2!21 v2!10)) e!875700))))

(assert (=> bm!72274 d!164255))

(declare-fun lt!673375 () Bool)

(declare-fun d!164257 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!824 (List!36920) (InoxSet tuple2!25544))

(assert (=> d!164257 (= lt!673375 (select (content!824 lt!673364) (tuple2!25545 key1!37 v1!32)))))

(declare-fun e!875775 () Bool)

(assert (=> d!164257 (= lt!673375 e!875775)))

(declare-fun res!1073275 () Bool)

(assert (=> d!164257 (=> (not res!1073275) (not e!875775))))

(assert (=> d!164257 (= res!1073275 ((_ is Cons!36916) lt!673364))))

(assert (=> d!164257 (= (contains!10447 lt!673364 (tuple2!25545 key1!37 v1!32)) lt!673375)))

(declare-fun b!1570783 () Bool)

(declare-fun e!875774 () Bool)

(assert (=> b!1570783 (= e!875775 e!875774)))

(declare-fun res!1073276 () Bool)

(assert (=> b!1570783 (=> res!1073276 e!875774)))

(assert (=> b!1570783 (= res!1073276 (= (h!38364 lt!673364) (tuple2!25545 key1!37 v1!32)))))

(declare-fun b!1570784 () Bool)

(assert (=> b!1570784 (= e!875774 (contains!10447 (t!51838 lt!673364) (tuple2!25545 key1!37 v1!32)))))

(assert (= (and d!164257 res!1073275) b!1570783))

(assert (= (and b!1570783 (not res!1073276)) b!1570784))

(declare-fun m!1444807 () Bool)

(assert (=> d!164257 m!1444807))

(declare-fun m!1444809 () Bool)

(assert (=> d!164257 m!1444809))

(declare-fun m!1444811 () Bool)

(assert (=> b!1570784 m!1444811))

(assert (=> b!1570671 d!164257))

(declare-fun d!164263 () Bool)

(declare-fun res!1073291 () Bool)

(declare-fun e!875793 () Bool)

(assert (=> d!164263 (=> res!1073291 e!875793)))

(assert (=> d!164263 (= res!1073291 (and ((_ is Cons!36916) lt!673366) (= (_1!12782 (h!38364 lt!673366)) key1!37)))))

(assert (=> d!164263 (= (containsKey!871 lt!673366 key1!37) e!875793)))

(declare-fun b!1570807 () Bool)

(declare-fun e!875794 () Bool)

(assert (=> b!1570807 (= e!875793 e!875794)))

(declare-fun res!1073292 () Bool)

(assert (=> b!1570807 (=> (not res!1073292) (not e!875794))))

(assert (=> b!1570807 (= res!1073292 (and (or (not ((_ is Cons!36916) lt!673366)) (bvsle (_1!12782 (h!38364 lt!673366)) key1!37)) ((_ is Cons!36916) lt!673366) (bvslt (_1!12782 (h!38364 lt!673366)) key1!37)))))

(declare-fun b!1570808 () Bool)

(assert (=> b!1570808 (= e!875794 (containsKey!871 (t!51838 lt!673366) key1!37))))

(assert (= (and d!164263 (not res!1073291)) b!1570807))

(assert (= (and b!1570807 res!1073292) b!1570808))

(declare-fun m!1444817 () Bool)

(assert (=> b!1570808 m!1444817))

(assert (=> b!1570699 d!164263))

(declare-fun d!164271 () Bool)

(declare-fun res!1073293 () Bool)

(declare-fun e!875795 () Bool)

(assert (=> d!164271 (=> res!1073293 e!875795)))

(assert (=> d!164271 (= res!1073293 (or ((_ is Nil!36917) (t!51838 l!750)) ((_ is Nil!36917) (t!51838 (t!51838 l!750)))))))

(assert (=> d!164271 (= (isStrictlySorted!1021 (t!51838 l!750)) e!875795)))

(declare-fun b!1570809 () Bool)

(declare-fun e!875796 () Bool)

(assert (=> b!1570809 (= e!875795 e!875796)))

(declare-fun res!1073294 () Bool)

(assert (=> b!1570809 (=> (not res!1073294) (not e!875796))))

(assert (=> b!1570809 (= res!1073294 (bvslt (_1!12782 (h!38364 (t!51838 l!750))) (_1!12782 (h!38364 (t!51838 (t!51838 l!750))))))))

(declare-fun b!1570810 () Bool)

(assert (=> b!1570810 (= e!875796 (isStrictlySorted!1021 (t!51838 (t!51838 l!750))))))

(assert (= (and d!164271 (not res!1073293)) b!1570809))

(assert (= (and b!1570809 res!1073294) b!1570810))

(declare-fun m!1444821 () Bool)

(assert (=> b!1570810 m!1444821))

(assert (=> b!1570577 d!164271))

(declare-fun d!164273 () Bool)

(assert (=> d!164273 (= ($colon$colon!1003 e!875732 (ite c!144970 (h!38364 l!750) (tuple2!25545 key2!21 v2!10))) (Cons!36916 (ite c!144970 (h!38364 l!750) (tuple2!25545 key2!21 v2!10)) e!875732))))

(assert (=> bm!72295 d!164273))

(declare-fun bm!72316 () Bool)

(declare-fun call!72323 () List!36920)

(declare-fun call!72318 () List!36920)

(assert (=> bm!72316 (= call!72323 call!72318)))

(declare-fun b!1570814 () Bool)

(declare-fun e!875804 () List!36920)

(declare-fun call!72320 () List!36920)

(assert (=> b!1570814 (= e!875804 call!72320)))

(declare-fun b!1570815 () Bool)

(declare-fun e!875798 () List!36920)

(assert (=> b!1570815 (= e!875798 call!72318)))

(declare-fun b!1570817 () Bool)

(declare-fun e!875806 () List!36920)

(assert (=> b!1570817 (= e!875806 call!72323)))

(declare-fun c!144999 () Bool)

(declare-fun c!145004 () Bool)

(declare-fun b!1570819 () Bool)

(declare-fun e!875802 () List!36920)

(assert (=> b!1570819 (= e!875802 (ite c!145004 (t!51838 (t!51838 (insertStrictlySorted!599 l!750 key2!21 v2!10))) (ite c!144999 (Cons!36916 (h!38364 (t!51838 (insertStrictlySorted!599 l!750 key2!21 v2!10))) (t!51838 (t!51838 (insertStrictlySorted!599 l!750 key2!21 v2!10)))) Nil!36917)))))

(declare-fun b!1570821 () Bool)

(assert (=> b!1570821 (= e!875798 e!875806)))

(assert (=> b!1570821 (= c!145004 (and ((_ is Cons!36916) (t!51838 (insertStrictlySorted!599 l!750 key2!21 v2!10))) (= (_1!12782 (h!38364 (t!51838 (insertStrictlySorted!599 l!750 key2!21 v2!10)))) key1!37)))))

(declare-fun b!1570823 () Bool)

(assert (=> b!1570823 (= e!875804 call!72320)))

(declare-fun bm!72319 () Bool)

(declare-fun c!144998 () Bool)

(assert (=> bm!72319 (= call!72318 ($colon$colon!1003 e!875802 (ite c!144998 (h!38364 (t!51838 (insertStrictlySorted!599 l!750 key2!21 v2!10))) (tuple2!25545 key1!37 v1!32))))))

(declare-fun c!145003 () Bool)

(assert (=> bm!72319 (= c!145003 c!144998)))

(declare-fun bm!72320 () Bool)

(assert (=> bm!72320 (= call!72320 call!72323)))

(declare-fun lt!673378 () List!36920)

(declare-fun b!1570828 () Bool)

(declare-fun e!875803 () Bool)

(assert (=> b!1570828 (= e!875803 (contains!10447 lt!673378 (tuple2!25545 key1!37 v1!32)))))

(declare-fun b!1570829 () Bool)

(assert (=> b!1570829 (= c!144999 (and ((_ is Cons!36916) (t!51838 (insertStrictlySorted!599 l!750 key2!21 v2!10))) (bvsgt (_1!12782 (h!38364 (t!51838 (insertStrictlySorted!599 l!750 key2!21 v2!10)))) key1!37)))))

(assert (=> b!1570829 (= e!875806 e!875804)))

(declare-fun b!1570830 () Bool)

(declare-fun res!1073297 () Bool)

(assert (=> b!1570830 (=> (not res!1073297) (not e!875803))))

(assert (=> b!1570830 (= res!1073297 (containsKey!871 lt!673378 key1!37))))

(declare-fun d!164277 () Bool)

(assert (=> d!164277 e!875803))

(declare-fun res!1073296 () Bool)

(assert (=> d!164277 (=> (not res!1073296) (not e!875803))))

(assert (=> d!164277 (= res!1073296 (isStrictlySorted!1021 lt!673378))))

(assert (=> d!164277 (= lt!673378 e!875798)))

(assert (=> d!164277 (= c!144998 (and ((_ is Cons!36916) (t!51838 (insertStrictlySorted!599 l!750 key2!21 v2!10))) (bvslt (_1!12782 (h!38364 (t!51838 (insertStrictlySorted!599 l!750 key2!21 v2!10)))) key1!37)))))

(assert (=> d!164277 (isStrictlySorted!1021 (t!51838 (insertStrictlySorted!599 l!750 key2!21 v2!10)))))

(assert (=> d!164277 (= (insertStrictlySorted!599 (t!51838 (insertStrictlySorted!599 l!750 key2!21 v2!10)) key1!37 v1!32) lt!673378)))

(declare-fun b!1570824 () Bool)

(assert (=> b!1570824 (= e!875802 (insertStrictlySorted!599 (t!51838 (t!51838 (insertStrictlySorted!599 l!750 key2!21 v2!10))) key1!37 v1!32))))

(assert (= (and d!164277 c!144998) b!1570815))

(assert (= (and d!164277 (not c!144998)) b!1570821))

(assert (= (and b!1570821 c!145004) b!1570817))

(assert (= (and b!1570821 (not c!145004)) b!1570829))

(assert (= (and b!1570829 c!144999) b!1570814))

(assert (= (and b!1570829 (not c!144999)) b!1570823))

(assert (= (or b!1570814 b!1570823) bm!72320))

(assert (= (or b!1570817 bm!72320) bm!72316))

(assert (= (or b!1570815 bm!72316) bm!72319))

(assert (= (and bm!72319 c!145003) b!1570824))

(assert (= (and bm!72319 (not c!145003)) b!1570819))

(assert (= (and d!164277 res!1073296) b!1570830))

(assert (= (and b!1570830 res!1073297) b!1570828))

(declare-fun m!1444835 () Bool)

(assert (=> b!1570828 m!1444835))

(declare-fun m!1444839 () Bool)

(assert (=> b!1570824 m!1444839))

(declare-fun m!1444845 () Bool)

(assert (=> b!1570830 m!1444845))

(declare-fun m!1444849 () Bool)

(assert (=> bm!72319 m!1444849))

(declare-fun m!1444851 () Bool)

(assert (=> d!164277 m!1444851))

(declare-fun m!1444853 () Bool)

(assert (=> d!164277 m!1444853))

(assert (=> b!1570692 d!164277))

(declare-fun d!164281 () Bool)

(declare-fun res!1073301 () Bool)

(declare-fun e!875809 () Bool)

(assert (=> d!164281 (=> res!1073301 e!875809)))

(assert (=> d!164281 (= res!1073301 (or ((_ is Nil!36917) lt!673364) ((_ is Nil!36917) (t!51838 lt!673364))))))

(assert (=> d!164281 (= (isStrictlySorted!1021 lt!673364) e!875809)))

(declare-fun b!1570833 () Bool)

(declare-fun e!875810 () Bool)

(assert (=> b!1570833 (= e!875809 e!875810)))

(declare-fun res!1073302 () Bool)

(assert (=> b!1570833 (=> (not res!1073302) (not e!875810))))

(assert (=> b!1570833 (= res!1073302 (bvslt (_1!12782 (h!38364 lt!673364)) (_1!12782 (h!38364 (t!51838 lt!673364)))))))

(declare-fun b!1570834 () Bool)

(assert (=> b!1570834 (= e!875810 (isStrictlySorted!1021 (t!51838 lt!673364)))))

(assert (= (and d!164281 (not res!1073301)) b!1570833))

(assert (= (and b!1570833 res!1073302) b!1570834))

(declare-fun m!1444857 () Bool)

(assert (=> b!1570834 m!1444857))

(assert (=> d!164239 d!164281))

(assert (=> d!164239 d!164225))

(declare-fun d!164285 () Bool)

(declare-fun res!1073305 () Bool)

(declare-fun e!875813 () Bool)

(assert (=> d!164285 (=> res!1073305 e!875813)))

(assert (=> d!164285 (= res!1073305 (and ((_ is Cons!36916) lt!673362) (= (_1!12782 (h!38364 lt!673362)) key2!21)))))

(assert (=> d!164285 (= (containsKey!871 lt!673362 key2!21) e!875813)))

(declare-fun b!1570837 () Bool)

(declare-fun e!875814 () Bool)

(assert (=> b!1570837 (= e!875813 e!875814)))

(declare-fun res!1073306 () Bool)

(assert (=> b!1570837 (=> (not res!1073306) (not e!875814))))

(assert (=> b!1570837 (= res!1073306 (and (or (not ((_ is Cons!36916) lt!673362)) (bvsle (_1!12782 (h!38364 lt!673362)) key2!21)) ((_ is Cons!36916) lt!673362) (bvslt (_1!12782 (h!38364 lt!673362)) key2!21)))))

(declare-fun b!1570838 () Bool)

(assert (=> b!1570838 (= e!875814 (containsKey!871 (t!51838 lt!673362) key2!21))))

(assert (= (and d!164285 (not res!1073305)) b!1570837))

(assert (= (and b!1570837 res!1073306) b!1570838))

(declare-fun m!1444861 () Bool)

(assert (=> b!1570838 m!1444861))

(assert (=> b!1570655 d!164285))

(declare-fun d!164289 () Bool)

(declare-fun res!1073307 () Bool)

(declare-fun e!875815 () Bool)

(assert (=> d!164289 (=> res!1073307 e!875815)))

(assert (=> d!164289 (= res!1073307 (or ((_ is Nil!36917) lt!673366) ((_ is Nil!36917) (t!51838 lt!673366))))))

(assert (=> d!164289 (= (isStrictlySorted!1021 lt!673366) e!875815)))

(declare-fun b!1570839 () Bool)

(declare-fun e!875816 () Bool)

(assert (=> b!1570839 (= e!875815 e!875816)))

(declare-fun res!1073308 () Bool)

(assert (=> b!1570839 (=> (not res!1073308) (not e!875816))))

(assert (=> b!1570839 (= res!1073308 (bvslt (_1!12782 (h!38364 lt!673366)) (_1!12782 (h!38364 (t!51838 lt!673366)))))))

(declare-fun b!1570840 () Bool)

(assert (=> b!1570840 (= e!875816 (isStrictlySorted!1021 (t!51838 lt!673366)))))

(assert (= (and d!164289 (not res!1073307)) b!1570839))

(assert (= (and b!1570839 res!1073308) b!1570840))

(declare-fun m!1444863 () Bool)

(assert (=> b!1570840 m!1444863))

(assert (=> d!164243 d!164289))

(declare-fun d!164293 () Bool)

(declare-fun res!1073311 () Bool)

(declare-fun e!875819 () Bool)

(assert (=> d!164293 (=> res!1073311 e!875819)))

(assert (=> d!164293 (= res!1073311 (or ((_ is Nil!36917) (insertStrictlySorted!599 l!750 key2!21 v2!10)) ((_ is Nil!36917) (t!51838 (insertStrictlySorted!599 l!750 key2!21 v2!10)))))))

(assert (=> d!164293 (= (isStrictlySorted!1021 (insertStrictlySorted!599 l!750 key2!21 v2!10)) e!875819)))

(declare-fun b!1570843 () Bool)

(declare-fun e!875820 () Bool)

(assert (=> b!1570843 (= e!875819 e!875820)))

(declare-fun res!1073312 () Bool)

(assert (=> b!1570843 (=> (not res!1073312) (not e!875820))))

(assert (=> b!1570843 (= res!1073312 (bvslt (_1!12782 (h!38364 (insertStrictlySorted!599 l!750 key2!21 v2!10))) (_1!12782 (h!38364 (t!51838 (insertStrictlySorted!599 l!750 key2!21 v2!10))))))))

(declare-fun b!1570844 () Bool)

(assert (=> b!1570844 (= e!875820 (isStrictlySorted!1021 (t!51838 (insertStrictlySorted!599 l!750 key2!21 v2!10))))))

(assert (= (and d!164293 (not res!1073311)) b!1570843))

(assert (= (and b!1570843 res!1073312) b!1570844))

(assert (=> b!1570844 m!1444853))

(assert (=> d!164243 d!164293))

(declare-fun d!164297 () Bool)

(declare-fun res!1073315 () Bool)

(declare-fun e!875826 () Bool)

(assert (=> d!164297 (=> res!1073315 e!875826)))

(assert (=> d!164297 (= res!1073315 (or ((_ is Nil!36917) lt!673362) ((_ is Nil!36917) (t!51838 lt!673362))))))

(assert (=> d!164297 (= (isStrictlySorted!1021 lt!673362) e!875826)))

(declare-fun b!1570855 () Bool)

(declare-fun e!875827 () Bool)

(assert (=> b!1570855 (= e!875826 e!875827)))

(declare-fun res!1073316 () Bool)

(assert (=> b!1570855 (=> (not res!1073316) (not e!875827))))

(assert (=> b!1570855 (= res!1073316 (bvslt (_1!12782 (h!38364 lt!673362)) (_1!12782 (h!38364 (t!51838 lt!673362)))))))

(declare-fun b!1570856 () Bool)

(assert (=> b!1570856 (= e!875827 (isStrictlySorted!1021 (t!51838 lt!673362)))))

(assert (= (and d!164297 (not res!1073315)) b!1570855))

(assert (= (and b!1570855 res!1073316) b!1570856))

(declare-fun m!1444867 () Bool)

(assert (=> b!1570856 m!1444867))

(assert (=> d!164233 d!164297))

(declare-fun d!164299 () Bool)

(declare-fun res!1073317 () Bool)

(declare-fun e!875828 () Bool)

(assert (=> d!164299 (=> res!1073317 e!875828)))

(assert (=> d!164299 (= res!1073317 (or ((_ is Nil!36917) (insertStrictlySorted!599 l!750 key1!37 v1!32)) ((_ is Nil!36917) (t!51838 (insertStrictlySorted!599 l!750 key1!37 v1!32)))))))

(assert (=> d!164299 (= (isStrictlySorted!1021 (insertStrictlySorted!599 l!750 key1!37 v1!32)) e!875828)))

(declare-fun b!1570857 () Bool)

(declare-fun e!875829 () Bool)

(assert (=> b!1570857 (= e!875828 e!875829)))

(declare-fun res!1073318 () Bool)

(assert (=> b!1570857 (=> (not res!1073318) (not e!875829))))

(assert (=> b!1570857 (= res!1073318 (bvslt (_1!12782 (h!38364 (insertStrictlySorted!599 l!750 key1!37 v1!32))) (_1!12782 (h!38364 (t!51838 (insertStrictlySorted!599 l!750 key1!37 v1!32))))))))

(declare-fun b!1570858 () Bool)

(assert (=> b!1570858 (= e!875829 (isStrictlySorted!1021 (t!51838 (insertStrictlySorted!599 l!750 key1!37 v1!32))))))

(assert (= (and d!164299 (not res!1073317)) b!1570857))

(assert (= (and b!1570857 res!1073318) b!1570858))

(declare-fun m!1444869 () Bool)

(assert (=> b!1570858 m!1444869))

(assert (=> d!164233 d!164299))

(declare-fun bm!72324 () Bool)

(declare-fun call!72329 () List!36920)

(declare-fun call!72327 () List!36920)

(assert (=> bm!72324 (= call!72329 call!72327)))

(declare-fun b!1570859 () Bool)

(declare-fun e!875833 () List!36920)

(declare-fun call!72328 () List!36920)

(assert (=> b!1570859 (= e!875833 call!72328)))

(declare-fun b!1570860 () Bool)

(declare-fun e!875830 () List!36920)

(assert (=> b!1570860 (= e!875830 call!72327)))

(declare-fun b!1570861 () Bool)

(declare-fun e!875834 () List!36920)

(assert (=> b!1570861 (= e!875834 call!72329)))

(declare-fun b!1570862 () Bool)

(declare-fun e!875831 () List!36920)

(declare-fun c!145011 () Bool)

(declare-fun c!145013 () Bool)

(assert (=> b!1570862 (= e!875831 (ite c!145013 (t!51838 (t!51838 (insertStrictlySorted!599 l!750 key1!37 v1!32))) (ite c!145011 (Cons!36916 (h!38364 (t!51838 (insertStrictlySorted!599 l!750 key1!37 v1!32))) (t!51838 (t!51838 (insertStrictlySorted!599 l!750 key1!37 v1!32)))) Nil!36917)))))

(declare-fun b!1570863 () Bool)

(assert (=> b!1570863 (= e!875830 e!875834)))

(assert (=> b!1570863 (= c!145013 (and ((_ is Cons!36916) (t!51838 (insertStrictlySorted!599 l!750 key1!37 v1!32))) (= (_1!12782 (h!38364 (t!51838 (insertStrictlySorted!599 l!750 key1!37 v1!32)))) key2!21)))))

(declare-fun b!1570864 () Bool)

(assert (=> b!1570864 (= e!875833 call!72328)))

(declare-fun c!145010 () Bool)

(declare-fun bm!72325 () Bool)

(assert (=> bm!72325 (= call!72327 ($colon$colon!1003 e!875831 (ite c!145010 (h!38364 (t!51838 (insertStrictlySorted!599 l!750 key1!37 v1!32))) (tuple2!25545 key2!21 v2!10))))))

(declare-fun c!145012 () Bool)

(assert (=> bm!72325 (= c!145012 c!145010)))

(declare-fun bm!72326 () Bool)

(assert (=> bm!72326 (= call!72328 call!72329)))

(declare-fun lt!673380 () List!36920)

(declare-fun b!1570866 () Bool)

(declare-fun e!875832 () Bool)

(assert (=> b!1570866 (= e!875832 (contains!10447 lt!673380 (tuple2!25545 key2!21 v2!10)))))

(declare-fun b!1570867 () Bool)

(assert (=> b!1570867 (= c!145011 (and ((_ is Cons!36916) (t!51838 (insertStrictlySorted!599 l!750 key1!37 v1!32))) (bvsgt (_1!12782 (h!38364 (t!51838 (insertStrictlySorted!599 l!750 key1!37 v1!32)))) key2!21)))))

(assert (=> b!1570867 (= e!875834 e!875833)))

(declare-fun b!1570868 () Bool)

(declare-fun res!1073320 () Bool)

(assert (=> b!1570868 (=> (not res!1073320) (not e!875832))))

(assert (=> b!1570868 (= res!1073320 (containsKey!871 lt!673380 key2!21))))

(declare-fun d!164301 () Bool)

(assert (=> d!164301 e!875832))

(declare-fun res!1073319 () Bool)

(assert (=> d!164301 (=> (not res!1073319) (not e!875832))))

(assert (=> d!164301 (= res!1073319 (isStrictlySorted!1021 lt!673380))))

(assert (=> d!164301 (= lt!673380 e!875830)))

(assert (=> d!164301 (= c!145010 (and ((_ is Cons!36916) (t!51838 (insertStrictlySorted!599 l!750 key1!37 v1!32))) (bvslt (_1!12782 (h!38364 (t!51838 (insertStrictlySorted!599 l!750 key1!37 v1!32)))) key2!21)))))

(assert (=> d!164301 (isStrictlySorted!1021 (t!51838 (insertStrictlySorted!599 l!750 key1!37 v1!32)))))

(assert (=> d!164301 (= (insertStrictlySorted!599 (t!51838 (insertStrictlySorted!599 l!750 key1!37 v1!32)) key2!21 v2!10) lt!673380)))

(declare-fun b!1570865 () Bool)

(assert (=> b!1570865 (= e!875831 (insertStrictlySorted!599 (t!51838 (t!51838 (insertStrictlySorted!599 l!750 key1!37 v1!32))) key2!21 v2!10))))

(assert (= (and d!164301 c!145010) b!1570860))

(assert (= (and d!164301 (not c!145010)) b!1570863))

(assert (= (and b!1570863 c!145013) b!1570861))

(assert (= (and b!1570863 (not c!145013)) b!1570867))

(assert (= (and b!1570867 c!145011) b!1570859))

(assert (= (and b!1570867 (not c!145011)) b!1570864))

(assert (= (or b!1570859 b!1570864) bm!72326))

(assert (= (or b!1570861 bm!72326) bm!72324))

(assert (= (or b!1570860 bm!72324) bm!72325))

(assert (= (and bm!72325 c!145012) b!1570865))

(assert (= (and bm!72325 (not c!145012)) b!1570862))

(assert (= (and d!164301 res!1073319) b!1570868))

(assert (= (and b!1570868 res!1073320) b!1570866))

(declare-fun m!1444883 () Bool)

(assert (=> b!1570866 m!1444883))

(declare-fun m!1444885 () Bool)

(assert (=> b!1570865 m!1444885))

(declare-fun m!1444887 () Bool)

(assert (=> b!1570868 m!1444887))

(declare-fun m!1444889 () Bool)

(assert (=> bm!72325 m!1444889))

(declare-fun m!1444891 () Bool)

(assert (=> d!164301 m!1444891))

(assert (=> d!164301 m!1444869))

(assert (=> b!1570648 d!164301))

(declare-fun bm!72330 () Bool)

(declare-fun call!72335 () List!36920)

(declare-fun call!72333 () List!36920)

(assert (=> bm!72330 (= call!72335 call!72333)))

(declare-fun b!1570881 () Bool)

(declare-fun e!875845 () List!36920)

(declare-fun call!72334 () List!36920)

(assert (=> b!1570881 (= e!875845 call!72334)))

(declare-fun b!1570882 () Bool)

(declare-fun e!875842 () List!36920)

(assert (=> b!1570882 (= e!875842 call!72333)))

(declare-fun b!1570883 () Bool)

(declare-fun e!875846 () List!36920)

(assert (=> b!1570883 (= e!875846 call!72335)))

(declare-fun b!1570884 () Bool)

(declare-fun c!145021 () Bool)

(declare-fun c!145019 () Bool)

(declare-fun e!875843 () List!36920)

(assert (=> b!1570884 (= e!875843 (ite c!145021 (t!51838 (t!51838 l!750)) (ite c!145019 (Cons!36916 (h!38364 (t!51838 l!750)) (t!51838 (t!51838 l!750))) Nil!36917)))))

(declare-fun b!1570885 () Bool)

(assert (=> b!1570885 (= e!875842 e!875846)))

(assert (=> b!1570885 (= c!145021 (and ((_ is Cons!36916) (t!51838 l!750)) (= (_1!12782 (h!38364 (t!51838 l!750))) key2!21)))))

(declare-fun b!1570886 () Bool)

(assert (=> b!1570886 (= e!875845 call!72334)))

(declare-fun c!145018 () Bool)

(declare-fun bm!72331 () Bool)

(assert (=> bm!72331 (= call!72333 ($colon$colon!1003 e!875843 (ite c!145018 (h!38364 (t!51838 l!750)) (tuple2!25545 key2!21 v2!10))))))

(declare-fun c!145020 () Bool)

(assert (=> bm!72331 (= c!145020 c!145018)))

(declare-fun bm!72332 () Bool)

(assert (=> bm!72332 (= call!72334 call!72335)))

(declare-fun lt!673382 () List!36920)

(declare-fun b!1570888 () Bool)

(declare-fun e!875844 () Bool)

(assert (=> b!1570888 (= e!875844 (contains!10447 lt!673382 (tuple2!25545 key2!21 v2!10)))))

(declare-fun b!1570889 () Bool)

(assert (=> b!1570889 (= c!145019 (and ((_ is Cons!36916) (t!51838 l!750)) (bvsgt (_1!12782 (h!38364 (t!51838 l!750))) key2!21)))))

(assert (=> b!1570889 (= e!875846 e!875845)))

(declare-fun b!1570890 () Bool)

(declare-fun res!1073326 () Bool)

(assert (=> b!1570890 (=> (not res!1073326) (not e!875844))))

(assert (=> b!1570890 (= res!1073326 (containsKey!871 lt!673382 key2!21))))

(declare-fun d!164307 () Bool)

(assert (=> d!164307 e!875844))

(declare-fun res!1073325 () Bool)

(assert (=> d!164307 (=> (not res!1073325) (not e!875844))))

(assert (=> d!164307 (= res!1073325 (isStrictlySorted!1021 lt!673382))))

(assert (=> d!164307 (= lt!673382 e!875842)))

(assert (=> d!164307 (= c!145018 (and ((_ is Cons!36916) (t!51838 l!750)) (bvslt (_1!12782 (h!38364 (t!51838 l!750))) key2!21)))))

(assert (=> d!164307 (isStrictlySorted!1021 (t!51838 l!750))))

(assert (=> d!164307 (= (insertStrictlySorted!599 (t!51838 l!750) key2!21 v2!10) lt!673382)))

(declare-fun b!1570887 () Bool)

(assert (=> b!1570887 (= e!875843 (insertStrictlySorted!599 (t!51838 (t!51838 l!750)) key2!21 v2!10))))

(assert (= (and d!164307 c!145018) b!1570882))

(assert (= (and d!164307 (not c!145018)) b!1570885))

(assert (= (and b!1570885 c!145021) b!1570883))

(assert (= (and b!1570885 (not c!145021)) b!1570889))

(assert (= (and b!1570889 c!145019) b!1570881))

(assert (= (and b!1570889 (not c!145019)) b!1570886))

(assert (= (or b!1570881 b!1570886) bm!72332))

(assert (= (or b!1570883 bm!72332) bm!72330))

(assert (= (or b!1570882 bm!72330) bm!72331))

(assert (= (and bm!72331 c!145020) b!1570887))

(assert (= (and bm!72331 (not c!145020)) b!1570884))

(assert (= (and d!164307 res!1073325) b!1570890))

(assert (= (and b!1570890 res!1073326) b!1570888))

(declare-fun m!1444907 () Bool)

(assert (=> b!1570888 m!1444907))

(declare-fun m!1444909 () Bool)

(assert (=> b!1570887 m!1444909))

(declare-fun m!1444911 () Bool)

(assert (=> b!1570890 m!1444911))

(declare-fun m!1444913 () Bool)

(assert (=> bm!72331 m!1444913))

(declare-fun m!1444915 () Bool)

(assert (=> d!164307 m!1444915))

(assert (=> d!164307 m!1444670))

(assert (=> b!1570710 d!164307))

(declare-fun bm!72333 () Bool)

(declare-fun call!72338 () List!36920)

(declare-fun call!72336 () List!36920)

(assert (=> bm!72333 (= call!72338 call!72336)))

(declare-fun b!1570893 () Bool)

(declare-fun e!875852 () List!36920)

(declare-fun call!72337 () List!36920)

(assert (=> b!1570893 (= e!875852 call!72337)))

(declare-fun b!1570894 () Bool)

(declare-fun e!875849 () List!36920)

(assert (=> b!1570894 (= e!875849 call!72336)))

(declare-fun b!1570895 () Bool)

(declare-fun e!875853 () List!36920)

(assert (=> b!1570895 (= e!875853 call!72338)))

(declare-fun c!145025 () Bool)

(declare-fun c!145023 () Bool)

(declare-fun e!875850 () List!36920)

(declare-fun b!1570896 () Bool)

(assert (=> b!1570896 (= e!875850 (ite c!145025 (t!51838 (t!51838 l!750)) (ite c!145023 (Cons!36916 (h!38364 (t!51838 l!750)) (t!51838 (t!51838 l!750))) Nil!36917)))))

(declare-fun b!1570897 () Bool)

(assert (=> b!1570897 (= e!875849 e!875853)))

(assert (=> b!1570897 (= c!145025 (and ((_ is Cons!36916) (t!51838 l!750)) (= (_1!12782 (h!38364 (t!51838 l!750))) key1!37)))))

(declare-fun b!1570898 () Bool)

(assert (=> b!1570898 (= e!875852 call!72337)))

(declare-fun bm!72334 () Bool)

(declare-fun c!145022 () Bool)

(assert (=> bm!72334 (= call!72336 ($colon$colon!1003 e!875850 (ite c!145022 (h!38364 (t!51838 l!750)) (tuple2!25545 key1!37 v1!32))))))

(declare-fun c!145024 () Bool)

(assert (=> bm!72334 (= c!145024 c!145022)))

(declare-fun bm!72335 () Bool)

(assert (=> bm!72335 (= call!72337 call!72338)))

(declare-fun b!1570900 () Bool)

(declare-fun e!875851 () Bool)

(declare-fun lt!673383 () List!36920)

(assert (=> b!1570900 (= e!875851 (contains!10447 lt!673383 (tuple2!25545 key1!37 v1!32)))))

(declare-fun b!1570901 () Bool)

(assert (=> b!1570901 (= c!145023 (and ((_ is Cons!36916) (t!51838 l!750)) (bvsgt (_1!12782 (h!38364 (t!51838 l!750))) key1!37)))))

(assert (=> b!1570901 (= e!875853 e!875852)))

(declare-fun b!1570902 () Bool)

(declare-fun res!1073330 () Bool)

(assert (=> b!1570902 (=> (not res!1073330) (not e!875851))))

(assert (=> b!1570902 (= res!1073330 (containsKey!871 lt!673383 key1!37))))

(declare-fun d!164313 () Bool)

(assert (=> d!164313 e!875851))

(declare-fun res!1073329 () Bool)

(assert (=> d!164313 (=> (not res!1073329) (not e!875851))))

(assert (=> d!164313 (= res!1073329 (isStrictlySorted!1021 lt!673383))))

(assert (=> d!164313 (= lt!673383 e!875849)))

(assert (=> d!164313 (= c!145022 (and ((_ is Cons!36916) (t!51838 l!750)) (bvslt (_1!12782 (h!38364 (t!51838 l!750))) key1!37)))))

(assert (=> d!164313 (isStrictlySorted!1021 (t!51838 l!750))))

(assert (=> d!164313 (= (insertStrictlySorted!599 (t!51838 l!750) key1!37 v1!32) lt!673383)))

(declare-fun b!1570899 () Bool)

(assert (=> b!1570899 (= e!875850 (insertStrictlySorted!599 (t!51838 (t!51838 l!750)) key1!37 v1!32))))

(assert (= (and d!164313 c!145022) b!1570894))

(assert (= (and d!164313 (not c!145022)) b!1570897))

(assert (= (and b!1570897 c!145025) b!1570895))

(assert (= (and b!1570897 (not c!145025)) b!1570901))

(assert (= (and b!1570901 c!145023) b!1570893))

(assert (= (and b!1570901 (not c!145023)) b!1570898))

(assert (= (or b!1570893 b!1570898) bm!72335))

(assert (= (or b!1570895 bm!72335) bm!72333))

(assert (= (or b!1570894 bm!72333) bm!72334))

(assert (= (and bm!72334 c!145024) b!1570899))

(assert (= (and bm!72334 (not c!145024)) b!1570896))

(assert (= (and d!164313 res!1073329) b!1570902))

(assert (= (and b!1570902 res!1073330) b!1570900))

(declare-fun m!1444917 () Bool)

(assert (=> b!1570900 m!1444917))

(declare-fun m!1444919 () Bool)

(assert (=> b!1570899 m!1444919))

(declare-fun m!1444921 () Bool)

(assert (=> b!1570902 m!1444921))

(declare-fun m!1444923 () Bool)

(assert (=> bm!72334 m!1444923))

(declare-fun m!1444925 () Bool)

(assert (=> d!164313 m!1444925))

(assert (=> d!164313 m!1444670))

(assert (=> b!1570668 d!164313))

(declare-fun d!164315 () Bool)

(declare-fun res!1073331 () Bool)

(declare-fun e!875854 () Bool)

(assert (=> d!164315 (=> res!1073331 e!875854)))

(assert (=> d!164315 (= res!1073331 (and ((_ is Cons!36916) lt!673367) (= (_1!12782 (h!38364 lt!673367)) key2!21)))))

(assert (=> d!164315 (= (containsKey!871 lt!673367 key2!21) e!875854)))

(declare-fun b!1570903 () Bool)

(declare-fun e!875855 () Bool)

(assert (=> b!1570903 (= e!875854 e!875855)))

(declare-fun res!1073332 () Bool)

(assert (=> b!1570903 (=> (not res!1073332) (not e!875855))))

(assert (=> b!1570903 (= res!1073332 (and (or (not ((_ is Cons!36916) lt!673367)) (bvsle (_1!12782 (h!38364 lt!673367)) key2!21)) ((_ is Cons!36916) lt!673367) (bvslt (_1!12782 (h!38364 lt!673367)) key2!21)))))

(declare-fun b!1570904 () Bool)

(assert (=> b!1570904 (= e!875855 (containsKey!871 (t!51838 lt!673367) key2!21))))

(assert (= (and d!164315 (not res!1073331)) b!1570903))

(assert (= (and b!1570903 res!1073332) b!1570904))

(declare-fun m!1444927 () Bool)

(assert (=> b!1570904 m!1444927))

(assert (=> b!1570713 d!164315))

(declare-fun d!164317 () Bool)

(assert (=> d!164317 (= ($colon$colon!1003 e!875710 (ite c!144952 (h!38364 l!750) (tuple2!25545 key1!37 v1!32))) (Cons!36916 (ite c!144952 (h!38364 l!750) (tuple2!25545 key1!37 v1!32)) e!875710))))

(assert (=> bm!72284 d!164317))

(declare-fun d!164319 () Bool)

(declare-fun lt!673384 () Bool)

(assert (=> d!164319 (= lt!673384 (select (content!824 lt!673366) (tuple2!25545 key1!37 v1!32)))))

(declare-fun e!875857 () Bool)

(assert (=> d!164319 (= lt!673384 e!875857)))

(declare-fun res!1073333 () Bool)

(assert (=> d!164319 (=> (not res!1073333) (not e!875857))))

(assert (=> d!164319 (= res!1073333 ((_ is Cons!36916) lt!673366))))

(assert (=> d!164319 (= (contains!10447 lt!673366 (tuple2!25545 key1!37 v1!32)) lt!673384)))

(declare-fun b!1570905 () Bool)

(declare-fun e!875856 () Bool)

(assert (=> b!1570905 (= e!875857 e!875856)))

(declare-fun res!1073334 () Bool)

(assert (=> b!1570905 (=> res!1073334 e!875856)))

(assert (=> b!1570905 (= res!1073334 (= (h!38364 lt!673366) (tuple2!25545 key1!37 v1!32)))))

(declare-fun b!1570906 () Bool)

(assert (=> b!1570906 (= e!875856 (contains!10447 (t!51838 lt!673366) (tuple2!25545 key1!37 v1!32)))))

(assert (= (and d!164319 res!1073333) b!1570905))

(assert (= (and b!1570905 (not res!1073334)) b!1570906))

(declare-fun m!1444929 () Bool)

(assert (=> d!164319 m!1444929))

(declare-fun m!1444931 () Bool)

(assert (=> d!164319 m!1444931))

(declare-fun m!1444933 () Bool)

(assert (=> b!1570906 m!1444933))

(assert (=> b!1570695 d!164319))

(declare-fun d!164321 () Bool)

(assert (=> d!164321 (= ($colon$colon!1003 e!875722 (ite c!144962 (h!38364 (insertStrictlySorted!599 l!750 key2!21 v2!10)) (tuple2!25545 key1!37 v1!32))) (Cons!36916 (ite c!144962 (h!38364 (insertStrictlySorted!599 l!750 key2!21 v2!10)) (tuple2!25545 key1!37 v1!32)) e!875722))))

(assert (=> bm!72292 d!164321))

(declare-fun d!164323 () Bool)

(declare-fun lt!673387 () Bool)

(assert (=> d!164323 (= lt!673387 (select (content!824 lt!673367) (tuple2!25545 key2!21 v2!10)))))

(declare-fun e!875863 () Bool)

(assert (=> d!164323 (= lt!673387 e!875863)))

(declare-fun res!1073339 () Bool)

(assert (=> d!164323 (=> (not res!1073339) (not e!875863))))

(assert (=> d!164323 (= res!1073339 ((_ is Cons!36916) lt!673367))))

(assert (=> d!164323 (= (contains!10447 lt!673367 (tuple2!25545 key2!21 v2!10)) lt!673387)))

(declare-fun b!1570911 () Bool)

(declare-fun e!875862 () Bool)

(assert (=> b!1570911 (= e!875863 e!875862)))

(declare-fun res!1073340 () Bool)

(assert (=> b!1570911 (=> res!1073340 e!875862)))

(assert (=> b!1570911 (= res!1073340 (= (h!38364 lt!673367) (tuple2!25545 key2!21 v2!10)))))

(declare-fun b!1570912 () Bool)

(assert (=> b!1570912 (= e!875862 (contains!10447 (t!51838 lt!673367) (tuple2!25545 key2!21 v2!10)))))

(assert (= (and d!164323 res!1073339) b!1570911))

(assert (= (and b!1570911 (not res!1073340)) b!1570912))

(declare-fun m!1444935 () Bool)

(assert (=> d!164323 m!1444935))

(declare-fun m!1444937 () Bool)

(assert (=> d!164323 m!1444937))

(declare-fun m!1444939 () Bool)

(assert (=> b!1570912 m!1444939))

(assert (=> b!1570711 d!164323))

(declare-fun lt!673388 () Bool)

(declare-fun d!164325 () Bool)

(assert (=> d!164325 (= lt!673388 (select (content!824 lt!673362) (tuple2!25545 key2!21 v2!10)))))

(declare-fun e!875865 () Bool)

(assert (=> d!164325 (= lt!673388 e!875865)))

(declare-fun res!1073341 () Bool)

(assert (=> d!164325 (=> (not res!1073341) (not e!875865))))

(assert (=> d!164325 (= res!1073341 ((_ is Cons!36916) lt!673362))))

(assert (=> d!164325 (= (contains!10447 lt!673362 (tuple2!25545 key2!21 v2!10)) lt!673388)))

(declare-fun b!1570913 () Bool)

(declare-fun e!875864 () Bool)

(assert (=> b!1570913 (= e!875865 e!875864)))

(declare-fun res!1073342 () Bool)

(assert (=> b!1570913 (=> res!1073342 e!875864)))

(assert (=> b!1570913 (= res!1073342 (= (h!38364 lt!673362) (tuple2!25545 key2!21 v2!10)))))

(declare-fun b!1570914 () Bool)

(assert (=> b!1570914 (= e!875864 (contains!10447 (t!51838 lt!673362) (tuple2!25545 key2!21 v2!10)))))

(assert (= (and d!164325 res!1073341) b!1570913))

(assert (= (and b!1570913 (not res!1073342)) b!1570914))

(declare-fun m!1444941 () Bool)

(assert (=> d!164325 m!1444941))

(declare-fun m!1444943 () Bool)

(assert (=> d!164325 m!1444943))

(declare-fun m!1444945 () Bool)

(assert (=> b!1570914 m!1444945))

(assert (=> b!1570651 d!164325))

(declare-fun d!164327 () Bool)

(declare-fun res!1073343 () Bool)

(declare-fun e!875866 () Bool)

(assert (=> d!164327 (=> res!1073343 e!875866)))

(assert (=> d!164327 (= res!1073343 (and ((_ is Cons!36916) lt!673364) (= (_1!12782 (h!38364 lt!673364)) key1!37)))))

(assert (=> d!164327 (= (containsKey!871 lt!673364 key1!37) e!875866)))

(declare-fun b!1570915 () Bool)

(declare-fun e!875867 () Bool)

(assert (=> b!1570915 (= e!875866 e!875867)))

(declare-fun res!1073344 () Bool)

(assert (=> b!1570915 (=> (not res!1073344) (not e!875867))))

(assert (=> b!1570915 (= res!1073344 (and (or (not ((_ is Cons!36916) lt!673364)) (bvsle (_1!12782 (h!38364 lt!673364)) key1!37)) ((_ is Cons!36916) lt!673364) (bvslt (_1!12782 (h!38364 lt!673364)) key1!37)))))

(declare-fun b!1570916 () Bool)

(assert (=> b!1570916 (= e!875867 (containsKey!871 (t!51838 lt!673364) key1!37))))

(assert (= (and d!164327 (not res!1073343)) b!1570915))

(assert (= (and b!1570915 res!1073344) b!1570916))

(declare-fun m!1444947 () Bool)

(assert (=> b!1570916 m!1444947))

(assert (=> b!1570675 d!164327))

(declare-fun d!164329 () Bool)

(declare-fun res!1073347 () Bool)

(declare-fun e!875870 () Bool)

(assert (=> d!164329 (=> res!1073347 e!875870)))

(assert (=> d!164329 (= res!1073347 (or ((_ is Nil!36917) lt!673367) ((_ is Nil!36917) (t!51838 lt!673367))))))

(assert (=> d!164329 (= (isStrictlySorted!1021 lt!673367) e!875870)))

(declare-fun b!1570919 () Bool)

(declare-fun e!875871 () Bool)

(assert (=> b!1570919 (= e!875870 e!875871)))

(declare-fun res!1073348 () Bool)

(assert (=> b!1570919 (=> (not res!1073348) (not e!875871))))

(assert (=> b!1570919 (= res!1073348 (bvslt (_1!12782 (h!38364 lt!673367)) (_1!12782 (h!38364 (t!51838 lt!673367)))))))

(declare-fun b!1570920 () Bool)

(assert (=> b!1570920 (= e!875871 (isStrictlySorted!1021 (t!51838 lt!673367)))))

(assert (= (and d!164329 (not res!1073347)) b!1570919))

(assert (= (and b!1570919 res!1073348) b!1570920))

(declare-fun m!1444955 () Bool)

(assert (=> b!1570920 m!1444955))

(assert (=> d!164245 d!164329))

(assert (=> d!164245 d!164225))

(declare-fun b!1570923 () Bool)

(declare-fun e!875874 () Bool)

(declare-fun tp!114248 () Bool)

(assert (=> b!1570923 (= e!875874 (and tp_is_empty!39105 tp!114248))))

(assert (=> b!1570732 (= tp!114243 e!875874)))

(assert (= (and b!1570732 ((_ is Cons!36916) (t!51838 (t!51838 l!750)))) b!1570923))

(check-sat (not b!1570838) (not b!1570830) tp_is_empty!39105 (not bm!72334) (not b!1570840) (not d!164325) (not bm!72325) (not bm!72331) (not b!1570923) (not b!1570914) (not b!1570858) (not b!1570784) (not b!1570906) (not b!1570904) (not b!1570890) (not b!1570920) (not b!1570824) (not d!164319) (not b!1570810) (not b!1570902) (not b!1570900) (not b!1570856) (not d!164277) (not b!1570899) (not d!164257) (not b!1570868) (not b!1570888) (not b!1570866) (not b!1570844) (not b!1570865) (not d!164301) (not d!164323) (not b!1570808) (not b!1570834) (not bm!72319) (not d!164307) (not b!1570916) (not d!164313) (not b!1570887) (not b!1570912) (not b!1570828))
(check-sat)
