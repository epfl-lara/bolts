; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!666350 () Bool)

(assert start!666350)

(declare-fun b!6936468 () Bool)

(assert (=> b!6936468 true))

(assert (=> b!6936468 true))

(assert (=> b!6936468 true))

(declare-fun lambda!394996 () Int)

(declare-fun lambda!394995 () Int)

(assert (=> b!6936468 (not (= lambda!394996 lambda!394995))))

(assert (=> b!6936468 true))

(assert (=> b!6936468 true))

(assert (=> b!6936468 true))

(declare-fun bs!1852497 () Bool)

(declare-fun b!6936467 () Bool)

(assert (= bs!1852497 (and b!6936467 b!6936468)))

(declare-fun lambda!394997 () Int)

(declare-datatypes ((C!34188 0))(
  ( (C!34189 (val!26796 Int)) )
))
(declare-datatypes ((Regex!16959 0))(
  ( (ElementMatch!16959 (c!1287149 C!34188)) (Concat!25804 (regOne!34430 Regex!16959) (regTwo!34430 Regex!16959)) (EmptyExpr!16959) (Star!16959 (reg!17288 Regex!16959)) (EmptyLang!16959) (Union!16959 (regOne!34431 Regex!16959) (regTwo!34431 Regex!16959)) )
))
(declare-fun r1!6342 () Regex!16959)

(declare-fun r3!135 () Regex!16959)

(declare-datatypes ((List!66712 0))(
  ( (Nil!66588) (Cons!66588 (h!73036 C!34188) (t!380455 List!66712)) )
))
(declare-fun s!14361 () List!66712)

(declare-fun lt!2474648 () Regex!16959)

(declare-fun r2!6280 () Regex!16959)

(declare-datatypes ((tuple2!67632 0))(
  ( (tuple2!67633 (_1!37119 List!66712) (_2!37119 List!66712)) )
))
(declare-fun lt!2474644 () tuple2!67632)

(assert (=> bs!1852497 (= (and (= (_2!37119 lt!2474644) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2474648)) (= lambda!394997 lambda!394995))))

(assert (=> bs!1852497 (not (= lambda!394997 lambda!394996))))

(assert (=> b!6936467 true))

(assert (=> b!6936467 true))

(assert (=> b!6936467 true))

(declare-fun lambda!394998 () Int)

(assert (=> bs!1852497 (not (= lambda!394998 lambda!394995))))

(assert (=> bs!1852497 (= (and (= (_2!37119 lt!2474644) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2474648)) (= lambda!394998 lambda!394996))))

(assert (=> b!6936467 (not (= lambda!394998 lambda!394997))))

(assert (=> b!6936467 true))

(assert (=> b!6936467 true))

(assert (=> b!6936467 true))

(declare-fun bs!1852498 () Bool)

(declare-fun b!6936463 () Bool)

(assert (= bs!1852498 (and b!6936463 b!6936468)))

(declare-fun lambda!394999 () Int)

(declare-fun lt!2474663 () List!66712)

(assert (=> bs!1852498 (= (and (= lt!2474663 s!14361) (= r2!6280 lt!2474648)) (= lambda!394999 lambda!394995))))

(assert (=> bs!1852498 (not (= lambda!394999 lambda!394996))))

(declare-fun bs!1852499 () Bool)

(assert (= bs!1852499 (and b!6936463 b!6936467)))

(assert (=> bs!1852499 (= (and (= lt!2474663 (_2!37119 lt!2474644)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394999 lambda!394997))))

(assert (=> bs!1852499 (not (= lambda!394999 lambda!394998))))

(assert (=> b!6936463 true))

(assert (=> b!6936463 true))

(assert (=> b!6936463 true))

(declare-fun lambda!395000 () Int)

(assert (=> bs!1852499 (not (= lambda!395000 lambda!394997))))

(assert (=> bs!1852499 (= (and (= lt!2474663 (_2!37119 lt!2474644)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395000 lambda!394998))))

(assert (=> b!6936463 (not (= lambda!395000 lambda!394999))))

(assert (=> bs!1852498 (not (= lambda!395000 lambda!394995))))

(assert (=> bs!1852498 (= (and (= lt!2474663 s!14361) (= r2!6280 lt!2474648)) (= lambda!395000 lambda!394996))))

(assert (=> b!6936463 true))

(assert (=> b!6936463 true))

(assert (=> b!6936463 true))

(declare-fun b!6936451 () Bool)

(declare-fun res!2829250 () Bool)

(declare-fun e!4173208 () Bool)

(assert (=> b!6936451 (=> res!2829250 e!4173208)))

(declare-fun lt!2474658 () tuple2!67632)

(declare-fun matchR!9098 (Regex!16959 List!66712) Bool)

(assert (=> b!6936451 (= res!2829250 (not (matchR!9098 r3!135 (_2!37119 lt!2474658))))))

(declare-fun b!6936452 () Bool)

(declare-fun e!4173201 () Bool)

(declare-fun tp_is_empty!43143 () Bool)

(assert (=> b!6936452 (= e!4173201 tp_is_empty!43143)))

(declare-fun b!6936453 () Bool)

(declare-fun e!4173205 () Bool)

(declare-fun e!4173209 () Bool)

(assert (=> b!6936453 (= e!4173205 e!4173209)))

(declare-fun res!2829259 () Bool)

(assert (=> b!6936453 (=> res!2829259 e!4173209)))

(declare-datatypes ((Option!16728 0))(
  ( (None!16727) (Some!16727 (v!52999 tuple2!67632)) )
))
(declare-fun lt!2474669 () Option!16728)

(declare-fun isDefined!13429 (Option!16728) Bool)

(assert (=> b!6936453 (= res!2829259 (not (isDefined!13429 lt!2474669)))))

(declare-fun findConcatSeparation!3142 (Regex!16959 Regex!16959 List!66712 List!66712 List!66712) Option!16728)

(assert (=> b!6936453 (= lt!2474669 (findConcatSeparation!3142 r1!6342 lt!2474648 Nil!66588 s!14361 s!14361))))

(declare-fun b!6936454 () Bool)

(declare-fun res!2829253 () Bool)

(declare-fun e!4173200 () Bool)

(assert (=> b!6936454 (=> res!2829253 e!4173200)))

(assert (=> b!6936454 (= res!2829253 (not (matchR!9098 lt!2474648 (_2!37119 lt!2474644))))))

(declare-fun b!6936455 () Bool)

(declare-fun e!4173207 () Bool)

(declare-fun tp!1912185 () Bool)

(declare-fun tp!1912184 () Bool)

(assert (=> b!6936455 (= e!4173207 (and tp!1912185 tp!1912184))))

(declare-fun b!6936456 () Bool)

(declare-fun res!2829249 () Bool)

(declare-fun e!4173203 () Bool)

(assert (=> b!6936456 (=> (not res!2829249) (not e!4173203))))

(declare-fun validRegex!8665 (Regex!16959) Bool)

(assert (=> b!6936456 (= res!2829249 (validRegex!8665 r2!6280))))

(declare-fun res!2829252 () Bool)

(assert (=> start!666350 (=> (not res!2829252) (not e!4173203))))

(assert (=> start!666350 (= res!2829252 (validRegex!8665 r1!6342))))

(assert (=> start!666350 e!4173203))

(assert (=> start!666350 e!4173207))

(assert (=> start!666350 e!4173201))

(declare-fun e!4173202 () Bool)

(assert (=> start!666350 e!4173202))

(declare-fun e!4173210 () Bool)

(assert (=> start!666350 e!4173210))

(declare-fun b!6936457 () Bool)

(declare-fun tp!1912195 () Bool)

(assert (=> b!6936457 (= e!4173210 (and tp_is_empty!43143 tp!1912195))))

(declare-fun b!6936458 () Bool)

(declare-fun res!2829256 () Bool)

(assert (=> b!6936458 (=> (not res!2829256) (not e!4173203))))

(assert (=> b!6936458 (= res!2829256 (validRegex!8665 r3!135))))

(declare-fun b!6936459 () Bool)

(declare-fun e!4173206 () Bool)

(declare-fun isPrefix!5816 (List!66712 List!66712) Bool)

(assert (=> b!6936459 (= e!4173206 (isPrefix!5816 Nil!66588 lt!2474663))))

(declare-fun b!6936460 () Bool)

(declare-fun tp!1912180 () Bool)

(declare-fun tp!1912189 () Bool)

(assert (=> b!6936460 (= e!4173202 (and tp!1912180 tp!1912189))))

(declare-fun b!6936461 () Bool)

(declare-fun tp!1912182 () Bool)

(declare-fun tp!1912193 () Bool)

(assert (=> b!6936461 (= e!4173202 (and tp!1912182 tp!1912193))))

(declare-fun b!6936462 () Bool)

(declare-fun tp!1912192 () Bool)

(declare-fun tp!1912186 () Bool)

(assert (=> b!6936462 (= e!4173201 (and tp!1912192 tp!1912186))))

(declare-fun e!4173204 () Bool)

(assert (=> b!6936463 (= e!4173204 e!4173206)))

(declare-fun res!2829258 () Bool)

(assert (=> b!6936463 (=> res!2829258 e!4173206)))

(declare-fun lt!2474665 () Bool)

(declare-fun lt!2474670 () List!66712)

(assert (=> b!6936463 (= res!2829258 (or (not lt!2474665) (not (= lt!2474670 s!14361))))))

(declare-fun lt!2474656 () Bool)

(assert (=> b!6936463 lt!2474656))

(declare-datatypes ((Unit!160642 0))(
  ( (Unit!160643) )
))
(declare-fun lt!2474645 () Unit!160642)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!102 (Regex!16959 Regex!16959 List!66712 List!66712 List!66712 List!66712 List!66712) Unit!160642)

(assert (=> b!6936463 (= lt!2474645 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!102 r1!6342 r2!6280 (_1!37119 lt!2474644) (_1!37119 lt!2474658) lt!2474663 Nil!66588 lt!2474663))))

(declare-fun Exists!3959 (Int) Bool)

(assert (=> b!6936463 (= (Exists!3959 lambda!394999) (Exists!3959 lambda!395000))))

(declare-fun lt!2474664 () Unit!160642)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2420 (Regex!16959 Regex!16959 List!66712) Unit!160642)

(assert (=> b!6936463 (= lt!2474664 (lemmaExistCutMatchRandMatchRSpecEquivalent!2420 r1!6342 r2!6280 lt!2474663))))

(assert (=> b!6936463 (= lt!2474656 (Exists!3959 lambda!394999))))

(assert (=> b!6936463 (= lt!2474656 (isDefined!13429 (findConcatSeparation!3142 r1!6342 r2!6280 Nil!66588 lt!2474663 lt!2474663)))))

(declare-fun lt!2474646 () Unit!160642)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2900 (Regex!16959 Regex!16959 List!66712) Unit!160642)

(assert (=> b!6936463 (= lt!2474646 (lemmaFindConcatSeparationEquivalentToExists!2900 r1!6342 r2!6280 lt!2474663))))

(declare-fun lt!2474666 () Regex!16959)

(declare-fun matchRSpec!4016 (Regex!16959 List!66712) Bool)

(assert (=> b!6936463 (= lt!2474665 (matchRSpec!4016 lt!2474666 lt!2474663))))

(assert (=> b!6936463 (= lt!2474665 (matchR!9098 lt!2474666 lt!2474663))))

(declare-fun lt!2474661 () Unit!160642)

(declare-fun mainMatchTheorem!4016 (Regex!16959 List!66712) Unit!160642)

(assert (=> b!6936463 (= lt!2474661 (mainMatchTheorem!4016 lt!2474666 lt!2474663))))

(declare-fun lt!2474662 () List!66712)

(assert (=> b!6936463 (= lt!2474670 lt!2474662)))

(declare-fun ++!14998 (List!66712 List!66712) List!66712)

(assert (=> b!6936463 (= lt!2474670 (++!14998 lt!2474663 (_2!37119 lt!2474658)))))

(assert (=> b!6936463 (= lt!2474663 (++!14998 (_1!37119 lt!2474644) (_1!37119 lt!2474658)))))

(declare-fun lt!2474647 () Unit!160642)

(declare-fun lemmaConcatAssociativity!3040 (List!66712 List!66712 List!66712) Unit!160642)

(assert (=> b!6936463 (= lt!2474647 (lemmaConcatAssociativity!3040 (_1!37119 lt!2474644) (_1!37119 lt!2474658) (_2!37119 lt!2474658)))))

(declare-fun b!6936464 () Bool)

(assert (=> b!6936464 (= e!4173207 tp_is_empty!43143)))

(declare-fun b!6936465 () Bool)

(declare-fun res!2829257 () Bool)

(assert (=> b!6936465 (=> res!2829257 e!4173206)))

(assert (=> b!6936465 (= res!2829257 (not (validRegex!8665 lt!2474666)))))

(declare-fun b!6936466 () Bool)

(assert (=> b!6936466 (= e!4173202 tp_is_empty!43143)))

(assert (=> b!6936467 (= e!4173200 e!4173208)))

(declare-fun res!2829255 () Bool)

(assert (=> b!6936467 (=> res!2829255 e!4173208)))

(assert (=> b!6936467 (= res!2829255 (not (matchR!9098 r2!6280 (_1!37119 lt!2474658))))))

(declare-fun lt!2474651 () Option!16728)

(declare-fun get!23375 (Option!16728) tuple2!67632)

(assert (=> b!6936467 (= lt!2474658 (get!23375 lt!2474651))))

(assert (=> b!6936467 (= (Exists!3959 lambda!394997) (Exists!3959 lambda!394998))))

(declare-fun lt!2474660 () Unit!160642)

(assert (=> b!6936467 (= lt!2474660 (lemmaExistCutMatchRandMatchRSpecEquivalent!2420 r2!6280 r3!135 (_2!37119 lt!2474644)))))

(assert (=> b!6936467 (= (isDefined!13429 lt!2474651) (Exists!3959 lambda!394997))))

(assert (=> b!6936467 (= lt!2474651 (findConcatSeparation!3142 r2!6280 r3!135 Nil!66588 (_2!37119 lt!2474644) (_2!37119 lt!2474644)))))

(declare-fun lt!2474650 () Unit!160642)

(assert (=> b!6936467 (= lt!2474650 (lemmaFindConcatSeparationEquivalentToExists!2900 r2!6280 r3!135 (_2!37119 lt!2474644)))))

(assert (=> b!6936467 (matchRSpec!4016 lt!2474648 (_2!37119 lt!2474644))))

(declare-fun lt!2474643 () Unit!160642)

(assert (=> b!6936467 (= lt!2474643 (mainMatchTheorem!4016 lt!2474648 (_2!37119 lt!2474644)))))

(assert (=> b!6936468 (= e!4173209 e!4173200)))

(declare-fun res!2829260 () Bool)

(assert (=> b!6936468 (=> res!2829260 e!4173200)))

(declare-fun lt!2474655 () Bool)

(assert (=> b!6936468 (= res!2829260 (not lt!2474655))))

(assert (=> b!6936468 (= lt!2474655 (matchRSpec!4016 r1!6342 (_1!37119 lt!2474644)))))

(assert (=> b!6936468 (= lt!2474655 (matchR!9098 r1!6342 (_1!37119 lt!2474644)))))

(declare-fun lt!2474654 () Unit!160642)

(assert (=> b!6936468 (= lt!2474654 (mainMatchTheorem!4016 r1!6342 (_1!37119 lt!2474644)))))

(assert (=> b!6936468 (= lt!2474644 (get!23375 lt!2474669))))

(assert (=> b!6936468 (= (Exists!3959 lambda!394995) (Exists!3959 lambda!394996))))

(declare-fun lt!2474659 () Unit!160642)

(assert (=> b!6936468 (= lt!2474659 (lemmaExistCutMatchRandMatchRSpecEquivalent!2420 r1!6342 lt!2474648 s!14361))))

(assert (=> b!6936468 (Exists!3959 lambda!394995)))

(declare-fun lt!2474653 () Unit!160642)

(assert (=> b!6936468 (= lt!2474653 (lemmaFindConcatSeparationEquivalentToExists!2900 r1!6342 lt!2474648 s!14361))))

(declare-fun b!6936469 () Bool)

(assert (=> b!6936469 (= e!4173208 e!4173204)))

(declare-fun res!2829251 () Bool)

(assert (=> b!6936469 (=> res!2829251 e!4173204)))

(assert (=> b!6936469 (= res!2829251 (not (= lt!2474662 s!14361)))))

(assert (=> b!6936469 (= lt!2474662 (++!14998 (_1!37119 lt!2474644) (++!14998 (_1!37119 lt!2474658) (_2!37119 lt!2474658))))))

(assert (=> b!6936469 (matchRSpec!4016 r3!135 (_2!37119 lt!2474658))))

(declare-fun lt!2474668 () Unit!160642)

(assert (=> b!6936469 (= lt!2474668 (mainMatchTheorem!4016 r3!135 (_2!37119 lt!2474658)))))

(assert (=> b!6936469 (matchRSpec!4016 r2!6280 (_1!37119 lt!2474658))))

(declare-fun lt!2474671 () Unit!160642)

(assert (=> b!6936469 (= lt!2474671 (mainMatchTheorem!4016 r2!6280 (_1!37119 lt!2474658)))))

(declare-fun b!6936470 () Bool)

(declare-fun tp!1912183 () Bool)

(assert (=> b!6936470 (= e!4173202 tp!1912183)))

(declare-fun b!6936471 () Bool)

(declare-fun tp!1912194 () Bool)

(declare-fun tp!1912190 () Bool)

(assert (=> b!6936471 (= e!4173201 (and tp!1912194 tp!1912190))))

(declare-fun b!6936472 () Bool)

(declare-fun tp!1912187 () Bool)

(assert (=> b!6936472 (= e!4173207 tp!1912187)))

(declare-fun b!6936473 () Bool)

(declare-fun tp!1912191 () Bool)

(assert (=> b!6936473 (= e!4173201 tp!1912191)))

(declare-fun b!6936474 () Bool)

(assert (=> b!6936474 (= e!4173203 (not e!4173205))))

(declare-fun res!2829254 () Bool)

(assert (=> b!6936474 (=> res!2829254 e!4173205)))

(declare-fun lt!2474649 () Bool)

(assert (=> b!6936474 (= res!2829254 lt!2474649)))

(declare-fun lt!2474652 () Regex!16959)

(assert (=> b!6936474 (= (matchR!9098 lt!2474652 s!14361) (matchRSpec!4016 lt!2474652 s!14361))))

(declare-fun lt!2474667 () Unit!160642)

(assert (=> b!6936474 (= lt!2474667 (mainMatchTheorem!4016 lt!2474652 s!14361))))

(declare-fun lt!2474657 () Regex!16959)

(assert (=> b!6936474 (= lt!2474649 (matchRSpec!4016 lt!2474657 s!14361))))

(assert (=> b!6936474 (= lt!2474649 (matchR!9098 lt!2474657 s!14361))))

(declare-fun lt!2474642 () Unit!160642)

(assert (=> b!6936474 (= lt!2474642 (mainMatchTheorem!4016 lt!2474657 s!14361))))

(assert (=> b!6936474 (= lt!2474652 (Concat!25804 r1!6342 lt!2474648))))

(assert (=> b!6936474 (= lt!2474648 (Concat!25804 r2!6280 r3!135))))

(assert (=> b!6936474 (= lt!2474657 (Concat!25804 lt!2474666 r3!135))))

(assert (=> b!6936474 (= lt!2474666 (Concat!25804 r1!6342 r2!6280))))

(declare-fun b!6936475 () Bool)

(declare-fun tp!1912181 () Bool)

(declare-fun tp!1912188 () Bool)

(assert (=> b!6936475 (= e!4173207 (and tp!1912181 tp!1912188))))

(assert (= (and start!666350 res!2829252) b!6936456))

(assert (= (and b!6936456 res!2829249) b!6936458))

(assert (= (and b!6936458 res!2829256) b!6936474))

(assert (= (and b!6936474 (not res!2829254)) b!6936453))

(assert (= (and b!6936453 (not res!2829259)) b!6936468))

(assert (= (and b!6936468 (not res!2829260)) b!6936454))

(assert (= (and b!6936454 (not res!2829253)) b!6936467))

(assert (= (and b!6936467 (not res!2829255)) b!6936451))

(assert (= (and b!6936451 (not res!2829250)) b!6936469))

(assert (= (and b!6936469 (not res!2829251)) b!6936463))

(assert (= (and b!6936463 (not res!2829258)) b!6936465))

(assert (= (and b!6936465 (not res!2829257)) b!6936459))

(get-info :version)

(assert (= (and start!666350 ((_ is ElementMatch!16959) r1!6342)) b!6936464))

(assert (= (and start!666350 ((_ is Concat!25804) r1!6342)) b!6936475))

(assert (= (and start!666350 ((_ is Star!16959) r1!6342)) b!6936472))

(assert (= (and start!666350 ((_ is Union!16959) r1!6342)) b!6936455))

(assert (= (and start!666350 ((_ is ElementMatch!16959) r2!6280)) b!6936452))

(assert (= (and start!666350 ((_ is Concat!25804) r2!6280)) b!6936471))

(assert (= (and start!666350 ((_ is Star!16959) r2!6280)) b!6936473))

(assert (= (and start!666350 ((_ is Union!16959) r2!6280)) b!6936462))

(assert (= (and start!666350 ((_ is ElementMatch!16959) r3!135)) b!6936466))

(assert (= (and start!666350 ((_ is Concat!25804) r3!135)) b!6936460))

(assert (= (and start!666350 ((_ is Star!16959) r3!135)) b!6936470))

(assert (= (and start!666350 ((_ is Union!16959) r3!135)) b!6936461))

(assert (= (and start!666350 ((_ is Cons!66588) s!14361)) b!6936457))

(declare-fun m!7642272 () Bool)

(assert (=> b!6936467 m!7642272))

(declare-fun m!7642274 () Bool)

(assert (=> b!6936467 m!7642274))

(declare-fun m!7642276 () Bool)

(assert (=> b!6936467 m!7642276))

(declare-fun m!7642278 () Bool)

(assert (=> b!6936467 m!7642278))

(declare-fun m!7642280 () Bool)

(assert (=> b!6936467 m!7642280))

(declare-fun m!7642282 () Bool)

(assert (=> b!6936467 m!7642282))

(declare-fun m!7642284 () Bool)

(assert (=> b!6936467 m!7642284))

(declare-fun m!7642286 () Bool)

(assert (=> b!6936467 m!7642286))

(assert (=> b!6936467 m!7642276))

(declare-fun m!7642288 () Bool)

(assert (=> b!6936467 m!7642288))

(declare-fun m!7642290 () Bool)

(assert (=> b!6936467 m!7642290))

(declare-fun m!7642292 () Bool)

(assert (=> b!6936458 m!7642292))

(declare-fun m!7642294 () Bool)

(assert (=> b!6936474 m!7642294))

(declare-fun m!7642296 () Bool)

(assert (=> b!6936474 m!7642296))

(declare-fun m!7642298 () Bool)

(assert (=> b!6936474 m!7642298))

(declare-fun m!7642300 () Bool)

(assert (=> b!6936474 m!7642300))

(declare-fun m!7642302 () Bool)

(assert (=> b!6936474 m!7642302))

(declare-fun m!7642304 () Bool)

(assert (=> b!6936474 m!7642304))

(declare-fun m!7642306 () Bool)

(assert (=> b!6936451 m!7642306))

(declare-fun m!7642308 () Bool)

(assert (=> b!6936469 m!7642308))

(declare-fun m!7642310 () Bool)

(assert (=> b!6936469 m!7642310))

(declare-fun m!7642312 () Bool)

(assert (=> b!6936469 m!7642312))

(declare-fun m!7642314 () Bool)

(assert (=> b!6936469 m!7642314))

(declare-fun m!7642316 () Bool)

(assert (=> b!6936469 m!7642316))

(declare-fun m!7642318 () Bool)

(assert (=> b!6936469 m!7642318))

(assert (=> b!6936469 m!7642310))

(declare-fun m!7642320 () Bool)

(assert (=> b!6936459 m!7642320))

(declare-fun m!7642322 () Bool)

(assert (=> b!6936465 m!7642322))

(declare-fun m!7642324 () Bool)

(assert (=> b!6936456 m!7642324))

(declare-fun m!7642326 () Bool)

(assert (=> start!666350 m!7642326))

(declare-fun m!7642328 () Bool)

(assert (=> b!6936468 m!7642328))

(declare-fun m!7642330 () Bool)

(assert (=> b!6936468 m!7642330))

(assert (=> b!6936468 m!7642328))

(declare-fun m!7642332 () Bool)

(assert (=> b!6936468 m!7642332))

(declare-fun m!7642334 () Bool)

(assert (=> b!6936468 m!7642334))

(declare-fun m!7642336 () Bool)

(assert (=> b!6936468 m!7642336))

(declare-fun m!7642338 () Bool)

(assert (=> b!6936468 m!7642338))

(declare-fun m!7642340 () Bool)

(assert (=> b!6936468 m!7642340))

(declare-fun m!7642342 () Bool)

(assert (=> b!6936468 m!7642342))

(declare-fun m!7642344 () Bool)

(assert (=> b!6936453 m!7642344))

(declare-fun m!7642346 () Bool)

(assert (=> b!6936453 m!7642346))

(declare-fun m!7642348 () Bool)

(assert (=> b!6936454 m!7642348))

(declare-fun m!7642350 () Bool)

(assert (=> b!6936463 m!7642350))

(declare-fun m!7642352 () Bool)

(assert (=> b!6936463 m!7642352))

(declare-fun m!7642354 () Bool)

(assert (=> b!6936463 m!7642354))

(declare-fun m!7642356 () Bool)

(assert (=> b!6936463 m!7642356))

(declare-fun m!7642358 () Bool)

(assert (=> b!6936463 m!7642358))

(declare-fun m!7642360 () Bool)

(assert (=> b!6936463 m!7642360))

(declare-fun m!7642362 () Bool)

(assert (=> b!6936463 m!7642362))

(declare-fun m!7642364 () Bool)

(assert (=> b!6936463 m!7642364))

(declare-fun m!7642366 () Bool)

(assert (=> b!6936463 m!7642366))

(declare-fun m!7642368 () Bool)

(assert (=> b!6936463 m!7642368))

(declare-fun m!7642370 () Bool)

(assert (=> b!6936463 m!7642370))

(declare-fun m!7642372 () Bool)

(assert (=> b!6936463 m!7642372))

(assert (=> b!6936463 m!7642350))

(declare-fun m!7642374 () Bool)

(assert (=> b!6936463 m!7642374))

(assert (=> b!6936463 m!7642356))

(check-sat (not b!6936468) (not b!6936465) (not b!6936475) (not b!6936473) (not b!6936467) (not b!6936469) (not b!6936451) (not b!6936456) (not b!6936459) (not b!6936462) (not b!6936461) (not b!6936470) (not b!6936453) (not b!6936472) (not b!6936460) (not b!6936455) (not b!6936457) (not b!6936474) tp_is_empty!43143 (not b!6936471) (not b!6936463) (not start!666350) (not b!6936458) (not b!6936454))
(check-sat)
(get-model)

(declare-fun bm!630209 () Bool)

(declare-fun call!630214 () Bool)

(declare-fun isEmpty!38853 (List!66712) Bool)

(assert (=> bm!630209 (= call!630214 (isEmpty!38853 lt!2474663))))

(declare-fun b!6936528 () Bool)

(declare-fun res!2829288 () Bool)

(declare-fun e!4173243 () Bool)

(assert (=> b!6936528 (=> (not res!2829288) (not e!4173243))))

(declare-fun tail!12956 (List!66712) List!66712)

(assert (=> b!6936528 (= res!2829288 (isEmpty!38853 (tail!12956 lt!2474663)))))

(declare-fun b!6936529 () Bool)

(declare-fun res!2829286 () Bool)

(declare-fun e!4173245 () Bool)

(assert (=> b!6936529 (=> res!2829286 e!4173245)))

(assert (=> b!6936529 (= res!2829286 (not ((_ is ElementMatch!16959) lt!2474666)))))

(declare-fun e!4173244 () Bool)

(assert (=> b!6936529 (= e!4173244 e!4173245)))

(declare-fun b!6936530 () Bool)

(declare-fun e!4173242 () Bool)

(declare-fun derivativeStep!5451 (Regex!16959 C!34188) Regex!16959)

(declare-fun head!13904 (List!66712) C!34188)

(assert (=> b!6936530 (= e!4173242 (matchR!9098 (derivativeStep!5451 lt!2474666 (head!13904 lt!2474663)) (tail!12956 lt!2474663)))))

(declare-fun b!6936531 () Bool)

(declare-fun e!4173235 () Bool)

(assert (=> b!6936531 (= e!4173245 e!4173235)))

(declare-fun res!2829293 () Bool)

(assert (=> b!6936531 (=> (not res!2829293) (not e!4173235))))

(declare-fun lt!2474674 () Bool)

(assert (=> b!6936531 (= res!2829293 (not lt!2474674))))

(declare-fun b!6936532 () Bool)

(declare-fun res!2829287 () Bool)

(assert (=> b!6936532 (=> (not res!2829287) (not e!4173243))))

(assert (=> b!6936532 (= res!2829287 (not call!630214))))

(declare-fun b!6936533 () Bool)

(assert (=> b!6936533 (= e!4173243 (= (head!13904 lt!2474663) (c!1287149 lt!2474666)))))

(declare-fun b!6936534 () Bool)

(declare-fun e!4173239 () Bool)

(assert (=> b!6936534 (= e!4173239 e!4173244)))

(declare-fun c!1287160 () Bool)

(assert (=> b!6936534 (= c!1287160 ((_ is EmptyLang!16959) lt!2474666))))

(declare-fun b!6936535 () Bool)

(declare-fun e!4173238 () Bool)

(assert (=> b!6936535 (= e!4173235 e!4173238)))

(declare-fun res!2829294 () Bool)

(assert (=> b!6936535 (=> res!2829294 e!4173238)))

(assert (=> b!6936535 (= res!2829294 call!630214)))

(declare-fun b!6936537 () Bool)

(declare-fun nullable!6776 (Regex!16959) Bool)

(assert (=> b!6936537 (= e!4173242 (nullable!6776 lt!2474666))))

(declare-fun b!6936538 () Bool)

(assert (=> b!6936538 (= e!4173244 (not lt!2474674))))

(declare-fun b!6936539 () Bool)

(assert (=> b!6936539 (= e!4173239 (= lt!2474674 call!630214))))

(declare-fun b!6936540 () Bool)

(declare-fun res!2829283 () Bool)

(assert (=> b!6936540 (=> res!2829283 e!4173245)))

(assert (=> b!6936540 (= res!2829283 e!4173243)))

(declare-fun res!2829291 () Bool)

(assert (=> b!6936540 (=> (not res!2829291) (not e!4173243))))

(assert (=> b!6936540 (= res!2829291 lt!2474674)))

(declare-fun b!6936541 () Bool)

(assert (=> b!6936541 (= e!4173238 (not (= (head!13904 lt!2474663) (c!1287149 lt!2474666))))))

(declare-fun b!6936536 () Bool)

(declare-fun res!2829292 () Bool)

(assert (=> b!6936536 (=> res!2829292 e!4173238)))

(assert (=> b!6936536 (= res!2829292 (not (isEmpty!38853 (tail!12956 lt!2474663))))))

(declare-fun d!2166871 () Bool)

(assert (=> d!2166871 e!4173239))

(declare-fun c!1287161 () Bool)

(assert (=> d!2166871 (= c!1287161 ((_ is EmptyExpr!16959) lt!2474666))))

(assert (=> d!2166871 (= lt!2474674 e!4173242)))

(declare-fun c!1287162 () Bool)

(assert (=> d!2166871 (= c!1287162 (isEmpty!38853 lt!2474663))))

(assert (=> d!2166871 (validRegex!8665 lt!2474666)))

(assert (=> d!2166871 (= (matchR!9098 lt!2474666 lt!2474663) lt!2474674)))

(assert (= (and d!2166871 c!1287162) b!6936537))

(assert (= (and d!2166871 (not c!1287162)) b!6936530))

(assert (= (and d!2166871 c!1287161) b!6936539))

(assert (= (and d!2166871 (not c!1287161)) b!6936534))

(assert (= (and b!6936534 c!1287160) b!6936538))

(assert (= (and b!6936534 (not c!1287160)) b!6936529))

(assert (= (and b!6936529 (not res!2829286)) b!6936540))

(assert (= (and b!6936540 res!2829291) b!6936532))

(assert (= (and b!6936532 res!2829287) b!6936528))

(assert (= (and b!6936528 res!2829288) b!6936533))

(assert (= (and b!6936540 (not res!2829283)) b!6936531))

(assert (= (and b!6936531 res!2829293) b!6936535))

(assert (= (and b!6936535 (not res!2829294)) b!6936536))

(assert (= (and b!6936536 (not res!2829292)) b!6936541))

(assert (= (or b!6936539 b!6936532 b!6936535) bm!630209))

(declare-fun m!7642376 () Bool)

(assert (=> bm!630209 m!7642376))

(declare-fun m!7642378 () Bool)

(assert (=> b!6936528 m!7642378))

(assert (=> b!6936528 m!7642378))

(declare-fun m!7642380 () Bool)

(assert (=> b!6936528 m!7642380))

(assert (=> d!2166871 m!7642376))

(assert (=> d!2166871 m!7642322))

(declare-fun m!7642382 () Bool)

(assert (=> b!6936530 m!7642382))

(assert (=> b!6936530 m!7642382))

(declare-fun m!7642384 () Bool)

(assert (=> b!6936530 m!7642384))

(assert (=> b!6936530 m!7642378))

(assert (=> b!6936530 m!7642384))

(assert (=> b!6936530 m!7642378))

(declare-fun m!7642386 () Bool)

(assert (=> b!6936530 m!7642386))

(declare-fun m!7642388 () Bool)

(assert (=> b!6936537 m!7642388))

(assert (=> b!6936536 m!7642378))

(assert (=> b!6936536 m!7642378))

(assert (=> b!6936536 m!7642380))

(assert (=> b!6936541 m!7642382))

(assert (=> b!6936533 m!7642382))

(assert (=> b!6936463 d!2166871))

(declare-fun d!2166875 () Bool)

(assert (=> d!2166875 (= (++!14998 (++!14998 (_1!37119 lt!2474644) (_1!37119 lt!2474658)) (_2!37119 lt!2474658)) (++!14998 (_1!37119 lt!2474644) (++!14998 (_1!37119 lt!2474658) (_2!37119 lt!2474658))))))

(declare-fun lt!2474677 () Unit!160642)

(declare-fun choose!51668 (List!66712 List!66712 List!66712) Unit!160642)

(assert (=> d!2166875 (= lt!2474677 (choose!51668 (_1!37119 lt!2474644) (_1!37119 lt!2474658) (_2!37119 lt!2474658)))))

(assert (=> d!2166875 (= (lemmaConcatAssociativity!3040 (_1!37119 lt!2474644) (_1!37119 lt!2474658) (_2!37119 lt!2474658)) lt!2474677)))

(declare-fun bs!1852500 () Bool)

(assert (= bs!1852500 d!2166875))

(assert (=> bs!1852500 m!7642372))

(declare-fun m!7642396 () Bool)

(assert (=> bs!1852500 m!7642396))

(assert (=> bs!1852500 m!7642310))

(assert (=> bs!1852500 m!7642312))

(assert (=> bs!1852500 m!7642372))

(assert (=> bs!1852500 m!7642310))

(declare-fun m!7642398 () Bool)

(assert (=> bs!1852500 m!7642398))

(assert (=> b!6936463 d!2166875))

(declare-fun d!2166879 () Bool)

(declare-fun isEmpty!38855 (Option!16728) Bool)

(assert (=> d!2166879 (= (isDefined!13429 (findConcatSeparation!3142 r1!6342 r2!6280 Nil!66588 lt!2474663 lt!2474663)) (not (isEmpty!38855 (findConcatSeparation!3142 r1!6342 r2!6280 Nil!66588 lt!2474663 lt!2474663))))))

(declare-fun bs!1852501 () Bool)

(assert (= bs!1852501 d!2166879))

(assert (=> bs!1852501 m!7642350))

(declare-fun m!7642400 () Bool)

(assert (=> bs!1852501 m!7642400))

(assert (=> b!6936463 d!2166879))

(declare-fun d!2166881 () Bool)

(assert (=> d!2166881 (= (matchR!9098 lt!2474666 lt!2474663) (matchRSpec!4016 lt!2474666 lt!2474663))))

(declare-fun lt!2474680 () Unit!160642)

(declare-fun choose!51669 (Regex!16959 List!66712) Unit!160642)

(assert (=> d!2166881 (= lt!2474680 (choose!51669 lt!2474666 lt!2474663))))

(assert (=> d!2166881 (validRegex!8665 lt!2474666)))

(assert (=> d!2166881 (= (mainMatchTheorem!4016 lt!2474666 lt!2474663) lt!2474680)))

(declare-fun bs!1852502 () Bool)

(assert (= bs!1852502 d!2166881))

(assert (=> bs!1852502 m!7642362))

(assert (=> bs!1852502 m!7642366))

(declare-fun m!7642402 () Bool)

(assert (=> bs!1852502 m!7642402))

(assert (=> bs!1852502 m!7642322))

(assert (=> b!6936463 d!2166881))

(declare-fun b!6936604 () Bool)

(declare-fun res!2829324 () Bool)

(declare-fun e!4173283 () Bool)

(assert (=> b!6936604 (=> (not res!2829324) (not e!4173283))))

(declare-fun lt!2474686 () List!66712)

(declare-fun size!40795 (List!66712) Int)

(assert (=> b!6936604 (= res!2829324 (= (size!40795 lt!2474686) (+ (size!40795 (_1!37119 lt!2474644)) (size!40795 (_1!37119 lt!2474658)))))))

(declare-fun b!6936602 () Bool)

(declare-fun e!4173282 () List!66712)

(assert (=> b!6936602 (= e!4173282 (_1!37119 lt!2474658))))

(declare-fun d!2166883 () Bool)

(assert (=> d!2166883 e!4173283))

(declare-fun res!2829323 () Bool)

(assert (=> d!2166883 (=> (not res!2829323) (not e!4173283))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13098 (List!66712) (InoxSet C!34188))

(assert (=> d!2166883 (= res!2829323 (= (content!13098 lt!2474686) ((_ map or) (content!13098 (_1!37119 lt!2474644)) (content!13098 (_1!37119 lt!2474658)))))))

(assert (=> d!2166883 (= lt!2474686 e!4173282)))

(declare-fun c!1287179 () Bool)

(assert (=> d!2166883 (= c!1287179 ((_ is Nil!66588) (_1!37119 lt!2474644)))))

(assert (=> d!2166883 (= (++!14998 (_1!37119 lt!2474644) (_1!37119 lt!2474658)) lt!2474686)))

(declare-fun b!6936605 () Bool)

(assert (=> b!6936605 (= e!4173283 (or (not (= (_1!37119 lt!2474658) Nil!66588)) (= lt!2474686 (_1!37119 lt!2474644))))))

(declare-fun b!6936603 () Bool)

(assert (=> b!6936603 (= e!4173282 (Cons!66588 (h!73036 (_1!37119 lt!2474644)) (++!14998 (t!380455 (_1!37119 lt!2474644)) (_1!37119 lt!2474658))))))

(assert (= (and d!2166883 c!1287179) b!6936602))

(assert (= (and d!2166883 (not c!1287179)) b!6936603))

(assert (= (and d!2166883 res!2829323) b!6936604))

(assert (= (and b!6936604 res!2829324) b!6936605))

(declare-fun m!7642418 () Bool)

(assert (=> b!6936604 m!7642418))

(declare-fun m!7642420 () Bool)

(assert (=> b!6936604 m!7642420))

(declare-fun m!7642422 () Bool)

(assert (=> b!6936604 m!7642422))

(declare-fun m!7642424 () Bool)

(assert (=> d!2166883 m!7642424))

(declare-fun m!7642426 () Bool)

(assert (=> d!2166883 m!7642426))

(declare-fun m!7642428 () Bool)

(assert (=> d!2166883 m!7642428))

(declare-fun m!7642430 () Bool)

(assert (=> b!6936603 m!7642430))

(assert (=> b!6936463 d!2166883))

(declare-fun bs!1852527 () Bool)

(declare-fun b!6936696 () Bool)

(assert (= bs!1852527 (and b!6936696 b!6936467)))

(declare-fun lambda!395020 () Int)

(assert (=> bs!1852527 (not (= lambda!395020 lambda!394997))))

(assert (=> bs!1852527 (not (= lambda!395020 lambda!394998))))

(declare-fun bs!1852528 () Bool)

(assert (= bs!1852528 (and b!6936696 b!6936463)))

(assert (=> bs!1852528 (not (= lambda!395020 lambda!394999))))

(assert (=> bs!1852528 (not (= lambda!395020 lambda!395000))))

(declare-fun bs!1852529 () Bool)

(assert (= bs!1852529 (and b!6936696 b!6936468)))

(assert (=> bs!1852529 (not (= lambda!395020 lambda!394995))))

(assert (=> bs!1852529 (not (= lambda!395020 lambda!394996))))

(assert (=> b!6936696 true))

(assert (=> b!6936696 true))

(declare-fun bs!1852530 () Bool)

(declare-fun b!6936698 () Bool)

(assert (= bs!1852530 (and b!6936698 b!6936467)))

(declare-fun lambda!395021 () Int)

(assert (=> bs!1852530 (not (= lambda!395021 lambda!394997))))

(assert (=> bs!1852530 (= (and (= lt!2474663 (_2!37119 lt!2474644)) (= (regOne!34430 lt!2474666) r2!6280) (= (regTwo!34430 lt!2474666) r3!135)) (= lambda!395021 lambda!394998))))

(declare-fun bs!1852531 () Bool)

(assert (= bs!1852531 (and b!6936698 b!6936463)))

(assert (=> bs!1852531 (not (= lambda!395021 lambda!394999))))

(assert (=> bs!1852531 (= (and (= (regOne!34430 lt!2474666) r1!6342) (= (regTwo!34430 lt!2474666) r2!6280)) (= lambda!395021 lambda!395000))))

(declare-fun bs!1852532 () Bool)

(assert (= bs!1852532 (and b!6936698 b!6936468)))

(assert (=> bs!1852532 (not (= lambda!395021 lambda!394995))))

(declare-fun bs!1852533 () Bool)

(assert (= bs!1852533 (and b!6936698 b!6936696)))

(assert (=> bs!1852533 (not (= lambda!395021 lambda!395020))))

(assert (=> bs!1852532 (= (and (= lt!2474663 s!14361) (= (regOne!34430 lt!2474666) r1!6342) (= (regTwo!34430 lt!2474666) lt!2474648)) (= lambda!395021 lambda!394996))))

(assert (=> b!6936698 true))

(assert (=> b!6936698 true))

(declare-fun b!6936692 () Bool)

(declare-fun c!1287198 () Bool)

(assert (=> b!6936692 (= c!1287198 ((_ is Union!16959) lt!2474666))))

(declare-fun e!4173335 () Bool)

(declare-fun e!4173329 () Bool)

(assert (=> b!6936692 (= e!4173335 e!4173329)))

(declare-fun b!6936693 () Bool)

(assert (=> b!6936693 (= e!4173335 (= lt!2474663 (Cons!66588 (c!1287149 lt!2474666) Nil!66588)))))

(declare-fun d!2166895 () Bool)

(declare-fun c!1287197 () Bool)

(assert (=> d!2166895 (= c!1287197 ((_ is EmptyExpr!16959) lt!2474666))))

(declare-fun e!4173330 () Bool)

(assert (=> d!2166895 (= (matchRSpec!4016 lt!2474666 lt!2474663) e!4173330)))

(declare-fun b!6936694 () Bool)

(declare-fun e!4173331 () Bool)

(assert (=> b!6936694 (= e!4173329 e!4173331)))

(declare-fun c!1287199 () Bool)

(assert (=> b!6936694 (= c!1287199 ((_ is Star!16959) lt!2474666))))

(declare-fun b!6936695 () Bool)

(declare-fun e!4173334 () Bool)

(assert (=> b!6936695 (= e!4173334 (matchRSpec!4016 (regTwo!34431 lt!2474666) lt!2474663))))

(declare-fun e!4173333 () Bool)

(declare-fun call!630237 () Bool)

(assert (=> b!6936696 (= e!4173333 call!630237)))

(declare-fun b!6936697 () Bool)

(assert (=> b!6936697 (= e!4173329 e!4173334)))

(declare-fun res!2829378 () Bool)

(assert (=> b!6936697 (= res!2829378 (matchRSpec!4016 (regOne!34431 lt!2474666) lt!2474663))))

(assert (=> b!6936697 (=> res!2829378 e!4173334)))

(assert (=> b!6936698 (= e!4173331 call!630237)))

(declare-fun b!6936699 () Bool)

(declare-fun call!630238 () Bool)

(assert (=> b!6936699 (= e!4173330 call!630238)))

(declare-fun b!6936700 () Bool)

(declare-fun res!2829377 () Bool)

(assert (=> b!6936700 (=> res!2829377 e!4173333)))

(assert (=> b!6936700 (= res!2829377 call!630238)))

(assert (=> b!6936700 (= e!4173331 e!4173333)))

(declare-fun bm!630232 () Bool)

(assert (=> bm!630232 (= call!630237 (Exists!3959 (ite c!1287199 lambda!395020 lambda!395021)))))

(declare-fun b!6936701 () Bool)

(declare-fun c!1287200 () Bool)

(assert (=> b!6936701 (= c!1287200 ((_ is ElementMatch!16959) lt!2474666))))

(declare-fun e!4173332 () Bool)

(assert (=> b!6936701 (= e!4173332 e!4173335)))

(declare-fun bm!630233 () Bool)

(assert (=> bm!630233 (= call!630238 (isEmpty!38853 lt!2474663))))

(declare-fun b!6936702 () Bool)

(assert (=> b!6936702 (= e!4173330 e!4173332)))

(declare-fun res!2829379 () Bool)

(assert (=> b!6936702 (= res!2829379 (not ((_ is EmptyLang!16959) lt!2474666)))))

(assert (=> b!6936702 (=> (not res!2829379) (not e!4173332))))

(assert (= (and d!2166895 c!1287197) b!6936699))

(assert (= (and d!2166895 (not c!1287197)) b!6936702))

(assert (= (and b!6936702 res!2829379) b!6936701))

(assert (= (and b!6936701 c!1287200) b!6936693))

(assert (= (and b!6936701 (not c!1287200)) b!6936692))

(assert (= (and b!6936692 c!1287198) b!6936697))

(assert (= (and b!6936692 (not c!1287198)) b!6936694))

(assert (= (and b!6936697 (not res!2829378)) b!6936695))

(assert (= (and b!6936694 c!1287199) b!6936700))

(assert (= (and b!6936694 (not c!1287199)) b!6936698))

(assert (= (and b!6936700 (not res!2829377)) b!6936696))

(assert (= (or b!6936696 b!6936698) bm!630232))

(assert (= (or b!6936699 b!6936700) bm!630233))

(declare-fun m!7642458 () Bool)

(assert (=> b!6936695 m!7642458))

(declare-fun m!7642460 () Bool)

(assert (=> b!6936697 m!7642460))

(declare-fun m!7642462 () Bool)

(assert (=> bm!630232 m!7642462))

(assert (=> bm!630233 m!7642376))

(assert (=> b!6936463 d!2166895))

(declare-fun b!6936804 () Bool)

(declare-fun res!2829429 () Bool)

(declare-fun e!4173397 () Bool)

(assert (=> b!6936804 (=> (not res!2829429) (not e!4173397))))

(declare-fun lt!2474718 () Option!16728)

(assert (=> b!6936804 (= res!2829429 (matchR!9098 r1!6342 (_1!37119 (get!23375 lt!2474718))))))

(declare-fun d!2166905 () Bool)

(declare-fun e!4173400 () Bool)

(assert (=> d!2166905 e!4173400))

(declare-fun res!2829431 () Bool)

(assert (=> d!2166905 (=> res!2829431 e!4173400)))

(assert (=> d!2166905 (= res!2829431 e!4173397)))

(declare-fun res!2829430 () Bool)

(assert (=> d!2166905 (=> (not res!2829430) (not e!4173397))))

(assert (=> d!2166905 (= res!2829430 (isDefined!13429 lt!2474718))))

(declare-fun e!4173401 () Option!16728)

(assert (=> d!2166905 (= lt!2474718 e!4173401)))

(declare-fun c!1287228 () Bool)

(declare-fun e!4173399 () Bool)

(assert (=> d!2166905 (= c!1287228 e!4173399)))

(declare-fun res!2829432 () Bool)

(assert (=> d!2166905 (=> (not res!2829432) (not e!4173399))))

(assert (=> d!2166905 (= res!2829432 (matchR!9098 r1!6342 Nil!66588))))

(assert (=> d!2166905 (validRegex!8665 r1!6342)))

(assert (=> d!2166905 (= (findConcatSeparation!3142 r1!6342 r2!6280 Nil!66588 lt!2474663 lt!2474663) lt!2474718)))

(declare-fun b!6936805 () Bool)

(assert (=> b!6936805 (= e!4173401 (Some!16727 (tuple2!67633 Nil!66588 lt!2474663)))))

(declare-fun b!6936806 () Bool)

(declare-fun res!2829433 () Bool)

(assert (=> b!6936806 (=> (not res!2829433) (not e!4173397))))

(assert (=> b!6936806 (= res!2829433 (matchR!9098 r2!6280 (_2!37119 (get!23375 lt!2474718))))))

(declare-fun b!6936807 () Bool)

(declare-fun e!4173398 () Option!16728)

(assert (=> b!6936807 (= e!4173401 e!4173398)))

(declare-fun c!1287227 () Bool)

(assert (=> b!6936807 (= c!1287227 ((_ is Nil!66588) lt!2474663))))

(declare-fun b!6936808 () Bool)

(assert (=> b!6936808 (= e!4173397 (= (++!14998 (_1!37119 (get!23375 lt!2474718)) (_2!37119 (get!23375 lt!2474718))) lt!2474663))))

(declare-fun b!6936809 () Bool)

(declare-fun lt!2474719 () Unit!160642)

(declare-fun lt!2474717 () Unit!160642)

(assert (=> b!6936809 (= lt!2474719 lt!2474717)))

(assert (=> b!6936809 (= (++!14998 (++!14998 Nil!66588 (Cons!66588 (h!73036 lt!2474663) Nil!66588)) (t!380455 lt!2474663)) lt!2474663)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2855 (List!66712 C!34188 List!66712 List!66712) Unit!160642)

(assert (=> b!6936809 (= lt!2474717 (lemmaMoveElementToOtherListKeepsConcatEq!2855 Nil!66588 (h!73036 lt!2474663) (t!380455 lt!2474663) lt!2474663))))

(assert (=> b!6936809 (= e!4173398 (findConcatSeparation!3142 r1!6342 r2!6280 (++!14998 Nil!66588 (Cons!66588 (h!73036 lt!2474663) Nil!66588)) (t!380455 lt!2474663) lt!2474663))))

(declare-fun b!6936810 () Bool)

(assert (=> b!6936810 (= e!4173398 None!16727)))

(declare-fun b!6936811 () Bool)

(assert (=> b!6936811 (= e!4173400 (not (isDefined!13429 lt!2474718)))))

(declare-fun b!6936812 () Bool)

(assert (=> b!6936812 (= e!4173399 (matchR!9098 r2!6280 lt!2474663))))

(assert (= (and d!2166905 res!2829432) b!6936812))

(assert (= (and d!2166905 c!1287228) b!6936805))

(assert (= (and d!2166905 (not c!1287228)) b!6936807))

(assert (= (and b!6936807 c!1287227) b!6936810))

(assert (= (and b!6936807 (not c!1287227)) b!6936809))

(assert (= (and d!2166905 res!2829430) b!6936804))

(assert (= (and b!6936804 res!2829429) b!6936806))

(assert (= (and b!6936806 res!2829433) b!6936808))

(assert (= (and d!2166905 (not res!2829431)) b!6936811))

(declare-fun m!7642546 () Bool)

(assert (=> d!2166905 m!7642546))

(declare-fun m!7642548 () Bool)

(assert (=> d!2166905 m!7642548))

(assert (=> d!2166905 m!7642326))

(declare-fun m!7642550 () Bool)

(assert (=> b!6936809 m!7642550))

(assert (=> b!6936809 m!7642550))

(declare-fun m!7642552 () Bool)

(assert (=> b!6936809 m!7642552))

(declare-fun m!7642554 () Bool)

(assert (=> b!6936809 m!7642554))

(assert (=> b!6936809 m!7642550))

(declare-fun m!7642556 () Bool)

(assert (=> b!6936809 m!7642556))

(declare-fun m!7642558 () Bool)

(assert (=> b!6936808 m!7642558))

(declare-fun m!7642560 () Bool)

(assert (=> b!6936808 m!7642560))

(declare-fun m!7642562 () Bool)

(assert (=> b!6936812 m!7642562))

(assert (=> b!6936806 m!7642558))

(declare-fun m!7642564 () Bool)

(assert (=> b!6936806 m!7642564))

(assert (=> b!6936811 m!7642546))

(assert (=> b!6936804 m!7642558))

(declare-fun m!7642568 () Bool)

(assert (=> b!6936804 m!7642568))

(assert (=> b!6936463 d!2166905))

(declare-fun d!2166925 () Bool)

(assert (=> d!2166925 (isDefined!13429 (findConcatSeparation!3142 r1!6342 r2!6280 Nil!66588 lt!2474663 lt!2474663))))

(declare-fun lt!2474729 () Unit!160642)

(declare-fun choose!51670 (Regex!16959 Regex!16959 List!66712 List!66712 List!66712 List!66712 List!66712) Unit!160642)

(assert (=> d!2166925 (= lt!2474729 (choose!51670 r1!6342 r2!6280 (_1!37119 lt!2474644) (_1!37119 lt!2474658) lt!2474663 Nil!66588 lt!2474663))))

(assert (=> d!2166925 (validRegex!8665 r1!6342)))

(assert (=> d!2166925 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!102 r1!6342 r2!6280 (_1!37119 lt!2474644) (_1!37119 lt!2474658) lt!2474663 Nil!66588 lt!2474663) lt!2474729)))

(declare-fun bs!1852583 () Bool)

(assert (= bs!1852583 d!2166925))

(assert (=> bs!1852583 m!7642350))

(assert (=> bs!1852583 m!7642350))

(assert (=> bs!1852583 m!7642374))

(declare-fun m!7642586 () Bool)

(assert (=> bs!1852583 m!7642586))

(assert (=> bs!1852583 m!7642326))

(assert (=> b!6936463 d!2166925))

(declare-fun bs!1852627 () Bool)

(declare-fun d!2166933 () Bool)

(assert (= bs!1852627 (and d!2166933 b!6936467)))

(declare-fun lambda!395033 () Int)

(assert (=> bs!1852627 (= (and (= lt!2474663 (_2!37119 lt!2474644)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395033 lambda!394997))))

(assert (=> bs!1852627 (not (= lambda!395033 lambda!394998))))

(declare-fun bs!1852628 () Bool)

(assert (= bs!1852628 (and d!2166933 b!6936463)))

(assert (=> bs!1852628 (= lambda!395033 lambda!394999)))

(assert (=> bs!1852628 (not (= lambda!395033 lambda!395000))))

(declare-fun bs!1852629 () Bool)

(assert (= bs!1852629 (and d!2166933 b!6936468)))

(assert (=> bs!1852629 (= (and (= lt!2474663 s!14361) (= r2!6280 lt!2474648)) (= lambda!395033 lambda!394995))))

(declare-fun bs!1852630 () Bool)

(assert (= bs!1852630 (and d!2166933 b!6936696)))

(assert (=> bs!1852630 (not (= lambda!395033 lambda!395020))))

(assert (=> bs!1852629 (not (= lambda!395033 lambda!394996))))

(declare-fun bs!1852631 () Bool)

(assert (= bs!1852631 (and d!2166933 b!6936698)))

(assert (=> bs!1852631 (not (= lambda!395033 lambda!395021))))

(assert (=> d!2166933 true))

(assert (=> d!2166933 true))

(assert (=> d!2166933 true))

(assert (=> d!2166933 (= (isDefined!13429 (findConcatSeparation!3142 r1!6342 r2!6280 Nil!66588 lt!2474663 lt!2474663)) (Exists!3959 lambda!395033))))

(declare-fun lt!2474739 () Unit!160642)

(declare-fun choose!51671 (Regex!16959 Regex!16959 List!66712) Unit!160642)

(assert (=> d!2166933 (= lt!2474739 (choose!51671 r1!6342 r2!6280 lt!2474663))))

(assert (=> d!2166933 (validRegex!8665 r1!6342)))

(assert (=> d!2166933 (= (lemmaFindConcatSeparationEquivalentToExists!2900 r1!6342 r2!6280 lt!2474663) lt!2474739)))

(declare-fun bs!1852632 () Bool)

(assert (= bs!1852632 d!2166933))

(assert (=> bs!1852632 m!7642350))

(assert (=> bs!1852632 m!7642350))

(assert (=> bs!1852632 m!7642374))

(declare-fun m!7642652 () Bool)

(assert (=> bs!1852632 m!7642652))

(declare-fun m!7642654 () Bool)

(assert (=> bs!1852632 m!7642654))

(assert (=> bs!1852632 m!7642326))

(assert (=> b!6936463 d!2166933))

(declare-fun bs!1852694 () Bool)

(declare-fun d!2166953 () Bool)

(assert (= bs!1852694 (and d!2166953 b!6936467)))

(declare-fun lambda!395042 () Int)

(assert (=> bs!1852694 (= (and (= lt!2474663 (_2!37119 lt!2474644)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395042 lambda!394997))))

(assert (=> bs!1852694 (not (= lambda!395042 lambda!394998))))

(declare-fun bs!1852696 () Bool)

(assert (= bs!1852696 (and d!2166953 b!6936463)))

(assert (=> bs!1852696 (= lambda!395042 lambda!394999)))

(assert (=> bs!1852696 (not (= lambda!395042 lambda!395000))))

(declare-fun bs!1852699 () Bool)

(assert (= bs!1852699 (and d!2166953 b!6936468)))

(assert (=> bs!1852699 (= (and (= lt!2474663 s!14361) (= r2!6280 lt!2474648)) (= lambda!395042 lambda!394995))))

(declare-fun bs!1852701 () Bool)

(assert (= bs!1852701 (and d!2166953 b!6936696)))

(assert (=> bs!1852701 (not (= lambda!395042 lambda!395020))))

(declare-fun bs!1852702 () Bool)

(assert (= bs!1852702 (and d!2166953 b!6936698)))

(assert (=> bs!1852702 (not (= lambda!395042 lambda!395021))))

(declare-fun bs!1852704 () Bool)

(assert (= bs!1852704 (and d!2166953 d!2166933)))

(assert (=> bs!1852704 (= lambda!395042 lambda!395033)))

(assert (=> bs!1852699 (not (= lambda!395042 lambda!394996))))

(assert (=> d!2166953 true))

(assert (=> d!2166953 true))

(assert (=> d!2166953 true))

(declare-fun lambda!395043 () Int)

(assert (=> bs!1852694 (not (= lambda!395043 lambda!394997))))

(assert (=> bs!1852694 (= (and (= lt!2474663 (_2!37119 lt!2474644)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395043 lambda!394998))))

(assert (=> bs!1852696 (not (= lambda!395043 lambda!394999))))

(assert (=> bs!1852696 (= lambda!395043 lambda!395000)))

(declare-fun bs!1852709 () Bool)

(assert (= bs!1852709 d!2166953))

(assert (=> bs!1852709 (not (= lambda!395043 lambda!395042))))

(assert (=> bs!1852699 (not (= lambda!395043 lambda!394995))))

(assert (=> bs!1852701 (not (= lambda!395043 lambda!395020))))

(assert (=> bs!1852702 (= (and (= r1!6342 (regOne!34430 lt!2474666)) (= r2!6280 (regTwo!34430 lt!2474666))) (= lambda!395043 lambda!395021))))

(assert (=> bs!1852704 (not (= lambda!395043 lambda!395033))))

(assert (=> bs!1852699 (= (and (= lt!2474663 s!14361) (= r2!6280 lt!2474648)) (= lambda!395043 lambda!394996))))

(assert (=> d!2166953 true))

(assert (=> d!2166953 true))

(assert (=> d!2166953 true))

(assert (=> d!2166953 (= (Exists!3959 lambda!395042) (Exists!3959 lambda!395043))))

(declare-fun lt!2474750 () Unit!160642)

(declare-fun choose!51672 (Regex!16959 Regex!16959 List!66712) Unit!160642)

(assert (=> d!2166953 (= lt!2474750 (choose!51672 r1!6342 r2!6280 lt!2474663))))

(assert (=> d!2166953 (validRegex!8665 r1!6342)))

(assert (=> d!2166953 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2420 r1!6342 r2!6280 lt!2474663) lt!2474750)))

(declare-fun m!7642702 () Bool)

(assert (=> bs!1852709 m!7642702))

(declare-fun m!7642704 () Bool)

(assert (=> bs!1852709 m!7642704))

(declare-fun m!7642706 () Bool)

(assert (=> bs!1852709 m!7642706))

(assert (=> bs!1852709 m!7642326))

(assert (=> b!6936463 d!2166953))

(declare-fun b!6936945 () Bool)

(declare-fun res!2829509 () Bool)

(declare-fun e!4173476 () Bool)

(assert (=> b!6936945 (=> (not res!2829509) (not e!4173476))))

(declare-fun lt!2474752 () List!66712)

(assert (=> b!6936945 (= res!2829509 (= (size!40795 lt!2474752) (+ (size!40795 lt!2474663) (size!40795 (_2!37119 lt!2474658)))))))

(declare-fun b!6936943 () Bool)

(declare-fun e!4173475 () List!66712)

(assert (=> b!6936943 (= e!4173475 (_2!37119 lt!2474658))))

(declare-fun d!2166971 () Bool)

(assert (=> d!2166971 e!4173476))

(declare-fun res!2829508 () Bool)

(assert (=> d!2166971 (=> (not res!2829508) (not e!4173476))))

(assert (=> d!2166971 (= res!2829508 (= (content!13098 lt!2474752) ((_ map or) (content!13098 lt!2474663) (content!13098 (_2!37119 lt!2474658)))))))

(assert (=> d!2166971 (= lt!2474752 e!4173475)))

(declare-fun c!1287257 () Bool)

(assert (=> d!2166971 (= c!1287257 ((_ is Nil!66588) lt!2474663))))

(assert (=> d!2166971 (= (++!14998 lt!2474663 (_2!37119 lt!2474658)) lt!2474752)))

(declare-fun b!6936946 () Bool)

(assert (=> b!6936946 (= e!4173476 (or (not (= (_2!37119 lt!2474658) Nil!66588)) (= lt!2474752 lt!2474663)))))

(declare-fun b!6936944 () Bool)

(assert (=> b!6936944 (= e!4173475 (Cons!66588 (h!73036 lt!2474663) (++!14998 (t!380455 lt!2474663) (_2!37119 lt!2474658))))))

(assert (= (and d!2166971 c!1287257) b!6936943))

(assert (= (and d!2166971 (not c!1287257)) b!6936944))

(assert (= (and d!2166971 res!2829508) b!6936945))

(assert (= (and b!6936945 res!2829509) b!6936946))

(declare-fun m!7642718 () Bool)

(assert (=> b!6936945 m!7642718))

(declare-fun m!7642720 () Bool)

(assert (=> b!6936945 m!7642720))

(declare-fun m!7642724 () Bool)

(assert (=> b!6936945 m!7642724))

(declare-fun m!7642726 () Bool)

(assert (=> d!2166971 m!7642726))

(declare-fun m!7642728 () Bool)

(assert (=> d!2166971 m!7642728))

(declare-fun m!7642730 () Bool)

(assert (=> d!2166971 m!7642730))

(declare-fun m!7642732 () Bool)

(assert (=> b!6936944 m!7642732))

(assert (=> b!6936463 d!2166971))

(declare-fun d!2166975 () Bool)

(declare-fun choose!51673 (Int) Bool)

(assert (=> d!2166975 (= (Exists!3959 lambda!395000) (choose!51673 lambda!395000))))

(declare-fun bs!1852712 () Bool)

(assert (= bs!1852712 d!2166975))

(declare-fun m!7642738 () Bool)

(assert (=> bs!1852712 m!7642738))

(assert (=> b!6936463 d!2166975))

(declare-fun d!2166981 () Bool)

(assert (=> d!2166981 (= (Exists!3959 lambda!394999) (choose!51673 lambda!394999))))

(declare-fun bs!1852713 () Bool)

(assert (= bs!1852713 d!2166981))

(declare-fun m!7642740 () Bool)

(assert (=> bs!1852713 m!7642740))

(assert (=> b!6936463 d!2166981))

(declare-fun bm!630254 () Bool)

(declare-fun call!630259 () Bool)

(assert (=> bm!630254 (= call!630259 (isEmpty!38853 s!14361))))

(declare-fun b!6936956 () Bool)

(declare-fun res!2829518 () Bool)

(declare-fun e!4173486 () Bool)

(assert (=> b!6936956 (=> (not res!2829518) (not e!4173486))))

(assert (=> b!6936956 (= res!2829518 (isEmpty!38853 (tail!12956 s!14361)))))

(declare-fun b!6936957 () Bool)

(declare-fun res!2829516 () Bool)

(declare-fun e!4173488 () Bool)

(assert (=> b!6936957 (=> res!2829516 e!4173488)))

(assert (=> b!6936957 (= res!2829516 (not ((_ is ElementMatch!16959) lt!2474657)))))

(declare-fun e!4173487 () Bool)

(assert (=> b!6936957 (= e!4173487 e!4173488)))

(declare-fun b!6936958 () Bool)

(declare-fun e!4173485 () Bool)

(assert (=> b!6936958 (= e!4173485 (matchR!9098 (derivativeStep!5451 lt!2474657 (head!13904 s!14361)) (tail!12956 s!14361)))))

(declare-fun b!6936959 () Bool)

(declare-fun e!4173482 () Bool)

(assert (=> b!6936959 (= e!4173488 e!4173482)))

(declare-fun res!2829521 () Bool)

(assert (=> b!6936959 (=> (not res!2829521) (not e!4173482))))

(declare-fun lt!2474756 () Bool)

(assert (=> b!6936959 (= res!2829521 (not lt!2474756))))

(declare-fun b!6936960 () Bool)

(declare-fun res!2829517 () Bool)

(assert (=> b!6936960 (=> (not res!2829517) (not e!4173486))))

(assert (=> b!6936960 (= res!2829517 (not call!630259))))

(declare-fun b!6936961 () Bool)

(assert (=> b!6936961 (= e!4173486 (= (head!13904 s!14361) (c!1287149 lt!2474657)))))

(declare-fun b!6936962 () Bool)

(declare-fun e!4173484 () Bool)

(assert (=> b!6936962 (= e!4173484 e!4173487)))

(declare-fun c!1287260 () Bool)

(assert (=> b!6936962 (= c!1287260 ((_ is EmptyLang!16959) lt!2474657))))

(declare-fun b!6936963 () Bool)

(declare-fun e!4173483 () Bool)

(assert (=> b!6936963 (= e!4173482 e!4173483)))

(declare-fun res!2829522 () Bool)

(assert (=> b!6936963 (=> res!2829522 e!4173483)))

(assert (=> b!6936963 (= res!2829522 call!630259)))

(declare-fun b!6936965 () Bool)

(assert (=> b!6936965 (= e!4173485 (nullable!6776 lt!2474657))))

(declare-fun b!6936966 () Bool)

(assert (=> b!6936966 (= e!4173487 (not lt!2474756))))

(declare-fun b!6936967 () Bool)

(assert (=> b!6936967 (= e!4173484 (= lt!2474756 call!630259))))

(declare-fun b!6936968 () Bool)

(declare-fun res!2829515 () Bool)

(assert (=> b!6936968 (=> res!2829515 e!4173488)))

(assert (=> b!6936968 (= res!2829515 e!4173486)))

(declare-fun res!2829519 () Bool)

(assert (=> b!6936968 (=> (not res!2829519) (not e!4173486))))

(assert (=> b!6936968 (= res!2829519 lt!2474756)))

(declare-fun b!6936969 () Bool)

(assert (=> b!6936969 (= e!4173483 (not (= (head!13904 s!14361) (c!1287149 lt!2474657))))))

(declare-fun b!6936964 () Bool)

(declare-fun res!2829520 () Bool)

(assert (=> b!6936964 (=> res!2829520 e!4173483)))

(assert (=> b!6936964 (= res!2829520 (not (isEmpty!38853 (tail!12956 s!14361))))))

(declare-fun d!2166983 () Bool)

(assert (=> d!2166983 e!4173484))

(declare-fun c!1287261 () Bool)

(assert (=> d!2166983 (= c!1287261 ((_ is EmptyExpr!16959) lt!2474657))))

(assert (=> d!2166983 (= lt!2474756 e!4173485)))

(declare-fun c!1287262 () Bool)

(assert (=> d!2166983 (= c!1287262 (isEmpty!38853 s!14361))))

(assert (=> d!2166983 (validRegex!8665 lt!2474657)))

(assert (=> d!2166983 (= (matchR!9098 lt!2474657 s!14361) lt!2474756)))

(assert (= (and d!2166983 c!1287262) b!6936965))

(assert (= (and d!2166983 (not c!1287262)) b!6936958))

(assert (= (and d!2166983 c!1287261) b!6936967))

(assert (= (and d!2166983 (not c!1287261)) b!6936962))

(assert (= (and b!6936962 c!1287260) b!6936966))

(assert (= (and b!6936962 (not c!1287260)) b!6936957))

(assert (= (and b!6936957 (not res!2829516)) b!6936968))

(assert (= (and b!6936968 res!2829519) b!6936960))

(assert (= (and b!6936960 res!2829517) b!6936956))

(assert (= (and b!6936956 res!2829518) b!6936961))

(assert (= (and b!6936968 (not res!2829515)) b!6936959))

(assert (= (and b!6936959 res!2829521) b!6936963))

(assert (= (and b!6936963 (not res!2829522)) b!6936964))

(assert (= (and b!6936964 (not res!2829520)) b!6936969))

(assert (= (or b!6936967 b!6936960 b!6936963) bm!630254))

(declare-fun m!7642752 () Bool)

(assert (=> bm!630254 m!7642752))

(declare-fun m!7642756 () Bool)

(assert (=> b!6936956 m!7642756))

(assert (=> b!6936956 m!7642756))

(declare-fun m!7642758 () Bool)

(assert (=> b!6936956 m!7642758))

(assert (=> d!2166983 m!7642752))

(declare-fun m!7642760 () Bool)

(assert (=> d!2166983 m!7642760))

(declare-fun m!7642762 () Bool)

(assert (=> b!6936958 m!7642762))

(assert (=> b!6936958 m!7642762))

(declare-fun m!7642768 () Bool)

(assert (=> b!6936958 m!7642768))

(assert (=> b!6936958 m!7642756))

(assert (=> b!6936958 m!7642768))

(assert (=> b!6936958 m!7642756))

(declare-fun m!7642772 () Bool)

(assert (=> b!6936958 m!7642772))

(declare-fun m!7642776 () Bool)

(assert (=> b!6936965 m!7642776))

(assert (=> b!6936964 m!7642756))

(assert (=> b!6936964 m!7642756))

(assert (=> b!6936964 m!7642758))

(assert (=> b!6936969 m!7642762))

(assert (=> b!6936961 m!7642762))

(assert (=> b!6936474 d!2166983))

(declare-fun bm!630255 () Bool)

(declare-fun call!630260 () Bool)

(assert (=> bm!630255 (= call!630260 (isEmpty!38853 s!14361))))

(declare-fun b!6936970 () Bool)

(declare-fun res!2829526 () Bool)

(declare-fun e!4173493 () Bool)

(assert (=> b!6936970 (=> (not res!2829526) (not e!4173493))))

(assert (=> b!6936970 (= res!2829526 (isEmpty!38853 (tail!12956 s!14361)))))

(declare-fun b!6936971 () Bool)

(declare-fun res!2829524 () Bool)

(declare-fun e!4173495 () Bool)

(assert (=> b!6936971 (=> res!2829524 e!4173495)))

(assert (=> b!6936971 (= res!2829524 (not ((_ is ElementMatch!16959) lt!2474652)))))

(declare-fun e!4173494 () Bool)

(assert (=> b!6936971 (= e!4173494 e!4173495)))

(declare-fun b!6936972 () Bool)

(declare-fun e!4173492 () Bool)

(assert (=> b!6936972 (= e!4173492 (matchR!9098 (derivativeStep!5451 lt!2474652 (head!13904 s!14361)) (tail!12956 s!14361)))))

(declare-fun b!6936973 () Bool)

(declare-fun e!4173489 () Bool)

(assert (=> b!6936973 (= e!4173495 e!4173489)))

(declare-fun res!2829529 () Bool)

(assert (=> b!6936973 (=> (not res!2829529) (not e!4173489))))

(declare-fun lt!2474757 () Bool)

(assert (=> b!6936973 (= res!2829529 (not lt!2474757))))

(declare-fun b!6936974 () Bool)

(declare-fun res!2829525 () Bool)

(assert (=> b!6936974 (=> (not res!2829525) (not e!4173493))))

(assert (=> b!6936974 (= res!2829525 (not call!630260))))

(declare-fun b!6936975 () Bool)

(assert (=> b!6936975 (= e!4173493 (= (head!13904 s!14361) (c!1287149 lt!2474652)))))

(declare-fun b!6936976 () Bool)

(declare-fun e!4173491 () Bool)

(assert (=> b!6936976 (= e!4173491 e!4173494)))

(declare-fun c!1287263 () Bool)

(assert (=> b!6936976 (= c!1287263 ((_ is EmptyLang!16959) lt!2474652))))

(declare-fun b!6936977 () Bool)

(declare-fun e!4173490 () Bool)

(assert (=> b!6936977 (= e!4173489 e!4173490)))

(declare-fun res!2829530 () Bool)

(assert (=> b!6936977 (=> res!2829530 e!4173490)))

(assert (=> b!6936977 (= res!2829530 call!630260)))

(declare-fun b!6936979 () Bool)

(assert (=> b!6936979 (= e!4173492 (nullable!6776 lt!2474652))))

(declare-fun b!6936980 () Bool)

(assert (=> b!6936980 (= e!4173494 (not lt!2474757))))

(declare-fun b!6936981 () Bool)

(assert (=> b!6936981 (= e!4173491 (= lt!2474757 call!630260))))

(declare-fun b!6936982 () Bool)

(declare-fun res!2829523 () Bool)

(assert (=> b!6936982 (=> res!2829523 e!4173495)))

(assert (=> b!6936982 (= res!2829523 e!4173493)))

(declare-fun res!2829527 () Bool)

(assert (=> b!6936982 (=> (not res!2829527) (not e!4173493))))

(assert (=> b!6936982 (= res!2829527 lt!2474757)))

(declare-fun b!6936983 () Bool)

(assert (=> b!6936983 (= e!4173490 (not (= (head!13904 s!14361) (c!1287149 lt!2474652))))))

(declare-fun b!6936978 () Bool)

(declare-fun res!2829528 () Bool)

(assert (=> b!6936978 (=> res!2829528 e!4173490)))

(assert (=> b!6936978 (= res!2829528 (not (isEmpty!38853 (tail!12956 s!14361))))))

(declare-fun d!2166987 () Bool)

(assert (=> d!2166987 e!4173491))

(declare-fun c!1287264 () Bool)

(assert (=> d!2166987 (= c!1287264 ((_ is EmptyExpr!16959) lt!2474652))))

(assert (=> d!2166987 (= lt!2474757 e!4173492)))

(declare-fun c!1287265 () Bool)

(assert (=> d!2166987 (= c!1287265 (isEmpty!38853 s!14361))))

(assert (=> d!2166987 (validRegex!8665 lt!2474652)))

(assert (=> d!2166987 (= (matchR!9098 lt!2474652 s!14361) lt!2474757)))

(assert (= (and d!2166987 c!1287265) b!6936979))

(assert (= (and d!2166987 (not c!1287265)) b!6936972))

(assert (= (and d!2166987 c!1287264) b!6936981))

(assert (= (and d!2166987 (not c!1287264)) b!6936976))

(assert (= (and b!6936976 c!1287263) b!6936980))

(assert (= (and b!6936976 (not c!1287263)) b!6936971))

(assert (= (and b!6936971 (not res!2829524)) b!6936982))

(assert (= (and b!6936982 res!2829527) b!6936974))

(assert (= (and b!6936974 res!2829525) b!6936970))

(assert (= (and b!6936970 res!2829526) b!6936975))

(assert (= (and b!6936982 (not res!2829523)) b!6936973))

(assert (= (and b!6936973 res!2829529) b!6936977))

(assert (= (and b!6936977 (not res!2829530)) b!6936978))

(assert (= (and b!6936978 (not res!2829528)) b!6936983))

(assert (= (or b!6936981 b!6936974 b!6936977) bm!630255))

(assert (=> bm!630255 m!7642752))

(assert (=> b!6936970 m!7642756))

(assert (=> b!6936970 m!7642756))

(assert (=> b!6936970 m!7642758))

(assert (=> d!2166987 m!7642752))

(declare-fun m!7642784 () Bool)

(assert (=> d!2166987 m!7642784))

(assert (=> b!6936972 m!7642762))

(assert (=> b!6936972 m!7642762))

(declare-fun m!7642786 () Bool)

(assert (=> b!6936972 m!7642786))

(assert (=> b!6936972 m!7642756))

(assert (=> b!6936972 m!7642786))

(assert (=> b!6936972 m!7642756))

(declare-fun m!7642788 () Bool)

(assert (=> b!6936972 m!7642788))

(declare-fun m!7642790 () Bool)

(assert (=> b!6936979 m!7642790))

(assert (=> b!6936978 m!7642756))

(assert (=> b!6936978 m!7642756))

(assert (=> b!6936978 m!7642758))

(assert (=> b!6936983 m!7642762))

(assert (=> b!6936975 m!7642762))

(assert (=> b!6936474 d!2166987))

(declare-fun bs!1852720 () Bool)

(declare-fun b!6936999 () Bool)

(assert (= bs!1852720 (and b!6936999 b!6936467)))

(declare-fun lambda!395045 () Int)

(assert (=> bs!1852720 (not (= lambda!395045 lambda!394997))))

(declare-fun bs!1852723 () Bool)

(assert (= bs!1852723 (and b!6936999 d!2166953)))

(assert (=> bs!1852723 (not (= lambda!395045 lambda!395043))))

(assert (=> bs!1852720 (not (= lambda!395045 lambda!394998))))

(declare-fun bs!1852726 () Bool)

(assert (= bs!1852726 (and b!6936999 b!6936463)))

(assert (=> bs!1852726 (not (= lambda!395045 lambda!394999))))

(assert (=> bs!1852726 (not (= lambda!395045 lambda!395000))))

(assert (=> bs!1852723 (not (= lambda!395045 lambda!395042))))

(declare-fun bs!1852729 () Bool)

(assert (= bs!1852729 (and b!6936999 b!6936468)))

(assert (=> bs!1852729 (not (= lambda!395045 lambda!394995))))

(declare-fun bs!1852731 () Bool)

(assert (= bs!1852731 (and b!6936999 b!6936696)))

(assert (=> bs!1852731 (= (and (= s!14361 lt!2474663) (= (reg!17288 lt!2474652) (reg!17288 lt!2474666)) (= lt!2474652 lt!2474666)) (= lambda!395045 lambda!395020))))

(declare-fun bs!1852733 () Bool)

(assert (= bs!1852733 (and b!6936999 b!6936698)))

(assert (=> bs!1852733 (not (= lambda!395045 lambda!395021))))

(declare-fun bs!1852734 () Bool)

(assert (= bs!1852734 (and b!6936999 d!2166933)))

(assert (=> bs!1852734 (not (= lambda!395045 lambda!395033))))

(assert (=> bs!1852729 (not (= lambda!395045 lambda!394996))))

(assert (=> b!6936999 true))

(assert (=> b!6936999 true))

(declare-fun bs!1852739 () Bool)

(declare-fun b!6937001 () Bool)

(assert (= bs!1852739 (and b!6937001 b!6936467)))

(declare-fun lambda!395046 () Int)

(assert (=> bs!1852739 (not (= lambda!395046 lambda!394997))))

(declare-fun bs!1852741 () Bool)

(assert (= bs!1852741 (and b!6937001 d!2166953)))

(assert (=> bs!1852741 (= (and (= s!14361 lt!2474663) (= (regOne!34430 lt!2474652) r1!6342) (= (regTwo!34430 lt!2474652) r2!6280)) (= lambda!395046 lambda!395043))))

(assert (=> bs!1852739 (= (and (= s!14361 (_2!37119 lt!2474644)) (= (regOne!34430 lt!2474652) r2!6280) (= (regTwo!34430 lt!2474652) r3!135)) (= lambda!395046 lambda!394998))))

(declare-fun bs!1852743 () Bool)

(assert (= bs!1852743 (and b!6937001 b!6936999)))

(assert (=> bs!1852743 (not (= lambda!395046 lambda!395045))))

(declare-fun bs!1852744 () Bool)

(assert (= bs!1852744 (and b!6937001 b!6936463)))

(assert (=> bs!1852744 (not (= lambda!395046 lambda!394999))))

(assert (=> bs!1852744 (= (and (= s!14361 lt!2474663) (= (regOne!34430 lt!2474652) r1!6342) (= (regTwo!34430 lt!2474652) r2!6280)) (= lambda!395046 lambda!395000))))

(assert (=> bs!1852741 (not (= lambda!395046 lambda!395042))))

(declare-fun bs!1852745 () Bool)

(assert (= bs!1852745 (and b!6937001 b!6936468)))

(assert (=> bs!1852745 (not (= lambda!395046 lambda!394995))))

(declare-fun bs!1852746 () Bool)

(assert (= bs!1852746 (and b!6937001 b!6936696)))

(assert (=> bs!1852746 (not (= lambda!395046 lambda!395020))))

(declare-fun bs!1852748 () Bool)

(assert (= bs!1852748 (and b!6937001 b!6936698)))

(assert (=> bs!1852748 (= (and (= s!14361 lt!2474663) (= (regOne!34430 lt!2474652) (regOne!34430 lt!2474666)) (= (regTwo!34430 lt!2474652) (regTwo!34430 lt!2474666))) (= lambda!395046 lambda!395021))))

(declare-fun bs!1852750 () Bool)

(assert (= bs!1852750 (and b!6937001 d!2166933)))

(assert (=> bs!1852750 (not (= lambda!395046 lambda!395033))))

(assert (=> bs!1852745 (= (and (= (regOne!34430 lt!2474652) r1!6342) (= (regTwo!34430 lt!2474652) lt!2474648)) (= lambda!395046 lambda!394996))))

(assert (=> b!6937001 true))

(assert (=> b!6937001 true))

(declare-fun b!6936995 () Bool)

(declare-fun c!1287271 () Bool)

(assert (=> b!6936995 (= c!1287271 ((_ is Union!16959) lt!2474652))))

(declare-fun e!4173509 () Bool)

(declare-fun e!4173503 () Bool)

(assert (=> b!6936995 (= e!4173509 e!4173503)))

(declare-fun b!6936996 () Bool)

(assert (=> b!6936996 (= e!4173509 (= s!14361 (Cons!66588 (c!1287149 lt!2474652) Nil!66588)))))

(declare-fun d!2166993 () Bool)

(declare-fun c!1287270 () Bool)

(assert (=> d!2166993 (= c!1287270 ((_ is EmptyExpr!16959) lt!2474652))))

(declare-fun e!4173504 () Bool)

(assert (=> d!2166993 (= (matchRSpec!4016 lt!2474652 s!14361) e!4173504)))

(declare-fun b!6936997 () Bool)

(declare-fun e!4173505 () Bool)

(assert (=> b!6936997 (= e!4173503 e!4173505)))

(declare-fun c!1287272 () Bool)

(assert (=> b!6936997 (= c!1287272 ((_ is Star!16959) lt!2474652))))

(declare-fun b!6936998 () Bool)

(declare-fun e!4173508 () Bool)

(assert (=> b!6936998 (= e!4173508 (matchRSpec!4016 (regTwo!34431 lt!2474652) s!14361))))

(declare-fun e!4173507 () Bool)

(declare-fun call!630263 () Bool)

(assert (=> b!6936999 (= e!4173507 call!630263)))

(declare-fun b!6937000 () Bool)

(assert (=> b!6937000 (= e!4173503 e!4173508)))

(declare-fun res!2829535 () Bool)

(assert (=> b!6937000 (= res!2829535 (matchRSpec!4016 (regOne!34431 lt!2474652) s!14361))))

(assert (=> b!6937000 (=> res!2829535 e!4173508)))

(assert (=> b!6937001 (= e!4173505 call!630263)))

(declare-fun b!6937002 () Bool)

(declare-fun call!630264 () Bool)

(assert (=> b!6937002 (= e!4173504 call!630264)))

(declare-fun b!6937003 () Bool)

(declare-fun res!2829534 () Bool)

(assert (=> b!6937003 (=> res!2829534 e!4173507)))

(assert (=> b!6937003 (= res!2829534 call!630264)))

(assert (=> b!6937003 (= e!4173505 e!4173507)))

(declare-fun bm!630258 () Bool)

(assert (=> bm!630258 (= call!630263 (Exists!3959 (ite c!1287272 lambda!395045 lambda!395046)))))

(declare-fun b!6937004 () Bool)

(declare-fun c!1287273 () Bool)

(assert (=> b!6937004 (= c!1287273 ((_ is ElementMatch!16959) lt!2474652))))

(declare-fun e!4173506 () Bool)

(assert (=> b!6937004 (= e!4173506 e!4173509)))

(declare-fun bm!630259 () Bool)

(assert (=> bm!630259 (= call!630264 (isEmpty!38853 s!14361))))

(declare-fun b!6937005 () Bool)

(assert (=> b!6937005 (= e!4173504 e!4173506)))

(declare-fun res!2829536 () Bool)

(assert (=> b!6937005 (= res!2829536 (not ((_ is EmptyLang!16959) lt!2474652)))))

(assert (=> b!6937005 (=> (not res!2829536) (not e!4173506))))

(assert (= (and d!2166993 c!1287270) b!6937002))

(assert (= (and d!2166993 (not c!1287270)) b!6937005))

(assert (= (and b!6937005 res!2829536) b!6937004))

(assert (= (and b!6937004 c!1287273) b!6936996))

(assert (= (and b!6937004 (not c!1287273)) b!6936995))

(assert (= (and b!6936995 c!1287271) b!6937000))

(assert (= (and b!6936995 (not c!1287271)) b!6936997))

(assert (= (and b!6937000 (not res!2829535)) b!6936998))

(assert (= (and b!6936997 c!1287272) b!6937003))

(assert (= (and b!6936997 (not c!1287272)) b!6937001))

(assert (= (and b!6937003 (not res!2829534)) b!6936999))

(assert (= (or b!6936999 b!6937001) bm!630258))

(assert (= (or b!6937002 b!6937003) bm!630259))

(declare-fun m!7642792 () Bool)

(assert (=> b!6936998 m!7642792))

(declare-fun m!7642794 () Bool)

(assert (=> b!6937000 m!7642794))

(declare-fun m!7642796 () Bool)

(assert (=> bm!630258 m!7642796))

(assert (=> bm!630259 m!7642752))

(assert (=> b!6936474 d!2166993))

(declare-fun d!2166995 () Bool)

(assert (=> d!2166995 (= (matchR!9098 lt!2474652 s!14361) (matchRSpec!4016 lt!2474652 s!14361))))

(declare-fun lt!2474759 () Unit!160642)

(assert (=> d!2166995 (= lt!2474759 (choose!51669 lt!2474652 s!14361))))

(assert (=> d!2166995 (validRegex!8665 lt!2474652)))

(assert (=> d!2166995 (= (mainMatchTheorem!4016 lt!2474652 s!14361) lt!2474759)))

(declare-fun bs!1852759 () Bool)

(assert (= bs!1852759 d!2166995))

(assert (=> bs!1852759 m!7642296))

(assert (=> bs!1852759 m!7642304))

(declare-fun m!7642798 () Bool)

(assert (=> bs!1852759 m!7642798))

(assert (=> bs!1852759 m!7642784))

(assert (=> b!6936474 d!2166995))

(declare-fun bs!1852765 () Bool)

(declare-fun b!6937010 () Bool)

(assert (= bs!1852765 (and b!6937010 b!6936467)))

(declare-fun lambda!395048 () Int)

(assert (=> bs!1852765 (not (= lambda!395048 lambda!394997))))

(declare-fun bs!1852767 () Bool)

(assert (= bs!1852767 (and b!6937010 d!2166953)))

(assert (=> bs!1852767 (not (= lambda!395048 lambda!395043))))

(assert (=> bs!1852765 (not (= lambda!395048 lambda!394998))))

(declare-fun bs!1852770 () Bool)

(assert (= bs!1852770 (and b!6937010 b!6936999)))

(assert (=> bs!1852770 (= (and (= (reg!17288 lt!2474657) (reg!17288 lt!2474652)) (= lt!2474657 lt!2474652)) (= lambda!395048 lambda!395045))))

(declare-fun bs!1852771 () Bool)

(assert (= bs!1852771 (and b!6937010 b!6936463)))

(assert (=> bs!1852771 (not (= lambda!395048 lambda!394999))))

(assert (=> bs!1852771 (not (= lambda!395048 lambda!395000))))

(assert (=> bs!1852767 (not (= lambda!395048 lambda!395042))))

(declare-fun bs!1852774 () Bool)

(assert (= bs!1852774 (and b!6937010 b!6936468)))

(assert (=> bs!1852774 (not (= lambda!395048 lambda!394995))))

(declare-fun bs!1852775 () Bool)

(assert (= bs!1852775 (and b!6937010 b!6936696)))

(assert (=> bs!1852775 (= (and (= s!14361 lt!2474663) (= (reg!17288 lt!2474657) (reg!17288 lt!2474666)) (= lt!2474657 lt!2474666)) (= lambda!395048 lambda!395020))))

(declare-fun bs!1852776 () Bool)

(assert (= bs!1852776 (and b!6937010 b!6937001)))

(assert (=> bs!1852776 (not (= lambda!395048 lambda!395046))))

(declare-fun bs!1852777 () Bool)

(assert (= bs!1852777 (and b!6937010 b!6936698)))

(assert (=> bs!1852777 (not (= lambda!395048 lambda!395021))))

(declare-fun bs!1852778 () Bool)

(assert (= bs!1852778 (and b!6937010 d!2166933)))

(assert (=> bs!1852778 (not (= lambda!395048 lambda!395033))))

(assert (=> bs!1852774 (not (= lambda!395048 lambda!394996))))

(assert (=> b!6937010 true))

(assert (=> b!6937010 true))

(declare-fun bs!1852779 () Bool)

(declare-fun b!6937012 () Bool)

(assert (= bs!1852779 (and b!6937012 b!6936467)))

(declare-fun lambda!395049 () Int)

(assert (=> bs!1852779 (not (= lambda!395049 lambda!394997))))

(declare-fun bs!1852781 () Bool)

(assert (= bs!1852781 (and b!6937012 d!2166953)))

(assert (=> bs!1852781 (= (and (= s!14361 lt!2474663) (= (regOne!34430 lt!2474657) r1!6342) (= (regTwo!34430 lt!2474657) r2!6280)) (= lambda!395049 lambda!395043))))

(assert (=> bs!1852779 (= (and (= s!14361 (_2!37119 lt!2474644)) (= (regOne!34430 lt!2474657) r2!6280) (= (regTwo!34430 lt!2474657) r3!135)) (= lambda!395049 lambda!394998))))

(declare-fun bs!1852784 () Bool)

(assert (= bs!1852784 (and b!6937012 b!6936999)))

(assert (=> bs!1852784 (not (= lambda!395049 lambda!395045))))

(declare-fun bs!1852786 () Bool)

(assert (= bs!1852786 (and b!6937012 b!6936463)))

(assert (=> bs!1852786 (not (= lambda!395049 lambda!394999))))

(assert (=> bs!1852786 (= (and (= s!14361 lt!2474663) (= (regOne!34430 lt!2474657) r1!6342) (= (regTwo!34430 lt!2474657) r2!6280)) (= lambda!395049 lambda!395000))))

(assert (=> bs!1852781 (not (= lambda!395049 lambda!395042))))

(declare-fun bs!1852789 () Bool)

(assert (= bs!1852789 (and b!6937012 b!6936468)))

(assert (=> bs!1852789 (not (= lambda!395049 lambda!394995))))

(declare-fun bs!1852791 () Bool)

(assert (= bs!1852791 (and b!6937012 b!6937001)))

(assert (=> bs!1852791 (= (and (= (regOne!34430 lt!2474657) (regOne!34430 lt!2474652)) (= (regTwo!34430 lt!2474657) (regTwo!34430 lt!2474652))) (= lambda!395049 lambda!395046))))

(declare-fun bs!1852793 () Bool)

(assert (= bs!1852793 (and b!6937012 b!6936698)))

(assert (=> bs!1852793 (= (and (= s!14361 lt!2474663) (= (regOne!34430 lt!2474657) (regOne!34430 lt!2474666)) (= (regTwo!34430 lt!2474657) (regTwo!34430 lt!2474666))) (= lambda!395049 lambda!395021))))

(declare-fun bs!1852795 () Bool)

(assert (= bs!1852795 (and b!6937012 b!6937010)))

(assert (=> bs!1852795 (not (= lambda!395049 lambda!395048))))

(declare-fun bs!1852797 () Bool)

(assert (= bs!1852797 (and b!6937012 b!6936696)))

(assert (=> bs!1852797 (not (= lambda!395049 lambda!395020))))

(declare-fun bs!1852799 () Bool)

(assert (= bs!1852799 (and b!6937012 d!2166933)))

(assert (=> bs!1852799 (not (= lambda!395049 lambda!395033))))

(assert (=> bs!1852789 (= (and (= (regOne!34430 lt!2474657) r1!6342) (= (regTwo!34430 lt!2474657) lt!2474648)) (= lambda!395049 lambda!394996))))

(assert (=> b!6937012 true))

(assert (=> b!6937012 true))

(declare-fun b!6937006 () Bool)

(declare-fun c!1287275 () Bool)

(assert (=> b!6937006 (= c!1287275 ((_ is Union!16959) lt!2474657))))

(declare-fun e!4173516 () Bool)

(declare-fun e!4173510 () Bool)

(assert (=> b!6937006 (= e!4173516 e!4173510)))

(declare-fun b!6937007 () Bool)

(assert (=> b!6937007 (= e!4173516 (= s!14361 (Cons!66588 (c!1287149 lt!2474657) Nil!66588)))))

(declare-fun d!2166997 () Bool)

(declare-fun c!1287274 () Bool)

(assert (=> d!2166997 (= c!1287274 ((_ is EmptyExpr!16959) lt!2474657))))

(declare-fun e!4173511 () Bool)

(assert (=> d!2166997 (= (matchRSpec!4016 lt!2474657 s!14361) e!4173511)))

(declare-fun b!6937008 () Bool)

(declare-fun e!4173512 () Bool)

(assert (=> b!6937008 (= e!4173510 e!4173512)))

(declare-fun c!1287276 () Bool)

(assert (=> b!6937008 (= c!1287276 ((_ is Star!16959) lt!2474657))))

(declare-fun b!6937009 () Bool)

(declare-fun e!4173515 () Bool)

(assert (=> b!6937009 (= e!4173515 (matchRSpec!4016 (regTwo!34431 lt!2474657) s!14361))))

(declare-fun e!4173514 () Bool)

(declare-fun call!630265 () Bool)

(assert (=> b!6937010 (= e!4173514 call!630265)))

(declare-fun b!6937011 () Bool)

(assert (=> b!6937011 (= e!4173510 e!4173515)))

(declare-fun res!2829538 () Bool)

(assert (=> b!6937011 (= res!2829538 (matchRSpec!4016 (regOne!34431 lt!2474657) s!14361))))

(assert (=> b!6937011 (=> res!2829538 e!4173515)))

(assert (=> b!6937012 (= e!4173512 call!630265)))

(declare-fun b!6937013 () Bool)

(declare-fun call!630266 () Bool)

(assert (=> b!6937013 (= e!4173511 call!630266)))

(declare-fun b!6937014 () Bool)

(declare-fun res!2829537 () Bool)

(assert (=> b!6937014 (=> res!2829537 e!4173514)))

(assert (=> b!6937014 (= res!2829537 call!630266)))

(assert (=> b!6937014 (= e!4173512 e!4173514)))

(declare-fun bm!630260 () Bool)

(assert (=> bm!630260 (= call!630265 (Exists!3959 (ite c!1287276 lambda!395048 lambda!395049)))))

(declare-fun b!6937015 () Bool)

(declare-fun c!1287277 () Bool)

(assert (=> b!6937015 (= c!1287277 ((_ is ElementMatch!16959) lt!2474657))))

(declare-fun e!4173513 () Bool)

(assert (=> b!6937015 (= e!4173513 e!4173516)))

(declare-fun bm!630261 () Bool)

(assert (=> bm!630261 (= call!630266 (isEmpty!38853 s!14361))))

(declare-fun b!6937016 () Bool)

(assert (=> b!6937016 (= e!4173511 e!4173513)))

(declare-fun res!2829539 () Bool)

(assert (=> b!6937016 (= res!2829539 (not ((_ is EmptyLang!16959) lt!2474657)))))

(assert (=> b!6937016 (=> (not res!2829539) (not e!4173513))))

(assert (= (and d!2166997 c!1287274) b!6937013))

(assert (= (and d!2166997 (not c!1287274)) b!6937016))

(assert (= (and b!6937016 res!2829539) b!6937015))

(assert (= (and b!6937015 c!1287277) b!6937007))

(assert (= (and b!6937015 (not c!1287277)) b!6937006))

(assert (= (and b!6937006 c!1287275) b!6937011))

(assert (= (and b!6937006 (not c!1287275)) b!6937008))

(assert (= (and b!6937011 (not res!2829538)) b!6937009))

(assert (= (and b!6937008 c!1287276) b!6937014))

(assert (= (and b!6937008 (not c!1287276)) b!6937012))

(assert (= (and b!6937014 (not res!2829537)) b!6937010))

(assert (= (or b!6937010 b!6937012) bm!630260))

(assert (= (or b!6937013 b!6937014) bm!630261))

(declare-fun m!7642808 () Bool)

(assert (=> b!6937009 m!7642808))

(declare-fun m!7642810 () Bool)

(assert (=> b!6937011 m!7642810))

(declare-fun m!7642812 () Bool)

(assert (=> bm!630260 m!7642812))

(assert (=> bm!630261 m!7642752))

(assert (=> b!6936474 d!2166997))

(declare-fun d!2167001 () Bool)

(assert (=> d!2167001 (= (matchR!9098 lt!2474657 s!14361) (matchRSpec!4016 lt!2474657 s!14361))))

(declare-fun lt!2474761 () Unit!160642)

(assert (=> d!2167001 (= lt!2474761 (choose!51669 lt!2474657 s!14361))))

(assert (=> d!2167001 (validRegex!8665 lt!2474657)))

(assert (=> d!2167001 (= (mainMatchTheorem!4016 lt!2474657 s!14361) lt!2474761)))

(declare-fun bs!1852806 () Bool)

(assert (= bs!1852806 d!2167001))

(assert (=> bs!1852806 m!7642298))

(assert (=> bs!1852806 m!7642294))

(declare-fun m!7642814 () Bool)

(assert (=> bs!1852806 m!7642814))

(assert (=> bs!1852806 m!7642760))

(assert (=> b!6936474 d!2167001))

(declare-fun d!2167003 () Bool)

(assert (=> d!2167003 (= (isDefined!13429 lt!2474669) (not (isEmpty!38855 lt!2474669)))))

(declare-fun bs!1852809 () Bool)

(assert (= bs!1852809 d!2167003))

(declare-fun m!7642816 () Bool)

(assert (=> bs!1852809 m!7642816))

(assert (=> b!6936453 d!2167003))

(declare-fun b!6937017 () Bool)

(declare-fun res!2829540 () Bool)

(declare-fun e!4173517 () Bool)

(assert (=> b!6937017 (=> (not res!2829540) (not e!4173517))))

(declare-fun lt!2474763 () Option!16728)

(assert (=> b!6937017 (= res!2829540 (matchR!9098 r1!6342 (_1!37119 (get!23375 lt!2474763))))))

(declare-fun d!2167005 () Bool)

(declare-fun e!4173520 () Bool)

(assert (=> d!2167005 e!4173520))

(declare-fun res!2829542 () Bool)

(assert (=> d!2167005 (=> res!2829542 e!4173520)))

(assert (=> d!2167005 (= res!2829542 e!4173517)))

(declare-fun res!2829541 () Bool)

(assert (=> d!2167005 (=> (not res!2829541) (not e!4173517))))

(assert (=> d!2167005 (= res!2829541 (isDefined!13429 lt!2474763))))

(declare-fun e!4173521 () Option!16728)

(assert (=> d!2167005 (= lt!2474763 e!4173521)))

(declare-fun c!1287279 () Bool)

(declare-fun e!4173519 () Bool)

(assert (=> d!2167005 (= c!1287279 e!4173519)))

(declare-fun res!2829543 () Bool)

(assert (=> d!2167005 (=> (not res!2829543) (not e!4173519))))

(assert (=> d!2167005 (= res!2829543 (matchR!9098 r1!6342 Nil!66588))))

(assert (=> d!2167005 (validRegex!8665 r1!6342)))

(assert (=> d!2167005 (= (findConcatSeparation!3142 r1!6342 lt!2474648 Nil!66588 s!14361 s!14361) lt!2474763)))

(declare-fun b!6937018 () Bool)

(assert (=> b!6937018 (= e!4173521 (Some!16727 (tuple2!67633 Nil!66588 s!14361)))))

(declare-fun b!6937019 () Bool)

(declare-fun res!2829544 () Bool)

(assert (=> b!6937019 (=> (not res!2829544) (not e!4173517))))

(assert (=> b!6937019 (= res!2829544 (matchR!9098 lt!2474648 (_2!37119 (get!23375 lt!2474763))))))

(declare-fun b!6937020 () Bool)

(declare-fun e!4173518 () Option!16728)

(assert (=> b!6937020 (= e!4173521 e!4173518)))

(declare-fun c!1287278 () Bool)

(assert (=> b!6937020 (= c!1287278 ((_ is Nil!66588) s!14361))))

(declare-fun b!6937021 () Bool)

(assert (=> b!6937021 (= e!4173517 (= (++!14998 (_1!37119 (get!23375 lt!2474763)) (_2!37119 (get!23375 lt!2474763))) s!14361))))

(declare-fun b!6937022 () Bool)

(declare-fun lt!2474764 () Unit!160642)

(declare-fun lt!2474762 () Unit!160642)

(assert (=> b!6937022 (= lt!2474764 lt!2474762)))

(assert (=> b!6937022 (= (++!14998 (++!14998 Nil!66588 (Cons!66588 (h!73036 s!14361) Nil!66588)) (t!380455 s!14361)) s!14361)))

(assert (=> b!6937022 (= lt!2474762 (lemmaMoveElementToOtherListKeepsConcatEq!2855 Nil!66588 (h!73036 s!14361) (t!380455 s!14361) s!14361))))

(assert (=> b!6937022 (= e!4173518 (findConcatSeparation!3142 r1!6342 lt!2474648 (++!14998 Nil!66588 (Cons!66588 (h!73036 s!14361) Nil!66588)) (t!380455 s!14361) s!14361))))

(declare-fun b!6937023 () Bool)

(assert (=> b!6937023 (= e!4173518 None!16727)))

(declare-fun b!6937024 () Bool)

(assert (=> b!6937024 (= e!4173520 (not (isDefined!13429 lt!2474763)))))

(declare-fun b!6937025 () Bool)

(assert (=> b!6937025 (= e!4173519 (matchR!9098 lt!2474648 s!14361))))

(assert (= (and d!2167005 res!2829543) b!6937025))

(assert (= (and d!2167005 c!1287279) b!6937018))

(assert (= (and d!2167005 (not c!1287279)) b!6937020))

(assert (= (and b!6937020 c!1287278) b!6937023))

(assert (= (and b!6937020 (not c!1287278)) b!6937022))

(assert (= (and d!2167005 res!2829541) b!6937017))

(assert (= (and b!6937017 res!2829540) b!6937019))

(assert (= (and b!6937019 res!2829544) b!6937021))

(assert (= (and d!2167005 (not res!2829542)) b!6937024))

(declare-fun m!7642826 () Bool)

(assert (=> d!2167005 m!7642826))

(assert (=> d!2167005 m!7642548))

(assert (=> d!2167005 m!7642326))

(declare-fun m!7642828 () Bool)

(assert (=> b!6937022 m!7642828))

(assert (=> b!6937022 m!7642828))

(declare-fun m!7642830 () Bool)

(assert (=> b!6937022 m!7642830))

(declare-fun m!7642832 () Bool)

(assert (=> b!6937022 m!7642832))

(assert (=> b!6937022 m!7642828))

(declare-fun m!7642834 () Bool)

(assert (=> b!6937022 m!7642834))

(declare-fun m!7642836 () Bool)

(assert (=> b!6937021 m!7642836))

(declare-fun m!7642838 () Bool)

(assert (=> b!6937021 m!7642838))

(declare-fun m!7642840 () Bool)

(assert (=> b!6937025 m!7642840))

(assert (=> b!6937019 m!7642836))

(declare-fun m!7642842 () Bool)

(assert (=> b!6937019 m!7642842))

(assert (=> b!6937024 m!7642826))

(assert (=> b!6937017 m!7642836))

(declare-fun m!7642844 () Bool)

(assert (=> b!6937017 m!7642844))

(assert (=> b!6936453 d!2167005))

(declare-fun bm!630263 () Bool)

(declare-fun call!630268 () Bool)

(assert (=> bm!630263 (= call!630268 (isEmpty!38853 (_2!37119 lt!2474644)))))

(declare-fun b!6937040 () Bool)

(declare-fun res!2829556 () Bool)

(declare-fun e!4173533 () Bool)

(assert (=> b!6937040 (=> (not res!2829556) (not e!4173533))))

(assert (=> b!6937040 (= res!2829556 (isEmpty!38853 (tail!12956 (_2!37119 lt!2474644))))))

(declare-fun b!6937041 () Bool)

(declare-fun res!2829554 () Bool)

(declare-fun e!4173535 () Bool)

(assert (=> b!6937041 (=> res!2829554 e!4173535)))

(assert (=> b!6937041 (= res!2829554 (not ((_ is ElementMatch!16959) lt!2474648)))))

(declare-fun e!4173534 () Bool)

(assert (=> b!6937041 (= e!4173534 e!4173535)))

(declare-fun b!6937042 () Bool)

(declare-fun e!4173532 () Bool)

(assert (=> b!6937042 (= e!4173532 (matchR!9098 (derivativeStep!5451 lt!2474648 (head!13904 (_2!37119 lt!2474644))) (tail!12956 (_2!37119 lt!2474644))))))

(declare-fun b!6937043 () Bool)

(declare-fun e!4173529 () Bool)

(assert (=> b!6937043 (= e!4173535 e!4173529)))

(declare-fun res!2829559 () Bool)

(assert (=> b!6937043 (=> (not res!2829559) (not e!4173529))))

(declare-fun lt!2474766 () Bool)

(assert (=> b!6937043 (= res!2829559 (not lt!2474766))))

(declare-fun b!6937044 () Bool)

(declare-fun res!2829555 () Bool)

(assert (=> b!6937044 (=> (not res!2829555) (not e!4173533))))

(assert (=> b!6937044 (= res!2829555 (not call!630268))))

(declare-fun b!6937045 () Bool)

(assert (=> b!6937045 (= e!4173533 (= (head!13904 (_2!37119 lt!2474644)) (c!1287149 lt!2474648)))))

(declare-fun b!6937046 () Bool)

(declare-fun e!4173531 () Bool)

(assert (=> b!6937046 (= e!4173531 e!4173534)))

(declare-fun c!1287283 () Bool)

(assert (=> b!6937046 (= c!1287283 ((_ is EmptyLang!16959) lt!2474648))))

(declare-fun b!6937047 () Bool)

(declare-fun e!4173530 () Bool)

(assert (=> b!6937047 (= e!4173529 e!4173530)))

(declare-fun res!2829560 () Bool)

(assert (=> b!6937047 (=> res!2829560 e!4173530)))

(assert (=> b!6937047 (= res!2829560 call!630268)))

(declare-fun b!6937049 () Bool)

(assert (=> b!6937049 (= e!4173532 (nullable!6776 lt!2474648))))

(declare-fun b!6937050 () Bool)

(assert (=> b!6937050 (= e!4173534 (not lt!2474766))))

(declare-fun b!6937051 () Bool)

(assert (=> b!6937051 (= e!4173531 (= lt!2474766 call!630268))))

(declare-fun b!6937052 () Bool)

(declare-fun res!2829553 () Bool)

(assert (=> b!6937052 (=> res!2829553 e!4173535)))

(assert (=> b!6937052 (= res!2829553 e!4173533)))

(declare-fun res!2829557 () Bool)

(assert (=> b!6937052 (=> (not res!2829557) (not e!4173533))))

(assert (=> b!6937052 (= res!2829557 lt!2474766)))

(declare-fun b!6937053 () Bool)

(assert (=> b!6937053 (= e!4173530 (not (= (head!13904 (_2!37119 lt!2474644)) (c!1287149 lt!2474648))))))

(declare-fun b!6937048 () Bool)

(declare-fun res!2829558 () Bool)

(assert (=> b!6937048 (=> res!2829558 e!4173530)))

(assert (=> b!6937048 (= res!2829558 (not (isEmpty!38853 (tail!12956 (_2!37119 lt!2474644)))))))

(declare-fun d!2167011 () Bool)

(assert (=> d!2167011 e!4173531))

(declare-fun c!1287284 () Bool)

(assert (=> d!2167011 (= c!1287284 ((_ is EmptyExpr!16959) lt!2474648))))

(assert (=> d!2167011 (= lt!2474766 e!4173532)))

(declare-fun c!1287285 () Bool)

(assert (=> d!2167011 (= c!1287285 (isEmpty!38853 (_2!37119 lt!2474644)))))

(assert (=> d!2167011 (validRegex!8665 lt!2474648)))

(assert (=> d!2167011 (= (matchR!9098 lt!2474648 (_2!37119 lt!2474644)) lt!2474766)))

(assert (= (and d!2167011 c!1287285) b!6937049))

(assert (= (and d!2167011 (not c!1287285)) b!6937042))

(assert (= (and d!2167011 c!1287284) b!6937051))

(assert (= (and d!2167011 (not c!1287284)) b!6937046))

(assert (= (and b!6937046 c!1287283) b!6937050))

(assert (= (and b!6937046 (not c!1287283)) b!6937041))

(assert (= (and b!6937041 (not res!2829554)) b!6937052))

(assert (= (and b!6937052 res!2829557) b!6937044))

(assert (= (and b!6937044 res!2829555) b!6937040))

(assert (= (and b!6937040 res!2829556) b!6937045))

(assert (= (and b!6937052 (not res!2829553)) b!6937043))

(assert (= (and b!6937043 res!2829559) b!6937047))

(assert (= (and b!6937047 (not res!2829560)) b!6937048))

(assert (= (and b!6937048 (not res!2829558)) b!6937053))

(assert (= (or b!6937051 b!6937044 b!6937047) bm!630263))

(declare-fun m!7642858 () Bool)

(assert (=> bm!630263 m!7642858))

(declare-fun m!7642860 () Bool)

(assert (=> b!6937040 m!7642860))

(assert (=> b!6937040 m!7642860))

(declare-fun m!7642862 () Bool)

(assert (=> b!6937040 m!7642862))

(assert (=> d!2167011 m!7642858))

(declare-fun m!7642864 () Bool)

(assert (=> d!2167011 m!7642864))

(declare-fun m!7642866 () Bool)

(assert (=> b!6937042 m!7642866))

(assert (=> b!6937042 m!7642866))

(declare-fun m!7642868 () Bool)

(assert (=> b!6937042 m!7642868))

(assert (=> b!6937042 m!7642860))

(assert (=> b!6937042 m!7642868))

(assert (=> b!6937042 m!7642860))

(declare-fun m!7642870 () Bool)

(assert (=> b!6937042 m!7642870))

(declare-fun m!7642872 () Bool)

(assert (=> b!6937049 m!7642872))

(assert (=> b!6937048 m!7642860))

(assert (=> b!6937048 m!7642860))

(assert (=> b!6937048 m!7642862))

(assert (=> b!6937053 m!7642866))

(assert (=> b!6937045 m!7642866))

(assert (=> b!6936454 d!2167011))

(declare-fun b!6937072 () Bool)

(declare-fun e!4173555 () Bool)

(declare-fun e!4173550 () Bool)

(assert (=> b!6937072 (= e!4173555 e!4173550)))

(declare-fun c!1287291 () Bool)

(assert (=> b!6937072 (= c!1287291 ((_ is Union!16959) lt!2474666))))

(declare-fun call!630275 () Bool)

(declare-fun bm!630270 () Bool)

(declare-fun c!1287290 () Bool)

(assert (=> bm!630270 (= call!630275 (validRegex!8665 (ite c!1287290 (reg!17288 lt!2474666) (ite c!1287291 (regTwo!34431 lt!2474666) (regOne!34430 lt!2474666)))))))

(declare-fun b!6937073 () Bool)

(declare-fun res!2829572 () Bool)

(declare-fun e!4173551 () Bool)

(assert (=> b!6937073 (=> res!2829572 e!4173551)))

(assert (=> b!6937073 (= res!2829572 (not ((_ is Concat!25804) lt!2474666)))))

(assert (=> b!6937073 (= e!4173550 e!4173551)))

(declare-fun d!2167015 () Bool)

(declare-fun res!2829571 () Bool)

(declare-fun e!4173554 () Bool)

(assert (=> d!2167015 (=> res!2829571 e!4173554)))

(assert (=> d!2167015 (= res!2829571 ((_ is ElementMatch!16959) lt!2474666))))

(assert (=> d!2167015 (= (validRegex!8665 lt!2474666) e!4173554)))

(declare-fun bm!630271 () Bool)

(declare-fun call!630277 () Bool)

(assert (=> bm!630271 (= call!630277 call!630275)))

(declare-fun b!6937074 () Bool)

(declare-fun e!4173553 () Bool)

(assert (=> b!6937074 (= e!4173555 e!4173553)))

(declare-fun res!2829574 () Bool)

(assert (=> b!6937074 (= res!2829574 (not (nullable!6776 (reg!17288 lt!2474666))))))

(assert (=> b!6937074 (=> (not res!2829574) (not e!4173553))))

(declare-fun b!6937075 () Bool)

(declare-fun e!4173552 () Bool)

(declare-fun call!630276 () Bool)

(assert (=> b!6937075 (= e!4173552 call!630276)))

(declare-fun b!6937076 () Bool)

(assert (=> b!6937076 (= e!4173554 e!4173555)))

(assert (=> b!6937076 (= c!1287290 ((_ is Star!16959) lt!2474666))))

(declare-fun b!6937077 () Bool)

(declare-fun e!4173556 () Bool)

(assert (=> b!6937077 (= e!4173556 call!630277)))

(declare-fun b!6937078 () Bool)

(declare-fun res!2829575 () Bool)

(assert (=> b!6937078 (=> (not res!2829575) (not e!4173556))))

(assert (=> b!6937078 (= res!2829575 call!630276)))

(assert (=> b!6937078 (= e!4173550 e!4173556)))

(declare-fun bm!630272 () Bool)

(assert (=> bm!630272 (= call!630276 (validRegex!8665 (ite c!1287291 (regOne!34431 lt!2474666) (regTwo!34430 lt!2474666))))))

(declare-fun b!6937079 () Bool)

(assert (=> b!6937079 (= e!4173551 e!4173552)))

(declare-fun res!2829573 () Bool)

(assert (=> b!6937079 (=> (not res!2829573) (not e!4173552))))

(assert (=> b!6937079 (= res!2829573 call!630277)))

(declare-fun b!6937080 () Bool)

(assert (=> b!6937080 (= e!4173553 call!630275)))

(assert (= (and d!2167015 (not res!2829571)) b!6937076))

(assert (= (and b!6937076 c!1287290) b!6937074))

(assert (= (and b!6937076 (not c!1287290)) b!6937072))

(assert (= (and b!6937074 res!2829574) b!6937080))

(assert (= (and b!6937072 c!1287291) b!6937078))

(assert (= (and b!6937072 (not c!1287291)) b!6937073))

(assert (= (and b!6937078 res!2829575) b!6937077))

(assert (= (and b!6937073 (not res!2829572)) b!6937079))

(assert (= (and b!6937079 res!2829573) b!6937075))

(assert (= (or b!6937078 b!6937075) bm!630272))

(assert (= (or b!6937077 b!6937079) bm!630271))

(assert (= (or b!6937080 bm!630271) bm!630270))

(declare-fun m!7642874 () Bool)

(assert (=> bm!630270 m!7642874))

(declare-fun m!7642876 () Bool)

(assert (=> b!6937074 m!7642876))

(declare-fun m!7642878 () Bool)

(assert (=> bm!630272 m!7642878))

(assert (=> b!6936465 d!2167015))

(declare-fun b!6937081 () Bool)

(declare-fun e!4173562 () Bool)

(declare-fun e!4173557 () Bool)

(assert (=> b!6937081 (= e!4173562 e!4173557)))

(declare-fun c!1287293 () Bool)

(assert (=> b!6937081 (= c!1287293 ((_ is Union!16959) r2!6280))))

(declare-fun c!1287292 () Bool)

(declare-fun bm!630273 () Bool)

(declare-fun call!630278 () Bool)

(assert (=> bm!630273 (= call!630278 (validRegex!8665 (ite c!1287292 (reg!17288 r2!6280) (ite c!1287293 (regTwo!34431 r2!6280) (regOne!34430 r2!6280)))))))

(declare-fun b!6937082 () Bool)

(declare-fun res!2829577 () Bool)

(declare-fun e!4173558 () Bool)

(assert (=> b!6937082 (=> res!2829577 e!4173558)))

(assert (=> b!6937082 (= res!2829577 (not ((_ is Concat!25804) r2!6280)))))

(assert (=> b!6937082 (= e!4173557 e!4173558)))

(declare-fun d!2167017 () Bool)

(declare-fun res!2829576 () Bool)

(declare-fun e!4173561 () Bool)

(assert (=> d!2167017 (=> res!2829576 e!4173561)))

(assert (=> d!2167017 (= res!2829576 ((_ is ElementMatch!16959) r2!6280))))

(assert (=> d!2167017 (= (validRegex!8665 r2!6280) e!4173561)))

(declare-fun bm!630274 () Bool)

(declare-fun call!630280 () Bool)

(assert (=> bm!630274 (= call!630280 call!630278)))

(declare-fun b!6937083 () Bool)

(declare-fun e!4173560 () Bool)

(assert (=> b!6937083 (= e!4173562 e!4173560)))

(declare-fun res!2829579 () Bool)

(assert (=> b!6937083 (= res!2829579 (not (nullable!6776 (reg!17288 r2!6280))))))

(assert (=> b!6937083 (=> (not res!2829579) (not e!4173560))))

(declare-fun b!6937084 () Bool)

(declare-fun e!4173559 () Bool)

(declare-fun call!630279 () Bool)

(assert (=> b!6937084 (= e!4173559 call!630279)))

(declare-fun b!6937085 () Bool)

(assert (=> b!6937085 (= e!4173561 e!4173562)))

(assert (=> b!6937085 (= c!1287292 ((_ is Star!16959) r2!6280))))

(declare-fun b!6937086 () Bool)

(declare-fun e!4173563 () Bool)

(assert (=> b!6937086 (= e!4173563 call!630280)))

(declare-fun b!6937087 () Bool)

(declare-fun res!2829580 () Bool)

(assert (=> b!6937087 (=> (not res!2829580) (not e!4173563))))

(assert (=> b!6937087 (= res!2829580 call!630279)))

(assert (=> b!6937087 (= e!4173557 e!4173563)))

(declare-fun bm!630275 () Bool)

(assert (=> bm!630275 (= call!630279 (validRegex!8665 (ite c!1287293 (regOne!34431 r2!6280) (regTwo!34430 r2!6280))))))

(declare-fun b!6937088 () Bool)

(assert (=> b!6937088 (= e!4173558 e!4173559)))

(declare-fun res!2829578 () Bool)

(assert (=> b!6937088 (=> (not res!2829578) (not e!4173559))))

(assert (=> b!6937088 (= res!2829578 call!630280)))

(declare-fun b!6937089 () Bool)

(assert (=> b!6937089 (= e!4173560 call!630278)))

(assert (= (and d!2167017 (not res!2829576)) b!6937085))

(assert (= (and b!6937085 c!1287292) b!6937083))

(assert (= (and b!6937085 (not c!1287292)) b!6937081))

(assert (= (and b!6937083 res!2829579) b!6937089))

(assert (= (and b!6937081 c!1287293) b!6937087))

(assert (= (and b!6937081 (not c!1287293)) b!6937082))

(assert (= (and b!6937087 res!2829580) b!6937086))

(assert (= (and b!6937082 (not res!2829577)) b!6937088))

(assert (= (and b!6937088 res!2829578) b!6937084))

(assert (= (or b!6937087 b!6937084) bm!630275))

(assert (= (or b!6937086 b!6937088) bm!630274))

(assert (= (or b!6937089 bm!630274) bm!630273))

(declare-fun m!7642886 () Bool)

(assert (=> bm!630273 m!7642886))

(declare-fun m!7642888 () Bool)

(assert (=> b!6937083 m!7642888))

(declare-fun m!7642890 () Bool)

(assert (=> bm!630275 m!7642890))

(assert (=> b!6936456 d!2167017))

(declare-fun d!2167021 () Bool)

(assert (=> d!2167021 (= (matchR!9098 lt!2474648 (_2!37119 lt!2474644)) (matchRSpec!4016 lt!2474648 (_2!37119 lt!2474644)))))

(declare-fun lt!2474769 () Unit!160642)

(assert (=> d!2167021 (= lt!2474769 (choose!51669 lt!2474648 (_2!37119 lt!2474644)))))

(assert (=> d!2167021 (validRegex!8665 lt!2474648)))

(assert (=> d!2167021 (= (mainMatchTheorem!4016 lt!2474648 (_2!37119 lt!2474644)) lt!2474769)))

(declare-fun bs!1852837 () Bool)

(assert (= bs!1852837 d!2167021))

(assert (=> bs!1852837 m!7642348))

(assert (=> bs!1852837 m!7642290))

(declare-fun m!7642892 () Bool)

(assert (=> bs!1852837 m!7642892))

(assert (=> bs!1852837 m!7642864))

(assert (=> b!6936467 d!2167021))

(declare-fun d!2167023 () Bool)

(assert (=> d!2167023 (= (Exists!3959 lambda!394997) (choose!51673 lambda!394997))))

(declare-fun bs!1852838 () Bool)

(assert (= bs!1852838 d!2167023))

(declare-fun m!7642894 () Bool)

(assert (=> bs!1852838 m!7642894))

(assert (=> b!6936467 d!2167023))

(declare-fun bs!1852839 () Bool)

(declare-fun d!2167025 () Bool)

(assert (= bs!1852839 (and d!2167025 b!6936467)))

(declare-fun lambda!395053 () Int)

(assert (=> bs!1852839 (= lambda!395053 lambda!394997)))

(declare-fun bs!1852840 () Bool)

(assert (= bs!1852840 (and d!2167025 d!2166953)))

(assert (=> bs!1852840 (not (= lambda!395053 lambda!395043))))

(assert (=> bs!1852839 (not (= lambda!395053 lambda!394998))))

(declare-fun bs!1852841 () Bool)

(assert (= bs!1852841 (and d!2167025 b!6936999)))

(assert (=> bs!1852841 (not (= lambda!395053 lambda!395045))))

(declare-fun bs!1852842 () Bool)

(assert (= bs!1852842 (and d!2167025 b!6936463)))

(assert (=> bs!1852842 (= (and (= (_2!37119 lt!2474644) lt!2474663) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395053 lambda!394999))))

(declare-fun bs!1852843 () Bool)

(assert (= bs!1852843 (and d!2167025 b!6937012)))

(assert (=> bs!1852843 (not (= lambda!395053 lambda!395049))))

(assert (=> bs!1852842 (not (= lambda!395053 lambda!395000))))

(assert (=> bs!1852840 (= (and (= (_2!37119 lt!2474644) lt!2474663) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395053 lambda!395042))))

(declare-fun bs!1852844 () Bool)

(assert (= bs!1852844 (and d!2167025 b!6936468)))

(assert (=> bs!1852844 (= (and (= (_2!37119 lt!2474644) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2474648)) (= lambda!395053 lambda!394995))))

(declare-fun bs!1852845 () Bool)

(assert (= bs!1852845 (and d!2167025 b!6937001)))

(assert (=> bs!1852845 (not (= lambda!395053 lambda!395046))))

(declare-fun bs!1852846 () Bool)

(assert (= bs!1852846 (and d!2167025 b!6936698)))

(assert (=> bs!1852846 (not (= lambda!395053 lambda!395021))))

(declare-fun bs!1852847 () Bool)

(assert (= bs!1852847 (and d!2167025 b!6937010)))

(assert (=> bs!1852847 (not (= lambda!395053 lambda!395048))))

(declare-fun bs!1852848 () Bool)

(assert (= bs!1852848 (and d!2167025 b!6936696)))

(assert (=> bs!1852848 (not (= lambda!395053 lambda!395020))))

(declare-fun bs!1852849 () Bool)

(assert (= bs!1852849 (and d!2167025 d!2166933)))

(assert (=> bs!1852849 (= (and (= (_2!37119 lt!2474644) lt!2474663) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395053 lambda!395033))))

(assert (=> bs!1852844 (not (= lambda!395053 lambda!394996))))

(assert (=> d!2167025 true))

(assert (=> d!2167025 true))

(assert (=> d!2167025 true))

(assert (=> d!2167025 (= (isDefined!13429 (findConcatSeparation!3142 r2!6280 r3!135 Nil!66588 (_2!37119 lt!2474644) (_2!37119 lt!2474644))) (Exists!3959 lambda!395053))))

(declare-fun lt!2474770 () Unit!160642)

(assert (=> d!2167025 (= lt!2474770 (choose!51671 r2!6280 r3!135 (_2!37119 lt!2474644)))))

(assert (=> d!2167025 (validRegex!8665 r2!6280)))

(assert (=> d!2167025 (= (lemmaFindConcatSeparationEquivalentToExists!2900 r2!6280 r3!135 (_2!37119 lt!2474644)) lt!2474770)))

(declare-fun bs!1852850 () Bool)

(assert (= bs!1852850 d!2167025))

(assert (=> bs!1852850 m!7642278))

(assert (=> bs!1852850 m!7642278))

(declare-fun m!7642914 () Bool)

(assert (=> bs!1852850 m!7642914))

(declare-fun m!7642916 () Bool)

(assert (=> bs!1852850 m!7642916))

(declare-fun m!7642918 () Bool)

(assert (=> bs!1852850 m!7642918))

(assert (=> bs!1852850 m!7642324))

(assert (=> b!6936467 d!2167025))

(declare-fun d!2167029 () Bool)

(assert (=> d!2167029 (= (get!23375 lt!2474651) (v!52999 lt!2474651))))

(assert (=> b!6936467 d!2167029))

(declare-fun d!2167031 () Bool)

(assert (=> d!2167031 (= (isDefined!13429 lt!2474651) (not (isEmpty!38855 lt!2474651)))))

(declare-fun bs!1852851 () Bool)

(assert (= bs!1852851 d!2167031))

(declare-fun m!7642920 () Bool)

(assert (=> bs!1852851 m!7642920))

(assert (=> b!6936467 d!2167031))

(declare-fun bm!630280 () Bool)

(declare-fun call!630285 () Bool)

(assert (=> bm!630280 (= call!630285 (isEmpty!38853 (_1!37119 lt!2474658)))))

(declare-fun b!6937135 () Bool)

(declare-fun res!2829597 () Bool)

(declare-fun e!4173587 () Bool)

(assert (=> b!6937135 (=> (not res!2829597) (not e!4173587))))

(assert (=> b!6937135 (= res!2829597 (isEmpty!38853 (tail!12956 (_1!37119 lt!2474658))))))

(declare-fun b!6937136 () Bool)

(declare-fun res!2829595 () Bool)

(declare-fun e!4173589 () Bool)

(assert (=> b!6937136 (=> res!2829595 e!4173589)))

(assert (=> b!6937136 (= res!2829595 (not ((_ is ElementMatch!16959) r2!6280)))))

(declare-fun e!4173588 () Bool)

(assert (=> b!6937136 (= e!4173588 e!4173589)))

(declare-fun b!6937137 () Bool)

(declare-fun e!4173586 () Bool)

(assert (=> b!6937137 (= e!4173586 (matchR!9098 (derivativeStep!5451 r2!6280 (head!13904 (_1!37119 lt!2474658))) (tail!12956 (_1!37119 lt!2474658))))))

(declare-fun b!6937138 () Bool)

(declare-fun e!4173583 () Bool)

(assert (=> b!6937138 (= e!4173589 e!4173583)))

(declare-fun res!2829600 () Bool)

(assert (=> b!6937138 (=> (not res!2829600) (not e!4173583))))

(declare-fun lt!2474771 () Bool)

(assert (=> b!6937138 (= res!2829600 (not lt!2474771))))

(declare-fun b!6937140 () Bool)

(declare-fun res!2829596 () Bool)

(assert (=> b!6937140 (=> (not res!2829596) (not e!4173587))))

(assert (=> b!6937140 (= res!2829596 (not call!630285))))

(declare-fun b!6937142 () Bool)

(assert (=> b!6937142 (= e!4173587 (= (head!13904 (_1!37119 lt!2474658)) (c!1287149 r2!6280)))))

(declare-fun b!6937144 () Bool)

(declare-fun e!4173585 () Bool)

(assert (=> b!6937144 (= e!4173585 e!4173588)))

(declare-fun c!1287299 () Bool)

(assert (=> b!6937144 (= c!1287299 ((_ is EmptyLang!16959) r2!6280))))

(declare-fun b!6937146 () Bool)

(declare-fun e!4173584 () Bool)

(assert (=> b!6937146 (= e!4173583 e!4173584)))

(declare-fun res!2829601 () Bool)

(assert (=> b!6937146 (=> res!2829601 e!4173584)))

(assert (=> b!6937146 (= res!2829601 call!630285)))

(declare-fun b!6937148 () Bool)

(assert (=> b!6937148 (= e!4173586 (nullable!6776 r2!6280))))

(declare-fun b!6937149 () Bool)

(assert (=> b!6937149 (= e!4173588 (not lt!2474771))))

(declare-fun b!6937150 () Bool)

(assert (=> b!6937150 (= e!4173585 (= lt!2474771 call!630285))))

(declare-fun b!6937151 () Bool)

(declare-fun res!2829594 () Bool)

(assert (=> b!6937151 (=> res!2829594 e!4173589)))

(assert (=> b!6937151 (= res!2829594 e!4173587)))

(declare-fun res!2829598 () Bool)

(assert (=> b!6937151 (=> (not res!2829598) (not e!4173587))))

(assert (=> b!6937151 (= res!2829598 lt!2474771)))

(declare-fun b!6937152 () Bool)

(assert (=> b!6937152 (= e!4173584 (not (= (head!13904 (_1!37119 lt!2474658)) (c!1287149 r2!6280))))))

(declare-fun b!6937147 () Bool)

(declare-fun res!2829599 () Bool)

(assert (=> b!6937147 (=> res!2829599 e!4173584)))

(assert (=> b!6937147 (= res!2829599 (not (isEmpty!38853 (tail!12956 (_1!37119 lt!2474658)))))))

(declare-fun d!2167033 () Bool)

(assert (=> d!2167033 e!4173585))

(declare-fun c!1287300 () Bool)

(assert (=> d!2167033 (= c!1287300 ((_ is EmptyExpr!16959) r2!6280))))

(assert (=> d!2167033 (= lt!2474771 e!4173586)))

(declare-fun c!1287301 () Bool)

(assert (=> d!2167033 (= c!1287301 (isEmpty!38853 (_1!37119 lt!2474658)))))

(assert (=> d!2167033 (validRegex!8665 r2!6280)))

(assert (=> d!2167033 (= (matchR!9098 r2!6280 (_1!37119 lt!2474658)) lt!2474771)))

(assert (= (and d!2167033 c!1287301) b!6937148))

(assert (= (and d!2167033 (not c!1287301)) b!6937137))

(assert (= (and d!2167033 c!1287300) b!6937150))

(assert (= (and d!2167033 (not c!1287300)) b!6937144))

(assert (= (and b!6937144 c!1287299) b!6937149))

(assert (= (and b!6937144 (not c!1287299)) b!6937136))

(assert (= (and b!6937136 (not res!2829595)) b!6937151))

(assert (= (and b!6937151 res!2829598) b!6937140))

(assert (= (and b!6937140 res!2829596) b!6937135))

(assert (= (and b!6937135 res!2829597) b!6937142))

(assert (= (and b!6937151 (not res!2829594)) b!6937138))

(assert (= (and b!6937138 res!2829600) b!6937146))

(assert (= (and b!6937146 (not res!2829601)) b!6937147))

(assert (= (and b!6937147 (not res!2829599)) b!6937152))

(assert (= (or b!6937150 b!6937140 b!6937146) bm!630280))

(declare-fun m!7642922 () Bool)

(assert (=> bm!630280 m!7642922))

(declare-fun m!7642924 () Bool)

(assert (=> b!6937135 m!7642924))

(assert (=> b!6937135 m!7642924))

(declare-fun m!7642926 () Bool)

(assert (=> b!6937135 m!7642926))

(assert (=> d!2167033 m!7642922))

(assert (=> d!2167033 m!7642324))

(declare-fun m!7642928 () Bool)

(assert (=> b!6937137 m!7642928))

(assert (=> b!6937137 m!7642928))

(declare-fun m!7642930 () Bool)

(assert (=> b!6937137 m!7642930))

(assert (=> b!6937137 m!7642924))

(assert (=> b!6937137 m!7642930))

(assert (=> b!6937137 m!7642924))

(declare-fun m!7642932 () Bool)

(assert (=> b!6937137 m!7642932))

(declare-fun m!7642934 () Bool)

(assert (=> b!6937148 m!7642934))

(assert (=> b!6937147 m!7642924))

(assert (=> b!6937147 m!7642924))

(assert (=> b!6937147 m!7642926))

(assert (=> b!6937152 m!7642928))

(assert (=> b!6937142 m!7642928))

(assert (=> b!6936467 d!2167033))

(declare-fun b!6937180 () Bool)

(declare-fun res!2829602 () Bool)

(declare-fun e!4173597 () Bool)

(assert (=> b!6937180 (=> (not res!2829602) (not e!4173597))))

(declare-fun lt!2474773 () Option!16728)

(assert (=> b!6937180 (= res!2829602 (matchR!9098 r2!6280 (_1!37119 (get!23375 lt!2474773))))))

(declare-fun d!2167035 () Bool)

(declare-fun e!4173600 () Bool)

(assert (=> d!2167035 e!4173600))

(declare-fun res!2829604 () Bool)

(assert (=> d!2167035 (=> res!2829604 e!4173600)))

(assert (=> d!2167035 (= res!2829604 e!4173597)))

(declare-fun res!2829603 () Bool)

(assert (=> d!2167035 (=> (not res!2829603) (not e!4173597))))

(assert (=> d!2167035 (= res!2829603 (isDefined!13429 lt!2474773))))

(declare-fun e!4173602 () Option!16728)

(assert (=> d!2167035 (= lt!2474773 e!4173602)))

(declare-fun c!1287303 () Bool)

(declare-fun e!4173599 () Bool)

(assert (=> d!2167035 (= c!1287303 e!4173599)))

(declare-fun res!2829605 () Bool)

(assert (=> d!2167035 (=> (not res!2829605) (not e!4173599))))

(assert (=> d!2167035 (= res!2829605 (matchR!9098 r2!6280 Nil!66588))))

(assert (=> d!2167035 (validRegex!8665 r2!6280)))

(assert (=> d!2167035 (= (findConcatSeparation!3142 r2!6280 r3!135 Nil!66588 (_2!37119 lt!2474644) (_2!37119 lt!2474644)) lt!2474773)))

(declare-fun b!6937182 () Bool)

(assert (=> b!6937182 (= e!4173602 (Some!16727 (tuple2!67633 Nil!66588 (_2!37119 lt!2474644))))))

(declare-fun b!6937183 () Bool)

(declare-fun res!2829606 () Bool)

(assert (=> b!6937183 (=> (not res!2829606) (not e!4173597))))

(assert (=> b!6937183 (= res!2829606 (matchR!9098 r3!135 (_2!37119 (get!23375 lt!2474773))))))

(declare-fun b!6937184 () Bool)

(declare-fun e!4173598 () Option!16728)

(assert (=> b!6937184 (= e!4173602 e!4173598)))

(declare-fun c!1287302 () Bool)

(assert (=> b!6937184 (= c!1287302 ((_ is Nil!66588) (_2!37119 lt!2474644)))))

(declare-fun b!6937185 () Bool)

(assert (=> b!6937185 (= e!4173597 (= (++!14998 (_1!37119 (get!23375 lt!2474773)) (_2!37119 (get!23375 lt!2474773))) (_2!37119 lt!2474644)))))

(declare-fun b!6937186 () Bool)

(declare-fun lt!2474774 () Unit!160642)

(declare-fun lt!2474772 () Unit!160642)

(assert (=> b!6937186 (= lt!2474774 lt!2474772)))

(assert (=> b!6937186 (= (++!14998 (++!14998 Nil!66588 (Cons!66588 (h!73036 (_2!37119 lt!2474644)) Nil!66588)) (t!380455 (_2!37119 lt!2474644))) (_2!37119 lt!2474644))))

(assert (=> b!6937186 (= lt!2474772 (lemmaMoveElementToOtherListKeepsConcatEq!2855 Nil!66588 (h!73036 (_2!37119 lt!2474644)) (t!380455 (_2!37119 lt!2474644)) (_2!37119 lt!2474644)))))

(assert (=> b!6937186 (= e!4173598 (findConcatSeparation!3142 r2!6280 r3!135 (++!14998 Nil!66588 (Cons!66588 (h!73036 (_2!37119 lt!2474644)) Nil!66588)) (t!380455 (_2!37119 lt!2474644)) (_2!37119 lt!2474644)))))

(declare-fun b!6937187 () Bool)

(assert (=> b!6937187 (= e!4173598 None!16727)))

(declare-fun b!6937188 () Bool)

(assert (=> b!6937188 (= e!4173600 (not (isDefined!13429 lt!2474773)))))

(declare-fun b!6937189 () Bool)

(assert (=> b!6937189 (= e!4173599 (matchR!9098 r3!135 (_2!37119 lt!2474644)))))

(assert (= (and d!2167035 res!2829605) b!6937189))

(assert (= (and d!2167035 c!1287303) b!6937182))

(assert (= (and d!2167035 (not c!1287303)) b!6937184))

(assert (= (and b!6937184 c!1287302) b!6937187))

(assert (= (and b!6937184 (not c!1287302)) b!6937186))

(assert (= (and d!2167035 res!2829603) b!6937180))

(assert (= (and b!6937180 res!2829602) b!6937183))

(assert (= (and b!6937183 res!2829606) b!6937185))

(assert (= (and d!2167035 (not res!2829604)) b!6937188))

(declare-fun m!7642936 () Bool)

(assert (=> d!2167035 m!7642936))

(declare-fun m!7642938 () Bool)

(assert (=> d!2167035 m!7642938))

(assert (=> d!2167035 m!7642324))

(declare-fun m!7642940 () Bool)

(assert (=> b!6937186 m!7642940))

(assert (=> b!6937186 m!7642940))

(declare-fun m!7642942 () Bool)

(assert (=> b!6937186 m!7642942))

(declare-fun m!7642944 () Bool)

(assert (=> b!6937186 m!7642944))

(assert (=> b!6937186 m!7642940))

(declare-fun m!7642946 () Bool)

(assert (=> b!6937186 m!7642946))

(declare-fun m!7642948 () Bool)

(assert (=> b!6937185 m!7642948))

(declare-fun m!7642950 () Bool)

(assert (=> b!6937185 m!7642950))

(declare-fun m!7642952 () Bool)

(assert (=> b!6937189 m!7642952))

(assert (=> b!6937183 m!7642948))

(declare-fun m!7642954 () Bool)

(assert (=> b!6937183 m!7642954))

(assert (=> b!6937188 m!7642936))

(assert (=> b!6937180 m!7642948))

(declare-fun m!7642956 () Bool)

(assert (=> b!6937180 m!7642956))

(assert (=> b!6936467 d!2167035))

(declare-fun d!2167037 () Bool)

(assert (=> d!2167037 (= (Exists!3959 lambda!394998) (choose!51673 lambda!394998))))

(declare-fun bs!1852852 () Bool)

(assert (= bs!1852852 d!2167037))

(declare-fun m!7642958 () Bool)

(assert (=> bs!1852852 m!7642958))

(assert (=> b!6936467 d!2167037))

(declare-fun bs!1852853 () Bool)

(declare-fun d!2167039 () Bool)

(assert (= bs!1852853 (and d!2167039 b!6936467)))

(declare-fun lambda!395054 () Int)

(assert (=> bs!1852853 (= lambda!395054 lambda!394997)))

(declare-fun bs!1852854 () Bool)

(assert (= bs!1852854 (and d!2167039 d!2166953)))

(assert (=> bs!1852854 (not (= lambda!395054 lambda!395043))))

(assert (=> bs!1852853 (not (= lambda!395054 lambda!394998))))

(declare-fun bs!1852855 () Bool)

(assert (= bs!1852855 (and d!2167039 d!2167025)))

(assert (=> bs!1852855 (= lambda!395054 lambda!395053)))

(declare-fun bs!1852856 () Bool)

(assert (= bs!1852856 (and d!2167039 b!6936999)))

(assert (=> bs!1852856 (not (= lambda!395054 lambda!395045))))

(declare-fun bs!1852857 () Bool)

(assert (= bs!1852857 (and d!2167039 b!6936463)))

(assert (=> bs!1852857 (= (and (= (_2!37119 lt!2474644) lt!2474663) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395054 lambda!394999))))

(declare-fun bs!1852858 () Bool)

(assert (= bs!1852858 (and d!2167039 b!6937012)))

(assert (=> bs!1852858 (not (= lambda!395054 lambda!395049))))

(assert (=> bs!1852857 (not (= lambda!395054 lambda!395000))))

(assert (=> bs!1852854 (= (and (= (_2!37119 lt!2474644) lt!2474663) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395054 lambda!395042))))

(declare-fun bs!1852859 () Bool)

(assert (= bs!1852859 (and d!2167039 b!6936468)))

(assert (=> bs!1852859 (= (and (= (_2!37119 lt!2474644) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2474648)) (= lambda!395054 lambda!394995))))

(declare-fun bs!1852860 () Bool)

(assert (= bs!1852860 (and d!2167039 b!6937001)))

(assert (=> bs!1852860 (not (= lambda!395054 lambda!395046))))

(declare-fun bs!1852861 () Bool)

(assert (= bs!1852861 (and d!2167039 b!6936698)))

(assert (=> bs!1852861 (not (= lambda!395054 lambda!395021))))

(declare-fun bs!1852862 () Bool)

(assert (= bs!1852862 (and d!2167039 b!6937010)))

(assert (=> bs!1852862 (not (= lambda!395054 lambda!395048))))

(declare-fun bs!1852863 () Bool)

(assert (= bs!1852863 (and d!2167039 b!6936696)))

(assert (=> bs!1852863 (not (= lambda!395054 lambda!395020))))

(declare-fun bs!1852864 () Bool)

(assert (= bs!1852864 (and d!2167039 d!2166933)))

(assert (=> bs!1852864 (= (and (= (_2!37119 lt!2474644) lt!2474663) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395054 lambda!395033))))

(assert (=> bs!1852859 (not (= lambda!395054 lambda!394996))))

(assert (=> d!2167039 true))

(assert (=> d!2167039 true))

(assert (=> d!2167039 true))

(declare-fun lambda!395055 () Int)

(assert (=> bs!1852853 (not (= lambda!395055 lambda!394997))))

(assert (=> bs!1852854 (= (and (= (_2!37119 lt!2474644) lt!2474663) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395055 lambda!395043))))

(assert (=> bs!1852853 (= lambda!395055 lambda!394998)))

(assert (=> bs!1852855 (not (= lambda!395055 lambda!395053))))

(declare-fun bs!1852865 () Bool)

(assert (= bs!1852865 d!2167039))

(assert (=> bs!1852865 (not (= lambda!395055 lambda!395054))))

(assert (=> bs!1852856 (not (= lambda!395055 lambda!395045))))

(assert (=> bs!1852857 (not (= lambda!395055 lambda!394999))))

(assert (=> bs!1852858 (= (and (= (_2!37119 lt!2474644) s!14361) (= r2!6280 (regOne!34430 lt!2474657)) (= r3!135 (regTwo!34430 lt!2474657))) (= lambda!395055 lambda!395049))))

(assert (=> bs!1852857 (= (and (= (_2!37119 lt!2474644) lt!2474663) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395055 lambda!395000))))

(assert (=> bs!1852854 (not (= lambda!395055 lambda!395042))))

(assert (=> bs!1852859 (not (= lambda!395055 lambda!394995))))

(assert (=> bs!1852860 (= (and (= (_2!37119 lt!2474644) s!14361) (= r2!6280 (regOne!34430 lt!2474652)) (= r3!135 (regTwo!34430 lt!2474652))) (= lambda!395055 lambda!395046))))

(assert (=> bs!1852861 (= (and (= (_2!37119 lt!2474644) lt!2474663) (= r2!6280 (regOne!34430 lt!2474666)) (= r3!135 (regTwo!34430 lt!2474666))) (= lambda!395055 lambda!395021))))

(assert (=> bs!1852862 (not (= lambda!395055 lambda!395048))))

(assert (=> bs!1852863 (not (= lambda!395055 lambda!395020))))

(assert (=> bs!1852864 (not (= lambda!395055 lambda!395033))))

(assert (=> bs!1852859 (= (and (= (_2!37119 lt!2474644) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2474648)) (= lambda!395055 lambda!394996))))

(assert (=> d!2167039 true))

(assert (=> d!2167039 true))

(assert (=> d!2167039 true))

(assert (=> d!2167039 (= (Exists!3959 lambda!395054) (Exists!3959 lambda!395055))))

(declare-fun lt!2474775 () Unit!160642)

(assert (=> d!2167039 (= lt!2474775 (choose!51672 r2!6280 r3!135 (_2!37119 lt!2474644)))))

(assert (=> d!2167039 (validRegex!8665 r2!6280)))

(assert (=> d!2167039 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2420 r2!6280 r3!135 (_2!37119 lt!2474644)) lt!2474775)))

(declare-fun m!7642960 () Bool)

(assert (=> bs!1852865 m!7642960))

(declare-fun m!7642962 () Bool)

(assert (=> bs!1852865 m!7642962))

(declare-fun m!7642964 () Bool)

(assert (=> bs!1852865 m!7642964))

(assert (=> bs!1852865 m!7642324))

(assert (=> b!6936467 d!2167039))

(declare-fun bs!1852866 () Bool)

(declare-fun b!6937215 () Bool)

(assert (= bs!1852866 (and b!6937215 b!6936467)))

(declare-fun lambda!395056 () Int)

(assert (=> bs!1852866 (not (= lambda!395056 lambda!394997))))

(declare-fun bs!1852867 () Bool)

(assert (= bs!1852867 (and b!6937215 d!2166953)))

(assert (=> bs!1852867 (not (= lambda!395056 lambda!395043))))

(assert (=> bs!1852866 (not (= lambda!395056 lambda!394998))))

(declare-fun bs!1852868 () Bool)

(assert (= bs!1852868 (and b!6937215 d!2167025)))

(assert (=> bs!1852868 (not (= lambda!395056 lambda!395053))))

(declare-fun bs!1852869 () Bool)

(assert (= bs!1852869 (and b!6937215 d!2167039)))

(assert (=> bs!1852869 (not (= lambda!395056 lambda!395054))))

(assert (=> bs!1852869 (not (= lambda!395056 lambda!395055))))

(declare-fun bs!1852870 () Bool)

(assert (= bs!1852870 (and b!6937215 b!6936999)))

(assert (=> bs!1852870 (= (and (= (_2!37119 lt!2474644) s!14361) (= (reg!17288 lt!2474648) (reg!17288 lt!2474652)) (= lt!2474648 lt!2474652)) (= lambda!395056 lambda!395045))))

(declare-fun bs!1852871 () Bool)

(assert (= bs!1852871 (and b!6937215 b!6936463)))

(assert (=> bs!1852871 (not (= lambda!395056 lambda!394999))))

(declare-fun bs!1852872 () Bool)

(assert (= bs!1852872 (and b!6937215 b!6937012)))

(assert (=> bs!1852872 (not (= lambda!395056 lambda!395049))))

(assert (=> bs!1852871 (not (= lambda!395056 lambda!395000))))

(assert (=> bs!1852867 (not (= lambda!395056 lambda!395042))))

(declare-fun bs!1852873 () Bool)

(assert (= bs!1852873 (and b!6937215 b!6936468)))

(assert (=> bs!1852873 (not (= lambda!395056 lambda!394995))))

(declare-fun bs!1852874 () Bool)

(assert (= bs!1852874 (and b!6937215 b!6937001)))

(assert (=> bs!1852874 (not (= lambda!395056 lambda!395046))))

(declare-fun bs!1852875 () Bool)

(assert (= bs!1852875 (and b!6937215 b!6936698)))

(assert (=> bs!1852875 (not (= lambda!395056 lambda!395021))))

(declare-fun bs!1852876 () Bool)

(assert (= bs!1852876 (and b!6937215 b!6937010)))

(assert (=> bs!1852876 (= (and (= (_2!37119 lt!2474644) s!14361) (= (reg!17288 lt!2474648) (reg!17288 lt!2474657)) (= lt!2474648 lt!2474657)) (= lambda!395056 lambda!395048))))

(declare-fun bs!1852877 () Bool)

(assert (= bs!1852877 (and b!6937215 b!6936696)))

(assert (=> bs!1852877 (= (and (= (_2!37119 lt!2474644) lt!2474663) (= (reg!17288 lt!2474648) (reg!17288 lt!2474666)) (= lt!2474648 lt!2474666)) (= lambda!395056 lambda!395020))))

(declare-fun bs!1852878 () Bool)

(assert (= bs!1852878 (and b!6937215 d!2166933)))

(assert (=> bs!1852878 (not (= lambda!395056 lambda!395033))))

(assert (=> bs!1852873 (not (= lambda!395056 lambda!394996))))

(assert (=> b!6937215 true))

(assert (=> b!6937215 true))

(declare-fun bs!1852879 () Bool)

(declare-fun b!6937217 () Bool)

(assert (= bs!1852879 (and b!6937217 b!6936467)))

(declare-fun lambda!395057 () Int)

(assert (=> bs!1852879 (not (= lambda!395057 lambda!394997))))

(declare-fun bs!1852880 () Bool)

(assert (= bs!1852880 (and b!6937217 d!2166953)))

(assert (=> bs!1852880 (= (and (= (_2!37119 lt!2474644) lt!2474663) (= (regOne!34430 lt!2474648) r1!6342) (= (regTwo!34430 lt!2474648) r2!6280)) (= lambda!395057 lambda!395043))))

(assert (=> bs!1852879 (= (and (= (regOne!34430 lt!2474648) r2!6280) (= (regTwo!34430 lt!2474648) r3!135)) (= lambda!395057 lambda!394998))))

(declare-fun bs!1852881 () Bool)

(assert (= bs!1852881 (and b!6937217 d!2167025)))

(assert (=> bs!1852881 (not (= lambda!395057 lambda!395053))))

(declare-fun bs!1852882 () Bool)

(assert (= bs!1852882 (and b!6937217 d!2167039)))

(assert (=> bs!1852882 (not (= lambda!395057 lambda!395054))))

(assert (=> bs!1852882 (= (and (= (regOne!34430 lt!2474648) r2!6280) (= (regTwo!34430 lt!2474648) r3!135)) (= lambda!395057 lambda!395055))))

(declare-fun bs!1852883 () Bool)

(assert (= bs!1852883 (and b!6937217 b!6937215)))

(assert (=> bs!1852883 (not (= lambda!395057 lambda!395056))))

(declare-fun bs!1852884 () Bool)

(assert (= bs!1852884 (and b!6937217 b!6936999)))

(assert (=> bs!1852884 (not (= lambda!395057 lambda!395045))))

(declare-fun bs!1852885 () Bool)

(assert (= bs!1852885 (and b!6937217 b!6936463)))

(assert (=> bs!1852885 (not (= lambda!395057 lambda!394999))))

(declare-fun bs!1852886 () Bool)

(assert (= bs!1852886 (and b!6937217 b!6937012)))

(assert (=> bs!1852886 (= (and (= (_2!37119 lt!2474644) s!14361) (= (regOne!34430 lt!2474648) (regOne!34430 lt!2474657)) (= (regTwo!34430 lt!2474648) (regTwo!34430 lt!2474657))) (= lambda!395057 lambda!395049))))

(assert (=> bs!1852885 (= (and (= (_2!37119 lt!2474644) lt!2474663) (= (regOne!34430 lt!2474648) r1!6342) (= (regTwo!34430 lt!2474648) r2!6280)) (= lambda!395057 lambda!395000))))

(assert (=> bs!1852880 (not (= lambda!395057 lambda!395042))))

(declare-fun bs!1852887 () Bool)

(assert (= bs!1852887 (and b!6937217 b!6936468)))

(assert (=> bs!1852887 (not (= lambda!395057 lambda!394995))))

(declare-fun bs!1852888 () Bool)

(assert (= bs!1852888 (and b!6937217 b!6937001)))

(assert (=> bs!1852888 (= (and (= (_2!37119 lt!2474644) s!14361) (= (regOne!34430 lt!2474648) (regOne!34430 lt!2474652)) (= (regTwo!34430 lt!2474648) (regTwo!34430 lt!2474652))) (= lambda!395057 lambda!395046))))

(declare-fun bs!1852889 () Bool)

(assert (= bs!1852889 (and b!6937217 b!6936698)))

(assert (=> bs!1852889 (= (and (= (_2!37119 lt!2474644) lt!2474663) (= (regOne!34430 lt!2474648) (regOne!34430 lt!2474666)) (= (regTwo!34430 lt!2474648) (regTwo!34430 lt!2474666))) (= lambda!395057 lambda!395021))))

(declare-fun bs!1852890 () Bool)

(assert (= bs!1852890 (and b!6937217 b!6937010)))

(assert (=> bs!1852890 (not (= lambda!395057 lambda!395048))))

(declare-fun bs!1852891 () Bool)

(assert (= bs!1852891 (and b!6937217 b!6936696)))

(assert (=> bs!1852891 (not (= lambda!395057 lambda!395020))))

(declare-fun bs!1852892 () Bool)

(assert (= bs!1852892 (and b!6937217 d!2166933)))

(assert (=> bs!1852892 (not (= lambda!395057 lambda!395033))))

(assert (=> bs!1852887 (= (and (= (_2!37119 lt!2474644) s!14361) (= (regOne!34430 lt!2474648) r1!6342) (= (regTwo!34430 lt!2474648) lt!2474648)) (= lambda!395057 lambda!394996))))

(assert (=> b!6937217 true))

(assert (=> b!6937217 true))

(declare-fun b!6937211 () Bool)

(declare-fun c!1287305 () Bool)

(assert (=> b!6937211 (= c!1287305 ((_ is Union!16959) lt!2474648))))

(declare-fun e!4173616 () Bool)

(declare-fun e!4173610 () Bool)

(assert (=> b!6937211 (= e!4173616 e!4173610)))

(declare-fun b!6937212 () Bool)

(assert (=> b!6937212 (= e!4173616 (= (_2!37119 lt!2474644) (Cons!66588 (c!1287149 lt!2474648) Nil!66588)))))

(declare-fun d!2167041 () Bool)

(declare-fun c!1287304 () Bool)

(assert (=> d!2167041 (= c!1287304 ((_ is EmptyExpr!16959) lt!2474648))))

(declare-fun e!4173611 () Bool)

(assert (=> d!2167041 (= (matchRSpec!4016 lt!2474648 (_2!37119 lt!2474644)) e!4173611)))

(declare-fun b!6937213 () Bool)

(declare-fun e!4173612 () Bool)

(assert (=> b!6937213 (= e!4173610 e!4173612)))

(declare-fun c!1287306 () Bool)

(assert (=> b!6937213 (= c!1287306 ((_ is Star!16959) lt!2474648))))

(declare-fun b!6937214 () Bool)

(declare-fun e!4173615 () Bool)

(assert (=> b!6937214 (= e!4173615 (matchRSpec!4016 (regTwo!34431 lt!2474648) (_2!37119 lt!2474644)))))

(declare-fun e!4173614 () Bool)

(declare-fun call!630286 () Bool)

(assert (=> b!6937215 (= e!4173614 call!630286)))

(declare-fun b!6937216 () Bool)

(assert (=> b!6937216 (= e!4173610 e!4173615)))

(declare-fun res!2829608 () Bool)

(assert (=> b!6937216 (= res!2829608 (matchRSpec!4016 (regOne!34431 lt!2474648) (_2!37119 lt!2474644)))))

(assert (=> b!6937216 (=> res!2829608 e!4173615)))

(assert (=> b!6937217 (= e!4173612 call!630286)))

(declare-fun b!6937218 () Bool)

(declare-fun call!630287 () Bool)

(assert (=> b!6937218 (= e!4173611 call!630287)))

(declare-fun b!6937219 () Bool)

(declare-fun res!2829607 () Bool)

(assert (=> b!6937219 (=> res!2829607 e!4173614)))

(assert (=> b!6937219 (= res!2829607 call!630287)))

(assert (=> b!6937219 (= e!4173612 e!4173614)))

(declare-fun bm!630281 () Bool)

(assert (=> bm!630281 (= call!630286 (Exists!3959 (ite c!1287306 lambda!395056 lambda!395057)))))

(declare-fun b!6937220 () Bool)

(declare-fun c!1287307 () Bool)

(assert (=> b!6937220 (= c!1287307 ((_ is ElementMatch!16959) lt!2474648))))

(declare-fun e!4173613 () Bool)

(assert (=> b!6937220 (= e!4173613 e!4173616)))

(declare-fun bm!630282 () Bool)

(assert (=> bm!630282 (= call!630287 (isEmpty!38853 (_2!37119 lt!2474644)))))

(declare-fun b!6937221 () Bool)

(assert (=> b!6937221 (= e!4173611 e!4173613)))

(declare-fun res!2829609 () Bool)

(assert (=> b!6937221 (= res!2829609 (not ((_ is EmptyLang!16959) lt!2474648)))))

(assert (=> b!6937221 (=> (not res!2829609) (not e!4173613))))

(assert (= (and d!2167041 c!1287304) b!6937218))

(assert (= (and d!2167041 (not c!1287304)) b!6937221))

(assert (= (and b!6937221 res!2829609) b!6937220))

(assert (= (and b!6937220 c!1287307) b!6937212))

(assert (= (and b!6937220 (not c!1287307)) b!6937211))

(assert (= (and b!6937211 c!1287305) b!6937216))

(assert (= (and b!6937211 (not c!1287305)) b!6937213))

(assert (= (and b!6937216 (not res!2829608)) b!6937214))

(assert (= (and b!6937213 c!1287306) b!6937219))

(assert (= (and b!6937213 (not c!1287306)) b!6937217))

(assert (= (and b!6937219 (not res!2829607)) b!6937215))

(assert (= (or b!6937215 b!6937217) bm!630281))

(assert (= (or b!6937218 b!6937219) bm!630282))

(declare-fun m!7642966 () Bool)

(assert (=> b!6937214 m!7642966))

(declare-fun m!7642968 () Bool)

(assert (=> b!6937216 m!7642968))

(declare-fun m!7642970 () Bool)

(assert (=> bm!630281 m!7642970))

(assert (=> bm!630282 m!7642858))

(assert (=> b!6936467 d!2167041))

(declare-fun bs!1852893 () Bool)

(declare-fun b!6937226 () Bool)

(assert (= bs!1852893 (and b!6937226 b!6936467)))

(declare-fun lambda!395058 () Int)

(assert (=> bs!1852893 (not (= lambda!395058 lambda!394997))))

(declare-fun bs!1852894 () Bool)

(assert (= bs!1852894 (and b!6937226 b!6937217)))

(assert (=> bs!1852894 (not (= lambda!395058 lambda!395057))))

(declare-fun bs!1852895 () Bool)

(assert (= bs!1852895 (and b!6937226 d!2166953)))

(assert (=> bs!1852895 (not (= lambda!395058 lambda!395043))))

(assert (=> bs!1852893 (not (= lambda!395058 lambda!394998))))

(declare-fun bs!1852896 () Bool)

(assert (= bs!1852896 (and b!6937226 d!2167025)))

(assert (=> bs!1852896 (not (= lambda!395058 lambda!395053))))

(declare-fun bs!1852897 () Bool)

(assert (= bs!1852897 (and b!6937226 d!2167039)))

(assert (=> bs!1852897 (not (= lambda!395058 lambda!395054))))

(assert (=> bs!1852897 (not (= lambda!395058 lambda!395055))))

(declare-fun bs!1852898 () Bool)

(assert (= bs!1852898 (and b!6937226 b!6937215)))

(assert (=> bs!1852898 (= (and (= (_1!37119 lt!2474644) (_2!37119 lt!2474644)) (= (reg!17288 r1!6342) (reg!17288 lt!2474648)) (= r1!6342 lt!2474648)) (= lambda!395058 lambda!395056))))

(declare-fun bs!1852899 () Bool)

(assert (= bs!1852899 (and b!6937226 b!6936999)))

(assert (=> bs!1852899 (= (and (= (_1!37119 lt!2474644) s!14361) (= (reg!17288 r1!6342) (reg!17288 lt!2474652)) (= r1!6342 lt!2474652)) (= lambda!395058 lambda!395045))))

(declare-fun bs!1852900 () Bool)

(assert (= bs!1852900 (and b!6937226 b!6936463)))

(assert (=> bs!1852900 (not (= lambda!395058 lambda!394999))))

(declare-fun bs!1852901 () Bool)

(assert (= bs!1852901 (and b!6937226 b!6937012)))

(assert (=> bs!1852901 (not (= lambda!395058 lambda!395049))))

(assert (=> bs!1852900 (not (= lambda!395058 lambda!395000))))

(assert (=> bs!1852895 (not (= lambda!395058 lambda!395042))))

(declare-fun bs!1852902 () Bool)

(assert (= bs!1852902 (and b!6937226 b!6936468)))

(assert (=> bs!1852902 (not (= lambda!395058 lambda!394995))))

(declare-fun bs!1852903 () Bool)

(assert (= bs!1852903 (and b!6937226 b!6937001)))

(assert (=> bs!1852903 (not (= lambda!395058 lambda!395046))))

(declare-fun bs!1852904 () Bool)

(assert (= bs!1852904 (and b!6937226 b!6936698)))

(assert (=> bs!1852904 (not (= lambda!395058 lambda!395021))))

(declare-fun bs!1852905 () Bool)

(assert (= bs!1852905 (and b!6937226 b!6937010)))

(assert (=> bs!1852905 (= (and (= (_1!37119 lt!2474644) s!14361) (= (reg!17288 r1!6342) (reg!17288 lt!2474657)) (= r1!6342 lt!2474657)) (= lambda!395058 lambda!395048))))

(declare-fun bs!1852906 () Bool)

(assert (= bs!1852906 (and b!6937226 b!6936696)))

(assert (=> bs!1852906 (= (and (= (_1!37119 lt!2474644) lt!2474663) (= (reg!17288 r1!6342) (reg!17288 lt!2474666)) (= r1!6342 lt!2474666)) (= lambda!395058 lambda!395020))))

(declare-fun bs!1852907 () Bool)

(assert (= bs!1852907 (and b!6937226 d!2166933)))

(assert (=> bs!1852907 (not (= lambda!395058 lambda!395033))))

(assert (=> bs!1852902 (not (= lambda!395058 lambda!394996))))

(assert (=> b!6937226 true))

(assert (=> b!6937226 true))

(declare-fun bs!1852908 () Bool)

(declare-fun b!6937228 () Bool)

(assert (= bs!1852908 (and b!6937228 b!6936467)))

(declare-fun lambda!395059 () Int)

(assert (=> bs!1852908 (not (= lambda!395059 lambda!394997))))

(declare-fun bs!1852909 () Bool)

(assert (= bs!1852909 (and b!6937228 b!6937217)))

(assert (=> bs!1852909 (= (and (= (_1!37119 lt!2474644) (_2!37119 lt!2474644)) (= (regOne!34430 r1!6342) (regOne!34430 lt!2474648)) (= (regTwo!34430 r1!6342) (regTwo!34430 lt!2474648))) (= lambda!395059 lambda!395057))))

(declare-fun bs!1852910 () Bool)

(assert (= bs!1852910 (and b!6937228 d!2166953)))

(assert (=> bs!1852910 (= (and (= (_1!37119 lt!2474644) lt!2474663) (= (regOne!34430 r1!6342) r1!6342) (= (regTwo!34430 r1!6342) r2!6280)) (= lambda!395059 lambda!395043))))

(assert (=> bs!1852908 (= (and (= (_1!37119 lt!2474644) (_2!37119 lt!2474644)) (= (regOne!34430 r1!6342) r2!6280) (= (regTwo!34430 r1!6342) r3!135)) (= lambda!395059 lambda!394998))))

(declare-fun bs!1852911 () Bool)

(assert (= bs!1852911 (and b!6937228 d!2167025)))

(assert (=> bs!1852911 (not (= lambda!395059 lambda!395053))))

(declare-fun bs!1852912 () Bool)

(assert (= bs!1852912 (and b!6937228 d!2167039)))

(assert (=> bs!1852912 (not (= lambda!395059 lambda!395054))))

(assert (=> bs!1852912 (= (and (= (_1!37119 lt!2474644) (_2!37119 lt!2474644)) (= (regOne!34430 r1!6342) r2!6280) (= (regTwo!34430 r1!6342) r3!135)) (= lambda!395059 lambda!395055))))

(declare-fun bs!1852913 () Bool)

(assert (= bs!1852913 (and b!6937228 b!6937215)))

(assert (=> bs!1852913 (not (= lambda!395059 lambda!395056))))

(declare-fun bs!1852914 () Bool)

(assert (= bs!1852914 (and b!6937228 b!6936999)))

(assert (=> bs!1852914 (not (= lambda!395059 lambda!395045))))

(declare-fun bs!1852915 () Bool)

(assert (= bs!1852915 (and b!6937228 b!6936463)))

(assert (=> bs!1852915 (not (= lambda!395059 lambda!394999))))

(declare-fun bs!1852916 () Bool)

(assert (= bs!1852916 (and b!6937228 b!6937012)))

(assert (=> bs!1852916 (= (and (= (_1!37119 lt!2474644) s!14361) (= (regOne!34430 r1!6342) (regOne!34430 lt!2474657)) (= (regTwo!34430 r1!6342) (regTwo!34430 lt!2474657))) (= lambda!395059 lambda!395049))))

(declare-fun bs!1852917 () Bool)

(assert (= bs!1852917 (and b!6937228 b!6937226)))

(assert (=> bs!1852917 (not (= lambda!395059 lambda!395058))))

(assert (=> bs!1852915 (= (and (= (_1!37119 lt!2474644) lt!2474663) (= (regOne!34430 r1!6342) r1!6342) (= (regTwo!34430 r1!6342) r2!6280)) (= lambda!395059 lambda!395000))))

(assert (=> bs!1852910 (not (= lambda!395059 lambda!395042))))

(declare-fun bs!1852918 () Bool)

(assert (= bs!1852918 (and b!6937228 b!6936468)))

(assert (=> bs!1852918 (not (= lambda!395059 lambda!394995))))

(declare-fun bs!1852919 () Bool)

(assert (= bs!1852919 (and b!6937228 b!6937001)))

(assert (=> bs!1852919 (= (and (= (_1!37119 lt!2474644) s!14361) (= (regOne!34430 r1!6342) (regOne!34430 lt!2474652)) (= (regTwo!34430 r1!6342) (regTwo!34430 lt!2474652))) (= lambda!395059 lambda!395046))))

(declare-fun bs!1852920 () Bool)

(assert (= bs!1852920 (and b!6937228 b!6936698)))

(assert (=> bs!1852920 (= (and (= (_1!37119 lt!2474644) lt!2474663) (= (regOne!34430 r1!6342) (regOne!34430 lt!2474666)) (= (regTwo!34430 r1!6342) (regTwo!34430 lt!2474666))) (= lambda!395059 lambda!395021))))

(declare-fun bs!1852921 () Bool)

(assert (= bs!1852921 (and b!6937228 b!6937010)))

(assert (=> bs!1852921 (not (= lambda!395059 lambda!395048))))

(declare-fun bs!1852922 () Bool)

(assert (= bs!1852922 (and b!6937228 b!6936696)))

(assert (=> bs!1852922 (not (= lambda!395059 lambda!395020))))

(declare-fun bs!1852923 () Bool)

(assert (= bs!1852923 (and b!6937228 d!2166933)))

(assert (=> bs!1852923 (not (= lambda!395059 lambda!395033))))

(assert (=> bs!1852918 (= (and (= (_1!37119 lt!2474644) s!14361) (= (regOne!34430 r1!6342) r1!6342) (= (regTwo!34430 r1!6342) lt!2474648)) (= lambda!395059 lambda!394996))))

(assert (=> b!6937228 true))

(assert (=> b!6937228 true))

(declare-fun b!6937222 () Bool)

(declare-fun c!1287309 () Bool)

(assert (=> b!6937222 (= c!1287309 ((_ is Union!16959) r1!6342))))

(declare-fun e!4173623 () Bool)

(declare-fun e!4173617 () Bool)

(assert (=> b!6937222 (= e!4173623 e!4173617)))

(declare-fun b!6937223 () Bool)

(assert (=> b!6937223 (= e!4173623 (= (_1!37119 lt!2474644) (Cons!66588 (c!1287149 r1!6342) Nil!66588)))))

(declare-fun d!2167043 () Bool)

(declare-fun c!1287308 () Bool)

(assert (=> d!2167043 (= c!1287308 ((_ is EmptyExpr!16959) r1!6342))))

(declare-fun e!4173618 () Bool)

(assert (=> d!2167043 (= (matchRSpec!4016 r1!6342 (_1!37119 lt!2474644)) e!4173618)))

(declare-fun b!6937224 () Bool)

(declare-fun e!4173619 () Bool)

(assert (=> b!6937224 (= e!4173617 e!4173619)))

(declare-fun c!1287310 () Bool)

(assert (=> b!6937224 (= c!1287310 ((_ is Star!16959) r1!6342))))

(declare-fun b!6937225 () Bool)

(declare-fun e!4173622 () Bool)

(assert (=> b!6937225 (= e!4173622 (matchRSpec!4016 (regTwo!34431 r1!6342) (_1!37119 lt!2474644)))))

(declare-fun e!4173621 () Bool)

(declare-fun call!630288 () Bool)

(assert (=> b!6937226 (= e!4173621 call!630288)))

(declare-fun b!6937227 () Bool)

(assert (=> b!6937227 (= e!4173617 e!4173622)))

(declare-fun res!2829611 () Bool)

(assert (=> b!6937227 (= res!2829611 (matchRSpec!4016 (regOne!34431 r1!6342) (_1!37119 lt!2474644)))))

(assert (=> b!6937227 (=> res!2829611 e!4173622)))

(assert (=> b!6937228 (= e!4173619 call!630288)))

(declare-fun b!6937229 () Bool)

(declare-fun call!630289 () Bool)

(assert (=> b!6937229 (= e!4173618 call!630289)))

(declare-fun b!6937230 () Bool)

(declare-fun res!2829610 () Bool)

(assert (=> b!6937230 (=> res!2829610 e!4173621)))

(assert (=> b!6937230 (= res!2829610 call!630289)))

(assert (=> b!6937230 (= e!4173619 e!4173621)))

(declare-fun bm!630283 () Bool)

(assert (=> bm!630283 (= call!630288 (Exists!3959 (ite c!1287310 lambda!395058 lambda!395059)))))

(declare-fun b!6937231 () Bool)

(declare-fun c!1287311 () Bool)

(assert (=> b!6937231 (= c!1287311 ((_ is ElementMatch!16959) r1!6342))))

(declare-fun e!4173620 () Bool)

(assert (=> b!6937231 (= e!4173620 e!4173623)))

(declare-fun bm!630284 () Bool)

(assert (=> bm!630284 (= call!630289 (isEmpty!38853 (_1!37119 lt!2474644)))))

(declare-fun b!6937232 () Bool)

(assert (=> b!6937232 (= e!4173618 e!4173620)))

(declare-fun res!2829612 () Bool)

(assert (=> b!6937232 (= res!2829612 (not ((_ is EmptyLang!16959) r1!6342)))))

(assert (=> b!6937232 (=> (not res!2829612) (not e!4173620))))

(assert (= (and d!2167043 c!1287308) b!6937229))

(assert (= (and d!2167043 (not c!1287308)) b!6937232))

(assert (= (and b!6937232 res!2829612) b!6937231))

(assert (= (and b!6937231 c!1287311) b!6937223))

(assert (= (and b!6937231 (not c!1287311)) b!6937222))

(assert (= (and b!6937222 c!1287309) b!6937227))

(assert (= (and b!6937222 (not c!1287309)) b!6937224))

(assert (= (and b!6937227 (not res!2829611)) b!6937225))

(assert (= (and b!6937224 c!1287310) b!6937230))

(assert (= (and b!6937224 (not c!1287310)) b!6937228))

(assert (= (and b!6937230 (not res!2829610)) b!6937226))

(assert (= (or b!6937226 b!6937228) bm!630283))

(assert (= (or b!6937229 b!6937230) bm!630284))

(declare-fun m!7642972 () Bool)

(assert (=> b!6937225 m!7642972))

(declare-fun m!7642974 () Bool)

(assert (=> b!6937227 m!7642974))

(declare-fun m!7642976 () Bool)

(assert (=> bm!630283 m!7642976))

(declare-fun m!7642978 () Bool)

(assert (=> bm!630284 m!7642978))

(assert (=> b!6936468 d!2167043))

(declare-fun bm!630285 () Bool)

(declare-fun call!630290 () Bool)

(assert (=> bm!630285 (= call!630290 (isEmpty!38853 (_1!37119 lt!2474644)))))

(declare-fun b!6937233 () Bool)

(declare-fun res!2829616 () Bool)

(declare-fun e!4173628 () Bool)

(assert (=> b!6937233 (=> (not res!2829616) (not e!4173628))))

(assert (=> b!6937233 (= res!2829616 (isEmpty!38853 (tail!12956 (_1!37119 lt!2474644))))))

(declare-fun b!6937234 () Bool)

(declare-fun res!2829614 () Bool)

(declare-fun e!4173630 () Bool)

(assert (=> b!6937234 (=> res!2829614 e!4173630)))

(assert (=> b!6937234 (= res!2829614 (not ((_ is ElementMatch!16959) r1!6342)))))

(declare-fun e!4173629 () Bool)

(assert (=> b!6937234 (= e!4173629 e!4173630)))

(declare-fun b!6937235 () Bool)

(declare-fun e!4173627 () Bool)

(assert (=> b!6937235 (= e!4173627 (matchR!9098 (derivativeStep!5451 r1!6342 (head!13904 (_1!37119 lt!2474644))) (tail!12956 (_1!37119 lt!2474644))))))

(declare-fun b!6937236 () Bool)

(declare-fun e!4173624 () Bool)

(assert (=> b!6937236 (= e!4173630 e!4173624)))

(declare-fun res!2829619 () Bool)

(assert (=> b!6937236 (=> (not res!2829619) (not e!4173624))))

(declare-fun lt!2474776 () Bool)

(assert (=> b!6937236 (= res!2829619 (not lt!2474776))))

(declare-fun b!6937237 () Bool)

(declare-fun res!2829615 () Bool)

(assert (=> b!6937237 (=> (not res!2829615) (not e!4173628))))

(assert (=> b!6937237 (= res!2829615 (not call!630290))))

(declare-fun b!6937238 () Bool)

(assert (=> b!6937238 (= e!4173628 (= (head!13904 (_1!37119 lt!2474644)) (c!1287149 r1!6342)))))

(declare-fun b!6937239 () Bool)

(declare-fun e!4173626 () Bool)

(assert (=> b!6937239 (= e!4173626 e!4173629)))

(declare-fun c!1287312 () Bool)

(assert (=> b!6937239 (= c!1287312 ((_ is EmptyLang!16959) r1!6342))))

(declare-fun b!6937240 () Bool)

(declare-fun e!4173625 () Bool)

(assert (=> b!6937240 (= e!4173624 e!4173625)))

(declare-fun res!2829620 () Bool)

(assert (=> b!6937240 (=> res!2829620 e!4173625)))

(assert (=> b!6937240 (= res!2829620 call!630290)))

(declare-fun b!6937242 () Bool)

(assert (=> b!6937242 (= e!4173627 (nullable!6776 r1!6342))))

(declare-fun b!6937243 () Bool)

(assert (=> b!6937243 (= e!4173629 (not lt!2474776))))

(declare-fun b!6937244 () Bool)

(assert (=> b!6937244 (= e!4173626 (= lt!2474776 call!630290))))

(declare-fun b!6937245 () Bool)

(declare-fun res!2829613 () Bool)

(assert (=> b!6937245 (=> res!2829613 e!4173630)))

(assert (=> b!6937245 (= res!2829613 e!4173628)))

(declare-fun res!2829617 () Bool)

(assert (=> b!6937245 (=> (not res!2829617) (not e!4173628))))

(assert (=> b!6937245 (= res!2829617 lt!2474776)))

(declare-fun b!6937246 () Bool)

(assert (=> b!6937246 (= e!4173625 (not (= (head!13904 (_1!37119 lt!2474644)) (c!1287149 r1!6342))))))

(declare-fun b!6937241 () Bool)

(declare-fun res!2829618 () Bool)

(assert (=> b!6937241 (=> res!2829618 e!4173625)))

(assert (=> b!6937241 (= res!2829618 (not (isEmpty!38853 (tail!12956 (_1!37119 lt!2474644)))))))

(declare-fun d!2167045 () Bool)

(assert (=> d!2167045 e!4173626))

(declare-fun c!1287313 () Bool)

(assert (=> d!2167045 (= c!1287313 ((_ is EmptyExpr!16959) r1!6342))))

(assert (=> d!2167045 (= lt!2474776 e!4173627)))

(declare-fun c!1287314 () Bool)

(assert (=> d!2167045 (= c!1287314 (isEmpty!38853 (_1!37119 lt!2474644)))))

(assert (=> d!2167045 (validRegex!8665 r1!6342)))

(assert (=> d!2167045 (= (matchR!9098 r1!6342 (_1!37119 lt!2474644)) lt!2474776)))

(assert (= (and d!2167045 c!1287314) b!6937242))

(assert (= (and d!2167045 (not c!1287314)) b!6937235))

(assert (= (and d!2167045 c!1287313) b!6937244))

(assert (= (and d!2167045 (not c!1287313)) b!6937239))

(assert (= (and b!6937239 c!1287312) b!6937243))

(assert (= (and b!6937239 (not c!1287312)) b!6937234))

(assert (= (and b!6937234 (not res!2829614)) b!6937245))

(assert (= (and b!6937245 res!2829617) b!6937237))

(assert (= (and b!6937237 res!2829615) b!6937233))

(assert (= (and b!6937233 res!2829616) b!6937238))

(assert (= (and b!6937245 (not res!2829613)) b!6937236))

(assert (= (and b!6937236 res!2829619) b!6937240))

(assert (= (and b!6937240 (not res!2829620)) b!6937241))

(assert (= (and b!6937241 (not res!2829618)) b!6937246))

(assert (= (or b!6937244 b!6937237 b!6937240) bm!630285))

(assert (=> bm!630285 m!7642978))

(declare-fun m!7642980 () Bool)

(assert (=> b!6937233 m!7642980))

(assert (=> b!6937233 m!7642980))

(declare-fun m!7642982 () Bool)

(assert (=> b!6937233 m!7642982))

(assert (=> d!2167045 m!7642978))

(assert (=> d!2167045 m!7642326))

(declare-fun m!7642984 () Bool)

(assert (=> b!6937235 m!7642984))

(assert (=> b!6937235 m!7642984))

(declare-fun m!7642986 () Bool)

(assert (=> b!6937235 m!7642986))

(assert (=> b!6937235 m!7642980))

(assert (=> b!6937235 m!7642986))

(assert (=> b!6937235 m!7642980))

(declare-fun m!7642988 () Bool)

(assert (=> b!6937235 m!7642988))

(declare-fun m!7642990 () Bool)

(assert (=> b!6937242 m!7642990))

(assert (=> b!6937241 m!7642980))

(assert (=> b!6937241 m!7642980))

(assert (=> b!6937241 m!7642982))

(assert (=> b!6937246 m!7642984))

(assert (=> b!6937238 m!7642984))

(assert (=> b!6936468 d!2167045))

(declare-fun d!2167047 () Bool)

(assert (=> d!2167047 (= (get!23375 lt!2474669) (v!52999 lt!2474669))))

(assert (=> b!6936468 d!2167047))

(declare-fun d!2167049 () Bool)

(assert (=> d!2167049 (= (Exists!3959 lambda!394995) (choose!51673 lambda!394995))))

(declare-fun bs!1852924 () Bool)

(assert (= bs!1852924 d!2167049))

(declare-fun m!7642992 () Bool)

(assert (=> bs!1852924 m!7642992))

(assert (=> b!6936468 d!2167049))

(declare-fun bs!1852925 () Bool)

(declare-fun d!2167051 () Bool)

(assert (= bs!1852925 (and d!2167051 b!6936467)))

(declare-fun lambda!395060 () Int)

(assert (=> bs!1852925 (= (and (= s!14361 (_2!37119 lt!2474644)) (= r1!6342 r2!6280) (= lt!2474648 r3!135)) (= lambda!395060 lambda!394997))))

(declare-fun bs!1852926 () Bool)

(assert (= bs!1852926 (and d!2167051 b!6937217)))

(assert (=> bs!1852926 (not (= lambda!395060 lambda!395057))))

(declare-fun bs!1852927 () Bool)

(assert (= bs!1852927 (and d!2167051 d!2166953)))

(assert (=> bs!1852927 (not (= lambda!395060 lambda!395043))))

(assert (=> bs!1852925 (not (= lambda!395060 lambda!394998))))

(declare-fun bs!1852928 () Bool)

(assert (= bs!1852928 (and d!2167051 d!2167025)))

(assert (=> bs!1852928 (= (and (= s!14361 (_2!37119 lt!2474644)) (= r1!6342 r2!6280) (= lt!2474648 r3!135)) (= lambda!395060 lambda!395053))))

(declare-fun bs!1852929 () Bool)

(assert (= bs!1852929 (and d!2167051 d!2167039)))

(assert (=> bs!1852929 (= (and (= s!14361 (_2!37119 lt!2474644)) (= r1!6342 r2!6280) (= lt!2474648 r3!135)) (= lambda!395060 lambda!395054))))

(assert (=> bs!1852929 (not (= lambda!395060 lambda!395055))))

(declare-fun bs!1852930 () Bool)

(assert (= bs!1852930 (and d!2167051 b!6937215)))

(assert (=> bs!1852930 (not (= lambda!395060 lambda!395056))))

(declare-fun bs!1852931 () Bool)

(assert (= bs!1852931 (and d!2167051 b!6936999)))

(assert (=> bs!1852931 (not (= lambda!395060 lambda!395045))))

(declare-fun bs!1852932 () Bool)

(assert (= bs!1852932 (and d!2167051 b!6936463)))

(assert (=> bs!1852932 (= (and (= s!14361 lt!2474663) (= lt!2474648 r2!6280)) (= lambda!395060 lambda!394999))))

(declare-fun bs!1852933 () Bool)

(assert (= bs!1852933 (and d!2167051 b!6937012)))

(assert (=> bs!1852933 (not (= lambda!395060 lambda!395049))))

(declare-fun bs!1852934 () Bool)

(assert (= bs!1852934 (and d!2167051 b!6937226)))

(assert (=> bs!1852934 (not (= lambda!395060 lambda!395058))))

(assert (=> bs!1852932 (not (= lambda!395060 lambda!395000))))

(assert (=> bs!1852927 (= (and (= s!14361 lt!2474663) (= lt!2474648 r2!6280)) (= lambda!395060 lambda!395042))))

(declare-fun bs!1852935 () Bool)

(assert (= bs!1852935 (and d!2167051 b!6937228)))

(assert (=> bs!1852935 (not (= lambda!395060 lambda!395059))))

(declare-fun bs!1852936 () Bool)

(assert (= bs!1852936 (and d!2167051 b!6936468)))

(assert (=> bs!1852936 (= lambda!395060 lambda!394995)))

(declare-fun bs!1852937 () Bool)

(assert (= bs!1852937 (and d!2167051 b!6937001)))

(assert (=> bs!1852937 (not (= lambda!395060 lambda!395046))))

(declare-fun bs!1852938 () Bool)

(assert (= bs!1852938 (and d!2167051 b!6936698)))

(assert (=> bs!1852938 (not (= lambda!395060 lambda!395021))))

(declare-fun bs!1852939 () Bool)

(assert (= bs!1852939 (and d!2167051 b!6937010)))

(assert (=> bs!1852939 (not (= lambda!395060 lambda!395048))))

(declare-fun bs!1852940 () Bool)

(assert (= bs!1852940 (and d!2167051 b!6936696)))

(assert (=> bs!1852940 (not (= lambda!395060 lambda!395020))))

(declare-fun bs!1852941 () Bool)

(assert (= bs!1852941 (and d!2167051 d!2166933)))

(assert (=> bs!1852941 (= (and (= s!14361 lt!2474663) (= lt!2474648 r2!6280)) (= lambda!395060 lambda!395033))))

(assert (=> bs!1852936 (not (= lambda!395060 lambda!394996))))

(assert (=> d!2167051 true))

(assert (=> d!2167051 true))

(assert (=> d!2167051 true))

(declare-fun lambda!395061 () Int)

(assert (=> bs!1852925 (not (= lambda!395061 lambda!394997))))

(assert (=> bs!1852926 (= (and (= s!14361 (_2!37119 lt!2474644)) (= r1!6342 (regOne!34430 lt!2474648)) (= lt!2474648 (regTwo!34430 lt!2474648))) (= lambda!395061 lambda!395057))))

(assert (=> bs!1852927 (= (and (= s!14361 lt!2474663) (= lt!2474648 r2!6280)) (= lambda!395061 lambda!395043))))

(assert (=> bs!1852925 (= (and (= s!14361 (_2!37119 lt!2474644)) (= r1!6342 r2!6280) (= lt!2474648 r3!135)) (= lambda!395061 lambda!394998))))

(assert (=> bs!1852928 (not (= lambda!395061 lambda!395053))))

(assert (=> bs!1852929 (not (= lambda!395061 lambda!395054))))

(assert (=> bs!1852929 (= (and (= s!14361 (_2!37119 lt!2474644)) (= r1!6342 r2!6280) (= lt!2474648 r3!135)) (= lambda!395061 lambda!395055))))

(assert (=> bs!1852930 (not (= lambda!395061 lambda!395056))))

(assert (=> bs!1852931 (not (= lambda!395061 lambda!395045))))

(assert (=> bs!1852932 (not (= lambda!395061 lambda!394999))))

(assert (=> bs!1852933 (= (and (= r1!6342 (regOne!34430 lt!2474657)) (= lt!2474648 (regTwo!34430 lt!2474657))) (= lambda!395061 lambda!395049))))

(assert (=> bs!1852934 (not (= lambda!395061 lambda!395058))))

(assert (=> bs!1852932 (= (and (= s!14361 lt!2474663) (= lt!2474648 r2!6280)) (= lambda!395061 lambda!395000))))

(assert (=> bs!1852927 (not (= lambda!395061 lambda!395042))))

(assert (=> bs!1852935 (= (and (= s!14361 (_1!37119 lt!2474644)) (= r1!6342 (regOne!34430 r1!6342)) (= lt!2474648 (regTwo!34430 r1!6342))) (= lambda!395061 lambda!395059))))

(assert (=> bs!1852936 (not (= lambda!395061 lambda!394995))))

(assert (=> bs!1852937 (= (and (= r1!6342 (regOne!34430 lt!2474652)) (= lt!2474648 (regTwo!34430 lt!2474652))) (= lambda!395061 lambda!395046))))

(assert (=> bs!1852939 (not (= lambda!395061 lambda!395048))))

(assert (=> bs!1852940 (not (= lambda!395061 lambda!395020))))

(assert (=> bs!1852941 (not (= lambda!395061 lambda!395033))))

(assert (=> bs!1852936 (= lambda!395061 lambda!394996)))

(declare-fun bs!1852942 () Bool)

(assert (= bs!1852942 d!2167051))

(assert (=> bs!1852942 (not (= lambda!395061 lambda!395060))))

(assert (=> bs!1852938 (= (and (= s!14361 lt!2474663) (= r1!6342 (regOne!34430 lt!2474666)) (= lt!2474648 (regTwo!34430 lt!2474666))) (= lambda!395061 lambda!395021))))

(assert (=> d!2167051 true))

(assert (=> d!2167051 true))

(assert (=> d!2167051 true))

(assert (=> d!2167051 (= (Exists!3959 lambda!395060) (Exists!3959 lambda!395061))))

(declare-fun lt!2474777 () Unit!160642)

(assert (=> d!2167051 (= lt!2474777 (choose!51672 r1!6342 lt!2474648 s!14361))))

(assert (=> d!2167051 (validRegex!8665 r1!6342)))

(assert (=> d!2167051 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2420 r1!6342 lt!2474648 s!14361) lt!2474777)))

(declare-fun m!7642994 () Bool)

(assert (=> bs!1852942 m!7642994))

(declare-fun m!7642996 () Bool)

(assert (=> bs!1852942 m!7642996))

(declare-fun m!7642998 () Bool)

(assert (=> bs!1852942 m!7642998))

(assert (=> bs!1852942 m!7642326))

(assert (=> b!6936468 d!2167051))

(declare-fun d!2167053 () Bool)

(assert (=> d!2167053 (= (matchR!9098 r1!6342 (_1!37119 lt!2474644)) (matchRSpec!4016 r1!6342 (_1!37119 lt!2474644)))))

(declare-fun lt!2474778 () Unit!160642)

(assert (=> d!2167053 (= lt!2474778 (choose!51669 r1!6342 (_1!37119 lt!2474644)))))

(assert (=> d!2167053 (validRegex!8665 r1!6342)))

(assert (=> d!2167053 (= (mainMatchTheorem!4016 r1!6342 (_1!37119 lt!2474644)) lt!2474778)))

(declare-fun bs!1852943 () Bool)

(assert (= bs!1852943 d!2167053))

(assert (=> bs!1852943 m!7642342))

(assert (=> bs!1852943 m!7642332))

(declare-fun m!7643000 () Bool)

(assert (=> bs!1852943 m!7643000))

(assert (=> bs!1852943 m!7642326))

(assert (=> b!6936468 d!2167053))

(declare-fun d!2167055 () Bool)

(assert (=> d!2167055 (= (Exists!3959 lambda!394996) (choose!51673 lambda!394996))))

(declare-fun bs!1852944 () Bool)

(assert (= bs!1852944 d!2167055))

(declare-fun m!7643002 () Bool)

(assert (=> bs!1852944 m!7643002))

(assert (=> b!6936468 d!2167055))

(declare-fun bs!1852945 () Bool)

(declare-fun d!2167057 () Bool)

(assert (= bs!1852945 (and d!2167057 b!6936467)))

(declare-fun lambda!395062 () Int)

(assert (=> bs!1852945 (= (and (= s!14361 (_2!37119 lt!2474644)) (= r1!6342 r2!6280) (= lt!2474648 r3!135)) (= lambda!395062 lambda!394997))))

(declare-fun bs!1852946 () Bool)

(assert (= bs!1852946 (and d!2167057 b!6937217)))

(assert (=> bs!1852946 (not (= lambda!395062 lambda!395057))))

(declare-fun bs!1852947 () Bool)

(assert (= bs!1852947 (and d!2167057 d!2166953)))

(assert (=> bs!1852947 (not (= lambda!395062 lambda!395043))))

(assert (=> bs!1852945 (not (= lambda!395062 lambda!394998))))

(declare-fun bs!1852948 () Bool)

(assert (= bs!1852948 (and d!2167057 d!2167025)))

(assert (=> bs!1852948 (= (and (= s!14361 (_2!37119 lt!2474644)) (= r1!6342 r2!6280) (= lt!2474648 r3!135)) (= lambda!395062 lambda!395053))))

(declare-fun bs!1852949 () Bool)

(assert (= bs!1852949 (and d!2167057 d!2167039)))

(assert (=> bs!1852949 (= (and (= s!14361 (_2!37119 lt!2474644)) (= r1!6342 r2!6280) (= lt!2474648 r3!135)) (= lambda!395062 lambda!395054))))

(assert (=> bs!1852949 (not (= lambda!395062 lambda!395055))))

(declare-fun bs!1852950 () Bool)

(assert (= bs!1852950 (and d!2167057 b!6937215)))

(assert (=> bs!1852950 (not (= lambda!395062 lambda!395056))))

(declare-fun bs!1852951 () Bool)

(assert (= bs!1852951 (and d!2167057 b!6936999)))

(assert (=> bs!1852951 (not (= lambda!395062 lambda!395045))))

(declare-fun bs!1852952 () Bool)

(assert (= bs!1852952 (and d!2167057 b!6936463)))

(assert (=> bs!1852952 (= (and (= s!14361 lt!2474663) (= lt!2474648 r2!6280)) (= lambda!395062 lambda!394999))))

(declare-fun bs!1852953 () Bool)

(assert (= bs!1852953 (and d!2167057 b!6937012)))

(assert (=> bs!1852953 (not (= lambda!395062 lambda!395049))))

(declare-fun bs!1852954 () Bool)

(assert (= bs!1852954 (and d!2167057 b!6937226)))

(assert (=> bs!1852954 (not (= lambda!395062 lambda!395058))))

(assert (=> bs!1852952 (not (= lambda!395062 lambda!395000))))

(assert (=> bs!1852947 (= (and (= s!14361 lt!2474663) (= lt!2474648 r2!6280)) (= lambda!395062 lambda!395042))))

(declare-fun bs!1852955 () Bool)

(assert (= bs!1852955 (and d!2167057 b!6937228)))

(assert (=> bs!1852955 (not (= lambda!395062 lambda!395059))))

(declare-fun bs!1852956 () Bool)

(assert (= bs!1852956 (and d!2167057 b!6936468)))

(assert (=> bs!1852956 (= lambda!395062 lambda!394995)))

(declare-fun bs!1852957 () Bool)

(assert (= bs!1852957 (and d!2167057 b!6937001)))

(assert (=> bs!1852957 (not (= lambda!395062 lambda!395046))))

(declare-fun bs!1852958 () Bool)

(assert (= bs!1852958 (and d!2167057 b!6937010)))

(assert (=> bs!1852958 (not (= lambda!395062 lambda!395048))))

(declare-fun bs!1852959 () Bool)

(assert (= bs!1852959 (and d!2167057 b!6936696)))

(assert (=> bs!1852959 (not (= lambda!395062 lambda!395020))))

(declare-fun bs!1852960 () Bool)

(assert (= bs!1852960 (and d!2167057 d!2166933)))

(assert (=> bs!1852960 (= (and (= s!14361 lt!2474663) (= lt!2474648 r2!6280)) (= lambda!395062 lambda!395033))))

(assert (=> bs!1852956 (not (= lambda!395062 lambda!394996))))

(declare-fun bs!1852961 () Bool)

(assert (= bs!1852961 (and d!2167057 d!2167051)))

(assert (=> bs!1852961 (not (= lambda!395062 lambda!395061))))

(assert (=> bs!1852961 (= lambda!395062 lambda!395060)))

(declare-fun bs!1852962 () Bool)

(assert (= bs!1852962 (and d!2167057 b!6936698)))

(assert (=> bs!1852962 (not (= lambda!395062 lambda!395021))))

(assert (=> d!2167057 true))

(assert (=> d!2167057 true))

(assert (=> d!2167057 true))

(assert (=> d!2167057 (= (isDefined!13429 (findConcatSeparation!3142 r1!6342 lt!2474648 Nil!66588 s!14361 s!14361)) (Exists!3959 lambda!395062))))

(declare-fun lt!2474779 () Unit!160642)

(assert (=> d!2167057 (= lt!2474779 (choose!51671 r1!6342 lt!2474648 s!14361))))

(assert (=> d!2167057 (validRegex!8665 r1!6342)))

(assert (=> d!2167057 (= (lemmaFindConcatSeparationEquivalentToExists!2900 r1!6342 lt!2474648 s!14361) lt!2474779)))

(declare-fun bs!1852963 () Bool)

(assert (= bs!1852963 d!2167057))

(assert (=> bs!1852963 m!7642346))

(assert (=> bs!1852963 m!7642346))

(declare-fun m!7643004 () Bool)

(assert (=> bs!1852963 m!7643004))

(declare-fun m!7643006 () Bool)

(assert (=> bs!1852963 m!7643006))

(declare-fun m!7643008 () Bool)

(assert (=> bs!1852963 m!7643008))

(assert (=> bs!1852963 m!7642326))

(assert (=> b!6936468 d!2167057))

(declare-fun b!6937247 () Bool)

(declare-fun e!4173636 () Bool)

(declare-fun e!4173631 () Bool)

(assert (=> b!6937247 (= e!4173636 e!4173631)))

(declare-fun c!1287316 () Bool)

(assert (=> b!6937247 (= c!1287316 ((_ is Union!16959) r3!135))))

(declare-fun c!1287315 () Bool)

(declare-fun call!630291 () Bool)

(declare-fun bm!630286 () Bool)

(assert (=> bm!630286 (= call!630291 (validRegex!8665 (ite c!1287315 (reg!17288 r3!135) (ite c!1287316 (regTwo!34431 r3!135) (regOne!34430 r3!135)))))))

(declare-fun b!6937248 () Bool)

(declare-fun res!2829622 () Bool)

(declare-fun e!4173632 () Bool)

(assert (=> b!6937248 (=> res!2829622 e!4173632)))

(assert (=> b!6937248 (= res!2829622 (not ((_ is Concat!25804) r3!135)))))

(assert (=> b!6937248 (= e!4173631 e!4173632)))

(declare-fun d!2167059 () Bool)

(declare-fun res!2829621 () Bool)

(declare-fun e!4173635 () Bool)

(assert (=> d!2167059 (=> res!2829621 e!4173635)))

(assert (=> d!2167059 (= res!2829621 ((_ is ElementMatch!16959) r3!135))))

(assert (=> d!2167059 (= (validRegex!8665 r3!135) e!4173635)))

(declare-fun bm!630287 () Bool)

(declare-fun call!630293 () Bool)

(assert (=> bm!630287 (= call!630293 call!630291)))

(declare-fun b!6937249 () Bool)

(declare-fun e!4173634 () Bool)

(assert (=> b!6937249 (= e!4173636 e!4173634)))

(declare-fun res!2829624 () Bool)

(assert (=> b!6937249 (= res!2829624 (not (nullable!6776 (reg!17288 r3!135))))))

(assert (=> b!6937249 (=> (not res!2829624) (not e!4173634))))

(declare-fun b!6937250 () Bool)

(declare-fun e!4173633 () Bool)

(declare-fun call!630292 () Bool)

(assert (=> b!6937250 (= e!4173633 call!630292)))

(declare-fun b!6937251 () Bool)

(assert (=> b!6937251 (= e!4173635 e!4173636)))

(assert (=> b!6937251 (= c!1287315 ((_ is Star!16959) r3!135))))

(declare-fun b!6937252 () Bool)

(declare-fun e!4173637 () Bool)

(assert (=> b!6937252 (= e!4173637 call!630293)))

(declare-fun b!6937253 () Bool)

(declare-fun res!2829625 () Bool)

(assert (=> b!6937253 (=> (not res!2829625) (not e!4173637))))

(assert (=> b!6937253 (= res!2829625 call!630292)))

(assert (=> b!6937253 (= e!4173631 e!4173637)))

(declare-fun bm!630288 () Bool)

(assert (=> bm!630288 (= call!630292 (validRegex!8665 (ite c!1287316 (regOne!34431 r3!135) (regTwo!34430 r3!135))))))

(declare-fun b!6937254 () Bool)

(assert (=> b!6937254 (= e!4173632 e!4173633)))

(declare-fun res!2829623 () Bool)

(assert (=> b!6937254 (=> (not res!2829623) (not e!4173633))))

(assert (=> b!6937254 (= res!2829623 call!630293)))

(declare-fun b!6937255 () Bool)

(assert (=> b!6937255 (= e!4173634 call!630291)))

(assert (= (and d!2167059 (not res!2829621)) b!6937251))

(assert (= (and b!6937251 c!1287315) b!6937249))

(assert (= (and b!6937251 (not c!1287315)) b!6937247))

(assert (= (and b!6937249 res!2829624) b!6937255))

(assert (= (and b!6937247 c!1287316) b!6937253))

(assert (= (and b!6937247 (not c!1287316)) b!6937248))

(assert (= (and b!6937253 res!2829625) b!6937252))

(assert (= (and b!6937248 (not res!2829622)) b!6937254))

(assert (= (and b!6937254 res!2829623) b!6937250))

(assert (= (or b!6937253 b!6937250) bm!630288))

(assert (= (or b!6937252 b!6937254) bm!630287))

(assert (= (or b!6937255 bm!630287) bm!630286))

(declare-fun m!7643010 () Bool)

(assert (=> bm!630286 m!7643010))

(declare-fun m!7643012 () Bool)

(assert (=> b!6937249 m!7643012))

(declare-fun m!7643014 () Bool)

(assert (=> bm!630288 m!7643014))

(assert (=> b!6936458 d!2167059))

(declare-fun b!6937258 () Bool)

(declare-fun res!2829627 () Bool)

(declare-fun e!4173639 () Bool)

(assert (=> b!6937258 (=> (not res!2829627) (not e!4173639))))

(declare-fun lt!2474780 () List!66712)

(assert (=> b!6937258 (= res!2829627 (= (size!40795 lt!2474780) (+ (size!40795 (_1!37119 lt!2474658)) (size!40795 (_2!37119 lt!2474658)))))))

(declare-fun b!6937256 () Bool)

(declare-fun e!4173638 () List!66712)

(assert (=> b!6937256 (= e!4173638 (_2!37119 lt!2474658))))

(declare-fun d!2167061 () Bool)

(assert (=> d!2167061 e!4173639))

(declare-fun res!2829626 () Bool)

(assert (=> d!2167061 (=> (not res!2829626) (not e!4173639))))

(assert (=> d!2167061 (= res!2829626 (= (content!13098 lt!2474780) ((_ map or) (content!13098 (_1!37119 lt!2474658)) (content!13098 (_2!37119 lt!2474658)))))))

(assert (=> d!2167061 (= lt!2474780 e!4173638)))

(declare-fun c!1287317 () Bool)

(assert (=> d!2167061 (= c!1287317 ((_ is Nil!66588) (_1!37119 lt!2474658)))))

(assert (=> d!2167061 (= (++!14998 (_1!37119 lt!2474658) (_2!37119 lt!2474658)) lt!2474780)))

(declare-fun b!6937259 () Bool)

(assert (=> b!6937259 (= e!4173639 (or (not (= (_2!37119 lt!2474658) Nil!66588)) (= lt!2474780 (_1!37119 lt!2474658))))))

(declare-fun b!6937257 () Bool)

(assert (=> b!6937257 (= e!4173638 (Cons!66588 (h!73036 (_1!37119 lt!2474658)) (++!14998 (t!380455 (_1!37119 lt!2474658)) (_2!37119 lt!2474658))))))

(assert (= (and d!2167061 c!1287317) b!6937256))

(assert (= (and d!2167061 (not c!1287317)) b!6937257))

(assert (= (and d!2167061 res!2829626) b!6937258))

(assert (= (and b!6937258 res!2829627) b!6937259))

(declare-fun m!7643016 () Bool)

(assert (=> b!6937258 m!7643016))

(assert (=> b!6937258 m!7642422))

(assert (=> b!6937258 m!7642724))

(declare-fun m!7643018 () Bool)

(assert (=> d!2167061 m!7643018))

(assert (=> d!2167061 m!7642428))

(assert (=> d!2167061 m!7642730))

(declare-fun m!7643020 () Bool)

(assert (=> b!6937257 m!7643020))

(assert (=> b!6936469 d!2167061))

(declare-fun b!6937262 () Bool)

(declare-fun res!2829629 () Bool)

(declare-fun e!4173641 () Bool)

(assert (=> b!6937262 (=> (not res!2829629) (not e!4173641))))

(declare-fun lt!2474781 () List!66712)

(assert (=> b!6937262 (= res!2829629 (= (size!40795 lt!2474781) (+ (size!40795 (_1!37119 lt!2474644)) (size!40795 (++!14998 (_1!37119 lt!2474658) (_2!37119 lt!2474658))))))))

(declare-fun b!6937260 () Bool)

(declare-fun e!4173640 () List!66712)

(assert (=> b!6937260 (= e!4173640 (++!14998 (_1!37119 lt!2474658) (_2!37119 lt!2474658)))))

(declare-fun d!2167063 () Bool)

(assert (=> d!2167063 e!4173641))

(declare-fun res!2829628 () Bool)

(assert (=> d!2167063 (=> (not res!2829628) (not e!4173641))))

(assert (=> d!2167063 (= res!2829628 (= (content!13098 lt!2474781) ((_ map or) (content!13098 (_1!37119 lt!2474644)) (content!13098 (++!14998 (_1!37119 lt!2474658) (_2!37119 lt!2474658))))))))

(assert (=> d!2167063 (= lt!2474781 e!4173640)))

(declare-fun c!1287318 () Bool)

(assert (=> d!2167063 (= c!1287318 ((_ is Nil!66588) (_1!37119 lt!2474644)))))

(assert (=> d!2167063 (= (++!14998 (_1!37119 lt!2474644) (++!14998 (_1!37119 lt!2474658) (_2!37119 lt!2474658))) lt!2474781)))

(declare-fun b!6937263 () Bool)

(assert (=> b!6937263 (= e!4173641 (or (not (= (++!14998 (_1!37119 lt!2474658) (_2!37119 lt!2474658)) Nil!66588)) (= lt!2474781 (_1!37119 lt!2474644))))))

(declare-fun b!6937261 () Bool)

(assert (=> b!6937261 (= e!4173640 (Cons!66588 (h!73036 (_1!37119 lt!2474644)) (++!14998 (t!380455 (_1!37119 lt!2474644)) (++!14998 (_1!37119 lt!2474658) (_2!37119 lt!2474658)))))))

(assert (= (and d!2167063 c!1287318) b!6937260))

(assert (= (and d!2167063 (not c!1287318)) b!6937261))

(assert (= (and d!2167063 res!2829628) b!6937262))

(assert (= (and b!6937262 res!2829629) b!6937263))

(declare-fun m!7643022 () Bool)

(assert (=> b!6937262 m!7643022))

(assert (=> b!6937262 m!7642420))

(assert (=> b!6937262 m!7642310))

(declare-fun m!7643024 () Bool)

(assert (=> b!6937262 m!7643024))

(declare-fun m!7643026 () Bool)

(assert (=> d!2167063 m!7643026))

(assert (=> d!2167063 m!7642426))

(assert (=> d!2167063 m!7642310))

(declare-fun m!7643028 () Bool)

(assert (=> d!2167063 m!7643028))

(assert (=> b!6937261 m!7642310))

(declare-fun m!7643030 () Bool)

(assert (=> b!6937261 m!7643030))

(assert (=> b!6936469 d!2167063))

(declare-fun bs!1852964 () Bool)

(declare-fun b!6937268 () Bool)

(assert (= bs!1852964 (and b!6937268 b!6936467)))

(declare-fun lambda!395063 () Int)

(assert (=> bs!1852964 (not (= lambda!395063 lambda!394997))))

(declare-fun bs!1852965 () Bool)

(assert (= bs!1852965 (and b!6937268 b!6937217)))

(assert (=> bs!1852965 (not (= lambda!395063 lambda!395057))))

(declare-fun bs!1852966 () Bool)

(assert (= bs!1852966 (and b!6937268 d!2166953)))

(assert (=> bs!1852966 (not (= lambda!395063 lambda!395043))))

(assert (=> bs!1852964 (not (= lambda!395063 lambda!394998))))

(declare-fun bs!1852967 () Bool)

(assert (= bs!1852967 (and b!6937268 d!2167025)))

(assert (=> bs!1852967 (not (= lambda!395063 lambda!395053))))

(declare-fun bs!1852968 () Bool)

(assert (= bs!1852968 (and b!6937268 d!2167039)))

(assert (=> bs!1852968 (not (= lambda!395063 lambda!395054))))

(assert (=> bs!1852968 (not (= lambda!395063 lambda!395055))))

(declare-fun bs!1852969 () Bool)

(assert (= bs!1852969 (and b!6937268 d!2167057)))

(assert (=> bs!1852969 (not (= lambda!395063 lambda!395062))))

(declare-fun bs!1852970 () Bool)

(assert (= bs!1852970 (and b!6937268 b!6937215)))

(assert (=> bs!1852970 (= (and (= (_2!37119 lt!2474658) (_2!37119 lt!2474644)) (= (reg!17288 r3!135) (reg!17288 lt!2474648)) (= r3!135 lt!2474648)) (= lambda!395063 lambda!395056))))

(declare-fun bs!1852971 () Bool)

(assert (= bs!1852971 (and b!6937268 b!6936999)))

(assert (=> bs!1852971 (= (and (= (_2!37119 lt!2474658) s!14361) (= (reg!17288 r3!135) (reg!17288 lt!2474652)) (= r3!135 lt!2474652)) (= lambda!395063 lambda!395045))))

(declare-fun bs!1852972 () Bool)

(assert (= bs!1852972 (and b!6937268 b!6936463)))

(assert (=> bs!1852972 (not (= lambda!395063 lambda!394999))))

(declare-fun bs!1852973 () Bool)

(assert (= bs!1852973 (and b!6937268 b!6937012)))

(assert (=> bs!1852973 (not (= lambda!395063 lambda!395049))))

(declare-fun bs!1852974 () Bool)

(assert (= bs!1852974 (and b!6937268 b!6937226)))

(assert (=> bs!1852974 (= (and (= (_2!37119 lt!2474658) (_1!37119 lt!2474644)) (= (reg!17288 r3!135) (reg!17288 r1!6342)) (= r3!135 r1!6342)) (= lambda!395063 lambda!395058))))

(assert (=> bs!1852972 (not (= lambda!395063 lambda!395000))))

(assert (=> bs!1852966 (not (= lambda!395063 lambda!395042))))

(declare-fun bs!1852975 () Bool)

(assert (= bs!1852975 (and b!6937268 b!6937228)))

(assert (=> bs!1852975 (not (= lambda!395063 lambda!395059))))

(declare-fun bs!1852976 () Bool)

(assert (= bs!1852976 (and b!6937268 b!6936468)))

(assert (=> bs!1852976 (not (= lambda!395063 lambda!394995))))

(declare-fun bs!1852977 () Bool)

(assert (= bs!1852977 (and b!6937268 b!6937001)))

(assert (=> bs!1852977 (not (= lambda!395063 lambda!395046))))

(declare-fun bs!1852978 () Bool)

(assert (= bs!1852978 (and b!6937268 b!6937010)))

(assert (=> bs!1852978 (= (and (= (_2!37119 lt!2474658) s!14361) (= (reg!17288 r3!135) (reg!17288 lt!2474657)) (= r3!135 lt!2474657)) (= lambda!395063 lambda!395048))))

(declare-fun bs!1852979 () Bool)

(assert (= bs!1852979 (and b!6937268 b!6936696)))

(assert (=> bs!1852979 (= (and (= (_2!37119 lt!2474658) lt!2474663) (= (reg!17288 r3!135) (reg!17288 lt!2474666)) (= r3!135 lt!2474666)) (= lambda!395063 lambda!395020))))

(declare-fun bs!1852980 () Bool)

(assert (= bs!1852980 (and b!6937268 d!2166933)))

(assert (=> bs!1852980 (not (= lambda!395063 lambda!395033))))

(assert (=> bs!1852976 (not (= lambda!395063 lambda!394996))))

(declare-fun bs!1852981 () Bool)

(assert (= bs!1852981 (and b!6937268 d!2167051)))

(assert (=> bs!1852981 (not (= lambda!395063 lambda!395061))))

(assert (=> bs!1852981 (not (= lambda!395063 lambda!395060))))

(declare-fun bs!1852982 () Bool)

(assert (= bs!1852982 (and b!6937268 b!6936698)))

(assert (=> bs!1852982 (not (= lambda!395063 lambda!395021))))

(assert (=> b!6937268 true))

(assert (=> b!6937268 true))

(declare-fun bs!1852983 () Bool)

(declare-fun b!6937270 () Bool)

(assert (= bs!1852983 (and b!6937270 b!6936467)))

(declare-fun lambda!395064 () Int)

(assert (=> bs!1852983 (not (= lambda!395064 lambda!394997))))

(declare-fun bs!1852984 () Bool)

(assert (= bs!1852984 (and b!6937270 b!6937217)))

(assert (=> bs!1852984 (= (and (= (_2!37119 lt!2474658) (_2!37119 lt!2474644)) (= (regOne!34430 r3!135) (regOne!34430 lt!2474648)) (= (regTwo!34430 r3!135) (regTwo!34430 lt!2474648))) (= lambda!395064 lambda!395057))))

(declare-fun bs!1852985 () Bool)

(assert (= bs!1852985 (and b!6937270 d!2166953)))

(assert (=> bs!1852985 (= (and (= (_2!37119 lt!2474658) lt!2474663) (= (regOne!34430 r3!135) r1!6342) (= (regTwo!34430 r3!135) r2!6280)) (= lambda!395064 lambda!395043))))

(assert (=> bs!1852983 (= (and (= (_2!37119 lt!2474658) (_2!37119 lt!2474644)) (= (regOne!34430 r3!135) r2!6280) (= (regTwo!34430 r3!135) r3!135)) (= lambda!395064 lambda!394998))))

(declare-fun bs!1852986 () Bool)

(assert (= bs!1852986 (and b!6937270 d!2167025)))

(assert (=> bs!1852986 (not (= lambda!395064 lambda!395053))))

(declare-fun bs!1852987 () Bool)

(assert (= bs!1852987 (and b!6937270 d!2167039)))

(assert (=> bs!1852987 (not (= lambda!395064 lambda!395054))))

(assert (=> bs!1852987 (= (and (= (_2!37119 lt!2474658) (_2!37119 lt!2474644)) (= (regOne!34430 r3!135) r2!6280) (= (regTwo!34430 r3!135) r3!135)) (= lambda!395064 lambda!395055))))

(declare-fun bs!1852988 () Bool)

(assert (= bs!1852988 (and b!6937270 d!2167057)))

(assert (=> bs!1852988 (not (= lambda!395064 lambda!395062))))

(declare-fun bs!1852989 () Bool)

(assert (= bs!1852989 (and b!6937270 b!6937215)))

(assert (=> bs!1852989 (not (= lambda!395064 lambda!395056))))

(declare-fun bs!1852990 () Bool)

(assert (= bs!1852990 (and b!6937270 b!6936999)))

(assert (=> bs!1852990 (not (= lambda!395064 lambda!395045))))

(declare-fun bs!1852991 () Bool)

(assert (= bs!1852991 (and b!6937270 b!6936463)))

(assert (=> bs!1852991 (not (= lambda!395064 lambda!394999))))

(declare-fun bs!1852992 () Bool)

(assert (= bs!1852992 (and b!6937270 b!6937012)))

(assert (=> bs!1852992 (= (and (= (_2!37119 lt!2474658) s!14361) (= (regOne!34430 r3!135) (regOne!34430 lt!2474657)) (= (regTwo!34430 r3!135) (regTwo!34430 lt!2474657))) (= lambda!395064 lambda!395049))))

(declare-fun bs!1852993 () Bool)

(assert (= bs!1852993 (and b!6937270 b!6937226)))

(assert (=> bs!1852993 (not (= lambda!395064 lambda!395058))))

(assert (=> bs!1852991 (= (and (= (_2!37119 lt!2474658) lt!2474663) (= (regOne!34430 r3!135) r1!6342) (= (regTwo!34430 r3!135) r2!6280)) (= lambda!395064 lambda!395000))))

(assert (=> bs!1852985 (not (= lambda!395064 lambda!395042))))

(declare-fun bs!1852994 () Bool)

(assert (= bs!1852994 (and b!6937270 b!6937228)))

(assert (=> bs!1852994 (= (and (= (_2!37119 lt!2474658) (_1!37119 lt!2474644)) (= (regOne!34430 r3!135) (regOne!34430 r1!6342)) (= (regTwo!34430 r3!135) (regTwo!34430 r1!6342))) (= lambda!395064 lambda!395059))))

(declare-fun bs!1852995 () Bool)

(assert (= bs!1852995 (and b!6937270 b!6936468)))

(assert (=> bs!1852995 (not (= lambda!395064 lambda!394995))))

(declare-fun bs!1852996 () Bool)

(assert (= bs!1852996 (and b!6937270 b!6937001)))

(assert (=> bs!1852996 (= (and (= (_2!37119 lt!2474658) s!14361) (= (regOne!34430 r3!135) (regOne!34430 lt!2474652)) (= (regTwo!34430 r3!135) (regTwo!34430 lt!2474652))) (= lambda!395064 lambda!395046))))

(declare-fun bs!1852997 () Bool)

(assert (= bs!1852997 (and b!6937270 b!6937010)))

(assert (=> bs!1852997 (not (= lambda!395064 lambda!395048))))

(declare-fun bs!1852998 () Bool)

(assert (= bs!1852998 (and b!6937270 b!6936696)))

(assert (=> bs!1852998 (not (= lambda!395064 lambda!395020))))

(declare-fun bs!1852999 () Bool)

(assert (= bs!1852999 (and b!6937270 d!2166933)))

(assert (=> bs!1852999 (not (= lambda!395064 lambda!395033))))

(declare-fun bs!1853000 () Bool)

(assert (= bs!1853000 (and b!6937270 b!6937268)))

(assert (=> bs!1853000 (not (= lambda!395064 lambda!395063))))

(assert (=> bs!1852995 (= (and (= (_2!37119 lt!2474658) s!14361) (= (regOne!34430 r3!135) r1!6342) (= (regTwo!34430 r3!135) lt!2474648)) (= lambda!395064 lambda!394996))))

(declare-fun bs!1853001 () Bool)

(assert (= bs!1853001 (and b!6937270 d!2167051)))

(assert (=> bs!1853001 (= (and (= (_2!37119 lt!2474658) s!14361) (= (regOne!34430 r3!135) r1!6342) (= (regTwo!34430 r3!135) lt!2474648)) (= lambda!395064 lambda!395061))))

(assert (=> bs!1853001 (not (= lambda!395064 lambda!395060))))

(declare-fun bs!1853002 () Bool)

(assert (= bs!1853002 (and b!6937270 b!6936698)))

(assert (=> bs!1853002 (= (and (= (_2!37119 lt!2474658) lt!2474663) (= (regOne!34430 r3!135) (regOne!34430 lt!2474666)) (= (regTwo!34430 r3!135) (regTwo!34430 lt!2474666))) (= lambda!395064 lambda!395021))))

(assert (=> b!6937270 true))

(assert (=> b!6937270 true))

(declare-fun b!6937264 () Bool)

(declare-fun c!1287320 () Bool)

(assert (=> b!6937264 (= c!1287320 ((_ is Union!16959) r3!135))))

(declare-fun e!4173648 () Bool)

(declare-fun e!4173642 () Bool)

(assert (=> b!6937264 (= e!4173648 e!4173642)))

(declare-fun b!6937265 () Bool)

(assert (=> b!6937265 (= e!4173648 (= (_2!37119 lt!2474658) (Cons!66588 (c!1287149 r3!135) Nil!66588)))))

(declare-fun d!2167065 () Bool)

(declare-fun c!1287319 () Bool)

(assert (=> d!2167065 (= c!1287319 ((_ is EmptyExpr!16959) r3!135))))

(declare-fun e!4173643 () Bool)

(assert (=> d!2167065 (= (matchRSpec!4016 r3!135 (_2!37119 lt!2474658)) e!4173643)))

(declare-fun b!6937266 () Bool)

(declare-fun e!4173644 () Bool)

(assert (=> b!6937266 (= e!4173642 e!4173644)))

(declare-fun c!1287321 () Bool)

(assert (=> b!6937266 (= c!1287321 ((_ is Star!16959) r3!135))))

(declare-fun b!6937267 () Bool)

(declare-fun e!4173647 () Bool)

(assert (=> b!6937267 (= e!4173647 (matchRSpec!4016 (regTwo!34431 r3!135) (_2!37119 lt!2474658)))))

(declare-fun e!4173646 () Bool)

(declare-fun call!630294 () Bool)

(assert (=> b!6937268 (= e!4173646 call!630294)))

(declare-fun b!6937269 () Bool)

(assert (=> b!6937269 (= e!4173642 e!4173647)))

(declare-fun res!2829631 () Bool)

(assert (=> b!6937269 (= res!2829631 (matchRSpec!4016 (regOne!34431 r3!135) (_2!37119 lt!2474658)))))

(assert (=> b!6937269 (=> res!2829631 e!4173647)))

(assert (=> b!6937270 (= e!4173644 call!630294)))

(declare-fun b!6937271 () Bool)

(declare-fun call!630295 () Bool)

(assert (=> b!6937271 (= e!4173643 call!630295)))

(declare-fun b!6937272 () Bool)

(declare-fun res!2829630 () Bool)

(assert (=> b!6937272 (=> res!2829630 e!4173646)))

(assert (=> b!6937272 (= res!2829630 call!630295)))

(assert (=> b!6937272 (= e!4173644 e!4173646)))

(declare-fun bm!630289 () Bool)

(assert (=> bm!630289 (= call!630294 (Exists!3959 (ite c!1287321 lambda!395063 lambda!395064)))))

(declare-fun b!6937273 () Bool)

(declare-fun c!1287322 () Bool)

(assert (=> b!6937273 (= c!1287322 ((_ is ElementMatch!16959) r3!135))))

(declare-fun e!4173645 () Bool)

(assert (=> b!6937273 (= e!4173645 e!4173648)))

(declare-fun bm!630290 () Bool)

(assert (=> bm!630290 (= call!630295 (isEmpty!38853 (_2!37119 lt!2474658)))))

(declare-fun b!6937274 () Bool)

(assert (=> b!6937274 (= e!4173643 e!4173645)))

(declare-fun res!2829632 () Bool)

(assert (=> b!6937274 (= res!2829632 (not ((_ is EmptyLang!16959) r3!135)))))

(assert (=> b!6937274 (=> (not res!2829632) (not e!4173645))))

(assert (= (and d!2167065 c!1287319) b!6937271))

(assert (= (and d!2167065 (not c!1287319)) b!6937274))

(assert (= (and b!6937274 res!2829632) b!6937273))

(assert (= (and b!6937273 c!1287322) b!6937265))

(assert (= (and b!6937273 (not c!1287322)) b!6937264))

(assert (= (and b!6937264 c!1287320) b!6937269))

(assert (= (and b!6937264 (not c!1287320)) b!6937266))

(assert (= (and b!6937269 (not res!2829631)) b!6937267))

(assert (= (and b!6937266 c!1287321) b!6937272))

(assert (= (and b!6937266 (not c!1287321)) b!6937270))

(assert (= (and b!6937272 (not res!2829630)) b!6937268))

(assert (= (or b!6937268 b!6937270) bm!630289))

(assert (= (or b!6937271 b!6937272) bm!630290))

(declare-fun m!7643032 () Bool)

(assert (=> b!6937267 m!7643032))

(declare-fun m!7643034 () Bool)

(assert (=> b!6937269 m!7643034))

(declare-fun m!7643036 () Bool)

(assert (=> bm!630289 m!7643036))

(declare-fun m!7643038 () Bool)

(assert (=> bm!630290 m!7643038))

(assert (=> b!6936469 d!2167065))

(declare-fun d!2167067 () Bool)

(assert (=> d!2167067 (= (matchR!9098 r3!135 (_2!37119 lt!2474658)) (matchRSpec!4016 r3!135 (_2!37119 lt!2474658)))))

(declare-fun lt!2474782 () Unit!160642)

(assert (=> d!2167067 (= lt!2474782 (choose!51669 r3!135 (_2!37119 lt!2474658)))))

(assert (=> d!2167067 (validRegex!8665 r3!135)))

(assert (=> d!2167067 (= (mainMatchTheorem!4016 r3!135 (_2!37119 lt!2474658)) lt!2474782)))

(declare-fun bs!1853003 () Bool)

(assert (= bs!1853003 d!2167067))

(assert (=> bs!1853003 m!7642306))

(assert (=> bs!1853003 m!7642314))

(declare-fun m!7643040 () Bool)

(assert (=> bs!1853003 m!7643040))

(assert (=> bs!1853003 m!7642292))

(assert (=> b!6936469 d!2167067))

(declare-fun bs!1853004 () Bool)

(declare-fun b!6937279 () Bool)

(assert (= bs!1853004 (and b!6937279 b!6936467)))

(declare-fun lambda!395065 () Int)

(assert (=> bs!1853004 (not (= lambda!395065 lambda!394997))))

(declare-fun bs!1853005 () Bool)

(assert (= bs!1853005 (and b!6937279 d!2166953)))

(assert (=> bs!1853005 (not (= lambda!395065 lambda!395043))))

(assert (=> bs!1853004 (not (= lambda!395065 lambda!394998))))

(declare-fun bs!1853006 () Bool)

(assert (= bs!1853006 (and b!6937279 d!2167025)))

(assert (=> bs!1853006 (not (= lambda!395065 lambda!395053))))

(declare-fun bs!1853007 () Bool)

(assert (= bs!1853007 (and b!6937279 d!2167039)))

(assert (=> bs!1853007 (not (= lambda!395065 lambda!395054))))

(assert (=> bs!1853007 (not (= lambda!395065 lambda!395055))))

(declare-fun bs!1853008 () Bool)

(assert (= bs!1853008 (and b!6937279 d!2167057)))

(assert (=> bs!1853008 (not (= lambda!395065 lambda!395062))))

(declare-fun bs!1853009 () Bool)

(assert (= bs!1853009 (and b!6937279 b!6937215)))

(assert (=> bs!1853009 (= (and (= (_1!37119 lt!2474658) (_2!37119 lt!2474644)) (= (reg!17288 r2!6280) (reg!17288 lt!2474648)) (= r2!6280 lt!2474648)) (= lambda!395065 lambda!395056))))

(declare-fun bs!1853010 () Bool)

(assert (= bs!1853010 (and b!6937279 b!6936999)))

(assert (=> bs!1853010 (= (and (= (_1!37119 lt!2474658) s!14361) (= (reg!17288 r2!6280) (reg!17288 lt!2474652)) (= r2!6280 lt!2474652)) (= lambda!395065 lambda!395045))))

(declare-fun bs!1853011 () Bool)

(assert (= bs!1853011 (and b!6937279 b!6936463)))

(assert (=> bs!1853011 (not (= lambda!395065 lambda!394999))))

(declare-fun bs!1853012 () Bool)

(assert (= bs!1853012 (and b!6937279 b!6937012)))

(assert (=> bs!1853012 (not (= lambda!395065 lambda!395049))))

(declare-fun bs!1853013 () Bool)

(assert (= bs!1853013 (and b!6937279 b!6937226)))

(assert (=> bs!1853013 (= (and (= (_1!37119 lt!2474658) (_1!37119 lt!2474644)) (= (reg!17288 r2!6280) (reg!17288 r1!6342)) (= r2!6280 r1!6342)) (= lambda!395065 lambda!395058))))

(assert (=> bs!1853011 (not (= lambda!395065 lambda!395000))))

(assert (=> bs!1853005 (not (= lambda!395065 lambda!395042))))

(declare-fun bs!1853014 () Bool)

(assert (= bs!1853014 (and b!6937279 b!6937228)))

(assert (=> bs!1853014 (not (= lambda!395065 lambda!395059))))

(declare-fun bs!1853015 () Bool)

(assert (= bs!1853015 (and b!6937279 b!6936468)))

(assert (=> bs!1853015 (not (= lambda!395065 lambda!394995))))

(declare-fun bs!1853016 () Bool)

(assert (= bs!1853016 (and b!6937279 b!6937001)))

(assert (=> bs!1853016 (not (= lambda!395065 lambda!395046))))

(declare-fun bs!1853017 () Bool)

(assert (= bs!1853017 (and b!6937279 b!6937270)))

(assert (=> bs!1853017 (not (= lambda!395065 lambda!395064))))

(declare-fun bs!1853018 () Bool)

(assert (= bs!1853018 (and b!6937279 b!6937217)))

(assert (=> bs!1853018 (not (= lambda!395065 lambda!395057))))

(declare-fun bs!1853019 () Bool)

(assert (= bs!1853019 (and b!6937279 b!6937010)))

(assert (=> bs!1853019 (= (and (= (_1!37119 lt!2474658) s!14361) (= (reg!17288 r2!6280) (reg!17288 lt!2474657)) (= r2!6280 lt!2474657)) (= lambda!395065 lambda!395048))))

(declare-fun bs!1853020 () Bool)

(assert (= bs!1853020 (and b!6937279 b!6936696)))

(assert (=> bs!1853020 (= (and (= (_1!37119 lt!2474658) lt!2474663) (= (reg!17288 r2!6280) (reg!17288 lt!2474666)) (= r2!6280 lt!2474666)) (= lambda!395065 lambda!395020))))

(declare-fun bs!1853021 () Bool)

(assert (= bs!1853021 (and b!6937279 d!2166933)))

(assert (=> bs!1853021 (not (= lambda!395065 lambda!395033))))

(declare-fun bs!1853022 () Bool)

(assert (= bs!1853022 (and b!6937279 b!6937268)))

(assert (=> bs!1853022 (= (and (= (_1!37119 lt!2474658) (_2!37119 lt!2474658)) (= (reg!17288 r2!6280) (reg!17288 r3!135)) (= r2!6280 r3!135)) (= lambda!395065 lambda!395063))))

(assert (=> bs!1853015 (not (= lambda!395065 lambda!394996))))

(declare-fun bs!1853023 () Bool)

(assert (= bs!1853023 (and b!6937279 d!2167051)))

(assert (=> bs!1853023 (not (= lambda!395065 lambda!395061))))

(assert (=> bs!1853023 (not (= lambda!395065 lambda!395060))))

(declare-fun bs!1853024 () Bool)

(assert (= bs!1853024 (and b!6937279 b!6936698)))

(assert (=> bs!1853024 (not (= lambda!395065 lambda!395021))))

(assert (=> b!6937279 true))

(assert (=> b!6937279 true))

(declare-fun bs!1853025 () Bool)

(declare-fun b!6937281 () Bool)

(assert (= bs!1853025 (and b!6937281 b!6936467)))

(declare-fun lambda!395066 () Int)

(assert (=> bs!1853025 (not (= lambda!395066 lambda!394997))))

(declare-fun bs!1853026 () Bool)

(assert (= bs!1853026 (and b!6937281 d!2166953)))

(assert (=> bs!1853026 (= (and (= (_1!37119 lt!2474658) lt!2474663) (= (regOne!34430 r2!6280) r1!6342) (= (regTwo!34430 r2!6280) r2!6280)) (= lambda!395066 lambda!395043))))

(assert (=> bs!1853025 (= (and (= (_1!37119 lt!2474658) (_2!37119 lt!2474644)) (= (regOne!34430 r2!6280) r2!6280) (= (regTwo!34430 r2!6280) r3!135)) (= lambda!395066 lambda!394998))))

(declare-fun bs!1853027 () Bool)

(assert (= bs!1853027 (and b!6937281 d!2167025)))

(assert (=> bs!1853027 (not (= lambda!395066 lambda!395053))))

(declare-fun bs!1853028 () Bool)

(assert (= bs!1853028 (and b!6937281 d!2167039)))

(assert (=> bs!1853028 (not (= lambda!395066 lambda!395054))))

(assert (=> bs!1853028 (= (and (= (_1!37119 lt!2474658) (_2!37119 lt!2474644)) (= (regOne!34430 r2!6280) r2!6280) (= (regTwo!34430 r2!6280) r3!135)) (= lambda!395066 lambda!395055))))

(declare-fun bs!1853029 () Bool)

(assert (= bs!1853029 (and b!6937281 d!2167057)))

(assert (=> bs!1853029 (not (= lambda!395066 lambda!395062))))

(declare-fun bs!1853030 () Bool)

(assert (= bs!1853030 (and b!6937281 b!6937215)))

(assert (=> bs!1853030 (not (= lambda!395066 lambda!395056))))

(declare-fun bs!1853031 () Bool)

(assert (= bs!1853031 (and b!6937281 b!6936999)))

(assert (=> bs!1853031 (not (= lambda!395066 lambda!395045))))

(declare-fun bs!1853032 () Bool)

(assert (= bs!1853032 (and b!6937281 b!6936463)))

(assert (=> bs!1853032 (not (= lambda!395066 lambda!394999))))

(declare-fun bs!1853033 () Bool)

(assert (= bs!1853033 (and b!6937281 b!6937012)))

(assert (=> bs!1853033 (= (and (= (_1!37119 lt!2474658) s!14361) (= (regOne!34430 r2!6280) (regOne!34430 lt!2474657)) (= (regTwo!34430 r2!6280) (regTwo!34430 lt!2474657))) (= lambda!395066 lambda!395049))))

(declare-fun bs!1853034 () Bool)

(assert (= bs!1853034 (and b!6937281 b!6937226)))

(assert (=> bs!1853034 (not (= lambda!395066 lambda!395058))))

(declare-fun bs!1853035 () Bool)

(assert (= bs!1853035 (and b!6937281 b!6937279)))

(assert (=> bs!1853035 (not (= lambda!395066 lambda!395065))))

(assert (=> bs!1853032 (= (and (= (_1!37119 lt!2474658) lt!2474663) (= (regOne!34430 r2!6280) r1!6342) (= (regTwo!34430 r2!6280) r2!6280)) (= lambda!395066 lambda!395000))))

(assert (=> bs!1853026 (not (= lambda!395066 lambda!395042))))

(declare-fun bs!1853036 () Bool)

(assert (= bs!1853036 (and b!6937281 b!6937228)))

(assert (=> bs!1853036 (= (and (= (_1!37119 lt!2474658) (_1!37119 lt!2474644)) (= (regOne!34430 r2!6280) (regOne!34430 r1!6342)) (= (regTwo!34430 r2!6280) (regTwo!34430 r1!6342))) (= lambda!395066 lambda!395059))))

(declare-fun bs!1853037 () Bool)

(assert (= bs!1853037 (and b!6937281 b!6936468)))

(assert (=> bs!1853037 (not (= lambda!395066 lambda!394995))))

(declare-fun bs!1853038 () Bool)

(assert (= bs!1853038 (and b!6937281 b!6937001)))

(assert (=> bs!1853038 (= (and (= (_1!37119 lt!2474658) s!14361) (= (regOne!34430 r2!6280) (regOne!34430 lt!2474652)) (= (regTwo!34430 r2!6280) (regTwo!34430 lt!2474652))) (= lambda!395066 lambda!395046))))

(declare-fun bs!1853039 () Bool)

(assert (= bs!1853039 (and b!6937281 b!6937270)))

(assert (=> bs!1853039 (= (and (= (_1!37119 lt!2474658) (_2!37119 lt!2474658)) (= (regOne!34430 r2!6280) (regOne!34430 r3!135)) (= (regTwo!34430 r2!6280) (regTwo!34430 r3!135))) (= lambda!395066 lambda!395064))))

(declare-fun bs!1853040 () Bool)

(assert (= bs!1853040 (and b!6937281 b!6937217)))

(assert (=> bs!1853040 (= (and (= (_1!37119 lt!2474658) (_2!37119 lt!2474644)) (= (regOne!34430 r2!6280) (regOne!34430 lt!2474648)) (= (regTwo!34430 r2!6280) (regTwo!34430 lt!2474648))) (= lambda!395066 lambda!395057))))

(declare-fun bs!1853041 () Bool)

(assert (= bs!1853041 (and b!6937281 b!6937010)))

(assert (=> bs!1853041 (not (= lambda!395066 lambda!395048))))

(declare-fun bs!1853042 () Bool)

(assert (= bs!1853042 (and b!6937281 b!6936696)))

(assert (=> bs!1853042 (not (= lambda!395066 lambda!395020))))

(declare-fun bs!1853043 () Bool)

(assert (= bs!1853043 (and b!6937281 d!2166933)))

(assert (=> bs!1853043 (not (= lambda!395066 lambda!395033))))

(declare-fun bs!1853044 () Bool)

(assert (= bs!1853044 (and b!6937281 b!6937268)))

(assert (=> bs!1853044 (not (= lambda!395066 lambda!395063))))

(assert (=> bs!1853037 (= (and (= (_1!37119 lt!2474658) s!14361) (= (regOne!34430 r2!6280) r1!6342) (= (regTwo!34430 r2!6280) lt!2474648)) (= lambda!395066 lambda!394996))))

(declare-fun bs!1853045 () Bool)

(assert (= bs!1853045 (and b!6937281 d!2167051)))

(assert (=> bs!1853045 (= (and (= (_1!37119 lt!2474658) s!14361) (= (regOne!34430 r2!6280) r1!6342) (= (regTwo!34430 r2!6280) lt!2474648)) (= lambda!395066 lambda!395061))))

(assert (=> bs!1853045 (not (= lambda!395066 lambda!395060))))

(declare-fun bs!1853046 () Bool)

(assert (= bs!1853046 (and b!6937281 b!6936698)))

(assert (=> bs!1853046 (= (and (= (_1!37119 lt!2474658) lt!2474663) (= (regOne!34430 r2!6280) (regOne!34430 lt!2474666)) (= (regTwo!34430 r2!6280) (regTwo!34430 lt!2474666))) (= lambda!395066 lambda!395021))))

(assert (=> b!6937281 true))

(assert (=> b!6937281 true))

(declare-fun b!6937275 () Bool)

(declare-fun c!1287324 () Bool)

(assert (=> b!6937275 (= c!1287324 ((_ is Union!16959) r2!6280))))

(declare-fun e!4173655 () Bool)

(declare-fun e!4173649 () Bool)

(assert (=> b!6937275 (= e!4173655 e!4173649)))

(declare-fun b!6937276 () Bool)

(assert (=> b!6937276 (= e!4173655 (= (_1!37119 lt!2474658) (Cons!66588 (c!1287149 r2!6280) Nil!66588)))))

(declare-fun d!2167069 () Bool)

(declare-fun c!1287323 () Bool)

(assert (=> d!2167069 (= c!1287323 ((_ is EmptyExpr!16959) r2!6280))))

(declare-fun e!4173650 () Bool)

(assert (=> d!2167069 (= (matchRSpec!4016 r2!6280 (_1!37119 lt!2474658)) e!4173650)))

(declare-fun b!6937277 () Bool)

(declare-fun e!4173651 () Bool)

(assert (=> b!6937277 (= e!4173649 e!4173651)))

(declare-fun c!1287325 () Bool)

(assert (=> b!6937277 (= c!1287325 ((_ is Star!16959) r2!6280))))

(declare-fun b!6937278 () Bool)

(declare-fun e!4173654 () Bool)

(assert (=> b!6937278 (= e!4173654 (matchRSpec!4016 (regTwo!34431 r2!6280) (_1!37119 lt!2474658)))))

(declare-fun e!4173653 () Bool)

(declare-fun call!630296 () Bool)

(assert (=> b!6937279 (= e!4173653 call!630296)))

(declare-fun b!6937280 () Bool)

(assert (=> b!6937280 (= e!4173649 e!4173654)))

(declare-fun res!2829634 () Bool)

(assert (=> b!6937280 (= res!2829634 (matchRSpec!4016 (regOne!34431 r2!6280) (_1!37119 lt!2474658)))))

(assert (=> b!6937280 (=> res!2829634 e!4173654)))

(assert (=> b!6937281 (= e!4173651 call!630296)))

(declare-fun b!6937282 () Bool)

(declare-fun call!630297 () Bool)

(assert (=> b!6937282 (= e!4173650 call!630297)))

(declare-fun b!6937283 () Bool)

(declare-fun res!2829633 () Bool)

(assert (=> b!6937283 (=> res!2829633 e!4173653)))

(assert (=> b!6937283 (= res!2829633 call!630297)))

(assert (=> b!6937283 (= e!4173651 e!4173653)))

(declare-fun bm!630291 () Bool)

(assert (=> bm!630291 (= call!630296 (Exists!3959 (ite c!1287325 lambda!395065 lambda!395066)))))

(declare-fun b!6937284 () Bool)

(declare-fun c!1287326 () Bool)

(assert (=> b!6937284 (= c!1287326 ((_ is ElementMatch!16959) r2!6280))))

(declare-fun e!4173652 () Bool)

(assert (=> b!6937284 (= e!4173652 e!4173655)))

(declare-fun bm!630292 () Bool)

(assert (=> bm!630292 (= call!630297 (isEmpty!38853 (_1!37119 lt!2474658)))))

(declare-fun b!6937285 () Bool)

(assert (=> b!6937285 (= e!4173650 e!4173652)))

(declare-fun res!2829635 () Bool)

(assert (=> b!6937285 (= res!2829635 (not ((_ is EmptyLang!16959) r2!6280)))))

(assert (=> b!6937285 (=> (not res!2829635) (not e!4173652))))

(assert (= (and d!2167069 c!1287323) b!6937282))

(assert (= (and d!2167069 (not c!1287323)) b!6937285))

(assert (= (and b!6937285 res!2829635) b!6937284))

(assert (= (and b!6937284 c!1287326) b!6937276))

(assert (= (and b!6937284 (not c!1287326)) b!6937275))

(assert (= (and b!6937275 c!1287324) b!6937280))

(assert (= (and b!6937275 (not c!1287324)) b!6937277))

(assert (= (and b!6937280 (not res!2829634)) b!6937278))

(assert (= (and b!6937277 c!1287325) b!6937283))

(assert (= (and b!6937277 (not c!1287325)) b!6937281))

(assert (= (and b!6937283 (not res!2829633)) b!6937279))

(assert (= (or b!6937279 b!6937281) bm!630291))

(assert (= (or b!6937282 b!6937283) bm!630292))

(declare-fun m!7643042 () Bool)

(assert (=> b!6937278 m!7643042))

(declare-fun m!7643044 () Bool)

(assert (=> b!6937280 m!7643044))

(declare-fun m!7643046 () Bool)

(assert (=> bm!630291 m!7643046))

(assert (=> bm!630292 m!7642922))

(assert (=> b!6936469 d!2167069))

(declare-fun d!2167071 () Bool)

(assert (=> d!2167071 (= (matchR!9098 r2!6280 (_1!37119 lt!2474658)) (matchRSpec!4016 r2!6280 (_1!37119 lt!2474658)))))

(declare-fun lt!2474783 () Unit!160642)

(assert (=> d!2167071 (= lt!2474783 (choose!51669 r2!6280 (_1!37119 lt!2474658)))))

(assert (=> d!2167071 (validRegex!8665 r2!6280)))

(assert (=> d!2167071 (= (mainMatchTheorem!4016 r2!6280 (_1!37119 lt!2474658)) lt!2474783)))

(declare-fun bs!1853047 () Bool)

(assert (= bs!1853047 d!2167071))

(assert (=> bs!1853047 m!7642286))

(assert (=> bs!1853047 m!7642316))

(declare-fun m!7643048 () Bool)

(assert (=> bs!1853047 m!7643048))

(assert (=> bs!1853047 m!7642324))

(assert (=> b!6936469 d!2167071))

(declare-fun b!6937296 () Bool)

(declare-fun e!4173663 () Bool)

(assert (=> b!6937296 (= e!4173663 (isPrefix!5816 (tail!12956 Nil!66588) (tail!12956 lt!2474663)))))

(declare-fun b!6937297 () Bool)

(declare-fun e!4173664 () Bool)

(assert (=> b!6937297 (= e!4173664 (>= (size!40795 lt!2474663) (size!40795 Nil!66588)))))

(declare-fun b!6937295 () Bool)

(declare-fun res!2829645 () Bool)

(assert (=> b!6937295 (=> (not res!2829645) (not e!4173663))))

(assert (=> b!6937295 (= res!2829645 (= (head!13904 Nil!66588) (head!13904 lt!2474663)))))

(declare-fun b!6937294 () Bool)

(declare-fun e!4173662 () Bool)

(assert (=> b!6937294 (= e!4173662 e!4173663)))

(declare-fun res!2829646 () Bool)

(assert (=> b!6937294 (=> (not res!2829646) (not e!4173663))))

(assert (=> b!6937294 (= res!2829646 (not ((_ is Nil!66588) lt!2474663)))))

(declare-fun d!2167073 () Bool)

(assert (=> d!2167073 e!4173664))

(declare-fun res!2829647 () Bool)

(assert (=> d!2167073 (=> res!2829647 e!4173664)))

(declare-fun lt!2474786 () Bool)

(assert (=> d!2167073 (= res!2829647 (not lt!2474786))))

(assert (=> d!2167073 (= lt!2474786 e!4173662)))

(declare-fun res!2829644 () Bool)

(assert (=> d!2167073 (=> res!2829644 e!4173662)))

(assert (=> d!2167073 (= res!2829644 ((_ is Nil!66588) Nil!66588))))

(assert (=> d!2167073 (= (isPrefix!5816 Nil!66588 lt!2474663) lt!2474786)))

(assert (= (and d!2167073 (not res!2829644)) b!6937294))

(assert (= (and b!6937294 res!2829646) b!6937295))

(assert (= (and b!6937295 res!2829645) b!6937296))

(assert (= (and d!2167073 (not res!2829647)) b!6937297))

(declare-fun m!7643050 () Bool)

(assert (=> b!6937296 m!7643050))

(assert (=> b!6937296 m!7642378))

(assert (=> b!6937296 m!7643050))

(assert (=> b!6937296 m!7642378))

(declare-fun m!7643052 () Bool)

(assert (=> b!6937296 m!7643052))

(assert (=> b!6937297 m!7642720))

(declare-fun m!7643054 () Bool)

(assert (=> b!6937297 m!7643054))

(declare-fun m!7643056 () Bool)

(assert (=> b!6937295 m!7643056))

(assert (=> b!6937295 m!7642382))

(assert (=> b!6936459 d!2167073))

(declare-fun b!6937298 () Bool)

(declare-fun e!4173670 () Bool)

(declare-fun e!4173665 () Bool)

(assert (=> b!6937298 (= e!4173670 e!4173665)))

(declare-fun c!1287328 () Bool)

(assert (=> b!6937298 (= c!1287328 ((_ is Union!16959) r1!6342))))

(declare-fun call!630298 () Bool)

(declare-fun c!1287327 () Bool)

(declare-fun bm!630293 () Bool)

(assert (=> bm!630293 (= call!630298 (validRegex!8665 (ite c!1287327 (reg!17288 r1!6342) (ite c!1287328 (regTwo!34431 r1!6342) (regOne!34430 r1!6342)))))))

(declare-fun b!6937299 () Bool)

(declare-fun res!2829649 () Bool)

(declare-fun e!4173666 () Bool)

(assert (=> b!6937299 (=> res!2829649 e!4173666)))

(assert (=> b!6937299 (= res!2829649 (not ((_ is Concat!25804) r1!6342)))))

(assert (=> b!6937299 (= e!4173665 e!4173666)))

(declare-fun d!2167075 () Bool)

(declare-fun res!2829648 () Bool)

(declare-fun e!4173669 () Bool)

(assert (=> d!2167075 (=> res!2829648 e!4173669)))

(assert (=> d!2167075 (= res!2829648 ((_ is ElementMatch!16959) r1!6342))))

(assert (=> d!2167075 (= (validRegex!8665 r1!6342) e!4173669)))

(declare-fun bm!630294 () Bool)

(declare-fun call!630300 () Bool)

(assert (=> bm!630294 (= call!630300 call!630298)))

(declare-fun b!6937300 () Bool)

(declare-fun e!4173668 () Bool)

(assert (=> b!6937300 (= e!4173670 e!4173668)))

(declare-fun res!2829651 () Bool)

(assert (=> b!6937300 (= res!2829651 (not (nullable!6776 (reg!17288 r1!6342))))))

(assert (=> b!6937300 (=> (not res!2829651) (not e!4173668))))

(declare-fun b!6937301 () Bool)

(declare-fun e!4173667 () Bool)

(declare-fun call!630299 () Bool)

(assert (=> b!6937301 (= e!4173667 call!630299)))

(declare-fun b!6937302 () Bool)

(assert (=> b!6937302 (= e!4173669 e!4173670)))

(assert (=> b!6937302 (= c!1287327 ((_ is Star!16959) r1!6342))))

(declare-fun b!6937303 () Bool)

(declare-fun e!4173671 () Bool)

(assert (=> b!6937303 (= e!4173671 call!630300)))

(declare-fun b!6937304 () Bool)

(declare-fun res!2829652 () Bool)

(assert (=> b!6937304 (=> (not res!2829652) (not e!4173671))))

(assert (=> b!6937304 (= res!2829652 call!630299)))

(assert (=> b!6937304 (= e!4173665 e!4173671)))

(declare-fun bm!630295 () Bool)

(assert (=> bm!630295 (= call!630299 (validRegex!8665 (ite c!1287328 (regOne!34431 r1!6342) (regTwo!34430 r1!6342))))))

(declare-fun b!6937305 () Bool)

(assert (=> b!6937305 (= e!4173666 e!4173667)))

(declare-fun res!2829650 () Bool)

(assert (=> b!6937305 (=> (not res!2829650) (not e!4173667))))

(assert (=> b!6937305 (= res!2829650 call!630300)))

(declare-fun b!6937306 () Bool)

(assert (=> b!6937306 (= e!4173668 call!630298)))

(assert (= (and d!2167075 (not res!2829648)) b!6937302))

(assert (= (and b!6937302 c!1287327) b!6937300))

(assert (= (and b!6937302 (not c!1287327)) b!6937298))

(assert (= (and b!6937300 res!2829651) b!6937306))

(assert (= (and b!6937298 c!1287328) b!6937304))

(assert (= (and b!6937298 (not c!1287328)) b!6937299))

(assert (= (and b!6937304 res!2829652) b!6937303))

(assert (= (and b!6937299 (not res!2829649)) b!6937305))

(assert (= (and b!6937305 res!2829650) b!6937301))

(assert (= (or b!6937304 b!6937301) bm!630295))

(assert (= (or b!6937303 b!6937305) bm!630294))

(assert (= (or b!6937306 bm!630294) bm!630293))

(declare-fun m!7643058 () Bool)

(assert (=> bm!630293 m!7643058))

(declare-fun m!7643060 () Bool)

(assert (=> b!6937300 m!7643060))

(declare-fun m!7643062 () Bool)

(assert (=> bm!630295 m!7643062))

(assert (=> start!666350 d!2167075))

(declare-fun bm!630296 () Bool)

(declare-fun call!630301 () Bool)

(assert (=> bm!630296 (= call!630301 (isEmpty!38853 (_2!37119 lt!2474658)))))

(declare-fun b!6937307 () Bool)

(declare-fun res!2829656 () Bool)

(declare-fun e!4173676 () Bool)

(assert (=> b!6937307 (=> (not res!2829656) (not e!4173676))))

(assert (=> b!6937307 (= res!2829656 (isEmpty!38853 (tail!12956 (_2!37119 lt!2474658))))))

(declare-fun b!6937308 () Bool)

(declare-fun res!2829654 () Bool)

(declare-fun e!4173678 () Bool)

(assert (=> b!6937308 (=> res!2829654 e!4173678)))

(assert (=> b!6937308 (= res!2829654 (not ((_ is ElementMatch!16959) r3!135)))))

(declare-fun e!4173677 () Bool)

(assert (=> b!6937308 (= e!4173677 e!4173678)))

(declare-fun b!6937309 () Bool)

(declare-fun e!4173675 () Bool)

(assert (=> b!6937309 (= e!4173675 (matchR!9098 (derivativeStep!5451 r3!135 (head!13904 (_2!37119 lt!2474658))) (tail!12956 (_2!37119 lt!2474658))))))

(declare-fun b!6937310 () Bool)

(declare-fun e!4173672 () Bool)

(assert (=> b!6937310 (= e!4173678 e!4173672)))

(declare-fun res!2829659 () Bool)

(assert (=> b!6937310 (=> (not res!2829659) (not e!4173672))))

(declare-fun lt!2474787 () Bool)

(assert (=> b!6937310 (= res!2829659 (not lt!2474787))))

(declare-fun b!6937311 () Bool)

(declare-fun res!2829655 () Bool)

(assert (=> b!6937311 (=> (not res!2829655) (not e!4173676))))

(assert (=> b!6937311 (= res!2829655 (not call!630301))))

(declare-fun b!6937312 () Bool)

(assert (=> b!6937312 (= e!4173676 (= (head!13904 (_2!37119 lt!2474658)) (c!1287149 r3!135)))))

(declare-fun b!6937313 () Bool)

(declare-fun e!4173674 () Bool)

(assert (=> b!6937313 (= e!4173674 e!4173677)))

(declare-fun c!1287329 () Bool)

(assert (=> b!6937313 (= c!1287329 ((_ is EmptyLang!16959) r3!135))))

(declare-fun b!6937314 () Bool)

(declare-fun e!4173673 () Bool)

(assert (=> b!6937314 (= e!4173672 e!4173673)))

(declare-fun res!2829660 () Bool)

(assert (=> b!6937314 (=> res!2829660 e!4173673)))

(assert (=> b!6937314 (= res!2829660 call!630301)))

(declare-fun b!6937316 () Bool)

(assert (=> b!6937316 (= e!4173675 (nullable!6776 r3!135))))

(declare-fun b!6937317 () Bool)

(assert (=> b!6937317 (= e!4173677 (not lt!2474787))))

(declare-fun b!6937318 () Bool)

(assert (=> b!6937318 (= e!4173674 (= lt!2474787 call!630301))))

(declare-fun b!6937319 () Bool)

(declare-fun res!2829653 () Bool)

(assert (=> b!6937319 (=> res!2829653 e!4173678)))

(assert (=> b!6937319 (= res!2829653 e!4173676)))

(declare-fun res!2829657 () Bool)

(assert (=> b!6937319 (=> (not res!2829657) (not e!4173676))))

(assert (=> b!6937319 (= res!2829657 lt!2474787)))

(declare-fun b!6937320 () Bool)

(assert (=> b!6937320 (= e!4173673 (not (= (head!13904 (_2!37119 lt!2474658)) (c!1287149 r3!135))))))

(declare-fun b!6937315 () Bool)

(declare-fun res!2829658 () Bool)

(assert (=> b!6937315 (=> res!2829658 e!4173673)))

(assert (=> b!6937315 (= res!2829658 (not (isEmpty!38853 (tail!12956 (_2!37119 lt!2474658)))))))

(declare-fun d!2167077 () Bool)

(assert (=> d!2167077 e!4173674))

(declare-fun c!1287330 () Bool)

(assert (=> d!2167077 (= c!1287330 ((_ is EmptyExpr!16959) r3!135))))

(assert (=> d!2167077 (= lt!2474787 e!4173675)))

(declare-fun c!1287331 () Bool)

(assert (=> d!2167077 (= c!1287331 (isEmpty!38853 (_2!37119 lt!2474658)))))

(assert (=> d!2167077 (validRegex!8665 r3!135)))

(assert (=> d!2167077 (= (matchR!9098 r3!135 (_2!37119 lt!2474658)) lt!2474787)))

(assert (= (and d!2167077 c!1287331) b!6937316))

(assert (= (and d!2167077 (not c!1287331)) b!6937309))

(assert (= (and d!2167077 c!1287330) b!6937318))

(assert (= (and d!2167077 (not c!1287330)) b!6937313))

(assert (= (and b!6937313 c!1287329) b!6937317))

(assert (= (and b!6937313 (not c!1287329)) b!6937308))

(assert (= (and b!6937308 (not res!2829654)) b!6937319))

(assert (= (and b!6937319 res!2829657) b!6937311))

(assert (= (and b!6937311 res!2829655) b!6937307))

(assert (= (and b!6937307 res!2829656) b!6937312))

(assert (= (and b!6937319 (not res!2829653)) b!6937310))

(assert (= (and b!6937310 res!2829659) b!6937314))

(assert (= (and b!6937314 (not res!2829660)) b!6937315))

(assert (= (and b!6937315 (not res!2829658)) b!6937320))

(assert (= (or b!6937318 b!6937311 b!6937314) bm!630296))

(assert (=> bm!630296 m!7643038))

(declare-fun m!7643064 () Bool)

(assert (=> b!6937307 m!7643064))

(assert (=> b!6937307 m!7643064))

(declare-fun m!7643066 () Bool)

(assert (=> b!6937307 m!7643066))

(assert (=> d!2167077 m!7643038))

(assert (=> d!2167077 m!7642292))

(declare-fun m!7643068 () Bool)

(assert (=> b!6937309 m!7643068))

(assert (=> b!6937309 m!7643068))

(declare-fun m!7643070 () Bool)

(assert (=> b!6937309 m!7643070))

(assert (=> b!6937309 m!7643064))

(assert (=> b!6937309 m!7643070))

(assert (=> b!6937309 m!7643064))

(declare-fun m!7643072 () Bool)

(assert (=> b!6937309 m!7643072))

(declare-fun m!7643074 () Bool)

(assert (=> b!6937316 m!7643074))

(assert (=> b!6937315 m!7643064))

(assert (=> b!6937315 m!7643064))

(assert (=> b!6937315 m!7643066))

(assert (=> b!6937320 m!7643068))

(assert (=> b!6937312 m!7643068))

(assert (=> b!6936451 d!2167077))

(declare-fun b!6937325 () Bool)

(declare-fun e!4173681 () Bool)

(declare-fun tp!1912286 () Bool)

(assert (=> b!6937325 (= e!4173681 (and tp_is_empty!43143 tp!1912286))))

(assert (=> b!6936457 (= tp!1912195 e!4173681)))

(assert (= (and b!6936457 ((_ is Cons!66588) (t!380455 s!14361))) b!6937325))

(declare-fun b!6937336 () Bool)

(declare-fun e!4173684 () Bool)

(assert (=> b!6937336 (= e!4173684 tp_is_empty!43143)))

(declare-fun b!6937337 () Bool)

(declare-fun tp!1912300 () Bool)

(declare-fun tp!1912297 () Bool)

(assert (=> b!6937337 (= e!4173684 (and tp!1912300 tp!1912297))))

(assert (=> b!6936473 (= tp!1912191 e!4173684)))

(declare-fun b!6937339 () Bool)

(declare-fun tp!1912299 () Bool)

(declare-fun tp!1912298 () Bool)

(assert (=> b!6937339 (= e!4173684 (and tp!1912299 tp!1912298))))

(declare-fun b!6937338 () Bool)

(declare-fun tp!1912301 () Bool)

(assert (=> b!6937338 (= e!4173684 tp!1912301)))

(assert (= (and b!6936473 ((_ is ElementMatch!16959) (reg!17288 r2!6280))) b!6937336))

(assert (= (and b!6936473 ((_ is Concat!25804) (reg!17288 r2!6280))) b!6937337))

(assert (= (and b!6936473 ((_ is Star!16959) (reg!17288 r2!6280))) b!6937338))

(assert (= (and b!6936473 ((_ is Union!16959) (reg!17288 r2!6280))) b!6937339))

(declare-fun b!6937340 () Bool)

(declare-fun e!4173685 () Bool)

(assert (=> b!6937340 (= e!4173685 tp_is_empty!43143)))

(declare-fun b!6937341 () Bool)

(declare-fun tp!1912305 () Bool)

(declare-fun tp!1912302 () Bool)

(assert (=> b!6937341 (= e!4173685 (and tp!1912305 tp!1912302))))

(assert (=> b!6936475 (= tp!1912181 e!4173685)))

(declare-fun b!6937343 () Bool)

(declare-fun tp!1912304 () Bool)

(declare-fun tp!1912303 () Bool)

(assert (=> b!6937343 (= e!4173685 (and tp!1912304 tp!1912303))))

(declare-fun b!6937342 () Bool)

(declare-fun tp!1912306 () Bool)

(assert (=> b!6937342 (= e!4173685 tp!1912306)))

(assert (= (and b!6936475 ((_ is ElementMatch!16959) (regOne!34430 r1!6342))) b!6937340))

(assert (= (and b!6936475 ((_ is Concat!25804) (regOne!34430 r1!6342))) b!6937341))

(assert (= (and b!6936475 ((_ is Star!16959) (regOne!34430 r1!6342))) b!6937342))

(assert (= (and b!6936475 ((_ is Union!16959) (regOne!34430 r1!6342))) b!6937343))

(declare-fun b!6937344 () Bool)

(declare-fun e!4173686 () Bool)

(assert (=> b!6937344 (= e!4173686 tp_is_empty!43143)))

(declare-fun b!6937345 () Bool)

(declare-fun tp!1912310 () Bool)

(declare-fun tp!1912307 () Bool)

(assert (=> b!6937345 (= e!4173686 (and tp!1912310 tp!1912307))))

(assert (=> b!6936475 (= tp!1912188 e!4173686)))

(declare-fun b!6937347 () Bool)

(declare-fun tp!1912309 () Bool)

(declare-fun tp!1912308 () Bool)

(assert (=> b!6937347 (= e!4173686 (and tp!1912309 tp!1912308))))

(declare-fun b!6937346 () Bool)

(declare-fun tp!1912311 () Bool)

(assert (=> b!6937346 (= e!4173686 tp!1912311)))

(assert (= (and b!6936475 ((_ is ElementMatch!16959) (regTwo!34430 r1!6342))) b!6937344))

(assert (= (and b!6936475 ((_ is Concat!25804) (regTwo!34430 r1!6342))) b!6937345))

(assert (= (and b!6936475 ((_ is Star!16959) (regTwo!34430 r1!6342))) b!6937346))

(assert (= (and b!6936475 ((_ is Union!16959) (regTwo!34430 r1!6342))) b!6937347))

(declare-fun b!6937348 () Bool)

(declare-fun e!4173687 () Bool)

(assert (=> b!6937348 (= e!4173687 tp_is_empty!43143)))

(declare-fun b!6937349 () Bool)

(declare-fun tp!1912315 () Bool)

(declare-fun tp!1912312 () Bool)

(assert (=> b!6937349 (= e!4173687 (and tp!1912315 tp!1912312))))

(assert (=> b!6936470 (= tp!1912183 e!4173687)))

(declare-fun b!6937351 () Bool)

(declare-fun tp!1912314 () Bool)

(declare-fun tp!1912313 () Bool)

(assert (=> b!6937351 (= e!4173687 (and tp!1912314 tp!1912313))))

(declare-fun b!6937350 () Bool)

(declare-fun tp!1912316 () Bool)

(assert (=> b!6937350 (= e!4173687 tp!1912316)))

(assert (= (and b!6936470 ((_ is ElementMatch!16959) (reg!17288 r3!135))) b!6937348))

(assert (= (and b!6936470 ((_ is Concat!25804) (reg!17288 r3!135))) b!6937349))

(assert (= (and b!6936470 ((_ is Star!16959) (reg!17288 r3!135))) b!6937350))

(assert (= (and b!6936470 ((_ is Union!16959) (reg!17288 r3!135))) b!6937351))

(declare-fun b!6937352 () Bool)

(declare-fun e!4173688 () Bool)

(assert (=> b!6937352 (= e!4173688 tp_is_empty!43143)))

(declare-fun b!6937353 () Bool)

(declare-fun tp!1912320 () Bool)

(declare-fun tp!1912317 () Bool)

(assert (=> b!6937353 (= e!4173688 (and tp!1912320 tp!1912317))))

(assert (=> b!6936460 (= tp!1912180 e!4173688)))

(declare-fun b!6937355 () Bool)

(declare-fun tp!1912319 () Bool)

(declare-fun tp!1912318 () Bool)

(assert (=> b!6937355 (= e!4173688 (and tp!1912319 tp!1912318))))

(declare-fun b!6937354 () Bool)

(declare-fun tp!1912321 () Bool)

(assert (=> b!6937354 (= e!4173688 tp!1912321)))

(assert (= (and b!6936460 ((_ is ElementMatch!16959) (regOne!34430 r3!135))) b!6937352))

(assert (= (and b!6936460 ((_ is Concat!25804) (regOne!34430 r3!135))) b!6937353))

(assert (= (and b!6936460 ((_ is Star!16959) (regOne!34430 r3!135))) b!6937354))

(assert (= (and b!6936460 ((_ is Union!16959) (regOne!34430 r3!135))) b!6937355))

(declare-fun b!6937356 () Bool)

(declare-fun e!4173689 () Bool)

(assert (=> b!6937356 (= e!4173689 tp_is_empty!43143)))

(declare-fun b!6937357 () Bool)

(declare-fun tp!1912325 () Bool)

(declare-fun tp!1912322 () Bool)

(assert (=> b!6937357 (= e!4173689 (and tp!1912325 tp!1912322))))

(assert (=> b!6936460 (= tp!1912189 e!4173689)))

(declare-fun b!6937359 () Bool)

(declare-fun tp!1912324 () Bool)

(declare-fun tp!1912323 () Bool)

(assert (=> b!6937359 (= e!4173689 (and tp!1912324 tp!1912323))))

(declare-fun b!6937358 () Bool)

(declare-fun tp!1912326 () Bool)

(assert (=> b!6937358 (= e!4173689 tp!1912326)))

(assert (= (and b!6936460 ((_ is ElementMatch!16959) (regTwo!34430 r3!135))) b!6937356))

(assert (= (and b!6936460 ((_ is Concat!25804) (regTwo!34430 r3!135))) b!6937357))

(assert (= (and b!6936460 ((_ is Star!16959) (regTwo!34430 r3!135))) b!6937358))

(assert (= (and b!6936460 ((_ is Union!16959) (regTwo!34430 r3!135))) b!6937359))

(declare-fun b!6937360 () Bool)

(declare-fun e!4173690 () Bool)

(assert (=> b!6937360 (= e!4173690 tp_is_empty!43143)))

(declare-fun b!6937361 () Bool)

(declare-fun tp!1912330 () Bool)

(declare-fun tp!1912327 () Bool)

(assert (=> b!6937361 (= e!4173690 (and tp!1912330 tp!1912327))))

(assert (=> b!6936455 (= tp!1912185 e!4173690)))

(declare-fun b!6937363 () Bool)

(declare-fun tp!1912329 () Bool)

(declare-fun tp!1912328 () Bool)

(assert (=> b!6937363 (= e!4173690 (and tp!1912329 tp!1912328))))

(declare-fun b!6937362 () Bool)

(declare-fun tp!1912331 () Bool)

(assert (=> b!6937362 (= e!4173690 tp!1912331)))

(assert (= (and b!6936455 ((_ is ElementMatch!16959) (regOne!34431 r1!6342))) b!6937360))

(assert (= (and b!6936455 ((_ is Concat!25804) (regOne!34431 r1!6342))) b!6937361))

(assert (= (and b!6936455 ((_ is Star!16959) (regOne!34431 r1!6342))) b!6937362))

(assert (= (and b!6936455 ((_ is Union!16959) (regOne!34431 r1!6342))) b!6937363))

(declare-fun b!6937364 () Bool)

(declare-fun e!4173691 () Bool)

(assert (=> b!6937364 (= e!4173691 tp_is_empty!43143)))

(declare-fun b!6937365 () Bool)

(declare-fun tp!1912335 () Bool)

(declare-fun tp!1912332 () Bool)

(assert (=> b!6937365 (= e!4173691 (and tp!1912335 tp!1912332))))

(assert (=> b!6936455 (= tp!1912184 e!4173691)))

(declare-fun b!6937367 () Bool)

(declare-fun tp!1912334 () Bool)

(declare-fun tp!1912333 () Bool)

(assert (=> b!6937367 (= e!4173691 (and tp!1912334 tp!1912333))))

(declare-fun b!6937366 () Bool)

(declare-fun tp!1912336 () Bool)

(assert (=> b!6937366 (= e!4173691 tp!1912336)))

(assert (= (and b!6936455 ((_ is ElementMatch!16959) (regTwo!34431 r1!6342))) b!6937364))

(assert (= (and b!6936455 ((_ is Concat!25804) (regTwo!34431 r1!6342))) b!6937365))

(assert (= (and b!6936455 ((_ is Star!16959) (regTwo!34431 r1!6342))) b!6937366))

(assert (= (and b!6936455 ((_ is Union!16959) (regTwo!34431 r1!6342))) b!6937367))

(declare-fun b!6937368 () Bool)

(declare-fun e!4173692 () Bool)

(assert (=> b!6937368 (= e!4173692 tp_is_empty!43143)))

(declare-fun b!6937369 () Bool)

(declare-fun tp!1912340 () Bool)

(declare-fun tp!1912337 () Bool)

(assert (=> b!6937369 (= e!4173692 (and tp!1912340 tp!1912337))))

(assert (=> b!6936471 (= tp!1912194 e!4173692)))

(declare-fun b!6937371 () Bool)

(declare-fun tp!1912339 () Bool)

(declare-fun tp!1912338 () Bool)

(assert (=> b!6937371 (= e!4173692 (and tp!1912339 tp!1912338))))

(declare-fun b!6937370 () Bool)

(declare-fun tp!1912341 () Bool)

(assert (=> b!6937370 (= e!4173692 tp!1912341)))

(assert (= (and b!6936471 ((_ is ElementMatch!16959) (regOne!34430 r2!6280))) b!6937368))

(assert (= (and b!6936471 ((_ is Concat!25804) (regOne!34430 r2!6280))) b!6937369))

(assert (= (and b!6936471 ((_ is Star!16959) (regOne!34430 r2!6280))) b!6937370))

(assert (= (and b!6936471 ((_ is Union!16959) (regOne!34430 r2!6280))) b!6937371))

(declare-fun b!6937372 () Bool)

(declare-fun e!4173693 () Bool)

(assert (=> b!6937372 (= e!4173693 tp_is_empty!43143)))

(declare-fun b!6937373 () Bool)

(declare-fun tp!1912345 () Bool)

(declare-fun tp!1912342 () Bool)

(assert (=> b!6937373 (= e!4173693 (and tp!1912345 tp!1912342))))

(assert (=> b!6936471 (= tp!1912190 e!4173693)))

(declare-fun b!6937375 () Bool)

(declare-fun tp!1912344 () Bool)

(declare-fun tp!1912343 () Bool)

(assert (=> b!6937375 (= e!4173693 (and tp!1912344 tp!1912343))))

(declare-fun b!6937374 () Bool)

(declare-fun tp!1912346 () Bool)

(assert (=> b!6937374 (= e!4173693 tp!1912346)))

(assert (= (and b!6936471 ((_ is ElementMatch!16959) (regTwo!34430 r2!6280))) b!6937372))

(assert (= (and b!6936471 ((_ is Concat!25804) (regTwo!34430 r2!6280))) b!6937373))

(assert (= (and b!6936471 ((_ is Star!16959) (regTwo!34430 r2!6280))) b!6937374))

(assert (= (and b!6936471 ((_ is Union!16959) (regTwo!34430 r2!6280))) b!6937375))

(declare-fun b!6937376 () Bool)

(declare-fun e!4173694 () Bool)

(assert (=> b!6937376 (= e!4173694 tp_is_empty!43143)))

(declare-fun b!6937377 () Bool)

(declare-fun tp!1912350 () Bool)

(declare-fun tp!1912347 () Bool)

(assert (=> b!6937377 (= e!4173694 (and tp!1912350 tp!1912347))))

(assert (=> b!6936461 (= tp!1912182 e!4173694)))

(declare-fun b!6937379 () Bool)

(declare-fun tp!1912349 () Bool)

(declare-fun tp!1912348 () Bool)

(assert (=> b!6937379 (= e!4173694 (and tp!1912349 tp!1912348))))

(declare-fun b!6937378 () Bool)

(declare-fun tp!1912351 () Bool)

(assert (=> b!6937378 (= e!4173694 tp!1912351)))

(assert (= (and b!6936461 ((_ is ElementMatch!16959) (regOne!34431 r3!135))) b!6937376))

(assert (= (and b!6936461 ((_ is Concat!25804) (regOne!34431 r3!135))) b!6937377))

(assert (= (and b!6936461 ((_ is Star!16959) (regOne!34431 r3!135))) b!6937378))

(assert (= (and b!6936461 ((_ is Union!16959) (regOne!34431 r3!135))) b!6937379))

(declare-fun b!6937380 () Bool)

(declare-fun e!4173695 () Bool)

(assert (=> b!6937380 (= e!4173695 tp_is_empty!43143)))

(declare-fun b!6937381 () Bool)

(declare-fun tp!1912355 () Bool)

(declare-fun tp!1912352 () Bool)

(assert (=> b!6937381 (= e!4173695 (and tp!1912355 tp!1912352))))

(assert (=> b!6936461 (= tp!1912193 e!4173695)))

(declare-fun b!6937383 () Bool)

(declare-fun tp!1912354 () Bool)

(declare-fun tp!1912353 () Bool)

(assert (=> b!6937383 (= e!4173695 (and tp!1912354 tp!1912353))))

(declare-fun b!6937382 () Bool)

(declare-fun tp!1912356 () Bool)

(assert (=> b!6937382 (= e!4173695 tp!1912356)))

(assert (= (and b!6936461 ((_ is ElementMatch!16959) (regTwo!34431 r3!135))) b!6937380))

(assert (= (and b!6936461 ((_ is Concat!25804) (regTwo!34431 r3!135))) b!6937381))

(assert (= (and b!6936461 ((_ is Star!16959) (regTwo!34431 r3!135))) b!6937382))

(assert (= (and b!6936461 ((_ is Union!16959) (regTwo!34431 r3!135))) b!6937383))

(declare-fun b!6937384 () Bool)

(declare-fun e!4173696 () Bool)

(assert (=> b!6937384 (= e!4173696 tp_is_empty!43143)))

(declare-fun b!6937385 () Bool)

(declare-fun tp!1912360 () Bool)

(declare-fun tp!1912357 () Bool)

(assert (=> b!6937385 (= e!4173696 (and tp!1912360 tp!1912357))))

(assert (=> b!6936472 (= tp!1912187 e!4173696)))

(declare-fun b!6937387 () Bool)

(declare-fun tp!1912359 () Bool)

(declare-fun tp!1912358 () Bool)

(assert (=> b!6937387 (= e!4173696 (and tp!1912359 tp!1912358))))

(declare-fun b!6937386 () Bool)

(declare-fun tp!1912361 () Bool)

(assert (=> b!6937386 (= e!4173696 tp!1912361)))

(assert (= (and b!6936472 ((_ is ElementMatch!16959) (reg!17288 r1!6342))) b!6937384))

(assert (= (and b!6936472 ((_ is Concat!25804) (reg!17288 r1!6342))) b!6937385))

(assert (= (and b!6936472 ((_ is Star!16959) (reg!17288 r1!6342))) b!6937386))

(assert (= (and b!6936472 ((_ is Union!16959) (reg!17288 r1!6342))) b!6937387))

(declare-fun b!6937388 () Bool)

(declare-fun e!4173697 () Bool)

(assert (=> b!6937388 (= e!4173697 tp_is_empty!43143)))

(declare-fun b!6937389 () Bool)

(declare-fun tp!1912365 () Bool)

(declare-fun tp!1912362 () Bool)

(assert (=> b!6937389 (= e!4173697 (and tp!1912365 tp!1912362))))

(assert (=> b!6936462 (= tp!1912192 e!4173697)))

(declare-fun b!6937391 () Bool)

(declare-fun tp!1912364 () Bool)

(declare-fun tp!1912363 () Bool)

(assert (=> b!6937391 (= e!4173697 (and tp!1912364 tp!1912363))))

(declare-fun b!6937390 () Bool)

(declare-fun tp!1912366 () Bool)

(assert (=> b!6937390 (= e!4173697 tp!1912366)))

(assert (= (and b!6936462 ((_ is ElementMatch!16959) (regOne!34431 r2!6280))) b!6937388))

(assert (= (and b!6936462 ((_ is Concat!25804) (regOne!34431 r2!6280))) b!6937389))

(assert (= (and b!6936462 ((_ is Star!16959) (regOne!34431 r2!6280))) b!6937390))

(assert (= (and b!6936462 ((_ is Union!16959) (regOne!34431 r2!6280))) b!6937391))

(declare-fun b!6937392 () Bool)

(declare-fun e!4173698 () Bool)

(assert (=> b!6937392 (= e!4173698 tp_is_empty!43143)))

(declare-fun b!6937393 () Bool)

(declare-fun tp!1912370 () Bool)

(declare-fun tp!1912367 () Bool)

(assert (=> b!6937393 (= e!4173698 (and tp!1912370 tp!1912367))))

(assert (=> b!6936462 (= tp!1912186 e!4173698)))

(declare-fun b!6937395 () Bool)

(declare-fun tp!1912369 () Bool)

(declare-fun tp!1912368 () Bool)

(assert (=> b!6937395 (= e!4173698 (and tp!1912369 tp!1912368))))

(declare-fun b!6937394 () Bool)

(declare-fun tp!1912371 () Bool)

(assert (=> b!6937394 (= e!4173698 tp!1912371)))

(assert (= (and b!6936462 ((_ is ElementMatch!16959) (regTwo!34431 r2!6280))) b!6937392))

(assert (= (and b!6936462 ((_ is Concat!25804) (regTwo!34431 r2!6280))) b!6937393))

(assert (= (and b!6936462 ((_ is Star!16959) (regTwo!34431 r2!6280))) b!6937394))

(assert (= (and b!6936462 ((_ is Union!16959) (regTwo!34431 r2!6280))) b!6937395))

(check-sat (not b!6936808) (not d!2166925) (not b!6937395) (not d!2166983) (not d!2167005) (not b!6936965) (not b!6937339) (not b!6937371) (not d!2166905) (not b!6937022) (not bm!630296) (not b!6937349) (not d!2166953) (not b!6937391) (not b!6937049) (not b!6937316) (not b!6937189) (not bm!630286) (not b!6936961) (not b!6936806) (not d!2166879) (not b!6937363) (not b!6937373) (not b!6937235) (not bm!630283) (not b!6937225) (not b!6937257) (not b!6937053) (not b!6937309) (not b!6937142) (not b!6937393) (not b!6936958) (not bm!630285) (not b!6937040) (not d!2167033) (not b!6937375) (not b!6936970) (not b!6937325) (not b!6937048) (not b!6937386) (not b!6937262) (not b!6937390) (not b!6937267) (not b!6937278) (not b!6937261) (not b!6937300) (not bm!630291) (not b!6936975) (not d!2167021) (not d!2167045) (not b!6936998) (not b!6937389) (not b!6937337) (not b!6937346) (not b!6936697) (not b!6937258) (not bm!630259) (not b!6936964) (not b!6936804) (not bm!630209) (not d!2167063) (not b!6937148) (not d!2166975) (not d!2166883) (not b!6936811) (not b!6937042) (not bm!630280) (not b!6937019) (not b!6937152) (not d!2167023) (not b!6937359) (not b!6937246) (not d!2167031) (not b!6936536) (not b!6937387) (not b!6937186) (not b!6937366) (not b!6937025) (not bm!630270) (not b!6937296) (not b!6937312) (not b!6937315) (not bm!630275) (not b!6937374) (not b!6937320) (not b!6937249) (not b!6936945) (not b!6937216) (not b!6937355) (not b!6937227) (not bm!630281) (not b!6937383) (not b!6936812) (not b!6937295) (not b!6937347) (not bm!630232) (not bm!630273) (not b!6936537) (not d!2167011) (not b!6937024) (not bm!630284) (not b!6937269) (not b!6937378) (not b!6937350) (not b!6937000) (not b!6937362) (not bm!630261) (not bm!630258) (not b!6936979) (not d!2167025) (not d!2167049) (not bm!630289) (not b!6937135) (not d!2166881) (not b!6937351) (not d!2167077) (not b!6936603) (not bm!630290) (not b!6937361) tp_is_empty!43143 (not b!6937370) (not b!6936978) (not bm!630293) (not b!6937009) (not b!6937338) (not b!6937074) (not b!6937343) (not b!6937137) (not d!2167035) (not b!6936983) (not b!6937214) (not b!6937357) (not d!2166875) (not d!2167061) (not d!2166981) (not d!2167039) (not b!6937238) (not bm!630263) (not b!6937045) (not b!6936530) (not b!6937083) (not b!6936528) (not b!6936604) (not bm!630282) (not bm!630295) (not d!2167051) (not b!6937147) (not d!2166971) (not b!6936972) (not b!6937180) (not b!6937381) (not d!2167057) (not d!2166995) (not bm!630254) (not bm!630255) (not b!6936541) (not b!6937367) (not b!6937297) (not b!6936809) (not b!6937280) (not bm!630288) (not b!6936944) (not b!6937365) (not b!6936969) (not d!2167037) (not b!6937185) (not b!6937342) (not bm!630260) (not d!2166987) (not b!6936695) (not b!6937377) (not b!6937241) (not b!6937188) (not bm!630292) (not b!6937242) (not b!6936956) (not b!6937017) (not b!6937379) (not b!6937394) (not bm!630233) (not d!2167053) (not b!6937341) (not d!2167067) (not b!6937233) (not b!6937353) (not b!6937011) (not b!6937345) (not b!6937369) (not b!6937385) (not d!2167001) (not b!6937307) (not b!6937021) (not b!6937354) (not b!6936533) (not d!2167003) (not d!2167055) (not d!2166871) (not b!6937183) (not b!6937382) (not bm!630272) (not d!2167071) (not b!6937358) (not d!2166933))
(check-sat)
