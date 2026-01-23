; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!720224 () Bool)

(assert start!720224)

(declare-fun b!7383538 () Bool)

(declare-fun e!4419602 () Bool)

(declare-fun tp!2100384 () Bool)

(assert (=> b!7383538 (= e!4419602 tp!2100384)))

(declare-fun b!7383539 () Bool)

(declare-fun e!4419601 () Bool)

(declare-fun tp!2100379 () Bool)

(declare-fun tp!2100382 () Bool)

(assert (=> b!7383539 (= e!4419601 (and tp!2100379 tp!2100382))))

(declare-fun b!7383540 () Bool)

(declare-fun e!4419599 () Bool)

(declare-fun e!4419600 () Bool)

(assert (=> b!7383540 (= e!4419599 e!4419600)))

(declare-fun res!2977760 () Bool)

(assert (=> b!7383540 (=> (not res!2977760) (not e!4419600))))

(declare-datatypes ((C!38944 0))(
  ( (C!38945 (val!29832 Int)) )
))
(declare-datatypes ((Regex!19335 0))(
  ( (ElementMatch!19335 (c!1372449 C!38944)) (Concat!28180 (regOne!39182 Regex!19335) (regTwo!39182 Regex!19335)) (EmptyExpr!19335) (Star!19335 (reg!19664 Regex!19335)) (EmptyLang!19335) (Union!19335 (regOne!39183 Regex!19335) (regTwo!39183 Regex!19335)) )
))
(declare-datatypes ((List!71831 0))(
  ( (Nil!71707) (Cons!71707 (h!78155 Regex!19335) (t!386330 List!71831)) )
))
(declare-datatypes ((Context!16550 0))(
  ( (Context!16551 (exprs!8775 List!71831)) )
))
(declare-fun cWitness!61 () Context!16550)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2617396 () (InoxSet Context!16550))

(assert (=> b!7383540 (= res!2977760 (select lt!2617396 cWitness!61))))

(declare-fun r1!2370 () Regex!19335)

(declare-fun c!10362 () C!38944)

(declare-fun ct1!282 () Context!16550)

(declare-fun derivationStepZipperDown!3161 (Regex!19335 Context!16550 C!38944) (InoxSet Context!16550))

(assert (=> b!7383540 (= lt!2617396 (derivationStepZipperDown!3161 r1!2370 ct1!282 c!10362))))

(declare-fun b!7383541 () Bool)

(declare-fun e!4419597 () Bool)

(declare-fun nullable!8409 (Regex!19335) Bool)

(assert (=> b!7383541 (= e!4419597 (not (nullable!8409 (regOne!39182 r1!2370))))))

(declare-fun b!7383542 () Bool)

(declare-fun tp_is_empty!48915 () Bool)

(assert (=> b!7383542 (= e!4419601 tp_is_empty!48915)))

(declare-fun b!7383543 () Bool)

(declare-fun e!4419603 () Bool)

(assert (=> b!7383543 (= e!4419603 true)))

(declare-fun ct2!378 () Context!16550)

(declare-datatypes ((Unit!165619 0))(
  ( (Unit!165620) )
))
(declare-fun lt!2617402 () Unit!165619)

(declare-fun lambda!458719 () Int)

(declare-fun lemmaConcatPreservesForall!2008 (List!71831 List!71831 Int) Unit!165619)

(assert (=> b!7383543 (= lt!2617402 (lemmaConcatPreservesForall!2008 (exprs!8775 ct1!282) (exprs!8775 ct2!378) lambda!458719))))

(declare-fun lt!2617404 () Unit!165619)

(assert (=> b!7383543 (= lt!2617404 (lemmaConcatPreservesForall!2008 (exprs!8775 cWitness!61) (exprs!8775 ct2!378) lambda!458719))))

(declare-fun b!7383544 () Bool)

(declare-fun e!4419596 () Bool)

(assert (=> b!7383544 (= e!4419596 (not e!4419603))))

(declare-fun res!2977756 () Bool)

(assert (=> b!7383544 (=> res!2977756 e!4419603)))

(declare-fun lt!2617399 () Context!16550)

(declare-fun lt!2617395 () (InoxSet Context!16550))

(assert (=> b!7383544 (= res!2977756 (not (select lt!2617395 lt!2617399)))))

(declare-fun lt!2617406 () Unit!165619)

(assert (=> b!7383544 (= lt!2617406 (lemmaConcatPreservesForall!2008 (exprs!8775 cWitness!61) (exprs!8775 ct2!378) lambda!458719))))

(declare-fun lt!2617407 () List!71831)

(declare-fun ++!17151 (List!71831 List!71831) List!71831)

(assert (=> b!7383544 (select (derivationStepZipperDown!3161 (reg!19664 r1!2370) (Context!16551 (++!17151 lt!2617407 (exprs!8775 ct2!378))) c!10362) lt!2617399)))

(assert (=> b!7383544 (= lt!2617399 (Context!16551 (++!17151 (exprs!8775 cWitness!61) (exprs!8775 ct2!378))))))

(declare-fun lt!2617397 () Unit!165619)

(assert (=> b!7383544 (= lt!2617397 (lemmaConcatPreservesForall!2008 lt!2617407 (exprs!8775 ct2!378) lambda!458719))))

(declare-fun lt!2617398 () Unit!165619)

(assert (=> b!7383544 (= lt!2617398 (lemmaConcatPreservesForall!2008 (exprs!8775 cWitness!61) (exprs!8775 ct2!378) lambda!458719))))

(declare-fun lt!2617403 () Unit!165619)

(declare-fun lt!2617405 () Context!16550)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!160 (Regex!19335 Context!16550 Context!16550 Context!16550 C!38944) Unit!165619)

(assert (=> b!7383544 (= lt!2617403 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!160 (reg!19664 r1!2370) lt!2617405 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7383545 () Bool)

(declare-fun res!2977753 () Bool)

(declare-fun e!4419604 () Bool)

(assert (=> b!7383545 (=> (not res!2977753) (not e!4419604))))

(get-info :version)

(assert (=> b!7383545 (= res!2977753 (and (not ((_ is Concat!28180) r1!2370)) ((_ is Star!19335) r1!2370)))))

(declare-fun b!7383547 () Bool)

(declare-fun tp!2100380 () Bool)

(declare-fun tp!2100385 () Bool)

(assert (=> b!7383547 (= e!4419601 (and tp!2100380 tp!2100385))))

(declare-fun b!7383548 () Bool)

(declare-fun e!4419605 () Bool)

(assert (=> b!7383548 (= e!4419605 e!4419596)))

(declare-fun res!2977758 () Bool)

(assert (=> b!7383548 (=> (not res!2977758) (not e!4419596))))

(assert (=> b!7383548 (= res!2977758 (= lt!2617396 (derivationStepZipperDown!3161 (reg!19664 r1!2370) lt!2617405 c!10362)))))

(assert (=> b!7383548 (= lt!2617405 (Context!16551 lt!2617407))))

(declare-fun lt!2617400 () Regex!19335)

(declare-fun $colon$colon!3313 (List!71831 Regex!19335) List!71831)

(assert (=> b!7383548 (= lt!2617407 ($colon$colon!3313 (exprs!8775 ct1!282) lt!2617400))))

(declare-fun b!7383549 () Bool)

(declare-fun e!4419606 () Bool)

(declare-fun tp!2100378 () Bool)

(assert (=> b!7383549 (= e!4419606 tp!2100378)))

(declare-fun b!7383550 () Bool)

(declare-fun res!2977755 () Bool)

(assert (=> b!7383550 (=> (not res!2977755) (not e!4419604))))

(assert (=> b!7383550 (= res!2977755 e!4419597)))

(declare-fun res!2977754 () Bool)

(assert (=> b!7383550 (=> res!2977754 e!4419597)))

(assert (=> b!7383550 (= res!2977754 (not ((_ is Concat!28180) r1!2370)))))

(declare-fun b!7383551 () Bool)

(assert (=> b!7383551 (= e!4419600 e!4419604)))

(declare-fun res!2977757 () Bool)

(assert (=> b!7383551 (=> (not res!2977757) (not e!4419604))))

(assert (=> b!7383551 (= res!2977757 (and (or (not ((_ is ElementMatch!19335) r1!2370)) (not (= c!10362 (c!1372449 r1!2370)))) (not ((_ is Union!19335) r1!2370))))))

(assert (=> b!7383551 (= lt!2617395 (derivationStepZipperDown!3161 r1!2370 (Context!16551 (++!17151 (exprs!8775 ct1!282) (exprs!8775 ct2!378))) c!10362))))

(declare-fun lt!2617401 () Unit!165619)

(assert (=> b!7383551 (= lt!2617401 (lemmaConcatPreservesForall!2008 (exprs!8775 ct1!282) (exprs!8775 ct2!378) lambda!458719))))

(declare-fun b!7383552 () Bool)

(assert (=> b!7383552 (= e!4419604 e!4419605)))

(declare-fun res!2977759 () Bool)

(assert (=> b!7383552 (=> (not res!2977759) (not e!4419605))))

(declare-fun validRegex!9931 (Regex!19335) Bool)

(assert (=> b!7383552 (= res!2977759 (validRegex!9931 lt!2617400))))

(assert (=> b!7383552 (= lt!2617400 (Star!19335 (reg!19664 r1!2370)))))

(declare-fun b!7383553 () Bool)

(declare-fun tp!2100381 () Bool)

(assert (=> b!7383553 (= e!4419601 tp!2100381)))

(declare-fun b!7383546 () Bool)

(declare-fun e!4419598 () Bool)

(declare-fun tp!2100383 () Bool)

(assert (=> b!7383546 (= e!4419598 tp!2100383)))

(declare-fun res!2977752 () Bool)

(assert (=> start!720224 (=> (not res!2977752) (not e!4419599))))

(assert (=> start!720224 (= res!2977752 (validRegex!9931 r1!2370))))

(assert (=> start!720224 e!4419599))

(assert (=> start!720224 tp_is_empty!48915))

(declare-fun inv!91677 (Context!16550) Bool)

(assert (=> start!720224 (and (inv!91677 cWitness!61) e!4419598)))

(assert (=> start!720224 (and (inv!91677 ct1!282) e!4419606)))

(assert (=> start!720224 e!4419601))

(assert (=> start!720224 (and (inv!91677 ct2!378) e!4419602)))

(assert (= (and start!720224 res!2977752) b!7383540))

(assert (= (and b!7383540 res!2977760) b!7383551))

(assert (= (and b!7383551 res!2977757) b!7383550))

(assert (= (and b!7383550 (not res!2977754)) b!7383541))

(assert (= (and b!7383550 res!2977755) b!7383545))

(assert (= (and b!7383545 res!2977753) b!7383552))

(assert (= (and b!7383552 res!2977759) b!7383548))

(assert (= (and b!7383548 res!2977758) b!7383544))

(assert (= (and b!7383544 (not res!2977756)) b!7383543))

(assert (= start!720224 b!7383546))

(assert (= start!720224 b!7383549))

(assert (= (and start!720224 ((_ is ElementMatch!19335) r1!2370)) b!7383542))

(assert (= (and start!720224 ((_ is Concat!28180) r1!2370)) b!7383539))

(assert (= (and start!720224 ((_ is Star!19335) r1!2370)) b!7383553))

(assert (= (and start!720224 ((_ is Union!19335) r1!2370)) b!7383547))

(assert (= start!720224 b!7383538))

(declare-fun m!8032776 () Bool)

(assert (=> b!7383544 m!8032776))

(declare-fun m!8032778 () Bool)

(assert (=> b!7383544 m!8032778))

(declare-fun m!8032780 () Bool)

(assert (=> b!7383544 m!8032780))

(declare-fun m!8032782 () Bool)

(assert (=> b!7383544 m!8032782))

(declare-fun m!8032784 () Bool)

(assert (=> b!7383544 m!8032784))

(declare-fun m!8032786 () Bool)

(assert (=> b!7383544 m!8032786))

(declare-fun m!8032788 () Bool)

(assert (=> b!7383544 m!8032788))

(declare-fun m!8032790 () Bool)

(assert (=> b!7383544 m!8032790))

(assert (=> b!7383544 m!8032780))

(declare-fun m!8032792 () Bool)

(assert (=> b!7383552 m!8032792))

(declare-fun m!8032794 () Bool)

(assert (=> start!720224 m!8032794))

(declare-fun m!8032796 () Bool)

(assert (=> start!720224 m!8032796))

(declare-fun m!8032798 () Bool)

(assert (=> start!720224 m!8032798))

(declare-fun m!8032800 () Bool)

(assert (=> start!720224 m!8032800))

(declare-fun m!8032802 () Bool)

(assert (=> b!7383543 m!8032802))

(assert (=> b!7383543 m!8032780))

(declare-fun m!8032804 () Bool)

(assert (=> b!7383548 m!8032804))

(declare-fun m!8032806 () Bool)

(assert (=> b!7383548 m!8032806))

(declare-fun m!8032808 () Bool)

(assert (=> b!7383540 m!8032808))

(declare-fun m!8032810 () Bool)

(assert (=> b!7383540 m!8032810))

(declare-fun m!8032812 () Bool)

(assert (=> b!7383551 m!8032812))

(declare-fun m!8032814 () Bool)

(assert (=> b!7383551 m!8032814))

(assert (=> b!7383551 m!8032802))

(declare-fun m!8032816 () Bool)

(assert (=> b!7383541 m!8032816))

(check-sat (not b!7383538) (not b!7383544) (not start!720224) (not b!7383539) (not b!7383551) (not b!7383541) (not b!7383548) (not b!7383549) tp_is_empty!48915 (not b!7383540) (not b!7383552) (not b!7383543) (not b!7383553) (not b!7383547) (not b!7383546))
(check-sat)
