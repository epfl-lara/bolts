; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!719404 () Bool)

(assert start!719404)

(declare-fun b!7371303 () Bool)

(declare-fun res!2974277 () Bool)

(declare-fun e!4412904 () Bool)

(assert (=> b!7371303 (=> (not res!2974277) (not e!4412904))))

(declare-datatypes ((C!38828 0))(
  ( (C!38829 (val!29774 Int)) )
))
(declare-datatypes ((Regex!19277 0))(
  ( (ElementMatch!19277 (c!1369991 C!38828)) (Concat!28122 (regOne!39066 Regex!19277) (regTwo!39066 Regex!19277)) (EmptyExpr!19277) (Star!19277 (reg!19606 Regex!19277)) (EmptyLang!19277) (Union!19277 (regOne!39067 Regex!19277) (regTwo!39067 Regex!19277)) )
))
(declare-fun r1!2370 () Regex!19277)

(declare-fun nullable!8353 (Regex!19277) Bool)

(assert (=> b!7371303 (= res!2974277 (nullable!8353 (regOne!39066 r1!2370)))))

(declare-fun b!7371304 () Bool)

(declare-fun e!4412903 () Bool)

(declare-fun e!4412906 () Bool)

(assert (=> b!7371304 (= e!4412903 (not e!4412906))))

(declare-fun res!2974281 () Bool)

(assert (=> b!7371304 (=> res!2974281 e!4412906)))

(declare-datatypes ((List!71773 0))(
  ( (Nil!71649) (Cons!71649 (h!78097 Regex!19277) (t!386236 List!71773)) )
))
(declare-datatypes ((Context!16434 0))(
  ( (Context!16435 (exprs!8717 List!71773)) )
))
(declare-fun lt!2615606 () Context!16434)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2615603 () (InoxSet Context!16434))

(assert (=> b!7371304 (= res!2974281 (not (select lt!2615603 lt!2615606)))))

(declare-fun ct2!378 () Context!16434)

(declare-fun cWitness!61 () Context!16434)

(declare-fun lambda!458033 () Int)

(declare-datatypes ((Unit!165503 0))(
  ( (Unit!165504) )
))
(declare-fun lt!2615607 () Unit!165503)

(declare-fun lemmaConcatPreservesForall!1950 (List!71773 List!71773 Int) Unit!165503)

(assert (=> b!7371304 (= lt!2615607 (lemmaConcatPreservesForall!1950 (exprs!8717 cWitness!61) (exprs!8717 ct2!378) lambda!458033))))

(declare-fun c!10362 () C!38828)

(declare-fun lt!2615611 () List!71773)

(declare-fun derivationStepZipperDown!3103 (Regex!19277 Context!16434 C!38828) (InoxSet Context!16434))

(declare-fun ++!17093 (List!71773 List!71773) List!71773)

(assert (=> b!7371304 (select (derivationStepZipperDown!3103 (regOne!39066 r1!2370) (Context!16435 (++!17093 lt!2615611 (exprs!8717 ct2!378))) c!10362) lt!2615606)))

(assert (=> b!7371304 (= lt!2615606 (Context!16435 (++!17093 (exprs!8717 cWitness!61) (exprs!8717 ct2!378))))))

(declare-fun lt!2615613 () Unit!165503)

(assert (=> b!7371304 (= lt!2615613 (lemmaConcatPreservesForall!1950 lt!2615611 (exprs!8717 ct2!378) lambda!458033))))

(declare-fun lt!2615612 () Unit!165503)

(assert (=> b!7371304 (= lt!2615612 (lemmaConcatPreservesForall!1950 (exprs!8717 cWitness!61) (exprs!8717 ct2!378) lambda!458033))))

(declare-fun lt!2615610 () Context!16434)

(declare-fun lt!2615602 () Unit!165503)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!136 (Regex!19277 Context!16434 Context!16434 Context!16434 C!38828) Unit!165503)

(assert (=> b!7371304 (= lt!2615602 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!136 (regOne!39066 r1!2370) lt!2615610 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7371305 () Bool)

(declare-fun e!4412902 () Bool)

(declare-fun e!4412899 () Bool)

(assert (=> b!7371305 (= e!4412902 e!4412899)))

(declare-fun res!2974278 () Bool)

(assert (=> b!7371305 (=> (not res!2974278) (not e!4412899))))

(declare-fun lt!2615609 () (InoxSet Context!16434))

(assert (=> b!7371305 (= res!2974278 (select lt!2615609 cWitness!61))))

(declare-fun ct1!282 () Context!16434)

(assert (=> b!7371305 (= lt!2615609 (derivationStepZipperDown!3103 r1!2370 ct1!282 c!10362))))

(declare-fun b!7371306 () Bool)

(assert (=> b!7371306 (= e!4412899 e!4412904)))

(declare-fun res!2974279 () Bool)

(assert (=> b!7371306 (=> (not res!2974279) (not e!4412904))))

(get-info :version)

(assert (=> b!7371306 (= res!2974279 (and (or (not ((_ is ElementMatch!19277) r1!2370)) (not (= c!10362 (c!1369991 r1!2370)))) (not ((_ is Union!19277) r1!2370)) ((_ is Concat!28122) r1!2370)))))

(assert (=> b!7371306 (= lt!2615603 (derivationStepZipperDown!3103 r1!2370 (Context!16435 (++!17093 (exprs!8717 ct1!282) (exprs!8717 ct2!378))) c!10362))))

(declare-fun lt!2615605 () Unit!165503)

(assert (=> b!7371306 (= lt!2615605 (lemmaConcatPreservesForall!1950 (exprs!8717 ct1!282) (exprs!8717 ct2!378) lambda!458033))))

(declare-fun b!7371307 () Bool)

(assert (=> b!7371307 (= e!4412906 true)))

(declare-fun lt!2615608 () Unit!165503)

(assert (=> b!7371307 (= lt!2615608 (lemmaConcatPreservesForall!1950 (exprs!8717 ct1!282) (exprs!8717 ct2!378) lambda!458033))))

(declare-fun lt!2615604 () Unit!165503)

(assert (=> b!7371307 (= lt!2615604 (lemmaConcatPreservesForall!1950 (exprs!8717 cWitness!61) (exprs!8717 ct2!378) lambda!458033))))

(declare-fun b!7371308 () Bool)

(declare-fun e!4412901 () Bool)

(declare-fun tp!2095528 () Bool)

(assert (=> b!7371308 (= e!4412901 tp!2095528)))

(declare-fun b!7371309 () Bool)

(assert (=> b!7371309 (= e!4412904 e!4412903)))

(declare-fun res!2974282 () Bool)

(assert (=> b!7371309 (=> (not res!2974282) (not e!4412903))))

(declare-fun lt!2615601 () (InoxSet Context!16434))

(assert (=> b!7371309 (= res!2974282 (= lt!2615609 ((_ map or) lt!2615601 (derivationStepZipperDown!3103 (regTwo!39066 r1!2370) ct1!282 c!10362))))))

(assert (=> b!7371309 (= lt!2615601 (derivationStepZipperDown!3103 (regOne!39066 r1!2370) lt!2615610 c!10362))))

(assert (=> b!7371309 (= lt!2615610 (Context!16435 lt!2615611))))

(declare-fun $colon$colon!3259 (List!71773 Regex!19277) List!71773)

(assert (=> b!7371309 (= lt!2615611 ($colon$colon!3259 (exprs!8717 ct1!282) (regTwo!39066 r1!2370)))))

(declare-fun b!7371310 () Bool)

(declare-fun res!2974280 () Bool)

(assert (=> b!7371310 (=> (not res!2974280) (not e!4412903))))

(assert (=> b!7371310 (= res!2974280 (select lt!2615601 cWitness!61))))

(declare-fun b!7371311 () Bool)

(declare-fun e!4412898 () Bool)

(declare-fun tp!2095527 () Bool)

(assert (=> b!7371311 (= e!4412898 tp!2095527)))

(declare-fun b!7371313 () Bool)

(declare-fun tp_is_empty!48799 () Bool)

(assert (=> b!7371313 (= e!4412898 tp_is_empty!48799)))

(declare-fun b!7371314 () Bool)

(declare-fun tp!2095524 () Bool)

(declare-fun tp!2095529 () Bool)

(assert (=> b!7371314 (= e!4412898 (and tp!2095524 tp!2095529))))

(declare-fun b!7371315 () Bool)

(declare-fun e!4412900 () Bool)

(declare-fun tp!2095525 () Bool)

(assert (=> b!7371315 (= e!4412900 tp!2095525)))

(declare-fun b!7371316 () Bool)

(declare-fun res!2974283 () Bool)

(assert (=> b!7371316 (=> (not res!2974283) (not e!4412904))))

(declare-fun validRegex!9873 (Regex!19277) Bool)

(assert (=> b!7371316 (= res!2974283 (validRegex!9873 (regTwo!39066 r1!2370)))))

(declare-fun b!7371317 () Bool)

(declare-fun e!4412905 () Bool)

(declare-fun tp!2095530 () Bool)

(assert (=> b!7371317 (= e!4412905 tp!2095530)))

(declare-fun b!7371312 () Bool)

(declare-fun tp!2095531 () Bool)

(declare-fun tp!2095526 () Bool)

(assert (=> b!7371312 (= e!4412898 (and tp!2095531 tp!2095526))))

(declare-fun res!2974284 () Bool)

(assert (=> start!719404 (=> (not res!2974284) (not e!4412902))))

(assert (=> start!719404 (= res!2974284 (validRegex!9873 r1!2370))))

(assert (=> start!719404 e!4412902))

(assert (=> start!719404 tp_is_empty!48799))

(declare-fun inv!91532 (Context!16434) Bool)

(assert (=> start!719404 (and (inv!91532 cWitness!61) e!4412901)))

(assert (=> start!719404 (and (inv!91532 ct1!282) e!4412905)))

(assert (=> start!719404 e!4412898))

(assert (=> start!719404 (and (inv!91532 ct2!378) e!4412900)))

(assert (= (and start!719404 res!2974284) b!7371305))

(assert (= (and b!7371305 res!2974278) b!7371306))

(assert (= (and b!7371306 res!2974279) b!7371303))

(assert (= (and b!7371303 res!2974277) b!7371316))

(assert (= (and b!7371316 res!2974283) b!7371309))

(assert (= (and b!7371309 res!2974282) b!7371310))

(assert (= (and b!7371310 res!2974280) b!7371304))

(assert (= (and b!7371304 (not res!2974281)) b!7371307))

(assert (= start!719404 b!7371308))

(assert (= start!719404 b!7371317))

(assert (= (and start!719404 ((_ is ElementMatch!19277) r1!2370)) b!7371313))

(assert (= (and start!719404 ((_ is Concat!28122) r1!2370)) b!7371312))

(assert (= (and start!719404 ((_ is Star!19277) r1!2370)) b!7371311))

(assert (= (and start!719404 ((_ is Union!19277) r1!2370)) b!7371314))

(assert (= start!719404 b!7371315))

(declare-fun m!8025060 () Bool)

(assert (=> b!7371310 m!8025060))

(declare-fun m!8025062 () Bool)

(assert (=> start!719404 m!8025062))

(declare-fun m!8025064 () Bool)

(assert (=> start!719404 m!8025064))

(declare-fun m!8025066 () Bool)

(assert (=> start!719404 m!8025066))

(declare-fun m!8025068 () Bool)

(assert (=> start!719404 m!8025068))

(declare-fun m!8025070 () Bool)

(assert (=> b!7371305 m!8025070))

(declare-fun m!8025072 () Bool)

(assert (=> b!7371305 m!8025072))

(declare-fun m!8025074 () Bool)

(assert (=> b!7371303 m!8025074))

(declare-fun m!8025076 () Bool)

(assert (=> b!7371304 m!8025076))

(declare-fun m!8025078 () Bool)

(assert (=> b!7371304 m!8025078))

(declare-fun m!8025080 () Bool)

(assert (=> b!7371304 m!8025080))

(declare-fun m!8025082 () Bool)

(assert (=> b!7371304 m!8025082))

(declare-fun m!8025084 () Bool)

(assert (=> b!7371304 m!8025084))

(declare-fun m!8025086 () Bool)

(assert (=> b!7371304 m!8025086))

(assert (=> b!7371304 m!8025084))

(declare-fun m!8025088 () Bool)

(assert (=> b!7371304 m!8025088))

(declare-fun m!8025090 () Bool)

(assert (=> b!7371304 m!8025090))

(declare-fun m!8025092 () Bool)

(assert (=> b!7371316 m!8025092))

(declare-fun m!8025094 () Bool)

(assert (=> b!7371306 m!8025094))

(declare-fun m!8025096 () Bool)

(assert (=> b!7371306 m!8025096))

(declare-fun m!8025098 () Bool)

(assert (=> b!7371306 m!8025098))

(assert (=> b!7371307 m!8025098))

(assert (=> b!7371307 m!8025084))

(declare-fun m!8025100 () Bool)

(assert (=> b!7371309 m!8025100))

(declare-fun m!8025102 () Bool)

(assert (=> b!7371309 m!8025102))

(declare-fun m!8025104 () Bool)

(assert (=> b!7371309 m!8025104))

(check-sat (not b!7371304) (not b!7371307) (not b!7371314) tp_is_empty!48799 (not b!7371306) (not b!7371309) (not b!7371315) (not b!7371312) (not b!7371311) (not b!7371303) (not b!7371317) (not b!7371305) (not b!7371308) (not b!7371316) (not start!719404))
(check-sat)
