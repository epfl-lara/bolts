; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!666638 () Bool)

(assert start!666638)

(declare-fun b!6942169 () Bool)

(assert (=> b!6942169 true))

(assert (=> b!6942169 true))

(assert (=> b!6942169 true))

(declare-fun lambda!395601 () Int)

(declare-fun lambda!395600 () Int)

(assert (=> b!6942169 (not (= lambda!395601 lambda!395600))))

(assert (=> b!6942169 true))

(assert (=> b!6942169 true))

(assert (=> b!6942169 true))

(declare-datatypes ((C!34208 0))(
  ( (C!34209 (val!26806 Int)) )
))
(declare-datatypes ((List!66722 0))(
  ( (Nil!66598) (Cons!66598 (h!73046 C!34208) (t!380465 List!66722)) )
))
(declare-datatypes ((tuple2!67652 0))(
  ( (tuple2!67653 (_1!37129 List!66722) (_2!37129 List!66722)) )
))
(declare-fun lt!2476191 () tuple2!67652)

(declare-datatypes ((Regex!16969 0))(
  ( (ElementMatch!16969 (c!1288085 C!34208)) (Concat!25814 (regOne!34450 Regex!16969) (regTwo!34450 Regex!16969)) (EmptyExpr!16969) (Star!16969 (reg!17298 Regex!16969)) (EmptyLang!16969) (Union!16969 (regOne!34451 Regex!16969) (regTwo!34451 Regex!16969)) )
))
(declare-fun r1!6342 () Regex!16969)

(declare-fun r3!135 () Regex!16969)

(declare-fun r2!6280 () Regex!16969)

(declare-fun lambda!395602 () Int)

(declare-fun s!14361 () List!66722)

(declare-fun lt!2476186 () Regex!16969)

(assert (=> b!6942169 (= (and (= (_2!37129 lt!2476191) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2476186)) (= lambda!395602 lambda!395600))))

(assert (=> b!6942169 (not (= lambda!395602 lambda!395601))))

(assert (=> b!6942169 true))

(assert (=> b!6942169 true))

(assert (=> b!6942169 true))

(declare-fun lambda!395603 () Int)

(assert (=> b!6942169 (not (= lambda!395603 lambda!395600))))

(assert (=> b!6942169 (= (and (= (_2!37129 lt!2476191) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2476186)) (= lambda!395603 lambda!395601))))

(assert (=> b!6942169 (not (= lambda!395603 lambda!395602))))

(assert (=> b!6942169 true))

(assert (=> b!6942169 true))

(assert (=> b!6942169 true))

(declare-fun lambda!395604 () Int)

(declare-fun lt!2476195 () List!66722)

(assert (=> b!6942169 (= (and (= lt!2476195 s!14361) (= r2!6280 lt!2476186)) (= lambda!395604 lambda!395600))))

(assert (=> b!6942169 (not (= lambda!395604 lambda!395601))))

(assert (=> b!6942169 (= (and (= lt!2476195 (_2!37129 lt!2476191)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395604 lambda!395602))))

(assert (=> b!6942169 (not (= lambda!395604 lambda!395603))))

(assert (=> b!6942169 true))

(assert (=> b!6942169 true))

(assert (=> b!6942169 true))

(declare-fun lambda!395605 () Int)

(assert (=> b!6942169 (= (and (= lt!2476195 s!14361) (= r2!6280 lt!2476186)) (= lambda!395605 lambda!395601))))

(assert (=> b!6942169 (not (= lambda!395605 lambda!395602))))

(assert (=> b!6942169 (not (= lambda!395605 lambda!395604))))

(assert (=> b!6942169 (not (= lambda!395605 lambda!395600))))

(assert (=> b!6942169 (= (and (= lt!2476195 (_2!37129 lt!2476191)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395605 lambda!395603))))

(assert (=> b!6942169 true))

(assert (=> b!6942169 true))

(assert (=> b!6942169 true))

(declare-fun lambda!395606 () Int)

(assert (=> b!6942169 (not (= lambda!395606 lambda!395601))))

(assert (=> b!6942169 (not (= lambda!395606 lambda!395605))))

(declare-fun lt!2476193 () Regex!16969)

(assert (=> b!6942169 (= (and (= s!14361 (_2!37129 lt!2476191)) (= lt!2476193 r2!6280)) (= lambda!395606 lambda!395602))))

(assert (=> b!6942169 (= (and (= s!14361 lt!2476195) (= lt!2476193 r1!6342) (= r3!135 r2!6280)) (= lambda!395606 lambda!395604))))

(assert (=> b!6942169 (= (and (= lt!2476193 r1!6342) (= r3!135 lt!2476186)) (= lambda!395606 lambda!395600))))

(assert (=> b!6942169 (not (= lambda!395606 lambda!395603))))

(assert (=> b!6942169 true))

(assert (=> b!6942169 true))

(assert (=> b!6942169 true))

(declare-fun b!6942161 () Bool)

(declare-fun e!4176121 () Bool)

(assert (=> b!6942161 (= e!4176121 true)))

(declare-datatypes ((Unit!160664 0))(
  ( (Unit!160665) )
))
(declare-fun lt!2476178 () Unit!160664)

(declare-fun e!4176119 () Unit!160664)

(assert (=> b!6942161 (= lt!2476178 e!4176119)))

(declare-fun c!1288084 () Bool)

(declare-datatypes ((Option!16738 0))(
  ( (None!16737) (Some!16737 (v!53009 tuple2!67652)) )
))
(declare-fun lt!2476183 () Option!16738)

(declare-fun isDefined!13439 (Option!16738) Bool)

(assert (=> b!6942161 (= c!1288084 (isDefined!13439 lt!2476183))))

(declare-fun findConcatSeparation!3152 (Regex!16969 Regex!16969 List!66722 List!66722 List!66722) Option!16738)

(assert (=> b!6942161 (= lt!2476183 (findConcatSeparation!3152 r1!6342 lt!2476186 Nil!66598 s!14361 s!14361))))

(declare-fun b!6942162 () Bool)

(declare-fun e!4176122 () Bool)

(declare-fun tp!1913553 () Bool)

(declare-fun tp!1913541 () Bool)

(assert (=> b!6942162 (= e!4176122 (and tp!1913553 tp!1913541))))

(declare-fun res!2831911 () Bool)

(declare-fun e!4176118 () Bool)

(assert (=> start!666638 (=> (not res!2831911) (not e!4176118))))

(declare-fun validRegex!8675 (Regex!16969) Bool)

(assert (=> start!666638 (= res!2831911 (validRegex!8675 r1!6342))))

(assert (=> start!666638 e!4176118))

(assert (=> start!666638 e!4176122))

(declare-fun e!4176116 () Bool)

(assert (=> start!666638 e!4176116))

(declare-fun e!4176117 () Bool)

(assert (=> start!666638 e!4176117))

(declare-fun e!4176120 () Bool)

(assert (=> start!666638 e!4176120))

(declare-fun b!6942163 () Bool)

(assert (=> b!6942163 (= e!4176118 (not e!4176121))))

(declare-fun res!2831912 () Bool)

(assert (=> b!6942163 (=> res!2831912 e!4176121)))

(declare-fun lt!2476177 () Bool)

(assert (=> b!6942163 (= res!2831912 lt!2476177)))

(declare-fun lt!2476175 () Regex!16969)

(declare-fun matchR!9108 (Regex!16969 List!66722) Bool)

(declare-fun matchRSpec!4026 (Regex!16969 List!66722) Bool)

(assert (=> b!6942163 (= (matchR!9108 lt!2476175 s!14361) (matchRSpec!4026 lt!2476175 s!14361))))

(declare-fun lt!2476190 () Unit!160664)

(declare-fun mainMatchTheorem!4026 (Regex!16969 List!66722) Unit!160664)

(assert (=> b!6942163 (= lt!2476190 (mainMatchTheorem!4026 lt!2476175 s!14361))))

(declare-fun lt!2476201 () Regex!16969)

(assert (=> b!6942163 (= lt!2476177 (matchRSpec!4026 lt!2476201 s!14361))))

(assert (=> b!6942163 (= lt!2476177 (matchR!9108 lt!2476201 s!14361))))

(declare-fun lt!2476181 () Unit!160664)

(assert (=> b!6942163 (= lt!2476181 (mainMatchTheorem!4026 lt!2476201 s!14361))))

(assert (=> b!6942163 (= lt!2476175 (Concat!25814 r1!6342 lt!2476186))))

(assert (=> b!6942163 (= lt!2476186 (Concat!25814 r2!6280 r3!135))))

(assert (=> b!6942163 (= lt!2476201 (Concat!25814 lt!2476193 r3!135))))

(assert (=> b!6942163 (= lt!2476193 (Concat!25814 r1!6342 r2!6280))))

(declare-fun b!6942164 () Bool)

(declare-fun tp_is_empty!43163 () Bool)

(declare-fun tp!1913547 () Bool)

(assert (=> b!6942164 (= e!4176120 (and tp_is_empty!43163 tp!1913547))))

(declare-fun b!6942165 () Bool)

(declare-fun tp!1913540 () Bool)

(declare-fun tp!1913548 () Bool)

(assert (=> b!6942165 (= e!4176116 (and tp!1913540 tp!1913548))))

(declare-fun b!6942166 () Bool)

(assert (=> b!6942166 (= e!4176122 tp_is_empty!43163)))

(declare-fun b!6942167 () Bool)

(assert (=> b!6942167 (= e!4176117 tp_is_empty!43163)))

(declare-fun b!6942168 () Bool)

(declare-fun tp!1913555 () Bool)

(assert (=> b!6942168 (= e!4176117 tp!1913555)))

(declare-fun Unit!160666 () Unit!160664)

(assert (=> b!6942169 (= e!4176119 Unit!160666)))

(declare-fun lt!2476197 () Unit!160664)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2910 (Regex!16969 Regex!16969 List!66722) Unit!160664)

(assert (=> b!6942169 (= lt!2476197 (lemmaFindConcatSeparationEquivalentToExists!2910 r1!6342 lt!2476186 s!14361))))

(declare-fun Exists!3969 (Int) Bool)

(assert (=> b!6942169 (Exists!3969 lambda!395600)))

(declare-fun lt!2476174 () Unit!160664)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2430 (Regex!16969 Regex!16969 List!66722) Unit!160664)

(assert (=> b!6942169 (= lt!2476174 (lemmaExistCutMatchRandMatchRSpecEquivalent!2430 r1!6342 lt!2476186 s!14361))))

(assert (=> b!6942169 (= (Exists!3969 lambda!395600) (Exists!3969 lambda!395601))))

(declare-fun get!23390 (Option!16738) tuple2!67652)

(assert (=> b!6942169 (= lt!2476191 (get!23390 lt!2476183))))

(declare-fun lt!2476187 () Unit!160664)

(assert (=> b!6942169 (= lt!2476187 (mainMatchTheorem!4026 r1!6342 (_1!37129 lt!2476191)))))

(assert (=> b!6942169 (= (matchR!9108 r1!6342 (_1!37129 lt!2476191)) (matchRSpec!4026 r1!6342 (_1!37129 lt!2476191)))))

(declare-fun lt!2476200 () Unit!160664)

(assert (=> b!6942169 (= lt!2476200 (mainMatchTheorem!4026 lt!2476186 (_2!37129 lt!2476191)))))

(assert (=> b!6942169 (= (matchR!9108 lt!2476186 (_2!37129 lt!2476191)) (matchRSpec!4026 lt!2476186 (_2!37129 lt!2476191)))))

(declare-fun lt!2476198 () Unit!160664)

(assert (=> b!6942169 (= lt!2476198 (lemmaFindConcatSeparationEquivalentToExists!2910 r2!6280 r3!135 (_2!37129 lt!2476191)))))

(declare-fun lt!2476192 () Option!16738)

(assert (=> b!6942169 (= lt!2476192 (findConcatSeparation!3152 r2!6280 r3!135 Nil!66598 (_2!37129 lt!2476191) (_2!37129 lt!2476191)))))

(assert (=> b!6942169 (= (isDefined!13439 lt!2476192) (Exists!3969 lambda!395602))))

(declare-fun lt!2476189 () Unit!160664)

(assert (=> b!6942169 (= lt!2476189 (lemmaExistCutMatchRandMatchRSpecEquivalent!2430 r2!6280 r3!135 (_2!37129 lt!2476191)))))

(assert (=> b!6942169 (= (Exists!3969 lambda!395602) (Exists!3969 lambda!395603))))

(declare-fun lt!2476194 () tuple2!67652)

(assert (=> b!6942169 (= lt!2476194 (get!23390 lt!2476192))))

(declare-fun lt!2476188 () Unit!160664)

(assert (=> b!6942169 (= lt!2476188 (mainMatchTheorem!4026 r2!6280 (_1!37129 lt!2476194)))))

(assert (=> b!6942169 (= (matchR!9108 r2!6280 (_1!37129 lt!2476194)) (matchRSpec!4026 r2!6280 (_1!37129 lt!2476194)))))

(declare-fun lt!2476172 () Unit!160664)

(assert (=> b!6942169 (= lt!2476172 (mainMatchTheorem!4026 r3!135 (_2!37129 lt!2476194)))))

(assert (=> b!6942169 (= (matchR!9108 r3!135 (_2!37129 lt!2476194)) (matchRSpec!4026 r3!135 (_2!37129 lt!2476194)))))

(declare-fun lt!2476180 () Unit!160664)

(declare-fun lemmaConcatAssociativity!3050 (List!66722 List!66722 List!66722) Unit!160664)

(assert (=> b!6942169 (= lt!2476180 (lemmaConcatAssociativity!3050 (_1!37129 lt!2476191) (_1!37129 lt!2476194) (_2!37129 lt!2476194)))))

(declare-fun ++!15008 (List!66722 List!66722) List!66722)

(assert (=> b!6942169 (= lt!2476195 (++!15008 (_1!37129 lt!2476191) (_1!37129 lt!2476194)))))

(assert (=> b!6942169 (= (++!15008 lt!2476195 (_2!37129 lt!2476194)) (++!15008 (_1!37129 lt!2476191) (++!15008 (_1!37129 lt!2476194) (_2!37129 lt!2476194))))))

(declare-fun lt!2476199 () Unit!160664)

(assert (=> b!6942169 (= lt!2476199 (mainMatchTheorem!4026 lt!2476193 lt!2476195))))

(assert (=> b!6942169 (= (matchR!9108 lt!2476193 lt!2476195) (matchRSpec!4026 lt!2476193 lt!2476195))))

(declare-fun lt!2476173 () Unit!160664)

(assert (=> b!6942169 (= lt!2476173 (lemmaFindConcatSeparationEquivalentToExists!2910 r1!6342 r2!6280 lt!2476195))))

(declare-fun lt!2476196 () Bool)

(assert (=> b!6942169 (= lt!2476196 (isDefined!13439 (findConcatSeparation!3152 r1!6342 r2!6280 Nil!66598 lt!2476195 lt!2476195)))))

(assert (=> b!6942169 (= lt!2476196 (Exists!3969 lambda!395604))))

(declare-fun lt!2476185 () Unit!160664)

(assert (=> b!6942169 (= lt!2476185 (lemmaExistCutMatchRandMatchRSpecEquivalent!2430 r1!6342 r2!6280 lt!2476195))))

(assert (=> b!6942169 (= (Exists!3969 lambda!395604) (Exists!3969 lambda!395605))))

(declare-fun lt!2476184 () Unit!160664)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!112 (Regex!16969 Regex!16969 List!66722 List!66722 List!66722 List!66722 List!66722) Unit!160664)

(assert (=> b!6942169 (= lt!2476184 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!112 r1!6342 r2!6280 (_1!37129 lt!2476191) (_1!37129 lt!2476194) lt!2476195 Nil!66598 lt!2476195))))

(assert (=> b!6942169 lt!2476196))

(declare-fun lt!2476176 () Unit!160664)

(assert (=> b!6942169 (= lt!2476176 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!112 lt!2476193 r3!135 lt!2476195 (_2!37129 lt!2476194) s!14361 Nil!66598 s!14361))))

(assert (=> b!6942169 (isDefined!13439 (findConcatSeparation!3152 lt!2476193 r3!135 Nil!66598 s!14361 s!14361))))

(declare-fun lt!2476182 () Unit!160664)

(assert (=> b!6942169 (= lt!2476182 (lemmaFindConcatSeparationEquivalentToExists!2910 lt!2476193 r3!135 s!14361))))

(assert (=> b!6942169 (Exists!3969 lambda!395606)))

(declare-fun lt!2476179 () Unit!160664)

(assert (=> b!6942169 (= lt!2476179 (lemmaExistCutMatchRandMatchRSpecEquivalent!2430 lt!2476193 r3!135 s!14361))))

(assert (=> b!6942169 false))

(declare-fun b!6942170 () Bool)

(declare-fun tp!1913543 () Bool)

(assert (=> b!6942170 (= e!4176122 tp!1913543)))

(declare-fun b!6942171 () Bool)

(declare-fun res!2831909 () Bool)

(assert (=> b!6942171 (=> (not res!2831909) (not e!4176118))))

(assert (=> b!6942171 (= res!2831909 (validRegex!8675 r3!135))))

(declare-fun b!6942172 () Bool)

(declare-fun tp!1913544 () Bool)

(declare-fun tp!1913546 () Bool)

(assert (=> b!6942172 (= e!4176117 (and tp!1913544 tp!1913546))))

(declare-fun b!6942173 () Bool)

(declare-fun res!2831910 () Bool)

(assert (=> b!6942173 (=> (not res!2831910) (not e!4176118))))

(assert (=> b!6942173 (= res!2831910 (validRegex!8675 r2!6280))))

(declare-fun b!6942174 () Bool)

(assert (=> b!6942174 (= e!4176116 tp_is_empty!43163)))

(declare-fun b!6942175 () Bool)

(declare-fun tp!1913545 () Bool)

(declare-fun tp!1913554 () Bool)

(assert (=> b!6942175 (= e!4176116 (and tp!1913545 tp!1913554))))

(declare-fun b!6942176 () Bool)

(declare-fun tp!1913551 () Bool)

(declare-fun tp!1913549 () Bool)

(assert (=> b!6942176 (= e!4176122 (and tp!1913551 tp!1913549))))

(declare-fun b!6942177 () Bool)

(declare-fun tp!1913542 () Bool)

(declare-fun tp!1913552 () Bool)

(assert (=> b!6942177 (= e!4176117 (and tp!1913542 tp!1913552))))

(declare-fun b!6942178 () Bool)

(declare-fun tp!1913550 () Bool)

(assert (=> b!6942178 (= e!4176116 tp!1913550)))

(declare-fun b!6942179 () Bool)

(declare-fun Unit!160667 () Unit!160664)

(assert (=> b!6942179 (= e!4176119 Unit!160667)))

(assert (= (and start!666638 res!2831911) b!6942173))

(assert (= (and b!6942173 res!2831910) b!6942171))

(assert (= (and b!6942171 res!2831909) b!6942163))

(assert (= (and b!6942163 (not res!2831912)) b!6942161))

(assert (= (and b!6942161 c!1288084) b!6942169))

(assert (= (and b!6942161 (not c!1288084)) b!6942179))

(get-info :version)

(assert (= (and start!666638 ((_ is ElementMatch!16969) r1!6342)) b!6942166))

(assert (= (and start!666638 ((_ is Concat!25814) r1!6342)) b!6942176))

(assert (= (and start!666638 ((_ is Star!16969) r1!6342)) b!6942170))

(assert (= (and start!666638 ((_ is Union!16969) r1!6342)) b!6942162))

(assert (= (and start!666638 ((_ is ElementMatch!16969) r2!6280)) b!6942174))

(assert (= (and start!666638 ((_ is Concat!25814) r2!6280)) b!6942175))

(assert (= (and start!666638 ((_ is Star!16969) r2!6280)) b!6942178))

(assert (= (and start!666638 ((_ is Union!16969) r2!6280)) b!6942165))

(assert (= (and start!666638 ((_ is ElementMatch!16969) r3!135)) b!6942167))

(assert (= (and start!666638 ((_ is Concat!25814) r3!135)) b!6942172))

(assert (= (and start!666638 ((_ is Star!16969) r3!135)) b!6942168))

(assert (= (and start!666638 ((_ is Union!16969) r3!135)) b!6942177))

(assert (= (and start!666638 ((_ is Cons!66598) s!14361)) b!6942164))

(declare-fun m!7646996 () Bool)

(assert (=> b!6942171 m!7646996))

(declare-fun m!7646998 () Bool)

(assert (=> b!6942161 m!7646998))

(declare-fun m!7647000 () Bool)

(assert (=> b!6942161 m!7647000))

(declare-fun m!7647002 () Bool)

(assert (=> b!6942173 m!7647002))

(declare-fun m!7647004 () Bool)

(assert (=> b!6942169 m!7647004))

(declare-fun m!7647006 () Bool)

(assert (=> b!6942169 m!7647006))

(declare-fun m!7647008 () Bool)

(assert (=> b!6942169 m!7647008))

(declare-fun m!7647010 () Bool)

(assert (=> b!6942169 m!7647010))

(declare-fun m!7647012 () Bool)

(assert (=> b!6942169 m!7647012))

(declare-fun m!7647014 () Bool)

(assert (=> b!6942169 m!7647014))

(declare-fun m!7647016 () Bool)

(assert (=> b!6942169 m!7647016))

(declare-fun m!7647018 () Bool)

(assert (=> b!6942169 m!7647018))

(declare-fun m!7647020 () Bool)

(assert (=> b!6942169 m!7647020))

(declare-fun m!7647022 () Bool)

(assert (=> b!6942169 m!7647022))

(declare-fun m!7647024 () Bool)

(assert (=> b!6942169 m!7647024))

(declare-fun m!7647026 () Bool)

(assert (=> b!6942169 m!7647026))

(declare-fun m!7647028 () Bool)

(assert (=> b!6942169 m!7647028))

(declare-fun m!7647030 () Bool)

(assert (=> b!6942169 m!7647030))

(declare-fun m!7647032 () Bool)

(assert (=> b!6942169 m!7647032))

(declare-fun m!7647034 () Bool)

(assert (=> b!6942169 m!7647034))

(declare-fun m!7647036 () Bool)

(assert (=> b!6942169 m!7647036))

(declare-fun m!7647038 () Bool)

(assert (=> b!6942169 m!7647038))

(assert (=> b!6942169 m!7647032))

(declare-fun m!7647040 () Bool)

(assert (=> b!6942169 m!7647040))

(declare-fun m!7647042 () Bool)

(assert (=> b!6942169 m!7647042))

(assert (=> b!6942169 m!7647022))

(declare-fun m!7647044 () Bool)

(assert (=> b!6942169 m!7647044))

(declare-fun m!7647046 () Bool)

(assert (=> b!6942169 m!7647046))

(declare-fun m!7647048 () Bool)

(assert (=> b!6942169 m!7647048))

(declare-fun m!7647050 () Bool)

(assert (=> b!6942169 m!7647050))

(declare-fun m!7647052 () Bool)

(assert (=> b!6942169 m!7647052))

(declare-fun m!7647054 () Bool)

(assert (=> b!6942169 m!7647054))

(declare-fun m!7647056 () Bool)

(assert (=> b!6942169 m!7647056))

(declare-fun m!7647058 () Bool)

(assert (=> b!6942169 m!7647058))

(declare-fun m!7647060 () Bool)

(assert (=> b!6942169 m!7647060))

(assert (=> b!6942169 m!7647020))

(declare-fun m!7647062 () Bool)

(assert (=> b!6942169 m!7647062))

(declare-fun m!7647064 () Bool)

(assert (=> b!6942169 m!7647064))

(declare-fun m!7647066 () Bool)

(assert (=> b!6942169 m!7647066))

(declare-fun m!7647068 () Bool)

(assert (=> b!6942169 m!7647068))

(declare-fun m!7647070 () Bool)

(assert (=> b!6942169 m!7647070))

(assert (=> b!6942169 m!7647050))

(declare-fun m!7647072 () Bool)

(assert (=> b!6942169 m!7647072))

(declare-fun m!7647074 () Bool)

(assert (=> b!6942169 m!7647074))

(assert (=> b!6942169 m!7647046))

(declare-fun m!7647076 () Bool)

(assert (=> b!6942169 m!7647076))

(assert (=> b!6942169 m!7647060))

(declare-fun m!7647078 () Bool)

(assert (=> b!6942169 m!7647078))

(declare-fun m!7647080 () Bool)

(assert (=> b!6942169 m!7647080))

(declare-fun m!7647082 () Bool)

(assert (=> b!6942169 m!7647082))

(declare-fun m!7647084 () Bool)

(assert (=> b!6942169 m!7647084))

(declare-fun m!7647086 () Bool)

(assert (=> b!6942169 m!7647086))

(declare-fun m!7647088 () Bool)

(assert (=> b!6942169 m!7647088))

(declare-fun m!7647090 () Bool)

(assert (=> b!6942169 m!7647090))

(declare-fun m!7647092 () Bool)

(assert (=> b!6942169 m!7647092))

(declare-fun m!7647094 () Bool)

(assert (=> start!666638 m!7647094))

(declare-fun m!7647096 () Bool)

(assert (=> b!6942163 m!7647096))

(declare-fun m!7647098 () Bool)

(assert (=> b!6942163 m!7647098))

(declare-fun m!7647100 () Bool)

(assert (=> b!6942163 m!7647100))

(declare-fun m!7647102 () Bool)

(assert (=> b!6942163 m!7647102))

(declare-fun m!7647104 () Bool)

(assert (=> b!6942163 m!7647104))

(declare-fun m!7647106 () Bool)

(assert (=> b!6942163 m!7647106))

(check-sat (not b!6942176) (not b!6942163) (not start!666638) (not b!6942164) (not b!6942171) (not b!6942161) (not b!6942165) (not b!6942172) (not b!6942177) (not b!6942173) (not b!6942170) tp_is_empty!43163 (not b!6942162) (not b!6942169) (not b!6942178) (not b!6942175) (not b!6942168))
(check-sat)
