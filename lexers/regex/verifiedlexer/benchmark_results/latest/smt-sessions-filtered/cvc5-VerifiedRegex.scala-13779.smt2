; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!734366 () Bool)

(assert start!734366)

(declare-fun b!7625382 () Bool)

(assert (=> b!7625382 true))

(assert (=> b!7625382 true))

(declare-fun b!7625380 () Bool)

(declare-fun e!4533740 () Bool)

(declare-fun tp!2226388 () Bool)

(assert (=> b!7625380 (= e!4533740 tp!2226388)))

(declare-fun b!7625381 () Bool)

(declare-fun tp!2226389 () Bool)

(declare-fun tp!2226392 () Bool)

(assert (=> b!7625381 (= e!4533740 (and tp!2226389 tp!2226392))))

(declare-fun e!4533742 () Bool)

(declare-fun e!4533744 () Bool)

(assert (=> b!7625382 (= e!4533742 (not e!4533744))))

(declare-fun res!3053404 () Bool)

(assert (=> b!7625382 (=> res!3053404 e!4533744)))

(declare-datatypes ((C!41030 0))(
  ( (C!41031 (val!30955 Int)) )
))
(declare-datatypes ((Regex!20352 0))(
  ( (ElementMatch!20352 (c!1405073 C!41030)) (Concat!29197 (regOne!41216 Regex!20352) (regTwo!41216 Regex!20352)) (EmptyExpr!20352) (Star!20352 (reg!20681 Regex!20352)) (EmptyLang!20352) (Union!20352 (regOne!41217 Regex!20352) (regTwo!41217 Regex!20352)) )
))
(declare-fun r!14126 () Regex!20352)

(declare-datatypes ((List!73203 0))(
  ( (Nil!73079) (Cons!73079 (h!79527 C!41030) (t!387938 List!73203)) )
))
(declare-fun s!9605 () List!73203)

(declare-fun matchR!9855 (Regex!20352 List!73203) Bool)

(assert (=> b!7625382 (= res!3053404 (not (matchR!9855 r!14126 s!9605)))))

(declare-fun lt!2657813 () Bool)

(declare-fun lambda!468754 () Int)

(declare-fun Exists!4506 (Int) Bool)

(assert (=> b!7625382 (= lt!2657813 (Exists!4506 lambda!468754))))

(declare-datatypes ((tuple2!69262 0))(
  ( (tuple2!69263 (_1!37934 List!73203) (_2!37934 List!73203)) )
))
(declare-datatypes ((Option!17425 0))(
  ( (None!17424) (Some!17424 (v!54559 tuple2!69262)) )
))
(declare-fun isDefined!14041 (Option!17425) Bool)

(declare-fun findConcatSeparation!3455 (Regex!20352 Regex!20352 List!73203 List!73203 List!73203) Option!17425)

(assert (=> b!7625382 (= lt!2657813 (isDefined!14041 (findConcatSeparation!3455 (regOne!41216 r!14126) (regTwo!41216 r!14126) Nil!73079 s!9605 s!9605)))))

(declare-datatypes ((Unit!167632 0))(
  ( (Unit!167633) )
))
(declare-fun lt!2657814 () Unit!167632)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3213 (Regex!20352 Regex!20352 List!73203) Unit!167632)

(assert (=> b!7625382 (= lt!2657814 (lemmaFindConcatSeparationEquivalentToExists!3213 (regOne!41216 r!14126) (regTwo!41216 r!14126) s!9605))))

(declare-fun b!7625383 () Bool)

(declare-fun tp!2226393 () Bool)

(declare-fun tp!2226387 () Bool)

(assert (=> b!7625383 (= e!4533740 (and tp!2226393 tp!2226387))))

(declare-fun res!3053406 () Bool)

(assert (=> start!734366 (=> (not res!3053406) (not e!4533742))))

(declare-fun validRegex!10770 (Regex!20352) Bool)

(assert (=> start!734366 (= res!3053406 (validRegex!10770 r!14126))))

(assert (=> start!734366 e!4533742))

(assert (=> start!734366 e!4533740))

(declare-fun e!4533746 () Bool)

(assert (=> start!734366 e!4533746))

(declare-fun e!4533745 () Bool)

(declare-fun e!4533741 () Bool)

(assert (=> start!734366 (and e!4533745 e!4533741)))

(declare-fun b!7625384 () Bool)

(declare-fun tp_is_empty!51059 () Bool)

(declare-fun tp!2226386 () Bool)

(assert (=> b!7625384 (= e!4533745 (and tp_is_empty!51059 tp!2226386))))

(declare-fun b!7625385 () Bool)

(assert (=> b!7625385 (= e!4533740 tp_is_empty!51059)))

(declare-fun b!7625386 () Bool)

(declare-fun e!4533743 () Bool)

(assert (=> b!7625386 (= e!4533744 e!4533743)))

(declare-fun res!3053403 () Bool)

(assert (=> b!7625386 (=> res!3053403 e!4533743)))

(declare-fun cut!12 () tuple2!69262)

(declare-fun ++!17642 (List!73203 List!73203) List!73203)

(assert (=> b!7625386 (= res!3053403 (not (= (++!17642 (_1!37934 cut!12) (_2!37934 cut!12)) s!9605)))))

(assert (=> b!7625386 lt!2657813))

(declare-fun lt!2657815 () Unit!167632)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!259 (Regex!20352 Regex!20352 List!73203) Unit!167632)

(assert (=> b!7625386 (= lt!2657815 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!259 (regOne!41216 r!14126) (regTwo!41216 r!14126) s!9605))))

(declare-fun b!7625387 () Bool)

(declare-fun tp!2226391 () Bool)

(assert (=> b!7625387 (= e!4533746 (and tp_is_empty!51059 tp!2226391))))

(declare-fun b!7625388 () Bool)

(assert (=> b!7625388 (= e!4533743 (validRegex!10770 (regOne!41216 r!14126)))))

(declare-fun b!7625389 () Bool)

(declare-fun tp!2226390 () Bool)

(assert (=> b!7625389 (= e!4533741 (and tp_is_empty!51059 tp!2226390))))

(declare-fun b!7625390 () Bool)

(declare-fun res!3053405 () Bool)

(assert (=> b!7625390 (=> (not res!3053405) (not e!4533742))))

(assert (=> b!7625390 (= res!3053405 (and (not (is-EmptyExpr!20352 r!14126)) (not (is-EmptyLang!20352 r!14126)) (not (is-ElementMatch!20352 r!14126)) (not (is-Union!20352 r!14126)) (not (is-Star!20352 r!14126))))))

(assert (= (and start!734366 res!3053406) b!7625390))

(assert (= (and b!7625390 res!3053405) b!7625382))

(assert (= (and b!7625382 (not res!3053404)) b!7625386))

(assert (= (and b!7625386 (not res!3053403)) b!7625388))

(assert (= (and start!734366 (is-ElementMatch!20352 r!14126)) b!7625385))

(assert (= (and start!734366 (is-Concat!29197 r!14126)) b!7625381))

(assert (= (and start!734366 (is-Star!20352 r!14126)) b!7625380))

(assert (= (and start!734366 (is-Union!20352 r!14126)) b!7625383))

(assert (= (and start!734366 (is-Cons!73079 s!9605)) b!7625387))

(assert (= (and start!734366 (is-Cons!73079 (_1!37934 cut!12))) b!7625384))

(assert (= (and start!734366 (is-Cons!73079 (_2!37934 cut!12))) b!7625389))

(declare-fun m!8155122 () Bool)

(assert (=> b!7625382 m!8155122))

(declare-fun m!8155124 () Bool)

(assert (=> b!7625382 m!8155124))

(assert (=> b!7625382 m!8155122))

(declare-fun m!8155126 () Bool)

(assert (=> b!7625382 m!8155126))

(declare-fun m!8155128 () Bool)

(assert (=> b!7625382 m!8155128))

(declare-fun m!8155130 () Bool)

(assert (=> b!7625382 m!8155130))

(declare-fun m!8155132 () Bool)

(assert (=> start!734366 m!8155132))

(declare-fun m!8155134 () Bool)

(assert (=> b!7625386 m!8155134))

(declare-fun m!8155136 () Bool)

(assert (=> b!7625386 m!8155136))

(declare-fun m!8155138 () Bool)

(assert (=> b!7625388 m!8155138))

(push 1)

(assert tp_is_empty!51059)

(assert (not b!7625383))

(assert (not start!734366))

(assert (not b!7625380))

(assert (not b!7625384))

(assert (not b!7625387))

(assert (not b!7625381))

(assert (not b!7625388))

(assert (not b!7625389))

(assert (not b!7625382))

(assert (not b!7625386))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2323596 () Bool)

(declare-fun res!3053435 () Bool)

(declare-fun e!4533784 () Bool)

(assert (=> d!2323596 (=> res!3053435 e!4533784)))

(assert (=> d!2323596 (= res!3053435 (is-ElementMatch!20352 r!14126))))

(assert (=> d!2323596 (= (validRegex!10770 r!14126) e!4533784)))

(declare-fun bm!700124 () Bool)

(declare-fun c!1405079 () Bool)

(declare-fun c!1405080 () Bool)

(declare-fun call!700129 () Bool)

(assert (=> bm!700124 (= call!700129 (validRegex!10770 (ite c!1405080 (reg!20681 r!14126) (ite c!1405079 (regOne!41217 r!14126) (regOne!41216 r!14126)))))))

(declare-fun b!7625454 () Bool)

(declare-fun e!4533785 () Bool)

(declare-fun e!4533790 () Bool)

(assert (=> b!7625454 (= e!4533785 e!4533790)))

(assert (=> b!7625454 (= c!1405079 (is-Union!20352 r!14126))))

(declare-fun b!7625455 () Bool)

(declare-fun e!4533789 () Bool)

(declare-fun call!700131 () Bool)

(assert (=> b!7625455 (= e!4533789 call!700131)))

(declare-fun b!7625456 () Bool)

(declare-fun res!3053437 () Bool)

(declare-fun e!4533788 () Bool)

(assert (=> b!7625456 (=> res!3053437 e!4533788)))

(assert (=> b!7625456 (= res!3053437 (not (is-Concat!29197 r!14126)))))

(assert (=> b!7625456 (= e!4533790 e!4533788)))

(declare-fun b!7625457 () Bool)

(declare-fun e!4533787 () Bool)

(assert (=> b!7625457 (= e!4533787 call!700131)))

(declare-fun b!7625458 () Bool)

(declare-fun e!4533786 () Bool)

(assert (=> b!7625458 (= e!4533786 call!700129)))

(declare-fun b!7625459 () Bool)

(declare-fun res!3053436 () Bool)

(assert (=> b!7625459 (=> (not res!3053436) (not e!4533787))))

(declare-fun call!700130 () Bool)

(assert (=> b!7625459 (= res!3053436 call!700130)))

(assert (=> b!7625459 (= e!4533790 e!4533787)))

(declare-fun b!7625460 () Bool)

(assert (=> b!7625460 (= e!4533788 e!4533789)))

(declare-fun res!3053434 () Bool)

(assert (=> b!7625460 (=> (not res!3053434) (not e!4533789))))

(assert (=> b!7625460 (= res!3053434 call!700130)))

(declare-fun bm!700125 () Bool)

(assert (=> bm!700125 (= call!700130 call!700129)))

(declare-fun b!7625461 () Bool)

(assert (=> b!7625461 (= e!4533785 e!4533786)))

(declare-fun res!3053433 () Bool)

(declare-fun nullable!8891 (Regex!20352) Bool)

(assert (=> b!7625461 (= res!3053433 (not (nullable!8891 (reg!20681 r!14126))))))

(assert (=> b!7625461 (=> (not res!3053433) (not e!4533786))))

(declare-fun bm!700126 () Bool)

(assert (=> bm!700126 (= call!700131 (validRegex!10770 (ite c!1405079 (regTwo!41217 r!14126) (regTwo!41216 r!14126))))))

(declare-fun b!7625462 () Bool)

(assert (=> b!7625462 (= e!4533784 e!4533785)))

(assert (=> b!7625462 (= c!1405080 (is-Star!20352 r!14126))))

(assert (= (and d!2323596 (not res!3053435)) b!7625462))

(assert (= (and b!7625462 c!1405080) b!7625461))

(assert (= (and b!7625462 (not c!1405080)) b!7625454))

(assert (= (and b!7625461 res!3053433) b!7625458))

(assert (= (and b!7625454 c!1405079) b!7625459))

(assert (= (and b!7625454 (not c!1405079)) b!7625456))

(assert (= (and b!7625459 res!3053436) b!7625457))

(assert (= (and b!7625456 (not res!3053437)) b!7625460))

(assert (= (and b!7625460 res!3053434) b!7625455))

(assert (= (or b!7625459 b!7625460) bm!700125))

(assert (= (or b!7625457 b!7625455) bm!700126))

(assert (= (or b!7625458 bm!700125) bm!700124))

(declare-fun m!8155158 () Bool)

(assert (=> bm!700124 m!8155158))

(declare-fun m!8155160 () Bool)

(assert (=> b!7625461 m!8155160))

(declare-fun m!8155162 () Bool)

(assert (=> bm!700126 m!8155162))

(assert (=> start!734366 d!2323596))

(declare-fun b!7625472 () Bool)

(declare-fun e!4533795 () List!73203)

(assert (=> b!7625472 (= e!4533795 (Cons!73079 (h!79527 (_1!37934 cut!12)) (++!17642 (t!387938 (_1!37934 cut!12)) (_2!37934 cut!12))))))

(declare-fun b!7625474 () Bool)

(declare-fun e!4533796 () Bool)

(declare-fun lt!2657827 () List!73203)

(assert (=> b!7625474 (= e!4533796 (or (not (= (_2!37934 cut!12) Nil!73079)) (= lt!2657827 (_1!37934 cut!12))))))

(declare-fun b!7625471 () Bool)

(assert (=> b!7625471 (= e!4533795 (_2!37934 cut!12))))

(declare-fun b!7625473 () Bool)

(declare-fun res!3053443 () Bool)

(assert (=> b!7625473 (=> (not res!3053443) (not e!4533796))))

(declare-fun size!42545 (List!73203) Int)

(assert (=> b!7625473 (= res!3053443 (= (size!42545 lt!2657827) (+ (size!42545 (_1!37934 cut!12)) (size!42545 (_2!37934 cut!12)))))))

(declare-fun d!2323600 () Bool)

(assert (=> d!2323600 e!4533796))

(declare-fun res!3053442 () Bool)

(assert (=> d!2323600 (=> (not res!3053442) (not e!4533796))))

(declare-fun content!15452 (List!73203) (Set C!41030))

(assert (=> d!2323600 (= res!3053442 (= (content!15452 lt!2657827) (set.union (content!15452 (_1!37934 cut!12)) (content!15452 (_2!37934 cut!12)))))))

(assert (=> d!2323600 (= lt!2657827 e!4533795)))

(declare-fun c!1405083 () Bool)

(assert (=> d!2323600 (= c!1405083 (is-Nil!73079 (_1!37934 cut!12)))))

(assert (=> d!2323600 (= (++!17642 (_1!37934 cut!12) (_2!37934 cut!12)) lt!2657827)))

(assert (= (and d!2323600 c!1405083) b!7625471))

(assert (= (and d!2323600 (not c!1405083)) b!7625472))

(assert (= (and d!2323600 res!3053442) b!7625473))

(assert (= (and b!7625473 res!3053443) b!7625474))

(declare-fun m!8155164 () Bool)

(assert (=> b!7625472 m!8155164))

(declare-fun m!8155166 () Bool)

(assert (=> b!7625473 m!8155166))

(declare-fun m!8155168 () Bool)

(assert (=> b!7625473 m!8155168))

(declare-fun m!8155170 () Bool)

(assert (=> b!7625473 m!8155170))

(declare-fun m!8155172 () Bool)

(assert (=> d!2323600 m!8155172))

(declare-fun m!8155174 () Bool)

(assert (=> d!2323600 m!8155174))

(declare-fun m!8155176 () Bool)

(assert (=> d!2323600 m!8155176))

(assert (=> b!7625386 d!2323600))

(declare-fun d!2323602 () Bool)

(assert (=> d!2323602 (isDefined!14041 (findConcatSeparation!3455 (regOne!41216 r!14126) (regTwo!41216 r!14126) Nil!73079 s!9605 s!9605))))

(declare-fun lt!2657830 () Unit!167632)

(declare-fun choose!58842 (Regex!20352 Regex!20352 List!73203) Unit!167632)

(assert (=> d!2323602 (= lt!2657830 (choose!58842 (regOne!41216 r!14126) (regTwo!41216 r!14126) s!9605))))

(assert (=> d!2323602 (validRegex!10770 (regOne!41216 r!14126))))

(assert (=> d!2323602 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!259 (regOne!41216 r!14126) (regTwo!41216 r!14126) s!9605) lt!2657830)))

(declare-fun bs!1943635 () Bool)

(assert (= bs!1943635 d!2323602))

(assert (=> bs!1943635 m!8155122))

(assert (=> bs!1943635 m!8155122))

(assert (=> bs!1943635 m!8155126))

(declare-fun m!8155178 () Bool)

(assert (=> bs!1943635 m!8155178))

(assert (=> bs!1943635 m!8155138))

(assert (=> b!7625386 d!2323602))

(declare-fun d!2323604 () Bool)

(declare-fun res!3053456 () Bool)

(declare-fun e!4533811 () Bool)

(assert (=> d!2323604 (=> res!3053456 e!4533811)))

(assert (=> d!2323604 (= res!3053456 (is-ElementMatch!20352 (regOne!41216 r!14126)))))

(assert (=> d!2323604 (= (validRegex!10770 (regOne!41216 r!14126)) e!4533811)))

(declare-fun c!1405089 () Bool)

(declare-fun c!1405088 () Bool)

(declare-fun bm!700133 () Bool)

(declare-fun call!700138 () Bool)

(assert (=> bm!700133 (= call!700138 (validRegex!10770 (ite c!1405089 (reg!20681 (regOne!41216 r!14126)) (ite c!1405088 (regOne!41217 (regOne!41216 r!14126)) (regOne!41216 (regOne!41216 r!14126))))))))

(declare-fun b!7625493 () Bool)

(declare-fun e!4533812 () Bool)

(declare-fun e!4533817 () Bool)

(assert (=> b!7625493 (= e!4533812 e!4533817)))

(assert (=> b!7625493 (= c!1405088 (is-Union!20352 (regOne!41216 r!14126)))))

(declare-fun b!7625494 () Bool)

(declare-fun e!4533816 () Bool)

(declare-fun call!700140 () Bool)

(assert (=> b!7625494 (= e!4533816 call!700140)))

(declare-fun b!7625495 () Bool)

(declare-fun res!3053458 () Bool)

(declare-fun e!4533815 () Bool)

(assert (=> b!7625495 (=> res!3053458 e!4533815)))

(assert (=> b!7625495 (= res!3053458 (not (is-Concat!29197 (regOne!41216 r!14126))))))

(assert (=> b!7625495 (= e!4533817 e!4533815)))

(declare-fun b!7625496 () Bool)

(declare-fun e!4533814 () Bool)

(assert (=> b!7625496 (= e!4533814 call!700140)))

(declare-fun b!7625497 () Bool)

(declare-fun e!4533813 () Bool)

(assert (=> b!7625497 (= e!4533813 call!700138)))

(declare-fun b!7625498 () Bool)

(declare-fun res!3053457 () Bool)

(assert (=> b!7625498 (=> (not res!3053457) (not e!4533814))))

(declare-fun call!700139 () Bool)

(assert (=> b!7625498 (= res!3053457 call!700139)))

(assert (=> b!7625498 (= e!4533817 e!4533814)))

(declare-fun b!7625499 () Bool)

(assert (=> b!7625499 (= e!4533815 e!4533816)))

(declare-fun res!3053455 () Bool)

(assert (=> b!7625499 (=> (not res!3053455) (not e!4533816))))

(assert (=> b!7625499 (= res!3053455 call!700139)))

(declare-fun bm!700134 () Bool)

(assert (=> bm!700134 (= call!700139 call!700138)))

(declare-fun b!7625500 () Bool)

(assert (=> b!7625500 (= e!4533812 e!4533813)))

(declare-fun res!3053454 () Bool)

(assert (=> b!7625500 (= res!3053454 (not (nullable!8891 (reg!20681 (regOne!41216 r!14126)))))))

(assert (=> b!7625500 (=> (not res!3053454) (not e!4533813))))

(declare-fun bm!700135 () Bool)

(assert (=> bm!700135 (= call!700140 (validRegex!10770 (ite c!1405088 (regTwo!41217 (regOne!41216 r!14126)) (regTwo!41216 (regOne!41216 r!14126)))))))

(declare-fun b!7625501 () Bool)

(assert (=> b!7625501 (= e!4533811 e!4533812)))

(assert (=> b!7625501 (= c!1405089 (is-Star!20352 (regOne!41216 r!14126)))))

(assert (= (and d!2323604 (not res!3053456)) b!7625501))

(assert (= (and b!7625501 c!1405089) b!7625500))

(assert (= (and b!7625501 (not c!1405089)) b!7625493))

(assert (= (and b!7625500 res!3053454) b!7625497))

(assert (= (and b!7625493 c!1405088) b!7625498))

(assert (= (and b!7625493 (not c!1405088)) b!7625495))

(assert (= (and b!7625498 res!3053457) b!7625496))

(assert (= (and b!7625495 (not res!3053458)) b!7625499))

(assert (= (and b!7625499 res!3053455) b!7625494))

(assert (= (or b!7625498 b!7625499) bm!700134))

(assert (= (or b!7625496 b!7625494) bm!700135))

(assert (= (or b!7625497 bm!700134) bm!700133))

(declare-fun m!8155180 () Bool)

(assert (=> bm!700133 m!8155180))

(declare-fun m!8155182 () Bool)

(assert (=> b!7625500 m!8155182))

(declare-fun m!8155184 () Bool)

(assert (=> bm!700135 m!8155184))

(assert (=> b!7625388 d!2323604))

(declare-fun b!7625539 () Bool)

(declare-fun e!4533839 () Bool)

(declare-fun e!4533843 () Bool)

(assert (=> b!7625539 (= e!4533839 e!4533843)))

(declare-fun c!1405098 () Bool)

(assert (=> b!7625539 (= c!1405098 (is-EmptyLang!20352 r!14126))))

(declare-fun b!7625540 () Bool)

(declare-fun lt!2657833 () Bool)

(assert (=> b!7625540 (= e!4533843 (not lt!2657833))))

(declare-fun b!7625541 () Bool)

(declare-fun e!4533840 () Bool)

(declare-fun derivativeStep!5865 (Regex!20352 C!41030) Regex!20352)

(declare-fun head!15665 (List!73203) C!41030)

(declare-fun tail!15205 (List!73203) List!73203)

(assert (=> b!7625541 (= e!4533840 (matchR!9855 (derivativeStep!5865 r!14126 (head!15665 s!9605)) (tail!15205 s!9605)))))

(declare-fun b!7625542 () Bool)

(declare-fun e!4533844 () Bool)

(assert (=> b!7625542 (= e!4533844 (= (head!15665 s!9605) (c!1405073 r!14126)))))

(declare-fun d!2323606 () Bool)

(assert (=> d!2323606 e!4533839))

(declare-fun c!1405100 () Bool)

(assert (=> d!2323606 (= c!1405100 (is-EmptyExpr!20352 r!14126))))

(assert (=> d!2323606 (= lt!2657833 e!4533840)))

(declare-fun c!1405099 () Bool)

(declare-fun isEmpty!41703 (List!73203) Bool)

(assert (=> d!2323606 (= c!1405099 (isEmpty!41703 s!9605))))

(assert (=> d!2323606 (validRegex!10770 r!14126)))

(assert (=> d!2323606 (= (matchR!9855 r!14126 s!9605) lt!2657833)))

(declare-fun b!7625543 () Bool)

(declare-fun res!3053483 () Bool)

(assert (=> b!7625543 (=> (not res!3053483) (not e!4533844))))

(assert (=> b!7625543 (= res!3053483 (isEmpty!41703 (tail!15205 s!9605)))))

(declare-fun b!7625544 () Bool)

(declare-fun res!3053482 () Bool)

(declare-fun e!4533841 () Bool)

(assert (=> b!7625544 (=> res!3053482 e!4533841)))

(assert (=> b!7625544 (= res!3053482 e!4533844)))

(declare-fun res!3053485 () Bool)

(assert (=> b!7625544 (=> (not res!3053485) (not e!4533844))))

(assert (=> b!7625544 (= res!3053485 lt!2657833)))

(declare-fun b!7625545 () Bool)

(declare-fun e!4533842 () Bool)

(assert (=> b!7625545 (= e!4533841 e!4533842)))

(declare-fun res!3053486 () Bool)

(assert (=> b!7625545 (=> (not res!3053486) (not e!4533842))))

(assert (=> b!7625545 (= res!3053486 (not lt!2657833))))

(declare-fun b!7625546 () Bool)

(declare-fun res!3053487 () Bool)

(declare-fun e!4533845 () Bool)

(assert (=> b!7625546 (=> res!3053487 e!4533845)))

(assert (=> b!7625546 (= res!3053487 (not (isEmpty!41703 (tail!15205 s!9605))))))

(declare-fun bm!700141 () Bool)

(declare-fun call!700146 () Bool)

(assert (=> bm!700141 (= call!700146 (isEmpty!41703 s!9605))))

(declare-fun b!7625547 () Bool)

(assert (=> b!7625547 (= e!4533842 e!4533845)))

(declare-fun res!3053481 () Bool)

(assert (=> b!7625547 (=> res!3053481 e!4533845)))

(assert (=> b!7625547 (= res!3053481 call!700146)))

(declare-fun b!7625548 () Bool)

(assert (=> b!7625548 (= e!4533839 (= lt!2657833 call!700146))))

(declare-fun b!7625549 () Bool)

(declare-fun res!3053480 () Bool)

(assert (=> b!7625549 (=> res!3053480 e!4533841)))

(assert (=> b!7625549 (= res!3053480 (not (is-ElementMatch!20352 r!14126)))))

(assert (=> b!7625549 (= e!4533843 e!4533841)))

(declare-fun b!7625550 () Bool)

(declare-fun res!3053484 () Bool)

(assert (=> b!7625550 (=> (not res!3053484) (not e!4533844))))

(assert (=> b!7625550 (= res!3053484 (not call!700146))))

(declare-fun b!7625551 () Bool)

(assert (=> b!7625551 (= e!4533845 (not (= (head!15665 s!9605) (c!1405073 r!14126))))))

(declare-fun b!7625552 () Bool)

(assert (=> b!7625552 (= e!4533840 (nullable!8891 r!14126))))

(assert (= (and d!2323606 c!1405099) b!7625552))

(assert (= (and d!2323606 (not c!1405099)) b!7625541))

(assert (= (and d!2323606 c!1405100) b!7625548))

(assert (= (and d!2323606 (not c!1405100)) b!7625539))

(assert (= (and b!7625539 c!1405098) b!7625540))

(assert (= (and b!7625539 (not c!1405098)) b!7625549))

(assert (= (and b!7625549 (not res!3053480)) b!7625544))

(assert (= (and b!7625544 res!3053485) b!7625550))

(assert (= (and b!7625550 res!3053484) b!7625543))

(assert (= (and b!7625543 res!3053483) b!7625542))

(assert (= (and b!7625544 (not res!3053482)) b!7625545))

(assert (= (and b!7625545 res!3053486) b!7625547))

(assert (= (and b!7625547 (not res!3053481)) b!7625546))

(assert (= (and b!7625546 (not res!3053487)) b!7625551))

(assert (= (or b!7625548 b!7625547 b!7625550) bm!700141))

(declare-fun m!8155192 () Bool)

(assert (=> b!7625542 m!8155192))

(assert (=> b!7625541 m!8155192))

(assert (=> b!7625541 m!8155192))

(declare-fun m!8155194 () Bool)

(assert (=> b!7625541 m!8155194))

(declare-fun m!8155196 () Bool)

(assert (=> b!7625541 m!8155196))

(assert (=> b!7625541 m!8155194))

(assert (=> b!7625541 m!8155196))

(declare-fun m!8155198 () Bool)

(assert (=> b!7625541 m!8155198))

(assert (=> b!7625543 m!8155196))

(assert (=> b!7625543 m!8155196))

(declare-fun m!8155200 () Bool)

(assert (=> b!7625543 m!8155200))

(declare-fun m!8155202 () Bool)

(assert (=> b!7625552 m!8155202))

(declare-fun m!8155204 () Bool)

(assert (=> bm!700141 m!8155204))

(assert (=> b!7625546 m!8155196))

(assert (=> b!7625546 m!8155196))

(assert (=> b!7625546 m!8155200))

(assert (=> b!7625551 m!8155192))

(assert (=> d!2323606 m!8155204))

(assert (=> d!2323606 m!8155132))

(assert (=> b!7625382 d!2323606))

(declare-fun bs!1943636 () Bool)

(declare-fun d!2323610 () Bool)

(assert (= bs!1943636 (and d!2323610 b!7625382)))

(declare-fun lambda!468760 () Int)

(assert (=> bs!1943636 (= lambda!468760 lambda!468754)))

(assert (=> d!2323610 true))

(assert (=> d!2323610 true))

(assert (=> d!2323610 true))

(assert (=> d!2323610 (= (isDefined!14041 (findConcatSeparation!3455 (regOne!41216 r!14126) (regTwo!41216 r!14126) Nil!73079 s!9605 s!9605)) (Exists!4506 lambda!468760))))

(declare-fun lt!2657839 () Unit!167632)

(declare-fun choose!58843 (Regex!20352 Regex!20352 List!73203) Unit!167632)

(assert (=> d!2323610 (= lt!2657839 (choose!58843 (regOne!41216 r!14126) (regTwo!41216 r!14126) s!9605))))

(assert (=> d!2323610 (validRegex!10770 (regOne!41216 r!14126))))

(assert (=> d!2323610 (= (lemmaFindConcatSeparationEquivalentToExists!3213 (regOne!41216 r!14126) (regTwo!41216 r!14126) s!9605) lt!2657839)))

(declare-fun bs!1943637 () Bool)

(assert (= bs!1943637 d!2323610))

(assert (=> bs!1943637 m!8155138))

(declare-fun m!8155220 () Bool)

(assert (=> bs!1943637 m!8155220))

(declare-fun m!8155222 () Bool)

(assert (=> bs!1943637 m!8155222))

(assert (=> bs!1943637 m!8155122))

(assert (=> bs!1943637 m!8155122))

(assert (=> bs!1943637 m!8155126))

(assert (=> b!7625382 d!2323610))

(declare-fun d!2323614 () Bool)

(declare-fun choose!58844 (Int) Bool)

(assert (=> d!2323614 (= (Exists!4506 lambda!468754) (choose!58844 lambda!468754))))

(declare-fun bs!1943638 () Bool)

(assert (= bs!1943638 d!2323614))

(declare-fun m!8155224 () Bool)

(assert (=> bs!1943638 m!8155224))

(assert (=> b!7625382 d!2323614))

(declare-fun d!2323616 () Bool)

(declare-fun isEmpty!41704 (Option!17425) Bool)

(assert (=> d!2323616 (= (isDefined!14041 (findConcatSeparation!3455 (regOne!41216 r!14126) (regTwo!41216 r!14126) Nil!73079 s!9605 s!9605)) (not (isEmpty!41704 (findConcatSeparation!3455 (regOne!41216 r!14126) (regTwo!41216 r!14126) Nil!73079 s!9605 s!9605))))))

(declare-fun bs!1943639 () Bool)

(assert (= bs!1943639 d!2323616))

(assert (=> bs!1943639 m!8155122))

(declare-fun m!8155226 () Bool)

(assert (=> bs!1943639 m!8155226))

(assert (=> b!7625382 d!2323616))

(declare-fun b!7625596 () Bool)

(declare-fun e!4533874 () Option!17425)

(assert (=> b!7625596 (= e!4533874 None!17424)))

(declare-fun b!7625597 () Bool)

(declare-fun e!4533872 () Bool)

(declare-fun lt!2657850 () Option!17425)

(assert (=> b!7625597 (= e!4533872 (not (isDefined!14041 lt!2657850)))))

(declare-fun b!7625598 () Bool)

(declare-fun res!3053515 () Bool)

(declare-fun e!4533873 () Bool)

(assert (=> b!7625598 (=> (not res!3053515) (not e!4533873))))

(declare-fun get!25811 (Option!17425) tuple2!69262)

(assert (=> b!7625598 (= res!3053515 (matchR!9855 (regTwo!41216 r!14126) (_2!37934 (get!25811 lt!2657850))))))

(declare-fun b!7625599 () Bool)

(declare-fun lt!2657851 () Unit!167632)

(declare-fun lt!2657849 () Unit!167632)

(assert (=> b!7625599 (= lt!2657851 lt!2657849)))

(assert (=> b!7625599 (= (++!17642 (++!17642 Nil!73079 (Cons!73079 (h!79527 s!9605) Nil!73079)) (t!387938 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3227 (List!73203 C!41030 List!73203 List!73203) Unit!167632)

(assert (=> b!7625599 (= lt!2657849 (lemmaMoveElementToOtherListKeepsConcatEq!3227 Nil!73079 (h!79527 s!9605) (t!387938 s!9605) s!9605))))

(assert (=> b!7625599 (= e!4533874 (findConcatSeparation!3455 (regOne!41216 r!14126) (regTwo!41216 r!14126) (++!17642 Nil!73079 (Cons!73079 (h!79527 s!9605) Nil!73079)) (t!387938 s!9605) s!9605))))

(declare-fun b!7625600 () Bool)

(declare-fun res!3053517 () Bool)

(assert (=> b!7625600 (=> (not res!3053517) (not e!4533873))))

(assert (=> b!7625600 (= res!3053517 (matchR!9855 (regOne!41216 r!14126) (_1!37934 (get!25811 lt!2657850))))))

(declare-fun d!2323618 () Bool)

(assert (=> d!2323618 e!4533872))

(declare-fun res!3053516 () Bool)

(assert (=> d!2323618 (=> res!3053516 e!4533872)))

(assert (=> d!2323618 (= res!3053516 e!4533873)))

(declare-fun res!3053514 () Bool)

(assert (=> d!2323618 (=> (not res!3053514) (not e!4533873))))

(assert (=> d!2323618 (= res!3053514 (isDefined!14041 lt!2657850))))

(declare-fun e!4533875 () Option!17425)

(assert (=> d!2323618 (= lt!2657850 e!4533875)))

(declare-fun c!1405110 () Bool)

(declare-fun e!4533871 () Bool)

(assert (=> d!2323618 (= c!1405110 e!4533871)))

(declare-fun res!3053513 () Bool)

(assert (=> d!2323618 (=> (not res!3053513) (not e!4533871))))

(assert (=> d!2323618 (= res!3053513 (matchR!9855 (regOne!41216 r!14126) Nil!73079))))

(assert (=> d!2323618 (validRegex!10770 (regOne!41216 r!14126))))

(assert (=> d!2323618 (= (findConcatSeparation!3455 (regOne!41216 r!14126) (regTwo!41216 r!14126) Nil!73079 s!9605 s!9605) lt!2657850)))

(declare-fun b!7625601 () Bool)

(assert (=> b!7625601 (= e!4533875 e!4533874)))

(declare-fun c!1405111 () Bool)

(assert (=> b!7625601 (= c!1405111 (is-Nil!73079 s!9605))))

(declare-fun b!7625602 () Bool)

(assert (=> b!7625602 (= e!4533871 (matchR!9855 (regTwo!41216 r!14126) s!9605))))

(declare-fun b!7625603 () Bool)

(assert (=> b!7625603 (= e!4533875 (Some!17424 (tuple2!69263 Nil!73079 s!9605)))))

(declare-fun b!7625604 () Bool)

(assert (=> b!7625604 (= e!4533873 (= (++!17642 (_1!37934 (get!25811 lt!2657850)) (_2!37934 (get!25811 lt!2657850))) s!9605))))

(assert (= (and d!2323618 res!3053513) b!7625602))

(assert (= (and d!2323618 c!1405110) b!7625603))

(assert (= (and d!2323618 (not c!1405110)) b!7625601))

(assert (= (and b!7625601 c!1405111) b!7625596))

(assert (= (and b!7625601 (not c!1405111)) b!7625599))

(assert (= (and d!2323618 res!3053514) b!7625600))

(assert (= (and b!7625600 res!3053517) b!7625598))

(assert (= (and b!7625598 res!3053515) b!7625604))

(assert (= (and d!2323618 (not res!3053516)) b!7625597))

(declare-fun m!8155236 () Bool)

(assert (=> b!7625599 m!8155236))

(assert (=> b!7625599 m!8155236))

(declare-fun m!8155238 () Bool)

(assert (=> b!7625599 m!8155238))

(declare-fun m!8155240 () Bool)

(assert (=> b!7625599 m!8155240))

(assert (=> b!7625599 m!8155236))

(declare-fun m!8155242 () Bool)

(assert (=> b!7625599 m!8155242))

(declare-fun m!8155244 () Bool)

(assert (=> d!2323618 m!8155244))

(declare-fun m!8155246 () Bool)

(assert (=> d!2323618 m!8155246))

(assert (=> d!2323618 m!8155138))

(declare-fun m!8155248 () Bool)

(assert (=> b!7625600 m!8155248))

(declare-fun m!8155250 () Bool)

(assert (=> b!7625600 m!8155250))

(declare-fun m!8155252 () Bool)

(assert (=> b!7625602 m!8155252))

(assert (=> b!7625604 m!8155248))

(declare-fun m!8155254 () Bool)

(assert (=> b!7625604 m!8155254))

(assert (=> b!7625598 m!8155248))

(declare-fun m!8155256 () Bool)

(assert (=> b!7625598 m!8155256))

(assert (=> b!7625597 m!8155244))

(assert (=> b!7625382 d!2323618))

(declare-fun e!4533878 () Bool)

(assert (=> b!7625380 (= tp!2226388 e!4533878)))

(declare-fun b!7625617 () Bool)

(declare-fun tp!2226431 () Bool)

(assert (=> b!7625617 (= e!4533878 tp!2226431)))

(declare-fun b!7625615 () Bool)

(assert (=> b!7625615 (= e!4533878 tp_is_empty!51059)))

(declare-fun b!7625618 () Bool)

(declare-fun tp!2226432 () Bool)

(declare-fun tp!2226429 () Bool)

(assert (=> b!7625618 (= e!4533878 (and tp!2226432 tp!2226429))))

(declare-fun b!7625616 () Bool)

(declare-fun tp!2226430 () Bool)

(declare-fun tp!2226428 () Bool)

(assert (=> b!7625616 (= e!4533878 (and tp!2226430 tp!2226428))))

(assert (= (and b!7625380 (is-ElementMatch!20352 (reg!20681 r!14126))) b!7625615))

(assert (= (and b!7625380 (is-Concat!29197 (reg!20681 r!14126))) b!7625616))

(assert (= (and b!7625380 (is-Star!20352 (reg!20681 r!14126))) b!7625617))

(assert (= (and b!7625380 (is-Union!20352 (reg!20681 r!14126))) b!7625618))

(declare-fun e!4533879 () Bool)

(assert (=> b!7625381 (= tp!2226389 e!4533879)))

(declare-fun b!7625621 () Bool)

(declare-fun tp!2226436 () Bool)

(assert (=> b!7625621 (= e!4533879 tp!2226436)))

(declare-fun b!7625619 () Bool)

(assert (=> b!7625619 (= e!4533879 tp_is_empty!51059)))

(declare-fun b!7625622 () Bool)

(declare-fun tp!2226437 () Bool)

(declare-fun tp!2226434 () Bool)

(assert (=> b!7625622 (= e!4533879 (and tp!2226437 tp!2226434))))

(declare-fun b!7625620 () Bool)

(declare-fun tp!2226435 () Bool)

(declare-fun tp!2226433 () Bool)

(assert (=> b!7625620 (= e!4533879 (and tp!2226435 tp!2226433))))

(assert (= (and b!7625381 (is-ElementMatch!20352 (regOne!41216 r!14126))) b!7625619))

(assert (= (and b!7625381 (is-Concat!29197 (regOne!41216 r!14126))) b!7625620))

(assert (= (and b!7625381 (is-Star!20352 (regOne!41216 r!14126))) b!7625621))

(assert (= (and b!7625381 (is-Union!20352 (regOne!41216 r!14126))) b!7625622))

(declare-fun e!4533880 () Bool)

(assert (=> b!7625381 (= tp!2226392 e!4533880)))

(declare-fun b!7625625 () Bool)

(declare-fun tp!2226441 () Bool)

(assert (=> b!7625625 (= e!4533880 tp!2226441)))

(declare-fun b!7625623 () Bool)

(assert (=> b!7625623 (= e!4533880 tp_is_empty!51059)))

(declare-fun b!7625626 () Bool)

(declare-fun tp!2226442 () Bool)

(declare-fun tp!2226439 () Bool)

(assert (=> b!7625626 (= e!4533880 (and tp!2226442 tp!2226439))))

(declare-fun b!7625624 () Bool)

(declare-fun tp!2226440 () Bool)

(declare-fun tp!2226438 () Bool)

(assert (=> b!7625624 (= e!4533880 (and tp!2226440 tp!2226438))))

(assert (= (and b!7625381 (is-ElementMatch!20352 (regTwo!41216 r!14126))) b!7625623))

(assert (= (and b!7625381 (is-Concat!29197 (regTwo!41216 r!14126))) b!7625624))

(assert (= (and b!7625381 (is-Star!20352 (regTwo!41216 r!14126))) b!7625625))

(assert (= (and b!7625381 (is-Union!20352 (regTwo!41216 r!14126))) b!7625626))

(declare-fun b!7625631 () Bool)

(declare-fun e!4533883 () Bool)

(declare-fun tp!2226445 () Bool)

(assert (=> b!7625631 (= e!4533883 (and tp_is_empty!51059 tp!2226445))))

(assert (=> b!7625387 (= tp!2226391 e!4533883)))

(assert (= (and b!7625387 (is-Cons!73079 (t!387938 s!9605))) b!7625631))

(declare-fun b!7625632 () Bool)

(declare-fun e!4533884 () Bool)

(declare-fun tp!2226446 () Bool)

(assert (=> b!7625632 (= e!4533884 (and tp_is_empty!51059 tp!2226446))))

(assert (=> b!7625384 (= tp!2226386 e!4533884)))

(assert (= (and b!7625384 (is-Cons!73079 (t!387938 (_1!37934 cut!12)))) b!7625632))

(declare-fun b!7625633 () Bool)

(declare-fun e!4533885 () Bool)

(declare-fun tp!2226447 () Bool)

(assert (=> b!7625633 (= e!4533885 (and tp_is_empty!51059 tp!2226447))))

(assert (=> b!7625389 (= tp!2226390 e!4533885)))

(assert (= (and b!7625389 (is-Cons!73079 (t!387938 (_2!37934 cut!12)))) b!7625633))

(declare-fun e!4533886 () Bool)

(assert (=> b!7625383 (= tp!2226393 e!4533886)))

(declare-fun b!7625636 () Bool)

(declare-fun tp!2226451 () Bool)

(assert (=> b!7625636 (= e!4533886 tp!2226451)))

(declare-fun b!7625634 () Bool)

(assert (=> b!7625634 (= e!4533886 tp_is_empty!51059)))

(declare-fun b!7625637 () Bool)

(declare-fun tp!2226452 () Bool)

(declare-fun tp!2226449 () Bool)

(assert (=> b!7625637 (= e!4533886 (and tp!2226452 tp!2226449))))

(declare-fun b!7625635 () Bool)

(declare-fun tp!2226450 () Bool)

(declare-fun tp!2226448 () Bool)

(assert (=> b!7625635 (= e!4533886 (and tp!2226450 tp!2226448))))

(assert (= (and b!7625383 (is-ElementMatch!20352 (regOne!41217 r!14126))) b!7625634))

(assert (= (and b!7625383 (is-Concat!29197 (regOne!41217 r!14126))) b!7625635))

(assert (= (and b!7625383 (is-Star!20352 (regOne!41217 r!14126))) b!7625636))

(assert (= (and b!7625383 (is-Union!20352 (regOne!41217 r!14126))) b!7625637))

(declare-fun e!4533887 () Bool)

(assert (=> b!7625383 (= tp!2226387 e!4533887)))

(declare-fun b!7625640 () Bool)

(declare-fun tp!2226456 () Bool)

(assert (=> b!7625640 (= e!4533887 tp!2226456)))

(declare-fun b!7625638 () Bool)

(assert (=> b!7625638 (= e!4533887 tp_is_empty!51059)))

(declare-fun b!7625641 () Bool)

(declare-fun tp!2226457 () Bool)

(declare-fun tp!2226454 () Bool)

(assert (=> b!7625641 (= e!4533887 (and tp!2226457 tp!2226454))))

(declare-fun b!7625639 () Bool)

(declare-fun tp!2226455 () Bool)

(declare-fun tp!2226453 () Bool)

(assert (=> b!7625639 (= e!4533887 (and tp!2226455 tp!2226453))))

(assert (= (and b!7625383 (is-ElementMatch!20352 (regTwo!41217 r!14126))) b!7625638))

(assert (= (and b!7625383 (is-Concat!29197 (regTwo!41217 r!14126))) b!7625639))

(assert (= (and b!7625383 (is-Star!20352 (regTwo!41217 r!14126))) b!7625640))

(assert (= (and b!7625383 (is-Union!20352 (regTwo!41217 r!14126))) b!7625641))

(push 1)

(assert (not b!7625598))

(assert (not b!7625621))

(assert (not b!7625552))

(assert (not bm!700124))

(assert (not b!7625626))

(assert (not b!7625641))

(assert (not b!7625500))

(assert (not b!7625461))

(assert (not d!2323616))

(assert (not d!2323600))

(assert (not b!7625597))

(assert (not b!7625602))

(assert (not b!7625618))

(assert (not d!2323602))

(assert (not b!7625639))

(assert (not b!7625604))

(assert (not b!7625600))

(assert tp_is_empty!51059)

(assert (not b!7625541))

(assert (not b!7625633))

(assert (not b!7625622))

(assert (not b!7625625))

(assert (not d!2323606))

(assert (not bm!700135))

(assert (not b!7625617))

(assert (not b!7625631))

(assert (not bm!700141))

(assert (not b!7625473))

(assert (not d!2323614))

(assert (not b!7625624))

(assert (not b!7625551))

(assert (not b!7625599))

(assert (not b!7625640))

(assert (not b!7625637))

(assert (not b!7625546))

(assert (not b!7625543))

(assert (not bm!700126))

(assert (not b!7625635))

(assert (not d!2323610))

(assert (not b!7625620))

(assert (not b!7625636))

(assert (not b!7625542))

(assert (not bm!700133))

(assert (not d!2323618))

(assert (not b!7625632))

(assert (not b!7625616))

(assert (not b!7625472))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

