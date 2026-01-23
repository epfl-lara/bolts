; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!542994 () Bool)

(assert start!542994)

(declare-fun b!5132849 () Bool)

(assert (=> b!5132849 true))

(declare-fun b!5132848 () Bool)

(declare-fun res!2186173 () Bool)

(declare-fun e!3201429 () Bool)

(assert (=> b!5132848 (=> (not res!2186173) (not e!3201429))))

(declare-datatypes ((C!28994 0))(
  ( (C!28995 (val!24149 Int)) )
))
(declare-datatypes ((Regex!14364 0))(
  ( (ElementMatch!14364 (c!883309 C!28994)) (Concat!23209 (regOne!29240 Regex!14364) (regTwo!29240 Regex!14364)) (EmptyExpr!14364) (Star!14364 (reg!14693 Regex!14364)) (EmptyLang!14364) (Union!14364 (regOne!29241 Regex!14364) (regTwo!29241 Regex!14364)) )
))
(declare-datatypes ((List!59671 0))(
  ( (Nil!59547) (Cons!59547 (h!65995 Regex!14364) (t!372698 List!59671)) )
))
(declare-datatypes ((Context!7496 0))(
  ( (Context!7497 (exprs!4248 List!59671)) )
))
(declare-fun lt!2118105 () (Set Context!7496))

(declare-fun lambda!255106 () Int)

(declare-fun forall!13812 ((Set Context!7496) Int) Bool)

(assert (=> b!5132848 (= res!2186173 (not (forall!13812 lt!2118105 lambda!255106)))))

(declare-fun e!3201432 () Bool)

(declare-fun e!3201430 () Bool)

(assert (=> b!5132849 (= e!3201432 e!3201430)))

(declare-fun res!2186175 () Bool)

(assert (=> b!5132849 (=> (not res!2186175) (not e!3201430))))

(declare-fun lambda!255105 () Int)

(declare-fun z!1054 () (Set Context!7496))

(declare-fun flatMap!415 ((Set Context!7496) Int) (Set Context!7496))

(assert (=> b!5132849 (= res!2186175 (= lt!2118105 (flatMap!415 z!1054 lambda!255105)))))

(declare-fun a!1233 () C!28994)

(declare-fun derivationStepZipper!919 ((Set Context!7496) C!28994) (Set Context!7496))

(assert (=> b!5132849 (= lt!2118105 (derivationStepZipper!919 z!1054 a!1233))))

(declare-fun b!5132850 () Bool)

(declare-fun res!2186178 () Bool)

(assert (=> b!5132850 (=> (not res!2186178) (not e!3201429))))

(assert (=> b!5132850 (= res!2186178 (forall!13812 z!1054 lambda!255106))))

(declare-fun setIsEmpty!31209 () Bool)

(declare-fun setRes!31209 () Bool)

(assert (=> setIsEmpty!31209 setRes!31209))

(declare-fun tp!1431854 () Bool)

(declare-fun setElem!31209 () Context!7496)

(declare-fun setNonEmpty!31209 () Bool)

(declare-fun e!3201431 () Bool)

(declare-fun inv!79092 (Context!7496) Bool)

(assert (=> setNonEmpty!31209 (= setRes!31209 (and tp!1431854 (inv!79092 setElem!31209) e!3201431))))

(declare-fun setRest!31209 () (Set Context!7496))

(assert (=> setNonEmpty!31209 (= z!1054 (set.union (set.insert setElem!31209 (as set.empty (Set Context!7496))) setRest!31209))))

(declare-fun b!5132851 () Bool)

(declare-fun res!2186177 () Bool)

(assert (=> b!5132851 (=> (not res!2186177) (not e!3201429))))

(declare-fun lt!2118104 () Bool)

(assert (=> b!5132851 (= res!2186177 (not lt!2118104))))

(declare-fun b!5132852 () Bool)

(declare-fun tp!1431855 () Bool)

(assert (=> b!5132852 (= e!3201431 tp!1431855)))

(declare-fun res!2186176 () Bool)

(assert (=> start!542994 (=> (not res!2186176) (not e!3201432))))

(declare-fun lostCauseZipper!1208 ((Set Context!7496)) Bool)

(assert (=> start!542994 (= res!2186176 (lostCauseZipper!1208 z!1054))))

(assert (=> start!542994 e!3201432))

(declare-fun condSetEmpty!31209 () Bool)

(assert (=> start!542994 (= condSetEmpty!31209 (= z!1054 (as set.empty (Set Context!7496))))))

(assert (=> start!542994 setRes!31209))

(declare-fun tp_is_empty!37901 () Bool)

(assert (=> start!542994 tp_is_empty!37901))

(declare-fun b!5132853 () Bool)

(declare-datatypes ((List!59672 0))(
  ( (Nil!59548) (Cons!59548 (h!65996 Context!7496) (t!372699 List!59672)) )
))
(declare-fun forall!13813 (List!59672 Int) Bool)

(declare-fun toList!8349 ((Set Context!7496)) List!59672)

(assert (=> b!5132853 (= e!3201429 (forall!13813 (toList!8349 lt!2118105) lambda!255106))))

(declare-fun b!5132854 () Bool)

(assert (=> b!5132854 (= e!3201430 e!3201429)))

(declare-fun res!2186174 () Bool)

(assert (=> b!5132854 (=> (not res!2186174) (not e!3201429))))

(assert (=> b!5132854 (= res!2186174 (= lt!2118104 (forall!13812 lt!2118105 lambda!255106)))))

(assert (=> b!5132854 (= lt!2118104 (lostCauseZipper!1208 lt!2118105))))

(assert (= (and start!542994 res!2186176) b!5132849))

(assert (= (and b!5132849 res!2186175) b!5132854))

(assert (= (and b!5132854 res!2186174) b!5132850))

(assert (= (and b!5132850 res!2186178) b!5132851))

(assert (= (and b!5132851 res!2186177) b!5132848))

(assert (= (and b!5132848 res!2186173) b!5132853))

(assert (= (and start!542994 condSetEmpty!31209) setIsEmpty!31209))

(assert (= (and start!542994 (not condSetEmpty!31209)) setNonEmpty!31209))

(assert (= setNonEmpty!31209 b!5132852))

(declare-fun m!6198782 () Bool)

(assert (=> setNonEmpty!31209 m!6198782))

(declare-fun m!6198784 () Bool)

(assert (=> b!5132850 m!6198784))

(declare-fun m!6198786 () Bool)

(assert (=> b!5132854 m!6198786))

(declare-fun m!6198788 () Bool)

(assert (=> b!5132854 m!6198788))

(declare-fun m!6198790 () Bool)

(assert (=> b!5132849 m!6198790))

(declare-fun m!6198792 () Bool)

(assert (=> b!5132849 m!6198792))

(declare-fun m!6198794 () Bool)

(assert (=> start!542994 m!6198794))

(declare-fun m!6198796 () Bool)

(assert (=> b!5132853 m!6198796))

(assert (=> b!5132853 m!6198796))

(declare-fun m!6198798 () Bool)

(assert (=> b!5132853 m!6198798))

(assert (=> b!5132848 m!6198786))

(push 1)

(assert (not b!5132854))

(assert (not b!5132853))

(assert (not b!5132850))

(assert (not b!5132852))

(assert (not b!5132848))

(assert (not setNonEmpty!31209))

(assert tp_is_empty!37901)

(assert (not b!5132849))

(assert (not start!542994))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1660944 () Bool)

(declare-fun lambda!255121 () Int)

(declare-fun forall!13816 (List!59671 Int) Bool)

(assert (=> d!1660944 (= (inv!79092 setElem!31209) (forall!13816 (exprs!4248 setElem!31209) lambda!255121))))

(declare-fun bs!1198910 () Bool)

(assert (= bs!1198910 d!1660944))

(declare-fun m!6198818 () Bool)

(assert (=> bs!1198910 m!6198818))

(assert (=> setNonEmpty!31209 d!1660944))

(declare-fun d!1660946 () Bool)

(declare-fun lt!2118114 () Bool)

(assert (=> d!1660946 (= lt!2118114 (forall!13813 (toList!8349 lt!2118105) lambda!255106))))

(declare-fun choose!37933 ((Set Context!7496) Int) Bool)

(assert (=> d!1660946 (= lt!2118114 (choose!37933 lt!2118105 lambda!255106))))

(assert (=> d!1660946 (= (forall!13812 lt!2118105 lambda!255106) lt!2118114)))

(declare-fun bs!1198911 () Bool)

(assert (= bs!1198911 d!1660946))

(assert (=> bs!1198911 m!6198796))

(assert (=> bs!1198911 m!6198796))

(assert (=> bs!1198911 m!6198798))

(declare-fun m!6198820 () Bool)

(assert (=> bs!1198911 m!6198820))

(assert (=> b!5132854 d!1660946))

(declare-fun bs!1198916 () Bool)

(declare-fun d!1660948 () Bool)

(assert (= bs!1198916 (and d!1660948 b!5132854)))

(declare-fun lambda!255137 () Int)

(assert (=> bs!1198916 (= lambda!255137 lambda!255106)))

(declare-fun bs!1198917 () Bool)

(declare-fun b!5132884 () Bool)

(assert (= bs!1198917 (and b!5132884 b!5132854)))

(declare-fun lambda!255138 () Int)

(assert (=> bs!1198917 (not (= lambda!255138 lambda!255106))))

(declare-fun bs!1198918 () Bool)

(assert (= bs!1198918 (and b!5132884 d!1660948)))

(assert (=> bs!1198918 (not (= lambda!255138 lambda!255137))))

(declare-fun bs!1198919 () Bool)

(declare-fun b!5132885 () Bool)

(assert (= bs!1198919 (and b!5132885 b!5132854)))

(declare-fun lambda!255139 () Int)

(assert (=> bs!1198919 (not (= lambda!255139 lambda!255106))))

(declare-fun bs!1198920 () Bool)

(assert (= bs!1198920 (and b!5132885 d!1660948)))

(assert (=> bs!1198920 (not (= lambda!255139 lambda!255137))))

(declare-fun bs!1198921 () Bool)

(assert (= bs!1198921 (and b!5132885 b!5132884)))

(assert (=> bs!1198921 (= lambda!255139 lambda!255138)))

(declare-fun bm!357279 () Bool)

(declare-fun call!357284 () List!59672)

(assert (=> bm!357279 (= call!357284 (toList!8349 lt!2118105))))

(declare-fun lt!2118141 () List!59672)

(declare-fun lt!2118140 () List!59672)

(declare-fun bm!357280 () Bool)

(declare-fun c!883329 () Bool)

(declare-fun call!357285 () Bool)

(declare-fun exists!1692 (List!59672 Int) Bool)

(assert (=> bm!357280 (= call!357285 (exists!1692 (ite c!883329 lt!2118141 lt!2118140) (ite c!883329 lambda!255138 lambda!255139)))))

(declare-fun lt!2118136 () Bool)

(declare-datatypes ((List!59675 0))(
  ( (Nil!59551) (Cons!59551 (h!65999 C!28994) (t!372702 List!59675)) )
))
(declare-datatypes ((Option!14746 0))(
  ( (None!14745) (Some!14745 (v!50774 List!59675)) )
))
(declare-fun isEmpty!32007 (Option!14746) Bool)

(declare-fun getLanguageWitness!883 ((Set Context!7496)) Option!14746)

(assert (=> d!1660948 (= lt!2118136 (isEmpty!32007 (getLanguageWitness!883 lt!2118105)))))

(assert (=> d!1660948 (= lt!2118136 (forall!13812 lt!2118105 lambda!255137))))

(declare-datatypes ((Unit!150859 0))(
  ( (Unit!150860) )
))
(declare-fun lt!2118138 () Unit!150859)

(declare-fun e!3201451 () Unit!150859)

(assert (=> d!1660948 (= lt!2118138 e!3201451)))

(assert (=> d!1660948 (= c!883329 (not (forall!13812 lt!2118105 lambda!255137)))))

(assert (=> d!1660948 (= (lostCauseZipper!1208 lt!2118105) lt!2118136)))

(declare-fun Unit!150861 () Unit!150859)

(assert (=> b!5132884 (= e!3201451 Unit!150861)))

(assert (=> b!5132884 (= lt!2118141 call!357284)))

(declare-fun lt!2118137 () Unit!150859)

(declare-fun lemmaNotForallThenExists!397 (List!59672 Int) Unit!150859)

(assert (=> b!5132884 (= lt!2118137 (lemmaNotForallThenExists!397 lt!2118141 lambda!255137))))

(assert (=> b!5132884 call!357285))

(declare-fun lt!2118135 () Unit!150859)

(assert (=> b!5132884 (= lt!2118135 lt!2118137)))

(declare-fun Unit!150862 () Unit!150859)

(assert (=> b!5132885 (= e!3201451 Unit!150862)))

(assert (=> b!5132885 (= lt!2118140 call!357284)))

(declare-fun lt!2118134 () Unit!150859)

(declare-fun lemmaForallThenNotExists!368 (List!59672 Int) Unit!150859)

(assert (=> b!5132885 (= lt!2118134 (lemmaForallThenNotExists!368 lt!2118140 lambda!255137))))

(assert (=> b!5132885 (not call!357285)))

(declare-fun lt!2118139 () Unit!150859)

(assert (=> b!5132885 (= lt!2118139 lt!2118134)))

(assert (= (and d!1660948 c!883329) b!5132884))

(assert (= (and d!1660948 (not c!883329)) b!5132885))

(assert (= (or b!5132884 b!5132885) bm!357279))

(assert (= (or b!5132884 b!5132885) bm!357280))

(declare-fun m!6198828 () Bool)

(assert (=> b!5132884 m!6198828))

(declare-fun m!6198830 () Bool)

(assert (=> d!1660948 m!6198830))

(assert (=> d!1660948 m!6198830))

(declare-fun m!6198832 () Bool)

(assert (=> d!1660948 m!6198832))

(declare-fun m!6198834 () Bool)

(assert (=> d!1660948 m!6198834))

(assert (=> d!1660948 m!6198834))

(assert (=> bm!357279 m!6198796))

(declare-fun m!6198836 () Bool)

(assert (=> b!5132885 m!6198836))

(declare-fun m!6198838 () Bool)

(assert (=> bm!357280 m!6198838))

(assert (=> b!5132854 d!1660948))

(declare-fun bs!1198922 () Bool)

(declare-fun d!1660958 () Bool)

(assert (= bs!1198922 (and d!1660958 b!5132854)))

(declare-fun lambda!255140 () Int)

(assert (=> bs!1198922 (= lambda!255140 lambda!255106)))

(declare-fun bs!1198923 () Bool)

(assert (= bs!1198923 (and d!1660958 d!1660948)))

(assert (=> bs!1198923 (= lambda!255140 lambda!255137)))

(declare-fun bs!1198924 () Bool)

(assert (= bs!1198924 (and d!1660958 b!5132884)))

(assert (=> bs!1198924 (not (= lambda!255140 lambda!255138))))

(declare-fun bs!1198925 () Bool)

(assert (= bs!1198925 (and d!1660958 b!5132885)))

(assert (=> bs!1198925 (not (= lambda!255140 lambda!255139))))

(declare-fun bs!1198926 () Bool)

(declare-fun b!5132886 () Bool)

(assert (= bs!1198926 (and b!5132886 d!1660948)))

(declare-fun lambda!255141 () Int)

(assert (=> bs!1198926 (not (= lambda!255141 lambda!255137))))

(declare-fun bs!1198927 () Bool)

(assert (= bs!1198927 (and b!5132886 d!1660958)))

(assert (=> bs!1198927 (not (= lambda!255141 lambda!255140))))

(declare-fun bs!1198928 () Bool)

(assert (= bs!1198928 (and b!5132886 b!5132884)))

(assert (=> bs!1198928 (= lambda!255141 lambda!255138)))

(declare-fun bs!1198929 () Bool)

(assert (= bs!1198929 (and b!5132886 b!5132885)))

(assert (=> bs!1198929 (= lambda!255141 lambda!255139)))

(declare-fun bs!1198930 () Bool)

(assert (= bs!1198930 (and b!5132886 b!5132854)))

(assert (=> bs!1198930 (not (= lambda!255141 lambda!255106))))

(declare-fun bs!1198931 () Bool)

(declare-fun b!5132887 () Bool)

(assert (= bs!1198931 (and b!5132887 d!1660948)))

(declare-fun lambda!255142 () Int)

(assert (=> bs!1198931 (not (= lambda!255142 lambda!255137))))

(declare-fun bs!1198932 () Bool)

(assert (= bs!1198932 (and b!5132887 b!5132886)))

(assert (=> bs!1198932 (= lambda!255142 lambda!255141)))

(declare-fun bs!1198933 () Bool)

(assert (= bs!1198933 (and b!5132887 d!1660958)))

(assert (=> bs!1198933 (not (= lambda!255142 lambda!255140))))

(declare-fun bs!1198934 () Bool)

(assert (= bs!1198934 (and b!5132887 b!5132884)))

(assert (=> bs!1198934 (= lambda!255142 lambda!255138)))

(declare-fun bs!1198935 () Bool)

(assert (= bs!1198935 (and b!5132887 b!5132885)))

(assert (=> bs!1198935 (= lambda!255142 lambda!255139)))

(declare-fun bs!1198936 () Bool)

(assert (= bs!1198936 (and b!5132887 b!5132854)))

(assert (=> bs!1198936 (not (= lambda!255142 lambda!255106))))

(declare-fun bm!357281 () Bool)

(declare-fun call!357286 () List!59672)

(assert (=> bm!357281 (= call!357286 (toList!8349 z!1054))))

(declare-fun lt!2118149 () List!59672)

(declare-fun c!883330 () Bool)

(declare-fun bm!357282 () Bool)

(declare-fun lt!2118148 () List!59672)

(declare-fun call!357287 () Bool)

(assert (=> bm!357282 (= call!357287 (exists!1692 (ite c!883330 lt!2118149 lt!2118148) (ite c!883330 lambda!255141 lambda!255142)))))

(declare-fun lt!2118144 () Bool)

(assert (=> d!1660958 (= lt!2118144 (isEmpty!32007 (getLanguageWitness!883 z!1054)))))

(assert (=> d!1660958 (= lt!2118144 (forall!13812 z!1054 lambda!255140))))

(declare-fun lt!2118146 () Unit!150859)

(declare-fun e!3201452 () Unit!150859)

(assert (=> d!1660958 (= lt!2118146 e!3201452)))

(assert (=> d!1660958 (= c!883330 (not (forall!13812 z!1054 lambda!255140)))))

(assert (=> d!1660958 (= (lostCauseZipper!1208 z!1054) lt!2118144)))

(declare-fun Unit!150863 () Unit!150859)

(assert (=> b!5132886 (= e!3201452 Unit!150863)))

(assert (=> b!5132886 (= lt!2118149 call!357286)))

(declare-fun lt!2118145 () Unit!150859)

(assert (=> b!5132886 (= lt!2118145 (lemmaNotForallThenExists!397 lt!2118149 lambda!255140))))

(assert (=> b!5132886 call!357287))

(declare-fun lt!2118143 () Unit!150859)

(assert (=> b!5132886 (= lt!2118143 lt!2118145)))

(declare-fun Unit!150864 () Unit!150859)

(assert (=> b!5132887 (= e!3201452 Unit!150864)))

(assert (=> b!5132887 (= lt!2118148 call!357286)))

(declare-fun lt!2118142 () Unit!150859)

(assert (=> b!5132887 (= lt!2118142 (lemmaForallThenNotExists!368 lt!2118148 lambda!255140))))

(assert (=> b!5132887 (not call!357287)))

(declare-fun lt!2118147 () Unit!150859)

(assert (=> b!5132887 (= lt!2118147 lt!2118142)))

(assert (= (and d!1660958 c!883330) b!5132886))

(assert (= (and d!1660958 (not c!883330)) b!5132887))

(assert (= (or b!5132886 b!5132887) bm!357281))

(assert (= (or b!5132886 b!5132887) bm!357282))

(declare-fun m!6198840 () Bool)

(assert (=> b!5132886 m!6198840))

(declare-fun m!6198842 () Bool)

(assert (=> d!1660958 m!6198842))

(assert (=> d!1660958 m!6198842))

(declare-fun m!6198844 () Bool)

(assert (=> d!1660958 m!6198844))

(declare-fun m!6198846 () Bool)

(assert (=> d!1660958 m!6198846))

(assert (=> d!1660958 m!6198846))

(declare-fun m!6198848 () Bool)

(assert (=> bm!357281 m!6198848))

(declare-fun m!6198850 () Bool)

(assert (=> b!5132887 m!6198850))

(declare-fun m!6198852 () Bool)

(assert (=> bm!357282 m!6198852))

(assert (=> start!542994 d!1660958))

(declare-fun d!1660960 () Bool)

(declare-fun choose!37934 ((Set Context!7496) Int) (Set Context!7496))

(assert (=> d!1660960 (= (flatMap!415 z!1054 lambda!255105) (choose!37934 z!1054 lambda!255105))))

(declare-fun bs!1198937 () Bool)

(assert (= bs!1198937 d!1660960))

(declare-fun m!6198854 () Bool)

(assert (=> bs!1198937 m!6198854))

(assert (=> b!5132849 d!1660960))

(declare-fun bs!1198938 () Bool)

(declare-fun d!1660962 () Bool)

(assert (= bs!1198938 (and d!1660962 b!5132849)))

(declare-fun lambda!255147 () Int)

(assert (=> bs!1198938 (= lambda!255147 lambda!255105)))

(assert (=> d!1660962 true))

(assert (=> d!1660962 (= (derivationStepZipper!919 z!1054 a!1233) (flatMap!415 z!1054 lambda!255147))))

(declare-fun bs!1198939 () Bool)

(assert (= bs!1198939 d!1660962))

(declare-fun m!6198856 () Bool)

(assert (=> bs!1198939 m!6198856))

(assert (=> b!5132849 d!1660962))

(declare-fun d!1660964 () Bool)

(declare-fun lt!2118150 () Bool)

(assert (=> d!1660964 (= lt!2118150 (forall!13813 (toList!8349 z!1054) lambda!255106))))

(assert (=> d!1660964 (= lt!2118150 (choose!37933 z!1054 lambda!255106))))

(assert (=> d!1660964 (= (forall!13812 z!1054 lambda!255106) lt!2118150)))

(declare-fun bs!1198940 () Bool)

(assert (= bs!1198940 d!1660964))

(assert (=> bs!1198940 m!6198848))

(assert (=> bs!1198940 m!6198848))

(declare-fun m!6198858 () Bool)

(assert (=> bs!1198940 m!6198858))

(declare-fun m!6198860 () Bool)

(assert (=> bs!1198940 m!6198860))

(assert (=> b!5132850 d!1660964))

(declare-fun d!1660966 () Bool)

(declare-fun res!2186201 () Bool)

(declare-fun e!3201457 () Bool)

(assert (=> d!1660966 (=> res!2186201 e!3201457)))

(assert (=> d!1660966 (= res!2186201 (is-Nil!59548 (toList!8349 lt!2118105)))))

(assert (=> d!1660966 (= (forall!13813 (toList!8349 lt!2118105) lambda!255106) e!3201457)))

(declare-fun b!5132892 () Bool)

(declare-fun e!3201458 () Bool)

(assert (=> b!5132892 (= e!3201457 e!3201458)))

(declare-fun res!2186202 () Bool)

(assert (=> b!5132892 (=> (not res!2186202) (not e!3201458))))

(declare-fun dynLambda!23713 (Int Context!7496) Bool)

(assert (=> b!5132892 (= res!2186202 (dynLambda!23713 lambda!255106 (h!65996 (toList!8349 lt!2118105))))))

(declare-fun b!5132893 () Bool)

(assert (=> b!5132893 (= e!3201458 (forall!13813 (t!372699 (toList!8349 lt!2118105)) lambda!255106))))

(assert (= (and d!1660966 (not res!2186201)) b!5132892))

(assert (= (and b!5132892 res!2186202) b!5132893))

(declare-fun b_lambda!199941 () Bool)

(assert (=> (not b_lambda!199941) (not b!5132892)))

(declare-fun m!6198870 () Bool)

(assert (=> b!5132892 m!6198870))

(declare-fun m!6198872 () Bool)

(assert (=> b!5132893 m!6198872))

(assert (=> b!5132853 d!1660966))

(declare-fun d!1660972 () Bool)

(declare-fun e!3201461 () Bool)

(assert (=> d!1660972 e!3201461))

(declare-fun res!2186205 () Bool)

(assert (=> d!1660972 (=> (not res!2186205) (not e!3201461))))

(declare-fun lt!2118154 () List!59672)

(declare-fun noDuplicate!1100 (List!59672) Bool)

(assert (=> d!1660972 (= res!2186205 (noDuplicate!1100 lt!2118154))))

(declare-fun choose!37935 ((Set Context!7496)) List!59672)

(assert (=> d!1660972 (= lt!2118154 (choose!37935 lt!2118105))))

(assert (=> d!1660972 (= (toList!8349 lt!2118105) lt!2118154)))

(declare-fun b!5132896 () Bool)

(declare-fun content!10577 (List!59672) (Set Context!7496))

(assert (=> b!5132896 (= e!3201461 (= (content!10577 lt!2118154) lt!2118105))))

(assert (= (and d!1660972 res!2186205) b!5132896))

(declare-fun m!6198874 () Bool)

(assert (=> d!1660972 m!6198874))

(declare-fun m!6198876 () Bool)

(assert (=> d!1660972 m!6198876))

(declare-fun m!6198878 () Bool)

(assert (=> b!5132896 m!6198878))

(assert (=> b!5132853 d!1660972))

(assert (=> b!5132848 d!1660946))

(declare-fun condSetEmpty!31215 () Bool)

(assert (=> setNonEmpty!31209 (= condSetEmpty!31215 (= setRest!31209 (as set.empty (Set Context!7496))))))

(declare-fun setRes!31215 () Bool)

(assert (=> setNonEmpty!31209 (= tp!1431854 setRes!31215)))

(declare-fun setIsEmpty!31215 () Bool)

(assert (=> setIsEmpty!31215 setRes!31215))

(declare-fun setNonEmpty!31215 () Bool)

(declare-fun setElem!31215 () Context!7496)

(declare-fun tp!1431866 () Bool)

(declare-fun e!3201464 () Bool)

(assert (=> setNonEmpty!31215 (= setRes!31215 (and tp!1431866 (inv!79092 setElem!31215) e!3201464))))

(declare-fun setRest!31215 () (Set Context!7496))

(assert (=> setNonEmpty!31215 (= setRest!31209 (set.union (set.insert setElem!31215 (as set.empty (Set Context!7496))) setRest!31215))))

(declare-fun b!5132901 () Bool)

(declare-fun tp!1431867 () Bool)

(assert (=> b!5132901 (= e!3201464 tp!1431867)))

(assert (= (and setNonEmpty!31209 condSetEmpty!31215) setIsEmpty!31215))

(assert (= (and setNonEmpty!31209 (not condSetEmpty!31215)) setNonEmpty!31215))

(assert (= setNonEmpty!31215 b!5132901))

(declare-fun m!6198880 () Bool)

(assert (=> setNonEmpty!31215 m!6198880))

(declare-fun b!5132906 () Bool)

(declare-fun e!3201467 () Bool)

(declare-fun tp!1431872 () Bool)

(declare-fun tp!1431873 () Bool)

(assert (=> b!5132906 (= e!3201467 (and tp!1431872 tp!1431873))))

(assert (=> b!5132852 (= tp!1431855 e!3201467)))

(assert (= (and b!5132852 (is-Cons!59547 (exprs!4248 setElem!31209))) b!5132906))

(declare-fun b_lambda!199943 () Bool)

(assert (= b_lambda!199941 (or b!5132854 b_lambda!199943)))

(declare-fun bs!1198943 () Bool)

(declare-fun d!1660974 () Bool)

(assert (= bs!1198943 (and d!1660974 b!5132854)))

(declare-fun lostCause!1307 (Context!7496) Bool)

(assert (=> bs!1198943 (= (dynLambda!23713 lambda!255106 (h!65996 (toList!8349 lt!2118105))) (lostCause!1307 (h!65996 (toList!8349 lt!2118105))))))

(declare-fun m!6198882 () Bool)

(assert (=> bs!1198943 m!6198882))

(assert (=> b!5132892 d!1660974))

(push 1)

(assert (not b!5132906))

(assert (not d!1660946))

(assert (not d!1660964))

(assert (not bm!357281))

(assert (not b!5132893))

(assert (not bm!357282))

(assert (not b!5132887))

(assert (not b!5132884))

(assert (not d!1660962))

(assert (not bm!357279))

(assert (not d!1660972))

(assert (not setNonEmpty!31215))

(assert (not d!1660960))

(assert (not b!5132901))

(assert (not d!1660948))

(assert (not b!5132896))

(assert (not d!1660958))

(assert (not b!5132885))

(assert (not b_lambda!199943))

(assert (not bs!1198943))

(assert (not d!1660944))

(assert (not b!5132886))

(assert tp_is_empty!37901)

(assert (not bm!357280))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

