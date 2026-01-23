; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!236266 () Bool)

(assert start!236266)

(declare-fun b!2410811 () Bool)

(declare-fun e!1534764 () Bool)

(declare-datatypes ((C!14314 0))(
  ( (C!14315 (val!8399 Int)) )
))
(declare-datatypes ((Regex!7078 0))(
  ( (ElementMatch!7078 (c!384062 C!14314)) (Concat!11714 (regOne!14668 Regex!7078) (regTwo!14668 Regex!7078)) (EmptyExpr!7078) (Star!7078 (reg!7407 Regex!7078)) (EmptyLang!7078) (Union!7078 (regOne!14669 Regex!7078) (regTwo!14669 Regex!7078)) )
))
(declare-fun lt!873563 () Regex!7078)

(declare-fun validRegex!2800 (Regex!7078) Bool)

(assert (=> b!2410811 (= e!1534764 (validRegex!2800 lt!873563))))

(declare-datatypes ((List!28394 0))(
  ( (Nil!28296) (Cons!28296 (h!33697 C!14314) (t!208371 List!28394)) )
))
(declare-fun s!9460 () List!28394)

(declare-datatypes ((tuple2!27952 0))(
  ( (tuple2!27953 (_1!16517 List!28394) (_2!16517 List!28394)) )
))
(declare-datatypes ((Option!5587 0))(
  ( (None!5586) (Some!5586 (v!30994 tuple2!27952)) )
))
(declare-fun isDefined!4415 (Option!5587) Bool)

(declare-fun findConcatSeparation!695 (Regex!7078 Regex!7078 List!28394 List!28394 List!28394) Option!5587)

(assert (=> b!2410811 (isDefined!4415 (findConcatSeparation!695 lt!873563 EmptyExpr!7078 Nil!28296 s!9460 s!9460))))

(declare-datatypes ((Unit!41427 0))(
  ( (Unit!41428) )
))
(declare-fun lt!873561 () Unit!41427)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!51 (Regex!7078 Regex!7078 List!28394) Unit!41427)

(assert (=> b!2410811 (= lt!873561 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!51 lt!873563 EmptyExpr!7078 s!9460))))

(declare-fun e!1534763 () Bool)

(assert (=> b!2410811 e!1534763))

(declare-fun res!1023864 () Bool)

(assert (=> b!2410811 (=> (not res!1023864) (not e!1534763))))

(declare-fun lt!873559 () Regex!7078)

(declare-fun matchR!3195 (Regex!7078 List!28394) Bool)

(declare-fun ++!7007 (List!28394 List!28394) List!28394)

(assert (=> b!2410811 (= res!1023864 (matchR!3195 lt!873559 (++!7007 s!9460 Nil!28296)))))

(assert (=> b!2410811 (= lt!873559 (Concat!11714 lt!873563 EmptyExpr!7078))))

(declare-fun lt!873560 () Unit!41427)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!77 (Regex!7078 Regex!7078 List!28394 List!28394) Unit!41427)

(assert (=> b!2410811 (= lt!873560 (lemmaTwoRegexMatchThenConcatMatchesConcatString!77 lt!873563 EmptyExpr!7078 s!9460 Nil!28296))))

(declare-fun b!2410812 () Bool)

(declare-fun e!1534760 () Bool)

(declare-fun e!1534757 () Bool)

(assert (=> b!2410812 (= e!1534760 (not e!1534757))))

(declare-fun res!1023868 () Bool)

(assert (=> b!2410812 (=> res!1023868 e!1534757)))

(declare-fun r!13927 () Regex!7078)

(assert (=> b!2410812 (= res!1023868 (or (is-Concat!11714 r!13927) (is-EmptyExpr!7078 r!13927)))))

(declare-fun matchRSpec!927 (Regex!7078 List!28394) Bool)

(assert (=> b!2410812 (= (matchR!3195 r!13927 s!9460) (matchRSpec!927 r!13927 s!9460))))

(declare-fun lt!873562 () Unit!41427)

(declare-fun mainMatchTheorem!927 (Regex!7078 List!28394) Unit!41427)

(assert (=> b!2410812 (= lt!873562 (mainMatchTheorem!927 r!13927 s!9460))))

(declare-fun b!2410813 () Bool)

(declare-fun e!1534761 () Bool)

(declare-fun tp_is_empty!11569 () Bool)

(assert (=> b!2410813 (= e!1534761 tp_is_empty!11569)))

(declare-fun b!2410814 () Bool)

(declare-fun e!1534762 () Bool)

(assert (=> b!2410814 (= e!1534757 e!1534762)))

(declare-fun res!1023867 () Bool)

(assert (=> b!2410814 (=> res!1023867 e!1534762)))

(declare-datatypes ((List!28395 0))(
  ( (Nil!28297) (Cons!28297 (h!33698 Regex!7078) (t!208372 List!28395)) )
))
(declare-fun lt!873564 () List!28395)

(declare-fun isEmpty!16301 (List!28395) Bool)

(assert (=> b!2410814 (= res!1023867 (not (isEmpty!16301 lt!873564)))))

(declare-fun l!9164 () List!28395)

(declare-fun tail!3647 (List!28395) List!28395)

(assert (=> b!2410814 (= lt!873564 (tail!3647 l!9164))))

(declare-fun b!2410815 () Bool)

(declare-fun tp!766985 () Bool)

(declare-fun tp!766984 () Bool)

(assert (=> b!2410815 (= e!1534761 (and tp!766985 tp!766984))))

(declare-fun res!1023866 () Bool)

(assert (=> start!236266 (=> (not res!1023866) (not e!1534760))))

(declare-fun lambda!90750 () Int)

(declare-fun forall!5712 (List!28395 Int) Bool)

(assert (=> start!236266 (= res!1023866 (forall!5712 l!9164 lambda!90750))))

(assert (=> start!236266 e!1534760))

(declare-fun e!1534758 () Bool)

(assert (=> start!236266 e!1534758))

(assert (=> start!236266 e!1534761))

(declare-fun e!1534759 () Bool)

(assert (=> start!236266 e!1534759))

(declare-fun b!2410816 () Bool)

(declare-fun res!1023861 () Bool)

(assert (=> b!2410816 (=> res!1023861 e!1534757)))

(assert (=> b!2410816 (= res!1023861 (isEmpty!16301 l!9164))))

(declare-fun b!2410817 () Bool)

(declare-fun tp!766983 () Bool)

(assert (=> b!2410817 (= e!1534761 tp!766983)))

(declare-fun b!2410818 () Bool)

(declare-fun tp!766982 () Bool)

(assert (=> b!2410818 (= e!1534759 (and tp_is_empty!11569 tp!766982))))

(declare-fun b!2410819 () Bool)

(assert (=> b!2410819 (= e!1534763 (matchR!3195 lt!873559 s!9460))))

(declare-fun b!2410820 () Bool)

(declare-fun res!1023862 () Bool)

(assert (=> b!2410820 (=> res!1023862 e!1534762)))

(declare-fun generalisedConcat!179 (List!28395) Regex!7078)

(assert (=> b!2410820 (= res!1023862 (not (= (generalisedConcat!179 lt!873564) EmptyExpr!7078)))))

(declare-fun b!2410821 () Bool)

(declare-fun tp!766981 () Bool)

(declare-fun tp!766980 () Bool)

(assert (=> b!2410821 (= e!1534758 (and tp!766981 tp!766980))))

(declare-fun b!2410822 () Bool)

(assert (=> b!2410822 (= e!1534762 e!1534764)))

(declare-fun res!1023863 () Bool)

(assert (=> b!2410822 (=> res!1023863 e!1534764)))

(assert (=> b!2410822 (= res!1023863 (not (matchR!3195 lt!873563 s!9460)))))

(declare-fun head!5375 (List!28395) Regex!7078)

(assert (=> b!2410822 (= lt!873563 (head!5375 l!9164))))

(declare-fun b!2410823 () Bool)

(declare-fun res!1023865 () Bool)

(assert (=> b!2410823 (=> (not res!1023865) (not e!1534760))))

(assert (=> b!2410823 (= res!1023865 (= r!13927 (generalisedConcat!179 l!9164)))))

(declare-fun b!2410824 () Bool)

(declare-fun tp!766979 () Bool)

(declare-fun tp!766978 () Bool)

(assert (=> b!2410824 (= e!1534761 (and tp!766979 tp!766978))))

(assert (= (and start!236266 res!1023866) b!2410823))

(assert (= (and b!2410823 res!1023865) b!2410812))

(assert (= (and b!2410812 (not res!1023868)) b!2410816))

(assert (= (and b!2410816 (not res!1023861)) b!2410814))

(assert (= (and b!2410814 (not res!1023867)) b!2410820))

(assert (= (and b!2410820 (not res!1023862)) b!2410822))

(assert (= (and b!2410822 (not res!1023863)) b!2410811))

(assert (= (and b!2410811 res!1023864) b!2410819))

(assert (= (and start!236266 (is-Cons!28297 l!9164)) b!2410821))

(assert (= (and start!236266 (is-ElementMatch!7078 r!13927)) b!2410813))

(assert (= (and start!236266 (is-Concat!11714 r!13927)) b!2410824))

(assert (= (and start!236266 (is-Star!7078 r!13927)) b!2410817))

(assert (= (and start!236266 (is-Union!7078 r!13927)) b!2410815))

(assert (= (and start!236266 (is-Cons!28296 s!9460)) b!2410818))

(declare-fun m!2802191 () Bool)

(assert (=> start!236266 m!2802191))

(declare-fun m!2802193 () Bool)

(assert (=> b!2410816 m!2802193))

(declare-fun m!2802195 () Bool)

(assert (=> b!2410822 m!2802195))

(declare-fun m!2802197 () Bool)

(assert (=> b!2410822 m!2802197))

(declare-fun m!2802199 () Bool)

(assert (=> b!2410820 m!2802199))

(declare-fun m!2802201 () Bool)

(assert (=> b!2410814 m!2802201))

(declare-fun m!2802203 () Bool)

(assert (=> b!2410814 m!2802203))

(declare-fun m!2802205 () Bool)

(assert (=> b!2410811 m!2802205))

(declare-fun m!2802207 () Bool)

(assert (=> b!2410811 m!2802207))

(declare-fun m!2802209 () Bool)

(assert (=> b!2410811 m!2802209))

(declare-fun m!2802211 () Bool)

(assert (=> b!2410811 m!2802211))

(declare-fun m!2802213 () Bool)

(assert (=> b!2410811 m!2802213))

(declare-fun m!2802215 () Bool)

(assert (=> b!2410811 m!2802215))

(declare-fun m!2802217 () Bool)

(assert (=> b!2410811 m!2802217))

(assert (=> b!2410811 m!2802205))

(assert (=> b!2410811 m!2802211))

(declare-fun m!2802219 () Bool)

(assert (=> b!2410819 m!2802219))

(declare-fun m!2802221 () Bool)

(assert (=> b!2410812 m!2802221))

(declare-fun m!2802223 () Bool)

(assert (=> b!2410812 m!2802223))

(declare-fun m!2802225 () Bool)

(assert (=> b!2410812 m!2802225))

(declare-fun m!2802227 () Bool)

(assert (=> b!2410823 m!2802227))

(push 1)

(assert (not b!2410815))

(assert (not b!2410819))

(assert (not b!2410814))

(assert (not b!2410820))

(assert (not b!2410812))

(assert (not b!2410817))

(assert (not start!236266))

(assert (not b!2410818))

(assert (not b!2410816))

(assert (not b!2410823))

(assert tp_is_empty!11569)

(assert (not b!2410821))

(assert (not b!2410811))

(assert (not b!2410822))

(assert (not b!2410824))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!463429 () Bool)

(declare-fun d!700612 () Bool)

(assert (= bs!463429 (and d!700612 start!236266)))

(declare-fun lambda!90756 () Int)

(assert (=> bs!463429 (= lambda!90756 lambda!90750)))

(declare-fun b!2410887 () Bool)

(declare-fun e!1534806 () Bool)

(declare-fun lt!873585 () Regex!7078)

(declare-fun isEmptyExpr!139 (Regex!7078) Bool)

(assert (=> b!2410887 (= e!1534806 (isEmptyExpr!139 lt!873585))))

(declare-fun b!2410888 () Bool)

(declare-fun e!1534801 () Bool)

(assert (=> b!2410888 (= e!1534801 (= lt!873585 (head!5375 l!9164)))))

(declare-fun b!2410889 () Bool)

(declare-fun e!1534804 () Regex!7078)

(declare-fun e!1534805 () Regex!7078)

(assert (=> b!2410889 (= e!1534804 e!1534805)))

(declare-fun c!384075 () Bool)

(assert (=> b!2410889 (= c!384075 (is-Cons!28297 l!9164))))

(declare-fun b!2410890 () Bool)

(assert (=> b!2410890 (= e!1534805 EmptyExpr!7078)))

(declare-fun b!2410891 () Bool)

(declare-fun isConcat!139 (Regex!7078) Bool)

(assert (=> b!2410891 (= e!1534801 (isConcat!139 lt!873585))))

(declare-fun b!2410892 () Bool)

(declare-fun e!1534803 () Bool)

(assert (=> b!2410892 (= e!1534803 (isEmpty!16301 (t!208372 l!9164)))))

(declare-fun e!1534802 () Bool)

(assert (=> d!700612 e!1534802))

(declare-fun res!1023897 () Bool)

(assert (=> d!700612 (=> (not res!1023897) (not e!1534802))))

(assert (=> d!700612 (= res!1023897 (validRegex!2800 lt!873585))))

(assert (=> d!700612 (= lt!873585 e!1534804)))

(declare-fun c!384072 () Bool)

(assert (=> d!700612 (= c!384072 e!1534803)))

(declare-fun res!1023898 () Bool)

(assert (=> d!700612 (=> (not res!1023898) (not e!1534803))))

(assert (=> d!700612 (= res!1023898 (is-Cons!28297 l!9164))))

(assert (=> d!700612 (forall!5712 l!9164 lambda!90756)))

(assert (=> d!700612 (= (generalisedConcat!179 l!9164) lt!873585)))

(declare-fun b!2410893 () Bool)

(assert (=> b!2410893 (= e!1534805 (Concat!11714 (h!33698 l!9164) (generalisedConcat!179 (t!208372 l!9164))))))

(declare-fun b!2410894 () Bool)

(assert (=> b!2410894 (= e!1534806 e!1534801)))

(declare-fun c!384074 () Bool)

(assert (=> b!2410894 (= c!384074 (isEmpty!16301 (tail!3647 l!9164)))))

(declare-fun b!2410895 () Bool)

(assert (=> b!2410895 (= e!1534804 (h!33698 l!9164))))

(declare-fun b!2410896 () Bool)

(assert (=> b!2410896 (= e!1534802 e!1534806)))

(declare-fun c!384073 () Bool)

(assert (=> b!2410896 (= c!384073 (isEmpty!16301 l!9164))))

(assert (= (and d!700612 res!1023898) b!2410892))

(assert (= (and d!700612 c!384072) b!2410895))

(assert (= (and d!700612 (not c!384072)) b!2410889))

(assert (= (and b!2410889 c!384075) b!2410893))

(assert (= (and b!2410889 (not c!384075)) b!2410890))

(assert (= (and d!700612 res!1023897) b!2410896))

(assert (= (and b!2410896 c!384073) b!2410887))

(assert (= (and b!2410896 (not c!384073)) b!2410894))

(assert (= (and b!2410894 c!384074) b!2410888))

(assert (= (and b!2410894 (not c!384074)) b!2410891))

(declare-fun m!2802267 () Bool)

(assert (=> d!700612 m!2802267))

(declare-fun m!2802269 () Bool)

(assert (=> d!700612 m!2802269))

(declare-fun m!2802271 () Bool)

(assert (=> b!2410887 m!2802271))

(assert (=> b!2410888 m!2802197))

(assert (=> b!2410894 m!2802203))

(assert (=> b!2410894 m!2802203))

(declare-fun m!2802273 () Bool)

(assert (=> b!2410894 m!2802273))

(declare-fun m!2802275 () Bool)

(assert (=> b!2410893 m!2802275))

(declare-fun m!2802277 () Bool)

(assert (=> b!2410892 m!2802277))

(assert (=> b!2410896 m!2802193))

(declare-fun m!2802279 () Bool)

(assert (=> b!2410891 m!2802279))

(assert (=> b!2410823 d!700612))

(declare-fun d!700616 () Bool)

(assert (=> d!700616 (isDefined!4415 (findConcatSeparation!695 lt!873563 EmptyExpr!7078 Nil!28296 s!9460 s!9460))))

(declare-fun lt!873588 () Unit!41427)

(declare-fun choose!14259 (Regex!7078 Regex!7078 List!28394) Unit!41427)

(assert (=> d!700616 (= lt!873588 (choose!14259 lt!873563 EmptyExpr!7078 s!9460))))

(assert (=> d!700616 (validRegex!2800 lt!873563)))

(assert (=> d!700616 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!51 lt!873563 EmptyExpr!7078 s!9460) lt!873588)))

(declare-fun bs!463430 () Bool)

(assert (= bs!463430 d!700616))

(assert (=> bs!463430 m!2802205))

(assert (=> bs!463430 m!2802205))

(assert (=> bs!463430 m!2802207))

(declare-fun m!2802281 () Bool)

(assert (=> bs!463430 m!2802281))

(assert (=> bs!463430 m!2802215))

(assert (=> b!2410811 d!700616))

(declare-fun b!2410953 () Bool)

(declare-fun res!1023937 () Bool)

(declare-fun e!1534839 () Bool)

(assert (=> b!2410953 (=> (not res!1023937) (not e!1534839))))

(declare-fun isEmpty!16303 (List!28394) Bool)

(declare-fun tail!3649 (List!28394) List!28394)

(assert (=> b!2410953 (= res!1023937 (isEmpty!16303 (tail!3649 (++!7007 s!9460 Nil!28296))))))

(declare-fun b!2410954 () Bool)

(declare-fun e!1534835 () Bool)

(declare-fun lt!873593 () Bool)

(declare-fun call!147221 () Bool)

(assert (=> b!2410954 (= e!1534835 (= lt!873593 call!147221))))

(declare-fun b!2410956 () Bool)

(declare-fun e!1534836 () Bool)

(declare-fun derivativeStep!1777 (Regex!7078 C!14314) Regex!7078)

(declare-fun head!5377 (List!28394) C!14314)

(assert (=> b!2410956 (= e!1534836 (matchR!3195 (derivativeStep!1777 lt!873559 (head!5377 (++!7007 s!9460 Nil!28296))) (tail!3649 (++!7007 s!9460 Nil!28296))))))

(declare-fun b!2410957 () Bool)

(declare-fun e!1534837 () Bool)

(assert (=> b!2410957 (= e!1534835 e!1534837)))

(declare-fun c!384088 () Bool)

(assert (=> b!2410957 (= c!384088 (is-EmptyLang!7078 lt!873559))))

(declare-fun b!2410958 () Bool)

(declare-fun res!1023938 () Bool)

(declare-fun e!1534838 () Bool)

(assert (=> b!2410958 (=> res!1023938 e!1534838)))

(assert (=> b!2410958 (= res!1023938 (not (is-ElementMatch!7078 lt!873559)))))

(assert (=> b!2410958 (= e!1534837 e!1534838)))

(declare-fun b!2410959 () Bool)

(declare-fun res!1023934 () Bool)

(assert (=> b!2410959 (=> (not res!1023934) (not e!1534839))))

(assert (=> b!2410959 (= res!1023934 (not call!147221))))

(declare-fun b!2410960 () Bool)

(declare-fun res!1023932 () Bool)

(declare-fun e!1534840 () Bool)

(assert (=> b!2410960 (=> res!1023932 e!1534840)))

(assert (=> b!2410960 (= res!1023932 (not (isEmpty!16303 (tail!3649 (++!7007 s!9460 Nil!28296)))))))

(declare-fun d!700620 () Bool)

(assert (=> d!700620 e!1534835))

(declare-fun c!384090 () Bool)

(assert (=> d!700620 (= c!384090 (is-EmptyExpr!7078 lt!873559))))

(assert (=> d!700620 (= lt!873593 e!1534836)))

(declare-fun c!384089 () Bool)

(assert (=> d!700620 (= c!384089 (isEmpty!16303 (++!7007 s!9460 Nil!28296)))))

(assert (=> d!700620 (validRegex!2800 lt!873559)))

(assert (=> d!700620 (= (matchR!3195 lt!873559 (++!7007 s!9460 Nil!28296)) lt!873593)))

(declare-fun b!2410955 () Bool)

(declare-fun nullable!2120 (Regex!7078) Bool)

(assert (=> b!2410955 (= e!1534836 (nullable!2120 lt!873559))))

(declare-fun b!2410961 () Bool)

(declare-fun res!1023936 () Bool)

(assert (=> b!2410961 (=> res!1023936 e!1534838)))

(assert (=> b!2410961 (= res!1023936 e!1534839)))

(declare-fun res!1023931 () Bool)

(assert (=> b!2410961 (=> (not res!1023931) (not e!1534839))))

(assert (=> b!2410961 (= res!1023931 lt!873593)))

(declare-fun bm!147216 () Bool)

(assert (=> bm!147216 (= call!147221 (isEmpty!16303 (++!7007 s!9460 Nil!28296)))))

(declare-fun b!2410962 () Bool)

(assert (=> b!2410962 (= e!1534839 (= (head!5377 (++!7007 s!9460 Nil!28296)) (c!384062 lt!873559)))))

(declare-fun b!2410963 () Bool)

(declare-fun e!1534841 () Bool)

(assert (=> b!2410963 (= e!1534838 e!1534841)))

(declare-fun res!1023933 () Bool)

(assert (=> b!2410963 (=> (not res!1023933) (not e!1534841))))

(assert (=> b!2410963 (= res!1023933 (not lt!873593))))

(declare-fun b!2410964 () Bool)

(assert (=> b!2410964 (= e!1534837 (not lt!873593))))

(declare-fun b!2410965 () Bool)

(assert (=> b!2410965 (= e!1534840 (not (= (head!5377 (++!7007 s!9460 Nil!28296)) (c!384062 lt!873559))))))

(declare-fun b!2410966 () Bool)

(assert (=> b!2410966 (= e!1534841 e!1534840)))

(declare-fun res!1023935 () Bool)

(assert (=> b!2410966 (=> res!1023935 e!1534840)))

(assert (=> b!2410966 (= res!1023935 call!147221)))

(assert (= (and d!700620 c!384089) b!2410955))

(assert (= (and d!700620 (not c!384089)) b!2410956))

(assert (= (and d!700620 c!384090) b!2410954))

(assert (= (and d!700620 (not c!384090)) b!2410957))

(assert (= (and b!2410957 c!384088) b!2410964))

(assert (= (and b!2410957 (not c!384088)) b!2410958))

(assert (= (and b!2410958 (not res!1023938)) b!2410961))

(assert (= (and b!2410961 res!1023931) b!2410959))

(assert (= (and b!2410959 res!1023934) b!2410953))

(assert (= (and b!2410953 res!1023937) b!2410962))

(assert (= (and b!2410961 (not res!1023936)) b!2410963))

(assert (= (and b!2410963 res!1023933) b!2410966))

(assert (= (and b!2410966 (not res!1023935)) b!2410960))

(assert (= (and b!2410960 (not res!1023932)) b!2410965))

(assert (= (or b!2410954 b!2410959 b!2410966) bm!147216))

(assert (=> b!2410965 m!2802211))

(declare-fun m!2802283 () Bool)

(assert (=> b!2410965 m!2802283))

(assert (=> b!2410953 m!2802211))

(declare-fun m!2802285 () Bool)

(assert (=> b!2410953 m!2802285))

(assert (=> b!2410953 m!2802285))

(declare-fun m!2802287 () Bool)

(assert (=> b!2410953 m!2802287))

(assert (=> b!2410960 m!2802211))

(assert (=> b!2410960 m!2802285))

(assert (=> b!2410960 m!2802285))

(assert (=> b!2410960 m!2802287))

(assert (=> bm!147216 m!2802211))

(declare-fun m!2802289 () Bool)

(assert (=> bm!147216 m!2802289))

(declare-fun m!2802291 () Bool)

(assert (=> b!2410955 m!2802291))

(assert (=> d!700620 m!2802211))

(assert (=> d!700620 m!2802289))

(declare-fun m!2802293 () Bool)

(assert (=> d!700620 m!2802293))

(assert (=> b!2410962 m!2802211))

(assert (=> b!2410962 m!2802283))

(assert (=> b!2410956 m!2802211))

(assert (=> b!2410956 m!2802283))

(assert (=> b!2410956 m!2802283))

(declare-fun m!2802295 () Bool)

(assert (=> b!2410956 m!2802295))

(assert (=> b!2410956 m!2802211))

(assert (=> b!2410956 m!2802285))

(assert (=> b!2410956 m!2802295))

(assert (=> b!2410956 m!2802285))

(declare-fun m!2802297 () Bool)

(assert (=> b!2410956 m!2802297))

(assert (=> b!2410811 d!700620))

(declare-fun b!2410975 () Bool)

(declare-fun e!1534846 () List!28394)

(assert (=> b!2410975 (= e!1534846 Nil!28296)))

(declare-fun d!700622 () Bool)

(declare-fun e!1534847 () Bool)

(assert (=> d!700622 e!1534847))

(declare-fun res!1023943 () Bool)

(assert (=> d!700622 (=> (not res!1023943) (not e!1534847))))

(declare-fun lt!873596 () List!28394)

(declare-fun content!3878 (List!28394) (Set C!14314))

(assert (=> d!700622 (= res!1023943 (= (content!3878 lt!873596) (set.union (content!3878 s!9460) (content!3878 Nil!28296))))))

(assert (=> d!700622 (= lt!873596 e!1534846)))

(declare-fun c!384093 () Bool)

(assert (=> d!700622 (= c!384093 (is-Nil!28296 s!9460))))

(assert (=> d!700622 (= (++!7007 s!9460 Nil!28296) lt!873596)))

(declare-fun b!2410978 () Bool)

(assert (=> b!2410978 (= e!1534847 (or (not (= Nil!28296 Nil!28296)) (= lt!873596 s!9460)))))

(declare-fun b!2410976 () Bool)

(assert (=> b!2410976 (= e!1534846 (Cons!28296 (h!33697 s!9460) (++!7007 (t!208371 s!9460) Nil!28296)))))

(declare-fun b!2410977 () Bool)

(declare-fun res!1023944 () Bool)

(assert (=> b!2410977 (=> (not res!1023944) (not e!1534847))))

(declare-fun size!22216 (List!28394) Int)

(assert (=> b!2410977 (= res!1023944 (= (size!22216 lt!873596) (+ (size!22216 s!9460) (size!22216 Nil!28296))))))

(assert (= (and d!700622 c!384093) b!2410975))

(assert (= (and d!700622 (not c!384093)) b!2410976))

(assert (= (and d!700622 res!1023943) b!2410977))

(assert (= (and b!2410977 res!1023944) b!2410978))

(declare-fun m!2802299 () Bool)

(assert (=> d!700622 m!2802299))

(declare-fun m!2802301 () Bool)

(assert (=> d!700622 m!2802301))

(declare-fun m!2802303 () Bool)

(assert (=> d!700622 m!2802303))

(declare-fun m!2802305 () Bool)

(assert (=> b!2410976 m!2802305))

(declare-fun m!2802307 () Bool)

(assert (=> b!2410977 m!2802307))

(declare-fun m!2802309 () Bool)

(assert (=> b!2410977 m!2802309))

(declare-fun m!2802311 () Bool)

(assert (=> b!2410977 m!2802311))

(assert (=> b!2410811 d!700622))

(declare-fun b!2411031 () Bool)

(declare-fun e!1534879 () Option!5587)

(assert (=> b!2411031 (= e!1534879 (Some!5586 (tuple2!27953 Nil!28296 s!9460)))))

(declare-fun b!2411032 () Bool)

(declare-fun e!1534877 () Option!5587)

(assert (=> b!2411032 (= e!1534879 e!1534877)))

(declare-fun c!384109 () Bool)

(assert (=> b!2411032 (= c!384109 (is-Nil!28296 s!9460))))

(declare-fun b!2411033 () Bool)

(declare-fun e!1534878 () Bool)

(declare-fun lt!873607 () Option!5587)

(declare-fun get!8680 (Option!5587) tuple2!27952)

(assert (=> b!2411033 (= e!1534878 (= (++!7007 (_1!16517 (get!8680 lt!873607)) (_2!16517 (get!8680 lt!873607))) s!9460))))

(declare-fun b!2411034 () Bool)

(declare-fun res!1023967 () Bool)

(assert (=> b!2411034 (=> (not res!1023967) (not e!1534878))))

(assert (=> b!2411034 (= res!1023967 (matchR!3195 EmptyExpr!7078 (_2!16517 (get!8680 lt!873607))))))

(declare-fun b!2411035 () Bool)

(assert (=> b!2411035 (= e!1534877 None!5586)))

(declare-fun b!2411037 () Bool)

(declare-fun e!1534881 () Bool)

(assert (=> b!2411037 (= e!1534881 (not (isDefined!4415 lt!873607)))))

(declare-fun b!2411038 () Bool)

(declare-fun e!1534880 () Bool)

(assert (=> b!2411038 (= e!1534880 (matchR!3195 EmptyExpr!7078 s!9460))))

(declare-fun b!2411039 () Bool)

(declare-fun res!1023968 () Bool)

(assert (=> b!2411039 (=> (not res!1023968) (not e!1534878))))

(assert (=> b!2411039 (= res!1023968 (matchR!3195 lt!873563 (_1!16517 (get!8680 lt!873607))))))

(declare-fun b!2411036 () Bool)

(declare-fun lt!873606 () Unit!41427)

(declare-fun lt!873608 () Unit!41427)

(assert (=> b!2411036 (= lt!873606 lt!873608)))

(assert (=> b!2411036 (= (++!7007 (++!7007 Nil!28296 (Cons!28296 (h!33697 s!9460) Nil!28296)) (t!208371 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!639 (List!28394 C!14314 List!28394 List!28394) Unit!41427)

(assert (=> b!2411036 (= lt!873608 (lemmaMoveElementToOtherListKeepsConcatEq!639 Nil!28296 (h!33697 s!9460) (t!208371 s!9460) s!9460))))

(assert (=> b!2411036 (= e!1534877 (findConcatSeparation!695 lt!873563 EmptyExpr!7078 (++!7007 Nil!28296 (Cons!28296 (h!33697 s!9460) Nil!28296)) (t!208371 s!9460) s!9460))))

(declare-fun d!700624 () Bool)

(assert (=> d!700624 e!1534881))

(declare-fun res!1023969 () Bool)

(assert (=> d!700624 (=> res!1023969 e!1534881)))

(assert (=> d!700624 (= res!1023969 e!1534878)))

(declare-fun res!1023970 () Bool)

(assert (=> d!700624 (=> (not res!1023970) (not e!1534878))))

(assert (=> d!700624 (= res!1023970 (isDefined!4415 lt!873607))))

(assert (=> d!700624 (= lt!873607 e!1534879)))

(declare-fun c!384110 () Bool)

(assert (=> d!700624 (= c!384110 e!1534880)))

(declare-fun res!1023971 () Bool)

(assert (=> d!700624 (=> (not res!1023971) (not e!1534880))))

(assert (=> d!700624 (= res!1023971 (matchR!3195 lt!873563 Nil!28296))))

(assert (=> d!700624 (validRegex!2800 lt!873563)))

(assert (=> d!700624 (= (findConcatSeparation!695 lt!873563 EmptyExpr!7078 Nil!28296 s!9460 s!9460) lt!873607)))

(assert (= (and d!700624 res!1023971) b!2411038))

(assert (= (and d!700624 c!384110) b!2411031))

(assert (= (and d!700624 (not c!384110)) b!2411032))

(assert (= (and b!2411032 c!384109) b!2411035))

(assert (= (and b!2411032 (not c!384109)) b!2411036))

(assert (= (and d!700624 res!1023970) b!2411039))

(assert (= (and b!2411039 res!1023968) b!2411034))

(assert (= (and b!2411034 res!1023967) b!2411033))

(assert (= (and d!700624 (not res!1023969)) b!2411037))

(declare-fun m!2802327 () Bool)

(assert (=> b!2411034 m!2802327))

(declare-fun m!2802329 () Bool)

(assert (=> b!2411034 m!2802329))

(assert (=> b!2411033 m!2802327))

(declare-fun m!2802331 () Bool)

(assert (=> b!2411033 m!2802331))

(declare-fun m!2802333 () Bool)

(assert (=> b!2411037 m!2802333))

(declare-fun m!2802335 () Bool)

(assert (=> b!2411036 m!2802335))

(assert (=> b!2411036 m!2802335))

(declare-fun m!2802337 () Bool)

(assert (=> b!2411036 m!2802337))

(declare-fun m!2802339 () Bool)

(assert (=> b!2411036 m!2802339))

(assert (=> b!2411036 m!2802335))

(declare-fun m!2802341 () Bool)

(assert (=> b!2411036 m!2802341))

(assert (=> d!700624 m!2802333))

(declare-fun m!2802343 () Bool)

(assert (=> d!700624 m!2802343))

(assert (=> d!700624 m!2802215))

(assert (=> b!2411039 m!2802327))

(declare-fun m!2802345 () Bool)

(assert (=> b!2411039 m!2802345))

(declare-fun m!2802347 () Bool)

(assert (=> b!2411038 m!2802347))

(assert (=> b!2410811 d!700624))

(declare-fun d!700630 () Bool)

(declare-fun isEmpty!16304 (Option!5587) Bool)

(assert (=> d!700630 (= (isDefined!4415 (findConcatSeparation!695 lt!873563 EmptyExpr!7078 Nil!28296 s!9460 s!9460)) (not (isEmpty!16304 (findConcatSeparation!695 lt!873563 EmptyExpr!7078 Nil!28296 s!9460 s!9460))))))

(declare-fun bs!463431 () Bool)

(assert (= bs!463431 d!700630))

(assert (=> bs!463431 m!2802205))

(declare-fun m!2802349 () Bool)

(assert (=> bs!463431 m!2802349))

(assert (=> b!2410811 d!700630))

(declare-fun b!2411078 () Bool)

(declare-fun e!1534912 () Bool)

(declare-fun e!1534909 () Bool)

(assert (=> b!2411078 (= e!1534912 e!1534909)))

(declare-fun c!384124 () Bool)

(assert (=> b!2411078 (= c!384124 (is-Star!7078 lt!873563))))

(declare-fun b!2411079 () Bool)

(declare-fun e!1534913 () Bool)

(declare-fun call!147231 () Bool)

(assert (=> b!2411079 (= e!1534913 call!147231)))

(declare-fun b!2411080 () Bool)

(declare-fun res!1023989 () Bool)

(declare-fun e!1534911 () Bool)

(assert (=> b!2411080 (=> (not res!1023989) (not e!1534911))))

(declare-fun call!147229 () Bool)

(assert (=> b!2411080 (= res!1023989 call!147229)))

(declare-fun e!1534910 () Bool)

(assert (=> b!2411080 (= e!1534910 e!1534911)))

(declare-fun b!2411081 () Bool)

(declare-fun res!1023986 () Bool)

(declare-fun e!1534908 () Bool)

(assert (=> b!2411081 (=> res!1023986 e!1534908)))

(assert (=> b!2411081 (= res!1023986 (not (is-Concat!11714 lt!873563)))))

(assert (=> b!2411081 (= e!1534910 e!1534908)))

(declare-fun b!2411082 () Bool)

(assert (=> b!2411082 (= e!1534909 e!1534910)))

(declare-fun c!384123 () Bool)

(assert (=> b!2411082 (= c!384123 (is-Union!7078 lt!873563))))

(declare-fun b!2411083 () Bool)

(assert (=> b!2411083 (= e!1534909 e!1534913)))

(declare-fun res!1023988 () Bool)

(assert (=> b!2411083 (= res!1023988 (not (nullable!2120 (reg!7407 lt!873563))))))

(assert (=> b!2411083 (=> (not res!1023988) (not e!1534913))))

(declare-fun bm!147225 () Bool)

(declare-fun call!147230 () Bool)

(assert (=> bm!147225 (= call!147230 call!147231)))

(declare-fun bm!147224 () Bool)

(assert (=> bm!147224 (= call!147229 (validRegex!2800 (ite c!384123 (regOne!14669 lt!873563) (regTwo!14668 lt!873563))))))

(declare-fun d!700632 () Bool)

(declare-fun res!1023987 () Bool)

(assert (=> d!700632 (=> res!1023987 e!1534912)))

(assert (=> d!700632 (= res!1023987 (is-ElementMatch!7078 lt!873563))))

(assert (=> d!700632 (= (validRegex!2800 lt!873563) e!1534912)))

(declare-fun b!2411084 () Bool)

(declare-fun e!1534914 () Bool)

(assert (=> b!2411084 (= e!1534908 e!1534914)))

(declare-fun res!1023990 () Bool)

(assert (=> b!2411084 (=> (not res!1023990) (not e!1534914))))

(assert (=> b!2411084 (= res!1023990 call!147230)))

(declare-fun bm!147226 () Bool)

(assert (=> bm!147226 (= call!147231 (validRegex!2800 (ite c!384124 (reg!7407 lt!873563) (ite c!384123 (regTwo!14669 lt!873563) (regOne!14668 lt!873563)))))))

(declare-fun b!2411085 () Bool)

(assert (=> b!2411085 (= e!1534914 call!147229)))

(declare-fun b!2411086 () Bool)

(assert (=> b!2411086 (= e!1534911 call!147230)))

(assert (= (and d!700632 (not res!1023987)) b!2411078))

(assert (= (and b!2411078 c!384124) b!2411083))

(assert (= (and b!2411078 (not c!384124)) b!2411082))

(assert (= (and b!2411083 res!1023988) b!2411079))

(assert (= (and b!2411082 c!384123) b!2411080))

(assert (= (and b!2411082 (not c!384123)) b!2411081))

(assert (= (and b!2411080 res!1023989) b!2411086))

(assert (= (and b!2411081 (not res!1023986)) b!2411084))

(assert (= (and b!2411084 res!1023990) b!2411085))

(assert (= (or b!2411080 b!2411085) bm!147224))

(assert (= (or b!2411086 b!2411084) bm!147225))

(assert (= (or b!2411079 bm!147225) bm!147226))

(declare-fun m!2802369 () Bool)

(assert (=> b!2411083 m!2802369))

(declare-fun m!2802371 () Bool)

(assert (=> bm!147224 m!2802371))

(declare-fun m!2802375 () Bool)

(assert (=> bm!147226 m!2802375))

(assert (=> b!2410811 d!700632))

(declare-fun d!700640 () Bool)

(assert (=> d!700640 (matchR!3195 (Concat!11714 lt!873563 EmptyExpr!7078) (++!7007 s!9460 Nil!28296))))

(declare-fun lt!873613 () Unit!41427)

(declare-fun choose!14260 (Regex!7078 Regex!7078 List!28394 List!28394) Unit!41427)

(assert (=> d!700640 (= lt!873613 (choose!14260 lt!873563 EmptyExpr!7078 s!9460 Nil!28296))))

(declare-fun e!1534917 () Bool)

(assert (=> d!700640 e!1534917))

(declare-fun res!1023993 () Bool)

(assert (=> d!700640 (=> (not res!1023993) (not e!1534917))))

(assert (=> d!700640 (= res!1023993 (validRegex!2800 lt!873563))))

(assert (=> d!700640 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!77 lt!873563 EmptyExpr!7078 s!9460 Nil!28296) lt!873613)))

(declare-fun b!2411089 () Bool)

(assert (=> b!2411089 (= e!1534917 (validRegex!2800 EmptyExpr!7078))))

(assert (= (and d!700640 res!1023993) b!2411089))

(assert (=> d!700640 m!2802211))

(assert (=> d!700640 m!2802211))

(declare-fun m!2802389 () Bool)

(assert (=> d!700640 m!2802389))

(declare-fun m!2802391 () Bool)

(assert (=> d!700640 m!2802391))

(assert (=> d!700640 m!2802215))

(declare-fun m!2802393 () Bool)

(assert (=> b!2411089 m!2802393))

(assert (=> b!2410811 d!700640))

(declare-fun b!2411090 () Bool)

(declare-fun res!1024000 () Bool)

(declare-fun e!1534922 () Bool)

(assert (=> b!2411090 (=> (not res!1024000) (not e!1534922))))

(assert (=> b!2411090 (= res!1024000 (isEmpty!16303 (tail!3649 s!9460)))))

(declare-fun b!2411091 () Bool)

(declare-fun e!1534918 () Bool)

(declare-fun lt!873614 () Bool)

(declare-fun call!147232 () Bool)

(assert (=> b!2411091 (= e!1534918 (= lt!873614 call!147232))))

(declare-fun b!2411093 () Bool)

(declare-fun e!1534919 () Bool)

(assert (=> b!2411093 (= e!1534919 (matchR!3195 (derivativeStep!1777 lt!873563 (head!5377 s!9460)) (tail!3649 s!9460)))))

(declare-fun b!2411094 () Bool)

(declare-fun e!1534920 () Bool)

(assert (=> b!2411094 (= e!1534918 e!1534920)))

(declare-fun c!384125 () Bool)

(assert (=> b!2411094 (= c!384125 (is-EmptyLang!7078 lt!873563))))

(declare-fun b!2411095 () Bool)

(declare-fun res!1024001 () Bool)

(declare-fun e!1534921 () Bool)

(assert (=> b!2411095 (=> res!1024001 e!1534921)))

(assert (=> b!2411095 (= res!1024001 (not (is-ElementMatch!7078 lt!873563)))))

(assert (=> b!2411095 (= e!1534920 e!1534921)))

(declare-fun b!2411096 () Bool)

(declare-fun res!1023997 () Bool)

(assert (=> b!2411096 (=> (not res!1023997) (not e!1534922))))

(assert (=> b!2411096 (= res!1023997 (not call!147232))))

(declare-fun b!2411097 () Bool)

(declare-fun res!1023995 () Bool)

(declare-fun e!1534923 () Bool)

(assert (=> b!2411097 (=> res!1023995 e!1534923)))

(assert (=> b!2411097 (= res!1023995 (not (isEmpty!16303 (tail!3649 s!9460))))))

(declare-fun d!700644 () Bool)

(assert (=> d!700644 e!1534918))

(declare-fun c!384127 () Bool)

(assert (=> d!700644 (= c!384127 (is-EmptyExpr!7078 lt!873563))))

(assert (=> d!700644 (= lt!873614 e!1534919)))

(declare-fun c!384126 () Bool)

(assert (=> d!700644 (= c!384126 (isEmpty!16303 s!9460))))

(assert (=> d!700644 (validRegex!2800 lt!873563)))

(assert (=> d!700644 (= (matchR!3195 lt!873563 s!9460) lt!873614)))

(declare-fun b!2411092 () Bool)

(assert (=> b!2411092 (= e!1534919 (nullable!2120 lt!873563))))

(declare-fun b!2411098 () Bool)

(declare-fun res!1023999 () Bool)

(assert (=> b!2411098 (=> res!1023999 e!1534921)))

(assert (=> b!2411098 (= res!1023999 e!1534922)))

(declare-fun res!1023994 () Bool)

(assert (=> b!2411098 (=> (not res!1023994) (not e!1534922))))

(assert (=> b!2411098 (= res!1023994 lt!873614)))

(declare-fun bm!147227 () Bool)

(assert (=> bm!147227 (= call!147232 (isEmpty!16303 s!9460))))

(declare-fun b!2411099 () Bool)

(assert (=> b!2411099 (= e!1534922 (= (head!5377 s!9460) (c!384062 lt!873563)))))

(declare-fun b!2411100 () Bool)

(declare-fun e!1534924 () Bool)

(assert (=> b!2411100 (= e!1534921 e!1534924)))

(declare-fun res!1023996 () Bool)

(assert (=> b!2411100 (=> (not res!1023996) (not e!1534924))))

(assert (=> b!2411100 (= res!1023996 (not lt!873614))))

(declare-fun b!2411101 () Bool)

(assert (=> b!2411101 (= e!1534920 (not lt!873614))))

(declare-fun b!2411102 () Bool)

(assert (=> b!2411102 (= e!1534923 (not (= (head!5377 s!9460) (c!384062 lt!873563))))))

(declare-fun b!2411103 () Bool)

(assert (=> b!2411103 (= e!1534924 e!1534923)))

(declare-fun res!1023998 () Bool)

(assert (=> b!2411103 (=> res!1023998 e!1534923)))

(assert (=> b!2411103 (= res!1023998 call!147232)))

(assert (= (and d!700644 c!384126) b!2411092))

(assert (= (and d!700644 (not c!384126)) b!2411093))

(assert (= (and d!700644 c!384127) b!2411091))

(assert (= (and d!700644 (not c!384127)) b!2411094))

(assert (= (and b!2411094 c!384125) b!2411101))

(assert (= (and b!2411094 (not c!384125)) b!2411095))

(assert (= (and b!2411095 (not res!1024001)) b!2411098))

(assert (= (and b!2411098 res!1023994) b!2411096))

(assert (= (and b!2411096 res!1023997) b!2411090))

(assert (= (and b!2411090 res!1024000) b!2411099))

(assert (= (and b!2411098 (not res!1023999)) b!2411100))

(assert (= (and b!2411100 res!1023996) b!2411103))

(assert (= (and b!2411103 (not res!1023998)) b!2411097))

(assert (= (and b!2411097 (not res!1023995)) b!2411102))

(assert (= (or b!2411091 b!2411096 b!2411103) bm!147227))

(declare-fun m!2802395 () Bool)

(assert (=> b!2411102 m!2802395))

(declare-fun m!2802397 () Bool)

(assert (=> b!2411090 m!2802397))

(assert (=> b!2411090 m!2802397))

(declare-fun m!2802399 () Bool)

(assert (=> b!2411090 m!2802399))

(assert (=> b!2411097 m!2802397))

(assert (=> b!2411097 m!2802397))

(assert (=> b!2411097 m!2802399))

(declare-fun m!2802401 () Bool)

(assert (=> bm!147227 m!2802401))

(declare-fun m!2802403 () Bool)

(assert (=> b!2411092 m!2802403))

(assert (=> d!700644 m!2802401))

(assert (=> d!700644 m!2802215))

(assert (=> b!2411099 m!2802395))

(assert (=> b!2411093 m!2802395))

(assert (=> b!2411093 m!2802395))

(declare-fun m!2802405 () Bool)

(assert (=> b!2411093 m!2802405))

(assert (=> b!2411093 m!2802397))

(assert (=> b!2411093 m!2802405))

(assert (=> b!2411093 m!2802397))

(declare-fun m!2802407 () Bool)

(assert (=> b!2411093 m!2802407))

(assert (=> b!2410822 d!700644))

(declare-fun d!700646 () Bool)

(assert (=> d!700646 (= (head!5375 l!9164) (h!33698 l!9164))))

(assert (=> b!2410822 d!700646))

(declare-fun b!2411104 () Bool)

(declare-fun res!1024008 () Bool)

(declare-fun e!1534929 () Bool)

(assert (=> b!2411104 (=> (not res!1024008) (not e!1534929))))

(assert (=> b!2411104 (= res!1024008 (isEmpty!16303 (tail!3649 s!9460)))))

(declare-fun b!2411105 () Bool)

(declare-fun e!1534925 () Bool)

(declare-fun lt!873617 () Bool)

(declare-fun call!147233 () Bool)

(assert (=> b!2411105 (= e!1534925 (= lt!873617 call!147233))))

(declare-fun b!2411107 () Bool)

(declare-fun e!1534926 () Bool)

(assert (=> b!2411107 (= e!1534926 (matchR!3195 (derivativeStep!1777 r!13927 (head!5377 s!9460)) (tail!3649 s!9460)))))

(declare-fun b!2411108 () Bool)

(declare-fun e!1534927 () Bool)

(assert (=> b!2411108 (= e!1534925 e!1534927)))

(declare-fun c!384128 () Bool)

(assert (=> b!2411108 (= c!384128 (is-EmptyLang!7078 r!13927))))

(declare-fun b!2411109 () Bool)

(declare-fun res!1024009 () Bool)

(declare-fun e!1534928 () Bool)

(assert (=> b!2411109 (=> res!1024009 e!1534928)))

(assert (=> b!2411109 (= res!1024009 (not (is-ElementMatch!7078 r!13927)))))

(assert (=> b!2411109 (= e!1534927 e!1534928)))

(declare-fun b!2411110 () Bool)

(declare-fun res!1024005 () Bool)

(assert (=> b!2411110 (=> (not res!1024005) (not e!1534929))))

(assert (=> b!2411110 (= res!1024005 (not call!147233))))

(declare-fun b!2411111 () Bool)

(declare-fun res!1024003 () Bool)

(declare-fun e!1534930 () Bool)

(assert (=> b!2411111 (=> res!1024003 e!1534930)))

(assert (=> b!2411111 (= res!1024003 (not (isEmpty!16303 (tail!3649 s!9460))))))

(declare-fun d!700648 () Bool)

(assert (=> d!700648 e!1534925))

(declare-fun c!384130 () Bool)

(assert (=> d!700648 (= c!384130 (is-EmptyExpr!7078 r!13927))))

(assert (=> d!700648 (= lt!873617 e!1534926)))

(declare-fun c!384129 () Bool)

(assert (=> d!700648 (= c!384129 (isEmpty!16303 s!9460))))

(assert (=> d!700648 (validRegex!2800 r!13927)))

(assert (=> d!700648 (= (matchR!3195 r!13927 s!9460) lt!873617)))

(declare-fun b!2411106 () Bool)

(assert (=> b!2411106 (= e!1534926 (nullable!2120 r!13927))))

(declare-fun b!2411112 () Bool)

(declare-fun res!1024007 () Bool)

(assert (=> b!2411112 (=> res!1024007 e!1534928)))

(assert (=> b!2411112 (= res!1024007 e!1534929)))

(declare-fun res!1024002 () Bool)

(assert (=> b!2411112 (=> (not res!1024002) (not e!1534929))))

(assert (=> b!2411112 (= res!1024002 lt!873617)))

(declare-fun bm!147228 () Bool)

(assert (=> bm!147228 (= call!147233 (isEmpty!16303 s!9460))))

(declare-fun b!2411113 () Bool)

(assert (=> b!2411113 (= e!1534929 (= (head!5377 s!9460) (c!384062 r!13927)))))

(declare-fun b!2411114 () Bool)

(declare-fun e!1534931 () Bool)

(assert (=> b!2411114 (= e!1534928 e!1534931)))

(declare-fun res!1024004 () Bool)

(assert (=> b!2411114 (=> (not res!1024004) (not e!1534931))))

(assert (=> b!2411114 (= res!1024004 (not lt!873617))))

(declare-fun b!2411115 () Bool)

(assert (=> b!2411115 (= e!1534927 (not lt!873617))))

(declare-fun b!2411116 () Bool)

(assert (=> b!2411116 (= e!1534930 (not (= (head!5377 s!9460) (c!384062 r!13927))))))

(declare-fun b!2411117 () Bool)

(assert (=> b!2411117 (= e!1534931 e!1534930)))

(declare-fun res!1024006 () Bool)

(assert (=> b!2411117 (=> res!1024006 e!1534930)))

(assert (=> b!2411117 (= res!1024006 call!147233)))

(assert (= (and d!700648 c!384129) b!2411106))

(assert (= (and d!700648 (not c!384129)) b!2411107))

(assert (= (and d!700648 c!384130) b!2411105))

(assert (= (and d!700648 (not c!384130)) b!2411108))

(assert (= (and b!2411108 c!384128) b!2411115))

(assert (= (and b!2411108 (not c!384128)) b!2411109))

(assert (= (and b!2411109 (not res!1024009)) b!2411112))

(assert (= (and b!2411112 res!1024002) b!2411110))

(assert (= (and b!2411110 res!1024005) b!2411104))

(assert (= (and b!2411104 res!1024008) b!2411113))

(assert (= (and b!2411112 (not res!1024007)) b!2411114))

(assert (= (and b!2411114 res!1024004) b!2411117))

(assert (= (and b!2411117 (not res!1024006)) b!2411111))

(assert (= (and b!2411111 (not res!1024003)) b!2411116))

(assert (= (or b!2411105 b!2411110 b!2411117) bm!147228))

(assert (=> b!2411116 m!2802395))

(assert (=> b!2411104 m!2802397))

(assert (=> b!2411104 m!2802397))

(assert (=> b!2411104 m!2802399))

(assert (=> b!2411111 m!2802397))

(assert (=> b!2411111 m!2802397))

(assert (=> b!2411111 m!2802399))

(assert (=> bm!147228 m!2802401))

(declare-fun m!2802409 () Bool)

(assert (=> b!2411106 m!2802409))

(assert (=> d!700648 m!2802401))

(declare-fun m!2802411 () Bool)

(assert (=> d!700648 m!2802411))

(assert (=> b!2411113 m!2802395))

(assert (=> b!2411107 m!2802395))

(assert (=> b!2411107 m!2802395))

(declare-fun m!2802413 () Bool)

(assert (=> b!2411107 m!2802413))

(assert (=> b!2411107 m!2802397))

(assert (=> b!2411107 m!2802413))

(assert (=> b!2411107 m!2802397))

(declare-fun m!2802415 () Bool)

(assert (=> b!2411107 m!2802415))

(assert (=> b!2410812 d!700648))

(declare-fun b!2411175 () Bool)

(assert (=> b!2411175 true))

(assert (=> b!2411175 true))

(declare-fun bs!463436 () Bool)

(declare-fun b!2411178 () Bool)

(assert (= bs!463436 (and b!2411178 b!2411175)))

(declare-fun lambda!90766 () Int)

(declare-fun lambda!90765 () Int)

(assert (=> bs!463436 (not (= lambda!90766 lambda!90765))))

(assert (=> b!2411178 true))

(assert (=> b!2411178 true))

(declare-fun b!2411171 () Bool)

(declare-fun c!384144 () Bool)

(assert (=> b!2411171 (= c!384144 (is-ElementMatch!7078 r!13927))))

(declare-fun e!1534971 () Bool)

(declare-fun e!1534972 () Bool)

(assert (=> b!2411171 (= e!1534971 e!1534972)))

(declare-fun b!2411172 () Bool)

(declare-fun e!1534973 () Bool)

(declare-fun e!1534970 () Bool)

(assert (=> b!2411172 (= e!1534973 e!1534970)))

(declare-fun res!1024039 () Bool)

(assert (=> b!2411172 (= res!1024039 (matchRSpec!927 (regOne!14669 r!13927) s!9460))))

(assert (=> b!2411172 (=> res!1024039 e!1534970)))

(declare-fun b!2411173 () Bool)

(assert (=> b!2411173 (= e!1534970 (matchRSpec!927 (regTwo!14669 r!13927) s!9460))))

(declare-fun bm!147239 () Bool)

(declare-fun call!147245 () Bool)

(assert (=> bm!147239 (= call!147245 (isEmpty!16303 s!9460))))

(declare-fun d!700650 () Bool)

(declare-fun c!384146 () Bool)

(assert (=> d!700650 (= c!384146 (is-EmptyExpr!7078 r!13927))))

(declare-fun e!1534967 () Bool)

(assert (=> d!700650 (= (matchRSpec!927 r!13927 s!9460) e!1534967)))

(declare-fun b!2411174 () Bool)

(declare-fun e!1534969 () Bool)

(assert (=> b!2411174 (= e!1534973 e!1534969)))

(declare-fun c!384143 () Bool)

(assert (=> b!2411174 (= c!384143 (is-Star!7078 r!13927))))

(declare-fun e!1534968 () Bool)

(declare-fun call!147244 () Bool)

(assert (=> b!2411175 (= e!1534968 call!147244)))

(declare-fun b!2411176 () Bool)

(declare-fun res!1024041 () Bool)

(assert (=> b!2411176 (=> res!1024041 e!1534968)))

(assert (=> b!2411176 (= res!1024041 call!147245)))

(assert (=> b!2411176 (= e!1534969 e!1534968)))

(declare-fun b!2411177 () Bool)

(assert (=> b!2411177 (= e!1534967 call!147245)))

(declare-fun bm!147240 () Bool)

(declare-fun Exists!1129 (Int) Bool)

(assert (=> bm!147240 (= call!147244 (Exists!1129 (ite c!384143 lambda!90765 lambda!90766)))))

(assert (=> b!2411178 (= e!1534969 call!147244)))

(declare-fun b!2411179 () Bool)

(assert (=> b!2411179 (= e!1534972 (= s!9460 (Cons!28296 (c!384062 r!13927) Nil!28296)))))

(declare-fun b!2411180 () Bool)

(declare-fun c!384145 () Bool)

(assert (=> b!2411180 (= c!384145 (is-Union!7078 r!13927))))

(assert (=> b!2411180 (= e!1534972 e!1534973)))

(declare-fun b!2411181 () Bool)

(assert (=> b!2411181 (= e!1534967 e!1534971)))

(declare-fun res!1024040 () Bool)

(assert (=> b!2411181 (= res!1024040 (not (is-EmptyLang!7078 r!13927)))))

(assert (=> b!2411181 (=> (not res!1024040) (not e!1534971))))

(assert (= (and d!700650 c!384146) b!2411177))

(assert (= (and d!700650 (not c!384146)) b!2411181))

(assert (= (and b!2411181 res!1024040) b!2411171))

(assert (= (and b!2411171 c!384144) b!2411179))

(assert (= (and b!2411171 (not c!384144)) b!2411180))

(assert (= (and b!2411180 c!384145) b!2411172))

(assert (= (and b!2411180 (not c!384145)) b!2411174))

(assert (= (and b!2411172 (not res!1024039)) b!2411173))

(assert (= (and b!2411174 c!384143) b!2411176))

(assert (= (and b!2411174 (not c!384143)) b!2411178))

(assert (= (and b!2411176 (not res!1024041)) b!2411175))

(assert (= (or b!2411175 b!2411178) bm!147240))

(assert (= (or b!2411177 b!2411176) bm!147239))

(declare-fun m!2802425 () Bool)

(assert (=> b!2411172 m!2802425))

(declare-fun m!2802427 () Bool)

(assert (=> b!2411173 m!2802427))

(assert (=> bm!147239 m!2802401))

(declare-fun m!2802429 () Bool)

(assert (=> bm!147240 m!2802429))

(assert (=> b!2410812 d!700650))

(declare-fun d!700656 () Bool)

(assert (=> d!700656 (= (matchR!3195 r!13927 s!9460) (matchRSpec!927 r!13927 s!9460))))

(declare-fun lt!873624 () Unit!41427)

(declare-fun choose!14261 (Regex!7078 List!28394) Unit!41427)

(assert (=> d!700656 (= lt!873624 (choose!14261 r!13927 s!9460))))

(assert (=> d!700656 (validRegex!2800 r!13927)))

(assert (=> d!700656 (= (mainMatchTheorem!927 r!13927 s!9460) lt!873624)))

(declare-fun bs!463437 () Bool)

(assert (= bs!463437 d!700656))

(assert (=> bs!463437 m!2802221))

(assert (=> bs!463437 m!2802223))

(declare-fun m!2802437 () Bool)

(assert (=> bs!463437 m!2802437))

(assert (=> bs!463437 m!2802411))

(assert (=> b!2410812 d!700656))

(declare-fun d!700660 () Bool)

(declare-fun res!1024051 () Bool)

(declare-fun e!1534985 () Bool)

(assert (=> d!700660 (=> res!1024051 e!1534985)))

(assert (=> d!700660 (= res!1024051 (is-Nil!28297 l!9164))))

(assert (=> d!700660 (= (forall!5712 l!9164 lambda!90750) e!1534985)))

(declare-fun b!2411199 () Bool)

(declare-fun e!1534986 () Bool)

(assert (=> b!2411199 (= e!1534985 e!1534986)))

(declare-fun res!1024052 () Bool)

(assert (=> b!2411199 (=> (not res!1024052) (not e!1534986))))

(declare-fun dynLambda!12183 (Int Regex!7078) Bool)

(assert (=> b!2411199 (= res!1024052 (dynLambda!12183 lambda!90750 (h!33698 l!9164)))))

(declare-fun b!2411200 () Bool)

(assert (=> b!2411200 (= e!1534986 (forall!5712 (t!208372 l!9164) lambda!90750))))

(assert (= (and d!700660 (not res!1024051)) b!2411199))

(assert (= (and b!2411199 res!1024052) b!2411200))

(declare-fun b_lambda!74499 () Bool)

(assert (=> (not b_lambda!74499) (not b!2411199)))

(declare-fun m!2802439 () Bool)

(assert (=> b!2411199 m!2802439))

(declare-fun m!2802441 () Bool)

(assert (=> b!2411200 m!2802441))

(assert (=> start!236266 d!700660))

(declare-fun d!700662 () Bool)

(assert (=> d!700662 (= (isEmpty!16301 l!9164) (is-Nil!28297 l!9164))))

(assert (=> b!2410816 d!700662))

(declare-fun b!2411201 () Bool)

(declare-fun res!1024059 () Bool)

(declare-fun e!1534991 () Bool)

(assert (=> b!2411201 (=> (not res!1024059) (not e!1534991))))

(assert (=> b!2411201 (= res!1024059 (isEmpty!16303 (tail!3649 s!9460)))))

(declare-fun b!2411202 () Bool)

(declare-fun e!1534987 () Bool)

(declare-fun lt!873625 () Bool)

(declare-fun call!147249 () Bool)

(assert (=> b!2411202 (= e!1534987 (= lt!873625 call!147249))))

(declare-fun b!2411204 () Bool)

(declare-fun e!1534988 () Bool)

(assert (=> b!2411204 (= e!1534988 (matchR!3195 (derivativeStep!1777 lt!873559 (head!5377 s!9460)) (tail!3649 s!9460)))))

(declare-fun b!2411205 () Bool)

(declare-fun e!1534989 () Bool)

(assert (=> b!2411205 (= e!1534987 e!1534989)))

(declare-fun c!384149 () Bool)

(assert (=> b!2411205 (= c!384149 (is-EmptyLang!7078 lt!873559))))

(declare-fun b!2411206 () Bool)

(declare-fun res!1024060 () Bool)

(declare-fun e!1534990 () Bool)

(assert (=> b!2411206 (=> res!1024060 e!1534990)))

(assert (=> b!2411206 (= res!1024060 (not (is-ElementMatch!7078 lt!873559)))))

(assert (=> b!2411206 (= e!1534989 e!1534990)))

(declare-fun b!2411207 () Bool)

(declare-fun res!1024056 () Bool)

(assert (=> b!2411207 (=> (not res!1024056) (not e!1534991))))

(assert (=> b!2411207 (= res!1024056 (not call!147249))))

(declare-fun b!2411208 () Bool)

(declare-fun res!1024054 () Bool)

(declare-fun e!1534992 () Bool)

(assert (=> b!2411208 (=> res!1024054 e!1534992)))

(assert (=> b!2411208 (= res!1024054 (not (isEmpty!16303 (tail!3649 s!9460))))))

(declare-fun d!700664 () Bool)

(assert (=> d!700664 e!1534987))

(declare-fun c!384151 () Bool)

(assert (=> d!700664 (= c!384151 (is-EmptyExpr!7078 lt!873559))))

(assert (=> d!700664 (= lt!873625 e!1534988)))

(declare-fun c!384150 () Bool)

(assert (=> d!700664 (= c!384150 (isEmpty!16303 s!9460))))

(assert (=> d!700664 (validRegex!2800 lt!873559)))

(assert (=> d!700664 (= (matchR!3195 lt!873559 s!9460) lt!873625)))

(declare-fun b!2411203 () Bool)

(assert (=> b!2411203 (= e!1534988 (nullable!2120 lt!873559))))

(declare-fun b!2411209 () Bool)

(declare-fun res!1024058 () Bool)

(assert (=> b!2411209 (=> res!1024058 e!1534990)))

(assert (=> b!2411209 (= res!1024058 e!1534991)))

(declare-fun res!1024053 () Bool)

(assert (=> b!2411209 (=> (not res!1024053) (not e!1534991))))

(assert (=> b!2411209 (= res!1024053 lt!873625)))

(declare-fun bm!147244 () Bool)

(assert (=> bm!147244 (= call!147249 (isEmpty!16303 s!9460))))

(declare-fun b!2411210 () Bool)

(assert (=> b!2411210 (= e!1534991 (= (head!5377 s!9460) (c!384062 lt!873559)))))

(declare-fun b!2411211 () Bool)

(declare-fun e!1534993 () Bool)

(assert (=> b!2411211 (= e!1534990 e!1534993)))

(declare-fun res!1024055 () Bool)

(assert (=> b!2411211 (=> (not res!1024055) (not e!1534993))))

(assert (=> b!2411211 (= res!1024055 (not lt!873625))))

(declare-fun b!2411212 () Bool)

(assert (=> b!2411212 (= e!1534989 (not lt!873625))))

(declare-fun b!2411213 () Bool)

(assert (=> b!2411213 (= e!1534992 (not (= (head!5377 s!9460) (c!384062 lt!873559))))))

(declare-fun b!2411214 () Bool)

(assert (=> b!2411214 (= e!1534993 e!1534992)))

(declare-fun res!1024057 () Bool)

(assert (=> b!2411214 (=> res!1024057 e!1534992)))

(assert (=> b!2411214 (= res!1024057 call!147249)))

(assert (= (and d!700664 c!384150) b!2411203))

(assert (= (and d!700664 (not c!384150)) b!2411204))

(assert (= (and d!700664 c!384151) b!2411202))

(assert (= (and d!700664 (not c!384151)) b!2411205))

(assert (= (and b!2411205 c!384149) b!2411212))

(assert (= (and b!2411205 (not c!384149)) b!2411206))

(assert (= (and b!2411206 (not res!1024060)) b!2411209))

(assert (= (and b!2411209 res!1024053) b!2411207))

(assert (= (and b!2411207 res!1024056) b!2411201))

(assert (= (and b!2411201 res!1024059) b!2411210))

(assert (= (and b!2411209 (not res!1024058)) b!2411211))

(assert (= (and b!2411211 res!1024055) b!2411214))

(assert (= (and b!2411214 (not res!1024057)) b!2411208))

(assert (= (and b!2411208 (not res!1024054)) b!2411213))

(assert (= (or b!2411202 b!2411207 b!2411214) bm!147244))

(assert (=> b!2411213 m!2802395))

(assert (=> b!2411201 m!2802397))

(assert (=> b!2411201 m!2802397))

(assert (=> b!2411201 m!2802399))

(assert (=> b!2411208 m!2802397))

(assert (=> b!2411208 m!2802397))

(assert (=> b!2411208 m!2802399))

(assert (=> bm!147244 m!2802401))

(assert (=> b!2411203 m!2802291))

(assert (=> d!700664 m!2802401))

(assert (=> d!700664 m!2802293))

(assert (=> b!2411210 m!2802395))

(assert (=> b!2411204 m!2802395))

(assert (=> b!2411204 m!2802395))

(declare-fun m!2802443 () Bool)

(assert (=> b!2411204 m!2802443))

(assert (=> b!2411204 m!2802397))

(assert (=> b!2411204 m!2802443))

(assert (=> b!2411204 m!2802397))

(declare-fun m!2802445 () Bool)

(assert (=> b!2411204 m!2802445))

(assert (=> b!2410819 d!700664))

(declare-fun d!700666 () Bool)

(assert (=> d!700666 (= (isEmpty!16301 lt!873564) (is-Nil!28297 lt!873564))))

(assert (=> b!2410814 d!700666))

(declare-fun d!700668 () Bool)

(assert (=> d!700668 (= (tail!3647 l!9164) (t!208372 l!9164))))

(assert (=> b!2410814 d!700668))

(declare-fun bs!463438 () Bool)

(declare-fun d!700670 () Bool)

(assert (= bs!463438 (and d!700670 start!236266)))

(declare-fun lambda!90767 () Int)

(assert (=> bs!463438 (= lambda!90767 lambda!90750)))

(declare-fun bs!463439 () Bool)

(assert (= bs!463439 (and d!700670 d!700612)))

(assert (=> bs!463439 (= lambda!90767 lambda!90756)))

(declare-fun b!2411215 () Bool)

(declare-fun e!1534999 () Bool)

(declare-fun lt!873626 () Regex!7078)

(assert (=> b!2411215 (= e!1534999 (isEmptyExpr!139 lt!873626))))

(declare-fun b!2411216 () Bool)

(declare-fun e!1534994 () Bool)

(assert (=> b!2411216 (= e!1534994 (= lt!873626 (head!5375 lt!873564)))))

(declare-fun b!2411217 () Bool)

(declare-fun e!1534997 () Regex!7078)

(declare-fun e!1534998 () Regex!7078)

(assert (=> b!2411217 (= e!1534997 e!1534998)))

(declare-fun c!384155 () Bool)

(assert (=> b!2411217 (= c!384155 (is-Cons!28297 lt!873564))))

(declare-fun b!2411218 () Bool)

(assert (=> b!2411218 (= e!1534998 EmptyExpr!7078)))

(declare-fun b!2411219 () Bool)

(assert (=> b!2411219 (= e!1534994 (isConcat!139 lt!873626))))

(declare-fun b!2411220 () Bool)

(declare-fun e!1534996 () Bool)

(assert (=> b!2411220 (= e!1534996 (isEmpty!16301 (t!208372 lt!873564)))))

(declare-fun e!1534995 () Bool)

(assert (=> d!700670 e!1534995))

(declare-fun res!1024061 () Bool)

(assert (=> d!700670 (=> (not res!1024061) (not e!1534995))))

(assert (=> d!700670 (= res!1024061 (validRegex!2800 lt!873626))))

(assert (=> d!700670 (= lt!873626 e!1534997)))

(declare-fun c!384152 () Bool)

(assert (=> d!700670 (= c!384152 e!1534996)))

(declare-fun res!1024062 () Bool)

(assert (=> d!700670 (=> (not res!1024062) (not e!1534996))))

(assert (=> d!700670 (= res!1024062 (is-Cons!28297 lt!873564))))

(assert (=> d!700670 (forall!5712 lt!873564 lambda!90767)))

(assert (=> d!700670 (= (generalisedConcat!179 lt!873564) lt!873626)))

(declare-fun b!2411221 () Bool)

(assert (=> b!2411221 (= e!1534998 (Concat!11714 (h!33698 lt!873564) (generalisedConcat!179 (t!208372 lt!873564))))))

(declare-fun b!2411222 () Bool)

(assert (=> b!2411222 (= e!1534999 e!1534994)))

(declare-fun c!384154 () Bool)

(assert (=> b!2411222 (= c!384154 (isEmpty!16301 (tail!3647 lt!873564)))))

(declare-fun b!2411223 () Bool)

(assert (=> b!2411223 (= e!1534997 (h!33698 lt!873564))))

(declare-fun b!2411224 () Bool)

(assert (=> b!2411224 (= e!1534995 e!1534999)))

(declare-fun c!384153 () Bool)

(assert (=> b!2411224 (= c!384153 (isEmpty!16301 lt!873564))))

(assert (= (and d!700670 res!1024062) b!2411220))

(assert (= (and d!700670 c!384152) b!2411223))

(assert (= (and d!700670 (not c!384152)) b!2411217))

(assert (= (and b!2411217 c!384155) b!2411221))

(assert (= (and b!2411217 (not c!384155)) b!2411218))

(assert (= (and d!700670 res!1024061) b!2411224))

(assert (= (and b!2411224 c!384153) b!2411215))

(assert (= (and b!2411224 (not c!384153)) b!2411222))

(assert (= (and b!2411222 c!384154) b!2411216))

(assert (= (and b!2411222 (not c!384154)) b!2411219))

(declare-fun m!2802447 () Bool)

(assert (=> d!700670 m!2802447))

(declare-fun m!2802449 () Bool)

(assert (=> d!700670 m!2802449))

(declare-fun m!2802451 () Bool)

(assert (=> b!2411215 m!2802451))

(declare-fun m!2802453 () Bool)

(assert (=> b!2411216 m!2802453))

(declare-fun m!2802455 () Bool)

(assert (=> b!2411222 m!2802455))

(assert (=> b!2411222 m!2802455))

(declare-fun m!2802457 () Bool)

(assert (=> b!2411222 m!2802457))

(declare-fun m!2802459 () Bool)

(assert (=> b!2411221 m!2802459))

(declare-fun m!2802461 () Bool)

(assert (=> b!2411220 m!2802461))

(assert (=> b!2411224 m!2802201))

(declare-fun m!2802463 () Bool)

(assert (=> b!2411219 m!2802463))

(assert (=> b!2410820 d!700670))

(declare-fun b!2411229 () Bool)

(declare-fun e!1535002 () Bool)

(declare-fun tp!767012 () Bool)

(assert (=> b!2411229 (= e!1535002 (and tp_is_empty!11569 tp!767012))))

(assert (=> b!2410818 (= tp!766982 e!1535002)))

(assert (= (and b!2410818 (is-Cons!28296 (t!208371 s!9460))) b!2411229))

(declare-fun b!2411241 () Bool)

(declare-fun e!1535005 () Bool)

(declare-fun tp!767027 () Bool)

(declare-fun tp!767026 () Bool)

(assert (=> b!2411241 (= e!1535005 (and tp!767027 tp!767026))))

(declare-fun b!2411240 () Bool)

(assert (=> b!2411240 (= e!1535005 tp_is_empty!11569)))

(declare-fun b!2411243 () Bool)

(declare-fun tp!767024 () Bool)

(declare-fun tp!767025 () Bool)

(assert (=> b!2411243 (= e!1535005 (and tp!767024 tp!767025))))

(declare-fun b!2411242 () Bool)

(declare-fun tp!767023 () Bool)

(assert (=> b!2411242 (= e!1535005 tp!767023)))

(assert (=> b!2410824 (= tp!766979 e!1535005)))

(assert (= (and b!2410824 (is-ElementMatch!7078 (regOne!14668 r!13927))) b!2411240))

(assert (= (and b!2410824 (is-Concat!11714 (regOne!14668 r!13927))) b!2411241))

(assert (= (and b!2410824 (is-Star!7078 (regOne!14668 r!13927))) b!2411242))

(assert (= (and b!2410824 (is-Union!7078 (regOne!14668 r!13927))) b!2411243))

(declare-fun b!2411245 () Bool)

(declare-fun e!1535006 () Bool)

(declare-fun tp!767032 () Bool)

(declare-fun tp!767031 () Bool)

(assert (=> b!2411245 (= e!1535006 (and tp!767032 tp!767031))))

(declare-fun b!2411244 () Bool)

(assert (=> b!2411244 (= e!1535006 tp_is_empty!11569)))

(declare-fun b!2411247 () Bool)

(declare-fun tp!767029 () Bool)

(declare-fun tp!767030 () Bool)

(assert (=> b!2411247 (= e!1535006 (and tp!767029 tp!767030))))

(declare-fun b!2411246 () Bool)

(declare-fun tp!767028 () Bool)

(assert (=> b!2411246 (= e!1535006 tp!767028)))

(assert (=> b!2410824 (= tp!766978 e!1535006)))

(assert (= (and b!2410824 (is-ElementMatch!7078 (regTwo!14668 r!13927))) b!2411244))

(assert (= (and b!2410824 (is-Concat!11714 (regTwo!14668 r!13927))) b!2411245))

(assert (= (and b!2410824 (is-Star!7078 (regTwo!14668 r!13927))) b!2411246))

(assert (= (and b!2410824 (is-Union!7078 (regTwo!14668 r!13927))) b!2411247))

(declare-fun b!2411249 () Bool)

(declare-fun e!1535007 () Bool)

(declare-fun tp!767037 () Bool)

(declare-fun tp!767036 () Bool)

(assert (=> b!2411249 (= e!1535007 (and tp!767037 tp!767036))))

(declare-fun b!2411248 () Bool)

(assert (=> b!2411248 (= e!1535007 tp_is_empty!11569)))

(declare-fun b!2411251 () Bool)

(declare-fun tp!767034 () Bool)

(declare-fun tp!767035 () Bool)

(assert (=> b!2411251 (= e!1535007 (and tp!767034 tp!767035))))

(declare-fun b!2411250 () Bool)

(declare-fun tp!767033 () Bool)

(assert (=> b!2411250 (= e!1535007 tp!767033)))

(assert (=> b!2410817 (= tp!766983 e!1535007)))

(assert (= (and b!2410817 (is-ElementMatch!7078 (reg!7407 r!13927))) b!2411248))

(assert (= (and b!2410817 (is-Concat!11714 (reg!7407 r!13927))) b!2411249))

(assert (= (and b!2410817 (is-Star!7078 (reg!7407 r!13927))) b!2411250))

(assert (= (and b!2410817 (is-Union!7078 (reg!7407 r!13927))) b!2411251))

(declare-fun b!2411253 () Bool)

(declare-fun e!1535008 () Bool)

(declare-fun tp!767042 () Bool)

(declare-fun tp!767041 () Bool)

(assert (=> b!2411253 (= e!1535008 (and tp!767042 tp!767041))))

(declare-fun b!2411252 () Bool)

(assert (=> b!2411252 (= e!1535008 tp_is_empty!11569)))

(declare-fun b!2411255 () Bool)

(declare-fun tp!767039 () Bool)

(declare-fun tp!767040 () Bool)

(assert (=> b!2411255 (= e!1535008 (and tp!767039 tp!767040))))

(declare-fun b!2411254 () Bool)

(declare-fun tp!767038 () Bool)

(assert (=> b!2411254 (= e!1535008 tp!767038)))

(assert (=> b!2410815 (= tp!766985 e!1535008)))

(assert (= (and b!2410815 (is-ElementMatch!7078 (regOne!14669 r!13927))) b!2411252))

(assert (= (and b!2410815 (is-Concat!11714 (regOne!14669 r!13927))) b!2411253))

(assert (= (and b!2410815 (is-Star!7078 (regOne!14669 r!13927))) b!2411254))

(assert (= (and b!2410815 (is-Union!7078 (regOne!14669 r!13927))) b!2411255))

(declare-fun b!2411257 () Bool)

(declare-fun e!1535009 () Bool)

(declare-fun tp!767047 () Bool)

(declare-fun tp!767046 () Bool)

(assert (=> b!2411257 (= e!1535009 (and tp!767047 tp!767046))))

(declare-fun b!2411256 () Bool)

(assert (=> b!2411256 (= e!1535009 tp_is_empty!11569)))

(declare-fun b!2411259 () Bool)

(declare-fun tp!767044 () Bool)

(declare-fun tp!767045 () Bool)

(assert (=> b!2411259 (= e!1535009 (and tp!767044 tp!767045))))

(declare-fun b!2411258 () Bool)

(declare-fun tp!767043 () Bool)

(assert (=> b!2411258 (= e!1535009 tp!767043)))

(assert (=> b!2410815 (= tp!766984 e!1535009)))

(assert (= (and b!2410815 (is-ElementMatch!7078 (regTwo!14669 r!13927))) b!2411256))

(assert (= (and b!2410815 (is-Concat!11714 (regTwo!14669 r!13927))) b!2411257))

(assert (= (and b!2410815 (is-Star!7078 (regTwo!14669 r!13927))) b!2411258))

(assert (= (and b!2410815 (is-Union!7078 (regTwo!14669 r!13927))) b!2411259))

(declare-fun b!2411261 () Bool)

(declare-fun e!1535010 () Bool)

(declare-fun tp!767052 () Bool)

(declare-fun tp!767051 () Bool)

(assert (=> b!2411261 (= e!1535010 (and tp!767052 tp!767051))))

(declare-fun b!2411260 () Bool)

(assert (=> b!2411260 (= e!1535010 tp_is_empty!11569)))

(declare-fun b!2411263 () Bool)

(declare-fun tp!767049 () Bool)

(declare-fun tp!767050 () Bool)

(assert (=> b!2411263 (= e!1535010 (and tp!767049 tp!767050))))

(declare-fun b!2411262 () Bool)

(declare-fun tp!767048 () Bool)

(assert (=> b!2411262 (= e!1535010 tp!767048)))

(assert (=> b!2410821 (= tp!766981 e!1535010)))

(assert (= (and b!2410821 (is-ElementMatch!7078 (h!33698 l!9164))) b!2411260))

(assert (= (and b!2410821 (is-Concat!11714 (h!33698 l!9164))) b!2411261))

(assert (= (and b!2410821 (is-Star!7078 (h!33698 l!9164))) b!2411262))

(assert (= (and b!2410821 (is-Union!7078 (h!33698 l!9164))) b!2411263))

(declare-fun b!2411268 () Bool)

(declare-fun e!1535013 () Bool)

(declare-fun tp!767057 () Bool)

(declare-fun tp!767058 () Bool)

(assert (=> b!2411268 (= e!1535013 (and tp!767057 tp!767058))))

(assert (=> b!2410821 (= tp!766980 e!1535013)))

(assert (= (and b!2410821 (is-Cons!28297 (t!208372 l!9164))) b!2411268))

(declare-fun b_lambda!74501 () Bool)

(assert (= b_lambda!74499 (or start!236266 b_lambda!74501)))

(declare-fun bs!463440 () Bool)

(declare-fun d!700672 () Bool)

(assert (= bs!463440 (and d!700672 start!236266)))

(assert (=> bs!463440 (= (dynLambda!12183 lambda!90750 (h!33698 l!9164)) (validRegex!2800 (h!33698 l!9164)))))

(declare-fun m!2802465 () Bool)

(assert (=> bs!463440 m!2802465))

(assert (=> b!2411199 d!700672))

(push 1)

(assert (not b!2411251))

(assert (not b!2411034))

(assert (not b!2410953))

(assert (not b!2411215))

(assert (not b!2411250))

(assert (not bm!147240))

(assert (not b!2411204))

(assert (not b!2411201))

(assert (not b!2411037))

(assert (not b!2411113))

(assert (not b!2411255))

(assert (not b!2410956))

(assert (not b!2411106))

(assert (not b!2411261))

(assert (not d!700622))

(assert (not b!2411262))

(assert (not b!2410965))

(assert (not b!2411092))

(assert (not b!2411245))

(assert (not b!2411249))

(assert (not bm!147227))

(assert (not d!700630))

(assert (not b!2411116))

(assert (not bm!147216))

(assert (not b!2411259))

(assert (not b!2411093))

(assert (not b!2410962))

(assert (not b!2411172))

(assert (not b!2411039))

(assert (not b!2410887))

(assert (not b!2411219))

(assert (not d!700644))

(assert (not b!2411224))

(assert (not b!2410955))

(assert (not b!2411246))

(assert (not b!2411222))

(assert (not b!2411200))

(assert (not b!2410976))

(assert (not b!2411229))

(assert (not b!2411099))

(assert (not b!2411268))

(assert (not d!700664))

(assert (not b!2411263))

(assert (not b!2411111))

(assert (not b!2411254))

(assert (not d!700656))

(assert (not b!2411033))

(assert (not bm!147244))

(assert (not b!2411036))

(assert (not b!2411203))

(assert (not b!2410892))

(assert (not b!2410891))

(assert (not b!2411213))

(assert (not b!2411210))

(assert tp_is_empty!11569)

(assert (not d!700616))

(assert (not b!2411247))

(assert (not d!700624))

(assert (not bs!463440))

(assert (not d!700612))

(assert (not b!2411104))

(assert (not bm!147224))

(assert (not b!2410888))

(assert (not d!700620))

(assert (not b!2411090))

(assert (not b!2410977))

(assert (not b!2411083))

(assert (not d!700640))

(assert (not bm!147228))

(assert (not b!2411097))

(assert (not b!2410894))

(assert (not bm!147226))

(assert (not d!700670))

(assert (not b!2410896))

(assert (not b!2411173))

(assert (not b!2411241))

(assert (not b!2411242))

(assert (not b!2411208))

(assert (not b!2411243))

(assert (not b!2411221))

(assert (not bm!147239))

(assert (not b!2411257))

(assert (not b!2410893))

(assert (not b_lambda!74501))

(assert (not b!2411102))

(assert (not d!700648))

(assert (not b!2411107))

(assert (not b!2411220))

(assert (not b!2411038))

(assert (not b!2411216))

(assert (not b!2411258))

(assert (not b!2411253))

(assert (not b!2411089))

(assert (not b!2410960))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

