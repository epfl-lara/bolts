; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!710788 () Bool)

(assert start!710788)

(declare-fun b!7293738 () Bool)

(assert (=> b!7293738 true))

(declare-fun b!7293736 () Bool)

(declare-fun res!2950328 () Bool)

(declare-fun e!4368646 () Bool)

(assert (=> b!7293736 (=> (not res!2950328) (not e!4368646))))

(declare-datatypes ((C!37974 0))(
  ( (C!37975 (val!28935 Int)) )
))
(declare-datatypes ((List!71017 0))(
  ( (Nil!70893) (Cons!70893 (h!77341 C!37974) (t!385091 List!71017)) )
))
(declare-fun s!7854 () List!71017)

(assert (=> b!7293736 (= res!2950328 (is-Cons!70893 s!7854))))

(declare-fun b!7293737 () Bool)

(declare-fun e!4368643 () Bool)

(declare-fun tp!2061953 () Bool)

(assert (=> b!7293737 (= e!4368643 tp!2061953)))

(declare-datatypes ((Regex!18850 0))(
  ( (ElementMatch!18850 (c!1355345 C!37974)) (Concat!27695 (regOne!38212 Regex!18850) (regTwo!38212 Regex!18850)) (EmptyExpr!18850) (Star!18850 (reg!19179 Regex!18850)) (EmptyLang!18850) (Union!18850 (regOne!38213 Regex!18850) (regTwo!38213 Regex!18850)) )
))
(declare-datatypes ((List!71018 0))(
  ( (Nil!70894) (Cons!70894 (h!77342 Regex!18850) (t!385092 List!71018)) )
))
(declare-datatypes ((Context!15580 0))(
  ( (Context!15581 (exprs!8290 List!71018)) )
))
(declare-fun lt!2597168 () Context!15580)

(declare-fun inv!90136 (Context!15580) Bool)

(assert (=> b!7293738 (= e!4368646 (not (inv!90136 lt!2597168)))))

(declare-fun ct1!250 () Context!15580)

(declare-datatypes ((Unit!164298 0))(
  ( (Unit!164299) )
))
(declare-fun lt!2597161 () Unit!164298)

(declare-fun lambda!449974 () Int)

(declare-fun ct2!346 () Context!15580)

(declare-fun lemmaConcatPreservesForall!1597 (List!71018 List!71018 Int) Unit!164298)

(assert (=> b!7293738 (= lt!2597161 (lemmaConcatPreservesForall!1597 (exprs!8290 ct1!250) (exprs!8290 ct2!346) lambda!449974))))

(declare-fun lambda!449975 () Int)

(declare-fun lt!2597166 () (Set Context!15580))

(declare-fun flatMap!2945 ((Set Context!15580) Int) (Set Context!15580))

(declare-fun derivationStepZipperUp!2600 (Context!15580 C!37974) (Set Context!15580))

(assert (=> b!7293738 (= (flatMap!2945 lt!2597166 lambda!449975) (derivationStepZipperUp!2600 lt!2597168 (h!77341 s!7854)))))

(declare-fun lt!2597163 () Unit!164298)

(declare-fun lemmaFlatMapOnSingletonSet!2343 ((Set Context!15580) Context!15580 Int) Unit!164298)

(assert (=> b!7293738 (= lt!2597163 (lemmaFlatMapOnSingletonSet!2343 lt!2597166 lt!2597168 lambda!449975))))

(assert (=> b!7293738 (= lt!2597166 (set.insert lt!2597168 (as set.empty (Set Context!15580))))))

(declare-fun lt!2597167 () Unit!164298)

(assert (=> b!7293738 (= lt!2597167 (lemmaConcatPreservesForall!1597 (exprs!8290 ct1!250) (exprs!8290 ct2!346) lambda!449974))))

(declare-fun lt!2597160 () Unit!164298)

(assert (=> b!7293738 (= lt!2597160 (lemmaConcatPreservesForall!1597 (exprs!8290 ct1!250) (exprs!8290 ct2!346) lambda!449974))))

(declare-fun lt!2597165 () (Set Context!15580))

(assert (=> b!7293738 (= (flatMap!2945 lt!2597165 lambda!449975) (derivationStepZipperUp!2600 ct1!250 (h!77341 s!7854)))))

(declare-fun lt!2597169 () Unit!164298)

(assert (=> b!7293738 (= lt!2597169 (lemmaFlatMapOnSingletonSet!2343 lt!2597165 ct1!250 lambda!449975))))

(assert (=> b!7293738 (= lt!2597165 (set.insert ct1!250 (as set.empty (Set Context!15580))))))

(declare-fun lt!2597162 () (Set Context!15580))

(assert (=> b!7293738 (= lt!2597162 (derivationStepZipperUp!2600 lt!2597168 (h!77341 s!7854)))))

(declare-fun ++!16740 (List!71018 List!71018) List!71018)

(assert (=> b!7293738 (= lt!2597168 (Context!15581 (++!16740 (exprs!8290 ct1!250) (exprs!8290 ct2!346))))))

(declare-fun lt!2597164 () Unit!164298)

(assert (=> b!7293738 (= lt!2597164 (lemmaConcatPreservesForall!1597 (exprs!8290 ct1!250) (exprs!8290 ct2!346) lambda!449974))))

(declare-fun res!2950330 () Bool)

(assert (=> start!710788 (=> (not res!2950330) (not e!4368646))))

(declare-fun matchZipper!3754 ((Set Context!15580) List!71017) Bool)

(assert (=> start!710788 (= res!2950330 (matchZipper!3754 (set.insert ct2!346 (as set.empty (Set Context!15580))) s!7854))))

(assert (=> start!710788 e!4368646))

(declare-fun e!4368645 () Bool)

(assert (=> start!710788 (and (inv!90136 ct2!346) e!4368645)))

(declare-fun e!4368644 () Bool)

(assert (=> start!710788 e!4368644))

(assert (=> start!710788 (and (inv!90136 ct1!250) e!4368643)))

(declare-fun b!7293739 () Bool)

(declare-fun res!2950329 () Bool)

(assert (=> b!7293739 (=> (not res!2950329) (not e!4368646))))

(declare-fun nullableContext!340 (Context!15580) Bool)

(assert (=> b!7293739 (= res!2950329 (nullableContext!340 ct1!250))))

(declare-fun b!7293740 () Bool)

(declare-fun tp_is_empty!47165 () Bool)

(declare-fun tp!2061955 () Bool)

(assert (=> b!7293740 (= e!4368644 (and tp_is_empty!47165 tp!2061955))))

(declare-fun b!7293741 () Bool)

(declare-fun tp!2061954 () Bool)

(assert (=> b!7293741 (= e!4368645 tp!2061954)))

(assert (= (and start!710788 res!2950330) b!7293739))

(assert (= (and b!7293739 res!2950329) b!7293736))

(assert (= (and b!7293736 res!2950328) b!7293738))

(assert (= start!710788 b!7293741))

(assert (= (and start!710788 (is-Cons!70893 s!7854)) b!7293740))

(assert (= start!710788 b!7293737))

(declare-fun m!7965134 () Bool)

(assert (=> b!7293738 m!7965134))

(declare-fun m!7965136 () Bool)

(assert (=> b!7293738 m!7965136))

(declare-fun m!7965138 () Bool)

(assert (=> b!7293738 m!7965138))

(declare-fun m!7965140 () Bool)

(assert (=> b!7293738 m!7965140))

(declare-fun m!7965142 () Bool)

(assert (=> b!7293738 m!7965142))

(assert (=> b!7293738 m!7965142))

(declare-fun m!7965144 () Bool)

(assert (=> b!7293738 m!7965144))

(declare-fun m!7965146 () Bool)

(assert (=> b!7293738 m!7965146))

(declare-fun m!7965148 () Bool)

(assert (=> b!7293738 m!7965148))

(declare-fun m!7965150 () Bool)

(assert (=> b!7293738 m!7965150))

(assert (=> b!7293738 m!7965142))

(declare-fun m!7965152 () Bool)

(assert (=> b!7293738 m!7965152))

(assert (=> b!7293738 m!7965142))

(declare-fun m!7965154 () Bool)

(assert (=> b!7293738 m!7965154))

(declare-fun m!7965156 () Bool)

(assert (=> start!710788 m!7965156))

(assert (=> start!710788 m!7965156))

(declare-fun m!7965158 () Bool)

(assert (=> start!710788 m!7965158))

(declare-fun m!7965160 () Bool)

(assert (=> start!710788 m!7965160))

(declare-fun m!7965162 () Bool)

(assert (=> start!710788 m!7965162))

(declare-fun m!7965164 () Bool)

(assert (=> b!7293739 m!7965164))

(push 1)

(assert (not b!7293737))

(assert (not b!7293739))

(assert (not b!7293740))

(assert (not start!710788))

(assert (not b!7293741))

(assert (not b!7293738))

(assert tp_is_empty!47165)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2265962 () Bool)

(declare-fun forall!17675 (List!71018 Int) Bool)

(assert (=> d!2265962 (forall!17675 (++!16740 (exprs!8290 ct1!250) (exprs!8290 ct2!346)) lambda!449974)))

(declare-fun lt!2597202 () Unit!164298)

(declare-fun choose!56502 (List!71018 List!71018 Int) Unit!164298)

(assert (=> d!2265962 (= lt!2597202 (choose!56502 (exprs!8290 ct1!250) (exprs!8290 ct2!346) lambda!449974))))

(assert (=> d!2265962 (forall!17675 (exprs!8290 ct1!250) lambda!449974)))

(assert (=> d!2265962 (= (lemmaConcatPreservesForall!1597 (exprs!8290 ct1!250) (exprs!8290 ct2!346) lambda!449974) lt!2597202)))

(declare-fun bs!1912557 () Bool)

(assert (= bs!1912557 d!2265962))

(assert (=> bs!1912557 m!7965148))

(assert (=> bs!1912557 m!7965148))

(declare-fun m!7965198 () Bool)

(assert (=> bs!1912557 m!7965198))

(declare-fun m!7965200 () Bool)

(assert (=> bs!1912557 m!7965200))

(declare-fun m!7965202 () Bool)

(assert (=> bs!1912557 m!7965202))

(assert (=> b!7293738 d!2265962))

(declare-fun d!2265964 () Bool)

(declare-fun c!1355355 () Bool)

(declare-fun e!4368665 () Bool)

(assert (=> d!2265964 (= c!1355355 e!4368665)))

(declare-fun res!2950342 () Bool)

(assert (=> d!2265964 (=> (not res!2950342) (not e!4368665))))

(assert (=> d!2265964 (= res!2950342 (is-Cons!70894 (exprs!8290 ct1!250)))))

(declare-fun e!4368667 () (Set Context!15580))

(assert (=> d!2265964 (= (derivationStepZipperUp!2600 ct1!250 (h!77341 s!7854)) e!4368667)))

(declare-fun b!7293774 () Bool)

(declare-fun e!4368666 () (Set Context!15580))

(declare-fun call!664356 () (Set Context!15580))

(assert (=> b!7293774 (= e!4368666 call!664356)))

(declare-fun bm!664351 () Bool)

(declare-fun derivationStepZipperDown!2757 (Regex!18850 Context!15580 C!37974) (Set Context!15580))

(assert (=> bm!664351 (= call!664356 (derivationStepZipperDown!2757 (h!77342 (exprs!8290 ct1!250)) (Context!15581 (t!385092 (exprs!8290 ct1!250))) (h!77341 s!7854)))))

(declare-fun b!7293775 () Bool)

(declare-fun nullable!8028 (Regex!18850) Bool)

(assert (=> b!7293775 (= e!4368665 (nullable!8028 (h!77342 (exprs!8290 ct1!250))))))

(declare-fun b!7293776 () Bool)

(assert (=> b!7293776 (= e!4368666 (as set.empty (Set Context!15580)))))

(declare-fun b!7293777 () Bool)

(assert (=> b!7293777 (= e!4368667 e!4368666)))

(declare-fun c!1355356 () Bool)

(assert (=> b!7293777 (= c!1355356 (is-Cons!70894 (exprs!8290 ct1!250)))))

(declare-fun b!7293778 () Bool)

(assert (=> b!7293778 (= e!4368667 (set.union call!664356 (derivationStepZipperUp!2600 (Context!15581 (t!385092 (exprs!8290 ct1!250))) (h!77341 s!7854))))))

(assert (= (and d!2265964 res!2950342) b!7293775))

(assert (= (and d!2265964 c!1355355) b!7293778))

(assert (= (and d!2265964 (not c!1355355)) b!7293777))

(assert (= (and b!7293777 c!1355356) b!7293774))

(assert (= (and b!7293777 (not c!1355356)) b!7293776))

(assert (= (or b!7293778 b!7293774) bm!664351))

(declare-fun m!7965204 () Bool)

(assert (=> bm!664351 m!7965204))

(declare-fun m!7965206 () Bool)

(assert (=> b!7293775 m!7965206))

(declare-fun m!7965208 () Bool)

(assert (=> b!7293778 m!7965208))

(assert (=> b!7293738 d!2265964))

(declare-fun d!2265966 () Bool)

(declare-fun dynLambda!28991 (Int Context!15580) (Set Context!15580))

(assert (=> d!2265966 (= (flatMap!2945 lt!2597165 lambda!449975) (dynLambda!28991 lambda!449975 ct1!250))))

(declare-fun lt!2597205 () Unit!164298)

(declare-fun choose!56503 ((Set Context!15580) Context!15580 Int) Unit!164298)

(assert (=> d!2265966 (= lt!2597205 (choose!56503 lt!2597165 ct1!250 lambda!449975))))

(assert (=> d!2265966 (= lt!2597165 (set.insert ct1!250 (as set.empty (Set Context!15580))))))

(assert (=> d!2265966 (= (lemmaFlatMapOnSingletonSet!2343 lt!2597165 ct1!250 lambda!449975) lt!2597205)))

(declare-fun b_lambda!281133 () Bool)

(assert (=> (not b_lambda!281133) (not d!2265966)))

(declare-fun bs!1912558 () Bool)

(assert (= bs!1912558 d!2265966))

(assert (=> bs!1912558 m!7965152))

(declare-fun m!7965210 () Bool)

(assert (=> bs!1912558 m!7965210))

(declare-fun m!7965212 () Bool)

(assert (=> bs!1912558 m!7965212))

(assert (=> bs!1912558 m!7965146))

(assert (=> b!7293738 d!2265966))

(declare-fun b!7293788 () Bool)

(declare-fun e!4368672 () List!71018)

(assert (=> b!7293788 (= e!4368672 (Cons!70894 (h!77342 (exprs!8290 ct1!250)) (++!16740 (t!385092 (exprs!8290 ct1!250)) (exprs!8290 ct2!346))))))

(declare-fun d!2265968 () Bool)

(declare-fun e!4368673 () Bool)

(assert (=> d!2265968 e!4368673))

(declare-fun res!2950348 () Bool)

(assert (=> d!2265968 (=> (not res!2950348) (not e!4368673))))

(declare-fun lt!2597208 () List!71018)

(declare-fun content!14805 (List!71018) (Set Regex!18850))

(assert (=> d!2265968 (= res!2950348 (= (content!14805 lt!2597208) (set.union (content!14805 (exprs!8290 ct1!250)) (content!14805 (exprs!8290 ct2!346)))))))

(assert (=> d!2265968 (= lt!2597208 e!4368672)))

(declare-fun c!1355359 () Bool)

(assert (=> d!2265968 (= c!1355359 (is-Nil!70894 (exprs!8290 ct1!250)))))

(assert (=> d!2265968 (= (++!16740 (exprs!8290 ct1!250) (exprs!8290 ct2!346)) lt!2597208)))

(declare-fun b!7293790 () Bool)

(assert (=> b!7293790 (= e!4368673 (or (not (= (exprs!8290 ct2!346) Nil!70894)) (= lt!2597208 (exprs!8290 ct1!250))))))

(declare-fun b!7293787 () Bool)

(assert (=> b!7293787 (= e!4368672 (exprs!8290 ct2!346))))

(declare-fun b!7293789 () Bool)

(declare-fun res!2950347 () Bool)

(assert (=> b!7293789 (=> (not res!2950347) (not e!4368673))))

(declare-fun size!41851 (List!71018) Int)

(assert (=> b!7293789 (= res!2950347 (= (size!41851 lt!2597208) (+ (size!41851 (exprs!8290 ct1!250)) (size!41851 (exprs!8290 ct2!346)))))))

(assert (= (and d!2265968 c!1355359) b!7293787))

(assert (= (and d!2265968 (not c!1355359)) b!7293788))

(assert (= (and d!2265968 res!2950348) b!7293789))

(assert (= (and b!7293789 res!2950347) b!7293790))

(declare-fun m!7965214 () Bool)

(assert (=> b!7293788 m!7965214))

(declare-fun m!7965216 () Bool)

(assert (=> d!2265968 m!7965216))

(declare-fun m!7965218 () Bool)

(assert (=> d!2265968 m!7965218))

(declare-fun m!7965220 () Bool)

(assert (=> d!2265968 m!7965220))

(declare-fun m!7965222 () Bool)

(assert (=> b!7293789 m!7965222))

(declare-fun m!7965224 () Bool)

(assert (=> b!7293789 m!7965224))

(declare-fun m!7965226 () Bool)

(assert (=> b!7293789 m!7965226))

(assert (=> b!7293738 d!2265968))

(declare-fun d!2265970 () Bool)

(declare-fun c!1355360 () Bool)

(declare-fun e!4368674 () Bool)

(assert (=> d!2265970 (= c!1355360 e!4368674)))

(declare-fun res!2950349 () Bool)

(assert (=> d!2265970 (=> (not res!2950349) (not e!4368674))))

(assert (=> d!2265970 (= res!2950349 (is-Cons!70894 (exprs!8290 lt!2597168)))))

(declare-fun e!4368676 () (Set Context!15580))

(assert (=> d!2265970 (= (derivationStepZipperUp!2600 lt!2597168 (h!77341 s!7854)) e!4368676)))

(declare-fun b!7293791 () Bool)

(declare-fun e!4368675 () (Set Context!15580))

(declare-fun call!664357 () (Set Context!15580))

(assert (=> b!7293791 (= e!4368675 call!664357)))

(declare-fun bm!664352 () Bool)

(assert (=> bm!664352 (= call!664357 (derivationStepZipperDown!2757 (h!77342 (exprs!8290 lt!2597168)) (Context!15581 (t!385092 (exprs!8290 lt!2597168))) (h!77341 s!7854)))))

(declare-fun b!7293792 () Bool)

(assert (=> b!7293792 (= e!4368674 (nullable!8028 (h!77342 (exprs!8290 lt!2597168))))))

(declare-fun b!7293793 () Bool)

(assert (=> b!7293793 (= e!4368675 (as set.empty (Set Context!15580)))))

(declare-fun b!7293794 () Bool)

(assert (=> b!7293794 (= e!4368676 e!4368675)))

(declare-fun c!1355361 () Bool)

(assert (=> b!7293794 (= c!1355361 (is-Cons!70894 (exprs!8290 lt!2597168)))))

(declare-fun b!7293795 () Bool)

(assert (=> b!7293795 (= e!4368676 (set.union call!664357 (derivationStepZipperUp!2600 (Context!15581 (t!385092 (exprs!8290 lt!2597168))) (h!77341 s!7854))))))

(assert (= (and d!2265970 res!2950349) b!7293792))

(assert (= (and d!2265970 c!1355360) b!7293795))

(assert (= (and d!2265970 (not c!1355360)) b!7293794))

(assert (= (and b!7293794 c!1355361) b!7293791))

(assert (= (and b!7293794 (not c!1355361)) b!7293793))

(assert (= (or b!7293795 b!7293791) bm!664352))

(declare-fun m!7965228 () Bool)

(assert (=> bm!664352 m!7965228))

(declare-fun m!7965230 () Bool)

(assert (=> b!7293792 m!7965230))

(declare-fun m!7965232 () Bool)

(assert (=> b!7293795 m!7965232))

(assert (=> b!7293738 d!2265970))

(declare-fun d!2265972 () Bool)

(declare-fun choose!56504 ((Set Context!15580) Int) (Set Context!15580))

(assert (=> d!2265972 (= (flatMap!2945 lt!2597166 lambda!449975) (choose!56504 lt!2597166 lambda!449975))))

(declare-fun bs!1912559 () Bool)

(assert (= bs!1912559 d!2265972))

(declare-fun m!7965234 () Bool)

(assert (=> bs!1912559 m!7965234))

(assert (=> b!7293738 d!2265972))

(declare-fun d!2265974 () Bool)

(assert (=> d!2265974 (= (flatMap!2945 lt!2597166 lambda!449975) (dynLambda!28991 lambda!449975 lt!2597168))))

(declare-fun lt!2597209 () Unit!164298)

(assert (=> d!2265974 (= lt!2597209 (choose!56503 lt!2597166 lt!2597168 lambda!449975))))

(assert (=> d!2265974 (= lt!2597166 (set.insert lt!2597168 (as set.empty (Set Context!15580))))))

(assert (=> d!2265974 (= (lemmaFlatMapOnSingletonSet!2343 lt!2597166 lt!2597168 lambda!449975) lt!2597209)))

(declare-fun b_lambda!281135 () Bool)

(assert (=> (not b_lambda!281135) (not d!2265974)))

(declare-fun bs!1912560 () Bool)

(assert (= bs!1912560 d!2265974))

(assert (=> bs!1912560 m!7965154))

(declare-fun m!7965236 () Bool)

(assert (=> bs!1912560 m!7965236))

(declare-fun m!7965238 () Bool)

(assert (=> bs!1912560 m!7965238))

(assert (=> bs!1912560 m!7965140))

(assert (=> b!7293738 d!2265974))

(declare-fun bs!1912561 () Bool)

(declare-fun d!2265976 () Bool)

(assert (= bs!1912561 (and d!2265976 b!7293738)))

(declare-fun lambda!449992 () Int)

(assert (=> bs!1912561 (= lambda!449992 lambda!449974)))

(assert (=> d!2265976 (= (inv!90136 lt!2597168) (forall!17675 (exprs!8290 lt!2597168) lambda!449992))))

(declare-fun bs!1912562 () Bool)

(assert (= bs!1912562 d!2265976))

(declare-fun m!7965240 () Bool)

(assert (=> bs!1912562 m!7965240))

(assert (=> b!7293738 d!2265976))

(declare-fun d!2265980 () Bool)

(assert (=> d!2265980 (= (flatMap!2945 lt!2597165 lambda!449975) (choose!56504 lt!2597165 lambda!449975))))

(declare-fun bs!1912563 () Bool)

(assert (= bs!1912563 d!2265980))

(declare-fun m!7965242 () Bool)

(assert (=> bs!1912563 m!7965242))

(assert (=> b!7293738 d!2265980))

(declare-fun bs!1912564 () Bool)

(declare-fun d!2265982 () Bool)

(assert (= bs!1912564 (and d!2265982 b!7293738)))

(declare-fun lambda!449995 () Int)

(assert (=> bs!1912564 (not (= lambda!449995 lambda!449974))))

(declare-fun bs!1912565 () Bool)

(assert (= bs!1912565 (and d!2265982 d!2265976)))

(assert (=> bs!1912565 (not (= lambda!449995 lambda!449992))))

(assert (=> d!2265982 (= (nullableContext!340 ct1!250) (forall!17675 (exprs!8290 ct1!250) lambda!449995))))

(declare-fun bs!1912566 () Bool)

(assert (= bs!1912566 d!2265982))

(declare-fun m!7965244 () Bool)

(assert (=> bs!1912566 m!7965244))

(assert (=> b!7293739 d!2265982))

(declare-fun d!2265984 () Bool)

(declare-fun c!1355365 () Bool)

(declare-fun isEmpty!40774 (List!71017) Bool)

(assert (=> d!2265984 (= c!1355365 (isEmpty!40774 s!7854))))

(declare-fun e!4368679 () Bool)

(assert (=> d!2265984 (= (matchZipper!3754 (set.insert ct2!346 (as set.empty (Set Context!15580))) s!7854) e!4368679)))

(declare-fun b!7293800 () Bool)

(declare-fun nullableZipper!3048 ((Set Context!15580)) Bool)

(assert (=> b!7293800 (= e!4368679 (nullableZipper!3048 (set.insert ct2!346 (as set.empty (Set Context!15580)))))))

(declare-fun b!7293801 () Bool)

(declare-fun derivationStepZipper!3584 ((Set Context!15580) C!37974) (Set Context!15580))

(declare-fun head!15046 (List!71017) C!37974)

(declare-fun tail!14559 (List!71017) List!71017)

(assert (=> b!7293801 (= e!4368679 (matchZipper!3754 (derivationStepZipper!3584 (set.insert ct2!346 (as set.empty (Set Context!15580))) (head!15046 s!7854)) (tail!14559 s!7854)))))

(assert (= (and d!2265984 c!1355365) b!7293800))

(assert (= (and d!2265984 (not c!1355365)) b!7293801))

(declare-fun m!7965248 () Bool)

(assert (=> d!2265984 m!7965248))

(assert (=> b!7293800 m!7965156))

(declare-fun m!7965250 () Bool)

(assert (=> b!7293800 m!7965250))

(declare-fun m!7965252 () Bool)

(assert (=> b!7293801 m!7965252))

(assert (=> b!7293801 m!7965156))

(assert (=> b!7293801 m!7965252))

(declare-fun m!7965254 () Bool)

(assert (=> b!7293801 m!7965254))

(declare-fun m!7965256 () Bool)

(assert (=> b!7293801 m!7965256))

(assert (=> b!7293801 m!7965254))

(assert (=> b!7293801 m!7965256))

(declare-fun m!7965258 () Bool)

(assert (=> b!7293801 m!7965258))

(assert (=> start!710788 d!2265984))

(declare-fun bs!1912569 () Bool)

(declare-fun d!2265988 () Bool)

(assert (= bs!1912569 (and d!2265988 b!7293738)))

(declare-fun lambda!449999 () Int)

(assert (=> bs!1912569 (= lambda!449999 lambda!449974)))

(declare-fun bs!1912570 () Bool)

(assert (= bs!1912570 (and d!2265988 d!2265976)))

(assert (=> bs!1912570 (= lambda!449999 lambda!449992)))

(declare-fun bs!1912571 () Bool)

(assert (= bs!1912571 (and d!2265988 d!2265982)))

(assert (=> bs!1912571 (not (= lambda!449999 lambda!449995))))

(assert (=> d!2265988 (= (inv!90136 ct2!346) (forall!17675 (exprs!8290 ct2!346) lambda!449999))))

(declare-fun bs!1912572 () Bool)

(assert (= bs!1912572 d!2265988))

(declare-fun m!7965260 () Bool)

(assert (=> bs!1912572 m!7965260))

(assert (=> start!710788 d!2265988))

(declare-fun bs!1912573 () Bool)

(declare-fun d!2265990 () Bool)

(assert (= bs!1912573 (and d!2265990 b!7293738)))

(declare-fun lambda!450000 () Int)

(assert (=> bs!1912573 (= lambda!450000 lambda!449974)))

(declare-fun bs!1912574 () Bool)

(assert (= bs!1912574 (and d!2265990 d!2265976)))

(assert (=> bs!1912574 (= lambda!450000 lambda!449992)))

(declare-fun bs!1912575 () Bool)

(assert (= bs!1912575 (and d!2265990 d!2265982)))

(assert (=> bs!1912575 (not (= lambda!450000 lambda!449995))))

(declare-fun bs!1912576 () Bool)

(assert (= bs!1912576 (and d!2265990 d!2265988)))

(assert (=> bs!1912576 (= lambda!450000 lambda!449999)))

(assert (=> d!2265990 (= (inv!90136 ct1!250) (forall!17675 (exprs!8290 ct1!250) lambda!450000))))

(declare-fun bs!1912577 () Bool)

(assert (= bs!1912577 d!2265990))

(declare-fun m!7965262 () Bool)

(assert (=> bs!1912577 m!7965262))

(assert (=> start!710788 d!2265990))

(declare-fun b!7293806 () Bool)

(declare-fun e!4368682 () Bool)

(declare-fun tp!2061969 () Bool)

(declare-fun tp!2061970 () Bool)

(assert (=> b!7293806 (= e!4368682 (and tp!2061969 tp!2061970))))

(assert (=> b!7293737 (= tp!2061953 e!4368682)))

(assert (= (and b!7293737 (is-Cons!70894 (exprs!8290 ct1!250))) b!7293806))

(declare-fun b!7293811 () Bool)

(declare-fun e!4368685 () Bool)

(declare-fun tp!2061973 () Bool)

(assert (=> b!7293811 (= e!4368685 (and tp_is_empty!47165 tp!2061973))))

(assert (=> b!7293740 (= tp!2061955 e!4368685)))

(assert (= (and b!7293740 (is-Cons!70893 (t!385091 s!7854))) b!7293811))

(declare-fun b!7293812 () Bool)

(declare-fun e!4368686 () Bool)

(declare-fun tp!2061974 () Bool)

(declare-fun tp!2061975 () Bool)

(assert (=> b!7293812 (= e!4368686 (and tp!2061974 tp!2061975))))

(assert (=> b!7293741 (= tp!2061954 e!4368686)))

(assert (= (and b!7293741 (is-Cons!70894 (exprs!8290 ct2!346))) b!7293812))

(declare-fun b_lambda!281137 () Bool)

(assert (= b_lambda!281135 (or b!7293738 b_lambda!281137)))

(declare-fun bs!1912578 () Bool)

(declare-fun d!2265992 () Bool)

(assert (= bs!1912578 (and d!2265992 b!7293738)))

(assert (=> bs!1912578 (= (dynLambda!28991 lambda!449975 lt!2597168) (derivationStepZipperUp!2600 lt!2597168 (h!77341 s!7854)))))

(assert (=> bs!1912578 m!7965144))

(assert (=> d!2265974 d!2265992))

(declare-fun b_lambda!281139 () Bool)

(assert (= b_lambda!281133 (or b!7293738 b_lambda!281139)))

(declare-fun bs!1912579 () Bool)

(declare-fun d!2265994 () Bool)

(assert (= bs!1912579 (and d!2265994 b!7293738)))

(assert (=> bs!1912579 (= (dynLambda!28991 lambda!449975 ct1!250) (derivationStepZipperUp!2600 ct1!250 (h!77341 s!7854)))))

(assert (=> bs!1912579 m!7965138))

(assert (=> d!2265966 d!2265994))

(push 1)

(assert (not d!2265962))

(assert (not b_lambda!281139))

(assert (not b!7293792))

(assert (not b_lambda!281137))

(assert (not d!2265966))

(assert (not d!2265972))

(assert (not d!2265982))

(assert (not d!2265990))

(assert (not b!7293788))

(assert (not d!2265974))

(assert (not d!2265968))

(assert (not b!7293778))

(assert (not d!2265984))

(assert (not b!7293801))

(assert (not d!2265988))

(assert (not b!7293795))

(assert (not d!2265976))

(assert (not b!7293800))

(assert (not b!7293812))

(assert (not b!7293806))

(assert (not bs!1912579))

(assert tp_is_empty!47165)

(assert (not bm!664351))

(assert (not bs!1912578))

(assert (not b!7293775))

(assert (not bm!664352))

(assert (not d!2265980))

(assert (not b!7293789))

(assert (not b!7293811))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

