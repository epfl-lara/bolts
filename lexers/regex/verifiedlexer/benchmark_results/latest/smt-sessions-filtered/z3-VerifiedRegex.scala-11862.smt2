; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!666642 () Bool)

(assert start!666642)

(declare-fun b!6942379 () Bool)

(assert (=> b!6942379 true))

(assert (=> b!6942379 true))

(assert (=> b!6942379 true))

(declare-fun lambda!395655 () Int)

(declare-fun lambda!395654 () Int)

(assert (=> b!6942379 (not (= lambda!395655 lambda!395654))))

(assert (=> b!6942379 true))

(assert (=> b!6942379 true))

(assert (=> b!6942379 true))

(declare-datatypes ((C!34212 0))(
  ( (C!34213 (val!26808 Int)) )
))
(declare-datatypes ((Regex!16971 0))(
  ( (ElementMatch!16971 (c!1288093 C!34212)) (Concat!25816 (regOne!34454 Regex!16971) (regTwo!34454 Regex!16971)) (EmptyExpr!16971) (Star!16971 (reg!17300 Regex!16971)) (EmptyLang!16971) (Union!16971 (regOne!34455 Regex!16971) (regTwo!34455 Regex!16971)) )
))
(declare-fun r1!6342 () Regex!16971)

(declare-fun lambda!395656 () Int)

(declare-fun r3!135 () Regex!16971)

(declare-datatypes ((List!66724 0))(
  ( (Nil!66600) (Cons!66600 (h!73048 C!34212) (t!380467 List!66724)) )
))
(declare-datatypes ((tuple2!67656 0))(
  ( (tuple2!67657 (_1!37131 List!66724) (_2!37131 List!66724)) )
))
(declare-fun lt!2476358 () tuple2!67656)

(declare-fun s!14361 () List!66724)

(declare-fun lt!2476353 () Regex!16971)

(declare-fun r2!6280 () Regex!16971)

(assert (=> b!6942379 (= (and (= (_2!37131 lt!2476358) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2476353)) (= lambda!395656 lambda!395654))))

(assert (=> b!6942379 (not (= lambda!395656 lambda!395655))))

(assert (=> b!6942379 true))

(assert (=> b!6942379 true))

(assert (=> b!6942379 true))

(declare-fun lambda!395657 () Int)

(assert (=> b!6942379 (not (= lambda!395657 lambda!395654))))

(assert (=> b!6942379 (= (and (= (_2!37131 lt!2476358) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2476353)) (= lambda!395657 lambda!395655))))

(assert (=> b!6942379 (not (= lambda!395657 lambda!395656))))

(assert (=> b!6942379 true))

(assert (=> b!6942379 true))

(assert (=> b!6942379 true))

(declare-fun lambda!395658 () Int)

(declare-fun lt!2476355 () List!66724)

(assert (=> b!6942379 (= (and (= lt!2476355 s!14361) (= r2!6280 lt!2476353)) (= lambda!395658 lambda!395654))))

(assert (=> b!6942379 (not (= lambda!395658 lambda!395655))))

(assert (=> b!6942379 (= (and (= lt!2476355 (_2!37131 lt!2476358)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395658 lambda!395656))))

(assert (=> b!6942379 (not (= lambda!395658 lambda!395657))))

(assert (=> b!6942379 true))

(assert (=> b!6942379 true))

(assert (=> b!6942379 true))

(declare-fun lambda!395659 () Int)

(assert (=> b!6942379 (= (and (= lt!2476355 s!14361) (= r2!6280 lt!2476353)) (= lambda!395659 lambda!395655))))

(assert (=> b!6942379 (= (and (= lt!2476355 (_2!37131 lt!2476358)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395659 lambda!395657))))

(assert (=> b!6942379 (not (= lambda!395659 lambda!395656))))

(assert (=> b!6942379 (not (= lambda!395659 lambda!395658))))

(assert (=> b!6942379 (not (= lambda!395659 lambda!395654))))

(assert (=> b!6942379 true))

(assert (=> b!6942379 true))

(assert (=> b!6942379 true))

(declare-fun lambda!395660 () Int)

(assert (=> b!6942379 (not (= lambda!395660 lambda!395655))))

(assert (=> b!6942379 (not (= lambda!395660 lambda!395657))))

(assert (=> b!6942379 (not (= lambda!395660 lambda!395659))))

(declare-fun lt!2476370 () Regex!16971)

(assert (=> b!6942379 (= (and (= s!14361 (_2!37131 lt!2476358)) (= lt!2476370 r2!6280)) (= lambda!395660 lambda!395656))))

(assert (=> b!6942379 (= (and (= s!14361 lt!2476355) (= lt!2476370 r1!6342) (= r3!135 r2!6280)) (= lambda!395660 lambda!395658))))

(assert (=> b!6942379 (= (and (= lt!2476370 r1!6342) (= r3!135 lt!2476353)) (= lambda!395660 lambda!395654))))

(assert (=> b!6942379 true))

(assert (=> b!6942379 true))

(assert (=> b!6942379 true))

(declare-fun b!6942367 () Bool)

(declare-fun e!4176201 () Bool)

(declare-fun tp!1913641 () Bool)

(assert (=> b!6942367 (= e!4176201 tp!1913641)))

(declare-fun res!2832016 () Bool)

(declare-fun e!4176202 () Bool)

(assert (=> start!666642 (=> (not res!2832016) (not e!4176202))))

(declare-fun validRegex!8677 (Regex!16971) Bool)

(assert (=> start!666642 (= res!2832016 (validRegex!8677 r1!6342))))

(assert (=> start!666642 e!4176202))

(declare-fun e!4176198 () Bool)

(assert (=> start!666642 e!4176198))

(assert (=> start!666642 e!4176201))

(declare-fun e!4176203 () Bool)

(assert (=> start!666642 e!4176203))

(declare-fun e!4176204 () Bool)

(assert (=> start!666642 e!4176204))

(declare-fun b!6942368 () Bool)

(declare-fun tp!1913644 () Bool)

(assert (=> b!6942368 (= e!4176198 tp!1913644)))

(declare-fun b!6942369 () Bool)

(declare-fun tp!1913645 () Bool)

(assert (=> b!6942369 (= e!4176203 tp!1913645)))

(declare-fun b!6942370 () Bool)

(declare-fun tp_is_empty!43167 () Bool)

(assert (=> b!6942370 (= e!4176203 tp_is_empty!43167)))

(declare-fun b!6942371 () Bool)

(declare-fun tp!1913649 () Bool)

(declare-fun tp!1913646 () Bool)

(assert (=> b!6942371 (= e!4176203 (and tp!1913649 tp!1913646))))

(declare-fun b!6942372 () Bool)

(declare-fun tp!1913642 () Bool)

(assert (=> b!6942372 (= e!4176204 (and tp_is_empty!43167 tp!1913642))))

(declare-fun b!6942373 () Bool)

(declare-fun res!2832015 () Bool)

(assert (=> b!6942373 (=> (not res!2832015) (not e!4176202))))

(assert (=> b!6942373 (= res!2832015 (validRegex!8677 r3!135))))

(declare-fun b!6942374 () Bool)

(declare-datatypes ((Unit!160672 0))(
  ( (Unit!160673) )
))
(declare-fun e!4176200 () Unit!160672)

(declare-fun Unit!160674 () Unit!160672)

(assert (=> b!6942374 (= e!4176200 Unit!160674)))

(declare-fun b!6942375 () Bool)

(declare-fun tp!1913639 () Bool)

(declare-fun tp!1913640 () Bool)

(assert (=> b!6942375 (= e!4176203 (and tp!1913639 tp!1913640))))

(declare-fun b!6942376 () Bool)

(declare-fun tp!1913638 () Bool)

(declare-fun tp!1913647 () Bool)

(assert (=> b!6942376 (= e!4176198 (and tp!1913638 tp!1913647))))

(declare-fun b!6942377 () Bool)

(declare-fun tp!1913636 () Bool)

(declare-fun tp!1913643 () Bool)

(assert (=> b!6942377 (= e!4176201 (and tp!1913636 tp!1913643))))

(declare-fun b!6942378 () Bool)

(assert (=> b!6942378 (= e!4176201 tp_is_empty!43167)))

(declare-fun Unit!160675 () Unit!160672)

(assert (=> b!6942379 (= e!4176200 Unit!160675)))

(declare-fun lt!2476380 () Unit!160672)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2912 (Regex!16971 Regex!16971 List!66724) Unit!160672)

(assert (=> b!6942379 (= lt!2476380 (lemmaFindConcatSeparationEquivalentToExists!2912 r1!6342 lt!2476353 s!14361))))

(declare-fun Exists!3971 (Int) Bool)

(assert (=> b!6942379 (Exists!3971 lambda!395654)))

(declare-fun lt!2476373 () Unit!160672)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2432 (Regex!16971 Regex!16971 List!66724) Unit!160672)

(assert (=> b!6942379 (= lt!2476373 (lemmaExistCutMatchRandMatchRSpecEquivalent!2432 r1!6342 lt!2476353 s!14361))))

(assert (=> b!6942379 (= (Exists!3971 lambda!395654) (Exists!3971 lambda!395655))))

(declare-datatypes ((Option!16740 0))(
  ( (None!16739) (Some!16739 (v!53011 tuple2!67656)) )
))
(declare-fun lt!2476372 () Option!16740)

(declare-fun get!23393 (Option!16740) tuple2!67656)

(assert (=> b!6942379 (= lt!2476358 (get!23393 lt!2476372))))

(declare-fun lt!2476378 () Unit!160672)

(declare-fun mainMatchTheorem!4028 (Regex!16971 List!66724) Unit!160672)

(assert (=> b!6942379 (= lt!2476378 (mainMatchTheorem!4028 r1!6342 (_1!37131 lt!2476358)))))

(declare-fun matchR!9110 (Regex!16971 List!66724) Bool)

(declare-fun matchRSpec!4028 (Regex!16971 List!66724) Bool)

(assert (=> b!6942379 (= (matchR!9110 r1!6342 (_1!37131 lt!2476358)) (matchRSpec!4028 r1!6342 (_1!37131 lt!2476358)))))

(declare-fun lt!2476381 () Unit!160672)

(assert (=> b!6942379 (= lt!2476381 (mainMatchTheorem!4028 lt!2476353 (_2!37131 lt!2476358)))))

(assert (=> b!6942379 (= (matchR!9110 lt!2476353 (_2!37131 lt!2476358)) (matchRSpec!4028 lt!2476353 (_2!37131 lt!2476358)))))

(declare-fun lt!2476357 () Unit!160672)

(assert (=> b!6942379 (= lt!2476357 (lemmaFindConcatSeparationEquivalentToExists!2912 r2!6280 r3!135 (_2!37131 lt!2476358)))))

(declare-fun lt!2476356 () Option!16740)

(declare-fun findConcatSeparation!3154 (Regex!16971 Regex!16971 List!66724 List!66724 List!66724) Option!16740)

(assert (=> b!6942379 (= lt!2476356 (findConcatSeparation!3154 r2!6280 r3!135 Nil!66600 (_2!37131 lt!2476358) (_2!37131 lt!2476358)))))

(declare-fun isDefined!13441 (Option!16740) Bool)

(assert (=> b!6942379 (= (isDefined!13441 lt!2476356) (Exists!3971 lambda!395656))))

(declare-fun lt!2476374 () Unit!160672)

(assert (=> b!6942379 (= lt!2476374 (lemmaExistCutMatchRandMatchRSpecEquivalent!2432 r2!6280 r3!135 (_2!37131 lt!2476358)))))

(assert (=> b!6942379 (= (Exists!3971 lambda!395656) (Exists!3971 lambda!395657))))

(declare-fun lt!2476377 () tuple2!67656)

(assert (=> b!6942379 (= lt!2476377 (get!23393 lt!2476356))))

(declare-fun lt!2476362 () Unit!160672)

(assert (=> b!6942379 (= lt!2476362 (mainMatchTheorem!4028 r2!6280 (_1!37131 lt!2476377)))))

(assert (=> b!6942379 (= (matchR!9110 r2!6280 (_1!37131 lt!2476377)) (matchRSpec!4028 r2!6280 (_1!37131 lt!2476377)))))

(declare-fun lt!2476369 () Unit!160672)

(assert (=> b!6942379 (= lt!2476369 (mainMatchTheorem!4028 r3!135 (_2!37131 lt!2476377)))))

(assert (=> b!6942379 (= (matchR!9110 r3!135 (_2!37131 lt!2476377)) (matchRSpec!4028 r3!135 (_2!37131 lt!2476377)))))

(declare-fun lt!2476352 () Unit!160672)

(declare-fun lemmaConcatAssociativity!3052 (List!66724 List!66724 List!66724) Unit!160672)

(assert (=> b!6942379 (= lt!2476352 (lemmaConcatAssociativity!3052 (_1!37131 lt!2476358) (_1!37131 lt!2476377) (_2!37131 lt!2476377)))))

(declare-fun ++!15010 (List!66724 List!66724) List!66724)

(assert (=> b!6942379 (= lt!2476355 (++!15010 (_1!37131 lt!2476358) (_1!37131 lt!2476377)))))

(assert (=> b!6942379 (= (++!15010 lt!2476355 (_2!37131 lt!2476377)) (++!15010 (_1!37131 lt!2476358) (++!15010 (_1!37131 lt!2476377) (_2!37131 lt!2476377))))))

(declare-fun lt!2476376 () Unit!160672)

(assert (=> b!6942379 (= lt!2476376 (mainMatchTheorem!4028 lt!2476370 lt!2476355))))

(assert (=> b!6942379 (= (matchR!9110 lt!2476370 lt!2476355) (matchRSpec!4028 lt!2476370 lt!2476355))))

(declare-fun lt!2476366 () Unit!160672)

(assert (=> b!6942379 (= lt!2476366 (lemmaFindConcatSeparationEquivalentToExists!2912 r1!6342 r2!6280 lt!2476355))))

(declare-fun lt!2476368 () Bool)

(assert (=> b!6942379 (= lt!2476368 (isDefined!13441 (findConcatSeparation!3154 r1!6342 r2!6280 Nil!66600 lt!2476355 lt!2476355)))))

(assert (=> b!6942379 (= lt!2476368 (Exists!3971 lambda!395658))))

(declare-fun lt!2476360 () Unit!160672)

(assert (=> b!6942379 (= lt!2476360 (lemmaExistCutMatchRandMatchRSpecEquivalent!2432 r1!6342 r2!6280 lt!2476355))))

(assert (=> b!6942379 (= (Exists!3971 lambda!395658) (Exists!3971 lambda!395659))))

(declare-fun lt!2476379 () Unit!160672)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!114 (Regex!16971 Regex!16971 List!66724 List!66724 List!66724 List!66724 List!66724) Unit!160672)

(assert (=> b!6942379 (= lt!2476379 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!114 r1!6342 r2!6280 (_1!37131 lt!2476358) (_1!37131 lt!2476377) lt!2476355 Nil!66600 lt!2476355))))

(assert (=> b!6942379 lt!2476368))

(declare-fun lt!2476367 () Unit!160672)

(assert (=> b!6942379 (= lt!2476367 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!114 lt!2476370 r3!135 lt!2476355 (_2!37131 lt!2476377) s!14361 Nil!66600 s!14361))))

(assert (=> b!6942379 (isDefined!13441 (findConcatSeparation!3154 lt!2476370 r3!135 Nil!66600 s!14361 s!14361))))

(declare-fun lt!2476359 () Unit!160672)

(assert (=> b!6942379 (= lt!2476359 (lemmaFindConcatSeparationEquivalentToExists!2912 lt!2476370 r3!135 s!14361))))

(assert (=> b!6942379 (Exists!3971 lambda!395660)))

(declare-fun lt!2476365 () Unit!160672)

(assert (=> b!6942379 (= lt!2476365 (lemmaExistCutMatchRandMatchRSpecEquivalent!2432 lt!2476370 r3!135 s!14361))))

(assert (=> b!6942379 false))

(declare-fun b!6942380 () Bool)

(declare-fun res!2832014 () Bool)

(assert (=> b!6942380 (=> (not res!2832014) (not e!4176202))))

(assert (=> b!6942380 (= res!2832014 (validRegex!8677 r2!6280))))

(declare-fun b!6942381 () Bool)

(declare-fun tp!1913648 () Bool)

(declare-fun tp!1913637 () Bool)

(assert (=> b!6942381 (= e!4176198 (and tp!1913648 tp!1913637))))

(declare-fun b!6942382 () Bool)

(declare-fun e!4176199 () Bool)

(assert (=> b!6942382 (= e!4176202 (not e!4176199))))

(declare-fun res!2832013 () Bool)

(assert (=> b!6942382 (=> res!2832013 e!4176199)))

(declare-fun lt!2476375 () Bool)

(assert (=> b!6942382 (= res!2832013 lt!2476375)))

(declare-fun lt!2476354 () Regex!16971)

(assert (=> b!6942382 (= (matchR!9110 lt!2476354 s!14361) (matchRSpec!4028 lt!2476354 s!14361))))

(declare-fun lt!2476371 () Unit!160672)

(assert (=> b!6942382 (= lt!2476371 (mainMatchTheorem!4028 lt!2476354 s!14361))))

(declare-fun lt!2476361 () Regex!16971)

(assert (=> b!6942382 (= lt!2476375 (matchRSpec!4028 lt!2476361 s!14361))))

(assert (=> b!6942382 (= lt!2476375 (matchR!9110 lt!2476361 s!14361))))

(declare-fun lt!2476363 () Unit!160672)

(assert (=> b!6942382 (= lt!2476363 (mainMatchTheorem!4028 lt!2476361 s!14361))))

(assert (=> b!6942382 (= lt!2476354 (Concat!25816 r1!6342 lt!2476353))))

(assert (=> b!6942382 (= lt!2476353 (Concat!25816 r2!6280 r3!135))))

(assert (=> b!6942382 (= lt!2476361 (Concat!25816 lt!2476370 r3!135))))

(assert (=> b!6942382 (= lt!2476370 (Concat!25816 r1!6342 r2!6280))))

(declare-fun b!6942383 () Bool)

(assert (=> b!6942383 (= e!4176198 tp_is_empty!43167)))

(declare-fun b!6942384 () Bool)

(assert (=> b!6942384 (= e!4176199 (validRegex!8677 lt!2476353))))

(declare-fun lt!2476364 () Unit!160672)

(assert (=> b!6942384 (= lt!2476364 e!4176200)))

(declare-fun c!1288092 () Bool)

(assert (=> b!6942384 (= c!1288092 (isDefined!13441 lt!2476372))))

(assert (=> b!6942384 (= lt!2476372 (findConcatSeparation!3154 r1!6342 lt!2476353 Nil!66600 s!14361 s!14361))))

(declare-fun b!6942385 () Bool)

(declare-fun tp!1913651 () Bool)

(declare-fun tp!1913650 () Bool)

(assert (=> b!6942385 (= e!4176201 (and tp!1913651 tp!1913650))))

(assert (= (and start!666642 res!2832016) b!6942380))

(assert (= (and b!6942380 res!2832014) b!6942373))

(assert (= (and b!6942373 res!2832015) b!6942382))

(assert (= (and b!6942382 (not res!2832013)) b!6942384))

(assert (= (and b!6942384 c!1288092) b!6942379))

(assert (= (and b!6942384 (not c!1288092)) b!6942374))

(get-info :version)

(assert (= (and start!666642 ((_ is ElementMatch!16971) r1!6342)) b!6942383))

(assert (= (and start!666642 ((_ is Concat!25816) r1!6342)) b!6942376))

(assert (= (and start!666642 ((_ is Star!16971) r1!6342)) b!6942368))

(assert (= (and start!666642 ((_ is Union!16971) r1!6342)) b!6942381))

(assert (= (and start!666642 ((_ is ElementMatch!16971) r2!6280)) b!6942378))

(assert (= (and start!666642 ((_ is Concat!25816) r2!6280)) b!6942385))

(assert (= (and start!666642 ((_ is Star!16971) r2!6280)) b!6942367))

(assert (= (and start!666642 ((_ is Union!16971) r2!6280)) b!6942377))

(assert (= (and start!666642 ((_ is ElementMatch!16971) r3!135)) b!6942370))

(assert (= (and start!666642 ((_ is Concat!25816) r3!135)) b!6942375))

(assert (= (and start!666642 ((_ is Star!16971) r3!135)) b!6942369))

(assert (= (and start!666642 ((_ is Union!16971) r3!135)) b!6942371))

(assert (= (and start!666642 ((_ is Cons!66600) s!14361)) b!6942372))

(declare-fun m!7647222 () Bool)

(assert (=> b!6942379 m!7647222))

(declare-fun m!7647224 () Bool)

(assert (=> b!6942379 m!7647224))

(declare-fun m!7647226 () Bool)

(assert (=> b!6942379 m!7647226))

(declare-fun m!7647228 () Bool)

(assert (=> b!6942379 m!7647228))

(declare-fun m!7647230 () Bool)

(assert (=> b!6942379 m!7647230))

(declare-fun m!7647232 () Bool)

(assert (=> b!6942379 m!7647232))

(assert (=> b!6942379 m!7647222))

(declare-fun m!7647234 () Bool)

(assert (=> b!6942379 m!7647234))

(declare-fun m!7647236 () Bool)

(assert (=> b!6942379 m!7647236))

(declare-fun m!7647238 () Bool)

(assert (=> b!6942379 m!7647238))

(declare-fun m!7647240 () Bool)

(assert (=> b!6942379 m!7647240))

(declare-fun m!7647242 () Bool)

(assert (=> b!6942379 m!7647242))

(declare-fun m!7647244 () Bool)

(assert (=> b!6942379 m!7647244))

(declare-fun m!7647246 () Bool)

(assert (=> b!6942379 m!7647246))

(declare-fun m!7647248 () Bool)

(assert (=> b!6942379 m!7647248))

(declare-fun m!7647250 () Bool)

(assert (=> b!6942379 m!7647250))

(declare-fun m!7647252 () Bool)

(assert (=> b!6942379 m!7647252))

(declare-fun m!7647254 () Bool)

(assert (=> b!6942379 m!7647254))

(declare-fun m!7647256 () Bool)

(assert (=> b!6942379 m!7647256))

(declare-fun m!7647258 () Bool)

(assert (=> b!6942379 m!7647258))

(declare-fun m!7647260 () Bool)

(assert (=> b!6942379 m!7647260))

(declare-fun m!7647262 () Bool)

(assert (=> b!6942379 m!7647262))

(declare-fun m!7647264 () Bool)

(assert (=> b!6942379 m!7647264))

(declare-fun m!7647266 () Bool)

(assert (=> b!6942379 m!7647266))

(declare-fun m!7647268 () Bool)

(assert (=> b!6942379 m!7647268))

(declare-fun m!7647270 () Bool)

(assert (=> b!6942379 m!7647270))

(assert (=> b!6942379 m!7647250))

(declare-fun m!7647272 () Bool)

(assert (=> b!6942379 m!7647272))

(declare-fun m!7647274 () Bool)

(assert (=> b!6942379 m!7647274))

(declare-fun m!7647276 () Bool)

(assert (=> b!6942379 m!7647276))

(declare-fun m!7647278 () Bool)

(assert (=> b!6942379 m!7647278))

(declare-fun m!7647280 () Bool)

(assert (=> b!6942379 m!7647280))

(declare-fun m!7647282 () Bool)

(assert (=> b!6942379 m!7647282))

(assert (=> b!6942379 m!7647268))

(assert (=> b!6942379 m!7647280))

(declare-fun m!7647284 () Bool)

(assert (=> b!6942379 m!7647284))

(declare-fun m!7647286 () Bool)

(assert (=> b!6942379 m!7647286))

(declare-fun m!7647288 () Bool)

(assert (=> b!6942379 m!7647288))

(declare-fun m!7647290 () Bool)

(assert (=> b!6942379 m!7647290))

(declare-fun m!7647292 () Bool)

(assert (=> b!6942379 m!7647292))

(assert (=> b!6942379 m!7647236))

(declare-fun m!7647294 () Bool)

(assert (=> b!6942379 m!7647294))

(declare-fun m!7647296 () Bool)

(assert (=> b!6942379 m!7647296))

(declare-fun m!7647298 () Bool)

(assert (=> b!6942379 m!7647298))

(declare-fun m!7647300 () Bool)

(assert (=> b!6942379 m!7647300))

(declare-fun m!7647302 () Bool)

(assert (=> b!6942379 m!7647302))

(assert (=> b!6942379 m!7647274))

(declare-fun m!7647304 () Bool)

(assert (=> b!6942379 m!7647304))

(declare-fun m!7647306 () Bool)

(assert (=> b!6942379 m!7647306))

(declare-fun m!7647308 () Bool)

(assert (=> b!6942379 m!7647308))

(declare-fun m!7647310 () Bool)

(assert (=> b!6942379 m!7647310))

(declare-fun m!7647312 () Bool)

(assert (=> b!6942382 m!7647312))

(declare-fun m!7647314 () Bool)

(assert (=> b!6942382 m!7647314))

(declare-fun m!7647316 () Bool)

(assert (=> b!6942382 m!7647316))

(declare-fun m!7647318 () Bool)

(assert (=> b!6942382 m!7647318))

(declare-fun m!7647320 () Bool)

(assert (=> b!6942382 m!7647320))

(declare-fun m!7647322 () Bool)

(assert (=> b!6942382 m!7647322))

(declare-fun m!7647324 () Bool)

(assert (=> b!6942373 m!7647324))

(declare-fun m!7647326 () Bool)

(assert (=> b!6942384 m!7647326))

(declare-fun m!7647328 () Bool)

(assert (=> b!6942384 m!7647328))

(declare-fun m!7647330 () Bool)

(assert (=> b!6942384 m!7647330))

(declare-fun m!7647332 () Bool)

(assert (=> b!6942380 m!7647332))

(declare-fun m!7647334 () Bool)

(assert (=> start!666642 m!7647334))

(check-sat (not b!6942376) (not b!6942384) tp_is_empty!43167 (not b!6942372) (not start!666642) (not b!6942385) (not b!6942375) (not b!6942369) (not b!6942382) (not b!6942368) (not b!6942381) (not b!6942373) (not b!6942379) (not b!6942377) (not b!6942367) (not b!6942371) (not b!6942380))
(check-sat)
(get-model)

(declare-fun d!2167965 () Bool)

(assert (=> d!2167965 (= (get!23393 lt!2476356) (v!53011 lt!2476356))))

(assert (=> b!6942379 d!2167965))

(declare-fun d!2167967 () Bool)

(declare-fun choose!51727 (Int) Bool)

(assert (=> d!2167967 (= (Exists!3971 lambda!395655) (choose!51727 lambda!395655))))

(declare-fun bs!1855538 () Bool)

(assert (= bs!1855538 d!2167967))

(declare-fun m!7647336 () Bool)

(assert (=> bs!1855538 m!7647336))

(assert (=> b!6942379 d!2167967))

(declare-fun d!2167969 () Bool)

(assert (=> d!2167969 (= (Exists!3971 lambda!395658) (choose!51727 lambda!395658))))

(declare-fun bs!1855539 () Bool)

(assert (= bs!1855539 d!2167969))

(declare-fun m!7647338 () Bool)

(assert (=> bs!1855539 m!7647338))

(assert (=> b!6942379 d!2167969))

(declare-fun d!2167971 () Bool)

(assert (=> d!2167971 (= (++!15010 (++!15010 (_1!37131 lt!2476358) (_1!37131 lt!2476377)) (_2!37131 lt!2476377)) (++!15010 (_1!37131 lt!2476358) (++!15010 (_1!37131 lt!2476377) (_2!37131 lt!2476377))))))

(declare-fun lt!2476384 () Unit!160672)

(declare-fun choose!51728 (List!66724 List!66724 List!66724) Unit!160672)

(assert (=> d!2167971 (= lt!2476384 (choose!51728 (_1!37131 lt!2476358) (_1!37131 lt!2476377) (_2!37131 lt!2476377)))))

(assert (=> d!2167971 (= (lemmaConcatAssociativity!3052 (_1!37131 lt!2476358) (_1!37131 lt!2476377) (_2!37131 lt!2476377)) lt!2476384)))

(declare-fun bs!1855540 () Bool)

(assert (= bs!1855540 d!2167971))

(assert (=> bs!1855540 m!7647222))

(assert (=> bs!1855540 m!7647292))

(declare-fun m!7647340 () Bool)

(assert (=> bs!1855540 m!7647340))

(assert (=> bs!1855540 m!7647292))

(declare-fun m!7647342 () Bool)

(assert (=> bs!1855540 m!7647342))

(assert (=> bs!1855540 m!7647222))

(assert (=> bs!1855540 m!7647224))

(assert (=> b!6942379 d!2167971))

(declare-fun b!6942400 () Bool)

(declare-fun e!4176209 () List!66724)

(assert (=> b!6942400 (= e!4176209 (++!15010 (_1!37131 lt!2476377) (_2!37131 lt!2476377)))))

(declare-fun b!6942401 () Bool)

(assert (=> b!6942401 (= e!4176209 (Cons!66600 (h!73048 (_1!37131 lt!2476358)) (++!15010 (t!380467 (_1!37131 lt!2476358)) (++!15010 (_1!37131 lt!2476377) (_2!37131 lt!2476377)))))))

(declare-fun b!6942403 () Bool)

(declare-fun e!4176210 () Bool)

(declare-fun lt!2476387 () List!66724)

(assert (=> b!6942403 (= e!4176210 (or (not (= (++!15010 (_1!37131 lt!2476377) (_2!37131 lt!2476377)) Nil!66600)) (= lt!2476387 (_1!37131 lt!2476358))))))

(declare-fun d!2167973 () Bool)

(assert (=> d!2167973 e!4176210))

(declare-fun res!2832022 () Bool)

(assert (=> d!2167973 (=> (not res!2832022) (not e!4176210))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13107 (List!66724) (InoxSet C!34212))

(assert (=> d!2167973 (= res!2832022 (= (content!13107 lt!2476387) ((_ map or) (content!13107 (_1!37131 lt!2476358)) (content!13107 (++!15010 (_1!37131 lt!2476377) (_2!37131 lt!2476377))))))))

(assert (=> d!2167973 (= lt!2476387 e!4176209)))

(declare-fun c!1288096 () Bool)

(assert (=> d!2167973 (= c!1288096 ((_ is Nil!66600) (_1!37131 lt!2476358)))))

(assert (=> d!2167973 (= (++!15010 (_1!37131 lt!2476358) (++!15010 (_1!37131 lt!2476377) (_2!37131 lt!2476377))) lt!2476387)))

(declare-fun b!6942402 () Bool)

(declare-fun res!2832021 () Bool)

(assert (=> b!6942402 (=> (not res!2832021) (not e!4176210))))

(declare-fun size!40804 (List!66724) Int)

(assert (=> b!6942402 (= res!2832021 (= (size!40804 lt!2476387) (+ (size!40804 (_1!37131 lt!2476358)) (size!40804 (++!15010 (_1!37131 lt!2476377) (_2!37131 lt!2476377))))))))

(assert (= (and d!2167973 c!1288096) b!6942400))

(assert (= (and d!2167973 (not c!1288096)) b!6942401))

(assert (= (and d!2167973 res!2832022) b!6942402))

(assert (= (and b!6942402 res!2832021) b!6942403))

(assert (=> b!6942401 m!7647222))

(declare-fun m!7647344 () Bool)

(assert (=> b!6942401 m!7647344))

(declare-fun m!7647346 () Bool)

(assert (=> d!2167973 m!7647346))

(declare-fun m!7647348 () Bool)

(assert (=> d!2167973 m!7647348))

(assert (=> d!2167973 m!7647222))

(declare-fun m!7647350 () Bool)

(assert (=> d!2167973 m!7647350))

(declare-fun m!7647352 () Bool)

(assert (=> b!6942402 m!7647352))

(declare-fun m!7647354 () Bool)

(assert (=> b!6942402 m!7647354))

(assert (=> b!6942402 m!7647222))

(declare-fun m!7647356 () Bool)

(assert (=> b!6942402 m!7647356))

(assert (=> b!6942379 d!2167973))

(declare-fun b!6942478 () Bool)

(declare-fun e!4176254 () Bool)

(declare-fun head!13914 (List!66724) C!34212)

(assert (=> b!6942478 (= e!4176254 (not (= (head!13914 (_2!37131 lt!2476358)) (c!1288093 lt!2476353))))))

(declare-fun b!6942479 () Bool)

(declare-fun res!2832074 () Bool)

(assert (=> b!6942479 (=> res!2832074 e!4176254)))

(declare-fun isEmpty!38874 (List!66724) Bool)

(declare-fun tail!12966 (List!66724) List!66724)

(assert (=> b!6942479 (= res!2832074 (not (isEmpty!38874 (tail!12966 (_2!37131 lt!2476358)))))))

(declare-fun b!6942480 () Bool)

(declare-fun e!4176250 () Bool)

(assert (=> b!6942480 (= e!4176250 e!4176254)))

(declare-fun res!2832068 () Bool)

(assert (=> b!6942480 (=> res!2832068 e!4176254)))

(declare-fun call!630661 () Bool)

(assert (=> b!6942480 (= res!2832068 call!630661)))

(declare-fun b!6942481 () Bool)

(declare-fun e!4176251 () Bool)

(assert (=> b!6942481 (= e!4176251 (= (head!13914 (_2!37131 lt!2476358)) (c!1288093 lt!2476353)))))

(declare-fun b!6942482 () Bool)

(declare-fun e!4176253 () Bool)

(declare-fun lt!2476396 () Bool)

(assert (=> b!6942482 (= e!4176253 (not lt!2476396))))

(declare-fun b!6942483 () Bool)

(declare-fun e!4176249 () Bool)

(declare-fun nullable!6786 (Regex!16971) Bool)

(assert (=> b!6942483 (= e!4176249 (nullable!6786 lt!2476353))))

(declare-fun b!6942484 () Bool)

(declare-fun res!2832072 () Bool)

(declare-fun e!4176252 () Bool)

(assert (=> b!6942484 (=> res!2832072 e!4176252)))

(assert (=> b!6942484 (= res!2832072 e!4176251)))

(declare-fun res!2832069 () Bool)

(assert (=> b!6942484 (=> (not res!2832069) (not e!4176251))))

(assert (=> b!6942484 (= res!2832069 lt!2476396)))

(declare-fun bm!630656 () Bool)

(assert (=> bm!630656 (= call!630661 (isEmpty!38874 (_2!37131 lt!2476358)))))

(declare-fun b!6942485 () Bool)

(declare-fun res!2832071 () Bool)

(assert (=> b!6942485 (=> res!2832071 e!4176252)))

(assert (=> b!6942485 (= res!2832071 (not ((_ is ElementMatch!16971) lt!2476353)))))

(assert (=> b!6942485 (= e!4176253 e!4176252)))

(declare-fun d!2167975 () Bool)

(declare-fun e!4176248 () Bool)

(assert (=> d!2167975 e!4176248))

(declare-fun c!1288114 () Bool)

(assert (=> d!2167975 (= c!1288114 ((_ is EmptyExpr!16971) lt!2476353))))

(assert (=> d!2167975 (= lt!2476396 e!4176249)))

(declare-fun c!1288113 () Bool)

(assert (=> d!2167975 (= c!1288113 (isEmpty!38874 (_2!37131 lt!2476358)))))

(assert (=> d!2167975 (validRegex!8677 lt!2476353)))

(assert (=> d!2167975 (= (matchR!9110 lt!2476353 (_2!37131 lt!2476358)) lt!2476396)))

(declare-fun b!6942486 () Bool)

(assert (=> b!6942486 (= e!4176248 e!4176253)))

(declare-fun c!1288112 () Bool)

(assert (=> b!6942486 (= c!1288112 ((_ is EmptyLang!16971) lt!2476353))))

(declare-fun b!6942487 () Bool)

(assert (=> b!6942487 (= e!4176252 e!4176250)))

(declare-fun res!2832073 () Bool)

(assert (=> b!6942487 (=> (not res!2832073) (not e!4176250))))

(assert (=> b!6942487 (= res!2832073 (not lt!2476396))))

(declare-fun b!6942488 () Bool)

(declare-fun res!2832070 () Bool)

(assert (=> b!6942488 (=> (not res!2832070) (not e!4176251))))

(assert (=> b!6942488 (= res!2832070 (not call!630661))))

(declare-fun b!6942489 () Bool)

(assert (=> b!6942489 (= e!4176248 (= lt!2476396 call!630661))))

(declare-fun b!6942490 () Bool)

(declare-fun derivativeStep!5461 (Regex!16971 C!34212) Regex!16971)

(assert (=> b!6942490 (= e!4176249 (matchR!9110 (derivativeStep!5461 lt!2476353 (head!13914 (_2!37131 lt!2476358))) (tail!12966 (_2!37131 lt!2476358))))))

(declare-fun b!6942491 () Bool)

(declare-fun res!2832067 () Bool)

(assert (=> b!6942491 (=> (not res!2832067) (not e!4176251))))

(assert (=> b!6942491 (= res!2832067 (isEmpty!38874 (tail!12966 (_2!37131 lt!2476358))))))

(assert (= (and d!2167975 c!1288113) b!6942483))

(assert (= (and d!2167975 (not c!1288113)) b!6942490))

(assert (= (and d!2167975 c!1288114) b!6942489))

(assert (= (and d!2167975 (not c!1288114)) b!6942486))

(assert (= (and b!6942486 c!1288112) b!6942482))

(assert (= (and b!6942486 (not c!1288112)) b!6942485))

(assert (= (and b!6942485 (not res!2832071)) b!6942484))

(assert (= (and b!6942484 res!2832069) b!6942488))

(assert (= (and b!6942488 res!2832070) b!6942491))

(assert (= (and b!6942491 res!2832067) b!6942481))

(assert (= (and b!6942484 (not res!2832072)) b!6942487))

(assert (= (and b!6942487 res!2832073) b!6942480))

(assert (= (and b!6942480 (not res!2832068)) b!6942479))

(assert (= (and b!6942479 (not res!2832074)) b!6942478))

(assert (= (or b!6942489 b!6942488 b!6942480) bm!630656))

(declare-fun m!7647380 () Bool)

(assert (=> bm!630656 m!7647380))

(declare-fun m!7647382 () Bool)

(assert (=> b!6942478 m!7647382))

(declare-fun m!7647384 () Bool)

(assert (=> b!6942491 m!7647384))

(assert (=> b!6942491 m!7647384))

(declare-fun m!7647386 () Bool)

(assert (=> b!6942491 m!7647386))

(declare-fun m!7647388 () Bool)

(assert (=> b!6942483 m!7647388))

(assert (=> b!6942479 m!7647384))

(assert (=> b!6942479 m!7647384))

(assert (=> b!6942479 m!7647386))

(assert (=> b!6942490 m!7647382))

(assert (=> b!6942490 m!7647382))

(declare-fun m!7647390 () Bool)

(assert (=> b!6942490 m!7647390))

(assert (=> b!6942490 m!7647384))

(assert (=> b!6942490 m!7647390))

(assert (=> b!6942490 m!7647384))

(declare-fun m!7647392 () Bool)

(assert (=> b!6942490 m!7647392))

(assert (=> b!6942481 m!7647382))

(assert (=> d!2167975 m!7647380))

(assert (=> d!2167975 m!7647326))

(assert (=> b!6942379 d!2167975))

(declare-fun d!2167989 () Bool)

(assert (=> d!2167989 (= (Exists!3971 lambda!395657) (choose!51727 lambda!395657))))

(declare-fun bs!1855545 () Bool)

(assert (= bs!1855545 d!2167989))

(declare-fun m!7647394 () Bool)

(assert (=> bs!1855545 m!7647394))

(assert (=> b!6942379 d!2167989))

(declare-fun bs!1855549 () Bool)

(declare-fun d!2167991 () Bool)

(assert (= bs!1855549 (and d!2167991 b!6942379)))

(declare-fun lambda!395674 () Int)

(assert (=> bs!1855549 (not (= lambda!395674 lambda!395657))))

(assert (=> bs!1855549 (not (= lambda!395674 lambda!395659))))

(assert (=> bs!1855549 (= (and (= s!14361 (_2!37131 lt!2476358)) (= lt!2476370 r2!6280)) (= lambda!395674 lambda!395656))))

(assert (=> bs!1855549 (= (and (= s!14361 lt!2476355) (= lt!2476370 r1!6342) (= r3!135 r2!6280)) (= lambda!395674 lambda!395658))))

(assert (=> bs!1855549 (= (and (= lt!2476370 r1!6342) (= r3!135 lt!2476353)) (= lambda!395674 lambda!395654))))

(assert (=> bs!1855549 (not (= lambda!395674 lambda!395655))))

(assert (=> bs!1855549 (= lambda!395674 lambda!395660)))

(assert (=> d!2167991 true))

(assert (=> d!2167991 true))

(assert (=> d!2167991 true))

(assert (=> d!2167991 (= (isDefined!13441 (findConcatSeparation!3154 lt!2476370 r3!135 Nil!66600 s!14361 s!14361)) (Exists!3971 lambda!395674))))

(declare-fun lt!2476402 () Unit!160672)

(declare-fun choose!51731 (Regex!16971 Regex!16971 List!66724) Unit!160672)

(assert (=> d!2167991 (= lt!2476402 (choose!51731 lt!2476370 r3!135 s!14361))))

(assert (=> d!2167991 (validRegex!8677 lt!2476370)))

(assert (=> d!2167991 (= (lemmaFindConcatSeparationEquivalentToExists!2912 lt!2476370 r3!135 s!14361) lt!2476402)))

(declare-fun bs!1855550 () Bool)

(assert (= bs!1855550 d!2167991))

(assert (=> bs!1855550 m!7647280))

(assert (=> bs!1855550 m!7647284))

(assert (=> bs!1855550 m!7647280))

(declare-fun m!7647402 () Bool)

(assert (=> bs!1855550 m!7647402))

(declare-fun m!7647404 () Bool)

(assert (=> bs!1855550 m!7647404))

(declare-fun m!7647406 () Bool)

(assert (=> bs!1855550 m!7647406))

(assert (=> b!6942379 d!2167991))

(declare-fun bs!1855609 () Bool)

(declare-fun b!6942622 () Bool)

(assert (= bs!1855609 (and b!6942622 b!6942379)))

(declare-fun lambda!395690 () Int)

(assert (=> bs!1855609 (not (= lambda!395690 lambda!395657))))

(declare-fun bs!1855610 () Bool)

(assert (= bs!1855610 (and b!6942622 d!2167991)))

(assert (=> bs!1855610 (not (= lambda!395690 lambda!395674))))

(assert (=> bs!1855609 (not (= lambda!395690 lambda!395659))))

(assert (=> bs!1855609 (not (= lambda!395690 lambda!395656))))

(assert (=> bs!1855609 (not (= lambda!395690 lambda!395658))))

(assert (=> bs!1855609 (not (= lambda!395690 lambda!395654))))

(assert (=> bs!1855609 (not (= lambda!395690 lambda!395655))))

(assert (=> bs!1855609 (not (= lambda!395690 lambda!395660))))

(assert (=> b!6942622 true))

(assert (=> b!6942622 true))

(declare-fun bs!1855616 () Bool)

(declare-fun b!6942620 () Bool)

(assert (= bs!1855616 (and b!6942620 b!6942622)))

(declare-fun lambda!395693 () Int)

(assert (=> bs!1855616 (not (= lambda!395693 lambda!395690))))

(declare-fun bs!1855618 () Bool)

(assert (= bs!1855618 (and b!6942620 b!6942379)))

(assert (=> bs!1855618 (= (and (= lt!2476355 (_2!37131 lt!2476358)) (= (regOne!34454 lt!2476370) r2!6280) (= (regTwo!34454 lt!2476370) r3!135)) (= lambda!395693 lambda!395657))))

(declare-fun bs!1855620 () Bool)

(assert (= bs!1855620 (and b!6942620 d!2167991)))

(assert (=> bs!1855620 (not (= lambda!395693 lambda!395674))))

(assert (=> bs!1855618 (= (and (= (regOne!34454 lt!2476370) r1!6342) (= (regTwo!34454 lt!2476370) r2!6280)) (= lambda!395693 lambda!395659))))

(assert (=> bs!1855618 (not (= lambda!395693 lambda!395656))))

(assert (=> bs!1855618 (not (= lambda!395693 lambda!395658))))

(assert (=> bs!1855618 (not (= lambda!395693 lambda!395654))))

(assert (=> bs!1855618 (= (and (= lt!2476355 s!14361) (= (regOne!34454 lt!2476370) r1!6342) (= (regTwo!34454 lt!2476370) lt!2476353)) (= lambda!395693 lambda!395655))))

(assert (=> bs!1855618 (not (= lambda!395693 lambda!395660))))

(assert (=> b!6942620 true))

(assert (=> b!6942620 true))

(declare-fun b!6942615 () Bool)

(declare-fun e!4176326 () Bool)

(declare-fun e!4176328 () Bool)

(assert (=> b!6942615 (= e!4176326 e!4176328)))

(declare-fun res!2832137 () Bool)

(assert (=> b!6942615 (= res!2832137 (not ((_ is EmptyLang!16971) lt!2476370)))))

(assert (=> b!6942615 (=> (not res!2832137) (not e!4176328))))

(declare-fun b!6942616 () Bool)

(declare-fun e!4176327 () Bool)

(assert (=> b!6942616 (= e!4176327 (matchRSpec!4028 (regTwo!34455 lt!2476370) lt!2476355))))

(declare-fun b!6942617 () Bool)

(declare-fun res!2832136 () Bool)

(declare-fun e!4176330 () Bool)

(assert (=> b!6942617 (=> res!2832136 e!4176330)))

(declare-fun call!630678 () Bool)

(assert (=> b!6942617 (= res!2832136 call!630678)))

(declare-fun e!4176331 () Bool)

(assert (=> b!6942617 (= e!4176331 e!4176330)))

(declare-fun b!6942618 () Bool)

(assert (=> b!6942618 (= e!4176326 call!630678)))

(declare-fun b!6942619 () Bool)

(declare-fun c!1288148 () Bool)

(assert (=> b!6942619 (= c!1288148 ((_ is ElementMatch!16971) lt!2476370))))

(declare-fun e!4176329 () Bool)

(assert (=> b!6942619 (= e!4176328 e!4176329)))

(declare-fun call!630677 () Bool)

(assert (=> b!6942620 (= e!4176331 call!630677)))

(declare-fun bm!630672 () Bool)

(assert (=> bm!630672 (= call!630678 (isEmpty!38874 lt!2476355))))

(declare-fun d!2167995 () Bool)

(declare-fun c!1288149 () Bool)

(assert (=> d!2167995 (= c!1288149 ((_ is EmptyExpr!16971) lt!2476370))))

(assert (=> d!2167995 (= (matchRSpec!4028 lt!2476370 lt!2476355) e!4176326)))

(declare-fun b!6942621 () Bool)

(declare-fun e!4176325 () Bool)

(assert (=> b!6942621 (= e!4176325 e!4176327)))

(declare-fun res!2832138 () Bool)

(assert (=> b!6942621 (= res!2832138 (matchRSpec!4028 (regOne!34455 lt!2476370) lt!2476355))))

(assert (=> b!6942621 (=> res!2832138 e!4176327)))

(assert (=> b!6942622 (= e!4176330 call!630677)))

(declare-fun b!6942623 () Bool)

(assert (=> b!6942623 (= e!4176325 e!4176331)))

(declare-fun c!1288147 () Bool)

(assert (=> b!6942623 (= c!1288147 ((_ is Star!16971) lt!2476370))))

(declare-fun b!6942624 () Bool)

(assert (=> b!6942624 (= e!4176329 (= lt!2476355 (Cons!66600 (c!1288093 lt!2476370) Nil!66600)))))

(declare-fun bm!630673 () Bool)

(assert (=> bm!630673 (= call!630677 (Exists!3971 (ite c!1288147 lambda!395690 lambda!395693)))))

(declare-fun b!6942625 () Bool)

(declare-fun c!1288146 () Bool)

(assert (=> b!6942625 (= c!1288146 ((_ is Union!16971) lt!2476370))))

(assert (=> b!6942625 (= e!4176329 e!4176325)))

(assert (= (and d!2167995 c!1288149) b!6942618))

(assert (= (and d!2167995 (not c!1288149)) b!6942615))

(assert (= (and b!6942615 res!2832137) b!6942619))

(assert (= (and b!6942619 c!1288148) b!6942624))

(assert (= (and b!6942619 (not c!1288148)) b!6942625))

(assert (= (and b!6942625 c!1288146) b!6942621))

(assert (= (and b!6942625 (not c!1288146)) b!6942623))

(assert (= (and b!6942621 (not res!2832138)) b!6942616))

(assert (= (and b!6942623 c!1288147) b!6942617))

(assert (= (and b!6942623 (not c!1288147)) b!6942620))

(assert (= (and b!6942617 (not res!2832136)) b!6942622))

(assert (= (or b!6942622 b!6942620) bm!630673))

(assert (= (or b!6942618 b!6942617) bm!630672))

(declare-fun m!7647482 () Bool)

(assert (=> b!6942616 m!7647482))

(declare-fun m!7647484 () Bool)

(assert (=> bm!630672 m!7647484))

(declare-fun m!7647486 () Bool)

(assert (=> b!6942621 m!7647486))

(declare-fun m!7647488 () Bool)

(assert (=> bm!630673 m!7647488))

(assert (=> b!6942379 d!2167995))

(declare-fun d!2168031 () Bool)

(assert (=> d!2168031 (= (get!23393 lt!2476372) (v!53011 lt!2476372))))

(assert (=> b!6942379 d!2168031))

(declare-fun d!2168033 () Bool)

(assert (=> d!2168033 (= (Exists!3971 lambda!395659) (choose!51727 lambda!395659))))

(declare-fun bs!1855631 () Bool)

(assert (= bs!1855631 d!2168033))

(declare-fun m!7647490 () Bool)

(assert (=> bs!1855631 m!7647490))

(assert (=> b!6942379 d!2168033))

(declare-fun b!6942626 () Bool)

(declare-fun e!4176338 () Bool)

(assert (=> b!6942626 (= e!4176338 (not (= (head!13914 (_2!37131 lt!2476377)) (c!1288093 r3!135))))))

(declare-fun b!6942627 () Bool)

(declare-fun res!2832146 () Bool)

(assert (=> b!6942627 (=> res!2832146 e!4176338)))

(assert (=> b!6942627 (= res!2832146 (not (isEmpty!38874 (tail!12966 (_2!37131 lt!2476377)))))))

(declare-fun b!6942628 () Bool)

(declare-fun e!4176334 () Bool)

(assert (=> b!6942628 (= e!4176334 e!4176338)))

(declare-fun res!2832140 () Bool)

(assert (=> b!6942628 (=> res!2832140 e!4176338)))

(declare-fun call!630679 () Bool)

(assert (=> b!6942628 (= res!2832140 call!630679)))

(declare-fun b!6942629 () Bool)

(declare-fun e!4176335 () Bool)

(assert (=> b!6942629 (= e!4176335 (= (head!13914 (_2!37131 lt!2476377)) (c!1288093 r3!135)))))

(declare-fun b!6942630 () Bool)

(declare-fun e!4176337 () Bool)

(declare-fun lt!2476415 () Bool)

(assert (=> b!6942630 (= e!4176337 (not lt!2476415))))

(declare-fun b!6942631 () Bool)

(declare-fun e!4176333 () Bool)

(assert (=> b!6942631 (= e!4176333 (nullable!6786 r3!135))))

(declare-fun b!6942632 () Bool)

(declare-fun res!2832144 () Bool)

(declare-fun e!4176336 () Bool)

(assert (=> b!6942632 (=> res!2832144 e!4176336)))

(assert (=> b!6942632 (= res!2832144 e!4176335)))

(declare-fun res!2832141 () Bool)

(assert (=> b!6942632 (=> (not res!2832141) (not e!4176335))))

(assert (=> b!6942632 (= res!2832141 lt!2476415)))

(declare-fun bm!630674 () Bool)

(assert (=> bm!630674 (= call!630679 (isEmpty!38874 (_2!37131 lt!2476377)))))

(declare-fun b!6942633 () Bool)

(declare-fun res!2832143 () Bool)

(assert (=> b!6942633 (=> res!2832143 e!4176336)))

(assert (=> b!6942633 (= res!2832143 (not ((_ is ElementMatch!16971) r3!135)))))

(assert (=> b!6942633 (= e!4176337 e!4176336)))

(declare-fun d!2168035 () Bool)

(declare-fun e!4176332 () Bool)

(assert (=> d!2168035 e!4176332))

(declare-fun c!1288152 () Bool)

(assert (=> d!2168035 (= c!1288152 ((_ is EmptyExpr!16971) r3!135))))

(assert (=> d!2168035 (= lt!2476415 e!4176333)))

(declare-fun c!1288151 () Bool)

(assert (=> d!2168035 (= c!1288151 (isEmpty!38874 (_2!37131 lt!2476377)))))

(assert (=> d!2168035 (validRegex!8677 r3!135)))

(assert (=> d!2168035 (= (matchR!9110 r3!135 (_2!37131 lt!2476377)) lt!2476415)))

(declare-fun b!6942634 () Bool)

(assert (=> b!6942634 (= e!4176332 e!4176337)))

(declare-fun c!1288150 () Bool)

(assert (=> b!6942634 (= c!1288150 ((_ is EmptyLang!16971) r3!135))))

(declare-fun b!6942635 () Bool)

(assert (=> b!6942635 (= e!4176336 e!4176334)))

(declare-fun res!2832145 () Bool)

(assert (=> b!6942635 (=> (not res!2832145) (not e!4176334))))

(assert (=> b!6942635 (= res!2832145 (not lt!2476415))))

(declare-fun b!6942636 () Bool)

(declare-fun res!2832142 () Bool)

(assert (=> b!6942636 (=> (not res!2832142) (not e!4176335))))

(assert (=> b!6942636 (= res!2832142 (not call!630679))))

(declare-fun b!6942637 () Bool)

(assert (=> b!6942637 (= e!4176332 (= lt!2476415 call!630679))))

(declare-fun b!6942638 () Bool)

(assert (=> b!6942638 (= e!4176333 (matchR!9110 (derivativeStep!5461 r3!135 (head!13914 (_2!37131 lt!2476377))) (tail!12966 (_2!37131 lt!2476377))))))

(declare-fun b!6942639 () Bool)

(declare-fun res!2832139 () Bool)

(assert (=> b!6942639 (=> (not res!2832139) (not e!4176335))))

(assert (=> b!6942639 (= res!2832139 (isEmpty!38874 (tail!12966 (_2!37131 lt!2476377))))))

(assert (= (and d!2168035 c!1288151) b!6942631))

(assert (= (and d!2168035 (not c!1288151)) b!6942638))

(assert (= (and d!2168035 c!1288152) b!6942637))

(assert (= (and d!2168035 (not c!1288152)) b!6942634))

(assert (= (and b!6942634 c!1288150) b!6942630))

(assert (= (and b!6942634 (not c!1288150)) b!6942633))

(assert (= (and b!6942633 (not res!2832143)) b!6942632))

(assert (= (and b!6942632 res!2832141) b!6942636))

(assert (= (and b!6942636 res!2832142) b!6942639))

(assert (= (and b!6942639 res!2832139) b!6942629))

(assert (= (and b!6942632 (not res!2832144)) b!6942635))

(assert (= (and b!6942635 res!2832145) b!6942628))

(assert (= (and b!6942628 (not res!2832140)) b!6942627))

(assert (= (and b!6942627 (not res!2832146)) b!6942626))

(assert (= (or b!6942637 b!6942636 b!6942628) bm!630674))

(declare-fun m!7647492 () Bool)

(assert (=> bm!630674 m!7647492))

(declare-fun m!7647494 () Bool)

(assert (=> b!6942626 m!7647494))

(declare-fun m!7647496 () Bool)

(assert (=> b!6942639 m!7647496))

(assert (=> b!6942639 m!7647496))

(declare-fun m!7647498 () Bool)

(assert (=> b!6942639 m!7647498))

(declare-fun m!7647500 () Bool)

(assert (=> b!6942631 m!7647500))

(assert (=> b!6942627 m!7647496))

(assert (=> b!6942627 m!7647496))

(assert (=> b!6942627 m!7647498))

(assert (=> b!6942638 m!7647494))

(assert (=> b!6942638 m!7647494))

(declare-fun m!7647502 () Bool)

(assert (=> b!6942638 m!7647502))

(assert (=> b!6942638 m!7647496))

(assert (=> b!6942638 m!7647502))

(assert (=> b!6942638 m!7647496))

(declare-fun m!7647504 () Bool)

(assert (=> b!6942638 m!7647504))

(assert (=> b!6942629 m!7647494))

(assert (=> d!2168035 m!7647492))

(assert (=> d!2168035 m!7647324))

(assert (=> b!6942379 d!2168035))

(declare-fun bs!1855657 () Bool)

(declare-fun d!2168037 () Bool)

(assert (= bs!1855657 (and d!2168037 b!6942622)))

(declare-fun lambda!395700 () Int)

(assert (=> bs!1855657 (not (= lambda!395700 lambda!395690))))

(declare-fun bs!1855658 () Bool)

(assert (= bs!1855658 (and d!2168037 b!6942379)))

(assert (=> bs!1855658 (not (= lambda!395700 lambda!395657))))

(declare-fun bs!1855659 () Bool)

(assert (= bs!1855659 (and d!2168037 d!2167991)))

(assert (=> bs!1855659 (= (and (= (_2!37131 lt!2476358) s!14361) (= r2!6280 lt!2476370)) (= lambda!395700 lambda!395674))))

(declare-fun bs!1855660 () Bool)

(assert (= bs!1855660 (and d!2168037 b!6942620)))

(assert (=> bs!1855660 (not (= lambda!395700 lambda!395693))))

(assert (=> bs!1855658 (not (= lambda!395700 lambda!395659))))

(assert (=> bs!1855658 (= lambda!395700 lambda!395656)))

(assert (=> bs!1855658 (= (and (= (_2!37131 lt!2476358) lt!2476355) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395700 lambda!395658))))

(assert (=> bs!1855658 (= (and (= (_2!37131 lt!2476358) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2476353)) (= lambda!395700 lambda!395654))))

(assert (=> bs!1855658 (not (= lambda!395700 lambda!395655))))

(assert (=> bs!1855658 (= (and (= (_2!37131 lt!2476358) s!14361) (= r2!6280 lt!2476370)) (= lambda!395700 lambda!395660))))

(assert (=> d!2168037 true))

(assert (=> d!2168037 true))

(assert (=> d!2168037 true))

(declare-fun lambda!395701 () Int)

(assert (=> bs!1855657 (not (= lambda!395701 lambda!395690))))

(assert (=> bs!1855658 (= lambda!395701 lambda!395657)))

(assert (=> bs!1855659 (not (= lambda!395701 lambda!395674))))

(assert (=> bs!1855660 (= (and (= (_2!37131 lt!2476358) lt!2476355) (= r2!6280 (regOne!34454 lt!2476370)) (= r3!135 (regTwo!34454 lt!2476370))) (= lambda!395701 lambda!395693))))

(declare-fun bs!1855662 () Bool)

(assert (= bs!1855662 d!2168037))

(assert (=> bs!1855662 (not (= lambda!395701 lambda!395700))))

(assert (=> bs!1855658 (= (and (= (_2!37131 lt!2476358) lt!2476355) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395701 lambda!395659))))

(assert (=> bs!1855658 (not (= lambda!395701 lambda!395656))))

(assert (=> bs!1855658 (not (= lambda!395701 lambda!395658))))

(assert (=> bs!1855658 (not (= lambda!395701 lambda!395654))))

(assert (=> bs!1855658 (= (and (= (_2!37131 lt!2476358) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2476353)) (= lambda!395701 lambda!395655))))

(assert (=> bs!1855658 (not (= lambda!395701 lambda!395660))))

(assert (=> d!2168037 true))

(assert (=> d!2168037 true))

(assert (=> d!2168037 true))

(assert (=> d!2168037 (= (Exists!3971 lambda!395700) (Exists!3971 lambda!395701))))

(declare-fun lt!2476427 () Unit!160672)

(declare-fun choose!51732 (Regex!16971 Regex!16971 List!66724) Unit!160672)

(assert (=> d!2168037 (= lt!2476427 (choose!51732 r2!6280 r3!135 (_2!37131 lt!2476358)))))

(assert (=> d!2168037 (validRegex!8677 r2!6280)))

(assert (=> d!2168037 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2432 r2!6280 r3!135 (_2!37131 lt!2476358)) lt!2476427)))

(declare-fun m!7647550 () Bool)

(assert (=> bs!1855662 m!7647550))

(declare-fun m!7647552 () Bool)

(assert (=> bs!1855662 m!7647552))

(declare-fun m!7647554 () Bool)

(assert (=> bs!1855662 m!7647554))

(assert (=> bs!1855662 m!7647332))

(assert (=> b!6942379 d!2168037))

(declare-fun bs!1855663 () Bool)

(declare-fun d!2168047 () Bool)

(assert (= bs!1855663 (and d!2168047 b!6942622)))

(declare-fun lambda!395702 () Int)

(assert (=> bs!1855663 (not (= lambda!395702 lambda!395690))))

(declare-fun bs!1855664 () Bool)

(assert (= bs!1855664 (and d!2168047 d!2167991)))

(assert (=> bs!1855664 (= (and (= lt!2476355 s!14361) (= r1!6342 lt!2476370) (= r2!6280 r3!135)) (= lambda!395702 lambda!395674))))

(declare-fun bs!1855665 () Bool)

(assert (= bs!1855665 (and d!2168047 b!6942620)))

(assert (=> bs!1855665 (not (= lambda!395702 lambda!395693))))

(declare-fun bs!1855666 () Bool)

(assert (= bs!1855666 (and d!2168047 d!2168037)))

(assert (=> bs!1855666 (= (and (= lt!2476355 (_2!37131 lt!2476358)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395702 lambda!395700))))

(declare-fun bs!1855667 () Bool)

(assert (= bs!1855667 (and d!2168047 b!6942379)))

(assert (=> bs!1855667 (not (= lambda!395702 lambda!395659))))

(assert (=> bs!1855667 (= (and (= lt!2476355 (_2!37131 lt!2476358)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395702 lambda!395656))))

(assert (=> bs!1855667 (= lambda!395702 lambda!395658)))

(assert (=> bs!1855667 (= (and (= lt!2476355 s!14361) (= r2!6280 lt!2476353)) (= lambda!395702 lambda!395654))))

(assert (=> bs!1855667 (not (= lambda!395702 lambda!395655))))

(assert (=> bs!1855667 (= (and (= lt!2476355 s!14361) (= r1!6342 lt!2476370) (= r2!6280 r3!135)) (= lambda!395702 lambda!395660))))

(assert (=> bs!1855667 (not (= lambda!395702 lambda!395657))))

(assert (=> bs!1855666 (not (= lambda!395702 lambda!395701))))

(assert (=> d!2168047 true))

(assert (=> d!2168047 true))

(assert (=> d!2168047 true))

(assert (=> d!2168047 (= (isDefined!13441 (findConcatSeparation!3154 r1!6342 r2!6280 Nil!66600 lt!2476355 lt!2476355)) (Exists!3971 lambda!395702))))

(declare-fun lt!2476432 () Unit!160672)

(assert (=> d!2168047 (= lt!2476432 (choose!51731 r1!6342 r2!6280 lt!2476355))))

(assert (=> d!2168047 (validRegex!8677 r1!6342)))

(assert (=> d!2168047 (= (lemmaFindConcatSeparationEquivalentToExists!2912 r1!6342 r2!6280 lt!2476355) lt!2476432)))

(declare-fun bs!1855668 () Bool)

(assert (= bs!1855668 d!2168047))

(assert (=> bs!1855668 m!7647274))

(assert (=> bs!1855668 m!7647276))

(assert (=> bs!1855668 m!7647274))

(declare-fun m!7647592 () Bool)

(assert (=> bs!1855668 m!7647592))

(assert (=> bs!1855668 m!7647334))

(declare-fun m!7647594 () Bool)

(assert (=> bs!1855668 m!7647594))

(assert (=> b!6942379 d!2168047))

(declare-fun b!6942786 () Bool)

(declare-fun e!4176422 () Option!16740)

(assert (=> b!6942786 (= e!4176422 (Some!16739 (tuple2!67657 Nil!66600 s!14361)))))

(declare-fun b!6942787 () Bool)

(declare-fun res!2832225 () Bool)

(declare-fun e!4176420 () Bool)

(assert (=> b!6942787 (=> (not res!2832225) (not e!4176420))))

(declare-fun lt!2476454 () Option!16740)

(assert (=> b!6942787 (= res!2832225 (matchR!9110 lt!2476370 (_1!37131 (get!23393 lt!2476454))))))

(declare-fun b!6942788 () Bool)

(declare-fun e!4176418 () Bool)

(assert (=> b!6942788 (= e!4176418 (matchR!9110 r3!135 s!14361))))

(declare-fun b!6942789 () Bool)

(declare-fun e!4176419 () Option!16740)

(assert (=> b!6942789 (= e!4176422 e!4176419)))

(declare-fun c!1288188 () Bool)

(assert (=> b!6942789 (= c!1288188 ((_ is Nil!66600) s!14361))))

(declare-fun d!2168053 () Bool)

(declare-fun e!4176421 () Bool)

(assert (=> d!2168053 e!4176421))

(declare-fun res!2832226 () Bool)

(assert (=> d!2168053 (=> res!2832226 e!4176421)))

(assert (=> d!2168053 (= res!2832226 e!4176420)))

(declare-fun res!2832229 () Bool)

(assert (=> d!2168053 (=> (not res!2832229) (not e!4176420))))

(assert (=> d!2168053 (= res!2832229 (isDefined!13441 lt!2476454))))

(assert (=> d!2168053 (= lt!2476454 e!4176422)))

(declare-fun c!1288187 () Bool)

(assert (=> d!2168053 (= c!1288187 e!4176418)))

(declare-fun res!2832228 () Bool)

(assert (=> d!2168053 (=> (not res!2832228) (not e!4176418))))

(assert (=> d!2168053 (= res!2832228 (matchR!9110 lt!2476370 Nil!66600))))

(assert (=> d!2168053 (validRegex!8677 lt!2476370)))

(assert (=> d!2168053 (= (findConcatSeparation!3154 lt!2476370 r3!135 Nil!66600 s!14361 s!14361) lt!2476454)))

(declare-fun b!6942790 () Bool)

(declare-fun lt!2476456 () Unit!160672)

(declare-fun lt!2476455 () Unit!160672)

(assert (=> b!6942790 (= lt!2476456 lt!2476455)))

(assert (=> b!6942790 (= (++!15010 (++!15010 Nil!66600 (Cons!66600 (h!73048 s!14361) Nil!66600)) (t!380467 s!14361)) s!14361)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2864 (List!66724 C!34212 List!66724 List!66724) Unit!160672)

(assert (=> b!6942790 (= lt!2476455 (lemmaMoveElementToOtherListKeepsConcatEq!2864 Nil!66600 (h!73048 s!14361) (t!380467 s!14361) s!14361))))

(assert (=> b!6942790 (= e!4176419 (findConcatSeparation!3154 lt!2476370 r3!135 (++!15010 Nil!66600 (Cons!66600 (h!73048 s!14361) Nil!66600)) (t!380467 s!14361) s!14361))))

(declare-fun b!6942791 () Bool)

(assert (=> b!6942791 (= e!4176419 None!16739)))

(declare-fun b!6942792 () Bool)

(assert (=> b!6942792 (= e!4176421 (not (isDefined!13441 lt!2476454)))))

(declare-fun b!6942793 () Bool)

(assert (=> b!6942793 (= e!4176420 (= (++!15010 (_1!37131 (get!23393 lt!2476454)) (_2!37131 (get!23393 lt!2476454))) s!14361))))

(declare-fun b!6942794 () Bool)

(declare-fun res!2832227 () Bool)

(assert (=> b!6942794 (=> (not res!2832227) (not e!4176420))))

(assert (=> b!6942794 (= res!2832227 (matchR!9110 r3!135 (_2!37131 (get!23393 lt!2476454))))))

(assert (= (and d!2168053 res!2832228) b!6942788))

(assert (= (and d!2168053 c!1288187) b!6942786))

(assert (= (and d!2168053 (not c!1288187)) b!6942789))

(assert (= (and b!6942789 c!1288188) b!6942791))

(assert (= (and b!6942789 (not c!1288188)) b!6942790))

(assert (= (and d!2168053 res!2832229) b!6942787))

(assert (= (and b!6942787 res!2832225) b!6942794))

(assert (= (and b!6942794 res!2832227) b!6942793))

(assert (= (and d!2168053 (not res!2832226)) b!6942792))

(declare-fun m!7647672 () Bool)

(assert (=> b!6942787 m!7647672))

(declare-fun m!7647674 () Bool)

(assert (=> b!6942787 m!7647674))

(declare-fun m!7647676 () Bool)

(assert (=> b!6942792 m!7647676))

(assert (=> b!6942794 m!7647672))

(declare-fun m!7647678 () Bool)

(assert (=> b!6942794 m!7647678))

(declare-fun m!7647680 () Bool)

(assert (=> b!6942790 m!7647680))

(assert (=> b!6942790 m!7647680))

(declare-fun m!7647682 () Bool)

(assert (=> b!6942790 m!7647682))

(declare-fun m!7647684 () Bool)

(assert (=> b!6942790 m!7647684))

(assert (=> b!6942790 m!7647680))

(declare-fun m!7647686 () Bool)

(assert (=> b!6942790 m!7647686))

(assert (=> d!2168053 m!7647676))

(declare-fun m!7647688 () Bool)

(assert (=> d!2168053 m!7647688))

(assert (=> d!2168053 m!7647404))

(assert (=> b!6942793 m!7647672))

(declare-fun m!7647692 () Bool)

(assert (=> b!6942793 m!7647692))

(declare-fun m!7647696 () Bool)

(assert (=> b!6942788 m!7647696))

(assert (=> b!6942379 d!2168053))

(declare-fun d!2168079 () Bool)

(declare-fun isEmpty!38875 (Option!16740) Bool)

(assert (=> d!2168079 (= (isDefined!13441 (findConcatSeparation!3154 lt!2476370 r3!135 Nil!66600 s!14361 s!14361)) (not (isEmpty!38875 (findConcatSeparation!3154 lt!2476370 r3!135 Nil!66600 s!14361 s!14361))))))

(declare-fun bs!1855757 () Bool)

(assert (= bs!1855757 d!2168079))

(assert (=> bs!1855757 m!7647280))

(declare-fun m!7647706 () Bool)

(assert (=> bs!1855757 m!7647706))

(assert (=> b!6942379 d!2168079))

(declare-fun d!2168085 () Bool)

(assert (=> d!2168085 (= (Exists!3971 lambda!395660) (choose!51727 lambda!395660))))

(declare-fun bs!1855758 () Bool)

(assert (= bs!1855758 d!2168085))

(declare-fun m!7647708 () Bool)

(assert (=> bs!1855758 m!7647708))

(assert (=> b!6942379 d!2168085))

(declare-fun bs!1855760 () Bool)

(declare-fun d!2168087 () Bool)

(assert (= bs!1855760 (and d!2168087 d!2168047)))

(declare-fun lambda!395709 () Int)

(assert (=> bs!1855760 (= lambda!395709 lambda!395702)))

(declare-fun bs!1855761 () Bool)

(assert (= bs!1855761 (and d!2168087 b!6942622)))

(assert (=> bs!1855761 (not (= lambda!395709 lambda!395690))))

(declare-fun bs!1855762 () Bool)

(assert (= bs!1855762 (and d!2168087 d!2167991)))

(assert (=> bs!1855762 (= (and (= lt!2476355 s!14361) (= r1!6342 lt!2476370) (= r2!6280 r3!135)) (= lambda!395709 lambda!395674))))

(declare-fun bs!1855763 () Bool)

(assert (= bs!1855763 (and d!2168087 b!6942620)))

(assert (=> bs!1855763 (not (= lambda!395709 lambda!395693))))

(declare-fun bs!1855764 () Bool)

(assert (= bs!1855764 (and d!2168087 d!2168037)))

(assert (=> bs!1855764 (= (and (= lt!2476355 (_2!37131 lt!2476358)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395709 lambda!395700))))

(declare-fun bs!1855765 () Bool)

(assert (= bs!1855765 (and d!2168087 b!6942379)))

(assert (=> bs!1855765 (not (= lambda!395709 lambda!395659))))

(assert (=> bs!1855765 (= (and (= lt!2476355 (_2!37131 lt!2476358)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395709 lambda!395656))))

(assert (=> bs!1855765 (= lambda!395709 lambda!395658)))

(assert (=> bs!1855765 (= (and (= lt!2476355 s!14361) (= r2!6280 lt!2476353)) (= lambda!395709 lambda!395654))))

(assert (=> bs!1855765 (not (= lambda!395709 lambda!395655))))

(assert (=> bs!1855765 (= (and (= lt!2476355 s!14361) (= r1!6342 lt!2476370) (= r2!6280 r3!135)) (= lambda!395709 lambda!395660))))

(assert (=> bs!1855765 (not (= lambda!395709 lambda!395657))))

(assert (=> bs!1855764 (not (= lambda!395709 lambda!395701))))

(assert (=> d!2168087 true))

(assert (=> d!2168087 true))

(assert (=> d!2168087 true))

(declare-fun lambda!395710 () Int)

(assert (=> bs!1855760 (not (= lambda!395710 lambda!395702))))

(assert (=> bs!1855761 (not (= lambda!395710 lambda!395690))))

(assert (=> bs!1855762 (not (= lambda!395710 lambda!395674))))

(assert (=> bs!1855763 (= (and (= r1!6342 (regOne!34454 lt!2476370)) (= r2!6280 (regTwo!34454 lt!2476370))) (= lambda!395710 lambda!395693))))

(assert (=> bs!1855764 (not (= lambda!395710 lambda!395700))))

(assert (=> bs!1855765 (= lambda!395710 lambda!395659)))

(assert (=> bs!1855765 (not (= lambda!395710 lambda!395656))))

(declare-fun bs!1855766 () Bool)

(assert (= bs!1855766 d!2168087))

(assert (=> bs!1855766 (not (= lambda!395710 lambda!395709))))

(assert (=> bs!1855765 (not (= lambda!395710 lambda!395658))))

(assert (=> bs!1855765 (not (= lambda!395710 lambda!395654))))

(assert (=> bs!1855765 (= (and (= lt!2476355 s!14361) (= r2!6280 lt!2476353)) (= lambda!395710 lambda!395655))))

(assert (=> bs!1855765 (not (= lambda!395710 lambda!395660))))

(assert (=> bs!1855765 (= (and (= lt!2476355 (_2!37131 lt!2476358)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395710 lambda!395657))))

(assert (=> bs!1855764 (= (and (= lt!2476355 (_2!37131 lt!2476358)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395710 lambda!395701))))

(assert (=> d!2168087 true))

(assert (=> d!2168087 true))

(assert (=> d!2168087 true))

(assert (=> d!2168087 (= (Exists!3971 lambda!395709) (Exists!3971 lambda!395710))))

(declare-fun lt!2476462 () Unit!160672)

(assert (=> d!2168087 (= lt!2476462 (choose!51732 r1!6342 r2!6280 lt!2476355))))

(assert (=> d!2168087 (validRegex!8677 r1!6342)))

(assert (=> d!2168087 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2432 r1!6342 r2!6280 lt!2476355) lt!2476462)))

(declare-fun m!7647734 () Bool)

(assert (=> bs!1855766 m!7647734))

(declare-fun m!7647736 () Bool)

(assert (=> bs!1855766 m!7647736))

(declare-fun m!7647738 () Bool)

(assert (=> bs!1855766 m!7647738))

(assert (=> bs!1855766 m!7647334))

(assert (=> b!6942379 d!2168087))

(declare-fun bs!1855767 () Bool)

(declare-fun d!2168093 () Bool)

(assert (= bs!1855767 (and d!2168093 d!2168047)))

(declare-fun lambda!395711 () Int)

(assert (=> bs!1855767 (= (and (= s!14361 lt!2476355) (= lt!2476353 r2!6280)) (= lambda!395711 lambda!395702))))

(declare-fun bs!1855768 () Bool)

(assert (= bs!1855768 (and d!2168093 b!6942622)))

(assert (=> bs!1855768 (not (= lambda!395711 lambda!395690))))

(declare-fun bs!1855769 () Bool)

(assert (= bs!1855769 (and d!2168093 d!2167991)))

(assert (=> bs!1855769 (= (and (= r1!6342 lt!2476370) (= lt!2476353 r3!135)) (= lambda!395711 lambda!395674))))

(declare-fun bs!1855770 () Bool)

(assert (= bs!1855770 (and d!2168093 b!6942620)))

(assert (=> bs!1855770 (not (= lambda!395711 lambda!395693))))

(declare-fun bs!1855771 () Bool)

(assert (= bs!1855771 (and d!2168093 d!2168037)))

(assert (=> bs!1855771 (= (and (= s!14361 (_2!37131 lt!2476358)) (= r1!6342 r2!6280) (= lt!2476353 r3!135)) (= lambda!395711 lambda!395700))))

(declare-fun bs!1855772 () Bool)

(assert (= bs!1855772 (and d!2168093 b!6942379)))

(assert (=> bs!1855772 (not (= lambda!395711 lambda!395659))))

(assert (=> bs!1855772 (= (and (= s!14361 (_2!37131 lt!2476358)) (= r1!6342 r2!6280) (= lt!2476353 r3!135)) (= lambda!395711 lambda!395656))))

(declare-fun bs!1855773 () Bool)

(assert (= bs!1855773 (and d!2168093 d!2168087)))

(assert (=> bs!1855773 (= (and (= s!14361 lt!2476355) (= lt!2476353 r2!6280)) (= lambda!395711 lambda!395709))))

(assert (=> bs!1855773 (not (= lambda!395711 lambda!395710))))

(assert (=> bs!1855772 (= (and (= s!14361 lt!2476355) (= lt!2476353 r2!6280)) (= lambda!395711 lambda!395658))))

(assert (=> bs!1855772 (= lambda!395711 lambda!395654)))

(assert (=> bs!1855772 (not (= lambda!395711 lambda!395655))))

(assert (=> bs!1855772 (= (and (= r1!6342 lt!2476370) (= lt!2476353 r3!135)) (= lambda!395711 lambda!395660))))

(assert (=> bs!1855772 (not (= lambda!395711 lambda!395657))))

(assert (=> bs!1855771 (not (= lambda!395711 lambda!395701))))

(assert (=> d!2168093 true))

(assert (=> d!2168093 true))

(assert (=> d!2168093 true))

(assert (=> d!2168093 (= (isDefined!13441 (findConcatSeparation!3154 r1!6342 lt!2476353 Nil!66600 s!14361 s!14361)) (Exists!3971 lambda!395711))))

(declare-fun lt!2476463 () Unit!160672)

(assert (=> d!2168093 (= lt!2476463 (choose!51731 r1!6342 lt!2476353 s!14361))))

(assert (=> d!2168093 (validRegex!8677 r1!6342)))

(assert (=> d!2168093 (= (lemmaFindConcatSeparationEquivalentToExists!2912 r1!6342 lt!2476353 s!14361) lt!2476463)))

(declare-fun bs!1855774 () Bool)

(assert (= bs!1855774 d!2168093))

(assert (=> bs!1855774 m!7647330))

(declare-fun m!7647746 () Bool)

(assert (=> bs!1855774 m!7647746))

(assert (=> bs!1855774 m!7647330))

(declare-fun m!7647748 () Bool)

(assert (=> bs!1855774 m!7647748))

(assert (=> bs!1855774 m!7647334))

(declare-fun m!7647750 () Bool)

(assert (=> bs!1855774 m!7647750))

(assert (=> b!6942379 d!2168093))

(declare-fun bs!1855775 () Bool)

(declare-fun d!2168097 () Bool)

(assert (= bs!1855775 (and d!2168097 d!2168047)))

(declare-fun lambda!395712 () Int)

(assert (=> bs!1855775 (= (and (= (_2!37131 lt!2476358) lt!2476355) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395712 lambda!395702))))

(declare-fun bs!1855777 () Bool)

(assert (= bs!1855777 (and d!2168097 b!6942622)))

(assert (=> bs!1855777 (not (= lambda!395712 lambda!395690))))

(declare-fun bs!1855778 () Bool)

(assert (= bs!1855778 (and d!2168097 d!2167991)))

(assert (=> bs!1855778 (= (and (= (_2!37131 lt!2476358) s!14361) (= r2!6280 lt!2476370)) (= lambda!395712 lambda!395674))))

(declare-fun bs!1855779 () Bool)

(assert (= bs!1855779 (and d!2168097 b!6942620)))

(assert (=> bs!1855779 (not (= lambda!395712 lambda!395693))))

(declare-fun bs!1855780 () Bool)

(assert (= bs!1855780 (and d!2168097 d!2168037)))

(assert (=> bs!1855780 (= lambda!395712 lambda!395700)))

(declare-fun bs!1855781 () Bool)

(assert (= bs!1855781 (and d!2168097 b!6942379)))

(assert (=> bs!1855781 (not (= lambda!395712 lambda!395659))))

(assert (=> bs!1855781 (= lambda!395712 lambda!395656)))

(declare-fun bs!1855782 () Bool)

(assert (= bs!1855782 (and d!2168097 d!2168087)))

(assert (=> bs!1855782 (= (and (= (_2!37131 lt!2476358) lt!2476355) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395712 lambda!395709))))

(assert (=> bs!1855781 (= (and (= (_2!37131 lt!2476358) lt!2476355) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395712 lambda!395658))))

(assert (=> bs!1855781 (= (and (= (_2!37131 lt!2476358) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2476353)) (= lambda!395712 lambda!395654))))

(assert (=> bs!1855781 (not (= lambda!395712 lambda!395655))))

(assert (=> bs!1855781 (= (and (= (_2!37131 lt!2476358) s!14361) (= r2!6280 lt!2476370)) (= lambda!395712 lambda!395660))))

(assert (=> bs!1855781 (not (= lambda!395712 lambda!395657))))

(assert (=> bs!1855780 (not (= lambda!395712 lambda!395701))))

(assert (=> bs!1855782 (not (= lambda!395712 lambda!395710))))

(declare-fun bs!1855783 () Bool)

(assert (= bs!1855783 (and d!2168097 d!2168093)))

(assert (=> bs!1855783 (= (and (= (_2!37131 lt!2476358) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2476353)) (= lambda!395712 lambda!395711))))

(assert (=> d!2168097 true))

(assert (=> d!2168097 true))

(assert (=> d!2168097 true))

(assert (=> d!2168097 (= (isDefined!13441 (findConcatSeparation!3154 r2!6280 r3!135 Nil!66600 (_2!37131 lt!2476358) (_2!37131 lt!2476358))) (Exists!3971 lambda!395712))))

(declare-fun lt!2476464 () Unit!160672)

(assert (=> d!2168097 (= lt!2476464 (choose!51731 r2!6280 r3!135 (_2!37131 lt!2476358)))))

(assert (=> d!2168097 (validRegex!8677 r2!6280)))

(assert (=> d!2168097 (= (lemmaFindConcatSeparationEquivalentToExists!2912 r2!6280 r3!135 (_2!37131 lt!2476358)) lt!2476464)))

(declare-fun bs!1855784 () Bool)

(assert (= bs!1855784 d!2168097))

(assert (=> bs!1855784 m!7647258))

(declare-fun m!7647774 () Bool)

(assert (=> bs!1855784 m!7647774))

(assert (=> bs!1855784 m!7647258))

(declare-fun m!7647776 () Bool)

(assert (=> bs!1855784 m!7647776))

(assert (=> bs!1855784 m!7647332))

(declare-fun m!7647778 () Bool)

(assert (=> bs!1855784 m!7647778))

(assert (=> b!6942379 d!2168097))

(declare-fun d!2168105 () Bool)

(assert (=> d!2168105 (= (matchR!9110 r3!135 (_2!37131 lt!2476377)) (matchRSpec!4028 r3!135 (_2!37131 lt!2476377)))))

(declare-fun lt!2476472 () Unit!160672)

(declare-fun choose!51733 (Regex!16971 List!66724) Unit!160672)

(assert (=> d!2168105 (= lt!2476472 (choose!51733 r3!135 (_2!37131 lt!2476377)))))

(assert (=> d!2168105 (validRegex!8677 r3!135)))

(assert (=> d!2168105 (= (mainMatchTheorem!4028 r3!135 (_2!37131 lt!2476377)) lt!2476472)))

(declare-fun bs!1855797 () Bool)

(assert (= bs!1855797 d!2168105))

(assert (=> bs!1855797 m!7647300))

(assert (=> bs!1855797 m!7647306))

(declare-fun m!7647800 () Bool)

(assert (=> bs!1855797 m!7647800))

(assert (=> bs!1855797 m!7647324))

(assert (=> b!6942379 d!2168105))

(declare-fun d!2168111 () Bool)

(assert (=> d!2168111 (isDefined!13441 (findConcatSeparation!3154 lt!2476370 r3!135 Nil!66600 s!14361 s!14361))))

(declare-fun lt!2476475 () Unit!160672)

(declare-fun choose!51734 (Regex!16971 Regex!16971 List!66724 List!66724 List!66724 List!66724 List!66724) Unit!160672)

(assert (=> d!2168111 (= lt!2476475 (choose!51734 lt!2476370 r3!135 lt!2476355 (_2!37131 lt!2476377) s!14361 Nil!66600 s!14361))))

(assert (=> d!2168111 (validRegex!8677 lt!2476370)))

(assert (=> d!2168111 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!114 lt!2476370 r3!135 lt!2476355 (_2!37131 lt!2476377) s!14361 Nil!66600 s!14361) lt!2476475)))

(declare-fun bs!1855818 () Bool)

(assert (= bs!1855818 d!2168111))

(assert (=> bs!1855818 m!7647280))

(assert (=> bs!1855818 m!7647280))

(assert (=> bs!1855818 m!7647284))

(declare-fun m!7647802 () Bool)

(assert (=> bs!1855818 m!7647802))

(assert (=> bs!1855818 m!7647404))

(assert (=> b!6942379 d!2168111))

(declare-fun b!6942878 () Bool)

(declare-fun e!4176477 () List!66724)

(assert (=> b!6942878 (= e!4176477 (_1!37131 lt!2476377))))

(declare-fun b!6942879 () Bool)

(assert (=> b!6942879 (= e!4176477 (Cons!66600 (h!73048 (_1!37131 lt!2476358)) (++!15010 (t!380467 (_1!37131 lt!2476358)) (_1!37131 lt!2476377))))))

(declare-fun lt!2476476 () List!66724)

(declare-fun b!6942881 () Bool)

(declare-fun e!4176478 () Bool)

(assert (=> b!6942881 (= e!4176478 (or (not (= (_1!37131 lt!2476377) Nil!66600)) (= lt!2476476 (_1!37131 lt!2476358))))))

(declare-fun d!2168113 () Bool)

(assert (=> d!2168113 e!4176478))

(declare-fun res!2832274 () Bool)

(assert (=> d!2168113 (=> (not res!2832274) (not e!4176478))))

(assert (=> d!2168113 (= res!2832274 (= (content!13107 lt!2476476) ((_ map or) (content!13107 (_1!37131 lt!2476358)) (content!13107 (_1!37131 lt!2476377)))))))

(assert (=> d!2168113 (= lt!2476476 e!4176477)))

(declare-fun c!1288209 () Bool)

(assert (=> d!2168113 (= c!1288209 ((_ is Nil!66600) (_1!37131 lt!2476358)))))

(assert (=> d!2168113 (= (++!15010 (_1!37131 lt!2476358) (_1!37131 lt!2476377)) lt!2476476)))

(declare-fun b!6942880 () Bool)

(declare-fun res!2832273 () Bool)

(assert (=> b!6942880 (=> (not res!2832273) (not e!4176478))))

(assert (=> b!6942880 (= res!2832273 (= (size!40804 lt!2476476) (+ (size!40804 (_1!37131 lt!2476358)) (size!40804 (_1!37131 lt!2476377)))))))

(assert (= (and d!2168113 c!1288209) b!6942878))

(assert (= (and d!2168113 (not c!1288209)) b!6942879))

(assert (= (and d!2168113 res!2832274) b!6942880))

(assert (= (and b!6942880 res!2832273) b!6942881))

(declare-fun m!7647804 () Bool)

(assert (=> b!6942879 m!7647804))

(declare-fun m!7647806 () Bool)

(assert (=> d!2168113 m!7647806))

(assert (=> d!2168113 m!7647348))

(declare-fun m!7647808 () Bool)

(assert (=> d!2168113 m!7647808))

(declare-fun m!7647810 () Bool)

(assert (=> b!6942880 m!7647810))

(assert (=> b!6942880 m!7647354))

(declare-fun m!7647812 () Bool)

(assert (=> b!6942880 m!7647812))

(assert (=> b!6942379 d!2168113))

(declare-fun d!2168115 () Bool)

(assert (=> d!2168115 (= (isDefined!13441 lt!2476356) (not (isEmpty!38875 lt!2476356)))))

(declare-fun bs!1855824 () Bool)

(assert (= bs!1855824 d!2168115))

(declare-fun m!7647814 () Bool)

(assert (=> bs!1855824 m!7647814))

(assert (=> b!6942379 d!2168115))

(declare-fun bs!1855828 () Bool)

(declare-fun d!2168117 () Bool)

(assert (= bs!1855828 (and d!2168117 d!2168047)))

(declare-fun lambda!395715 () Int)

(assert (=> bs!1855828 (= (and (= s!14361 lt!2476355) (= lt!2476353 r2!6280)) (= lambda!395715 lambda!395702))))

(declare-fun bs!1855829 () Bool)

(assert (= bs!1855829 (and d!2168117 d!2168097)))

(assert (=> bs!1855829 (= (and (= s!14361 (_2!37131 lt!2476358)) (= r1!6342 r2!6280) (= lt!2476353 r3!135)) (= lambda!395715 lambda!395712))))

(declare-fun bs!1855830 () Bool)

(assert (= bs!1855830 (and d!2168117 b!6942622)))

(assert (=> bs!1855830 (not (= lambda!395715 lambda!395690))))

(declare-fun bs!1855831 () Bool)

(assert (= bs!1855831 (and d!2168117 d!2167991)))

(assert (=> bs!1855831 (= (and (= r1!6342 lt!2476370) (= lt!2476353 r3!135)) (= lambda!395715 lambda!395674))))

(declare-fun bs!1855832 () Bool)

(assert (= bs!1855832 (and d!2168117 b!6942620)))

(assert (=> bs!1855832 (not (= lambda!395715 lambda!395693))))

(declare-fun bs!1855833 () Bool)

(assert (= bs!1855833 (and d!2168117 d!2168037)))

(assert (=> bs!1855833 (= (and (= s!14361 (_2!37131 lt!2476358)) (= r1!6342 r2!6280) (= lt!2476353 r3!135)) (= lambda!395715 lambda!395700))))

(declare-fun bs!1855834 () Bool)

(assert (= bs!1855834 (and d!2168117 b!6942379)))

(assert (=> bs!1855834 (not (= lambda!395715 lambda!395659))))

(assert (=> bs!1855834 (= (and (= s!14361 (_2!37131 lt!2476358)) (= r1!6342 r2!6280) (= lt!2476353 r3!135)) (= lambda!395715 lambda!395656))))

(declare-fun bs!1855835 () Bool)

(assert (= bs!1855835 (and d!2168117 d!2168087)))

(assert (=> bs!1855835 (= (and (= s!14361 lt!2476355) (= lt!2476353 r2!6280)) (= lambda!395715 lambda!395709))))

(assert (=> bs!1855834 (= (and (= s!14361 lt!2476355) (= lt!2476353 r2!6280)) (= lambda!395715 lambda!395658))))

(assert (=> bs!1855834 (= lambda!395715 lambda!395654)))

(assert (=> bs!1855834 (not (= lambda!395715 lambda!395655))))

(assert (=> bs!1855834 (= (and (= r1!6342 lt!2476370) (= lt!2476353 r3!135)) (= lambda!395715 lambda!395660))))

(assert (=> bs!1855834 (not (= lambda!395715 lambda!395657))))

(assert (=> bs!1855833 (not (= lambda!395715 lambda!395701))))

(assert (=> bs!1855835 (not (= lambda!395715 lambda!395710))))

(declare-fun bs!1855840 () Bool)

(assert (= bs!1855840 (and d!2168117 d!2168093)))

(assert (=> bs!1855840 (= lambda!395715 lambda!395711)))

(assert (=> d!2168117 true))

(assert (=> d!2168117 true))

(assert (=> d!2168117 true))

(declare-fun lambda!395717 () Int)

(assert (=> bs!1855828 (not (= lambda!395717 lambda!395702))))

(assert (=> bs!1855829 (not (= lambda!395717 lambda!395712))))

(assert (=> bs!1855831 (not (= lambda!395717 lambda!395674))))

(assert (=> bs!1855832 (= (and (= s!14361 lt!2476355) (= r1!6342 (regOne!34454 lt!2476370)) (= lt!2476353 (regTwo!34454 lt!2476370))) (= lambda!395717 lambda!395693))))

(assert (=> bs!1855833 (not (= lambda!395717 lambda!395700))))

(assert (=> bs!1855834 (= (and (= s!14361 lt!2476355) (= lt!2476353 r2!6280)) (= lambda!395717 lambda!395659))))

(assert (=> bs!1855834 (not (= lambda!395717 lambda!395656))))

(assert (=> bs!1855835 (not (= lambda!395717 lambda!395709))))

(assert (=> bs!1855834 (not (= lambda!395717 lambda!395658))))

(assert (=> bs!1855834 (not (= lambda!395717 lambda!395654))))

(assert (=> bs!1855834 (= lambda!395717 lambda!395655)))

(assert (=> bs!1855834 (not (= lambda!395717 lambda!395660))))

(declare-fun bs!1855853 () Bool)

(assert (= bs!1855853 d!2168117))

(assert (=> bs!1855853 (not (= lambda!395717 lambda!395715))))

(assert (=> bs!1855830 (not (= lambda!395717 lambda!395690))))

(assert (=> bs!1855834 (= (and (= s!14361 (_2!37131 lt!2476358)) (= r1!6342 r2!6280) (= lt!2476353 r3!135)) (= lambda!395717 lambda!395657))))

(assert (=> bs!1855833 (= (and (= s!14361 (_2!37131 lt!2476358)) (= r1!6342 r2!6280) (= lt!2476353 r3!135)) (= lambda!395717 lambda!395701))))

(assert (=> bs!1855835 (= (and (= s!14361 lt!2476355) (= lt!2476353 r2!6280)) (= lambda!395717 lambda!395710))))

(assert (=> bs!1855840 (not (= lambda!395717 lambda!395711))))

(assert (=> d!2168117 true))

(assert (=> d!2168117 true))

(assert (=> d!2168117 true))

(assert (=> d!2168117 (= (Exists!3971 lambda!395715) (Exists!3971 lambda!395717))))

(declare-fun lt!2476477 () Unit!160672)

(assert (=> d!2168117 (= lt!2476477 (choose!51732 r1!6342 lt!2476353 s!14361))))

(assert (=> d!2168117 (validRegex!8677 r1!6342)))

(assert (=> d!2168117 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2432 r1!6342 lt!2476353 s!14361) lt!2476477)))

(declare-fun m!7647822 () Bool)

(assert (=> bs!1855853 m!7647822))

(declare-fun m!7647824 () Bool)

(assert (=> bs!1855853 m!7647824))

(declare-fun m!7647826 () Bool)

(assert (=> bs!1855853 m!7647826))

(assert (=> bs!1855853 m!7647334))

(assert (=> b!6942379 d!2168117))

(declare-fun d!2168121 () Bool)

(assert (=> d!2168121 (= (matchR!9110 lt!2476353 (_2!37131 lt!2476358)) (matchRSpec!4028 lt!2476353 (_2!37131 lt!2476358)))))

(declare-fun lt!2476478 () Unit!160672)

(assert (=> d!2168121 (= lt!2476478 (choose!51733 lt!2476353 (_2!37131 lt!2476358)))))

(assert (=> d!2168121 (validRegex!8677 lt!2476353)))

(assert (=> d!2168121 (= (mainMatchTheorem!4028 lt!2476353 (_2!37131 lt!2476358)) lt!2476478)))

(declare-fun bs!1855859 () Bool)

(assert (= bs!1855859 d!2168121))

(assert (=> bs!1855859 m!7647296))

(assert (=> bs!1855859 m!7647294))

(declare-fun m!7647828 () Bool)

(assert (=> bs!1855859 m!7647828))

(assert (=> bs!1855859 m!7647326))

(assert (=> b!6942379 d!2168121))

(declare-fun d!2168123 () Bool)

(assert (=> d!2168123 (= (Exists!3971 lambda!395654) (choose!51727 lambda!395654))))

(declare-fun bs!1855860 () Bool)

(assert (= bs!1855860 d!2168123))

(declare-fun m!7647830 () Bool)

(assert (=> bs!1855860 m!7647830))

(assert (=> b!6942379 d!2168123))

(declare-fun d!2168125 () Bool)

(assert (=> d!2168125 (= (Exists!3971 lambda!395656) (choose!51727 lambda!395656))))

(declare-fun bs!1855861 () Bool)

(assert (= bs!1855861 d!2168125))

(declare-fun m!7647832 () Bool)

(assert (=> bs!1855861 m!7647832))

(assert (=> b!6942379 d!2168125))

(declare-fun d!2168127 () Bool)

(assert (=> d!2168127 (= (matchR!9110 lt!2476370 lt!2476355) (matchRSpec!4028 lt!2476370 lt!2476355))))

(declare-fun lt!2476479 () Unit!160672)

(assert (=> d!2168127 (= lt!2476479 (choose!51733 lt!2476370 lt!2476355))))

(assert (=> d!2168127 (validRegex!8677 lt!2476370)))

(assert (=> d!2168127 (= (mainMatchTheorem!4028 lt!2476370 lt!2476355) lt!2476479)))

(declare-fun bs!1855862 () Bool)

(assert (= bs!1855862 d!2168127))

(assert (=> bs!1855862 m!7647282))

(assert (=> bs!1855862 m!7647228))

(declare-fun m!7647834 () Bool)

(assert (=> bs!1855862 m!7647834))

(assert (=> bs!1855862 m!7647404))

(assert (=> b!6942379 d!2168127))

(declare-fun b!6942893 () Bool)

(declare-fun e!4176490 () Option!16740)

(assert (=> b!6942893 (= e!4176490 (Some!16739 (tuple2!67657 Nil!66600 (_2!37131 lt!2476358))))))

(declare-fun b!6942894 () Bool)

(declare-fun res!2832278 () Bool)

(declare-fun e!4176488 () Bool)

(assert (=> b!6942894 (=> (not res!2832278) (not e!4176488))))

(declare-fun lt!2476480 () Option!16740)

(assert (=> b!6942894 (= res!2832278 (matchR!9110 r2!6280 (_1!37131 (get!23393 lt!2476480))))))

(declare-fun b!6942895 () Bool)

(declare-fun e!4176486 () Bool)

(assert (=> b!6942895 (= e!4176486 (matchR!9110 r3!135 (_2!37131 lt!2476358)))))

(declare-fun b!6942896 () Bool)

(declare-fun e!4176487 () Option!16740)

(assert (=> b!6942896 (= e!4176490 e!4176487)))

(declare-fun c!1288215 () Bool)

(assert (=> b!6942896 (= c!1288215 ((_ is Nil!66600) (_2!37131 lt!2476358)))))

(declare-fun d!2168129 () Bool)

(declare-fun e!4176489 () Bool)

(assert (=> d!2168129 e!4176489))

(declare-fun res!2832279 () Bool)

(assert (=> d!2168129 (=> res!2832279 e!4176489)))

(assert (=> d!2168129 (= res!2832279 e!4176488)))

(declare-fun res!2832282 () Bool)

(assert (=> d!2168129 (=> (not res!2832282) (not e!4176488))))

(assert (=> d!2168129 (= res!2832282 (isDefined!13441 lt!2476480))))

(assert (=> d!2168129 (= lt!2476480 e!4176490)))

(declare-fun c!1288214 () Bool)

(assert (=> d!2168129 (= c!1288214 e!4176486)))

(declare-fun res!2832281 () Bool)

(assert (=> d!2168129 (=> (not res!2832281) (not e!4176486))))

(assert (=> d!2168129 (= res!2832281 (matchR!9110 r2!6280 Nil!66600))))

(assert (=> d!2168129 (validRegex!8677 r2!6280)))

(assert (=> d!2168129 (= (findConcatSeparation!3154 r2!6280 r3!135 Nil!66600 (_2!37131 lt!2476358) (_2!37131 lt!2476358)) lt!2476480)))

(declare-fun b!6942897 () Bool)

(declare-fun lt!2476482 () Unit!160672)

(declare-fun lt!2476481 () Unit!160672)

(assert (=> b!6942897 (= lt!2476482 lt!2476481)))

(assert (=> b!6942897 (= (++!15010 (++!15010 Nil!66600 (Cons!66600 (h!73048 (_2!37131 lt!2476358)) Nil!66600)) (t!380467 (_2!37131 lt!2476358))) (_2!37131 lt!2476358))))

(assert (=> b!6942897 (= lt!2476481 (lemmaMoveElementToOtherListKeepsConcatEq!2864 Nil!66600 (h!73048 (_2!37131 lt!2476358)) (t!380467 (_2!37131 lt!2476358)) (_2!37131 lt!2476358)))))

(assert (=> b!6942897 (= e!4176487 (findConcatSeparation!3154 r2!6280 r3!135 (++!15010 Nil!66600 (Cons!66600 (h!73048 (_2!37131 lt!2476358)) Nil!66600)) (t!380467 (_2!37131 lt!2476358)) (_2!37131 lt!2476358)))))

(declare-fun b!6942898 () Bool)

(assert (=> b!6942898 (= e!4176487 None!16739)))

(declare-fun b!6942899 () Bool)

(assert (=> b!6942899 (= e!4176489 (not (isDefined!13441 lt!2476480)))))

(declare-fun b!6942900 () Bool)

(assert (=> b!6942900 (= e!4176488 (= (++!15010 (_1!37131 (get!23393 lt!2476480)) (_2!37131 (get!23393 lt!2476480))) (_2!37131 lt!2476358)))))

(declare-fun b!6942901 () Bool)

(declare-fun res!2832280 () Bool)

(assert (=> b!6942901 (=> (not res!2832280) (not e!4176488))))

(assert (=> b!6942901 (= res!2832280 (matchR!9110 r3!135 (_2!37131 (get!23393 lt!2476480))))))

(assert (= (and d!2168129 res!2832281) b!6942895))

(assert (= (and d!2168129 c!1288214) b!6942893))

(assert (= (and d!2168129 (not c!1288214)) b!6942896))

(assert (= (and b!6942896 c!1288215) b!6942898))

(assert (= (and b!6942896 (not c!1288215)) b!6942897))

(assert (= (and d!2168129 res!2832282) b!6942894))

(assert (= (and b!6942894 res!2832278) b!6942901))

(assert (= (and b!6942901 res!2832280) b!6942900))

(assert (= (and d!2168129 (not res!2832279)) b!6942899))

(declare-fun m!7647836 () Bool)

(assert (=> b!6942894 m!7647836))

(declare-fun m!7647838 () Bool)

(assert (=> b!6942894 m!7647838))

(declare-fun m!7647840 () Bool)

(assert (=> b!6942899 m!7647840))

(assert (=> b!6942901 m!7647836))

(declare-fun m!7647842 () Bool)

(assert (=> b!6942901 m!7647842))

(declare-fun m!7647844 () Bool)

(assert (=> b!6942897 m!7647844))

(assert (=> b!6942897 m!7647844))

(declare-fun m!7647846 () Bool)

(assert (=> b!6942897 m!7647846))

(declare-fun m!7647848 () Bool)

(assert (=> b!6942897 m!7647848))

(assert (=> b!6942897 m!7647844))

(declare-fun m!7647850 () Bool)

(assert (=> b!6942897 m!7647850))

(assert (=> d!2168129 m!7647840))

(declare-fun m!7647852 () Bool)

(assert (=> d!2168129 m!7647852))

(assert (=> d!2168129 m!7647332))

(assert (=> b!6942900 m!7647836))

(declare-fun m!7647854 () Bool)

(assert (=> b!6942900 m!7647854))

(declare-fun m!7647856 () Bool)

(assert (=> b!6942895 m!7647856))

(assert (=> b!6942379 d!2168129))

(declare-fun bs!1855879 () Bool)

(declare-fun b!6942909 () Bool)

(assert (= bs!1855879 (and b!6942909 d!2168047)))

(declare-fun lambda!395719 () Int)

(assert (=> bs!1855879 (not (= lambda!395719 lambda!395702))))

(declare-fun bs!1855881 () Bool)

(assert (= bs!1855881 (and b!6942909 d!2168097)))

(assert (=> bs!1855881 (not (= lambda!395719 lambda!395712))))

(declare-fun bs!1855883 () Bool)

(assert (= bs!1855883 (and b!6942909 d!2167991)))

(assert (=> bs!1855883 (not (= lambda!395719 lambda!395674))))

(declare-fun bs!1855884 () Bool)

(assert (= bs!1855884 (and b!6942909 b!6942620)))

(assert (=> bs!1855884 (not (= lambda!395719 lambda!395693))))

(declare-fun bs!1855886 () Bool)

(assert (= bs!1855886 (and b!6942909 d!2168117)))

(assert (=> bs!1855886 (not (= lambda!395719 lambda!395717))))

(declare-fun bs!1855887 () Bool)

(assert (= bs!1855887 (and b!6942909 d!2168037)))

(assert (=> bs!1855887 (not (= lambda!395719 lambda!395700))))

(declare-fun bs!1855888 () Bool)

(assert (= bs!1855888 (and b!6942909 b!6942379)))

(assert (=> bs!1855888 (not (= lambda!395719 lambda!395659))))

(assert (=> bs!1855888 (not (= lambda!395719 lambda!395656))))

(declare-fun bs!1855891 () Bool)

(assert (= bs!1855891 (and b!6942909 d!2168087)))

(assert (=> bs!1855891 (not (= lambda!395719 lambda!395709))))

(assert (=> bs!1855888 (not (= lambda!395719 lambda!395658))))

(assert (=> bs!1855888 (not (= lambda!395719 lambda!395654))))

(assert (=> bs!1855888 (not (= lambda!395719 lambda!395655))))

(assert (=> bs!1855888 (not (= lambda!395719 lambda!395660))))

(assert (=> bs!1855886 (not (= lambda!395719 lambda!395715))))

(declare-fun bs!1855893 () Bool)

(assert (= bs!1855893 (and b!6942909 b!6942622)))

(assert (=> bs!1855893 (= (and (= (_1!37131 lt!2476358) lt!2476355) (= (reg!17300 r1!6342) (reg!17300 lt!2476370)) (= r1!6342 lt!2476370)) (= lambda!395719 lambda!395690))))

(assert (=> bs!1855888 (not (= lambda!395719 lambda!395657))))

(assert (=> bs!1855887 (not (= lambda!395719 lambda!395701))))

(assert (=> bs!1855891 (not (= lambda!395719 lambda!395710))))

(declare-fun bs!1855894 () Bool)

(assert (= bs!1855894 (and b!6942909 d!2168093)))

(assert (=> bs!1855894 (not (= lambda!395719 lambda!395711))))

(assert (=> b!6942909 true))

(assert (=> b!6942909 true))

(declare-fun bs!1855895 () Bool)

(declare-fun b!6942907 () Bool)

(assert (= bs!1855895 (and b!6942907 d!2168047)))

(declare-fun lambda!395720 () Int)

(assert (=> bs!1855895 (not (= lambda!395720 lambda!395702))))

(declare-fun bs!1855896 () Bool)

(assert (= bs!1855896 (and b!6942907 d!2168097)))

(assert (=> bs!1855896 (not (= lambda!395720 lambda!395712))))

(declare-fun bs!1855897 () Bool)

(assert (= bs!1855897 (and b!6942907 d!2167991)))

(assert (=> bs!1855897 (not (= lambda!395720 lambda!395674))))

(declare-fun bs!1855898 () Bool)

(assert (= bs!1855898 (and b!6942907 b!6942620)))

(assert (=> bs!1855898 (= (and (= (_1!37131 lt!2476358) lt!2476355) (= (regOne!34454 r1!6342) (regOne!34454 lt!2476370)) (= (regTwo!34454 r1!6342) (regTwo!34454 lt!2476370))) (= lambda!395720 lambda!395693))))

(declare-fun bs!1855900 () Bool)

(assert (= bs!1855900 (and b!6942907 d!2168117)))

(assert (=> bs!1855900 (= (and (= (_1!37131 lt!2476358) s!14361) (= (regOne!34454 r1!6342) r1!6342) (= (regTwo!34454 r1!6342) lt!2476353)) (= lambda!395720 lambda!395717))))

(declare-fun bs!1855901 () Bool)

(assert (= bs!1855901 (and b!6942907 d!2168037)))

(assert (=> bs!1855901 (not (= lambda!395720 lambda!395700))))

(declare-fun bs!1855902 () Bool)

(assert (= bs!1855902 (and b!6942907 b!6942379)))

(assert (=> bs!1855902 (= (and (= (_1!37131 lt!2476358) lt!2476355) (= (regOne!34454 r1!6342) r1!6342) (= (regTwo!34454 r1!6342) r2!6280)) (= lambda!395720 lambda!395659))))

(assert (=> bs!1855902 (not (= lambda!395720 lambda!395656))))

(declare-fun bs!1855903 () Bool)

(assert (= bs!1855903 (and b!6942907 d!2168087)))

(assert (=> bs!1855903 (not (= lambda!395720 lambda!395709))))

(assert (=> bs!1855902 (not (= lambda!395720 lambda!395658))))

(assert (=> bs!1855902 (not (= lambda!395720 lambda!395654))))

(assert (=> bs!1855902 (= (and (= (_1!37131 lt!2476358) s!14361) (= (regOne!34454 r1!6342) r1!6342) (= (regTwo!34454 r1!6342) lt!2476353)) (= lambda!395720 lambda!395655))))

(assert (=> bs!1855902 (not (= lambda!395720 lambda!395660))))

(assert (=> bs!1855900 (not (= lambda!395720 lambda!395715))))

(declare-fun bs!1855904 () Bool)

(assert (= bs!1855904 (and b!6942907 b!6942622)))

(assert (=> bs!1855904 (not (= lambda!395720 lambda!395690))))

(declare-fun bs!1855905 () Bool)

(assert (= bs!1855905 (and b!6942907 b!6942909)))

(assert (=> bs!1855905 (not (= lambda!395720 lambda!395719))))

(assert (=> bs!1855902 (= (and (= (_1!37131 lt!2476358) (_2!37131 lt!2476358)) (= (regOne!34454 r1!6342) r2!6280) (= (regTwo!34454 r1!6342) r3!135)) (= lambda!395720 lambda!395657))))

(assert (=> bs!1855901 (= (and (= (_1!37131 lt!2476358) (_2!37131 lt!2476358)) (= (regOne!34454 r1!6342) r2!6280) (= (regTwo!34454 r1!6342) r3!135)) (= lambda!395720 lambda!395701))))

(assert (=> bs!1855903 (= (and (= (_1!37131 lt!2476358) lt!2476355) (= (regOne!34454 r1!6342) r1!6342) (= (regTwo!34454 r1!6342) r2!6280)) (= lambda!395720 lambda!395710))))

(declare-fun bs!1855906 () Bool)

(assert (= bs!1855906 (and b!6942907 d!2168093)))

(assert (=> bs!1855906 (not (= lambda!395720 lambda!395711))))

(assert (=> b!6942907 true))

(assert (=> b!6942907 true))

(declare-fun b!6942902 () Bool)

(declare-fun e!4176492 () Bool)

(declare-fun e!4176494 () Bool)

(assert (=> b!6942902 (= e!4176492 e!4176494)))

(declare-fun res!2832284 () Bool)

(assert (=> b!6942902 (= res!2832284 (not ((_ is EmptyLang!16971) r1!6342)))))

(assert (=> b!6942902 (=> (not res!2832284) (not e!4176494))))

(declare-fun b!6942903 () Bool)

(declare-fun e!4176493 () Bool)

(assert (=> b!6942903 (= e!4176493 (matchRSpec!4028 (regTwo!34455 r1!6342) (_1!37131 lt!2476358)))))

(declare-fun b!6942904 () Bool)

(declare-fun res!2832283 () Bool)

(declare-fun e!4176496 () Bool)

(assert (=> b!6942904 (=> res!2832283 e!4176496)))

(declare-fun call!630705 () Bool)

(assert (=> b!6942904 (= res!2832283 call!630705)))

(declare-fun e!4176497 () Bool)

(assert (=> b!6942904 (= e!4176497 e!4176496)))

(declare-fun b!6942905 () Bool)

(assert (=> b!6942905 (= e!4176492 call!630705)))

(declare-fun b!6942906 () Bool)

(declare-fun c!1288218 () Bool)

(assert (=> b!6942906 (= c!1288218 ((_ is ElementMatch!16971) r1!6342))))

(declare-fun e!4176495 () Bool)

(assert (=> b!6942906 (= e!4176494 e!4176495)))

(declare-fun call!630704 () Bool)

(assert (=> b!6942907 (= e!4176497 call!630704)))

(declare-fun bm!630699 () Bool)

(assert (=> bm!630699 (= call!630705 (isEmpty!38874 (_1!37131 lt!2476358)))))

(declare-fun d!2168131 () Bool)

(declare-fun c!1288219 () Bool)

(assert (=> d!2168131 (= c!1288219 ((_ is EmptyExpr!16971) r1!6342))))

(assert (=> d!2168131 (= (matchRSpec!4028 r1!6342 (_1!37131 lt!2476358)) e!4176492)))

(declare-fun b!6942908 () Bool)

(declare-fun e!4176491 () Bool)

(assert (=> b!6942908 (= e!4176491 e!4176493)))

(declare-fun res!2832285 () Bool)

(assert (=> b!6942908 (= res!2832285 (matchRSpec!4028 (regOne!34455 r1!6342) (_1!37131 lt!2476358)))))

(assert (=> b!6942908 (=> res!2832285 e!4176493)))

(assert (=> b!6942909 (= e!4176496 call!630704)))

(declare-fun b!6942910 () Bool)

(assert (=> b!6942910 (= e!4176491 e!4176497)))

(declare-fun c!1288217 () Bool)

(assert (=> b!6942910 (= c!1288217 ((_ is Star!16971) r1!6342))))

(declare-fun b!6942911 () Bool)

(assert (=> b!6942911 (= e!4176495 (= (_1!37131 lt!2476358) (Cons!66600 (c!1288093 r1!6342) Nil!66600)))))

(declare-fun bm!630700 () Bool)

(assert (=> bm!630700 (= call!630704 (Exists!3971 (ite c!1288217 lambda!395719 lambda!395720)))))

(declare-fun b!6942912 () Bool)

(declare-fun c!1288216 () Bool)

(assert (=> b!6942912 (= c!1288216 ((_ is Union!16971) r1!6342))))

(assert (=> b!6942912 (= e!4176495 e!4176491)))

(assert (= (and d!2168131 c!1288219) b!6942905))

(assert (= (and d!2168131 (not c!1288219)) b!6942902))

(assert (= (and b!6942902 res!2832284) b!6942906))

(assert (= (and b!6942906 c!1288218) b!6942911))

(assert (= (and b!6942906 (not c!1288218)) b!6942912))

(assert (= (and b!6942912 c!1288216) b!6942908))

(assert (= (and b!6942912 (not c!1288216)) b!6942910))

(assert (= (and b!6942908 (not res!2832285)) b!6942903))

(assert (= (and b!6942910 c!1288217) b!6942904))

(assert (= (and b!6942910 (not c!1288217)) b!6942907))

(assert (= (and b!6942904 (not res!2832283)) b!6942909))

(assert (= (or b!6942909 b!6942907) bm!630700))

(assert (= (or b!6942905 b!6942904) bm!630699))

(declare-fun m!7647884 () Bool)

(assert (=> b!6942903 m!7647884))

(declare-fun m!7647886 () Bool)

(assert (=> bm!630699 m!7647886))

(declare-fun m!7647888 () Bool)

(assert (=> b!6942908 m!7647888))

(declare-fun m!7647890 () Bool)

(assert (=> bm!630700 m!7647890))

(assert (=> b!6942379 d!2168131))

(declare-fun bs!1855907 () Bool)

(declare-fun b!6942966 () Bool)

(assert (= bs!1855907 (and b!6942966 b!6942907)))

(declare-fun lambda!395721 () Int)

(assert (=> bs!1855907 (not (= lambda!395721 lambda!395720))))

(declare-fun bs!1855908 () Bool)

(assert (= bs!1855908 (and b!6942966 d!2168047)))

(assert (=> bs!1855908 (not (= lambda!395721 lambda!395702))))

(declare-fun bs!1855909 () Bool)

(assert (= bs!1855909 (and b!6942966 d!2168097)))

(assert (=> bs!1855909 (not (= lambda!395721 lambda!395712))))

(declare-fun bs!1855910 () Bool)

(assert (= bs!1855910 (and b!6942966 d!2167991)))

(assert (=> bs!1855910 (not (= lambda!395721 lambda!395674))))

(declare-fun bs!1855911 () Bool)

(assert (= bs!1855911 (and b!6942966 b!6942620)))

(assert (=> bs!1855911 (not (= lambda!395721 lambda!395693))))

(declare-fun bs!1855912 () Bool)

(assert (= bs!1855912 (and b!6942966 d!2168117)))

(assert (=> bs!1855912 (not (= lambda!395721 lambda!395717))))

(declare-fun bs!1855913 () Bool)

(assert (= bs!1855913 (and b!6942966 d!2168037)))

(assert (=> bs!1855913 (not (= lambda!395721 lambda!395700))))

(declare-fun bs!1855914 () Bool)

(assert (= bs!1855914 (and b!6942966 b!6942379)))

(assert (=> bs!1855914 (not (= lambda!395721 lambda!395659))))

(assert (=> bs!1855914 (not (= lambda!395721 lambda!395656))))

(declare-fun bs!1855915 () Bool)

(assert (= bs!1855915 (and b!6942966 d!2168087)))

(assert (=> bs!1855915 (not (= lambda!395721 lambda!395709))))

(assert (=> bs!1855914 (not (= lambda!395721 lambda!395658))))

(assert (=> bs!1855914 (not (= lambda!395721 lambda!395654))))

(assert (=> bs!1855914 (not (= lambda!395721 lambda!395655))))

(assert (=> bs!1855914 (not (= lambda!395721 lambda!395660))))

(assert (=> bs!1855912 (not (= lambda!395721 lambda!395715))))

(declare-fun bs!1855916 () Bool)

(assert (= bs!1855916 (and b!6942966 b!6942622)))

(assert (=> bs!1855916 (= (and (= (_1!37131 lt!2476377) lt!2476355) (= (reg!17300 r2!6280) (reg!17300 lt!2476370)) (= r2!6280 lt!2476370)) (= lambda!395721 lambda!395690))))

(declare-fun bs!1855917 () Bool)

(assert (= bs!1855917 (and b!6942966 b!6942909)))

(assert (=> bs!1855917 (= (and (= (_1!37131 lt!2476377) (_1!37131 lt!2476358)) (= (reg!17300 r2!6280) (reg!17300 r1!6342)) (= r2!6280 r1!6342)) (= lambda!395721 lambda!395719))))

(assert (=> bs!1855914 (not (= lambda!395721 lambda!395657))))

(assert (=> bs!1855913 (not (= lambda!395721 lambda!395701))))

(assert (=> bs!1855915 (not (= lambda!395721 lambda!395710))))

(declare-fun bs!1855918 () Bool)

(assert (= bs!1855918 (and b!6942966 d!2168093)))

(assert (=> bs!1855918 (not (= lambda!395721 lambda!395711))))

(assert (=> b!6942966 true))

(assert (=> b!6942966 true))

(declare-fun bs!1855919 () Bool)

(declare-fun b!6942964 () Bool)

(assert (= bs!1855919 (and b!6942964 b!6942907)))

(declare-fun lambda!395722 () Int)

(assert (=> bs!1855919 (= (and (= (_1!37131 lt!2476377) (_1!37131 lt!2476358)) (= (regOne!34454 r2!6280) (regOne!34454 r1!6342)) (= (regTwo!34454 r2!6280) (regTwo!34454 r1!6342))) (= lambda!395722 lambda!395720))))

(declare-fun bs!1855920 () Bool)

(assert (= bs!1855920 (and b!6942964 d!2168047)))

(assert (=> bs!1855920 (not (= lambda!395722 lambda!395702))))

(declare-fun bs!1855921 () Bool)

(assert (= bs!1855921 (and b!6942964 d!2168097)))

(assert (=> bs!1855921 (not (= lambda!395722 lambda!395712))))

(declare-fun bs!1855922 () Bool)

(assert (= bs!1855922 (and b!6942964 d!2167991)))

(assert (=> bs!1855922 (not (= lambda!395722 lambda!395674))))

(declare-fun bs!1855923 () Bool)

(assert (= bs!1855923 (and b!6942964 b!6942620)))

(assert (=> bs!1855923 (= (and (= (_1!37131 lt!2476377) lt!2476355) (= (regOne!34454 r2!6280) (regOne!34454 lt!2476370)) (= (regTwo!34454 r2!6280) (regTwo!34454 lt!2476370))) (= lambda!395722 lambda!395693))))

(declare-fun bs!1855924 () Bool)

(assert (= bs!1855924 (and b!6942964 d!2168117)))

(assert (=> bs!1855924 (= (and (= (_1!37131 lt!2476377) s!14361) (= (regOne!34454 r2!6280) r1!6342) (= (regTwo!34454 r2!6280) lt!2476353)) (= lambda!395722 lambda!395717))))

(declare-fun bs!1855925 () Bool)

(assert (= bs!1855925 (and b!6942964 d!2168037)))

(assert (=> bs!1855925 (not (= lambda!395722 lambda!395700))))

(declare-fun bs!1855926 () Bool)

(assert (= bs!1855926 (and b!6942964 b!6942379)))

(assert (=> bs!1855926 (= (and (= (_1!37131 lt!2476377) lt!2476355) (= (regOne!34454 r2!6280) r1!6342) (= (regTwo!34454 r2!6280) r2!6280)) (= lambda!395722 lambda!395659))))

(assert (=> bs!1855926 (not (= lambda!395722 lambda!395656))))

(declare-fun bs!1855927 () Bool)

(assert (= bs!1855927 (and b!6942964 d!2168087)))

(assert (=> bs!1855927 (not (= lambda!395722 lambda!395709))))

(assert (=> bs!1855926 (not (= lambda!395722 lambda!395658))))

(assert (=> bs!1855926 (not (= lambda!395722 lambda!395654))))

(assert (=> bs!1855926 (= (and (= (_1!37131 lt!2476377) s!14361) (= (regOne!34454 r2!6280) r1!6342) (= (regTwo!34454 r2!6280) lt!2476353)) (= lambda!395722 lambda!395655))))

(assert (=> bs!1855926 (not (= lambda!395722 lambda!395660))))

(assert (=> bs!1855924 (not (= lambda!395722 lambda!395715))))

(declare-fun bs!1855928 () Bool)

(assert (= bs!1855928 (and b!6942964 b!6942622)))

(assert (=> bs!1855928 (not (= lambda!395722 lambda!395690))))

(declare-fun bs!1855929 () Bool)

(assert (= bs!1855929 (and b!6942964 b!6942909)))

(assert (=> bs!1855929 (not (= lambda!395722 lambda!395719))))

(assert (=> bs!1855926 (= (and (= (_1!37131 lt!2476377) (_2!37131 lt!2476358)) (= (regOne!34454 r2!6280) r2!6280) (= (regTwo!34454 r2!6280) r3!135)) (= lambda!395722 lambda!395657))))

(assert (=> bs!1855925 (= (and (= (_1!37131 lt!2476377) (_2!37131 lt!2476358)) (= (regOne!34454 r2!6280) r2!6280) (= (regTwo!34454 r2!6280) r3!135)) (= lambda!395722 lambda!395701))))

(assert (=> bs!1855927 (= (and (= (_1!37131 lt!2476377) lt!2476355) (= (regOne!34454 r2!6280) r1!6342) (= (regTwo!34454 r2!6280) r2!6280)) (= lambda!395722 lambda!395710))))

(declare-fun bs!1855930 () Bool)

(assert (= bs!1855930 (and b!6942964 d!2168093)))

(assert (=> bs!1855930 (not (= lambda!395722 lambda!395711))))

(declare-fun bs!1855931 () Bool)

(assert (= bs!1855931 (and b!6942964 b!6942966)))

(assert (=> bs!1855931 (not (= lambda!395722 lambda!395721))))

(assert (=> b!6942964 true))

(assert (=> b!6942964 true))

(declare-fun b!6942959 () Bool)

(declare-fun e!4176522 () Bool)

(declare-fun e!4176525 () Bool)

(assert (=> b!6942959 (= e!4176522 e!4176525)))

(declare-fun res!2832305 () Bool)

(assert (=> b!6942959 (= res!2832305 (not ((_ is EmptyLang!16971) r2!6280)))))

(assert (=> b!6942959 (=> (not res!2832305) (not e!4176525))))

(declare-fun b!6942960 () Bool)

(declare-fun e!4176524 () Bool)

(assert (=> b!6942960 (= e!4176524 (matchRSpec!4028 (regTwo!34455 r2!6280) (_1!37131 lt!2476377)))))

(declare-fun b!6942961 () Bool)

(declare-fun res!2832304 () Bool)

(declare-fun e!4176527 () Bool)

(assert (=> b!6942961 (=> res!2832304 e!4176527)))

(declare-fun call!630714 () Bool)

(assert (=> b!6942961 (= res!2832304 call!630714)))

(declare-fun e!4176528 () Bool)

(assert (=> b!6942961 (= e!4176528 e!4176527)))

(declare-fun b!6942962 () Bool)

(assert (=> b!6942962 (= e!4176522 call!630714)))

(declare-fun b!6942963 () Bool)

(declare-fun c!1288229 () Bool)

(assert (=> b!6942963 (= c!1288229 ((_ is ElementMatch!16971) r2!6280))))

(declare-fun e!4176526 () Bool)

(assert (=> b!6942963 (= e!4176525 e!4176526)))

(declare-fun call!630713 () Bool)

(assert (=> b!6942964 (= e!4176528 call!630713)))

(declare-fun bm!630708 () Bool)

(assert (=> bm!630708 (= call!630714 (isEmpty!38874 (_1!37131 lt!2476377)))))

(declare-fun d!2168141 () Bool)

(declare-fun c!1288230 () Bool)

(assert (=> d!2168141 (= c!1288230 ((_ is EmptyExpr!16971) r2!6280))))

(assert (=> d!2168141 (= (matchRSpec!4028 r2!6280 (_1!37131 lt!2476377)) e!4176522)))

(declare-fun b!6942965 () Bool)

(declare-fun e!4176521 () Bool)

(assert (=> b!6942965 (= e!4176521 e!4176524)))

(declare-fun res!2832306 () Bool)

(assert (=> b!6942965 (= res!2832306 (matchRSpec!4028 (regOne!34455 r2!6280) (_1!37131 lt!2476377)))))

(assert (=> b!6942965 (=> res!2832306 e!4176524)))

(assert (=> b!6942966 (= e!4176527 call!630713)))

(declare-fun b!6942967 () Bool)

(assert (=> b!6942967 (= e!4176521 e!4176528)))

(declare-fun c!1288228 () Bool)

(assert (=> b!6942967 (= c!1288228 ((_ is Star!16971) r2!6280))))

(declare-fun b!6942968 () Bool)

(assert (=> b!6942968 (= e!4176526 (= (_1!37131 lt!2476377) (Cons!66600 (c!1288093 r2!6280) Nil!66600)))))

(declare-fun bm!630709 () Bool)

(assert (=> bm!630709 (= call!630713 (Exists!3971 (ite c!1288228 lambda!395721 lambda!395722)))))

(declare-fun b!6942969 () Bool)

(declare-fun c!1288227 () Bool)

(assert (=> b!6942969 (= c!1288227 ((_ is Union!16971) r2!6280))))

(assert (=> b!6942969 (= e!4176526 e!4176521)))

(assert (= (and d!2168141 c!1288230) b!6942962))

(assert (= (and d!2168141 (not c!1288230)) b!6942959))

(assert (= (and b!6942959 res!2832305) b!6942963))

(assert (= (and b!6942963 c!1288229) b!6942968))

(assert (= (and b!6942963 (not c!1288229)) b!6942969))

(assert (= (and b!6942969 c!1288227) b!6942965))

(assert (= (and b!6942969 (not c!1288227)) b!6942967))

(assert (= (and b!6942965 (not res!2832306)) b!6942960))

(assert (= (and b!6942967 c!1288228) b!6942961))

(assert (= (and b!6942967 (not c!1288228)) b!6942964))

(assert (= (and b!6942961 (not res!2832304)) b!6942966))

(assert (= (or b!6942966 b!6942964) bm!630709))

(assert (= (or b!6942962 b!6942961) bm!630708))

(declare-fun m!7647892 () Bool)

(assert (=> b!6942960 m!7647892))

(declare-fun m!7647894 () Bool)

(assert (=> bm!630708 m!7647894))

(declare-fun m!7647896 () Bool)

(assert (=> b!6942965 m!7647896))

(declare-fun m!7647898 () Bool)

(assert (=> bm!630709 m!7647898))

(assert (=> b!6942379 d!2168141))

(declare-fun d!2168143 () Bool)

(assert (=> d!2168143 (= (matchR!9110 r1!6342 (_1!37131 lt!2476358)) (matchRSpec!4028 r1!6342 (_1!37131 lt!2476358)))))

(declare-fun lt!2476485 () Unit!160672)

(assert (=> d!2168143 (= lt!2476485 (choose!51733 r1!6342 (_1!37131 lt!2476358)))))

(assert (=> d!2168143 (validRegex!8677 r1!6342)))

(assert (=> d!2168143 (= (mainMatchTheorem!4028 r1!6342 (_1!37131 lt!2476358)) lt!2476485)))

(declare-fun bs!1855932 () Bool)

(assert (= bs!1855932 d!2168143))

(assert (=> bs!1855932 m!7647252))

(assert (=> bs!1855932 m!7647244))

(declare-fun m!7647900 () Bool)

(assert (=> bs!1855932 m!7647900))

(assert (=> bs!1855932 m!7647334))

(assert (=> b!6942379 d!2168143))

(declare-fun b!6943031 () Bool)

(declare-fun e!4176552 () Bool)

(assert (=> b!6943031 (= e!4176552 (not (= (head!13914 (_1!37131 lt!2476377)) (c!1288093 r2!6280))))))

(declare-fun b!6943032 () Bool)

(declare-fun res!2832314 () Bool)

(assert (=> b!6943032 (=> res!2832314 e!4176552)))

(assert (=> b!6943032 (= res!2832314 (not (isEmpty!38874 (tail!12966 (_1!37131 lt!2476377)))))))

(declare-fun b!6943033 () Bool)

(declare-fun e!4176548 () Bool)

(assert (=> b!6943033 (= e!4176548 e!4176552)))

(declare-fun res!2832308 () Bool)

(assert (=> b!6943033 (=> res!2832308 e!4176552)))

(declare-fun call!630715 () Bool)

(assert (=> b!6943033 (= res!2832308 call!630715)))

(declare-fun b!6943034 () Bool)

(declare-fun e!4176549 () Bool)

(assert (=> b!6943034 (= e!4176549 (= (head!13914 (_1!37131 lt!2476377)) (c!1288093 r2!6280)))))

(declare-fun b!6943035 () Bool)

(declare-fun e!4176551 () Bool)

(declare-fun lt!2476486 () Bool)

(assert (=> b!6943035 (= e!4176551 (not lt!2476486))))

(declare-fun b!6943036 () Bool)

(declare-fun e!4176547 () Bool)

(assert (=> b!6943036 (= e!4176547 (nullable!6786 r2!6280))))

(declare-fun b!6943037 () Bool)

(declare-fun res!2832312 () Bool)

(declare-fun e!4176550 () Bool)

(assert (=> b!6943037 (=> res!2832312 e!4176550)))

(assert (=> b!6943037 (= res!2832312 e!4176549)))

(declare-fun res!2832309 () Bool)

(assert (=> b!6943037 (=> (not res!2832309) (not e!4176549))))

(assert (=> b!6943037 (= res!2832309 lt!2476486)))

(declare-fun bm!630710 () Bool)

(assert (=> bm!630710 (= call!630715 (isEmpty!38874 (_1!37131 lt!2476377)))))

(declare-fun b!6943038 () Bool)

(declare-fun res!2832311 () Bool)

(assert (=> b!6943038 (=> res!2832311 e!4176550)))

(assert (=> b!6943038 (= res!2832311 (not ((_ is ElementMatch!16971) r2!6280)))))

(assert (=> b!6943038 (= e!4176551 e!4176550)))

(declare-fun d!2168145 () Bool)

(declare-fun e!4176546 () Bool)

(assert (=> d!2168145 e!4176546))

(declare-fun c!1288233 () Bool)

(assert (=> d!2168145 (= c!1288233 ((_ is EmptyExpr!16971) r2!6280))))

(assert (=> d!2168145 (= lt!2476486 e!4176547)))

(declare-fun c!1288232 () Bool)

(assert (=> d!2168145 (= c!1288232 (isEmpty!38874 (_1!37131 lt!2476377)))))

(assert (=> d!2168145 (validRegex!8677 r2!6280)))

(assert (=> d!2168145 (= (matchR!9110 r2!6280 (_1!37131 lt!2476377)) lt!2476486)))

(declare-fun b!6943039 () Bool)

(assert (=> b!6943039 (= e!4176546 e!4176551)))

(declare-fun c!1288231 () Bool)

(assert (=> b!6943039 (= c!1288231 ((_ is EmptyLang!16971) r2!6280))))

(declare-fun b!6943040 () Bool)

(assert (=> b!6943040 (= e!4176550 e!4176548)))

(declare-fun res!2832313 () Bool)

(assert (=> b!6943040 (=> (not res!2832313) (not e!4176548))))

(assert (=> b!6943040 (= res!2832313 (not lt!2476486))))

(declare-fun b!6943041 () Bool)

(declare-fun res!2832310 () Bool)

(assert (=> b!6943041 (=> (not res!2832310) (not e!4176549))))

(assert (=> b!6943041 (= res!2832310 (not call!630715))))

(declare-fun b!6943042 () Bool)

(assert (=> b!6943042 (= e!4176546 (= lt!2476486 call!630715))))

(declare-fun b!6943043 () Bool)

(assert (=> b!6943043 (= e!4176547 (matchR!9110 (derivativeStep!5461 r2!6280 (head!13914 (_1!37131 lt!2476377))) (tail!12966 (_1!37131 lt!2476377))))))

(declare-fun b!6943044 () Bool)

(declare-fun res!2832307 () Bool)

(assert (=> b!6943044 (=> (not res!2832307) (not e!4176549))))

(assert (=> b!6943044 (= res!2832307 (isEmpty!38874 (tail!12966 (_1!37131 lt!2476377))))))

(assert (= (and d!2168145 c!1288232) b!6943036))

(assert (= (and d!2168145 (not c!1288232)) b!6943043))

(assert (= (and d!2168145 c!1288233) b!6943042))

(assert (= (and d!2168145 (not c!1288233)) b!6943039))

(assert (= (and b!6943039 c!1288231) b!6943035))

(assert (= (and b!6943039 (not c!1288231)) b!6943038))

(assert (= (and b!6943038 (not res!2832311)) b!6943037))

(assert (= (and b!6943037 res!2832309) b!6943041))

(assert (= (and b!6943041 res!2832310) b!6943044))

(assert (= (and b!6943044 res!2832307) b!6943034))

(assert (= (and b!6943037 (not res!2832312)) b!6943040))

(assert (= (and b!6943040 res!2832313) b!6943033))

(assert (= (and b!6943033 (not res!2832308)) b!6943032))

(assert (= (and b!6943032 (not res!2832314)) b!6943031))

(assert (= (or b!6943042 b!6943041 b!6943033) bm!630710))

(assert (=> bm!630710 m!7647894))

(declare-fun m!7647902 () Bool)

(assert (=> b!6943031 m!7647902))

(declare-fun m!7647904 () Bool)

(assert (=> b!6943044 m!7647904))

(assert (=> b!6943044 m!7647904))

(declare-fun m!7647906 () Bool)

(assert (=> b!6943044 m!7647906))

(declare-fun m!7647908 () Bool)

(assert (=> b!6943036 m!7647908))

(assert (=> b!6943032 m!7647904))

(assert (=> b!6943032 m!7647904))

(assert (=> b!6943032 m!7647906))

(assert (=> b!6943043 m!7647902))

(assert (=> b!6943043 m!7647902))

(declare-fun m!7647910 () Bool)

(assert (=> b!6943043 m!7647910))

(assert (=> b!6943043 m!7647904))

(assert (=> b!6943043 m!7647910))

(assert (=> b!6943043 m!7647904))

(declare-fun m!7647912 () Bool)

(assert (=> b!6943043 m!7647912))

(assert (=> b!6943034 m!7647902))

(assert (=> d!2168145 m!7647894))

(assert (=> d!2168145 m!7647332))

(assert (=> b!6942379 d!2168145))

(declare-fun b!6943045 () Bool)

(declare-fun e!4176553 () List!66724)

(assert (=> b!6943045 (= e!4176553 (_2!37131 lt!2476377))))

(declare-fun b!6943046 () Bool)

(assert (=> b!6943046 (= e!4176553 (Cons!66600 (h!73048 (_1!37131 lt!2476377)) (++!15010 (t!380467 (_1!37131 lt!2476377)) (_2!37131 lt!2476377))))))

(declare-fun b!6943048 () Bool)

(declare-fun e!4176554 () Bool)

(declare-fun lt!2476487 () List!66724)

(assert (=> b!6943048 (= e!4176554 (or (not (= (_2!37131 lt!2476377) Nil!66600)) (= lt!2476487 (_1!37131 lt!2476377))))))

(declare-fun d!2168147 () Bool)

(assert (=> d!2168147 e!4176554))

(declare-fun res!2832316 () Bool)

(assert (=> d!2168147 (=> (not res!2832316) (not e!4176554))))

(assert (=> d!2168147 (= res!2832316 (= (content!13107 lt!2476487) ((_ map or) (content!13107 (_1!37131 lt!2476377)) (content!13107 (_2!37131 lt!2476377)))))))

(assert (=> d!2168147 (= lt!2476487 e!4176553)))

(declare-fun c!1288234 () Bool)

(assert (=> d!2168147 (= c!1288234 ((_ is Nil!66600) (_1!37131 lt!2476377)))))

(assert (=> d!2168147 (= (++!15010 (_1!37131 lt!2476377) (_2!37131 lt!2476377)) lt!2476487)))

(declare-fun b!6943047 () Bool)

(declare-fun res!2832315 () Bool)

(assert (=> b!6943047 (=> (not res!2832315) (not e!4176554))))

(assert (=> b!6943047 (= res!2832315 (= (size!40804 lt!2476487) (+ (size!40804 (_1!37131 lt!2476377)) (size!40804 (_2!37131 lt!2476377)))))))

(assert (= (and d!2168147 c!1288234) b!6943045))

(assert (= (and d!2168147 (not c!1288234)) b!6943046))

(assert (= (and d!2168147 res!2832316) b!6943047))

(assert (= (and b!6943047 res!2832315) b!6943048))

(declare-fun m!7647914 () Bool)

(assert (=> b!6943046 m!7647914))

(declare-fun m!7647916 () Bool)

(assert (=> d!2168147 m!7647916))

(assert (=> d!2168147 m!7647808))

(declare-fun m!7647918 () Bool)

(assert (=> d!2168147 m!7647918))

(declare-fun m!7647920 () Bool)

(assert (=> b!6943047 m!7647920))

(assert (=> b!6943047 m!7647812))

(declare-fun m!7647922 () Bool)

(assert (=> b!6943047 m!7647922))

(assert (=> b!6942379 d!2168147))

(declare-fun b!6943049 () Bool)

(declare-fun e!4176555 () List!66724)

(assert (=> b!6943049 (= e!4176555 (_2!37131 lt!2476377))))

(declare-fun b!6943050 () Bool)

(assert (=> b!6943050 (= e!4176555 (Cons!66600 (h!73048 lt!2476355) (++!15010 (t!380467 lt!2476355) (_2!37131 lt!2476377))))))

(declare-fun b!6943052 () Bool)

(declare-fun e!4176556 () Bool)

(declare-fun lt!2476488 () List!66724)

(assert (=> b!6943052 (= e!4176556 (or (not (= (_2!37131 lt!2476377) Nil!66600)) (= lt!2476488 lt!2476355)))))

(declare-fun d!2168149 () Bool)

(assert (=> d!2168149 e!4176556))

(declare-fun res!2832318 () Bool)

(assert (=> d!2168149 (=> (not res!2832318) (not e!4176556))))

(assert (=> d!2168149 (= res!2832318 (= (content!13107 lt!2476488) ((_ map or) (content!13107 lt!2476355) (content!13107 (_2!37131 lt!2476377)))))))

(assert (=> d!2168149 (= lt!2476488 e!4176555)))

(declare-fun c!1288235 () Bool)

(assert (=> d!2168149 (= c!1288235 ((_ is Nil!66600) lt!2476355))))

(assert (=> d!2168149 (= (++!15010 lt!2476355 (_2!37131 lt!2476377)) lt!2476488)))

(declare-fun b!6943051 () Bool)

(declare-fun res!2832317 () Bool)

(assert (=> b!6943051 (=> (not res!2832317) (not e!4176556))))

(assert (=> b!6943051 (= res!2832317 (= (size!40804 lt!2476488) (+ (size!40804 lt!2476355) (size!40804 (_2!37131 lt!2476377)))))))

(assert (= (and d!2168149 c!1288235) b!6943049))

(assert (= (and d!2168149 (not c!1288235)) b!6943050))

(assert (= (and d!2168149 res!2832318) b!6943051))

(assert (= (and b!6943051 res!2832317) b!6943052))

(declare-fun m!7647924 () Bool)

(assert (=> b!6943050 m!7647924))

(declare-fun m!7647926 () Bool)

(assert (=> d!2168149 m!7647926))

(declare-fun m!7647928 () Bool)

(assert (=> d!2168149 m!7647928))

(assert (=> d!2168149 m!7647918))

(declare-fun m!7647930 () Bool)

(assert (=> b!6943051 m!7647930))

(declare-fun m!7647932 () Bool)

(assert (=> b!6943051 m!7647932))

(assert (=> b!6943051 m!7647922))

(assert (=> b!6942379 d!2168149))

(declare-fun b!6943053 () Bool)

(declare-fun e!4176563 () Bool)

(assert (=> b!6943053 (= e!4176563 (not (= (head!13914 (_1!37131 lt!2476358)) (c!1288093 r1!6342))))))

(declare-fun b!6943054 () Bool)

(declare-fun res!2832326 () Bool)

(assert (=> b!6943054 (=> res!2832326 e!4176563)))

(assert (=> b!6943054 (= res!2832326 (not (isEmpty!38874 (tail!12966 (_1!37131 lt!2476358)))))))

(declare-fun b!6943055 () Bool)

(declare-fun e!4176559 () Bool)

(assert (=> b!6943055 (= e!4176559 e!4176563)))

(declare-fun res!2832320 () Bool)

(assert (=> b!6943055 (=> res!2832320 e!4176563)))

(declare-fun call!630716 () Bool)

(assert (=> b!6943055 (= res!2832320 call!630716)))

(declare-fun b!6943056 () Bool)

(declare-fun e!4176560 () Bool)

(assert (=> b!6943056 (= e!4176560 (= (head!13914 (_1!37131 lt!2476358)) (c!1288093 r1!6342)))))

(declare-fun b!6943057 () Bool)

(declare-fun e!4176562 () Bool)

(declare-fun lt!2476489 () Bool)

(assert (=> b!6943057 (= e!4176562 (not lt!2476489))))

(declare-fun b!6943058 () Bool)

(declare-fun e!4176558 () Bool)

(assert (=> b!6943058 (= e!4176558 (nullable!6786 r1!6342))))

(declare-fun b!6943059 () Bool)

(declare-fun res!2832324 () Bool)

(declare-fun e!4176561 () Bool)

(assert (=> b!6943059 (=> res!2832324 e!4176561)))

(assert (=> b!6943059 (= res!2832324 e!4176560)))

(declare-fun res!2832321 () Bool)

(assert (=> b!6943059 (=> (not res!2832321) (not e!4176560))))

(assert (=> b!6943059 (= res!2832321 lt!2476489)))

(declare-fun bm!630711 () Bool)

(assert (=> bm!630711 (= call!630716 (isEmpty!38874 (_1!37131 lt!2476358)))))

(declare-fun b!6943060 () Bool)

(declare-fun res!2832323 () Bool)

(assert (=> b!6943060 (=> res!2832323 e!4176561)))

(assert (=> b!6943060 (= res!2832323 (not ((_ is ElementMatch!16971) r1!6342)))))

(assert (=> b!6943060 (= e!4176562 e!4176561)))

(declare-fun d!2168151 () Bool)

(declare-fun e!4176557 () Bool)

(assert (=> d!2168151 e!4176557))

(declare-fun c!1288238 () Bool)

(assert (=> d!2168151 (= c!1288238 ((_ is EmptyExpr!16971) r1!6342))))

(assert (=> d!2168151 (= lt!2476489 e!4176558)))

(declare-fun c!1288237 () Bool)

(assert (=> d!2168151 (= c!1288237 (isEmpty!38874 (_1!37131 lt!2476358)))))

(assert (=> d!2168151 (validRegex!8677 r1!6342)))

(assert (=> d!2168151 (= (matchR!9110 r1!6342 (_1!37131 lt!2476358)) lt!2476489)))

(declare-fun b!6943061 () Bool)

(assert (=> b!6943061 (= e!4176557 e!4176562)))

(declare-fun c!1288236 () Bool)

(assert (=> b!6943061 (= c!1288236 ((_ is EmptyLang!16971) r1!6342))))

(declare-fun b!6943062 () Bool)

(assert (=> b!6943062 (= e!4176561 e!4176559)))

(declare-fun res!2832325 () Bool)

(assert (=> b!6943062 (=> (not res!2832325) (not e!4176559))))

(assert (=> b!6943062 (= res!2832325 (not lt!2476489))))

(declare-fun b!6943063 () Bool)

(declare-fun res!2832322 () Bool)

(assert (=> b!6943063 (=> (not res!2832322) (not e!4176560))))

(assert (=> b!6943063 (= res!2832322 (not call!630716))))

(declare-fun b!6943064 () Bool)

(assert (=> b!6943064 (= e!4176557 (= lt!2476489 call!630716))))

(declare-fun b!6943065 () Bool)

(assert (=> b!6943065 (= e!4176558 (matchR!9110 (derivativeStep!5461 r1!6342 (head!13914 (_1!37131 lt!2476358))) (tail!12966 (_1!37131 lt!2476358))))))

(declare-fun b!6943066 () Bool)

(declare-fun res!2832319 () Bool)

(assert (=> b!6943066 (=> (not res!2832319) (not e!4176560))))

(assert (=> b!6943066 (= res!2832319 (isEmpty!38874 (tail!12966 (_1!37131 lt!2476358))))))

(assert (= (and d!2168151 c!1288237) b!6943058))

(assert (= (and d!2168151 (not c!1288237)) b!6943065))

(assert (= (and d!2168151 c!1288238) b!6943064))

(assert (= (and d!2168151 (not c!1288238)) b!6943061))

(assert (= (and b!6943061 c!1288236) b!6943057))

(assert (= (and b!6943061 (not c!1288236)) b!6943060))

(assert (= (and b!6943060 (not res!2832323)) b!6943059))

(assert (= (and b!6943059 res!2832321) b!6943063))

(assert (= (and b!6943063 res!2832322) b!6943066))

(assert (= (and b!6943066 res!2832319) b!6943056))

(assert (= (and b!6943059 (not res!2832324)) b!6943062))

(assert (= (and b!6943062 res!2832325) b!6943055))

(assert (= (and b!6943055 (not res!2832320)) b!6943054))

(assert (= (and b!6943054 (not res!2832326)) b!6943053))

(assert (= (or b!6943064 b!6943063 b!6943055) bm!630711))

(assert (=> bm!630711 m!7647886))

(declare-fun m!7647934 () Bool)

(assert (=> b!6943053 m!7647934))

(declare-fun m!7647936 () Bool)

(assert (=> b!6943066 m!7647936))

(assert (=> b!6943066 m!7647936))

(declare-fun m!7647938 () Bool)

(assert (=> b!6943066 m!7647938))

(declare-fun m!7647940 () Bool)

(assert (=> b!6943058 m!7647940))

(assert (=> b!6943054 m!7647936))

(assert (=> b!6943054 m!7647936))

(assert (=> b!6943054 m!7647938))

(assert (=> b!6943065 m!7647934))

(assert (=> b!6943065 m!7647934))

(declare-fun m!7647942 () Bool)

(assert (=> b!6943065 m!7647942))

(assert (=> b!6943065 m!7647936))

(assert (=> b!6943065 m!7647942))

(assert (=> b!6943065 m!7647936))

(declare-fun m!7647944 () Bool)

(assert (=> b!6943065 m!7647944))

(assert (=> b!6943056 m!7647934))

(assert (=> d!2168151 m!7647886))

(assert (=> d!2168151 m!7647334))

(assert (=> b!6942379 d!2168151))

(declare-fun d!2168153 () Bool)

(assert (=> d!2168153 (= (isDefined!13441 (findConcatSeparation!3154 r1!6342 r2!6280 Nil!66600 lt!2476355 lt!2476355)) (not (isEmpty!38875 (findConcatSeparation!3154 r1!6342 r2!6280 Nil!66600 lt!2476355 lt!2476355))))))

(declare-fun bs!1855933 () Bool)

(assert (= bs!1855933 d!2168153))

(assert (=> bs!1855933 m!7647274))

(declare-fun m!7647946 () Bool)

(assert (=> bs!1855933 m!7647946))

(assert (=> b!6942379 d!2168153))

(declare-fun b!6943067 () Bool)

(declare-fun e!4176570 () Bool)

(assert (=> b!6943067 (= e!4176570 (not (= (head!13914 lt!2476355) (c!1288093 lt!2476370))))))

(declare-fun b!6943068 () Bool)

(declare-fun res!2832334 () Bool)

(assert (=> b!6943068 (=> res!2832334 e!4176570)))

(assert (=> b!6943068 (= res!2832334 (not (isEmpty!38874 (tail!12966 lt!2476355))))))

(declare-fun b!6943069 () Bool)

(declare-fun e!4176566 () Bool)

(assert (=> b!6943069 (= e!4176566 e!4176570)))

(declare-fun res!2832328 () Bool)

(assert (=> b!6943069 (=> res!2832328 e!4176570)))

(declare-fun call!630717 () Bool)

(assert (=> b!6943069 (= res!2832328 call!630717)))

(declare-fun b!6943070 () Bool)

(declare-fun e!4176567 () Bool)

(assert (=> b!6943070 (= e!4176567 (= (head!13914 lt!2476355) (c!1288093 lt!2476370)))))

(declare-fun b!6943071 () Bool)

(declare-fun e!4176569 () Bool)

(declare-fun lt!2476490 () Bool)

(assert (=> b!6943071 (= e!4176569 (not lt!2476490))))

(declare-fun b!6943072 () Bool)

(declare-fun e!4176565 () Bool)

(assert (=> b!6943072 (= e!4176565 (nullable!6786 lt!2476370))))

(declare-fun b!6943073 () Bool)

(declare-fun res!2832332 () Bool)

(declare-fun e!4176568 () Bool)

(assert (=> b!6943073 (=> res!2832332 e!4176568)))

(assert (=> b!6943073 (= res!2832332 e!4176567)))

(declare-fun res!2832329 () Bool)

(assert (=> b!6943073 (=> (not res!2832329) (not e!4176567))))

(assert (=> b!6943073 (= res!2832329 lt!2476490)))

(declare-fun bm!630712 () Bool)

(assert (=> bm!630712 (= call!630717 (isEmpty!38874 lt!2476355))))

(declare-fun b!6943074 () Bool)

(declare-fun res!2832331 () Bool)

(assert (=> b!6943074 (=> res!2832331 e!4176568)))

(assert (=> b!6943074 (= res!2832331 (not ((_ is ElementMatch!16971) lt!2476370)))))

(assert (=> b!6943074 (= e!4176569 e!4176568)))

(declare-fun d!2168155 () Bool)

(declare-fun e!4176564 () Bool)

(assert (=> d!2168155 e!4176564))

(declare-fun c!1288241 () Bool)

(assert (=> d!2168155 (= c!1288241 ((_ is EmptyExpr!16971) lt!2476370))))

(assert (=> d!2168155 (= lt!2476490 e!4176565)))

(declare-fun c!1288240 () Bool)

(assert (=> d!2168155 (= c!1288240 (isEmpty!38874 lt!2476355))))

(assert (=> d!2168155 (validRegex!8677 lt!2476370)))

(assert (=> d!2168155 (= (matchR!9110 lt!2476370 lt!2476355) lt!2476490)))

(declare-fun b!6943075 () Bool)

(assert (=> b!6943075 (= e!4176564 e!4176569)))

(declare-fun c!1288239 () Bool)

(assert (=> b!6943075 (= c!1288239 ((_ is EmptyLang!16971) lt!2476370))))

(declare-fun b!6943076 () Bool)

(assert (=> b!6943076 (= e!4176568 e!4176566)))

(declare-fun res!2832333 () Bool)

(assert (=> b!6943076 (=> (not res!2832333) (not e!4176566))))

(assert (=> b!6943076 (= res!2832333 (not lt!2476490))))

(declare-fun b!6943077 () Bool)

(declare-fun res!2832330 () Bool)

(assert (=> b!6943077 (=> (not res!2832330) (not e!4176567))))

(assert (=> b!6943077 (= res!2832330 (not call!630717))))

(declare-fun b!6943078 () Bool)

(assert (=> b!6943078 (= e!4176564 (= lt!2476490 call!630717))))

(declare-fun b!6943079 () Bool)

(assert (=> b!6943079 (= e!4176565 (matchR!9110 (derivativeStep!5461 lt!2476370 (head!13914 lt!2476355)) (tail!12966 lt!2476355)))))

(declare-fun b!6943080 () Bool)

(declare-fun res!2832327 () Bool)

(assert (=> b!6943080 (=> (not res!2832327) (not e!4176567))))

(assert (=> b!6943080 (= res!2832327 (isEmpty!38874 (tail!12966 lt!2476355)))))

(assert (= (and d!2168155 c!1288240) b!6943072))

(assert (= (and d!2168155 (not c!1288240)) b!6943079))

(assert (= (and d!2168155 c!1288241) b!6943078))

(assert (= (and d!2168155 (not c!1288241)) b!6943075))

(assert (= (and b!6943075 c!1288239) b!6943071))

(assert (= (and b!6943075 (not c!1288239)) b!6943074))

(assert (= (and b!6943074 (not res!2832331)) b!6943073))

(assert (= (and b!6943073 res!2832329) b!6943077))

(assert (= (and b!6943077 res!2832330) b!6943080))

(assert (= (and b!6943080 res!2832327) b!6943070))

(assert (= (and b!6943073 (not res!2832332)) b!6943076))

(assert (= (and b!6943076 res!2832333) b!6943069))

(assert (= (and b!6943069 (not res!2832328)) b!6943068))

(assert (= (and b!6943068 (not res!2832334)) b!6943067))

(assert (= (or b!6943078 b!6943077 b!6943069) bm!630712))

(assert (=> bm!630712 m!7647484))

(declare-fun m!7647948 () Bool)

(assert (=> b!6943067 m!7647948))

(declare-fun m!7647950 () Bool)

(assert (=> b!6943080 m!7647950))

(assert (=> b!6943080 m!7647950))

(declare-fun m!7647952 () Bool)

(assert (=> b!6943080 m!7647952))

(declare-fun m!7647954 () Bool)

(assert (=> b!6943072 m!7647954))

(assert (=> b!6943068 m!7647950))

(assert (=> b!6943068 m!7647950))

(assert (=> b!6943068 m!7647952))

(assert (=> b!6943079 m!7647948))

(assert (=> b!6943079 m!7647948))

(declare-fun m!7647956 () Bool)

(assert (=> b!6943079 m!7647956))

(assert (=> b!6943079 m!7647950))

(assert (=> b!6943079 m!7647956))

(assert (=> b!6943079 m!7647950))

(declare-fun m!7647958 () Bool)

(assert (=> b!6943079 m!7647958))

(assert (=> b!6943070 m!7647948))

(assert (=> d!2168155 m!7647484))

(assert (=> d!2168155 m!7647404))

(assert (=> b!6942379 d!2168155))

(declare-fun bs!1855934 () Bool)

(declare-fun d!2168157 () Bool)

(assert (= bs!1855934 (and d!2168157 b!6942907)))

(declare-fun lambda!395723 () Int)

(assert (=> bs!1855934 (not (= lambda!395723 lambda!395720))))

(declare-fun bs!1855935 () Bool)

(assert (= bs!1855935 (and d!2168157 d!2168047)))

(assert (=> bs!1855935 (= (and (= s!14361 lt!2476355) (= lt!2476370 r1!6342) (= r3!135 r2!6280)) (= lambda!395723 lambda!395702))))

(declare-fun bs!1855936 () Bool)

(assert (= bs!1855936 (and d!2168157 d!2168097)))

(assert (=> bs!1855936 (= (and (= s!14361 (_2!37131 lt!2476358)) (= lt!2476370 r2!6280)) (= lambda!395723 lambda!395712))))

(declare-fun bs!1855937 () Bool)

(assert (= bs!1855937 (and d!2168157 d!2167991)))

(assert (=> bs!1855937 (= lambda!395723 lambda!395674)))

(declare-fun bs!1855938 () Bool)

(assert (= bs!1855938 (and d!2168157 b!6942620)))

(assert (=> bs!1855938 (not (= lambda!395723 lambda!395693))))

(declare-fun bs!1855939 () Bool)

(assert (= bs!1855939 (and d!2168157 d!2168117)))

(assert (=> bs!1855939 (not (= lambda!395723 lambda!395717))))

(declare-fun bs!1855940 () Bool)

(assert (= bs!1855940 (and d!2168157 d!2168037)))

(assert (=> bs!1855940 (= (and (= s!14361 (_2!37131 lt!2476358)) (= lt!2476370 r2!6280)) (= lambda!395723 lambda!395700))))

(declare-fun bs!1855941 () Bool)

(assert (= bs!1855941 (and d!2168157 b!6942379)))

(assert (=> bs!1855941 (not (= lambda!395723 lambda!395659))))

(assert (=> bs!1855941 (= (and (= s!14361 (_2!37131 lt!2476358)) (= lt!2476370 r2!6280)) (= lambda!395723 lambda!395656))))

(declare-fun bs!1855942 () Bool)

(assert (= bs!1855942 (and d!2168157 d!2168087)))

(assert (=> bs!1855942 (= (and (= s!14361 lt!2476355) (= lt!2476370 r1!6342) (= r3!135 r2!6280)) (= lambda!395723 lambda!395709))))

(assert (=> bs!1855941 (= (and (= s!14361 lt!2476355) (= lt!2476370 r1!6342) (= r3!135 r2!6280)) (= lambda!395723 lambda!395658))))

(declare-fun bs!1855943 () Bool)

(assert (= bs!1855943 (and d!2168157 b!6942964)))

(assert (=> bs!1855943 (not (= lambda!395723 lambda!395722))))

(assert (=> bs!1855941 (= (and (= lt!2476370 r1!6342) (= r3!135 lt!2476353)) (= lambda!395723 lambda!395654))))

(assert (=> bs!1855941 (not (= lambda!395723 lambda!395655))))

(assert (=> bs!1855941 (= lambda!395723 lambda!395660)))

(assert (=> bs!1855939 (= (and (= lt!2476370 r1!6342) (= r3!135 lt!2476353)) (= lambda!395723 lambda!395715))))

(declare-fun bs!1855944 () Bool)

(assert (= bs!1855944 (and d!2168157 b!6942622)))

(assert (=> bs!1855944 (not (= lambda!395723 lambda!395690))))

(declare-fun bs!1855945 () Bool)

(assert (= bs!1855945 (and d!2168157 b!6942909)))

(assert (=> bs!1855945 (not (= lambda!395723 lambda!395719))))

(assert (=> bs!1855941 (not (= lambda!395723 lambda!395657))))

(assert (=> bs!1855940 (not (= lambda!395723 lambda!395701))))

(assert (=> bs!1855942 (not (= lambda!395723 lambda!395710))))

(declare-fun bs!1855946 () Bool)

(assert (= bs!1855946 (and d!2168157 d!2168093)))

(assert (=> bs!1855946 (= (and (= lt!2476370 r1!6342) (= r3!135 lt!2476353)) (= lambda!395723 lambda!395711))))

(declare-fun bs!1855947 () Bool)

(assert (= bs!1855947 (and d!2168157 b!6942966)))

(assert (=> bs!1855947 (not (= lambda!395723 lambda!395721))))

(assert (=> d!2168157 true))

(assert (=> d!2168157 true))

(assert (=> d!2168157 true))

(declare-fun lambda!395724 () Int)

(assert (=> bs!1855934 (= (and (= s!14361 (_1!37131 lt!2476358)) (= lt!2476370 (regOne!34454 r1!6342)) (= r3!135 (regTwo!34454 r1!6342))) (= lambda!395724 lambda!395720))))

(assert (=> bs!1855935 (not (= lambda!395724 lambda!395702))))

(assert (=> bs!1855936 (not (= lambda!395724 lambda!395712))))

(assert (=> bs!1855937 (not (= lambda!395724 lambda!395674))))

(assert (=> bs!1855938 (= (and (= s!14361 lt!2476355) (= lt!2476370 (regOne!34454 lt!2476370)) (= r3!135 (regTwo!34454 lt!2476370))) (= lambda!395724 lambda!395693))))

(assert (=> bs!1855939 (= (and (= lt!2476370 r1!6342) (= r3!135 lt!2476353)) (= lambda!395724 lambda!395717))))

(assert (=> bs!1855940 (not (= lambda!395724 lambda!395700))))

(assert (=> bs!1855941 (= (and (= s!14361 lt!2476355) (= lt!2476370 r1!6342) (= r3!135 r2!6280)) (= lambda!395724 lambda!395659))))

(assert (=> bs!1855941 (not (= lambda!395724 lambda!395656))))

(assert (=> bs!1855942 (not (= lambda!395724 lambda!395709))))

(declare-fun bs!1855948 () Bool)

(assert (= bs!1855948 d!2168157))

(assert (=> bs!1855948 (not (= lambda!395724 lambda!395723))))

(assert (=> bs!1855941 (not (= lambda!395724 lambda!395658))))

(assert (=> bs!1855943 (= (and (= s!14361 (_1!37131 lt!2476377)) (= lt!2476370 (regOne!34454 r2!6280)) (= r3!135 (regTwo!34454 r2!6280))) (= lambda!395724 lambda!395722))))

(assert (=> bs!1855941 (not (= lambda!395724 lambda!395654))))

(assert (=> bs!1855941 (= (and (= lt!2476370 r1!6342) (= r3!135 lt!2476353)) (= lambda!395724 lambda!395655))))

(assert (=> bs!1855941 (not (= lambda!395724 lambda!395660))))

(assert (=> bs!1855939 (not (= lambda!395724 lambda!395715))))

(assert (=> bs!1855944 (not (= lambda!395724 lambda!395690))))

(assert (=> bs!1855945 (not (= lambda!395724 lambda!395719))))

(assert (=> bs!1855941 (= (and (= s!14361 (_2!37131 lt!2476358)) (= lt!2476370 r2!6280)) (= lambda!395724 lambda!395657))))

(assert (=> bs!1855940 (= (and (= s!14361 (_2!37131 lt!2476358)) (= lt!2476370 r2!6280)) (= lambda!395724 lambda!395701))))

(assert (=> bs!1855942 (= (and (= s!14361 lt!2476355) (= lt!2476370 r1!6342) (= r3!135 r2!6280)) (= lambda!395724 lambda!395710))))

(assert (=> bs!1855946 (not (= lambda!395724 lambda!395711))))

(assert (=> bs!1855947 (not (= lambda!395724 lambda!395721))))

(assert (=> d!2168157 true))

(assert (=> d!2168157 true))

(assert (=> d!2168157 true))

(assert (=> d!2168157 (= (Exists!3971 lambda!395723) (Exists!3971 lambda!395724))))

(declare-fun lt!2476491 () Unit!160672)

(assert (=> d!2168157 (= lt!2476491 (choose!51732 lt!2476370 r3!135 s!14361))))

(assert (=> d!2168157 (validRegex!8677 lt!2476370)))

(assert (=> d!2168157 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2432 lt!2476370 r3!135 s!14361) lt!2476491)))

(declare-fun m!7647960 () Bool)

(assert (=> bs!1855948 m!7647960))

(declare-fun m!7647962 () Bool)

(assert (=> bs!1855948 m!7647962))

(declare-fun m!7647964 () Bool)

(assert (=> bs!1855948 m!7647964))

(assert (=> bs!1855948 m!7647404))

(assert (=> b!6942379 d!2168157))

(declare-fun d!2168159 () Bool)

(assert (=> d!2168159 (isDefined!13441 (findConcatSeparation!3154 r1!6342 r2!6280 Nil!66600 lt!2476355 lt!2476355))))

(declare-fun lt!2476492 () Unit!160672)

(assert (=> d!2168159 (= lt!2476492 (choose!51734 r1!6342 r2!6280 (_1!37131 lt!2476358) (_1!37131 lt!2476377) lt!2476355 Nil!66600 lt!2476355))))

(assert (=> d!2168159 (validRegex!8677 r1!6342)))

(assert (=> d!2168159 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!114 r1!6342 r2!6280 (_1!37131 lt!2476358) (_1!37131 lt!2476377) lt!2476355 Nil!66600 lt!2476355) lt!2476492)))

(declare-fun bs!1855949 () Bool)

(assert (= bs!1855949 d!2168159))

(assert (=> bs!1855949 m!7647274))

(assert (=> bs!1855949 m!7647274))

(assert (=> bs!1855949 m!7647276))

(declare-fun m!7647966 () Bool)

(assert (=> bs!1855949 m!7647966))

(assert (=> bs!1855949 m!7647334))

(assert (=> b!6942379 d!2168159))

(declare-fun bs!1855950 () Bool)

(declare-fun b!6943088 () Bool)

(assert (= bs!1855950 (and b!6943088 b!6942907)))

(declare-fun lambda!395725 () Int)

(assert (=> bs!1855950 (not (= lambda!395725 lambda!395720))))

(declare-fun bs!1855951 () Bool)

(assert (= bs!1855951 (and b!6943088 d!2168047)))

(assert (=> bs!1855951 (not (= lambda!395725 lambda!395702))))

(declare-fun bs!1855952 () Bool)

(assert (= bs!1855952 (and b!6943088 d!2168097)))

(assert (=> bs!1855952 (not (= lambda!395725 lambda!395712))))

(declare-fun bs!1855953 () Bool)

(assert (= bs!1855953 (and b!6943088 d!2168157)))

(assert (=> bs!1855953 (not (= lambda!395725 lambda!395724))))

(declare-fun bs!1855954 () Bool)

(assert (= bs!1855954 (and b!6943088 d!2167991)))

(assert (=> bs!1855954 (not (= lambda!395725 lambda!395674))))

(declare-fun bs!1855955 () Bool)

(assert (= bs!1855955 (and b!6943088 b!6942620)))

(assert (=> bs!1855955 (not (= lambda!395725 lambda!395693))))

(declare-fun bs!1855956 () Bool)

(assert (= bs!1855956 (and b!6943088 d!2168117)))

(assert (=> bs!1855956 (not (= lambda!395725 lambda!395717))))

(declare-fun bs!1855957 () Bool)

(assert (= bs!1855957 (and b!6943088 d!2168037)))

(assert (=> bs!1855957 (not (= lambda!395725 lambda!395700))))

(declare-fun bs!1855958 () Bool)

(assert (= bs!1855958 (and b!6943088 b!6942379)))

(assert (=> bs!1855958 (not (= lambda!395725 lambda!395659))))

(assert (=> bs!1855958 (not (= lambda!395725 lambda!395656))))

(declare-fun bs!1855959 () Bool)

(assert (= bs!1855959 (and b!6943088 d!2168087)))

(assert (=> bs!1855959 (not (= lambda!395725 lambda!395709))))

(assert (=> bs!1855953 (not (= lambda!395725 lambda!395723))))

(assert (=> bs!1855958 (not (= lambda!395725 lambda!395658))))

(declare-fun bs!1855960 () Bool)

(assert (= bs!1855960 (and b!6943088 b!6942964)))

(assert (=> bs!1855960 (not (= lambda!395725 lambda!395722))))

(assert (=> bs!1855958 (not (= lambda!395725 lambda!395654))))

(assert (=> bs!1855958 (not (= lambda!395725 lambda!395655))))

(assert (=> bs!1855958 (not (= lambda!395725 lambda!395660))))

(assert (=> bs!1855956 (not (= lambda!395725 lambda!395715))))

(declare-fun bs!1855961 () Bool)

(assert (= bs!1855961 (and b!6943088 b!6942622)))

(assert (=> bs!1855961 (= (and (= (_2!37131 lt!2476358) lt!2476355) (= (reg!17300 lt!2476353) (reg!17300 lt!2476370)) (= lt!2476353 lt!2476370)) (= lambda!395725 lambda!395690))))

(declare-fun bs!1855962 () Bool)

(assert (= bs!1855962 (and b!6943088 b!6942909)))

(assert (=> bs!1855962 (= (and (= (_2!37131 lt!2476358) (_1!37131 lt!2476358)) (= (reg!17300 lt!2476353) (reg!17300 r1!6342)) (= lt!2476353 r1!6342)) (= lambda!395725 lambda!395719))))

(assert (=> bs!1855958 (not (= lambda!395725 lambda!395657))))

(assert (=> bs!1855957 (not (= lambda!395725 lambda!395701))))

(assert (=> bs!1855959 (not (= lambda!395725 lambda!395710))))

(declare-fun bs!1855963 () Bool)

(assert (= bs!1855963 (and b!6943088 d!2168093)))

(assert (=> bs!1855963 (not (= lambda!395725 lambda!395711))))

(declare-fun bs!1855964 () Bool)

(assert (= bs!1855964 (and b!6943088 b!6942966)))

(assert (=> bs!1855964 (= (and (= (_2!37131 lt!2476358) (_1!37131 lt!2476377)) (= (reg!17300 lt!2476353) (reg!17300 r2!6280)) (= lt!2476353 r2!6280)) (= lambda!395725 lambda!395721))))

(assert (=> b!6943088 true))

(assert (=> b!6943088 true))

(declare-fun bs!1855965 () Bool)

(declare-fun b!6943086 () Bool)

(assert (= bs!1855965 (and b!6943086 b!6942907)))

(declare-fun lambda!395726 () Int)

(assert (=> bs!1855965 (= (and (= (_2!37131 lt!2476358) (_1!37131 lt!2476358)) (= (regOne!34454 lt!2476353) (regOne!34454 r1!6342)) (= (regTwo!34454 lt!2476353) (regTwo!34454 r1!6342))) (= lambda!395726 lambda!395720))))

(declare-fun bs!1855966 () Bool)

(assert (= bs!1855966 (and b!6943086 d!2168047)))

(assert (=> bs!1855966 (not (= lambda!395726 lambda!395702))))

(declare-fun bs!1855967 () Bool)

(assert (= bs!1855967 (and b!6943086 d!2168097)))

(assert (=> bs!1855967 (not (= lambda!395726 lambda!395712))))

(declare-fun bs!1855968 () Bool)

(assert (= bs!1855968 (and b!6943086 d!2168157)))

(assert (=> bs!1855968 (= (and (= (_2!37131 lt!2476358) s!14361) (= (regOne!34454 lt!2476353) lt!2476370) (= (regTwo!34454 lt!2476353) r3!135)) (= lambda!395726 lambda!395724))))

(declare-fun bs!1855969 () Bool)

(assert (= bs!1855969 (and b!6943086 d!2167991)))

(assert (=> bs!1855969 (not (= lambda!395726 lambda!395674))))

(declare-fun bs!1855970 () Bool)

(assert (= bs!1855970 (and b!6943086 b!6942620)))

(assert (=> bs!1855970 (= (and (= (_2!37131 lt!2476358) lt!2476355) (= (regOne!34454 lt!2476353) (regOne!34454 lt!2476370)) (= (regTwo!34454 lt!2476353) (regTwo!34454 lt!2476370))) (= lambda!395726 lambda!395693))))

(declare-fun bs!1855971 () Bool)

(assert (= bs!1855971 (and b!6943086 d!2168117)))

(assert (=> bs!1855971 (= (and (= (_2!37131 lt!2476358) s!14361) (= (regOne!34454 lt!2476353) r1!6342) (= (regTwo!34454 lt!2476353) lt!2476353)) (= lambda!395726 lambda!395717))))

(declare-fun bs!1855972 () Bool)

(assert (= bs!1855972 (and b!6943086 d!2168037)))

(assert (=> bs!1855972 (not (= lambda!395726 lambda!395700))))

(declare-fun bs!1855973 () Bool)

(assert (= bs!1855973 (and b!6943086 b!6942379)))

(assert (=> bs!1855973 (= (and (= (_2!37131 lt!2476358) lt!2476355) (= (regOne!34454 lt!2476353) r1!6342) (= (regTwo!34454 lt!2476353) r2!6280)) (= lambda!395726 lambda!395659))))

(declare-fun bs!1855974 () Bool)

(assert (= bs!1855974 (and b!6943086 b!6943088)))

(assert (=> bs!1855974 (not (= lambda!395726 lambda!395725))))

(assert (=> bs!1855973 (not (= lambda!395726 lambda!395656))))

(declare-fun bs!1855975 () Bool)

(assert (= bs!1855975 (and b!6943086 d!2168087)))

(assert (=> bs!1855975 (not (= lambda!395726 lambda!395709))))

(assert (=> bs!1855968 (not (= lambda!395726 lambda!395723))))

(assert (=> bs!1855973 (not (= lambda!395726 lambda!395658))))

(declare-fun bs!1855976 () Bool)

(assert (= bs!1855976 (and b!6943086 b!6942964)))

(assert (=> bs!1855976 (= (and (= (_2!37131 lt!2476358) (_1!37131 lt!2476377)) (= (regOne!34454 lt!2476353) (regOne!34454 r2!6280)) (= (regTwo!34454 lt!2476353) (regTwo!34454 r2!6280))) (= lambda!395726 lambda!395722))))

(assert (=> bs!1855973 (not (= lambda!395726 lambda!395654))))

(assert (=> bs!1855973 (= (and (= (_2!37131 lt!2476358) s!14361) (= (regOne!34454 lt!2476353) r1!6342) (= (regTwo!34454 lt!2476353) lt!2476353)) (= lambda!395726 lambda!395655))))

(assert (=> bs!1855973 (not (= lambda!395726 lambda!395660))))

(assert (=> bs!1855971 (not (= lambda!395726 lambda!395715))))

(declare-fun bs!1855977 () Bool)

(assert (= bs!1855977 (and b!6943086 b!6942622)))

(assert (=> bs!1855977 (not (= lambda!395726 lambda!395690))))

(declare-fun bs!1855978 () Bool)

(assert (= bs!1855978 (and b!6943086 b!6942909)))

(assert (=> bs!1855978 (not (= lambda!395726 lambda!395719))))

(assert (=> bs!1855973 (= (and (= (regOne!34454 lt!2476353) r2!6280) (= (regTwo!34454 lt!2476353) r3!135)) (= lambda!395726 lambda!395657))))

(assert (=> bs!1855972 (= (and (= (regOne!34454 lt!2476353) r2!6280) (= (regTwo!34454 lt!2476353) r3!135)) (= lambda!395726 lambda!395701))))

(assert (=> bs!1855975 (= (and (= (_2!37131 lt!2476358) lt!2476355) (= (regOne!34454 lt!2476353) r1!6342) (= (regTwo!34454 lt!2476353) r2!6280)) (= lambda!395726 lambda!395710))))

(declare-fun bs!1855979 () Bool)

(assert (= bs!1855979 (and b!6943086 d!2168093)))

(assert (=> bs!1855979 (not (= lambda!395726 lambda!395711))))

(declare-fun bs!1855980 () Bool)

(assert (= bs!1855980 (and b!6943086 b!6942966)))

(assert (=> bs!1855980 (not (= lambda!395726 lambda!395721))))

(assert (=> b!6943086 true))

(assert (=> b!6943086 true))

(declare-fun b!6943081 () Bool)

(declare-fun e!4176572 () Bool)

(declare-fun e!4176574 () Bool)

(assert (=> b!6943081 (= e!4176572 e!4176574)))

(declare-fun res!2832336 () Bool)

(assert (=> b!6943081 (= res!2832336 (not ((_ is EmptyLang!16971) lt!2476353)))))

(assert (=> b!6943081 (=> (not res!2832336) (not e!4176574))))

(declare-fun b!6943082 () Bool)

(declare-fun e!4176573 () Bool)

(assert (=> b!6943082 (= e!4176573 (matchRSpec!4028 (regTwo!34455 lt!2476353) (_2!37131 lt!2476358)))))

(declare-fun b!6943083 () Bool)

(declare-fun res!2832335 () Bool)

(declare-fun e!4176576 () Bool)

(assert (=> b!6943083 (=> res!2832335 e!4176576)))

(declare-fun call!630719 () Bool)

(assert (=> b!6943083 (= res!2832335 call!630719)))

(declare-fun e!4176577 () Bool)

(assert (=> b!6943083 (= e!4176577 e!4176576)))

(declare-fun b!6943084 () Bool)

(assert (=> b!6943084 (= e!4176572 call!630719)))

(declare-fun b!6943085 () Bool)

(declare-fun c!1288244 () Bool)

(assert (=> b!6943085 (= c!1288244 ((_ is ElementMatch!16971) lt!2476353))))

(declare-fun e!4176575 () Bool)

(assert (=> b!6943085 (= e!4176574 e!4176575)))

(declare-fun call!630718 () Bool)

(assert (=> b!6943086 (= e!4176577 call!630718)))

(declare-fun bm!630713 () Bool)

(assert (=> bm!630713 (= call!630719 (isEmpty!38874 (_2!37131 lt!2476358)))))

(declare-fun d!2168161 () Bool)

(declare-fun c!1288245 () Bool)

(assert (=> d!2168161 (= c!1288245 ((_ is EmptyExpr!16971) lt!2476353))))

(assert (=> d!2168161 (= (matchRSpec!4028 lt!2476353 (_2!37131 lt!2476358)) e!4176572)))

(declare-fun b!6943087 () Bool)

(declare-fun e!4176571 () Bool)

(assert (=> b!6943087 (= e!4176571 e!4176573)))

(declare-fun res!2832337 () Bool)

(assert (=> b!6943087 (= res!2832337 (matchRSpec!4028 (regOne!34455 lt!2476353) (_2!37131 lt!2476358)))))

(assert (=> b!6943087 (=> res!2832337 e!4176573)))

(assert (=> b!6943088 (= e!4176576 call!630718)))

(declare-fun b!6943089 () Bool)

(assert (=> b!6943089 (= e!4176571 e!4176577)))

(declare-fun c!1288243 () Bool)

(assert (=> b!6943089 (= c!1288243 ((_ is Star!16971) lt!2476353))))

(declare-fun b!6943090 () Bool)

(assert (=> b!6943090 (= e!4176575 (= (_2!37131 lt!2476358) (Cons!66600 (c!1288093 lt!2476353) Nil!66600)))))

(declare-fun bm!630714 () Bool)

(assert (=> bm!630714 (= call!630718 (Exists!3971 (ite c!1288243 lambda!395725 lambda!395726)))))

(declare-fun b!6943091 () Bool)

(declare-fun c!1288242 () Bool)

(assert (=> b!6943091 (= c!1288242 ((_ is Union!16971) lt!2476353))))

(assert (=> b!6943091 (= e!4176575 e!4176571)))

(assert (= (and d!2168161 c!1288245) b!6943084))

(assert (= (and d!2168161 (not c!1288245)) b!6943081))

(assert (= (and b!6943081 res!2832336) b!6943085))

(assert (= (and b!6943085 c!1288244) b!6943090))

(assert (= (and b!6943085 (not c!1288244)) b!6943091))

(assert (= (and b!6943091 c!1288242) b!6943087))

(assert (= (and b!6943091 (not c!1288242)) b!6943089))

(assert (= (and b!6943087 (not res!2832337)) b!6943082))

(assert (= (and b!6943089 c!1288243) b!6943083))

(assert (= (and b!6943089 (not c!1288243)) b!6943086))

(assert (= (and b!6943083 (not res!2832335)) b!6943088))

(assert (= (or b!6943088 b!6943086) bm!630714))

(assert (= (or b!6943084 b!6943083) bm!630713))

(declare-fun m!7647968 () Bool)

(assert (=> b!6943082 m!7647968))

(assert (=> bm!630713 m!7647380))

(declare-fun m!7647970 () Bool)

(assert (=> b!6943087 m!7647970))

(declare-fun m!7647972 () Bool)

(assert (=> bm!630714 m!7647972))

(assert (=> b!6942379 d!2168161))

(declare-fun bs!1855981 () Bool)

(declare-fun b!6943099 () Bool)

(assert (= bs!1855981 (and b!6943099 b!6942907)))

(declare-fun lambda!395727 () Int)

(assert (=> bs!1855981 (not (= lambda!395727 lambda!395720))))

(declare-fun bs!1855982 () Bool)

(assert (= bs!1855982 (and b!6943099 d!2168047)))

(assert (=> bs!1855982 (not (= lambda!395727 lambda!395702))))

(declare-fun bs!1855983 () Bool)

(assert (= bs!1855983 (and b!6943099 d!2168097)))

(assert (=> bs!1855983 (not (= lambda!395727 lambda!395712))))

(declare-fun bs!1855984 () Bool)

(assert (= bs!1855984 (and b!6943099 d!2167991)))

(assert (=> bs!1855984 (not (= lambda!395727 lambda!395674))))

(declare-fun bs!1855985 () Bool)

(assert (= bs!1855985 (and b!6943099 b!6942620)))

(assert (=> bs!1855985 (not (= lambda!395727 lambda!395693))))

(declare-fun bs!1855986 () Bool)

(assert (= bs!1855986 (and b!6943099 d!2168117)))

(assert (=> bs!1855986 (not (= lambda!395727 lambda!395717))))

(declare-fun bs!1855987 () Bool)

(assert (= bs!1855987 (and b!6943099 d!2168037)))

(assert (=> bs!1855987 (not (= lambda!395727 lambda!395700))))

(declare-fun bs!1855988 () Bool)

(assert (= bs!1855988 (and b!6943099 b!6942379)))

(assert (=> bs!1855988 (not (= lambda!395727 lambda!395659))))

(declare-fun bs!1855989 () Bool)

(assert (= bs!1855989 (and b!6943099 b!6943088)))

(assert (=> bs!1855989 (= (and (= (_2!37131 lt!2476377) (_2!37131 lt!2476358)) (= (reg!17300 r3!135) (reg!17300 lt!2476353)) (= r3!135 lt!2476353)) (= lambda!395727 lambda!395725))))

(assert (=> bs!1855988 (not (= lambda!395727 lambda!395656))))

(declare-fun bs!1855990 () Bool)

(assert (= bs!1855990 (and b!6943099 d!2168087)))

(assert (=> bs!1855990 (not (= lambda!395727 lambda!395709))))

(declare-fun bs!1855991 () Bool)

(assert (= bs!1855991 (and b!6943099 d!2168157)))

(assert (=> bs!1855991 (not (= lambda!395727 lambda!395723))))

(assert (=> bs!1855988 (not (= lambda!395727 lambda!395658))))

(declare-fun bs!1855992 () Bool)

(assert (= bs!1855992 (and b!6943099 b!6942964)))

(assert (=> bs!1855992 (not (= lambda!395727 lambda!395722))))

(assert (=> bs!1855988 (not (= lambda!395727 lambda!395654))))

(assert (=> bs!1855988 (not (= lambda!395727 lambda!395655))))

(assert (=> bs!1855988 (not (= lambda!395727 lambda!395660))))

(assert (=> bs!1855991 (not (= lambda!395727 lambda!395724))))

(declare-fun bs!1855993 () Bool)

(assert (= bs!1855993 (and b!6943099 b!6943086)))

(assert (=> bs!1855993 (not (= lambda!395727 lambda!395726))))

(assert (=> bs!1855986 (not (= lambda!395727 lambda!395715))))

(declare-fun bs!1855994 () Bool)

(assert (= bs!1855994 (and b!6943099 b!6942622)))

(assert (=> bs!1855994 (= (and (= (_2!37131 lt!2476377) lt!2476355) (= (reg!17300 r3!135) (reg!17300 lt!2476370)) (= r3!135 lt!2476370)) (= lambda!395727 lambda!395690))))

(declare-fun bs!1855995 () Bool)

(assert (= bs!1855995 (and b!6943099 b!6942909)))

(assert (=> bs!1855995 (= (and (= (_2!37131 lt!2476377) (_1!37131 lt!2476358)) (= (reg!17300 r3!135) (reg!17300 r1!6342)) (= r3!135 r1!6342)) (= lambda!395727 lambda!395719))))

(assert (=> bs!1855988 (not (= lambda!395727 lambda!395657))))

(assert (=> bs!1855987 (not (= lambda!395727 lambda!395701))))

(assert (=> bs!1855990 (not (= lambda!395727 lambda!395710))))

(declare-fun bs!1855996 () Bool)

(assert (= bs!1855996 (and b!6943099 d!2168093)))

(assert (=> bs!1855996 (not (= lambda!395727 lambda!395711))))

(declare-fun bs!1855997 () Bool)

(assert (= bs!1855997 (and b!6943099 b!6942966)))

(assert (=> bs!1855997 (= (and (= (_2!37131 lt!2476377) (_1!37131 lt!2476377)) (= (reg!17300 r3!135) (reg!17300 r2!6280)) (= r3!135 r2!6280)) (= lambda!395727 lambda!395721))))

(assert (=> b!6943099 true))

(assert (=> b!6943099 true))

(declare-fun bs!1855998 () Bool)

(declare-fun b!6943097 () Bool)

(assert (= bs!1855998 (and b!6943097 b!6942907)))

(declare-fun lambda!395728 () Int)

(assert (=> bs!1855998 (= (and (= (_2!37131 lt!2476377) (_1!37131 lt!2476358)) (= (regOne!34454 r3!135) (regOne!34454 r1!6342)) (= (regTwo!34454 r3!135) (regTwo!34454 r1!6342))) (= lambda!395728 lambda!395720))))

(declare-fun bs!1855999 () Bool)

(assert (= bs!1855999 (and b!6943097 d!2168047)))

(assert (=> bs!1855999 (not (= lambda!395728 lambda!395702))))

(declare-fun bs!1856000 () Bool)

(assert (= bs!1856000 (and b!6943097 d!2168097)))

(assert (=> bs!1856000 (not (= lambda!395728 lambda!395712))))

(declare-fun bs!1856001 () Bool)

(assert (= bs!1856001 (and b!6943097 d!2167991)))

(assert (=> bs!1856001 (not (= lambda!395728 lambda!395674))))

(declare-fun bs!1856002 () Bool)

(assert (= bs!1856002 (and b!6943097 b!6942620)))

(assert (=> bs!1856002 (= (and (= (_2!37131 lt!2476377) lt!2476355) (= (regOne!34454 r3!135) (regOne!34454 lt!2476370)) (= (regTwo!34454 r3!135) (regTwo!34454 lt!2476370))) (= lambda!395728 lambda!395693))))

(declare-fun bs!1856003 () Bool)

(assert (= bs!1856003 (and b!6943097 d!2168117)))

(assert (=> bs!1856003 (= (and (= (_2!37131 lt!2476377) s!14361) (= (regOne!34454 r3!135) r1!6342) (= (regTwo!34454 r3!135) lt!2476353)) (= lambda!395728 lambda!395717))))

(declare-fun bs!1856004 () Bool)

(assert (= bs!1856004 (and b!6943097 d!2168037)))

(assert (=> bs!1856004 (not (= lambda!395728 lambda!395700))))

(declare-fun bs!1856005 () Bool)

(assert (= bs!1856005 (and b!6943097 b!6942379)))

(assert (=> bs!1856005 (= (and (= (_2!37131 lt!2476377) lt!2476355) (= (regOne!34454 r3!135) r1!6342) (= (regTwo!34454 r3!135) r2!6280)) (= lambda!395728 lambda!395659))))

(declare-fun bs!1856006 () Bool)

(assert (= bs!1856006 (and b!6943097 b!6943088)))

(assert (=> bs!1856006 (not (= lambda!395728 lambda!395725))))

(assert (=> bs!1856005 (not (= lambda!395728 lambda!395656))))

(declare-fun bs!1856007 () Bool)

(assert (= bs!1856007 (and b!6943097 d!2168087)))

(assert (=> bs!1856007 (not (= lambda!395728 lambda!395709))))

(declare-fun bs!1856008 () Bool)

(assert (= bs!1856008 (and b!6943097 b!6943099)))

(assert (=> bs!1856008 (not (= lambda!395728 lambda!395727))))

(declare-fun bs!1856009 () Bool)

(assert (= bs!1856009 (and b!6943097 d!2168157)))

(assert (=> bs!1856009 (not (= lambda!395728 lambda!395723))))

(assert (=> bs!1856005 (not (= lambda!395728 lambda!395658))))

(declare-fun bs!1856010 () Bool)

(assert (= bs!1856010 (and b!6943097 b!6942964)))

(assert (=> bs!1856010 (= (and (= (_2!37131 lt!2476377) (_1!37131 lt!2476377)) (= (regOne!34454 r3!135) (regOne!34454 r2!6280)) (= (regTwo!34454 r3!135) (regTwo!34454 r2!6280))) (= lambda!395728 lambda!395722))))

(assert (=> bs!1856005 (not (= lambda!395728 lambda!395654))))

(assert (=> bs!1856005 (= (and (= (_2!37131 lt!2476377) s!14361) (= (regOne!34454 r3!135) r1!6342) (= (regTwo!34454 r3!135) lt!2476353)) (= lambda!395728 lambda!395655))))

(assert (=> bs!1856005 (not (= lambda!395728 lambda!395660))))

(assert (=> bs!1856009 (= (and (= (_2!37131 lt!2476377) s!14361) (= (regOne!34454 r3!135) lt!2476370) (= (regTwo!34454 r3!135) r3!135)) (= lambda!395728 lambda!395724))))

(declare-fun bs!1856011 () Bool)

(assert (= bs!1856011 (and b!6943097 b!6943086)))

(assert (=> bs!1856011 (= (and (= (_2!37131 lt!2476377) (_2!37131 lt!2476358)) (= (regOne!34454 r3!135) (regOne!34454 lt!2476353)) (= (regTwo!34454 r3!135) (regTwo!34454 lt!2476353))) (= lambda!395728 lambda!395726))))

(assert (=> bs!1856003 (not (= lambda!395728 lambda!395715))))

(declare-fun bs!1856012 () Bool)

(assert (= bs!1856012 (and b!6943097 b!6942622)))

(assert (=> bs!1856012 (not (= lambda!395728 lambda!395690))))

(declare-fun bs!1856013 () Bool)

(assert (= bs!1856013 (and b!6943097 b!6942909)))

(assert (=> bs!1856013 (not (= lambda!395728 lambda!395719))))

(assert (=> bs!1856005 (= (and (= (_2!37131 lt!2476377) (_2!37131 lt!2476358)) (= (regOne!34454 r3!135) r2!6280) (= (regTwo!34454 r3!135) r3!135)) (= lambda!395728 lambda!395657))))

(assert (=> bs!1856004 (= (and (= (_2!37131 lt!2476377) (_2!37131 lt!2476358)) (= (regOne!34454 r3!135) r2!6280) (= (regTwo!34454 r3!135) r3!135)) (= lambda!395728 lambda!395701))))

(assert (=> bs!1856007 (= (and (= (_2!37131 lt!2476377) lt!2476355) (= (regOne!34454 r3!135) r1!6342) (= (regTwo!34454 r3!135) r2!6280)) (= lambda!395728 lambda!395710))))

(declare-fun bs!1856014 () Bool)

(assert (= bs!1856014 (and b!6943097 d!2168093)))

(assert (=> bs!1856014 (not (= lambda!395728 lambda!395711))))

(declare-fun bs!1856015 () Bool)

(assert (= bs!1856015 (and b!6943097 b!6942966)))

(assert (=> bs!1856015 (not (= lambda!395728 lambda!395721))))

(assert (=> b!6943097 true))

(assert (=> b!6943097 true))

(declare-fun b!6943092 () Bool)

(declare-fun e!4176579 () Bool)

(declare-fun e!4176581 () Bool)

(assert (=> b!6943092 (= e!4176579 e!4176581)))

(declare-fun res!2832339 () Bool)

(assert (=> b!6943092 (= res!2832339 (not ((_ is EmptyLang!16971) r3!135)))))

(assert (=> b!6943092 (=> (not res!2832339) (not e!4176581))))

(declare-fun b!6943093 () Bool)

(declare-fun e!4176580 () Bool)

(assert (=> b!6943093 (= e!4176580 (matchRSpec!4028 (regTwo!34455 r3!135) (_2!37131 lt!2476377)))))

(declare-fun b!6943094 () Bool)

(declare-fun res!2832338 () Bool)

(declare-fun e!4176583 () Bool)

(assert (=> b!6943094 (=> res!2832338 e!4176583)))

(declare-fun call!630721 () Bool)

(assert (=> b!6943094 (= res!2832338 call!630721)))

(declare-fun e!4176584 () Bool)

(assert (=> b!6943094 (= e!4176584 e!4176583)))

(declare-fun b!6943095 () Bool)

(assert (=> b!6943095 (= e!4176579 call!630721)))

(declare-fun b!6943096 () Bool)

(declare-fun c!1288248 () Bool)

(assert (=> b!6943096 (= c!1288248 ((_ is ElementMatch!16971) r3!135))))

(declare-fun e!4176582 () Bool)

(assert (=> b!6943096 (= e!4176581 e!4176582)))

(declare-fun call!630720 () Bool)

(assert (=> b!6943097 (= e!4176584 call!630720)))

(declare-fun bm!630715 () Bool)

(assert (=> bm!630715 (= call!630721 (isEmpty!38874 (_2!37131 lt!2476377)))))

(declare-fun d!2168163 () Bool)

(declare-fun c!1288249 () Bool)

(assert (=> d!2168163 (= c!1288249 ((_ is EmptyExpr!16971) r3!135))))

(assert (=> d!2168163 (= (matchRSpec!4028 r3!135 (_2!37131 lt!2476377)) e!4176579)))

(declare-fun b!6943098 () Bool)

(declare-fun e!4176578 () Bool)

(assert (=> b!6943098 (= e!4176578 e!4176580)))

(declare-fun res!2832340 () Bool)

(assert (=> b!6943098 (= res!2832340 (matchRSpec!4028 (regOne!34455 r3!135) (_2!37131 lt!2476377)))))

(assert (=> b!6943098 (=> res!2832340 e!4176580)))

(assert (=> b!6943099 (= e!4176583 call!630720)))

(declare-fun b!6943100 () Bool)

(assert (=> b!6943100 (= e!4176578 e!4176584)))

(declare-fun c!1288247 () Bool)

(assert (=> b!6943100 (= c!1288247 ((_ is Star!16971) r3!135))))

(declare-fun b!6943101 () Bool)

(assert (=> b!6943101 (= e!4176582 (= (_2!37131 lt!2476377) (Cons!66600 (c!1288093 r3!135) Nil!66600)))))

(declare-fun bm!630716 () Bool)

(assert (=> bm!630716 (= call!630720 (Exists!3971 (ite c!1288247 lambda!395727 lambda!395728)))))

(declare-fun b!6943102 () Bool)

(declare-fun c!1288246 () Bool)

(assert (=> b!6943102 (= c!1288246 ((_ is Union!16971) r3!135))))

(assert (=> b!6943102 (= e!4176582 e!4176578)))

(assert (= (and d!2168163 c!1288249) b!6943095))

(assert (= (and d!2168163 (not c!1288249)) b!6943092))

(assert (= (and b!6943092 res!2832339) b!6943096))

(assert (= (and b!6943096 c!1288248) b!6943101))

(assert (= (and b!6943096 (not c!1288248)) b!6943102))

(assert (= (and b!6943102 c!1288246) b!6943098))

(assert (= (and b!6943102 (not c!1288246)) b!6943100))

(assert (= (and b!6943098 (not res!2832340)) b!6943093))

(assert (= (and b!6943100 c!1288247) b!6943094))

(assert (= (and b!6943100 (not c!1288247)) b!6943097))

(assert (= (and b!6943094 (not res!2832338)) b!6943099))

(assert (= (or b!6943099 b!6943097) bm!630716))

(assert (= (or b!6943095 b!6943094) bm!630715))

(declare-fun m!7647974 () Bool)

(assert (=> b!6943093 m!7647974))

(assert (=> bm!630715 m!7647492))

(declare-fun m!7647976 () Bool)

(assert (=> b!6943098 m!7647976))

(declare-fun m!7647978 () Bool)

(assert (=> bm!630716 m!7647978))

(assert (=> b!6942379 d!2168163))

(declare-fun b!6943103 () Bool)

(declare-fun e!4176589 () Option!16740)

(assert (=> b!6943103 (= e!4176589 (Some!16739 (tuple2!67657 Nil!66600 lt!2476355)))))

(declare-fun b!6943104 () Bool)

(declare-fun res!2832341 () Bool)

(declare-fun e!4176587 () Bool)

(assert (=> b!6943104 (=> (not res!2832341) (not e!4176587))))

(declare-fun lt!2476493 () Option!16740)

(assert (=> b!6943104 (= res!2832341 (matchR!9110 r1!6342 (_1!37131 (get!23393 lt!2476493))))))

(declare-fun b!6943105 () Bool)

(declare-fun e!4176585 () Bool)

(assert (=> b!6943105 (= e!4176585 (matchR!9110 r2!6280 lt!2476355))))

(declare-fun b!6943106 () Bool)

(declare-fun e!4176586 () Option!16740)

(assert (=> b!6943106 (= e!4176589 e!4176586)))

(declare-fun c!1288251 () Bool)

(assert (=> b!6943106 (= c!1288251 ((_ is Nil!66600) lt!2476355))))

(declare-fun d!2168165 () Bool)

(declare-fun e!4176588 () Bool)

(assert (=> d!2168165 e!4176588))

(declare-fun res!2832342 () Bool)

(assert (=> d!2168165 (=> res!2832342 e!4176588)))

(assert (=> d!2168165 (= res!2832342 e!4176587)))

(declare-fun res!2832345 () Bool)

(assert (=> d!2168165 (=> (not res!2832345) (not e!4176587))))

(assert (=> d!2168165 (= res!2832345 (isDefined!13441 lt!2476493))))

(assert (=> d!2168165 (= lt!2476493 e!4176589)))

(declare-fun c!1288250 () Bool)

(assert (=> d!2168165 (= c!1288250 e!4176585)))

(declare-fun res!2832344 () Bool)

(assert (=> d!2168165 (=> (not res!2832344) (not e!4176585))))

(assert (=> d!2168165 (= res!2832344 (matchR!9110 r1!6342 Nil!66600))))

(assert (=> d!2168165 (validRegex!8677 r1!6342)))

(assert (=> d!2168165 (= (findConcatSeparation!3154 r1!6342 r2!6280 Nil!66600 lt!2476355 lt!2476355) lt!2476493)))

(declare-fun b!6943107 () Bool)

(declare-fun lt!2476495 () Unit!160672)

(declare-fun lt!2476494 () Unit!160672)

(assert (=> b!6943107 (= lt!2476495 lt!2476494)))

(assert (=> b!6943107 (= (++!15010 (++!15010 Nil!66600 (Cons!66600 (h!73048 lt!2476355) Nil!66600)) (t!380467 lt!2476355)) lt!2476355)))

(assert (=> b!6943107 (= lt!2476494 (lemmaMoveElementToOtherListKeepsConcatEq!2864 Nil!66600 (h!73048 lt!2476355) (t!380467 lt!2476355) lt!2476355))))

(assert (=> b!6943107 (= e!4176586 (findConcatSeparation!3154 r1!6342 r2!6280 (++!15010 Nil!66600 (Cons!66600 (h!73048 lt!2476355) Nil!66600)) (t!380467 lt!2476355) lt!2476355))))

(declare-fun b!6943108 () Bool)

(assert (=> b!6943108 (= e!4176586 None!16739)))

(declare-fun b!6943109 () Bool)

(assert (=> b!6943109 (= e!4176588 (not (isDefined!13441 lt!2476493)))))

(declare-fun b!6943110 () Bool)

(assert (=> b!6943110 (= e!4176587 (= (++!15010 (_1!37131 (get!23393 lt!2476493)) (_2!37131 (get!23393 lt!2476493))) lt!2476355))))

(declare-fun b!6943111 () Bool)

(declare-fun res!2832343 () Bool)

(assert (=> b!6943111 (=> (not res!2832343) (not e!4176587))))

(assert (=> b!6943111 (= res!2832343 (matchR!9110 r2!6280 (_2!37131 (get!23393 lt!2476493))))))

(assert (= (and d!2168165 res!2832344) b!6943105))

(assert (= (and d!2168165 c!1288250) b!6943103))

(assert (= (and d!2168165 (not c!1288250)) b!6943106))

(assert (= (and b!6943106 c!1288251) b!6943108))

(assert (= (and b!6943106 (not c!1288251)) b!6943107))

(assert (= (and d!2168165 res!2832345) b!6943104))

(assert (= (and b!6943104 res!2832341) b!6943111))

(assert (= (and b!6943111 res!2832343) b!6943110))

(assert (= (and d!2168165 (not res!2832342)) b!6943109))

(declare-fun m!7647980 () Bool)

(assert (=> b!6943104 m!7647980))

(declare-fun m!7647982 () Bool)

(assert (=> b!6943104 m!7647982))

(declare-fun m!7647984 () Bool)

(assert (=> b!6943109 m!7647984))

(assert (=> b!6943111 m!7647980))

(declare-fun m!7647986 () Bool)

(assert (=> b!6943111 m!7647986))

(declare-fun m!7647988 () Bool)

(assert (=> b!6943107 m!7647988))

(assert (=> b!6943107 m!7647988))

(declare-fun m!7647990 () Bool)

(assert (=> b!6943107 m!7647990))

(declare-fun m!7647992 () Bool)

(assert (=> b!6943107 m!7647992))

(assert (=> b!6943107 m!7647988))

(declare-fun m!7647994 () Bool)

(assert (=> b!6943107 m!7647994))

(assert (=> d!2168165 m!7647984))

(declare-fun m!7647996 () Bool)

(assert (=> d!2168165 m!7647996))

(assert (=> d!2168165 m!7647334))

(assert (=> b!6943110 m!7647980))

(declare-fun m!7647998 () Bool)

(assert (=> b!6943110 m!7647998))

(declare-fun m!7648000 () Bool)

(assert (=> b!6943105 m!7648000))

(assert (=> b!6942379 d!2168165))

(declare-fun d!2168167 () Bool)

(assert (=> d!2168167 (= (matchR!9110 r2!6280 (_1!37131 lt!2476377)) (matchRSpec!4028 r2!6280 (_1!37131 lt!2476377)))))

(declare-fun lt!2476496 () Unit!160672)

(assert (=> d!2168167 (= lt!2476496 (choose!51733 r2!6280 (_1!37131 lt!2476377)))))

(assert (=> d!2168167 (validRegex!8677 r2!6280)))

(assert (=> d!2168167 (= (mainMatchTheorem!4028 r2!6280 (_1!37131 lt!2476377)) lt!2476496)))

(declare-fun bs!1856016 () Bool)

(assert (= bs!1856016 d!2168167))

(assert (=> bs!1856016 m!7647238))

(assert (=> bs!1856016 m!7647246))

(declare-fun m!7648002 () Bool)

(assert (=> bs!1856016 m!7648002))

(assert (=> bs!1856016 m!7647332))

(assert (=> b!6942379 d!2168167))

(declare-fun b!6943130 () Bool)

(declare-fun e!4176605 () Bool)

(declare-fun e!4176608 () Bool)

(assert (=> b!6943130 (= e!4176605 e!4176608)))

(declare-fun c!1288257 () Bool)

(assert (=> b!6943130 (= c!1288257 ((_ is Union!16971) r2!6280))))

(declare-fun b!6943132 () Bool)

(declare-fun res!2832357 () Bool)

(declare-fun e!4176610 () Bool)

(assert (=> b!6943132 (=> (not res!2832357) (not e!4176610))))

(declare-fun call!630728 () Bool)

(assert (=> b!6943132 (= res!2832357 call!630728)))

(assert (=> b!6943132 (= e!4176608 e!4176610)))

(declare-fun bm!630723 () Bool)

(declare-fun call!630729 () Bool)

(declare-fun call!630730 () Bool)

(assert (=> bm!630723 (= call!630729 call!630730)))

(declare-fun b!6943133 () Bool)

(declare-fun res!2832356 () Bool)

(declare-fun e!4176606 () Bool)

(assert (=> b!6943133 (=> res!2832356 e!4176606)))

(assert (=> b!6943133 (= res!2832356 (not ((_ is Concat!25816) r2!6280)))))

(assert (=> b!6943133 (= e!4176608 e!4176606)))

(declare-fun b!6943134 () Bool)

(assert (=> b!6943134 (= e!4176610 call!630729)))

(declare-fun b!6943135 () Bool)

(declare-fun e!4176609 () Bool)

(assert (=> b!6943135 (= e!4176609 call!630728)))

(declare-fun b!6943136 () Bool)

(declare-fun e!4176604 () Bool)

(assert (=> b!6943136 (= e!4176605 e!4176604)))

(declare-fun res!2832358 () Bool)

(assert (=> b!6943136 (= res!2832358 (not (nullable!6786 (reg!17300 r2!6280))))))

(assert (=> b!6943136 (=> (not res!2832358) (not e!4176604))))

(declare-fun b!6943137 () Bool)

(assert (=> b!6943137 (= e!4176604 call!630730)))

(declare-fun b!6943138 () Bool)

(assert (=> b!6943138 (= e!4176606 e!4176609)))

(declare-fun res!2832359 () Bool)

(assert (=> b!6943138 (=> (not res!2832359) (not e!4176609))))

(assert (=> b!6943138 (= res!2832359 call!630729)))

(declare-fun c!1288256 () Bool)

(declare-fun bm!630724 () Bool)

(assert (=> bm!630724 (= call!630730 (validRegex!8677 (ite c!1288256 (reg!17300 r2!6280) (ite c!1288257 (regTwo!34455 r2!6280) (regOne!34454 r2!6280)))))))

(declare-fun bm!630725 () Bool)

(assert (=> bm!630725 (= call!630728 (validRegex!8677 (ite c!1288257 (regOne!34455 r2!6280) (regTwo!34454 r2!6280))))))

(declare-fun b!6943131 () Bool)

(declare-fun e!4176607 () Bool)

(assert (=> b!6943131 (= e!4176607 e!4176605)))

(assert (=> b!6943131 (= c!1288256 ((_ is Star!16971) r2!6280))))

(declare-fun d!2168169 () Bool)

(declare-fun res!2832360 () Bool)

(assert (=> d!2168169 (=> res!2832360 e!4176607)))

(assert (=> d!2168169 (= res!2832360 ((_ is ElementMatch!16971) r2!6280))))

(assert (=> d!2168169 (= (validRegex!8677 r2!6280) e!4176607)))

(assert (= (and d!2168169 (not res!2832360)) b!6943131))

(assert (= (and b!6943131 c!1288256) b!6943136))

(assert (= (and b!6943131 (not c!1288256)) b!6943130))

(assert (= (and b!6943136 res!2832358) b!6943137))

(assert (= (and b!6943130 c!1288257) b!6943132))

(assert (= (and b!6943130 (not c!1288257)) b!6943133))

(assert (= (and b!6943132 res!2832357) b!6943134))

(assert (= (and b!6943133 (not res!2832356)) b!6943138))

(assert (= (and b!6943138 res!2832359) b!6943135))

(assert (= (or b!6943132 b!6943135) bm!630725))

(assert (= (or b!6943134 b!6943138) bm!630723))

(assert (= (or b!6943137 bm!630723) bm!630724))

(declare-fun m!7648004 () Bool)

(assert (=> b!6943136 m!7648004))

(declare-fun m!7648006 () Bool)

(assert (=> bm!630724 m!7648006))

(declare-fun m!7648008 () Bool)

(assert (=> bm!630725 m!7648008))

(assert (=> b!6942380 d!2168169))

(declare-fun b!6943139 () Bool)

(declare-fun e!4176612 () Bool)

(declare-fun e!4176615 () Bool)

(assert (=> b!6943139 (= e!4176612 e!4176615)))

(declare-fun c!1288259 () Bool)

(assert (=> b!6943139 (= c!1288259 ((_ is Union!16971) r1!6342))))

(declare-fun b!6943141 () Bool)

(declare-fun res!2832362 () Bool)

(declare-fun e!4176617 () Bool)

(assert (=> b!6943141 (=> (not res!2832362) (not e!4176617))))

(declare-fun call!630731 () Bool)

(assert (=> b!6943141 (= res!2832362 call!630731)))

(assert (=> b!6943141 (= e!4176615 e!4176617)))

(declare-fun bm!630726 () Bool)

(declare-fun call!630732 () Bool)

(declare-fun call!630733 () Bool)

(assert (=> bm!630726 (= call!630732 call!630733)))

(declare-fun b!6943142 () Bool)

(declare-fun res!2832361 () Bool)

(declare-fun e!4176613 () Bool)

(assert (=> b!6943142 (=> res!2832361 e!4176613)))

(assert (=> b!6943142 (= res!2832361 (not ((_ is Concat!25816) r1!6342)))))

(assert (=> b!6943142 (= e!4176615 e!4176613)))

(declare-fun b!6943143 () Bool)

(assert (=> b!6943143 (= e!4176617 call!630732)))

(declare-fun b!6943144 () Bool)

(declare-fun e!4176616 () Bool)

(assert (=> b!6943144 (= e!4176616 call!630731)))

(declare-fun b!6943145 () Bool)

(declare-fun e!4176611 () Bool)

(assert (=> b!6943145 (= e!4176612 e!4176611)))

(declare-fun res!2832363 () Bool)

(assert (=> b!6943145 (= res!2832363 (not (nullable!6786 (reg!17300 r1!6342))))))

(assert (=> b!6943145 (=> (not res!2832363) (not e!4176611))))

(declare-fun b!6943146 () Bool)

(assert (=> b!6943146 (= e!4176611 call!630733)))

(declare-fun b!6943147 () Bool)

(assert (=> b!6943147 (= e!4176613 e!4176616)))

(declare-fun res!2832364 () Bool)

(assert (=> b!6943147 (=> (not res!2832364) (not e!4176616))))

(assert (=> b!6943147 (= res!2832364 call!630732)))

(declare-fun bm!630727 () Bool)

(declare-fun c!1288258 () Bool)

(assert (=> bm!630727 (= call!630733 (validRegex!8677 (ite c!1288258 (reg!17300 r1!6342) (ite c!1288259 (regTwo!34455 r1!6342) (regOne!34454 r1!6342)))))))

(declare-fun bm!630728 () Bool)

(assert (=> bm!630728 (= call!630731 (validRegex!8677 (ite c!1288259 (regOne!34455 r1!6342) (regTwo!34454 r1!6342))))))

(declare-fun b!6943140 () Bool)

(declare-fun e!4176614 () Bool)

(assert (=> b!6943140 (= e!4176614 e!4176612)))

(assert (=> b!6943140 (= c!1288258 ((_ is Star!16971) r1!6342))))

(declare-fun d!2168171 () Bool)

(declare-fun res!2832365 () Bool)

(assert (=> d!2168171 (=> res!2832365 e!4176614)))

(assert (=> d!2168171 (= res!2832365 ((_ is ElementMatch!16971) r1!6342))))

(assert (=> d!2168171 (= (validRegex!8677 r1!6342) e!4176614)))

(assert (= (and d!2168171 (not res!2832365)) b!6943140))

(assert (= (and b!6943140 c!1288258) b!6943145))

(assert (= (and b!6943140 (not c!1288258)) b!6943139))

(assert (= (and b!6943145 res!2832363) b!6943146))

(assert (= (and b!6943139 c!1288259) b!6943141))

(assert (= (and b!6943139 (not c!1288259)) b!6943142))

(assert (= (and b!6943141 res!2832362) b!6943143))

(assert (= (and b!6943142 (not res!2832361)) b!6943147))

(assert (= (and b!6943147 res!2832364) b!6943144))

(assert (= (or b!6943141 b!6943144) bm!630728))

(assert (= (or b!6943143 b!6943147) bm!630726))

(assert (= (or b!6943146 bm!630726) bm!630727))

(declare-fun m!7648010 () Bool)

(assert (=> b!6943145 m!7648010))

(declare-fun m!7648012 () Bool)

(assert (=> bm!630727 m!7648012))

(declare-fun m!7648014 () Bool)

(assert (=> bm!630728 m!7648014))

(assert (=> start!666642 d!2168171))

(declare-fun b!6943148 () Bool)

(declare-fun e!4176619 () Bool)

(declare-fun e!4176622 () Bool)

(assert (=> b!6943148 (= e!4176619 e!4176622)))

(declare-fun c!1288261 () Bool)

(assert (=> b!6943148 (= c!1288261 ((_ is Union!16971) r3!135))))

(declare-fun b!6943150 () Bool)

(declare-fun res!2832367 () Bool)

(declare-fun e!4176624 () Bool)

(assert (=> b!6943150 (=> (not res!2832367) (not e!4176624))))

(declare-fun call!630734 () Bool)

(assert (=> b!6943150 (= res!2832367 call!630734)))

(assert (=> b!6943150 (= e!4176622 e!4176624)))

(declare-fun bm!630729 () Bool)

(declare-fun call!630735 () Bool)

(declare-fun call!630736 () Bool)

(assert (=> bm!630729 (= call!630735 call!630736)))

(declare-fun b!6943151 () Bool)

(declare-fun res!2832366 () Bool)

(declare-fun e!4176620 () Bool)

(assert (=> b!6943151 (=> res!2832366 e!4176620)))

(assert (=> b!6943151 (= res!2832366 (not ((_ is Concat!25816) r3!135)))))

(assert (=> b!6943151 (= e!4176622 e!4176620)))

(declare-fun b!6943152 () Bool)

(assert (=> b!6943152 (= e!4176624 call!630735)))

(declare-fun b!6943153 () Bool)

(declare-fun e!4176623 () Bool)

(assert (=> b!6943153 (= e!4176623 call!630734)))

(declare-fun b!6943154 () Bool)

(declare-fun e!4176618 () Bool)

(assert (=> b!6943154 (= e!4176619 e!4176618)))

(declare-fun res!2832368 () Bool)

(assert (=> b!6943154 (= res!2832368 (not (nullable!6786 (reg!17300 r3!135))))))

(assert (=> b!6943154 (=> (not res!2832368) (not e!4176618))))

(declare-fun b!6943155 () Bool)

(assert (=> b!6943155 (= e!4176618 call!630736)))

(declare-fun b!6943156 () Bool)

(assert (=> b!6943156 (= e!4176620 e!4176623)))

(declare-fun res!2832369 () Bool)

(assert (=> b!6943156 (=> (not res!2832369) (not e!4176623))))

(assert (=> b!6943156 (= res!2832369 call!630735)))

(declare-fun c!1288260 () Bool)

(declare-fun bm!630730 () Bool)

(assert (=> bm!630730 (= call!630736 (validRegex!8677 (ite c!1288260 (reg!17300 r3!135) (ite c!1288261 (regTwo!34455 r3!135) (regOne!34454 r3!135)))))))

(declare-fun bm!630731 () Bool)

(assert (=> bm!630731 (= call!630734 (validRegex!8677 (ite c!1288261 (regOne!34455 r3!135) (regTwo!34454 r3!135))))))

(declare-fun b!6943149 () Bool)

(declare-fun e!4176621 () Bool)

(assert (=> b!6943149 (= e!4176621 e!4176619)))

(assert (=> b!6943149 (= c!1288260 ((_ is Star!16971) r3!135))))

(declare-fun d!2168173 () Bool)

(declare-fun res!2832370 () Bool)

(assert (=> d!2168173 (=> res!2832370 e!4176621)))

(assert (=> d!2168173 (= res!2832370 ((_ is ElementMatch!16971) r3!135))))

(assert (=> d!2168173 (= (validRegex!8677 r3!135) e!4176621)))

(assert (= (and d!2168173 (not res!2832370)) b!6943149))

(assert (= (and b!6943149 c!1288260) b!6943154))

(assert (= (and b!6943149 (not c!1288260)) b!6943148))

(assert (= (and b!6943154 res!2832368) b!6943155))

(assert (= (and b!6943148 c!1288261) b!6943150))

(assert (= (and b!6943148 (not c!1288261)) b!6943151))

(assert (= (and b!6943150 res!2832367) b!6943152))

(assert (= (and b!6943151 (not res!2832366)) b!6943156))

(assert (= (and b!6943156 res!2832369) b!6943153))

(assert (= (or b!6943150 b!6943153) bm!630731))

(assert (= (or b!6943152 b!6943156) bm!630729))

(assert (= (or b!6943155 bm!630729) bm!630730))

(declare-fun m!7648016 () Bool)

(assert (=> b!6943154 m!7648016))

(declare-fun m!7648018 () Bool)

(assert (=> bm!630730 m!7648018))

(declare-fun m!7648020 () Bool)

(assert (=> bm!630731 m!7648020))

(assert (=> b!6942373 d!2168173))

(declare-fun b!6943157 () Bool)

(declare-fun e!4176626 () Bool)

(declare-fun e!4176629 () Bool)

(assert (=> b!6943157 (= e!4176626 e!4176629)))

(declare-fun c!1288263 () Bool)

(assert (=> b!6943157 (= c!1288263 ((_ is Union!16971) lt!2476353))))

(declare-fun b!6943159 () Bool)

(declare-fun res!2832372 () Bool)

(declare-fun e!4176631 () Bool)

(assert (=> b!6943159 (=> (not res!2832372) (not e!4176631))))

(declare-fun call!630737 () Bool)

(assert (=> b!6943159 (= res!2832372 call!630737)))

(assert (=> b!6943159 (= e!4176629 e!4176631)))

(declare-fun bm!630732 () Bool)

(declare-fun call!630738 () Bool)

(declare-fun call!630739 () Bool)

(assert (=> bm!630732 (= call!630738 call!630739)))

(declare-fun b!6943160 () Bool)

(declare-fun res!2832371 () Bool)

(declare-fun e!4176627 () Bool)

(assert (=> b!6943160 (=> res!2832371 e!4176627)))

(assert (=> b!6943160 (= res!2832371 (not ((_ is Concat!25816) lt!2476353)))))

(assert (=> b!6943160 (= e!4176629 e!4176627)))

(declare-fun b!6943161 () Bool)

(assert (=> b!6943161 (= e!4176631 call!630738)))

(declare-fun b!6943162 () Bool)

(declare-fun e!4176630 () Bool)

(assert (=> b!6943162 (= e!4176630 call!630737)))

(declare-fun b!6943163 () Bool)

(declare-fun e!4176625 () Bool)

(assert (=> b!6943163 (= e!4176626 e!4176625)))

(declare-fun res!2832373 () Bool)

(assert (=> b!6943163 (= res!2832373 (not (nullable!6786 (reg!17300 lt!2476353))))))

(assert (=> b!6943163 (=> (not res!2832373) (not e!4176625))))

(declare-fun b!6943164 () Bool)

(assert (=> b!6943164 (= e!4176625 call!630739)))

(declare-fun b!6943165 () Bool)

(assert (=> b!6943165 (= e!4176627 e!4176630)))

(declare-fun res!2832374 () Bool)

(assert (=> b!6943165 (=> (not res!2832374) (not e!4176630))))

(assert (=> b!6943165 (= res!2832374 call!630738)))

(declare-fun bm!630733 () Bool)

(declare-fun c!1288262 () Bool)

(assert (=> bm!630733 (= call!630739 (validRegex!8677 (ite c!1288262 (reg!17300 lt!2476353) (ite c!1288263 (regTwo!34455 lt!2476353) (regOne!34454 lt!2476353)))))))

(declare-fun bm!630734 () Bool)

(assert (=> bm!630734 (= call!630737 (validRegex!8677 (ite c!1288263 (regOne!34455 lt!2476353) (regTwo!34454 lt!2476353))))))

(declare-fun b!6943158 () Bool)

(declare-fun e!4176628 () Bool)

(assert (=> b!6943158 (= e!4176628 e!4176626)))

(assert (=> b!6943158 (= c!1288262 ((_ is Star!16971) lt!2476353))))

(declare-fun d!2168175 () Bool)

(declare-fun res!2832375 () Bool)

(assert (=> d!2168175 (=> res!2832375 e!4176628)))

(assert (=> d!2168175 (= res!2832375 ((_ is ElementMatch!16971) lt!2476353))))

(assert (=> d!2168175 (= (validRegex!8677 lt!2476353) e!4176628)))

(assert (= (and d!2168175 (not res!2832375)) b!6943158))

(assert (= (and b!6943158 c!1288262) b!6943163))

(assert (= (and b!6943158 (not c!1288262)) b!6943157))

(assert (= (and b!6943163 res!2832373) b!6943164))

(assert (= (and b!6943157 c!1288263) b!6943159))

(assert (= (and b!6943157 (not c!1288263)) b!6943160))

(assert (= (and b!6943159 res!2832372) b!6943161))

(assert (= (and b!6943160 (not res!2832371)) b!6943165))

(assert (= (and b!6943165 res!2832374) b!6943162))

(assert (= (or b!6943159 b!6943162) bm!630734))

(assert (= (or b!6943161 b!6943165) bm!630732))

(assert (= (or b!6943164 bm!630732) bm!630733))

(declare-fun m!7648022 () Bool)

(assert (=> b!6943163 m!7648022))

(declare-fun m!7648024 () Bool)

(assert (=> bm!630733 m!7648024))

(declare-fun m!7648026 () Bool)

(assert (=> bm!630734 m!7648026))

(assert (=> b!6942384 d!2168175))

(declare-fun d!2168177 () Bool)

(assert (=> d!2168177 (= (isDefined!13441 lt!2476372) (not (isEmpty!38875 lt!2476372)))))

(declare-fun bs!1856017 () Bool)

(assert (= bs!1856017 d!2168177))

(declare-fun m!7648028 () Bool)

(assert (=> bs!1856017 m!7648028))

(assert (=> b!6942384 d!2168177))

(declare-fun b!6943166 () Bool)

(declare-fun e!4176636 () Option!16740)

(assert (=> b!6943166 (= e!4176636 (Some!16739 (tuple2!67657 Nil!66600 s!14361)))))

(declare-fun b!6943167 () Bool)

(declare-fun res!2832376 () Bool)

(declare-fun e!4176634 () Bool)

(assert (=> b!6943167 (=> (not res!2832376) (not e!4176634))))

(declare-fun lt!2476497 () Option!16740)

(assert (=> b!6943167 (= res!2832376 (matchR!9110 r1!6342 (_1!37131 (get!23393 lt!2476497))))))

(declare-fun b!6943168 () Bool)

(declare-fun e!4176632 () Bool)

(assert (=> b!6943168 (= e!4176632 (matchR!9110 lt!2476353 s!14361))))

(declare-fun b!6943169 () Bool)

(declare-fun e!4176633 () Option!16740)

(assert (=> b!6943169 (= e!4176636 e!4176633)))

(declare-fun c!1288265 () Bool)

(assert (=> b!6943169 (= c!1288265 ((_ is Nil!66600) s!14361))))

(declare-fun d!2168179 () Bool)

(declare-fun e!4176635 () Bool)

(assert (=> d!2168179 e!4176635))

(declare-fun res!2832377 () Bool)

(assert (=> d!2168179 (=> res!2832377 e!4176635)))

(assert (=> d!2168179 (= res!2832377 e!4176634)))

(declare-fun res!2832380 () Bool)

(assert (=> d!2168179 (=> (not res!2832380) (not e!4176634))))

(assert (=> d!2168179 (= res!2832380 (isDefined!13441 lt!2476497))))

(assert (=> d!2168179 (= lt!2476497 e!4176636)))

(declare-fun c!1288264 () Bool)

(assert (=> d!2168179 (= c!1288264 e!4176632)))

(declare-fun res!2832379 () Bool)

(assert (=> d!2168179 (=> (not res!2832379) (not e!4176632))))

(assert (=> d!2168179 (= res!2832379 (matchR!9110 r1!6342 Nil!66600))))

(assert (=> d!2168179 (validRegex!8677 r1!6342)))

(assert (=> d!2168179 (= (findConcatSeparation!3154 r1!6342 lt!2476353 Nil!66600 s!14361 s!14361) lt!2476497)))

(declare-fun b!6943170 () Bool)

(declare-fun lt!2476499 () Unit!160672)

(declare-fun lt!2476498 () Unit!160672)

(assert (=> b!6943170 (= lt!2476499 lt!2476498)))

(assert (=> b!6943170 (= (++!15010 (++!15010 Nil!66600 (Cons!66600 (h!73048 s!14361) Nil!66600)) (t!380467 s!14361)) s!14361)))

(assert (=> b!6943170 (= lt!2476498 (lemmaMoveElementToOtherListKeepsConcatEq!2864 Nil!66600 (h!73048 s!14361) (t!380467 s!14361) s!14361))))

(assert (=> b!6943170 (= e!4176633 (findConcatSeparation!3154 r1!6342 lt!2476353 (++!15010 Nil!66600 (Cons!66600 (h!73048 s!14361) Nil!66600)) (t!380467 s!14361) s!14361))))

(declare-fun b!6943171 () Bool)

(assert (=> b!6943171 (= e!4176633 None!16739)))

(declare-fun b!6943172 () Bool)

(assert (=> b!6943172 (= e!4176635 (not (isDefined!13441 lt!2476497)))))

(declare-fun b!6943173 () Bool)

(assert (=> b!6943173 (= e!4176634 (= (++!15010 (_1!37131 (get!23393 lt!2476497)) (_2!37131 (get!23393 lt!2476497))) s!14361))))

(declare-fun b!6943174 () Bool)

(declare-fun res!2832378 () Bool)

(assert (=> b!6943174 (=> (not res!2832378) (not e!4176634))))

(assert (=> b!6943174 (= res!2832378 (matchR!9110 lt!2476353 (_2!37131 (get!23393 lt!2476497))))))

(assert (= (and d!2168179 res!2832379) b!6943168))

(assert (= (and d!2168179 c!1288264) b!6943166))

(assert (= (and d!2168179 (not c!1288264)) b!6943169))

(assert (= (and b!6943169 c!1288265) b!6943171))

(assert (= (and b!6943169 (not c!1288265)) b!6943170))

(assert (= (and d!2168179 res!2832380) b!6943167))

(assert (= (and b!6943167 res!2832376) b!6943174))

(assert (= (and b!6943174 res!2832378) b!6943173))

(assert (= (and d!2168179 (not res!2832377)) b!6943172))

(declare-fun m!7648030 () Bool)

(assert (=> b!6943167 m!7648030))

(declare-fun m!7648032 () Bool)

(assert (=> b!6943167 m!7648032))

(declare-fun m!7648034 () Bool)

(assert (=> b!6943172 m!7648034))

(assert (=> b!6943174 m!7648030))

(declare-fun m!7648036 () Bool)

(assert (=> b!6943174 m!7648036))

(assert (=> b!6943170 m!7647680))

(assert (=> b!6943170 m!7647680))

(assert (=> b!6943170 m!7647682))

(assert (=> b!6943170 m!7647684))

(assert (=> b!6943170 m!7647680))

(declare-fun m!7648038 () Bool)

(assert (=> b!6943170 m!7648038))

(assert (=> d!2168179 m!7648034))

(assert (=> d!2168179 m!7647996))

(assert (=> d!2168179 m!7647334))

(assert (=> b!6943173 m!7648030))

(declare-fun m!7648040 () Bool)

(assert (=> b!6943173 m!7648040))

(declare-fun m!7648042 () Bool)

(assert (=> b!6943168 m!7648042))

(assert (=> b!6942384 d!2168179))

(declare-fun bs!1856018 () Bool)

(declare-fun b!6943182 () Bool)

(assert (= bs!1856018 (and b!6943182 b!6942907)))

(declare-fun lambda!395729 () Int)

(assert (=> bs!1856018 (not (= lambda!395729 lambda!395720))))

(declare-fun bs!1856019 () Bool)

(assert (= bs!1856019 (and b!6943182 d!2168047)))

(assert (=> bs!1856019 (not (= lambda!395729 lambda!395702))))

(declare-fun bs!1856020 () Bool)

(assert (= bs!1856020 (and b!6943182 d!2168097)))

(assert (=> bs!1856020 (not (= lambda!395729 lambda!395712))))

(declare-fun bs!1856021 () Bool)

(assert (= bs!1856021 (and b!6943182 b!6942620)))

(assert (=> bs!1856021 (not (= lambda!395729 lambda!395693))))

(declare-fun bs!1856022 () Bool)

(assert (= bs!1856022 (and b!6943182 d!2168117)))

(assert (=> bs!1856022 (not (= lambda!395729 lambda!395717))))

(declare-fun bs!1856023 () Bool)

(assert (= bs!1856023 (and b!6943182 d!2168037)))

(assert (=> bs!1856023 (not (= lambda!395729 lambda!395700))))

(declare-fun bs!1856024 () Bool)

(assert (= bs!1856024 (and b!6943182 b!6942379)))

(assert (=> bs!1856024 (not (= lambda!395729 lambda!395659))))

(declare-fun bs!1856025 () Bool)

(assert (= bs!1856025 (and b!6943182 b!6943088)))

(assert (=> bs!1856025 (= (and (= s!14361 (_2!37131 lt!2476358)) (= (reg!17300 lt!2476354) (reg!17300 lt!2476353)) (= lt!2476354 lt!2476353)) (= lambda!395729 lambda!395725))))

(assert (=> bs!1856024 (not (= lambda!395729 lambda!395656))))

(declare-fun bs!1856026 () Bool)

(assert (= bs!1856026 (and b!6943182 d!2168087)))

(assert (=> bs!1856026 (not (= lambda!395729 lambda!395709))))

(declare-fun bs!1856027 () Bool)

(assert (= bs!1856027 (and b!6943182 b!6943099)))

(assert (=> bs!1856027 (= (and (= s!14361 (_2!37131 lt!2476377)) (= (reg!17300 lt!2476354) (reg!17300 r3!135)) (= lt!2476354 r3!135)) (= lambda!395729 lambda!395727))))

(declare-fun bs!1856028 () Bool)

(assert (= bs!1856028 (and b!6943182 d!2168157)))

(assert (=> bs!1856028 (not (= lambda!395729 lambda!395723))))

(assert (=> bs!1856024 (not (= lambda!395729 lambda!395658))))

(declare-fun bs!1856029 () Bool)

(assert (= bs!1856029 (and b!6943182 b!6942964)))

(assert (=> bs!1856029 (not (= lambda!395729 lambda!395722))))

(assert (=> bs!1856024 (not (= lambda!395729 lambda!395654))))

(assert (=> bs!1856024 (not (= lambda!395729 lambda!395655))))

(assert (=> bs!1856024 (not (= lambda!395729 lambda!395660))))

(assert (=> bs!1856028 (not (= lambda!395729 lambda!395724))))

(declare-fun bs!1856030 () Bool)

(assert (= bs!1856030 (and b!6943182 b!6943086)))

(assert (=> bs!1856030 (not (= lambda!395729 lambda!395726))))

(assert (=> bs!1856022 (not (= lambda!395729 lambda!395715))))

(declare-fun bs!1856031 () Bool)

(assert (= bs!1856031 (and b!6943182 b!6942622)))

(assert (=> bs!1856031 (= (and (= s!14361 lt!2476355) (= (reg!17300 lt!2476354) (reg!17300 lt!2476370)) (= lt!2476354 lt!2476370)) (= lambda!395729 lambda!395690))))

(declare-fun bs!1856032 () Bool)

(assert (= bs!1856032 (and b!6943182 b!6942909)))

(assert (=> bs!1856032 (= (and (= s!14361 (_1!37131 lt!2476358)) (= (reg!17300 lt!2476354) (reg!17300 r1!6342)) (= lt!2476354 r1!6342)) (= lambda!395729 lambda!395719))))

(assert (=> bs!1856024 (not (= lambda!395729 lambda!395657))))

(assert (=> bs!1856023 (not (= lambda!395729 lambda!395701))))

(declare-fun bs!1856033 () Bool)

(assert (= bs!1856033 (and b!6943182 b!6943097)))

(assert (=> bs!1856033 (not (= lambda!395729 lambda!395728))))

(declare-fun bs!1856034 () Bool)

(assert (= bs!1856034 (and b!6943182 d!2167991)))

(assert (=> bs!1856034 (not (= lambda!395729 lambda!395674))))

(assert (=> bs!1856026 (not (= lambda!395729 lambda!395710))))

(declare-fun bs!1856035 () Bool)

(assert (= bs!1856035 (and b!6943182 d!2168093)))

(assert (=> bs!1856035 (not (= lambda!395729 lambda!395711))))

(declare-fun bs!1856036 () Bool)

(assert (= bs!1856036 (and b!6943182 b!6942966)))

(assert (=> bs!1856036 (= (and (= s!14361 (_1!37131 lt!2476377)) (= (reg!17300 lt!2476354) (reg!17300 r2!6280)) (= lt!2476354 r2!6280)) (= lambda!395729 lambda!395721))))

(assert (=> b!6943182 true))

(assert (=> b!6943182 true))

(declare-fun bs!1856037 () Bool)

(declare-fun b!6943180 () Bool)

(assert (= bs!1856037 (and b!6943180 b!6942907)))

(declare-fun lambda!395730 () Int)

(assert (=> bs!1856037 (= (and (= s!14361 (_1!37131 lt!2476358)) (= (regOne!34454 lt!2476354) (regOne!34454 r1!6342)) (= (regTwo!34454 lt!2476354) (regTwo!34454 r1!6342))) (= lambda!395730 lambda!395720))))

(declare-fun bs!1856038 () Bool)

(assert (= bs!1856038 (and b!6943180 d!2168047)))

(assert (=> bs!1856038 (not (= lambda!395730 lambda!395702))))

(declare-fun bs!1856039 () Bool)

(assert (= bs!1856039 (and b!6943180 d!2168097)))

(assert (=> bs!1856039 (not (= lambda!395730 lambda!395712))))

(declare-fun bs!1856040 () Bool)

(assert (= bs!1856040 (and b!6943180 b!6942620)))

(assert (=> bs!1856040 (= (and (= s!14361 lt!2476355) (= (regOne!34454 lt!2476354) (regOne!34454 lt!2476370)) (= (regTwo!34454 lt!2476354) (regTwo!34454 lt!2476370))) (= lambda!395730 lambda!395693))))

(declare-fun bs!1856041 () Bool)

(assert (= bs!1856041 (and b!6943180 d!2168117)))

(assert (=> bs!1856041 (= (and (= (regOne!34454 lt!2476354) r1!6342) (= (regTwo!34454 lt!2476354) lt!2476353)) (= lambda!395730 lambda!395717))))

(declare-fun bs!1856042 () Bool)

(assert (= bs!1856042 (and b!6943180 d!2168037)))

(assert (=> bs!1856042 (not (= lambda!395730 lambda!395700))))

(declare-fun bs!1856043 () Bool)

(assert (= bs!1856043 (and b!6943180 b!6942379)))

(assert (=> bs!1856043 (= (and (= s!14361 lt!2476355) (= (regOne!34454 lt!2476354) r1!6342) (= (regTwo!34454 lt!2476354) r2!6280)) (= lambda!395730 lambda!395659))))

(declare-fun bs!1856044 () Bool)

(assert (= bs!1856044 (and b!6943180 b!6943088)))

(assert (=> bs!1856044 (not (= lambda!395730 lambda!395725))))

(assert (=> bs!1856043 (not (= lambda!395730 lambda!395656))))

(declare-fun bs!1856045 () Bool)

(assert (= bs!1856045 (and b!6943180 d!2168087)))

(assert (=> bs!1856045 (not (= lambda!395730 lambda!395709))))

(declare-fun bs!1856046 () Bool)

(assert (= bs!1856046 (and b!6943180 b!6943099)))

(assert (=> bs!1856046 (not (= lambda!395730 lambda!395727))))

(declare-fun bs!1856047 () Bool)

(assert (= bs!1856047 (and b!6943180 d!2168157)))

(assert (=> bs!1856047 (not (= lambda!395730 lambda!395723))))

(assert (=> bs!1856043 (not (= lambda!395730 lambda!395658))))

(declare-fun bs!1856048 () Bool)

(assert (= bs!1856048 (and b!6943180 b!6943182)))

(assert (=> bs!1856048 (not (= lambda!395730 lambda!395729))))

(declare-fun bs!1856049 () Bool)

(assert (= bs!1856049 (and b!6943180 b!6942964)))

(assert (=> bs!1856049 (= (and (= s!14361 (_1!37131 lt!2476377)) (= (regOne!34454 lt!2476354) (regOne!34454 r2!6280)) (= (regTwo!34454 lt!2476354) (regTwo!34454 r2!6280))) (= lambda!395730 lambda!395722))))

(assert (=> bs!1856043 (not (= lambda!395730 lambda!395654))))

(assert (=> bs!1856043 (= (and (= (regOne!34454 lt!2476354) r1!6342) (= (regTwo!34454 lt!2476354) lt!2476353)) (= lambda!395730 lambda!395655))))

(assert (=> bs!1856043 (not (= lambda!395730 lambda!395660))))

(assert (=> bs!1856047 (= (and (= (regOne!34454 lt!2476354) lt!2476370) (= (regTwo!34454 lt!2476354) r3!135)) (= lambda!395730 lambda!395724))))

(declare-fun bs!1856050 () Bool)

(assert (= bs!1856050 (and b!6943180 b!6943086)))

(assert (=> bs!1856050 (= (and (= s!14361 (_2!37131 lt!2476358)) (= (regOne!34454 lt!2476354) (regOne!34454 lt!2476353)) (= (regTwo!34454 lt!2476354) (regTwo!34454 lt!2476353))) (= lambda!395730 lambda!395726))))

(assert (=> bs!1856041 (not (= lambda!395730 lambda!395715))))

(declare-fun bs!1856051 () Bool)

(assert (= bs!1856051 (and b!6943180 b!6942622)))

(assert (=> bs!1856051 (not (= lambda!395730 lambda!395690))))

(declare-fun bs!1856052 () Bool)

(assert (= bs!1856052 (and b!6943180 b!6942909)))

(assert (=> bs!1856052 (not (= lambda!395730 lambda!395719))))

(assert (=> bs!1856043 (= (and (= s!14361 (_2!37131 lt!2476358)) (= (regOne!34454 lt!2476354) r2!6280) (= (regTwo!34454 lt!2476354) r3!135)) (= lambda!395730 lambda!395657))))

(assert (=> bs!1856042 (= (and (= s!14361 (_2!37131 lt!2476358)) (= (regOne!34454 lt!2476354) r2!6280) (= (regTwo!34454 lt!2476354) r3!135)) (= lambda!395730 lambda!395701))))

(declare-fun bs!1856053 () Bool)

(assert (= bs!1856053 (and b!6943180 b!6943097)))

(assert (=> bs!1856053 (= (and (= s!14361 (_2!37131 lt!2476377)) (= (regOne!34454 lt!2476354) (regOne!34454 r3!135)) (= (regTwo!34454 lt!2476354) (regTwo!34454 r3!135))) (= lambda!395730 lambda!395728))))

(declare-fun bs!1856054 () Bool)

(assert (= bs!1856054 (and b!6943180 d!2167991)))

(assert (=> bs!1856054 (not (= lambda!395730 lambda!395674))))

(assert (=> bs!1856045 (= (and (= s!14361 lt!2476355) (= (regOne!34454 lt!2476354) r1!6342) (= (regTwo!34454 lt!2476354) r2!6280)) (= lambda!395730 lambda!395710))))

(declare-fun bs!1856055 () Bool)

(assert (= bs!1856055 (and b!6943180 d!2168093)))

(assert (=> bs!1856055 (not (= lambda!395730 lambda!395711))))

(declare-fun bs!1856056 () Bool)

(assert (= bs!1856056 (and b!6943180 b!6942966)))

(assert (=> bs!1856056 (not (= lambda!395730 lambda!395721))))

(assert (=> b!6943180 true))

(assert (=> b!6943180 true))

(declare-fun b!6943175 () Bool)

(declare-fun e!4176638 () Bool)

(declare-fun e!4176640 () Bool)

(assert (=> b!6943175 (= e!4176638 e!4176640)))

(declare-fun res!2832382 () Bool)

(assert (=> b!6943175 (= res!2832382 (not ((_ is EmptyLang!16971) lt!2476354)))))

(assert (=> b!6943175 (=> (not res!2832382) (not e!4176640))))

(declare-fun b!6943176 () Bool)

(declare-fun e!4176639 () Bool)

(assert (=> b!6943176 (= e!4176639 (matchRSpec!4028 (regTwo!34455 lt!2476354) s!14361))))

(declare-fun b!6943177 () Bool)

(declare-fun res!2832381 () Bool)

(declare-fun e!4176642 () Bool)

(assert (=> b!6943177 (=> res!2832381 e!4176642)))

(declare-fun call!630741 () Bool)

(assert (=> b!6943177 (= res!2832381 call!630741)))

(declare-fun e!4176643 () Bool)

(assert (=> b!6943177 (= e!4176643 e!4176642)))

(declare-fun b!6943178 () Bool)

(assert (=> b!6943178 (= e!4176638 call!630741)))

(declare-fun b!6943179 () Bool)

(declare-fun c!1288268 () Bool)

(assert (=> b!6943179 (= c!1288268 ((_ is ElementMatch!16971) lt!2476354))))

(declare-fun e!4176641 () Bool)

(assert (=> b!6943179 (= e!4176640 e!4176641)))

(declare-fun call!630740 () Bool)

(assert (=> b!6943180 (= e!4176643 call!630740)))

(declare-fun bm!630735 () Bool)

(assert (=> bm!630735 (= call!630741 (isEmpty!38874 s!14361))))

(declare-fun d!2168181 () Bool)

(declare-fun c!1288269 () Bool)

(assert (=> d!2168181 (= c!1288269 ((_ is EmptyExpr!16971) lt!2476354))))

(assert (=> d!2168181 (= (matchRSpec!4028 lt!2476354 s!14361) e!4176638)))

(declare-fun b!6943181 () Bool)

(declare-fun e!4176637 () Bool)

(assert (=> b!6943181 (= e!4176637 e!4176639)))

(declare-fun res!2832383 () Bool)

(assert (=> b!6943181 (= res!2832383 (matchRSpec!4028 (regOne!34455 lt!2476354) s!14361))))

(assert (=> b!6943181 (=> res!2832383 e!4176639)))

(assert (=> b!6943182 (= e!4176642 call!630740)))

(declare-fun b!6943183 () Bool)

(assert (=> b!6943183 (= e!4176637 e!4176643)))

(declare-fun c!1288267 () Bool)

(assert (=> b!6943183 (= c!1288267 ((_ is Star!16971) lt!2476354))))

(declare-fun b!6943184 () Bool)

(assert (=> b!6943184 (= e!4176641 (= s!14361 (Cons!66600 (c!1288093 lt!2476354) Nil!66600)))))

(declare-fun bm!630736 () Bool)

(assert (=> bm!630736 (= call!630740 (Exists!3971 (ite c!1288267 lambda!395729 lambda!395730)))))

(declare-fun b!6943185 () Bool)

(declare-fun c!1288266 () Bool)

(assert (=> b!6943185 (= c!1288266 ((_ is Union!16971) lt!2476354))))

(assert (=> b!6943185 (= e!4176641 e!4176637)))

(assert (= (and d!2168181 c!1288269) b!6943178))

(assert (= (and d!2168181 (not c!1288269)) b!6943175))

(assert (= (and b!6943175 res!2832382) b!6943179))

(assert (= (and b!6943179 c!1288268) b!6943184))

(assert (= (and b!6943179 (not c!1288268)) b!6943185))

(assert (= (and b!6943185 c!1288266) b!6943181))

(assert (= (and b!6943185 (not c!1288266)) b!6943183))

(assert (= (and b!6943181 (not res!2832383)) b!6943176))

(assert (= (and b!6943183 c!1288267) b!6943177))

(assert (= (and b!6943183 (not c!1288267)) b!6943180))

(assert (= (and b!6943177 (not res!2832381)) b!6943182))

(assert (= (or b!6943182 b!6943180) bm!630736))

(assert (= (or b!6943178 b!6943177) bm!630735))

(declare-fun m!7648044 () Bool)

(assert (=> b!6943176 m!7648044))

(declare-fun m!7648046 () Bool)

(assert (=> bm!630735 m!7648046))

(declare-fun m!7648048 () Bool)

(assert (=> b!6943181 m!7648048))

(declare-fun m!7648050 () Bool)

(assert (=> bm!630736 m!7648050))

(assert (=> b!6942382 d!2168181))

(declare-fun bs!1856057 () Bool)

(declare-fun b!6943193 () Bool)

(assert (= bs!1856057 (and b!6943193 b!6942907)))

(declare-fun lambda!395731 () Int)

(assert (=> bs!1856057 (not (= lambda!395731 lambda!395720))))

(declare-fun bs!1856058 () Bool)

(assert (= bs!1856058 (and b!6943193 d!2168047)))

(assert (=> bs!1856058 (not (= lambda!395731 lambda!395702))))

(declare-fun bs!1856059 () Bool)

(assert (= bs!1856059 (and b!6943193 d!2168097)))

(assert (=> bs!1856059 (not (= lambda!395731 lambda!395712))))

(declare-fun bs!1856060 () Bool)

(assert (= bs!1856060 (and b!6943193 b!6942620)))

(assert (=> bs!1856060 (not (= lambda!395731 lambda!395693))))

(declare-fun bs!1856061 () Bool)

(assert (= bs!1856061 (and b!6943193 d!2168117)))

(assert (=> bs!1856061 (not (= lambda!395731 lambda!395717))))

(declare-fun bs!1856062 () Bool)

(assert (= bs!1856062 (and b!6943193 d!2168037)))

(assert (=> bs!1856062 (not (= lambda!395731 lambda!395700))))

(declare-fun bs!1856063 () Bool)

(assert (= bs!1856063 (and b!6943193 b!6942379)))

(assert (=> bs!1856063 (not (= lambda!395731 lambda!395659))))

(declare-fun bs!1856064 () Bool)

(assert (= bs!1856064 (and b!6943193 b!6943088)))

(assert (=> bs!1856064 (= (and (= s!14361 (_2!37131 lt!2476358)) (= (reg!17300 lt!2476361) (reg!17300 lt!2476353)) (= lt!2476361 lt!2476353)) (= lambda!395731 lambda!395725))))

(assert (=> bs!1856063 (not (= lambda!395731 lambda!395656))))

(declare-fun bs!1856065 () Bool)

(assert (= bs!1856065 (and b!6943193 d!2168087)))

(assert (=> bs!1856065 (not (= lambda!395731 lambda!395709))))

(declare-fun bs!1856066 () Bool)

(assert (= bs!1856066 (and b!6943193 b!6943099)))

(assert (=> bs!1856066 (= (and (= s!14361 (_2!37131 lt!2476377)) (= (reg!17300 lt!2476361) (reg!17300 r3!135)) (= lt!2476361 r3!135)) (= lambda!395731 lambda!395727))))

(declare-fun bs!1856067 () Bool)

(assert (= bs!1856067 (and b!6943193 d!2168157)))

(assert (=> bs!1856067 (not (= lambda!395731 lambda!395723))))

(assert (=> bs!1856063 (not (= lambda!395731 lambda!395658))))

(declare-fun bs!1856068 () Bool)

(assert (= bs!1856068 (and b!6943193 b!6943182)))

(assert (=> bs!1856068 (= (and (= (reg!17300 lt!2476361) (reg!17300 lt!2476354)) (= lt!2476361 lt!2476354)) (= lambda!395731 lambda!395729))))

(assert (=> bs!1856063 (not (= lambda!395731 lambda!395654))))

(assert (=> bs!1856063 (not (= lambda!395731 lambda!395655))))

(assert (=> bs!1856063 (not (= lambda!395731 lambda!395660))))

(assert (=> bs!1856067 (not (= lambda!395731 lambda!395724))))

(declare-fun bs!1856069 () Bool)

(assert (= bs!1856069 (and b!6943193 b!6943086)))

(assert (=> bs!1856069 (not (= lambda!395731 lambda!395726))))

(assert (=> bs!1856061 (not (= lambda!395731 lambda!395715))))

(declare-fun bs!1856070 () Bool)

(assert (= bs!1856070 (and b!6943193 b!6942622)))

(assert (=> bs!1856070 (= (and (= s!14361 lt!2476355) (= (reg!17300 lt!2476361) (reg!17300 lt!2476370)) (= lt!2476361 lt!2476370)) (= lambda!395731 lambda!395690))))

(declare-fun bs!1856071 () Bool)

(assert (= bs!1856071 (and b!6943193 b!6942909)))

(assert (=> bs!1856071 (= (and (= s!14361 (_1!37131 lt!2476358)) (= (reg!17300 lt!2476361) (reg!17300 r1!6342)) (= lt!2476361 r1!6342)) (= lambda!395731 lambda!395719))))

(assert (=> bs!1856063 (not (= lambda!395731 lambda!395657))))

(assert (=> bs!1856062 (not (= lambda!395731 lambda!395701))))

(declare-fun bs!1856072 () Bool)

(assert (= bs!1856072 (and b!6943193 b!6943097)))

(assert (=> bs!1856072 (not (= lambda!395731 lambda!395728))))

(declare-fun bs!1856073 () Bool)

(assert (= bs!1856073 (and b!6943193 d!2167991)))

(assert (=> bs!1856073 (not (= lambda!395731 lambda!395674))))

(assert (=> bs!1856065 (not (= lambda!395731 lambda!395710))))

(declare-fun bs!1856074 () Bool)

(assert (= bs!1856074 (and b!6943193 d!2168093)))

(assert (=> bs!1856074 (not (= lambda!395731 lambda!395711))))

(declare-fun bs!1856075 () Bool)

(assert (= bs!1856075 (and b!6943193 b!6942966)))

(assert (=> bs!1856075 (= (and (= s!14361 (_1!37131 lt!2476377)) (= (reg!17300 lt!2476361) (reg!17300 r2!6280)) (= lt!2476361 r2!6280)) (= lambda!395731 lambda!395721))))

(declare-fun bs!1856076 () Bool)

(assert (= bs!1856076 (and b!6943193 b!6943180)))

(assert (=> bs!1856076 (not (= lambda!395731 lambda!395730))))

(declare-fun bs!1856077 () Bool)

(assert (= bs!1856077 (and b!6943193 b!6942964)))

(assert (=> bs!1856077 (not (= lambda!395731 lambda!395722))))

(assert (=> b!6943193 true))

(assert (=> b!6943193 true))

(declare-fun bs!1856078 () Bool)

(declare-fun b!6943191 () Bool)

(assert (= bs!1856078 (and b!6943191 b!6942907)))

(declare-fun lambda!395732 () Int)

(assert (=> bs!1856078 (= (and (= s!14361 (_1!37131 lt!2476358)) (= (regOne!34454 lt!2476361) (regOne!34454 r1!6342)) (= (regTwo!34454 lt!2476361) (regTwo!34454 r1!6342))) (= lambda!395732 lambda!395720))))

(declare-fun bs!1856079 () Bool)

(assert (= bs!1856079 (and b!6943191 d!2168047)))

(assert (=> bs!1856079 (not (= lambda!395732 lambda!395702))))

(declare-fun bs!1856080 () Bool)

(assert (= bs!1856080 (and b!6943191 d!2168097)))

(assert (=> bs!1856080 (not (= lambda!395732 lambda!395712))))

(declare-fun bs!1856081 () Bool)

(assert (= bs!1856081 (and b!6943191 b!6942620)))

(assert (=> bs!1856081 (= (and (= s!14361 lt!2476355) (= (regOne!34454 lt!2476361) (regOne!34454 lt!2476370)) (= (regTwo!34454 lt!2476361) (regTwo!34454 lt!2476370))) (= lambda!395732 lambda!395693))))

(declare-fun bs!1856082 () Bool)

(assert (= bs!1856082 (and b!6943191 d!2168117)))

(assert (=> bs!1856082 (= (and (= (regOne!34454 lt!2476361) r1!6342) (= (regTwo!34454 lt!2476361) lt!2476353)) (= lambda!395732 lambda!395717))))

(declare-fun bs!1856083 () Bool)

(assert (= bs!1856083 (and b!6943191 d!2168037)))

(assert (=> bs!1856083 (not (= lambda!395732 lambda!395700))))

(declare-fun bs!1856084 () Bool)

(assert (= bs!1856084 (and b!6943191 b!6943193)))

(assert (=> bs!1856084 (not (= lambda!395732 lambda!395731))))

(declare-fun bs!1856085 () Bool)

(assert (= bs!1856085 (and b!6943191 b!6942379)))

(assert (=> bs!1856085 (= (and (= s!14361 lt!2476355) (= (regOne!34454 lt!2476361) r1!6342) (= (regTwo!34454 lt!2476361) r2!6280)) (= lambda!395732 lambda!395659))))

(declare-fun bs!1856086 () Bool)

(assert (= bs!1856086 (and b!6943191 b!6943088)))

(assert (=> bs!1856086 (not (= lambda!395732 lambda!395725))))

(assert (=> bs!1856085 (not (= lambda!395732 lambda!395656))))

(declare-fun bs!1856087 () Bool)

(assert (= bs!1856087 (and b!6943191 d!2168087)))

(assert (=> bs!1856087 (not (= lambda!395732 lambda!395709))))

(declare-fun bs!1856088 () Bool)

(assert (= bs!1856088 (and b!6943191 b!6943099)))

(assert (=> bs!1856088 (not (= lambda!395732 lambda!395727))))

(declare-fun bs!1856089 () Bool)

(assert (= bs!1856089 (and b!6943191 d!2168157)))

(assert (=> bs!1856089 (not (= lambda!395732 lambda!395723))))

(assert (=> bs!1856085 (not (= lambda!395732 lambda!395658))))

(declare-fun bs!1856090 () Bool)

(assert (= bs!1856090 (and b!6943191 b!6943182)))

(assert (=> bs!1856090 (not (= lambda!395732 lambda!395729))))

(assert (=> bs!1856085 (not (= lambda!395732 lambda!395654))))

(assert (=> bs!1856085 (= (and (= (regOne!34454 lt!2476361) r1!6342) (= (regTwo!34454 lt!2476361) lt!2476353)) (= lambda!395732 lambda!395655))))

(assert (=> bs!1856085 (not (= lambda!395732 lambda!395660))))

(assert (=> bs!1856089 (= (and (= (regOne!34454 lt!2476361) lt!2476370) (= (regTwo!34454 lt!2476361) r3!135)) (= lambda!395732 lambda!395724))))

(declare-fun bs!1856091 () Bool)

(assert (= bs!1856091 (and b!6943191 b!6943086)))

(assert (=> bs!1856091 (= (and (= s!14361 (_2!37131 lt!2476358)) (= (regOne!34454 lt!2476361) (regOne!34454 lt!2476353)) (= (regTwo!34454 lt!2476361) (regTwo!34454 lt!2476353))) (= lambda!395732 lambda!395726))))

(assert (=> bs!1856082 (not (= lambda!395732 lambda!395715))))

(declare-fun bs!1856092 () Bool)

(assert (= bs!1856092 (and b!6943191 b!6942622)))

(assert (=> bs!1856092 (not (= lambda!395732 lambda!395690))))

(declare-fun bs!1856093 () Bool)

(assert (= bs!1856093 (and b!6943191 b!6942909)))

(assert (=> bs!1856093 (not (= lambda!395732 lambda!395719))))

(assert (=> bs!1856085 (= (and (= s!14361 (_2!37131 lt!2476358)) (= (regOne!34454 lt!2476361) r2!6280) (= (regTwo!34454 lt!2476361) r3!135)) (= lambda!395732 lambda!395657))))

(assert (=> bs!1856083 (= (and (= s!14361 (_2!37131 lt!2476358)) (= (regOne!34454 lt!2476361) r2!6280) (= (regTwo!34454 lt!2476361) r3!135)) (= lambda!395732 lambda!395701))))

(declare-fun bs!1856094 () Bool)

(assert (= bs!1856094 (and b!6943191 b!6943097)))

(assert (=> bs!1856094 (= (and (= s!14361 (_2!37131 lt!2476377)) (= (regOne!34454 lt!2476361) (regOne!34454 r3!135)) (= (regTwo!34454 lt!2476361) (regTwo!34454 r3!135))) (= lambda!395732 lambda!395728))))

(declare-fun bs!1856095 () Bool)

(assert (= bs!1856095 (and b!6943191 d!2167991)))

(assert (=> bs!1856095 (not (= lambda!395732 lambda!395674))))

(assert (=> bs!1856087 (= (and (= s!14361 lt!2476355) (= (regOne!34454 lt!2476361) r1!6342) (= (regTwo!34454 lt!2476361) r2!6280)) (= lambda!395732 lambda!395710))))

(declare-fun bs!1856096 () Bool)

(assert (= bs!1856096 (and b!6943191 d!2168093)))

(assert (=> bs!1856096 (not (= lambda!395732 lambda!395711))))

(declare-fun bs!1856097 () Bool)

(assert (= bs!1856097 (and b!6943191 b!6942966)))

(assert (=> bs!1856097 (not (= lambda!395732 lambda!395721))))

(declare-fun bs!1856098 () Bool)

(assert (= bs!1856098 (and b!6943191 b!6943180)))

(assert (=> bs!1856098 (= (and (= (regOne!34454 lt!2476361) (regOne!34454 lt!2476354)) (= (regTwo!34454 lt!2476361) (regTwo!34454 lt!2476354))) (= lambda!395732 lambda!395730))))

(declare-fun bs!1856099 () Bool)

(assert (= bs!1856099 (and b!6943191 b!6942964)))

(assert (=> bs!1856099 (= (and (= s!14361 (_1!37131 lt!2476377)) (= (regOne!34454 lt!2476361) (regOne!34454 r2!6280)) (= (regTwo!34454 lt!2476361) (regTwo!34454 r2!6280))) (= lambda!395732 lambda!395722))))

(assert (=> b!6943191 true))

(assert (=> b!6943191 true))

(declare-fun b!6943186 () Bool)

(declare-fun e!4176645 () Bool)

(declare-fun e!4176647 () Bool)

(assert (=> b!6943186 (= e!4176645 e!4176647)))

(declare-fun res!2832385 () Bool)

(assert (=> b!6943186 (= res!2832385 (not ((_ is EmptyLang!16971) lt!2476361)))))

(assert (=> b!6943186 (=> (not res!2832385) (not e!4176647))))

(declare-fun b!6943187 () Bool)

(declare-fun e!4176646 () Bool)

(assert (=> b!6943187 (= e!4176646 (matchRSpec!4028 (regTwo!34455 lt!2476361) s!14361))))

(declare-fun b!6943188 () Bool)

(declare-fun res!2832384 () Bool)

(declare-fun e!4176649 () Bool)

(assert (=> b!6943188 (=> res!2832384 e!4176649)))

(declare-fun call!630743 () Bool)

(assert (=> b!6943188 (= res!2832384 call!630743)))

(declare-fun e!4176650 () Bool)

(assert (=> b!6943188 (= e!4176650 e!4176649)))

(declare-fun b!6943189 () Bool)

(assert (=> b!6943189 (= e!4176645 call!630743)))

(declare-fun b!6943190 () Bool)

(declare-fun c!1288272 () Bool)

(assert (=> b!6943190 (= c!1288272 ((_ is ElementMatch!16971) lt!2476361))))

(declare-fun e!4176648 () Bool)

(assert (=> b!6943190 (= e!4176647 e!4176648)))

(declare-fun call!630742 () Bool)

(assert (=> b!6943191 (= e!4176650 call!630742)))

(declare-fun bm!630737 () Bool)

(assert (=> bm!630737 (= call!630743 (isEmpty!38874 s!14361))))

(declare-fun d!2168183 () Bool)

(declare-fun c!1288273 () Bool)

(assert (=> d!2168183 (= c!1288273 ((_ is EmptyExpr!16971) lt!2476361))))

(assert (=> d!2168183 (= (matchRSpec!4028 lt!2476361 s!14361) e!4176645)))

(declare-fun b!6943192 () Bool)

(declare-fun e!4176644 () Bool)

(assert (=> b!6943192 (= e!4176644 e!4176646)))

(declare-fun res!2832386 () Bool)

(assert (=> b!6943192 (= res!2832386 (matchRSpec!4028 (regOne!34455 lt!2476361) s!14361))))

(assert (=> b!6943192 (=> res!2832386 e!4176646)))

(assert (=> b!6943193 (= e!4176649 call!630742)))

(declare-fun b!6943194 () Bool)

(assert (=> b!6943194 (= e!4176644 e!4176650)))

(declare-fun c!1288271 () Bool)

(assert (=> b!6943194 (= c!1288271 ((_ is Star!16971) lt!2476361))))

(declare-fun b!6943195 () Bool)

(assert (=> b!6943195 (= e!4176648 (= s!14361 (Cons!66600 (c!1288093 lt!2476361) Nil!66600)))))

(declare-fun bm!630738 () Bool)

(assert (=> bm!630738 (= call!630742 (Exists!3971 (ite c!1288271 lambda!395731 lambda!395732)))))

(declare-fun b!6943196 () Bool)

(declare-fun c!1288270 () Bool)

(assert (=> b!6943196 (= c!1288270 ((_ is Union!16971) lt!2476361))))

(assert (=> b!6943196 (= e!4176648 e!4176644)))

(assert (= (and d!2168183 c!1288273) b!6943189))

(assert (= (and d!2168183 (not c!1288273)) b!6943186))

(assert (= (and b!6943186 res!2832385) b!6943190))

(assert (= (and b!6943190 c!1288272) b!6943195))

(assert (= (and b!6943190 (not c!1288272)) b!6943196))

(assert (= (and b!6943196 c!1288270) b!6943192))

(assert (= (and b!6943196 (not c!1288270)) b!6943194))

(assert (= (and b!6943192 (not res!2832386)) b!6943187))

(assert (= (and b!6943194 c!1288271) b!6943188))

(assert (= (and b!6943194 (not c!1288271)) b!6943191))

(assert (= (and b!6943188 (not res!2832384)) b!6943193))

(assert (= (or b!6943193 b!6943191) bm!630738))

(assert (= (or b!6943189 b!6943188) bm!630737))

(declare-fun m!7648052 () Bool)

(assert (=> b!6943187 m!7648052))

(assert (=> bm!630737 m!7648046))

(declare-fun m!7648054 () Bool)

(assert (=> b!6943192 m!7648054))

(declare-fun m!7648056 () Bool)

(assert (=> bm!630738 m!7648056))

(assert (=> b!6942382 d!2168183))

(declare-fun d!2168185 () Bool)

(assert (=> d!2168185 (= (matchR!9110 lt!2476354 s!14361) (matchRSpec!4028 lt!2476354 s!14361))))

(declare-fun lt!2476500 () Unit!160672)

(assert (=> d!2168185 (= lt!2476500 (choose!51733 lt!2476354 s!14361))))

(assert (=> d!2168185 (validRegex!8677 lt!2476354)))

(assert (=> d!2168185 (= (mainMatchTheorem!4028 lt!2476354 s!14361) lt!2476500)))

(declare-fun bs!1856100 () Bool)

(assert (= bs!1856100 d!2168185))

(assert (=> bs!1856100 m!7647322))

(assert (=> bs!1856100 m!7647316))

(declare-fun m!7648058 () Bool)

(assert (=> bs!1856100 m!7648058))

(declare-fun m!7648060 () Bool)

(assert (=> bs!1856100 m!7648060))

(assert (=> b!6942382 d!2168185))

(declare-fun b!6943197 () Bool)

(declare-fun e!4176657 () Bool)

(assert (=> b!6943197 (= e!4176657 (not (= (head!13914 s!14361) (c!1288093 lt!2476361))))))

(declare-fun b!6943198 () Bool)

(declare-fun res!2832394 () Bool)

(assert (=> b!6943198 (=> res!2832394 e!4176657)))

(assert (=> b!6943198 (= res!2832394 (not (isEmpty!38874 (tail!12966 s!14361))))))

(declare-fun b!6943199 () Bool)

(declare-fun e!4176653 () Bool)

(assert (=> b!6943199 (= e!4176653 e!4176657)))

(declare-fun res!2832388 () Bool)

(assert (=> b!6943199 (=> res!2832388 e!4176657)))

(declare-fun call!630744 () Bool)

(assert (=> b!6943199 (= res!2832388 call!630744)))

(declare-fun b!6943200 () Bool)

(declare-fun e!4176654 () Bool)

(assert (=> b!6943200 (= e!4176654 (= (head!13914 s!14361) (c!1288093 lt!2476361)))))

(declare-fun b!6943201 () Bool)

(declare-fun e!4176656 () Bool)

(declare-fun lt!2476501 () Bool)

(assert (=> b!6943201 (= e!4176656 (not lt!2476501))))

(declare-fun b!6943202 () Bool)

(declare-fun e!4176652 () Bool)

(assert (=> b!6943202 (= e!4176652 (nullable!6786 lt!2476361))))

(declare-fun b!6943203 () Bool)

(declare-fun res!2832392 () Bool)

(declare-fun e!4176655 () Bool)

(assert (=> b!6943203 (=> res!2832392 e!4176655)))

(assert (=> b!6943203 (= res!2832392 e!4176654)))

(declare-fun res!2832389 () Bool)

(assert (=> b!6943203 (=> (not res!2832389) (not e!4176654))))

(assert (=> b!6943203 (= res!2832389 lt!2476501)))

(declare-fun bm!630739 () Bool)

(assert (=> bm!630739 (= call!630744 (isEmpty!38874 s!14361))))

(declare-fun b!6943204 () Bool)

(declare-fun res!2832391 () Bool)

(assert (=> b!6943204 (=> res!2832391 e!4176655)))

(assert (=> b!6943204 (= res!2832391 (not ((_ is ElementMatch!16971) lt!2476361)))))

(assert (=> b!6943204 (= e!4176656 e!4176655)))

(declare-fun d!2168187 () Bool)

(declare-fun e!4176651 () Bool)

(assert (=> d!2168187 e!4176651))

(declare-fun c!1288276 () Bool)

(assert (=> d!2168187 (= c!1288276 ((_ is EmptyExpr!16971) lt!2476361))))

(assert (=> d!2168187 (= lt!2476501 e!4176652)))

(declare-fun c!1288275 () Bool)

(assert (=> d!2168187 (= c!1288275 (isEmpty!38874 s!14361))))

(assert (=> d!2168187 (validRegex!8677 lt!2476361)))

(assert (=> d!2168187 (= (matchR!9110 lt!2476361 s!14361) lt!2476501)))

(declare-fun b!6943205 () Bool)

(assert (=> b!6943205 (= e!4176651 e!4176656)))

(declare-fun c!1288274 () Bool)

(assert (=> b!6943205 (= c!1288274 ((_ is EmptyLang!16971) lt!2476361))))

(declare-fun b!6943206 () Bool)

(assert (=> b!6943206 (= e!4176655 e!4176653)))

(declare-fun res!2832393 () Bool)

(assert (=> b!6943206 (=> (not res!2832393) (not e!4176653))))

(assert (=> b!6943206 (= res!2832393 (not lt!2476501))))

(declare-fun b!6943207 () Bool)

(declare-fun res!2832390 () Bool)

(assert (=> b!6943207 (=> (not res!2832390) (not e!4176654))))

(assert (=> b!6943207 (= res!2832390 (not call!630744))))

(declare-fun b!6943208 () Bool)

(assert (=> b!6943208 (= e!4176651 (= lt!2476501 call!630744))))

(declare-fun b!6943209 () Bool)

(assert (=> b!6943209 (= e!4176652 (matchR!9110 (derivativeStep!5461 lt!2476361 (head!13914 s!14361)) (tail!12966 s!14361)))))

(declare-fun b!6943210 () Bool)

(declare-fun res!2832387 () Bool)

(assert (=> b!6943210 (=> (not res!2832387) (not e!4176654))))

(assert (=> b!6943210 (= res!2832387 (isEmpty!38874 (tail!12966 s!14361)))))

(assert (= (and d!2168187 c!1288275) b!6943202))

(assert (= (and d!2168187 (not c!1288275)) b!6943209))

(assert (= (and d!2168187 c!1288276) b!6943208))

(assert (= (and d!2168187 (not c!1288276)) b!6943205))

(assert (= (and b!6943205 c!1288274) b!6943201))

(assert (= (and b!6943205 (not c!1288274)) b!6943204))

(assert (= (and b!6943204 (not res!2832391)) b!6943203))

(assert (= (and b!6943203 res!2832389) b!6943207))

(assert (= (and b!6943207 res!2832390) b!6943210))

(assert (= (and b!6943210 res!2832387) b!6943200))

(assert (= (and b!6943203 (not res!2832392)) b!6943206))

(assert (= (and b!6943206 res!2832393) b!6943199))

(assert (= (and b!6943199 (not res!2832388)) b!6943198))

(assert (= (and b!6943198 (not res!2832394)) b!6943197))

(assert (= (or b!6943208 b!6943207 b!6943199) bm!630739))

(assert (=> bm!630739 m!7648046))

(declare-fun m!7648062 () Bool)

(assert (=> b!6943197 m!7648062))

(declare-fun m!7648064 () Bool)

(assert (=> b!6943210 m!7648064))

(assert (=> b!6943210 m!7648064))

(declare-fun m!7648066 () Bool)

(assert (=> b!6943210 m!7648066))

(declare-fun m!7648068 () Bool)

(assert (=> b!6943202 m!7648068))

(assert (=> b!6943198 m!7648064))

(assert (=> b!6943198 m!7648064))

(assert (=> b!6943198 m!7648066))

(assert (=> b!6943209 m!7648062))

(assert (=> b!6943209 m!7648062))

(declare-fun m!7648070 () Bool)

(assert (=> b!6943209 m!7648070))

(assert (=> b!6943209 m!7648064))

(assert (=> b!6943209 m!7648070))

(assert (=> b!6943209 m!7648064))

(declare-fun m!7648072 () Bool)

(assert (=> b!6943209 m!7648072))

(assert (=> b!6943200 m!7648062))

(assert (=> d!2168187 m!7648046))

(declare-fun m!7648074 () Bool)

(assert (=> d!2168187 m!7648074))

(assert (=> b!6942382 d!2168187))

(declare-fun b!6943211 () Bool)

(declare-fun e!4176664 () Bool)

(assert (=> b!6943211 (= e!4176664 (not (= (head!13914 s!14361) (c!1288093 lt!2476354))))))

(declare-fun b!6943212 () Bool)

(declare-fun res!2832402 () Bool)

(assert (=> b!6943212 (=> res!2832402 e!4176664)))

(assert (=> b!6943212 (= res!2832402 (not (isEmpty!38874 (tail!12966 s!14361))))))

(declare-fun b!6943213 () Bool)

(declare-fun e!4176660 () Bool)

(assert (=> b!6943213 (= e!4176660 e!4176664)))

(declare-fun res!2832396 () Bool)

(assert (=> b!6943213 (=> res!2832396 e!4176664)))

(declare-fun call!630745 () Bool)

(assert (=> b!6943213 (= res!2832396 call!630745)))

(declare-fun b!6943214 () Bool)

(declare-fun e!4176661 () Bool)

(assert (=> b!6943214 (= e!4176661 (= (head!13914 s!14361) (c!1288093 lt!2476354)))))

(declare-fun b!6943215 () Bool)

(declare-fun e!4176663 () Bool)

(declare-fun lt!2476502 () Bool)

(assert (=> b!6943215 (= e!4176663 (not lt!2476502))))

(declare-fun b!6943216 () Bool)

(declare-fun e!4176659 () Bool)

(assert (=> b!6943216 (= e!4176659 (nullable!6786 lt!2476354))))

(declare-fun b!6943217 () Bool)

(declare-fun res!2832400 () Bool)

(declare-fun e!4176662 () Bool)

(assert (=> b!6943217 (=> res!2832400 e!4176662)))

(assert (=> b!6943217 (= res!2832400 e!4176661)))

(declare-fun res!2832397 () Bool)

(assert (=> b!6943217 (=> (not res!2832397) (not e!4176661))))

(assert (=> b!6943217 (= res!2832397 lt!2476502)))

(declare-fun bm!630740 () Bool)

(assert (=> bm!630740 (= call!630745 (isEmpty!38874 s!14361))))

(declare-fun b!6943218 () Bool)

(declare-fun res!2832399 () Bool)

(assert (=> b!6943218 (=> res!2832399 e!4176662)))

(assert (=> b!6943218 (= res!2832399 (not ((_ is ElementMatch!16971) lt!2476354)))))

(assert (=> b!6943218 (= e!4176663 e!4176662)))

(declare-fun d!2168189 () Bool)

(declare-fun e!4176658 () Bool)

(assert (=> d!2168189 e!4176658))

(declare-fun c!1288279 () Bool)

(assert (=> d!2168189 (= c!1288279 ((_ is EmptyExpr!16971) lt!2476354))))

(assert (=> d!2168189 (= lt!2476502 e!4176659)))

(declare-fun c!1288278 () Bool)

(assert (=> d!2168189 (= c!1288278 (isEmpty!38874 s!14361))))

(assert (=> d!2168189 (validRegex!8677 lt!2476354)))

(assert (=> d!2168189 (= (matchR!9110 lt!2476354 s!14361) lt!2476502)))

(declare-fun b!6943219 () Bool)

(assert (=> b!6943219 (= e!4176658 e!4176663)))

(declare-fun c!1288277 () Bool)

(assert (=> b!6943219 (= c!1288277 ((_ is EmptyLang!16971) lt!2476354))))

(declare-fun b!6943220 () Bool)

(assert (=> b!6943220 (= e!4176662 e!4176660)))

(declare-fun res!2832401 () Bool)

(assert (=> b!6943220 (=> (not res!2832401) (not e!4176660))))

(assert (=> b!6943220 (= res!2832401 (not lt!2476502))))

(declare-fun b!6943221 () Bool)

(declare-fun res!2832398 () Bool)

(assert (=> b!6943221 (=> (not res!2832398) (not e!4176661))))

(assert (=> b!6943221 (= res!2832398 (not call!630745))))

(declare-fun b!6943222 () Bool)

(assert (=> b!6943222 (= e!4176658 (= lt!2476502 call!630745))))

(declare-fun b!6943223 () Bool)

(assert (=> b!6943223 (= e!4176659 (matchR!9110 (derivativeStep!5461 lt!2476354 (head!13914 s!14361)) (tail!12966 s!14361)))))

(declare-fun b!6943224 () Bool)

(declare-fun res!2832395 () Bool)

(assert (=> b!6943224 (=> (not res!2832395) (not e!4176661))))

(assert (=> b!6943224 (= res!2832395 (isEmpty!38874 (tail!12966 s!14361)))))

(assert (= (and d!2168189 c!1288278) b!6943216))

(assert (= (and d!2168189 (not c!1288278)) b!6943223))

(assert (= (and d!2168189 c!1288279) b!6943222))

(assert (= (and d!2168189 (not c!1288279)) b!6943219))

(assert (= (and b!6943219 c!1288277) b!6943215))

(assert (= (and b!6943219 (not c!1288277)) b!6943218))

(assert (= (and b!6943218 (not res!2832399)) b!6943217))

(assert (= (and b!6943217 res!2832397) b!6943221))

(assert (= (and b!6943221 res!2832398) b!6943224))

(assert (= (and b!6943224 res!2832395) b!6943214))

(assert (= (and b!6943217 (not res!2832400)) b!6943220))

(assert (= (and b!6943220 res!2832401) b!6943213))

(assert (= (and b!6943213 (not res!2832396)) b!6943212))

(assert (= (and b!6943212 (not res!2832402)) b!6943211))

(assert (= (or b!6943222 b!6943221 b!6943213) bm!630740))

(assert (=> bm!630740 m!7648046))

(assert (=> b!6943211 m!7648062))

(assert (=> b!6943224 m!7648064))

(assert (=> b!6943224 m!7648064))

(assert (=> b!6943224 m!7648066))

(declare-fun m!7648076 () Bool)

(assert (=> b!6943216 m!7648076))

(assert (=> b!6943212 m!7648064))

(assert (=> b!6943212 m!7648064))

(assert (=> b!6943212 m!7648066))

(assert (=> b!6943223 m!7648062))

(assert (=> b!6943223 m!7648062))

(declare-fun m!7648078 () Bool)

(assert (=> b!6943223 m!7648078))

(assert (=> b!6943223 m!7648064))

(assert (=> b!6943223 m!7648078))

(assert (=> b!6943223 m!7648064))

(declare-fun m!7648080 () Bool)

(assert (=> b!6943223 m!7648080))

(assert (=> b!6943214 m!7648062))

(assert (=> d!2168189 m!7648046))

(assert (=> d!2168189 m!7648060))

(assert (=> b!6942382 d!2168189))

(declare-fun d!2168191 () Bool)

(assert (=> d!2168191 (= (matchR!9110 lt!2476361 s!14361) (matchRSpec!4028 lt!2476361 s!14361))))

(declare-fun lt!2476503 () Unit!160672)

(assert (=> d!2168191 (= lt!2476503 (choose!51733 lt!2476361 s!14361))))

(assert (=> d!2168191 (validRegex!8677 lt!2476361)))

(assert (=> d!2168191 (= (mainMatchTheorem!4028 lt!2476361 s!14361) lt!2476503)))

(declare-fun bs!1856101 () Bool)

(assert (= bs!1856101 d!2168191))

(assert (=> bs!1856101 m!7647314))

(assert (=> bs!1856101 m!7647320))

(declare-fun m!7648082 () Bool)

(assert (=> bs!1856101 m!7648082))

(assert (=> bs!1856101 m!7648074))

(assert (=> b!6942382 d!2168191))

(declare-fun b!6943238 () Bool)

(declare-fun e!4176667 () Bool)

(declare-fun tp!1913753 () Bool)

(declare-fun tp!1913752 () Bool)

(assert (=> b!6943238 (= e!4176667 (and tp!1913753 tp!1913752))))

(declare-fun b!6943235 () Bool)

(assert (=> b!6943235 (= e!4176667 tp_is_empty!43167)))

(declare-fun b!6943236 () Bool)

(declare-fun tp!1913750 () Bool)

(declare-fun tp!1913754 () Bool)

(assert (=> b!6943236 (= e!4176667 (and tp!1913750 tp!1913754))))

(assert (=> b!6942375 (= tp!1913639 e!4176667)))

(declare-fun b!6943237 () Bool)

(declare-fun tp!1913751 () Bool)

(assert (=> b!6943237 (= e!4176667 tp!1913751)))

(assert (= (and b!6942375 ((_ is ElementMatch!16971) (regOne!34454 r3!135))) b!6943235))

(assert (= (and b!6942375 ((_ is Concat!25816) (regOne!34454 r3!135))) b!6943236))

(assert (= (and b!6942375 ((_ is Star!16971) (regOne!34454 r3!135))) b!6943237))

(assert (= (and b!6942375 ((_ is Union!16971) (regOne!34454 r3!135))) b!6943238))

(declare-fun b!6943242 () Bool)

(declare-fun e!4176668 () Bool)

(declare-fun tp!1913758 () Bool)

(declare-fun tp!1913757 () Bool)

(assert (=> b!6943242 (= e!4176668 (and tp!1913758 tp!1913757))))

(declare-fun b!6943239 () Bool)

(assert (=> b!6943239 (= e!4176668 tp_is_empty!43167)))

(declare-fun b!6943240 () Bool)

(declare-fun tp!1913755 () Bool)

(declare-fun tp!1913759 () Bool)

(assert (=> b!6943240 (= e!4176668 (and tp!1913755 tp!1913759))))

(assert (=> b!6942375 (= tp!1913640 e!4176668)))

(declare-fun b!6943241 () Bool)

(declare-fun tp!1913756 () Bool)

(assert (=> b!6943241 (= e!4176668 tp!1913756)))

(assert (= (and b!6942375 ((_ is ElementMatch!16971) (regTwo!34454 r3!135))) b!6943239))

(assert (= (and b!6942375 ((_ is Concat!25816) (regTwo!34454 r3!135))) b!6943240))

(assert (= (and b!6942375 ((_ is Star!16971) (regTwo!34454 r3!135))) b!6943241))

(assert (= (and b!6942375 ((_ is Union!16971) (regTwo!34454 r3!135))) b!6943242))

(declare-fun b!6943246 () Bool)

(declare-fun e!4176669 () Bool)

(declare-fun tp!1913763 () Bool)

(declare-fun tp!1913762 () Bool)

(assert (=> b!6943246 (= e!4176669 (and tp!1913763 tp!1913762))))

(declare-fun b!6943243 () Bool)

(assert (=> b!6943243 (= e!4176669 tp_is_empty!43167)))

(declare-fun b!6943244 () Bool)

(declare-fun tp!1913760 () Bool)

(declare-fun tp!1913764 () Bool)

(assert (=> b!6943244 (= e!4176669 (and tp!1913760 tp!1913764))))

(assert (=> b!6942381 (= tp!1913648 e!4176669)))

(declare-fun b!6943245 () Bool)

(declare-fun tp!1913761 () Bool)

(assert (=> b!6943245 (= e!4176669 tp!1913761)))

(assert (= (and b!6942381 ((_ is ElementMatch!16971) (regOne!34455 r1!6342))) b!6943243))

(assert (= (and b!6942381 ((_ is Concat!25816) (regOne!34455 r1!6342))) b!6943244))

(assert (= (and b!6942381 ((_ is Star!16971) (regOne!34455 r1!6342))) b!6943245))

(assert (= (and b!6942381 ((_ is Union!16971) (regOne!34455 r1!6342))) b!6943246))

(declare-fun b!6943250 () Bool)

(declare-fun e!4176670 () Bool)

(declare-fun tp!1913768 () Bool)

(declare-fun tp!1913767 () Bool)

(assert (=> b!6943250 (= e!4176670 (and tp!1913768 tp!1913767))))

(declare-fun b!6943247 () Bool)

(assert (=> b!6943247 (= e!4176670 tp_is_empty!43167)))

(declare-fun b!6943248 () Bool)

(declare-fun tp!1913765 () Bool)

(declare-fun tp!1913769 () Bool)

(assert (=> b!6943248 (= e!4176670 (and tp!1913765 tp!1913769))))

(assert (=> b!6942381 (= tp!1913637 e!4176670)))

(declare-fun b!6943249 () Bool)

(declare-fun tp!1913766 () Bool)

(assert (=> b!6943249 (= e!4176670 tp!1913766)))

(assert (= (and b!6942381 ((_ is ElementMatch!16971) (regTwo!34455 r1!6342))) b!6943247))

(assert (= (and b!6942381 ((_ is Concat!25816) (regTwo!34455 r1!6342))) b!6943248))

(assert (= (and b!6942381 ((_ is Star!16971) (regTwo!34455 r1!6342))) b!6943249))

(assert (= (and b!6942381 ((_ is Union!16971) (regTwo!34455 r1!6342))) b!6943250))

(declare-fun b!6943254 () Bool)

(declare-fun e!4176671 () Bool)

(declare-fun tp!1913773 () Bool)

(declare-fun tp!1913772 () Bool)

(assert (=> b!6943254 (= e!4176671 (and tp!1913773 tp!1913772))))

(declare-fun b!6943251 () Bool)

(assert (=> b!6943251 (= e!4176671 tp_is_empty!43167)))

(declare-fun b!6943252 () Bool)

(declare-fun tp!1913770 () Bool)

(declare-fun tp!1913774 () Bool)

(assert (=> b!6943252 (= e!4176671 (and tp!1913770 tp!1913774))))

(assert (=> b!6942376 (= tp!1913638 e!4176671)))

(declare-fun b!6943253 () Bool)

(declare-fun tp!1913771 () Bool)

(assert (=> b!6943253 (= e!4176671 tp!1913771)))

(assert (= (and b!6942376 ((_ is ElementMatch!16971) (regOne!34454 r1!6342))) b!6943251))

(assert (= (and b!6942376 ((_ is Concat!25816) (regOne!34454 r1!6342))) b!6943252))

(assert (= (and b!6942376 ((_ is Star!16971) (regOne!34454 r1!6342))) b!6943253))

(assert (= (and b!6942376 ((_ is Union!16971) (regOne!34454 r1!6342))) b!6943254))

(declare-fun b!6943258 () Bool)

(declare-fun e!4176672 () Bool)

(declare-fun tp!1913778 () Bool)

(declare-fun tp!1913777 () Bool)

(assert (=> b!6943258 (= e!4176672 (and tp!1913778 tp!1913777))))

(declare-fun b!6943255 () Bool)

(assert (=> b!6943255 (= e!4176672 tp_is_empty!43167)))

(declare-fun b!6943256 () Bool)

(declare-fun tp!1913775 () Bool)

(declare-fun tp!1913779 () Bool)

(assert (=> b!6943256 (= e!4176672 (and tp!1913775 tp!1913779))))

(assert (=> b!6942376 (= tp!1913647 e!4176672)))

(declare-fun b!6943257 () Bool)

(declare-fun tp!1913776 () Bool)

(assert (=> b!6943257 (= e!4176672 tp!1913776)))

(assert (= (and b!6942376 ((_ is ElementMatch!16971) (regTwo!34454 r1!6342))) b!6943255))

(assert (= (and b!6942376 ((_ is Concat!25816) (regTwo!34454 r1!6342))) b!6943256))

(assert (= (and b!6942376 ((_ is Star!16971) (regTwo!34454 r1!6342))) b!6943257))

(assert (= (and b!6942376 ((_ is Union!16971) (regTwo!34454 r1!6342))) b!6943258))

(declare-fun b!6943262 () Bool)

(declare-fun e!4176673 () Bool)

(declare-fun tp!1913783 () Bool)

(declare-fun tp!1913782 () Bool)

(assert (=> b!6943262 (= e!4176673 (and tp!1913783 tp!1913782))))

(declare-fun b!6943259 () Bool)

(assert (=> b!6943259 (= e!4176673 tp_is_empty!43167)))

(declare-fun b!6943260 () Bool)

(declare-fun tp!1913780 () Bool)

(declare-fun tp!1913784 () Bool)

(assert (=> b!6943260 (= e!4176673 (and tp!1913780 tp!1913784))))

(assert (=> b!6942369 (= tp!1913645 e!4176673)))

(declare-fun b!6943261 () Bool)

(declare-fun tp!1913781 () Bool)

(assert (=> b!6943261 (= e!4176673 tp!1913781)))

(assert (= (and b!6942369 ((_ is ElementMatch!16971) (reg!17300 r3!135))) b!6943259))

(assert (= (and b!6942369 ((_ is Concat!25816) (reg!17300 r3!135))) b!6943260))

(assert (= (and b!6942369 ((_ is Star!16971) (reg!17300 r3!135))) b!6943261))

(assert (= (and b!6942369 ((_ is Union!16971) (reg!17300 r3!135))) b!6943262))

(declare-fun b!6943266 () Bool)

(declare-fun e!4176674 () Bool)

(declare-fun tp!1913788 () Bool)

(declare-fun tp!1913787 () Bool)

(assert (=> b!6943266 (= e!4176674 (and tp!1913788 tp!1913787))))

(declare-fun b!6943263 () Bool)

(assert (=> b!6943263 (= e!4176674 tp_is_empty!43167)))

(declare-fun b!6943264 () Bool)

(declare-fun tp!1913785 () Bool)

(declare-fun tp!1913789 () Bool)

(assert (=> b!6943264 (= e!4176674 (and tp!1913785 tp!1913789))))

(assert (=> b!6942385 (= tp!1913651 e!4176674)))

(declare-fun b!6943265 () Bool)

(declare-fun tp!1913786 () Bool)

(assert (=> b!6943265 (= e!4176674 tp!1913786)))

(assert (= (and b!6942385 ((_ is ElementMatch!16971) (regOne!34454 r2!6280))) b!6943263))

(assert (= (and b!6942385 ((_ is Concat!25816) (regOne!34454 r2!6280))) b!6943264))

(assert (= (and b!6942385 ((_ is Star!16971) (regOne!34454 r2!6280))) b!6943265))

(assert (= (and b!6942385 ((_ is Union!16971) (regOne!34454 r2!6280))) b!6943266))

(declare-fun b!6943270 () Bool)

(declare-fun e!4176675 () Bool)

(declare-fun tp!1913793 () Bool)

(declare-fun tp!1913792 () Bool)

(assert (=> b!6943270 (= e!4176675 (and tp!1913793 tp!1913792))))

(declare-fun b!6943267 () Bool)

(assert (=> b!6943267 (= e!4176675 tp_is_empty!43167)))

(declare-fun b!6943268 () Bool)

(declare-fun tp!1913790 () Bool)

(declare-fun tp!1913794 () Bool)

(assert (=> b!6943268 (= e!4176675 (and tp!1913790 tp!1913794))))

(assert (=> b!6942385 (= tp!1913650 e!4176675)))

(declare-fun b!6943269 () Bool)

(declare-fun tp!1913791 () Bool)

(assert (=> b!6943269 (= e!4176675 tp!1913791)))

(assert (= (and b!6942385 ((_ is ElementMatch!16971) (regTwo!34454 r2!6280))) b!6943267))

(assert (= (and b!6942385 ((_ is Concat!25816) (regTwo!34454 r2!6280))) b!6943268))

(assert (= (and b!6942385 ((_ is Star!16971) (regTwo!34454 r2!6280))) b!6943269))

(assert (= (and b!6942385 ((_ is Union!16971) (regTwo!34454 r2!6280))) b!6943270))

(declare-fun b!6943274 () Bool)

(declare-fun e!4176676 () Bool)

(declare-fun tp!1913798 () Bool)

(declare-fun tp!1913797 () Bool)

(assert (=> b!6943274 (= e!4176676 (and tp!1913798 tp!1913797))))

(declare-fun b!6943271 () Bool)

(assert (=> b!6943271 (= e!4176676 tp_is_empty!43167)))

(declare-fun b!6943272 () Bool)

(declare-fun tp!1913795 () Bool)

(declare-fun tp!1913799 () Bool)

(assert (=> b!6943272 (= e!4176676 (and tp!1913795 tp!1913799))))

(assert (=> b!6942367 (= tp!1913641 e!4176676)))

(declare-fun b!6943273 () Bool)

(declare-fun tp!1913796 () Bool)

(assert (=> b!6943273 (= e!4176676 tp!1913796)))

(assert (= (and b!6942367 ((_ is ElementMatch!16971) (reg!17300 r2!6280))) b!6943271))

(assert (= (and b!6942367 ((_ is Concat!25816) (reg!17300 r2!6280))) b!6943272))

(assert (= (and b!6942367 ((_ is Star!16971) (reg!17300 r2!6280))) b!6943273))

(assert (= (and b!6942367 ((_ is Union!16971) (reg!17300 r2!6280))) b!6943274))

(declare-fun b!6943278 () Bool)

(declare-fun e!4176677 () Bool)

(declare-fun tp!1913803 () Bool)

(declare-fun tp!1913802 () Bool)

(assert (=> b!6943278 (= e!4176677 (and tp!1913803 tp!1913802))))

(declare-fun b!6943275 () Bool)

(assert (=> b!6943275 (= e!4176677 tp_is_empty!43167)))

(declare-fun b!6943276 () Bool)

(declare-fun tp!1913800 () Bool)

(declare-fun tp!1913804 () Bool)

(assert (=> b!6943276 (= e!4176677 (and tp!1913800 tp!1913804))))

(assert (=> b!6942368 (= tp!1913644 e!4176677)))

(declare-fun b!6943277 () Bool)

(declare-fun tp!1913801 () Bool)

(assert (=> b!6943277 (= e!4176677 tp!1913801)))

(assert (= (and b!6942368 ((_ is ElementMatch!16971) (reg!17300 r1!6342))) b!6943275))

(assert (= (and b!6942368 ((_ is Concat!25816) (reg!17300 r1!6342))) b!6943276))

(assert (= (and b!6942368 ((_ is Star!16971) (reg!17300 r1!6342))) b!6943277))

(assert (= (and b!6942368 ((_ is Union!16971) (reg!17300 r1!6342))) b!6943278))

(declare-fun b!6943282 () Bool)

(declare-fun e!4176678 () Bool)

(declare-fun tp!1913808 () Bool)

(declare-fun tp!1913807 () Bool)

(assert (=> b!6943282 (= e!4176678 (and tp!1913808 tp!1913807))))

(declare-fun b!6943279 () Bool)

(assert (=> b!6943279 (= e!4176678 tp_is_empty!43167)))

(declare-fun b!6943280 () Bool)

(declare-fun tp!1913805 () Bool)

(declare-fun tp!1913809 () Bool)

(assert (=> b!6943280 (= e!4176678 (and tp!1913805 tp!1913809))))

(assert (=> b!6942371 (= tp!1913649 e!4176678)))

(declare-fun b!6943281 () Bool)

(declare-fun tp!1913806 () Bool)

(assert (=> b!6943281 (= e!4176678 tp!1913806)))

(assert (= (and b!6942371 ((_ is ElementMatch!16971) (regOne!34455 r3!135))) b!6943279))

(assert (= (and b!6942371 ((_ is Concat!25816) (regOne!34455 r3!135))) b!6943280))

(assert (= (and b!6942371 ((_ is Star!16971) (regOne!34455 r3!135))) b!6943281))

(assert (= (and b!6942371 ((_ is Union!16971) (regOne!34455 r3!135))) b!6943282))

(declare-fun b!6943286 () Bool)

(declare-fun e!4176679 () Bool)

(declare-fun tp!1913813 () Bool)

(declare-fun tp!1913812 () Bool)

(assert (=> b!6943286 (= e!4176679 (and tp!1913813 tp!1913812))))

(declare-fun b!6943283 () Bool)

(assert (=> b!6943283 (= e!4176679 tp_is_empty!43167)))

(declare-fun b!6943284 () Bool)

(declare-fun tp!1913810 () Bool)

(declare-fun tp!1913814 () Bool)

(assert (=> b!6943284 (= e!4176679 (and tp!1913810 tp!1913814))))

(assert (=> b!6942371 (= tp!1913646 e!4176679)))

(declare-fun b!6943285 () Bool)

(declare-fun tp!1913811 () Bool)

(assert (=> b!6943285 (= e!4176679 tp!1913811)))

(assert (= (and b!6942371 ((_ is ElementMatch!16971) (regTwo!34455 r3!135))) b!6943283))

(assert (= (and b!6942371 ((_ is Concat!25816) (regTwo!34455 r3!135))) b!6943284))

(assert (= (and b!6942371 ((_ is Star!16971) (regTwo!34455 r3!135))) b!6943285))

(assert (= (and b!6942371 ((_ is Union!16971) (regTwo!34455 r3!135))) b!6943286))

(declare-fun b!6943290 () Bool)

(declare-fun e!4176680 () Bool)

(declare-fun tp!1913818 () Bool)

(declare-fun tp!1913817 () Bool)

(assert (=> b!6943290 (= e!4176680 (and tp!1913818 tp!1913817))))

(declare-fun b!6943287 () Bool)

(assert (=> b!6943287 (= e!4176680 tp_is_empty!43167)))

(declare-fun b!6943288 () Bool)

(declare-fun tp!1913815 () Bool)

(declare-fun tp!1913819 () Bool)

(assert (=> b!6943288 (= e!4176680 (and tp!1913815 tp!1913819))))

(assert (=> b!6942377 (= tp!1913636 e!4176680)))

(declare-fun b!6943289 () Bool)

(declare-fun tp!1913816 () Bool)

(assert (=> b!6943289 (= e!4176680 tp!1913816)))

(assert (= (and b!6942377 ((_ is ElementMatch!16971) (regOne!34455 r2!6280))) b!6943287))

(assert (= (and b!6942377 ((_ is Concat!25816) (regOne!34455 r2!6280))) b!6943288))

(assert (= (and b!6942377 ((_ is Star!16971) (regOne!34455 r2!6280))) b!6943289))

(assert (= (and b!6942377 ((_ is Union!16971) (regOne!34455 r2!6280))) b!6943290))

(declare-fun b!6943294 () Bool)

(declare-fun e!4176681 () Bool)

(declare-fun tp!1913823 () Bool)

(declare-fun tp!1913822 () Bool)

(assert (=> b!6943294 (= e!4176681 (and tp!1913823 tp!1913822))))

(declare-fun b!6943291 () Bool)

(assert (=> b!6943291 (= e!4176681 tp_is_empty!43167)))

(declare-fun b!6943292 () Bool)

(declare-fun tp!1913820 () Bool)

(declare-fun tp!1913824 () Bool)

(assert (=> b!6943292 (= e!4176681 (and tp!1913820 tp!1913824))))

(assert (=> b!6942377 (= tp!1913643 e!4176681)))

(declare-fun b!6943293 () Bool)

(declare-fun tp!1913821 () Bool)

(assert (=> b!6943293 (= e!4176681 tp!1913821)))

(assert (= (and b!6942377 ((_ is ElementMatch!16971) (regTwo!34455 r2!6280))) b!6943291))

(assert (= (and b!6942377 ((_ is Concat!25816) (regTwo!34455 r2!6280))) b!6943292))

(assert (= (and b!6942377 ((_ is Star!16971) (regTwo!34455 r2!6280))) b!6943293))

(assert (= (and b!6942377 ((_ is Union!16971) (regTwo!34455 r2!6280))) b!6943294))

(declare-fun b!6943299 () Bool)

(declare-fun e!4176684 () Bool)

(declare-fun tp!1913827 () Bool)

(assert (=> b!6943299 (= e!4176684 (and tp_is_empty!43167 tp!1913827))))

(assert (=> b!6942372 (= tp!1913642 e!4176684)))

(assert (= (and b!6942372 ((_ is Cons!66600) (t!380467 s!14361))) b!6943299))

(check-sat (not b!6942491) (not d!2168191) (not bm!630716) (not b!6943197) (not bm!630711) (not d!2168129) (not bm!630727) (not b!6943056) (not b!6942631) (not b!6943080) (not b!6943043) (not b!6942897) (not d!2168123) (not bm!630700) (not d!2168147) (not b!6943244) (not b!6943046) (not b!6943087) (not b!6943109) (not b!6943047) (not b!6943145) (not b!6943104) (not d!2168047) (not bm!630739) (not d!2168097) (not d!2168165) (not b!6943237) (not bm!630736) (not b!6943187) (not b!6943258) (not d!2168185) (not b!6942792) (not b!6943216) (not bm!630674) (not b!6943168) (not b!6943032) (not d!2168151) (not b!6943070) (not b!6943270) (not b!6943198) (not d!2168157) (not b!6943192) (not b!6942616) (not bm!630712) (not b!6943110) (not b!6943264) tp_is_empty!43167 (not bm!630728) (not b!6943098) (not b!6943170) (not bm!630734) (not d!2168189) (not bm!630715) (not b!6943265) (not d!2168105) (not d!2168035) (not d!2168033) (not b!6943050) (not b!6943051) (not b!6942965) (not b!6943242) (not bm!630724) (not b!6943105) (not b!6942638) (not d!2168113) (not b!6943274) (not b!6943250) (not b!6942479) (not b!6943281) (not bm!630699) (not b!6943241) (not b!6942793) (not b!6943036) (not b!6943252) (not d!2168155) (not b!6943276) (not bm!630740) (not b!6943272) (not d!2167991) (not bm!630709) (not b!6943269) (not b!6942478) (not b!6943246) (not d!2168093) (not b!6943093) (not b!6942901) (not b!6942903) (not bm!630713) (not b!6943249) (not b!6943261) (not bm!630708) (not b!6942483) (not b!6943284) (not b!6943245) (not b!6943200) (not b!6942402) (not d!2168143) (not b!6943257) (not b!6943293) (not d!2168085) (not b!6943278) (not d!2168053) (not d!2168149) (not b!6943238) (not b!6942880) (not d!2168167) (not d!2167975) (not b!6943173) (not b!6943288) (not b!6943290) (not b!6943167) (not b!6942787) (not b!6943240) (not b!6943176) (not b!6943034) (not b!6943044) (not d!2168079) (not b!6943286) (not b!6943172) (not d!2167973) (not b!6943065) (not b!6942629) (not b!6943268) (not b!6943053) (not bm!630710) (not b!6943280) (not b!6942960) (not bm!630735) (not b!6942790) (not b!6943256) (not d!2168115) (not b!6943181) (not b!6943174) (not d!2167967) (not b!6943212) (not b!6943136) (not b!6943210) (not bm!630730) (not b!6943262) (not b!6943266) (not d!2168153) (not b!6943223) (not b!6943254) (not b!6942481) (not b!6943292) (not d!2167971) (not b!6942490) (not b!6942895) (not b!6943068) (not b!6943277) (not bm!630731) (not b!6943211) (not d!2168187) (not b!6943067) (not bm!630737) (not d!2167989) (not b!6943209) (not d!2168127) (not d!2168117) (not b!6943299) (not d!2168121) (not b!6942900) (not b!6943294) (not b!6942621) (not b!6943202) (not b!6943072) (not bm!630672) (not b!6943031) (not d!2168087) (not b!6943054) (not b!6943058) (not b!6943214) (not d!2168159) (not b!6943273) (not bm!630673) (not b!6942639) (not b!6943224) (not bm!630656) (not b!6943282) (not d!2168145) (not d!2168125) (not b!6943248) (not b!6942899) (not d!2168037) (not b!6943253) (not b!6943260) (not d!2167969) (not b!6942879) (not d!2168111) (not bm!630738) (not b!6942908) (not d!2168177) (not b!6943154) (not b!6943082) (not b!6943111) (not bm!630733) (not b!6942794) (not b!6943066) (not b!6942894) (not b!6943289) (not b!6943163) (not bm!630714) (not b!6943236) (not b!6942626) (not b!6942627) (not b!6943285) (not b!6942401) (not d!2168179) (not b!6942788) (not b!6943107) (not b!6943079) (not bm!630725))
(check-sat)
