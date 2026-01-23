; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!689286 () Bool)

(assert start!689286)

(declare-fun b!7082975 () Bool)

(assert (=> b!7082975 true))

(declare-fun bs!1882563 () Bool)

(declare-fun b!7082977 () Bool)

(assert (= bs!1882563 (and b!7082977 b!7082975)))

(declare-fun lambda!428579 () Int)

(declare-fun lambda!428578 () Int)

(assert (=> bs!1882563 (not (= lambda!428579 lambda!428578))))

(declare-fun e!4258259 () Bool)

(declare-fun e!4258255 () Bool)

(assert (=> b!7082975 (= e!4258259 e!4258255)))

(declare-fun res!2893516 () Bool)

(assert (=> b!7082975 (=> (not res!2893516) (not e!4258255))))

(declare-datatypes ((C!35698 0))(
  ( (C!35699 (val!27551 Int)) )
))
(declare-datatypes ((Regex!17714 0))(
  ( (ElementMatch!17714 (c!1322101 C!35698)) (Concat!26559 (regOne!35940 Regex!17714) (regTwo!35940 Regex!17714)) (EmptyExpr!17714) (Star!17714 (reg!18043 Regex!17714)) (EmptyLang!17714) (Union!17714 (regOne!35941 Regex!17714) (regTwo!35941 Regex!17714)) )
))
(declare-datatypes ((List!68664 0))(
  ( (Nil!68540) (Cons!68540 (h!74988 Regex!17714) (t!382449 List!68664)) )
))
(declare-fun lt!2553888 () List!68664)

(declare-datatypes ((Context!13420 0))(
  ( (Context!13421 (exprs!7210 List!68664)) )
))
(declare-fun lt!2553884 () Context!13420)

(assert (=> b!7082975 (= res!2893516 (= (Context!13421 lt!2553888) lt!2553884))))

(declare-fun lt!2553887 () Context!13420)

(declare-fun ct2!306 () Context!13420)

(declare-fun ++!15885 (List!68664 List!68664) List!68664)

(assert (=> b!7082975 (= lt!2553888 (++!15885 (exprs!7210 lt!2553887) (exprs!7210 ct2!306)))))

(declare-datatypes ((Unit!162139 0))(
  ( (Unit!162140) )
))
(declare-fun lt!2553886 () Unit!162139)

(declare-fun lemmaConcatPreservesForall!1025 (List!68664 List!68664 Int) Unit!162139)

(assert (=> b!7082975 (= lt!2553886 (lemmaConcatPreservesForall!1025 (exprs!7210 lt!2553887) (exprs!7210 ct2!306) lambda!428578))))

(declare-fun z1!570 () (Set Context!13420))

(declare-fun lambda!428577 () Int)

(declare-fun mapPost2!541 ((Set Context!13420) Int Context!13420) Context!13420)

(assert (=> b!7082975 (= lt!2553887 (mapPost2!541 z1!570 lambda!428577 lt!2553884))))

(declare-fun e!4258257 () Bool)

(declare-fun setNonEmpty!50614 () Bool)

(declare-fun setElem!50614 () Context!13420)

(declare-fun tp!1944036 () Bool)

(declare-fun setRes!50614 () Bool)

(declare-fun inv!87145 (Context!13420) Bool)

(assert (=> setNonEmpty!50614 (= setRes!50614 (and tp!1944036 (inv!87145 setElem!50614) e!4258257))))

(declare-fun setRest!50614 () (Set Context!13420))

(assert (=> setNonEmpty!50614 (= z1!570 (set.union (set.insert setElem!50614 (as set.empty (Set Context!13420))) setRest!50614))))

(declare-fun res!2893517 () Bool)

(declare-fun e!4258261 () Bool)

(assert (=> start!689286 (=> (not res!2893517) (not e!4258261))))

(declare-fun lt!2553892 () (Set Context!13420))

(declare-datatypes ((List!68665 0))(
  ( (Nil!68541) (Cons!68541 (h!74989 C!35698) (t!382450 List!68665)) )
))
(declare-fun s!7408 () List!68665)

(declare-fun matchZipper!3254 ((Set Context!13420) List!68665) Bool)

(assert (=> start!689286 (= res!2893517 (matchZipper!3254 lt!2553892 s!7408))))

(declare-fun appendTo!835 ((Set Context!13420) Context!13420) (Set Context!13420))

(assert (=> start!689286 (= lt!2553892 (appendTo!835 z1!570 ct2!306))))

(assert (=> start!689286 e!4258261))

(declare-fun condSetEmpty!50614 () Bool)

(assert (=> start!689286 (= condSetEmpty!50614 (= z1!570 (as set.empty (Set Context!13420))))))

(assert (=> start!689286 setRes!50614))

(declare-fun e!4258260 () Bool)

(assert (=> start!689286 (and (inv!87145 ct2!306) e!4258260)))

(declare-fun e!4258256 () Bool)

(assert (=> start!689286 e!4258256))

(declare-fun setIsEmpty!50614 () Bool)

(assert (=> setIsEmpty!50614 setRes!50614))

(declare-fun b!7082976 () Bool)

(assert (=> b!7082976 (= e!4258261 e!4258259)))

(declare-fun res!2893513 () Bool)

(assert (=> b!7082976 (=> (not res!2893513) (not e!4258259))))

(declare-fun nullableContext!125 (Context!13420) Bool)

(assert (=> b!7082976 (= res!2893513 (nullableContext!125 lt!2553884))))

(declare-fun lambda!428576 () Int)

(declare-fun getWitness!1855 ((Set Context!13420) Int) Context!13420)

(assert (=> b!7082976 (= lt!2553884 (getWitness!1855 lt!2553892 lambda!428576))))

(declare-fun e!4258258 () Bool)

(assert (=> b!7082977 (= e!4258255 (not e!4258258))))

(declare-fun res!2893520 () Bool)

(assert (=> b!7082977 (=> res!2893520 e!4258258)))

(assert (=> b!7082977 (= res!2893520 (not (nullableContext!125 lt!2553887)))))

(declare-fun lt!2553891 () Unit!162139)

(declare-fun lemmaContentSubsetPreservesForall!359 (List!68664 List!68664 Int) Unit!162139)

(assert (=> b!7082977 (= lt!2553891 (lemmaContentSubsetPreservesForall!359 lt!2553888 (exprs!7210 ct2!306) lambda!428579))))

(declare-fun lt!2553883 () Unit!162139)

(assert (=> b!7082977 (= lt!2553883 (lemmaContentSubsetPreservesForall!359 lt!2553888 (exprs!7210 lt!2553887) lambda!428579))))

(declare-fun subseq!708 (List!68664 List!68664) Bool)

(assert (=> b!7082977 (subseq!708 (exprs!7210 ct2!306) lt!2553888)))

(declare-fun lt!2553885 () Unit!162139)

(declare-fun lemmaConcatThenSecondSubseqOfTot!29 (List!68664 List!68664) Unit!162139)

(assert (=> b!7082977 (= lt!2553885 (lemmaConcatThenSecondSubseqOfTot!29 (exprs!7210 lt!2553887) (exprs!7210 ct2!306)))))

(assert (=> b!7082977 (subseq!708 (exprs!7210 lt!2553887) lt!2553888)))

(declare-fun lt!2553890 () Unit!162139)

(declare-fun lemmaConcatThenFirstSubseqOfTot!29 (List!68664 List!68664) Unit!162139)

(assert (=> b!7082977 (= lt!2553890 (lemmaConcatThenFirstSubseqOfTot!29 (exprs!7210 lt!2553887) (exprs!7210 ct2!306)))))

(declare-fun b!7082978 () Bool)

(declare-fun e!4258262 () Bool)

(assert (=> b!7082978 (= e!4258258 e!4258262)))

(declare-fun res!2893515 () Bool)

(assert (=> b!7082978 (=> res!2893515 e!4258262)))

(assert (=> b!7082978 (= res!2893515 (not (matchZipper!3254 z1!570 Nil!68541)))))

(declare-fun lt!2553881 () (Set Context!13420))

(declare-fun exists!3813 ((Set Context!13420) Int) Bool)

(assert (=> b!7082978 (exists!3813 lt!2553881 lambda!428576)))

(declare-fun lt!2553889 () Unit!162139)

(declare-fun lemmaContainsThenExists!190 ((Set Context!13420) Context!13420 Int) Unit!162139)

(assert (=> b!7082978 (= lt!2553889 (lemmaContainsThenExists!190 lt!2553881 ct2!306 lambda!428576))))

(assert (=> b!7082978 (= lt!2553881 (set.insert ct2!306 (as set.empty (Set Context!13420))))))

(assert (=> b!7082978 (exists!3813 z1!570 lambda!428576)))

(declare-fun lt!2553882 () Unit!162139)

(assert (=> b!7082978 (= lt!2553882 (lemmaContainsThenExists!190 z1!570 lt!2553887 lambda!428576))))

(declare-fun b!7082979 () Bool)

(declare-fun res!2893521 () Bool)

(assert (=> b!7082979 (=> (not res!2893521) (not e!4258261))))

(assert (=> b!7082979 (= res!2893521 (not (is-Cons!68541 s!7408)))))

(declare-fun b!7082980 () Bool)

(declare-fun tp_is_empty!44653 () Bool)

(declare-fun tp!1944033 () Bool)

(assert (=> b!7082980 (= e!4258256 (and tp_is_empty!44653 tp!1944033))))

(declare-fun b!7082981 () Bool)

(declare-fun res!2893519 () Bool)

(assert (=> b!7082981 (=> (not res!2893519) (not e!4258261))))

(assert (=> b!7082981 (= res!2893519 (exists!3813 lt!2553892 lambda!428576))))

(declare-fun b!7082982 () Bool)

(declare-fun tp!1944035 () Bool)

(assert (=> b!7082982 (= e!4258257 tp!1944035)))

(declare-fun b!7082983 () Bool)

(declare-fun res!2893518 () Bool)

(assert (=> b!7082983 (=> (not res!2893518) (not e!4258261))))

(declare-fun nullableZipper!2745 ((Set Context!13420)) Bool)

(assert (=> b!7082983 (= res!2893518 (nullableZipper!2745 lt!2553892))))

(declare-fun b!7082984 () Bool)

(declare-fun tp!1944034 () Bool)

(assert (=> b!7082984 (= e!4258260 tp!1944034)))

(declare-fun b!7082985 () Bool)

(declare-fun res!2893514 () Bool)

(assert (=> b!7082985 (=> res!2893514 e!4258258)))

(assert (=> b!7082985 (= res!2893514 (not (nullableContext!125 ct2!306)))))

(declare-fun b!7082986 () Bool)

(declare-fun res!2893522 () Bool)

(assert (=> b!7082986 (=> res!2893522 e!4258262)))

(assert (=> b!7082986 (= res!2893522 (not (matchZipper!3254 lt!2553881 Nil!68541)))))

(declare-fun b!7082987 () Bool)

(declare-fun ++!15886 (List!68665 List!68665) List!68665)

(assert (=> b!7082987 (= e!4258262 (= (++!15886 Nil!68541 Nil!68541) Nil!68541))))

(assert (= (and start!689286 res!2893517) b!7082979))

(assert (= (and b!7082979 res!2893521) b!7082983))

(assert (= (and b!7082983 res!2893518) b!7082981))

(assert (= (and b!7082981 res!2893519) b!7082976))

(assert (= (and b!7082976 res!2893513) b!7082975))

(assert (= (and b!7082975 res!2893516) b!7082977))

(assert (= (and b!7082977 (not res!2893520)) b!7082985))

(assert (= (and b!7082985 (not res!2893514)) b!7082978))

(assert (= (and b!7082978 (not res!2893515)) b!7082986))

(assert (= (and b!7082986 (not res!2893522)) b!7082987))

(assert (= (and start!689286 condSetEmpty!50614) setIsEmpty!50614))

(assert (= (and start!689286 (not condSetEmpty!50614)) setNonEmpty!50614))

(assert (= setNonEmpty!50614 b!7082982))

(assert (= start!689286 b!7082984))

(assert (= (and start!689286 (is-Cons!68541 s!7408)) b!7082980))

(declare-fun m!7814780 () Bool)

(assert (=> b!7082987 m!7814780))

(declare-fun m!7814782 () Bool)

(assert (=> b!7082978 m!7814782))

(declare-fun m!7814784 () Bool)

(assert (=> b!7082978 m!7814784))

(declare-fun m!7814786 () Bool)

(assert (=> b!7082978 m!7814786))

(declare-fun m!7814788 () Bool)

(assert (=> b!7082978 m!7814788))

(declare-fun m!7814790 () Bool)

(assert (=> b!7082978 m!7814790))

(declare-fun m!7814792 () Bool)

(assert (=> b!7082978 m!7814792))

(declare-fun m!7814794 () Bool)

(assert (=> b!7082977 m!7814794))

(declare-fun m!7814796 () Bool)

(assert (=> b!7082977 m!7814796))

(declare-fun m!7814798 () Bool)

(assert (=> b!7082977 m!7814798))

(declare-fun m!7814800 () Bool)

(assert (=> b!7082977 m!7814800))

(declare-fun m!7814802 () Bool)

(assert (=> b!7082977 m!7814802))

(declare-fun m!7814804 () Bool)

(assert (=> b!7082977 m!7814804))

(declare-fun m!7814806 () Bool)

(assert (=> b!7082977 m!7814806))

(declare-fun m!7814808 () Bool)

(assert (=> setNonEmpty!50614 m!7814808))

(declare-fun m!7814810 () Bool)

(assert (=> b!7082985 m!7814810))

(declare-fun m!7814812 () Bool)

(assert (=> b!7082986 m!7814812))

(declare-fun m!7814814 () Bool)

(assert (=> b!7082975 m!7814814))

(declare-fun m!7814816 () Bool)

(assert (=> b!7082975 m!7814816))

(declare-fun m!7814818 () Bool)

(assert (=> b!7082975 m!7814818))

(declare-fun m!7814820 () Bool)

(assert (=> b!7082981 m!7814820))

(declare-fun m!7814822 () Bool)

(assert (=> b!7082976 m!7814822))

(declare-fun m!7814824 () Bool)

(assert (=> b!7082976 m!7814824))

(declare-fun m!7814826 () Bool)

(assert (=> b!7082983 m!7814826))

(declare-fun m!7814828 () Bool)

(assert (=> start!689286 m!7814828))

(declare-fun m!7814830 () Bool)

(assert (=> start!689286 m!7814830))

(declare-fun m!7814832 () Bool)

(assert (=> start!689286 m!7814832))

(push 1)

(assert tp_is_empty!44653)

(assert (not b!7082980))

(assert (not b!7082987))

(assert (not b!7082983))

(assert (not b!7082975))

(assert (not b!7082977))

(assert (not setNonEmpty!50614))

(assert (not b!7082976))

(assert (not b!7082986))

(assert (not b!7082978))

(assert (not b!7082984))

(assert (not start!689286))

(assert (not b!7082981))

(assert (not b!7082985))

(assert (not b!7082982))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7083041 () Bool)

(declare-fun res!2893559 () Bool)

(declare-fun e!4258291 () Bool)

(assert (=> b!7083041 (=> (not res!2893559) (not e!4258291))))

(declare-fun lt!2553933 () List!68664)

(declare-fun size!41275 (List!68664) Int)

(assert (=> b!7083041 (= res!2893559 (= (size!41275 lt!2553933) (+ (size!41275 (exprs!7210 lt!2553887)) (size!41275 (exprs!7210 ct2!306)))))))

(declare-fun b!7083039 () Bool)

(declare-fun e!4258292 () List!68664)

(assert (=> b!7083039 (= e!4258292 (exprs!7210 ct2!306))))

(declare-fun b!7083040 () Bool)

(assert (=> b!7083040 (= e!4258292 (Cons!68540 (h!74988 (exprs!7210 lt!2553887)) (++!15885 (t!382449 (exprs!7210 lt!2553887)) (exprs!7210 ct2!306))))))

(declare-fun b!7083042 () Bool)

(assert (=> b!7083042 (= e!4258291 (or (not (= (exprs!7210 ct2!306) Nil!68540)) (= lt!2553933 (exprs!7210 lt!2553887))))))

(declare-fun d!2215437 () Bool)

(assert (=> d!2215437 e!4258291))

(declare-fun res!2893560 () Bool)

(assert (=> d!2215437 (=> (not res!2893560) (not e!4258291))))

(declare-fun content!13900 (List!68664) (Set Regex!17714))

(assert (=> d!2215437 (= res!2893560 (= (content!13900 lt!2553933) (set.union (content!13900 (exprs!7210 lt!2553887)) (content!13900 (exprs!7210 ct2!306)))))))

(assert (=> d!2215437 (= lt!2553933 e!4258292)))

(declare-fun c!1322115 () Bool)

(assert (=> d!2215437 (= c!1322115 (is-Nil!68540 (exprs!7210 lt!2553887)))))

(assert (=> d!2215437 (= (++!15885 (exprs!7210 lt!2553887) (exprs!7210 ct2!306)) lt!2553933)))

(assert (= (and d!2215437 c!1322115) b!7083039))

(assert (= (and d!2215437 (not c!1322115)) b!7083040))

(assert (= (and d!2215437 res!2893560) b!7083041))

(assert (= (and b!7083041 res!2893559) b!7083042))

(declare-fun m!7814888 () Bool)

(assert (=> b!7083041 m!7814888))

(declare-fun m!7814890 () Bool)

(assert (=> b!7083041 m!7814890))

(declare-fun m!7814892 () Bool)

(assert (=> b!7083041 m!7814892))

(declare-fun m!7814894 () Bool)

(assert (=> b!7083040 m!7814894))

(declare-fun m!7814896 () Bool)

(assert (=> d!2215437 m!7814896))

(declare-fun m!7814898 () Bool)

(assert (=> d!2215437 m!7814898))

(declare-fun m!7814900 () Bool)

(assert (=> d!2215437 m!7814900))

(assert (=> b!7082975 d!2215437))

(declare-fun d!2215441 () Bool)

(declare-fun forall!16672 (List!68664 Int) Bool)

(assert (=> d!2215441 (forall!16672 (++!15885 (exprs!7210 lt!2553887) (exprs!7210 ct2!306)) lambda!428578)))

(declare-fun lt!2553936 () Unit!162139)

(declare-fun choose!54557 (List!68664 List!68664 Int) Unit!162139)

(assert (=> d!2215441 (= lt!2553936 (choose!54557 (exprs!7210 lt!2553887) (exprs!7210 ct2!306) lambda!428578))))

(assert (=> d!2215441 (forall!16672 (exprs!7210 lt!2553887) lambda!428578)))

(assert (=> d!2215441 (= (lemmaConcatPreservesForall!1025 (exprs!7210 lt!2553887) (exprs!7210 ct2!306) lambda!428578) lt!2553936)))

(declare-fun bs!1882565 () Bool)

(assert (= bs!1882565 d!2215441))

(assert (=> bs!1882565 m!7814814))

(assert (=> bs!1882565 m!7814814))

(declare-fun m!7814902 () Bool)

(assert (=> bs!1882565 m!7814902))

(declare-fun m!7814904 () Bool)

(assert (=> bs!1882565 m!7814904))

(declare-fun m!7814906 () Bool)

(assert (=> bs!1882565 m!7814906))

(assert (=> b!7082975 d!2215441))

(declare-fun d!2215443 () Bool)

(declare-fun e!4258295 () Bool)

(assert (=> d!2215443 e!4258295))

(declare-fun res!2893563 () Bool)

(assert (=> d!2215443 (=> (not res!2893563) (not e!4258295))))

(declare-fun lt!2553941 () Context!13420)

(declare-fun dynLambda!27943 (Int Context!13420) Context!13420)

(assert (=> d!2215443 (= res!2893563 (= lt!2553884 (dynLambda!27943 lambda!428577 lt!2553941)))))

(declare-fun choose!54558 ((Set Context!13420) Int Context!13420) Context!13420)

(assert (=> d!2215443 (= lt!2553941 (choose!54558 z1!570 lambda!428577 lt!2553884))))

(declare-fun map!16066 ((Set Context!13420) Int) (Set Context!13420))

(assert (=> d!2215443 (set.member lt!2553884 (map!16066 z1!570 lambda!428577))))

(assert (=> d!2215443 (= (mapPost2!541 z1!570 lambda!428577 lt!2553884) lt!2553941)))

(declare-fun b!7083046 () Bool)

(assert (=> b!7083046 (= e!4258295 (set.member lt!2553941 z1!570))))

(assert (= (and d!2215443 res!2893563) b!7083046))

(declare-fun b_lambda!270697 () Bool)

(assert (=> (not b_lambda!270697) (not d!2215443)))

(declare-fun m!7814908 () Bool)

(assert (=> d!2215443 m!7814908))

(declare-fun m!7814910 () Bool)

(assert (=> d!2215443 m!7814910))

(declare-fun m!7814912 () Bool)

(assert (=> d!2215443 m!7814912))

(declare-fun m!7814914 () Bool)

(assert (=> d!2215443 m!7814914))

(declare-fun m!7814916 () Bool)

(assert (=> b!7083046 m!7814916))

(assert (=> b!7082975 d!2215443))

(declare-fun bs!1882566 () Bool)

(declare-fun d!2215445 () Bool)

(assert (= bs!1882566 (and d!2215445 b!7082981)))

(declare-fun lambda!428604 () Int)

(assert (=> bs!1882566 (= lambda!428604 lambda!428576)))

(assert (=> d!2215445 (= (nullableZipper!2745 lt!2553892) (exists!3813 lt!2553892 lambda!428604))))

(declare-fun bs!1882567 () Bool)

(assert (= bs!1882567 d!2215445))

(declare-fun m!7814918 () Bool)

(assert (=> bs!1882567 m!7814918))

(assert (=> b!7082983 d!2215445))

(declare-fun d!2215447 () Bool)

(assert (=> d!2215447 (exists!3813 lt!2553881 lambda!428576)))

(declare-fun lt!2553945 () Unit!162139)

(declare-fun choose!54559 ((Set Context!13420) Context!13420 Int) Unit!162139)

(assert (=> d!2215447 (= lt!2553945 (choose!54559 lt!2553881 ct2!306 lambda!428576))))

(assert (=> d!2215447 (set.member ct2!306 lt!2553881)))

(assert (=> d!2215447 (= (lemmaContainsThenExists!190 lt!2553881 ct2!306 lambda!428576) lt!2553945)))

(declare-fun bs!1882568 () Bool)

(assert (= bs!1882568 d!2215447))

(assert (=> bs!1882568 m!7814790))

(declare-fun m!7814920 () Bool)

(assert (=> bs!1882568 m!7814920))

(declare-fun m!7814922 () Bool)

(assert (=> bs!1882568 m!7814922))

(assert (=> b!7082978 d!2215447))

(declare-fun d!2215449 () Bool)

(declare-fun lt!2553948 () Bool)

(declare-datatypes ((List!68668 0))(
  ( (Nil!68544) (Cons!68544 (h!74992 Context!13420) (t!382453 List!68668)) )
))
(declare-fun exists!3815 (List!68668 Int) Bool)

(declare-fun toList!11051 ((Set Context!13420)) List!68668)

(assert (=> d!2215449 (= lt!2553948 (exists!3815 (toList!11051 z1!570) lambda!428576))))

(declare-fun choose!54560 ((Set Context!13420) Int) Bool)

(assert (=> d!2215449 (= lt!2553948 (choose!54560 z1!570 lambda!428576))))

(assert (=> d!2215449 (= (exists!3813 z1!570 lambda!428576) lt!2553948)))

(declare-fun bs!1882569 () Bool)

(assert (= bs!1882569 d!2215449))

(declare-fun m!7814938 () Bool)

(assert (=> bs!1882569 m!7814938))

(assert (=> bs!1882569 m!7814938))

(declare-fun m!7814940 () Bool)

(assert (=> bs!1882569 m!7814940))

(declare-fun m!7814942 () Bool)

(assert (=> bs!1882569 m!7814942))

(assert (=> b!7082978 d!2215449))

(declare-fun d!2215453 () Bool)

(declare-fun lt!2553949 () Bool)

(assert (=> d!2215453 (= lt!2553949 (exists!3815 (toList!11051 lt!2553881) lambda!428576))))

(assert (=> d!2215453 (= lt!2553949 (choose!54560 lt!2553881 lambda!428576))))

(assert (=> d!2215453 (= (exists!3813 lt!2553881 lambda!428576) lt!2553949)))

(declare-fun bs!1882570 () Bool)

(assert (= bs!1882570 d!2215453))

(declare-fun m!7814944 () Bool)

(assert (=> bs!1882570 m!7814944))

(assert (=> bs!1882570 m!7814944))

(declare-fun m!7814946 () Bool)

(assert (=> bs!1882570 m!7814946))

(declare-fun m!7814948 () Bool)

(assert (=> bs!1882570 m!7814948))

(assert (=> b!7082978 d!2215453))

(declare-fun d!2215455 () Bool)

(assert (=> d!2215455 (exists!3813 z1!570 lambda!428576)))

(declare-fun lt!2553950 () Unit!162139)

(assert (=> d!2215455 (= lt!2553950 (choose!54559 z1!570 lt!2553887 lambda!428576))))

(assert (=> d!2215455 (set.member lt!2553887 z1!570)))

(assert (=> d!2215455 (= (lemmaContainsThenExists!190 z1!570 lt!2553887 lambda!428576) lt!2553950)))

(declare-fun bs!1882571 () Bool)

(assert (= bs!1882571 d!2215455))

(assert (=> bs!1882571 m!7814788))

(declare-fun m!7814950 () Bool)

(assert (=> bs!1882571 m!7814950))

(declare-fun m!7814952 () Bool)

(assert (=> bs!1882571 m!7814952))

(assert (=> b!7082978 d!2215455))

(declare-fun d!2215457 () Bool)

(declare-fun c!1322123 () Bool)

(declare-fun isEmpty!39993 (List!68665) Bool)

(assert (=> d!2215457 (= c!1322123 (isEmpty!39993 Nil!68541))))

(declare-fun e!4258305 () Bool)

(assert (=> d!2215457 (= (matchZipper!3254 z1!570 Nil!68541) e!4258305)))

(declare-fun b!7083063 () Bool)

(assert (=> b!7083063 (= e!4258305 (nullableZipper!2745 z1!570))))

(declare-fun b!7083064 () Bool)

(declare-fun derivationStepZipper!3160 ((Set Context!13420) C!35698) (Set Context!13420))

(declare-fun head!14450 (List!68665) C!35698)

(declare-fun tail!13913 (List!68665) List!68665)

(assert (=> b!7083064 (= e!4258305 (matchZipper!3254 (derivationStepZipper!3160 z1!570 (head!14450 Nil!68541)) (tail!13913 Nil!68541)))))

(assert (= (and d!2215457 c!1322123) b!7083063))

(assert (= (and d!2215457 (not c!1322123)) b!7083064))

(declare-fun m!7814960 () Bool)

(assert (=> d!2215457 m!7814960))

(declare-fun m!7814962 () Bool)

(assert (=> b!7083063 m!7814962))

(declare-fun m!7814964 () Bool)

(assert (=> b!7083064 m!7814964))

(assert (=> b!7083064 m!7814964))

(declare-fun m!7814966 () Bool)

(assert (=> b!7083064 m!7814966))

(declare-fun m!7814968 () Bool)

(assert (=> b!7083064 m!7814968))

(assert (=> b!7083064 m!7814966))

(assert (=> b!7083064 m!7814968))

(declare-fun m!7814970 () Bool)

(assert (=> b!7083064 m!7814970))

(assert (=> b!7082978 d!2215457))

(declare-fun b!7083077 () Bool)

(declare-fun e!4258318 () Bool)

(declare-fun e!4258319 () Bool)

(assert (=> b!7083077 (= e!4258318 e!4258319)))

(declare-fun res!2893583 () Bool)

(assert (=> b!7083077 (=> res!2893583 e!4258319)))

(declare-fun e!4258316 () Bool)

(assert (=> b!7083077 (= res!2893583 e!4258316)))

(declare-fun res!2893582 () Bool)

(assert (=> b!7083077 (=> (not res!2893582) (not e!4258316))))

(assert (=> b!7083077 (= res!2893582 (= (h!74988 (exprs!7210 ct2!306)) (h!74988 lt!2553888)))))

(declare-fun b!7083078 () Bool)

(assert (=> b!7083078 (= e!4258316 (subseq!708 (t!382449 (exprs!7210 ct2!306)) (t!382449 lt!2553888)))))

(declare-fun b!7083079 () Bool)

(assert (=> b!7083079 (= e!4258319 (subseq!708 (exprs!7210 ct2!306) (t!382449 lt!2553888)))))

(declare-fun b!7083076 () Bool)

(declare-fun e!4258317 () Bool)

(assert (=> b!7083076 (= e!4258317 e!4258318)))

(declare-fun res!2893580 () Bool)

(assert (=> b!7083076 (=> (not res!2893580) (not e!4258318))))

(assert (=> b!7083076 (= res!2893580 (is-Cons!68540 lt!2553888))))

(declare-fun d!2215461 () Bool)

(declare-fun res!2893581 () Bool)

(assert (=> d!2215461 (=> res!2893581 e!4258317)))

(assert (=> d!2215461 (= res!2893581 (is-Nil!68540 (exprs!7210 ct2!306)))))

(assert (=> d!2215461 (= (subseq!708 (exprs!7210 ct2!306) lt!2553888) e!4258317)))

(assert (= (and d!2215461 (not res!2893581)) b!7083076))

(assert (= (and b!7083076 res!2893580) b!7083077))

(assert (= (and b!7083077 res!2893582) b!7083078))

(assert (= (and b!7083077 (not res!2893583)) b!7083079))

(declare-fun m!7814972 () Bool)

(assert (=> b!7083078 m!7814972))

(declare-fun m!7814974 () Bool)

(assert (=> b!7083079 m!7814974))

(assert (=> b!7082977 d!2215461))

(declare-fun b!7083081 () Bool)

(declare-fun e!4258322 () Bool)

(declare-fun e!4258323 () Bool)

(assert (=> b!7083081 (= e!4258322 e!4258323)))

(declare-fun res!2893587 () Bool)

(assert (=> b!7083081 (=> res!2893587 e!4258323)))

(declare-fun e!4258320 () Bool)

(assert (=> b!7083081 (= res!2893587 e!4258320)))

(declare-fun res!2893586 () Bool)

(assert (=> b!7083081 (=> (not res!2893586) (not e!4258320))))

(assert (=> b!7083081 (= res!2893586 (= (h!74988 (exprs!7210 lt!2553887)) (h!74988 lt!2553888)))))

(declare-fun b!7083082 () Bool)

(assert (=> b!7083082 (= e!4258320 (subseq!708 (t!382449 (exprs!7210 lt!2553887)) (t!382449 lt!2553888)))))

(declare-fun b!7083083 () Bool)

(assert (=> b!7083083 (= e!4258323 (subseq!708 (exprs!7210 lt!2553887) (t!382449 lt!2553888)))))

(declare-fun b!7083080 () Bool)

(declare-fun e!4258321 () Bool)

(assert (=> b!7083080 (= e!4258321 e!4258322)))

(declare-fun res!2893584 () Bool)

(assert (=> b!7083080 (=> (not res!2893584) (not e!4258322))))

(assert (=> b!7083080 (= res!2893584 (is-Cons!68540 lt!2553888))))

(declare-fun d!2215463 () Bool)

(declare-fun res!2893585 () Bool)

(assert (=> d!2215463 (=> res!2893585 e!4258321)))

(assert (=> d!2215463 (= res!2893585 (is-Nil!68540 (exprs!7210 lt!2553887)))))

(assert (=> d!2215463 (= (subseq!708 (exprs!7210 lt!2553887) lt!2553888) e!4258321)))

(assert (= (and d!2215463 (not res!2893585)) b!7083080))

(assert (= (and b!7083080 res!2893584) b!7083081))

(assert (= (and b!7083081 res!2893586) b!7083082))

(assert (= (and b!7083081 (not res!2893587)) b!7083083))

(declare-fun m!7814976 () Bool)

(assert (=> b!7083082 m!7814976))

(declare-fun m!7814978 () Bool)

(assert (=> b!7083083 m!7814978))

(assert (=> b!7082977 d!2215463))

(declare-fun d!2215465 () Bool)

(assert (=> d!2215465 (forall!16672 (exprs!7210 lt!2553887) lambda!428579)))

(declare-fun lt!2553959 () Unit!162139)

(declare-fun choose!54561 (List!68664 List!68664 Int) Unit!162139)

(assert (=> d!2215465 (= lt!2553959 (choose!54561 lt!2553888 (exprs!7210 lt!2553887) lambda!428579))))

(assert (=> d!2215465 (forall!16672 lt!2553888 lambda!428579)))

(assert (=> d!2215465 (= (lemmaContentSubsetPreservesForall!359 lt!2553888 (exprs!7210 lt!2553887) lambda!428579) lt!2553959)))

(declare-fun bs!1882573 () Bool)

(assert (= bs!1882573 d!2215465))

(declare-fun m!7814990 () Bool)

(assert (=> bs!1882573 m!7814990))

(declare-fun m!7814992 () Bool)

(assert (=> bs!1882573 m!7814992))

(declare-fun m!7814994 () Bool)

(assert (=> bs!1882573 m!7814994))

(assert (=> b!7082977 d!2215465))

(declare-fun d!2215469 () Bool)

(assert (=> d!2215469 (subseq!708 (exprs!7210 lt!2553887) (++!15885 (exprs!7210 lt!2553887) (exprs!7210 ct2!306)))))

(declare-fun lt!2553962 () Unit!162139)

(declare-fun choose!54562 (List!68664 List!68664) Unit!162139)

(assert (=> d!2215469 (= lt!2553962 (choose!54562 (exprs!7210 lt!2553887) (exprs!7210 ct2!306)))))

(assert (=> d!2215469 (= (lemmaConcatThenFirstSubseqOfTot!29 (exprs!7210 lt!2553887) (exprs!7210 ct2!306)) lt!2553962)))

(declare-fun bs!1882574 () Bool)

(assert (= bs!1882574 d!2215469))

(assert (=> bs!1882574 m!7814814))

(assert (=> bs!1882574 m!7814814))

(declare-fun m!7814996 () Bool)

(assert (=> bs!1882574 m!7814996))

(declare-fun m!7814998 () Bool)

(assert (=> bs!1882574 m!7814998))

(assert (=> b!7082977 d!2215469))

(declare-fun bs!1882575 () Bool)

(declare-fun d!2215471 () Bool)

(assert (= bs!1882575 (and d!2215471 b!7082975)))

(declare-fun lambda!428609 () Int)

(assert (=> bs!1882575 (not (= lambda!428609 lambda!428578))))

(declare-fun bs!1882576 () Bool)

(assert (= bs!1882576 (and d!2215471 b!7082977)))

(assert (=> bs!1882576 (= lambda!428609 lambda!428579)))

(assert (=> d!2215471 (= (nullableContext!125 lt!2553887) (forall!16672 (exprs!7210 lt!2553887) lambda!428609))))

(declare-fun bs!1882577 () Bool)

(assert (= bs!1882577 d!2215471))

(declare-fun m!7815000 () Bool)

(assert (=> bs!1882577 m!7815000))

(assert (=> b!7082977 d!2215471))

(declare-fun d!2215473 () Bool)

(assert (=> d!2215473 (forall!16672 (exprs!7210 ct2!306) lambda!428579)))

(declare-fun lt!2553963 () Unit!162139)

(assert (=> d!2215473 (= lt!2553963 (choose!54561 lt!2553888 (exprs!7210 ct2!306) lambda!428579))))

(assert (=> d!2215473 (forall!16672 lt!2553888 lambda!428579)))

(assert (=> d!2215473 (= (lemmaContentSubsetPreservesForall!359 lt!2553888 (exprs!7210 ct2!306) lambda!428579) lt!2553963)))

(declare-fun bs!1882578 () Bool)

(assert (= bs!1882578 d!2215473))

(declare-fun m!7815002 () Bool)

(assert (=> bs!1882578 m!7815002))

(declare-fun m!7815004 () Bool)

(assert (=> bs!1882578 m!7815004))

(assert (=> bs!1882578 m!7814994))

(assert (=> b!7082977 d!2215473))

(declare-fun d!2215475 () Bool)

(assert (=> d!2215475 (subseq!708 (exprs!7210 ct2!306) (++!15885 (exprs!7210 lt!2553887) (exprs!7210 ct2!306)))))

(declare-fun lt!2553966 () Unit!162139)

(declare-fun choose!54563 (List!68664 List!68664) Unit!162139)

(assert (=> d!2215475 (= lt!2553966 (choose!54563 (exprs!7210 lt!2553887) (exprs!7210 ct2!306)))))

(assert (=> d!2215475 (= (lemmaConcatThenSecondSubseqOfTot!29 (exprs!7210 lt!2553887) (exprs!7210 ct2!306)) lt!2553966)))

(declare-fun bs!1882581 () Bool)

(assert (= bs!1882581 d!2215475))

(assert (=> bs!1882581 m!7814814))

(assert (=> bs!1882581 m!7814814))

(declare-fun m!7815008 () Bool)

(assert (=> bs!1882581 m!7815008))

(declare-fun m!7815010 () Bool)

(assert (=> bs!1882581 m!7815010))

(assert (=> b!7082977 d!2215475))

(declare-fun b!7083096 () Bool)

(declare-fun e!4258329 () Bool)

(declare-fun lt!2553969 () List!68665)

(assert (=> b!7083096 (= e!4258329 (or (not (= Nil!68541 Nil!68541)) (= lt!2553969 Nil!68541)))))

(declare-fun b!7083093 () Bool)

(declare-fun e!4258330 () List!68665)

(assert (=> b!7083093 (= e!4258330 Nil!68541)))

(declare-fun b!7083094 () Bool)

(assert (=> b!7083094 (= e!4258330 (Cons!68541 (h!74989 Nil!68541) (++!15886 (t!382450 Nil!68541) Nil!68541)))))

(declare-fun d!2215479 () Bool)

(assert (=> d!2215479 e!4258329))

(declare-fun res!2893593 () Bool)

(assert (=> d!2215479 (=> (not res!2893593) (not e!4258329))))

(declare-fun content!13901 (List!68665) (Set C!35698))

(assert (=> d!2215479 (= res!2893593 (= (content!13901 lt!2553969) (set.union (content!13901 Nil!68541) (content!13901 Nil!68541))))))

(assert (=> d!2215479 (= lt!2553969 e!4258330)))

(declare-fun c!1322130 () Bool)

(assert (=> d!2215479 (= c!1322130 (is-Nil!68541 Nil!68541))))

(assert (=> d!2215479 (= (++!15886 Nil!68541 Nil!68541) lt!2553969)))

(declare-fun b!7083095 () Bool)

(declare-fun res!2893594 () Bool)

(assert (=> b!7083095 (=> (not res!2893594) (not e!4258329))))

(declare-fun size!41276 (List!68665) Int)

(assert (=> b!7083095 (= res!2893594 (= (size!41276 lt!2553969) (+ (size!41276 Nil!68541) (size!41276 Nil!68541))))))

(assert (= (and d!2215479 c!1322130) b!7083093))

(assert (= (and d!2215479 (not c!1322130)) b!7083094))

(assert (= (and d!2215479 res!2893593) b!7083095))

(assert (= (and b!7083095 res!2893594) b!7083096))

(declare-fun m!7815014 () Bool)

(assert (=> b!7083094 m!7815014))

(declare-fun m!7815016 () Bool)

(assert (=> d!2215479 m!7815016))

(declare-fun m!7815018 () Bool)

(assert (=> d!2215479 m!7815018))

(assert (=> d!2215479 m!7815018))

(declare-fun m!7815020 () Bool)

(assert (=> b!7083095 m!7815020))

(declare-fun m!7815022 () Bool)

(assert (=> b!7083095 m!7815022))

(assert (=> b!7083095 m!7815022))

(assert (=> b!7082987 d!2215479))

(declare-fun d!2215483 () Bool)

(declare-fun lt!2553970 () Bool)

(assert (=> d!2215483 (= lt!2553970 (exists!3815 (toList!11051 lt!2553892) lambda!428576))))

(assert (=> d!2215483 (= lt!2553970 (choose!54560 lt!2553892 lambda!428576))))

(assert (=> d!2215483 (= (exists!3813 lt!2553892 lambda!428576) lt!2553970)))

(declare-fun bs!1882585 () Bool)

(assert (= bs!1882585 d!2215483))

(declare-fun m!7815024 () Bool)

(assert (=> bs!1882585 m!7815024))

(assert (=> bs!1882585 m!7815024))

(declare-fun m!7815026 () Bool)

(assert (=> bs!1882585 m!7815026))

(declare-fun m!7815028 () Bool)

(assert (=> bs!1882585 m!7815028))

(assert (=> b!7082981 d!2215483))

(declare-fun bs!1882586 () Bool)

(declare-fun d!2215485 () Bool)

(assert (= bs!1882586 (and d!2215485 b!7082975)))

(declare-fun lambda!428614 () Int)

(assert (=> bs!1882586 (not (= lambda!428614 lambda!428578))))

(declare-fun bs!1882587 () Bool)

(assert (= bs!1882587 (and d!2215485 b!7082977)))

(assert (=> bs!1882587 (= lambda!428614 lambda!428579)))

(declare-fun bs!1882588 () Bool)

(assert (= bs!1882588 (and d!2215485 d!2215471)))

(assert (=> bs!1882588 (= lambda!428614 lambda!428609)))

(assert (=> d!2215485 (= (nullableContext!125 lt!2553884) (forall!16672 (exprs!7210 lt!2553884) lambda!428614))))

(declare-fun bs!1882589 () Bool)

(assert (= bs!1882589 d!2215485))

(declare-fun m!7815030 () Bool)

(assert (=> bs!1882589 m!7815030))

(assert (=> b!7082976 d!2215485))

(declare-fun d!2215487 () Bool)

(declare-fun e!4258335 () Bool)

(assert (=> d!2215487 e!4258335))

(declare-fun res!2893597 () Bool)

(assert (=> d!2215487 (=> (not res!2893597) (not e!4258335))))

(declare-fun lt!2553973 () Context!13420)

(declare-fun dynLambda!27944 (Int Context!13420) Bool)

(assert (=> d!2215487 (= res!2893597 (dynLambda!27944 lambda!428576 lt!2553973))))

(declare-fun getWitness!1857 (List!68668 Int) Context!13420)

(assert (=> d!2215487 (= lt!2553973 (getWitness!1857 (toList!11051 lt!2553892) lambda!428576))))

(assert (=> d!2215487 (exists!3813 lt!2553892 lambda!428576)))

(assert (=> d!2215487 (= (getWitness!1855 lt!2553892 lambda!428576) lt!2553973)))

(declare-fun b!7083103 () Bool)

(assert (=> b!7083103 (= e!4258335 (set.member lt!2553973 lt!2553892))))

(assert (= (and d!2215487 res!2893597) b!7083103))

(declare-fun b_lambda!270701 () Bool)

(assert (=> (not b_lambda!270701) (not d!2215487)))

(declare-fun m!7815032 () Bool)

(assert (=> d!2215487 m!7815032))

(assert (=> d!2215487 m!7815024))

(assert (=> d!2215487 m!7815024))

(declare-fun m!7815034 () Bool)

(assert (=> d!2215487 m!7815034))

(assert (=> d!2215487 m!7814820))

(declare-fun m!7815036 () Bool)

(assert (=> b!7083103 m!7815036))

(assert (=> b!7082976 d!2215487))

(declare-fun d!2215489 () Bool)

(declare-fun c!1322133 () Bool)

(assert (=> d!2215489 (= c!1322133 (isEmpty!39993 Nil!68541))))

(declare-fun e!4258336 () Bool)

(assert (=> d!2215489 (= (matchZipper!3254 lt!2553881 Nil!68541) e!4258336)))

(declare-fun b!7083104 () Bool)

(assert (=> b!7083104 (= e!4258336 (nullableZipper!2745 lt!2553881))))

(declare-fun b!7083105 () Bool)

(assert (=> b!7083105 (= e!4258336 (matchZipper!3254 (derivationStepZipper!3160 lt!2553881 (head!14450 Nil!68541)) (tail!13913 Nil!68541)))))

(assert (= (and d!2215489 c!1322133) b!7083104))

(assert (= (and d!2215489 (not c!1322133)) b!7083105))

(assert (=> d!2215489 m!7814960))

(declare-fun m!7815038 () Bool)

(assert (=> b!7083104 m!7815038))

(assert (=> b!7083105 m!7814964))

(assert (=> b!7083105 m!7814964))

(declare-fun m!7815040 () Bool)

(assert (=> b!7083105 m!7815040))

(assert (=> b!7083105 m!7814968))

(assert (=> b!7083105 m!7815040))

(assert (=> b!7083105 m!7814968))

(declare-fun m!7815042 () Bool)

(assert (=> b!7083105 m!7815042))

(assert (=> b!7082986 d!2215489))

(declare-fun bs!1882590 () Bool)

(declare-fun d!2215491 () Bool)

(assert (= bs!1882590 (and d!2215491 b!7082975)))

(declare-fun lambda!428615 () Int)

(assert (=> bs!1882590 (not (= lambda!428615 lambda!428578))))

(declare-fun bs!1882591 () Bool)

(assert (= bs!1882591 (and d!2215491 b!7082977)))

(assert (=> bs!1882591 (= lambda!428615 lambda!428579)))

(declare-fun bs!1882592 () Bool)

(assert (= bs!1882592 (and d!2215491 d!2215471)))

(assert (=> bs!1882592 (= lambda!428615 lambda!428609)))

(declare-fun bs!1882593 () Bool)

(assert (= bs!1882593 (and d!2215491 d!2215485)))

(assert (=> bs!1882593 (= lambda!428615 lambda!428614)))

(assert (=> d!2215491 (= (nullableContext!125 ct2!306) (forall!16672 (exprs!7210 ct2!306) lambda!428615))))

(declare-fun bs!1882594 () Bool)

(assert (= bs!1882594 d!2215491))

(declare-fun m!7815044 () Bool)

(assert (=> bs!1882594 m!7815044))

(assert (=> b!7082985 d!2215491))

(declare-fun d!2215493 () Bool)

(declare-fun c!1322135 () Bool)

(assert (=> d!2215493 (= c!1322135 (isEmpty!39993 s!7408))))

(declare-fun e!4258338 () Bool)

(assert (=> d!2215493 (= (matchZipper!3254 lt!2553892 s!7408) e!4258338)))

(declare-fun b!7083108 () Bool)

(assert (=> b!7083108 (= e!4258338 (nullableZipper!2745 lt!2553892))))

(declare-fun b!7083109 () Bool)

(assert (=> b!7083109 (= e!4258338 (matchZipper!3254 (derivationStepZipper!3160 lt!2553892 (head!14450 s!7408)) (tail!13913 s!7408)))))

(assert (= (and d!2215493 c!1322135) b!7083108))

(assert (= (and d!2215493 (not c!1322135)) b!7083109))

(declare-fun m!7815046 () Bool)

(assert (=> d!2215493 m!7815046))

(assert (=> b!7083108 m!7814826))

(declare-fun m!7815048 () Bool)

(assert (=> b!7083109 m!7815048))

(assert (=> b!7083109 m!7815048))

(declare-fun m!7815050 () Bool)

(assert (=> b!7083109 m!7815050))

(declare-fun m!7815054 () Bool)

(assert (=> b!7083109 m!7815054))

(assert (=> b!7083109 m!7815050))

(assert (=> b!7083109 m!7815054))

(declare-fun m!7815056 () Bool)

(assert (=> b!7083109 m!7815056))

(assert (=> start!689286 d!2215493))

(declare-fun bs!1882595 () Bool)

(declare-fun d!2215495 () Bool)

(assert (= bs!1882595 (and d!2215495 b!7082975)))

(declare-fun lambda!428620 () Int)

(assert (=> bs!1882595 (= lambda!428620 lambda!428577)))

(assert (=> d!2215495 true))

(assert (=> d!2215495 (= (appendTo!835 z1!570 ct2!306) (map!16066 z1!570 lambda!428620))))

(declare-fun bs!1882596 () Bool)

(assert (= bs!1882596 d!2215495))

(declare-fun m!7815066 () Bool)

(assert (=> bs!1882596 m!7815066))

(assert (=> start!689286 d!2215495))

(declare-fun bs!1882597 () Bool)

(declare-fun d!2215499 () Bool)

(assert (= bs!1882597 (and d!2215499 d!2215471)))

(declare-fun lambda!428623 () Int)

(assert (=> bs!1882597 (not (= lambda!428623 lambda!428609))))

(declare-fun bs!1882598 () Bool)

(assert (= bs!1882598 (and d!2215499 d!2215491)))

(assert (=> bs!1882598 (not (= lambda!428623 lambda!428615))))

(declare-fun bs!1882599 () Bool)

(assert (= bs!1882599 (and d!2215499 b!7082977)))

(assert (=> bs!1882599 (not (= lambda!428623 lambda!428579))))

(declare-fun bs!1882600 () Bool)

(assert (= bs!1882600 (and d!2215499 b!7082975)))

(assert (=> bs!1882600 (= lambda!428623 lambda!428578)))

(declare-fun bs!1882601 () Bool)

(assert (= bs!1882601 (and d!2215499 d!2215485)))

(assert (=> bs!1882601 (not (= lambda!428623 lambda!428614))))

(assert (=> d!2215499 (= (inv!87145 ct2!306) (forall!16672 (exprs!7210 ct2!306) lambda!428623))))

(declare-fun bs!1882602 () Bool)

(assert (= bs!1882602 d!2215499))

(declare-fun m!7815068 () Bool)

(assert (=> bs!1882602 m!7815068))

(assert (=> start!689286 d!2215499))

(declare-fun bs!1882603 () Bool)

(declare-fun d!2215501 () Bool)

(assert (= bs!1882603 (and d!2215501 d!2215471)))

(declare-fun lambda!428626 () Int)

(assert (=> bs!1882603 (not (= lambda!428626 lambda!428609))))

(declare-fun bs!1882604 () Bool)

(assert (= bs!1882604 (and d!2215501 d!2215491)))

(assert (=> bs!1882604 (not (= lambda!428626 lambda!428615))))

(declare-fun bs!1882605 () Bool)

(assert (= bs!1882605 (and d!2215501 d!2215499)))

(assert (=> bs!1882605 (= lambda!428626 lambda!428623)))

(declare-fun bs!1882606 () Bool)

(assert (= bs!1882606 (and d!2215501 b!7082977)))

(assert (=> bs!1882606 (not (= lambda!428626 lambda!428579))))

(declare-fun bs!1882607 () Bool)

(assert (= bs!1882607 (and d!2215501 b!7082975)))

(assert (=> bs!1882607 (= lambda!428626 lambda!428578)))

(declare-fun bs!1882608 () Bool)

(assert (= bs!1882608 (and d!2215501 d!2215485)))

(assert (=> bs!1882608 (not (= lambda!428626 lambda!428614))))

(assert (=> d!2215501 (= (inv!87145 setElem!50614) (forall!16672 (exprs!7210 setElem!50614) lambda!428626))))

(declare-fun bs!1882609 () Bool)

(assert (= bs!1882609 d!2215501))

(declare-fun m!7815070 () Bool)

(assert (=> bs!1882609 m!7815070))

(assert (=> setNonEmpty!50614 d!2215501))

(declare-fun b!7083114 () Bool)

(declare-fun e!4258341 () Bool)

(declare-fun tp!1944053 () Bool)

(declare-fun tp!1944054 () Bool)

(assert (=> b!7083114 (= e!4258341 (and tp!1944053 tp!1944054))))

(assert (=> b!7082984 (= tp!1944034 e!4258341)))

(assert (= (and b!7082984 (is-Cons!68540 (exprs!7210 ct2!306))) b!7083114))

(declare-fun b!7083115 () Bool)

(declare-fun e!4258342 () Bool)

(declare-fun tp!1944055 () Bool)

(declare-fun tp!1944056 () Bool)

(assert (=> b!7083115 (= e!4258342 (and tp!1944055 tp!1944056))))

(assert (=> b!7082982 (= tp!1944035 e!4258342)))

(assert (= (and b!7082982 (is-Cons!68540 (exprs!7210 setElem!50614))) b!7083115))

(declare-fun b!7083120 () Bool)

(declare-fun e!4258345 () Bool)

(declare-fun tp!1944059 () Bool)

(assert (=> b!7083120 (= e!4258345 (and tp_is_empty!44653 tp!1944059))))

(assert (=> b!7082980 (= tp!1944033 e!4258345)))

(assert (= (and b!7082980 (is-Cons!68541 (t!382450 s!7408))) b!7083120))

(declare-fun condSetEmpty!50620 () Bool)

(assert (=> setNonEmpty!50614 (= condSetEmpty!50620 (= setRest!50614 (as set.empty (Set Context!13420))))))

(declare-fun setRes!50620 () Bool)

(assert (=> setNonEmpty!50614 (= tp!1944036 setRes!50620)))

(declare-fun setIsEmpty!50620 () Bool)

(assert (=> setIsEmpty!50620 setRes!50620))

(declare-fun tp!1944064 () Bool)

(declare-fun setNonEmpty!50620 () Bool)

(declare-fun setElem!50620 () Context!13420)

(declare-fun e!4258348 () Bool)

(assert (=> setNonEmpty!50620 (= setRes!50620 (and tp!1944064 (inv!87145 setElem!50620) e!4258348))))

(declare-fun setRest!50620 () (Set Context!13420))

(assert (=> setNonEmpty!50620 (= setRest!50614 (set.union (set.insert setElem!50620 (as set.empty (Set Context!13420))) setRest!50620))))

(declare-fun b!7083125 () Bool)

(declare-fun tp!1944065 () Bool)

(assert (=> b!7083125 (= e!4258348 tp!1944065)))

(assert (= (and setNonEmpty!50614 condSetEmpty!50620) setIsEmpty!50620))

(assert (= (and setNonEmpty!50614 (not condSetEmpty!50620)) setNonEmpty!50620))

(assert (= setNonEmpty!50620 b!7083125))

(declare-fun m!7815072 () Bool)

(assert (=> setNonEmpty!50620 m!7815072))

(declare-fun b_lambda!270703 () Bool)

(assert (= b_lambda!270701 (or b!7082981 b_lambda!270703)))

(declare-fun bs!1882610 () Bool)

(declare-fun d!2215503 () Bool)

(assert (= bs!1882610 (and d!2215503 b!7082981)))

(assert (=> bs!1882610 (= (dynLambda!27944 lambda!428576 lt!2553973) (nullableContext!125 lt!2553973))))

(declare-fun m!7815074 () Bool)

(assert (=> bs!1882610 m!7815074))

(assert (=> d!2215487 d!2215503))

(declare-fun b_lambda!270705 () Bool)

(assert (= b_lambda!270697 (or b!7082975 b_lambda!270705)))

(declare-fun bs!1882612 () Bool)

(declare-fun d!2215505 () Bool)

(assert (= bs!1882612 (and d!2215505 b!7082975)))

(declare-fun lt!2553978 () Unit!162139)

(assert (=> bs!1882612 (= lt!2553978 (lemmaConcatPreservesForall!1025 (exprs!7210 lt!2553941) (exprs!7210 ct2!306) lambda!428578))))

(assert (=> bs!1882612 (= (dynLambda!27943 lambda!428577 lt!2553941) (Context!13421 (++!15885 (exprs!7210 lt!2553941) (exprs!7210 ct2!306))))))

(declare-fun m!7815076 () Bool)

(assert (=> bs!1882612 m!7815076))

(declare-fun m!7815078 () Bool)

(assert (=> bs!1882612 m!7815078))

(assert (=> d!2215443 d!2215505))

(push 1)

(assert (not d!2215445))

(assert tp_is_empty!44653)

(assert (not setNonEmpty!50620))

(assert (not d!2215473))

(assert (not b!7083120))

(assert (not b!7083104))

(assert (not b!7083095))

(assert (not b!7083108))

(assert (not d!2215471))

(assert (not b!7083094))

(assert (not b!7083083))

(assert (not b!7083040))

(assert (not b!7083109))

(assert (not d!2215465))

(assert (not b!7083115))

(assert (not d!2215455))

(assert (not d!2215457))

(assert (not b!7083125))

(assert (not d!2215483))

(assert (not d!2215485))

(assert (not bs!1882610))

(assert (not d!2215493))

(assert (not d!2215495))

(assert (not d!2215479))

(assert (not b!7083041))

(assert (not bs!1882612))

(assert (not b!7083063))

(assert (not d!2215487))

(assert (not d!2215453))

(assert (not d!2215443))

(assert (not d!2215449))

(assert (not d!2215491))

(assert (not b!7083064))

(assert (not b!7083105))

(assert (not d!2215441))

(assert (not d!2215501))

(assert (not d!2215437))

(assert (not b_lambda!270705))

(assert (not b!7083082))

(assert (not b!7083078))

(assert (not b!7083114))

(assert (not b!7083079))

(assert (not d!2215475))

(assert (not d!2215447))

(assert (not d!2215489))

(assert (not d!2215499))

(assert (not b_lambda!270703))

(assert (not d!2215469))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

