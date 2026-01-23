; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!234426 () Bool)

(assert start!234426)

(declare-fun b!2388903 () Bool)

(assert (=> b!2388903 true))

(assert (=> b!2388903 true))

(declare-fun lambda!89398 () Int)

(declare-fun lambda!89397 () Int)

(assert (=> b!2388903 (not (= lambda!89398 lambda!89397))))

(assert (=> b!2388903 true))

(assert (=> b!2388903 true))

(declare-fun b!2388885 () Bool)

(declare-fun e!1522955 () Bool)

(declare-fun e!1522960 () Bool)

(assert (=> b!2388885 (= e!1522955 (not e!1522960))))

(declare-fun res!1014810 () Bool)

(assert (=> b!2388885 (=> res!1014810 e!1522960)))

(declare-datatypes ((C!14166 0))(
  ( (C!14167 (val!8325 Int)) )
))
(declare-datatypes ((Regex!7004 0))(
  ( (ElementMatch!7004 (c!379904 C!14166)) (Concat!11640 (regOne!14520 Regex!7004) (regTwo!14520 Regex!7004)) (EmptyExpr!7004) (Star!7004 (reg!7333 Regex!7004)) (EmptyLang!7004) (Union!7004 (regOne!14521 Regex!7004) (regTwo!14521 Regex!7004)) )
))
(declare-fun r!13927 () Regex!7004)

(assert (=> b!2388885 (= res!1014810 (not (is-Concat!11640 r!13927)))))

(declare-fun lt!869899 () Bool)

(declare-fun lt!869911 () Bool)

(assert (=> b!2388885 (= lt!869899 lt!869911)))

(declare-datatypes ((List!28246 0))(
  ( (Nil!28148) (Cons!28148 (h!33549 C!14166) (t!208223 List!28246)) )
))
(declare-fun s!9460 () List!28246)

(declare-fun matchRSpec!853 (Regex!7004 List!28246) Bool)

(assert (=> b!2388885 (= lt!869911 (matchRSpec!853 r!13927 s!9460))))

(declare-fun matchR!3121 (Regex!7004 List!28246) Bool)

(assert (=> b!2388885 (= lt!869899 (matchR!3121 r!13927 s!9460))))

(declare-datatypes ((Unit!41111 0))(
  ( (Unit!41112) )
))
(declare-fun lt!869901 () Unit!41111)

(declare-fun mainMatchTheorem!853 (Regex!7004 List!28246) Unit!41111)

(assert (=> b!2388885 (= lt!869901 (mainMatchTheorem!853 r!13927 s!9460))))

(declare-fun b!2388886 () Bool)

(declare-fun e!1522963 () Unit!41111)

(declare-fun Unit!41113 () Unit!41111)

(assert (=> b!2388886 (= e!1522963 Unit!41113)))

(declare-fun lt!869905 () Unit!41111)

(declare-fun lt!869903 () Regex!7004)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!41 (Regex!7004 Regex!7004 List!28246 List!28246) Unit!41111)

(assert (=> b!2388886 (= lt!869905 (lemmaTwoRegexMatchThenConcatMatchesConcatString!41 lt!869903 EmptyExpr!7004 s!9460 Nil!28148))))

(declare-fun lt!869910 () Regex!7004)

(assert (=> b!2388886 (= lt!869910 (Concat!11640 lt!869903 EmptyExpr!7004))))

(declare-fun res!1014808 () Bool)

(declare-fun call!145280 () List!28246)

(assert (=> b!2388886 (= res!1014808 (matchR!3121 lt!869910 call!145280))))

(declare-fun e!1522965 () Bool)

(assert (=> b!2388886 (=> (not res!1014808) (not e!1522965))))

(assert (=> b!2388886 e!1522965))

(declare-fun lt!869914 () Unit!41111)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!23 (Regex!7004 Regex!7004 List!28246) Unit!41111)

(assert (=> b!2388886 (= lt!869914 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!23 lt!869903 EmptyExpr!7004 s!9460))))

(declare-fun res!1014804 () Bool)

(declare-fun call!145274 () Bool)

(assert (=> b!2388886 (= res!1014804 call!145274)))

(declare-fun e!1522958 () Bool)

(assert (=> b!2388886 (=> (not res!1014804) (not e!1522958))))

(assert (=> b!2388886 e!1522958))

(declare-fun b!2388887 () Bool)

(declare-fun Unit!41114 () Unit!41111)

(assert (=> b!2388887 (= e!1522963 Unit!41114)))

(declare-datatypes ((tuple2!27872 0))(
  ( (tuple2!27873 (_1!16477 List!28246) (_2!16477 List!28246)) )
))
(declare-datatypes ((Option!5547 0))(
  ( (None!5546) (Some!5546 (v!30954 tuple2!27872)) )
))
(declare-fun lt!869907 () Option!5547)

(declare-fun call!145277 () Option!5547)

(assert (=> b!2388887 (= lt!869907 call!145277)))

(declare-fun lt!869908 () Bool)

(assert (=> b!2388887 (= lt!869908 call!145274)))

(declare-fun c!379903 () Bool)

(assert (=> b!2388887 (= c!379903 lt!869908)))

(declare-fun lt!869915 () Unit!41111)

(declare-fun e!1522964 () Unit!41111)

(assert (=> b!2388887 (= lt!869915 e!1522964)))

(declare-fun res!1014811 () Bool)

(assert (=> b!2388887 (= res!1014811 (not lt!869908))))

(declare-fun e!1522962 () Bool)

(assert (=> b!2388887 (=> (not res!1014811) (not e!1522962))))

(assert (=> b!2388887 e!1522962))

(declare-fun b!2388888 () Bool)

(declare-fun e!1522953 () Bool)

(declare-fun tp_is_empty!11421 () Bool)

(declare-fun tp!761779 () Bool)

(assert (=> b!2388888 (= e!1522953 (and tp_is_empty!11421 tp!761779))))

(declare-fun b!2388889 () Bool)

(declare-fun e!1522956 () Bool)

(declare-fun tp!761773 () Bool)

(declare-fun tp!761778 () Bool)

(assert (=> b!2388889 (= e!1522956 (and tp!761773 tp!761778))))

(declare-fun b!2388890 () Bool)

(assert (=> b!2388890 (= e!1522956 tp_is_empty!11421)))

(declare-fun b!2388891 () Bool)

(declare-fun call!145278 () Regex!7004)

(declare-fun isDefined!4375 (Option!5547) Bool)

(declare-fun findConcatSeparation!655 (Regex!7004 Regex!7004 List!28246 List!28246 List!28246) Option!5547)

(assert (=> b!2388891 (= lt!869899 (isDefined!4375 (findConcatSeparation!655 lt!869903 call!145278 Nil!28148 s!9460 s!9460)))))

(declare-fun lt!869912 () Unit!41111)

(assert (=> b!2388891 (= lt!869912 e!1522963)))

(declare-fun c!379902 () Bool)

(assert (=> b!2388891 (= c!379902 (matchR!3121 lt!869903 s!9460))))

(declare-fun call!145276 () Regex!7004)

(assert (=> b!2388891 (= lt!869903 call!145276)))

(declare-fun e!1522966 () Unit!41111)

(declare-fun Unit!41115 () Unit!41111)

(assert (=> b!2388891 (= e!1522966 Unit!41115)))

(declare-fun b!2388892 () Bool)

(declare-fun e!1522959 () Bool)

(declare-fun tp!761776 () Bool)

(declare-fun tp!761777 () Bool)

(assert (=> b!2388892 (= e!1522959 (and tp!761776 tp!761777))))

(declare-fun bm!145268 () Bool)

(declare-fun call!145273 () Option!5547)

(assert (=> bm!145268 (= call!145277 call!145273)))

(declare-fun bm!145269 () Bool)

(declare-datatypes ((List!28247 0))(
  ( (Nil!28149) (Cons!28149 (h!33550 Regex!7004) (t!208224 List!28247)) )
))
(declare-fun lt!869909 () List!28247)

(declare-fun generalisedConcat!105 (List!28247) Regex!7004)

(assert (=> bm!145269 (= call!145278 (generalisedConcat!105 lt!869909))))

(declare-fun bm!145270 () Bool)

(declare-fun l!9164 () List!28247)

(declare-fun head!5240 (List!28247) Regex!7004)

(assert (=> bm!145270 (= call!145276 (head!5240 l!9164))))

(declare-fun b!2388893 () Bool)

(declare-fun call!145282 () Bool)

(assert (=> b!2388893 (= e!1522958 call!145282)))

(declare-fun b!2388894 () Bool)

(declare-fun e!1522957 () Bool)

(assert (=> b!2388894 e!1522957))

(declare-fun res!1014805 () Bool)

(assert (=> b!2388894 (=> (not res!1014805) (not e!1522957))))

(declare-fun call!145281 () Bool)

(assert (=> b!2388894 (= res!1014805 call!145281)))

(declare-fun lt!869906 () tuple2!27872)

(declare-fun lt!869913 () Unit!41111)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!23 (Regex!7004 Regex!7004 List!28246 List!28246 List!28246) Unit!41111)

(assert (=> b!2388894 (= lt!869913 (lemmaFindSeparationIsDefinedThenConcatMatches!23 lt!869903 EmptyExpr!7004 (_1!16477 lt!869906) (_2!16477 lt!869906) s!9460))))

(declare-fun get!8604 (Option!5547) tuple2!27872)

(assert (=> b!2388894 (= lt!869906 (get!8604 lt!869907))))

(declare-fun Unit!41116 () Unit!41111)

(assert (=> b!2388894 (= e!1522964 Unit!41116)))

(declare-fun bm!145271 () Bool)

(declare-fun call!145283 () Bool)

(assert (=> bm!145271 (= call!145274 call!145283)))

(declare-fun bm!145272 () Bool)

(declare-fun call!145275 () Option!5547)

(assert (=> bm!145272 (= call!145282 (isDefined!4375 call!145275))))

(declare-fun b!2388895 () Bool)

(declare-fun e!1522967 () Bool)

(declare-fun e!1522954 () Bool)

(assert (=> b!2388895 (= e!1522967 e!1522954)))

(declare-fun res!1014806 () Bool)

(assert (=> b!2388895 (=> res!1014806 e!1522954)))

(assert (=> b!2388895 (= res!1014806 (not (is-Cons!28149 l!9164)))))

(declare-fun lt!869902 () Unit!41111)

(declare-fun e!1522961 () Unit!41111)

(assert (=> b!2388895 (= lt!869902 e!1522961)))

(declare-fun c!379901 () Bool)

(declare-fun isEmpty!16121 (List!28247) Bool)

(assert (=> b!2388895 (= c!379901 (isEmpty!16121 l!9164))))

(declare-fun bm!145273 () Bool)

(assert (=> bm!145273 (= call!145281 (matchR!3121 (ite c!379902 lt!869910 (Concat!11640 lt!869903 EmptyExpr!7004)) (ite c!379902 s!9460 call!145280)))))

(declare-fun b!2388896 () Bool)

(declare-fun tp!761774 () Bool)

(declare-fun tp!761775 () Bool)

(assert (=> b!2388896 (= e!1522956 (and tp!761774 tp!761775))))

(declare-fun b!2388897 () Bool)

(assert (=> b!2388897 (= e!1522957 false)))

(declare-fun b!2388898 () Bool)

(declare-fun tp!761772 () Bool)

(assert (=> b!2388898 (= e!1522956 tp!761772)))

(declare-fun bm!145274 () Bool)

(declare-fun c!379900 () Bool)

(assert (=> bm!145274 (= call!145283 (isDefined!4375 (ite c!379900 (ite c!379902 call!145277 lt!869907) call!145273)))))

(declare-fun b!2388899 () Bool)

(assert (=> b!2388899 (= e!1522965 call!145281)))

(declare-fun bm!145275 () Bool)

(assert (=> bm!145275 (= call!145273 (findConcatSeparation!655 (ite c!379900 lt!869903 call!145276) (ite c!379900 EmptyExpr!7004 call!145278) Nil!28148 s!9460 s!9460))))

(declare-fun res!1014809 () Bool)

(assert (=> start!234426 (=> (not res!1014809) (not e!1522955))))

(declare-fun lambda!89396 () Int)

(declare-fun forall!5638 (List!28247 Int) Bool)

(assert (=> start!234426 (= res!1014809 (forall!5638 l!9164 lambda!89396))))

(assert (=> start!234426 e!1522955))

(assert (=> start!234426 e!1522959))

(assert (=> start!234426 e!1522956))

(assert (=> start!234426 e!1522953))

(declare-fun b!2388900 () Bool)

(declare-fun validRegex!2729 (Regex!7004) Bool)

(assert (=> b!2388900 (= e!1522954 (validRegex!2729 r!13927))))

(declare-fun b!2388901 () Bool)

(declare-fun res!1014803 () Bool)

(assert (=> b!2388901 (=> (not res!1014803) (not e!1522955))))

(assert (=> b!2388901 (= res!1014803 (= r!13927 (generalisedConcat!105 l!9164)))))

(declare-fun bm!145276 () Bool)

(declare-fun call!145279 () Regex!7004)

(assert (=> bm!145276 (= call!145275 (findConcatSeparation!655 lt!869903 call!145279 Nil!28148 s!9460 s!9460))))

(declare-fun b!2388902 () Bool)

(assert (=> b!2388902 (= e!1522962 (not call!145282))))

(assert (=> b!2388903 (= e!1522960 e!1522967)))

(declare-fun res!1014807 () Bool)

(assert (=> b!2388903 (=> res!1014807 e!1522967)))

(declare-fun lt!869916 () Bool)

(assert (=> b!2388903 (= res!1014807 (not (= lt!869911 lt!869916)))))

(declare-fun Exists!1066 (Int) Bool)

(assert (=> b!2388903 (= (Exists!1066 lambda!89397) (Exists!1066 lambda!89398))))

(declare-fun lt!869900 () Unit!41111)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!405 (Regex!7004 Regex!7004 List!28246) Unit!41111)

(assert (=> b!2388903 (= lt!869900 (lemmaExistCutMatchRandMatchRSpecEquivalent!405 (regOne!14520 r!13927) (regTwo!14520 r!13927) s!9460))))

(assert (=> b!2388903 (= lt!869916 (Exists!1066 lambda!89397))))

(assert (=> b!2388903 (= lt!869916 (isDefined!4375 (findConcatSeparation!655 (regOne!14520 r!13927) (regTwo!14520 r!13927) Nil!28148 s!9460 s!9460)))))

(declare-fun lt!869904 () Unit!41111)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!655 (Regex!7004 Regex!7004 List!28246) Unit!41111)

(assert (=> b!2388903 (= lt!869904 (lemmaFindConcatSeparationEquivalentToExists!655 (regOne!14520 r!13927) (regTwo!14520 r!13927) s!9460))))

(declare-fun b!2388904 () Bool)

(assert (=> b!2388904 (= e!1522961 e!1522966)))

(declare-fun tail!3510 (List!28247) List!28247)

(assert (=> b!2388904 (= lt!869909 (tail!3510 l!9164))))

(assert (=> b!2388904 (= c!379900 (isEmpty!16121 lt!869909))))

(declare-fun b!2388905 () Bool)

(declare-fun Unit!41117 () Unit!41111)

(assert (=> b!2388905 (= e!1522961 Unit!41117)))

(assert (=> b!2388905 false))

(declare-fun bm!145277 () Bool)

(declare-fun ++!6958 (List!28246 List!28246) List!28246)

(assert (=> bm!145277 (= call!145280 (++!6958 (ite c!379902 s!9460 (_1!16477 lt!869906)) (ite c!379902 Nil!28148 (_2!16477 lt!869906))))))

(declare-fun b!2388906 () Bool)

(declare-fun Unit!41118 () Unit!41111)

(assert (=> b!2388906 (= e!1522964 Unit!41118)))

(declare-fun bm!145278 () Bool)

(assert (=> bm!145278 (= call!145279 call!145278)))

(declare-fun b!2388907 () Bool)

(assert (=> b!2388907 (= lt!869899 call!145283)))

(declare-fun Unit!41119 () Unit!41111)

(assert (=> b!2388907 (= e!1522966 Unit!41119)))

(assert (= (and start!234426 res!1014809) b!2388901))

(assert (= (and b!2388901 res!1014803) b!2388885))

(assert (= (and b!2388885 (not res!1014810)) b!2388903))

(assert (= (and b!2388903 (not res!1014807)) b!2388895))

(assert (= (and b!2388895 c!379901) b!2388905))

(assert (= (and b!2388895 (not c!379901)) b!2388904))

(assert (= (and b!2388904 c!379900) b!2388891))

(assert (= (and b!2388904 (not c!379900)) b!2388907))

(assert (= (and b!2388891 c!379902) b!2388886))

(assert (= (and b!2388891 (not c!379902)) b!2388887))

(assert (= (and b!2388886 res!1014808) b!2388899))

(assert (= (and b!2388886 res!1014804) b!2388893))

(assert (= (and b!2388887 c!379903) b!2388894))

(assert (= (and b!2388887 (not c!379903)) b!2388906))

(assert (= (and b!2388894 res!1014805) b!2388897))

(assert (= (and b!2388887 res!1014811) b!2388902))

(assert (= (or b!2388886 b!2388894) bm!145277))

(assert (= (or b!2388886 b!2388887) bm!145268))

(assert (= (or b!2388893 b!2388902) bm!145278))

(assert (= (or b!2388899 b!2388894) bm!145273))

(assert (= (or b!2388886 b!2388887) bm!145271))

(assert (= (or b!2388893 b!2388902) bm!145276))

(assert (= (or b!2388893 b!2388902) bm!145272))

(assert (= (or b!2388891 b!2388907) bm!145270))

(assert (= (or b!2388891 bm!145278 b!2388907) bm!145269))

(assert (= (or bm!145268 b!2388907) bm!145275))

(assert (= (or bm!145271 b!2388907) bm!145274))

(assert (= (and b!2388895 (not res!1014806)) b!2388900))

(assert (= (and start!234426 (is-Cons!28149 l!9164)) b!2388892))

(assert (= (and start!234426 (is-ElementMatch!7004 r!13927)) b!2388890))

(assert (= (and start!234426 (is-Concat!11640 r!13927)) b!2388889))

(assert (= (and start!234426 (is-Star!7004 r!13927)) b!2388898))

(assert (= (and start!234426 (is-Union!7004 r!13927)) b!2388896))

(assert (= (and start!234426 (is-Cons!28148 s!9460)) b!2388888))

(declare-fun m!2789473 () Bool)

(assert (=> bm!145273 m!2789473))

(declare-fun m!2789475 () Bool)

(assert (=> bm!145277 m!2789475))

(declare-fun m!2789477 () Bool)

(assert (=> b!2388900 m!2789477))

(declare-fun m!2789479 () Bool)

(assert (=> b!2388901 m!2789479))

(declare-fun m!2789481 () Bool)

(assert (=> b!2388894 m!2789481))

(declare-fun m!2789483 () Bool)

(assert (=> b!2388894 m!2789483))

(declare-fun m!2789485 () Bool)

(assert (=> bm!145275 m!2789485))

(declare-fun m!2789487 () Bool)

(assert (=> bm!145269 m!2789487))

(declare-fun m!2789489 () Bool)

(assert (=> b!2388885 m!2789489))

(declare-fun m!2789491 () Bool)

(assert (=> b!2388885 m!2789491))

(declare-fun m!2789493 () Bool)

(assert (=> b!2388885 m!2789493))

(declare-fun m!2789495 () Bool)

(assert (=> bm!145270 m!2789495))

(declare-fun m!2789497 () Bool)

(assert (=> bm!145274 m!2789497))

(declare-fun m!2789499 () Bool)

(assert (=> start!234426 m!2789499))

(declare-fun m!2789501 () Bool)

(assert (=> b!2388904 m!2789501))

(declare-fun m!2789503 () Bool)

(assert (=> b!2388904 m!2789503))

(declare-fun m!2789505 () Bool)

(assert (=> b!2388886 m!2789505))

(declare-fun m!2789507 () Bool)

(assert (=> b!2388886 m!2789507))

(declare-fun m!2789509 () Bool)

(assert (=> b!2388886 m!2789509))

(declare-fun m!2789511 () Bool)

(assert (=> b!2388903 m!2789511))

(declare-fun m!2789513 () Bool)

(assert (=> b!2388903 m!2789513))

(declare-fun m!2789515 () Bool)

(assert (=> b!2388903 m!2789515))

(assert (=> b!2388903 m!2789511))

(declare-fun m!2789517 () Bool)

(assert (=> b!2388903 m!2789517))

(declare-fun m!2789519 () Bool)

(assert (=> b!2388903 m!2789519))

(assert (=> b!2388903 m!2789519))

(declare-fun m!2789521 () Bool)

(assert (=> b!2388903 m!2789521))

(declare-fun m!2789523 () Bool)

(assert (=> b!2388895 m!2789523))

(declare-fun m!2789525 () Bool)

(assert (=> bm!145272 m!2789525))

(declare-fun m!2789527 () Bool)

(assert (=> b!2388891 m!2789527))

(assert (=> b!2388891 m!2789527))

(declare-fun m!2789529 () Bool)

(assert (=> b!2388891 m!2789529))

(declare-fun m!2789531 () Bool)

(assert (=> b!2388891 m!2789531))

(declare-fun m!2789533 () Bool)

(assert (=> bm!145276 m!2789533))

(push 1)

(assert (not b!2388894))

(assert (not bm!145277))

(assert (not b!2388896))

(assert (not b!2388892))

(assert (not b!2388895))

(assert (not start!234426))

(assert (not bm!145275))

(assert (not bm!145272))

(assert (not bm!145273))

(assert (not b!2388891))

(assert (not b!2388885))

(assert (not b!2388903))

(assert (not bm!145276))

(assert (not b!2388886))

(assert (not b!2388900))

(assert tp_is_empty!11421)

(assert (not b!2388898))

(assert (not bm!145269))

(assert (not bm!145270))

(assert (not b!2388889))

(assert (not b!2388904))

(assert (not b!2388888))

(assert (not b!2388901))

(assert (not bm!145274))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!697835 () Bool)

(assert (=> d!697835 (= (tail!3510 l!9164) (t!208224 l!9164))))

(assert (=> b!2388904 d!697835))

(declare-fun d!697837 () Bool)

(assert (=> d!697837 (= (isEmpty!16121 lt!869909) (is-Nil!28149 lt!869909))))

(assert (=> b!2388904 d!697837))

(declare-fun d!697839 () Bool)

(declare-fun isEmpty!16123 (Option!5547) Bool)

(assert (=> d!697839 (= (isDefined!4375 (findConcatSeparation!655 lt!869903 call!145278 Nil!28148 s!9460 s!9460)) (not (isEmpty!16123 (findConcatSeparation!655 lt!869903 call!145278 Nil!28148 s!9460 s!9460))))))

(declare-fun bs!462407 () Bool)

(assert (= bs!462407 d!697839))

(assert (=> bs!462407 m!2789527))

(declare-fun m!2789597 () Bool)

(assert (=> bs!462407 m!2789597))

(assert (=> b!2388891 d!697839))

(declare-fun b!2389015 () Bool)

(declare-fun e!1523033 () Bool)

(declare-fun lt!869979 () Option!5547)

(assert (=> b!2389015 (= e!1523033 (= (++!6958 (_1!16477 (get!8604 lt!869979)) (_2!16477 (get!8604 lt!869979))) s!9460))))

(declare-fun b!2389016 () Bool)

(declare-fun e!1523030 () Option!5547)

(assert (=> b!2389016 (= e!1523030 (Some!5546 (tuple2!27873 Nil!28148 s!9460)))))

(declare-fun b!2389017 () Bool)

(declare-fun e!1523031 () Bool)

(assert (=> b!2389017 (= e!1523031 (matchR!3121 call!145278 s!9460))))

(declare-fun b!2389018 () Bool)

(declare-fun res!1014862 () Bool)

(assert (=> b!2389018 (=> (not res!1014862) (not e!1523033))))

(assert (=> b!2389018 (= res!1014862 (matchR!3121 call!145278 (_2!16477 (get!8604 lt!869979))))))

(declare-fun b!2389019 () Bool)

(declare-fun res!1014861 () Bool)

(assert (=> b!2389019 (=> (not res!1014861) (not e!1523033))))

(assert (=> b!2389019 (= res!1014861 (matchR!3121 lt!869903 (_1!16477 (get!8604 lt!869979))))))

(declare-fun b!2389020 () Bool)

(declare-fun e!1523032 () Option!5547)

(assert (=> b!2389020 (= e!1523032 None!5546)))

(declare-fun b!2389022 () Bool)

(declare-fun lt!869978 () Unit!41111)

(declare-fun lt!869977 () Unit!41111)

(assert (=> b!2389022 (= lt!869978 lt!869977)))

(assert (=> b!2389022 (= (++!6958 (++!6958 Nil!28148 (Cons!28148 (h!33549 s!9460) Nil!28148)) (t!208223 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!600 (List!28246 C!14166 List!28246 List!28246) Unit!41111)

(assert (=> b!2389022 (= lt!869977 (lemmaMoveElementToOtherListKeepsConcatEq!600 Nil!28148 (h!33549 s!9460) (t!208223 s!9460) s!9460))))

(assert (=> b!2389022 (= e!1523032 (findConcatSeparation!655 lt!869903 call!145278 (++!6958 Nil!28148 (Cons!28148 (h!33549 s!9460) Nil!28148)) (t!208223 s!9460) s!9460))))

(declare-fun b!2389023 () Bool)

(declare-fun e!1523029 () Bool)

(assert (=> b!2389023 (= e!1523029 (not (isDefined!4375 lt!869979)))))

(declare-fun d!697841 () Bool)

(assert (=> d!697841 e!1523029))

(declare-fun res!1014865 () Bool)

(assert (=> d!697841 (=> res!1014865 e!1523029)))

(assert (=> d!697841 (= res!1014865 e!1523033)))

(declare-fun res!1014864 () Bool)

(assert (=> d!697841 (=> (not res!1014864) (not e!1523033))))

(assert (=> d!697841 (= res!1014864 (isDefined!4375 lt!869979))))

(assert (=> d!697841 (= lt!869979 e!1523030)))

(declare-fun c!379922 () Bool)

(assert (=> d!697841 (= c!379922 e!1523031)))

(declare-fun res!1014863 () Bool)

(assert (=> d!697841 (=> (not res!1014863) (not e!1523031))))

(assert (=> d!697841 (= res!1014863 (matchR!3121 lt!869903 Nil!28148))))

(assert (=> d!697841 (validRegex!2729 lt!869903)))

(assert (=> d!697841 (= (findConcatSeparation!655 lt!869903 call!145278 Nil!28148 s!9460 s!9460) lt!869979)))

(declare-fun b!2389021 () Bool)

(assert (=> b!2389021 (= e!1523030 e!1523032)))

(declare-fun c!379923 () Bool)

(assert (=> b!2389021 (= c!379923 (is-Nil!28148 s!9460))))

(assert (= (and d!697841 res!1014863) b!2389017))

(assert (= (and d!697841 c!379922) b!2389016))

(assert (= (and d!697841 (not c!379922)) b!2389021))

(assert (= (and b!2389021 c!379923) b!2389020))

(assert (= (and b!2389021 (not c!379923)) b!2389022))

(assert (= (and d!697841 res!1014864) b!2389019))

(assert (= (and b!2389019 res!1014861) b!2389018))

(assert (= (and b!2389018 res!1014862) b!2389015))

(assert (= (and d!697841 (not res!1014865)) b!2389023))

(declare-fun m!2789599 () Bool)

(assert (=> b!2389017 m!2789599))

(declare-fun m!2789601 () Bool)

(assert (=> d!697841 m!2789601))

(declare-fun m!2789603 () Bool)

(assert (=> d!697841 m!2789603))

(declare-fun m!2789605 () Bool)

(assert (=> d!697841 m!2789605))

(declare-fun m!2789607 () Bool)

(assert (=> b!2389015 m!2789607))

(declare-fun m!2789609 () Bool)

(assert (=> b!2389015 m!2789609))

(assert (=> b!2389019 m!2789607))

(declare-fun m!2789611 () Bool)

(assert (=> b!2389019 m!2789611))

(assert (=> b!2389018 m!2789607))

(declare-fun m!2789613 () Bool)

(assert (=> b!2389018 m!2789613))

(declare-fun m!2789615 () Bool)

(assert (=> b!2389022 m!2789615))

(assert (=> b!2389022 m!2789615))

(declare-fun m!2789617 () Bool)

(assert (=> b!2389022 m!2789617))

(declare-fun m!2789619 () Bool)

(assert (=> b!2389022 m!2789619))

(assert (=> b!2389022 m!2789615))

(declare-fun m!2789621 () Bool)

(assert (=> b!2389022 m!2789621))

(assert (=> b!2389023 m!2789601))

(assert (=> b!2388891 d!697841))

(declare-fun d!697845 () Bool)

(declare-fun e!1523053 () Bool)

(assert (=> d!697845 e!1523053))

(declare-fun c!379932 () Bool)

(assert (=> d!697845 (= c!379932 (is-EmptyExpr!7004 lt!869903))))

(declare-fun lt!869982 () Bool)

(declare-fun e!1523049 () Bool)

(assert (=> d!697845 (= lt!869982 e!1523049)))

(declare-fun c!379931 () Bool)

(declare-fun isEmpty!16124 (List!28246) Bool)

(assert (=> d!697845 (= c!379931 (isEmpty!16124 s!9460))))

(assert (=> d!697845 (validRegex!2729 lt!869903)))

(assert (=> d!697845 (= (matchR!3121 lt!869903 s!9460) lt!869982)))

(declare-fun b!2389052 () Bool)

(declare-fun res!1014888 () Bool)

(declare-fun e!1523048 () Bool)

(assert (=> b!2389052 (=> res!1014888 e!1523048)))

(declare-fun e!1523054 () Bool)

(assert (=> b!2389052 (= res!1014888 e!1523054)))

(declare-fun res!1014885 () Bool)

(assert (=> b!2389052 (=> (not res!1014885) (not e!1523054))))

(assert (=> b!2389052 (= res!1014885 lt!869982)))

(declare-fun b!2389053 () Bool)

(declare-fun e!1523052 () Bool)

(declare-fun head!5242 (List!28246) C!14166)

(assert (=> b!2389053 (= e!1523052 (not (= (head!5242 s!9460) (c!379904 lt!869903))))))

(declare-fun b!2389054 () Bool)

(declare-fun e!1523050 () Bool)

(assert (=> b!2389054 (= e!1523050 e!1523052)))

(declare-fun res!1014889 () Bool)

(assert (=> b!2389054 (=> res!1014889 e!1523052)))

(declare-fun call!145319 () Bool)

(assert (=> b!2389054 (= res!1014889 call!145319)))

(declare-fun b!2389055 () Bool)

(declare-fun e!1523051 () Bool)

(assert (=> b!2389055 (= e!1523051 (not lt!869982))))

(declare-fun b!2389056 () Bool)

(declare-fun derivativeStep!1711 (Regex!7004 C!14166) Regex!7004)

(declare-fun tail!3512 (List!28246) List!28246)

(assert (=> b!2389056 (= e!1523049 (matchR!3121 (derivativeStep!1711 lt!869903 (head!5242 s!9460)) (tail!3512 s!9460)))))

(declare-fun b!2389057 () Bool)

(declare-fun res!1014883 () Bool)

(assert (=> b!2389057 (=> res!1014883 e!1523048)))

(assert (=> b!2389057 (= res!1014883 (not (is-ElementMatch!7004 lt!869903)))))

(assert (=> b!2389057 (= e!1523051 e!1523048)))

(declare-fun b!2389058 () Bool)

(declare-fun res!1014882 () Bool)

(assert (=> b!2389058 (=> (not res!1014882) (not e!1523054))))

(assert (=> b!2389058 (= res!1014882 (not call!145319))))

(declare-fun b!2389059 () Bool)

(assert (=> b!2389059 (= e!1523053 (= lt!869982 call!145319))))

(declare-fun b!2389060 () Bool)

(assert (=> b!2389060 (= e!1523048 e!1523050)))

(declare-fun res!1014884 () Bool)

(assert (=> b!2389060 (=> (not res!1014884) (not e!1523050))))

(assert (=> b!2389060 (= res!1014884 (not lt!869982))))

(declare-fun b!2389061 () Bool)

(assert (=> b!2389061 (= e!1523054 (= (head!5242 s!9460) (c!379904 lt!869903)))))

(declare-fun bm!145314 () Bool)

(assert (=> bm!145314 (= call!145319 (isEmpty!16124 s!9460))))

(declare-fun b!2389062 () Bool)

(assert (=> b!2389062 (= e!1523053 e!1523051)))

(declare-fun c!379930 () Bool)

(assert (=> b!2389062 (= c!379930 (is-EmptyLang!7004 lt!869903))))

(declare-fun b!2389063 () Bool)

(declare-fun res!1014887 () Bool)

(assert (=> b!2389063 (=> res!1014887 e!1523052)))

(assert (=> b!2389063 (= res!1014887 (not (isEmpty!16124 (tail!3512 s!9460))))))

(declare-fun b!2389064 () Bool)

(declare-fun nullable!2053 (Regex!7004) Bool)

(assert (=> b!2389064 (= e!1523049 (nullable!2053 lt!869903))))

(declare-fun b!2389065 () Bool)

(declare-fun res!1014886 () Bool)

(assert (=> b!2389065 (=> (not res!1014886) (not e!1523054))))

(assert (=> b!2389065 (= res!1014886 (isEmpty!16124 (tail!3512 s!9460)))))

(assert (= (and d!697845 c!379931) b!2389064))

(assert (= (and d!697845 (not c!379931)) b!2389056))

(assert (= (and d!697845 c!379932) b!2389059))

(assert (= (and d!697845 (not c!379932)) b!2389062))

(assert (= (and b!2389062 c!379930) b!2389055))

(assert (= (and b!2389062 (not c!379930)) b!2389057))

(assert (= (and b!2389057 (not res!1014883)) b!2389052))

(assert (= (and b!2389052 res!1014885) b!2389058))

(assert (= (and b!2389058 res!1014882) b!2389065))

(assert (= (and b!2389065 res!1014886) b!2389061))

(assert (= (and b!2389052 (not res!1014888)) b!2389060))

(assert (= (and b!2389060 res!1014884) b!2389054))

(assert (= (and b!2389054 (not res!1014889)) b!2389063))

(assert (= (and b!2389063 (not res!1014887)) b!2389053))

(assert (= (or b!2389059 b!2389054 b!2389058) bm!145314))

(declare-fun m!2789625 () Bool)

(assert (=> bm!145314 m!2789625))

(declare-fun m!2789627 () Bool)

(assert (=> b!2389065 m!2789627))

(assert (=> b!2389065 m!2789627))

(declare-fun m!2789629 () Bool)

(assert (=> b!2389065 m!2789629))

(declare-fun m!2789631 () Bool)

(assert (=> b!2389064 m!2789631))

(assert (=> d!697845 m!2789625))

(assert (=> d!697845 m!2789605))

(declare-fun m!2789633 () Bool)

(assert (=> b!2389061 m!2789633))

(assert (=> b!2389063 m!2789627))

(assert (=> b!2389063 m!2789627))

(assert (=> b!2389063 m!2789629))

(assert (=> b!2389056 m!2789633))

(assert (=> b!2389056 m!2789633))

(declare-fun m!2789635 () Bool)

(assert (=> b!2389056 m!2789635))

(assert (=> b!2389056 m!2789627))

(assert (=> b!2389056 m!2789635))

(assert (=> b!2389056 m!2789627))

(declare-fun m!2789637 () Bool)

(assert (=> b!2389056 m!2789637))

(assert (=> b!2389053 m!2789633))

(assert (=> b!2388891 d!697845))

(declare-fun d!697849 () Bool)

(assert (=> d!697849 (= (isDefined!4375 (findConcatSeparation!655 (regOne!14520 r!13927) (regTwo!14520 r!13927) Nil!28148 s!9460 s!9460)) (not (isEmpty!16123 (findConcatSeparation!655 (regOne!14520 r!13927) (regTwo!14520 r!13927) Nil!28148 s!9460 s!9460))))))

(declare-fun bs!462409 () Bool)

(assert (= bs!462409 d!697849))

(assert (=> bs!462409 m!2789511))

(declare-fun m!2789639 () Bool)

(assert (=> bs!462409 m!2789639))

(assert (=> b!2388903 d!697849))

(declare-fun bs!462410 () Bool)

(declare-fun d!697851 () Bool)

(assert (= bs!462410 (and d!697851 b!2388903)))

(declare-fun lambda!89412 () Int)

(assert (=> bs!462410 (= lambda!89412 lambda!89397)))

(assert (=> bs!462410 (not (= lambda!89412 lambda!89398))))

(assert (=> d!697851 true))

(assert (=> d!697851 true))

(assert (=> d!697851 true))

(assert (=> d!697851 (= (isDefined!4375 (findConcatSeparation!655 (regOne!14520 r!13927) (regTwo!14520 r!13927) Nil!28148 s!9460 s!9460)) (Exists!1066 lambda!89412))))

(declare-fun lt!869985 () Unit!41111)

(declare-fun choose!14044 (Regex!7004 Regex!7004 List!28246) Unit!41111)

(assert (=> d!697851 (= lt!869985 (choose!14044 (regOne!14520 r!13927) (regTwo!14520 r!13927) s!9460))))

(assert (=> d!697851 (validRegex!2729 (regOne!14520 r!13927))))

(assert (=> d!697851 (= (lemmaFindConcatSeparationEquivalentToExists!655 (regOne!14520 r!13927) (regTwo!14520 r!13927) s!9460) lt!869985)))

(declare-fun bs!462411 () Bool)

(assert (= bs!462411 d!697851))

(declare-fun m!2789641 () Bool)

(assert (=> bs!462411 m!2789641))

(declare-fun m!2789643 () Bool)

(assert (=> bs!462411 m!2789643))

(assert (=> bs!462411 m!2789511))

(assert (=> bs!462411 m!2789513))

(declare-fun m!2789645 () Bool)

(assert (=> bs!462411 m!2789645))

(assert (=> bs!462411 m!2789511))

(assert (=> b!2388903 d!697851))

(declare-fun bs!462412 () Bool)

(declare-fun d!697853 () Bool)

(assert (= bs!462412 (and d!697853 b!2388903)))

(declare-fun lambda!89417 () Int)

(assert (=> bs!462412 (= lambda!89417 lambda!89397)))

(assert (=> bs!462412 (not (= lambda!89417 lambda!89398))))

(declare-fun bs!462413 () Bool)

(assert (= bs!462413 (and d!697853 d!697851)))

(assert (=> bs!462413 (= lambda!89417 lambda!89412)))

(assert (=> d!697853 true))

(assert (=> d!697853 true))

(assert (=> d!697853 true))

(declare-fun lambda!89418 () Int)

(assert (=> bs!462412 (not (= lambda!89418 lambda!89397))))

(assert (=> bs!462412 (= lambda!89418 lambda!89398)))

(assert (=> bs!462413 (not (= lambda!89418 lambda!89412))))

(declare-fun bs!462414 () Bool)

(assert (= bs!462414 d!697853))

(assert (=> bs!462414 (not (= lambda!89418 lambda!89417))))

(assert (=> d!697853 true))

(assert (=> d!697853 true))

(assert (=> d!697853 true))

(assert (=> d!697853 (= (Exists!1066 lambda!89417) (Exists!1066 lambda!89418))))

(declare-fun lt!869994 () Unit!41111)

(declare-fun choose!14045 (Regex!7004 Regex!7004 List!28246) Unit!41111)

(assert (=> d!697853 (= lt!869994 (choose!14045 (regOne!14520 r!13927) (regTwo!14520 r!13927) s!9460))))

(assert (=> d!697853 (validRegex!2729 (regOne!14520 r!13927))))

(assert (=> d!697853 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!405 (regOne!14520 r!13927) (regTwo!14520 r!13927) s!9460) lt!869994)))

(declare-fun m!2789647 () Bool)

(assert (=> bs!462414 m!2789647))

(declare-fun m!2789649 () Bool)

(assert (=> bs!462414 m!2789649))

(declare-fun m!2789651 () Bool)

(assert (=> bs!462414 m!2789651))

(assert (=> bs!462414 m!2789645))

(assert (=> b!2388903 d!697853))

(declare-fun d!697855 () Bool)

(declare-fun choose!14046 (Int) Bool)

(assert (=> d!697855 (= (Exists!1066 lambda!89398) (choose!14046 lambda!89398))))

(declare-fun bs!462415 () Bool)

(assert (= bs!462415 d!697855))

(declare-fun m!2789653 () Bool)

(assert (=> bs!462415 m!2789653))

(assert (=> b!2388903 d!697855))

(declare-fun d!697857 () Bool)

(assert (=> d!697857 (= (Exists!1066 lambda!89397) (choose!14046 lambda!89397))))

(declare-fun bs!462416 () Bool)

(assert (= bs!462416 d!697857))

(declare-fun m!2789655 () Bool)

(assert (=> bs!462416 m!2789655))

(assert (=> b!2388903 d!697857))

(declare-fun b!2389096 () Bool)

(declare-fun e!1523075 () Bool)

(declare-fun lt!869997 () Option!5547)

(assert (=> b!2389096 (= e!1523075 (= (++!6958 (_1!16477 (get!8604 lt!869997)) (_2!16477 (get!8604 lt!869997))) s!9460))))

(declare-fun b!2389097 () Bool)

(declare-fun e!1523072 () Option!5547)

(assert (=> b!2389097 (= e!1523072 (Some!5546 (tuple2!27873 Nil!28148 s!9460)))))

(declare-fun b!2389098 () Bool)

(declare-fun e!1523073 () Bool)

(assert (=> b!2389098 (= e!1523073 (matchR!3121 (regTwo!14520 r!13927) s!9460))))

(declare-fun b!2389099 () Bool)

(declare-fun res!1014913 () Bool)

(assert (=> b!2389099 (=> (not res!1014913) (not e!1523075))))

(assert (=> b!2389099 (= res!1014913 (matchR!3121 (regTwo!14520 r!13927) (_2!16477 (get!8604 lt!869997))))))

(declare-fun b!2389100 () Bool)

(declare-fun res!1014912 () Bool)

(assert (=> b!2389100 (=> (not res!1014912) (not e!1523075))))

(assert (=> b!2389100 (= res!1014912 (matchR!3121 (regOne!14520 r!13927) (_1!16477 (get!8604 lt!869997))))))

(declare-fun b!2389101 () Bool)

(declare-fun e!1523074 () Option!5547)

(assert (=> b!2389101 (= e!1523074 None!5546)))

(declare-fun b!2389103 () Bool)

(declare-fun lt!869996 () Unit!41111)

(declare-fun lt!869995 () Unit!41111)

(assert (=> b!2389103 (= lt!869996 lt!869995)))

(assert (=> b!2389103 (= (++!6958 (++!6958 Nil!28148 (Cons!28148 (h!33549 s!9460) Nil!28148)) (t!208223 s!9460)) s!9460)))

(assert (=> b!2389103 (= lt!869995 (lemmaMoveElementToOtherListKeepsConcatEq!600 Nil!28148 (h!33549 s!9460) (t!208223 s!9460) s!9460))))

(assert (=> b!2389103 (= e!1523074 (findConcatSeparation!655 (regOne!14520 r!13927) (regTwo!14520 r!13927) (++!6958 Nil!28148 (Cons!28148 (h!33549 s!9460) Nil!28148)) (t!208223 s!9460) s!9460))))

(declare-fun b!2389104 () Bool)

(declare-fun e!1523071 () Bool)

(assert (=> b!2389104 (= e!1523071 (not (isDefined!4375 lt!869997)))))

(declare-fun d!697859 () Bool)

(assert (=> d!697859 e!1523071))

(declare-fun res!1014916 () Bool)

(assert (=> d!697859 (=> res!1014916 e!1523071)))

(assert (=> d!697859 (= res!1014916 e!1523075)))

(declare-fun res!1014915 () Bool)

(assert (=> d!697859 (=> (not res!1014915) (not e!1523075))))

(assert (=> d!697859 (= res!1014915 (isDefined!4375 lt!869997))))

(assert (=> d!697859 (= lt!869997 e!1523072)))

(declare-fun c!379937 () Bool)

(assert (=> d!697859 (= c!379937 e!1523073)))

(declare-fun res!1014914 () Bool)

(assert (=> d!697859 (=> (not res!1014914) (not e!1523073))))

(assert (=> d!697859 (= res!1014914 (matchR!3121 (regOne!14520 r!13927) Nil!28148))))

(assert (=> d!697859 (validRegex!2729 (regOne!14520 r!13927))))

(assert (=> d!697859 (= (findConcatSeparation!655 (regOne!14520 r!13927) (regTwo!14520 r!13927) Nil!28148 s!9460 s!9460) lt!869997)))

(declare-fun b!2389102 () Bool)

(assert (=> b!2389102 (= e!1523072 e!1523074)))

(declare-fun c!379938 () Bool)

(assert (=> b!2389102 (= c!379938 (is-Nil!28148 s!9460))))

(assert (= (and d!697859 res!1014914) b!2389098))

(assert (= (and d!697859 c!379937) b!2389097))

(assert (= (and d!697859 (not c!379937)) b!2389102))

(assert (= (and b!2389102 c!379938) b!2389101))

(assert (= (and b!2389102 (not c!379938)) b!2389103))

(assert (= (and d!697859 res!1014915) b!2389100))

(assert (= (and b!2389100 res!1014912) b!2389099))

(assert (= (and b!2389099 res!1014913) b!2389096))

(assert (= (and d!697859 (not res!1014916)) b!2389104))

(declare-fun m!2789657 () Bool)

(assert (=> b!2389098 m!2789657))

(declare-fun m!2789659 () Bool)

(assert (=> d!697859 m!2789659))

(declare-fun m!2789661 () Bool)

(assert (=> d!697859 m!2789661))

(assert (=> d!697859 m!2789645))

(declare-fun m!2789663 () Bool)

(assert (=> b!2389096 m!2789663))

(declare-fun m!2789665 () Bool)

(assert (=> b!2389096 m!2789665))

(assert (=> b!2389100 m!2789663))

(declare-fun m!2789667 () Bool)

(assert (=> b!2389100 m!2789667))

(assert (=> b!2389099 m!2789663))

(declare-fun m!2789669 () Bool)

(assert (=> b!2389099 m!2789669))

(assert (=> b!2389103 m!2789615))

(assert (=> b!2389103 m!2789615))

(assert (=> b!2389103 m!2789617))

(assert (=> b!2389103 m!2789619))

(assert (=> b!2389103 m!2789615))

(declare-fun m!2789671 () Bool)

(assert (=> b!2389103 m!2789671))

(assert (=> b!2389104 m!2789659))

(assert (=> b!2388903 d!697859))

(declare-fun d!697861 () Bool)

(assert (=> d!697861 (= (isDefined!4375 (ite c!379900 (ite c!379902 call!145277 lt!869907) call!145273)) (not (isEmpty!16123 (ite c!379900 (ite c!379902 call!145277 lt!869907) call!145273))))))

(declare-fun bs!462417 () Bool)

(assert (= bs!462417 d!697861))

(declare-fun m!2789673 () Bool)

(assert (=> bs!462417 m!2789673))

(assert (=> bm!145274 d!697861))

(declare-fun bs!462418 () Bool)

(declare-fun d!697863 () Bool)

(assert (= bs!462418 (and d!697863 start!234426)))

(declare-fun lambda!89421 () Int)

(assert (=> bs!462418 (= lambda!89421 lambda!89396)))

(declare-fun e!1523096 () Bool)

(assert (=> d!697863 e!1523096))

(declare-fun res!1014926 () Bool)

(assert (=> d!697863 (=> (not res!1014926) (not e!1523096))))

(declare-fun lt!870003 () Regex!7004)

(assert (=> d!697863 (= res!1014926 (validRegex!2729 lt!870003))))

(declare-fun e!1523097 () Regex!7004)

(assert (=> d!697863 (= lt!870003 e!1523097)))

(declare-fun c!379952 () Bool)

(declare-fun e!1523095 () Bool)

(assert (=> d!697863 (= c!379952 e!1523095)))

(declare-fun res!1014927 () Bool)

(assert (=> d!697863 (=> (not res!1014927) (not e!1523095))))

(assert (=> d!697863 (= res!1014927 (is-Cons!28149 lt!869909))))

(assert (=> d!697863 (forall!5638 lt!869909 lambda!89421)))

(assert (=> d!697863 (= (generalisedConcat!105 lt!869909) lt!870003)))

(declare-fun b!2389134 () Bool)

(assert (=> b!2389134 (= e!1523097 (h!33550 lt!869909))))

(declare-fun b!2389135 () Bool)

(declare-fun e!1523093 () Regex!7004)

(assert (=> b!2389135 (= e!1523093 EmptyExpr!7004)))

(declare-fun b!2389136 () Bool)

(declare-fun e!1523094 () Bool)

(assert (=> b!2389136 (= e!1523094 (= lt!870003 (head!5240 lt!869909)))))

(declare-fun b!2389137 () Bool)

(assert (=> b!2389137 (= e!1523097 e!1523093)))

(declare-fun c!379951 () Bool)

(assert (=> b!2389137 (= c!379951 (is-Cons!28149 lt!869909))))

(declare-fun b!2389138 () Bool)

(declare-fun e!1523098 () Bool)

(assert (=> b!2389138 (= e!1523096 e!1523098)))

(declare-fun c!379949 () Bool)

(assert (=> b!2389138 (= c!379949 (isEmpty!16121 lt!869909))))

(declare-fun b!2389139 () Bool)

(assert (=> b!2389139 (= e!1523098 e!1523094)))

(declare-fun c!379950 () Bool)

(assert (=> b!2389139 (= c!379950 (isEmpty!16121 (tail!3510 lt!869909)))))

(declare-fun b!2389140 () Bool)

(declare-fun isEmptyExpr!74 (Regex!7004) Bool)

(assert (=> b!2389140 (= e!1523098 (isEmptyExpr!74 lt!870003))))

(declare-fun b!2389141 () Bool)

(declare-fun isConcat!74 (Regex!7004) Bool)

(assert (=> b!2389141 (= e!1523094 (isConcat!74 lt!870003))))

(declare-fun b!2389142 () Bool)

(assert (=> b!2389142 (= e!1523093 (Concat!11640 (h!33550 lt!869909) (generalisedConcat!105 (t!208224 lt!869909))))))

(declare-fun b!2389143 () Bool)

(assert (=> b!2389143 (= e!1523095 (isEmpty!16121 (t!208224 lt!869909)))))

(assert (= (and d!697863 res!1014927) b!2389143))

(assert (= (and d!697863 c!379952) b!2389134))

(assert (= (and d!697863 (not c!379952)) b!2389137))

(assert (= (and b!2389137 c!379951) b!2389142))

(assert (= (and b!2389137 (not c!379951)) b!2389135))

(assert (= (and d!697863 res!1014926) b!2389138))

(assert (= (and b!2389138 c!379949) b!2389140))

(assert (= (and b!2389138 (not c!379949)) b!2389139))

(assert (= (and b!2389139 c!379950) b!2389136))

(assert (= (and b!2389139 (not c!379950)) b!2389141))

(declare-fun m!2789699 () Bool)

(assert (=> b!2389142 m!2789699))

(declare-fun m!2789701 () Bool)

(assert (=> b!2389140 m!2789701))

(declare-fun m!2789703 () Bool)

(assert (=> b!2389139 m!2789703))

(assert (=> b!2389139 m!2789703))

(declare-fun m!2789705 () Bool)

(assert (=> b!2389139 m!2789705))

(declare-fun m!2789707 () Bool)

(assert (=> d!697863 m!2789707))

(declare-fun m!2789709 () Bool)

(assert (=> d!697863 m!2789709))

(declare-fun m!2789711 () Bool)

(assert (=> b!2389141 m!2789711))

(declare-fun m!2789713 () Bool)

(assert (=> b!2389136 m!2789713))

(assert (=> b!2389138 m!2789503))

(declare-fun m!2789715 () Bool)

(assert (=> b!2389143 m!2789715))

(assert (=> bm!145269 d!697863))

(declare-fun lt!870006 () List!28246)

(declare-fun e!1523104 () Bool)

(declare-fun b!2389155 () Bool)

(assert (=> b!2389155 (= e!1523104 (or (not (= (ite c!379902 Nil!28148 (_2!16477 lt!869906)) Nil!28148)) (= lt!870006 (ite c!379902 s!9460 (_1!16477 lt!869906)))))))

(declare-fun b!2389152 () Bool)

(declare-fun e!1523103 () List!28246)

(assert (=> b!2389152 (= e!1523103 (ite c!379902 Nil!28148 (_2!16477 lt!869906)))))

(declare-fun b!2389153 () Bool)

(assert (=> b!2389153 (= e!1523103 (Cons!28148 (h!33549 (ite c!379902 s!9460 (_1!16477 lt!869906))) (++!6958 (t!208223 (ite c!379902 s!9460 (_1!16477 lt!869906))) (ite c!379902 Nil!28148 (_2!16477 lt!869906)))))))

(declare-fun b!2389154 () Bool)

(declare-fun res!1014932 () Bool)

(assert (=> b!2389154 (=> (not res!1014932) (not e!1523104))))

(declare-fun size!22180 (List!28246) Int)

(assert (=> b!2389154 (= res!1014932 (= (size!22180 lt!870006) (+ (size!22180 (ite c!379902 s!9460 (_1!16477 lt!869906))) (size!22180 (ite c!379902 Nil!28148 (_2!16477 lt!869906))))))))

(declare-fun d!697867 () Bool)

(assert (=> d!697867 e!1523104))

(declare-fun res!1014933 () Bool)

(assert (=> d!697867 (=> (not res!1014933) (not e!1523104))))

(declare-fun content!3842 (List!28246) (Set C!14166))

(assert (=> d!697867 (= res!1014933 (= (content!3842 lt!870006) (set.union (content!3842 (ite c!379902 s!9460 (_1!16477 lt!869906))) (content!3842 (ite c!379902 Nil!28148 (_2!16477 lt!869906))))))))

(assert (=> d!697867 (= lt!870006 e!1523103)))

(declare-fun c!379955 () Bool)

(assert (=> d!697867 (= c!379955 (is-Nil!28148 (ite c!379902 s!9460 (_1!16477 lt!869906))))))

(assert (=> d!697867 (= (++!6958 (ite c!379902 s!9460 (_1!16477 lt!869906)) (ite c!379902 Nil!28148 (_2!16477 lt!869906))) lt!870006)))

(assert (= (and d!697867 c!379955) b!2389152))

(assert (= (and d!697867 (not c!379955)) b!2389153))

(assert (= (and d!697867 res!1014933) b!2389154))

(assert (= (and b!2389154 res!1014932) b!2389155))

(declare-fun m!2789717 () Bool)

(assert (=> b!2389153 m!2789717))

(declare-fun m!2789719 () Bool)

(assert (=> b!2389154 m!2789719))

(declare-fun m!2789721 () Bool)

(assert (=> b!2389154 m!2789721))

(declare-fun m!2789723 () Bool)

(assert (=> b!2389154 m!2789723))

(declare-fun m!2789725 () Bool)

(assert (=> d!697867 m!2789725))

(declare-fun m!2789727 () Bool)

(assert (=> d!697867 m!2789727))

(declare-fun m!2789729 () Bool)

(assert (=> d!697867 m!2789729))

(assert (=> bm!145277 d!697867))

(declare-fun bs!462419 () Bool)

(declare-fun b!2389217 () Bool)

(assert (= bs!462419 (and b!2389217 d!697853)))

(declare-fun lambda!89426 () Int)

(assert (=> bs!462419 (not (= lambda!89426 lambda!89418))))

(declare-fun bs!462420 () Bool)

(assert (= bs!462420 (and b!2389217 b!2388903)))

(assert (=> bs!462420 (not (= lambda!89426 lambda!89398))))

(declare-fun bs!462421 () Bool)

(assert (= bs!462421 (and b!2389217 d!697851)))

(assert (=> bs!462421 (not (= lambda!89426 lambda!89412))))

(assert (=> bs!462420 (not (= lambda!89426 lambda!89397))))

(assert (=> bs!462419 (not (= lambda!89426 lambda!89417))))

(assert (=> b!2389217 true))

(assert (=> b!2389217 true))

(declare-fun bs!462422 () Bool)

(declare-fun b!2389220 () Bool)

(assert (= bs!462422 (and b!2389220 d!697853)))

(declare-fun lambda!89427 () Int)

(assert (=> bs!462422 (= lambda!89427 lambda!89418)))

(declare-fun bs!462423 () Bool)

(assert (= bs!462423 (and b!2389220 b!2388903)))

(assert (=> bs!462423 (= lambda!89427 lambda!89398)))

(declare-fun bs!462424 () Bool)

(assert (= bs!462424 (and b!2389220 b!2389217)))

(assert (=> bs!462424 (not (= lambda!89427 lambda!89426))))

(declare-fun bs!462425 () Bool)

(assert (= bs!462425 (and b!2389220 d!697851)))

(assert (=> bs!462425 (not (= lambda!89427 lambda!89412))))

(assert (=> bs!462423 (not (= lambda!89427 lambda!89397))))

(assert (=> bs!462422 (not (= lambda!89427 lambda!89417))))

(assert (=> b!2389220 true))

(assert (=> b!2389220 true))

(declare-fun b!2389216 () Bool)

(declare-fun e!1523141 () Bool)

(declare-fun e!1523142 () Bool)

(assert (=> b!2389216 (= e!1523141 e!1523142)))

(declare-fun c!379972 () Bool)

(assert (=> b!2389216 (= c!379972 (is-Star!7004 r!13927))))

(declare-fun e!1523139 () Bool)

(declare-fun call!145326 () Bool)

(assert (=> b!2389217 (= e!1523139 call!145326)))

(declare-fun b!2389218 () Bool)

(declare-fun c!379971 () Bool)

(assert (=> b!2389218 (= c!379971 (is-ElementMatch!7004 r!13927))))

(declare-fun e!1523137 () Bool)

(declare-fun e!1523140 () Bool)

(assert (=> b!2389218 (= e!1523137 e!1523140)))

(declare-fun b!2389219 () Bool)

(declare-fun e!1523143 () Bool)

(assert (=> b!2389219 (= e!1523143 e!1523137)))

(declare-fun res!1014967 () Bool)

(assert (=> b!2389219 (= res!1014967 (not (is-EmptyLang!7004 r!13927)))))

(assert (=> b!2389219 (=> (not res!1014967) (not e!1523137))))

(assert (=> b!2389220 (= e!1523142 call!145326)))

(declare-fun d!697869 () Bool)

(declare-fun c!379970 () Bool)

(assert (=> d!697869 (= c!379970 (is-EmptyExpr!7004 r!13927))))

(assert (=> d!697869 (= (matchRSpec!853 r!13927 s!9460) e!1523143)))

(declare-fun bm!145321 () Bool)

(assert (=> bm!145321 (= call!145326 (Exists!1066 (ite c!379972 lambda!89426 lambda!89427)))))

(declare-fun b!2389221 () Bool)

(declare-fun call!145327 () Bool)

(assert (=> b!2389221 (= e!1523143 call!145327)))

(declare-fun b!2389222 () Bool)

(assert (=> b!2389222 (= e!1523140 (= s!9460 (Cons!28148 (c!379904 r!13927) Nil!28148)))))

(declare-fun b!2389223 () Bool)

(declare-fun res!1014968 () Bool)

(assert (=> b!2389223 (=> res!1014968 e!1523139)))

(assert (=> b!2389223 (= res!1014968 call!145327)))

(assert (=> b!2389223 (= e!1523142 e!1523139)))

(declare-fun b!2389224 () Bool)

(declare-fun e!1523138 () Bool)

(assert (=> b!2389224 (= e!1523141 e!1523138)))

(declare-fun res!1014966 () Bool)

(assert (=> b!2389224 (= res!1014966 (matchRSpec!853 (regOne!14521 r!13927) s!9460))))

(assert (=> b!2389224 (=> res!1014966 e!1523138)))

(declare-fun bm!145322 () Bool)

(assert (=> bm!145322 (= call!145327 (isEmpty!16124 s!9460))))

(declare-fun b!2389225 () Bool)

(assert (=> b!2389225 (= e!1523138 (matchRSpec!853 (regTwo!14521 r!13927) s!9460))))

(declare-fun b!2389226 () Bool)

(declare-fun c!379973 () Bool)

(assert (=> b!2389226 (= c!379973 (is-Union!7004 r!13927))))

(assert (=> b!2389226 (= e!1523140 e!1523141)))

(assert (= (and d!697869 c!379970) b!2389221))

(assert (= (and d!697869 (not c!379970)) b!2389219))

(assert (= (and b!2389219 res!1014967) b!2389218))

(assert (= (and b!2389218 c!379971) b!2389222))

(assert (= (and b!2389218 (not c!379971)) b!2389226))

(assert (= (and b!2389226 c!379973) b!2389224))

(assert (= (and b!2389226 (not c!379973)) b!2389216))

(assert (= (and b!2389224 (not res!1014966)) b!2389225))

(assert (= (and b!2389216 c!379972) b!2389223))

(assert (= (and b!2389216 (not c!379972)) b!2389220))

(assert (= (and b!2389223 (not res!1014968)) b!2389217))

(assert (= (or b!2389217 b!2389220) bm!145321))

(assert (= (or b!2389221 b!2389223) bm!145322))

(declare-fun m!2789731 () Bool)

(assert (=> bm!145321 m!2789731))

(declare-fun m!2789733 () Bool)

(assert (=> b!2389224 m!2789733))

(assert (=> bm!145322 m!2789625))

(declare-fun m!2789735 () Bool)

(assert (=> b!2389225 m!2789735))

(assert (=> b!2388885 d!697869))

(declare-fun d!697871 () Bool)

(declare-fun e!1523149 () Bool)

(assert (=> d!697871 e!1523149))

(declare-fun c!379976 () Bool)

(assert (=> d!697871 (= c!379976 (is-EmptyExpr!7004 r!13927))))

(declare-fun lt!870009 () Bool)

(declare-fun e!1523145 () Bool)

(assert (=> d!697871 (= lt!870009 e!1523145)))

(declare-fun c!379975 () Bool)

(assert (=> d!697871 (= c!379975 (isEmpty!16124 s!9460))))

(assert (=> d!697871 (validRegex!2729 r!13927)))

(assert (=> d!697871 (= (matchR!3121 r!13927 s!9460) lt!870009)))

(declare-fun b!2389227 () Bool)

(declare-fun res!1014975 () Bool)

(declare-fun e!1523144 () Bool)

(assert (=> b!2389227 (=> res!1014975 e!1523144)))

(declare-fun e!1523150 () Bool)

(assert (=> b!2389227 (= res!1014975 e!1523150)))

(declare-fun res!1014972 () Bool)

(assert (=> b!2389227 (=> (not res!1014972) (not e!1523150))))

(assert (=> b!2389227 (= res!1014972 lt!870009)))

(declare-fun b!2389228 () Bool)

(declare-fun e!1523148 () Bool)

(assert (=> b!2389228 (= e!1523148 (not (= (head!5242 s!9460) (c!379904 r!13927))))))

(declare-fun b!2389229 () Bool)

(declare-fun e!1523146 () Bool)

(assert (=> b!2389229 (= e!1523146 e!1523148)))

(declare-fun res!1014976 () Bool)

(assert (=> b!2389229 (=> res!1014976 e!1523148)))

(declare-fun call!145328 () Bool)

(assert (=> b!2389229 (= res!1014976 call!145328)))

(declare-fun b!2389230 () Bool)

(declare-fun e!1523147 () Bool)

(assert (=> b!2389230 (= e!1523147 (not lt!870009))))

(declare-fun b!2389231 () Bool)

(assert (=> b!2389231 (= e!1523145 (matchR!3121 (derivativeStep!1711 r!13927 (head!5242 s!9460)) (tail!3512 s!9460)))))

(declare-fun b!2389232 () Bool)

(declare-fun res!1014970 () Bool)

(assert (=> b!2389232 (=> res!1014970 e!1523144)))

(assert (=> b!2389232 (= res!1014970 (not (is-ElementMatch!7004 r!13927)))))

(assert (=> b!2389232 (= e!1523147 e!1523144)))

(declare-fun b!2389233 () Bool)

(declare-fun res!1014969 () Bool)

(assert (=> b!2389233 (=> (not res!1014969) (not e!1523150))))

(assert (=> b!2389233 (= res!1014969 (not call!145328))))

(declare-fun b!2389234 () Bool)

(assert (=> b!2389234 (= e!1523149 (= lt!870009 call!145328))))

(declare-fun b!2389235 () Bool)

(assert (=> b!2389235 (= e!1523144 e!1523146)))

(declare-fun res!1014971 () Bool)

(assert (=> b!2389235 (=> (not res!1014971) (not e!1523146))))

(assert (=> b!2389235 (= res!1014971 (not lt!870009))))

(declare-fun b!2389236 () Bool)

(assert (=> b!2389236 (= e!1523150 (= (head!5242 s!9460) (c!379904 r!13927)))))

(declare-fun bm!145323 () Bool)

(assert (=> bm!145323 (= call!145328 (isEmpty!16124 s!9460))))

(declare-fun b!2389237 () Bool)

(assert (=> b!2389237 (= e!1523149 e!1523147)))

(declare-fun c!379974 () Bool)

(assert (=> b!2389237 (= c!379974 (is-EmptyLang!7004 r!13927))))

(declare-fun b!2389238 () Bool)

(declare-fun res!1014974 () Bool)

(assert (=> b!2389238 (=> res!1014974 e!1523148)))

(assert (=> b!2389238 (= res!1014974 (not (isEmpty!16124 (tail!3512 s!9460))))))

(declare-fun b!2389239 () Bool)

(assert (=> b!2389239 (= e!1523145 (nullable!2053 r!13927))))

(declare-fun b!2389240 () Bool)

(declare-fun res!1014973 () Bool)

(assert (=> b!2389240 (=> (not res!1014973) (not e!1523150))))

(assert (=> b!2389240 (= res!1014973 (isEmpty!16124 (tail!3512 s!9460)))))

(assert (= (and d!697871 c!379975) b!2389239))

(assert (= (and d!697871 (not c!379975)) b!2389231))

(assert (= (and d!697871 c!379976) b!2389234))

(assert (= (and d!697871 (not c!379976)) b!2389237))

(assert (= (and b!2389237 c!379974) b!2389230))

(assert (= (and b!2389237 (not c!379974)) b!2389232))

(assert (= (and b!2389232 (not res!1014970)) b!2389227))

(assert (= (and b!2389227 res!1014972) b!2389233))

(assert (= (and b!2389233 res!1014969) b!2389240))

(assert (= (and b!2389240 res!1014973) b!2389236))

(assert (= (and b!2389227 (not res!1014975)) b!2389235))

(assert (= (and b!2389235 res!1014971) b!2389229))

(assert (= (and b!2389229 (not res!1014976)) b!2389238))

(assert (= (and b!2389238 (not res!1014974)) b!2389228))

(assert (= (or b!2389234 b!2389229 b!2389233) bm!145323))

(assert (=> bm!145323 m!2789625))

(assert (=> b!2389240 m!2789627))

(assert (=> b!2389240 m!2789627))

(assert (=> b!2389240 m!2789629))

(declare-fun m!2789737 () Bool)

(assert (=> b!2389239 m!2789737))

(assert (=> d!697871 m!2789625))

(assert (=> d!697871 m!2789477))

(assert (=> b!2389236 m!2789633))

(assert (=> b!2389238 m!2789627))

(assert (=> b!2389238 m!2789627))

(assert (=> b!2389238 m!2789629))

(assert (=> b!2389231 m!2789633))

(assert (=> b!2389231 m!2789633))

(declare-fun m!2789739 () Bool)

(assert (=> b!2389231 m!2789739))

(assert (=> b!2389231 m!2789627))

(assert (=> b!2389231 m!2789739))

(assert (=> b!2389231 m!2789627))

(declare-fun m!2789741 () Bool)

(assert (=> b!2389231 m!2789741))

(assert (=> b!2389228 m!2789633))

(assert (=> b!2388885 d!697871))

(declare-fun d!697873 () Bool)

(assert (=> d!697873 (= (matchR!3121 r!13927 s!9460) (matchRSpec!853 r!13927 s!9460))))

(declare-fun lt!870013 () Unit!41111)

(declare-fun choose!14047 (Regex!7004 List!28246) Unit!41111)

(assert (=> d!697873 (= lt!870013 (choose!14047 r!13927 s!9460))))

(assert (=> d!697873 (validRegex!2729 r!13927)))

(assert (=> d!697873 (= (mainMatchTheorem!853 r!13927 s!9460) lt!870013)))

(declare-fun bs!462426 () Bool)

(assert (= bs!462426 d!697873))

(assert (=> bs!462426 m!2789491))

(assert (=> bs!462426 m!2789489))

(declare-fun m!2789743 () Bool)

(assert (=> bs!462426 m!2789743))

(assert (=> bs!462426 m!2789477))

(assert (=> b!2388885 d!697873))

(declare-fun d!697875 () Bool)

(assert (=> d!697875 (= (head!5240 l!9164) (h!33550 l!9164))))

(assert (=> bm!145270 d!697875))

(declare-fun d!697877 () Bool)

(assert (=> d!697877 (matchR!3121 (Concat!11640 lt!869903 EmptyExpr!7004) (++!6958 (_1!16477 lt!869906) (_2!16477 lt!869906)))))

(declare-fun lt!870016 () Unit!41111)

(declare-fun choose!14048 (Regex!7004 Regex!7004 List!28246 List!28246 List!28246) Unit!41111)

(assert (=> d!697877 (= lt!870016 (choose!14048 lt!869903 EmptyExpr!7004 (_1!16477 lt!869906) (_2!16477 lt!869906) s!9460))))

(assert (=> d!697877 (validRegex!2729 lt!869903)))

(assert (=> d!697877 (= (lemmaFindSeparationIsDefinedThenConcatMatches!23 lt!869903 EmptyExpr!7004 (_1!16477 lt!869906) (_2!16477 lt!869906) s!9460) lt!870016)))

(declare-fun bs!462427 () Bool)

(assert (= bs!462427 d!697877))

(declare-fun m!2789759 () Bool)

(assert (=> bs!462427 m!2789759))

(assert (=> bs!462427 m!2789759))

(declare-fun m!2789761 () Bool)

(assert (=> bs!462427 m!2789761))

(declare-fun m!2789763 () Bool)

(assert (=> bs!462427 m!2789763))

(assert (=> bs!462427 m!2789605))

(assert (=> b!2388894 d!697877))

(declare-fun d!697883 () Bool)

(assert (=> d!697883 (= (get!8604 lt!869907) (v!30954 lt!869907))))

(assert (=> b!2388894 d!697883))

(declare-fun d!697885 () Bool)

(assert (=> d!697885 (matchR!3121 (Concat!11640 lt!869903 EmptyExpr!7004) (++!6958 s!9460 Nil!28148))))

(declare-fun lt!870019 () Unit!41111)

(declare-fun choose!14049 (Regex!7004 Regex!7004 List!28246 List!28246) Unit!41111)

(assert (=> d!697885 (= lt!870019 (choose!14049 lt!869903 EmptyExpr!7004 s!9460 Nil!28148))))

(declare-fun e!1523160 () Bool)

(assert (=> d!697885 e!1523160))

(declare-fun res!1014987 () Bool)

(assert (=> d!697885 (=> (not res!1014987) (not e!1523160))))

(assert (=> d!697885 (= res!1014987 (validRegex!2729 lt!869903))))

(assert (=> d!697885 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!41 lt!869903 EmptyExpr!7004 s!9460 Nil!28148) lt!870019)))

(declare-fun b!2389257 () Bool)

(assert (=> b!2389257 (= e!1523160 (validRegex!2729 EmptyExpr!7004))))

(assert (= (and d!697885 res!1014987) b!2389257))

(declare-fun m!2789765 () Bool)

(assert (=> d!697885 m!2789765))

(assert (=> d!697885 m!2789765))

(declare-fun m!2789767 () Bool)

(assert (=> d!697885 m!2789767))

(declare-fun m!2789769 () Bool)

(assert (=> d!697885 m!2789769))

(assert (=> d!697885 m!2789605))

(declare-fun m!2789771 () Bool)

(assert (=> b!2389257 m!2789771))

(assert (=> b!2388886 d!697885))

(declare-fun d!697887 () Bool)

(declare-fun e!1523166 () Bool)

(assert (=> d!697887 e!1523166))

(declare-fun c!379982 () Bool)

(assert (=> d!697887 (= c!379982 (is-EmptyExpr!7004 lt!869910))))

(declare-fun lt!870020 () Bool)

(declare-fun e!1523162 () Bool)

(assert (=> d!697887 (= lt!870020 e!1523162)))

(declare-fun c!379981 () Bool)

(assert (=> d!697887 (= c!379981 (isEmpty!16124 call!145280))))

(assert (=> d!697887 (validRegex!2729 lt!869910)))

(assert (=> d!697887 (= (matchR!3121 lt!869910 call!145280) lt!870020)))

(declare-fun b!2389258 () Bool)

(declare-fun res!1014994 () Bool)

(declare-fun e!1523161 () Bool)

(assert (=> b!2389258 (=> res!1014994 e!1523161)))

(declare-fun e!1523167 () Bool)

(assert (=> b!2389258 (= res!1014994 e!1523167)))

(declare-fun res!1014991 () Bool)

(assert (=> b!2389258 (=> (not res!1014991) (not e!1523167))))

(assert (=> b!2389258 (= res!1014991 lt!870020)))

(declare-fun b!2389259 () Bool)

(declare-fun e!1523165 () Bool)

(assert (=> b!2389259 (= e!1523165 (not (= (head!5242 call!145280) (c!379904 lt!869910))))))

(declare-fun b!2389260 () Bool)

(declare-fun e!1523163 () Bool)

(assert (=> b!2389260 (= e!1523163 e!1523165)))

(declare-fun res!1014995 () Bool)

(assert (=> b!2389260 (=> res!1014995 e!1523165)))

(declare-fun call!145330 () Bool)

(assert (=> b!2389260 (= res!1014995 call!145330)))

(declare-fun b!2389261 () Bool)

(declare-fun e!1523164 () Bool)

(assert (=> b!2389261 (= e!1523164 (not lt!870020))))

(declare-fun b!2389262 () Bool)

(assert (=> b!2389262 (= e!1523162 (matchR!3121 (derivativeStep!1711 lt!869910 (head!5242 call!145280)) (tail!3512 call!145280)))))

(declare-fun b!2389263 () Bool)

(declare-fun res!1014989 () Bool)

(assert (=> b!2389263 (=> res!1014989 e!1523161)))

(assert (=> b!2389263 (= res!1014989 (not (is-ElementMatch!7004 lt!869910)))))

(assert (=> b!2389263 (= e!1523164 e!1523161)))

(declare-fun b!2389264 () Bool)

(declare-fun res!1014988 () Bool)

(assert (=> b!2389264 (=> (not res!1014988) (not e!1523167))))

(assert (=> b!2389264 (= res!1014988 (not call!145330))))

(declare-fun b!2389265 () Bool)

(assert (=> b!2389265 (= e!1523166 (= lt!870020 call!145330))))

(declare-fun b!2389266 () Bool)

(assert (=> b!2389266 (= e!1523161 e!1523163)))

(declare-fun res!1014990 () Bool)

(assert (=> b!2389266 (=> (not res!1014990) (not e!1523163))))

(assert (=> b!2389266 (= res!1014990 (not lt!870020))))

(declare-fun b!2389267 () Bool)

(assert (=> b!2389267 (= e!1523167 (= (head!5242 call!145280) (c!379904 lt!869910)))))

(declare-fun bm!145325 () Bool)

(assert (=> bm!145325 (= call!145330 (isEmpty!16124 call!145280))))

(declare-fun b!2389268 () Bool)

(assert (=> b!2389268 (= e!1523166 e!1523164)))

(declare-fun c!379980 () Bool)

(assert (=> b!2389268 (= c!379980 (is-EmptyLang!7004 lt!869910))))

(declare-fun b!2389269 () Bool)

(declare-fun res!1014993 () Bool)

(assert (=> b!2389269 (=> res!1014993 e!1523165)))

(assert (=> b!2389269 (= res!1014993 (not (isEmpty!16124 (tail!3512 call!145280))))))

(declare-fun b!2389270 () Bool)

(assert (=> b!2389270 (= e!1523162 (nullable!2053 lt!869910))))

(declare-fun b!2389271 () Bool)

(declare-fun res!1014992 () Bool)

(assert (=> b!2389271 (=> (not res!1014992) (not e!1523167))))

(assert (=> b!2389271 (= res!1014992 (isEmpty!16124 (tail!3512 call!145280)))))

(assert (= (and d!697887 c!379981) b!2389270))

(assert (= (and d!697887 (not c!379981)) b!2389262))

(assert (= (and d!697887 c!379982) b!2389265))

(assert (= (and d!697887 (not c!379982)) b!2389268))

(assert (= (and b!2389268 c!379980) b!2389261))

(assert (= (and b!2389268 (not c!379980)) b!2389263))

(assert (= (and b!2389263 (not res!1014989)) b!2389258))

(assert (= (and b!2389258 res!1014991) b!2389264))

(assert (= (and b!2389264 res!1014988) b!2389271))

(assert (= (and b!2389271 res!1014992) b!2389267))

(assert (= (and b!2389258 (not res!1014994)) b!2389266))

(assert (= (and b!2389266 res!1014990) b!2389260))

(assert (= (and b!2389260 (not res!1014995)) b!2389269))

(assert (= (and b!2389269 (not res!1014993)) b!2389259))

(assert (= (or b!2389265 b!2389260 b!2389264) bm!145325))

(declare-fun m!2789773 () Bool)

(assert (=> bm!145325 m!2789773))

(declare-fun m!2789775 () Bool)

(assert (=> b!2389271 m!2789775))

(assert (=> b!2389271 m!2789775))

(declare-fun m!2789777 () Bool)

(assert (=> b!2389271 m!2789777))

(declare-fun m!2789779 () Bool)

(assert (=> b!2389270 m!2789779))

(assert (=> d!697887 m!2789773))

(declare-fun m!2789781 () Bool)

(assert (=> d!697887 m!2789781))

(declare-fun m!2789783 () Bool)

(assert (=> b!2389267 m!2789783))

(assert (=> b!2389269 m!2789775))

(assert (=> b!2389269 m!2789775))

(assert (=> b!2389269 m!2789777))

(assert (=> b!2389262 m!2789783))

(assert (=> b!2389262 m!2789783))

(declare-fun m!2789785 () Bool)

(assert (=> b!2389262 m!2789785))

(assert (=> b!2389262 m!2789775))

(assert (=> b!2389262 m!2789785))

(assert (=> b!2389262 m!2789775))

(declare-fun m!2789787 () Bool)

(assert (=> b!2389262 m!2789787))

(assert (=> b!2389259 m!2789783))

(assert (=> b!2388886 d!697887))

(declare-fun d!697889 () Bool)

(assert (=> d!697889 (isDefined!4375 (findConcatSeparation!655 lt!869903 EmptyExpr!7004 Nil!28148 s!9460 s!9460))))

(declare-fun lt!870025 () Unit!41111)

(declare-fun choose!14050 (Regex!7004 Regex!7004 List!28246) Unit!41111)

(assert (=> d!697889 (= lt!870025 (choose!14050 lt!869903 EmptyExpr!7004 s!9460))))

(assert (=> d!697889 (validRegex!2729 lt!869903)))

(assert (=> d!697889 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!23 lt!869903 EmptyExpr!7004 s!9460) lt!870025)))

(declare-fun bs!462428 () Bool)

(assert (= bs!462428 d!697889))

(declare-fun m!2789789 () Bool)

(assert (=> bs!462428 m!2789789))

(assert (=> bs!462428 m!2789789))

(declare-fun m!2789791 () Bool)

(assert (=> bs!462428 m!2789791))

(declare-fun m!2789793 () Bool)

(assert (=> bs!462428 m!2789793))

(assert (=> bs!462428 m!2789605))

(assert (=> b!2388886 d!697889))

(declare-fun b!2389275 () Bool)

(declare-fun e!1523175 () Bool)

(declare-fun lt!870029 () Option!5547)

(assert (=> b!2389275 (= e!1523175 (= (++!6958 (_1!16477 (get!8604 lt!870029)) (_2!16477 (get!8604 lt!870029))) s!9460))))

(declare-fun b!2389276 () Bool)

(declare-fun e!1523172 () Option!5547)

(assert (=> b!2389276 (= e!1523172 (Some!5546 (tuple2!27873 Nil!28148 s!9460)))))

(declare-fun b!2389277 () Bool)

(declare-fun e!1523173 () Bool)

(assert (=> b!2389277 (= e!1523173 (matchR!3121 (ite c!379900 EmptyExpr!7004 call!145278) s!9460))))

(declare-fun b!2389278 () Bool)

(declare-fun res!1015000 () Bool)

(assert (=> b!2389278 (=> (not res!1015000) (not e!1523175))))

(assert (=> b!2389278 (= res!1015000 (matchR!3121 (ite c!379900 EmptyExpr!7004 call!145278) (_2!16477 (get!8604 lt!870029))))))

(declare-fun b!2389279 () Bool)

(declare-fun res!1014999 () Bool)

(assert (=> b!2389279 (=> (not res!1014999) (not e!1523175))))

(assert (=> b!2389279 (= res!1014999 (matchR!3121 (ite c!379900 lt!869903 call!145276) (_1!16477 (get!8604 lt!870029))))))

(declare-fun b!2389280 () Bool)

(declare-fun e!1523174 () Option!5547)

(assert (=> b!2389280 (= e!1523174 None!5546)))

(declare-fun b!2389282 () Bool)

(declare-fun lt!870028 () Unit!41111)

(declare-fun lt!870027 () Unit!41111)

(assert (=> b!2389282 (= lt!870028 lt!870027)))

(assert (=> b!2389282 (= (++!6958 (++!6958 Nil!28148 (Cons!28148 (h!33549 s!9460) Nil!28148)) (t!208223 s!9460)) s!9460)))

(assert (=> b!2389282 (= lt!870027 (lemmaMoveElementToOtherListKeepsConcatEq!600 Nil!28148 (h!33549 s!9460) (t!208223 s!9460) s!9460))))

(assert (=> b!2389282 (= e!1523174 (findConcatSeparation!655 (ite c!379900 lt!869903 call!145276) (ite c!379900 EmptyExpr!7004 call!145278) (++!6958 Nil!28148 (Cons!28148 (h!33549 s!9460) Nil!28148)) (t!208223 s!9460) s!9460))))

(declare-fun b!2389283 () Bool)

(declare-fun e!1523171 () Bool)

(assert (=> b!2389283 (= e!1523171 (not (isDefined!4375 lt!870029)))))

(declare-fun d!697891 () Bool)

(assert (=> d!697891 e!1523171))

(declare-fun res!1015003 () Bool)

(assert (=> d!697891 (=> res!1015003 e!1523171)))

(assert (=> d!697891 (= res!1015003 e!1523175)))

(declare-fun res!1015002 () Bool)

(assert (=> d!697891 (=> (not res!1015002) (not e!1523175))))

(assert (=> d!697891 (= res!1015002 (isDefined!4375 lt!870029))))

(assert (=> d!697891 (= lt!870029 e!1523172)))

(declare-fun c!379983 () Bool)

(assert (=> d!697891 (= c!379983 e!1523173)))

(declare-fun res!1015001 () Bool)

(assert (=> d!697891 (=> (not res!1015001) (not e!1523173))))

(assert (=> d!697891 (= res!1015001 (matchR!3121 (ite c!379900 lt!869903 call!145276) Nil!28148))))

(assert (=> d!697891 (validRegex!2729 (ite c!379900 lt!869903 call!145276))))

(assert (=> d!697891 (= (findConcatSeparation!655 (ite c!379900 lt!869903 call!145276) (ite c!379900 EmptyExpr!7004 call!145278) Nil!28148 s!9460 s!9460) lt!870029)))

(declare-fun b!2389281 () Bool)

(assert (=> b!2389281 (= e!1523172 e!1523174)))

(declare-fun c!379984 () Bool)

(assert (=> b!2389281 (= c!379984 (is-Nil!28148 s!9460))))

(assert (= (and d!697891 res!1015001) b!2389277))

(assert (= (and d!697891 c!379983) b!2389276))

(assert (= (and d!697891 (not c!379983)) b!2389281))

(assert (= (and b!2389281 c!379984) b!2389280))

(assert (= (and b!2389281 (not c!379984)) b!2389282))

(assert (= (and d!697891 res!1015002) b!2389279))

(assert (= (and b!2389279 res!1014999) b!2389278))

(assert (= (and b!2389278 res!1015000) b!2389275))

(assert (= (and d!697891 (not res!1015003)) b!2389283))

(declare-fun m!2789803 () Bool)

(assert (=> b!2389277 m!2789803))

(declare-fun m!2789805 () Bool)

(assert (=> d!697891 m!2789805))

(declare-fun m!2789807 () Bool)

(assert (=> d!697891 m!2789807))

(declare-fun m!2789809 () Bool)

(assert (=> d!697891 m!2789809))

(declare-fun m!2789811 () Bool)

(assert (=> b!2389275 m!2789811))

(declare-fun m!2789813 () Bool)

(assert (=> b!2389275 m!2789813))

(assert (=> b!2389279 m!2789811))

(declare-fun m!2789815 () Bool)

(assert (=> b!2389279 m!2789815))

(assert (=> b!2389278 m!2789811))

(declare-fun m!2789817 () Bool)

(assert (=> b!2389278 m!2789817))

(assert (=> b!2389282 m!2789615))

(assert (=> b!2389282 m!2789615))

(assert (=> b!2389282 m!2789617))

(assert (=> b!2389282 m!2789619))

(assert (=> b!2389282 m!2789615))

(declare-fun m!2789819 () Bool)

(assert (=> b!2389282 m!2789819))

(assert (=> b!2389283 m!2789805))

(assert (=> bm!145275 d!697891))

(declare-fun bs!462429 () Bool)

(declare-fun d!697895 () Bool)

(assert (= bs!462429 (and d!697895 start!234426)))

(declare-fun lambda!89428 () Int)

(assert (=> bs!462429 (= lambda!89428 lambda!89396)))

(declare-fun bs!462430 () Bool)

(assert (= bs!462430 (and d!697895 d!697863)))

(assert (=> bs!462430 (= lambda!89428 lambda!89421)))

(declare-fun e!1523186 () Bool)

(assert (=> d!697895 e!1523186))

(declare-fun res!1015012 () Bool)

(assert (=> d!697895 (=> (not res!1015012) (not e!1523186))))

(declare-fun lt!870031 () Regex!7004)

(assert (=> d!697895 (= res!1015012 (validRegex!2729 lt!870031))))

(declare-fun e!1523187 () Regex!7004)

(assert (=> d!697895 (= lt!870031 e!1523187)))

(declare-fun c!379991 () Bool)

(declare-fun e!1523185 () Bool)

(assert (=> d!697895 (= c!379991 e!1523185)))

(declare-fun res!1015013 () Bool)

(assert (=> d!697895 (=> (not res!1015013) (not e!1523185))))

(assert (=> d!697895 (= res!1015013 (is-Cons!28149 l!9164))))

(assert (=> d!697895 (forall!5638 l!9164 lambda!89428)))

(assert (=> d!697895 (= (generalisedConcat!105 l!9164) lt!870031)))

(declare-fun b!2389298 () Bool)

(assert (=> b!2389298 (= e!1523187 (h!33550 l!9164))))

(declare-fun b!2389299 () Bool)

(declare-fun e!1523183 () Regex!7004)

(assert (=> b!2389299 (= e!1523183 EmptyExpr!7004)))

(declare-fun b!2389300 () Bool)

(declare-fun e!1523184 () Bool)

(assert (=> b!2389300 (= e!1523184 (= lt!870031 (head!5240 l!9164)))))

(declare-fun b!2389301 () Bool)

(assert (=> b!2389301 (= e!1523187 e!1523183)))

(declare-fun c!379990 () Bool)

(assert (=> b!2389301 (= c!379990 (is-Cons!28149 l!9164))))

(declare-fun b!2389302 () Bool)

(declare-fun e!1523188 () Bool)

(assert (=> b!2389302 (= e!1523186 e!1523188)))

(declare-fun c!379988 () Bool)

(assert (=> b!2389302 (= c!379988 (isEmpty!16121 l!9164))))

(declare-fun b!2389303 () Bool)

(assert (=> b!2389303 (= e!1523188 e!1523184)))

(declare-fun c!379989 () Bool)

(assert (=> b!2389303 (= c!379989 (isEmpty!16121 (tail!3510 l!9164)))))

(declare-fun b!2389304 () Bool)

(assert (=> b!2389304 (= e!1523188 (isEmptyExpr!74 lt!870031))))

(declare-fun b!2389305 () Bool)

(assert (=> b!2389305 (= e!1523184 (isConcat!74 lt!870031))))

(declare-fun b!2389306 () Bool)

(assert (=> b!2389306 (= e!1523183 (Concat!11640 (h!33550 l!9164) (generalisedConcat!105 (t!208224 l!9164))))))

(declare-fun b!2389307 () Bool)

(assert (=> b!2389307 (= e!1523185 (isEmpty!16121 (t!208224 l!9164)))))

(assert (= (and d!697895 res!1015013) b!2389307))

(assert (= (and d!697895 c!379991) b!2389298))

(assert (= (and d!697895 (not c!379991)) b!2389301))

(assert (= (and b!2389301 c!379990) b!2389306))

(assert (= (and b!2389301 (not c!379990)) b!2389299))

(assert (= (and d!697895 res!1015012) b!2389302))

(assert (= (and b!2389302 c!379988) b!2389304))

(assert (= (and b!2389302 (not c!379988)) b!2389303))

(assert (= (and b!2389303 c!379989) b!2389300))

(assert (= (and b!2389303 (not c!379989)) b!2389305))

(declare-fun m!2789821 () Bool)

(assert (=> b!2389306 m!2789821))

(declare-fun m!2789823 () Bool)

(assert (=> b!2389304 m!2789823))

(assert (=> b!2389303 m!2789501))

(assert (=> b!2389303 m!2789501))

(declare-fun m!2789825 () Bool)

(assert (=> b!2389303 m!2789825))

(declare-fun m!2789827 () Bool)

(assert (=> d!697895 m!2789827))

(declare-fun m!2789829 () Bool)

(assert (=> d!697895 m!2789829))

(declare-fun m!2789831 () Bool)

(assert (=> b!2389305 m!2789831))

(assert (=> b!2389300 m!2789495))

(assert (=> b!2389302 m!2789523))

(declare-fun m!2789833 () Bool)

(assert (=> b!2389307 m!2789833))

(assert (=> b!2388901 d!697895))

(declare-fun d!697897 () Bool)

(declare-fun res!1015018 () Bool)

(declare-fun e!1523193 () Bool)

(assert (=> d!697897 (=> res!1015018 e!1523193)))

(assert (=> d!697897 (= res!1015018 (is-Nil!28149 l!9164))))

(assert (=> d!697897 (= (forall!5638 l!9164 lambda!89396) e!1523193)))

(declare-fun b!2389312 () Bool)

(declare-fun e!1523194 () Bool)

(assert (=> b!2389312 (= e!1523193 e!1523194)))

(declare-fun res!1015019 () Bool)

(assert (=> b!2389312 (=> (not res!1015019) (not e!1523194))))

(declare-fun dynLambda!12120 (Int Regex!7004) Bool)

(assert (=> b!2389312 (= res!1015019 (dynLambda!12120 lambda!89396 (h!33550 l!9164)))))

(declare-fun b!2389313 () Bool)

(assert (=> b!2389313 (= e!1523194 (forall!5638 (t!208224 l!9164) lambda!89396))))

(assert (= (and d!697897 (not res!1015018)) b!2389312))

(assert (= (and b!2389312 res!1015019) b!2389313))

(declare-fun b_lambda!74171 () Bool)

(assert (=> (not b_lambda!74171) (not b!2389312)))

(declare-fun m!2789851 () Bool)

(assert (=> b!2389312 m!2789851))

(declare-fun m!2789853 () Bool)

(assert (=> b!2389313 m!2789853))

(assert (=> start!234426 d!697897))

(declare-fun b!2389332 () Bool)

(declare-fun e!1523213 () Bool)

(declare-fun call!145340 () Bool)

(assert (=> b!2389332 (= e!1523213 call!145340)))

(declare-fun b!2389333 () Bool)

(declare-fun e!1523210 () Bool)

(assert (=> b!2389333 (= e!1523210 e!1523213)))

(declare-fun res!1015031 () Bool)

(assert (=> b!2389333 (=> (not res!1015031) (not e!1523213))))

(declare-fun call!145339 () Bool)

(assert (=> b!2389333 (= res!1015031 call!145339)))

(declare-fun b!2389334 () Bool)

(declare-fun res!1015034 () Bool)

(assert (=> b!2389334 (=> res!1015034 e!1523210)))

(assert (=> b!2389334 (= res!1015034 (not (is-Concat!11640 r!13927)))))

(declare-fun e!1523212 () Bool)

(assert (=> b!2389334 (= e!1523212 e!1523210)))

(declare-fun b!2389335 () Bool)

(declare-fun e!1523215 () Bool)

(declare-fun e!1523209 () Bool)

(assert (=> b!2389335 (= e!1523215 e!1523209)))

(declare-fun res!1015032 () Bool)

(assert (=> b!2389335 (= res!1015032 (not (nullable!2053 (reg!7333 r!13927))))))

(assert (=> b!2389335 (=> (not res!1015032) (not e!1523209))))

(declare-fun bm!145333 () Bool)

(declare-fun c!379996 () Bool)

(assert (=> bm!145333 (= call!145340 (validRegex!2729 (ite c!379996 (regOne!14521 r!13927) (regTwo!14520 r!13927))))))

(declare-fun b!2389336 () Bool)

(assert (=> b!2389336 (= e!1523215 e!1523212)))

(assert (=> b!2389336 (= c!379996 (is-Union!7004 r!13927))))

(declare-fun bm!145334 () Bool)

(declare-fun call!145338 () Bool)

(assert (=> bm!145334 (= call!145339 call!145338)))

(declare-fun d!697901 () Bool)

(declare-fun res!1015030 () Bool)

(declare-fun e!1523214 () Bool)

(assert (=> d!697901 (=> res!1015030 e!1523214)))

(assert (=> d!697901 (= res!1015030 (is-ElementMatch!7004 r!13927))))

(assert (=> d!697901 (= (validRegex!2729 r!13927) e!1523214)))

(declare-fun b!2389337 () Bool)

(declare-fun e!1523211 () Bool)

(assert (=> b!2389337 (= e!1523211 call!145339)))

(declare-fun b!2389338 () Bool)

(assert (=> b!2389338 (= e!1523209 call!145338)))

(declare-fun b!2389339 () Bool)

(assert (=> b!2389339 (= e!1523214 e!1523215)))

(declare-fun c!379997 () Bool)

(assert (=> b!2389339 (= c!379997 (is-Star!7004 r!13927))))

(declare-fun b!2389340 () Bool)

(declare-fun res!1015033 () Bool)

(assert (=> b!2389340 (=> (not res!1015033) (not e!1523211))))

(assert (=> b!2389340 (= res!1015033 call!145340)))

(assert (=> b!2389340 (= e!1523212 e!1523211)))

(declare-fun bm!145335 () Bool)

(assert (=> bm!145335 (= call!145338 (validRegex!2729 (ite c!379997 (reg!7333 r!13927) (ite c!379996 (regTwo!14521 r!13927) (regOne!14520 r!13927)))))))

(assert (= (and d!697901 (not res!1015030)) b!2389339))

(assert (= (and b!2389339 c!379997) b!2389335))

(assert (= (and b!2389339 (not c!379997)) b!2389336))

(assert (= (and b!2389335 res!1015032) b!2389338))

(assert (= (and b!2389336 c!379996) b!2389340))

(assert (= (and b!2389336 (not c!379996)) b!2389334))

(assert (= (and b!2389340 res!1015033) b!2389337))

(assert (= (and b!2389334 (not res!1015034)) b!2389333))

(assert (= (and b!2389333 res!1015031) b!2389332))

(assert (= (or b!2389340 b!2389332) bm!145333))

(assert (= (or b!2389337 b!2389333) bm!145334))

(assert (= (or b!2389338 bm!145334) bm!145335))

(declare-fun m!2789855 () Bool)

(assert (=> b!2389335 m!2789855))

(declare-fun m!2789857 () Bool)

(assert (=> bm!145333 m!2789857))

(declare-fun m!2789859 () Bool)

(assert (=> bm!145335 m!2789859))

(assert (=> b!2388900 d!697901))

(declare-fun b!2389341 () Bool)

(declare-fun e!1523220 () Bool)

(declare-fun lt!870036 () Option!5547)

(assert (=> b!2389341 (= e!1523220 (= (++!6958 (_1!16477 (get!8604 lt!870036)) (_2!16477 (get!8604 lt!870036))) s!9460))))

(declare-fun b!2389342 () Bool)

(declare-fun e!1523217 () Option!5547)

(assert (=> b!2389342 (= e!1523217 (Some!5546 (tuple2!27873 Nil!28148 s!9460)))))

(declare-fun b!2389343 () Bool)

(declare-fun e!1523218 () Bool)

(assert (=> b!2389343 (= e!1523218 (matchR!3121 call!145279 s!9460))))

(declare-fun b!2389344 () Bool)

(declare-fun res!1015036 () Bool)

(assert (=> b!2389344 (=> (not res!1015036) (not e!1523220))))

(assert (=> b!2389344 (= res!1015036 (matchR!3121 call!145279 (_2!16477 (get!8604 lt!870036))))))

(declare-fun b!2389345 () Bool)

(declare-fun res!1015035 () Bool)

(assert (=> b!2389345 (=> (not res!1015035) (not e!1523220))))

(assert (=> b!2389345 (= res!1015035 (matchR!3121 lt!869903 (_1!16477 (get!8604 lt!870036))))))

(declare-fun b!2389346 () Bool)

(declare-fun e!1523219 () Option!5547)

(assert (=> b!2389346 (= e!1523219 None!5546)))

(declare-fun b!2389348 () Bool)

(declare-fun lt!870035 () Unit!41111)

(declare-fun lt!870034 () Unit!41111)

(assert (=> b!2389348 (= lt!870035 lt!870034)))

(assert (=> b!2389348 (= (++!6958 (++!6958 Nil!28148 (Cons!28148 (h!33549 s!9460) Nil!28148)) (t!208223 s!9460)) s!9460)))

(assert (=> b!2389348 (= lt!870034 (lemmaMoveElementToOtherListKeepsConcatEq!600 Nil!28148 (h!33549 s!9460) (t!208223 s!9460) s!9460))))

(assert (=> b!2389348 (= e!1523219 (findConcatSeparation!655 lt!869903 call!145279 (++!6958 Nil!28148 (Cons!28148 (h!33549 s!9460) Nil!28148)) (t!208223 s!9460) s!9460))))

(declare-fun b!2389349 () Bool)

(declare-fun e!1523216 () Bool)

(assert (=> b!2389349 (= e!1523216 (not (isDefined!4375 lt!870036)))))

(declare-fun d!697903 () Bool)

(assert (=> d!697903 e!1523216))

(declare-fun res!1015039 () Bool)

(assert (=> d!697903 (=> res!1015039 e!1523216)))

(assert (=> d!697903 (= res!1015039 e!1523220)))

(declare-fun res!1015038 () Bool)

(assert (=> d!697903 (=> (not res!1015038) (not e!1523220))))

(assert (=> d!697903 (= res!1015038 (isDefined!4375 lt!870036))))

(assert (=> d!697903 (= lt!870036 e!1523217)))

(declare-fun c!379998 () Bool)

(assert (=> d!697903 (= c!379998 e!1523218)))

(declare-fun res!1015037 () Bool)

(assert (=> d!697903 (=> (not res!1015037) (not e!1523218))))

(assert (=> d!697903 (= res!1015037 (matchR!3121 lt!869903 Nil!28148))))

(assert (=> d!697903 (validRegex!2729 lt!869903)))

(assert (=> d!697903 (= (findConcatSeparation!655 lt!869903 call!145279 Nil!28148 s!9460 s!9460) lt!870036)))

(declare-fun b!2389347 () Bool)

(assert (=> b!2389347 (= e!1523217 e!1523219)))

(declare-fun c!379999 () Bool)

(assert (=> b!2389347 (= c!379999 (is-Nil!28148 s!9460))))

(assert (= (and d!697903 res!1015037) b!2389343))

(assert (= (and d!697903 c!379998) b!2389342))

(assert (= (and d!697903 (not c!379998)) b!2389347))

(assert (= (and b!2389347 c!379999) b!2389346))

(assert (= (and b!2389347 (not c!379999)) b!2389348))

(assert (= (and d!697903 res!1015038) b!2389345))

(assert (= (and b!2389345 res!1015035) b!2389344))

(assert (= (and b!2389344 res!1015036) b!2389341))

(assert (= (and d!697903 (not res!1015039)) b!2389349))

(declare-fun m!2789861 () Bool)

(assert (=> b!2389343 m!2789861))

(declare-fun m!2789863 () Bool)

(assert (=> d!697903 m!2789863))

(assert (=> d!697903 m!2789603))

(assert (=> d!697903 m!2789605))

(declare-fun m!2789865 () Bool)

(assert (=> b!2389341 m!2789865))

(declare-fun m!2789867 () Bool)

(assert (=> b!2389341 m!2789867))

(assert (=> b!2389345 m!2789865))

(declare-fun m!2789869 () Bool)

(assert (=> b!2389345 m!2789869))

(assert (=> b!2389344 m!2789865))

(declare-fun m!2789871 () Bool)

(assert (=> b!2389344 m!2789871))

(assert (=> b!2389348 m!2789615))

(assert (=> b!2389348 m!2789615))

(assert (=> b!2389348 m!2789617))

(assert (=> b!2389348 m!2789619))

(assert (=> b!2389348 m!2789615))

(declare-fun m!2789873 () Bool)

(assert (=> b!2389348 m!2789873))

(assert (=> b!2389349 m!2789863))

(assert (=> bm!145276 d!697903))

(declare-fun d!697905 () Bool)

(assert (=> d!697905 (= (isDefined!4375 call!145275) (not (isEmpty!16123 call!145275)))))

(declare-fun bs!462431 () Bool)

(assert (= bs!462431 d!697905))

(declare-fun m!2789875 () Bool)

(assert (=> bs!462431 m!2789875))

(assert (=> bm!145272 d!697905))

(declare-fun d!697907 () Bool)

(declare-fun e!1523226 () Bool)

(assert (=> d!697907 e!1523226))

(declare-fun c!380002 () Bool)

(assert (=> d!697907 (= c!380002 (is-EmptyExpr!7004 (ite c!379902 lt!869910 (Concat!11640 lt!869903 EmptyExpr!7004))))))

(declare-fun lt!870038 () Bool)

(declare-fun e!1523222 () Bool)

(assert (=> d!697907 (= lt!870038 e!1523222)))

(declare-fun c!380001 () Bool)

(assert (=> d!697907 (= c!380001 (isEmpty!16124 (ite c!379902 s!9460 call!145280)))))

(assert (=> d!697907 (validRegex!2729 (ite c!379902 lt!869910 (Concat!11640 lt!869903 EmptyExpr!7004)))))

(assert (=> d!697907 (= (matchR!3121 (ite c!379902 lt!869910 (Concat!11640 lt!869903 EmptyExpr!7004)) (ite c!379902 s!9460 call!145280)) lt!870038)))

(declare-fun b!2389350 () Bool)

(declare-fun res!1015046 () Bool)

(declare-fun e!1523221 () Bool)

(assert (=> b!2389350 (=> res!1015046 e!1523221)))

(declare-fun e!1523227 () Bool)

(assert (=> b!2389350 (= res!1015046 e!1523227)))

(declare-fun res!1015043 () Bool)

(assert (=> b!2389350 (=> (not res!1015043) (not e!1523227))))

(assert (=> b!2389350 (= res!1015043 lt!870038)))

(declare-fun e!1523225 () Bool)

(declare-fun b!2389351 () Bool)

(assert (=> b!2389351 (= e!1523225 (not (= (head!5242 (ite c!379902 s!9460 call!145280)) (c!379904 (ite c!379902 lt!869910 (Concat!11640 lt!869903 EmptyExpr!7004))))))))

(declare-fun b!2389352 () Bool)

(declare-fun e!1523223 () Bool)

(assert (=> b!2389352 (= e!1523223 e!1523225)))

(declare-fun res!1015047 () Bool)

(assert (=> b!2389352 (=> res!1015047 e!1523225)))

(declare-fun call!145341 () Bool)

(assert (=> b!2389352 (= res!1015047 call!145341)))

(declare-fun b!2389353 () Bool)

(declare-fun e!1523224 () Bool)

(assert (=> b!2389353 (= e!1523224 (not lt!870038))))

(declare-fun b!2389354 () Bool)

(assert (=> b!2389354 (= e!1523222 (matchR!3121 (derivativeStep!1711 (ite c!379902 lt!869910 (Concat!11640 lt!869903 EmptyExpr!7004)) (head!5242 (ite c!379902 s!9460 call!145280))) (tail!3512 (ite c!379902 s!9460 call!145280))))))

(declare-fun b!2389355 () Bool)

(declare-fun res!1015041 () Bool)

(assert (=> b!2389355 (=> res!1015041 e!1523221)))

(assert (=> b!2389355 (= res!1015041 (not (is-ElementMatch!7004 (ite c!379902 lt!869910 (Concat!11640 lt!869903 EmptyExpr!7004)))))))

(assert (=> b!2389355 (= e!1523224 e!1523221)))

(declare-fun b!2389356 () Bool)

(declare-fun res!1015040 () Bool)

(assert (=> b!2389356 (=> (not res!1015040) (not e!1523227))))

(assert (=> b!2389356 (= res!1015040 (not call!145341))))

(declare-fun b!2389357 () Bool)

(assert (=> b!2389357 (= e!1523226 (= lt!870038 call!145341))))

(declare-fun b!2389358 () Bool)

(assert (=> b!2389358 (= e!1523221 e!1523223)))

(declare-fun res!1015042 () Bool)

(assert (=> b!2389358 (=> (not res!1015042) (not e!1523223))))

(assert (=> b!2389358 (= res!1015042 (not lt!870038))))

(declare-fun b!2389359 () Bool)

(assert (=> b!2389359 (= e!1523227 (= (head!5242 (ite c!379902 s!9460 call!145280)) (c!379904 (ite c!379902 lt!869910 (Concat!11640 lt!869903 EmptyExpr!7004)))))))

(declare-fun bm!145336 () Bool)

(assert (=> bm!145336 (= call!145341 (isEmpty!16124 (ite c!379902 s!9460 call!145280)))))

(declare-fun b!2389360 () Bool)

(assert (=> b!2389360 (= e!1523226 e!1523224)))

(declare-fun c!380000 () Bool)

(assert (=> b!2389360 (= c!380000 (is-EmptyLang!7004 (ite c!379902 lt!869910 (Concat!11640 lt!869903 EmptyExpr!7004))))))

(declare-fun b!2389361 () Bool)

(declare-fun res!1015045 () Bool)

(assert (=> b!2389361 (=> res!1015045 e!1523225)))

(assert (=> b!2389361 (= res!1015045 (not (isEmpty!16124 (tail!3512 (ite c!379902 s!9460 call!145280)))))))

(declare-fun b!2389362 () Bool)

(assert (=> b!2389362 (= e!1523222 (nullable!2053 (ite c!379902 lt!869910 (Concat!11640 lt!869903 EmptyExpr!7004))))))

(declare-fun b!2389363 () Bool)

(declare-fun res!1015044 () Bool)

(assert (=> b!2389363 (=> (not res!1015044) (not e!1523227))))

(assert (=> b!2389363 (= res!1015044 (isEmpty!16124 (tail!3512 (ite c!379902 s!9460 call!145280))))))

(assert (= (and d!697907 c!380001) b!2389362))

(assert (= (and d!697907 (not c!380001)) b!2389354))

(assert (= (and d!697907 c!380002) b!2389357))

(assert (= (and d!697907 (not c!380002)) b!2389360))

(assert (= (and b!2389360 c!380000) b!2389353))

(assert (= (and b!2389360 (not c!380000)) b!2389355))

(assert (= (and b!2389355 (not res!1015041)) b!2389350))

(assert (= (and b!2389350 res!1015043) b!2389356))

(assert (= (and b!2389356 res!1015040) b!2389363))

(assert (= (and b!2389363 res!1015044) b!2389359))

(assert (= (and b!2389350 (not res!1015046)) b!2389358))

(assert (= (and b!2389358 res!1015042) b!2389352))

(assert (= (and b!2389352 (not res!1015047)) b!2389361))

(assert (= (and b!2389361 (not res!1015045)) b!2389351))

(assert (= (or b!2389357 b!2389352 b!2389356) bm!145336))

(declare-fun m!2789883 () Bool)

(assert (=> bm!145336 m!2789883))

(declare-fun m!2789885 () Bool)

(assert (=> b!2389363 m!2789885))

(assert (=> b!2389363 m!2789885))

(declare-fun m!2789887 () Bool)

(assert (=> b!2389363 m!2789887))

(declare-fun m!2789889 () Bool)

(assert (=> b!2389362 m!2789889))

(assert (=> d!697907 m!2789883))

(declare-fun m!2789891 () Bool)

(assert (=> d!697907 m!2789891))

(declare-fun m!2789893 () Bool)

(assert (=> b!2389359 m!2789893))

(assert (=> b!2389361 m!2789885))

(assert (=> b!2389361 m!2789885))

(assert (=> b!2389361 m!2789887))

(assert (=> b!2389354 m!2789893))

(assert (=> b!2389354 m!2789893))

(declare-fun m!2789895 () Bool)

(assert (=> b!2389354 m!2789895))

(assert (=> b!2389354 m!2789885))

(assert (=> b!2389354 m!2789895))

(assert (=> b!2389354 m!2789885))

(declare-fun m!2789897 () Bool)

(assert (=> b!2389354 m!2789897))

(assert (=> b!2389351 m!2789893))

(assert (=> bm!145273 d!697907))

(declare-fun d!697911 () Bool)

(assert (=> d!697911 (= (isEmpty!16121 l!9164) (is-Nil!28149 l!9164))))

(assert (=> b!2388895 d!697911))

(declare-fun b!2389377 () Bool)

(declare-fun e!1523230 () Bool)

(declare-fun tp!761817 () Bool)

(declare-fun tp!761815 () Bool)

(assert (=> b!2389377 (= e!1523230 (and tp!761817 tp!761815))))

(declare-fun b!2389374 () Bool)

(assert (=> b!2389374 (= e!1523230 tp_is_empty!11421)))

(assert (=> b!2388896 (= tp!761774 e!1523230)))

(declare-fun b!2389376 () Bool)

(declare-fun tp!761818 () Bool)

(assert (=> b!2389376 (= e!1523230 tp!761818)))

(declare-fun b!2389375 () Bool)

(declare-fun tp!761814 () Bool)

(declare-fun tp!761816 () Bool)

(assert (=> b!2389375 (= e!1523230 (and tp!761814 tp!761816))))

(assert (= (and b!2388896 (is-ElementMatch!7004 (regOne!14521 r!13927))) b!2389374))

(assert (= (and b!2388896 (is-Concat!11640 (regOne!14521 r!13927))) b!2389375))

(assert (= (and b!2388896 (is-Star!7004 (regOne!14521 r!13927))) b!2389376))

(assert (= (and b!2388896 (is-Union!7004 (regOne!14521 r!13927))) b!2389377))

(declare-fun b!2389383 () Bool)

(declare-fun e!1523233 () Bool)

(declare-fun tp!761822 () Bool)

(declare-fun tp!761820 () Bool)

(assert (=> b!2389383 (= e!1523233 (and tp!761822 tp!761820))))

(declare-fun b!2389380 () Bool)

(assert (=> b!2389380 (= e!1523233 tp_is_empty!11421)))

(assert (=> b!2388896 (= tp!761775 e!1523233)))

(declare-fun b!2389382 () Bool)

(declare-fun tp!761823 () Bool)

(assert (=> b!2389382 (= e!1523233 tp!761823)))

(declare-fun b!2389381 () Bool)

(declare-fun tp!761819 () Bool)

(declare-fun tp!761821 () Bool)

(assert (=> b!2389381 (= e!1523233 (and tp!761819 tp!761821))))

(assert (= (and b!2388896 (is-ElementMatch!7004 (regTwo!14521 r!13927))) b!2389380))

(assert (= (and b!2388896 (is-Concat!11640 (regTwo!14521 r!13927))) b!2389381))

(assert (= (and b!2388896 (is-Star!7004 (regTwo!14521 r!13927))) b!2389382))

(assert (= (and b!2388896 (is-Union!7004 (regTwo!14521 r!13927))) b!2389383))

(declare-fun b!2389389 () Bool)

(declare-fun e!1523236 () Bool)

(declare-fun tp!761827 () Bool)

(declare-fun tp!761825 () Bool)

(assert (=> b!2389389 (= e!1523236 (and tp!761827 tp!761825))))

(declare-fun b!2389386 () Bool)

(assert (=> b!2389386 (= e!1523236 tp_is_empty!11421)))

(assert (=> b!2388892 (= tp!761776 e!1523236)))

(declare-fun b!2389388 () Bool)

(declare-fun tp!761828 () Bool)

(assert (=> b!2389388 (= e!1523236 tp!761828)))

(declare-fun b!2389387 () Bool)

(declare-fun tp!761824 () Bool)

(declare-fun tp!761826 () Bool)

(assert (=> b!2389387 (= e!1523236 (and tp!761824 tp!761826))))

(assert (= (and b!2388892 (is-ElementMatch!7004 (h!33550 l!9164))) b!2389386))

(assert (= (and b!2388892 (is-Concat!11640 (h!33550 l!9164))) b!2389387))

(assert (= (and b!2388892 (is-Star!7004 (h!33550 l!9164))) b!2389388))

(assert (= (and b!2388892 (is-Union!7004 (h!33550 l!9164))) b!2389389))

(declare-fun b!2389394 () Bool)

(declare-fun e!1523239 () Bool)

(declare-fun tp!761833 () Bool)

(declare-fun tp!761834 () Bool)

(assert (=> b!2389394 (= e!1523239 (and tp!761833 tp!761834))))

(assert (=> b!2388892 (= tp!761777 e!1523239)))

(assert (= (and b!2388892 (is-Cons!28149 (t!208224 l!9164))) b!2389394))

(declare-fun b!2389398 () Bool)

(declare-fun e!1523240 () Bool)

(declare-fun tp!761838 () Bool)

(declare-fun tp!761836 () Bool)

(assert (=> b!2389398 (= e!1523240 (and tp!761838 tp!761836))))

(declare-fun b!2389395 () Bool)

(assert (=> b!2389395 (= e!1523240 tp_is_empty!11421)))

(assert (=> b!2388889 (= tp!761773 e!1523240)))

(declare-fun b!2389397 () Bool)

(declare-fun tp!761839 () Bool)

(assert (=> b!2389397 (= e!1523240 tp!761839)))

(declare-fun b!2389396 () Bool)

(declare-fun tp!761835 () Bool)

(declare-fun tp!761837 () Bool)

(assert (=> b!2389396 (= e!1523240 (and tp!761835 tp!761837))))

(assert (= (and b!2388889 (is-ElementMatch!7004 (regOne!14520 r!13927))) b!2389395))

(assert (= (and b!2388889 (is-Concat!11640 (regOne!14520 r!13927))) b!2389396))

(assert (= (and b!2388889 (is-Star!7004 (regOne!14520 r!13927))) b!2389397))

(assert (= (and b!2388889 (is-Union!7004 (regOne!14520 r!13927))) b!2389398))

(declare-fun b!2389402 () Bool)

(declare-fun e!1523241 () Bool)

(declare-fun tp!761843 () Bool)

(declare-fun tp!761841 () Bool)

(assert (=> b!2389402 (= e!1523241 (and tp!761843 tp!761841))))

(declare-fun b!2389399 () Bool)

(assert (=> b!2389399 (= e!1523241 tp_is_empty!11421)))

(assert (=> b!2388889 (= tp!761778 e!1523241)))

(declare-fun b!2389401 () Bool)

(declare-fun tp!761844 () Bool)

(assert (=> b!2389401 (= e!1523241 tp!761844)))

(declare-fun b!2389400 () Bool)

(declare-fun tp!761840 () Bool)

(declare-fun tp!761842 () Bool)

(assert (=> b!2389400 (= e!1523241 (and tp!761840 tp!761842))))

(assert (= (and b!2388889 (is-ElementMatch!7004 (regTwo!14520 r!13927))) b!2389399))

(assert (= (and b!2388889 (is-Concat!11640 (regTwo!14520 r!13927))) b!2389400))

(assert (= (and b!2388889 (is-Star!7004 (regTwo!14520 r!13927))) b!2389401))

(assert (= (and b!2388889 (is-Union!7004 (regTwo!14520 r!13927))) b!2389402))

(declare-fun b!2389407 () Bool)

(declare-fun e!1523244 () Bool)

(declare-fun tp!761847 () Bool)

(assert (=> b!2389407 (= e!1523244 (and tp_is_empty!11421 tp!761847))))

(assert (=> b!2388888 (= tp!761779 e!1523244)))

(assert (= (and b!2388888 (is-Cons!28148 (t!208223 s!9460))) b!2389407))

(declare-fun b!2389411 () Bool)

(declare-fun e!1523245 () Bool)

(declare-fun tp!761851 () Bool)

(declare-fun tp!761849 () Bool)

(assert (=> b!2389411 (= e!1523245 (and tp!761851 tp!761849))))

(declare-fun b!2389408 () Bool)

(assert (=> b!2389408 (= e!1523245 tp_is_empty!11421)))

(assert (=> b!2388898 (= tp!761772 e!1523245)))

(declare-fun b!2389410 () Bool)

(declare-fun tp!761852 () Bool)

(assert (=> b!2389410 (= e!1523245 tp!761852)))

(declare-fun b!2389409 () Bool)

(declare-fun tp!761848 () Bool)

(declare-fun tp!761850 () Bool)

(assert (=> b!2389409 (= e!1523245 (and tp!761848 tp!761850))))

(assert (= (and b!2388898 (is-ElementMatch!7004 (reg!7333 r!13927))) b!2389408))

(assert (= (and b!2388898 (is-Concat!11640 (reg!7333 r!13927))) b!2389409))

(assert (= (and b!2388898 (is-Star!7004 (reg!7333 r!13927))) b!2389410))

(assert (= (and b!2388898 (is-Union!7004 (reg!7333 r!13927))) b!2389411))

(declare-fun b_lambda!74173 () Bool)

(assert (= b_lambda!74171 (or start!234426 b_lambda!74173)))

(declare-fun bs!462433 () Bool)

(declare-fun d!697913 () Bool)

(assert (= bs!462433 (and d!697913 start!234426)))

(assert (=> bs!462433 (= (dynLambda!12120 lambda!89396 (h!33550 l!9164)) (validRegex!2729 (h!33550 l!9164)))))

(declare-fun m!2789899 () Bool)

(assert (=> bs!462433 m!2789899))

(assert (=> b!2389312 d!697913))

(push 1)

(assert (not d!697863))

(assert (not d!697855))

(assert (not d!697895))

(assert (not d!697887))

(assert (not bm!145335))

(assert (not b!2389141))

(assert (not b!2389306))

(assert (not b!2389271))

(assert (not b!2389063))

(assert (not bm!145323))

(assert (not b!2389401))

(assert (not b!2389096))

(assert (not b!2389407))

(assert (not b!2389349))

(assert (not b!2389056))

(assert (not b!2389387))

(assert (not d!697873))

(assert (not b!2389139))

(assert (not d!697859))

(assert (not b!2389383))

(assert (not b!2389354))

(assert (not d!697841))

(assert (not b!2389098))

(assert (not b!2389359))

(assert (not d!697867))

(assert (not b!2389267))

(assert (not b!2389302))

(assert (not b!2389136))

(assert (not b!2389015))

(assert (not b!2389277))

(assert (not b!2389259))

(assert (not b!2389104))

(assert (not b!2389344))

(assert (not d!697903))

(assert tp_is_empty!11421)

(assert (not b!2389362))

(assert (not bm!145325))

(assert (not bm!145314))

(assert (not b!2389283))

(assert (not d!697845))

(assert (not b_lambda!74173))

(assert (not b!2389262))

(assert (not b!2389064))

(assert (not b!2389375))

(assert (not b!2389400))

(assert (not b!2389017))

(assert (not b!2389269))

(assert (not b!2389154))

(assert (not b!2389341))

(assert (not b!2389304))

(assert (not b!2389351))

(assert (not b!2389348))

(assert (not b!2389278))

(assert (not b!2389238))

(assert (not b!2389153))

(assert (not b!2389307))

(assert (not b!2389305))

(assert (not b!2389023))

(assert (not bm!145322))

(assert (not b!2389343))

(assert (not b!2389061))

(assert (not b!2389361))

(assert (not b!2389397))

(assert (not b!2389303))

(assert (not bm!145321))

(assert (not b!2389300))

(assert (not bm!145336))

(assert (not bs!462433))

(assert (not b!2389411))

(assert (not b!2389398))

(assert (not d!697877))

(assert (not b!2389313))

(assert (not b!2389103))

(assert (not b!2389100))

(assert (not b!2389236))

(assert (not b!2389065))

(assert (not b!2389143))

(assert (not d!697907))

(assert (not b!2389382))

(assert (not b!2389394))

(assert (not b!2389279))

(assert (not d!697857))

(assert (not d!697849))

(assert (not b!2389396))

(assert (not d!697839))

(assert (not b!2389270))

(assert (not d!697885))

(assert (not b!2389381))

(assert (not b!2389257))

(assert (not b!2389410))

(assert (not b!2389409))

(assert (not b!2389335))

(assert (not b!2389376))

(assert (not b!2389239))

(assert (not b!2389224))

(assert (not b!2389140))

(assert (not d!697861))

(assert (not d!697905))

(assert (not b!2389228))

(assert (not b!2389402))

(assert (not b!2389388))

(assert (not b!2389099))

(assert (not b!2389231))

(assert (not bm!145333))

(assert (not b!2389363))

(assert (not b!2389240))

(assert (not b!2389019))

(assert (not b!2389142))

(assert (not b!2389053))

(assert (not d!697853))

(assert (not b!2389389))

(assert (not d!697891))

(assert (not b!2389282))

(assert (not d!697871))

(assert (not b!2389345))

(assert (not b!2389377))

(assert (not b!2389022))

(assert (not b!2389225))

(assert (not d!697889))

(assert (not b!2389138))

(assert (not d!697851))

(assert (not b!2389018))

(assert (not b!2389275))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

