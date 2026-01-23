; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!734474 () Bool)

(assert start!734474)

(declare-fun b!7626635 () Bool)

(assert (=> b!7626635 true))

(assert (=> b!7626635 true))

(declare-fun b!7626630 () Bool)

(declare-fun e!4534405 () Bool)

(declare-datatypes ((C!41042 0))(
  ( (C!41043 (val!30961 Int)) )
))
(declare-datatypes ((Regex!20358 0))(
  ( (ElementMatch!20358 (c!1405241 C!41042)) (Concat!29203 (regOne!41228 Regex!20358) (regTwo!41228 Regex!20358)) (EmptyExpr!20358) (Star!20358 (reg!20687 Regex!20358)) (EmptyLang!20358) (Union!20358 (regOne!41229 Regex!20358) (regTwo!41229 Regex!20358)) )
))
(declare-fun r!14126 () Regex!20358)

(declare-fun validRegex!10776 (Regex!20358) Bool)

(assert (=> b!7626630 (= e!4534405 (validRegex!10776 (regTwo!41228 r!14126)))))

(declare-fun b!7626631 () Bool)

(declare-fun res!3053960 () Bool)

(declare-fun e!4534402 () Bool)

(assert (=> b!7626631 (=> (not res!3053960) (not e!4534402))))

(assert (=> b!7626631 (= res!3053960 (and (not (is-EmptyExpr!20358 r!14126)) (not (is-EmptyLang!20358 r!14126)) (not (is-ElementMatch!20358 r!14126)) (not (is-Union!20358 r!14126)) (not (is-Star!20358 r!14126))))))

(declare-fun b!7626632 () Bool)

(declare-fun e!4534408 () Bool)

(declare-fun tp!2226771 () Bool)

(declare-fun tp!2226772 () Bool)

(assert (=> b!7626632 (= e!4534408 (and tp!2226771 tp!2226772))))

(declare-fun b!7626633 () Bool)

(declare-fun tp!2226773 () Bool)

(declare-fun tp!2226770 () Bool)

(assert (=> b!7626633 (= e!4534408 (and tp!2226773 tp!2226770))))

(declare-fun b!7626634 () Bool)

(declare-fun e!4534407 () Bool)

(declare-fun tp_is_empty!51071 () Bool)

(declare-fun tp!2226774 () Bool)

(assert (=> b!7626634 (= e!4534407 (and tp_is_empty!51071 tp!2226774))))

(declare-fun e!4534406 () Bool)

(assert (=> b!7626635 (= e!4534402 (not e!4534406))))

(declare-fun res!3053957 () Bool)

(assert (=> b!7626635 (=> res!3053957 e!4534406)))

(declare-datatypes ((List!73209 0))(
  ( (Nil!73085) (Cons!73085 (h!79533 C!41042) (t!387944 List!73209)) )
))
(declare-fun s!9605 () List!73209)

(declare-fun matchR!9861 (Regex!20358 List!73209) Bool)

(assert (=> b!7626635 (= res!3053957 (not (matchR!9861 r!14126 s!9605)))))

(declare-fun lt!2657996 () Bool)

(declare-fun lambda!468796 () Int)

(declare-fun Exists!4512 (Int) Bool)

(assert (=> b!7626635 (= lt!2657996 (Exists!4512 lambda!468796))))

(declare-datatypes ((tuple2!69274 0))(
  ( (tuple2!69275 (_1!37940 List!73209) (_2!37940 List!73209)) )
))
(declare-datatypes ((Option!17431 0))(
  ( (None!17430) (Some!17430 (v!54565 tuple2!69274)) )
))
(declare-fun isDefined!14047 (Option!17431) Bool)

(declare-fun findConcatSeparation!3461 (Regex!20358 Regex!20358 List!73209 List!73209 List!73209) Option!17431)

(assert (=> b!7626635 (= lt!2657996 (isDefined!14047 (findConcatSeparation!3461 (regOne!41228 r!14126) (regTwo!41228 r!14126) Nil!73085 s!9605 s!9605)))))

(declare-datatypes ((Unit!167644 0))(
  ( (Unit!167645) )
))
(declare-fun lt!2657995 () Unit!167644)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3219 (Regex!20358 Regex!20358 List!73209) Unit!167644)

(assert (=> b!7626635 (= lt!2657995 (lemmaFindConcatSeparationEquivalentToExists!3219 (regOne!41228 r!14126) (regTwo!41228 r!14126) s!9605))))

(declare-fun b!7626636 () Bool)

(declare-fun res!3053962 () Bool)

(assert (=> b!7626636 (=> res!3053962 e!4534405)))

(declare-fun cut!13 () tuple2!69274)

(declare-fun ++!17648 (List!73209 List!73209) List!73209)

(assert (=> b!7626636 (= res!3053962 (not (= (++!17648 (_1!37940 cut!13) (_2!37940 cut!13)) s!9605)))))

(declare-fun b!7626637 () Bool)

(assert (=> b!7626637 (= e!4534406 e!4534405)))

(declare-fun res!3053958 () Bool)

(assert (=> b!7626637 (=> res!3053958 e!4534405)))

(assert (=> b!7626637 (= res!3053958 (not (Exists!4512 lambda!468796)))))

(assert (=> b!7626637 lt!2657996))

(declare-fun lt!2657997 () Unit!167644)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!265 (Regex!20358 Regex!20358 List!73209) Unit!167644)

(assert (=> b!7626637 (= lt!2657997 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!265 (regOne!41228 r!14126) (regTwo!41228 r!14126) s!9605))))

(declare-fun b!7626638 () Bool)

(declare-fun e!4534403 () Bool)

(declare-fun tp!2226777 () Bool)

(assert (=> b!7626638 (= e!4534403 (and tp_is_empty!51071 tp!2226777))))

(declare-fun b!7626639 () Bool)

(declare-fun tp!2226775 () Bool)

(assert (=> b!7626639 (= e!4534408 tp!2226775)))

(declare-fun b!7626640 () Bool)

(declare-fun res!3053961 () Bool)

(assert (=> b!7626640 (=> res!3053961 e!4534405)))

(assert (=> b!7626640 (= res!3053961 (not (matchR!9861 (regOne!41228 r!14126) (_1!37940 cut!13))))))

(declare-fun res!3053959 () Bool)

(assert (=> start!734474 (=> (not res!3053959) (not e!4534402))))

(assert (=> start!734474 (= res!3053959 (validRegex!10776 r!14126))))

(assert (=> start!734474 e!4534402))

(assert (=> start!734474 e!4534408))

(declare-fun e!4534404 () Bool)

(assert (=> start!734474 e!4534404))

(assert (=> start!734474 (and e!4534407 e!4534403)))

(declare-fun b!7626641 () Bool)

(declare-fun tp!2226776 () Bool)

(assert (=> b!7626641 (= e!4534404 (and tp_is_empty!51071 tp!2226776))))

(declare-fun b!7626642 () Bool)

(assert (=> b!7626642 (= e!4534408 tp_is_empty!51071)))

(assert (= (and start!734474 res!3053959) b!7626631))

(assert (= (and b!7626631 res!3053960) b!7626635))

(assert (= (and b!7626635 (not res!3053957)) b!7626637))

(assert (= (and b!7626637 (not res!3053958)) b!7626636))

(assert (= (and b!7626636 (not res!3053962)) b!7626640))

(assert (= (and b!7626640 (not res!3053961)) b!7626630))

(assert (= (and start!734474 (is-ElementMatch!20358 r!14126)) b!7626642))

(assert (= (and start!734474 (is-Concat!29203 r!14126)) b!7626633))

(assert (= (and start!734474 (is-Star!20358 r!14126)) b!7626639))

(assert (= (and start!734474 (is-Union!20358 r!14126)) b!7626632))

(assert (= (and start!734474 (is-Cons!73085 s!9605)) b!7626641))

(assert (= (and start!734474 (is-Cons!73085 (_1!37940 cut!13))) b!7626634))

(assert (= (and start!734474 (is-Cons!73085 (_2!37940 cut!13))) b!7626638))

(declare-fun m!8155698 () Bool)

(assert (=> b!7626635 m!8155698))

(declare-fun m!8155700 () Bool)

(assert (=> b!7626635 m!8155700))

(declare-fun m!8155702 () Bool)

(assert (=> b!7626635 m!8155702))

(declare-fun m!8155704 () Bool)

(assert (=> b!7626635 m!8155704))

(assert (=> b!7626635 m!8155700))

(declare-fun m!8155706 () Bool)

(assert (=> b!7626635 m!8155706))

(declare-fun m!8155708 () Bool)

(assert (=> b!7626636 m!8155708))

(declare-fun m!8155710 () Bool)

(assert (=> start!734474 m!8155710))

(assert (=> b!7626637 m!8155704))

(declare-fun m!8155712 () Bool)

(assert (=> b!7626637 m!8155712))

(declare-fun m!8155714 () Bool)

(assert (=> b!7626640 m!8155714))

(declare-fun m!8155716 () Bool)

(assert (=> b!7626630 m!8155716))

(push 1)

(assert (not b!7626641))

(assert (not b!7626630))

(assert (not b!7626633))

(assert (not b!7626638))

(assert (not b!7626639))

(assert (not b!7626632))

(assert (not b!7626636))

(assert tp_is_empty!51071)

(assert (not b!7626640))

(assert (not start!734474))

(assert (not b!7626637))

(assert (not b!7626635))

(assert (not b!7626634))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2323711 () Bool)

(declare-fun choose!58858 (Int) Bool)

(assert (=> d!2323711 (= (Exists!4512 lambda!468796) (choose!58858 lambda!468796))))

(declare-fun bs!1943671 () Bool)

(assert (= bs!1943671 d!2323711))

(declare-fun m!8155738 () Bool)

(assert (=> bs!1943671 m!8155738))

(assert (=> b!7626637 d!2323711))

(declare-fun d!2323713 () Bool)

(assert (=> d!2323713 (isDefined!14047 (findConcatSeparation!3461 (regOne!41228 r!14126) (regTwo!41228 r!14126) Nil!73085 s!9605 s!9605))))

(declare-fun lt!2658009 () Unit!167644)

(declare-fun choose!58859 (Regex!20358 Regex!20358 List!73209) Unit!167644)

(assert (=> d!2323713 (= lt!2658009 (choose!58859 (regOne!41228 r!14126) (regTwo!41228 r!14126) s!9605))))

(assert (=> d!2323713 (validRegex!10776 (regOne!41228 r!14126))))

(assert (=> d!2323713 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!265 (regOne!41228 r!14126) (regTwo!41228 r!14126) s!9605) lt!2658009)))

(declare-fun bs!1943672 () Bool)

(assert (= bs!1943672 d!2323713))

(assert (=> bs!1943672 m!8155700))

(assert (=> bs!1943672 m!8155700))

(assert (=> bs!1943672 m!8155706))

(declare-fun m!8155740 () Bool)

(assert (=> bs!1943672 m!8155740))

(declare-fun m!8155742 () Bool)

(assert (=> bs!1943672 m!8155742))

(assert (=> b!7626637 d!2323713))

(declare-fun b!7626707 () Bool)

(declare-fun e!4534438 () List!73209)

(assert (=> b!7626707 (= e!4534438 (Cons!73085 (h!79533 (_1!37940 cut!13)) (++!17648 (t!387944 (_1!37940 cut!13)) (_2!37940 cut!13))))))

(declare-fun b!7626709 () Bool)

(declare-fun e!4534439 () Bool)

(declare-fun lt!2658012 () List!73209)

(assert (=> b!7626709 (= e!4534439 (or (not (= (_2!37940 cut!13) Nil!73085)) (= lt!2658012 (_1!37940 cut!13))))))

(declare-fun d!2323715 () Bool)

(assert (=> d!2323715 e!4534439))

(declare-fun res!3053993 () Bool)

(assert (=> d!2323715 (=> (not res!3053993) (not e!4534439))))

(declare-fun content!15458 (List!73209) (Set C!41042))

(assert (=> d!2323715 (= res!3053993 (= (content!15458 lt!2658012) (set.union (content!15458 (_1!37940 cut!13)) (content!15458 (_2!37940 cut!13)))))))

(assert (=> d!2323715 (= lt!2658012 e!4534438)))

(declare-fun c!1405245 () Bool)

(assert (=> d!2323715 (= c!1405245 (is-Nil!73085 (_1!37940 cut!13)))))

(assert (=> d!2323715 (= (++!17648 (_1!37940 cut!13) (_2!37940 cut!13)) lt!2658012)))

(declare-fun b!7626708 () Bool)

(declare-fun res!3053994 () Bool)

(assert (=> b!7626708 (=> (not res!3053994) (not e!4534439))))

(declare-fun size!42551 (List!73209) Int)

(assert (=> b!7626708 (= res!3053994 (= (size!42551 lt!2658012) (+ (size!42551 (_1!37940 cut!13)) (size!42551 (_2!37940 cut!13)))))))

(declare-fun b!7626706 () Bool)

(assert (=> b!7626706 (= e!4534438 (_2!37940 cut!13))))

(assert (= (and d!2323715 c!1405245) b!7626706))

(assert (= (and d!2323715 (not c!1405245)) b!7626707))

(assert (= (and d!2323715 res!3053993) b!7626708))

(assert (= (and b!7626708 res!3053994) b!7626709))

(declare-fun m!8155744 () Bool)

(assert (=> b!7626707 m!8155744))

(declare-fun m!8155746 () Bool)

(assert (=> d!2323715 m!8155746))

(declare-fun m!8155748 () Bool)

(assert (=> d!2323715 m!8155748))

(declare-fun m!8155750 () Bool)

(assert (=> d!2323715 m!8155750))

(declare-fun m!8155752 () Bool)

(assert (=> b!7626708 m!8155752))

(declare-fun m!8155754 () Bool)

(assert (=> b!7626708 m!8155754))

(declare-fun m!8155756 () Bool)

(assert (=> b!7626708 m!8155756))

(assert (=> b!7626636 d!2323715))

(declare-fun b!7626736 () Bool)

(declare-fun e!4534459 () Bool)

(declare-fun call!700222 () Bool)

(assert (=> b!7626736 (= e!4534459 call!700222)))

(declare-fun b!7626737 () Bool)

(declare-fun e!4534463 () Bool)

(declare-fun e!4534460 () Bool)

(assert (=> b!7626737 (= e!4534463 e!4534460)))

(declare-fun c!1405253 () Bool)

(assert (=> b!7626737 (= c!1405253 (is-Union!20358 (regTwo!41228 r!14126)))))

(declare-fun b!7626738 () Bool)

(declare-fun e!4534458 () Bool)

(declare-fun call!700223 () Bool)

(assert (=> b!7626738 (= e!4534458 call!700223)))

(declare-fun d!2323719 () Bool)

(declare-fun res!3054009 () Bool)

(declare-fun e!4534462 () Bool)

(assert (=> d!2323719 (=> res!3054009 e!4534462)))

(assert (=> d!2323719 (= res!3054009 (is-ElementMatch!20358 (regTwo!41228 r!14126)))))

(assert (=> d!2323719 (= (validRegex!10776 (regTwo!41228 r!14126)) e!4534462)))

(declare-fun b!7626739 () Bool)

(declare-fun e!4534464 () Bool)

(assert (=> b!7626739 (= e!4534464 call!700222)))

(declare-fun bm!700216 () Bool)

(assert (=> bm!700216 (= call!700222 (validRegex!10776 (ite c!1405253 (regTwo!41229 (regTwo!41228 r!14126)) (regTwo!41228 (regTwo!41228 r!14126)))))))

(declare-fun b!7626740 () Bool)

(declare-fun res!3054013 () Bool)

(assert (=> b!7626740 (=> (not res!3054013) (not e!4534459))))

(declare-fun call!700221 () Bool)

(assert (=> b!7626740 (= res!3054013 call!700221)))

(assert (=> b!7626740 (= e!4534460 e!4534459)))

(declare-fun bm!700217 () Bool)

(declare-fun c!1405252 () Bool)

(assert (=> bm!700217 (= call!700223 (validRegex!10776 (ite c!1405252 (reg!20687 (regTwo!41228 r!14126)) (ite c!1405253 (regOne!41229 (regTwo!41228 r!14126)) (regOne!41228 (regTwo!41228 r!14126))))))))

(declare-fun b!7626741 () Bool)

(declare-fun e!4534461 () Bool)

(assert (=> b!7626741 (= e!4534461 e!4534464)))

(declare-fun res!3054010 () Bool)

(assert (=> b!7626741 (=> (not res!3054010) (not e!4534464))))

(assert (=> b!7626741 (= res!3054010 call!700221)))

(declare-fun b!7626742 () Bool)

(declare-fun res!3054012 () Bool)

(assert (=> b!7626742 (=> res!3054012 e!4534461)))

(assert (=> b!7626742 (= res!3054012 (not (is-Concat!29203 (regTwo!41228 r!14126))))))

(assert (=> b!7626742 (= e!4534460 e!4534461)))

(declare-fun bm!700218 () Bool)

(assert (=> bm!700218 (= call!700221 call!700223)))

(declare-fun b!7626743 () Bool)

(assert (=> b!7626743 (= e!4534463 e!4534458)))

(declare-fun res!3054011 () Bool)

(declare-fun nullable!8897 (Regex!20358) Bool)

(assert (=> b!7626743 (= res!3054011 (not (nullable!8897 (reg!20687 (regTwo!41228 r!14126)))))))

(assert (=> b!7626743 (=> (not res!3054011) (not e!4534458))))

(declare-fun b!7626744 () Bool)

(assert (=> b!7626744 (= e!4534462 e!4534463)))

(assert (=> b!7626744 (= c!1405252 (is-Star!20358 (regTwo!41228 r!14126)))))

(assert (= (and d!2323719 (not res!3054009)) b!7626744))

(assert (= (and b!7626744 c!1405252) b!7626743))

(assert (= (and b!7626744 (not c!1405252)) b!7626737))

(assert (= (and b!7626743 res!3054011) b!7626738))

(assert (= (and b!7626737 c!1405253) b!7626740))

(assert (= (and b!7626737 (not c!1405253)) b!7626742))

(assert (= (and b!7626740 res!3054013) b!7626736))

(assert (= (and b!7626742 (not res!3054012)) b!7626741))

(assert (= (and b!7626741 res!3054010) b!7626739))

(assert (= (or b!7626740 b!7626741) bm!700218))

(assert (= (or b!7626736 b!7626739) bm!700216))

(assert (= (or b!7626738 bm!700218) bm!700217))

(declare-fun m!8155758 () Bool)

(assert (=> bm!700216 m!8155758))

(declare-fun m!8155760 () Bool)

(assert (=> bm!700217 m!8155760))

(declare-fun m!8155762 () Bool)

(assert (=> b!7626743 m!8155762))

(assert (=> b!7626630 d!2323719))

(declare-fun b!7626777 () Bool)

(declare-fun e!4534481 () Bool)

(declare-fun e!4534485 () Bool)

(assert (=> b!7626777 (= e!4534481 e!4534485)))

(declare-fun res!3054033 () Bool)

(assert (=> b!7626777 (=> (not res!3054033) (not e!4534485))))

(declare-fun lt!2658020 () Bool)

(assert (=> b!7626777 (= res!3054033 (not lt!2658020))))

(declare-fun b!7626778 () Bool)

(declare-fun res!3054032 () Bool)

(declare-fun e!4534484 () Bool)

(assert (=> b!7626778 (=> res!3054032 e!4534484)))

(declare-fun isEmpty!41714 (List!73209) Bool)

(declare-fun tail!15211 (List!73209) List!73209)

(assert (=> b!7626778 (= res!3054032 (not (isEmpty!41714 (tail!15211 (_1!37940 cut!13)))))))

(declare-fun bm!700221 () Bool)

(declare-fun call!700226 () Bool)

(assert (=> bm!700221 (= call!700226 (isEmpty!41714 (_1!37940 cut!13)))))

(declare-fun b!7626779 () Bool)

(declare-fun e!4534482 () Bool)

(declare-fun head!15671 (List!73209) C!41042)

(assert (=> b!7626779 (= e!4534482 (= (head!15671 (_1!37940 cut!13)) (c!1405241 (regOne!41228 r!14126))))))

(declare-fun b!7626780 () Bool)

(declare-fun e!4534486 () Bool)

(declare-fun derivativeStep!5871 (Regex!20358 C!41042) Regex!20358)

(assert (=> b!7626780 (= e!4534486 (matchR!9861 (derivativeStep!5871 (regOne!41228 r!14126) (head!15671 (_1!37940 cut!13))) (tail!15211 (_1!37940 cut!13))))))

(declare-fun b!7626781 () Bool)

(declare-fun e!4534483 () Bool)

(assert (=> b!7626781 (= e!4534483 (= lt!2658020 call!700226))))

(declare-fun b!7626782 () Bool)

(declare-fun e!4534487 () Bool)

(assert (=> b!7626782 (= e!4534483 e!4534487)))

(declare-fun c!1405263 () Bool)

(assert (=> b!7626782 (= c!1405263 (is-EmptyLang!20358 (regOne!41228 r!14126)))))

(declare-fun b!7626783 () Bool)

(declare-fun res!3054035 () Bool)

(assert (=> b!7626783 (=> res!3054035 e!4534481)))

(assert (=> b!7626783 (= res!3054035 e!4534482)))

(declare-fun res!3054038 () Bool)

(assert (=> b!7626783 (=> (not res!3054038) (not e!4534482))))

(assert (=> b!7626783 (= res!3054038 lt!2658020)))

(declare-fun b!7626784 () Bool)

(assert (=> b!7626784 (= e!4534484 (not (= (head!15671 (_1!37940 cut!13)) (c!1405241 (regOne!41228 r!14126)))))))

(declare-fun d!2323721 () Bool)

(assert (=> d!2323721 e!4534483))

(declare-fun c!1405261 () Bool)

(assert (=> d!2323721 (= c!1405261 (is-EmptyExpr!20358 (regOne!41228 r!14126)))))

(assert (=> d!2323721 (= lt!2658020 e!4534486)))

(declare-fun c!1405262 () Bool)

(assert (=> d!2323721 (= c!1405262 (isEmpty!41714 (_1!37940 cut!13)))))

(assert (=> d!2323721 (validRegex!10776 (regOne!41228 r!14126))))

(assert (=> d!2323721 (= (matchR!9861 (regOne!41228 r!14126) (_1!37940 cut!13)) lt!2658020)))

(declare-fun b!7626785 () Bool)

(assert (=> b!7626785 (= e!4534487 (not lt!2658020))))

(declare-fun b!7626786 () Bool)

(assert (=> b!7626786 (= e!4534485 e!4534484)))

(declare-fun res!3054034 () Bool)

(assert (=> b!7626786 (=> res!3054034 e!4534484)))

(assert (=> b!7626786 (= res!3054034 call!700226)))

(declare-fun b!7626787 () Bool)

(declare-fun res!3054039 () Bool)

(assert (=> b!7626787 (=> (not res!3054039) (not e!4534482))))

(assert (=> b!7626787 (= res!3054039 (isEmpty!41714 (tail!15211 (_1!37940 cut!13))))))

(declare-fun b!7626788 () Bool)

(declare-fun res!3054036 () Bool)

(assert (=> b!7626788 (=> res!3054036 e!4534481)))

(assert (=> b!7626788 (= res!3054036 (not (is-ElementMatch!20358 (regOne!41228 r!14126))))))

(assert (=> b!7626788 (= e!4534487 e!4534481)))

(declare-fun b!7626789 () Bool)

(declare-fun res!3054037 () Bool)

(assert (=> b!7626789 (=> (not res!3054037) (not e!4534482))))

(assert (=> b!7626789 (= res!3054037 (not call!700226))))

(declare-fun b!7626790 () Bool)

(assert (=> b!7626790 (= e!4534486 (nullable!8897 (regOne!41228 r!14126)))))

(assert (= (and d!2323721 c!1405262) b!7626790))

(assert (= (and d!2323721 (not c!1405262)) b!7626780))

(assert (= (and d!2323721 c!1405261) b!7626781))

(assert (= (and d!2323721 (not c!1405261)) b!7626782))

(assert (= (and b!7626782 c!1405263) b!7626785))

(assert (= (and b!7626782 (not c!1405263)) b!7626788))

(assert (= (and b!7626788 (not res!3054036)) b!7626783))

(assert (= (and b!7626783 res!3054038) b!7626789))

(assert (= (and b!7626789 res!3054037) b!7626787))

(assert (= (and b!7626787 res!3054039) b!7626779))

(assert (= (and b!7626783 (not res!3054035)) b!7626777))

(assert (= (and b!7626777 res!3054033) b!7626786))

(assert (= (and b!7626786 (not res!3054034)) b!7626778))

(assert (= (and b!7626778 (not res!3054032)) b!7626784))

(assert (= (or b!7626781 b!7626789 b!7626786) bm!700221))

(declare-fun m!8155780 () Bool)

(assert (=> b!7626779 m!8155780))

(declare-fun m!8155782 () Bool)

(assert (=> bm!700221 m!8155782))

(declare-fun m!8155784 () Bool)

(assert (=> b!7626778 m!8155784))

(assert (=> b!7626778 m!8155784))

(declare-fun m!8155786 () Bool)

(assert (=> b!7626778 m!8155786))

(assert (=> b!7626780 m!8155780))

(assert (=> b!7626780 m!8155780))

(declare-fun m!8155788 () Bool)

(assert (=> b!7626780 m!8155788))

(assert (=> b!7626780 m!8155784))

(assert (=> b!7626780 m!8155788))

(assert (=> b!7626780 m!8155784))

(declare-fun m!8155790 () Bool)

(assert (=> b!7626780 m!8155790))

(assert (=> b!7626784 m!8155780))

(assert (=> d!2323721 m!8155782))

(assert (=> d!2323721 m!8155742))

(declare-fun m!8155792 () Bool)

(assert (=> b!7626790 m!8155792))

(assert (=> b!7626787 m!8155784))

(assert (=> b!7626787 m!8155784))

(assert (=> b!7626787 m!8155786))

(assert (=> b!7626640 d!2323721))

(declare-fun b!7626791 () Bool)

(declare-fun e!4534488 () Bool)

(declare-fun e!4534492 () Bool)

(assert (=> b!7626791 (= e!4534488 e!4534492)))

(declare-fun res!3054041 () Bool)

(assert (=> b!7626791 (=> (not res!3054041) (not e!4534492))))

(declare-fun lt!2658022 () Bool)

(assert (=> b!7626791 (= res!3054041 (not lt!2658022))))

(declare-fun b!7626792 () Bool)

(declare-fun res!3054040 () Bool)

(declare-fun e!4534491 () Bool)

(assert (=> b!7626792 (=> res!3054040 e!4534491)))

(assert (=> b!7626792 (= res!3054040 (not (isEmpty!41714 (tail!15211 s!9605))))))

(declare-fun bm!700222 () Bool)

(declare-fun call!700227 () Bool)

(assert (=> bm!700222 (= call!700227 (isEmpty!41714 s!9605))))

(declare-fun b!7626793 () Bool)

(declare-fun e!4534489 () Bool)

(assert (=> b!7626793 (= e!4534489 (= (head!15671 s!9605) (c!1405241 r!14126)))))

(declare-fun b!7626794 () Bool)

(declare-fun e!4534493 () Bool)

(assert (=> b!7626794 (= e!4534493 (matchR!9861 (derivativeStep!5871 r!14126 (head!15671 s!9605)) (tail!15211 s!9605)))))

(declare-fun b!7626795 () Bool)

(declare-fun e!4534490 () Bool)

(assert (=> b!7626795 (= e!4534490 (= lt!2658022 call!700227))))

(declare-fun b!7626796 () Bool)

(declare-fun e!4534494 () Bool)

(assert (=> b!7626796 (= e!4534490 e!4534494)))

(declare-fun c!1405266 () Bool)

(assert (=> b!7626796 (= c!1405266 (is-EmptyLang!20358 r!14126))))

(declare-fun b!7626797 () Bool)

(declare-fun res!3054043 () Bool)

(assert (=> b!7626797 (=> res!3054043 e!4534488)))

(assert (=> b!7626797 (= res!3054043 e!4534489)))

(declare-fun res!3054046 () Bool)

(assert (=> b!7626797 (=> (not res!3054046) (not e!4534489))))

(assert (=> b!7626797 (= res!3054046 lt!2658022)))

(declare-fun b!7626798 () Bool)

(assert (=> b!7626798 (= e!4534491 (not (= (head!15671 s!9605) (c!1405241 r!14126))))))

(declare-fun d!2323727 () Bool)

(assert (=> d!2323727 e!4534490))

(declare-fun c!1405264 () Bool)

(assert (=> d!2323727 (= c!1405264 (is-EmptyExpr!20358 r!14126))))

(assert (=> d!2323727 (= lt!2658022 e!4534493)))

(declare-fun c!1405265 () Bool)

(assert (=> d!2323727 (= c!1405265 (isEmpty!41714 s!9605))))

(assert (=> d!2323727 (validRegex!10776 r!14126)))

(assert (=> d!2323727 (= (matchR!9861 r!14126 s!9605) lt!2658022)))

(declare-fun b!7626799 () Bool)

(assert (=> b!7626799 (= e!4534494 (not lt!2658022))))

(declare-fun b!7626800 () Bool)

(assert (=> b!7626800 (= e!4534492 e!4534491)))

(declare-fun res!3054042 () Bool)

(assert (=> b!7626800 (=> res!3054042 e!4534491)))

(assert (=> b!7626800 (= res!3054042 call!700227)))

(declare-fun b!7626801 () Bool)

(declare-fun res!3054047 () Bool)

(assert (=> b!7626801 (=> (not res!3054047) (not e!4534489))))

(assert (=> b!7626801 (= res!3054047 (isEmpty!41714 (tail!15211 s!9605)))))

(declare-fun b!7626802 () Bool)

(declare-fun res!3054044 () Bool)

(assert (=> b!7626802 (=> res!3054044 e!4534488)))

(assert (=> b!7626802 (= res!3054044 (not (is-ElementMatch!20358 r!14126)))))

(assert (=> b!7626802 (= e!4534494 e!4534488)))

(declare-fun b!7626803 () Bool)

(declare-fun res!3054045 () Bool)

(assert (=> b!7626803 (=> (not res!3054045) (not e!4534489))))

(assert (=> b!7626803 (= res!3054045 (not call!700227))))

(declare-fun b!7626804 () Bool)

(assert (=> b!7626804 (= e!4534493 (nullable!8897 r!14126))))

(assert (= (and d!2323727 c!1405265) b!7626804))

(assert (= (and d!2323727 (not c!1405265)) b!7626794))

(assert (= (and d!2323727 c!1405264) b!7626795))

(assert (= (and d!2323727 (not c!1405264)) b!7626796))

(assert (= (and b!7626796 c!1405266) b!7626799))

(assert (= (and b!7626796 (not c!1405266)) b!7626802))

(assert (= (and b!7626802 (not res!3054044)) b!7626797))

(assert (= (and b!7626797 res!3054046) b!7626803))

(assert (= (and b!7626803 res!3054045) b!7626801))

(assert (= (and b!7626801 res!3054047) b!7626793))

(assert (= (and b!7626797 (not res!3054043)) b!7626791))

(assert (= (and b!7626791 res!3054041) b!7626800))

(assert (= (and b!7626800 (not res!3054042)) b!7626792))

(assert (= (and b!7626792 (not res!3054040)) b!7626798))

(assert (= (or b!7626795 b!7626803 b!7626800) bm!700222))

(declare-fun m!8155798 () Bool)

(assert (=> b!7626793 m!8155798))

(declare-fun m!8155800 () Bool)

(assert (=> bm!700222 m!8155800))

(declare-fun m!8155802 () Bool)

(assert (=> b!7626792 m!8155802))

(assert (=> b!7626792 m!8155802))

(declare-fun m!8155804 () Bool)

(assert (=> b!7626792 m!8155804))

(assert (=> b!7626794 m!8155798))

(assert (=> b!7626794 m!8155798))

(declare-fun m!8155806 () Bool)

(assert (=> b!7626794 m!8155806))

(assert (=> b!7626794 m!8155802))

(assert (=> b!7626794 m!8155806))

(assert (=> b!7626794 m!8155802))

(declare-fun m!8155808 () Bool)

(assert (=> b!7626794 m!8155808))

(assert (=> b!7626798 m!8155798))

(assert (=> d!2323727 m!8155800))

(assert (=> d!2323727 m!8155710))

(declare-fun m!8155810 () Bool)

(assert (=> b!7626804 m!8155810))

(assert (=> b!7626801 m!8155802))

(assert (=> b!7626801 m!8155802))

(assert (=> b!7626801 m!8155804))

(assert (=> b!7626635 d!2323727))

(declare-fun bs!1943675 () Bool)

(declare-fun d!2323731 () Bool)

(assert (= bs!1943675 (and d!2323731 b!7626635)))

(declare-fun lambda!468804 () Int)

(assert (=> bs!1943675 (= lambda!468804 lambda!468796)))

(assert (=> d!2323731 true))

(assert (=> d!2323731 true))

(assert (=> d!2323731 true))

(assert (=> d!2323731 (= (isDefined!14047 (findConcatSeparation!3461 (regOne!41228 r!14126) (regTwo!41228 r!14126) Nil!73085 s!9605 s!9605)) (Exists!4512 lambda!468804))))

(declare-fun lt!2658025 () Unit!167644)

(declare-fun choose!58860 (Regex!20358 Regex!20358 List!73209) Unit!167644)

(assert (=> d!2323731 (= lt!2658025 (choose!58860 (regOne!41228 r!14126) (regTwo!41228 r!14126) s!9605))))

(assert (=> d!2323731 (validRegex!10776 (regOne!41228 r!14126))))

(assert (=> d!2323731 (= (lemmaFindConcatSeparationEquivalentToExists!3219 (regOne!41228 r!14126) (regTwo!41228 r!14126) s!9605) lt!2658025)))

(declare-fun bs!1943676 () Bool)

(assert (= bs!1943676 d!2323731))

(declare-fun m!8155812 () Bool)

(assert (=> bs!1943676 m!8155812))

(assert (=> bs!1943676 m!8155700))

(declare-fun m!8155814 () Bool)

(assert (=> bs!1943676 m!8155814))

(assert (=> bs!1943676 m!8155700))

(assert (=> bs!1943676 m!8155706))

(assert (=> bs!1943676 m!8155742))

(assert (=> b!7626635 d!2323731))

(declare-fun d!2323733 () Bool)

(declare-fun isEmpty!41715 (Option!17431) Bool)

(assert (=> d!2323733 (= (isDefined!14047 (findConcatSeparation!3461 (regOne!41228 r!14126) (regTwo!41228 r!14126) Nil!73085 s!9605 s!9605)) (not (isEmpty!41715 (findConcatSeparation!3461 (regOne!41228 r!14126) (regTwo!41228 r!14126) Nil!73085 s!9605 s!9605))))))

(declare-fun bs!1943677 () Bool)

(assert (= bs!1943677 d!2323733))

(assert (=> bs!1943677 m!8155700))

(declare-fun m!8155816 () Bool)

(assert (=> bs!1943677 m!8155816))

(assert (=> b!7626635 d!2323733))

(declare-fun b!7626856 () Bool)

(declare-fun e!4534524 () Option!17431)

(declare-fun e!4534522 () Option!17431)

(assert (=> b!7626856 (= e!4534524 e!4534522)))

(declare-fun c!1405277 () Bool)

(assert (=> b!7626856 (= c!1405277 (is-Nil!73085 s!9605))))

(declare-fun b!7626857 () Bool)

(declare-fun e!4534523 () Bool)

(assert (=> b!7626857 (= e!4534523 (matchR!9861 (regTwo!41228 r!14126) s!9605))))

(declare-fun b!7626858 () Bool)

(declare-fun e!4534525 () Bool)

(declare-fun lt!2658036 () Option!17431)

(declare-fun get!25818 (Option!17431) tuple2!69274)

(assert (=> b!7626858 (= e!4534525 (= (++!17648 (_1!37940 (get!25818 lt!2658036)) (_2!37940 (get!25818 lt!2658036))) s!9605))))

(declare-fun b!7626859 () Bool)

(declare-fun lt!2658035 () Unit!167644)

(declare-fun lt!2658034 () Unit!167644)

(assert (=> b!7626859 (= lt!2658035 lt!2658034)))

(assert (=> b!7626859 (= (++!17648 (++!17648 Nil!73085 (Cons!73085 (h!79533 s!9605) Nil!73085)) (t!387944 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3231 (List!73209 C!41042 List!73209 List!73209) Unit!167644)

(assert (=> b!7626859 (= lt!2658034 (lemmaMoveElementToOtherListKeepsConcatEq!3231 Nil!73085 (h!79533 s!9605) (t!387944 s!9605) s!9605))))

(assert (=> b!7626859 (= e!4534522 (findConcatSeparation!3461 (regOne!41228 r!14126) (regTwo!41228 r!14126) (++!17648 Nil!73085 (Cons!73085 (h!79533 s!9605) Nil!73085)) (t!387944 s!9605) s!9605))))

(declare-fun b!7626855 () Bool)

(declare-fun e!4534521 () Bool)

(assert (=> b!7626855 (= e!4534521 (not (isDefined!14047 lt!2658036)))))

(declare-fun d!2323735 () Bool)

(assert (=> d!2323735 e!4534521))

(declare-fun res!3054080 () Bool)

(assert (=> d!2323735 (=> res!3054080 e!4534521)))

(assert (=> d!2323735 (= res!3054080 e!4534525)))

(declare-fun res!3054079 () Bool)

(assert (=> d!2323735 (=> (not res!3054079) (not e!4534525))))

(assert (=> d!2323735 (= res!3054079 (isDefined!14047 lt!2658036))))

(assert (=> d!2323735 (= lt!2658036 e!4534524)))

(declare-fun c!1405278 () Bool)

(assert (=> d!2323735 (= c!1405278 e!4534523)))

(declare-fun res!3054078 () Bool)

(assert (=> d!2323735 (=> (not res!3054078) (not e!4534523))))

(assert (=> d!2323735 (= res!3054078 (matchR!9861 (regOne!41228 r!14126) Nil!73085))))

(assert (=> d!2323735 (validRegex!10776 (regOne!41228 r!14126))))

(assert (=> d!2323735 (= (findConcatSeparation!3461 (regOne!41228 r!14126) (regTwo!41228 r!14126) Nil!73085 s!9605 s!9605) lt!2658036)))

(declare-fun b!7626860 () Bool)

(declare-fun res!3054081 () Bool)

(assert (=> b!7626860 (=> (not res!3054081) (not e!4534525))))

(assert (=> b!7626860 (= res!3054081 (matchR!9861 (regTwo!41228 r!14126) (_2!37940 (get!25818 lt!2658036))))))

(declare-fun b!7626861 () Bool)

(declare-fun res!3054082 () Bool)

(assert (=> b!7626861 (=> (not res!3054082) (not e!4534525))))

(assert (=> b!7626861 (= res!3054082 (matchR!9861 (regOne!41228 r!14126) (_1!37940 (get!25818 lt!2658036))))))

(declare-fun b!7626862 () Bool)

(assert (=> b!7626862 (= e!4534522 None!17430)))

(declare-fun b!7626863 () Bool)

(assert (=> b!7626863 (= e!4534524 (Some!17430 (tuple2!69275 Nil!73085 s!9605)))))

(assert (= (and d!2323735 res!3054078) b!7626857))

(assert (= (and d!2323735 c!1405278) b!7626863))

(assert (= (and d!2323735 (not c!1405278)) b!7626856))

(assert (= (and b!7626856 c!1405277) b!7626862))

(assert (= (and b!7626856 (not c!1405277)) b!7626859))

(assert (= (and d!2323735 res!3054079) b!7626861))

(assert (= (and b!7626861 res!3054082) b!7626860))

(assert (= (and b!7626860 res!3054081) b!7626858))

(assert (= (and d!2323735 (not res!3054080)) b!7626855))

(declare-fun m!8155818 () Bool)

(assert (=> b!7626858 m!8155818))

(declare-fun m!8155820 () Bool)

(assert (=> b!7626858 m!8155820))

(assert (=> b!7626860 m!8155818))

(declare-fun m!8155822 () Bool)

(assert (=> b!7626860 m!8155822))

(declare-fun m!8155824 () Bool)

(assert (=> b!7626859 m!8155824))

(assert (=> b!7626859 m!8155824))

(declare-fun m!8155826 () Bool)

(assert (=> b!7626859 m!8155826))

(declare-fun m!8155828 () Bool)

(assert (=> b!7626859 m!8155828))

(assert (=> b!7626859 m!8155824))

(declare-fun m!8155830 () Bool)

(assert (=> b!7626859 m!8155830))

(declare-fun m!8155832 () Bool)

(assert (=> b!7626857 m!8155832))

(assert (=> b!7626861 m!8155818))

(declare-fun m!8155834 () Bool)

(assert (=> b!7626861 m!8155834))

(declare-fun m!8155836 () Bool)

(assert (=> d!2323735 m!8155836))

(declare-fun m!8155838 () Bool)

(assert (=> d!2323735 m!8155838))

(assert (=> d!2323735 m!8155742))

(assert (=> b!7626855 m!8155836))

(assert (=> b!7626635 d!2323735))

(assert (=> b!7626635 d!2323711))

(declare-fun b!7626878 () Bool)

(declare-fun e!4534534 () Bool)

(declare-fun call!700232 () Bool)

(assert (=> b!7626878 (= e!4534534 call!700232)))

(declare-fun b!7626879 () Bool)

(declare-fun e!4534538 () Bool)

(declare-fun e!4534535 () Bool)

(assert (=> b!7626879 (= e!4534538 e!4534535)))

(declare-fun c!1405283 () Bool)

(assert (=> b!7626879 (= c!1405283 (is-Union!20358 r!14126))))

(declare-fun b!7626880 () Bool)

(declare-fun e!4534533 () Bool)

(declare-fun call!700233 () Bool)

(assert (=> b!7626880 (= e!4534533 call!700233)))

(declare-fun d!2323737 () Bool)

(declare-fun res!3054091 () Bool)

(declare-fun e!4534537 () Bool)

(assert (=> d!2323737 (=> res!3054091 e!4534537)))

(assert (=> d!2323737 (= res!3054091 (is-ElementMatch!20358 r!14126))))

(assert (=> d!2323737 (= (validRegex!10776 r!14126) e!4534537)))

(declare-fun b!7626881 () Bool)

(declare-fun e!4534539 () Bool)

(assert (=> b!7626881 (= e!4534539 call!700232)))

(declare-fun bm!700226 () Bool)

(assert (=> bm!700226 (= call!700232 (validRegex!10776 (ite c!1405283 (regTwo!41229 r!14126) (regTwo!41228 r!14126))))))

(declare-fun b!7626882 () Bool)

(declare-fun res!3054095 () Bool)

(assert (=> b!7626882 (=> (not res!3054095) (not e!4534534))))

(declare-fun call!700231 () Bool)

(assert (=> b!7626882 (= res!3054095 call!700231)))

(assert (=> b!7626882 (= e!4534535 e!4534534)))

(declare-fun c!1405282 () Bool)

(declare-fun bm!700227 () Bool)

(assert (=> bm!700227 (= call!700233 (validRegex!10776 (ite c!1405282 (reg!20687 r!14126) (ite c!1405283 (regOne!41229 r!14126) (regOne!41228 r!14126)))))))

(declare-fun b!7626883 () Bool)

(declare-fun e!4534536 () Bool)

(assert (=> b!7626883 (= e!4534536 e!4534539)))

(declare-fun res!3054092 () Bool)

(assert (=> b!7626883 (=> (not res!3054092) (not e!4534539))))

(assert (=> b!7626883 (= res!3054092 call!700231)))

(declare-fun b!7626884 () Bool)

(declare-fun res!3054094 () Bool)

(assert (=> b!7626884 (=> res!3054094 e!4534536)))

(assert (=> b!7626884 (= res!3054094 (not (is-Concat!29203 r!14126)))))

(assert (=> b!7626884 (= e!4534535 e!4534536)))

(declare-fun bm!700228 () Bool)

(assert (=> bm!700228 (= call!700231 call!700233)))

(declare-fun b!7626885 () Bool)

(assert (=> b!7626885 (= e!4534538 e!4534533)))

(declare-fun res!3054093 () Bool)

(assert (=> b!7626885 (= res!3054093 (not (nullable!8897 (reg!20687 r!14126))))))

(assert (=> b!7626885 (=> (not res!3054093) (not e!4534533))))

(declare-fun b!7626886 () Bool)

(assert (=> b!7626886 (= e!4534537 e!4534538)))

(assert (=> b!7626886 (= c!1405282 (is-Star!20358 r!14126))))

(assert (= (and d!2323737 (not res!3054091)) b!7626886))

(assert (= (and b!7626886 c!1405282) b!7626885))

(assert (= (and b!7626886 (not c!1405282)) b!7626879))

(assert (= (and b!7626885 res!3054093) b!7626880))

(assert (= (and b!7626879 c!1405283) b!7626882))

(assert (= (and b!7626879 (not c!1405283)) b!7626884))

(assert (= (and b!7626882 res!3054095) b!7626878))

(assert (= (and b!7626884 (not res!3054094)) b!7626883))

(assert (= (and b!7626883 res!3054092) b!7626881))

(assert (= (or b!7626882 b!7626883) bm!700228))

(assert (= (or b!7626878 b!7626881) bm!700226))

(assert (= (or b!7626880 bm!700228) bm!700227))

(declare-fun m!8155840 () Bool)

(assert (=> bm!700226 m!8155840))

(declare-fun m!8155842 () Bool)

(assert (=> bm!700227 m!8155842))

(declare-fun m!8155844 () Bool)

(assert (=> b!7626885 m!8155844))

(assert (=> start!734474 d!2323737))

(declare-fun b!7626891 () Bool)

(declare-fun e!4534542 () Bool)

(declare-fun tp!2226804 () Bool)

(assert (=> b!7626891 (= e!4534542 (and tp_is_empty!51071 tp!2226804))))

(assert (=> b!7626638 (= tp!2226777 e!4534542)))

(assert (= (and b!7626638 (is-Cons!73085 (t!387944 (_2!37940 cut!13)))) b!7626891))

(declare-fun b!7626905 () Bool)

(declare-fun e!4534545 () Bool)

(declare-fun tp!2226818 () Bool)

(declare-fun tp!2226816 () Bool)

(assert (=> b!7626905 (= e!4534545 (and tp!2226818 tp!2226816))))

(declare-fun b!7626902 () Bool)

(assert (=> b!7626902 (= e!4534545 tp_is_empty!51071)))

(declare-fun b!7626904 () Bool)

(declare-fun tp!2226815 () Bool)

(assert (=> b!7626904 (= e!4534545 tp!2226815)))

(declare-fun b!7626903 () Bool)

(declare-fun tp!2226819 () Bool)

(declare-fun tp!2226817 () Bool)

(assert (=> b!7626903 (= e!4534545 (and tp!2226819 tp!2226817))))

(assert (=> b!7626633 (= tp!2226773 e!4534545)))

(assert (= (and b!7626633 (is-ElementMatch!20358 (regOne!41228 r!14126))) b!7626902))

(assert (= (and b!7626633 (is-Concat!29203 (regOne!41228 r!14126))) b!7626903))

(assert (= (and b!7626633 (is-Star!20358 (regOne!41228 r!14126))) b!7626904))

(assert (= (and b!7626633 (is-Union!20358 (regOne!41228 r!14126))) b!7626905))

(declare-fun b!7626909 () Bool)

(declare-fun e!4534546 () Bool)

(declare-fun tp!2226823 () Bool)

(declare-fun tp!2226821 () Bool)

(assert (=> b!7626909 (= e!4534546 (and tp!2226823 tp!2226821))))

(declare-fun b!7626906 () Bool)

(assert (=> b!7626906 (= e!4534546 tp_is_empty!51071)))

(declare-fun b!7626908 () Bool)

(declare-fun tp!2226820 () Bool)

(assert (=> b!7626908 (= e!4534546 tp!2226820)))

(declare-fun b!7626907 () Bool)

(declare-fun tp!2226824 () Bool)

(declare-fun tp!2226822 () Bool)

(assert (=> b!7626907 (= e!4534546 (and tp!2226824 tp!2226822))))

(assert (=> b!7626633 (= tp!2226770 e!4534546)))

(assert (= (and b!7626633 (is-ElementMatch!20358 (regTwo!41228 r!14126))) b!7626906))

(assert (= (and b!7626633 (is-Concat!29203 (regTwo!41228 r!14126))) b!7626907))

(assert (= (and b!7626633 (is-Star!20358 (regTwo!41228 r!14126))) b!7626908))

(assert (= (and b!7626633 (is-Union!20358 (regTwo!41228 r!14126))) b!7626909))

(declare-fun b!7626913 () Bool)

(declare-fun e!4534547 () Bool)

(declare-fun tp!2226828 () Bool)

(declare-fun tp!2226826 () Bool)

(assert (=> b!7626913 (= e!4534547 (and tp!2226828 tp!2226826))))

(declare-fun b!7626910 () Bool)

(assert (=> b!7626910 (= e!4534547 tp_is_empty!51071)))

(declare-fun b!7626912 () Bool)

(declare-fun tp!2226825 () Bool)

(assert (=> b!7626912 (= e!4534547 tp!2226825)))

(declare-fun b!7626911 () Bool)

(declare-fun tp!2226829 () Bool)

(declare-fun tp!2226827 () Bool)

(assert (=> b!7626911 (= e!4534547 (and tp!2226829 tp!2226827))))

(assert (=> b!7626632 (= tp!2226771 e!4534547)))

(assert (= (and b!7626632 (is-ElementMatch!20358 (regOne!41229 r!14126))) b!7626910))

(assert (= (and b!7626632 (is-Concat!29203 (regOne!41229 r!14126))) b!7626911))

(assert (= (and b!7626632 (is-Star!20358 (regOne!41229 r!14126))) b!7626912))

(assert (= (and b!7626632 (is-Union!20358 (regOne!41229 r!14126))) b!7626913))

(declare-fun b!7626917 () Bool)

(declare-fun e!4534548 () Bool)

(declare-fun tp!2226833 () Bool)

(declare-fun tp!2226831 () Bool)

(assert (=> b!7626917 (= e!4534548 (and tp!2226833 tp!2226831))))

(declare-fun b!7626914 () Bool)

(assert (=> b!7626914 (= e!4534548 tp_is_empty!51071)))

(declare-fun b!7626916 () Bool)

(declare-fun tp!2226830 () Bool)

(assert (=> b!7626916 (= e!4534548 tp!2226830)))

(declare-fun b!7626915 () Bool)

(declare-fun tp!2226834 () Bool)

(declare-fun tp!2226832 () Bool)

(assert (=> b!7626915 (= e!4534548 (and tp!2226834 tp!2226832))))

(assert (=> b!7626632 (= tp!2226772 e!4534548)))

(assert (= (and b!7626632 (is-ElementMatch!20358 (regTwo!41229 r!14126))) b!7626914))

(assert (= (and b!7626632 (is-Concat!29203 (regTwo!41229 r!14126))) b!7626915))

(assert (= (and b!7626632 (is-Star!20358 (regTwo!41229 r!14126))) b!7626916))

(assert (= (and b!7626632 (is-Union!20358 (regTwo!41229 r!14126))) b!7626917))

(declare-fun b!7626918 () Bool)

(declare-fun e!4534549 () Bool)

(declare-fun tp!2226835 () Bool)

(assert (=> b!7626918 (= e!4534549 (and tp_is_empty!51071 tp!2226835))))

(assert (=> b!7626641 (= tp!2226776 e!4534549)))

(assert (= (and b!7626641 (is-Cons!73085 (t!387944 s!9605))) b!7626918))

(declare-fun b!7626919 () Bool)

(declare-fun e!4534550 () Bool)

(declare-fun tp!2226836 () Bool)

(assert (=> b!7626919 (= e!4534550 (and tp_is_empty!51071 tp!2226836))))

(assert (=> b!7626634 (= tp!2226774 e!4534550)))

(assert (= (and b!7626634 (is-Cons!73085 (t!387944 (_1!37940 cut!13)))) b!7626919))

(declare-fun b!7626923 () Bool)

(declare-fun e!4534551 () Bool)

(declare-fun tp!2226840 () Bool)

(declare-fun tp!2226838 () Bool)

(assert (=> b!7626923 (= e!4534551 (and tp!2226840 tp!2226838))))

(declare-fun b!7626920 () Bool)

(assert (=> b!7626920 (= e!4534551 tp_is_empty!51071)))

(declare-fun b!7626922 () Bool)

(declare-fun tp!2226837 () Bool)

(assert (=> b!7626922 (= e!4534551 tp!2226837)))

(declare-fun b!7626921 () Bool)

(declare-fun tp!2226841 () Bool)

(declare-fun tp!2226839 () Bool)

(assert (=> b!7626921 (= e!4534551 (and tp!2226841 tp!2226839))))

(assert (=> b!7626639 (= tp!2226775 e!4534551)))

(assert (= (and b!7626639 (is-ElementMatch!20358 (reg!20687 r!14126))) b!7626920))

(assert (= (and b!7626639 (is-Concat!29203 (reg!20687 r!14126))) b!7626921))

(assert (= (and b!7626639 (is-Star!20358 (reg!20687 r!14126))) b!7626922))

(assert (= (and b!7626639 (is-Union!20358 (reg!20687 r!14126))) b!7626923))

(push 1)

(assert (not b!7626921))

(assert (not b!7626801))

(assert (not d!2323731))

(assert (not bm!700226))

(assert (not b!7626859))

(assert (not b!7626804))

(assert (not b!7626916))

(assert (not b!7626707))

(assert (not d!2323713))

(assert (not b!7626861))

(assert (not d!2323735))

(assert (not b!7626855))

(assert (not b!7626858))

(assert (not b!7626794))

(assert (not b!7626708))

(assert (not bm!700222))

(assert (not b!7626857))

(assert (not b!7626743))

(assert (not b!7626790))

(assert (not b!7626903))

(assert (not b!7626787))

(assert (not b!7626885))

(assert (not b!7626798))

(assert (not b!7626913))

(assert (not bm!700221))

(assert (not bm!700216))

(assert (not b!7626923))

(assert (not b!7626918))

(assert (not b!7626912))

(assert (not b!7626891))

(assert (not b!7626905))

(assert (not b!7626784))

(assert (not b!7626909))

(assert (not b!7626907))

(assert (not bm!700227))

(assert (not b!7626908))

(assert (not b!7626911))

(assert (not d!2323733))

(assert (not d!2323727))

(assert (not bm!700217))

(assert (not b!7626792))

(assert (not b!7626779))

(assert (not b!7626860))

(assert tp_is_empty!51071)

(assert (not b!7626780))

(assert (not b!7626919))

(assert (not b!7626917))

(assert (not b!7626793))

(assert (not d!2323715))

(assert (not b!7626922))

(assert (not b!7626915))

(assert (not b!7626904))

(assert (not d!2323721))

(assert (not b!7626778))

(assert (not d!2323711))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

