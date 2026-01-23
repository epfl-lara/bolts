; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!720186 () Bool)

(assert start!720186)

(declare-fun b!7383076 () Bool)

(declare-fun e!4419326 () Bool)

(declare-fun e!4419335 () Bool)

(assert (=> b!7383076 (= e!4419326 e!4419335)))

(declare-fun res!2977606 () Bool)

(assert (=> b!7383076 (=> (not res!2977606) (not e!4419335))))

(declare-datatypes ((C!38938 0))(
  ( (C!38939 (val!29829 Int)) )
))
(declare-datatypes ((Regex!19332 0))(
  ( (ElementMatch!19332 (c!1372358 C!38938)) (Concat!28177 (regOne!39176 Regex!19332) (regTwo!39176 Regex!19332)) (EmptyExpr!19332) (Star!19332 (reg!19661 Regex!19332)) (EmptyLang!19332) (Union!19332 (regOne!39177 Regex!19332) (regTwo!39177 Regex!19332)) )
))
(declare-fun lt!2617247 () Regex!19332)

(declare-fun validRegex!9928 (Regex!19332) Bool)

(assert (=> b!7383076 (= res!2977606 (validRegex!9928 lt!2617247))))

(declare-fun r1!2370 () Regex!19332)

(assert (=> b!7383076 (= lt!2617247 (Star!19332 (reg!19661 r1!2370)))))

(declare-fun b!7383077 () Bool)

(declare-fun e!4419334 () Bool)

(declare-fun e!4419332 () Bool)

(assert (=> b!7383077 (= e!4419334 e!4419332)))

(declare-fun res!2977604 () Bool)

(assert (=> b!7383077 (=> (not res!2977604) (not e!4419332))))

(declare-datatypes ((List!71828 0))(
  ( (Nil!71704) (Cons!71704 (h!78152 Regex!19332) (t!386325 List!71828)) )
))
(declare-datatypes ((Context!16544 0))(
  ( (Context!16545 (exprs!8772 List!71828)) )
))
(declare-fun cWitness!61 () Context!16544)

(declare-fun lt!2617240 () (Set Context!16544))

(assert (=> b!7383077 (= res!2977604 (set.member cWitness!61 lt!2617240))))

(declare-fun c!10362 () C!38938)

(declare-fun ct1!282 () Context!16544)

(declare-fun derivationStepZipperDown!3158 (Regex!19332 Context!16544 C!38938) (Set Context!16544))

(assert (=> b!7383077 (= lt!2617240 (derivationStepZipperDown!3158 r1!2370 ct1!282 c!10362))))

(declare-fun b!7383078 () Bool)

(declare-fun e!4419329 () Bool)

(assert (=> b!7383078 (= e!4419335 e!4419329)))

(declare-fun res!2977602 () Bool)

(assert (=> b!7383078 (=> (not res!2977602) (not e!4419329))))

(declare-fun lt!2617242 () Context!16544)

(assert (=> b!7383078 (= res!2977602 (= lt!2617240 (derivationStepZipperDown!3158 (reg!19661 r1!2370) lt!2617242 c!10362)))))

(declare-fun lt!2617245 () List!71828)

(assert (=> b!7383078 (= lt!2617242 (Context!16545 lt!2617245))))

(declare-fun $colon$colon!3310 (List!71828 Regex!19332) List!71828)

(assert (=> b!7383078 (= lt!2617245 ($colon$colon!3310 (exprs!8772 ct1!282) lt!2617247))))

(declare-fun res!2977600 () Bool)

(assert (=> start!720186 (=> (not res!2977600) (not e!4419334))))

(assert (=> start!720186 (= res!2977600 (validRegex!9928 r1!2370))))

(assert (=> start!720186 e!4419334))

(declare-fun tp_is_empty!48909 () Bool)

(assert (=> start!720186 tp_is_empty!48909))

(declare-fun e!4419325 () Bool)

(declare-fun inv!91671 (Context!16544) Bool)

(assert (=> start!720186 (and (inv!91671 cWitness!61) e!4419325)))

(declare-fun e!4419333 () Bool)

(assert (=> start!720186 (and (inv!91671 ct1!282) e!4419333)))

(declare-fun e!4419328 () Bool)

(assert (=> start!720186 e!4419328))

(declare-fun ct2!378 () Context!16544)

(declare-fun e!4419330 () Bool)

(assert (=> start!720186 (and (inv!91671 ct2!378) e!4419330)))

(declare-fun b!7383079 () Bool)

(declare-fun e!4419327 () Bool)

(assert (=> b!7383079 (= e!4419329 (not e!4419327))))

(declare-fun res!2977599 () Bool)

(assert (=> b!7383079 (=> res!2977599 e!4419327)))

(declare-fun lt!2617248 () Context!16544)

(declare-fun lt!2617252 () (Set Context!16544))

(assert (=> b!7383079 (= res!2977599 (not (set.member lt!2617248 lt!2617252)))))

(declare-fun lambda!458658 () Int)

(declare-datatypes ((Unit!165613 0))(
  ( (Unit!165614) )
))
(declare-fun lt!2617249 () Unit!165613)

(declare-fun lemmaConcatPreservesForall!2005 (List!71828 List!71828 Int) Unit!165613)

(assert (=> b!7383079 (= lt!2617249 (lemmaConcatPreservesForall!2005 (exprs!8772 cWitness!61) (exprs!8772 ct2!378) lambda!458658))))

(declare-fun ++!17148 (List!71828 List!71828) List!71828)

(assert (=> b!7383079 (set.member lt!2617248 (derivationStepZipperDown!3158 (reg!19661 r1!2370) (Context!16545 (++!17148 lt!2617245 (exprs!8772 ct2!378))) c!10362))))

(assert (=> b!7383079 (= lt!2617248 (Context!16545 (++!17148 (exprs!8772 cWitness!61) (exprs!8772 ct2!378))))))

(declare-fun lt!2617246 () Unit!165613)

(assert (=> b!7383079 (= lt!2617246 (lemmaConcatPreservesForall!2005 lt!2617245 (exprs!8772 ct2!378) lambda!458658))))

(declare-fun lt!2617251 () Unit!165613)

(assert (=> b!7383079 (= lt!2617251 (lemmaConcatPreservesForall!2005 (exprs!8772 cWitness!61) (exprs!8772 ct2!378) lambda!458658))))

(declare-fun lt!2617244 () Unit!165613)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!157 (Regex!19332 Context!16544 Context!16544 Context!16544 C!38938) Unit!165613)

(assert (=> b!7383079 (= lt!2617244 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!157 (reg!19661 r1!2370) lt!2617242 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7383080 () Bool)

(declare-fun tp!2100217 () Bool)

(declare-fun tp!2100219 () Bool)

(assert (=> b!7383080 (= e!4419328 (and tp!2100217 tp!2100219))))

(declare-fun b!7383081 () Bool)

(declare-fun tp!2100216 () Bool)

(assert (=> b!7383081 (= e!4419328 tp!2100216)))

(declare-fun b!7383082 () Bool)

(declare-fun tp!2100218 () Bool)

(assert (=> b!7383082 (= e!4419330 tp!2100218)))

(declare-fun b!7383083 () Bool)

(assert (=> b!7383083 (= e!4419328 tp_is_empty!48909)))

(declare-fun b!7383084 () Bool)

(assert (=> b!7383084 (= e!4419327 (inv!91671 lt!2617248))))

(declare-fun lt!2617250 () Unit!165613)

(assert (=> b!7383084 (= lt!2617250 (lemmaConcatPreservesForall!2005 (exprs!8772 ct1!282) (exprs!8772 ct2!378) lambda!458658))))

(declare-fun lt!2617243 () Unit!165613)

(assert (=> b!7383084 (= lt!2617243 (lemmaConcatPreservesForall!2005 (exprs!8772 cWitness!61) (exprs!8772 ct2!378) lambda!458658))))

(declare-fun b!7383085 () Bool)

(declare-fun tp!2100223 () Bool)

(assert (=> b!7383085 (= e!4419333 tp!2100223)))

(declare-fun b!7383086 () Bool)

(declare-fun tp!2100220 () Bool)

(declare-fun tp!2100222 () Bool)

(assert (=> b!7383086 (= e!4419328 (and tp!2100220 tp!2100222))))

(declare-fun b!7383087 () Bool)

(assert (=> b!7383087 (= e!4419332 e!4419326)))

(declare-fun res!2977605 () Bool)

(assert (=> b!7383087 (=> (not res!2977605) (not e!4419326))))

(assert (=> b!7383087 (= res!2977605 (and (or (not (is-ElementMatch!19332 r1!2370)) (not (= c!10362 (c!1372358 r1!2370)))) (not (is-Union!19332 r1!2370))))))

(assert (=> b!7383087 (= lt!2617252 (derivationStepZipperDown!3158 r1!2370 (Context!16545 (++!17148 (exprs!8772 ct1!282) (exprs!8772 ct2!378))) c!10362))))

(declare-fun lt!2617241 () Unit!165613)

(assert (=> b!7383087 (= lt!2617241 (lemmaConcatPreservesForall!2005 (exprs!8772 ct1!282) (exprs!8772 ct2!378) lambda!458658))))

(declare-fun b!7383088 () Bool)

(declare-fun e!4419331 () Bool)

(declare-fun nullable!8406 (Regex!19332) Bool)

(assert (=> b!7383088 (= e!4419331 (not (nullable!8406 (regOne!39176 r1!2370))))))

(declare-fun b!7383089 () Bool)

(declare-fun tp!2100221 () Bool)

(assert (=> b!7383089 (= e!4419325 tp!2100221)))

(declare-fun b!7383090 () Bool)

(declare-fun res!2977603 () Bool)

(assert (=> b!7383090 (=> (not res!2977603) (not e!4419326))))

(assert (=> b!7383090 (= res!2977603 e!4419331)))

(declare-fun res!2977601 () Bool)

(assert (=> b!7383090 (=> res!2977601 e!4419331)))

(assert (=> b!7383090 (= res!2977601 (not (is-Concat!28177 r1!2370)))))

(declare-fun b!7383091 () Bool)

(declare-fun res!2977607 () Bool)

(assert (=> b!7383091 (=> (not res!2977607) (not e!4419326))))

(assert (=> b!7383091 (= res!2977607 (and (not (is-Concat!28177 r1!2370)) (is-Star!19332 r1!2370)))))

(assert (= (and start!720186 res!2977600) b!7383077))

(assert (= (and b!7383077 res!2977604) b!7383087))

(assert (= (and b!7383087 res!2977605) b!7383090))

(assert (= (and b!7383090 (not res!2977601)) b!7383088))

(assert (= (and b!7383090 res!2977603) b!7383091))

(assert (= (and b!7383091 res!2977607) b!7383076))

(assert (= (and b!7383076 res!2977606) b!7383078))

(assert (= (and b!7383078 res!2977602) b!7383079))

(assert (= (and b!7383079 (not res!2977599)) b!7383084))

(assert (= start!720186 b!7383089))

(assert (= start!720186 b!7383085))

(assert (= (and start!720186 (is-ElementMatch!19332 r1!2370)) b!7383083))

(assert (= (and start!720186 (is-Concat!28177 r1!2370)) b!7383086))

(assert (= (and start!720186 (is-Star!19332 r1!2370)) b!7383081))

(assert (= (and start!720186 (is-Union!19332 r1!2370)) b!7383080))

(assert (= start!720186 b!7383082))

(declare-fun m!8032402 () Bool)

(assert (=> b!7383076 m!8032402))

(declare-fun m!8032404 () Bool)

(assert (=> b!7383077 m!8032404))

(declare-fun m!8032406 () Bool)

(assert (=> b!7383077 m!8032406))

(declare-fun m!8032408 () Bool)

(assert (=> b!7383088 m!8032408))

(declare-fun m!8032410 () Bool)

(assert (=> b!7383078 m!8032410))

(declare-fun m!8032412 () Bool)

(assert (=> b!7383078 m!8032412))

(declare-fun m!8032414 () Bool)

(assert (=> start!720186 m!8032414))

(declare-fun m!8032416 () Bool)

(assert (=> start!720186 m!8032416))

(declare-fun m!8032418 () Bool)

(assert (=> start!720186 m!8032418))

(declare-fun m!8032420 () Bool)

(assert (=> start!720186 m!8032420))

(declare-fun m!8032422 () Bool)

(assert (=> b!7383087 m!8032422))

(declare-fun m!8032424 () Bool)

(assert (=> b!7383087 m!8032424))

(declare-fun m!8032426 () Bool)

(assert (=> b!7383087 m!8032426))

(declare-fun m!8032428 () Bool)

(assert (=> b!7383084 m!8032428))

(assert (=> b!7383084 m!8032426))

(declare-fun m!8032430 () Bool)

(assert (=> b!7383084 m!8032430))

(assert (=> b!7383079 m!8032430))

(declare-fun m!8032432 () Bool)

(assert (=> b!7383079 m!8032432))

(assert (=> b!7383079 m!8032430))

(declare-fun m!8032434 () Bool)

(assert (=> b!7383079 m!8032434))

(declare-fun m!8032436 () Bool)

(assert (=> b!7383079 m!8032436))

(declare-fun m!8032438 () Bool)

(assert (=> b!7383079 m!8032438))

(declare-fun m!8032440 () Bool)

(assert (=> b!7383079 m!8032440))

(declare-fun m!8032442 () Bool)

(assert (=> b!7383079 m!8032442))

(declare-fun m!8032444 () Bool)

(assert (=> b!7383079 m!8032444))

(push 1)

(assert (not start!720186))

(assert (not b!7383082))

(assert (not b!7383079))

(assert (not b!7383080))

(assert (not b!7383076))

(assert tp_is_empty!48909)

(assert (not b!7383081))

(assert (not b!7383084))

(assert (not b!7383077))

(assert (not b!7383089))

(assert (not b!7383085))

(assert (not b!7383086))

(assert (not b!7383087))

(assert (not b!7383078))

(assert (not b!7383088))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun c!1372373 () Bool)

(declare-fun call!679537 () List!71828)

(declare-fun c!1372370 () Bool)

(declare-fun call!679541 () (Set Context!16544))

(declare-fun c!1372371 () Bool)

(declare-fun bm!679531 () Bool)

(assert (=> bm!679531 (= call!679541 (derivationStepZipperDown!3158 (ite c!1372371 (regTwo!39177 r1!2370) (ite c!1372373 (regTwo!39176 r1!2370) (ite c!1372370 (regOne!39176 r1!2370) (reg!19661 r1!2370)))) (ite (or c!1372371 c!1372373) (Context!16545 (++!17148 (exprs!8772 ct1!282) (exprs!8772 ct2!378))) (Context!16545 call!679537)) c!10362))))

(declare-fun bm!679532 () Bool)

(declare-fun call!679536 () List!71828)

(assert (=> bm!679532 (= call!679537 call!679536)))

(declare-fun b!7383162 () Bool)

(declare-fun e!4419381 () (Set Context!16544))

(declare-fun call!679538 () (Set Context!16544))

(declare-fun call!679539 () (Set Context!16544))

(assert (=> b!7383162 (= e!4419381 (set.union call!679538 call!679539))))

(declare-fun d!2286073 () Bool)

(declare-fun c!1372372 () Bool)

(assert (=> d!2286073 (= c!1372372 (and (is-ElementMatch!19332 r1!2370) (= (c!1372358 r1!2370) c!10362)))))

(declare-fun e!4419382 () (Set Context!16544))

(assert (=> d!2286073 (= (derivationStepZipperDown!3158 r1!2370 (Context!16545 (++!17148 (exprs!8772 ct1!282) (exprs!8772 ct2!378))) c!10362) e!4419382)))

(declare-fun bm!679533 () Bool)

(assert (=> bm!679533 (= call!679538 (derivationStepZipperDown!3158 (ite c!1372371 (regOne!39177 r1!2370) (regOne!39176 r1!2370)) (ite c!1372371 (Context!16545 (++!17148 (exprs!8772 ct1!282) (exprs!8772 ct2!378))) (Context!16545 call!679536)) c!10362))))

(declare-fun b!7383163 () Bool)

(assert (=> b!7383163 (= e!4419382 (set.insert (Context!16545 (++!17148 (exprs!8772 ct1!282) (exprs!8772 ct2!378))) (as set.empty (Set Context!16544))))))

(declare-fun b!7383164 () Bool)

(declare-fun e!4419384 () (Set Context!16544))

(assert (=> b!7383164 (= e!4419381 e!4419384)))

(assert (=> b!7383164 (= c!1372370 (is-Concat!28177 r1!2370))))

(declare-fun b!7383165 () Bool)

(declare-fun e!4419386 () Bool)

(assert (=> b!7383165 (= c!1372373 e!4419386)))

(declare-fun res!2977637 () Bool)

(assert (=> b!7383165 (=> (not res!2977637) (not e!4419386))))

(assert (=> b!7383165 (= res!2977637 (is-Concat!28177 r1!2370))))

(declare-fun e!4419383 () (Set Context!16544))

(assert (=> b!7383165 (= e!4419383 e!4419381)))

(declare-fun bm!679534 () Bool)

(assert (=> bm!679534 (= call!679536 ($colon$colon!3310 (exprs!8772 (Context!16545 (++!17148 (exprs!8772 ct1!282) (exprs!8772 ct2!378)))) (ite (or c!1372373 c!1372370) (regTwo!39176 r1!2370) r1!2370)))))

(declare-fun b!7383166 () Bool)

(assert (=> b!7383166 (= e!4419382 e!4419383)))

(assert (=> b!7383166 (= c!1372371 (is-Union!19332 r1!2370))))

(declare-fun b!7383167 () Bool)

(assert (=> b!7383167 (= e!4419383 (set.union call!679538 call!679541))))

(declare-fun b!7383168 () Bool)

(assert (=> b!7383168 (= e!4419386 (nullable!8406 (regOne!39176 r1!2370)))))

(declare-fun b!7383169 () Bool)

(declare-fun call!679540 () (Set Context!16544))

(assert (=> b!7383169 (= e!4419384 call!679540)))

(declare-fun bm!679535 () Bool)

(assert (=> bm!679535 (= call!679540 call!679539)))

(declare-fun b!7383170 () Bool)

(declare-fun c!1372374 () Bool)

(assert (=> b!7383170 (= c!1372374 (is-Star!19332 r1!2370))))

(declare-fun e!4419385 () (Set Context!16544))

(assert (=> b!7383170 (= e!4419384 e!4419385)))

(declare-fun b!7383171 () Bool)

(assert (=> b!7383171 (= e!4419385 (as set.empty (Set Context!16544)))))

(declare-fun bm!679536 () Bool)

(assert (=> bm!679536 (= call!679539 call!679541)))

(declare-fun b!7383172 () Bool)

(assert (=> b!7383172 (= e!4419385 call!679540)))

(assert (= (and d!2286073 c!1372372) b!7383163))

(assert (= (and d!2286073 (not c!1372372)) b!7383166))

(assert (= (and b!7383166 c!1372371) b!7383167))

(assert (= (and b!7383166 (not c!1372371)) b!7383165))

(assert (= (and b!7383165 res!2977637) b!7383168))

(assert (= (and b!7383165 c!1372373) b!7383162))

(assert (= (and b!7383165 (not c!1372373)) b!7383164))

(assert (= (and b!7383164 c!1372370) b!7383169))

(assert (= (and b!7383164 (not c!1372370)) b!7383170))

(assert (= (and b!7383170 c!1372374) b!7383172))

(assert (= (and b!7383170 (not c!1372374)) b!7383171))

(assert (= (or b!7383169 b!7383172) bm!679532))

(assert (= (or b!7383169 b!7383172) bm!679535))

(assert (= (or b!7383162 bm!679535) bm!679536))

(assert (= (or b!7383162 bm!679532) bm!679534))

(assert (= (or b!7383167 bm!679536) bm!679531))

(assert (= (or b!7383167 b!7383162) bm!679533))

(declare-fun m!8032492 () Bool)

(assert (=> b!7383163 m!8032492))

(declare-fun m!8032494 () Bool)

(assert (=> bm!679533 m!8032494))

(declare-fun m!8032496 () Bool)

(assert (=> bm!679534 m!8032496))

(declare-fun m!8032498 () Bool)

(assert (=> bm!679531 m!8032498))

(assert (=> b!7383168 m!8032408))

(assert (=> b!7383087 d!2286073))

(declare-fun b!7383203 () Bool)

(declare-fun e!4419404 () List!71828)

(assert (=> b!7383203 (= e!4419404 (exprs!8772 ct2!378))))

(declare-fun b!7383205 () Bool)

(declare-fun res!2977645 () Bool)

(declare-fun e!4419403 () Bool)

(assert (=> b!7383205 (=> (not res!2977645) (not e!4419403))))

(declare-fun lt!2617294 () List!71828)

(declare-fun size!42169 (List!71828) Int)

(assert (=> b!7383205 (= res!2977645 (= (size!42169 lt!2617294) (+ (size!42169 (exprs!8772 ct1!282)) (size!42169 (exprs!8772 ct2!378)))))))

(declare-fun d!2286079 () Bool)

(assert (=> d!2286079 e!4419403))

(declare-fun res!2977644 () Bool)

(assert (=> d!2286079 (=> (not res!2977644) (not e!4419403))))

(declare-fun content!15191 (List!71828) (Set Regex!19332))

(assert (=> d!2286079 (= res!2977644 (= (content!15191 lt!2617294) (set.union (content!15191 (exprs!8772 ct1!282)) (content!15191 (exprs!8772 ct2!378)))))))

(assert (=> d!2286079 (= lt!2617294 e!4419404)))

(declare-fun c!1372387 () Bool)

(assert (=> d!2286079 (= c!1372387 (is-Nil!71704 (exprs!8772 ct1!282)))))

(assert (=> d!2286079 (= (++!17148 (exprs!8772 ct1!282) (exprs!8772 ct2!378)) lt!2617294)))

(declare-fun b!7383204 () Bool)

(assert (=> b!7383204 (= e!4419404 (Cons!71704 (h!78152 (exprs!8772 ct1!282)) (++!17148 (t!386325 (exprs!8772 ct1!282)) (exprs!8772 ct2!378))))))

(declare-fun b!7383206 () Bool)

(assert (=> b!7383206 (= e!4419403 (or (not (= (exprs!8772 ct2!378) Nil!71704)) (= lt!2617294 (exprs!8772 ct1!282))))))

(assert (= (and d!2286079 c!1372387) b!7383203))

(assert (= (and d!2286079 (not c!1372387)) b!7383204))

(assert (= (and d!2286079 res!2977644) b!7383205))

(assert (= (and b!7383205 res!2977645) b!7383206))

(declare-fun m!8032500 () Bool)

(assert (=> b!7383205 m!8032500))

(declare-fun m!8032502 () Bool)

(assert (=> b!7383205 m!8032502))

(declare-fun m!8032504 () Bool)

(assert (=> b!7383205 m!8032504))

(declare-fun m!8032506 () Bool)

(assert (=> d!2286079 m!8032506))

(declare-fun m!8032508 () Bool)

(assert (=> d!2286079 m!8032508))

(declare-fun m!8032510 () Bool)

(assert (=> d!2286079 m!8032510))

(declare-fun m!8032512 () Bool)

(assert (=> b!7383204 m!8032512))

(assert (=> b!7383087 d!2286079))

(declare-fun d!2286081 () Bool)

(declare-fun forall!18118 (List!71828 Int) Bool)

(assert (=> d!2286081 (forall!18118 (++!17148 (exprs!8772 ct1!282) (exprs!8772 ct2!378)) lambda!458658)))

(declare-fun lt!2617297 () Unit!165613)

(declare-fun choose!57354 (List!71828 List!71828 Int) Unit!165613)

(assert (=> d!2286081 (= lt!2617297 (choose!57354 (exprs!8772 ct1!282) (exprs!8772 ct2!378) lambda!458658))))

(assert (=> d!2286081 (forall!18118 (exprs!8772 ct1!282) lambda!458658)))

(assert (=> d!2286081 (= (lemmaConcatPreservesForall!2005 (exprs!8772 ct1!282) (exprs!8772 ct2!378) lambda!458658) lt!2617297)))

(declare-fun bs!1921745 () Bool)

(assert (= bs!1921745 d!2286081))

(assert (=> bs!1921745 m!8032422))

(assert (=> bs!1921745 m!8032422))

(declare-fun m!8032514 () Bool)

(assert (=> bs!1921745 m!8032514))

(declare-fun m!8032516 () Bool)

(assert (=> bs!1921745 m!8032516))

(declare-fun m!8032518 () Bool)

(assert (=> bs!1921745 m!8032518))

(assert (=> b!7383087 d!2286081))

(declare-fun b!7383225 () Bool)

(declare-fun e!4419423 () Bool)

(declare-fun e!4419425 () Bool)

(assert (=> b!7383225 (= e!4419423 e!4419425)))

(declare-fun res!2977660 () Bool)

(assert (=> b!7383225 (= res!2977660 (not (nullable!8406 (reg!19661 r1!2370))))))

(assert (=> b!7383225 (=> (not res!2977660) (not e!4419425))))

(declare-fun b!7383226 () Bool)

(declare-fun call!679562 () Bool)

(assert (=> b!7383226 (= e!4419425 call!679562)))

(declare-fun b!7383227 () Bool)

(declare-fun e!4419419 () Bool)

(declare-fun call!679561 () Bool)

(assert (=> b!7383227 (= e!4419419 call!679561)))

(declare-fun bm!679555 () Bool)

(declare-fun c!1372392 () Bool)

(declare-fun c!1372393 () Bool)

(assert (=> bm!679555 (= call!679562 (validRegex!9928 (ite c!1372392 (reg!19661 r1!2370) (ite c!1372393 (regOne!39177 r1!2370) (regTwo!39176 r1!2370)))))))

(declare-fun b!7383228 () Bool)

(declare-fun e!4419420 () Bool)

(assert (=> b!7383228 (= e!4419423 e!4419420)))

(assert (=> b!7383228 (= c!1372393 (is-Union!19332 r1!2370))))

(declare-fun b!7383229 () Bool)

(declare-fun res!2977656 () Bool)

(declare-fun e!4419421 () Bool)

(assert (=> b!7383229 (=> (not res!2977656) (not e!4419421))))

(assert (=> b!7383229 (= res!2977656 call!679561)))

(assert (=> b!7383229 (= e!4419420 e!4419421)))

(declare-fun b!7383230 () Bool)

(declare-fun e!4419422 () Bool)

(assert (=> b!7383230 (= e!4419422 e!4419423)))

(assert (=> b!7383230 (= c!1372392 (is-Star!19332 r1!2370))))

(declare-fun b!7383231 () Bool)

(declare-fun call!679560 () Bool)

(assert (=> b!7383231 (= e!4419421 call!679560)))

(declare-fun bm!679556 () Bool)

(assert (=> bm!679556 (= call!679561 call!679562)))

(declare-fun b!7383232 () Bool)

(declare-fun e!4419424 () Bool)

(assert (=> b!7383232 (= e!4419424 e!4419419)))

(declare-fun res!2977657 () Bool)

(assert (=> b!7383232 (=> (not res!2977657) (not e!4419419))))

(assert (=> b!7383232 (= res!2977657 call!679560)))

(declare-fun d!2286083 () Bool)

(declare-fun res!2977658 () Bool)

(assert (=> d!2286083 (=> res!2977658 e!4419422)))

(assert (=> d!2286083 (= res!2977658 (is-ElementMatch!19332 r1!2370))))

(assert (=> d!2286083 (= (validRegex!9928 r1!2370) e!4419422)))

(declare-fun bm!679557 () Bool)

(assert (=> bm!679557 (= call!679560 (validRegex!9928 (ite c!1372393 (regTwo!39177 r1!2370) (regOne!39176 r1!2370))))))

(declare-fun b!7383233 () Bool)

(declare-fun res!2977659 () Bool)

(assert (=> b!7383233 (=> res!2977659 e!4419424)))

(assert (=> b!7383233 (= res!2977659 (not (is-Concat!28177 r1!2370)))))

(assert (=> b!7383233 (= e!4419420 e!4419424)))

(assert (= (and d!2286083 (not res!2977658)) b!7383230))

(assert (= (and b!7383230 c!1372392) b!7383225))

(assert (= (and b!7383230 (not c!1372392)) b!7383228))

(assert (= (and b!7383225 res!2977660) b!7383226))

(assert (= (and b!7383228 c!1372393) b!7383229))

(assert (= (and b!7383228 (not c!1372393)) b!7383233))

(assert (= (and b!7383229 res!2977656) b!7383231))

(assert (= (and b!7383233 (not res!2977659)) b!7383232))

(assert (= (and b!7383232 res!2977657) b!7383227))

(assert (= (or b!7383229 b!7383227) bm!679556))

(assert (= (or b!7383231 b!7383232) bm!679557))

(assert (= (or b!7383226 bm!679556) bm!679555))

(declare-fun m!8032520 () Bool)

(assert (=> b!7383225 m!8032520))

(declare-fun m!8032522 () Bool)

(assert (=> bm!679555 m!8032522))

(declare-fun m!8032524 () Bool)

(assert (=> bm!679557 m!8032524))

(assert (=> start!720186 d!2286083))

(declare-fun bs!1921746 () Bool)

(declare-fun d!2286085 () Bool)

(assert (= bs!1921746 (and d!2286085 b!7383087)))

(declare-fun lambda!458674 () Int)

(assert (=> bs!1921746 (= lambda!458674 lambda!458658)))

(assert (=> d!2286085 (= (inv!91671 cWitness!61) (forall!18118 (exprs!8772 cWitness!61) lambda!458674))))

(declare-fun bs!1921747 () Bool)

(assert (= bs!1921747 d!2286085))

(declare-fun m!8032526 () Bool)

(assert (=> bs!1921747 m!8032526))

(assert (=> start!720186 d!2286085))

(declare-fun bs!1921748 () Bool)

(declare-fun d!2286087 () Bool)

(assert (= bs!1921748 (and d!2286087 b!7383087)))

(declare-fun lambda!458675 () Int)

(assert (=> bs!1921748 (= lambda!458675 lambda!458658)))

(declare-fun bs!1921749 () Bool)

(assert (= bs!1921749 (and d!2286087 d!2286085)))

(assert (=> bs!1921749 (= lambda!458675 lambda!458674)))

(assert (=> d!2286087 (= (inv!91671 ct1!282) (forall!18118 (exprs!8772 ct1!282) lambda!458675))))

(declare-fun bs!1921750 () Bool)

(assert (= bs!1921750 d!2286087))

(declare-fun m!8032528 () Bool)

(assert (=> bs!1921750 m!8032528))

(assert (=> start!720186 d!2286087))

(declare-fun bs!1921751 () Bool)

(declare-fun d!2286089 () Bool)

(assert (= bs!1921751 (and d!2286089 b!7383087)))

(declare-fun lambda!458676 () Int)

(assert (=> bs!1921751 (= lambda!458676 lambda!458658)))

(declare-fun bs!1921752 () Bool)

(assert (= bs!1921752 (and d!2286089 d!2286085)))

(assert (=> bs!1921752 (= lambda!458676 lambda!458674)))

(declare-fun bs!1921753 () Bool)

(assert (= bs!1921753 (and d!2286089 d!2286087)))

(assert (=> bs!1921753 (= lambda!458676 lambda!458675)))

(assert (=> d!2286089 (= (inv!91671 ct2!378) (forall!18118 (exprs!8772 ct2!378) lambda!458676))))

(declare-fun bs!1921754 () Bool)

(assert (= bs!1921754 d!2286089))

(declare-fun m!8032530 () Bool)

(assert (=> bs!1921754 m!8032530))

(assert (=> start!720186 d!2286089))

(declare-fun b!7383234 () Bool)

(declare-fun e!4419430 () Bool)

(declare-fun e!4419432 () Bool)

(assert (=> b!7383234 (= e!4419430 e!4419432)))

(declare-fun res!2977665 () Bool)

(assert (=> b!7383234 (= res!2977665 (not (nullable!8406 (reg!19661 lt!2617247))))))

(assert (=> b!7383234 (=> (not res!2977665) (not e!4419432))))

(declare-fun b!7383235 () Bool)

(declare-fun call!679565 () Bool)

(assert (=> b!7383235 (= e!4419432 call!679565)))

(declare-fun b!7383236 () Bool)

(declare-fun e!4419426 () Bool)

(declare-fun call!679564 () Bool)

(assert (=> b!7383236 (= e!4419426 call!679564)))

(declare-fun bm!679558 () Bool)

(declare-fun c!1372395 () Bool)

(declare-fun c!1372394 () Bool)

(assert (=> bm!679558 (= call!679565 (validRegex!9928 (ite c!1372394 (reg!19661 lt!2617247) (ite c!1372395 (regOne!39177 lt!2617247) (regTwo!39176 lt!2617247)))))))

(declare-fun b!7383237 () Bool)

(declare-fun e!4419427 () Bool)

(assert (=> b!7383237 (= e!4419430 e!4419427)))

(assert (=> b!7383237 (= c!1372395 (is-Union!19332 lt!2617247))))

(declare-fun b!7383238 () Bool)

(declare-fun res!2977661 () Bool)

(declare-fun e!4419428 () Bool)

(assert (=> b!7383238 (=> (not res!2977661) (not e!4419428))))

(assert (=> b!7383238 (= res!2977661 call!679564)))

(assert (=> b!7383238 (= e!4419427 e!4419428)))

(declare-fun b!7383239 () Bool)

(declare-fun e!4419429 () Bool)

(assert (=> b!7383239 (= e!4419429 e!4419430)))

(assert (=> b!7383239 (= c!1372394 (is-Star!19332 lt!2617247))))

(declare-fun b!7383240 () Bool)

(declare-fun call!679563 () Bool)

(assert (=> b!7383240 (= e!4419428 call!679563)))

(declare-fun bm!679559 () Bool)

(assert (=> bm!679559 (= call!679564 call!679565)))

(declare-fun b!7383241 () Bool)

(declare-fun e!4419431 () Bool)

(assert (=> b!7383241 (= e!4419431 e!4419426)))

(declare-fun res!2977662 () Bool)

(assert (=> b!7383241 (=> (not res!2977662) (not e!4419426))))

(assert (=> b!7383241 (= res!2977662 call!679563)))

(declare-fun d!2286091 () Bool)

(declare-fun res!2977663 () Bool)

(assert (=> d!2286091 (=> res!2977663 e!4419429)))

(assert (=> d!2286091 (= res!2977663 (is-ElementMatch!19332 lt!2617247))))

(assert (=> d!2286091 (= (validRegex!9928 lt!2617247) e!4419429)))

(declare-fun bm!679560 () Bool)

(assert (=> bm!679560 (= call!679563 (validRegex!9928 (ite c!1372395 (regTwo!39177 lt!2617247) (regOne!39176 lt!2617247))))))

(declare-fun b!7383242 () Bool)

(declare-fun res!2977664 () Bool)

(assert (=> b!7383242 (=> res!2977664 e!4419431)))

(assert (=> b!7383242 (= res!2977664 (not (is-Concat!28177 lt!2617247)))))

(assert (=> b!7383242 (= e!4419427 e!4419431)))

(assert (= (and d!2286091 (not res!2977663)) b!7383239))

(assert (= (and b!7383239 c!1372394) b!7383234))

(assert (= (and b!7383239 (not c!1372394)) b!7383237))

(assert (= (and b!7383234 res!2977665) b!7383235))

(assert (= (and b!7383237 c!1372395) b!7383238))

(assert (= (and b!7383237 (not c!1372395)) b!7383242))

(assert (= (and b!7383238 res!2977661) b!7383240))

(assert (= (and b!7383242 (not res!2977664)) b!7383241))

(assert (= (and b!7383241 res!2977662) b!7383236))

(assert (= (or b!7383238 b!7383236) bm!679559))

(assert (= (or b!7383240 b!7383241) bm!679560))

(assert (= (or b!7383235 bm!679559) bm!679558))

(declare-fun m!8032532 () Bool)

(assert (=> b!7383234 m!8032532))

(declare-fun m!8032534 () Bool)

(assert (=> bm!679558 m!8032534))

(declare-fun m!8032536 () Bool)

(assert (=> bm!679560 m!8032536))

(assert (=> b!7383076 d!2286091))

(declare-fun c!1372396 () Bool)

(declare-fun c!1372399 () Bool)

(declare-fun call!679571 () (Set Context!16544))

(declare-fun c!1372397 () Bool)

(declare-fun call!679567 () List!71828)

(declare-fun bm!679561 () Bool)

(assert (=> bm!679561 (= call!679571 (derivationStepZipperDown!3158 (ite c!1372397 (regTwo!39177 (reg!19661 r1!2370)) (ite c!1372399 (regTwo!39176 (reg!19661 r1!2370)) (ite c!1372396 (regOne!39176 (reg!19661 r1!2370)) (reg!19661 (reg!19661 r1!2370))))) (ite (or c!1372397 c!1372399) lt!2617242 (Context!16545 call!679567)) c!10362))))

(declare-fun bm!679562 () Bool)

(declare-fun call!679566 () List!71828)

(assert (=> bm!679562 (= call!679567 call!679566)))

(declare-fun b!7383243 () Bool)

(declare-fun e!4419433 () (Set Context!16544))

(declare-fun call!679568 () (Set Context!16544))

(declare-fun call!679569 () (Set Context!16544))

(assert (=> b!7383243 (= e!4419433 (set.union call!679568 call!679569))))

(declare-fun d!2286093 () Bool)

(declare-fun c!1372398 () Bool)

(assert (=> d!2286093 (= c!1372398 (and (is-ElementMatch!19332 (reg!19661 r1!2370)) (= (c!1372358 (reg!19661 r1!2370)) c!10362)))))

(declare-fun e!4419434 () (Set Context!16544))

(assert (=> d!2286093 (= (derivationStepZipperDown!3158 (reg!19661 r1!2370) lt!2617242 c!10362) e!4419434)))

(declare-fun bm!679563 () Bool)

(assert (=> bm!679563 (= call!679568 (derivationStepZipperDown!3158 (ite c!1372397 (regOne!39177 (reg!19661 r1!2370)) (regOne!39176 (reg!19661 r1!2370))) (ite c!1372397 lt!2617242 (Context!16545 call!679566)) c!10362))))

(declare-fun b!7383244 () Bool)

(assert (=> b!7383244 (= e!4419434 (set.insert lt!2617242 (as set.empty (Set Context!16544))))))

(declare-fun b!7383245 () Bool)

(declare-fun e!4419436 () (Set Context!16544))

(assert (=> b!7383245 (= e!4419433 e!4419436)))

(assert (=> b!7383245 (= c!1372396 (is-Concat!28177 (reg!19661 r1!2370)))))

(declare-fun b!7383246 () Bool)

(declare-fun e!4419438 () Bool)

(assert (=> b!7383246 (= c!1372399 e!4419438)))

(declare-fun res!2977666 () Bool)

(assert (=> b!7383246 (=> (not res!2977666) (not e!4419438))))

(assert (=> b!7383246 (= res!2977666 (is-Concat!28177 (reg!19661 r1!2370)))))

(declare-fun e!4419435 () (Set Context!16544))

(assert (=> b!7383246 (= e!4419435 e!4419433)))

(declare-fun bm!679564 () Bool)

(assert (=> bm!679564 (= call!679566 ($colon$colon!3310 (exprs!8772 lt!2617242) (ite (or c!1372399 c!1372396) (regTwo!39176 (reg!19661 r1!2370)) (reg!19661 r1!2370))))))

(declare-fun b!7383247 () Bool)

(assert (=> b!7383247 (= e!4419434 e!4419435)))

(assert (=> b!7383247 (= c!1372397 (is-Union!19332 (reg!19661 r1!2370)))))

(declare-fun b!7383248 () Bool)

(assert (=> b!7383248 (= e!4419435 (set.union call!679568 call!679571))))

(declare-fun b!7383249 () Bool)

(assert (=> b!7383249 (= e!4419438 (nullable!8406 (regOne!39176 (reg!19661 r1!2370))))))

(declare-fun b!7383250 () Bool)

(declare-fun call!679570 () (Set Context!16544))

(assert (=> b!7383250 (= e!4419436 call!679570)))

(declare-fun bm!679565 () Bool)

(assert (=> bm!679565 (= call!679570 call!679569)))

(declare-fun b!7383251 () Bool)

(declare-fun c!1372400 () Bool)

(assert (=> b!7383251 (= c!1372400 (is-Star!19332 (reg!19661 r1!2370)))))

(declare-fun e!4419437 () (Set Context!16544))

(assert (=> b!7383251 (= e!4419436 e!4419437)))

(declare-fun b!7383252 () Bool)

(assert (=> b!7383252 (= e!4419437 (as set.empty (Set Context!16544)))))

(declare-fun bm!679566 () Bool)

(assert (=> bm!679566 (= call!679569 call!679571)))

(declare-fun b!7383253 () Bool)

(assert (=> b!7383253 (= e!4419437 call!679570)))

(assert (= (and d!2286093 c!1372398) b!7383244))

(assert (= (and d!2286093 (not c!1372398)) b!7383247))

(assert (= (and b!7383247 c!1372397) b!7383248))

(assert (= (and b!7383247 (not c!1372397)) b!7383246))

(assert (= (and b!7383246 res!2977666) b!7383249))

(assert (= (and b!7383246 c!1372399) b!7383243))

(assert (= (and b!7383246 (not c!1372399)) b!7383245))

(assert (= (and b!7383245 c!1372396) b!7383250))

(assert (= (and b!7383245 (not c!1372396)) b!7383251))

(assert (= (and b!7383251 c!1372400) b!7383253))

(assert (= (and b!7383251 (not c!1372400)) b!7383252))

(assert (= (or b!7383250 b!7383253) bm!679562))

(assert (= (or b!7383250 b!7383253) bm!679565))

(assert (= (or b!7383243 bm!679565) bm!679566))

(assert (= (or b!7383243 bm!679562) bm!679564))

(assert (= (or b!7383248 bm!679566) bm!679561))

(assert (= (or b!7383248 b!7383243) bm!679563))

(declare-fun m!8032538 () Bool)

(assert (=> b!7383244 m!8032538))

(declare-fun m!8032540 () Bool)

(assert (=> bm!679563 m!8032540))

(declare-fun m!8032542 () Bool)

(assert (=> bm!679564 m!8032542))

(declare-fun m!8032544 () Bool)

(assert (=> bm!679561 m!8032544))

(declare-fun m!8032546 () Bool)

(assert (=> b!7383249 m!8032546))

(assert (=> b!7383078 d!2286093))

(declare-fun d!2286095 () Bool)

(assert (=> d!2286095 (= ($colon$colon!3310 (exprs!8772 ct1!282) lt!2617247) (Cons!71704 lt!2617247 (exprs!8772 ct1!282)))))

(assert (=> b!7383078 d!2286095))

(declare-fun c!1372404 () Bool)

(declare-fun bm!679567 () Bool)

(declare-fun c!1372402 () Bool)

(declare-fun c!1372401 () Bool)

(declare-fun call!679577 () (Set Context!16544))

(declare-fun call!679573 () List!71828)

(assert (=> bm!679567 (= call!679577 (derivationStepZipperDown!3158 (ite c!1372402 (regTwo!39177 r1!2370) (ite c!1372404 (regTwo!39176 r1!2370) (ite c!1372401 (regOne!39176 r1!2370) (reg!19661 r1!2370)))) (ite (or c!1372402 c!1372404) ct1!282 (Context!16545 call!679573)) c!10362))))

(declare-fun bm!679568 () Bool)

(declare-fun call!679572 () List!71828)

(assert (=> bm!679568 (= call!679573 call!679572)))

(declare-fun b!7383254 () Bool)

(declare-fun e!4419439 () (Set Context!16544))

(declare-fun call!679574 () (Set Context!16544))

(declare-fun call!679575 () (Set Context!16544))

(assert (=> b!7383254 (= e!4419439 (set.union call!679574 call!679575))))

(declare-fun d!2286097 () Bool)

(declare-fun c!1372403 () Bool)

(assert (=> d!2286097 (= c!1372403 (and (is-ElementMatch!19332 r1!2370) (= (c!1372358 r1!2370) c!10362)))))

(declare-fun e!4419440 () (Set Context!16544))

(assert (=> d!2286097 (= (derivationStepZipperDown!3158 r1!2370 ct1!282 c!10362) e!4419440)))

(declare-fun bm!679569 () Bool)

(assert (=> bm!679569 (= call!679574 (derivationStepZipperDown!3158 (ite c!1372402 (regOne!39177 r1!2370) (regOne!39176 r1!2370)) (ite c!1372402 ct1!282 (Context!16545 call!679572)) c!10362))))

(declare-fun b!7383255 () Bool)

(assert (=> b!7383255 (= e!4419440 (set.insert ct1!282 (as set.empty (Set Context!16544))))))

(declare-fun b!7383256 () Bool)

(declare-fun e!4419442 () (Set Context!16544))

(assert (=> b!7383256 (= e!4419439 e!4419442)))

(assert (=> b!7383256 (= c!1372401 (is-Concat!28177 r1!2370))))

(declare-fun b!7383257 () Bool)

(declare-fun e!4419444 () Bool)

(assert (=> b!7383257 (= c!1372404 e!4419444)))

(declare-fun res!2977667 () Bool)

(assert (=> b!7383257 (=> (not res!2977667) (not e!4419444))))

(assert (=> b!7383257 (= res!2977667 (is-Concat!28177 r1!2370))))

(declare-fun e!4419441 () (Set Context!16544))

(assert (=> b!7383257 (= e!4419441 e!4419439)))

(declare-fun bm!679570 () Bool)

(assert (=> bm!679570 (= call!679572 ($colon$colon!3310 (exprs!8772 ct1!282) (ite (or c!1372404 c!1372401) (regTwo!39176 r1!2370) r1!2370)))))

(declare-fun b!7383258 () Bool)

(assert (=> b!7383258 (= e!4419440 e!4419441)))

(assert (=> b!7383258 (= c!1372402 (is-Union!19332 r1!2370))))

(declare-fun b!7383259 () Bool)

(assert (=> b!7383259 (= e!4419441 (set.union call!679574 call!679577))))

(declare-fun b!7383260 () Bool)

(assert (=> b!7383260 (= e!4419444 (nullable!8406 (regOne!39176 r1!2370)))))

(declare-fun b!7383261 () Bool)

(declare-fun call!679576 () (Set Context!16544))

(assert (=> b!7383261 (= e!4419442 call!679576)))

(declare-fun bm!679571 () Bool)

(assert (=> bm!679571 (= call!679576 call!679575)))

(declare-fun b!7383262 () Bool)

(declare-fun c!1372405 () Bool)

(assert (=> b!7383262 (= c!1372405 (is-Star!19332 r1!2370))))

(declare-fun e!4419443 () (Set Context!16544))

(assert (=> b!7383262 (= e!4419442 e!4419443)))

(declare-fun b!7383263 () Bool)

(assert (=> b!7383263 (= e!4419443 (as set.empty (Set Context!16544)))))

(declare-fun bm!679572 () Bool)

(assert (=> bm!679572 (= call!679575 call!679577)))

(declare-fun b!7383264 () Bool)

(assert (=> b!7383264 (= e!4419443 call!679576)))

(assert (= (and d!2286097 c!1372403) b!7383255))

(assert (= (and d!2286097 (not c!1372403)) b!7383258))

(assert (= (and b!7383258 c!1372402) b!7383259))

(assert (= (and b!7383258 (not c!1372402)) b!7383257))

(assert (= (and b!7383257 res!2977667) b!7383260))

(assert (= (and b!7383257 c!1372404) b!7383254))

(assert (= (and b!7383257 (not c!1372404)) b!7383256))

(assert (= (and b!7383256 c!1372401) b!7383261))

(assert (= (and b!7383256 (not c!1372401)) b!7383262))

(assert (= (and b!7383262 c!1372405) b!7383264))

(assert (= (and b!7383262 (not c!1372405)) b!7383263))

(assert (= (or b!7383261 b!7383264) bm!679568))

(assert (= (or b!7383261 b!7383264) bm!679571))

(assert (= (or b!7383254 bm!679571) bm!679572))

(assert (= (or b!7383254 bm!679568) bm!679570))

(assert (= (or b!7383259 bm!679572) bm!679567))

(assert (= (or b!7383259 b!7383254) bm!679569))

(declare-fun m!8032548 () Bool)

(assert (=> b!7383255 m!8032548))

(declare-fun m!8032550 () Bool)

(assert (=> bm!679569 m!8032550))

(declare-fun m!8032552 () Bool)

(assert (=> bm!679570 m!8032552))

(declare-fun m!8032554 () Bool)

(assert (=> bm!679567 m!8032554))

(assert (=> b!7383260 m!8032408))

(assert (=> b!7383077 d!2286097))

(declare-fun d!2286099 () Bool)

(declare-fun nullableFct!3376 (Regex!19332) Bool)

(assert (=> d!2286099 (= (nullable!8406 (regOne!39176 r1!2370)) (nullableFct!3376 (regOne!39176 r1!2370)))))

(declare-fun bs!1921755 () Bool)

(assert (= bs!1921755 d!2286099))

(declare-fun m!8032556 () Bool)

(assert (=> bs!1921755 m!8032556))

(assert (=> b!7383088 d!2286099))

(declare-fun call!679589 () (Set Context!16544))

(declare-fun c!1372412 () Bool)

(declare-fun bm!679579 () Bool)

(declare-fun c!1372411 () Bool)

(declare-fun c!1372414 () Bool)

(declare-fun call!679585 () List!71828)

(assert (=> bm!679579 (= call!679589 (derivationStepZipperDown!3158 (ite c!1372412 (regTwo!39177 (reg!19661 r1!2370)) (ite c!1372414 (regTwo!39176 (reg!19661 r1!2370)) (ite c!1372411 (regOne!39176 (reg!19661 r1!2370)) (reg!19661 (reg!19661 r1!2370))))) (ite (or c!1372412 c!1372414) (Context!16545 (++!17148 lt!2617245 (exprs!8772 ct2!378))) (Context!16545 call!679585)) c!10362))))

(declare-fun bm!679580 () Bool)

(declare-fun call!679584 () List!71828)

(assert (=> bm!679580 (= call!679585 call!679584)))

(declare-fun b!7383276 () Bool)

(declare-fun e!4419451 () (Set Context!16544))

(declare-fun call!679586 () (Set Context!16544))

(declare-fun call!679587 () (Set Context!16544))

(assert (=> b!7383276 (= e!4419451 (set.union call!679586 call!679587))))

(declare-fun d!2286101 () Bool)

(declare-fun c!1372413 () Bool)

(assert (=> d!2286101 (= c!1372413 (and (is-ElementMatch!19332 (reg!19661 r1!2370)) (= (c!1372358 (reg!19661 r1!2370)) c!10362)))))

(declare-fun e!4419452 () (Set Context!16544))

(assert (=> d!2286101 (= (derivationStepZipperDown!3158 (reg!19661 r1!2370) (Context!16545 (++!17148 lt!2617245 (exprs!8772 ct2!378))) c!10362) e!4419452)))

(declare-fun bm!679581 () Bool)

(assert (=> bm!679581 (= call!679586 (derivationStepZipperDown!3158 (ite c!1372412 (regOne!39177 (reg!19661 r1!2370)) (regOne!39176 (reg!19661 r1!2370))) (ite c!1372412 (Context!16545 (++!17148 lt!2617245 (exprs!8772 ct2!378))) (Context!16545 call!679584)) c!10362))))

(declare-fun b!7383277 () Bool)

(assert (=> b!7383277 (= e!4419452 (set.insert (Context!16545 (++!17148 lt!2617245 (exprs!8772 ct2!378))) (as set.empty (Set Context!16544))))))

(declare-fun b!7383278 () Bool)

(declare-fun e!4419454 () (Set Context!16544))

(assert (=> b!7383278 (= e!4419451 e!4419454)))

(assert (=> b!7383278 (= c!1372411 (is-Concat!28177 (reg!19661 r1!2370)))))

(declare-fun b!7383279 () Bool)

(declare-fun e!4419456 () Bool)

(assert (=> b!7383279 (= c!1372414 e!4419456)))

(declare-fun res!2977669 () Bool)

(assert (=> b!7383279 (=> (not res!2977669) (not e!4419456))))

(assert (=> b!7383279 (= res!2977669 (is-Concat!28177 (reg!19661 r1!2370)))))

(declare-fun e!4419453 () (Set Context!16544))

(assert (=> b!7383279 (= e!4419453 e!4419451)))

(declare-fun bm!679582 () Bool)

(assert (=> bm!679582 (= call!679584 ($colon$colon!3310 (exprs!8772 (Context!16545 (++!17148 lt!2617245 (exprs!8772 ct2!378)))) (ite (or c!1372414 c!1372411) (regTwo!39176 (reg!19661 r1!2370)) (reg!19661 r1!2370))))))

(declare-fun b!7383280 () Bool)

(assert (=> b!7383280 (= e!4419452 e!4419453)))

(assert (=> b!7383280 (= c!1372412 (is-Union!19332 (reg!19661 r1!2370)))))

(declare-fun b!7383281 () Bool)

(assert (=> b!7383281 (= e!4419453 (set.union call!679586 call!679589))))

(declare-fun b!7383282 () Bool)

(assert (=> b!7383282 (= e!4419456 (nullable!8406 (regOne!39176 (reg!19661 r1!2370))))))

(declare-fun b!7383283 () Bool)

(declare-fun call!679588 () (Set Context!16544))

(assert (=> b!7383283 (= e!4419454 call!679588)))

(declare-fun bm!679583 () Bool)

(assert (=> bm!679583 (= call!679588 call!679587)))

(declare-fun b!7383284 () Bool)

(declare-fun c!1372415 () Bool)

(assert (=> b!7383284 (= c!1372415 (is-Star!19332 (reg!19661 r1!2370)))))

(declare-fun e!4419455 () (Set Context!16544))

(assert (=> b!7383284 (= e!4419454 e!4419455)))

(declare-fun b!7383285 () Bool)

(assert (=> b!7383285 (= e!4419455 (as set.empty (Set Context!16544)))))

(declare-fun bm!679584 () Bool)

(assert (=> bm!679584 (= call!679587 call!679589)))

(declare-fun b!7383286 () Bool)

(assert (=> b!7383286 (= e!4419455 call!679588)))

(assert (= (and d!2286101 c!1372413) b!7383277))

(assert (= (and d!2286101 (not c!1372413)) b!7383280))

(assert (= (and b!7383280 c!1372412) b!7383281))

(assert (= (and b!7383280 (not c!1372412)) b!7383279))

(assert (= (and b!7383279 res!2977669) b!7383282))

(assert (= (and b!7383279 c!1372414) b!7383276))

(assert (= (and b!7383279 (not c!1372414)) b!7383278))

(assert (= (and b!7383278 c!1372411) b!7383283))

(assert (= (and b!7383278 (not c!1372411)) b!7383284))

(assert (= (and b!7383284 c!1372415) b!7383286))

(assert (= (and b!7383284 (not c!1372415)) b!7383285))

(assert (= (or b!7383283 b!7383286) bm!679580))

(assert (= (or b!7383283 b!7383286) bm!679583))

(assert (= (or b!7383276 bm!679583) bm!679584))

(assert (= (or b!7383276 bm!679580) bm!679582))

(assert (= (or b!7383281 bm!679584) bm!679579))

(assert (= (or b!7383281 b!7383276) bm!679581))

(declare-fun m!8032558 () Bool)

(assert (=> b!7383277 m!8032558))

(declare-fun m!8032560 () Bool)

(assert (=> bm!679581 m!8032560))

(declare-fun m!8032562 () Bool)

(assert (=> bm!679582 m!8032562))

(declare-fun m!8032566 () Bool)

(assert (=> bm!679579 m!8032566))

(assert (=> b!7383282 m!8032546))

(assert (=> b!7383079 d!2286101))

(declare-fun b!7383287 () Bool)

(declare-fun e!4419458 () List!71828)

(assert (=> b!7383287 (= e!4419458 (exprs!8772 ct2!378))))

(declare-fun b!7383289 () Bool)

(declare-fun res!2977671 () Bool)

(declare-fun e!4419457 () Bool)

(assert (=> b!7383289 (=> (not res!2977671) (not e!4419457))))

(declare-fun lt!2617298 () List!71828)

(assert (=> b!7383289 (= res!2977671 (= (size!42169 lt!2617298) (+ (size!42169 lt!2617245) (size!42169 (exprs!8772 ct2!378)))))))

(declare-fun d!2286103 () Bool)

(assert (=> d!2286103 e!4419457))

(declare-fun res!2977670 () Bool)

(assert (=> d!2286103 (=> (not res!2977670) (not e!4419457))))

(assert (=> d!2286103 (= res!2977670 (= (content!15191 lt!2617298) (set.union (content!15191 lt!2617245) (content!15191 (exprs!8772 ct2!378)))))))

(assert (=> d!2286103 (= lt!2617298 e!4419458)))

(declare-fun c!1372416 () Bool)

(assert (=> d!2286103 (= c!1372416 (is-Nil!71704 lt!2617245))))

(assert (=> d!2286103 (= (++!17148 lt!2617245 (exprs!8772 ct2!378)) lt!2617298)))

(declare-fun b!7383288 () Bool)

(assert (=> b!7383288 (= e!4419458 (Cons!71704 (h!78152 lt!2617245) (++!17148 (t!386325 lt!2617245) (exprs!8772 ct2!378))))))

(declare-fun b!7383290 () Bool)

(assert (=> b!7383290 (= e!4419457 (or (not (= (exprs!8772 ct2!378) Nil!71704)) (= lt!2617298 lt!2617245)))))

(assert (= (and d!2286103 c!1372416) b!7383287))

(assert (= (and d!2286103 (not c!1372416)) b!7383288))

(assert (= (and d!2286103 res!2977670) b!7383289))

(assert (= (and b!7383289 res!2977671) b!7383290))

(declare-fun m!8032574 () Bool)

(assert (=> b!7383289 m!8032574))

(declare-fun m!8032576 () Bool)

(assert (=> b!7383289 m!8032576))

(assert (=> b!7383289 m!8032504))

(declare-fun m!8032578 () Bool)

(assert (=> d!2286103 m!8032578))

(declare-fun m!8032580 () Bool)

(assert (=> d!2286103 m!8032580))

(assert (=> d!2286103 m!8032510))

(declare-fun m!8032582 () Bool)

(assert (=> b!7383288 m!8032582))

(assert (=> b!7383079 d!2286103))

(declare-fun bs!1921756 () Bool)

(declare-fun d!2286107 () Bool)

(assert (= bs!1921756 (and d!2286107 b!7383087)))

(declare-fun lambda!458681 () Int)

(assert (=> bs!1921756 (= lambda!458681 lambda!458658)))

(declare-fun bs!1921757 () Bool)

(assert (= bs!1921757 (and d!2286107 d!2286085)))

(assert (=> bs!1921757 (= lambda!458681 lambda!458674)))

(declare-fun bs!1921758 () Bool)

(assert (= bs!1921758 (and d!2286107 d!2286087)))

(assert (=> bs!1921758 (= lambda!458681 lambda!458675)))

(declare-fun bs!1921759 () Bool)

(assert (= bs!1921759 (and d!2286107 d!2286089)))

(assert (=> bs!1921759 (= lambda!458681 lambda!458676)))

(assert (=> d!2286107 (set.member (Context!16545 (++!17148 (exprs!8772 cWitness!61) (exprs!8772 ct2!378))) (derivationStepZipperDown!3158 (reg!19661 r1!2370) (Context!16545 (++!17148 (exprs!8772 lt!2617242) (exprs!8772 ct2!378))) c!10362))))

(declare-fun lt!2617309 () Unit!165613)

(assert (=> d!2286107 (= lt!2617309 (lemmaConcatPreservesForall!2005 (exprs!8772 lt!2617242) (exprs!8772 ct2!378) lambda!458681))))

(declare-fun lt!2617308 () Unit!165613)

(assert (=> d!2286107 (= lt!2617308 (lemmaConcatPreservesForall!2005 (exprs!8772 cWitness!61) (exprs!8772 ct2!378) lambda!458681))))

(declare-fun lt!2617307 () Unit!165613)

(declare-fun choose!57355 (Regex!19332 Context!16544 Context!16544 Context!16544 C!38938) Unit!165613)

(assert (=> d!2286107 (= lt!2617307 (choose!57355 (reg!19661 r1!2370) lt!2617242 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2286107 (validRegex!9928 (reg!19661 r1!2370))))

(assert (=> d!2286107 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!157 (reg!19661 r1!2370) lt!2617242 ct2!378 cWitness!61 c!10362) lt!2617307)))

(declare-fun bs!1921760 () Bool)

(assert (= bs!1921760 d!2286107))

(declare-fun m!8032584 () Bool)

(assert (=> bs!1921760 m!8032584))

(declare-fun m!8032586 () Bool)

(assert (=> bs!1921760 m!8032586))

(declare-fun m!8032588 () Bool)

(assert (=> bs!1921760 m!8032588))

(declare-fun m!8032590 () Bool)

(assert (=> bs!1921760 m!8032590))

(declare-fun m!8032592 () Bool)

(assert (=> bs!1921760 m!8032592))

(assert (=> bs!1921760 m!8032442))

(declare-fun m!8032594 () Bool)

(assert (=> bs!1921760 m!8032594))

(declare-fun m!8032596 () Bool)

(assert (=> bs!1921760 m!8032596))

(assert (=> b!7383079 d!2286107))

(declare-fun b!7383299 () Bool)

(declare-fun e!4419464 () List!71828)

(assert (=> b!7383299 (= e!4419464 (exprs!8772 ct2!378))))

(declare-fun b!7383301 () Bool)

(declare-fun res!2977677 () Bool)

(declare-fun e!4419463 () Bool)

(assert (=> b!7383301 (=> (not res!2977677) (not e!4419463))))

(declare-fun lt!2617310 () List!71828)

(assert (=> b!7383301 (= res!2977677 (= (size!42169 lt!2617310) (+ (size!42169 (exprs!8772 cWitness!61)) (size!42169 (exprs!8772 ct2!378)))))))

(declare-fun d!2286109 () Bool)

(assert (=> d!2286109 e!4419463))

(declare-fun res!2977676 () Bool)

(assert (=> d!2286109 (=> (not res!2977676) (not e!4419463))))

(assert (=> d!2286109 (= res!2977676 (= (content!15191 lt!2617310) (set.union (content!15191 (exprs!8772 cWitness!61)) (content!15191 (exprs!8772 ct2!378)))))))

(assert (=> d!2286109 (= lt!2617310 e!4419464)))

(declare-fun c!1372420 () Bool)

(assert (=> d!2286109 (= c!1372420 (is-Nil!71704 (exprs!8772 cWitness!61)))))

(assert (=> d!2286109 (= (++!17148 (exprs!8772 cWitness!61) (exprs!8772 ct2!378)) lt!2617310)))

(declare-fun b!7383300 () Bool)

(assert (=> b!7383300 (= e!4419464 (Cons!71704 (h!78152 (exprs!8772 cWitness!61)) (++!17148 (t!386325 (exprs!8772 cWitness!61)) (exprs!8772 ct2!378))))))

(declare-fun b!7383302 () Bool)

(assert (=> b!7383302 (= e!4419463 (or (not (= (exprs!8772 ct2!378) Nil!71704)) (= lt!2617310 (exprs!8772 cWitness!61))))))

(assert (= (and d!2286109 c!1372420) b!7383299))

(assert (= (and d!2286109 (not c!1372420)) b!7383300))

(assert (= (and d!2286109 res!2977676) b!7383301))

(assert (= (and b!7383301 res!2977677) b!7383302))

(declare-fun m!8032598 () Bool)

(assert (=> b!7383301 m!8032598))

(declare-fun m!8032600 () Bool)

(assert (=> b!7383301 m!8032600))

(assert (=> b!7383301 m!8032504))

(declare-fun m!8032602 () Bool)

(assert (=> d!2286109 m!8032602))

(declare-fun m!8032604 () Bool)

(assert (=> d!2286109 m!8032604))

(assert (=> d!2286109 m!8032510))

(declare-fun m!8032606 () Bool)

(assert (=> b!7383300 m!8032606))

(assert (=> b!7383079 d!2286109))

(declare-fun d!2286111 () Bool)

(assert (=> d!2286111 (forall!18118 (++!17148 (exprs!8772 cWitness!61) (exprs!8772 ct2!378)) lambda!458658)))

(declare-fun lt!2617311 () Unit!165613)

(assert (=> d!2286111 (= lt!2617311 (choose!57354 (exprs!8772 cWitness!61) (exprs!8772 ct2!378) lambda!458658))))

(assert (=> d!2286111 (forall!18118 (exprs!8772 cWitness!61) lambda!458658)))

(assert (=> d!2286111 (= (lemmaConcatPreservesForall!2005 (exprs!8772 cWitness!61) (exprs!8772 ct2!378) lambda!458658) lt!2617311)))

(declare-fun bs!1921761 () Bool)

(assert (= bs!1921761 d!2286111))

(assert (=> bs!1921761 m!8032442))

(assert (=> bs!1921761 m!8032442))

(declare-fun m!8032608 () Bool)

(assert (=> bs!1921761 m!8032608))

(declare-fun m!8032610 () Bool)

(assert (=> bs!1921761 m!8032610))

(declare-fun m!8032612 () Bool)

(assert (=> bs!1921761 m!8032612))

(assert (=> b!7383079 d!2286111))

(declare-fun d!2286113 () Bool)

(assert (=> d!2286113 (forall!18118 (++!17148 lt!2617245 (exprs!8772 ct2!378)) lambda!458658)))

(declare-fun lt!2617312 () Unit!165613)

(assert (=> d!2286113 (= lt!2617312 (choose!57354 lt!2617245 (exprs!8772 ct2!378) lambda!458658))))

(assert (=> d!2286113 (forall!18118 lt!2617245 lambda!458658)))

(assert (=> d!2286113 (= (lemmaConcatPreservesForall!2005 lt!2617245 (exprs!8772 ct2!378) lambda!458658) lt!2617312)))

(declare-fun bs!1921762 () Bool)

(assert (= bs!1921762 d!2286113))

(assert (=> bs!1921762 m!8032436))

(assert (=> bs!1921762 m!8032436))

(declare-fun m!8032614 () Bool)

(assert (=> bs!1921762 m!8032614))

(declare-fun m!8032616 () Bool)

(assert (=> bs!1921762 m!8032616))

(declare-fun m!8032618 () Bool)

(assert (=> bs!1921762 m!8032618))

(assert (=> b!7383079 d!2286113))

(declare-fun bs!1921763 () Bool)

(declare-fun d!2286115 () Bool)

(assert (= bs!1921763 (and d!2286115 d!2286087)))

(declare-fun lambda!458682 () Int)

(assert (=> bs!1921763 (= lambda!458682 lambda!458675)))

(declare-fun bs!1921764 () Bool)

(assert (= bs!1921764 (and d!2286115 b!7383087)))

(assert (=> bs!1921764 (= lambda!458682 lambda!458658)))

(declare-fun bs!1921765 () Bool)

(assert (= bs!1921765 (and d!2286115 d!2286107)))

(assert (=> bs!1921765 (= lambda!458682 lambda!458681)))

(declare-fun bs!1921766 () Bool)

(assert (= bs!1921766 (and d!2286115 d!2286085)))

(assert (=> bs!1921766 (= lambda!458682 lambda!458674)))

(declare-fun bs!1921767 () Bool)

(assert (= bs!1921767 (and d!2286115 d!2286089)))

(assert (=> bs!1921767 (= lambda!458682 lambda!458676)))

(assert (=> d!2286115 (= (inv!91671 lt!2617248) (forall!18118 (exprs!8772 lt!2617248) lambda!458682))))

(declare-fun bs!1921768 () Bool)

(assert (= bs!1921768 d!2286115))

(declare-fun m!8032620 () Bool)

(assert (=> bs!1921768 m!8032620))

(assert (=> b!7383084 d!2286115))

(assert (=> b!7383084 d!2286081))

(assert (=> b!7383084 d!2286111))

(declare-fun b!7383311 () Bool)

(declare-fun e!4419469 () Bool)

(declare-fun tp!2100252 () Bool)

(declare-fun tp!2100253 () Bool)

(assert (=> b!7383311 (= e!4419469 (and tp!2100252 tp!2100253))))

(assert (=> b!7383082 (= tp!2100218 e!4419469)))

(assert (= (and b!7383082 (is-Cons!71704 (exprs!8772 ct2!378))) b!7383311))

(declare-fun b!7383325 () Bool)

(declare-fun e!4419472 () Bool)

(declare-fun tp!2100265 () Bool)

(declare-fun tp!2100264 () Bool)

(assert (=> b!7383325 (= e!4419472 (and tp!2100265 tp!2100264))))

(declare-fun b!7383324 () Bool)

(declare-fun tp!2100266 () Bool)

(assert (=> b!7383324 (= e!4419472 tp!2100266)))

(declare-fun b!7383322 () Bool)

(assert (=> b!7383322 (= e!4419472 tp_is_empty!48909)))

(declare-fun b!7383323 () Bool)

(declare-fun tp!2100268 () Bool)

(declare-fun tp!2100267 () Bool)

(assert (=> b!7383323 (= e!4419472 (and tp!2100268 tp!2100267))))

(assert (=> b!7383081 (= tp!2100216 e!4419472)))

(assert (= (and b!7383081 (is-ElementMatch!19332 (reg!19661 r1!2370))) b!7383322))

(assert (= (and b!7383081 (is-Concat!28177 (reg!19661 r1!2370))) b!7383323))

(assert (= (and b!7383081 (is-Star!19332 (reg!19661 r1!2370))) b!7383324))

(assert (= (and b!7383081 (is-Union!19332 (reg!19661 r1!2370))) b!7383325))

(declare-fun b!7383326 () Bool)

(declare-fun e!4419473 () Bool)

(declare-fun tp!2100269 () Bool)

(declare-fun tp!2100270 () Bool)

(assert (=> b!7383326 (= e!4419473 (and tp!2100269 tp!2100270))))

(assert (=> b!7383089 (= tp!2100221 e!4419473)))

(assert (= (and b!7383089 (is-Cons!71704 (exprs!8772 cWitness!61))) b!7383326))

(declare-fun b!7383330 () Bool)

(declare-fun e!4419474 () Bool)

(declare-fun tp!2100272 () Bool)

(declare-fun tp!2100271 () Bool)

(assert (=> b!7383330 (= e!4419474 (and tp!2100272 tp!2100271))))

(declare-fun b!7383329 () Bool)

(declare-fun tp!2100273 () Bool)

(assert (=> b!7383329 (= e!4419474 tp!2100273)))

(declare-fun b!7383327 () Bool)

(assert (=> b!7383327 (= e!4419474 tp_is_empty!48909)))

(declare-fun b!7383328 () Bool)

(declare-fun tp!2100275 () Bool)

(declare-fun tp!2100274 () Bool)

(assert (=> b!7383328 (= e!4419474 (and tp!2100275 tp!2100274))))

(assert (=> b!7383086 (= tp!2100220 e!4419474)))

(assert (= (and b!7383086 (is-ElementMatch!19332 (regOne!39176 r1!2370))) b!7383327))

(assert (= (and b!7383086 (is-Concat!28177 (regOne!39176 r1!2370))) b!7383328))

(assert (= (and b!7383086 (is-Star!19332 (regOne!39176 r1!2370))) b!7383329))

(assert (= (and b!7383086 (is-Union!19332 (regOne!39176 r1!2370))) b!7383330))

(declare-fun b!7383334 () Bool)

(declare-fun e!4419475 () Bool)

(declare-fun tp!2100277 () Bool)

(declare-fun tp!2100276 () Bool)

(assert (=> b!7383334 (= e!4419475 (and tp!2100277 tp!2100276))))

(declare-fun b!7383333 () Bool)

(declare-fun tp!2100278 () Bool)

(assert (=> b!7383333 (= e!4419475 tp!2100278)))

(declare-fun b!7383331 () Bool)

(assert (=> b!7383331 (= e!4419475 tp_is_empty!48909)))

(declare-fun b!7383332 () Bool)

(declare-fun tp!2100280 () Bool)

(declare-fun tp!2100279 () Bool)

(assert (=> b!7383332 (= e!4419475 (and tp!2100280 tp!2100279))))

(assert (=> b!7383086 (= tp!2100222 e!4419475)))

(assert (= (and b!7383086 (is-ElementMatch!19332 (regTwo!39176 r1!2370))) b!7383331))

(assert (= (and b!7383086 (is-Concat!28177 (regTwo!39176 r1!2370))) b!7383332))

(assert (= (and b!7383086 (is-Star!19332 (regTwo!39176 r1!2370))) b!7383333))

(assert (= (and b!7383086 (is-Union!19332 (regTwo!39176 r1!2370))) b!7383334))

(declare-fun b!7383335 () Bool)

(declare-fun e!4419476 () Bool)

(declare-fun tp!2100281 () Bool)

(declare-fun tp!2100282 () Bool)

(assert (=> b!7383335 (= e!4419476 (and tp!2100281 tp!2100282))))

(assert (=> b!7383085 (= tp!2100223 e!4419476)))

(assert (= (and b!7383085 (is-Cons!71704 (exprs!8772 ct1!282))) b!7383335))

(declare-fun b!7383339 () Bool)

(declare-fun e!4419477 () Bool)

(declare-fun tp!2100284 () Bool)

(declare-fun tp!2100283 () Bool)

(assert (=> b!7383339 (= e!4419477 (and tp!2100284 tp!2100283))))

(declare-fun b!7383338 () Bool)

(declare-fun tp!2100285 () Bool)

(assert (=> b!7383338 (= e!4419477 tp!2100285)))

(declare-fun b!7383336 () Bool)

(assert (=> b!7383336 (= e!4419477 tp_is_empty!48909)))

(declare-fun b!7383337 () Bool)

(declare-fun tp!2100287 () Bool)

(declare-fun tp!2100286 () Bool)

(assert (=> b!7383337 (= e!4419477 (and tp!2100287 tp!2100286))))

(assert (=> b!7383080 (= tp!2100217 e!4419477)))

(assert (= (and b!7383080 (is-ElementMatch!19332 (regOne!39177 r1!2370))) b!7383336))

(assert (= (and b!7383080 (is-Concat!28177 (regOne!39177 r1!2370))) b!7383337))

(assert (= (and b!7383080 (is-Star!19332 (regOne!39177 r1!2370))) b!7383338))

(assert (= (and b!7383080 (is-Union!19332 (regOne!39177 r1!2370))) b!7383339))

(declare-fun b!7383343 () Bool)

(declare-fun e!4419478 () Bool)

(declare-fun tp!2100289 () Bool)

(declare-fun tp!2100288 () Bool)

(assert (=> b!7383343 (= e!4419478 (and tp!2100289 tp!2100288))))

(declare-fun b!7383342 () Bool)

(declare-fun tp!2100290 () Bool)

(assert (=> b!7383342 (= e!4419478 tp!2100290)))

(declare-fun b!7383340 () Bool)

(assert (=> b!7383340 (= e!4419478 tp_is_empty!48909)))

(declare-fun b!7383341 () Bool)

(declare-fun tp!2100292 () Bool)

(declare-fun tp!2100291 () Bool)

(assert (=> b!7383341 (= e!4419478 (and tp!2100292 tp!2100291))))

(assert (=> b!7383080 (= tp!2100219 e!4419478)))

(assert (= (and b!7383080 (is-ElementMatch!19332 (regTwo!39177 r1!2370))) b!7383340))

(assert (= (and b!7383080 (is-Concat!28177 (regTwo!39177 r1!2370))) b!7383341))

(assert (= (and b!7383080 (is-Star!19332 (regTwo!39177 r1!2370))) b!7383342))

(assert (= (and b!7383080 (is-Union!19332 (regTwo!39177 r1!2370))) b!7383343))

(push 1)

(assert (not bm!679531))

(assert (not b!7383323))

(assert (not b!7383341))

(assert (not b!7383330))

(assert (not b!7383289))

(assert (not bm!679567))

(assert (not d!2286089))

(assert (not b!7383335))

(assert (not b!7383288))

(assert (not b!7383328))

(assert (not d!2286113))

(assert (not d!2286079))

(assert (not bm!679563))

(assert (not bm!679560))

(assert (not b!7383342))

(assert (not d!2286085))

(assert (not bm!679558))

(assert (not b!7383234))

(assert (not b!7383260))

(assert (not b!7383301))

(assert (not bm!679561))

(assert (not b!7383329))

(assert (not d!2286115))

(assert (not b!7383324))

(assert (not bm!679570))

(assert (not bm!679564))

(assert (not b!7383204))

(assert (not b!7383343))

(assert (not d!2286109))

(assert (not d!2286099))

(assert (not b!7383282))

(assert (not bm!679555))

(assert (not b!7383205))

(assert (not b!7383326))

(assert (not bm!679533))

(assert (not b!7383168))

(assert (not d!2286107))

(assert (not b!7383338))

(assert (not b!7383311))

(assert (not b!7383300))

(assert (not b!7383325))

(assert (not bm!679582))

(assert (not bm!679569))

(assert (not b!7383334))

(assert (not bm!679581))

(assert (not b!7383225))

(assert (not b!7383249))

(assert (not bm!679534))

(assert (not b!7383332))

(assert (not d!2286081))

(assert tp_is_empty!48909)

(assert (not b!7383337))

(assert (not d!2286103))

(assert (not d!2286087))

(assert (not b!7383339))

(assert (not d!2286111))

(assert (not bm!679557))

(assert (not bm!679579))

(assert (not b!7383333))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

