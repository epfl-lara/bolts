; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!735136 () Bool)

(assert start!735136)

(declare-fun b!7635270 () Bool)

(assert (=> b!7635270 true))

(assert (=> b!7635270 true))

(declare-fun bs!1944180 () Bool)

(declare-fun b!7635268 () Bool)

(assert (= bs!1944180 (and b!7635268 b!7635270)))

(declare-fun lambda!469341 () Int)

(declare-fun lambda!469340 () Int)

(assert (=> bs!1944180 (not (= lambda!469341 lambda!469340))))

(assert (=> b!7635268 true))

(assert (=> b!7635268 true))

(declare-fun b!7635265 () Bool)

(declare-fun e!4538940 () Bool)

(assert (=> b!7635265 (= e!4538940 true)))

(declare-fun lt!2659584 () Bool)

(assert (=> b!7635265 lt!2659584))

(declare-datatypes ((Unit!167788 0))(
  ( (Unit!167789) )
))
(declare-fun lt!2659580 () Unit!167788)

(declare-datatypes ((C!41144 0))(
  ( (C!41145 (val!31012 Int)) )
))
(declare-datatypes ((List!73260 0))(
  ( (Nil!73136) (Cons!73136 (h!79584 C!41144) (t!387995 List!73260)) )
))
(declare-fun s!9605 () List!73260)

(declare-datatypes ((tuple2!69376 0))(
  ( (tuple2!69377 (_1!37991 List!73260) (_2!37991 List!73260)) )
))
(declare-fun lt!2659587 () tuple2!69376)

(declare-datatypes ((Regex!20409 0))(
  ( (ElementMatch!20409 (c!1406474 C!41144)) (Concat!29254 (regOne!41330 Regex!20409) (regTwo!41330 Regex!20409)) (EmptyExpr!20409) (Star!20409 (reg!20738 Regex!20409)) (EmptyLang!20409) (Union!20409 (regOne!41331 Regex!20409) (regTwo!41331 Regex!20409)) )
))
(declare-fun r!14126 () Regex!20409)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!124 (Regex!20409 Regex!20409 List!73260 List!73260 List!73260 List!73260 List!73260) Unit!167788)

(assert (=> b!7635265 (= lt!2659580 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!124 (regOne!41330 r!14126) (regTwo!41330 r!14126) (_1!37991 lt!2659587) (_2!37991 lt!2659587) s!9605 Nil!73136 s!9605))))

(declare-fun matchR!9912 (Regex!20409 List!73260) Bool)

(declare-fun matchRSpec!4550 (Regex!20409 List!73260) Bool)

(assert (=> b!7635265 (= (matchR!9912 (regTwo!41330 r!14126) (_2!37991 lt!2659587)) (matchRSpec!4550 (regTwo!41330 r!14126) (_2!37991 lt!2659587)))))

(declare-fun lt!2659579 () Unit!167788)

(declare-fun mainMatchTheorem!4536 (Regex!20409 List!73260) Unit!167788)

(assert (=> b!7635265 (= lt!2659579 (mainMatchTheorem!4536 (regTwo!41330 r!14126) (_2!37991 lt!2659587)))))

(assert (=> b!7635265 (= (matchR!9912 (regOne!41330 r!14126) (_1!37991 lt!2659587)) (matchRSpec!4550 (regOne!41330 r!14126) (_1!37991 lt!2659587)))))

(declare-fun lt!2659585 () Unit!167788)

(assert (=> b!7635265 (= lt!2659585 (mainMatchTheorem!4536 (regOne!41330 r!14126) (_1!37991 lt!2659587)))))

(declare-fun pickWitness!480 (Int) tuple2!69376)

(assert (=> b!7635265 (= lt!2659587 (pickWitness!480 lambda!469341))))

(declare-fun res!3058042 () Bool)

(declare-fun e!4538935 () Bool)

(assert (=> start!735136 (=> (not res!3058042) (not e!4538935))))

(declare-fun validRegex!10827 (Regex!20409) Bool)

(assert (=> start!735136 (= res!3058042 (validRegex!10827 r!14126))))

(assert (=> start!735136 e!4538935))

(declare-fun e!4538939 () Bool)

(assert (=> start!735136 e!4538939))

(declare-fun e!4538938 () Bool)

(assert (=> start!735136 e!4538938))

(declare-fun b!7635266 () Bool)

(declare-fun e!4538937 () Bool)

(assert (=> b!7635266 (= e!4538937 false)))

(declare-fun b!7635267 () Bool)

(declare-fun res!3058039 () Bool)

(assert (=> b!7635267 (=> (not res!3058039) (not e!4538935))))

(get-info :version)

(assert (=> b!7635267 (= res!3058039 (and (not ((_ is EmptyExpr!20409) r!14126)) (not ((_ is EmptyLang!20409) r!14126)) (not ((_ is ElementMatch!20409) r!14126)) (not ((_ is Union!20409) r!14126)) (not ((_ is Star!20409) r!14126))))))

(declare-fun res!3058043 () Bool)

(assert (=> b!7635268 (=> res!3058043 e!4538940)))

(declare-fun Exists!4563 (Int) Bool)

(assert (=> b!7635268 (= res!3058043 (not (Exists!4563 lambda!469341)))))

(declare-fun b!7635269 () Bool)

(declare-fun tp!2229003 () Bool)

(assert (=> b!7635269 (= e!4538939 tp!2229003)))

(declare-fun e!4538936 () Bool)

(assert (=> b!7635270 (= e!4538935 (not e!4538936))))

(declare-fun res!3058041 () Bool)

(assert (=> b!7635270 (=> res!3058041 e!4538936)))

(assert (=> b!7635270 (= res!3058041 (matchR!9912 r!14126 s!9605))))

(assert (=> b!7635270 (= lt!2659584 (Exists!4563 lambda!469340))))

(declare-datatypes ((Option!17482 0))(
  ( (None!17481) (Some!17481 (v!54616 tuple2!69376)) )
))
(declare-fun lt!2659581 () Option!17482)

(declare-fun isDefined!14098 (Option!17482) Bool)

(assert (=> b!7635270 (= lt!2659584 (isDefined!14098 lt!2659581))))

(declare-fun findConcatSeparation!3512 (Regex!20409 Regex!20409 List!73260 List!73260 List!73260) Option!17482)

(assert (=> b!7635270 (= lt!2659581 (findConcatSeparation!3512 (regOne!41330 r!14126) (regTwo!41330 r!14126) Nil!73136 s!9605 s!9605))))

(declare-fun lt!2659583 () Unit!167788)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3270 (Regex!20409 Regex!20409 List!73260) Unit!167788)

(assert (=> b!7635270 (= lt!2659583 (lemmaFindConcatSeparationEquivalentToExists!3270 (regOne!41330 r!14126) (regTwo!41330 r!14126) s!9605))))

(declare-fun b!7635271 () Bool)

(declare-fun tp!2229001 () Bool)

(declare-fun tp!2229000 () Bool)

(assert (=> b!7635271 (= e!4538939 (and tp!2229001 tp!2229000))))

(declare-fun b!7635272 () Bool)

(declare-fun e!4538941 () Unit!167788)

(declare-fun Unit!167790 () Unit!167788)

(assert (=> b!7635272 (= e!4538941 Unit!167790)))

(declare-fun b!7635273 () Bool)

(declare-fun tp!2229005 () Bool)

(declare-fun tp!2229004 () Bool)

(assert (=> b!7635273 (= e!4538939 (and tp!2229005 tp!2229004))))

(declare-fun b!7635274 () Bool)

(declare-fun Unit!167791 () Unit!167788)

(assert (=> b!7635274 (= e!4538941 Unit!167791)))

(declare-fun lt!2659582 () tuple2!69376)

(declare-fun get!25878 (Option!17482) tuple2!69376)

(assert (=> b!7635274 (= lt!2659582 (get!25878 lt!2659581))))

(declare-fun lt!2659586 () Unit!167788)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!166 (Regex!20409 Regex!20409 List!73260 List!73260 List!73260) Unit!167788)

(assert (=> b!7635274 (= lt!2659586 (lemmaFindSeparationIsDefinedThenConcatMatches!166 (regOne!41330 r!14126) (regTwo!41330 r!14126) (_1!37991 lt!2659582) (_2!37991 lt!2659582) s!9605))))

(declare-fun res!3058044 () Bool)

(declare-fun ++!17689 (List!73260 List!73260) List!73260)

(assert (=> b!7635274 (= res!3058044 (matchR!9912 r!14126 (++!17689 (_1!37991 lt!2659582) (_2!37991 lt!2659582))))))

(assert (=> b!7635274 (=> (not res!3058044) (not e!4538937))))

(assert (=> b!7635274 e!4538937))

(declare-fun b!7635275 () Bool)

(declare-fun tp_is_empty!51173 () Bool)

(assert (=> b!7635275 (= e!4538939 tp_is_empty!51173)))

(declare-fun b!7635276 () Bool)

(declare-fun tp!2229002 () Bool)

(assert (=> b!7635276 (= e!4538938 (and tp_is_empty!51173 tp!2229002))))

(declare-fun b!7635277 () Bool)

(assert (=> b!7635277 (= e!4538936 e!4538940)))

(declare-fun res!3058040 () Bool)

(assert (=> b!7635277 (=> res!3058040 e!4538940)))

(assert (=> b!7635277 (= res!3058040 (Exists!4563 lambda!469340))))

(declare-fun lt!2659588 () Unit!167788)

(assert (=> b!7635277 (= lt!2659588 e!4538941)))

(declare-fun c!1406473 () Bool)

(assert (=> b!7635277 (= c!1406473 lt!2659584)))

(assert (= (and start!735136 res!3058042) b!7635267))

(assert (= (and b!7635267 res!3058039) b!7635270))

(assert (= (and b!7635270 (not res!3058041)) b!7635277))

(assert (= (and b!7635277 c!1406473) b!7635274))

(assert (= (and b!7635277 (not c!1406473)) b!7635272))

(assert (= (and b!7635274 res!3058044) b!7635266))

(assert (= (and b!7635277 (not res!3058040)) b!7635268))

(assert (= (and b!7635268 (not res!3058043)) b!7635265))

(assert (= (and start!735136 ((_ is ElementMatch!20409) r!14126)) b!7635275))

(assert (= (and start!735136 ((_ is Concat!29254) r!14126)) b!7635271))

(assert (= (and start!735136 ((_ is Star!20409) r!14126)) b!7635269))

(assert (= (and start!735136 ((_ is Union!20409) r!14126)) b!7635273))

(assert (= (and start!735136 ((_ is Cons!73136) s!9605)) b!7635276))

(declare-fun m!8160188 () Bool)

(assert (=> b!7635277 m!8160188))

(declare-fun m!8160190 () Bool)

(assert (=> b!7635265 m!8160190))

(declare-fun m!8160192 () Bool)

(assert (=> b!7635265 m!8160192))

(declare-fun m!8160194 () Bool)

(assert (=> b!7635265 m!8160194))

(declare-fun m!8160196 () Bool)

(assert (=> b!7635265 m!8160196))

(declare-fun m!8160198 () Bool)

(assert (=> b!7635265 m!8160198))

(declare-fun m!8160200 () Bool)

(assert (=> b!7635265 m!8160200))

(declare-fun m!8160202 () Bool)

(assert (=> b!7635265 m!8160202))

(declare-fun m!8160204 () Bool)

(assert (=> b!7635265 m!8160204))

(assert (=> b!7635270 m!8160188))

(declare-fun m!8160206 () Bool)

(assert (=> b!7635270 m!8160206))

(declare-fun m!8160208 () Bool)

(assert (=> b!7635270 m!8160208))

(declare-fun m!8160210 () Bool)

(assert (=> b!7635270 m!8160210))

(declare-fun m!8160212 () Bool)

(assert (=> b!7635270 m!8160212))

(declare-fun m!8160214 () Bool)

(assert (=> start!735136 m!8160214))

(declare-fun m!8160216 () Bool)

(assert (=> b!7635268 m!8160216))

(declare-fun m!8160218 () Bool)

(assert (=> b!7635274 m!8160218))

(declare-fun m!8160220 () Bool)

(assert (=> b!7635274 m!8160220))

(declare-fun m!8160222 () Bool)

(assert (=> b!7635274 m!8160222))

(assert (=> b!7635274 m!8160222))

(declare-fun m!8160224 () Bool)

(assert (=> b!7635274 m!8160224))

(check-sat (not b!7635277) tp_is_empty!51173 (not b!7635268) (not b!7635273) (not b!7635274) (not b!7635271) (not start!735136) (not b!7635276) (not b!7635269) (not b!7635270) (not b!7635265))
(check-sat)
