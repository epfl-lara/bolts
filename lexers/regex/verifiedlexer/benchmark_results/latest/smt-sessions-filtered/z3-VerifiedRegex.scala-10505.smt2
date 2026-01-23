; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!541828 () Bool)

(assert start!541828)

(declare-fun bs!1194866 () Bool)

(declare-fun b!5128578 () Bool)

(declare-fun b!5128583 () Bool)

(assert (= bs!1194866 (and b!5128578 b!5128583)))

(declare-fun lambda!252663 () Int)

(declare-fun lambda!252662 () Int)

(assert (=> bs!1194866 (not (= lambda!252663 lambda!252662))))

(declare-fun bs!1194867 () Bool)

(declare-fun b!5128577 () Bool)

(assert (= bs!1194867 (and b!5128577 b!5128583)))

(declare-fun lambda!252664 () Int)

(assert (=> bs!1194867 (not (= lambda!252664 lambda!252662))))

(declare-fun bs!1194868 () Bool)

(assert (= bs!1194868 (and b!5128577 b!5128578)))

(assert (=> bs!1194868 (not (= lambda!252664 lambda!252663))))

(declare-fun e!3198486 () Bool)

(declare-datatypes ((C!28868 0))(
  ( (C!28869 (val!24086 Int)) )
))
(declare-datatypes ((Regex!14301 0))(
  ( (ElementMatch!14301 (c!881955 C!28868)) (Concat!23146 (regOne!29114 Regex!14301) (regTwo!29114 Regex!14301)) (EmptyExpr!14301) (Star!14301 (reg!14630 Regex!14301)) (EmptyLang!14301) (Union!14301 (regOne!29115 Regex!14301) (regTwo!29115 Regex!14301)) )
))
(declare-datatypes ((List!59531 0))(
  ( (Nil!59407) (Cons!59407 (h!65855 Regex!14301) (t!372558 List!59531)) )
))
(declare-datatypes ((Context!7370 0))(
  ( (Context!7371 (exprs!4185 List!59531)) )
))
(declare-fun lt!2115285 () Context!7370)

(declare-fun exists!1563 (List!59531 Int) Bool)

(assert (=> b!5128577 (= e!3198486 (exists!1563 (exprs!4185 lt!2115285) lambda!252664))))

(declare-fun setIsEmpty!30890 () Bool)

(declare-fun setRes!30890 () Bool)

(assert (=> setIsEmpty!30890 setRes!30890))

(declare-fun res!2183691 () Bool)

(assert (=> b!5128578 (=> res!2183691 e!3198486)))

(declare-fun forall!13694 (List!59531 Int) Bool)

(assert (=> b!5128578 (= res!2183691 (not (forall!13694 (exprs!4185 lt!2115285) lambda!252663)))))

(declare-fun b!5128579 () Bool)

(declare-fun res!2183695 () Bool)

(assert (=> b!5128579 (=> res!2183695 e!3198486)))

(declare-fun lostCause!1235 (Context!7370) Bool)

(assert (=> b!5128579 (= res!2183695 (not (lostCause!1235 lt!2115285)))))

(declare-fun b!5128580 () Bool)

(declare-fun e!3198484 () Bool)

(declare-fun tp!1430881 () Bool)

(assert (=> b!5128580 (= e!3198484 tp!1430881)))

(declare-fun b!5128581 () Bool)

(declare-fun res!2183693 () Bool)

(declare-fun e!3198487 () Bool)

(assert (=> b!5128581 (=> (not res!2183693) (not e!3198487))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1113 () (InoxSet Context!7370))

(declare-fun lambda!252661 () Int)

(declare-fun exists!1564 ((InoxSet Context!7370) Int) Bool)

(assert (=> b!5128581 (= res!2183693 (exists!1564 z!1113 lambda!252661))))

(declare-fun res!2183692 () Bool)

(assert (=> start!541828 (=> (not res!2183692) (not e!3198487))))

(declare-fun nullableZipper!1086 ((InoxSet Context!7370)) Bool)

(assert (=> start!541828 (= res!2183692 (nullableZipper!1086 z!1113))))

(assert (=> start!541828 e!3198487))

(declare-fun condSetEmpty!30890 () Bool)

(assert (=> start!541828 (= condSetEmpty!30890 (= z!1113 ((as const (Array Context!7370 Bool)) false)))))

(assert (=> start!541828 setRes!30890))

(declare-fun setElem!30890 () Context!7370)

(declare-fun setNonEmpty!30890 () Bool)

(declare-fun tp!1430880 () Bool)

(declare-fun inv!78933 (Context!7370) Bool)

(assert (=> setNonEmpty!30890 (= setRes!30890 (and tp!1430880 (inv!78933 setElem!30890) e!3198484))))

(declare-fun setRest!30890 () (InoxSet Context!7370))

(assert (=> setNonEmpty!30890 (= z!1113 ((_ map or) (store ((as const (Array Context!7370 Bool)) false) setElem!30890 true) setRest!30890))))

(declare-fun b!5128582 () Bool)

(declare-fun e!3198485 () Bool)

(assert (=> b!5128582 (= e!3198487 e!3198485)))

(declare-fun res!2183694 () Bool)

(assert (=> b!5128582 (=> (not res!2183694) (not e!3198485))))

(declare-fun nullableContext!20 (Context!7370) Bool)

(assert (=> b!5128582 (= res!2183694 (nullableContext!20 lt!2115285))))

(declare-fun getWitness!719 ((InoxSet Context!7370) Int) Context!7370)

(assert (=> b!5128582 (= lt!2115285 (getWitness!719 z!1113 lambda!252661))))

(assert (=> b!5128583 (= e!3198485 (not e!3198486))))

(declare-fun res!2183696 () Bool)

(assert (=> b!5128583 (=> res!2183696 e!3198486)))

(assert (=> b!5128583 (= res!2183696 (not (select z!1113 lt!2115285)))))

(assert (=> b!5128583 (forall!13694 (exprs!4185 lt!2115285) lambda!252662)))

(declare-datatypes ((Unit!150608 0))(
  ( (Unit!150609) )
))
(declare-fun lt!2115286 () Unit!150608)

(declare-fun lemmaContextForallValidExprs!16 (Context!7370 List!59531) Unit!150608)

(assert (=> b!5128583 (= lt!2115286 (lemmaContextForallValidExprs!16 lt!2115285 (exprs!4185 lt!2115285)))))

(assert (= (and start!541828 res!2183692) b!5128581))

(assert (= (and b!5128581 res!2183693) b!5128582))

(assert (= (and b!5128582 res!2183694) b!5128583))

(assert (= (and b!5128583 (not res!2183696)) b!5128578))

(assert (= (and b!5128578 (not res!2183691)) b!5128579))

(assert (= (and b!5128579 (not res!2183695)) b!5128577))

(assert (= (and start!541828 condSetEmpty!30890) setIsEmpty!30890))

(assert (= (and start!541828 (not condSetEmpty!30890)) setNonEmpty!30890))

(assert (= setNonEmpty!30890 b!5128580))

(declare-fun m!6192904 () Bool)

(assert (=> start!541828 m!6192904))

(declare-fun m!6192906 () Bool)

(assert (=> b!5128582 m!6192906))

(declare-fun m!6192908 () Bool)

(assert (=> b!5128582 m!6192908))

(declare-fun m!6192910 () Bool)

(assert (=> b!5128577 m!6192910))

(declare-fun m!6192912 () Bool)

(assert (=> b!5128581 m!6192912))

(declare-fun m!6192914 () Bool)

(assert (=> b!5128583 m!6192914))

(declare-fun m!6192916 () Bool)

(assert (=> b!5128583 m!6192916))

(declare-fun m!6192918 () Bool)

(assert (=> b!5128583 m!6192918))

(declare-fun m!6192920 () Bool)

(assert (=> b!5128579 m!6192920))

(declare-fun m!6192922 () Bool)

(assert (=> b!5128578 m!6192922))

(declare-fun m!6192924 () Bool)

(assert (=> setNonEmpty!30890 m!6192924))

(check-sat (not setNonEmpty!30890) (not start!541828) (not b!5128580) (not b!5128581) (not b!5128577) (not b!5128578) (not b!5128582) (not b!5128579) (not b!5128583))
(check-sat)
(get-model)

(declare-fun d!1659040 () Bool)

(declare-fun res!2183701 () Bool)

(declare-fun e!3198492 () Bool)

(assert (=> d!1659040 (=> res!2183701 e!3198492)))

(get-info :version)

(assert (=> d!1659040 (= res!2183701 ((_ is Nil!59407) (exprs!4185 lt!2115285)))))

(assert (=> d!1659040 (= (forall!13694 (exprs!4185 lt!2115285) lambda!252662) e!3198492)))

(declare-fun b!5128588 () Bool)

(declare-fun e!3198493 () Bool)

(assert (=> b!5128588 (= e!3198492 e!3198493)))

(declare-fun res!2183702 () Bool)

(assert (=> b!5128588 (=> (not res!2183702) (not e!3198493))))

(declare-fun dynLambda!23638 (Int Regex!14301) Bool)

(assert (=> b!5128588 (= res!2183702 (dynLambda!23638 lambda!252662 (h!65855 (exprs!4185 lt!2115285))))))

(declare-fun b!5128589 () Bool)

(assert (=> b!5128589 (= e!3198493 (forall!13694 (t!372558 (exprs!4185 lt!2115285)) lambda!252662))))

(assert (= (and d!1659040 (not res!2183701)) b!5128588))

(assert (= (and b!5128588 res!2183702) b!5128589))

(declare-fun b_lambda!199197 () Bool)

(assert (=> (not b_lambda!199197) (not b!5128588)))

(declare-fun m!6192926 () Bool)

(assert (=> b!5128588 m!6192926))

(declare-fun m!6192928 () Bool)

(assert (=> b!5128589 m!6192928))

(assert (=> b!5128583 d!1659040))

(declare-fun bs!1194873 () Bool)

(declare-fun d!1659044 () Bool)

(assert (= bs!1194873 (and d!1659044 b!5128583)))

(declare-fun lambda!252670 () Int)

(assert (=> bs!1194873 (= lambda!252670 lambda!252662)))

(declare-fun bs!1194874 () Bool)

(assert (= bs!1194874 (and d!1659044 b!5128578)))

(assert (=> bs!1194874 (not (= lambda!252670 lambda!252663))))

(declare-fun bs!1194875 () Bool)

(assert (= bs!1194875 (and d!1659044 b!5128577)))

(assert (=> bs!1194875 (not (= lambda!252670 lambda!252664))))

(assert (=> d!1659044 (forall!13694 (exprs!4185 lt!2115285) lambda!252670)))

(declare-fun lt!2115289 () Unit!150608)

(declare-fun choose!37797 (Context!7370 List!59531) Unit!150608)

(assert (=> d!1659044 (= lt!2115289 (choose!37797 lt!2115285 (exprs!4185 lt!2115285)))))

(assert (=> d!1659044 (= (exprs!4185 lt!2115285) (exprs!4185 lt!2115285))))

(assert (=> d!1659044 (= (lemmaContextForallValidExprs!16 lt!2115285 (exprs!4185 lt!2115285)) lt!2115289)))

(declare-fun bs!1194877 () Bool)

(assert (= bs!1194877 d!1659044))

(declare-fun m!6192934 () Bool)

(assert (=> bs!1194877 m!6192934))

(declare-fun m!6192940 () Bool)

(assert (=> bs!1194877 m!6192940))

(assert (=> b!5128583 d!1659044))

(declare-fun bs!1194878 () Bool)

(declare-fun d!1659050 () Bool)

(assert (= bs!1194878 (and d!1659050 b!5128583)))

(declare-fun lambda!252673 () Int)

(assert (=> bs!1194878 (not (= lambda!252673 lambda!252662))))

(declare-fun bs!1194879 () Bool)

(assert (= bs!1194879 (and d!1659050 b!5128578)))

(assert (=> bs!1194879 (= lambda!252673 lambda!252663)))

(declare-fun bs!1194880 () Bool)

(assert (= bs!1194880 (and d!1659050 b!5128577)))

(assert (=> bs!1194880 (not (= lambda!252673 lambda!252664))))

(declare-fun bs!1194881 () Bool)

(assert (= bs!1194881 (and d!1659050 d!1659044)))

(assert (=> bs!1194881 (not (= lambda!252673 lambda!252670))))

(assert (=> d!1659050 (= (nullableContext!20 lt!2115285) (forall!13694 (exprs!4185 lt!2115285) lambda!252673))))

(declare-fun bs!1194882 () Bool)

(assert (= bs!1194882 d!1659050))

(declare-fun m!6192942 () Bool)

(assert (=> bs!1194882 m!6192942))

(assert (=> b!5128582 d!1659050))

(declare-fun d!1659052 () Bool)

(declare-fun e!3198504 () Bool)

(assert (=> d!1659052 e!3198504))

(declare-fun res!2183713 () Bool)

(assert (=> d!1659052 (=> (not res!2183713) (not e!3198504))))

(declare-fun lt!2115298 () Context!7370)

(declare-fun dynLambda!23640 (Int Context!7370) Bool)

(assert (=> d!1659052 (= res!2183713 (dynLambda!23640 lambda!252661 lt!2115298))))

(declare-datatypes ((List!59533 0))(
  ( (Nil!59409) (Cons!59409 (h!65857 Context!7370) (t!372560 List!59533)) )
))
(declare-fun getWitness!720 (List!59533 Int) Context!7370)

(declare-fun toList!8298 ((InoxSet Context!7370)) List!59533)

(assert (=> d!1659052 (= lt!2115298 (getWitness!720 (toList!8298 z!1113) lambda!252661))))

(assert (=> d!1659052 (exists!1564 z!1113 lambda!252661)))

(assert (=> d!1659052 (= (getWitness!719 z!1113 lambda!252661) lt!2115298)))

(declare-fun b!5128600 () Bool)

(assert (=> b!5128600 (= e!3198504 (select z!1113 lt!2115298))))

(assert (= (and d!1659052 res!2183713) b!5128600))

(declare-fun b_lambda!199203 () Bool)

(assert (=> (not b_lambda!199203) (not d!1659052)))

(declare-fun m!6192954 () Bool)

(assert (=> d!1659052 m!6192954))

(declare-fun m!6192958 () Bool)

(assert (=> d!1659052 m!6192958))

(assert (=> d!1659052 m!6192958))

(declare-fun m!6192960 () Bool)

(assert (=> d!1659052 m!6192960))

(assert (=> d!1659052 m!6192912))

(declare-fun m!6192962 () Bool)

(assert (=> b!5128600 m!6192962))

(assert (=> b!5128582 d!1659052))

(declare-fun d!1659060 () Bool)

(declare-fun res!2183714 () Bool)

(declare-fun e!3198505 () Bool)

(assert (=> d!1659060 (=> res!2183714 e!3198505)))

(assert (=> d!1659060 (= res!2183714 ((_ is Nil!59407) (exprs!4185 lt!2115285)))))

(assert (=> d!1659060 (= (forall!13694 (exprs!4185 lt!2115285) lambda!252663) e!3198505)))

(declare-fun b!5128601 () Bool)

(declare-fun e!3198506 () Bool)

(assert (=> b!5128601 (= e!3198505 e!3198506)))

(declare-fun res!2183715 () Bool)

(assert (=> b!5128601 (=> (not res!2183715) (not e!3198506))))

(assert (=> b!5128601 (= res!2183715 (dynLambda!23638 lambda!252663 (h!65855 (exprs!4185 lt!2115285))))))

(declare-fun b!5128602 () Bool)

(assert (=> b!5128602 (= e!3198506 (forall!13694 (t!372558 (exprs!4185 lt!2115285)) lambda!252663))))

(assert (= (and d!1659060 (not res!2183714)) b!5128601))

(assert (= (and b!5128601 res!2183715) b!5128602))

(declare-fun b_lambda!199205 () Bool)

(assert (=> (not b_lambda!199205) (not b!5128601)))

(declare-fun m!6192964 () Bool)

(assert (=> b!5128601 m!6192964))

(declare-fun m!6192966 () Bool)

(assert (=> b!5128602 m!6192966))

(assert (=> b!5128578 d!1659060))

(declare-fun bs!1194890 () Bool)

(declare-fun d!1659062 () Bool)

(assert (= bs!1194890 (and d!1659062 b!5128581)))

(declare-fun lambda!252682 () Int)

(assert (=> bs!1194890 (= lambda!252682 lambda!252661)))

(assert (=> d!1659062 (= (nullableZipper!1086 z!1113) (exists!1564 z!1113 lambda!252682))))

(declare-fun bs!1194891 () Bool)

(assert (= bs!1194891 d!1659062))

(declare-fun m!6192970 () Bool)

(assert (=> bs!1194891 m!6192970))

(assert (=> start!541828 d!1659062))

(declare-fun bs!1194898 () Bool)

(declare-fun d!1659066 () Bool)

(assert (= bs!1194898 (and d!1659066 b!5128578)))

(declare-fun lambda!252688 () Int)

(assert (=> bs!1194898 (not (= lambda!252688 lambda!252663))))

(declare-fun bs!1194899 () Bool)

(assert (= bs!1194899 (and d!1659066 d!1659050)))

(assert (=> bs!1194899 (not (= lambda!252688 lambda!252673))))

(declare-fun bs!1194900 () Bool)

(assert (= bs!1194900 (and d!1659066 d!1659044)))

(assert (=> bs!1194900 (= lambda!252688 lambda!252670)))

(declare-fun bs!1194901 () Bool)

(assert (= bs!1194901 (and d!1659066 b!5128577)))

(assert (=> bs!1194901 (not (= lambda!252688 lambda!252664))))

(declare-fun bs!1194902 () Bool)

(assert (= bs!1194902 (and d!1659066 b!5128583)))

(assert (=> bs!1194902 (= lambda!252688 lambda!252662)))

(assert (=> d!1659066 (= (inv!78933 setElem!30890) (forall!13694 (exprs!4185 setElem!30890) lambda!252688))))

(declare-fun bs!1194903 () Bool)

(assert (= bs!1194903 d!1659066))

(declare-fun m!6192974 () Bool)

(assert (=> bs!1194903 m!6192974))

(assert (=> setNonEmpty!30890 d!1659066))

(declare-fun d!1659070 () Bool)

(declare-fun lt!2115301 () Bool)

(declare-fun exists!1566 (List!59533 Int) Bool)

(assert (=> d!1659070 (= lt!2115301 (exists!1566 (toList!8298 z!1113) lambda!252661))))

(declare-fun choose!37799 ((InoxSet Context!7370) Int) Bool)

(assert (=> d!1659070 (= lt!2115301 (choose!37799 z!1113 lambda!252661))))

(assert (=> d!1659070 (= (exists!1564 z!1113 lambda!252661) lt!2115301)))

(declare-fun bs!1194911 () Bool)

(assert (= bs!1194911 d!1659070))

(assert (=> bs!1194911 m!6192958))

(assert (=> bs!1194911 m!6192958))

(declare-fun m!6192978 () Bool)

(assert (=> bs!1194911 m!6192978))

(declare-fun m!6192980 () Bool)

(assert (=> bs!1194911 m!6192980))

(assert (=> b!5128581 d!1659070))

(declare-fun bs!1194912 () Bool)

(declare-fun d!1659074 () Bool)

(assert (= bs!1194912 (and d!1659074 b!5128578)))

(declare-fun lambda!252694 () Int)

(assert (=> bs!1194912 (not (= lambda!252694 lambda!252663))))

(declare-fun bs!1194913 () Bool)

(assert (= bs!1194913 (and d!1659074 d!1659050)))

(assert (=> bs!1194913 (not (= lambda!252694 lambda!252673))))

(declare-fun bs!1194914 () Bool)

(assert (= bs!1194914 (and d!1659074 d!1659044)))

(assert (=> bs!1194914 (not (= lambda!252694 lambda!252670))))

(declare-fun bs!1194915 () Bool)

(assert (= bs!1194915 (and d!1659074 b!5128577)))

(assert (=> bs!1194915 (not (= lambda!252694 lambda!252664))))

(declare-fun bs!1194916 () Bool)

(assert (= bs!1194916 (and d!1659074 d!1659066)))

(assert (=> bs!1194916 (not (= lambda!252694 lambda!252688))))

(declare-fun bs!1194917 () Bool)

(assert (= bs!1194917 (and d!1659074 b!5128583)))

(assert (=> bs!1194917 (not (= lambda!252694 lambda!252662))))

(assert (=> d!1659074 true))

(declare-fun order!26815 () Int)

(declare-fun dynLambda!23641 (Int Int) Int)

(assert (=> d!1659074 (< (dynLambda!23641 order!26815 lambda!252664) (dynLambda!23641 order!26815 lambda!252694))))

(assert (=> d!1659074 (= (exists!1563 (exprs!4185 lt!2115285) lambda!252664) (not (forall!13694 (exprs!4185 lt!2115285) lambda!252694)))))

(declare-fun bs!1194918 () Bool)

(assert (= bs!1194918 d!1659074))

(declare-fun m!6192982 () Bool)

(assert (=> bs!1194918 m!6192982))

(assert (=> b!5128577 d!1659074))

(declare-fun bs!1194919 () Bool)

(declare-fun d!1659076 () Bool)

(assert (= bs!1194919 (and d!1659076 b!5128578)))

(declare-fun lambda!252700 () Int)

(assert (=> bs!1194919 (not (= lambda!252700 lambda!252663))))

(declare-fun bs!1194920 () Bool)

(assert (= bs!1194920 (and d!1659076 d!1659050)))

(assert (=> bs!1194920 (not (= lambda!252700 lambda!252673))))

(declare-fun bs!1194921 () Bool)

(assert (= bs!1194921 (and d!1659076 d!1659044)))

(assert (=> bs!1194921 (not (= lambda!252700 lambda!252670))))

(declare-fun bs!1194922 () Bool)

(assert (= bs!1194922 (and d!1659076 b!5128577)))

(assert (=> bs!1194922 (= lambda!252700 lambda!252664)))

(declare-fun bs!1194924 () Bool)

(assert (= bs!1194924 (and d!1659076 d!1659066)))

(assert (=> bs!1194924 (not (= lambda!252700 lambda!252688))))

(declare-fun bs!1194925 () Bool)

(assert (= bs!1194925 (and d!1659076 b!5128583)))

(assert (=> bs!1194925 (not (= lambda!252700 lambda!252662))))

(declare-fun bs!1194927 () Bool)

(assert (= bs!1194927 (and d!1659076 d!1659074)))

(assert (=> bs!1194927 (not (= lambda!252700 lambda!252694))))

(assert (=> d!1659076 (= (lostCause!1235 lt!2115285) (exists!1563 (exprs!4185 lt!2115285) lambda!252700))))

(declare-fun bs!1194931 () Bool)

(assert (= bs!1194931 d!1659076))

(declare-fun m!6192990 () Bool)

(assert (=> bs!1194931 m!6192990))

(assert (=> b!5128579 d!1659076))

(declare-fun condSetEmpty!30895 () Bool)

(assert (=> setNonEmpty!30890 (= condSetEmpty!30895 (= setRest!30890 ((as const (Array Context!7370 Bool)) false)))))

(declare-fun setRes!30895 () Bool)

(assert (=> setNonEmpty!30890 (= tp!1430880 setRes!30895)))

(declare-fun setIsEmpty!30895 () Bool)

(assert (=> setIsEmpty!30895 setRes!30895))

(declare-fun setNonEmpty!30895 () Bool)

(declare-fun tp!1430891 () Bool)

(declare-fun e!3198514 () Bool)

(declare-fun setElem!30895 () Context!7370)

(assert (=> setNonEmpty!30895 (= setRes!30895 (and tp!1430891 (inv!78933 setElem!30895) e!3198514))))

(declare-fun setRest!30895 () (InoxSet Context!7370))

(assert (=> setNonEmpty!30895 (= setRest!30890 ((_ map or) (store ((as const (Array Context!7370 Bool)) false) setElem!30895 true) setRest!30895))))

(declare-fun b!5128618 () Bool)

(declare-fun tp!1430890 () Bool)

(assert (=> b!5128618 (= e!3198514 tp!1430890)))

(assert (= (and setNonEmpty!30890 condSetEmpty!30895) setIsEmpty!30895))

(assert (= (and setNonEmpty!30890 (not condSetEmpty!30895)) setNonEmpty!30895))

(assert (= setNonEmpty!30895 b!5128618))

(declare-fun m!6192994 () Bool)

(assert (=> setNonEmpty!30895 m!6192994))

(declare-fun b!5128628 () Bool)

(declare-fun e!3198520 () Bool)

(declare-fun tp!1430902 () Bool)

(declare-fun tp!1430903 () Bool)

(assert (=> b!5128628 (= e!3198520 (and tp!1430902 tp!1430903))))

(assert (=> b!5128580 (= tp!1430881 e!3198520)))

(assert (= (and b!5128580 ((_ is Cons!59407) (exprs!4185 setElem!30890))) b!5128628))

(declare-fun b_lambda!199209 () Bool)

(assert (= b_lambda!199197 (or b!5128583 b_lambda!199209)))

(declare-fun bs!1194935 () Bool)

(declare-fun d!1659080 () Bool)

(assert (= bs!1194935 (and d!1659080 b!5128583)))

(declare-fun validRegex!6227 (Regex!14301) Bool)

(assert (=> bs!1194935 (= (dynLambda!23638 lambda!252662 (h!65855 (exprs!4185 lt!2115285))) (validRegex!6227 (h!65855 (exprs!4185 lt!2115285))))))

(declare-fun m!6192998 () Bool)

(assert (=> bs!1194935 m!6192998))

(assert (=> b!5128588 d!1659080))

(declare-fun b_lambda!199211 () Bool)

(assert (= b_lambda!199205 (or b!5128578 b_lambda!199211)))

(declare-fun bs!1194937 () Bool)

(declare-fun d!1659084 () Bool)

(assert (= bs!1194937 (and d!1659084 b!5128578)))

(declare-fun nullable!4731 (Regex!14301) Bool)

(assert (=> bs!1194937 (= (dynLambda!23638 lambda!252663 (h!65855 (exprs!4185 lt!2115285))) (nullable!4731 (h!65855 (exprs!4185 lt!2115285))))))

(declare-fun m!6193002 () Bool)

(assert (=> bs!1194937 m!6193002))

(assert (=> b!5128601 d!1659084))

(declare-fun b_lambda!199213 () Bool)

(assert (= b_lambda!199203 (or b!5128581 b_lambda!199213)))

(declare-fun bs!1194939 () Bool)

(declare-fun d!1659088 () Bool)

(assert (= bs!1194939 (and d!1659088 b!5128581)))

(assert (=> bs!1194939 (= (dynLambda!23640 lambda!252661 lt!2115298) (nullableContext!20 lt!2115298))))

(declare-fun m!6193006 () Bool)

(assert (=> bs!1194939 m!6193006))

(assert (=> d!1659052 d!1659088))

(check-sat (not d!1659066) (not bs!1194937) (not b_lambda!199211) (not bs!1194939) (not d!1659050) (not b!5128602) (not d!1659076) (not d!1659044) (not d!1659070) (not d!1659062) (not b!5128589) (not d!1659052) (not b!5128628) (not bs!1194935) (not b_lambda!199209) (not setNonEmpty!30895) (not b!5128618) (not b_lambda!199213) (not d!1659074))
(check-sat)
