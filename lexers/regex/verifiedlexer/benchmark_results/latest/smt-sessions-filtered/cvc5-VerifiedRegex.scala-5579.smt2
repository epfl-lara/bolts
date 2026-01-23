; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!279758 () Bool)

(assert start!279758)

(declare-fun b!2866875 () Bool)

(declare-fun e!1814874 () Bool)

(declare-fun tp!922995 () Bool)

(assert (=> b!2866875 (= e!1814874 tp!922995)))

(declare-fun b!2866872 () Bool)

(declare-fun res!1190109 () Bool)

(declare-fun e!1814876 () Bool)

(assert (=> b!2866872 (=> (not res!1190109) (not e!1814876))))

(declare-datatypes ((C!17606 0))(
  ( (C!17607 (val!10837 Int)) )
))
(declare-datatypes ((Regex!8712 0))(
  ( (ElementMatch!8712 (c!463023 C!17606)) (Concat!14033 (regOne!17936 Regex!8712) (regTwo!17936 Regex!8712)) (EmptyExpr!8712) (Star!8712 (reg!9041 Regex!8712)) (EmptyLang!8712) (Union!8712 (regOne!17937 Regex!8712) (regTwo!17937 Regex!8712)) )
))
(declare-datatypes ((List!34449 0))(
  ( (Nil!34325) (Cons!34325 (h!39745 Regex!8712) (t!233492 List!34449)) )
))
(declare-datatypes ((Context!5344 0))(
  ( (Context!5345 (exprs!3172 List!34449)) )
))
(declare-fun c!7184 () Context!5344)

(assert (=> b!2866872 (= res!1190109 (not (is-Cons!34325 (exprs!3172 c!7184))))))

(declare-fun b!2866874 () Bool)

(declare-fun e!1814875 () Bool)

(declare-datatypes ((List!34450 0))(
  ( (Nil!34326) (Cons!34326 (h!39746 C!17606) (t!233493 List!34450)) )
))
(declare-datatypes ((Option!6389 0))(
  ( (None!6388) (Some!6388 (v!34510 List!34450)) )
))
(declare-fun isDefined!4995 (Option!6389) Bool)

(declare-fun getLanguageWitness!382 (Context!5344) Option!6389)

(assert (=> b!2866874 (= e!1814875 (not (isDefined!4995 (getLanguageWitness!382 c!7184))))))

(declare-fun lt!1017066 () (Set Context!5344))

(declare-fun matchZipper!468 ((Set Context!5344) List!34450) Bool)

(assert (=> b!2866874 (= (matchZipper!468 lt!1017066 Nil!34326) true)))

(declare-datatypes ((Unit!47941 0))(
  ( (Unit!47942) )
))
(declare-fun lt!1017067 () Unit!47941)

(declare-fun lemmaZipperOfEmptyContextMatchesEmptyString!1 ((Set Context!5344) List!34450) Unit!47941)

(assert (=> b!2866874 (= lt!1017067 (lemmaZipperOfEmptyContextMatchesEmptyString!1 lt!1017066 Nil!34326))))

(declare-fun b!2866873 () Bool)

(assert (=> b!2866873 (= e!1814876 e!1814875)))

(declare-fun res!1190108 () Bool)

(assert (=> b!2866873 (=> (not res!1190108) (not e!1814875))))

(assert (=> b!2866873 (= res!1190108 (= lt!1017066 (set.singleton (Context!5345 Nil!34325))))))

(assert (=> b!2866873 (= lt!1017066 (set.insert c!7184 (as set.empty (Set Context!5344))))))

(declare-fun res!1190110 () Bool)

(assert (=> start!279758 (=> (not res!1190110) (not e!1814876))))

(declare-fun lostCause!804 (Context!5344) Bool)

(assert (=> start!279758 (= res!1190110 (not (lostCause!804 c!7184)))))

(assert (=> start!279758 e!1814876))

(declare-fun inv!46368 (Context!5344) Bool)

(assert (=> start!279758 (and (inv!46368 c!7184) e!1814874)))

(assert (= (and start!279758 res!1190110) b!2866872))

(assert (= (and b!2866872 res!1190109) b!2866873))

(assert (= (and b!2866873 res!1190108) b!2866874))

(assert (= start!279758 b!2866875))

(declare-fun m!3287025 () Bool)

(assert (=> b!2866874 m!3287025))

(assert (=> b!2866874 m!3287025))

(declare-fun m!3287027 () Bool)

(assert (=> b!2866874 m!3287027))

(declare-fun m!3287029 () Bool)

(assert (=> b!2866874 m!3287029))

(declare-fun m!3287031 () Bool)

(assert (=> b!2866874 m!3287031))

(declare-fun m!3287033 () Bool)

(assert (=> b!2866873 m!3287033))

(declare-fun m!3287035 () Bool)

(assert (=> start!279758 m!3287035))

(declare-fun m!3287037 () Bool)

(assert (=> start!279758 m!3287037))

(push 1)

(assert (not b!2866874))

(assert (not start!279758))

(assert (not b!2866875))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!828832 () Bool)

(declare-fun isEmpty!18684 (Option!6389) Bool)

(assert (=> d!828832 (= (isDefined!4995 (getLanguageWitness!382 c!7184)) (not (isEmpty!18684 (getLanguageWitness!382 c!7184))))))

(declare-fun bs!521643 () Bool)

(assert (= bs!521643 d!828832))

(assert (=> bs!521643 m!3287025))

(declare-fun m!3287053 () Bool)

(assert (=> bs!521643 m!3287053))

(assert (=> b!2866874 d!828832))

(declare-fun b!2866900 () Bool)

(declare-fun e!1814892 () Option!6389)

(declare-fun e!1814894 () Option!6389)

(assert (=> b!2866900 (= e!1814892 e!1814894)))

(declare-fun lt!1017080 () Option!6389)

(declare-fun getLanguageWitness!384 (Regex!8712) Option!6389)

(assert (=> b!2866900 (= lt!1017080 (getLanguageWitness!384 (h!39745 (exprs!3172 c!7184))))))

(declare-fun c!463032 () Bool)

(assert (=> b!2866900 (= c!463032 (is-Some!6388 lt!1017080))))

(declare-fun b!2866901 () Bool)

(declare-fun e!1814893 () Option!6389)

(declare-fun lt!1017081 () Option!6389)

(declare-fun ++!8154 (List!34450 List!34450) List!34450)

(assert (=> b!2866901 (= e!1814893 (Some!6388 (++!8154 (v!34510 lt!1017080) (v!34510 lt!1017081))))))

(declare-fun b!2866902 () Bool)

(assert (=> b!2866902 (= e!1814893 None!6388)))

(declare-fun b!2866903 () Bool)

(assert (=> b!2866903 (= e!1814892 (Some!6388 Nil!34326))))

(declare-fun d!828834 () Bool)

(declare-fun lt!1017082 () Option!6389)

(declare-fun lambda!106833 () Int)

(declare-fun exists!1134 (List!34449 Int) Bool)

(assert (=> d!828834 (= (isEmpty!18684 lt!1017082) (exists!1134 (exprs!3172 c!7184) lambda!106833))))

(assert (=> d!828834 (= lt!1017082 e!1814892)))

(declare-fun c!463034 () Bool)

(assert (=> d!828834 (= c!463034 (is-Cons!34325 (exprs!3172 c!7184)))))

(assert (=> d!828834 (= (getLanguageWitness!382 c!7184) lt!1017082)))

(declare-fun b!2866904 () Bool)

(assert (=> b!2866904 (= e!1814894 None!6388)))

(declare-fun b!2866905 () Bool)

(declare-fun c!463033 () Bool)

(assert (=> b!2866905 (= c!463033 (is-Some!6388 lt!1017081))))

(assert (=> b!2866905 (= lt!1017081 (getLanguageWitness!382 (Context!5345 (t!233492 (exprs!3172 c!7184)))))))

(assert (=> b!2866905 (= e!1814894 e!1814893)))

(assert (= (and d!828834 c!463034) b!2866900))

(assert (= (and d!828834 (not c!463034)) b!2866903))

(assert (= (and b!2866900 c!463032) b!2866905))

(assert (= (and b!2866900 (not c!463032)) b!2866904))

(assert (= (and b!2866905 c!463033) b!2866901))

(assert (= (and b!2866905 (not c!463033)) b!2866902))

(declare-fun m!3287055 () Bool)

(assert (=> b!2866900 m!3287055))

(declare-fun m!3287057 () Bool)

(assert (=> b!2866901 m!3287057))

(declare-fun m!3287059 () Bool)

(assert (=> d!828834 m!3287059))

(declare-fun m!3287061 () Bool)

(assert (=> d!828834 m!3287061))

(declare-fun m!3287063 () Bool)

(assert (=> b!2866905 m!3287063))

(assert (=> b!2866874 d!828834))

(declare-fun d!828838 () Bool)

(declare-fun c!463037 () Bool)

(declare-fun isEmpty!18685 (List!34450) Bool)

(assert (=> d!828838 (= c!463037 (isEmpty!18685 Nil!34326))))

(declare-fun e!1814897 () Bool)

(assert (=> d!828838 (= (matchZipper!468 lt!1017066 Nil!34326) e!1814897)))

(declare-fun b!2866910 () Bool)

(declare-fun nullableZipper!707 ((Set Context!5344)) Bool)

(assert (=> b!2866910 (= e!1814897 (nullableZipper!707 lt!1017066))))

(declare-fun b!2866911 () Bool)

(declare-fun derivationStepZipper!463 ((Set Context!5344) C!17606) (Set Context!5344))

(declare-fun head!6328 (List!34450) C!17606)

(declare-fun tail!4553 (List!34450) List!34450)

(assert (=> b!2866911 (= e!1814897 (matchZipper!468 (derivationStepZipper!463 lt!1017066 (head!6328 Nil!34326)) (tail!4553 Nil!34326)))))

(assert (= (and d!828838 c!463037) b!2866910))

(assert (= (and d!828838 (not c!463037)) b!2866911))

(declare-fun m!3287065 () Bool)

(assert (=> d!828838 m!3287065))

(declare-fun m!3287067 () Bool)

(assert (=> b!2866910 m!3287067))

(declare-fun m!3287069 () Bool)

(assert (=> b!2866911 m!3287069))

(assert (=> b!2866911 m!3287069))

(declare-fun m!3287071 () Bool)

(assert (=> b!2866911 m!3287071))

(declare-fun m!3287073 () Bool)

(assert (=> b!2866911 m!3287073))

(assert (=> b!2866911 m!3287071))

(assert (=> b!2866911 m!3287073))

(declare-fun m!3287075 () Bool)

(assert (=> b!2866911 m!3287075))

(assert (=> b!2866874 d!828838))

(declare-fun d!828840 () Bool)

(assert (=> d!828840 (= (matchZipper!468 lt!1017066 Nil!34326) (isEmpty!18685 Nil!34326))))

(declare-fun lt!1017085 () Unit!47941)

(declare-fun choose!16955 ((Set Context!5344) List!34450) Unit!47941)

(assert (=> d!828840 (= lt!1017085 (choose!16955 lt!1017066 Nil!34326))))

(assert (=> d!828840 (= lt!1017066 (set.singleton (Context!5345 Nil!34325)))))

(assert (=> d!828840 (= (lemmaZipperOfEmptyContextMatchesEmptyString!1 lt!1017066 Nil!34326) lt!1017085)))

(declare-fun bs!521644 () Bool)

(assert (= bs!521644 d!828840))

(assert (=> bs!521644 m!3287029))

(assert (=> bs!521644 m!3287065))

(declare-fun m!3287077 () Bool)

(assert (=> bs!521644 m!3287077))

(assert (=> b!2866874 d!828840))

(declare-fun bs!521646 () Bool)

(declare-fun d!828842 () Bool)

(assert (= bs!521646 (and d!828842 d!828834)))

(declare-fun lambda!106839 () Int)

(assert (=> bs!521646 (= lambda!106839 lambda!106833)))

(assert (=> d!828842 (= (lostCause!804 c!7184) (exists!1134 (exprs!3172 c!7184) lambda!106839))))

(declare-fun bs!521647 () Bool)

(assert (= bs!521647 d!828842))

(declare-fun m!3287081 () Bool)

(assert (=> bs!521647 m!3287081))

(assert (=> start!279758 d!828842))

(declare-fun bs!521648 () Bool)

(declare-fun d!828846 () Bool)

(assert (= bs!521648 (and d!828846 d!828834)))

(declare-fun lambda!106842 () Int)

(assert (=> bs!521648 (not (= lambda!106842 lambda!106833))))

(declare-fun bs!521649 () Bool)

(assert (= bs!521649 (and d!828846 d!828842)))

(assert (=> bs!521649 (not (= lambda!106842 lambda!106839))))

(declare-fun forall!7061 (List!34449 Int) Bool)

(assert (=> d!828846 (= (inv!46368 c!7184) (forall!7061 (exprs!3172 c!7184) lambda!106842))))

(declare-fun bs!521650 () Bool)

(assert (= bs!521650 d!828846))

(declare-fun m!3287083 () Bool)

(assert (=> bs!521650 m!3287083))

(assert (=> start!279758 d!828846))

(declare-fun b!2866916 () Bool)

(declare-fun e!1814900 () Bool)

(declare-fun tp!923003 () Bool)

(declare-fun tp!923004 () Bool)

(assert (=> b!2866916 (= e!1814900 (and tp!923003 tp!923004))))

(assert (=> b!2866875 (= tp!922995 e!1814900)))

(assert (= (and b!2866875 (is-Cons!34325 (exprs!3172 c!7184))) b!2866916))

(push 1)

(assert (not d!828832))

(assert (not d!828842))

(assert (not d!828846))

(assert (not b!2866911))

(assert (not d!828840))

(assert (not b!2866900))

(assert (not b!2866916))

(assert (not d!828838))

(assert (not b!2866905))

(assert (not b!2866901))

(assert (not d!828834))

(assert (not b!2866910))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

