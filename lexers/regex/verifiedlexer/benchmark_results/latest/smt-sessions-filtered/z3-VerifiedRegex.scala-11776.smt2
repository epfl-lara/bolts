; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664158 () Bool)

(assert start!664158)

(declare-fun b!6888076 () Bool)

(assert (=> b!6888076 true))

(assert (=> b!6888076 true))

(assert (=> b!6888076 true))

(declare-fun lambda!390298 () Int)

(declare-fun lambda!390297 () Int)

(assert (=> b!6888076 (not (= lambda!390298 lambda!390297))))

(assert (=> b!6888076 true))

(assert (=> b!6888076 true))

(assert (=> b!6888076 true))

(declare-fun bs!1839113 () Bool)

(declare-fun b!6888070 () Bool)

(assert (= bs!1839113 (and b!6888070 b!6888076)))

(declare-datatypes ((C!33868 0))(
  ( (C!33869 (val!26636 Int)) )
))
(declare-datatypes ((Regex!16799 0))(
  ( (ElementMatch!16799 (c!1280803 C!33868)) (Concat!25644 (regOne!34110 Regex!16799) (regTwo!34110 Regex!16799)) (EmptyExpr!16799) (Star!16799 (reg!17128 Regex!16799)) (EmptyLang!16799) (Union!16799 (regOne!34111 Regex!16799) (regTwo!34111 Regex!16799)) )
))
(declare-fun r1!6342 () Regex!16799)

(declare-fun r3!135 () Regex!16799)

(declare-fun lt!2462024 () Regex!16799)

(declare-fun lambda!390299 () Int)

(declare-fun r2!6280 () Regex!16799)

(declare-datatypes ((List!66556 0))(
  ( (Nil!66432) (Cons!66432 (h!72880 C!33868) (t!380299 List!66556)) )
))
(declare-datatypes ((tuple2!67344 0))(
  ( (tuple2!67345 (_1!36975 List!66556) (_2!36975 List!66556)) )
))
(declare-fun lt!2462010 () tuple2!67344)

(declare-fun s!14361 () List!66556)

(assert (=> bs!1839113 (= (and (= (_1!36975 lt!2462010) s!14361) (= r1!6342 lt!2462024) (= r2!6280 r3!135)) (= lambda!390299 lambda!390297))))

(assert (=> bs!1839113 (not (= lambda!390299 lambda!390298))))

(assert (=> b!6888070 true))

(assert (=> b!6888070 true))

(assert (=> b!6888070 true))

(declare-fun lambda!390300 () Int)

(assert (=> bs!1839113 (not (= lambda!390300 lambda!390297))))

(assert (=> bs!1839113 (= (and (= (_1!36975 lt!2462010) s!14361) (= r1!6342 lt!2462024) (= r2!6280 r3!135)) (= lambda!390300 lambda!390298))))

(assert (=> b!6888070 (not (= lambda!390300 lambda!390299))))

(assert (=> b!6888070 true))

(assert (=> b!6888070 true))

(assert (=> b!6888070 true))

(declare-fun bs!1839114 () Bool)

(declare-fun b!6888062 () Bool)

(assert (= bs!1839114 (and b!6888062 b!6888076)))

(declare-fun lambda!390301 () Int)

(declare-fun lt!2462011 () List!66556)

(assert (=> bs!1839114 (= (and (= lt!2462011 s!14361) (= r2!6280 lt!2462024)) (= lambda!390301 lambda!390297))))

(assert (=> bs!1839114 (not (= lambda!390301 lambda!390298))))

(declare-fun bs!1839115 () Bool)

(assert (= bs!1839115 (and b!6888062 b!6888070)))

(assert (=> bs!1839115 (= (and (= lt!2462011 (_1!36975 lt!2462010)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!390301 lambda!390299))))

(assert (=> bs!1839115 (not (= lambda!390301 lambda!390300))))

(assert (=> b!6888062 true))

(assert (=> b!6888062 true))

(assert (=> b!6888062 true))

(declare-fun lambda!390302 () Int)

(assert (=> bs!1839115 (not (= lambda!390302 lambda!390299))))

(assert (=> b!6888062 (not (= lambda!390302 lambda!390301))))

(assert (=> bs!1839115 (= (and (= lt!2462011 (_1!36975 lt!2462010)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!390302 lambda!390300))))

(assert (=> bs!1839114 (not (= lambda!390302 lambda!390297))))

(assert (=> bs!1839114 (= (and (= lt!2462011 s!14361) (= r2!6280 lt!2462024)) (= lambda!390302 lambda!390298))))

(assert (=> b!6888062 true))

(assert (=> b!6888062 true))

(assert (=> b!6888062 true))

(declare-fun b!6888054 () Bool)

(declare-fun e!4149876 () Bool)

(declare-fun tp_is_empty!42823 () Bool)

(assert (=> b!6888054 (= e!4149876 tp_is_empty!42823)))

(declare-fun b!6888055 () Bool)

(declare-fun tp!1895108 () Bool)

(declare-fun tp!1895106 () Bool)

(assert (=> b!6888055 (= e!4149876 (and tp!1895108 tp!1895106))))

(declare-fun b!6888056 () Bool)

(declare-fun e!4149873 () Bool)

(declare-fun tp!1895098 () Bool)

(declare-fun tp!1895101 () Bool)

(assert (=> b!6888056 (= e!4149873 (and tp!1895098 tp!1895101))))

(declare-fun b!6888057 () Bool)

(declare-fun tp!1895097 () Bool)

(declare-fun tp!1895107 () Bool)

(assert (=> b!6888057 (= e!4149873 (and tp!1895097 tp!1895107))))

(declare-fun b!6888058 () Bool)

(declare-fun e!4149871 () Bool)

(declare-fun tp!1895096 () Bool)

(assert (=> b!6888058 (= e!4149871 (and tp_is_empty!42823 tp!1895096))))

(declare-fun b!6888059 () Bool)

(declare-fun e!4149880 () Bool)

(declare-fun tp!1895102 () Bool)

(assert (=> b!6888059 (= e!4149880 tp!1895102)))

(declare-fun b!6888060 () Bool)

(declare-fun tp!1895111 () Bool)

(declare-fun tp!1895100 () Bool)

(assert (=> b!6888060 (= e!4149880 (and tp!1895111 tp!1895100))))

(declare-fun b!6888061 () Bool)

(declare-fun e!4149874 () Bool)

(declare-fun e!4149872 () Bool)

(assert (=> b!6888061 (= e!4149874 e!4149872)))

(declare-fun res!2808208 () Bool)

(assert (=> b!6888061 (=> res!2808208 e!4149872)))

(declare-fun lt!2462008 () List!66556)

(assert (=> b!6888061 (= res!2808208 (not (= lt!2462008 s!14361)))))

(declare-fun lt!2462003 () tuple2!67344)

(declare-fun ++!14878 (List!66556 List!66556) List!66556)

(assert (=> b!6888061 (= lt!2462008 (++!14878 (++!14878 (_1!36975 lt!2462003) (_2!36975 lt!2462003)) (_2!36975 lt!2462010)))))

(declare-fun matchRSpec!3862 (Regex!16799 List!66556) Bool)

(assert (=> b!6888061 (matchRSpec!3862 r2!6280 (_2!36975 lt!2462003))))

(declare-datatypes ((Unit!160318 0))(
  ( (Unit!160319) )
))
(declare-fun lt!2462009 () Unit!160318)

(declare-fun mainMatchTheorem!3862 (Regex!16799 List!66556) Unit!160318)

(assert (=> b!6888061 (= lt!2462009 (mainMatchTheorem!3862 r2!6280 (_2!36975 lt!2462003)))))

(assert (=> b!6888061 (matchRSpec!3862 r1!6342 (_1!36975 lt!2462003))))

(declare-fun lt!2462012 () Unit!160318)

(assert (=> b!6888061 (= lt!2462012 (mainMatchTheorem!3862 r1!6342 (_1!36975 lt!2462003)))))

(declare-fun res!2808200 () Bool)

(declare-fun e!4149877 () Bool)

(assert (=> start!664158 (=> (not res!2808200) (not e!4149877))))

(declare-fun validRegex!8507 (Regex!16799) Bool)

(assert (=> start!664158 (= res!2808200 (validRegex!8507 r1!6342))))

(assert (=> start!664158 e!4149877))

(assert (=> start!664158 e!4149876))

(assert (=> start!664158 e!4149873))

(assert (=> start!664158 e!4149880))

(assert (=> start!664158 e!4149871))

(declare-fun e!4149879 () Bool)

(assert (=> b!6888062 (= e!4149872 e!4149879)))

(declare-fun res!2808203 () Bool)

(assert (=> b!6888062 (=> res!2808203 e!4149879)))

(declare-fun lt!2462029 () Bool)

(assert (=> b!6888062 (= res!2808203 (not lt!2462029))))

(declare-fun lt!2462006 () Bool)

(assert (=> b!6888062 lt!2462006))

(declare-fun lt!2462025 () Unit!160318)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!46 (Regex!16799 Regex!16799 List!66556 List!66556 List!66556 List!66556 List!66556) Unit!160318)

(assert (=> b!6888062 (= lt!2462025 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!46 r2!6280 r3!135 (_2!36975 lt!2462003) (_2!36975 lt!2462010) lt!2462011 Nil!66432 lt!2462011))))

(declare-fun Exists!3811 (Int) Bool)

(assert (=> b!6888062 (= (Exists!3811 lambda!390301) (Exists!3811 lambda!390302))))

(declare-fun lt!2462019 () Unit!160318)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2290 (Regex!16799 Regex!16799 List!66556) Unit!160318)

(assert (=> b!6888062 (= lt!2462019 (lemmaExistCutMatchRandMatchRSpecEquivalent!2290 r2!6280 r3!135 lt!2462011))))

(assert (=> b!6888062 (= lt!2462006 (Exists!3811 lambda!390301))))

(declare-datatypes ((Option!16584 0))(
  ( (None!16583) (Some!16583 (v!52855 tuple2!67344)) )
))
(declare-fun isDefined!13287 (Option!16584) Bool)

(declare-fun findConcatSeparation!2998 (Regex!16799 Regex!16799 List!66556 List!66556 List!66556) Option!16584)

(assert (=> b!6888062 (= lt!2462006 (isDefined!13287 (findConcatSeparation!2998 r2!6280 r3!135 Nil!66432 lt!2462011 lt!2462011)))))

(declare-fun lt!2462018 () Unit!160318)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2762 (Regex!16799 Regex!16799 List!66556) Unit!160318)

(assert (=> b!6888062 (= lt!2462018 (lemmaFindConcatSeparationEquivalentToExists!2762 r2!6280 r3!135 lt!2462011))))

(declare-fun lt!2462026 () Regex!16799)

(assert (=> b!6888062 (= lt!2462029 (matchRSpec!3862 lt!2462026 lt!2462011))))

(declare-fun matchR!8944 (Regex!16799 List!66556) Bool)

(assert (=> b!6888062 (= lt!2462029 (matchR!8944 lt!2462026 lt!2462011))))

(declare-fun lt!2462015 () Unit!160318)

(assert (=> b!6888062 (= lt!2462015 (mainMatchTheorem!3862 lt!2462026 lt!2462011))))

(assert (=> b!6888062 (= lt!2462011 (++!14878 (_2!36975 lt!2462003) (_2!36975 lt!2462010)))))

(declare-fun b!6888063 () Bool)

(declare-fun tp!1895099 () Bool)

(declare-fun tp!1895109 () Bool)

(assert (=> b!6888063 (= e!4149876 (and tp!1895099 tp!1895109))))

(declare-fun b!6888064 () Bool)

(declare-fun e!4149870 () Bool)

(assert (=> b!6888064 (= e!4149870 true)))

(assert (=> b!6888064 (isDefined!13287 (findConcatSeparation!2998 r1!6342 lt!2462026 Nil!66432 s!14361 s!14361))))

(declare-fun lt!2462002 () Unit!160318)

(assert (=> b!6888064 (= lt!2462002 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!46 r1!6342 lt!2462026 (_1!36975 lt!2462003) lt!2462011 s!14361 Nil!66432 s!14361))))

(declare-fun b!6888065 () Bool)

(declare-fun res!2808198 () Bool)

(declare-fun e!4149875 () Bool)

(assert (=> b!6888065 (=> res!2808198 e!4149875)))

(assert (=> b!6888065 (= res!2808198 (not (matchR!8944 r3!135 (_2!36975 lt!2462010))))))

(declare-fun b!6888066 () Bool)

(declare-fun e!4149878 () Bool)

(assert (=> b!6888066 (= e!4149877 (not e!4149878))))

(declare-fun res!2808199 () Bool)

(assert (=> b!6888066 (=> res!2808199 e!4149878)))

(declare-fun lt!2462022 () Bool)

(assert (=> b!6888066 (= res!2808199 (not lt!2462022))))

(declare-fun lt!2462013 () Regex!16799)

(assert (=> b!6888066 (= (matchR!8944 lt!2462013 s!14361) (matchRSpec!3862 lt!2462013 s!14361))))

(declare-fun lt!2462014 () Unit!160318)

(assert (=> b!6888066 (= lt!2462014 (mainMatchTheorem!3862 lt!2462013 s!14361))))

(declare-fun lt!2462017 () Regex!16799)

(assert (=> b!6888066 (= lt!2462022 (matchRSpec!3862 lt!2462017 s!14361))))

(assert (=> b!6888066 (= lt!2462022 (matchR!8944 lt!2462017 s!14361))))

(declare-fun lt!2462021 () Unit!160318)

(assert (=> b!6888066 (= lt!2462021 (mainMatchTheorem!3862 lt!2462017 s!14361))))

(assert (=> b!6888066 (= lt!2462013 (Concat!25644 r1!6342 lt!2462026))))

(assert (=> b!6888066 (= lt!2462026 (Concat!25644 r2!6280 r3!135))))

(assert (=> b!6888066 (= lt!2462017 (Concat!25644 lt!2462024 r3!135))))

(assert (=> b!6888066 (= lt!2462024 (Concat!25644 r1!6342 r2!6280))))

(declare-fun b!6888067 () Bool)

(declare-fun tp!1895104 () Bool)

(assert (=> b!6888067 (= e!4149873 tp!1895104)))

(declare-fun b!6888068 () Bool)

(assert (=> b!6888068 (= e!4149879 e!4149870)))

(declare-fun res!2808207 () Bool)

(assert (=> b!6888068 (=> res!2808207 e!4149870)))

(declare-fun lt!2462016 () List!66556)

(assert (=> b!6888068 (= res!2808207 (not (= lt!2462016 s!14361)))))

(assert (=> b!6888068 (= lt!2462008 lt!2462016)))

(assert (=> b!6888068 (= lt!2462016 (++!14878 (_1!36975 lt!2462003) lt!2462011))))

(declare-fun lt!2462007 () Unit!160318)

(declare-fun lemmaConcatAssociativity!2970 (List!66556 List!66556 List!66556) Unit!160318)

(assert (=> b!6888068 (= lt!2462007 (lemmaConcatAssociativity!2970 (_1!36975 lt!2462003) (_2!36975 lt!2462003) (_2!36975 lt!2462010)))))

(declare-fun b!6888069 () Bool)

(declare-fun res!2808205 () Bool)

(assert (=> b!6888069 (=> res!2808205 e!4149874)))

(assert (=> b!6888069 (= res!2808205 (not (matchR!8944 r2!6280 (_2!36975 lt!2462003))))))

(assert (=> b!6888070 (= e!4149875 e!4149874)))

(declare-fun res!2808204 () Bool)

(assert (=> b!6888070 (=> res!2808204 e!4149874)))

(assert (=> b!6888070 (= res!2808204 (not (matchR!8944 r1!6342 (_1!36975 lt!2462003))))))

(declare-fun lt!2462020 () Option!16584)

(declare-fun get!23161 (Option!16584) tuple2!67344)

(assert (=> b!6888070 (= lt!2462003 (get!23161 lt!2462020))))

(assert (=> b!6888070 (= (Exists!3811 lambda!390299) (Exists!3811 lambda!390300))))

(declare-fun lt!2462028 () Unit!160318)

(assert (=> b!6888070 (= lt!2462028 (lemmaExistCutMatchRandMatchRSpecEquivalent!2290 r1!6342 r2!6280 (_1!36975 lt!2462010)))))

(assert (=> b!6888070 (= (isDefined!13287 lt!2462020) (Exists!3811 lambda!390299))))

(assert (=> b!6888070 (= lt!2462020 (findConcatSeparation!2998 r1!6342 r2!6280 Nil!66432 (_1!36975 lt!2462010) (_1!36975 lt!2462010)))))

(declare-fun lt!2462001 () Unit!160318)

(assert (=> b!6888070 (= lt!2462001 (lemmaFindConcatSeparationEquivalentToExists!2762 r1!6342 r2!6280 (_1!36975 lt!2462010)))))

(declare-fun b!6888071 () Bool)

(assert (=> b!6888071 (= e!4149880 tp_is_empty!42823)))

(declare-fun b!6888072 () Bool)

(declare-fun tp!1895110 () Bool)

(assert (=> b!6888072 (= e!4149876 tp!1895110)))

(declare-fun b!6888073 () Bool)

(declare-fun res!2808202 () Bool)

(assert (=> b!6888073 (=> (not res!2808202) (not e!4149877))))

(assert (=> b!6888073 (= res!2808202 (validRegex!8507 r3!135))))

(declare-fun b!6888074 () Bool)

(assert (=> b!6888074 (= e!4149873 tp_is_empty!42823)))

(declare-fun b!6888075 () Bool)

(declare-fun res!2808206 () Bool)

(assert (=> b!6888075 (=> (not res!2808206) (not e!4149877))))

(assert (=> b!6888075 (= res!2808206 (validRegex!8507 r2!6280))))

(assert (=> b!6888076 (= e!4149878 e!4149875)))

(declare-fun res!2808201 () Bool)

(assert (=> b!6888076 (=> res!2808201 e!4149875)))

(declare-fun lt!2462027 () Bool)

(assert (=> b!6888076 (= res!2808201 (not lt!2462027))))

(assert (=> b!6888076 (= lt!2462027 (matchRSpec!3862 lt!2462024 (_1!36975 lt!2462010)))))

(assert (=> b!6888076 (= lt!2462027 (matchR!8944 lt!2462024 (_1!36975 lt!2462010)))))

(declare-fun lt!2462004 () Unit!160318)

(assert (=> b!6888076 (= lt!2462004 (mainMatchTheorem!3862 lt!2462024 (_1!36975 lt!2462010)))))

(declare-fun lt!2462000 () Option!16584)

(assert (=> b!6888076 (= lt!2462010 (get!23161 lt!2462000))))

(assert (=> b!6888076 (= (Exists!3811 lambda!390297) (Exists!3811 lambda!390298))))

(declare-fun lt!2462023 () Unit!160318)

(assert (=> b!6888076 (= lt!2462023 (lemmaExistCutMatchRandMatchRSpecEquivalent!2290 lt!2462024 r3!135 s!14361))))

(assert (=> b!6888076 (= (isDefined!13287 lt!2462000) (Exists!3811 lambda!390297))))

(assert (=> b!6888076 (= lt!2462000 (findConcatSeparation!2998 lt!2462024 r3!135 Nil!66432 s!14361 s!14361))))

(declare-fun lt!2462005 () Unit!160318)

(assert (=> b!6888076 (= lt!2462005 (lemmaFindConcatSeparationEquivalentToExists!2762 lt!2462024 r3!135 s!14361))))

(declare-fun b!6888077 () Bool)

(declare-fun tp!1895103 () Bool)

(declare-fun tp!1895105 () Bool)

(assert (=> b!6888077 (= e!4149880 (and tp!1895103 tp!1895105))))

(assert (= (and start!664158 res!2808200) b!6888075))

(assert (= (and b!6888075 res!2808206) b!6888073))

(assert (= (and b!6888073 res!2808202) b!6888066))

(assert (= (and b!6888066 (not res!2808199)) b!6888076))

(assert (= (and b!6888076 (not res!2808201)) b!6888065))

(assert (= (and b!6888065 (not res!2808198)) b!6888070))

(assert (= (and b!6888070 (not res!2808204)) b!6888069))

(assert (= (and b!6888069 (not res!2808205)) b!6888061))

(assert (= (and b!6888061 (not res!2808208)) b!6888062))

(assert (= (and b!6888062 (not res!2808203)) b!6888068))

(assert (= (and b!6888068 (not res!2808207)) b!6888064))

(get-info :version)

(assert (= (and start!664158 ((_ is ElementMatch!16799) r1!6342)) b!6888054))

(assert (= (and start!664158 ((_ is Concat!25644) r1!6342)) b!6888055))

(assert (= (and start!664158 ((_ is Star!16799) r1!6342)) b!6888072))

(assert (= (and start!664158 ((_ is Union!16799) r1!6342)) b!6888063))

(assert (= (and start!664158 ((_ is ElementMatch!16799) r2!6280)) b!6888074))

(assert (= (and start!664158 ((_ is Concat!25644) r2!6280)) b!6888056))

(assert (= (and start!664158 ((_ is Star!16799) r2!6280)) b!6888067))

(assert (= (and start!664158 ((_ is Union!16799) r2!6280)) b!6888057))

(assert (= (and start!664158 ((_ is ElementMatch!16799) r3!135)) b!6888071))

(assert (= (and start!664158 ((_ is Concat!25644) r3!135)) b!6888060))

(assert (= (and start!664158 ((_ is Star!16799) r3!135)) b!6888059))

(assert (= (and start!664158 ((_ is Union!16799) r3!135)) b!6888077))

(assert (= (and start!664158 ((_ is Cons!66432) s!14361)) b!6888058))

(declare-fun m!7610590 () Bool)

(assert (=> b!6888075 m!7610590))

(declare-fun m!7610592 () Bool)

(assert (=> b!6888069 m!7610592))

(declare-fun m!7610594 () Bool)

(assert (=> start!664158 m!7610594))

(declare-fun m!7610596 () Bool)

(assert (=> b!6888070 m!7610596))

(declare-fun m!7610598 () Bool)

(assert (=> b!6888070 m!7610598))

(declare-fun m!7610600 () Bool)

(assert (=> b!6888070 m!7610600))

(declare-fun m!7610602 () Bool)

(assert (=> b!6888070 m!7610602))

(declare-fun m!7610604 () Bool)

(assert (=> b!6888070 m!7610604))

(declare-fun m!7610606 () Bool)

(assert (=> b!6888070 m!7610606))

(declare-fun m!7610608 () Bool)

(assert (=> b!6888070 m!7610608))

(declare-fun m!7610610 () Bool)

(assert (=> b!6888070 m!7610610))

(assert (=> b!6888070 m!7610602))

(declare-fun m!7610612 () Bool)

(assert (=> b!6888073 m!7610612))

(declare-fun m!7610614 () Bool)

(assert (=> b!6888065 m!7610614))

(declare-fun m!7610616 () Bool)

(assert (=> b!6888064 m!7610616))

(assert (=> b!6888064 m!7610616))

(declare-fun m!7610618 () Bool)

(assert (=> b!6888064 m!7610618))

(declare-fun m!7610620 () Bool)

(assert (=> b!6888064 m!7610620))

(declare-fun m!7610622 () Bool)

(assert (=> b!6888062 m!7610622))

(declare-fun m!7610624 () Bool)

(assert (=> b!6888062 m!7610624))

(declare-fun m!7610626 () Bool)

(assert (=> b!6888062 m!7610626))

(declare-fun m!7610628 () Bool)

(assert (=> b!6888062 m!7610628))

(declare-fun m!7610630 () Bool)

(assert (=> b!6888062 m!7610630))

(declare-fun m!7610632 () Bool)

(assert (=> b!6888062 m!7610632))

(declare-fun m!7610634 () Bool)

(assert (=> b!6888062 m!7610634))

(declare-fun m!7610636 () Bool)

(assert (=> b!6888062 m!7610636))

(declare-fun m!7610638 () Bool)

(assert (=> b!6888062 m!7610638))

(assert (=> b!6888062 m!7610622))

(declare-fun m!7610640 () Bool)

(assert (=> b!6888062 m!7610640))

(declare-fun m!7610642 () Bool)

(assert (=> b!6888062 m!7610642))

(assert (=> b!6888062 m!7610626))

(declare-fun m!7610644 () Bool)

(assert (=> b!6888066 m!7610644))

(declare-fun m!7610646 () Bool)

(assert (=> b!6888066 m!7610646))

(declare-fun m!7610648 () Bool)

(assert (=> b!6888066 m!7610648))

(declare-fun m!7610650 () Bool)

(assert (=> b!6888066 m!7610650))

(declare-fun m!7610652 () Bool)

(assert (=> b!6888066 m!7610652))

(declare-fun m!7610654 () Bool)

(assert (=> b!6888066 m!7610654))

(declare-fun m!7610656 () Bool)

(assert (=> b!6888061 m!7610656))

(declare-fun m!7610658 () Bool)

(assert (=> b!6888061 m!7610658))

(declare-fun m!7610660 () Bool)

(assert (=> b!6888061 m!7610660))

(declare-fun m!7610662 () Bool)

(assert (=> b!6888061 m!7610662))

(declare-fun m!7610664 () Bool)

(assert (=> b!6888061 m!7610664))

(assert (=> b!6888061 m!7610656))

(declare-fun m!7610666 () Bool)

(assert (=> b!6888061 m!7610666))

(declare-fun m!7610668 () Bool)

(assert (=> b!6888068 m!7610668))

(declare-fun m!7610670 () Bool)

(assert (=> b!6888068 m!7610670))

(declare-fun m!7610672 () Bool)

(assert (=> b!6888076 m!7610672))

(declare-fun m!7610674 () Bool)

(assert (=> b!6888076 m!7610674))

(declare-fun m!7610676 () Bool)

(assert (=> b!6888076 m!7610676))

(assert (=> b!6888076 m!7610676))

(declare-fun m!7610678 () Bool)

(assert (=> b!6888076 m!7610678))

(declare-fun m!7610680 () Bool)

(assert (=> b!6888076 m!7610680))

(declare-fun m!7610682 () Bool)

(assert (=> b!6888076 m!7610682))

(declare-fun m!7610684 () Bool)

(assert (=> b!6888076 m!7610684))

(declare-fun m!7610686 () Bool)

(assert (=> b!6888076 m!7610686))

(declare-fun m!7610688 () Bool)

(assert (=> b!6888076 m!7610688))

(declare-fun m!7610690 () Bool)

(assert (=> b!6888076 m!7610690))

(check-sat (not b!6888065) (not b!6888058) (not start!664158) (not b!6888059) (not b!6888055) (not b!6888073) (not b!6888072) tp_is_empty!42823 (not b!6888064) (not b!6888057) (not b!6888056) (not b!6888062) (not b!6888068) (not b!6888069) (not b!6888061) (not b!6888067) (not b!6888066) (not b!6888077) (not b!6888075) (not b!6888060) (not b!6888076) (not b!6888070) (not b!6888063))
(check-sat)
