; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!719038 () Bool)

(assert start!719038)

(declare-fun b!7365653 () Bool)

(declare-fun e!4409846 () Bool)

(declare-fun tp_is_empty!48757 () Bool)

(assert (=> b!7365653 (= e!4409846 tp_is_empty!48757)))

(declare-fun b!7365654 () Bool)

(declare-fun res!2972827 () Bool)

(declare-fun e!4409844 () Bool)

(assert (=> b!7365654 (=> (not res!2972827) (not e!4409844))))

(declare-datatypes ((C!38786 0))(
  ( (C!38787 (val!29753 Int)) )
))
(declare-datatypes ((Regex!19256 0))(
  ( (ElementMatch!19256 (c!1368760 C!38786)) (Concat!28101 (regOne!39024 Regex!19256) (regTwo!39024 Regex!19256)) (EmptyExpr!19256) (Star!19256 (reg!19585 Regex!19256)) (EmptyLang!19256) (Union!19256 (regOne!39025 Regex!19256) (regTwo!39025 Regex!19256)) )
))
(declare-datatypes ((List!71752 0))(
  ( (Nil!71628) (Cons!71628 (h!78076 Regex!19256) (t!386201 List!71752)) )
))
(declare-datatypes ((Context!16392 0))(
  ( (Context!16393 (exprs!8696 List!71752)) )
))
(declare-fun cWitness!61 () Context!16392)

(declare-fun lt!2614823 () (Set Context!16392))

(assert (=> b!7365654 (= res!2972827 (not (set.member cWitness!61 lt!2614823)))))

(declare-fun b!7365655 () Bool)

(declare-fun e!4409841 () Bool)

(declare-fun tp!2093339 () Bool)

(assert (=> b!7365655 (= e!4409841 tp!2093339)))

(declare-fun b!7365656 () Bool)

(declare-fun e!4409843 () Bool)

(assert (=> b!7365656 (= e!4409843 e!4409844)))

(declare-fun res!2972824 () Bool)

(assert (=> b!7365656 (=> (not res!2972824) (not e!4409844))))

(declare-fun r1!2370 () Regex!19256)

(declare-fun lt!2614825 () (Set Context!16392))

(declare-fun c!10362 () C!38786)

(declare-fun ct1!282 () Context!16392)

(declare-fun derivationStepZipperDown!3082 (Regex!19256 Context!16392 C!38786) (Set Context!16392))

(assert (=> b!7365656 (= res!2972824 (= lt!2614825 (set.union lt!2614823 (derivationStepZipperDown!3082 (regTwo!39025 r1!2370) ct1!282 c!10362))))))

(assert (=> b!7365656 (= lt!2614823 (derivationStepZipperDown!3082 (regOne!39025 r1!2370) ct1!282 c!10362))))

(declare-fun b!7365657 () Bool)

(declare-fun tp!2093336 () Bool)

(declare-fun tp!2093340 () Bool)

(assert (=> b!7365657 (= e!4409846 (and tp!2093336 tp!2093340))))

(declare-fun b!7365658 () Bool)

(declare-fun e!4409847 () Bool)

(declare-fun tp!2093338 () Bool)

(assert (=> b!7365658 (= e!4409847 tp!2093338)))

(declare-fun b!7365659 () Bool)

(declare-fun e!4409839 () Bool)

(assert (=> b!7365659 (= e!4409844 (not e!4409839))))

(declare-fun res!2972825 () Bool)

(assert (=> b!7365659 (=> res!2972825 e!4409839)))

(declare-fun lt!2614822 () Context!16392)

(declare-fun lt!2614826 () (Set Context!16392))

(assert (=> b!7365659 (= res!2972825 (not (set.member lt!2614822 lt!2614826)))))

(declare-fun ct2!378 () Context!16392)

(declare-datatypes ((Unit!165461 0))(
  ( (Unit!165462) )
))
(declare-fun lt!2614827 () Unit!165461)

(declare-fun lambda!457726 () Int)

(declare-fun lemmaConcatPreservesForall!1929 (List!71752 List!71752 Int) Unit!165461)

(assert (=> b!7365659 (= lt!2614827 (lemmaConcatPreservesForall!1929 (exprs!8696 cWitness!61) (exprs!8696 ct2!378) lambda!457726))))

(declare-fun lt!2614830 () Context!16392)

(assert (=> b!7365659 (set.member lt!2614822 (derivationStepZipperDown!3082 (regTwo!39025 r1!2370) lt!2614830 c!10362))))

(declare-fun ++!17072 (List!71752 List!71752) List!71752)

(assert (=> b!7365659 (= lt!2614822 (Context!16393 (++!17072 (exprs!8696 cWitness!61) (exprs!8696 ct2!378))))))

(declare-fun lt!2614831 () Unit!165461)

(assert (=> b!7365659 (= lt!2614831 (lemmaConcatPreservesForall!1929 (exprs!8696 ct1!282) (exprs!8696 ct2!378) lambda!457726))))

(declare-fun lt!2614828 () Unit!165461)

(assert (=> b!7365659 (= lt!2614828 (lemmaConcatPreservesForall!1929 (exprs!8696 cWitness!61) (exprs!8696 ct2!378) lambda!457726))))

(declare-fun lt!2614824 () Unit!165461)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!125 (Regex!19256 Context!16392 Context!16392 Context!16392 C!38786) Unit!165461)

(assert (=> b!7365659 (= lt!2614824 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!125 (regTwo!39025 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7365660 () Bool)

(declare-fun tp!2093335 () Bool)

(assert (=> b!7365660 (= e!4409846 tp!2093335)))

(declare-fun b!7365661 () Bool)

(declare-fun e!4409845 () Bool)

(declare-fun e!4409842 () Bool)

(assert (=> b!7365661 (= e!4409845 e!4409842)))

(declare-fun res!2972828 () Bool)

(assert (=> b!7365661 (=> (not res!2972828) (not e!4409842))))

(assert (=> b!7365661 (= res!2972828 (set.member cWitness!61 lt!2614825))))

(assert (=> b!7365661 (= lt!2614825 (derivationStepZipperDown!3082 r1!2370 ct1!282 c!10362))))

(declare-fun b!7365662 () Bool)

(declare-fun tp!2093341 () Bool)

(declare-fun tp!2093334 () Bool)

(assert (=> b!7365662 (= e!4409846 (and tp!2093341 tp!2093334))))

(declare-fun b!7365652 () Bool)

(assert (=> b!7365652 (= e!4409842 e!4409843)))

(declare-fun res!2972823 () Bool)

(assert (=> b!7365652 (=> (not res!2972823) (not e!4409843))))

(assert (=> b!7365652 (= res!2972823 (and (or (not (is-ElementMatch!19256 r1!2370)) (not (= c!10362 (c!1368760 r1!2370)))) (is-Union!19256 r1!2370)))))

(assert (=> b!7365652 (= lt!2614826 (derivationStepZipperDown!3082 r1!2370 lt!2614830 c!10362))))

(assert (=> b!7365652 (= lt!2614830 (Context!16393 (++!17072 (exprs!8696 ct1!282) (exprs!8696 ct2!378))))))

(declare-fun lt!2614833 () Unit!165461)

(assert (=> b!7365652 (= lt!2614833 (lemmaConcatPreservesForall!1929 (exprs!8696 ct1!282) (exprs!8696 ct2!378) lambda!457726))))

(declare-fun res!2972826 () Bool)

(assert (=> start!719038 (=> (not res!2972826) (not e!4409845))))

(declare-fun validRegex!9852 (Regex!19256) Bool)

(assert (=> start!719038 (= res!2972826 (validRegex!9852 r1!2370))))

(assert (=> start!719038 e!4409845))

(assert (=> start!719038 tp_is_empty!48757))

(declare-fun inv!91481 (Context!16392) Bool)

(assert (=> start!719038 (and (inv!91481 cWitness!61) e!4409841)))

(assert (=> start!719038 (and (inv!91481 ct1!282) e!4409847)))

(assert (=> start!719038 e!4409846))

(declare-fun e!4409840 () Bool)

(assert (=> start!719038 (and (inv!91481 ct2!378) e!4409840)))

(declare-fun b!7365663 () Bool)

(assert (=> b!7365663 (= e!4409839 (inv!91481 lt!2614822))))

(declare-fun lt!2614832 () Unit!165461)

(assert (=> b!7365663 (= lt!2614832 (lemmaConcatPreservesForall!1929 (exprs!8696 ct1!282) (exprs!8696 ct2!378) lambda!457726))))

(declare-fun lt!2614829 () Unit!165461)

(assert (=> b!7365663 (= lt!2614829 (lemmaConcatPreservesForall!1929 (exprs!8696 cWitness!61) (exprs!8696 ct2!378) lambda!457726))))

(declare-fun b!7365664 () Bool)

(declare-fun tp!2093337 () Bool)

(assert (=> b!7365664 (= e!4409840 tp!2093337)))

(assert (= (and start!719038 res!2972826) b!7365661))

(assert (= (and b!7365661 res!2972828) b!7365652))

(assert (= (and b!7365652 res!2972823) b!7365656))

(assert (= (and b!7365656 res!2972824) b!7365654))

(assert (= (and b!7365654 res!2972827) b!7365659))

(assert (= (and b!7365659 (not res!2972825)) b!7365663))

(assert (= start!719038 b!7365655))

(assert (= start!719038 b!7365658))

(assert (= (and start!719038 (is-ElementMatch!19256 r1!2370)) b!7365653))

(assert (= (and start!719038 (is-Concat!28101 r1!2370)) b!7365657))

(assert (= (and start!719038 (is-Star!19256 r1!2370)) b!7365660))

(assert (= (and start!719038 (is-Union!19256 r1!2370)) b!7365662))

(assert (= start!719038 b!7365664))

(declare-fun m!8021390 () Bool)

(assert (=> start!719038 m!8021390))

(declare-fun m!8021392 () Bool)

(assert (=> start!719038 m!8021392))

(declare-fun m!8021394 () Bool)

(assert (=> start!719038 m!8021394))

(declare-fun m!8021396 () Bool)

(assert (=> start!719038 m!8021396))

(declare-fun m!8021398 () Bool)

(assert (=> b!7365663 m!8021398))

(declare-fun m!8021400 () Bool)

(assert (=> b!7365663 m!8021400))

(declare-fun m!8021402 () Bool)

(assert (=> b!7365663 m!8021402))

(declare-fun m!8021404 () Bool)

(assert (=> b!7365654 m!8021404))

(declare-fun m!8021406 () Bool)

(assert (=> b!7365661 m!8021406))

(declare-fun m!8021408 () Bool)

(assert (=> b!7365661 m!8021408))

(declare-fun m!8021410 () Bool)

(assert (=> b!7365652 m!8021410))

(declare-fun m!8021412 () Bool)

(assert (=> b!7365652 m!8021412))

(assert (=> b!7365652 m!8021400))

(declare-fun m!8021414 () Bool)

(assert (=> b!7365656 m!8021414))

(declare-fun m!8021416 () Bool)

(assert (=> b!7365656 m!8021416))

(declare-fun m!8021418 () Bool)

(assert (=> b!7365659 m!8021418))

(assert (=> b!7365659 m!8021402))

(assert (=> b!7365659 m!8021402))

(assert (=> b!7365659 m!8021400))

(declare-fun m!8021420 () Bool)

(assert (=> b!7365659 m!8021420))

(declare-fun m!8021422 () Bool)

(assert (=> b!7365659 m!8021422))

(declare-fun m!8021424 () Bool)

(assert (=> b!7365659 m!8021424))

(declare-fun m!8021426 () Bool)

(assert (=> b!7365659 m!8021426))

(push 1)

(assert (not b!7365656))

(assert (not b!7365658))

(assert (not b!7365655))

(assert (not b!7365660))

(assert (not b!7365661))

(assert (not b!7365657))

(assert (not b!7365663))

(assert tp_is_empty!48757)

(assert (not b!7365664))

(assert (not b!7365662))

(assert (not b!7365659))

(assert (not start!719038))

(assert (not b!7365652))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2282727 () Bool)

(declare-fun res!2972858 () Bool)

(declare-fun e!4409891 () Bool)

(assert (=> d!2282727 (=> res!2972858 e!4409891)))

(assert (=> d!2282727 (= res!2972858 (is-ElementMatch!19256 r1!2370))))

(assert (=> d!2282727 (= (validRegex!9852 r1!2370) e!4409891)))

(declare-fun b!7365722 () Bool)

(declare-fun e!4409893 () Bool)

(declare-fun e!4409892 () Bool)

(assert (=> b!7365722 (= e!4409893 e!4409892)))

(declare-fun res!2972857 () Bool)

(assert (=> b!7365722 (=> (not res!2972857) (not e!4409892))))

(declare-fun call!675720 () Bool)

(assert (=> b!7365722 (= res!2972857 call!675720)))

(declare-fun bm!675713 () Bool)

(declare-fun call!675718 () Bool)

(declare-fun c!1368766 () Bool)

(assert (=> bm!675713 (= call!675718 (validRegex!9852 (ite c!1368766 (regOne!39025 r1!2370) (regTwo!39024 r1!2370))))))

(declare-fun b!7365723 () Bool)

(declare-fun res!2972859 () Bool)

(declare-fun e!4409894 () Bool)

(assert (=> b!7365723 (=> (not res!2972859) (not e!4409894))))

(assert (=> b!7365723 (= res!2972859 call!675718)))

(declare-fun e!4409889 () Bool)

(assert (=> b!7365723 (= e!4409889 e!4409894)))

(declare-fun b!7365724 () Bool)

(declare-fun e!4409895 () Bool)

(assert (=> b!7365724 (= e!4409895 e!4409889)))

(assert (=> b!7365724 (= c!1368766 (is-Union!19256 r1!2370))))

(declare-fun bm!675714 () Bool)

(declare-fun call!675719 () Bool)

(assert (=> bm!675714 (= call!675720 call!675719)))

(declare-fun b!7365725 () Bool)

(assert (=> b!7365725 (= e!4409892 call!675718)))

(declare-fun b!7365726 () Bool)

(declare-fun e!4409890 () Bool)

(assert (=> b!7365726 (= e!4409890 call!675719)))

(declare-fun b!7365727 () Bool)

(assert (=> b!7365727 (= e!4409891 e!4409895)))

(declare-fun c!1368767 () Bool)

(assert (=> b!7365727 (= c!1368767 (is-Star!19256 r1!2370))))

(declare-fun b!7365728 () Bool)

(declare-fun res!2972861 () Bool)

(assert (=> b!7365728 (=> res!2972861 e!4409893)))

(assert (=> b!7365728 (= res!2972861 (not (is-Concat!28101 r1!2370)))))

(assert (=> b!7365728 (= e!4409889 e!4409893)))

(declare-fun b!7365729 () Bool)

(assert (=> b!7365729 (= e!4409895 e!4409890)))

(declare-fun res!2972860 () Bool)

(declare-fun nullable!8334 (Regex!19256) Bool)

(assert (=> b!7365729 (= res!2972860 (not (nullable!8334 (reg!19585 r1!2370))))))

(assert (=> b!7365729 (=> (not res!2972860) (not e!4409890))))

(declare-fun bm!675715 () Bool)

(assert (=> bm!675715 (= call!675719 (validRegex!9852 (ite c!1368767 (reg!19585 r1!2370) (ite c!1368766 (regTwo!39025 r1!2370) (regOne!39024 r1!2370)))))))

(declare-fun b!7365730 () Bool)

(assert (=> b!7365730 (= e!4409894 call!675720)))

(assert (= (and d!2282727 (not res!2972858)) b!7365727))

(assert (= (and b!7365727 c!1368767) b!7365729))

(assert (= (and b!7365727 (not c!1368767)) b!7365724))

(assert (= (and b!7365729 res!2972860) b!7365726))

(assert (= (and b!7365724 c!1368766) b!7365723))

(assert (= (and b!7365724 (not c!1368766)) b!7365728))

(assert (= (and b!7365723 res!2972859) b!7365730))

(assert (= (and b!7365728 (not res!2972861)) b!7365722))

(assert (= (and b!7365722 res!2972857) b!7365725))

(assert (= (or b!7365723 b!7365725) bm!675713))

(assert (= (or b!7365730 b!7365722) bm!675714))

(assert (= (or b!7365726 bm!675714) bm!675715))

(declare-fun m!8021466 () Bool)

(assert (=> bm!675713 m!8021466))

(declare-fun m!8021468 () Bool)

(assert (=> b!7365729 m!8021468))

(declare-fun m!8021470 () Bool)

(assert (=> bm!675715 m!8021470))

(assert (=> start!719038 d!2282727))

(declare-fun bs!1920504 () Bool)

(declare-fun d!2282729 () Bool)

(assert (= bs!1920504 (and d!2282729 b!7365652)))

(declare-fun lambda!457742 () Int)

(assert (=> bs!1920504 (= lambda!457742 lambda!457726)))

(declare-fun forall!18064 (List!71752 Int) Bool)

(assert (=> d!2282729 (= (inv!91481 cWitness!61) (forall!18064 (exprs!8696 cWitness!61) lambda!457742))))

(declare-fun bs!1920505 () Bool)

(assert (= bs!1920505 d!2282729))

(declare-fun m!8021472 () Bool)

(assert (=> bs!1920505 m!8021472))

(assert (=> start!719038 d!2282729))

(declare-fun bs!1920506 () Bool)

(declare-fun d!2282731 () Bool)

(assert (= bs!1920506 (and d!2282731 b!7365652)))

(declare-fun lambda!457743 () Int)

(assert (=> bs!1920506 (= lambda!457743 lambda!457726)))

(declare-fun bs!1920507 () Bool)

(assert (= bs!1920507 (and d!2282731 d!2282729)))

(assert (=> bs!1920507 (= lambda!457743 lambda!457742)))

(assert (=> d!2282731 (= (inv!91481 ct1!282) (forall!18064 (exprs!8696 ct1!282) lambda!457743))))

(declare-fun bs!1920508 () Bool)

(assert (= bs!1920508 d!2282731))

(declare-fun m!8021474 () Bool)

(assert (=> bs!1920508 m!8021474))

(assert (=> start!719038 d!2282731))

(declare-fun bs!1920509 () Bool)

(declare-fun d!2282733 () Bool)

(assert (= bs!1920509 (and d!2282733 b!7365652)))

(declare-fun lambda!457744 () Int)

(assert (=> bs!1920509 (= lambda!457744 lambda!457726)))

(declare-fun bs!1920510 () Bool)

(assert (= bs!1920510 (and d!2282733 d!2282729)))

(assert (=> bs!1920510 (= lambda!457744 lambda!457742)))

(declare-fun bs!1920511 () Bool)

(assert (= bs!1920511 (and d!2282733 d!2282731)))

(assert (=> bs!1920511 (= lambda!457744 lambda!457743)))

(assert (=> d!2282733 (= (inv!91481 ct2!378) (forall!18064 (exprs!8696 ct2!378) lambda!457744))))

(declare-fun bs!1920512 () Bool)

(assert (= bs!1920512 d!2282733))

(declare-fun m!8021476 () Bool)

(assert (=> bs!1920512 m!8021476))

(assert (=> start!719038 d!2282733))

(declare-fun b!7365753 () Bool)

(declare-fun c!1368782 () Bool)

(assert (=> b!7365753 (= c!1368782 (is-Star!19256 r1!2370))))

(declare-fun e!4409908 () (Set Context!16392))

(declare-fun e!4409913 () (Set Context!16392))

(assert (=> b!7365753 (= e!4409908 e!4409913)))

(declare-fun b!7365754 () Bool)

(declare-fun e!4409911 () (Set Context!16392))

(assert (=> b!7365754 (= e!4409911 (set.insert ct1!282 (as set.empty (Set Context!16392))))))

(declare-fun d!2282735 () Bool)

(declare-fun c!1368781 () Bool)

(assert (=> d!2282735 (= c!1368781 (and (is-ElementMatch!19256 r1!2370) (= (c!1368760 r1!2370) c!10362)))))

(assert (=> d!2282735 (= (derivationStepZipperDown!3082 r1!2370 ct1!282 c!10362) e!4409911)))

(declare-fun b!7365755 () Bool)

(declare-fun e!4409910 () (Set Context!16392))

(declare-fun call!675734 () (Set Context!16392))

(declare-fun call!675738 () (Set Context!16392))

(assert (=> b!7365755 (= e!4409910 (set.union call!675734 call!675738))))

(declare-fun b!7365756 () Bool)

(assert (=> b!7365756 (= e!4409913 (as set.empty (Set Context!16392)))))

(declare-fun b!7365757 () Bool)

(declare-fun c!1368779 () Bool)

(declare-fun e!4409912 () Bool)

(assert (=> b!7365757 (= c!1368779 e!4409912)))

(declare-fun res!2972864 () Bool)

(assert (=> b!7365757 (=> (not res!2972864) (not e!4409912))))

(assert (=> b!7365757 (= res!2972864 (is-Concat!28101 r1!2370))))

(declare-fun e!4409909 () (Set Context!16392))

(assert (=> b!7365757 (= e!4409909 e!4409910)))

(declare-fun b!7365758 () Bool)

(assert (=> b!7365758 (= e!4409911 e!4409909)))

(declare-fun c!1368778 () Bool)

(assert (=> b!7365758 (= c!1368778 (is-Union!19256 r1!2370))))

(declare-fun bm!675728 () Bool)

(declare-fun call!675737 () List!71752)

(declare-fun call!675735 () (Set Context!16392))

(declare-fun c!1368780 () Bool)

(assert (=> bm!675728 (= call!675735 (derivationStepZipperDown!3082 (ite c!1368778 (regTwo!39025 r1!2370) (ite c!1368779 (regTwo!39024 r1!2370) (ite c!1368780 (regOne!39024 r1!2370) (reg!19585 r1!2370)))) (ite (or c!1368778 c!1368779) ct1!282 (Context!16393 call!675737)) c!10362))))

(declare-fun b!7365759 () Bool)

(assert (=> b!7365759 (= e!4409912 (nullable!8334 (regOne!39024 r1!2370)))))

(declare-fun b!7365760 () Bool)

(declare-fun call!675733 () (Set Context!16392))

(assert (=> b!7365760 (= e!4409908 call!675733)))

(declare-fun bm!675729 () Bool)

(assert (=> bm!675729 (= call!675733 call!675738)))

(declare-fun bm!675730 () Bool)

(declare-fun call!675736 () List!71752)

(declare-fun $colon$colon!3240 (List!71752 Regex!19256) List!71752)

(assert (=> bm!675730 (= call!675736 ($colon$colon!3240 (exprs!8696 ct1!282) (ite (or c!1368779 c!1368780) (regTwo!39024 r1!2370) r1!2370)))))

(declare-fun bm!675731 () Bool)

(assert (=> bm!675731 (= call!675734 (derivationStepZipperDown!3082 (ite c!1368778 (regOne!39025 r1!2370) (regOne!39024 r1!2370)) (ite c!1368778 ct1!282 (Context!16393 call!675736)) c!10362))))

(declare-fun b!7365761 () Bool)

(assert (=> b!7365761 (= e!4409910 e!4409908)))

(assert (=> b!7365761 (= c!1368780 (is-Concat!28101 r1!2370))))

(declare-fun bm!675732 () Bool)

(assert (=> bm!675732 (= call!675738 call!675735)))

(declare-fun b!7365762 () Bool)

(assert (=> b!7365762 (= e!4409909 (set.union call!675734 call!675735))))

(declare-fun bm!675733 () Bool)

(assert (=> bm!675733 (= call!675737 call!675736)))

(declare-fun b!7365763 () Bool)

(assert (=> b!7365763 (= e!4409913 call!675733)))

(assert (= (and d!2282735 c!1368781) b!7365754))

(assert (= (and d!2282735 (not c!1368781)) b!7365758))

(assert (= (and b!7365758 c!1368778) b!7365762))

(assert (= (and b!7365758 (not c!1368778)) b!7365757))

(assert (= (and b!7365757 res!2972864) b!7365759))

(assert (= (and b!7365757 c!1368779) b!7365755))

(assert (= (and b!7365757 (not c!1368779)) b!7365761))

(assert (= (and b!7365761 c!1368780) b!7365760))

(assert (= (and b!7365761 (not c!1368780)) b!7365753))

(assert (= (and b!7365753 c!1368782) b!7365763))

(assert (= (and b!7365753 (not c!1368782)) b!7365756))

(assert (= (or b!7365760 b!7365763) bm!675733))

(assert (= (or b!7365760 b!7365763) bm!675729))

(assert (= (or b!7365755 bm!675729) bm!675732))

(assert (= (or b!7365755 bm!675733) bm!675730))

(assert (= (or b!7365762 bm!675732) bm!675728))

(assert (= (or b!7365762 b!7365755) bm!675731))

(declare-fun m!8021478 () Bool)

(assert (=> bm!675731 m!8021478))

(declare-fun m!8021480 () Bool)

(assert (=> bm!675730 m!8021480))

(declare-fun m!8021482 () Bool)

(assert (=> bm!675728 m!8021482))

(declare-fun m!8021484 () Bool)

(assert (=> b!7365754 m!8021484))

(declare-fun m!8021486 () Bool)

(assert (=> b!7365759 m!8021486))

(assert (=> b!7365661 d!2282735))

(declare-fun b!7365764 () Bool)

(declare-fun c!1368787 () Bool)

(assert (=> b!7365764 (= c!1368787 (is-Star!19256 (regTwo!39025 r1!2370)))))

(declare-fun e!4409914 () (Set Context!16392))

(declare-fun e!4409919 () (Set Context!16392))

(assert (=> b!7365764 (= e!4409914 e!4409919)))

(declare-fun b!7365765 () Bool)

(declare-fun e!4409917 () (Set Context!16392))

(assert (=> b!7365765 (= e!4409917 (set.insert ct1!282 (as set.empty (Set Context!16392))))))

(declare-fun d!2282739 () Bool)

(declare-fun c!1368786 () Bool)

(assert (=> d!2282739 (= c!1368786 (and (is-ElementMatch!19256 (regTwo!39025 r1!2370)) (= (c!1368760 (regTwo!39025 r1!2370)) c!10362)))))

(assert (=> d!2282739 (= (derivationStepZipperDown!3082 (regTwo!39025 r1!2370) ct1!282 c!10362) e!4409917)))

(declare-fun b!7365766 () Bool)

(declare-fun e!4409916 () (Set Context!16392))

(declare-fun call!675740 () (Set Context!16392))

(declare-fun call!675744 () (Set Context!16392))

(assert (=> b!7365766 (= e!4409916 (set.union call!675740 call!675744))))

(declare-fun b!7365767 () Bool)

(assert (=> b!7365767 (= e!4409919 (as set.empty (Set Context!16392)))))

(declare-fun b!7365768 () Bool)

(declare-fun c!1368784 () Bool)

(declare-fun e!4409918 () Bool)

(assert (=> b!7365768 (= c!1368784 e!4409918)))

(declare-fun res!2972865 () Bool)

(assert (=> b!7365768 (=> (not res!2972865) (not e!4409918))))

(assert (=> b!7365768 (= res!2972865 (is-Concat!28101 (regTwo!39025 r1!2370)))))

(declare-fun e!4409915 () (Set Context!16392))

(assert (=> b!7365768 (= e!4409915 e!4409916)))

(declare-fun b!7365769 () Bool)

(assert (=> b!7365769 (= e!4409917 e!4409915)))

(declare-fun c!1368783 () Bool)

(assert (=> b!7365769 (= c!1368783 (is-Union!19256 (regTwo!39025 r1!2370)))))

(declare-fun bm!675734 () Bool)

(declare-fun call!675743 () List!71752)

(declare-fun c!1368785 () Bool)

(declare-fun call!675741 () (Set Context!16392))

(assert (=> bm!675734 (= call!675741 (derivationStepZipperDown!3082 (ite c!1368783 (regTwo!39025 (regTwo!39025 r1!2370)) (ite c!1368784 (regTwo!39024 (regTwo!39025 r1!2370)) (ite c!1368785 (regOne!39024 (regTwo!39025 r1!2370)) (reg!19585 (regTwo!39025 r1!2370))))) (ite (or c!1368783 c!1368784) ct1!282 (Context!16393 call!675743)) c!10362))))

(declare-fun b!7365770 () Bool)

(assert (=> b!7365770 (= e!4409918 (nullable!8334 (regOne!39024 (regTwo!39025 r1!2370))))))

(declare-fun b!7365771 () Bool)

(declare-fun call!675739 () (Set Context!16392))

(assert (=> b!7365771 (= e!4409914 call!675739)))

(declare-fun bm!675735 () Bool)

(assert (=> bm!675735 (= call!675739 call!675744)))

(declare-fun call!675742 () List!71752)

(declare-fun bm!675736 () Bool)

(assert (=> bm!675736 (= call!675742 ($colon$colon!3240 (exprs!8696 ct1!282) (ite (or c!1368784 c!1368785) (regTwo!39024 (regTwo!39025 r1!2370)) (regTwo!39025 r1!2370))))))

(declare-fun bm!675737 () Bool)

(assert (=> bm!675737 (= call!675740 (derivationStepZipperDown!3082 (ite c!1368783 (regOne!39025 (regTwo!39025 r1!2370)) (regOne!39024 (regTwo!39025 r1!2370))) (ite c!1368783 ct1!282 (Context!16393 call!675742)) c!10362))))

(declare-fun b!7365772 () Bool)

(assert (=> b!7365772 (= e!4409916 e!4409914)))

(assert (=> b!7365772 (= c!1368785 (is-Concat!28101 (regTwo!39025 r1!2370)))))

(declare-fun bm!675738 () Bool)

(assert (=> bm!675738 (= call!675744 call!675741)))

(declare-fun b!7365773 () Bool)

(assert (=> b!7365773 (= e!4409915 (set.union call!675740 call!675741))))

(declare-fun bm!675739 () Bool)

(assert (=> bm!675739 (= call!675743 call!675742)))

(declare-fun b!7365774 () Bool)

(assert (=> b!7365774 (= e!4409919 call!675739)))

(assert (= (and d!2282739 c!1368786) b!7365765))

(assert (= (and d!2282739 (not c!1368786)) b!7365769))

(assert (= (and b!7365769 c!1368783) b!7365773))

(assert (= (and b!7365769 (not c!1368783)) b!7365768))

(assert (= (and b!7365768 res!2972865) b!7365770))

(assert (= (and b!7365768 c!1368784) b!7365766))

(assert (= (and b!7365768 (not c!1368784)) b!7365772))

(assert (= (and b!7365772 c!1368785) b!7365771))

(assert (= (and b!7365772 (not c!1368785)) b!7365764))

(assert (= (and b!7365764 c!1368787) b!7365774))

(assert (= (and b!7365764 (not c!1368787)) b!7365767))

(assert (= (or b!7365771 b!7365774) bm!675739))

(assert (= (or b!7365771 b!7365774) bm!675735))

(assert (= (or b!7365766 bm!675735) bm!675738))

(assert (= (or b!7365766 bm!675739) bm!675736))

(assert (= (or b!7365773 bm!675738) bm!675734))

(assert (= (or b!7365773 b!7365766) bm!675737))

(declare-fun m!8021488 () Bool)

(assert (=> bm!675737 m!8021488))

(declare-fun m!8021490 () Bool)

(assert (=> bm!675736 m!8021490))

(declare-fun m!8021492 () Bool)

(assert (=> bm!675734 m!8021492))

(assert (=> b!7365765 m!8021484))

(declare-fun m!8021494 () Bool)

(assert (=> b!7365770 m!8021494))

(assert (=> b!7365656 d!2282739))

(declare-fun b!7365775 () Bool)

(declare-fun c!1368792 () Bool)

(assert (=> b!7365775 (= c!1368792 (is-Star!19256 (regOne!39025 r1!2370)))))

(declare-fun e!4409920 () (Set Context!16392))

(declare-fun e!4409925 () (Set Context!16392))

(assert (=> b!7365775 (= e!4409920 e!4409925)))

(declare-fun b!7365776 () Bool)

(declare-fun e!4409923 () (Set Context!16392))

(assert (=> b!7365776 (= e!4409923 (set.insert ct1!282 (as set.empty (Set Context!16392))))))

(declare-fun d!2282741 () Bool)

(declare-fun c!1368791 () Bool)

(assert (=> d!2282741 (= c!1368791 (and (is-ElementMatch!19256 (regOne!39025 r1!2370)) (= (c!1368760 (regOne!39025 r1!2370)) c!10362)))))

(assert (=> d!2282741 (= (derivationStepZipperDown!3082 (regOne!39025 r1!2370) ct1!282 c!10362) e!4409923)))

(declare-fun b!7365777 () Bool)

(declare-fun e!4409922 () (Set Context!16392))

(declare-fun call!675746 () (Set Context!16392))

(declare-fun call!675750 () (Set Context!16392))

(assert (=> b!7365777 (= e!4409922 (set.union call!675746 call!675750))))

(declare-fun b!7365778 () Bool)

(assert (=> b!7365778 (= e!4409925 (as set.empty (Set Context!16392)))))

(declare-fun b!7365779 () Bool)

(declare-fun c!1368789 () Bool)

(declare-fun e!4409924 () Bool)

(assert (=> b!7365779 (= c!1368789 e!4409924)))

(declare-fun res!2972866 () Bool)

(assert (=> b!7365779 (=> (not res!2972866) (not e!4409924))))

(assert (=> b!7365779 (= res!2972866 (is-Concat!28101 (regOne!39025 r1!2370)))))

(declare-fun e!4409921 () (Set Context!16392))

(assert (=> b!7365779 (= e!4409921 e!4409922)))

(declare-fun b!7365780 () Bool)

(assert (=> b!7365780 (= e!4409923 e!4409921)))

(declare-fun c!1368788 () Bool)

(assert (=> b!7365780 (= c!1368788 (is-Union!19256 (regOne!39025 r1!2370)))))

(declare-fun call!675749 () List!71752)

(declare-fun call!675747 () (Set Context!16392))

(declare-fun bm!675740 () Bool)

(declare-fun c!1368790 () Bool)

(assert (=> bm!675740 (= call!675747 (derivationStepZipperDown!3082 (ite c!1368788 (regTwo!39025 (regOne!39025 r1!2370)) (ite c!1368789 (regTwo!39024 (regOne!39025 r1!2370)) (ite c!1368790 (regOne!39024 (regOne!39025 r1!2370)) (reg!19585 (regOne!39025 r1!2370))))) (ite (or c!1368788 c!1368789) ct1!282 (Context!16393 call!675749)) c!10362))))

(declare-fun b!7365781 () Bool)

(assert (=> b!7365781 (= e!4409924 (nullable!8334 (regOne!39024 (regOne!39025 r1!2370))))))

(declare-fun b!7365782 () Bool)

(declare-fun call!675745 () (Set Context!16392))

(assert (=> b!7365782 (= e!4409920 call!675745)))

(declare-fun bm!675741 () Bool)

(assert (=> bm!675741 (= call!675745 call!675750)))

(declare-fun call!675748 () List!71752)

(declare-fun bm!675742 () Bool)

(assert (=> bm!675742 (= call!675748 ($colon$colon!3240 (exprs!8696 ct1!282) (ite (or c!1368789 c!1368790) (regTwo!39024 (regOne!39025 r1!2370)) (regOne!39025 r1!2370))))))

(declare-fun bm!675743 () Bool)

(assert (=> bm!675743 (= call!675746 (derivationStepZipperDown!3082 (ite c!1368788 (regOne!39025 (regOne!39025 r1!2370)) (regOne!39024 (regOne!39025 r1!2370))) (ite c!1368788 ct1!282 (Context!16393 call!675748)) c!10362))))

(declare-fun b!7365783 () Bool)

(assert (=> b!7365783 (= e!4409922 e!4409920)))

(assert (=> b!7365783 (= c!1368790 (is-Concat!28101 (regOne!39025 r1!2370)))))

(declare-fun bm!675744 () Bool)

(assert (=> bm!675744 (= call!675750 call!675747)))

(declare-fun b!7365784 () Bool)

(assert (=> b!7365784 (= e!4409921 (set.union call!675746 call!675747))))

(declare-fun bm!675745 () Bool)

(assert (=> bm!675745 (= call!675749 call!675748)))

(declare-fun b!7365785 () Bool)

(assert (=> b!7365785 (= e!4409925 call!675745)))

(assert (= (and d!2282741 c!1368791) b!7365776))

(assert (= (and d!2282741 (not c!1368791)) b!7365780))

(assert (= (and b!7365780 c!1368788) b!7365784))

(assert (= (and b!7365780 (not c!1368788)) b!7365779))

(assert (= (and b!7365779 res!2972866) b!7365781))

(assert (= (and b!7365779 c!1368789) b!7365777))

(assert (= (and b!7365779 (not c!1368789)) b!7365783))

(assert (= (and b!7365783 c!1368790) b!7365782))

(assert (= (and b!7365783 (not c!1368790)) b!7365775))

(assert (= (and b!7365775 c!1368792) b!7365785))

(assert (= (and b!7365775 (not c!1368792)) b!7365778))

(assert (= (or b!7365782 b!7365785) bm!675745))

(assert (= (or b!7365782 b!7365785) bm!675741))

(assert (= (or b!7365777 bm!675741) bm!675744))

(assert (= (or b!7365777 bm!675745) bm!675742))

(assert (= (or b!7365784 bm!675744) bm!675740))

(assert (= (or b!7365784 b!7365777) bm!675743))

(declare-fun m!8021496 () Bool)

(assert (=> bm!675743 m!8021496))

(declare-fun m!8021498 () Bool)

(assert (=> bm!675742 m!8021498))

(declare-fun m!8021500 () Bool)

(assert (=> bm!675740 m!8021500))

(assert (=> b!7365776 m!8021484))

(declare-fun m!8021502 () Bool)

(assert (=> b!7365781 m!8021502))

(assert (=> b!7365656 d!2282741))

(declare-fun bs!1920513 () Bool)

(declare-fun d!2282743 () Bool)

(assert (= bs!1920513 (and d!2282743 b!7365652)))

(declare-fun lambda!457749 () Int)

(assert (=> bs!1920513 (= lambda!457749 lambda!457726)))

(declare-fun bs!1920514 () Bool)

(assert (= bs!1920514 (and d!2282743 d!2282729)))

(assert (=> bs!1920514 (= lambda!457749 lambda!457742)))

(declare-fun bs!1920515 () Bool)

(assert (= bs!1920515 (and d!2282743 d!2282731)))

(assert (=> bs!1920515 (= lambda!457749 lambda!457743)))

(declare-fun bs!1920516 () Bool)

(assert (= bs!1920516 (and d!2282743 d!2282733)))

(assert (=> bs!1920516 (= lambda!457749 lambda!457744)))

(assert (=> d!2282743 (set.member (Context!16393 (++!17072 (exprs!8696 cWitness!61) (exprs!8696 ct2!378))) (derivationStepZipperDown!3082 (regTwo!39025 r1!2370) (Context!16393 (++!17072 (exprs!8696 ct1!282) (exprs!8696 ct2!378))) c!10362))))

(declare-fun lt!2614878 () Unit!165461)

(assert (=> d!2282743 (= lt!2614878 (lemmaConcatPreservesForall!1929 (exprs!8696 ct1!282) (exprs!8696 ct2!378) lambda!457749))))

(declare-fun lt!2614877 () Unit!165461)

(assert (=> d!2282743 (= lt!2614877 (lemmaConcatPreservesForall!1929 (exprs!8696 cWitness!61) (exprs!8696 ct2!378) lambda!457749))))

(declare-fun lt!2614876 () Unit!165461)

(declare-fun choose!57281 (Regex!19256 Context!16392 Context!16392 Context!16392 C!38786) Unit!165461)

(assert (=> d!2282743 (= lt!2614876 (choose!57281 (regTwo!39025 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2282743 (validRegex!9852 (regTwo!39025 r1!2370))))

(assert (=> d!2282743 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!125 (regTwo!39025 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362) lt!2614876)))

(declare-fun bs!1920517 () Bool)

(assert (= bs!1920517 d!2282743))

(declare-fun m!8021504 () Bool)

(assert (=> bs!1920517 m!8021504))

(declare-fun m!8021506 () Bool)

(assert (=> bs!1920517 m!8021506))

(declare-fun m!8021508 () Bool)

(assert (=> bs!1920517 m!8021508))

(assert (=> bs!1920517 m!8021412))

(declare-fun m!8021510 () Bool)

(assert (=> bs!1920517 m!8021510))

(declare-fun m!8021512 () Bool)

(assert (=> bs!1920517 m!8021512))

(declare-fun m!8021514 () Bool)

(assert (=> bs!1920517 m!8021514))

(assert (=> bs!1920517 m!8021420))

(assert (=> b!7365659 d!2282743))

(declare-fun d!2282745 () Bool)

(assert (=> d!2282745 (forall!18064 (++!17072 (exprs!8696 ct1!282) (exprs!8696 ct2!378)) lambda!457726)))

(declare-fun lt!2614881 () Unit!165461)

(declare-fun choose!57282 (List!71752 List!71752 Int) Unit!165461)

(assert (=> d!2282745 (= lt!2614881 (choose!57282 (exprs!8696 ct1!282) (exprs!8696 ct2!378) lambda!457726))))

(assert (=> d!2282745 (forall!18064 (exprs!8696 ct1!282) lambda!457726)))

(assert (=> d!2282745 (= (lemmaConcatPreservesForall!1929 (exprs!8696 ct1!282) (exprs!8696 ct2!378) lambda!457726) lt!2614881)))

(declare-fun bs!1920518 () Bool)

(assert (= bs!1920518 d!2282745))

(assert (=> bs!1920518 m!8021412))

(assert (=> bs!1920518 m!8021412))

(declare-fun m!8021516 () Bool)

(assert (=> bs!1920518 m!8021516))

(declare-fun m!8021518 () Bool)

(assert (=> bs!1920518 m!8021518))

(declare-fun m!8021520 () Bool)

(assert (=> bs!1920518 m!8021520))

(assert (=> b!7365659 d!2282745))

(declare-fun b!7365819 () Bool)

(declare-fun lt!2614884 () List!71752)

(declare-fun e!4409943 () Bool)

(assert (=> b!7365819 (= e!4409943 (or (not (= (exprs!8696 ct2!378) Nil!71628)) (= lt!2614884 (exprs!8696 cWitness!61))))))

(declare-fun d!2282747 () Bool)

(assert (=> d!2282747 e!4409943))

(declare-fun res!2972873 () Bool)

(assert (=> d!2282747 (=> (not res!2972873) (not e!4409943))))

(declare-fun content!15140 (List!71752) (Set Regex!19256))

(assert (=> d!2282747 (= res!2972873 (= (content!15140 lt!2614884) (set.union (content!15140 (exprs!8696 cWitness!61)) (content!15140 (exprs!8696 ct2!378)))))))

(declare-fun e!4409942 () List!71752)

(assert (=> d!2282747 (= lt!2614884 e!4409942)))

(declare-fun c!1368806 () Bool)

(assert (=> d!2282747 (= c!1368806 (is-Nil!71628 (exprs!8696 cWitness!61)))))

(assert (=> d!2282747 (= (++!17072 (exprs!8696 cWitness!61) (exprs!8696 ct2!378)) lt!2614884)))

(declare-fun b!7365816 () Bool)

(assert (=> b!7365816 (= e!4409942 (exprs!8696 ct2!378))))

(declare-fun b!7365818 () Bool)

(declare-fun res!2972874 () Bool)

(assert (=> b!7365818 (=> (not res!2972874) (not e!4409943))))

(declare-fun size!42118 (List!71752) Int)

(assert (=> b!7365818 (= res!2972874 (= (size!42118 lt!2614884) (+ (size!42118 (exprs!8696 cWitness!61)) (size!42118 (exprs!8696 ct2!378)))))))

(declare-fun b!7365817 () Bool)

(assert (=> b!7365817 (= e!4409942 (Cons!71628 (h!78076 (exprs!8696 cWitness!61)) (++!17072 (t!386201 (exprs!8696 cWitness!61)) (exprs!8696 ct2!378))))))

(assert (= (and d!2282747 c!1368806) b!7365816))

(assert (= (and d!2282747 (not c!1368806)) b!7365817))

(assert (= (and d!2282747 res!2972873) b!7365818))

(assert (= (and b!7365818 res!2972874) b!7365819))

(declare-fun m!8021522 () Bool)

(assert (=> d!2282747 m!8021522))

(declare-fun m!8021524 () Bool)

(assert (=> d!2282747 m!8021524))

(declare-fun m!8021526 () Bool)

(assert (=> d!2282747 m!8021526))

(declare-fun m!8021528 () Bool)

(assert (=> b!7365818 m!8021528))

(declare-fun m!8021530 () Bool)

(assert (=> b!7365818 m!8021530))

(declare-fun m!8021532 () Bool)

(assert (=> b!7365818 m!8021532))

(declare-fun m!8021534 () Bool)

(assert (=> b!7365817 m!8021534))

(assert (=> b!7365659 d!2282747))

(declare-fun d!2282749 () Bool)

(assert (=> d!2282749 (forall!18064 (++!17072 (exprs!8696 cWitness!61) (exprs!8696 ct2!378)) lambda!457726)))

(declare-fun lt!2614885 () Unit!165461)

(assert (=> d!2282749 (= lt!2614885 (choose!57282 (exprs!8696 cWitness!61) (exprs!8696 ct2!378) lambda!457726))))

(assert (=> d!2282749 (forall!18064 (exprs!8696 cWitness!61) lambda!457726)))

(assert (=> d!2282749 (= (lemmaConcatPreservesForall!1929 (exprs!8696 cWitness!61) (exprs!8696 ct2!378) lambda!457726) lt!2614885)))

(declare-fun bs!1920519 () Bool)

(assert (= bs!1920519 d!2282749))

(assert (=> bs!1920519 m!8021420))

(assert (=> bs!1920519 m!8021420))

(declare-fun m!8021536 () Bool)

(assert (=> bs!1920519 m!8021536))

(declare-fun m!8021538 () Bool)

(assert (=> bs!1920519 m!8021538))

(declare-fun m!8021540 () Bool)

(assert (=> bs!1920519 m!8021540))

(assert (=> b!7365659 d!2282749))

(declare-fun b!7365820 () Bool)

(declare-fun c!1368811 () Bool)

(assert (=> b!7365820 (= c!1368811 (is-Star!19256 (regTwo!39025 r1!2370)))))

(declare-fun e!4409944 () (Set Context!16392))

(declare-fun e!4409949 () (Set Context!16392))

(assert (=> b!7365820 (= e!4409944 e!4409949)))

(declare-fun b!7365821 () Bool)

(declare-fun e!4409947 () (Set Context!16392))

(assert (=> b!7365821 (= e!4409947 (set.insert lt!2614830 (as set.empty (Set Context!16392))))))

(declare-fun d!2282751 () Bool)

(declare-fun c!1368810 () Bool)

(assert (=> d!2282751 (= c!1368810 (and (is-ElementMatch!19256 (regTwo!39025 r1!2370)) (= (c!1368760 (regTwo!39025 r1!2370)) c!10362)))))

(assert (=> d!2282751 (= (derivationStepZipperDown!3082 (regTwo!39025 r1!2370) lt!2614830 c!10362) e!4409947)))

(declare-fun b!7365822 () Bool)

(declare-fun e!4409946 () (Set Context!16392))

(declare-fun call!675764 () (Set Context!16392))

(declare-fun call!675768 () (Set Context!16392))

(assert (=> b!7365822 (= e!4409946 (set.union call!675764 call!675768))))

(declare-fun b!7365823 () Bool)

(assert (=> b!7365823 (= e!4409949 (as set.empty (Set Context!16392)))))

(declare-fun b!7365824 () Bool)

(declare-fun c!1368808 () Bool)

(declare-fun e!4409948 () Bool)

(assert (=> b!7365824 (= c!1368808 e!4409948)))

(declare-fun res!2972875 () Bool)

(assert (=> b!7365824 (=> (not res!2972875) (not e!4409948))))

(assert (=> b!7365824 (= res!2972875 (is-Concat!28101 (regTwo!39025 r1!2370)))))

(declare-fun e!4409945 () (Set Context!16392))

(assert (=> b!7365824 (= e!4409945 e!4409946)))

(declare-fun b!7365825 () Bool)

(assert (=> b!7365825 (= e!4409947 e!4409945)))

(declare-fun c!1368807 () Bool)

(assert (=> b!7365825 (= c!1368807 (is-Union!19256 (regTwo!39025 r1!2370)))))

(declare-fun bm!675758 () Bool)

(declare-fun c!1368809 () Bool)

(declare-fun call!675765 () (Set Context!16392))

(declare-fun call!675767 () List!71752)

(assert (=> bm!675758 (= call!675765 (derivationStepZipperDown!3082 (ite c!1368807 (regTwo!39025 (regTwo!39025 r1!2370)) (ite c!1368808 (regTwo!39024 (regTwo!39025 r1!2370)) (ite c!1368809 (regOne!39024 (regTwo!39025 r1!2370)) (reg!19585 (regTwo!39025 r1!2370))))) (ite (or c!1368807 c!1368808) lt!2614830 (Context!16393 call!675767)) c!10362))))

(declare-fun b!7365826 () Bool)

(assert (=> b!7365826 (= e!4409948 (nullable!8334 (regOne!39024 (regTwo!39025 r1!2370))))))

(declare-fun b!7365827 () Bool)

(declare-fun call!675763 () (Set Context!16392))

(assert (=> b!7365827 (= e!4409944 call!675763)))

(declare-fun bm!675759 () Bool)

(assert (=> bm!675759 (= call!675763 call!675768)))

(declare-fun call!675766 () List!71752)

(declare-fun bm!675760 () Bool)

(assert (=> bm!675760 (= call!675766 ($colon$colon!3240 (exprs!8696 lt!2614830) (ite (or c!1368808 c!1368809) (regTwo!39024 (regTwo!39025 r1!2370)) (regTwo!39025 r1!2370))))))

(declare-fun bm!675761 () Bool)

(assert (=> bm!675761 (= call!675764 (derivationStepZipperDown!3082 (ite c!1368807 (regOne!39025 (regTwo!39025 r1!2370)) (regOne!39024 (regTwo!39025 r1!2370))) (ite c!1368807 lt!2614830 (Context!16393 call!675766)) c!10362))))

(declare-fun b!7365828 () Bool)

(assert (=> b!7365828 (= e!4409946 e!4409944)))

(assert (=> b!7365828 (= c!1368809 (is-Concat!28101 (regTwo!39025 r1!2370)))))

(declare-fun bm!675762 () Bool)

(assert (=> bm!675762 (= call!675768 call!675765)))

(declare-fun b!7365829 () Bool)

(assert (=> b!7365829 (= e!4409945 (set.union call!675764 call!675765))))

(declare-fun bm!675763 () Bool)

(assert (=> bm!675763 (= call!675767 call!675766)))

(declare-fun b!7365830 () Bool)

(assert (=> b!7365830 (= e!4409949 call!675763)))

(assert (= (and d!2282751 c!1368810) b!7365821))

(assert (= (and d!2282751 (not c!1368810)) b!7365825))

(assert (= (and b!7365825 c!1368807) b!7365829))

(assert (= (and b!7365825 (not c!1368807)) b!7365824))

(assert (= (and b!7365824 res!2972875) b!7365826))

(assert (= (and b!7365824 c!1368808) b!7365822))

(assert (= (and b!7365824 (not c!1368808)) b!7365828))

(assert (= (and b!7365828 c!1368809) b!7365827))

(assert (= (and b!7365828 (not c!1368809)) b!7365820))

(assert (= (and b!7365820 c!1368811) b!7365830))

(assert (= (and b!7365820 (not c!1368811)) b!7365823))

(assert (= (or b!7365827 b!7365830) bm!675763))

(assert (= (or b!7365827 b!7365830) bm!675759))

(assert (= (or b!7365822 bm!675759) bm!675762))

(assert (= (or b!7365822 bm!675763) bm!675760))

(assert (= (or b!7365829 bm!675762) bm!675758))

(assert (= (or b!7365829 b!7365822) bm!675761))

(declare-fun m!8021542 () Bool)

(assert (=> bm!675761 m!8021542))

(declare-fun m!8021544 () Bool)

(assert (=> bm!675760 m!8021544))

(declare-fun m!8021546 () Bool)

(assert (=> bm!675758 m!8021546))

(declare-fun m!8021548 () Bool)

(assert (=> b!7365821 m!8021548))

(assert (=> b!7365826 m!8021494))

(assert (=> b!7365659 d!2282751))

(declare-fun b!7365842 () Bool)

(declare-fun c!1368821 () Bool)

(assert (=> b!7365842 (= c!1368821 (is-Star!19256 r1!2370))))

(declare-fun e!4409956 () (Set Context!16392))

(declare-fun e!4409961 () (Set Context!16392))

(assert (=> b!7365842 (= e!4409956 e!4409961)))

(declare-fun b!7365843 () Bool)

(declare-fun e!4409959 () (Set Context!16392))

(assert (=> b!7365843 (= e!4409959 (set.insert lt!2614830 (as set.empty (Set Context!16392))))))

(declare-fun d!2282753 () Bool)

(declare-fun c!1368820 () Bool)

(assert (=> d!2282753 (= c!1368820 (and (is-ElementMatch!19256 r1!2370) (= (c!1368760 r1!2370) c!10362)))))

(assert (=> d!2282753 (= (derivationStepZipperDown!3082 r1!2370 lt!2614830 c!10362) e!4409959)))

(declare-fun b!7365844 () Bool)

(declare-fun e!4409958 () (Set Context!16392))

(declare-fun call!675776 () (Set Context!16392))

(declare-fun call!675780 () (Set Context!16392))

(assert (=> b!7365844 (= e!4409958 (set.union call!675776 call!675780))))

(declare-fun b!7365845 () Bool)

(assert (=> b!7365845 (= e!4409961 (as set.empty (Set Context!16392)))))

(declare-fun b!7365846 () Bool)

(declare-fun c!1368818 () Bool)

(declare-fun e!4409960 () Bool)

(assert (=> b!7365846 (= c!1368818 e!4409960)))

(declare-fun res!2972877 () Bool)

(assert (=> b!7365846 (=> (not res!2972877) (not e!4409960))))

(assert (=> b!7365846 (= res!2972877 (is-Concat!28101 r1!2370))))

(declare-fun e!4409957 () (Set Context!16392))

(assert (=> b!7365846 (= e!4409957 e!4409958)))

(declare-fun b!7365847 () Bool)

(assert (=> b!7365847 (= e!4409959 e!4409957)))

(declare-fun c!1368817 () Bool)

(assert (=> b!7365847 (= c!1368817 (is-Union!19256 r1!2370))))

(declare-fun call!675777 () (Set Context!16392))

(declare-fun bm!675770 () Bool)

(declare-fun call!675779 () List!71752)

(declare-fun c!1368819 () Bool)

(assert (=> bm!675770 (= call!675777 (derivationStepZipperDown!3082 (ite c!1368817 (regTwo!39025 r1!2370) (ite c!1368818 (regTwo!39024 r1!2370) (ite c!1368819 (regOne!39024 r1!2370) (reg!19585 r1!2370)))) (ite (or c!1368817 c!1368818) lt!2614830 (Context!16393 call!675779)) c!10362))))

(declare-fun b!7365848 () Bool)

(assert (=> b!7365848 (= e!4409960 (nullable!8334 (regOne!39024 r1!2370)))))

(declare-fun b!7365849 () Bool)

(declare-fun call!675775 () (Set Context!16392))

(assert (=> b!7365849 (= e!4409956 call!675775)))

(declare-fun bm!675771 () Bool)

(assert (=> bm!675771 (= call!675775 call!675780)))

(declare-fun bm!675772 () Bool)

(declare-fun call!675778 () List!71752)

(assert (=> bm!675772 (= call!675778 ($colon$colon!3240 (exprs!8696 lt!2614830) (ite (or c!1368818 c!1368819) (regTwo!39024 r1!2370) r1!2370)))))

(declare-fun bm!675773 () Bool)

(assert (=> bm!675773 (= call!675776 (derivationStepZipperDown!3082 (ite c!1368817 (regOne!39025 r1!2370) (regOne!39024 r1!2370)) (ite c!1368817 lt!2614830 (Context!16393 call!675778)) c!10362))))

(declare-fun b!7365850 () Bool)

(assert (=> b!7365850 (= e!4409958 e!4409956)))

(assert (=> b!7365850 (= c!1368819 (is-Concat!28101 r1!2370))))

(declare-fun bm!675774 () Bool)

(assert (=> bm!675774 (= call!675780 call!675777)))

(declare-fun b!7365851 () Bool)

(assert (=> b!7365851 (= e!4409957 (set.union call!675776 call!675777))))

(declare-fun bm!675775 () Bool)

(assert (=> bm!675775 (= call!675779 call!675778)))

(declare-fun b!7365852 () Bool)

(assert (=> b!7365852 (= e!4409961 call!675775)))

(assert (= (and d!2282753 c!1368820) b!7365843))

(assert (= (and d!2282753 (not c!1368820)) b!7365847))

(assert (= (and b!7365847 c!1368817) b!7365851))

(assert (= (and b!7365847 (not c!1368817)) b!7365846))

(assert (= (and b!7365846 res!2972877) b!7365848))

(assert (= (and b!7365846 c!1368818) b!7365844))

(assert (= (and b!7365846 (not c!1368818)) b!7365850))

(assert (= (and b!7365850 c!1368819) b!7365849))

(assert (= (and b!7365850 (not c!1368819)) b!7365842))

(assert (= (and b!7365842 c!1368821) b!7365852))

(assert (= (and b!7365842 (not c!1368821)) b!7365845))

(assert (= (or b!7365849 b!7365852) bm!675775))

(assert (= (or b!7365849 b!7365852) bm!675771))

(assert (= (or b!7365844 bm!675771) bm!675774))

(assert (= (or b!7365844 bm!675775) bm!675772))

(assert (= (or b!7365851 bm!675774) bm!675770))

(assert (= (or b!7365851 b!7365844) bm!675773))

(declare-fun m!8021550 () Bool)

(assert (=> bm!675773 m!8021550))

(declare-fun m!8021552 () Bool)

(assert (=> bm!675772 m!8021552))

(declare-fun m!8021554 () Bool)

(assert (=> bm!675770 m!8021554))

(assert (=> b!7365843 m!8021548))

(assert (=> b!7365848 m!8021486))

(assert (=> b!7365652 d!2282753))

(declare-fun lt!2614886 () List!71752)

(declare-fun b!7365856 () Bool)

(declare-fun e!4409963 () Bool)

(assert (=> b!7365856 (= e!4409963 (or (not (= (exprs!8696 ct2!378) Nil!71628)) (= lt!2614886 (exprs!8696 ct1!282))))))

(declare-fun d!2282755 () Bool)

(assert (=> d!2282755 e!4409963))

(declare-fun res!2972878 () Bool)

(assert (=> d!2282755 (=> (not res!2972878) (not e!4409963))))

(assert (=> d!2282755 (= res!2972878 (= (content!15140 lt!2614886) (set.union (content!15140 (exprs!8696 ct1!282)) (content!15140 (exprs!8696 ct2!378)))))))

(declare-fun e!4409962 () List!71752)

(assert (=> d!2282755 (= lt!2614886 e!4409962)))

(declare-fun c!1368822 () Bool)

(assert (=> d!2282755 (= c!1368822 (is-Nil!71628 (exprs!8696 ct1!282)))))

(assert (=> d!2282755 (= (++!17072 (exprs!8696 ct1!282) (exprs!8696 ct2!378)) lt!2614886)))

(declare-fun b!7365853 () Bool)

(assert (=> b!7365853 (= e!4409962 (exprs!8696 ct2!378))))

(declare-fun b!7365855 () Bool)

(declare-fun res!2972879 () Bool)

(assert (=> b!7365855 (=> (not res!2972879) (not e!4409963))))

(assert (=> b!7365855 (= res!2972879 (= (size!42118 lt!2614886) (+ (size!42118 (exprs!8696 ct1!282)) (size!42118 (exprs!8696 ct2!378)))))))

(declare-fun b!7365854 () Bool)

(assert (=> b!7365854 (= e!4409962 (Cons!71628 (h!78076 (exprs!8696 ct1!282)) (++!17072 (t!386201 (exprs!8696 ct1!282)) (exprs!8696 ct2!378))))))

(assert (= (and d!2282755 c!1368822) b!7365853))

(assert (= (and d!2282755 (not c!1368822)) b!7365854))

(assert (= (and d!2282755 res!2972878) b!7365855))

(assert (= (and b!7365855 res!2972879) b!7365856))

(declare-fun m!8021556 () Bool)

(assert (=> d!2282755 m!8021556))

(declare-fun m!8021558 () Bool)

(assert (=> d!2282755 m!8021558))

(assert (=> d!2282755 m!8021526))

(declare-fun m!8021560 () Bool)

(assert (=> b!7365855 m!8021560))

(declare-fun m!8021562 () Bool)

(assert (=> b!7365855 m!8021562))

(assert (=> b!7365855 m!8021532))

(declare-fun m!8021564 () Bool)

(assert (=> b!7365854 m!8021564))

(assert (=> b!7365652 d!2282755))

(assert (=> b!7365652 d!2282745))

(declare-fun bs!1920520 () Bool)

(declare-fun d!2282757 () Bool)

(assert (= bs!1920520 (and d!2282757 d!2282733)))

(declare-fun lambda!457750 () Int)

(assert (=> bs!1920520 (= lambda!457750 lambda!457744)))

(declare-fun bs!1920521 () Bool)

(assert (= bs!1920521 (and d!2282757 d!2282731)))

(assert (=> bs!1920521 (= lambda!457750 lambda!457743)))

(declare-fun bs!1920522 () Bool)

(assert (= bs!1920522 (and d!2282757 d!2282743)))

(assert (=> bs!1920522 (= lambda!457750 lambda!457749)))

(declare-fun bs!1920523 () Bool)

(assert (= bs!1920523 (and d!2282757 d!2282729)))

(assert (=> bs!1920523 (= lambda!457750 lambda!457742)))

(declare-fun bs!1920524 () Bool)

(assert (= bs!1920524 (and d!2282757 b!7365652)))

(assert (=> bs!1920524 (= lambda!457750 lambda!457726)))

(assert (=> d!2282757 (= (inv!91481 lt!2614822) (forall!18064 (exprs!8696 lt!2614822) lambda!457750))))

(declare-fun bs!1920525 () Bool)

(assert (= bs!1920525 d!2282757))

(declare-fun m!8021576 () Bool)

(assert (=> bs!1920525 m!8021576))

(assert (=> b!7365663 d!2282757))

(assert (=> b!7365663 d!2282745))

(assert (=> b!7365663 d!2282749))

(declare-fun b!7365867 () Bool)

(declare-fun e!4409966 () Bool)

(assert (=> b!7365867 (= e!4409966 tp_is_empty!48757)))

(assert (=> b!7365660 (= tp!2093335 e!4409966)))

(declare-fun b!7365870 () Bool)

(declare-fun tp!2093376 () Bool)

(declare-fun tp!2093377 () Bool)

(assert (=> b!7365870 (= e!4409966 (and tp!2093376 tp!2093377))))

(declare-fun b!7365869 () Bool)

(declare-fun tp!2093379 () Bool)

(assert (=> b!7365869 (= e!4409966 tp!2093379)))

(declare-fun b!7365868 () Bool)

(declare-fun tp!2093380 () Bool)

(declare-fun tp!2093378 () Bool)

(assert (=> b!7365868 (= e!4409966 (and tp!2093380 tp!2093378))))

(assert (= (and b!7365660 (is-ElementMatch!19256 (reg!19585 r1!2370))) b!7365867))

(assert (= (and b!7365660 (is-Concat!28101 (reg!19585 r1!2370))) b!7365868))

(assert (= (and b!7365660 (is-Star!19256 (reg!19585 r1!2370))) b!7365869))

(assert (= (and b!7365660 (is-Union!19256 (reg!19585 r1!2370))) b!7365870))

(declare-fun b!7365875 () Bool)

(declare-fun e!4409969 () Bool)

(declare-fun tp!2093385 () Bool)

(declare-fun tp!2093386 () Bool)

(assert (=> b!7365875 (= e!4409969 (and tp!2093385 tp!2093386))))

(assert (=> b!7365655 (= tp!2093339 e!4409969)))

(assert (= (and b!7365655 (is-Cons!71628 (exprs!8696 cWitness!61))) b!7365875))

(declare-fun b!7365876 () Bool)

(declare-fun e!4409970 () Bool)

(declare-fun tp!2093387 () Bool)

(declare-fun tp!2093388 () Bool)

(assert (=> b!7365876 (= e!4409970 (and tp!2093387 tp!2093388))))

(assert (=> b!7365658 (= tp!2093338 e!4409970)))

(assert (= (and b!7365658 (is-Cons!71628 (exprs!8696 ct1!282))) b!7365876))

(declare-fun b!7365877 () Bool)

(declare-fun e!4409971 () Bool)

(declare-fun tp!2093389 () Bool)

(declare-fun tp!2093390 () Bool)

(assert (=> b!7365877 (= e!4409971 (and tp!2093389 tp!2093390))))

(assert (=> b!7365664 (= tp!2093337 e!4409971)))

(assert (= (and b!7365664 (is-Cons!71628 (exprs!8696 ct2!378))) b!7365877))

(declare-fun b!7365878 () Bool)

(declare-fun e!4409972 () Bool)

(assert (=> b!7365878 (= e!4409972 tp_is_empty!48757)))

(assert (=> b!7365662 (= tp!2093341 e!4409972)))

(declare-fun b!7365881 () Bool)

(declare-fun tp!2093391 () Bool)

(declare-fun tp!2093392 () Bool)

(assert (=> b!7365881 (= e!4409972 (and tp!2093391 tp!2093392))))

(declare-fun b!7365880 () Bool)

(declare-fun tp!2093394 () Bool)

(assert (=> b!7365880 (= e!4409972 tp!2093394)))

(declare-fun b!7365879 () Bool)

(declare-fun tp!2093395 () Bool)

(declare-fun tp!2093393 () Bool)

(assert (=> b!7365879 (= e!4409972 (and tp!2093395 tp!2093393))))

(assert (= (and b!7365662 (is-ElementMatch!19256 (regOne!39025 r1!2370))) b!7365878))

(assert (= (and b!7365662 (is-Concat!28101 (regOne!39025 r1!2370))) b!7365879))

(assert (= (and b!7365662 (is-Star!19256 (regOne!39025 r1!2370))) b!7365880))

(assert (= (and b!7365662 (is-Union!19256 (regOne!39025 r1!2370))) b!7365881))

(declare-fun b!7365882 () Bool)

(declare-fun e!4409973 () Bool)

(assert (=> b!7365882 (= e!4409973 tp_is_empty!48757)))

(assert (=> b!7365662 (= tp!2093334 e!4409973)))

(declare-fun b!7365885 () Bool)

(declare-fun tp!2093396 () Bool)

(declare-fun tp!2093397 () Bool)

(assert (=> b!7365885 (= e!4409973 (and tp!2093396 tp!2093397))))

(declare-fun b!7365884 () Bool)

(declare-fun tp!2093399 () Bool)

(assert (=> b!7365884 (= e!4409973 tp!2093399)))

(declare-fun b!7365883 () Bool)

(declare-fun tp!2093400 () Bool)

(declare-fun tp!2093398 () Bool)

(assert (=> b!7365883 (= e!4409973 (and tp!2093400 tp!2093398))))

(assert (= (and b!7365662 (is-ElementMatch!19256 (regTwo!39025 r1!2370))) b!7365882))

(assert (= (and b!7365662 (is-Concat!28101 (regTwo!39025 r1!2370))) b!7365883))

(assert (= (and b!7365662 (is-Star!19256 (regTwo!39025 r1!2370))) b!7365884))

(assert (= (and b!7365662 (is-Union!19256 (regTwo!39025 r1!2370))) b!7365885))

(declare-fun b!7365886 () Bool)

(declare-fun e!4409974 () Bool)

(assert (=> b!7365886 (= e!4409974 tp_is_empty!48757)))

(assert (=> b!7365657 (= tp!2093336 e!4409974)))

(declare-fun b!7365889 () Bool)

(declare-fun tp!2093401 () Bool)

(declare-fun tp!2093402 () Bool)

(assert (=> b!7365889 (= e!4409974 (and tp!2093401 tp!2093402))))

(declare-fun b!7365888 () Bool)

(declare-fun tp!2093404 () Bool)

(assert (=> b!7365888 (= e!4409974 tp!2093404)))

(declare-fun b!7365887 () Bool)

(declare-fun tp!2093405 () Bool)

(declare-fun tp!2093403 () Bool)

(assert (=> b!7365887 (= e!4409974 (and tp!2093405 tp!2093403))))

(assert (= (and b!7365657 (is-ElementMatch!19256 (regOne!39024 r1!2370))) b!7365886))

(assert (= (and b!7365657 (is-Concat!28101 (regOne!39024 r1!2370))) b!7365887))

(assert (= (and b!7365657 (is-Star!19256 (regOne!39024 r1!2370))) b!7365888))

(assert (= (and b!7365657 (is-Union!19256 (regOne!39024 r1!2370))) b!7365889))

(declare-fun b!7365890 () Bool)

(declare-fun e!4409975 () Bool)

(assert (=> b!7365890 (= e!4409975 tp_is_empty!48757)))

(assert (=> b!7365657 (= tp!2093340 e!4409975)))

(declare-fun b!7365893 () Bool)

(declare-fun tp!2093406 () Bool)

(declare-fun tp!2093407 () Bool)

(assert (=> b!7365893 (= e!4409975 (and tp!2093406 tp!2093407))))

(declare-fun b!7365892 () Bool)

(declare-fun tp!2093409 () Bool)

(assert (=> b!7365892 (= e!4409975 tp!2093409)))

(declare-fun b!7365891 () Bool)

(declare-fun tp!2093410 () Bool)

(declare-fun tp!2093408 () Bool)

(assert (=> b!7365891 (= e!4409975 (and tp!2093410 tp!2093408))))

(assert (= (and b!7365657 (is-ElementMatch!19256 (regTwo!39024 r1!2370))) b!7365890))

(assert (= (and b!7365657 (is-Concat!28101 (regTwo!39024 r1!2370))) b!7365891))

(assert (= (and b!7365657 (is-Star!19256 (regTwo!39024 r1!2370))) b!7365892))

(assert (= (and b!7365657 (is-Union!19256 (regTwo!39024 r1!2370))) b!7365893))

(push 1)

(assert (not b!7365876))

(assert (not d!2282757))

(assert (not b!7365887))

(assert (not bm!675713))

(assert (not b!7365781))

(assert (not bm!675736))

(assert (not bm!675772))

(assert (not b!7365892))

(assert (not bm!675734))

(assert (not b!7365889))

(assert (not b!7365869))

(assert (not bm!675728))

(assert (not d!2282733))

(assert (not b!7365817))

(assert (not b!7365818))

(assert (not bm!675761))

(assert (not bm!675737))

(assert (not bm!675740))

(assert (not b!7365875))

(assert (not b!7365848))

(assert (not b!7365885))

(assert (not d!2282747))

(assert (not d!2282743))

(assert (not b!7365881))

(assert (not bm!675715))

(assert (not b!7365826))

(assert (not d!2282745))

(assert (not b!7365879))

(assert tp_is_empty!48757)

(assert (not bm!675742))

(assert (not b!7365770))

(assert (not b!7365729))

(assert (not bm!675730))

(assert (not b!7365893))

(assert (not b!7365883))

(assert (not b!7365891))

(assert (not b!7365870))

(assert (not b!7365855))

(assert (not bm!675731))

(assert (not b!7365888))

(assert (not b!7365884))

(assert (not b!7365759))

(assert (not d!2282755))

(assert (not bm!675743))

(assert (not b!7365868))

(assert (not bm!675758))

(assert (not bm!675760))

(assert (not b!7365854))

(assert (not b!7365880))

(assert (not d!2282749))

(assert (not d!2282731))

(assert (not d!2282729))

(assert (not bm!675770))

(assert (not bm!675773))

(assert (not b!7365877))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

