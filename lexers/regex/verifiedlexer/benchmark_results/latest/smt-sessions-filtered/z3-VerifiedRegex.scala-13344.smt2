; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!724078 () Bool)

(assert start!724078)

(declare-fun b!7465642 () Bool)

(assert (=> b!7465642 true))

(assert (=> b!7465642 true))

(assert (=> b!7465642 true))

(declare-fun lambda!462035 () Int)

(declare-fun lambda!462034 () Int)

(assert (=> b!7465642 (not (= lambda!462035 lambda!462034))))

(assert (=> b!7465642 true))

(assert (=> b!7465642 true))

(assert (=> b!7465642 true))

(declare-fun bs!1930077 () Bool)

(declare-fun b!7465635 () Bool)

(assert (= bs!1930077 (and b!7465635 b!7465642)))

(declare-fun lambda!462036 () Int)

(declare-datatypes ((C!39376 0))(
  ( (C!39377 (val!30086 Int)) )
))
(declare-datatypes ((Regex!19551 0))(
  ( (ElementMatch!19551 (c!1379864 C!39376)) (Concat!28396 (regOne!39614 Regex!19551) (regTwo!39614 Regex!19551)) (EmptyExpr!19551) (Star!19551 (reg!19880 Regex!19551)) (EmptyLang!19551) (Union!19551 (regOne!39615 Regex!19551) (regTwo!39615 Regex!19551)) )
))
(declare-fun r1!5845 () Regex!19551)

(declare-fun lt!2623728 () Regex!19551)

(assert (=> bs!1930077 (= (= r1!5845 lt!2623728) (= lambda!462036 lambda!462034))))

(assert (=> bs!1930077 (not (= lambda!462036 lambda!462035))))

(assert (=> b!7465635 true))

(assert (=> b!7465635 true))

(assert (=> b!7465635 true))

(declare-fun lambda!462037 () Int)

(assert (=> bs!1930077 (not (= lambda!462037 lambda!462034))))

(assert (=> bs!1930077 (= (= r1!5845 lt!2623728) (= lambda!462037 lambda!462035))))

(assert (=> b!7465635 (not (= lambda!462037 lambda!462036))))

(assert (=> b!7465635 true))

(assert (=> b!7465635 true))

(assert (=> b!7465635 true))

(declare-fun b!7465627 () Bool)

(declare-fun e!4454842 () Bool)

(declare-fun tp!2164226 () Bool)

(declare-fun tp!2164232 () Bool)

(assert (=> b!7465627 (= e!4454842 (and tp!2164226 tp!2164232))))

(declare-fun b!7465628 () Bool)

(declare-fun tp_is_empty!49391 () Bool)

(assert (=> b!7465628 (= e!4454842 tp_is_empty!49391)))

(declare-fun b!7465629 () Bool)

(declare-fun e!4454841 () Bool)

(declare-fun tp!2164221 () Bool)

(declare-fun tp!2164224 () Bool)

(assert (=> b!7465629 (= e!4454841 (and tp!2164221 tp!2164224))))

(declare-fun b!7465630 () Bool)

(declare-fun e!4454837 () Bool)

(declare-fun tp!2164225 () Bool)

(assert (=> b!7465630 (= e!4454837 (and tp_is_empty!49391 tp!2164225))))

(declare-fun b!7465631 () Bool)

(declare-fun res!2994680 () Bool)

(declare-fun e!4454839 () Bool)

(assert (=> b!7465631 (=> (not res!2994680) (not e!4454839))))

(declare-fun r2!5783 () Regex!19551)

(declare-fun validRegex!10065 (Regex!19551) Bool)

(assert (=> b!7465631 (= res!2994680 (validRegex!10065 r2!5783))))

(declare-fun b!7465632 () Bool)

(assert (=> b!7465632 (= e!4454841 tp_is_empty!49391)))

(declare-fun b!7465633 () Bool)

(declare-fun e!4454843 () Bool)

(declare-fun tp!2164223 () Bool)

(declare-fun tp!2164231 () Bool)

(assert (=> b!7465633 (= e!4454843 (and tp!2164223 tp!2164231))))

(declare-fun b!7465634 () Bool)

(assert (=> b!7465634 (= e!4454843 tp_is_empty!49391)))

(declare-fun e!4454840 () Bool)

(declare-fun lt!2623737 () Bool)

(assert (=> b!7465635 (= e!4454840 lt!2623737)))

(declare-fun Exists!4170 (Int) Bool)

(assert (=> b!7465635 (= (Exists!4170 lambda!462036) (Exists!4170 lambda!462037))))

(declare-datatypes ((List!72267 0))(
  ( (Nil!72143) (Cons!72143 (h!78591 C!39376) (t!386836 List!72267)) )
))
(declare-fun s!13591 () List!72267)

(declare-fun rTail!78 () Regex!19551)

(declare-datatypes ((Unit!165937 0))(
  ( (Unit!165938) )
))
(declare-fun lt!2623735 () Unit!165937)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2504 (Regex!19551 Regex!19551 List!72267) Unit!165937)

(assert (=> b!7465635 (= lt!2623735 (lemmaExistCutMatchRandMatchRSpecEquivalent!2504 r1!5845 rTail!78 s!13591))))

(assert (=> b!7465635 (= lt!2623737 (Exists!4170 lambda!462036))))

(declare-datatypes ((tuple2!68552 0))(
  ( (tuple2!68553 (_1!37579 List!72267) (_2!37579 List!72267)) )
))
(declare-datatypes ((Option!17108 0))(
  ( (None!17107) (Some!17107 (v!54236 tuple2!68552)) )
))
(declare-fun isDefined!13797 (Option!17108) Bool)

(declare-fun findConcatSeparation!3230 (Regex!19551 Regex!19551 List!72267 List!72267 List!72267) Option!17108)

(assert (=> b!7465635 (= lt!2623737 (isDefined!13797 (findConcatSeparation!3230 r1!5845 rTail!78 Nil!72143 s!13591 s!13591)))))

(declare-fun lt!2623741 () Unit!165937)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2988 (Regex!19551 Regex!19551 List!72267) Unit!165937)

(assert (=> b!7465635 (= lt!2623741 (lemmaFindConcatSeparationEquivalentToExists!2988 r1!5845 rTail!78 s!13591))))

(declare-fun b!7465636 () Bool)

(declare-fun tp!2164233 () Bool)

(declare-fun tp!2164220 () Bool)

(assert (=> b!7465636 (= e!4454842 (and tp!2164233 tp!2164220))))

(declare-fun b!7465638 () Bool)

(declare-fun tp!2164227 () Bool)

(assert (=> b!7465638 (= e!4454842 tp!2164227)))

(declare-fun b!7465639 () Bool)

(declare-fun e!4454838 () Bool)

(assert (=> b!7465639 (= e!4454839 (not e!4454838))))

(declare-fun res!2994683 () Bool)

(assert (=> b!7465639 (=> res!2994683 e!4454838)))

(declare-fun lt!2623730 () Bool)

(assert (=> b!7465639 (= res!2994683 lt!2623730)))

(declare-fun lt!2623729 () Bool)

(declare-fun lt!2623736 () Regex!19551)

(declare-fun matchRSpec!4230 (Regex!19551 List!72267) Bool)

(assert (=> b!7465639 (= lt!2623729 (matchRSpec!4230 lt!2623736 s!13591))))

(declare-fun matchR!9315 (Regex!19551 List!72267) Bool)

(assert (=> b!7465639 (= lt!2623729 (matchR!9315 lt!2623736 s!13591))))

(declare-fun lt!2623732 () Unit!165937)

(declare-fun mainMatchTheorem!4224 (Regex!19551 List!72267) Unit!165937)

(assert (=> b!7465639 (= lt!2623732 (mainMatchTheorem!4224 lt!2623736 s!13591))))

(declare-fun lt!2623723 () Regex!19551)

(assert (=> b!7465639 (= lt!2623730 (matchRSpec!4230 lt!2623723 s!13591))))

(assert (=> b!7465639 (= lt!2623730 (matchR!9315 lt!2623723 s!13591))))

(declare-fun lt!2623740 () Unit!165937)

(assert (=> b!7465639 (= lt!2623740 (mainMatchTheorem!4224 lt!2623723 s!13591))))

(declare-fun lt!2623731 () Regex!19551)

(declare-fun lt!2623733 () Regex!19551)

(assert (=> b!7465639 (= lt!2623736 (Union!19551 lt!2623731 lt!2623733))))

(assert (=> b!7465639 (= lt!2623733 (Concat!28396 r2!5783 rTail!78))))

(assert (=> b!7465639 (= lt!2623731 (Concat!28396 r1!5845 rTail!78))))

(assert (=> b!7465639 (= lt!2623723 (Concat!28396 lt!2623728 rTail!78))))

(assert (=> b!7465639 (= lt!2623728 (Union!19551 r1!5845 r2!5783))))

(declare-fun b!7465640 () Bool)

(declare-fun res!2994679 () Bool)

(assert (=> b!7465640 (=> (not res!2994679) (not e!4454839))))

(assert (=> b!7465640 (= res!2994679 (validRegex!10065 rTail!78))))

(declare-fun b!7465641 () Bool)

(declare-fun tp!2164234 () Bool)

(declare-fun tp!2164235 () Bool)

(assert (=> b!7465641 (= e!4454841 (and tp!2164234 tp!2164235))))

(declare-fun e!4454844 () Bool)

(assert (=> b!7465642 (= e!4454838 e!4454844)))

(declare-fun res!2994684 () Bool)

(assert (=> b!7465642 (=> res!2994684 e!4454844)))

(declare-fun lt!2623726 () Bool)

(assert (=> b!7465642 (= res!2994684 (or lt!2623726 (not lt!2623729)))))

(assert (=> b!7465642 (= (Exists!4170 lambda!462034) (Exists!4170 lambda!462035))))

(declare-fun lt!2623725 () Unit!165937)

(assert (=> b!7465642 (= lt!2623725 (lemmaExistCutMatchRandMatchRSpecEquivalent!2504 lt!2623728 rTail!78 s!13591))))

(assert (=> b!7465642 (= lt!2623726 (Exists!4170 lambda!462034))))

(assert (=> b!7465642 (= lt!2623726 (isDefined!13797 (findConcatSeparation!3230 lt!2623728 rTail!78 Nil!72143 s!13591 s!13591)))))

(declare-fun lt!2623738 () Unit!165937)

(assert (=> b!7465642 (= lt!2623738 (lemmaFindConcatSeparationEquivalentToExists!2988 lt!2623728 rTail!78 s!13591))))

(declare-fun b!7465643 () Bool)

(declare-fun tp!2164229 () Bool)

(declare-fun tp!2164230 () Bool)

(assert (=> b!7465643 (= e!4454843 (and tp!2164229 tp!2164230))))

(declare-fun b!7465644 () Bool)

(assert (=> b!7465644 (= e!4454844 e!4454840)))

(declare-fun res!2994681 () Bool)

(assert (=> b!7465644 (=> res!2994681 e!4454840)))

(declare-fun lt!2623727 () Bool)

(declare-fun lt!2623724 () Bool)

(assert (=> b!7465644 (= res!2994681 (or (and (not lt!2623727) (not lt!2623724)) (not lt!2623727)))))

(assert (=> b!7465644 (= lt!2623724 (matchRSpec!4230 lt!2623733 s!13591))))

(assert (=> b!7465644 (= lt!2623724 (matchR!9315 lt!2623733 s!13591))))

(declare-fun lt!2623734 () Unit!165937)

(assert (=> b!7465644 (= lt!2623734 (mainMatchTheorem!4224 lt!2623733 s!13591))))

(assert (=> b!7465644 (= lt!2623727 (matchRSpec!4230 lt!2623731 s!13591))))

(assert (=> b!7465644 (= lt!2623727 (matchR!9315 lt!2623731 s!13591))))

(declare-fun lt!2623739 () Unit!165937)

(assert (=> b!7465644 (= lt!2623739 (mainMatchTheorem!4224 lt!2623731 s!13591))))

(declare-fun b!7465645 () Bool)

(declare-fun tp!2164228 () Bool)

(assert (=> b!7465645 (= e!4454841 tp!2164228)))

(declare-fun res!2994682 () Bool)

(assert (=> start!724078 (=> (not res!2994682) (not e!4454839))))

(assert (=> start!724078 (= res!2994682 (validRegex!10065 r1!5845))))

(assert (=> start!724078 e!4454839))

(assert (=> start!724078 e!4454842))

(assert (=> start!724078 e!4454841))

(assert (=> start!724078 e!4454843))

(assert (=> start!724078 e!4454837))

(declare-fun b!7465637 () Bool)

(declare-fun tp!2164222 () Bool)

(assert (=> b!7465637 (= e!4454843 tp!2164222)))

(assert (= (and start!724078 res!2994682) b!7465631))

(assert (= (and b!7465631 res!2994680) b!7465640))

(assert (= (and b!7465640 res!2994679) b!7465639))

(assert (= (and b!7465639 (not res!2994683)) b!7465642))

(assert (= (and b!7465642 (not res!2994684)) b!7465644))

(assert (= (and b!7465644 (not res!2994681)) b!7465635))

(get-info :version)

(assert (= (and start!724078 ((_ is ElementMatch!19551) r1!5845)) b!7465628))

(assert (= (and start!724078 ((_ is Concat!28396) r1!5845)) b!7465636))

(assert (= (and start!724078 ((_ is Star!19551) r1!5845)) b!7465638))

(assert (= (and start!724078 ((_ is Union!19551) r1!5845)) b!7465627))

(assert (= (and start!724078 ((_ is ElementMatch!19551) r2!5783)) b!7465632))

(assert (= (and start!724078 ((_ is Concat!28396) r2!5783)) b!7465641))

(assert (= (and start!724078 ((_ is Star!19551) r2!5783)) b!7465645))

(assert (= (and start!724078 ((_ is Union!19551) r2!5783)) b!7465629))

(assert (= (and start!724078 ((_ is ElementMatch!19551) rTail!78)) b!7465634))

(assert (= (and start!724078 ((_ is Concat!28396) rTail!78)) b!7465633))

(assert (= (and start!724078 ((_ is Star!19551) rTail!78)) b!7465637))

(assert (= (and start!724078 ((_ is Union!19551) rTail!78)) b!7465643))

(assert (= (and start!724078 ((_ is Cons!72143) s!13591)) b!7465630))

(declare-fun m!8064618 () Bool)

(assert (=> b!7465639 m!8064618))

(declare-fun m!8064620 () Bool)

(assert (=> b!7465639 m!8064620))

(declare-fun m!8064622 () Bool)

(assert (=> b!7465639 m!8064622))

(declare-fun m!8064624 () Bool)

(assert (=> b!7465639 m!8064624))

(declare-fun m!8064626 () Bool)

(assert (=> b!7465639 m!8064626))

(declare-fun m!8064628 () Bool)

(assert (=> b!7465639 m!8064628))

(declare-fun m!8064630 () Bool)

(assert (=> b!7465640 m!8064630))

(declare-fun m!8064632 () Bool)

(assert (=> b!7465631 m!8064632))

(declare-fun m!8064634 () Bool)

(assert (=> b!7465642 m!8064634))

(declare-fun m!8064636 () Bool)

(assert (=> b!7465642 m!8064636))

(declare-fun m!8064638 () Bool)

(assert (=> b!7465642 m!8064638))

(declare-fun m!8064640 () Bool)

(assert (=> b!7465642 m!8064640))

(assert (=> b!7465642 m!8064634))

(declare-fun m!8064642 () Bool)

(assert (=> b!7465642 m!8064642))

(declare-fun m!8064644 () Bool)

(assert (=> b!7465642 m!8064644))

(assert (=> b!7465642 m!8064640))

(declare-fun m!8064646 () Bool)

(assert (=> b!7465635 m!8064646))

(declare-fun m!8064648 () Bool)

(assert (=> b!7465635 m!8064648))

(assert (=> b!7465635 m!8064648))

(declare-fun m!8064650 () Bool)

(assert (=> b!7465635 m!8064650))

(declare-fun m!8064652 () Bool)

(assert (=> b!7465635 m!8064652))

(declare-fun m!8064654 () Bool)

(assert (=> b!7465635 m!8064654))

(declare-fun m!8064656 () Bool)

(assert (=> b!7465635 m!8064656))

(assert (=> b!7465635 m!8064650))

(declare-fun m!8064658 () Bool)

(assert (=> b!7465644 m!8064658))

(declare-fun m!8064660 () Bool)

(assert (=> b!7465644 m!8064660))

(declare-fun m!8064662 () Bool)

(assert (=> b!7465644 m!8064662))

(declare-fun m!8064664 () Bool)

(assert (=> b!7465644 m!8064664))

(declare-fun m!8064666 () Bool)

(assert (=> b!7465644 m!8064666))

(declare-fun m!8064668 () Bool)

(assert (=> b!7465644 m!8064668))

(declare-fun m!8064670 () Bool)

(assert (=> start!724078 m!8064670))

(check-sat (not b!7465630) (not b!7465638) (not b!7465636) (not b!7465642) (not b!7465629) (not start!724078) (not b!7465641) (not b!7465644) tp_is_empty!49391 (not b!7465640) (not b!7465645) (not b!7465633) (not b!7465643) (not b!7465631) (not b!7465639) (not b!7465637) (not b!7465635) (not b!7465627))
(check-sat)
(get-model)

(declare-fun b!7465668 () Bool)

(declare-fun res!2994699 () Bool)

(declare-fun e!4454862 () Bool)

(assert (=> b!7465668 (=> (not res!2994699) (not e!4454862))))

(declare-fun call!685735 () Bool)

(assert (=> b!7465668 (= res!2994699 call!685735)))

(declare-fun e!4454863 () Bool)

(assert (=> b!7465668 (= e!4454863 e!4454862)))

(declare-fun bm!685728 () Bool)

(declare-fun call!685733 () Bool)

(declare-fun c!1379870 () Bool)

(assert (=> bm!685728 (= call!685733 (validRegex!10065 (ite c!1379870 (regTwo!39615 rTail!78) (regTwo!39614 rTail!78))))))

(declare-fun bm!685729 () Bool)

(declare-fun call!685734 () Bool)

(assert (=> bm!685729 (= call!685735 call!685734)))

(declare-fun b!7465669 () Bool)

(declare-fun res!2994697 () Bool)

(declare-fun e!4454864 () Bool)

(assert (=> b!7465669 (=> res!2994697 e!4454864)))

(assert (=> b!7465669 (= res!2994697 (not ((_ is Concat!28396) rTail!78)))))

(assert (=> b!7465669 (= e!4454863 e!4454864)))

(declare-fun d!2298533 () Bool)

(declare-fun res!2994695 () Bool)

(declare-fun e!4454865 () Bool)

(assert (=> d!2298533 (=> res!2994695 e!4454865)))

(assert (=> d!2298533 (= res!2994695 ((_ is ElementMatch!19551) rTail!78))))

(assert (=> d!2298533 (= (validRegex!10065 rTail!78) e!4454865)))

(declare-fun b!7465670 () Bool)

(declare-fun e!4454859 () Bool)

(assert (=> b!7465670 (= e!4454859 call!685734)))

(declare-fun c!1379869 () Bool)

(declare-fun bm!685730 () Bool)

(assert (=> bm!685730 (= call!685734 (validRegex!10065 (ite c!1379869 (reg!19880 rTail!78) (ite c!1379870 (regOne!39615 rTail!78) (regOne!39614 rTail!78)))))))

(declare-fun b!7465671 () Bool)

(declare-fun e!4454861 () Bool)

(assert (=> b!7465671 (= e!4454864 e!4454861)))

(declare-fun res!2994696 () Bool)

(assert (=> b!7465671 (=> (not res!2994696) (not e!4454861))))

(assert (=> b!7465671 (= res!2994696 call!685735)))

(declare-fun b!7465672 () Bool)

(assert (=> b!7465672 (= e!4454861 call!685733)))

(declare-fun b!7465673 () Bool)

(declare-fun e!4454860 () Bool)

(assert (=> b!7465673 (= e!4454860 e!4454863)))

(assert (=> b!7465673 (= c!1379870 ((_ is Union!19551) rTail!78))))

(declare-fun b!7465674 () Bool)

(assert (=> b!7465674 (= e!4454865 e!4454860)))

(assert (=> b!7465674 (= c!1379869 ((_ is Star!19551) rTail!78))))

(declare-fun b!7465675 () Bool)

(assert (=> b!7465675 (= e!4454860 e!4454859)))

(declare-fun res!2994698 () Bool)

(declare-fun nullable!8520 (Regex!19551) Bool)

(assert (=> b!7465675 (= res!2994698 (not (nullable!8520 (reg!19880 rTail!78))))))

(assert (=> b!7465675 (=> (not res!2994698) (not e!4454859))))

(declare-fun b!7465676 () Bool)

(assert (=> b!7465676 (= e!4454862 call!685733)))

(assert (= (and d!2298533 (not res!2994695)) b!7465674))

(assert (= (and b!7465674 c!1379869) b!7465675))

(assert (= (and b!7465674 (not c!1379869)) b!7465673))

(assert (= (and b!7465675 res!2994698) b!7465670))

(assert (= (and b!7465673 c!1379870) b!7465668))

(assert (= (and b!7465673 (not c!1379870)) b!7465669))

(assert (= (and b!7465668 res!2994699) b!7465676))

(assert (= (and b!7465669 (not res!2994697)) b!7465671))

(assert (= (and b!7465671 res!2994696) b!7465672))

(assert (= (or b!7465676 b!7465672) bm!685728))

(assert (= (or b!7465668 b!7465671) bm!685729))

(assert (= (or b!7465670 bm!685729) bm!685730))

(declare-fun m!8064672 () Bool)

(assert (=> bm!685728 m!8064672))

(declare-fun m!8064674 () Bool)

(assert (=> bm!685730 m!8064674))

(declare-fun m!8064676 () Bool)

(assert (=> b!7465675 m!8064676))

(assert (=> b!7465640 d!2298533))

(declare-fun b!7465736 () Bool)

(declare-fun e!4454900 () Bool)

(declare-fun lt!2623755 () Bool)

(assert (=> b!7465736 (= e!4454900 (not lt!2623755))))

(declare-fun b!7465737 () Bool)

(declare-fun e!4454901 () Bool)

(declare-fun derivativeStep!5579 (Regex!19551 C!39376) Regex!19551)

(declare-fun head!15319 (List!72267) C!39376)

(declare-fun tail!14888 (List!72267) List!72267)

(assert (=> b!7465737 (= e!4454901 (matchR!9315 (derivativeStep!5579 lt!2623723 (head!15319 s!13591)) (tail!14888 s!13591)))))

(declare-fun b!7465739 () Bool)

(declare-fun res!2994738 () Bool)

(declare-fun e!4454897 () Bool)

(assert (=> b!7465739 (=> res!2994738 e!4454897)))

(declare-fun e!4454899 () Bool)

(assert (=> b!7465739 (= res!2994738 e!4454899)))

(declare-fun res!2994742 () Bool)

(assert (=> b!7465739 (=> (not res!2994742) (not e!4454899))))

(assert (=> b!7465739 (= res!2994742 lt!2623755)))

(declare-fun b!7465740 () Bool)

(assert (=> b!7465740 (= e!4454899 (= (head!15319 s!13591) (c!1379864 lt!2623723)))))

(declare-fun b!7465741 () Bool)

(assert (=> b!7465741 (= e!4454901 (nullable!8520 lt!2623723))))

(declare-fun b!7465742 () Bool)

(declare-fun e!4454898 () Bool)

(assert (=> b!7465742 (= e!4454897 e!4454898)))

(declare-fun res!2994740 () Bool)

(assert (=> b!7465742 (=> (not res!2994740) (not e!4454898))))

(assert (=> b!7465742 (= res!2994740 (not lt!2623755))))

(declare-fun b!7465743 () Bool)

(declare-fun e!4454903 () Bool)

(assert (=> b!7465743 (= e!4454898 e!4454903)))

(declare-fun res!2994737 () Bool)

(assert (=> b!7465743 (=> res!2994737 e!4454903)))

(declare-fun call!685738 () Bool)

(assert (=> b!7465743 (= res!2994737 call!685738)))

(declare-fun b!7465744 () Bool)

(declare-fun e!4454902 () Bool)

(assert (=> b!7465744 (= e!4454902 (= lt!2623755 call!685738))))

(declare-fun bm!685733 () Bool)

(declare-fun isEmpty!41157 (List!72267) Bool)

(assert (=> bm!685733 (= call!685738 (isEmpty!41157 s!13591))))

(declare-fun b!7465738 () Bool)

(declare-fun res!2994741 () Bool)

(assert (=> b!7465738 (=> (not res!2994741) (not e!4454899))))

(assert (=> b!7465738 (= res!2994741 (isEmpty!41157 (tail!14888 s!13591)))))

(declare-fun d!2298537 () Bool)

(assert (=> d!2298537 e!4454902))

(declare-fun c!1379883 () Bool)

(assert (=> d!2298537 (= c!1379883 ((_ is EmptyExpr!19551) lt!2623723))))

(assert (=> d!2298537 (= lt!2623755 e!4454901)))

(declare-fun c!1379884 () Bool)

(assert (=> d!2298537 (= c!1379884 (isEmpty!41157 s!13591))))

(assert (=> d!2298537 (validRegex!10065 lt!2623723)))

(assert (=> d!2298537 (= (matchR!9315 lt!2623723 s!13591) lt!2623755)))

(declare-fun b!7465745 () Bool)

(declare-fun res!2994739 () Bool)

(assert (=> b!7465745 (=> res!2994739 e!4454897)))

(assert (=> b!7465745 (= res!2994739 (not ((_ is ElementMatch!19551) lt!2623723)))))

(assert (=> b!7465745 (= e!4454900 e!4454897)))

(declare-fun b!7465746 () Bool)

(declare-fun res!2994735 () Bool)

(assert (=> b!7465746 (=> (not res!2994735) (not e!4454899))))

(assert (=> b!7465746 (= res!2994735 (not call!685738))))

(declare-fun b!7465747 () Bool)

(declare-fun res!2994736 () Bool)

(assert (=> b!7465747 (=> res!2994736 e!4454903)))

(assert (=> b!7465747 (= res!2994736 (not (isEmpty!41157 (tail!14888 s!13591))))))

(declare-fun b!7465748 () Bool)

(assert (=> b!7465748 (= e!4454903 (not (= (head!15319 s!13591) (c!1379864 lt!2623723))))))

(declare-fun b!7465749 () Bool)

(assert (=> b!7465749 (= e!4454902 e!4454900)))

(declare-fun c!1379885 () Bool)

(assert (=> b!7465749 (= c!1379885 ((_ is EmptyLang!19551) lt!2623723))))

(assert (= (and d!2298537 c!1379884) b!7465741))

(assert (= (and d!2298537 (not c!1379884)) b!7465737))

(assert (= (and d!2298537 c!1379883) b!7465744))

(assert (= (and d!2298537 (not c!1379883)) b!7465749))

(assert (= (and b!7465749 c!1379885) b!7465736))

(assert (= (and b!7465749 (not c!1379885)) b!7465745))

(assert (= (and b!7465745 (not res!2994739)) b!7465739))

(assert (= (and b!7465739 res!2994742) b!7465746))

(assert (= (and b!7465746 res!2994735) b!7465738))

(assert (= (and b!7465738 res!2994741) b!7465740))

(assert (= (and b!7465739 (not res!2994738)) b!7465742))

(assert (= (and b!7465742 res!2994740) b!7465743))

(assert (= (and b!7465743 (not res!2994737)) b!7465747))

(assert (= (and b!7465747 (not res!2994736)) b!7465748))

(assert (= (or b!7465744 b!7465743 b!7465746) bm!685733))

(declare-fun m!8064700 () Bool)

(assert (=> b!7465741 m!8064700))

(declare-fun m!8064702 () Bool)

(assert (=> b!7465738 m!8064702))

(assert (=> b!7465738 m!8064702))

(declare-fun m!8064704 () Bool)

(assert (=> b!7465738 m!8064704))

(assert (=> b!7465747 m!8064702))

(assert (=> b!7465747 m!8064702))

(assert (=> b!7465747 m!8064704))

(declare-fun m!8064706 () Bool)

(assert (=> b!7465748 m!8064706))

(declare-fun m!8064708 () Bool)

(assert (=> d!2298537 m!8064708))

(declare-fun m!8064710 () Bool)

(assert (=> d!2298537 m!8064710))

(assert (=> bm!685733 m!8064708))

(assert (=> b!7465737 m!8064706))

(assert (=> b!7465737 m!8064706))

(declare-fun m!8064712 () Bool)

(assert (=> b!7465737 m!8064712))

(assert (=> b!7465737 m!8064702))

(assert (=> b!7465737 m!8064712))

(assert (=> b!7465737 m!8064702))

(declare-fun m!8064714 () Bool)

(assert (=> b!7465737 m!8064714))

(assert (=> b!7465740 m!8064706))

(assert (=> b!7465639 d!2298537))

(declare-fun bs!1930102 () Bool)

(declare-fun b!7465800 () Bool)

(assert (= bs!1930102 (and b!7465800 b!7465642)))

(declare-fun lambda!462054 () Int)

(assert (=> bs!1930102 (not (= lambda!462054 lambda!462034))))

(assert (=> bs!1930102 (not (= lambda!462054 lambda!462035))))

(declare-fun bs!1930103 () Bool)

(assert (= bs!1930103 (and b!7465800 b!7465635)))

(assert (=> bs!1930103 (not (= lambda!462054 lambda!462036))))

(assert (=> bs!1930103 (not (= lambda!462054 lambda!462037))))

(assert (=> b!7465800 true))

(assert (=> b!7465800 true))

(declare-fun bs!1930104 () Bool)

(declare-fun b!7465807 () Bool)

(assert (= bs!1930104 (and b!7465807 b!7465635)))

(declare-fun lambda!462055 () Int)

(assert (=> bs!1930104 (not (= lambda!462055 lambda!462036))))

(declare-fun bs!1930105 () Bool)

(assert (= bs!1930105 (and b!7465807 b!7465800)))

(assert (=> bs!1930105 (not (= lambda!462055 lambda!462054))))

(declare-fun bs!1930106 () Bool)

(assert (= bs!1930106 (and b!7465807 b!7465642)))

(assert (=> bs!1930106 (not (= lambda!462055 lambda!462034))))

(assert (=> bs!1930106 (= (and (= (regOne!39614 lt!2623723) lt!2623728) (= (regTwo!39614 lt!2623723) rTail!78)) (= lambda!462055 lambda!462035))))

(assert (=> bs!1930104 (= (and (= (regOne!39614 lt!2623723) r1!5845) (= (regTwo!39614 lt!2623723) rTail!78)) (= lambda!462055 lambda!462037))))

(assert (=> b!7465807 true))

(assert (=> b!7465807 true))

(declare-fun b!7465799 () Bool)

(declare-fun e!4454937 () Bool)

(declare-fun e!4454931 () Bool)

(assert (=> b!7465799 (= e!4454937 e!4454931)))

(declare-fun res!2994774 () Bool)

(assert (=> b!7465799 (= res!2994774 (not ((_ is EmptyLang!19551) lt!2623723)))))

(assert (=> b!7465799 (=> (not res!2994774) (not e!4454931))))

(declare-fun e!4454935 () Bool)

(declare-fun call!685743 () Bool)

(assert (=> b!7465800 (= e!4454935 call!685743)))

(declare-fun b!7465801 () Bool)

(declare-fun e!4454934 () Bool)

(declare-fun e!4454932 () Bool)

(assert (=> b!7465801 (= e!4454934 e!4454932)))

(declare-fun res!2994772 () Bool)

(assert (=> b!7465801 (= res!2994772 (matchRSpec!4230 (regOne!39615 lt!2623723) s!13591))))

(assert (=> b!7465801 (=> res!2994772 e!4454932)))

(declare-fun d!2298541 () Bool)

(declare-fun c!1379898 () Bool)

(assert (=> d!2298541 (= c!1379898 ((_ is EmptyExpr!19551) lt!2623723))))

(assert (=> d!2298541 (= (matchRSpec!4230 lt!2623723 s!13591) e!4454937)))

(declare-fun b!7465802 () Bool)

(declare-fun res!2994773 () Bool)

(assert (=> b!7465802 (=> res!2994773 e!4454935)))

(declare-fun call!685744 () Bool)

(assert (=> b!7465802 (= res!2994773 call!685744)))

(declare-fun e!4454933 () Bool)

(assert (=> b!7465802 (= e!4454933 e!4454935)))

(declare-fun b!7465803 () Bool)

(declare-fun c!1379899 () Bool)

(assert (=> b!7465803 (= c!1379899 ((_ is Union!19551) lt!2623723))))

(declare-fun e!4454936 () Bool)

(assert (=> b!7465803 (= e!4454936 e!4454934)))

(declare-fun b!7465804 () Bool)

(declare-fun c!1379897 () Bool)

(assert (=> b!7465804 (= c!1379897 ((_ is ElementMatch!19551) lt!2623723))))

(assert (=> b!7465804 (= e!4454931 e!4454936)))

(declare-fun bm!685738 () Bool)

(assert (=> bm!685738 (= call!685744 (isEmpty!41157 s!13591))))

(declare-fun b!7465805 () Bool)

(assert (=> b!7465805 (= e!4454932 (matchRSpec!4230 (regTwo!39615 lt!2623723) s!13591))))

(declare-fun b!7465806 () Bool)

(assert (=> b!7465806 (= e!4454936 (= s!13591 (Cons!72143 (c!1379864 lt!2623723) Nil!72143)))))

(declare-fun c!1379896 () Bool)

(declare-fun bm!685739 () Bool)

(assert (=> bm!685739 (= call!685743 (Exists!4170 (ite c!1379896 lambda!462054 lambda!462055)))))

(assert (=> b!7465807 (= e!4454933 call!685743)))

(declare-fun b!7465808 () Bool)

(assert (=> b!7465808 (= e!4454934 e!4454933)))

(assert (=> b!7465808 (= c!1379896 ((_ is Star!19551) lt!2623723))))

(declare-fun b!7465809 () Bool)

(assert (=> b!7465809 (= e!4454937 call!685744)))

(assert (= (and d!2298541 c!1379898) b!7465809))

(assert (= (and d!2298541 (not c!1379898)) b!7465799))

(assert (= (and b!7465799 res!2994774) b!7465804))

(assert (= (and b!7465804 c!1379897) b!7465806))

(assert (= (and b!7465804 (not c!1379897)) b!7465803))

(assert (= (and b!7465803 c!1379899) b!7465801))

(assert (= (and b!7465803 (not c!1379899)) b!7465808))

(assert (= (and b!7465801 (not res!2994772)) b!7465805))

(assert (= (and b!7465808 c!1379896) b!7465802))

(assert (= (and b!7465808 (not c!1379896)) b!7465807))

(assert (= (and b!7465802 (not res!2994773)) b!7465800))

(assert (= (or b!7465800 b!7465807) bm!685739))

(assert (= (or b!7465809 b!7465802) bm!685738))

(declare-fun m!8064764 () Bool)

(assert (=> b!7465801 m!8064764))

(assert (=> bm!685738 m!8064708))

(declare-fun m!8064766 () Bool)

(assert (=> b!7465805 m!8064766))

(declare-fun m!8064768 () Bool)

(assert (=> bm!685739 m!8064768))

(assert (=> b!7465639 d!2298541))

(declare-fun d!2298565 () Bool)

(assert (=> d!2298565 (= (matchR!9315 lt!2623736 s!13591) (matchRSpec!4230 lt!2623736 s!13591))))

(declare-fun lt!2623773 () Unit!165937)

(declare-fun choose!57718 (Regex!19551 List!72267) Unit!165937)

(assert (=> d!2298565 (= lt!2623773 (choose!57718 lt!2623736 s!13591))))

(assert (=> d!2298565 (validRegex!10065 lt!2623736)))

(assert (=> d!2298565 (= (mainMatchTheorem!4224 lt!2623736 s!13591) lt!2623773)))

(declare-fun bs!1930108 () Bool)

(assert (= bs!1930108 d!2298565))

(assert (=> bs!1930108 m!8064628))

(assert (=> bs!1930108 m!8064620))

(declare-fun m!8064790 () Bool)

(assert (=> bs!1930108 m!8064790))

(declare-fun m!8064792 () Bool)

(assert (=> bs!1930108 m!8064792))

(assert (=> b!7465639 d!2298565))

(declare-fun bs!1930109 () Bool)

(declare-fun b!7465853 () Bool)

(assert (= bs!1930109 (and b!7465853 b!7465635)))

(declare-fun lambda!462056 () Int)

(assert (=> bs!1930109 (not (= lambda!462056 lambda!462036))))

(declare-fun bs!1930110 () Bool)

(assert (= bs!1930110 (and b!7465853 b!7465800)))

(assert (=> bs!1930110 (= (and (= (reg!19880 lt!2623736) (reg!19880 lt!2623723)) (= lt!2623736 lt!2623723)) (= lambda!462056 lambda!462054))))

(declare-fun bs!1930111 () Bool)

(assert (= bs!1930111 (and b!7465853 b!7465642)))

(assert (=> bs!1930111 (not (= lambda!462056 lambda!462034))))

(assert (=> bs!1930111 (not (= lambda!462056 lambda!462035))))

(declare-fun bs!1930112 () Bool)

(assert (= bs!1930112 (and b!7465853 b!7465807)))

(assert (=> bs!1930112 (not (= lambda!462056 lambda!462055))))

(assert (=> bs!1930109 (not (= lambda!462056 lambda!462037))))

(assert (=> b!7465853 true))

(assert (=> b!7465853 true))

(declare-fun bs!1930113 () Bool)

(declare-fun b!7465860 () Bool)

(assert (= bs!1930113 (and b!7465860 b!7465635)))

(declare-fun lambda!462057 () Int)

(assert (=> bs!1930113 (not (= lambda!462057 lambda!462036))))

(declare-fun bs!1930114 () Bool)

(assert (= bs!1930114 (and b!7465860 b!7465800)))

(assert (=> bs!1930114 (not (= lambda!462057 lambda!462054))))

(declare-fun bs!1930115 () Bool)

(assert (= bs!1930115 (and b!7465860 b!7465642)))

(assert (=> bs!1930115 (not (= lambda!462057 lambda!462034))))

(declare-fun bs!1930116 () Bool)

(assert (= bs!1930116 (and b!7465860 b!7465807)))

(assert (=> bs!1930116 (= (and (= (regOne!39614 lt!2623736) (regOne!39614 lt!2623723)) (= (regTwo!39614 lt!2623736) (regTwo!39614 lt!2623723))) (= lambda!462057 lambda!462055))))

(assert (=> bs!1930113 (= (and (= (regOne!39614 lt!2623736) r1!5845) (= (regTwo!39614 lt!2623736) rTail!78)) (= lambda!462057 lambda!462037))))

(assert (=> bs!1930115 (= (and (= (regOne!39614 lt!2623736) lt!2623728) (= (regTwo!39614 lt!2623736) rTail!78)) (= lambda!462057 lambda!462035))))

(declare-fun bs!1930117 () Bool)

(assert (= bs!1930117 (and b!7465860 b!7465853)))

(assert (=> bs!1930117 (not (= lambda!462057 lambda!462056))))

(assert (=> b!7465860 true))

(assert (=> b!7465860 true))

(declare-fun b!7465852 () Bool)

(declare-fun e!4454965 () Bool)

(declare-fun e!4454959 () Bool)

(assert (=> b!7465852 (= e!4454965 e!4454959)))

(declare-fun res!2994801 () Bool)

(assert (=> b!7465852 (= res!2994801 (not ((_ is EmptyLang!19551) lt!2623736)))))

(assert (=> b!7465852 (=> (not res!2994801) (not e!4454959))))

(declare-fun e!4454963 () Bool)

(declare-fun call!685748 () Bool)

(assert (=> b!7465853 (= e!4454963 call!685748)))

(declare-fun b!7465854 () Bool)

(declare-fun e!4454962 () Bool)

(declare-fun e!4454960 () Bool)

(assert (=> b!7465854 (= e!4454962 e!4454960)))

(declare-fun res!2994799 () Bool)

(assert (=> b!7465854 (= res!2994799 (matchRSpec!4230 (regOne!39615 lt!2623736) s!13591))))

(assert (=> b!7465854 (=> res!2994799 e!4454960)))

(declare-fun d!2298571 () Bool)

(declare-fun c!1379911 () Bool)

(assert (=> d!2298571 (= c!1379911 ((_ is EmptyExpr!19551) lt!2623736))))

(assert (=> d!2298571 (= (matchRSpec!4230 lt!2623736 s!13591) e!4454965)))

(declare-fun b!7465855 () Bool)

(declare-fun res!2994800 () Bool)

(assert (=> b!7465855 (=> res!2994800 e!4454963)))

(declare-fun call!685749 () Bool)

(assert (=> b!7465855 (= res!2994800 call!685749)))

(declare-fun e!4454961 () Bool)

(assert (=> b!7465855 (= e!4454961 e!4454963)))

(declare-fun b!7465856 () Bool)

(declare-fun c!1379912 () Bool)

(assert (=> b!7465856 (= c!1379912 ((_ is Union!19551) lt!2623736))))

(declare-fun e!4454964 () Bool)

(assert (=> b!7465856 (= e!4454964 e!4454962)))

(declare-fun b!7465857 () Bool)

(declare-fun c!1379910 () Bool)

(assert (=> b!7465857 (= c!1379910 ((_ is ElementMatch!19551) lt!2623736))))

(assert (=> b!7465857 (= e!4454959 e!4454964)))

(declare-fun bm!685743 () Bool)

(assert (=> bm!685743 (= call!685749 (isEmpty!41157 s!13591))))

(declare-fun b!7465858 () Bool)

(assert (=> b!7465858 (= e!4454960 (matchRSpec!4230 (regTwo!39615 lt!2623736) s!13591))))

(declare-fun b!7465859 () Bool)

(assert (=> b!7465859 (= e!4454964 (= s!13591 (Cons!72143 (c!1379864 lt!2623736) Nil!72143)))))

(declare-fun c!1379909 () Bool)

(declare-fun bm!685744 () Bool)

(assert (=> bm!685744 (= call!685748 (Exists!4170 (ite c!1379909 lambda!462056 lambda!462057)))))

(assert (=> b!7465860 (= e!4454961 call!685748)))

(declare-fun b!7465861 () Bool)

(assert (=> b!7465861 (= e!4454962 e!4454961)))

(assert (=> b!7465861 (= c!1379909 ((_ is Star!19551) lt!2623736))))

(declare-fun b!7465862 () Bool)

(assert (=> b!7465862 (= e!4454965 call!685749)))

(assert (= (and d!2298571 c!1379911) b!7465862))

(assert (= (and d!2298571 (not c!1379911)) b!7465852))

(assert (= (and b!7465852 res!2994801) b!7465857))

(assert (= (and b!7465857 c!1379910) b!7465859))

(assert (= (and b!7465857 (not c!1379910)) b!7465856))

(assert (= (and b!7465856 c!1379912) b!7465854))

(assert (= (and b!7465856 (not c!1379912)) b!7465861))

(assert (= (and b!7465854 (not res!2994799)) b!7465858))

(assert (= (and b!7465861 c!1379909) b!7465855))

(assert (= (and b!7465861 (not c!1379909)) b!7465860))

(assert (= (and b!7465855 (not res!2994800)) b!7465853))

(assert (= (or b!7465853 b!7465860) bm!685744))

(assert (= (or b!7465862 b!7465855) bm!685743))

(declare-fun m!8064794 () Bool)

(assert (=> b!7465854 m!8064794))

(assert (=> bm!685743 m!8064708))

(declare-fun m!8064796 () Bool)

(assert (=> b!7465858 m!8064796))

(declare-fun m!8064798 () Bool)

(assert (=> bm!685744 m!8064798))

(assert (=> b!7465639 d!2298571))

(declare-fun b!7465891 () Bool)

(declare-fun e!4454985 () Bool)

(declare-fun lt!2623774 () Bool)

(assert (=> b!7465891 (= e!4454985 (not lt!2623774))))

(declare-fun b!7465892 () Bool)

(declare-fun e!4454986 () Bool)

(assert (=> b!7465892 (= e!4454986 (matchR!9315 (derivativeStep!5579 lt!2623736 (head!15319 s!13591)) (tail!14888 s!13591)))))

(declare-fun b!7465894 () Bool)

(declare-fun res!2994817 () Bool)

(declare-fun e!4454982 () Bool)

(assert (=> b!7465894 (=> res!2994817 e!4454982)))

(declare-fun e!4454984 () Bool)

(assert (=> b!7465894 (= res!2994817 e!4454984)))

(declare-fun res!2994821 () Bool)

(assert (=> b!7465894 (=> (not res!2994821) (not e!4454984))))

(assert (=> b!7465894 (= res!2994821 lt!2623774)))

(declare-fun b!7465895 () Bool)

(assert (=> b!7465895 (= e!4454984 (= (head!15319 s!13591) (c!1379864 lt!2623736)))))

(declare-fun b!7465896 () Bool)

(assert (=> b!7465896 (= e!4454986 (nullable!8520 lt!2623736))))

(declare-fun b!7465897 () Bool)

(declare-fun e!4454983 () Bool)

(assert (=> b!7465897 (= e!4454982 e!4454983)))

(declare-fun res!2994819 () Bool)

(assert (=> b!7465897 (=> (not res!2994819) (not e!4454983))))

(assert (=> b!7465897 (= res!2994819 (not lt!2623774))))

(declare-fun b!7465898 () Bool)

(declare-fun e!4454988 () Bool)

(assert (=> b!7465898 (= e!4454983 e!4454988)))

(declare-fun res!2994816 () Bool)

(assert (=> b!7465898 (=> res!2994816 e!4454988)))

(declare-fun call!685750 () Bool)

(assert (=> b!7465898 (= res!2994816 call!685750)))

(declare-fun b!7465899 () Bool)

(declare-fun e!4454987 () Bool)

(assert (=> b!7465899 (= e!4454987 (= lt!2623774 call!685750))))

(declare-fun bm!685745 () Bool)

(assert (=> bm!685745 (= call!685750 (isEmpty!41157 s!13591))))

(declare-fun b!7465893 () Bool)

(declare-fun res!2994820 () Bool)

(assert (=> b!7465893 (=> (not res!2994820) (not e!4454984))))

(assert (=> b!7465893 (= res!2994820 (isEmpty!41157 (tail!14888 s!13591)))))

(declare-fun d!2298573 () Bool)

(assert (=> d!2298573 e!4454987))

(declare-fun c!1379921 () Bool)

(assert (=> d!2298573 (= c!1379921 ((_ is EmptyExpr!19551) lt!2623736))))

(assert (=> d!2298573 (= lt!2623774 e!4454986)))

(declare-fun c!1379922 () Bool)

(assert (=> d!2298573 (= c!1379922 (isEmpty!41157 s!13591))))

(assert (=> d!2298573 (validRegex!10065 lt!2623736)))

(assert (=> d!2298573 (= (matchR!9315 lt!2623736 s!13591) lt!2623774)))

(declare-fun b!7465900 () Bool)

(declare-fun res!2994818 () Bool)

(assert (=> b!7465900 (=> res!2994818 e!4454982)))

(assert (=> b!7465900 (= res!2994818 (not ((_ is ElementMatch!19551) lt!2623736)))))

(assert (=> b!7465900 (= e!4454985 e!4454982)))

(declare-fun b!7465901 () Bool)

(declare-fun res!2994814 () Bool)

(assert (=> b!7465901 (=> (not res!2994814) (not e!4454984))))

(assert (=> b!7465901 (= res!2994814 (not call!685750))))

(declare-fun b!7465902 () Bool)

(declare-fun res!2994815 () Bool)

(assert (=> b!7465902 (=> res!2994815 e!4454988)))

(assert (=> b!7465902 (= res!2994815 (not (isEmpty!41157 (tail!14888 s!13591))))))

(declare-fun b!7465903 () Bool)

(assert (=> b!7465903 (= e!4454988 (not (= (head!15319 s!13591) (c!1379864 lt!2623736))))))

(declare-fun b!7465904 () Bool)

(assert (=> b!7465904 (= e!4454987 e!4454985)))

(declare-fun c!1379923 () Bool)

(assert (=> b!7465904 (= c!1379923 ((_ is EmptyLang!19551) lt!2623736))))

(assert (= (and d!2298573 c!1379922) b!7465896))

(assert (= (and d!2298573 (not c!1379922)) b!7465892))

(assert (= (and d!2298573 c!1379921) b!7465899))

(assert (= (and d!2298573 (not c!1379921)) b!7465904))

(assert (= (and b!7465904 c!1379923) b!7465891))

(assert (= (and b!7465904 (not c!1379923)) b!7465900))

(assert (= (and b!7465900 (not res!2994818)) b!7465894))

(assert (= (and b!7465894 res!2994821) b!7465901))

(assert (= (and b!7465901 res!2994814) b!7465893))

(assert (= (and b!7465893 res!2994820) b!7465895))

(assert (= (and b!7465894 (not res!2994817)) b!7465897))

(assert (= (and b!7465897 res!2994819) b!7465898))

(assert (= (and b!7465898 (not res!2994816)) b!7465902))

(assert (= (and b!7465902 (not res!2994815)) b!7465903))

(assert (= (or b!7465899 b!7465898 b!7465901) bm!685745))

(declare-fun m!8064800 () Bool)

(assert (=> b!7465896 m!8064800))

(assert (=> b!7465893 m!8064702))

(assert (=> b!7465893 m!8064702))

(assert (=> b!7465893 m!8064704))

(assert (=> b!7465902 m!8064702))

(assert (=> b!7465902 m!8064702))

(assert (=> b!7465902 m!8064704))

(assert (=> b!7465903 m!8064706))

(assert (=> d!2298573 m!8064708))

(assert (=> d!2298573 m!8064792))

(assert (=> bm!685745 m!8064708))

(assert (=> b!7465892 m!8064706))

(assert (=> b!7465892 m!8064706))

(declare-fun m!8064802 () Bool)

(assert (=> b!7465892 m!8064802))

(assert (=> b!7465892 m!8064702))

(assert (=> b!7465892 m!8064802))

(assert (=> b!7465892 m!8064702))

(declare-fun m!8064804 () Bool)

(assert (=> b!7465892 m!8064804))

(assert (=> b!7465895 m!8064706))

(assert (=> b!7465639 d!2298573))

(declare-fun d!2298575 () Bool)

(assert (=> d!2298575 (= (matchR!9315 lt!2623723 s!13591) (matchRSpec!4230 lt!2623723 s!13591))))

(declare-fun lt!2623775 () Unit!165937)

(assert (=> d!2298575 (= lt!2623775 (choose!57718 lt!2623723 s!13591))))

(assert (=> d!2298575 (validRegex!10065 lt!2623723)))

(assert (=> d!2298575 (= (mainMatchTheorem!4224 lt!2623723 s!13591) lt!2623775)))

(declare-fun bs!1930118 () Bool)

(assert (= bs!1930118 d!2298575))

(assert (=> bs!1930118 m!8064622))

(assert (=> bs!1930118 m!8064624))

(declare-fun m!8064806 () Bool)

(assert (=> bs!1930118 m!8064806))

(assert (=> bs!1930118 m!8064710))

(assert (=> b!7465639 d!2298575))

(declare-fun bs!1930119 () Bool)

(declare-fun b!7465910 () Bool)

(assert (= bs!1930119 (and b!7465910 b!7465635)))

(declare-fun lambda!462062 () Int)

(assert (=> bs!1930119 (not (= lambda!462062 lambda!462036))))

(declare-fun bs!1930120 () Bool)

(assert (= bs!1930120 (and b!7465910 b!7465800)))

(assert (=> bs!1930120 (= (and (= (reg!19880 lt!2623731) (reg!19880 lt!2623723)) (= lt!2623731 lt!2623723)) (= lambda!462062 lambda!462054))))

(declare-fun bs!1930121 () Bool)

(assert (= bs!1930121 (and b!7465910 b!7465642)))

(assert (=> bs!1930121 (not (= lambda!462062 lambda!462034))))

(declare-fun bs!1930122 () Bool)

(assert (= bs!1930122 (and b!7465910 b!7465807)))

(assert (=> bs!1930122 (not (= lambda!462062 lambda!462055))))

(assert (=> bs!1930119 (not (= lambda!462062 lambda!462037))))

(declare-fun bs!1930123 () Bool)

(assert (= bs!1930123 (and b!7465910 b!7465860)))

(assert (=> bs!1930123 (not (= lambda!462062 lambda!462057))))

(assert (=> bs!1930121 (not (= lambda!462062 lambda!462035))))

(declare-fun bs!1930124 () Bool)

(assert (= bs!1930124 (and b!7465910 b!7465853)))

(assert (=> bs!1930124 (= (and (= (reg!19880 lt!2623731) (reg!19880 lt!2623736)) (= lt!2623731 lt!2623736)) (= lambda!462062 lambda!462056))))

(assert (=> b!7465910 true))

(assert (=> b!7465910 true))

(declare-fun bs!1930125 () Bool)

(declare-fun b!7465917 () Bool)

(assert (= bs!1930125 (and b!7465917 b!7465635)))

(declare-fun lambda!462063 () Int)

(assert (=> bs!1930125 (not (= lambda!462063 lambda!462036))))

(declare-fun bs!1930126 () Bool)

(assert (= bs!1930126 (and b!7465917 b!7465800)))

(assert (=> bs!1930126 (not (= lambda!462063 lambda!462054))))

(declare-fun bs!1930127 () Bool)

(assert (= bs!1930127 (and b!7465917 b!7465642)))

(assert (=> bs!1930127 (not (= lambda!462063 lambda!462034))))

(declare-fun bs!1930129 () Bool)

(assert (= bs!1930129 (and b!7465917 b!7465910)))

(assert (=> bs!1930129 (not (= lambda!462063 lambda!462062))))

(declare-fun bs!1930132 () Bool)

(assert (= bs!1930132 (and b!7465917 b!7465807)))

(assert (=> bs!1930132 (= (and (= (regOne!39614 lt!2623731) (regOne!39614 lt!2623723)) (= (regTwo!39614 lt!2623731) (regTwo!39614 lt!2623723))) (= lambda!462063 lambda!462055))))

(assert (=> bs!1930125 (= (and (= (regOne!39614 lt!2623731) r1!5845) (= (regTwo!39614 lt!2623731) rTail!78)) (= lambda!462063 lambda!462037))))

(declare-fun bs!1930135 () Bool)

(assert (= bs!1930135 (and b!7465917 b!7465860)))

(assert (=> bs!1930135 (= (and (= (regOne!39614 lt!2623731) (regOne!39614 lt!2623736)) (= (regTwo!39614 lt!2623731) (regTwo!39614 lt!2623736))) (= lambda!462063 lambda!462057))))

(assert (=> bs!1930127 (= (and (= (regOne!39614 lt!2623731) lt!2623728) (= (regTwo!39614 lt!2623731) rTail!78)) (= lambda!462063 lambda!462035))))

(declare-fun bs!1930137 () Bool)

(assert (= bs!1930137 (and b!7465917 b!7465853)))

(assert (=> bs!1930137 (not (= lambda!462063 lambda!462056))))

(assert (=> b!7465917 true))

(assert (=> b!7465917 true))

(declare-fun b!7465909 () Bool)

(declare-fun e!4454997 () Bool)

(declare-fun e!4454991 () Bool)

(assert (=> b!7465909 (= e!4454997 e!4454991)))

(declare-fun res!2994828 () Bool)

(assert (=> b!7465909 (= res!2994828 (not ((_ is EmptyLang!19551) lt!2623731)))))

(assert (=> b!7465909 (=> (not res!2994828) (not e!4454991))))

(declare-fun e!4454995 () Bool)

(declare-fun call!685753 () Bool)

(assert (=> b!7465910 (= e!4454995 call!685753)))

(declare-fun b!7465911 () Bool)

(declare-fun e!4454994 () Bool)

(declare-fun e!4454992 () Bool)

(assert (=> b!7465911 (= e!4454994 e!4454992)))

(declare-fun res!2994826 () Bool)

(assert (=> b!7465911 (= res!2994826 (matchRSpec!4230 (regOne!39615 lt!2623731) s!13591))))

(assert (=> b!7465911 (=> res!2994826 e!4454992)))

(declare-fun d!2298577 () Bool)

(declare-fun c!1379926 () Bool)

(assert (=> d!2298577 (= c!1379926 ((_ is EmptyExpr!19551) lt!2623731))))

(assert (=> d!2298577 (= (matchRSpec!4230 lt!2623731 s!13591) e!4454997)))

(declare-fun b!7465912 () Bool)

(declare-fun res!2994827 () Bool)

(assert (=> b!7465912 (=> res!2994827 e!4454995)))

(declare-fun call!685754 () Bool)

(assert (=> b!7465912 (= res!2994827 call!685754)))

(declare-fun e!4454993 () Bool)

(assert (=> b!7465912 (= e!4454993 e!4454995)))

(declare-fun b!7465913 () Bool)

(declare-fun c!1379927 () Bool)

(assert (=> b!7465913 (= c!1379927 ((_ is Union!19551) lt!2623731))))

(declare-fun e!4454996 () Bool)

(assert (=> b!7465913 (= e!4454996 e!4454994)))

(declare-fun b!7465914 () Bool)

(declare-fun c!1379925 () Bool)

(assert (=> b!7465914 (= c!1379925 ((_ is ElementMatch!19551) lt!2623731))))

(assert (=> b!7465914 (= e!4454991 e!4454996)))

(declare-fun bm!685748 () Bool)

(assert (=> bm!685748 (= call!685754 (isEmpty!41157 s!13591))))

(declare-fun b!7465915 () Bool)

(assert (=> b!7465915 (= e!4454992 (matchRSpec!4230 (regTwo!39615 lt!2623731) s!13591))))

(declare-fun b!7465916 () Bool)

(assert (=> b!7465916 (= e!4454996 (= s!13591 (Cons!72143 (c!1379864 lt!2623731) Nil!72143)))))

(declare-fun bm!685749 () Bool)

(declare-fun c!1379924 () Bool)

(assert (=> bm!685749 (= call!685753 (Exists!4170 (ite c!1379924 lambda!462062 lambda!462063)))))

(assert (=> b!7465917 (= e!4454993 call!685753)))

(declare-fun b!7465918 () Bool)

(assert (=> b!7465918 (= e!4454994 e!4454993)))

(assert (=> b!7465918 (= c!1379924 ((_ is Star!19551) lt!2623731))))

(declare-fun b!7465919 () Bool)

(assert (=> b!7465919 (= e!4454997 call!685754)))

(assert (= (and d!2298577 c!1379926) b!7465919))

(assert (= (and d!2298577 (not c!1379926)) b!7465909))

(assert (= (and b!7465909 res!2994828) b!7465914))

(assert (= (and b!7465914 c!1379925) b!7465916))

(assert (= (and b!7465914 (not c!1379925)) b!7465913))

(assert (= (and b!7465913 c!1379927) b!7465911))

(assert (= (and b!7465913 (not c!1379927)) b!7465918))

(assert (= (and b!7465911 (not res!2994826)) b!7465915))

(assert (= (and b!7465918 c!1379924) b!7465912))

(assert (= (and b!7465918 (not c!1379924)) b!7465917))

(assert (= (and b!7465912 (not res!2994827)) b!7465910))

(assert (= (or b!7465910 b!7465917) bm!685749))

(assert (= (or b!7465919 b!7465912) bm!685748))

(declare-fun m!8064808 () Bool)

(assert (=> b!7465911 m!8064808))

(assert (=> bm!685748 m!8064708))

(declare-fun m!8064810 () Bool)

(assert (=> b!7465915 m!8064810))

(declare-fun m!8064812 () Bool)

(assert (=> bm!685749 m!8064812))

(assert (=> b!7465644 d!2298577))

(declare-fun d!2298579 () Bool)

(assert (=> d!2298579 (= (matchR!9315 lt!2623731 s!13591) (matchRSpec!4230 lt!2623731 s!13591))))

(declare-fun lt!2623776 () Unit!165937)

(assert (=> d!2298579 (= lt!2623776 (choose!57718 lt!2623731 s!13591))))

(assert (=> d!2298579 (validRegex!10065 lt!2623731)))

(assert (=> d!2298579 (= (mainMatchTheorem!4224 lt!2623731 s!13591) lt!2623776)))

(declare-fun bs!1930144 () Bool)

(assert (= bs!1930144 d!2298579))

(assert (=> bs!1930144 m!8064668))

(assert (=> bs!1930144 m!8064664))

(declare-fun m!8064814 () Bool)

(assert (=> bs!1930144 m!8064814))

(declare-fun m!8064816 () Bool)

(assert (=> bs!1930144 m!8064816))

(assert (=> b!7465644 d!2298579))

(declare-fun d!2298581 () Bool)

(assert (=> d!2298581 (= (matchR!9315 lt!2623733 s!13591) (matchRSpec!4230 lt!2623733 s!13591))))

(declare-fun lt!2623777 () Unit!165937)

(assert (=> d!2298581 (= lt!2623777 (choose!57718 lt!2623733 s!13591))))

(assert (=> d!2298581 (validRegex!10065 lt!2623733)))

(assert (=> d!2298581 (= (mainMatchTheorem!4224 lt!2623733 s!13591) lt!2623777)))

(declare-fun bs!1930146 () Bool)

(assert (= bs!1930146 d!2298581))

(assert (=> bs!1930146 m!8064666))

(assert (=> bs!1930146 m!8064662))

(declare-fun m!8064818 () Bool)

(assert (=> bs!1930146 m!8064818))

(declare-fun m!8064820 () Bool)

(assert (=> bs!1930146 m!8064820))

(assert (=> b!7465644 d!2298581))

(declare-fun bs!1930147 () Bool)

(declare-fun b!7465932 () Bool)

(assert (= bs!1930147 (and b!7465932 b!7465635)))

(declare-fun lambda!462066 () Int)

(assert (=> bs!1930147 (not (= lambda!462066 lambda!462036))))

(declare-fun bs!1930148 () Bool)

(assert (= bs!1930148 (and b!7465932 b!7465800)))

(assert (=> bs!1930148 (= (and (= (reg!19880 lt!2623733) (reg!19880 lt!2623723)) (= lt!2623733 lt!2623723)) (= lambda!462066 lambda!462054))))

(declare-fun bs!1930149 () Bool)

(assert (= bs!1930149 (and b!7465932 b!7465642)))

(assert (=> bs!1930149 (not (= lambda!462066 lambda!462034))))

(declare-fun bs!1930150 () Bool)

(assert (= bs!1930150 (and b!7465932 b!7465910)))

(assert (=> bs!1930150 (= (and (= (reg!19880 lt!2623733) (reg!19880 lt!2623731)) (= lt!2623733 lt!2623731)) (= lambda!462066 lambda!462062))))

(declare-fun bs!1930152 () Bool)

(assert (= bs!1930152 (and b!7465932 b!7465917)))

(assert (=> bs!1930152 (not (= lambda!462066 lambda!462063))))

(declare-fun bs!1930153 () Bool)

(assert (= bs!1930153 (and b!7465932 b!7465807)))

(assert (=> bs!1930153 (not (= lambda!462066 lambda!462055))))

(assert (=> bs!1930147 (not (= lambda!462066 lambda!462037))))

(declare-fun bs!1930154 () Bool)

(assert (= bs!1930154 (and b!7465932 b!7465860)))

(assert (=> bs!1930154 (not (= lambda!462066 lambda!462057))))

(assert (=> bs!1930149 (not (= lambda!462066 lambda!462035))))

(declare-fun bs!1930158 () Bool)

(assert (= bs!1930158 (and b!7465932 b!7465853)))

(assert (=> bs!1930158 (= (and (= (reg!19880 lt!2623733) (reg!19880 lt!2623736)) (= lt!2623733 lt!2623736)) (= lambda!462066 lambda!462056))))

(assert (=> b!7465932 true))

(assert (=> b!7465932 true))

(declare-fun bs!1930164 () Bool)

(declare-fun b!7465939 () Bool)

(assert (= bs!1930164 (and b!7465939 b!7465635)))

(declare-fun lambda!462068 () Int)

(assert (=> bs!1930164 (not (= lambda!462068 lambda!462036))))

(declare-fun bs!1930165 () Bool)

(assert (= bs!1930165 (and b!7465939 b!7465800)))

(assert (=> bs!1930165 (not (= lambda!462068 lambda!462054))))

(declare-fun bs!1930166 () Bool)

(assert (= bs!1930166 (and b!7465939 b!7465910)))

(assert (=> bs!1930166 (not (= lambda!462068 lambda!462062))))

(declare-fun bs!1930168 () Bool)

(assert (= bs!1930168 (and b!7465939 b!7465917)))

(assert (=> bs!1930168 (= (and (= (regOne!39614 lt!2623733) (regOne!39614 lt!2623731)) (= (regTwo!39614 lt!2623733) (regTwo!39614 lt!2623731))) (= lambda!462068 lambda!462063))))

(declare-fun bs!1930171 () Bool)

(assert (= bs!1930171 (and b!7465939 b!7465807)))

(assert (=> bs!1930171 (= (and (= (regOne!39614 lt!2623733) (regOne!39614 lt!2623723)) (= (regTwo!39614 lt!2623733) (regTwo!39614 lt!2623723))) (= lambda!462068 lambda!462055))))

(assert (=> bs!1930164 (= (and (= (regOne!39614 lt!2623733) r1!5845) (= (regTwo!39614 lt!2623733) rTail!78)) (= lambda!462068 lambda!462037))))

(declare-fun bs!1930175 () Bool)

(assert (= bs!1930175 (and b!7465939 b!7465860)))

(assert (=> bs!1930175 (= (and (= (regOne!39614 lt!2623733) (regOne!39614 lt!2623736)) (= (regTwo!39614 lt!2623733) (regTwo!39614 lt!2623736))) (= lambda!462068 lambda!462057))))

(declare-fun bs!1930177 () Bool)

(assert (= bs!1930177 (and b!7465939 b!7465642)))

(assert (=> bs!1930177 (not (= lambda!462068 lambda!462034))))

(declare-fun bs!1930179 () Bool)

(assert (= bs!1930179 (and b!7465939 b!7465932)))

(assert (=> bs!1930179 (not (= lambda!462068 lambda!462066))))

(assert (=> bs!1930177 (= (and (= (regOne!39614 lt!2623733) lt!2623728) (= (regTwo!39614 lt!2623733) rTail!78)) (= lambda!462068 lambda!462035))))

(declare-fun bs!1930181 () Bool)

(assert (= bs!1930181 (and b!7465939 b!7465853)))

(assert (=> bs!1930181 (not (= lambda!462068 lambda!462056))))

(assert (=> b!7465939 true))

(assert (=> b!7465939 true))

(declare-fun b!7465931 () Bool)

(declare-fun e!4455011 () Bool)

(declare-fun e!4455005 () Bool)

(assert (=> b!7465931 (= e!4455011 e!4455005)))

(declare-fun res!2994834 () Bool)

(assert (=> b!7465931 (= res!2994834 (not ((_ is EmptyLang!19551) lt!2623733)))))

(assert (=> b!7465931 (=> (not res!2994834) (not e!4455005))))

(declare-fun e!4455009 () Bool)

(declare-fun call!685759 () Bool)

(assert (=> b!7465932 (= e!4455009 call!685759)))

(declare-fun b!7465933 () Bool)

(declare-fun e!4455008 () Bool)

(declare-fun e!4455006 () Bool)

(assert (=> b!7465933 (= e!4455008 e!4455006)))

(declare-fun res!2994832 () Bool)

(assert (=> b!7465933 (= res!2994832 (matchRSpec!4230 (regOne!39615 lt!2623733) s!13591))))

(assert (=> b!7465933 (=> res!2994832 e!4455006)))

(declare-fun d!2298583 () Bool)

(declare-fun c!1379934 () Bool)

(assert (=> d!2298583 (= c!1379934 ((_ is EmptyExpr!19551) lt!2623733))))

(assert (=> d!2298583 (= (matchRSpec!4230 lt!2623733 s!13591) e!4455011)))

(declare-fun b!7465934 () Bool)

(declare-fun res!2994833 () Bool)

(assert (=> b!7465934 (=> res!2994833 e!4455009)))

(declare-fun call!685760 () Bool)

(assert (=> b!7465934 (= res!2994833 call!685760)))

(declare-fun e!4455007 () Bool)

(assert (=> b!7465934 (= e!4455007 e!4455009)))

(declare-fun b!7465935 () Bool)

(declare-fun c!1379935 () Bool)

(assert (=> b!7465935 (= c!1379935 ((_ is Union!19551) lt!2623733))))

(declare-fun e!4455010 () Bool)

(assert (=> b!7465935 (= e!4455010 e!4455008)))

(declare-fun b!7465936 () Bool)

(declare-fun c!1379933 () Bool)

(assert (=> b!7465936 (= c!1379933 ((_ is ElementMatch!19551) lt!2623733))))

(assert (=> b!7465936 (= e!4455005 e!4455010)))

(declare-fun bm!685754 () Bool)

(assert (=> bm!685754 (= call!685760 (isEmpty!41157 s!13591))))

(declare-fun b!7465937 () Bool)

(assert (=> b!7465937 (= e!4455006 (matchRSpec!4230 (regTwo!39615 lt!2623733) s!13591))))

(declare-fun b!7465938 () Bool)

(assert (=> b!7465938 (= e!4455010 (= s!13591 (Cons!72143 (c!1379864 lt!2623733) Nil!72143)))))

(declare-fun c!1379932 () Bool)

(declare-fun bm!685755 () Bool)

(assert (=> bm!685755 (= call!685759 (Exists!4170 (ite c!1379932 lambda!462066 lambda!462068)))))

(assert (=> b!7465939 (= e!4455007 call!685759)))

(declare-fun b!7465940 () Bool)

(assert (=> b!7465940 (= e!4455008 e!4455007)))

(assert (=> b!7465940 (= c!1379932 ((_ is Star!19551) lt!2623733))))

(declare-fun b!7465941 () Bool)

(assert (=> b!7465941 (= e!4455011 call!685760)))

(assert (= (and d!2298583 c!1379934) b!7465941))

(assert (= (and d!2298583 (not c!1379934)) b!7465931))

(assert (= (and b!7465931 res!2994834) b!7465936))

(assert (= (and b!7465936 c!1379933) b!7465938))

(assert (= (and b!7465936 (not c!1379933)) b!7465935))

(assert (= (and b!7465935 c!1379935) b!7465933))

(assert (= (and b!7465935 (not c!1379935)) b!7465940))

(assert (= (and b!7465933 (not res!2994832)) b!7465937))

(assert (= (and b!7465940 c!1379932) b!7465934))

(assert (= (and b!7465940 (not c!1379932)) b!7465939))

(assert (= (and b!7465934 (not res!2994833)) b!7465932))

(assert (= (or b!7465932 b!7465939) bm!685755))

(assert (= (or b!7465941 b!7465934) bm!685754))

(declare-fun m!8064842 () Bool)

(assert (=> b!7465933 m!8064842))

(assert (=> bm!685754 m!8064708))

(declare-fun m!8064844 () Bool)

(assert (=> b!7465937 m!8064844))

(declare-fun m!8064846 () Bool)

(assert (=> bm!685755 m!8064846))

(assert (=> b!7465644 d!2298583))

(declare-fun b!7465978 () Bool)

(declare-fun e!4455036 () Bool)

(declare-fun lt!2623780 () Bool)

(assert (=> b!7465978 (= e!4455036 (not lt!2623780))))

(declare-fun b!7465979 () Bool)

(declare-fun e!4455037 () Bool)

(assert (=> b!7465979 (= e!4455037 (matchR!9315 (derivativeStep!5579 lt!2623731 (head!15319 s!13591)) (tail!14888 s!13591)))))

(declare-fun b!7465981 () Bool)

(declare-fun res!2994852 () Bool)

(declare-fun e!4455033 () Bool)

(assert (=> b!7465981 (=> res!2994852 e!4455033)))

(declare-fun e!4455035 () Bool)

(assert (=> b!7465981 (= res!2994852 e!4455035)))

(declare-fun res!2994856 () Bool)

(assert (=> b!7465981 (=> (not res!2994856) (not e!4455035))))

(assert (=> b!7465981 (= res!2994856 lt!2623780)))

(declare-fun b!7465982 () Bool)

(assert (=> b!7465982 (= e!4455035 (= (head!15319 s!13591) (c!1379864 lt!2623731)))))

(declare-fun b!7465983 () Bool)

(assert (=> b!7465983 (= e!4455037 (nullable!8520 lt!2623731))))

(declare-fun b!7465984 () Bool)

(declare-fun e!4455034 () Bool)

(assert (=> b!7465984 (= e!4455033 e!4455034)))

(declare-fun res!2994854 () Bool)

(assert (=> b!7465984 (=> (not res!2994854) (not e!4455034))))

(assert (=> b!7465984 (= res!2994854 (not lt!2623780))))

(declare-fun b!7465985 () Bool)

(declare-fun e!4455039 () Bool)

(assert (=> b!7465985 (= e!4455034 e!4455039)))

(declare-fun res!2994851 () Bool)

(assert (=> b!7465985 (=> res!2994851 e!4455039)))

(declare-fun call!685766 () Bool)

(assert (=> b!7465985 (= res!2994851 call!685766)))

(declare-fun b!7465986 () Bool)

(declare-fun e!4455038 () Bool)

(assert (=> b!7465986 (= e!4455038 (= lt!2623780 call!685766))))

(declare-fun bm!685761 () Bool)

(assert (=> bm!685761 (= call!685766 (isEmpty!41157 s!13591))))

(declare-fun b!7465980 () Bool)

(declare-fun res!2994855 () Bool)

(assert (=> b!7465980 (=> (not res!2994855) (not e!4455035))))

(assert (=> b!7465980 (= res!2994855 (isEmpty!41157 (tail!14888 s!13591)))))

(declare-fun d!2298593 () Bool)

(assert (=> d!2298593 e!4455038))

(declare-fun c!1379947 () Bool)

(assert (=> d!2298593 (= c!1379947 ((_ is EmptyExpr!19551) lt!2623731))))

(assert (=> d!2298593 (= lt!2623780 e!4455037)))

(declare-fun c!1379948 () Bool)

(assert (=> d!2298593 (= c!1379948 (isEmpty!41157 s!13591))))

(assert (=> d!2298593 (validRegex!10065 lt!2623731)))

(assert (=> d!2298593 (= (matchR!9315 lt!2623731 s!13591) lt!2623780)))

(declare-fun b!7465987 () Bool)

(declare-fun res!2994853 () Bool)

(assert (=> b!7465987 (=> res!2994853 e!4455033)))

(assert (=> b!7465987 (= res!2994853 (not ((_ is ElementMatch!19551) lt!2623731)))))

(assert (=> b!7465987 (= e!4455036 e!4455033)))

(declare-fun b!7465988 () Bool)

(declare-fun res!2994849 () Bool)

(assert (=> b!7465988 (=> (not res!2994849) (not e!4455035))))

(assert (=> b!7465988 (= res!2994849 (not call!685766))))

(declare-fun b!7465989 () Bool)

(declare-fun res!2994850 () Bool)

(assert (=> b!7465989 (=> res!2994850 e!4455039)))

(assert (=> b!7465989 (= res!2994850 (not (isEmpty!41157 (tail!14888 s!13591))))))

(declare-fun b!7465990 () Bool)

(assert (=> b!7465990 (= e!4455039 (not (= (head!15319 s!13591) (c!1379864 lt!2623731))))))

(declare-fun b!7465991 () Bool)

(assert (=> b!7465991 (= e!4455038 e!4455036)))

(declare-fun c!1379949 () Bool)

(assert (=> b!7465991 (= c!1379949 ((_ is EmptyLang!19551) lt!2623731))))

(assert (= (and d!2298593 c!1379948) b!7465983))

(assert (= (and d!2298593 (not c!1379948)) b!7465979))

(assert (= (and d!2298593 c!1379947) b!7465986))

(assert (= (and d!2298593 (not c!1379947)) b!7465991))

(assert (= (and b!7465991 c!1379949) b!7465978))

(assert (= (and b!7465991 (not c!1379949)) b!7465987))

(assert (= (and b!7465987 (not res!2994853)) b!7465981))

(assert (= (and b!7465981 res!2994856) b!7465988))

(assert (= (and b!7465988 res!2994849) b!7465980))

(assert (= (and b!7465980 res!2994855) b!7465982))

(assert (= (and b!7465981 (not res!2994852)) b!7465984))

(assert (= (and b!7465984 res!2994854) b!7465985))

(assert (= (and b!7465985 (not res!2994851)) b!7465989))

(assert (= (and b!7465989 (not res!2994850)) b!7465990))

(assert (= (or b!7465986 b!7465985 b!7465988) bm!685761))

(declare-fun m!8064848 () Bool)

(assert (=> b!7465983 m!8064848))

(assert (=> b!7465980 m!8064702))

(assert (=> b!7465980 m!8064702))

(assert (=> b!7465980 m!8064704))

(assert (=> b!7465989 m!8064702))

(assert (=> b!7465989 m!8064702))

(assert (=> b!7465989 m!8064704))

(assert (=> b!7465990 m!8064706))

(assert (=> d!2298593 m!8064708))

(assert (=> d!2298593 m!8064816))

(assert (=> bm!685761 m!8064708))

(assert (=> b!7465979 m!8064706))

(assert (=> b!7465979 m!8064706))

(declare-fun m!8064850 () Bool)

(assert (=> b!7465979 m!8064850))

(assert (=> b!7465979 m!8064702))

(assert (=> b!7465979 m!8064850))

(assert (=> b!7465979 m!8064702))

(declare-fun m!8064852 () Bool)

(assert (=> b!7465979 m!8064852))

(assert (=> b!7465982 m!8064706))

(assert (=> b!7465644 d!2298593))

(declare-fun b!7465992 () Bool)

(declare-fun e!4455043 () Bool)

(declare-fun lt!2623781 () Bool)

(assert (=> b!7465992 (= e!4455043 (not lt!2623781))))

(declare-fun b!7465993 () Bool)

(declare-fun e!4455044 () Bool)

(assert (=> b!7465993 (= e!4455044 (matchR!9315 (derivativeStep!5579 lt!2623733 (head!15319 s!13591)) (tail!14888 s!13591)))))

(declare-fun b!7465995 () Bool)

(declare-fun res!2994860 () Bool)

(declare-fun e!4455040 () Bool)

(assert (=> b!7465995 (=> res!2994860 e!4455040)))

(declare-fun e!4455042 () Bool)

(assert (=> b!7465995 (= res!2994860 e!4455042)))

(declare-fun res!2994864 () Bool)

(assert (=> b!7465995 (=> (not res!2994864) (not e!4455042))))

(assert (=> b!7465995 (= res!2994864 lt!2623781)))

(declare-fun b!7465996 () Bool)

(assert (=> b!7465996 (= e!4455042 (= (head!15319 s!13591) (c!1379864 lt!2623733)))))

(declare-fun b!7465997 () Bool)

(assert (=> b!7465997 (= e!4455044 (nullable!8520 lt!2623733))))

(declare-fun b!7465998 () Bool)

(declare-fun e!4455041 () Bool)

(assert (=> b!7465998 (= e!4455040 e!4455041)))

(declare-fun res!2994862 () Bool)

(assert (=> b!7465998 (=> (not res!2994862) (not e!4455041))))

(assert (=> b!7465998 (= res!2994862 (not lt!2623781))))

(declare-fun b!7465999 () Bool)

(declare-fun e!4455046 () Bool)

(assert (=> b!7465999 (= e!4455041 e!4455046)))

(declare-fun res!2994859 () Bool)

(assert (=> b!7465999 (=> res!2994859 e!4455046)))

(declare-fun call!685767 () Bool)

(assert (=> b!7465999 (= res!2994859 call!685767)))

(declare-fun b!7466000 () Bool)

(declare-fun e!4455045 () Bool)

(assert (=> b!7466000 (= e!4455045 (= lt!2623781 call!685767))))

(declare-fun bm!685762 () Bool)

(assert (=> bm!685762 (= call!685767 (isEmpty!41157 s!13591))))

(declare-fun b!7465994 () Bool)

(declare-fun res!2994863 () Bool)

(assert (=> b!7465994 (=> (not res!2994863) (not e!4455042))))

(assert (=> b!7465994 (= res!2994863 (isEmpty!41157 (tail!14888 s!13591)))))

(declare-fun d!2298595 () Bool)

(assert (=> d!2298595 e!4455045))

(declare-fun c!1379950 () Bool)

(assert (=> d!2298595 (= c!1379950 ((_ is EmptyExpr!19551) lt!2623733))))

(assert (=> d!2298595 (= lt!2623781 e!4455044)))

(declare-fun c!1379951 () Bool)

(assert (=> d!2298595 (= c!1379951 (isEmpty!41157 s!13591))))

(assert (=> d!2298595 (validRegex!10065 lt!2623733)))

(assert (=> d!2298595 (= (matchR!9315 lt!2623733 s!13591) lt!2623781)))

(declare-fun b!7466001 () Bool)

(declare-fun res!2994861 () Bool)

(assert (=> b!7466001 (=> res!2994861 e!4455040)))

(assert (=> b!7466001 (= res!2994861 (not ((_ is ElementMatch!19551) lt!2623733)))))

(assert (=> b!7466001 (= e!4455043 e!4455040)))

(declare-fun b!7466002 () Bool)

(declare-fun res!2994857 () Bool)

(assert (=> b!7466002 (=> (not res!2994857) (not e!4455042))))

(assert (=> b!7466002 (= res!2994857 (not call!685767))))

(declare-fun b!7466003 () Bool)

(declare-fun res!2994858 () Bool)

(assert (=> b!7466003 (=> res!2994858 e!4455046)))

(assert (=> b!7466003 (= res!2994858 (not (isEmpty!41157 (tail!14888 s!13591))))))

(declare-fun b!7466004 () Bool)

(assert (=> b!7466004 (= e!4455046 (not (= (head!15319 s!13591) (c!1379864 lt!2623733))))))

(declare-fun b!7466005 () Bool)

(assert (=> b!7466005 (= e!4455045 e!4455043)))

(declare-fun c!1379952 () Bool)

(assert (=> b!7466005 (= c!1379952 ((_ is EmptyLang!19551) lt!2623733))))

(assert (= (and d!2298595 c!1379951) b!7465997))

(assert (= (and d!2298595 (not c!1379951)) b!7465993))

(assert (= (and d!2298595 c!1379950) b!7466000))

(assert (= (and d!2298595 (not c!1379950)) b!7466005))

(assert (= (and b!7466005 c!1379952) b!7465992))

(assert (= (and b!7466005 (not c!1379952)) b!7466001))

(assert (= (and b!7466001 (not res!2994861)) b!7465995))

(assert (= (and b!7465995 res!2994864) b!7466002))

(assert (= (and b!7466002 res!2994857) b!7465994))

(assert (= (and b!7465994 res!2994863) b!7465996))

(assert (= (and b!7465995 (not res!2994860)) b!7465998))

(assert (= (and b!7465998 res!2994862) b!7465999))

(assert (= (and b!7465999 (not res!2994859)) b!7466003))

(assert (= (and b!7466003 (not res!2994858)) b!7466004))

(assert (= (or b!7466000 b!7465999 b!7466002) bm!685762))

(declare-fun m!8064854 () Bool)

(assert (=> b!7465997 m!8064854))

(assert (=> b!7465994 m!8064702))

(assert (=> b!7465994 m!8064702))

(assert (=> b!7465994 m!8064704))

(assert (=> b!7466003 m!8064702))

(assert (=> b!7466003 m!8064702))

(assert (=> b!7466003 m!8064704))

(assert (=> b!7466004 m!8064706))

(assert (=> d!2298595 m!8064708))

(assert (=> d!2298595 m!8064820))

(assert (=> bm!685762 m!8064708))

(assert (=> b!7465993 m!8064706))

(assert (=> b!7465993 m!8064706))

(declare-fun m!8064856 () Bool)

(assert (=> b!7465993 m!8064856))

(assert (=> b!7465993 m!8064702))

(assert (=> b!7465993 m!8064856))

(assert (=> b!7465993 m!8064702))

(declare-fun m!8064858 () Bool)

(assert (=> b!7465993 m!8064858))

(assert (=> b!7465996 m!8064706))

(assert (=> b!7465644 d!2298595))

(declare-fun b!7466006 () Bool)

(declare-fun res!2994869 () Bool)

(declare-fun e!4455050 () Bool)

(assert (=> b!7466006 (=> (not res!2994869) (not e!4455050))))

(declare-fun call!685770 () Bool)

(assert (=> b!7466006 (= res!2994869 call!685770)))

(declare-fun e!4455051 () Bool)

(assert (=> b!7466006 (= e!4455051 e!4455050)))

(declare-fun bm!685763 () Bool)

(declare-fun call!685768 () Bool)

(declare-fun c!1379954 () Bool)

(assert (=> bm!685763 (= call!685768 (validRegex!10065 (ite c!1379954 (regTwo!39615 r1!5845) (regTwo!39614 r1!5845))))))

(declare-fun bm!685764 () Bool)

(declare-fun call!685769 () Bool)

(assert (=> bm!685764 (= call!685770 call!685769)))

(declare-fun b!7466007 () Bool)

(declare-fun res!2994867 () Bool)

(declare-fun e!4455052 () Bool)

(assert (=> b!7466007 (=> res!2994867 e!4455052)))

(assert (=> b!7466007 (= res!2994867 (not ((_ is Concat!28396) r1!5845)))))

(assert (=> b!7466007 (= e!4455051 e!4455052)))

(declare-fun d!2298597 () Bool)

(declare-fun res!2994865 () Bool)

(declare-fun e!4455053 () Bool)

(assert (=> d!2298597 (=> res!2994865 e!4455053)))

(assert (=> d!2298597 (= res!2994865 ((_ is ElementMatch!19551) r1!5845))))

(assert (=> d!2298597 (= (validRegex!10065 r1!5845) e!4455053)))

(declare-fun b!7466008 () Bool)

(declare-fun e!4455047 () Bool)

(assert (=> b!7466008 (= e!4455047 call!685769)))

(declare-fun bm!685765 () Bool)

(declare-fun c!1379953 () Bool)

(assert (=> bm!685765 (= call!685769 (validRegex!10065 (ite c!1379953 (reg!19880 r1!5845) (ite c!1379954 (regOne!39615 r1!5845) (regOne!39614 r1!5845)))))))

(declare-fun b!7466009 () Bool)

(declare-fun e!4455049 () Bool)

(assert (=> b!7466009 (= e!4455052 e!4455049)))

(declare-fun res!2994866 () Bool)

(assert (=> b!7466009 (=> (not res!2994866) (not e!4455049))))

(assert (=> b!7466009 (= res!2994866 call!685770)))

(declare-fun b!7466010 () Bool)

(assert (=> b!7466010 (= e!4455049 call!685768)))

(declare-fun b!7466011 () Bool)

(declare-fun e!4455048 () Bool)

(assert (=> b!7466011 (= e!4455048 e!4455051)))

(assert (=> b!7466011 (= c!1379954 ((_ is Union!19551) r1!5845))))

(declare-fun b!7466012 () Bool)

(assert (=> b!7466012 (= e!4455053 e!4455048)))

(assert (=> b!7466012 (= c!1379953 ((_ is Star!19551) r1!5845))))

(declare-fun b!7466013 () Bool)

(assert (=> b!7466013 (= e!4455048 e!4455047)))

(declare-fun res!2994868 () Bool)

(assert (=> b!7466013 (= res!2994868 (not (nullable!8520 (reg!19880 r1!5845))))))

(assert (=> b!7466013 (=> (not res!2994868) (not e!4455047))))

(declare-fun b!7466014 () Bool)

(assert (=> b!7466014 (= e!4455050 call!685768)))

(assert (= (and d!2298597 (not res!2994865)) b!7466012))

(assert (= (and b!7466012 c!1379953) b!7466013))

(assert (= (and b!7466012 (not c!1379953)) b!7466011))

(assert (= (and b!7466013 res!2994868) b!7466008))

(assert (= (and b!7466011 c!1379954) b!7466006))

(assert (= (and b!7466011 (not c!1379954)) b!7466007))

(assert (= (and b!7466006 res!2994869) b!7466014))

(assert (= (and b!7466007 (not res!2994867)) b!7466009))

(assert (= (and b!7466009 res!2994866) b!7466010))

(assert (= (or b!7466014 b!7466010) bm!685763))

(assert (= (or b!7466006 b!7466009) bm!685764))

(assert (= (or b!7466008 bm!685764) bm!685765))

(declare-fun m!8064870 () Bool)

(assert (=> bm!685763 m!8064870))

(declare-fun m!8064872 () Bool)

(assert (=> bm!685765 m!8064872))

(declare-fun m!8064874 () Bool)

(assert (=> b!7466013 m!8064874))

(assert (=> start!724078 d!2298597))

(declare-fun bs!1930230 () Bool)

(declare-fun d!2298603 () Bool)

(assert (= bs!1930230 (and d!2298603 b!7465635)))

(declare-fun lambda!462076 () Int)

(assert (=> bs!1930230 (= (= lt!2623728 r1!5845) (= lambda!462076 lambda!462036))))

(declare-fun bs!1930231 () Bool)

(assert (= bs!1930231 (and d!2298603 b!7465800)))

(assert (=> bs!1930231 (not (= lambda!462076 lambda!462054))))

(declare-fun bs!1930232 () Bool)

(assert (= bs!1930232 (and d!2298603 b!7465939)))

(assert (=> bs!1930232 (not (= lambda!462076 lambda!462068))))

(declare-fun bs!1930233 () Bool)

(assert (= bs!1930233 (and d!2298603 b!7465910)))

(assert (=> bs!1930233 (not (= lambda!462076 lambda!462062))))

(declare-fun bs!1930234 () Bool)

(assert (= bs!1930234 (and d!2298603 b!7465917)))

(assert (=> bs!1930234 (not (= lambda!462076 lambda!462063))))

(declare-fun bs!1930235 () Bool)

(assert (= bs!1930235 (and d!2298603 b!7465807)))

(assert (=> bs!1930235 (not (= lambda!462076 lambda!462055))))

(assert (=> bs!1930230 (not (= lambda!462076 lambda!462037))))

(declare-fun bs!1930236 () Bool)

(assert (= bs!1930236 (and d!2298603 b!7465860)))

(assert (=> bs!1930236 (not (= lambda!462076 lambda!462057))))

(declare-fun bs!1930237 () Bool)

(assert (= bs!1930237 (and d!2298603 b!7465642)))

(assert (=> bs!1930237 (= lambda!462076 lambda!462034)))

(declare-fun bs!1930238 () Bool)

(assert (= bs!1930238 (and d!2298603 b!7465932)))

(assert (=> bs!1930238 (not (= lambda!462076 lambda!462066))))

(assert (=> bs!1930237 (not (= lambda!462076 lambda!462035))))

(declare-fun bs!1930239 () Bool)

(assert (= bs!1930239 (and d!2298603 b!7465853)))

(assert (=> bs!1930239 (not (= lambda!462076 lambda!462056))))

(assert (=> d!2298603 true))

(assert (=> d!2298603 true))

(assert (=> d!2298603 true))

(assert (=> d!2298603 (= (isDefined!13797 (findConcatSeparation!3230 lt!2623728 rTail!78 Nil!72143 s!13591 s!13591)) (Exists!4170 lambda!462076))))

(declare-fun lt!2623788 () Unit!165937)

(declare-fun choose!57719 (Regex!19551 Regex!19551 List!72267) Unit!165937)

(assert (=> d!2298603 (= lt!2623788 (choose!57719 lt!2623728 rTail!78 s!13591))))

(assert (=> d!2298603 (validRegex!10065 lt!2623728)))

(assert (=> d!2298603 (= (lemmaFindConcatSeparationEquivalentToExists!2988 lt!2623728 rTail!78 s!13591) lt!2623788)))

(declare-fun bs!1930240 () Bool)

(assert (= bs!1930240 d!2298603))

(assert (=> bs!1930240 m!8064634))

(assert (=> bs!1930240 m!8064636))

(assert (=> bs!1930240 m!8064634))

(declare-fun m!8064916 () Bool)

(assert (=> bs!1930240 m!8064916))

(declare-fun m!8064918 () Bool)

(assert (=> bs!1930240 m!8064918))

(declare-fun m!8064920 () Bool)

(assert (=> bs!1930240 m!8064920))

(assert (=> b!7465642 d!2298603))

(declare-fun d!2298617 () Bool)

(declare-fun choose!57720 (Int) Bool)

(assert (=> d!2298617 (= (Exists!4170 lambda!462034) (choose!57720 lambda!462034))))

(declare-fun bs!1930241 () Bool)

(assert (= bs!1930241 d!2298617))

(declare-fun m!8064922 () Bool)

(assert (=> bs!1930241 m!8064922))

(assert (=> b!7465642 d!2298617))

(declare-fun b!7466196 () Bool)

(declare-fun e!4455143 () Option!17108)

(assert (=> b!7466196 (= e!4455143 (Some!17107 (tuple2!68553 Nil!72143 s!13591)))))

(declare-fun b!7466197 () Bool)

(declare-fun lt!2623795 () Unit!165937)

(declare-fun lt!2623797 () Unit!165937)

(assert (=> b!7466197 (= lt!2623795 lt!2623797)))

(declare-fun ++!17193 (List!72267 List!72267) List!72267)

(assert (=> b!7466197 (= (++!17193 (++!17193 Nil!72143 (Cons!72143 (h!78591 s!13591) Nil!72143)) (t!386836 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3073 (List!72267 C!39376 List!72267 List!72267) Unit!165937)

(assert (=> b!7466197 (= lt!2623797 (lemmaMoveElementToOtherListKeepsConcatEq!3073 Nil!72143 (h!78591 s!13591) (t!386836 s!13591) s!13591))))

(declare-fun e!4455142 () Option!17108)

(assert (=> b!7466197 (= e!4455142 (findConcatSeparation!3230 lt!2623728 rTail!78 (++!17193 Nil!72143 (Cons!72143 (h!78591 s!13591) Nil!72143)) (t!386836 s!13591) s!13591))))

(declare-fun b!7466198 () Bool)

(declare-fun res!2994929 () Bool)

(declare-fun e!4455144 () Bool)

(assert (=> b!7466198 (=> (not res!2994929) (not e!4455144))))

(declare-fun lt!2623796 () Option!17108)

(declare-fun get!25194 (Option!17108) tuple2!68552)

(assert (=> b!7466198 (= res!2994929 (matchR!9315 rTail!78 (_2!37579 (get!25194 lt!2623796))))))

(declare-fun b!7466200 () Bool)

(declare-fun e!4455146 () Bool)

(assert (=> b!7466200 (= e!4455146 (not (isDefined!13797 lt!2623796)))))

(declare-fun b!7466201 () Bool)

(assert (=> b!7466201 (= e!4455143 e!4455142)))

(declare-fun c!1379979 () Bool)

(assert (=> b!7466201 (= c!1379979 ((_ is Nil!72143) s!13591))))

(declare-fun b!7466199 () Bool)

(declare-fun e!4455145 () Bool)

(assert (=> b!7466199 (= e!4455145 (matchR!9315 rTail!78 s!13591))))

(declare-fun d!2298619 () Bool)

(assert (=> d!2298619 e!4455146))

(declare-fun res!2994931 () Bool)

(assert (=> d!2298619 (=> res!2994931 e!4455146)))

(assert (=> d!2298619 (= res!2994931 e!4455144)))

(declare-fun res!2994928 () Bool)

(assert (=> d!2298619 (=> (not res!2994928) (not e!4455144))))

(assert (=> d!2298619 (= res!2994928 (isDefined!13797 lt!2623796))))

(assert (=> d!2298619 (= lt!2623796 e!4455143)))

(declare-fun c!1379980 () Bool)

(assert (=> d!2298619 (= c!1379980 e!4455145)))

(declare-fun res!2994932 () Bool)

(assert (=> d!2298619 (=> (not res!2994932) (not e!4455145))))

(assert (=> d!2298619 (= res!2994932 (matchR!9315 lt!2623728 Nil!72143))))

(assert (=> d!2298619 (validRegex!10065 lt!2623728)))

(assert (=> d!2298619 (= (findConcatSeparation!3230 lt!2623728 rTail!78 Nil!72143 s!13591 s!13591) lt!2623796)))

(declare-fun b!7466202 () Bool)

(declare-fun res!2994930 () Bool)

(assert (=> b!7466202 (=> (not res!2994930) (not e!4455144))))

(assert (=> b!7466202 (= res!2994930 (matchR!9315 lt!2623728 (_1!37579 (get!25194 lt!2623796))))))

(declare-fun b!7466203 () Bool)

(assert (=> b!7466203 (= e!4455142 None!17107)))

(declare-fun b!7466204 () Bool)

(assert (=> b!7466204 (= e!4455144 (= (++!17193 (_1!37579 (get!25194 lt!2623796)) (_2!37579 (get!25194 lt!2623796))) s!13591))))

(assert (= (and d!2298619 res!2994932) b!7466199))

(assert (= (and d!2298619 c!1379980) b!7466196))

(assert (= (and d!2298619 (not c!1379980)) b!7466201))

(assert (= (and b!7466201 c!1379979) b!7466203))

(assert (= (and b!7466201 (not c!1379979)) b!7466197))

(assert (= (and d!2298619 res!2994928) b!7466202))

(assert (= (and b!7466202 res!2994930) b!7466198))

(assert (= (and b!7466198 res!2994929) b!7466204))

(assert (= (and d!2298619 (not res!2994931)) b!7466200))

(declare-fun m!8064924 () Bool)

(assert (=> b!7466197 m!8064924))

(assert (=> b!7466197 m!8064924))

(declare-fun m!8064926 () Bool)

(assert (=> b!7466197 m!8064926))

(declare-fun m!8064928 () Bool)

(assert (=> b!7466197 m!8064928))

(assert (=> b!7466197 m!8064924))

(declare-fun m!8064930 () Bool)

(assert (=> b!7466197 m!8064930))

(declare-fun m!8064932 () Bool)

(assert (=> b!7466204 m!8064932))

(declare-fun m!8064934 () Bool)

(assert (=> b!7466204 m!8064934))

(assert (=> b!7466202 m!8064932))

(declare-fun m!8064936 () Bool)

(assert (=> b!7466202 m!8064936))

(declare-fun m!8064938 () Bool)

(assert (=> d!2298619 m!8064938))

(declare-fun m!8064940 () Bool)

(assert (=> d!2298619 m!8064940))

(assert (=> d!2298619 m!8064916))

(declare-fun m!8064942 () Bool)

(assert (=> b!7466199 m!8064942))

(assert (=> b!7466198 m!8064932))

(declare-fun m!8064944 () Bool)

(assert (=> b!7466198 m!8064944))

(assert (=> b!7466200 m!8064938))

(assert (=> b!7465642 d!2298619))

(declare-fun bs!1930242 () Bool)

(declare-fun d!2298621 () Bool)

(assert (= bs!1930242 (and d!2298621 b!7465635)))

(declare-fun lambda!462081 () Int)

(assert (=> bs!1930242 (= (= lt!2623728 r1!5845) (= lambda!462081 lambda!462036))))

(declare-fun bs!1930243 () Bool)

(assert (= bs!1930243 (and d!2298621 d!2298603)))

(assert (=> bs!1930243 (= lambda!462081 lambda!462076)))

(declare-fun bs!1930244 () Bool)

(assert (= bs!1930244 (and d!2298621 b!7465800)))

(assert (=> bs!1930244 (not (= lambda!462081 lambda!462054))))

(declare-fun bs!1930245 () Bool)

(assert (= bs!1930245 (and d!2298621 b!7465939)))

(assert (=> bs!1930245 (not (= lambda!462081 lambda!462068))))

(declare-fun bs!1930246 () Bool)

(assert (= bs!1930246 (and d!2298621 b!7465910)))

(assert (=> bs!1930246 (not (= lambda!462081 lambda!462062))))

(declare-fun bs!1930247 () Bool)

(assert (= bs!1930247 (and d!2298621 b!7465917)))

(assert (=> bs!1930247 (not (= lambda!462081 lambda!462063))))

(declare-fun bs!1930248 () Bool)

(assert (= bs!1930248 (and d!2298621 b!7465807)))

(assert (=> bs!1930248 (not (= lambda!462081 lambda!462055))))

(assert (=> bs!1930242 (not (= lambda!462081 lambda!462037))))

(declare-fun bs!1930249 () Bool)

(assert (= bs!1930249 (and d!2298621 b!7465860)))

(assert (=> bs!1930249 (not (= lambda!462081 lambda!462057))))

(declare-fun bs!1930250 () Bool)

(assert (= bs!1930250 (and d!2298621 b!7465642)))

(assert (=> bs!1930250 (= lambda!462081 lambda!462034)))

(declare-fun bs!1930251 () Bool)

(assert (= bs!1930251 (and d!2298621 b!7465932)))

(assert (=> bs!1930251 (not (= lambda!462081 lambda!462066))))

(assert (=> bs!1930250 (not (= lambda!462081 lambda!462035))))

(declare-fun bs!1930252 () Bool)

(assert (= bs!1930252 (and d!2298621 b!7465853)))

(assert (=> bs!1930252 (not (= lambda!462081 lambda!462056))))

(assert (=> d!2298621 true))

(assert (=> d!2298621 true))

(assert (=> d!2298621 true))

(declare-fun lambda!462082 () Int)

(assert (=> bs!1930242 (not (= lambda!462082 lambda!462036))))

(assert (=> bs!1930243 (not (= lambda!462082 lambda!462076))))

(assert (=> bs!1930244 (not (= lambda!462082 lambda!462054))))

(assert (=> bs!1930245 (= (and (= lt!2623728 (regOne!39614 lt!2623733)) (= rTail!78 (regTwo!39614 lt!2623733))) (= lambda!462082 lambda!462068))))

(assert (=> bs!1930246 (not (= lambda!462082 lambda!462062))))

(declare-fun bs!1930253 () Bool)

(assert (= bs!1930253 d!2298621))

(assert (=> bs!1930253 (not (= lambda!462082 lambda!462081))))

(assert (=> bs!1930247 (= (and (= lt!2623728 (regOne!39614 lt!2623731)) (= rTail!78 (regTwo!39614 lt!2623731))) (= lambda!462082 lambda!462063))))

(assert (=> bs!1930248 (= (and (= lt!2623728 (regOne!39614 lt!2623723)) (= rTail!78 (regTwo!39614 lt!2623723))) (= lambda!462082 lambda!462055))))

(assert (=> bs!1930242 (= (= lt!2623728 r1!5845) (= lambda!462082 lambda!462037))))

(assert (=> bs!1930249 (= (and (= lt!2623728 (regOne!39614 lt!2623736)) (= rTail!78 (regTwo!39614 lt!2623736))) (= lambda!462082 lambda!462057))))

(assert (=> bs!1930250 (not (= lambda!462082 lambda!462034))))

(assert (=> bs!1930251 (not (= lambda!462082 lambda!462066))))

(assert (=> bs!1930250 (= lambda!462082 lambda!462035)))

(assert (=> bs!1930252 (not (= lambda!462082 lambda!462056))))

(assert (=> d!2298621 true))

(assert (=> d!2298621 true))

(assert (=> d!2298621 true))

(assert (=> d!2298621 (= (Exists!4170 lambda!462081) (Exists!4170 lambda!462082))))

(declare-fun lt!2623800 () Unit!165937)

(declare-fun choose!57721 (Regex!19551 Regex!19551 List!72267) Unit!165937)

(assert (=> d!2298621 (= lt!2623800 (choose!57721 lt!2623728 rTail!78 s!13591))))

(assert (=> d!2298621 (validRegex!10065 lt!2623728)))

(assert (=> d!2298621 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2504 lt!2623728 rTail!78 s!13591) lt!2623800)))

(declare-fun m!8064946 () Bool)

(assert (=> bs!1930253 m!8064946))

(declare-fun m!8064948 () Bool)

(assert (=> bs!1930253 m!8064948))

(declare-fun m!8064950 () Bool)

(assert (=> bs!1930253 m!8064950))

(assert (=> bs!1930253 m!8064916))

(assert (=> b!7465642 d!2298621))

(declare-fun d!2298623 () Bool)

(assert (=> d!2298623 (= (Exists!4170 lambda!462035) (choose!57720 lambda!462035))))

(declare-fun bs!1930254 () Bool)

(assert (= bs!1930254 d!2298623))

(declare-fun m!8064952 () Bool)

(assert (=> bs!1930254 m!8064952))

(assert (=> b!7465642 d!2298623))

(declare-fun d!2298625 () Bool)

(declare-fun isEmpty!41158 (Option!17108) Bool)

(assert (=> d!2298625 (= (isDefined!13797 (findConcatSeparation!3230 lt!2623728 rTail!78 Nil!72143 s!13591 s!13591)) (not (isEmpty!41158 (findConcatSeparation!3230 lt!2623728 rTail!78 Nil!72143 s!13591 s!13591))))))

(declare-fun bs!1930255 () Bool)

(assert (= bs!1930255 d!2298625))

(assert (=> bs!1930255 m!8064634))

(declare-fun m!8064954 () Bool)

(assert (=> bs!1930255 m!8064954))

(assert (=> b!7465642 d!2298625))

(declare-fun b!7466213 () Bool)

(declare-fun res!2994945 () Bool)

(declare-fun e!4455154 () Bool)

(assert (=> b!7466213 (=> (not res!2994945) (not e!4455154))))

(declare-fun call!685792 () Bool)

(assert (=> b!7466213 (= res!2994945 call!685792)))

(declare-fun e!4455155 () Bool)

(assert (=> b!7466213 (= e!4455155 e!4455154)))

(declare-fun bm!685785 () Bool)

(declare-fun call!685790 () Bool)

(declare-fun c!1379982 () Bool)

(assert (=> bm!685785 (= call!685790 (validRegex!10065 (ite c!1379982 (regTwo!39615 r2!5783) (regTwo!39614 r2!5783))))))

(declare-fun bm!685786 () Bool)

(declare-fun call!685791 () Bool)

(assert (=> bm!685786 (= call!685792 call!685791)))

(declare-fun b!7466214 () Bool)

(declare-fun res!2994943 () Bool)

(declare-fun e!4455156 () Bool)

(assert (=> b!7466214 (=> res!2994943 e!4455156)))

(assert (=> b!7466214 (= res!2994943 (not ((_ is Concat!28396) r2!5783)))))

(assert (=> b!7466214 (= e!4455155 e!4455156)))

(declare-fun d!2298627 () Bool)

(declare-fun res!2994941 () Bool)

(declare-fun e!4455157 () Bool)

(assert (=> d!2298627 (=> res!2994941 e!4455157)))

(assert (=> d!2298627 (= res!2994941 ((_ is ElementMatch!19551) r2!5783))))

(assert (=> d!2298627 (= (validRegex!10065 r2!5783) e!4455157)))

(declare-fun b!7466215 () Bool)

(declare-fun e!4455151 () Bool)

(assert (=> b!7466215 (= e!4455151 call!685791)))

(declare-fun bm!685787 () Bool)

(declare-fun c!1379981 () Bool)

(assert (=> bm!685787 (= call!685791 (validRegex!10065 (ite c!1379981 (reg!19880 r2!5783) (ite c!1379982 (regOne!39615 r2!5783) (regOne!39614 r2!5783)))))))

(declare-fun b!7466216 () Bool)

(declare-fun e!4455153 () Bool)

(assert (=> b!7466216 (= e!4455156 e!4455153)))

(declare-fun res!2994942 () Bool)

(assert (=> b!7466216 (=> (not res!2994942) (not e!4455153))))

(assert (=> b!7466216 (= res!2994942 call!685792)))

(declare-fun b!7466217 () Bool)

(assert (=> b!7466217 (= e!4455153 call!685790)))

(declare-fun b!7466218 () Bool)

(declare-fun e!4455152 () Bool)

(assert (=> b!7466218 (= e!4455152 e!4455155)))

(assert (=> b!7466218 (= c!1379982 ((_ is Union!19551) r2!5783))))

(declare-fun b!7466219 () Bool)

(assert (=> b!7466219 (= e!4455157 e!4455152)))

(assert (=> b!7466219 (= c!1379981 ((_ is Star!19551) r2!5783))))

(declare-fun b!7466220 () Bool)

(assert (=> b!7466220 (= e!4455152 e!4455151)))

(declare-fun res!2994944 () Bool)

(assert (=> b!7466220 (= res!2994944 (not (nullable!8520 (reg!19880 r2!5783))))))

(assert (=> b!7466220 (=> (not res!2994944) (not e!4455151))))

(declare-fun b!7466221 () Bool)

(assert (=> b!7466221 (= e!4455154 call!685790)))

(assert (= (and d!2298627 (not res!2994941)) b!7466219))

(assert (= (and b!7466219 c!1379981) b!7466220))

(assert (= (and b!7466219 (not c!1379981)) b!7466218))

(assert (= (and b!7466220 res!2994944) b!7466215))

(assert (= (and b!7466218 c!1379982) b!7466213))

(assert (= (and b!7466218 (not c!1379982)) b!7466214))

(assert (= (and b!7466213 res!2994945) b!7466221))

(assert (= (and b!7466214 (not res!2994943)) b!7466216))

(assert (= (and b!7466216 res!2994942) b!7466217))

(assert (= (or b!7466221 b!7466217) bm!685785))

(assert (= (or b!7466213 b!7466216) bm!685786))

(assert (= (or b!7466215 bm!685786) bm!685787))

(declare-fun m!8064956 () Bool)

(assert (=> bm!685785 m!8064956))

(declare-fun m!8064958 () Bool)

(assert (=> bm!685787 m!8064958))

(declare-fun m!8064960 () Bool)

(assert (=> b!7466220 m!8064960))

(assert (=> b!7465631 d!2298627))

(declare-fun b!7466222 () Bool)

(declare-fun e!4455159 () Option!17108)

(assert (=> b!7466222 (= e!4455159 (Some!17107 (tuple2!68553 Nil!72143 s!13591)))))

(declare-fun b!7466223 () Bool)

(declare-fun lt!2623801 () Unit!165937)

(declare-fun lt!2623803 () Unit!165937)

(assert (=> b!7466223 (= lt!2623801 lt!2623803)))

(assert (=> b!7466223 (= (++!17193 (++!17193 Nil!72143 (Cons!72143 (h!78591 s!13591) Nil!72143)) (t!386836 s!13591)) s!13591)))

(assert (=> b!7466223 (= lt!2623803 (lemmaMoveElementToOtherListKeepsConcatEq!3073 Nil!72143 (h!78591 s!13591) (t!386836 s!13591) s!13591))))

(declare-fun e!4455158 () Option!17108)

(assert (=> b!7466223 (= e!4455158 (findConcatSeparation!3230 r1!5845 rTail!78 (++!17193 Nil!72143 (Cons!72143 (h!78591 s!13591) Nil!72143)) (t!386836 s!13591) s!13591))))

(declare-fun b!7466224 () Bool)

(declare-fun res!2994947 () Bool)

(declare-fun e!4455160 () Bool)

(assert (=> b!7466224 (=> (not res!2994947) (not e!4455160))))

(declare-fun lt!2623802 () Option!17108)

(assert (=> b!7466224 (= res!2994947 (matchR!9315 rTail!78 (_2!37579 (get!25194 lt!2623802))))))

(declare-fun b!7466226 () Bool)

(declare-fun e!4455162 () Bool)

(assert (=> b!7466226 (= e!4455162 (not (isDefined!13797 lt!2623802)))))

(declare-fun b!7466227 () Bool)

(assert (=> b!7466227 (= e!4455159 e!4455158)))

(declare-fun c!1379983 () Bool)

(assert (=> b!7466227 (= c!1379983 ((_ is Nil!72143) s!13591))))

(declare-fun b!7466225 () Bool)

(declare-fun e!4455161 () Bool)

(assert (=> b!7466225 (= e!4455161 (matchR!9315 rTail!78 s!13591))))

(declare-fun d!2298629 () Bool)

(assert (=> d!2298629 e!4455162))

(declare-fun res!2994949 () Bool)

(assert (=> d!2298629 (=> res!2994949 e!4455162)))

(assert (=> d!2298629 (= res!2994949 e!4455160)))

(declare-fun res!2994946 () Bool)

(assert (=> d!2298629 (=> (not res!2994946) (not e!4455160))))

(assert (=> d!2298629 (= res!2994946 (isDefined!13797 lt!2623802))))

(assert (=> d!2298629 (= lt!2623802 e!4455159)))

(declare-fun c!1379984 () Bool)

(assert (=> d!2298629 (= c!1379984 e!4455161)))

(declare-fun res!2994950 () Bool)

(assert (=> d!2298629 (=> (not res!2994950) (not e!4455161))))

(assert (=> d!2298629 (= res!2994950 (matchR!9315 r1!5845 Nil!72143))))

(assert (=> d!2298629 (validRegex!10065 r1!5845)))

(assert (=> d!2298629 (= (findConcatSeparation!3230 r1!5845 rTail!78 Nil!72143 s!13591 s!13591) lt!2623802)))

(declare-fun b!7466228 () Bool)

(declare-fun res!2994948 () Bool)

(assert (=> b!7466228 (=> (not res!2994948) (not e!4455160))))

(assert (=> b!7466228 (= res!2994948 (matchR!9315 r1!5845 (_1!37579 (get!25194 lt!2623802))))))

(declare-fun b!7466229 () Bool)

(assert (=> b!7466229 (= e!4455158 None!17107)))

(declare-fun b!7466230 () Bool)

(assert (=> b!7466230 (= e!4455160 (= (++!17193 (_1!37579 (get!25194 lt!2623802)) (_2!37579 (get!25194 lt!2623802))) s!13591))))

(assert (= (and d!2298629 res!2994950) b!7466225))

(assert (= (and d!2298629 c!1379984) b!7466222))

(assert (= (and d!2298629 (not c!1379984)) b!7466227))

(assert (= (and b!7466227 c!1379983) b!7466229))

(assert (= (and b!7466227 (not c!1379983)) b!7466223))

(assert (= (and d!2298629 res!2994946) b!7466228))

(assert (= (and b!7466228 res!2994948) b!7466224))

(assert (= (and b!7466224 res!2994947) b!7466230))

(assert (= (and d!2298629 (not res!2994949)) b!7466226))

(assert (=> b!7466223 m!8064924))

(assert (=> b!7466223 m!8064924))

(assert (=> b!7466223 m!8064926))

(assert (=> b!7466223 m!8064928))

(assert (=> b!7466223 m!8064924))

(declare-fun m!8064962 () Bool)

(assert (=> b!7466223 m!8064962))

(declare-fun m!8064964 () Bool)

(assert (=> b!7466230 m!8064964))

(declare-fun m!8064966 () Bool)

(assert (=> b!7466230 m!8064966))

(assert (=> b!7466228 m!8064964))

(declare-fun m!8064968 () Bool)

(assert (=> b!7466228 m!8064968))

(declare-fun m!8064970 () Bool)

(assert (=> d!2298629 m!8064970))

(declare-fun m!8064972 () Bool)

(assert (=> d!2298629 m!8064972))

(assert (=> d!2298629 m!8064670))

(assert (=> b!7466225 m!8064942))

(assert (=> b!7466224 m!8064964))

(declare-fun m!8064974 () Bool)

(assert (=> b!7466224 m!8064974))

(assert (=> b!7466226 m!8064970))

(assert (=> b!7465635 d!2298629))

(declare-fun bs!1930256 () Bool)

(declare-fun d!2298631 () Bool)

(assert (= bs!1930256 (and d!2298631 b!7465635)))

(declare-fun lambda!462083 () Int)

(assert (=> bs!1930256 (= lambda!462083 lambda!462036)))

(declare-fun bs!1930257 () Bool)

(assert (= bs!1930257 (and d!2298631 d!2298603)))

(assert (=> bs!1930257 (= (= r1!5845 lt!2623728) (= lambda!462083 lambda!462076))))

(declare-fun bs!1930258 () Bool)

(assert (= bs!1930258 (and d!2298631 b!7465800)))

(assert (=> bs!1930258 (not (= lambda!462083 lambda!462054))))

(declare-fun bs!1930259 () Bool)

(assert (= bs!1930259 (and d!2298631 b!7465939)))

(assert (=> bs!1930259 (not (= lambda!462083 lambda!462068))))

(declare-fun bs!1930260 () Bool)

(assert (= bs!1930260 (and d!2298631 b!7465910)))

(assert (=> bs!1930260 (not (= lambda!462083 lambda!462062))))

(declare-fun bs!1930261 () Bool)

(assert (= bs!1930261 (and d!2298631 d!2298621)))

(assert (=> bs!1930261 (= (= r1!5845 lt!2623728) (= lambda!462083 lambda!462081))))

(declare-fun bs!1930262 () Bool)

(assert (= bs!1930262 (and d!2298631 b!7465917)))

(assert (=> bs!1930262 (not (= lambda!462083 lambda!462063))))

(declare-fun bs!1930263 () Bool)

(assert (= bs!1930263 (and d!2298631 b!7465807)))

(assert (=> bs!1930263 (not (= lambda!462083 lambda!462055))))

(assert (=> bs!1930256 (not (= lambda!462083 lambda!462037))))

(assert (=> bs!1930261 (not (= lambda!462083 lambda!462082))))

(declare-fun bs!1930264 () Bool)

(assert (= bs!1930264 (and d!2298631 b!7465860)))

(assert (=> bs!1930264 (not (= lambda!462083 lambda!462057))))

(declare-fun bs!1930265 () Bool)

(assert (= bs!1930265 (and d!2298631 b!7465642)))

(assert (=> bs!1930265 (= (= r1!5845 lt!2623728) (= lambda!462083 lambda!462034))))

(declare-fun bs!1930266 () Bool)

(assert (= bs!1930266 (and d!2298631 b!7465932)))

(assert (=> bs!1930266 (not (= lambda!462083 lambda!462066))))

(assert (=> bs!1930265 (not (= lambda!462083 lambda!462035))))

(declare-fun bs!1930267 () Bool)

(assert (= bs!1930267 (and d!2298631 b!7465853)))

(assert (=> bs!1930267 (not (= lambda!462083 lambda!462056))))

(assert (=> d!2298631 true))

(assert (=> d!2298631 true))

(assert (=> d!2298631 true))

(assert (=> d!2298631 (= (isDefined!13797 (findConcatSeparation!3230 r1!5845 rTail!78 Nil!72143 s!13591 s!13591)) (Exists!4170 lambda!462083))))

(declare-fun lt!2623804 () Unit!165937)

(assert (=> d!2298631 (= lt!2623804 (choose!57719 r1!5845 rTail!78 s!13591))))

(assert (=> d!2298631 (validRegex!10065 r1!5845)))

(assert (=> d!2298631 (= (lemmaFindConcatSeparationEquivalentToExists!2988 r1!5845 rTail!78 s!13591) lt!2623804)))

(declare-fun bs!1930268 () Bool)

(assert (= bs!1930268 d!2298631))

(assert (=> bs!1930268 m!8064650))

(assert (=> bs!1930268 m!8064652))

(assert (=> bs!1930268 m!8064650))

(assert (=> bs!1930268 m!8064670))

(declare-fun m!8064976 () Bool)

(assert (=> bs!1930268 m!8064976))

(declare-fun m!8064978 () Bool)

(assert (=> bs!1930268 m!8064978))

(assert (=> b!7465635 d!2298631))

(declare-fun d!2298633 () Bool)

(assert (=> d!2298633 (= (Exists!4170 lambda!462037) (choose!57720 lambda!462037))))

(declare-fun bs!1930269 () Bool)

(assert (= bs!1930269 d!2298633))

(declare-fun m!8064980 () Bool)

(assert (=> bs!1930269 m!8064980))

(assert (=> b!7465635 d!2298633))

(declare-fun d!2298635 () Bool)

(assert (=> d!2298635 (= (Exists!4170 lambda!462036) (choose!57720 lambda!462036))))

(declare-fun bs!1930270 () Bool)

(assert (= bs!1930270 d!2298635))

(declare-fun m!8064982 () Bool)

(assert (=> bs!1930270 m!8064982))

(assert (=> b!7465635 d!2298635))

(declare-fun d!2298637 () Bool)

(assert (=> d!2298637 (= (isDefined!13797 (findConcatSeparation!3230 r1!5845 rTail!78 Nil!72143 s!13591 s!13591)) (not (isEmpty!41158 (findConcatSeparation!3230 r1!5845 rTail!78 Nil!72143 s!13591 s!13591))))))

(declare-fun bs!1930271 () Bool)

(assert (= bs!1930271 d!2298637))

(assert (=> bs!1930271 m!8064650))

(declare-fun m!8064984 () Bool)

(assert (=> bs!1930271 m!8064984))

(assert (=> b!7465635 d!2298637))

(declare-fun bs!1930272 () Bool)

(declare-fun d!2298639 () Bool)

(assert (= bs!1930272 (and d!2298639 b!7465635)))

(declare-fun lambda!462084 () Int)

(assert (=> bs!1930272 (= lambda!462084 lambda!462036)))

(declare-fun bs!1930273 () Bool)

(assert (= bs!1930273 (and d!2298639 d!2298603)))

(assert (=> bs!1930273 (= (= r1!5845 lt!2623728) (= lambda!462084 lambda!462076))))

(declare-fun bs!1930274 () Bool)

(assert (= bs!1930274 (and d!2298639 b!7465800)))

(assert (=> bs!1930274 (not (= lambda!462084 lambda!462054))))

(declare-fun bs!1930275 () Bool)

(assert (= bs!1930275 (and d!2298639 b!7465939)))

(assert (=> bs!1930275 (not (= lambda!462084 lambda!462068))))

(declare-fun bs!1930276 () Bool)

(assert (= bs!1930276 (and d!2298639 b!7465910)))

(assert (=> bs!1930276 (not (= lambda!462084 lambda!462062))))

(declare-fun bs!1930277 () Bool)

(assert (= bs!1930277 (and d!2298639 d!2298621)))

(assert (=> bs!1930277 (= (= r1!5845 lt!2623728) (= lambda!462084 lambda!462081))))

(declare-fun bs!1930278 () Bool)

(assert (= bs!1930278 (and d!2298639 b!7465917)))

(assert (=> bs!1930278 (not (= lambda!462084 lambda!462063))))

(declare-fun bs!1930279 () Bool)

(assert (= bs!1930279 (and d!2298639 b!7465807)))

(assert (=> bs!1930279 (not (= lambda!462084 lambda!462055))))

(declare-fun bs!1930280 () Bool)

(assert (= bs!1930280 (and d!2298639 d!2298631)))

(assert (=> bs!1930280 (= lambda!462084 lambda!462083)))

(assert (=> bs!1930272 (not (= lambda!462084 lambda!462037))))

(assert (=> bs!1930277 (not (= lambda!462084 lambda!462082))))

(declare-fun bs!1930281 () Bool)

(assert (= bs!1930281 (and d!2298639 b!7465860)))

(assert (=> bs!1930281 (not (= lambda!462084 lambda!462057))))

(declare-fun bs!1930282 () Bool)

(assert (= bs!1930282 (and d!2298639 b!7465642)))

(assert (=> bs!1930282 (= (= r1!5845 lt!2623728) (= lambda!462084 lambda!462034))))

(declare-fun bs!1930283 () Bool)

(assert (= bs!1930283 (and d!2298639 b!7465932)))

(assert (=> bs!1930283 (not (= lambda!462084 lambda!462066))))

(assert (=> bs!1930282 (not (= lambda!462084 lambda!462035))))

(declare-fun bs!1930284 () Bool)

(assert (= bs!1930284 (and d!2298639 b!7465853)))

(assert (=> bs!1930284 (not (= lambda!462084 lambda!462056))))

(assert (=> d!2298639 true))

(assert (=> d!2298639 true))

(assert (=> d!2298639 true))

(declare-fun lambda!462085 () Int)

(assert (=> bs!1930272 (not (= lambda!462085 lambda!462036))))

(assert (=> bs!1930273 (not (= lambda!462085 lambda!462076))))

(assert (=> bs!1930274 (not (= lambda!462085 lambda!462054))))

(assert (=> bs!1930275 (= (and (= r1!5845 (regOne!39614 lt!2623733)) (= rTail!78 (regTwo!39614 lt!2623733))) (= lambda!462085 lambda!462068))))

(assert (=> bs!1930276 (not (= lambda!462085 lambda!462062))))

(assert (=> bs!1930277 (not (= lambda!462085 lambda!462081))))

(assert (=> bs!1930278 (= (and (= r1!5845 (regOne!39614 lt!2623731)) (= rTail!78 (regTwo!39614 lt!2623731))) (= lambda!462085 lambda!462063))))

(assert (=> bs!1930279 (= (and (= r1!5845 (regOne!39614 lt!2623723)) (= rTail!78 (regTwo!39614 lt!2623723))) (= lambda!462085 lambda!462055))))

(declare-fun bs!1930285 () Bool)

(assert (= bs!1930285 d!2298639))

(assert (=> bs!1930285 (not (= lambda!462085 lambda!462084))))

(assert (=> bs!1930280 (not (= lambda!462085 lambda!462083))))

(assert (=> bs!1930272 (= lambda!462085 lambda!462037)))

(assert (=> bs!1930277 (= (= r1!5845 lt!2623728) (= lambda!462085 lambda!462082))))

(assert (=> bs!1930281 (= (and (= r1!5845 (regOne!39614 lt!2623736)) (= rTail!78 (regTwo!39614 lt!2623736))) (= lambda!462085 lambda!462057))))

(assert (=> bs!1930282 (not (= lambda!462085 lambda!462034))))

(assert (=> bs!1930283 (not (= lambda!462085 lambda!462066))))

(assert (=> bs!1930282 (= (= r1!5845 lt!2623728) (= lambda!462085 lambda!462035))))

(assert (=> bs!1930284 (not (= lambda!462085 lambda!462056))))

(assert (=> d!2298639 true))

(assert (=> d!2298639 true))

(assert (=> d!2298639 true))

(assert (=> d!2298639 (= (Exists!4170 lambda!462084) (Exists!4170 lambda!462085))))

(declare-fun lt!2623805 () Unit!165937)

(assert (=> d!2298639 (= lt!2623805 (choose!57721 r1!5845 rTail!78 s!13591))))

(assert (=> d!2298639 (validRegex!10065 r1!5845)))

(assert (=> d!2298639 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2504 r1!5845 rTail!78 s!13591) lt!2623805)))

(declare-fun m!8064986 () Bool)

(assert (=> bs!1930285 m!8064986))

(declare-fun m!8064988 () Bool)

(assert (=> bs!1930285 m!8064988))

(declare-fun m!8064990 () Bool)

(assert (=> bs!1930285 m!8064990))

(assert (=> bs!1930285 m!8064670))

(assert (=> b!7465635 d!2298639))

(declare-fun b!7466241 () Bool)

(declare-fun e!4455165 () Bool)

(assert (=> b!7466241 (= e!4455165 tp_is_empty!49391)))

(declare-fun b!7466243 () Bool)

(declare-fun tp!2164335 () Bool)

(assert (=> b!7466243 (= e!4455165 tp!2164335)))

(assert (=> b!7465629 (= tp!2164221 e!4455165)))

(declare-fun b!7466242 () Bool)

(declare-fun tp!2164337 () Bool)

(declare-fun tp!2164338 () Bool)

(assert (=> b!7466242 (= e!4455165 (and tp!2164337 tp!2164338))))

(declare-fun b!7466244 () Bool)

(declare-fun tp!2164334 () Bool)

(declare-fun tp!2164336 () Bool)

(assert (=> b!7466244 (= e!4455165 (and tp!2164334 tp!2164336))))

(assert (= (and b!7465629 ((_ is ElementMatch!19551) (regOne!39615 r2!5783))) b!7466241))

(assert (= (and b!7465629 ((_ is Concat!28396) (regOne!39615 r2!5783))) b!7466242))

(assert (= (and b!7465629 ((_ is Star!19551) (regOne!39615 r2!5783))) b!7466243))

(assert (= (and b!7465629 ((_ is Union!19551) (regOne!39615 r2!5783))) b!7466244))

(declare-fun b!7466245 () Bool)

(declare-fun e!4455166 () Bool)

(assert (=> b!7466245 (= e!4455166 tp_is_empty!49391)))

(declare-fun b!7466247 () Bool)

(declare-fun tp!2164340 () Bool)

(assert (=> b!7466247 (= e!4455166 tp!2164340)))

(assert (=> b!7465629 (= tp!2164224 e!4455166)))

(declare-fun b!7466246 () Bool)

(declare-fun tp!2164342 () Bool)

(declare-fun tp!2164343 () Bool)

(assert (=> b!7466246 (= e!4455166 (and tp!2164342 tp!2164343))))

(declare-fun b!7466248 () Bool)

(declare-fun tp!2164339 () Bool)

(declare-fun tp!2164341 () Bool)

(assert (=> b!7466248 (= e!4455166 (and tp!2164339 tp!2164341))))

(assert (= (and b!7465629 ((_ is ElementMatch!19551) (regTwo!39615 r2!5783))) b!7466245))

(assert (= (and b!7465629 ((_ is Concat!28396) (regTwo!39615 r2!5783))) b!7466246))

(assert (= (and b!7465629 ((_ is Star!19551) (regTwo!39615 r2!5783))) b!7466247))

(assert (= (and b!7465629 ((_ is Union!19551) (regTwo!39615 r2!5783))) b!7466248))

(declare-fun b!7466249 () Bool)

(declare-fun e!4455167 () Bool)

(assert (=> b!7466249 (= e!4455167 tp_is_empty!49391)))

(declare-fun b!7466251 () Bool)

(declare-fun tp!2164345 () Bool)

(assert (=> b!7466251 (= e!4455167 tp!2164345)))

(assert (=> b!7465645 (= tp!2164228 e!4455167)))

(declare-fun b!7466250 () Bool)

(declare-fun tp!2164347 () Bool)

(declare-fun tp!2164348 () Bool)

(assert (=> b!7466250 (= e!4455167 (and tp!2164347 tp!2164348))))

(declare-fun b!7466252 () Bool)

(declare-fun tp!2164344 () Bool)

(declare-fun tp!2164346 () Bool)

(assert (=> b!7466252 (= e!4455167 (and tp!2164344 tp!2164346))))

(assert (= (and b!7465645 ((_ is ElementMatch!19551) (reg!19880 r2!5783))) b!7466249))

(assert (= (and b!7465645 ((_ is Concat!28396) (reg!19880 r2!5783))) b!7466250))

(assert (= (and b!7465645 ((_ is Star!19551) (reg!19880 r2!5783))) b!7466251))

(assert (= (and b!7465645 ((_ is Union!19551) (reg!19880 r2!5783))) b!7466252))

(declare-fun b!7466253 () Bool)

(declare-fun e!4455168 () Bool)

(assert (=> b!7466253 (= e!4455168 tp_is_empty!49391)))

(declare-fun b!7466255 () Bool)

(declare-fun tp!2164350 () Bool)

(assert (=> b!7466255 (= e!4455168 tp!2164350)))

(assert (=> b!7465633 (= tp!2164223 e!4455168)))

(declare-fun b!7466254 () Bool)

(declare-fun tp!2164352 () Bool)

(declare-fun tp!2164353 () Bool)

(assert (=> b!7466254 (= e!4455168 (and tp!2164352 tp!2164353))))

(declare-fun b!7466256 () Bool)

(declare-fun tp!2164349 () Bool)

(declare-fun tp!2164351 () Bool)

(assert (=> b!7466256 (= e!4455168 (and tp!2164349 tp!2164351))))

(assert (= (and b!7465633 ((_ is ElementMatch!19551) (regOne!39614 rTail!78))) b!7466253))

(assert (= (and b!7465633 ((_ is Concat!28396) (regOne!39614 rTail!78))) b!7466254))

(assert (= (and b!7465633 ((_ is Star!19551) (regOne!39614 rTail!78))) b!7466255))

(assert (= (and b!7465633 ((_ is Union!19551) (regOne!39614 rTail!78))) b!7466256))

(declare-fun b!7466257 () Bool)

(declare-fun e!4455169 () Bool)

(assert (=> b!7466257 (= e!4455169 tp_is_empty!49391)))

(declare-fun b!7466259 () Bool)

(declare-fun tp!2164355 () Bool)

(assert (=> b!7466259 (= e!4455169 tp!2164355)))

(assert (=> b!7465633 (= tp!2164231 e!4455169)))

(declare-fun b!7466258 () Bool)

(declare-fun tp!2164357 () Bool)

(declare-fun tp!2164358 () Bool)

(assert (=> b!7466258 (= e!4455169 (and tp!2164357 tp!2164358))))

(declare-fun b!7466260 () Bool)

(declare-fun tp!2164354 () Bool)

(declare-fun tp!2164356 () Bool)

(assert (=> b!7466260 (= e!4455169 (and tp!2164354 tp!2164356))))

(assert (= (and b!7465633 ((_ is ElementMatch!19551) (regTwo!39614 rTail!78))) b!7466257))

(assert (= (and b!7465633 ((_ is Concat!28396) (regTwo!39614 rTail!78))) b!7466258))

(assert (= (and b!7465633 ((_ is Star!19551) (regTwo!39614 rTail!78))) b!7466259))

(assert (= (and b!7465633 ((_ is Union!19551) (regTwo!39614 rTail!78))) b!7466260))

(declare-fun b!7466261 () Bool)

(declare-fun e!4455170 () Bool)

(assert (=> b!7466261 (= e!4455170 tp_is_empty!49391)))

(declare-fun b!7466263 () Bool)

(declare-fun tp!2164360 () Bool)

(assert (=> b!7466263 (= e!4455170 tp!2164360)))

(assert (=> b!7465638 (= tp!2164227 e!4455170)))

(declare-fun b!7466262 () Bool)

(declare-fun tp!2164362 () Bool)

(declare-fun tp!2164363 () Bool)

(assert (=> b!7466262 (= e!4455170 (and tp!2164362 tp!2164363))))

(declare-fun b!7466264 () Bool)

(declare-fun tp!2164359 () Bool)

(declare-fun tp!2164361 () Bool)

(assert (=> b!7466264 (= e!4455170 (and tp!2164359 tp!2164361))))

(assert (= (and b!7465638 ((_ is ElementMatch!19551) (reg!19880 r1!5845))) b!7466261))

(assert (= (and b!7465638 ((_ is Concat!28396) (reg!19880 r1!5845))) b!7466262))

(assert (= (and b!7465638 ((_ is Star!19551) (reg!19880 r1!5845))) b!7466263))

(assert (= (and b!7465638 ((_ is Union!19551) (reg!19880 r1!5845))) b!7466264))

(declare-fun b!7466265 () Bool)

(declare-fun e!4455171 () Bool)

(assert (=> b!7466265 (= e!4455171 tp_is_empty!49391)))

(declare-fun b!7466267 () Bool)

(declare-fun tp!2164365 () Bool)

(assert (=> b!7466267 (= e!4455171 tp!2164365)))

(assert (=> b!7465627 (= tp!2164226 e!4455171)))

(declare-fun b!7466266 () Bool)

(declare-fun tp!2164367 () Bool)

(declare-fun tp!2164368 () Bool)

(assert (=> b!7466266 (= e!4455171 (and tp!2164367 tp!2164368))))

(declare-fun b!7466268 () Bool)

(declare-fun tp!2164364 () Bool)

(declare-fun tp!2164366 () Bool)

(assert (=> b!7466268 (= e!4455171 (and tp!2164364 tp!2164366))))

(assert (= (and b!7465627 ((_ is ElementMatch!19551) (regOne!39615 r1!5845))) b!7466265))

(assert (= (and b!7465627 ((_ is Concat!28396) (regOne!39615 r1!5845))) b!7466266))

(assert (= (and b!7465627 ((_ is Star!19551) (regOne!39615 r1!5845))) b!7466267))

(assert (= (and b!7465627 ((_ is Union!19551) (regOne!39615 r1!5845))) b!7466268))

(declare-fun b!7466269 () Bool)

(declare-fun e!4455172 () Bool)

(assert (=> b!7466269 (= e!4455172 tp_is_empty!49391)))

(declare-fun b!7466271 () Bool)

(declare-fun tp!2164370 () Bool)

(assert (=> b!7466271 (= e!4455172 tp!2164370)))

(assert (=> b!7465627 (= tp!2164232 e!4455172)))

(declare-fun b!7466270 () Bool)

(declare-fun tp!2164372 () Bool)

(declare-fun tp!2164373 () Bool)

(assert (=> b!7466270 (= e!4455172 (and tp!2164372 tp!2164373))))

(declare-fun b!7466272 () Bool)

(declare-fun tp!2164369 () Bool)

(declare-fun tp!2164371 () Bool)

(assert (=> b!7466272 (= e!4455172 (and tp!2164369 tp!2164371))))

(assert (= (and b!7465627 ((_ is ElementMatch!19551) (regTwo!39615 r1!5845))) b!7466269))

(assert (= (and b!7465627 ((_ is Concat!28396) (regTwo!39615 r1!5845))) b!7466270))

(assert (= (and b!7465627 ((_ is Star!19551) (regTwo!39615 r1!5845))) b!7466271))

(assert (= (and b!7465627 ((_ is Union!19551) (regTwo!39615 r1!5845))) b!7466272))

(declare-fun b!7466273 () Bool)

(declare-fun e!4455173 () Bool)

(assert (=> b!7466273 (= e!4455173 tp_is_empty!49391)))

(declare-fun b!7466275 () Bool)

(declare-fun tp!2164375 () Bool)

(assert (=> b!7466275 (= e!4455173 tp!2164375)))

(assert (=> b!7465643 (= tp!2164229 e!4455173)))

(declare-fun b!7466274 () Bool)

(declare-fun tp!2164377 () Bool)

(declare-fun tp!2164378 () Bool)

(assert (=> b!7466274 (= e!4455173 (and tp!2164377 tp!2164378))))

(declare-fun b!7466276 () Bool)

(declare-fun tp!2164374 () Bool)

(declare-fun tp!2164376 () Bool)

(assert (=> b!7466276 (= e!4455173 (and tp!2164374 tp!2164376))))

(assert (= (and b!7465643 ((_ is ElementMatch!19551) (regOne!39615 rTail!78))) b!7466273))

(assert (= (and b!7465643 ((_ is Concat!28396) (regOne!39615 rTail!78))) b!7466274))

(assert (= (and b!7465643 ((_ is Star!19551) (regOne!39615 rTail!78))) b!7466275))

(assert (= (and b!7465643 ((_ is Union!19551) (regOne!39615 rTail!78))) b!7466276))

(declare-fun b!7466277 () Bool)

(declare-fun e!4455174 () Bool)

(assert (=> b!7466277 (= e!4455174 tp_is_empty!49391)))

(declare-fun b!7466279 () Bool)

(declare-fun tp!2164380 () Bool)

(assert (=> b!7466279 (= e!4455174 tp!2164380)))

(assert (=> b!7465643 (= tp!2164230 e!4455174)))

(declare-fun b!7466278 () Bool)

(declare-fun tp!2164382 () Bool)

(declare-fun tp!2164383 () Bool)

(assert (=> b!7466278 (= e!4455174 (and tp!2164382 tp!2164383))))

(declare-fun b!7466280 () Bool)

(declare-fun tp!2164379 () Bool)

(declare-fun tp!2164381 () Bool)

(assert (=> b!7466280 (= e!4455174 (and tp!2164379 tp!2164381))))

(assert (= (and b!7465643 ((_ is ElementMatch!19551) (regTwo!39615 rTail!78))) b!7466277))

(assert (= (and b!7465643 ((_ is Concat!28396) (regTwo!39615 rTail!78))) b!7466278))

(assert (= (and b!7465643 ((_ is Star!19551) (regTwo!39615 rTail!78))) b!7466279))

(assert (= (and b!7465643 ((_ is Union!19551) (regTwo!39615 rTail!78))) b!7466280))

(declare-fun b!7466281 () Bool)

(declare-fun e!4455175 () Bool)

(assert (=> b!7466281 (= e!4455175 tp_is_empty!49391)))

(declare-fun b!7466283 () Bool)

(declare-fun tp!2164385 () Bool)

(assert (=> b!7466283 (= e!4455175 tp!2164385)))

(assert (=> b!7465637 (= tp!2164222 e!4455175)))

(declare-fun b!7466282 () Bool)

(declare-fun tp!2164387 () Bool)

(declare-fun tp!2164388 () Bool)

(assert (=> b!7466282 (= e!4455175 (and tp!2164387 tp!2164388))))

(declare-fun b!7466284 () Bool)

(declare-fun tp!2164384 () Bool)

(declare-fun tp!2164386 () Bool)

(assert (=> b!7466284 (= e!4455175 (and tp!2164384 tp!2164386))))

(assert (= (and b!7465637 ((_ is ElementMatch!19551) (reg!19880 rTail!78))) b!7466281))

(assert (= (and b!7465637 ((_ is Concat!28396) (reg!19880 rTail!78))) b!7466282))

(assert (= (and b!7465637 ((_ is Star!19551) (reg!19880 rTail!78))) b!7466283))

(assert (= (and b!7465637 ((_ is Union!19551) (reg!19880 rTail!78))) b!7466284))

(declare-fun b!7466285 () Bool)

(declare-fun e!4455176 () Bool)

(assert (=> b!7466285 (= e!4455176 tp_is_empty!49391)))

(declare-fun b!7466287 () Bool)

(declare-fun tp!2164390 () Bool)

(assert (=> b!7466287 (= e!4455176 tp!2164390)))

(assert (=> b!7465636 (= tp!2164233 e!4455176)))

(declare-fun b!7466286 () Bool)

(declare-fun tp!2164392 () Bool)

(declare-fun tp!2164393 () Bool)

(assert (=> b!7466286 (= e!4455176 (and tp!2164392 tp!2164393))))

(declare-fun b!7466288 () Bool)

(declare-fun tp!2164389 () Bool)

(declare-fun tp!2164391 () Bool)

(assert (=> b!7466288 (= e!4455176 (and tp!2164389 tp!2164391))))

(assert (= (and b!7465636 ((_ is ElementMatch!19551) (regOne!39614 r1!5845))) b!7466285))

(assert (= (and b!7465636 ((_ is Concat!28396) (regOne!39614 r1!5845))) b!7466286))

(assert (= (and b!7465636 ((_ is Star!19551) (regOne!39614 r1!5845))) b!7466287))

(assert (= (and b!7465636 ((_ is Union!19551) (regOne!39614 r1!5845))) b!7466288))

(declare-fun b!7466289 () Bool)

(declare-fun e!4455177 () Bool)

(assert (=> b!7466289 (= e!4455177 tp_is_empty!49391)))

(declare-fun b!7466291 () Bool)

(declare-fun tp!2164395 () Bool)

(assert (=> b!7466291 (= e!4455177 tp!2164395)))

(assert (=> b!7465636 (= tp!2164220 e!4455177)))

(declare-fun b!7466290 () Bool)

(declare-fun tp!2164397 () Bool)

(declare-fun tp!2164398 () Bool)

(assert (=> b!7466290 (= e!4455177 (and tp!2164397 tp!2164398))))

(declare-fun b!7466292 () Bool)

(declare-fun tp!2164394 () Bool)

(declare-fun tp!2164396 () Bool)

(assert (=> b!7466292 (= e!4455177 (and tp!2164394 tp!2164396))))

(assert (= (and b!7465636 ((_ is ElementMatch!19551) (regTwo!39614 r1!5845))) b!7466289))

(assert (= (and b!7465636 ((_ is Concat!28396) (regTwo!39614 r1!5845))) b!7466290))

(assert (= (and b!7465636 ((_ is Star!19551) (regTwo!39614 r1!5845))) b!7466291))

(assert (= (and b!7465636 ((_ is Union!19551) (regTwo!39614 r1!5845))) b!7466292))

(declare-fun b!7466293 () Bool)

(declare-fun e!4455178 () Bool)

(assert (=> b!7466293 (= e!4455178 tp_is_empty!49391)))

(declare-fun b!7466295 () Bool)

(declare-fun tp!2164400 () Bool)

(assert (=> b!7466295 (= e!4455178 tp!2164400)))

(assert (=> b!7465641 (= tp!2164234 e!4455178)))

(declare-fun b!7466294 () Bool)

(declare-fun tp!2164402 () Bool)

(declare-fun tp!2164403 () Bool)

(assert (=> b!7466294 (= e!4455178 (and tp!2164402 tp!2164403))))

(declare-fun b!7466296 () Bool)

(declare-fun tp!2164399 () Bool)

(declare-fun tp!2164401 () Bool)

(assert (=> b!7466296 (= e!4455178 (and tp!2164399 tp!2164401))))

(assert (= (and b!7465641 ((_ is ElementMatch!19551) (regOne!39614 r2!5783))) b!7466293))

(assert (= (and b!7465641 ((_ is Concat!28396) (regOne!39614 r2!5783))) b!7466294))

(assert (= (and b!7465641 ((_ is Star!19551) (regOne!39614 r2!5783))) b!7466295))

(assert (= (and b!7465641 ((_ is Union!19551) (regOne!39614 r2!5783))) b!7466296))

(declare-fun b!7466297 () Bool)

(declare-fun e!4455179 () Bool)

(assert (=> b!7466297 (= e!4455179 tp_is_empty!49391)))

(declare-fun b!7466299 () Bool)

(declare-fun tp!2164405 () Bool)

(assert (=> b!7466299 (= e!4455179 tp!2164405)))

(assert (=> b!7465641 (= tp!2164235 e!4455179)))

(declare-fun b!7466298 () Bool)

(declare-fun tp!2164407 () Bool)

(declare-fun tp!2164408 () Bool)

(assert (=> b!7466298 (= e!4455179 (and tp!2164407 tp!2164408))))

(declare-fun b!7466300 () Bool)

(declare-fun tp!2164404 () Bool)

(declare-fun tp!2164406 () Bool)

(assert (=> b!7466300 (= e!4455179 (and tp!2164404 tp!2164406))))

(assert (= (and b!7465641 ((_ is ElementMatch!19551) (regTwo!39614 r2!5783))) b!7466297))

(assert (= (and b!7465641 ((_ is Concat!28396) (regTwo!39614 r2!5783))) b!7466298))

(assert (= (and b!7465641 ((_ is Star!19551) (regTwo!39614 r2!5783))) b!7466299))

(assert (= (and b!7465641 ((_ is Union!19551) (regTwo!39614 r2!5783))) b!7466300))

(declare-fun b!7466305 () Bool)

(declare-fun e!4455182 () Bool)

(declare-fun tp!2164411 () Bool)

(assert (=> b!7466305 (= e!4455182 (and tp_is_empty!49391 tp!2164411))))

(assert (=> b!7465630 (= tp!2164225 e!4455182)))

(assert (= (and b!7465630 ((_ is Cons!72143) (t!386836 s!13591))) b!7466305))

(check-sat (not b!7465980) (not bm!685761) (not b!7466294) (not b!7466003) (not b!7466276) (not d!2298595) (not d!2298619) (not bm!685744) (not b!7466199) (not d!2298565) (not b!7465858) (not b!7466225) (not b!7465801) (not b!7466271) (not b!7466200) (not d!2298623) (not b!7465854) (not bm!685748) (not b!7465989) (not b!7466220) (not b!7466305) (not b!7466248) (not b!7466223) (not d!2298603) (not b!7466230) (not b!7466291) (not b!7466013) (not b!7465979) (not d!2298575) (not b!7466280) (not d!2298581) (not bm!685745) (not b!7466275) (not b!7465805) (not d!2298625) (not bm!685762) (not b!7466288) (not b!7466198) (not b!7465915) (not bm!685755) (not d!2298629) (not b!7466242) (not b!7465993) (not b!7466250) (not d!2298617) (not b!7466252) (not b!7466256) (not b!7466270) (not b!7465902) (not d!2298621) (not b!7466266) (not b!7466224) (not bm!685785) (not b!7466262) (not b!7465911) (not d!2298537) (not b!7465983) (not b!7465737) (not b!7466283) (not b!7465982) (not b!7466295) (not bm!685728) (not b!7466226) (not b!7465893) (not b!7465997) (not b!7465738) (not b!7466267) (not b!7465933) (not b!7465896) (not b!7466278) (not b!7466282) (not b!7466268) (not b!7466296) (not b!7465748) (not bm!685738) (not bm!685733) (not b!7466284) (not bm!685749) (not b!7465740) (not b!7466244) (not b!7466274) (not d!2298593) (not b!7466260) (not b!7466202) (not d!2298631) (not b!7466204) (not b!7466255) (not b!7466286) (not b!7466272) (not b!7466243) (not b!7465996) (not d!2298635) (not bm!685763) (not b!7465892) (not b!7466292) (not bm!685754) (not b!7466228) (not b!7466246) (not d!2298573) (not d!2298637) (not b!7465990) (not b!7465675) tp_is_empty!49391 (not b!7466279) (not b!7466290) (not b!7466300) (not b!7466247) (not b!7466251) (not b!7465903) (not bm!685730) (not b!7466264) (not b!7466197) (not d!2298639) (not d!2298633) (not b!7466263) (not b!7465741) (not b!7465895) (not b!7466299) (not b!7465994) (not b!7466004) (not b!7466298) (not b!7465937) (not bm!685743) (not bm!685739) (not d!2298579) (not b!7466287) (not b!7466259) (not b!7466254) (not bm!685787) (not b!7465747) (not b!7466258) (not bm!685765))
(check-sat)
