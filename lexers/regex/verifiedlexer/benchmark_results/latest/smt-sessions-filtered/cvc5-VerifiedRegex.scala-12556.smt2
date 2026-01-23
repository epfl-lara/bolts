; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!696858 () Bool)

(assert start!696858)

(declare-fun b!7146998 () Bool)

(assert (=> b!7146998 true))

(declare-fun b!7146994 () Bool)

(declare-fun e!4294842 () Bool)

(declare-fun tp!1972147 () Bool)

(assert (=> b!7146994 (= e!4294842 tp!1972147)))

(declare-fun res!2915809 () Bool)

(declare-fun e!4294844 () Bool)

(assert (=> start!696858 (=> (not res!2915809) (not e!4294844))))

(declare-datatypes ((C!36714 0))(
  ( (C!36715 (val!28305 Int)) )
))
(declare-datatypes ((Regex!18220 0))(
  ( (ElementMatch!18220 (c!1332717 C!36714)) (Concat!27065 (regOne!36952 Regex!18220) (regTwo!36952 Regex!18220)) (EmptyExpr!18220) (Star!18220 (reg!18549 Regex!18220)) (EmptyLang!18220) (Union!18220 (regOne!36953 Regex!18220) (regTwo!36953 Regex!18220)) )
))
(declare-datatypes ((List!69518 0))(
  ( (Nil!69394) (Cons!69394 (h!75842 Regex!18220) (t!383535 List!69518)) )
))
(declare-datatypes ((Context!14428 0))(
  ( (Context!14429 (exprs!7714 List!69518)) )
))
(declare-datatypes ((List!69519 0))(
  ( (Nil!69395) (Cons!69395 (h!75843 Context!14428) (t!383536 List!69519)) )
))
(declare-fun zl!333 () List!69519)

(declare-fun r!7278 () Regex!18220)

(declare-fun contains!20652 (List!69518 Regex!18220) Bool)

(declare-fun unfocusZipperList!2261 (List!69519) List!69518)

(assert (=> start!696858 (= res!2915809 (contains!20652 (unfocusZipperList!2261 zl!333) r!7278))))

(assert (=> start!696858 e!4294844))

(declare-fun e!4294843 () Bool)

(assert (=> start!696858 e!4294843))

(declare-fun e!4294841 () Bool)

(assert (=> start!696858 e!4294841))

(declare-fun b!7146995 () Bool)

(declare-fun tp!1972149 () Bool)

(declare-fun inv!88615 (Context!14428) Bool)

(assert (=> b!7146995 (= e!4294843 (and (inv!88615 (h!75843 zl!333)) e!4294842 tp!1972149))))

(declare-fun b!7146996 () Bool)

(declare-fun res!2915810 () Bool)

(assert (=> b!7146996 (=> (not res!2915810) (not e!4294844))))

(assert (=> b!7146996 (= res!2915810 (contains!20652 (unfocusZipperList!2261 (t!383536 zl!333)) r!7278))))

(declare-fun b!7146997 () Bool)

(declare-fun tp!1972146 () Bool)

(declare-fun tp!1972151 () Bool)

(assert (=> b!7146997 (= e!4294841 (and tp!1972146 tp!1972151))))

(declare-fun lambda!435845 () Int)

(declare-fun exists!4040 (List!69519 Int) Bool)

(assert (=> b!7146998 (= e!4294844 (not (exists!4040 zl!333 lambda!435845)))))

(assert (=> b!7146998 (exists!4040 (t!383536 zl!333) lambda!435845)))

(declare-datatypes ((Unit!163287 0))(
  ( (Unit!163288) )
))
(declare-fun lt!2568939 () Unit!163287)

(declare-fun lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!37 (List!69519 Regex!18220) Unit!163287)

(assert (=> b!7146998 (= lt!2568939 (lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!37 (t!383536 zl!333) r!7278))))

(declare-fun b!7146999 () Bool)

(declare-fun tp_is_empty!46077 () Bool)

(assert (=> b!7146999 (= e!4294841 tp_is_empty!46077)))

(declare-fun b!7147000 () Bool)

(declare-fun res!2915808 () Bool)

(assert (=> b!7147000 (=> (not res!2915808) (not e!4294844))))

(declare-fun generalisedConcat!2396 (List!69518) Regex!18220)

(assert (=> b!7147000 (= res!2915808 (not (= (generalisedConcat!2396 (exprs!7714 (h!75843 zl!333))) r!7278)))))

(declare-fun b!7147001 () Bool)

(declare-fun res!2915811 () Bool)

(assert (=> b!7147001 (=> (not res!2915811) (not e!4294844))))

(assert (=> b!7147001 (= res!2915811 (is-Cons!69395 zl!333))))

(declare-fun b!7147002 () Bool)

(declare-fun tp!1972148 () Bool)

(declare-fun tp!1972152 () Bool)

(assert (=> b!7147002 (= e!4294841 (and tp!1972148 tp!1972152))))

(declare-fun b!7147003 () Bool)

(declare-fun tp!1972150 () Bool)

(assert (=> b!7147003 (= e!4294841 tp!1972150)))

(assert (= (and start!696858 res!2915809) b!7147001))

(assert (= (and b!7147001 res!2915811) b!7147000))

(assert (= (and b!7147000 res!2915808) b!7146996))

(assert (= (and b!7146996 res!2915810) b!7146998))

(assert (= b!7146995 b!7146994))

(assert (= (and start!696858 (is-Cons!69395 zl!333)) b!7146995))

(assert (= (and start!696858 (is-ElementMatch!18220 r!7278)) b!7146999))

(assert (= (and start!696858 (is-Concat!27065 r!7278)) b!7147002))

(assert (= (and start!696858 (is-Star!18220 r!7278)) b!7147003))

(assert (= (and start!696858 (is-Union!18220 r!7278)) b!7146997))

(declare-fun m!7859622 () Bool)

(assert (=> b!7146998 m!7859622))

(declare-fun m!7859624 () Bool)

(assert (=> b!7146998 m!7859624))

(declare-fun m!7859626 () Bool)

(assert (=> b!7146998 m!7859626))

(declare-fun m!7859628 () Bool)

(assert (=> start!696858 m!7859628))

(assert (=> start!696858 m!7859628))

(declare-fun m!7859630 () Bool)

(assert (=> start!696858 m!7859630))

(declare-fun m!7859632 () Bool)

(assert (=> b!7146995 m!7859632))

(declare-fun m!7859634 () Bool)

(assert (=> b!7147000 m!7859634))

(declare-fun m!7859636 () Bool)

(assert (=> b!7146996 m!7859636))

(assert (=> b!7146996 m!7859636))

(declare-fun m!7859638 () Bool)

(assert (=> b!7146996 m!7859638))

(push 1)

(assert (not b!7147000))

(assert (not b!7146994))

(assert (not b!7146997))

(assert (not b!7147003))

(assert tp_is_empty!46077)

(assert (not b!7146998))

(assert (not b!7146996))

(assert (not start!696858))

(assert (not b!7147002))

(assert (not b!7146995))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2228217 () Bool)

(declare-fun lt!2568945 () Bool)

(declare-fun content!14241 (List!69518) (Set Regex!18220))

(assert (=> d!2228217 (= lt!2568945 (set.member r!7278 (content!14241 (unfocusZipperList!2261 (t!383536 zl!333)))))))

(declare-fun e!4294861 () Bool)

(assert (=> d!2228217 (= lt!2568945 e!4294861)))

(declare-fun res!2915828 () Bool)

(assert (=> d!2228217 (=> (not res!2915828) (not e!4294861))))

(assert (=> d!2228217 (= res!2915828 (is-Cons!69394 (unfocusZipperList!2261 (t!383536 zl!333))))))

(assert (=> d!2228217 (= (contains!20652 (unfocusZipperList!2261 (t!383536 zl!333)) r!7278) lt!2568945)))

(declare-fun b!7147042 () Bool)

(declare-fun e!4294862 () Bool)

(assert (=> b!7147042 (= e!4294861 e!4294862)))

(declare-fun res!2915829 () Bool)

(assert (=> b!7147042 (=> res!2915829 e!4294862)))

(assert (=> b!7147042 (= res!2915829 (= (h!75842 (unfocusZipperList!2261 (t!383536 zl!333))) r!7278))))

(declare-fun b!7147043 () Bool)

(assert (=> b!7147043 (= e!4294862 (contains!20652 (t!383535 (unfocusZipperList!2261 (t!383536 zl!333))) r!7278))))

(assert (= (and d!2228217 res!2915828) b!7147042))

(assert (= (and b!7147042 (not res!2915829)) b!7147043))

(assert (=> d!2228217 m!7859636))

(declare-fun m!7859658 () Bool)

(assert (=> d!2228217 m!7859658))

(declare-fun m!7859660 () Bool)

(assert (=> d!2228217 m!7859660))

(declare-fun m!7859662 () Bool)

(assert (=> b!7147043 m!7859662))

(assert (=> b!7146996 d!2228217))

(declare-fun d!2228221 () Bool)

(declare-fun lt!2568950 () List!69518)

(declare-fun lambda!435853 () Int)

(declare-fun forall!17056 (List!69518 Int) Bool)

(assert (=> d!2228221 (forall!17056 lt!2568950 lambda!435853)))

(declare-fun e!4294869 () List!69518)

(assert (=> d!2228221 (= lt!2568950 e!4294869)))

(declare-fun c!1332725 () Bool)

(assert (=> d!2228221 (= c!1332725 (is-Cons!69395 (t!383536 zl!333)))))

(assert (=> d!2228221 (= (unfocusZipperList!2261 (t!383536 zl!333)) lt!2568950)))

(declare-fun b!7147052 () Bool)

(assert (=> b!7147052 (= e!4294869 (Cons!69394 (generalisedConcat!2396 (exprs!7714 (h!75843 (t!383536 zl!333)))) (unfocusZipperList!2261 (t!383536 (t!383536 zl!333)))))))

(declare-fun b!7147053 () Bool)

(assert (=> b!7147053 (= e!4294869 Nil!69394)))

(assert (= (and d!2228221 c!1332725) b!7147052))

(assert (= (and d!2228221 (not c!1332725)) b!7147053))

(declare-fun m!7859664 () Bool)

(assert (=> d!2228221 m!7859664))

(declare-fun m!7859666 () Bool)

(assert (=> b!7147052 m!7859666))

(declare-fun m!7859668 () Bool)

(assert (=> b!7147052 m!7859668))

(assert (=> b!7146996 d!2228221))

(declare-fun bs!1889223 () Bool)

(declare-fun d!2228223 () Bool)

(assert (= bs!1889223 (and d!2228223 d!2228221)))

(declare-fun lambda!435856 () Int)

(assert (=> bs!1889223 (= lambda!435856 lambda!435853)))

(assert (=> d!2228223 (= (inv!88615 (h!75843 zl!333)) (forall!17056 (exprs!7714 (h!75843 zl!333)) lambda!435856))))

(declare-fun bs!1889224 () Bool)

(assert (= bs!1889224 d!2228223))

(declare-fun m!7859676 () Bool)

(assert (=> bs!1889224 m!7859676))

(assert (=> b!7146995 d!2228223))

(declare-fun bs!1889225 () Bool)

(declare-fun d!2228227 () Bool)

(assert (= bs!1889225 (and d!2228227 d!2228221)))

(declare-fun lambda!435861 () Int)

(assert (=> bs!1889225 (= lambda!435861 lambda!435853)))

(declare-fun bs!1889226 () Bool)

(assert (= bs!1889226 (and d!2228227 d!2228223)))

(assert (=> bs!1889226 (= lambda!435861 lambda!435856)))

(declare-fun e!4294887 () Bool)

(assert (=> d!2228227 e!4294887))

(declare-fun res!2915840 () Bool)

(assert (=> d!2228227 (=> (not res!2915840) (not e!4294887))))

(declare-fun lt!2568956 () Regex!18220)

(declare-fun validRegex!9382 (Regex!18220) Bool)

(assert (=> d!2228227 (= res!2915840 (validRegex!9382 lt!2568956))))

(declare-fun e!4294888 () Regex!18220)

(assert (=> d!2228227 (= lt!2568956 e!4294888)))

(declare-fun c!1332738 () Bool)

(declare-fun e!4294890 () Bool)

(assert (=> d!2228227 (= c!1332738 e!4294890)))

(declare-fun res!2915841 () Bool)

(assert (=> d!2228227 (=> (not res!2915841) (not e!4294890))))

(assert (=> d!2228227 (= res!2915841 (is-Cons!69394 (exprs!7714 (h!75843 zl!333))))))

(assert (=> d!2228227 (forall!17056 (exprs!7714 (h!75843 zl!333)) lambda!435861)))

(assert (=> d!2228227 (= (generalisedConcat!2396 (exprs!7714 (h!75843 zl!333))) lt!2568956)))

(declare-fun b!7147080 () Bool)

(declare-fun e!4294889 () Regex!18220)

(assert (=> b!7147080 (= e!4294889 EmptyExpr!18220)))

(declare-fun b!7147081 () Bool)

(declare-fun e!4294891 () Bool)

(declare-fun isEmptyExpr!2053 (Regex!18220) Bool)

(assert (=> b!7147081 (= e!4294891 (isEmptyExpr!2053 lt!2568956))))

(declare-fun b!7147082 () Bool)

(declare-fun e!4294886 () Bool)

(declare-fun isConcat!1576 (Regex!18220) Bool)

(assert (=> b!7147082 (= e!4294886 (isConcat!1576 lt!2568956))))

(declare-fun b!7147083 () Bool)

(assert (=> b!7147083 (= e!4294889 (Concat!27065 (h!75842 (exprs!7714 (h!75843 zl!333))) (generalisedConcat!2396 (t!383535 (exprs!7714 (h!75843 zl!333))))))))

(declare-fun b!7147084 () Bool)

(assert (=> b!7147084 (= e!4294891 e!4294886)))

(declare-fun c!1332737 () Bool)

(declare-fun isEmpty!40092 (List!69518) Bool)

(declare-fun tail!14003 (List!69518) List!69518)

(assert (=> b!7147084 (= c!1332737 (isEmpty!40092 (tail!14003 (exprs!7714 (h!75843 zl!333)))))))

(declare-fun b!7147085 () Bool)

(assert (=> b!7147085 (= e!4294888 (h!75842 (exprs!7714 (h!75843 zl!333))))))

(declare-fun b!7147086 () Bool)

(assert (=> b!7147086 (= e!4294890 (isEmpty!40092 (t!383535 (exprs!7714 (h!75843 zl!333)))))))

(declare-fun b!7147087 () Bool)

(declare-fun head!14533 (List!69518) Regex!18220)

(assert (=> b!7147087 (= e!4294886 (= lt!2568956 (head!14533 (exprs!7714 (h!75843 zl!333)))))))

(declare-fun b!7147088 () Bool)

(assert (=> b!7147088 (= e!4294888 e!4294889)))

(declare-fun c!1332736 () Bool)

(assert (=> b!7147088 (= c!1332736 (is-Cons!69394 (exprs!7714 (h!75843 zl!333))))))

(declare-fun b!7147089 () Bool)

(assert (=> b!7147089 (= e!4294887 e!4294891)))

(declare-fun c!1332739 () Bool)

(assert (=> b!7147089 (= c!1332739 (isEmpty!40092 (exprs!7714 (h!75843 zl!333))))))

(assert (= (and d!2228227 res!2915841) b!7147086))

(assert (= (and d!2228227 c!1332738) b!7147085))

(assert (= (and d!2228227 (not c!1332738)) b!7147088))

(assert (= (and b!7147088 c!1332736) b!7147083))

(assert (= (and b!7147088 (not c!1332736)) b!7147080))

(assert (= (and d!2228227 res!2915840) b!7147089))

(assert (= (and b!7147089 c!1332739) b!7147081))

(assert (= (and b!7147089 (not c!1332739)) b!7147084))

(assert (= (and b!7147084 c!1332737) b!7147087))

(assert (= (and b!7147084 (not c!1332737)) b!7147082))

(declare-fun m!7859678 () Bool)

(assert (=> b!7147083 m!7859678))

(declare-fun m!7859680 () Bool)

(assert (=> b!7147082 m!7859680))

(declare-fun m!7859682 () Bool)

(assert (=> b!7147087 m!7859682))

(declare-fun m!7859684 () Bool)

(assert (=> b!7147086 m!7859684))

(declare-fun m!7859686 () Bool)

(assert (=> b!7147089 m!7859686))

(declare-fun m!7859688 () Bool)

(assert (=> d!2228227 m!7859688))

(declare-fun m!7859690 () Bool)

(assert (=> d!2228227 m!7859690))

(declare-fun m!7859692 () Bool)

(assert (=> b!7147081 m!7859692))

(declare-fun m!7859694 () Bool)

(assert (=> b!7147084 m!7859694))

(assert (=> b!7147084 m!7859694))

(declare-fun m!7859696 () Bool)

(assert (=> b!7147084 m!7859696))

(assert (=> b!7147000 d!2228227))

(declare-fun d!2228229 () Bool)

(declare-fun lt!2568958 () Bool)

(assert (=> d!2228229 (= lt!2568958 (set.member r!7278 (content!14241 (unfocusZipperList!2261 zl!333))))))

(declare-fun e!4294893 () Bool)

(assert (=> d!2228229 (= lt!2568958 e!4294893)))

(declare-fun res!2915842 () Bool)

(assert (=> d!2228229 (=> (not res!2915842) (not e!4294893))))

(assert (=> d!2228229 (= res!2915842 (is-Cons!69394 (unfocusZipperList!2261 zl!333)))))

(assert (=> d!2228229 (= (contains!20652 (unfocusZipperList!2261 zl!333) r!7278) lt!2568958)))

(declare-fun b!7147092 () Bool)

(declare-fun e!4294894 () Bool)

(assert (=> b!7147092 (= e!4294893 e!4294894)))

(declare-fun res!2915843 () Bool)

(assert (=> b!7147092 (=> res!2915843 e!4294894)))

(assert (=> b!7147092 (= res!2915843 (= (h!75842 (unfocusZipperList!2261 zl!333)) r!7278))))

(declare-fun b!7147093 () Bool)

(assert (=> b!7147093 (= e!4294894 (contains!20652 (t!383535 (unfocusZipperList!2261 zl!333)) r!7278))))

(assert (= (and d!2228229 res!2915842) b!7147092))

(assert (= (and b!7147092 (not res!2915843)) b!7147093))

(assert (=> d!2228229 m!7859628))

(declare-fun m!7859698 () Bool)

(assert (=> d!2228229 m!7859698))

(declare-fun m!7859700 () Bool)

(assert (=> d!2228229 m!7859700))

(declare-fun m!7859702 () Bool)

(assert (=> b!7147093 m!7859702))

(assert (=> start!696858 d!2228229))

(declare-fun bs!1889227 () Bool)

(declare-fun d!2228231 () Bool)

(assert (= bs!1889227 (and d!2228231 d!2228221)))

(declare-fun lambda!435863 () Int)

(assert (=> bs!1889227 (= lambda!435863 lambda!435853)))

(declare-fun bs!1889228 () Bool)

(assert (= bs!1889228 (and d!2228231 d!2228223)))

(assert (=> bs!1889228 (= lambda!435863 lambda!435856)))

(declare-fun bs!1889229 () Bool)

(assert (= bs!1889229 (and d!2228231 d!2228227)))

(assert (=> bs!1889229 (= lambda!435863 lambda!435861)))

(declare-fun lt!2568959 () List!69518)

(assert (=> d!2228231 (forall!17056 lt!2568959 lambda!435863)))

(declare-fun e!4294895 () List!69518)

(assert (=> d!2228231 (= lt!2568959 e!4294895)))

(declare-fun c!1332741 () Bool)

(assert (=> d!2228231 (= c!1332741 (is-Cons!69395 zl!333))))

(assert (=> d!2228231 (= (unfocusZipperList!2261 zl!333) lt!2568959)))

(declare-fun b!7147094 () Bool)

(assert (=> b!7147094 (= e!4294895 (Cons!69394 (generalisedConcat!2396 (exprs!7714 (h!75843 zl!333))) (unfocusZipperList!2261 (t!383536 zl!333))))))

(declare-fun b!7147095 () Bool)

(assert (=> b!7147095 (= e!4294895 Nil!69394)))

(assert (= (and d!2228231 c!1332741) b!7147094))

(assert (= (and d!2228231 (not c!1332741)) b!7147095))

(declare-fun m!7859706 () Bool)

(assert (=> d!2228231 m!7859706))

(assert (=> b!7147094 m!7859634))

(assert (=> b!7147094 m!7859636))

(assert (=> start!696858 d!2228231))

(declare-fun bs!1889231 () Bool)

(declare-fun d!2228235 () Bool)

(assert (= bs!1889231 (and d!2228235 b!7146998)))

(declare-fun lambda!435867 () Int)

(assert (=> bs!1889231 (not (= lambda!435867 lambda!435845))))

(assert (=> d!2228235 true))

(declare-fun order!28611 () Int)

(declare-fun dynLambda!28260 (Int Int) Int)

(assert (=> d!2228235 (< (dynLambda!28260 order!28611 lambda!435845) (dynLambda!28260 order!28611 lambda!435867))))

(declare-fun forall!17057 (List!69519 Int) Bool)

(assert (=> d!2228235 (= (exists!4040 zl!333 lambda!435845) (not (forall!17057 zl!333 lambda!435867)))))

(declare-fun bs!1889232 () Bool)

(assert (= bs!1889232 d!2228235))

(declare-fun m!7859720 () Bool)

(assert (=> bs!1889232 m!7859720))

(assert (=> b!7146998 d!2228235))

(declare-fun bs!1889233 () Bool)

(declare-fun d!2228241 () Bool)

(assert (= bs!1889233 (and d!2228241 b!7146998)))

(declare-fun lambda!435868 () Int)

(assert (=> bs!1889233 (not (= lambda!435868 lambda!435845))))

(declare-fun bs!1889234 () Bool)

(assert (= bs!1889234 (and d!2228241 d!2228235)))

(assert (=> bs!1889234 (= lambda!435868 lambda!435867)))

(assert (=> d!2228241 true))

(assert (=> d!2228241 (< (dynLambda!28260 order!28611 lambda!435845) (dynLambda!28260 order!28611 lambda!435868))))

(assert (=> d!2228241 (= (exists!4040 (t!383536 zl!333) lambda!435845) (not (forall!17057 (t!383536 zl!333) lambda!435868)))))

(declare-fun bs!1889235 () Bool)

(assert (= bs!1889235 d!2228241))

(declare-fun m!7859722 () Bool)

(assert (=> bs!1889235 m!7859722))

(assert (=> b!7146998 d!2228241))

(declare-fun bs!1889239 () Bool)

(declare-fun d!2228243 () Bool)

(assert (= bs!1889239 (and d!2228243 b!7146998)))

(declare-fun lambda!435874 () Int)

(assert (=> bs!1889239 (= lambda!435874 lambda!435845)))

(declare-fun bs!1889240 () Bool)

(assert (= bs!1889240 (and d!2228243 d!2228235)))

(assert (=> bs!1889240 (not (= lambda!435874 lambda!435867))))

(declare-fun bs!1889241 () Bool)

(assert (= bs!1889241 (and d!2228243 d!2228241)))

(assert (=> bs!1889241 (not (= lambda!435874 lambda!435868))))

(assert (=> d!2228243 true))

(assert (=> d!2228243 (exists!4040 (t!383536 zl!333) lambda!435874)))

(declare-fun lt!2568964 () Unit!163287)

(declare-fun choose!55301 (List!69519 Regex!18220) Unit!163287)

(assert (=> d!2228243 (= lt!2568964 (choose!55301 (t!383536 zl!333) r!7278))))

(assert (=> d!2228243 (contains!20652 (unfocusZipperList!2261 (t!383536 zl!333)) r!7278)))

(assert (=> d!2228243 (= (lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!37 (t!383536 zl!333) r!7278) lt!2568964)))

(declare-fun bs!1889242 () Bool)

(assert (= bs!1889242 d!2228243))

(declare-fun m!7859726 () Bool)

(assert (=> bs!1889242 m!7859726))

(declare-fun m!7859728 () Bool)

(assert (=> bs!1889242 m!7859728))

(assert (=> bs!1889242 m!7859636))

(assert (=> bs!1889242 m!7859636))

(assert (=> bs!1889242 m!7859638))

(assert (=> b!7146998 d!2228243))

(declare-fun b!7147115 () Bool)

(declare-fun e!4294901 () Bool)

(declare-fun tp!1972188 () Bool)

(declare-fun tp!1972184 () Bool)

(assert (=> b!7147115 (= e!4294901 (and tp!1972188 tp!1972184))))

(declare-fun b!7147112 () Bool)

(assert (=> b!7147112 (= e!4294901 tp_is_empty!46077)))

(declare-fun b!7147114 () Bool)

(declare-fun tp!1972186 () Bool)

(assert (=> b!7147114 (= e!4294901 tp!1972186)))

(assert (=> b!7147002 (= tp!1972148 e!4294901)))

(declare-fun b!7147113 () Bool)

(declare-fun tp!1972187 () Bool)

(declare-fun tp!1972185 () Bool)

(assert (=> b!7147113 (= e!4294901 (and tp!1972187 tp!1972185))))

(assert (= (and b!7147002 (is-ElementMatch!18220 (regOne!36952 r!7278))) b!7147112))

(assert (= (and b!7147002 (is-Concat!27065 (regOne!36952 r!7278))) b!7147113))

(assert (= (and b!7147002 (is-Star!18220 (regOne!36952 r!7278))) b!7147114))

(assert (= (and b!7147002 (is-Union!18220 (regOne!36952 r!7278))) b!7147115))

(declare-fun b!7147119 () Bool)

(declare-fun e!4294902 () Bool)

(declare-fun tp!1972193 () Bool)

(declare-fun tp!1972189 () Bool)

(assert (=> b!7147119 (= e!4294902 (and tp!1972193 tp!1972189))))

(declare-fun b!7147116 () Bool)

(assert (=> b!7147116 (= e!4294902 tp_is_empty!46077)))

(declare-fun b!7147118 () Bool)

(declare-fun tp!1972191 () Bool)

(assert (=> b!7147118 (= e!4294902 tp!1972191)))

(assert (=> b!7147002 (= tp!1972152 e!4294902)))

(declare-fun b!7147117 () Bool)

(declare-fun tp!1972192 () Bool)

(declare-fun tp!1972190 () Bool)

(assert (=> b!7147117 (= e!4294902 (and tp!1972192 tp!1972190))))

(assert (= (and b!7147002 (is-ElementMatch!18220 (regTwo!36952 r!7278))) b!7147116))

(assert (= (and b!7147002 (is-Concat!27065 (regTwo!36952 r!7278))) b!7147117))

(assert (= (and b!7147002 (is-Star!18220 (regTwo!36952 r!7278))) b!7147118))

(assert (= (and b!7147002 (is-Union!18220 (regTwo!36952 r!7278))) b!7147119))

(declare-fun b!7147127 () Bool)

(declare-fun e!4294908 () Bool)

(declare-fun tp!1972198 () Bool)

(assert (=> b!7147127 (= e!4294908 tp!1972198)))

(declare-fun e!4294907 () Bool)

(declare-fun tp!1972199 () Bool)

(declare-fun b!7147126 () Bool)

(assert (=> b!7147126 (= e!4294907 (and (inv!88615 (h!75843 (t!383536 zl!333))) e!4294908 tp!1972199))))

(assert (=> b!7146995 (= tp!1972149 e!4294907)))

(assert (= b!7147126 b!7147127))

(assert (= (and b!7146995 (is-Cons!69395 (t!383536 zl!333))) b!7147126))

(declare-fun m!7859730 () Bool)

(assert (=> b!7147126 m!7859730))

(declare-fun b!7147132 () Bool)

(declare-fun e!4294911 () Bool)

(declare-fun tp!1972204 () Bool)

(declare-fun tp!1972205 () Bool)

(assert (=> b!7147132 (= e!4294911 (and tp!1972204 tp!1972205))))

(assert (=> b!7146994 (= tp!1972147 e!4294911)))

(assert (= (and b!7146994 (is-Cons!69394 (exprs!7714 (h!75843 zl!333)))) b!7147132))

(declare-fun b!7147136 () Bool)

(declare-fun e!4294912 () Bool)

(declare-fun tp!1972210 () Bool)

(declare-fun tp!1972206 () Bool)

(assert (=> b!7147136 (= e!4294912 (and tp!1972210 tp!1972206))))

(declare-fun b!7147133 () Bool)

(assert (=> b!7147133 (= e!4294912 tp_is_empty!46077)))

(declare-fun b!7147135 () Bool)

(declare-fun tp!1972208 () Bool)

(assert (=> b!7147135 (= e!4294912 tp!1972208)))

(assert (=> b!7147003 (= tp!1972150 e!4294912)))

(declare-fun b!7147134 () Bool)

(declare-fun tp!1972209 () Bool)

(declare-fun tp!1972207 () Bool)

(assert (=> b!7147134 (= e!4294912 (and tp!1972209 tp!1972207))))

(assert (= (and b!7147003 (is-ElementMatch!18220 (reg!18549 r!7278))) b!7147133))

(assert (= (and b!7147003 (is-Concat!27065 (reg!18549 r!7278))) b!7147134))

(assert (= (and b!7147003 (is-Star!18220 (reg!18549 r!7278))) b!7147135))

(assert (= (and b!7147003 (is-Union!18220 (reg!18549 r!7278))) b!7147136))

(declare-fun b!7147140 () Bool)

(declare-fun e!4294913 () Bool)

(declare-fun tp!1972215 () Bool)

(declare-fun tp!1972211 () Bool)

(assert (=> b!7147140 (= e!4294913 (and tp!1972215 tp!1972211))))

(declare-fun b!7147137 () Bool)

(assert (=> b!7147137 (= e!4294913 tp_is_empty!46077)))

(declare-fun b!7147139 () Bool)

(declare-fun tp!1972213 () Bool)

(assert (=> b!7147139 (= e!4294913 tp!1972213)))

(assert (=> b!7146997 (= tp!1972146 e!4294913)))

(declare-fun b!7147138 () Bool)

(declare-fun tp!1972214 () Bool)

(declare-fun tp!1972212 () Bool)

(assert (=> b!7147138 (= e!4294913 (and tp!1972214 tp!1972212))))

(assert (= (and b!7146997 (is-ElementMatch!18220 (regOne!36953 r!7278))) b!7147137))

(assert (= (and b!7146997 (is-Concat!27065 (regOne!36953 r!7278))) b!7147138))

(assert (= (and b!7146997 (is-Star!18220 (regOne!36953 r!7278))) b!7147139))

(assert (= (and b!7146997 (is-Union!18220 (regOne!36953 r!7278))) b!7147140))

(declare-fun b!7147144 () Bool)

(declare-fun e!4294914 () Bool)

(declare-fun tp!1972220 () Bool)

(declare-fun tp!1972216 () Bool)

(assert (=> b!7147144 (= e!4294914 (and tp!1972220 tp!1972216))))

(declare-fun b!7147141 () Bool)

(assert (=> b!7147141 (= e!4294914 tp_is_empty!46077)))

(declare-fun b!7147143 () Bool)

(declare-fun tp!1972218 () Bool)

(assert (=> b!7147143 (= e!4294914 tp!1972218)))

(assert (=> b!7146997 (= tp!1972151 e!4294914)))

(declare-fun b!7147142 () Bool)

(declare-fun tp!1972219 () Bool)

(declare-fun tp!1972217 () Bool)

(assert (=> b!7147142 (= e!4294914 (and tp!1972219 tp!1972217))))

(assert (= (and b!7146997 (is-ElementMatch!18220 (regTwo!36953 r!7278))) b!7147141))

(assert (= (and b!7146997 (is-Concat!27065 (regTwo!36953 r!7278))) b!7147142))

(assert (= (and b!7146997 (is-Star!18220 (regTwo!36953 r!7278))) b!7147143))

(assert (= (and b!7146997 (is-Union!18220 (regTwo!36953 r!7278))) b!7147144))

(push 1)

(assert (not b!7147087))

(assert (not b!7147134))

(assert (not b!7147138))

(assert (not d!2228241))

(assert (not d!2228221))

(assert (not b!7147135))

(assert (not d!2228235))

(assert (not d!2228227))

(assert (not b!7147118))

(assert (not b!7147126))

(assert (not b!7147136))

(assert (not b!7147127))

(assert (not b!7147089))

(assert (not b!7147052))

(assert (not b!7147115))

(assert (not b!7147144))

(assert (not d!2228231))

(assert (not d!2228217))

(assert (not d!2228243))

(assert (not b!7147043))

(assert (not b!7147093))

(assert (not b!7147117))

(assert (not b!7147140))

(assert (not b!7147119))

(assert (not b!7147094))

(assert (not b!7147139))

(assert (not b!7147142))

(assert (not b!7147083))

(assert tp_is_empty!46077)

(assert (not b!7147086))

(assert (not b!7147143))

(assert (not b!7147114))

(assert (not b!7147132))

(assert (not b!7147082))

(assert (not b!7147113))

(assert (not b!7147081))

(assert (not b!7147084))

(assert (not d!2228229))

(assert (not d!2228223))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2228253 () Bool)

(declare-fun res!2915856 () Bool)

(declare-fun e!4294953 () Bool)

(assert (=> d!2228253 (=> res!2915856 e!4294953)))

(assert (=> d!2228253 (= res!2915856 (is-Nil!69395 zl!333))))

(assert (=> d!2228253 (= (forall!17057 zl!333 lambda!435867) e!4294953)))

(declare-fun b!7147224 () Bool)

(declare-fun e!4294954 () Bool)

(assert (=> b!7147224 (= e!4294953 e!4294954)))

(declare-fun res!2915857 () Bool)

(assert (=> b!7147224 (=> (not res!2915857) (not e!4294954))))

(declare-fun dynLambda!28262 (Int Context!14428) Bool)

(assert (=> b!7147224 (= res!2915857 (dynLambda!28262 lambda!435867 (h!75843 zl!333)))))

(declare-fun b!7147225 () Bool)

(assert (=> b!7147225 (= e!4294954 (forall!17057 (t!383536 zl!333) lambda!435867))))

(assert (= (and d!2228253 (not res!2915856)) b!7147224))

(assert (= (and b!7147224 res!2915857) b!7147225))

(declare-fun b_lambda!272765 () Bool)

(assert (=> (not b_lambda!272765) (not b!7147224)))

(declare-fun m!7859762 () Bool)

(assert (=> b!7147224 m!7859762))

(declare-fun m!7859764 () Bool)

(assert (=> b!7147225 m!7859764))

(assert (=> d!2228235 d!2228253))

(declare-fun d!2228255 () Bool)

(declare-fun lt!2568971 () Bool)

(assert (=> d!2228255 (= lt!2568971 (set.member r!7278 (content!14241 (t!383535 (unfocusZipperList!2261 zl!333)))))))

(declare-fun e!4294955 () Bool)

(assert (=> d!2228255 (= lt!2568971 e!4294955)))

(declare-fun res!2915858 () Bool)

(assert (=> d!2228255 (=> (not res!2915858) (not e!4294955))))

(assert (=> d!2228255 (= res!2915858 (is-Cons!69394 (t!383535 (unfocusZipperList!2261 zl!333))))))

(assert (=> d!2228255 (= (contains!20652 (t!383535 (unfocusZipperList!2261 zl!333)) r!7278) lt!2568971)))

(declare-fun b!7147226 () Bool)

(declare-fun e!4294956 () Bool)

(assert (=> b!7147226 (= e!4294955 e!4294956)))

(declare-fun res!2915859 () Bool)

(assert (=> b!7147226 (=> res!2915859 e!4294956)))

(assert (=> b!7147226 (= res!2915859 (= (h!75842 (t!383535 (unfocusZipperList!2261 zl!333))) r!7278))))

(declare-fun b!7147227 () Bool)

(assert (=> b!7147227 (= e!4294956 (contains!20652 (t!383535 (t!383535 (unfocusZipperList!2261 zl!333))) r!7278))))

(assert (= (and d!2228255 res!2915858) b!7147226))

(assert (= (and b!7147226 (not res!2915859)) b!7147227))

(declare-fun m!7859766 () Bool)

(assert (=> d!2228255 m!7859766))

(declare-fun m!7859768 () Bool)

(assert (=> d!2228255 m!7859768))

(declare-fun m!7859770 () Bool)

(assert (=> b!7147227 m!7859770))

(assert (=> b!7147093 d!2228255))

(declare-fun d!2228257 () Bool)

(assert (=> d!2228257 (= (isEmpty!40092 (tail!14003 (exprs!7714 (h!75843 zl!333)))) (is-Nil!69394 (tail!14003 (exprs!7714 (h!75843 zl!333)))))))

(assert (=> b!7147084 d!2228257))

(declare-fun d!2228259 () Bool)

(assert (=> d!2228259 (= (tail!14003 (exprs!7714 (h!75843 zl!333))) (t!383535 (exprs!7714 (h!75843 zl!333))))))

(assert (=> b!7147084 d!2228259))

(declare-fun d!2228261 () Bool)

(declare-fun lt!2568972 () Bool)

(assert (=> d!2228261 (= lt!2568972 (set.member r!7278 (content!14241 (t!383535 (unfocusZipperList!2261 (t!383536 zl!333))))))))

(declare-fun e!4294957 () Bool)

(assert (=> d!2228261 (= lt!2568972 e!4294957)))

(declare-fun res!2915860 () Bool)

(assert (=> d!2228261 (=> (not res!2915860) (not e!4294957))))

(assert (=> d!2228261 (= res!2915860 (is-Cons!69394 (t!383535 (unfocusZipperList!2261 (t!383536 zl!333)))))))

(assert (=> d!2228261 (= (contains!20652 (t!383535 (unfocusZipperList!2261 (t!383536 zl!333))) r!7278) lt!2568972)))

(declare-fun b!7147228 () Bool)

(declare-fun e!4294958 () Bool)

(assert (=> b!7147228 (= e!4294957 e!4294958)))

(declare-fun res!2915861 () Bool)

(assert (=> b!7147228 (=> res!2915861 e!4294958)))

(assert (=> b!7147228 (= res!2915861 (= (h!75842 (t!383535 (unfocusZipperList!2261 (t!383536 zl!333)))) r!7278))))

(declare-fun b!7147229 () Bool)

(assert (=> b!7147229 (= e!4294958 (contains!20652 (t!383535 (t!383535 (unfocusZipperList!2261 (t!383536 zl!333)))) r!7278))))

(assert (= (and d!2228261 res!2915860) b!7147228))

(assert (= (and b!7147228 (not res!2915861)) b!7147229))

(declare-fun m!7859772 () Bool)

(assert (=> d!2228261 m!7859772))

(declare-fun m!7859774 () Bool)

(assert (=> d!2228261 m!7859774))

(declare-fun m!7859776 () Bool)

(assert (=> b!7147229 m!7859776))

(assert (=> b!7147043 d!2228261))

(declare-fun bs!1889255 () Bool)

(declare-fun d!2228263 () Bool)

(assert (= bs!1889255 (and d!2228263 d!2228221)))

(declare-fun lambda!435885 () Int)

(assert (=> bs!1889255 (= lambda!435885 lambda!435853)))

(declare-fun bs!1889256 () Bool)

(assert (= bs!1889256 (and d!2228263 d!2228223)))

(assert (=> bs!1889256 (= lambda!435885 lambda!435856)))

(declare-fun bs!1889257 () Bool)

(assert (= bs!1889257 (and d!2228263 d!2228227)))

(assert (=> bs!1889257 (= lambda!435885 lambda!435861)))

(declare-fun bs!1889258 () Bool)

(assert (= bs!1889258 (and d!2228263 d!2228231)))

(assert (=> bs!1889258 (= lambda!435885 lambda!435863)))

(declare-fun e!4294960 () Bool)

(assert (=> d!2228263 e!4294960))

(declare-fun res!2915862 () Bool)

(assert (=> d!2228263 (=> (not res!2915862) (not e!4294960))))

(declare-fun lt!2568973 () Regex!18220)

(assert (=> d!2228263 (= res!2915862 (validRegex!9382 lt!2568973))))

(declare-fun e!4294961 () Regex!18220)

(assert (=> d!2228263 (= lt!2568973 e!4294961)))

(declare-fun c!1332761 () Bool)

(declare-fun e!4294963 () Bool)

(assert (=> d!2228263 (= c!1332761 e!4294963)))

(declare-fun res!2915863 () Bool)

(assert (=> d!2228263 (=> (not res!2915863) (not e!4294963))))

(assert (=> d!2228263 (= res!2915863 (is-Cons!69394 (t!383535 (exprs!7714 (h!75843 zl!333)))))))

(assert (=> d!2228263 (forall!17056 (t!383535 (exprs!7714 (h!75843 zl!333))) lambda!435885)))

(assert (=> d!2228263 (= (generalisedConcat!2396 (t!383535 (exprs!7714 (h!75843 zl!333)))) lt!2568973)))

(declare-fun b!7147230 () Bool)

(declare-fun e!4294962 () Regex!18220)

(assert (=> b!7147230 (= e!4294962 EmptyExpr!18220)))

(declare-fun b!7147231 () Bool)

(declare-fun e!4294964 () Bool)

(assert (=> b!7147231 (= e!4294964 (isEmptyExpr!2053 lt!2568973))))

(declare-fun b!7147232 () Bool)

(declare-fun e!4294959 () Bool)

(assert (=> b!7147232 (= e!4294959 (isConcat!1576 lt!2568973))))

(declare-fun b!7147233 () Bool)

(assert (=> b!7147233 (= e!4294962 (Concat!27065 (h!75842 (t!383535 (exprs!7714 (h!75843 zl!333)))) (generalisedConcat!2396 (t!383535 (t!383535 (exprs!7714 (h!75843 zl!333)))))))))

(declare-fun b!7147234 () Bool)

(assert (=> b!7147234 (= e!4294964 e!4294959)))

(declare-fun c!1332760 () Bool)

(assert (=> b!7147234 (= c!1332760 (isEmpty!40092 (tail!14003 (t!383535 (exprs!7714 (h!75843 zl!333))))))))

(declare-fun b!7147235 () Bool)

(assert (=> b!7147235 (= e!4294961 (h!75842 (t!383535 (exprs!7714 (h!75843 zl!333)))))))

(declare-fun b!7147236 () Bool)

(assert (=> b!7147236 (= e!4294963 (isEmpty!40092 (t!383535 (t!383535 (exprs!7714 (h!75843 zl!333))))))))

(declare-fun b!7147237 () Bool)

(assert (=> b!7147237 (= e!4294959 (= lt!2568973 (head!14533 (t!383535 (exprs!7714 (h!75843 zl!333))))))))

(declare-fun b!7147238 () Bool)

(assert (=> b!7147238 (= e!4294961 e!4294962)))

(declare-fun c!1332759 () Bool)

(assert (=> b!7147238 (= c!1332759 (is-Cons!69394 (t!383535 (exprs!7714 (h!75843 zl!333)))))))

(declare-fun b!7147239 () Bool)

(assert (=> b!7147239 (= e!4294960 e!4294964)))

(declare-fun c!1332762 () Bool)

(assert (=> b!7147239 (= c!1332762 (isEmpty!40092 (t!383535 (exprs!7714 (h!75843 zl!333)))))))

(assert (= (and d!2228263 res!2915863) b!7147236))

(assert (= (and d!2228263 c!1332761) b!7147235))

(assert (= (and d!2228263 (not c!1332761)) b!7147238))

(assert (= (and b!7147238 c!1332759) b!7147233))

(assert (= (and b!7147238 (not c!1332759)) b!7147230))

(assert (= (and d!2228263 res!2915862) b!7147239))

(assert (= (and b!7147239 c!1332762) b!7147231))

(assert (= (and b!7147239 (not c!1332762)) b!7147234))

(assert (= (and b!7147234 c!1332760) b!7147237))

(assert (= (and b!7147234 (not c!1332760)) b!7147232))

(declare-fun m!7859778 () Bool)

(assert (=> b!7147233 m!7859778))

(declare-fun m!7859780 () Bool)

(assert (=> b!7147232 m!7859780))

(declare-fun m!7859782 () Bool)

(assert (=> b!7147237 m!7859782))

(declare-fun m!7859784 () Bool)

(assert (=> b!7147236 m!7859784))

(assert (=> b!7147239 m!7859684))

(declare-fun m!7859786 () Bool)

(assert (=> d!2228263 m!7859786))

(declare-fun m!7859788 () Bool)

(assert (=> d!2228263 m!7859788))

(declare-fun m!7859790 () Bool)

(assert (=> b!7147231 m!7859790))

(declare-fun m!7859792 () Bool)

(assert (=> b!7147234 m!7859792))

(assert (=> b!7147234 m!7859792))

(declare-fun m!7859794 () Bool)

(assert (=> b!7147234 m!7859794))

(assert (=> b!7147083 d!2228263))

(declare-fun d!2228265 () Bool)

(declare-fun res!2915868 () Bool)

(declare-fun e!4294969 () Bool)

(assert (=> d!2228265 (=> res!2915868 e!4294969)))

(assert (=> d!2228265 (= res!2915868 (is-Nil!69394 lt!2568959))))

(assert (=> d!2228265 (= (forall!17056 lt!2568959 lambda!435863) e!4294969)))

(declare-fun b!7147244 () Bool)

(declare-fun e!4294970 () Bool)

(assert (=> b!7147244 (= e!4294969 e!4294970)))

(declare-fun res!2915869 () Bool)

(assert (=> b!7147244 (=> (not res!2915869) (not e!4294970))))

(declare-fun dynLambda!28263 (Int Regex!18220) Bool)

(assert (=> b!7147244 (= res!2915869 (dynLambda!28263 lambda!435863 (h!75842 lt!2568959)))))

(declare-fun b!7147245 () Bool)

(assert (=> b!7147245 (= e!4294970 (forall!17056 (t!383535 lt!2568959) lambda!435863))))

(assert (= (and d!2228265 (not res!2915868)) b!7147244))

(assert (= (and b!7147244 res!2915869) b!7147245))

(declare-fun b_lambda!272767 () Bool)

(assert (=> (not b_lambda!272767) (not b!7147244)))

(declare-fun m!7859796 () Bool)

(assert (=> b!7147244 m!7859796))

(declare-fun m!7859798 () Bool)

(assert (=> b!7147245 m!7859798))

(assert (=> d!2228231 d!2228265))

(declare-fun d!2228267 () Bool)

(assert (=> d!2228267 (= (isConcat!1576 lt!2568956) (is-Concat!27065 lt!2568956))))

(assert (=> b!7147082 d!2228267))

(declare-fun d!2228269 () Bool)

(assert (=> d!2228269 (= (isEmptyExpr!2053 lt!2568956) (is-EmptyExpr!18220 lt!2568956))))

(assert (=> b!7147081 d!2228269))

(declare-fun bs!1889259 () Bool)

(declare-fun d!2228271 () Bool)

(assert (= bs!1889259 (and d!2228271 d!2228223)))

(declare-fun lambda!435886 () Int)

(assert (=> bs!1889259 (= lambda!435886 lambda!435856)))

(declare-fun bs!1889260 () Bool)

(assert (= bs!1889260 (and d!2228271 d!2228221)))

(assert (=> bs!1889260 (= lambda!435886 lambda!435853)))

(declare-fun bs!1889261 () Bool)

(assert (= bs!1889261 (and d!2228271 d!2228263)))

(assert (=> bs!1889261 (= lambda!435886 lambda!435885)))

(declare-fun bs!1889262 () Bool)

(assert (= bs!1889262 (and d!2228271 d!2228231)))

(assert (=> bs!1889262 (= lambda!435886 lambda!435863)))

(declare-fun bs!1889263 () Bool)

(assert (= bs!1889263 (and d!2228271 d!2228227)))

(assert (=> bs!1889263 (= lambda!435886 lambda!435861)))

(declare-fun e!4294972 () Bool)

(assert (=> d!2228271 e!4294972))

(declare-fun res!2915870 () Bool)

(assert (=> d!2228271 (=> (not res!2915870) (not e!4294972))))

(declare-fun lt!2568974 () Regex!18220)

(assert (=> d!2228271 (= res!2915870 (validRegex!9382 lt!2568974))))

(declare-fun e!4294973 () Regex!18220)

(assert (=> d!2228271 (= lt!2568974 e!4294973)))

(declare-fun c!1332765 () Bool)

(declare-fun e!4294975 () Bool)

(assert (=> d!2228271 (= c!1332765 e!4294975)))

(declare-fun res!2915871 () Bool)

(assert (=> d!2228271 (=> (not res!2915871) (not e!4294975))))

(assert (=> d!2228271 (= res!2915871 (is-Cons!69394 (exprs!7714 (h!75843 (t!383536 zl!333)))))))

(assert (=> d!2228271 (forall!17056 (exprs!7714 (h!75843 (t!383536 zl!333))) lambda!435886)))

(assert (=> d!2228271 (= (generalisedConcat!2396 (exprs!7714 (h!75843 (t!383536 zl!333)))) lt!2568974)))

(declare-fun b!7147246 () Bool)

(declare-fun e!4294974 () Regex!18220)

(assert (=> b!7147246 (= e!4294974 EmptyExpr!18220)))

(declare-fun b!7147247 () Bool)

(declare-fun e!4294976 () Bool)

(assert (=> b!7147247 (= e!4294976 (isEmptyExpr!2053 lt!2568974))))

(declare-fun b!7147248 () Bool)

(declare-fun e!4294971 () Bool)

(assert (=> b!7147248 (= e!4294971 (isConcat!1576 lt!2568974))))

(declare-fun b!7147249 () Bool)

(assert (=> b!7147249 (= e!4294974 (Concat!27065 (h!75842 (exprs!7714 (h!75843 (t!383536 zl!333)))) (generalisedConcat!2396 (t!383535 (exprs!7714 (h!75843 (t!383536 zl!333)))))))))

(declare-fun b!7147250 () Bool)

(assert (=> b!7147250 (= e!4294976 e!4294971)))

(declare-fun c!1332764 () Bool)

(assert (=> b!7147250 (= c!1332764 (isEmpty!40092 (tail!14003 (exprs!7714 (h!75843 (t!383536 zl!333))))))))

(declare-fun b!7147251 () Bool)

(assert (=> b!7147251 (= e!4294973 (h!75842 (exprs!7714 (h!75843 (t!383536 zl!333)))))))

(declare-fun b!7147252 () Bool)

(assert (=> b!7147252 (= e!4294975 (isEmpty!40092 (t!383535 (exprs!7714 (h!75843 (t!383536 zl!333))))))))

(declare-fun b!7147253 () Bool)

(assert (=> b!7147253 (= e!4294971 (= lt!2568974 (head!14533 (exprs!7714 (h!75843 (t!383536 zl!333))))))))

(declare-fun b!7147254 () Bool)

(assert (=> b!7147254 (= e!4294973 e!4294974)))

(declare-fun c!1332763 () Bool)

(assert (=> b!7147254 (= c!1332763 (is-Cons!69394 (exprs!7714 (h!75843 (t!383536 zl!333)))))))

(declare-fun b!7147255 () Bool)

(assert (=> b!7147255 (= e!4294972 e!4294976)))

(declare-fun c!1332766 () Bool)

(assert (=> b!7147255 (= c!1332766 (isEmpty!40092 (exprs!7714 (h!75843 (t!383536 zl!333)))))))

(assert (= (and d!2228271 res!2915871) b!7147252))

(assert (= (and d!2228271 c!1332765) b!7147251))

(assert (= (and d!2228271 (not c!1332765)) b!7147254))

(assert (= (and b!7147254 c!1332763) b!7147249))

(assert (= (and b!7147254 (not c!1332763)) b!7147246))

(assert (= (and d!2228271 res!2915870) b!7147255))

(assert (= (and b!7147255 c!1332766) b!7147247))

(assert (= (and b!7147255 (not c!1332766)) b!7147250))

(assert (= (and b!7147250 c!1332764) b!7147253))

(assert (= (and b!7147250 (not c!1332764)) b!7147248))

(declare-fun m!7859800 () Bool)

(assert (=> b!7147249 m!7859800))

(declare-fun m!7859802 () Bool)

(assert (=> b!7147248 m!7859802))

(declare-fun m!7859804 () Bool)

(assert (=> b!7147253 m!7859804))

(declare-fun m!7859806 () Bool)

(assert (=> b!7147252 m!7859806))

(declare-fun m!7859808 () Bool)

(assert (=> b!7147255 m!7859808))

(declare-fun m!7859810 () Bool)

(assert (=> d!2228271 m!7859810))

(declare-fun m!7859812 () Bool)

(assert (=> d!2228271 m!7859812))

(declare-fun m!7859814 () Bool)

(assert (=> b!7147247 m!7859814))

(declare-fun m!7859816 () Bool)

(assert (=> b!7147250 m!7859816))

(assert (=> b!7147250 m!7859816))

(declare-fun m!7859818 () Bool)

(assert (=> b!7147250 m!7859818))

(assert (=> b!7147052 d!2228271))

(declare-fun bs!1889264 () Bool)

(declare-fun d!2228273 () Bool)

(assert (= bs!1889264 (and d!2228273 d!2228223)))

(declare-fun lambda!435887 () Int)

(assert (=> bs!1889264 (= lambda!435887 lambda!435856)))

(declare-fun bs!1889265 () Bool)

(assert (= bs!1889265 (and d!2228273 d!2228221)))

(assert (=> bs!1889265 (= lambda!435887 lambda!435853)))

(declare-fun bs!1889266 () Bool)

(assert (= bs!1889266 (and d!2228273 d!2228231)))

(assert (=> bs!1889266 (= lambda!435887 lambda!435863)))

(declare-fun bs!1889267 () Bool)

(assert (= bs!1889267 (and d!2228273 d!2228227)))

(assert (=> bs!1889267 (= lambda!435887 lambda!435861)))

(declare-fun bs!1889268 () Bool)

(assert (= bs!1889268 (and d!2228273 d!2228271)))

(assert (=> bs!1889268 (= lambda!435887 lambda!435886)))

(declare-fun bs!1889269 () Bool)

(assert (= bs!1889269 (and d!2228273 d!2228263)))

(assert (=> bs!1889269 (= lambda!435887 lambda!435885)))

(declare-fun lt!2568975 () List!69518)

(assert (=> d!2228273 (forall!17056 lt!2568975 lambda!435887)))

(declare-fun e!4294977 () List!69518)

(assert (=> d!2228273 (= lt!2568975 e!4294977)))

(declare-fun c!1332767 () Bool)

(assert (=> d!2228273 (= c!1332767 (is-Cons!69395 (t!383536 (t!383536 zl!333))))))

(assert (=> d!2228273 (= (unfocusZipperList!2261 (t!383536 (t!383536 zl!333))) lt!2568975)))

(declare-fun b!7147256 () Bool)

(assert (=> b!7147256 (= e!4294977 (Cons!69394 (generalisedConcat!2396 (exprs!7714 (h!75843 (t!383536 (t!383536 zl!333))))) (unfocusZipperList!2261 (t!383536 (t!383536 (t!383536 zl!333))))))))

(declare-fun b!7147257 () Bool)

(assert (=> b!7147257 (= e!4294977 Nil!69394)))

(assert (= (and d!2228273 c!1332767) b!7147256))

(assert (= (and d!2228273 (not c!1332767)) b!7147257))

(declare-fun m!7859820 () Bool)

(assert (=> d!2228273 m!7859820))

(declare-fun m!7859822 () Bool)

(assert (=> b!7147256 m!7859822))

(declare-fun m!7859824 () Bool)

(assert (=> b!7147256 m!7859824))

(assert (=> b!7147052 d!2228273))

(declare-fun d!2228275 () Bool)

(declare-fun res!2915872 () Bool)

(declare-fun e!4294978 () Bool)

(assert (=> d!2228275 (=> res!2915872 e!4294978)))

(assert (=> d!2228275 (= res!2915872 (is-Nil!69394 lt!2568950))))

(assert (=> d!2228275 (= (forall!17056 lt!2568950 lambda!435853) e!4294978)))

(declare-fun b!7147258 () Bool)

(declare-fun e!4294979 () Bool)

(assert (=> b!7147258 (= e!4294978 e!4294979)))

(declare-fun res!2915873 () Bool)

(assert (=> b!7147258 (=> (not res!2915873) (not e!4294979))))

(assert (=> b!7147258 (= res!2915873 (dynLambda!28263 lambda!435853 (h!75842 lt!2568950)))))

(declare-fun b!7147259 () Bool)

(assert (=> b!7147259 (= e!4294979 (forall!17056 (t!383535 lt!2568950) lambda!435853))))

(assert (= (and d!2228275 (not res!2915872)) b!7147258))

(assert (= (and b!7147258 res!2915873) b!7147259))

(declare-fun b_lambda!272769 () Bool)

(assert (=> (not b_lambda!272769) (not b!7147258)))

(declare-fun m!7859826 () Bool)

(assert (=> b!7147258 m!7859826))

(declare-fun m!7859828 () Bool)

(assert (=> b!7147259 m!7859828))

(assert (=> d!2228221 d!2228275))

(declare-fun d!2228277 () Bool)

(declare-fun res!2915874 () Bool)

(declare-fun e!4294980 () Bool)

(assert (=> d!2228277 (=> res!2915874 e!4294980)))

(assert (=> d!2228277 (= res!2915874 (is-Nil!69394 (exprs!7714 (h!75843 zl!333))))))

(assert (=> d!2228277 (= (forall!17056 (exprs!7714 (h!75843 zl!333)) lambda!435856) e!4294980)))

(declare-fun b!7147260 () Bool)

(declare-fun e!4294981 () Bool)

(assert (=> b!7147260 (= e!4294980 e!4294981)))

(declare-fun res!2915875 () Bool)

(assert (=> b!7147260 (=> (not res!2915875) (not e!4294981))))

(assert (=> b!7147260 (= res!2915875 (dynLambda!28263 lambda!435856 (h!75842 (exprs!7714 (h!75843 zl!333)))))))

(declare-fun b!7147261 () Bool)

(assert (=> b!7147261 (= e!4294981 (forall!17056 (t!383535 (exprs!7714 (h!75843 zl!333))) lambda!435856))))

(assert (= (and d!2228277 (not res!2915874)) b!7147260))

(assert (= (and b!7147260 res!2915875) b!7147261))

(declare-fun b_lambda!272771 () Bool)

(assert (=> (not b_lambda!272771) (not b!7147260)))

(declare-fun m!7859830 () Bool)

(assert (=> b!7147260 m!7859830))

(declare-fun m!7859832 () Bool)

(assert (=> b!7147261 m!7859832))

(assert (=> d!2228223 d!2228277))

(declare-fun d!2228279 () Bool)

(declare-fun res!2915876 () Bool)

(declare-fun e!4294982 () Bool)

(assert (=> d!2228279 (=> res!2915876 e!4294982)))

(assert (=> d!2228279 (= res!2915876 (is-Nil!69395 (t!383536 zl!333)))))

(assert (=> d!2228279 (= (forall!17057 (t!383536 zl!333) lambda!435868) e!4294982)))

(declare-fun b!7147262 () Bool)

(declare-fun e!4294983 () Bool)

(assert (=> b!7147262 (= e!4294982 e!4294983)))

(declare-fun res!2915877 () Bool)

(assert (=> b!7147262 (=> (not res!2915877) (not e!4294983))))

(assert (=> b!7147262 (= res!2915877 (dynLambda!28262 lambda!435868 (h!75843 (t!383536 zl!333))))))

(declare-fun b!7147263 () Bool)

(assert (=> b!7147263 (= e!4294983 (forall!17057 (t!383536 (t!383536 zl!333)) lambda!435868))))

(assert (= (and d!2228279 (not res!2915876)) b!7147262))

(assert (= (and b!7147262 res!2915877) b!7147263))

(declare-fun b_lambda!272773 () Bool)

(assert (=> (not b_lambda!272773) (not b!7147262)))

(declare-fun m!7859834 () Bool)

(assert (=> b!7147262 m!7859834))

(declare-fun m!7859836 () Bool)

(assert (=> b!7147263 m!7859836))

(assert (=> d!2228241 d!2228279))

(declare-fun d!2228281 () Bool)

(assert (=> d!2228281 (= (isEmpty!40092 (exprs!7714 (h!75843 zl!333))) (is-Nil!69394 (exprs!7714 (h!75843 zl!333))))))

(assert (=> b!7147089 d!2228281))

(declare-fun c!1332772 () Bool)

(declare-fun bm!651414 () Bool)

(declare-fun call!651421 () Bool)

(declare-fun c!1332773 () Bool)

(assert (=> bm!651414 (= call!651421 (validRegex!9382 (ite c!1332773 (reg!18549 lt!2568956) (ite c!1332772 (regTwo!36953 lt!2568956) (regTwo!36952 lt!2568956)))))))

(declare-fun b!7147282 () Bool)

(declare-fun res!2915891 () Bool)

(declare-fun e!4294999 () Bool)

(assert (=> b!7147282 (=> (not res!2915891) (not e!4294999))))

(declare-fun call!651419 () Bool)

(assert (=> b!7147282 (= res!2915891 call!651419)))

(declare-fun e!4294998 () Bool)

(assert (=> b!7147282 (= e!4294998 e!4294999)))

(declare-fun b!7147283 () Bool)

(declare-fun e!4295004 () Bool)

(declare-fun call!651420 () Bool)

(assert (=> b!7147283 (= e!4295004 call!651420)))

(declare-fun bm!651415 () Bool)

(assert (=> bm!651415 (= call!651420 call!651421)))

(declare-fun b!7147284 () Bool)

(declare-fun e!4295000 () Bool)

(assert (=> b!7147284 (= e!4295000 call!651421)))

(declare-fun d!2228283 () Bool)

(declare-fun res!2915890 () Bool)

(declare-fun e!4295002 () Bool)

(assert (=> d!2228283 (=> res!2915890 e!4295002)))

(assert (=> d!2228283 (= res!2915890 (is-ElementMatch!18220 lt!2568956))))

(assert (=> d!2228283 (= (validRegex!9382 lt!2568956) e!4295002)))

(declare-fun b!7147285 () Bool)

(declare-fun e!4295003 () Bool)

(assert (=> b!7147285 (= e!4295003 e!4295000)))

(declare-fun res!2915892 () Bool)

(declare-fun nullable!7723 (Regex!18220) Bool)

(assert (=> b!7147285 (= res!2915892 (not (nullable!7723 (reg!18549 lt!2568956))))))

(assert (=> b!7147285 (=> (not res!2915892) (not e!4295000))))

(declare-fun b!7147286 () Bool)

(assert (=> b!7147286 (= e!4294999 call!651420)))

(declare-fun b!7147287 () Bool)

(assert (=> b!7147287 (= e!4295003 e!4294998)))

(assert (=> b!7147287 (= c!1332772 (is-Union!18220 lt!2568956))))

(declare-fun b!7147288 () Bool)

(assert (=> b!7147288 (= e!4295002 e!4295003)))

(assert (=> b!7147288 (= c!1332773 (is-Star!18220 lt!2568956))))

(declare-fun b!7147289 () Bool)

(declare-fun res!2915889 () Bool)

(declare-fun e!4295001 () Bool)

(assert (=> b!7147289 (=> res!2915889 e!4295001)))

(assert (=> b!7147289 (= res!2915889 (not (is-Concat!27065 lt!2568956)))))

(assert (=> b!7147289 (= e!4294998 e!4295001)))

(declare-fun bm!651416 () Bool)

(assert (=> bm!651416 (= call!651419 (validRegex!9382 (ite c!1332772 (regOne!36953 lt!2568956) (regOne!36952 lt!2568956))))))

(declare-fun b!7147290 () Bool)

(assert (=> b!7147290 (= e!4295001 e!4295004)))

(declare-fun res!2915888 () Bool)

(assert (=> b!7147290 (=> (not res!2915888) (not e!4295004))))

(assert (=> b!7147290 (= res!2915888 call!651419)))

(assert (= (and d!2228283 (not res!2915890)) b!7147288))

(assert (= (and b!7147288 c!1332773) b!7147285))

(assert (= (and b!7147288 (not c!1332773)) b!7147287))

(assert (= (and b!7147285 res!2915892) b!7147284))

(assert (= (and b!7147287 c!1332772) b!7147282))

(assert (= (and b!7147287 (not c!1332772)) b!7147289))

(assert (= (and b!7147282 res!2915891) b!7147286))

(assert (= (and b!7147289 (not res!2915889)) b!7147290))

(assert (= (and b!7147290 res!2915888) b!7147283))

(assert (= (or b!7147286 b!7147283) bm!651415))

(assert (= (or b!7147282 b!7147290) bm!651416))

(assert (= (or b!7147284 bm!651415) bm!651414))

(declare-fun m!7859838 () Bool)

(assert (=> bm!651414 m!7859838))

(declare-fun m!7859840 () Bool)

(assert (=> b!7147285 m!7859840))

(declare-fun m!7859842 () Bool)

(assert (=> bm!651416 m!7859842))

(assert (=> d!2228227 d!2228283))

(declare-fun d!2228285 () Bool)

(declare-fun res!2915893 () Bool)

(declare-fun e!4295005 () Bool)

(assert (=> d!2228285 (=> res!2915893 e!4295005)))

(assert (=> d!2228285 (= res!2915893 (is-Nil!69394 (exprs!7714 (h!75843 zl!333))))))

(assert (=> d!2228285 (= (forall!17056 (exprs!7714 (h!75843 zl!333)) lambda!435861) e!4295005)))

(declare-fun b!7147291 () Bool)

(declare-fun e!4295006 () Bool)

(assert (=> b!7147291 (= e!4295005 e!4295006)))

(declare-fun res!2915894 () Bool)

(assert (=> b!7147291 (=> (not res!2915894) (not e!4295006))))

(assert (=> b!7147291 (= res!2915894 (dynLambda!28263 lambda!435861 (h!75842 (exprs!7714 (h!75843 zl!333)))))))

(declare-fun b!7147292 () Bool)

(assert (=> b!7147292 (= e!4295006 (forall!17056 (t!383535 (exprs!7714 (h!75843 zl!333))) lambda!435861))))

(assert (= (and d!2228285 (not res!2915893)) b!7147291))

(assert (= (and b!7147291 res!2915894) b!7147292))

(declare-fun b_lambda!272775 () Bool)

(assert (=> (not b_lambda!272775) (not b!7147291)))

(declare-fun m!7859844 () Bool)

(assert (=> b!7147291 m!7859844))

(declare-fun m!7859846 () Bool)

(assert (=> b!7147292 m!7859846))

(assert (=> d!2228227 d!2228285))

(declare-fun d!2228287 () Bool)

(declare-fun c!1332776 () Bool)

(assert (=> d!2228287 (= c!1332776 (is-Nil!69394 (unfocusZipperList!2261 zl!333)))))

(declare-fun e!4295009 () (Set Regex!18220))

(assert (=> d!2228287 (= (content!14241 (unfocusZipperList!2261 zl!333)) e!4295009)))

(declare-fun b!7147297 () Bool)

(assert (=> b!7147297 (= e!4295009 (as set.empty (Set Regex!18220)))))

(declare-fun b!7147298 () Bool)

(assert (=> b!7147298 (= e!4295009 (set.union (set.insert (h!75842 (unfocusZipperList!2261 zl!333)) (as set.empty (Set Regex!18220))) (content!14241 (t!383535 (unfocusZipperList!2261 zl!333)))))))

(assert (= (and d!2228287 c!1332776) b!7147297))

(assert (= (and d!2228287 (not c!1332776)) b!7147298))

(declare-fun m!7859848 () Bool)

(assert (=> b!7147298 m!7859848))

(assert (=> b!7147298 m!7859766))

(assert (=> d!2228229 d!2228287))

(declare-fun bs!1889270 () Bool)

(declare-fun d!2228289 () Bool)

(assert (= bs!1889270 (and d!2228289 b!7146998)))

(declare-fun lambda!435888 () Int)

(assert (=> bs!1889270 (not (= lambda!435888 lambda!435845))))

(declare-fun bs!1889271 () Bool)

(assert (= bs!1889271 (and d!2228289 d!2228235)))

(assert (=> bs!1889271 (= (= lambda!435874 lambda!435845) (= lambda!435888 lambda!435867))))

(declare-fun bs!1889272 () Bool)

(assert (= bs!1889272 (and d!2228289 d!2228241)))

(assert (=> bs!1889272 (= (= lambda!435874 lambda!435845) (= lambda!435888 lambda!435868))))

(declare-fun bs!1889273 () Bool)

(assert (= bs!1889273 (and d!2228289 d!2228243)))

(assert (=> bs!1889273 (not (= lambda!435888 lambda!435874))))

(assert (=> d!2228289 true))

(assert (=> d!2228289 (< (dynLambda!28260 order!28611 lambda!435874) (dynLambda!28260 order!28611 lambda!435888))))

(assert (=> d!2228289 (= (exists!4040 (t!383536 zl!333) lambda!435874) (not (forall!17057 (t!383536 zl!333) lambda!435888)))))

(declare-fun bs!1889274 () Bool)

(assert (= bs!1889274 d!2228289))

(declare-fun m!7859850 () Bool)

(assert (=> bs!1889274 m!7859850))

(assert (=> d!2228243 d!2228289))

(declare-fun bs!1889275 () Bool)

(declare-fun d!2228291 () Bool)

(assert (= bs!1889275 (and d!2228291 b!7146998)))

(declare-fun lambda!435891 () Int)

(assert (=> bs!1889275 (= lambda!435891 lambda!435845)))

(declare-fun bs!1889276 () Bool)

(assert (= bs!1889276 (and d!2228291 d!2228243)))

(assert (=> bs!1889276 (= lambda!435891 lambda!435874)))

(declare-fun bs!1889277 () Bool)

(assert (= bs!1889277 (and d!2228291 d!2228235)))

(assert (=> bs!1889277 (not (= lambda!435891 lambda!435867))))

(declare-fun bs!1889278 () Bool)

(assert (= bs!1889278 (and d!2228291 d!2228289)))

(assert (=> bs!1889278 (not (= lambda!435891 lambda!435888))))

(declare-fun bs!1889279 () Bool)

(assert (= bs!1889279 (and d!2228291 d!2228241)))

(assert (=> bs!1889279 (not (= lambda!435891 lambda!435868))))

(assert (=> d!2228291 true))

(assert (=> d!2228291 (exists!4040 (t!383536 zl!333) lambda!435891)))

(assert (=> d!2228291 true))

(declare-fun _$43!106 () Unit!163287)

(assert (=> d!2228291 (= (choose!55301 (t!383536 zl!333) r!7278) _$43!106)))

(declare-fun bs!1889280 () Bool)

(assert (= bs!1889280 d!2228291))

(declare-fun m!7859852 () Bool)

(assert (=> bs!1889280 m!7859852))

(assert (=> d!2228243 d!2228291))

(assert (=> d!2228243 d!2228217))

(assert (=> d!2228243 d!2228221))

(declare-fun d!2228293 () Bool)

(assert (=> d!2228293 (= (head!14533 (exprs!7714 (h!75843 zl!333))) (h!75842 (exprs!7714 (h!75843 zl!333))))))

(assert (=> b!7147087 d!2228293))

(declare-fun bs!1889281 () Bool)

(declare-fun d!2228295 () Bool)

(assert (= bs!1889281 (and d!2228295 d!2228223)))

(declare-fun lambda!435892 () Int)

(assert (=> bs!1889281 (= lambda!435892 lambda!435856)))

(declare-fun bs!1889282 () Bool)

(assert (= bs!1889282 (and d!2228295 d!2228273)))

(assert (=> bs!1889282 (= lambda!435892 lambda!435887)))

(declare-fun bs!1889283 () Bool)

(assert (= bs!1889283 (and d!2228295 d!2228221)))

(assert (=> bs!1889283 (= lambda!435892 lambda!435853)))

(declare-fun bs!1889284 () Bool)

(assert (= bs!1889284 (and d!2228295 d!2228231)))

(assert (=> bs!1889284 (= lambda!435892 lambda!435863)))

(declare-fun bs!1889285 () Bool)

(assert (= bs!1889285 (and d!2228295 d!2228227)))

(assert (=> bs!1889285 (= lambda!435892 lambda!435861)))

(declare-fun bs!1889286 () Bool)

(assert (= bs!1889286 (and d!2228295 d!2228271)))

(assert (=> bs!1889286 (= lambda!435892 lambda!435886)))

(declare-fun bs!1889287 () Bool)

(assert (= bs!1889287 (and d!2228295 d!2228263)))

(assert (=> bs!1889287 (= lambda!435892 lambda!435885)))

(assert (=> d!2228295 (= (inv!88615 (h!75843 (t!383536 zl!333))) (forall!17056 (exprs!7714 (h!75843 (t!383536 zl!333))) lambda!435892))))

(declare-fun bs!1889288 () Bool)

(assert (= bs!1889288 d!2228295))

(declare-fun m!7859854 () Bool)

(assert (=> bs!1889288 m!7859854))

(assert (=> b!7147126 d!2228295))

(declare-fun d!2228297 () Bool)

(declare-fun c!1332779 () Bool)

(assert (=> d!2228297 (= c!1332779 (is-Nil!69394 (unfocusZipperList!2261 (t!383536 zl!333))))))

(declare-fun e!4295010 () (Set Regex!18220))

(assert (=> d!2228297 (= (content!14241 (unfocusZipperList!2261 (t!383536 zl!333))) e!4295010)))

(declare-fun b!7147299 () Bool)

(assert (=> b!7147299 (= e!4295010 (as set.empty (Set Regex!18220)))))

(declare-fun b!7147300 () Bool)

(assert (=> b!7147300 (= e!4295010 (set.union (set.insert (h!75842 (unfocusZipperList!2261 (t!383536 zl!333))) (as set.empty (Set Regex!18220))) (content!14241 (t!383535 (unfocusZipperList!2261 (t!383536 zl!333))))))))

(assert (= (and d!2228297 c!1332779) b!7147299))

(assert (= (and d!2228297 (not c!1332779)) b!7147300))

(declare-fun m!7859856 () Bool)

(assert (=> b!7147300 m!7859856))

(assert (=> b!7147300 m!7859772))

(assert (=> d!2228217 d!2228297))

(assert (=> b!7147094 d!2228227))

(assert (=> b!7147094 d!2228221))

(declare-fun d!2228299 () Bool)

(assert (=> d!2228299 (= (isEmpty!40092 (t!383535 (exprs!7714 (h!75843 zl!333)))) (is-Nil!69394 (t!383535 (exprs!7714 (h!75843 zl!333)))))))

(assert (=> b!7147086 d!2228299))

(declare-fun b!7147304 () Bool)

(declare-fun e!4295011 () Bool)

(declare-fun tp!1972272 () Bool)

(declare-fun tp!1972268 () Bool)

(assert (=> b!7147304 (= e!4295011 (and tp!1972272 tp!1972268))))

(declare-fun b!7147301 () Bool)

(assert (=> b!7147301 (= e!4295011 tp_is_empty!46077)))

(declare-fun b!7147303 () Bool)

(declare-fun tp!1972270 () Bool)

(assert (=> b!7147303 (= e!4295011 tp!1972270)))

(assert (=> b!7147115 (= tp!1972188 e!4295011)))

(declare-fun b!7147302 () Bool)

(declare-fun tp!1972271 () Bool)

(declare-fun tp!1972269 () Bool)

(assert (=> b!7147302 (= e!4295011 (and tp!1972271 tp!1972269))))

(assert (= (and b!7147115 (is-ElementMatch!18220 (regOne!36953 (regOne!36952 r!7278)))) b!7147301))

(assert (= (and b!7147115 (is-Concat!27065 (regOne!36953 (regOne!36952 r!7278)))) b!7147302))

(assert (= (and b!7147115 (is-Star!18220 (regOne!36953 (regOne!36952 r!7278)))) b!7147303))

(assert (= (and b!7147115 (is-Union!18220 (regOne!36953 (regOne!36952 r!7278)))) b!7147304))

(declare-fun b!7147308 () Bool)

(declare-fun e!4295012 () Bool)

(declare-fun tp!1972277 () Bool)

(declare-fun tp!1972273 () Bool)

(assert (=> b!7147308 (= e!4295012 (and tp!1972277 tp!1972273))))

(declare-fun b!7147305 () Bool)

(assert (=> b!7147305 (= e!4295012 tp_is_empty!46077)))

(declare-fun b!7147307 () Bool)

(declare-fun tp!1972275 () Bool)

(assert (=> b!7147307 (= e!4295012 tp!1972275)))

(assert (=> b!7147115 (= tp!1972184 e!4295012)))

(declare-fun b!7147306 () Bool)

(declare-fun tp!1972276 () Bool)

(declare-fun tp!1972274 () Bool)

(assert (=> b!7147306 (= e!4295012 (and tp!1972276 tp!1972274))))

(assert (= (and b!7147115 (is-ElementMatch!18220 (regTwo!36953 (regOne!36952 r!7278)))) b!7147305))

(assert (= (and b!7147115 (is-Concat!27065 (regTwo!36953 (regOne!36952 r!7278)))) b!7147306))

(assert (= (and b!7147115 (is-Star!18220 (regTwo!36953 (regOne!36952 r!7278)))) b!7147307))

(assert (= (and b!7147115 (is-Union!18220 (regTwo!36953 (regOne!36952 r!7278)))) b!7147308))

(declare-fun b!7147312 () Bool)

(declare-fun e!4295013 () Bool)

(declare-fun tp!1972282 () Bool)

(declare-fun tp!1972278 () Bool)

(assert (=> b!7147312 (= e!4295013 (and tp!1972282 tp!1972278))))

(declare-fun b!7147309 () Bool)

(assert (=> b!7147309 (= e!4295013 tp_is_empty!46077)))

(declare-fun b!7147311 () Bool)

(declare-fun tp!1972280 () Bool)

(assert (=> b!7147311 (= e!4295013 tp!1972280)))

(assert (=> b!7147136 (= tp!1972210 e!4295013)))

(declare-fun b!7147310 () Bool)

(declare-fun tp!1972281 () Bool)

(declare-fun tp!1972279 () Bool)

(assert (=> b!7147310 (= e!4295013 (and tp!1972281 tp!1972279))))

(assert (= (and b!7147136 (is-ElementMatch!18220 (regOne!36953 (reg!18549 r!7278)))) b!7147309))

(assert (= (and b!7147136 (is-Concat!27065 (regOne!36953 (reg!18549 r!7278)))) b!7147310))

(assert (= (and b!7147136 (is-Star!18220 (regOne!36953 (reg!18549 r!7278)))) b!7147311))

(assert (= (and b!7147136 (is-Union!18220 (regOne!36953 (reg!18549 r!7278)))) b!7147312))

(declare-fun b!7147316 () Bool)

(declare-fun e!4295014 () Bool)

(declare-fun tp!1972287 () Bool)

(declare-fun tp!1972283 () Bool)

(assert (=> b!7147316 (= e!4295014 (and tp!1972287 tp!1972283))))

(declare-fun b!7147313 () Bool)

(assert (=> b!7147313 (= e!4295014 tp_is_empty!46077)))

(declare-fun b!7147315 () Bool)

(declare-fun tp!1972285 () Bool)

(assert (=> b!7147315 (= e!4295014 tp!1972285)))

(assert (=> b!7147136 (= tp!1972206 e!4295014)))

(declare-fun b!7147314 () Bool)

(declare-fun tp!1972286 () Bool)

(declare-fun tp!1972284 () Bool)

(assert (=> b!7147314 (= e!4295014 (and tp!1972286 tp!1972284))))

(assert (= (and b!7147136 (is-ElementMatch!18220 (regTwo!36953 (reg!18549 r!7278)))) b!7147313))

(assert (= (and b!7147136 (is-Concat!27065 (regTwo!36953 (reg!18549 r!7278)))) b!7147314))

(assert (= (and b!7147136 (is-Star!18220 (regTwo!36953 (reg!18549 r!7278)))) b!7147315))

(assert (= (and b!7147136 (is-Union!18220 (regTwo!36953 (reg!18549 r!7278)))) b!7147316))

(declare-fun b!7147320 () Bool)

(declare-fun e!4295015 () Bool)

(declare-fun tp!1972292 () Bool)

(declare-fun tp!1972288 () Bool)

(assert (=> b!7147320 (= e!4295015 (and tp!1972292 tp!1972288))))

(declare-fun b!7147317 () Bool)

(assert (=> b!7147317 (= e!4295015 tp_is_empty!46077)))

(declare-fun b!7147319 () Bool)

(declare-fun tp!1972290 () Bool)

(assert (=> b!7147319 (= e!4295015 tp!1972290)))

(assert (=> b!7147114 (= tp!1972186 e!4295015)))

(declare-fun b!7147318 () Bool)

(declare-fun tp!1972291 () Bool)

(declare-fun tp!1972289 () Bool)

(assert (=> b!7147318 (= e!4295015 (and tp!1972291 tp!1972289))))

(assert (= (and b!7147114 (is-ElementMatch!18220 (reg!18549 (regOne!36952 r!7278)))) b!7147317))

(assert (= (and b!7147114 (is-Concat!27065 (reg!18549 (regOne!36952 r!7278)))) b!7147318))

(assert (= (and b!7147114 (is-Star!18220 (reg!18549 (regOne!36952 r!7278)))) b!7147319))

(assert (= (and b!7147114 (is-Union!18220 (reg!18549 (regOne!36952 r!7278)))) b!7147320))

(declare-fun b!7147324 () Bool)

(declare-fun e!4295016 () Bool)

(declare-fun tp!1972297 () Bool)

(declare-fun tp!1972293 () Bool)

(assert (=> b!7147324 (= e!4295016 (and tp!1972297 tp!1972293))))

(declare-fun b!7147321 () Bool)

(assert (=> b!7147321 (= e!4295016 tp_is_empty!46077)))

(declare-fun b!7147323 () Bool)

(declare-fun tp!1972295 () Bool)

(assert (=> b!7147323 (= e!4295016 tp!1972295)))

(assert (=> b!7147135 (= tp!1972208 e!4295016)))

(declare-fun b!7147322 () Bool)

(declare-fun tp!1972296 () Bool)

(declare-fun tp!1972294 () Bool)

(assert (=> b!7147322 (= e!4295016 (and tp!1972296 tp!1972294))))

(assert (= (and b!7147135 (is-ElementMatch!18220 (reg!18549 (reg!18549 r!7278)))) b!7147321))

(assert (= (and b!7147135 (is-Concat!27065 (reg!18549 (reg!18549 r!7278)))) b!7147322))

(assert (= (and b!7147135 (is-Star!18220 (reg!18549 (reg!18549 r!7278)))) b!7147323))

(assert (= (and b!7147135 (is-Union!18220 (reg!18549 (reg!18549 r!7278)))) b!7147324))

(declare-fun b!7147328 () Bool)

(declare-fun e!4295017 () Bool)

(declare-fun tp!1972302 () Bool)

(declare-fun tp!1972298 () Bool)

(assert (=> b!7147328 (= e!4295017 (and tp!1972302 tp!1972298))))

(declare-fun b!7147325 () Bool)

(assert (=> b!7147325 (= e!4295017 tp_is_empty!46077)))

(declare-fun b!7147327 () Bool)

(declare-fun tp!1972300 () Bool)

(assert (=> b!7147327 (= e!4295017 tp!1972300)))

(assert (=> b!7147140 (= tp!1972215 e!4295017)))

(declare-fun b!7147326 () Bool)

(declare-fun tp!1972301 () Bool)

(declare-fun tp!1972299 () Bool)

(assert (=> b!7147326 (= e!4295017 (and tp!1972301 tp!1972299))))

(assert (= (and b!7147140 (is-ElementMatch!18220 (regOne!36953 (regOne!36953 r!7278)))) b!7147325))

(assert (= (and b!7147140 (is-Concat!27065 (regOne!36953 (regOne!36953 r!7278)))) b!7147326))

(assert (= (and b!7147140 (is-Star!18220 (regOne!36953 (regOne!36953 r!7278)))) b!7147327))

(assert (= (and b!7147140 (is-Union!18220 (regOne!36953 (regOne!36953 r!7278)))) b!7147328))

(declare-fun b!7147332 () Bool)

(declare-fun e!4295018 () Bool)

(declare-fun tp!1972307 () Bool)

(declare-fun tp!1972303 () Bool)

(assert (=> b!7147332 (= e!4295018 (and tp!1972307 tp!1972303))))

(declare-fun b!7147329 () Bool)

(assert (=> b!7147329 (= e!4295018 tp_is_empty!46077)))

(declare-fun b!7147331 () Bool)

(declare-fun tp!1972305 () Bool)

(assert (=> b!7147331 (= e!4295018 tp!1972305)))

(assert (=> b!7147140 (= tp!1972211 e!4295018)))

(declare-fun b!7147330 () Bool)

(declare-fun tp!1972306 () Bool)

(declare-fun tp!1972304 () Bool)

(assert (=> b!7147330 (= e!4295018 (and tp!1972306 tp!1972304))))

(assert (= (and b!7147140 (is-ElementMatch!18220 (regTwo!36953 (regOne!36953 r!7278)))) b!7147329))

(assert (= (and b!7147140 (is-Concat!27065 (regTwo!36953 (regOne!36953 r!7278)))) b!7147330))

(assert (= (and b!7147140 (is-Star!18220 (regTwo!36953 (regOne!36953 r!7278)))) b!7147331))

(assert (= (and b!7147140 (is-Union!18220 (regTwo!36953 (regOne!36953 r!7278)))) b!7147332))

(declare-fun b!7147336 () Bool)

(declare-fun e!4295019 () Bool)

(declare-fun tp!1972312 () Bool)

(declare-fun tp!1972308 () Bool)

(assert (=> b!7147336 (= e!4295019 (and tp!1972312 tp!1972308))))

(declare-fun b!7147333 () Bool)

(assert (=> b!7147333 (= e!4295019 tp_is_empty!46077)))

(declare-fun b!7147335 () Bool)

(declare-fun tp!1972310 () Bool)

(assert (=> b!7147335 (= e!4295019 tp!1972310)))

(assert (=> b!7147119 (= tp!1972193 e!4295019)))

(declare-fun b!7147334 () Bool)

(declare-fun tp!1972311 () Bool)

(declare-fun tp!1972309 () Bool)

(assert (=> b!7147334 (= e!4295019 (and tp!1972311 tp!1972309))))

(assert (= (and b!7147119 (is-ElementMatch!18220 (regOne!36953 (regTwo!36952 r!7278)))) b!7147333))

(assert (= (and b!7147119 (is-Concat!27065 (regOne!36953 (regTwo!36952 r!7278)))) b!7147334))

(assert (= (and b!7147119 (is-Star!18220 (regOne!36953 (regTwo!36952 r!7278)))) b!7147335))

(assert (= (and b!7147119 (is-Union!18220 (regOne!36953 (regTwo!36952 r!7278)))) b!7147336))

(declare-fun b!7147340 () Bool)

(declare-fun e!4295020 () Bool)

(declare-fun tp!1972317 () Bool)

(declare-fun tp!1972313 () Bool)

(assert (=> b!7147340 (= e!4295020 (and tp!1972317 tp!1972313))))

(declare-fun b!7147337 () Bool)

(assert (=> b!7147337 (= e!4295020 tp_is_empty!46077)))

(declare-fun b!7147339 () Bool)

(declare-fun tp!1972315 () Bool)

(assert (=> b!7147339 (= e!4295020 tp!1972315)))

(assert (=> b!7147119 (= tp!1972189 e!4295020)))

(declare-fun b!7147338 () Bool)

(declare-fun tp!1972316 () Bool)

(declare-fun tp!1972314 () Bool)

(assert (=> b!7147338 (= e!4295020 (and tp!1972316 tp!1972314))))

(assert (= (and b!7147119 (is-ElementMatch!18220 (regTwo!36953 (regTwo!36952 r!7278)))) b!7147337))

(assert (= (and b!7147119 (is-Concat!27065 (regTwo!36953 (regTwo!36952 r!7278)))) b!7147338))

(assert (= (and b!7147119 (is-Star!18220 (regTwo!36953 (regTwo!36952 r!7278)))) b!7147339))

(assert (= (and b!7147119 (is-Union!18220 (regTwo!36953 (regTwo!36952 r!7278)))) b!7147340))

(declare-fun b!7147344 () Bool)

(declare-fun e!4295021 () Bool)

(declare-fun tp!1972322 () Bool)

(declare-fun tp!1972318 () Bool)

(assert (=> b!7147344 (= e!4295021 (and tp!1972322 tp!1972318))))

(declare-fun b!7147341 () Bool)

(assert (=> b!7147341 (= e!4295021 tp_is_empty!46077)))

(declare-fun b!7147343 () Bool)

(declare-fun tp!1972320 () Bool)

(assert (=> b!7147343 (= e!4295021 tp!1972320)))

(assert (=> b!7147139 (= tp!1972213 e!4295021)))

(declare-fun b!7147342 () Bool)

(declare-fun tp!1972321 () Bool)

(declare-fun tp!1972319 () Bool)

(assert (=> b!7147342 (= e!4295021 (and tp!1972321 tp!1972319))))

(assert (= (and b!7147139 (is-ElementMatch!18220 (reg!18549 (regOne!36953 r!7278)))) b!7147341))

(assert (= (and b!7147139 (is-Concat!27065 (reg!18549 (regOne!36953 r!7278)))) b!7147342))

(assert (= (and b!7147139 (is-Star!18220 (reg!18549 (regOne!36953 r!7278)))) b!7147343))

(assert (= (and b!7147139 (is-Union!18220 (reg!18549 (regOne!36953 r!7278)))) b!7147344))

(declare-fun b!7147348 () Bool)

(declare-fun e!4295022 () Bool)

(declare-fun tp!1972327 () Bool)

(declare-fun tp!1972323 () Bool)

(assert (=> b!7147348 (= e!4295022 (and tp!1972327 tp!1972323))))

(declare-fun b!7147345 () Bool)

(assert (=> b!7147345 (= e!4295022 tp_is_empty!46077)))

(declare-fun b!7147347 () Bool)

(declare-fun tp!1972325 () Bool)

(assert (=> b!7147347 (= e!4295022 tp!1972325)))

(assert (=> b!7147118 (= tp!1972191 e!4295022)))

(declare-fun b!7147346 () Bool)

(declare-fun tp!1972326 () Bool)

(declare-fun tp!1972324 () Bool)

(assert (=> b!7147346 (= e!4295022 (and tp!1972326 tp!1972324))))

(assert (= (and b!7147118 (is-ElementMatch!18220 (reg!18549 (regTwo!36952 r!7278)))) b!7147345))

(assert (= (and b!7147118 (is-Concat!27065 (reg!18549 (regTwo!36952 r!7278)))) b!7147346))

(assert (= (and b!7147118 (is-Star!18220 (reg!18549 (regTwo!36952 r!7278)))) b!7147347))

(assert (= (and b!7147118 (is-Union!18220 (reg!18549 (regTwo!36952 r!7278)))) b!7147348))

(declare-fun b!7147352 () Bool)

(declare-fun e!4295023 () Bool)

(declare-fun tp!1972332 () Bool)

(declare-fun tp!1972328 () Bool)

(assert (=> b!7147352 (= e!4295023 (and tp!1972332 tp!1972328))))

(declare-fun b!7147349 () Bool)

(assert (=> b!7147349 (= e!4295023 tp_is_empty!46077)))

(declare-fun b!7147351 () Bool)

(declare-fun tp!1972330 () Bool)

(assert (=> b!7147351 (= e!4295023 tp!1972330)))

(assert (=> b!7147144 (= tp!1972220 e!4295023)))

(declare-fun b!7147350 () Bool)

(declare-fun tp!1972331 () Bool)

(declare-fun tp!1972329 () Bool)

(assert (=> b!7147350 (= e!4295023 (and tp!1972331 tp!1972329))))

(assert (= (and b!7147144 (is-ElementMatch!18220 (regOne!36953 (regTwo!36953 r!7278)))) b!7147349))

(assert (= (and b!7147144 (is-Concat!27065 (regOne!36953 (regTwo!36953 r!7278)))) b!7147350))

(assert (= (and b!7147144 (is-Star!18220 (regOne!36953 (regTwo!36953 r!7278)))) b!7147351))

(assert (= (and b!7147144 (is-Union!18220 (regOne!36953 (regTwo!36953 r!7278)))) b!7147352))

(declare-fun b!7147356 () Bool)

(declare-fun e!4295024 () Bool)

(declare-fun tp!1972337 () Bool)

(declare-fun tp!1972333 () Bool)

(assert (=> b!7147356 (= e!4295024 (and tp!1972337 tp!1972333))))

(declare-fun b!7147353 () Bool)

(assert (=> b!7147353 (= e!4295024 tp_is_empty!46077)))

(declare-fun b!7147355 () Bool)

(declare-fun tp!1972335 () Bool)

(assert (=> b!7147355 (= e!4295024 tp!1972335)))

(assert (=> b!7147144 (= tp!1972216 e!4295024)))

(declare-fun b!7147354 () Bool)

(declare-fun tp!1972336 () Bool)

(declare-fun tp!1972334 () Bool)

(assert (=> b!7147354 (= e!4295024 (and tp!1972336 tp!1972334))))

(assert (= (and b!7147144 (is-ElementMatch!18220 (regTwo!36953 (regTwo!36953 r!7278)))) b!7147353))

(assert (= (and b!7147144 (is-Concat!27065 (regTwo!36953 (regTwo!36953 r!7278)))) b!7147354))

(assert (= (and b!7147144 (is-Star!18220 (regTwo!36953 (regTwo!36953 r!7278)))) b!7147355))

(assert (= (and b!7147144 (is-Union!18220 (regTwo!36953 (regTwo!36953 r!7278)))) b!7147356))

(declare-fun b!7147360 () Bool)

(declare-fun e!4295025 () Bool)

(declare-fun tp!1972342 () Bool)

(declare-fun tp!1972338 () Bool)

(assert (=> b!7147360 (= e!4295025 (and tp!1972342 tp!1972338))))

(declare-fun b!7147357 () Bool)

(assert (=> b!7147357 (= e!4295025 tp_is_empty!46077)))

(declare-fun b!7147359 () Bool)

(declare-fun tp!1972340 () Bool)

(assert (=> b!7147359 (= e!4295025 tp!1972340)))

(assert (=> b!7147143 (= tp!1972218 e!4295025)))

(declare-fun b!7147358 () Bool)

(declare-fun tp!1972341 () Bool)

(declare-fun tp!1972339 () Bool)

(assert (=> b!7147358 (= e!4295025 (and tp!1972341 tp!1972339))))

(assert (= (and b!7147143 (is-ElementMatch!18220 (reg!18549 (regTwo!36953 r!7278)))) b!7147357))

(assert (= (and b!7147143 (is-Concat!27065 (reg!18549 (regTwo!36953 r!7278)))) b!7147358))

(assert (= (and b!7147143 (is-Star!18220 (reg!18549 (regTwo!36953 r!7278)))) b!7147359))

(assert (= (and b!7147143 (is-Union!18220 (reg!18549 (regTwo!36953 r!7278)))) b!7147360))

(declare-fun b!7147364 () Bool)

(declare-fun e!4295026 () Bool)

(declare-fun tp!1972347 () Bool)

(declare-fun tp!1972343 () Bool)

(assert (=> b!7147364 (= e!4295026 (and tp!1972347 tp!1972343))))

(declare-fun b!7147361 () Bool)

(assert (=> b!7147361 (= e!4295026 tp_is_empty!46077)))

(declare-fun b!7147363 () Bool)

(declare-fun tp!1972345 () Bool)

(assert (=> b!7147363 (= e!4295026 tp!1972345)))

(assert (=> b!7147113 (= tp!1972187 e!4295026)))

(declare-fun b!7147362 () Bool)

(declare-fun tp!1972346 () Bool)

(declare-fun tp!1972344 () Bool)

(assert (=> b!7147362 (= e!4295026 (and tp!1972346 tp!1972344))))

(assert (= (and b!7147113 (is-ElementMatch!18220 (regOne!36952 (regOne!36952 r!7278)))) b!7147361))

(assert (= (and b!7147113 (is-Concat!27065 (regOne!36952 (regOne!36952 r!7278)))) b!7147362))

(assert (= (and b!7147113 (is-Star!18220 (regOne!36952 (regOne!36952 r!7278)))) b!7147363))

(assert (= (and b!7147113 (is-Union!18220 (regOne!36952 (regOne!36952 r!7278)))) b!7147364))

(declare-fun b!7147368 () Bool)

(declare-fun e!4295027 () Bool)

(declare-fun tp!1972352 () Bool)

(declare-fun tp!1972348 () Bool)

(assert (=> b!7147368 (= e!4295027 (and tp!1972352 tp!1972348))))

(declare-fun b!7147365 () Bool)

(assert (=> b!7147365 (= e!4295027 tp_is_empty!46077)))

(declare-fun b!7147367 () Bool)

(declare-fun tp!1972350 () Bool)

(assert (=> b!7147367 (= e!4295027 tp!1972350)))

(assert (=> b!7147113 (= tp!1972185 e!4295027)))

(declare-fun b!7147366 () Bool)

(declare-fun tp!1972351 () Bool)

(declare-fun tp!1972349 () Bool)

(assert (=> b!7147366 (= e!4295027 (and tp!1972351 tp!1972349))))

(assert (= (and b!7147113 (is-ElementMatch!18220 (regTwo!36952 (regOne!36952 r!7278)))) b!7147365))

(assert (= (and b!7147113 (is-Concat!27065 (regTwo!36952 (regOne!36952 r!7278)))) b!7147366))

(assert (= (and b!7147113 (is-Star!18220 (regTwo!36952 (regOne!36952 r!7278)))) b!7147367))

(assert (= (and b!7147113 (is-Union!18220 (regTwo!36952 (regOne!36952 r!7278)))) b!7147368))

(declare-fun b!7147372 () Bool)

(declare-fun e!4295028 () Bool)

(declare-fun tp!1972357 () Bool)

(declare-fun tp!1972353 () Bool)

(assert (=> b!7147372 (= e!4295028 (and tp!1972357 tp!1972353))))

(declare-fun b!7147369 () Bool)

(assert (=> b!7147369 (= e!4295028 tp_is_empty!46077)))

(declare-fun b!7147371 () Bool)

(declare-fun tp!1972355 () Bool)

(assert (=> b!7147371 (= e!4295028 tp!1972355)))

(assert (=> b!7147134 (= tp!1972209 e!4295028)))

(declare-fun b!7147370 () Bool)

(declare-fun tp!1972356 () Bool)

(declare-fun tp!1972354 () Bool)

(assert (=> b!7147370 (= e!4295028 (and tp!1972356 tp!1972354))))

(assert (= (and b!7147134 (is-ElementMatch!18220 (regOne!36952 (reg!18549 r!7278)))) b!7147369))

(assert (= (and b!7147134 (is-Concat!27065 (regOne!36952 (reg!18549 r!7278)))) b!7147370))

(assert (= (and b!7147134 (is-Star!18220 (regOne!36952 (reg!18549 r!7278)))) b!7147371))

(assert (= (and b!7147134 (is-Union!18220 (regOne!36952 (reg!18549 r!7278)))) b!7147372))

(declare-fun b!7147376 () Bool)

(declare-fun e!4295029 () Bool)

(declare-fun tp!1972362 () Bool)

(declare-fun tp!1972358 () Bool)

(assert (=> b!7147376 (= e!4295029 (and tp!1972362 tp!1972358))))

(declare-fun b!7147373 () Bool)

(assert (=> b!7147373 (= e!4295029 tp_is_empty!46077)))

(declare-fun b!7147375 () Bool)

(declare-fun tp!1972360 () Bool)

(assert (=> b!7147375 (= e!4295029 tp!1972360)))

(assert (=> b!7147134 (= tp!1972207 e!4295029)))

(declare-fun b!7147374 () Bool)

(declare-fun tp!1972361 () Bool)

(declare-fun tp!1972359 () Bool)

(assert (=> b!7147374 (= e!4295029 (and tp!1972361 tp!1972359))))

(assert (= (and b!7147134 (is-ElementMatch!18220 (regTwo!36952 (reg!18549 r!7278)))) b!7147373))

(assert (= (and b!7147134 (is-Concat!27065 (regTwo!36952 (reg!18549 r!7278)))) b!7147374))

(assert (= (and b!7147134 (is-Star!18220 (regTwo!36952 (reg!18549 r!7278)))) b!7147375))

(assert (= (and b!7147134 (is-Union!18220 (regTwo!36952 (reg!18549 r!7278)))) b!7147376))

(declare-fun b!7147380 () Bool)

(declare-fun e!4295030 () Bool)

(declare-fun tp!1972367 () Bool)

(declare-fun tp!1972363 () Bool)

(assert (=> b!7147380 (= e!4295030 (and tp!1972367 tp!1972363))))

(declare-fun b!7147377 () Bool)

(assert (=> b!7147377 (= e!4295030 tp_is_empty!46077)))

(declare-fun b!7147379 () Bool)

(declare-fun tp!1972365 () Bool)

(assert (=> b!7147379 (= e!4295030 tp!1972365)))

(assert (=> b!7147138 (= tp!1972214 e!4295030)))

(declare-fun b!7147378 () Bool)

(declare-fun tp!1972366 () Bool)

(declare-fun tp!1972364 () Bool)

(assert (=> b!7147378 (= e!4295030 (and tp!1972366 tp!1972364))))

(assert (= (and b!7147138 (is-ElementMatch!18220 (regOne!36952 (regOne!36953 r!7278)))) b!7147377))

(assert (= (and b!7147138 (is-Concat!27065 (regOne!36952 (regOne!36953 r!7278)))) b!7147378))

(assert (= (and b!7147138 (is-Star!18220 (regOne!36952 (regOne!36953 r!7278)))) b!7147379))

(assert (= (and b!7147138 (is-Union!18220 (regOne!36952 (regOne!36953 r!7278)))) b!7147380))

(declare-fun b!7147384 () Bool)

(declare-fun e!4295031 () Bool)

(declare-fun tp!1972372 () Bool)

(declare-fun tp!1972368 () Bool)

(assert (=> b!7147384 (= e!4295031 (and tp!1972372 tp!1972368))))

(declare-fun b!7147381 () Bool)

(assert (=> b!7147381 (= e!4295031 tp_is_empty!46077)))

(declare-fun b!7147383 () Bool)

(declare-fun tp!1972370 () Bool)

(assert (=> b!7147383 (= e!4295031 tp!1972370)))

(assert (=> b!7147138 (= tp!1972212 e!4295031)))

(declare-fun b!7147382 () Bool)

(declare-fun tp!1972371 () Bool)

(declare-fun tp!1972369 () Bool)

(assert (=> b!7147382 (= e!4295031 (and tp!1972371 tp!1972369))))

(assert (= (and b!7147138 (is-ElementMatch!18220 (regTwo!36952 (regOne!36953 r!7278)))) b!7147381))

(assert (= (and b!7147138 (is-Concat!27065 (regTwo!36952 (regOne!36953 r!7278)))) b!7147382))

(assert (= (and b!7147138 (is-Star!18220 (regTwo!36952 (regOne!36953 r!7278)))) b!7147383))

(assert (= (and b!7147138 (is-Union!18220 (regTwo!36952 (regOne!36953 r!7278)))) b!7147384))

(declare-fun b!7147388 () Bool)

(declare-fun e!4295032 () Bool)

(declare-fun tp!1972377 () Bool)

(declare-fun tp!1972373 () Bool)

(assert (=> b!7147388 (= e!4295032 (and tp!1972377 tp!1972373))))

(declare-fun b!7147385 () Bool)

(assert (=> b!7147385 (= e!4295032 tp_is_empty!46077)))

(declare-fun b!7147387 () Bool)

(declare-fun tp!1972375 () Bool)

(assert (=> b!7147387 (= e!4295032 tp!1972375)))

(assert (=> b!7147117 (= tp!1972192 e!4295032)))

(declare-fun b!7147386 () Bool)

(declare-fun tp!1972376 () Bool)

(declare-fun tp!1972374 () Bool)

(assert (=> b!7147386 (= e!4295032 (and tp!1972376 tp!1972374))))

(assert (= (and b!7147117 (is-ElementMatch!18220 (regOne!36952 (regTwo!36952 r!7278)))) b!7147385))

(assert (= (and b!7147117 (is-Concat!27065 (regOne!36952 (regTwo!36952 r!7278)))) b!7147386))

(assert (= (and b!7147117 (is-Star!18220 (regOne!36952 (regTwo!36952 r!7278)))) b!7147387))

(assert (= (and b!7147117 (is-Union!18220 (regOne!36952 (regTwo!36952 r!7278)))) b!7147388))

(declare-fun b!7147392 () Bool)

(declare-fun e!4295033 () Bool)

(declare-fun tp!1972382 () Bool)

(declare-fun tp!1972378 () Bool)

(assert (=> b!7147392 (= e!4295033 (and tp!1972382 tp!1972378))))

(declare-fun b!7147389 () Bool)

(assert (=> b!7147389 (= e!4295033 tp_is_empty!46077)))

(declare-fun b!7147391 () Bool)

(declare-fun tp!1972380 () Bool)

(assert (=> b!7147391 (= e!4295033 tp!1972380)))

(assert (=> b!7147117 (= tp!1972190 e!4295033)))

(declare-fun b!7147390 () Bool)

(declare-fun tp!1972381 () Bool)

(declare-fun tp!1972379 () Bool)

(assert (=> b!7147390 (= e!4295033 (and tp!1972381 tp!1972379))))

(assert (= (and b!7147117 (is-ElementMatch!18220 (regTwo!36952 (regTwo!36952 r!7278)))) b!7147389))

(assert (= (and b!7147117 (is-Concat!27065 (regTwo!36952 (regTwo!36952 r!7278)))) b!7147390))

(assert (= (and b!7147117 (is-Star!18220 (regTwo!36952 (regTwo!36952 r!7278)))) b!7147391))

(assert (= (and b!7147117 (is-Union!18220 (regTwo!36952 (regTwo!36952 r!7278)))) b!7147392))

(declare-fun b!7147396 () Bool)

(declare-fun e!4295034 () Bool)

(declare-fun tp!1972387 () Bool)

(declare-fun tp!1972383 () Bool)

(assert (=> b!7147396 (= e!4295034 (and tp!1972387 tp!1972383))))

(declare-fun b!7147393 () Bool)

(assert (=> b!7147393 (= e!4295034 tp_is_empty!46077)))

(declare-fun b!7147395 () Bool)

(declare-fun tp!1972385 () Bool)

(assert (=> b!7147395 (= e!4295034 tp!1972385)))

(assert (=> b!7147142 (= tp!1972219 e!4295034)))

(declare-fun b!7147394 () Bool)

(declare-fun tp!1972386 () Bool)

(declare-fun tp!1972384 () Bool)

(assert (=> b!7147394 (= e!4295034 (and tp!1972386 tp!1972384))))

(assert (= (and b!7147142 (is-ElementMatch!18220 (regOne!36952 (regTwo!36953 r!7278)))) b!7147393))

(assert (= (and b!7147142 (is-Concat!27065 (regOne!36952 (regTwo!36953 r!7278)))) b!7147394))

(assert (= (and b!7147142 (is-Star!18220 (regOne!36952 (regTwo!36953 r!7278)))) b!7147395))

(assert (= (and b!7147142 (is-Union!18220 (regOne!36952 (regTwo!36953 r!7278)))) b!7147396))

(declare-fun b!7147400 () Bool)

(declare-fun e!4295035 () Bool)

(declare-fun tp!1972392 () Bool)

(declare-fun tp!1972388 () Bool)

(assert (=> b!7147400 (= e!4295035 (and tp!1972392 tp!1972388))))

(declare-fun b!7147397 () Bool)

(assert (=> b!7147397 (= e!4295035 tp_is_empty!46077)))

(declare-fun b!7147399 () Bool)

(declare-fun tp!1972390 () Bool)

(assert (=> b!7147399 (= e!4295035 tp!1972390)))

(assert (=> b!7147142 (= tp!1972217 e!4295035)))

(declare-fun b!7147398 () Bool)

(declare-fun tp!1972391 () Bool)

(declare-fun tp!1972389 () Bool)

(assert (=> b!7147398 (= e!4295035 (and tp!1972391 tp!1972389))))

(assert (= (and b!7147142 (is-ElementMatch!18220 (regTwo!36952 (regTwo!36953 r!7278)))) b!7147397))

(assert (= (and b!7147142 (is-Concat!27065 (regTwo!36952 (regTwo!36953 r!7278)))) b!7147398))

(assert (= (and b!7147142 (is-Star!18220 (regTwo!36952 (regTwo!36953 r!7278)))) b!7147399))

(assert (= (and b!7147142 (is-Union!18220 (regTwo!36952 (regTwo!36953 r!7278)))) b!7147400))

(declare-fun b!7147401 () Bool)

(declare-fun e!4295036 () Bool)

(declare-fun tp!1972393 () Bool)

(declare-fun tp!1972394 () Bool)

(assert (=> b!7147401 (= e!4295036 (and tp!1972393 tp!1972394))))

(assert (=> b!7147127 (= tp!1972198 e!4295036)))

(assert (= (and b!7147127 (is-Cons!69394 (exprs!7714 (h!75843 (t!383536 zl!333))))) b!7147401))

(declare-fun b!7147403 () Bool)

(declare-fun e!4295038 () Bool)

(declare-fun tp!1972395 () Bool)

(assert (=> b!7147403 (= e!4295038 tp!1972395)))

(declare-fun b!7147402 () Bool)

(declare-fun tp!1972396 () Bool)

(declare-fun e!4295037 () Bool)

(assert (=> b!7147402 (= e!4295037 (and (inv!88615 (h!75843 (t!383536 (t!383536 zl!333)))) e!4295038 tp!1972396))))

(assert (=> b!7147126 (= tp!1972199 e!4295037)))

(assert (= b!7147402 b!7147403))

(assert (= (and b!7147126 (is-Cons!69395 (t!383536 (t!383536 zl!333)))) b!7147402))

(declare-fun m!7859858 () Bool)

(assert (=> b!7147402 m!7859858))

(declare-fun b!7147407 () Bool)

(declare-fun e!4295039 () Bool)

(declare-fun tp!1972401 () Bool)

(declare-fun tp!1972397 () Bool)

(assert (=> b!7147407 (= e!4295039 (and tp!1972401 tp!1972397))))

(declare-fun b!7147404 () Bool)

(assert (=> b!7147404 (= e!4295039 tp_is_empty!46077)))

(declare-fun b!7147406 () Bool)

(declare-fun tp!1972399 () Bool)

(assert (=> b!7147406 (= e!4295039 tp!1972399)))

(assert (=> b!7147132 (= tp!1972204 e!4295039)))

(declare-fun b!7147405 () Bool)

(declare-fun tp!1972400 () Bool)

(declare-fun tp!1972398 () Bool)

(assert (=> b!7147405 (= e!4295039 (and tp!1972400 tp!1972398))))

(assert (= (and b!7147132 (is-ElementMatch!18220 (h!75842 (exprs!7714 (h!75843 zl!333))))) b!7147404))

(assert (= (and b!7147132 (is-Concat!27065 (h!75842 (exprs!7714 (h!75843 zl!333))))) b!7147405))

(assert (= (and b!7147132 (is-Star!18220 (h!75842 (exprs!7714 (h!75843 zl!333))))) b!7147406))

(assert (= (and b!7147132 (is-Union!18220 (h!75842 (exprs!7714 (h!75843 zl!333))))) b!7147407))

(declare-fun b!7147408 () Bool)

(declare-fun e!4295040 () Bool)

(declare-fun tp!1972402 () Bool)

(declare-fun tp!1972403 () Bool)

(assert (=> b!7147408 (= e!4295040 (and tp!1972402 tp!1972403))))

(assert (=> b!7147132 (= tp!1972205 e!4295040)))

(assert (= (and b!7147132 (is-Cons!69394 (t!383535 (exprs!7714 (h!75843 zl!333))))) b!7147408))

(declare-fun b_lambda!272777 () Bool)

(assert (= b_lambda!272765 (or d!2228235 b_lambda!272777)))

(declare-fun bs!1889289 () Bool)

(declare-fun d!2228301 () Bool)

(assert (= bs!1889289 (and d!2228301 d!2228235)))

(assert (=> bs!1889289 (= (dynLambda!28262 lambda!435867 (h!75843 zl!333)) (not (dynLambda!28262 lambda!435845 (h!75843 zl!333))))))

(declare-fun b_lambda!272789 () Bool)

(assert (=> (not b_lambda!272789) (not bs!1889289)))

(declare-fun m!7859860 () Bool)

(assert (=> bs!1889289 m!7859860))

(assert (=> b!7147224 d!2228301))

(declare-fun b_lambda!272779 () Bool)

(assert (= b_lambda!272773 (or d!2228241 b_lambda!272779)))

(declare-fun bs!1889290 () Bool)

(declare-fun d!2228303 () Bool)

(assert (= bs!1889290 (and d!2228303 d!2228241)))

(assert (=> bs!1889290 (= (dynLambda!28262 lambda!435868 (h!75843 (t!383536 zl!333))) (not (dynLambda!28262 lambda!435845 (h!75843 (t!383536 zl!333)))))))

(declare-fun b_lambda!272791 () Bool)

(assert (=> (not b_lambda!272791) (not bs!1889290)))

(declare-fun m!7859862 () Bool)

(assert (=> bs!1889290 m!7859862))

(assert (=> b!7147262 d!2228303))

(declare-fun b_lambda!272781 () Bool)

(assert (= b_lambda!272775 (or d!2228227 b_lambda!272781)))

(declare-fun bs!1889291 () Bool)

(declare-fun d!2228305 () Bool)

(assert (= bs!1889291 (and d!2228305 d!2228227)))

(assert (=> bs!1889291 (= (dynLambda!28263 lambda!435861 (h!75842 (exprs!7714 (h!75843 zl!333)))) (validRegex!9382 (h!75842 (exprs!7714 (h!75843 zl!333)))))))

(declare-fun m!7859864 () Bool)

(assert (=> bs!1889291 m!7859864))

(assert (=> b!7147291 d!2228305))

(declare-fun b_lambda!272783 () Bool)

(assert (= b_lambda!272769 (or d!2228221 b_lambda!272783)))

(declare-fun bs!1889292 () Bool)

(declare-fun d!2228307 () Bool)

(assert (= bs!1889292 (and d!2228307 d!2228221)))

(assert (=> bs!1889292 (= (dynLambda!28263 lambda!435853 (h!75842 lt!2568950)) (validRegex!9382 (h!75842 lt!2568950)))))

(declare-fun m!7859866 () Bool)

(assert (=> bs!1889292 m!7859866))

(assert (=> b!7147258 d!2228307))

(declare-fun b_lambda!272785 () Bool)

(assert (= b_lambda!272767 (or d!2228231 b_lambda!272785)))

(declare-fun bs!1889293 () Bool)

(declare-fun d!2228309 () Bool)

(assert (= bs!1889293 (and d!2228309 d!2228231)))

(assert (=> bs!1889293 (= (dynLambda!28263 lambda!435863 (h!75842 lt!2568959)) (validRegex!9382 (h!75842 lt!2568959)))))

(declare-fun m!7859868 () Bool)

(assert (=> bs!1889293 m!7859868))

(assert (=> b!7147244 d!2228309))

(declare-fun b_lambda!272787 () Bool)

(assert (= b_lambda!272771 (or d!2228223 b_lambda!272787)))

(declare-fun bs!1889294 () Bool)

(declare-fun d!2228311 () Bool)

(assert (= bs!1889294 (and d!2228311 d!2228223)))

(assert (=> bs!1889294 (= (dynLambda!28263 lambda!435856 (h!75842 (exprs!7714 (h!75843 zl!333)))) (validRegex!9382 (h!75842 (exprs!7714 (h!75843 zl!333)))))))

(assert (=> bs!1889294 m!7859864))

(assert (=> b!7147260 d!2228311))

(push 1)

(assert (not d!2228261))

(assert (not b_lambda!272789))

(assert (not b!7147359))

(assert (not b!7147338))

(assert (not b!7147239))

(assert (not b!7147374))

(assert (not b!7147306))

(assert (not b!7147237))

(assert (not d!2228291))

(assert (not b!7147384))

(assert (not b!7147330))

(assert (not b!7147394))

(assert (not b!7147285))

(assert (not b!7147363))

(assert (not b!7147319))

(assert (not b!7147308))

(assert (not b!7147328))

(assert (not bs!1889291))

(assert (not b!7147234))

(assert (not b!7147261))

(assert (not d!2228289))

(assert (not b!7147371))

(assert (not b!7147252))

(assert (not b!7147347))

(assert (not b!7147383))

(assert (not b_lambda!272785))

(assert (not b_lambda!272791))

(assert (not b!7147323))

(assert (not b!7147314))

(assert (not bm!651414))

(assert (not b!7147375))

(assert (not b!7147315))

(assert (not b!7147250))

(assert (not b!7147346))

(assert (not b!7147227))

(assert (not b!7147390))

(assert (not b!7147334))

(assert (not b_lambda!272787))

(assert (not b!7147355))

(assert (not b!7147312))

(assert (not b!7147247))

(assert (not b!7147408))

(assert (not b!7147403))

(assert (not b!7147248))

(assert (not b!7147399))

(assert (not b!7147366))

(assert (not b!7147342))

(assert (not b!7147354))

(assert (not b!7147310))

(assert (not b!7147407))

(assert (not b_lambda!272781))

(assert (not bs!1889294))

(assert (not b!7147372))

(assert (not b!7147401))

(assert (not b!7147358))

(assert (not b!7147292))

(assert (not d!2228273))

(assert (not b!7147332))

(assert (not b!7147326))

(assert (not b!7147249))

(assert (not b!7147368))

(assert (not b!7147367))

(assert (not b!7147380))

(assert (not b!7147352))

(assert (not b!7147263))

(assert (not b!7147255))

(assert (not b!7147303))

(assert (not b!7147307))

(assert (not d!2228255))

(assert (not b!7147320))

(assert (not b!7147356))

(assert (not b!7147300))

(assert (not d!2228295))

(assert (not b!7147229))

(assert (not b!7147316))

(assert (not b!7147396))

(assert (not b!7147302))

(assert (not b!7147405))

(assert (not b!7147343))

(assert (not b!7147256))

(assert (not b!7147259))

(assert (not b!7147245))

(assert (not b!7147376))

(assert (not b!7147327))

(assert tp_is_empty!46077)

(assert (not bs!1889292))

(assert (not b!7147350))

(assert (not b!7147298))

(assert (not b!7147331))

(assert (not bm!651416))

(assert (not b!7147400))

(assert (not bs!1889293))

(assert (not b!7147344))

(assert (not b!7147311))

(assert (not b_lambda!272779))

(assert (not b!7147370))

(assert (not b!7147395))

(assert (not b!7147362))

(assert (not b!7147379))

(assert (not b!7147388))

(assert (not b!7147387))

(assert (not d!2228271))

(assert (not b!7147318))

(assert (not b!7147351))

(assert (not b!7147364))

(assert (not b!7147322))

(assert (not b!7147360))

(assert (not b!7147382))

(assert (not b!7147392))

(assert (not d!2228263))

(assert (not b!7147253))

(assert (not b!7147236))

(assert (not b!7147348))

(assert (not b!7147335))

(assert (not b!7147406))

(assert (not b!7147378))

(assert (not b!7147324))

(assert (not b!7147232))

(assert (not b_lambda!272777))

(assert (not b!7147391))

(assert (not b_lambda!272783))

(assert (not b!7147398))

(assert (not b!7147402))

(assert (not b!7147304))

(assert (not b!7147336))

(assert (not b!7147233))

(assert (not b!7147225))

(assert (not b!7147231))

(assert (not b!7147340))

(assert (not b!7147386))

(assert (not b!7147339))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

