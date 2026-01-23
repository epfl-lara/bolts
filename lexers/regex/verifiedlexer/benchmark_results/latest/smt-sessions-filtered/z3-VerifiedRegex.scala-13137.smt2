; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!717776 () Bool)

(assert start!717776)

(declare-fun b!7350138 () Bool)

(declare-fun e!4400995 () Bool)

(declare-fun tp!2087606 () Bool)

(declare-fun tp!2087604 () Bool)

(assert (=> b!7350138 (= e!4400995 (and tp!2087606 tp!2087604))))

(declare-fun b!7350139 () Bool)

(declare-fun tp!2087607 () Bool)

(declare-fun tp!2087609 () Bool)

(assert (=> b!7350139 (= e!4400995 (and tp!2087607 tp!2087609))))

(declare-fun b!7350140 () Bool)

(declare-fun tp!2087603 () Bool)

(assert (=> b!7350140 (= e!4400995 tp!2087603)))

(declare-fun b!7350141 () Bool)

(declare-fun e!4401000 () Bool)

(declare-fun e!4400993 () Bool)

(assert (=> b!7350141 (= e!4401000 (not e!4400993))))

(declare-fun res!2968367 () Bool)

(assert (=> b!7350141 (=> res!2968367 e!4400993)))

(declare-datatypes ((C!38600 0))(
  ( (C!38601 (val!29660 Int)) )
))
(declare-datatypes ((Regex!19163 0))(
  ( (ElementMatch!19163 (c!1365521 C!38600)) (Concat!28008 (regOne!38838 Regex!19163) (regTwo!38838 Regex!19163)) (EmptyExpr!19163) (Star!19163 (reg!19492 Regex!19163)) (EmptyLang!19163) (Union!19163 (regOne!38839 Regex!19163) (regTwo!38839 Regex!19163)) )
))
(declare-datatypes ((List!71659 0))(
  ( (Nil!71535) (Cons!71535 (h!77983 Regex!19163) (t!386076 List!71659)) )
))
(declare-datatypes ((Context!16206 0))(
  ( (Context!16207 (exprs!8603 List!71659)) )
))
(declare-fun lt!2612077 () Context!16206)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2612075 () (InoxSet Context!16206))

(assert (=> b!7350141 (= res!2968367 (not (select lt!2612075 lt!2612077)))))

(declare-fun cWitness!61 () Context!16206)

(declare-fun lambda!456501 () Int)

(declare-datatypes ((Unit!165279 0))(
  ( (Unit!165280) )
))
(declare-fun lt!2612079 () Unit!165279)

(declare-fun ct2!378 () Context!16206)

(declare-fun lemmaConcatPreservesForall!1838 (List!71659 List!71659 Int) Unit!165279)

(assert (=> b!7350141 (= lt!2612079 (lemmaConcatPreservesForall!1838 (exprs!8603 cWitness!61) (exprs!8603 ct2!378) lambda!456501))))

(declare-fun r1!2370 () Regex!19163)

(declare-fun c!10362 () C!38600)

(declare-fun lt!2612072 () Context!16206)

(declare-fun derivationStepZipperDown!2989 (Regex!19163 Context!16206 C!38600) (InoxSet Context!16206))

(assert (=> b!7350141 (select (derivationStepZipperDown!2989 (regTwo!38838 r1!2370) lt!2612072 c!10362) lt!2612077)))

(declare-fun ++!16981 (List!71659 List!71659) List!71659)

(assert (=> b!7350141 (= lt!2612077 (Context!16207 (++!16981 (exprs!8603 cWitness!61) (exprs!8603 ct2!378))))))

(declare-fun lt!2612078 () Unit!165279)

(declare-fun ct1!282 () Context!16206)

(assert (=> b!7350141 (= lt!2612078 (lemmaConcatPreservesForall!1838 (exprs!8603 ct1!282) (exprs!8603 ct2!378) lambda!456501))))

(declare-fun lt!2612081 () Unit!165279)

(assert (=> b!7350141 (= lt!2612081 (lemmaConcatPreservesForall!1838 (exprs!8603 cWitness!61) (exprs!8603 ct2!378) lambda!456501))))

(declare-fun lt!2612076 () Unit!165279)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!88 (Regex!19163 Context!16206 Context!16206 Context!16206 C!38600) Unit!165279)

(assert (=> b!7350141 (= lt!2612076 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!88 (regTwo!38838 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7350142 () Bool)

(declare-fun e!4400994 () Bool)

(declare-fun forall!17987 (List!71659 Int) Bool)

(assert (=> b!7350142 (= e!4400994 (forall!17987 (exprs!8603 ct2!378) lambda!456501))))

(declare-fun b!7350144 () Bool)

(declare-fun e!4401002 () Bool)

(assert (=> b!7350144 (= e!4401002 e!4401000)))

(declare-fun res!2968365 () Bool)

(assert (=> b!7350144 (=> (not res!2968365) (not e!4401000))))

(declare-fun lt!2612073 () (InoxSet Context!16206))

(declare-fun lt!2612071 () (InoxSet Context!16206))

(assert (=> b!7350144 (= res!2968365 (= lt!2612073 ((_ map or) lt!2612071 (derivationStepZipperDown!2989 (regTwo!38838 r1!2370) ct1!282 c!10362))))))

(declare-fun $colon$colon!3161 (List!71659 Regex!19163) List!71659)

(assert (=> b!7350144 (= lt!2612071 (derivationStepZipperDown!2989 (regOne!38838 r1!2370) (Context!16207 ($colon$colon!3161 (exprs!8603 ct1!282) (regTwo!38838 r1!2370))) c!10362))))

(declare-fun b!7350145 () Bool)

(declare-fun res!2968366 () Bool)

(assert (=> b!7350145 (=> (not res!2968366) (not e!4401002))))

(declare-fun nullable!8254 (Regex!19163) Bool)

(assert (=> b!7350145 (= res!2968366 (nullable!8254 (regOne!38838 r1!2370)))))

(declare-fun b!7350146 () Bool)

(declare-fun e!4400999 () Bool)

(declare-fun e!4401001 () Bool)

(assert (=> b!7350146 (= e!4400999 e!4401001)))

(declare-fun res!2968364 () Bool)

(assert (=> b!7350146 (=> (not res!2968364) (not e!4401001))))

(assert (=> b!7350146 (= res!2968364 (select lt!2612073 cWitness!61))))

(assert (=> b!7350146 (= lt!2612073 (derivationStepZipperDown!2989 r1!2370 ct1!282 c!10362))))

(declare-fun b!7350147 () Bool)

(declare-fun e!4400998 () Bool)

(declare-fun tp!2087608 () Bool)

(assert (=> b!7350147 (= e!4400998 tp!2087608)))

(declare-fun b!7350148 () Bool)

(assert (=> b!7350148 (= e!4401001 e!4401002)))

(declare-fun res!2968362 () Bool)

(assert (=> b!7350148 (=> (not res!2968362) (not e!4401002))))

(get-info :version)

(assert (=> b!7350148 (= res!2968362 (and (or (not ((_ is ElementMatch!19163) r1!2370)) (not (= c!10362 (c!1365521 r1!2370)))) (not ((_ is Union!19163) r1!2370)) ((_ is Concat!28008) r1!2370)))))

(assert (=> b!7350148 (= lt!2612075 (derivationStepZipperDown!2989 r1!2370 lt!2612072 c!10362))))

(assert (=> b!7350148 (= lt!2612072 (Context!16207 (++!16981 (exprs!8603 ct1!282) (exprs!8603 ct2!378))))))

(declare-fun lt!2612080 () Unit!165279)

(assert (=> b!7350148 (= lt!2612080 (lemmaConcatPreservesForall!1838 (exprs!8603 ct1!282) (exprs!8603 ct2!378) lambda!456501))))

(declare-fun b!7350149 () Bool)

(declare-fun tp_is_empty!48571 () Bool)

(assert (=> b!7350149 (= e!4400995 tp_is_empty!48571)))

(declare-fun res!2968360 () Bool)

(assert (=> start!717776 (=> (not res!2968360) (not e!4400999))))

(declare-fun validRegex!9759 (Regex!19163) Bool)

(assert (=> start!717776 (= res!2968360 (validRegex!9759 r1!2370))))

(assert (=> start!717776 e!4400999))

(assert (=> start!717776 tp_is_empty!48571))

(declare-fun e!4400997 () Bool)

(declare-fun inv!91247 (Context!16206) Bool)

(assert (=> start!717776 (and (inv!91247 cWitness!61) e!4400997)))

(assert (=> start!717776 (and (inv!91247 ct1!282) e!4400998)))

(assert (=> start!717776 e!4400995))

(declare-fun e!4400996 () Bool)

(assert (=> start!717776 (and (inv!91247 ct2!378) e!4400996)))

(declare-fun b!7350143 () Bool)

(declare-fun tp!2087602 () Bool)

(assert (=> b!7350143 (= e!4400996 tp!2087602)))

(declare-fun b!7350150 () Bool)

(assert (=> b!7350150 (= e!4400993 e!4400994)))

(declare-fun res!2968361 () Bool)

(assert (=> b!7350150 (=> res!2968361 e!4400994)))

(assert (=> b!7350150 (= res!2968361 (not (forall!17987 (exprs!8603 ct1!282) lambda!456501)))))

(declare-fun lt!2612074 () Unit!165279)

(assert (=> b!7350150 (= lt!2612074 (lemmaConcatPreservesForall!1838 (exprs!8603 cWitness!61) (exprs!8603 ct2!378) lambda!456501))))

(declare-fun b!7350151 () Bool)

(declare-fun res!2968368 () Bool)

(assert (=> b!7350151 (=> (not res!2968368) (not e!4401000))))

(assert (=> b!7350151 (= res!2968368 (not (select lt!2612071 cWitness!61)))))

(declare-fun b!7350152 () Bool)

(declare-fun res!2968363 () Bool)

(assert (=> b!7350152 (=> (not res!2968363) (not e!4401002))))

(assert (=> b!7350152 (= res!2968363 (validRegex!9759 (regTwo!38838 r1!2370)))))

(declare-fun b!7350153 () Bool)

(declare-fun tp!2087605 () Bool)

(assert (=> b!7350153 (= e!4400997 tp!2087605)))

(assert (= (and start!717776 res!2968360) b!7350146))

(assert (= (and b!7350146 res!2968364) b!7350148))

(assert (= (and b!7350148 res!2968362) b!7350145))

(assert (= (and b!7350145 res!2968366) b!7350152))

(assert (= (and b!7350152 res!2968363) b!7350144))

(assert (= (and b!7350144 res!2968365) b!7350151))

(assert (= (and b!7350151 res!2968368) b!7350141))

(assert (= (and b!7350141 (not res!2968367)) b!7350150))

(assert (= (and b!7350150 (not res!2968361)) b!7350142))

(assert (= start!717776 b!7350153))

(assert (= start!717776 b!7350147))

(assert (= (and start!717776 ((_ is ElementMatch!19163) r1!2370)) b!7350149))

(assert (= (and start!717776 ((_ is Concat!28008) r1!2370)) b!7350139))

(assert (= (and start!717776 ((_ is Star!19163) r1!2370)) b!7350140))

(assert (= (and start!717776 ((_ is Union!19163) r1!2370)) b!7350138))

(assert (= start!717776 b!7350143))

(declare-fun m!8011508 () Bool)

(assert (=> b!7350148 m!8011508))

(declare-fun m!8011510 () Bool)

(assert (=> b!7350148 m!8011510))

(declare-fun m!8011512 () Bool)

(assert (=> b!7350148 m!8011512))

(declare-fun m!8011514 () Bool)

(assert (=> b!7350142 m!8011514))

(declare-fun m!8011516 () Bool)

(assert (=> start!717776 m!8011516))

(declare-fun m!8011518 () Bool)

(assert (=> start!717776 m!8011518))

(declare-fun m!8011520 () Bool)

(assert (=> start!717776 m!8011520))

(declare-fun m!8011522 () Bool)

(assert (=> start!717776 m!8011522))

(declare-fun m!8011524 () Bool)

(assert (=> b!7350141 m!8011524))

(declare-fun m!8011526 () Bool)

(assert (=> b!7350141 m!8011526))

(assert (=> b!7350141 m!8011526))

(declare-fun m!8011528 () Bool)

(assert (=> b!7350141 m!8011528))

(declare-fun m!8011530 () Bool)

(assert (=> b!7350141 m!8011530))

(declare-fun m!8011532 () Bool)

(assert (=> b!7350141 m!8011532))

(assert (=> b!7350141 m!8011512))

(declare-fun m!8011534 () Bool)

(assert (=> b!7350141 m!8011534))

(declare-fun m!8011536 () Bool)

(assert (=> b!7350146 m!8011536))

(declare-fun m!8011538 () Bool)

(assert (=> b!7350146 m!8011538))

(declare-fun m!8011540 () Bool)

(assert (=> b!7350152 m!8011540))

(declare-fun m!8011542 () Bool)

(assert (=> b!7350151 m!8011542))

(declare-fun m!8011544 () Bool)

(assert (=> b!7350144 m!8011544))

(declare-fun m!8011546 () Bool)

(assert (=> b!7350144 m!8011546))

(declare-fun m!8011548 () Bool)

(assert (=> b!7350144 m!8011548))

(declare-fun m!8011550 () Bool)

(assert (=> b!7350145 m!8011550))

(declare-fun m!8011552 () Bool)

(assert (=> b!7350150 m!8011552))

(assert (=> b!7350150 m!8011526))

(check-sat (not b!7350146) (not start!717776) (not b!7350139) (not b!7350150) (not b!7350142) (not b!7350153) (not b!7350141) (not b!7350140) (not b!7350148) (not b!7350144) (not b!7350147) (not b!7350152) tp_is_empty!48571 (not b!7350145) (not b!7350143) (not b!7350138))
(check-sat)
(get-model)

(declare-fun d!2280388 () Bool)

(assert (=> d!2280388 (forall!17987 (++!16981 (exprs!8603 ct1!282) (exprs!8603 ct2!378)) lambda!456501)))

(declare-fun lt!2612084 () Unit!165279)

(declare-fun choose!57175 (List!71659 List!71659 Int) Unit!165279)

(assert (=> d!2280388 (= lt!2612084 (choose!57175 (exprs!8603 ct1!282) (exprs!8603 ct2!378) lambda!456501))))

(assert (=> d!2280388 (forall!17987 (exprs!8603 ct1!282) lambda!456501)))

(assert (=> d!2280388 (= (lemmaConcatPreservesForall!1838 (exprs!8603 ct1!282) (exprs!8603 ct2!378) lambda!456501) lt!2612084)))

(declare-fun bs!1919224 () Bool)

(assert (= bs!1919224 d!2280388))

(assert (=> bs!1919224 m!8011510))

(assert (=> bs!1919224 m!8011510))

(declare-fun m!8011554 () Bool)

(assert (=> bs!1919224 m!8011554))

(declare-fun m!8011556 () Bool)

(assert (=> bs!1919224 m!8011556))

(assert (=> bs!1919224 m!8011552))

(assert (=> b!7350141 d!2280388))

(declare-fun b!7350164 () Bool)

(declare-fun res!2968373 () Bool)

(declare-fun e!4401008 () Bool)

(assert (=> b!7350164 (=> (not res!2968373) (not e!4401008))))

(declare-fun lt!2612087 () List!71659)

(declare-fun size!42049 (List!71659) Int)

(assert (=> b!7350164 (= res!2968373 (= (size!42049 lt!2612087) (+ (size!42049 (exprs!8603 cWitness!61)) (size!42049 (exprs!8603 ct2!378)))))))

(declare-fun b!7350162 () Bool)

(declare-fun e!4401007 () List!71659)

(assert (=> b!7350162 (= e!4401007 (exprs!8603 ct2!378))))

(declare-fun b!7350165 () Bool)

(assert (=> b!7350165 (= e!4401008 (or (not (= (exprs!8603 ct2!378) Nil!71535)) (= lt!2612087 (exprs!8603 cWitness!61))))))

(declare-fun b!7350163 () Bool)

(assert (=> b!7350163 (= e!4401007 (Cons!71535 (h!77983 (exprs!8603 cWitness!61)) (++!16981 (t!386076 (exprs!8603 cWitness!61)) (exprs!8603 ct2!378))))))

(declare-fun d!2280390 () Bool)

(assert (=> d!2280390 e!4401008))

(declare-fun res!2968374 () Bool)

(assert (=> d!2280390 (=> (not res!2968374) (not e!4401008))))

(declare-fun content!15070 (List!71659) (InoxSet Regex!19163))

(assert (=> d!2280390 (= res!2968374 (= (content!15070 lt!2612087) ((_ map or) (content!15070 (exprs!8603 cWitness!61)) (content!15070 (exprs!8603 ct2!378)))))))

(assert (=> d!2280390 (= lt!2612087 e!4401007)))

(declare-fun c!1365524 () Bool)

(assert (=> d!2280390 (= c!1365524 ((_ is Nil!71535) (exprs!8603 cWitness!61)))))

(assert (=> d!2280390 (= (++!16981 (exprs!8603 cWitness!61) (exprs!8603 ct2!378)) lt!2612087)))

(assert (= (and d!2280390 c!1365524) b!7350162))

(assert (= (and d!2280390 (not c!1365524)) b!7350163))

(assert (= (and d!2280390 res!2968374) b!7350164))

(assert (= (and b!7350164 res!2968373) b!7350165))

(declare-fun m!8011558 () Bool)

(assert (=> b!7350164 m!8011558))

(declare-fun m!8011560 () Bool)

(assert (=> b!7350164 m!8011560))

(declare-fun m!8011562 () Bool)

(assert (=> b!7350164 m!8011562))

(declare-fun m!8011564 () Bool)

(assert (=> b!7350163 m!8011564))

(declare-fun m!8011566 () Bool)

(assert (=> d!2280390 m!8011566))

(declare-fun m!8011568 () Bool)

(assert (=> d!2280390 m!8011568))

(declare-fun m!8011570 () Bool)

(assert (=> d!2280390 m!8011570))

(assert (=> b!7350141 d!2280390))

(declare-fun c!1365539 () Bool)

(declare-fun bm!672199 () Bool)

(declare-fun call!672205 () (InoxSet Context!16206))

(declare-fun call!672204 () List!71659)

(assert (=> bm!672199 (= call!672205 (derivationStepZipperDown!2989 (ite c!1365539 (regTwo!38839 (regTwo!38838 r1!2370)) (regOne!38838 (regTwo!38838 r1!2370))) (ite c!1365539 lt!2612072 (Context!16207 call!672204)) c!10362))))

(declare-fun b!7350198 () Bool)

(declare-fun e!4401029 () (InoxSet Context!16206))

(declare-fun call!672208 () (InoxSet Context!16206))

(assert (=> b!7350198 (= e!4401029 ((_ map or) call!672205 call!672208))))

(declare-fun bm!672200 () Bool)

(declare-fun c!1365540 () Bool)

(declare-fun call!672206 () (InoxSet Context!16206))

(declare-fun call!672209 () List!71659)

(declare-fun c!1365537 () Bool)

(assert (=> bm!672200 (= call!672206 (derivationStepZipperDown!2989 (ite c!1365539 (regOne!38839 (regTwo!38838 r1!2370)) (ite c!1365537 (regTwo!38838 (regTwo!38838 r1!2370)) (ite c!1365540 (regOne!38838 (regTwo!38838 r1!2370)) (reg!19492 (regTwo!38838 r1!2370))))) (ite (or c!1365539 c!1365537) lt!2612072 (Context!16207 call!672209)) c!10362))))

(declare-fun b!7350200 () Bool)

(declare-fun e!4401032 () (InoxSet Context!16206))

(assert (=> b!7350200 (= e!4401032 (store ((as const (Array Context!16206 Bool)) false) lt!2612072 true))))

(declare-fun b!7350201 () Bool)

(declare-fun e!4401031 () (InoxSet Context!16206))

(declare-fun call!672207 () (InoxSet Context!16206))

(assert (=> b!7350201 (= e!4401031 call!672207)))

(declare-fun b!7350202 () Bool)

(declare-fun e!4401030 () Bool)

(assert (=> b!7350202 (= c!1365537 e!4401030)))

(declare-fun res!2968383 () Bool)

(assert (=> b!7350202 (=> (not res!2968383) (not e!4401030))))

(assert (=> b!7350202 (= res!2968383 ((_ is Concat!28008) (regTwo!38838 r1!2370)))))

(declare-fun e!4401033 () (InoxSet Context!16206))

(assert (=> b!7350202 (= e!4401033 e!4401029)))

(declare-fun b!7350203 () Bool)

(assert (=> b!7350203 (= e!4401030 (nullable!8254 (regOne!38838 (regTwo!38838 r1!2370))))))

(declare-fun bm!672201 () Bool)

(assert (=> bm!672201 (= call!672204 ($colon$colon!3161 (exprs!8603 lt!2612072) (ite (or c!1365537 c!1365540) (regTwo!38838 (regTwo!38838 r1!2370)) (regTwo!38838 r1!2370))))))

(declare-fun bm!672202 () Bool)

(assert (=> bm!672202 (= call!672209 call!672204)))

(declare-fun bm!672203 () Bool)

(assert (=> bm!672203 (= call!672208 call!672206)))

(declare-fun b!7350204 () Bool)

(assert (=> b!7350204 (= e!4401033 ((_ map or) call!672206 call!672205))))

(declare-fun b!7350205 () Bool)

(declare-fun e!4401034 () (InoxSet Context!16206))

(assert (=> b!7350205 (= e!4401029 e!4401034)))

(assert (=> b!7350205 (= c!1365540 ((_ is Concat!28008) (regTwo!38838 r1!2370)))))

(declare-fun b!7350199 () Bool)

(declare-fun c!1365541 () Bool)

(assert (=> b!7350199 (= c!1365541 ((_ is Star!19163) (regTwo!38838 r1!2370)))))

(assert (=> b!7350199 (= e!4401034 e!4401031)))

(declare-fun d!2280392 () Bool)

(declare-fun c!1365538 () Bool)

(assert (=> d!2280392 (= c!1365538 (and ((_ is ElementMatch!19163) (regTwo!38838 r1!2370)) (= (c!1365521 (regTwo!38838 r1!2370)) c!10362)))))

(assert (=> d!2280392 (= (derivationStepZipperDown!2989 (regTwo!38838 r1!2370) lt!2612072 c!10362) e!4401032)))

(declare-fun b!7350206 () Bool)

(assert (=> b!7350206 (= e!4401031 ((as const (Array Context!16206 Bool)) false))))

(declare-fun b!7350207 () Bool)

(assert (=> b!7350207 (= e!4401034 call!672207)))

(declare-fun bm!672204 () Bool)

(assert (=> bm!672204 (= call!672207 call!672208)))

(declare-fun b!7350210 () Bool)

(assert (=> b!7350210 (= e!4401032 e!4401033)))

(assert (=> b!7350210 (= c!1365539 ((_ is Union!19163) (regTwo!38838 r1!2370)))))

(assert (= (and d!2280392 c!1365538) b!7350200))

(assert (= (and d!2280392 (not c!1365538)) b!7350210))

(assert (= (and b!7350210 c!1365539) b!7350204))

(assert (= (and b!7350210 (not c!1365539)) b!7350202))

(assert (= (and b!7350202 res!2968383) b!7350203))

(assert (= (and b!7350202 c!1365537) b!7350198))

(assert (= (and b!7350202 (not c!1365537)) b!7350205))

(assert (= (and b!7350205 c!1365540) b!7350207))

(assert (= (and b!7350205 (not c!1365540)) b!7350199))

(assert (= (and b!7350199 c!1365541) b!7350201))

(assert (= (and b!7350199 (not c!1365541)) b!7350206))

(assert (= (or b!7350207 b!7350201) bm!672202))

(assert (= (or b!7350207 b!7350201) bm!672204))

(assert (= (or b!7350198 bm!672204) bm!672203))

(assert (= (or b!7350198 bm!672202) bm!672201))

(assert (= (or b!7350204 b!7350198) bm!672199))

(assert (= (or b!7350204 bm!672203) bm!672200))

(declare-fun m!8011582 () Bool)

(assert (=> b!7350203 m!8011582))

(declare-fun m!8011584 () Bool)

(assert (=> b!7350200 m!8011584))

(declare-fun m!8011586 () Bool)

(assert (=> bm!672201 m!8011586))

(declare-fun m!8011588 () Bool)

(assert (=> bm!672200 m!8011588))

(declare-fun m!8011590 () Bool)

(assert (=> bm!672199 m!8011590))

(assert (=> b!7350141 d!2280392))

(declare-fun bs!1919227 () Bool)

(declare-fun d!2280400 () Bool)

(assert (= bs!1919227 (and d!2280400 b!7350148)))

(declare-fun lambda!456506 () Int)

(assert (=> bs!1919227 (= lambda!456506 lambda!456501)))

(assert (=> d!2280400 (select (derivationStepZipperDown!2989 (regTwo!38838 r1!2370) (Context!16207 (++!16981 (exprs!8603 ct1!282) (exprs!8603 ct2!378))) c!10362) (Context!16207 (++!16981 (exprs!8603 cWitness!61) (exprs!8603 ct2!378))))))

(declare-fun lt!2612099 () Unit!165279)

(assert (=> d!2280400 (= lt!2612099 (lemmaConcatPreservesForall!1838 (exprs!8603 ct1!282) (exprs!8603 ct2!378) lambda!456506))))

(declare-fun lt!2612098 () Unit!165279)

(assert (=> d!2280400 (= lt!2612098 (lemmaConcatPreservesForall!1838 (exprs!8603 cWitness!61) (exprs!8603 ct2!378) lambda!456506))))

(declare-fun lt!2612097 () Unit!165279)

(declare-fun choose!57177 (Regex!19163 Context!16206 Context!16206 Context!16206 C!38600) Unit!165279)

(assert (=> d!2280400 (= lt!2612097 (choose!57177 (regTwo!38838 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2280400 (validRegex!9759 (regTwo!38838 r1!2370))))

(assert (=> d!2280400 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!88 (regTwo!38838 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362) lt!2612097)))

(declare-fun bs!1919228 () Bool)

(assert (= bs!1919228 d!2280400))

(declare-fun m!8011604 () Bool)

(assert (=> bs!1919228 m!8011604))

(assert (=> bs!1919228 m!8011540))

(assert (=> bs!1919228 m!8011510))

(assert (=> bs!1919228 m!8011530))

(declare-fun m!8011612 () Bool)

(assert (=> bs!1919228 m!8011612))

(declare-fun m!8011614 () Bool)

(assert (=> bs!1919228 m!8011614))

(declare-fun m!8011616 () Bool)

(assert (=> bs!1919228 m!8011616))

(declare-fun m!8011618 () Bool)

(assert (=> bs!1919228 m!8011618))

(assert (=> b!7350141 d!2280400))

(declare-fun d!2280408 () Bool)

(assert (=> d!2280408 (forall!17987 (++!16981 (exprs!8603 cWitness!61) (exprs!8603 ct2!378)) lambda!456501)))

(declare-fun lt!2612100 () Unit!165279)

(assert (=> d!2280408 (= lt!2612100 (choose!57175 (exprs!8603 cWitness!61) (exprs!8603 ct2!378) lambda!456501))))

(assert (=> d!2280408 (forall!17987 (exprs!8603 cWitness!61) lambda!456501)))

(assert (=> d!2280408 (= (lemmaConcatPreservesForall!1838 (exprs!8603 cWitness!61) (exprs!8603 ct2!378) lambda!456501) lt!2612100)))

(declare-fun bs!1919229 () Bool)

(assert (= bs!1919229 d!2280408))

(assert (=> bs!1919229 m!8011530))

(assert (=> bs!1919229 m!8011530))

(declare-fun m!8011620 () Bool)

(assert (=> bs!1919229 m!8011620))

(declare-fun m!8011622 () Bool)

(assert (=> bs!1919229 m!8011622))

(declare-fun m!8011624 () Bool)

(assert (=> bs!1919229 m!8011624))

(assert (=> b!7350141 d!2280408))

(declare-fun call!672241 () (InoxSet Context!16206))

(declare-fun bm!672235 () Bool)

(declare-fun call!672240 () List!71659)

(declare-fun c!1365568 () Bool)

(assert (=> bm!672235 (= call!672241 (derivationStepZipperDown!2989 (ite c!1365568 (regTwo!38839 r1!2370) (regOne!38838 r1!2370)) (ite c!1365568 ct1!282 (Context!16207 call!672240)) c!10362))))

(declare-fun b!7350260 () Bool)

(declare-fun e!4401063 () (InoxSet Context!16206))

(declare-fun call!672244 () (InoxSet Context!16206))

(assert (=> b!7350260 (= e!4401063 ((_ map or) call!672241 call!672244))))

(declare-fun bm!672236 () Bool)

(declare-fun call!672242 () (InoxSet Context!16206))

(declare-fun c!1365566 () Bool)

(declare-fun c!1365569 () Bool)

(declare-fun call!672245 () List!71659)

(assert (=> bm!672236 (= call!672242 (derivationStepZipperDown!2989 (ite c!1365568 (regOne!38839 r1!2370) (ite c!1365566 (regTwo!38838 r1!2370) (ite c!1365569 (regOne!38838 r1!2370) (reg!19492 r1!2370)))) (ite (or c!1365568 c!1365566) ct1!282 (Context!16207 call!672245)) c!10362))))

(declare-fun b!7350262 () Bool)

(declare-fun e!4401066 () (InoxSet Context!16206))

(assert (=> b!7350262 (= e!4401066 (store ((as const (Array Context!16206 Bool)) false) ct1!282 true))))

(declare-fun b!7350263 () Bool)

(declare-fun e!4401065 () (InoxSet Context!16206))

(declare-fun call!672243 () (InoxSet Context!16206))

(assert (=> b!7350263 (= e!4401065 call!672243)))

(declare-fun b!7350264 () Bool)

(declare-fun e!4401064 () Bool)

(assert (=> b!7350264 (= c!1365566 e!4401064)))

(declare-fun res!2968389 () Bool)

(assert (=> b!7350264 (=> (not res!2968389) (not e!4401064))))

(assert (=> b!7350264 (= res!2968389 ((_ is Concat!28008) r1!2370))))

(declare-fun e!4401067 () (InoxSet Context!16206))

(assert (=> b!7350264 (= e!4401067 e!4401063)))

(declare-fun b!7350265 () Bool)

(assert (=> b!7350265 (= e!4401064 (nullable!8254 (regOne!38838 r1!2370)))))

(declare-fun bm!672237 () Bool)

(assert (=> bm!672237 (= call!672240 ($colon$colon!3161 (exprs!8603 ct1!282) (ite (or c!1365566 c!1365569) (regTwo!38838 r1!2370) r1!2370)))))

(declare-fun bm!672238 () Bool)

(assert (=> bm!672238 (= call!672245 call!672240)))

(declare-fun bm!672239 () Bool)

(assert (=> bm!672239 (= call!672244 call!672242)))

(declare-fun b!7350266 () Bool)

(assert (=> b!7350266 (= e!4401067 ((_ map or) call!672242 call!672241))))

(declare-fun b!7350267 () Bool)

(declare-fun e!4401068 () (InoxSet Context!16206))

(assert (=> b!7350267 (= e!4401063 e!4401068)))

(assert (=> b!7350267 (= c!1365569 ((_ is Concat!28008) r1!2370))))

(declare-fun b!7350261 () Bool)

(declare-fun c!1365570 () Bool)

(assert (=> b!7350261 (= c!1365570 ((_ is Star!19163) r1!2370))))

(assert (=> b!7350261 (= e!4401068 e!4401065)))

(declare-fun d!2280410 () Bool)

(declare-fun c!1365567 () Bool)

(assert (=> d!2280410 (= c!1365567 (and ((_ is ElementMatch!19163) r1!2370) (= (c!1365521 r1!2370) c!10362)))))

(assert (=> d!2280410 (= (derivationStepZipperDown!2989 r1!2370 ct1!282 c!10362) e!4401066)))

(declare-fun b!7350268 () Bool)

(assert (=> b!7350268 (= e!4401065 ((as const (Array Context!16206 Bool)) false))))

(declare-fun b!7350269 () Bool)

(assert (=> b!7350269 (= e!4401068 call!672243)))

(declare-fun bm!672240 () Bool)

(assert (=> bm!672240 (= call!672243 call!672244)))

(declare-fun b!7350270 () Bool)

(assert (=> b!7350270 (= e!4401066 e!4401067)))

(assert (=> b!7350270 (= c!1365568 ((_ is Union!19163) r1!2370))))

(assert (= (and d!2280410 c!1365567) b!7350262))

(assert (= (and d!2280410 (not c!1365567)) b!7350270))

(assert (= (and b!7350270 c!1365568) b!7350266))

(assert (= (and b!7350270 (not c!1365568)) b!7350264))

(assert (= (and b!7350264 res!2968389) b!7350265))

(assert (= (and b!7350264 c!1365566) b!7350260))

(assert (= (and b!7350264 (not c!1365566)) b!7350267))

(assert (= (and b!7350267 c!1365569) b!7350269))

(assert (= (and b!7350267 (not c!1365569)) b!7350261))

(assert (= (and b!7350261 c!1365570) b!7350263))

(assert (= (and b!7350261 (not c!1365570)) b!7350268))

(assert (= (or b!7350269 b!7350263) bm!672238))

(assert (= (or b!7350269 b!7350263) bm!672240))

(assert (= (or b!7350260 bm!672240) bm!672239))

(assert (= (or b!7350260 bm!672238) bm!672237))

(assert (= (or b!7350266 b!7350260) bm!672235))

(assert (= (or b!7350266 bm!672239) bm!672236))

(assert (=> b!7350265 m!8011550))

(declare-fun m!8011636 () Bool)

(assert (=> b!7350262 m!8011636))

(declare-fun m!8011638 () Bool)

(assert (=> bm!672237 m!8011638))

(declare-fun m!8011640 () Bool)

(assert (=> bm!672236 m!8011640))

(declare-fun m!8011642 () Bool)

(assert (=> bm!672235 m!8011642))

(assert (=> b!7350146 d!2280410))

(declare-fun b!7350316 () Bool)

(declare-fun e!4401109 () Bool)

(declare-fun e!4401108 () Bool)

(assert (=> b!7350316 (= e!4401109 e!4401108)))

(declare-fun c!1365582 () Bool)

(assert (=> b!7350316 (= c!1365582 ((_ is Union!19163) (regTwo!38838 r1!2370)))))

(declare-fun b!7350317 () Bool)

(declare-fun e!4401107 () Bool)

(declare-fun call!672261 () Bool)

(assert (=> b!7350317 (= e!4401107 call!672261)))

(declare-fun bm!672256 () Bool)

(declare-fun call!672263 () Bool)

(assert (=> bm!672256 (= call!672263 (validRegex!9759 (ite c!1365582 (regOne!38839 (regTwo!38838 r1!2370)) (regTwo!38838 (regTwo!38838 r1!2370)))))))

(declare-fun b!7350318 () Bool)

(declare-fun e!4401106 () Bool)

(declare-fun e!4401104 () Bool)

(assert (=> b!7350318 (= e!4401106 e!4401104)))

(declare-fun res!2968416 () Bool)

(assert (=> b!7350318 (=> (not res!2968416) (not e!4401104))))

(assert (=> b!7350318 (= res!2968416 call!672261)))

(declare-fun b!7350319 () Bool)

(declare-fun e!4401110 () Bool)

(declare-fun call!672262 () Bool)

(assert (=> b!7350319 (= e!4401110 call!672262)))

(declare-fun b!7350320 () Bool)

(assert (=> b!7350320 (= e!4401109 e!4401110)))

(declare-fun res!2968418 () Bool)

(assert (=> b!7350320 (= res!2968418 (not (nullable!8254 (reg!19492 (regTwo!38838 r1!2370)))))))

(assert (=> b!7350320 (=> (not res!2968418) (not e!4401110))))

(declare-fun bm!672257 () Bool)

(assert (=> bm!672257 (= call!672261 call!672262)))

(declare-fun b!7350321 () Bool)

(declare-fun res!2968415 () Bool)

(assert (=> b!7350321 (=> (not res!2968415) (not e!4401107))))

(assert (=> b!7350321 (= res!2968415 call!672263)))

(assert (=> b!7350321 (= e!4401108 e!4401107)))

(declare-fun b!7350322 () Bool)

(declare-fun res!2968417 () Bool)

(assert (=> b!7350322 (=> res!2968417 e!4401106)))

(assert (=> b!7350322 (= res!2968417 (not ((_ is Concat!28008) (regTwo!38838 r1!2370))))))

(assert (=> b!7350322 (= e!4401108 e!4401106)))

(declare-fun b!7350323 () Bool)

(declare-fun e!4401105 () Bool)

(assert (=> b!7350323 (= e!4401105 e!4401109)))

(declare-fun c!1365581 () Bool)

(assert (=> b!7350323 (= c!1365581 ((_ is Star!19163) (regTwo!38838 r1!2370)))))

(declare-fun b!7350324 () Bool)

(assert (=> b!7350324 (= e!4401104 call!672263)))

(declare-fun d!2280416 () Bool)

(declare-fun res!2968419 () Bool)

(assert (=> d!2280416 (=> res!2968419 e!4401105)))

(assert (=> d!2280416 (= res!2968419 ((_ is ElementMatch!19163) (regTwo!38838 r1!2370)))))

(assert (=> d!2280416 (= (validRegex!9759 (regTwo!38838 r1!2370)) e!4401105)))

(declare-fun bm!672258 () Bool)

(assert (=> bm!672258 (= call!672262 (validRegex!9759 (ite c!1365581 (reg!19492 (regTwo!38838 r1!2370)) (ite c!1365582 (regTwo!38839 (regTwo!38838 r1!2370)) (regOne!38838 (regTwo!38838 r1!2370))))))))

(assert (= (and d!2280416 (not res!2968419)) b!7350323))

(assert (= (and b!7350323 c!1365581) b!7350320))

(assert (= (and b!7350323 (not c!1365581)) b!7350316))

(assert (= (and b!7350320 res!2968418) b!7350319))

(assert (= (and b!7350316 c!1365582) b!7350321))

(assert (= (and b!7350316 (not c!1365582)) b!7350322))

(assert (= (and b!7350321 res!2968415) b!7350317))

(assert (= (and b!7350322 (not res!2968417)) b!7350318))

(assert (= (and b!7350318 res!2968416) b!7350324))

(assert (= (or b!7350321 b!7350324) bm!672256))

(assert (= (or b!7350317 b!7350318) bm!672257))

(assert (= (or b!7350319 bm!672257) bm!672258))

(declare-fun m!8011650 () Bool)

(assert (=> bm!672256 m!8011650))

(declare-fun m!8011652 () Bool)

(assert (=> b!7350320 m!8011652))

(declare-fun m!8011654 () Bool)

(assert (=> bm!672258 m!8011654))

(assert (=> b!7350152 d!2280416))

(declare-fun b!7350325 () Bool)

(declare-fun e!4401116 () Bool)

(declare-fun e!4401115 () Bool)

(assert (=> b!7350325 (= e!4401116 e!4401115)))

(declare-fun c!1365584 () Bool)

(assert (=> b!7350325 (= c!1365584 ((_ is Union!19163) r1!2370))))

(declare-fun b!7350326 () Bool)

(declare-fun e!4401114 () Bool)

(declare-fun call!672264 () Bool)

(assert (=> b!7350326 (= e!4401114 call!672264)))

(declare-fun bm!672259 () Bool)

(declare-fun call!672266 () Bool)

(assert (=> bm!672259 (= call!672266 (validRegex!9759 (ite c!1365584 (regOne!38839 r1!2370) (regTwo!38838 r1!2370))))))

(declare-fun b!7350327 () Bool)

(declare-fun e!4401113 () Bool)

(declare-fun e!4401111 () Bool)

(assert (=> b!7350327 (= e!4401113 e!4401111)))

(declare-fun res!2968421 () Bool)

(assert (=> b!7350327 (=> (not res!2968421) (not e!4401111))))

(assert (=> b!7350327 (= res!2968421 call!672264)))

(declare-fun b!7350328 () Bool)

(declare-fun e!4401117 () Bool)

(declare-fun call!672265 () Bool)

(assert (=> b!7350328 (= e!4401117 call!672265)))

(declare-fun b!7350329 () Bool)

(assert (=> b!7350329 (= e!4401116 e!4401117)))

(declare-fun res!2968423 () Bool)

(assert (=> b!7350329 (= res!2968423 (not (nullable!8254 (reg!19492 r1!2370))))))

(assert (=> b!7350329 (=> (not res!2968423) (not e!4401117))))

(declare-fun bm!672260 () Bool)

(assert (=> bm!672260 (= call!672264 call!672265)))

(declare-fun b!7350330 () Bool)

(declare-fun res!2968420 () Bool)

(assert (=> b!7350330 (=> (not res!2968420) (not e!4401114))))

(assert (=> b!7350330 (= res!2968420 call!672266)))

(assert (=> b!7350330 (= e!4401115 e!4401114)))

(declare-fun b!7350331 () Bool)

(declare-fun res!2968422 () Bool)

(assert (=> b!7350331 (=> res!2968422 e!4401113)))

(assert (=> b!7350331 (= res!2968422 (not ((_ is Concat!28008) r1!2370)))))

(assert (=> b!7350331 (= e!4401115 e!4401113)))

(declare-fun b!7350332 () Bool)

(declare-fun e!4401112 () Bool)

(assert (=> b!7350332 (= e!4401112 e!4401116)))

(declare-fun c!1365583 () Bool)

(assert (=> b!7350332 (= c!1365583 ((_ is Star!19163) r1!2370))))

(declare-fun b!7350333 () Bool)

(assert (=> b!7350333 (= e!4401111 call!672266)))

(declare-fun d!2280420 () Bool)

(declare-fun res!2968424 () Bool)

(assert (=> d!2280420 (=> res!2968424 e!4401112)))

(assert (=> d!2280420 (= res!2968424 ((_ is ElementMatch!19163) r1!2370))))

(assert (=> d!2280420 (= (validRegex!9759 r1!2370) e!4401112)))

(declare-fun bm!672261 () Bool)

(assert (=> bm!672261 (= call!672265 (validRegex!9759 (ite c!1365583 (reg!19492 r1!2370) (ite c!1365584 (regTwo!38839 r1!2370) (regOne!38838 r1!2370)))))))

(assert (= (and d!2280420 (not res!2968424)) b!7350332))

(assert (= (and b!7350332 c!1365583) b!7350329))

(assert (= (and b!7350332 (not c!1365583)) b!7350325))

(assert (= (and b!7350329 res!2968423) b!7350328))

(assert (= (and b!7350325 c!1365584) b!7350330))

(assert (= (and b!7350325 (not c!1365584)) b!7350331))

(assert (= (and b!7350330 res!2968420) b!7350326))

(assert (= (and b!7350331 (not res!2968422)) b!7350327))

(assert (= (and b!7350327 res!2968421) b!7350333))

(assert (= (or b!7350330 b!7350333) bm!672259))

(assert (= (or b!7350326 b!7350327) bm!672260))

(assert (= (or b!7350328 bm!672260) bm!672261))

(declare-fun m!8011656 () Bool)

(assert (=> bm!672259 m!8011656))

(declare-fun m!8011658 () Bool)

(assert (=> b!7350329 m!8011658))

(declare-fun m!8011660 () Bool)

(assert (=> bm!672261 m!8011660))

(assert (=> start!717776 d!2280420))

(declare-fun bs!1919239 () Bool)

(declare-fun d!2280422 () Bool)

(assert (= bs!1919239 (and d!2280422 b!7350148)))

(declare-fun lambda!456514 () Int)

(assert (=> bs!1919239 (= lambda!456514 lambda!456501)))

(declare-fun bs!1919240 () Bool)

(assert (= bs!1919240 (and d!2280422 d!2280400)))

(assert (=> bs!1919240 (= lambda!456514 lambda!456506)))

(assert (=> d!2280422 (= (inv!91247 cWitness!61) (forall!17987 (exprs!8603 cWitness!61) lambda!456514))))

(declare-fun bs!1919241 () Bool)

(assert (= bs!1919241 d!2280422))

(declare-fun m!8011668 () Bool)

(assert (=> bs!1919241 m!8011668))

(assert (=> start!717776 d!2280422))

(declare-fun bs!1919242 () Bool)

(declare-fun d!2280430 () Bool)

(assert (= bs!1919242 (and d!2280430 b!7350148)))

(declare-fun lambda!456515 () Int)

(assert (=> bs!1919242 (= lambda!456515 lambda!456501)))

(declare-fun bs!1919243 () Bool)

(assert (= bs!1919243 (and d!2280430 d!2280400)))

(assert (=> bs!1919243 (= lambda!456515 lambda!456506)))

(declare-fun bs!1919244 () Bool)

(assert (= bs!1919244 (and d!2280430 d!2280422)))

(assert (=> bs!1919244 (= lambda!456515 lambda!456514)))

(assert (=> d!2280430 (= (inv!91247 ct1!282) (forall!17987 (exprs!8603 ct1!282) lambda!456515))))

(declare-fun bs!1919245 () Bool)

(assert (= bs!1919245 d!2280430))

(declare-fun m!8011674 () Bool)

(assert (=> bs!1919245 m!8011674))

(assert (=> start!717776 d!2280430))

(declare-fun bs!1919246 () Bool)

(declare-fun d!2280434 () Bool)

(assert (= bs!1919246 (and d!2280434 b!7350148)))

(declare-fun lambda!456516 () Int)

(assert (=> bs!1919246 (= lambda!456516 lambda!456501)))

(declare-fun bs!1919247 () Bool)

(assert (= bs!1919247 (and d!2280434 d!2280400)))

(assert (=> bs!1919247 (= lambda!456516 lambda!456506)))

(declare-fun bs!1919248 () Bool)

(assert (= bs!1919248 (and d!2280434 d!2280422)))

(assert (=> bs!1919248 (= lambda!456516 lambda!456514)))

(declare-fun bs!1919249 () Bool)

(assert (= bs!1919249 (and d!2280434 d!2280430)))

(assert (=> bs!1919249 (= lambda!456516 lambda!456515)))

(assert (=> d!2280434 (= (inv!91247 ct2!378) (forall!17987 (exprs!8603 ct2!378) lambda!456516))))

(declare-fun bs!1919250 () Bool)

(assert (= bs!1919250 d!2280434))

(declare-fun m!8011682 () Bool)

(assert (=> bs!1919250 m!8011682))

(assert (=> start!717776 d!2280434))

(declare-fun d!2280438 () Bool)

(declare-fun res!2968436 () Bool)

(declare-fun e!4401131 () Bool)

(assert (=> d!2280438 (=> res!2968436 e!4401131)))

(assert (=> d!2280438 (= res!2968436 ((_ is Nil!71535) (exprs!8603 ct2!378)))))

(assert (=> d!2280438 (= (forall!17987 (exprs!8603 ct2!378) lambda!456501) e!4401131)))

(declare-fun b!7350349 () Bool)

(declare-fun e!4401132 () Bool)

(assert (=> b!7350349 (= e!4401131 e!4401132)))

(declare-fun res!2968437 () Bool)

(assert (=> b!7350349 (=> (not res!2968437) (not e!4401132))))

(declare-fun dynLambda!29492 (Int Regex!19163) Bool)

(assert (=> b!7350349 (= res!2968437 (dynLambda!29492 lambda!456501 (h!77983 (exprs!8603 ct2!378))))))

(declare-fun b!7350350 () Bool)

(assert (=> b!7350350 (= e!4401132 (forall!17987 (t!386076 (exprs!8603 ct2!378)) lambda!456501))))

(assert (= (and d!2280438 (not res!2968436)) b!7350349))

(assert (= (and b!7350349 res!2968437) b!7350350))

(declare-fun b_lambda!284111 () Bool)

(assert (=> (not b_lambda!284111) (not b!7350349)))

(declare-fun m!8011684 () Bool)

(assert (=> b!7350349 m!8011684))

(declare-fun m!8011686 () Bool)

(assert (=> b!7350350 m!8011686))

(assert (=> b!7350142 d!2280438))

(declare-fun bm!672265 () Bool)

(declare-fun call!672270 () List!71659)

(declare-fun c!1365589 () Bool)

(declare-fun call!672271 () (InoxSet Context!16206))

(assert (=> bm!672265 (= call!672271 (derivationStepZipperDown!2989 (ite c!1365589 (regTwo!38839 r1!2370) (regOne!38838 r1!2370)) (ite c!1365589 lt!2612072 (Context!16207 call!672270)) c!10362))))

(declare-fun b!7350353 () Bool)

(declare-fun e!4401133 () (InoxSet Context!16206))

(declare-fun call!672274 () (InoxSet Context!16206))

(assert (=> b!7350353 (= e!4401133 ((_ map or) call!672271 call!672274))))

(declare-fun bm!672266 () Bool)

(declare-fun c!1365590 () Bool)

(declare-fun call!672272 () (InoxSet Context!16206))

(declare-fun call!672275 () List!71659)

(declare-fun c!1365587 () Bool)

(assert (=> bm!672266 (= call!672272 (derivationStepZipperDown!2989 (ite c!1365589 (regOne!38839 r1!2370) (ite c!1365587 (regTwo!38838 r1!2370) (ite c!1365590 (regOne!38838 r1!2370) (reg!19492 r1!2370)))) (ite (or c!1365589 c!1365587) lt!2612072 (Context!16207 call!672275)) c!10362))))

(declare-fun b!7350355 () Bool)

(declare-fun e!4401136 () (InoxSet Context!16206))

(assert (=> b!7350355 (= e!4401136 (store ((as const (Array Context!16206 Bool)) false) lt!2612072 true))))

(declare-fun b!7350356 () Bool)

(declare-fun e!4401135 () (InoxSet Context!16206))

(declare-fun call!672273 () (InoxSet Context!16206))

(assert (=> b!7350356 (= e!4401135 call!672273)))

(declare-fun b!7350357 () Bool)

(declare-fun e!4401134 () Bool)

(assert (=> b!7350357 (= c!1365587 e!4401134)))

(declare-fun res!2968438 () Bool)

(assert (=> b!7350357 (=> (not res!2968438) (not e!4401134))))

(assert (=> b!7350357 (= res!2968438 ((_ is Concat!28008) r1!2370))))

(declare-fun e!4401137 () (InoxSet Context!16206))

(assert (=> b!7350357 (= e!4401137 e!4401133)))

(declare-fun b!7350358 () Bool)

(assert (=> b!7350358 (= e!4401134 (nullable!8254 (regOne!38838 r1!2370)))))

(declare-fun bm!672267 () Bool)

(assert (=> bm!672267 (= call!672270 ($colon$colon!3161 (exprs!8603 lt!2612072) (ite (or c!1365587 c!1365590) (regTwo!38838 r1!2370) r1!2370)))))

(declare-fun bm!672268 () Bool)

(assert (=> bm!672268 (= call!672275 call!672270)))

(declare-fun bm!672269 () Bool)

(assert (=> bm!672269 (= call!672274 call!672272)))

(declare-fun b!7350361 () Bool)

(assert (=> b!7350361 (= e!4401137 ((_ map or) call!672272 call!672271))))

(declare-fun b!7350362 () Bool)

(declare-fun e!4401138 () (InoxSet Context!16206))

(assert (=> b!7350362 (= e!4401133 e!4401138)))

(assert (=> b!7350362 (= c!1365590 ((_ is Concat!28008) r1!2370))))

(declare-fun b!7350354 () Bool)

(declare-fun c!1365591 () Bool)

(assert (=> b!7350354 (= c!1365591 ((_ is Star!19163) r1!2370))))

(assert (=> b!7350354 (= e!4401138 e!4401135)))

(declare-fun d!2280440 () Bool)

(declare-fun c!1365588 () Bool)

(assert (=> d!2280440 (= c!1365588 (and ((_ is ElementMatch!19163) r1!2370) (= (c!1365521 r1!2370) c!10362)))))

(assert (=> d!2280440 (= (derivationStepZipperDown!2989 r1!2370 lt!2612072 c!10362) e!4401136)))

(declare-fun b!7350363 () Bool)

(assert (=> b!7350363 (= e!4401135 ((as const (Array Context!16206 Bool)) false))))

(declare-fun b!7350364 () Bool)

(assert (=> b!7350364 (= e!4401138 call!672273)))

(declare-fun bm!672270 () Bool)

(assert (=> bm!672270 (= call!672273 call!672274)))

(declare-fun b!7350365 () Bool)

(assert (=> b!7350365 (= e!4401136 e!4401137)))

(assert (=> b!7350365 (= c!1365589 ((_ is Union!19163) r1!2370))))

(assert (= (and d!2280440 c!1365588) b!7350355))

(assert (= (and d!2280440 (not c!1365588)) b!7350365))

(assert (= (and b!7350365 c!1365589) b!7350361))

(assert (= (and b!7350365 (not c!1365589)) b!7350357))

(assert (= (and b!7350357 res!2968438) b!7350358))

(assert (= (and b!7350357 c!1365587) b!7350353))

(assert (= (and b!7350357 (not c!1365587)) b!7350362))

(assert (= (and b!7350362 c!1365590) b!7350364))

(assert (= (and b!7350362 (not c!1365590)) b!7350354))

(assert (= (and b!7350354 c!1365591) b!7350356))

(assert (= (and b!7350354 (not c!1365591)) b!7350363))

(assert (= (or b!7350364 b!7350356) bm!672268))

(assert (= (or b!7350364 b!7350356) bm!672270))

(assert (= (or b!7350353 bm!672270) bm!672269))

(assert (= (or b!7350353 bm!672268) bm!672267))

(assert (= (or b!7350361 b!7350353) bm!672265))

(assert (= (or b!7350361 bm!672269) bm!672266))

(assert (=> b!7350358 m!8011550))

(assert (=> b!7350355 m!8011584))

(declare-fun m!8011688 () Bool)

(assert (=> bm!672267 m!8011688))

(declare-fun m!8011690 () Bool)

(assert (=> bm!672266 m!8011690))

(declare-fun m!8011692 () Bool)

(assert (=> bm!672265 m!8011692))

(assert (=> b!7350148 d!2280440))

(declare-fun b!7350372 () Bool)

(declare-fun res!2968443 () Bool)

(declare-fun e!4401144 () Bool)

(assert (=> b!7350372 (=> (not res!2968443) (not e!4401144))))

(declare-fun lt!2612103 () List!71659)

(assert (=> b!7350372 (= res!2968443 (= (size!42049 lt!2612103) (+ (size!42049 (exprs!8603 ct1!282)) (size!42049 (exprs!8603 ct2!378)))))))

(declare-fun b!7350370 () Bool)

(declare-fun e!4401143 () List!71659)

(assert (=> b!7350370 (= e!4401143 (exprs!8603 ct2!378))))

(declare-fun b!7350373 () Bool)

(assert (=> b!7350373 (= e!4401144 (or (not (= (exprs!8603 ct2!378) Nil!71535)) (= lt!2612103 (exprs!8603 ct1!282))))))

(declare-fun b!7350371 () Bool)

(assert (=> b!7350371 (= e!4401143 (Cons!71535 (h!77983 (exprs!8603 ct1!282)) (++!16981 (t!386076 (exprs!8603 ct1!282)) (exprs!8603 ct2!378))))))

(declare-fun d!2280442 () Bool)

(assert (=> d!2280442 e!4401144))

(declare-fun res!2968444 () Bool)

(assert (=> d!2280442 (=> (not res!2968444) (not e!4401144))))

(assert (=> d!2280442 (= res!2968444 (= (content!15070 lt!2612103) ((_ map or) (content!15070 (exprs!8603 ct1!282)) (content!15070 (exprs!8603 ct2!378)))))))

(assert (=> d!2280442 (= lt!2612103 e!4401143)))

(declare-fun c!1365594 () Bool)

(assert (=> d!2280442 (= c!1365594 ((_ is Nil!71535) (exprs!8603 ct1!282)))))

(assert (=> d!2280442 (= (++!16981 (exprs!8603 ct1!282) (exprs!8603 ct2!378)) lt!2612103)))

(assert (= (and d!2280442 c!1365594) b!7350370))

(assert (= (and d!2280442 (not c!1365594)) b!7350371))

(assert (= (and d!2280442 res!2968444) b!7350372))

(assert (= (and b!7350372 res!2968443) b!7350373))

(declare-fun m!8011694 () Bool)

(assert (=> b!7350372 m!8011694))

(declare-fun m!8011696 () Bool)

(assert (=> b!7350372 m!8011696))

(assert (=> b!7350372 m!8011562))

(declare-fun m!8011698 () Bool)

(assert (=> b!7350371 m!8011698))

(declare-fun m!8011700 () Bool)

(assert (=> d!2280442 m!8011700))

(declare-fun m!8011702 () Bool)

(assert (=> d!2280442 m!8011702))

(assert (=> d!2280442 m!8011570))

(assert (=> b!7350148 d!2280442))

(assert (=> b!7350148 d!2280388))

(declare-fun call!672276 () List!71659)

(declare-fun bm!672271 () Bool)

(declare-fun c!1365597 () Bool)

(declare-fun call!672277 () (InoxSet Context!16206))

(assert (=> bm!672271 (= call!672277 (derivationStepZipperDown!2989 (ite c!1365597 (regTwo!38839 (regTwo!38838 r1!2370)) (regOne!38838 (regTwo!38838 r1!2370))) (ite c!1365597 ct1!282 (Context!16207 call!672276)) c!10362))))

(declare-fun b!7350374 () Bool)

(declare-fun e!4401145 () (InoxSet Context!16206))

(declare-fun call!672280 () (InoxSet Context!16206))

(assert (=> b!7350374 (= e!4401145 ((_ map or) call!672277 call!672280))))

(declare-fun c!1365595 () Bool)

(declare-fun call!672278 () (InoxSet Context!16206))

(declare-fun c!1365598 () Bool)

(declare-fun call!672281 () List!71659)

(declare-fun bm!672272 () Bool)

(assert (=> bm!672272 (= call!672278 (derivationStepZipperDown!2989 (ite c!1365597 (regOne!38839 (regTwo!38838 r1!2370)) (ite c!1365595 (regTwo!38838 (regTwo!38838 r1!2370)) (ite c!1365598 (regOne!38838 (regTwo!38838 r1!2370)) (reg!19492 (regTwo!38838 r1!2370))))) (ite (or c!1365597 c!1365595) ct1!282 (Context!16207 call!672281)) c!10362))))

(declare-fun b!7350376 () Bool)

(declare-fun e!4401148 () (InoxSet Context!16206))

(assert (=> b!7350376 (= e!4401148 (store ((as const (Array Context!16206 Bool)) false) ct1!282 true))))

(declare-fun b!7350377 () Bool)

(declare-fun e!4401147 () (InoxSet Context!16206))

(declare-fun call!672279 () (InoxSet Context!16206))

(assert (=> b!7350377 (= e!4401147 call!672279)))

(declare-fun b!7350378 () Bool)

(declare-fun e!4401146 () Bool)

(assert (=> b!7350378 (= c!1365595 e!4401146)))

(declare-fun res!2968445 () Bool)

(assert (=> b!7350378 (=> (not res!2968445) (not e!4401146))))

(assert (=> b!7350378 (= res!2968445 ((_ is Concat!28008) (regTwo!38838 r1!2370)))))

(declare-fun e!4401149 () (InoxSet Context!16206))

(assert (=> b!7350378 (= e!4401149 e!4401145)))

(declare-fun b!7350379 () Bool)

(assert (=> b!7350379 (= e!4401146 (nullable!8254 (regOne!38838 (regTwo!38838 r1!2370))))))

(declare-fun bm!672273 () Bool)

(assert (=> bm!672273 (= call!672276 ($colon$colon!3161 (exprs!8603 ct1!282) (ite (or c!1365595 c!1365598) (regTwo!38838 (regTwo!38838 r1!2370)) (regTwo!38838 r1!2370))))))

(declare-fun bm!672274 () Bool)

(assert (=> bm!672274 (= call!672281 call!672276)))

(declare-fun bm!672275 () Bool)

(assert (=> bm!672275 (= call!672280 call!672278)))

(declare-fun b!7350380 () Bool)

(assert (=> b!7350380 (= e!4401149 ((_ map or) call!672278 call!672277))))

(declare-fun b!7350381 () Bool)

(declare-fun e!4401150 () (InoxSet Context!16206))

(assert (=> b!7350381 (= e!4401145 e!4401150)))

(assert (=> b!7350381 (= c!1365598 ((_ is Concat!28008) (regTwo!38838 r1!2370)))))

(declare-fun b!7350375 () Bool)

(declare-fun c!1365599 () Bool)

(assert (=> b!7350375 (= c!1365599 ((_ is Star!19163) (regTwo!38838 r1!2370)))))

(assert (=> b!7350375 (= e!4401150 e!4401147)))

(declare-fun d!2280444 () Bool)

(declare-fun c!1365596 () Bool)

(assert (=> d!2280444 (= c!1365596 (and ((_ is ElementMatch!19163) (regTwo!38838 r1!2370)) (= (c!1365521 (regTwo!38838 r1!2370)) c!10362)))))

(assert (=> d!2280444 (= (derivationStepZipperDown!2989 (regTwo!38838 r1!2370) ct1!282 c!10362) e!4401148)))

(declare-fun b!7350382 () Bool)

(assert (=> b!7350382 (= e!4401147 ((as const (Array Context!16206 Bool)) false))))

(declare-fun b!7350383 () Bool)

(assert (=> b!7350383 (= e!4401150 call!672279)))

(declare-fun bm!672276 () Bool)

(assert (=> bm!672276 (= call!672279 call!672280)))

(declare-fun b!7350384 () Bool)

(assert (=> b!7350384 (= e!4401148 e!4401149)))

(assert (=> b!7350384 (= c!1365597 ((_ is Union!19163) (regTwo!38838 r1!2370)))))

(assert (= (and d!2280444 c!1365596) b!7350376))

(assert (= (and d!2280444 (not c!1365596)) b!7350384))

(assert (= (and b!7350384 c!1365597) b!7350380))

(assert (= (and b!7350384 (not c!1365597)) b!7350378))

(assert (= (and b!7350378 res!2968445) b!7350379))

(assert (= (and b!7350378 c!1365595) b!7350374))

(assert (= (and b!7350378 (not c!1365595)) b!7350381))

(assert (= (and b!7350381 c!1365598) b!7350383))

(assert (= (and b!7350381 (not c!1365598)) b!7350375))

(assert (= (and b!7350375 c!1365599) b!7350377))

(assert (= (and b!7350375 (not c!1365599)) b!7350382))

(assert (= (or b!7350383 b!7350377) bm!672274))

(assert (= (or b!7350383 b!7350377) bm!672276))

(assert (= (or b!7350374 bm!672276) bm!672275))

(assert (= (or b!7350374 bm!672274) bm!672273))

(assert (= (or b!7350380 b!7350374) bm!672271))

(assert (= (or b!7350380 bm!672275) bm!672272))

(assert (=> b!7350379 m!8011582))

(assert (=> b!7350376 m!8011636))

(declare-fun m!8011718 () Bool)

(assert (=> bm!672273 m!8011718))

(declare-fun m!8011720 () Bool)

(assert (=> bm!672272 m!8011720))

(declare-fun m!8011722 () Bool)

(assert (=> bm!672271 m!8011722))

(assert (=> b!7350144 d!2280444))

(declare-fun c!1365603 () Bool)

(declare-fun bm!672277 () Bool)

(declare-fun call!672282 () List!71659)

(declare-fun call!672283 () (InoxSet Context!16206))

(assert (=> bm!672277 (= call!672283 (derivationStepZipperDown!2989 (ite c!1365603 (regTwo!38839 (regOne!38838 r1!2370)) (regOne!38838 (regOne!38838 r1!2370))) (ite c!1365603 (Context!16207 ($colon$colon!3161 (exprs!8603 ct1!282) (regTwo!38838 r1!2370))) (Context!16207 call!672282)) c!10362))))

(declare-fun b!7350389 () Bool)

(declare-fun e!4401153 () (InoxSet Context!16206))

(declare-fun call!672286 () (InoxSet Context!16206))

(assert (=> b!7350389 (= e!4401153 ((_ map or) call!672283 call!672286))))

(declare-fun call!672284 () (InoxSet Context!16206))

(declare-fun bm!672278 () Bool)

(declare-fun c!1365601 () Bool)

(declare-fun call!672287 () List!71659)

(declare-fun c!1365604 () Bool)

(assert (=> bm!672278 (= call!672284 (derivationStepZipperDown!2989 (ite c!1365603 (regOne!38839 (regOne!38838 r1!2370)) (ite c!1365601 (regTwo!38838 (regOne!38838 r1!2370)) (ite c!1365604 (regOne!38838 (regOne!38838 r1!2370)) (reg!19492 (regOne!38838 r1!2370))))) (ite (or c!1365603 c!1365601) (Context!16207 ($colon$colon!3161 (exprs!8603 ct1!282) (regTwo!38838 r1!2370))) (Context!16207 call!672287)) c!10362))))

(declare-fun b!7350391 () Bool)

(declare-fun e!4401156 () (InoxSet Context!16206))

(assert (=> b!7350391 (= e!4401156 (store ((as const (Array Context!16206 Bool)) false) (Context!16207 ($colon$colon!3161 (exprs!8603 ct1!282) (regTwo!38838 r1!2370))) true))))

(declare-fun b!7350392 () Bool)

(declare-fun e!4401155 () (InoxSet Context!16206))

(declare-fun call!672285 () (InoxSet Context!16206))

(assert (=> b!7350392 (= e!4401155 call!672285)))

(declare-fun b!7350393 () Bool)

(declare-fun e!4401154 () Bool)

(assert (=> b!7350393 (= c!1365601 e!4401154)))

(declare-fun res!2968448 () Bool)

(assert (=> b!7350393 (=> (not res!2968448) (not e!4401154))))

(assert (=> b!7350393 (= res!2968448 ((_ is Concat!28008) (regOne!38838 r1!2370)))))

(declare-fun e!4401157 () (InoxSet Context!16206))

(assert (=> b!7350393 (= e!4401157 e!4401153)))

(declare-fun b!7350394 () Bool)

(assert (=> b!7350394 (= e!4401154 (nullable!8254 (regOne!38838 (regOne!38838 r1!2370))))))

(declare-fun bm!672279 () Bool)

(assert (=> bm!672279 (= call!672282 ($colon$colon!3161 (exprs!8603 (Context!16207 ($colon$colon!3161 (exprs!8603 ct1!282) (regTwo!38838 r1!2370)))) (ite (or c!1365601 c!1365604) (regTwo!38838 (regOne!38838 r1!2370)) (regOne!38838 r1!2370))))))

(declare-fun bm!672280 () Bool)

(assert (=> bm!672280 (= call!672287 call!672282)))

(declare-fun bm!672281 () Bool)

(assert (=> bm!672281 (= call!672286 call!672284)))

(declare-fun b!7350395 () Bool)

(assert (=> b!7350395 (= e!4401157 ((_ map or) call!672284 call!672283))))

(declare-fun b!7350396 () Bool)

(declare-fun e!4401158 () (InoxSet Context!16206))

(assert (=> b!7350396 (= e!4401153 e!4401158)))

(assert (=> b!7350396 (= c!1365604 ((_ is Concat!28008) (regOne!38838 r1!2370)))))

(declare-fun b!7350390 () Bool)

(declare-fun c!1365605 () Bool)

(assert (=> b!7350390 (= c!1365605 ((_ is Star!19163) (regOne!38838 r1!2370)))))

(assert (=> b!7350390 (= e!4401158 e!4401155)))

(declare-fun d!2280448 () Bool)

(declare-fun c!1365602 () Bool)

(assert (=> d!2280448 (= c!1365602 (and ((_ is ElementMatch!19163) (regOne!38838 r1!2370)) (= (c!1365521 (regOne!38838 r1!2370)) c!10362)))))

(assert (=> d!2280448 (= (derivationStepZipperDown!2989 (regOne!38838 r1!2370) (Context!16207 ($colon$colon!3161 (exprs!8603 ct1!282) (regTwo!38838 r1!2370))) c!10362) e!4401156)))

(declare-fun b!7350397 () Bool)

(assert (=> b!7350397 (= e!4401155 ((as const (Array Context!16206 Bool)) false))))

(declare-fun b!7350398 () Bool)

(assert (=> b!7350398 (= e!4401158 call!672285)))

(declare-fun bm!672282 () Bool)

(assert (=> bm!672282 (= call!672285 call!672286)))

(declare-fun b!7350399 () Bool)

(assert (=> b!7350399 (= e!4401156 e!4401157)))

(assert (=> b!7350399 (= c!1365603 ((_ is Union!19163) (regOne!38838 r1!2370)))))

(assert (= (and d!2280448 c!1365602) b!7350391))

(assert (= (and d!2280448 (not c!1365602)) b!7350399))

(assert (= (and b!7350399 c!1365603) b!7350395))

(assert (= (and b!7350399 (not c!1365603)) b!7350393))

(assert (= (and b!7350393 res!2968448) b!7350394))

(assert (= (and b!7350393 c!1365601) b!7350389))

(assert (= (and b!7350393 (not c!1365601)) b!7350396))

(assert (= (and b!7350396 c!1365604) b!7350398))

(assert (= (and b!7350396 (not c!1365604)) b!7350390))

(assert (= (and b!7350390 c!1365605) b!7350392))

(assert (= (and b!7350390 (not c!1365605)) b!7350397))

(assert (= (or b!7350398 b!7350392) bm!672280))

(assert (= (or b!7350398 b!7350392) bm!672282))

(assert (= (or b!7350389 bm!672282) bm!672281))

(assert (= (or b!7350389 bm!672280) bm!672279))

(assert (= (or b!7350395 b!7350389) bm!672277))

(assert (= (or b!7350395 bm!672281) bm!672278))

(declare-fun m!8011728 () Bool)

(assert (=> b!7350394 m!8011728))

(declare-fun m!8011730 () Bool)

(assert (=> b!7350391 m!8011730))

(declare-fun m!8011732 () Bool)

(assert (=> bm!672279 m!8011732))

(declare-fun m!8011734 () Bool)

(assert (=> bm!672278 m!8011734))

(declare-fun m!8011736 () Bool)

(assert (=> bm!672277 m!8011736))

(assert (=> b!7350144 d!2280448))

(declare-fun d!2280452 () Bool)

(assert (=> d!2280452 (= ($colon$colon!3161 (exprs!8603 ct1!282) (regTwo!38838 r1!2370)) (Cons!71535 (regTwo!38838 r1!2370) (exprs!8603 ct1!282)))))

(assert (=> b!7350144 d!2280452))

(declare-fun d!2280454 () Bool)

(declare-fun nullableFct!3291 (Regex!19163) Bool)

(assert (=> d!2280454 (= (nullable!8254 (regOne!38838 r1!2370)) (nullableFct!3291 (regOne!38838 r1!2370)))))

(declare-fun bs!1919252 () Bool)

(assert (= bs!1919252 d!2280454))

(declare-fun m!8011738 () Bool)

(assert (=> bs!1919252 m!8011738))

(assert (=> b!7350145 d!2280454))

(declare-fun d!2280456 () Bool)

(declare-fun res!2968449 () Bool)

(declare-fun e!4401159 () Bool)

(assert (=> d!2280456 (=> res!2968449 e!4401159)))

(assert (=> d!2280456 (= res!2968449 ((_ is Nil!71535) (exprs!8603 ct1!282)))))

(assert (=> d!2280456 (= (forall!17987 (exprs!8603 ct1!282) lambda!456501) e!4401159)))

(declare-fun b!7350400 () Bool)

(declare-fun e!4401160 () Bool)

(assert (=> b!7350400 (= e!4401159 e!4401160)))

(declare-fun res!2968450 () Bool)

(assert (=> b!7350400 (=> (not res!2968450) (not e!4401160))))

(assert (=> b!7350400 (= res!2968450 (dynLambda!29492 lambda!456501 (h!77983 (exprs!8603 ct1!282))))))

(declare-fun b!7350401 () Bool)

(assert (=> b!7350401 (= e!4401160 (forall!17987 (t!386076 (exprs!8603 ct1!282)) lambda!456501))))

(assert (= (and d!2280456 (not res!2968449)) b!7350400))

(assert (= (and b!7350400 res!2968450) b!7350401))

(declare-fun b_lambda!284113 () Bool)

(assert (=> (not b_lambda!284113) (not b!7350400)))

(declare-fun m!8011740 () Bool)

(assert (=> b!7350400 m!8011740))

(declare-fun m!8011742 () Bool)

(assert (=> b!7350401 m!8011742))

(assert (=> b!7350150 d!2280456))

(assert (=> b!7350150 d!2280408))

(declare-fun b!7350415 () Bool)

(declare-fun e!4401163 () Bool)

(declare-fun tp!2087623 () Bool)

(declare-fun tp!2087624 () Bool)

(assert (=> b!7350415 (= e!4401163 (and tp!2087623 tp!2087624))))

(declare-fun b!7350413 () Bool)

(declare-fun tp!2087621 () Bool)

(declare-fun tp!2087620 () Bool)

(assert (=> b!7350413 (= e!4401163 (and tp!2087621 tp!2087620))))

(declare-fun b!7350412 () Bool)

(assert (=> b!7350412 (= e!4401163 tp_is_empty!48571)))

(assert (=> b!7350140 (= tp!2087603 e!4401163)))

(declare-fun b!7350414 () Bool)

(declare-fun tp!2087622 () Bool)

(assert (=> b!7350414 (= e!4401163 tp!2087622)))

(assert (= (and b!7350140 ((_ is ElementMatch!19163) (reg!19492 r1!2370))) b!7350412))

(assert (= (and b!7350140 ((_ is Concat!28008) (reg!19492 r1!2370))) b!7350413))

(assert (= (and b!7350140 ((_ is Star!19163) (reg!19492 r1!2370))) b!7350414))

(assert (= (and b!7350140 ((_ is Union!19163) (reg!19492 r1!2370))) b!7350415))

(declare-fun b!7350420 () Bool)

(declare-fun e!4401166 () Bool)

(declare-fun tp!2087629 () Bool)

(declare-fun tp!2087630 () Bool)

(assert (=> b!7350420 (= e!4401166 (and tp!2087629 tp!2087630))))

(assert (=> b!7350147 (= tp!2087608 e!4401166)))

(assert (= (and b!7350147 ((_ is Cons!71535) (exprs!8603 ct1!282))) b!7350420))

(declare-fun b!7350421 () Bool)

(declare-fun e!4401167 () Bool)

(declare-fun tp!2087631 () Bool)

(declare-fun tp!2087632 () Bool)

(assert (=> b!7350421 (= e!4401167 (and tp!2087631 tp!2087632))))

(assert (=> b!7350153 (= tp!2087605 e!4401167)))

(assert (= (and b!7350153 ((_ is Cons!71535) (exprs!8603 cWitness!61))) b!7350421))

(declare-fun b!7350422 () Bool)

(declare-fun e!4401168 () Bool)

(declare-fun tp!2087633 () Bool)

(declare-fun tp!2087634 () Bool)

(assert (=> b!7350422 (= e!4401168 (and tp!2087633 tp!2087634))))

(assert (=> b!7350143 (= tp!2087602 e!4401168)))

(assert (= (and b!7350143 ((_ is Cons!71535) (exprs!8603 ct2!378))) b!7350422))

(declare-fun b!7350426 () Bool)

(declare-fun e!4401169 () Bool)

(declare-fun tp!2087638 () Bool)

(declare-fun tp!2087639 () Bool)

(assert (=> b!7350426 (= e!4401169 (and tp!2087638 tp!2087639))))

(declare-fun b!7350424 () Bool)

(declare-fun tp!2087636 () Bool)

(declare-fun tp!2087635 () Bool)

(assert (=> b!7350424 (= e!4401169 (and tp!2087636 tp!2087635))))

(declare-fun b!7350423 () Bool)

(assert (=> b!7350423 (= e!4401169 tp_is_empty!48571)))

(assert (=> b!7350138 (= tp!2087606 e!4401169)))

(declare-fun b!7350425 () Bool)

(declare-fun tp!2087637 () Bool)

(assert (=> b!7350425 (= e!4401169 tp!2087637)))

(assert (= (and b!7350138 ((_ is ElementMatch!19163) (regOne!38839 r1!2370))) b!7350423))

(assert (= (and b!7350138 ((_ is Concat!28008) (regOne!38839 r1!2370))) b!7350424))

(assert (= (and b!7350138 ((_ is Star!19163) (regOne!38839 r1!2370))) b!7350425))

(assert (= (and b!7350138 ((_ is Union!19163) (regOne!38839 r1!2370))) b!7350426))

(declare-fun b!7350430 () Bool)

(declare-fun e!4401170 () Bool)

(declare-fun tp!2087643 () Bool)

(declare-fun tp!2087644 () Bool)

(assert (=> b!7350430 (= e!4401170 (and tp!2087643 tp!2087644))))

(declare-fun b!7350428 () Bool)

(declare-fun tp!2087641 () Bool)

(declare-fun tp!2087640 () Bool)

(assert (=> b!7350428 (= e!4401170 (and tp!2087641 tp!2087640))))

(declare-fun b!7350427 () Bool)

(assert (=> b!7350427 (= e!4401170 tp_is_empty!48571)))

(assert (=> b!7350138 (= tp!2087604 e!4401170)))

(declare-fun b!7350429 () Bool)

(declare-fun tp!2087642 () Bool)

(assert (=> b!7350429 (= e!4401170 tp!2087642)))

(assert (= (and b!7350138 ((_ is ElementMatch!19163) (regTwo!38839 r1!2370))) b!7350427))

(assert (= (and b!7350138 ((_ is Concat!28008) (regTwo!38839 r1!2370))) b!7350428))

(assert (= (and b!7350138 ((_ is Star!19163) (regTwo!38839 r1!2370))) b!7350429))

(assert (= (and b!7350138 ((_ is Union!19163) (regTwo!38839 r1!2370))) b!7350430))

(declare-fun b!7350434 () Bool)

(declare-fun e!4401171 () Bool)

(declare-fun tp!2087648 () Bool)

(declare-fun tp!2087649 () Bool)

(assert (=> b!7350434 (= e!4401171 (and tp!2087648 tp!2087649))))

(declare-fun b!7350432 () Bool)

(declare-fun tp!2087646 () Bool)

(declare-fun tp!2087645 () Bool)

(assert (=> b!7350432 (= e!4401171 (and tp!2087646 tp!2087645))))

(declare-fun b!7350431 () Bool)

(assert (=> b!7350431 (= e!4401171 tp_is_empty!48571)))

(assert (=> b!7350139 (= tp!2087607 e!4401171)))

(declare-fun b!7350433 () Bool)

(declare-fun tp!2087647 () Bool)

(assert (=> b!7350433 (= e!4401171 tp!2087647)))

(assert (= (and b!7350139 ((_ is ElementMatch!19163) (regOne!38838 r1!2370))) b!7350431))

(assert (= (and b!7350139 ((_ is Concat!28008) (regOne!38838 r1!2370))) b!7350432))

(assert (= (and b!7350139 ((_ is Star!19163) (regOne!38838 r1!2370))) b!7350433))

(assert (= (and b!7350139 ((_ is Union!19163) (regOne!38838 r1!2370))) b!7350434))

(declare-fun b!7350438 () Bool)

(declare-fun e!4401172 () Bool)

(declare-fun tp!2087653 () Bool)

(declare-fun tp!2087654 () Bool)

(assert (=> b!7350438 (= e!4401172 (and tp!2087653 tp!2087654))))

(declare-fun b!7350436 () Bool)

(declare-fun tp!2087651 () Bool)

(declare-fun tp!2087650 () Bool)

(assert (=> b!7350436 (= e!4401172 (and tp!2087651 tp!2087650))))

(declare-fun b!7350435 () Bool)

(assert (=> b!7350435 (= e!4401172 tp_is_empty!48571)))

(assert (=> b!7350139 (= tp!2087609 e!4401172)))

(declare-fun b!7350437 () Bool)

(declare-fun tp!2087652 () Bool)

(assert (=> b!7350437 (= e!4401172 tp!2087652)))

(assert (= (and b!7350139 ((_ is ElementMatch!19163) (regTwo!38838 r1!2370))) b!7350435))

(assert (= (and b!7350139 ((_ is Concat!28008) (regTwo!38838 r1!2370))) b!7350436))

(assert (= (and b!7350139 ((_ is Star!19163) (regTwo!38838 r1!2370))) b!7350437))

(assert (= (and b!7350139 ((_ is Union!19163) (regTwo!38838 r1!2370))) b!7350438))

(declare-fun b_lambda!284115 () Bool)

(assert (= b_lambda!284111 (or b!7350148 b_lambda!284115)))

(declare-fun bs!1919253 () Bool)

(declare-fun d!2280458 () Bool)

(assert (= bs!1919253 (and d!2280458 b!7350148)))

(assert (=> bs!1919253 (= (dynLambda!29492 lambda!456501 (h!77983 (exprs!8603 ct2!378))) (validRegex!9759 (h!77983 (exprs!8603 ct2!378))))))

(declare-fun m!8011744 () Bool)

(assert (=> bs!1919253 m!8011744))

(assert (=> b!7350349 d!2280458))

(declare-fun b_lambda!284117 () Bool)

(assert (= b_lambda!284113 (or b!7350148 b_lambda!284117)))

(declare-fun bs!1919254 () Bool)

(declare-fun d!2280460 () Bool)

(assert (= bs!1919254 (and d!2280460 b!7350148)))

(assert (=> bs!1919254 (= (dynLambda!29492 lambda!456501 (h!77983 (exprs!8603 ct1!282))) (validRegex!9759 (h!77983 (exprs!8603 ct1!282))))))

(declare-fun m!8011746 () Bool)

(assert (=> bs!1919254 m!8011746))

(assert (=> b!7350400 d!2280460))

(check-sat (not b!7350429) (not b!7350358) (not b!7350415) (not bm!672279) (not b!7350379) (not bm!672272) (not d!2280430) (not b!7350414) (not b!7350437) (not b!7350329) (not bm!672277) (not bm!672201) (not b!7350421) (not d!2280408) (not bm!672256) (not b!7350413) (not b_lambda!284117) (not b!7350265) tp_is_empty!48571 (not b!7350425) (not b_lambda!284115) (not bs!1919254) (not bm!672261) (not b!7350163) (not b!7350436) (not b!7350350) (not b!7350401) (not bm!672271) (not b!7350430) (not d!2280454) (not bm!672258) (not bm!672199) (not b!7350432) (not bm!672259) (not b!7350371) (not bm!672237) (not d!2280442) (not d!2280434) (not b!7350394) (not b!7350433) (not d!2280400) (not bm!672273) (not d!2280390) (not bm!672235) (not bm!672267) (not b!7350320) (not bm!672266) (not b!7350428) (not d!2280422) (not bm!672200) (not bm!672236) (not b!7350434) (not b!7350372) (not b!7350422) (not b!7350420) (not b!7350424) (not bm!672278) (not b!7350426) (not bs!1919253) (not bm!672265) (not b!7350438) (not b!7350203) (not d!2280388) (not b!7350164))
(check-sat)
