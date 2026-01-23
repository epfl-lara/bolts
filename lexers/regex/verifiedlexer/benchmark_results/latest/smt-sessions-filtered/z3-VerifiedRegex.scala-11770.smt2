; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664086 () Bool)

(assert start!664086)

(declare-fun b!6885900 () Bool)

(assert (=> b!6885900 true))

(assert (=> b!6885900 true))

(assert (=> b!6885900 true))

(declare-fun lambda!389976 () Int)

(declare-fun lambda!389975 () Int)

(assert (=> b!6885900 (not (= lambda!389976 lambda!389975))))

(assert (=> b!6885900 true))

(assert (=> b!6885900 true))

(assert (=> b!6885900 true))

(declare-fun bs!1838613 () Bool)

(declare-fun b!6885913 () Bool)

(assert (= bs!1838613 (and b!6885913 b!6885900)))

(declare-datatypes ((C!33844 0))(
  ( (C!33845 (val!26624 Int)) )
))
(declare-datatypes ((List!66544 0))(
  ( (Nil!66420) (Cons!66420 (h!72868 C!33844) (t!380287 List!66544)) )
))
(declare-datatypes ((tuple2!67320 0))(
  ( (tuple2!67321 (_1!36963 List!66544) (_2!36963 List!66544)) )
))
(declare-fun lt!2461011 () tuple2!67320)

(declare-datatypes ((Regex!16787 0))(
  ( (ElementMatch!16787 (c!1280619 C!33844)) (Concat!25632 (regOne!34086 Regex!16787) (regTwo!34086 Regex!16787)) (EmptyExpr!16787) (Star!16787 (reg!17116 Regex!16787)) (EmptyLang!16787) (Union!16787 (regOne!34087 Regex!16787) (regTwo!34087 Regex!16787)) )
))
(declare-fun lt!2461016 () Regex!16787)

(declare-fun r3!135 () Regex!16787)

(declare-fun s!14361 () List!66544)

(declare-fun lambda!389977 () Int)

(declare-fun r2!6280 () Regex!16787)

(declare-fun r1!6342 () Regex!16787)

(assert (=> bs!1838613 (= (and (= (_1!36963 lt!2461011) s!14361) (= r1!6342 lt!2461016) (= r2!6280 r3!135)) (= lambda!389977 lambda!389975))))

(assert (=> bs!1838613 (not (= lambda!389977 lambda!389976))))

(assert (=> b!6885913 true))

(assert (=> b!6885913 true))

(assert (=> b!6885913 true))

(declare-fun lambda!389978 () Int)

(assert (=> bs!1838613 (not (= lambda!389978 lambda!389975))))

(assert (=> bs!1838613 (= (and (= (_1!36963 lt!2461011) s!14361) (= r1!6342 lt!2461016) (= r2!6280 r3!135)) (= lambda!389978 lambda!389976))))

(assert (=> b!6885913 (not (= lambda!389978 lambda!389977))))

(assert (=> b!6885913 true))

(assert (=> b!6885913 true))

(assert (=> b!6885913 true))

(declare-fun b!6885899 () Bool)

(declare-fun res!2807077 () Bool)

(declare-fun e!4148870 () Bool)

(assert (=> b!6885899 (=> (not res!2807077) (not e!4148870))))

(declare-fun validRegex!8495 (Regex!16787) Bool)

(assert (=> b!6885899 (= res!2807077 (validRegex!8495 r3!135))))

(declare-fun e!4148872 () Bool)

(declare-fun e!4148874 () Bool)

(assert (=> b!6885900 (= e!4148872 e!4148874)))

(declare-fun res!2807081 () Bool)

(assert (=> b!6885900 (=> res!2807081 e!4148874)))

(declare-fun lt!2461001 () Bool)

(assert (=> b!6885900 (= res!2807081 (not lt!2461001))))

(declare-fun matchRSpec!3850 (Regex!16787 List!66544) Bool)

(assert (=> b!6885900 (= lt!2461001 (matchRSpec!3850 lt!2461016 (_1!36963 lt!2461011)))))

(declare-fun matchR!8932 (Regex!16787 List!66544) Bool)

(assert (=> b!6885900 (= lt!2461001 (matchR!8932 lt!2461016 (_1!36963 lt!2461011)))))

(declare-datatypes ((Unit!160294 0))(
  ( (Unit!160295) )
))
(declare-fun lt!2461017 () Unit!160294)

(declare-fun mainMatchTheorem!3850 (Regex!16787 List!66544) Unit!160294)

(assert (=> b!6885900 (= lt!2461017 (mainMatchTheorem!3850 lt!2461016 (_1!36963 lt!2461011)))))

(declare-datatypes ((Option!16572 0))(
  ( (None!16571) (Some!16571 (v!52843 tuple2!67320)) )
))
(declare-fun lt!2461015 () Option!16572)

(declare-fun get!23143 (Option!16572) tuple2!67320)

(assert (=> b!6885900 (= lt!2461011 (get!23143 lt!2461015))))

(declare-fun Exists!3799 (Int) Bool)

(assert (=> b!6885900 (= (Exists!3799 lambda!389975) (Exists!3799 lambda!389976))))

(declare-fun lt!2461013 () Unit!160294)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2278 (Regex!16787 Regex!16787 List!66544) Unit!160294)

(assert (=> b!6885900 (= lt!2461013 (lemmaExistCutMatchRandMatchRSpecEquivalent!2278 lt!2461016 r3!135 s!14361))))

(declare-fun isDefined!13275 (Option!16572) Bool)

(assert (=> b!6885900 (= (isDefined!13275 lt!2461015) (Exists!3799 lambda!389975))))

(declare-fun findConcatSeparation!2986 (Regex!16787 Regex!16787 List!66544 List!66544 List!66544) Option!16572)

(assert (=> b!6885900 (= lt!2461015 (findConcatSeparation!2986 lt!2461016 r3!135 Nil!66420 s!14361 s!14361))))

(declare-fun lt!2461002 () Unit!160294)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2750 (Regex!16787 Regex!16787 List!66544) Unit!160294)

(assert (=> b!6885900 (= lt!2461002 (lemmaFindConcatSeparationEquivalentToExists!2750 lt!2461016 r3!135 s!14361))))

(declare-fun b!6885901 () Bool)

(declare-fun res!2807082 () Bool)

(assert (=> b!6885901 (=> res!2807082 e!4148874)))

(assert (=> b!6885901 (= res!2807082 (not (matchR!8932 r3!135 (_2!36963 lt!2461011))))))

(declare-fun b!6885902 () Bool)

(declare-fun e!4148878 () Bool)

(declare-fun tp!1894352 () Bool)

(assert (=> b!6885902 (= e!4148878 tp!1894352)))

(declare-fun b!6885903 () Bool)

(declare-fun e!4148877 () Bool)

(declare-fun tp!1894345 () Bool)

(declare-fun tp!1894346 () Bool)

(assert (=> b!6885903 (= e!4148877 (and tp!1894345 tp!1894346))))

(declare-fun b!6885904 () Bool)

(declare-fun e!4148875 () Bool)

(declare-fun tp!1894347 () Bool)

(declare-fun tp!1894356 () Bool)

(assert (=> b!6885904 (= e!4148875 (and tp!1894347 tp!1894356))))

(declare-fun b!6885905 () Bool)

(declare-fun e!4148876 () Bool)

(assert (=> b!6885905 (= e!4148876 true)))

(declare-fun lt!2461014 () List!66544)

(declare-fun lt!2461003 () tuple2!67320)

(declare-fun ++!14866 (List!66544 List!66544) List!66544)

(assert (=> b!6885905 (= lt!2461014 (++!14866 (_2!36963 lt!2461003) (_2!36963 lt!2461011)))))

(declare-fun b!6885906 () Bool)

(declare-fun tp!1894354 () Bool)

(declare-fun tp!1894348 () Bool)

(assert (=> b!6885906 (= e!4148875 (and tp!1894354 tp!1894348))))

(declare-fun b!6885907 () Bool)

(declare-fun tp_is_empty!42799 () Bool)

(assert (=> b!6885907 (= e!4148875 tp_is_empty!42799)))

(declare-fun b!6885898 () Bool)

(assert (=> b!6885898 (= e!4148878 tp_is_empty!42799)))

(declare-fun res!2807083 () Bool)

(assert (=> start!664086 (=> (not res!2807083) (not e!4148870))))

(assert (=> start!664086 (= res!2807083 (validRegex!8495 r1!6342))))

(assert (=> start!664086 e!4148870))

(assert (=> start!664086 e!4148878))

(assert (=> start!664086 e!4148877))

(assert (=> start!664086 e!4148875))

(declare-fun e!4148873 () Bool)

(assert (=> start!664086 e!4148873))

(declare-fun b!6885908 () Bool)

(declare-fun tp!1894355 () Bool)

(declare-fun tp!1894344 () Bool)

(assert (=> b!6885908 (= e!4148877 (and tp!1894355 tp!1894344))))

(declare-fun b!6885909 () Bool)

(declare-fun res!2807080 () Bool)

(assert (=> b!6885909 (=> (not res!2807080) (not e!4148870))))

(assert (=> b!6885909 (= res!2807080 (validRegex!8495 r2!6280))))

(declare-fun b!6885910 () Bool)

(declare-fun tp!1894353 () Bool)

(declare-fun tp!1894351 () Bool)

(assert (=> b!6885910 (= e!4148878 (and tp!1894353 tp!1894351))))

(declare-fun b!6885911 () Bool)

(declare-fun tp!1894358 () Bool)

(assert (=> b!6885911 (= e!4148875 tp!1894358)))

(declare-fun b!6885912 () Bool)

(declare-fun e!4148871 () Bool)

(assert (=> b!6885912 (= e!4148871 e!4148876)))

(declare-fun res!2807078 () Bool)

(assert (=> b!6885912 (=> res!2807078 e!4148876)))

(assert (=> b!6885912 (= res!2807078 (not (= (++!14866 (++!14866 (_1!36963 lt!2461003) (_2!36963 lt!2461003)) (_2!36963 lt!2461011)) s!14361)))))

(assert (=> b!6885912 (matchRSpec!3850 r2!6280 (_2!36963 lt!2461003))))

(declare-fun lt!2461004 () Unit!160294)

(assert (=> b!6885912 (= lt!2461004 (mainMatchTheorem!3850 r2!6280 (_2!36963 lt!2461003)))))

(assert (=> b!6885912 (matchRSpec!3850 r1!6342 (_1!36963 lt!2461003))))

(declare-fun lt!2461007 () Unit!160294)

(assert (=> b!6885912 (= lt!2461007 (mainMatchTheorem!3850 r1!6342 (_1!36963 lt!2461003)))))

(assert (=> b!6885913 (= e!4148874 e!4148871)))

(declare-fun res!2807079 () Bool)

(assert (=> b!6885913 (=> res!2807079 e!4148871)))

(assert (=> b!6885913 (= res!2807079 (not (matchR!8932 r1!6342 (_1!36963 lt!2461003))))))

(declare-fun lt!2461008 () Option!16572)

(assert (=> b!6885913 (= lt!2461003 (get!23143 lt!2461008))))

(assert (=> b!6885913 (= (Exists!3799 lambda!389977) (Exists!3799 lambda!389978))))

(declare-fun lt!2460999 () Unit!160294)

(assert (=> b!6885913 (= lt!2460999 (lemmaExistCutMatchRandMatchRSpecEquivalent!2278 r1!6342 r2!6280 (_1!36963 lt!2461011)))))

(assert (=> b!6885913 (= (isDefined!13275 lt!2461008) (Exists!3799 lambda!389977))))

(assert (=> b!6885913 (= lt!2461008 (findConcatSeparation!2986 r1!6342 r2!6280 Nil!66420 (_1!36963 lt!2461011) (_1!36963 lt!2461011)))))

(declare-fun lt!2461006 () Unit!160294)

(assert (=> b!6885913 (= lt!2461006 (lemmaFindConcatSeparationEquivalentToExists!2750 r1!6342 r2!6280 (_1!36963 lt!2461011)))))

(declare-fun b!6885914 () Bool)

(declare-fun res!2807076 () Bool)

(assert (=> b!6885914 (=> res!2807076 e!4148871)))

(assert (=> b!6885914 (= res!2807076 (not (matchR!8932 r2!6280 (_2!36963 lt!2461003))))))

(declare-fun b!6885915 () Bool)

(declare-fun tp!1894349 () Bool)

(declare-fun tp!1894350 () Bool)

(assert (=> b!6885915 (= e!4148878 (and tp!1894349 tp!1894350))))

(declare-fun b!6885916 () Bool)

(declare-fun tp!1894359 () Bool)

(assert (=> b!6885916 (= e!4148873 (and tp_is_empty!42799 tp!1894359))))

(declare-fun b!6885917 () Bool)

(assert (=> b!6885917 (= e!4148870 (not e!4148872))))

(declare-fun res!2807084 () Bool)

(assert (=> b!6885917 (=> res!2807084 e!4148872)))

(declare-fun lt!2461012 () Bool)

(assert (=> b!6885917 (= res!2807084 (not lt!2461012))))

(declare-fun lt!2461005 () Regex!16787)

(assert (=> b!6885917 (= (matchR!8932 lt!2461005 s!14361) (matchRSpec!3850 lt!2461005 s!14361))))

(declare-fun lt!2461010 () Unit!160294)

(assert (=> b!6885917 (= lt!2461010 (mainMatchTheorem!3850 lt!2461005 s!14361))))

(declare-fun lt!2461000 () Regex!16787)

(assert (=> b!6885917 (= lt!2461012 (matchRSpec!3850 lt!2461000 s!14361))))

(assert (=> b!6885917 (= lt!2461012 (matchR!8932 lt!2461000 s!14361))))

(declare-fun lt!2461009 () Unit!160294)

(assert (=> b!6885917 (= lt!2461009 (mainMatchTheorem!3850 lt!2461000 s!14361))))

(assert (=> b!6885917 (= lt!2461005 (Concat!25632 r1!6342 (Concat!25632 r2!6280 r3!135)))))

(assert (=> b!6885917 (= lt!2461000 (Concat!25632 lt!2461016 r3!135))))

(assert (=> b!6885917 (= lt!2461016 (Concat!25632 r1!6342 r2!6280))))

(declare-fun b!6885918 () Bool)

(declare-fun tp!1894357 () Bool)

(assert (=> b!6885918 (= e!4148877 tp!1894357)))

(declare-fun b!6885919 () Bool)

(assert (=> b!6885919 (= e!4148877 tp_is_empty!42799)))

(assert (= (and start!664086 res!2807083) b!6885909))

(assert (= (and b!6885909 res!2807080) b!6885899))

(assert (= (and b!6885899 res!2807077) b!6885917))

(assert (= (and b!6885917 (not res!2807084)) b!6885900))

(assert (= (and b!6885900 (not res!2807081)) b!6885901))

(assert (= (and b!6885901 (not res!2807082)) b!6885913))

(assert (= (and b!6885913 (not res!2807079)) b!6885914))

(assert (= (and b!6885914 (not res!2807076)) b!6885912))

(assert (= (and b!6885912 (not res!2807078)) b!6885905))

(get-info :version)

(assert (= (and start!664086 ((_ is ElementMatch!16787) r1!6342)) b!6885898))

(assert (= (and start!664086 ((_ is Concat!25632) r1!6342)) b!6885910))

(assert (= (and start!664086 ((_ is Star!16787) r1!6342)) b!6885902))

(assert (= (and start!664086 ((_ is Union!16787) r1!6342)) b!6885915))

(assert (= (and start!664086 ((_ is ElementMatch!16787) r2!6280)) b!6885919))

(assert (= (and start!664086 ((_ is Concat!25632) r2!6280)) b!6885903))

(assert (= (and start!664086 ((_ is Star!16787) r2!6280)) b!6885918))

(assert (= (and start!664086 ((_ is Union!16787) r2!6280)) b!6885908))

(assert (= (and start!664086 ((_ is ElementMatch!16787) r3!135)) b!6885907))

(assert (= (and start!664086 ((_ is Concat!25632) r3!135)) b!6885906))

(assert (= (and start!664086 ((_ is Star!16787) r3!135)) b!6885911))

(assert (= (and start!664086 ((_ is Union!16787) r3!135)) b!6885904))

(assert (= (and start!664086 ((_ is Cons!66420) s!14361)) b!6885916))

(declare-fun m!7608864 () Bool)

(assert (=> b!6885901 m!7608864))

(declare-fun m!7608866 () Bool)

(assert (=> b!6885912 m!7608866))

(declare-fun m!7608868 () Bool)

(assert (=> b!6885912 m!7608868))

(assert (=> b!6885912 m!7608868))

(declare-fun m!7608870 () Bool)

(assert (=> b!6885912 m!7608870))

(declare-fun m!7608872 () Bool)

(assert (=> b!6885912 m!7608872))

(declare-fun m!7608874 () Bool)

(assert (=> b!6885912 m!7608874))

(declare-fun m!7608876 () Bool)

(assert (=> b!6885912 m!7608876))

(declare-fun m!7608878 () Bool)

(assert (=> b!6885917 m!7608878))

(declare-fun m!7608880 () Bool)

(assert (=> b!6885917 m!7608880))

(declare-fun m!7608882 () Bool)

(assert (=> b!6885917 m!7608882))

(declare-fun m!7608884 () Bool)

(assert (=> b!6885917 m!7608884))

(declare-fun m!7608886 () Bool)

(assert (=> b!6885917 m!7608886))

(declare-fun m!7608888 () Bool)

(assert (=> b!6885917 m!7608888))

(declare-fun m!7608890 () Bool)

(assert (=> b!6885909 m!7608890))

(declare-fun m!7608892 () Bool)

(assert (=> b!6885900 m!7608892))

(declare-fun m!7608894 () Bool)

(assert (=> b!6885900 m!7608894))

(declare-fun m!7608896 () Bool)

(assert (=> b!6885900 m!7608896))

(declare-fun m!7608898 () Bool)

(assert (=> b!6885900 m!7608898))

(declare-fun m!7608900 () Bool)

(assert (=> b!6885900 m!7608900))

(declare-fun m!7608902 () Bool)

(assert (=> b!6885900 m!7608902))

(declare-fun m!7608904 () Bool)

(assert (=> b!6885900 m!7608904))

(declare-fun m!7608906 () Bool)

(assert (=> b!6885900 m!7608906))

(declare-fun m!7608908 () Bool)

(assert (=> b!6885900 m!7608908))

(assert (=> b!6885900 m!7608908))

(declare-fun m!7608910 () Bool)

(assert (=> b!6885900 m!7608910))

(declare-fun m!7608912 () Bool)

(assert (=> start!664086 m!7608912))

(declare-fun m!7608914 () Bool)

(assert (=> b!6885913 m!7608914))

(declare-fun m!7608916 () Bool)

(assert (=> b!6885913 m!7608916))

(declare-fun m!7608918 () Bool)

(assert (=> b!6885913 m!7608918))

(assert (=> b!6885913 m!7608916))

(declare-fun m!7608920 () Bool)

(assert (=> b!6885913 m!7608920))

(declare-fun m!7608922 () Bool)

(assert (=> b!6885913 m!7608922))

(declare-fun m!7608924 () Bool)

(assert (=> b!6885913 m!7608924))

(declare-fun m!7608926 () Bool)

(assert (=> b!6885913 m!7608926))

(declare-fun m!7608928 () Bool)

(assert (=> b!6885913 m!7608928))

(declare-fun m!7608930 () Bool)

(assert (=> b!6885905 m!7608930))

(declare-fun m!7608932 () Bool)

(assert (=> b!6885899 m!7608932))

(declare-fun m!7608934 () Bool)

(assert (=> b!6885914 m!7608934))

(check-sat (not b!6885910) (not b!6885900) (not b!6885915) (not b!6885918) (not start!664086) (not b!6885904) (not b!6885914) (not b!6885916) (not b!6885911) (not b!6885912) (not b!6885905) (not b!6885908) (not b!6885903) (not b!6885906) (not b!6885899) (not b!6885909) (not b!6885913) (not b!6885901) (not b!6885917) tp_is_empty!42799 (not b!6885902))
(check-sat)
