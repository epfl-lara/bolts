; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!352464 () Bool)

(assert start!352464)

(declare-fun b_free!100431 () Bool)

(declare-fun b_next!101135 () Bool)

(assert (=> start!352464 (= b_free!100431 (not b_next!101135))))

(declare-fun tp!1145978 () Bool)

(declare-fun b_and!278901 () Bool)

(assert (=> start!352464 (= tp!1145978 b_and!278901)))

(declare-fun p!2059 () Int)

(declare-fun e!2321659 () Bool)

(declare-fun e!2321660 () Bool)

(declare-datatypes ((B!2553 0))(
  ( (B!2554 (val!13180 Int)) )
))
(declare-datatypes ((List!40139 0))(
  ( (Nil!40015) (Cons!40015 (h!45435 B!2553) (t!303230 List!40139)) )
))
(declare-fun l1!1479 () List!40139)

(declare-fun l2!1448 () List!40139)

(declare-fun b!3753279 () Bool)

(declare-fun forall!8243 (List!40139 Int) Bool)

(declare-fun ++!9909 (List!40139 List!40139) List!40139)

(assert (=> b!3753279 (= e!2321659 (not (= (forall!8243 (++!9909 l1!1479 l2!1448) p!2059) e!2321660)))))

(declare-fun res!1520975 () Bool)

(assert (=> b!3753279 (=> (not res!1520975) (not e!2321660))))

(assert (=> b!3753279 (= res!1520975 (forall!8243 l1!1479 p!2059))))

(declare-fun b!3753280 () Bool)

(assert (=> b!3753280 (= e!2321660 (forall!8243 l2!1448 p!2059))))

(declare-fun res!1520974 () Bool)

(assert (=> start!352464 (=> (not res!1520974) (not e!2321659))))

(get-info :version)

(assert (=> start!352464 (= res!1520974 (not ((_ is Cons!40015) l1!1479)))))

(assert (=> start!352464 e!2321659))

(declare-fun e!2321661 () Bool)

(assert (=> start!352464 e!2321661))

(declare-fun e!2321662 () Bool)

(assert (=> start!352464 e!2321662))

(assert (=> start!352464 tp!1145978))

(declare-fun b!3753282 () Bool)

(declare-fun tp_is_empty!19065 () Bool)

(declare-fun tp!1145979 () Bool)

(assert (=> b!3753282 (= e!2321662 (and tp_is_empty!19065 tp!1145979))))

(declare-fun b!3753281 () Bool)

(declare-fun tp!1145980 () Bool)

(assert (=> b!3753281 (= e!2321661 (and tp_is_empty!19065 tp!1145980))))

(assert (= (and start!352464 res!1520974) b!3753279))

(assert (= (and b!3753279 res!1520975) b!3753280))

(assert (= (and start!352464 ((_ is Cons!40015) l1!1479)) b!3753281))

(assert (= (and start!352464 ((_ is Cons!40015) l2!1448)) b!3753282))

(declare-fun m!4245069 () Bool)

(assert (=> b!3753279 m!4245069))

(assert (=> b!3753279 m!4245069))

(declare-fun m!4245071 () Bool)

(assert (=> b!3753279 m!4245071))

(declare-fun m!4245073 () Bool)

(assert (=> b!3753279 m!4245073))

(declare-fun m!4245075 () Bool)

(assert (=> b!3753280 m!4245075))

(check-sat (not b!3753281) (not b!3753279) (not b_next!101135) b_and!278901 (not b!3753280) tp_is_empty!19065 (not b!3753282))
(check-sat b_and!278901 (not b_next!101135))
(get-model)

(declare-fun d!1095295 () Bool)

(declare-fun res!1520988 () Bool)

(declare-fun e!2321675 () Bool)

(assert (=> d!1095295 (=> res!1520988 e!2321675)))

(assert (=> d!1095295 (= res!1520988 ((_ is Nil!40015) l2!1448))))

(assert (=> d!1095295 (= (forall!8243 l2!1448 p!2059) e!2321675)))

(declare-fun b!3753295 () Bool)

(declare-fun e!2321676 () Bool)

(assert (=> b!3753295 (= e!2321675 e!2321676)))

(declare-fun res!1520989 () Bool)

(assert (=> b!3753295 (=> (not res!1520989) (not e!2321676))))

(declare-fun dynLambda!17308 (Int B!2553) Bool)

(assert (=> b!3753295 (= res!1520989 (dynLambda!17308 p!2059 (h!45435 l2!1448)))))

(declare-fun b!3753296 () Bool)

(assert (=> b!3753296 (= e!2321676 (forall!8243 (t!303230 l2!1448) p!2059))))

(assert (= (and d!1095295 (not res!1520988)) b!3753295))

(assert (= (and b!3753295 res!1520989) b!3753296))

(declare-fun b_lambda!110155 () Bool)

(assert (=> (not b_lambda!110155) (not b!3753295)))

(declare-fun t!303236 () Bool)

(declare-fun tb!214733 () Bool)

(assert (=> (and start!352464 (= p!2059 p!2059) t!303236) tb!214733))

(declare-fun result!262234 () Bool)

(assert (=> tb!214733 (= result!262234 true)))

(assert (=> b!3753295 t!303236))

(declare-fun b_and!278907 () Bool)

(assert (= b_and!278901 (and (=> t!303236 result!262234) b_and!278907)))

(declare-fun m!4245085 () Bool)

(assert (=> b!3753295 m!4245085))

(declare-fun m!4245087 () Bool)

(assert (=> b!3753296 m!4245087))

(assert (=> b!3753280 d!1095295))

(declare-fun d!1095301 () Bool)

(declare-fun res!1520990 () Bool)

(declare-fun e!2321677 () Bool)

(assert (=> d!1095301 (=> res!1520990 e!2321677)))

(assert (=> d!1095301 (= res!1520990 ((_ is Nil!40015) (++!9909 l1!1479 l2!1448)))))

(assert (=> d!1095301 (= (forall!8243 (++!9909 l1!1479 l2!1448) p!2059) e!2321677)))

(declare-fun b!3753297 () Bool)

(declare-fun e!2321678 () Bool)

(assert (=> b!3753297 (= e!2321677 e!2321678)))

(declare-fun res!1520991 () Bool)

(assert (=> b!3753297 (=> (not res!1520991) (not e!2321678))))

(assert (=> b!3753297 (= res!1520991 (dynLambda!17308 p!2059 (h!45435 (++!9909 l1!1479 l2!1448))))))

(declare-fun b!3753298 () Bool)

(assert (=> b!3753298 (= e!2321678 (forall!8243 (t!303230 (++!9909 l1!1479 l2!1448)) p!2059))))

(assert (= (and d!1095301 (not res!1520990)) b!3753297))

(assert (= (and b!3753297 res!1520991) b!3753298))

(declare-fun b_lambda!110157 () Bool)

(assert (=> (not b_lambda!110157) (not b!3753297)))

(declare-fun t!303238 () Bool)

(declare-fun tb!214735 () Bool)

(assert (=> (and start!352464 (= p!2059 p!2059) t!303238) tb!214735))

(declare-fun result!262236 () Bool)

(assert (=> tb!214735 (= result!262236 true)))

(assert (=> b!3753297 t!303238))

(declare-fun b_and!278909 () Bool)

(assert (= b_and!278907 (and (=> t!303238 result!262236) b_and!278909)))

(declare-fun m!4245089 () Bool)

(assert (=> b!3753297 m!4245089))

(declare-fun m!4245091 () Bool)

(assert (=> b!3753298 m!4245091))

(assert (=> b!3753279 d!1095301))

(declare-fun d!1095303 () Bool)

(declare-fun e!2321695 () Bool)

(assert (=> d!1095303 e!2321695))

(declare-fun res!1521005 () Bool)

(assert (=> d!1095303 (=> (not res!1521005) (not e!2321695))))

(declare-fun lt!1300151 () List!40139)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5872 (List!40139) (InoxSet B!2553))

(assert (=> d!1095303 (= res!1521005 (= (content!5872 lt!1300151) ((_ map or) (content!5872 l1!1479) (content!5872 l2!1448))))))

(declare-fun e!2321696 () List!40139)

(assert (=> d!1095303 (= lt!1300151 e!2321696)))

(declare-fun c!649707 () Bool)

(assert (=> d!1095303 (= c!649707 ((_ is Nil!40015) l1!1479))))

(assert (=> d!1095303 (= (++!9909 l1!1479 l2!1448) lt!1300151)))

(declare-fun b!3753329 () Bool)

(declare-fun res!1521004 () Bool)

(assert (=> b!3753329 (=> (not res!1521004) (not e!2321695))))

(declare-fun size!30112 (List!40139) Int)

(assert (=> b!3753329 (= res!1521004 (= (size!30112 lt!1300151) (+ (size!30112 l1!1479) (size!30112 l2!1448))))))

(declare-fun b!3753328 () Bool)

(assert (=> b!3753328 (= e!2321696 (Cons!40015 (h!45435 l1!1479) (++!9909 (t!303230 l1!1479) l2!1448)))))

(declare-fun b!3753330 () Bool)

(assert (=> b!3753330 (= e!2321695 (or (not (= l2!1448 Nil!40015)) (= lt!1300151 l1!1479)))))

(declare-fun b!3753327 () Bool)

(assert (=> b!3753327 (= e!2321696 l2!1448)))

(assert (= (and d!1095303 c!649707) b!3753327))

(assert (= (and d!1095303 (not c!649707)) b!3753328))

(assert (= (and d!1095303 res!1521005) b!3753329))

(assert (= (and b!3753329 res!1521004) b!3753330))

(declare-fun m!4245111 () Bool)

(assert (=> d!1095303 m!4245111))

(declare-fun m!4245113 () Bool)

(assert (=> d!1095303 m!4245113))

(declare-fun m!4245115 () Bool)

(assert (=> d!1095303 m!4245115))

(declare-fun m!4245117 () Bool)

(assert (=> b!3753329 m!4245117))

(declare-fun m!4245119 () Bool)

(assert (=> b!3753329 m!4245119))

(declare-fun m!4245121 () Bool)

(assert (=> b!3753329 m!4245121))

(declare-fun m!4245123 () Bool)

(assert (=> b!3753328 m!4245123))

(assert (=> b!3753279 d!1095303))

(declare-fun d!1095307 () Bool)

(declare-fun res!1521006 () Bool)

(declare-fun e!2321697 () Bool)

(assert (=> d!1095307 (=> res!1521006 e!2321697)))

(assert (=> d!1095307 (= res!1521006 ((_ is Nil!40015) l1!1479))))

(assert (=> d!1095307 (= (forall!8243 l1!1479 p!2059) e!2321697)))

(declare-fun b!3753331 () Bool)

(declare-fun e!2321698 () Bool)

(assert (=> b!3753331 (= e!2321697 e!2321698)))

(declare-fun res!1521007 () Bool)

(assert (=> b!3753331 (=> (not res!1521007) (not e!2321698))))

(assert (=> b!3753331 (= res!1521007 (dynLambda!17308 p!2059 (h!45435 l1!1479)))))

(declare-fun b!3753332 () Bool)

(assert (=> b!3753332 (= e!2321698 (forall!8243 (t!303230 l1!1479) p!2059))))

(assert (= (and d!1095307 (not res!1521006)) b!3753331))

(assert (= (and b!3753331 res!1521007) b!3753332))

(declare-fun b_lambda!110167 () Bool)

(assert (=> (not b_lambda!110167) (not b!3753331)))

(declare-fun t!303242 () Bool)

(declare-fun tb!214739 () Bool)

(assert (=> (and start!352464 (= p!2059 p!2059) t!303242) tb!214739))

(declare-fun result!262242 () Bool)

(assert (=> tb!214739 (= result!262242 true)))

(assert (=> b!3753331 t!303242))

(declare-fun b_and!278913 () Bool)

(assert (= b_and!278909 (and (=> t!303242 result!262242) b_and!278913)))

(declare-fun m!4245125 () Bool)

(assert (=> b!3753331 m!4245125))

(declare-fun m!4245127 () Bool)

(assert (=> b!3753332 m!4245127))

(assert (=> b!3753279 d!1095307))

(declare-fun b!3753337 () Bool)

(declare-fun e!2321701 () Bool)

(declare-fun tp!1145987 () Bool)

(assert (=> b!3753337 (= e!2321701 (and tp_is_empty!19065 tp!1145987))))

(assert (=> b!3753282 (= tp!1145979 e!2321701)))

(assert (= (and b!3753282 ((_ is Cons!40015) (t!303230 l2!1448))) b!3753337))

(declare-fun b!3753338 () Bool)

(declare-fun e!2321702 () Bool)

(declare-fun tp!1145988 () Bool)

(assert (=> b!3753338 (= e!2321702 (and tp_is_empty!19065 tp!1145988))))

(assert (=> b!3753281 (= tp!1145980 e!2321702)))

(assert (= (and b!3753281 ((_ is Cons!40015) (t!303230 l1!1479))) b!3753338))

(declare-fun b_lambda!110169 () Bool)

(assert (= b_lambda!110167 (or (and start!352464 b_free!100431) b_lambda!110169)))

(declare-fun b_lambda!110171 () Bool)

(assert (= b_lambda!110155 (or (and start!352464 b_free!100431) b_lambda!110171)))

(declare-fun b_lambda!110173 () Bool)

(assert (= b_lambda!110157 (or (and start!352464 b_free!100431) b_lambda!110173)))

(check-sat b_and!278913 (not b!3753338) (not b_lambda!110169) (not b!3753328) (not b_next!101135) (not b_lambda!110173) (not b!3753298) (not b!3753332) (not b!3753337) (not b!3753296) (not b_lambda!110171) (not d!1095303) tp_is_empty!19065 (not b!3753329))
(check-sat b_and!278913 (not b_next!101135))
