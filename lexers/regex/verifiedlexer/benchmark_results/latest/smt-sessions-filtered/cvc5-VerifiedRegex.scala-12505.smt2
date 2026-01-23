; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!695234 () Bool)

(assert start!695234)

(declare-fun b!7135053 () Bool)

(assert (=> b!7135053 true))

(declare-fun bs!1887193 () Bool)

(declare-fun b!7135057 () Bool)

(declare-fun b!7135060 () Bool)

(assert (= bs!1887193 (and b!7135057 b!7135060)))

(declare-fun lambda!433433 () Int)

(declare-fun lambda!433431 () Int)

(assert (=> bs!1887193 (not (= lambda!433433 lambda!433431))))

(declare-fun b!7135046 () Bool)

(declare-fun e!4288132 () Bool)

(declare-fun tp!1967055 () Bool)

(assert (=> b!7135046 (= e!4288132 tp!1967055)))

(declare-fun b!7135047 () Bool)

(declare-fun e!4288134 () Bool)

(declare-fun e!4288133 () Bool)

(assert (=> b!7135047 (= e!4288134 e!4288133)))

(declare-fun res!2911297 () Bool)

(assert (=> b!7135047 (=> (not res!2911297) (not e!4288133))))

(declare-datatypes ((C!36510 0))(
  ( (C!36511 (val!28203 Int)) )
))
(declare-datatypes ((Regex!18118 0))(
  ( (ElementMatch!18118 (c!1330607 C!36510)) (Concat!26963 (regOne!36748 Regex!18118) (regTwo!36748 Regex!18118)) (EmptyExpr!18118) (Star!18118 (reg!18447 Regex!18118)) (EmptyLang!18118) (Union!18118 (regOne!36749 Regex!18118) (regTwo!36749 Regex!18118)) )
))
(declare-fun r!11483 () Regex!18118)

(declare-fun lt!2565572 () Regex!18118)

(assert (=> b!7135047 (= res!2911297 (= r!11483 lt!2565572))))

(declare-datatypes ((List!69314 0))(
  ( (Nil!69190) (Cons!69190 (h!75638 Regex!18118) (t!383331 List!69314)) )
))
(declare-fun lt!2565570 () List!69314)

(declare-fun generalisedUnion!2623 (List!69314) Regex!18118)

(assert (=> b!7135047 (= lt!2565572 (generalisedUnion!2623 lt!2565570))))

(declare-datatypes ((Context!14224 0))(
  ( (Context!14225 (exprs!7612 List!69314)) )
))
(declare-datatypes ((List!69315 0))(
  ( (Nil!69191) (Cons!69191 (h!75639 Context!14224) (t!383332 List!69315)) )
))
(declare-fun lt!2565574 () List!69315)

(declare-fun unfocusZipperList!2159 (List!69315) List!69314)

(assert (=> b!7135047 (= lt!2565570 (unfocusZipperList!2159 lt!2565574))))

(declare-fun b!7135048 () Bool)

(declare-fun res!2911300 () Bool)

(declare-fun e!4288137 () Bool)

(assert (=> b!7135048 (=> res!2911300 e!4288137)))

(declare-fun lt!2565575 () Bool)

(assert (=> b!7135048 (= res!2911300 (not lt!2565575))))

(declare-fun b!7135049 () Bool)

(declare-fun res!2911301 () Bool)

(assert (=> b!7135049 (=> res!2911301 e!4288137)))

(declare-fun exists!3843 (List!69314 Int) Bool)

(assert (=> b!7135049 (= res!2911301 (not (exists!3843 lt!2565570 lambda!433431)))))

(declare-fun b!7135050 () Bool)

(declare-fun e!4288136 () Bool)

(declare-fun tp!1967056 () Bool)

(assert (=> b!7135050 (= e!4288136 tp!1967056)))

(declare-fun setIsEmpty!52334 () Bool)

(declare-fun setRes!52334 () Bool)

(assert (=> setIsEmpty!52334 setRes!52334))

(declare-fun b!7135051 () Bool)

(declare-fun e!4288138 () Bool)

(declare-fun tp_is_empty!45873 () Bool)

(assert (=> b!7135051 (= e!4288138 tp_is_empty!45873)))

(declare-fun b!7135052 () Bool)

(declare-fun tp!1967051 () Bool)

(declare-fun tp!1967053 () Bool)

(assert (=> b!7135052 (= e!4288138 (and tp!1967051 tp!1967053))))

(declare-fun tp!1967057 () Bool)

(declare-fun setNonEmpty!52334 () Bool)

(declare-fun setElem!52334 () Context!14224)

(declare-fun inv!88360 (Context!14224) Bool)

(assert (=> setNonEmpty!52334 (= setRes!52334 (and tp!1967057 (inv!88360 setElem!52334) e!4288136))))

(declare-fun z!3189 () (Set Context!14224))

(declare-fun setRest!52334 () (Set Context!14224))

(assert (=> setNonEmpty!52334 (= z!3189 (set.union (set.insert setElem!52334 (as set.empty (Set Context!14224))) setRest!52334))))

(declare-fun e!4288135 () Bool)

(declare-fun e!4288131 () Bool)

(assert (=> b!7135053 (= e!4288135 e!4288131)))

(declare-fun res!2911296 () Bool)

(assert (=> b!7135053 (=> res!2911296 e!4288131)))

(declare-fun lambda!433432 () Int)

(declare-fun exists!3844 ((Set Context!14224) Int) Bool)

(assert (=> b!7135053 (= res!2911296 (not (exists!3844 z!3189 lambda!433432)))))

(declare-fun exists!3845 (List!69315 Int) Bool)

(assert (=> b!7135053 (exists!3845 lt!2565574 lambda!433432)))

(declare-datatypes ((Unit!163086 0))(
  ( (Unit!163087) )
))
(declare-fun lt!2565571 () Unit!163086)

(declare-fun lt!2565569 () Regex!18118)

(declare-fun lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!3 (List!69315 Regex!18118) Unit!163086)

(assert (=> b!7135053 (= lt!2565571 (lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!3 lt!2565574 lt!2565569))))

(declare-fun b!7135054 () Bool)

(declare-fun e!4288139 () Bool)

(assert (=> b!7135054 (= e!4288139 e!4288134)))

(declare-fun res!2911294 () Bool)

(assert (=> b!7135054 (=> (not res!2911294) (not e!4288134))))

(declare-fun unfocusZipper!2466 (List!69315) Regex!18118)

(assert (=> b!7135054 (= res!2911294 (= r!11483 (unfocusZipper!2466 lt!2565574)))))

(declare-fun toList!11149 ((Set Context!14224)) List!69315)

(assert (=> b!7135054 (= lt!2565574 (toList!11149 z!3189))))

(declare-fun b!7135055 () Bool)

(declare-fun tp!1967050 () Bool)

(assert (=> b!7135055 (= e!4288138 tp!1967050)))

(declare-fun res!2911295 () Bool)

(assert (=> start!695234 (=> (not res!2911295) (not e!4288139))))

(declare-fun validRegex!9285 (Regex!18118) Bool)

(assert (=> start!695234 (= res!2911295 (validRegex!9285 r!11483))))

(assert (=> start!695234 e!4288139))

(assert (=> start!695234 e!4288138))

(declare-fun condSetEmpty!52334 () Bool)

(assert (=> start!695234 (= condSetEmpty!52334 (= z!3189 (as set.empty (Set Context!14224))))))

(assert (=> start!695234 setRes!52334))

(declare-fun c!165 () Context!14224)

(assert (=> start!695234 (and (inv!88360 c!165) e!4288132)))

(declare-fun b!7135056 () Bool)

(assert (=> b!7135056 (= e!4288137 e!4288135)))

(declare-fun res!2911299 () Bool)

(assert (=> b!7135056 (=> res!2911299 e!4288135)))

(declare-fun nullable!7638 (Regex!18118) Bool)

(assert (=> b!7135056 (= res!2911299 (not (nullable!7638 lt!2565569)))))

(declare-fun getWitness!1867 (List!69314 Int) Regex!18118)

(assert (=> b!7135056 (= lt!2565569 (getWitness!1867 lt!2565570 lambda!433431))))

(declare-fun forall!16961 (List!69314 Int) Bool)

(assert (=> b!7135057 (= e!4288131 (forall!16961 (exprs!7612 c!165) lambda!433433))))

(declare-fun b!7135058 () Bool)

(declare-fun res!2911302 () Bool)

(assert (=> b!7135058 (=> res!2911302 e!4288135)))

(declare-fun contains!20558 (List!69314 Regex!18118) Bool)

(assert (=> b!7135058 (= res!2911302 (not (contains!20558 lt!2565570 lt!2565569)))))

(declare-fun b!7135059 () Bool)

(declare-fun tp!1967052 () Bool)

(declare-fun tp!1967054 () Bool)

(assert (=> b!7135059 (= e!4288138 (and tp!1967052 tp!1967054))))

(assert (=> b!7135060 (= e!4288133 (not e!4288137))))

(declare-fun res!2911298 () Bool)

(assert (=> b!7135060 (=> res!2911298 e!4288137)))

(assert (=> b!7135060 (= res!2911298 (not (= lt!2565575 (exists!3843 lt!2565570 lambda!433431))))))

(assert (=> b!7135060 (= lt!2565575 (exists!3843 lt!2565570 lambda!433431))))

(assert (=> b!7135060 (= lt!2565575 (nullable!7638 lt!2565572))))

(declare-fun lt!2565573 () Unit!163086)

(declare-fun nullableGenUnionSpec!7 (Regex!18118 List!69314) Unit!163086)

(assert (=> b!7135060 (= lt!2565573 (nullableGenUnionSpec!7 lt!2565572 lt!2565570))))

(assert (= (and start!695234 res!2911295) b!7135054))

(assert (= (and b!7135054 res!2911294) b!7135047))

(assert (= (and b!7135047 res!2911297) b!7135060))

(assert (= (and b!7135060 (not res!2911298)) b!7135048))

(assert (= (and b!7135048 (not res!2911300)) b!7135049))

(assert (= (and b!7135049 (not res!2911301)) b!7135056))

(assert (= (and b!7135056 (not res!2911299)) b!7135058))

(assert (= (and b!7135058 (not res!2911302)) b!7135053))

(assert (= (and b!7135053 (not res!2911296)) b!7135057))

(assert (= (and start!695234 (is-ElementMatch!18118 r!11483)) b!7135051))

(assert (= (and start!695234 (is-Concat!26963 r!11483)) b!7135052))

(assert (= (and start!695234 (is-Star!18118 r!11483)) b!7135055))

(assert (= (and start!695234 (is-Union!18118 r!11483)) b!7135059))

(assert (= (and start!695234 condSetEmpty!52334) setIsEmpty!52334))

(assert (= (and start!695234 (not condSetEmpty!52334)) setNonEmpty!52334))

(assert (= setNonEmpty!52334 b!7135050))

(assert (= start!695234 b!7135046))

(declare-fun m!7851490 () Bool)

(assert (=> b!7135057 m!7851490))

(declare-fun m!7851492 () Bool)

(assert (=> b!7135058 m!7851492))

(declare-fun m!7851494 () Bool)

(assert (=> start!695234 m!7851494))

(declare-fun m!7851496 () Bool)

(assert (=> start!695234 m!7851496))

(declare-fun m!7851498 () Bool)

(assert (=> b!7135047 m!7851498))

(declare-fun m!7851500 () Bool)

(assert (=> b!7135047 m!7851500))

(declare-fun m!7851502 () Bool)

(assert (=> b!7135053 m!7851502))

(declare-fun m!7851504 () Bool)

(assert (=> b!7135053 m!7851504))

(declare-fun m!7851506 () Bool)

(assert (=> b!7135053 m!7851506))

(declare-fun m!7851508 () Bool)

(assert (=> setNonEmpty!52334 m!7851508))

(declare-fun m!7851510 () Bool)

(assert (=> b!7135049 m!7851510))

(assert (=> b!7135060 m!7851510))

(assert (=> b!7135060 m!7851510))

(declare-fun m!7851512 () Bool)

(assert (=> b!7135060 m!7851512))

(declare-fun m!7851514 () Bool)

(assert (=> b!7135060 m!7851514))

(declare-fun m!7851516 () Bool)

(assert (=> b!7135054 m!7851516))

(declare-fun m!7851518 () Bool)

(assert (=> b!7135054 m!7851518))

(declare-fun m!7851520 () Bool)

(assert (=> b!7135056 m!7851520))

(declare-fun m!7851522 () Bool)

(assert (=> b!7135056 m!7851522))

(push 1)

(assert tp_is_empty!45873)

(assert (not b!7135049))

(assert (not b!7135046))

(assert (not b!7135054))

(assert (not b!7135060))

(assert (not start!695234))

(assert (not b!7135047))

(assert (not b!7135059))

(assert (not b!7135056))

(assert (not b!7135050))

(assert (not b!7135055))

(assert (not b!7135053))

(assert (not b!7135052))

(assert (not b!7135057))

(assert (not setNonEmpty!52334))

(assert (not b!7135058))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2226238 () Bool)

(declare-fun lt!2565599 () Bool)

(declare-fun content!14160 (List!69314) (Set Regex!18118))

(assert (=> d!2226238 (= lt!2565599 (set.member lt!2565569 (content!14160 lt!2565570)))))

(declare-fun e!4288172 () Bool)

(assert (=> d!2226238 (= lt!2565599 e!4288172)))

(declare-fun res!2911334 () Bool)

(assert (=> d!2226238 (=> (not res!2911334) (not e!4288172))))

(assert (=> d!2226238 (= res!2911334 (is-Cons!69190 lt!2565570))))

(assert (=> d!2226238 (= (contains!20558 lt!2565570 lt!2565569) lt!2565599)))

(declare-fun b!7135114 () Bool)

(declare-fun e!4288171 () Bool)

(assert (=> b!7135114 (= e!4288172 e!4288171)))

(declare-fun res!2911335 () Bool)

(assert (=> b!7135114 (=> res!2911335 e!4288171)))

(assert (=> b!7135114 (= res!2911335 (= (h!75638 lt!2565570) lt!2565569))))

(declare-fun b!7135115 () Bool)

(assert (=> b!7135115 (= e!4288171 (contains!20558 (t!383331 lt!2565570) lt!2565569))))

(assert (= (and d!2226238 res!2911334) b!7135114))

(assert (= (and b!7135114 (not res!2911335)) b!7135115))

(declare-fun m!7851558 () Bool)

(assert (=> d!2226238 m!7851558))

(declare-fun m!7851560 () Bool)

(assert (=> d!2226238 m!7851560))

(declare-fun m!7851562 () Bool)

(assert (=> b!7135115 m!7851562))

(assert (=> b!7135058 d!2226238))

(declare-fun bs!1887195 () Bool)

(declare-fun d!2226240 () Bool)

(assert (= bs!1887195 (and d!2226240 b!7135060)))

(declare-fun lambda!433453 () Int)

(assert (=> bs!1887195 (not (= lambda!433453 lambda!433431))))

(declare-fun bs!1887196 () Bool)

(assert (= bs!1887196 (and d!2226240 b!7135057)))

(assert (=> bs!1887196 (not (= lambda!433453 lambda!433433))))

(assert (=> d!2226240 true))

(declare-fun order!28495 () Int)

(declare-fun dynLambda!28136 (Int Int) Int)

(assert (=> d!2226240 (< (dynLambda!28136 order!28495 lambda!433431) (dynLambda!28136 order!28495 lambda!433453))))

(assert (=> d!2226240 (= (exists!3843 lt!2565570 lambda!433431) (not (forall!16961 lt!2565570 lambda!433453)))))

(declare-fun bs!1887197 () Bool)

(assert (= bs!1887197 d!2226240))

(declare-fun m!7851564 () Bool)

(assert (=> bs!1887197 m!7851564))

(assert (=> b!7135049 d!2226240))

(declare-fun bs!1887198 () Bool)

(declare-fun d!2226242 () Bool)

(assert (= bs!1887198 (and d!2226242 b!7135060)))

(declare-fun lambda!433456 () Int)

(assert (=> bs!1887198 (not (= lambda!433456 lambda!433431))))

(declare-fun bs!1887199 () Bool)

(assert (= bs!1887199 (and d!2226242 b!7135057)))

(assert (=> bs!1887199 (= lambda!433456 lambda!433433)))

(declare-fun bs!1887200 () Bool)

(assert (= bs!1887200 (and d!2226242 d!2226240)))

(assert (=> bs!1887200 (not (= lambda!433456 lambda!433453))))

(assert (=> d!2226242 (= (inv!88360 setElem!52334) (forall!16961 (exprs!7612 setElem!52334) lambda!433456))))

(declare-fun bs!1887201 () Bool)

(assert (= bs!1887201 d!2226242))

(declare-fun m!7851566 () Bool)

(assert (=> bs!1887201 m!7851566))

(assert (=> setNonEmpty!52334 d!2226242))

(declare-fun d!2226244 () Bool)

(declare-fun res!2911340 () Bool)

(declare-fun e!4288177 () Bool)

(assert (=> d!2226244 (=> res!2911340 e!4288177)))

(assert (=> d!2226244 (= res!2911340 (is-Nil!69190 (exprs!7612 c!165)))))

(assert (=> d!2226244 (= (forall!16961 (exprs!7612 c!165) lambda!433433) e!4288177)))

(declare-fun b!7135122 () Bool)

(declare-fun e!4288178 () Bool)

(assert (=> b!7135122 (= e!4288177 e!4288178)))

(declare-fun res!2911341 () Bool)

(assert (=> b!7135122 (=> (not res!2911341) (not e!4288178))))

(declare-fun dynLambda!28137 (Int Regex!18118) Bool)

(assert (=> b!7135122 (= res!2911341 (dynLambda!28137 lambda!433433 (h!75638 (exprs!7612 c!165))))))

(declare-fun b!7135123 () Bool)

(assert (=> b!7135123 (= e!4288178 (forall!16961 (t!383331 (exprs!7612 c!165)) lambda!433433))))

(assert (= (and d!2226244 (not res!2911340)) b!7135122))

(assert (= (and b!7135122 res!2911341) b!7135123))

(declare-fun b_lambda!272229 () Bool)

(assert (=> (not b_lambda!272229) (not b!7135122)))

(declare-fun m!7851568 () Bool)

(assert (=> b!7135122 m!7851568))

(declare-fun m!7851570 () Bool)

(assert (=> b!7135123 m!7851570))

(assert (=> b!7135057 d!2226244))

(declare-fun d!2226246 () Bool)

(declare-fun nullableFct!2968 (Regex!18118) Bool)

(assert (=> d!2226246 (= (nullable!7638 lt!2565569) (nullableFct!2968 lt!2565569))))

(declare-fun bs!1887202 () Bool)

(assert (= bs!1887202 d!2226246))

(declare-fun m!7851572 () Bool)

(assert (=> bs!1887202 m!7851572))

(assert (=> b!7135056 d!2226246))

(declare-fun b!7135136 () Bool)

(declare-fun e!4288190 () Regex!18118)

(declare-fun e!4288188 () Regex!18118)

(assert (=> b!7135136 (= e!4288190 e!4288188)))

(declare-fun c!1330617 () Bool)

(assert (=> b!7135136 (= c!1330617 (is-Cons!69190 lt!2565570))))

(declare-fun b!7135137 () Bool)

(declare-fun lt!2565604 () Unit!163086)

(declare-fun Unit!163090 () Unit!163086)

(assert (=> b!7135137 (= lt!2565604 Unit!163090)))

(assert (=> b!7135137 false))

(declare-fun head!14483 (List!69314) Regex!18118)

(assert (=> b!7135137 (= e!4288188 (head!14483 lt!2565570))))

(declare-fun b!7135138 () Bool)

(declare-fun e!4288187 () Bool)

(declare-fun lt!2565605 () Regex!18118)

(assert (=> b!7135138 (= e!4288187 (contains!20558 lt!2565570 lt!2565605))))

(declare-fun b!7135139 () Bool)

(assert (=> b!7135139 (= e!4288188 (getWitness!1867 (t!383331 lt!2565570) lambda!433431))))

(declare-fun b!7135140 () Bool)

(declare-fun e!4288189 () Bool)

(assert (=> b!7135140 (= e!4288189 (dynLambda!28137 lambda!433431 (h!75638 lt!2565570)))))

(declare-fun d!2226248 () Bool)

(assert (=> d!2226248 e!4288187))

(declare-fun res!2911346 () Bool)

(assert (=> d!2226248 (=> (not res!2911346) (not e!4288187))))

(assert (=> d!2226248 (= res!2911346 (dynLambda!28137 lambda!433431 lt!2565605))))

(assert (=> d!2226248 (= lt!2565605 e!4288190)))

(declare-fun c!1330618 () Bool)

(assert (=> d!2226248 (= c!1330618 e!4288189)))

(declare-fun res!2911347 () Bool)

(assert (=> d!2226248 (=> (not res!2911347) (not e!4288189))))

(assert (=> d!2226248 (= res!2911347 (is-Cons!69190 lt!2565570))))

(assert (=> d!2226248 (exists!3843 lt!2565570 lambda!433431)))

(assert (=> d!2226248 (= (getWitness!1867 lt!2565570 lambda!433431) lt!2565605)))

(declare-fun b!7135141 () Bool)

(assert (=> b!7135141 (= e!4288190 (h!75638 lt!2565570))))

(assert (= (and d!2226248 res!2911347) b!7135140))

(assert (= (and d!2226248 c!1330618) b!7135141))

(assert (= (and d!2226248 (not c!1330618)) b!7135136))

(assert (= (and b!7135136 c!1330617) b!7135139))

(assert (= (and b!7135136 (not c!1330617)) b!7135137))

(assert (= (and d!2226248 res!2911346) b!7135138))

(declare-fun b_lambda!272231 () Bool)

(assert (=> (not b_lambda!272231) (not b!7135140)))

(declare-fun b_lambda!272233 () Bool)

(assert (=> (not b_lambda!272233) (not d!2226248)))

(declare-fun m!7851574 () Bool)

(assert (=> b!7135138 m!7851574))

(declare-fun m!7851576 () Bool)

(assert (=> b!7135140 m!7851576))

(declare-fun m!7851578 () Bool)

(assert (=> b!7135139 m!7851578))

(declare-fun m!7851580 () Bool)

(assert (=> b!7135137 m!7851580))

(declare-fun m!7851582 () Bool)

(assert (=> d!2226248 m!7851582))

(assert (=> d!2226248 m!7851510))

(assert (=> b!7135056 d!2226248))

(declare-fun bs!1887204 () Bool)

(declare-fun d!2226252 () Bool)

(assert (= bs!1887204 (and d!2226252 b!7135060)))

(declare-fun lambda!433459 () Int)

(assert (=> bs!1887204 (not (= lambda!433459 lambda!433431))))

(declare-fun bs!1887205 () Bool)

(assert (= bs!1887205 (and d!2226252 b!7135057)))

(assert (=> bs!1887205 (= lambda!433459 lambda!433433)))

(declare-fun bs!1887206 () Bool)

(assert (= bs!1887206 (and d!2226252 d!2226240)))

(assert (=> bs!1887206 (not (= lambda!433459 lambda!433453))))

(declare-fun bs!1887207 () Bool)

(assert (= bs!1887207 (and d!2226252 d!2226242)))

(assert (=> bs!1887207 (= lambda!433459 lambda!433456)))

(declare-fun b!7135165 () Bool)

(declare-fun e!4288209 () Regex!18118)

(assert (=> b!7135165 (= e!4288209 (Union!18118 (h!75638 lt!2565570) (generalisedUnion!2623 (t!383331 lt!2565570))))))

(declare-fun b!7135166 () Bool)

(assert (=> b!7135166 (= e!4288209 EmptyLang!18118)))

(declare-fun b!7135167 () Bool)

(declare-fun e!4288208 () Bool)

(declare-fun e!4288211 () Bool)

(assert (=> b!7135167 (= e!4288208 e!4288211)))

(declare-fun c!1330627 () Bool)

(declare-fun isEmpty!40044 (List!69314) Bool)

(assert (=> b!7135167 (= c!1330627 (isEmpty!40044 lt!2565570))))

(declare-fun b!7135168 () Bool)

(declare-fun e!4288206 () Bool)

(assert (=> b!7135168 (= e!4288211 e!4288206)))

(declare-fun c!1330630 () Bool)

(declare-fun tail!13955 (List!69314) List!69314)

(assert (=> b!7135168 (= c!1330630 (isEmpty!40044 (tail!13955 lt!2565570)))))

(declare-fun b!7135169 () Bool)

(declare-fun lt!2565614 () Regex!18118)

(assert (=> b!7135169 (= e!4288206 (= lt!2565614 (head!14483 lt!2565570)))))

(declare-fun b!7135170 () Bool)

(declare-fun e!4288207 () Regex!18118)

(assert (=> b!7135170 (= e!4288207 (h!75638 lt!2565570))))

(declare-fun b!7135171 () Bool)

(declare-fun e!4288210 () Bool)

(assert (=> b!7135171 (= e!4288210 (isEmpty!40044 (t!383331 lt!2565570)))))

(declare-fun b!7135172 () Bool)

(declare-fun isUnion!1504 (Regex!18118) Bool)

(assert (=> b!7135172 (= e!4288206 (isUnion!1504 lt!2565614))))

(assert (=> d!2226252 e!4288208))

(declare-fun res!2911356 () Bool)

(assert (=> d!2226252 (=> (not res!2911356) (not e!4288208))))

(assert (=> d!2226252 (= res!2911356 (validRegex!9285 lt!2565614))))

(assert (=> d!2226252 (= lt!2565614 e!4288207)))

(declare-fun c!1330628 () Bool)

(assert (=> d!2226252 (= c!1330628 e!4288210)))

(declare-fun res!2911355 () Bool)

(assert (=> d!2226252 (=> (not res!2911355) (not e!4288210))))

(assert (=> d!2226252 (= res!2911355 (is-Cons!69190 lt!2565570))))

(assert (=> d!2226252 (forall!16961 lt!2565570 lambda!433459)))

(assert (=> d!2226252 (= (generalisedUnion!2623 lt!2565570) lt!2565614)))

(declare-fun b!7135173 () Bool)

(assert (=> b!7135173 (= e!4288207 e!4288209)))

(declare-fun c!1330629 () Bool)

(assert (=> b!7135173 (= c!1330629 (is-Cons!69190 lt!2565570))))

(declare-fun b!7135174 () Bool)

(declare-fun isEmptyLang!2076 (Regex!18118) Bool)

(assert (=> b!7135174 (= e!4288211 (isEmptyLang!2076 lt!2565614))))

(assert (= (and d!2226252 res!2911355) b!7135171))

(assert (= (and d!2226252 c!1330628) b!7135170))

(assert (= (and d!2226252 (not c!1330628)) b!7135173))

(assert (= (and b!7135173 c!1330629) b!7135165))

(assert (= (and b!7135173 (not c!1330629)) b!7135166))

(assert (= (and d!2226252 res!2911356) b!7135167))

(assert (= (and b!7135167 c!1330627) b!7135174))

(assert (= (and b!7135167 (not c!1330627)) b!7135168))

(assert (= (and b!7135168 c!1330630) b!7135169))

(assert (= (and b!7135168 (not c!1330630)) b!7135172))

(declare-fun m!7851594 () Bool)

(assert (=> b!7135167 m!7851594))

(declare-fun m!7851596 () Bool)

(assert (=> b!7135174 m!7851596))

(declare-fun m!7851598 () Bool)

(assert (=> b!7135171 m!7851598))

(declare-fun m!7851600 () Bool)

(assert (=> b!7135172 m!7851600))

(declare-fun m!7851602 () Bool)

(assert (=> b!7135168 m!7851602))

(assert (=> b!7135168 m!7851602))

(declare-fun m!7851604 () Bool)

(assert (=> b!7135168 m!7851604))

(declare-fun m!7851606 () Bool)

(assert (=> b!7135165 m!7851606))

(assert (=> b!7135169 m!7851580))

(declare-fun m!7851608 () Bool)

(assert (=> d!2226252 m!7851608))

(declare-fun m!7851610 () Bool)

(assert (=> d!2226252 m!7851610))

(assert (=> b!7135047 d!2226252))

(declare-fun bs!1887211 () Bool)

(declare-fun d!2226258 () Bool)

(assert (= bs!1887211 (and d!2226258 d!2226242)))

(declare-fun lambda!433465 () Int)

(assert (=> bs!1887211 (= lambda!433465 lambda!433456)))

(declare-fun bs!1887212 () Bool)

(assert (= bs!1887212 (and d!2226258 d!2226252)))

(assert (=> bs!1887212 (= lambda!433465 lambda!433459)))

(declare-fun bs!1887213 () Bool)

(assert (= bs!1887213 (and d!2226258 d!2226240)))

(assert (=> bs!1887213 (not (= lambda!433465 lambda!433453))))

(declare-fun bs!1887214 () Bool)

(assert (= bs!1887214 (and d!2226258 b!7135057)))

(assert (=> bs!1887214 (= lambda!433465 lambda!433433)))

(declare-fun bs!1887215 () Bool)

(assert (= bs!1887215 (and d!2226258 b!7135060)))

(assert (=> bs!1887215 (not (= lambda!433465 lambda!433431))))

(declare-fun lt!2565617 () List!69314)

(assert (=> d!2226258 (forall!16961 lt!2565617 lambda!433465)))

(declare-fun e!4288214 () List!69314)

(assert (=> d!2226258 (= lt!2565617 e!4288214)))

(declare-fun c!1330633 () Bool)

(assert (=> d!2226258 (= c!1330633 (is-Cons!69191 lt!2565574))))

(assert (=> d!2226258 (= (unfocusZipperList!2159 lt!2565574) lt!2565617)))

(declare-fun b!7135181 () Bool)

(declare-fun generalisedConcat!2315 (List!69314) Regex!18118)

(assert (=> b!7135181 (= e!4288214 (Cons!69190 (generalisedConcat!2315 (exprs!7612 (h!75639 lt!2565574))) (unfocusZipperList!2159 (t!383332 lt!2565574))))))

(declare-fun b!7135182 () Bool)

(assert (=> b!7135182 (= e!4288214 Nil!69190)))

(assert (= (and d!2226258 c!1330633) b!7135181))

(assert (= (and d!2226258 (not c!1330633)) b!7135182))

(declare-fun m!7851614 () Bool)

(assert (=> d!2226258 m!7851614))

(declare-fun m!7851616 () Bool)

(assert (=> b!7135181 m!7851616))

(declare-fun m!7851618 () Bool)

(assert (=> b!7135181 m!7851618))

(assert (=> b!7135047 d!2226258))

(declare-fun b!7135201 () Bool)

(declare-fun res!2911369 () Bool)

(declare-fun e!4288229 () Bool)

(assert (=> b!7135201 (=> (not res!2911369) (not e!4288229))))

(declare-fun call!650937 () Bool)

(assert (=> b!7135201 (= res!2911369 call!650937)))

(declare-fun e!4288235 () Bool)

(assert (=> b!7135201 (= e!4288235 e!4288229)))

(declare-fun b!7135202 () Bool)

(declare-fun e!4288232 () Bool)

(declare-fun e!4288231 () Bool)

(assert (=> b!7135202 (= e!4288232 e!4288231)))

(declare-fun res!2911370 () Bool)

(assert (=> b!7135202 (= res!2911370 (not (nullable!7638 (reg!18447 r!11483))))))

(assert (=> b!7135202 (=> (not res!2911370) (not e!4288231))))

(declare-fun c!1330638 () Bool)

(declare-fun call!650936 () Bool)

(declare-fun c!1330639 () Bool)

(declare-fun bm!650930 () Bool)

(assert (=> bm!650930 (= call!650936 (validRegex!9285 (ite c!1330638 (reg!18447 r!11483) (ite c!1330639 (regOne!36749 r!11483) (regOne!36748 r!11483)))))))

(declare-fun b!7135203 () Bool)

(declare-fun e!4288230 () Bool)

(assert (=> b!7135203 (= e!4288230 e!4288232)))

(assert (=> b!7135203 (= c!1330638 (is-Star!18118 r!11483))))

(declare-fun b!7135204 () Bool)

(declare-fun e!4288234 () Bool)

(declare-fun e!4288233 () Bool)

(assert (=> b!7135204 (= e!4288234 e!4288233)))

(declare-fun res!2911367 () Bool)

(assert (=> b!7135204 (=> (not res!2911367) (not e!4288233))))

(assert (=> b!7135204 (= res!2911367 call!650937)))

(declare-fun b!7135205 () Bool)

(assert (=> b!7135205 (= e!4288232 e!4288235)))

(assert (=> b!7135205 (= c!1330639 (is-Union!18118 r!11483))))

(declare-fun bm!650931 () Bool)

(declare-fun call!650935 () Bool)

(assert (=> bm!650931 (= call!650935 (validRegex!9285 (ite c!1330639 (regTwo!36749 r!11483) (regTwo!36748 r!11483))))))

(declare-fun d!2226262 () Bool)

(declare-fun res!2911368 () Bool)

(assert (=> d!2226262 (=> res!2911368 e!4288230)))

(assert (=> d!2226262 (= res!2911368 (is-ElementMatch!18118 r!11483))))

(assert (=> d!2226262 (= (validRegex!9285 r!11483) e!4288230)))

(declare-fun b!7135206 () Bool)

(declare-fun res!2911371 () Bool)

(assert (=> b!7135206 (=> res!2911371 e!4288234)))

(assert (=> b!7135206 (= res!2911371 (not (is-Concat!26963 r!11483)))))

(assert (=> b!7135206 (= e!4288235 e!4288234)))

(declare-fun bm!650932 () Bool)

(assert (=> bm!650932 (= call!650937 call!650936)))

(declare-fun b!7135207 () Bool)

(assert (=> b!7135207 (= e!4288231 call!650936)))

(declare-fun b!7135208 () Bool)

(assert (=> b!7135208 (= e!4288233 call!650935)))

(declare-fun b!7135209 () Bool)

(assert (=> b!7135209 (= e!4288229 call!650935)))

(assert (= (and d!2226262 (not res!2911368)) b!7135203))

(assert (= (and b!7135203 c!1330638) b!7135202))

(assert (= (and b!7135203 (not c!1330638)) b!7135205))

(assert (= (and b!7135202 res!2911370) b!7135207))

(assert (= (and b!7135205 c!1330639) b!7135201))

(assert (= (and b!7135205 (not c!1330639)) b!7135206))

(assert (= (and b!7135201 res!2911369) b!7135209))

(assert (= (and b!7135206 (not res!2911371)) b!7135204))

(assert (= (and b!7135204 res!2911367) b!7135208))

(assert (= (or b!7135209 b!7135208) bm!650931))

(assert (= (or b!7135201 b!7135204) bm!650932))

(assert (= (or b!7135207 bm!650932) bm!650930))

(declare-fun m!7851622 () Bool)

(assert (=> b!7135202 m!7851622))

(declare-fun m!7851624 () Bool)

(assert (=> bm!650930 m!7851624))

(declare-fun m!7851626 () Bool)

(assert (=> bm!650931 m!7851626))

(assert (=> start!695234 d!2226262))

(declare-fun bs!1887217 () Bool)

(declare-fun d!2226266 () Bool)

(assert (= bs!1887217 (and d!2226266 d!2226242)))

(declare-fun lambda!433470 () Int)

(assert (=> bs!1887217 (= lambda!433470 lambda!433456)))

(declare-fun bs!1887218 () Bool)

(assert (= bs!1887218 (and d!2226266 d!2226252)))

(assert (=> bs!1887218 (= lambda!433470 lambda!433459)))

(declare-fun bs!1887219 () Bool)

(assert (= bs!1887219 (and d!2226266 d!2226240)))

(assert (=> bs!1887219 (not (= lambda!433470 lambda!433453))))

(declare-fun bs!1887220 () Bool)

(assert (= bs!1887220 (and d!2226266 b!7135057)))

(assert (=> bs!1887220 (= lambda!433470 lambda!433433)))

(declare-fun bs!1887221 () Bool)

(assert (= bs!1887221 (and d!2226266 b!7135060)))

(assert (=> bs!1887221 (not (= lambda!433470 lambda!433431))))

(declare-fun bs!1887222 () Bool)

(assert (= bs!1887222 (and d!2226266 d!2226258)))

(assert (=> bs!1887222 (= lambda!433470 lambda!433465)))

(assert (=> d!2226266 (= (inv!88360 c!165) (forall!16961 (exprs!7612 c!165) lambda!433470))))

(declare-fun bs!1887223 () Bool)

(assert (= bs!1887223 d!2226266))

(declare-fun m!7851628 () Bool)

(assert (=> bs!1887223 m!7851628))

(assert (=> start!695234 d!2226266))

(assert (=> b!7135060 d!2226240))

(declare-fun d!2226268 () Bool)

(assert (=> d!2226268 (= (nullable!7638 lt!2565572) (nullableFct!2968 lt!2565572))))

(declare-fun bs!1887224 () Bool)

(assert (= bs!1887224 d!2226268))

(declare-fun m!7851630 () Bool)

(assert (=> bs!1887224 m!7851630))

(assert (=> b!7135060 d!2226268))

(declare-fun bs!1887229 () Bool)

(declare-fun d!2226270 () Bool)

(assert (= bs!1887229 (and d!2226270 d!2226242)))

(declare-fun lambda!433477 () Int)

(assert (=> bs!1887229 (= lambda!433477 lambda!433456)))

(declare-fun bs!1887230 () Bool)

(assert (= bs!1887230 (and d!2226270 d!2226252)))

(assert (=> bs!1887230 (= lambda!433477 lambda!433459)))

(declare-fun bs!1887231 () Bool)

(assert (= bs!1887231 (and d!2226270 d!2226240)))

(assert (=> bs!1887231 (not (= lambda!433477 lambda!433453))))

(declare-fun bs!1887232 () Bool)

(assert (= bs!1887232 (and d!2226270 b!7135057)))

(assert (=> bs!1887232 (= lambda!433477 lambda!433433)))

(declare-fun bs!1887233 () Bool)

(assert (= bs!1887233 (and d!2226270 b!7135060)))

(assert (=> bs!1887233 (not (= lambda!433477 lambda!433431))))

(declare-fun bs!1887234 () Bool)

(assert (= bs!1887234 (and d!2226270 d!2226266)))

(assert (=> bs!1887234 (= lambda!433477 lambda!433470)))

(declare-fun bs!1887235 () Bool)

(assert (= bs!1887235 (and d!2226270 d!2226258)))

(assert (=> bs!1887235 (= lambda!433477 lambda!433465)))

(declare-fun lambda!433478 () Int)

(assert (=> bs!1887229 (not (= lambda!433478 lambda!433456))))

(assert (=> bs!1887230 (not (= lambda!433478 lambda!433459))))

(assert (=> bs!1887231 (not (= lambda!433478 lambda!433453))))

(assert (=> bs!1887232 (not (= lambda!433478 lambda!433433))))

(assert (=> bs!1887233 (= lambda!433478 lambda!433431)))

(assert (=> bs!1887234 (not (= lambda!433478 lambda!433470))))

(declare-fun bs!1887236 () Bool)

(assert (= bs!1887236 d!2226270))

(assert (=> bs!1887236 (not (= lambda!433478 lambda!433477))))

(assert (=> bs!1887235 (not (= lambda!433478 lambda!433465))))

(assert (=> d!2226270 (= (nullable!7638 lt!2565572) (exists!3843 lt!2565570 lambda!433478))))

(declare-fun lt!2565623 () Unit!163086)

(declare-fun choose!55149 (Regex!18118 List!69314) Unit!163086)

(assert (=> d!2226270 (= lt!2565623 (choose!55149 lt!2565572 lt!2565570))))

(assert (=> d!2226270 (forall!16961 lt!2565570 lambda!433477)))

(assert (=> d!2226270 (= (nullableGenUnionSpec!7 lt!2565572 lt!2565570) lt!2565623)))

(assert (=> bs!1887236 m!7851512))

(declare-fun m!7851638 () Bool)

(assert (=> bs!1887236 m!7851638))

(declare-fun m!7851640 () Bool)

(assert (=> bs!1887236 m!7851640))

(declare-fun m!7851642 () Bool)

(assert (=> bs!1887236 m!7851642))

(assert (=> b!7135060 d!2226270))

(declare-fun d!2226274 () Bool)

(declare-fun lt!2565628 () Regex!18118)

(assert (=> d!2226274 (validRegex!9285 lt!2565628)))

(assert (=> d!2226274 (= lt!2565628 (generalisedUnion!2623 (unfocusZipperList!2159 lt!2565574)))))

(assert (=> d!2226274 (= (unfocusZipper!2466 lt!2565574) lt!2565628)))

(declare-fun bs!1887237 () Bool)

(assert (= bs!1887237 d!2226274))

(declare-fun m!7851644 () Bool)

(assert (=> bs!1887237 m!7851644))

(assert (=> bs!1887237 m!7851500))

(assert (=> bs!1887237 m!7851500))

(declare-fun m!7851646 () Bool)

(assert (=> bs!1887237 m!7851646))

(assert (=> b!7135054 d!2226274))

(declare-fun d!2226276 () Bool)

(declare-fun e!4288238 () Bool)

(assert (=> d!2226276 e!4288238))

(declare-fun res!2911374 () Bool)

(assert (=> d!2226276 (=> (not res!2911374) (not e!4288238))))

(declare-fun lt!2565632 () List!69315)

(declare-fun noDuplicate!2807 (List!69315) Bool)

(assert (=> d!2226276 (= res!2911374 (noDuplicate!2807 lt!2565632))))

(declare-fun choose!55150 ((Set Context!14224)) List!69315)

(assert (=> d!2226276 (= lt!2565632 (choose!55150 z!3189))))

(assert (=> d!2226276 (= (toList!11149 z!3189) lt!2565632)))

(declare-fun b!7135212 () Bool)

(declare-fun content!14161 (List!69315) (Set Context!14224))

(assert (=> b!7135212 (= e!4288238 (= (content!14161 lt!2565632) z!3189))))

(assert (= (and d!2226276 res!2911374) b!7135212))

(declare-fun m!7851652 () Bool)

(assert (=> d!2226276 m!7851652))

(declare-fun m!7851654 () Bool)

(assert (=> d!2226276 m!7851654))

(declare-fun m!7851656 () Bool)

(assert (=> b!7135212 m!7851656))

(assert (=> b!7135054 d!2226276))

(declare-fun d!2226280 () Bool)

(declare-fun lt!2565635 () Bool)

(assert (=> d!2226280 (= lt!2565635 (exists!3845 (toList!11149 z!3189) lambda!433432))))

(declare-fun choose!55151 ((Set Context!14224) Int) Bool)

(assert (=> d!2226280 (= lt!2565635 (choose!55151 z!3189 lambda!433432))))

(assert (=> d!2226280 (= (exists!3844 z!3189 lambda!433432) lt!2565635)))

(declare-fun bs!1887239 () Bool)

(assert (= bs!1887239 d!2226280))

(assert (=> bs!1887239 m!7851518))

(assert (=> bs!1887239 m!7851518))

(declare-fun m!7851658 () Bool)

(assert (=> bs!1887239 m!7851658))

(declare-fun m!7851660 () Bool)

(assert (=> bs!1887239 m!7851660))

(assert (=> b!7135053 d!2226280))

(declare-fun bs!1887242 () Bool)

(declare-fun d!2226282 () Bool)

(assert (= bs!1887242 (and d!2226282 b!7135053)))

(declare-fun lambda!433484 () Int)

(assert (=> bs!1887242 (not (= lambda!433484 lambda!433432))))

(assert (=> d!2226282 true))

(declare-fun order!28501 () Int)

(declare-fun dynLambda!28138 (Int Int) Int)

(assert (=> d!2226282 (< (dynLambda!28138 order!28501 lambda!433432) (dynLambda!28138 order!28501 lambda!433484))))

(declare-fun forall!16963 (List!69315 Int) Bool)

(assert (=> d!2226282 (= (exists!3845 lt!2565574 lambda!433432) (not (forall!16963 lt!2565574 lambda!433484)))))

(declare-fun bs!1887243 () Bool)

(assert (= bs!1887243 d!2226282))

(declare-fun m!7851664 () Bool)

(assert (=> bs!1887243 m!7851664))

(assert (=> b!7135053 d!2226282))

(declare-fun bs!1887244 () Bool)

(declare-fun d!2226286 () Bool)

(assert (= bs!1887244 (and d!2226286 b!7135053)))

(declare-fun lambda!433487 () Int)

(assert (=> bs!1887244 (= lambda!433487 lambda!433432)))

(declare-fun bs!1887245 () Bool)

(assert (= bs!1887245 (and d!2226286 d!2226282)))

(assert (=> bs!1887245 (not (= lambda!433487 lambda!433484))))

(assert (=> d!2226286 true))

(assert (=> d!2226286 (exists!3845 lt!2565574 lambda!433487)))

(declare-fun lt!2565638 () Unit!163086)

(declare-fun choose!55152 (List!69315 Regex!18118) Unit!163086)

(assert (=> d!2226286 (= lt!2565638 (choose!55152 lt!2565574 lt!2565569))))

(assert (=> d!2226286 (contains!20558 (unfocusZipperList!2159 lt!2565574) lt!2565569)))

(assert (=> d!2226286 (= (lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!3 lt!2565574 lt!2565569) lt!2565638)))

(declare-fun bs!1887246 () Bool)

(assert (= bs!1887246 d!2226286))

(declare-fun m!7851666 () Bool)

(assert (=> bs!1887246 m!7851666))

(declare-fun m!7851668 () Bool)

(assert (=> bs!1887246 m!7851668))

(assert (=> bs!1887246 m!7851500))

(assert (=> bs!1887246 m!7851500))

(declare-fun m!7851670 () Bool)

(assert (=> bs!1887246 m!7851670))

(assert (=> b!7135053 d!2226286))

(declare-fun condSetEmpty!52340 () Bool)

(assert (=> setNonEmpty!52334 (= condSetEmpty!52340 (= setRest!52334 (as set.empty (Set Context!14224))))))

(declare-fun setRes!52340 () Bool)

(assert (=> setNonEmpty!52334 (= tp!1967057 setRes!52340)))

(declare-fun setIsEmpty!52340 () Bool)

(assert (=> setIsEmpty!52340 setRes!52340))

(declare-fun tp!1967086 () Bool)

(declare-fun setElem!52340 () Context!14224)

(declare-fun setNonEmpty!52340 () Bool)

(declare-fun e!4288241 () Bool)

(assert (=> setNonEmpty!52340 (= setRes!52340 (and tp!1967086 (inv!88360 setElem!52340) e!4288241))))

(declare-fun setRest!52340 () (Set Context!14224))

(assert (=> setNonEmpty!52340 (= setRest!52334 (set.union (set.insert setElem!52340 (as set.empty (Set Context!14224))) setRest!52340))))

(declare-fun b!7135221 () Bool)

(declare-fun tp!1967087 () Bool)

(assert (=> b!7135221 (= e!4288241 tp!1967087)))

(assert (= (and setNonEmpty!52334 condSetEmpty!52340) setIsEmpty!52340))

(assert (= (and setNonEmpty!52334 (not condSetEmpty!52340)) setNonEmpty!52340))

(assert (= setNonEmpty!52340 b!7135221))

(declare-fun m!7851672 () Bool)

(assert (=> setNonEmpty!52340 m!7851672))

(declare-fun b!7135233 () Bool)

(declare-fun e!4288244 () Bool)

(declare-fun tp!1967102 () Bool)

(declare-fun tp!1967100 () Bool)

(assert (=> b!7135233 (= e!4288244 (and tp!1967102 tp!1967100))))

(assert (=> b!7135052 (= tp!1967051 e!4288244)))

(declare-fun b!7135234 () Bool)

(declare-fun tp!1967099 () Bool)

(assert (=> b!7135234 (= e!4288244 tp!1967099)))

(declare-fun b!7135235 () Bool)

(declare-fun tp!1967098 () Bool)

(declare-fun tp!1967101 () Bool)

(assert (=> b!7135235 (= e!4288244 (and tp!1967098 tp!1967101))))

(declare-fun b!7135232 () Bool)

(assert (=> b!7135232 (= e!4288244 tp_is_empty!45873)))

(assert (= (and b!7135052 (is-ElementMatch!18118 (regOne!36748 r!11483))) b!7135232))

(assert (= (and b!7135052 (is-Concat!26963 (regOne!36748 r!11483))) b!7135233))

(assert (= (and b!7135052 (is-Star!18118 (regOne!36748 r!11483))) b!7135234))

(assert (= (and b!7135052 (is-Union!18118 (regOne!36748 r!11483))) b!7135235))

(declare-fun b!7135237 () Bool)

(declare-fun e!4288245 () Bool)

(declare-fun tp!1967107 () Bool)

(declare-fun tp!1967105 () Bool)

(assert (=> b!7135237 (= e!4288245 (and tp!1967107 tp!1967105))))

(assert (=> b!7135052 (= tp!1967053 e!4288245)))

(declare-fun b!7135238 () Bool)

(declare-fun tp!1967104 () Bool)

(assert (=> b!7135238 (= e!4288245 tp!1967104)))

(declare-fun b!7135239 () Bool)

(declare-fun tp!1967103 () Bool)

(declare-fun tp!1967106 () Bool)

(assert (=> b!7135239 (= e!4288245 (and tp!1967103 tp!1967106))))

(declare-fun b!7135236 () Bool)

(assert (=> b!7135236 (= e!4288245 tp_is_empty!45873)))

(assert (= (and b!7135052 (is-ElementMatch!18118 (regTwo!36748 r!11483))) b!7135236))

(assert (= (and b!7135052 (is-Concat!26963 (regTwo!36748 r!11483))) b!7135237))

(assert (= (and b!7135052 (is-Star!18118 (regTwo!36748 r!11483))) b!7135238))

(assert (= (and b!7135052 (is-Union!18118 (regTwo!36748 r!11483))) b!7135239))

(declare-fun b!7135241 () Bool)

(declare-fun e!4288246 () Bool)

(declare-fun tp!1967112 () Bool)

(declare-fun tp!1967110 () Bool)

(assert (=> b!7135241 (= e!4288246 (and tp!1967112 tp!1967110))))

(assert (=> b!7135055 (= tp!1967050 e!4288246)))

(declare-fun b!7135242 () Bool)

(declare-fun tp!1967109 () Bool)

(assert (=> b!7135242 (= e!4288246 tp!1967109)))

(declare-fun b!7135243 () Bool)

(declare-fun tp!1967108 () Bool)

(declare-fun tp!1967111 () Bool)

(assert (=> b!7135243 (= e!4288246 (and tp!1967108 tp!1967111))))

(declare-fun b!7135240 () Bool)

(assert (=> b!7135240 (= e!4288246 tp_is_empty!45873)))

(assert (= (and b!7135055 (is-ElementMatch!18118 (reg!18447 r!11483))) b!7135240))

(assert (= (and b!7135055 (is-Concat!26963 (reg!18447 r!11483))) b!7135241))

(assert (= (and b!7135055 (is-Star!18118 (reg!18447 r!11483))) b!7135242))

(assert (= (and b!7135055 (is-Union!18118 (reg!18447 r!11483))) b!7135243))

(declare-fun b!7135248 () Bool)

(declare-fun e!4288249 () Bool)

(declare-fun tp!1967117 () Bool)

(declare-fun tp!1967118 () Bool)

(assert (=> b!7135248 (= e!4288249 (and tp!1967117 tp!1967118))))

(assert (=> b!7135046 (= tp!1967055 e!4288249)))

(assert (= (and b!7135046 (is-Cons!69190 (exprs!7612 c!165))) b!7135248))

(declare-fun b!7135250 () Bool)

(declare-fun e!4288250 () Bool)

(declare-fun tp!1967123 () Bool)

(declare-fun tp!1967121 () Bool)

(assert (=> b!7135250 (= e!4288250 (and tp!1967123 tp!1967121))))

(assert (=> b!7135059 (= tp!1967052 e!4288250)))

(declare-fun b!7135251 () Bool)

(declare-fun tp!1967120 () Bool)

(assert (=> b!7135251 (= e!4288250 tp!1967120)))

(declare-fun b!7135252 () Bool)

(declare-fun tp!1967119 () Bool)

(declare-fun tp!1967122 () Bool)

(assert (=> b!7135252 (= e!4288250 (and tp!1967119 tp!1967122))))

(declare-fun b!7135249 () Bool)

(assert (=> b!7135249 (= e!4288250 tp_is_empty!45873)))

(assert (= (and b!7135059 (is-ElementMatch!18118 (regOne!36749 r!11483))) b!7135249))

(assert (= (and b!7135059 (is-Concat!26963 (regOne!36749 r!11483))) b!7135250))

(assert (= (and b!7135059 (is-Star!18118 (regOne!36749 r!11483))) b!7135251))

(assert (= (and b!7135059 (is-Union!18118 (regOne!36749 r!11483))) b!7135252))

(declare-fun b!7135254 () Bool)

(declare-fun e!4288251 () Bool)

(declare-fun tp!1967128 () Bool)

(declare-fun tp!1967126 () Bool)

(assert (=> b!7135254 (= e!4288251 (and tp!1967128 tp!1967126))))

(assert (=> b!7135059 (= tp!1967054 e!4288251)))

(declare-fun b!7135255 () Bool)

(declare-fun tp!1967125 () Bool)

(assert (=> b!7135255 (= e!4288251 tp!1967125)))

(declare-fun b!7135256 () Bool)

(declare-fun tp!1967124 () Bool)

(declare-fun tp!1967127 () Bool)

(assert (=> b!7135256 (= e!4288251 (and tp!1967124 tp!1967127))))

(declare-fun b!7135253 () Bool)

(assert (=> b!7135253 (= e!4288251 tp_is_empty!45873)))

(assert (= (and b!7135059 (is-ElementMatch!18118 (regTwo!36749 r!11483))) b!7135253))

(assert (= (and b!7135059 (is-Concat!26963 (regTwo!36749 r!11483))) b!7135254))

(assert (= (and b!7135059 (is-Star!18118 (regTwo!36749 r!11483))) b!7135255))

(assert (= (and b!7135059 (is-Union!18118 (regTwo!36749 r!11483))) b!7135256))

(declare-fun b!7135257 () Bool)

(declare-fun e!4288252 () Bool)

(declare-fun tp!1967129 () Bool)

(declare-fun tp!1967130 () Bool)

(assert (=> b!7135257 (= e!4288252 (and tp!1967129 tp!1967130))))

(assert (=> b!7135050 (= tp!1967056 e!4288252)))

(assert (= (and b!7135050 (is-Cons!69190 (exprs!7612 setElem!52334))) b!7135257))

(declare-fun b_lambda!272235 () Bool)

(assert (= b_lambda!272233 (or b!7135060 b_lambda!272235)))

(declare-fun bs!1887247 () Bool)

(declare-fun d!2226288 () Bool)

(assert (= bs!1887247 (and d!2226288 b!7135060)))

(assert (=> bs!1887247 (= (dynLambda!28137 lambda!433431 lt!2565605) (nullable!7638 lt!2565605))))

(declare-fun m!7851674 () Bool)

(assert (=> bs!1887247 m!7851674))

(assert (=> d!2226248 d!2226288))

(declare-fun b_lambda!272237 () Bool)

(assert (= b_lambda!272231 (or b!7135060 b_lambda!272237)))

(declare-fun bs!1887249 () Bool)

(declare-fun d!2226290 () Bool)

(assert (= bs!1887249 (and d!2226290 b!7135060)))

(assert (=> bs!1887249 (= (dynLambda!28137 lambda!433431 (h!75638 lt!2565570)) (nullable!7638 (h!75638 lt!2565570)))))

(declare-fun m!7851676 () Bool)

(assert (=> bs!1887249 m!7851676))

(assert (=> b!7135140 d!2226290))

(declare-fun b_lambda!272239 () Bool)

(assert (= b_lambda!272229 (or b!7135057 b_lambda!272239)))

(declare-fun bs!1887250 () Bool)

(declare-fun d!2226292 () Bool)

(assert (= bs!1887250 (and d!2226292 b!7135057)))

(assert (=> bs!1887250 (= (dynLambda!28137 lambda!433433 (h!75638 (exprs!7612 c!165))) (validRegex!9285 (h!75638 (exprs!7612 c!165))))))

(declare-fun m!7851678 () Bool)

(assert (=> bs!1887250 m!7851678))

(assert (=> b!7135122 d!2226292))

(push 1)

(assert (not d!2226240))

(assert (not b!7135181))

(assert tp_is_empty!45873)

(assert (not d!2226280))

(assert (not b!7135115))

(assert (not b!7135137))

(assert (not d!2226248))

(assert (not d!2226242))

(assert (not b!7135238))

(assert (not b!7135138))

(assert (not d!2226270))

(assert (not b_lambda!272239))

(assert (not d!2226282))

(assert (not b!7135237))

(assert (not b!7135250))

(assert (not b!7135202))

(assert (not b!7135251))

(assert (not b!7135167))

(assert (not d!2226252))

(assert (not b!7135254))

(assert (not bm!650930))

(assert (not b!7135234))

(assert (not b!7135123))

(assert (not d!2226274))

(assert (not b!7135233))

(assert (not d!2226238))

(assert (not b!7135172))

(assert (not b!7135243))

(assert (not b!7135252))

(assert (not d!2226276))

(assert (not b!7135165))

(assert (not b!7135255))

(assert (not bm!650931))

(assert (not b!7135256))

(assert (not b!7135235))

(assert (not bs!1887250))

(assert (not d!2226286))

(assert (not b!7135221))

(assert (not b!7135174))

(assert (not b!7135139))

(assert (not b!7135239))

(assert (not b!7135168))

(assert (not b!7135242))

(assert (not b!7135257))

(assert (not d!2226258))

(assert (not b!7135241))

(assert (not b!7135169))

(assert (not b_lambda!272237))

(assert (not d!2226268))

(assert (not b_lambda!272235))

(assert (not d!2226266))

(assert (not b!7135212))

(assert (not bs!1887247))

(assert (not bs!1887249))

(assert (not b!7135171))

(assert (not setNonEmpty!52340))

(assert (not d!2226246))

(assert (not b!7135248))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

