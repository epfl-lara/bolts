; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!543222 () Bool)

(assert start!543222)

(declare-fun b!5133981 () Bool)

(declare-fun e!3202183 () Bool)

(declare-fun tp!1432081 () Bool)

(assert (=> b!5133981 (= e!3202183 tp!1432081)))

(declare-fun res!2186796 () Bool)

(declare-fun e!3202184 () Bool)

(assert (=> start!543222 (=> (not res!2186796) (not e!3202184))))

(declare-datatypes ((C!29048 0))(
  ( (C!29049 (val!24176 Int)) )
))
(declare-datatypes ((Regex!14391 0))(
  ( (ElementMatch!14391 (c!883620 C!29048)) (Concat!23236 (regOne!29294 Regex!14391) (regTwo!29294 Regex!14391)) (EmptyExpr!14391) (Star!14391 (reg!14720 Regex!14391)) (EmptyLang!14391) (Union!14391 (regOne!29295 Regex!14391) (regTwo!29295 Regex!14391)) )
))
(declare-datatypes ((List!59714 0))(
  ( (Nil!59590) (Cons!59590 (h!66038 Regex!14391) (t!372741 List!59714)) )
))
(declare-datatypes ((Context!7550 0))(
  ( (Context!7551 (exprs!4275 List!59714)) )
))
(declare-fun ctx!74 () Context!7550)

(declare-fun lostCause!1342 (Context!7550) Bool)

(assert (=> start!543222 (= res!2186796 (lostCause!1342 ctx!74))))

(assert (=> start!543222 e!3202184))

(declare-fun inv!79158 (Context!7550) Bool)

(assert (=> start!543222 (and (inv!79158 ctx!74) e!3202183)))

(declare-fun b!5133978 () Bool)

(declare-fun res!2186797 () Bool)

(assert (=> b!5133978 (=> (not res!2186797) (not e!3202184))))

(get-info :version)

(assert (=> b!5133978 (= res!2186797 ((_ is Cons!59590) (exprs!4275 ctx!74)))))

(declare-fun b!5133979 () Bool)

(declare-fun res!2186798 () Bool)

(assert (=> b!5133979 (=> (not res!2186798) (not e!3202184))))

(declare-fun nullable!4764 (Regex!14391) Bool)

(assert (=> b!5133979 (= res!2186798 (nullable!4764 (h!66038 (exprs!4275 ctx!74))))))

(declare-fun b!5133980 () Bool)

(assert (=> b!5133980 (= e!3202184 (not (inv!79158 (Context!7551 (t!372741 (exprs!4275 ctx!74))))))))

(declare-fun lostCause!1343 (Regex!14391) Bool)

(assert (=> b!5133980 (not (lostCause!1343 (h!66038 (exprs!4275 ctx!74))))))

(declare-datatypes ((Unit!150925 0))(
  ( (Unit!150926) )
))
(declare-fun lt!2118737 () Unit!150925)

(declare-fun lemmaNullableThenNotLostCause!42 (Regex!14391) Unit!150925)

(assert (=> b!5133980 (= lt!2118737 (lemmaNullableThenNotLostCause!42 (h!66038 (exprs!4275 ctx!74))))))

(assert (= (and start!543222 res!2186796) b!5133978))

(assert (= (and b!5133978 res!2186797) b!5133979))

(assert (= (and b!5133979 res!2186798) b!5133980))

(assert (= start!543222 b!5133981))

(declare-fun m!6199994 () Bool)

(assert (=> start!543222 m!6199994))

(declare-fun m!6199996 () Bool)

(assert (=> start!543222 m!6199996))

(declare-fun m!6199998 () Bool)

(assert (=> b!5133979 m!6199998))

(declare-fun m!6200000 () Bool)

(assert (=> b!5133980 m!6200000))

(declare-fun m!6200002 () Bool)

(assert (=> b!5133980 m!6200002))

(declare-fun m!6200004 () Bool)

(assert (=> b!5133980 m!6200004))

(check-sat (not b!5133980) (not start!543222) (not b!5133979) (not b!5133981))
(check-sat)
(get-model)

(declare-fun d!1661223 () Bool)

(declare-fun lambda!255517 () Int)

(declare-fun forall!13840 (List!59714 Int) Bool)

(assert (=> d!1661223 (= (inv!79158 (Context!7551 (t!372741 (exprs!4275 ctx!74)))) (forall!13840 (exprs!4275 (Context!7551 (t!372741 (exprs!4275 ctx!74)))) lambda!255517))))

(declare-fun bs!1199427 () Bool)

(assert (= bs!1199427 d!1661223))

(declare-fun m!6200020 () Bool)

(assert (=> bs!1199427 m!6200020))

(assert (=> b!5133980 d!1661223))

(declare-fun d!1661237 () Bool)

(declare-fun lostCauseFct!319 (Regex!14391) Bool)

(assert (=> d!1661237 (= (lostCause!1343 (h!66038 (exprs!4275 ctx!74))) (lostCauseFct!319 (h!66038 (exprs!4275 ctx!74))))))

(declare-fun bs!1199428 () Bool)

(assert (= bs!1199428 d!1661237))

(declare-fun m!6200022 () Bool)

(assert (=> bs!1199428 m!6200022))

(assert (=> b!5133980 d!1661237))

(declare-fun d!1661239 () Bool)

(assert (=> d!1661239 (not (lostCause!1343 (h!66038 (exprs!4275 ctx!74))))))

(declare-fun lt!2118743 () Unit!150925)

(declare-fun choose!37961 (Regex!14391) Unit!150925)

(assert (=> d!1661239 (= lt!2118743 (choose!37961 (h!66038 (exprs!4275 ctx!74))))))

(declare-fun validRegex!6251 (Regex!14391) Bool)

(assert (=> d!1661239 (validRegex!6251 (h!66038 (exprs!4275 ctx!74)))))

(assert (=> d!1661239 (= (lemmaNullableThenNotLostCause!42 (h!66038 (exprs!4275 ctx!74))) lt!2118743)))

(declare-fun bs!1199429 () Bool)

(assert (= bs!1199429 d!1661239))

(assert (=> bs!1199429 m!6200002))

(declare-fun m!6200030 () Bool)

(assert (=> bs!1199429 m!6200030))

(declare-fun m!6200032 () Bool)

(assert (=> bs!1199429 m!6200032))

(assert (=> b!5133980 d!1661239))

(declare-fun bs!1199434 () Bool)

(declare-fun d!1661243 () Bool)

(assert (= bs!1199434 (and d!1661243 d!1661223)))

(declare-fun lambda!255523 () Int)

(assert (=> bs!1199434 (not (= lambda!255523 lambda!255517))))

(declare-fun exists!1716 (List!59714 Int) Bool)

(assert (=> d!1661243 (= (lostCause!1342 ctx!74) (exists!1716 (exprs!4275 ctx!74) lambda!255523))))

(declare-fun bs!1199435 () Bool)

(assert (= bs!1199435 d!1661243))

(declare-fun m!6200040 () Bool)

(assert (=> bs!1199435 m!6200040))

(assert (=> start!543222 d!1661243))

(declare-fun bs!1199436 () Bool)

(declare-fun d!1661249 () Bool)

(assert (= bs!1199436 (and d!1661249 d!1661223)))

(declare-fun lambda!255524 () Int)

(assert (=> bs!1199436 (= lambda!255524 lambda!255517)))

(declare-fun bs!1199437 () Bool)

(assert (= bs!1199437 (and d!1661249 d!1661243)))

(assert (=> bs!1199437 (not (= lambda!255524 lambda!255523))))

(assert (=> d!1661249 (= (inv!79158 ctx!74) (forall!13840 (exprs!4275 ctx!74) lambda!255524))))

(declare-fun bs!1199438 () Bool)

(assert (= bs!1199438 d!1661249))

(declare-fun m!6200042 () Bool)

(assert (=> bs!1199438 m!6200042))

(assert (=> start!543222 d!1661249))

(declare-fun d!1661251 () Bool)

(declare-fun nullableFct!1288 (Regex!14391) Bool)

(assert (=> d!1661251 (= (nullable!4764 (h!66038 (exprs!4275 ctx!74))) (nullableFct!1288 (h!66038 (exprs!4275 ctx!74))))))

(declare-fun bs!1199439 () Bool)

(assert (= bs!1199439 d!1661251))

(declare-fun m!6200044 () Bool)

(assert (=> bs!1199439 m!6200044))

(assert (=> b!5133979 d!1661251))

(declare-fun b!5134026 () Bool)

(declare-fun e!3202217 () Bool)

(declare-fun tp!1432092 () Bool)

(declare-fun tp!1432093 () Bool)

(assert (=> b!5134026 (= e!3202217 (and tp!1432092 tp!1432093))))

(assert (=> b!5133981 (= tp!1432081 e!3202217)))

(assert (= (and b!5133981 ((_ is Cons!59590) (exprs!4275 ctx!74))) b!5134026))

(check-sat (not d!1661239) (not d!1661251) (not d!1661243) (not d!1661237) (not b!5134026) (not d!1661249) (not d!1661223))
(check-sat)
(get-model)

(declare-fun bs!1199442 () Bool)

(declare-fun d!1661261 () Bool)

(assert (= bs!1199442 (and d!1661261 d!1661223)))

(declare-fun lambda!255527 () Int)

(assert (=> bs!1199442 (not (= lambda!255527 lambda!255517))))

(declare-fun bs!1199443 () Bool)

(assert (= bs!1199443 (and d!1661261 d!1661243)))

(assert (=> bs!1199443 (not (= lambda!255527 lambda!255523))))

(declare-fun bs!1199444 () Bool)

(assert (= bs!1199444 (and d!1661261 d!1661249)))

(assert (=> bs!1199444 (not (= lambda!255527 lambda!255524))))

(assert (=> d!1661261 true))

(declare-fun order!26905 () Int)

(declare-fun dynLambda!23726 (Int Int) Int)

(assert (=> d!1661261 (< (dynLambda!23726 order!26905 lambda!255523) (dynLambda!23726 order!26905 lambda!255527))))

(assert (=> d!1661261 (= (exists!1716 (exprs!4275 ctx!74) lambda!255523) (not (forall!13840 (exprs!4275 ctx!74) lambda!255527)))))

(declare-fun bs!1199445 () Bool)

(assert (= bs!1199445 d!1661261))

(declare-fun m!6200064 () Bool)

(assert (=> bs!1199445 m!6200064))

(assert (=> d!1661243 d!1661261))

(declare-fun b!5134102 () Bool)

(declare-fun e!3202276 () Bool)

(declare-fun e!3202277 () Bool)

(assert (=> b!5134102 (= e!3202276 e!3202277)))

(declare-fun c!883635 () Bool)

(assert (=> b!5134102 (= c!883635 ((_ is Union!14391) (h!66038 (exprs!4275 ctx!74))))))

(declare-fun b!5134103 () Bool)

(declare-fun e!3202275 () Bool)

(assert (=> b!5134103 (= e!3202277 e!3202275)))

(declare-fun res!2186866 () Bool)

(declare-fun call!357469 () Bool)

(assert (=> b!5134103 (= res!2186866 call!357469)))

(assert (=> b!5134103 (=> res!2186866 e!3202275)))

(declare-fun bm!357464 () Bool)

(declare-fun call!357470 () Bool)

(assert (=> bm!357464 (= call!357470 (lostCause!1343 (ite c!883635 (regOne!29295 (h!66038 (exprs!4275 ctx!74))) (regTwo!29294 (h!66038 (exprs!4275 ctx!74))))))))

(declare-fun b!5134104 () Bool)

(declare-fun e!3202274 () Bool)

(assert (=> b!5134104 (= e!3202274 call!357469)))

(declare-fun b!5134105 () Bool)

(assert (=> b!5134105 (= e!3202275 call!357470)))

(declare-fun b!5134106 () Bool)

(declare-fun e!3202273 () Bool)

(declare-fun e!3202272 () Bool)

(assert (=> b!5134106 (= e!3202273 e!3202272)))

(declare-fun res!2186862 () Bool)

(assert (=> b!5134106 (=> res!2186862 e!3202272)))

(assert (=> b!5134106 (= res!2186862 ((_ is EmptyLang!14391) (h!66038 (exprs!4275 ctx!74))))))

(declare-fun b!5134107 () Bool)

(assert (=> b!5134107 (= e!3202272 e!3202276)))

(declare-fun res!2186864 () Bool)

(assert (=> b!5134107 (=> (not res!2186864) (not e!3202276))))

(assert (=> b!5134107 (= res!2186864 (and (not ((_ is ElementMatch!14391) (h!66038 (exprs!4275 ctx!74)))) (not ((_ is Star!14391) (h!66038 (exprs!4275 ctx!74))))))))

(declare-fun b!5134108 () Bool)

(assert (=> b!5134108 (= e!3202277 e!3202274)))

(declare-fun res!2186863 () Bool)

(assert (=> b!5134108 (= res!2186863 call!357470)))

(assert (=> b!5134108 (=> (not res!2186863) (not e!3202274))))

(declare-fun d!1661263 () Bool)

(declare-fun lt!2118749 () Bool)

(declare-datatypes ((List!59716 0))(
  ( (Nil!59592) (Cons!59592 (h!66040 C!29048) (t!372743 List!59716)) )
))
(declare-datatypes ((Option!14753 0))(
  ( (None!14752) (Some!14752 (v!50781 List!59716)) )
))
(declare-fun isEmpty!32014 (Option!14753) Bool)

(declare-fun getLanguageWitness!890 (Regex!14391) Option!14753)

(assert (=> d!1661263 (= lt!2118749 (isEmpty!32014 (getLanguageWitness!890 (h!66038 (exprs!4275 ctx!74)))))))

(assert (=> d!1661263 (= lt!2118749 e!3202273)))

(declare-fun res!2186865 () Bool)

(assert (=> d!1661263 (=> (not res!2186865) (not e!3202273))))

(assert (=> d!1661263 (= res!2186865 (not ((_ is EmptyExpr!14391) (h!66038 (exprs!4275 ctx!74)))))))

(assert (=> d!1661263 (= (lostCauseFct!319 (h!66038 (exprs!4275 ctx!74))) lt!2118749)))

(declare-fun bm!357465 () Bool)

(assert (=> bm!357465 (= call!357469 (lostCause!1343 (ite c!883635 (regTwo!29295 (h!66038 (exprs!4275 ctx!74))) (regOne!29294 (h!66038 (exprs!4275 ctx!74))))))))

(assert (= (and d!1661263 res!2186865) b!5134106))

(assert (= (and b!5134106 (not res!2186862)) b!5134107))

(assert (= (and b!5134107 res!2186864) b!5134102))

(assert (= (and b!5134102 c!883635) b!5134108))

(assert (= (and b!5134102 (not c!883635)) b!5134103))

(assert (= (and b!5134108 res!2186863) b!5134104))

(assert (= (and b!5134103 (not res!2186866)) b!5134105))

(assert (= (or b!5134108 b!5134105) bm!357464))

(assert (= (or b!5134104 b!5134103) bm!357465))

(declare-fun m!6200066 () Bool)

(assert (=> bm!357464 m!6200066))

(declare-fun m!6200068 () Bool)

(assert (=> d!1661263 m!6200068))

(assert (=> d!1661263 m!6200068))

(declare-fun m!6200070 () Bool)

(assert (=> d!1661263 m!6200070))

(declare-fun m!6200072 () Bool)

(assert (=> bm!357465 m!6200072))

(assert (=> d!1661237 d!1661263))

(declare-fun d!1661265 () Bool)

(declare-fun res!2186871 () Bool)

(declare-fun e!3202282 () Bool)

(assert (=> d!1661265 (=> res!2186871 e!3202282)))

(assert (=> d!1661265 (= res!2186871 ((_ is Nil!59590) (exprs!4275 ctx!74)))))

(assert (=> d!1661265 (= (forall!13840 (exprs!4275 ctx!74) lambda!255524) e!3202282)))

(declare-fun b!5134113 () Bool)

(declare-fun e!3202283 () Bool)

(assert (=> b!5134113 (= e!3202282 e!3202283)))

(declare-fun res!2186872 () Bool)

(assert (=> b!5134113 (=> (not res!2186872) (not e!3202283))))

(declare-fun dynLambda!23727 (Int Regex!14391) Bool)

(assert (=> b!5134113 (= res!2186872 (dynLambda!23727 lambda!255524 (h!66038 (exprs!4275 ctx!74))))))

(declare-fun b!5134114 () Bool)

(assert (=> b!5134114 (= e!3202283 (forall!13840 (t!372741 (exprs!4275 ctx!74)) lambda!255524))))

(assert (= (and d!1661265 (not res!2186871)) b!5134113))

(assert (= (and b!5134113 res!2186872) b!5134114))

(declare-fun b_lambda!200005 () Bool)

(assert (=> (not b_lambda!200005) (not b!5134113)))

(declare-fun m!6200074 () Bool)

(assert (=> b!5134113 m!6200074))

(declare-fun m!6200076 () Bool)

(assert (=> b!5134114 m!6200076))

(assert (=> d!1661249 d!1661265))

(assert (=> d!1661239 d!1661237))

(declare-fun d!1661267 () Bool)

(assert (=> d!1661267 (not (lostCause!1343 (h!66038 (exprs!4275 ctx!74))))))

(assert (=> d!1661267 true))

(declare-fun _$98!231 () Unit!150925)

(assert (=> d!1661267 (= (choose!37961 (h!66038 (exprs!4275 ctx!74))) _$98!231)))

(declare-fun bs!1199446 () Bool)

(assert (= bs!1199446 d!1661267))

(assert (=> bs!1199446 m!6200002))

(assert (=> d!1661239 d!1661267))

(declare-fun bm!357472 () Bool)

(declare-fun call!357479 () Bool)

(declare-fun call!357477 () Bool)

(assert (=> bm!357472 (= call!357479 call!357477)))

(declare-fun c!883640 () Bool)

(declare-fun bm!357473 () Bool)

(declare-fun c!883641 () Bool)

(assert (=> bm!357473 (= call!357477 (validRegex!6251 (ite c!883641 (reg!14720 (h!66038 (exprs!4275 ctx!74))) (ite c!883640 (regOne!29295 (h!66038 (exprs!4275 ctx!74))) (regTwo!29294 (h!66038 (exprs!4275 ctx!74)))))))))

(declare-fun b!5134133 () Bool)

(declare-fun e!3202304 () Bool)

(assert (=> b!5134133 (= e!3202304 call!357477)))

(declare-fun d!1661269 () Bool)

(declare-fun res!2186886 () Bool)

(declare-fun e!3202299 () Bool)

(assert (=> d!1661269 (=> res!2186886 e!3202299)))

(assert (=> d!1661269 (= res!2186886 ((_ is ElementMatch!14391) (h!66038 (exprs!4275 ctx!74))))))

(assert (=> d!1661269 (= (validRegex!6251 (h!66038 (exprs!4275 ctx!74))) e!3202299)))

(declare-fun b!5134134 () Bool)

(declare-fun res!2186887 () Bool)

(declare-fun e!3202298 () Bool)

(assert (=> b!5134134 (=> (not res!2186887) (not e!3202298))))

(assert (=> b!5134134 (= res!2186887 call!357479)))

(declare-fun e!3202303 () Bool)

(assert (=> b!5134134 (= e!3202303 e!3202298)))

(declare-fun b!5134135 () Bool)

(declare-fun e!3202300 () Bool)

(declare-fun e!3202302 () Bool)

(assert (=> b!5134135 (= e!3202300 e!3202302)))

(declare-fun res!2186885 () Bool)

(assert (=> b!5134135 (=> (not res!2186885) (not e!3202302))))

(declare-fun call!357478 () Bool)

(assert (=> b!5134135 (= res!2186885 call!357478)))

(declare-fun b!5134136 () Bool)

(declare-fun e!3202301 () Bool)

(assert (=> b!5134136 (= e!3202301 e!3202304)))

(declare-fun res!2186884 () Bool)

(assert (=> b!5134136 (= res!2186884 (not (nullable!4764 (reg!14720 (h!66038 (exprs!4275 ctx!74))))))))

(assert (=> b!5134136 (=> (not res!2186884) (not e!3202304))))

(declare-fun b!5134137 () Bool)

(assert (=> b!5134137 (= e!3202299 e!3202301)))

(assert (=> b!5134137 (= c!883641 ((_ is Star!14391) (h!66038 (exprs!4275 ctx!74))))))

(declare-fun b!5134138 () Bool)

(assert (=> b!5134138 (= e!3202302 call!357479)))

(declare-fun b!5134139 () Bool)

(assert (=> b!5134139 (= e!3202298 call!357478)))

(declare-fun bm!357474 () Bool)

(assert (=> bm!357474 (= call!357478 (validRegex!6251 (ite c!883640 (regTwo!29295 (h!66038 (exprs!4275 ctx!74))) (regOne!29294 (h!66038 (exprs!4275 ctx!74))))))))

(declare-fun b!5134140 () Bool)

(declare-fun res!2186883 () Bool)

(assert (=> b!5134140 (=> res!2186883 e!3202300)))

(assert (=> b!5134140 (= res!2186883 (not ((_ is Concat!23236) (h!66038 (exprs!4275 ctx!74)))))))

(assert (=> b!5134140 (= e!3202303 e!3202300)))

(declare-fun b!5134141 () Bool)

(assert (=> b!5134141 (= e!3202301 e!3202303)))

(assert (=> b!5134141 (= c!883640 ((_ is Union!14391) (h!66038 (exprs!4275 ctx!74))))))

(assert (= (and d!1661269 (not res!2186886)) b!5134137))

(assert (= (and b!5134137 c!883641) b!5134136))

(assert (= (and b!5134137 (not c!883641)) b!5134141))

(assert (= (and b!5134136 res!2186884) b!5134133))

(assert (= (and b!5134141 c!883640) b!5134134))

(assert (= (and b!5134141 (not c!883640)) b!5134140))

(assert (= (and b!5134134 res!2186887) b!5134139))

(assert (= (and b!5134140 (not res!2186883)) b!5134135))

(assert (= (and b!5134135 res!2186885) b!5134138))

(assert (= (or b!5134134 b!5134138) bm!357472))

(assert (= (or b!5134139 b!5134135) bm!357474))

(assert (= (or b!5134133 bm!357472) bm!357473))

(declare-fun m!6200078 () Bool)

(assert (=> bm!357473 m!6200078))

(declare-fun m!6200080 () Bool)

(assert (=> b!5134136 m!6200080))

(declare-fun m!6200082 () Bool)

(assert (=> bm!357474 m!6200082))

(assert (=> d!1661239 d!1661269))

(declare-fun d!1661271 () Bool)

(declare-fun res!2186888 () Bool)

(declare-fun e!3202305 () Bool)

(assert (=> d!1661271 (=> res!2186888 e!3202305)))

(assert (=> d!1661271 (= res!2186888 ((_ is Nil!59590) (exprs!4275 (Context!7551 (t!372741 (exprs!4275 ctx!74))))))))

(assert (=> d!1661271 (= (forall!13840 (exprs!4275 (Context!7551 (t!372741 (exprs!4275 ctx!74)))) lambda!255517) e!3202305)))

(declare-fun b!5134142 () Bool)

(declare-fun e!3202306 () Bool)

(assert (=> b!5134142 (= e!3202305 e!3202306)))

(declare-fun res!2186889 () Bool)

(assert (=> b!5134142 (=> (not res!2186889) (not e!3202306))))

(assert (=> b!5134142 (= res!2186889 (dynLambda!23727 lambda!255517 (h!66038 (exprs!4275 (Context!7551 (t!372741 (exprs!4275 ctx!74)))))))))

(declare-fun b!5134143 () Bool)

(assert (=> b!5134143 (= e!3202306 (forall!13840 (t!372741 (exprs!4275 (Context!7551 (t!372741 (exprs!4275 ctx!74))))) lambda!255517))))

(assert (= (and d!1661271 (not res!2186888)) b!5134142))

(assert (= (and b!5134142 res!2186889) b!5134143))

(declare-fun b_lambda!200007 () Bool)

(assert (=> (not b_lambda!200007) (not b!5134142)))

(declare-fun m!6200084 () Bool)

(assert (=> b!5134142 m!6200084))

(declare-fun m!6200086 () Bool)

(assert (=> b!5134143 m!6200086))

(assert (=> d!1661223 d!1661271))

(declare-fun b!5134158 () Bool)

(declare-fun e!3202320 () Bool)

(declare-fun e!3202322 () Bool)

(assert (=> b!5134158 (= e!3202320 e!3202322)))

(declare-fun res!2186902 () Bool)

(assert (=> b!5134158 (=> (not res!2186902) (not e!3202322))))

(assert (=> b!5134158 (= res!2186902 (and (not ((_ is EmptyLang!14391) (h!66038 (exprs!4275 ctx!74)))) (not ((_ is ElementMatch!14391) (h!66038 (exprs!4275 ctx!74))))))))

(declare-fun d!1661273 () Bool)

(declare-fun res!2186900 () Bool)

(assert (=> d!1661273 (=> res!2186900 e!3202320)))

(assert (=> d!1661273 (= res!2186900 ((_ is EmptyExpr!14391) (h!66038 (exprs!4275 ctx!74))))))

(assert (=> d!1661273 (= (nullableFct!1288 (h!66038 (exprs!4275 ctx!74))) e!3202320)))

(declare-fun b!5134159 () Bool)

(declare-fun e!3202321 () Bool)

(declare-fun call!357485 () Bool)

(assert (=> b!5134159 (= e!3202321 call!357485)))

(declare-fun b!5134160 () Bool)

(declare-fun e!3202319 () Bool)

(assert (=> b!5134160 (= e!3202322 e!3202319)))

(declare-fun res!2186904 () Bool)

(assert (=> b!5134160 (=> res!2186904 e!3202319)))

(assert (=> b!5134160 (= res!2186904 ((_ is Star!14391) (h!66038 (exprs!4275 ctx!74))))))

(declare-fun b!5134161 () Bool)

(declare-fun e!3202323 () Bool)

(assert (=> b!5134161 (= e!3202323 e!3202321)))

(declare-fun res!2186903 () Bool)

(declare-fun call!357484 () Bool)

(assert (=> b!5134161 (= res!2186903 call!357484)))

(assert (=> b!5134161 (=> (not res!2186903) (not e!3202321))))

(declare-fun b!5134162 () Bool)

(declare-fun e!3202324 () Bool)

(assert (=> b!5134162 (= e!3202324 call!357485)))

(declare-fun bm!357479 () Bool)

(declare-fun c!883644 () Bool)

(assert (=> bm!357479 (= call!357485 (nullable!4764 (ite c!883644 (regTwo!29295 (h!66038 (exprs!4275 ctx!74))) (regTwo!29294 (h!66038 (exprs!4275 ctx!74))))))))

(declare-fun b!5134163 () Bool)

(assert (=> b!5134163 (= e!3202323 e!3202324)))

(declare-fun res!2186901 () Bool)

(assert (=> b!5134163 (= res!2186901 call!357484)))

(assert (=> b!5134163 (=> res!2186901 e!3202324)))

(declare-fun b!5134164 () Bool)

(assert (=> b!5134164 (= e!3202319 e!3202323)))

(assert (=> b!5134164 (= c!883644 ((_ is Union!14391) (h!66038 (exprs!4275 ctx!74))))))

(declare-fun bm!357480 () Bool)

(assert (=> bm!357480 (= call!357484 (nullable!4764 (ite c!883644 (regOne!29295 (h!66038 (exprs!4275 ctx!74))) (regOne!29294 (h!66038 (exprs!4275 ctx!74))))))))

(assert (= (and d!1661273 (not res!2186900)) b!5134158))

(assert (= (and b!5134158 res!2186902) b!5134160))

(assert (= (and b!5134160 (not res!2186904)) b!5134164))

(assert (= (and b!5134164 c!883644) b!5134163))

(assert (= (and b!5134164 (not c!883644)) b!5134161))

(assert (= (and b!5134163 (not res!2186901)) b!5134162))

(assert (= (and b!5134161 res!2186903) b!5134159))

(assert (= (or b!5134162 b!5134159) bm!357479))

(assert (= (or b!5134163 b!5134161) bm!357480))

(declare-fun m!6200088 () Bool)

(assert (=> bm!357479 m!6200088))

(declare-fun m!6200090 () Bool)

(assert (=> bm!357480 m!6200090))

(assert (=> d!1661251 d!1661273))

(declare-fun b!5134175 () Bool)

(declare-fun e!3202327 () Bool)

(declare-fun tp_is_empty!37939 () Bool)

(assert (=> b!5134175 (= e!3202327 tp_is_empty!37939)))

(declare-fun b!5134178 () Bool)

(declare-fun tp!1432125 () Bool)

(declare-fun tp!1432124 () Bool)

(assert (=> b!5134178 (= e!3202327 (and tp!1432125 tp!1432124))))

(declare-fun b!5134177 () Bool)

(declare-fun tp!1432122 () Bool)

(assert (=> b!5134177 (= e!3202327 tp!1432122)))

(assert (=> b!5134026 (= tp!1432092 e!3202327)))

(declare-fun b!5134176 () Bool)

(declare-fun tp!1432123 () Bool)

(declare-fun tp!1432121 () Bool)

(assert (=> b!5134176 (= e!3202327 (and tp!1432123 tp!1432121))))

(assert (= (and b!5134026 ((_ is ElementMatch!14391) (h!66038 (exprs!4275 ctx!74)))) b!5134175))

(assert (= (and b!5134026 ((_ is Concat!23236) (h!66038 (exprs!4275 ctx!74)))) b!5134176))

(assert (= (and b!5134026 ((_ is Star!14391) (h!66038 (exprs!4275 ctx!74)))) b!5134177))

(assert (= (and b!5134026 ((_ is Union!14391) (h!66038 (exprs!4275 ctx!74)))) b!5134178))

(declare-fun b!5134179 () Bool)

(declare-fun e!3202328 () Bool)

(declare-fun tp!1432126 () Bool)

(declare-fun tp!1432127 () Bool)

(assert (=> b!5134179 (= e!3202328 (and tp!1432126 tp!1432127))))

(assert (=> b!5134026 (= tp!1432093 e!3202328)))

(assert (= (and b!5134026 ((_ is Cons!59590) (t!372741 (exprs!4275 ctx!74)))) b!5134179))

(declare-fun b_lambda!200009 () Bool)

(assert (= b_lambda!200005 (or d!1661249 b_lambda!200009)))

(declare-fun bs!1199447 () Bool)

(declare-fun d!1661275 () Bool)

(assert (= bs!1199447 (and d!1661275 d!1661249)))

(assert (=> bs!1199447 (= (dynLambda!23727 lambda!255524 (h!66038 (exprs!4275 ctx!74))) (validRegex!6251 (h!66038 (exprs!4275 ctx!74))))))

(assert (=> bs!1199447 m!6200032))

(assert (=> b!5134113 d!1661275))

(declare-fun b_lambda!200011 () Bool)

(assert (= b_lambda!200007 (or d!1661223 b_lambda!200011)))

(declare-fun bs!1199448 () Bool)

(declare-fun d!1661277 () Bool)

(assert (= bs!1199448 (and d!1661277 d!1661223)))

(assert (=> bs!1199448 (= (dynLambda!23727 lambda!255517 (h!66038 (exprs!4275 (Context!7551 (t!372741 (exprs!4275 ctx!74)))))) (validRegex!6251 (h!66038 (exprs!4275 (Context!7551 (t!372741 (exprs!4275 ctx!74)))))))))

(declare-fun m!6200092 () Bool)

(assert (=> bs!1199448 m!6200092))

(assert (=> b!5134142 d!1661277))

(check-sat (not bs!1199447) (not bm!357473) (not bm!357474) (not d!1661261) (not d!1661267) (not b!5134177) (not b!5134176) (not b!5134136) (not b!5134114) tp_is_empty!37939 (not b!5134179) (not b_lambda!200011) (not bm!357479) (not b!5134143) (not b_lambda!200009) (not bm!357464) (not bm!357480) (not bm!357465) (not b!5134178) (not bs!1199448) (not d!1661263))
(check-sat)
