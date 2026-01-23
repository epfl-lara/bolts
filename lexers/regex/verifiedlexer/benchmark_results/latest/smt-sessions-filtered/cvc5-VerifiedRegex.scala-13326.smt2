; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!723600 () Bool)

(assert start!723600)

(declare-fun b!7455842 () Bool)

(assert (=> b!7455842 true))

(assert (=> b!7455842 true))

(assert (=> b!7455842 true))

(declare-fun lambda!461263 () Int)

(declare-fun lambda!461262 () Int)

(assert (=> b!7455842 (not (= lambda!461263 lambda!461262))))

(assert (=> b!7455842 true))

(assert (=> b!7455842 true))

(assert (=> b!7455842 true))

(declare-fun b!7455832 () Bool)

(declare-fun e!4450056 () Bool)

(declare-fun tp!2160691 () Bool)

(declare-fun tp!2160689 () Bool)

(assert (=> b!7455832 (= e!4450056 (and tp!2160691 tp!2160689))))

(declare-fun b!7455833 () Bool)

(declare-fun e!4450059 () Bool)

(declare-fun e!4450060 () Bool)

(assert (=> b!7455833 (= e!4450059 e!4450060)))

(declare-fun res!2990665 () Bool)

(assert (=> b!7455833 (=> res!2990665 e!4450060)))

(declare-fun lt!2621550 () Bool)

(declare-fun lt!2621531 () Bool)

(assert (=> b!7455833 (= res!2990665 (and (not lt!2621550) (not lt!2621531)))))

(declare-datatypes ((C!39302 0))(
  ( (C!39303 (val!30049 Int)) )
))
(declare-datatypes ((Regex!19514 0))(
  ( (ElementMatch!19514 (c!1378480 C!39302)) (Concat!28359 (regOne!39540 Regex!19514) (regTwo!39540 Regex!19514)) (EmptyExpr!19514) (Star!19514 (reg!19843 Regex!19514)) (EmptyLang!19514) (Union!19514 (regOne!39541 Regex!19514) (regTwo!39541 Regex!19514)) )
))
(declare-fun r2!5783 () Regex!19514)

(declare-datatypes ((List!72230 0))(
  ( (Nil!72106) (Cons!72106 (h!78554 C!39302) (t!386799 List!72230)) )
))
(declare-datatypes ((tuple2!68482 0))(
  ( (tuple2!68483 (_1!37544 List!72230) (_2!37544 List!72230)) )
))
(declare-fun lt!2621529 () tuple2!68482)

(declare-fun matchRSpec!4193 (Regex!19514 List!72230) Bool)

(assert (=> b!7455833 (= lt!2621531 (matchRSpec!4193 r2!5783 (_1!37544 lt!2621529)))))

(declare-fun matchR!9278 (Regex!19514 List!72230) Bool)

(assert (=> b!7455833 (= lt!2621531 (matchR!9278 r2!5783 (_1!37544 lt!2621529)))))

(declare-datatypes ((Unit!165863 0))(
  ( (Unit!165864) )
))
(declare-fun lt!2621538 () Unit!165863)

(declare-fun mainMatchTheorem!4187 (Regex!19514 List!72230) Unit!165863)

(assert (=> b!7455833 (= lt!2621538 (mainMatchTheorem!4187 r2!5783 (_1!37544 lt!2621529)))))

(declare-fun r1!5845 () Regex!19514)

(assert (=> b!7455833 (= lt!2621550 (matchRSpec!4193 r1!5845 (_1!37544 lt!2621529)))))

(assert (=> b!7455833 (= lt!2621550 (matchR!9278 r1!5845 (_1!37544 lt!2621529)))))

(declare-fun lt!2621534 () Unit!165863)

(assert (=> b!7455833 (= lt!2621534 (mainMatchTheorem!4187 r1!5845 (_1!37544 lt!2621529)))))

(declare-fun rTail!78 () Regex!19514)

(assert (=> b!7455833 (matchRSpec!4193 rTail!78 (_2!37544 lt!2621529))))

(declare-fun lt!2621542 () Unit!165863)

(assert (=> b!7455833 (= lt!2621542 (mainMatchTheorem!4187 rTail!78 (_2!37544 lt!2621529)))))

(declare-fun lt!2621553 () Regex!19514)

(assert (=> b!7455833 (matchRSpec!4193 lt!2621553 (_1!37544 lt!2621529))))

(declare-fun lt!2621546 () Unit!165863)

(assert (=> b!7455833 (= lt!2621546 (mainMatchTheorem!4187 lt!2621553 (_1!37544 lt!2621529)))))

(declare-fun b!7455835 () Bool)

(declare-fun e!4450063 () Bool)

(declare-fun tp!2160697 () Bool)

(assert (=> b!7455835 (= e!4450063 tp!2160697)))

(declare-fun b!7455836 () Bool)

(declare-fun e!4450061 () Bool)

(declare-fun tp!2160687 () Bool)

(assert (=> b!7455836 (= e!4450061 tp!2160687)))

(declare-fun bm!684918 () Bool)

(declare-fun call!684923 () List!72230)

(declare-fun ++!17172 (List!72230 List!72230) List!72230)

(assert (=> bm!684918 (= call!684923 (++!17172 (_1!37544 lt!2621529) (_2!37544 lt!2621529)))))

(declare-fun b!7455837 () Bool)

(declare-fun e!4450055 () Bool)

(declare-fun e!4450064 () Bool)

(assert (=> b!7455837 (= e!4450055 (not e!4450064))))

(declare-fun res!2990670 () Bool)

(assert (=> b!7455837 (=> res!2990670 e!4450064)))

(declare-fun lt!2621549 () Bool)

(assert (=> b!7455837 (= res!2990670 (not lt!2621549))))

(declare-fun lt!2621540 () Bool)

(declare-fun lt!2621543 () Regex!19514)

(declare-fun s!13591 () List!72230)

(assert (=> b!7455837 (= lt!2621540 (matchRSpec!4193 lt!2621543 s!13591))))

(assert (=> b!7455837 (= lt!2621540 (matchR!9278 lt!2621543 s!13591))))

(declare-fun lt!2621535 () Unit!165863)

(assert (=> b!7455837 (= lt!2621535 (mainMatchTheorem!4187 lt!2621543 s!13591))))

(declare-fun lt!2621536 () Regex!19514)

(assert (=> b!7455837 (= lt!2621549 (matchRSpec!4193 lt!2621536 s!13591))))

(assert (=> b!7455837 (= lt!2621549 (matchR!9278 lt!2621536 s!13591))))

(declare-fun lt!2621545 () Unit!165863)

(assert (=> b!7455837 (= lt!2621545 (mainMatchTheorem!4187 lt!2621536 s!13591))))

(declare-fun lt!2621539 () Regex!19514)

(declare-fun lt!2621532 () Regex!19514)

(assert (=> b!7455837 (= lt!2621543 (Union!19514 lt!2621539 lt!2621532))))

(assert (=> b!7455837 (= lt!2621532 (Concat!28359 r2!5783 rTail!78))))

(assert (=> b!7455837 (= lt!2621539 (Concat!28359 r1!5845 rTail!78))))

(assert (=> b!7455837 (= lt!2621536 (Concat!28359 lt!2621553 rTail!78))))

(assert (=> b!7455837 (= lt!2621553 (Union!19514 r1!5845 r2!5783))))

(declare-fun b!7455838 () Bool)

(declare-fun tp!2160698 () Bool)

(declare-fun tp!2160696 () Bool)

(assert (=> b!7455838 (= e!4450061 (and tp!2160698 tp!2160696))))

(declare-fun b!7455839 () Bool)

(declare-fun tp_is_empty!49317 () Bool)

(assert (=> b!7455839 (= e!4450056 tp_is_empty!49317)))

(declare-fun b!7455840 () Bool)

(assert (=> b!7455840 (= e!4450061 tp_is_empty!49317)))

(declare-fun b!7455841 () Bool)

(declare-fun e!4450062 () Unit!165863)

(declare-fun lt!2621548 () Unit!165863)

(assert (=> b!7455841 (= e!4450062 lt!2621548)))

(declare-fun call!684925 () Unit!165863)

(assert (=> b!7455841 (= lt!2621548 call!684925)))

(declare-fun call!684924 () Bool)

(assert (=> b!7455841 call!684924))

(assert (=> b!7455842 (= e!4450064 e!4450059)))

(declare-fun res!2990663 () Bool)

(assert (=> b!7455842 (=> res!2990663 e!4450059)))

(assert (=> b!7455842 (= res!2990663 (not (matchR!9278 lt!2621553 (_1!37544 lt!2621529))))))

(declare-datatypes ((Option!17073 0))(
  ( (None!17072) (Some!17072 (v!54201 tuple2!68482)) )
))
(declare-fun lt!2621552 () Option!17073)

(declare-fun get!25155 (Option!17073) tuple2!68482)

(assert (=> b!7455842 (= lt!2621529 (get!25155 lt!2621552))))

(declare-fun Exists!4135 (Int) Bool)

(assert (=> b!7455842 (= (Exists!4135 lambda!461262) (Exists!4135 lambda!461263))))

(declare-fun lt!2621544 () Unit!165863)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2471 (Regex!19514 Regex!19514 List!72230) Unit!165863)

(assert (=> b!7455842 (= lt!2621544 (lemmaExistCutMatchRandMatchRSpecEquivalent!2471 lt!2621553 rTail!78 s!13591))))

(declare-fun isDefined!13762 (Option!17073) Bool)

(assert (=> b!7455842 (= (isDefined!13762 lt!2621552) (Exists!4135 lambda!461262))))

(declare-fun findConcatSeparation!3195 (Regex!19514 Regex!19514 List!72230 List!72230 List!72230) Option!17073)

(assert (=> b!7455842 (= lt!2621552 (findConcatSeparation!3195 lt!2621553 rTail!78 Nil!72106 s!13591 s!13591))))

(declare-fun lt!2621541 () Unit!165863)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2953 (Regex!19514 Regex!19514 List!72230) Unit!165863)

(assert (=> b!7455842 (= lt!2621541 (lemmaFindConcatSeparationEquivalentToExists!2953 lt!2621553 rTail!78 s!13591))))

(declare-fun b!7455843 () Bool)

(declare-fun tp!2160693 () Bool)

(declare-fun tp!2160694 () Bool)

(assert (=> b!7455843 (= e!4450056 (and tp!2160693 tp!2160694))))

(declare-fun b!7455844 () Bool)

(assert (=> b!7455844 (= e!4450063 tp_is_empty!49317)))

(declare-fun b!7455845 () Bool)

(declare-fun res!2990666 () Bool)

(assert (=> b!7455845 (=> (not res!2990666) (not e!4450055))))

(declare-fun validRegex!10028 (Regex!19514) Bool)

(assert (=> b!7455845 (= res!2990666 (validRegex!10028 rTail!78))))

(declare-fun res!2990667 () Bool)

(assert (=> start!723600 (=> (not res!2990667) (not e!4450055))))

(assert (=> start!723600 (= res!2990667 (validRegex!10028 r1!5845))))

(assert (=> start!723600 e!4450055))

(assert (=> start!723600 e!4450056))

(assert (=> start!723600 e!4450063))

(assert (=> start!723600 e!4450061))

(declare-fun e!4450058 () Bool)

(assert (=> start!723600 e!4450058))

(declare-fun b!7455834 () Bool)

(declare-fun lt!2621528 () Unit!165863)

(assert (=> b!7455834 (= e!4450062 lt!2621528)))

(assert (=> b!7455834 (= lt!2621528 call!684925)))

(assert (=> b!7455834 call!684924))

(declare-fun b!7455846 () Bool)

(declare-fun e!4450057 () Bool)

(assert (=> b!7455846 (= e!4450060 e!4450057)))

(declare-fun res!2990668 () Bool)

(assert (=> b!7455846 (=> res!2990668 e!4450057)))

(declare-fun lt!2621547 () Bool)

(declare-fun lt!2621537 () Bool)

(assert (=> b!7455846 (= res!2990668 (not (= lt!2621540 (or lt!2621537 lt!2621547))))))

(assert (=> b!7455846 (= lt!2621547 (matchRSpec!4193 lt!2621532 s!13591))))

(assert (=> b!7455846 (= lt!2621547 (matchR!9278 lt!2621532 s!13591))))

(declare-fun lt!2621533 () Unit!165863)

(assert (=> b!7455846 (= lt!2621533 (mainMatchTheorem!4187 lt!2621532 s!13591))))

(assert (=> b!7455846 (= lt!2621537 (matchRSpec!4193 lt!2621539 s!13591))))

(assert (=> b!7455846 (= lt!2621537 (matchR!9278 lt!2621539 s!13591))))

(declare-fun lt!2621530 () Unit!165863)

(assert (=> b!7455846 (= lt!2621530 (mainMatchTheorem!4187 lt!2621539 s!13591))))

(declare-fun b!7455847 () Bool)

(declare-fun tp!2160688 () Bool)

(declare-fun tp!2160685 () Bool)

(assert (=> b!7455847 (= e!4450061 (and tp!2160688 tp!2160685))))

(declare-fun b!7455848 () Bool)

(declare-fun res!2990669 () Bool)

(assert (=> b!7455848 (=> (not res!2990669) (not e!4450055))))

(assert (=> b!7455848 (= res!2990669 (validRegex!10028 r2!5783))))

(declare-fun b!7455849 () Bool)

(declare-fun tp!2160690 () Bool)

(assert (=> b!7455849 (= e!4450058 (and tp_is_empty!49317 tp!2160690))))

(declare-fun c!1378479 () Bool)

(declare-fun bm!684919 () Bool)

(assert (=> bm!684919 (= call!684924 (matchR!9278 (ite c!1378479 lt!2621539 lt!2621532) call!684923))))

(declare-fun b!7455850 () Bool)

(declare-fun tp!2160695 () Bool)

(declare-fun tp!2160699 () Bool)

(assert (=> b!7455850 (= e!4450063 (and tp!2160695 tp!2160699))))

(declare-fun b!7455851 () Bool)

(declare-fun tp!2160684 () Bool)

(declare-fun tp!2160692 () Bool)

(assert (=> b!7455851 (= e!4450063 (and tp!2160684 tp!2160692))))

(declare-fun b!7455852 () Bool)

(assert (=> b!7455852 (= e!4450057 (validRegex!10028 lt!2621543))))

(declare-fun lt!2621551 () Unit!165863)

(assert (=> b!7455852 (= lt!2621551 e!4450062)))

(assert (=> b!7455852 (= c!1378479 lt!2621550)))

(declare-fun b!7455853 () Bool)

(declare-fun res!2990664 () Bool)

(assert (=> b!7455853 (=> res!2990664 e!4450059)))

(assert (=> b!7455853 (= res!2990664 (not (matchR!9278 rTail!78 (_2!37544 lt!2621529))))))

(declare-fun bm!684920 () Bool)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!393 (Regex!19514 Regex!19514 List!72230 List!72230) Unit!165863)

(assert (=> bm!684920 (= call!684925 (lemmaTwoRegexMatchThenConcatMatchesConcatString!393 (ite c!1378479 r1!5845 r2!5783) rTail!78 (_1!37544 lt!2621529) (_2!37544 lt!2621529)))))

(declare-fun b!7455854 () Bool)

(declare-fun tp!2160686 () Bool)

(assert (=> b!7455854 (= e!4450056 tp!2160686)))

(assert (= (and start!723600 res!2990667) b!7455848))

(assert (= (and b!7455848 res!2990669) b!7455845))

(assert (= (and b!7455845 res!2990666) b!7455837))

(assert (= (and b!7455837 (not res!2990670)) b!7455842))

(assert (= (and b!7455842 (not res!2990663)) b!7455853))

(assert (= (and b!7455853 (not res!2990664)) b!7455833))

(assert (= (and b!7455833 (not res!2990665)) b!7455846))

(assert (= (and b!7455846 (not res!2990668)) b!7455852))

(assert (= (and b!7455852 c!1378479) b!7455841))

(assert (= (and b!7455852 (not c!1378479)) b!7455834))

(assert (= (or b!7455841 b!7455834) bm!684920))

(assert (= (or b!7455841 b!7455834) bm!684918))

(assert (= (or b!7455841 b!7455834) bm!684919))

(assert (= (and start!723600 (is-ElementMatch!19514 r1!5845)) b!7455839))

(assert (= (and start!723600 (is-Concat!28359 r1!5845)) b!7455843))

(assert (= (and start!723600 (is-Star!19514 r1!5845)) b!7455854))

(assert (= (and start!723600 (is-Union!19514 r1!5845)) b!7455832))

(assert (= (and start!723600 (is-ElementMatch!19514 r2!5783)) b!7455844))

(assert (= (and start!723600 (is-Concat!28359 r2!5783)) b!7455850))

(assert (= (and start!723600 (is-Star!19514 r2!5783)) b!7455835))

(assert (= (and start!723600 (is-Union!19514 r2!5783)) b!7455851))

(assert (= (and start!723600 (is-ElementMatch!19514 rTail!78)) b!7455840))

(assert (= (and start!723600 (is-Concat!28359 rTail!78)) b!7455847))

(assert (= (and start!723600 (is-Star!19514 rTail!78)) b!7455836))

(assert (= (and start!723600 (is-Union!19514 rTail!78)) b!7455838))

(assert (= (and start!723600 (is-Cons!72106 s!13591)) b!7455849))

(declare-fun m!8059708 () Bool)

(assert (=> b!7455853 m!8059708))

(declare-fun m!8059710 () Bool)

(assert (=> bm!684919 m!8059710))

(declare-fun m!8059712 () Bool)

(assert (=> b!7455845 m!8059712))

(declare-fun m!8059714 () Bool)

(assert (=> b!7455852 m!8059714))

(declare-fun m!8059716 () Bool)

(assert (=> b!7455848 m!8059716))

(declare-fun m!8059718 () Bool)

(assert (=> start!723600 m!8059718))

(declare-fun m!8059720 () Bool)

(assert (=> bm!684920 m!8059720))

(declare-fun m!8059722 () Bool)

(assert (=> b!7455833 m!8059722))

(declare-fun m!8059724 () Bool)

(assert (=> b!7455833 m!8059724))

(declare-fun m!8059726 () Bool)

(assert (=> b!7455833 m!8059726))

(declare-fun m!8059728 () Bool)

(assert (=> b!7455833 m!8059728))

(declare-fun m!8059730 () Bool)

(assert (=> b!7455833 m!8059730))

(declare-fun m!8059732 () Bool)

(assert (=> b!7455833 m!8059732))

(declare-fun m!8059734 () Bool)

(assert (=> b!7455833 m!8059734))

(declare-fun m!8059736 () Bool)

(assert (=> b!7455833 m!8059736))

(declare-fun m!8059738 () Bool)

(assert (=> b!7455833 m!8059738))

(declare-fun m!8059740 () Bool)

(assert (=> b!7455833 m!8059740))

(declare-fun m!8059742 () Bool)

(assert (=> b!7455837 m!8059742))

(declare-fun m!8059744 () Bool)

(assert (=> b!7455837 m!8059744))

(declare-fun m!8059746 () Bool)

(assert (=> b!7455837 m!8059746))

(declare-fun m!8059748 () Bool)

(assert (=> b!7455837 m!8059748))

(declare-fun m!8059750 () Bool)

(assert (=> b!7455837 m!8059750))

(declare-fun m!8059752 () Bool)

(assert (=> b!7455837 m!8059752))

(declare-fun m!8059754 () Bool)

(assert (=> b!7455846 m!8059754))

(declare-fun m!8059756 () Bool)

(assert (=> b!7455846 m!8059756))

(declare-fun m!8059758 () Bool)

(assert (=> b!7455846 m!8059758))

(declare-fun m!8059760 () Bool)

(assert (=> b!7455846 m!8059760))

(declare-fun m!8059762 () Bool)

(assert (=> b!7455846 m!8059762))

(declare-fun m!8059764 () Bool)

(assert (=> b!7455846 m!8059764))

(declare-fun m!8059766 () Bool)

(assert (=> b!7455842 m!8059766))

(declare-fun m!8059768 () Bool)

(assert (=> b!7455842 m!8059768))

(declare-fun m!8059770 () Bool)

(assert (=> b!7455842 m!8059770))

(declare-fun m!8059772 () Bool)

(assert (=> b!7455842 m!8059772))

(declare-fun m!8059774 () Bool)

(assert (=> b!7455842 m!8059774))

(declare-fun m!8059776 () Bool)

(assert (=> b!7455842 m!8059776))

(declare-fun m!8059778 () Bool)

(assert (=> b!7455842 m!8059778))

(assert (=> b!7455842 m!8059774))

(declare-fun m!8059780 () Bool)

(assert (=> b!7455842 m!8059780))

(declare-fun m!8059782 () Bool)

(assert (=> bm!684918 m!8059782))

(push 1)

(assert (not b!7455833))

(assert (not b!7455836))

(assert (not b!7455851))

(assert (not start!723600))

(assert (not b!7455832))

(assert (not bm!684918))

(assert (not b!7455852))

(assert (not b!7455847))

(assert (not b!7455848))

(assert (not b!7455835))

(assert (not bm!684919))

(assert (not b!7455846))

(assert (not b!7455850))

(assert (not b!7455853))

(assert (not b!7455854))

(assert (not b!7455849))

(assert (not b!7455838))

(assert tp_is_empty!49317)

(assert (not b!7455842))

(assert (not b!7455845))

(assert (not bm!684920))

(assert (not b!7455837))

(assert (not b!7455843))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!684932 () Bool)

(declare-fun call!684937 () Bool)

(declare-fun isEmpty!41115 (List!72230) Bool)

(assert (=> bm!684932 (= call!684937 (isEmpty!41115 (_2!37544 lt!2621529)))))

(declare-fun b!7455994 () Bool)

(declare-fun e!4450134 () Bool)

(declare-fun head!15299 (List!72230) C!39302)

(assert (=> b!7455994 (= e!4450134 (= (head!15299 (_2!37544 lt!2621529)) (c!1378480 rTail!78)))))

(declare-fun b!7455995 () Bool)

(declare-fun res!2990731 () Bool)

(assert (=> b!7455995 (=> (not res!2990731) (not e!4450134))))

(assert (=> b!7455995 (= res!2990731 (not call!684937))))

(declare-fun b!7455996 () Bool)

(declare-fun e!4450130 () Bool)

(declare-fun e!4450132 () Bool)

(assert (=> b!7455996 (= e!4450130 e!4450132)))

(declare-fun res!2990733 () Bool)

(assert (=> b!7455996 (=> res!2990733 e!4450132)))

(assert (=> b!7455996 (= res!2990733 call!684937)))

(declare-fun b!7455997 () Bool)

(declare-fun e!4450133 () Bool)

(declare-fun lt!2621634 () Bool)

(assert (=> b!7455997 (= e!4450133 (not lt!2621634))))

(declare-fun b!7455999 () Bool)

(declare-fun e!4450135 () Bool)

(declare-fun nullable!8500 (Regex!19514) Bool)

(assert (=> b!7455999 (= e!4450135 (nullable!8500 rTail!78))))

(declare-fun b!7456000 () Bool)

(assert (=> b!7456000 (= e!4450132 (not (= (head!15299 (_2!37544 lt!2621529)) (c!1378480 rTail!78))))))

(declare-fun b!7456001 () Bool)

(declare-fun derivativeStep!5559 (Regex!19514 C!39302) Regex!19514)

(declare-fun tail!14868 (List!72230) List!72230)

(assert (=> b!7456001 (= e!4450135 (matchR!9278 (derivativeStep!5559 rTail!78 (head!15299 (_2!37544 lt!2621529))) (tail!14868 (_2!37544 lt!2621529))))))

(declare-fun b!7456002 () Bool)

(declare-fun res!2990734 () Bool)

(declare-fun e!4450129 () Bool)

(assert (=> b!7456002 (=> res!2990734 e!4450129)))

(assert (=> b!7456002 (= res!2990734 e!4450134)))

(declare-fun res!2990735 () Bool)

(assert (=> b!7456002 (=> (not res!2990735) (not e!4450134))))

(assert (=> b!7456002 (= res!2990735 lt!2621634)))

(declare-fun b!7456003 () Bool)

(declare-fun e!4450131 () Bool)

(assert (=> b!7456003 (= e!4450131 e!4450133)))

(declare-fun c!1378499 () Bool)

(assert (=> b!7456003 (= c!1378499 (is-EmptyLang!19514 rTail!78))))

(declare-fun d!2297489 () Bool)

(assert (=> d!2297489 e!4450131))

(declare-fun c!1378500 () Bool)

(assert (=> d!2297489 (= c!1378500 (is-EmptyExpr!19514 rTail!78))))

(assert (=> d!2297489 (= lt!2621634 e!4450135)))

(declare-fun c!1378501 () Bool)

(assert (=> d!2297489 (= c!1378501 (isEmpty!41115 (_2!37544 lt!2621529)))))

(assert (=> d!2297489 (validRegex!10028 rTail!78)))

(assert (=> d!2297489 (= (matchR!9278 rTail!78 (_2!37544 lt!2621529)) lt!2621634)))

(declare-fun b!7455998 () Bool)

(declare-fun res!2990729 () Bool)

(assert (=> b!7455998 (=> (not res!2990729) (not e!4450134))))

(assert (=> b!7455998 (= res!2990729 (isEmpty!41115 (tail!14868 (_2!37544 lt!2621529))))))

(declare-fun b!7456004 () Bool)

(declare-fun res!2990730 () Bool)

(assert (=> b!7456004 (=> res!2990730 e!4450129)))

(assert (=> b!7456004 (= res!2990730 (not (is-ElementMatch!19514 rTail!78)))))

(assert (=> b!7456004 (= e!4450133 e!4450129)))

(declare-fun b!7456005 () Bool)

(assert (=> b!7456005 (= e!4450129 e!4450130)))

(declare-fun res!2990732 () Bool)

(assert (=> b!7456005 (=> (not res!2990732) (not e!4450130))))

(assert (=> b!7456005 (= res!2990732 (not lt!2621634))))

(declare-fun b!7456006 () Bool)

(declare-fun res!2990736 () Bool)

(assert (=> b!7456006 (=> res!2990736 e!4450132)))

(assert (=> b!7456006 (= res!2990736 (not (isEmpty!41115 (tail!14868 (_2!37544 lt!2621529)))))))

(declare-fun b!7456007 () Bool)

(assert (=> b!7456007 (= e!4450131 (= lt!2621634 call!684937))))

(assert (= (and d!2297489 c!1378501) b!7455999))

(assert (= (and d!2297489 (not c!1378501)) b!7456001))

(assert (= (and d!2297489 c!1378500) b!7456007))

(assert (= (and d!2297489 (not c!1378500)) b!7456003))

(assert (= (and b!7456003 c!1378499) b!7455997))

(assert (= (and b!7456003 (not c!1378499)) b!7456004))

(assert (= (and b!7456004 (not res!2990730)) b!7456002))

(assert (= (and b!7456002 res!2990735) b!7455995))

(assert (= (and b!7455995 res!2990731) b!7455998))

(assert (= (and b!7455998 res!2990729) b!7455994))

(assert (= (and b!7456002 (not res!2990734)) b!7456005))

(assert (= (and b!7456005 res!2990732) b!7455996))

(assert (= (and b!7455996 (not res!2990733)) b!7456006))

(assert (= (and b!7456006 (not res!2990736)) b!7456000))

(assert (= (or b!7456007 b!7455995 b!7455996) bm!684932))

(declare-fun m!8059860 () Bool)

(assert (=> b!7455998 m!8059860))

(assert (=> b!7455998 m!8059860))

(declare-fun m!8059862 () Bool)

(assert (=> b!7455998 m!8059862))

(declare-fun m!8059864 () Bool)

(assert (=> d!2297489 m!8059864))

(assert (=> d!2297489 m!8059712))

(declare-fun m!8059866 () Bool)

(assert (=> b!7456001 m!8059866))

(assert (=> b!7456001 m!8059866))

(declare-fun m!8059868 () Bool)

(assert (=> b!7456001 m!8059868))

(assert (=> b!7456001 m!8059860))

(assert (=> b!7456001 m!8059868))

(assert (=> b!7456001 m!8059860))

(declare-fun m!8059870 () Bool)

(assert (=> b!7456001 m!8059870))

(assert (=> b!7456000 m!8059866))

(assert (=> b!7456006 m!8059860))

(assert (=> b!7456006 m!8059860))

(assert (=> b!7456006 m!8059862))

(declare-fun m!8059872 () Bool)

(assert (=> b!7455999 m!8059872))

(assert (=> bm!684932 m!8059864))

(assert (=> b!7455994 m!8059866))

(assert (=> b!7455853 d!2297489))

(declare-fun bm!684933 () Bool)

(declare-fun call!684938 () Bool)

(assert (=> bm!684933 (= call!684938 (isEmpty!41115 (_1!37544 lt!2621529)))))

(declare-fun b!7456008 () Bool)

(declare-fun e!4450141 () Bool)

(assert (=> b!7456008 (= e!4450141 (= (head!15299 (_1!37544 lt!2621529)) (c!1378480 r2!5783)))))

(declare-fun b!7456009 () Bool)

(declare-fun res!2990739 () Bool)

(assert (=> b!7456009 (=> (not res!2990739) (not e!4450141))))

(assert (=> b!7456009 (= res!2990739 (not call!684938))))

(declare-fun b!7456010 () Bool)

(declare-fun e!4450137 () Bool)

(declare-fun e!4450139 () Bool)

(assert (=> b!7456010 (= e!4450137 e!4450139)))

(declare-fun res!2990741 () Bool)

(assert (=> b!7456010 (=> res!2990741 e!4450139)))

(assert (=> b!7456010 (= res!2990741 call!684938)))

(declare-fun b!7456011 () Bool)

(declare-fun e!4450140 () Bool)

(declare-fun lt!2621635 () Bool)

(assert (=> b!7456011 (= e!4450140 (not lt!2621635))))

(declare-fun b!7456013 () Bool)

(declare-fun e!4450142 () Bool)

(assert (=> b!7456013 (= e!4450142 (nullable!8500 r2!5783))))

(declare-fun b!7456014 () Bool)

(assert (=> b!7456014 (= e!4450139 (not (= (head!15299 (_1!37544 lt!2621529)) (c!1378480 r2!5783))))))

(declare-fun b!7456015 () Bool)

(assert (=> b!7456015 (= e!4450142 (matchR!9278 (derivativeStep!5559 r2!5783 (head!15299 (_1!37544 lt!2621529))) (tail!14868 (_1!37544 lt!2621529))))))

(declare-fun b!7456016 () Bool)

(declare-fun res!2990742 () Bool)

(declare-fun e!4450136 () Bool)

(assert (=> b!7456016 (=> res!2990742 e!4450136)))

(assert (=> b!7456016 (= res!2990742 e!4450141)))

(declare-fun res!2990743 () Bool)

(assert (=> b!7456016 (=> (not res!2990743) (not e!4450141))))

(assert (=> b!7456016 (= res!2990743 lt!2621635)))

(declare-fun b!7456017 () Bool)

(declare-fun e!4450138 () Bool)

(assert (=> b!7456017 (= e!4450138 e!4450140)))

(declare-fun c!1378502 () Bool)

(assert (=> b!7456017 (= c!1378502 (is-EmptyLang!19514 r2!5783))))

(declare-fun d!2297491 () Bool)

(assert (=> d!2297491 e!4450138))

(declare-fun c!1378503 () Bool)

(assert (=> d!2297491 (= c!1378503 (is-EmptyExpr!19514 r2!5783))))

(assert (=> d!2297491 (= lt!2621635 e!4450142)))

(declare-fun c!1378504 () Bool)

(assert (=> d!2297491 (= c!1378504 (isEmpty!41115 (_1!37544 lt!2621529)))))

(assert (=> d!2297491 (validRegex!10028 r2!5783)))

(assert (=> d!2297491 (= (matchR!9278 r2!5783 (_1!37544 lt!2621529)) lt!2621635)))

(declare-fun b!7456012 () Bool)

(declare-fun res!2990737 () Bool)

(assert (=> b!7456012 (=> (not res!2990737) (not e!4450141))))

(assert (=> b!7456012 (= res!2990737 (isEmpty!41115 (tail!14868 (_1!37544 lt!2621529))))))

(declare-fun b!7456018 () Bool)

(declare-fun res!2990738 () Bool)

(assert (=> b!7456018 (=> res!2990738 e!4450136)))

(assert (=> b!7456018 (= res!2990738 (not (is-ElementMatch!19514 r2!5783)))))

(assert (=> b!7456018 (= e!4450140 e!4450136)))

(declare-fun b!7456019 () Bool)

(assert (=> b!7456019 (= e!4450136 e!4450137)))

(declare-fun res!2990740 () Bool)

(assert (=> b!7456019 (=> (not res!2990740) (not e!4450137))))

(assert (=> b!7456019 (= res!2990740 (not lt!2621635))))

(declare-fun b!7456020 () Bool)

(declare-fun res!2990744 () Bool)

(assert (=> b!7456020 (=> res!2990744 e!4450139)))

(assert (=> b!7456020 (= res!2990744 (not (isEmpty!41115 (tail!14868 (_1!37544 lt!2621529)))))))

(declare-fun b!7456021 () Bool)

(assert (=> b!7456021 (= e!4450138 (= lt!2621635 call!684938))))

(assert (= (and d!2297491 c!1378504) b!7456013))

(assert (= (and d!2297491 (not c!1378504)) b!7456015))

(assert (= (and d!2297491 c!1378503) b!7456021))

(assert (= (and d!2297491 (not c!1378503)) b!7456017))

(assert (= (and b!7456017 c!1378502) b!7456011))

(assert (= (and b!7456017 (not c!1378502)) b!7456018))

(assert (= (and b!7456018 (not res!2990738)) b!7456016))

(assert (= (and b!7456016 res!2990743) b!7456009))

(assert (= (and b!7456009 res!2990739) b!7456012))

(assert (= (and b!7456012 res!2990737) b!7456008))

(assert (= (and b!7456016 (not res!2990742)) b!7456019))

(assert (= (and b!7456019 res!2990740) b!7456010))

(assert (= (and b!7456010 (not res!2990741)) b!7456020))

(assert (= (and b!7456020 (not res!2990744)) b!7456014))

(assert (= (or b!7456021 b!7456009 b!7456010) bm!684933))

(declare-fun m!8059874 () Bool)

(assert (=> b!7456012 m!8059874))

(assert (=> b!7456012 m!8059874))

(declare-fun m!8059876 () Bool)

(assert (=> b!7456012 m!8059876))

(declare-fun m!8059878 () Bool)

(assert (=> d!2297491 m!8059878))

(assert (=> d!2297491 m!8059716))

(declare-fun m!8059880 () Bool)

(assert (=> b!7456015 m!8059880))

(assert (=> b!7456015 m!8059880))

(declare-fun m!8059882 () Bool)

(assert (=> b!7456015 m!8059882))

(assert (=> b!7456015 m!8059874))

(assert (=> b!7456015 m!8059882))

(assert (=> b!7456015 m!8059874))

(declare-fun m!8059884 () Bool)

(assert (=> b!7456015 m!8059884))

(assert (=> b!7456014 m!8059880))

(assert (=> b!7456020 m!8059874))

(assert (=> b!7456020 m!8059874))

(assert (=> b!7456020 m!8059876))

(declare-fun m!8059886 () Bool)

(assert (=> b!7456013 m!8059886))

(assert (=> bm!684933 m!8059878))

(assert (=> b!7456008 m!8059880))

(assert (=> b!7455833 d!2297491))

(declare-fun bs!1928170 () Bool)

(declare-fun b!7456069 () Bool)

(assert (= bs!1928170 (and b!7456069 b!7455842)))

(declare-fun lambda!461280 () Int)

(assert (=> bs!1928170 (not (= lambda!461280 lambda!461262))))

(assert (=> bs!1928170 (not (= lambda!461280 lambda!461263))))

(assert (=> b!7456069 true))

(assert (=> b!7456069 true))

(declare-fun bs!1928171 () Bool)

(declare-fun b!7456071 () Bool)

(assert (= bs!1928171 (and b!7456071 b!7455842)))

(declare-fun lambda!461281 () Int)

(assert (=> bs!1928171 (not (= lambda!461281 lambda!461262))))

(assert (=> bs!1928171 (= (and (= (_1!37544 lt!2621529) s!13591) (= (regOne!39540 lt!2621553) lt!2621553) (= (regTwo!39540 lt!2621553) rTail!78)) (= lambda!461281 lambda!461263))))

(declare-fun bs!1928172 () Bool)

(assert (= bs!1928172 (and b!7456071 b!7456069)))

(assert (=> bs!1928172 (not (= lambda!461281 lambda!461280))))

(assert (=> b!7456071 true))

(assert (=> b!7456071 true))

(declare-fun b!7456064 () Bool)

(declare-fun e!4450171 () Bool)

(declare-fun e!4450168 () Bool)

(assert (=> b!7456064 (= e!4450171 e!4450168)))

(declare-fun res!2990773 () Bool)

(assert (=> b!7456064 (= res!2990773 (not (is-EmptyLang!19514 lt!2621553)))))

(assert (=> b!7456064 (=> (not res!2990773) (not e!4450168))))

(declare-fun c!1378516 () Bool)

(declare-fun call!684947 () Bool)

(declare-fun bm!684942 () Bool)

(assert (=> bm!684942 (= call!684947 (Exists!4135 (ite c!1378516 lambda!461280 lambda!461281)))))

(declare-fun b!7456065 () Bool)

(declare-fun call!684948 () Bool)

(assert (=> b!7456065 (= e!4450171 call!684948)))

(declare-fun b!7456066 () Bool)

(declare-fun e!4450169 () Bool)

(declare-fun e!4450165 () Bool)

(assert (=> b!7456066 (= e!4450169 e!4450165)))

(assert (=> b!7456066 (= c!1378516 (is-Star!19514 lt!2621553))))

(declare-fun b!7456067 () Bool)

(declare-fun c!1378513 () Bool)

(assert (=> b!7456067 (= c!1378513 (is-Union!19514 lt!2621553))))

(declare-fun e!4450167 () Bool)

(assert (=> b!7456067 (= e!4450167 e!4450169)))

(declare-fun d!2297493 () Bool)

(declare-fun c!1378514 () Bool)

(assert (=> d!2297493 (= c!1378514 (is-EmptyExpr!19514 lt!2621553))))

(assert (=> d!2297493 (= (matchRSpec!4193 lt!2621553 (_1!37544 lt!2621529)) e!4450171)))

(declare-fun b!7456068 () Bool)

(assert (=> b!7456068 (= e!4450167 (= (_1!37544 lt!2621529) (Cons!72106 (c!1378480 lt!2621553) Nil!72106)))))

(declare-fun e!4450166 () Bool)

(assert (=> b!7456069 (= e!4450166 call!684947)))

(declare-fun b!7456070 () Bool)

(declare-fun res!2990771 () Bool)

(assert (=> b!7456070 (=> res!2990771 e!4450166)))

(assert (=> b!7456070 (= res!2990771 call!684948)))

(assert (=> b!7456070 (= e!4450165 e!4450166)))

(assert (=> b!7456071 (= e!4450165 call!684947)))

(declare-fun b!7456072 () Bool)

(declare-fun e!4450170 () Bool)

(assert (=> b!7456072 (= e!4450169 e!4450170)))

(declare-fun res!2990772 () Bool)

(assert (=> b!7456072 (= res!2990772 (matchRSpec!4193 (regOne!39541 lt!2621553) (_1!37544 lt!2621529)))))

(assert (=> b!7456072 (=> res!2990772 e!4450170)))

(declare-fun b!7456073 () Bool)

(assert (=> b!7456073 (= e!4450170 (matchRSpec!4193 (regTwo!39541 lt!2621553) (_1!37544 lt!2621529)))))

(declare-fun bm!684943 () Bool)

(assert (=> bm!684943 (= call!684948 (isEmpty!41115 (_1!37544 lt!2621529)))))

(declare-fun b!7456074 () Bool)

(declare-fun c!1378515 () Bool)

(assert (=> b!7456074 (= c!1378515 (is-ElementMatch!19514 lt!2621553))))

(assert (=> b!7456074 (= e!4450168 e!4450167)))

(assert (= (and d!2297493 c!1378514) b!7456065))

(assert (= (and d!2297493 (not c!1378514)) b!7456064))

(assert (= (and b!7456064 res!2990773) b!7456074))

(assert (= (and b!7456074 c!1378515) b!7456068))

(assert (= (and b!7456074 (not c!1378515)) b!7456067))

(assert (= (and b!7456067 c!1378513) b!7456072))

(assert (= (and b!7456067 (not c!1378513)) b!7456066))

(assert (= (and b!7456072 (not res!2990772)) b!7456073))

(assert (= (and b!7456066 c!1378516) b!7456070))

(assert (= (and b!7456066 (not c!1378516)) b!7456071))

(assert (= (and b!7456070 (not res!2990771)) b!7456069))

(assert (= (or b!7456069 b!7456071) bm!684942))

(assert (= (or b!7456065 b!7456070) bm!684943))

(declare-fun m!8059888 () Bool)

(assert (=> bm!684942 m!8059888))

(declare-fun m!8059890 () Bool)

(assert (=> b!7456072 m!8059890))

(declare-fun m!8059892 () Bool)

(assert (=> b!7456073 m!8059892))

(assert (=> bm!684943 m!8059878))

(assert (=> b!7455833 d!2297493))

(declare-fun d!2297495 () Bool)

(assert (=> d!2297495 (= (matchR!9278 r1!5845 (_1!37544 lt!2621529)) (matchRSpec!4193 r1!5845 (_1!37544 lt!2621529)))))

(declare-fun lt!2621638 () Unit!165863)

(declare-fun choose!57628 (Regex!19514 List!72230) Unit!165863)

(assert (=> d!2297495 (= lt!2621638 (choose!57628 r1!5845 (_1!37544 lt!2621529)))))

(assert (=> d!2297495 (validRegex!10028 r1!5845)))

(assert (=> d!2297495 (= (mainMatchTheorem!4187 r1!5845 (_1!37544 lt!2621529)) lt!2621638)))

(declare-fun bs!1928173 () Bool)

(assert (= bs!1928173 d!2297495))

(assert (=> bs!1928173 m!8059738))

(assert (=> bs!1928173 m!8059734))

(declare-fun m!8059894 () Bool)

(assert (=> bs!1928173 m!8059894))

(assert (=> bs!1928173 m!8059718))

(assert (=> b!7455833 d!2297495))

(declare-fun bm!684946 () Bool)

(declare-fun call!684951 () Bool)

(assert (=> bm!684946 (= call!684951 (isEmpty!41115 (_1!37544 lt!2621529)))))

(declare-fun b!7456086 () Bool)

(declare-fun e!4450184 () Bool)

(assert (=> b!7456086 (= e!4450184 (= (head!15299 (_1!37544 lt!2621529)) (c!1378480 r1!5845)))))

(declare-fun b!7456087 () Bool)

(declare-fun res!2990779 () Bool)

(assert (=> b!7456087 (=> (not res!2990779) (not e!4450184))))

(assert (=> b!7456087 (= res!2990779 (not call!684951))))

(declare-fun b!7456088 () Bool)

(declare-fun e!4450180 () Bool)

(declare-fun e!4450182 () Bool)

(assert (=> b!7456088 (= e!4450180 e!4450182)))

(declare-fun res!2990781 () Bool)

(assert (=> b!7456088 (=> res!2990781 e!4450182)))

(assert (=> b!7456088 (= res!2990781 call!684951)))

(declare-fun b!7456089 () Bool)

(declare-fun e!4450183 () Bool)

(declare-fun lt!2621639 () Bool)

(assert (=> b!7456089 (= e!4450183 (not lt!2621639))))

(declare-fun b!7456091 () Bool)

(declare-fun e!4450185 () Bool)

(assert (=> b!7456091 (= e!4450185 (nullable!8500 r1!5845))))

(declare-fun b!7456092 () Bool)

(assert (=> b!7456092 (= e!4450182 (not (= (head!15299 (_1!37544 lt!2621529)) (c!1378480 r1!5845))))))

(declare-fun b!7456093 () Bool)

(assert (=> b!7456093 (= e!4450185 (matchR!9278 (derivativeStep!5559 r1!5845 (head!15299 (_1!37544 lt!2621529))) (tail!14868 (_1!37544 lt!2621529))))))

(declare-fun b!7456094 () Bool)

(declare-fun res!2990782 () Bool)

(declare-fun e!4450179 () Bool)

(assert (=> b!7456094 (=> res!2990782 e!4450179)))

(assert (=> b!7456094 (= res!2990782 e!4450184)))

(declare-fun res!2990783 () Bool)

(assert (=> b!7456094 (=> (not res!2990783) (not e!4450184))))

(assert (=> b!7456094 (= res!2990783 lt!2621639)))

(declare-fun b!7456095 () Bool)

(declare-fun e!4450181 () Bool)

(assert (=> b!7456095 (= e!4450181 e!4450183)))

(declare-fun c!1378521 () Bool)

(assert (=> b!7456095 (= c!1378521 (is-EmptyLang!19514 r1!5845))))

(declare-fun d!2297497 () Bool)

(assert (=> d!2297497 e!4450181))

(declare-fun c!1378522 () Bool)

(assert (=> d!2297497 (= c!1378522 (is-EmptyExpr!19514 r1!5845))))

(assert (=> d!2297497 (= lt!2621639 e!4450185)))

(declare-fun c!1378523 () Bool)

(assert (=> d!2297497 (= c!1378523 (isEmpty!41115 (_1!37544 lt!2621529)))))

(assert (=> d!2297497 (validRegex!10028 r1!5845)))

(assert (=> d!2297497 (= (matchR!9278 r1!5845 (_1!37544 lt!2621529)) lt!2621639)))

(declare-fun b!7456090 () Bool)

(declare-fun res!2990777 () Bool)

(assert (=> b!7456090 (=> (not res!2990777) (not e!4450184))))

(assert (=> b!7456090 (= res!2990777 (isEmpty!41115 (tail!14868 (_1!37544 lt!2621529))))))

(declare-fun b!7456096 () Bool)

(declare-fun res!2990778 () Bool)

(assert (=> b!7456096 (=> res!2990778 e!4450179)))

(assert (=> b!7456096 (= res!2990778 (not (is-ElementMatch!19514 r1!5845)))))

(assert (=> b!7456096 (= e!4450183 e!4450179)))

(declare-fun b!7456097 () Bool)

(assert (=> b!7456097 (= e!4450179 e!4450180)))

(declare-fun res!2990780 () Bool)

(assert (=> b!7456097 (=> (not res!2990780) (not e!4450180))))

(assert (=> b!7456097 (= res!2990780 (not lt!2621639))))

(declare-fun b!7456098 () Bool)

(declare-fun res!2990784 () Bool)

(assert (=> b!7456098 (=> res!2990784 e!4450182)))

(assert (=> b!7456098 (= res!2990784 (not (isEmpty!41115 (tail!14868 (_1!37544 lt!2621529)))))))

(declare-fun b!7456099 () Bool)

(assert (=> b!7456099 (= e!4450181 (= lt!2621639 call!684951))))

(assert (= (and d!2297497 c!1378523) b!7456091))

(assert (= (and d!2297497 (not c!1378523)) b!7456093))

(assert (= (and d!2297497 c!1378522) b!7456099))

(assert (= (and d!2297497 (not c!1378522)) b!7456095))

(assert (= (and b!7456095 c!1378521) b!7456089))

(assert (= (and b!7456095 (not c!1378521)) b!7456096))

(assert (= (and b!7456096 (not res!2990778)) b!7456094))

(assert (= (and b!7456094 res!2990783) b!7456087))

(assert (= (and b!7456087 res!2990779) b!7456090))

(assert (= (and b!7456090 res!2990777) b!7456086))

(assert (= (and b!7456094 (not res!2990782)) b!7456097))

(assert (= (and b!7456097 res!2990780) b!7456088))

(assert (= (and b!7456088 (not res!2990781)) b!7456098))

(assert (= (and b!7456098 (not res!2990784)) b!7456092))

(assert (= (or b!7456099 b!7456087 b!7456088) bm!684946))

(assert (=> b!7456090 m!8059874))

(assert (=> b!7456090 m!8059874))

(assert (=> b!7456090 m!8059876))

(assert (=> d!2297497 m!8059878))

(assert (=> d!2297497 m!8059718))

(assert (=> b!7456093 m!8059880))

(assert (=> b!7456093 m!8059880))

(declare-fun m!8059896 () Bool)

(assert (=> b!7456093 m!8059896))

(assert (=> b!7456093 m!8059874))

(assert (=> b!7456093 m!8059896))

(assert (=> b!7456093 m!8059874))

(declare-fun m!8059898 () Bool)

(assert (=> b!7456093 m!8059898))

(assert (=> b!7456092 m!8059880))

(assert (=> b!7456098 m!8059874))

(assert (=> b!7456098 m!8059874))

(assert (=> b!7456098 m!8059876))

(declare-fun m!8059900 () Bool)

(assert (=> b!7456091 m!8059900))

(assert (=> bm!684946 m!8059878))

(assert (=> b!7456086 m!8059880))

(assert (=> b!7455833 d!2297497))

(declare-fun bs!1928175 () Bool)

(declare-fun b!7456105 () Bool)

(assert (= bs!1928175 (and b!7456105 b!7455842)))

(declare-fun lambda!461283 () Int)

(assert (=> bs!1928175 (not (= lambda!461283 lambda!461262))))

(assert (=> bs!1928175 (not (= lambda!461283 lambda!461263))))

(declare-fun bs!1928176 () Bool)

(assert (= bs!1928176 (and b!7456105 b!7456069)))

(assert (=> bs!1928176 (= (and (= (reg!19843 r1!5845) (reg!19843 lt!2621553)) (= r1!5845 lt!2621553)) (= lambda!461283 lambda!461280))))

(declare-fun bs!1928177 () Bool)

(assert (= bs!1928177 (and b!7456105 b!7456071)))

(assert (=> bs!1928177 (not (= lambda!461283 lambda!461281))))

(assert (=> b!7456105 true))

(assert (=> b!7456105 true))

(declare-fun bs!1928178 () Bool)

(declare-fun b!7456107 () Bool)

(assert (= bs!1928178 (and b!7456107 b!7455842)))

(declare-fun lambda!461285 () Int)

(assert (=> bs!1928178 (not (= lambda!461285 lambda!461262))))

(assert (=> bs!1928178 (= (and (= (_1!37544 lt!2621529) s!13591) (= (regOne!39540 r1!5845) lt!2621553) (= (regTwo!39540 r1!5845) rTail!78)) (= lambda!461285 lambda!461263))))

(declare-fun bs!1928180 () Bool)

(assert (= bs!1928180 (and b!7456107 b!7456105)))

(assert (=> bs!1928180 (not (= lambda!461285 lambda!461283))))

(declare-fun bs!1928181 () Bool)

(assert (= bs!1928181 (and b!7456107 b!7456069)))

(assert (=> bs!1928181 (not (= lambda!461285 lambda!461280))))

(declare-fun bs!1928182 () Bool)

(assert (= bs!1928182 (and b!7456107 b!7456071)))

(assert (=> bs!1928182 (= (and (= (regOne!39540 r1!5845) (regOne!39540 lt!2621553)) (= (regTwo!39540 r1!5845) (regTwo!39540 lt!2621553))) (= lambda!461285 lambda!461281))))

(assert (=> b!7456107 true))

(assert (=> b!7456107 true))

(declare-fun b!7456100 () Bool)

(declare-fun e!4450192 () Bool)

(declare-fun e!4450189 () Bool)

(assert (=> b!7456100 (= e!4450192 e!4450189)))

(declare-fun res!2990787 () Bool)

(assert (=> b!7456100 (= res!2990787 (not (is-EmptyLang!19514 r1!5845)))))

(assert (=> b!7456100 (=> (not res!2990787) (not e!4450189))))

(declare-fun bm!684947 () Bool)

(declare-fun call!684952 () Bool)

(declare-fun c!1378527 () Bool)

(assert (=> bm!684947 (= call!684952 (Exists!4135 (ite c!1378527 lambda!461283 lambda!461285)))))

(declare-fun b!7456101 () Bool)

(declare-fun call!684953 () Bool)

(assert (=> b!7456101 (= e!4450192 call!684953)))

(declare-fun b!7456102 () Bool)

(declare-fun e!4450190 () Bool)

(declare-fun e!4450186 () Bool)

(assert (=> b!7456102 (= e!4450190 e!4450186)))

(assert (=> b!7456102 (= c!1378527 (is-Star!19514 r1!5845))))

(declare-fun b!7456103 () Bool)

(declare-fun c!1378524 () Bool)

(assert (=> b!7456103 (= c!1378524 (is-Union!19514 r1!5845))))

(declare-fun e!4450188 () Bool)

(assert (=> b!7456103 (= e!4450188 e!4450190)))

(declare-fun d!2297499 () Bool)

(declare-fun c!1378525 () Bool)

(assert (=> d!2297499 (= c!1378525 (is-EmptyExpr!19514 r1!5845))))

(assert (=> d!2297499 (= (matchRSpec!4193 r1!5845 (_1!37544 lt!2621529)) e!4450192)))

(declare-fun b!7456104 () Bool)

(assert (=> b!7456104 (= e!4450188 (= (_1!37544 lt!2621529) (Cons!72106 (c!1378480 r1!5845) Nil!72106)))))

(declare-fun e!4450187 () Bool)

(assert (=> b!7456105 (= e!4450187 call!684952)))

(declare-fun b!7456106 () Bool)

(declare-fun res!2990785 () Bool)

(assert (=> b!7456106 (=> res!2990785 e!4450187)))

(assert (=> b!7456106 (= res!2990785 call!684953)))

(assert (=> b!7456106 (= e!4450186 e!4450187)))

(assert (=> b!7456107 (= e!4450186 call!684952)))

(declare-fun b!7456108 () Bool)

(declare-fun e!4450191 () Bool)

(assert (=> b!7456108 (= e!4450190 e!4450191)))

(declare-fun res!2990786 () Bool)

(assert (=> b!7456108 (= res!2990786 (matchRSpec!4193 (regOne!39541 r1!5845) (_1!37544 lt!2621529)))))

(assert (=> b!7456108 (=> res!2990786 e!4450191)))

(declare-fun b!7456109 () Bool)

(assert (=> b!7456109 (= e!4450191 (matchRSpec!4193 (regTwo!39541 r1!5845) (_1!37544 lt!2621529)))))

(declare-fun bm!684948 () Bool)

(assert (=> bm!684948 (= call!684953 (isEmpty!41115 (_1!37544 lt!2621529)))))

(declare-fun b!7456110 () Bool)

(declare-fun c!1378526 () Bool)

(assert (=> b!7456110 (= c!1378526 (is-ElementMatch!19514 r1!5845))))

(assert (=> b!7456110 (= e!4450189 e!4450188)))

(assert (= (and d!2297499 c!1378525) b!7456101))

(assert (= (and d!2297499 (not c!1378525)) b!7456100))

(assert (= (and b!7456100 res!2990787) b!7456110))

(assert (= (and b!7456110 c!1378526) b!7456104))

(assert (= (and b!7456110 (not c!1378526)) b!7456103))

(assert (= (and b!7456103 c!1378524) b!7456108))

(assert (= (and b!7456103 (not c!1378524)) b!7456102))

(assert (= (and b!7456108 (not res!2990786)) b!7456109))

(assert (= (and b!7456102 c!1378527) b!7456106))

(assert (= (and b!7456102 (not c!1378527)) b!7456107))

(assert (= (and b!7456106 (not res!2990785)) b!7456105))

(assert (= (or b!7456105 b!7456107) bm!684947))

(assert (= (or b!7456101 b!7456106) bm!684948))

(declare-fun m!8059902 () Bool)

(assert (=> bm!684947 m!8059902))

(declare-fun m!8059904 () Bool)

(assert (=> b!7456108 m!8059904))

(declare-fun m!8059906 () Bool)

(assert (=> b!7456109 m!8059906))

(assert (=> bm!684948 m!8059878))

(assert (=> b!7455833 d!2297499))

(declare-fun d!2297501 () Bool)

(assert (=> d!2297501 (= (matchR!9278 rTail!78 (_2!37544 lt!2621529)) (matchRSpec!4193 rTail!78 (_2!37544 lt!2621529)))))

(declare-fun lt!2621640 () Unit!165863)

(assert (=> d!2297501 (= lt!2621640 (choose!57628 rTail!78 (_2!37544 lt!2621529)))))

(assert (=> d!2297501 (validRegex!10028 rTail!78)))

(assert (=> d!2297501 (= (mainMatchTheorem!4187 rTail!78 (_2!37544 lt!2621529)) lt!2621640)))

(declare-fun bs!1928184 () Bool)

(assert (= bs!1928184 d!2297501))

(assert (=> bs!1928184 m!8059708))

(assert (=> bs!1928184 m!8059726))

(declare-fun m!8059908 () Bool)

(assert (=> bs!1928184 m!8059908))

(assert (=> bs!1928184 m!8059712))

(assert (=> b!7455833 d!2297501))

(declare-fun d!2297503 () Bool)

(assert (=> d!2297503 (= (matchR!9278 lt!2621553 (_1!37544 lt!2621529)) (matchRSpec!4193 lt!2621553 (_1!37544 lt!2621529)))))

(declare-fun lt!2621641 () Unit!165863)

(assert (=> d!2297503 (= lt!2621641 (choose!57628 lt!2621553 (_1!37544 lt!2621529)))))

(assert (=> d!2297503 (validRegex!10028 lt!2621553)))

(assert (=> d!2297503 (= (mainMatchTheorem!4187 lt!2621553 (_1!37544 lt!2621529)) lt!2621641)))

(declare-fun bs!1928185 () Bool)

(assert (= bs!1928185 d!2297503))

(assert (=> bs!1928185 m!8059780))

(assert (=> bs!1928185 m!8059728))

(declare-fun m!8059910 () Bool)

(assert (=> bs!1928185 m!8059910))

(declare-fun m!8059912 () Bool)

(assert (=> bs!1928185 m!8059912))

(assert (=> b!7455833 d!2297503))

(declare-fun bs!1928186 () Bool)

(declare-fun b!7456116 () Bool)

(assert (= bs!1928186 (and b!7456116 b!7455842)))

(declare-fun lambda!461286 () Int)

(assert (=> bs!1928186 (not (= lambda!461286 lambda!461262))))

(assert (=> bs!1928186 (not (= lambda!461286 lambda!461263))))

(declare-fun bs!1928187 () Bool)

(assert (= bs!1928187 (and b!7456116 b!7456107)))

(assert (=> bs!1928187 (not (= lambda!461286 lambda!461285))))

(declare-fun bs!1928188 () Bool)

(assert (= bs!1928188 (and b!7456116 b!7456105)))

(assert (=> bs!1928188 (= (and (= (reg!19843 r2!5783) (reg!19843 r1!5845)) (= r2!5783 r1!5845)) (= lambda!461286 lambda!461283))))

(declare-fun bs!1928189 () Bool)

(assert (= bs!1928189 (and b!7456116 b!7456069)))

(assert (=> bs!1928189 (= (and (= (reg!19843 r2!5783) (reg!19843 lt!2621553)) (= r2!5783 lt!2621553)) (= lambda!461286 lambda!461280))))

(declare-fun bs!1928190 () Bool)

(assert (= bs!1928190 (and b!7456116 b!7456071)))

(assert (=> bs!1928190 (not (= lambda!461286 lambda!461281))))

(assert (=> b!7456116 true))

(assert (=> b!7456116 true))

(declare-fun bs!1928191 () Bool)

(declare-fun b!7456118 () Bool)

(assert (= bs!1928191 (and b!7456118 b!7455842)))

(declare-fun lambda!461287 () Int)

(assert (=> bs!1928191 (not (= lambda!461287 lambda!461262))))

(assert (=> bs!1928191 (= (and (= (_1!37544 lt!2621529) s!13591) (= (regOne!39540 r2!5783) lt!2621553) (= (regTwo!39540 r2!5783) rTail!78)) (= lambda!461287 lambda!461263))))

(declare-fun bs!1928192 () Bool)

(assert (= bs!1928192 (and b!7456118 b!7456107)))

(assert (=> bs!1928192 (= (and (= (regOne!39540 r2!5783) (regOne!39540 r1!5845)) (= (regTwo!39540 r2!5783) (regTwo!39540 r1!5845))) (= lambda!461287 lambda!461285))))

(declare-fun bs!1928193 () Bool)

(assert (= bs!1928193 (and b!7456118 b!7456105)))

(assert (=> bs!1928193 (not (= lambda!461287 lambda!461283))))

(declare-fun bs!1928194 () Bool)

(assert (= bs!1928194 (and b!7456118 b!7456116)))

(assert (=> bs!1928194 (not (= lambda!461287 lambda!461286))))

(declare-fun bs!1928195 () Bool)

(assert (= bs!1928195 (and b!7456118 b!7456069)))

(assert (=> bs!1928195 (not (= lambda!461287 lambda!461280))))

(declare-fun bs!1928196 () Bool)

(assert (= bs!1928196 (and b!7456118 b!7456071)))

(assert (=> bs!1928196 (= (and (= (regOne!39540 r2!5783) (regOne!39540 lt!2621553)) (= (regTwo!39540 r2!5783) (regTwo!39540 lt!2621553))) (= lambda!461287 lambda!461281))))

(assert (=> b!7456118 true))

(assert (=> b!7456118 true))

(declare-fun b!7456111 () Bool)

(declare-fun e!4450199 () Bool)

(declare-fun e!4450196 () Bool)

(assert (=> b!7456111 (= e!4450199 e!4450196)))

(declare-fun res!2990790 () Bool)

(assert (=> b!7456111 (= res!2990790 (not (is-EmptyLang!19514 r2!5783)))))

(assert (=> b!7456111 (=> (not res!2990790) (not e!4450196))))

(declare-fun c!1378531 () Bool)

(declare-fun call!684954 () Bool)

(declare-fun bm!684949 () Bool)

(assert (=> bm!684949 (= call!684954 (Exists!4135 (ite c!1378531 lambda!461286 lambda!461287)))))

(declare-fun b!7456112 () Bool)

(declare-fun call!684955 () Bool)

(assert (=> b!7456112 (= e!4450199 call!684955)))

(declare-fun b!7456113 () Bool)

(declare-fun e!4450197 () Bool)

(declare-fun e!4450193 () Bool)

(assert (=> b!7456113 (= e!4450197 e!4450193)))

(assert (=> b!7456113 (= c!1378531 (is-Star!19514 r2!5783))))

(declare-fun b!7456114 () Bool)

(declare-fun c!1378528 () Bool)

(assert (=> b!7456114 (= c!1378528 (is-Union!19514 r2!5783))))

(declare-fun e!4450195 () Bool)

(assert (=> b!7456114 (= e!4450195 e!4450197)))

(declare-fun d!2297505 () Bool)

(declare-fun c!1378529 () Bool)

(assert (=> d!2297505 (= c!1378529 (is-EmptyExpr!19514 r2!5783))))

(assert (=> d!2297505 (= (matchRSpec!4193 r2!5783 (_1!37544 lt!2621529)) e!4450199)))

(declare-fun b!7456115 () Bool)

(assert (=> b!7456115 (= e!4450195 (= (_1!37544 lt!2621529) (Cons!72106 (c!1378480 r2!5783) Nil!72106)))))

(declare-fun e!4450194 () Bool)

(assert (=> b!7456116 (= e!4450194 call!684954)))

(declare-fun b!7456117 () Bool)

(declare-fun res!2990788 () Bool)

(assert (=> b!7456117 (=> res!2990788 e!4450194)))

(assert (=> b!7456117 (= res!2990788 call!684955)))

(assert (=> b!7456117 (= e!4450193 e!4450194)))

(assert (=> b!7456118 (= e!4450193 call!684954)))

(declare-fun b!7456119 () Bool)

(declare-fun e!4450198 () Bool)

(assert (=> b!7456119 (= e!4450197 e!4450198)))

(declare-fun res!2990789 () Bool)

(assert (=> b!7456119 (= res!2990789 (matchRSpec!4193 (regOne!39541 r2!5783) (_1!37544 lt!2621529)))))

(assert (=> b!7456119 (=> res!2990789 e!4450198)))

(declare-fun b!7456120 () Bool)

(assert (=> b!7456120 (= e!4450198 (matchRSpec!4193 (regTwo!39541 r2!5783) (_1!37544 lt!2621529)))))

(declare-fun bm!684950 () Bool)

(assert (=> bm!684950 (= call!684955 (isEmpty!41115 (_1!37544 lt!2621529)))))

(declare-fun b!7456121 () Bool)

(declare-fun c!1378530 () Bool)

(assert (=> b!7456121 (= c!1378530 (is-ElementMatch!19514 r2!5783))))

(assert (=> b!7456121 (= e!4450196 e!4450195)))

(assert (= (and d!2297505 c!1378529) b!7456112))

(assert (= (and d!2297505 (not c!1378529)) b!7456111))

(assert (= (and b!7456111 res!2990790) b!7456121))

(assert (= (and b!7456121 c!1378530) b!7456115))

(assert (= (and b!7456121 (not c!1378530)) b!7456114))

(assert (= (and b!7456114 c!1378528) b!7456119))

(assert (= (and b!7456114 (not c!1378528)) b!7456113))

(assert (= (and b!7456119 (not res!2990789)) b!7456120))

(assert (= (and b!7456113 c!1378531) b!7456117))

(assert (= (and b!7456113 (not c!1378531)) b!7456118))

(assert (= (and b!7456117 (not res!2990788)) b!7456116))

(assert (= (or b!7456116 b!7456118) bm!684949))

(assert (= (or b!7456112 b!7456117) bm!684950))

(declare-fun m!8059922 () Bool)

(assert (=> bm!684949 m!8059922))

(declare-fun m!8059924 () Bool)

(assert (=> b!7456119 m!8059924))

(declare-fun m!8059926 () Bool)

(assert (=> b!7456120 m!8059926))

(assert (=> bm!684950 m!8059878))

(assert (=> b!7455833 d!2297505))

(declare-fun bs!1928197 () Bool)

(declare-fun b!7456127 () Bool)

(assert (= bs!1928197 (and b!7456127 b!7455842)))

(declare-fun lambda!461288 () Int)

(assert (=> bs!1928197 (not (= lambda!461288 lambda!461262))))

(declare-fun bs!1928198 () Bool)

(assert (= bs!1928198 (and b!7456127 b!7456118)))

(assert (=> bs!1928198 (not (= lambda!461288 lambda!461287))))

(assert (=> bs!1928197 (not (= lambda!461288 lambda!461263))))

(declare-fun bs!1928199 () Bool)

(assert (= bs!1928199 (and b!7456127 b!7456107)))

(assert (=> bs!1928199 (not (= lambda!461288 lambda!461285))))

(declare-fun bs!1928200 () Bool)

(assert (= bs!1928200 (and b!7456127 b!7456105)))

(assert (=> bs!1928200 (= (and (= (_2!37544 lt!2621529) (_1!37544 lt!2621529)) (= (reg!19843 rTail!78) (reg!19843 r1!5845)) (= rTail!78 r1!5845)) (= lambda!461288 lambda!461283))))

(declare-fun bs!1928201 () Bool)

(assert (= bs!1928201 (and b!7456127 b!7456116)))

(assert (=> bs!1928201 (= (and (= (_2!37544 lt!2621529) (_1!37544 lt!2621529)) (= (reg!19843 rTail!78) (reg!19843 r2!5783)) (= rTail!78 r2!5783)) (= lambda!461288 lambda!461286))))

(declare-fun bs!1928202 () Bool)

(assert (= bs!1928202 (and b!7456127 b!7456069)))

(assert (=> bs!1928202 (= (and (= (_2!37544 lt!2621529) (_1!37544 lt!2621529)) (= (reg!19843 rTail!78) (reg!19843 lt!2621553)) (= rTail!78 lt!2621553)) (= lambda!461288 lambda!461280))))

(declare-fun bs!1928203 () Bool)

(assert (= bs!1928203 (and b!7456127 b!7456071)))

(assert (=> bs!1928203 (not (= lambda!461288 lambda!461281))))

(assert (=> b!7456127 true))

(assert (=> b!7456127 true))

(declare-fun bs!1928204 () Bool)

(declare-fun b!7456129 () Bool)

(assert (= bs!1928204 (and b!7456129 b!7455842)))

(declare-fun lambda!461289 () Int)

(assert (=> bs!1928204 (not (= lambda!461289 lambda!461262))))

(declare-fun bs!1928205 () Bool)

(assert (= bs!1928205 (and b!7456129 b!7456118)))

(assert (=> bs!1928205 (= (and (= (_2!37544 lt!2621529) (_1!37544 lt!2621529)) (= (regOne!39540 rTail!78) (regOne!39540 r2!5783)) (= (regTwo!39540 rTail!78) (regTwo!39540 r2!5783))) (= lambda!461289 lambda!461287))))

(declare-fun bs!1928206 () Bool)

(assert (= bs!1928206 (and b!7456129 b!7456127)))

(assert (=> bs!1928206 (not (= lambda!461289 lambda!461288))))

(assert (=> bs!1928204 (= (and (= (_2!37544 lt!2621529) s!13591) (= (regOne!39540 rTail!78) lt!2621553) (= (regTwo!39540 rTail!78) rTail!78)) (= lambda!461289 lambda!461263))))

(declare-fun bs!1928207 () Bool)

(assert (= bs!1928207 (and b!7456129 b!7456107)))

(assert (=> bs!1928207 (= (and (= (_2!37544 lt!2621529) (_1!37544 lt!2621529)) (= (regOne!39540 rTail!78) (regOne!39540 r1!5845)) (= (regTwo!39540 rTail!78) (regTwo!39540 r1!5845))) (= lambda!461289 lambda!461285))))

(declare-fun bs!1928208 () Bool)

(assert (= bs!1928208 (and b!7456129 b!7456105)))

(assert (=> bs!1928208 (not (= lambda!461289 lambda!461283))))

(declare-fun bs!1928209 () Bool)

(assert (= bs!1928209 (and b!7456129 b!7456116)))

(assert (=> bs!1928209 (not (= lambda!461289 lambda!461286))))

(declare-fun bs!1928210 () Bool)

(assert (= bs!1928210 (and b!7456129 b!7456069)))

(assert (=> bs!1928210 (not (= lambda!461289 lambda!461280))))

(declare-fun bs!1928211 () Bool)

(assert (= bs!1928211 (and b!7456129 b!7456071)))

(assert (=> bs!1928211 (= (and (= (_2!37544 lt!2621529) (_1!37544 lt!2621529)) (= (regOne!39540 rTail!78) (regOne!39540 lt!2621553)) (= (regTwo!39540 rTail!78) (regTwo!39540 lt!2621553))) (= lambda!461289 lambda!461281))))

(assert (=> b!7456129 true))

(assert (=> b!7456129 true))

(declare-fun b!7456122 () Bool)

(declare-fun e!4450206 () Bool)

(declare-fun e!4450203 () Bool)

(assert (=> b!7456122 (= e!4450206 e!4450203)))

(declare-fun res!2990793 () Bool)

(assert (=> b!7456122 (= res!2990793 (not (is-EmptyLang!19514 rTail!78)))))

(assert (=> b!7456122 (=> (not res!2990793) (not e!4450203))))

(declare-fun c!1378535 () Bool)

(declare-fun call!684956 () Bool)

(declare-fun bm!684951 () Bool)

(assert (=> bm!684951 (= call!684956 (Exists!4135 (ite c!1378535 lambda!461288 lambda!461289)))))

(declare-fun b!7456123 () Bool)

(declare-fun call!684957 () Bool)

(assert (=> b!7456123 (= e!4450206 call!684957)))

(declare-fun b!7456124 () Bool)

(declare-fun e!4450204 () Bool)

(declare-fun e!4450200 () Bool)

(assert (=> b!7456124 (= e!4450204 e!4450200)))

(assert (=> b!7456124 (= c!1378535 (is-Star!19514 rTail!78))))

(declare-fun b!7456125 () Bool)

(declare-fun c!1378532 () Bool)

(assert (=> b!7456125 (= c!1378532 (is-Union!19514 rTail!78))))

(declare-fun e!4450202 () Bool)

(assert (=> b!7456125 (= e!4450202 e!4450204)))

(declare-fun d!2297509 () Bool)

(declare-fun c!1378533 () Bool)

(assert (=> d!2297509 (= c!1378533 (is-EmptyExpr!19514 rTail!78))))

(assert (=> d!2297509 (= (matchRSpec!4193 rTail!78 (_2!37544 lt!2621529)) e!4450206)))

(declare-fun b!7456126 () Bool)

(assert (=> b!7456126 (= e!4450202 (= (_2!37544 lt!2621529) (Cons!72106 (c!1378480 rTail!78) Nil!72106)))))

(declare-fun e!4450201 () Bool)

(assert (=> b!7456127 (= e!4450201 call!684956)))

(declare-fun b!7456128 () Bool)

(declare-fun res!2990791 () Bool)

(assert (=> b!7456128 (=> res!2990791 e!4450201)))

(assert (=> b!7456128 (= res!2990791 call!684957)))

(assert (=> b!7456128 (= e!4450200 e!4450201)))

(assert (=> b!7456129 (= e!4450200 call!684956)))

(declare-fun b!7456130 () Bool)

(declare-fun e!4450205 () Bool)

(assert (=> b!7456130 (= e!4450204 e!4450205)))

(declare-fun res!2990792 () Bool)

(assert (=> b!7456130 (= res!2990792 (matchRSpec!4193 (regOne!39541 rTail!78) (_2!37544 lt!2621529)))))

(assert (=> b!7456130 (=> res!2990792 e!4450205)))

(declare-fun b!7456131 () Bool)

(assert (=> b!7456131 (= e!4450205 (matchRSpec!4193 (regTwo!39541 rTail!78) (_2!37544 lt!2621529)))))

(declare-fun bm!684952 () Bool)

(assert (=> bm!684952 (= call!684957 (isEmpty!41115 (_2!37544 lt!2621529)))))

(declare-fun b!7456132 () Bool)

(declare-fun c!1378534 () Bool)

(assert (=> b!7456132 (= c!1378534 (is-ElementMatch!19514 rTail!78))))

(assert (=> b!7456132 (= e!4450203 e!4450202)))

(assert (= (and d!2297509 c!1378533) b!7456123))

(assert (= (and d!2297509 (not c!1378533)) b!7456122))

(assert (= (and b!7456122 res!2990793) b!7456132))

(assert (= (and b!7456132 c!1378534) b!7456126))

(assert (= (and b!7456132 (not c!1378534)) b!7456125))

(assert (= (and b!7456125 c!1378532) b!7456130))

(assert (= (and b!7456125 (not c!1378532)) b!7456124))

(assert (= (and b!7456130 (not res!2990792)) b!7456131))

(assert (= (and b!7456124 c!1378535) b!7456128))

(assert (= (and b!7456124 (not c!1378535)) b!7456129))

(assert (= (and b!7456128 (not res!2990791)) b!7456127))

(assert (= (or b!7456127 b!7456129) bm!684951))

(assert (= (or b!7456123 b!7456128) bm!684952))

(declare-fun m!8059928 () Bool)

(assert (=> bm!684951 m!8059928))

(declare-fun m!8059930 () Bool)

(assert (=> b!7456130 m!8059930))

(declare-fun m!8059932 () Bool)

(assert (=> b!7456131 m!8059932))

(assert (=> bm!684952 m!8059864))

(assert (=> b!7455833 d!2297509))

(declare-fun d!2297511 () Bool)

(assert (=> d!2297511 (= (matchR!9278 r2!5783 (_1!37544 lt!2621529)) (matchRSpec!4193 r2!5783 (_1!37544 lt!2621529)))))

(declare-fun lt!2621642 () Unit!165863)

(assert (=> d!2297511 (= lt!2621642 (choose!57628 r2!5783 (_1!37544 lt!2621529)))))

(assert (=> d!2297511 (validRegex!10028 r2!5783)))

(assert (=> d!2297511 (= (mainMatchTheorem!4187 r2!5783 (_1!37544 lt!2621529)) lt!2621642)))

(declare-fun bs!1928212 () Bool)

(assert (= bs!1928212 d!2297511))

(assert (=> bs!1928212 m!8059736))

(assert (=> bs!1928212 m!8059732))

(declare-fun m!8059934 () Bool)

(assert (=> bs!1928212 m!8059934))

(assert (=> bs!1928212 m!8059716))

(assert (=> b!7455833 d!2297511))

(declare-fun call!684968 () Bool)

(declare-fun c!1378550 () Bool)

(declare-fun c!1378549 () Bool)

(declare-fun bm!684962 () Bool)

(assert (=> bm!684962 (= call!684968 (validRegex!10028 (ite c!1378550 (reg!19843 lt!2621543) (ite c!1378549 (regOne!39541 lt!2621543) (regOne!39540 lt!2621543)))))))

(declare-fun b!7456193 () Bool)

(declare-fun e!4450247 () Bool)

(declare-fun e!4450244 () Bool)

(assert (=> b!7456193 (= e!4450247 e!4450244)))

(declare-fun res!2990830 () Bool)

(assert (=> b!7456193 (= res!2990830 (not (nullable!8500 (reg!19843 lt!2621543))))))

(assert (=> b!7456193 (=> (not res!2990830) (not e!4450244))))

(declare-fun b!7456194 () Bool)

(declare-fun e!4450245 () Bool)

(declare-fun call!684969 () Bool)

(assert (=> b!7456194 (= e!4450245 call!684969)))

(declare-fun b!7456195 () Bool)

(declare-fun e!4450242 () Bool)

(assert (=> b!7456195 (= e!4450247 e!4450242)))

(assert (=> b!7456195 (= c!1378549 (is-Union!19514 lt!2621543))))

(declare-fun b!7456196 () Bool)

(declare-fun res!2990832 () Bool)

(assert (=> b!7456196 (=> (not res!2990832) (not e!4450245))))

(declare-fun call!684967 () Bool)

(assert (=> b!7456196 (= res!2990832 call!684967)))

(assert (=> b!7456196 (= e!4450242 e!4450245)))

(declare-fun b!7456197 () Bool)

(declare-fun e!4450246 () Bool)

(declare-fun e!4450243 () Bool)

(assert (=> b!7456197 (= e!4450246 e!4450243)))

(declare-fun res!2990829 () Bool)

(assert (=> b!7456197 (=> (not res!2990829) (not e!4450243))))

(assert (=> b!7456197 (= res!2990829 call!684967)))

(declare-fun bm!684963 () Bool)

(assert (=> bm!684963 (= call!684967 call!684968)))

(declare-fun b!7456198 () Bool)

(assert (=> b!7456198 (= e!4450243 call!684969)))

(declare-fun b!7456199 () Bool)

(declare-fun e!4450248 () Bool)

(assert (=> b!7456199 (= e!4450248 e!4450247)))

(assert (=> b!7456199 (= c!1378550 (is-Star!19514 lt!2621543))))

(declare-fun b!7456200 () Bool)

(assert (=> b!7456200 (= e!4450244 call!684968)))

(declare-fun b!7456201 () Bool)

(declare-fun res!2990831 () Bool)

(assert (=> b!7456201 (=> res!2990831 e!4450246)))

(assert (=> b!7456201 (= res!2990831 (not (is-Concat!28359 lt!2621543)))))

(assert (=> b!7456201 (= e!4450242 e!4450246)))

(declare-fun d!2297513 () Bool)

(declare-fun res!2990828 () Bool)

(assert (=> d!2297513 (=> res!2990828 e!4450248)))

(assert (=> d!2297513 (= res!2990828 (is-ElementMatch!19514 lt!2621543))))

(assert (=> d!2297513 (= (validRegex!10028 lt!2621543) e!4450248)))

(declare-fun bm!684964 () Bool)

(assert (=> bm!684964 (= call!684969 (validRegex!10028 (ite c!1378549 (regTwo!39541 lt!2621543) (regTwo!39540 lt!2621543))))))

(assert (= (and d!2297513 (not res!2990828)) b!7456199))

(assert (= (and b!7456199 c!1378550) b!7456193))

(assert (= (and b!7456199 (not c!1378550)) b!7456195))

(assert (= (and b!7456193 res!2990830) b!7456200))

(assert (= (and b!7456195 c!1378549) b!7456196))

(assert (= (and b!7456195 (not c!1378549)) b!7456201))

(assert (= (and b!7456196 res!2990832) b!7456194))

(assert (= (and b!7456201 (not res!2990831)) b!7456197))

(assert (= (and b!7456197 res!2990829) b!7456198))

(assert (= (or b!7456194 b!7456198) bm!684964))

(assert (= (or b!7456196 b!7456197) bm!684963))

(assert (= (or b!7456200 bm!684963) bm!684962))

(declare-fun m!8059950 () Bool)

(assert (=> bm!684962 m!8059950))

(declare-fun m!8059952 () Bool)

(assert (=> b!7456193 m!8059952))

(declare-fun m!8059954 () Bool)

(assert (=> bm!684964 m!8059954))

(assert (=> b!7455852 d!2297513))

(declare-fun d!2297517 () Bool)

(declare-fun choose!57630 (Int) Bool)

(assert (=> d!2297517 (= (Exists!4135 lambda!461262) (choose!57630 lambda!461262))))

(declare-fun bs!1928214 () Bool)

(assert (= bs!1928214 d!2297517))

(declare-fun m!8059958 () Bool)

(assert (=> bs!1928214 m!8059958))

(assert (=> b!7455842 d!2297517))

(declare-fun b!7456259 () Bool)

(declare-fun lt!2621662 () Unit!165863)

(declare-fun lt!2621659 () Unit!165863)

(assert (=> b!7456259 (= lt!2621662 lt!2621659)))

(assert (=> b!7456259 (= (++!17172 (++!17172 Nil!72106 (Cons!72106 (h!78554 s!13591) Nil!72106)) (t!386799 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3052 (List!72230 C!39302 List!72230 List!72230) Unit!165863)

(assert (=> b!7456259 (= lt!2621659 (lemmaMoveElementToOtherListKeepsConcatEq!3052 Nil!72106 (h!78554 s!13591) (t!386799 s!13591) s!13591))))

(declare-fun e!4450283 () Option!17073)

(assert (=> b!7456259 (= e!4450283 (findConcatSeparation!3195 lt!2621553 rTail!78 (++!17172 Nil!72106 (Cons!72106 (h!78554 s!13591) Nil!72106)) (t!386799 s!13591) s!13591))))

(declare-fun b!7456260 () Bool)

(declare-fun e!4450280 () Option!17073)

(assert (=> b!7456260 (= e!4450280 (Some!17072 (tuple2!68483 Nil!72106 s!13591)))))

(declare-fun b!7456261 () Bool)

(declare-fun res!2990863 () Bool)

(declare-fun e!4450284 () Bool)

(assert (=> b!7456261 (=> (not res!2990863) (not e!4450284))))

(declare-fun lt!2621661 () Option!17073)

(assert (=> b!7456261 (= res!2990863 (matchR!9278 lt!2621553 (_1!37544 (get!25155 lt!2621661))))))

(declare-fun b!7456262 () Bool)

(declare-fun res!2990865 () Bool)

(assert (=> b!7456262 (=> (not res!2990865) (not e!4450284))))

(assert (=> b!7456262 (= res!2990865 (matchR!9278 rTail!78 (_2!37544 (get!25155 lt!2621661))))))

(declare-fun b!7456263 () Bool)

(assert (=> b!7456263 (= e!4450284 (= (++!17172 (_1!37544 (get!25155 lt!2621661)) (_2!37544 (get!25155 lt!2621661))) s!13591))))

(declare-fun b!7456265 () Bool)

(declare-fun e!4450282 () Bool)

(assert (=> b!7456265 (= e!4450282 (not (isDefined!13762 lt!2621661)))))

(declare-fun b!7456266 () Bool)

(declare-fun e!4450281 () Bool)

(assert (=> b!7456266 (= e!4450281 (matchR!9278 rTail!78 s!13591))))

(declare-fun b!7456267 () Bool)

(assert (=> b!7456267 (= e!4450280 e!4450283)))

(declare-fun c!1378566 () Bool)

(assert (=> b!7456267 (= c!1378566 (is-Nil!72106 s!13591))))

(declare-fun b!7456264 () Bool)

(assert (=> b!7456264 (= e!4450283 None!17072)))

(declare-fun d!2297521 () Bool)

(assert (=> d!2297521 e!4450282))

(declare-fun res!2990864 () Bool)

(assert (=> d!2297521 (=> res!2990864 e!4450282)))

(assert (=> d!2297521 (= res!2990864 e!4450284)))

(declare-fun res!2990862 () Bool)

(assert (=> d!2297521 (=> (not res!2990862) (not e!4450284))))

(assert (=> d!2297521 (= res!2990862 (isDefined!13762 lt!2621661))))

(assert (=> d!2297521 (= lt!2621661 e!4450280)))

(declare-fun c!1378565 () Bool)

(assert (=> d!2297521 (= c!1378565 e!4450281)))

(declare-fun res!2990866 () Bool)

(assert (=> d!2297521 (=> (not res!2990866) (not e!4450281))))

(assert (=> d!2297521 (= res!2990866 (matchR!9278 lt!2621553 Nil!72106))))

(assert (=> d!2297521 (validRegex!10028 lt!2621553)))

(assert (=> d!2297521 (= (findConcatSeparation!3195 lt!2621553 rTail!78 Nil!72106 s!13591 s!13591) lt!2621661)))

(assert (= (and d!2297521 res!2990866) b!7456266))

(assert (= (and d!2297521 c!1378565) b!7456260))

(assert (= (and d!2297521 (not c!1378565)) b!7456267))

(assert (= (and b!7456267 c!1378566) b!7456264))

(assert (= (and b!7456267 (not c!1378566)) b!7456259))

(assert (= (and d!2297521 res!2990862) b!7456261))

(assert (= (and b!7456261 res!2990863) b!7456262))

(assert (= (and b!7456262 res!2990865) b!7456263))

(assert (= (and d!2297521 (not res!2990864)) b!7456265))

(declare-fun m!8059998 () Bool)

(assert (=> b!7456266 m!8059998))

(declare-fun m!8060000 () Bool)

(assert (=> b!7456259 m!8060000))

(assert (=> b!7456259 m!8060000))

(declare-fun m!8060002 () Bool)

(assert (=> b!7456259 m!8060002))

(declare-fun m!8060004 () Bool)

(assert (=> b!7456259 m!8060004))

(assert (=> b!7456259 m!8060000))

(declare-fun m!8060006 () Bool)

(assert (=> b!7456259 m!8060006))

(declare-fun m!8060008 () Bool)

(assert (=> b!7456261 m!8060008))

(declare-fun m!8060010 () Bool)

(assert (=> b!7456261 m!8060010))

(declare-fun m!8060012 () Bool)

(assert (=> d!2297521 m!8060012))

(declare-fun m!8060014 () Bool)

(assert (=> d!2297521 m!8060014))

(assert (=> d!2297521 m!8059912))

(assert (=> b!7456263 m!8060008))

(declare-fun m!8060016 () Bool)

(assert (=> b!7456263 m!8060016))

(assert (=> b!7456262 m!8060008))

(declare-fun m!8060018 () Bool)

(assert (=> b!7456262 m!8060018))

(assert (=> b!7456265 m!8060012))

(assert (=> b!7455842 d!2297521))

(declare-fun bm!684970 () Bool)

(declare-fun call!684975 () Bool)

(assert (=> bm!684970 (= call!684975 (isEmpty!41115 (_1!37544 lt!2621529)))))

(declare-fun b!7456282 () Bool)

(declare-fun e!4450297 () Bool)

(assert (=> b!7456282 (= e!4450297 (= (head!15299 (_1!37544 lt!2621529)) (c!1378480 lt!2621553)))))

(declare-fun b!7456283 () Bool)

(declare-fun res!2990877 () Bool)

(assert (=> b!7456283 (=> (not res!2990877) (not e!4450297))))

(assert (=> b!7456283 (= res!2990877 (not call!684975))))

(declare-fun b!7456284 () Bool)

(declare-fun e!4450293 () Bool)

(declare-fun e!4450295 () Bool)

(assert (=> b!7456284 (= e!4450293 e!4450295)))

(declare-fun res!2990879 () Bool)

(assert (=> b!7456284 (=> res!2990879 e!4450295)))

(assert (=> b!7456284 (= res!2990879 call!684975)))

(declare-fun b!7456285 () Bool)

(declare-fun e!4450296 () Bool)

(declare-fun lt!2621664 () Bool)

(assert (=> b!7456285 (= e!4450296 (not lt!2621664))))

(declare-fun b!7456287 () Bool)

(declare-fun e!4450298 () Bool)

(assert (=> b!7456287 (= e!4450298 (nullable!8500 lt!2621553))))

(declare-fun b!7456288 () Bool)

(assert (=> b!7456288 (= e!4450295 (not (= (head!15299 (_1!37544 lt!2621529)) (c!1378480 lt!2621553))))))

(declare-fun b!7456289 () Bool)

(assert (=> b!7456289 (= e!4450298 (matchR!9278 (derivativeStep!5559 lt!2621553 (head!15299 (_1!37544 lt!2621529))) (tail!14868 (_1!37544 lt!2621529))))))

(declare-fun b!7456290 () Bool)

(declare-fun res!2990880 () Bool)

(declare-fun e!4450292 () Bool)

(assert (=> b!7456290 (=> res!2990880 e!4450292)))

(assert (=> b!7456290 (= res!2990880 e!4450297)))

(declare-fun res!2990881 () Bool)

(assert (=> b!7456290 (=> (not res!2990881) (not e!4450297))))

(assert (=> b!7456290 (= res!2990881 lt!2621664)))

(declare-fun b!7456291 () Bool)

(declare-fun e!4450294 () Bool)

(assert (=> b!7456291 (= e!4450294 e!4450296)))

(declare-fun c!1378570 () Bool)

(assert (=> b!7456291 (= c!1378570 (is-EmptyLang!19514 lt!2621553))))

(declare-fun d!2297535 () Bool)

(assert (=> d!2297535 e!4450294))

(declare-fun c!1378571 () Bool)

(assert (=> d!2297535 (= c!1378571 (is-EmptyExpr!19514 lt!2621553))))

(assert (=> d!2297535 (= lt!2621664 e!4450298)))

(declare-fun c!1378572 () Bool)

(assert (=> d!2297535 (= c!1378572 (isEmpty!41115 (_1!37544 lt!2621529)))))

(assert (=> d!2297535 (validRegex!10028 lt!2621553)))

(assert (=> d!2297535 (= (matchR!9278 lt!2621553 (_1!37544 lt!2621529)) lt!2621664)))

(declare-fun b!7456286 () Bool)

(declare-fun res!2990875 () Bool)

(assert (=> b!7456286 (=> (not res!2990875) (not e!4450297))))

(assert (=> b!7456286 (= res!2990875 (isEmpty!41115 (tail!14868 (_1!37544 lt!2621529))))))

(declare-fun b!7456292 () Bool)

(declare-fun res!2990876 () Bool)

(assert (=> b!7456292 (=> res!2990876 e!4450292)))

(assert (=> b!7456292 (= res!2990876 (not (is-ElementMatch!19514 lt!2621553)))))

(assert (=> b!7456292 (= e!4450296 e!4450292)))

(declare-fun b!7456293 () Bool)

(assert (=> b!7456293 (= e!4450292 e!4450293)))

(declare-fun res!2990878 () Bool)

(assert (=> b!7456293 (=> (not res!2990878) (not e!4450293))))

(assert (=> b!7456293 (= res!2990878 (not lt!2621664))))

(declare-fun b!7456294 () Bool)

(declare-fun res!2990882 () Bool)

(assert (=> b!7456294 (=> res!2990882 e!4450295)))

(assert (=> b!7456294 (= res!2990882 (not (isEmpty!41115 (tail!14868 (_1!37544 lt!2621529)))))))

(declare-fun b!7456295 () Bool)

(assert (=> b!7456295 (= e!4450294 (= lt!2621664 call!684975))))

(assert (= (and d!2297535 c!1378572) b!7456287))

(assert (= (and d!2297535 (not c!1378572)) b!7456289))

(assert (= (and d!2297535 c!1378571) b!7456295))

(assert (= (and d!2297535 (not c!1378571)) b!7456291))

(assert (= (and b!7456291 c!1378570) b!7456285))

(assert (= (and b!7456291 (not c!1378570)) b!7456292))

(assert (= (and b!7456292 (not res!2990876)) b!7456290))

(assert (= (and b!7456290 res!2990881) b!7456283))

(assert (= (and b!7456283 res!2990877) b!7456286))

(assert (= (and b!7456286 res!2990875) b!7456282))

(assert (= (and b!7456290 (not res!2990880)) b!7456293))

(assert (= (and b!7456293 res!2990878) b!7456284))

(assert (= (and b!7456284 (not res!2990879)) b!7456294))

(assert (= (and b!7456294 (not res!2990882)) b!7456288))

(assert (= (or b!7456295 b!7456283 b!7456284) bm!684970))

(assert (=> b!7456286 m!8059874))

(assert (=> b!7456286 m!8059874))

(assert (=> b!7456286 m!8059876))

(assert (=> d!2297535 m!8059878))

(assert (=> d!2297535 m!8059912))

(assert (=> b!7456289 m!8059880))

(assert (=> b!7456289 m!8059880))

(declare-fun m!8060026 () Bool)

(assert (=> b!7456289 m!8060026))

(assert (=> b!7456289 m!8059874))

(assert (=> b!7456289 m!8060026))

(assert (=> b!7456289 m!8059874))

(declare-fun m!8060028 () Bool)

(assert (=> b!7456289 m!8060028))

(assert (=> b!7456288 m!8059880))

(assert (=> b!7456294 m!8059874))

(assert (=> b!7456294 m!8059874))

(assert (=> b!7456294 m!8059876))

(declare-fun m!8060030 () Bool)

(assert (=> b!7456287 m!8060030))

(assert (=> bm!684970 m!8059878))

(assert (=> b!7456282 m!8059880))

(assert (=> b!7455842 d!2297535))

(declare-fun d!2297539 () Bool)

(declare-fun isEmpty!41117 (Option!17073) Bool)

(assert (=> d!2297539 (= (isDefined!13762 lt!2621552) (not (isEmpty!41117 lt!2621552)))))

(declare-fun bs!1928225 () Bool)

(assert (= bs!1928225 d!2297539))

(declare-fun m!8060032 () Bool)

(assert (=> bs!1928225 m!8060032))

(assert (=> b!7455842 d!2297539))

(declare-fun d!2297541 () Bool)

(assert (=> d!2297541 (= (get!25155 lt!2621552) (v!54201 lt!2621552))))

(assert (=> b!7455842 d!2297541))

(declare-fun d!2297543 () Bool)

(assert (=> d!2297543 (= (Exists!4135 lambda!461263) (choose!57630 lambda!461263))))

(declare-fun bs!1928226 () Bool)

(assert (= bs!1928226 d!2297543))

(declare-fun m!8060034 () Bool)

(assert (=> bs!1928226 m!8060034))

(assert (=> b!7455842 d!2297543))

(declare-fun bs!1928238 () Bool)

(declare-fun d!2297545 () Bool)

(assert (= bs!1928238 (and d!2297545 b!7455842)))

(declare-fun lambda!461296 () Int)

(assert (=> bs!1928238 (= lambda!461296 lambda!461262)))

(declare-fun bs!1928239 () Bool)

(assert (= bs!1928239 (and d!2297545 b!7456118)))

(assert (=> bs!1928239 (not (= lambda!461296 lambda!461287))))

(declare-fun bs!1928240 () Bool)

(assert (= bs!1928240 (and d!2297545 b!7456127)))

(assert (=> bs!1928240 (not (= lambda!461296 lambda!461288))))

(declare-fun bs!1928241 () Bool)

(assert (= bs!1928241 (and d!2297545 b!7456129)))

(assert (=> bs!1928241 (not (= lambda!461296 lambda!461289))))

(assert (=> bs!1928238 (not (= lambda!461296 lambda!461263))))

(declare-fun bs!1928242 () Bool)

(assert (= bs!1928242 (and d!2297545 b!7456107)))

(assert (=> bs!1928242 (not (= lambda!461296 lambda!461285))))

(declare-fun bs!1928243 () Bool)

(assert (= bs!1928243 (and d!2297545 b!7456105)))

(assert (=> bs!1928243 (not (= lambda!461296 lambda!461283))))

(declare-fun bs!1928244 () Bool)

(assert (= bs!1928244 (and d!2297545 b!7456116)))

(assert (=> bs!1928244 (not (= lambda!461296 lambda!461286))))

(declare-fun bs!1928245 () Bool)

(assert (= bs!1928245 (and d!2297545 b!7456069)))

(assert (=> bs!1928245 (not (= lambda!461296 lambda!461280))))

(declare-fun bs!1928246 () Bool)

(assert (= bs!1928246 (and d!2297545 b!7456071)))

(assert (=> bs!1928246 (not (= lambda!461296 lambda!461281))))

(assert (=> d!2297545 true))

(assert (=> d!2297545 true))

(assert (=> d!2297545 true))

(assert (=> d!2297545 (= (isDefined!13762 (findConcatSeparation!3195 lt!2621553 rTail!78 Nil!72106 s!13591 s!13591)) (Exists!4135 lambda!461296))))

(declare-fun lt!2621667 () Unit!165863)

(declare-fun choose!57631 (Regex!19514 Regex!19514 List!72230) Unit!165863)

(assert (=> d!2297545 (= lt!2621667 (choose!57631 lt!2621553 rTail!78 s!13591))))

(assert (=> d!2297545 (validRegex!10028 lt!2621553)))

(assert (=> d!2297545 (= (lemmaFindConcatSeparationEquivalentToExists!2953 lt!2621553 rTail!78 s!13591) lt!2621667)))

(declare-fun bs!1928247 () Bool)

(assert (= bs!1928247 d!2297545))

(declare-fun m!8060042 () Bool)

(assert (=> bs!1928247 m!8060042))

(assert (=> bs!1928247 m!8059768))

(assert (=> bs!1928247 m!8059912))

(declare-fun m!8060044 () Bool)

(assert (=> bs!1928247 m!8060044))

(assert (=> bs!1928247 m!8059768))

(declare-fun m!8060046 () Bool)

(assert (=> bs!1928247 m!8060046))

(assert (=> b!7455842 d!2297545))

(declare-fun bs!1928263 () Bool)

(declare-fun d!2297549 () Bool)

(assert (= bs!1928263 (and d!2297549 b!7455842)))

(declare-fun lambda!461303 () Int)

(assert (=> bs!1928263 (= lambda!461303 lambda!461262)))

(declare-fun bs!1928264 () Bool)

(assert (= bs!1928264 (and d!2297549 b!7456118)))

(assert (=> bs!1928264 (not (= lambda!461303 lambda!461287))))

(declare-fun bs!1928265 () Bool)

(assert (= bs!1928265 (and d!2297549 d!2297545)))

(assert (=> bs!1928265 (= lambda!461303 lambda!461296)))

(declare-fun bs!1928266 () Bool)

(assert (= bs!1928266 (and d!2297549 b!7456127)))

(assert (=> bs!1928266 (not (= lambda!461303 lambda!461288))))

(declare-fun bs!1928267 () Bool)

(assert (= bs!1928267 (and d!2297549 b!7456129)))

(assert (=> bs!1928267 (not (= lambda!461303 lambda!461289))))

(assert (=> bs!1928263 (not (= lambda!461303 lambda!461263))))

(declare-fun bs!1928268 () Bool)

(assert (= bs!1928268 (and d!2297549 b!7456107)))

(assert (=> bs!1928268 (not (= lambda!461303 lambda!461285))))

(declare-fun bs!1928269 () Bool)

(assert (= bs!1928269 (and d!2297549 b!7456105)))

(assert (=> bs!1928269 (not (= lambda!461303 lambda!461283))))

(declare-fun bs!1928270 () Bool)

(assert (= bs!1928270 (and d!2297549 b!7456116)))

(assert (=> bs!1928270 (not (= lambda!461303 lambda!461286))))

(declare-fun bs!1928271 () Bool)

(assert (= bs!1928271 (and d!2297549 b!7456069)))

(assert (=> bs!1928271 (not (= lambda!461303 lambda!461280))))

(declare-fun bs!1928272 () Bool)

(assert (= bs!1928272 (and d!2297549 b!7456071)))

(assert (=> bs!1928272 (not (= lambda!461303 lambda!461281))))

(assert (=> d!2297549 true))

(assert (=> d!2297549 true))

(assert (=> d!2297549 true))

(declare-fun lambda!461304 () Int)

(assert (=> bs!1928263 (not (= lambda!461304 lambda!461262))))

(assert (=> bs!1928264 (= (and (= s!13591 (_1!37544 lt!2621529)) (= lt!2621553 (regOne!39540 r2!5783)) (= rTail!78 (regTwo!39540 r2!5783))) (= lambda!461304 lambda!461287))))

(assert (=> bs!1928265 (not (= lambda!461304 lambda!461296))))

(assert (=> bs!1928266 (not (= lambda!461304 lambda!461288))))

(assert (=> bs!1928267 (= (and (= s!13591 (_2!37544 lt!2621529)) (= lt!2621553 (regOne!39540 rTail!78)) (= rTail!78 (regTwo!39540 rTail!78))) (= lambda!461304 lambda!461289))))

(assert (=> bs!1928263 (= lambda!461304 lambda!461263)))

(assert (=> bs!1928269 (not (= lambda!461304 lambda!461283))))

(assert (=> bs!1928270 (not (= lambda!461304 lambda!461286))))

(assert (=> bs!1928271 (not (= lambda!461304 lambda!461280))))

(assert (=> bs!1928272 (= (and (= s!13591 (_1!37544 lt!2621529)) (= lt!2621553 (regOne!39540 lt!2621553)) (= rTail!78 (regTwo!39540 lt!2621553))) (= lambda!461304 lambda!461281))))

(declare-fun bs!1928273 () Bool)

(assert (= bs!1928273 d!2297549))

(assert (=> bs!1928273 (not (= lambda!461304 lambda!461303))))

(assert (=> bs!1928268 (= (and (= s!13591 (_1!37544 lt!2621529)) (= lt!2621553 (regOne!39540 r1!5845)) (= rTail!78 (regTwo!39540 r1!5845))) (= lambda!461304 lambda!461285))))

(assert (=> d!2297549 true))

(assert (=> d!2297549 true))

(assert (=> d!2297549 true))

(assert (=> d!2297549 (= (Exists!4135 lambda!461303) (Exists!4135 lambda!461304))))

(declare-fun lt!2621671 () Unit!165863)

(declare-fun choose!57632 (Regex!19514 Regex!19514 List!72230) Unit!165863)

(assert (=> d!2297549 (= lt!2621671 (choose!57632 lt!2621553 rTail!78 s!13591))))

(assert (=> d!2297549 (validRegex!10028 lt!2621553)))

(assert (=> d!2297549 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2471 lt!2621553 rTail!78 s!13591) lt!2621671)))

(declare-fun m!8060060 () Bool)

(assert (=> bs!1928273 m!8060060))

(declare-fun m!8060062 () Bool)

(assert (=> bs!1928273 m!8060062))

(declare-fun m!8060064 () Bool)

(assert (=> bs!1928273 m!8060064))

(assert (=> bs!1928273 m!8059912))

(assert (=> b!7455842 d!2297549))

(declare-fun bm!684976 () Bool)

(declare-fun call!684981 () Bool)

(assert (=> bm!684976 (= call!684981 (isEmpty!41115 call!684923))))

(declare-fun e!4450331 () Bool)

(declare-fun b!7456344 () Bool)

(assert (=> b!7456344 (= e!4450331 (= (head!15299 call!684923) (c!1378480 (ite c!1378479 lt!2621539 lt!2621532))))))

(declare-fun b!7456345 () Bool)

(declare-fun res!2990911 () Bool)

(assert (=> b!7456345 (=> (not res!2990911) (not e!4450331))))

(assert (=> b!7456345 (= res!2990911 (not call!684981))))

(declare-fun b!7456346 () Bool)

(declare-fun e!4450327 () Bool)

(declare-fun e!4450329 () Bool)

(assert (=> b!7456346 (= e!4450327 e!4450329)))

(declare-fun res!2990913 () Bool)

(assert (=> b!7456346 (=> res!2990913 e!4450329)))

(assert (=> b!7456346 (= res!2990913 call!684981)))

(declare-fun b!7456347 () Bool)

(declare-fun e!4450330 () Bool)

(declare-fun lt!2621672 () Bool)

(assert (=> b!7456347 (= e!4450330 (not lt!2621672))))

(declare-fun b!7456349 () Bool)

(declare-fun e!4450332 () Bool)

(assert (=> b!7456349 (= e!4450332 (nullable!8500 (ite c!1378479 lt!2621539 lt!2621532)))))

(declare-fun b!7456350 () Bool)

(assert (=> b!7456350 (= e!4450329 (not (= (head!15299 call!684923) (c!1378480 (ite c!1378479 lt!2621539 lt!2621532)))))))

(declare-fun b!7456351 () Bool)

(assert (=> b!7456351 (= e!4450332 (matchR!9278 (derivativeStep!5559 (ite c!1378479 lt!2621539 lt!2621532) (head!15299 call!684923)) (tail!14868 call!684923)))))

(declare-fun b!7456352 () Bool)

(declare-fun res!2990914 () Bool)

(declare-fun e!4450326 () Bool)

(assert (=> b!7456352 (=> res!2990914 e!4450326)))

(assert (=> b!7456352 (= res!2990914 e!4450331)))

(declare-fun res!2990915 () Bool)

(assert (=> b!7456352 (=> (not res!2990915) (not e!4450331))))

(assert (=> b!7456352 (= res!2990915 lt!2621672)))

(declare-fun b!7456353 () Bool)

(declare-fun e!4450328 () Bool)

(assert (=> b!7456353 (= e!4450328 e!4450330)))

(declare-fun c!1378584 () Bool)

(assert (=> b!7456353 (= c!1378584 (is-EmptyLang!19514 (ite c!1378479 lt!2621539 lt!2621532)))))

(declare-fun d!2297555 () Bool)

(assert (=> d!2297555 e!4450328))

(declare-fun c!1378585 () Bool)

(assert (=> d!2297555 (= c!1378585 (is-EmptyExpr!19514 (ite c!1378479 lt!2621539 lt!2621532)))))

(assert (=> d!2297555 (= lt!2621672 e!4450332)))

(declare-fun c!1378586 () Bool)

(assert (=> d!2297555 (= c!1378586 (isEmpty!41115 call!684923))))

(assert (=> d!2297555 (validRegex!10028 (ite c!1378479 lt!2621539 lt!2621532))))

(assert (=> d!2297555 (= (matchR!9278 (ite c!1378479 lt!2621539 lt!2621532) call!684923) lt!2621672)))

(declare-fun b!7456348 () Bool)

(declare-fun res!2990909 () Bool)

(assert (=> b!7456348 (=> (not res!2990909) (not e!4450331))))

(assert (=> b!7456348 (= res!2990909 (isEmpty!41115 (tail!14868 call!684923)))))

(declare-fun b!7456354 () Bool)

(declare-fun res!2990910 () Bool)

(assert (=> b!7456354 (=> res!2990910 e!4450326)))

(assert (=> b!7456354 (= res!2990910 (not (is-ElementMatch!19514 (ite c!1378479 lt!2621539 lt!2621532))))))

(assert (=> b!7456354 (= e!4450330 e!4450326)))

(declare-fun b!7456355 () Bool)

(assert (=> b!7456355 (= e!4450326 e!4450327)))

(declare-fun res!2990912 () Bool)

(assert (=> b!7456355 (=> (not res!2990912) (not e!4450327))))

(assert (=> b!7456355 (= res!2990912 (not lt!2621672))))

(declare-fun b!7456356 () Bool)

(declare-fun res!2990916 () Bool)

(assert (=> b!7456356 (=> res!2990916 e!4450329)))

(assert (=> b!7456356 (= res!2990916 (not (isEmpty!41115 (tail!14868 call!684923))))))

(declare-fun b!7456357 () Bool)

(assert (=> b!7456357 (= e!4450328 (= lt!2621672 call!684981))))

(assert (= (and d!2297555 c!1378586) b!7456349))

(assert (= (and d!2297555 (not c!1378586)) b!7456351))

(assert (= (and d!2297555 c!1378585) b!7456357))

(assert (= (and d!2297555 (not c!1378585)) b!7456353))

(assert (= (and b!7456353 c!1378584) b!7456347))

(assert (= (and b!7456353 (not c!1378584)) b!7456354))

(assert (= (and b!7456354 (not res!2990910)) b!7456352))

(assert (= (and b!7456352 res!2990915) b!7456345))

(assert (= (and b!7456345 res!2990911) b!7456348))

(assert (= (and b!7456348 res!2990909) b!7456344))

(assert (= (and b!7456352 (not res!2990914)) b!7456355))

(assert (= (and b!7456355 res!2990912) b!7456346))

(assert (= (and b!7456346 (not res!2990913)) b!7456356))

(assert (= (and b!7456356 (not res!2990916)) b!7456350))

(assert (= (or b!7456357 b!7456345 b!7456346) bm!684976))

(declare-fun m!8060066 () Bool)

(assert (=> b!7456348 m!8060066))

(assert (=> b!7456348 m!8060066))

(declare-fun m!8060068 () Bool)

(assert (=> b!7456348 m!8060068))

(declare-fun m!8060070 () Bool)

(assert (=> d!2297555 m!8060070))

(declare-fun m!8060072 () Bool)

(assert (=> d!2297555 m!8060072))

(declare-fun m!8060074 () Bool)

(assert (=> b!7456351 m!8060074))

(assert (=> b!7456351 m!8060074))

(declare-fun m!8060076 () Bool)

(assert (=> b!7456351 m!8060076))

(assert (=> b!7456351 m!8060066))

(assert (=> b!7456351 m!8060076))

(assert (=> b!7456351 m!8060066))

(declare-fun m!8060078 () Bool)

(assert (=> b!7456351 m!8060078))

(assert (=> b!7456350 m!8060074))

(assert (=> b!7456356 m!8060066))

(assert (=> b!7456356 m!8060066))

(assert (=> b!7456356 m!8060068))

(declare-fun m!8060080 () Bool)

(assert (=> b!7456349 m!8060080))

(assert (=> bm!684976 m!8060070))

(assert (=> b!7456344 m!8060074))

(assert (=> bm!684919 d!2297555))

(declare-fun c!1378587 () Bool)

(declare-fun bm!684977 () Bool)

(declare-fun c!1378588 () Bool)

(declare-fun call!684983 () Bool)

(assert (=> bm!684977 (= call!684983 (validRegex!10028 (ite c!1378588 (reg!19843 r1!5845) (ite c!1378587 (regOne!39541 r1!5845) (regOne!39540 r1!5845)))))))

(declare-fun b!7456358 () Bool)

(declare-fun e!4450338 () Bool)

(declare-fun e!4450335 () Bool)

(assert (=> b!7456358 (= e!4450338 e!4450335)))

(declare-fun res!2990919 () Bool)

(assert (=> b!7456358 (= res!2990919 (not (nullable!8500 (reg!19843 r1!5845))))))

(assert (=> b!7456358 (=> (not res!2990919) (not e!4450335))))

(declare-fun b!7456359 () Bool)

(declare-fun e!4450336 () Bool)

(declare-fun call!684984 () Bool)

(assert (=> b!7456359 (= e!4450336 call!684984)))

(declare-fun b!7456360 () Bool)

(declare-fun e!4450333 () Bool)

(assert (=> b!7456360 (= e!4450338 e!4450333)))

(assert (=> b!7456360 (= c!1378587 (is-Union!19514 r1!5845))))

(declare-fun b!7456361 () Bool)

(declare-fun res!2990921 () Bool)

(assert (=> b!7456361 (=> (not res!2990921) (not e!4450336))))

(declare-fun call!684982 () Bool)

(assert (=> b!7456361 (= res!2990921 call!684982)))

(assert (=> b!7456361 (= e!4450333 e!4450336)))

(declare-fun b!7456362 () Bool)

(declare-fun e!4450337 () Bool)

(declare-fun e!4450334 () Bool)

(assert (=> b!7456362 (= e!4450337 e!4450334)))

(declare-fun res!2990918 () Bool)

(assert (=> b!7456362 (=> (not res!2990918) (not e!4450334))))

(assert (=> b!7456362 (= res!2990918 call!684982)))

(declare-fun bm!684978 () Bool)

(assert (=> bm!684978 (= call!684982 call!684983)))

(declare-fun b!7456363 () Bool)

(assert (=> b!7456363 (= e!4450334 call!684984)))

(declare-fun b!7456364 () Bool)

(declare-fun e!4450339 () Bool)

(assert (=> b!7456364 (= e!4450339 e!4450338)))

(assert (=> b!7456364 (= c!1378588 (is-Star!19514 r1!5845))))

(declare-fun b!7456365 () Bool)

(assert (=> b!7456365 (= e!4450335 call!684983)))

(declare-fun b!7456366 () Bool)

(declare-fun res!2990920 () Bool)

(assert (=> b!7456366 (=> res!2990920 e!4450337)))

(assert (=> b!7456366 (= res!2990920 (not (is-Concat!28359 r1!5845)))))

(assert (=> b!7456366 (= e!4450333 e!4450337)))

(declare-fun d!2297557 () Bool)

(declare-fun res!2990917 () Bool)

(assert (=> d!2297557 (=> res!2990917 e!4450339)))

(assert (=> d!2297557 (= res!2990917 (is-ElementMatch!19514 r1!5845))))

(assert (=> d!2297557 (= (validRegex!10028 r1!5845) e!4450339)))

(declare-fun bm!684979 () Bool)

(assert (=> bm!684979 (= call!684984 (validRegex!10028 (ite c!1378587 (regTwo!39541 r1!5845) (regTwo!39540 r1!5845))))))

(assert (= (and d!2297557 (not res!2990917)) b!7456364))

(assert (= (and b!7456364 c!1378588) b!7456358))

(assert (= (and b!7456364 (not c!1378588)) b!7456360))

(assert (= (and b!7456358 res!2990919) b!7456365))

(assert (= (and b!7456360 c!1378587) b!7456361))

(assert (= (and b!7456360 (not c!1378587)) b!7456366))

(assert (= (and b!7456361 res!2990921) b!7456359))

(assert (= (and b!7456366 (not res!2990920)) b!7456362))

(assert (= (and b!7456362 res!2990918) b!7456363))

(assert (= (or b!7456359 b!7456363) bm!684979))

(assert (= (or b!7456361 b!7456362) bm!684978))

(assert (= (or b!7456365 bm!684978) bm!684977))

(declare-fun m!8060082 () Bool)

(assert (=> bm!684977 m!8060082))

(declare-fun m!8060084 () Bool)

(assert (=> b!7456358 m!8060084))

(declare-fun m!8060086 () Bool)

(assert (=> bm!684979 m!8060086))

(assert (=> start!723600 d!2297557))

(declare-fun bm!684980 () Bool)

(declare-fun c!1378594 () Bool)

(declare-fun call!684986 () Bool)

(declare-fun c!1378593 () Bool)

(assert (=> bm!684980 (= call!684986 (validRegex!10028 (ite c!1378594 (reg!19843 r2!5783) (ite c!1378593 (regOne!39541 r2!5783) (regOne!39540 r2!5783)))))))

(declare-fun b!7456379 () Bool)

(declare-fun e!4450353 () Bool)

(declare-fun e!4450350 () Bool)

(assert (=> b!7456379 (= e!4450353 e!4450350)))

(declare-fun res!2990928 () Bool)

(assert (=> b!7456379 (= res!2990928 (not (nullable!8500 (reg!19843 r2!5783))))))

(assert (=> b!7456379 (=> (not res!2990928) (not e!4450350))))

(declare-fun b!7456380 () Bool)

(declare-fun e!4450351 () Bool)

(declare-fun call!684987 () Bool)

(assert (=> b!7456380 (= e!4450351 call!684987)))

(declare-fun b!7456381 () Bool)

(declare-fun e!4450347 () Bool)

(assert (=> b!7456381 (= e!4450353 e!4450347)))

(assert (=> b!7456381 (= c!1378593 (is-Union!19514 r2!5783))))

(declare-fun b!7456382 () Bool)

(declare-fun res!2990930 () Bool)

(assert (=> b!7456382 (=> (not res!2990930) (not e!4450351))))

(declare-fun call!684985 () Bool)

(assert (=> b!7456382 (= res!2990930 call!684985)))

(assert (=> b!7456382 (= e!4450347 e!4450351)))

(declare-fun b!7456383 () Bool)

(declare-fun e!4450352 () Bool)

(declare-fun e!4450349 () Bool)

(assert (=> b!7456383 (= e!4450352 e!4450349)))

(declare-fun res!2990927 () Bool)

(assert (=> b!7456383 (=> (not res!2990927) (not e!4450349))))

(assert (=> b!7456383 (= res!2990927 call!684985)))

(declare-fun bm!684981 () Bool)

(assert (=> bm!684981 (= call!684985 call!684986)))

(declare-fun b!7456384 () Bool)

(assert (=> b!7456384 (= e!4450349 call!684987)))

(declare-fun b!7456385 () Bool)

(declare-fun e!4450354 () Bool)

(assert (=> b!7456385 (= e!4450354 e!4450353)))

(assert (=> b!7456385 (= c!1378594 (is-Star!19514 r2!5783))))

(declare-fun b!7456386 () Bool)

(assert (=> b!7456386 (= e!4450350 call!684986)))

(declare-fun b!7456387 () Bool)

(declare-fun res!2990929 () Bool)

(assert (=> b!7456387 (=> res!2990929 e!4450352)))

(assert (=> b!7456387 (= res!2990929 (not (is-Concat!28359 r2!5783)))))

(assert (=> b!7456387 (= e!4450347 e!4450352)))

(declare-fun d!2297559 () Bool)

(declare-fun res!2990926 () Bool)

(assert (=> d!2297559 (=> res!2990926 e!4450354)))

(assert (=> d!2297559 (= res!2990926 (is-ElementMatch!19514 r2!5783))))

(assert (=> d!2297559 (= (validRegex!10028 r2!5783) e!4450354)))

(declare-fun bm!684982 () Bool)

(assert (=> bm!684982 (= call!684987 (validRegex!10028 (ite c!1378593 (regTwo!39541 r2!5783) (regTwo!39540 r2!5783))))))

(assert (= (and d!2297559 (not res!2990926)) b!7456385))

(assert (= (and b!7456385 c!1378594) b!7456379))

(assert (= (and b!7456385 (not c!1378594)) b!7456381))

(assert (= (and b!7456379 res!2990928) b!7456386))

(assert (= (and b!7456381 c!1378593) b!7456382))

(assert (= (and b!7456381 (not c!1378593)) b!7456387))

(assert (= (and b!7456382 res!2990930) b!7456380))

(assert (= (and b!7456387 (not res!2990929)) b!7456383))

(assert (= (and b!7456383 res!2990927) b!7456384))

(assert (= (or b!7456380 b!7456384) bm!684982))

(assert (= (or b!7456382 b!7456383) bm!684981))

(assert (= (or b!7456386 bm!684981) bm!684980))

(declare-fun m!8060088 () Bool)

(assert (=> bm!684980 m!8060088))

(declare-fun m!8060090 () Bool)

(assert (=> b!7456379 m!8060090))

(declare-fun m!8060092 () Bool)

(assert (=> bm!684982 m!8060092))

(assert (=> b!7455848 d!2297559))

(declare-fun bs!1928274 () Bool)

(declare-fun b!7456399 () Bool)

(assert (= bs!1928274 (and b!7456399 b!7455842)))

(declare-fun lambda!461305 () Int)

(assert (=> bs!1928274 (not (= lambda!461305 lambda!461262))))

(declare-fun bs!1928275 () Bool)

(assert (= bs!1928275 (and b!7456399 b!7456118)))

(assert (=> bs!1928275 (not (= lambda!461305 lambda!461287))))

(declare-fun bs!1928276 () Bool)

(assert (= bs!1928276 (and b!7456399 d!2297545)))

(assert (=> bs!1928276 (not (= lambda!461305 lambda!461296))))

(declare-fun bs!1928277 () Bool)

(assert (= bs!1928277 (and b!7456399 b!7456127)))

(assert (=> bs!1928277 (= (and (= s!13591 (_2!37544 lt!2621529)) (= (reg!19843 lt!2621543) (reg!19843 rTail!78)) (= lt!2621543 rTail!78)) (= lambda!461305 lambda!461288))))

(declare-fun bs!1928278 () Bool)

(assert (= bs!1928278 (and b!7456399 d!2297549)))

(assert (=> bs!1928278 (not (= lambda!461305 lambda!461304))))

(declare-fun bs!1928279 () Bool)

(assert (= bs!1928279 (and b!7456399 b!7456129)))

(assert (=> bs!1928279 (not (= lambda!461305 lambda!461289))))

(assert (=> bs!1928274 (not (= lambda!461305 lambda!461263))))

(declare-fun bs!1928280 () Bool)

(assert (= bs!1928280 (and b!7456399 b!7456105)))

(assert (=> bs!1928280 (= (and (= s!13591 (_1!37544 lt!2621529)) (= (reg!19843 lt!2621543) (reg!19843 r1!5845)) (= lt!2621543 r1!5845)) (= lambda!461305 lambda!461283))))

(declare-fun bs!1928281 () Bool)

(assert (= bs!1928281 (and b!7456399 b!7456116)))

(assert (=> bs!1928281 (= (and (= s!13591 (_1!37544 lt!2621529)) (= (reg!19843 lt!2621543) (reg!19843 r2!5783)) (= lt!2621543 r2!5783)) (= lambda!461305 lambda!461286))))

(declare-fun bs!1928282 () Bool)

(assert (= bs!1928282 (and b!7456399 b!7456069)))

(assert (=> bs!1928282 (= (and (= s!13591 (_1!37544 lt!2621529)) (= (reg!19843 lt!2621543) (reg!19843 lt!2621553)) (= lt!2621543 lt!2621553)) (= lambda!461305 lambda!461280))))

(declare-fun bs!1928283 () Bool)

(assert (= bs!1928283 (and b!7456399 b!7456071)))

(assert (=> bs!1928283 (not (= lambda!461305 lambda!461281))))

(assert (=> bs!1928278 (not (= lambda!461305 lambda!461303))))

(declare-fun bs!1928284 () Bool)

(assert (= bs!1928284 (and b!7456399 b!7456107)))

(assert (=> bs!1928284 (not (= lambda!461305 lambda!461285))))

(assert (=> b!7456399 true))

(assert (=> b!7456399 true))

(declare-fun bs!1928285 () Bool)

(declare-fun b!7456401 () Bool)

(assert (= bs!1928285 (and b!7456401 b!7455842)))

(declare-fun lambda!461306 () Int)

(assert (=> bs!1928285 (not (= lambda!461306 lambda!461262))))

(declare-fun bs!1928286 () Bool)

(assert (= bs!1928286 (and b!7456401 b!7456118)))

(assert (=> bs!1928286 (= (and (= s!13591 (_1!37544 lt!2621529)) (= (regOne!39540 lt!2621543) (regOne!39540 r2!5783)) (= (regTwo!39540 lt!2621543) (regTwo!39540 r2!5783))) (= lambda!461306 lambda!461287))))

(declare-fun bs!1928287 () Bool)

(assert (= bs!1928287 (and b!7456401 d!2297545)))

(assert (=> bs!1928287 (not (= lambda!461306 lambda!461296))))

(declare-fun bs!1928288 () Bool)

(assert (= bs!1928288 (and b!7456401 b!7456127)))

(assert (=> bs!1928288 (not (= lambda!461306 lambda!461288))))

(declare-fun bs!1928289 () Bool)

(assert (= bs!1928289 (and b!7456401 d!2297549)))

(assert (=> bs!1928289 (= (and (= (regOne!39540 lt!2621543) lt!2621553) (= (regTwo!39540 lt!2621543) rTail!78)) (= lambda!461306 lambda!461304))))

(declare-fun bs!1928290 () Bool)

(assert (= bs!1928290 (and b!7456401 b!7456129)))

(assert (=> bs!1928290 (= (and (= s!13591 (_2!37544 lt!2621529)) (= (regOne!39540 lt!2621543) (regOne!39540 rTail!78)) (= (regTwo!39540 lt!2621543) (regTwo!39540 rTail!78))) (= lambda!461306 lambda!461289))))

(assert (=> bs!1928285 (= (and (= (regOne!39540 lt!2621543) lt!2621553) (= (regTwo!39540 lt!2621543) rTail!78)) (= lambda!461306 lambda!461263))))

(declare-fun bs!1928291 () Bool)

(assert (= bs!1928291 (and b!7456401 b!7456105)))

(assert (=> bs!1928291 (not (= lambda!461306 lambda!461283))))

(declare-fun bs!1928292 () Bool)

(assert (= bs!1928292 (and b!7456401 b!7456116)))

(assert (=> bs!1928292 (not (= lambda!461306 lambda!461286))))

(declare-fun bs!1928293 () Bool)

(assert (= bs!1928293 (and b!7456401 b!7456069)))

(assert (=> bs!1928293 (not (= lambda!461306 lambda!461280))))

(declare-fun bs!1928294 () Bool)

(assert (= bs!1928294 (and b!7456401 b!7456071)))

(assert (=> bs!1928294 (= (and (= s!13591 (_1!37544 lt!2621529)) (= (regOne!39540 lt!2621543) (regOne!39540 lt!2621553)) (= (regTwo!39540 lt!2621543) (regTwo!39540 lt!2621553))) (= lambda!461306 lambda!461281))))

(declare-fun bs!1928295 () Bool)

(assert (= bs!1928295 (and b!7456401 b!7456399)))

(assert (=> bs!1928295 (not (= lambda!461306 lambda!461305))))

(assert (=> bs!1928289 (not (= lambda!461306 lambda!461303))))

(declare-fun bs!1928296 () Bool)

(assert (= bs!1928296 (and b!7456401 b!7456107)))

(assert (=> bs!1928296 (= (and (= s!13591 (_1!37544 lt!2621529)) (= (regOne!39540 lt!2621543) (regOne!39540 r1!5845)) (= (regTwo!39540 lt!2621543) (regTwo!39540 r1!5845))) (= lambda!461306 lambda!461285))))

(assert (=> b!7456401 true))

(assert (=> b!7456401 true))

(declare-fun b!7456394 () Bool)

(declare-fun e!4450367 () Bool)

(declare-fun e!4450364 () Bool)

(assert (=> b!7456394 (= e!4450367 e!4450364)))

(declare-fun res!2990939 () Bool)

(assert (=> b!7456394 (= res!2990939 (not (is-EmptyLang!19514 lt!2621543)))))

(assert (=> b!7456394 (=> (not res!2990939) (not e!4450364))))

(declare-fun call!684988 () Bool)

(declare-fun c!1378598 () Bool)

(declare-fun bm!684983 () Bool)

(assert (=> bm!684983 (= call!684988 (Exists!4135 (ite c!1378598 lambda!461305 lambda!461306)))))

(declare-fun b!7456395 () Bool)

(declare-fun call!684989 () Bool)

(assert (=> b!7456395 (= e!4450367 call!684989)))

(declare-fun b!7456396 () Bool)

(declare-fun e!4450365 () Bool)

(declare-fun e!4450361 () Bool)

(assert (=> b!7456396 (= e!4450365 e!4450361)))

(assert (=> b!7456396 (= c!1378598 (is-Star!19514 lt!2621543))))

(declare-fun b!7456397 () Bool)

(declare-fun c!1378595 () Bool)

(assert (=> b!7456397 (= c!1378595 (is-Union!19514 lt!2621543))))

(declare-fun e!4450363 () Bool)

(assert (=> b!7456397 (= e!4450363 e!4450365)))

(declare-fun d!2297561 () Bool)

(declare-fun c!1378596 () Bool)

(assert (=> d!2297561 (= c!1378596 (is-EmptyExpr!19514 lt!2621543))))

(assert (=> d!2297561 (= (matchRSpec!4193 lt!2621543 s!13591) e!4450367)))

(declare-fun b!7456398 () Bool)

(assert (=> b!7456398 (= e!4450363 (= s!13591 (Cons!72106 (c!1378480 lt!2621543) Nil!72106)))))

(declare-fun e!4450362 () Bool)

(assert (=> b!7456399 (= e!4450362 call!684988)))

(declare-fun b!7456400 () Bool)

(declare-fun res!2990937 () Bool)

(assert (=> b!7456400 (=> res!2990937 e!4450362)))

(assert (=> b!7456400 (= res!2990937 call!684989)))

(assert (=> b!7456400 (= e!4450361 e!4450362)))

(assert (=> b!7456401 (= e!4450361 call!684988)))

(declare-fun b!7456402 () Bool)

(declare-fun e!4450366 () Bool)

(assert (=> b!7456402 (= e!4450365 e!4450366)))

(declare-fun res!2990938 () Bool)

(assert (=> b!7456402 (= res!2990938 (matchRSpec!4193 (regOne!39541 lt!2621543) s!13591))))

(assert (=> b!7456402 (=> res!2990938 e!4450366)))

(declare-fun b!7456403 () Bool)

(assert (=> b!7456403 (= e!4450366 (matchRSpec!4193 (regTwo!39541 lt!2621543) s!13591))))

(declare-fun bm!684984 () Bool)

(assert (=> bm!684984 (= call!684989 (isEmpty!41115 s!13591))))

(declare-fun b!7456404 () Bool)

(declare-fun c!1378597 () Bool)

(assert (=> b!7456404 (= c!1378597 (is-ElementMatch!19514 lt!2621543))))

(assert (=> b!7456404 (= e!4450364 e!4450363)))

(assert (= (and d!2297561 c!1378596) b!7456395))

(assert (= (and d!2297561 (not c!1378596)) b!7456394))

(assert (= (and b!7456394 res!2990939) b!7456404))

(assert (= (and b!7456404 c!1378597) b!7456398))

(assert (= (and b!7456404 (not c!1378597)) b!7456397))

(assert (= (and b!7456397 c!1378595) b!7456402))

(assert (= (and b!7456397 (not c!1378595)) b!7456396))

(assert (= (and b!7456402 (not res!2990938)) b!7456403))

(assert (= (and b!7456396 c!1378598) b!7456400))

(assert (= (and b!7456396 (not c!1378598)) b!7456401))

(assert (= (and b!7456400 (not res!2990937)) b!7456399))

(assert (= (or b!7456399 b!7456401) bm!684983))

(assert (= (or b!7456395 b!7456400) bm!684984))

(declare-fun m!8060094 () Bool)

(assert (=> bm!684983 m!8060094))

(declare-fun m!8060096 () Bool)

(assert (=> b!7456402 m!8060096))

(declare-fun m!8060098 () Bool)

(assert (=> b!7456403 m!8060098))

(declare-fun m!8060100 () Bool)

(assert (=> bm!684984 m!8060100))

(assert (=> b!7455837 d!2297561))

(declare-fun d!2297563 () Bool)

(assert (=> d!2297563 (= (matchR!9278 lt!2621543 s!13591) (matchRSpec!4193 lt!2621543 s!13591))))

(declare-fun lt!2621673 () Unit!165863)

(assert (=> d!2297563 (= lt!2621673 (choose!57628 lt!2621543 s!13591))))

(assert (=> d!2297563 (validRegex!10028 lt!2621543)))

(assert (=> d!2297563 (= (mainMatchTheorem!4187 lt!2621543 s!13591) lt!2621673)))

(declare-fun bs!1928297 () Bool)

(assert (= bs!1928297 d!2297563))

(assert (=> bs!1928297 m!8059752))

(assert (=> bs!1928297 m!8059744))

(declare-fun m!8060102 () Bool)

(assert (=> bs!1928297 m!8060102))

(assert (=> bs!1928297 m!8059714))

(assert (=> b!7455837 d!2297563))

(declare-fun bs!1928298 () Bool)

(declare-fun b!7456410 () Bool)

(assert (= bs!1928298 (and b!7456410 b!7455842)))

(declare-fun lambda!461307 () Int)

(assert (=> bs!1928298 (not (= lambda!461307 lambda!461262))))

(declare-fun bs!1928299 () Bool)

(assert (= bs!1928299 (and b!7456410 b!7456118)))

(assert (=> bs!1928299 (not (= lambda!461307 lambda!461287))))

(declare-fun bs!1928300 () Bool)

(assert (= bs!1928300 (and b!7456410 d!2297545)))

(assert (=> bs!1928300 (not (= lambda!461307 lambda!461296))))

(declare-fun bs!1928301 () Bool)

(assert (= bs!1928301 (and b!7456410 d!2297549)))

(assert (=> bs!1928301 (not (= lambda!461307 lambda!461304))))

(declare-fun bs!1928302 () Bool)

(assert (= bs!1928302 (and b!7456410 b!7456129)))

(assert (=> bs!1928302 (not (= lambda!461307 lambda!461289))))

(assert (=> bs!1928298 (not (= lambda!461307 lambda!461263))))

(declare-fun bs!1928303 () Bool)

(assert (= bs!1928303 (and b!7456410 b!7456105)))

(assert (=> bs!1928303 (= (and (= s!13591 (_1!37544 lt!2621529)) (= (reg!19843 lt!2621536) (reg!19843 r1!5845)) (= lt!2621536 r1!5845)) (= lambda!461307 lambda!461283))))

(declare-fun bs!1928304 () Bool)

(assert (= bs!1928304 (and b!7456410 b!7456116)))

(assert (=> bs!1928304 (= (and (= s!13591 (_1!37544 lt!2621529)) (= (reg!19843 lt!2621536) (reg!19843 r2!5783)) (= lt!2621536 r2!5783)) (= lambda!461307 lambda!461286))))

(declare-fun bs!1928305 () Bool)

(assert (= bs!1928305 (and b!7456410 b!7456069)))

(assert (=> bs!1928305 (= (and (= s!13591 (_1!37544 lt!2621529)) (= (reg!19843 lt!2621536) (reg!19843 lt!2621553)) (= lt!2621536 lt!2621553)) (= lambda!461307 lambda!461280))))

(declare-fun bs!1928306 () Bool)

(assert (= bs!1928306 (and b!7456410 b!7456071)))

(assert (=> bs!1928306 (not (= lambda!461307 lambda!461281))))

(declare-fun bs!1928307 () Bool)

(assert (= bs!1928307 (and b!7456410 b!7456399)))

(assert (=> bs!1928307 (= (and (= (reg!19843 lt!2621536) (reg!19843 lt!2621543)) (= lt!2621536 lt!2621543)) (= lambda!461307 lambda!461305))))

(declare-fun bs!1928308 () Bool)

(assert (= bs!1928308 (and b!7456410 b!7456127)))

(assert (=> bs!1928308 (= (and (= s!13591 (_2!37544 lt!2621529)) (= (reg!19843 lt!2621536) (reg!19843 rTail!78)) (= lt!2621536 rTail!78)) (= lambda!461307 lambda!461288))))

(declare-fun bs!1928309 () Bool)

(assert (= bs!1928309 (and b!7456410 b!7456401)))

(assert (=> bs!1928309 (not (= lambda!461307 lambda!461306))))

(assert (=> bs!1928301 (not (= lambda!461307 lambda!461303))))

(declare-fun bs!1928310 () Bool)

(assert (= bs!1928310 (and b!7456410 b!7456107)))

(assert (=> bs!1928310 (not (= lambda!461307 lambda!461285))))

(assert (=> b!7456410 true))

(assert (=> b!7456410 true))

(declare-fun bs!1928312 () Bool)

(declare-fun b!7456412 () Bool)

(assert (= bs!1928312 (and b!7456412 b!7455842)))

(declare-fun lambda!461309 () Int)

(assert (=> bs!1928312 (not (= lambda!461309 lambda!461262))))

(declare-fun bs!1928313 () Bool)

(assert (= bs!1928313 (and b!7456412 b!7456118)))

(assert (=> bs!1928313 (= (and (= s!13591 (_1!37544 lt!2621529)) (= (regOne!39540 lt!2621536) (regOne!39540 r2!5783)) (= (regTwo!39540 lt!2621536) (regTwo!39540 r2!5783))) (= lambda!461309 lambda!461287))))

(declare-fun bs!1928315 () Bool)

(assert (= bs!1928315 (and b!7456412 d!2297549)))

(assert (=> bs!1928315 (= (and (= (regOne!39540 lt!2621536) lt!2621553) (= (regTwo!39540 lt!2621536) rTail!78)) (= lambda!461309 lambda!461304))))

(declare-fun bs!1928317 () Bool)

(assert (= bs!1928317 (and b!7456412 b!7456129)))

(assert (=> bs!1928317 (= (and (= s!13591 (_2!37544 lt!2621529)) (= (regOne!39540 lt!2621536) (regOne!39540 rTail!78)) (= (regTwo!39540 lt!2621536) (regTwo!39540 rTail!78))) (= lambda!461309 lambda!461289))))

(assert (=> bs!1928312 (= (and (= (regOne!39540 lt!2621536) lt!2621553) (= (regTwo!39540 lt!2621536) rTail!78)) (= lambda!461309 lambda!461263))))

(declare-fun bs!1928318 () Bool)

(assert (= bs!1928318 (and b!7456412 b!7456105)))

(assert (=> bs!1928318 (not (= lambda!461309 lambda!461283))))

(declare-fun bs!1928320 () Bool)

(assert (= bs!1928320 (and b!7456412 b!7456116)))

(assert (=> bs!1928320 (not (= lambda!461309 lambda!461286))))

(declare-fun bs!1928321 () Bool)

(assert (= bs!1928321 (and b!7456412 b!7456069)))

(assert (=> bs!1928321 (not (= lambda!461309 lambda!461280))))

(declare-fun bs!1928323 () Bool)

(assert (= bs!1928323 (and b!7456412 b!7456071)))

(assert (=> bs!1928323 (= (and (= s!13591 (_1!37544 lt!2621529)) (= (regOne!39540 lt!2621536) (regOne!39540 lt!2621553)) (= (regTwo!39540 lt!2621536) (regTwo!39540 lt!2621553))) (= lambda!461309 lambda!461281))))

(declare-fun bs!1928324 () Bool)

(assert (= bs!1928324 (and b!7456412 b!7456399)))

(assert (=> bs!1928324 (not (= lambda!461309 lambda!461305))))

(declare-fun bs!1928326 () Bool)

(assert (= bs!1928326 (and b!7456412 b!7456410)))

(assert (=> bs!1928326 (not (= lambda!461309 lambda!461307))))

(declare-fun bs!1928327 () Bool)

(assert (= bs!1928327 (and b!7456412 d!2297545)))

(assert (=> bs!1928327 (not (= lambda!461309 lambda!461296))))

(declare-fun bs!1928329 () Bool)

(assert (= bs!1928329 (and b!7456412 b!7456127)))

(assert (=> bs!1928329 (not (= lambda!461309 lambda!461288))))

(declare-fun bs!1928331 () Bool)

(assert (= bs!1928331 (and b!7456412 b!7456401)))

(assert (=> bs!1928331 (= (and (= (regOne!39540 lt!2621536) (regOne!39540 lt!2621543)) (= (regTwo!39540 lt!2621536) (regTwo!39540 lt!2621543))) (= lambda!461309 lambda!461306))))

(assert (=> bs!1928315 (not (= lambda!461309 lambda!461303))))

(declare-fun bs!1928332 () Bool)

(assert (= bs!1928332 (and b!7456412 b!7456107)))

(assert (=> bs!1928332 (= (and (= s!13591 (_1!37544 lt!2621529)) (= (regOne!39540 lt!2621536) (regOne!39540 r1!5845)) (= (regTwo!39540 lt!2621536) (regTwo!39540 r1!5845))) (= lambda!461309 lambda!461285))))

(assert (=> b!7456412 true))

(assert (=> b!7456412 true))

(declare-fun b!7456405 () Bool)

(declare-fun e!4450374 () Bool)

(declare-fun e!4450371 () Bool)

(assert (=> b!7456405 (= e!4450374 e!4450371)))

(declare-fun res!2990942 () Bool)

(assert (=> b!7456405 (= res!2990942 (not (is-EmptyLang!19514 lt!2621536)))))

(assert (=> b!7456405 (=> (not res!2990942) (not e!4450371))))

(declare-fun c!1378602 () Bool)

(declare-fun call!684996 () Bool)

(declare-fun bm!684991 () Bool)

(assert (=> bm!684991 (= call!684996 (Exists!4135 (ite c!1378602 lambda!461307 lambda!461309)))))

(declare-fun b!7456406 () Bool)

(declare-fun call!684997 () Bool)

(assert (=> b!7456406 (= e!4450374 call!684997)))

(declare-fun b!7456407 () Bool)

(declare-fun e!4450372 () Bool)

(declare-fun e!4450368 () Bool)

(assert (=> b!7456407 (= e!4450372 e!4450368)))

(assert (=> b!7456407 (= c!1378602 (is-Star!19514 lt!2621536))))

(declare-fun b!7456408 () Bool)

(declare-fun c!1378599 () Bool)

(assert (=> b!7456408 (= c!1378599 (is-Union!19514 lt!2621536))))

(declare-fun e!4450370 () Bool)

(assert (=> b!7456408 (= e!4450370 e!4450372)))

(declare-fun d!2297565 () Bool)

(declare-fun c!1378600 () Bool)

(assert (=> d!2297565 (= c!1378600 (is-EmptyExpr!19514 lt!2621536))))

(assert (=> d!2297565 (= (matchRSpec!4193 lt!2621536 s!13591) e!4450374)))

(declare-fun b!7456409 () Bool)

(assert (=> b!7456409 (= e!4450370 (= s!13591 (Cons!72106 (c!1378480 lt!2621536) Nil!72106)))))

(declare-fun e!4450369 () Bool)

(assert (=> b!7456410 (= e!4450369 call!684996)))

(declare-fun b!7456411 () Bool)

(declare-fun res!2990940 () Bool)

(assert (=> b!7456411 (=> res!2990940 e!4450369)))

(assert (=> b!7456411 (= res!2990940 call!684997)))

(assert (=> b!7456411 (= e!4450368 e!4450369)))

(assert (=> b!7456412 (= e!4450368 call!684996)))

(declare-fun b!7456413 () Bool)

(declare-fun e!4450373 () Bool)

(assert (=> b!7456413 (= e!4450372 e!4450373)))

(declare-fun res!2990941 () Bool)

(assert (=> b!7456413 (= res!2990941 (matchRSpec!4193 (regOne!39541 lt!2621536) s!13591))))

(assert (=> b!7456413 (=> res!2990941 e!4450373)))

(declare-fun b!7456414 () Bool)

(assert (=> b!7456414 (= e!4450373 (matchRSpec!4193 (regTwo!39541 lt!2621536) s!13591))))

(declare-fun bm!684992 () Bool)

(assert (=> bm!684992 (= call!684997 (isEmpty!41115 s!13591))))

(declare-fun b!7456415 () Bool)

(declare-fun c!1378601 () Bool)

(assert (=> b!7456415 (= c!1378601 (is-ElementMatch!19514 lt!2621536))))

(assert (=> b!7456415 (= e!4450371 e!4450370)))

(assert (= (and d!2297565 c!1378600) b!7456406))

(assert (= (and d!2297565 (not c!1378600)) b!7456405))

(assert (= (and b!7456405 res!2990942) b!7456415))

(assert (= (and b!7456415 c!1378601) b!7456409))

(assert (= (and b!7456415 (not c!1378601)) b!7456408))

(assert (= (and b!7456408 c!1378599) b!7456413))

(assert (= (and b!7456408 (not c!1378599)) b!7456407))

(assert (= (and b!7456413 (not res!2990941)) b!7456414))

(assert (= (and b!7456407 c!1378602) b!7456411))

(assert (= (and b!7456407 (not c!1378602)) b!7456412))

(assert (= (and b!7456411 (not res!2990940)) b!7456410))

(assert (= (or b!7456410 b!7456412) bm!684991))

(assert (= (or b!7456406 b!7456411) bm!684992))

(declare-fun m!8060110 () Bool)

(assert (=> bm!684991 m!8060110))

(declare-fun m!8060112 () Bool)

(assert (=> b!7456413 m!8060112))

(declare-fun m!8060114 () Bool)

(assert (=> b!7456414 m!8060114))

(assert (=> bm!684992 m!8060100))

(assert (=> b!7455837 d!2297565))

(declare-fun bm!684998 () Bool)

(declare-fun call!685003 () Bool)

(assert (=> bm!684998 (= call!685003 (isEmpty!41115 s!13591))))

(declare-fun b!7456436 () Bool)

(declare-fun e!4450394 () Bool)

(assert (=> b!7456436 (= e!4450394 (= (head!15299 s!13591) (c!1378480 lt!2621536)))))

(declare-fun b!7456437 () Bool)

(declare-fun res!2990953 () Bool)

(assert (=> b!7456437 (=> (not res!2990953) (not e!4450394))))

(assert (=> b!7456437 (= res!2990953 (not call!685003))))

(declare-fun b!7456438 () Bool)

(declare-fun e!4450390 () Bool)

(declare-fun e!4450392 () Bool)

(assert (=> b!7456438 (= e!4450390 e!4450392)))

(declare-fun res!2990955 () Bool)

(assert (=> b!7456438 (=> res!2990955 e!4450392)))

(assert (=> b!7456438 (= res!2990955 call!685003)))

(declare-fun b!7456439 () Bool)

(declare-fun e!4450393 () Bool)

(declare-fun lt!2621674 () Bool)

(assert (=> b!7456439 (= e!4450393 (not lt!2621674))))

(declare-fun b!7456441 () Bool)

(declare-fun e!4450395 () Bool)

(assert (=> b!7456441 (= e!4450395 (nullable!8500 lt!2621536))))

(declare-fun b!7456442 () Bool)

(assert (=> b!7456442 (= e!4450392 (not (= (head!15299 s!13591) (c!1378480 lt!2621536))))))

(declare-fun b!7456443 () Bool)

(assert (=> b!7456443 (= e!4450395 (matchR!9278 (derivativeStep!5559 lt!2621536 (head!15299 s!13591)) (tail!14868 s!13591)))))

(declare-fun b!7456444 () Bool)

(declare-fun res!2990956 () Bool)

(declare-fun e!4450389 () Bool)

(assert (=> b!7456444 (=> res!2990956 e!4450389)))

(assert (=> b!7456444 (= res!2990956 e!4450394)))

(declare-fun res!2990957 () Bool)

(assert (=> b!7456444 (=> (not res!2990957) (not e!4450394))))

(assert (=> b!7456444 (= res!2990957 lt!2621674)))

(declare-fun b!7456445 () Bool)

(declare-fun e!4450391 () Bool)

(assert (=> b!7456445 (= e!4450391 e!4450393)))

(declare-fun c!1378609 () Bool)

(assert (=> b!7456445 (= c!1378609 (is-EmptyLang!19514 lt!2621536))))

(declare-fun d!2297569 () Bool)

(assert (=> d!2297569 e!4450391))

(declare-fun c!1378610 () Bool)

(assert (=> d!2297569 (= c!1378610 (is-EmptyExpr!19514 lt!2621536))))

(assert (=> d!2297569 (= lt!2621674 e!4450395)))

(declare-fun c!1378611 () Bool)

(assert (=> d!2297569 (= c!1378611 (isEmpty!41115 s!13591))))

(assert (=> d!2297569 (validRegex!10028 lt!2621536)))

(assert (=> d!2297569 (= (matchR!9278 lt!2621536 s!13591) lt!2621674)))

(declare-fun b!7456440 () Bool)

(declare-fun res!2990951 () Bool)

(assert (=> b!7456440 (=> (not res!2990951) (not e!4450394))))

(assert (=> b!7456440 (= res!2990951 (isEmpty!41115 (tail!14868 s!13591)))))

(declare-fun b!7456446 () Bool)

(declare-fun res!2990952 () Bool)

(assert (=> b!7456446 (=> res!2990952 e!4450389)))

(assert (=> b!7456446 (= res!2990952 (not (is-ElementMatch!19514 lt!2621536)))))

(assert (=> b!7456446 (= e!4450393 e!4450389)))

(declare-fun b!7456447 () Bool)

(assert (=> b!7456447 (= e!4450389 e!4450390)))

(declare-fun res!2990954 () Bool)

(assert (=> b!7456447 (=> (not res!2990954) (not e!4450390))))

(assert (=> b!7456447 (= res!2990954 (not lt!2621674))))

(declare-fun b!7456448 () Bool)

(declare-fun res!2990958 () Bool)

(assert (=> b!7456448 (=> res!2990958 e!4450392)))

(assert (=> b!7456448 (= res!2990958 (not (isEmpty!41115 (tail!14868 s!13591))))))

(declare-fun b!7456449 () Bool)

(assert (=> b!7456449 (= e!4450391 (= lt!2621674 call!685003))))

(assert (= (and d!2297569 c!1378611) b!7456441))

(assert (= (and d!2297569 (not c!1378611)) b!7456443))

(assert (= (and d!2297569 c!1378610) b!7456449))

(assert (= (and d!2297569 (not c!1378610)) b!7456445))

(assert (= (and b!7456445 c!1378609) b!7456439))

(assert (= (and b!7456445 (not c!1378609)) b!7456446))

(assert (= (and b!7456446 (not res!2990952)) b!7456444))

(assert (= (and b!7456444 res!2990957) b!7456437))

(assert (= (and b!7456437 res!2990953) b!7456440))

(assert (= (and b!7456440 res!2990951) b!7456436))

(assert (= (and b!7456444 (not res!2990956)) b!7456447))

(assert (= (and b!7456447 res!2990954) b!7456438))

(assert (= (and b!7456438 (not res!2990955)) b!7456448))

(assert (= (and b!7456448 (not res!2990958)) b!7456442))

(assert (= (or b!7456449 b!7456437 b!7456438) bm!684998))

(declare-fun m!8060116 () Bool)

(assert (=> b!7456440 m!8060116))

(assert (=> b!7456440 m!8060116))

(declare-fun m!8060118 () Bool)

(assert (=> b!7456440 m!8060118))

(assert (=> d!2297569 m!8060100))

(declare-fun m!8060120 () Bool)

(assert (=> d!2297569 m!8060120))

(declare-fun m!8060122 () Bool)

(assert (=> b!7456443 m!8060122))

(assert (=> b!7456443 m!8060122))

(declare-fun m!8060124 () Bool)

(assert (=> b!7456443 m!8060124))

(assert (=> b!7456443 m!8060116))

(assert (=> b!7456443 m!8060124))

(assert (=> b!7456443 m!8060116))

(declare-fun m!8060126 () Bool)

(assert (=> b!7456443 m!8060126))

(assert (=> b!7456442 m!8060122))

(assert (=> b!7456448 m!8060116))

(assert (=> b!7456448 m!8060116))

(assert (=> b!7456448 m!8060118))

(declare-fun m!8060128 () Bool)

(assert (=> b!7456441 m!8060128))

(assert (=> bm!684998 m!8060100))

(assert (=> b!7456436 m!8060122))

(assert (=> b!7455837 d!2297569))

(declare-fun d!2297571 () Bool)

(assert (=> d!2297571 (= (matchR!9278 lt!2621536 s!13591) (matchRSpec!4193 lt!2621536 s!13591))))

(declare-fun lt!2621675 () Unit!165863)

(assert (=> d!2297571 (= lt!2621675 (choose!57628 lt!2621536 s!13591))))

(assert (=> d!2297571 (validRegex!10028 lt!2621536)))

(assert (=> d!2297571 (= (mainMatchTheorem!4187 lt!2621536 s!13591) lt!2621675)))

(declare-fun bs!1928337 () Bool)

(assert (= bs!1928337 d!2297571))

(assert (=> bs!1928337 m!8059746))

(assert (=> bs!1928337 m!8059750))

(declare-fun m!8060130 () Bool)

(assert (=> bs!1928337 m!8060130))

(assert (=> bs!1928337 m!8060120))

(assert (=> b!7455837 d!2297571))

(declare-fun bm!684999 () Bool)

(declare-fun call!685004 () Bool)

(assert (=> bm!684999 (= call!685004 (isEmpty!41115 s!13591))))

(declare-fun b!7456450 () Bool)

(declare-fun e!4450401 () Bool)

(assert (=> b!7456450 (= e!4450401 (= (head!15299 s!13591) (c!1378480 lt!2621543)))))

(declare-fun b!7456451 () Bool)

(declare-fun res!2990961 () Bool)

(assert (=> b!7456451 (=> (not res!2990961) (not e!4450401))))

(assert (=> b!7456451 (= res!2990961 (not call!685004))))

(declare-fun b!7456452 () Bool)

(declare-fun e!4450397 () Bool)

(declare-fun e!4450399 () Bool)

(assert (=> b!7456452 (= e!4450397 e!4450399)))

(declare-fun res!2990963 () Bool)

(assert (=> b!7456452 (=> res!2990963 e!4450399)))

(assert (=> b!7456452 (= res!2990963 call!685004)))

(declare-fun b!7456453 () Bool)

(declare-fun e!4450400 () Bool)

(declare-fun lt!2621676 () Bool)

(assert (=> b!7456453 (= e!4450400 (not lt!2621676))))

(declare-fun b!7456455 () Bool)

(declare-fun e!4450402 () Bool)

(assert (=> b!7456455 (= e!4450402 (nullable!8500 lt!2621543))))

(declare-fun b!7456456 () Bool)

(assert (=> b!7456456 (= e!4450399 (not (= (head!15299 s!13591) (c!1378480 lt!2621543))))))

(declare-fun b!7456457 () Bool)

(assert (=> b!7456457 (= e!4450402 (matchR!9278 (derivativeStep!5559 lt!2621543 (head!15299 s!13591)) (tail!14868 s!13591)))))

(declare-fun b!7456458 () Bool)

(declare-fun res!2990964 () Bool)

(declare-fun e!4450396 () Bool)

(assert (=> b!7456458 (=> res!2990964 e!4450396)))

(assert (=> b!7456458 (= res!2990964 e!4450401)))

(declare-fun res!2990965 () Bool)

(assert (=> b!7456458 (=> (not res!2990965) (not e!4450401))))

(assert (=> b!7456458 (= res!2990965 lt!2621676)))

(declare-fun b!7456459 () Bool)

(declare-fun e!4450398 () Bool)

(assert (=> b!7456459 (= e!4450398 e!4450400)))

(declare-fun c!1378612 () Bool)

(assert (=> b!7456459 (= c!1378612 (is-EmptyLang!19514 lt!2621543))))

(declare-fun d!2297573 () Bool)

(assert (=> d!2297573 e!4450398))

(declare-fun c!1378613 () Bool)

(assert (=> d!2297573 (= c!1378613 (is-EmptyExpr!19514 lt!2621543))))

(assert (=> d!2297573 (= lt!2621676 e!4450402)))

(declare-fun c!1378614 () Bool)

(assert (=> d!2297573 (= c!1378614 (isEmpty!41115 s!13591))))

(assert (=> d!2297573 (validRegex!10028 lt!2621543)))

(assert (=> d!2297573 (= (matchR!9278 lt!2621543 s!13591) lt!2621676)))

(declare-fun b!7456454 () Bool)

(declare-fun res!2990959 () Bool)

(assert (=> b!7456454 (=> (not res!2990959) (not e!4450401))))

(assert (=> b!7456454 (= res!2990959 (isEmpty!41115 (tail!14868 s!13591)))))

(declare-fun b!7456460 () Bool)

(declare-fun res!2990960 () Bool)

(assert (=> b!7456460 (=> res!2990960 e!4450396)))

(assert (=> b!7456460 (= res!2990960 (not (is-ElementMatch!19514 lt!2621543)))))

(assert (=> b!7456460 (= e!4450400 e!4450396)))

(declare-fun b!7456461 () Bool)

(assert (=> b!7456461 (= e!4450396 e!4450397)))

(declare-fun res!2990962 () Bool)

(assert (=> b!7456461 (=> (not res!2990962) (not e!4450397))))

(assert (=> b!7456461 (= res!2990962 (not lt!2621676))))

(declare-fun b!7456462 () Bool)

(declare-fun res!2990966 () Bool)

(assert (=> b!7456462 (=> res!2990966 e!4450399)))

(assert (=> b!7456462 (= res!2990966 (not (isEmpty!41115 (tail!14868 s!13591))))))

(declare-fun b!7456463 () Bool)

(assert (=> b!7456463 (= e!4450398 (= lt!2621676 call!685004))))

(assert (= (and d!2297573 c!1378614) b!7456455))

(assert (= (and d!2297573 (not c!1378614)) b!7456457))

(assert (= (and d!2297573 c!1378613) b!7456463))

(assert (= (and d!2297573 (not c!1378613)) b!7456459))

(assert (= (and b!7456459 c!1378612) b!7456453))

(assert (= (and b!7456459 (not c!1378612)) b!7456460))

(assert (= (and b!7456460 (not res!2990960)) b!7456458))

(assert (= (and b!7456458 res!2990965) b!7456451))

(assert (= (and b!7456451 res!2990961) b!7456454))

(assert (= (and b!7456454 res!2990959) b!7456450))

(assert (= (and b!7456458 (not res!2990964)) b!7456461))

(assert (= (and b!7456461 res!2990962) b!7456452))

(assert (= (and b!7456452 (not res!2990963)) b!7456462))

(assert (= (and b!7456462 (not res!2990966)) b!7456456))

(assert (= (or b!7456463 b!7456451 b!7456452) bm!684999))

(assert (=> b!7456454 m!8060116))

(assert (=> b!7456454 m!8060116))

(assert (=> b!7456454 m!8060118))

(assert (=> d!2297573 m!8060100))

(assert (=> d!2297573 m!8059714))

(assert (=> b!7456457 m!8060122))

(assert (=> b!7456457 m!8060122))

(declare-fun m!8060132 () Bool)

(assert (=> b!7456457 m!8060132))

(assert (=> b!7456457 m!8060116))

(assert (=> b!7456457 m!8060132))

(assert (=> b!7456457 m!8060116))

(declare-fun m!8060134 () Bool)

(assert (=> b!7456457 m!8060134))

(assert (=> b!7456456 m!8060122))

(assert (=> b!7456462 m!8060116))

(assert (=> b!7456462 m!8060116))

(assert (=> b!7456462 m!8060118))

(declare-fun m!8060136 () Bool)

(assert (=> b!7456455 m!8060136))

(assert (=> bm!684999 m!8060100))

(assert (=> b!7456450 m!8060122))

(assert (=> b!7455837 d!2297573))

(declare-fun d!2297575 () Bool)

(declare-fun e!4450415 () Bool)

(assert (=> d!2297575 e!4450415))

(declare-fun res!2990974 () Bool)

(assert (=> d!2297575 (=> (not res!2990974) (not e!4450415))))

(declare-fun lt!2621679 () List!72230)

(declare-fun content!15251 (List!72230) (Set C!39302))

(assert (=> d!2297575 (= res!2990974 (= (content!15251 lt!2621679) (set.union (content!15251 (_1!37544 lt!2621529)) (content!15251 (_2!37544 lt!2621529)))))))

(declare-fun e!4450414 () List!72230)

(assert (=> d!2297575 (= lt!2621679 e!4450414)))

(declare-fun c!1378621 () Bool)

(assert (=> d!2297575 (= c!1378621 (is-Nil!72106 (_1!37544 lt!2621529)))))

(assert (=> d!2297575 (= (++!17172 (_1!37544 lt!2621529) (_2!37544 lt!2621529)) lt!2621679)))

(declare-fun b!7456485 () Bool)

(declare-fun res!2990975 () Bool)

(assert (=> b!7456485 (=> (not res!2990975) (not e!4450415))))

(declare-fun size!42187 (List!72230) Int)

(assert (=> b!7456485 (= res!2990975 (= (size!42187 lt!2621679) (+ (size!42187 (_1!37544 lt!2621529)) (size!42187 (_2!37544 lt!2621529)))))))

(declare-fun b!7456484 () Bool)

(assert (=> b!7456484 (= e!4450414 (Cons!72106 (h!78554 (_1!37544 lt!2621529)) (++!17172 (t!386799 (_1!37544 lt!2621529)) (_2!37544 lt!2621529))))))

(declare-fun b!7456486 () Bool)

(assert (=> b!7456486 (= e!4450415 (or (not (= (_2!37544 lt!2621529) Nil!72106)) (= lt!2621679 (_1!37544 lt!2621529))))))

(declare-fun b!7456483 () Bool)

(assert (=> b!7456483 (= e!4450414 (_2!37544 lt!2621529))))

(assert (= (and d!2297575 c!1378621) b!7456483))

(assert (= (and d!2297575 (not c!1378621)) b!7456484))

(assert (= (and d!2297575 res!2990974) b!7456485))

(assert (= (and b!7456485 res!2990975) b!7456486))

(declare-fun m!8060146 () Bool)

(assert (=> d!2297575 m!8060146))

(declare-fun m!8060148 () Bool)

(assert (=> d!2297575 m!8060148))

(declare-fun m!8060150 () Bool)

(assert (=> d!2297575 m!8060150))

(declare-fun m!8060152 () Bool)

(assert (=> b!7456485 m!8060152))

(declare-fun m!8060154 () Bool)

(assert (=> b!7456485 m!8060154))

(declare-fun m!8060156 () Bool)

(assert (=> b!7456485 m!8060156))

(declare-fun m!8060158 () Bool)

(assert (=> b!7456484 m!8060158))

(assert (=> bm!684918 d!2297575))

(declare-fun bs!1928356 () Bool)

(declare-fun b!7456492 () Bool)

(assert (= bs!1928356 (and b!7456492 b!7455842)))

(declare-fun lambda!461312 () Int)

(assert (=> bs!1928356 (not (= lambda!461312 lambda!461262))))

(declare-fun bs!1928357 () Bool)

(assert (= bs!1928357 (and b!7456492 b!7456118)))

(assert (=> bs!1928357 (not (= lambda!461312 lambda!461287))))

(declare-fun bs!1928358 () Bool)

(assert (= bs!1928358 (and b!7456492 d!2297549)))

(assert (=> bs!1928358 (not (= lambda!461312 lambda!461304))))

(declare-fun bs!1928359 () Bool)

(assert (= bs!1928359 (and b!7456492 b!7456129)))

(assert (=> bs!1928359 (not (= lambda!461312 lambda!461289))))

(assert (=> bs!1928356 (not (= lambda!461312 lambda!461263))))

(declare-fun bs!1928361 () Bool)

(assert (= bs!1928361 (and b!7456492 b!7456105)))

(assert (=> bs!1928361 (= (and (= s!13591 (_1!37544 lt!2621529)) (= (reg!19843 lt!2621539) (reg!19843 r1!5845)) (= lt!2621539 r1!5845)) (= lambda!461312 lambda!461283))))

(declare-fun bs!1928362 () Bool)

(assert (= bs!1928362 (and b!7456492 b!7456116)))

(assert (=> bs!1928362 (= (and (= s!13591 (_1!37544 lt!2621529)) (= (reg!19843 lt!2621539) (reg!19843 r2!5783)) (= lt!2621539 r2!5783)) (= lambda!461312 lambda!461286))))

(declare-fun bs!1928364 () Bool)

(assert (= bs!1928364 (and b!7456492 b!7456069)))

(assert (=> bs!1928364 (= (and (= s!13591 (_1!37544 lt!2621529)) (= (reg!19843 lt!2621539) (reg!19843 lt!2621553)) (= lt!2621539 lt!2621553)) (= lambda!461312 lambda!461280))))

(declare-fun bs!1928366 () Bool)

(assert (= bs!1928366 (and b!7456492 b!7456071)))

(assert (=> bs!1928366 (not (= lambda!461312 lambda!461281))))

(declare-fun bs!1928367 () Bool)

(assert (= bs!1928367 (and b!7456492 b!7456399)))

(assert (=> bs!1928367 (= (and (= (reg!19843 lt!2621539) (reg!19843 lt!2621543)) (= lt!2621539 lt!2621543)) (= lambda!461312 lambda!461305))))

(declare-fun bs!1928369 () Bool)

(assert (= bs!1928369 (and b!7456492 b!7456412)))

(assert (=> bs!1928369 (not (= lambda!461312 lambda!461309))))

(declare-fun bs!1928370 () Bool)

(assert (= bs!1928370 (and b!7456492 b!7456410)))

(assert (=> bs!1928370 (= (and (= (reg!19843 lt!2621539) (reg!19843 lt!2621536)) (= lt!2621539 lt!2621536)) (= lambda!461312 lambda!461307))))

(declare-fun bs!1928372 () Bool)

(assert (= bs!1928372 (and b!7456492 d!2297545)))

(assert (=> bs!1928372 (not (= lambda!461312 lambda!461296))))

(declare-fun bs!1928373 () Bool)

(assert (= bs!1928373 (and b!7456492 b!7456127)))

(assert (=> bs!1928373 (= (and (= s!13591 (_2!37544 lt!2621529)) (= (reg!19843 lt!2621539) (reg!19843 rTail!78)) (= lt!2621539 rTail!78)) (= lambda!461312 lambda!461288))))

(declare-fun bs!1928375 () Bool)

(assert (= bs!1928375 (and b!7456492 b!7456401)))

(assert (=> bs!1928375 (not (= lambda!461312 lambda!461306))))

(assert (=> bs!1928358 (not (= lambda!461312 lambda!461303))))

(declare-fun bs!1928377 () Bool)

(assert (= bs!1928377 (and b!7456492 b!7456107)))

(assert (=> bs!1928377 (not (= lambda!461312 lambda!461285))))

(assert (=> b!7456492 true))

(assert (=> b!7456492 true))

(declare-fun bs!1928381 () Bool)

(declare-fun b!7456494 () Bool)

(assert (= bs!1928381 (and b!7456494 b!7455842)))

(declare-fun lambda!461314 () Int)

(assert (=> bs!1928381 (not (= lambda!461314 lambda!461262))))

(declare-fun bs!1928383 () Bool)

(assert (= bs!1928383 (and b!7456494 b!7456118)))

(assert (=> bs!1928383 (= (and (= s!13591 (_1!37544 lt!2621529)) (= (regOne!39540 lt!2621539) (regOne!39540 r2!5783)) (= (regTwo!39540 lt!2621539) (regTwo!39540 r2!5783))) (= lambda!461314 lambda!461287))))

(declare-fun bs!1928384 () Bool)

(assert (= bs!1928384 (and b!7456494 d!2297549)))

(assert (=> bs!1928384 (= (and (= (regOne!39540 lt!2621539) lt!2621553) (= (regTwo!39540 lt!2621539) rTail!78)) (= lambda!461314 lambda!461304))))

(declare-fun bs!1928385 () Bool)

(assert (= bs!1928385 (and b!7456494 b!7456129)))

(assert (=> bs!1928385 (= (and (= s!13591 (_2!37544 lt!2621529)) (= (regOne!39540 lt!2621539) (regOne!39540 rTail!78)) (= (regTwo!39540 lt!2621539) (regTwo!39540 rTail!78))) (= lambda!461314 lambda!461289))))

(declare-fun bs!1928387 () Bool)

(assert (= bs!1928387 (and b!7456494 b!7456492)))

(assert (=> bs!1928387 (not (= lambda!461314 lambda!461312))))

(assert (=> bs!1928381 (= (and (= (regOne!39540 lt!2621539) lt!2621553) (= (regTwo!39540 lt!2621539) rTail!78)) (= lambda!461314 lambda!461263))))

(declare-fun bs!1928388 () Bool)

(assert (= bs!1928388 (and b!7456494 b!7456105)))

(assert (=> bs!1928388 (not (= lambda!461314 lambda!461283))))

(declare-fun bs!1928389 () Bool)

(assert (= bs!1928389 (and b!7456494 b!7456116)))

(assert (=> bs!1928389 (not (= lambda!461314 lambda!461286))))

(declare-fun bs!1928390 () Bool)

(assert (= bs!1928390 (and b!7456494 b!7456069)))

(assert (=> bs!1928390 (not (= lambda!461314 lambda!461280))))

(declare-fun bs!1928391 () Bool)

(assert (= bs!1928391 (and b!7456494 b!7456071)))

(assert (=> bs!1928391 (= (and (= s!13591 (_1!37544 lt!2621529)) (= (regOne!39540 lt!2621539) (regOne!39540 lt!2621553)) (= (regTwo!39540 lt!2621539) (regTwo!39540 lt!2621553))) (= lambda!461314 lambda!461281))))

(declare-fun bs!1928392 () Bool)

(assert (= bs!1928392 (and b!7456494 b!7456399)))

(assert (=> bs!1928392 (not (= lambda!461314 lambda!461305))))

(declare-fun bs!1928393 () Bool)

(assert (= bs!1928393 (and b!7456494 b!7456412)))

(assert (=> bs!1928393 (= (and (= (regOne!39540 lt!2621539) (regOne!39540 lt!2621536)) (= (regTwo!39540 lt!2621539) (regTwo!39540 lt!2621536))) (= lambda!461314 lambda!461309))))

(declare-fun bs!1928394 () Bool)

(assert (= bs!1928394 (and b!7456494 b!7456410)))

(assert (=> bs!1928394 (not (= lambda!461314 lambda!461307))))

(declare-fun bs!1928395 () Bool)

(assert (= bs!1928395 (and b!7456494 d!2297545)))

(assert (=> bs!1928395 (not (= lambda!461314 lambda!461296))))

(declare-fun bs!1928396 () Bool)

(assert (= bs!1928396 (and b!7456494 b!7456127)))

(assert (=> bs!1928396 (not (= lambda!461314 lambda!461288))))

(declare-fun bs!1928397 () Bool)

(assert (= bs!1928397 (and b!7456494 b!7456401)))

(assert (=> bs!1928397 (= (and (= (regOne!39540 lt!2621539) (regOne!39540 lt!2621543)) (= (regTwo!39540 lt!2621539) (regTwo!39540 lt!2621543))) (= lambda!461314 lambda!461306))))

(assert (=> bs!1928384 (not (= lambda!461314 lambda!461303))))

(declare-fun bs!1928398 () Bool)

(assert (= bs!1928398 (and b!7456494 b!7456107)))

(assert (=> bs!1928398 (= (and (= s!13591 (_1!37544 lt!2621529)) (= (regOne!39540 lt!2621539) (regOne!39540 r1!5845)) (= (regTwo!39540 lt!2621539) (regTwo!39540 r1!5845))) (= lambda!461314 lambda!461285))))

(assert (=> b!7456494 true))

(assert (=> b!7456494 true))

(declare-fun b!7456487 () Bool)

(declare-fun e!4450422 () Bool)

(declare-fun e!4450419 () Bool)

(assert (=> b!7456487 (= e!4450422 e!4450419)))

(declare-fun res!2990978 () Bool)

(assert (=> b!7456487 (= res!2990978 (not (is-EmptyLang!19514 lt!2621539)))))

(assert (=> b!7456487 (=> (not res!2990978) (not e!4450419))))

(declare-fun call!685007 () Bool)

(declare-fun c!1378625 () Bool)

(declare-fun bm!685002 () Bool)

(assert (=> bm!685002 (= call!685007 (Exists!4135 (ite c!1378625 lambda!461312 lambda!461314)))))

(declare-fun b!7456488 () Bool)

(declare-fun call!685008 () Bool)

(assert (=> b!7456488 (= e!4450422 call!685008)))

(declare-fun b!7456489 () Bool)

(declare-fun e!4450420 () Bool)

(declare-fun e!4450416 () Bool)

(assert (=> b!7456489 (= e!4450420 e!4450416)))

(assert (=> b!7456489 (= c!1378625 (is-Star!19514 lt!2621539))))

(declare-fun b!7456490 () Bool)

(declare-fun c!1378622 () Bool)

(assert (=> b!7456490 (= c!1378622 (is-Union!19514 lt!2621539))))

(declare-fun e!4450418 () Bool)

(assert (=> b!7456490 (= e!4450418 e!4450420)))

(declare-fun d!2297579 () Bool)

(declare-fun c!1378623 () Bool)

(assert (=> d!2297579 (= c!1378623 (is-EmptyExpr!19514 lt!2621539))))

(assert (=> d!2297579 (= (matchRSpec!4193 lt!2621539 s!13591) e!4450422)))

(declare-fun b!7456491 () Bool)

(assert (=> b!7456491 (= e!4450418 (= s!13591 (Cons!72106 (c!1378480 lt!2621539) Nil!72106)))))

(declare-fun e!4450417 () Bool)

(assert (=> b!7456492 (= e!4450417 call!685007)))

(declare-fun b!7456493 () Bool)

(declare-fun res!2990976 () Bool)

(assert (=> b!7456493 (=> res!2990976 e!4450417)))

(assert (=> b!7456493 (= res!2990976 call!685008)))

(assert (=> b!7456493 (= e!4450416 e!4450417)))

(assert (=> b!7456494 (= e!4450416 call!685007)))

(declare-fun b!7456495 () Bool)

(declare-fun e!4450421 () Bool)

(assert (=> b!7456495 (= e!4450420 e!4450421)))

(declare-fun res!2990977 () Bool)

(assert (=> b!7456495 (= res!2990977 (matchRSpec!4193 (regOne!39541 lt!2621539) s!13591))))

(assert (=> b!7456495 (=> res!2990977 e!4450421)))

(declare-fun b!7456496 () Bool)

(assert (=> b!7456496 (= e!4450421 (matchRSpec!4193 (regTwo!39541 lt!2621539) s!13591))))

(declare-fun bm!685003 () Bool)

(assert (=> bm!685003 (= call!685008 (isEmpty!41115 s!13591))))

(declare-fun b!7456497 () Bool)

(declare-fun c!1378624 () Bool)

(assert (=> b!7456497 (= c!1378624 (is-ElementMatch!19514 lt!2621539))))

(assert (=> b!7456497 (= e!4450419 e!4450418)))

(assert (= (and d!2297579 c!1378623) b!7456488))

(assert (= (and d!2297579 (not c!1378623)) b!7456487))

(assert (= (and b!7456487 res!2990978) b!7456497))

(assert (= (and b!7456497 c!1378624) b!7456491))

(assert (= (and b!7456497 (not c!1378624)) b!7456490))

(assert (= (and b!7456490 c!1378622) b!7456495))

(assert (= (and b!7456490 (not c!1378622)) b!7456489))

(assert (= (and b!7456495 (not res!2990977)) b!7456496))

(assert (= (and b!7456489 c!1378625) b!7456493))

(assert (= (and b!7456489 (not c!1378625)) b!7456494))

(assert (= (and b!7456493 (not res!2990976)) b!7456492))

(assert (= (or b!7456492 b!7456494) bm!685002))

(assert (= (or b!7456488 b!7456493) bm!685003))

(declare-fun m!8060170 () Bool)

(assert (=> bm!685002 m!8060170))

(declare-fun m!8060172 () Bool)

(assert (=> b!7456495 m!8060172))

(declare-fun m!8060174 () Bool)

(assert (=> b!7456496 m!8060174))

(assert (=> bm!685003 m!8060100))

(assert (=> b!7455846 d!2297579))

(declare-fun d!2297587 () Bool)

(assert (=> d!2297587 (= (matchR!9278 lt!2621539 s!13591) (matchRSpec!4193 lt!2621539 s!13591))))

(declare-fun lt!2621682 () Unit!165863)

(assert (=> d!2297587 (= lt!2621682 (choose!57628 lt!2621539 s!13591))))

(assert (=> d!2297587 (validRegex!10028 lt!2621539)))

(assert (=> d!2297587 (= (mainMatchTheorem!4187 lt!2621539 s!13591) lt!2621682)))

(declare-fun bs!1928401 () Bool)

(assert (= bs!1928401 d!2297587))

(assert (=> bs!1928401 m!8059762))

(assert (=> bs!1928401 m!8059758))

(declare-fun m!8060176 () Bool)

(assert (=> bs!1928401 m!8060176))

(declare-fun m!8060178 () Bool)

(assert (=> bs!1928401 m!8060178))

(assert (=> b!7455846 d!2297587))

(declare-fun bm!685006 () Bool)

(declare-fun call!685011 () Bool)

(assert (=> bm!685006 (= call!685011 (isEmpty!41115 s!13591))))

(declare-fun b!7456509 () Bool)

(declare-fun e!4450435 () Bool)

(assert (=> b!7456509 (= e!4450435 (= (head!15299 s!13591) (c!1378480 lt!2621539)))))

(declare-fun b!7456510 () Bool)

(declare-fun res!2990984 () Bool)

(assert (=> b!7456510 (=> (not res!2990984) (not e!4450435))))

(assert (=> b!7456510 (= res!2990984 (not call!685011))))

(declare-fun b!7456511 () Bool)

(declare-fun e!4450431 () Bool)

(declare-fun e!4450433 () Bool)

(assert (=> b!7456511 (= e!4450431 e!4450433)))

(declare-fun res!2990986 () Bool)

(assert (=> b!7456511 (=> res!2990986 e!4450433)))

(assert (=> b!7456511 (= res!2990986 call!685011)))

(declare-fun b!7456512 () Bool)

(declare-fun e!4450434 () Bool)

(declare-fun lt!2621683 () Bool)

(assert (=> b!7456512 (= e!4450434 (not lt!2621683))))

(declare-fun b!7456514 () Bool)

(declare-fun e!4450436 () Bool)

(assert (=> b!7456514 (= e!4450436 (nullable!8500 lt!2621539))))

(declare-fun b!7456515 () Bool)

(assert (=> b!7456515 (= e!4450433 (not (= (head!15299 s!13591) (c!1378480 lt!2621539))))))

(declare-fun b!7456516 () Bool)

(assert (=> b!7456516 (= e!4450436 (matchR!9278 (derivativeStep!5559 lt!2621539 (head!15299 s!13591)) (tail!14868 s!13591)))))

(declare-fun b!7456517 () Bool)

(declare-fun res!2990987 () Bool)

(declare-fun e!4450430 () Bool)

(assert (=> b!7456517 (=> res!2990987 e!4450430)))

(assert (=> b!7456517 (= res!2990987 e!4450435)))

(declare-fun res!2990988 () Bool)

(assert (=> b!7456517 (=> (not res!2990988) (not e!4450435))))

(assert (=> b!7456517 (= res!2990988 lt!2621683)))

(declare-fun b!7456518 () Bool)

(declare-fun e!4450432 () Bool)

(assert (=> b!7456518 (= e!4450432 e!4450434)))

(declare-fun c!1378630 () Bool)

(assert (=> b!7456518 (= c!1378630 (is-EmptyLang!19514 lt!2621539))))

(declare-fun d!2297589 () Bool)

(assert (=> d!2297589 e!4450432))

(declare-fun c!1378631 () Bool)

(assert (=> d!2297589 (= c!1378631 (is-EmptyExpr!19514 lt!2621539))))

(assert (=> d!2297589 (= lt!2621683 e!4450436)))

(declare-fun c!1378632 () Bool)

(assert (=> d!2297589 (= c!1378632 (isEmpty!41115 s!13591))))

(assert (=> d!2297589 (validRegex!10028 lt!2621539)))

(assert (=> d!2297589 (= (matchR!9278 lt!2621539 s!13591) lt!2621683)))

(declare-fun b!7456513 () Bool)

(declare-fun res!2990982 () Bool)

(assert (=> b!7456513 (=> (not res!2990982) (not e!4450435))))

(assert (=> b!7456513 (= res!2990982 (isEmpty!41115 (tail!14868 s!13591)))))

(declare-fun b!7456519 () Bool)

(declare-fun res!2990983 () Bool)

(assert (=> b!7456519 (=> res!2990983 e!4450430)))

(assert (=> b!7456519 (= res!2990983 (not (is-ElementMatch!19514 lt!2621539)))))

(assert (=> b!7456519 (= e!4450434 e!4450430)))

(declare-fun b!7456520 () Bool)

(assert (=> b!7456520 (= e!4450430 e!4450431)))

(declare-fun res!2990985 () Bool)

(assert (=> b!7456520 (=> (not res!2990985) (not e!4450431))))

(assert (=> b!7456520 (= res!2990985 (not lt!2621683))))

(declare-fun b!7456521 () Bool)

(declare-fun res!2990989 () Bool)

(assert (=> b!7456521 (=> res!2990989 e!4450433)))

(assert (=> b!7456521 (= res!2990989 (not (isEmpty!41115 (tail!14868 s!13591))))))

(declare-fun b!7456522 () Bool)

(assert (=> b!7456522 (= e!4450432 (= lt!2621683 call!685011))))

(assert (= (and d!2297589 c!1378632) b!7456514))

(assert (= (and d!2297589 (not c!1378632)) b!7456516))

(assert (= (and d!2297589 c!1378631) b!7456522))

(assert (= (and d!2297589 (not c!1378631)) b!7456518))

(assert (= (and b!7456518 c!1378630) b!7456512))

(assert (= (and b!7456518 (not c!1378630)) b!7456519))

(assert (= (and b!7456519 (not res!2990983)) b!7456517))

(assert (= (and b!7456517 res!2990988) b!7456510))

(assert (= (and b!7456510 res!2990984) b!7456513))

(assert (= (and b!7456513 res!2990982) b!7456509))

(assert (= (and b!7456517 (not res!2990987)) b!7456520))

(assert (= (and b!7456520 res!2990985) b!7456511))

(assert (= (and b!7456511 (not res!2990986)) b!7456521))

(assert (= (and b!7456521 (not res!2990989)) b!7456515))

(assert (= (or b!7456522 b!7456510 b!7456511) bm!685006))

(assert (=> b!7456513 m!8060116))

(assert (=> b!7456513 m!8060116))

(assert (=> b!7456513 m!8060118))

(assert (=> d!2297589 m!8060100))

(assert (=> d!2297589 m!8060178))

(assert (=> b!7456516 m!8060122))

(assert (=> b!7456516 m!8060122))

(declare-fun m!8060180 () Bool)

(assert (=> b!7456516 m!8060180))

(assert (=> b!7456516 m!8060116))

(assert (=> b!7456516 m!8060180))

(assert (=> b!7456516 m!8060116))

(declare-fun m!8060182 () Bool)

(assert (=> b!7456516 m!8060182))

(assert (=> b!7456515 m!8060122))

(assert (=> b!7456521 m!8060116))

(assert (=> b!7456521 m!8060116))

(assert (=> b!7456521 m!8060118))

(declare-fun m!8060184 () Bool)

(assert (=> b!7456514 m!8060184))

(assert (=> bm!685006 m!8060100))

(assert (=> b!7456509 m!8060122))

(assert (=> b!7455846 d!2297589))

(declare-fun bs!1928407 () Bool)

(declare-fun b!7456528 () Bool)

(assert (= bs!1928407 (and b!7456528 b!7455842)))

(declare-fun lambda!461316 () Int)

(assert (=> bs!1928407 (not (= lambda!461316 lambda!461262))))

(declare-fun bs!1928409 () Bool)

(assert (= bs!1928409 (and b!7456528 b!7456118)))

(assert (=> bs!1928409 (not (= lambda!461316 lambda!461287))))

(declare-fun bs!1928410 () Bool)

(assert (= bs!1928410 (and b!7456528 d!2297549)))

(assert (=> bs!1928410 (not (= lambda!461316 lambda!461304))))

(declare-fun bs!1928412 () Bool)

(assert (= bs!1928412 (and b!7456528 b!7456492)))

(assert (=> bs!1928412 (= (and (= (reg!19843 lt!2621532) (reg!19843 lt!2621539)) (= lt!2621532 lt!2621539)) (= lambda!461316 lambda!461312))))

(assert (=> bs!1928407 (not (= lambda!461316 lambda!461263))))

(declare-fun bs!1928414 () Bool)

(assert (= bs!1928414 (and b!7456528 b!7456105)))

(assert (=> bs!1928414 (= (and (= s!13591 (_1!37544 lt!2621529)) (= (reg!19843 lt!2621532) (reg!19843 r1!5845)) (= lt!2621532 r1!5845)) (= lambda!461316 lambda!461283))))

(declare-fun bs!1928416 () Bool)

(assert (= bs!1928416 (and b!7456528 b!7456116)))

(assert (=> bs!1928416 (= (and (= s!13591 (_1!37544 lt!2621529)) (= (reg!19843 lt!2621532) (reg!19843 r2!5783)) (= lt!2621532 r2!5783)) (= lambda!461316 lambda!461286))))

(declare-fun bs!1928417 () Bool)

(assert (= bs!1928417 (and b!7456528 b!7456069)))

(assert (=> bs!1928417 (= (and (= s!13591 (_1!37544 lt!2621529)) (= (reg!19843 lt!2621532) (reg!19843 lt!2621553)) (= lt!2621532 lt!2621553)) (= lambda!461316 lambda!461280))))

(declare-fun bs!1928419 () Bool)

(assert (= bs!1928419 (and b!7456528 b!7456071)))

(assert (=> bs!1928419 (not (= lambda!461316 lambda!461281))))

(declare-fun bs!1928420 () Bool)

(assert (= bs!1928420 (and b!7456528 b!7456399)))

(assert (=> bs!1928420 (= (and (= (reg!19843 lt!2621532) (reg!19843 lt!2621543)) (= lt!2621532 lt!2621543)) (= lambda!461316 lambda!461305))))

(declare-fun bs!1928421 () Bool)

(assert (= bs!1928421 (and b!7456528 b!7456412)))

(assert (=> bs!1928421 (not (= lambda!461316 lambda!461309))))

(declare-fun bs!1928423 () Bool)

(assert (= bs!1928423 (and b!7456528 b!7456410)))

(assert (=> bs!1928423 (= (and (= (reg!19843 lt!2621532) (reg!19843 lt!2621536)) (= lt!2621532 lt!2621536)) (= lambda!461316 lambda!461307))))

(declare-fun bs!1928424 () Bool)

(assert (= bs!1928424 (and b!7456528 d!2297545)))

(assert (=> bs!1928424 (not (= lambda!461316 lambda!461296))))

(declare-fun bs!1928426 () Bool)

(assert (= bs!1928426 (and b!7456528 b!7456127)))

(assert (=> bs!1928426 (= (and (= s!13591 (_2!37544 lt!2621529)) (= (reg!19843 lt!2621532) (reg!19843 rTail!78)) (= lt!2621532 rTail!78)) (= lambda!461316 lambda!461288))))

(declare-fun bs!1928427 () Bool)

(assert (= bs!1928427 (and b!7456528 b!7456401)))

(assert (=> bs!1928427 (not (= lambda!461316 lambda!461306))))

(declare-fun bs!1928429 () Bool)

(assert (= bs!1928429 (and b!7456528 b!7456129)))

(assert (=> bs!1928429 (not (= lambda!461316 lambda!461289))))

(declare-fun bs!1928430 () Bool)

(assert (= bs!1928430 (and b!7456528 b!7456494)))

(assert (=> bs!1928430 (not (= lambda!461316 lambda!461314))))

(assert (=> bs!1928410 (not (= lambda!461316 lambda!461303))))

(declare-fun bs!1928431 () Bool)

(assert (= bs!1928431 (and b!7456528 b!7456107)))

(assert (=> bs!1928431 (not (= lambda!461316 lambda!461285))))

(assert (=> b!7456528 true))

(assert (=> b!7456528 true))

(declare-fun bs!1928432 () Bool)

(declare-fun b!7456530 () Bool)

(assert (= bs!1928432 (and b!7456530 b!7455842)))

(declare-fun lambda!461318 () Int)

(assert (=> bs!1928432 (not (= lambda!461318 lambda!461262))))

(declare-fun bs!1928434 () Bool)

(assert (= bs!1928434 (and b!7456530 b!7456118)))

(assert (=> bs!1928434 (= (and (= s!13591 (_1!37544 lt!2621529)) (= (regOne!39540 lt!2621532) (regOne!39540 r2!5783)) (= (regTwo!39540 lt!2621532) (regTwo!39540 r2!5783))) (= lambda!461318 lambda!461287))))

(declare-fun bs!1928435 () Bool)

(assert (= bs!1928435 (and b!7456530 d!2297549)))

(assert (=> bs!1928435 (= (and (= (regOne!39540 lt!2621532) lt!2621553) (= (regTwo!39540 lt!2621532) rTail!78)) (= lambda!461318 lambda!461304))))

(declare-fun bs!1928437 () Bool)

(assert (= bs!1928437 (and b!7456530 b!7456492)))

(assert (=> bs!1928437 (not (= lambda!461318 lambda!461312))))

(assert (=> bs!1928432 (= (and (= (regOne!39540 lt!2621532) lt!2621553) (= (regTwo!39540 lt!2621532) rTail!78)) (= lambda!461318 lambda!461263))))

(declare-fun bs!1928439 () Bool)

(assert (= bs!1928439 (and b!7456530 b!7456528)))

(assert (=> bs!1928439 (not (= lambda!461318 lambda!461316))))

(declare-fun bs!1928440 () Bool)

(assert (= bs!1928440 (and b!7456530 b!7456105)))

(assert (=> bs!1928440 (not (= lambda!461318 lambda!461283))))

(declare-fun bs!1928442 () Bool)

(assert (= bs!1928442 (and b!7456530 b!7456116)))

(assert (=> bs!1928442 (not (= lambda!461318 lambda!461286))))

(declare-fun bs!1928443 () Bool)

(assert (= bs!1928443 (and b!7456530 b!7456069)))

(assert (=> bs!1928443 (not (= lambda!461318 lambda!461280))))

(declare-fun bs!1928445 () Bool)

(assert (= bs!1928445 (and b!7456530 b!7456071)))

(assert (=> bs!1928445 (= (and (= s!13591 (_1!37544 lt!2621529)) (= (regOne!39540 lt!2621532) (regOne!39540 lt!2621553)) (= (regTwo!39540 lt!2621532) (regTwo!39540 lt!2621553))) (= lambda!461318 lambda!461281))))

(declare-fun bs!1928447 () Bool)

(assert (= bs!1928447 (and b!7456530 b!7456399)))

(assert (=> bs!1928447 (not (= lambda!461318 lambda!461305))))

(declare-fun bs!1928448 () Bool)

(assert (= bs!1928448 (and b!7456530 b!7456412)))

(assert (=> bs!1928448 (= (and (= (regOne!39540 lt!2621532) (regOne!39540 lt!2621536)) (= (regTwo!39540 lt!2621532) (regTwo!39540 lt!2621536))) (= lambda!461318 lambda!461309))))

(declare-fun bs!1928450 () Bool)

(assert (= bs!1928450 (and b!7456530 b!7456410)))

(assert (=> bs!1928450 (not (= lambda!461318 lambda!461307))))

(declare-fun bs!1928451 () Bool)

(assert (= bs!1928451 (and b!7456530 d!2297545)))

(assert (=> bs!1928451 (not (= lambda!461318 lambda!461296))))

(declare-fun bs!1928453 () Bool)

(assert (= bs!1928453 (and b!7456530 b!7456127)))

(assert (=> bs!1928453 (not (= lambda!461318 lambda!461288))))

(declare-fun bs!1928454 () Bool)

(assert (= bs!1928454 (and b!7456530 b!7456401)))

(assert (=> bs!1928454 (= (and (= (regOne!39540 lt!2621532) (regOne!39540 lt!2621543)) (= (regTwo!39540 lt!2621532) (regTwo!39540 lt!2621543))) (= lambda!461318 lambda!461306))))

(declare-fun bs!1928456 () Bool)

(assert (= bs!1928456 (and b!7456530 b!7456129)))

(assert (=> bs!1928456 (= (and (= s!13591 (_2!37544 lt!2621529)) (= (regOne!39540 lt!2621532) (regOne!39540 rTail!78)) (= (regTwo!39540 lt!2621532) (regTwo!39540 rTail!78))) (= lambda!461318 lambda!461289))))

(declare-fun bs!1928457 () Bool)

(assert (= bs!1928457 (and b!7456530 b!7456494)))

(assert (=> bs!1928457 (= (and (= (regOne!39540 lt!2621532) (regOne!39540 lt!2621539)) (= (regTwo!39540 lt!2621532) (regTwo!39540 lt!2621539))) (= lambda!461318 lambda!461314))))

(assert (=> bs!1928435 (not (= lambda!461318 lambda!461303))))

(declare-fun bs!1928458 () Bool)

(assert (= bs!1928458 (and b!7456530 b!7456107)))

(assert (=> bs!1928458 (= (and (= s!13591 (_1!37544 lt!2621529)) (= (regOne!39540 lt!2621532) (regOne!39540 r1!5845)) (= (regTwo!39540 lt!2621532) (regTwo!39540 r1!5845))) (= lambda!461318 lambda!461285))))

(assert (=> b!7456530 true))

(assert (=> b!7456530 true))

(declare-fun b!7456523 () Bool)

(declare-fun e!4450443 () Bool)

(declare-fun e!4450440 () Bool)

(assert (=> b!7456523 (= e!4450443 e!4450440)))

(declare-fun res!2990992 () Bool)

(assert (=> b!7456523 (= res!2990992 (not (is-EmptyLang!19514 lt!2621532)))))

(assert (=> b!7456523 (=> (not res!2990992) (not e!4450440))))

(declare-fun bm!685007 () Bool)

(declare-fun call!685012 () Bool)

(declare-fun c!1378636 () Bool)

(assert (=> bm!685007 (= call!685012 (Exists!4135 (ite c!1378636 lambda!461316 lambda!461318)))))

(declare-fun b!7456524 () Bool)

(declare-fun call!685013 () Bool)

(assert (=> b!7456524 (= e!4450443 call!685013)))

(declare-fun b!7456525 () Bool)

(declare-fun e!4450441 () Bool)

(declare-fun e!4450437 () Bool)

(assert (=> b!7456525 (= e!4450441 e!4450437)))

(assert (=> b!7456525 (= c!1378636 (is-Star!19514 lt!2621532))))

(declare-fun b!7456526 () Bool)

(declare-fun c!1378633 () Bool)

(assert (=> b!7456526 (= c!1378633 (is-Union!19514 lt!2621532))))

(declare-fun e!4450439 () Bool)

(assert (=> b!7456526 (= e!4450439 e!4450441)))

(declare-fun d!2297591 () Bool)

(declare-fun c!1378634 () Bool)

(assert (=> d!2297591 (= c!1378634 (is-EmptyExpr!19514 lt!2621532))))

(assert (=> d!2297591 (= (matchRSpec!4193 lt!2621532 s!13591) e!4450443)))

(declare-fun b!7456527 () Bool)

(assert (=> b!7456527 (= e!4450439 (= s!13591 (Cons!72106 (c!1378480 lt!2621532) Nil!72106)))))

(declare-fun e!4450438 () Bool)

(assert (=> b!7456528 (= e!4450438 call!685012)))

(declare-fun b!7456529 () Bool)

(declare-fun res!2990990 () Bool)

(assert (=> b!7456529 (=> res!2990990 e!4450438)))

(assert (=> b!7456529 (= res!2990990 call!685013)))

(assert (=> b!7456529 (= e!4450437 e!4450438)))

(assert (=> b!7456530 (= e!4450437 call!685012)))

(declare-fun b!7456531 () Bool)

(declare-fun e!4450442 () Bool)

(assert (=> b!7456531 (= e!4450441 e!4450442)))

(declare-fun res!2990991 () Bool)

(assert (=> b!7456531 (= res!2990991 (matchRSpec!4193 (regOne!39541 lt!2621532) s!13591))))

(assert (=> b!7456531 (=> res!2990991 e!4450442)))

(declare-fun b!7456532 () Bool)

(assert (=> b!7456532 (= e!4450442 (matchRSpec!4193 (regTwo!39541 lt!2621532) s!13591))))

(declare-fun bm!685008 () Bool)

(assert (=> bm!685008 (= call!685013 (isEmpty!41115 s!13591))))

(declare-fun b!7456533 () Bool)

(declare-fun c!1378635 () Bool)

(assert (=> b!7456533 (= c!1378635 (is-ElementMatch!19514 lt!2621532))))

(assert (=> b!7456533 (= e!4450440 e!4450439)))

(assert (= (and d!2297591 c!1378634) b!7456524))

(assert (= (and d!2297591 (not c!1378634)) b!7456523))

(assert (= (and b!7456523 res!2990992) b!7456533))

(assert (= (and b!7456533 c!1378635) b!7456527))

(assert (= (and b!7456533 (not c!1378635)) b!7456526))

(assert (= (and b!7456526 c!1378633) b!7456531))

(assert (= (and b!7456526 (not c!1378633)) b!7456525))

(assert (= (and b!7456531 (not res!2990991)) b!7456532))

(assert (= (and b!7456525 c!1378636) b!7456529))

(assert (= (and b!7456525 (not c!1378636)) b!7456530))

(assert (= (and b!7456529 (not res!2990990)) b!7456528))

(assert (= (or b!7456528 b!7456530) bm!685007))

(assert (= (or b!7456524 b!7456529) bm!685008))

(declare-fun m!8060186 () Bool)

(assert (=> bm!685007 m!8060186))

(declare-fun m!8060188 () Bool)

(assert (=> b!7456531 m!8060188))

(declare-fun m!8060190 () Bool)

(assert (=> b!7456532 m!8060190))

(assert (=> bm!685008 m!8060100))

(assert (=> b!7455846 d!2297591))

(declare-fun bm!685009 () Bool)

(declare-fun call!685014 () Bool)

(assert (=> bm!685009 (= call!685014 (isEmpty!41115 s!13591))))

(declare-fun b!7456534 () Bool)

(declare-fun e!4450449 () Bool)

(assert (=> b!7456534 (= e!4450449 (= (head!15299 s!13591) (c!1378480 lt!2621532)))))

(declare-fun b!7456535 () Bool)

(declare-fun res!2990995 () Bool)

(assert (=> b!7456535 (=> (not res!2990995) (not e!4450449))))

(assert (=> b!7456535 (= res!2990995 (not call!685014))))

(declare-fun b!7456536 () Bool)

(declare-fun e!4450445 () Bool)

(declare-fun e!4450447 () Bool)

(assert (=> b!7456536 (= e!4450445 e!4450447)))

(declare-fun res!2990997 () Bool)

(assert (=> b!7456536 (=> res!2990997 e!4450447)))

(assert (=> b!7456536 (= res!2990997 call!685014)))

(declare-fun b!7456537 () Bool)

(declare-fun e!4450448 () Bool)

(declare-fun lt!2621684 () Bool)

(assert (=> b!7456537 (= e!4450448 (not lt!2621684))))

(declare-fun b!7456539 () Bool)

(declare-fun e!4450450 () Bool)

(assert (=> b!7456539 (= e!4450450 (nullable!8500 lt!2621532))))

(declare-fun b!7456540 () Bool)

(assert (=> b!7456540 (= e!4450447 (not (= (head!15299 s!13591) (c!1378480 lt!2621532))))))

(declare-fun b!7456541 () Bool)

(assert (=> b!7456541 (= e!4450450 (matchR!9278 (derivativeStep!5559 lt!2621532 (head!15299 s!13591)) (tail!14868 s!13591)))))

(declare-fun b!7456542 () Bool)

(declare-fun res!2990998 () Bool)

(declare-fun e!4450444 () Bool)

(assert (=> b!7456542 (=> res!2990998 e!4450444)))

(assert (=> b!7456542 (= res!2990998 e!4450449)))

(declare-fun res!2990999 () Bool)

(assert (=> b!7456542 (=> (not res!2990999) (not e!4450449))))

(assert (=> b!7456542 (= res!2990999 lt!2621684)))

(declare-fun b!7456543 () Bool)

(declare-fun e!4450446 () Bool)

(assert (=> b!7456543 (= e!4450446 e!4450448)))

(declare-fun c!1378637 () Bool)

(assert (=> b!7456543 (= c!1378637 (is-EmptyLang!19514 lt!2621532))))

(declare-fun d!2297593 () Bool)

(assert (=> d!2297593 e!4450446))

(declare-fun c!1378638 () Bool)

(assert (=> d!2297593 (= c!1378638 (is-EmptyExpr!19514 lt!2621532))))

(assert (=> d!2297593 (= lt!2621684 e!4450450)))

(declare-fun c!1378639 () Bool)

(assert (=> d!2297593 (= c!1378639 (isEmpty!41115 s!13591))))

(assert (=> d!2297593 (validRegex!10028 lt!2621532)))

(assert (=> d!2297593 (= (matchR!9278 lt!2621532 s!13591) lt!2621684)))

(declare-fun b!7456538 () Bool)

(declare-fun res!2990993 () Bool)

(assert (=> b!7456538 (=> (not res!2990993) (not e!4450449))))

(assert (=> b!7456538 (= res!2990993 (isEmpty!41115 (tail!14868 s!13591)))))

(declare-fun b!7456544 () Bool)

(declare-fun res!2990994 () Bool)

(assert (=> b!7456544 (=> res!2990994 e!4450444)))

(assert (=> b!7456544 (= res!2990994 (not (is-ElementMatch!19514 lt!2621532)))))

(assert (=> b!7456544 (= e!4450448 e!4450444)))

(declare-fun b!7456545 () Bool)

(assert (=> b!7456545 (= e!4450444 e!4450445)))

(declare-fun res!2990996 () Bool)

(assert (=> b!7456545 (=> (not res!2990996) (not e!4450445))))

(assert (=> b!7456545 (= res!2990996 (not lt!2621684))))

(declare-fun b!7456546 () Bool)

(declare-fun res!2991000 () Bool)

(assert (=> b!7456546 (=> res!2991000 e!4450447)))

(assert (=> b!7456546 (= res!2991000 (not (isEmpty!41115 (tail!14868 s!13591))))))

(declare-fun b!7456547 () Bool)

(assert (=> b!7456547 (= e!4450446 (= lt!2621684 call!685014))))

(assert (= (and d!2297593 c!1378639) b!7456539))

(assert (= (and d!2297593 (not c!1378639)) b!7456541))

(assert (= (and d!2297593 c!1378638) b!7456547))

(assert (= (and d!2297593 (not c!1378638)) b!7456543))

(assert (= (and b!7456543 c!1378637) b!7456537))

(assert (= (and b!7456543 (not c!1378637)) b!7456544))

(assert (= (and b!7456544 (not res!2990994)) b!7456542))

(assert (= (and b!7456542 res!2990999) b!7456535))

(assert (= (and b!7456535 res!2990995) b!7456538))

(assert (= (and b!7456538 res!2990993) b!7456534))

(assert (= (and b!7456542 (not res!2990998)) b!7456545))

(assert (= (and b!7456545 res!2990996) b!7456536))

(assert (= (and b!7456536 (not res!2990997)) b!7456546))

(assert (= (and b!7456546 (not res!2991000)) b!7456540))

(assert (= (or b!7456547 b!7456535 b!7456536) bm!685009))

(assert (=> b!7456538 m!8060116))

(assert (=> b!7456538 m!8060116))

(assert (=> b!7456538 m!8060118))

(assert (=> d!2297593 m!8060100))

(declare-fun m!8060192 () Bool)

(assert (=> d!2297593 m!8060192))

(assert (=> b!7456541 m!8060122))

(assert (=> b!7456541 m!8060122))

(declare-fun m!8060194 () Bool)

(assert (=> b!7456541 m!8060194))

(assert (=> b!7456541 m!8060116))

(assert (=> b!7456541 m!8060194))

(assert (=> b!7456541 m!8060116))

(declare-fun m!8060196 () Bool)

(assert (=> b!7456541 m!8060196))

(assert (=> b!7456540 m!8060122))

(assert (=> b!7456546 m!8060116))

(assert (=> b!7456546 m!8060116))

(assert (=> b!7456546 m!8060118))

(declare-fun m!8060198 () Bool)

(assert (=> b!7456539 m!8060198))

(assert (=> bm!685009 m!8060100))

(assert (=> b!7456534 m!8060122))

(assert (=> b!7455846 d!2297593))

(declare-fun d!2297595 () Bool)

(assert (=> d!2297595 (= (matchR!9278 lt!2621532 s!13591) (matchRSpec!4193 lt!2621532 s!13591))))

(declare-fun lt!2621685 () Unit!165863)

(assert (=> d!2297595 (= lt!2621685 (choose!57628 lt!2621532 s!13591))))

(assert (=> d!2297595 (validRegex!10028 lt!2621532)))

(assert (=> d!2297595 (= (mainMatchTheorem!4187 lt!2621532 s!13591) lt!2621685)))

(declare-fun bs!1928464 () Bool)

(assert (= bs!1928464 d!2297595))

(assert (=> bs!1928464 m!8059760))

(assert (=> bs!1928464 m!8059754))

(declare-fun m!8060206 () Bool)

(assert (=> bs!1928464 m!8060206))

(assert (=> bs!1928464 m!8060192))

(assert (=> b!7455846 d!2297595))

(declare-fun c!1378641 () Bool)

(declare-fun c!1378640 () Bool)

(declare-fun call!685016 () Bool)

(declare-fun bm!685010 () Bool)

(assert (=> bm!685010 (= call!685016 (validRegex!10028 (ite c!1378641 (reg!19843 rTail!78) (ite c!1378640 (regOne!39541 rTail!78) (regOne!39540 rTail!78)))))))

(declare-fun b!7456548 () Bool)

(declare-fun e!4450456 () Bool)

(declare-fun e!4450453 () Bool)

(assert (=> b!7456548 (= e!4450456 e!4450453)))

(declare-fun res!2991003 () Bool)

(assert (=> b!7456548 (= res!2991003 (not (nullable!8500 (reg!19843 rTail!78))))))

(assert (=> b!7456548 (=> (not res!2991003) (not e!4450453))))

(declare-fun b!7456549 () Bool)

(declare-fun e!4450454 () Bool)

(declare-fun call!685017 () Bool)

(assert (=> b!7456549 (= e!4450454 call!685017)))

(declare-fun b!7456550 () Bool)

(declare-fun e!4450451 () Bool)

(assert (=> b!7456550 (= e!4450456 e!4450451)))

(assert (=> b!7456550 (= c!1378640 (is-Union!19514 rTail!78))))

(declare-fun b!7456551 () Bool)

(declare-fun res!2991005 () Bool)

(assert (=> b!7456551 (=> (not res!2991005) (not e!4450454))))

(declare-fun call!685015 () Bool)

(assert (=> b!7456551 (= res!2991005 call!685015)))

(assert (=> b!7456551 (= e!4450451 e!4450454)))

(declare-fun b!7456552 () Bool)

(declare-fun e!4450455 () Bool)

(declare-fun e!4450452 () Bool)

(assert (=> b!7456552 (= e!4450455 e!4450452)))

(declare-fun res!2991002 () Bool)

(assert (=> b!7456552 (=> (not res!2991002) (not e!4450452))))

(assert (=> b!7456552 (= res!2991002 call!685015)))

(declare-fun bm!685011 () Bool)

(assert (=> bm!685011 (= call!685015 call!685016)))

(declare-fun b!7456553 () Bool)

(assert (=> b!7456553 (= e!4450452 call!685017)))

(declare-fun b!7456554 () Bool)

(declare-fun e!4450457 () Bool)

(assert (=> b!7456554 (= e!4450457 e!4450456)))

(assert (=> b!7456554 (= c!1378641 (is-Star!19514 rTail!78))))

(declare-fun b!7456555 () Bool)

(assert (=> b!7456555 (= e!4450453 call!685016)))

(declare-fun b!7456556 () Bool)

(declare-fun res!2991004 () Bool)

(assert (=> b!7456556 (=> res!2991004 e!4450455)))

(assert (=> b!7456556 (= res!2991004 (not (is-Concat!28359 rTail!78)))))

(assert (=> b!7456556 (= e!4450451 e!4450455)))

(declare-fun d!2297597 () Bool)

(declare-fun res!2991001 () Bool)

(assert (=> d!2297597 (=> res!2991001 e!4450457)))

(assert (=> d!2297597 (= res!2991001 (is-ElementMatch!19514 rTail!78))))

(assert (=> d!2297597 (= (validRegex!10028 rTail!78) e!4450457)))

(declare-fun bm!685012 () Bool)

(assert (=> bm!685012 (= call!685017 (validRegex!10028 (ite c!1378640 (regTwo!39541 rTail!78) (regTwo!39540 rTail!78))))))

(assert (= (and d!2297597 (not res!2991001)) b!7456554))

(assert (= (and b!7456554 c!1378641) b!7456548))

(assert (= (and b!7456554 (not c!1378641)) b!7456550))

(assert (= (and b!7456548 res!2991003) b!7456555))

(assert (= (and b!7456550 c!1378640) b!7456551))

(assert (= (and b!7456550 (not c!1378640)) b!7456556))

(assert (= (and b!7456551 res!2991005) b!7456549))

(assert (= (and b!7456556 (not res!2991004)) b!7456552))

(assert (= (and b!7456552 res!2991002) b!7456553))

(assert (= (or b!7456549 b!7456553) bm!685012))

(assert (= (or b!7456551 b!7456552) bm!685011))

(assert (= (or b!7456555 bm!685011) bm!685010))

(declare-fun m!8060210 () Bool)

(assert (=> bm!685010 m!8060210))

(declare-fun m!8060212 () Bool)

(assert (=> b!7456548 m!8060212))

(declare-fun m!8060218 () Bool)

(assert (=> bm!685012 m!8060218))

(assert (=> b!7455845 d!2297597))

(declare-fun d!2297605 () Bool)

(assert (=> d!2297605 (matchR!9278 (Concat!28359 (ite c!1378479 r1!5845 r2!5783) rTail!78) (++!17172 (_1!37544 lt!2621529) (_2!37544 lt!2621529)))))

(declare-fun lt!2621691 () Unit!165863)

(declare-fun choose!57633 (Regex!19514 Regex!19514 List!72230 List!72230) Unit!165863)

(assert (=> d!2297605 (= lt!2621691 (choose!57633 (ite c!1378479 r1!5845 r2!5783) rTail!78 (_1!37544 lt!2621529) (_2!37544 lt!2621529)))))

(declare-fun e!4450474 () Bool)

(assert (=> d!2297605 e!4450474))

(declare-fun res!2991019 () Bool)

(assert (=> d!2297605 (=> (not res!2991019) (not e!4450474))))

(assert (=> d!2297605 (= res!2991019 (validRegex!10028 (ite c!1378479 r1!5845 r2!5783)))))

(assert (=> d!2297605 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!393 (ite c!1378479 r1!5845 r2!5783) rTail!78 (_1!37544 lt!2621529) (_2!37544 lt!2621529)) lt!2621691)))

(declare-fun b!7456584 () Bool)

(assert (=> b!7456584 (= e!4450474 (validRegex!10028 rTail!78))))

(assert (= (and d!2297605 res!2991019) b!7456584))

(assert (=> d!2297605 m!8059782))

(assert (=> d!2297605 m!8059782))

(declare-fun m!8060232 () Bool)

(assert (=> d!2297605 m!8060232))

(declare-fun m!8060234 () Bool)

(assert (=> d!2297605 m!8060234))

(declare-fun m!8060236 () Bool)

(assert (=> d!2297605 m!8060236))

(assert (=> b!7456584 m!8059712))

(assert (=> bm!684920 d!2297605))

(declare-fun b!7456589 () Bool)

(declare-fun e!4450477 () Bool)

(declare-fun tp!2160750 () Bool)

(assert (=> b!7456589 (= e!4450477 (and tp_is_empty!49317 tp!2160750))))

(assert (=> b!7455849 (= tp!2160690 e!4450477)))

(assert (= (and b!7455849 (is-Cons!72106 (t!386799 s!13591))) b!7456589))

(declare-fun b!7456603 () Bool)

(declare-fun e!4450480 () Bool)

(declare-fun tp!2160763 () Bool)

(declare-fun tp!2160761 () Bool)

(assert (=> b!7456603 (= e!4450480 (and tp!2160763 tp!2160761))))

(declare-fun b!7456601 () Bool)

(declare-fun tp!2160762 () Bool)

(declare-fun tp!2160765 () Bool)

(assert (=> b!7456601 (= e!4450480 (and tp!2160762 tp!2160765))))

(declare-fun b!7456602 () Bool)

(declare-fun tp!2160764 () Bool)

(assert (=> b!7456602 (= e!4450480 tp!2160764)))

(assert (=> b!7455838 (= tp!2160698 e!4450480)))

(declare-fun b!7456600 () Bool)

(assert (=> b!7456600 (= e!4450480 tp_is_empty!49317)))

(assert (= (and b!7455838 (is-ElementMatch!19514 (regOne!39541 rTail!78))) b!7456600))

(assert (= (and b!7455838 (is-Concat!28359 (regOne!39541 rTail!78))) b!7456601))

(assert (= (and b!7455838 (is-Star!19514 (regOne!39541 rTail!78))) b!7456602))

(assert (= (and b!7455838 (is-Union!19514 (regOne!39541 rTail!78))) b!7456603))

(declare-fun b!7456607 () Bool)

(declare-fun e!4450481 () Bool)

(declare-fun tp!2160768 () Bool)

(declare-fun tp!2160766 () Bool)

(assert (=> b!7456607 (= e!4450481 (and tp!2160768 tp!2160766))))

(declare-fun b!7456605 () Bool)

(declare-fun tp!2160767 () Bool)

(declare-fun tp!2160770 () Bool)

(assert (=> b!7456605 (= e!4450481 (and tp!2160767 tp!2160770))))

(declare-fun b!7456606 () Bool)

(declare-fun tp!2160769 () Bool)

(assert (=> b!7456606 (= e!4450481 tp!2160769)))

(assert (=> b!7455838 (= tp!2160696 e!4450481)))

(declare-fun b!7456604 () Bool)

(assert (=> b!7456604 (= e!4450481 tp_is_empty!49317)))

(assert (= (and b!7455838 (is-ElementMatch!19514 (regTwo!39541 rTail!78))) b!7456604))

(assert (= (and b!7455838 (is-Concat!28359 (regTwo!39541 rTail!78))) b!7456605))

(assert (= (and b!7455838 (is-Star!19514 (regTwo!39541 rTail!78))) b!7456606))

(assert (= (and b!7455838 (is-Union!19514 (regTwo!39541 rTail!78))) b!7456607))

(declare-fun b!7456611 () Bool)

(declare-fun e!4450482 () Bool)

(declare-fun tp!2160773 () Bool)

(declare-fun tp!2160771 () Bool)

(assert (=> b!7456611 (= e!4450482 (and tp!2160773 tp!2160771))))

(declare-fun b!7456609 () Bool)

(declare-fun tp!2160772 () Bool)

(declare-fun tp!2160775 () Bool)

(assert (=> b!7456609 (= e!4450482 (and tp!2160772 tp!2160775))))

(declare-fun b!7456610 () Bool)

(declare-fun tp!2160774 () Bool)

(assert (=> b!7456610 (= e!4450482 tp!2160774)))

(assert (=> b!7455843 (= tp!2160693 e!4450482)))

(declare-fun b!7456608 () Bool)

(assert (=> b!7456608 (= e!4450482 tp_is_empty!49317)))

(assert (= (and b!7455843 (is-ElementMatch!19514 (regOne!39540 r1!5845))) b!7456608))

(assert (= (and b!7455843 (is-Concat!28359 (regOne!39540 r1!5845))) b!7456609))

(assert (= (and b!7455843 (is-Star!19514 (regOne!39540 r1!5845))) b!7456610))

(assert (= (and b!7455843 (is-Union!19514 (regOne!39540 r1!5845))) b!7456611))

(declare-fun b!7456615 () Bool)

(declare-fun e!4450483 () Bool)

(declare-fun tp!2160778 () Bool)

(declare-fun tp!2160776 () Bool)

(assert (=> b!7456615 (= e!4450483 (and tp!2160778 tp!2160776))))

(declare-fun b!7456613 () Bool)

(declare-fun tp!2160777 () Bool)

(declare-fun tp!2160780 () Bool)

(assert (=> b!7456613 (= e!4450483 (and tp!2160777 tp!2160780))))

(declare-fun b!7456614 () Bool)

(declare-fun tp!2160779 () Bool)

(assert (=> b!7456614 (= e!4450483 tp!2160779)))

(assert (=> b!7455843 (= tp!2160694 e!4450483)))

(declare-fun b!7456612 () Bool)

(assert (=> b!7456612 (= e!4450483 tp_is_empty!49317)))

(assert (= (and b!7455843 (is-ElementMatch!19514 (regTwo!39540 r1!5845))) b!7456612))

(assert (= (and b!7455843 (is-Concat!28359 (regTwo!39540 r1!5845))) b!7456613))

(assert (= (and b!7455843 (is-Star!19514 (regTwo!39540 r1!5845))) b!7456614))

(assert (= (and b!7455843 (is-Union!19514 (regTwo!39540 r1!5845))) b!7456615))

(declare-fun b!7456619 () Bool)

(declare-fun e!4450484 () Bool)

(declare-fun tp!2160783 () Bool)

(declare-fun tp!2160781 () Bool)

(assert (=> b!7456619 (= e!4450484 (and tp!2160783 tp!2160781))))

(declare-fun b!7456617 () Bool)

(declare-fun tp!2160782 () Bool)

(declare-fun tp!2160785 () Bool)

(assert (=> b!7456617 (= e!4450484 (and tp!2160782 tp!2160785))))

(declare-fun b!7456618 () Bool)

(declare-fun tp!2160784 () Bool)

(assert (=> b!7456618 (= e!4450484 tp!2160784)))

(assert (=> b!7455832 (= tp!2160691 e!4450484)))

(declare-fun b!7456616 () Bool)

(assert (=> b!7456616 (= e!4450484 tp_is_empty!49317)))

(assert (= (and b!7455832 (is-ElementMatch!19514 (regOne!39541 r1!5845))) b!7456616))

(assert (= (and b!7455832 (is-Concat!28359 (regOne!39541 r1!5845))) b!7456617))

(assert (= (and b!7455832 (is-Star!19514 (regOne!39541 r1!5845))) b!7456618))

(assert (= (and b!7455832 (is-Union!19514 (regOne!39541 r1!5845))) b!7456619))

(declare-fun b!7456623 () Bool)

(declare-fun e!4450485 () Bool)

(declare-fun tp!2160788 () Bool)

(declare-fun tp!2160786 () Bool)

(assert (=> b!7456623 (= e!4450485 (and tp!2160788 tp!2160786))))

(declare-fun b!7456621 () Bool)

(declare-fun tp!2160787 () Bool)

(declare-fun tp!2160790 () Bool)

(assert (=> b!7456621 (= e!4450485 (and tp!2160787 tp!2160790))))

(declare-fun b!7456622 () Bool)

(declare-fun tp!2160789 () Bool)

(assert (=> b!7456622 (= e!4450485 tp!2160789)))

(assert (=> b!7455832 (= tp!2160689 e!4450485)))

(declare-fun b!7456620 () Bool)

(assert (=> b!7456620 (= e!4450485 tp_is_empty!49317)))

(assert (= (and b!7455832 (is-ElementMatch!19514 (regTwo!39541 r1!5845))) b!7456620))

(assert (= (and b!7455832 (is-Concat!28359 (regTwo!39541 r1!5845))) b!7456621))

(assert (= (and b!7455832 (is-Star!19514 (regTwo!39541 r1!5845))) b!7456622))

(assert (= (and b!7455832 (is-Union!19514 (regTwo!39541 r1!5845))) b!7456623))

(declare-fun b!7456627 () Bool)

(declare-fun e!4450486 () Bool)

(declare-fun tp!2160793 () Bool)

(declare-fun tp!2160791 () Bool)

(assert (=> b!7456627 (= e!4450486 (and tp!2160793 tp!2160791))))

(declare-fun b!7456625 () Bool)

(declare-fun tp!2160792 () Bool)

(declare-fun tp!2160795 () Bool)

(assert (=> b!7456625 (= e!4450486 (and tp!2160792 tp!2160795))))

(declare-fun b!7456626 () Bool)

(declare-fun tp!2160794 () Bool)

(assert (=> b!7456626 (= e!4450486 tp!2160794)))

(assert (=> b!7455847 (= tp!2160688 e!4450486)))

(declare-fun b!7456624 () Bool)

(assert (=> b!7456624 (= e!4450486 tp_is_empty!49317)))

(assert (= (and b!7455847 (is-ElementMatch!19514 (regOne!39540 rTail!78))) b!7456624))

(assert (= (and b!7455847 (is-Concat!28359 (regOne!39540 rTail!78))) b!7456625))

(assert (= (and b!7455847 (is-Star!19514 (regOne!39540 rTail!78))) b!7456626))

(assert (= (and b!7455847 (is-Union!19514 (regOne!39540 rTail!78))) b!7456627))

(declare-fun b!7456631 () Bool)

(declare-fun e!4450487 () Bool)

(declare-fun tp!2160798 () Bool)

(declare-fun tp!2160796 () Bool)

(assert (=> b!7456631 (= e!4450487 (and tp!2160798 tp!2160796))))

(declare-fun b!7456629 () Bool)

(declare-fun tp!2160797 () Bool)

(declare-fun tp!2160800 () Bool)

(assert (=> b!7456629 (= e!4450487 (and tp!2160797 tp!2160800))))

(declare-fun b!7456630 () Bool)

(declare-fun tp!2160799 () Bool)

(assert (=> b!7456630 (= e!4450487 tp!2160799)))

(assert (=> b!7455847 (= tp!2160685 e!4450487)))

(declare-fun b!7456628 () Bool)

(assert (=> b!7456628 (= e!4450487 tp_is_empty!49317)))

(assert (= (and b!7455847 (is-ElementMatch!19514 (regTwo!39540 rTail!78))) b!7456628))

(assert (= (and b!7455847 (is-Concat!28359 (regTwo!39540 rTail!78))) b!7456629))

(assert (= (and b!7455847 (is-Star!19514 (regTwo!39540 rTail!78))) b!7456630))

(assert (= (and b!7455847 (is-Union!19514 (regTwo!39540 rTail!78))) b!7456631))

(declare-fun b!7456635 () Bool)

(declare-fun e!4450488 () Bool)

(declare-fun tp!2160803 () Bool)

(declare-fun tp!2160801 () Bool)

(assert (=> b!7456635 (= e!4450488 (and tp!2160803 tp!2160801))))

(declare-fun b!7456633 () Bool)

(declare-fun tp!2160802 () Bool)

(declare-fun tp!2160805 () Bool)

(assert (=> b!7456633 (= e!4450488 (and tp!2160802 tp!2160805))))

(declare-fun b!7456634 () Bool)

(declare-fun tp!2160804 () Bool)

(assert (=> b!7456634 (= e!4450488 tp!2160804)))

(assert (=> b!7455851 (= tp!2160684 e!4450488)))

(declare-fun b!7456632 () Bool)

(assert (=> b!7456632 (= e!4450488 tp_is_empty!49317)))

(assert (= (and b!7455851 (is-ElementMatch!19514 (regOne!39541 r2!5783))) b!7456632))

(assert (= (and b!7455851 (is-Concat!28359 (regOne!39541 r2!5783))) b!7456633))

(assert (= (and b!7455851 (is-Star!19514 (regOne!39541 r2!5783))) b!7456634))

(assert (= (and b!7455851 (is-Union!19514 (regOne!39541 r2!5783))) b!7456635))

(declare-fun b!7456639 () Bool)

(declare-fun e!4450489 () Bool)

(declare-fun tp!2160808 () Bool)

(declare-fun tp!2160806 () Bool)

(assert (=> b!7456639 (= e!4450489 (and tp!2160808 tp!2160806))))

(declare-fun b!7456637 () Bool)

(declare-fun tp!2160807 () Bool)

(declare-fun tp!2160810 () Bool)

(assert (=> b!7456637 (= e!4450489 (and tp!2160807 tp!2160810))))

(declare-fun b!7456638 () Bool)

(declare-fun tp!2160809 () Bool)

(assert (=> b!7456638 (= e!4450489 tp!2160809)))

(assert (=> b!7455851 (= tp!2160692 e!4450489)))

(declare-fun b!7456636 () Bool)

(assert (=> b!7456636 (= e!4450489 tp_is_empty!49317)))

(assert (= (and b!7455851 (is-ElementMatch!19514 (regTwo!39541 r2!5783))) b!7456636))

(assert (= (and b!7455851 (is-Concat!28359 (regTwo!39541 r2!5783))) b!7456637))

(assert (= (and b!7455851 (is-Star!19514 (regTwo!39541 r2!5783))) b!7456638))

(assert (= (and b!7455851 (is-Union!19514 (regTwo!39541 r2!5783))) b!7456639))

(declare-fun b!7456643 () Bool)

(declare-fun e!4450490 () Bool)

(declare-fun tp!2160813 () Bool)

(declare-fun tp!2160811 () Bool)

(assert (=> b!7456643 (= e!4450490 (and tp!2160813 tp!2160811))))

(declare-fun b!7456641 () Bool)

(declare-fun tp!2160812 () Bool)

(declare-fun tp!2160815 () Bool)

(assert (=> b!7456641 (= e!4450490 (and tp!2160812 tp!2160815))))

(declare-fun b!7456642 () Bool)

(declare-fun tp!2160814 () Bool)

(assert (=> b!7456642 (= e!4450490 tp!2160814)))

(assert (=> b!7455836 (= tp!2160687 e!4450490)))

(declare-fun b!7456640 () Bool)

(assert (=> b!7456640 (= e!4450490 tp_is_empty!49317)))

(assert (= (and b!7455836 (is-ElementMatch!19514 (reg!19843 rTail!78))) b!7456640))

(assert (= (and b!7455836 (is-Concat!28359 (reg!19843 rTail!78))) b!7456641))

(assert (= (and b!7455836 (is-Star!19514 (reg!19843 rTail!78))) b!7456642))

(assert (= (and b!7455836 (is-Union!19514 (reg!19843 rTail!78))) b!7456643))

(declare-fun b!7456647 () Bool)

(declare-fun e!4450491 () Bool)

(declare-fun tp!2160818 () Bool)

(declare-fun tp!2160816 () Bool)

(assert (=> b!7456647 (= e!4450491 (and tp!2160818 tp!2160816))))

(declare-fun b!7456645 () Bool)

(declare-fun tp!2160817 () Bool)

(declare-fun tp!2160820 () Bool)

(assert (=> b!7456645 (= e!4450491 (and tp!2160817 tp!2160820))))

(declare-fun b!7456646 () Bool)

(declare-fun tp!2160819 () Bool)

(assert (=> b!7456646 (= e!4450491 tp!2160819)))

(assert (=> b!7455850 (= tp!2160695 e!4450491)))

(declare-fun b!7456644 () Bool)

(assert (=> b!7456644 (= e!4450491 tp_is_empty!49317)))

(assert (= (and b!7455850 (is-ElementMatch!19514 (regOne!39540 r2!5783))) b!7456644))

(assert (= (and b!7455850 (is-Concat!28359 (regOne!39540 r2!5783))) b!7456645))

(assert (= (and b!7455850 (is-Star!19514 (regOne!39540 r2!5783))) b!7456646))

(assert (= (and b!7455850 (is-Union!19514 (regOne!39540 r2!5783))) b!7456647))

(declare-fun b!7456651 () Bool)

(declare-fun e!4450492 () Bool)

(declare-fun tp!2160823 () Bool)

(declare-fun tp!2160821 () Bool)

(assert (=> b!7456651 (= e!4450492 (and tp!2160823 tp!2160821))))

(declare-fun b!7456649 () Bool)

(declare-fun tp!2160822 () Bool)

(declare-fun tp!2160825 () Bool)

(assert (=> b!7456649 (= e!4450492 (and tp!2160822 tp!2160825))))

(declare-fun b!7456650 () Bool)

(declare-fun tp!2160824 () Bool)

(assert (=> b!7456650 (= e!4450492 tp!2160824)))

(assert (=> b!7455850 (= tp!2160699 e!4450492)))

(declare-fun b!7456648 () Bool)

(assert (=> b!7456648 (= e!4450492 tp_is_empty!49317)))

(assert (= (and b!7455850 (is-ElementMatch!19514 (regTwo!39540 r2!5783))) b!7456648))

(assert (= (and b!7455850 (is-Concat!28359 (regTwo!39540 r2!5783))) b!7456649))

(assert (= (and b!7455850 (is-Star!19514 (regTwo!39540 r2!5783))) b!7456650))

(assert (= (and b!7455850 (is-Union!19514 (regTwo!39540 r2!5783))) b!7456651))

(declare-fun b!7456655 () Bool)

(declare-fun e!4450493 () Bool)

(declare-fun tp!2160828 () Bool)

(declare-fun tp!2160826 () Bool)

(assert (=> b!7456655 (= e!4450493 (and tp!2160828 tp!2160826))))

(declare-fun b!7456653 () Bool)

(declare-fun tp!2160827 () Bool)

(declare-fun tp!2160830 () Bool)

(assert (=> b!7456653 (= e!4450493 (and tp!2160827 tp!2160830))))

(declare-fun b!7456654 () Bool)

(declare-fun tp!2160829 () Bool)

(assert (=> b!7456654 (= e!4450493 tp!2160829)))

(assert (=> b!7455854 (= tp!2160686 e!4450493)))

(declare-fun b!7456652 () Bool)

(assert (=> b!7456652 (= e!4450493 tp_is_empty!49317)))

(assert (= (and b!7455854 (is-ElementMatch!19514 (reg!19843 r1!5845))) b!7456652))

(assert (= (and b!7455854 (is-Concat!28359 (reg!19843 r1!5845))) b!7456653))

(assert (= (and b!7455854 (is-Star!19514 (reg!19843 r1!5845))) b!7456654))

(assert (= (and b!7455854 (is-Union!19514 (reg!19843 r1!5845))) b!7456655))

(declare-fun b!7456659 () Bool)

(declare-fun e!4450494 () Bool)

(declare-fun tp!2160833 () Bool)

(declare-fun tp!2160831 () Bool)

(assert (=> b!7456659 (= e!4450494 (and tp!2160833 tp!2160831))))

(declare-fun b!7456657 () Bool)

(declare-fun tp!2160832 () Bool)

(declare-fun tp!2160835 () Bool)

(assert (=> b!7456657 (= e!4450494 (and tp!2160832 tp!2160835))))

(declare-fun b!7456658 () Bool)

(declare-fun tp!2160834 () Bool)

(assert (=> b!7456658 (= e!4450494 tp!2160834)))

(assert (=> b!7455835 (= tp!2160697 e!4450494)))

(declare-fun b!7456656 () Bool)

(assert (=> b!7456656 (= e!4450494 tp_is_empty!49317)))

(assert (= (and b!7455835 (is-ElementMatch!19514 (reg!19843 r2!5783))) b!7456656))

(assert (= (and b!7455835 (is-Concat!28359 (reg!19843 r2!5783))) b!7456657))

(assert (= (and b!7455835 (is-Star!19514 (reg!19843 r2!5783))) b!7456658))

(assert (= (and b!7455835 (is-Union!19514 (reg!19843 r2!5783))) b!7456659))

(push 1)

(assert (not b!7456259))

(assert (not bm!684932))

(assert (not d!2297605))

(assert (not b!7456350))

(assert (not b!7456614))

(assert (not d!2297495))

(assert (not bm!684943))

(assert (not b!7456193))

(assert (not d!2297571))

(assert (not b!7456288))

(assert (not b!7456441))

(assert (not b!7456090))

(assert (not b!7456538))

(assert (not b!7456646))

(assert (not b!7456540))

(assert (not b!7456653))

(assert (not d!2297501))

(assert (not b!7456634))

(assert (not b!7456514))

(assert (not bm!684952))

(assert (not b!7456485))

(assert (not bm!685006))

(assert (not b!7456012))

(assert (not b!7456109))

(assert (not b!7456589))

(assert (not b!7456000))

(assert (not d!2297593))

(assert (not bm!685008))

(assert (not b!7456282))

(assert (not b!7456655))

(assert (not b!7456623))

(assert (not b!7456621))

(assert (not b!7456647))

(assert (not b!7456356))

(assert (not b!7456287))

(assert (not bm!685003))

(assert (not b!7456015))

(assert (not b!7456657))

(assert (not d!2297575))

(assert (not b!7456643))

(assert (not b!7456534))

(assert (not bm!684976))

(assert (not b!7456631))

(assert (not d!2297569))

(assert (not bm!684949))

(assert (not b!7456496))

(assert (not b!7456091))

(assert (not b!7456515))

(assert (not b!7456414))

(assert (not b!7456130))

(assert (not b!7456348))

(assert (not b!7456484))

(assert (not b!7456602))

(assert (not b!7456649))

(assert (not b!7456532))

(assert (not bm!685007))

(assert (not b!7456379))

(assert (not b!7456610))

(assert (not b!7456440))

(assert (not bm!685002))

(assert (not b!7455999))

(assert (not d!2297543))

(assert (not d!2297549))

(assert (not b!7456093))

(assert (not b!7456607))

(assert (not b!7456516))

(assert (not b!7456092))

(assert (not b!7456548))

(assert (not b!7456456))

(assert (not bm!685010))

(assert (not b!7456358))

(assert (not b!7456014))

(assert (not b!7456606))

(assert (not b!7456294))

(assert (not bm!684998))

(assert (not b!7456513))

(assert (not b!7456402))

(assert (not b!7456008))

(assert (not b!7456266))

(assert (not bm!684970))

(assert (not bm!684984))

(assert (not bm!684933))

(assert (not b!7456651))

(assert (not b!7456625))

(assert (not bm!684950))

(assert (not b!7456013))

(assert (not d!2297555))

(assert (not b!7456539))

(assert (not b!7456617))

(assert (not b!7456613))

(assert (not b!7456635))

(assert (not b!7456633))

(assert (not b!7456457))

(assert (not b!7456546))

(assert (not b!7456086))

(assert (not bm!684992))

(assert (not b!7456611))

(assert (not b!7456131))

(assert (not b!7456098))

(assert (not d!2297535))

(assert (not b!7456443))

(assert (not b!7456629))

(assert (not bm!684980))

(assert (not bm!684947))

(assert (not bm!684999))

(assert (not d!2297521))

(assert (not b!7456403))

(assert (not b!7456495))

(assert (not d!2297539))

(assert (not b!7456450))

(assert (not b!7456658))

(assert (not b!7456618))

(assert (not b!7456509))

(assert (not b!7456020))

(assert (not b!7456630))

(assert (not bm!684948))

(assert (not b!7456601))

(assert (not b!7456454))

(assert (not b!7456622))

(assert (not d!2297545))

(assert (not b!7456442))

(assert (not b!7456642))

(assert (not b!7456436))

(assert (not b!7456603))

(assert (not b!7456584))

(assert (not b!7456119))

(assert (not d!2297595))

(assert (not b!7456605))

(assert (not d!2297587))

(assert (not d!2297563))

(assert (not b!7456262))

(assert (not d!2297491))

(assert (not bm!685009))

(assert (not b!7456261))

(assert tp_is_empty!49317)

(assert (not b!7455994))

(assert (not b!7456639))

(assert (not bm!684982))

(assert (not b!7456286))

(assert (not b!7456351))

(assert (not bm!684977))

(assert (not b!7456265))

(assert (not b!7456001))

(assert (not b!7456541))

(assert (not bm!684991))

(assert (not bm!684964))

(assert (not b!7456072))

(assert (not b!7456650))

(assert (not b!7456289))

(assert (not b!7456413))

(assert (not b!7456448))

(assert (not b!7456531))

(assert (not d!2297517))

(assert (not b!7456654))

(assert (not bm!684983))

(assert (not b!7456638))

(assert (not b!7456344))

(assert (not bm!684962))

(assert (not d!2297489))

(assert (not b!7456637))

(assert (not bm!684942))

(assert (not b!7456627))

(assert (not b!7456659))

(assert (not b!7456645))

(assert (not b!7456263))

(assert (not b!7456108))

(assert (not b!7456006))

(assert (not d!2297503))

(assert (not b!7456521))

(assert (not bm!684946))

(assert (not bm!685012))

(assert (not b!7456462))

(assert (not b!7456609))

(assert (not b!7455998))

(assert (not d!2297511))

(assert (not d!2297497))

(assert (not b!7456641))

(assert (not b!7456615))

(assert (not b!7456349))

(assert (not b!7456455))

(assert (not d!2297573))

(assert (not bm!684951))

(assert (not b!7456619))

(assert (not b!7456120))

(assert (not bm!684979))

(assert (not d!2297589))

(assert (not b!7456073))

(assert (not b!7456626))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

