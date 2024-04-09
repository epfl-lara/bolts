; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43902 () Bool)

(assert start!43902)

(declare-fun b!484509 () Bool)

(declare-fun e!285235 () Bool)

(declare-fun tp_is_empty!13953 () Bool)

(declare-fun tp!43555 () Bool)

(assert (=> b!484509 (= e!285235 (and tp_is_empty!13953 tp!43555))))

(declare-fun b!484510 () Bool)

(declare-fun res!288693 () Bool)

(declare-fun e!285233 () Bool)

(assert (=> b!484510 (=> (not res!288693) (not e!285233))))

(declare-datatypes ((B!1144 0))(
  ( (B!1145 (val!7024 Int)) )
))
(declare-datatypes ((tuple2!9246 0))(
  ( (tuple2!9247 (_1!4633 (_ BitVec 64)) (_2!4633 B!1144)) )
))
(declare-datatypes ((List!9323 0))(
  ( (Nil!9320) (Cons!9319 (h!10175 tuple2!9246) (t!15553 List!9323)) )
))
(declare-fun l!956 () List!9323)

(declare-fun key!251 () (_ BitVec 64))

(declare-fun containsKey!389 (List!9323 (_ BitVec 64)) Bool)

(assert (=> b!484510 (= res!288693 (not (containsKey!389 l!956 key!251)))))

(declare-fun res!288695 () Bool)

(assert (=> start!43902 (=> (not res!288695) (not e!285233))))

(declare-fun isStrictlySorted!423 (List!9323) Bool)

(assert (=> start!43902 (= res!288695 (isStrictlySorted!423 l!956))))

(assert (=> start!43902 e!285233))

(assert (=> start!43902 e!285235))

(assert (=> start!43902 true))

(assert (=> start!43902 tp_is_empty!13953))

(declare-fun b!484511 () Bool)

(declare-fun res!288691 () Bool)

(declare-fun e!285234 () Bool)

(assert (=> b!484511 (=> (not res!288691) (not e!285234))))

(assert (=> b!484511 (= res!288691 (isStrictlySorted!423 (t!15553 l!956)))))

(declare-fun b!484512 () Bool)

(declare-fun res!288692 () Bool)

(assert (=> b!484512 (=> (not res!288692) (not e!285234))))

(assert (=> b!484512 (= res!288692 (not (containsKey!389 (t!15553 l!956) key!251)))))

(declare-fun b!484513 () Bool)

(assert (=> b!484513 (= e!285233 e!285234)))

(declare-fun res!288694 () Bool)

(assert (=> b!484513 (=> (not res!288694) (not e!285234))))

(get-info :version)

(assert (=> b!484513 (= res!288694 (and ((_ is Cons!9319) l!956) (bvslt (_1!4633 (h!10175 l!956)) key!251)))))

(declare-fun value!166 () B!1144)

(declare-fun lt!219379 () List!9323)

(declare-fun insertStrictlySorted!242 (List!9323 (_ BitVec 64) B!1144) List!9323)

(assert (=> b!484513 (= lt!219379 (insertStrictlySorted!242 l!956 key!251 value!166))))

(declare-fun b!484514 () Bool)

(declare-fun length!12 (List!9323) Int)

(assert (=> b!484514 (= e!285234 (not (= (length!12 lt!219379) (+ 1 (length!12 l!956)))))))

(assert (=> b!484514 (= (length!12 (insertStrictlySorted!242 (t!15553 l!956) key!251 value!166)) (+ 1 (length!12 (t!15553 l!956))))))

(declare-datatypes ((Unit!14152 0))(
  ( (Unit!14153) )
))
(declare-fun lt!219380 () Unit!14152)

(declare-fun lemmaAddNewKeyIncrementSize!5 (List!9323 (_ BitVec 64) B!1144) Unit!14152)

(assert (=> b!484514 (= lt!219380 (lemmaAddNewKeyIncrementSize!5 (t!15553 l!956) key!251 value!166))))

(assert (= (and start!43902 res!288695) b!484510))

(assert (= (and b!484510 res!288693) b!484513))

(assert (= (and b!484513 res!288694) b!484511))

(assert (= (and b!484511 res!288691) b!484512))

(assert (= (and b!484512 res!288692) b!484514))

(assert (= (and start!43902 ((_ is Cons!9319) l!956)) b!484509))

(declare-fun m!464969 () Bool)

(assert (=> b!484512 m!464969))

(declare-fun m!464971 () Bool)

(assert (=> b!484511 m!464971))

(declare-fun m!464973 () Bool)

(assert (=> b!484510 m!464973))

(declare-fun m!464975 () Bool)

(assert (=> b!484514 m!464975))

(declare-fun m!464977 () Bool)

(assert (=> b!484514 m!464977))

(declare-fun m!464979 () Bool)

(assert (=> b!484514 m!464979))

(declare-fun m!464981 () Bool)

(assert (=> b!484514 m!464981))

(assert (=> b!484514 m!464977))

(declare-fun m!464983 () Bool)

(assert (=> b!484514 m!464983))

(declare-fun m!464985 () Bool)

(assert (=> b!484514 m!464985))

(declare-fun m!464987 () Bool)

(assert (=> b!484513 m!464987))

(declare-fun m!464989 () Bool)

(assert (=> start!43902 m!464989))

(check-sat (not b!484512) (not b!484513) (not b!484511) (not start!43902) (not b!484514) tp_is_empty!13953 (not b!484510) (not b!484509))
(check-sat)
(get-model)

(declare-fun d!77021 () Bool)

(declare-fun res!288715 () Bool)

(declare-fun e!285249 () Bool)

(assert (=> d!77021 (=> res!288715 e!285249)))

(assert (=> d!77021 (= res!288715 (or ((_ is Nil!9320) (t!15553 l!956)) ((_ is Nil!9320) (t!15553 (t!15553 l!956)))))))

(assert (=> d!77021 (= (isStrictlySorted!423 (t!15553 l!956)) e!285249)))

(declare-fun b!484537 () Bool)

(declare-fun e!285250 () Bool)

(assert (=> b!484537 (= e!285249 e!285250)))

(declare-fun res!288716 () Bool)

(assert (=> b!484537 (=> (not res!288716) (not e!285250))))

(assert (=> b!484537 (= res!288716 (bvslt (_1!4633 (h!10175 (t!15553 l!956))) (_1!4633 (h!10175 (t!15553 (t!15553 l!956))))))))

(declare-fun b!484538 () Bool)

(assert (=> b!484538 (= e!285250 (isStrictlySorted!423 (t!15553 (t!15553 l!956))))))

(assert (= (and d!77021 (not res!288715)) b!484537))

(assert (= (and b!484537 res!288716) b!484538))

(declare-fun m!465013 () Bool)

(assert (=> b!484538 m!465013))

(assert (=> b!484511 d!77021))

(declare-fun d!77023 () Bool)

(declare-fun res!288721 () Bool)

(declare-fun e!285255 () Bool)

(assert (=> d!77023 (=> res!288721 e!285255)))

(assert (=> d!77023 (= res!288721 (and ((_ is Cons!9319) (t!15553 l!956)) (= (_1!4633 (h!10175 (t!15553 l!956))) key!251)))))

(assert (=> d!77023 (= (containsKey!389 (t!15553 l!956) key!251) e!285255)))

(declare-fun b!484543 () Bool)

(declare-fun e!285256 () Bool)

(assert (=> b!484543 (= e!285255 e!285256)))

(declare-fun res!288722 () Bool)

(assert (=> b!484543 (=> (not res!288722) (not e!285256))))

(assert (=> b!484543 (= res!288722 (and (or (not ((_ is Cons!9319) (t!15553 l!956))) (bvsle (_1!4633 (h!10175 (t!15553 l!956))) key!251)) ((_ is Cons!9319) (t!15553 l!956)) (bvslt (_1!4633 (h!10175 (t!15553 l!956))) key!251)))))

(declare-fun b!484544 () Bool)

(assert (=> b!484544 (= e!285256 (containsKey!389 (t!15553 (t!15553 l!956)) key!251))))

(assert (= (and d!77023 (not res!288721)) b!484543))

(assert (= (and b!484543 res!288722) b!484544))

(declare-fun m!465015 () Bool)

(assert (=> b!484544 m!465015))

(assert (=> b!484512 d!77023))

(declare-fun d!77027 () Bool)

(declare-fun size!15442 (List!9323) Int)

(assert (=> d!77027 (= (length!12 lt!219379) (size!15442 lt!219379))))

(declare-fun bs!15423 () Bool)

(assert (= bs!15423 d!77027))

(declare-fun m!465017 () Bool)

(assert (=> bs!15423 m!465017))

(assert (=> b!484514 d!77027))

(declare-fun b!484615 () Bool)

(declare-fun res!288738 () Bool)

(declare-fun e!285294 () Bool)

(assert (=> b!484615 (=> (not res!288738) (not e!285294))))

(declare-fun lt!219394 () List!9323)

(assert (=> b!484615 (= res!288738 (containsKey!389 lt!219394 key!251))))

(declare-fun d!77029 () Bool)

(assert (=> d!77029 e!285294))

(declare-fun res!288737 () Bool)

(assert (=> d!77029 (=> (not res!288737) (not e!285294))))

(assert (=> d!77029 (= res!288737 (isStrictlySorted!423 lt!219394))))

(declare-fun e!285295 () List!9323)

(assert (=> d!77029 (= lt!219394 e!285295)))

(declare-fun c!58248 () Bool)

(assert (=> d!77029 (= c!58248 (and ((_ is Cons!9319) (t!15553 l!956)) (bvslt (_1!4633 (h!10175 (t!15553 l!956))) key!251)))))

(assert (=> d!77029 (isStrictlySorted!423 (t!15553 l!956))))

(assert (=> d!77029 (= (insertStrictlySorted!242 (t!15553 l!956) key!251 value!166) lt!219394)))

(declare-fun b!484616 () Bool)

(declare-fun c!58247 () Bool)

(declare-fun c!58249 () Bool)

(declare-fun e!285296 () List!9323)

(assert (=> b!484616 (= e!285296 (ite c!58247 (t!15553 (t!15553 l!956)) (ite c!58249 (Cons!9319 (h!10175 (t!15553 l!956)) (t!15553 (t!15553 l!956))) Nil!9320)))))

(declare-fun b!484617 () Bool)

(declare-fun e!285293 () List!9323)

(declare-fun call!31168 () List!9323)

(assert (=> b!484617 (= e!285293 call!31168)))

(declare-fun b!484618 () Bool)

(declare-fun e!285292 () List!9323)

(assert (=> b!484618 (= e!285295 e!285292)))

(assert (=> b!484618 (= c!58247 (and ((_ is Cons!9319) (t!15553 l!956)) (= (_1!4633 (h!10175 (t!15553 l!956))) key!251)))))

(declare-fun b!484619 () Bool)

(declare-fun call!31167 () List!9323)

(assert (=> b!484619 (= e!285295 call!31167)))

(declare-fun b!484620 () Bool)

(declare-fun call!31169 () List!9323)

(assert (=> b!484620 (= e!285292 call!31169)))

(declare-fun b!484621 () Bool)

(assert (=> b!484621 (= c!58249 (and ((_ is Cons!9319) (t!15553 l!956)) (bvsgt (_1!4633 (h!10175 (t!15553 l!956))) key!251)))))

(assert (=> b!484621 (= e!285292 e!285293)))

(declare-fun b!484622 () Bool)

(assert (=> b!484622 (= e!285293 call!31168)))

(declare-fun b!484623 () Bool)

(declare-fun contains!2687 (List!9323 tuple2!9246) Bool)

(assert (=> b!484623 (= e!285294 (contains!2687 lt!219394 (tuple2!9247 key!251 value!166)))))

(declare-fun b!484624 () Bool)

(assert (=> b!484624 (= e!285296 (insertStrictlySorted!242 (t!15553 (t!15553 l!956)) key!251 value!166))))

(declare-fun bm!31164 () Bool)

(assert (=> bm!31164 (= call!31168 call!31169)))

(declare-fun bm!31165 () Bool)

(assert (=> bm!31165 (= call!31169 call!31167)))

(declare-fun bm!31166 () Bool)

(declare-fun $colon$colon!126 (List!9323 tuple2!9246) List!9323)

(assert (=> bm!31166 (= call!31167 ($colon$colon!126 e!285296 (ite c!58248 (h!10175 (t!15553 l!956)) (tuple2!9247 key!251 value!166))))))

(declare-fun c!58246 () Bool)

(assert (=> bm!31166 (= c!58246 c!58248)))

(assert (= (and d!77029 c!58248) b!484619))

(assert (= (and d!77029 (not c!58248)) b!484618))

(assert (= (and b!484618 c!58247) b!484620))

(assert (= (and b!484618 (not c!58247)) b!484621))

(assert (= (and b!484621 c!58249) b!484622))

(assert (= (and b!484621 (not c!58249)) b!484617))

(assert (= (or b!484622 b!484617) bm!31164))

(assert (= (or b!484620 bm!31164) bm!31165))

(assert (= (or b!484619 bm!31165) bm!31166))

(assert (= (and bm!31166 c!58246) b!484624))

(assert (= (and bm!31166 (not c!58246)) b!484616))

(assert (= (and d!77029 res!288737) b!484615))

(assert (= (and b!484615 res!288738) b!484623))

(declare-fun m!465031 () Bool)

(assert (=> b!484624 m!465031))

(declare-fun m!465033 () Bool)

(assert (=> b!484623 m!465033))

(declare-fun m!465035 () Bool)

(assert (=> bm!31166 m!465035))

(declare-fun m!465037 () Bool)

(assert (=> b!484615 m!465037))

(declare-fun m!465039 () Bool)

(assert (=> d!77029 m!465039))

(assert (=> d!77029 m!464971))

(assert (=> b!484514 d!77029))

(declare-fun d!77037 () Bool)

(assert (=> d!77037 (= (length!12 (insertStrictlySorted!242 (t!15553 l!956) key!251 value!166)) (size!15442 (insertStrictlySorted!242 (t!15553 l!956) key!251 value!166)))))

(declare-fun bs!15425 () Bool)

(assert (= bs!15425 d!77037))

(assert (=> bs!15425 m!464977))

(declare-fun m!465041 () Bool)

(assert (=> bs!15425 m!465041))

(assert (=> b!484514 d!77037))

(declare-fun d!77039 () Bool)

(assert (=> d!77039 (= (length!12 (insertStrictlySorted!242 (t!15553 l!956) key!251 value!166)) (+ (length!12 (t!15553 l!956)) 1))))

(declare-fun lt!219402 () Unit!14152)

(declare-fun choose!1391 (List!9323 (_ BitVec 64) B!1144) Unit!14152)

(assert (=> d!77039 (= lt!219402 (choose!1391 (t!15553 l!956) key!251 value!166))))

(assert (=> d!77039 (isStrictlySorted!423 (t!15553 l!956))))

(assert (=> d!77039 (= (lemmaAddNewKeyIncrementSize!5 (t!15553 l!956) key!251 value!166) lt!219402)))

(declare-fun bs!15430 () Bool)

(assert (= bs!15430 d!77039))

(assert (=> bs!15430 m!464971))

(assert (=> bs!15430 m!464981))

(assert (=> bs!15430 m!464977))

(assert (=> bs!15430 m!464979))

(declare-fun m!465067 () Bool)

(assert (=> bs!15430 m!465067))

(assert (=> bs!15430 m!464977))

(assert (=> b!484514 d!77039))

(declare-fun d!77055 () Bool)

(assert (=> d!77055 (= (length!12 (t!15553 l!956)) (size!15442 (t!15553 l!956)))))

(declare-fun bs!15431 () Bool)

(assert (= bs!15431 d!77055))

(declare-fun m!465069 () Bool)

(assert (=> bs!15431 m!465069))

(assert (=> b!484514 d!77055))

(declare-fun d!77057 () Bool)

(assert (=> d!77057 (= (length!12 l!956) (size!15442 l!956))))

(declare-fun bs!15432 () Bool)

(assert (= bs!15432 d!77057))

(declare-fun m!465071 () Bool)

(assert (=> bs!15432 m!465071))

(assert (=> b!484514 d!77057))

(declare-fun b!484651 () Bool)

(declare-fun res!288750 () Bool)

(declare-fun e!285315 () Bool)

(assert (=> b!484651 (=> (not res!288750) (not e!285315))))

(declare-fun lt!219403 () List!9323)

(assert (=> b!484651 (= res!288750 (containsKey!389 lt!219403 key!251))))

(declare-fun d!77059 () Bool)

(assert (=> d!77059 e!285315))

(declare-fun res!288749 () Bool)

(assert (=> d!77059 (=> (not res!288749) (not e!285315))))

(assert (=> d!77059 (= res!288749 (isStrictlySorted!423 lt!219403))))

(declare-fun e!285316 () List!9323)

(assert (=> d!77059 (= lt!219403 e!285316)))

(declare-fun c!58260 () Bool)

(assert (=> d!77059 (= c!58260 (and ((_ is Cons!9319) l!956) (bvslt (_1!4633 (h!10175 l!956)) key!251)))))

(assert (=> d!77059 (isStrictlySorted!423 l!956)))

(assert (=> d!77059 (= (insertStrictlySorted!242 l!956 key!251 value!166) lt!219403)))

(declare-fun b!484652 () Bool)

(declare-fun c!58259 () Bool)

(declare-fun c!58261 () Bool)

(declare-fun e!285317 () List!9323)

(assert (=> b!484652 (= e!285317 (ite c!58259 (t!15553 l!956) (ite c!58261 (Cons!9319 (h!10175 l!956) (t!15553 l!956)) Nil!9320)))))

(declare-fun b!484653 () Bool)

(declare-fun e!285314 () List!9323)

(declare-fun call!31177 () List!9323)

(assert (=> b!484653 (= e!285314 call!31177)))

(declare-fun b!484654 () Bool)

(declare-fun e!285313 () List!9323)

(assert (=> b!484654 (= e!285316 e!285313)))

(assert (=> b!484654 (= c!58259 (and ((_ is Cons!9319) l!956) (= (_1!4633 (h!10175 l!956)) key!251)))))

(declare-fun b!484655 () Bool)

(declare-fun call!31176 () List!9323)

(assert (=> b!484655 (= e!285316 call!31176)))

(declare-fun b!484656 () Bool)

(declare-fun call!31178 () List!9323)

(assert (=> b!484656 (= e!285313 call!31178)))

(declare-fun b!484657 () Bool)

(assert (=> b!484657 (= c!58261 (and ((_ is Cons!9319) l!956) (bvsgt (_1!4633 (h!10175 l!956)) key!251)))))

(assert (=> b!484657 (= e!285313 e!285314)))

(declare-fun b!484658 () Bool)

(assert (=> b!484658 (= e!285314 call!31177)))

(declare-fun b!484659 () Bool)

(assert (=> b!484659 (= e!285315 (contains!2687 lt!219403 (tuple2!9247 key!251 value!166)))))

(declare-fun b!484660 () Bool)

(assert (=> b!484660 (= e!285317 (insertStrictlySorted!242 (t!15553 l!956) key!251 value!166))))

(declare-fun bm!31173 () Bool)

(assert (=> bm!31173 (= call!31177 call!31178)))

(declare-fun bm!31174 () Bool)

(assert (=> bm!31174 (= call!31178 call!31176)))

(declare-fun bm!31175 () Bool)

(assert (=> bm!31175 (= call!31176 ($colon$colon!126 e!285317 (ite c!58260 (h!10175 l!956) (tuple2!9247 key!251 value!166))))))

(declare-fun c!58258 () Bool)

(assert (=> bm!31175 (= c!58258 c!58260)))

(assert (= (and d!77059 c!58260) b!484655))

(assert (= (and d!77059 (not c!58260)) b!484654))

(assert (= (and b!484654 c!58259) b!484656))

(assert (= (and b!484654 (not c!58259)) b!484657))

(assert (= (and b!484657 c!58261) b!484658))

(assert (= (and b!484657 (not c!58261)) b!484653))

(assert (= (or b!484658 b!484653) bm!31173))

(assert (= (or b!484656 bm!31173) bm!31174))

(assert (= (or b!484655 bm!31174) bm!31175))

(assert (= (and bm!31175 c!58258) b!484660))

(assert (= (and bm!31175 (not c!58258)) b!484652))

(assert (= (and d!77059 res!288749) b!484651))

(assert (= (and b!484651 res!288750) b!484659))

(assert (=> b!484660 m!464977))

(declare-fun m!465073 () Bool)

(assert (=> b!484659 m!465073))

(declare-fun m!465075 () Bool)

(assert (=> bm!31175 m!465075))

(declare-fun m!465077 () Bool)

(assert (=> b!484651 m!465077))

(declare-fun m!465079 () Bool)

(assert (=> d!77059 m!465079))

(assert (=> d!77059 m!464989))

(assert (=> b!484513 d!77059))

(declare-fun d!77061 () Bool)

(declare-fun res!288759 () Bool)

(declare-fun e!285326 () Bool)

(assert (=> d!77061 (=> res!288759 e!285326)))

(assert (=> d!77061 (= res!288759 (and ((_ is Cons!9319) l!956) (= (_1!4633 (h!10175 l!956)) key!251)))))

(assert (=> d!77061 (= (containsKey!389 l!956 key!251) e!285326)))

(declare-fun b!484669 () Bool)

(declare-fun e!285327 () Bool)

(assert (=> b!484669 (= e!285326 e!285327)))

(declare-fun res!288760 () Bool)

(assert (=> b!484669 (=> (not res!288760) (not e!285327))))

(assert (=> b!484669 (= res!288760 (and (or (not ((_ is Cons!9319) l!956)) (bvsle (_1!4633 (h!10175 l!956)) key!251)) ((_ is Cons!9319) l!956) (bvslt (_1!4633 (h!10175 l!956)) key!251)))))

(declare-fun b!484670 () Bool)

(assert (=> b!484670 (= e!285327 (containsKey!389 (t!15553 l!956) key!251))))

(assert (= (and d!77061 (not res!288759)) b!484669))

(assert (= (and b!484669 res!288760) b!484670))

(assert (=> b!484670 m!464969))

(assert (=> b!484510 d!77061))

(declare-fun d!77063 () Bool)

(declare-fun res!288761 () Bool)

(declare-fun e!285328 () Bool)

(assert (=> d!77063 (=> res!288761 e!285328)))

(assert (=> d!77063 (= res!288761 (or ((_ is Nil!9320) l!956) ((_ is Nil!9320) (t!15553 l!956))))))

(assert (=> d!77063 (= (isStrictlySorted!423 l!956) e!285328)))

(declare-fun b!484671 () Bool)

(declare-fun e!285329 () Bool)

(assert (=> b!484671 (= e!285328 e!285329)))

(declare-fun res!288762 () Bool)

(assert (=> b!484671 (=> (not res!288762) (not e!285329))))

(assert (=> b!484671 (= res!288762 (bvslt (_1!4633 (h!10175 l!956)) (_1!4633 (h!10175 (t!15553 l!956)))))))

(declare-fun b!484672 () Bool)

(assert (=> b!484672 (= e!285329 (isStrictlySorted!423 (t!15553 l!956)))))

(assert (= (and d!77063 (not res!288761)) b!484671))

(assert (= (and b!484671 res!288762) b!484672))

(assert (=> b!484672 m!464971))

(assert (=> start!43902 d!77063))

(declare-fun b!484683 () Bool)

(declare-fun e!285338 () Bool)

(declare-fun tp!43561 () Bool)

(assert (=> b!484683 (= e!285338 (and tp_is_empty!13953 tp!43561))))

(assert (=> b!484509 (= tp!43555 e!285338)))

(assert (= (and b!484509 ((_ is Cons!9319) (t!15553 l!956))) b!484683))

(check-sat (not d!77029) (not d!77055) (not d!77039) (not bm!31175) (not b!484672) (not b!484683) (not d!77027) (not d!77059) (not b!484544) (not b!484670) (not b!484659) (not bm!31166) (not b!484624) (not b!484651) (not b!484660) (not d!77057) (not b!484538) (not d!77037) (not b!484615) tp_is_empty!13953 (not b!484623))
(check-sat)
(get-model)

(declare-fun d!77087 () Bool)

(declare-fun lt!219410 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!213 (List!9323) (InoxSet tuple2!9246))

(assert (=> d!77087 (= lt!219410 (select (content!213 lt!219403) (tuple2!9247 key!251 value!166)))))

(declare-fun e!285367 () Bool)

(assert (=> d!77087 (= lt!219410 e!285367)))

(declare-fun res!288787 () Bool)

(assert (=> d!77087 (=> (not res!288787) (not e!285367))))

(assert (=> d!77087 (= res!288787 ((_ is Cons!9319) lt!219403))))

(assert (=> d!77087 (= (contains!2687 lt!219403 (tuple2!9247 key!251 value!166)) lt!219410)))

(declare-fun b!484720 () Bool)

(declare-fun e!285366 () Bool)

(assert (=> b!484720 (= e!285367 e!285366)))

(declare-fun res!288788 () Bool)

(assert (=> b!484720 (=> res!288788 e!285366)))

(assert (=> b!484720 (= res!288788 (= (h!10175 lt!219403) (tuple2!9247 key!251 value!166)))))

(declare-fun b!484721 () Bool)

(assert (=> b!484721 (= e!285366 (contains!2687 (t!15553 lt!219403) (tuple2!9247 key!251 value!166)))))

(assert (= (and d!77087 res!288787) b!484720))

(assert (= (and b!484720 (not res!288788)) b!484721))

(declare-fun m!465109 () Bool)

(assert (=> d!77087 m!465109))

(declare-fun m!465111 () Bool)

(assert (=> d!77087 m!465111))

(declare-fun m!465113 () Bool)

(assert (=> b!484721 m!465113))

(assert (=> b!484659 d!77087))

(declare-fun d!77089 () Bool)

(assert (=> d!77089 (= ($colon$colon!126 e!285296 (ite c!58248 (h!10175 (t!15553 l!956)) (tuple2!9247 key!251 value!166))) (Cons!9319 (ite c!58248 (h!10175 (t!15553 l!956)) (tuple2!9247 key!251 value!166)) e!285296))))

(assert (=> bm!31166 d!77089))

(assert (=> b!484660 d!77029))

(declare-fun d!77091 () Bool)

(declare-fun res!288789 () Bool)

(declare-fun e!285368 () Bool)

(assert (=> d!77091 (=> res!288789 e!285368)))

(assert (=> d!77091 (= res!288789 (and ((_ is Cons!9319) lt!219403) (= (_1!4633 (h!10175 lt!219403)) key!251)))))

(assert (=> d!77091 (= (containsKey!389 lt!219403 key!251) e!285368)))

(declare-fun b!484722 () Bool)

(declare-fun e!285369 () Bool)

(assert (=> b!484722 (= e!285368 e!285369)))

(declare-fun res!288790 () Bool)

(assert (=> b!484722 (=> (not res!288790) (not e!285369))))

(assert (=> b!484722 (= res!288790 (and (or (not ((_ is Cons!9319) lt!219403)) (bvsle (_1!4633 (h!10175 lt!219403)) key!251)) ((_ is Cons!9319) lt!219403) (bvslt (_1!4633 (h!10175 lt!219403)) key!251)))))

(declare-fun b!484723 () Bool)

(assert (=> b!484723 (= e!285369 (containsKey!389 (t!15553 lt!219403) key!251))))

(assert (= (and d!77091 (not res!288789)) b!484722))

(assert (= (and b!484722 res!288790) b!484723))

(declare-fun m!465115 () Bool)

(assert (=> b!484723 m!465115))

(assert (=> b!484651 d!77091))

(declare-fun d!77093 () Bool)

(declare-fun lt!219413 () Int)

(assert (=> d!77093 (>= lt!219413 0)))

(declare-fun e!285372 () Int)

(assert (=> d!77093 (= lt!219413 e!285372)))

(declare-fun c!58268 () Bool)

(assert (=> d!77093 (= c!58268 ((_ is Nil!9320) l!956))))

(assert (=> d!77093 (= (size!15442 l!956) lt!219413)))

(declare-fun b!484728 () Bool)

(assert (=> b!484728 (= e!285372 0)))

(declare-fun b!484729 () Bool)

(assert (=> b!484729 (= e!285372 (+ 1 (size!15442 (t!15553 l!956))))))

(assert (= (and d!77093 c!58268) b!484728))

(assert (= (and d!77093 (not c!58268)) b!484729))

(assert (=> b!484729 m!465069))

(assert (=> d!77057 d!77093))

(assert (=> d!77039 d!77029))

(assert (=> d!77039 d!77037))

(assert (=> d!77039 d!77021))

(assert (=> d!77039 d!77055))

(declare-fun d!77095 () Bool)

(assert (=> d!77095 (= (length!12 (insertStrictlySorted!242 (t!15553 l!956) key!251 value!166)) (+ (length!12 (t!15553 l!956)) 1))))

(assert (=> d!77095 true))

(declare-fun _$9!26 () Unit!14152)

(assert (=> d!77095 (= (choose!1391 (t!15553 l!956) key!251 value!166) _$9!26)))

(declare-fun bs!15438 () Bool)

(assert (= bs!15438 d!77095))

(assert (=> bs!15438 m!464977))

(assert (=> bs!15438 m!464977))

(assert (=> bs!15438 m!464979))

(assert (=> bs!15438 m!464981))

(assert (=> d!77039 d!77095))

(declare-fun d!77097 () Bool)

(declare-fun res!288791 () Bool)

(declare-fun e!285373 () Bool)

(assert (=> d!77097 (=> res!288791 e!285373)))

(assert (=> d!77097 (= res!288791 (and ((_ is Cons!9319) (t!15553 (t!15553 l!956))) (= (_1!4633 (h!10175 (t!15553 (t!15553 l!956)))) key!251)))))

(assert (=> d!77097 (= (containsKey!389 (t!15553 (t!15553 l!956)) key!251) e!285373)))

(declare-fun b!484730 () Bool)

(declare-fun e!285374 () Bool)

(assert (=> b!484730 (= e!285373 e!285374)))

(declare-fun res!288792 () Bool)

(assert (=> b!484730 (=> (not res!288792) (not e!285374))))

(assert (=> b!484730 (= res!288792 (and (or (not ((_ is Cons!9319) (t!15553 (t!15553 l!956)))) (bvsle (_1!4633 (h!10175 (t!15553 (t!15553 l!956)))) key!251)) ((_ is Cons!9319) (t!15553 (t!15553 l!956))) (bvslt (_1!4633 (h!10175 (t!15553 (t!15553 l!956)))) key!251)))))

(declare-fun b!484731 () Bool)

(assert (=> b!484731 (= e!285374 (containsKey!389 (t!15553 (t!15553 (t!15553 l!956))) key!251))))

(assert (= (and d!77097 (not res!288791)) b!484730))

(assert (= (and b!484730 res!288792) b!484731))

(declare-fun m!465117 () Bool)

(assert (=> b!484731 m!465117))

(assert (=> b!484544 d!77097))

(declare-fun d!77099 () Bool)

(assert (=> d!77099 (= ($colon$colon!126 e!285317 (ite c!58260 (h!10175 l!956) (tuple2!9247 key!251 value!166))) (Cons!9319 (ite c!58260 (h!10175 l!956) (tuple2!9247 key!251 value!166)) e!285317))))

(assert (=> bm!31175 d!77099))

(declare-fun d!77101 () Bool)

(declare-fun res!288793 () Bool)

(declare-fun e!285375 () Bool)

(assert (=> d!77101 (=> res!288793 e!285375)))

(assert (=> d!77101 (= res!288793 (or ((_ is Nil!9320) lt!219394) ((_ is Nil!9320) (t!15553 lt!219394))))))

(assert (=> d!77101 (= (isStrictlySorted!423 lt!219394) e!285375)))

(declare-fun b!484732 () Bool)

(declare-fun e!285376 () Bool)

(assert (=> b!484732 (= e!285375 e!285376)))

(declare-fun res!288794 () Bool)

(assert (=> b!484732 (=> (not res!288794) (not e!285376))))

(assert (=> b!484732 (= res!288794 (bvslt (_1!4633 (h!10175 lt!219394)) (_1!4633 (h!10175 (t!15553 lt!219394)))))))

(declare-fun b!484733 () Bool)

(assert (=> b!484733 (= e!285376 (isStrictlySorted!423 (t!15553 lt!219394)))))

(assert (= (and d!77101 (not res!288793)) b!484732))

(assert (= (and b!484732 res!288794) b!484733))

(declare-fun m!465119 () Bool)

(assert (=> b!484733 m!465119))

(assert (=> d!77029 d!77101))

(assert (=> d!77029 d!77021))

(assert (=> b!484672 d!77021))

(declare-fun d!77103 () Bool)

(declare-fun lt!219414 () Bool)

(assert (=> d!77103 (= lt!219414 (select (content!213 lt!219394) (tuple2!9247 key!251 value!166)))))

(declare-fun e!285378 () Bool)

(assert (=> d!77103 (= lt!219414 e!285378)))

(declare-fun res!288795 () Bool)

(assert (=> d!77103 (=> (not res!288795) (not e!285378))))

(assert (=> d!77103 (= res!288795 ((_ is Cons!9319) lt!219394))))

(assert (=> d!77103 (= (contains!2687 lt!219394 (tuple2!9247 key!251 value!166)) lt!219414)))

(declare-fun b!484734 () Bool)

(declare-fun e!285377 () Bool)

(assert (=> b!484734 (= e!285378 e!285377)))

(declare-fun res!288796 () Bool)

(assert (=> b!484734 (=> res!288796 e!285377)))

(assert (=> b!484734 (= res!288796 (= (h!10175 lt!219394) (tuple2!9247 key!251 value!166)))))

(declare-fun b!484735 () Bool)

(assert (=> b!484735 (= e!285377 (contains!2687 (t!15553 lt!219394) (tuple2!9247 key!251 value!166)))))

(assert (= (and d!77103 res!288795) b!484734))

(assert (= (and b!484734 (not res!288796)) b!484735))

(declare-fun m!465121 () Bool)

(assert (=> d!77103 m!465121))

(declare-fun m!465123 () Bool)

(assert (=> d!77103 m!465123))

(declare-fun m!465125 () Bool)

(assert (=> b!484735 m!465125))

(assert (=> b!484623 d!77103))

(declare-fun d!77105 () Bool)

(declare-fun res!288797 () Bool)

(declare-fun e!285379 () Bool)

(assert (=> d!77105 (=> res!288797 e!285379)))

(assert (=> d!77105 (= res!288797 (or ((_ is Nil!9320) (t!15553 (t!15553 l!956))) ((_ is Nil!9320) (t!15553 (t!15553 (t!15553 l!956))))))))

(assert (=> d!77105 (= (isStrictlySorted!423 (t!15553 (t!15553 l!956))) e!285379)))

(declare-fun b!484736 () Bool)

(declare-fun e!285380 () Bool)

(assert (=> b!484736 (= e!285379 e!285380)))

(declare-fun res!288798 () Bool)

(assert (=> b!484736 (=> (not res!288798) (not e!285380))))

(assert (=> b!484736 (= res!288798 (bvslt (_1!4633 (h!10175 (t!15553 (t!15553 l!956)))) (_1!4633 (h!10175 (t!15553 (t!15553 (t!15553 l!956)))))))))

(declare-fun b!484737 () Bool)

(assert (=> b!484737 (= e!285380 (isStrictlySorted!423 (t!15553 (t!15553 (t!15553 l!956)))))))

(assert (= (and d!77105 (not res!288797)) b!484736))

(assert (= (and b!484736 res!288798) b!484737))

(declare-fun m!465127 () Bool)

(assert (=> b!484737 m!465127))

(assert (=> b!484538 d!77105))

(declare-fun d!77107 () Bool)

(declare-fun lt!219415 () Int)

(assert (=> d!77107 (>= lt!219415 0)))

(declare-fun e!285381 () Int)

(assert (=> d!77107 (= lt!219415 e!285381)))

(declare-fun c!58269 () Bool)

(assert (=> d!77107 (= c!58269 ((_ is Nil!9320) lt!219379))))

(assert (=> d!77107 (= (size!15442 lt!219379) lt!219415)))

(declare-fun b!484738 () Bool)

(assert (=> b!484738 (= e!285381 0)))

(declare-fun b!484739 () Bool)

(assert (=> b!484739 (= e!285381 (+ 1 (size!15442 (t!15553 lt!219379))))))

(assert (= (and d!77107 c!58269) b!484738))

(assert (= (and d!77107 (not c!58269)) b!484739))

(declare-fun m!465129 () Bool)

(assert (=> b!484739 m!465129))

(assert (=> d!77027 d!77107))

(declare-fun d!77109 () Bool)

(declare-fun res!288799 () Bool)

(declare-fun e!285382 () Bool)

(assert (=> d!77109 (=> res!288799 e!285382)))

(assert (=> d!77109 (= res!288799 (or ((_ is Nil!9320) lt!219403) ((_ is Nil!9320) (t!15553 lt!219403))))))

(assert (=> d!77109 (= (isStrictlySorted!423 lt!219403) e!285382)))

(declare-fun b!484740 () Bool)

(declare-fun e!285383 () Bool)

(assert (=> b!484740 (= e!285382 e!285383)))

(declare-fun res!288800 () Bool)

(assert (=> b!484740 (=> (not res!288800) (not e!285383))))

(assert (=> b!484740 (= res!288800 (bvslt (_1!4633 (h!10175 lt!219403)) (_1!4633 (h!10175 (t!15553 lt!219403)))))))

(declare-fun b!484741 () Bool)

(assert (=> b!484741 (= e!285383 (isStrictlySorted!423 (t!15553 lt!219403)))))

(assert (= (and d!77109 (not res!288799)) b!484740))

(assert (= (and b!484740 res!288800) b!484741))

(declare-fun m!465131 () Bool)

(assert (=> b!484741 m!465131))

(assert (=> d!77059 d!77109))

(assert (=> d!77059 d!77063))

(declare-fun d!77111 () Bool)

(declare-fun lt!219416 () Int)

(assert (=> d!77111 (>= lt!219416 0)))

(declare-fun e!285384 () Int)

(assert (=> d!77111 (= lt!219416 e!285384)))

(declare-fun c!58270 () Bool)

(assert (=> d!77111 (= c!58270 ((_ is Nil!9320) (insertStrictlySorted!242 (t!15553 l!956) key!251 value!166)))))

(assert (=> d!77111 (= (size!15442 (insertStrictlySorted!242 (t!15553 l!956) key!251 value!166)) lt!219416)))

(declare-fun b!484742 () Bool)

(assert (=> b!484742 (= e!285384 0)))

(declare-fun b!484743 () Bool)

(assert (=> b!484743 (= e!285384 (+ 1 (size!15442 (t!15553 (insertStrictlySorted!242 (t!15553 l!956) key!251 value!166)))))))

(assert (= (and d!77111 c!58270) b!484742))

(assert (= (and d!77111 (not c!58270)) b!484743))

(declare-fun m!465133 () Bool)

(assert (=> b!484743 m!465133))

(assert (=> d!77037 d!77111))

(assert (=> b!484670 d!77023))

(declare-fun b!484744 () Bool)

(declare-fun res!288802 () Bool)

(declare-fun e!285387 () Bool)

(assert (=> b!484744 (=> (not res!288802) (not e!285387))))

(declare-fun lt!219417 () List!9323)

(assert (=> b!484744 (= res!288802 (containsKey!389 lt!219417 key!251))))

(declare-fun d!77113 () Bool)

(assert (=> d!77113 e!285387))

(declare-fun res!288801 () Bool)

(assert (=> d!77113 (=> (not res!288801) (not e!285387))))

(assert (=> d!77113 (= res!288801 (isStrictlySorted!423 lt!219417))))

(declare-fun e!285388 () List!9323)

(assert (=> d!77113 (= lt!219417 e!285388)))

(declare-fun c!58273 () Bool)

(assert (=> d!77113 (= c!58273 (and ((_ is Cons!9319) (t!15553 (t!15553 l!956))) (bvslt (_1!4633 (h!10175 (t!15553 (t!15553 l!956)))) key!251)))))

(assert (=> d!77113 (isStrictlySorted!423 (t!15553 (t!15553 l!956)))))

(assert (=> d!77113 (= (insertStrictlySorted!242 (t!15553 (t!15553 l!956)) key!251 value!166) lt!219417)))

(declare-fun c!58274 () Bool)

(declare-fun e!285389 () List!9323)

(declare-fun c!58272 () Bool)

(declare-fun b!484745 () Bool)

(assert (=> b!484745 (= e!285389 (ite c!58272 (t!15553 (t!15553 (t!15553 l!956))) (ite c!58274 (Cons!9319 (h!10175 (t!15553 (t!15553 l!956))) (t!15553 (t!15553 (t!15553 l!956)))) Nil!9320)))))

(declare-fun b!484746 () Bool)

(declare-fun e!285386 () List!9323)

(declare-fun call!31183 () List!9323)

(assert (=> b!484746 (= e!285386 call!31183)))

(declare-fun b!484747 () Bool)

(declare-fun e!285385 () List!9323)

(assert (=> b!484747 (= e!285388 e!285385)))

(assert (=> b!484747 (= c!58272 (and ((_ is Cons!9319) (t!15553 (t!15553 l!956))) (= (_1!4633 (h!10175 (t!15553 (t!15553 l!956)))) key!251)))))

(declare-fun b!484748 () Bool)

(declare-fun call!31182 () List!9323)

(assert (=> b!484748 (= e!285388 call!31182)))

(declare-fun b!484749 () Bool)

(declare-fun call!31184 () List!9323)

(assert (=> b!484749 (= e!285385 call!31184)))

(declare-fun b!484750 () Bool)

(assert (=> b!484750 (= c!58274 (and ((_ is Cons!9319) (t!15553 (t!15553 l!956))) (bvsgt (_1!4633 (h!10175 (t!15553 (t!15553 l!956)))) key!251)))))

(assert (=> b!484750 (= e!285385 e!285386)))

(declare-fun b!484751 () Bool)

(assert (=> b!484751 (= e!285386 call!31183)))

(declare-fun b!484752 () Bool)

(assert (=> b!484752 (= e!285387 (contains!2687 lt!219417 (tuple2!9247 key!251 value!166)))))

(declare-fun b!484753 () Bool)

(assert (=> b!484753 (= e!285389 (insertStrictlySorted!242 (t!15553 (t!15553 (t!15553 l!956))) key!251 value!166))))

(declare-fun bm!31179 () Bool)

(assert (=> bm!31179 (= call!31183 call!31184)))

(declare-fun bm!31180 () Bool)

(assert (=> bm!31180 (= call!31184 call!31182)))

(declare-fun bm!31181 () Bool)

(assert (=> bm!31181 (= call!31182 ($colon$colon!126 e!285389 (ite c!58273 (h!10175 (t!15553 (t!15553 l!956))) (tuple2!9247 key!251 value!166))))))

(declare-fun c!58271 () Bool)

(assert (=> bm!31181 (= c!58271 c!58273)))

(assert (= (and d!77113 c!58273) b!484748))

(assert (= (and d!77113 (not c!58273)) b!484747))

(assert (= (and b!484747 c!58272) b!484749))

(assert (= (and b!484747 (not c!58272)) b!484750))

(assert (= (and b!484750 c!58274) b!484751))

(assert (= (and b!484750 (not c!58274)) b!484746))

(assert (= (or b!484751 b!484746) bm!31179))

(assert (= (or b!484749 bm!31179) bm!31180))

(assert (= (or b!484748 bm!31180) bm!31181))

(assert (= (and bm!31181 c!58271) b!484753))

(assert (= (and bm!31181 (not c!58271)) b!484745))

(assert (= (and d!77113 res!288801) b!484744))

(assert (= (and b!484744 res!288802) b!484752))

(declare-fun m!465135 () Bool)

(assert (=> b!484753 m!465135))

(declare-fun m!465137 () Bool)

(assert (=> b!484752 m!465137))

(declare-fun m!465139 () Bool)

(assert (=> bm!31181 m!465139))

(declare-fun m!465141 () Bool)

(assert (=> b!484744 m!465141))

(declare-fun m!465143 () Bool)

(assert (=> d!77113 m!465143))

(assert (=> d!77113 m!465013))

(assert (=> b!484624 d!77113))

(declare-fun d!77115 () Bool)

(declare-fun res!288803 () Bool)

(declare-fun e!285390 () Bool)

(assert (=> d!77115 (=> res!288803 e!285390)))

(assert (=> d!77115 (= res!288803 (and ((_ is Cons!9319) lt!219394) (= (_1!4633 (h!10175 lt!219394)) key!251)))))

(assert (=> d!77115 (= (containsKey!389 lt!219394 key!251) e!285390)))

(declare-fun b!484754 () Bool)

(declare-fun e!285391 () Bool)

(assert (=> b!484754 (= e!285390 e!285391)))

(declare-fun res!288804 () Bool)

(assert (=> b!484754 (=> (not res!288804) (not e!285391))))

(assert (=> b!484754 (= res!288804 (and (or (not ((_ is Cons!9319) lt!219394)) (bvsle (_1!4633 (h!10175 lt!219394)) key!251)) ((_ is Cons!9319) lt!219394) (bvslt (_1!4633 (h!10175 lt!219394)) key!251)))))

(declare-fun b!484755 () Bool)

(assert (=> b!484755 (= e!285391 (containsKey!389 (t!15553 lt!219394) key!251))))

(assert (= (and d!77115 (not res!288803)) b!484754))

(assert (= (and b!484754 res!288804) b!484755))

(declare-fun m!465145 () Bool)

(assert (=> b!484755 m!465145))

(assert (=> b!484615 d!77115))

(declare-fun d!77117 () Bool)

(declare-fun lt!219418 () Int)

(assert (=> d!77117 (>= lt!219418 0)))

(declare-fun e!285392 () Int)

(assert (=> d!77117 (= lt!219418 e!285392)))

(declare-fun c!58275 () Bool)

(assert (=> d!77117 (= c!58275 ((_ is Nil!9320) (t!15553 l!956)))))

(assert (=> d!77117 (= (size!15442 (t!15553 l!956)) lt!219418)))

(declare-fun b!484756 () Bool)

(assert (=> b!484756 (= e!285392 0)))

(declare-fun b!484757 () Bool)

(assert (=> b!484757 (= e!285392 (+ 1 (size!15442 (t!15553 (t!15553 l!956)))))))

(assert (= (and d!77117 c!58275) b!484756))

(assert (= (and d!77117 (not c!58275)) b!484757))

(declare-fun m!465147 () Bool)

(assert (=> b!484757 m!465147))

(assert (=> d!77055 d!77117))

(declare-fun b!484758 () Bool)

(declare-fun e!285393 () Bool)

(declare-fun tp!43568 () Bool)

(assert (=> b!484758 (= e!285393 (and tp_is_empty!13953 tp!43568))))

(assert (=> b!484683 (= tp!43561 e!285393)))

(assert (= (and b!484683 ((_ is Cons!9319) (t!15553 (t!15553 l!956)))) b!484758))

(check-sat (not b!484741) (not b!484757) (not b!484735) (not b!484731) (not b!484753) (not b!484729) (not d!77095) (not b!484758) (not b!484737) (not b!484723) (not bm!31181) (not b!484733) (not d!77103) (not b!484743) (not b!484739) (not d!77087) (not b!484721) (not d!77113) (not b!484755) (not b!484744) (not b!484752) tp_is_empty!13953)
(check-sat)
