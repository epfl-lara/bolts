; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!717886 () Bool)

(assert start!717886)

(declare-fun b!7351404 () Bool)

(declare-fun e!4401707 () Bool)

(declare-fun tp!2088046 () Bool)

(declare-fun tp!2088047 () Bool)

(assert (=> b!7351404 (= e!4401707 (and tp!2088046 tp!2088047))))

(declare-fun b!7351405 () Bool)

(declare-fun e!4401706 () Bool)

(declare-fun e!4401704 () Bool)

(assert (=> b!7351405 (= e!4401706 (not e!4401704))))

(declare-fun res!2968768 () Bool)

(assert (=> b!7351405 (=> res!2968768 e!4401704)))

(declare-datatypes ((C!38614 0))(
  ( (C!38615 (val!29667 Int)) )
))
(declare-datatypes ((Regex!19170 0))(
  ( (ElementMatch!19170 (c!1365778 C!38614)) (Concat!28015 (regOne!38852 Regex!19170) (regTwo!38852 Regex!19170)) (EmptyExpr!19170) (Star!19170 (reg!19499 Regex!19170)) (EmptyLang!19170) (Union!19170 (regOne!38853 Regex!19170) (regTwo!38853 Regex!19170)) )
))
(declare-datatypes ((List!71666 0))(
  ( (Nil!71542) (Cons!71542 (h!77990 Regex!19170) (t!386087 List!71666)) )
))
(declare-datatypes ((Context!16220 0))(
  ( (Context!16221 (exprs!8610 List!71666)) )
))
(declare-fun cWitness!61 () Context!16220)

(declare-fun lambda!456590 () Int)

(declare-fun forall!17992 (List!71666 Int) Bool)

(assert (=> b!7351405 (= res!2968768 (not (forall!17992 (exprs!8610 cWitness!61) lambda!456590)))))

(declare-fun c!10362 () C!38614)

(declare-fun lt!2612260 () List!71666)

(declare-fun r1!2370 () Regex!19170)

(declare-fun ct2!378 () Context!16220)

(declare-fun ++!16988 (List!71666 List!71666) List!71666)

(declare-fun derivationStepZipperDown!2996 (Regex!19170 Context!16220 C!38614) (Set Context!16220))

(assert (=> b!7351405 (set.member (Context!16221 (++!16988 (exprs!8610 cWitness!61) (exprs!8610 ct2!378))) (derivationStepZipperDown!2996 (regOne!38852 r1!2370) (Context!16221 (++!16988 lt!2612260 (exprs!8610 ct2!378))) c!10362))))

(declare-datatypes ((Unit!165293 0))(
  ( (Unit!165294) )
))
(declare-fun lt!2612262 () Unit!165293)

(declare-fun lemmaConcatPreservesForall!1845 (List!71666 List!71666 Int) Unit!165293)

(assert (=> b!7351405 (= lt!2612262 (lemmaConcatPreservesForall!1845 lt!2612260 (exprs!8610 ct2!378) lambda!456590))))

(declare-fun lt!2612264 () Unit!165293)

(assert (=> b!7351405 (= lt!2612264 (lemmaConcatPreservesForall!1845 (exprs!8610 cWitness!61) (exprs!8610 ct2!378) lambda!456590))))

(declare-fun lt!2612265 () Unit!165293)

(declare-fun lt!2612267 () Context!16220)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!91 (Regex!19170 Context!16220 Context!16220 Context!16220 C!38614) Unit!165293)

(assert (=> b!7351405 (= lt!2612265 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!91 (regOne!38852 r1!2370) lt!2612267 ct2!378 cWitness!61 c!10362))))

(declare-fun res!2968766 () Bool)

(declare-fun e!4401708 () Bool)

(assert (=> start!717886 (=> (not res!2968766) (not e!4401708))))

(declare-fun validRegex!9766 (Regex!19170) Bool)

(assert (=> start!717886 (= res!2968766 (validRegex!9766 r1!2370))))

(assert (=> start!717886 e!4401708))

(declare-fun tp_is_empty!48585 () Bool)

(assert (=> start!717886 tp_is_empty!48585))

(declare-fun e!4401709 () Bool)

(declare-fun inv!91266 (Context!16220) Bool)

(assert (=> start!717886 (and (inv!91266 cWitness!61) e!4401709)))

(declare-fun ct1!282 () Context!16220)

(declare-fun e!4401710 () Bool)

(assert (=> start!717886 (and (inv!91266 ct1!282) e!4401710)))

(assert (=> start!717886 e!4401707))

(declare-fun e!4401702 () Bool)

(assert (=> start!717886 (and (inv!91266 ct2!378) e!4401702)))

(declare-fun b!7351406 () Bool)

(declare-fun res!2968765 () Bool)

(declare-fun e!4401705 () Bool)

(assert (=> b!7351406 (=> (not res!2968765) (not e!4401705))))

(assert (=> b!7351406 (= res!2968765 (is-Concat!28015 r1!2370))))

(declare-fun b!7351407 () Bool)

(declare-fun tp!2088040 () Bool)

(assert (=> b!7351407 (= e!4401710 tp!2088040)))

(declare-fun b!7351408 () Bool)

(declare-fun tp!2088041 () Bool)

(assert (=> b!7351408 (= e!4401709 tp!2088041)))

(declare-fun b!7351409 () Bool)

(declare-fun e!4401703 () Bool)

(assert (=> b!7351409 (= e!4401708 e!4401703)))

(declare-fun res!2968769 () Bool)

(assert (=> b!7351409 (=> (not res!2968769) (not e!4401703))))

(declare-fun lt!2612263 () (Set Context!16220))

(assert (=> b!7351409 (= res!2968769 (set.member cWitness!61 lt!2612263))))

(assert (=> b!7351409 (= lt!2612263 (derivationStepZipperDown!2996 r1!2370 ct1!282 c!10362))))

(declare-fun b!7351410 () Bool)

(declare-fun e!4401701 () Bool)

(declare-fun nullable!8261 (Regex!19170) Bool)

(assert (=> b!7351410 (= e!4401701 (not (nullable!8261 (regOne!38852 r1!2370))))))

(declare-fun b!7351411 () Bool)

(assert (=> b!7351411 (= e!4401704 (forall!17992 (exprs!8610 ct2!378) lambda!456590))))

(declare-fun b!7351412 () Bool)

(assert (=> b!7351412 (= e!4401707 tp_is_empty!48585)))

(declare-fun b!7351413 () Bool)

(declare-fun tp!2088043 () Bool)

(declare-fun tp!2088044 () Bool)

(assert (=> b!7351413 (= e!4401707 (and tp!2088043 tp!2088044))))

(declare-fun b!7351414 () Bool)

(assert (=> b!7351414 (= e!4401703 e!4401705)))

(declare-fun res!2968770 () Bool)

(assert (=> b!7351414 (=> (not res!2968770) (not e!4401705))))

(assert (=> b!7351414 (= res!2968770 (and (or (not (is-ElementMatch!19170 r1!2370)) (not (= c!10362 (c!1365778 r1!2370)))) (not (is-Union!19170 r1!2370))))))

(declare-fun lt!2612266 () (Set Context!16220))

(assert (=> b!7351414 (= lt!2612266 (derivationStepZipperDown!2996 r1!2370 (Context!16221 (++!16988 (exprs!8610 ct1!282) (exprs!8610 ct2!378))) c!10362))))

(declare-fun lt!2612261 () Unit!165293)

(assert (=> b!7351414 (= lt!2612261 (lemmaConcatPreservesForall!1845 (exprs!8610 ct1!282) (exprs!8610 ct2!378) lambda!456590))))

(declare-fun b!7351415 () Bool)

(declare-fun res!2968773 () Bool)

(assert (=> b!7351415 (=> (not res!2968773) (not e!4401705))))

(assert (=> b!7351415 (= res!2968773 (validRegex!9766 (regTwo!38852 r1!2370)))))

(declare-fun b!7351416 () Bool)

(assert (=> b!7351416 (= e!4401705 e!4401706)))

(declare-fun res!2968767 () Bool)

(assert (=> b!7351416 (=> (not res!2968767) (not e!4401706))))

(assert (=> b!7351416 (= res!2968767 (= lt!2612263 (derivationStepZipperDown!2996 (regOne!38852 r1!2370) lt!2612267 c!10362)))))

(assert (=> b!7351416 (= lt!2612267 (Context!16221 lt!2612260))))

(declare-fun $colon$colon!3168 (List!71666 Regex!19170) List!71666)

(assert (=> b!7351416 (= lt!2612260 ($colon$colon!3168 (exprs!8610 ct1!282) (regTwo!38852 r1!2370)))))

(declare-fun b!7351417 () Bool)

(declare-fun res!2968772 () Bool)

(assert (=> b!7351417 (=> (not res!2968772) (not e!4401705))))

(assert (=> b!7351417 (= res!2968772 e!4401701)))

(declare-fun res!2968771 () Bool)

(assert (=> b!7351417 (=> res!2968771 e!4401701)))

(assert (=> b!7351417 (= res!2968771 (not (is-Concat!28015 r1!2370)))))

(declare-fun b!7351418 () Bool)

(declare-fun tp!2088042 () Bool)

(assert (=> b!7351418 (= e!4401702 tp!2088042)))

(declare-fun b!7351419 () Bool)

(declare-fun tp!2088045 () Bool)

(assert (=> b!7351419 (= e!4401707 tp!2088045)))

(assert (= (and start!717886 res!2968766) b!7351409))

(assert (= (and b!7351409 res!2968769) b!7351414))

(assert (= (and b!7351414 res!2968770) b!7351417))

(assert (= (and b!7351417 (not res!2968771)) b!7351410))

(assert (= (and b!7351417 res!2968772) b!7351406))

(assert (= (and b!7351406 res!2968765) b!7351415))

(assert (= (and b!7351415 res!2968773) b!7351416))

(assert (= (and b!7351416 res!2968767) b!7351405))

(assert (= (and b!7351405 (not res!2968768)) b!7351411))

(assert (= start!717886 b!7351408))

(assert (= start!717886 b!7351407))

(assert (= (and start!717886 (is-ElementMatch!19170 r1!2370)) b!7351412))

(assert (= (and start!717886 (is-Concat!28015 r1!2370)) b!7351413))

(assert (= (and start!717886 (is-Star!19170 r1!2370)) b!7351419))

(assert (= (and start!717886 (is-Union!19170 r1!2370)) b!7351404))

(assert (= start!717886 b!7351418))

(declare-fun m!8012342 () Bool)

(assert (=> b!7351411 m!8012342))

(declare-fun m!8012344 () Bool)

(assert (=> b!7351410 m!8012344))

(declare-fun m!8012346 () Bool)

(assert (=> b!7351409 m!8012346))

(declare-fun m!8012348 () Bool)

(assert (=> b!7351409 m!8012348))

(declare-fun m!8012350 () Bool)

(assert (=> b!7351414 m!8012350))

(declare-fun m!8012352 () Bool)

(assert (=> b!7351414 m!8012352))

(declare-fun m!8012354 () Bool)

(assert (=> b!7351414 m!8012354))

(declare-fun m!8012356 () Bool)

(assert (=> start!717886 m!8012356))

(declare-fun m!8012358 () Bool)

(assert (=> start!717886 m!8012358))

(declare-fun m!8012360 () Bool)

(assert (=> start!717886 m!8012360))

(declare-fun m!8012362 () Bool)

(assert (=> start!717886 m!8012362))

(declare-fun m!8012364 () Bool)

(assert (=> b!7351405 m!8012364))

(declare-fun m!8012366 () Bool)

(assert (=> b!7351405 m!8012366))

(declare-fun m!8012368 () Bool)

(assert (=> b!7351405 m!8012368))

(declare-fun m!8012370 () Bool)

(assert (=> b!7351405 m!8012370))

(declare-fun m!8012372 () Bool)

(assert (=> b!7351405 m!8012372))

(declare-fun m!8012374 () Bool)

(assert (=> b!7351405 m!8012374))

(declare-fun m!8012376 () Bool)

(assert (=> b!7351405 m!8012376))

(declare-fun m!8012378 () Bool)

(assert (=> b!7351405 m!8012378))

(declare-fun m!8012380 () Bool)

(assert (=> b!7351415 m!8012380))

(declare-fun m!8012382 () Bool)

(assert (=> b!7351416 m!8012382))

(declare-fun m!8012384 () Bool)

(assert (=> b!7351416 m!8012384))

(push 1)

(assert (not b!7351404))

(assert (not start!717886))

(assert (not b!7351416))

(assert (not b!7351407))

(assert (not b!7351405))

(assert tp_is_empty!48585)

(assert (not b!7351411))

(assert (not b!7351409))

(assert (not b!7351419))

(assert (not b!7351415))

(assert (not b!7351410))

(assert (not b!7351408))

(assert (not b!7351413))

(assert (not b!7351414))

(assert (not b!7351418))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7351496 () Bool)

(declare-fun e!4401760 () (Set Context!16220))

(declare-fun call!672491 () (Set Context!16220))

(assert (=> b!7351496 (= e!4401760 call!672491)))

(declare-fun d!2280600 () Bool)

(declare-fun c!1365792 () Bool)

(assert (=> d!2280600 (= c!1365792 (and (is-ElementMatch!19170 r1!2370) (= (c!1365778 r1!2370) c!10362)))))

(declare-fun e!4401763 () (Set Context!16220))

(assert (=> d!2280600 (= (derivationStepZipperDown!2996 r1!2370 ct1!282 c!10362) e!4401763)))

(declare-fun b!7351497 () Bool)

(declare-fun e!4401762 () (Set Context!16220))

(declare-fun e!4401761 () (Set Context!16220))

(assert (=> b!7351497 (= e!4401762 e!4401761)))

(declare-fun c!1365790 () Bool)

(assert (=> b!7351497 (= c!1365790 (is-Concat!28015 r1!2370))))

(declare-fun b!7351498 () Bool)

(assert (=> b!7351498 (= e!4401760 (as set.empty (Set Context!16220)))))

(declare-fun b!7351499 () Bool)

(assert (=> b!7351499 (= e!4401763 (set.insert ct1!282 (as set.empty (Set Context!16220))))))

(declare-fun bm!672481 () Bool)

(declare-fun call!672486 () (Set Context!16220))

(declare-fun call!672487 () (Set Context!16220))

(assert (=> bm!672481 (= call!672486 call!672487)))

(declare-fun b!7351500 () Bool)

(declare-fun c!1365791 () Bool)

(assert (=> b!7351500 (= c!1365791 (is-Star!19170 r1!2370))))

(assert (=> b!7351500 (= e!4401761 e!4401760)))

(declare-fun b!7351501 () Bool)

(declare-fun call!672488 () (Set Context!16220))

(assert (=> b!7351501 (= e!4401762 (set.union call!672488 call!672486))))

(declare-fun bm!672482 () Bool)

(declare-fun call!672489 () List!71666)

(declare-fun call!672490 () List!71666)

(assert (=> bm!672482 (= call!672489 call!672490)))

(declare-fun b!7351502 () Bool)

(declare-fun c!1365793 () Bool)

(declare-fun e!4401764 () Bool)

(assert (=> b!7351502 (= c!1365793 e!4401764)))

(declare-fun res!2968809 () Bool)

(assert (=> b!7351502 (=> (not res!2968809) (not e!4401764))))

(assert (=> b!7351502 (= res!2968809 (is-Concat!28015 r1!2370))))

(declare-fun e!4401759 () (Set Context!16220))

(assert (=> b!7351502 (= e!4401759 e!4401762)))

(declare-fun bm!672483 () Bool)

(declare-fun c!1365794 () Bool)

(assert (=> bm!672483 (= call!672487 (derivationStepZipperDown!2996 (ite c!1365794 (regTwo!38853 r1!2370) (ite c!1365793 (regTwo!38852 r1!2370) (ite c!1365790 (regOne!38852 r1!2370) (reg!19499 r1!2370)))) (ite (or c!1365794 c!1365793) ct1!282 (Context!16221 call!672489)) c!10362))))

(declare-fun b!7351503 () Bool)

(assert (=> b!7351503 (= e!4401761 call!672491)))

(declare-fun b!7351504 () Bool)

(assert (=> b!7351504 (= e!4401763 e!4401759)))

(assert (=> b!7351504 (= c!1365794 (is-Union!19170 r1!2370))))

(declare-fun b!7351505 () Bool)

(assert (=> b!7351505 (= e!4401759 (set.union call!672488 call!672487))))

(declare-fun bm!672484 () Bool)

(assert (=> bm!672484 (= call!672491 call!672486)))

(declare-fun bm!672485 () Bool)

(assert (=> bm!672485 (= call!672490 ($colon$colon!3168 (exprs!8610 ct1!282) (ite (or c!1365793 c!1365790) (regTwo!38852 r1!2370) r1!2370)))))

(declare-fun bm!672486 () Bool)

(assert (=> bm!672486 (= call!672488 (derivationStepZipperDown!2996 (ite c!1365794 (regOne!38853 r1!2370) (regOne!38852 r1!2370)) (ite c!1365794 ct1!282 (Context!16221 call!672490)) c!10362))))

(declare-fun b!7351506 () Bool)

(assert (=> b!7351506 (= e!4401764 (nullable!8261 (regOne!38852 r1!2370)))))

(assert (= (and d!2280600 c!1365792) b!7351499))

(assert (= (and d!2280600 (not c!1365792)) b!7351504))

(assert (= (and b!7351504 c!1365794) b!7351505))

(assert (= (and b!7351504 (not c!1365794)) b!7351502))

(assert (= (and b!7351502 res!2968809) b!7351506))

(assert (= (and b!7351502 c!1365793) b!7351501))

(assert (= (and b!7351502 (not c!1365793)) b!7351497))

(assert (= (and b!7351497 c!1365790) b!7351503))

(assert (= (and b!7351497 (not c!1365790)) b!7351500))

(assert (= (and b!7351500 c!1365791) b!7351496))

(assert (= (and b!7351500 (not c!1365791)) b!7351498))

(assert (= (or b!7351503 b!7351496) bm!672482))

(assert (= (or b!7351503 b!7351496) bm!672484))

(assert (= (or b!7351501 bm!672484) bm!672481))

(assert (= (or b!7351501 bm!672482) bm!672485))

(assert (= (or b!7351505 bm!672481) bm!672483))

(assert (= (or b!7351505 b!7351501) bm!672486))

(assert (=> b!7351506 m!8012344))

(declare-fun m!8012434 () Bool)

(assert (=> b!7351499 m!8012434))

(declare-fun m!8012436 () Bool)

(assert (=> bm!672483 m!8012436))

(declare-fun m!8012438 () Bool)

(assert (=> bm!672486 m!8012438))

(declare-fun m!8012440 () Bool)

(assert (=> bm!672485 m!8012440))

(assert (=> b!7351409 d!2280600))

(declare-fun b!7351507 () Bool)

(declare-fun e!4401766 () (Set Context!16220))

(declare-fun call!672497 () (Set Context!16220))

(assert (=> b!7351507 (= e!4401766 call!672497)))

(declare-fun d!2280606 () Bool)

(declare-fun c!1365797 () Bool)

(assert (=> d!2280606 (= c!1365797 (and (is-ElementMatch!19170 r1!2370) (= (c!1365778 r1!2370) c!10362)))))

(declare-fun e!4401769 () (Set Context!16220))

(assert (=> d!2280606 (= (derivationStepZipperDown!2996 r1!2370 (Context!16221 (++!16988 (exprs!8610 ct1!282) (exprs!8610 ct2!378))) c!10362) e!4401769)))

(declare-fun b!7351508 () Bool)

(declare-fun e!4401768 () (Set Context!16220))

(declare-fun e!4401767 () (Set Context!16220))

(assert (=> b!7351508 (= e!4401768 e!4401767)))

(declare-fun c!1365795 () Bool)

(assert (=> b!7351508 (= c!1365795 (is-Concat!28015 r1!2370))))

(declare-fun b!7351509 () Bool)

(assert (=> b!7351509 (= e!4401766 (as set.empty (Set Context!16220)))))

(declare-fun b!7351510 () Bool)

(assert (=> b!7351510 (= e!4401769 (set.insert (Context!16221 (++!16988 (exprs!8610 ct1!282) (exprs!8610 ct2!378))) (as set.empty (Set Context!16220))))))

(declare-fun bm!672487 () Bool)

(declare-fun call!672492 () (Set Context!16220))

(declare-fun call!672493 () (Set Context!16220))

(assert (=> bm!672487 (= call!672492 call!672493)))

(declare-fun b!7351511 () Bool)

(declare-fun c!1365796 () Bool)

(assert (=> b!7351511 (= c!1365796 (is-Star!19170 r1!2370))))

(assert (=> b!7351511 (= e!4401767 e!4401766)))

(declare-fun b!7351512 () Bool)

(declare-fun call!672494 () (Set Context!16220))

(assert (=> b!7351512 (= e!4401768 (set.union call!672494 call!672492))))

(declare-fun bm!672488 () Bool)

(declare-fun call!672495 () List!71666)

(declare-fun call!672496 () List!71666)

(assert (=> bm!672488 (= call!672495 call!672496)))

(declare-fun b!7351513 () Bool)

(declare-fun c!1365798 () Bool)

(declare-fun e!4401770 () Bool)

(assert (=> b!7351513 (= c!1365798 e!4401770)))

(declare-fun res!2968810 () Bool)

(assert (=> b!7351513 (=> (not res!2968810) (not e!4401770))))

(assert (=> b!7351513 (= res!2968810 (is-Concat!28015 r1!2370))))

(declare-fun e!4401765 () (Set Context!16220))

(assert (=> b!7351513 (= e!4401765 e!4401768)))

(declare-fun bm!672489 () Bool)

(declare-fun c!1365799 () Bool)

(assert (=> bm!672489 (= call!672493 (derivationStepZipperDown!2996 (ite c!1365799 (regTwo!38853 r1!2370) (ite c!1365798 (regTwo!38852 r1!2370) (ite c!1365795 (regOne!38852 r1!2370) (reg!19499 r1!2370)))) (ite (or c!1365799 c!1365798) (Context!16221 (++!16988 (exprs!8610 ct1!282) (exprs!8610 ct2!378))) (Context!16221 call!672495)) c!10362))))

(declare-fun b!7351514 () Bool)

(assert (=> b!7351514 (= e!4401767 call!672497)))

(declare-fun b!7351515 () Bool)

(assert (=> b!7351515 (= e!4401769 e!4401765)))

(assert (=> b!7351515 (= c!1365799 (is-Union!19170 r1!2370))))

(declare-fun b!7351516 () Bool)

(assert (=> b!7351516 (= e!4401765 (set.union call!672494 call!672493))))

(declare-fun bm!672490 () Bool)

(assert (=> bm!672490 (= call!672497 call!672492)))

(declare-fun bm!672491 () Bool)

(assert (=> bm!672491 (= call!672496 ($colon$colon!3168 (exprs!8610 (Context!16221 (++!16988 (exprs!8610 ct1!282) (exprs!8610 ct2!378)))) (ite (or c!1365798 c!1365795) (regTwo!38852 r1!2370) r1!2370)))))

(declare-fun bm!672492 () Bool)

(assert (=> bm!672492 (= call!672494 (derivationStepZipperDown!2996 (ite c!1365799 (regOne!38853 r1!2370) (regOne!38852 r1!2370)) (ite c!1365799 (Context!16221 (++!16988 (exprs!8610 ct1!282) (exprs!8610 ct2!378))) (Context!16221 call!672496)) c!10362))))

(declare-fun b!7351517 () Bool)

(assert (=> b!7351517 (= e!4401770 (nullable!8261 (regOne!38852 r1!2370)))))

(assert (= (and d!2280606 c!1365797) b!7351510))

(assert (= (and d!2280606 (not c!1365797)) b!7351515))

(assert (= (and b!7351515 c!1365799) b!7351516))

(assert (= (and b!7351515 (not c!1365799)) b!7351513))

(assert (= (and b!7351513 res!2968810) b!7351517))

(assert (= (and b!7351513 c!1365798) b!7351512))

(assert (= (and b!7351513 (not c!1365798)) b!7351508))

(assert (= (and b!7351508 c!1365795) b!7351514))

(assert (= (and b!7351508 (not c!1365795)) b!7351511))

(assert (= (and b!7351511 c!1365796) b!7351507))

(assert (= (and b!7351511 (not c!1365796)) b!7351509))

(assert (= (or b!7351514 b!7351507) bm!672488))

(assert (= (or b!7351514 b!7351507) bm!672490))

(assert (= (or b!7351512 bm!672490) bm!672487))

(assert (= (or b!7351512 bm!672488) bm!672491))

(assert (= (or b!7351516 bm!672487) bm!672489))

(assert (= (or b!7351516 b!7351512) bm!672492))

(assert (=> b!7351517 m!8012344))

(declare-fun m!8012442 () Bool)

(assert (=> b!7351510 m!8012442))

(declare-fun m!8012444 () Bool)

(assert (=> bm!672489 m!8012444))

(declare-fun m!8012446 () Bool)

(assert (=> bm!672492 m!8012446))

(declare-fun m!8012448 () Bool)

(assert (=> bm!672491 m!8012448))

(assert (=> b!7351414 d!2280606))

(declare-fun b!7351528 () Bool)

(declare-fun res!2968815 () Bool)

(declare-fun e!4401776 () Bool)

(assert (=> b!7351528 (=> (not res!2968815) (not e!4401776))))

(declare-fun lt!2612294 () List!71666)

(declare-fun size!42055 (List!71666) Int)

(assert (=> b!7351528 (= res!2968815 (= (size!42055 lt!2612294) (+ (size!42055 (exprs!8610 ct1!282)) (size!42055 (exprs!8610 ct2!378)))))))

(declare-fun b!7351526 () Bool)

(declare-fun e!4401775 () List!71666)

(assert (=> b!7351526 (= e!4401775 (exprs!8610 ct2!378))))

(declare-fun b!7351529 () Bool)

(assert (=> b!7351529 (= e!4401776 (or (not (= (exprs!8610 ct2!378) Nil!71542)) (= lt!2612294 (exprs!8610 ct1!282))))))

(declare-fun b!7351527 () Bool)

(assert (=> b!7351527 (= e!4401775 (Cons!71542 (h!77990 (exprs!8610 ct1!282)) (++!16988 (t!386087 (exprs!8610 ct1!282)) (exprs!8610 ct2!378))))))

(declare-fun d!2280608 () Bool)

(assert (=> d!2280608 e!4401776))

(declare-fun res!2968816 () Bool)

(assert (=> d!2280608 (=> (not res!2968816) (not e!4401776))))

(declare-fun content!15076 (List!71666) (Set Regex!19170))

(assert (=> d!2280608 (= res!2968816 (= (content!15076 lt!2612294) (set.union (content!15076 (exprs!8610 ct1!282)) (content!15076 (exprs!8610 ct2!378)))))))

(assert (=> d!2280608 (= lt!2612294 e!4401775)))

(declare-fun c!1365802 () Bool)

(assert (=> d!2280608 (= c!1365802 (is-Nil!71542 (exprs!8610 ct1!282)))))

(assert (=> d!2280608 (= (++!16988 (exprs!8610 ct1!282) (exprs!8610 ct2!378)) lt!2612294)))

(assert (= (and d!2280608 c!1365802) b!7351526))

(assert (= (and d!2280608 (not c!1365802)) b!7351527))

(assert (= (and d!2280608 res!2968816) b!7351528))

(assert (= (and b!7351528 res!2968815) b!7351529))

(declare-fun m!8012450 () Bool)

(assert (=> b!7351528 m!8012450))

(declare-fun m!8012452 () Bool)

(assert (=> b!7351528 m!8012452))

(declare-fun m!8012454 () Bool)

(assert (=> b!7351528 m!8012454))

(declare-fun m!8012456 () Bool)

(assert (=> b!7351527 m!8012456))

(declare-fun m!8012458 () Bool)

(assert (=> d!2280608 m!8012458))

(declare-fun m!8012460 () Bool)

(assert (=> d!2280608 m!8012460))

(declare-fun m!8012462 () Bool)

(assert (=> d!2280608 m!8012462))

(assert (=> b!7351414 d!2280608))

(declare-fun d!2280610 () Bool)

(assert (=> d!2280610 (forall!17992 (++!16988 (exprs!8610 ct1!282) (exprs!8610 ct2!378)) lambda!456590)))

(declare-fun lt!2612297 () Unit!165293)

(declare-fun choose!57185 (List!71666 List!71666 Int) Unit!165293)

(assert (=> d!2280610 (= lt!2612297 (choose!57185 (exprs!8610 ct1!282) (exprs!8610 ct2!378) lambda!456590))))

(assert (=> d!2280610 (forall!17992 (exprs!8610 ct1!282) lambda!456590)))

(assert (=> d!2280610 (= (lemmaConcatPreservesForall!1845 (exprs!8610 ct1!282) (exprs!8610 ct2!378) lambda!456590) lt!2612297)))

(declare-fun bs!1919330 () Bool)

(assert (= bs!1919330 d!2280610))

(assert (=> bs!1919330 m!8012350))

(assert (=> bs!1919330 m!8012350))

(declare-fun m!8012464 () Bool)

(assert (=> bs!1919330 m!8012464))

(declare-fun m!8012466 () Bool)

(assert (=> bs!1919330 m!8012466))

(declare-fun m!8012468 () Bool)

(assert (=> bs!1919330 m!8012468))

(assert (=> b!7351414 d!2280610))

(declare-fun d!2280612 () Bool)

(assert (=> d!2280612 (forall!17992 (++!16988 (exprs!8610 cWitness!61) (exprs!8610 ct2!378)) lambda!456590)))

(declare-fun lt!2612298 () Unit!165293)

(assert (=> d!2280612 (= lt!2612298 (choose!57185 (exprs!8610 cWitness!61) (exprs!8610 ct2!378) lambda!456590))))

(assert (=> d!2280612 (forall!17992 (exprs!8610 cWitness!61) lambda!456590)))

(assert (=> d!2280612 (= (lemmaConcatPreservesForall!1845 (exprs!8610 cWitness!61) (exprs!8610 ct2!378) lambda!456590) lt!2612298)))

(declare-fun bs!1919331 () Bool)

(assert (= bs!1919331 d!2280612))

(assert (=> bs!1919331 m!8012364))

(assert (=> bs!1919331 m!8012364))

(declare-fun m!8012470 () Bool)

(assert (=> bs!1919331 m!8012470))

(declare-fun m!8012472 () Bool)

(assert (=> bs!1919331 m!8012472))

(assert (=> bs!1919331 m!8012368))

(assert (=> b!7351405 d!2280612))

(declare-fun b!7351532 () Bool)

(declare-fun res!2968817 () Bool)

(declare-fun e!4401778 () Bool)

(assert (=> b!7351532 (=> (not res!2968817) (not e!4401778))))

(declare-fun lt!2612299 () List!71666)

(assert (=> b!7351532 (= res!2968817 (= (size!42055 lt!2612299) (+ (size!42055 lt!2612260) (size!42055 (exprs!8610 ct2!378)))))))

(declare-fun b!7351530 () Bool)

(declare-fun e!4401777 () List!71666)

(assert (=> b!7351530 (= e!4401777 (exprs!8610 ct2!378))))

(declare-fun b!7351533 () Bool)

(assert (=> b!7351533 (= e!4401778 (or (not (= (exprs!8610 ct2!378) Nil!71542)) (= lt!2612299 lt!2612260)))))

(declare-fun b!7351531 () Bool)

(assert (=> b!7351531 (= e!4401777 (Cons!71542 (h!77990 lt!2612260) (++!16988 (t!386087 lt!2612260) (exprs!8610 ct2!378))))))

(declare-fun d!2280614 () Bool)

(assert (=> d!2280614 e!4401778))

(declare-fun res!2968818 () Bool)

(assert (=> d!2280614 (=> (not res!2968818) (not e!4401778))))

(assert (=> d!2280614 (= res!2968818 (= (content!15076 lt!2612299) (set.union (content!15076 lt!2612260) (content!15076 (exprs!8610 ct2!378)))))))

(assert (=> d!2280614 (= lt!2612299 e!4401777)))

(declare-fun c!1365803 () Bool)

(assert (=> d!2280614 (= c!1365803 (is-Nil!71542 lt!2612260))))

(assert (=> d!2280614 (= (++!16988 lt!2612260 (exprs!8610 ct2!378)) lt!2612299)))

(assert (= (and d!2280614 c!1365803) b!7351530))

(assert (= (and d!2280614 (not c!1365803)) b!7351531))

(assert (= (and d!2280614 res!2968818) b!7351532))

(assert (= (and b!7351532 res!2968817) b!7351533))

(declare-fun m!8012474 () Bool)

(assert (=> b!7351532 m!8012474))

(declare-fun m!8012476 () Bool)

(assert (=> b!7351532 m!8012476))

(assert (=> b!7351532 m!8012454))

(declare-fun m!8012478 () Bool)

(assert (=> b!7351531 m!8012478))

(declare-fun m!8012480 () Bool)

(assert (=> d!2280614 m!8012480))

(declare-fun m!8012482 () Bool)

(assert (=> d!2280614 m!8012482))

(assert (=> d!2280614 m!8012462))

(assert (=> b!7351405 d!2280614))

(declare-fun b!7351534 () Bool)

(declare-fun e!4401780 () (Set Context!16220))

(declare-fun call!672503 () (Set Context!16220))

(assert (=> b!7351534 (= e!4401780 call!672503)))

(declare-fun d!2280616 () Bool)

(declare-fun c!1365806 () Bool)

(assert (=> d!2280616 (= c!1365806 (and (is-ElementMatch!19170 (regOne!38852 r1!2370)) (= (c!1365778 (regOne!38852 r1!2370)) c!10362)))))

(declare-fun e!4401783 () (Set Context!16220))

(assert (=> d!2280616 (= (derivationStepZipperDown!2996 (regOne!38852 r1!2370) (Context!16221 (++!16988 lt!2612260 (exprs!8610 ct2!378))) c!10362) e!4401783)))

(declare-fun b!7351535 () Bool)

(declare-fun e!4401782 () (Set Context!16220))

(declare-fun e!4401781 () (Set Context!16220))

(assert (=> b!7351535 (= e!4401782 e!4401781)))

(declare-fun c!1365804 () Bool)

(assert (=> b!7351535 (= c!1365804 (is-Concat!28015 (regOne!38852 r1!2370)))))

(declare-fun b!7351536 () Bool)

(assert (=> b!7351536 (= e!4401780 (as set.empty (Set Context!16220)))))

(declare-fun b!7351537 () Bool)

(assert (=> b!7351537 (= e!4401783 (set.insert (Context!16221 (++!16988 lt!2612260 (exprs!8610 ct2!378))) (as set.empty (Set Context!16220))))))

(declare-fun bm!672493 () Bool)

(declare-fun call!672498 () (Set Context!16220))

(declare-fun call!672499 () (Set Context!16220))

(assert (=> bm!672493 (= call!672498 call!672499)))

(declare-fun b!7351538 () Bool)

(declare-fun c!1365805 () Bool)

(assert (=> b!7351538 (= c!1365805 (is-Star!19170 (regOne!38852 r1!2370)))))

(assert (=> b!7351538 (= e!4401781 e!4401780)))

(declare-fun b!7351539 () Bool)

(declare-fun call!672500 () (Set Context!16220))

(assert (=> b!7351539 (= e!4401782 (set.union call!672500 call!672498))))

(declare-fun bm!672494 () Bool)

(declare-fun call!672501 () List!71666)

(declare-fun call!672502 () List!71666)

(assert (=> bm!672494 (= call!672501 call!672502)))

(declare-fun b!7351540 () Bool)

(declare-fun c!1365807 () Bool)

(declare-fun e!4401784 () Bool)

(assert (=> b!7351540 (= c!1365807 e!4401784)))

(declare-fun res!2968819 () Bool)

(assert (=> b!7351540 (=> (not res!2968819) (not e!4401784))))

(assert (=> b!7351540 (= res!2968819 (is-Concat!28015 (regOne!38852 r1!2370)))))

(declare-fun e!4401779 () (Set Context!16220))

(assert (=> b!7351540 (= e!4401779 e!4401782)))

(declare-fun c!1365808 () Bool)

(declare-fun bm!672495 () Bool)

(assert (=> bm!672495 (= call!672499 (derivationStepZipperDown!2996 (ite c!1365808 (regTwo!38853 (regOne!38852 r1!2370)) (ite c!1365807 (regTwo!38852 (regOne!38852 r1!2370)) (ite c!1365804 (regOne!38852 (regOne!38852 r1!2370)) (reg!19499 (regOne!38852 r1!2370))))) (ite (or c!1365808 c!1365807) (Context!16221 (++!16988 lt!2612260 (exprs!8610 ct2!378))) (Context!16221 call!672501)) c!10362))))

(declare-fun b!7351541 () Bool)

(assert (=> b!7351541 (= e!4401781 call!672503)))

(declare-fun b!7351542 () Bool)

(assert (=> b!7351542 (= e!4401783 e!4401779)))

(assert (=> b!7351542 (= c!1365808 (is-Union!19170 (regOne!38852 r1!2370)))))

(declare-fun b!7351543 () Bool)

(assert (=> b!7351543 (= e!4401779 (set.union call!672500 call!672499))))

(declare-fun bm!672496 () Bool)

(assert (=> bm!672496 (= call!672503 call!672498)))

(declare-fun bm!672497 () Bool)

(assert (=> bm!672497 (= call!672502 ($colon$colon!3168 (exprs!8610 (Context!16221 (++!16988 lt!2612260 (exprs!8610 ct2!378)))) (ite (or c!1365807 c!1365804) (regTwo!38852 (regOne!38852 r1!2370)) (regOne!38852 r1!2370))))))

(declare-fun bm!672498 () Bool)

(assert (=> bm!672498 (= call!672500 (derivationStepZipperDown!2996 (ite c!1365808 (regOne!38853 (regOne!38852 r1!2370)) (regOne!38852 (regOne!38852 r1!2370))) (ite c!1365808 (Context!16221 (++!16988 lt!2612260 (exprs!8610 ct2!378))) (Context!16221 call!672502)) c!10362))))

(declare-fun b!7351544 () Bool)

(assert (=> b!7351544 (= e!4401784 (nullable!8261 (regOne!38852 (regOne!38852 r1!2370))))))

(assert (= (and d!2280616 c!1365806) b!7351537))

(assert (= (and d!2280616 (not c!1365806)) b!7351542))

(assert (= (and b!7351542 c!1365808) b!7351543))

(assert (= (and b!7351542 (not c!1365808)) b!7351540))

(assert (= (and b!7351540 res!2968819) b!7351544))

(assert (= (and b!7351540 c!1365807) b!7351539))

(assert (= (and b!7351540 (not c!1365807)) b!7351535))

(assert (= (and b!7351535 c!1365804) b!7351541))

(assert (= (and b!7351535 (not c!1365804)) b!7351538))

(assert (= (and b!7351538 c!1365805) b!7351534))

(assert (= (and b!7351538 (not c!1365805)) b!7351536))

(assert (= (or b!7351541 b!7351534) bm!672494))

(assert (= (or b!7351541 b!7351534) bm!672496))

(assert (= (or b!7351539 bm!672496) bm!672493))

(assert (= (or b!7351539 bm!672494) bm!672497))

(assert (= (or b!7351543 bm!672493) bm!672495))

(assert (= (or b!7351543 b!7351539) bm!672498))

(declare-fun m!8012484 () Bool)

(assert (=> b!7351544 m!8012484))

(declare-fun m!8012486 () Bool)

(assert (=> b!7351537 m!8012486))

(declare-fun m!8012488 () Bool)

(assert (=> bm!672495 m!8012488))

(declare-fun m!8012490 () Bool)

(assert (=> bm!672498 m!8012490))

(declare-fun m!8012492 () Bool)

(assert (=> bm!672497 m!8012492))

(assert (=> b!7351405 d!2280616))

(declare-fun b!7351547 () Bool)

(declare-fun res!2968820 () Bool)

(declare-fun e!4401786 () Bool)

(assert (=> b!7351547 (=> (not res!2968820) (not e!4401786))))

(declare-fun lt!2612304 () List!71666)

(assert (=> b!7351547 (= res!2968820 (= (size!42055 lt!2612304) (+ (size!42055 (exprs!8610 cWitness!61)) (size!42055 (exprs!8610 ct2!378)))))))

(declare-fun b!7351545 () Bool)

(declare-fun e!4401785 () List!71666)

(assert (=> b!7351545 (= e!4401785 (exprs!8610 ct2!378))))

(declare-fun b!7351548 () Bool)

(assert (=> b!7351548 (= e!4401786 (or (not (= (exprs!8610 ct2!378) Nil!71542)) (= lt!2612304 (exprs!8610 cWitness!61))))))

(declare-fun b!7351546 () Bool)

(assert (=> b!7351546 (= e!4401785 (Cons!71542 (h!77990 (exprs!8610 cWitness!61)) (++!16988 (t!386087 (exprs!8610 cWitness!61)) (exprs!8610 ct2!378))))))

(declare-fun d!2280618 () Bool)

(assert (=> d!2280618 e!4401786))

(declare-fun res!2968821 () Bool)

(assert (=> d!2280618 (=> (not res!2968821) (not e!4401786))))

(assert (=> d!2280618 (= res!2968821 (= (content!15076 lt!2612304) (set.union (content!15076 (exprs!8610 cWitness!61)) (content!15076 (exprs!8610 ct2!378)))))))

(assert (=> d!2280618 (= lt!2612304 e!4401785)))

(declare-fun c!1365810 () Bool)

(assert (=> d!2280618 (= c!1365810 (is-Nil!71542 (exprs!8610 cWitness!61)))))

(assert (=> d!2280618 (= (++!16988 (exprs!8610 cWitness!61) (exprs!8610 ct2!378)) lt!2612304)))

(assert (= (and d!2280618 c!1365810) b!7351545))

(assert (= (and d!2280618 (not c!1365810)) b!7351546))

(assert (= (and d!2280618 res!2968821) b!7351547))

(assert (= (and b!7351547 res!2968820) b!7351548))

(declare-fun m!8012494 () Bool)

(assert (=> b!7351547 m!8012494))

(declare-fun m!8012496 () Bool)

(assert (=> b!7351547 m!8012496))

(assert (=> b!7351547 m!8012454))

(declare-fun m!8012498 () Bool)

(assert (=> b!7351546 m!8012498))

(declare-fun m!8012500 () Bool)

(assert (=> d!2280618 m!8012500))

(declare-fun m!8012502 () Bool)

(assert (=> d!2280618 m!8012502))

(assert (=> d!2280618 m!8012462))

(assert (=> b!7351405 d!2280618))

(declare-fun d!2280620 () Bool)

(declare-fun res!2968826 () Bool)

(declare-fun e!4401791 () Bool)

(assert (=> d!2280620 (=> res!2968826 e!4401791)))

(assert (=> d!2280620 (= res!2968826 (is-Nil!71542 (exprs!8610 cWitness!61)))))

(assert (=> d!2280620 (= (forall!17992 (exprs!8610 cWitness!61) lambda!456590) e!4401791)))

(declare-fun b!7351553 () Bool)

(declare-fun e!4401792 () Bool)

(assert (=> b!7351553 (= e!4401791 e!4401792)))

(declare-fun res!2968827 () Bool)

(assert (=> b!7351553 (=> (not res!2968827) (not e!4401792))))

(declare-fun dynLambda!29495 (Int Regex!19170) Bool)

(assert (=> b!7351553 (= res!2968827 (dynLambda!29495 lambda!456590 (h!77990 (exprs!8610 cWitness!61))))))

(declare-fun b!7351554 () Bool)

(assert (=> b!7351554 (= e!4401792 (forall!17992 (t!386087 (exprs!8610 cWitness!61)) lambda!456590))))

(assert (= (and d!2280620 (not res!2968826)) b!7351553))

(assert (= (and b!7351553 res!2968827) b!7351554))

(declare-fun b_lambda!284133 () Bool)

(assert (=> (not b_lambda!284133) (not b!7351553)))

(declare-fun m!8012504 () Bool)

(assert (=> b!7351553 m!8012504))

(declare-fun m!8012506 () Bool)

(assert (=> b!7351554 m!8012506))

(assert (=> b!7351405 d!2280620))

(declare-fun bs!1919334 () Bool)

(declare-fun d!2280622 () Bool)

(assert (= bs!1919334 (and d!2280622 b!7351414)))

(declare-fun lambda!456609 () Int)

(assert (=> bs!1919334 (= lambda!456609 lambda!456590)))

(assert (=> d!2280622 (set.member (Context!16221 (++!16988 (exprs!8610 cWitness!61) (exprs!8610 ct2!378))) (derivationStepZipperDown!2996 (regOne!38852 r1!2370) (Context!16221 (++!16988 (exprs!8610 lt!2612267) (exprs!8610 ct2!378))) c!10362))))

(declare-fun lt!2612318 () Unit!165293)

(assert (=> d!2280622 (= lt!2612318 (lemmaConcatPreservesForall!1845 (exprs!8610 lt!2612267) (exprs!8610 ct2!378) lambda!456609))))

(declare-fun lt!2612317 () Unit!165293)

(assert (=> d!2280622 (= lt!2612317 (lemmaConcatPreservesForall!1845 (exprs!8610 cWitness!61) (exprs!8610 ct2!378) lambda!456609))))

(declare-fun lt!2612316 () Unit!165293)

(declare-fun choose!57186 (Regex!19170 Context!16220 Context!16220 Context!16220 C!38614) Unit!165293)

(assert (=> d!2280622 (= lt!2612316 (choose!57186 (regOne!38852 r1!2370) lt!2612267 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2280622 (validRegex!9766 (regOne!38852 r1!2370))))

(assert (=> d!2280622 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!91 (regOne!38852 r1!2370) lt!2612267 ct2!378 cWitness!61 c!10362) lt!2612316)))

(declare-fun bs!1919335 () Bool)

(assert (= bs!1919335 d!2280622))

(declare-fun m!8012522 () Bool)

(assert (=> bs!1919335 m!8012522))

(declare-fun m!8012524 () Bool)

(assert (=> bs!1919335 m!8012524))

(declare-fun m!8012526 () Bool)

(assert (=> bs!1919335 m!8012526))

(declare-fun m!8012528 () Bool)

(assert (=> bs!1919335 m!8012528))

(declare-fun m!8012530 () Bool)

(assert (=> bs!1919335 m!8012530))

(declare-fun m!8012532 () Bool)

(assert (=> bs!1919335 m!8012532))

(declare-fun m!8012534 () Bool)

(assert (=> bs!1919335 m!8012534))

(assert (=> bs!1919335 m!8012364))

(assert (=> b!7351405 d!2280622))

(declare-fun d!2280626 () Bool)

(assert (=> d!2280626 (forall!17992 (++!16988 lt!2612260 (exprs!8610 ct2!378)) lambda!456590)))

(declare-fun lt!2612319 () Unit!165293)

(assert (=> d!2280626 (= lt!2612319 (choose!57185 lt!2612260 (exprs!8610 ct2!378) lambda!456590))))

(assert (=> d!2280626 (forall!17992 lt!2612260 lambda!456590)))

(assert (=> d!2280626 (= (lemmaConcatPreservesForall!1845 lt!2612260 (exprs!8610 ct2!378) lambda!456590) lt!2612319)))

(declare-fun bs!1919336 () Bool)

(assert (= bs!1919336 d!2280626))

(assert (=> bs!1919336 m!8012374))

(assert (=> bs!1919336 m!8012374))

(declare-fun m!8012536 () Bool)

(assert (=> bs!1919336 m!8012536))

(declare-fun m!8012538 () Bool)

(assert (=> bs!1919336 m!8012538))

(declare-fun m!8012540 () Bool)

(assert (=> bs!1919336 m!8012540))

(assert (=> b!7351405 d!2280626))

(declare-fun d!2280628 () Bool)

(declare-fun nullableFct!3296 (Regex!19170) Bool)

(assert (=> d!2280628 (= (nullable!8261 (regOne!38852 r1!2370)) (nullableFct!3296 (regOne!38852 r1!2370)))))

(declare-fun bs!1919337 () Bool)

(assert (= bs!1919337 d!2280628))

(declare-fun m!8012542 () Bool)

(assert (=> bs!1919337 m!8012542))

(assert (=> b!7351410 d!2280628))

(declare-fun b!7351573 () Bool)

(declare-fun e!4401807 () Bool)

(declare-fun e!4401811 () Bool)

(assert (=> b!7351573 (= e!4401807 e!4401811)))

(declare-fun c!1365816 () Bool)

(assert (=> b!7351573 (= c!1365816 (is-Union!19170 (regTwo!38852 r1!2370)))))

(declare-fun call!672512 () Bool)

(declare-fun bm!672505 () Bool)

(declare-fun c!1365817 () Bool)

(assert (=> bm!672505 (= call!672512 (validRegex!9766 (ite c!1365817 (reg!19499 (regTwo!38852 r1!2370)) (ite c!1365816 (regOne!38853 (regTwo!38852 r1!2370)) (regTwo!38852 (regTwo!38852 r1!2370))))))))

(declare-fun d!2280630 () Bool)

(declare-fun res!2968840 () Bool)

(declare-fun e!4401812 () Bool)

(assert (=> d!2280630 (=> res!2968840 e!4401812)))

(assert (=> d!2280630 (= res!2968840 (is-ElementMatch!19170 (regTwo!38852 r1!2370)))))

(assert (=> d!2280630 (= (validRegex!9766 (regTwo!38852 r1!2370)) e!4401812)))

(declare-fun b!7351574 () Bool)

(declare-fun e!4401813 () Bool)

(declare-fun call!672510 () Bool)

(assert (=> b!7351574 (= e!4401813 call!672510)))

(declare-fun bm!672506 () Bool)

(declare-fun call!672511 () Bool)

(assert (=> bm!672506 (= call!672511 (validRegex!9766 (ite c!1365816 (regTwo!38853 (regTwo!38852 r1!2370)) (regOne!38852 (regTwo!38852 r1!2370)))))))

(declare-fun b!7351575 () Bool)

(declare-fun e!4401809 () Bool)

(assert (=> b!7351575 (= e!4401807 e!4401809)))

(declare-fun res!2968841 () Bool)

(assert (=> b!7351575 (= res!2968841 (not (nullable!8261 (reg!19499 (regTwo!38852 r1!2370)))))))

(assert (=> b!7351575 (=> (not res!2968841) (not e!4401809))))

(declare-fun b!7351576 () Bool)

(declare-fun e!4401810 () Bool)

(assert (=> b!7351576 (= e!4401810 call!672511)))

(declare-fun b!7351577 () Bool)

(declare-fun res!2968839 () Bool)

(declare-fun e!4401808 () Bool)

(assert (=> b!7351577 (=> res!2968839 e!4401808)))

(assert (=> b!7351577 (= res!2968839 (not (is-Concat!28015 (regTwo!38852 r1!2370))))))

(assert (=> b!7351577 (= e!4401811 e!4401808)))

(declare-fun b!7351578 () Bool)

(assert (=> b!7351578 (= e!4401809 call!672512)))

(declare-fun bm!672507 () Bool)

(assert (=> bm!672507 (= call!672510 call!672512)))

(declare-fun b!7351579 () Bool)

(assert (=> b!7351579 (= e!4401812 e!4401807)))

(assert (=> b!7351579 (= c!1365817 (is-Star!19170 (regTwo!38852 r1!2370)))))

(declare-fun b!7351580 () Bool)

(assert (=> b!7351580 (= e!4401808 e!4401813)))

(declare-fun res!2968842 () Bool)

(assert (=> b!7351580 (=> (not res!2968842) (not e!4401813))))

(assert (=> b!7351580 (= res!2968842 call!672511)))

(declare-fun b!7351581 () Bool)

(declare-fun res!2968838 () Bool)

(assert (=> b!7351581 (=> (not res!2968838) (not e!4401810))))

(assert (=> b!7351581 (= res!2968838 call!672510)))

(assert (=> b!7351581 (= e!4401811 e!4401810)))

(assert (= (and d!2280630 (not res!2968840)) b!7351579))

(assert (= (and b!7351579 c!1365817) b!7351575))

(assert (= (and b!7351579 (not c!1365817)) b!7351573))

(assert (= (and b!7351575 res!2968841) b!7351578))

(assert (= (and b!7351573 c!1365816) b!7351581))

(assert (= (and b!7351573 (not c!1365816)) b!7351577))

(assert (= (and b!7351581 res!2968838) b!7351576))

(assert (= (and b!7351577 (not res!2968839)) b!7351580))

(assert (= (and b!7351580 res!2968842) b!7351574))

(assert (= (or b!7351581 b!7351574) bm!672507))

(assert (= (or b!7351576 b!7351580) bm!672506))

(assert (= (or b!7351578 bm!672507) bm!672505))

(declare-fun m!8012548 () Bool)

(assert (=> bm!672505 m!8012548))

(declare-fun m!8012550 () Bool)

(assert (=> bm!672506 m!8012550))

(declare-fun m!8012552 () Bool)

(assert (=> b!7351575 m!8012552))

(assert (=> b!7351415 d!2280630))

(declare-fun b!7351582 () Bool)

(declare-fun e!4401814 () Bool)

(declare-fun e!4401818 () Bool)

(assert (=> b!7351582 (= e!4401814 e!4401818)))

(declare-fun c!1365818 () Bool)

(assert (=> b!7351582 (= c!1365818 (is-Union!19170 r1!2370))))

(declare-fun bm!672508 () Bool)

(declare-fun c!1365819 () Bool)

(declare-fun call!672515 () Bool)

(assert (=> bm!672508 (= call!672515 (validRegex!9766 (ite c!1365819 (reg!19499 r1!2370) (ite c!1365818 (regOne!38853 r1!2370) (regTwo!38852 r1!2370)))))))

(declare-fun d!2280634 () Bool)

(declare-fun res!2968845 () Bool)

(declare-fun e!4401819 () Bool)

(assert (=> d!2280634 (=> res!2968845 e!4401819)))

(assert (=> d!2280634 (= res!2968845 (is-ElementMatch!19170 r1!2370))))

(assert (=> d!2280634 (= (validRegex!9766 r1!2370) e!4401819)))

(declare-fun b!7351583 () Bool)

(declare-fun e!4401820 () Bool)

(declare-fun call!672513 () Bool)

(assert (=> b!7351583 (= e!4401820 call!672513)))

(declare-fun bm!672509 () Bool)

(declare-fun call!672514 () Bool)

(assert (=> bm!672509 (= call!672514 (validRegex!9766 (ite c!1365818 (regTwo!38853 r1!2370) (regOne!38852 r1!2370))))))

(declare-fun b!7351584 () Bool)

(declare-fun e!4401816 () Bool)

(assert (=> b!7351584 (= e!4401814 e!4401816)))

(declare-fun res!2968846 () Bool)

(assert (=> b!7351584 (= res!2968846 (not (nullable!8261 (reg!19499 r1!2370))))))

(assert (=> b!7351584 (=> (not res!2968846) (not e!4401816))))

(declare-fun b!7351585 () Bool)

(declare-fun e!4401817 () Bool)

(assert (=> b!7351585 (= e!4401817 call!672514)))

(declare-fun b!7351586 () Bool)

(declare-fun res!2968844 () Bool)

(declare-fun e!4401815 () Bool)

(assert (=> b!7351586 (=> res!2968844 e!4401815)))

(assert (=> b!7351586 (= res!2968844 (not (is-Concat!28015 r1!2370)))))

(assert (=> b!7351586 (= e!4401818 e!4401815)))

(declare-fun b!7351587 () Bool)

(assert (=> b!7351587 (= e!4401816 call!672515)))

(declare-fun bm!672510 () Bool)

(assert (=> bm!672510 (= call!672513 call!672515)))

(declare-fun b!7351588 () Bool)

(assert (=> b!7351588 (= e!4401819 e!4401814)))

(assert (=> b!7351588 (= c!1365819 (is-Star!19170 r1!2370))))

(declare-fun b!7351589 () Bool)

(assert (=> b!7351589 (= e!4401815 e!4401820)))

(declare-fun res!2968847 () Bool)

(assert (=> b!7351589 (=> (not res!2968847) (not e!4401820))))

(assert (=> b!7351589 (= res!2968847 call!672514)))

(declare-fun b!7351590 () Bool)

(declare-fun res!2968843 () Bool)

(assert (=> b!7351590 (=> (not res!2968843) (not e!4401817))))

(assert (=> b!7351590 (= res!2968843 call!672513)))

(assert (=> b!7351590 (= e!4401818 e!4401817)))

(assert (= (and d!2280634 (not res!2968845)) b!7351588))

(assert (= (and b!7351588 c!1365819) b!7351584))

(assert (= (and b!7351588 (not c!1365819)) b!7351582))

(assert (= (and b!7351584 res!2968846) b!7351587))

(assert (= (and b!7351582 c!1365818) b!7351590))

(assert (= (and b!7351582 (not c!1365818)) b!7351586))

(assert (= (and b!7351590 res!2968843) b!7351585))

(assert (= (and b!7351586 (not res!2968844)) b!7351589))

(assert (= (and b!7351589 res!2968847) b!7351583))

(assert (= (or b!7351590 b!7351583) bm!672510))

(assert (= (or b!7351585 b!7351589) bm!672509))

(assert (= (or b!7351587 bm!672510) bm!672508))

(declare-fun m!8012554 () Bool)

(assert (=> bm!672508 m!8012554))

(declare-fun m!8012556 () Bool)

(assert (=> bm!672509 m!8012556))

(declare-fun m!8012558 () Bool)

(assert (=> b!7351584 m!8012558))

(assert (=> start!717886 d!2280634))

(declare-fun bs!1919339 () Bool)

(declare-fun d!2280636 () Bool)

(assert (= bs!1919339 (and d!2280636 b!7351414)))

(declare-fun lambda!456612 () Int)

(assert (=> bs!1919339 (= lambda!456612 lambda!456590)))

(declare-fun bs!1919340 () Bool)

(assert (= bs!1919340 (and d!2280636 d!2280622)))

(assert (=> bs!1919340 (= lambda!456612 lambda!456609)))

(assert (=> d!2280636 (= (inv!91266 cWitness!61) (forall!17992 (exprs!8610 cWitness!61) lambda!456612))))

(declare-fun bs!1919341 () Bool)

(assert (= bs!1919341 d!2280636))

(declare-fun m!8012560 () Bool)

(assert (=> bs!1919341 m!8012560))

(assert (=> start!717886 d!2280636))

(declare-fun bs!1919342 () Bool)

(declare-fun d!2280638 () Bool)

(assert (= bs!1919342 (and d!2280638 b!7351414)))

(declare-fun lambda!456613 () Int)

(assert (=> bs!1919342 (= lambda!456613 lambda!456590)))

(declare-fun bs!1919343 () Bool)

(assert (= bs!1919343 (and d!2280638 d!2280622)))

(assert (=> bs!1919343 (= lambda!456613 lambda!456609)))

(declare-fun bs!1919344 () Bool)

(assert (= bs!1919344 (and d!2280638 d!2280636)))

(assert (=> bs!1919344 (= lambda!456613 lambda!456612)))

(assert (=> d!2280638 (= (inv!91266 ct1!282) (forall!17992 (exprs!8610 ct1!282) lambda!456613))))

(declare-fun bs!1919345 () Bool)

(assert (= bs!1919345 d!2280638))

(declare-fun m!8012562 () Bool)

(assert (=> bs!1919345 m!8012562))

(assert (=> start!717886 d!2280638))

(declare-fun bs!1919346 () Bool)

(declare-fun d!2280640 () Bool)

(assert (= bs!1919346 (and d!2280640 b!7351414)))

(declare-fun lambda!456614 () Int)

(assert (=> bs!1919346 (= lambda!456614 lambda!456590)))

(declare-fun bs!1919347 () Bool)

(assert (= bs!1919347 (and d!2280640 d!2280622)))

(assert (=> bs!1919347 (= lambda!456614 lambda!456609)))

(declare-fun bs!1919348 () Bool)

(assert (= bs!1919348 (and d!2280640 d!2280636)))

(assert (=> bs!1919348 (= lambda!456614 lambda!456612)))

(declare-fun bs!1919349 () Bool)

(assert (= bs!1919349 (and d!2280640 d!2280638)))

(assert (=> bs!1919349 (= lambda!456614 lambda!456613)))

(assert (=> d!2280640 (= (inv!91266 ct2!378) (forall!17992 (exprs!8610 ct2!378) lambda!456614))))

(declare-fun bs!1919350 () Bool)

(assert (= bs!1919350 d!2280640))

(declare-fun m!8012564 () Bool)

(assert (=> bs!1919350 m!8012564))

(assert (=> start!717886 d!2280640))

(declare-fun d!2280642 () Bool)

(declare-fun res!2968852 () Bool)

(declare-fun e!4401825 () Bool)

(assert (=> d!2280642 (=> res!2968852 e!4401825)))

(assert (=> d!2280642 (= res!2968852 (is-Nil!71542 (exprs!8610 ct2!378)))))

(assert (=> d!2280642 (= (forall!17992 (exprs!8610 ct2!378) lambda!456590) e!4401825)))

(declare-fun b!7351599 () Bool)

(declare-fun e!4401826 () Bool)

(assert (=> b!7351599 (= e!4401825 e!4401826)))

(declare-fun res!2968853 () Bool)

(assert (=> b!7351599 (=> (not res!2968853) (not e!4401826))))

(assert (=> b!7351599 (= res!2968853 (dynLambda!29495 lambda!456590 (h!77990 (exprs!8610 ct2!378))))))

(declare-fun b!7351600 () Bool)

(assert (=> b!7351600 (= e!4401826 (forall!17992 (t!386087 (exprs!8610 ct2!378)) lambda!456590))))

(assert (= (and d!2280642 (not res!2968852)) b!7351599))

(assert (= (and b!7351599 res!2968853) b!7351600))

(declare-fun b_lambda!284135 () Bool)

(assert (=> (not b_lambda!284135) (not b!7351599)))

(declare-fun m!8012566 () Bool)

(assert (=> b!7351599 m!8012566))

(declare-fun m!8012568 () Bool)

(assert (=> b!7351600 m!8012568))

(assert (=> b!7351411 d!2280642))

(declare-fun b!7351601 () Bool)

(declare-fun e!4401828 () (Set Context!16220))

(declare-fun call!672521 () (Set Context!16220))

(assert (=> b!7351601 (= e!4401828 call!672521)))

(declare-fun d!2280644 () Bool)

(declare-fun c!1365824 () Bool)

(assert (=> d!2280644 (= c!1365824 (and (is-ElementMatch!19170 (regOne!38852 r1!2370)) (= (c!1365778 (regOne!38852 r1!2370)) c!10362)))))

(declare-fun e!4401831 () (Set Context!16220))

(assert (=> d!2280644 (= (derivationStepZipperDown!2996 (regOne!38852 r1!2370) lt!2612267 c!10362) e!4401831)))

(declare-fun b!7351602 () Bool)

(declare-fun e!4401830 () (Set Context!16220))

(declare-fun e!4401829 () (Set Context!16220))

(assert (=> b!7351602 (= e!4401830 e!4401829)))

(declare-fun c!1365822 () Bool)

(assert (=> b!7351602 (= c!1365822 (is-Concat!28015 (regOne!38852 r1!2370)))))

(declare-fun b!7351603 () Bool)

(assert (=> b!7351603 (= e!4401828 (as set.empty (Set Context!16220)))))

(declare-fun b!7351604 () Bool)

(assert (=> b!7351604 (= e!4401831 (set.insert lt!2612267 (as set.empty (Set Context!16220))))))

(declare-fun bm!672511 () Bool)

(declare-fun call!672516 () (Set Context!16220))

(declare-fun call!672517 () (Set Context!16220))

(assert (=> bm!672511 (= call!672516 call!672517)))

(declare-fun b!7351605 () Bool)

(declare-fun c!1365823 () Bool)

(assert (=> b!7351605 (= c!1365823 (is-Star!19170 (regOne!38852 r1!2370)))))

(assert (=> b!7351605 (= e!4401829 e!4401828)))

(declare-fun b!7351606 () Bool)

(declare-fun call!672518 () (Set Context!16220))

(assert (=> b!7351606 (= e!4401830 (set.union call!672518 call!672516))))

(declare-fun bm!672512 () Bool)

(declare-fun call!672519 () List!71666)

(declare-fun call!672520 () List!71666)

(assert (=> bm!672512 (= call!672519 call!672520)))

(declare-fun b!7351607 () Bool)

(declare-fun c!1365825 () Bool)

(declare-fun e!4401832 () Bool)

(assert (=> b!7351607 (= c!1365825 e!4401832)))

(declare-fun res!2968854 () Bool)

(assert (=> b!7351607 (=> (not res!2968854) (not e!4401832))))

(assert (=> b!7351607 (= res!2968854 (is-Concat!28015 (regOne!38852 r1!2370)))))

(declare-fun e!4401827 () (Set Context!16220))

(assert (=> b!7351607 (= e!4401827 e!4401830)))

(declare-fun c!1365826 () Bool)

(declare-fun bm!672513 () Bool)

(assert (=> bm!672513 (= call!672517 (derivationStepZipperDown!2996 (ite c!1365826 (regTwo!38853 (regOne!38852 r1!2370)) (ite c!1365825 (regTwo!38852 (regOne!38852 r1!2370)) (ite c!1365822 (regOne!38852 (regOne!38852 r1!2370)) (reg!19499 (regOne!38852 r1!2370))))) (ite (or c!1365826 c!1365825) lt!2612267 (Context!16221 call!672519)) c!10362))))

(declare-fun b!7351608 () Bool)

(assert (=> b!7351608 (= e!4401829 call!672521)))

(declare-fun b!7351609 () Bool)

(assert (=> b!7351609 (= e!4401831 e!4401827)))

(assert (=> b!7351609 (= c!1365826 (is-Union!19170 (regOne!38852 r1!2370)))))

(declare-fun b!7351610 () Bool)

(assert (=> b!7351610 (= e!4401827 (set.union call!672518 call!672517))))

(declare-fun bm!672514 () Bool)

(assert (=> bm!672514 (= call!672521 call!672516)))

(declare-fun bm!672515 () Bool)

(assert (=> bm!672515 (= call!672520 ($colon$colon!3168 (exprs!8610 lt!2612267) (ite (or c!1365825 c!1365822) (regTwo!38852 (regOne!38852 r1!2370)) (regOne!38852 r1!2370))))))

(declare-fun bm!672516 () Bool)

(assert (=> bm!672516 (= call!672518 (derivationStepZipperDown!2996 (ite c!1365826 (regOne!38853 (regOne!38852 r1!2370)) (regOne!38852 (regOne!38852 r1!2370))) (ite c!1365826 lt!2612267 (Context!16221 call!672520)) c!10362))))

(declare-fun b!7351611 () Bool)

(assert (=> b!7351611 (= e!4401832 (nullable!8261 (regOne!38852 (regOne!38852 r1!2370))))))

(assert (= (and d!2280644 c!1365824) b!7351604))

(assert (= (and d!2280644 (not c!1365824)) b!7351609))

(assert (= (and b!7351609 c!1365826) b!7351610))

(assert (= (and b!7351609 (not c!1365826)) b!7351607))

(assert (= (and b!7351607 res!2968854) b!7351611))

(assert (= (and b!7351607 c!1365825) b!7351606))

(assert (= (and b!7351607 (not c!1365825)) b!7351602))

(assert (= (and b!7351602 c!1365822) b!7351608))

(assert (= (and b!7351602 (not c!1365822)) b!7351605))

(assert (= (and b!7351605 c!1365823) b!7351601))

(assert (= (and b!7351605 (not c!1365823)) b!7351603))

(assert (= (or b!7351608 b!7351601) bm!672512))

(assert (= (or b!7351608 b!7351601) bm!672514))

(assert (= (or b!7351606 bm!672514) bm!672511))

(assert (= (or b!7351606 bm!672512) bm!672515))

(assert (= (or b!7351610 bm!672511) bm!672513))

(assert (= (or b!7351610 b!7351606) bm!672516))

(assert (=> b!7351611 m!8012484))

(declare-fun m!8012570 () Bool)

(assert (=> b!7351604 m!8012570))

(declare-fun m!8012572 () Bool)

(assert (=> bm!672513 m!8012572))

(declare-fun m!8012574 () Bool)

(assert (=> bm!672516 m!8012574))

(declare-fun m!8012576 () Bool)

(assert (=> bm!672515 m!8012576))

(assert (=> b!7351416 d!2280644))

(declare-fun d!2280646 () Bool)

(assert (=> d!2280646 (= ($colon$colon!3168 (exprs!8610 ct1!282) (regTwo!38852 r1!2370)) (Cons!71542 (regTwo!38852 r1!2370) (exprs!8610 ct1!282)))))

(assert (=> b!7351416 d!2280646))

(declare-fun e!4401837 () Bool)

(assert (=> b!7351413 (= tp!2088043 e!4401837)))

(declare-fun b!7351627 () Bool)

(declare-fun tp!2088082 () Bool)

(declare-fun tp!2088084 () Bool)

(assert (=> b!7351627 (= e!4401837 (and tp!2088082 tp!2088084))))

(declare-fun b!7351629 () Bool)

(declare-fun tp!2088083 () Bool)

(declare-fun tp!2088086 () Bool)

(assert (=> b!7351629 (= e!4401837 (and tp!2088083 tp!2088086))))

(declare-fun b!7351626 () Bool)

(assert (=> b!7351626 (= e!4401837 tp_is_empty!48585)))

(declare-fun b!7351628 () Bool)

(declare-fun tp!2088085 () Bool)

(assert (=> b!7351628 (= e!4401837 tp!2088085)))

(assert (= (and b!7351413 (is-ElementMatch!19170 (regOne!38852 r1!2370))) b!7351626))

(assert (= (and b!7351413 (is-Concat!28015 (regOne!38852 r1!2370))) b!7351627))

(assert (= (and b!7351413 (is-Star!19170 (regOne!38852 r1!2370))) b!7351628))

(assert (= (and b!7351413 (is-Union!19170 (regOne!38852 r1!2370))) b!7351629))

(declare-fun e!4401838 () Bool)

(assert (=> b!7351413 (= tp!2088044 e!4401838)))

(declare-fun b!7351631 () Bool)

(declare-fun tp!2088087 () Bool)

(declare-fun tp!2088089 () Bool)

(assert (=> b!7351631 (= e!4401838 (and tp!2088087 tp!2088089))))

(declare-fun b!7351633 () Bool)

(declare-fun tp!2088088 () Bool)

(declare-fun tp!2088091 () Bool)

(assert (=> b!7351633 (= e!4401838 (and tp!2088088 tp!2088091))))

(declare-fun b!7351630 () Bool)

(assert (=> b!7351630 (= e!4401838 tp_is_empty!48585)))

(declare-fun b!7351632 () Bool)

(declare-fun tp!2088090 () Bool)

(assert (=> b!7351632 (= e!4401838 tp!2088090)))

(assert (= (and b!7351413 (is-ElementMatch!19170 (regTwo!38852 r1!2370))) b!7351630))

(assert (= (and b!7351413 (is-Concat!28015 (regTwo!38852 r1!2370))) b!7351631))

(assert (= (and b!7351413 (is-Star!19170 (regTwo!38852 r1!2370))) b!7351632))

(assert (= (and b!7351413 (is-Union!19170 (regTwo!38852 r1!2370))) b!7351633))

(declare-fun b!7351638 () Bool)

(declare-fun e!4401841 () Bool)

(declare-fun tp!2088096 () Bool)

(declare-fun tp!2088097 () Bool)

(assert (=> b!7351638 (= e!4401841 (and tp!2088096 tp!2088097))))

(assert (=> b!7351418 (= tp!2088042 e!4401841)))

(assert (= (and b!7351418 (is-Cons!71542 (exprs!8610 ct2!378))) b!7351638))

(declare-fun b!7351639 () Bool)

(declare-fun e!4401842 () Bool)

(declare-fun tp!2088098 () Bool)

(declare-fun tp!2088099 () Bool)

(assert (=> b!7351639 (= e!4401842 (and tp!2088098 tp!2088099))))

(assert (=> b!7351407 (= tp!2088040 e!4401842)))

(assert (= (and b!7351407 (is-Cons!71542 (exprs!8610 ct1!282))) b!7351639))

(declare-fun e!4401843 () Bool)

(assert (=> b!7351419 (= tp!2088045 e!4401843)))

(declare-fun b!7351641 () Bool)

(declare-fun tp!2088100 () Bool)

(declare-fun tp!2088102 () Bool)

(assert (=> b!7351641 (= e!4401843 (and tp!2088100 tp!2088102))))

(declare-fun b!7351643 () Bool)

(declare-fun tp!2088101 () Bool)

(declare-fun tp!2088104 () Bool)

(assert (=> b!7351643 (= e!4401843 (and tp!2088101 tp!2088104))))

(declare-fun b!7351640 () Bool)

(assert (=> b!7351640 (= e!4401843 tp_is_empty!48585)))

(declare-fun b!7351642 () Bool)

(declare-fun tp!2088103 () Bool)

(assert (=> b!7351642 (= e!4401843 tp!2088103)))

(assert (= (and b!7351419 (is-ElementMatch!19170 (reg!19499 r1!2370))) b!7351640))

(assert (= (and b!7351419 (is-Concat!28015 (reg!19499 r1!2370))) b!7351641))

(assert (= (and b!7351419 (is-Star!19170 (reg!19499 r1!2370))) b!7351642))

(assert (= (and b!7351419 (is-Union!19170 (reg!19499 r1!2370))) b!7351643))

(declare-fun b!7351644 () Bool)

(declare-fun e!4401844 () Bool)

(declare-fun tp!2088105 () Bool)

(declare-fun tp!2088106 () Bool)

(assert (=> b!7351644 (= e!4401844 (and tp!2088105 tp!2088106))))

(assert (=> b!7351408 (= tp!2088041 e!4401844)))

(assert (= (and b!7351408 (is-Cons!71542 (exprs!8610 cWitness!61))) b!7351644))

(declare-fun e!4401845 () Bool)

(assert (=> b!7351404 (= tp!2088046 e!4401845)))

(declare-fun b!7351646 () Bool)

(declare-fun tp!2088107 () Bool)

(declare-fun tp!2088109 () Bool)

(assert (=> b!7351646 (= e!4401845 (and tp!2088107 tp!2088109))))

(declare-fun b!7351648 () Bool)

(declare-fun tp!2088108 () Bool)

(declare-fun tp!2088111 () Bool)

(assert (=> b!7351648 (= e!4401845 (and tp!2088108 tp!2088111))))

(declare-fun b!7351645 () Bool)

(assert (=> b!7351645 (= e!4401845 tp_is_empty!48585)))

(declare-fun b!7351647 () Bool)

(declare-fun tp!2088110 () Bool)

(assert (=> b!7351647 (= e!4401845 tp!2088110)))

(assert (= (and b!7351404 (is-ElementMatch!19170 (regOne!38853 r1!2370))) b!7351645))

(assert (= (and b!7351404 (is-Concat!28015 (regOne!38853 r1!2370))) b!7351646))

(assert (= (and b!7351404 (is-Star!19170 (regOne!38853 r1!2370))) b!7351647))

(assert (= (and b!7351404 (is-Union!19170 (regOne!38853 r1!2370))) b!7351648))

(declare-fun e!4401846 () Bool)

(assert (=> b!7351404 (= tp!2088047 e!4401846)))

(declare-fun b!7351650 () Bool)

(declare-fun tp!2088112 () Bool)

(declare-fun tp!2088114 () Bool)

(assert (=> b!7351650 (= e!4401846 (and tp!2088112 tp!2088114))))

(declare-fun b!7351652 () Bool)

(declare-fun tp!2088113 () Bool)

(declare-fun tp!2088116 () Bool)

(assert (=> b!7351652 (= e!4401846 (and tp!2088113 tp!2088116))))

(declare-fun b!7351649 () Bool)

(assert (=> b!7351649 (= e!4401846 tp_is_empty!48585)))

(declare-fun b!7351651 () Bool)

(declare-fun tp!2088115 () Bool)

(assert (=> b!7351651 (= e!4401846 tp!2088115)))

(assert (= (and b!7351404 (is-ElementMatch!19170 (regTwo!38853 r1!2370))) b!7351649))

(assert (= (and b!7351404 (is-Concat!28015 (regTwo!38853 r1!2370))) b!7351650))

(assert (= (and b!7351404 (is-Star!19170 (regTwo!38853 r1!2370))) b!7351651))

(assert (= (and b!7351404 (is-Union!19170 (regTwo!38853 r1!2370))) b!7351652))

(declare-fun b_lambda!284137 () Bool)

(assert (= b_lambda!284135 (or b!7351414 b_lambda!284137)))

(declare-fun bs!1919351 () Bool)

(declare-fun d!2280650 () Bool)

(assert (= bs!1919351 (and d!2280650 b!7351414)))

(assert (=> bs!1919351 (= (dynLambda!29495 lambda!456590 (h!77990 (exprs!8610 ct2!378))) (validRegex!9766 (h!77990 (exprs!8610 ct2!378))))))

(declare-fun m!8012592 () Bool)

(assert (=> bs!1919351 m!8012592))

(assert (=> b!7351599 d!2280650))

(declare-fun b_lambda!284139 () Bool)

(assert (= b_lambda!284133 (or b!7351414 b_lambda!284139)))

(declare-fun bs!1919352 () Bool)

(declare-fun d!2280652 () Bool)

(assert (= bs!1919352 (and d!2280652 b!7351414)))

(assert (=> bs!1919352 (= (dynLambda!29495 lambda!456590 (h!77990 (exprs!8610 cWitness!61))) (validRegex!9766 (h!77990 (exprs!8610 cWitness!61))))))

(declare-fun m!8012594 () Bool)

(assert (=> bs!1919352 m!8012594))

(assert (=> b!7351553 d!2280652))

(push 1)

(assert (not d!2280622))

(assert (not b!7351631))

(assert (not b!7351650))

(assert (not b!7351584))

(assert (not d!2280610))

(assert (not d!2280626))

(assert (not b!7351641))

(assert (not bm!672516))

(assert (not b!7351629))

(assert (not b!7351633))

(assert (not b!7351554))

(assert (not bm!672505))

(assert (not bm!672483))

(assert (not b!7351628))

(assert (not bm!672489))

(assert (not bm!672485))

(assert (not b!7351644))

(assert (not bm!672492))

(assert (not d!2280618))

(assert (not bs!1919352))

(assert (not b!7351646))

(assert (not b!7351517))

(assert (not b!7351506))

(assert (not b!7351547))

(assert (not b!7351532))

(assert (not bm!672495))

(assert (not bm!672491))

(assert (not b!7351600))

(assert (not b!7351527))

(assert (not b!7351651))

(assert (not b!7351632))

(assert (not b!7351643))

(assert (not d!2280612))

(assert (not d!2280628))

(assert (not bm!672506))

(assert (not bm!672515))

(assert (not b_lambda!284139))

(assert (not d!2280614))

(assert (not d!2280636))

(assert (not b_lambda!284137))

(assert (not bm!672509))

(assert (not d!2280638))

(assert (not b!7351546))

(assert tp_is_empty!48585)

(assert (not b!7351575))

(assert (not d!2280640))

(assert (not b!7351544))

(assert (not b!7351627))

(assert (not b!7351531))

(assert (not b!7351638))

(assert (not b!7351611))

(assert (not bs!1919351))

(assert (not b!7351652))

(assert (not b!7351642))

(assert (not b!7351647))

(assert (not d!2280608))

(assert (not b!7351639))

(assert (not b!7351648))

(assert (not bm!672498))

(assert (not b!7351528))

(assert (not bm!672508))

(assert (not bm!672497))

(assert (not bm!672513))

(assert (not bm!672486))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

