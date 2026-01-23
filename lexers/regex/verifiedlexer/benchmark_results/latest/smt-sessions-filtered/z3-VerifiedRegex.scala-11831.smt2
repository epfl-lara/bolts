; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!665490 () Bool)

(assert start!665490)

(declare-fun b!6918248 () Bool)

(assert (=> b!6918248 true))

(assert (=> b!6918248 true))

(assert (=> b!6918248 true))

(declare-fun lambda!393112 () Int)

(declare-fun lambda!393111 () Int)

(assert (=> b!6918248 (not (= lambda!393112 lambda!393111))))

(assert (=> b!6918248 true))

(assert (=> b!6918248 true))

(assert (=> b!6918248 true))

(declare-fun bs!1845973 () Bool)

(declare-fun b!6918231 () Bool)

(assert (= bs!1845973 (and b!6918231 b!6918248)))

(declare-datatypes ((C!34088 0))(
  ( (C!34089 (val!26746 Int)) )
))
(declare-datatypes ((Regex!16909 0))(
  ( (ElementMatch!16909 (c!1284549 C!34088)) (Concat!25754 (regOne!34330 Regex!16909) (regTwo!34330 Regex!16909)) (EmptyExpr!16909) (Star!16909 (reg!17238 Regex!16909)) (EmptyLang!16909) (Union!16909 (regOne!34331 Regex!16909) (regTwo!34331 Regex!16909)) )
))
(declare-fun r1!6342 () Regex!16909)

(declare-fun r3!135 () Regex!16909)

(declare-datatypes ((List!66662 0))(
  ( (Nil!66538) (Cons!66538 (h!72986 C!34088) (t!380405 List!66662)) )
))
(declare-fun s!14361 () List!66662)

(declare-fun r2!6280 () Regex!16909)

(declare-fun lambda!393113 () Int)

(declare-fun lt!2469574 () Regex!16909)

(declare-datatypes ((tuple2!67532 0))(
  ( (tuple2!67533 (_1!37069 List!66662) (_2!37069 List!66662)) )
))
(declare-fun lt!2469572 () tuple2!67532)

(assert (=> bs!1845973 (= (and (= (_1!37069 lt!2469572) s!14361) (= r1!6342 lt!2469574) (= r2!6280 r3!135)) (= lambda!393113 lambda!393111))))

(assert (=> bs!1845973 (not (= lambda!393113 lambda!393112))))

(assert (=> b!6918231 true))

(assert (=> b!6918231 true))

(assert (=> b!6918231 true))

(declare-fun lambda!393114 () Int)

(assert (=> bs!1845973 (not (= lambda!393114 lambda!393111))))

(assert (=> bs!1845973 (= (and (= (_1!37069 lt!2469572) s!14361) (= r1!6342 lt!2469574) (= r2!6280 r3!135)) (= lambda!393114 lambda!393112))))

(assert (=> b!6918231 (not (= lambda!393114 lambda!393113))))

(assert (=> b!6918231 true))

(assert (=> b!6918231 true))

(assert (=> b!6918231 true))

(declare-fun b!6918228 () Bool)

(declare-fun res!2820754 () Bool)

(declare-fun e!4164136 () Bool)

(assert (=> b!6918228 (=> res!2820754 e!4164136)))

(declare-fun lt!2469566 () tuple2!67532)

(declare-fun matchR!9048 (Regex!16909 List!66662) Bool)

(assert (=> b!6918228 (= res!2820754 (not (matchR!9048 r2!6280 (_2!37069 lt!2469566))))))

(declare-fun b!6918229 () Bool)

(declare-fun e!4164133 () Bool)

(declare-fun tp!1906978 () Bool)

(declare-fun tp!1906975 () Bool)

(assert (=> b!6918229 (= e!4164133 (and tp!1906978 tp!1906975))))

(declare-fun b!6918230 () Bool)

(declare-fun res!2820750 () Bool)

(declare-fun e!4164135 () Bool)

(assert (=> b!6918230 (=> res!2820750 e!4164135)))

(assert (=> b!6918230 (= res!2820750 (not (matchR!9048 r3!135 (_2!37069 lt!2469572))))))

(assert (=> b!6918231 (= e!4164135 e!4164136)))

(declare-fun res!2820749 () Bool)

(assert (=> b!6918231 (=> res!2820749 e!4164136)))

(assert (=> b!6918231 (= res!2820749 (not (matchR!9048 r1!6342 (_1!37069 lt!2469566))))))

(declare-datatypes ((Option!16678 0))(
  ( (None!16677) (Some!16677 (v!52949 tuple2!67532)) )
))
(declare-fun lt!2469573 () Option!16678)

(declare-fun get!23304 (Option!16678) tuple2!67532)

(assert (=> b!6918231 (= lt!2469566 (get!23304 lt!2469573))))

(declare-fun Exists!3911 (Int) Bool)

(assert (=> b!6918231 (= (Exists!3911 lambda!393113) (Exists!3911 lambda!393114))))

(declare-datatypes ((Unit!160542 0))(
  ( (Unit!160543) )
))
(declare-fun lt!2469576 () Unit!160542)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2378 (Regex!16909 Regex!16909 List!66662) Unit!160542)

(assert (=> b!6918231 (= lt!2469576 (lemmaExistCutMatchRandMatchRSpecEquivalent!2378 r1!6342 r2!6280 (_1!37069 lt!2469572)))))

(declare-fun isDefined!13381 (Option!16678) Bool)

(assert (=> b!6918231 (= (isDefined!13381 lt!2469573) (Exists!3911 lambda!393113))))

(declare-fun findConcatSeparation!3092 (Regex!16909 Regex!16909 List!66662 List!66662 List!66662) Option!16678)

(assert (=> b!6918231 (= lt!2469573 (findConcatSeparation!3092 r1!6342 r2!6280 Nil!66538 (_1!37069 lt!2469572) (_1!37069 lt!2469572)))))

(declare-fun lt!2469579 () Unit!160542)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2854 (Regex!16909 Regex!16909 List!66662) Unit!160542)

(assert (=> b!6918231 (= lt!2469579 (lemmaFindConcatSeparationEquivalentToExists!2854 r1!6342 r2!6280 (_1!37069 lt!2469572)))))

(declare-fun b!6918232 () Bool)

(declare-fun e!4164132 () Bool)

(declare-fun tp!1906974 () Bool)

(declare-fun tp!1906964 () Bool)

(assert (=> b!6918232 (= e!4164132 (and tp!1906974 tp!1906964))))

(declare-fun b!6918233 () Bool)

(declare-fun res!2820755 () Bool)

(declare-fun e!4164140 () Bool)

(assert (=> b!6918233 (=> (not res!2820755) (not e!4164140))))

(declare-fun validRegex!8615 (Regex!16909) Bool)

(assert (=> b!6918233 (= res!2820755 (validRegex!8615 r2!6280))))

(declare-fun b!6918234 () Bool)

(declare-fun tp!1906969 () Bool)

(declare-fun tp!1906972 () Bool)

(assert (=> b!6918234 (= e!4164132 (and tp!1906969 tp!1906972))))

(declare-fun res!2820751 () Bool)

(assert (=> start!665490 (=> (not res!2820751) (not e!4164140))))

(assert (=> start!665490 (= res!2820751 (validRegex!8615 r1!6342))))

(assert (=> start!665490 e!4164140))

(declare-fun e!4164138 () Bool)

(assert (=> start!665490 e!4164138))

(assert (=> start!665490 e!4164132))

(assert (=> start!665490 e!4164133))

(declare-fun e!4164134 () Bool)

(assert (=> start!665490 e!4164134))

(declare-fun b!6918235 () Bool)

(declare-fun tp_is_empty!43043 () Bool)

(assert (=> b!6918235 (= e!4164138 tp_is_empty!43043)))

(declare-fun b!6918236 () Bool)

(declare-fun tp!1906965 () Bool)

(assert (=> b!6918236 (= e!4164134 (and tp_is_empty!43043 tp!1906965))))

(declare-fun b!6918237 () Bool)

(declare-fun e!4164139 () Bool)

(assert (=> b!6918237 (= e!4164136 e!4164139)))

(declare-fun res!2820753 () Bool)

(assert (=> b!6918237 (=> res!2820753 e!4164139)))

(declare-fun ++!14952 (List!66662 List!66662) List!66662)

(assert (=> b!6918237 (= res!2820753 (not (= (++!14952 (++!14952 (_1!37069 lt!2469566) (_2!37069 lt!2469566)) (_2!37069 lt!2469572)) s!14361)))))

(declare-fun matchRSpec!3966 (Regex!16909 List!66662) Bool)

(assert (=> b!6918237 (matchRSpec!3966 r2!6280 (_2!37069 lt!2469566))))

(declare-fun lt!2469569 () Unit!160542)

(declare-fun mainMatchTheorem!3966 (Regex!16909 List!66662) Unit!160542)

(assert (=> b!6918237 (= lt!2469569 (mainMatchTheorem!3966 r2!6280 (_2!37069 lt!2469566)))))

(assert (=> b!6918237 (matchRSpec!3966 r1!6342 (_1!37069 lt!2469566))))

(declare-fun lt!2469571 () Unit!160542)

(assert (=> b!6918237 (= lt!2469571 (mainMatchTheorem!3966 r1!6342 (_1!37069 lt!2469566)))))

(declare-fun b!6918238 () Bool)

(declare-fun tp!1906967 () Bool)

(declare-fun tp!1906968 () Bool)

(assert (=> b!6918238 (= e!4164138 (and tp!1906967 tp!1906968))))

(declare-fun b!6918239 () Bool)

(declare-fun lt!2469581 () Regex!16909)

(assert (=> b!6918239 (= e!4164139 (validRegex!8615 lt!2469581))))

(declare-fun lt!2469583 () List!66662)

(assert (=> b!6918239 (= lt!2469583 (++!14952 (_2!37069 lt!2469566) (_2!37069 lt!2469572)))))

(declare-fun b!6918240 () Bool)

(declare-fun tp!1906976 () Bool)

(assert (=> b!6918240 (= e!4164132 tp!1906976)))

(declare-fun b!6918241 () Bool)

(declare-fun e!4164137 () Bool)

(assert (=> b!6918241 (= e!4164140 (not e!4164137))))

(declare-fun res!2820752 () Bool)

(assert (=> b!6918241 (=> res!2820752 e!4164137)))

(declare-fun lt!2469568 () Bool)

(assert (=> b!6918241 (= res!2820752 (not lt!2469568))))

(declare-fun lt!2469570 () Regex!16909)

(assert (=> b!6918241 (= (matchR!9048 lt!2469570 s!14361) (matchRSpec!3966 lt!2469570 s!14361))))

(declare-fun lt!2469575 () Unit!160542)

(assert (=> b!6918241 (= lt!2469575 (mainMatchTheorem!3966 lt!2469570 s!14361))))

(declare-fun lt!2469582 () Regex!16909)

(assert (=> b!6918241 (= lt!2469568 (matchRSpec!3966 lt!2469582 s!14361))))

(assert (=> b!6918241 (= lt!2469568 (matchR!9048 lt!2469582 s!14361))))

(declare-fun lt!2469584 () Unit!160542)

(assert (=> b!6918241 (= lt!2469584 (mainMatchTheorem!3966 lt!2469582 s!14361))))

(assert (=> b!6918241 (= lt!2469570 (Concat!25754 r1!6342 lt!2469581))))

(assert (=> b!6918241 (= lt!2469581 (Concat!25754 r2!6280 r3!135))))

(assert (=> b!6918241 (= lt!2469582 (Concat!25754 lt!2469574 r3!135))))

(assert (=> b!6918241 (= lt!2469574 (Concat!25754 r1!6342 r2!6280))))

(declare-fun b!6918242 () Bool)

(declare-fun tp!1906970 () Bool)

(declare-fun tp!1906979 () Bool)

(assert (=> b!6918242 (= e!4164133 (and tp!1906970 tp!1906979))))

(declare-fun b!6918243 () Bool)

(declare-fun tp!1906973 () Bool)

(assert (=> b!6918243 (= e!4164138 tp!1906973)))

(declare-fun b!6918244 () Bool)

(assert (=> b!6918244 (= e!4164133 tp_is_empty!43043)))

(declare-fun b!6918245 () Bool)

(declare-fun res!2820748 () Bool)

(assert (=> b!6918245 (=> (not res!2820748) (not e!4164140))))

(assert (=> b!6918245 (= res!2820748 (validRegex!8615 r3!135))))

(declare-fun b!6918246 () Bool)

(declare-fun tp!1906966 () Bool)

(assert (=> b!6918246 (= e!4164133 tp!1906966)))

(declare-fun b!6918247 () Bool)

(assert (=> b!6918247 (= e!4164132 tp_is_empty!43043)))

(assert (=> b!6918248 (= e!4164137 e!4164135)))

(declare-fun res!2820756 () Bool)

(assert (=> b!6918248 (=> res!2820756 e!4164135)))

(declare-fun lt!2469577 () Bool)

(assert (=> b!6918248 (= res!2820756 (not lt!2469577))))

(assert (=> b!6918248 (= lt!2469577 (matchRSpec!3966 lt!2469574 (_1!37069 lt!2469572)))))

(assert (=> b!6918248 (= lt!2469577 (matchR!9048 lt!2469574 (_1!37069 lt!2469572)))))

(declare-fun lt!2469578 () Unit!160542)

(assert (=> b!6918248 (= lt!2469578 (mainMatchTheorem!3966 lt!2469574 (_1!37069 lt!2469572)))))

(declare-fun lt!2469580 () Option!16678)

(assert (=> b!6918248 (= lt!2469572 (get!23304 lt!2469580))))

(assert (=> b!6918248 (= (Exists!3911 lambda!393111) (Exists!3911 lambda!393112))))

(declare-fun lt!2469585 () Unit!160542)

(assert (=> b!6918248 (= lt!2469585 (lemmaExistCutMatchRandMatchRSpecEquivalent!2378 lt!2469574 r3!135 s!14361))))

(assert (=> b!6918248 (= (isDefined!13381 lt!2469580) (Exists!3911 lambda!393111))))

(assert (=> b!6918248 (= lt!2469580 (findConcatSeparation!3092 lt!2469574 r3!135 Nil!66538 s!14361 s!14361))))

(declare-fun lt!2469567 () Unit!160542)

(assert (=> b!6918248 (= lt!2469567 (lemmaFindConcatSeparationEquivalentToExists!2854 lt!2469574 r3!135 s!14361))))

(declare-fun b!6918249 () Bool)

(declare-fun tp!1906971 () Bool)

(declare-fun tp!1906977 () Bool)

(assert (=> b!6918249 (= e!4164138 (and tp!1906971 tp!1906977))))

(assert (= (and start!665490 res!2820751) b!6918233))

(assert (= (and b!6918233 res!2820755) b!6918245))

(assert (= (and b!6918245 res!2820748) b!6918241))

(assert (= (and b!6918241 (not res!2820752)) b!6918248))

(assert (= (and b!6918248 (not res!2820756)) b!6918230))

(assert (= (and b!6918230 (not res!2820750)) b!6918231))

(assert (= (and b!6918231 (not res!2820749)) b!6918228))

(assert (= (and b!6918228 (not res!2820754)) b!6918237))

(assert (= (and b!6918237 (not res!2820753)) b!6918239))

(get-info :version)

(assert (= (and start!665490 ((_ is ElementMatch!16909) r1!6342)) b!6918235))

(assert (= (and start!665490 ((_ is Concat!25754) r1!6342)) b!6918238))

(assert (= (and start!665490 ((_ is Star!16909) r1!6342)) b!6918243))

(assert (= (and start!665490 ((_ is Union!16909) r1!6342)) b!6918249))

(assert (= (and start!665490 ((_ is ElementMatch!16909) r2!6280)) b!6918247))

(assert (= (and start!665490 ((_ is Concat!25754) r2!6280)) b!6918234))

(assert (= (and start!665490 ((_ is Star!16909) r2!6280)) b!6918240))

(assert (= (and start!665490 ((_ is Union!16909) r2!6280)) b!6918232))

(assert (= (and start!665490 ((_ is ElementMatch!16909) r3!135)) b!6918244))

(assert (= (and start!665490 ((_ is Concat!25754) r3!135)) b!6918229))

(assert (= (and start!665490 ((_ is Star!16909) r3!135)) b!6918246))

(assert (= (and start!665490 ((_ is Union!16909) r3!135)) b!6918242))

(assert (= (and start!665490 ((_ is Cons!66538) s!14361)) b!6918236))

(declare-fun m!7628690 () Bool)

(assert (=> b!6918230 m!7628690))

(declare-fun m!7628692 () Bool)

(assert (=> b!6918245 m!7628692))

(declare-fun m!7628694 () Bool)

(assert (=> start!665490 m!7628694))

(declare-fun m!7628696 () Bool)

(assert (=> b!6918233 m!7628696))

(declare-fun m!7628698 () Bool)

(assert (=> b!6918248 m!7628698))

(declare-fun m!7628700 () Bool)

(assert (=> b!6918248 m!7628700))

(assert (=> b!6918248 m!7628698))

(declare-fun m!7628702 () Bool)

(assert (=> b!6918248 m!7628702))

(declare-fun m!7628704 () Bool)

(assert (=> b!6918248 m!7628704))

(declare-fun m!7628706 () Bool)

(assert (=> b!6918248 m!7628706))

(declare-fun m!7628708 () Bool)

(assert (=> b!6918248 m!7628708))

(declare-fun m!7628710 () Bool)

(assert (=> b!6918248 m!7628710))

(declare-fun m!7628712 () Bool)

(assert (=> b!6918248 m!7628712))

(declare-fun m!7628714 () Bool)

(assert (=> b!6918248 m!7628714))

(declare-fun m!7628716 () Bool)

(assert (=> b!6918248 m!7628716))

(declare-fun m!7628718 () Bool)

(assert (=> b!6918239 m!7628718))

(declare-fun m!7628720 () Bool)

(assert (=> b!6918239 m!7628720))

(declare-fun m!7628722 () Bool)

(assert (=> b!6918231 m!7628722))

(declare-fun m!7628724 () Bool)

(assert (=> b!6918231 m!7628724))

(declare-fun m!7628726 () Bool)

(assert (=> b!6918231 m!7628726))

(declare-fun m!7628728 () Bool)

(assert (=> b!6918231 m!7628728))

(assert (=> b!6918231 m!7628726))

(declare-fun m!7628730 () Bool)

(assert (=> b!6918231 m!7628730))

(declare-fun m!7628732 () Bool)

(assert (=> b!6918231 m!7628732))

(declare-fun m!7628734 () Bool)

(assert (=> b!6918231 m!7628734))

(declare-fun m!7628736 () Bool)

(assert (=> b!6918231 m!7628736))

(declare-fun m!7628738 () Bool)

(assert (=> b!6918228 m!7628738))

(declare-fun m!7628740 () Bool)

(assert (=> b!6918237 m!7628740))

(declare-fun m!7628742 () Bool)

(assert (=> b!6918237 m!7628742))

(declare-fun m!7628744 () Bool)

(assert (=> b!6918237 m!7628744))

(declare-fun m!7628746 () Bool)

(assert (=> b!6918237 m!7628746))

(declare-fun m!7628748 () Bool)

(assert (=> b!6918237 m!7628748))

(declare-fun m!7628750 () Bool)

(assert (=> b!6918237 m!7628750))

(assert (=> b!6918237 m!7628742))

(declare-fun m!7628752 () Bool)

(assert (=> b!6918241 m!7628752))

(declare-fun m!7628754 () Bool)

(assert (=> b!6918241 m!7628754))

(declare-fun m!7628756 () Bool)

(assert (=> b!6918241 m!7628756))

(declare-fun m!7628758 () Bool)

(assert (=> b!6918241 m!7628758))

(declare-fun m!7628760 () Bool)

(assert (=> b!6918241 m!7628760))

(declare-fun m!7628762 () Bool)

(assert (=> b!6918241 m!7628762))

(check-sat (not b!6918242) tp_is_empty!43043 (not b!6918243) (not b!6918238) (not b!6918234) (not b!6918241) (not start!665490) (not b!6918239) (not b!6918248) (not b!6918249) (not b!6918246) (not b!6918240) (not b!6918232) (not b!6918229) (not b!6918236) (not b!6918231) (not b!6918228) (not b!6918237) (not b!6918233) (not b!6918230) (not b!6918245))
(check-sat)
(get-model)

(declare-fun d!2164130 () Bool)

(declare-fun choose!51514 (Int) Bool)

(assert (=> d!2164130 (= (Exists!3911 lambda!393112) (choose!51514 lambda!393112))))

(declare-fun bs!1845974 () Bool)

(assert (= bs!1845974 d!2164130))

(declare-fun m!7628806 () Bool)

(assert (=> bs!1845974 m!7628806))

(assert (=> b!6918248 d!2164130))

(declare-fun bs!1846001 () Bool)

(declare-fun d!2164132 () Bool)

(assert (= bs!1846001 (and d!2164132 b!6918248)))

(declare-fun lambda!393130 () Int)

(assert (=> bs!1846001 (= lambda!393130 lambda!393111)))

(assert (=> bs!1846001 (not (= lambda!393130 lambda!393112))))

(declare-fun bs!1846002 () Bool)

(assert (= bs!1846002 (and d!2164132 b!6918231)))

(assert (=> bs!1846002 (= (and (= s!14361 (_1!37069 lt!2469572)) (= lt!2469574 r1!6342) (= r3!135 r2!6280)) (= lambda!393130 lambda!393113))))

(assert (=> bs!1846002 (not (= lambda!393130 lambda!393114))))

(assert (=> d!2164132 true))

(assert (=> d!2164132 true))

(assert (=> d!2164132 true))

(declare-fun lambda!393131 () Int)

(assert (=> bs!1846002 (= (and (= s!14361 (_1!37069 lt!2469572)) (= lt!2469574 r1!6342) (= r3!135 r2!6280)) (= lambda!393131 lambda!393114))))

(assert (=> bs!1846001 (= lambda!393131 lambda!393112)))

(assert (=> bs!1846001 (not (= lambda!393131 lambda!393111))))

(declare-fun bs!1846003 () Bool)

(assert (= bs!1846003 d!2164132))

(assert (=> bs!1846003 (not (= lambda!393131 lambda!393130))))

(assert (=> bs!1846002 (not (= lambda!393131 lambda!393113))))

(assert (=> d!2164132 true))

(assert (=> d!2164132 true))

(assert (=> d!2164132 true))

(assert (=> d!2164132 (= (Exists!3911 lambda!393130) (Exists!3911 lambda!393131))))

(declare-fun lt!2469600 () Unit!160542)

(declare-fun choose!51515 (Regex!16909 Regex!16909 List!66662) Unit!160542)

(assert (=> d!2164132 (= lt!2469600 (choose!51515 lt!2469574 r3!135 s!14361))))

(assert (=> d!2164132 (validRegex!8615 lt!2469574)))

(assert (=> d!2164132 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2378 lt!2469574 r3!135 s!14361) lt!2469600)))

(declare-fun m!7628850 () Bool)

(assert (=> bs!1846003 m!7628850))

(declare-fun m!7628852 () Bool)

(assert (=> bs!1846003 m!7628852))

(declare-fun m!7628854 () Bool)

(assert (=> bs!1846003 m!7628854))

(declare-fun m!7628856 () Bool)

(assert (=> bs!1846003 m!7628856))

(assert (=> b!6918248 d!2164132))

(declare-fun bs!1846012 () Bool)

(declare-fun d!2164152 () Bool)

(assert (= bs!1846012 (and d!2164152 b!6918231)))

(declare-fun lambda!393140 () Int)

(assert (=> bs!1846012 (not (= lambda!393140 lambda!393114))))

(declare-fun bs!1846013 () Bool)

(assert (= bs!1846013 (and d!2164152 b!6918248)))

(assert (=> bs!1846013 (not (= lambda!393140 lambda!393112))))

(assert (=> bs!1846013 (= lambda!393140 lambda!393111)))

(declare-fun bs!1846014 () Bool)

(assert (= bs!1846014 (and d!2164152 d!2164132)))

(assert (=> bs!1846014 (not (= lambda!393140 lambda!393131))))

(assert (=> bs!1846014 (= lambda!393140 lambda!393130)))

(assert (=> bs!1846012 (= (and (= s!14361 (_1!37069 lt!2469572)) (= lt!2469574 r1!6342) (= r3!135 r2!6280)) (= lambda!393140 lambda!393113))))

(assert (=> d!2164152 true))

(assert (=> d!2164152 true))

(assert (=> d!2164152 true))

(assert (=> d!2164152 (= (isDefined!13381 (findConcatSeparation!3092 lt!2469574 r3!135 Nil!66538 s!14361 s!14361)) (Exists!3911 lambda!393140))))

(declare-fun lt!2469606 () Unit!160542)

(declare-fun choose!51516 (Regex!16909 Regex!16909 List!66662) Unit!160542)

(assert (=> d!2164152 (= lt!2469606 (choose!51516 lt!2469574 r3!135 s!14361))))

(assert (=> d!2164152 (validRegex!8615 lt!2469574)))

(assert (=> d!2164152 (= (lemmaFindConcatSeparationEquivalentToExists!2854 lt!2469574 r3!135 s!14361) lt!2469606)))

(declare-fun bs!1846015 () Bool)

(assert (= bs!1846015 d!2164152))

(assert (=> bs!1846015 m!7628706))

(declare-fun m!7628864 () Bool)

(assert (=> bs!1846015 m!7628864))

(assert (=> bs!1846015 m!7628856))

(declare-fun m!7628866 () Bool)

(assert (=> bs!1846015 m!7628866))

(declare-fun m!7628868 () Bool)

(assert (=> bs!1846015 m!7628868))

(assert (=> bs!1846015 m!7628706))

(assert (=> b!6918248 d!2164152))

(declare-fun d!2164156 () Bool)

(declare-fun e!4164302 () Bool)

(assert (=> d!2164156 e!4164302))

(declare-fun c!1284614 () Bool)

(assert (=> d!2164156 (= c!1284614 ((_ is EmptyExpr!16909) lt!2469574))))

(declare-fun lt!2469623 () Bool)

(declare-fun e!4164303 () Bool)

(assert (=> d!2164156 (= lt!2469623 e!4164303)))

(declare-fun c!1284613 () Bool)

(declare-fun isEmpty!38790 (List!66662) Bool)

(assert (=> d!2164156 (= c!1284613 (isEmpty!38790 (_1!37069 lt!2469572)))))

(assert (=> d!2164156 (validRegex!8615 lt!2469574)))

(assert (=> d!2164156 (= (matchR!9048 lt!2469574 (_1!37069 lt!2469572)) lt!2469623)))

(declare-fun b!6918532 () Bool)

(declare-fun res!2820913 () Bool)

(declare-fun e!4164306 () Bool)

(assert (=> b!6918532 (=> res!2820913 e!4164306)))

(declare-fun e!4164305 () Bool)

(assert (=> b!6918532 (= res!2820913 e!4164305)))

(declare-fun res!2820911 () Bool)

(assert (=> b!6918532 (=> (not res!2820911) (not e!4164305))))

(assert (=> b!6918532 (= res!2820911 lt!2469623)))

(declare-fun b!6918533 () Bool)

(declare-fun e!4164304 () Bool)

(declare-fun head!13872 (List!66662) C!34088)

(assert (=> b!6918533 (= e!4164304 (not (= (head!13872 (_1!37069 lt!2469572)) (c!1284549 lt!2469574))))))

(declare-fun b!6918534 () Bool)

(declare-fun e!4164301 () Bool)

(assert (=> b!6918534 (= e!4164302 e!4164301)))

(declare-fun c!1284615 () Bool)

(assert (=> b!6918534 (= c!1284615 ((_ is EmptyLang!16909) lt!2469574))))

(declare-fun b!6918535 () Bool)

(declare-fun nullable!6744 (Regex!16909) Bool)

(assert (=> b!6918535 (= e!4164303 (nullable!6744 lt!2469574))))

(declare-fun b!6918536 () Bool)

(declare-fun call!628959 () Bool)

(assert (=> b!6918536 (= e!4164302 (= lt!2469623 call!628959))))

(declare-fun b!6918537 () Bool)

(declare-fun derivativeStep!5419 (Regex!16909 C!34088) Regex!16909)

(declare-fun tail!12924 (List!66662) List!66662)

(assert (=> b!6918537 (= e!4164303 (matchR!9048 (derivativeStep!5419 lt!2469574 (head!13872 (_1!37069 lt!2469572))) (tail!12924 (_1!37069 lt!2469572))))))

(declare-fun b!6918538 () Bool)

(declare-fun res!2820907 () Bool)

(assert (=> b!6918538 (=> res!2820907 e!4164306)))

(assert (=> b!6918538 (= res!2820907 (not ((_ is ElementMatch!16909) lt!2469574)))))

(assert (=> b!6918538 (= e!4164301 e!4164306)))

(declare-fun b!6918539 () Bool)

(declare-fun e!4164307 () Bool)

(assert (=> b!6918539 (= e!4164306 e!4164307)))

(declare-fun res!2820910 () Bool)

(assert (=> b!6918539 (=> (not res!2820910) (not e!4164307))))

(assert (=> b!6918539 (= res!2820910 (not lt!2469623))))

(declare-fun b!6918540 () Bool)

(assert (=> b!6918540 (= e!4164305 (= (head!13872 (_1!37069 lt!2469572)) (c!1284549 lt!2469574)))))

(declare-fun b!6918541 () Bool)

(declare-fun res!2820908 () Bool)

(assert (=> b!6918541 (=> res!2820908 e!4164304)))

(assert (=> b!6918541 (= res!2820908 (not (isEmpty!38790 (tail!12924 (_1!37069 lt!2469572)))))))

(declare-fun bm!628954 () Bool)

(assert (=> bm!628954 (= call!628959 (isEmpty!38790 (_1!37069 lt!2469572)))))

(declare-fun b!6918542 () Bool)

(declare-fun res!2820914 () Bool)

(assert (=> b!6918542 (=> (not res!2820914) (not e!4164305))))

(assert (=> b!6918542 (= res!2820914 (not call!628959))))

(declare-fun b!6918543 () Bool)

(assert (=> b!6918543 (= e!4164301 (not lt!2469623))))

(declare-fun b!6918544 () Bool)

(declare-fun res!2820912 () Bool)

(assert (=> b!6918544 (=> (not res!2820912) (not e!4164305))))

(assert (=> b!6918544 (= res!2820912 (isEmpty!38790 (tail!12924 (_1!37069 lt!2469572))))))

(declare-fun b!6918545 () Bool)

(assert (=> b!6918545 (= e!4164307 e!4164304)))

(declare-fun res!2820909 () Bool)

(assert (=> b!6918545 (=> res!2820909 e!4164304)))

(assert (=> b!6918545 (= res!2820909 call!628959)))

(assert (= (and d!2164156 c!1284613) b!6918535))

(assert (= (and d!2164156 (not c!1284613)) b!6918537))

(assert (= (and d!2164156 c!1284614) b!6918536))

(assert (= (and d!2164156 (not c!1284614)) b!6918534))

(assert (= (and b!6918534 c!1284615) b!6918543))

(assert (= (and b!6918534 (not c!1284615)) b!6918538))

(assert (= (and b!6918538 (not res!2820907)) b!6918532))

(assert (= (and b!6918532 res!2820911) b!6918542))

(assert (= (and b!6918542 res!2820914) b!6918544))

(assert (= (and b!6918544 res!2820912) b!6918540))

(assert (= (and b!6918532 (not res!2820913)) b!6918539))

(assert (= (and b!6918539 res!2820910) b!6918545))

(assert (= (and b!6918545 (not res!2820909)) b!6918541))

(assert (= (and b!6918541 (not res!2820908)) b!6918533))

(assert (= (or b!6918536 b!6918542 b!6918545) bm!628954))

(declare-fun m!7628928 () Bool)

(assert (=> d!2164156 m!7628928))

(assert (=> d!2164156 m!7628856))

(declare-fun m!7628930 () Bool)

(assert (=> b!6918541 m!7628930))

(assert (=> b!6918541 m!7628930))

(declare-fun m!7628932 () Bool)

(assert (=> b!6918541 m!7628932))

(declare-fun m!7628934 () Bool)

(assert (=> b!6918537 m!7628934))

(assert (=> b!6918537 m!7628934))

(declare-fun m!7628936 () Bool)

(assert (=> b!6918537 m!7628936))

(assert (=> b!6918537 m!7628930))

(assert (=> b!6918537 m!7628936))

(assert (=> b!6918537 m!7628930))

(declare-fun m!7628944 () Bool)

(assert (=> b!6918537 m!7628944))

(assert (=> b!6918540 m!7628934))

(assert (=> bm!628954 m!7628928))

(assert (=> b!6918544 m!7628930))

(assert (=> b!6918544 m!7628930))

(assert (=> b!6918544 m!7628932))

(assert (=> b!6918533 m!7628934))

(declare-fun m!7628950 () Bool)

(assert (=> b!6918535 m!7628950))

(assert (=> b!6918248 d!2164156))

(declare-fun d!2164174 () Bool)

(declare-fun isEmpty!38791 (Option!16678) Bool)

(assert (=> d!2164174 (= (isDefined!13381 lt!2469580) (not (isEmpty!38791 lt!2469580)))))

(declare-fun bs!1846056 () Bool)

(assert (= bs!1846056 d!2164174))

(declare-fun m!7628964 () Bool)

(assert (=> bs!1846056 m!7628964))

(assert (=> b!6918248 d!2164174))

(declare-fun bs!1846117 () Bool)

(declare-fun b!6918742 () Bool)

(assert (= bs!1846117 (and b!6918742 d!2164152)))

(declare-fun lambda!393154 () Int)

(assert (=> bs!1846117 (not (= lambda!393154 lambda!393140))))

(declare-fun bs!1846118 () Bool)

(assert (= bs!1846118 (and b!6918742 b!6918231)))

(assert (=> bs!1846118 (not (= lambda!393154 lambda!393114))))

(declare-fun bs!1846119 () Bool)

(assert (= bs!1846119 (and b!6918742 b!6918248)))

(assert (=> bs!1846119 (not (= lambda!393154 lambda!393112))))

(assert (=> bs!1846119 (not (= lambda!393154 lambda!393111))))

(declare-fun bs!1846120 () Bool)

(assert (= bs!1846120 (and b!6918742 d!2164132)))

(assert (=> bs!1846120 (not (= lambda!393154 lambda!393131))))

(assert (=> bs!1846120 (not (= lambda!393154 lambda!393130))))

(assert (=> bs!1846118 (not (= lambda!393154 lambda!393113))))

(assert (=> b!6918742 true))

(assert (=> b!6918742 true))

(declare-fun bs!1846121 () Bool)

(declare-fun b!6918738 () Bool)

(assert (= bs!1846121 (and b!6918738 d!2164152)))

(declare-fun lambda!393155 () Int)

(assert (=> bs!1846121 (not (= lambda!393155 lambda!393140))))

(declare-fun bs!1846122 () Bool)

(assert (= bs!1846122 (and b!6918738 b!6918231)))

(assert (=> bs!1846122 (= (and (= (regOne!34330 lt!2469574) r1!6342) (= (regTwo!34330 lt!2469574) r2!6280)) (= lambda!393155 lambda!393114))))

(declare-fun bs!1846123 () Bool)

(assert (= bs!1846123 (and b!6918738 b!6918248)))

(assert (=> bs!1846123 (= (and (= (_1!37069 lt!2469572) s!14361) (= (regOne!34330 lt!2469574) lt!2469574) (= (regTwo!34330 lt!2469574) r3!135)) (= lambda!393155 lambda!393112))))

(assert (=> bs!1846123 (not (= lambda!393155 lambda!393111))))

(declare-fun bs!1846124 () Bool)

(assert (= bs!1846124 (and b!6918738 b!6918742)))

(assert (=> bs!1846124 (not (= lambda!393155 lambda!393154))))

(declare-fun bs!1846125 () Bool)

(assert (= bs!1846125 (and b!6918738 d!2164132)))

(assert (=> bs!1846125 (= (and (= (_1!37069 lt!2469572) s!14361) (= (regOne!34330 lt!2469574) lt!2469574) (= (regTwo!34330 lt!2469574) r3!135)) (= lambda!393155 lambda!393131))))

(assert (=> bs!1846125 (not (= lambda!393155 lambda!393130))))

(assert (=> bs!1846122 (not (= lambda!393155 lambda!393113))))

(assert (=> b!6918738 true))

(assert (=> b!6918738 true))

(declare-fun e!4164397 () Bool)

(declare-fun call!628974 () Bool)

(assert (=> b!6918738 (= e!4164397 call!628974)))

(declare-fun b!6918739 () Bool)

(declare-fun e!4164399 () Bool)

(assert (=> b!6918739 (= e!4164399 e!4164397)))

(declare-fun c!1284647 () Bool)

(assert (=> b!6918739 (= c!1284647 ((_ is Star!16909) lt!2469574))))

(declare-fun b!6918740 () Bool)

(declare-fun e!4164398 () Bool)

(assert (=> b!6918740 (= e!4164398 (matchRSpec!3966 (regTwo!34331 lt!2469574) (_1!37069 lt!2469572)))))

(declare-fun b!6918741 () Bool)

(declare-fun res!2820976 () Bool)

(declare-fun e!4164396 () Bool)

(assert (=> b!6918741 (=> res!2820976 e!4164396)))

(declare-fun call!628973 () Bool)

(assert (=> b!6918741 (= res!2820976 call!628973)))

(assert (=> b!6918741 (= e!4164397 e!4164396)))

(declare-fun bm!628968 () Bool)

(assert (=> bm!628968 (= call!628973 (isEmpty!38790 (_1!37069 lt!2469572)))))

(declare-fun b!6918743 () Bool)

(declare-fun c!1284644 () Bool)

(assert (=> b!6918743 (= c!1284644 ((_ is Union!16909) lt!2469574))))

(declare-fun e!4164394 () Bool)

(assert (=> b!6918743 (= e!4164394 e!4164399)))

(declare-fun bm!628969 () Bool)

(assert (=> bm!628969 (= call!628974 (Exists!3911 (ite c!1284647 lambda!393154 lambda!393155)))))

(declare-fun b!6918744 () Bool)

(declare-fun e!4164395 () Bool)

(assert (=> b!6918744 (= e!4164395 call!628973)))

(declare-fun b!6918745 () Bool)

(declare-fun e!4164393 () Bool)

(assert (=> b!6918745 (= e!4164395 e!4164393)))

(declare-fun res!2820978 () Bool)

(assert (=> b!6918745 (= res!2820978 (not ((_ is EmptyLang!16909) lt!2469574)))))

(assert (=> b!6918745 (=> (not res!2820978) (not e!4164393))))

(declare-fun b!6918746 () Bool)

(declare-fun c!1284645 () Bool)

(assert (=> b!6918746 (= c!1284645 ((_ is ElementMatch!16909) lt!2469574))))

(assert (=> b!6918746 (= e!4164393 e!4164394)))

(declare-fun b!6918747 () Bool)

(assert (=> b!6918747 (= e!4164394 (= (_1!37069 lt!2469572) (Cons!66538 (c!1284549 lt!2469574) Nil!66538)))))

(declare-fun b!6918748 () Bool)

(assert (=> b!6918748 (= e!4164399 e!4164398)))

(declare-fun res!2820977 () Bool)

(assert (=> b!6918748 (= res!2820977 (matchRSpec!3966 (regOne!34331 lt!2469574) (_1!37069 lt!2469572)))))

(assert (=> b!6918748 (=> res!2820977 e!4164398)))

(assert (=> b!6918742 (= e!4164396 call!628974)))

(declare-fun d!2164178 () Bool)

(declare-fun c!1284646 () Bool)

(assert (=> d!2164178 (= c!1284646 ((_ is EmptyExpr!16909) lt!2469574))))

(assert (=> d!2164178 (= (matchRSpec!3966 lt!2469574 (_1!37069 lt!2469572)) e!4164395)))

(assert (= (and d!2164178 c!1284646) b!6918744))

(assert (= (and d!2164178 (not c!1284646)) b!6918745))

(assert (= (and b!6918745 res!2820978) b!6918746))

(assert (= (and b!6918746 c!1284645) b!6918747))

(assert (= (and b!6918746 (not c!1284645)) b!6918743))

(assert (= (and b!6918743 c!1284644) b!6918748))

(assert (= (and b!6918743 (not c!1284644)) b!6918739))

(assert (= (and b!6918748 (not res!2820977)) b!6918740))

(assert (= (and b!6918739 c!1284647) b!6918741))

(assert (= (and b!6918739 (not c!1284647)) b!6918738))

(assert (= (and b!6918741 (not res!2820976)) b!6918742))

(assert (= (or b!6918742 b!6918738) bm!628969))

(assert (= (or b!6918744 b!6918741) bm!628968))

(declare-fun m!7629056 () Bool)

(assert (=> b!6918740 m!7629056))

(assert (=> bm!628968 m!7628928))

(declare-fun m!7629058 () Bool)

(assert (=> bm!628969 m!7629058))

(declare-fun m!7629060 () Bool)

(assert (=> b!6918748 m!7629060))

(assert (=> b!6918248 d!2164178))

(declare-fun d!2164204 () Bool)

(assert (=> d!2164204 (= (matchR!9048 lt!2469574 (_1!37069 lt!2469572)) (matchRSpec!3966 lt!2469574 (_1!37069 lt!2469572)))))

(declare-fun lt!2469637 () Unit!160542)

(declare-fun choose!51517 (Regex!16909 List!66662) Unit!160542)

(assert (=> d!2164204 (= lt!2469637 (choose!51517 lt!2469574 (_1!37069 lt!2469572)))))

(assert (=> d!2164204 (validRegex!8615 lt!2469574)))

(assert (=> d!2164204 (= (mainMatchTheorem!3966 lt!2469574 (_1!37069 lt!2469572)) lt!2469637)))

(declare-fun bs!1846126 () Bool)

(assert (= bs!1846126 d!2164204))

(assert (=> bs!1846126 m!7628710))

(assert (=> bs!1846126 m!7628702))

(declare-fun m!7629062 () Bool)

(assert (=> bs!1846126 m!7629062))

(assert (=> bs!1846126 m!7628856))

(assert (=> b!6918248 d!2164204))

(declare-fun d!2164206 () Bool)

(assert (=> d!2164206 (= (Exists!3911 lambda!393111) (choose!51514 lambda!393111))))

(declare-fun bs!1846127 () Bool)

(assert (= bs!1846127 d!2164206))

(declare-fun m!7629064 () Bool)

(assert (=> bs!1846127 m!7629064))

(assert (=> b!6918248 d!2164206))

(declare-fun b!6918767 () Bool)

(declare-fun lt!2469646 () Unit!160542)

(declare-fun lt!2469645 () Unit!160542)

(assert (=> b!6918767 (= lt!2469646 lt!2469645)))

(assert (=> b!6918767 (= (++!14952 (++!14952 Nil!66538 (Cons!66538 (h!72986 s!14361) Nil!66538)) (t!380405 s!14361)) s!14361)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2823 (List!66662 C!34088 List!66662 List!66662) Unit!160542)

(assert (=> b!6918767 (= lt!2469645 (lemmaMoveElementToOtherListKeepsConcatEq!2823 Nil!66538 (h!72986 s!14361) (t!380405 s!14361) s!14361))))

(declare-fun e!4164412 () Option!16678)

(assert (=> b!6918767 (= e!4164412 (findConcatSeparation!3092 lt!2469574 r3!135 (++!14952 Nil!66538 (Cons!66538 (h!72986 s!14361) Nil!66538)) (t!380405 s!14361) s!14361))))

(declare-fun d!2164208 () Bool)

(declare-fun e!4164414 () Bool)

(assert (=> d!2164208 e!4164414))

(declare-fun res!2820991 () Bool)

(assert (=> d!2164208 (=> res!2820991 e!4164414)))

(declare-fun e!4164410 () Bool)

(assert (=> d!2164208 (= res!2820991 e!4164410)))

(declare-fun res!2820989 () Bool)

(assert (=> d!2164208 (=> (not res!2820989) (not e!4164410))))

(declare-fun lt!2469644 () Option!16678)

(assert (=> d!2164208 (= res!2820989 (isDefined!13381 lt!2469644))))

(declare-fun e!4164413 () Option!16678)

(assert (=> d!2164208 (= lt!2469644 e!4164413)))

(declare-fun c!1284652 () Bool)

(declare-fun e!4164411 () Bool)

(assert (=> d!2164208 (= c!1284652 e!4164411)))

(declare-fun res!2820990 () Bool)

(assert (=> d!2164208 (=> (not res!2820990) (not e!4164411))))

(assert (=> d!2164208 (= res!2820990 (matchR!9048 lt!2469574 Nil!66538))))

(assert (=> d!2164208 (validRegex!8615 lt!2469574)))

(assert (=> d!2164208 (= (findConcatSeparation!3092 lt!2469574 r3!135 Nil!66538 s!14361 s!14361) lt!2469644)))

(declare-fun b!6918768 () Bool)

(assert (=> b!6918768 (= e!4164414 (not (isDefined!13381 lt!2469644)))))

(declare-fun b!6918769 () Bool)

(assert (=> b!6918769 (= e!4164412 None!16677)))

(declare-fun b!6918770 () Bool)

(assert (=> b!6918770 (= e!4164413 e!4164412)))

(declare-fun c!1284653 () Bool)

(assert (=> b!6918770 (= c!1284653 ((_ is Nil!66538) s!14361))))

(declare-fun b!6918771 () Bool)

(assert (=> b!6918771 (= e!4164411 (matchR!9048 r3!135 s!14361))))

(declare-fun b!6918772 () Bool)

(declare-fun res!2820992 () Bool)

(assert (=> b!6918772 (=> (not res!2820992) (not e!4164410))))

(assert (=> b!6918772 (= res!2820992 (matchR!9048 lt!2469574 (_1!37069 (get!23304 lt!2469644))))))

(declare-fun b!6918773 () Bool)

(assert (=> b!6918773 (= e!4164410 (= (++!14952 (_1!37069 (get!23304 lt!2469644)) (_2!37069 (get!23304 lt!2469644))) s!14361))))

(declare-fun b!6918774 () Bool)

(declare-fun res!2820993 () Bool)

(assert (=> b!6918774 (=> (not res!2820993) (not e!4164410))))

(assert (=> b!6918774 (= res!2820993 (matchR!9048 r3!135 (_2!37069 (get!23304 lt!2469644))))))

(declare-fun b!6918775 () Bool)

(assert (=> b!6918775 (= e!4164413 (Some!16677 (tuple2!67533 Nil!66538 s!14361)))))

(assert (= (and d!2164208 res!2820990) b!6918771))

(assert (= (and d!2164208 c!1284652) b!6918775))

(assert (= (and d!2164208 (not c!1284652)) b!6918770))

(assert (= (and b!6918770 c!1284653) b!6918769))

(assert (= (and b!6918770 (not c!1284653)) b!6918767))

(assert (= (and d!2164208 res!2820989) b!6918772))

(assert (= (and b!6918772 res!2820992) b!6918774))

(assert (= (and b!6918774 res!2820993) b!6918773))

(assert (= (and d!2164208 (not res!2820991)) b!6918768))

(declare-fun m!7629066 () Bool)

(assert (=> b!6918771 m!7629066))

(declare-fun m!7629068 () Bool)

(assert (=> b!6918773 m!7629068))

(declare-fun m!7629070 () Bool)

(assert (=> b!6918773 m!7629070))

(declare-fun m!7629072 () Bool)

(assert (=> b!6918768 m!7629072))

(assert (=> b!6918772 m!7629068))

(declare-fun m!7629074 () Bool)

(assert (=> b!6918772 m!7629074))

(assert (=> d!2164208 m!7629072))

(declare-fun m!7629076 () Bool)

(assert (=> d!2164208 m!7629076))

(assert (=> d!2164208 m!7628856))

(assert (=> b!6918774 m!7629068))

(declare-fun m!7629078 () Bool)

(assert (=> b!6918774 m!7629078))

(declare-fun m!7629080 () Bool)

(assert (=> b!6918767 m!7629080))

(assert (=> b!6918767 m!7629080))

(declare-fun m!7629082 () Bool)

(assert (=> b!6918767 m!7629082))

(declare-fun m!7629084 () Bool)

(assert (=> b!6918767 m!7629084))

(assert (=> b!6918767 m!7629080))

(declare-fun m!7629086 () Bool)

(assert (=> b!6918767 m!7629086))

(assert (=> b!6918248 d!2164208))

(declare-fun d!2164210 () Bool)

(assert (=> d!2164210 (= (get!23304 lt!2469580) (v!52949 lt!2469580))))

(assert (=> b!6918248 d!2164210))

(declare-fun d!2164212 () Bool)

(assert (=> d!2164212 (= (matchR!9048 r1!6342 (_1!37069 lt!2469566)) (matchRSpec!3966 r1!6342 (_1!37069 lt!2469566)))))

(declare-fun lt!2469647 () Unit!160542)

(assert (=> d!2164212 (= lt!2469647 (choose!51517 r1!6342 (_1!37069 lt!2469566)))))

(assert (=> d!2164212 (validRegex!8615 r1!6342)))

(assert (=> d!2164212 (= (mainMatchTheorem!3966 r1!6342 (_1!37069 lt!2469566)) lt!2469647)))

(declare-fun bs!1846128 () Bool)

(assert (= bs!1846128 d!2164212))

(assert (=> bs!1846128 m!7628724))

(assert (=> bs!1846128 m!7628740))

(declare-fun m!7629088 () Bool)

(assert (=> bs!1846128 m!7629088))

(assert (=> bs!1846128 m!7628694))

(assert (=> b!6918237 d!2164212))

(declare-fun d!2164214 () Bool)

(assert (=> d!2164214 (= (matchR!9048 r2!6280 (_2!37069 lt!2469566)) (matchRSpec!3966 r2!6280 (_2!37069 lt!2469566)))))

(declare-fun lt!2469648 () Unit!160542)

(assert (=> d!2164214 (= lt!2469648 (choose!51517 r2!6280 (_2!37069 lt!2469566)))))

(assert (=> d!2164214 (validRegex!8615 r2!6280)))

(assert (=> d!2164214 (= (mainMatchTheorem!3966 r2!6280 (_2!37069 lt!2469566)) lt!2469648)))

(declare-fun bs!1846129 () Bool)

(assert (= bs!1846129 d!2164214))

(assert (=> bs!1846129 m!7628738))

(assert (=> bs!1846129 m!7628746))

(declare-fun m!7629090 () Bool)

(assert (=> bs!1846129 m!7629090))

(assert (=> bs!1846129 m!7628696))

(assert (=> b!6918237 d!2164214))

(declare-fun d!2164216 () Bool)

(declare-fun e!4164419 () Bool)

(assert (=> d!2164216 e!4164419))

(declare-fun res!2820999 () Bool)

(assert (=> d!2164216 (=> (not res!2820999) (not e!4164419))))

(declare-fun lt!2469651 () List!66662)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13072 (List!66662) (InoxSet C!34088))

(assert (=> d!2164216 (= res!2820999 (= (content!13072 lt!2469651) ((_ map or) (content!13072 (_1!37069 lt!2469566)) (content!13072 (_2!37069 lt!2469566)))))))

(declare-fun e!4164420 () List!66662)

(assert (=> d!2164216 (= lt!2469651 e!4164420)))

(declare-fun c!1284656 () Bool)

(assert (=> d!2164216 (= c!1284656 ((_ is Nil!66538) (_1!37069 lt!2469566)))))

(assert (=> d!2164216 (= (++!14952 (_1!37069 lt!2469566) (_2!37069 lt!2469566)) lt!2469651)))

(declare-fun b!6918786 () Bool)

(declare-fun res!2820998 () Bool)

(assert (=> b!6918786 (=> (not res!2820998) (not e!4164419))))

(declare-fun size!40769 (List!66662) Int)

(assert (=> b!6918786 (= res!2820998 (= (size!40769 lt!2469651) (+ (size!40769 (_1!37069 lt!2469566)) (size!40769 (_2!37069 lt!2469566)))))))

(declare-fun b!6918784 () Bool)

(assert (=> b!6918784 (= e!4164420 (_2!37069 lt!2469566))))

(declare-fun b!6918785 () Bool)

(assert (=> b!6918785 (= e!4164420 (Cons!66538 (h!72986 (_1!37069 lt!2469566)) (++!14952 (t!380405 (_1!37069 lt!2469566)) (_2!37069 lt!2469566))))))

(declare-fun b!6918787 () Bool)

(assert (=> b!6918787 (= e!4164419 (or (not (= (_2!37069 lt!2469566) Nil!66538)) (= lt!2469651 (_1!37069 lt!2469566))))))

(assert (= (and d!2164216 c!1284656) b!6918784))

(assert (= (and d!2164216 (not c!1284656)) b!6918785))

(assert (= (and d!2164216 res!2820999) b!6918786))

(assert (= (and b!6918786 res!2820998) b!6918787))

(declare-fun m!7629092 () Bool)

(assert (=> d!2164216 m!7629092))

(declare-fun m!7629094 () Bool)

(assert (=> d!2164216 m!7629094))

(declare-fun m!7629096 () Bool)

(assert (=> d!2164216 m!7629096))

(declare-fun m!7629098 () Bool)

(assert (=> b!6918786 m!7629098))

(declare-fun m!7629100 () Bool)

(assert (=> b!6918786 m!7629100))

(declare-fun m!7629102 () Bool)

(assert (=> b!6918786 m!7629102))

(declare-fun m!7629104 () Bool)

(assert (=> b!6918785 m!7629104))

(assert (=> b!6918237 d!2164216))

(declare-fun d!2164218 () Bool)

(declare-fun e!4164421 () Bool)

(assert (=> d!2164218 e!4164421))

(declare-fun res!2821001 () Bool)

(assert (=> d!2164218 (=> (not res!2821001) (not e!4164421))))

(declare-fun lt!2469652 () List!66662)

(assert (=> d!2164218 (= res!2821001 (= (content!13072 lt!2469652) ((_ map or) (content!13072 (++!14952 (_1!37069 lt!2469566) (_2!37069 lt!2469566))) (content!13072 (_2!37069 lt!2469572)))))))

(declare-fun e!4164422 () List!66662)

(assert (=> d!2164218 (= lt!2469652 e!4164422)))

(declare-fun c!1284657 () Bool)

(assert (=> d!2164218 (= c!1284657 ((_ is Nil!66538) (++!14952 (_1!37069 lt!2469566) (_2!37069 lt!2469566))))))

(assert (=> d!2164218 (= (++!14952 (++!14952 (_1!37069 lt!2469566) (_2!37069 lt!2469566)) (_2!37069 lt!2469572)) lt!2469652)))

(declare-fun b!6918790 () Bool)

(declare-fun res!2821000 () Bool)

(assert (=> b!6918790 (=> (not res!2821000) (not e!4164421))))

(assert (=> b!6918790 (= res!2821000 (= (size!40769 lt!2469652) (+ (size!40769 (++!14952 (_1!37069 lt!2469566) (_2!37069 lt!2469566))) (size!40769 (_2!37069 lt!2469572)))))))

(declare-fun b!6918788 () Bool)

(assert (=> b!6918788 (= e!4164422 (_2!37069 lt!2469572))))

(declare-fun b!6918789 () Bool)

(assert (=> b!6918789 (= e!4164422 (Cons!66538 (h!72986 (++!14952 (_1!37069 lt!2469566) (_2!37069 lt!2469566))) (++!14952 (t!380405 (++!14952 (_1!37069 lt!2469566) (_2!37069 lt!2469566))) (_2!37069 lt!2469572))))))

(declare-fun b!6918791 () Bool)

(assert (=> b!6918791 (= e!4164421 (or (not (= (_2!37069 lt!2469572) Nil!66538)) (= lt!2469652 (++!14952 (_1!37069 lt!2469566) (_2!37069 lt!2469566)))))))

(assert (= (and d!2164218 c!1284657) b!6918788))

(assert (= (and d!2164218 (not c!1284657)) b!6918789))

(assert (= (and d!2164218 res!2821001) b!6918790))

(assert (= (and b!6918790 res!2821000) b!6918791))

(declare-fun m!7629106 () Bool)

(assert (=> d!2164218 m!7629106))

(assert (=> d!2164218 m!7628742))

(declare-fun m!7629108 () Bool)

(assert (=> d!2164218 m!7629108))

(declare-fun m!7629110 () Bool)

(assert (=> d!2164218 m!7629110))

(declare-fun m!7629112 () Bool)

(assert (=> b!6918790 m!7629112))

(assert (=> b!6918790 m!7628742))

(declare-fun m!7629114 () Bool)

(assert (=> b!6918790 m!7629114))

(declare-fun m!7629116 () Bool)

(assert (=> b!6918790 m!7629116))

(declare-fun m!7629118 () Bool)

(assert (=> b!6918789 m!7629118))

(assert (=> b!6918237 d!2164218))

(declare-fun bs!1846130 () Bool)

(declare-fun b!6918796 () Bool)

(assert (= bs!1846130 (and b!6918796 d!2164152)))

(declare-fun lambda!393156 () Int)

(assert (=> bs!1846130 (not (= lambda!393156 lambda!393140))))

(declare-fun bs!1846131 () Bool)

(assert (= bs!1846131 (and b!6918796 b!6918738)))

(assert (=> bs!1846131 (not (= lambda!393156 lambda!393155))))

(declare-fun bs!1846132 () Bool)

(assert (= bs!1846132 (and b!6918796 b!6918231)))

(assert (=> bs!1846132 (not (= lambda!393156 lambda!393114))))

(declare-fun bs!1846133 () Bool)

(assert (= bs!1846133 (and b!6918796 b!6918248)))

(assert (=> bs!1846133 (not (= lambda!393156 lambda!393112))))

(assert (=> bs!1846133 (not (= lambda!393156 lambda!393111))))

(declare-fun bs!1846134 () Bool)

(assert (= bs!1846134 (and b!6918796 b!6918742)))

(assert (=> bs!1846134 (= (and (= (_2!37069 lt!2469566) (_1!37069 lt!2469572)) (= (reg!17238 r2!6280) (reg!17238 lt!2469574)) (= r2!6280 lt!2469574)) (= lambda!393156 lambda!393154))))

(declare-fun bs!1846135 () Bool)

(assert (= bs!1846135 (and b!6918796 d!2164132)))

(assert (=> bs!1846135 (not (= lambda!393156 lambda!393131))))

(assert (=> bs!1846135 (not (= lambda!393156 lambda!393130))))

(assert (=> bs!1846132 (not (= lambda!393156 lambda!393113))))

(assert (=> b!6918796 true))

(assert (=> b!6918796 true))

(declare-fun bs!1846136 () Bool)

(declare-fun b!6918792 () Bool)

(assert (= bs!1846136 (and b!6918792 d!2164152)))

(declare-fun lambda!393157 () Int)

(assert (=> bs!1846136 (not (= lambda!393157 lambda!393140))))

(declare-fun bs!1846137 () Bool)

(assert (= bs!1846137 (and b!6918792 b!6918738)))

(assert (=> bs!1846137 (= (and (= (_2!37069 lt!2469566) (_1!37069 lt!2469572)) (= (regOne!34330 r2!6280) (regOne!34330 lt!2469574)) (= (regTwo!34330 r2!6280) (regTwo!34330 lt!2469574))) (= lambda!393157 lambda!393155))))

(declare-fun bs!1846138 () Bool)

(assert (= bs!1846138 (and b!6918792 b!6918231)))

(assert (=> bs!1846138 (= (and (= (_2!37069 lt!2469566) (_1!37069 lt!2469572)) (= (regOne!34330 r2!6280) r1!6342) (= (regTwo!34330 r2!6280) r2!6280)) (= lambda!393157 lambda!393114))))

(declare-fun bs!1846139 () Bool)

(assert (= bs!1846139 (and b!6918792 b!6918248)))

(assert (=> bs!1846139 (= (and (= (_2!37069 lt!2469566) s!14361) (= (regOne!34330 r2!6280) lt!2469574) (= (regTwo!34330 r2!6280) r3!135)) (= lambda!393157 lambda!393112))))

(assert (=> bs!1846139 (not (= lambda!393157 lambda!393111))))

(declare-fun bs!1846140 () Bool)

(assert (= bs!1846140 (and b!6918792 b!6918796)))

(assert (=> bs!1846140 (not (= lambda!393157 lambda!393156))))

(declare-fun bs!1846141 () Bool)

(assert (= bs!1846141 (and b!6918792 b!6918742)))

(assert (=> bs!1846141 (not (= lambda!393157 lambda!393154))))

(declare-fun bs!1846142 () Bool)

(assert (= bs!1846142 (and b!6918792 d!2164132)))

(assert (=> bs!1846142 (= (and (= (_2!37069 lt!2469566) s!14361) (= (regOne!34330 r2!6280) lt!2469574) (= (regTwo!34330 r2!6280) r3!135)) (= lambda!393157 lambda!393131))))

(assert (=> bs!1846142 (not (= lambda!393157 lambda!393130))))

(assert (=> bs!1846138 (not (= lambda!393157 lambda!393113))))

(assert (=> b!6918792 true))

(assert (=> b!6918792 true))

(declare-fun e!4164427 () Bool)

(declare-fun call!628976 () Bool)

(assert (=> b!6918792 (= e!4164427 call!628976)))

(declare-fun b!6918793 () Bool)

(declare-fun e!4164429 () Bool)

(assert (=> b!6918793 (= e!4164429 e!4164427)))

(declare-fun c!1284661 () Bool)

(assert (=> b!6918793 (= c!1284661 ((_ is Star!16909) r2!6280))))

(declare-fun b!6918794 () Bool)

(declare-fun e!4164428 () Bool)

(assert (=> b!6918794 (= e!4164428 (matchRSpec!3966 (regTwo!34331 r2!6280) (_2!37069 lt!2469566)))))

(declare-fun b!6918795 () Bool)

(declare-fun res!2821002 () Bool)

(declare-fun e!4164426 () Bool)

(assert (=> b!6918795 (=> res!2821002 e!4164426)))

(declare-fun call!628975 () Bool)

(assert (=> b!6918795 (= res!2821002 call!628975)))

(assert (=> b!6918795 (= e!4164427 e!4164426)))

(declare-fun bm!628970 () Bool)

(assert (=> bm!628970 (= call!628975 (isEmpty!38790 (_2!37069 lt!2469566)))))

(declare-fun b!6918797 () Bool)

(declare-fun c!1284658 () Bool)

(assert (=> b!6918797 (= c!1284658 ((_ is Union!16909) r2!6280))))

(declare-fun e!4164424 () Bool)

(assert (=> b!6918797 (= e!4164424 e!4164429)))

(declare-fun bm!628971 () Bool)

(assert (=> bm!628971 (= call!628976 (Exists!3911 (ite c!1284661 lambda!393156 lambda!393157)))))

(declare-fun b!6918798 () Bool)

(declare-fun e!4164425 () Bool)

(assert (=> b!6918798 (= e!4164425 call!628975)))

(declare-fun b!6918799 () Bool)

(declare-fun e!4164423 () Bool)

(assert (=> b!6918799 (= e!4164425 e!4164423)))

(declare-fun res!2821004 () Bool)

(assert (=> b!6918799 (= res!2821004 (not ((_ is EmptyLang!16909) r2!6280)))))

(assert (=> b!6918799 (=> (not res!2821004) (not e!4164423))))

(declare-fun b!6918800 () Bool)

(declare-fun c!1284659 () Bool)

(assert (=> b!6918800 (= c!1284659 ((_ is ElementMatch!16909) r2!6280))))

(assert (=> b!6918800 (= e!4164423 e!4164424)))

(declare-fun b!6918801 () Bool)

(assert (=> b!6918801 (= e!4164424 (= (_2!37069 lt!2469566) (Cons!66538 (c!1284549 r2!6280) Nil!66538)))))

(declare-fun b!6918802 () Bool)

(assert (=> b!6918802 (= e!4164429 e!4164428)))

(declare-fun res!2821003 () Bool)

(assert (=> b!6918802 (= res!2821003 (matchRSpec!3966 (regOne!34331 r2!6280) (_2!37069 lt!2469566)))))

(assert (=> b!6918802 (=> res!2821003 e!4164428)))

(assert (=> b!6918796 (= e!4164426 call!628976)))

(declare-fun d!2164220 () Bool)

(declare-fun c!1284660 () Bool)

(assert (=> d!2164220 (= c!1284660 ((_ is EmptyExpr!16909) r2!6280))))

(assert (=> d!2164220 (= (matchRSpec!3966 r2!6280 (_2!37069 lt!2469566)) e!4164425)))

(assert (= (and d!2164220 c!1284660) b!6918798))

(assert (= (and d!2164220 (not c!1284660)) b!6918799))

(assert (= (and b!6918799 res!2821004) b!6918800))

(assert (= (and b!6918800 c!1284659) b!6918801))

(assert (= (and b!6918800 (not c!1284659)) b!6918797))

(assert (= (and b!6918797 c!1284658) b!6918802))

(assert (= (and b!6918797 (not c!1284658)) b!6918793))

(assert (= (and b!6918802 (not res!2821003)) b!6918794))

(assert (= (and b!6918793 c!1284661) b!6918795))

(assert (= (and b!6918793 (not c!1284661)) b!6918792))

(assert (= (and b!6918795 (not res!2821002)) b!6918796))

(assert (= (or b!6918796 b!6918792) bm!628971))

(assert (= (or b!6918798 b!6918795) bm!628970))

(declare-fun m!7629120 () Bool)

(assert (=> b!6918794 m!7629120))

(declare-fun m!7629122 () Bool)

(assert (=> bm!628970 m!7629122))

(declare-fun m!7629124 () Bool)

(assert (=> bm!628971 m!7629124))

(declare-fun m!7629126 () Bool)

(assert (=> b!6918802 m!7629126))

(assert (=> b!6918237 d!2164220))

(declare-fun bs!1846143 () Bool)

(declare-fun b!6918807 () Bool)

(assert (= bs!1846143 (and b!6918807 d!2164152)))

(declare-fun lambda!393158 () Int)

(assert (=> bs!1846143 (not (= lambda!393158 lambda!393140))))

(declare-fun bs!1846144 () Bool)

(assert (= bs!1846144 (and b!6918807 b!6918231)))

(assert (=> bs!1846144 (not (= lambda!393158 lambda!393114))))

(declare-fun bs!1846145 () Bool)

(assert (= bs!1846145 (and b!6918807 b!6918248)))

(assert (=> bs!1846145 (not (= lambda!393158 lambda!393112))))

(assert (=> bs!1846145 (not (= lambda!393158 lambda!393111))))

(declare-fun bs!1846146 () Bool)

(assert (= bs!1846146 (and b!6918807 b!6918796)))

(assert (=> bs!1846146 (= (and (= (_1!37069 lt!2469566) (_2!37069 lt!2469566)) (= (reg!17238 r1!6342) (reg!17238 r2!6280)) (= r1!6342 r2!6280)) (= lambda!393158 lambda!393156))))

(declare-fun bs!1846147 () Bool)

(assert (= bs!1846147 (and b!6918807 b!6918742)))

(assert (=> bs!1846147 (= (and (= (_1!37069 lt!2469566) (_1!37069 lt!2469572)) (= (reg!17238 r1!6342) (reg!17238 lt!2469574)) (= r1!6342 lt!2469574)) (= lambda!393158 lambda!393154))))

(declare-fun bs!1846148 () Bool)

(assert (= bs!1846148 (and b!6918807 d!2164132)))

(assert (=> bs!1846148 (not (= lambda!393158 lambda!393131))))

(assert (=> bs!1846148 (not (= lambda!393158 lambda!393130))))

(assert (=> bs!1846144 (not (= lambda!393158 lambda!393113))))

(declare-fun bs!1846149 () Bool)

(assert (= bs!1846149 (and b!6918807 b!6918792)))

(assert (=> bs!1846149 (not (= lambda!393158 lambda!393157))))

(declare-fun bs!1846150 () Bool)

(assert (= bs!1846150 (and b!6918807 b!6918738)))

(assert (=> bs!1846150 (not (= lambda!393158 lambda!393155))))

(assert (=> b!6918807 true))

(assert (=> b!6918807 true))

(declare-fun bs!1846151 () Bool)

(declare-fun b!6918803 () Bool)

(assert (= bs!1846151 (and b!6918803 d!2164152)))

(declare-fun lambda!393159 () Int)

(assert (=> bs!1846151 (not (= lambda!393159 lambda!393140))))

(declare-fun bs!1846152 () Bool)

(assert (= bs!1846152 (and b!6918803 b!6918231)))

(assert (=> bs!1846152 (= (and (= (_1!37069 lt!2469566) (_1!37069 lt!2469572)) (= (regOne!34330 r1!6342) r1!6342) (= (regTwo!34330 r1!6342) r2!6280)) (= lambda!393159 lambda!393114))))

(declare-fun bs!1846153 () Bool)

(assert (= bs!1846153 (and b!6918803 b!6918248)))

(assert (=> bs!1846153 (= (and (= (_1!37069 lt!2469566) s!14361) (= (regOne!34330 r1!6342) lt!2469574) (= (regTwo!34330 r1!6342) r3!135)) (= lambda!393159 lambda!393112))))

(assert (=> bs!1846153 (not (= lambda!393159 lambda!393111))))

(declare-fun bs!1846154 () Bool)

(assert (= bs!1846154 (and b!6918803 b!6918807)))

(assert (=> bs!1846154 (not (= lambda!393159 lambda!393158))))

(declare-fun bs!1846155 () Bool)

(assert (= bs!1846155 (and b!6918803 b!6918796)))

(assert (=> bs!1846155 (not (= lambda!393159 lambda!393156))))

(declare-fun bs!1846156 () Bool)

(assert (= bs!1846156 (and b!6918803 b!6918742)))

(assert (=> bs!1846156 (not (= lambda!393159 lambda!393154))))

(declare-fun bs!1846157 () Bool)

(assert (= bs!1846157 (and b!6918803 d!2164132)))

(assert (=> bs!1846157 (= (and (= (_1!37069 lt!2469566) s!14361) (= (regOne!34330 r1!6342) lt!2469574) (= (regTwo!34330 r1!6342) r3!135)) (= lambda!393159 lambda!393131))))

(assert (=> bs!1846157 (not (= lambda!393159 lambda!393130))))

(assert (=> bs!1846152 (not (= lambda!393159 lambda!393113))))

(declare-fun bs!1846158 () Bool)

(assert (= bs!1846158 (and b!6918803 b!6918792)))

(assert (=> bs!1846158 (= (and (= (_1!37069 lt!2469566) (_2!37069 lt!2469566)) (= (regOne!34330 r1!6342) (regOne!34330 r2!6280)) (= (regTwo!34330 r1!6342) (regTwo!34330 r2!6280))) (= lambda!393159 lambda!393157))))

(declare-fun bs!1846159 () Bool)

(assert (= bs!1846159 (and b!6918803 b!6918738)))

(assert (=> bs!1846159 (= (and (= (_1!37069 lt!2469566) (_1!37069 lt!2469572)) (= (regOne!34330 r1!6342) (regOne!34330 lt!2469574)) (= (regTwo!34330 r1!6342) (regTwo!34330 lt!2469574))) (= lambda!393159 lambda!393155))))

(assert (=> b!6918803 true))

(assert (=> b!6918803 true))

(declare-fun e!4164434 () Bool)

(declare-fun call!628978 () Bool)

(assert (=> b!6918803 (= e!4164434 call!628978)))

(declare-fun b!6918804 () Bool)

(declare-fun e!4164436 () Bool)

(assert (=> b!6918804 (= e!4164436 e!4164434)))

(declare-fun c!1284665 () Bool)

(assert (=> b!6918804 (= c!1284665 ((_ is Star!16909) r1!6342))))

(declare-fun b!6918805 () Bool)

(declare-fun e!4164435 () Bool)

(assert (=> b!6918805 (= e!4164435 (matchRSpec!3966 (regTwo!34331 r1!6342) (_1!37069 lt!2469566)))))

(declare-fun b!6918806 () Bool)

(declare-fun res!2821005 () Bool)

(declare-fun e!4164433 () Bool)

(assert (=> b!6918806 (=> res!2821005 e!4164433)))

(declare-fun call!628977 () Bool)

(assert (=> b!6918806 (= res!2821005 call!628977)))

(assert (=> b!6918806 (= e!4164434 e!4164433)))

(declare-fun bm!628972 () Bool)

(assert (=> bm!628972 (= call!628977 (isEmpty!38790 (_1!37069 lt!2469566)))))

(declare-fun b!6918808 () Bool)

(declare-fun c!1284662 () Bool)

(assert (=> b!6918808 (= c!1284662 ((_ is Union!16909) r1!6342))))

(declare-fun e!4164431 () Bool)

(assert (=> b!6918808 (= e!4164431 e!4164436)))

(declare-fun bm!628973 () Bool)

(assert (=> bm!628973 (= call!628978 (Exists!3911 (ite c!1284665 lambda!393158 lambda!393159)))))

(declare-fun b!6918809 () Bool)

(declare-fun e!4164432 () Bool)

(assert (=> b!6918809 (= e!4164432 call!628977)))

(declare-fun b!6918810 () Bool)

(declare-fun e!4164430 () Bool)

(assert (=> b!6918810 (= e!4164432 e!4164430)))

(declare-fun res!2821007 () Bool)

(assert (=> b!6918810 (= res!2821007 (not ((_ is EmptyLang!16909) r1!6342)))))

(assert (=> b!6918810 (=> (not res!2821007) (not e!4164430))))

(declare-fun b!6918811 () Bool)

(declare-fun c!1284663 () Bool)

(assert (=> b!6918811 (= c!1284663 ((_ is ElementMatch!16909) r1!6342))))

(assert (=> b!6918811 (= e!4164430 e!4164431)))

(declare-fun b!6918812 () Bool)

(assert (=> b!6918812 (= e!4164431 (= (_1!37069 lt!2469566) (Cons!66538 (c!1284549 r1!6342) Nil!66538)))))

(declare-fun b!6918813 () Bool)

(assert (=> b!6918813 (= e!4164436 e!4164435)))

(declare-fun res!2821006 () Bool)

(assert (=> b!6918813 (= res!2821006 (matchRSpec!3966 (regOne!34331 r1!6342) (_1!37069 lt!2469566)))))

(assert (=> b!6918813 (=> res!2821006 e!4164435)))

(assert (=> b!6918807 (= e!4164433 call!628978)))

(declare-fun d!2164222 () Bool)

(declare-fun c!1284664 () Bool)

(assert (=> d!2164222 (= c!1284664 ((_ is EmptyExpr!16909) r1!6342))))

(assert (=> d!2164222 (= (matchRSpec!3966 r1!6342 (_1!37069 lt!2469566)) e!4164432)))

(assert (= (and d!2164222 c!1284664) b!6918809))

(assert (= (and d!2164222 (not c!1284664)) b!6918810))

(assert (= (and b!6918810 res!2821007) b!6918811))

(assert (= (and b!6918811 c!1284663) b!6918812))

(assert (= (and b!6918811 (not c!1284663)) b!6918808))

(assert (= (and b!6918808 c!1284662) b!6918813))

(assert (= (and b!6918808 (not c!1284662)) b!6918804))

(assert (= (and b!6918813 (not res!2821006)) b!6918805))

(assert (= (and b!6918804 c!1284665) b!6918806))

(assert (= (and b!6918804 (not c!1284665)) b!6918803))

(assert (= (and b!6918806 (not res!2821005)) b!6918807))

(assert (= (or b!6918807 b!6918803) bm!628973))

(assert (= (or b!6918809 b!6918806) bm!628972))

(declare-fun m!7629128 () Bool)

(assert (=> b!6918805 m!7629128))

(declare-fun m!7629130 () Bool)

(assert (=> bm!628972 m!7629130))

(declare-fun m!7629132 () Bool)

(assert (=> bm!628973 m!7629132))

(declare-fun m!7629134 () Bool)

(assert (=> b!6918813 m!7629134))

(assert (=> b!6918237 d!2164222))

(declare-fun d!2164224 () Bool)

(declare-fun e!4164438 () Bool)

(assert (=> d!2164224 e!4164438))

(declare-fun c!1284667 () Bool)

(assert (=> d!2164224 (= c!1284667 ((_ is EmptyExpr!16909) r2!6280))))

(declare-fun lt!2469653 () Bool)

(declare-fun e!4164439 () Bool)

(assert (=> d!2164224 (= lt!2469653 e!4164439)))

(declare-fun c!1284666 () Bool)

(assert (=> d!2164224 (= c!1284666 (isEmpty!38790 (_2!37069 lt!2469566)))))

(assert (=> d!2164224 (validRegex!8615 r2!6280)))

(assert (=> d!2164224 (= (matchR!9048 r2!6280 (_2!37069 lt!2469566)) lt!2469653)))

(declare-fun b!6918814 () Bool)

(declare-fun res!2821014 () Bool)

(declare-fun e!4164442 () Bool)

(assert (=> b!6918814 (=> res!2821014 e!4164442)))

(declare-fun e!4164441 () Bool)

(assert (=> b!6918814 (= res!2821014 e!4164441)))

(declare-fun res!2821012 () Bool)

(assert (=> b!6918814 (=> (not res!2821012) (not e!4164441))))

(assert (=> b!6918814 (= res!2821012 lt!2469653)))

(declare-fun b!6918815 () Bool)

(declare-fun e!4164440 () Bool)

(assert (=> b!6918815 (= e!4164440 (not (= (head!13872 (_2!37069 lt!2469566)) (c!1284549 r2!6280))))))

(declare-fun b!6918816 () Bool)

(declare-fun e!4164437 () Bool)

(assert (=> b!6918816 (= e!4164438 e!4164437)))

(declare-fun c!1284668 () Bool)

(assert (=> b!6918816 (= c!1284668 ((_ is EmptyLang!16909) r2!6280))))

(declare-fun b!6918817 () Bool)

(assert (=> b!6918817 (= e!4164439 (nullable!6744 r2!6280))))

(declare-fun b!6918818 () Bool)

(declare-fun call!628979 () Bool)

(assert (=> b!6918818 (= e!4164438 (= lt!2469653 call!628979))))

(declare-fun b!6918819 () Bool)

(assert (=> b!6918819 (= e!4164439 (matchR!9048 (derivativeStep!5419 r2!6280 (head!13872 (_2!37069 lt!2469566))) (tail!12924 (_2!37069 lt!2469566))))))

(declare-fun b!6918820 () Bool)

(declare-fun res!2821008 () Bool)

(assert (=> b!6918820 (=> res!2821008 e!4164442)))

(assert (=> b!6918820 (= res!2821008 (not ((_ is ElementMatch!16909) r2!6280)))))

(assert (=> b!6918820 (= e!4164437 e!4164442)))

(declare-fun b!6918821 () Bool)

(declare-fun e!4164443 () Bool)

(assert (=> b!6918821 (= e!4164442 e!4164443)))

(declare-fun res!2821011 () Bool)

(assert (=> b!6918821 (=> (not res!2821011) (not e!4164443))))

(assert (=> b!6918821 (= res!2821011 (not lt!2469653))))

(declare-fun b!6918822 () Bool)

(assert (=> b!6918822 (= e!4164441 (= (head!13872 (_2!37069 lt!2469566)) (c!1284549 r2!6280)))))

(declare-fun b!6918823 () Bool)

(declare-fun res!2821009 () Bool)

(assert (=> b!6918823 (=> res!2821009 e!4164440)))

(assert (=> b!6918823 (= res!2821009 (not (isEmpty!38790 (tail!12924 (_2!37069 lt!2469566)))))))

(declare-fun bm!628974 () Bool)

(assert (=> bm!628974 (= call!628979 (isEmpty!38790 (_2!37069 lt!2469566)))))

(declare-fun b!6918824 () Bool)

(declare-fun res!2821015 () Bool)

(assert (=> b!6918824 (=> (not res!2821015) (not e!4164441))))

(assert (=> b!6918824 (= res!2821015 (not call!628979))))

(declare-fun b!6918825 () Bool)

(assert (=> b!6918825 (= e!4164437 (not lt!2469653))))

(declare-fun b!6918826 () Bool)

(declare-fun res!2821013 () Bool)

(assert (=> b!6918826 (=> (not res!2821013) (not e!4164441))))

(assert (=> b!6918826 (= res!2821013 (isEmpty!38790 (tail!12924 (_2!37069 lt!2469566))))))

(declare-fun b!6918827 () Bool)

(assert (=> b!6918827 (= e!4164443 e!4164440)))

(declare-fun res!2821010 () Bool)

(assert (=> b!6918827 (=> res!2821010 e!4164440)))

(assert (=> b!6918827 (= res!2821010 call!628979)))

(assert (= (and d!2164224 c!1284666) b!6918817))

(assert (= (and d!2164224 (not c!1284666)) b!6918819))

(assert (= (and d!2164224 c!1284667) b!6918818))

(assert (= (and d!2164224 (not c!1284667)) b!6918816))

(assert (= (and b!6918816 c!1284668) b!6918825))

(assert (= (and b!6918816 (not c!1284668)) b!6918820))

(assert (= (and b!6918820 (not res!2821008)) b!6918814))

(assert (= (and b!6918814 res!2821012) b!6918824))

(assert (= (and b!6918824 res!2821015) b!6918826))

(assert (= (and b!6918826 res!2821013) b!6918822))

(assert (= (and b!6918814 (not res!2821014)) b!6918821))

(assert (= (and b!6918821 res!2821011) b!6918827))

(assert (= (and b!6918827 (not res!2821010)) b!6918823))

(assert (= (and b!6918823 (not res!2821009)) b!6918815))

(assert (= (or b!6918818 b!6918824 b!6918827) bm!628974))

(assert (=> d!2164224 m!7629122))

(assert (=> d!2164224 m!7628696))

(declare-fun m!7629136 () Bool)

(assert (=> b!6918823 m!7629136))

(assert (=> b!6918823 m!7629136))

(declare-fun m!7629138 () Bool)

(assert (=> b!6918823 m!7629138))

(declare-fun m!7629140 () Bool)

(assert (=> b!6918819 m!7629140))

(assert (=> b!6918819 m!7629140))

(declare-fun m!7629142 () Bool)

(assert (=> b!6918819 m!7629142))

(assert (=> b!6918819 m!7629136))

(assert (=> b!6918819 m!7629142))

(assert (=> b!6918819 m!7629136))

(declare-fun m!7629144 () Bool)

(assert (=> b!6918819 m!7629144))

(assert (=> b!6918822 m!7629140))

(assert (=> bm!628974 m!7629122))

(assert (=> b!6918826 m!7629136))

(assert (=> b!6918826 m!7629136))

(assert (=> b!6918826 m!7629138))

(assert (=> b!6918815 m!7629140))

(declare-fun m!7629146 () Bool)

(assert (=> b!6918817 m!7629146))

(assert (=> b!6918228 d!2164224))

(declare-fun d!2164226 () Bool)

(declare-fun res!2821026 () Bool)

(declare-fun e!4164458 () Bool)

(assert (=> d!2164226 (=> res!2821026 e!4164458)))

(assert (=> d!2164226 (= res!2821026 ((_ is ElementMatch!16909) lt!2469581))))

(assert (=> d!2164226 (= (validRegex!8615 lt!2469581) e!4164458)))

(declare-fun b!6918846 () Bool)

(declare-fun e!4164459 () Bool)

(declare-fun call!628988 () Bool)

(assert (=> b!6918846 (= e!4164459 call!628988)))

(declare-fun bm!628981 () Bool)

(declare-fun call!628986 () Bool)

(assert (=> bm!628981 (= call!628988 call!628986)))

(declare-fun b!6918847 () Bool)

(declare-fun e!4164463 () Bool)

(assert (=> b!6918847 (= e!4164463 call!628986)))

(declare-fun b!6918848 () Bool)

(declare-fun res!2821029 () Bool)

(declare-fun e!4164460 () Bool)

(assert (=> b!6918848 (=> (not res!2821029) (not e!4164460))))

(assert (=> b!6918848 (= res!2821029 call!628988)))

(declare-fun e!4164462 () Bool)

(assert (=> b!6918848 (= e!4164462 e!4164460)))

(declare-fun b!6918849 () Bool)

(declare-fun call!628987 () Bool)

(assert (=> b!6918849 (= e!4164460 call!628987)))

(declare-fun b!6918850 () Bool)

(declare-fun e!4164461 () Bool)

(assert (=> b!6918850 (= e!4164461 e!4164463)))

(declare-fun res!2821027 () Bool)

(assert (=> b!6918850 (= res!2821027 (not (nullable!6744 (reg!17238 lt!2469581))))))

(assert (=> b!6918850 (=> (not res!2821027) (not e!4164463))))

(declare-fun b!6918851 () Bool)

(declare-fun e!4164464 () Bool)

(assert (=> b!6918851 (= e!4164464 e!4164459)))

(declare-fun res!2821030 () Bool)

(assert (=> b!6918851 (=> (not res!2821030) (not e!4164459))))

(assert (=> b!6918851 (= res!2821030 call!628987)))

(declare-fun b!6918852 () Bool)

(declare-fun res!2821028 () Bool)

(assert (=> b!6918852 (=> res!2821028 e!4164464)))

(assert (=> b!6918852 (= res!2821028 (not ((_ is Concat!25754) lt!2469581)))))

(assert (=> b!6918852 (= e!4164462 e!4164464)))

(declare-fun b!6918853 () Bool)

(assert (=> b!6918853 (= e!4164461 e!4164462)))

(declare-fun c!1284673 () Bool)

(assert (=> b!6918853 (= c!1284673 ((_ is Union!16909) lt!2469581))))

(declare-fun c!1284674 () Bool)

(declare-fun bm!628982 () Bool)

(assert (=> bm!628982 (= call!628986 (validRegex!8615 (ite c!1284674 (reg!17238 lt!2469581) (ite c!1284673 (regOne!34331 lt!2469581) (regTwo!34330 lt!2469581)))))))

(declare-fun b!6918854 () Bool)

(assert (=> b!6918854 (= e!4164458 e!4164461)))

(assert (=> b!6918854 (= c!1284674 ((_ is Star!16909) lt!2469581))))

(declare-fun bm!628983 () Bool)

(assert (=> bm!628983 (= call!628987 (validRegex!8615 (ite c!1284673 (regTwo!34331 lt!2469581) (regOne!34330 lt!2469581))))))

(assert (= (and d!2164226 (not res!2821026)) b!6918854))

(assert (= (and b!6918854 c!1284674) b!6918850))

(assert (= (and b!6918854 (not c!1284674)) b!6918853))

(assert (= (and b!6918850 res!2821027) b!6918847))

(assert (= (and b!6918853 c!1284673) b!6918848))

(assert (= (and b!6918853 (not c!1284673)) b!6918852))

(assert (= (and b!6918848 res!2821029) b!6918849))

(assert (= (and b!6918852 (not res!2821028)) b!6918851))

(assert (= (and b!6918851 res!2821030) b!6918846))

(assert (= (or b!6918848 b!6918846) bm!628981))

(assert (= (or b!6918849 b!6918851) bm!628983))

(assert (= (or b!6918847 bm!628981) bm!628982))

(declare-fun m!7629148 () Bool)

(assert (=> b!6918850 m!7629148))

(declare-fun m!7629150 () Bool)

(assert (=> bm!628982 m!7629150))

(declare-fun m!7629152 () Bool)

(assert (=> bm!628983 m!7629152))

(assert (=> b!6918239 d!2164226))

(declare-fun d!2164228 () Bool)

(declare-fun e!4164465 () Bool)

(assert (=> d!2164228 e!4164465))

(declare-fun res!2821032 () Bool)

(assert (=> d!2164228 (=> (not res!2821032) (not e!4164465))))

(declare-fun lt!2469654 () List!66662)

(assert (=> d!2164228 (= res!2821032 (= (content!13072 lt!2469654) ((_ map or) (content!13072 (_2!37069 lt!2469566)) (content!13072 (_2!37069 lt!2469572)))))))

(declare-fun e!4164466 () List!66662)

(assert (=> d!2164228 (= lt!2469654 e!4164466)))

(declare-fun c!1284675 () Bool)

(assert (=> d!2164228 (= c!1284675 ((_ is Nil!66538) (_2!37069 lt!2469566)))))

(assert (=> d!2164228 (= (++!14952 (_2!37069 lt!2469566) (_2!37069 lt!2469572)) lt!2469654)))

(declare-fun b!6918857 () Bool)

(declare-fun res!2821031 () Bool)

(assert (=> b!6918857 (=> (not res!2821031) (not e!4164465))))

(assert (=> b!6918857 (= res!2821031 (= (size!40769 lt!2469654) (+ (size!40769 (_2!37069 lt!2469566)) (size!40769 (_2!37069 lt!2469572)))))))

(declare-fun b!6918855 () Bool)

(assert (=> b!6918855 (= e!4164466 (_2!37069 lt!2469572))))

(declare-fun b!6918856 () Bool)

(assert (=> b!6918856 (= e!4164466 (Cons!66538 (h!72986 (_2!37069 lt!2469566)) (++!14952 (t!380405 (_2!37069 lt!2469566)) (_2!37069 lt!2469572))))))

(declare-fun b!6918858 () Bool)

(assert (=> b!6918858 (= e!4164465 (or (not (= (_2!37069 lt!2469572) Nil!66538)) (= lt!2469654 (_2!37069 lt!2469566))))))

(assert (= (and d!2164228 c!1284675) b!6918855))

(assert (= (and d!2164228 (not c!1284675)) b!6918856))

(assert (= (and d!2164228 res!2821032) b!6918857))

(assert (= (and b!6918857 res!2821031) b!6918858))

(declare-fun m!7629154 () Bool)

(assert (=> d!2164228 m!7629154))

(assert (=> d!2164228 m!7629096))

(assert (=> d!2164228 m!7629110))

(declare-fun m!7629156 () Bool)

(assert (=> b!6918857 m!7629156))

(assert (=> b!6918857 m!7629102))

(assert (=> b!6918857 m!7629116))

(declare-fun m!7629158 () Bool)

(assert (=> b!6918856 m!7629158))

(assert (=> b!6918239 d!2164228))

(declare-fun d!2164230 () Bool)

(declare-fun res!2821033 () Bool)

(declare-fun e!4164467 () Bool)

(assert (=> d!2164230 (=> res!2821033 e!4164467)))

(assert (=> d!2164230 (= res!2821033 ((_ is ElementMatch!16909) r2!6280))))

(assert (=> d!2164230 (= (validRegex!8615 r2!6280) e!4164467)))

(declare-fun b!6918859 () Bool)

(declare-fun e!4164468 () Bool)

(declare-fun call!628991 () Bool)

(assert (=> b!6918859 (= e!4164468 call!628991)))

(declare-fun bm!628984 () Bool)

(declare-fun call!628989 () Bool)

(assert (=> bm!628984 (= call!628991 call!628989)))

(declare-fun b!6918860 () Bool)

(declare-fun e!4164472 () Bool)

(assert (=> b!6918860 (= e!4164472 call!628989)))

(declare-fun b!6918861 () Bool)

(declare-fun res!2821036 () Bool)

(declare-fun e!4164469 () Bool)

(assert (=> b!6918861 (=> (not res!2821036) (not e!4164469))))

(assert (=> b!6918861 (= res!2821036 call!628991)))

(declare-fun e!4164471 () Bool)

(assert (=> b!6918861 (= e!4164471 e!4164469)))

(declare-fun b!6918862 () Bool)

(declare-fun call!628990 () Bool)

(assert (=> b!6918862 (= e!4164469 call!628990)))

(declare-fun b!6918863 () Bool)

(declare-fun e!4164470 () Bool)

(assert (=> b!6918863 (= e!4164470 e!4164472)))

(declare-fun res!2821034 () Bool)

(assert (=> b!6918863 (= res!2821034 (not (nullable!6744 (reg!17238 r2!6280))))))

(assert (=> b!6918863 (=> (not res!2821034) (not e!4164472))))

(declare-fun b!6918864 () Bool)

(declare-fun e!4164473 () Bool)

(assert (=> b!6918864 (= e!4164473 e!4164468)))

(declare-fun res!2821037 () Bool)

(assert (=> b!6918864 (=> (not res!2821037) (not e!4164468))))

(assert (=> b!6918864 (= res!2821037 call!628990)))

(declare-fun b!6918865 () Bool)

(declare-fun res!2821035 () Bool)

(assert (=> b!6918865 (=> res!2821035 e!4164473)))

(assert (=> b!6918865 (= res!2821035 (not ((_ is Concat!25754) r2!6280)))))

(assert (=> b!6918865 (= e!4164471 e!4164473)))

(declare-fun b!6918866 () Bool)

(assert (=> b!6918866 (= e!4164470 e!4164471)))

(declare-fun c!1284676 () Bool)

(assert (=> b!6918866 (= c!1284676 ((_ is Union!16909) r2!6280))))

(declare-fun bm!628985 () Bool)

(declare-fun c!1284677 () Bool)

(assert (=> bm!628985 (= call!628989 (validRegex!8615 (ite c!1284677 (reg!17238 r2!6280) (ite c!1284676 (regOne!34331 r2!6280) (regTwo!34330 r2!6280)))))))

(declare-fun b!6918867 () Bool)

(assert (=> b!6918867 (= e!4164467 e!4164470)))

(assert (=> b!6918867 (= c!1284677 ((_ is Star!16909) r2!6280))))

(declare-fun bm!628986 () Bool)

(assert (=> bm!628986 (= call!628990 (validRegex!8615 (ite c!1284676 (regTwo!34331 r2!6280) (regOne!34330 r2!6280))))))

(assert (= (and d!2164230 (not res!2821033)) b!6918867))

(assert (= (and b!6918867 c!1284677) b!6918863))

(assert (= (and b!6918867 (not c!1284677)) b!6918866))

(assert (= (and b!6918863 res!2821034) b!6918860))

(assert (= (and b!6918866 c!1284676) b!6918861))

(assert (= (and b!6918866 (not c!1284676)) b!6918865))

(assert (= (and b!6918861 res!2821036) b!6918862))

(assert (= (and b!6918865 (not res!2821035)) b!6918864))

(assert (= (and b!6918864 res!2821037) b!6918859))

(assert (= (or b!6918861 b!6918859) bm!628984))

(assert (= (or b!6918862 b!6918864) bm!628986))

(assert (= (or b!6918860 bm!628984) bm!628985))

(declare-fun m!7629160 () Bool)

(assert (=> b!6918863 m!7629160))

(declare-fun m!7629162 () Bool)

(assert (=> bm!628985 m!7629162))

(declare-fun m!7629164 () Bool)

(assert (=> bm!628986 m!7629164))

(assert (=> b!6918233 d!2164230))

(declare-fun d!2164232 () Bool)

(declare-fun res!2821038 () Bool)

(declare-fun e!4164474 () Bool)

(assert (=> d!2164232 (=> res!2821038 e!4164474)))

(assert (=> d!2164232 (= res!2821038 ((_ is ElementMatch!16909) r1!6342))))

(assert (=> d!2164232 (= (validRegex!8615 r1!6342) e!4164474)))

(declare-fun b!6918868 () Bool)

(declare-fun e!4164475 () Bool)

(declare-fun call!628994 () Bool)

(assert (=> b!6918868 (= e!4164475 call!628994)))

(declare-fun bm!628987 () Bool)

(declare-fun call!628992 () Bool)

(assert (=> bm!628987 (= call!628994 call!628992)))

(declare-fun b!6918869 () Bool)

(declare-fun e!4164479 () Bool)

(assert (=> b!6918869 (= e!4164479 call!628992)))

(declare-fun b!6918870 () Bool)

(declare-fun res!2821041 () Bool)

(declare-fun e!4164476 () Bool)

(assert (=> b!6918870 (=> (not res!2821041) (not e!4164476))))

(assert (=> b!6918870 (= res!2821041 call!628994)))

(declare-fun e!4164478 () Bool)

(assert (=> b!6918870 (= e!4164478 e!4164476)))

(declare-fun b!6918871 () Bool)

(declare-fun call!628993 () Bool)

(assert (=> b!6918871 (= e!4164476 call!628993)))

(declare-fun b!6918872 () Bool)

(declare-fun e!4164477 () Bool)

(assert (=> b!6918872 (= e!4164477 e!4164479)))

(declare-fun res!2821039 () Bool)

(assert (=> b!6918872 (= res!2821039 (not (nullable!6744 (reg!17238 r1!6342))))))

(assert (=> b!6918872 (=> (not res!2821039) (not e!4164479))))

(declare-fun b!6918873 () Bool)

(declare-fun e!4164480 () Bool)

(assert (=> b!6918873 (= e!4164480 e!4164475)))

(declare-fun res!2821042 () Bool)

(assert (=> b!6918873 (=> (not res!2821042) (not e!4164475))))

(assert (=> b!6918873 (= res!2821042 call!628993)))

(declare-fun b!6918874 () Bool)

(declare-fun res!2821040 () Bool)

(assert (=> b!6918874 (=> res!2821040 e!4164480)))

(assert (=> b!6918874 (= res!2821040 (not ((_ is Concat!25754) r1!6342)))))

(assert (=> b!6918874 (= e!4164478 e!4164480)))

(declare-fun b!6918875 () Bool)

(assert (=> b!6918875 (= e!4164477 e!4164478)))

(declare-fun c!1284678 () Bool)

(assert (=> b!6918875 (= c!1284678 ((_ is Union!16909) r1!6342))))

(declare-fun c!1284679 () Bool)

(declare-fun bm!628988 () Bool)

(assert (=> bm!628988 (= call!628992 (validRegex!8615 (ite c!1284679 (reg!17238 r1!6342) (ite c!1284678 (regOne!34331 r1!6342) (regTwo!34330 r1!6342)))))))

(declare-fun b!6918876 () Bool)

(assert (=> b!6918876 (= e!4164474 e!4164477)))

(assert (=> b!6918876 (= c!1284679 ((_ is Star!16909) r1!6342))))

(declare-fun bm!628989 () Bool)

(assert (=> bm!628989 (= call!628993 (validRegex!8615 (ite c!1284678 (regTwo!34331 r1!6342) (regOne!34330 r1!6342))))))

(assert (= (and d!2164232 (not res!2821038)) b!6918876))

(assert (= (and b!6918876 c!1284679) b!6918872))

(assert (= (and b!6918876 (not c!1284679)) b!6918875))

(assert (= (and b!6918872 res!2821039) b!6918869))

(assert (= (and b!6918875 c!1284678) b!6918870))

(assert (= (and b!6918875 (not c!1284678)) b!6918874))

(assert (= (and b!6918870 res!2821041) b!6918871))

(assert (= (and b!6918874 (not res!2821040)) b!6918873))

(assert (= (and b!6918873 res!2821042) b!6918868))

(assert (= (or b!6918870 b!6918868) bm!628987))

(assert (= (or b!6918871 b!6918873) bm!628989))

(assert (= (or b!6918869 bm!628987) bm!628988))

(declare-fun m!7629166 () Bool)

(assert (=> b!6918872 m!7629166))

(declare-fun m!7629168 () Bool)

(assert (=> bm!628988 m!7629168))

(declare-fun m!7629170 () Bool)

(assert (=> bm!628989 m!7629170))

(assert (=> start!665490 d!2164232))

(declare-fun d!2164234 () Bool)

(declare-fun res!2821043 () Bool)

(declare-fun e!4164481 () Bool)

(assert (=> d!2164234 (=> res!2821043 e!4164481)))

(assert (=> d!2164234 (= res!2821043 ((_ is ElementMatch!16909) r3!135))))

(assert (=> d!2164234 (= (validRegex!8615 r3!135) e!4164481)))

(declare-fun b!6918877 () Bool)

(declare-fun e!4164482 () Bool)

(declare-fun call!628997 () Bool)

(assert (=> b!6918877 (= e!4164482 call!628997)))

(declare-fun bm!628990 () Bool)

(declare-fun call!628995 () Bool)

(assert (=> bm!628990 (= call!628997 call!628995)))

(declare-fun b!6918878 () Bool)

(declare-fun e!4164486 () Bool)

(assert (=> b!6918878 (= e!4164486 call!628995)))

(declare-fun b!6918879 () Bool)

(declare-fun res!2821046 () Bool)

(declare-fun e!4164483 () Bool)

(assert (=> b!6918879 (=> (not res!2821046) (not e!4164483))))

(assert (=> b!6918879 (= res!2821046 call!628997)))

(declare-fun e!4164485 () Bool)

(assert (=> b!6918879 (= e!4164485 e!4164483)))

(declare-fun b!6918880 () Bool)

(declare-fun call!628996 () Bool)

(assert (=> b!6918880 (= e!4164483 call!628996)))

(declare-fun b!6918881 () Bool)

(declare-fun e!4164484 () Bool)

(assert (=> b!6918881 (= e!4164484 e!4164486)))

(declare-fun res!2821044 () Bool)

(assert (=> b!6918881 (= res!2821044 (not (nullable!6744 (reg!17238 r3!135))))))

(assert (=> b!6918881 (=> (not res!2821044) (not e!4164486))))

(declare-fun b!6918882 () Bool)

(declare-fun e!4164487 () Bool)

(assert (=> b!6918882 (= e!4164487 e!4164482)))

(declare-fun res!2821047 () Bool)

(assert (=> b!6918882 (=> (not res!2821047) (not e!4164482))))

(assert (=> b!6918882 (= res!2821047 call!628996)))

(declare-fun b!6918883 () Bool)

(declare-fun res!2821045 () Bool)

(assert (=> b!6918883 (=> res!2821045 e!4164487)))

(assert (=> b!6918883 (= res!2821045 (not ((_ is Concat!25754) r3!135)))))

(assert (=> b!6918883 (= e!4164485 e!4164487)))

(declare-fun b!6918884 () Bool)

(assert (=> b!6918884 (= e!4164484 e!4164485)))

(declare-fun c!1284680 () Bool)

(assert (=> b!6918884 (= c!1284680 ((_ is Union!16909) r3!135))))

(declare-fun c!1284681 () Bool)

(declare-fun bm!628991 () Bool)

(assert (=> bm!628991 (= call!628995 (validRegex!8615 (ite c!1284681 (reg!17238 r3!135) (ite c!1284680 (regOne!34331 r3!135) (regTwo!34330 r3!135)))))))

(declare-fun b!6918885 () Bool)

(assert (=> b!6918885 (= e!4164481 e!4164484)))

(assert (=> b!6918885 (= c!1284681 ((_ is Star!16909) r3!135))))

(declare-fun bm!628992 () Bool)

(assert (=> bm!628992 (= call!628996 (validRegex!8615 (ite c!1284680 (regTwo!34331 r3!135) (regOne!34330 r3!135))))))

(assert (= (and d!2164234 (not res!2821043)) b!6918885))

(assert (= (and b!6918885 c!1284681) b!6918881))

(assert (= (and b!6918885 (not c!1284681)) b!6918884))

(assert (= (and b!6918881 res!2821044) b!6918878))

(assert (= (and b!6918884 c!1284680) b!6918879))

(assert (= (and b!6918884 (not c!1284680)) b!6918883))

(assert (= (and b!6918879 res!2821046) b!6918880))

(assert (= (and b!6918883 (not res!2821045)) b!6918882))

(assert (= (and b!6918882 res!2821047) b!6918877))

(assert (= (or b!6918879 b!6918877) bm!628990))

(assert (= (or b!6918880 b!6918882) bm!628992))

(assert (= (or b!6918878 bm!628990) bm!628991))

(declare-fun m!7629172 () Bool)

(assert (=> b!6918881 m!7629172))

(declare-fun m!7629174 () Bool)

(assert (=> bm!628991 m!7629174))

(declare-fun m!7629176 () Bool)

(assert (=> bm!628992 m!7629176))

(assert (=> b!6918245 d!2164234))

(declare-fun d!2164236 () Bool)

(declare-fun e!4164489 () Bool)

(assert (=> d!2164236 e!4164489))

(declare-fun c!1284683 () Bool)

(assert (=> d!2164236 (= c!1284683 ((_ is EmptyExpr!16909) r1!6342))))

(declare-fun lt!2469655 () Bool)

(declare-fun e!4164490 () Bool)

(assert (=> d!2164236 (= lt!2469655 e!4164490)))

(declare-fun c!1284682 () Bool)

(assert (=> d!2164236 (= c!1284682 (isEmpty!38790 (_1!37069 lt!2469566)))))

(assert (=> d!2164236 (validRegex!8615 r1!6342)))

(assert (=> d!2164236 (= (matchR!9048 r1!6342 (_1!37069 lt!2469566)) lt!2469655)))

(declare-fun b!6918886 () Bool)

(declare-fun res!2821054 () Bool)

(declare-fun e!4164493 () Bool)

(assert (=> b!6918886 (=> res!2821054 e!4164493)))

(declare-fun e!4164492 () Bool)

(assert (=> b!6918886 (= res!2821054 e!4164492)))

(declare-fun res!2821052 () Bool)

(assert (=> b!6918886 (=> (not res!2821052) (not e!4164492))))

(assert (=> b!6918886 (= res!2821052 lt!2469655)))

(declare-fun b!6918887 () Bool)

(declare-fun e!4164491 () Bool)

(assert (=> b!6918887 (= e!4164491 (not (= (head!13872 (_1!37069 lt!2469566)) (c!1284549 r1!6342))))))

(declare-fun b!6918888 () Bool)

(declare-fun e!4164488 () Bool)

(assert (=> b!6918888 (= e!4164489 e!4164488)))

(declare-fun c!1284684 () Bool)

(assert (=> b!6918888 (= c!1284684 ((_ is EmptyLang!16909) r1!6342))))

(declare-fun b!6918889 () Bool)

(assert (=> b!6918889 (= e!4164490 (nullable!6744 r1!6342))))

(declare-fun b!6918890 () Bool)

(declare-fun call!628998 () Bool)

(assert (=> b!6918890 (= e!4164489 (= lt!2469655 call!628998))))

(declare-fun b!6918891 () Bool)

(assert (=> b!6918891 (= e!4164490 (matchR!9048 (derivativeStep!5419 r1!6342 (head!13872 (_1!37069 lt!2469566))) (tail!12924 (_1!37069 lt!2469566))))))

(declare-fun b!6918892 () Bool)

(declare-fun res!2821048 () Bool)

(assert (=> b!6918892 (=> res!2821048 e!4164493)))

(assert (=> b!6918892 (= res!2821048 (not ((_ is ElementMatch!16909) r1!6342)))))

(assert (=> b!6918892 (= e!4164488 e!4164493)))

(declare-fun b!6918893 () Bool)

(declare-fun e!4164494 () Bool)

(assert (=> b!6918893 (= e!4164493 e!4164494)))

(declare-fun res!2821051 () Bool)

(assert (=> b!6918893 (=> (not res!2821051) (not e!4164494))))

(assert (=> b!6918893 (= res!2821051 (not lt!2469655))))

(declare-fun b!6918894 () Bool)

(assert (=> b!6918894 (= e!4164492 (= (head!13872 (_1!37069 lt!2469566)) (c!1284549 r1!6342)))))

(declare-fun b!6918895 () Bool)

(declare-fun res!2821049 () Bool)

(assert (=> b!6918895 (=> res!2821049 e!4164491)))

(assert (=> b!6918895 (= res!2821049 (not (isEmpty!38790 (tail!12924 (_1!37069 lt!2469566)))))))

(declare-fun bm!628993 () Bool)

(assert (=> bm!628993 (= call!628998 (isEmpty!38790 (_1!37069 lt!2469566)))))

(declare-fun b!6918896 () Bool)

(declare-fun res!2821055 () Bool)

(assert (=> b!6918896 (=> (not res!2821055) (not e!4164492))))

(assert (=> b!6918896 (= res!2821055 (not call!628998))))

(declare-fun b!6918897 () Bool)

(assert (=> b!6918897 (= e!4164488 (not lt!2469655))))

(declare-fun b!6918898 () Bool)

(declare-fun res!2821053 () Bool)

(assert (=> b!6918898 (=> (not res!2821053) (not e!4164492))))

(assert (=> b!6918898 (= res!2821053 (isEmpty!38790 (tail!12924 (_1!37069 lt!2469566))))))

(declare-fun b!6918899 () Bool)

(assert (=> b!6918899 (= e!4164494 e!4164491)))

(declare-fun res!2821050 () Bool)

(assert (=> b!6918899 (=> res!2821050 e!4164491)))

(assert (=> b!6918899 (= res!2821050 call!628998)))

(assert (= (and d!2164236 c!1284682) b!6918889))

(assert (= (and d!2164236 (not c!1284682)) b!6918891))

(assert (= (and d!2164236 c!1284683) b!6918890))

(assert (= (and d!2164236 (not c!1284683)) b!6918888))

(assert (= (and b!6918888 c!1284684) b!6918897))

(assert (= (and b!6918888 (not c!1284684)) b!6918892))

(assert (= (and b!6918892 (not res!2821048)) b!6918886))

(assert (= (and b!6918886 res!2821052) b!6918896))

(assert (= (and b!6918896 res!2821055) b!6918898))

(assert (= (and b!6918898 res!2821053) b!6918894))

(assert (= (and b!6918886 (not res!2821054)) b!6918893))

(assert (= (and b!6918893 res!2821051) b!6918899))

(assert (= (and b!6918899 (not res!2821050)) b!6918895))

(assert (= (and b!6918895 (not res!2821049)) b!6918887))

(assert (= (or b!6918890 b!6918896 b!6918899) bm!628993))

(assert (=> d!2164236 m!7629130))

(assert (=> d!2164236 m!7628694))

(declare-fun m!7629178 () Bool)

(assert (=> b!6918895 m!7629178))

(assert (=> b!6918895 m!7629178))

(declare-fun m!7629180 () Bool)

(assert (=> b!6918895 m!7629180))

(declare-fun m!7629182 () Bool)

(assert (=> b!6918891 m!7629182))

(assert (=> b!6918891 m!7629182))

(declare-fun m!7629184 () Bool)

(assert (=> b!6918891 m!7629184))

(assert (=> b!6918891 m!7629178))

(assert (=> b!6918891 m!7629184))

(assert (=> b!6918891 m!7629178))

(declare-fun m!7629186 () Bool)

(assert (=> b!6918891 m!7629186))

(assert (=> b!6918894 m!7629182))

(assert (=> bm!628993 m!7629130))

(assert (=> b!6918898 m!7629178))

(assert (=> b!6918898 m!7629178))

(assert (=> b!6918898 m!7629180))

(assert (=> b!6918887 m!7629182))

(declare-fun m!7629188 () Bool)

(assert (=> b!6918889 m!7629188))

(assert (=> b!6918231 d!2164236))

(declare-fun bs!1846160 () Bool)

(declare-fun d!2164238 () Bool)

(assert (= bs!1846160 (and d!2164238 d!2164152)))

(declare-fun lambda!393160 () Int)

(assert (=> bs!1846160 (= (and (= (_1!37069 lt!2469572) s!14361) (= r1!6342 lt!2469574) (= r2!6280 r3!135)) (= lambda!393160 lambda!393140))))

(declare-fun bs!1846161 () Bool)

(assert (= bs!1846161 (and d!2164238 b!6918231)))

(assert (=> bs!1846161 (not (= lambda!393160 lambda!393114))))

(declare-fun bs!1846162 () Bool)

(assert (= bs!1846162 (and d!2164238 b!6918248)))

(assert (=> bs!1846162 (not (= lambda!393160 lambda!393112))))

(assert (=> bs!1846162 (= (and (= (_1!37069 lt!2469572) s!14361) (= r1!6342 lt!2469574) (= r2!6280 r3!135)) (= lambda!393160 lambda!393111))))

(declare-fun bs!1846163 () Bool)

(assert (= bs!1846163 (and d!2164238 b!6918807)))

(assert (=> bs!1846163 (not (= lambda!393160 lambda!393158))))

(declare-fun bs!1846164 () Bool)

(assert (= bs!1846164 (and d!2164238 b!6918796)))

(assert (=> bs!1846164 (not (= lambda!393160 lambda!393156))))

(declare-fun bs!1846165 () Bool)

(assert (= bs!1846165 (and d!2164238 b!6918742)))

(assert (=> bs!1846165 (not (= lambda!393160 lambda!393154))))

(declare-fun bs!1846166 () Bool)

(assert (= bs!1846166 (and d!2164238 d!2164132)))

(assert (=> bs!1846166 (not (= lambda!393160 lambda!393131))))

(assert (=> bs!1846166 (= (and (= (_1!37069 lt!2469572) s!14361) (= r1!6342 lt!2469574) (= r2!6280 r3!135)) (= lambda!393160 lambda!393130))))

(assert (=> bs!1846161 (= lambda!393160 lambda!393113)))

(declare-fun bs!1846167 () Bool)

(assert (= bs!1846167 (and d!2164238 b!6918803)))

(assert (=> bs!1846167 (not (= lambda!393160 lambda!393159))))

(declare-fun bs!1846168 () Bool)

(assert (= bs!1846168 (and d!2164238 b!6918792)))

(assert (=> bs!1846168 (not (= lambda!393160 lambda!393157))))

(declare-fun bs!1846169 () Bool)

(assert (= bs!1846169 (and d!2164238 b!6918738)))

(assert (=> bs!1846169 (not (= lambda!393160 lambda!393155))))

(assert (=> d!2164238 true))

(assert (=> d!2164238 true))

(assert (=> d!2164238 true))

(declare-fun lambda!393161 () Int)

(assert (=> bs!1846160 (not (= lambda!393161 lambda!393140))))

(assert (=> bs!1846161 (= lambda!393161 lambda!393114)))

(assert (=> bs!1846162 (= (and (= (_1!37069 lt!2469572) s!14361) (= r1!6342 lt!2469574) (= r2!6280 r3!135)) (= lambda!393161 lambda!393112))))

(assert (=> bs!1846162 (not (= lambda!393161 lambda!393111))))

(declare-fun bs!1846170 () Bool)

(assert (= bs!1846170 d!2164238))

(assert (=> bs!1846170 (not (= lambda!393161 lambda!393160))))

(assert (=> bs!1846163 (not (= lambda!393161 lambda!393158))))

(assert (=> bs!1846164 (not (= lambda!393161 lambda!393156))))

(assert (=> bs!1846165 (not (= lambda!393161 lambda!393154))))

(assert (=> bs!1846166 (= (and (= (_1!37069 lt!2469572) s!14361) (= r1!6342 lt!2469574) (= r2!6280 r3!135)) (= lambda!393161 lambda!393131))))

(assert (=> bs!1846166 (not (= lambda!393161 lambda!393130))))

(assert (=> bs!1846161 (not (= lambda!393161 lambda!393113))))

(assert (=> bs!1846167 (= (and (= (_1!37069 lt!2469572) (_1!37069 lt!2469566)) (= r1!6342 (regOne!34330 r1!6342)) (= r2!6280 (regTwo!34330 r1!6342))) (= lambda!393161 lambda!393159))))

(assert (=> bs!1846168 (= (and (= (_1!37069 lt!2469572) (_2!37069 lt!2469566)) (= r1!6342 (regOne!34330 r2!6280)) (= r2!6280 (regTwo!34330 r2!6280))) (= lambda!393161 lambda!393157))))

(assert (=> bs!1846169 (= (and (= r1!6342 (regOne!34330 lt!2469574)) (= r2!6280 (regTwo!34330 lt!2469574))) (= lambda!393161 lambda!393155))))

(assert (=> d!2164238 true))

(assert (=> d!2164238 true))

(assert (=> d!2164238 true))

(assert (=> d!2164238 (= (Exists!3911 lambda!393160) (Exists!3911 lambda!393161))))

(declare-fun lt!2469656 () Unit!160542)

(assert (=> d!2164238 (= lt!2469656 (choose!51515 r1!6342 r2!6280 (_1!37069 lt!2469572)))))

(assert (=> d!2164238 (validRegex!8615 r1!6342)))

(assert (=> d!2164238 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2378 r1!6342 r2!6280 (_1!37069 lt!2469572)) lt!2469656)))

(declare-fun m!7629190 () Bool)

(assert (=> bs!1846170 m!7629190))

(declare-fun m!7629192 () Bool)

(assert (=> bs!1846170 m!7629192))

(declare-fun m!7629194 () Bool)

(assert (=> bs!1846170 m!7629194))

(assert (=> bs!1846170 m!7628694))

(assert (=> b!6918231 d!2164238))

(declare-fun bs!1846171 () Bool)

(declare-fun d!2164240 () Bool)

(assert (= bs!1846171 (and d!2164240 d!2164152)))

(declare-fun lambda!393162 () Int)

(assert (=> bs!1846171 (= (and (= (_1!37069 lt!2469572) s!14361) (= r1!6342 lt!2469574) (= r2!6280 r3!135)) (= lambda!393162 lambda!393140))))

(declare-fun bs!1846172 () Bool)

(assert (= bs!1846172 (and d!2164240 b!6918231)))

(assert (=> bs!1846172 (not (= lambda!393162 lambda!393114))))

(declare-fun bs!1846173 () Bool)

(assert (= bs!1846173 (and d!2164240 b!6918248)))

(assert (=> bs!1846173 (not (= lambda!393162 lambda!393112))))

(assert (=> bs!1846173 (= (and (= (_1!37069 lt!2469572) s!14361) (= r1!6342 lt!2469574) (= r2!6280 r3!135)) (= lambda!393162 lambda!393111))))

(declare-fun bs!1846174 () Bool)

(assert (= bs!1846174 (and d!2164240 d!2164238)))

(assert (=> bs!1846174 (= lambda!393162 lambda!393160)))

(declare-fun bs!1846175 () Bool)

(assert (= bs!1846175 (and d!2164240 b!6918807)))

(assert (=> bs!1846175 (not (= lambda!393162 lambda!393158))))

(declare-fun bs!1846176 () Bool)

(assert (= bs!1846176 (and d!2164240 b!6918796)))

(assert (=> bs!1846176 (not (= lambda!393162 lambda!393156))))

(declare-fun bs!1846177 () Bool)

(assert (= bs!1846177 (and d!2164240 b!6918742)))

(assert (=> bs!1846177 (not (= lambda!393162 lambda!393154))))

(declare-fun bs!1846178 () Bool)

(assert (= bs!1846178 (and d!2164240 d!2164132)))

(assert (=> bs!1846178 (not (= lambda!393162 lambda!393131))))

(assert (=> bs!1846174 (not (= lambda!393162 lambda!393161))))

(assert (=> bs!1846178 (= (and (= (_1!37069 lt!2469572) s!14361) (= r1!6342 lt!2469574) (= r2!6280 r3!135)) (= lambda!393162 lambda!393130))))

(assert (=> bs!1846172 (= lambda!393162 lambda!393113)))

(declare-fun bs!1846179 () Bool)

(assert (= bs!1846179 (and d!2164240 b!6918803)))

(assert (=> bs!1846179 (not (= lambda!393162 lambda!393159))))

(declare-fun bs!1846180 () Bool)

(assert (= bs!1846180 (and d!2164240 b!6918792)))

(assert (=> bs!1846180 (not (= lambda!393162 lambda!393157))))

(declare-fun bs!1846181 () Bool)

(assert (= bs!1846181 (and d!2164240 b!6918738)))

(assert (=> bs!1846181 (not (= lambda!393162 lambda!393155))))

(assert (=> d!2164240 true))

(assert (=> d!2164240 true))

(assert (=> d!2164240 true))

(assert (=> d!2164240 (= (isDefined!13381 (findConcatSeparation!3092 r1!6342 r2!6280 Nil!66538 (_1!37069 lt!2469572) (_1!37069 lt!2469572))) (Exists!3911 lambda!393162))))

(declare-fun lt!2469657 () Unit!160542)

(assert (=> d!2164240 (= lt!2469657 (choose!51516 r1!6342 r2!6280 (_1!37069 lt!2469572)))))

(assert (=> d!2164240 (validRegex!8615 r1!6342)))

(assert (=> d!2164240 (= (lemmaFindConcatSeparationEquivalentToExists!2854 r1!6342 r2!6280 (_1!37069 lt!2469572)) lt!2469657)))

(declare-fun bs!1846182 () Bool)

(assert (= bs!1846182 d!2164240))

(assert (=> bs!1846182 m!7628736))

(declare-fun m!7629196 () Bool)

(assert (=> bs!1846182 m!7629196))

(assert (=> bs!1846182 m!7628694))

(declare-fun m!7629198 () Bool)

(assert (=> bs!1846182 m!7629198))

(declare-fun m!7629200 () Bool)

(assert (=> bs!1846182 m!7629200))

(assert (=> bs!1846182 m!7628736))

(assert (=> b!6918231 d!2164240))

(declare-fun d!2164242 () Bool)

(assert (=> d!2164242 (= (isDefined!13381 lt!2469573) (not (isEmpty!38791 lt!2469573)))))

(declare-fun bs!1846183 () Bool)

(assert (= bs!1846183 d!2164242))

(declare-fun m!7629202 () Bool)

(assert (=> bs!1846183 m!7629202))

(assert (=> b!6918231 d!2164242))

(declare-fun d!2164244 () Bool)

(assert (=> d!2164244 (= (Exists!3911 lambda!393113) (choose!51514 lambda!393113))))

(declare-fun bs!1846184 () Bool)

(assert (= bs!1846184 d!2164244))

(declare-fun m!7629204 () Bool)

(assert (=> bs!1846184 m!7629204))

(assert (=> b!6918231 d!2164244))

(declare-fun d!2164246 () Bool)

(assert (=> d!2164246 (= (get!23304 lt!2469573) (v!52949 lt!2469573))))

(assert (=> b!6918231 d!2164246))

(declare-fun d!2164248 () Bool)

(assert (=> d!2164248 (= (Exists!3911 lambda!393114) (choose!51514 lambda!393114))))

(declare-fun bs!1846185 () Bool)

(assert (= bs!1846185 d!2164248))

(declare-fun m!7629206 () Bool)

(assert (=> bs!1846185 m!7629206))

(assert (=> b!6918231 d!2164248))

(declare-fun b!6918900 () Bool)

(declare-fun lt!2469660 () Unit!160542)

(declare-fun lt!2469659 () Unit!160542)

(assert (=> b!6918900 (= lt!2469660 lt!2469659)))

(assert (=> b!6918900 (= (++!14952 (++!14952 Nil!66538 (Cons!66538 (h!72986 (_1!37069 lt!2469572)) Nil!66538)) (t!380405 (_1!37069 lt!2469572))) (_1!37069 lt!2469572))))

(assert (=> b!6918900 (= lt!2469659 (lemmaMoveElementToOtherListKeepsConcatEq!2823 Nil!66538 (h!72986 (_1!37069 lt!2469572)) (t!380405 (_1!37069 lt!2469572)) (_1!37069 lt!2469572)))))

(declare-fun e!4164497 () Option!16678)

(assert (=> b!6918900 (= e!4164497 (findConcatSeparation!3092 r1!6342 r2!6280 (++!14952 Nil!66538 (Cons!66538 (h!72986 (_1!37069 lt!2469572)) Nil!66538)) (t!380405 (_1!37069 lt!2469572)) (_1!37069 lt!2469572)))))

(declare-fun d!2164250 () Bool)

(declare-fun e!4164499 () Bool)

(assert (=> d!2164250 e!4164499))

(declare-fun res!2821058 () Bool)

(assert (=> d!2164250 (=> res!2821058 e!4164499)))

(declare-fun e!4164495 () Bool)

(assert (=> d!2164250 (= res!2821058 e!4164495)))

(declare-fun res!2821056 () Bool)

(assert (=> d!2164250 (=> (not res!2821056) (not e!4164495))))

(declare-fun lt!2469658 () Option!16678)

(assert (=> d!2164250 (= res!2821056 (isDefined!13381 lt!2469658))))

(declare-fun e!4164498 () Option!16678)

(assert (=> d!2164250 (= lt!2469658 e!4164498)))

(declare-fun c!1284685 () Bool)

(declare-fun e!4164496 () Bool)

(assert (=> d!2164250 (= c!1284685 e!4164496)))

(declare-fun res!2821057 () Bool)

(assert (=> d!2164250 (=> (not res!2821057) (not e!4164496))))

(assert (=> d!2164250 (= res!2821057 (matchR!9048 r1!6342 Nil!66538))))

(assert (=> d!2164250 (validRegex!8615 r1!6342)))

(assert (=> d!2164250 (= (findConcatSeparation!3092 r1!6342 r2!6280 Nil!66538 (_1!37069 lt!2469572) (_1!37069 lt!2469572)) lt!2469658)))

(declare-fun b!6918901 () Bool)

(assert (=> b!6918901 (= e!4164499 (not (isDefined!13381 lt!2469658)))))

(declare-fun b!6918902 () Bool)

(assert (=> b!6918902 (= e!4164497 None!16677)))

(declare-fun b!6918903 () Bool)

(assert (=> b!6918903 (= e!4164498 e!4164497)))

(declare-fun c!1284686 () Bool)

(assert (=> b!6918903 (= c!1284686 ((_ is Nil!66538) (_1!37069 lt!2469572)))))

(declare-fun b!6918904 () Bool)

(assert (=> b!6918904 (= e!4164496 (matchR!9048 r2!6280 (_1!37069 lt!2469572)))))

(declare-fun b!6918905 () Bool)

(declare-fun res!2821059 () Bool)

(assert (=> b!6918905 (=> (not res!2821059) (not e!4164495))))

(assert (=> b!6918905 (= res!2821059 (matchR!9048 r1!6342 (_1!37069 (get!23304 lt!2469658))))))

(declare-fun b!6918906 () Bool)

(assert (=> b!6918906 (= e!4164495 (= (++!14952 (_1!37069 (get!23304 lt!2469658)) (_2!37069 (get!23304 lt!2469658))) (_1!37069 lt!2469572)))))

(declare-fun b!6918907 () Bool)

(declare-fun res!2821060 () Bool)

(assert (=> b!6918907 (=> (not res!2821060) (not e!4164495))))

(assert (=> b!6918907 (= res!2821060 (matchR!9048 r2!6280 (_2!37069 (get!23304 lt!2469658))))))

(declare-fun b!6918908 () Bool)

(assert (=> b!6918908 (= e!4164498 (Some!16677 (tuple2!67533 Nil!66538 (_1!37069 lt!2469572))))))

(assert (= (and d!2164250 res!2821057) b!6918904))

(assert (= (and d!2164250 c!1284685) b!6918908))

(assert (= (and d!2164250 (not c!1284685)) b!6918903))

(assert (= (and b!6918903 c!1284686) b!6918902))

(assert (= (and b!6918903 (not c!1284686)) b!6918900))

(assert (= (and d!2164250 res!2821056) b!6918905))

(assert (= (and b!6918905 res!2821059) b!6918907))

(assert (= (and b!6918907 res!2821060) b!6918906))

(assert (= (and d!2164250 (not res!2821058)) b!6918901))

(declare-fun m!7629208 () Bool)

(assert (=> b!6918904 m!7629208))

(declare-fun m!7629210 () Bool)

(assert (=> b!6918906 m!7629210))

(declare-fun m!7629212 () Bool)

(assert (=> b!6918906 m!7629212))

(declare-fun m!7629214 () Bool)

(assert (=> b!6918901 m!7629214))

(assert (=> b!6918905 m!7629210))

(declare-fun m!7629216 () Bool)

(assert (=> b!6918905 m!7629216))

(assert (=> d!2164250 m!7629214))

(declare-fun m!7629218 () Bool)

(assert (=> d!2164250 m!7629218))

(assert (=> d!2164250 m!7628694))

(assert (=> b!6918907 m!7629210))

(declare-fun m!7629220 () Bool)

(assert (=> b!6918907 m!7629220))

(declare-fun m!7629222 () Bool)

(assert (=> b!6918900 m!7629222))

(assert (=> b!6918900 m!7629222))

(declare-fun m!7629224 () Bool)

(assert (=> b!6918900 m!7629224))

(declare-fun m!7629226 () Bool)

(assert (=> b!6918900 m!7629226))

(assert (=> b!6918900 m!7629222))

(declare-fun m!7629228 () Bool)

(assert (=> b!6918900 m!7629228))

(assert (=> b!6918231 d!2164250))

(declare-fun d!2164252 () Bool)

(declare-fun e!4164501 () Bool)

(assert (=> d!2164252 e!4164501))

(declare-fun c!1284688 () Bool)

(assert (=> d!2164252 (= c!1284688 ((_ is EmptyExpr!16909) r3!135))))

(declare-fun lt!2469661 () Bool)

(declare-fun e!4164502 () Bool)

(assert (=> d!2164252 (= lt!2469661 e!4164502)))

(declare-fun c!1284687 () Bool)

(assert (=> d!2164252 (= c!1284687 (isEmpty!38790 (_2!37069 lt!2469572)))))

(assert (=> d!2164252 (validRegex!8615 r3!135)))

(assert (=> d!2164252 (= (matchR!9048 r3!135 (_2!37069 lt!2469572)) lt!2469661)))

(declare-fun b!6918909 () Bool)

(declare-fun res!2821067 () Bool)

(declare-fun e!4164505 () Bool)

(assert (=> b!6918909 (=> res!2821067 e!4164505)))

(declare-fun e!4164504 () Bool)

(assert (=> b!6918909 (= res!2821067 e!4164504)))

(declare-fun res!2821065 () Bool)

(assert (=> b!6918909 (=> (not res!2821065) (not e!4164504))))

(assert (=> b!6918909 (= res!2821065 lt!2469661)))

(declare-fun b!6918910 () Bool)

(declare-fun e!4164503 () Bool)

(assert (=> b!6918910 (= e!4164503 (not (= (head!13872 (_2!37069 lt!2469572)) (c!1284549 r3!135))))))

(declare-fun b!6918911 () Bool)

(declare-fun e!4164500 () Bool)

(assert (=> b!6918911 (= e!4164501 e!4164500)))

(declare-fun c!1284689 () Bool)

(assert (=> b!6918911 (= c!1284689 ((_ is EmptyLang!16909) r3!135))))

(declare-fun b!6918912 () Bool)

(assert (=> b!6918912 (= e!4164502 (nullable!6744 r3!135))))

(declare-fun b!6918913 () Bool)

(declare-fun call!628999 () Bool)

(assert (=> b!6918913 (= e!4164501 (= lt!2469661 call!628999))))

(declare-fun b!6918914 () Bool)

(assert (=> b!6918914 (= e!4164502 (matchR!9048 (derivativeStep!5419 r3!135 (head!13872 (_2!37069 lt!2469572))) (tail!12924 (_2!37069 lt!2469572))))))

(declare-fun b!6918915 () Bool)

(declare-fun res!2821061 () Bool)

(assert (=> b!6918915 (=> res!2821061 e!4164505)))

(assert (=> b!6918915 (= res!2821061 (not ((_ is ElementMatch!16909) r3!135)))))

(assert (=> b!6918915 (= e!4164500 e!4164505)))

(declare-fun b!6918916 () Bool)

(declare-fun e!4164506 () Bool)

(assert (=> b!6918916 (= e!4164505 e!4164506)))

(declare-fun res!2821064 () Bool)

(assert (=> b!6918916 (=> (not res!2821064) (not e!4164506))))

(assert (=> b!6918916 (= res!2821064 (not lt!2469661))))

(declare-fun b!6918917 () Bool)

(assert (=> b!6918917 (= e!4164504 (= (head!13872 (_2!37069 lt!2469572)) (c!1284549 r3!135)))))

(declare-fun b!6918918 () Bool)

(declare-fun res!2821062 () Bool)

(assert (=> b!6918918 (=> res!2821062 e!4164503)))

(assert (=> b!6918918 (= res!2821062 (not (isEmpty!38790 (tail!12924 (_2!37069 lt!2469572)))))))

(declare-fun bm!628994 () Bool)

(assert (=> bm!628994 (= call!628999 (isEmpty!38790 (_2!37069 lt!2469572)))))

(declare-fun b!6918919 () Bool)

(declare-fun res!2821068 () Bool)

(assert (=> b!6918919 (=> (not res!2821068) (not e!4164504))))

(assert (=> b!6918919 (= res!2821068 (not call!628999))))

(declare-fun b!6918920 () Bool)

(assert (=> b!6918920 (= e!4164500 (not lt!2469661))))

(declare-fun b!6918921 () Bool)

(declare-fun res!2821066 () Bool)

(assert (=> b!6918921 (=> (not res!2821066) (not e!4164504))))

(assert (=> b!6918921 (= res!2821066 (isEmpty!38790 (tail!12924 (_2!37069 lt!2469572))))))

(declare-fun b!6918922 () Bool)

(assert (=> b!6918922 (= e!4164506 e!4164503)))

(declare-fun res!2821063 () Bool)

(assert (=> b!6918922 (=> res!2821063 e!4164503)))

(assert (=> b!6918922 (= res!2821063 call!628999)))

(assert (= (and d!2164252 c!1284687) b!6918912))

(assert (= (and d!2164252 (not c!1284687)) b!6918914))

(assert (= (and d!2164252 c!1284688) b!6918913))

(assert (= (and d!2164252 (not c!1284688)) b!6918911))

(assert (= (and b!6918911 c!1284689) b!6918920))

(assert (= (and b!6918911 (not c!1284689)) b!6918915))

(assert (= (and b!6918915 (not res!2821061)) b!6918909))

(assert (= (and b!6918909 res!2821065) b!6918919))

(assert (= (and b!6918919 res!2821068) b!6918921))

(assert (= (and b!6918921 res!2821066) b!6918917))

(assert (= (and b!6918909 (not res!2821067)) b!6918916))

(assert (= (and b!6918916 res!2821064) b!6918922))

(assert (= (and b!6918922 (not res!2821063)) b!6918918))

(assert (= (and b!6918918 (not res!2821062)) b!6918910))

(assert (= (or b!6918913 b!6918919 b!6918922) bm!628994))

(declare-fun m!7629230 () Bool)

(assert (=> d!2164252 m!7629230))

(assert (=> d!2164252 m!7628692))

(declare-fun m!7629232 () Bool)

(assert (=> b!6918918 m!7629232))

(assert (=> b!6918918 m!7629232))

(declare-fun m!7629234 () Bool)

(assert (=> b!6918918 m!7629234))

(declare-fun m!7629236 () Bool)

(assert (=> b!6918914 m!7629236))

(assert (=> b!6918914 m!7629236))

(declare-fun m!7629238 () Bool)

(assert (=> b!6918914 m!7629238))

(assert (=> b!6918914 m!7629232))

(assert (=> b!6918914 m!7629238))

(assert (=> b!6918914 m!7629232))

(declare-fun m!7629240 () Bool)

(assert (=> b!6918914 m!7629240))

(assert (=> b!6918917 m!7629236))

(assert (=> bm!628994 m!7629230))

(assert (=> b!6918921 m!7629232))

(assert (=> b!6918921 m!7629232))

(assert (=> b!6918921 m!7629234))

(assert (=> b!6918910 m!7629236))

(declare-fun m!7629242 () Bool)

(assert (=> b!6918912 m!7629242))

(assert (=> b!6918230 d!2164252))

(declare-fun bs!1846186 () Bool)

(declare-fun b!6918927 () Bool)

(assert (= bs!1846186 (and b!6918927 d!2164152)))

(declare-fun lambda!393163 () Int)

(assert (=> bs!1846186 (not (= lambda!393163 lambda!393140))))

(declare-fun bs!1846187 () Bool)

(assert (= bs!1846187 (and b!6918927 b!6918231)))

(assert (=> bs!1846187 (not (= lambda!393163 lambda!393114))))

(declare-fun bs!1846188 () Bool)

(assert (= bs!1846188 (and b!6918927 b!6918248)))

(assert (=> bs!1846188 (not (= lambda!393163 lambda!393112))))

(assert (=> bs!1846188 (not (= lambda!393163 lambda!393111))))

(declare-fun bs!1846189 () Bool)

(assert (= bs!1846189 (and b!6918927 d!2164238)))

(assert (=> bs!1846189 (not (= lambda!393163 lambda!393160))))

(declare-fun bs!1846190 () Bool)

(assert (= bs!1846190 (and b!6918927 b!6918796)))

(assert (=> bs!1846190 (= (and (= s!14361 (_2!37069 lt!2469566)) (= (reg!17238 lt!2469582) (reg!17238 r2!6280)) (= lt!2469582 r2!6280)) (= lambda!393163 lambda!393156))))

(declare-fun bs!1846191 () Bool)

(assert (= bs!1846191 (and b!6918927 b!6918742)))

(assert (=> bs!1846191 (= (and (= s!14361 (_1!37069 lt!2469572)) (= (reg!17238 lt!2469582) (reg!17238 lt!2469574)) (= lt!2469582 lt!2469574)) (= lambda!393163 lambda!393154))))

(declare-fun bs!1846192 () Bool)

(assert (= bs!1846192 (and b!6918927 d!2164132)))

(assert (=> bs!1846192 (not (= lambda!393163 lambda!393131))))

(assert (=> bs!1846189 (not (= lambda!393163 lambda!393161))))

(assert (=> bs!1846192 (not (= lambda!393163 lambda!393130))))

(assert (=> bs!1846187 (not (= lambda!393163 lambda!393113))))

(declare-fun bs!1846193 () Bool)

(assert (= bs!1846193 (and b!6918927 b!6918803)))

(assert (=> bs!1846193 (not (= lambda!393163 lambda!393159))))

(declare-fun bs!1846194 () Bool)

(assert (= bs!1846194 (and b!6918927 b!6918792)))

(assert (=> bs!1846194 (not (= lambda!393163 lambda!393157))))

(declare-fun bs!1846195 () Bool)

(assert (= bs!1846195 (and b!6918927 b!6918738)))

(assert (=> bs!1846195 (not (= lambda!393163 lambda!393155))))

(declare-fun bs!1846196 () Bool)

(assert (= bs!1846196 (and b!6918927 b!6918807)))

(assert (=> bs!1846196 (= (and (= s!14361 (_1!37069 lt!2469566)) (= (reg!17238 lt!2469582) (reg!17238 r1!6342)) (= lt!2469582 r1!6342)) (= lambda!393163 lambda!393158))))

(declare-fun bs!1846197 () Bool)

(assert (= bs!1846197 (and b!6918927 d!2164240)))

(assert (=> bs!1846197 (not (= lambda!393163 lambda!393162))))

(assert (=> b!6918927 true))

(assert (=> b!6918927 true))

(declare-fun bs!1846198 () Bool)

(declare-fun b!6918923 () Bool)

(assert (= bs!1846198 (and b!6918923 d!2164152)))

(declare-fun lambda!393164 () Int)

(assert (=> bs!1846198 (not (= lambda!393164 lambda!393140))))

(declare-fun bs!1846199 () Bool)

(assert (= bs!1846199 (and b!6918923 b!6918231)))

(assert (=> bs!1846199 (= (and (= s!14361 (_1!37069 lt!2469572)) (= (regOne!34330 lt!2469582) r1!6342) (= (regTwo!34330 lt!2469582) r2!6280)) (= lambda!393164 lambda!393114))))

(declare-fun bs!1846200 () Bool)

(assert (= bs!1846200 (and b!6918923 b!6918248)))

(assert (=> bs!1846200 (= (and (= (regOne!34330 lt!2469582) lt!2469574) (= (regTwo!34330 lt!2469582) r3!135)) (= lambda!393164 lambda!393112))))

(assert (=> bs!1846200 (not (= lambda!393164 lambda!393111))))

(declare-fun bs!1846201 () Bool)

(assert (= bs!1846201 (and b!6918923 d!2164238)))

(assert (=> bs!1846201 (not (= lambda!393164 lambda!393160))))

(declare-fun bs!1846202 () Bool)

(assert (= bs!1846202 (and b!6918923 b!6918927)))

(assert (=> bs!1846202 (not (= lambda!393164 lambda!393163))))

(declare-fun bs!1846203 () Bool)

(assert (= bs!1846203 (and b!6918923 b!6918796)))

(assert (=> bs!1846203 (not (= lambda!393164 lambda!393156))))

(declare-fun bs!1846204 () Bool)

(assert (= bs!1846204 (and b!6918923 b!6918742)))

(assert (=> bs!1846204 (not (= lambda!393164 lambda!393154))))

(declare-fun bs!1846205 () Bool)

(assert (= bs!1846205 (and b!6918923 d!2164132)))

(assert (=> bs!1846205 (= (and (= (regOne!34330 lt!2469582) lt!2469574) (= (regTwo!34330 lt!2469582) r3!135)) (= lambda!393164 lambda!393131))))

(assert (=> bs!1846201 (= (and (= s!14361 (_1!37069 lt!2469572)) (= (regOne!34330 lt!2469582) r1!6342) (= (regTwo!34330 lt!2469582) r2!6280)) (= lambda!393164 lambda!393161))))

(assert (=> bs!1846205 (not (= lambda!393164 lambda!393130))))

(assert (=> bs!1846199 (not (= lambda!393164 lambda!393113))))

(declare-fun bs!1846206 () Bool)

(assert (= bs!1846206 (and b!6918923 b!6918803)))

(assert (=> bs!1846206 (= (and (= s!14361 (_1!37069 lt!2469566)) (= (regOne!34330 lt!2469582) (regOne!34330 r1!6342)) (= (regTwo!34330 lt!2469582) (regTwo!34330 r1!6342))) (= lambda!393164 lambda!393159))))

(declare-fun bs!1846207 () Bool)

(assert (= bs!1846207 (and b!6918923 b!6918792)))

(assert (=> bs!1846207 (= (and (= s!14361 (_2!37069 lt!2469566)) (= (regOne!34330 lt!2469582) (regOne!34330 r2!6280)) (= (regTwo!34330 lt!2469582) (regTwo!34330 r2!6280))) (= lambda!393164 lambda!393157))))

(declare-fun bs!1846208 () Bool)

(assert (= bs!1846208 (and b!6918923 b!6918738)))

(assert (=> bs!1846208 (= (and (= s!14361 (_1!37069 lt!2469572)) (= (regOne!34330 lt!2469582) (regOne!34330 lt!2469574)) (= (regTwo!34330 lt!2469582) (regTwo!34330 lt!2469574))) (= lambda!393164 lambda!393155))))

(declare-fun bs!1846209 () Bool)

(assert (= bs!1846209 (and b!6918923 b!6918807)))

(assert (=> bs!1846209 (not (= lambda!393164 lambda!393158))))

(declare-fun bs!1846210 () Bool)

(assert (= bs!1846210 (and b!6918923 d!2164240)))

(assert (=> bs!1846210 (not (= lambda!393164 lambda!393162))))

(assert (=> b!6918923 true))

(assert (=> b!6918923 true))

(declare-fun e!4164511 () Bool)

(declare-fun call!629001 () Bool)

(assert (=> b!6918923 (= e!4164511 call!629001)))

(declare-fun b!6918924 () Bool)

(declare-fun e!4164513 () Bool)

(assert (=> b!6918924 (= e!4164513 e!4164511)))

(declare-fun c!1284693 () Bool)

(assert (=> b!6918924 (= c!1284693 ((_ is Star!16909) lt!2469582))))

(declare-fun b!6918925 () Bool)

(declare-fun e!4164512 () Bool)

(assert (=> b!6918925 (= e!4164512 (matchRSpec!3966 (regTwo!34331 lt!2469582) s!14361))))

(declare-fun b!6918926 () Bool)

(declare-fun res!2821069 () Bool)

(declare-fun e!4164510 () Bool)

(assert (=> b!6918926 (=> res!2821069 e!4164510)))

(declare-fun call!629000 () Bool)

(assert (=> b!6918926 (= res!2821069 call!629000)))

(assert (=> b!6918926 (= e!4164511 e!4164510)))

(declare-fun bm!628995 () Bool)

(assert (=> bm!628995 (= call!629000 (isEmpty!38790 s!14361))))

(declare-fun b!6918928 () Bool)

(declare-fun c!1284690 () Bool)

(assert (=> b!6918928 (= c!1284690 ((_ is Union!16909) lt!2469582))))

(declare-fun e!4164508 () Bool)

(assert (=> b!6918928 (= e!4164508 e!4164513)))

(declare-fun bm!628996 () Bool)

(assert (=> bm!628996 (= call!629001 (Exists!3911 (ite c!1284693 lambda!393163 lambda!393164)))))

(declare-fun b!6918929 () Bool)

(declare-fun e!4164509 () Bool)

(assert (=> b!6918929 (= e!4164509 call!629000)))

(declare-fun b!6918930 () Bool)

(declare-fun e!4164507 () Bool)

(assert (=> b!6918930 (= e!4164509 e!4164507)))

(declare-fun res!2821071 () Bool)

(assert (=> b!6918930 (= res!2821071 (not ((_ is EmptyLang!16909) lt!2469582)))))

(assert (=> b!6918930 (=> (not res!2821071) (not e!4164507))))

(declare-fun b!6918931 () Bool)

(declare-fun c!1284691 () Bool)

(assert (=> b!6918931 (= c!1284691 ((_ is ElementMatch!16909) lt!2469582))))

(assert (=> b!6918931 (= e!4164507 e!4164508)))

(declare-fun b!6918932 () Bool)

(assert (=> b!6918932 (= e!4164508 (= s!14361 (Cons!66538 (c!1284549 lt!2469582) Nil!66538)))))

(declare-fun b!6918933 () Bool)

(assert (=> b!6918933 (= e!4164513 e!4164512)))

(declare-fun res!2821070 () Bool)

(assert (=> b!6918933 (= res!2821070 (matchRSpec!3966 (regOne!34331 lt!2469582) s!14361))))

(assert (=> b!6918933 (=> res!2821070 e!4164512)))

(assert (=> b!6918927 (= e!4164510 call!629001)))

(declare-fun d!2164254 () Bool)

(declare-fun c!1284692 () Bool)

(assert (=> d!2164254 (= c!1284692 ((_ is EmptyExpr!16909) lt!2469582))))

(assert (=> d!2164254 (= (matchRSpec!3966 lt!2469582 s!14361) e!4164509)))

(assert (= (and d!2164254 c!1284692) b!6918929))

(assert (= (and d!2164254 (not c!1284692)) b!6918930))

(assert (= (and b!6918930 res!2821071) b!6918931))

(assert (= (and b!6918931 c!1284691) b!6918932))

(assert (= (and b!6918931 (not c!1284691)) b!6918928))

(assert (= (and b!6918928 c!1284690) b!6918933))

(assert (= (and b!6918928 (not c!1284690)) b!6918924))

(assert (= (and b!6918933 (not res!2821070)) b!6918925))

(assert (= (and b!6918924 c!1284693) b!6918926))

(assert (= (and b!6918924 (not c!1284693)) b!6918923))

(assert (= (and b!6918926 (not res!2821069)) b!6918927))

(assert (= (or b!6918927 b!6918923) bm!628996))

(assert (= (or b!6918929 b!6918926) bm!628995))

(declare-fun m!7629244 () Bool)

(assert (=> b!6918925 m!7629244))

(declare-fun m!7629246 () Bool)

(assert (=> bm!628995 m!7629246))

(declare-fun m!7629248 () Bool)

(assert (=> bm!628996 m!7629248))

(declare-fun m!7629250 () Bool)

(assert (=> b!6918933 m!7629250))

(assert (=> b!6918241 d!2164254))

(declare-fun d!2164256 () Bool)

(declare-fun e!4164515 () Bool)

(assert (=> d!2164256 e!4164515))

(declare-fun c!1284695 () Bool)

(assert (=> d!2164256 (= c!1284695 ((_ is EmptyExpr!16909) lt!2469582))))

(declare-fun lt!2469662 () Bool)

(declare-fun e!4164516 () Bool)

(assert (=> d!2164256 (= lt!2469662 e!4164516)))

(declare-fun c!1284694 () Bool)

(assert (=> d!2164256 (= c!1284694 (isEmpty!38790 s!14361))))

(assert (=> d!2164256 (validRegex!8615 lt!2469582)))

(assert (=> d!2164256 (= (matchR!9048 lt!2469582 s!14361) lt!2469662)))

(declare-fun b!6918934 () Bool)

(declare-fun res!2821078 () Bool)

(declare-fun e!4164519 () Bool)

(assert (=> b!6918934 (=> res!2821078 e!4164519)))

(declare-fun e!4164518 () Bool)

(assert (=> b!6918934 (= res!2821078 e!4164518)))

(declare-fun res!2821076 () Bool)

(assert (=> b!6918934 (=> (not res!2821076) (not e!4164518))))

(assert (=> b!6918934 (= res!2821076 lt!2469662)))

(declare-fun b!6918935 () Bool)

(declare-fun e!4164517 () Bool)

(assert (=> b!6918935 (= e!4164517 (not (= (head!13872 s!14361) (c!1284549 lt!2469582))))))

(declare-fun b!6918936 () Bool)

(declare-fun e!4164514 () Bool)

(assert (=> b!6918936 (= e!4164515 e!4164514)))

(declare-fun c!1284696 () Bool)

(assert (=> b!6918936 (= c!1284696 ((_ is EmptyLang!16909) lt!2469582))))

(declare-fun b!6918937 () Bool)

(assert (=> b!6918937 (= e!4164516 (nullable!6744 lt!2469582))))

(declare-fun b!6918938 () Bool)

(declare-fun call!629002 () Bool)

(assert (=> b!6918938 (= e!4164515 (= lt!2469662 call!629002))))

(declare-fun b!6918939 () Bool)

(assert (=> b!6918939 (= e!4164516 (matchR!9048 (derivativeStep!5419 lt!2469582 (head!13872 s!14361)) (tail!12924 s!14361)))))

(declare-fun b!6918940 () Bool)

(declare-fun res!2821072 () Bool)

(assert (=> b!6918940 (=> res!2821072 e!4164519)))

(assert (=> b!6918940 (= res!2821072 (not ((_ is ElementMatch!16909) lt!2469582)))))

(assert (=> b!6918940 (= e!4164514 e!4164519)))

(declare-fun b!6918941 () Bool)

(declare-fun e!4164520 () Bool)

(assert (=> b!6918941 (= e!4164519 e!4164520)))

(declare-fun res!2821075 () Bool)

(assert (=> b!6918941 (=> (not res!2821075) (not e!4164520))))

(assert (=> b!6918941 (= res!2821075 (not lt!2469662))))

(declare-fun b!6918942 () Bool)

(assert (=> b!6918942 (= e!4164518 (= (head!13872 s!14361) (c!1284549 lt!2469582)))))

(declare-fun b!6918943 () Bool)

(declare-fun res!2821073 () Bool)

(assert (=> b!6918943 (=> res!2821073 e!4164517)))

(assert (=> b!6918943 (= res!2821073 (not (isEmpty!38790 (tail!12924 s!14361))))))

(declare-fun bm!628997 () Bool)

(assert (=> bm!628997 (= call!629002 (isEmpty!38790 s!14361))))

(declare-fun b!6918944 () Bool)

(declare-fun res!2821079 () Bool)

(assert (=> b!6918944 (=> (not res!2821079) (not e!4164518))))

(assert (=> b!6918944 (= res!2821079 (not call!629002))))

(declare-fun b!6918945 () Bool)

(assert (=> b!6918945 (= e!4164514 (not lt!2469662))))

(declare-fun b!6918946 () Bool)

(declare-fun res!2821077 () Bool)

(assert (=> b!6918946 (=> (not res!2821077) (not e!4164518))))

(assert (=> b!6918946 (= res!2821077 (isEmpty!38790 (tail!12924 s!14361)))))

(declare-fun b!6918947 () Bool)

(assert (=> b!6918947 (= e!4164520 e!4164517)))

(declare-fun res!2821074 () Bool)

(assert (=> b!6918947 (=> res!2821074 e!4164517)))

(assert (=> b!6918947 (= res!2821074 call!629002)))

(assert (= (and d!2164256 c!1284694) b!6918937))

(assert (= (and d!2164256 (not c!1284694)) b!6918939))

(assert (= (and d!2164256 c!1284695) b!6918938))

(assert (= (and d!2164256 (not c!1284695)) b!6918936))

(assert (= (and b!6918936 c!1284696) b!6918945))

(assert (= (and b!6918936 (not c!1284696)) b!6918940))

(assert (= (and b!6918940 (not res!2821072)) b!6918934))

(assert (= (and b!6918934 res!2821076) b!6918944))

(assert (= (and b!6918944 res!2821079) b!6918946))

(assert (= (and b!6918946 res!2821077) b!6918942))

(assert (= (and b!6918934 (not res!2821078)) b!6918941))

(assert (= (and b!6918941 res!2821075) b!6918947))

(assert (= (and b!6918947 (not res!2821074)) b!6918943))

(assert (= (and b!6918943 (not res!2821073)) b!6918935))

(assert (= (or b!6918938 b!6918944 b!6918947) bm!628997))

(assert (=> d!2164256 m!7629246))

(declare-fun m!7629252 () Bool)

(assert (=> d!2164256 m!7629252))

(declare-fun m!7629254 () Bool)

(assert (=> b!6918943 m!7629254))

(assert (=> b!6918943 m!7629254))

(declare-fun m!7629256 () Bool)

(assert (=> b!6918943 m!7629256))

(declare-fun m!7629258 () Bool)

(assert (=> b!6918939 m!7629258))

(assert (=> b!6918939 m!7629258))

(declare-fun m!7629260 () Bool)

(assert (=> b!6918939 m!7629260))

(assert (=> b!6918939 m!7629254))

(assert (=> b!6918939 m!7629260))

(assert (=> b!6918939 m!7629254))

(declare-fun m!7629262 () Bool)

(assert (=> b!6918939 m!7629262))

(assert (=> b!6918942 m!7629258))

(assert (=> bm!628997 m!7629246))

(assert (=> b!6918946 m!7629254))

(assert (=> b!6918946 m!7629254))

(assert (=> b!6918946 m!7629256))

(assert (=> b!6918935 m!7629258))

(declare-fun m!7629264 () Bool)

(assert (=> b!6918937 m!7629264))

(assert (=> b!6918241 d!2164256))

(declare-fun d!2164258 () Bool)

(declare-fun e!4164522 () Bool)

(assert (=> d!2164258 e!4164522))

(declare-fun c!1284698 () Bool)

(assert (=> d!2164258 (= c!1284698 ((_ is EmptyExpr!16909) lt!2469570))))

(declare-fun lt!2469663 () Bool)

(declare-fun e!4164523 () Bool)

(assert (=> d!2164258 (= lt!2469663 e!4164523)))

(declare-fun c!1284697 () Bool)

(assert (=> d!2164258 (= c!1284697 (isEmpty!38790 s!14361))))

(assert (=> d!2164258 (validRegex!8615 lt!2469570)))

(assert (=> d!2164258 (= (matchR!9048 lt!2469570 s!14361) lt!2469663)))

(declare-fun b!6918948 () Bool)

(declare-fun res!2821086 () Bool)

(declare-fun e!4164526 () Bool)

(assert (=> b!6918948 (=> res!2821086 e!4164526)))

(declare-fun e!4164525 () Bool)

(assert (=> b!6918948 (= res!2821086 e!4164525)))

(declare-fun res!2821084 () Bool)

(assert (=> b!6918948 (=> (not res!2821084) (not e!4164525))))

(assert (=> b!6918948 (= res!2821084 lt!2469663)))

(declare-fun b!6918949 () Bool)

(declare-fun e!4164524 () Bool)

(assert (=> b!6918949 (= e!4164524 (not (= (head!13872 s!14361) (c!1284549 lt!2469570))))))

(declare-fun b!6918950 () Bool)

(declare-fun e!4164521 () Bool)

(assert (=> b!6918950 (= e!4164522 e!4164521)))

(declare-fun c!1284699 () Bool)

(assert (=> b!6918950 (= c!1284699 ((_ is EmptyLang!16909) lt!2469570))))

(declare-fun b!6918951 () Bool)

(assert (=> b!6918951 (= e!4164523 (nullable!6744 lt!2469570))))

(declare-fun b!6918952 () Bool)

(declare-fun call!629003 () Bool)

(assert (=> b!6918952 (= e!4164522 (= lt!2469663 call!629003))))

(declare-fun b!6918953 () Bool)

(assert (=> b!6918953 (= e!4164523 (matchR!9048 (derivativeStep!5419 lt!2469570 (head!13872 s!14361)) (tail!12924 s!14361)))))

(declare-fun b!6918954 () Bool)

(declare-fun res!2821080 () Bool)

(assert (=> b!6918954 (=> res!2821080 e!4164526)))

(assert (=> b!6918954 (= res!2821080 (not ((_ is ElementMatch!16909) lt!2469570)))))

(assert (=> b!6918954 (= e!4164521 e!4164526)))

(declare-fun b!6918955 () Bool)

(declare-fun e!4164527 () Bool)

(assert (=> b!6918955 (= e!4164526 e!4164527)))

(declare-fun res!2821083 () Bool)

(assert (=> b!6918955 (=> (not res!2821083) (not e!4164527))))

(assert (=> b!6918955 (= res!2821083 (not lt!2469663))))

(declare-fun b!6918956 () Bool)

(assert (=> b!6918956 (= e!4164525 (= (head!13872 s!14361) (c!1284549 lt!2469570)))))

(declare-fun b!6918957 () Bool)

(declare-fun res!2821081 () Bool)

(assert (=> b!6918957 (=> res!2821081 e!4164524)))

(assert (=> b!6918957 (= res!2821081 (not (isEmpty!38790 (tail!12924 s!14361))))))

(declare-fun bm!628998 () Bool)

(assert (=> bm!628998 (= call!629003 (isEmpty!38790 s!14361))))

(declare-fun b!6918958 () Bool)

(declare-fun res!2821087 () Bool)

(assert (=> b!6918958 (=> (not res!2821087) (not e!4164525))))

(assert (=> b!6918958 (= res!2821087 (not call!629003))))

(declare-fun b!6918959 () Bool)

(assert (=> b!6918959 (= e!4164521 (not lt!2469663))))

(declare-fun b!6918960 () Bool)

(declare-fun res!2821085 () Bool)

(assert (=> b!6918960 (=> (not res!2821085) (not e!4164525))))

(assert (=> b!6918960 (= res!2821085 (isEmpty!38790 (tail!12924 s!14361)))))

(declare-fun b!6918961 () Bool)

(assert (=> b!6918961 (= e!4164527 e!4164524)))

(declare-fun res!2821082 () Bool)

(assert (=> b!6918961 (=> res!2821082 e!4164524)))

(assert (=> b!6918961 (= res!2821082 call!629003)))

(assert (= (and d!2164258 c!1284697) b!6918951))

(assert (= (and d!2164258 (not c!1284697)) b!6918953))

(assert (= (and d!2164258 c!1284698) b!6918952))

(assert (= (and d!2164258 (not c!1284698)) b!6918950))

(assert (= (and b!6918950 c!1284699) b!6918959))

(assert (= (and b!6918950 (not c!1284699)) b!6918954))

(assert (= (and b!6918954 (not res!2821080)) b!6918948))

(assert (= (and b!6918948 res!2821084) b!6918958))

(assert (= (and b!6918958 res!2821087) b!6918960))

(assert (= (and b!6918960 res!2821085) b!6918956))

(assert (= (and b!6918948 (not res!2821086)) b!6918955))

(assert (= (and b!6918955 res!2821083) b!6918961))

(assert (= (and b!6918961 (not res!2821082)) b!6918957))

(assert (= (and b!6918957 (not res!2821081)) b!6918949))

(assert (= (or b!6918952 b!6918958 b!6918961) bm!628998))

(assert (=> d!2164258 m!7629246))

(declare-fun m!7629266 () Bool)

(assert (=> d!2164258 m!7629266))

(assert (=> b!6918957 m!7629254))

(assert (=> b!6918957 m!7629254))

(assert (=> b!6918957 m!7629256))

(assert (=> b!6918953 m!7629258))

(assert (=> b!6918953 m!7629258))

(declare-fun m!7629268 () Bool)

(assert (=> b!6918953 m!7629268))

(assert (=> b!6918953 m!7629254))

(assert (=> b!6918953 m!7629268))

(assert (=> b!6918953 m!7629254))

(declare-fun m!7629270 () Bool)

(assert (=> b!6918953 m!7629270))

(assert (=> b!6918956 m!7629258))

(assert (=> bm!628998 m!7629246))

(assert (=> b!6918960 m!7629254))

(assert (=> b!6918960 m!7629254))

(assert (=> b!6918960 m!7629256))

(assert (=> b!6918949 m!7629258))

(declare-fun m!7629272 () Bool)

(assert (=> b!6918951 m!7629272))

(assert (=> b!6918241 d!2164258))

(declare-fun d!2164260 () Bool)

(assert (=> d!2164260 (= (matchR!9048 lt!2469570 s!14361) (matchRSpec!3966 lt!2469570 s!14361))))

(declare-fun lt!2469664 () Unit!160542)

(assert (=> d!2164260 (= lt!2469664 (choose!51517 lt!2469570 s!14361))))

(assert (=> d!2164260 (validRegex!8615 lt!2469570)))

(assert (=> d!2164260 (= (mainMatchTheorem!3966 lt!2469570 s!14361) lt!2469664)))

(declare-fun bs!1846211 () Bool)

(assert (= bs!1846211 d!2164260))

(assert (=> bs!1846211 m!7628756))

(assert (=> bs!1846211 m!7628752))

(declare-fun m!7629274 () Bool)

(assert (=> bs!1846211 m!7629274))

(assert (=> bs!1846211 m!7629266))

(assert (=> b!6918241 d!2164260))

(declare-fun bs!1846212 () Bool)

(declare-fun b!6918966 () Bool)

(assert (= bs!1846212 (and b!6918966 d!2164152)))

(declare-fun lambda!393165 () Int)

(assert (=> bs!1846212 (not (= lambda!393165 lambda!393140))))

(declare-fun bs!1846213 () Bool)

(assert (= bs!1846213 (and b!6918966 b!6918231)))

(assert (=> bs!1846213 (not (= lambda!393165 lambda!393114))))

(declare-fun bs!1846214 () Bool)

(assert (= bs!1846214 (and b!6918966 b!6918248)))

(assert (=> bs!1846214 (not (= lambda!393165 lambda!393112))))

(assert (=> bs!1846214 (not (= lambda!393165 lambda!393111))))

(declare-fun bs!1846215 () Bool)

(assert (= bs!1846215 (and b!6918966 d!2164238)))

(assert (=> bs!1846215 (not (= lambda!393165 lambda!393160))))

(declare-fun bs!1846216 () Bool)

(assert (= bs!1846216 (and b!6918966 b!6918927)))

(assert (=> bs!1846216 (= (and (= (reg!17238 lt!2469570) (reg!17238 lt!2469582)) (= lt!2469570 lt!2469582)) (= lambda!393165 lambda!393163))))

(declare-fun bs!1846217 () Bool)

(assert (= bs!1846217 (and b!6918966 b!6918796)))

(assert (=> bs!1846217 (= (and (= s!14361 (_2!37069 lt!2469566)) (= (reg!17238 lt!2469570) (reg!17238 r2!6280)) (= lt!2469570 r2!6280)) (= lambda!393165 lambda!393156))))

(declare-fun bs!1846218 () Bool)

(assert (= bs!1846218 (and b!6918966 b!6918742)))

(assert (=> bs!1846218 (= (and (= s!14361 (_1!37069 lt!2469572)) (= (reg!17238 lt!2469570) (reg!17238 lt!2469574)) (= lt!2469570 lt!2469574)) (= lambda!393165 lambda!393154))))

(declare-fun bs!1846219 () Bool)

(assert (= bs!1846219 (and b!6918966 d!2164132)))

(assert (=> bs!1846219 (not (= lambda!393165 lambda!393131))))

(assert (=> bs!1846215 (not (= lambda!393165 lambda!393161))))

(assert (=> bs!1846219 (not (= lambda!393165 lambda!393130))))

(assert (=> bs!1846213 (not (= lambda!393165 lambda!393113))))

(declare-fun bs!1846220 () Bool)

(assert (= bs!1846220 (and b!6918966 b!6918923)))

(assert (=> bs!1846220 (not (= lambda!393165 lambda!393164))))

(declare-fun bs!1846221 () Bool)

(assert (= bs!1846221 (and b!6918966 b!6918803)))

(assert (=> bs!1846221 (not (= lambda!393165 lambda!393159))))

(declare-fun bs!1846222 () Bool)

(assert (= bs!1846222 (and b!6918966 b!6918792)))

(assert (=> bs!1846222 (not (= lambda!393165 lambda!393157))))

(declare-fun bs!1846223 () Bool)

(assert (= bs!1846223 (and b!6918966 b!6918738)))

(assert (=> bs!1846223 (not (= lambda!393165 lambda!393155))))

(declare-fun bs!1846224 () Bool)

(assert (= bs!1846224 (and b!6918966 b!6918807)))

(assert (=> bs!1846224 (= (and (= s!14361 (_1!37069 lt!2469566)) (= (reg!17238 lt!2469570) (reg!17238 r1!6342)) (= lt!2469570 r1!6342)) (= lambda!393165 lambda!393158))))

(declare-fun bs!1846225 () Bool)

(assert (= bs!1846225 (and b!6918966 d!2164240)))

(assert (=> bs!1846225 (not (= lambda!393165 lambda!393162))))

(assert (=> b!6918966 true))

(assert (=> b!6918966 true))

(declare-fun bs!1846226 () Bool)

(declare-fun b!6918962 () Bool)

(assert (= bs!1846226 (and b!6918962 d!2164152)))

(declare-fun lambda!393166 () Int)

(assert (=> bs!1846226 (not (= lambda!393166 lambda!393140))))

(declare-fun bs!1846227 () Bool)

(assert (= bs!1846227 (and b!6918962 b!6918231)))

(assert (=> bs!1846227 (= (and (= s!14361 (_1!37069 lt!2469572)) (= (regOne!34330 lt!2469570) r1!6342) (= (regTwo!34330 lt!2469570) r2!6280)) (= lambda!393166 lambda!393114))))

(declare-fun bs!1846228 () Bool)

(assert (= bs!1846228 (and b!6918962 b!6918248)))

(assert (=> bs!1846228 (= (and (= (regOne!34330 lt!2469570) lt!2469574) (= (regTwo!34330 lt!2469570) r3!135)) (= lambda!393166 lambda!393112))))

(assert (=> bs!1846228 (not (= lambda!393166 lambda!393111))))

(declare-fun bs!1846229 () Bool)

(assert (= bs!1846229 (and b!6918962 d!2164238)))

(assert (=> bs!1846229 (not (= lambda!393166 lambda!393160))))

(declare-fun bs!1846230 () Bool)

(assert (= bs!1846230 (and b!6918962 b!6918927)))

(assert (=> bs!1846230 (not (= lambda!393166 lambda!393163))))

(declare-fun bs!1846231 () Bool)

(assert (= bs!1846231 (and b!6918962 b!6918796)))

(assert (=> bs!1846231 (not (= lambda!393166 lambda!393156))))

(declare-fun bs!1846232 () Bool)

(assert (= bs!1846232 (and b!6918962 b!6918742)))

(assert (=> bs!1846232 (not (= lambda!393166 lambda!393154))))

(declare-fun bs!1846233 () Bool)

(assert (= bs!1846233 (and b!6918962 d!2164132)))

(assert (=> bs!1846233 (= (and (= (regOne!34330 lt!2469570) lt!2469574) (= (regTwo!34330 lt!2469570) r3!135)) (= lambda!393166 lambda!393131))))

(assert (=> bs!1846229 (= (and (= s!14361 (_1!37069 lt!2469572)) (= (regOne!34330 lt!2469570) r1!6342) (= (regTwo!34330 lt!2469570) r2!6280)) (= lambda!393166 lambda!393161))))

(assert (=> bs!1846233 (not (= lambda!393166 lambda!393130))))

(assert (=> bs!1846227 (not (= lambda!393166 lambda!393113))))

(declare-fun bs!1846234 () Bool)

(assert (= bs!1846234 (and b!6918962 b!6918923)))

(assert (=> bs!1846234 (= (and (= (regOne!34330 lt!2469570) (regOne!34330 lt!2469582)) (= (regTwo!34330 lt!2469570) (regTwo!34330 lt!2469582))) (= lambda!393166 lambda!393164))))

(declare-fun bs!1846235 () Bool)

(assert (= bs!1846235 (and b!6918962 b!6918792)))

(assert (=> bs!1846235 (= (and (= s!14361 (_2!37069 lt!2469566)) (= (regOne!34330 lt!2469570) (regOne!34330 r2!6280)) (= (regTwo!34330 lt!2469570) (regTwo!34330 r2!6280))) (= lambda!393166 lambda!393157))))

(declare-fun bs!1846236 () Bool)

(assert (= bs!1846236 (and b!6918962 b!6918738)))

(assert (=> bs!1846236 (= (and (= s!14361 (_1!37069 lt!2469572)) (= (regOne!34330 lt!2469570) (regOne!34330 lt!2469574)) (= (regTwo!34330 lt!2469570) (regTwo!34330 lt!2469574))) (= lambda!393166 lambda!393155))))

(declare-fun bs!1846237 () Bool)

(assert (= bs!1846237 (and b!6918962 b!6918807)))

(assert (=> bs!1846237 (not (= lambda!393166 lambda!393158))))

(declare-fun bs!1846238 () Bool)

(assert (= bs!1846238 (and b!6918962 d!2164240)))

(assert (=> bs!1846238 (not (= lambda!393166 lambda!393162))))

(declare-fun bs!1846239 () Bool)

(assert (= bs!1846239 (and b!6918962 b!6918803)))

(assert (=> bs!1846239 (= (and (= s!14361 (_1!37069 lt!2469566)) (= (regOne!34330 lt!2469570) (regOne!34330 r1!6342)) (= (regTwo!34330 lt!2469570) (regTwo!34330 r1!6342))) (= lambda!393166 lambda!393159))))

(declare-fun bs!1846240 () Bool)

(assert (= bs!1846240 (and b!6918962 b!6918966)))

(assert (=> bs!1846240 (not (= lambda!393166 lambda!393165))))

(assert (=> b!6918962 true))

(assert (=> b!6918962 true))

(declare-fun e!4164532 () Bool)

(declare-fun call!629005 () Bool)

(assert (=> b!6918962 (= e!4164532 call!629005)))

(declare-fun b!6918963 () Bool)

(declare-fun e!4164534 () Bool)

(assert (=> b!6918963 (= e!4164534 e!4164532)))

(declare-fun c!1284703 () Bool)

(assert (=> b!6918963 (= c!1284703 ((_ is Star!16909) lt!2469570))))

(declare-fun b!6918964 () Bool)

(declare-fun e!4164533 () Bool)

(assert (=> b!6918964 (= e!4164533 (matchRSpec!3966 (regTwo!34331 lt!2469570) s!14361))))

(declare-fun b!6918965 () Bool)

(declare-fun res!2821088 () Bool)

(declare-fun e!4164531 () Bool)

(assert (=> b!6918965 (=> res!2821088 e!4164531)))

(declare-fun call!629004 () Bool)

(assert (=> b!6918965 (= res!2821088 call!629004)))

(assert (=> b!6918965 (= e!4164532 e!4164531)))

(declare-fun bm!628999 () Bool)

(assert (=> bm!628999 (= call!629004 (isEmpty!38790 s!14361))))

(declare-fun b!6918967 () Bool)

(declare-fun c!1284700 () Bool)

(assert (=> b!6918967 (= c!1284700 ((_ is Union!16909) lt!2469570))))

(declare-fun e!4164529 () Bool)

(assert (=> b!6918967 (= e!4164529 e!4164534)))

(declare-fun bm!629000 () Bool)

(assert (=> bm!629000 (= call!629005 (Exists!3911 (ite c!1284703 lambda!393165 lambda!393166)))))

(declare-fun b!6918968 () Bool)

(declare-fun e!4164530 () Bool)

(assert (=> b!6918968 (= e!4164530 call!629004)))

(declare-fun b!6918969 () Bool)

(declare-fun e!4164528 () Bool)

(assert (=> b!6918969 (= e!4164530 e!4164528)))

(declare-fun res!2821090 () Bool)

(assert (=> b!6918969 (= res!2821090 (not ((_ is EmptyLang!16909) lt!2469570)))))

(assert (=> b!6918969 (=> (not res!2821090) (not e!4164528))))

(declare-fun b!6918970 () Bool)

(declare-fun c!1284701 () Bool)

(assert (=> b!6918970 (= c!1284701 ((_ is ElementMatch!16909) lt!2469570))))

(assert (=> b!6918970 (= e!4164528 e!4164529)))

(declare-fun b!6918971 () Bool)

(assert (=> b!6918971 (= e!4164529 (= s!14361 (Cons!66538 (c!1284549 lt!2469570) Nil!66538)))))

(declare-fun b!6918972 () Bool)

(assert (=> b!6918972 (= e!4164534 e!4164533)))

(declare-fun res!2821089 () Bool)

(assert (=> b!6918972 (= res!2821089 (matchRSpec!3966 (regOne!34331 lt!2469570) s!14361))))

(assert (=> b!6918972 (=> res!2821089 e!4164533)))

(assert (=> b!6918966 (= e!4164531 call!629005)))

(declare-fun d!2164262 () Bool)

(declare-fun c!1284702 () Bool)

(assert (=> d!2164262 (= c!1284702 ((_ is EmptyExpr!16909) lt!2469570))))

(assert (=> d!2164262 (= (matchRSpec!3966 lt!2469570 s!14361) e!4164530)))

(assert (= (and d!2164262 c!1284702) b!6918968))

(assert (= (and d!2164262 (not c!1284702)) b!6918969))

(assert (= (and b!6918969 res!2821090) b!6918970))

(assert (= (and b!6918970 c!1284701) b!6918971))

(assert (= (and b!6918970 (not c!1284701)) b!6918967))

(assert (= (and b!6918967 c!1284700) b!6918972))

(assert (= (and b!6918967 (not c!1284700)) b!6918963))

(assert (= (and b!6918972 (not res!2821089)) b!6918964))

(assert (= (and b!6918963 c!1284703) b!6918965))

(assert (= (and b!6918963 (not c!1284703)) b!6918962))

(assert (= (and b!6918965 (not res!2821088)) b!6918966))

(assert (= (or b!6918966 b!6918962) bm!629000))

(assert (= (or b!6918968 b!6918965) bm!628999))

(declare-fun m!7629276 () Bool)

(assert (=> b!6918964 m!7629276))

(assert (=> bm!628999 m!7629246))

(declare-fun m!7629278 () Bool)

(assert (=> bm!629000 m!7629278))

(declare-fun m!7629280 () Bool)

(assert (=> b!6918972 m!7629280))

(assert (=> b!6918241 d!2164262))

(declare-fun d!2164264 () Bool)

(assert (=> d!2164264 (= (matchR!9048 lt!2469582 s!14361) (matchRSpec!3966 lt!2469582 s!14361))))

(declare-fun lt!2469665 () Unit!160542)

(assert (=> d!2164264 (= lt!2469665 (choose!51517 lt!2469582 s!14361))))

(assert (=> d!2164264 (validRegex!8615 lt!2469582)))

(assert (=> d!2164264 (= (mainMatchTheorem!3966 lt!2469582 s!14361) lt!2469665)))

(declare-fun bs!1846241 () Bool)

(assert (= bs!1846241 d!2164264))

(assert (=> bs!1846241 m!7628760))

(assert (=> bs!1846241 m!7628762))

(declare-fun m!7629282 () Bool)

(assert (=> bs!1846241 m!7629282))

(assert (=> bs!1846241 m!7629252))

(assert (=> b!6918241 d!2164264))

(declare-fun b!6918985 () Bool)

(declare-fun e!4164537 () Bool)

(declare-fun tp!1907079 () Bool)

(assert (=> b!6918985 (= e!4164537 tp!1907079)))

(declare-fun b!6918984 () Bool)

(declare-fun tp!1907080 () Bool)

(declare-fun tp!1907078 () Bool)

(assert (=> b!6918984 (= e!4164537 (and tp!1907080 tp!1907078))))

(declare-fun b!6918983 () Bool)

(assert (=> b!6918983 (= e!4164537 tp_is_empty!43043)))

(assert (=> b!6918232 (= tp!1906974 e!4164537)))

(declare-fun b!6918986 () Bool)

(declare-fun tp!1907081 () Bool)

(declare-fun tp!1907082 () Bool)

(assert (=> b!6918986 (= e!4164537 (and tp!1907081 tp!1907082))))

(assert (= (and b!6918232 ((_ is ElementMatch!16909) (regOne!34331 r2!6280))) b!6918983))

(assert (= (and b!6918232 ((_ is Concat!25754) (regOne!34331 r2!6280))) b!6918984))

(assert (= (and b!6918232 ((_ is Star!16909) (regOne!34331 r2!6280))) b!6918985))

(assert (= (and b!6918232 ((_ is Union!16909) (regOne!34331 r2!6280))) b!6918986))

(declare-fun b!6918989 () Bool)

(declare-fun e!4164538 () Bool)

(declare-fun tp!1907084 () Bool)

(assert (=> b!6918989 (= e!4164538 tp!1907084)))

(declare-fun b!6918988 () Bool)

(declare-fun tp!1907085 () Bool)

(declare-fun tp!1907083 () Bool)

(assert (=> b!6918988 (= e!4164538 (and tp!1907085 tp!1907083))))

(declare-fun b!6918987 () Bool)

(assert (=> b!6918987 (= e!4164538 tp_is_empty!43043)))

(assert (=> b!6918232 (= tp!1906964 e!4164538)))

(declare-fun b!6918990 () Bool)

(declare-fun tp!1907086 () Bool)

(declare-fun tp!1907087 () Bool)

(assert (=> b!6918990 (= e!4164538 (and tp!1907086 tp!1907087))))

(assert (= (and b!6918232 ((_ is ElementMatch!16909) (regTwo!34331 r2!6280))) b!6918987))

(assert (= (and b!6918232 ((_ is Concat!25754) (regTwo!34331 r2!6280))) b!6918988))

(assert (= (and b!6918232 ((_ is Star!16909) (regTwo!34331 r2!6280))) b!6918989))

(assert (= (and b!6918232 ((_ is Union!16909) (regTwo!34331 r2!6280))) b!6918990))

(declare-fun b!6918993 () Bool)

(declare-fun e!4164539 () Bool)

(declare-fun tp!1907089 () Bool)

(assert (=> b!6918993 (= e!4164539 tp!1907089)))

(declare-fun b!6918992 () Bool)

(declare-fun tp!1907090 () Bool)

(declare-fun tp!1907088 () Bool)

(assert (=> b!6918992 (= e!4164539 (and tp!1907090 tp!1907088))))

(declare-fun b!6918991 () Bool)

(assert (=> b!6918991 (= e!4164539 tp_is_empty!43043)))

(assert (=> b!6918243 (= tp!1906973 e!4164539)))

(declare-fun b!6918994 () Bool)

(declare-fun tp!1907091 () Bool)

(declare-fun tp!1907092 () Bool)

(assert (=> b!6918994 (= e!4164539 (and tp!1907091 tp!1907092))))

(assert (= (and b!6918243 ((_ is ElementMatch!16909) (reg!17238 r1!6342))) b!6918991))

(assert (= (and b!6918243 ((_ is Concat!25754) (reg!17238 r1!6342))) b!6918992))

(assert (= (and b!6918243 ((_ is Star!16909) (reg!17238 r1!6342))) b!6918993))

(assert (= (and b!6918243 ((_ is Union!16909) (reg!17238 r1!6342))) b!6918994))

(declare-fun b!6918997 () Bool)

(declare-fun e!4164540 () Bool)

(declare-fun tp!1907094 () Bool)

(assert (=> b!6918997 (= e!4164540 tp!1907094)))

(declare-fun b!6918996 () Bool)

(declare-fun tp!1907095 () Bool)

(declare-fun tp!1907093 () Bool)

(assert (=> b!6918996 (= e!4164540 (and tp!1907095 tp!1907093))))

(declare-fun b!6918995 () Bool)

(assert (=> b!6918995 (= e!4164540 tp_is_empty!43043)))

(assert (=> b!6918242 (= tp!1906970 e!4164540)))

(declare-fun b!6918998 () Bool)

(declare-fun tp!1907096 () Bool)

(declare-fun tp!1907097 () Bool)

(assert (=> b!6918998 (= e!4164540 (and tp!1907096 tp!1907097))))

(assert (= (and b!6918242 ((_ is ElementMatch!16909) (regOne!34331 r3!135))) b!6918995))

(assert (= (and b!6918242 ((_ is Concat!25754) (regOne!34331 r3!135))) b!6918996))

(assert (= (and b!6918242 ((_ is Star!16909) (regOne!34331 r3!135))) b!6918997))

(assert (= (and b!6918242 ((_ is Union!16909) (regOne!34331 r3!135))) b!6918998))

(declare-fun b!6919001 () Bool)

(declare-fun e!4164541 () Bool)

(declare-fun tp!1907099 () Bool)

(assert (=> b!6919001 (= e!4164541 tp!1907099)))

(declare-fun b!6919000 () Bool)

(declare-fun tp!1907100 () Bool)

(declare-fun tp!1907098 () Bool)

(assert (=> b!6919000 (= e!4164541 (and tp!1907100 tp!1907098))))

(declare-fun b!6918999 () Bool)

(assert (=> b!6918999 (= e!4164541 tp_is_empty!43043)))

(assert (=> b!6918242 (= tp!1906979 e!4164541)))

(declare-fun b!6919002 () Bool)

(declare-fun tp!1907101 () Bool)

(declare-fun tp!1907102 () Bool)

(assert (=> b!6919002 (= e!4164541 (and tp!1907101 tp!1907102))))

(assert (= (and b!6918242 ((_ is ElementMatch!16909) (regTwo!34331 r3!135))) b!6918999))

(assert (= (and b!6918242 ((_ is Concat!25754) (regTwo!34331 r3!135))) b!6919000))

(assert (= (and b!6918242 ((_ is Star!16909) (regTwo!34331 r3!135))) b!6919001))

(assert (= (and b!6918242 ((_ is Union!16909) (regTwo!34331 r3!135))) b!6919002))

(declare-fun b!6919005 () Bool)

(declare-fun e!4164542 () Bool)

(declare-fun tp!1907104 () Bool)

(assert (=> b!6919005 (= e!4164542 tp!1907104)))

(declare-fun b!6919004 () Bool)

(declare-fun tp!1907105 () Bool)

(declare-fun tp!1907103 () Bool)

(assert (=> b!6919004 (= e!4164542 (and tp!1907105 tp!1907103))))

(declare-fun b!6919003 () Bool)

(assert (=> b!6919003 (= e!4164542 tp_is_empty!43043)))

(assert (=> b!6918238 (= tp!1906967 e!4164542)))

(declare-fun b!6919006 () Bool)

(declare-fun tp!1907106 () Bool)

(declare-fun tp!1907107 () Bool)

(assert (=> b!6919006 (= e!4164542 (and tp!1907106 tp!1907107))))

(assert (= (and b!6918238 ((_ is ElementMatch!16909) (regOne!34330 r1!6342))) b!6919003))

(assert (= (and b!6918238 ((_ is Concat!25754) (regOne!34330 r1!6342))) b!6919004))

(assert (= (and b!6918238 ((_ is Star!16909) (regOne!34330 r1!6342))) b!6919005))

(assert (= (and b!6918238 ((_ is Union!16909) (regOne!34330 r1!6342))) b!6919006))

(declare-fun b!6919009 () Bool)

(declare-fun e!4164543 () Bool)

(declare-fun tp!1907109 () Bool)

(assert (=> b!6919009 (= e!4164543 tp!1907109)))

(declare-fun b!6919008 () Bool)

(declare-fun tp!1907110 () Bool)

(declare-fun tp!1907108 () Bool)

(assert (=> b!6919008 (= e!4164543 (and tp!1907110 tp!1907108))))

(declare-fun b!6919007 () Bool)

(assert (=> b!6919007 (= e!4164543 tp_is_empty!43043)))

(assert (=> b!6918238 (= tp!1906968 e!4164543)))

(declare-fun b!6919010 () Bool)

(declare-fun tp!1907111 () Bool)

(declare-fun tp!1907112 () Bool)

(assert (=> b!6919010 (= e!4164543 (and tp!1907111 tp!1907112))))

(assert (= (and b!6918238 ((_ is ElementMatch!16909) (regTwo!34330 r1!6342))) b!6919007))

(assert (= (and b!6918238 ((_ is Concat!25754) (regTwo!34330 r1!6342))) b!6919008))

(assert (= (and b!6918238 ((_ is Star!16909) (regTwo!34330 r1!6342))) b!6919009))

(assert (= (and b!6918238 ((_ is Union!16909) (regTwo!34330 r1!6342))) b!6919010))

(declare-fun b!6919013 () Bool)

(declare-fun e!4164544 () Bool)

(declare-fun tp!1907114 () Bool)

(assert (=> b!6919013 (= e!4164544 tp!1907114)))

(declare-fun b!6919012 () Bool)

(declare-fun tp!1907115 () Bool)

(declare-fun tp!1907113 () Bool)

(assert (=> b!6919012 (= e!4164544 (and tp!1907115 tp!1907113))))

(declare-fun b!6919011 () Bool)

(assert (=> b!6919011 (= e!4164544 tp_is_empty!43043)))

(assert (=> b!6918249 (= tp!1906971 e!4164544)))

(declare-fun b!6919014 () Bool)

(declare-fun tp!1907116 () Bool)

(declare-fun tp!1907117 () Bool)

(assert (=> b!6919014 (= e!4164544 (and tp!1907116 tp!1907117))))

(assert (= (and b!6918249 ((_ is ElementMatch!16909) (regOne!34331 r1!6342))) b!6919011))

(assert (= (and b!6918249 ((_ is Concat!25754) (regOne!34331 r1!6342))) b!6919012))

(assert (= (and b!6918249 ((_ is Star!16909) (regOne!34331 r1!6342))) b!6919013))

(assert (= (and b!6918249 ((_ is Union!16909) (regOne!34331 r1!6342))) b!6919014))

(declare-fun b!6919017 () Bool)

(declare-fun e!4164545 () Bool)

(declare-fun tp!1907119 () Bool)

(assert (=> b!6919017 (= e!4164545 tp!1907119)))

(declare-fun b!6919016 () Bool)

(declare-fun tp!1907120 () Bool)

(declare-fun tp!1907118 () Bool)

(assert (=> b!6919016 (= e!4164545 (and tp!1907120 tp!1907118))))

(declare-fun b!6919015 () Bool)

(assert (=> b!6919015 (= e!4164545 tp_is_empty!43043)))

(assert (=> b!6918249 (= tp!1906977 e!4164545)))

(declare-fun b!6919018 () Bool)

(declare-fun tp!1907121 () Bool)

(declare-fun tp!1907122 () Bool)

(assert (=> b!6919018 (= e!4164545 (and tp!1907121 tp!1907122))))

(assert (= (and b!6918249 ((_ is ElementMatch!16909) (regTwo!34331 r1!6342))) b!6919015))

(assert (= (and b!6918249 ((_ is Concat!25754) (regTwo!34331 r1!6342))) b!6919016))

(assert (= (and b!6918249 ((_ is Star!16909) (regTwo!34331 r1!6342))) b!6919017))

(assert (= (and b!6918249 ((_ is Union!16909) (regTwo!34331 r1!6342))) b!6919018))

(declare-fun b!6919021 () Bool)

(declare-fun e!4164546 () Bool)

(declare-fun tp!1907124 () Bool)

(assert (=> b!6919021 (= e!4164546 tp!1907124)))

(declare-fun b!6919020 () Bool)

(declare-fun tp!1907125 () Bool)

(declare-fun tp!1907123 () Bool)

(assert (=> b!6919020 (= e!4164546 (and tp!1907125 tp!1907123))))

(declare-fun b!6919019 () Bool)

(assert (=> b!6919019 (= e!4164546 tp_is_empty!43043)))

(assert (=> b!6918240 (= tp!1906976 e!4164546)))

(declare-fun b!6919022 () Bool)

(declare-fun tp!1907126 () Bool)

(declare-fun tp!1907127 () Bool)

(assert (=> b!6919022 (= e!4164546 (and tp!1907126 tp!1907127))))

(assert (= (and b!6918240 ((_ is ElementMatch!16909) (reg!17238 r2!6280))) b!6919019))

(assert (= (and b!6918240 ((_ is Concat!25754) (reg!17238 r2!6280))) b!6919020))

(assert (= (and b!6918240 ((_ is Star!16909) (reg!17238 r2!6280))) b!6919021))

(assert (= (and b!6918240 ((_ is Union!16909) (reg!17238 r2!6280))) b!6919022))

(declare-fun b!6919025 () Bool)

(declare-fun e!4164547 () Bool)

(declare-fun tp!1907129 () Bool)

(assert (=> b!6919025 (= e!4164547 tp!1907129)))

(declare-fun b!6919024 () Bool)

(declare-fun tp!1907130 () Bool)

(declare-fun tp!1907128 () Bool)

(assert (=> b!6919024 (= e!4164547 (and tp!1907130 tp!1907128))))

(declare-fun b!6919023 () Bool)

(assert (=> b!6919023 (= e!4164547 tp_is_empty!43043)))

(assert (=> b!6918234 (= tp!1906969 e!4164547)))

(declare-fun b!6919026 () Bool)

(declare-fun tp!1907131 () Bool)

(declare-fun tp!1907132 () Bool)

(assert (=> b!6919026 (= e!4164547 (and tp!1907131 tp!1907132))))

(assert (= (and b!6918234 ((_ is ElementMatch!16909) (regOne!34330 r2!6280))) b!6919023))

(assert (= (and b!6918234 ((_ is Concat!25754) (regOne!34330 r2!6280))) b!6919024))

(assert (= (and b!6918234 ((_ is Star!16909) (regOne!34330 r2!6280))) b!6919025))

(assert (= (and b!6918234 ((_ is Union!16909) (regOne!34330 r2!6280))) b!6919026))

(declare-fun b!6919029 () Bool)

(declare-fun e!4164548 () Bool)

(declare-fun tp!1907134 () Bool)

(assert (=> b!6919029 (= e!4164548 tp!1907134)))

(declare-fun b!6919028 () Bool)

(declare-fun tp!1907135 () Bool)

(declare-fun tp!1907133 () Bool)

(assert (=> b!6919028 (= e!4164548 (and tp!1907135 tp!1907133))))

(declare-fun b!6919027 () Bool)

(assert (=> b!6919027 (= e!4164548 tp_is_empty!43043)))

(assert (=> b!6918234 (= tp!1906972 e!4164548)))

(declare-fun b!6919030 () Bool)

(declare-fun tp!1907136 () Bool)

(declare-fun tp!1907137 () Bool)

(assert (=> b!6919030 (= e!4164548 (and tp!1907136 tp!1907137))))

(assert (= (and b!6918234 ((_ is ElementMatch!16909) (regTwo!34330 r2!6280))) b!6919027))

(assert (= (and b!6918234 ((_ is Concat!25754) (regTwo!34330 r2!6280))) b!6919028))

(assert (= (and b!6918234 ((_ is Star!16909) (regTwo!34330 r2!6280))) b!6919029))

(assert (= (and b!6918234 ((_ is Union!16909) (regTwo!34330 r2!6280))) b!6919030))

(declare-fun b!6919033 () Bool)

(declare-fun e!4164549 () Bool)

(declare-fun tp!1907139 () Bool)

(assert (=> b!6919033 (= e!4164549 tp!1907139)))

(declare-fun b!6919032 () Bool)

(declare-fun tp!1907140 () Bool)

(declare-fun tp!1907138 () Bool)

(assert (=> b!6919032 (= e!4164549 (and tp!1907140 tp!1907138))))

(declare-fun b!6919031 () Bool)

(assert (=> b!6919031 (= e!4164549 tp_is_empty!43043)))

(assert (=> b!6918229 (= tp!1906978 e!4164549)))

(declare-fun b!6919034 () Bool)

(declare-fun tp!1907141 () Bool)

(declare-fun tp!1907142 () Bool)

(assert (=> b!6919034 (= e!4164549 (and tp!1907141 tp!1907142))))

(assert (= (and b!6918229 ((_ is ElementMatch!16909) (regOne!34330 r3!135))) b!6919031))

(assert (= (and b!6918229 ((_ is Concat!25754) (regOne!34330 r3!135))) b!6919032))

(assert (= (and b!6918229 ((_ is Star!16909) (regOne!34330 r3!135))) b!6919033))

(assert (= (and b!6918229 ((_ is Union!16909) (regOne!34330 r3!135))) b!6919034))

(declare-fun b!6919037 () Bool)

(declare-fun e!4164550 () Bool)

(declare-fun tp!1907144 () Bool)

(assert (=> b!6919037 (= e!4164550 tp!1907144)))

(declare-fun b!6919036 () Bool)

(declare-fun tp!1907145 () Bool)

(declare-fun tp!1907143 () Bool)

(assert (=> b!6919036 (= e!4164550 (and tp!1907145 tp!1907143))))

(declare-fun b!6919035 () Bool)

(assert (=> b!6919035 (= e!4164550 tp_is_empty!43043)))

(assert (=> b!6918229 (= tp!1906975 e!4164550)))

(declare-fun b!6919038 () Bool)

(declare-fun tp!1907146 () Bool)

(declare-fun tp!1907147 () Bool)

(assert (=> b!6919038 (= e!4164550 (and tp!1907146 tp!1907147))))

(assert (= (and b!6918229 ((_ is ElementMatch!16909) (regTwo!34330 r3!135))) b!6919035))

(assert (= (and b!6918229 ((_ is Concat!25754) (regTwo!34330 r3!135))) b!6919036))

(assert (= (and b!6918229 ((_ is Star!16909) (regTwo!34330 r3!135))) b!6919037))

(assert (= (and b!6918229 ((_ is Union!16909) (regTwo!34330 r3!135))) b!6919038))

(declare-fun b!6919043 () Bool)

(declare-fun e!4164553 () Bool)

(declare-fun tp!1907150 () Bool)

(assert (=> b!6919043 (= e!4164553 (and tp_is_empty!43043 tp!1907150))))

(assert (=> b!6918236 (= tp!1906965 e!4164553)))

(assert (= (and b!6918236 ((_ is Cons!66538) (t!380405 s!14361))) b!6919043))

(declare-fun b!6919046 () Bool)

(declare-fun e!4164554 () Bool)

(declare-fun tp!1907152 () Bool)

(assert (=> b!6919046 (= e!4164554 tp!1907152)))

(declare-fun b!6919045 () Bool)

(declare-fun tp!1907153 () Bool)

(declare-fun tp!1907151 () Bool)

(assert (=> b!6919045 (= e!4164554 (and tp!1907153 tp!1907151))))

(declare-fun b!6919044 () Bool)

(assert (=> b!6919044 (= e!4164554 tp_is_empty!43043)))

(assert (=> b!6918246 (= tp!1906966 e!4164554)))

(declare-fun b!6919047 () Bool)

(declare-fun tp!1907154 () Bool)

(declare-fun tp!1907155 () Bool)

(assert (=> b!6919047 (= e!4164554 (and tp!1907154 tp!1907155))))

(assert (= (and b!6918246 ((_ is ElementMatch!16909) (reg!17238 r3!135))) b!6919044))

(assert (= (and b!6918246 ((_ is Concat!25754) (reg!17238 r3!135))) b!6919045))

(assert (= (and b!6918246 ((_ is Star!16909) (reg!17238 r3!135))) b!6919046))

(assert (= (and b!6918246 ((_ is Union!16909) (reg!17238 r3!135))) b!6919047))

(check-sat (not b!6918942) (not b!6918960) (not d!2164242) (not d!2164208) (not d!2164156) (not b!6918998) (not b!6919002) (not b!6918993) (not b!6918772) (not bm!628989) (not d!2164236) (not b!6919008) (not b!6918768) (not b!6919029) (not b!6919024) (not b!6918533) (not b!6918972) (not b!6918910) (not b!6919010) (not d!2164240) (not b!6918946) (not b!6919034) (not d!2164224) (not b!6918906) (not bm!628995) (not b!6918905) (not b!6918898) (not b!6918790) (not b!6918895) (not bm!628986) (not b!6918937) (not b!6918771) (not b!6918819) (not b!6918988) (not b!6918900) (not b!6918815) (not bm!628998) (not b!6919022) (not b!6919000) (not b!6919016) (not bm!628999) (not b!6918943) (not d!2164252) (not b!6918990) (not b!6918813) (not b!6918951) (not d!2164256) (not b!6918935) tp_is_empty!43043 (not b!6918748) (not b!6919005) (not b!6918774) (not b!6918857) (not b!6919045) (not b!6918856) (not bm!628994) (not b!6919030) (not b!6918964) (not b!6919009) (not bm!628993) (not b!6918921) (not b!6918786) (not d!2164214) (not bm!628983) (not bm!628985) (not b!6918953) (not b!6919028) (not b!6918986) (not b!6919026) (not b!6918817) (not b!6918887) (not d!2164212) (not b!6919014) (not b!6918826) (not bm!628991) (not bm!628954) (not b!6919021) (not b!6918891) (not bm!628982) (not d!2164152) (not b!6919025) (not d!2164264) (not d!2164228) (not bm!628969) (not b!6918912) (not b!6918802) (not b!6919018) (not b!6919033) (not b!6918535) (not b!6918918) (not b!6919017) (not b!6919032) (not b!6918996) (not b!6918925) (not d!2164238) (not b!6919012) (not b!6919001) (not b!6918992) (not b!6919037) (not b!6918850) (not d!2164260) (not bm!628971) (not bm!628970) (not d!2164250) (not bm!628974) (not bm!628988) (not b!6918889) (not b!6918794) (not b!6918901) (not b!6918881) (not b!6918949) (not b!6918823) (not b!6918984) (not b!6918956) (not b!6919036) (not b!6918997) (not bm!628997) (not b!6919038) (not b!6918957) (not b!6918994) (not b!6918989) (not b!6918773) (not b!6919047) (not b!6919043) (not b!6918822) (not d!2164258) (not b!6918917) (not b!6918863) (not b!6918904) (not b!6919004) (not d!2164174) (not d!2164206) (not b!6918541) (not b!6918933) (not bm!628992) (not bm!628996) (not b!6918767) (not b!6919006) (not b!6918939) (not d!2164132) (not b!6919046) (not d!2164204) (not b!6918789) (not bm!628968) (not bm!628973) (not b!6918740) (not b!6918540) (not d!2164216) (not b!6918872) (not b!6918537) (not b!6918894) (not d!2164244) (not b!6918985) (not d!2164248) (not b!6918907) (not b!6919020) (not b!6919013) (not b!6918805) (not b!6918544) (not bm!628972) (not b!6918785) (not d!2164130) (not d!2164218) (not bm!629000) (not b!6918914))
(check-sat)
