; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!234138 () Bool)

(assert start!234138)

(declare-fun b!2386010 () Bool)

(assert (=> b!2386010 true))

(assert (=> b!2386010 true))

(declare-fun lambda!89098 () Int)

(declare-fun lambda!89097 () Int)

(assert (=> b!2386010 (not (= lambda!89098 lambda!89097))))

(assert (=> b!2386010 true))

(assert (=> b!2386010 true))

(declare-fun b!2385999 () Bool)

(declare-fun res!1013524 () Bool)

(declare-fun e!1521403 () Bool)

(assert (=> b!2385999 (=> res!1013524 e!1521403)))

(declare-datatypes ((C!14146 0))(
  ( (C!14147 (val!8315 Int)) )
))
(declare-datatypes ((Regex!6994 0))(
  ( (ElementMatch!6994 (c!379418 C!14146)) (Concat!11630 (regOne!14500 Regex!6994) (regTwo!14500 Regex!6994)) (EmptyExpr!6994) (Star!6994 (reg!7323 Regex!6994)) (EmptyLang!6994) (Union!6994 (regOne!14501 Regex!6994) (regTwo!14501 Regex!6994)) )
))
(declare-datatypes ((List!28226 0))(
  ( (Nil!28128) (Cons!28128 (h!33529 Regex!6994) (t!208203 List!28226)) )
))
(declare-fun l!9164 () List!28226)

(declare-fun isEmpty!16092 (List!28226) Bool)

(declare-fun tail!3491 (List!28226) List!28226)

(assert (=> b!2385999 (= res!1013524 (isEmpty!16092 (tail!3491 l!9164)))))

(declare-fun res!1013525 () Bool)

(declare-fun e!1521406 () Bool)

(assert (=> start!234138 (=> (not res!1013525) (not e!1521406))))

(declare-fun lambda!89096 () Int)

(declare-fun forall!5628 (List!28226 Int) Bool)

(assert (=> start!234138 (= res!1013525 (forall!5628 l!9164 lambda!89096))))

(assert (=> start!234138 e!1521406))

(declare-fun e!1521408 () Bool)

(assert (=> start!234138 e!1521408))

(declare-fun e!1521405 () Bool)

(assert (=> start!234138 e!1521405))

(declare-fun e!1521404 () Bool)

(assert (=> start!234138 e!1521404))

(declare-fun b!2386000 () Bool)

(declare-fun tp!761045 () Bool)

(assert (=> b!2386000 (= e!1521405 tp!761045)))

(declare-fun b!2386001 () Bool)

(declare-fun tp_is_empty!11401 () Bool)

(declare-fun tp!761049 () Bool)

(assert (=> b!2386001 (= e!1521404 (and tp_is_empty!11401 tp!761049))))

(declare-fun b!2386002 () Bool)

(declare-fun res!1013523 () Bool)

(assert (=> b!2386002 (=> res!1013523 e!1521403)))

(assert (=> b!2386002 (= res!1013523 (isEmpty!16092 l!9164))))

(declare-fun b!2386003 () Bool)

(declare-fun tp!761046 () Bool)

(declare-fun tp!761044 () Bool)

(assert (=> b!2386003 (= e!1521405 (and tp!761046 tp!761044))))

(declare-fun b!2386004 () Bool)

(declare-fun e!1521407 () Bool)

(assert (=> b!2386004 (= e!1521406 (not e!1521407))))

(declare-fun res!1013522 () Bool)

(assert (=> b!2386004 (=> res!1013522 e!1521407)))

(declare-fun r!13927 () Regex!6994)

(assert (=> b!2386004 (= res!1013522 (not (is-Concat!11630 r!13927)))))

(declare-fun lt!869404 () Bool)

(declare-fun lt!869401 () Bool)

(assert (=> b!2386004 (= lt!869404 lt!869401)))

(declare-datatypes ((List!28227 0))(
  ( (Nil!28129) (Cons!28129 (h!33530 C!14146) (t!208204 List!28227)) )
))
(declare-fun s!9460 () List!28227)

(declare-fun matchRSpec!843 (Regex!6994 List!28227) Bool)

(assert (=> b!2386004 (= lt!869401 (matchRSpec!843 r!13927 s!9460))))

(declare-fun matchR!3111 (Regex!6994 List!28227) Bool)

(assert (=> b!2386004 (= lt!869404 (matchR!3111 r!13927 s!9460))))

(declare-datatypes ((Unit!41091 0))(
  ( (Unit!41092) )
))
(declare-fun lt!869403 () Unit!41091)

(declare-fun mainMatchTheorem!843 (Regex!6994 List!28227) Unit!41091)

(assert (=> b!2386004 (= lt!869403 (mainMatchTheorem!843 r!13927 s!9460))))

(declare-fun b!2386005 () Bool)

(declare-fun tp!761048 () Bool)

(declare-fun tp!761042 () Bool)

(assert (=> b!2386005 (= e!1521405 (and tp!761048 tp!761042))))

(declare-fun b!2386006 () Bool)

(assert (=> b!2386006 (= e!1521405 tp_is_empty!11401)))

(declare-fun b!2386007 () Bool)

(declare-fun tp!761043 () Bool)

(declare-fun tp!761047 () Bool)

(assert (=> b!2386007 (= e!1521408 (and tp!761043 tp!761047))))

(declare-fun b!2386008 () Bool)

(declare-fun res!1013521 () Bool)

(assert (=> b!2386008 (=> (not res!1013521) (not e!1521406))))

(declare-fun generalisedConcat!95 (List!28226) Regex!6994)

(assert (=> b!2386008 (= res!1013521 (= r!13927 (generalisedConcat!95 l!9164)))))

(declare-fun b!2386009 () Bool)

(assert (=> b!2386009 (= e!1521403 (not (= l!9164 Nil!28128)))))

(assert (=> b!2386010 (= e!1521407 e!1521403)))

(declare-fun res!1013526 () Bool)

(assert (=> b!2386010 (=> res!1013526 e!1521403)))

(declare-fun lt!869405 () Bool)

(assert (=> b!2386010 (= res!1013526 (not (= lt!869401 lt!869405)))))

(declare-fun Exists!1056 (Int) Bool)

(assert (=> b!2386010 (= (Exists!1056 lambda!89097) (Exists!1056 lambda!89098))))

(declare-fun lt!869406 () Unit!41091)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!395 (Regex!6994 Regex!6994 List!28227) Unit!41091)

(assert (=> b!2386010 (= lt!869406 (lemmaExistCutMatchRandMatchRSpecEquivalent!395 (regOne!14500 r!13927) (regTwo!14500 r!13927) s!9460))))

(assert (=> b!2386010 (= lt!869405 (Exists!1056 lambda!89097))))

(declare-datatypes ((tuple2!27852 0))(
  ( (tuple2!27853 (_1!16467 List!28227) (_2!16467 List!28227)) )
))
(declare-datatypes ((Option!5537 0))(
  ( (None!5536) (Some!5536 (v!30944 tuple2!27852)) )
))
(declare-fun isDefined!4365 (Option!5537) Bool)

(declare-fun findConcatSeparation!645 (Regex!6994 Regex!6994 List!28227 List!28227 List!28227) Option!5537)

(assert (=> b!2386010 (= lt!869405 (isDefined!4365 (findConcatSeparation!645 (regOne!14500 r!13927) (regTwo!14500 r!13927) Nil!28129 s!9460 s!9460)))))

(declare-fun lt!869402 () Unit!41091)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!645 (Regex!6994 Regex!6994 List!28227) Unit!41091)

(assert (=> b!2386010 (= lt!869402 (lemmaFindConcatSeparationEquivalentToExists!645 (regOne!14500 r!13927) (regTwo!14500 r!13927) s!9460))))

(assert (= (and start!234138 res!1013525) b!2386008))

(assert (= (and b!2386008 res!1013521) b!2386004))

(assert (= (and b!2386004 (not res!1013522)) b!2386010))

(assert (= (and b!2386010 (not res!1013526)) b!2386002))

(assert (= (and b!2386002 (not res!1013523)) b!2385999))

(assert (= (and b!2385999 (not res!1013524)) b!2386009))

(assert (= (and start!234138 (is-Cons!28128 l!9164)) b!2386007))

(assert (= (and start!234138 (is-ElementMatch!6994 r!13927)) b!2386006))

(assert (= (and start!234138 (is-Concat!11630 r!13927)) b!2386003))

(assert (= (and start!234138 (is-Star!6994 r!13927)) b!2386000))

(assert (= (and start!234138 (is-Union!6994 r!13927)) b!2386005))

(assert (= (and start!234138 (is-Cons!28129 s!9460)) b!2386001))

(declare-fun m!2788089 () Bool)

(assert (=> start!234138 m!2788089))

(declare-fun m!2788091 () Bool)

(assert (=> b!2386002 m!2788091))

(declare-fun m!2788093 () Bool)

(assert (=> b!2386008 m!2788093))

(declare-fun m!2788095 () Bool)

(assert (=> b!2386010 m!2788095))

(declare-fun m!2788097 () Bool)

(assert (=> b!2386010 m!2788097))

(declare-fun m!2788099 () Bool)

(assert (=> b!2386010 m!2788099))

(declare-fun m!2788101 () Bool)

(assert (=> b!2386010 m!2788101))

(assert (=> b!2386010 m!2788095))

(assert (=> b!2386010 m!2788101))

(declare-fun m!2788103 () Bool)

(assert (=> b!2386010 m!2788103))

(declare-fun m!2788105 () Bool)

(assert (=> b!2386010 m!2788105))

(declare-fun m!2788107 () Bool)

(assert (=> b!2386004 m!2788107))

(declare-fun m!2788109 () Bool)

(assert (=> b!2386004 m!2788109))

(declare-fun m!2788111 () Bool)

(assert (=> b!2386004 m!2788111))

(declare-fun m!2788113 () Bool)

(assert (=> b!2385999 m!2788113))

(assert (=> b!2385999 m!2788113))

(declare-fun m!2788115 () Bool)

(assert (=> b!2385999 m!2788115))

(push 1)

(assert (not b!2386007))

(assert (not b!2385999))

(assert tp_is_empty!11401)

(assert (not b!2386002))

(assert (not b!2386000))

(assert (not b!2386008))

(assert (not start!234138))

(assert (not b!2386001))

(assert (not b!2386004))

(assert (not b!2386010))

(assert (not b!2386003))

(assert (not b!2386005))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!697474 () Bool)

(assert (=> d!697474 (= (isEmpty!16092 l!9164) (is-Nil!28128 l!9164))))

(assert (=> b!2386002 d!697474))

(declare-fun d!697476 () Bool)

(declare-fun res!1013561 () Bool)

(declare-fun e!1521437 () Bool)

(assert (=> d!697476 (=> res!1013561 e!1521437)))

(assert (=> d!697476 (= res!1013561 (is-Nil!28128 l!9164))))

(assert (=> d!697476 (= (forall!5628 l!9164 lambda!89096) e!1521437)))

(declare-fun b!2386071 () Bool)

(declare-fun e!1521438 () Bool)

(assert (=> b!2386071 (= e!1521437 e!1521438)))

(declare-fun res!1013562 () Bool)

(assert (=> b!2386071 (=> (not res!1013562) (not e!1521438))))

(declare-fun dynLambda!12111 (Int Regex!6994) Bool)

(assert (=> b!2386071 (= res!1013562 (dynLambda!12111 lambda!89096 (h!33529 l!9164)))))

(declare-fun b!2386072 () Bool)

(assert (=> b!2386072 (= e!1521438 (forall!5628 (t!208203 l!9164) lambda!89096))))

(assert (= (and d!697476 (not res!1013561)) b!2386071))

(assert (= (and b!2386071 res!1013562) b!2386072))

(declare-fun b_lambda!74123 () Bool)

(assert (=> (not b_lambda!74123) (not b!2386071)))

(declare-fun m!2788145 () Bool)

(assert (=> b!2386071 m!2788145))

(declare-fun m!2788147 () Bool)

(assert (=> b!2386072 m!2788147))

(assert (=> start!234138 d!697476))

(declare-fun d!697478 () Bool)

(declare-fun isEmpty!16094 (Option!5537) Bool)

(assert (=> d!697478 (= (isDefined!4365 (findConcatSeparation!645 (regOne!14500 r!13927) (regTwo!14500 r!13927) Nil!28129 s!9460 s!9460)) (not (isEmpty!16094 (findConcatSeparation!645 (regOne!14500 r!13927) (regTwo!14500 r!13927) Nil!28129 s!9460 s!9460))))))

(declare-fun bs!462203 () Bool)

(assert (= bs!462203 d!697478))

(assert (=> bs!462203 m!2788095))

(declare-fun m!2788149 () Bool)

(assert (=> bs!462203 m!2788149))

(assert (=> b!2386010 d!697478))

(declare-fun bs!462204 () Bool)

(declare-fun d!697480 () Bool)

(assert (= bs!462204 (and d!697480 b!2386010)))

(declare-fun lambda!89112 () Int)

(assert (=> bs!462204 (= lambda!89112 lambda!89097)))

(assert (=> bs!462204 (not (= lambda!89112 lambda!89098))))

(assert (=> d!697480 true))

(assert (=> d!697480 true))

(assert (=> d!697480 true))

(assert (=> d!697480 (= (isDefined!4365 (findConcatSeparation!645 (regOne!14500 r!13927) (regTwo!14500 r!13927) Nil!28129 s!9460 s!9460)) (Exists!1056 lambda!89112))))

(declare-fun lt!869427 () Unit!41091)

(declare-fun choose!14006 (Regex!6994 Regex!6994 List!28227) Unit!41091)

(assert (=> d!697480 (= lt!869427 (choose!14006 (regOne!14500 r!13927) (regTwo!14500 r!13927) s!9460))))

(declare-fun validRegex!2719 (Regex!6994) Bool)

(assert (=> d!697480 (validRegex!2719 (regOne!14500 r!13927))))

(assert (=> d!697480 (= (lemmaFindConcatSeparationEquivalentToExists!645 (regOne!14500 r!13927) (regTwo!14500 r!13927) s!9460) lt!869427)))

(declare-fun bs!462205 () Bool)

(assert (= bs!462205 d!697480))

(assert (=> bs!462205 m!2788095))

(assert (=> bs!462205 m!2788097))

(declare-fun m!2788151 () Bool)

(assert (=> bs!462205 m!2788151))

(declare-fun m!2788153 () Bool)

(assert (=> bs!462205 m!2788153))

(assert (=> bs!462205 m!2788095))

(declare-fun m!2788155 () Bool)

(assert (=> bs!462205 m!2788155))

(assert (=> b!2386010 d!697480))

(declare-fun bs!462206 () Bool)

(declare-fun d!697482 () Bool)

(assert (= bs!462206 (and d!697482 b!2386010)))

(declare-fun lambda!89117 () Int)

(assert (=> bs!462206 (= lambda!89117 lambda!89097)))

(assert (=> bs!462206 (not (= lambda!89117 lambda!89098))))

(declare-fun bs!462207 () Bool)

(assert (= bs!462207 (and d!697482 d!697480)))

(assert (=> bs!462207 (= lambda!89117 lambda!89112)))

(assert (=> d!697482 true))

(assert (=> d!697482 true))

(assert (=> d!697482 true))

(declare-fun lambda!89118 () Int)

(assert (=> bs!462206 (not (= lambda!89118 lambda!89097))))

(assert (=> bs!462206 (= lambda!89118 lambda!89098)))

(assert (=> bs!462207 (not (= lambda!89118 lambda!89112))))

(declare-fun bs!462208 () Bool)

(assert (= bs!462208 d!697482))

(assert (=> bs!462208 (not (= lambda!89118 lambda!89117))))

(assert (=> d!697482 true))

(assert (=> d!697482 true))

(assert (=> d!697482 true))

(assert (=> d!697482 (= (Exists!1056 lambda!89117) (Exists!1056 lambda!89118))))

(declare-fun lt!869430 () Unit!41091)

(declare-fun choose!14007 (Regex!6994 Regex!6994 List!28227) Unit!41091)

(assert (=> d!697482 (= lt!869430 (choose!14007 (regOne!14500 r!13927) (regTwo!14500 r!13927) s!9460))))

(assert (=> d!697482 (validRegex!2719 (regOne!14500 r!13927))))

(assert (=> d!697482 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!395 (regOne!14500 r!13927) (regTwo!14500 r!13927) s!9460) lt!869430)))

(declare-fun m!2788157 () Bool)

(assert (=> bs!462208 m!2788157))

(declare-fun m!2788159 () Bool)

(assert (=> bs!462208 m!2788159))

(declare-fun m!2788161 () Bool)

(assert (=> bs!462208 m!2788161))

(assert (=> bs!462208 m!2788153))

(assert (=> b!2386010 d!697482))

(declare-fun d!697488 () Bool)

(declare-fun choose!14008 (Int) Bool)

(assert (=> d!697488 (= (Exists!1056 lambda!89098) (choose!14008 lambda!89098))))

(declare-fun bs!462209 () Bool)

(assert (= bs!462209 d!697488))

(declare-fun m!2788167 () Bool)

(assert (=> bs!462209 m!2788167))

(assert (=> b!2386010 d!697488))

(declare-fun b!2386129 () Bool)

(declare-fun lt!869439 () Unit!41091)

(declare-fun lt!869440 () Unit!41091)

(assert (=> b!2386129 (= lt!869439 lt!869440)))

(declare-fun ++!6948 (List!28227 List!28227) List!28227)

(assert (=> b!2386129 (= (++!6948 (++!6948 Nil!28129 (Cons!28129 (h!33530 s!9460) Nil!28129)) (t!208204 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!590 (List!28227 C!14146 List!28227 List!28227) Unit!41091)

(assert (=> b!2386129 (= lt!869440 (lemmaMoveElementToOtherListKeepsConcatEq!590 Nil!28129 (h!33530 s!9460) (t!208204 s!9460) s!9460))))

(declare-fun e!1521473 () Option!5537)

(assert (=> b!2386129 (= e!1521473 (findConcatSeparation!645 (regOne!14500 r!13927) (regTwo!14500 r!13927) (++!6948 Nil!28129 (Cons!28129 (h!33530 s!9460) Nil!28129)) (t!208204 s!9460) s!9460))))

(declare-fun b!2386130 () Bool)

(assert (=> b!2386130 (= e!1521473 None!5536)))

(declare-fun d!697492 () Bool)

(declare-fun e!1521476 () Bool)

(assert (=> d!697492 e!1521476))

(declare-fun res!1013599 () Bool)

(assert (=> d!697492 (=> res!1013599 e!1521476)))

(declare-fun e!1521475 () Bool)

(assert (=> d!697492 (= res!1013599 e!1521475)))

(declare-fun res!1013597 () Bool)

(assert (=> d!697492 (=> (not res!1013597) (not e!1521475))))

(declare-fun lt!869441 () Option!5537)

(assert (=> d!697492 (= res!1013597 (isDefined!4365 lt!869441))))

(declare-fun e!1521477 () Option!5537)

(assert (=> d!697492 (= lt!869441 e!1521477)))

(declare-fun c!379432 () Bool)

(declare-fun e!1521474 () Bool)

(assert (=> d!697492 (= c!379432 e!1521474)))

(declare-fun res!1013596 () Bool)

(assert (=> d!697492 (=> (not res!1013596) (not e!1521474))))

(assert (=> d!697492 (= res!1013596 (matchR!3111 (regOne!14500 r!13927) Nil!28129))))

(assert (=> d!697492 (validRegex!2719 (regOne!14500 r!13927))))

(assert (=> d!697492 (= (findConcatSeparation!645 (regOne!14500 r!13927) (regTwo!14500 r!13927) Nil!28129 s!9460 s!9460) lt!869441)))

(declare-fun b!2386131 () Bool)

(declare-fun res!1013598 () Bool)

(assert (=> b!2386131 (=> (not res!1013598) (not e!1521475))))

(declare-fun get!8589 (Option!5537) tuple2!27852)

(assert (=> b!2386131 (= res!1013598 (matchR!3111 (regTwo!14500 r!13927) (_2!16467 (get!8589 lt!869441))))))

(declare-fun b!2386132 () Bool)

(assert (=> b!2386132 (= e!1521477 (Some!5536 (tuple2!27853 Nil!28129 s!9460)))))

(declare-fun b!2386133 () Bool)

(assert (=> b!2386133 (= e!1521474 (matchR!3111 (regTwo!14500 r!13927) s!9460))))

(declare-fun b!2386134 () Bool)

(declare-fun res!1013595 () Bool)

(assert (=> b!2386134 (=> (not res!1013595) (not e!1521475))))

(assert (=> b!2386134 (= res!1013595 (matchR!3111 (regOne!14500 r!13927) (_1!16467 (get!8589 lt!869441))))))

(declare-fun b!2386135 () Bool)

(assert (=> b!2386135 (= e!1521476 (not (isDefined!4365 lt!869441)))))

(declare-fun b!2386136 () Bool)

(assert (=> b!2386136 (= e!1521475 (= (++!6948 (_1!16467 (get!8589 lt!869441)) (_2!16467 (get!8589 lt!869441))) s!9460))))

(declare-fun b!2386137 () Bool)

(assert (=> b!2386137 (= e!1521477 e!1521473)))

(declare-fun c!379433 () Bool)

(assert (=> b!2386137 (= c!379433 (is-Nil!28129 s!9460))))

(assert (= (and d!697492 res!1013596) b!2386133))

(assert (= (and d!697492 c!379432) b!2386132))

(assert (= (and d!697492 (not c!379432)) b!2386137))

(assert (= (and b!2386137 c!379433) b!2386130))

(assert (= (and b!2386137 (not c!379433)) b!2386129))

(assert (= (and d!697492 res!1013597) b!2386134))

(assert (= (and b!2386134 res!1013595) b!2386131))

(assert (= (and b!2386131 res!1013598) b!2386136))

(assert (= (and d!697492 (not res!1013599)) b!2386135))

(declare-fun m!2788169 () Bool)

(assert (=> b!2386129 m!2788169))

(assert (=> b!2386129 m!2788169))

(declare-fun m!2788171 () Bool)

(assert (=> b!2386129 m!2788171))

(declare-fun m!2788173 () Bool)

(assert (=> b!2386129 m!2788173))

(assert (=> b!2386129 m!2788169))

(declare-fun m!2788175 () Bool)

(assert (=> b!2386129 m!2788175))

(declare-fun m!2788177 () Bool)

(assert (=> d!697492 m!2788177))

(declare-fun m!2788179 () Bool)

(assert (=> d!697492 m!2788179))

(assert (=> d!697492 m!2788153))

(declare-fun m!2788181 () Bool)

(assert (=> b!2386136 m!2788181))

(declare-fun m!2788183 () Bool)

(assert (=> b!2386136 m!2788183))

(declare-fun m!2788185 () Bool)

(assert (=> b!2386133 m!2788185))

(assert (=> b!2386131 m!2788181))

(declare-fun m!2788187 () Bool)

(assert (=> b!2386131 m!2788187))

(assert (=> b!2386135 m!2788177))

(assert (=> b!2386134 m!2788181))

(declare-fun m!2788189 () Bool)

(assert (=> b!2386134 m!2788189))

(assert (=> b!2386010 d!697492))

(declare-fun d!697494 () Bool)

(assert (=> d!697494 (= (Exists!1056 lambda!89097) (choose!14008 lambda!89097))))

(declare-fun bs!462210 () Bool)

(assert (= bs!462210 d!697494))

(declare-fun m!2788191 () Bool)

(assert (=> bs!462210 m!2788191))

(assert (=> b!2386010 d!697494))

(declare-fun d!697496 () Bool)

(assert (=> d!697496 (= (isEmpty!16092 (tail!3491 l!9164)) (is-Nil!28128 (tail!3491 l!9164)))))

(assert (=> b!2385999 d!697496))

(declare-fun d!697498 () Bool)

(assert (=> d!697498 (= (tail!3491 l!9164) (t!208203 l!9164))))

(assert (=> b!2385999 d!697498))

(declare-fun bs!462213 () Bool)

(declare-fun b!2386189 () Bool)

(assert (= bs!462213 (and b!2386189 d!697482)))

(declare-fun lambda!89126 () Int)

(assert (=> bs!462213 (not (= lambda!89126 lambda!89117))))

(declare-fun bs!462214 () Bool)

(assert (= bs!462214 (and b!2386189 b!2386010)))

(assert (=> bs!462214 (not (= lambda!89126 lambda!89098))))

(declare-fun bs!462215 () Bool)

(assert (= bs!462215 (and b!2386189 d!697480)))

(assert (=> bs!462215 (not (= lambda!89126 lambda!89112))))

(assert (=> bs!462213 (not (= lambda!89126 lambda!89118))))

(assert (=> bs!462214 (not (= lambda!89126 lambda!89097))))

(assert (=> b!2386189 true))

(assert (=> b!2386189 true))

(declare-fun bs!462216 () Bool)

(declare-fun b!2386186 () Bool)

(assert (= bs!462216 (and b!2386186 d!697482)))

(declare-fun lambda!89127 () Int)

(assert (=> bs!462216 (not (= lambda!89127 lambda!89117))))

(declare-fun bs!462217 () Bool)

(assert (= bs!462217 (and b!2386186 b!2386010)))

(assert (=> bs!462217 (= lambda!89127 lambda!89098)))

(declare-fun bs!462218 () Bool)

(assert (= bs!462218 (and b!2386186 d!697480)))

(assert (=> bs!462218 (not (= lambda!89127 lambda!89112))))

(declare-fun bs!462219 () Bool)

(assert (= bs!462219 (and b!2386186 b!2386189)))

(assert (=> bs!462219 (not (= lambda!89127 lambda!89126))))

(assert (=> bs!462216 (= lambda!89127 lambda!89118)))

(assert (=> bs!462217 (not (= lambda!89127 lambda!89097))))

(assert (=> b!2386186 true))

(assert (=> b!2386186 true))

(declare-fun d!697500 () Bool)

(declare-fun c!379446 () Bool)

(assert (=> d!697500 (= c!379446 (is-EmptyExpr!6994 r!13927))))

(declare-fun e!1521507 () Bool)

(assert (=> d!697500 (= (matchRSpec!843 r!13927 s!9460) e!1521507)))

(declare-fun b!2386180 () Bool)

(declare-fun c!379448 () Bool)

(assert (=> b!2386180 (= c!379448 (is-ElementMatch!6994 r!13927))))

(declare-fun e!1521508 () Bool)

(declare-fun e!1521506 () Bool)

(assert (=> b!2386180 (= e!1521508 e!1521506)))

(declare-fun b!2386181 () Bool)

(assert (=> b!2386181 (= e!1521507 e!1521508)))

(declare-fun res!1013620 () Bool)

(assert (=> b!2386181 (= res!1013620 (not (is-EmptyLang!6994 r!13927)))))

(assert (=> b!2386181 (=> (not res!1013620) (not e!1521508))))

(declare-fun b!2386182 () Bool)

(assert (=> b!2386182 (= e!1521506 (= s!9460 (Cons!28129 (c!379418 r!13927) Nil!28129)))))

(declare-fun b!2386183 () Bool)

(declare-fun e!1521504 () Bool)

(declare-fun e!1521503 () Bool)

(assert (=> b!2386183 (= e!1521504 e!1521503)))

(declare-fun res!1013618 () Bool)

(assert (=> b!2386183 (= res!1013618 (matchRSpec!843 (regOne!14501 r!13927) s!9460))))

(assert (=> b!2386183 (=> res!1013618 e!1521503)))

(declare-fun b!2386184 () Bool)

(declare-fun c!379447 () Bool)

(assert (=> b!2386184 (= c!379447 (is-Union!6994 r!13927))))

(assert (=> b!2386184 (= e!1521506 e!1521504)))

(declare-fun b!2386185 () Bool)

(declare-fun e!1521505 () Bool)

(assert (=> b!2386185 (= e!1521504 e!1521505)))

(declare-fun c!379449 () Bool)

(assert (=> b!2386185 (= c!379449 (is-Star!6994 r!13927))))

(declare-fun call!145100 () Bool)

(assert (=> b!2386186 (= e!1521505 call!145100)))

(declare-fun bm!145094 () Bool)

(assert (=> bm!145094 (= call!145100 (Exists!1056 (ite c!379449 lambda!89126 lambda!89127)))))

(declare-fun b!2386187 () Bool)

(assert (=> b!2386187 (= e!1521503 (matchRSpec!843 (regTwo!14501 r!13927) s!9460))))

(declare-fun b!2386188 () Bool)

(declare-fun call!145099 () Bool)

(assert (=> b!2386188 (= e!1521507 call!145099)))

(declare-fun e!1521502 () Bool)

(assert (=> b!2386189 (= e!1521502 call!145100)))

(declare-fun bm!145095 () Bool)

(declare-fun isEmpty!16095 (List!28227) Bool)

(assert (=> bm!145095 (= call!145099 (isEmpty!16095 s!9460))))

(declare-fun b!2386190 () Bool)

(declare-fun res!1013619 () Bool)

(assert (=> b!2386190 (=> res!1013619 e!1521502)))

(assert (=> b!2386190 (= res!1013619 call!145099)))

(assert (=> b!2386190 (= e!1521505 e!1521502)))

(assert (= (and d!697500 c!379446) b!2386188))

(assert (= (and d!697500 (not c!379446)) b!2386181))

(assert (= (and b!2386181 res!1013620) b!2386180))

(assert (= (and b!2386180 c!379448) b!2386182))

(assert (= (and b!2386180 (not c!379448)) b!2386184))

(assert (= (and b!2386184 c!379447) b!2386183))

(assert (= (and b!2386184 (not c!379447)) b!2386185))

(assert (= (and b!2386183 (not res!1013618)) b!2386187))

(assert (= (and b!2386185 c!379449) b!2386190))

(assert (= (and b!2386185 (not c!379449)) b!2386186))

(assert (= (and b!2386190 (not res!1013619)) b!2386189))

(assert (= (or b!2386189 b!2386186) bm!145094))

(assert (= (or b!2386188 b!2386190) bm!145095))

(declare-fun m!2788209 () Bool)

(assert (=> b!2386183 m!2788209))

(declare-fun m!2788211 () Bool)

(assert (=> bm!145094 m!2788211))

(declare-fun m!2788213 () Bool)

(assert (=> b!2386187 m!2788213))

(declare-fun m!2788215 () Bool)

(assert (=> bm!145095 m!2788215))

(assert (=> b!2386004 d!697500))

(declare-fun b!2386227 () Bool)

(declare-fun e!1521527 () Bool)

(declare-fun nullable!2044 (Regex!6994) Bool)

(assert (=> b!2386227 (= e!1521527 (nullable!2044 r!13927))))

(declare-fun b!2386228 () Bool)

(declare-fun res!1013647 () Bool)

(declare-fun e!1521531 () Bool)

(assert (=> b!2386228 (=> res!1013647 e!1521531)))

(declare-fun e!1521528 () Bool)

(assert (=> b!2386228 (= res!1013647 e!1521528)))

(declare-fun res!1013651 () Bool)

(assert (=> b!2386228 (=> (not res!1013651) (not e!1521528))))

(declare-fun lt!869447 () Bool)

(assert (=> b!2386228 (= res!1013651 lt!869447)))

(declare-fun b!2386229 () Bool)

(declare-fun e!1521530 () Bool)

(assert (=> b!2386229 (= e!1521531 e!1521530)))

(declare-fun res!1013649 () Bool)

(assert (=> b!2386229 (=> (not res!1013649) (not e!1521530))))

(assert (=> b!2386229 (= res!1013649 (not lt!869447))))

(declare-fun b!2386230 () Bool)

(declare-fun res!1013652 () Bool)

(assert (=> b!2386230 (=> (not res!1013652) (not e!1521528))))

(declare-fun tail!3493 (List!28227) List!28227)

(assert (=> b!2386230 (= res!1013652 (isEmpty!16095 (tail!3493 s!9460)))))

(declare-fun b!2386231 () Bool)

(declare-fun derivativeStep!1702 (Regex!6994 C!14146) Regex!6994)

(declare-fun head!5221 (List!28227) C!14146)

(assert (=> b!2386231 (= e!1521527 (matchR!3111 (derivativeStep!1702 r!13927 (head!5221 s!9460)) (tail!3493 s!9460)))))

(declare-fun d!697506 () Bool)

(declare-fun e!1521529 () Bool)

(assert (=> d!697506 e!1521529))

(declare-fun c!379456 () Bool)

(assert (=> d!697506 (= c!379456 (is-EmptyExpr!6994 r!13927))))

(assert (=> d!697506 (= lt!869447 e!1521527)))

(declare-fun c!379458 () Bool)

(assert (=> d!697506 (= c!379458 (isEmpty!16095 s!9460))))

(assert (=> d!697506 (validRegex!2719 r!13927)))

(assert (=> d!697506 (= (matchR!3111 r!13927 s!9460) lt!869447)))

(declare-fun bm!145098 () Bool)

(declare-fun call!145103 () Bool)

(assert (=> bm!145098 (= call!145103 (isEmpty!16095 s!9460))))

(declare-fun b!2386232 () Bool)

(assert (=> b!2386232 (= e!1521528 (= (head!5221 s!9460) (c!379418 r!13927)))))

(declare-fun b!2386233 () Bool)

(declare-fun e!1521532 () Bool)

(assert (=> b!2386233 (= e!1521529 e!1521532)))

(declare-fun c!379457 () Bool)

(assert (=> b!2386233 (= c!379457 (is-EmptyLang!6994 r!13927))))

(declare-fun b!2386234 () Bool)

(declare-fun e!1521533 () Bool)

(assert (=> b!2386234 (= e!1521530 e!1521533)))

(declare-fun res!1013645 () Bool)

(assert (=> b!2386234 (=> res!1013645 e!1521533)))

(assert (=> b!2386234 (= res!1013645 call!145103)))

(declare-fun b!2386235 () Bool)

(declare-fun res!1013646 () Bool)

(assert (=> b!2386235 (=> (not res!1013646) (not e!1521528))))

(assert (=> b!2386235 (= res!1013646 (not call!145103))))

(declare-fun b!2386236 () Bool)

(declare-fun res!1013650 () Bool)

(assert (=> b!2386236 (=> res!1013650 e!1521533)))

(assert (=> b!2386236 (= res!1013650 (not (isEmpty!16095 (tail!3493 s!9460))))))

(declare-fun b!2386237 () Bool)

(assert (=> b!2386237 (= e!1521529 (= lt!869447 call!145103))))

(declare-fun b!2386238 () Bool)

(declare-fun res!1013648 () Bool)

(assert (=> b!2386238 (=> res!1013648 e!1521531)))

(assert (=> b!2386238 (= res!1013648 (not (is-ElementMatch!6994 r!13927)))))

(assert (=> b!2386238 (= e!1521532 e!1521531)))

(declare-fun b!2386239 () Bool)

(assert (=> b!2386239 (= e!1521533 (not (= (head!5221 s!9460) (c!379418 r!13927))))))

(declare-fun b!2386240 () Bool)

(assert (=> b!2386240 (= e!1521532 (not lt!869447))))

(assert (= (and d!697506 c!379458) b!2386227))

(assert (= (and d!697506 (not c!379458)) b!2386231))

(assert (= (and d!697506 c!379456) b!2386237))

(assert (= (and d!697506 (not c!379456)) b!2386233))

(assert (= (and b!2386233 c!379457) b!2386240))

(assert (= (and b!2386233 (not c!379457)) b!2386238))

(assert (= (and b!2386238 (not res!1013648)) b!2386228))

(assert (= (and b!2386228 res!1013651) b!2386235))

(assert (= (and b!2386235 res!1013646) b!2386230))

(assert (= (and b!2386230 res!1013652) b!2386232))

(assert (= (and b!2386228 (not res!1013647)) b!2386229))

(assert (= (and b!2386229 res!1013649) b!2386234))

(assert (= (and b!2386234 (not res!1013645)) b!2386236))

(assert (= (and b!2386236 (not res!1013650)) b!2386239))

(assert (= (or b!2386237 b!2386234 b!2386235) bm!145098))

(declare-fun m!2788217 () Bool)

(assert (=> b!2386231 m!2788217))

(assert (=> b!2386231 m!2788217))

(declare-fun m!2788219 () Bool)

(assert (=> b!2386231 m!2788219))

(declare-fun m!2788221 () Bool)

(assert (=> b!2386231 m!2788221))

(assert (=> b!2386231 m!2788219))

(assert (=> b!2386231 m!2788221))

(declare-fun m!2788223 () Bool)

(assert (=> b!2386231 m!2788223))

(assert (=> bm!145098 m!2788215))

(assert (=> b!2386239 m!2788217))

(assert (=> b!2386232 m!2788217))

(assert (=> b!2386230 m!2788221))

(assert (=> b!2386230 m!2788221))

(declare-fun m!2788225 () Bool)

(assert (=> b!2386230 m!2788225))

(assert (=> d!697506 m!2788215))

(declare-fun m!2788227 () Bool)

(assert (=> d!697506 m!2788227))

(declare-fun m!2788229 () Bool)

(assert (=> b!2386227 m!2788229))

(assert (=> b!2386236 m!2788221))

(assert (=> b!2386236 m!2788221))

(assert (=> b!2386236 m!2788225))

(assert (=> b!2386004 d!697506))

(declare-fun d!697508 () Bool)

(assert (=> d!697508 (= (matchR!3111 r!13927 s!9460) (matchRSpec!843 r!13927 s!9460))))

(declare-fun lt!869451 () Unit!41091)

(declare-fun choose!14009 (Regex!6994 List!28227) Unit!41091)

(assert (=> d!697508 (= lt!869451 (choose!14009 r!13927 s!9460))))

(assert (=> d!697508 (validRegex!2719 r!13927)))

(assert (=> d!697508 (= (mainMatchTheorem!843 r!13927 s!9460) lt!869451)))

(declare-fun bs!462221 () Bool)

(assert (= bs!462221 d!697508))

(assert (=> bs!462221 m!2788109))

(assert (=> bs!462221 m!2788107))

(declare-fun m!2788231 () Bool)

(assert (=> bs!462221 m!2788231))

(assert (=> bs!462221 m!2788227))

(assert (=> b!2386004 d!697508))

(declare-fun bs!462224 () Bool)

(declare-fun d!697510 () Bool)

(assert (= bs!462224 (and d!697510 start!234138)))

(declare-fun lambda!89136 () Int)

(assert (=> bs!462224 (= lambda!89136 lambda!89096)))

(declare-fun b!2386261 () Bool)

(declare-fun e!1521549 () Bool)

(declare-fun e!1521551 () Bool)

(assert (=> b!2386261 (= e!1521549 e!1521551)))

(declare-fun c!379469 () Bool)

(assert (=> b!2386261 (= c!379469 (isEmpty!16092 l!9164))))

(declare-fun b!2386262 () Bool)

(declare-fun e!1521547 () Bool)

(declare-fun lt!869454 () Regex!6994)

(declare-fun head!5222 (List!28226) Regex!6994)

(assert (=> b!2386262 (= e!1521547 (= lt!869454 (head!5222 l!9164)))))

(assert (=> d!697510 e!1521549))

(declare-fun res!1013658 () Bool)

(assert (=> d!697510 (=> (not res!1013658) (not e!1521549))))

(assert (=> d!697510 (= res!1013658 (validRegex!2719 lt!869454))))

(declare-fun e!1521546 () Regex!6994)

(assert (=> d!697510 (= lt!869454 e!1521546)))

(declare-fun c!379468 () Bool)

(declare-fun e!1521550 () Bool)

(assert (=> d!697510 (= c!379468 e!1521550)))

(declare-fun res!1013657 () Bool)

(assert (=> d!697510 (=> (not res!1013657) (not e!1521550))))

(assert (=> d!697510 (= res!1013657 (is-Cons!28128 l!9164))))

(assert (=> d!697510 (forall!5628 l!9164 lambda!89136)))

(assert (=> d!697510 (= (generalisedConcat!95 l!9164) lt!869454)))

(declare-fun b!2386263 () Bool)

(declare-fun isConcat!64 (Regex!6994) Bool)

(assert (=> b!2386263 (= e!1521547 (isConcat!64 lt!869454))))

(declare-fun b!2386264 () Bool)

(assert (=> b!2386264 (= e!1521550 (isEmpty!16092 (t!208203 l!9164)))))

(declare-fun b!2386265 () Bool)

(assert (=> b!2386265 (= e!1521546 (h!33529 l!9164))))

(declare-fun b!2386266 () Bool)

(assert (=> b!2386266 (= e!1521551 e!1521547)))

(declare-fun c!379467 () Bool)

(assert (=> b!2386266 (= c!379467 (isEmpty!16092 (tail!3491 l!9164)))))

(declare-fun b!2386267 () Bool)

(declare-fun e!1521548 () Regex!6994)

(assert (=> b!2386267 (= e!1521546 e!1521548)))

(declare-fun c!379470 () Bool)

(assert (=> b!2386267 (= c!379470 (is-Cons!28128 l!9164))))

(declare-fun b!2386268 () Bool)

(assert (=> b!2386268 (= e!1521548 (Concat!11630 (h!33529 l!9164) (generalisedConcat!95 (t!208203 l!9164))))))

(declare-fun b!2386269 () Bool)

(assert (=> b!2386269 (= e!1521548 EmptyExpr!6994)))

(declare-fun b!2386270 () Bool)

(declare-fun isEmptyExpr!64 (Regex!6994) Bool)

(assert (=> b!2386270 (= e!1521551 (isEmptyExpr!64 lt!869454))))

(assert (= (and d!697510 res!1013657) b!2386264))

(assert (= (and d!697510 c!379468) b!2386265))

(assert (= (and d!697510 (not c!379468)) b!2386267))

(assert (= (and b!2386267 c!379470) b!2386268))

(assert (= (and b!2386267 (not c!379470)) b!2386269))

(assert (= (and d!697510 res!1013658) b!2386261))

(assert (= (and b!2386261 c!379469) b!2386270))

(assert (= (and b!2386261 (not c!379469)) b!2386266))

(assert (= (and b!2386266 c!379467) b!2386262))

(assert (= (and b!2386266 (not c!379467)) b!2386263))

(assert (=> b!2386266 m!2788113))

(assert (=> b!2386266 m!2788113))

(assert (=> b!2386266 m!2788115))

(declare-fun m!2788243 () Bool)

(assert (=> d!697510 m!2788243))

(declare-fun m!2788245 () Bool)

(assert (=> d!697510 m!2788245))

(declare-fun m!2788247 () Bool)

(assert (=> b!2386270 m!2788247))

(declare-fun m!2788249 () Bool)

(assert (=> b!2386268 m!2788249))

(declare-fun m!2788251 () Bool)

(assert (=> b!2386264 m!2788251))

(declare-fun m!2788253 () Bool)

(assert (=> b!2386263 m!2788253))

(assert (=> b!2386261 m!2788091))

(declare-fun m!2788255 () Bool)

(assert (=> b!2386262 m!2788255))

(assert (=> b!2386008 d!697510))

(declare-fun b!2386283 () Bool)

(declare-fun e!1521554 () Bool)

(declare-fun tp!761087 () Bool)

(assert (=> b!2386283 (= e!1521554 tp!761087)))

(declare-fun b!2386284 () Bool)

(declare-fun tp!761086 () Bool)

(declare-fun tp!761085 () Bool)

(assert (=> b!2386284 (= e!1521554 (and tp!761086 tp!761085))))

(assert (=> b!2386007 (= tp!761043 e!1521554)))

(declare-fun b!2386281 () Bool)

(assert (=> b!2386281 (= e!1521554 tp_is_empty!11401)))

(declare-fun b!2386282 () Bool)

(declare-fun tp!761088 () Bool)

(declare-fun tp!761084 () Bool)

(assert (=> b!2386282 (= e!1521554 (and tp!761088 tp!761084))))

(assert (= (and b!2386007 (is-ElementMatch!6994 (h!33529 l!9164))) b!2386281))

(assert (= (and b!2386007 (is-Concat!11630 (h!33529 l!9164))) b!2386282))

(assert (= (and b!2386007 (is-Star!6994 (h!33529 l!9164))) b!2386283))

(assert (= (and b!2386007 (is-Union!6994 (h!33529 l!9164))) b!2386284))

(declare-fun b!2386289 () Bool)

(declare-fun e!1521557 () Bool)

(declare-fun tp!761093 () Bool)

(declare-fun tp!761094 () Bool)

(assert (=> b!2386289 (= e!1521557 (and tp!761093 tp!761094))))

(assert (=> b!2386007 (= tp!761047 e!1521557)))

(assert (= (and b!2386007 (is-Cons!28128 (t!208203 l!9164))) b!2386289))

(declare-fun b!2386294 () Bool)

(declare-fun e!1521560 () Bool)

(declare-fun tp!761097 () Bool)

(assert (=> b!2386294 (= e!1521560 (and tp_is_empty!11401 tp!761097))))

(assert (=> b!2386001 (= tp!761049 e!1521560)))

(assert (= (and b!2386001 (is-Cons!28129 (t!208204 s!9460))) b!2386294))

(declare-fun b!2386297 () Bool)

(declare-fun e!1521561 () Bool)

(declare-fun tp!761101 () Bool)

(assert (=> b!2386297 (= e!1521561 tp!761101)))

(declare-fun b!2386298 () Bool)

(declare-fun tp!761100 () Bool)

(declare-fun tp!761099 () Bool)

(assert (=> b!2386298 (= e!1521561 (and tp!761100 tp!761099))))

(assert (=> b!2386000 (= tp!761045 e!1521561)))

(declare-fun b!2386295 () Bool)

(assert (=> b!2386295 (= e!1521561 tp_is_empty!11401)))

(declare-fun b!2386296 () Bool)

(declare-fun tp!761102 () Bool)

(declare-fun tp!761098 () Bool)

(assert (=> b!2386296 (= e!1521561 (and tp!761102 tp!761098))))

(assert (= (and b!2386000 (is-ElementMatch!6994 (reg!7323 r!13927))) b!2386295))

(assert (= (and b!2386000 (is-Concat!11630 (reg!7323 r!13927))) b!2386296))

(assert (= (and b!2386000 (is-Star!6994 (reg!7323 r!13927))) b!2386297))

(assert (= (and b!2386000 (is-Union!6994 (reg!7323 r!13927))) b!2386298))

(declare-fun b!2386301 () Bool)

(declare-fun e!1521562 () Bool)

(declare-fun tp!761106 () Bool)

(assert (=> b!2386301 (= e!1521562 tp!761106)))

(declare-fun b!2386302 () Bool)

(declare-fun tp!761105 () Bool)

(declare-fun tp!761104 () Bool)

(assert (=> b!2386302 (= e!1521562 (and tp!761105 tp!761104))))

(assert (=> b!2386005 (= tp!761048 e!1521562)))

(declare-fun b!2386299 () Bool)

(assert (=> b!2386299 (= e!1521562 tp_is_empty!11401)))

(declare-fun b!2386300 () Bool)

(declare-fun tp!761107 () Bool)

(declare-fun tp!761103 () Bool)

(assert (=> b!2386300 (= e!1521562 (and tp!761107 tp!761103))))

(assert (= (and b!2386005 (is-ElementMatch!6994 (regOne!14501 r!13927))) b!2386299))

(assert (= (and b!2386005 (is-Concat!11630 (regOne!14501 r!13927))) b!2386300))

(assert (= (and b!2386005 (is-Star!6994 (regOne!14501 r!13927))) b!2386301))

(assert (= (and b!2386005 (is-Union!6994 (regOne!14501 r!13927))) b!2386302))

(declare-fun b!2386305 () Bool)

(declare-fun e!1521563 () Bool)

(declare-fun tp!761111 () Bool)

(assert (=> b!2386305 (= e!1521563 tp!761111)))

(declare-fun b!2386306 () Bool)

(declare-fun tp!761110 () Bool)

(declare-fun tp!761109 () Bool)

(assert (=> b!2386306 (= e!1521563 (and tp!761110 tp!761109))))

(assert (=> b!2386005 (= tp!761042 e!1521563)))

(declare-fun b!2386303 () Bool)

(assert (=> b!2386303 (= e!1521563 tp_is_empty!11401)))

(declare-fun b!2386304 () Bool)

(declare-fun tp!761112 () Bool)

(declare-fun tp!761108 () Bool)

(assert (=> b!2386304 (= e!1521563 (and tp!761112 tp!761108))))

(assert (= (and b!2386005 (is-ElementMatch!6994 (regTwo!14501 r!13927))) b!2386303))

(assert (= (and b!2386005 (is-Concat!11630 (regTwo!14501 r!13927))) b!2386304))

(assert (= (and b!2386005 (is-Star!6994 (regTwo!14501 r!13927))) b!2386305))

(assert (= (and b!2386005 (is-Union!6994 (regTwo!14501 r!13927))) b!2386306))

(declare-fun b!2386309 () Bool)

(declare-fun e!1521564 () Bool)

(declare-fun tp!761116 () Bool)

(assert (=> b!2386309 (= e!1521564 tp!761116)))

(declare-fun b!2386310 () Bool)

(declare-fun tp!761115 () Bool)

(declare-fun tp!761114 () Bool)

(assert (=> b!2386310 (= e!1521564 (and tp!761115 tp!761114))))

(assert (=> b!2386003 (= tp!761046 e!1521564)))

(declare-fun b!2386307 () Bool)

(assert (=> b!2386307 (= e!1521564 tp_is_empty!11401)))

(declare-fun b!2386308 () Bool)

(declare-fun tp!761117 () Bool)

(declare-fun tp!761113 () Bool)

(assert (=> b!2386308 (= e!1521564 (and tp!761117 tp!761113))))

(assert (= (and b!2386003 (is-ElementMatch!6994 (regOne!14500 r!13927))) b!2386307))

(assert (= (and b!2386003 (is-Concat!11630 (regOne!14500 r!13927))) b!2386308))

(assert (= (and b!2386003 (is-Star!6994 (regOne!14500 r!13927))) b!2386309))

(assert (= (and b!2386003 (is-Union!6994 (regOne!14500 r!13927))) b!2386310))

(declare-fun b!2386313 () Bool)

(declare-fun e!1521565 () Bool)

(declare-fun tp!761121 () Bool)

(assert (=> b!2386313 (= e!1521565 tp!761121)))

(declare-fun b!2386314 () Bool)

(declare-fun tp!761120 () Bool)

(declare-fun tp!761119 () Bool)

(assert (=> b!2386314 (= e!1521565 (and tp!761120 tp!761119))))

(assert (=> b!2386003 (= tp!761044 e!1521565)))

(declare-fun b!2386311 () Bool)

(assert (=> b!2386311 (= e!1521565 tp_is_empty!11401)))

(declare-fun b!2386312 () Bool)

(declare-fun tp!761122 () Bool)

(declare-fun tp!761118 () Bool)

(assert (=> b!2386312 (= e!1521565 (and tp!761122 tp!761118))))

(assert (= (and b!2386003 (is-ElementMatch!6994 (regTwo!14500 r!13927))) b!2386311))

(assert (= (and b!2386003 (is-Concat!11630 (regTwo!14500 r!13927))) b!2386312))

(assert (= (and b!2386003 (is-Star!6994 (regTwo!14500 r!13927))) b!2386313))

(assert (= (and b!2386003 (is-Union!6994 (regTwo!14500 r!13927))) b!2386314))

(declare-fun b_lambda!74127 () Bool)

(assert (= b_lambda!74123 (or start!234138 b_lambda!74127)))

(declare-fun bs!462225 () Bool)

(declare-fun d!697516 () Bool)

(assert (= bs!462225 (and d!697516 start!234138)))

(assert (=> bs!462225 (= (dynLambda!12111 lambda!89096 (h!33529 l!9164)) (validRegex!2719 (h!33529 l!9164)))))

(declare-fun m!2788257 () Bool)

(assert (=> bs!462225 m!2788257))

(assert (=> b!2386071 d!697516))

(push 1)

(assert (not b!2386264))

(assert (not b!2386183))

(assert (not b!2386230))

(assert (not b!2386262))

(assert (not b!2386261))

(assert (not b!2386282))

(assert (not b!2386283))

(assert (not d!697510))

(assert (not d!697488))

(assert (not b!2386300))

(assert (not d!697480))

(assert (not b!2386301))

(assert (not b!2386298))

(assert (not d!697482))

(assert (not b!2386268))

(assert (not b!2386129))

(assert (not b!2386266))

(assert (not b!2386270))

(assert (not bm!145095))

(assert (not bm!145094))

(assert (not b!2386314))

(assert (not bm!145098))

(assert tp_is_empty!11401)

(assert (not b!2386313))

(assert (not b!2386289))

(assert (not b!2386302))

(assert (not b!2386187))

(assert (not b!2386305))

(assert (not b!2386239))

(assert (not b!2386227))

(assert (not b!2386072))

(assert (not d!697494))

(assert (not b!2386304))

(assert (not b!2386310))

(assert (not b!2386232))

(assert (not b!2386133))

(assert (not b!2386263))

(assert (not b!2386312))

(assert (not b!2386306))

(assert (not b!2386134))

(assert (not d!697508))

(assert (not b!2386231))

(assert (not b!2386136))

(assert (not b!2386297))

(assert (not b!2386236))

(assert (not bs!462225))

(assert (not b!2386309))

(assert (not b_lambda!74127))

(assert (not b!2386135))

(assert (not b!2386308))

(assert (not b!2386296))

(assert (not d!697492))

(assert (not d!697478))

(assert (not b!2386294))

(assert (not b!2386284))

(assert (not b!2386131))

(assert (not d!697506))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

