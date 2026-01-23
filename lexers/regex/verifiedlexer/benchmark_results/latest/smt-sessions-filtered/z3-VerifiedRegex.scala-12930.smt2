; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!712804 () Bool)

(assert start!712804)

(declare-fun b_free!134021 () Bool)

(declare-fun b_next!134811 () Bool)

(assert (=> start!712804 (= b_free!134021 (not b_next!134811))))

(declare-fun tp!2075930 () Bool)

(declare-fun b_and!351427 () Bool)

(assert (=> start!712804 (= tp!2075930 b_and!351427)))

(declare-fun b!7314907 () Bool)

(assert (=> b!7314907 true))

(declare-fun setIsEmpty!54223 () Bool)

(declare-fun setRes!54223 () Bool)

(assert (=> setIsEmpty!54223 setRes!54223))

(declare-fun b!7314905 () Bool)

(declare-fun e!4378820 () Bool)

(declare-fun tp_is_empty!47531 () Bool)

(declare-fun tp!2075931 () Bool)

(assert (=> b!7314905 (= e!4378820 (and tp_is_empty!47531 tp!2075931))))

(declare-fun b!7314906 () Bool)

(declare-fun res!2955876 () Bool)

(declare-fun e!4378819 () Bool)

(assert (=> b!7314906 (=> (not res!2955876) (not e!4378819))))

(declare-datatypes ((B!3569 0))(
  ( (B!3570 (val!29125 Int)) )
))
(declare-datatypes ((List!71199 0))(
  ( (Nil!71075) (Cons!71075 (h!77523 B!3569) (t!385431 List!71199)) )
))
(declare-fun lRes!18 () List!71199)

(get-info :version)

(assert (=> b!7314906 (= res!2955876 (not ((_ is Cons!71075) lRes!18)))))

(declare-fun lambda!451944 () Int)

(declare-fun forall!17758 (List!71199 Int) Bool)

(assert (=> b!7314907 (= e!4378819 (not (forall!17758 lRes!18 lambda!451944)))))

(declare-fun lt!2601730 () List!71199)

(declare-fun f!883 () Int)

(declare-datatypes ((A!867 0))(
  ( (A!868 (val!29126 Int)) )
))
(declare-fun elmt!118 () A!867)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun toList!11608 ((InoxSet B!3569)) List!71199)

(declare-fun dynLambda!29145 (Int A!867) (InoxSet B!3569))

(assert (=> b!7314907 (= lt!2601730 (toList!11608 (dynLambda!29145 f!883 elmt!118)))))

(declare-fun res!2955877 () Bool)

(assert (=> start!712804 (=> (not res!2955877) (not e!4378819))))

(declare-fun s!1437 () (InoxSet A!867))

(assert (=> start!712804 (= res!2955877 (= s!1437 (store ((as const (Array A!867 Bool)) false) elmt!118 true)))))

(assert (=> start!712804 e!4378819))

(declare-fun condSetEmpty!54223 () Bool)

(assert (=> start!712804 (= condSetEmpty!54223 (= s!1437 ((as const (Array A!867 Bool)) false)))))

(assert (=> start!712804 setRes!54223))

(declare-fun tp_is_empty!47529 () Bool)

(assert (=> start!712804 tp_is_empty!47529))

(assert (=> start!712804 e!4378820))

(assert (=> start!712804 tp!2075930))

(declare-fun b!7314908 () Bool)

(declare-fun res!2955878 () Bool)

(assert (=> b!7314908 (=> (not res!2955878) (not e!4378819))))

(declare-fun subseq!845 (List!71199 List!71199) Bool)

(declare-fun flatMap!3044 ((InoxSet A!867) Int) (InoxSet B!3569))

(assert (=> b!7314908 (= res!2955878 (subseq!845 lRes!18 (toList!11608 (flatMap!3044 s!1437 f!883))))))

(declare-fun setNonEmpty!54223 () Bool)

(declare-fun tp!2075929 () Bool)

(assert (=> setNonEmpty!54223 (= setRes!54223 (and tp!2075929 tp_is_empty!47529))))

(declare-fun setElem!54223 () A!867)

(declare-fun setRest!54223 () (InoxSet A!867))

(assert (=> setNonEmpty!54223 (= s!1437 ((_ map or) (store ((as const (Array A!867 Bool)) false) setElem!54223 true) setRest!54223))))

(assert (= (and start!712804 res!2955877) b!7314908))

(assert (= (and b!7314908 res!2955878) b!7314906))

(assert (= (and b!7314906 res!2955876) b!7314907))

(assert (= (and start!712804 condSetEmpty!54223) setIsEmpty!54223))

(assert (= (and start!712804 (not condSetEmpty!54223)) setNonEmpty!54223))

(assert (= (and start!712804 ((_ is Cons!71075) lRes!18)) b!7314905))

(declare-fun b_lambda!282493 () Bool)

(assert (=> (not b_lambda!282493) (not b!7314907)))

(declare-fun t!385430 () Bool)

(declare-fun tb!262249 () Bool)

(assert (=> (and start!712804 (= f!883 f!883) t!385430) tb!262249))

(assert (=> b!7314907 t!385430))

(declare-fun result!352988 () Bool)

(declare-fun b_and!351429 () Bool)

(assert (= b_and!351427 (and (=> t!385430 result!352988) b_and!351429)))

(declare-fun m!7978980 () Bool)

(assert (=> b!7314907 m!7978980))

(declare-fun m!7978982 () Bool)

(assert (=> b!7314907 m!7978982))

(assert (=> b!7314907 m!7978982))

(declare-fun m!7978984 () Bool)

(assert (=> b!7314907 m!7978984))

(declare-fun m!7978986 () Bool)

(assert (=> start!712804 m!7978986))

(declare-fun m!7978988 () Bool)

(assert (=> b!7314908 m!7978988))

(assert (=> b!7314908 m!7978988))

(declare-fun m!7978990 () Bool)

(assert (=> b!7314908 m!7978990))

(assert (=> b!7314908 m!7978990))

(declare-fun m!7978992 () Bool)

(assert (=> b!7314908 m!7978992))

(check-sat tp_is_empty!47529 tp_is_empty!47531 (not b!7314905) (not b_lambda!282493) (not b_next!134811) (not b!7314907) (not setNonEmpty!54223) b_and!351429 (not tb!262249) (not b!7314908))
(check-sat b_and!351429 (not b_next!134811))
(get-model)

(declare-fun b_lambda!282495 () Bool)

(assert (= b_lambda!282493 (or (and start!712804 b_free!134021) b_lambda!282495)))

(check-sat tp_is_empty!47529 tp_is_empty!47531 (not b!7314905) (not b_next!134811) (not b!7314907) (not setNonEmpty!54223) b_and!351429 (not tb!262249) (not b_lambda!282495) (not b!7314908))
(check-sat b_and!351429 (not b_next!134811))
(get-model)

(declare-fun d!2271169 () Bool)

(declare-fun res!2955883 () Bool)

(declare-fun e!4378825 () Bool)

(assert (=> d!2271169 (=> res!2955883 e!4378825)))

(assert (=> d!2271169 (= res!2955883 ((_ is Nil!71075) lRes!18))))

(assert (=> d!2271169 (= (forall!17758 lRes!18 lambda!451944) e!4378825)))

(declare-fun b!7314915 () Bool)

(declare-fun e!4378826 () Bool)

(assert (=> b!7314915 (= e!4378825 e!4378826)))

(declare-fun res!2955884 () Bool)

(assert (=> b!7314915 (=> (not res!2955884) (not e!4378826))))

(declare-fun dynLambda!29146 (Int B!3569) Bool)

(assert (=> b!7314915 (= res!2955884 (dynLambda!29146 lambda!451944 (h!77523 lRes!18)))))

(declare-fun b!7314916 () Bool)

(assert (=> b!7314916 (= e!4378826 (forall!17758 (t!385431 lRes!18) lambda!451944))))

(assert (= (and d!2271169 (not res!2955883)) b!7314915))

(assert (= (and b!7314915 res!2955884) b!7314916))

(declare-fun b_lambda!282499 () Bool)

(assert (=> (not b_lambda!282499) (not b!7314915)))

(declare-fun m!7978994 () Bool)

(assert (=> b!7314915 m!7978994))

(declare-fun m!7978996 () Bool)

(assert (=> b!7314916 m!7978996))

(assert (=> b!7314907 d!2271169))

(declare-fun d!2271171 () Bool)

(declare-fun e!4378829 () Bool)

(assert (=> d!2271171 e!4378829))

(declare-fun res!2955887 () Bool)

(assert (=> d!2271171 (=> (not res!2955887) (not e!4378829))))

(declare-fun lt!2601733 () List!71199)

(declare-fun noDuplicate!3056 (List!71199) Bool)

(assert (=> d!2271171 (= res!2955887 (noDuplicate!3056 lt!2601733))))

(declare-fun choose!56714 ((InoxSet B!3569)) List!71199)

(assert (=> d!2271171 (= lt!2601733 (choose!56714 (dynLambda!29145 f!883 elmt!118)))))

(assert (=> d!2271171 (= (toList!11608 (dynLambda!29145 f!883 elmt!118)) lt!2601733)))

(declare-fun b!7314919 () Bool)

(declare-fun content!14875 (List!71199) (InoxSet B!3569))

(assert (=> b!7314919 (= e!4378829 (= (content!14875 lt!2601733) (dynLambda!29145 f!883 elmt!118)))))

(assert (= (and d!2271171 res!2955887) b!7314919))

(declare-fun m!7978998 () Bool)

(assert (=> d!2271171 m!7978998))

(assert (=> d!2271171 m!7978982))

(declare-fun m!7979000 () Bool)

(assert (=> d!2271171 m!7979000))

(declare-fun m!7979002 () Bool)

(assert (=> b!7314919 m!7979002))

(assert (=> b!7314907 d!2271171))

(declare-fun e!4378838 () Bool)

(declare-fun b!7314930 () Bool)

(assert (=> b!7314930 (= e!4378838 (subseq!845 (t!385431 lRes!18) (t!385431 (toList!11608 (flatMap!3044 s!1437 f!883)))))))

(declare-fun b!7314931 () Bool)

(declare-fun e!4378841 () Bool)

(assert (=> b!7314931 (= e!4378841 (subseq!845 lRes!18 (t!385431 (toList!11608 (flatMap!3044 s!1437 f!883)))))))

(declare-fun b!7314928 () Bool)

(declare-fun e!4378840 () Bool)

(declare-fun e!4378839 () Bool)

(assert (=> b!7314928 (= e!4378840 e!4378839)))

(declare-fun res!2955898 () Bool)

(assert (=> b!7314928 (=> (not res!2955898) (not e!4378839))))

(assert (=> b!7314928 (= res!2955898 ((_ is Cons!71075) (toList!11608 (flatMap!3044 s!1437 f!883))))))

(declare-fun d!2271173 () Bool)

(declare-fun res!2955899 () Bool)

(assert (=> d!2271173 (=> res!2955899 e!4378840)))

(assert (=> d!2271173 (= res!2955899 ((_ is Nil!71075) lRes!18))))

(assert (=> d!2271173 (= (subseq!845 lRes!18 (toList!11608 (flatMap!3044 s!1437 f!883))) e!4378840)))

(declare-fun b!7314929 () Bool)

(assert (=> b!7314929 (= e!4378839 e!4378841)))

(declare-fun res!2955896 () Bool)

(assert (=> b!7314929 (=> res!2955896 e!4378841)))

(assert (=> b!7314929 (= res!2955896 e!4378838)))

(declare-fun res!2955897 () Bool)

(assert (=> b!7314929 (=> (not res!2955897) (not e!4378838))))

(assert (=> b!7314929 (= res!2955897 (= (h!77523 lRes!18) (h!77523 (toList!11608 (flatMap!3044 s!1437 f!883)))))))

(assert (= (and d!2271173 (not res!2955899)) b!7314928))

(assert (= (and b!7314928 res!2955898) b!7314929))

(assert (= (and b!7314929 res!2955897) b!7314930))

(assert (= (and b!7314929 (not res!2955896)) b!7314931))

(declare-fun m!7979004 () Bool)

(assert (=> b!7314930 m!7979004))

(declare-fun m!7979006 () Bool)

(assert (=> b!7314931 m!7979006))

(assert (=> b!7314908 d!2271173))

(declare-fun d!2271177 () Bool)

(declare-fun e!4378850 () Bool)

(assert (=> d!2271177 e!4378850))

(declare-fun res!2955908 () Bool)

(assert (=> d!2271177 (=> (not res!2955908) (not e!4378850))))

(declare-fun lt!2601734 () List!71199)

(assert (=> d!2271177 (= res!2955908 (noDuplicate!3056 lt!2601734))))

(assert (=> d!2271177 (= lt!2601734 (choose!56714 (flatMap!3044 s!1437 f!883)))))

(assert (=> d!2271177 (= (toList!11608 (flatMap!3044 s!1437 f!883)) lt!2601734)))

(declare-fun b!7314940 () Bool)

(assert (=> b!7314940 (= e!4378850 (= (content!14875 lt!2601734) (flatMap!3044 s!1437 f!883)))))

(assert (= (and d!2271177 res!2955908) b!7314940))

(declare-fun m!7979008 () Bool)

(assert (=> d!2271177 m!7979008))

(assert (=> d!2271177 m!7978988))

(declare-fun m!7979010 () Bool)

(assert (=> d!2271177 m!7979010))

(declare-fun m!7979012 () Bool)

(assert (=> b!7314940 m!7979012))

(assert (=> b!7314908 d!2271177))

(declare-fun d!2271179 () Bool)

(declare-fun choose!56715 ((InoxSet A!867) Int) (InoxSet B!3569))

(assert (=> d!2271179 (= (flatMap!3044 s!1437 f!883) (choose!56715 s!1437 f!883))))

(declare-fun bs!1914706 () Bool)

(assert (= bs!1914706 d!2271179))

(declare-fun m!7979014 () Bool)

(assert (=> bs!1914706 m!7979014))

(assert (=> b!7314908 d!2271179))

(declare-fun b!7314949 () Bool)

(declare-fun e!4378857 () Bool)

(declare-fun tp!2075934 () Bool)

(assert (=> b!7314949 (= e!4378857 (and tp_is_empty!47531 tp!2075934))))

(assert (=> b!7314905 (= tp!2075931 e!4378857)))

(assert (= (and b!7314905 ((_ is Cons!71075) (t!385431 lRes!18))) b!7314949))

(declare-fun condSetEmpty!54226 () Bool)

(assert (=> tb!262249 (= condSetEmpty!54226 (= (dynLambda!29145 f!883 elmt!118) ((as const (Array B!3569 Bool)) false)))))

(declare-fun setRes!54226 () Bool)

(assert (=> tb!262249 (= result!352988 setRes!54226)))

(declare-fun setIsEmpty!54226 () Bool)

(assert (=> setIsEmpty!54226 setRes!54226))

(declare-fun setNonEmpty!54226 () Bool)

(declare-fun tp!2075937 () Bool)

(assert (=> setNonEmpty!54226 (= setRes!54226 (and tp!2075937 tp_is_empty!47531))))

(declare-fun setRest!54226 () (InoxSet B!3569))

(declare-fun setElem!54226 () B!3569)

(assert (=> setNonEmpty!54226 (= (dynLambda!29145 f!883 elmt!118) ((_ map or) (store ((as const (Array B!3569 Bool)) false) setElem!54226 true) setRest!54226))))

(assert (= (and tb!262249 condSetEmpty!54226) setIsEmpty!54226))

(assert (= (and tb!262249 (not condSetEmpty!54226)) setNonEmpty!54226))

(declare-fun condSetEmpty!54229 () Bool)

(assert (=> setNonEmpty!54223 (= condSetEmpty!54229 (= setRest!54223 ((as const (Array A!867 Bool)) false)))))

(declare-fun setRes!54229 () Bool)

(assert (=> setNonEmpty!54223 (= tp!2075929 setRes!54229)))

(declare-fun setIsEmpty!54229 () Bool)

(assert (=> setIsEmpty!54229 setRes!54229))

(declare-fun setNonEmpty!54229 () Bool)

(declare-fun tp!2075940 () Bool)

(assert (=> setNonEmpty!54229 (= setRes!54229 (and tp!2075940 tp_is_empty!47529))))

(declare-fun setElem!54229 () A!867)

(declare-fun setRest!54229 () (InoxSet A!867))

(assert (=> setNonEmpty!54229 (= setRest!54223 ((_ map or) (store ((as const (Array A!867 Bool)) false) setElem!54229 true) setRest!54229))))

(assert (= (and setNonEmpty!54223 condSetEmpty!54229) setIsEmpty!54229))

(assert (= (and setNonEmpty!54223 (not condSetEmpty!54229)) setNonEmpty!54229))

(declare-fun b_lambda!282501 () Bool)

(assert (= b_lambda!282499 (or b!7314907 b_lambda!282501)))

(declare-fun bs!1914707 () Bool)

(declare-fun d!2271183 () Bool)

(assert (= bs!1914707 (and d!2271183 b!7314907)))

(declare-fun contains!20796 (List!71199 B!3569) Bool)

(assert (=> bs!1914707 (= (dynLambda!29146 lambda!451944 (h!77523 lRes!18)) (contains!20796 lt!2601730 (h!77523 lRes!18)))))

(declare-fun m!7979020 () Bool)

(assert (=> bs!1914707 m!7979020))

(assert (=> b!7314915 d!2271183))

(check-sat (not d!2271179) (not b!7314931) (not setNonEmpty!54229) (not b!7314916) (not d!2271177) (not b_next!134811) (not b!7314940) b_and!351429 (not d!2271171) (not bs!1914707) (not b!7314919) tp_is_empty!47529 (not b!7314930) tp_is_empty!47531 (not b_lambda!282495) (not b!7314949) (not setNonEmpty!54226) (not b_lambda!282501))
(check-sat b_and!351429 (not b_next!134811))
