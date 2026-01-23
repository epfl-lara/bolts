; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!91576 () Bool)

(assert start!91576)

(declare-fun b!1066691 () Bool)

(assert (=> b!1066691 true))

(assert (=> b!1066691 true))

(assert (=> b!1066691 true))

(declare-fun lambda!38696 () Int)

(declare-fun lambda!38695 () Int)

(assert (=> b!1066691 (not (= lambda!38696 lambda!38695))))

(assert (=> b!1066691 true))

(assert (=> b!1066691 true))

(assert (=> b!1066691 true))

(declare-fun bs!252260 () Bool)

(declare-fun b!1066694 () Bool)

(assert (= bs!252260 (and b!1066694 b!1066691)))

(declare-datatypes ((C!6454 0))(
  ( (C!6455 (val!3475 Int)) )
))
(declare-datatypes ((Regex!2942 0))(
  ( (ElementMatch!2942 (c!178899 C!6454)) (Concat!4775 (regOne!6396 Regex!2942) (regTwo!6396 Regex!2942)) (EmptyExpr!2942) (Star!2942 (reg!3271 Regex!2942)) (EmptyLang!2942) (Union!2942 (regOne!6397 Regex!2942) (regTwo!6397 Regex!2942)) )
))
(declare-fun lt!360689 () Regex!2942)

(declare-fun lambda!38697 () Int)

(declare-fun lt!360688 () Regex!2942)

(declare-fun r!15766 () Regex!2942)

(declare-fun lt!360691 () Regex!2942)

(assert (=> bs!252260 (= (and (= lt!360689 (reg!3271 r!15766)) (= lt!360691 lt!360688)) (= lambda!38697 lambda!38695))))

(assert (=> bs!252260 (not (= lambda!38697 lambda!38696))))

(assert (=> b!1066694 true))

(assert (=> b!1066694 true))

(assert (=> b!1066694 true))

(declare-fun lambda!38698 () Int)

(assert (=> bs!252260 (not (= lambda!38698 lambda!38695))))

(assert (=> bs!252260 (= (and (= lt!360689 (reg!3271 r!15766)) (= lt!360691 lt!360688)) (= lambda!38698 lambda!38696))))

(assert (=> b!1066694 (not (= lambda!38698 lambda!38697))))

(assert (=> b!1066694 true))

(assert (=> b!1066694 true))

(assert (=> b!1066694 true))

(declare-fun b!1066689 () Bool)

(declare-fun e!676372 () Bool)

(declare-fun tp!319960 () Bool)

(assert (=> b!1066689 (= e!676372 tp!319960)))

(declare-fun b!1066690 () Bool)

(declare-fun e!676373 () Bool)

(declare-fun e!676371 () Bool)

(assert (=> b!1066690 (= e!676373 (not e!676371))))

(declare-fun res!476557 () Bool)

(assert (=> b!1066690 (=> res!476557 e!676371)))

(declare-fun lt!360695 () Bool)

(assert (=> b!1066690 (= res!476557 (or lt!360695 (and (is-Concat!4775 r!15766) (is-EmptyExpr!2942 (regOne!6396 r!15766))) (and (is-Concat!4775 r!15766) (is-EmptyExpr!2942 (regTwo!6396 r!15766))) (is-Concat!4775 r!15766) (is-Union!2942 r!15766) (not (is-Star!2942 r!15766))))))

(declare-datatypes ((List!10172 0))(
  ( (Nil!10156) (Cons!10156 (h!15557 C!6454) (t!101218 List!10172)) )
))
(declare-fun s!10566 () List!10172)

(declare-fun matchRSpec!741 (Regex!2942 List!10172) Bool)

(assert (=> b!1066690 (= lt!360695 (matchRSpec!741 r!15766 s!10566))))

(declare-fun matchR!1478 (Regex!2942 List!10172) Bool)

(assert (=> b!1066690 (= lt!360695 (matchR!1478 r!15766 s!10566))))

(declare-datatypes ((Unit!15559 0))(
  ( (Unit!15560) )
))
(declare-fun lt!360686 () Unit!15559)

(declare-fun mainMatchTheorem!741 (Regex!2942 List!10172) Unit!15559)

(assert (=> b!1066690 (= lt!360686 (mainMatchTheorem!741 r!15766 s!10566))))

(declare-fun res!476554 () Bool)

(assert (=> start!91576 (=> (not res!476554) (not e!676373))))

(declare-fun validRegex!1411 (Regex!2942) Bool)

(assert (=> start!91576 (= res!476554 (validRegex!1411 r!15766))))

(assert (=> start!91576 e!676373))

(assert (=> start!91576 e!676372))

(declare-fun e!676370 () Bool)

(assert (=> start!91576 e!676370))

(declare-fun e!676374 () Bool)

(assert (=> b!1066691 (= e!676371 e!676374)))

(declare-fun res!476555 () Bool)

(assert (=> b!1066691 (=> res!476555 e!676374)))

(assert (=> b!1066691 (= res!476555 (not (matchR!1478 lt!360691 s!10566)))))

(assert (=> b!1066691 (= lt!360691 (Star!2942 lt!360689))))

(declare-fun removeUselessConcat!483 (Regex!2942) Regex!2942)

(assert (=> b!1066691 (= lt!360689 (removeUselessConcat!483 (reg!3271 r!15766)))))

(declare-fun Exists!665 (Int) Bool)

(assert (=> b!1066691 (= (Exists!665 lambda!38695) (Exists!665 lambda!38696))))

(declare-fun lt!360690 () Unit!15559)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!183 (Regex!2942 List!10172) Unit!15559)

(assert (=> b!1066691 (= lt!360690 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!183 (reg!3271 r!15766) s!10566))))

(declare-datatypes ((tuple2!11598 0))(
  ( (tuple2!11599 (_1!6625 List!10172) (_2!6625 List!10172)) )
))
(declare-datatypes ((Option!2441 0))(
  ( (None!2440) (Some!2440 (v!19857 tuple2!11598)) )
))
(declare-fun isDefined!2083 (Option!2441) Bool)

(declare-fun findConcatSeparation!547 (Regex!2942 Regex!2942 List!10172 List!10172 List!10172) Option!2441)

(assert (=> b!1066691 (= (isDefined!2083 (findConcatSeparation!547 (reg!3271 r!15766) lt!360688 Nil!10156 s!10566 s!10566)) (Exists!665 lambda!38695))))

(declare-fun lt!360687 () Unit!15559)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!547 (Regex!2942 Regex!2942 List!10172) Unit!15559)

(assert (=> b!1066691 (= lt!360687 (lemmaFindConcatSeparationEquivalentToExists!547 (reg!3271 r!15766) lt!360688 s!10566))))

(assert (=> b!1066691 (= lt!360688 (Star!2942 (reg!3271 r!15766)))))

(declare-fun b!1066692 () Bool)

(declare-fun tp!319957 () Bool)

(declare-fun tp!319959 () Bool)

(assert (=> b!1066692 (= e!676372 (and tp!319957 tp!319959))))

(declare-fun b!1066693 () Bool)

(declare-fun e!676369 () Bool)

(assert (=> b!1066693 (= e!676369 (not (matchR!1478 (removeUselessConcat!483 r!15766) s!10566)))))

(assert (=> b!1066694 (= e!676374 e!676369)))

(declare-fun res!476556 () Bool)

(assert (=> b!1066694 (=> res!476556 e!676369)))

(declare-fun isEmpty!6579 (List!10172) Bool)

(assert (=> b!1066694 (= res!476556 (not (isEmpty!6579 s!10566)))))

(assert (=> b!1066694 (= (Exists!665 lambda!38697) (Exists!665 lambda!38698))))

(declare-fun lt!360693 () Unit!15559)

(assert (=> b!1066694 (= lt!360693 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!183 lt!360689 s!10566))))

(assert (=> b!1066694 (= (isDefined!2083 (findConcatSeparation!547 lt!360689 lt!360691 Nil!10156 s!10566 s!10566)) (Exists!665 lambda!38697))))

(declare-fun lt!360692 () Unit!15559)

(assert (=> b!1066694 (= lt!360692 (lemmaFindConcatSeparationEquivalentToExists!547 lt!360689 lt!360691 s!10566))))

(assert (=> b!1066694 (matchRSpec!741 lt!360691 s!10566)))

(declare-fun lt!360694 () Unit!15559)

(assert (=> b!1066694 (= lt!360694 (mainMatchTheorem!741 lt!360691 s!10566))))

(declare-fun b!1066695 () Bool)

(declare-fun tp_is_empty!5527 () Bool)

(declare-fun tp!319958 () Bool)

(assert (=> b!1066695 (= e!676370 (and tp_is_empty!5527 tp!319958))))

(declare-fun b!1066696 () Bool)

(declare-fun tp!319962 () Bool)

(declare-fun tp!319961 () Bool)

(assert (=> b!1066696 (= e!676372 (and tp!319962 tp!319961))))

(declare-fun b!1066697 () Bool)

(assert (=> b!1066697 (= e!676372 tp_is_empty!5527)))

(assert (= (and start!91576 res!476554) b!1066690))

(assert (= (and b!1066690 (not res!476557)) b!1066691))

(assert (= (and b!1066691 (not res!476555)) b!1066694))

(assert (= (and b!1066694 (not res!476556)) b!1066693))

(assert (= (and start!91576 (is-ElementMatch!2942 r!15766)) b!1066697))

(assert (= (and start!91576 (is-Concat!4775 r!15766)) b!1066692))

(assert (= (and start!91576 (is-Star!2942 r!15766)) b!1066689))

(assert (= (and start!91576 (is-Union!2942 r!15766)) b!1066696))

(assert (= (and start!91576 (is-Cons!10156 s!10566)) b!1066695))

(declare-fun m!1223433 () Bool)

(assert (=> b!1066693 m!1223433))

(assert (=> b!1066693 m!1223433))

(declare-fun m!1223435 () Bool)

(assert (=> b!1066693 m!1223435))

(declare-fun m!1223437 () Bool)

(assert (=> start!91576 m!1223437))

(declare-fun m!1223439 () Bool)

(assert (=> b!1066694 m!1223439))

(declare-fun m!1223441 () Bool)

(assert (=> b!1066694 m!1223441))

(declare-fun m!1223443 () Bool)

(assert (=> b!1066694 m!1223443))

(declare-fun m!1223445 () Bool)

(assert (=> b!1066694 m!1223445))

(assert (=> b!1066694 m!1223441))

(declare-fun m!1223447 () Bool)

(assert (=> b!1066694 m!1223447))

(declare-fun m!1223449 () Bool)

(assert (=> b!1066694 m!1223449))

(declare-fun m!1223451 () Bool)

(assert (=> b!1066694 m!1223451))

(declare-fun m!1223453 () Bool)

(assert (=> b!1066694 m!1223453))

(assert (=> b!1066694 m!1223449))

(declare-fun m!1223455 () Bool)

(assert (=> b!1066694 m!1223455))

(declare-fun m!1223457 () Bool)

(assert (=> b!1066691 m!1223457))

(declare-fun m!1223459 () Bool)

(assert (=> b!1066691 m!1223459))

(declare-fun m!1223461 () Bool)

(assert (=> b!1066691 m!1223461))

(declare-fun m!1223463 () Bool)

(assert (=> b!1066691 m!1223463))

(assert (=> b!1066691 m!1223459))

(declare-fun m!1223465 () Bool)

(assert (=> b!1066691 m!1223465))

(declare-fun m!1223467 () Bool)

(assert (=> b!1066691 m!1223467))

(assert (=> b!1066691 m!1223463))

(declare-fun m!1223469 () Bool)

(assert (=> b!1066691 m!1223469))

(declare-fun m!1223471 () Bool)

(assert (=> b!1066691 m!1223471))

(declare-fun m!1223473 () Bool)

(assert (=> b!1066690 m!1223473))

(declare-fun m!1223475 () Bool)

(assert (=> b!1066690 m!1223475))

(declare-fun m!1223477 () Bool)

(assert (=> b!1066690 m!1223477))

(push 1)

(assert (not b!1066696))

(assert (not b!1066689))

(assert (not b!1066691))

(assert (not b!1066695))

(assert (not b!1066692))

(assert tp_is_empty!5527)

(assert (not b!1066690))

(assert (not b!1066693))

(assert (not start!91576))

(assert (not b!1066694))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1066779 () Bool)

(declare-fun res!476611 () Bool)

(declare-fun e!676423 () Bool)

(assert (=> b!1066779 (=> res!476611 e!676423)))

(assert (=> b!1066779 (= res!476611 (not (is-Concat!4775 r!15766)))))

(declare-fun e!676420 () Bool)

(assert (=> b!1066779 (= e!676420 e!676423)))

(declare-fun call!77019 () Bool)

(declare-fun bm!77014 () Bool)

(declare-fun c!178905 () Bool)

(declare-fun c!178906 () Bool)

(assert (=> bm!77014 (= call!77019 (validRegex!1411 (ite c!178905 (reg!3271 r!15766) (ite c!178906 (regOne!6397 r!15766) (regOne!6396 r!15766)))))))

(declare-fun b!1066780 () Bool)

(declare-fun e!676419 () Bool)

(declare-fun e!676422 () Bool)

(assert (=> b!1066780 (= e!676419 e!676422)))

(assert (=> b!1066780 (= c!178905 (is-Star!2942 r!15766))))

(declare-fun b!1066781 () Bool)

(declare-fun e!676424 () Bool)

(declare-fun call!77020 () Bool)

(assert (=> b!1066781 (= e!676424 call!77020)))

(declare-fun d!301219 () Bool)

(declare-fun res!476612 () Bool)

(assert (=> d!301219 (=> res!476612 e!676419)))

(assert (=> d!301219 (= res!476612 (is-ElementMatch!2942 r!15766))))

(assert (=> d!301219 (= (validRegex!1411 r!15766) e!676419)))

(declare-fun b!1066782 () Bool)

(declare-fun e!676421 () Bool)

(assert (=> b!1066782 (= e!676421 call!77020)))

(declare-fun b!1066783 () Bool)

(assert (=> b!1066783 (= e!676423 e!676421)))

(declare-fun res!476608 () Bool)

(assert (=> b!1066783 (=> (not res!476608) (not e!676421))))

(declare-fun call!77021 () Bool)

(assert (=> b!1066783 (= res!476608 call!77021)))

(declare-fun b!1066784 () Bool)

(declare-fun e!676425 () Bool)

(assert (=> b!1066784 (= e!676422 e!676425)))

(declare-fun res!476609 () Bool)

(declare-fun nullable!1029 (Regex!2942) Bool)

(assert (=> b!1066784 (= res!476609 (not (nullable!1029 (reg!3271 r!15766))))))

(assert (=> b!1066784 (=> (not res!476609) (not e!676425))))

(declare-fun bm!77015 () Bool)

(assert (=> bm!77015 (= call!77021 call!77019)))

(declare-fun bm!77016 () Bool)

(assert (=> bm!77016 (= call!77020 (validRegex!1411 (ite c!178906 (regTwo!6397 r!15766) (regTwo!6396 r!15766))))))

(declare-fun b!1066785 () Bool)

(assert (=> b!1066785 (= e!676422 e!676420)))

(assert (=> b!1066785 (= c!178906 (is-Union!2942 r!15766))))

(declare-fun b!1066786 () Bool)

(declare-fun res!476610 () Bool)

(assert (=> b!1066786 (=> (not res!476610) (not e!676424))))

(assert (=> b!1066786 (= res!476610 call!77021)))

(assert (=> b!1066786 (= e!676420 e!676424)))

(declare-fun b!1066787 () Bool)

(assert (=> b!1066787 (= e!676425 call!77019)))

(assert (= (and d!301219 (not res!476612)) b!1066780))

(assert (= (and b!1066780 c!178905) b!1066784))

(assert (= (and b!1066780 (not c!178905)) b!1066785))

(assert (= (and b!1066784 res!476609) b!1066787))

(assert (= (and b!1066785 c!178906) b!1066786))

(assert (= (and b!1066785 (not c!178906)) b!1066779))

(assert (= (and b!1066786 res!476610) b!1066781))

(assert (= (and b!1066779 (not res!476611)) b!1066783))

(assert (= (and b!1066783 res!476608) b!1066782))

(assert (= (or b!1066781 b!1066782) bm!77016))

(assert (= (or b!1066786 b!1066783) bm!77015))

(assert (= (or b!1066787 bm!77015) bm!77014))

(declare-fun m!1223525 () Bool)

(assert (=> bm!77014 m!1223525))

(declare-fun m!1223527 () Bool)

(assert (=> b!1066784 m!1223527))

(declare-fun m!1223529 () Bool)

(assert (=> bm!77016 m!1223529))

(assert (=> start!91576 d!301219))

(declare-fun bs!252262 () Bool)

(declare-fun b!1066837 () Bool)

(assert (= bs!252262 (and b!1066837 b!1066691)))

(declare-fun lambda!38723 () Int)

(assert (=> bs!252262 (not (= lambda!38723 lambda!38695))))

(assert (=> bs!252262 (= (= r!15766 lt!360688) (= lambda!38723 lambda!38696))))

(declare-fun bs!252263 () Bool)

(assert (= bs!252263 (and b!1066837 b!1066694)))

(assert (=> bs!252263 (not (= lambda!38723 lambda!38697))))

(assert (=> bs!252263 (= (and (= (reg!3271 r!15766) lt!360689) (= r!15766 lt!360691)) (= lambda!38723 lambda!38698))))

(assert (=> b!1066837 true))

(assert (=> b!1066837 true))

(declare-fun bs!252264 () Bool)

(declare-fun b!1066838 () Bool)

(assert (= bs!252264 (and b!1066838 b!1066691)))

(declare-fun lambda!38724 () Int)

(assert (=> bs!252264 (not (= lambda!38724 lambda!38696))))

(declare-fun bs!252265 () Bool)

(assert (= bs!252265 (and b!1066838 b!1066694)))

(assert (=> bs!252265 (not (= lambda!38724 lambda!38697))))

(declare-fun bs!252266 () Bool)

(assert (= bs!252266 (and b!1066838 b!1066837)))

(assert (=> bs!252266 (not (= lambda!38724 lambda!38723))))

(assert (=> bs!252264 (not (= lambda!38724 lambda!38695))))

(assert (=> bs!252265 (not (= lambda!38724 lambda!38698))))

(assert (=> b!1066838 true))

(assert (=> b!1066838 true))

(declare-fun b!1066830 () Bool)

(declare-fun e!676448 () Bool)

(declare-fun e!676454 () Bool)

(assert (=> b!1066830 (= e!676448 e!676454)))

(declare-fun res!476640 () Bool)

(assert (=> b!1066830 (= res!476640 (matchRSpec!741 (regOne!6397 r!15766) s!10566))))

(assert (=> b!1066830 (=> res!476640 e!676454)))

(declare-fun bm!77021 () Bool)

(declare-fun call!77027 () Bool)

(assert (=> bm!77021 (= call!77027 (isEmpty!6579 s!10566))))

(declare-fun b!1066831 () Bool)

(declare-fun c!178916 () Bool)

(assert (=> b!1066831 (= c!178916 (is-ElementMatch!2942 r!15766))))

(declare-fun e!676450 () Bool)

(declare-fun e!676449 () Bool)

(assert (=> b!1066831 (= e!676450 e!676449)))

(declare-fun b!1066832 () Bool)

(assert (=> b!1066832 (= e!676449 (= s!10566 (Cons!10156 (c!178899 r!15766) Nil!10156)))))

(declare-fun b!1066834 () Bool)

(declare-fun e!676452 () Bool)

(assert (=> b!1066834 (= e!676452 call!77027)))

(declare-fun b!1066835 () Bool)

(declare-fun c!178917 () Bool)

(assert (=> b!1066835 (= c!178917 (is-Union!2942 r!15766))))

(assert (=> b!1066835 (= e!676449 e!676448)))

(declare-fun b!1066836 () Bool)

(assert (=> b!1066836 (= e!676452 e!676450)))

(declare-fun res!476639 () Bool)

(assert (=> b!1066836 (= res!476639 (not (is-EmptyLang!2942 r!15766)))))

(assert (=> b!1066836 (=> (not res!476639) (not e!676450))))

(declare-fun e!676453 () Bool)

(declare-fun call!77026 () Bool)

(assert (=> b!1066837 (= e!676453 call!77026)))

(declare-fun e!676451 () Bool)

(assert (=> b!1066838 (= e!676451 call!77026)))

(declare-fun c!178918 () Bool)

(declare-fun bm!77022 () Bool)

(assert (=> bm!77022 (= call!77026 (Exists!665 (ite c!178918 lambda!38723 lambda!38724)))))

(declare-fun b!1066833 () Bool)

(assert (=> b!1066833 (= e!676454 (matchRSpec!741 (regTwo!6397 r!15766) s!10566))))

(declare-fun d!301221 () Bool)

(declare-fun c!178915 () Bool)

(assert (=> d!301221 (= c!178915 (is-EmptyExpr!2942 r!15766))))

(assert (=> d!301221 (= (matchRSpec!741 r!15766 s!10566) e!676452)))

(declare-fun b!1066839 () Bool)

(declare-fun res!476641 () Bool)

(assert (=> b!1066839 (=> res!476641 e!676453)))

(assert (=> b!1066839 (= res!476641 call!77027)))

(assert (=> b!1066839 (= e!676451 e!676453)))

(declare-fun b!1066840 () Bool)

(assert (=> b!1066840 (= e!676448 e!676451)))

(assert (=> b!1066840 (= c!178918 (is-Star!2942 r!15766))))

(assert (= (and d!301221 c!178915) b!1066834))

(assert (= (and d!301221 (not c!178915)) b!1066836))

(assert (= (and b!1066836 res!476639) b!1066831))

(assert (= (and b!1066831 c!178916) b!1066832))

(assert (= (and b!1066831 (not c!178916)) b!1066835))

(assert (= (and b!1066835 c!178917) b!1066830))

(assert (= (and b!1066835 (not c!178917)) b!1066840))

(assert (= (and b!1066830 (not res!476640)) b!1066833))

(assert (= (and b!1066840 c!178918) b!1066839))

(assert (= (and b!1066840 (not c!178918)) b!1066838))

(assert (= (and b!1066839 (not res!476641)) b!1066837))

(assert (= (or b!1066837 b!1066838) bm!77022))

(assert (= (or b!1066834 b!1066839) bm!77021))

(declare-fun m!1223531 () Bool)

(assert (=> b!1066830 m!1223531))

(assert (=> bm!77021 m!1223447))

(declare-fun m!1223533 () Bool)

(assert (=> bm!77022 m!1223533))

(declare-fun m!1223535 () Bool)

(assert (=> b!1066833 m!1223535))

(assert (=> b!1066690 d!301221))

(declare-fun b!1066869 () Bool)

(declare-fun e!676472 () Bool)

(declare-fun e!676474 () Bool)

(assert (=> b!1066869 (= e!676472 e!676474)))

(declare-fun res!476663 () Bool)

(assert (=> b!1066869 (=> (not res!476663) (not e!676474))))

(declare-fun lt!360731 () Bool)

(assert (=> b!1066869 (= res!476663 (not lt!360731))))

(declare-fun b!1066870 () Bool)

(declare-fun e!676471 () Bool)

(assert (=> b!1066870 (= e!676471 (not lt!360731))))

(declare-fun b!1066871 () Bool)

(declare-fun res!476658 () Bool)

(assert (=> b!1066871 (=> res!476658 e!676472)))

(declare-fun e!676475 () Bool)

(assert (=> b!1066871 (= res!476658 e!676475)))

(declare-fun res!476661 () Bool)

(assert (=> b!1066871 (=> (not res!476661) (not e!676475))))

(assert (=> b!1066871 (= res!476661 lt!360731)))

(declare-fun b!1066872 () Bool)

(declare-fun res!476662 () Bool)

(assert (=> b!1066872 (=> (not res!476662) (not e!676475))))

(declare-fun tail!1544 (List!10172) List!10172)

(assert (=> b!1066872 (= res!476662 (isEmpty!6579 (tail!1544 s!10566)))))

(declare-fun b!1066873 () Bool)

(declare-fun e!676470 () Bool)

(assert (=> b!1066873 (= e!676474 e!676470)))

(declare-fun res!476659 () Bool)

(assert (=> b!1066873 (=> res!476659 e!676470)))

(declare-fun call!77030 () Bool)

(assert (=> b!1066873 (= res!476659 call!77030)))

(declare-fun b!1066874 () Bool)

(declare-fun head!1982 (List!10172) C!6454)

(assert (=> b!1066874 (= e!676475 (= (head!1982 s!10566) (c!178899 r!15766)))))

(declare-fun b!1066875 () Bool)

(assert (=> b!1066875 (= e!676470 (not (= (head!1982 s!10566) (c!178899 r!15766))))))

(declare-fun d!301223 () Bool)

(declare-fun e!676473 () Bool)

(assert (=> d!301223 e!676473))

(declare-fun c!178925 () Bool)

(assert (=> d!301223 (= c!178925 (is-EmptyExpr!2942 r!15766))))

(declare-fun e!676469 () Bool)

(assert (=> d!301223 (= lt!360731 e!676469)))

(declare-fun c!178927 () Bool)

(assert (=> d!301223 (= c!178927 (isEmpty!6579 s!10566))))

(assert (=> d!301223 (validRegex!1411 r!15766)))

(assert (=> d!301223 (= (matchR!1478 r!15766 s!10566) lt!360731)))

(declare-fun b!1066876 () Bool)

(declare-fun derivativeStep!827 (Regex!2942 C!6454) Regex!2942)

(assert (=> b!1066876 (= e!676469 (matchR!1478 (derivativeStep!827 r!15766 (head!1982 s!10566)) (tail!1544 s!10566)))))

(declare-fun b!1066877 () Bool)

(declare-fun res!476660 () Bool)

(assert (=> b!1066877 (=> (not res!476660) (not e!676475))))

(assert (=> b!1066877 (= res!476660 (not call!77030))))

(declare-fun b!1066878 () Bool)

(assert (=> b!1066878 (= e!676473 e!676471)))

(declare-fun c!178926 () Bool)

(assert (=> b!1066878 (= c!178926 (is-EmptyLang!2942 r!15766))))

(declare-fun b!1066879 () Bool)

(assert (=> b!1066879 (= e!676473 (= lt!360731 call!77030))))

(declare-fun b!1066880 () Bool)

(assert (=> b!1066880 (= e!676469 (nullable!1029 r!15766))))

(declare-fun b!1066881 () Bool)

(declare-fun res!476664 () Bool)

(assert (=> b!1066881 (=> res!476664 e!676470)))

(assert (=> b!1066881 (= res!476664 (not (isEmpty!6579 (tail!1544 s!10566))))))

(declare-fun bm!77025 () Bool)

(assert (=> bm!77025 (= call!77030 (isEmpty!6579 s!10566))))

(declare-fun b!1066882 () Bool)

(declare-fun res!476665 () Bool)

(assert (=> b!1066882 (=> res!476665 e!676472)))

(assert (=> b!1066882 (= res!476665 (not (is-ElementMatch!2942 r!15766)))))

(assert (=> b!1066882 (= e!676471 e!676472)))

(assert (= (and d!301223 c!178927) b!1066880))

(assert (= (and d!301223 (not c!178927)) b!1066876))

(assert (= (and d!301223 c!178925) b!1066879))

(assert (= (and d!301223 (not c!178925)) b!1066878))

(assert (= (and b!1066878 c!178926) b!1066870))

(assert (= (and b!1066878 (not c!178926)) b!1066882))

(assert (= (and b!1066882 (not res!476665)) b!1066871))

(assert (= (and b!1066871 res!476661) b!1066877))

(assert (= (and b!1066877 res!476660) b!1066872))

(assert (= (and b!1066872 res!476662) b!1066874))

(assert (= (and b!1066871 (not res!476658)) b!1066869))

(assert (= (and b!1066869 res!476663) b!1066873))

(assert (= (and b!1066873 (not res!476659)) b!1066881))

(assert (= (and b!1066881 (not res!476664)) b!1066875))

(assert (= (or b!1066879 b!1066877 b!1066873) bm!77025))

(declare-fun m!1223545 () Bool)

(assert (=> b!1066876 m!1223545))

(assert (=> b!1066876 m!1223545))

(declare-fun m!1223547 () Bool)

(assert (=> b!1066876 m!1223547))

(declare-fun m!1223549 () Bool)

(assert (=> b!1066876 m!1223549))

(assert (=> b!1066876 m!1223547))

(assert (=> b!1066876 m!1223549))

(declare-fun m!1223551 () Bool)

(assert (=> b!1066876 m!1223551))

(assert (=> b!1066872 m!1223549))

(assert (=> b!1066872 m!1223549))

(declare-fun m!1223553 () Bool)

(assert (=> b!1066872 m!1223553))

(declare-fun m!1223555 () Bool)

(assert (=> b!1066880 m!1223555))

(assert (=> d!301223 m!1223447))

(assert (=> d!301223 m!1223437))

(assert (=> b!1066881 m!1223549))

(assert (=> b!1066881 m!1223549))

(assert (=> b!1066881 m!1223553))

(assert (=> bm!77025 m!1223447))

(assert (=> b!1066874 m!1223545))

(assert (=> b!1066875 m!1223545))

(assert (=> b!1066690 d!301223))

(declare-fun d!301227 () Bool)

(assert (=> d!301227 (= (matchR!1478 r!15766 s!10566) (matchRSpec!741 r!15766 s!10566))))

(declare-fun lt!360734 () Unit!15559)

(declare-fun choose!6815 (Regex!2942 List!10172) Unit!15559)

(assert (=> d!301227 (= lt!360734 (choose!6815 r!15766 s!10566))))

(assert (=> d!301227 (validRegex!1411 r!15766)))

(assert (=> d!301227 (= (mainMatchTheorem!741 r!15766 s!10566) lt!360734)))

(declare-fun bs!252270 () Bool)

(assert (= bs!252270 d!301227))

(assert (=> bs!252270 m!1223475))

(assert (=> bs!252270 m!1223473))

(declare-fun m!1223557 () Bool)

(assert (=> bs!252270 m!1223557))

(assert (=> bs!252270 m!1223437))

(assert (=> b!1066690 d!301227))

(declare-fun b!1066883 () Bool)

(declare-fun e!676479 () Bool)

(declare-fun e!676481 () Bool)

(assert (=> b!1066883 (= e!676479 e!676481)))

(declare-fun res!476671 () Bool)

(assert (=> b!1066883 (=> (not res!476671) (not e!676481))))

(declare-fun lt!360735 () Bool)

(assert (=> b!1066883 (= res!476671 (not lt!360735))))

(declare-fun b!1066884 () Bool)

(declare-fun e!676478 () Bool)

(assert (=> b!1066884 (= e!676478 (not lt!360735))))

(declare-fun b!1066885 () Bool)

(declare-fun res!476666 () Bool)

(assert (=> b!1066885 (=> res!476666 e!676479)))

(declare-fun e!676482 () Bool)

(assert (=> b!1066885 (= res!476666 e!676482)))

(declare-fun res!476669 () Bool)

(assert (=> b!1066885 (=> (not res!476669) (not e!676482))))

(assert (=> b!1066885 (= res!476669 lt!360735)))

(declare-fun b!1066886 () Bool)

(declare-fun res!476670 () Bool)

(assert (=> b!1066886 (=> (not res!476670) (not e!676482))))

(assert (=> b!1066886 (= res!476670 (isEmpty!6579 (tail!1544 s!10566)))))

(declare-fun b!1066887 () Bool)

(declare-fun e!676477 () Bool)

(assert (=> b!1066887 (= e!676481 e!676477)))

(declare-fun res!476667 () Bool)

(assert (=> b!1066887 (=> res!476667 e!676477)))

(declare-fun call!77031 () Bool)

(assert (=> b!1066887 (= res!476667 call!77031)))

(declare-fun b!1066888 () Bool)

(assert (=> b!1066888 (= e!676482 (= (head!1982 s!10566) (c!178899 (removeUselessConcat!483 r!15766))))))

(declare-fun b!1066889 () Bool)

(assert (=> b!1066889 (= e!676477 (not (= (head!1982 s!10566) (c!178899 (removeUselessConcat!483 r!15766)))))))

(declare-fun d!301229 () Bool)

(declare-fun e!676480 () Bool)

(assert (=> d!301229 e!676480))

(declare-fun c!178928 () Bool)

(assert (=> d!301229 (= c!178928 (is-EmptyExpr!2942 (removeUselessConcat!483 r!15766)))))

(declare-fun e!676476 () Bool)

(assert (=> d!301229 (= lt!360735 e!676476)))

(declare-fun c!178930 () Bool)

(assert (=> d!301229 (= c!178930 (isEmpty!6579 s!10566))))

(assert (=> d!301229 (validRegex!1411 (removeUselessConcat!483 r!15766))))

(assert (=> d!301229 (= (matchR!1478 (removeUselessConcat!483 r!15766) s!10566) lt!360735)))

(declare-fun b!1066890 () Bool)

(assert (=> b!1066890 (= e!676476 (matchR!1478 (derivativeStep!827 (removeUselessConcat!483 r!15766) (head!1982 s!10566)) (tail!1544 s!10566)))))

(declare-fun b!1066891 () Bool)

(declare-fun res!476668 () Bool)

(assert (=> b!1066891 (=> (not res!476668) (not e!676482))))

(assert (=> b!1066891 (= res!476668 (not call!77031))))

(declare-fun b!1066892 () Bool)

(assert (=> b!1066892 (= e!676480 e!676478)))

(declare-fun c!178929 () Bool)

(assert (=> b!1066892 (= c!178929 (is-EmptyLang!2942 (removeUselessConcat!483 r!15766)))))

(declare-fun b!1066893 () Bool)

(assert (=> b!1066893 (= e!676480 (= lt!360735 call!77031))))

(declare-fun b!1066894 () Bool)

(assert (=> b!1066894 (= e!676476 (nullable!1029 (removeUselessConcat!483 r!15766)))))

(declare-fun b!1066895 () Bool)

(declare-fun res!476672 () Bool)

(assert (=> b!1066895 (=> res!476672 e!676477)))

(assert (=> b!1066895 (= res!476672 (not (isEmpty!6579 (tail!1544 s!10566))))))

(declare-fun bm!77026 () Bool)

(assert (=> bm!77026 (= call!77031 (isEmpty!6579 s!10566))))

(declare-fun b!1066896 () Bool)

(declare-fun res!476673 () Bool)

(assert (=> b!1066896 (=> res!476673 e!676479)))

(assert (=> b!1066896 (= res!476673 (not (is-ElementMatch!2942 (removeUselessConcat!483 r!15766))))))

(assert (=> b!1066896 (= e!676478 e!676479)))

(assert (= (and d!301229 c!178930) b!1066894))

(assert (= (and d!301229 (not c!178930)) b!1066890))

(assert (= (and d!301229 c!178928) b!1066893))

(assert (= (and d!301229 (not c!178928)) b!1066892))

(assert (= (and b!1066892 c!178929) b!1066884))

(assert (= (and b!1066892 (not c!178929)) b!1066896))

(assert (= (and b!1066896 (not res!476673)) b!1066885))

(assert (= (and b!1066885 res!476669) b!1066891))

(assert (= (and b!1066891 res!476668) b!1066886))

(assert (= (and b!1066886 res!476670) b!1066888))

(assert (= (and b!1066885 (not res!476666)) b!1066883))

(assert (= (and b!1066883 res!476671) b!1066887))

(assert (= (and b!1066887 (not res!476667)) b!1066895))

(assert (= (and b!1066895 (not res!476672)) b!1066889))

(assert (= (or b!1066893 b!1066891 b!1066887) bm!77026))

(assert (=> b!1066890 m!1223545))

(assert (=> b!1066890 m!1223433))

(assert (=> b!1066890 m!1223545))

(declare-fun m!1223559 () Bool)

(assert (=> b!1066890 m!1223559))

(assert (=> b!1066890 m!1223549))

(assert (=> b!1066890 m!1223559))

(assert (=> b!1066890 m!1223549))

(declare-fun m!1223561 () Bool)

(assert (=> b!1066890 m!1223561))

(assert (=> b!1066886 m!1223549))

(assert (=> b!1066886 m!1223549))

(assert (=> b!1066886 m!1223553))

(assert (=> b!1066894 m!1223433))

(declare-fun m!1223563 () Bool)

(assert (=> b!1066894 m!1223563))

(assert (=> d!301229 m!1223447))

(assert (=> d!301229 m!1223433))

(declare-fun m!1223565 () Bool)

(assert (=> d!301229 m!1223565))

(assert (=> b!1066895 m!1223549))

(assert (=> b!1066895 m!1223549))

(assert (=> b!1066895 m!1223553))

(assert (=> bm!77026 m!1223447))

(assert (=> b!1066888 m!1223545))

(assert (=> b!1066889 m!1223545))

(assert (=> b!1066693 d!301229))

(declare-fun bm!77037 () Bool)

(declare-fun call!77042 () Regex!2942)

(declare-fun call!77044 () Regex!2942)

(assert (=> bm!77037 (= call!77042 call!77044)))

(declare-fun b!1066947 () Bool)

(declare-fun e!676512 () Regex!2942)

(assert (=> b!1066947 (= e!676512 r!15766)))

(declare-fun b!1066948 () Bool)

(declare-fun e!676516 () Regex!2942)

(declare-fun call!77046 () Regex!2942)

(assert (=> b!1066948 (= e!676516 (Concat!4775 call!77042 call!77046))))

(declare-fun b!1066949 () Bool)

(declare-fun c!178952 () Bool)

(assert (=> b!1066949 (= c!178952 (is-Concat!4775 r!15766))))

(declare-fun e!676515 () Regex!2942)

(assert (=> b!1066949 (= e!676515 e!676516)))

(declare-fun d!301231 () Bool)

(declare-fun e!676514 () Bool)

(assert (=> d!301231 e!676514))

(declare-fun res!476688 () Bool)

(assert (=> d!301231 (=> (not res!476688) (not e!676514))))

(declare-fun lt!360738 () Regex!2942)

(assert (=> d!301231 (= res!476688 (validRegex!1411 lt!360738))))

(declare-fun e!676513 () Regex!2942)

(assert (=> d!301231 (= lt!360738 e!676513)))

(declare-fun c!178950 () Bool)

(assert (=> d!301231 (= c!178950 (and (is-Concat!4775 r!15766) (is-EmptyExpr!2942 (regOne!6396 r!15766))))))

(assert (=> d!301231 (validRegex!1411 r!15766)))

(assert (=> d!301231 (= (removeUselessConcat!483 r!15766) lt!360738)))

(declare-fun b!1066950 () Bool)

(assert (=> b!1066950 (= e!676513 e!676515)))

(declare-fun c!178953 () Bool)

(assert (=> b!1066950 (= c!178953 (and (is-Concat!4775 r!15766) (is-EmptyExpr!2942 (regTwo!6396 r!15766))))))

(declare-fun bm!77038 () Bool)

(declare-fun call!77043 () Regex!2942)

(assert (=> bm!77038 (= call!77043 call!77046)))

(declare-fun b!1066951 () Bool)

(declare-fun e!676511 () Regex!2942)

(assert (=> b!1066951 (= e!676516 e!676511)))

(declare-fun c!178949 () Bool)

(assert (=> b!1066951 (= c!178949 (is-Union!2942 r!15766))))

(declare-fun b!1066952 () Bool)

(assert (=> b!1066952 (= e!676511 (Union!2942 call!77042 call!77043))))

(declare-fun b!1066953 () Bool)

(declare-fun c!178951 () Bool)

(assert (=> b!1066953 (= c!178951 (is-Star!2942 r!15766))))

(assert (=> b!1066953 (= e!676511 e!676512)))

(declare-fun b!1066954 () Bool)

(declare-fun call!77045 () Regex!2942)

(assert (=> b!1066954 (= e!676513 call!77045)))

(declare-fun b!1066955 () Bool)

(assert (=> b!1066955 (= e!676515 call!77044)))

(declare-fun b!1066956 () Bool)

(assert (=> b!1066956 (= e!676512 (Star!2942 call!77043))))

(declare-fun bm!77039 () Bool)

(assert (=> bm!77039 (= call!77044 call!77045)))

(declare-fun b!1066957 () Bool)

(assert (=> b!1066957 (= e!676514 (= (nullable!1029 lt!360738) (nullable!1029 r!15766)))))

(declare-fun bm!77040 () Bool)

(assert (=> bm!77040 (= call!77045 (removeUselessConcat!483 (ite c!178950 (regTwo!6396 r!15766) (ite (or c!178953 c!178952) (regOne!6396 r!15766) (regOne!6397 r!15766)))))))

(declare-fun bm!77041 () Bool)

(assert (=> bm!77041 (= call!77046 (removeUselessConcat!483 (ite c!178952 (regTwo!6396 r!15766) (ite c!178949 (regTwo!6397 r!15766) (reg!3271 r!15766)))))))

(assert (= (and d!301231 c!178950) b!1066954))

(assert (= (and d!301231 (not c!178950)) b!1066950))

(assert (= (and b!1066950 c!178953) b!1066955))

(assert (= (and b!1066950 (not c!178953)) b!1066949))

(assert (= (and b!1066949 c!178952) b!1066948))

(assert (= (and b!1066949 (not c!178952)) b!1066951))

(assert (= (and b!1066951 c!178949) b!1066952))

(assert (= (and b!1066951 (not c!178949)) b!1066953))

(assert (= (and b!1066953 c!178951) b!1066956))

(assert (= (and b!1066953 (not c!178951)) b!1066947))

(assert (= (or b!1066952 b!1066956) bm!77038))

(assert (= (or b!1066948 bm!77038) bm!77041))

(assert (= (or b!1066948 b!1066952) bm!77037))

(assert (= (or b!1066955 bm!77037) bm!77039))

(assert (= (or b!1066954 bm!77039) bm!77040))

(assert (= (and d!301231 res!476688) b!1066957))

(declare-fun m!1223567 () Bool)

(assert (=> d!301231 m!1223567))

(assert (=> d!301231 m!1223437))

(declare-fun m!1223569 () Bool)

(assert (=> b!1066957 m!1223569))

(assert (=> b!1066957 m!1223555))

(declare-fun m!1223571 () Bool)

(assert (=> bm!77040 m!1223571))

(declare-fun m!1223573 () Bool)

(assert (=> bm!77041 m!1223573))

(assert (=> b!1066693 d!301231))

(declare-fun d!301233 () Bool)

(declare-fun choose!6816 (Int) Bool)

(assert (=> d!301233 (= (Exists!665 lambda!38698) (choose!6816 lambda!38698))))

(declare-fun bs!252271 () Bool)

(assert (= bs!252271 d!301233))

(declare-fun m!1223575 () Bool)

(assert (=> bs!252271 m!1223575))

(assert (=> b!1066694 d!301233))

(declare-fun d!301235 () Bool)

(assert (=> d!301235 (= (isEmpty!6579 s!10566) (is-Nil!10156 s!10566))))

(assert (=> b!1066694 d!301235))

(declare-fun bs!252272 () Bool)

(declare-fun d!301237 () Bool)

(assert (= bs!252272 (and d!301237 b!1066691)))

(declare-fun lambda!38733 () Int)

(assert (=> bs!252272 (not (= lambda!38733 lambda!38696))))

(declare-fun bs!252273 () Bool)

(assert (= bs!252273 (and d!301237 b!1066694)))

(assert (=> bs!252273 (= lambda!38733 lambda!38697)))

(declare-fun bs!252274 () Bool)

(assert (= bs!252274 (and d!301237 b!1066838)))

(assert (=> bs!252274 (not (= lambda!38733 lambda!38724))))

(declare-fun bs!252275 () Bool)

(assert (= bs!252275 (and d!301237 b!1066837)))

(assert (=> bs!252275 (not (= lambda!38733 lambda!38723))))

(assert (=> bs!252272 (= (and (= lt!360689 (reg!3271 r!15766)) (= lt!360691 lt!360688)) (= lambda!38733 lambda!38695))))

(assert (=> bs!252273 (not (= lambda!38733 lambda!38698))))

(assert (=> d!301237 true))

(assert (=> d!301237 true))

(assert (=> d!301237 true))

(assert (=> d!301237 (= (isDefined!2083 (findConcatSeparation!547 lt!360689 lt!360691 Nil!10156 s!10566 s!10566)) (Exists!665 lambda!38733))))

(declare-fun lt!360741 () Unit!15559)

(declare-fun choose!6817 (Regex!2942 Regex!2942 List!10172) Unit!15559)

(assert (=> d!301237 (= lt!360741 (choose!6817 lt!360689 lt!360691 s!10566))))

(assert (=> d!301237 (validRegex!1411 lt!360689)))

(assert (=> d!301237 (= (lemmaFindConcatSeparationEquivalentToExists!547 lt!360689 lt!360691 s!10566) lt!360741)))

(declare-fun bs!252276 () Bool)

(assert (= bs!252276 d!301237))

(assert (=> bs!252276 m!1223449))

(assert (=> bs!252276 m!1223455))

(assert (=> bs!252276 m!1223449))

(declare-fun m!1223577 () Bool)

(assert (=> bs!252276 m!1223577))

(declare-fun m!1223579 () Bool)

(assert (=> bs!252276 m!1223579))

(declare-fun m!1223581 () Bool)

(assert (=> bs!252276 m!1223581))

(assert (=> b!1066694 d!301237))

(declare-fun bs!252277 () Bool)

(declare-fun b!1066973 () Bool)

(assert (= bs!252277 (and b!1066973 d!301237)))

(declare-fun lambda!38734 () Int)

(assert (=> bs!252277 (not (= lambda!38734 lambda!38733))))

(declare-fun bs!252278 () Bool)

(assert (= bs!252278 (and b!1066973 b!1066691)))

(assert (=> bs!252278 (= (and (= (reg!3271 lt!360691) (reg!3271 r!15766)) (= lt!360691 lt!360688)) (= lambda!38734 lambda!38696))))

(declare-fun bs!252279 () Bool)

(assert (= bs!252279 (and b!1066973 b!1066694)))

(assert (=> bs!252279 (not (= lambda!38734 lambda!38697))))

(declare-fun bs!252280 () Bool)

(assert (= bs!252280 (and b!1066973 b!1066838)))

(assert (=> bs!252280 (not (= lambda!38734 lambda!38724))))

(declare-fun bs!252281 () Bool)

(assert (= bs!252281 (and b!1066973 b!1066837)))

(assert (=> bs!252281 (= (and (= (reg!3271 lt!360691) (reg!3271 r!15766)) (= lt!360691 r!15766)) (= lambda!38734 lambda!38723))))

(assert (=> bs!252278 (not (= lambda!38734 lambda!38695))))

(assert (=> bs!252279 (= (= (reg!3271 lt!360691) lt!360689) (= lambda!38734 lambda!38698))))

(assert (=> b!1066973 true))

(assert (=> b!1066973 true))

(declare-fun bs!252282 () Bool)

(declare-fun b!1066974 () Bool)

(assert (= bs!252282 (and b!1066974 d!301237)))

(declare-fun lambda!38735 () Int)

(assert (=> bs!252282 (not (= lambda!38735 lambda!38733))))

(declare-fun bs!252283 () Bool)

(assert (= bs!252283 (and b!1066974 b!1066691)))

(assert (=> bs!252283 (not (= lambda!38735 lambda!38696))))

(declare-fun bs!252284 () Bool)

(assert (= bs!252284 (and b!1066974 b!1066694)))

(assert (=> bs!252284 (not (= lambda!38735 lambda!38697))))

(declare-fun bs!252285 () Bool)

(assert (= bs!252285 (and b!1066974 b!1066837)))

(assert (=> bs!252285 (not (= lambda!38735 lambda!38723))))

(assert (=> bs!252283 (not (= lambda!38735 lambda!38695))))

(assert (=> bs!252284 (not (= lambda!38735 lambda!38698))))

(declare-fun bs!252286 () Bool)

(assert (= bs!252286 (and b!1066974 b!1066838)))

(assert (=> bs!252286 (= (and (= (regOne!6396 lt!360691) (regOne!6396 r!15766)) (= (regTwo!6396 lt!360691) (regTwo!6396 r!15766))) (= lambda!38735 lambda!38724))))

(declare-fun bs!252287 () Bool)

(assert (= bs!252287 (and b!1066974 b!1066973)))

(assert (=> bs!252287 (not (= lambda!38735 lambda!38734))))

(assert (=> b!1066974 true))

(assert (=> b!1066974 true))

(declare-fun b!1066966 () Bool)

(declare-fun e!676521 () Bool)

(declare-fun e!676527 () Bool)

(assert (=> b!1066966 (= e!676521 e!676527)))

(declare-fun res!476698 () Bool)

(assert (=> b!1066966 (= res!476698 (matchRSpec!741 (regOne!6397 lt!360691) s!10566))))

(assert (=> b!1066966 (=> res!476698 e!676527)))

(declare-fun bm!77046 () Bool)

(declare-fun call!77052 () Bool)

(assert (=> bm!77046 (= call!77052 (isEmpty!6579 s!10566))))

(declare-fun b!1066967 () Bool)

(declare-fun c!178955 () Bool)

(assert (=> b!1066967 (= c!178955 (is-ElementMatch!2942 lt!360691))))

(declare-fun e!676523 () Bool)

(declare-fun e!676522 () Bool)

(assert (=> b!1066967 (= e!676523 e!676522)))

(declare-fun b!1066968 () Bool)

(assert (=> b!1066968 (= e!676522 (= s!10566 (Cons!10156 (c!178899 lt!360691) Nil!10156)))))

(declare-fun b!1066970 () Bool)

(declare-fun e!676525 () Bool)

(assert (=> b!1066970 (= e!676525 call!77052)))

(declare-fun b!1066971 () Bool)

(declare-fun c!178956 () Bool)

(assert (=> b!1066971 (= c!178956 (is-Union!2942 lt!360691))))

(assert (=> b!1066971 (= e!676522 e!676521)))

(declare-fun b!1066972 () Bool)

(assert (=> b!1066972 (= e!676525 e!676523)))

(declare-fun res!476697 () Bool)

(assert (=> b!1066972 (= res!476697 (not (is-EmptyLang!2942 lt!360691)))))

(assert (=> b!1066972 (=> (not res!476697) (not e!676523))))

(declare-fun e!676526 () Bool)

(declare-fun call!77051 () Bool)

(assert (=> b!1066973 (= e!676526 call!77051)))

(declare-fun e!676524 () Bool)

(assert (=> b!1066974 (= e!676524 call!77051)))

(declare-fun bm!77047 () Bool)

(declare-fun c!178957 () Bool)

(assert (=> bm!77047 (= call!77051 (Exists!665 (ite c!178957 lambda!38734 lambda!38735)))))

(declare-fun b!1066969 () Bool)

(assert (=> b!1066969 (= e!676527 (matchRSpec!741 (regTwo!6397 lt!360691) s!10566))))

(declare-fun d!301239 () Bool)

(declare-fun c!178954 () Bool)

(assert (=> d!301239 (= c!178954 (is-EmptyExpr!2942 lt!360691))))

(assert (=> d!301239 (= (matchRSpec!741 lt!360691 s!10566) e!676525)))

(declare-fun b!1066975 () Bool)

(declare-fun res!476699 () Bool)

(assert (=> b!1066975 (=> res!476699 e!676526)))

(assert (=> b!1066975 (= res!476699 call!77052)))

(assert (=> b!1066975 (= e!676524 e!676526)))

(declare-fun b!1066976 () Bool)

(assert (=> b!1066976 (= e!676521 e!676524)))

(assert (=> b!1066976 (= c!178957 (is-Star!2942 lt!360691))))

(assert (= (and d!301239 c!178954) b!1066970))

(assert (= (and d!301239 (not c!178954)) b!1066972))

(assert (= (and b!1066972 res!476697) b!1066967))

(assert (= (and b!1066967 c!178955) b!1066968))

(assert (= (and b!1066967 (not c!178955)) b!1066971))

(assert (= (and b!1066971 c!178956) b!1066966))

(assert (= (and b!1066971 (not c!178956)) b!1066976))

(assert (= (and b!1066966 (not res!476698)) b!1066969))

(assert (= (and b!1066976 c!178957) b!1066975))

(assert (= (and b!1066976 (not c!178957)) b!1066974))

(assert (= (and b!1066975 (not res!476699)) b!1066973))

(assert (= (or b!1066973 b!1066974) bm!77047))

(assert (= (or b!1066970 b!1066975) bm!77046))

(declare-fun m!1223583 () Bool)

(assert (=> b!1066966 m!1223583))

(assert (=> bm!77046 m!1223447))

(declare-fun m!1223585 () Bool)

(assert (=> bm!77047 m!1223585))

(declare-fun m!1223587 () Bool)

(assert (=> b!1066969 m!1223587))

(assert (=> b!1066694 d!301239))

(declare-fun d!301241 () Bool)

(declare-fun isEmpty!6581 (Option!2441) Bool)

(assert (=> d!301241 (= (isDefined!2083 (findConcatSeparation!547 lt!360689 lt!360691 Nil!10156 s!10566 s!10566)) (not (isEmpty!6581 (findConcatSeparation!547 lt!360689 lt!360691 Nil!10156 s!10566 s!10566))))))

(declare-fun bs!252288 () Bool)

(assert (= bs!252288 d!301241))

(assert (=> bs!252288 m!1223449))

(declare-fun m!1223589 () Bool)

(assert (=> bs!252288 m!1223589))

(assert (=> b!1066694 d!301241))

(declare-fun d!301243 () Bool)

(assert (=> d!301243 (= (Exists!665 lambda!38697) (choose!6816 lambda!38697))))

(declare-fun bs!252289 () Bool)

(assert (= bs!252289 d!301243))

(declare-fun m!1223591 () Bool)

(assert (=> bs!252289 m!1223591))

(assert (=> b!1066694 d!301243))

(declare-fun b!1067006 () Bool)

(declare-fun res!476714 () Bool)

(declare-fun e!676548 () Bool)

(assert (=> b!1067006 (=> (not res!476714) (not e!676548))))

(declare-fun lt!360750 () Option!2441)

(declare-fun get!3662 (Option!2441) tuple2!11598)

(assert (=> b!1067006 (= res!476714 (matchR!1478 lt!360689 (_1!6625 (get!3662 lt!360750))))))

(declare-fun b!1067008 () Bool)

(declare-fun ++!2812 (List!10172 List!10172) List!10172)

(assert (=> b!1067008 (= e!676548 (= (++!2812 (_1!6625 (get!3662 lt!360750)) (_2!6625 (get!3662 lt!360750))) s!10566))))

(declare-fun b!1067009 () Bool)

(declare-fun e!676547 () Bool)

(assert (=> b!1067009 (= e!676547 (not (isDefined!2083 lt!360750)))))

(declare-fun b!1067010 () Bool)

(declare-fun e!676545 () Option!2441)

(assert (=> b!1067010 (= e!676545 (Some!2440 (tuple2!11599 Nil!10156 s!10566)))))

(declare-fun b!1067011 () Bool)

(declare-fun e!676546 () Option!2441)

(assert (=> b!1067011 (= e!676546 None!2440)))

(declare-fun b!1067012 () Bool)

(declare-fun res!476716 () Bool)

(assert (=> b!1067012 (=> (not res!476716) (not e!676548))))

(assert (=> b!1067012 (= res!476716 (matchR!1478 lt!360691 (_2!6625 (get!3662 lt!360750))))))

(declare-fun b!1067013 () Bool)

(assert (=> b!1067013 (= e!676545 e!676546)))

(declare-fun c!178966 () Bool)

(assert (=> b!1067013 (= c!178966 (is-Nil!10156 s!10566))))

(declare-fun b!1067014 () Bool)

(declare-fun e!676549 () Bool)

(assert (=> b!1067014 (= e!676549 (matchR!1478 lt!360691 s!10566))))

(declare-fun d!301245 () Bool)

(assert (=> d!301245 e!676547))

(declare-fun res!476717 () Bool)

(assert (=> d!301245 (=> res!476717 e!676547)))

(assert (=> d!301245 (= res!476717 e!676548)))

(declare-fun res!476715 () Bool)

(assert (=> d!301245 (=> (not res!476715) (not e!676548))))

(assert (=> d!301245 (= res!476715 (isDefined!2083 lt!360750))))

(assert (=> d!301245 (= lt!360750 e!676545)))

(declare-fun c!178967 () Bool)

(assert (=> d!301245 (= c!178967 e!676549)))

(declare-fun res!476713 () Bool)

(assert (=> d!301245 (=> (not res!476713) (not e!676549))))

(assert (=> d!301245 (= res!476713 (matchR!1478 lt!360689 Nil!10156))))

(assert (=> d!301245 (validRegex!1411 lt!360689)))

(assert (=> d!301245 (= (findConcatSeparation!547 lt!360689 lt!360691 Nil!10156 s!10566 s!10566) lt!360750)))

(declare-fun b!1067007 () Bool)

(declare-fun lt!360749 () Unit!15559)

(declare-fun lt!360748 () Unit!15559)

(assert (=> b!1067007 (= lt!360749 lt!360748)))

(assert (=> b!1067007 (= (++!2812 (++!2812 Nil!10156 (Cons!10156 (h!15557 s!10566) Nil!10156)) (t!101218 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!405 (List!10172 C!6454 List!10172 List!10172) Unit!15559)

(assert (=> b!1067007 (= lt!360748 (lemmaMoveElementToOtherListKeepsConcatEq!405 Nil!10156 (h!15557 s!10566) (t!101218 s!10566) s!10566))))

(assert (=> b!1067007 (= e!676546 (findConcatSeparation!547 lt!360689 lt!360691 (++!2812 Nil!10156 (Cons!10156 (h!15557 s!10566) Nil!10156)) (t!101218 s!10566) s!10566))))

(assert (= (and d!301245 res!476713) b!1067014))

(assert (= (and d!301245 c!178967) b!1067010))

(assert (= (and d!301245 (not c!178967)) b!1067013))

(assert (= (and b!1067013 c!178966) b!1067011))

(assert (= (and b!1067013 (not c!178966)) b!1067007))

(assert (= (and d!301245 res!476715) b!1067006))

(assert (= (and b!1067006 res!476714) b!1067012))

(assert (= (and b!1067012 res!476716) b!1067008))

(assert (= (and d!301245 (not res!476717)) b!1067009))

(declare-fun m!1223603 () Bool)

(assert (=> b!1067009 m!1223603))

(declare-fun m!1223605 () Bool)

(assert (=> b!1067007 m!1223605))

(assert (=> b!1067007 m!1223605))

(declare-fun m!1223607 () Bool)

(assert (=> b!1067007 m!1223607))

(declare-fun m!1223609 () Bool)

(assert (=> b!1067007 m!1223609))

(assert (=> b!1067007 m!1223605))

(declare-fun m!1223611 () Bool)

(assert (=> b!1067007 m!1223611))

(assert (=> d!301245 m!1223603))

(declare-fun m!1223613 () Bool)

(assert (=> d!301245 m!1223613))

(assert (=> d!301245 m!1223579))

(declare-fun m!1223615 () Bool)

(assert (=> b!1067012 m!1223615))

(declare-fun m!1223617 () Bool)

(assert (=> b!1067012 m!1223617))

(assert (=> b!1067008 m!1223615))

(declare-fun m!1223619 () Bool)

(assert (=> b!1067008 m!1223619))

(assert (=> b!1067014 m!1223467))

(assert (=> b!1067006 m!1223615))

(declare-fun m!1223621 () Bool)

(assert (=> b!1067006 m!1223621))

(assert (=> b!1066694 d!301245))

(declare-fun d!301255 () Bool)

(assert (=> d!301255 (= (matchR!1478 lt!360691 s!10566) (matchRSpec!741 lt!360691 s!10566))))

(declare-fun lt!360751 () Unit!15559)

(assert (=> d!301255 (= lt!360751 (choose!6815 lt!360691 s!10566))))

(assert (=> d!301255 (validRegex!1411 lt!360691)))

(assert (=> d!301255 (= (mainMatchTheorem!741 lt!360691 s!10566) lt!360751)))

(declare-fun bs!252299 () Bool)

(assert (= bs!252299 d!301255))

(assert (=> bs!252299 m!1223467))

(assert (=> bs!252299 m!1223439))

(declare-fun m!1223623 () Bool)

(assert (=> bs!252299 m!1223623))

(declare-fun m!1223625 () Bool)

(assert (=> bs!252299 m!1223625))

(assert (=> b!1066694 d!301255))

(declare-fun bs!252300 () Bool)

(declare-fun d!301257 () Bool)

(assert (= bs!252300 (and d!301257 d!301237)))

(declare-fun lambda!38742 () Int)

(assert (=> bs!252300 (= (= (Star!2942 lt!360689) lt!360691) (= lambda!38742 lambda!38733))))

(declare-fun bs!252301 () Bool)

(assert (= bs!252301 (and d!301257 b!1066691)))

(assert (=> bs!252301 (not (= lambda!38742 lambda!38696))))

(declare-fun bs!252302 () Bool)

(assert (= bs!252302 (and d!301257 b!1066974)))

(assert (=> bs!252302 (not (= lambda!38742 lambda!38735))))

(declare-fun bs!252303 () Bool)

(assert (= bs!252303 (and d!301257 b!1066694)))

(assert (=> bs!252303 (= (= (Star!2942 lt!360689) lt!360691) (= lambda!38742 lambda!38697))))

(declare-fun bs!252304 () Bool)

(assert (= bs!252304 (and d!301257 b!1066837)))

(assert (=> bs!252304 (not (= lambda!38742 lambda!38723))))

(assert (=> bs!252301 (= (and (= lt!360689 (reg!3271 r!15766)) (= (Star!2942 lt!360689) lt!360688)) (= lambda!38742 lambda!38695))))

(assert (=> bs!252303 (not (= lambda!38742 lambda!38698))))

(declare-fun bs!252305 () Bool)

(assert (= bs!252305 (and d!301257 b!1066838)))

(assert (=> bs!252305 (not (= lambda!38742 lambda!38724))))

(declare-fun bs!252306 () Bool)

(assert (= bs!252306 (and d!301257 b!1066973)))

(assert (=> bs!252306 (not (= lambda!38742 lambda!38734))))

(assert (=> d!301257 true))

(assert (=> d!301257 true))

(declare-fun lambda!38743 () Int)

(assert (=> bs!252300 (not (= lambda!38743 lambda!38733))))

(assert (=> bs!252301 (= (and (= lt!360689 (reg!3271 r!15766)) (= (Star!2942 lt!360689) lt!360688)) (= lambda!38743 lambda!38696))))

(declare-fun bs!252307 () Bool)

(assert (= bs!252307 d!301257))

(assert (=> bs!252307 (not (= lambda!38743 lambda!38742))))

(assert (=> bs!252302 (not (= lambda!38743 lambda!38735))))

(assert (=> bs!252303 (not (= lambda!38743 lambda!38697))))

(assert (=> bs!252304 (= (and (= lt!360689 (reg!3271 r!15766)) (= (Star!2942 lt!360689) r!15766)) (= lambda!38743 lambda!38723))))

(assert (=> bs!252301 (not (= lambda!38743 lambda!38695))))

(assert (=> bs!252303 (= (= (Star!2942 lt!360689) lt!360691) (= lambda!38743 lambda!38698))))

(assert (=> bs!252305 (not (= lambda!38743 lambda!38724))))

(assert (=> bs!252306 (= (and (= lt!360689 (reg!3271 lt!360691)) (= (Star!2942 lt!360689) lt!360691)) (= lambda!38743 lambda!38734))))

(assert (=> d!301257 true))

(assert (=> d!301257 true))

(assert (=> d!301257 (= (Exists!665 lambda!38742) (Exists!665 lambda!38743))))

(declare-fun lt!360754 () Unit!15559)

(declare-fun choose!6819 (Regex!2942 List!10172) Unit!15559)

(assert (=> d!301257 (= lt!360754 (choose!6819 lt!360689 s!10566))))

(assert (=> d!301257 (validRegex!1411 lt!360689)))

(assert (=> d!301257 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!183 lt!360689 s!10566) lt!360754)))

(declare-fun m!1223627 () Bool)

(assert (=> bs!252307 m!1223627))

(declare-fun m!1223629 () Bool)

(assert (=> bs!252307 m!1223629))

(declare-fun m!1223631 () Bool)

(assert (=> bs!252307 m!1223631))

(assert (=> bs!252307 m!1223579))

(assert (=> b!1066694 d!301257))

(declare-fun bs!252308 () Bool)

(declare-fun d!301259 () Bool)

(assert (= bs!252308 (and d!301259 d!301257)))

(declare-fun lambda!38744 () Int)

(assert (=> bs!252308 (not (= lambda!38744 lambda!38743))))

(declare-fun bs!252309 () Bool)

(assert (= bs!252309 (and d!301259 d!301237)))

(assert (=> bs!252309 (= (and (= (reg!3271 r!15766) lt!360689) (= lt!360688 lt!360691)) (= lambda!38744 lambda!38733))))

(declare-fun bs!252310 () Bool)

(assert (= bs!252310 (and d!301259 b!1066691)))

(assert (=> bs!252310 (not (= lambda!38744 lambda!38696))))

(assert (=> bs!252308 (= (and (= (reg!3271 r!15766) lt!360689) (= lt!360688 (Star!2942 lt!360689))) (= lambda!38744 lambda!38742))))

(declare-fun bs!252311 () Bool)

(assert (= bs!252311 (and d!301259 b!1066974)))

(assert (=> bs!252311 (not (= lambda!38744 lambda!38735))))

(declare-fun bs!252312 () Bool)

(assert (= bs!252312 (and d!301259 b!1066694)))

(assert (=> bs!252312 (= (and (= (reg!3271 r!15766) lt!360689) (= lt!360688 lt!360691)) (= lambda!38744 lambda!38697))))

(declare-fun bs!252313 () Bool)

(assert (= bs!252313 (and d!301259 b!1066837)))

(assert (=> bs!252313 (not (= lambda!38744 lambda!38723))))

(assert (=> bs!252310 (= lambda!38744 lambda!38695)))

(assert (=> bs!252312 (not (= lambda!38744 lambda!38698))))

(declare-fun bs!252314 () Bool)

(assert (= bs!252314 (and d!301259 b!1066838)))

(assert (=> bs!252314 (not (= lambda!38744 lambda!38724))))

(declare-fun bs!252315 () Bool)

(assert (= bs!252315 (and d!301259 b!1066973)))

(assert (=> bs!252315 (not (= lambda!38744 lambda!38734))))

(assert (=> d!301259 true))

(assert (=> d!301259 true))

(assert (=> d!301259 true))

(assert (=> d!301259 (= (isDefined!2083 (findConcatSeparation!547 (reg!3271 r!15766) lt!360688 Nil!10156 s!10566 s!10566)) (Exists!665 lambda!38744))))

(declare-fun lt!360755 () Unit!15559)

(assert (=> d!301259 (= lt!360755 (choose!6817 (reg!3271 r!15766) lt!360688 s!10566))))

(assert (=> d!301259 (validRegex!1411 (reg!3271 r!15766))))

(assert (=> d!301259 (= (lemmaFindConcatSeparationEquivalentToExists!547 (reg!3271 r!15766) lt!360688 s!10566) lt!360755)))

(declare-fun bs!252316 () Bool)

(assert (= bs!252316 d!301259))

(assert (=> bs!252316 m!1223459))

(assert (=> bs!252316 m!1223461))

(assert (=> bs!252316 m!1223459))

(declare-fun m!1223633 () Bool)

(assert (=> bs!252316 m!1223633))

(declare-fun m!1223635 () Bool)

(assert (=> bs!252316 m!1223635))

(declare-fun m!1223637 () Bool)

(assert (=> bs!252316 m!1223637))

(assert (=> b!1066691 d!301259))

(declare-fun b!1067035 () Bool)

(declare-fun e!676563 () Bool)

(declare-fun e!676565 () Bool)

(assert (=> b!1067035 (= e!676563 e!676565)))

(declare-fun res!476735 () Bool)

(assert (=> b!1067035 (=> (not res!476735) (not e!676565))))

(declare-fun lt!360762 () Bool)

(assert (=> b!1067035 (= res!476735 (not lt!360762))))

(declare-fun b!1067036 () Bool)

(declare-fun e!676562 () Bool)

(assert (=> b!1067036 (= e!676562 (not lt!360762))))

(declare-fun b!1067037 () Bool)

(declare-fun res!476730 () Bool)

(assert (=> b!1067037 (=> res!476730 e!676563)))

(declare-fun e!676566 () Bool)

(assert (=> b!1067037 (= res!476730 e!676566)))

(declare-fun res!476733 () Bool)

(assert (=> b!1067037 (=> (not res!476733) (not e!676566))))

(assert (=> b!1067037 (= res!476733 lt!360762)))

(declare-fun b!1067038 () Bool)

(declare-fun res!476734 () Bool)

(assert (=> b!1067038 (=> (not res!476734) (not e!676566))))

(assert (=> b!1067038 (= res!476734 (isEmpty!6579 (tail!1544 s!10566)))))

(declare-fun b!1067039 () Bool)

(declare-fun e!676561 () Bool)

(assert (=> b!1067039 (= e!676565 e!676561)))

(declare-fun res!476731 () Bool)

(assert (=> b!1067039 (=> res!476731 e!676561)))

(declare-fun call!77055 () Bool)

(assert (=> b!1067039 (= res!476731 call!77055)))

(declare-fun b!1067040 () Bool)

(assert (=> b!1067040 (= e!676566 (= (head!1982 s!10566) (c!178899 lt!360691)))))

(declare-fun b!1067041 () Bool)

(assert (=> b!1067041 (= e!676561 (not (= (head!1982 s!10566) (c!178899 lt!360691))))))

(declare-fun d!301261 () Bool)

(declare-fun e!676564 () Bool)

(assert (=> d!301261 e!676564))

(declare-fun c!178972 () Bool)

(assert (=> d!301261 (= c!178972 (is-EmptyExpr!2942 lt!360691))))

(declare-fun e!676560 () Bool)

(assert (=> d!301261 (= lt!360762 e!676560)))

(declare-fun c!178974 () Bool)

(assert (=> d!301261 (= c!178974 (isEmpty!6579 s!10566))))

(assert (=> d!301261 (validRegex!1411 lt!360691)))

(assert (=> d!301261 (= (matchR!1478 lt!360691 s!10566) lt!360762)))

(declare-fun b!1067042 () Bool)

(assert (=> b!1067042 (= e!676560 (matchR!1478 (derivativeStep!827 lt!360691 (head!1982 s!10566)) (tail!1544 s!10566)))))

(declare-fun b!1067043 () Bool)

(declare-fun res!476732 () Bool)

(assert (=> b!1067043 (=> (not res!476732) (not e!676566))))

(assert (=> b!1067043 (= res!476732 (not call!77055))))

(declare-fun b!1067044 () Bool)

(assert (=> b!1067044 (= e!676564 e!676562)))

(declare-fun c!178973 () Bool)

(assert (=> b!1067044 (= c!178973 (is-EmptyLang!2942 lt!360691))))

(declare-fun b!1067045 () Bool)

(assert (=> b!1067045 (= e!676564 (= lt!360762 call!77055))))

(declare-fun b!1067046 () Bool)

(assert (=> b!1067046 (= e!676560 (nullable!1029 lt!360691))))

(declare-fun b!1067047 () Bool)

(declare-fun res!476736 () Bool)

(assert (=> b!1067047 (=> res!476736 e!676561)))

(assert (=> b!1067047 (= res!476736 (not (isEmpty!6579 (tail!1544 s!10566))))))

(declare-fun bm!77050 () Bool)

(assert (=> bm!77050 (= call!77055 (isEmpty!6579 s!10566))))

(declare-fun b!1067048 () Bool)

(declare-fun res!476737 () Bool)

(assert (=> b!1067048 (=> res!476737 e!676563)))

(assert (=> b!1067048 (= res!476737 (not (is-ElementMatch!2942 lt!360691)))))

(assert (=> b!1067048 (= e!676562 e!676563)))

(assert (= (and d!301261 c!178974) b!1067046))

(assert (= (and d!301261 (not c!178974)) b!1067042))

(assert (= (and d!301261 c!178972) b!1067045))

(assert (= (and d!301261 (not c!178972)) b!1067044))

(assert (= (and b!1067044 c!178973) b!1067036))

(assert (= (and b!1067044 (not c!178973)) b!1067048))

(assert (= (and b!1067048 (not res!476737)) b!1067037))

(assert (= (and b!1067037 res!476733) b!1067043))

(assert (= (and b!1067043 res!476732) b!1067038))

(assert (= (and b!1067038 res!476734) b!1067040))

(assert (= (and b!1067037 (not res!476730)) b!1067035))

(assert (= (and b!1067035 res!476735) b!1067039))

(assert (= (and b!1067039 (not res!476731)) b!1067047))

(assert (= (and b!1067047 (not res!476736)) b!1067041))

(assert (= (or b!1067045 b!1067043 b!1067039) bm!77050))

(assert (=> b!1067042 m!1223545))

(assert (=> b!1067042 m!1223545))

(declare-fun m!1223639 () Bool)

(assert (=> b!1067042 m!1223639))

(assert (=> b!1067042 m!1223549))

(assert (=> b!1067042 m!1223639))

(assert (=> b!1067042 m!1223549))

(declare-fun m!1223641 () Bool)

(assert (=> b!1067042 m!1223641))

(assert (=> b!1067038 m!1223549))

(assert (=> b!1067038 m!1223549))

(assert (=> b!1067038 m!1223553))

(declare-fun m!1223643 () Bool)

(assert (=> b!1067046 m!1223643))

(assert (=> d!301261 m!1223447))

(assert (=> d!301261 m!1223625))

(assert (=> b!1067047 m!1223549))

(assert (=> b!1067047 m!1223549))

(assert (=> b!1067047 m!1223553))

(assert (=> bm!77050 m!1223447))

(assert (=> b!1067040 m!1223545))

(assert (=> b!1067041 m!1223545))

(assert (=> b!1066691 d!301261))

(declare-fun d!301263 () Bool)

(assert (=> d!301263 (= (isDefined!2083 (findConcatSeparation!547 (reg!3271 r!15766) lt!360688 Nil!10156 s!10566 s!10566)) (not (isEmpty!6581 (findConcatSeparation!547 (reg!3271 r!15766) lt!360688 Nil!10156 s!10566 s!10566))))))

(declare-fun bs!252317 () Bool)

(assert (= bs!252317 d!301263))

(assert (=> bs!252317 m!1223459))

(declare-fun m!1223645 () Bool)

(assert (=> bs!252317 m!1223645))

(assert (=> b!1066691 d!301263))

(declare-fun bs!252318 () Bool)

(declare-fun d!301265 () Bool)

(assert (= bs!252318 (and d!301265 d!301257)))

(declare-fun lambda!38745 () Int)

(assert (=> bs!252318 (not (= lambda!38745 lambda!38743))))

(declare-fun bs!252319 () Bool)

(assert (= bs!252319 (and d!301265 d!301237)))

(assert (=> bs!252319 (= (and (= (reg!3271 r!15766) lt!360689) (= (Star!2942 (reg!3271 r!15766)) lt!360691)) (= lambda!38745 lambda!38733))))

(declare-fun bs!252320 () Bool)

(assert (= bs!252320 (and d!301265 b!1066691)))

(assert (=> bs!252320 (not (= lambda!38745 lambda!38696))))

(assert (=> bs!252318 (= (and (= (reg!3271 r!15766) lt!360689) (= (Star!2942 (reg!3271 r!15766)) (Star!2942 lt!360689))) (= lambda!38745 lambda!38742))))

(declare-fun bs!252321 () Bool)

(assert (= bs!252321 (and d!301265 b!1066974)))

(assert (=> bs!252321 (not (= lambda!38745 lambda!38735))))

(declare-fun bs!252322 () Bool)

(assert (= bs!252322 (and d!301265 b!1066694)))

(assert (=> bs!252322 (= (and (= (reg!3271 r!15766) lt!360689) (= (Star!2942 (reg!3271 r!15766)) lt!360691)) (= lambda!38745 lambda!38697))))

(declare-fun bs!252323 () Bool)

(assert (= bs!252323 (and d!301265 d!301259)))

(assert (=> bs!252323 (= (= (Star!2942 (reg!3271 r!15766)) lt!360688) (= lambda!38745 lambda!38744))))

(declare-fun bs!252324 () Bool)

(assert (= bs!252324 (and d!301265 b!1066837)))

(assert (=> bs!252324 (not (= lambda!38745 lambda!38723))))

(assert (=> bs!252320 (= (= (Star!2942 (reg!3271 r!15766)) lt!360688) (= lambda!38745 lambda!38695))))

(assert (=> bs!252322 (not (= lambda!38745 lambda!38698))))

(declare-fun bs!252325 () Bool)

(assert (= bs!252325 (and d!301265 b!1066838)))

(assert (=> bs!252325 (not (= lambda!38745 lambda!38724))))

(declare-fun bs!252326 () Bool)

(assert (= bs!252326 (and d!301265 b!1066973)))

(assert (=> bs!252326 (not (= lambda!38745 lambda!38734))))

(assert (=> d!301265 true))

(assert (=> d!301265 true))

(declare-fun lambda!38746 () Int)

(assert (=> bs!252318 (= (and (= (reg!3271 r!15766) lt!360689) (= (Star!2942 (reg!3271 r!15766)) (Star!2942 lt!360689))) (= lambda!38746 lambda!38743))))

(assert (=> bs!252319 (not (= lambda!38746 lambda!38733))))

(assert (=> bs!252320 (= (= (Star!2942 (reg!3271 r!15766)) lt!360688) (= lambda!38746 lambda!38696))))

(assert (=> bs!252318 (not (= lambda!38746 lambda!38742))))

(declare-fun bs!252327 () Bool)

(assert (= bs!252327 d!301265))

(assert (=> bs!252327 (not (= lambda!38746 lambda!38745))))

(assert (=> bs!252321 (not (= lambda!38746 lambda!38735))))

(assert (=> bs!252322 (not (= lambda!38746 lambda!38697))))

(assert (=> bs!252323 (not (= lambda!38746 lambda!38744))))

(assert (=> bs!252324 (= (= (Star!2942 (reg!3271 r!15766)) r!15766) (= lambda!38746 lambda!38723))))

(assert (=> bs!252320 (not (= lambda!38746 lambda!38695))))

(assert (=> bs!252322 (= (and (= (reg!3271 r!15766) lt!360689) (= (Star!2942 (reg!3271 r!15766)) lt!360691)) (= lambda!38746 lambda!38698))))

(assert (=> bs!252325 (not (= lambda!38746 lambda!38724))))

(assert (=> bs!252326 (= (and (= (reg!3271 r!15766) (reg!3271 lt!360691)) (= (Star!2942 (reg!3271 r!15766)) lt!360691)) (= lambda!38746 lambda!38734))))

(assert (=> d!301265 true))

(assert (=> d!301265 true))

(assert (=> d!301265 (= (Exists!665 lambda!38745) (Exists!665 lambda!38746))))

(declare-fun lt!360763 () Unit!15559)

(assert (=> d!301265 (= lt!360763 (choose!6819 (reg!3271 r!15766) s!10566))))

(assert (=> d!301265 (validRegex!1411 (reg!3271 r!15766))))

(assert (=> d!301265 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!183 (reg!3271 r!15766) s!10566) lt!360763)))

(declare-fun m!1223647 () Bool)

(assert (=> bs!252327 m!1223647))

(declare-fun m!1223649 () Bool)

(assert (=> bs!252327 m!1223649))

(declare-fun m!1223651 () Bool)

(assert (=> bs!252327 m!1223651))

(assert (=> bs!252327 m!1223635))

(assert (=> b!1066691 d!301265))

(declare-fun bm!77051 () Bool)

(declare-fun call!77056 () Regex!2942)

(declare-fun call!77058 () Regex!2942)

(assert (=> bm!77051 (= call!77056 call!77058)))

(declare-fun b!1067057 () Bool)

(declare-fun e!676572 () Regex!2942)

(assert (=> b!1067057 (= e!676572 (reg!3271 r!15766))))

(declare-fun b!1067058 () Bool)

(declare-fun e!676576 () Regex!2942)

(declare-fun call!77060 () Regex!2942)

(assert (=> b!1067058 (= e!676576 (Concat!4775 call!77056 call!77060))))

(declare-fun b!1067059 () Bool)

(declare-fun c!178978 () Bool)

(assert (=> b!1067059 (= c!178978 (is-Concat!4775 (reg!3271 r!15766)))))

(declare-fun e!676575 () Regex!2942)

(assert (=> b!1067059 (= e!676575 e!676576)))

(declare-fun d!301267 () Bool)

(declare-fun e!676574 () Bool)

(assert (=> d!301267 e!676574))

(declare-fun res!476746 () Bool)

(assert (=> d!301267 (=> (not res!476746) (not e!676574))))

(declare-fun lt!360764 () Regex!2942)

(assert (=> d!301267 (= res!476746 (validRegex!1411 lt!360764))))

(declare-fun e!676573 () Regex!2942)

(assert (=> d!301267 (= lt!360764 e!676573)))

(declare-fun c!178976 () Bool)

(assert (=> d!301267 (= c!178976 (and (is-Concat!4775 (reg!3271 r!15766)) (is-EmptyExpr!2942 (regOne!6396 (reg!3271 r!15766)))))))

(assert (=> d!301267 (validRegex!1411 (reg!3271 r!15766))))

(assert (=> d!301267 (= (removeUselessConcat!483 (reg!3271 r!15766)) lt!360764)))

(declare-fun b!1067060 () Bool)

(assert (=> b!1067060 (= e!676573 e!676575)))

(declare-fun c!178979 () Bool)

(assert (=> b!1067060 (= c!178979 (and (is-Concat!4775 (reg!3271 r!15766)) (is-EmptyExpr!2942 (regTwo!6396 (reg!3271 r!15766)))))))

(declare-fun bm!77052 () Bool)

(declare-fun call!77057 () Regex!2942)

(assert (=> bm!77052 (= call!77057 call!77060)))

(declare-fun b!1067061 () Bool)

(declare-fun e!676571 () Regex!2942)

(assert (=> b!1067061 (= e!676576 e!676571)))

(declare-fun c!178975 () Bool)

(assert (=> b!1067061 (= c!178975 (is-Union!2942 (reg!3271 r!15766)))))

(declare-fun b!1067062 () Bool)

(assert (=> b!1067062 (= e!676571 (Union!2942 call!77056 call!77057))))

(declare-fun b!1067063 () Bool)

(declare-fun c!178977 () Bool)

(assert (=> b!1067063 (= c!178977 (is-Star!2942 (reg!3271 r!15766)))))

(assert (=> b!1067063 (= e!676571 e!676572)))

(declare-fun b!1067064 () Bool)

(declare-fun call!77059 () Regex!2942)

(assert (=> b!1067064 (= e!676573 call!77059)))

(declare-fun b!1067065 () Bool)

(assert (=> b!1067065 (= e!676575 call!77058)))

(declare-fun b!1067066 () Bool)

(assert (=> b!1067066 (= e!676572 (Star!2942 call!77057))))

(declare-fun bm!77053 () Bool)

(assert (=> bm!77053 (= call!77058 call!77059)))

(declare-fun b!1067067 () Bool)

(assert (=> b!1067067 (= e!676574 (= (nullable!1029 lt!360764) (nullable!1029 (reg!3271 r!15766))))))

(declare-fun bm!77054 () Bool)

(assert (=> bm!77054 (= call!77059 (removeUselessConcat!483 (ite c!178976 (regTwo!6396 (reg!3271 r!15766)) (ite (or c!178979 c!178978) (regOne!6396 (reg!3271 r!15766)) (regOne!6397 (reg!3271 r!15766))))))))

(declare-fun bm!77055 () Bool)

(assert (=> bm!77055 (= call!77060 (removeUselessConcat!483 (ite c!178978 (regTwo!6396 (reg!3271 r!15766)) (ite c!178975 (regTwo!6397 (reg!3271 r!15766)) (reg!3271 (reg!3271 r!15766))))))))

(assert (= (and d!301267 c!178976) b!1067064))

(assert (= (and d!301267 (not c!178976)) b!1067060))

(assert (= (and b!1067060 c!178979) b!1067065))

(assert (= (and b!1067060 (not c!178979)) b!1067059))

(assert (= (and b!1067059 c!178978) b!1067058))

(assert (= (and b!1067059 (not c!178978)) b!1067061))

(assert (= (and b!1067061 c!178975) b!1067062))

(assert (= (and b!1067061 (not c!178975)) b!1067063))

(assert (= (and b!1067063 c!178977) b!1067066))

(assert (= (and b!1067063 (not c!178977)) b!1067057))

(assert (= (or b!1067062 b!1067066) bm!77052))

(assert (= (or b!1067058 bm!77052) bm!77055))

(assert (= (or b!1067058 b!1067062) bm!77051))

(assert (= (or b!1067065 bm!77051) bm!77053))

(assert (= (or b!1067064 bm!77053) bm!77054))

(assert (= (and d!301267 res!476746) b!1067067))

(declare-fun m!1223653 () Bool)

(assert (=> d!301267 m!1223653))

(assert (=> d!301267 m!1223635))

(declare-fun m!1223655 () Bool)

(assert (=> b!1067067 m!1223655))

(assert (=> b!1067067 m!1223527))

(declare-fun m!1223657 () Bool)

(assert (=> bm!77054 m!1223657))

(declare-fun m!1223659 () Bool)

(assert (=> bm!77055 m!1223659))

(assert (=> b!1066691 d!301267))

(declare-fun d!301269 () Bool)

(assert (=> d!301269 (= (Exists!665 lambda!38695) (choose!6816 lambda!38695))))

(declare-fun bs!252328 () Bool)

(assert (= bs!252328 d!301269))

(declare-fun m!1223661 () Bool)

(assert (=> bs!252328 m!1223661))

(assert (=> b!1066691 d!301269))

(declare-fun d!301271 () Bool)

(assert (=> d!301271 (= (Exists!665 lambda!38696) (choose!6816 lambda!38696))))

(declare-fun bs!252329 () Bool)

(assert (= bs!252329 d!301271))

(declare-fun m!1223663 () Bool)

(assert (=> bs!252329 m!1223663))

(assert (=> b!1066691 d!301271))

(declare-fun b!1067068 () Bool)

(declare-fun res!476748 () Bool)

(declare-fun e!676580 () Bool)

(assert (=> b!1067068 (=> (not res!476748) (not e!676580))))

(declare-fun lt!360767 () Option!2441)

(assert (=> b!1067068 (= res!476748 (matchR!1478 (reg!3271 r!15766) (_1!6625 (get!3662 lt!360767))))))

(declare-fun b!1067070 () Bool)

(assert (=> b!1067070 (= e!676580 (= (++!2812 (_1!6625 (get!3662 lt!360767)) (_2!6625 (get!3662 lt!360767))) s!10566))))

(declare-fun b!1067071 () Bool)

(declare-fun e!676579 () Bool)

(assert (=> b!1067071 (= e!676579 (not (isDefined!2083 lt!360767)))))

(declare-fun b!1067072 () Bool)

(declare-fun e!676577 () Option!2441)

(assert (=> b!1067072 (= e!676577 (Some!2440 (tuple2!11599 Nil!10156 s!10566)))))

(declare-fun b!1067073 () Bool)

(declare-fun e!676578 () Option!2441)

(assert (=> b!1067073 (= e!676578 None!2440)))

(declare-fun b!1067074 () Bool)

(declare-fun res!476750 () Bool)

(assert (=> b!1067074 (=> (not res!476750) (not e!676580))))

(assert (=> b!1067074 (= res!476750 (matchR!1478 lt!360688 (_2!6625 (get!3662 lt!360767))))))

(declare-fun b!1067075 () Bool)

(assert (=> b!1067075 (= e!676577 e!676578)))

(declare-fun c!178980 () Bool)

(assert (=> b!1067075 (= c!178980 (is-Nil!10156 s!10566))))

(declare-fun b!1067076 () Bool)

(declare-fun e!676581 () Bool)

(assert (=> b!1067076 (= e!676581 (matchR!1478 lt!360688 s!10566))))

(declare-fun d!301273 () Bool)

(assert (=> d!301273 e!676579))

(declare-fun res!476751 () Bool)

(assert (=> d!301273 (=> res!476751 e!676579)))

(assert (=> d!301273 (= res!476751 e!676580)))

(declare-fun res!476749 () Bool)

(assert (=> d!301273 (=> (not res!476749) (not e!676580))))

(assert (=> d!301273 (= res!476749 (isDefined!2083 lt!360767))))

(assert (=> d!301273 (= lt!360767 e!676577)))

(declare-fun c!178981 () Bool)

(assert (=> d!301273 (= c!178981 e!676581)))

(declare-fun res!476747 () Bool)

(assert (=> d!301273 (=> (not res!476747) (not e!676581))))

(assert (=> d!301273 (= res!476747 (matchR!1478 (reg!3271 r!15766) Nil!10156))))

(assert (=> d!301273 (validRegex!1411 (reg!3271 r!15766))))

(assert (=> d!301273 (= (findConcatSeparation!547 (reg!3271 r!15766) lt!360688 Nil!10156 s!10566 s!10566) lt!360767)))

(declare-fun b!1067069 () Bool)

(declare-fun lt!360766 () Unit!15559)

(declare-fun lt!360765 () Unit!15559)

(assert (=> b!1067069 (= lt!360766 lt!360765)))

(assert (=> b!1067069 (= (++!2812 (++!2812 Nil!10156 (Cons!10156 (h!15557 s!10566) Nil!10156)) (t!101218 s!10566)) s!10566)))

(assert (=> b!1067069 (= lt!360765 (lemmaMoveElementToOtherListKeepsConcatEq!405 Nil!10156 (h!15557 s!10566) (t!101218 s!10566) s!10566))))

(assert (=> b!1067069 (= e!676578 (findConcatSeparation!547 (reg!3271 r!15766) lt!360688 (++!2812 Nil!10156 (Cons!10156 (h!15557 s!10566) Nil!10156)) (t!101218 s!10566) s!10566))))

(assert (= (and d!301273 res!476747) b!1067076))

(assert (= (and d!301273 c!178981) b!1067072))

(assert (= (and d!301273 (not c!178981)) b!1067075))

(assert (= (and b!1067075 c!178980) b!1067073))

(assert (= (and b!1067075 (not c!178980)) b!1067069))

(assert (= (and d!301273 res!476749) b!1067068))

(assert (= (and b!1067068 res!476748) b!1067074))

(assert (= (and b!1067074 res!476750) b!1067070))

(assert (= (and d!301273 (not res!476751)) b!1067071))

(declare-fun m!1223665 () Bool)

(assert (=> b!1067071 m!1223665))

(assert (=> b!1067069 m!1223605))

(assert (=> b!1067069 m!1223605))

(assert (=> b!1067069 m!1223607))

(assert (=> b!1067069 m!1223609))

(assert (=> b!1067069 m!1223605))

(declare-fun m!1223667 () Bool)

(assert (=> b!1067069 m!1223667))

(assert (=> d!301273 m!1223665))

(declare-fun m!1223669 () Bool)

(assert (=> d!301273 m!1223669))

(assert (=> d!301273 m!1223635))

(declare-fun m!1223671 () Bool)

(assert (=> b!1067074 m!1223671))

(declare-fun m!1223673 () Bool)

(assert (=> b!1067074 m!1223673))

(assert (=> b!1067070 m!1223671))

(declare-fun m!1223675 () Bool)

(assert (=> b!1067070 m!1223675))

(declare-fun m!1223677 () Bool)

(assert (=> b!1067076 m!1223677))

(assert (=> b!1067068 m!1223671))

(declare-fun m!1223679 () Bool)

(assert (=> b!1067068 m!1223679))

(assert (=> b!1066691 d!301273))

(declare-fun b!1067087 () Bool)

(declare-fun e!676584 () Bool)

(assert (=> b!1067087 (= e!676584 tp_is_empty!5527)))

(declare-fun b!1067088 () Bool)

(declare-fun tp!319992 () Bool)

(declare-fun tp!319994 () Bool)

(assert (=> b!1067088 (= e!676584 (and tp!319992 tp!319994))))

(declare-fun b!1067089 () Bool)

(declare-fun tp!319995 () Bool)

(assert (=> b!1067089 (= e!676584 tp!319995)))

(declare-fun b!1067090 () Bool)

(declare-fun tp!319993 () Bool)

(declare-fun tp!319991 () Bool)

(assert (=> b!1067090 (= e!676584 (and tp!319993 tp!319991))))

(assert (=> b!1066689 (= tp!319960 e!676584)))

(assert (= (and b!1066689 (is-ElementMatch!2942 (reg!3271 r!15766))) b!1067087))

(assert (= (and b!1066689 (is-Concat!4775 (reg!3271 r!15766))) b!1067088))

(assert (= (and b!1066689 (is-Star!2942 (reg!3271 r!15766))) b!1067089))

(assert (= (and b!1066689 (is-Union!2942 (reg!3271 r!15766))) b!1067090))

(declare-fun b!1067095 () Bool)

(declare-fun e!676587 () Bool)

(declare-fun tp!319998 () Bool)

(assert (=> b!1067095 (= e!676587 (and tp_is_empty!5527 tp!319998))))

(assert (=> b!1066695 (= tp!319958 e!676587)))

(assert (= (and b!1066695 (is-Cons!10156 (t!101218 s!10566))) b!1067095))

(declare-fun b!1067096 () Bool)

(declare-fun e!676588 () Bool)

(assert (=> b!1067096 (= e!676588 tp_is_empty!5527)))

(declare-fun b!1067097 () Bool)

(declare-fun tp!320000 () Bool)

(declare-fun tp!320002 () Bool)

(assert (=> b!1067097 (= e!676588 (and tp!320000 tp!320002))))

(declare-fun b!1067098 () Bool)

(declare-fun tp!320003 () Bool)

(assert (=> b!1067098 (= e!676588 tp!320003)))

(declare-fun b!1067099 () Bool)

(declare-fun tp!320001 () Bool)

(declare-fun tp!319999 () Bool)

(assert (=> b!1067099 (= e!676588 (and tp!320001 tp!319999))))

(assert (=> b!1066692 (= tp!319957 e!676588)))

(assert (= (and b!1066692 (is-ElementMatch!2942 (regOne!6396 r!15766))) b!1067096))

(assert (= (and b!1066692 (is-Concat!4775 (regOne!6396 r!15766))) b!1067097))

(assert (= (and b!1066692 (is-Star!2942 (regOne!6396 r!15766))) b!1067098))

(assert (= (and b!1066692 (is-Union!2942 (regOne!6396 r!15766))) b!1067099))

(declare-fun b!1067100 () Bool)

(declare-fun e!676589 () Bool)

(assert (=> b!1067100 (= e!676589 tp_is_empty!5527)))

(declare-fun b!1067101 () Bool)

(declare-fun tp!320005 () Bool)

(declare-fun tp!320007 () Bool)

(assert (=> b!1067101 (= e!676589 (and tp!320005 tp!320007))))

(declare-fun b!1067102 () Bool)

(declare-fun tp!320008 () Bool)

(assert (=> b!1067102 (= e!676589 tp!320008)))

(declare-fun b!1067103 () Bool)

(declare-fun tp!320006 () Bool)

(declare-fun tp!320004 () Bool)

(assert (=> b!1067103 (= e!676589 (and tp!320006 tp!320004))))

(assert (=> b!1066692 (= tp!319959 e!676589)))

(assert (= (and b!1066692 (is-ElementMatch!2942 (regTwo!6396 r!15766))) b!1067100))

(assert (= (and b!1066692 (is-Concat!4775 (regTwo!6396 r!15766))) b!1067101))

(assert (= (and b!1066692 (is-Star!2942 (regTwo!6396 r!15766))) b!1067102))

(assert (= (and b!1066692 (is-Union!2942 (regTwo!6396 r!15766))) b!1067103))

(declare-fun b!1067104 () Bool)

(declare-fun e!676590 () Bool)

(assert (=> b!1067104 (= e!676590 tp_is_empty!5527)))

(declare-fun b!1067105 () Bool)

(declare-fun tp!320010 () Bool)

(declare-fun tp!320012 () Bool)

(assert (=> b!1067105 (= e!676590 (and tp!320010 tp!320012))))

(declare-fun b!1067106 () Bool)

(declare-fun tp!320013 () Bool)

(assert (=> b!1067106 (= e!676590 tp!320013)))

(declare-fun b!1067107 () Bool)

(declare-fun tp!320011 () Bool)

(declare-fun tp!320009 () Bool)

(assert (=> b!1067107 (= e!676590 (and tp!320011 tp!320009))))

(assert (=> b!1066696 (= tp!319962 e!676590)))

(assert (= (and b!1066696 (is-ElementMatch!2942 (regOne!6397 r!15766))) b!1067104))

(assert (= (and b!1066696 (is-Concat!4775 (regOne!6397 r!15766))) b!1067105))

(assert (= (and b!1066696 (is-Star!2942 (regOne!6397 r!15766))) b!1067106))

(assert (= (and b!1066696 (is-Union!2942 (regOne!6397 r!15766))) b!1067107))

(declare-fun b!1067117 () Bool)

(declare-fun e!676596 () Bool)

(assert (=> b!1067117 (= e!676596 tp_is_empty!5527)))

(declare-fun b!1067118 () Bool)

(declare-fun tp!320015 () Bool)

(declare-fun tp!320017 () Bool)

(assert (=> b!1067118 (= e!676596 (and tp!320015 tp!320017))))

(declare-fun b!1067119 () Bool)

(declare-fun tp!320018 () Bool)

(assert (=> b!1067119 (= e!676596 tp!320018)))

(declare-fun b!1067120 () Bool)

(declare-fun tp!320016 () Bool)

(declare-fun tp!320014 () Bool)

(assert (=> b!1067120 (= e!676596 (and tp!320016 tp!320014))))

(assert (=> b!1066696 (= tp!319961 e!676596)))

(assert (= (and b!1066696 (is-ElementMatch!2942 (regTwo!6397 r!15766))) b!1067117))

(assert (= (and b!1066696 (is-Concat!4775 (regTwo!6397 r!15766))) b!1067118))

(assert (= (and b!1066696 (is-Star!2942 (regTwo!6397 r!15766))) b!1067119))

(assert (= (and b!1066696 (is-Union!2942 (regTwo!6397 r!15766))) b!1067120))

(push 1)

(assert (not bm!77046))

(assert (not b!1067046))

(assert (not b!1066876))

(assert (not b!1067042))

(assert (not d!301237))

(assert (not b!1066784))

(assert (not b!1067040))

(assert (not d!301257))

(assert (not bm!77040))

(assert (not b!1066894))

(assert (not b!1066895))

(assert (not b!1067074))

(assert (not bm!77055))

(assert (not b!1066875))

(assert (not b!1067088))

(assert (not b!1067118))

(assert (not bm!77050))

(assert (not d!301263))

(assert (not bm!77054))

(assert (not d!301265))

(assert (not d!301267))

(assert (not b!1066969))

(assert (not d!301233))

(assert (not bm!77014))

(assert (not b!1067120))

(assert (not b!1066872))

(assert (not b!1066966))

(assert (not b!1067099))

(assert (not b!1067089))

(assert (not d!301255))

(assert (not d!301223))

(assert (not b!1067047))

(assert (not b!1067006))

(assert (not bm!77016))

(assert (not b!1067090))

(assert (not bm!77022))

(assert (not b!1067119))

(assert (not b!1066880))

(assert (not b!1067012))

(assert (not d!301243))

(assert (not b!1066881))

(assert (not d!301261))

(assert (not b!1067095))

(assert (not b!1067070))

(assert (not b!1067105))

(assert (not d!301259))

(assert (not b!1067041))

(assert (not b!1067038))

(assert (not b!1067067))

(assert (not b!1067071))

(assert (not bm!77021))

(assert (not d!301245))

(assert (not b!1067007))

(assert (not b!1066888))

(assert (not b!1067103))

(assert (not b!1067102))

(assert (not bm!77025))

(assert (not b!1067076))

(assert (not b!1067101))

(assert tp_is_empty!5527)

(assert (not d!301231))

(assert (not b!1066886))

(assert (not b!1066889))

(assert (not b!1067107))

(assert (not b!1067068))

(assert (not b!1067008))

(assert (not b!1067069))

(assert (not b!1067009))

(assert (not d!301229))

(assert (not d!301273))

(assert (not b!1067098))

(assert (not b!1066833))

(assert (not b!1066874))

(assert (not d!301271))

(assert (not b!1066957))

(assert (not b!1066890))

(assert (not bm!77041))

(assert (not bm!77047))

(assert (not b!1067014))

(assert (not bm!77026))

(assert (not b!1067097))

(assert (not d!301241))

(assert (not b!1067106))

(assert (not d!301227))

(assert (not b!1066830))

(assert (not d!301269))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

