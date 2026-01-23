; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!718046 () Bool)

(assert start!718046)

(declare-fun b!7353124 () Bool)

(declare-fun e!4402694 () Bool)

(declare-fun e!4402695 () Bool)

(assert (=> b!7353124 (= e!4402694 e!4402695)))

(declare-fun res!2969334 () Bool)

(assert (=> b!7353124 (=> res!2969334 e!4402695)))

(declare-datatypes ((C!38630 0))(
  ( (C!38631 (val!29675 Int)) )
))
(declare-datatypes ((Regex!19178 0))(
  ( (ElementMatch!19178 (c!1366138 C!38630)) (Concat!28023 (regOne!38868 Regex!19178) (regTwo!38868 Regex!19178)) (EmptyExpr!19178) (Star!19178 (reg!19507 Regex!19178)) (EmptyLang!19178) (Union!19178 (regOne!38869 Regex!19178) (regTwo!38869 Regex!19178)) )
))
(declare-datatypes ((List!71674 0))(
  ( (Nil!71550) (Cons!71550 (h!77998 Regex!19178) (t!386103 List!71674)) )
))
(declare-datatypes ((Context!16236 0))(
  ( (Context!16237 (exprs!8618 List!71674)) )
))
(declare-fun ct1!282 () Context!16236)

(declare-fun lambda!456762 () Int)

(declare-fun forall!18000 (List!71674 Int) Bool)

(assert (=> b!7353124 (= res!2969334 (not (forall!18000 (exprs!8618 ct1!282) lambda!456762)))))

(declare-fun ct2!378 () Context!16236)

(declare-fun cWitness!61 () Context!16236)

(declare-datatypes ((Unit!165309 0))(
  ( (Unit!165310) )
))
(declare-fun lt!2612655 () Unit!165309)

(declare-fun lemmaConcatPreservesForall!1853 (List!71674 List!71674 Int) Unit!165309)

(assert (=> b!7353124 (= lt!2612655 (lemmaConcatPreservesForall!1853 (exprs!8618 cWitness!61) (exprs!8618 ct2!378) lambda!456762))))

(declare-fun b!7353125 () Bool)

(declare-fun e!4402697 () Bool)

(declare-fun e!4402693 () Bool)

(assert (=> b!7353125 (= e!4402697 e!4402693)))

(declare-fun res!2969339 () Bool)

(assert (=> b!7353125 (=> (not res!2969339) (not e!4402693))))

(declare-fun lt!2612654 () Context!16236)

(declare-fun c!10362 () C!38630)

(declare-fun r1!2370 () Regex!19178)

(declare-fun lt!2612652 () (Set Context!16236))

(declare-fun derivationStepZipperDown!3004 (Regex!19178 Context!16236 C!38630) (Set Context!16236))

(assert (=> b!7353125 (= res!2969339 (= lt!2612652 (derivationStepZipperDown!3004 (regOne!38868 r1!2370) lt!2612654 c!10362)))))

(declare-fun lt!2612653 () List!71674)

(assert (=> b!7353125 (= lt!2612654 (Context!16237 lt!2612653))))

(declare-fun $colon$colon!3176 (List!71674 Regex!19178) List!71674)

(assert (=> b!7353125 (= lt!2612653 ($colon$colon!3176 (exprs!8618 ct1!282) (regTwo!38868 r1!2370)))))

(declare-fun b!7353126 () Bool)

(declare-fun res!2969341 () Bool)

(assert (=> b!7353126 (=> (not res!2969341) (not e!4402697))))

(declare-fun validRegex!9774 (Regex!19178) Bool)

(assert (=> b!7353126 (= res!2969341 (validRegex!9774 (regTwo!38868 r1!2370)))))

(declare-fun b!7353127 () Bool)

(declare-fun e!4402696 () Bool)

(assert (=> b!7353127 (= e!4402696 e!4402697)))

(declare-fun res!2969336 () Bool)

(assert (=> b!7353127 (=> (not res!2969336) (not e!4402697))))

(assert (=> b!7353127 (= res!2969336 (and (or (not (is-ElementMatch!19178 r1!2370)) (not (= c!10362 (c!1366138 r1!2370)))) (not (is-Union!19178 r1!2370))))))

(declare-fun lt!2612662 () (Set Context!16236))

(declare-fun ++!16996 (List!71674 List!71674) List!71674)

(assert (=> b!7353127 (= lt!2612662 (derivationStepZipperDown!3004 r1!2370 (Context!16237 (++!16996 (exprs!8618 ct1!282) (exprs!8618 ct2!378))) c!10362))))

(declare-fun lt!2612661 () Unit!165309)

(assert (=> b!7353127 (= lt!2612661 (lemmaConcatPreservesForall!1853 (exprs!8618 ct1!282) (exprs!8618 ct2!378) lambda!456762))))

(declare-fun b!7353128 () Bool)

(assert (=> b!7353128 (= e!4402693 (not e!4402694))))

(declare-fun res!2969335 () Bool)

(assert (=> b!7353128 (=> res!2969335 e!4402694)))

(declare-fun lt!2612658 () Context!16236)

(assert (=> b!7353128 (= res!2969335 (not (set.member lt!2612658 lt!2612662)))))

(declare-fun lt!2612657 () Unit!165309)

(assert (=> b!7353128 (= lt!2612657 (lemmaConcatPreservesForall!1853 (exprs!8618 cWitness!61) (exprs!8618 ct2!378) lambda!456762))))

(assert (=> b!7353128 (set.member lt!2612658 (derivationStepZipperDown!3004 (regOne!38868 r1!2370) (Context!16237 (++!16996 lt!2612653 (exprs!8618 ct2!378))) c!10362))))

(assert (=> b!7353128 (= lt!2612658 (Context!16237 (++!16996 (exprs!8618 cWitness!61) (exprs!8618 ct2!378))))))

(declare-fun lt!2612659 () Unit!165309)

(assert (=> b!7353128 (= lt!2612659 (lemmaConcatPreservesForall!1853 lt!2612653 (exprs!8618 ct2!378) lambda!456762))))

(declare-fun lt!2612660 () Unit!165309)

(assert (=> b!7353128 (= lt!2612660 (lemmaConcatPreservesForall!1853 (exprs!8618 cWitness!61) (exprs!8618 ct2!378) lambda!456762))))

(declare-fun lt!2612656 () Unit!165309)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!99 (Regex!19178 Context!16236 Context!16236 Context!16236 C!38630) Unit!165309)

(assert (=> b!7353128 (= lt!2612656 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!99 (regOne!38868 r1!2370) lt!2612654 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7353129 () Bool)

(declare-fun e!4402701 () Bool)

(declare-fun tp!2088596 () Bool)

(assert (=> b!7353129 (= e!4402701 tp!2088596)))

(declare-fun b!7353130 () Bool)

(declare-fun e!4402698 () Bool)

(assert (=> b!7353130 (= e!4402698 e!4402696)))

(declare-fun res!2969342 () Bool)

(assert (=> b!7353130 (=> (not res!2969342) (not e!4402696))))

(assert (=> b!7353130 (= res!2969342 (set.member cWitness!61 lt!2612652))))

(assert (=> b!7353130 (= lt!2612652 (derivationStepZipperDown!3004 r1!2370 ct1!282 c!10362))))

(declare-fun b!7353131 () Bool)

(declare-fun e!4402699 () Bool)

(declare-fun tp!2088595 () Bool)

(declare-fun tp!2088593 () Bool)

(assert (=> b!7353131 (= e!4402699 (and tp!2088595 tp!2088593))))

(declare-fun b!7353132 () Bool)

(declare-fun e!4402703 () Bool)

(declare-fun nullable!8269 (Regex!19178) Bool)

(assert (=> b!7353132 (= e!4402703 (not (nullable!8269 (regOne!38868 r1!2370))))))

(declare-fun b!7353133 () Bool)

(assert (=> b!7353133 (= e!4402695 (forall!18000 (exprs!8618 ct2!378) lambda!456762))))

(declare-fun b!7353134 () Bool)

(declare-fun e!4402700 () Bool)

(declare-fun tp!2088598 () Bool)

(assert (=> b!7353134 (= e!4402700 tp!2088598)))

(declare-fun b!7353136 () Bool)

(declare-fun res!2969340 () Bool)

(assert (=> b!7353136 (=> (not res!2969340) (not e!4402697))))

(assert (=> b!7353136 (= res!2969340 (is-Concat!28023 r1!2370))))

(declare-fun b!7353137 () Bool)

(declare-fun tp_is_empty!48601 () Bool)

(assert (=> b!7353137 (= e!4402699 tp_is_empty!48601)))

(declare-fun b!7353138 () Bool)

(declare-fun tp!2088594 () Bool)

(assert (=> b!7353138 (= e!4402699 tp!2088594)))

(declare-fun b!7353139 () Bool)

(declare-fun tp!2088592 () Bool)

(declare-fun tp!2088599 () Bool)

(assert (=> b!7353139 (= e!4402699 (and tp!2088592 tp!2088599))))

(declare-fun b!7353140 () Bool)

(declare-fun res!2969337 () Bool)

(assert (=> b!7353140 (=> (not res!2969337) (not e!4402697))))

(assert (=> b!7353140 (= res!2969337 e!4402703)))

(declare-fun res!2969333 () Bool)

(assert (=> b!7353140 (=> res!2969333 e!4402703)))

(assert (=> b!7353140 (= res!2969333 (not (is-Concat!28023 r1!2370)))))

(declare-fun res!2969338 () Bool)

(assert (=> start!718046 (=> (not res!2969338) (not e!4402698))))

(assert (=> start!718046 (= res!2969338 (validRegex!9774 r1!2370))))

(assert (=> start!718046 e!4402698))

(assert (=> start!718046 tp_is_empty!48601))

(declare-fun inv!91286 (Context!16236) Bool)

(assert (=> start!718046 (and (inv!91286 cWitness!61) e!4402700)))

(assert (=> start!718046 (and (inv!91286 ct1!282) e!4402701)))

(assert (=> start!718046 e!4402699))

(declare-fun e!4402702 () Bool)

(assert (=> start!718046 (and (inv!91286 ct2!378) e!4402702)))

(declare-fun b!7353135 () Bool)

(declare-fun tp!2088597 () Bool)

(assert (=> b!7353135 (= e!4402702 tp!2088597)))

(assert (= (and start!718046 res!2969338) b!7353130))

(assert (= (and b!7353130 res!2969342) b!7353127))

(assert (= (and b!7353127 res!2969336) b!7353140))

(assert (= (and b!7353140 (not res!2969333)) b!7353132))

(assert (= (and b!7353140 res!2969337) b!7353136))

(assert (= (and b!7353136 res!2969340) b!7353126))

(assert (= (and b!7353126 res!2969341) b!7353125))

(assert (= (and b!7353125 res!2969339) b!7353128))

(assert (= (and b!7353128 (not res!2969335)) b!7353124))

(assert (= (and b!7353124 (not res!2969334)) b!7353133))

(assert (= start!718046 b!7353134))

(assert (= start!718046 b!7353129))

(assert (= (and start!718046 (is-ElementMatch!19178 r1!2370)) b!7353137))

(assert (= (and start!718046 (is-Concat!28023 r1!2370)) b!7353131))

(assert (= (and start!718046 (is-Star!19178 r1!2370)) b!7353138))

(assert (= (and start!718046 (is-Union!19178 r1!2370)) b!7353139))

(assert (= start!718046 b!7353135))

(declare-fun m!8013714 () Bool)

(assert (=> b!7353125 m!8013714))

(declare-fun m!8013716 () Bool)

(assert (=> b!7353125 m!8013716))

(declare-fun m!8013718 () Bool)

(assert (=> b!7353127 m!8013718))

(declare-fun m!8013720 () Bool)

(assert (=> b!7353127 m!8013720))

(declare-fun m!8013722 () Bool)

(assert (=> b!7353127 m!8013722))

(declare-fun m!8013724 () Bool)

(assert (=> b!7353126 m!8013724))

(declare-fun m!8013726 () Bool)

(assert (=> start!718046 m!8013726))

(declare-fun m!8013728 () Bool)

(assert (=> start!718046 m!8013728))

(declare-fun m!8013730 () Bool)

(assert (=> start!718046 m!8013730))

(declare-fun m!8013732 () Bool)

(assert (=> start!718046 m!8013732))

(declare-fun m!8013734 () Bool)

(assert (=> b!7353124 m!8013734))

(declare-fun m!8013736 () Bool)

(assert (=> b!7353124 m!8013736))

(declare-fun m!8013738 () Bool)

(assert (=> b!7353132 m!8013738))

(declare-fun m!8013740 () Bool)

(assert (=> b!7353130 m!8013740))

(declare-fun m!8013742 () Bool)

(assert (=> b!7353130 m!8013742))

(declare-fun m!8013744 () Bool)

(assert (=> b!7353133 m!8013744))

(assert (=> b!7353128 m!8013736))

(assert (=> b!7353128 m!8013736))

(declare-fun m!8013746 () Bool)

(assert (=> b!7353128 m!8013746))

(declare-fun m!8013748 () Bool)

(assert (=> b!7353128 m!8013748))

(declare-fun m!8013750 () Bool)

(assert (=> b!7353128 m!8013750))

(declare-fun m!8013752 () Bool)

(assert (=> b!7353128 m!8013752))

(declare-fun m!8013754 () Bool)

(assert (=> b!7353128 m!8013754))

(declare-fun m!8013756 () Bool)

(assert (=> b!7353128 m!8013756))

(declare-fun m!8013758 () Bool)

(assert (=> b!7353128 m!8013758))

(push 1)

(assert (not b!7353138))

(assert (not b!7353127))

(assert (not b!7353124))

(assert (not b!7353134))

(assert (not b!7353131))

(assert (not b!7353135))

(assert (not b!7353125))

(assert (not start!718046))

(assert (not b!7353129))

(assert tp_is_empty!48601)

(assert (not b!7353139))

(assert (not b!7353126))

(assert (not b!7353133))

(assert (not b!7353132))

(assert (not b!7353130))

(assert (not b!7353128))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun call!672872 () (Set Context!16236))

(declare-fun call!672873 () List!71674)

(declare-fun bm!672865 () Bool)

(declare-fun c!1366152 () Bool)

(assert (=> bm!672865 (= call!672872 (derivationStepZipperDown!3004 (ite c!1366152 (regTwo!38869 r1!2370) (regOne!38868 r1!2370)) (ite c!1366152 (Context!16237 (++!16996 (exprs!8618 ct1!282) (exprs!8618 ct2!378))) (Context!16237 call!672873)) c!10362))))

(declare-fun b!7353214 () Bool)

(declare-fun e!4402754 () (Set Context!16236))

(declare-fun call!672871 () (Set Context!16236))

(assert (=> b!7353214 (= e!4402754 call!672871)))

(declare-fun b!7353215 () Bool)

(declare-fun c!1366153 () Bool)

(declare-fun e!4402750 () Bool)

(assert (=> b!7353215 (= c!1366153 e!4402750)))

(declare-fun res!2969375 () Bool)

(assert (=> b!7353215 (=> (not res!2969375) (not e!4402750))))

(assert (=> b!7353215 (= res!2969375 (is-Concat!28023 r1!2370))))

(declare-fun e!4402753 () (Set Context!16236))

(declare-fun e!4402749 () (Set Context!16236))

(assert (=> b!7353215 (= e!4402753 e!4402749)))

(declare-fun b!7353216 () Bool)

(declare-fun e!4402751 () (Set Context!16236))

(assert (=> b!7353216 (= e!4402751 e!4402753)))

(assert (=> b!7353216 (= c!1366152 (is-Union!19178 r1!2370))))

(declare-fun bm!672866 () Bool)

(declare-fun call!672875 () (Set Context!16236))

(assert (=> bm!672866 (= call!672871 call!672875)))

(declare-fun b!7353217 () Bool)

(assert (=> b!7353217 (= e!4402751 (set.insert (Context!16237 (++!16996 (exprs!8618 ct1!282) (exprs!8618 ct2!378))) (as set.empty (Set Context!16236))))))

(declare-fun b!7353218 () Bool)

(assert (=> b!7353218 (= e!4402750 (nullable!8269 (regOne!38868 r1!2370)))))

(declare-fun b!7353219 () Bool)

(assert (=> b!7353219 (= e!4402749 e!4402754)))

(declare-fun c!1366151 () Bool)

(assert (=> b!7353219 (= c!1366151 (is-Concat!28023 r1!2370))))

(declare-fun bm!672867 () Bool)

(declare-fun call!672874 () List!71674)

(assert (=> bm!672867 (= call!672874 call!672873)))

(declare-fun b!7353220 () Bool)

(declare-fun e!4402752 () (Set Context!16236))

(assert (=> b!7353220 (= e!4402752 call!672871)))

(declare-fun b!7353221 () Bool)

(assert (=> b!7353221 (= e!4402752 (as set.empty (Set Context!16236)))))

(declare-fun d!2280940 () Bool)

(declare-fun c!1366150 () Bool)

(assert (=> d!2280940 (= c!1366150 (and (is-ElementMatch!19178 r1!2370) (= (c!1366138 r1!2370) c!10362)))))

(assert (=> d!2280940 (= (derivationStepZipperDown!3004 r1!2370 (Context!16237 (++!16996 (exprs!8618 ct1!282) (exprs!8618 ct2!378))) c!10362) e!4402751)))

(declare-fun b!7353222 () Bool)

(assert (=> b!7353222 (= e!4402749 (set.union call!672872 call!672875))))

(declare-fun call!672870 () (Set Context!16236))

(declare-fun bm!672868 () Bool)

(assert (=> bm!672868 (= call!672870 (derivationStepZipperDown!3004 (ite c!1366152 (regOne!38869 r1!2370) (ite c!1366153 (regTwo!38868 r1!2370) (ite c!1366151 (regOne!38868 r1!2370) (reg!19507 r1!2370)))) (ite (or c!1366152 c!1366153) (Context!16237 (++!16996 (exprs!8618 ct1!282) (exprs!8618 ct2!378))) (Context!16237 call!672874)) c!10362))))

(declare-fun bm!672869 () Bool)

(assert (=> bm!672869 (= call!672875 call!672870)))

(declare-fun b!7353223 () Bool)

(assert (=> b!7353223 (= e!4402753 (set.union call!672870 call!672872))))

(declare-fun bm!672870 () Bool)

(assert (=> bm!672870 (= call!672873 ($colon$colon!3176 (exprs!8618 (Context!16237 (++!16996 (exprs!8618 ct1!282) (exprs!8618 ct2!378)))) (ite (or c!1366153 c!1366151) (regTwo!38868 r1!2370) r1!2370)))))

(declare-fun b!7353224 () Bool)

(declare-fun c!1366154 () Bool)

(assert (=> b!7353224 (= c!1366154 (is-Star!19178 r1!2370))))

(assert (=> b!7353224 (= e!4402754 e!4402752)))

(assert (= (and d!2280940 c!1366150) b!7353217))

(assert (= (and d!2280940 (not c!1366150)) b!7353216))

(assert (= (and b!7353216 c!1366152) b!7353223))

(assert (= (and b!7353216 (not c!1366152)) b!7353215))

(assert (= (and b!7353215 res!2969375) b!7353218))

(assert (= (and b!7353215 c!1366153) b!7353222))

(assert (= (and b!7353215 (not c!1366153)) b!7353219))

(assert (= (and b!7353219 c!1366151) b!7353214))

(assert (= (and b!7353219 (not c!1366151)) b!7353224))

(assert (= (and b!7353224 c!1366154) b!7353220))

(assert (= (and b!7353224 (not c!1366154)) b!7353221))

(assert (= (or b!7353214 b!7353220) bm!672867))

(assert (= (or b!7353214 b!7353220) bm!672866))

(assert (= (or b!7353222 bm!672866) bm!672869))

(assert (= (or b!7353222 bm!672867) bm!672870))

(assert (= (or b!7353223 b!7353222) bm!672865))

(assert (= (or b!7353223 bm!672869) bm!672868))

(declare-fun m!8013806 () Bool)

(assert (=> bm!672868 m!8013806))

(declare-fun m!8013808 () Bool)

(assert (=> bm!672865 m!8013808))

(declare-fun m!8013810 () Bool)

(assert (=> b!7353217 m!8013810))

(assert (=> b!7353218 m!8013738))

(declare-fun m!8013812 () Bool)

(assert (=> bm!672870 m!8013812))

(assert (=> b!7353127 d!2280940))

(declare-fun b!7353235 () Bool)

(declare-fun res!2969381 () Bool)

(declare-fun e!4402760 () Bool)

(assert (=> b!7353235 (=> (not res!2969381) (not e!4402760))))

(declare-fun lt!2612698 () List!71674)

(declare-fun size!42063 (List!71674) Int)

(assert (=> b!7353235 (= res!2969381 (= (size!42063 lt!2612698) (+ (size!42063 (exprs!8618 ct1!282)) (size!42063 (exprs!8618 ct2!378)))))))

(declare-fun b!7353233 () Bool)

(declare-fun e!4402759 () List!71674)

(assert (=> b!7353233 (= e!4402759 (exprs!8618 ct2!378))))

(declare-fun d!2280942 () Bool)

(assert (=> d!2280942 e!4402760))

(declare-fun res!2969380 () Bool)

(assert (=> d!2280942 (=> (not res!2969380) (not e!4402760))))

(declare-fun content!15084 (List!71674) (Set Regex!19178))

(assert (=> d!2280942 (= res!2969380 (= (content!15084 lt!2612698) (set.union (content!15084 (exprs!8618 ct1!282)) (content!15084 (exprs!8618 ct2!378)))))))

(assert (=> d!2280942 (= lt!2612698 e!4402759)))

(declare-fun c!1366157 () Bool)

(assert (=> d!2280942 (= c!1366157 (is-Nil!71550 (exprs!8618 ct1!282)))))

(assert (=> d!2280942 (= (++!16996 (exprs!8618 ct1!282) (exprs!8618 ct2!378)) lt!2612698)))

(declare-fun b!7353236 () Bool)

(assert (=> b!7353236 (= e!4402760 (or (not (= (exprs!8618 ct2!378) Nil!71550)) (= lt!2612698 (exprs!8618 ct1!282))))))

(declare-fun b!7353234 () Bool)

(assert (=> b!7353234 (= e!4402759 (Cons!71550 (h!77998 (exprs!8618 ct1!282)) (++!16996 (t!386103 (exprs!8618 ct1!282)) (exprs!8618 ct2!378))))))

(assert (= (and d!2280942 c!1366157) b!7353233))

(assert (= (and d!2280942 (not c!1366157)) b!7353234))

(assert (= (and d!2280942 res!2969380) b!7353235))

(assert (= (and b!7353235 res!2969381) b!7353236))

(declare-fun m!8013814 () Bool)

(assert (=> b!7353235 m!8013814))

(declare-fun m!8013816 () Bool)

(assert (=> b!7353235 m!8013816))

(declare-fun m!8013818 () Bool)

(assert (=> b!7353235 m!8013818))

(declare-fun m!8013820 () Bool)

(assert (=> d!2280942 m!8013820))

(declare-fun m!8013822 () Bool)

(assert (=> d!2280942 m!8013822))

(declare-fun m!8013824 () Bool)

(assert (=> d!2280942 m!8013824))

(declare-fun m!8013826 () Bool)

(assert (=> b!7353234 m!8013826))

(assert (=> b!7353127 d!2280942))

(declare-fun d!2280946 () Bool)

(assert (=> d!2280946 (forall!18000 (++!16996 (exprs!8618 ct1!282) (exprs!8618 ct2!378)) lambda!456762)))

(declare-fun lt!2612701 () Unit!165309)

(declare-fun choose!57200 (List!71674 List!71674 Int) Unit!165309)

(assert (=> d!2280946 (= lt!2612701 (choose!57200 (exprs!8618 ct1!282) (exprs!8618 ct2!378) lambda!456762))))

(assert (=> d!2280946 (forall!18000 (exprs!8618 ct1!282) lambda!456762)))

(assert (=> d!2280946 (= (lemmaConcatPreservesForall!1853 (exprs!8618 ct1!282) (exprs!8618 ct2!378) lambda!456762) lt!2612701)))

(declare-fun bs!1919494 () Bool)

(assert (= bs!1919494 d!2280946))

(assert (=> bs!1919494 m!8013718))

(assert (=> bs!1919494 m!8013718))

(declare-fun m!8013828 () Bool)

(assert (=> bs!1919494 m!8013828))

(declare-fun m!8013830 () Bool)

(assert (=> bs!1919494 m!8013830))

(assert (=> bs!1919494 m!8013734))

(assert (=> b!7353127 d!2280946))

(declare-fun d!2280948 () Bool)

(declare-fun nullableFct!3301 (Regex!19178) Bool)

(assert (=> d!2280948 (= (nullable!8269 (regOne!38868 r1!2370)) (nullableFct!3301 (regOne!38868 r1!2370)))))

(declare-fun bs!1919495 () Bool)

(assert (= bs!1919495 d!2280948))

(declare-fun m!8013832 () Bool)

(assert (=> bs!1919495 m!8013832))

(assert (=> b!7353132 d!2280948))

(declare-fun d!2280950 () Bool)

(assert (=> d!2280950 (forall!18000 (++!16996 lt!2612653 (exprs!8618 ct2!378)) lambda!456762)))

(declare-fun lt!2612702 () Unit!165309)

(assert (=> d!2280950 (= lt!2612702 (choose!57200 lt!2612653 (exprs!8618 ct2!378) lambda!456762))))

(assert (=> d!2280950 (forall!18000 lt!2612653 lambda!456762)))

(assert (=> d!2280950 (= (lemmaConcatPreservesForall!1853 lt!2612653 (exprs!8618 ct2!378) lambda!456762) lt!2612702)))

(declare-fun bs!1919496 () Bool)

(assert (= bs!1919496 d!2280950))

(assert (=> bs!1919496 m!8013758))

(assert (=> bs!1919496 m!8013758))

(declare-fun m!8013834 () Bool)

(assert (=> bs!1919496 m!8013834))

(declare-fun m!8013836 () Bool)

(assert (=> bs!1919496 m!8013836))

(declare-fun m!8013838 () Bool)

(assert (=> bs!1919496 m!8013838))

(assert (=> b!7353128 d!2280950))

(declare-fun b!7353245 () Bool)

(declare-fun res!2969389 () Bool)

(declare-fun e!4402768 () Bool)

(assert (=> b!7353245 (=> (not res!2969389) (not e!4402768))))

(declare-fun lt!2612703 () List!71674)

(assert (=> b!7353245 (= res!2969389 (= (size!42063 lt!2612703) (+ (size!42063 (exprs!8618 cWitness!61)) (size!42063 (exprs!8618 ct2!378)))))))

(declare-fun b!7353243 () Bool)

(declare-fun e!4402767 () List!71674)

(assert (=> b!7353243 (= e!4402767 (exprs!8618 ct2!378))))

(declare-fun d!2280952 () Bool)

(assert (=> d!2280952 e!4402768))

(declare-fun res!2969388 () Bool)

(assert (=> d!2280952 (=> (not res!2969388) (not e!4402768))))

(assert (=> d!2280952 (= res!2969388 (= (content!15084 lt!2612703) (set.union (content!15084 (exprs!8618 cWitness!61)) (content!15084 (exprs!8618 ct2!378)))))))

(assert (=> d!2280952 (= lt!2612703 e!4402767)))

(declare-fun c!1366158 () Bool)

(assert (=> d!2280952 (= c!1366158 (is-Nil!71550 (exprs!8618 cWitness!61)))))

(assert (=> d!2280952 (= (++!16996 (exprs!8618 cWitness!61) (exprs!8618 ct2!378)) lt!2612703)))

(declare-fun b!7353246 () Bool)

(assert (=> b!7353246 (= e!4402768 (or (not (= (exprs!8618 ct2!378) Nil!71550)) (= lt!2612703 (exprs!8618 cWitness!61))))))

(declare-fun b!7353244 () Bool)

(assert (=> b!7353244 (= e!4402767 (Cons!71550 (h!77998 (exprs!8618 cWitness!61)) (++!16996 (t!386103 (exprs!8618 cWitness!61)) (exprs!8618 ct2!378))))))

(assert (= (and d!2280952 c!1366158) b!7353243))

(assert (= (and d!2280952 (not c!1366158)) b!7353244))

(assert (= (and d!2280952 res!2969388) b!7353245))

(assert (= (and b!7353245 res!2969389) b!7353246))

(declare-fun m!8013840 () Bool)

(assert (=> b!7353245 m!8013840))

(declare-fun m!8013842 () Bool)

(assert (=> b!7353245 m!8013842))

(assert (=> b!7353245 m!8013818))

(declare-fun m!8013846 () Bool)

(assert (=> d!2280952 m!8013846))

(declare-fun m!8013848 () Bool)

(assert (=> d!2280952 m!8013848))

(assert (=> d!2280952 m!8013824))

(declare-fun m!8013850 () Bool)

(assert (=> b!7353244 m!8013850))

(assert (=> b!7353128 d!2280952))

(declare-fun d!2280954 () Bool)

(assert (=> d!2280954 (forall!18000 (++!16996 (exprs!8618 cWitness!61) (exprs!8618 ct2!378)) lambda!456762)))

(declare-fun lt!2612704 () Unit!165309)

(assert (=> d!2280954 (= lt!2612704 (choose!57200 (exprs!8618 cWitness!61) (exprs!8618 ct2!378) lambda!456762))))

(assert (=> d!2280954 (forall!18000 (exprs!8618 cWitness!61) lambda!456762)))

(assert (=> d!2280954 (= (lemmaConcatPreservesForall!1853 (exprs!8618 cWitness!61) (exprs!8618 ct2!378) lambda!456762) lt!2612704)))

(declare-fun bs!1919497 () Bool)

(assert (= bs!1919497 d!2280954))

(assert (=> bs!1919497 m!8013748))

(assert (=> bs!1919497 m!8013748))

(declare-fun m!8013854 () Bool)

(assert (=> bs!1919497 m!8013854))

(declare-fun m!8013856 () Bool)

(assert (=> bs!1919497 m!8013856))

(declare-fun m!8013858 () Bool)

(assert (=> bs!1919497 m!8013858))

(assert (=> b!7353128 d!2280954))

(declare-fun call!672878 () (Set Context!16236))

(declare-fun call!672879 () List!71674)

(declare-fun bm!672871 () Bool)

(declare-fun c!1366161 () Bool)

(assert (=> bm!672871 (= call!672878 (derivationStepZipperDown!3004 (ite c!1366161 (regTwo!38869 (regOne!38868 r1!2370)) (regOne!38868 (regOne!38868 r1!2370))) (ite c!1366161 (Context!16237 (++!16996 lt!2612653 (exprs!8618 ct2!378))) (Context!16237 call!672879)) c!10362))))

(declare-fun b!7353247 () Bool)

(declare-fun e!4402774 () (Set Context!16236))

(declare-fun call!672877 () (Set Context!16236))

(assert (=> b!7353247 (= e!4402774 call!672877)))

(declare-fun b!7353248 () Bool)

(declare-fun c!1366162 () Bool)

(declare-fun e!4402770 () Bool)

(assert (=> b!7353248 (= c!1366162 e!4402770)))

(declare-fun res!2969390 () Bool)

(assert (=> b!7353248 (=> (not res!2969390) (not e!4402770))))

(assert (=> b!7353248 (= res!2969390 (is-Concat!28023 (regOne!38868 r1!2370)))))

(declare-fun e!4402773 () (Set Context!16236))

(declare-fun e!4402769 () (Set Context!16236))

(assert (=> b!7353248 (= e!4402773 e!4402769)))

(declare-fun b!7353249 () Bool)

(declare-fun e!4402771 () (Set Context!16236))

(assert (=> b!7353249 (= e!4402771 e!4402773)))

(assert (=> b!7353249 (= c!1366161 (is-Union!19178 (regOne!38868 r1!2370)))))

(declare-fun bm!672872 () Bool)

(declare-fun call!672881 () (Set Context!16236))

(assert (=> bm!672872 (= call!672877 call!672881)))

(declare-fun b!7353250 () Bool)

(assert (=> b!7353250 (= e!4402771 (set.insert (Context!16237 (++!16996 lt!2612653 (exprs!8618 ct2!378))) (as set.empty (Set Context!16236))))))

(declare-fun b!7353251 () Bool)

(assert (=> b!7353251 (= e!4402770 (nullable!8269 (regOne!38868 (regOne!38868 r1!2370))))))

(declare-fun b!7353252 () Bool)

(assert (=> b!7353252 (= e!4402769 e!4402774)))

(declare-fun c!1366160 () Bool)

(assert (=> b!7353252 (= c!1366160 (is-Concat!28023 (regOne!38868 r1!2370)))))

(declare-fun bm!672873 () Bool)

(declare-fun call!672880 () List!71674)

(assert (=> bm!672873 (= call!672880 call!672879)))

(declare-fun b!7353253 () Bool)

(declare-fun e!4402772 () (Set Context!16236))

(assert (=> b!7353253 (= e!4402772 call!672877)))

(declare-fun b!7353254 () Bool)

(assert (=> b!7353254 (= e!4402772 (as set.empty (Set Context!16236)))))

(declare-fun d!2280958 () Bool)

(declare-fun c!1366159 () Bool)

(assert (=> d!2280958 (= c!1366159 (and (is-ElementMatch!19178 (regOne!38868 r1!2370)) (= (c!1366138 (regOne!38868 r1!2370)) c!10362)))))

(assert (=> d!2280958 (= (derivationStepZipperDown!3004 (regOne!38868 r1!2370) (Context!16237 (++!16996 lt!2612653 (exprs!8618 ct2!378))) c!10362) e!4402771)))

(declare-fun b!7353255 () Bool)

(assert (=> b!7353255 (= e!4402769 (set.union call!672878 call!672881))))

(declare-fun call!672876 () (Set Context!16236))

(declare-fun bm!672874 () Bool)

(assert (=> bm!672874 (= call!672876 (derivationStepZipperDown!3004 (ite c!1366161 (regOne!38869 (regOne!38868 r1!2370)) (ite c!1366162 (regTwo!38868 (regOne!38868 r1!2370)) (ite c!1366160 (regOne!38868 (regOne!38868 r1!2370)) (reg!19507 (regOne!38868 r1!2370))))) (ite (or c!1366161 c!1366162) (Context!16237 (++!16996 lt!2612653 (exprs!8618 ct2!378))) (Context!16237 call!672880)) c!10362))))

(declare-fun bm!672875 () Bool)

(assert (=> bm!672875 (= call!672881 call!672876)))

(declare-fun b!7353256 () Bool)

(assert (=> b!7353256 (= e!4402773 (set.union call!672876 call!672878))))

(declare-fun bm!672876 () Bool)

(assert (=> bm!672876 (= call!672879 ($colon$colon!3176 (exprs!8618 (Context!16237 (++!16996 lt!2612653 (exprs!8618 ct2!378)))) (ite (or c!1366162 c!1366160) (regTwo!38868 (regOne!38868 r1!2370)) (regOne!38868 r1!2370))))))

(declare-fun b!7353257 () Bool)

(declare-fun c!1366163 () Bool)

(assert (=> b!7353257 (= c!1366163 (is-Star!19178 (regOne!38868 r1!2370)))))

(assert (=> b!7353257 (= e!4402774 e!4402772)))

(assert (= (and d!2280958 c!1366159) b!7353250))

(assert (= (and d!2280958 (not c!1366159)) b!7353249))

(assert (= (and b!7353249 c!1366161) b!7353256))

(assert (= (and b!7353249 (not c!1366161)) b!7353248))

(assert (= (and b!7353248 res!2969390) b!7353251))

(assert (= (and b!7353248 c!1366162) b!7353255))

(assert (= (and b!7353248 (not c!1366162)) b!7353252))

(assert (= (and b!7353252 c!1366160) b!7353247))

(assert (= (and b!7353252 (not c!1366160)) b!7353257))

(assert (= (and b!7353257 c!1366163) b!7353253))

(assert (= (and b!7353257 (not c!1366163)) b!7353254))

(assert (= (or b!7353247 b!7353253) bm!672873))

(assert (= (or b!7353247 b!7353253) bm!672872))

(assert (= (or b!7353255 bm!672872) bm!672875))

(assert (= (or b!7353255 bm!672873) bm!672876))

(assert (= (or b!7353256 b!7353255) bm!672871))

(assert (= (or b!7353256 bm!672875) bm!672874))

(declare-fun m!8013860 () Bool)

(assert (=> bm!672874 m!8013860))

(declare-fun m!8013862 () Bool)

(assert (=> bm!672871 m!8013862))

(declare-fun m!8013864 () Bool)

(assert (=> b!7353250 m!8013864))

(declare-fun m!8013866 () Bool)

(assert (=> b!7353251 m!8013866))

(declare-fun m!8013868 () Bool)

(assert (=> bm!672876 m!8013868))

(assert (=> b!7353128 d!2280958))

(declare-fun bs!1919499 () Bool)

(declare-fun d!2280960 () Bool)

(assert (= bs!1919499 (and d!2280960 b!7353127)))

(declare-fun lambda!456780 () Int)

(assert (=> bs!1919499 (= lambda!456780 lambda!456762)))

(assert (=> d!2280960 (set.member (Context!16237 (++!16996 (exprs!8618 cWitness!61) (exprs!8618 ct2!378))) (derivationStepZipperDown!3004 (regOne!38868 r1!2370) (Context!16237 (++!16996 (exprs!8618 lt!2612654) (exprs!8618 ct2!378))) c!10362))))

(declare-fun lt!2612716 () Unit!165309)

(assert (=> d!2280960 (= lt!2612716 (lemmaConcatPreservesForall!1853 (exprs!8618 lt!2612654) (exprs!8618 ct2!378) lambda!456780))))

(declare-fun lt!2612715 () Unit!165309)

(assert (=> d!2280960 (= lt!2612715 (lemmaConcatPreservesForall!1853 (exprs!8618 cWitness!61) (exprs!8618 ct2!378) lambda!456780))))

(declare-fun lt!2612714 () Unit!165309)

(declare-fun choose!57201 (Regex!19178 Context!16236 Context!16236 Context!16236 C!38630) Unit!165309)

(assert (=> d!2280960 (= lt!2612714 (choose!57201 (regOne!38868 r1!2370) lt!2612654 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2280960 (validRegex!9774 (regOne!38868 r1!2370))))

(assert (=> d!2280960 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!99 (regOne!38868 r1!2370) lt!2612654 ct2!378 cWitness!61 c!10362) lt!2612714)))

(declare-fun bs!1919500 () Bool)

(assert (= bs!1919500 d!2280960))

(declare-fun m!8013876 () Bool)

(assert (=> bs!1919500 m!8013876))

(declare-fun m!8013878 () Bool)

(assert (=> bs!1919500 m!8013878))

(assert (=> bs!1919500 m!8013748))

(declare-fun m!8013880 () Bool)

(assert (=> bs!1919500 m!8013880))

(declare-fun m!8013882 () Bool)

(assert (=> bs!1919500 m!8013882))

(declare-fun m!8013884 () Bool)

(assert (=> bs!1919500 m!8013884))

(declare-fun m!8013886 () Bool)

(assert (=> bs!1919500 m!8013886))

(declare-fun m!8013888 () Bool)

(assert (=> bs!1919500 m!8013888))

(assert (=> b!7353128 d!2280960))

(declare-fun b!7353260 () Bool)

(declare-fun res!2969392 () Bool)

(declare-fun e!4402776 () Bool)

(assert (=> b!7353260 (=> (not res!2969392) (not e!4402776))))

(declare-fun lt!2612717 () List!71674)

(assert (=> b!7353260 (= res!2969392 (= (size!42063 lt!2612717) (+ (size!42063 lt!2612653) (size!42063 (exprs!8618 ct2!378)))))))

(declare-fun b!7353258 () Bool)

(declare-fun e!4402775 () List!71674)

(assert (=> b!7353258 (= e!4402775 (exprs!8618 ct2!378))))

(declare-fun d!2280964 () Bool)

(assert (=> d!2280964 e!4402776))

(declare-fun res!2969391 () Bool)

(assert (=> d!2280964 (=> (not res!2969391) (not e!4402776))))

(assert (=> d!2280964 (= res!2969391 (= (content!15084 lt!2612717) (set.union (content!15084 lt!2612653) (content!15084 (exprs!8618 ct2!378)))))))

(assert (=> d!2280964 (= lt!2612717 e!4402775)))

(declare-fun c!1366165 () Bool)

(assert (=> d!2280964 (= c!1366165 (is-Nil!71550 lt!2612653))))

(assert (=> d!2280964 (= (++!16996 lt!2612653 (exprs!8618 ct2!378)) lt!2612717)))

(declare-fun b!7353261 () Bool)

(assert (=> b!7353261 (= e!4402776 (or (not (= (exprs!8618 ct2!378) Nil!71550)) (= lt!2612717 lt!2612653)))))

(declare-fun b!7353259 () Bool)

(assert (=> b!7353259 (= e!4402775 (Cons!71550 (h!77998 lt!2612653) (++!16996 (t!386103 lt!2612653) (exprs!8618 ct2!378))))))

(assert (= (and d!2280964 c!1366165) b!7353258))

(assert (= (and d!2280964 (not c!1366165)) b!7353259))

(assert (= (and d!2280964 res!2969391) b!7353260))

(assert (= (and b!7353260 res!2969392) b!7353261))

(declare-fun m!8013890 () Bool)

(assert (=> b!7353260 m!8013890))

(declare-fun m!8013892 () Bool)

(assert (=> b!7353260 m!8013892))

(assert (=> b!7353260 m!8013818))

(declare-fun m!8013894 () Bool)

(assert (=> d!2280964 m!8013894))

(declare-fun m!8013896 () Bool)

(assert (=> d!2280964 m!8013896))

(assert (=> d!2280964 m!8013824))

(declare-fun m!8013898 () Bool)

(assert (=> b!7353259 m!8013898))

(assert (=> b!7353128 d!2280964))

(declare-fun d!2280966 () Bool)

(declare-fun res!2969407 () Bool)

(declare-fun e!4402795 () Bool)

(assert (=> d!2280966 (=> res!2969407 e!4402795)))

(assert (=> d!2280966 (= res!2969407 (is-Nil!71550 (exprs!8618 ct2!378)))))

(assert (=> d!2280966 (= (forall!18000 (exprs!8618 ct2!378) lambda!456762) e!4402795)))

(declare-fun b!7353284 () Bool)

(declare-fun e!4402796 () Bool)

(assert (=> b!7353284 (= e!4402795 e!4402796)))

(declare-fun res!2969408 () Bool)

(assert (=> b!7353284 (=> (not res!2969408) (not e!4402796))))

(declare-fun dynLambda!29501 (Int Regex!19178) Bool)

(assert (=> b!7353284 (= res!2969408 (dynLambda!29501 lambda!456762 (h!77998 (exprs!8618 ct2!378))))))

(declare-fun b!7353285 () Bool)

(assert (=> b!7353285 (= e!4402796 (forall!18000 (t!386103 (exprs!8618 ct2!378)) lambda!456762))))

(assert (= (and d!2280966 (not res!2969407)) b!7353284))

(assert (= (and b!7353284 res!2969408) b!7353285))

(declare-fun b_lambda!284181 () Bool)

(assert (=> (not b_lambda!284181) (not b!7353284)))

(declare-fun m!8013900 () Bool)

(assert (=> b!7353284 m!8013900))

(declare-fun m!8013902 () Bool)

(assert (=> b!7353285 m!8013902))

(assert (=> b!7353133 d!2280966))

(declare-fun c!1366172 () Bool)

(declare-fun call!672885 () List!71674)

(declare-fun call!672884 () (Set Context!16236))

(declare-fun bm!672877 () Bool)

(assert (=> bm!672877 (= call!672884 (derivationStepZipperDown!3004 (ite c!1366172 (regTwo!38869 r1!2370) (regOne!38868 r1!2370)) (ite c!1366172 ct1!282 (Context!16237 call!672885)) c!10362))))

(declare-fun b!7353286 () Bool)

(declare-fun e!4402802 () (Set Context!16236))

(declare-fun call!672883 () (Set Context!16236))

(assert (=> b!7353286 (= e!4402802 call!672883)))

(declare-fun b!7353287 () Bool)

(declare-fun c!1366173 () Bool)

(declare-fun e!4402798 () Bool)

(assert (=> b!7353287 (= c!1366173 e!4402798)))

(declare-fun res!2969409 () Bool)

(assert (=> b!7353287 (=> (not res!2969409) (not e!4402798))))

(assert (=> b!7353287 (= res!2969409 (is-Concat!28023 r1!2370))))

(declare-fun e!4402801 () (Set Context!16236))

(declare-fun e!4402797 () (Set Context!16236))

(assert (=> b!7353287 (= e!4402801 e!4402797)))

(declare-fun b!7353288 () Bool)

(declare-fun e!4402799 () (Set Context!16236))

(assert (=> b!7353288 (= e!4402799 e!4402801)))

(assert (=> b!7353288 (= c!1366172 (is-Union!19178 r1!2370))))

(declare-fun bm!672878 () Bool)

(declare-fun call!672887 () (Set Context!16236))

(assert (=> bm!672878 (= call!672883 call!672887)))

(declare-fun b!7353289 () Bool)

(assert (=> b!7353289 (= e!4402799 (set.insert ct1!282 (as set.empty (Set Context!16236))))))

(declare-fun b!7353290 () Bool)

(assert (=> b!7353290 (= e!4402798 (nullable!8269 (regOne!38868 r1!2370)))))

(declare-fun b!7353291 () Bool)

(assert (=> b!7353291 (= e!4402797 e!4402802)))

(declare-fun c!1366171 () Bool)

(assert (=> b!7353291 (= c!1366171 (is-Concat!28023 r1!2370))))

(declare-fun bm!672879 () Bool)

(declare-fun call!672886 () List!71674)

(assert (=> bm!672879 (= call!672886 call!672885)))

(declare-fun b!7353292 () Bool)

(declare-fun e!4402800 () (Set Context!16236))

(assert (=> b!7353292 (= e!4402800 call!672883)))

(declare-fun b!7353293 () Bool)

(assert (=> b!7353293 (= e!4402800 (as set.empty (Set Context!16236)))))

(declare-fun d!2280968 () Bool)

(declare-fun c!1366170 () Bool)

(assert (=> d!2280968 (= c!1366170 (and (is-ElementMatch!19178 r1!2370) (= (c!1366138 r1!2370) c!10362)))))

(assert (=> d!2280968 (= (derivationStepZipperDown!3004 r1!2370 ct1!282 c!10362) e!4402799)))

(declare-fun b!7353294 () Bool)

(assert (=> b!7353294 (= e!4402797 (set.union call!672884 call!672887))))

(declare-fun call!672882 () (Set Context!16236))

(declare-fun bm!672880 () Bool)

(assert (=> bm!672880 (= call!672882 (derivationStepZipperDown!3004 (ite c!1366172 (regOne!38869 r1!2370) (ite c!1366173 (regTwo!38868 r1!2370) (ite c!1366171 (regOne!38868 r1!2370) (reg!19507 r1!2370)))) (ite (or c!1366172 c!1366173) ct1!282 (Context!16237 call!672886)) c!10362))))

(declare-fun bm!672881 () Bool)

(assert (=> bm!672881 (= call!672887 call!672882)))

(declare-fun b!7353295 () Bool)

(assert (=> b!7353295 (= e!4402801 (set.union call!672882 call!672884))))

(declare-fun bm!672882 () Bool)

(assert (=> bm!672882 (= call!672885 ($colon$colon!3176 (exprs!8618 ct1!282) (ite (or c!1366173 c!1366171) (regTwo!38868 r1!2370) r1!2370)))))

(declare-fun b!7353296 () Bool)

(declare-fun c!1366174 () Bool)

(assert (=> b!7353296 (= c!1366174 (is-Star!19178 r1!2370))))

(assert (=> b!7353296 (= e!4402802 e!4402800)))

(assert (= (and d!2280968 c!1366170) b!7353289))

(assert (= (and d!2280968 (not c!1366170)) b!7353288))

(assert (= (and b!7353288 c!1366172) b!7353295))

(assert (= (and b!7353288 (not c!1366172)) b!7353287))

(assert (= (and b!7353287 res!2969409) b!7353290))

(assert (= (and b!7353287 c!1366173) b!7353294))

(assert (= (and b!7353287 (not c!1366173)) b!7353291))

(assert (= (and b!7353291 c!1366171) b!7353286))

(assert (= (and b!7353291 (not c!1366171)) b!7353296))

(assert (= (and b!7353296 c!1366174) b!7353292))

(assert (= (and b!7353296 (not c!1366174)) b!7353293))

(assert (= (or b!7353286 b!7353292) bm!672879))

(assert (= (or b!7353286 b!7353292) bm!672878))

(assert (= (or b!7353294 bm!672878) bm!672881))

(assert (= (or b!7353294 bm!672879) bm!672882))

(assert (= (or b!7353295 b!7353294) bm!672877))

(assert (= (or b!7353295 bm!672881) bm!672880))

(declare-fun m!8013904 () Bool)

(assert (=> bm!672880 m!8013904))

(declare-fun m!8013906 () Bool)

(assert (=> bm!672877 m!8013906))

(declare-fun m!8013908 () Bool)

(assert (=> b!7353289 m!8013908))

(assert (=> b!7353290 m!8013738))

(declare-fun m!8013910 () Bool)

(assert (=> bm!672882 m!8013910))

(assert (=> b!7353130 d!2280968))

(declare-fun d!2280970 () Bool)

(declare-fun res!2969410 () Bool)

(declare-fun e!4402803 () Bool)

(assert (=> d!2280970 (=> res!2969410 e!4402803)))

(assert (=> d!2280970 (= res!2969410 (is-Nil!71550 (exprs!8618 ct1!282)))))

(assert (=> d!2280970 (= (forall!18000 (exprs!8618 ct1!282) lambda!456762) e!4402803)))

(declare-fun b!7353297 () Bool)

(declare-fun e!4402804 () Bool)

(assert (=> b!7353297 (= e!4402803 e!4402804)))

(declare-fun res!2969411 () Bool)

(assert (=> b!7353297 (=> (not res!2969411) (not e!4402804))))

(assert (=> b!7353297 (= res!2969411 (dynLambda!29501 lambda!456762 (h!77998 (exprs!8618 ct1!282))))))

(declare-fun b!7353298 () Bool)

(assert (=> b!7353298 (= e!4402804 (forall!18000 (t!386103 (exprs!8618 ct1!282)) lambda!456762))))

(assert (= (and d!2280970 (not res!2969410)) b!7353297))

(assert (= (and b!7353297 res!2969411) b!7353298))

(declare-fun b_lambda!284183 () Bool)

(assert (=> (not b_lambda!284183) (not b!7353297)))

(declare-fun m!8013912 () Bool)

(assert (=> b!7353297 m!8013912))

(declare-fun m!8013914 () Bool)

(assert (=> b!7353298 m!8013914))

(assert (=> b!7353124 d!2280970))

(assert (=> b!7353124 d!2280954))

(declare-fun b!7353317 () Bool)

(declare-fun e!4402823 () Bool)

(declare-fun call!672902 () Bool)

(assert (=> b!7353317 (= e!4402823 call!672902)))

(declare-fun b!7353318 () Bool)

(declare-fun res!2969422 () Bool)

(declare-fun e!4402822 () Bool)

(assert (=> b!7353318 (=> res!2969422 e!4402822)))

(assert (=> b!7353318 (= res!2969422 (not (is-Concat!28023 (regTwo!38868 r1!2370))))))

(declare-fun e!4402824 () Bool)

(assert (=> b!7353318 (= e!4402824 e!4402822)))

(declare-fun b!7353319 () Bool)

(declare-fun e!4402821 () Bool)

(assert (=> b!7353319 (= e!4402821 e!4402824)))

(declare-fun c!1366180 () Bool)

(assert (=> b!7353319 (= c!1366180 (is-Union!19178 (regTwo!38868 r1!2370)))))

(declare-fun bm!672895 () Bool)

(declare-fun call!672900 () Bool)

(declare-fun call!672901 () Bool)

(assert (=> bm!672895 (= call!672900 call!672901)))

(declare-fun b!7353320 () Bool)

(declare-fun e!4402819 () Bool)

(assert (=> b!7353320 (= e!4402819 e!4402821)))

(declare-fun c!1366179 () Bool)

(assert (=> b!7353320 (= c!1366179 (is-Star!19178 (regTwo!38868 r1!2370)))))

(declare-fun b!7353321 () Bool)

(declare-fun e!4402820 () Bool)

(assert (=> b!7353321 (= e!4402820 call!672901)))

(declare-fun b!7353322 () Bool)

(assert (=> b!7353322 (= e!4402822 e!4402823)))

(declare-fun res!2969423 () Bool)

(assert (=> b!7353322 (=> (not res!2969423) (not e!4402823))))

(assert (=> b!7353322 (= res!2969423 call!672900)))

(declare-fun b!7353323 () Bool)

(assert (=> b!7353323 (= e!4402821 e!4402820)))

(declare-fun res!2969426 () Bool)

(assert (=> b!7353323 (= res!2969426 (not (nullable!8269 (reg!19507 (regTwo!38868 r1!2370)))))))

(assert (=> b!7353323 (=> (not res!2969426) (not e!4402820))))

(declare-fun bm!672896 () Bool)

(assert (=> bm!672896 (= call!672902 (validRegex!9774 (ite c!1366180 (regOne!38869 (regTwo!38868 r1!2370)) (regTwo!38868 (regTwo!38868 r1!2370)))))))

(declare-fun d!2280972 () Bool)

(declare-fun res!2969425 () Bool)

(assert (=> d!2280972 (=> res!2969425 e!4402819)))

(assert (=> d!2280972 (= res!2969425 (is-ElementMatch!19178 (regTwo!38868 r1!2370)))))

(assert (=> d!2280972 (= (validRegex!9774 (regTwo!38868 r1!2370)) e!4402819)))

(declare-fun bm!672897 () Bool)

(assert (=> bm!672897 (= call!672901 (validRegex!9774 (ite c!1366179 (reg!19507 (regTwo!38868 r1!2370)) (ite c!1366180 (regTwo!38869 (regTwo!38868 r1!2370)) (regOne!38868 (regTwo!38868 r1!2370))))))))

(declare-fun b!7353324 () Bool)

(declare-fun res!2969424 () Bool)

(declare-fun e!4402825 () Bool)

(assert (=> b!7353324 (=> (not res!2969424) (not e!4402825))))

(assert (=> b!7353324 (= res!2969424 call!672902)))

(assert (=> b!7353324 (= e!4402824 e!4402825)))

(declare-fun b!7353325 () Bool)

(assert (=> b!7353325 (= e!4402825 call!672900)))

(assert (= (and d!2280972 (not res!2969425)) b!7353320))

(assert (= (and b!7353320 c!1366179) b!7353323))

(assert (= (and b!7353320 (not c!1366179)) b!7353319))

(assert (= (and b!7353323 res!2969426) b!7353321))

(assert (= (and b!7353319 c!1366180) b!7353324))

(assert (= (and b!7353319 (not c!1366180)) b!7353318))

(assert (= (and b!7353324 res!2969424) b!7353325))

(assert (= (and b!7353318 (not res!2969422)) b!7353322))

(assert (= (and b!7353322 res!2969423) b!7353317))

(assert (= (or b!7353324 b!7353317) bm!672896))

(assert (= (or b!7353325 b!7353322) bm!672895))

(assert (= (or b!7353321 bm!672895) bm!672897))

(declare-fun m!8013916 () Bool)

(assert (=> b!7353323 m!8013916))

(declare-fun m!8013918 () Bool)

(assert (=> bm!672896 m!8013918))

(declare-fun m!8013920 () Bool)

(assert (=> bm!672897 m!8013920))

(assert (=> b!7353126 d!2280972))

(declare-fun b!7353326 () Bool)

(declare-fun e!4402830 () Bool)

(declare-fun call!672905 () Bool)

(assert (=> b!7353326 (= e!4402830 call!672905)))

(declare-fun b!7353327 () Bool)

(declare-fun res!2969427 () Bool)

(declare-fun e!4402829 () Bool)

(assert (=> b!7353327 (=> res!2969427 e!4402829)))

(assert (=> b!7353327 (= res!2969427 (not (is-Concat!28023 r1!2370)))))

(declare-fun e!4402831 () Bool)

(assert (=> b!7353327 (= e!4402831 e!4402829)))

(declare-fun b!7353328 () Bool)

(declare-fun e!4402828 () Bool)

(assert (=> b!7353328 (= e!4402828 e!4402831)))

(declare-fun c!1366182 () Bool)

(assert (=> b!7353328 (= c!1366182 (is-Union!19178 r1!2370))))

(declare-fun bm!672898 () Bool)

(declare-fun call!672903 () Bool)

(declare-fun call!672904 () Bool)

(assert (=> bm!672898 (= call!672903 call!672904)))

(declare-fun b!7353329 () Bool)

(declare-fun e!4402826 () Bool)

(assert (=> b!7353329 (= e!4402826 e!4402828)))

(declare-fun c!1366181 () Bool)

(assert (=> b!7353329 (= c!1366181 (is-Star!19178 r1!2370))))

(declare-fun b!7353330 () Bool)

(declare-fun e!4402827 () Bool)

(assert (=> b!7353330 (= e!4402827 call!672904)))

(declare-fun b!7353331 () Bool)

(assert (=> b!7353331 (= e!4402829 e!4402830)))

(declare-fun res!2969428 () Bool)

(assert (=> b!7353331 (=> (not res!2969428) (not e!4402830))))

(assert (=> b!7353331 (= res!2969428 call!672903)))

(declare-fun b!7353332 () Bool)

(assert (=> b!7353332 (= e!4402828 e!4402827)))

(declare-fun res!2969431 () Bool)

(assert (=> b!7353332 (= res!2969431 (not (nullable!8269 (reg!19507 r1!2370))))))

(assert (=> b!7353332 (=> (not res!2969431) (not e!4402827))))

(declare-fun bm!672899 () Bool)

(assert (=> bm!672899 (= call!672905 (validRegex!9774 (ite c!1366182 (regOne!38869 r1!2370) (regTwo!38868 r1!2370))))))

(declare-fun d!2280974 () Bool)

(declare-fun res!2969430 () Bool)

(assert (=> d!2280974 (=> res!2969430 e!4402826)))

(assert (=> d!2280974 (= res!2969430 (is-ElementMatch!19178 r1!2370))))

(assert (=> d!2280974 (= (validRegex!9774 r1!2370) e!4402826)))

(declare-fun bm!672900 () Bool)

(assert (=> bm!672900 (= call!672904 (validRegex!9774 (ite c!1366181 (reg!19507 r1!2370) (ite c!1366182 (regTwo!38869 r1!2370) (regOne!38868 r1!2370)))))))

(declare-fun b!7353333 () Bool)

(declare-fun res!2969429 () Bool)

(declare-fun e!4402832 () Bool)

(assert (=> b!7353333 (=> (not res!2969429) (not e!4402832))))

(assert (=> b!7353333 (= res!2969429 call!672905)))

(assert (=> b!7353333 (= e!4402831 e!4402832)))

(declare-fun b!7353334 () Bool)

(assert (=> b!7353334 (= e!4402832 call!672903)))

(assert (= (and d!2280974 (not res!2969430)) b!7353329))

(assert (= (and b!7353329 c!1366181) b!7353332))

(assert (= (and b!7353329 (not c!1366181)) b!7353328))

(assert (= (and b!7353332 res!2969431) b!7353330))

(assert (= (and b!7353328 c!1366182) b!7353333))

(assert (= (and b!7353328 (not c!1366182)) b!7353327))

(assert (= (and b!7353333 res!2969429) b!7353334))

(assert (= (and b!7353327 (not res!2969427)) b!7353331))

(assert (= (and b!7353331 res!2969428) b!7353326))

(assert (= (or b!7353333 b!7353326) bm!672899))

(assert (= (or b!7353334 b!7353331) bm!672898))

(assert (= (or b!7353330 bm!672898) bm!672900))

(declare-fun m!8013922 () Bool)

(assert (=> b!7353332 m!8013922))

(declare-fun m!8013924 () Bool)

(assert (=> bm!672899 m!8013924))

(declare-fun m!8013926 () Bool)

(assert (=> bm!672900 m!8013926))

(assert (=> start!718046 d!2280974))

(declare-fun bs!1919501 () Bool)

(declare-fun d!2280976 () Bool)

(assert (= bs!1919501 (and d!2280976 b!7353127)))

(declare-fun lambda!456783 () Int)

(assert (=> bs!1919501 (= lambda!456783 lambda!456762)))

(declare-fun bs!1919502 () Bool)

(assert (= bs!1919502 (and d!2280976 d!2280960)))

(assert (=> bs!1919502 (= lambda!456783 lambda!456780)))

(assert (=> d!2280976 (= (inv!91286 cWitness!61) (forall!18000 (exprs!8618 cWitness!61) lambda!456783))))

(declare-fun bs!1919503 () Bool)

(assert (= bs!1919503 d!2280976))

(declare-fun m!8013928 () Bool)

(assert (=> bs!1919503 m!8013928))

(assert (=> start!718046 d!2280976))

(declare-fun bs!1919504 () Bool)

(declare-fun d!2280978 () Bool)

(assert (= bs!1919504 (and d!2280978 b!7353127)))

(declare-fun lambda!456784 () Int)

(assert (=> bs!1919504 (= lambda!456784 lambda!456762)))

(declare-fun bs!1919505 () Bool)

(assert (= bs!1919505 (and d!2280978 d!2280960)))

(assert (=> bs!1919505 (= lambda!456784 lambda!456780)))

(declare-fun bs!1919506 () Bool)

(assert (= bs!1919506 (and d!2280978 d!2280976)))

(assert (=> bs!1919506 (= lambda!456784 lambda!456783)))

(assert (=> d!2280978 (= (inv!91286 ct1!282) (forall!18000 (exprs!8618 ct1!282) lambda!456784))))

(declare-fun bs!1919507 () Bool)

(assert (= bs!1919507 d!2280978))

(declare-fun m!8013930 () Bool)

(assert (=> bs!1919507 m!8013930))

(assert (=> start!718046 d!2280978))

(declare-fun bs!1919508 () Bool)

(declare-fun d!2280980 () Bool)

(assert (= bs!1919508 (and d!2280980 b!7353127)))

(declare-fun lambda!456785 () Int)

(assert (=> bs!1919508 (= lambda!456785 lambda!456762)))

(declare-fun bs!1919509 () Bool)

(assert (= bs!1919509 (and d!2280980 d!2280960)))

(assert (=> bs!1919509 (= lambda!456785 lambda!456780)))

(declare-fun bs!1919510 () Bool)

(assert (= bs!1919510 (and d!2280980 d!2280976)))

(assert (=> bs!1919510 (= lambda!456785 lambda!456783)))

(declare-fun bs!1919511 () Bool)

(assert (= bs!1919511 (and d!2280980 d!2280978)))

(assert (=> bs!1919511 (= lambda!456785 lambda!456784)))

(assert (=> d!2280980 (= (inv!91286 ct2!378) (forall!18000 (exprs!8618 ct2!378) lambda!456785))))

(declare-fun bs!1919512 () Bool)

(assert (= bs!1919512 d!2280980))

(declare-fun m!8013938 () Bool)

(assert (=> bs!1919512 m!8013938))

(assert (=> start!718046 d!2280980))

(declare-fun call!672912 () List!71674)

(declare-fun call!672911 () (Set Context!16236))

(declare-fun c!1366187 () Bool)

(declare-fun bm!672904 () Bool)

(assert (=> bm!672904 (= call!672911 (derivationStepZipperDown!3004 (ite c!1366187 (regTwo!38869 (regOne!38868 r1!2370)) (regOne!38868 (regOne!38868 r1!2370))) (ite c!1366187 lt!2612654 (Context!16237 call!672912)) c!10362))))

(declare-fun b!7353346 () Bool)

(declare-fun e!4402847 () (Set Context!16236))

(declare-fun call!672910 () (Set Context!16236))

(assert (=> b!7353346 (= e!4402847 call!672910)))

(declare-fun b!7353347 () Bool)

(declare-fun c!1366188 () Bool)

(declare-fun e!4402843 () Bool)

(assert (=> b!7353347 (= c!1366188 e!4402843)))

(declare-fun res!2969439 () Bool)

(assert (=> b!7353347 (=> (not res!2969439) (not e!4402843))))

(assert (=> b!7353347 (= res!2969439 (is-Concat!28023 (regOne!38868 r1!2370)))))

(declare-fun e!4402846 () (Set Context!16236))

(declare-fun e!4402842 () (Set Context!16236))

(assert (=> b!7353347 (= e!4402846 e!4402842)))

(declare-fun b!7353348 () Bool)

(declare-fun e!4402844 () (Set Context!16236))

(assert (=> b!7353348 (= e!4402844 e!4402846)))

(assert (=> b!7353348 (= c!1366187 (is-Union!19178 (regOne!38868 r1!2370)))))

(declare-fun bm!672905 () Bool)

(declare-fun call!672914 () (Set Context!16236))

(assert (=> bm!672905 (= call!672910 call!672914)))

(declare-fun b!7353349 () Bool)

(assert (=> b!7353349 (= e!4402844 (set.insert lt!2612654 (as set.empty (Set Context!16236))))))

(declare-fun b!7353350 () Bool)

(assert (=> b!7353350 (= e!4402843 (nullable!8269 (regOne!38868 (regOne!38868 r1!2370))))))

(declare-fun b!7353351 () Bool)

(assert (=> b!7353351 (= e!4402842 e!4402847)))

(declare-fun c!1366186 () Bool)

(assert (=> b!7353351 (= c!1366186 (is-Concat!28023 (regOne!38868 r1!2370)))))

(declare-fun bm!672906 () Bool)

(declare-fun call!672913 () List!71674)

(assert (=> bm!672906 (= call!672913 call!672912)))

(declare-fun b!7353352 () Bool)

(declare-fun e!4402845 () (Set Context!16236))

(assert (=> b!7353352 (= e!4402845 call!672910)))

(declare-fun b!7353353 () Bool)

(assert (=> b!7353353 (= e!4402845 (as set.empty (Set Context!16236)))))

(declare-fun d!2280984 () Bool)

(declare-fun c!1366185 () Bool)

(assert (=> d!2280984 (= c!1366185 (and (is-ElementMatch!19178 (regOne!38868 r1!2370)) (= (c!1366138 (regOne!38868 r1!2370)) c!10362)))))

(assert (=> d!2280984 (= (derivationStepZipperDown!3004 (regOne!38868 r1!2370) lt!2612654 c!10362) e!4402844)))

(declare-fun b!7353354 () Bool)

(assert (=> b!7353354 (= e!4402842 (set.union call!672911 call!672914))))

(declare-fun call!672909 () (Set Context!16236))

(declare-fun bm!672907 () Bool)

(assert (=> bm!672907 (= call!672909 (derivationStepZipperDown!3004 (ite c!1366187 (regOne!38869 (regOne!38868 r1!2370)) (ite c!1366188 (regTwo!38868 (regOne!38868 r1!2370)) (ite c!1366186 (regOne!38868 (regOne!38868 r1!2370)) (reg!19507 (regOne!38868 r1!2370))))) (ite (or c!1366187 c!1366188) lt!2612654 (Context!16237 call!672913)) c!10362))))

(declare-fun bm!672908 () Bool)

(assert (=> bm!672908 (= call!672914 call!672909)))

(declare-fun b!7353355 () Bool)

(assert (=> b!7353355 (= e!4402846 (set.union call!672909 call!672911))))

(declare-fun bm!672909 () Bool)

(assert (=> bm!672909 (= call!672912 ($colon$colon!3176 (exprs!8618 lt!2612654) (ite (or c!1366188 c!1366186) (regTwo!38868 (regOne!38868 r1!2370)) (regOne!38868 r1!2370))))))

(declare-fun b!7353356 () Bool)

(declare-fun c!1366189 () Bool)

(assert (=> b!7353356 (= c!1366189 (is-Star!19178 (regOne!38868 r1!2370)))))

(assert (=> b!7353356 (= e!4402847 e!4402845)))

(assert (= (and d!2280984 c!1366185) b!7353349))

(assert (= (and d!2280984 (not c!1366185)) b!7353348))

(assert (= (and b!7353348 c!1366187) b!7353355))

(assert (= (and b!7353348 (not c!1366187)) b!7353347))

(assert (= (and b!7353347 res!2969439) b!7353350))

(assert (= (and b!7353347 c!1366188) b!7353354))

(assert (= (and b!7353347 (not c!1366188)) b!7353351))

(assert (= (and b!7353351 c!1366186) b!7353346))

(assert (= (and b!7353351 (not c!1366186)) b!7353356))

(assert (= (and b!7353356 c!1366189) b!7353352))

(assert (= (and b!7353356 (not c!1366189)) b!7353353))

(assert (= (or b!7353346 b!7353352) bm!672906))

(assert (= (or b!7353346 b!7353352) bm!672905))

(assert (= (or b!7353354 bm!672905) bm!672908))

(assert (= (or b!7353354 bm!672906) bm!672909))

(assert (= (or b!7353355 b!7353354) bm!672904))

(assert (= (or b!7353355 bm!672908) bm!672907))

(declare-fun m!8013944 () Bool)

(assert (=> bm!672907 m!8013944))

(declare-fun m!8013946 () Bool)

(assert (=> bm!672904 m!8013946))

(declare-fun m!8013948 () Bool)

(assert (=> b!7353349 m!8013948))

(assert (=> b!7353350 m!8013866))

(declare-fun m!8013950 () Bool)

(assert (=> bm!672909 m!8013950))

(assert (=> b!7353125 d!2280984))

(declare-fun d!2280988 () Bool)

(assert (=> d!2280988 (= ($colon$colon!3176 (exprs!8618 ct1!282) (regTwo!38868 r1!2370)) (Cons!71550 (regTwo!38868 r1!2370) (exprs!8618 ct1!282)))))

(assert (=> b!7353125 d!2280988))

(declare-fun b!7353368 () Bool)

(declare-fun e!4402850 () Bool)

(declare-fun tp!2088636 () Bool)

(declare-fun tp!2088634 () Bool)

(assert (=> b!7353368 (= e!4402850 (and tp!2088636 tp!2088634))))

(declare-fun b!7353367 () Bool)

(assert (=> b!7353367 (= e!4402850 tp_is_empty!48601)))

(declare-fun b!7353369 () Bool)

(declare-fun tp!2088637 () Bool)

(assert (=> b!7353369 (= e!4402850 tp!2088637)))

(assert (=> b!7353138 (= tp!2088594 e!4402850)))

(declare-fun b!7353370 () Bool)

(declare-fun tp!2088638 () Bool)

(declare-fun tp!2088635 () Bool)

(assert (=> b!7353370 (= e!4402850 (and tp!2088638 tp!2088635))))

(assert (= (and b!7353138 (is-ElementMatch!19178 (reg!19507 r1!2370))) b!7353367))

(assert (= (and b!7353138 (is-Concat!28023 (reg!19507 r1!2370))) b!7353368))

(assert (= (and b!7353138 (is-Star!19178 (reg!19507 r1!2370))) b!7353369))

(assert (= (and b!7353138 (is-Union!19178 (reg!19507 r1!2370))) b!7353370))

(declare-fun b!7353375 () Bool)

(declare-fun e!4402853 () Bool)

(declare-fun tp!2088643 () Bool)

(declare-fun tp!2088644 () Bool)

(assert (=> b!7353375 (= e!4402853 (and tp!2088643 tp!2088644))))

(assert (=> b!7353134 (= tp!2088598 e!4402853)))

(assert (= (and b!7353134 (is-Cons!71550 (exprs!8618 cWitness!61))) b!7353375))

(declare-fun b!7353377 () Bool)

(declare-fun e!4402854 () Bool)

(declare-fun tp!2088647 () Bool)

(declare-fun tp!2088645 () Bool)

(assert (=> b!7353377 (= e!4402854 (and tp!2088647 tp!2088645))))

(declare-fun b!7353376 () Bool)

(assert (=> b!7353376 (= e!4402854 tp_is_empty!48601)))

(declare-fun b!7353378 () Bool)

(declare-fun tp!2088648 () Bool)

(assert (=> b!7353378 (= e!4402854 tp!2088648)))

(assert (=> b!7353139 (= tp!2088592 e!4402854)))

(declare-fun b!7353379 () Bool)

(declare-fun tp!2088649 () Bool)

(declare-fun tp!2088646 () Bool)

(assert (=> b!7353379 (= e!4402854 (and tp!2088649 tp!2088646))))

(assert (= (and b!7353139 (is-ElementMatch!19178 (regOne!38869 r1!2370))) b!7353376))

(assert (= (and b!7353139 (is-Concat!28023 (regOne!38869 r1!2370))) b!7353377))

(assert (= (and b!7353139 (is-Star!19178 (regOne!38869 r1!2370))) b!7353378))

(assert (= (and b!7353139 (is-Union!19178 (regOne!38869 r1!2370))) b!7353379))

(declare-fun b!7353381 () Bool)

(declare-fun e!4402855 () Bool)

(declare-fun tp!2088652 () Bool)

(declare-fun tp!2088650 () Bool)

(assert (=> b!7353381 (= e!4402855 (and tp!2088652 tp!2088650))))

(declare-fun b!7353380 () Bool)

(assert (=> b!7353380 (= e!4402855 tp_is_empty!48601)))

(declare-fun b!7353382 () Bool)

(declare-fun tp!2088653 () Bool)

(assert (=> b!7353382 (= e!4402855 tp!2088653)))

(assert (=> b!7353139 (= tp!2088599 e!4402855)))

(declare-fun b!7353383 () Bool)

(declare-fun tp!2088654 () Bool)

(declare-fun tp!2088651 () Bool)

(assert (=> b!7353383 (= e!4402855 (and tp!2088654 tp!2088651))))

(assert (= (and b!7353139 (is-ElementMatch!19178 (regTwo!38869 r1!2370))) b!7353380))

(assert (= (and b!7353139 (is-Concat!28023 (regTwo!38869 r1!2370))) b!7353381))

(assert (= (and b!7353139 (is-Star!19178 (regTwo!38869 r1!2370))) b!7353382))

(assert (= (and b!7353139 (is-Union!19178 (regTwo!38869 r1!2370))) b!7353383))

(declare-fun b!7353384 () Bool)

(declare-fun e!4402856 () Bool)

(declare-fun tp!2088655 () Bool)

(declare-fun tp!2088656 () Bool)

(assert (=> b!7353384 (= e!4402856 (and tp!2088655 tp!2088656))))

(assert (=> b!7353135 (= tp!2088597 e!4402856)))

(assert (= (and b!7353135 (is-Cons!71550 (exprs!8618 ct2!378))) b!7353384))

(declare-fun b!7353385 () Bool)

(declare-fun e!4402857 () Bool)

(declare-fun tp!2088657 () Bool)

(declare-fun tp!2088658 () Bool)

(assert (=> b!7353385 (= e!4402857 (and tp!2088657 tp!2088658))))

(assert (=> b!7353129 (= tp!2088596 e!4402857)))

(assert (= (and b!7353129 (is-Cons!71550 (exprs!8618 ct1!282))) b!7353385))

(declare-fun b!7353387 () Bool)

(declare-fun e!4402858 () Bool)

(declare-fun tp!2088661 () Bool)

(declare-fun tp!2088659 () Bool)

(assert (=> b!7353387 (= e!4402858 (and tp!2088661 tp!2088659))))

(declare-fun b!7353386 () Bool)

(assert (=> b!7353386 (= e!4402858 tp_is_empty!48601)))

(declare-fun b!7353388 () Bool)

(declare-fun tp!2088662 () Bool)

(assert (=> b!7353388 (= e!4402858 tp!2088662)))

(assert (=> b!7353131 (= tp!2088595 e!4402858)))

(declare-fun b!7353389 () Bool)

(declare-fun tp!2088663 () Bool)

(declare-fun tp!2088660 () Bool)

(assert (=> b!7353389 (= e!4402858 (and tp!2088663 tp!2088660))))

(assert (= (and b!7353131 (is-ElementMatch!19178 (regOne!38868 r1!2370))) b!7353386))

(assert (= (and b!7353131 (is-Concat!28023 (regOne!38868 r1!2370))) b!7353387))

(assert (= (and b!7353131 (is-Star!19178 (regOne!38868 r1!2370))) b!7353388))

(assert (= (and b!7353131 (is-Union!19178 (regOne!38868 r1!2370))) b!7353389))

(declare-fun b!7353391 () Bool)

(declare-fun e!4402859 () Bool)

(declare-fun tp!2088666 () Bool)

(declare-fun tp!2088664 () Bool)

(assert (=> b!7353391 (= e!4402859 (and tp!2088666 tp!2088664))))

(declare-fun b!7353390 () Bool)

(assert (=> b!7353390 (= e!4402859 tp_is_empty!48601)))

(declare-fun b!7353392 () Bool)

(declare-fun tp!2088667 () Bool)

(assert (=> b!7353392 (= e!4402859 tp!2088667)))

(assert (=> b!7353131 (= tp!2088593 e!4402859)))

(declare-fun b!7353393 () Bool)

(declare-fun tp!2088668 () Bool)

(declare-fun tp!2088665 () Bool)

(assert (=> b!7353393 (= e!4402859 (and tp!2088668 tp!2088665))))

(assert (= (and b!7353131 (is-ElementMatch!19178 (regTwo!38868 r1!2370))) b!7353390))

(assert (= (and b!7353131 (is-Concat!28023 (regTwo!38868 r1!2370))) b!7353391))

(assert (= (and b!7353131 (is-Star!19178 (regTwo!38868 r1!2370))) b!7353392))

(assert (= (and b!7353131 (is-Union!19178 (regTwo!38868 r1!2370))) b!7353393))

(declare-fun b_lambda!284187 () Bool)

(assert (= b_lambda!284181 (or b!7353127 b_lambda!284187)))

(declare-fun bs!1919513 () Bool)

(declare-fun d!2280990 () Bool)

(assert (= bs!1919513 (and d!2280990 b!7353127)))

(assert (=> bs!1919513 (= (dynLambda!29501 lambda!456762 (h!77998 (exprs!8618 ct2!378))) (validRegex!9774 (h!77998 (exprs!8618 ct2!378))))))

(declare-fun m!8013952 () Bool)

(assert (=> bs!1919513 m!8013952))

(assert (=> b!7353284 d!2280990))

(declare-fun b_lambda!284189 () Bool)

(assert (= b_lambda!284183 (or b!7353127 b_lambda!284189)))

(declare-fun bs!1919514 () Bool)

(declare-fun d!2280992 () Bool)

(assert (= bs!1919514 (and d!2280992 b!7353127)))

(assert (=> bs!1919514 (= (dynLambda!29501 lambda!456762 (h!77998 (exprs!8618 ct1!282))) (validRegex!9774 (h!77998 (exprs!8618 ct1!282))))))

(declare-fun m!8013954 () Bool)

(assert (=> bs!1919514 m!8013954))

(assert (=> b!7353297 d!2280992))

(push 1)

(assert (not b!7353388))

(assert (not bm!672868))

(assert (not b!7353391))

(assert (not bm!672874))

(assert (not bm!672897))

(assert (not b!7353290))

(assert (not b!7353383))

(assert (not b!7353379))

(assert (not b!7353218))

(assert (not bm!672882))

(assert (not bm!672876))

(assert (not b!7353245))

(assert (not d!2280980))

(assert (not bm!672880))

(assert (not b_lambda!284189))

(assert (not d!2280950))

(assert (not bm!672900))

(assert (not b!7353251))

(assert (not d!2280946))

(assert (not bm!672907))

(assert (not b!7353384))

(assert (not b!7353260))

(assert (not b!7353244))

(assert (not d!2280964))

(assert (not b!7353298))

(assert (not b!7353378))

(assert (not b!7353323))

(assert (not d!2280954))

(assert (not b!7353393))

(assert (not d!2280948))

(assert (not b!7353375))

(assert (not b!7353382))

(assert (not b!7353259))

(assert (not b!7353332))

(assert (not b_lambda!284187))

(assert (not bm!672899))

(assert (not bs!1919513))

(assert (not bm!672877))

(assert (not b!7353385))

(assert (not d!2280960))

(assert (not b!7353234))

(assert (not b!7353377))

(assert (not b!7353392))

(assert (not b!7353350))

(assert (not b!7353389))

(assert (not d!2280942))

(assert tp_is_empty!48601)

(assert (not d!2280952))

(assert (not bm!672904))

(assert (not b!7353368))

(assert (not bs!1919514))

(assert (not bm!672909))

(assert (not b!7353235))

(assert (not bm!672865))

(assert (not bm!672871))

(assert (not b!7353285))

(assert (not b!7353381))

(assert (not b!7353387))

(assert (not b!7353369))

(assert (not bm!672870))

(assert (not d!2280976))

(assert (not d!2280978))

(assert (not bm!672896))

(assert (not b!7353370))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

