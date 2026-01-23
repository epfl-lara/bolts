; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!727232 () Bool)

(assert start!727232)

(declare-fun bs!1938794 () Bool)

(declare-fun b!7508935 () Bool)

(assert (= bs!1938794 (and b!7508935 start!727232)))

(declare-fun lambda!465793 () Int)

(declare-fun lambda!465792 () Int)

(assert (=> bs!1938794 (not (= lambda!465793 lambda!465792))))

(declare-fun b!7508934 () Bool)

(declare-fun e!4477443 () Bool)

(declare-datatypes ((C!39778 0))(
  ( (C!39779 (val!30287 Int)) )
))
(declare-datatypes ((Regex!19726 0))(
  ( (ElementMatch!19726 (c!1386551 C!39778)) (Concat!28571 (regOne!39964 Regex!19726) (regTwo!39964 Regex!19726)) (EmptyExpr!19726) (Star!19726 (reg!20055 Regex!19726)) (EmptyLang!19726) (Union!19726 (regOne!39965 Regex!19726) (regTwo!39965 Regex!19726)) )
))
(declare-datatypes ((List!72559 0))(
  ( (Nil!72435) (Cons!72435 (h!78883 Regex!19726) (t!387128 List!72559)) )
))
(declare-datatypes ((Context!16956 0))(
  ( (Context!16957 (exprs!8978 List!72559)) )
))
(declare-fun z!556 () (Set Context!16956))

(declare-datatypes ((List!72560 0))(
  ( (Nil!72436) (Cons!72436 (h!78884 C!39778) (t!387129 List!72560)) )
))
(declare-datatypes ((Option!17235 0))(
  ( (None!17234) (Some!17234 (v!54363 List!72560)) )
))
(declare-fun isDefined!13910 (Option!17235) Bool)

(declare-fun getLanguageWitness!1065 ((Set Context!16956)) Option!17235)

(assert (=> b!7508934 (= e!4477443 (isDefined!13910 (getLanguageWitness!1065 z!556)))))

(declare-fun e!4477444 () Bool)

(assert (=> b!7508935 (= e!4477444 (not e!4477443))))

(declare-fun res!3012527 () Bool)

(assert (=> b!7508935 (=> res!3012527 e!4477443)))

(declare-fun exists!4881 ((Set Context!16956) Int) Bool)

(assert (=> b!7508935 (= res!3012527 (not (exists!4881 z!556 lambda!465793)))))

(declare-datatypes ((List!72561 0))(
  ( (Nil!72437) (Cons!72437 (h!78885 Context!16956) (t!387130 List!72561)) )
))
(declare-fun lt!2636979 () List!72561)

(declare-fun exists!4882 (List!72561 Int) Bool)

(assert (=> b!7508935 (exists!4882 lt!2636979 lambda!465793)))

(declare-datatypes ((Unit!166482 0))(
  ( (Unit!166483) )
))
(declare-fun lt!2636980 () Unit!166482)

(declare-fun lemmaNotForallThenExists!512 (List!72561 Int) Unit!166482)

(assert (=> b!7508935 (= lt!2636980 (lemmaNotForallThenExists!512 lt!2636979 lambda!465792))))

(declare-fun toList!11845 ((Set Context!16956)) List!72561)

(assert (=> b!7508935 (= lt!2636979 (toList!11845 z!556))))

(declare-fun b!7508936 () Bool)

(declare-fun e!4477445 () Bool)

(declare-fun tp!2179425 () Bool)

(assert (=> b!7508936 (= e!4477445 tp!2179425)))

(declare-fun res!3012528 () Bool)

(assert (=> start!727232 (=> (not res!3012528) (not e!4477444))))

(declare-fun forall!18325 ((Set Context!16956) Int) Bool)

(assert (=> start!727232 (= res!3012528 (not (forall!18325 z!556 lambda!465792)))))

(assert (=> start!727232 e!4477444))

(declare-fun condSetEmpty!57107 () Bool)

(assert (=> start!727232 (= condSetEmpty!57107 (= z!556 (as set.empty (Set Context!16956))))))

(declare-fun setRes!57107 () Bool)

(assert (=> start!727232 setRes!57107))

(declare-fun setIsEmpty!57107 () Bool)

(assert (=> setIsEmpty!57107 setRes!57107))

(declare-fun setNonEmpty!57107 () Bool)

(declare-fun setElem!57107 () Context!16956)

(declare-fun tp!2179424 () Bool)

(declare-fun inv!92546 (Context!16956) Bool)

(assert (=> setNonEmpty!57107 (= setRes!57107 (and tp!2179424 (inv!92546 setElem!57107) e!4477445))))

(declare-fun setRest!57107 () (Set Context!16956))

(assert (=> setNonEmpty!57107 (= z!556 (set.union (set.insert setElem!57107 (as set.empty (Set Context!16956))) setRest!57107))))

(assert (= (and start!727232 res!3012528) b!7508935))

(assert (= (and b!7508935 (not res!3012527)) b!7508934))

(assert (= (and start!727232 condSetEmpty!57107) setIsEmpty!57107))

(assert (= (and start!727232 (not condSetEmpty!57107)) setNonEmpty!57107))

(assert (= setNonEmpty!57107 b!7508936))

(declare-fun m!8092926 () Bool)

(assert (=> b!7508934 m!8092926))

(assert (=> b!7508934 m!8092926))

(declare-fun m!8092928 () Bool)

(assert (=> b!7508934 m!8092928))

(declare-fun m!8092930 () Bool)

(assert (=> b!7508935 m!8092930))

(declare-fun m!8092932 () Bool)

(assert (=> b!7508935 m!8092932))

(declare-fun m!8092934 () Bool)

(assert (=> b!7508935 m!8092934))

(declare-fun m!8092936 () Bool)

(assert (=> b!7508935 m!8092936))

(declare-fun m!8092938 () Bool)

(assert (=> start!727232 m!8092938))

(declare-fun m!8092940 () Bool)

(assert (=> setNonEmpty!57107 m!8092940))

(push 1)

(assert (not setNonEmpty!57107))

(assert (not start!727232))

(assert (not b!7508936))

(assert (not b!7508935))

(assert (not b!7508934))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2305834 () Bool)

(declare-fun isEmpty!41323 (Option!17235) Bool)

(assert (=> d!2305834 (= (isDefined!13910 (getLanguageWitness!1065 z!556)) (not (isEmpty!41323 (getLanguageWitness!1065 z!556))))))

(declare-fun bs!1938796 () Bool)

(assert (= bs!1938796 d!2305834))

(assert (=> bs!1938796 m!8092926))

(declare-fun m!8092958 () Bool)

(assert (=> bs!1938796 m!8092958))

(assert (=> b!7508934 d!2305834))

(declare-fun bs!1938797 () Bool)

(declare-fun d!2305836 () Bool)

(assert (= bs!1938797 (and d!2305836 start!727232)))

(declare-fun lambda!465810 () Int)

(assert (=> bs!1938797 (not (= lambda!465810 lambda!465792))))

(declare-fun bs!1938798 () Bool)

(assert (= bs!1938798 (and d!2305836 b!7508935)))

(assert (=> bs!1938798 (= lambda!465810 lambda!465793)))

(declare-fun lt!2636989 () Option!17235)

(assert (=> d!2305836 (= (isDefined!13910 lt!2636989) (exists!4881 z!556 lambda!465810))))

(declare-fun e!4477459 () Option!17235)

(assert (=> d!2305836 (= lt!2636989 e!4477459)))

(declare-fun c!1386567 () Bool)

(assert (=> d!2305836 (= c!1386567 (exists!4881 z!556 lambda!465810))))

(assert (=> d!2305836 (= (getLanguageWitness!1065 z!556) lt!2636989)))

(declare-fun b!7508950 () Bool)

(declare-fun getLanguageWitness!1067 (Context!16956) Option!17235)

(declare-fun getWitness!2483 ((Set Context!16956) Int) Context!16956)

(assert (=> b!7508950 (= e!4477459 (getLanguageWitness!1067 (getWitness!2483 z!556 lambda!465810)))))

(declare-fun b!7508951 () Bool)

(assert (=> b!7508951 (= e!4477459 None!17234)))

(assert (= (and d!2305836 c!1386567) b!7508950))

(assert (= (and d!2305836 (not c!1386567)) b!7508951))

(declare-fun m!8092960 () Bool)

(assert (=> d!2305836 m!8092960))

(declare-fun m!8092962 () Bool)

(assert (=> d!2305836 m!8092962))

(assert (=> d!2305836 m!8092962))

(declare-fun m!8092964 () Bool)

(assert (=> b!7508950 m!8092964))

(assert (=> b!7508950 m!8092964))

(declare-fun m!8092966 () Bool)

(assert (=> b!7508950 m!8092966))

(assert (=> b!7508934 d!2305836))

(declare-fun d!2305838 () Bool)

(declare-fun lt!2636992 () Bool)

(assert (=> d!2305838 (= lt!2636992 (exists!4882 (toList!11845 z!556) lambda!465793))))

(declare-fun choose!58218 ((Set Context!16956) Int) Bool)

(assert (=> d!2305838 (= lt!2636992 (choose!58218 z!556 lambda!465793))))

(assert (=> d!2305838 (= (exists!4881 z!556 lambda!465793) lt!2636992)))

(declare-fun bs!1938799 () Bool)

(assert (= bs!1938799 d!2305838))

(assert (=> bs!1938799 m!8092936))

(assert (=> bs!1938799 m!8092936))

(declare-fun m!8092968 () Bool)

(assert (=> bs!1938799 m!8092968))

(declare-fun m!8092970 () Bool)

(assert (=> bs!1938799 m!8092970))

(assert (=> b!7508935 d!2305838))

(declare-fun bs!1938800 () Bool)

(declare-fun d!2305840 () Bool)

(assert (= bs!1938800 (and d!2305840 start!727232)))

(declare-fun lambda!465813 () Int)

(assert (=> bs!1938800 (not (= lambda!465813 lambda!465792))))

(declare-fun bs!1938801 () Bool)

(assert (= bs!1938801 (and d!2305840 b!7508935)))

(assert (=> bs!1938801 (not (= lambda!465813 lambda!465793))))

(declare-fun bs!1938802 () Bool)

(assert (= bs!1938802 (and d!2305840 d!2305836)))

(assert (=> bs!1938802 (not (= lambda!465813 lambda!465810))))

(assert (=> d!2305840 true))

(declare-fun order!29665 () Int)

(declare-fun dynLambda!29793 (Int Int) Int)

(assert (=> d!2305840 (< (dynLambda!29793 order!29665 lambda!465793) (dynLambda!29793 order!29665 lambda!465813))))

(declare-fun forall!18327 (List!72561 Int) Bool)

(assert (=> d!2305840 (= (exists!4882 lt!2636979 lambda!465793) (not (forall!18327 lt!2636979 lambda!465813)))))

(declare-fun bs!1938803 () Bool)

(assert (= bs!1938803 d!2305840))

(declare-fun m!8092972 () Bool)

(assert (=> bs!1938803 m!8092972))

(assert (=> b!7508935 d!2305840))

(declare-fun bs!1938804 () Bool)

(declare-fun d!2305842 () Bool)

(assert (= bs!1938804 (and d!2305842 start!727232)))

(declare-fun lambda!465816 () Int)

(assert (=> bs!1938804 (not (= lambda!465816 lambda!465792))))

(declare-fun bs!1938805 () Bool)

(assert (= bs!1938805 (and d!2305842 b!7508935)))

(assert (=> bs!1938805 (not (= lambda!465816 lambda!465793))))

(declare-fun bs!1938806 () Bool)

(assert (= bs!1938806 (and d!2305842 d!2305836)))

(assert (=> bs!1938806 (not (= lambda!465816 lambda!465810))))

(declare-fun bs!1938807 () Bool)

(assert (= bs!1938807 (and d!2305842 d!2305840)))

(assert (=> bs!1938807 (= (= lambda!465792 lambda!465793) (= lambda!465816 lambda!465813))))

(assert (=> d!2305842 true))

(assert (=> d!2305842 (< (dynLambda!29793 order!29665 lambda!465792) (dynLambda!29793 order!29665 lambda!465816))))

(assert (=> d!2305842 (exists!4882 lt!2636979 lambda!465816)))

(declare-fun lt!2636995 () Unit!166482)

(declare-fun choose!58219 (List!72561 Int) Unit!166482)

(assert (=> d!2305842 (= lt!2636995 (choose!58219 lt!2636979 lambda!465792))))

(assert (=> d!2305842 (not (forall!18327 lt!2636979 lambda!465792))))

(assert (=> d!2305842 (= (lemmaNotForallThenExists!512 lt!2636979 lambda!465792) lt!2636995)))

(declare-fun bs!1938808 () Bool)

(assert (= bs!1938808 d!2305842))

(declare-fun m!8092974 () Bool)

(assert (=> bs!1938808 m!8092974))

(declare-fun m!8092976 () Bool)

(assert (=> bs!1938808 m!8092976))

(declare-fun m!8092978 () Bool)

(assert (=> bs!1938808 m!8092978))

(assert (=> b!7508935 d!2305842))

(declare-fun d!2305846 () Bool)

(declare-fun e!4477464 () Bool)

(assert (=> d!2305846 e!4477464))

(declare-fun res!3012537 () Bool)

(assert (=> d!2305846 (=> (not res!3012537) (not e!4477464))))

(declare-fun lt!2636998 () List!72561)

(declare-fun noDuplicate!3151 (List!72561) Bool)

(assert (=> d!2305846 (= res!3012537 (noDuplicate!3151 lt!2636998))))

(declare-fun choose!58220 ((Set Context!16956)) List!72561)

(assert (=> d!2305846 (= lt!2636998 (choose!58220 z!556))))

(assert (=> d!2305846 (= (toList!11845 z!556) lt!2636998)))

(declare-fun b!7508956 () Bool)

(declare-fun content!15320 (List!72561) (Set Context!16956))

(assert (=> b!7508956 (= e!4477464 (= (content!15320 lt!2636998) z!556))))

(assert (= (and d!2305846 res!3012537) b!7508956))

(declare-fun m!8092980 () Bool)

(assert (=> d!2305846 m!8092980))

(declare-fun m!8092982 () Bool)

(assert (=> d!2305846 m!8092982))

(declare-fun m!8092984 () Bool)

(assert (=> b!7508956 m!8092984))

(assert (=> b!7508935 d!2305846))

(declare-fun d!2305848 () Bool)

(declare-fun lambda!465819 () Int)

(declare-fun forall!18328 (List!72559 Int) Bool)

(assert (=> d!2305848 (= (inv!92546 setElem!57107) (forall!18328 (exprs!8978 setElem!57107) lambda!465819))))

(declare-fun bs!1938810 () Bool)

(assert (= bs!1938810 d!2305848))

(declare-fun m!8092990 () Bool)

(assert (=> bs!1938810 m!8092990))

(assert (=> setNonEmpty!57107 d!2305848))

(declare-fun d!2305852 () Bool)

(declare-fun lt!2637004 () Bool)

(assert (=> d!2305852 (= lt!2637004 (forall!18327 (toList!11845 z!556) lambda!465792))))

(declare-fun choose!58221 ((Set Context!16956) Int) Bool)

(assert (=> d!2305852 (= lt!2637004 (choose!58221 z!556 lambda!465792))))

(assert (=> d!2305852 (= (forall!18325 z!556 lambda!465792) lt!2637004)))

(declare-fun bs!1938811 () Bool)

(assert (= bs!1938811 d!2305852))

(assert (=> bs!1938811 m!8092936))

(assert (=> bs!1938811 m!8092936))

(declare-fun m!8092992 () Bool)

(assert (=> bs!1938811 m!8092992))

(declare-fun m!8092994 () Bool)

(assert (=> bs!1938811 m!8092994))

(assert (=> start!727232 d!2305852))

(declare-fun b!7508961 () Bool)

(declare-fun e!4477467 () Bool)

(declare-fun tp!2179436 () Bool)

(declare-fun tp!2179437 () Bool)

(assert (=> b!7508961 (= e!4477467 (and tp!2179436 tp!2179437))))

(assert (=> b!7508936 (= tp!2179425 e!4477467)))

(assert (= (and b!7508936 (is-Cons!72435 (exprs!8978 setElem!57107))) b!7508961))

(declare-fun condSetEmpty!57113 () Bool)

(assert (=> setNonEmpty!57107 (= condSetEmpty!57113 (= setRest!57107 (as set.empty (Set Context!16956))))))

(declare-fun setRes!57113 () Bool)

(assert (=> setNonEmpty!57107 (= tp!2179424 setRes!57113)))

(declare-fun setIsEmpty!57113 () Bool)

(assert (=> setIsEmpty!57113 setRes!57113))

(declare-fun e!4477470 () Bool)

(declare-fun setNonEmpty!57113 () Bool)

(declare-fun setElem!57113 () Context!16956)

(declare-fun tp!2179443 () Bool)

(assert (=> setNonEmpty!57113 (= setRes!57113 (and tp!2179443 (inv!92546 setElem!57113) e!4477470))))

(declare-fun setRest!57113 () (Set Context!16956))

(assert (=> setNonEmpty!57113 (= setRest!57107 (set.union (set.insert setElem!57113 (as set.empty (Set Context!16956))) setRest!57113))))

(declare-fun b!7508966 () Bool)

(declare-fun tp!2179442 () Bool)

(assert (=> b!7508966 (= e!4477470 tp!2179442)))

(assert (= (and setNonEmpty!57107 condSetEmpty!57113) setIsEmpty!57113))

(assert (= (and setNonEmpty!57107 (not condSetEmpty!57113)) setNonEmpty!57113))

(assert (= setNonEmpty!57113 b!7508966))

(declare-fun m!8092996 () Bool)

(assert (=> setNonEmpty!57113 m!8092996))

(push 1)

(assert (not d!2305848))

(assert (not setNonEmpty!57113))

(assert (not b!7508966))

(assert (not d!2305846))

(assert (not b!7508956))

(assert (not d!2305838))

(assert (not b!7508950))

(assert (not d!2305836))

(assert (not d!2305842))

(assert (not d!2305834))

(assert (not d!2305852))

(assert (not d!2305840))

(assert (not b!7508961))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

