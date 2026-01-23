; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664166 () Bool)

(assert start!664166)

(declare-fun b!6888564 () Bool)

(assert (=> b!6888564 true))

(assert (=> b!6888564 true))

(assert (=> b!6888564 true))

(declare-fun lambda!390414 () Int)

(declare-fun lambda!390413 () Int)

(assert (=> b!6888564 (not (= lambda!390414 lambda!390413))))

(assert (=> b!6888564 true))

(assert (=> b!6888564 true))

(assert (=> b!6888564 true))

(declare-fun bs!1839142 () Bool)

(declare-fun b!6888548 () Bool)

(assert (= bs!1839142 (and b!6888548 b!6888564)))

(declare-datatypes ((C!33876 0))(
  ( (C!33877 (val!26640 Int)) )
))
(declare-datatypes ((Regex!16803 0))(
  ( (ElementMatch!16803 (c!1280807 C!33876)) (Concat!25648 (regOne!34118 Regex!16803) (regTwo!34118 Regex!16803)) (EmptyExpr!16803) (Star!16803 (reg!17132 Regex!16803)) (EmptyLang!16803) (Union!16803 (regOne!34119 Regex!16803) (regTwo!34119 Regex!16803)) )
))
(declare-fun r1!6342 () Regex!16803)

(declare-fun r3!135 () Regex!16803)

(declare-datatypes ((List!66560 0))(
  ( (Nil!66436) (Cons!66436 (h!72884 C!33876) (t!380303 List!66560)) )
))
(declare-datatypes ((tuple2!67352 0))(
  ( (tuple2!67353 (_1!36979 List!66560) (_2!36979 List!66560)) )
))
(declare-fun lt!2462393 () tuple2!67352)

(declare-fun s!14361 () List!66560)

(declare-fun lt!2462381 () Regex!16803)

(declare-fun r2!6280 () Regex!16803)

(declare-fun lambda!390415 () Int)

(assert (=> bs!1839142 (= (and (= (_1!36979 lt!2462393) s!14361) (= r1!6342 lt!2462381) (= r2!6280 r3!135)) (= lambda!390415 lambda!390413))))

(assert (=> bs!1839142 (not (= lambda!390415 lambda!390414))))

(assert (=> b!6888548 true))

(assert (=> b!6888548 true))

(assert (=> b!6888548 true))

(declare-fun lambda!390416 () Int)

(assert (=> bs!1839142 (not (= lambda!390416 lambda!390413))))

(assert (=> bs!1839142 (= (and (= (_1!36979 lt!2462393) s!14361) (= r1!6342 lt!2462381) (= r2!6280 r3!135)) (= lambda!390416 lambda!390414))))

(assert (=> b!6888548 (not (= lambda!390416 lambda!390415))))

(assert (=> b!6888548 true))

(assert (=> b!6888548 true))

(assert (=> b!6888548 true))

(declare-fun bs!1839143 () Bool)

(declare-fun b!6888552 () Bool)

(assert (= bs!1839143 (and b!6888552 b!6888564)))

(declare-fun lt!2462383 () List!66560)

(declare-fun lambda!390417 () Int)

(assert (=> bs!1839143 (= (and (= lt!2462383 s!14361) (= r2!6280 lt!2462381)) (= lambda!390417 lambda!390413))))

(assert (=> bs!1839143 (not (= lambda!390417 lambda!390414))))

(declare-fun bs!1839144 () Bool)

(assert (= bs!1839144 (and b!6888552 b!6888548)))

(assert (=> bs!1839144 (= (and (= lt!2462383 (_1!36979 lt!2462393)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!390417 lambda!390415))))

(assert (=> bs!1839144 (not (= lambda!390417 lambda!390416))))

(assert (=> b!6888552 true))

(assert (=> b!6888552 true))

(assert (=> b!6888552 true))

(declare-fun lambda!390418 () Int)

(assert (=> bs!1839143 (= (and (= lt!2462383 s!14361) (= r2!6280 lt!2462381)) (= lambda!390418 lambda!390414))))

(assert (=> bs!1839144 (not (= lambda!390418 lambda!390415))))

(assert (=> b!6888552 (not (= lambda!390418 lambda!390417))))

(assert (=> bs!1839144 (= (and (= lt!2462383 (_1!36979 lt!2462393)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!390418 lambda!390416))))

(assert (=> bs!1839143 (not (= lambda!390418 lambda!390413))))

(assert (=> b!6888552 true))

(assert (=> b!6888552 true))

(assert (=> b!6888552 true))

(declare-fun bs!1839145 () Bool)

(declare-fun b!6888569 () Bool)

(assert (= bs!1839145 (and b!6888569 b!6888564)))

(declare-fun lambda!390419 () Int)

(assert (=> bs!1839145 (not (= lambda!390419 lambda!390414))))

(declare-fun bs!1839146 () Bool)

(assert (= bs!1839146 (and b!6888569 b!6888552)))

(declare-fun lt!2462386 () Regex!16803)

(assert (=> bs!1839146 (= (and (= s!14361 lt!2462383) (= r1!6342 r2!6280) (= lt!2462386 r3!135)) (= lambda!390419 lambda!390417))))

(declare-fun bs!1839147 () Bool)

(assert (= bs!1839147 (and b!6888569 b!6888548)))

(assert (=> bs!1839147 (not (= lambda!390419 lambda!390416))))

(assert (=> bs!1839145 (= (and (= r1!6342 lt!2462381) (= lt!2462386 r3!135)) (= lambda!390419 lambda!390413))))

(assert (=> bs!1839146 (not (= lambda!390419 lambda!390418))))

(assert (=> bs!1839147 (= (and (= s!14361 (_1!36979 lt!2462393)) (= lt!2462386 r2!6280)) (= lambda!390419 lambda!390415))))

(assert (=> b!6888569 true))

(assert (=> b!6888569 true))

(assert (=> b!6888569 true))

(declare-fun bs!1839148 () Bool)

(declare-fun b!6888547 () Bool)

(assert (= bs!1839148 (and b!6888547 b!6888564)))

(declare-fun lambda!390420 () Int)

(assert (=> bs!1839148 (= (and (= r1!6342 lt!2462381) (= lt!2462386 r3!135)) (= lambda!390420 lambda!390414))))

(declare-fun bs!1839149 () Bool)

(assert (= bs!1839149 (and b!6888547 b!6888552)))

(assert (=> bs!1839149 (not (= lambda!390420 lambda!390417))))

(declare-fun bs!1839150 () Bool)

(assert (= bs!1839150 (and b!6888547 b!6888548)))

(assert (=> bs!1839150 (= (and (= s!14361 (_1!36979 lt!2462393)) (= lt!2462386 r2!6280)) (= lambda!390420 lambda!390416))))

(declare-fun bs!1839151 () Bool)

(assert (= bs!1839151 (and b!6888547 b!6888569)))

(assert (=> bs!1839151 (not (= lambda!390420 lambda!390419))))

(assert (=> bs!1839148 (not (= lambda!390420 lambda!390413))))

(assert (=> bs!1839149 (= (and (= s!14361 lt!2462383) (= r1!6342 r2!6280) (= lt!2462386 r3!135)) (= lambda!390420 lambda!390418))))

(assert (=> bs!1839150 (not (= lambda!390420 lambda!390415))))

(assert (=> b!6888547 true))

(assert (=> b!6888547 true))

(assert (=> b!6888547 true))

(declare-fun e!4150097 () Bool)

(declare-fun lt!2462402 () Regex!16803)

(declare-fun validRegex!8511 (Regex!16803) Bool)

(assert (=> b!6888547 (= e!4150097 (validRegex!8511 lt!2462402))))

(declare-fun Exists!3815 (Int) Bool)

(assert (=> b!6888547 (= (Exists!3815 lambda!390419) (Exists!3815 lambda!390420))))

(declare-datatypes ((Unit!160326 0))(
  ( (Unit!160327) )
))
(declare-fun lt!2462387 () Unit!160326)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2294 (Regex!16803 Regex!16803 List!66560) Unit!160326)

(assert (=> b!6888547 (= lt!2462387 (lemmaExistCutMatchRandMatchRSpecEquivalent!2294 r1!6342 lt!2462386 s!14361))))

(declare-fun e!4150098 () Bool)

(declare-fun e!4150099 () Bool)

(assert (=> b!6888548 (= e!4150098 e!4150099)))

(declare-fun res!2808512 () Bool)

(assert (=> b!6888548 (=> res!2808512 e!4150099)))

(declare-fun lt!2462407 () tuple2!67352)

(declare-fun matchR!8948 (Regex!16803 List!66560) Bool)

(assert (=> b!6888548 (= res!2808512 (not (matchR!8948 r1!6342 (_1!36979 lt!2462407))))))

(declare-datatypes ((Option!16588 0))(
  ( (None!16587) (Some!16587 (v!52859 tuple2!67352)) )
))
(declare-fun lt!2462376 () Option!16588)

(declare-fun get!23167 (Option!16588) tuple2!67352)

(assert (=> b!6888548 (= lt!2462407 (get!23167 lt!2462376))))

(assert (=> b!6888548 (= (Exists!3815 lambda!390415) (Exists!3815 lambda!390416))))

(declare-fun lt!2462397 () Unit!160326)

(assert (=> b!6888548 (= lt!2462397 (lemmaExistCutMatchRandMatchRSpecEquivalent!2294 r1!6342 r2!6280 (_1!36979 lt!2462393)))))

(declare-fun isDefined!13291 (Option!16588) Bool)

(assert (=> b!6888548 (= (isDefined!13291 lt!2462376) (Exists!3815 lambda!390415))))

(declare-fun findConcatSeparation!3002 (Regex!16803 Regex!16803 List!66560 List!66560 List!66560) Option!16588)

(assert (=> b!6888548 (= lt!2462376 (findConcatSeparation!3002 r1!6342 r2!6280 Nil!66436 (_1!36979 lt!2462393) (_1!36979 lt!2462393)))))

(declare-fun lt!2462378 () Unit!160326)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2766 (Regex!16803 Regex!16803 List!66560) Unit!160326)

(assert (=> b!6888548 (= lt!2462378 (lemmaFindConcatSeparationEquivalentToExists!2766 r1!6342 r2!6280 (_1!36979 lt!2462393)))))

(declare-fun b!6888549 () Bool)

(declare-fun e!4150105 () Bool)

(declare-fun e!4150104 () Bool)

(assert (=> b!6888549 (= e!4150105 (not e!4150104))))

(declare-fun res!2808515 () Bool)

(assert (=> b!6888549 (=> res!2808515 e!4150104)))

(declare-fun lt!2462390 () Bool)

(assert (=> b!6888549 (= res!2808515 (not lt!2462390))))

(declare-fun lt!2462403 () Regex!16803)

(declare-fun matchRSpec!3866 (Regex!16803 List!66560) Bool)

(assert (=> b!6888549 (= (matchR!8948 lt!2462403 s!14361) (matchRSpec!3866 lt!2462403 s!14361))))

(declare-fun lt!2462405 () Unit!160326)

(declare-fun mainMatchTheorem!3866 (Regex!16803 List!66560) Unit!160326)

(assert (=> b!6888549 (= lt!2462405 (mainMatchTheorem!3866 lt!2462403 s!14361))))

(assert (=> b!6888549 (= lt!2462390 (matchRSpec!3866 lt!2462402 s!14361))))

(assert (=> b!6888549 (= lt!2462390 (matchR!8948 lt!2462402 s!14361))))

(declare-fun lt!2462400 () Unit!160326)

(assert (=> b!6888549 (= lt!2462400 (mainMatchTheorem!3866 lt!2462402 s!14361))))

(assert (=> b!6888549 (= lt!2462403 (Concat!25648 r1!6342 lt!2462386))))

(assert (=> b!6888549 (= lt!2462386 (Concat!25648 r2!6280 r3!135))))

(assert (=> b!6888549 (= lt!2462402 (Concat!25648 lt!2462381 r3!135))))

(assert (=> b!6888549 (= lt!2462381 (Concat!25648 r1!6342 r2!6280))))

(declare-fun b!6888550 () Bool)

(declare-fun e!4150102 () Bool)

(assert (=> b!6888550 (= e!4150099 e!4150102)))

(declare-fun res!2808511 () Bool)

(assert (=> b!6888550 (=> res!2808511 e!4150102)))

(declare-fun lt!2462401 () List!66560)

(assert (=> b!6888550 (= res!2808511 (not (= lt!2462401 s!14361)))))

(declare-fun ++!14882 (List!66560 List!66560) List!66560)

(assert (=> b!6888550 (= lt!2462401 (++!14882 (++!14882 (_1!36979 lt!2462407) (_2!36979 lt!2462407)) (_2!36979 lt!2462393)))))

(assert (=> b!6888550 (matchRSpec!3866 r2!6280 (_2!36979 lt!2462407))))

(declare-fun lt!2462379 () Unit!160326)

(assert (=> b!6888550 (= lt!2462379 (mainMatchTheorem!3866 r2!6280 (_2!36979 lt!2462407)))))

(assert (=> b!6888550 (matchRSpec!3866 r1!6342 (_1!36979 lt!2462407))))

(declare-fun lt!2462380 () Unit!160326)

(assert (=> b!6888550 (= lt!2462380 (mainMatchTheorem!3866 r1!6342 (_1!36979 lt!2462407)))))

(declare-fun b!6888551 () Bool)

(declare-fun e!4150101 () Bool)

(declare-fun tp!1895293 () Bool)

(declare-fun tp!1895298 () Bool)

(assert (=> b!6888551 (= e!4150101 (and tp!1895293 tp!1895298))))

(declare-fun e!4150095 () Bool)

(assert (=> b!6888552 (= e!4150102 e!4150095)))

(declare-fun res!2808516 () Bool)

(assert (=> b!6888552 (=> res!2808516 e!4150095)))

(declare-fun lt!2462391 () Bool)

(assert (=> b!6888552 (= res!2808516 (not lt!2462391))))

(declare-fun lt!2462406 () Bool)

(assert (=> b!6888552 lt!2462406))

(declare-fun lt!2462394 () Unit!160326)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!50 (Regex!16803 Regex!16803 List!66560 List!66560 List!66560 List!66560 List!66560) Unit!160326)

(assert (=> b!6888552 (= lt!2462394 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!50 r2!6280 r3!135 (_2!36979 lt!2462407) (_2!36979 lt!2462393) lt!2462383 Nil!66436 lt!2462383))))

(assert (=> b!6888552 (= (Exists!3815 lambda!390417) (Exists!3815 lambda!390418))))

(declare-fun lt!2462396 () Unit!160326)

(assert (=> b!6888552 (= lt!2462396 (lemmaExistCutMatchRandMatchRSpecEquivalent!2294 r2!6280 r3!135 lt!2462383))))

(assert (=> b!6888552 (= lt!2462406 (Exists!3815 lambda!390417))))

(assert (=> b!6888552 (= lt!2462406 (isDefined!13291 (findConcatSeparation!3002 r2!6280 r3!135 Nil!66436 lt!2462383 lt!2462383)))))

(declare-fun lt!2462404 () Unit!160326)

(assert (=> b!6888552 (= lt!2462404 (lemmaFindConcatSeparationEquivalentToExists!2766 r2!6280 r3!135 lt!2462383))))

(assert (=> b!6888552 (= lt!2462391 (matchRSpec!3866 lt!2462386 lt!2462383))))

(assert (=> b!6888552 (= lt!2462391 (matchR!8948 lt!2462386 lt!2462383))))

(declare-fun lt!2462388 () Unit!160326)

(assert (=> b!6888552 (= lt!2462388 (mainMatchTheorem!3866 lt!2462386 lt!2462383))))

(assert (=> b!6888552 (= lt!2462383 (++!14882 (_2!36979 lt!2462407) (_2!36979 lt!2462393)))))

(declare-fun b!6888553 () Bool)

(declare-fun res!2808517 () Bool)

(assert (=> b!6888553 (=> (not res!2808517) (not e!4150105))))

(assert (=> b!6888553 (= res!2808517 (validRegex!8511 r3!135))))

(declare-fun b!6888554 () Bool)

(declare-fun res!2808513 () Bool)

(assert (=> b!6888554 (=> res!2808513 e!4150098)))

(assert (=> b!6888554 (= res!2808513 (not (matchR!8948 r3!135 (_2!36979 lt!2462393))))))

(declare-fun b!6888555 () Bool)

(declare-fun tp!1895302 () Bool)

(assert (=> b!6888555 (= e!4150101 tp!1895302)))

(declare-fun b!6888556 () Bool)

(declare-fun e!4150096 () Bool)

(declare-fun tp!1895289 () Bool)

(declare-fun tp!1895288 () Bool)

(assert (=> b!6888556 (= e!4150096 (and tp!1895289 tp!1895288))))

(declare-fun b!6888557 () Bool)

(declare-fun e!4150103 () Bool)

(declare-fun tp!1895295 () Bool)

(declare-fun tp!1895290 () Bool)

(assert (=> b!6888557 (= e!4150103 (and tp!1895295 tp!1895290))))

(declare-fun res!2808522 () Bool)

(assert (=> start!664166 (=> (not res!2808522) (not e!4150105))))

(assert (=> start!664166 (= res!2808522 (validRegex!8511 r1!6342))))

(assert (=> start!664166 e!4150105))

(assert (=> start!664166 e!4150101))

(assert (=> start!664166 e!4150096))

(assert (=> start!664166 e!4150103))

(declare-fun e!4150106 () Bool)

(assert (=> start!664166 e!4150106))

(declare-fun b!6888558 () Bool)

(declare-fun tp_is_empty!42831 () Bool)

(assert (=> b!6888558 (= e!4150103 tp_is_empty!42831)))

(declare-fun b!6888559 () Bool)

(declare-fun res!2808518 () Bool)

(assert (=> b!6888559 (=> (not res!2808518) (not e!4150105))))

(assert (=> b!6888559 (= res!2808518 (validRegex!8511 r2!6280))))

(declare-fun b!6888560 () Bool)

(declare-fun res!2808520 () Bool)

(assert (=> b!6888560 (=> res!2808520 e!4150099)))

(assert (=> b!6888560 (= res!2808520 (not (matchR!8948 r2!6280 (_2!36979 lt!2462407))))))

(declare-fun b!6888561 () Bool)

(assert (=> b!6888561 (= e!4150096 tp_is_empty!42831)))

(declare-fun b!6888562 () Bool)

(declare-fun tp!1895300 () Bool)

(declare-fun tp!1895294 () Bool)

(assert (=> b!6888562 (= e!4150096 (and tp!1895300 tp!1895294))))

(declare-fun b!6888563 () Bool)

(declare-fun tp!1895299 () Bool)

(declare-fun tp!1895292 () Bool)

(assert (=> b!6888563 (= e!4150103 (and tp!1895299 tp!1895292))))

(assert (=> b!6888564 (= e!4150104 e!4150098)))

(declare-fun res!2808519 () Bool)

(assert (=> b!6888564 (=> res!2808519 e!4150098)))

(declare-fun lt!2462382 () Bool)

(assert (=> b!6888564 (= res!2808519 (not lt!2462382))))

(assert (=> b!6888564 (= lt!2462382 (matchRSpec!3866 lt!2462381 (_1!36979 lt!2462393)))))

(assert (=> b!6888564 (= lt!2462382 (matchR!8948 lt!2462381 (_1!36979 lt!2462393)))))

(declare-fun lt!2462385 () Unit!160326)

(assert (=> b!6888564 (= lt!2462385 (mainMatchTheorem!3866 lt!2462381 (_1!36979 lt!2462393)))))

(declare-fun lt!2462384 () Option!16588)

(assert (=> b!6888564 (= lt!2462393 (get!23167 lt!2462384))))

(assert (=> b!6888564 (= (Exists!3815 lambda!390413) (Exists!3815 lambda!390414))))

(declare-fun lt!2462398 () Unit!160326)

(assert (=> b!6888564 (= lt!2462398 (lemmaExistCutMatchRandMatchRSpecEquivalent!2294 lt!2462381 r3!135 s!14361))))

(assert (=> b!6888564 (= (isDefined!13291 lt!2462384) (Exists!3815 lambda!390413))))

(assert (=> b!6888564 (= lt!2462384 (findConcatSeparation!3002 lt!2462381 r3!135 Nil!66436 s!14361 s!14361))))

(declare-fun lt!2462399 () Unit!160326)

(assert (=> b!6888564 (= lt!2462399 (lemmaFindConcatSeparationEquivalentToExists!2766 lt!2462381 r3!135 s!14361))))

(declare-fun b!6888565 () Bool)

(declare-fun tp!1895301 () Bool)

(assert (=> b!6888565 (= e!4150096 tp!1895301)))

(declare-fun b!6888566 () Bool)

(declare-fun e!4150100 () Bool)

(assert (=> b!6888566 (= e!4150095 e!4150100)))

(declare-fun res!2808514 () Bool)

(assert (=> b!6888566 (=> res!2808514 e!4150100)))

(declare-fun lt!2462392 () List!66560)

(assert (=> b!6888566 (= res!2808514 (not (= lt!2462392 s!14361)))))

(assert (=> b!6888566 (= lt!2462401 lt!2462392)))

(assert (=> b!6888566 (= lt!2462392 (++!14882 (_1!36979 lt!2462407) lt!2462383))))

(declare-fun lt!2462389 () Unit!160326)

(declare-fun lemmaConcatAssociativity!2974 (List!66560 List!66560 List!66560) Unit!160326)

(assert (=> b!6888566 (= lt!2462389 (lemmaConcatAssociativity!2974 (_1!36979 lt!2462407) (_2!36979 lt!2462407) (_2!36979 lt!2462393)))))

(declare-fun b!6888567 () Bool)

(declare-fun tp!1895296 () Bool)

(declare-fun tp!1895297 () Bool)

(assert (=> b!6888567 (= e!4150101 (and tp!1895296 tp!1895297))))

(declare-fun b!6888568 () Bool)

(declare-fun tp!1895291 () Bool)

(assert (=> b!6888568 (= e!4150103 tp!1895291)))

(assert (=> b!6888569 (= e!4150100 e!4150097)))

(declare-fun res!2808521 () Bool)

(assert (=> b!6888569 (=> res!2808521 e!4150097)))

(assert (=> b!6888569 (= res!2808521 (not (validRegex!8511 lt!2462386)))))

(assert (=> b!6888569 (Exists!3815 lambda!390419)))

(declare-fun lt!2462377 () Unit!160326)

(assert (=> b!6888569 (= lt!2462377 (lemmaFindConcatSeparationEquivalentToExists!2766 r1!6342 lt!2462386 s!14361))))

(assert (=> b!6888569 (isDefined!13291 (findConcatSeparation!3002 r1!6342 lt!2462386 Nil!66436 s!14361 s!14361))))

(declare-fun lt!2462395 () Unit!160326)

(assert (=> b!6888569 (= lt!2462395 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!50 r1!6342 lt!2462386 (_1!36979 lt!2462407) lt!2462383 s!14361 Nil!66436 s!14361))))

(declare-fun b!6888570 () Bool)

(declare-fun tp!1895303 () Bool)

(assert (=> b!6888570 (= e!4150106 (and tp_is_empty!42831 tp!1895303))))

(declare-fun b!6888571 () Bool)

(assert (=> b!6888571 (= e!4150101 tp_is_empty!42831)))

(assert (= (and start!664166 res!2808522) b!6888559))

(assert (= (and b!6888559 res!2808518) b!6888553))

(assert (= (and b!6888553 res!2808517) b!6888549))

(assert (= (and b!6888549 (not res!2808515)) b!6888564))

(assert (= (and b!6888564 (not res!2808519)) b!6888554))

(assert (= (and b!6888554 (not res!2808513)) b!6888548))

(assert (= (and b!6888548 (not res!2808512)) b!6888560))

(assert (= (and b!6888560 (not res!2808520)) b!6888550))

(assert (= (and b!6888550 (not res!2808511)) b!6888552))

(assert (= (and b!6888552 (not res!2808516)) b!6888566))

(assert (= (and b!6888566 (not res!2808514)) b!6888569))

(assert (= (and b!6888569 (not res!2808521)) b!6888547))

(get-info :version)

(assert (= (and start!664166 ((_ is ElementMatch!16803) r1!6342)) b!6888571))

(assert (= (and start!664166 ((_ is Concat!25648) r1!6342)) b!6888567))

(assert (= (and start!664166 ((_ is Star!16803) r1!6342)) b!6888555))

(assert (= (and start!664166 ((_ is Union!16803) r1!6342)) b!6888551))

(assert (= (and start!664166 ((_ is ElementMatch!16803) r2!6280)) b!6888561))

(assert (= (and start!664166 ((_ is Concat!25648) r2!6280)) b!6888556))

(assert (= (and start!664166 ((_ is Star!16803) r2!6280)) b!6888565))

(assert (= (and start!664166 ((_ is Union!16803) r2!6280)) b!6888562))

(assert (= (and start!664166 ((_ is ElementMatch!16803) r3!135)) b!6888558))

(assert (= (and start!664166 ((_ is Concat!25648) r3!135)) b!6888557))

(assert (= (and start!664166 ((_ is Star!16803) r3!135)) b!6888568))

(assert (= (and start!664166 ((_ is Union!16803) r3!135)) b!6888563))

(assert (= (and start!664166 ((_ is Cons!66436) s!14361)) b!6888570))

(declare-fun m!7611018 () Bool)

(assert (=> b!6888549 m!7611018))

(declare-fun m!7611020 () Bool)

(assert (=> b!6888549 m!7611020))

(declare-fun m!7611022 () Bool)

(assert (=> b!6888549 m!7611022))

(declare-fun m!7611024 () Bool)

(assert (=> b!6888549 m!7611024))

(declare-fun m!7611026 () Bool)

(assert (=> b!6888549 m!7611026))

(declare-fun m!7611028 () Bool)

(assert (=> b!6888549 m!7611028))

(declare-fun m!7611030 () Bool)

(assert (=> start!664166 m!7611030))

(declare-fun m!7611032 () Bool)

(assert (=> b!6888548 m!7611032))

(declare-fun m!7611034 () Bool)

(assert (=> b!6888548 m!7611034))

(declare-fun m!7611036 () Bool)

(assert (=> b!6888548 m!7611036))

(assert (=> b!6888548 m!7611032))

(declare-fun m!7611038 () Bool)

(assert (=> b!6888548 m!7611038))

(declare-fun m!7611040 () Bool)

(assert (=> b!6888548 m!7611040))

(declare-fun m!7611042 () Bool)

(assert (=> b!6888548 m!7611042))

(declare-fun m!7611044 () Bool)

(assert (=> b!6888548 m!7611044))

(declare-fun m!7611046 () Bool)

(assert (=> b!6888548 m!7611046))

(declare-fun m!7611048 () Bool)

(assert (=> b!6888560 m!7611048))

(declare-fun m!7611050 () Bool)

(assert (=> b!6888547 m!7611050))

(declare-fun m!7611052 () Bool)

(assert (=> b!6888547 m!7611052))

(declare-fun m!7611054 () Bool)

(assert (=> b!6888547 m!7611054))

(declare-fun m!7611056 () Bool)

(assert (=> b!6888547 m!7611056))

(declare-fun m!7611058 () Bool)

(assert (=> b!6888554 m!7611058))

(declare-fun m!7611060 () Bool)

(assert (=> b!6888552 m!7611060))

(declare-fun m!7611062 () Bool)

(assert (=> b!6888552 m!7611062))

(declare-fun m!7611064 () Bool)

(assert (=> b!6888552 m!7611064))

(declare-fun m!7611066 () Bool)

(assert (=> b!6888552 m!7611066))

(assert (=> b!6888552 m!7611060))

(declare-fun m!7611068 () Bool)

(assert (=> b!6888552 m!7611068))

(declare-fun m!7611070 () Bool)

(assert (=> b!6888552 m!7611070))

(declare-fun m!7611072 () Bool)

(assert (=> b!6888552 m!7611072))

(declare-fun m!7611074 () Bool)

(assert (=> b!6888552 m!7611074))

(declare-fun m!7611076 () Bool)

(assert (=> b!6888552 m!7611076))

(assert (=> b!6888552 m!7611074))

(declare-fun m!7611078 () Bool)

(assert (=> b!6888552 m!7611078))

(declare-fun m!7611080 () Bool)

(assert (=> b!6888552 m!7611080))

(declare-fun m!7611082 () Bool)

(assert (=> b!6888559 m!7611082))

(declare-fun m!7611084 () Bool)

(assert (=> b!6888566 m!7611084))

(declare-fun m!7611086 () Bool)

(assert (=> b!6888566 m!7611086))

(declare-fun m!7611088 () Bool)

(assert (=> b!6888569 m!7611088))

(declare-fun m!7611090 () Bool)

(assert (=> b!6888569 m!7611090))

(declare-fun m!7611092 () Bool)

(assert (=> b!6888569 m!7611092))

(assert (=> b!6888569 m!7611052))

(declare-fun m!7611094 () Bool)

(assert (=> b!6888569 m!7611094))

(assert (=> b!6888569 m!7611090))

(declare-fun m!7611096 () Bool)

(assert (=> b!6888569 m!7611096))

(declare-fun m!7611098 () Bool)

(assert (=> b!6888553 m!7611098))

(declare-fun m!7611100 () Bool)

(assert (=> b!6888550 m!7611100))

(declare-fun m!7611102 () Bool)

(assert (=> b!6888550 m!7611102))

(declare-fun m!7611104 () Bool)

(assert (=> b!6888550 m!7611104))

(declare-fun m!7611106 () Bool)

(assert (=> b!6888550 m!7611106))

(assert (=> b!6888550 m!7611104))

(declare-fun m!7611108 () Bool)

(assert (=> b!6888550 m!7611108))

(declare-fun m!7611110 () Bool)

(assert (=> b!6888550 m!7611110))

(declare-fun m!7611112 () Bool)

(assert (=> b!6888564 m!7611112))

(declare-fun m!7611114 () Bool)

(assert (=> b!6888564 m!7611114))

(declare-fun m!7611116 () Bool)

(assert (=> b!6888564 m!7611116))

(declare-fun m!7611118 () Bool)

(assert (=> b!6888564 m!7611118))

(declare-fun m!7611120 () Bool)

(assert (=> b!6888564 m!7611120))

(declare-fun m!7611122 () Bool)

(assert (=> b!6888564 m!7611122))

(declare-fun m!7611124 () Bool)

(assert (=> b!6888564 m!7611124))

(declare-fun m!7611126 () Bool)

(assert (=> b!6888564 m!7611126))

(declare-fun m!7611128 () Bool)

(assert (=> b!6888564 m!7611128))

(declare-fun m!7611130 () Bool)

(assert (=> b!6888564 m!7611130))

(assert (=> b!6888564 m!7611124))

(check-sat (not b!6888563) (not b!6888567) (not b!6888570) (not b!6888554) (not b!6888569) (not b!6888548) (not b!6888553) (not start!664166) (not b!6888557) (not b!6888551) (not b!6888552) (not b!6888560) (not b!6888550) (not b!6888564) (not b!6888555) (not b!6888549) tp_is_empty!42831 (not b!6888562) (not b!6888547) (not b!6888568) (not b!6888566) (not b!6888559) (not b!6888556) (not b!6888565))
(check-sat)
(get-model)

(declare-fun d!2160645 () Bool)

(assert (=> d!2160645 (= (matchR!8948 r1!6342 (_1!36979 lt!2462407)) (matchRSpec!3866 r1!6342 (_1!36979 lt!2462407)))))

(declare-fun lt!2462410 () Unit!160326)

(declare-fun choose!51292 (Regex!16803 List!66560) Unit!160326)

(assert (=> d!2160645 (= lt!2462410 (choose!51292 r1!6342 (_1!36979 lt!2462407)))))

(assert (=> d!2160645 (validRegex!8511 r1!6342)))

(assert (=> d!2160645 (= (mainMatchTheorem!3866 r1!6342 (_1!36979 lt!2462407)) lt!2462410)))

(declare-fun bs!1839152 () Bool)

(assert (= bs!1839152 d!2160645))

(assert (=> bs!1839152 m!7611034))

(assert (=> bs!1839152 m!7611110))

(declare-fun m!7611132 () Bool)

(assert (=> bs!1839152 m!7611132))

(assert (=> bs!1839152 m!7611030))

(assert (=> b!6888550 d!2160645))

(declare-fun bs!1839153 () Bool)

(declare-fun b!6888611 () Bool)

(assert (= bs!1839153 (and b!6888611 b!6888547)))

(declare-fun lambda!390425 () Int)

(assert (=> bs!1839153 (not (= lambda!390425 lambda!390420))))

(declare-fun bs!1839154 () Bool)

(assert (= bs!1839154 (and b!6888611 b!6888564)))

(assert (=> bs!1839154 (not (= lambda!390425 lambda!390414))))

(declare-fun bs!1839155 () Bool)

(assert (= bs!1839155 (and b!6888611 b!6888552)))

(assert (=> bs!1839155 (not (= lambda!390425 lambda!390417))))

(declare-fun bs!1839156 () Bool)

(assert (= bs!1839156 (and b!6888611 b!6888548)))

(assert (=> bs!1839156 (not (= lambda!390425 lambda!390416))))

(declare-fun bs!1839157 () Bool)

(assert (= bs!1839157 (and b!6888611 b!6888569)))

(assert (=> bs!1839157 (not (= lambda!390425 lambda!390419))))

(assert (=> bs!1839154 (not (= lambda!390425 lambda!390413))))

(assert (=> bs!1839155 (not (= lambda!390425 lambda!390418))))

(assert (=> bs!1839156 (not (= lambda!390425 lambda!390415))))

(assert (=> b!6888611 true))

(assert (=> b!6888611 true))

(declare-fun bs!1839158 () Bool)

(declare-fun b!6888612 () Bool)

(assert (= bs!1839158 (and b!6888612 b!6888611)))

(declare-fun lambda!390426 () Int)

(assert (=> bs!1839158 (not (= lambda!390426 lambda!390425))))

(declare-fun bs!1839159 () Bool)

(assert (= bs!1839159 (and b!6888612 b!6888547)))

(assert (=> bs!1839159 (= (and (= (_2!36979 lt!2462407) s!14361) (= (regOne!34118 r2!6280) r1!6342) (= (regTwo!34118 r2!6280) lt!2462386)) (= lambda!390426 lambda!390420))))

(declare-fun bs!1839160 () Bool)

(assert (= bs!1839160 (and b!6888612 b!6888564)))

(assert (=> bs!1839160 (= (and (= (_2!36979 lt!2462407) s!14361) (= (regOne!34118 r2!6280) lt!2462381) (= (regTwo!34118 r2!6280) r3!135)) (= lambda!390426 lambda!390414))))

(declare-fun bs!1839161 () Bool)

(assert (= bs!1839161 (and b!6888612 b!6888552)))

(assert (=> bs!1839161 (not (= lambda!390426 lambda!390417))))

(declare-fun bs!1839162 () Bool)

(assert (= bs!1839162 (and b!6888612 b!6888548)))

(assert (=> bs!1839162 (= (and (= (_2!36979 lt!2462407) (_1!36979 lt!2462393)) (= (regOne!34118 r2!6280) r1!6342) (= (regTwo!34118 r2!6280) r2!6280)) (= lambda!390426 lambda!390416))))

(declare-fun bs!1839163 () Bool)

(assert (= bs!1839163 (and b!6888612 b!6888569)))

(assert (=> bs!1839163 (not (= lambda!390426 lambda!390419))))

(assert (=> bs!1839160 (not (= lambda!390426 lambda!390413))))

(assert (=> bs!1839161 (= (and (= (_2!36979 lt!2462407) lt!2462383) (= (regOne!34118 r2!6280) r2!6280) (= (regTwo!34118 r2!6280) r3!135)) (= lambda!390426 lambda!390418))))

(assert (=> bs!1839162 (not (= lambda!390426 lambda!390415))))

(assert (=> b!6888612 true))

(assert (=> b!6888612 true))

(declare-fun b!6888610 () Bool)

(declare-fun e!4150130 () Bool)

(declare-fun call!626823 () Bool)

(assert (=> b!6888610 (= e!4150130 call!626823)))

(declare-fun e!4150128 () Bool)

(declare-fun call!626822 () Bool)

(assert (=> b!6888611 (= e!4150128 call!626822)))

(declare-fun e!4150125 () Bool)

(assert (=> b!6888612 (= e!4150125 call!626822)))

(declare-fun c!1280819 () Bool)

(declare-fun bm!626817 () Bool)

(assert (=> bm!626817 (= call!626822 (Exists!3815 (ite c!1280819 lambda!390425 lambda!390426)))))

(declare-fun b!6888613 () Bool)

(declare-fun e!4150127 () Bool)

(assert (=> b!6888613 (= e!4150127 (matchRSpec!3866 (regTwo!34119 r2!6280) (_2!36979 lt!2462407)))))

(declare-fun bm!626818 () Bool)

(declare-fun isEmpty!38688 (List!66560) Bool)

(assert (=> bm!626818 (= call!626823 (isEmpty!38688 (_2!36979 lt!2462407)))))

(declare-fun b!6888615 () Bool)

(declare-fun c!1280818 () Bool)

(assert (=> b!6888615 (= c!1280818 ((_ is ElementMatch!16803) r2!6280))))

(declare-fun e!4150126 () Bool)

(declare-fun e!4150131 () Bool)

(assert (=> b!6888615 (= e!4150126 e!4150131)))

(declare-fun b!6888616 () Bool)

(assert (=> b!6888616 (= e!4150131 (= (_2!36979 lt!2462407) (Cons!66436 (c!1280807 r2!6280) Nil!66436)))))

(declare-fun b!6888614 () Bool)

(declare-fun e!4150129 () Bool)

(assert (=> b!6888614 (= e!4150129 e!4150127)))

(declare-fun res!2808540 () Bool)

(assert (=> b!6888614 (= res!2808540 (matchRSpec!3866 (regOne!34119 r2!6280) (_2!36979 lt!2462407)))))

(assert (=> b!6888614 (=> res!2808540 e!4150127)))

(declare-fun d!2160647 () Bool)

(declare-fun c!1280817 () Bool)

(assert (=> d!2160647 (= c!1280817 ((_ is EmptyExpr!16803) r2!6280))))

(assert (=> d!2160647 (= (matchRSpec!3866 r2!6280 (_2!36979 lt!2462407)) e!4150130)))

(declare-fun b!6888617 () Bool)

(declare-fun res!2808539 () Bool)

(assert (=> b!6888617 (=> res!2808539 e!4150128)))

(assert (=> b!6888617 (= res!2808539 call!626823)))

(assert (=> b!6888617 (= e!4150125 e!4150128)))

(declare-fun b!6888618 () Bool)

(assert (=> b!6888618 (= e!4150129 e!4150125)))

(assert (=> b!6888618 (= c!1280819 ((_ is Star!16803) r2!6280))))

(declare-fun b!6888619 () Bool)

(assert (=> b!6888619 (= e!4150130 e!4150126)))

(declare-fun res!2808541 () Bool)

(assert (=> b!6888619 (= res!2808541 (not ((_ is EmptyLang!16803) r2!6280)))))

(assert (=> b!6888619 (=> (not res!2808541) (not e!4150126))))

(declare-fun b!6888620 () Bool)

(declare-fun c!1280816 () Bool)

(assert (=> b!6888620 (= c!1280816 ((_ is Union!16803) r2!6280))))

(assert (=> b!6888620 (= e!4150131 e!4150129)))

(assert (= (and d!2160647 c!1280817) b!6888610))

(assert (= (and d!2160647 (not c!1280817)) b!6888619))

(assert (= (and b!6888619 res!2808541) b!6888615))

(assert (= (and b!6888615 c!1280818) b!6888616))

(assert (= (and b!6888615 (not c!1280818)) b!6888620))

(assert (= (and b!6888620 c!1280816) b!6888614))

(assert (= (and b!6888620 (not c!1280816)) b!6888618))

(assert (= (and b!6888614 (not res!2808540)) b!6888613))

(assert (= (and b!6888618 c!1280819) b!6888617))

(assert (= (and b!6888618 (not c!1280819)) b!6888612))

(assert (= (and b!6888617 (not res!2808539)) b!6888611))

(assert (= (or b!6888611 b!6888612) bm!626817))

(assert (= (or b!6888610 b!6888617) bm!626818))

(declare-fun m!7611134 () Bool)

(assert (=> bm!626817 m!7611134))

(declare-fun m!7611136 () Bool)

(assert (=> b!6888613 m!7611136))

(declare-fun m!7611138 () Bool)

(assert (=> bm!626818 m!7611138))

(declare-fun m!7611140 () Bool)

(assert (=> b!6888614 m!7611140))

(assert (=> b!6888550 d!2160647))

(declare-fun bs!1839164 () Bool)

(declare-fun b!6888622 () Bool)

(assert (= bs!1839164 (and b!6888622 b!6888611)))

(declare-fun lambda!390427 () Int)

(assert (=> bs!1839164 (= (and (= (_1!36979 lt!2462407) (_2!36979 lt!2462407)) (= (reg!17132 r1!6342) (reg!17132 r2!6280)) (= r1!6342 r2!6280)) (= lambda!390427 lambda!390425))))

(declare-fun bs!1839165 () Bool)

(assert (= bs!1839165 (and b!6888622 b!6888547)))

(assert (=> bs!1839165 (not (= lambda!390427 lambda!390420))))

(declare-fun bs!1839166 () Bool)

(assert (= bs!1839166 (and b!6888622 b!6888564)))

(assert (=> bs!1839166 (not (= lambda!390427 lambda!390414))))

(declare-fun bs!1839167 () Bool)

(assert (= bs!1839167 (and b!6888622 b!6888552)))

(assert (=> bs!1839167 (not (= lambda!390427 lambda!390417))))

(declare-fun bs!1839168 () Bool)

(assert (= bs!1839168 (and b!6888622 b!6888548)))

(assert (=> bs!1839168 (not (= lambda!390427 lambda!390416))))

(declare-fun bs!1839169 () Bool)

(assert (= bs!1839169 (and b!6888622 b!6888612)))

(assert (=> bs!1839169 (not (= lambda!390427 lambda!390426))))

(declare-fun bs!1839170 () Bool)

(assert (= bs!1839170 (and b!6888622 b!6888569)))

(assert (=> bs!1839170 (not (= lambda!390427 lambda!390419))))

(assert (=> bs!1839166 (not (= lambda!390427 lambda!390413))))

(assert (=> bs!1839167 (not (= lambda!390427 lambda!390418))))

(assert (=> bs!1839168 (not (= lambda!390427 lambda!390415))))

(assert (=> b!6888622 true))

(assert (=> b!6888622 true))

(declare-fun bs!1839171 () Bool)

(declare-fun b!6888623 () Bool)

(assert (= bs!1839171 (and b!6888623 b!6888611)))

(declare-fun lambda!390428 () Int)

(assert (=> bs!1839171 (not (= lambda!390428 lambda!390425))))

(declare-fun bs!1839172 () Bool)

(assert (= bs!1839172 (and b!6888623 b!6888547)))

(assert (=> bs!1839172 (= (and (= (_1!36979 lt!2462407) s!14361) (= (regOne!34118 r1!6342) r1!6342) (= (regTwo!34118 r1!6342) lt!2462386)) (= lambda!390428 lambda!390420))))

(declare-fun bs!1839173 () Bool)

(assert (= bs!1839173 (and b!6888623 b!6888564)))

(assert (=> bs!1839173 (= (and (= (_1!36979 lt!2462407) s!14361) (= (regOne!34118 r1!6342) lt!2462381) (= (regTwo!34118 r1!6342) r3!135)) (= lambda!390428 lambda!390414))))

(declare-fun bs!1839174 () Bool)

(assert (= bs!1839174 (and b!6888623 b!6888552)))

(assert (=> bs!1839174 (not (= lambda!390428 lambda!390417))))

(declare-fun bs!1839175 () Bool)

(assert (= bs!1839175 (and b!6888623 b!6888548)))

(assert (=> bs!1839175 (= (and (= (_1!36979 lt!2462407) (_1!36979 lt!2462393)) (= (regOne!34118 r1!6342) r1!6342) (= (regTwo!34118 r1!6342) r2!6280)) (= lambda!390428 lambda!390416))))

(declare-fun bs!1839176 () Bool)

(assert (= bs!1839176 (and b!6888623 b!6888612)))

(assert (=> bs!1839176 (= (and (= (_1!36979 lt!2462407) (_2!36979 lt!2462407)) (= (regOne!34118 r1!6342) (regOne!34118 r2!6280)) (= (regTwo!34118 r1!6342) (regTwo!34118 r2!6280))) (= lambda!390428 lambda!390426))))

(declare-fun bs!1839177 () Bool)

(assert (= bs!1839177 (and b!6888623 b!6888622)))

(assert (=> bs!1839177 (not (= lambda!390428 lambda!390427))))

(declare-fun bs!1839178 () Bool)

(assert (= bs!1839178 (and b!6888623 b!6888569)))

(assert (=> bs!1839178 (not (= lambda!390428 lambda!390419))))

(assert (=> bs!1839173 (not (= lambda!390428 lambda!390413))))

(assert (=> bs!1839174 (= (and (= (_1!36979 lt!2462407) lt!2462383) (= (regOne!34118 r1!6342) r2!6280) (= (regTwo!34118 r1!6342) r3!135)) (= lambda!390428 lambda!390418))))

(assert (=> bs!1839175 (not (= lambda!390428 lambda!390415))))

(assert (=> b!6888623 true))

(assert (=> b!6888623 true))

(declare-fun b!6888621 () Bool)

(declare-fun e!4150137 () Bool)

(declare-fun call!626825 () Bool)

(assert (=> b!6888621 (= e!4150137 call!626825)))

(declare-fun e!4150135 () Bool)

(declare-fun call!626824 () Bool)

(assert (=> b!6888622 (= e!4150135 call!626824)))

(declare-fun e!4150132 () Bool)

(assert (=> b!6888623 (= e!4150132 call!626824)))

(declare-fun bm!626819 () Bool)

(declare-fun c!1280823 () Bool)

(assert (=> bm!626819 (= call!626824 (Exists!3815 (ite c!1280823 lambda!390427 lambda!390428)))))

(declare-fun b!6888624 () Bool)

(declare-fun e!4150134 () Bool)

(assert (=> b!6888624 (= e!4150134 (matchRSpec!3866 (regTwo!34119 r1!6342) (_1!36979 lt!2462407)))))

(declare-fun bm!626820 () Bool)

(assert (=> bm!626820 (= call!626825 (isEmpty!38688 (_1!36979 lt!2462407)))))

(declare-fun b!6888626 () Bool)

(declare-fun c!1280822 () Bool)

(assert (=> b!6888626 (= c!1280822 ((_ is ElementMatch!16803) r1!6342))))

(declare-fun e!4150133 () Bool)

(declare-fun e!4150138 () Bool)

(assert (=> b!6888626 (= e!4150133 e!4150138)))

(declare-fun b!6888627 () Bool)

(assert (=> b!6888627 (= e!4150138 (= (_1!36979 lt!2462407) (Cons!66436 (c!1280807 r1!6342) Nil!66436)))))

(declare-fun b!6888625 () Bool)

(declare-fun e!4150136 () Bool)

(assert (=> b!6888625 (= e!4150136 e!4150134)))

(declare-fun res!2808543 () Bool)

(assert (=> b!6888625 (= res!2808543 (matchRSpec!3866 (regOne!34119 r1!6342) (_1!36979 lt!2462407)))))

(assert (=> b!6888625 (=> res!2808543 e!4150134)))

(declare-fun d!2160651 () Bool)

(declare-fun c!1280821 () Bool)

(assert (=> d!2160651 (= c!1280821 ((_ is EmptyExpr!16803) r1!6342))))

(assert (=> d!2160651 (= (matchRSpec!3866 r1!6342 (_1!36979 lt!2462407)) e!4150137)))

(declare-fun b!6888628 () Bool)

(declare-fun res!2808542 () Bool)

(assert (=> b!6888628 (=> res!2808542 e!4150135)))

(assert (=> b!6888628 (= res!2808542 call!626825)))

(assert (=> b!6888628 (= e!4150132 e!4150135)))

(declare-fun b!6888629 () Bool)

(assert (=> b!6888629 (= e!4150136 e!4150132)))

(assert (=> b!6888629 (= c!1280823 ((_ is Star!16803) r1!6342))))

(declare-fun b!6888630 () Bool)

(assert (=> b!6888630 (= e!4150137 e!4150133)))

(declare-fun res!2808544 () Bool)

(assert (=> b!6888630 (= res!2808544 (not ((_ is EmptyLang!16803) r1!6342)))))

(assert (=> b!6888630 (=> (not res!2808544) (not e!4150133))))

(declare-fun b!6888631 () Bool)

(declare-fun c!1280820 () Bool)

(assert (=> b!6888631 (= c!1280820 ((_ is Union!16803) r1!6342))))

(assert (=> b!6888631 (= e!4150138 e!4150136)))

(assert (= (and d!2160651 c!1280821) b!6888621))

(assert (= (and d!2160651 (not c!1280821)) b!6888630))

(assert (= (and b!6888630 res!2808544) b!6888626))

(assert (= (and b!6888626 c!1280822) b!6888627))

(assert (= (and b!6888626 (not c!1280822)) b!6888631))

(assert (= (and b!6888631 c!1280820) b!6888625))

(assert (= (and b!6888631 (not c!1280820)) b!6888629))

(assert (= (and b!6888625 (not res!2808543)) b!6888624))

(assert (= (and b!6888629 c!1280823) b!6888628))

(assert (= (and b!6888629 (not c!1280823)) b!6888623))

(assert (= (and b!6888628 (not res!2808542)) b!6888622))

(assert (= (or b!6888622 b!6888623) bm!626819))

(assert (= (or b!6888621 b!6888628) bm!626820))

(declare-fun m!7611142 () Bool)

(assert (=> bm!626819 m!7611142))

(declare-fun m!7611144 () Bool)

(assert (=> b!6888624 m!7611144))

(declare-fun m!7611146 () Bool)

(assert (=> bm!626820 m!7611146))

(declare-fun m!7611148 () Bool)

(assert (=> b!6888625 m!7611148))

(assert (=> b!6888550 d!2160651))

(declare-fun b!6888669 () Bool)

(declare-fun e!4150158 () List!66560)

(assert (=> b!6888669 (= e!4150158 (Cons!66436 (h!72884 (_1!36979 lt!2462407)) (++!14882 (t!380303 (_1!36979 lt!2462407)) (_2!36979 lt!2462407))))))

(declare-fun b!6888671 () Bool)

(declare-fun e!4150157 () Bool)

(declare-fun lt!2462415 () List!66560)

(assert (=> b!6888671 (= e!4150157 (or (not (= (_2!36979 lt!2462407) Nil!66436)) (= lt!2462415 (_1!36979 lt!2462407))))))

(declare-fun b!6888668 () Bool)

(assert (=> b!6888668 (= e!4150158 (_2!36979 lt!2462407))))

(declare-fun d!2160653 () Bool)

(assert (=> d!2160653 e!4150157))

(declare-fun res!2808565 () Bool)

(assert (=> d!2160653 (=> (not res!2808565) (not e!4150157))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13047 (List!66560) (InoxSet C!33876))

(assert (=> d!2160653 (= res!2808565 (= (content!13047 lt!2462415) ((_ map or) (content!13047 (_1!36979 lt!2462407)) (content!13047 (_2!36979 lt!2462407)))))))

(assert (=> d!2160653 (= lt!2462415 e!4150158)))

(declare-fun c!1280832 () Bool)

(assert (=> d!2160653 (= c!1280832 ((_ is Nil!66436) (_1!36979 lt!2462407)))))

(assert (=> d!2160653 (= (++!14882 (_1!36979 lt!2462407) (_2!36979 lt!2462407)) lt!2462415)))

(declare-fun b!6888670 () Bool)

(declare-fun res!2808566 () Bool)

(assert (=> b!6888670 (=> (not res!2808566) (not e!4150157))))

(declare-fun size!40744 (List!66560) Int)

(assert (=> b!6888670 (= res!2808566 (= (size!40744 lt!2462415) (+ (size!40744 (_1!36979 lt!2462407)) (size!40744 (_2!36979 lt!2462407)))))))

(assert (= (and d!2160653 c!1280832) b!6888668))

(assert (= (and d!2160653 (not c!1280832)) b!6888669))

(assert (= (and d!2160653 res!2808565) b!6888670))

(assert (= (and b!6888670 res!2808566) b!6888671))

(declare-fun m!7611150 () Bool)

(assert (=> b!6888669 m!7611150))

(declare-fun m!7611152 () Bool)

(assert (=> d!2160653 m!7611152))

(declare-fun m!7611154 () Bool)

(assert (=> d!2160653 m!7611154))

(declare-fun m!7611156 () Bool)

(assert (=> d!2160653 m!7611156))

(declare-fun m!7611158 () Bool)

(assert (=> b!6888670 m!7611158))

(declare-fun m!7611160 () Bool)

(assert (=> b!6888670 m!7611160))

(declare-fun m!7611162 () Bool)

(assert (=> b!6888670 m!7611162))

(assert (=> b!6888550 d!2160653))

(declare-fun d!2160655 () Bool)

(assert (=> d!2160655 (= (matchR!8948 r2!6280 (_2!36979 lt!2462407)) (matchRSpec!3866 r2!6280 (_2!36979 lt!2462407)))))

(declare-fun lt!2462416 () Unit!160326)

(assert (=> d!2160655 (= lt!2462416 (choose!51292 r2!6280 (_2!36979 lt!2462407)))))

(assert (=> d!2160655 (validRegex!8511 r2!6280)))

(assert (=> d!2160655 (= (mainMatchTheorem!3866 r2!6280 (_2!36979 lt!2462407)) lt!2462416)))

(declare-fun bs!1839179 () Bool)

(assert (= bs!1839179 d!2160655))

(assert (=> bs!1839179 m!7611048))

(assert (=> bs!1839179 m!7611100))

(declare-fun m!7611164 () Bool)

(assert (=> bs!1839179 m!7611164))

(assert (=> bs!1839179 m!7611082))

(assert (=> b!6888550 d!2160655))

(declare-fun b!6888673 () Bool)

(declare-fun e!4150160 () List!66560)

(assert (=> b!6888673 (= e!4150160 (Cons!66436 (h!72884 (++!14882 (_1!36979 lt!2462407) (_2!36979 lt!2462407))) (++!14882 (t!380303 (++!14882 (_1!36979 lt!2462407) (_2!36979 lt!2462407))) (_2!36979 lt!2462393))))))

(declare-fun lt!2462417 () List!66560)

(declare-fun e!4150159 () Bool)

(declare-fun b!6888675 () Bool)

(assert (=> b!6888675 (= e!4150159 (or (not (= (_2!36979 lt!2462393) Nil!66436)) (= lt!2462417 (++!14882 (_1!36979 lt!2462407) (_2!36979 lt!2462407)))))))

(declare-fun b!6888672 () Bool)

(assert (=> b!6888672 (= e!4150160 (_2!36979 lt!2462393))))

(declare-fun d!2160657 () Bool)

(assert (=> d!2160657 e!4150159))

(declare-fun res!2808567 () Bool)

(assert (=> d!2160657 (=> (not res!2808567) (not e!4150159))))

(assert (=> d!2160657 (= res!2808567 (= (content!13047 lt!2462417) ((_ map or) (content!13047 (++!14882 (_1!36979 lt!2462407) (_2!36979 lt!2462407))) (content!13047 (_2!36979 lt!2462393)))))))

(assert (=> d!2160657 (= lt!2462417 e!4150160)))

(declare-fun c!1280833 () Bool)

(assert (=> d!2160657 (= c!1280833 ((_ is Nil!66436) (++!14882 (_1!36979 lt!2462407) (_2!36979 lt!2462407))))))

(assert (=> d!2160657 (= (++!14882 (++!14882 (_1!36979 lt!2462407) (_2!36979 lt!2462407)) (_2!36979 lt!2462393)) lt!2462417)))

(declare-fun b!6888674 () Bool)

(declare-fun res!2808568 () Bool)

(assert (=> b!6888674 (=> (not res!2808568) (not e!4150159))))

(assert (=> b!6888674 (= res!2808568 (= (size!40744 lt!2462417) (+ (size!40744 (++!14882 (_1!36979 lt!2462407) (_2!36979 lt!2462407))) (size!40744 (_2!36979 lt!2462393)))))))

(assert (= (and d!2160657 c!1280833) b!6888672))

(assert (= (and d!2160657 (not c!1280833)) b!6888673))

(assert (= (and d!2160657 res!2808567) b!6888674))

(assert (= (and b!6888674 res!2808568) b!6888675))

(declare-fun m!7611166 () Bool)

(assert (=> b!6888673 m!7611166))

(declare-fun m!7611168 () Bool)

(assert (=> d!2160657 m!7611168))

(assert (=> d!2160657 m!7611104))

(declare-fun m!7611170 () Bool)

(assert (=> d!2160657 m!7611170))

(declare-fun m!7611172 () Bool)

(assert (=> d!2160657 m!7611172))

(declare-fun m!7611174 () Bool)

(assert (=> b!6888674 m!7611174))

(assert (=> b!6888674 m!7611104))

(declare-fun m!7611176 () Bool)

(assert (=> b!6888674 m!7611176))

(declare-fun m!7611178 () Bool)

(assert (=> b!6888674 m!7611178))

(assert (=> b!6888550 d!2160657))

(declare-fun b!6888726 () Bool)

(declare-fun res!2808599 () Bool)

(declare-fun e!4150197 () Bool)

(assert (=> b!6888726 (=> res!2808599 e!4150197)))

(assert (=> b!6888726 (= res!2808599 (not ((_ is Concat!25648) r1!6342)))))

(declare-fun e!4150199 () Bool)

(assert (=> b!6888726 (= e!4150199 e!4150197)))

(declare-fun c!1280846 () Bool)

(declare-fun c!1280845 () Bool)

(declare-fun bm!626836 () Bool)

(declare-fun call!626843 () Bool)

(assert (=> bm!626836 (= call!626843 (validRegex!8511 (ite c!1280846 (reg!17132 r1!6342) (ite c!1280845 (regOne!34119 r1!6342) (regTwo!34118 r1!6342)))))))

(declare-fun bm!626837 () Bool)

(declare-fun call!626842 () Bool)

(assert (=> bm!626837 (= call!626842 (validRegex!8511 (ite c!1280845 (regTwo!34119 r1!6342) (regOne!34118 r1!6342))))))

(declare-fun b!6888727 () Bool)

(declare-fun e!4150201 () Bool)

(assert (=> b!6888727 (= e!4150201 e!4150199)))

(assert (=> b!6888727 (= c!1280845 ((_ is Union!16803) r1!6342))))

(declare-fun b!6888728 () Bool)

(declare-fun e!4150200 () Bool)

(assert (=> b!6888728 (= e!4150200 call!626843)))

(declare-fun b!6888729 () Bool)

(declare-fun e!4150198 () Bool)

(assert (=> b!6888729 (= e!4150198 call!626842)))

(declare-fun b!6888730 () Bool)

(assert (=> b!6888730 (= e!4150201 e!4150200)))

(declare-fun res!2808598 () Bool)

(declare-fun nullable!6686 (Regex!16803) Bool)

(assert (=> b!6888730 (= res!2808598 (not (nullable!6686 (reg!17132 r1!6342))))))

(assert (=> b!6888730 (=> (not res!2808598) (not e!4150200))))

(declare-fun bm!626838 () Bool)

(declare-fun call!626841 () Bool)

(assert (=> bm!626838 (= call!626841 call!626843)))

(declare-fun b!6888732 () Bool)

(declare-fun e!4150202 () Bool)

(assert (=> b!6888732 (= e!4150202 call!626841)))

(declare-fun b!6888733 () Bool)

(assert (=> b!6888733 (= e!4150197 e!4150202)))

(declare-fun res!2808600 () Bool)

(assert (=> b!6888733 (=> (not res!2808600) (not e!4150202))))

(assert (=> b!6888733 (= res!2808600 call!626842)))

(declare-fun b!6888734 () Bool)

(declare-fun res!2808597 () Bool)

(assert (=> b!6888734 (=> (not res!2808597) (not e!4150198))))

(assert (=> b!6888734 (= res!2808597 call!626841)))

(assert (=> b!6888734 (= e!4150199 e!4150198)))

(declare-fun b!6888731 () Bool)

(declare-fun e!4150196 () Bool)

(assert (=> b!6888731 (= e!4150196 e!4150201)))

(assert (=> b!6888731 (= c!1280846 ((_ is Star!16803) r1!6342))))

(declare-fun d!2160659 () Bool)

(declare-fun res!2808601 () Bool)

(assert (=> d!2160659 (=> res!2808601 e!4150196)))

(assert (=> d!2160659 (= res!2808601 ((_ is ElementMatch!16803) r1!6342))))

(assert (=> d!2160659 (= (validRegex!8511 r1!6342) e!4150196)))

(assert (= (and d!2160659 (not res!2808601)) b!6888731))

(assert (= (and b!6888731 c!1280846) b!6888730))

(assert (= (and b!6888731 (not c!1280846)) b!6888727))

(assert (= (and b!6888730 res!2808598) b!6888728))

(assert (= (and b!6888727 c!1280845) b!6888734))

(assert (= (and b!6888727 (not c!1280845)) b!6888726))

(assert (= (and b!6888734 res!2808597) b!6888729))

(assert (= (and b!6888726 (not res!2808599)) b!6888733))

(assert (= (and b!6888733 res!2808600) b!6888732))

(assert (= (or b!6888734 b!6888732) bm!626838))

(assert (= (or b!6888729 b!6888733) bm!626837))

(assert (= (or b!6888728 bm!626838) bm!626836))

(declare-fun m!7611194 () Bool)

(assert (=> bm!626836 m!7611194))

(declare-fun m!7611196 () Bool)

(assert (=> bm!626837 m!7611196))

(declare-fun m!7611198 () Bool)

(assert (=> b!6888730 m!7611198))

(assert (=> start!664166 d!2160659))

(declare-fun b!6888773 () Bool)

(declare-fun e!4150226 () Bool)

(declare-fun lt!2462421 () Bool)

(assert (=> b!6888773 (= e!4150226 (not lt!2462421))))

(declare-fun b!6888774 () Bool)

(declare-fun res!2808626 () Bool)

(declare-fun e!4150224 () Bool)

(assert (=> b!6888774 (=> res!2808626 e!4150224)))

(assert (=> b!6888774 (= res!2808626 (not ((_ is ElementMatch!16803) r2!6280)))))

(assert (=> b!6888774 (= e!4150226 e!4150224)))

(declare-fun b!6888775 () Bool)

(declare-fun e!4150229 () Bool)

(declare-fun head!13818 (List!66560) C!33876)

(assert (=> b!6888775 (= e!4150229 (not (= (head!13818 (_2!36979 lt!2462407)) (c!1280807 r2!6280))))))

(declare-fun b!6888776 () Bool)

(declare-fun e!4150227 () Bool)

(declare-fun derivativeStep!5365 (Regex!16803 C!33876) Regex!16803)

(declare-fun tail!12870 (List!66560) List!66560)

(assert (=> b!6888776 (= e!4150227 (matchR!8948 (derivativeStep!5365 r2!6280 (head!13818 (_2!36979 lt!2462407))) (tail!12870 (_2!36979 lt!2462407))))))

(declare-fun b!6888777 () Bool)

(declare-fun res!2808627 () Bool)

(declare-fun e!4150225 () Bool)

(assert (=> b!6888777 (=> (not res!2808627) (not e!4150225))))

(declare-fun call!626849 () Bool)

(assert (=> b!6888777 (= res!2808627 (not call!626849))))

(declare-fun b!6888778 () Bool)

(assert (=> b!6888778 (= e!4150225 (= (head!13818 (_2!36979 lt!2462407)) (c!1280807 r2!6280)))))

(declare-fun bm!626844 () Bool)

(assert (=> bm!626844 (= call!626849 (isEmpty!38688 (_2!36979 lt!2462407)))))

(declare-fun b!6888779 () Bool)

(declare-fun res!2808623 () Bool)

(assert (=> b!6888779 (=> res!2808623 e!4150229)))

(assert (=> b!6888779 (= res!2808623 (not (isEmpty!38688 (tail!12870 (_2!36979 lt!2462407)))))))

(declare-fun b!6888780 () Bool)

(declare-fun e!4150228 () Bool)

(assert (=> b!6888780 (= e!4150228 e!4150229)))

(declare-fun res!2808629 () Bool)

(assert (=> b!6888780 (=> res!2808629 e!4150229)))

(assert (=> b!6888780 (= res!2808629 call!626849)))

(declare-fun d!2160663 () Bool)

(declare-fun e!4150230 () Bool)

(assert (=> d!2160663 e!4150230))

(declare-fun c!1280855 () Bool)

(assert (=> d!2160663 (= c!1280855 ((_ is EmptyExpr!16803) r2!6280))))

(assert (=> d!2160663 (= lt!2462421 e!4150227)))

(declare-fun c!1280857 () Bool)

(assert (=> d!2160663 (= c!1280857 (isEmpty!38688 (_2!36979 lt!2462407)))))

(assert (=> d!2160663 (validRegex!8511 r2!6280)))

(assert (=> d!2160663 (= (matchR!8948 r2!6280 (_2!36979 lt!2462407)) lt!2462421)))

(declare-fun b!6888772 () Bool)

(assert (=> b!6888772 (= e!4150224 e!4150228)))

(declare-fun res!2808625 () Bool)

(assert (=> b!6888772 (=> (not res!2808625) (not e!4150228))))

(assert (=> b!6888772 (= res!2808625 (not lt!2462421))))

(declare-fun b!6888781 () Bool)

(declare-fun res!2808630 () Bool)

(assert (=> b!6888781 (=> (not res!2808630) (not e!4150225))))

(assert (=> b!6888781 (= res!2808630 (isEmpty!38688 (tail!12870 (_2!36979 lt!2462407))))))

(declare-fun b!6888782 () Bool)

(declare-fun res!2808628 () Bool)

(assert (=> b!6888782 (=> res!2808628 e!4150224)))

(assert (=> b!6888782 (= res!2808628 e!4150225)))

(declare-fun res!2808624 () Bool)

(assert (=> b!6888782 (=> (not res!2808624) (not e!4150225))))

(assert (=> b!6888782 (= res!2808624 lt!2462421)))

(declare-fun b!6888783 () Bool)

(assert (=> b!6888783 (= e!4150227 (nullable!6686 r2!6280))))

(declare-fun b!6888784 () Bool)

(assert (=> b!6888784 (= e!4150230 e!4150226)))

(declare-fun c!1280856 () Bool)

(assert (=> b!6888784 (= c!1280856 ((_ is EmptyLang!16803) r2!6280))))

(declare-fun b!6888785 () Bool)

(assert (=> b!6888785 (= e!4150230 (= lt!2462421 call!626849))))

(assert (= (and d!2160663 c!1280857) b!6888783))

(assert (= (and d!2160663 (not c!1280857)) b!6888776))

(assert (= (and d!2160663 c!1280855) b!6888785))

(assert (= (and d!2160663 (not c!1280855)) b!6888784))

(assert (= (and b!6888784 c!1280856) b!6888773))

(assert (= (and b!6888784 (not c!1280856)) b!6888774))

(assert (= (and b!6888774 (not res!2808626)) b!6888782))

(assert (= (and b!6888782 res!2808624) b!6888777))

(assert (= (and b!6888777 res!2808627) b!6888781))

(assert (= (and b!6888781 res!2808630) b!6888778))

(assert (= (and b!6888782 (not res!2808628)) b!6888772))

(assert (= (and b!6888772 res!2808625) b!6888780))

(assert (= (and b!6888780 (not res!2808629)) b!6888779))

(assert (= (and b!6888779 (not res!2808623)) b!6888775))

(assert (= (or b!6888785 b!6888777 b!6888780) bm!626844))

(declare-fun m!7611206 () Bool)

(assert (=> b!6888775 m!7611206))

(declare-fun m!7611208 () Bool)

(assert (=> b!6888779 m!7611208))

(assert (=> b!6888779 m!7611208))

(declare-fun m!7611210 () Bool)

(assert (=> b!6888779 m!7611210))

(assert (=> bm!626844 m!7611138))

(declare-fun m!7611212 () Bool)

(assert (=> b!6888783 m!7611212))

(assert (=> b!6888781 m!7611208))

(assert (=> b!6888781 m!7611208))

(assert (=> b!6888781 m!7611210))

(assert (=> d!2160663 m!7611138))

(assert (=> d!2160663 m!7611082))

(assert (=> b!6888776 m!7611206))

(assert (=> b!6888776 m!7611206))

(declare-fun m!7611214 () Bool)

(assert (=> b!6888776 m!7611214))

(assert (=> b!6888776 m!7611208))

(assert (=> b!6888776 m!7611214))

(assert (=> b!6888776 m!7611208))

(declare-fun m!7611216 () Bool)

(assert (=> b!6888776 m!7611216))

(assert (=> b!6888778 m!7611206))

(assert (=> b!6888560 d!2160663))

(declare-fun b!6888797 () Bool)

(declare-fun e!4150239 () Bool)

(declare-fun lt!2462428 () Bool)

(assert (=> b!6888797 (= e!4150239 (not lt!2462428))))

(declare-fun b!6888798 () Bool)

(declare-fun res!2808636 () Bool)

(declare-fun e!4150237 () Bool)

(assert (=> b!6888798 (=> res!2808636 e!4150237)))

(assert (=> b!6888798 (= res!2808636 (not ((_ is ElementMatch!16803) lt!2462403)))))

(assert (=> b!6888798 (= e!4150239 e!4150237)))

(declare-fun b!6888799 () Bool)

(declare-fun e!4150242 () Bool)

(assert (=> b!6888799 (= e!4150242 (not (= (head!13818 s!14361) (c!1280807 lt!2462403))))))

(declare-fun b!6888800 () Bool)

(declare-fun e!4150240 () Bool)

(assert (=> b!6888800 (= e!4150240 (matchR!8948 (derivativeStep!5365 lt!2462403 (head!13818 s!14361)) (tail!12870 s!14361)))))

(declare-fun b!6888801 () Bool)

(declare-fun res!2808637 () Bool)

(declare-fun e!4150238 () Bool)

(assert (=> b!6888801 (=> (not res!2808637) (not e!4150238))))

(declare-fun call!626850 () Bool)

(assert (=> b!6888801 (= res!2808637 (not call!626850))))

(declare-fun b!6888802 () Bool)

(assert (=> b!6888802 (= e!4150238 (= (head!13818 s!14361) (c!1280807 lt!2462403)))))

(declare-fun bm!626845 () Bool)

(assert (=> bm!626845 (= call!626850 (isEmpty!38688 s!14361))))

(declare-fun b!6888803 () Bool)

(declare-fun res!2808633 () Bool)

(assert (=> b!6888803 (=> res!2808633 e!4150242)))

(assert (=> b!6888803 (= res!2808633 (not (isEmpty!38688 (tail!12870 s!14361))))))

(declare-fun b!6888804 () Bool)

(declare-fun e!4150241 () Bool)

(assert (=> b!6888804 (= e!4150241 e!4150242)))

(declare-fun res!2808639 () Bool)

(assert (=> b!6888804 (=> res!2808639 e!4150242)))

(assert (=> b!6888804 (= res!2808639 call!626850)))

(declare-fun d!2160667 () Bool)

(declare-fun e!4150243 () Bool)

(assert (=> d!2160667 e!4150243))

(declare-fun c!1280862 () Bool)

(assert (=> d!2160667 (= c!1280862 ((_ is EmptyExpr!16803) lt!2462403))))

(assert (=> d!2160667 (= lt!2462428 e!4150240)))

(declare-fun c!1280864 () Bool)

(assert (=> d!2160667 (= c!1280864 (isEmpty!38688 s!14361))))

(assert (=> d!2160667 (validRegex!8511 lt!2462403)))

(assert (=> d!2160667 (= (matchR!8948 lt!2462403 s!14361) lt!2462428)))

(declare-fun b!6888796 () Bool)

(assert (=> b!6888796 (= e!4150237 e!4150241)))

(declare-fun res!2808635 () Bool)

(assert (=> b!6888796 (=> (not res!2808635) (not e!4150241))))

(assert (=> b!6888796 (= res!2808635 (not lt!2462428))))

(declare-fun b!6888805 () Bool)

(declare-fun res!2808640 () Bool)

(assert (=> b!6888805 (=> (not res!2808640) (not e!4150238))))

(assert (=> b!6888805 (= res!2808640 (isEmpty!38688 (tail!12870 s!14361)))))

(declare-fun b!6888806 () Bool)

(declare-fun res!2808638 () Bool)

(assert (=> b!6888806 (=> res!2808638 e!4150237)))

(assert (=> b!6888806 (= res!2808638 e!4150238)))

(declare-fun res!2808634 () Bool)

(assert (=> b!6888806 (=> (not res!2808634) (not e!4150238))))

(assert (=> b!6888806 (= res!2808634 lt!2462428)))

(declare-fun b!6888807 () Bool)

(assert (=> b!6888807 (= e!4150240 (nullable!6686 lt!2462403))))

(declare-fun b!6888808 () Bool)

(assert (=> b!6888808 (= e!4150243 e!4150239)))

(declare-fun c!1280863 () Bool)

(assert (=> b!6888808 (= c!1280863 ((_ is EmptyLang!16803) lt!2462403))))

(declare-fun b!6888809 () Bool)

(assert (=> b!6888809 (= e!4150243 (= lt!2462428 call!626850))))

(assert (= (and d!2160667 c!1280864) b!6888807))

(assert (= (and d!2160667 (not c!1280864)) b!6888800))

(assert (= (and d!2160667 c!1280862) b!6888809))

(assert (= (and d!2160667 (not c!1280862)) b!6888808))

(assert (= (and b!6888808 c!1280863) b!6888797))

(assert (= (and b!6888808 (not c!1280863)) b!6888798))

(assert (= (and b!6888798 (not res!2808636)) b!6888806))

(assert (= (and b!6888806 res!2808634) b!6888801))

(assert (= (and b!6888801 res!2808637) b!6888805))

(assert (= (and b!6888805 res!2808640) b!6888802))

(assert (= (and b!6888806 (not res!2808638)) b!6888796))

(assert (= (and b!6888796 res!2808635) b!6888804))

(assert (= (and b!6888804 (not res!2808639)) b!6888803))

(assert (= (and b!6888803 (not res!2808633)) b!6888799))

(assert (= (or b!6888809 b!6888801 b!6888804) bm!626845))

(declare-fun m!7611218 () Bool)

(assert (=> b!6888799 m!7611218))

(declare-fun m!7611220 () Bool)

(assert (=> b!6888803 m!7611220))

(assert (=> b!6888803 m!7611220))

(declare-fun m!7611222 () Bool)

(assert (=> b!6888803 m!7611222))

(declare-fun m!7611224 () Bool)

(assert (=> bm!626845 m!7611224))

(declare-fun m!7611226 () Bool)

(assert (=> b!6888807 m!7611226))

(assert (=> b!6888805 m!7611220))

(assert (=> b!6888805 m!7611220))

(assert (=> b!6888805 m!7611222))

(assert (=> d!2160667 m!7611224))

(declare-fun m!7611228 () Bool)

(assert (=> d!2160667 m!7611228))

(assert (=> b!6888800 m!7611218))

(assert (=> b!6888800 m!7611218))

(declare-fun m!7611230 () Bool)

(assert (=> b!6888800 m!7611230))

(assert (=> b!6888800 m!7611220))

(assert (=> b!6888800 m!7611230))

(assert (=> b!6888800 m!7611220))

(declare-fun m!7611232 () Bool)

(assert (=> b!6888800 m!7611232))

(assert (=> b!6888802 m!7611218))

(assert (=> b!6888549 d!2160667))

(declare-fun b!6888819 () Bool)

(declare-fun e!4150250 () Bool)

(declare-fun lt!2462429 () Bool)

(assert (=> b!6888819 (= e!4150250 (not lt!2462429))))

(declare-fun b!6888820 () Bool)

(declare-fun res!2808652 () Bool)

(declare-fun e!4150248 () Bool)

(assert (=> b!6888820 (=> res!2808652 e!4150248)))

(assert (=> b!6888820 (= res!2808652 (not ((_ is ElementMatch!16803) lt!2462402)))))

(assert (=> b!6888820 (= e!4150250 e!4150248)))

(declare-fun b!6888821 () Bool)

(declare-fun e!4150253 () Bool)

(assert (=> b!6888821 (= e!4150253 (not (= (head!13818 s!14361) (c!1280807 lt!2462402))))))

(declare-fun b!6888822 () Bool)

(declare-fun e!4150251 () Bool)

(assert (=> b!6888822 (= e!4150251 (matchR!8948 (derivativeStep!5365 lt!2462402 (head!13818 s!14361)) (tail!12870 s!14361)))))

(declare-fun b!6888823 () Bool)

(declare-fun res!2808653 () Bool)

(declare-fun e!4150249 () Bool)

(assert (=> b!6888823 (=> (not res!2808653) (not e!4150249))))

(declare-fun call!626851 () Bool)

(assert (=> b!6888823 (= res!2808653 (not call!626851))))

(declare-fun b!6888824 () Bool)

(assert (=> b!6888824 (= e!4150249 (= (head!13818 s!14361) (c!1280807 lt!2462402)))))

(declare-fun bm!626846 () Bool)

(assert (=> bm!626846 (= call!626851 (isEmpty!38688 s!14361))))

(declare-fun b!6888825 () Bool)

(declare-fun res!2808649 () Bool)

(assert (=> b!6888825 (=> res!2808649 e!4150253)))

(assert (=> b!6888825 (= res!2808649 (not (isEmpty!38688 (tail!12870 s!14361))))))

(declare-fun b!6888826 () Bool)

(declare-fun e!4150252 () Bool)

(assert (=> b!6888826 (= e!4150252 e!4150253)))

(declare-fun res!2808655 () Bool)

(assert (=> b!6888826 (=> res!2808655 e!4150253)))

(assert (=> b!6888826 (= res!2808655 call!626851)))

(declare-fun d!2160669 () Bool)

(declare-fun e!4150254 () Bool)

(assert (=> d!2160669 e!4150254))

(declare-fun c!1280865 () Bool)

(assert (=> d!2160669 (= c!1280865 ((_ is EmptyExpr!16803) lt!2462402))))

(assert (=> d!2160669 (= lt!2462429 e!4150251)))

(declare-fun c!1280867 () Bool)

(assert (=> d!2160669 (= c!1280867 (isEmpty!38688 s!14361))))

(assert (=> d!2160669 (validRegex!8511 lt!2462402)))

(assert (=> d!2160669 (= (matchR!8948 lt!2462402 s!14361) lt!2462429)))

(declare-fun b!6888818 () Bool)

(assert (=> b!6888818 (= e!4150248 e!4150252)))

(declare-fun res!2808651 () Bool)

(assert (=> b!6888818 (=> (not res!2808651) (not e!4150252))))

(assert (=> b!6888818 (= res!2808651 (not lt!2462429))))

(declare-fun b!6888827 () Bool)

(declare-fun res!2808656 () Bool)

(assert (=> b!6888827 (=> (not res!2808656) (not e!4150249))))

(assert (=> b!6888827 (= res!2808656 (isEmpty!38688 (tail!12870 s!14361)))))

(declare-fun b!6888828 () Bool)

(declare-fun res!2808654 () Bool)

(assert (=> b!6888828 (=> res!2808654 e!4150248)))

(assert (=> b!6888828 (= res!2808654 e!4150249)))

(declare-fun res!2808650 () Bool)

(assert (=> b!6888828 (=> (not res!2808650) (not e!4150249))))

(assert (=> b!6888828 (= res!2808650 lt!2462429)))

(declare-fun b!6888829 () Bool)

(assert (=> b!6888829 (= e!4150251 (nullable!6686 lt!2462402))))

(declare-fun b!6888830 () Bool)

(assert (=> b!6888830 (= e!4150254 e!4150250)))

(declare-fun c!1280866 () Bool)

(assert (=> b!6888830 (= c!1280866 ((_ is EmptyLang!16803) lt!2462402))))

(declare-fun b!6888831 () Bool)

(assert (=> b!6888831 (= e!4150254 (= lt!2462429 call!626851))))

(assert (= (and d!2160669 c!1280867) b!6888829))

(assert (= (and d!2160669 (not c!1280867)) b!6888822))

(assert (= (and d!2160669 c!1280865) b!6888831))

(assert (= (and d!2160669 (not c!1280865)) b!6888830))

(assert (= (and b!6888830 c!1280866) b!6888819))

(assert (= (and b!6888830 (not c!1280866)) b!6888820))

(assert (= (and b!6888820 (not res!2808652)) b!6888828))

(assert (= (and b!6888828 res!2808650) b!6888823))

(assert (= (and b!6888823 res!2808653) b!6888827))

(assert (= (and b!6888827 res!2808656) b!6888824))

(assert (= (and b!6888828 (not res!2808654)) b!6888818))

(assert (= (and b!6888818 res!2808651) b!6888826))

(assert (= (and b!6888826 (not res!2808655)) b!6888825))

(assert (= (and b!6888825 (not res!2808649)) b!6888821))

(assert (= (or b!6888831 b!6888823 b!6888826) bm!626846))

(assert (=> b!6888821 m!7611218))

(assert (=> b!6888825 m!7611220))

(assert (=> b!6888825 m!7611220))

(assert (=> b!6888825 m!7611222))

(assert (=> bm!626846 m!7611224))

(declare-fun m!7611234 () Bool)

(assert (=> b!6888829 m!7611234))

(assert (=> b!6888827 m!7611220))

(assert (=> b!6888827 m!7611220))

(assert (=> b!6888827 m!7611222))

(assert (=> d!2160669 m!7611224))

(assert (=> d!2160669 m!7611050))

(assert (=> b!6888822 m!7611218))

(assert (=> b!6888822 m!7611218))

(declare-fun m!7611236 () Bool)

(assert (=> b!6888822 m!7611236))

(assert (=> b!6888822 m!7611220))

(assert (=> b!6888822 m!7611236))

(assert (=> b!6888822 m!7611220))

(declare-fun m!7611238 () Bool)

(assert (=> b!6888822 m!7611238))

(assert (=> b!6888824 m!7611218))

(assert (=> b!6888549 d!2160669))

(declare-fun bs!1839180 () Bool)

(declare-fun b!6888833 () Bool)

(assert (= bs!1839180 (and b!6888833 b!6888611)))

(declare-fun lambda!390429 () Int)

(assert (=> bs!1839180 (= (and (= s!14361 (_2!36979 lt!2462407)) (= (reg!17132 lt!2462402) (reg!17132 r2!6280)) (= lt!2462402 r2!6280)) (= lambda!390429 lambda!390425))))

(declare-fun bs!1839181 () Bool)

(assert (= bs!1839181 (and b!6888833 b!6888547)))

(assert (=> bs!1839181 (not (= lambda!390429 lambda!390420))))

(declare-fun bs!1839182 () Bool)

(assert (= bs!1839182 (and b!6888833 b!6888564)))

(assert (=> bs!1839182 (not (= lambda!390429 lambda!390414))))

(declare-fun bs!1839183 () Bool)

(assert (= bs!1839183 (and b!6888833 b!6888552)))

(assert (=> bs!1839183 (not (= lambda!390429 lambda!390417))))

(declare-fun bs!1839184 () Bool)

(assert (= bs!1839184 (and b!6888833 b!6888548)))

(assert (=> bs!1839184 (not (= lambda!390429 lambda!390416))))

(declare-fun bs!1839185 () Bool)

(assert (= bs!1839185 (and b!6888833 b!6888612)))

(assert (=> bs!1839185 (not (= lambda!390429 lambda!390426))))

(declare-fun bs!1839186 () Bool)

(assert (= bs!1839186 (and b!6888833 b!6888622)))

(assert (=> bs!1839186 (= (and (= s!14361 (_1!36979 lt!2462407)) (= (reg!17132 lt!2462402) (reg!17132 r1!6342)) (= lt!2462402 r1!6342)) (= lambda!390429 lambda!390427))))

(declare-fun bs!1839187 () Bool)

(assert (= bs!1839187 (and b!6888833 b!6888569)))

(assert (=> bs!1839187 (not (= lambda!390429 lambda!390419))))

(assert (=> bs!1839182 (not (= lambda!390429 lambda!390413))))

(declare-fun bs!1839188 () Bool)

(assert (= bs!1839188 (and b!6888833 b!6888623)))

(assert (=> bs!1839188 (not (= lambda!390429 lambda!390428))))

(assert (=> bs!1839183 (not (= lambda!390429 lambda!390418))))

(assert (=> bs!1839184 (not (= lambda!390429 lambda!390415))))

(assert (=> b!6888833 true))

(assert (=> b!6888833 true))

(declare-fun bs!1839189 () Bool)

(declare-fun b!6888834 () Bool)

(assert (= bs!1839189 (and b!6888834 b!6888611)))

(declare-fun lambda!390430 () Int)

(assert (=> bs!1839189 (not (= lambda!390430 lambda!390425))))

(declare-fun bs!1839190 () Bool)

(assert (= bs!1839190 (and b!6888834 b!6888547)))

(assert (=> bs!1839190 (= (and (= (regOne!34118 lt!2462402) r1!6342) (= (regTwo!34118 lt!2462402) lt!2462386)) (= lambda!390430 lambda!390420))))

(declare-fun bs!1839191 () Bool)

(assert (= bs!1839191 (and b!6888834 b!6888564)))

(assert (=> bs!1839191 (= (and (= (regOne!34118 lt!2462402) lt!2462381) (= (regTwo!34118 lt!2462402) r3!135)) (= lambda!390430 lambda!390414))))

(declare-fun bs!1839192 () Bool)

(assert (= bs!1839192 (and b!6888834 b!6888552)))

(assert (=> bs!1839192 (not (= lambda!390430 lambda!390417))))

(declare-fun bs!1839193 () Bool)

(assert (= bs!1839193 (and b!6888834 b!6888833)))

(assert (=> bs!1839193 (not (= lambda!390430 lambda!390429))))

(declare-fun bs!1839194 () Bool)

(assert (= bs!1839194 (and b!6888834 b!6888548)))

(assert (=> bs!1839194 (= (and (= s!14361 (_1!36979 lt!2462393)) (= (regOne!34118 lt!2462402) r1!6342) (= (regTwo!34118 lt!2462402) r2!6280)) (= lambda!390430 lambda!390416))))

(declare-fun bs!1839195 () Bool)

(assert (= bs!1839195 (and b!6888834 b!6888612)))

(assert (=> bs!1839195 (= (and (= s!14361 (_2!36979 lt!2462407)) (= (regOne!34118 lt!2462402) (regOne!34118 r2!6280)) (= (regTwo!34118 lt!2462402) (regTwo!34118 r2!6280))) (= lambda!390430 lambda!390426))))

(declare-fun bs!1839196 () Bool)

(assert (= bs!1839196 (and b!6888834 b!6888622)))

(assert (=> bs!1839196 (not (= lambda!390430 lambda!390427))))

(declare-fun bs!1839197 () Bool)

(assert (= bs!1839197 (and b!6888834 b!6888569)))

(assert (=> bs!1839197 (not (= lambda!390430 lambda!390419))))

(assert (=> bs!1839191 (not (= lambda!390430 lambda!390413))))

(declare-fun bs!1839198 () Bool)

(assert (= bs!1839198 (and b!6888834 b!6888623)))

(assert (=> bs!1839198 (= (and (= s!14361 (_1!36979 lt!2462407)) (= (regOne!34118 lt!2462402) (regOne!34118 r1!6342)) (= (regTwo!34118 lt!2462402) (regTwo!34118 r1!6342))) (= lambda!390430 lambda!390428))))

(assert (=> bs!1839192 (= (and (= s!14361 lt!2462383) (= (regOne!34118 lt!2462402) r2!6280) (= (regTwo!34118 lt!2462402) r3!135)) (= lambda!390430 lambda!390418))))

(assert (=> bs!1839194 (not (= lambda!390430 lambda!390415))))

(assert (=> b!6888834 true))

(assert (=> b!6888834 true))

(declare-fun b!6888832 () Bool)

(declare-fun e!4150260 () Bool)

(declare-fun call!626853 () Bool)

(assert (=> b!6888832 (= e!4150260 call!626853)))

(declare-fun e!4150258 () Bool)

(declare-fun call!626852 () Bool)

(assert (=> b!6888833 (= e!4150258 call!626852)))

(declare-fun e!4150255 () Bool)

(assert (=> b!6888834 (= e!4150255 call!626852)))

(declare-fun c!1280871 () Bool)

(declare-fun bm!626847 () Bool)

(assert (=> bm!626847 (= call!626852 (Exists!3815 (ite c!1280871 lambda!390429 lambda!390430)))))

(declare-fun b!6888835 () Bool)

(declare-fun e!4150257 () Bool)

(assert (=> b!6888835 (= e!4150257 (matchRSpec!3866 (regTwo!34119 lt!2462402) s!14361))))

(declare-fun bm!626848 () Bool)

(assert (=> bm!626848 (= call!626853 (isEmpty!38688 s!14361))))

(declare-fun b!6888837 () Bool)

(declare-fun c!1280870 () Bool)

(assert (=> b!6888837 (= c!1280870 ((_ is ElementMatch!16803) lt!2462402))))

(declare-fun e!4150256 () Bool)

(declare-fun e!4150261 () Bool)

(assert (=> b!6888837 (= e!4150256 e!4150261)))

(declare-fun b!6888838 () Bool)

(assert (=> b!6888838 (= e!4150261 (= s!14361 (Cons!66436 (c!1280807 lt!2462402) Nil!66436)))))

(declare-fun b!6888836 () Bool)

(declare-fun e!4150259 () Bool)

(assert (=> b!6888836 (= e!4150259 e!4150257)))

(declare-fun res!2808658 () Bool)

(assert (=> b!6888836 (= res!2808658 (matchRSpec!3866 (regOne!34119 lt!2462402) s!14361))))

(assert (=> b!6888836 (=> res!2808658 e!4150257)))

(declare-fun d!2160671 () Bool)

(declare-fun c!1280869 () Bool)

(assert (=> d!2160671 (= c!1280869 ((_ is EmptyExpr!16803) lt!2462402))))

(assert (=> d!2160671 (= (matchRSpec!3866 lt!2462402 s!14361) e!4150260)))

(declare-fun b!6888839 () Bool)

(declare-fun res!2808657 () Bool)

(assert (=> b!6888839 (=> res!2808657 e!4150258)))

(assert (=> b!6888839 (= res!2808657 call!626853)))

(assert (=> b!6888839 (= e!4150255 e!4150258)))

(declare-fun b!6888840 () Bool)

(assert (=> b!6888840 (= e!4150259 e!4150255)))

(assert (=> b!6888840 (= c!1280871 ((_ is Star!16803) lt!2462402))))

(declare-fun b!6888841 () Bool)

(assert (=> b!6888841 (= e!4150260 e!4150256)))

(declare-fun res!2808659 () Bool)

(assert (=> b!6888841 (= res!2808659 (not ((_ is EmptyLang!16803) lt!2462402)))))

(assert (=> b!6888841 (=> (not res!2808659) (not e!4150256))))

(declare-fun b!6888842 () Bool)

(declare-fun c!1280868 () Bool)

(assert (=> b!6888842 (= c!1280868 ((_ is Union!16803) lt!2462402))))

(assert (=> b!6888842 (= e!4150261 e!4150259)))

(assert (= (and d!2160671 c!1280869) b!6888832))

(assert (= (and d!2160671 (not c!1280869)) b!6888841))

(assert (= (and b!6888841 res!2808659) b!6888837))

(assert (= (and b!6888837 c!1280870) b!6888838))

(assert (= (and b!6888837 (not c!1280870)) b!6888842))

(assert (= (and b!6888842 c!1280868) b!6888836))

(assert (= (and b!6888842 (not c!1280868)) b!6888840))

(assert (= (and b!6888836 (not res!2808658)) b!6888835))

(assert (= (and b!6888840 c!1280871) b!6888839))

(assert (= (and b!6888840 (not c!1280871)) b!6888834))

(assert (= (and b!6888839 (not res!2808657)) b!6888833))

(assert (= (or b!6888833 b!6888834) bm!626847))

(assert (= (or b!6888832 b!6888839) bm!626848))

(declare-fun m!7611262 () Bool)

(assert (=> bm!626847 m!7611262))

(declare-fun m!7611264 () Bool)

(assert (=> b!6888835 m!7611264))

(assert (=> bm!626848 m!7611224))

(declare-fun m!7611266 () Bool)

(assert (=> b!6888836 m!7611266))

(assert (=> b!6888549 d!2160671))

(declare-fun d!2160675 () Bool)

(assert (=> d!2160675 (= (matchR!8948 lt!2462402 s!14361) (matchRSpec!3866 lt!2462402 s!14361))))

(declare-fun lt!2462433 () Unit!160326)

(assert (=> d!2160675 (= lt!2462433 (choose!51292 lt!2462402 s!14361))))

(assert (=> d!2160675 (validRegex!8511 lt!2462402)))

(assert (=> d!2160675 (= (mainMatchTheorem!3866 lt!2462402 s!14361) lt!2462433)))

(declare-fun bs!1839199 () Bool)

(assert (= bs!1839199 d!2160675))

(assert (=> bs!1839199 m!7611020))

(assert (=> bs!1839199 m!7611022))

(declare-fun m!7611268 () Bool)

(assert (=> bs!1839199 m!7611268))

(assert (=> bs!1839199 m!7611050))

(assert (=> b!6888549 d!2160675))

(declare-fun bs!1839200 () Bool)

(declare-fun b!6888853 () Bool)

(assert (= bs!1839200 (and b!6888853 b!6888611)))

(declare-fun lambda!390431 () Int)

(assert (=> bs!1839200 (= (and (= s!14361 (_2!36979 lt!2462407)) (= (reg!17132 lt!2462403) (reg!17132 r2!6280)) (= lt!2462403 r2!6280)) (= lambda!390431 lambda!390425))))

(declare-fun bs!1839201 () Bool)

(assert (= bs!1839201 (and b!6888853 b!6888547)))

(assert (=> bs!1839201 (not (= lambda!390431 lambda!390420))))

(declare-fun bs!1839202 () Bool)

(assert (= bs!1839202 (and b!6888853 b!6888564)))

(assert (=> bs!1839202 (not (= lambda!390431 lambda!390414))))

(declare-fun bs!1839203 () Bool)

(assert (= bs!1839203 (and b!6888853 b!6888552)))

(assert (=> bs!1839203 (not (= lambda!390431 lambda!390417))))

(declare-fun bs!1839204 () Bool)

(assert (= bs!1839204 (and b!6888853 b!6888833)))

(assert (=> bs!1839204 (= (and (= (reg!17132 lt!2462403) (reg!17132 lt!2462402)) (= lt!2462403 lt!2462402)) (= lambda!390431 lambda!390429))))

(declare-fun bs!1839205 () Bool)

(assert (= bs!1839205 (and b!6888853 b!6888548)))

(assert (=> bs!1839205 (not (= lambda!390431 lambda!390416))))

(declare-fun bs!1839206 () Bool)

(assert (= bs!1839206 (and b!6888853 b!6888612)))

(assert (=> bs!1839206 (not (= lambda!390431 lambda!390426))))

(declare-fun bs!1839207 () Bool)

(assert (= bs!1839207 (and b!6888853 b!6888622)))

(assert (=> bs!1839207 (= (and (= s!14361 (_1!36979 lt!2462407)) (= (reg!17132 lt!2462403) (reg!17132 r1!6342)) (= lt!2462403 r1!6342)) (= lambda!390431 lambda!390427))))

(declare-fun bs!1839208 () Bool)

(assert (= bs!1839208 (and b!6888853 b!6888569)))

(assert (=> bs!1839208 (not (= lambda!390431 lambda!390419))))

(assert (=> bs!1839202 (not (= lambda!390431 lambda!390413))))

(declare-fun bs!1839209 () Bool)

(assert (= bs!1839209 (and b!6888853 b!6888623)))

(assert (=> bs!1839209 (not (= lambda!390431 lambda!390428))))

(declare-fun bs!1839210 () Bool)

(assert (= bs!1839210 (and b!6888853 b!6888834)))

(assert (=> bs!1839210 (not (= lambda!390431 lambda!390430))))

(assert (=> bs!1839203 (not (= lambda!390431 lambda!390418))))

(assert (=> bs!1839205 (not (= lambda!390431 lambda!390415))))

(assert (=> b!6888853 true))

(assert (=> b!6888853 true))

(declare-fun bs!1839212 () Bool)

(declare-fun b!6888854 () Bool)

(assert (= bs!1839212 (and b!6888854 b!6888611)))

(declare-fun lambda!390432 () Int)

(assert (=> bs!1839212 (not (= lambda!390432 lambda!390425))))

(declare-fun bs!1839213 () Bool)

(assert (= bs!1839213 (and b!6888854 b!6888564)))

(assert (=> bs!1839213 (= (and (= (regOne!34118 lt!2462403) lt!2462381) (= (regTwo!34118 lt!2462403) r3!135)) (= lambda!390432 lambda!390414))))

(declare-fun bs!1839214 () Bool)

(assert (= bs!1839214 (and b!6888854 b!6888552)))

(assert (=> bs!1839214 (not (= lambda!390432 lambda!390417))))

(declare-fun bs!1839215 () Bool)

(assert (= bs!1839215 (and b!6888854 b!6888833)))

(assert (=> bs!1839215 (not (= lambda!390432 lambda!390429))))

(declare-fun bs!1839217 () Bool)

(assert (= bs!1839217 (and b!6888854 b!6888548)))

(assert (=> bs!1839217 (= (and (= s!14361 (_1!36979 lt!2462393)) (= (regOne!34118 lt!2462403) r1!6342) (= (regTwo!34118 lt!2462403) r2!6280)) (= lambda!390432 lambda!390416))))

(declare-fun bs!1839218 () Bool)

(assert (= bs!1839218 (and b!6888854 b!6888612)))

(assert (=> bs!1839218 (= (and (= s!14361 (_2!36979 lt!2462407)) (= (regOne!34118 lt!2462403) (regOne!34118 r2!6280)) (= (regTwo!34118 lt!2462403) (regTwo!34118 r2!6280))) (= lambda!390432 lambda!390426))))

(declare-fun bs!1839219 () Bool)

(assert (= bs!1839219 (and b!6888854 b!6888622)))

(assert (=> bs!1839219 (not (= lambda!390432 lambda!390427))))

(declare-fun bs!1839220 () Bool)

(assert (= bs!1839220 (and b!6888854 b!6888569)))

(assert (=> bs!1839220 (not (= lambda!390432 lambda!390419))))

(assert (=> bs!1839213 (not (= lambda!390432 lambda!390413))))

(declare-fun bs!1839222 () Bool)

(assert (= bs!1839222 (and b!6888854 b!6888853)))

(assert (=> bs!1839222 (not (= lambda!390432 lambda!390431))))

(declare-fun bs!1839223 () Bool)

(assert (= bs!1839223 (and b!6888854 b!6888547)))

(assert (=> bs!1839223 (= (and (= (regOne!34118 lt!2462403) r1!6342) (= (regTwo!34118 lt!2462403) lt!2462386)) (= lambda!390432 lambda!390420))))

(declare-fun bs!1839224 () Bool)

(assert (= bs!1839224 (and b!6888854 b!6888623)))

(assert (=> bs!1839224 (= (and (= s!14361 (_1!36979 lt!2462407)) (= (regOne!34118 lt!2462403) (regOne!34118 r1!6342)) (= (regTwo!34118 lt!2462403) (regTwo!34118 r1!6342))) (= lambda!390432 lambda!390428))))

(declare-fun bs!1839225 () Bool)

(assert (= bs!1839225 (and b!6888854 b!6888834)))

(assert (=> bs!1839225 (= (and (= (regOne!34118 lt!2462403) (regOne!34118 lt!2462402)) (= (regTwo!34118 lt!2462403) (regTwo!34118 lt!2462402))) (= lambda!390432 lambda!390430))))

(assert (=> bs!1839214 (= (and (= s!14361 lt!2462383) (= (regOne!34118 lt!2462403) r2!6280) (= (regTwo!34118 lt!2462403) r3!135)) (= lambda!390432 lambda!390418))))

(assert (=> bs!1839217 (not (= lambda!390432 lambda!390415))))

(assert (=> b!6888854 true))

(assert (=> b!6888854 true))

(declare-fun b!6888852 () Bool)

(declare-fun e!4150272 () Bool)

(declare-fun call!626855 () Bool)

(assert (=> b!6888852 (= e!4150272 call!626855)))

(declare-fun e!4150270 () Bool)

(declare-fun call!626854 () Bool)

(assert (=> b!6888853 (= e!4150270 call!626854)))

(declare-fun e!4150267 () Bool)

(assert (=> b!6888854 (= e!4150267 call!626854)))

(declare-fun bm!626849 () Bool)

(declare-fun c!1280877 () Bool)

(assert (=> bm!626849 (= call!626854 (Exists!3815 (ite c!1280877 lambda!390431 lambda!390432)))))

(declare-fun b!6888855 () Bool)

(declare-fun e!4150269 () Bool)

(assert (=> b!6888855 (= e!4150269 (matchRSpec!3866 (regTwo!34119 lt!2462403) s!14361))))

(declare-fun bm!626850 () Bool)

(assert (=> bm!626850 (= call!626855 (isEmpty!38688 s!14361))))

(declare-fun b!6888857 () Bool)

(declare-fun c!1280876 () Bool)

(assert (=> b!6888857 (= c!1280876 ((_ is ElementMatch!16803) lt!2462403))))

(declare-fun e!4150268 () Bool)

(declare-fun e!4150273 () Bool)

(assert (=> b!6888857 (= e!4150268 e!4150273)))

(declare-fun b!6888858 () Bool)

(assert (=> b!6888858 (= e!4150273 (= s!14361 (Cons!66436 (c!1280807 lt!2462403) Nil!66436)))))

(declare-fun b!6888856 () Bool)

(declare-fun e!4150271 () Bool)

(assert (=> b!6888856 (= e!4150271 e!4150269)))

(declare-fun res!2808666 () Bool)

(assert (=> b!6888856 (= res!2808666 (matchRSpec!3866 (regOne!34119 lt!2462403) s!14361))))

(assert (=> b!6888856 (=> res!2808666 e!4150269)))

(declare-fun d!2160677 () Bool)

(declare-fun c!1280875 () Bool)

(assert (=> d!2160677 (= c!1280875 ((_ is EmptyExpr!16803) lt!2462403))))

(assert (=> d!2160677 (= (matchRSpec!3866 lt!2462403 s!14361) e!4150272)))

(declare-fun b!6888859 () Bool)

(declare-fun res!2808665 () Bool)

(assert (=> b!6888859 (=> res!2808665 e!4150270)))

(assert (=> b!6888859 (= res!2808665 call!626855)))

(assert (=> b!6888859 (= e!4150267 e!4150270)))

(declare-fun b!6888860 () Bool)

(assert (=> b!6888860 (= e!4150271 e!4150267)))

(assert (=> b!6888860 (= c!1280877 ((_ is Star!16803) lt!2462403))))

(declare-fun b!6888861 () Bool)

(assert (=> b!6888861 (= e!4150272 e!4150268)))

(declare-fun res!2808667 () Bool)

(assert (=> b!6888861 (= res!2808667 (not ((_ is EmptyLang!16803) lt!2462403)))))

(assert (=> b!6888861 (=> (not res!2808667) (not e!4150268))))

(declare-fun b!6888862 () Bool)

(declare-fun c!1280874 () Bool)

(assert (=> b!6888862 (= c!1280874 ((_ is Union!16803) lt!2462403))))

(assert (=> b!6888862 (= e!4150273 e!4150271)))

(assert (= (and d!2160677 c!1280875) b!6888852))

(assert (= (and d!2160677 (not c!1280875)) b!6888861))

(assert (= (and b!6888861 res!2808667) b!6888857))

(assert (= (and b!6888857 c!1280876) b!6888858))

(assert (= (and b!6888857 (not c!1280876)) b!6888862))

(assert (= (and b!6888862 c!1280874) b!6888856))

(assert (= (and b!6888862 (not c!1280874)) b!6888860))

(assert (= (and b!6888856 (not res!2808666)) b!6888855))

(assert (= (and b!6888860 c!1280877) b!6888859))

(assert (= (and b!6888860 (not c!1280877)) b!6888854))

(assert (= (and b!6888859 (not res!2808665)) b!6888853))

(assert (= (or b!6888853 b!6888854) bm!626849))

(assert (= (or b!6888852 b!6888859) bm!626850))

(declare-fun m!7611276 () Bool)

(assert (=> bm!626849 m!7611276))

(declare-fun m!7611278 () Bool)

(assert (=> b!6888855 m!7611278))

(assert (=> bm!626850 m!7611224))

(declare-fun m!7611280 () Bool)

(assert (=> b!6888856 m!7611280))

(assert (=> b!6888549 d!2160677))

(declare-fun d!2160685 () Bool)

(assert (=> d!2160685 (= (matchR!8948 lt!2462403 s!14361) (matchRSpec!3866 lt!2462403 s!14361))))

(declare-fun lt!2462437 () Unit!160326)

(assert (=> d!2160685 (= lt!2462437 (choose!51292 lt!2462403 s!14361))))

(assert (=> d!2160685 (validRegex!8511 lt!2462403)))

(assert (=> d!2160685 (= (mainMatchTheorem!3866 lt!2462403 s!14361) lt!2462437)))

(declare-fun bs!1839226 () Bool)

(assert (= bs!1839226 d!2160685))

(assert (=> bs!1839226 m!7611028))

(assert (=> bs!1839226 m!7611024))

(declare-fun m!7611282 () Bool)

(assert (=> bs!1839226 m!7611282))

(assert (=> bs!1839226 m!7611228))

(assert (=> b!6888549 d!2160685))

(declare-fun d!2160687 () Bool)

(declare-fun choose!51298 (Int) Bool)

(assert (=> d!2160687 (= (Exists!3815 lambda!390415) (choose!51298 lambda!390415))))

(declare-fun bs!1839227 () Bool)

(assert (= bs!1839227 d!2160687))

(declare-fun m!7611284 () Bool)

(assert (=> bs!1839227 m!7611284))

(assert (=> b!6888548 d!2160687))

(declare-fun bs!1839234 () Bool)

(declare-fun d!2160689 () Bool)

(assert (= bs!1839234 (and d!2160689 b!6888611)))

(declare-fun lambda!390438 () Int)

(assert (=> bs!1839234 (not (= lambda!390438 lambda!390425))))

(declare-fun bs!1839235 () Bool)

(assert (= bs!1839235 (and d!2160689 b!6888564)))

(assert (=> bs!1839235 (not (= lambda!390438 lambda!390414))))

(declare-fun bs!1839236 () Bool)

(assert (= bs!1839236 (and d!2160689 b!6888552)))

(assert (=> bs!1839236 (= (and (= (_1!36979 lt!2462393) lt!2462383) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!390438 lambda!390417))))

(declare-fun bs!1839237 () Bool)

(assert (= bs!1839237 (and d!2160689 b!6888833)))

(assert (=> bs!1839237 (not (= lambda!390438 lambda!390429))))

(declare-fun bs!1839238 () Bool)

(assert (= bs!1839238 (and d!2160689 b!6888548)))

(assert (=> bs!1839238 (not (= lambda!390438 lambda!390416))))

(declare-fun bs!1839239 () Bool)

(assert (= bs!1839239 (and d!2160689 b!6888612)))

(assert (=> bs!1839239 (not (= lambda!390438 lambda!390426))))

(declare-fun bs!1839240 () Bool)

(assert (= bs!1839240 (and d!2160689 b!6888622)))

(assert (=> bs!1839240 (not (= lambda!390438 lambda!390427))))

(declare-fun bs!1839241 () Bool)

(assert (= bs!1839241 (and d!2160689 b!6888569)))

(assert (=> bs!1839241 (= (and (= (_1!36979 lt!2462393) s!14361) (= r2!6280 lt!2462386)) (= lambda!390438 lambda!390419))))

(assert (=> bs!1839235 (= (and (= (_1!36979 lt!2462393) s!14361) (= r1!6342 lt!2462381) (= r2!6280 r3!135)) (= lambda!390438 lambda!390413))))

(declare-fun bs!1839242 () Bool)

(assert (= bs!1839242 (and d!2160689 b!6888853)))

(assert (=> bs!1839242 (not (= lambda!390438 lambda!390431))))

(declare-fun bs!1839243 () Bool)

(assert (= bs!1839243 (and d!2160689 b!6888547)))

(assert (=> bs!1839243 (not (= lambda!390438 lambda!390420))))

(declare-fun bs!1839244 () Bool)

(assert (= bs!1839244 (and d!2160689 b!6888623)))

(assert (=> bs!1839244 (not (= lambda!390438 lambda!390428))))

(declare-fun bs!1839245 () Bool)

(assert (= bs!1839245 (and d!2160689 b!6888854)))

(assert (=> bs!1839245 (not (= lambda!390438 lambda!390432))))

(declare-fun bs!1839246 () Bool)

(assert (= bs!1839246 (and d!2160689 b!6888834)))

(assert (=> bs!1839246 (not (= lambda!390438 lambda!390430))))

(assert (=> bs!1839236 (not (= lambda!390438 lambda!390418))))

(assert (=> bs!1839238 (= lambda!390438 lambda!390415)))

(assert (=> d!2160689 true))

(assert (=> d!2160689 true))

(assert (=> d!2160689 true))

(assert (=> d!2160689 (= (isDefined!13291 (findConcatSeparation!3002 r1!6342 r2!6280 Nil!66436 (_1!36979 lt!2462393) (_1!36979 lt!2462393))) (Exists!3815 lambda!390438))))

(declare-fun lt!2462443 () Unit!160326)

(declare-fun choose!51299 (Regex!16803 Regex!16803 List!66560) Unit!160326)

(assert (=> d!2160689 (= lt!2462443 (choose!51299 r1!6342 r2!6280 (_1!36979 lt!2462393)))))

(assert (=> d!2160689 (validRegex!8511 r1!6342)))

(assert (=> d!2160689 (= (lemmaFindConcatSeparationEquivalentToExists!2766 r1!6342 r2!6280 (_1!36979 lt!2462393)) lt!2462443)))

(declare-fun bs!1839247 () Bool)

(assert (= bs!1839247 d!2160689))

(assert (=> bs!1839247 m!7611030))

(assert (=> bs!1839247 m!7611044))

(declare-fun m!7611296 () Bool)

(assert (=> bs!1839247 m!7611296))

(declare-fun m!7611298 () Bool)

(assert (=> bs!1839247 m!7611298))

(declare-fun m!7611300 () Bool)

(assert (=> bs!1839247 m!7611300))

(assert (=> bs!1839247 m!7611044))

(assert (=> b!6888548 d!2160689))

(declare-fun b!6888942 () Bool)

(declare-fun e!4150323 () Bool)

(assert (=> b!6888942 (= e!4150323 (matchR!8948 r2!6280 (_1!36979 lt!2462393)))))

(declare-fun d!2160695 () Bool)

(declare-fun e!4150319 () Bool)

(assert (=> d!2160695 e!4150319))

(declare-fun res!2808715 () Bool)

(assert (=> d!2160695 (=> res!2808715 e!4150319)))

(declare-fun e!4150320 () Bool)

(assert (=> d!2160695 (= res!2808715 e!4150320)))

(declare-fun res!2808717 () Bool)

(assert (=> d!2160695 (=> (not res!2808717) (not e!4150320))))

(declare-fun lt!2462457 () Option!16588)

(assert (=> d!2160695 (= res!2808717 (isDefined!13291 lt!2462457))))

(declare-fun e!4150321 () Option!16588)

(assert (=> d!2160695 (= lt!2462457 e!4150321)))

(declare-fun c!1280896 () Bool)

(assert (=> d!2160695 (= c!1280896 e!4150323)))

(declare-fun res!2808716 () Bool)

(assert (=> d!2160695 (=> (not res!2808716) (not e!4150323))))

(assert (=> d!2160695 (= res!2808716 (matchR!8948 r1!6342 Nil!66436))))

(assert (=> d!2160695 (validRegex!8511 r1!6342)))

(assert (=> d!2160695 (= (findConcatSeparation!3002 r1!6342 r2!6280 Nil!66436 (_1!36979 lt!2462393) (_1!36979 lt!2462393)) lt!2462457)))

(declare-fun b!6888943 () Bool)

(declare-fun e!4150322 () Option!16588)

(assert (=> b!6888943 (= e!4150322 None!16587)))

(declare-fun b!6888944 () Bool)

(declare-fun res!2808713 () Bool)

(assert (=> b!6888944 (=> (not res!2808713) (not e!4150320))))

(assert (=> b!6888944 (= res!2808713 (matchR!8948 r2!6280 (_2!36979 (get!23167 lt!2462457))))))

(declare-fun b!6888945 () Bool)

(assert (=> b!6888945 (= e!4150319 (not (isDefined!13291 lt!2462457)))))

(declare-fun b!6888946 () Bool)

(assert (=> b!6888946 (= e!4150321 (Some!16587 (tuple2!67353 Nil!66436 (_1!36979 lt!2462393))))))

(declare-fun b!6888947 () Bool)

(declare-fun lt!2462458 () Unit!160326)

(declare-fun lt!2462456 () Unit!160326)

(assert (=> b!6888947 (= lt!2462458 lt!2462456)))

(assert (=> b!6888947 (= (++!14882 (++!14882 Nil!66436 (Cons!66436 (h!72884 (_1!36979 lt!2462393)) Nil!66436)) (t!380303 (_1!36979 lt!2462393))) (_1!36979 lt!2462393))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2777 (List!66560 C!33876 List!66560 List!66560) Unit!160326)

(assert (=> b!6888947 (= lt!2462456 (lemmaMoveElementToOtherListKeepsConcatEq!2777 Nil!66436 (h!72884 (_1!36979 lt!2462393)) (t!380303 (_1!36979 lt!2462393)) (_1!36979 lt!2462393)))))

(assert (=> b!6888947 (= e!4150322 (findConcatSeparation!3002 r1!6342 r2!6280 (++!14882 Nil!66436 (Cons!66436 (h!72884 (_1!36979 lt!2462393)) Nil!66436)) (t!380303 (_1!36979 lt!2462393)) (_1!36979 lt!2462393)))))

(declare-fun b!6888948 () Bool)

(declare-fun res!2808714 () Bool)

(assert (=> b!6888948 (=> (not res!2808714) (not e!4150320))))

(assert (=> b!6888948 (= res!2808714 (matchR!8948 r1!6342 (_1!36979 (get!23167 lt!2462457))))))

(declare-fun b!6888949 () Bool)

(assert (=> b!6888949 (= e!4150320 (= (++!14882 (_1!36979 (get!23167 lt!2462457)) (_2!36979 (get!23167 lt!2462457))) (_1!36979 lt!2462393)))))

(declare-fun b!6888950 () Bool)

(assert (=> b!6888950 (= e!4150321 e!4150322)))

(declare-fun c!1280895 () Bool)

(assert (=> b!6888950 (= c!1280895 ((_ is Nil!66436) (_1!36979 lt!2462393)))))

(assert (= (and d!2160695 res!2808716) b!6888942))

(assert (= (and d!2160695 c!1280896) b!6888946))

(assert (= (and d!2160695 (not c!1280896)) b!6888950))

(assert (= (and b!6888950 c!1280895) b!6888943))

(assert (= (and b!6888950 (not c!1280895)) b!6888947))

(assert (= (and d!2160695 res!2808717) b!6888948))

(assert (= (and b!6888948 res!2808714) b!6888944))

(assert (= (and b!6888944 res!2808713) b!6888949))

(assert (= (and d!2160695 (not res!2808715)) b!6888945))

(declare-fun m!7611320 () Bool)

(assert (=> b!6888942 m!7611320))

(declare-fun m!7611322 () Bool)

(assert (=> b!6888947 m!7611322))

(assert (=> b!6888947 m!7611322))

(declare-fun m!7611324 () Bool)

(assert (=> b!6888947 m!7611324))

(declare-fun m!7611326 () Bool)

(assert (=> b!6888947 m!7611326))

(assert (=> b!6888947 m!7611322))

(declare-fun m!7611328 () Bool)

(assert (=> b!6888947 m!7611328))

(declare-fun m!7611330 () Bool)

(assert (=> b!6888948 m!7611330))

(declare-fun m!7611332 () Bool)

(assert (=> b!6888948 m!7611332))

(assert (=> b!6888944 m!7611330))

(declare-fun m!7611334 () Bool)

(assert (=> b!6888944 m!7611334))

(declare-fun m!7611336 () Bool)

(assert (=> d!2160695 m!7611336))

(declare-fun m!7611338 () Bool)

(assert (=> d!2160695 m!7611338))

(assert (=> d!2160695 m!7611030))

(assert (=> b!6888949 m!7611330))

(declare-fun m!7611340 () Bool)

(assert (=> b!6888949 m!7611340))

(assert (=> b!6888945 m!7611336))

(assert (=> b!6888548 d!2160695))

(declare-fun d!2160701 () Bool)

(assert (=> d!2160701 (= (get!23167 lt!2462376) (v!52859 lt!2462376))))

(assert (=> b!6888548 d!2160701))

(declare-fun bs!1839263 () Bool)

(declare-fun d!2160703 () Bool)

(assert (= bs!1839263 (and d!2160703 b!6888611)))

(declare-fun lambda!390449 () Int)

(assert (=> bs!1839263 (not (= lambda!390449 lambda!390425))))

(declare-fun bs!1839264 () Bool)

(assert (= bs!1839264 (and d!2160703 b!6888564)))

(assert (=> bs!1839264 (not (= lambda!390449 lambda!390414))))

(declare-fun bs!1839265 () Bool)

(assert (= bs!1839265 (and d!2160703 b!6888552)))

(assert (=> bs!1839265 (= (and (= (_1!36979 lt!2462393) lt!2462383) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!390449 lambda!390417))))

(declare-fun bs!1839266 () Bool)

(assert (= bs!1839266 (and d!2160703 b!6888833)))

(assert (=> bs!1839266 (not (= lambda!390449 lambda!390429))))

(declare-fun bs!1839267 () Bool)

(assert (= bs!1839267 (and d!2160703 b!6888548)))

(assert (=> bs!1839267 (not (= lambda!390449 lambda!390416))))

(declare-fun bs!1839268 () Bool)

(assert (= bs!1839268 (and d!2160703 b!6888612)))

(assert (=> bs!1839268 (not (= lambda!390449 lambda!390426))))

(declare-fun bs!1839269 () Bool)

(assert (= bs!1839269 (and d!2160703 b!6888569)))

(assert (=> bs!1839269 (= (and (= (_1!36979 lt!2462393) s!14361) (= r2!6280 lt!2462386)) (= lambda!390449 lambda!390419))))

(assert (=> bs!1839264 (= (and (= (_1!36979 lt!2462393) s!14361) (= r1!6342 lt!2462381) (= r2!6280 r3!135)) (= lambda!390449 lambda!390413))))

(declare-fun bs!1839271 () Bool)

(assert (= bs!1839271 (and d!2160703 b!6888853)))

(assert (=> bs!1839271 (not (= lambda!390449 lambda!390431))))

(declare-fun bs!1839272 () Bool)

(assert (= bs!1839272 (and d!2160703 b!6888547)))

(assert (=> bs!1839272 (not (= lambda!390449 lambda!390420))))

(declare-fun bs!1839273 () Bool)

(assert (= bs!1839273 (and d!2160703 b!6888623)))

(assert (=> bs!1839273 (not (= lambda!390449 lambda!390428))))

(declare-fun bs!1839274 () Bool)

(assert (= bs!1839274 (and d!2160703 b!6888854)))

(assert (=> bs!1839274 (not (= lambda!390449 lambda!390432))))

(declare-fun bs!1839275 () Bool)

(assert (= bs!1839275 (and d!2160703 b!6888834)))

(assert (=> bs!1839275 (not (= lambda!390449 lambda!390430))))

(assert (=> bs!1839265 (not (= lambda!390449 lambda!390418))))

(assert (=> bs!1839267 (= lambda!390449 lambda!390415)))

(declare-fun bs!1839276 () Bool)

(assert (= bs!1839276 (and d!2160703 b!6888622)))

(assert (=> bs!1839276 (not (= lambda!390449 lambda!390427))))

(declare-fun bs!1839278 () Bool)

(assert (= bs!1839278 (and d!2160703 d!2160689)))

(assert (=> bs!1839278 (= lambda!390449 lambda!390438)))

(assert (=> d!2160703 true))

(assert (=> d!2160703 true))

(assert (=> d!2160703 true))

(declare-fun bs!1839284 () Bool)

(assert (= bs!1839284 d!2160703))

(declare-fun lambda!390451 () Int)

(assert (=> bs!1839284 (not (= lambda!390451 lambda!390449))))

(assert (=> bs!1839263 (not (= lambda!390451 lambda!390425))))

(assert (=> bs!1839264 (= (and (= (_1!36979 lt!2462393) s!14361) (= r1!6342 lt!2462381) (= r2!6280 r3!135)) (= lambda!390451 lambda!390414))))

(assert (=> bs!1839265 (not (= lambda!390451 lambda!390417))))

(assert (=> bs!1839266 (not (= lambda!390451 lambda!390429))))

(assert (=> bs!1839267 (= lambda!390451 lambda!390416)))

(assert (=> bs!1839268 (= (and (= (_1!36979 lt!2462393) (_2!36979 lt!2462407)) (= r1!6342 (regOne!34118 r2!6280)) (= r2!6280 (regTwo!34118 r2!6280))) (= lambda!390451 lambda!390426))))

(assert (=> bs!1839269 (not (= lambda!390451 lambda!390419))))

(assert (=> bs!1839264 (not (= lambda!390451 lambda!390413))))

(assert (=> bs!1839271 (not (= lambda!390451 lambda!390431))))

(assert (=> bs!1839272 (= (and (= (_1!36979 lt!2462393) s!14361) (= r2!6280 lt!2462386)) (= lambda!390451 lambda!390420))))

(assert (=> bs!1839273 (= (and (= (_1!36979 lt!2462393) (_1!36979 lt!2462407)) (= r1!6342 (regOne!34118 r1!6342)) (= r2!6280 (regTwo!34118 r1!6342))) (= lambda!390451 lambda!390428))))

(assert (=> bs!1839274 (= (and (= (_1!36979 lt!2462393) s!14361) (= r1!6342 (regOne!34118 lt!2462403)) (= r2!6280 (regTwo!34118 lt!2462403))) (= lambda!390451 lambda!390432))))

(assert (=> bs!1839275 (= (and (= (_1!36979 lt!2462393) s!14361) (= r1!6342 (regOne!34118 lt!2462402)) (= r2!6280 (regTwo!34118 lt!2462402))) (= lambda!390451 lambda!390430))))

(assert (=> bs!1839265 (= (and (= (_1!36979 lt!2462393) lt!2462383) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!390451 lambda!390418))))

(assert (=> bs!1839267 (not (= lambda!390451 lambda!390415))))

(assert (=> bs!1839276 (not (= lambda!390451 lambda!390427))))

(assert (=> bs!1839278 (not (= lambda!390451 lambda!390438))))

(assert (=> d!2160703 true))

(assert (=> d!2160703 true))

(assert (=> d!2160703 true))

(assert (=> d!2160703 (= (Exists!3815 lambda!390449) (Exists!3815 lambda!390451))))

(declare-fun lt!2462464 () Unit!160326)

(declare-fun choose!51300 (Regex!16803 Regex!16803 List!66560) Unit!160326)

(assert (=> d!2160703 (= lt!2462464 (choose!51300 r1!6342 r2!6280 (_1!36979 lt!2462393)))))

(assert (=> d!2160703 (validRegex!8511 r1!6342)))

(assert (=> d!2160703 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2294 r1!6342 r2!6280 (_1!36979 lt!2462393)) lt!2462464)))

(declare-fun m!7611368 () Bool)

(assert (=> bs!1839284 m!7611368))

(declare-fun m!7611370 () Bool)

(assert (=> bs!1839284 m!7611370))

(declare-fun m!7611372 () Bool)

(assert (=> bs!1839284 m!7611372))

(assert (=> bs!1839284 m!7611030))

(assert (=> b!6888548 d!2160703))

(declare-fun b!6888996 () Bool)

(declare-fun e!4150351 () Bool)

(declare-fun lt!2462467 () Bool)

(assert (=> b!6888996 (= e!4150351 (not lt!2462467))))

(declare-fun b!6888997 () Bool)

(declare-fun res!2808743 () Bool)

(declare-fun e!4150349 () Bool)

(assert (=> b!6888997 (=> res!2808743 e!4150349)))

(assert (=> b!6888997 (= res!2808743 (not ((_ is ElementMatch!16803) r1!6342)))))

(assert (=> b!6888997 (= e!4150351 e!4150349)))

(declare-fun b!6888998 () Bool)

(declare-fun e!4150354 () Bool)

(assert (=> b!6888998 (= e!4150354 (not (= (head!13818 (_1!36979 lt!2462407)) (c!1280807 r1!6342))))))

(declare-fun b!6888999 () Bool)

(declare-fun e!4150352 () Bool)

(assert (=> b!6888999 (= e!4150352 (matchR!8948 (derivativeStep!5365 r1!6342 (head!13818 (_1!36979 lt!2462407))) (tail!12870 (_1!36979 lt!2462407))))))

(declare-fun b!6889000 () Bool)

(declare-fun res!2808744 () Bool)

(declare-fun e!4150350 () Bool)

(assert (=> b!6889000 (=> (not res!2808744) (not e!4150350))))

(declare-fun call!626868 () Bool)

(assert (=> b!6889000 (= res!2808744 (not call!626868))))

(declare-fun b!6889001 () Bool)

(assert (=> b!6889001 (= e!4150350 (= (head!13818 (_1!36979 lt!2462407)) (c!1280807 r1!6342)))))

(declare-fun bm!626863 () Bool)

(assert (=> bm!626863 (= call!626868 (isEmpty!38688 (_1!36979 lt!2462407)))))

(declare-fun b!6889002 () Bool)

(declare-fun res!2808740 () Bool)

(assert (=> b!6889002 (=> res!2808740 e!4150354)))

(assert (=> b!6889002 (= res!2808740 (not (isEmpty!38688 (tail!12870 (_1!36979 lt!2462407)))))))

(declare-fun b!6889003 () Bool)

(declare-fun e!4150353 () Bool)

(assert (=> b!6889003 (= e!4150353 e!4150354)))

(declare-fun res!2808746 () Bool)

(assert (=> b!6889003 (=> res!2808746 e!4150354)))

(assert (=> b!6889003 (= res!2808746 call!626868)))

(declare-fun d!2160713 () Bool)

(declare-fun e!4150355 () Bool)

(assert (=> d!2160713 e!4150355))

(declare-fun c!1280908 () Bool)

(assert (=> d!2160713 (= c!1280908 ((_ is EmptyExpr!16803) r1!6342))))

(assert (=> d!2160713 (= lt!2462467 e!4150352)))

(declare-fun c!1280910 () Bool)

(assert (=> d!2160713 (= c!1280910 (isEmpty!38688 (_1!36979 lt!2462407)))))

(assert (=> d!2160713 (validRegex!8511 r1!6342)))

(assert (=> d!2160713 (= (matchR!8948 r1!6342 (_1!36979 lt!2462407)) lt!2462467)))

(declare-fun b!6888995 () Bool)

(assert (=> b!6888995 (= e!4150349 e!4150353)))

(declare-fun res!2808742 () Bool)

(assert (=> b!6888995 (=> (not res!2808742) (not e!4150353))))

(assert (=> b!6888995 (= res!2808742 (not lt!2462467))))

(declare-fun b!6889004 () Bool)

(declare-fun res!2808747 () Bool)

(assert (=> b!6889004 (=> (not res!2808747) (not e!4150350))))

(assert (=> b!6889004 (= res!2808747 (isEmpty!38688 (tail!12870 (_1!36979 lt!2462407))))))

(declare-fun b!6889005 () Bool)

(declare-fun res!2808745 () Bool)

(assert (=> b!6889005 (=> res!2808745 e!4150349)))

(assert (=> b!6889005 (= res!2808745 e!4150350)))

(declare-fun res!2808741 () Bool)

(assert (=> b!6889005 (=> (not res!2808741) (not e!4150350))))

(assert (=> b!6889005 (= res!2808741 lt!2462467)))

(declare-fun b!6889006 () Bool)

(assert (=> b!6889006 (= e!4150352 (nullable!6686 r1!6342))))

(declare-fun b!6889007 () Bool)

(assert (=> b!6889007 (= e!4150355 e!4150351)))

(declare-fun c!1280909 () Bool)

(assert (=> b!6889007 (= c!1280909 ((_ is EmptyLang!16803) r1!6342))))

(declare-fun b!6889008 () Bool)

(assert (=> b!6889008 (= e!4150355 (= lt!2462467 call!626868))))

(assert (= (and d!2160713 c!1280910) b!6889006))

(assert (= (and d!2160713 (not c!1280910)) b!6888999))

(assert (= (and d!2160713 c!1280908) b!6889008))

(assert (= (and d!2160713 (not c!1280908)) b!6889007))

(assert (= (and b!6889007 c!1280909) b!6888996))

(assert (= (and b!6889007 (not c!1280909)) b!6888997))

(assert (= (and b!6888997 (not res!2808743)) b!6889005))

(assert (= (and b!6889005 res!2808741) b!6889000))

(assert (= (and b!6889000 res!2808744) b!6889004))

(assert (= (and b!6889004 res!2808747) b!6889001))

(assert (= (and b!6889005 (not res!2808745)) b!6888995))

(assert (= (and b!6888995 res!2808742) b!6889003))

(assert (= (and b!6889003 (not res!2808746)) b!6889002))

(assert (= (and b!6889002 (not res!2808740)) b!6888998))

(assert (= (or b!6889008 b!6889000 b!6889003) bm!626863))

(declare-fun m!7611380 () Bool)

(assert (=> b!6888998 m!7611380))

(declare-fun m!7611382 () Bool)

(assert (=> b!6889002 m!7611382))

(assert (=> b!6889002 m!7611382))

(declare-fun m!7611384 () Bool)

(assert (=> b!6889002 m!7611384))

(assert (=> bm!626863 m!7611146))

(declare-fun m!7611386 () Bool)

(assert (=> b!6889006 m!7611386))

(assert (=> b!6889004 m!7611382))

(assert (=> b!6889004 m!7611382))

(assert (=> b!6889004 m!7611384))

(assert (=> d!2160713 m!7611146))

(assert (=> d!2160713 m!7611030))

(assert (=> b!6888999 m!7611380))

(assert (=> b!6888999 m!7611380))

(declare-fun m!7611388 () Bool)

(assert (=> b!6888999 m!7611388))

(assert (=> b!6888999 m!7611382))

(assert (=> b!6888999 m!7611388))

(assert (=> b!6888999 m!7611382))

(declare-fun m!7611390 () Bool)

(assert (=> b!6888999 m!7611390))

(assert (=> b!6889001 m!7611380))

(assert (=> b!6888548 d!2160713))

(declare-fun d!2160717 () Bool)

(assert (=> d!2160717 (= (Exists!3815 lambda!390416) (choose!51298 lambda!390416))))

(declare-fun bs!1839296 () Bool)

(assert (= bs!1839296 d!2160717))

(declare-fun m!7611392 () Bool)

(assert (=> bs!1839296 m!7611392))

(assert (=> b!6888548 d!2160717))

(declare-fun d!2160719 () Bool)

(declare-fun isEmpty!38691 (Option!16588) Bool)

(assert (=> d!2160719 (= (isDefined!13291 lt!2462376) (not (isEmpty!38691 lt!2462376)))))

(declare-fun bs!1839297 () Bool)

(assert (= bs!1839297 d!2160719))

(declare-fun m!7611400 () Bool)

(assert (=> bs!1839297 m!7611400))

(assert (=> b!6888548 d!2160719))

(declare-fun b!6889037 () Bool)

(declare-fun res!2808766 () Bool)

(declare-fun e!4150371 () Bool)

(assert (=> b!6889037 (=> res!2808766 e!4150371)))

(assert (=> b!6889037 (= res!2808766 (not ((_ is Concat!25648) r2!6280)))))

(declare-fun e!4150373 () Bool)

(assert (=> b!6889037 (= e!4150373 e!4150371)))

(declare-fun call!626873 () Bool)

(declare-fun c!1280917 () Bool)

(declare-fun c!1280918 () Bool)

(declare-fun bm!626866 () Bool)

(assert (=> bm!626866 (= call!626873 (validRegex!8511 (ite c!1280918 (reg!17132 r2!6280) (ite c!1280917 (regOne!34119 r2!6280) (regTwo!34118 r2!6280)))))))

(declare-fun bm!626867 () Bool)

(declare-fun call!626872 () Bool)

(assert (=> bm!626867 (= call!626872 (validRegex!8511 (ite c!1280917 (regTwo!34119 r2!6280) (regOne!34118 r2!6280))))))

(declare-fun b!6889038 () Bool)

(declare-fun e!4150375 () Bool)

(assert (=> b!6889038 (= e!4150375 e!4150373)))

(assert (=> b!6889038 (= c!1280917 ((_ is Union!16803) r2!6280))))

(declare-fun b!6889039 () Bool)

(declare-fun e!4150374 () Bool)

(assert (=> b!6889039 (= e!4150374 call!626873)))

(declare-fun b!6889040 () Bool)

(declare-fun e!4150372 () Bool)

(assert (=> b!6889040 (= e!4150372 call!626872)))

(declare-fun b!6889041 () Bool)

(assert (=> b!6889041 (= e!4150375 e!4150374)))

(declare-fun res!2808765 () Bool)

(assert (=> b!6889041 (= res!2808765 (not (nullable!6686 (reg!17132 r2!6280))))))

(assert (=> b!6889041 (=> (not res!2808765) (not e!4150374))))

(declare-fun bm!626868 () Bool)

(declare-fun call!626871 () Bool)

(assert (=> bm!626868 (= call!626871 call!626873)))

(declare-fun b!6889043 () Bool)

(declare-fun e!4150376 () Bool)

(assert (=> b!6889043 (= e!4150376 call!626871)))

(declare-fun b!6889044 () Bool)

(assert (=> b!6889044 (= e!4150371 e!4150376)))

(declare-fun res!2808767 () Bool)

(assert (=> b!6889044 (=> (not res!2808767) (not e!4150376))))

(assert (=> b!6889044 (= res!2808767 call!626872)))

(declare-fun b!6889045 () Bool)

(declare-fun res!2808764 () Bool)

(assert (=> b!6889045 (=> (not res!2808764) (not e!4150372))))

(assert (=> b!6889045 (= res!2808764 call!626871)))

(assert (=> b!6889045 (= e!4150373 e!4150372)))

(declare-fun b!6889042 () Bool)

(declare-fun e!4150370 () Bool)

(assert (=> b!6889042 (= e!4150370 e!4150375)))

(assert (=> b!6889042 (= c!1280918 ((_ is Star!16803) r2!6280))))

(declare-fun d!2160723 () Bool)

(declare-fun res!2808768 () Bool)

(assert (=> d!2160723 (=> res!2808768 e!4150370)))

(assert (=> d!2160723 (= res!2808768 ((_ is ElementMatch!16803) r2!6280))))

(assert (=> d!2160723 (= (validRegex!8511 r2!6280) e!4150370)))

(assert (= (and d!2160723 (not res!2808768)) b!6889042))

(assert (= (and b!6889042 c!1280918) b!6889041))

(assert (= (and b!6889042 (not c!1280918)) b!6889038))

(assert (= (and b!6889041 res!2808765) b!6889039))

(assert (= (and b!6889038 c!1280917) b!6889045))

(assert (= (and b!6889038 (not c!1280917)) b!6889037))

(assert (= (and b!6889045 res!2808764) b!6889040))

(assert (= (and b!6889037 (not res!2808766)) b!6889044))

(assert (= (and b!6889044 res!2808767) b!6889043))

(assert (= (or b!6889045 b!6889043) bm!626868))

(assert (= (or b!6889040 b!6889044) bm!626867))

(assert (= (or b!6889039 bm!626868) bm!626866))

(declare-fun m!7611406 () Bool)

(assert (=> bm!626866 m!7611406))

(declare-fun m!7611412 () Bool)

(assert (=> bm!626867 m!7611412))

(declare-fun m!7611414 () Bool)

(assert (=> b!6889041 m!7611414))

(assert (=> b!6888559 d!2160723))

(declare-fun d!2160725 () Bool)

(assert (=> d!2160725 (isDefined!13291 (findConcatSeparation!3002 r1!6342 lt!2462386 Nil!66436 s!14361 s!14361))))

(declare-fun lt!2462476 () Unit!160326)

(declare-fun choose!51302 (Regex!16803 Regex!16803 List!66560 List!66560 List!66560 List!66560 List!66560) Unit!160326)

(assert (=> d!2160725 (= lt!2462476 (choose!51302 r1!6342 lt!2462386 (_1!36979 lt!2462407) lt!2462383 s!14361 Nil!66436 s!14361))))

(assert (=> d!2160725 (validRegex!8511 r1!6342)))

(assert (=> d!2160725 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!50 r1!6342 lt!2462386 (_1!36979 lt!2462407) lt!2462383 s!14361 Nil!66436 s!14361) lt!2462476)))

(declare-fun bs!1839308 () Bool)

(assert (= bs!1839308 d!2160725))

(assert (=> bs!1839308 m!7611090))

(assert (=> bs!1839308 m!7611090))

(assert (=> bs!1839308 m!7611096))

(declare-fun m!7611442 () Bool)

(assert (=> bs!1839308 m!7611442))

(assert (=> bs!1839308 m!7611030))

(assert (=> b!6888569 d!2160725))

(declare-fun bs!1839311 () Bool)

(declare-fun d!2160731 () Bool)

(assert (= bs!1839311 (and d!2160731 d!2160703)))

(declare-fun lambda!390454 () Int)

(assert (=> bs!1839311 (= (and (= s!14361 (_1!36979 lt!2462393)) (= lt!2462386 r2!6280)) (= lambda!390454 lambda!390449))))

(declare-fun bs!1839312 () Bool)

(assert (= bs!1839312 (and d!2160731 b!6888611)))

(assert (=> bs!1839312 (not (= lambda!390454 lambda!390425))))

(assert (=> bs!1839311 (not (= lambda!390454 lambda!390451))))

(declare-fun bs!1839313 () Bool)

(assert (= bs!1839313 (and d!2160731 b!6888564)))

(assert (=> bs!1839313 (not (= lambda!390454 lambda!390414))))

(declare-fun bs!1839314 () Bool)

(assert (= bs!1839314 (and d!2160731 b!6888552)))

(assert (=> bs!1839314 (= (and (= s!14361 lt!2462383) (= r1!6342 r2!6280) (= lt!2462386 r3!135)) (= lambda!390454 lambda!390417))))

(declare-fun bs!1839315 () Bool)

(assert (= bs!1839315 (and d!2160731 b!6888833)))

(assert (=> bs!1839315 (not (= lambda!390454 lambda!390429))))

(declare-fun bs!1839316 () Bool)

(assert (= bs!1839316 (and d!2160731 b!6888548)))

(assert (=> bs!1839316 (not (= lambda!390454 lambda!390416))))

(declare-fun bs!1839317 () Bool)

(assert (= bs!1839317 (and d!2160731 b!6888612)))

(assert (=> bs!1839317 (not (= lambda!390454 lambda!390426))))

(declare-fun bs!1839318 () Bool)

(assert (= bs!1839318 (and d!2160731 b!6888569)))

(assert (=> bs!1839318 (= lambda!390454 lambda!390419)))

(assert (=> bs!1839313 (= (and (= r1!6342 lt!2462381) (= lt!2462386 r3!135)) (= lambda!390454 lambda!390413))))

(declare-fun bs!1839319 () Bool)

(assert (= bs!1839319 (and d!2160731 b!6888853)))

(assert (=> bs!1839319 (not (= lambda!390454 lambda!390431))))

(declare-fun bs!1839320 () Bool)

(assert (= bs!1839320 (and d!2160731 b!6888547)))

(assert (=> bs!1839320 (not (= lambda!390454 lambda!390420))))

(declare-fun bs!1839321 () Bool)

(assert (= bs!1839321 (and d!2160731 b!6888623)))

(assert (=> bs!1839321 (not (= lambda!390454 lambda!390428))))

(declare-fun bs!1839322 () Bool)

(assert (= bs!1839322 (and d!2160731 b!6888854)))

(assert (=> bs!1839322 (not (= lambda!390454 lambda!390432))))

(declare-fun bs!1839323 () Bool)

(assert (= bs!1839323 (and d!2160731 b!6888834)))

(assert (=> bs!1839323 (not (= lambda!390454 lambda!390430))))

(assert (=> bs!1839314 (not (= lambda!390454 lambda!390418))))

(assert (=> bs!1839316 (= (and (= s!14361 (_1!36979 lt!2462393)) (= lt!2462386 r2!6280)) (= lambda!390454 lambda!390415))))

(declare-fun bs!1839324 () Bool)

(assert (= bs!1839324 (and d!2160731 b!6888622)))

(assert (=> bs!1839324 (not (= lambda!390454 lambda!390427))))

(declare-fun bs!1839325 () Bool)

(assert (= bs!1839325 (and d!2160731 d!2160689)))

(assert (=> bs!1839325 (= (and (= s!14361 (_1!36979 lt!2462393)) (= lt!2462386 r2!6280)) (= lambda!390454 lambda!390438))))

(assert (=> d!2160731 true))

(assert (=> d!2160731 true))

(assert (=> d!2160731 true))

(assert (=> d!2160731 (= (isDefined!13291 (findConcatSeparation!3002 r1!6342 lt!2462386 Nil!66436 s!14361 s!14361)) (Exists!3815 lambda!390454))))

(declare-fun lt!2462477 () Unit!160326)

(assert (=> d!2160731 (= lt!2462477 (choose!51299 r1!6342 lt!2462386 s!14361))))

(assert (=> d!2160731 (validRegex!8511 r1!6342)))

(assert (=> d!2160731 (= (lemmaFindConcatSeparationEquivalentToExists!2766 r1!6342 lt!2462386 s!14361) lt!2462477)))

(declare-fun bs!1839326 () Bool)

(assert (= bs!1839326 d!2160731))

(assert (=> bs!1839326 m!7611030))

(assert (=> bs!1839326 m!7611090))

(assert (=> bs!1839326 m!7611096))

(declare-fun m!7611452 () Bool)

(assert (=> bs!1839326 m!7611452))

(declare-fun m!7611454 () Bool)

(assert (=> bs!1839326 m!7611454))

(assert (=> bs!1839326 m!7611090))

(assert (=> b!6888569 d!2160731))

(declare-fun d!2160737 () Bool)

(assert (=> d!2160737 (= (Exists!3815 lambda!390419) (choose!51298 lambda!390419))))

(declare-fun bs!1839327 () Bool)

(assert (= bs!1839327 d!2160737))

(declare-fun m!7611456 () Bool)

(assert (=> bs!1839327 m!7611456))

(assert (=> b!6888569 d!2160737))

(declare-fun d!2160739 () Bool)

(assert (=> d!2160739 (= (isDefined!13291 (findConcatSeparation!3002 r1!6342 lt!2462386 Nil!66436 s!14361 s!14361)) (not (isEmpty!38691 (findConcatSeparation!3002 r1!6342 lt!2462386 Nil!66436 s!14361 s!14361))))))

(declare-fun bs!1839328 () Bool)

(assert (= bs!1839328 d!2160739))

(assert (=> bs!1839328 m!7611090))

(declare-fun m!7611458 () Bool)

(assert (=> bs!1839328 m!7611458))

(assert (=> b!6888569 d!2160739))

(declare-fun b!6889055 () Bool)

(declare-fun res!2808776 () Bool)

(declare-fun e!4150383 () Bool)

(assert (=> b!6889055 (=> res!2808776 e!4150383)))

(assert (=> b!6889055 (= res!2808776 (not ((_ is Concat!25648) lt!2462386)))))

(declare-fun e!4150385 () Bool)

(assert (=> b!6889055 (= e!4150385 e!4150383)))

(declare-fun c!1280921 () Bool)

(declare-fun call!626876 () Bool)

(declare-fun bm!626869 () Bool)

(declare-fun c!1280922 () Bool)

(assert (=> bm!626869 (= call!626876 (validRegex!8511 (ite c!1280922 (reg!17132 lt!2462386) (ite c!1280921 (regOne!34119 lt!2462386) (regTwo!34118 lt!2462386)))))))

(declare-fun bm!626870 () Bool)

(declare-fun call!626875 () Bool)

(assert (=> bm!626870 (= call!626875 (validRegex!8511 (ite c!1280921 (regTwo!34119 lt!2462386) (regOne!34118 lt!2462386))))))

(declare-fun b!6889056 () Bool)

(declare-fun e!4150387 () Bool)

(assert (=> b!6889056 (= e!4150387 e!4150385)))

(assert (=> b!6889056 (= c!1280921 ((_ is Union!16803) lt!2462386))))

(declare-fun b!6889057 () Bool)

(declare-fun e!4150386 () Bool)

(assert (=> b!6889057 (= e!4150386 call!626876)))

(declare-fun b!6889058 () Bool)

(declare-fun e!4150384 () Bool)

(assert (=> b!6889058 (= e!4150384 call!626875)))

(declare-fun b!6889059 () Bool)

(assert (=> b!6889059 (= e!4150387 e!4150386)))

(declare-fun res!2808775 () Bool)

(assert (=> b!6889059 (= res!2808775 (not (nullable!6686 (reg!17132 lt!2462386))))))

(assert (=> b!6889059 (=> (not res!2808775) (not e!4150386))))

(declare-fun bm!626871 () Bool)

(declare-fun call!626874 () Bool)

(assert (=> bm!626871 (= call!626874 call!626876)))

(declare-fun b!6889061 () Bool)

(declare-fun e!4150388 () Bool)

(assert (=> b!6889061 (= e!4150388 call!626874)))

(declare-fun b!6889062 () Bool)

(assert (=> b!6889062 (= e!4150383 e!4150388)))

(declare-fun res!2808777 () Bool)

(assert (=> b!6889062 (=> (not res!2808777) (not e!4150388))))

(assert (=> b!6889062 (= res!2808777 call!626875)))

(declare-fun b!6889063 () Bool)

(declare-fun res!2808774 () Bool)

(assert (=> b!6889063 (=> (not res!2808774) (not e!4150384))))

(assert (=> b!6889063 (= res!2808774 call!626874)))

(assert (=> b!6889063 (= e!4150385 e!4150384)))

(declare-fun b!6889060 () Bool)

(declare-fun e!4150382 () Bool)

(assert (=> b!6889060 (= e!4150382 e!4150387)))

(assert (=> b!6889060 (= c!1280922 ((_ is Star!16803) lt!2462386))))

(declare-fun d!2160741 () Bool)

(declare-fun res!2808778 () Bool)

(assert (=> d!2160741 (=> res!2808778 e!4150382)))

(assert (=> d!2160741 (= res!2808778 ((_ is ElementMatch!16803) lt!2462386))))

(assert (=> d!2160741 (= (validRegex!8511 lt!2462386) e!4150382)))

(assert (= (and d!2160741 (not res!2808778)) b!6889060))

(assert (= (and b!6889060 c!1280922) b!6889059))

(assert (= (and b!6889060 (not c!1280922)) b!6889056))

(assert (= (and b!6889059 res!2808775) b!6889057))

(assert (= (and b!6889056 c!1280921) b!6889063))

(assert (= (and b!6889056 (not c!1280921)) b!6889055))

(assert (= (and b!6889063 res!2808774) b!6889058))

(assert (= (and b!6889055 (not res!2808776)) b!6889062))

(assert (= (and b!6889062 res!2808777) b!6889061))

(assert (= (or b!6889063 b!6889061) bm!626871))

(assert (= (or b!6889058 b!6889062) bm!626870))

(assert (= (or b!6889057 bm!626871) bm!626869))

(declare-fun m!7611460 () Bool)

(assert (=> bm!626869 m!7611460))

(declare-fun m!7611462 () Bool)

(assert (=> bm!626870 m!7611462))

(declare-fun m!7611464 () Bool)

(assert (=> b!6889059 m!7611464))

(assert (=> b!6888569 d!2160741))

(declare-fun b!6889064 () Bool)

(declare-fun e!4150393 () Bool)

(assert (=> b!6889064 (= e!4150393 (matchR!8948 lt!2462386 s!14361))))

(declare-fun d!2160743 () Bool)

(declare-fun e!4150389 () Bool)

(assert (=> d!2160743 e!4150389))

(declare-fun res!2808781 () Bool)

(assert (=> d!2160743 (=> res!2808781 e!4150389)))

(declare-fun e!4150390 () Bool)

(assert (=> d!2160743 (= res!2808781 e!4150390)))

(declare-fun res!2808783 () Bool)

(assert (=> d!2160743 (=> (not res!2808783) (not e!4150390))))

(declare-fun lt!2462479 () Option!16588)

(assert (=> d!2160743 (= res!2808783 (isDefined!13291 lt!2462479))))

(declare-fun e!4150391 () Option!16588)

(assert (=> d!2160743 (= lt!2462479 e!4150391)))

(declare-fun c!1280924 () Bool)

(assert (=> d!2160743 (= c!1280924 e!4150393)))

(declare-fun res!2808782 () Bool)

(assert (=> d!2160743 (=> (not res!2808782) (not e!4150393))))

(assert (=> d!2160743 (= res!2808782 (matchR!8948 r1!6342 Nil!66436))))

(assert (=> d!2160743 (validRegex!8511 r1!6342)))

(assert (=> d!2160743 (= (findConcatSeparation!3002 r1!6342 lt!2462386 Nil!66436 s!14361 s!14361) lt!2462479)))

(declare-fun b!6889065 () Bool)

(declare-fun e!4150392 () Option!16588)

(assert (=> b!6889065 (= e!4150392 None!16587)))

(declare-fun b!6889066 () Bool)

(declare-fun res!2808779 () Bool)

(assert (=> b!6889066 (=> (not res!2808779) (not e!4150390))))

(assert (=> b!6889066 (= res!2808779 (matchR!8948 lt!2462386 (_2!36979 (get!23167 lt!2462479))))))

(declare-fun b!6889067 () Bool)

(assert (=> b!6889067 (= e!4150389 (not (isDefined!13291 lt!2462479)))))

(declare-fun b!6889068 () Bool)

(assert (=> b!6889068 (= e!4150391 (Some!16587 (tuple2!67353 Nil!66436 s!14361)))))

(declare-fun b!6889069 () Bool)

(declare-fun lt!2462480 () Unit!160326)

(declare-fun lt!2462478 () Unit!160326)

(assert (=> b!6889069 (= lt!2462480 lt!2462478)))

(assert (=> b!6889069 (= (++!14882 (++!14882 Nil!66436 (Cons!66436 (h!72884 s!14361) Nil!66436)) (t!380303 s!14361)) s!14361)))

(assert (=> b!6889069 (= lt!2462478 (lemmaMoveElementToOtherListKeepsConcatEq!2777 Nil!66436 (h!72884 s!14361) (t!380303 s!14361) s!14361))))

(assert (=> b!6889069 (= e!4150392 (findConcatSeparation!3002 r1!6342 lt!2462386 (++!14882 Nil!66436 (Cons!66436 (h!72884 s!14361) Nil!66436)) (t!380303 s!14361) s!14361))))

(declare-fun b!6889070 () Bool)

(declare-fun res!2808780 () Bool)

(assert (=> b!6889070 (=> (not res!2808780) (not e!4150390))))

(assert (=> b!6889070 (= res!2808780 (matchR!8948 r1!6342 (_1!36979 (get!23167 lt!2462479))))))

(declare-fun b!6889071 () Bool)

(assert (=> b!6889071 (= e!4150390 (= (++!14882 (_1!36979 (get!23167 lt!2462479)) (_2!36979 (get!23167 lt!2462479))) s!14361))))

(declare-fun b!6889072 () Bool)

(assert (=> b!6889072 (= e!4150391 e!4150392)))

(declare-fun c!1280923 () Bool)

(assert (=> b!6889072 (= c!1280923 ((_ is Nil!66436) s!14361))))

(assert (= (and d!2160743 res!2808782) b!6889064))

(assert (= (and d!2160743 c!1280924) b!6889068))

(assert (= (and d!2160743 (not c!1280924)) b!6889072))

(assert (= (and b!6889072 c!1280923) b!6889065))

(assert (= (and b!6889072 (not c!1280923)) b!6889069))

(assert (= (and d!2160743 res!2808783) b!6889070))

(assert (= (and b!6889070 res!2808780) b!6889066))

(assert (= (and b!6889066 res!2808779) b!6889071))

(assert (= (and d!2160743 (not res!2808781)) b!6889067))

(declare-fun m!7611466 () Bool)

(assert (=> b!6889064 m!7611466))

(declare-fun m!7611468 () Bool)

(assert (=> b!6889069 m!7611468))

(assert (=> b!6889069 m!7611468))

(declare-fun m!7611470 () Bool)

(assert (=> b!6889069 m!7611470))

(declare-fun m!7611472 () Bool)

(assert (=> b!6889069 m!7611472))

(assert (=> b!6889069 m!7611468))

(declare-fun m!7611474 () Bool)

(assert (=> b!6889069 m!7611474))

(declare-fun m!7611476 () Bool)

(assert (=> b!6889070 m!7611476))

(declare-fun m!7611478 () Bool)

(assert (=> b!6889070 m!7611478))

(assert (=> b!6889066 m!7611476))

(declare-fun m!7611480 () Bool)

(assert (=> b!6889066 m!7611480))

(declare-fun m!7611482 () Bool)

(assert (=> d!2160743 m!7611482))

(assert (=> d!2160743 m!7611338))

(assert (=> d!2160743 m!7611030))

(assert (=> b!6889071 m!7611476))

(declare-fun m!7611484 () Bool)

(assert (=> b!6889071 m!7611484))

(assert (=> b!6889067 m!7611482))

(assert (=> b!6888569 d!2160743))

(declare-fun b!6889073 () Bool)

(declare-fun res!2808786 () Bool)

(declare-fun e!4150395 () Bool)

(assert (=> b!6889073 (=> res!2808786 e!4150395)))

(assert (=> b!6889073 (= res!2808786 (not ((_ is Concat!25648) lt!2462402)))))

(declare-fun e!4150397 () Bool)

(assert (=> b!6889073 (= e!4150397 e!4150395)))

(declare-fun call!626879 () Bool)

(declare-fun bm!626872 () Bool)

(declare-fun c!1280926 () Bool)

(declare-fun c!1280925 () Bool)

(assert (=> bm!626872 (= call!626879 (validRegex!8511 (ite c!1280926 (reg!17132 lt!2462402) (ite c!1280925 (regOne!34119 lt!2462402) (regTwo!34118 lt!2462402)))))))

(declare-fun bm!626873 () Bool)

(declare-fun call!626878 () Bool)

(assert (=> bm!626873 (= call!626878 (validRegex!8511 (ite c!1280925 (regTwo!34119 lt!2462402) (regOne!34118 lt!2462402))))))

(declare-fun b!6889074 () Bool)

(declare-fun e!4150399 () Bool)

(assert (=> b!6889074 (= e!4150399 e!4150397)))

(assert (=> b!6889074 (= c!1280925 ((_ is Union!16803) lt!2462402))))

(declare-fun b!6889075 () Bool)

(declare-fun e!4150398 () Bool)

(assert (=> b!6889075 (= e!4150398 call!626879)))

(declare-fun b!6889076 () Bool)

(declare-fun e!4150396 () Bool)

(assert (=> b!6889076 (= e!4150396 call!626878)))

(declare-fun b!6889077 () Bool)

(assert (=> b!6889077 (= e!4150399 e!4150398)))

(declare-fun res!2808785 () Bool)

(assert (=> b!6889077 (= res!2808785 (not (nullable!6686 (reg!17132 lt!2462402))))))

(assert (=> b!6889077 (=> (not res!2808785) (not e!4150398))))

(declare-fun bm!626874 () Bool)

(declare-fun call!626877 () Bool)

(assert (=> bm!626874 (= call!626877 call!626879)))

(declare-fun b!6889079 () Bool)

(declare-fun e!4150400 () Bool)

(assert (=> b!6889079 (= e!4150400 call!626877)))

(declare-fun b!6889080 () Bool)

(assert (=> b!6889080 (= e!4150395 e!4150400)))

(declare-fun res!2808787 () Bool)

(assert (=> b!6889080 (=> (not res!2808787) (not e!4150400))))

(assert (=> b!6889080 (= res!2808787 call!626878)))

(declare-fun b!6889081 () Bool)

(declare-fun res!2808784 () Bool)

(assert (=> b!6889081 (=> (not res!2808784) (not e!4150396))))

(assert (=> b!6889081 (= res!2808784 call!626877)))

(assert (=> b!6889081 (= e!4150397 e!4150396)))

(declare-fun b!6889078 () Bool)

(declare-fun e!4150394 () Bool)

(assert (=> b!6889078 (= e!4150394 e!4150399)))

(assert (=> b!6889078 (= c!1280926 ((_ is Star!16803) lt!2462402))))

(declare-fun d!2160745 () Bool)

(declare-fun res!2808788 () Bool)

(assert (=> d!2160745 (=> res!2808788 e!4150394)))

(assert (=> d!2160745 (= res!2808788 ((_ is ElementMatch!16803) lt!2462402))))

(assert (=> d!2160745 (= (validRegex!8511 lt!2462402) e!4150394)))

(assert (= (and d!2160745 (not res!2808788)) b!6889078))

(assert (= (and b!6889078 c!1280926) b!6889077))

(assert (= (and b!6889078 (not c!1280926)) b!6889074))

(assert (= (and b!6889077 res!2808785) b!6889075))

(assert (= (and b!6889074 c!1280925) b!6889081))

(assert (= (and b!6889074 (not c!1280925)) b!6889073))

(assert (= (and b!6889081 res!2808784) b!6889076))

(assert (= (and b!6889073 (not res!2808786)) b!6889080))

(assert (= (and b!6889080 res!2808787) b!6889079))

(assert (= (or b!6889081 b!6889079) bm!626874))

(assert (= (or b!6889076 b!6889080) bm!626873))

(assert (= (or b!6889075 bm!626874) bm!626872))

(declare-fun m!7611486 () Bool)

(assert (=> bm!626872 m!7611486))

(declare-fun m!7611488 () Bool)

(assert (=> bm!626873 m!7611488))

(declare-fun m!7611490 () Bool)

(assert (=> b!6889077 m!7611490))

(assert (=> b!6888547 d!2160745))

(assert (=> b!6888547 d!2160737))

(declare-fun d!2160747 () Bool)

(assert (=> d!2160747 (= (Exists!3815 lambda!390420) (choose!51298 lambda!390420))))

(declare-fun bs!1839329 () Bool)

(assert (= bs!1839329 d!2160747))

(declare-fun m!7611492 () Bool)

(assert (=> bs!1839329 m!7611492))

(assert (=> b!6888547 d!2160747))

(declare-fun bs!1839330 () Bool)

(declare-fun d!2160749 () Bool)

(assert (= bs!1839330 (and d!2160749 d!2160703)))

(declare-fun lambda!390457 () Int)

(assert (=> bs!1839330 (= (and (= s!14361 (_1!36979 lt!2462393)) (= lt!2462386 r2!6280)) (= lambda!390457 lambda!390449))))

(declare-fun bs!1839331 () Bool)

(assert (= bs!1839331 (and d!2160749 b!6888611)))

(assert (=> bs!1839331 (not (= lambda!390457 lambda!390425))))

(assert (=> bs!1839330 (not (= lambda!390457 lambda!390451))))

(declare-fun bs!1839332 () Bool)

(assert (= bs!1839332 (and d!2160749 b!6888564)))

(assert (=> bs!1839332 (not (= lambda!390457 lambda!390414))))

(declare-fun bs!1839333 () Bool)

(assert (= bs!1839333 (and d!2160749 b!6888552)))

(assert (=> bs!1839333 (= (and (= s!14361 lt!2462383) (= r1!6342 r2!6280) (= lt!2462386 r3!135)) (= lambda!390457 lambda!390417))))

(declare-fun bs!1839334 () Bool)

(assert (= bs!1839334 (and d!2160749 b!6888833)))

(assert (=> bs!1839334 (not (= lambda!390457 lambda!390429))))

(declare-fun bs!1839335 () Bool)

(assert (= bs!1839335 (and d!2160749 b!6888548)))

(assert (=> bs!1839335 (not (= lambda!390457 lambda!390416))))

(declare-fun bs!1839336 () Bool)

(assert (= bs!1839336 (and d!2160749 b!6888612)))

(assert (=> bs!1839336 (not (= lambda!390457 lambda!390426))))

(declare-fun bs!1839337 () Bool)

(assert (= bs!1839337 (and d!2160749 d!2160731)))

(assert (=> bs!1839337 (= lambda!390457 lambda!390454)))

(declare-fun bs!1839338 () Bool)

(assert (= bs!1839338 (and d!2160749 b!6888569)))

(assert (=> bs!1839338 (= lambda!390457 lambda!390419)))

(assert (=> bs!1839332 (= (and (= r1!6342 lt!2462381) (= lt!2462386 r3!135)) (= lambda!390457 lambda!390413))))

(declare-fun bs!1839339 () Bool)

(assert (= bs!1839339 (and d!2160749 b!6888853)))

(assert (=> bs!1839339 (not (= lambda!390457 lambda!390431))))

(declare-fun bs!1839340 () Bool)

(assert (= bs!1839340 (and d!2160749 b!6888547)))

(assert (=> bs!1839340 (not (= lambda!390457 lambda!390420))))

(declare-fun bs!1839341 () Bool)

(assert (= bs!1839341 (and d!2160749 b!6888623)))

(assert (=> bs!1839341 (not (= lambda!390457 lambda!390428))))

(declare-fun bs!1839342 () Bool)

(assert (= bs!1839342 (and d!2160749 b!6888854)))

(assert (=> bs!1839342 (not (= lambda!390457 lambda!390432))))

(declare-fun bs!1839343 () Bool)

(assert (= bs!1839343 (and d!2160749 b!6888834)))

(assert (=> bs!1839343 (not (= lambda!390457 lambda!390430))))

(assert (=> bs!1839333 (not (= lambda!390457 lambda!390418))))

(assert (=> bs!1839335 (= (and (= s!14361 (_1!36979 lt!2462393)) (= lt!2462386 r2!6280)) (= lambda!390457 lambda!390415))))

(declare-fun bs!1839344 () Bool)

(assert (= bs!1839344 (and d!2160749 b!6888622)))

(assert (=> bs!1839344 (not (= lambda!390457 lambda!390427))))

(declare-fun bs!1839345 () Bool)

(assert (= bs!1839345 (and d!2160749 d!2160689)))

(assert (=> bs!1839345 (= (and (= s!14361 (_1!36979 lt!2462393)) (= lt!2462386 r2!6280)) (= lambda!390457 lambda!390438))))

(assert (=> d!2160749 true))

(assert (=> d!2160749 true))

(assert (=> d!2160749 true))

(declare-fun lambda!390460 () Int)

(assert (=> bs!1839330 (not (= lambda!390460 lambda!390449))))

(assert (=> bs!1839331 (not (= lambda!390460 lambda!390425))))

(assert (=> bs!1839330 (= (and (= s!14361 (_1!36979 lt!2462393)) (= lt!2462386 r2!6280)) (= lambda!390460 lambda!390451))))

(assert (=> bs!1839332 (= (and (= r1!6342 lt!2462381) (= lt!2462386 r3!135)) (= lambda!390460 lambda!390414))))

(assert (=> bs!1839333 (not (= lambda!390460 lambda!390417))))

(assert (=> bs!1839334 (not (= lambda!390460 lambda!390429))))

(assert (=> bs!1839335 (= (and (= s!14361 (_1!36979 lt!2462393)) (= lt!2462386 r2!6280)) (= lambda!390460 lambda!390416))))

(assert (=> bs!1839336 (= (and (= s!14361 (_2!36979 lt!2462407)) (= r1!6342 (regOne!34118 r2!6280)) (= lt!2462386 (regTwo!34118 r2!6280))) (= lambda!390460 lambda!390426))))

(assert (=> bs!1839337 (not (= lambda!390460 lambda!390454))))

(declare-fun bs!1839352 () Bool)

(assert (= bs!1839352 d!2160749))

(assert (=> bs!1839352 (not (= lambda!390460 lambda!390457))))

(assert (=> bs!1839338 (not (= lambda!390460 lambda!390419))))

(assert (=> bs!1839332 (not (= lambda!390460 lambda!390413))))

(assert (=> bs!1839339 (not (= lambda!390460 lambda!390431))))

(assert (=> bs!1839340 (= lambda!390460 lambda!390420)))

(assert (=> bs!1839341 (= (and (= s!14361 (_1!36979 lt!2462407)) (= r1!6342 (regOne!34118 r1!6342)) (= lt!2462386 (regTwo!34118 r1!6342))) (= lambda!390460 lambda!390428))))

(assert (=> bs!1839342 (= (and (= r1!6342 (regOne!34118 lt!2462403)) (= lt!2462386 (regTwo!34118 lt!2462403))) (= lambda!390460 lambda!390432))))

(assert (=> bs!1839343 (= (and (= r1!6342 (regOne!34118 lt!2462402)) (= lt!2462386 (regTwo!34118 lt!2462402))) (= lambda!390460 lambda!390430))))

(assert (=> bs!1839333 (= (and (= s!14361 lt!2462383) (= r1!6342 r2!6280) (= lt!2462386 r3!135)) (= lambda!390460 lambda!390418))))

(assert (=> bs!1839335 (not (= lambda!390460 lambda!390415))))

(assert (=> bs!1839344 (not (= lambda!390460 lambda!390427))))

(assert (=> bs!1839345 (not (= lambda!390460 lambda!390438))))

(assert (=> d!2160749 true))

(assert (=> d!2160749 true))

(assert (=> d!2160749 true))

(assert (=> d!2160749 (= (Exists!3815 lambda!390457) (Exists!3815 lambda!390460))))

(declare-fun lt!2462483 () Unit!160326)

(assert (=> d!2160749 (= lt!2462483 (choose!51300 r1!6342 lt!2462386 s!14361))))

(assert (=> d!2160749 (validRegex!8511 r1!6342)))

(assert (=> d!2160749 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2294 r1!6342 lt!2462386 s!14361) lt!2462483)))

(declare-fun m!7611494 () Bool)

(assert (=> bs!1839352 m!7611494))

(declare-fun m!7611496 () Bool)

(assert (=> bs!1839352 m!7611496))

(declare-fun m!7611498 () Bool)

(assert (=> bs!1839352 m!7611498))

(assert (=> bs!1839352 m!7611030))

(assert (=> b!6888547 d!2160749))

(declare-fun b!6889091 () Bool)

(declare-fun e!4150406 () List!66560)

(assert (=> b!6889091 (= e!4150406 (Cons!66436 (h!72884 (_1!36979 lt!2462407)) (++!14882 (t!380303 (_1!36979 lt!2462407)) lt!2462383)))))

(declare-fun e!4150405 () Bool)

(declare-fun b!6889093 () Bool)

(declare-fun lt!2462485 () List!66560)

(assert (=> b!6889093 (= e!4150405 (or (not (= lt!2462383 Nil!66436)) (= lt!2462485 (_1!36979 lt!2462407))))))

(declare-fun b!6889090 () Bool)

(assert (=> b!6889090 (= e!4150406 lt!2462383)))

(declare-fun d!2160751 () Bool)

(assert (=> d!2160751 e!4150405))

(declare-fun res!2808797 () Bool)

(assert (=> d!2160751 (=> (not res!2808797) (not e!4150405))))

(assert (=> d!2160751 (= res!2808797 (= (content!13047 lt!2462485) ((_ map or) (content!13047 (_1!36979 lt!2462407)) (content!13047 lt!2462383))))))

(assert (=> d!2160751 (= lt!2462485 e!4150406)))

(declare-fun c!1280927 () Bool)

(assert (=> d!2160751 (= c!1280927 ((_ is Nil!66436) (_1!36979 lt!2462407)))))

(assert (=> d!2160751 (= (++!14882 (_1!36979 lt!2462407) lt!2462383) lt!2462485)))

(declare-fun b!6889092 () Bool)

(declare-fun res!2808798 () Bool)

(assert (=> b!6889092 (=> (not res!2808798) (not e!4150405))))

(assert (=> b!6889092 (= res!2808798 (= (size!40744 lt!2462485) (+ (size!40744 (_1!36979 lt!2462407)) (size!40744 lt!2462383))))))

(assert (= (and d!2160751 c!1280927) b!6889090))

(assert (= (and d!2160751 (not c!1280927)) b!6889091))

(assert (= (and d!2160751 res!2808797) b!6889092))

(assert (= (and b!6889092 res!2808798) b!6889093))

(declare-fun m!7611500 () Bool)

(assert (=> b!6889091 m!7611500))

(declare-fun m!7611502 () Bool)

(assert (=> d!2160751 m!7611502))

(assert (=> d!2160751 m!7611154))

(declare-fun m!7611504 () Bool)

(assert (=> d!2160751 m!7611504))

(declare-fun m!7611506 () Bool)

(assert (=> b!6889092 m!7611506))

(assert (=> b!6889092 m!7611160))

(declare-fun m!7611508 () Bool)

(assert (=> b!6889092 m!7611508))

(assert (=> b!6888566 d!2160751))

(declare-fun d!2160753 () Bool)

(assert (=> d!2160753 (= (++!14882 (++!14882 (_1!36979 lt!2462407) (_2!36979 lt!2462407)) (_2!36979 lt!2462393)) (++!14882 (_1!36979 lt!2462407) (++!14882 (_2!36979 lt!2462407) (_2!36979 lt!2462393))))))

(declare-fun lt!2462489 () Unit!160326)

(declare-fun choose!51303 (List!66560 List!66560 List!66560) Unit!160326)

(assert (=> d!2160753 (= lt!2462489 (choose!51303 (_1!36979 lt!2462407) (_2!36979 lt!2462407) (_2!36979 lt!2462393)))))

(assert (=> d!2160753 (= (lemmaConcatAssociativity!2974 (_1!36979 lt!2462407) (_2!36979 lt!2462407) (_2!36979 lt!2462393)) lt!2462489)))

(declare-fun bs!1839361 () Bool)

(assert (= bs!1839361 d!2160753))

(assert (=> bs!1839361 m!7611104))

(assert (=> bs!1839361 m!7611104))

(assert (=> bs!1839361 m!7611108))

(assert (=> bs!1839361 m!7611070))

(declare-fun m!7611520 () Bool)

(assert (=> bs!1839361 m!7611520))

(declare-fun m!7611522 () Bool)

(assert (=> bs!1839361 m!7611522))

(assert (=> bs!1839361 m!7611070))

(assert (=> b!6888566 d!2160753))

(declare-fun b!6889109 () Bool)

(declare-fun e!4150416 () Bool)

(declare-fun lt!2462490 () Bool)

(assert (=> b!6889109 (= e!4150416 (not lt!2462490))))

(declare-fun b!6889110 () Bool)

(declare-fun res!2808810 () Bool)

(declare-fun e!4150414 () Bool)

(assert (=> b!6889110 (=> res!2808810 e!4150414)))

(assert (=> b!6889110 (= res!2808810 (not ((_ is ElementMatch!16803) r3!135)))))

(assert (=> b!6889110 (= e!4150416 e!4150414)))

(declare-fun b!6889111 () Bool)

(declare-fun e!4150419 () Bool)

(assert (=> b!6889111 (= e!4150419 (not (= (head!13818 (_2!36979 lt!2462393)) (c!1280807 r3!135))))))

(declare-fun b!6889112 () Bool)

(declare-fun e!4150417 () Bool)

(assert (=> b!6889112 (= e!4150417 (matchR!8948 (derivativeStep!5365 r3!135 (head!13818 (_2!36979 lt!2462393))) (tail!12870 (_2!36979 lt!2462393))))))

(declare-fun b!6889113 () Bool)

(declare-fun res!2808811 () Bool)

(declare-fun e!4150415 () Bool)

(assert (=> b!6889113 (=> (not res!2808811) (not e!4150415))))

(declare-fun call!626881 () Bool)

(assert (=> b!6889113 (= res!2808811 (not call!626881))))

(declare-fun b!6889114 () Bool)

(assert (=> b!6889114 (= e!4150415 (= (head!13818 (_2!36979 lt!2462393)) (c!1280807 r3!135)))))

(declare-fun bm!626876 () Bool)

(assert (=> bm!626876 (= call!626881 (isEmpty!38688 (_2!36979 lt!2462393)))))

(declare-fun b!6889115 () Bool)

(declare-fun res!2808807 () Bool)

(assert (=> b!6889115 (=> res!2808807 e!4150419)))

(assert (=> b!6889115 (= res!2808807 (not (isEmpty!38688 (tail!12870 (_2!36979 lt!2462393)))))))

(declare-fun b!6889116 () Bool)

(declare-fun e!4150418 () Bool)

(assert (=> b!6889116 (= e!4150418 e!4150419)))

(declare-fun res!2808813 () Bool)

(assert (=> b!6889116 (=> res!2808813 e!4150419)))

(assert (=> b!6889116 (= res!2808813 call!626881)))

(declare-fun d!2160763 () Bool)

(declare-fun e!4150420 () Bool)

(assert (=> d!2160763 e!4150420))

(declare-fun c!1280931 () Bool)

(assert (=> d!2160763 (= c!1280931 ((_ is EmptyExpr!16803) r3!135))))

(assert (=> d!2160763 (= lt!2462490 e!4150417)))

(declare-fun c!1280933 () Bool)

(assert (=> d!2160763 (= c!1280933 (isEmpty!38688 (_2!36979 lt!2462393)))))

(assert (=> d!2160763 (validRegex!8511 r3!135)))

(assert (=> d!2160763 (= (matchR!8948 r3!135 (_2!36979 lt!2462393)) lt!2462490)))

(declare-fun b!6889108 () Bool)

(assert (=> b!6889108 (= e!4150414 e!4150418)))

(declare-fun res!2808809 () Bool)

(assert (=> b!6889108 (=> (not res!2808809) (not e!4150418))))

(assert (=> b!6889108 (= res!2808809 (not lt!2462490))))

(declare-fun b!6889117 () Bool)

(declare-fun res!2808814 () Bool)

(assert (=> b!6889117 (=> (not res!2808814) (not e!4150415))))

(assert (=> b!6889117 (= res!2808814 (isEmpty!38688 (tail!12870 (_2!36979 lt!2462393))))))

(declare-fun b!6889118 () Bool)

(declare-fun res!2808812 () Bool)

(assert (=> b!6889118 (=> res!2808812 e!4150414)))

(assert (=> b!6889118 (= res!2808812 e!4150415)))

(declare-fun res!2808808 () Bool)

(assert (=> b!6889118 (=> (not res!2808808) (not e!4150415))))

(assert (=> b!6889118 (= res!2808808 lt!2462490)))

(declare-fun b!6889119 () Bool)

(assert (=> b!6889119 (= e!4150417 (nullable!6686 r3!135))))

(declare-fun b!6889120 () Bool)

(assert (=> b!6889120 (= e!4150420 e!4150416)))

(declare-fun c!1280932 () Bool)

(assert (=> b!6889120 (= c!1280932 ((_ is EmptyLang!16803) r3!135))))

(declare-fun b!6889121 () Bool)

(assert (=> b!6889121 (= e!4150420 (= lt!2462490 call!626881))))

(assert (= (and d!2160763 c!1280933) b!6889119))

(assert (= (and d!2160763 (not c!1280933)) b!6889112))

(assert (= (and d!2160763 c!1280931) b!6889121))

(assert (= (and d!2160763 (not c!1280931)) b!6889120))

(assert (= (and b!6889120 c!1280932) b!6889109))

(assert (= (and b!6889120 (not c!1280932)) b!6889110))

(assert (= (and b!6889110 (not res!2808810)) b!6889118))

(assert (= (and b!6889118 res!2808808) b!6889113))

(assert (= (and b!6889113 res!2808811) b!6889117))

(assert (= (and b!6889117 res!2808814) b!6889114))

(assert (= (and b!6889118 (not res!2808812)) b!6889108))

(assert (= (and b!6889108 res!2808809) b!6889116))

(assert (= (and b!6889116 (not res!2808813)) b!6889115))

(assert (= (and b!6889115 (not res!2808807)) b!6889111))

(assert (= (or b!6889121 b!6889113 b!6889116) bm!626876))

(declare-fun m!7611538 () Bool)

(assert (=> b!6889111 m!7611538))

(declare-fun m!7611540 () Bool)

(assert (=> b!6889115 m!7611540))

(assert (=> b!6889115 m!7611540))

(declare-fun m!7611542 () Bool)

(assert (=> b!6889115 m!7611542))

(declare-fun m!7611544 () Bool)

(assert (=> bm!626876 m!7611544))

(declare-fun m!7611546 () Bool)

(assert (=> b!6889119 m!7611546))

(assert (=> b!6889117 m!7611540))

(assert (=> b!6889117 m!7611540))

(assert (=> b!6889117 m!7611542))

(assert (=> d!2160763 m!7611544))

(assert (=> d!2160763 m!7611098))

(assert (=> b!6889112 m!7611538))

(assert (=> b!6889112 m!7611538))

(declare-fun m!7611548 () Bool)

(assert (=> b!6889112 m!7611548))

(assert (=> b!6889112 m!7611540))

(assert (=> b!6889112 m!7611548))

(assert (=> b!6889112 m!7611540))

(declare-fun m!7611550 () Bool)

(assert (=> b!6889112 m!7611550))

(assert (=> b!6889114 m!7611538))

(assert (=> b!6888554 d!2160763))

(declare-fun b!6889131 () Bool)

(declare-fun e!4150432 () Bool)

(assert (=> b!6889131 (= e!4150432 (matchR!8948 r3!135 s!14361))))

(declare-fun d!2160767 () Bool)

(declare-fun e!4150428 () Bool)

(assert (=> d!2160767 e!4150428))

(declare-fun res!2808822 () Bool)

(assert (=> d!2160767 (=> res!2808822 e!4150428)))

(declare-fun e!4150429 () Bool)

(assert (=> d!2160767 (= res!2808822 e!4150429)))

(declare-fun res!2808824 () Bool)

(assert (=> d!2160767 (=> (not res!2808824) (not e!4150429))))

(declare-fun lt!2462492 () Option!16588)

(assert (=> d!2160767 (= res!2808824 (isDefined!13291 lt!2462492))))

(declare-fun e!4150430 () Option!16588)

(assert (=> d!2160767 (= lt!2462492 e!4150430)))

(declare-fun c!1280937 () Bool)

(assert (=> d!2160767 (= c!1280937 e!4150432)))

(declare-fun res!2808823 () Bool)

(assert (=> d!2160767 (=> (not res!2808823) (not e!4150432))))

(assert (=> d!2160767 (= res!2808823 (matchR!8948 lt!2462381 Nil!66436))))

(assert (=> d!2160767 (validRegex!8511 lt!2462381)))

(assert (=> d!2160767 (= (findConcatSeparation!3002 lt!2462381 r3!135 Nil!66436 s!14361 s!14361) lt!2462492)))

(declare-fun b!6889132 () Bool)

(declare-fun e!4150431 () Option!16588)

(assert (=> b!6889132 (= e!4150431 None!16587)))

(declare-fun b!6889133 () Bool)

(declare-fun res!2808820 () Bool)

(assert (=> b!6889133 (=> (not res!2808820) (not e!4150429))))

(assert (=> b!6889133 (= res!2808820 (matchR!8948 r3!135 (_2!36979 (get!23167 lt!2462492))))))

(declare-fun b!6889134 () Bool)

(assert (=> b!6889134 (= e!4150428 (not (isDefined!13291 lt!2462492)))))

(declare-fun b!6889135 () Bool)

(assert (=> b!6889135 (= e!4150430 (Some!16587 (tuple2!67353 Nil!66436 s!14361)))))

(declare-fun b!6889136 () Bool)

(declare-fun lt!2462493 () Unit!160326)

(declare-fun lt!2462491 () Unit!160326)

(assert (=> b!6889136 (= lt!2462493 lt!2462491)))

(assert (=> b!6889136 (= (++!14882 (++!14882 Nil!66436 (Cons!66436 (h!72884 s!14361) Nil!66436)) (t!380303 s!14361)) s!14361)))

(assert (=> b!6889136 (= lt!2462491 (lemmaMoveElementToOtherListKeepsConcatEq!2777 Nil!66436 (h!72884 s!14361) (t!380303 s!14361) s!14361))))

(assert (=> b!6889136 (= e!4150431 (findConcatSeparation!3002 lt!2462381 r3!135 (++!14882 Nil!66436 (Cons!66436 (h!72884 s!14361) Nil!66436)) (t!380303 s!14361) s!14361))))

(declare-fun b!6889137 () Bool)

(declare-fun res!2808821 () Bool)

(assert (=> b!6889137 (=> (not res!2808821) (not e!4150429))))

(assert (=> b!6889137 (= res!2808821 (matchR!8948 lt!2462381 (_1!36979 (get!23167 lt!2462492))))))

(declare-fun b!6889138 () Bool)

(assert (=> b!6889138 (= e!4150429 (= (++!14882 (_1!36979 (get!23167 lt!2462492)) (_2!36979 (get!23167 lt!2462492))) s!14361))))

(declare-fun b!6889139 () Bool)

(assert (=> b!6889139 (= e!4150430 e!4150431)))

(declare-fun c!1280936 () Bool)

(assert (=> b!6889139 (= c!1280936 ((_ is Nil!66436) s!14361))))

(assert (= (and d!2160767 res!2808823) b!6889131))

(assert (= (and d!2160767 c!1280937) b!6889135))

(assert (= (and d!2160767 (not c!1280937)) b!6889139))

(assert (= (and b!6889139 c!1280936) b!6889132))

(assert (= (and b!6889139 (not c!1280936)) b!6889136))

(assert (= (and d!2160767 res!2808824) b!6889137))

(assert (= (and b!6889137 res!2808821) b!6889133))

(assert (= (and b!6889133 res!2808820) b!6889138))

(assert (= (and d!2160767 (not res!2808822)) b!6889134))

(declare-fun m!7611562 () Bool)

(assert (=> b!6889131 m!7611562))

(assert (=> b!6889136 m!7611468))

(assert (=> b!6889136 m!7611468))

(assert (=> b!6889136 m!7611470))

(assert (=> b!6889136 m!7611472))

(assert (=> b!6889136 m!7611468))

(declare-fun m!7611564 () Bool)

(assert (=> b!6889136 m!7611564))

(declare-fun m!7611566 () Bool)

(assert (=> b!6889137 m!7611566))

(declare-fun m!7611568 () Bool)

(assert (=> b!6889137 m!7611568))

(assert (=> b!6889133 m!7611566))

(declare-fun m!7611570 () Bool)

(assert (=> b!6889133 m!7611570))

(declare-fun m!7611572 () Bool)

(assert (=> d!2160767 m!7611572))

(declare-fun m!7611574 () Bool)

(assert (=> d!2160767 m!7611574))

(declare-fun m!7611576 () Bool)

(assert (=> d!2160767 m!7611576))

(assert (=> b!6889138 m!7611566))

(declare-fun m!7611578 () Bool)

(assert (=> b!6889138 m!7611578))

(assert (=> b!6889134 m!7611572))

(assert (=> b!6888564 d!2160767))

(declare-fun bs!1839364 () Bool)

(declare-fun d!2160775 () Bool)

(assert (= bs!1839364 (and d!2160775 d!2160703)))

(declare-fun lambda!390463 () Int)

(assert (=> bs!1839364 (= (and (= s!14361 (_1!36979 lt!2462393)) (= lt!2462381 r1!6342) (= r3!135 r2!6280)) (= lambda!390463 lambda!390449))))

(declare-fun bs!1839365 () Bool)

(assert (= bs!1839365 (and d!2160775 b!6888611)))

(assert (=> bs!1839365 (not (= lambda!390463 lambda!390425))))

(assert (=> bs!1839364 (not (= lambda!390463 lambda!390451))))

(declare-fun bs!1839366 () Bool)

(assert (= bs!1839366 (and d!2160775 b!6888564)))

(assert (=> bs!1839366 (not (= lambda!390463 lambda!390414))))

(declare-fun bs!1839367 () Bool)

(assert (= bs!1839367 (and d!2160775 b!6888552)))

(assert (=> bs!1839367 (= (and (= s!14361 lt!2462383) (= lt!2462381 r2!6280)) (= lambda!390463 lambda!390417))))

(declare-fun bs!1839368 () Bool)

(assert (= bs!1839368 (and d!2160775 b!6888833)))

(assert (=> bs!1839368 (not (= lambda!390463 lambda!390429))))

(declare-fun bs!1839369 () Bool)

(assert (= bs!1839369 (and d!2160775 b!6888548)))

(assert (=> bs!1839369 (not (= lambda!390463 lambda!390416))))

(declare-fun bs!1839370 () Bool)

(assert (= bs!1839370 (and d!2160775 b!6888612)))

(assert (=> bs!1839370 (not (= lambda!390463 lambda!390426))))

(declare-fun bs!1839371 () Bool)

(assert (= bs!1839371 (and d!2160775 d!2160731)))

(assert (=> bs!1839371 (= (and (= lt!2462381 r1!6342) (= r3!135 lt!2462386)) (= lambda!390463 lambda!390454))))

(declare-fun bs!1839372 () Bool)

(assert (= bs!1839372 (and d!2160775 d!2160749)))

(assert (=> bs!1839372 (= (and (= lt!2462381 r1!6342) (= r3!135 lt!2462386)) (= lambda!390463 lambda!390457))))

(declare-fun bs!1839373 () Bool)

(assert (= bs!1839373 (and d!2160775 b!6888569)))

(assert (=> bs!1839373 (= (and (= lt!2462381 r1!6342) (= r3!135 lt!2462386)) (= lambda!390463 lambda!390419))))

(declare-fun bs!1839374 () Bool)

(assert (= bs!1839374 (and d!2160775 b!6888853)))

(assert (=> bs!1839374 (not (= lambda!390463 lambda!390431))))

(declare-fun bs!1839375 () Bool)

(assert (= bs!1839375 (and d!2160775 b!6888547)))

(assert (=> bs!1839375 (not (= lambda!390463 lambda!390420))))

(declare-fun bs!1839376 () Bool)

(assert (= bs!1839376 (and d!2160775 b!6888623)))

(assert (=> bs!1839376 (not (= lambda!390463 lambda!390428))))

(declare-fun bs!1839378 () Bool)

(assert (= bs!1839378 (and d!2160775 b!6888854)))

(assert (=> bs!1839378 (not (= lambda!390463 lambda!390432))))

(declare-fun bs!1839380 () Bool)

(assert (= bs!1839380 (and d!2160775 b!6888834)))

(assert (=> bs!1839380 (not (= lambda!390463 lambda!390430))))

(assert (=> bs!1839367 (not (= lambda!390463 lambda!390418))))

(assert (=> bs!1839369 (= (and (= s!14361 (_1!36979 lt!2462393)) (= lt!2462381 r1!6342) (= r3!135 r2!6280)) (= lambda!390463 lambda!390415))))

(declare-fun bs!1839384 () Bool)

(assert (= bs!1839384 (and d!2160775 b!6888622)))

(assert (=> bs!1839384 (not (= lambda!390463 lambda!390427))))

(declare-fun bs!1839386 () Bool)

(assert (= bs!1839386 (and d!2160775 d!2160689)))

(assert (=> bs!1839386 (= (and (= s!14361 (_1!36979 lt!2462393)) (= lt!2462381 r1!6342) (= r3!135 r2!6280)) (= lambda!390463 lambda!390438))))

(assert (=> bs!1839372 (not (= lambda!390463 lambda!390460))))

(assert (=> bs!1839366 (= lambda!390463 lambda!390413)))

(assert (=> d!2160775 true))

(assert (=> d!2160775 true))

(assert (=> d!2160775 true))

(declare-fun lambda!390465 () Int)

(assert (=> bs!1839364 (not (= lambda!390465 lambda!390449))))

(assert (=> bs!1839365 (not (= lambda!390465 lambda!390425))))

(assert (=> bs!1839364 (= (and (= s!14361 (_1!36979 lt!2462393)) (= lt!2462381 r1!6342) (= r3!135 r2!6280)) (= lambda!390465 lambda!390451))))

(assert (=> bs!1839367 (not (= lambda!390465 lambda!390417))))

(assert (=> bs!1839368 (not (= lambda!390465 lambda!390429))))

(assert (=> bs!1839369 (= (and (= s!14361 (_1!36979 lt!2462393)) (= lt!2462381 r1!6342) (= r3!135 r2!6280)) (= lambda!390465 lambda!390416))))

(assert (=> bs!1839370 (= (and (= s!14361 (_2!36979 lt!2462407)) (= lt!2462381 (regOne!34118 r2!6280)) (= r3!135 (regTwo!34118 r2!6280))) (= lambda!390465 lambda!390426))))

(assert (=> bs!1839371 (not (= lambda!390465 lambda!390454))))

(assert (=> bs!1839372 (not (= lambda!390465 lambda!390457))))

(assert (=> bs!1839373 (not (= lambda!390465 lambda!390419))))

(assert (=> bs!1839374 (not (= lambda!390465 lambda!390431))))

(assert (=> bs!1839375 (= (and (= lt!2462381 r1!6342) (= r3!135 lt!2462386)) (= lambda!390465 lambda!390420))))

(assert (=> bs!1839366 (= lambda!390465 lambda!390414)))

(declare-fun bs!1839393 () Bool)

(assert (= bs!1839393 d!2160775))

(assert (=> bs!1839393 (not (= lambda!390465 lambda!390463))))

(assert (=> bs!1839376 (= (and (= s!14361 (_1!36979 lt!2462407)) (= lt!2462381 (regOne!34118 r1!6342)) (= r3!135 (regTwo!34118 r1!6342))) (= lambda!390465 lambda!390428))))

(assert (=> bs!1839378 (= (and (= lt!2462381 (regOne!34118 lt!2462403)) (= r3!135 (regTwo!34118 lt!2462403))) (= lambda!390465 lambda!390432))))

(assert (=> bs!1839380 (= (and (= lt!2462381 (regOne!34118 lt!2462402)) (= r3!135 (regTwo!34118 lt!2462402))) (= lambda!390465 lambda!390430))))

(assert (=> bs!1839367 (= (and (= s!14361 lt!2462383) (= lt!2462381 r2!6280)) (= lambda!390465 lambda!390418))))

(assert (=> bs!1839369 (not (= lambda!390465 lambda!390415))))

(assert (=> bs!1839384 (not (= lambda!390465 lambda!390427))))

(assert (=> bs!1839386 (not (= lambda!390465 lambda!390438))))

(assert (=> bs!1839372 (= (and (= lt!2462381 r1!6342) (= r3!135 lt!2462386)) (= lambda!390465 lambda!390460))))

(assert (=> bs!1839366 (not (= lambda!390465 lambda!390413))))

(assert (=> d!2160775 true))

(assert (=> d!2160775 true))

(assert (=> d!2160775 true))

(assert (=> d!2160775 (= (Exists!3815 lambda!390463) (Exists!3815 lambda!390465))))

(declare-fun lt!2462497 () Unit!160326)

(assert (=> d!2160775 (= lt!2462497 (choose!51300 lt!2462381 r3!135 s!14361))))

(assert (=> d!2160775 (validRegex!8511 lt!2462381)))

(assert (=> d!2160775 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2294 lt!2462381 r3!135 s!14361) lt!2462497)))

(declare-fun m!7611616 () Bool)

(assert (=> bs!1839393 m!7611616))

(declare-fun m!7611618 () Bool)

(assert (=> bs!1839393 m!7611618))

(declare-fun m!7611620 () Bool)

(assert (=> bs!1839393 m!7611620))

(assert (=> bs!1839393 m!7611576))

(assert (=> b!6888564 d!2160775))

(declare-fun d!2160781 () Bool)

(assert (=> d!2160781 (= (isDefined!13291 lt!2462384) (not (isEmpty!38691 lt!2462384)))))

(declare-fun bs!1839395 () Bool)

(assert (= bs!1839395 d!2160781))

(declare-fun m!7611626 () Bool)

(assert (=> bs!1839395 m!7611626))

(assert (=> b!6888564 d!2160781))

(declare-fun d!2160783 () Bool)

(assert (=> d!2160783 (= (Exists!3815 lambda!390414) (choose!51298 lambda!390414))))

(declare-fun bs!1839396 () Bool)

(assert (= bs!1839396 d!2160783))

(declare-fun m!7611630 () Bool)

(assert (=> bs!1839396 m!7611630))

(assert (=> b!6888564 d!2160783))

(declare-fun bs!1839399 () Bool)

(declare-fun d!2160787 () Bool)

(assert (= bs!1839399 (and d!2160787 d!2160703)))

(declare-fun lambda!390467 () Int)

(assert (=> bs!1839399 (= (and (= s!14361 (_1!36979 lt!2462393)) (= lt!2462381 r1!6342) (= r3!135 r2!6280)) (= lambda!390467 lambda!390449))))

(declare-fun bs!1839401 () Bool)

(assert (= bs!1839401 (and d!2160787 b!6888611)))

(assert (=> bs!1839401 (not (= lambda!390467 lambda!390425))))

(assert (=> bs!1839399 (not (= lambda!390467 lambda!390451))))

(declare-fun bs!1839402 () Bool)

(assert (= bs!1839402 (and d!2160787 b!6888552)))

(assert (=> bs!1839402 (= (and (= s!14361 lt!2462383) (= lt!2462381 r2!6280)) (= lambda!390467 lambda!390417))))

(declare-fun bs!1839403 () Bool)

(assert (= bs!1839403 (and d!2160787 b!6888833)))

(assert (=> bs!1839403 (not (= lambda!390467 lambda!390429))))

(declare-fun bs!1839404 () Bool)

(assert (= bs!1839404 (and d!2160787 d!2160775)))

(assert (=> bs!1839404 (not (= lambda!390467 lambda!390465))))

(declare-fun bs!1839405 () Bool)

(assert (= bs!1839405 (and d!2160787 b!6888548)))

(assert (=> bs!1839405 (not (= lambda!390467 lambda!390416))))

(declare-fun bs!1839406 () Bool)

(assert (= bs!1839406 (and d!2160787 b!6888612)))

(assert (=> bs!1839406 (not (= lambda!390467 lambda!390426))))

(declare-fun bs!1839407 () Bool)

(assert (= bs!1839407 (and d!2160787 d!2160731)))

(assert (=> bs!1839407 (= (and (= lt!2462381 r1!6342) (= r3!135 lt!2462386)) (= lambda!390467 lambda!390454))))

(declare-fun bs!1839409 () Bool)

(assert (= bs!1839409 (and d!2160787 d!2160749)))

(assert (=> bs!1839409 (= (and (= lt!2462381 r1!6342) (= r3!135 lt!2462386)) (= lambda!390467 lambda!390457))))

(declare-fun bs!1839411 () Bool)

(assert (= bs!1839411 (and d!2160787 b!6888569)))

(assert (=> bs!1839411 (= (and (= lt!2462381 r1!6342) (= r3!135 lt!2462386)) (= lambda!390467 lambda!390419))))

(declare-fun bs!1839413 () Bool)

(assert (= bs!1839413 (and d!2160787 b!6888853)))

(assert (=> bs!1839413 (not (= lambda!390467 lambda!390431))))

(declare-fun bs!1839415 () Bool)

(assert (= bs!1839415 (and d!2160787 b!6888547)))

(assert (=> bs!1839415 (not (= lambda!390467 lambda!390420))))

(declare-fun bs!1839417 () Bool)

(assert (= bs!1839417 (and d!2160787 b!6888564)))

(assert (=> bs!1839417 (not (= lambda!390467 lambda!390414))))

(assert (=> bs!1839404 (= lambda!390467 lambda!390463)))

(declare-fun bs!1839419 () Bool)

(assert (= bs!1839419 (and d!2160787 b!6888623)))

(assert (=> bs!1839419 (not (= lambda!390467 lambda!390428))))

(declare-fun bs!1839421 () Bool)

(assert (= bs!1839421 (and d!2160787 b!6888854)))

(assert (=> bs!1839421 (not (= lambda!390467 lambda!390432))))

(declare-fun bs!1839422 () Bool)

(assert (= bs!1839422 (and d!2160787 b!6888834)))

(assert (=> bs!1839422 (not (= lambda!390467 lambda!390430))))

(assert (=> bs!1839402 (not (= lambda!390467 lambda!390418))))

(assert (=> bs!1839405 (= (and (= s!14361 (_1!36979 lt!2462393)) (= lt!2462381 r1!6342) (= r3!135 r2!6280)) (= lambda!390467 lambda!390415))))

(declare-fun bs!1839425 () Bool)

(assert (= bs!1839425 (and d!2160787 b!6888622)))

(assert (=> bs!1839425 (not (= lambda!390467 lambda!390427))))

(declare-fun bs!1839427 () Bool)

(assert (= bs!1839427 (and d!2160787 d!2160689)))

(assert (=> bs!1839427 (= (and (= s!14361 (_1!36979 lt!2462393)) (= lt!2462381 r1!6342) (= r3!135 r2!6280)) (= lambda!390467 lambda!390438))))

(assert (=> bs!1839409 (not (= lambda!390467 lambda!390460))))

(assert (=> bs!1839417 (= lambda!390467 lambda!390413)))

(assert (=> d!2160787 true))

(assert (=> d!2160787 true))

(assert (=> d!2160787 true))

(assert (=> d!2160787 (= (isDefined!13291 (findConcatSeparation!3002 lt!2462381 r3!135 Nil!66436 s!14361 s!14361)) (Exists!3815 lambda!390467))))

(declare-fun lt!2462500 () Unit!160326)

(assert (=> d!2160787 (= lt!2462500 (choose!51299 lt!2462381 r3!135 s!14361))))

(assert (=> d!2160787 (validRegex!8511 lt!2462381)))

(assert (=> d!2160787 (= (lemmaFindConcatSeparationEquivalentToExists!2766 lt!2462381 r3!135 s!14361) lt!2462500)))

(declare-fun bs!1839431 () Bool)

(assert (= bs!1839431 d!2160787))

(assert (=> bs!1839431 m!7611576))

(assert (=> bs!1839431 m!7611112))

(declare-fun m!7611638 () Bool)

(assert (=> bs!1839431 m!7611638))

(declare-fun m!7611640 () Bool)

(assert (=> bs!1839431 m!7611640))

(declare-fun m!7611642 () Bool)

(assert (=> bs!1839431 m!7611642))

(assert (=> bs!1839431 m!7611112))

(assert (=> b!6888564 d!2160787))

(declare-fun d!2160795 () Bool)

(assert (=> d!2160795 (= (get!23167 lt!2462384) (v!52859 lt!2462384))))

(assert (=> b!6888564 d!2160795))

(declare-fun d!2160797 () Bool)

(assert (=> d!2160797 (= (Exists!3815 lambda!390413) (choose!51298 lambda!390413))))

(declare-fun bs!1839432 () Bool)

(assert (= bs!1839432 d!2160797))

(declare-fun m!7611644 () Bool)

(assert (=> bs!1839432 m!7611644))

(assert (=> b!6888564 d!2160797))

(declare-fun bs!1839438 () Bool)

(declare-fun b!6889175 () Bool)

(assert (= bs!1839438 (and b!6889175 d!2160703)))

(declare-fun lambda!390470 () Int)

(assert (=> bs!1839438 (not (= lambda!390470 lambda!390449))))

(declare-fun bs!1839440 () Bool)

(assert (= bs!1839440 (and b!6889175 b!6888611)))

(assert (=> bs!1839440 (= (and (= (_1!36979 lt!2462393) (_2!36979 lt!2462407)) (= (reg!17132 lt!2462381) (reg!17132 r2!6280)) (= lt!2462381 r2!6280)) (= lambda!390470 lambda!390425))))

(assert (=> bs!1839438 (not (= lambda!390470 lambda!390451))))

(declare-fun bs!1839442 () Bool)

(assert (= bs!1839442 (and b!6889175 d!2160787)))

(assert (=> bs!1839442 (not (= lambda!390470 lambda!390467))))

(declare-fun bs!1839444 () Bool)

(assert (= bs!1839444 (and b!6889175 b!6888552)))

(assert (=> bs!1839444 (not (= lambda!390470 lambda!390417))))

(declare-fun bs!1839446 () Bool)

(assert (= bs!1839446 (and b!6889175 b!6888833)))

(assert (=> bs!1839446 (= (and (= (_1!36979 lt!2462393) s!14361) (= (reg!17132 lt!2462381) (reg!17132 lt!2462402)) (= lt!2462381 lt!2462402)) (= lambda!390470 lambda!390429))))

(declare-fun bs!1839448 () Bool)

(assert (= bs!1839448 (and b!6889175 d!2160775)))

(assert (=> bs!1839448 (not (= lambda!390470 lambda!390465))))

(declare-fun bs!1839450 () Bool)

(assert (= bs!1839450 (and b!6889175 b!6888548)))

(assert (=> bs!1839450 (not (= lambda!390470 lambda!390416))))

(declare-fun bs!1839452 () Bool)

(assert (= bs!1839452 (and b!6889175 b!6888612)))

(assert (=> bs!1839452 (not (= lambda!390470 lambda!390426))))

(declare-fun bs!1839454 () Bool)

(assert (= bs!1839454 (and b!6889175 d!2160731)))

(assert (=> bs!1839454 (not (= lambda!390470 lambda!390454))))

(declare-fun bs!1839455 () Bool)

(assert (= bs!1839455 (and b!6889175 d!2160749)))

(assert (=> bs!1839455 (not (= lambda!390470 lambda!390457))))

(declare-fun bs!1839457 () Bool)

(assert (= bs!1839457 (and b!6889175 b!6888569)))

(assert (=> bs!1839457 (not (= lambda!390470 lambda!390419))))

(declare-fun bs!1839458 () Bool)

(assert (= bs!1839458 (and b!6889175 b!6888853)))

(assert (=> bs!1839458 (= (and (= (_1!36979 lt!2462393) s!14361) (= (reg!17132 lt!2462381) (reg!17132 lt!2462403)) (= lt!2462381 lt!2462403)) (= lambda!390470 lambda!390431))))

(declare-fun bs!1839459 () Bool)

(assert (= bs!1839459 (and b!6889175 b!6888547)))

(assert (=> bs!1839459 (not (= lambda!390470 lambda!390420))))

(declare-fun bs!1839460 () Bool)

(assert (= bs!1839460 (and b!6889175 b!6888564)))

(assert (=> bs!1839460 (not (= lambda!390470 lambda!390414))))

(assert (=> bs!1839448 (not (= lambda!390470 lambda!390463))))

(declare-fun bs!1839461 () Bool)

(assert (= bs!1839461 (and b!6889175 b!6888623)))

(assert (=> bs!1839461 (not (= lambda!390470 lambda!390428))))

(declare-fun bs!1839462 () Bool)

(assert (= bs!1839462 (and b!6889175 b!6888854)))

(assert (=> bs!1839462 (not (= lambda!390470 lambda!390432))))

(declare-fun bs!1839463 () Bool)

(assert (= bs!1839463 (and b!6889175 b!6888834)))

(assert (=> bs!1839463 (not (= lambda!390470 lambda!390430))))

(assert (=> bs!1839444 (not (= lambda!390470 lambda!390418))))

(assert (=> bs!1839450 (not (= lambda!390470 lambda!390415))))

(declare-fun bs!1839464 () Bool)

(assert (= bs!1839464 (and b!6889175 b!6888622)))

(assert (=> bs!1839464 (= (and (= (_1!36979 lt!2462393) (_1!36979 lt!2462407)) (= (reg!17132 lt!2462381) (reg!17132 r1!6342)) (= lt!2462381 r1!6342)) (= lambda!390470 lambda!390427))))

(declare-fun bs!1839465 () Bool)

(assert (= bs!1839465 (and b!6889175 d!2160689)))

(assert (=> bs!1839465 (not (= lambda!390470 lambda!390438))))

(assert (=> bs!1839455 (not (= lambda!390470 lambda!390460))))

(assert (=> bs!1839460 (not (= lambda!390470 lambda!390413))))

(assert (=> b!6889175 true))

(assert (=> b!6889175 true))

(declare-fun bs!1839468 () Bool)

(declare-fun b!6889176 () Bool)

(assert (= bs!1839468 (and b!6889176 d!2160703)))

(declare-fun lambda!390472 () Int)

(assert (=> bs!1839468 (not (= lambda!390472 lambda!390449))))

(declare-fun bs!1839471 () Bool)

(assert (= bs!1839471 (and b!6889176 b!6888611)))

(assert (=> bs!1839471 (not (= lambda!390472 lambda!390425))))

(assert (=> bs!1839468 (= (and (= (regOne!34118 lt!2462381) r1!6342) (= (regTwo!34118 lt!2462381) r2!6280)) (= lambda!390472 lambda!390451))))

(declare-fun bs!1839474 () Bool)

(assert (= bs!1839474 (and b!6889176 d!2160787)))

(assert (=> bs!1839474 (not (= lambda!390472 lambda!390467))))

(declare-fun bs!1839475 () Bool)

(assert (= bs!1839475 (and b!6889176 b!6889175)))

(assert (=> bs!1839475 (not (= lambda!390472 lambda!390470))))

(declare-fun bs!1839477 () Bool)

(assert (= bs!1839477 (and b!6889176 b!6888552)))

(assert (=> bs!1839477 (not (= lambda!390472 lambda!390417))))

(declare-fun bs!1839478 () Bool)

(assert (= bs!1839478 (and b!6889176 b!6888833)))

(assert (=> bs!1839478 (not (= lambda!390472 lambda!390429))))

(declare-fun bs!1839480 () Bool)

(assert (= bs!1839480 (and b!6889176 d!2160775)))

(assert (=> bs!1839480 (= (and (= (_1!36979 lt!2462393) s!14361) (= (regOne!34118 lt!2462381) lt!2462381) (= (regTwo!34118 lt!2462381) r3!135)) (= lambda!390472 lambda!390465))))

(declare-fun bs!1839482 () Bool)

(assert (= bs!1839482 (and b!6889176 b!6888548)))

(assert (=> bs!1839482 (= (and (= (regOne!34118 lt!2462381) r1!6342) (= (regTwo!34118 lt!2462381) r2!6280)) (= lambda!390472 lambda!390416))))

(declare-fun bs!1839484 () Bool)

(assert (= bs!1839484 (and b!6889176 b!6888612)))

(assert (=> bs!1839484 (= (and (= (_1!36979 lt!2462393) (_2!36979 lt!2462407)) (= (regOne!34118 lt!2462381) (regOne!34118 r2!6280)) (= (regTwo!34118 lt!2462381) (regTwo!34118 r2!6280))) (= lambda!390472 lambda!390426))))

(declare-fun bs!1839485 () Bool)

(assert (= bs!1839485 (and b!6889176 d!2160731)))

(assert (=> bs!1839485 (not (= lambda!390472 lambda!390454))))

(declare-fun bs!1839487 () Bool)

(assert (= bs!1839487 (and b!6889176 d!2160749)))

(assert (=> bs!1839487 (not (= lambda!390472 lambda!390457))))

(declare-fun bs!1839489 () Bool)

(assert (= bs!1839489 (and b!6889176 b!6888569)))

(assert (=> bs!1839489 (not (= lambda!390472 lambda!390419))))

(declare-fun bs!1839491 () Bool)

(assert (= bs!1839491 (and b!6889176 b!6888853)))

(assert (=> bs!1839491 (not (= lambda!390472 lambda!390431))))

(declare-fun bs!1839493 () Bool)

(assert (= bs!1839493 (and b!6889176 b!6888547)))

(assert (=> bs!1839493 (= (and (= (_1!36979 lt!2462393) s!14361) (= (regOne!34118 lt!2462381) r1!6342) (= (regTwo!34118 lt!2462381) lt!2462386)) (= lambda!390472 lambda!390420))))

(declare-fun bs!1839494 () Bool)

(assert (= bs!1839494 (and b!6889176 b!6888564)))

(assert (=> bs!1839494 (= (and (= (_1!36979 lt!2462393) s!14361) (= (regOne!34118 lt!2462381) lt!2462381) (= (regTwo!34118 lt!2462381) r3!135)) (= lambda!390472 lambda!390414))))

(assert (=> bs!1839480 (not (= lambda!390472 lambda!390463))))

(declare-fun bs!1839496 () Bool)

(assert (= bs!1839496 (and b!6889176 b!6888623)))

(assert (=> bs!1839496 (= (and (= (_1!36979 lt!2462393) (_1!36979 lt!2462407)) (= (regOne!34118 lt!2462381) (regOne!34118 r1!6342)) (= (regTwo!34118 lt!2462381) (regTwo!34118 r1!6342))) (= lambda!390472 lambda!390428))))

(declare-fun bs!1839497 () Bool)

(assert (= bs!1839497 (and b!6889176 b!6888854)))

(assert (=> bs!1839497 (= (and (= (_1!36979 lt!2462393) s!14361) (= (regOne!34118 lt!2462381) (regOne!34118 lt!2462403)) (= (regTwo!34118 lt!2462381) (regTwo!34118 lt!2462403))) (= lambda!390472 lambda!390432))))

(declare-fun bs!1839498 () Bool)

(assert (= bs!1839498 (and b!6889176 b!6888834)))

(assert (=> bs!1839498 (= (and (= (_1!36979 lt!2462393) s!14361) (= (regOne!34118 lt!2462381) (regOne!34118 lt!2462402)) (= (regTwo!34118 lt!2462381) (regTwo!34118 lt!2462402))) (= lambda!390472 lambda!390430))))

(assert (=> bs!1839477 (= (and (= (_1!36979 lt!2462393) lt!2462383) (= (regOne!34118 lt!2462381) r2!6280) (= (regTwo!34118 lt!2462381) r3!135)) (= lambda!390472 lambda!390418))))

(assert (=> bs!1839482 (not (= lambda!390472 lambda!390415))))

(declare-fun bs!1839500 () Bool)

(assert (= bs!1839500 (and b!6889176 b!6888622)))

(assert (=> bs!1839500 (not (= lambda!390472 lambda!390427))))

(declare-fun bs!1839501 () Bool)

(assert (= bs!1839501 (and b!6889176 d!2160689)))

(assert (=> bs!1839501 (not (= lambda!390472 lambda!390438))))

(assert (=> bs!1839487 (= (and (= (_1!36979 lt!2462393) s!14361) (= (regOne!34118 lt!2462381) r1!6342) (= (regTwo!34118 lt!2462381) lt!2462386)) (= lambda!390472 lambda!390460))))

(assert (=> bs!1839494 (not (= lambda!390472 lambda!390413))))

(assert (=> b!6889176 true))

(assert (=> b!6889176 true))

(declare-fun b!6889174 () Bool)

(declare-fun e!4150457 () Bool)

(declare-fun call!626889 () Bool)

(assert (=> b!6889174 (= e!4150457 call!626889)))

(declare-fun e!4150455 () Bool)

(declare-fun call!626888 () Bool)

(assert (=> b!6889175 (= e!4150455 call!626888)))

(declare-fun e!4150452 () Bool)

(assert (=> b!6889176 (= e!4150452 call!626888)))

(declare-fun bm!626883 () Bool)

(declare-fun c!1280950 () Bool)

(assert (=> bm!626883 (= call!626888 (Exists!3815 (ite c!1280950 lambda!390470 lambda!390472)))))

(declare-fun b!6889177 () Bool)

(declare-fun e!4150454 () Bool)

(assert (=> b!6889177 (= e!4150454 (matchRSpec!3866 (regTwo!34119 lt!2462381) (_1!36979 lt!2462393)))))

(declare-fun bm!626884 () Bool)

(assert (=> bm!626884 (= call!626889 (isEmpty!38688 (_1!36979 lt!2462393)))))

(declare-fun b!6889179 () Bool)

(declare-fun c!1280949 () Bool)

(assert (=> b!6889179 (= c!1280949 ((_ is ElementMatch!16803) lt!2462381))))

(declare-fun e!4150453 () Bool)

(declare-fun e!4150458 () Bool)

(assert (=> b!6889179 (= e!4150453 e!4150458)))

(declare-fun b!6889180 () Bool)

(assert (=> b!6889180 (= e!4150458 (= (_1!36979 lt!2462393) (Cons!66436 (c!1280807 lt!2462381) Nil!66436)))))

(declare-fun b!6889178 () Bool)

(declare-fun e!4150456 () Bool)

(assert (=> b!6889178 (= e!4150456 e!4150454)))

(declare-fun res!2808842 () Bool)

(assert (=> b!6889178 (= res!2808842 (matchRSpec!3866 (regOne!34119 lt!2462381) (_1!36979 lt!2462393)))))

(assert (=> b!6889178 (=> res!2808842 e!4150454)))

(declare-fun d!2160799 () Bool)

(declare-fun c!1280948 () Bool)

(assert (=> d!2160799 (= c!1280948 ((_ is EmptyExpr!16803) lt!2462381))))

(assert (=> d!2160799 (= (matchRSpec!3866 lt!2462381 (_1!36979 lt!2462393)) e!4150457)))

(declare-fun b!6889181 () Bool)

(declare-fun res!2808841 () Bool)

(assert (=> b!6889181 (=> res!2808841 e!4150455)))

(assert (=> b!6889181 (= res!2808841 call!626889)))

(assert (=> b!6889181 (= e!4150452 e!4150455)))

(declare-fun b!6889182 () Bool)

(assert (=> b!6889182 (= e!4150456 e!4150452)))

(assert (=> b!6889182 (= c!1280950 ((_ is Star!16803) lt!2462381))))

(declare-fun b!6889183 () Bool)

(assert (=> b!6889183 (= e!4150457 e!4150453)))

(declare-fun res!2808843 () Bool)

(assert (=> b!6889183 (= res!2808843 (not ((_ is EmptyLang!16803) lt!2462381)))))

(assert (=> b!6889183 (=> (not res!2808843) (not e!4150453))))

(declare-fun b!6889184 () Bool)

(declare-fun c!1280947 () Bool)

(assert (=> b!6889184 (= c!1280947 ((_ is Union!16803) lt!2462381))))

(assert (=> b!6889184 (= e!4150458 e!4150456)))

(assert (= (and d!2160799 c!1280948) b!6889174))

(assert (= (and d!2160799 (not c!1280948)) b!6889183))

(assert (= (and b!6889183 res!2808843) b!6889179))

(assert (= (and b!6889179 c!1280949) b!6889180))

(assert (= (and b!6889179 (not c!1280949)) b!6889184))

(assert (= (and b!6889184 c!1280947) b!6889178))

(assert (= (and b!6889184 (not c!1280947)) b!6889182))

(assert (= (and b!6889178 (not res!2808842)) b!6889177))

(assert (= (and b!6889182 c!1280950) b!6889181))

(assert (= (and b!6889182 (not c!1280950)) b!6889176))

(assert (= (and b!6889181 (not res!2808841)) b!6889175))

(assert (= (or b!6889175 b!6889176) bm!626883))

(assert (= (or b!6889174 b!6889181) bm!626884))

(declare-fun m!7611676 () Bool)

(assert (=> bm!626883 m!7611676))

(declare-fun m!7611678 () Bool)

(assert (=> b!6889177 m!7611678))

(declare-fun m!7611680 () Bool)

(assert (=> bm!626884 m!7611680))

(declare-fun m!7611684 () Bool)

(assert (=> b!6889178 m!7611684))

(assert (=> b!6888564 d!2160799))

(declare-fun d!2160809 () Bool)

(assert (=> d!2160809 (= (matchR!8948 lt!2462381 (_1!36979 lt!2462393)) (matchRSpec!3866 lt!2462381 (_1!36979 lt!2462393)))))

(declare-fun lt!2462505 () Unit!160326)

(assert (=> d!2160809 (= lt!2462505 (choose!51292 lt!2462381 (_1!36979 lt!2462393)))))

(assert (=> d!2160809 (validRegex!8511 lt!2462381)))

(assert (=> d!2160809 (= (mainMatchTheorem!3866 lt!2462381 (_1!36979 lt!2462393)) lt!2462505)))

(declare-fun bs!1839502 () Bool)

(assert (= bs!1839502 d!2160809))

(assert (=> bs!1839502 m!7611126))

(assert (=> bs!1839502 m!7611130))

(declare-fun m!7611692 () Bool)

(assert (=> bs!1839502 m!7611692))

(assert (=> bs!1839502 m!7611576))

(assert (=> b!6888564 d!2160809))

(declare-fun b!6889208 () Bool)

(declare-fun e!4150477 () Bool)

(declare-fun lt!2462507 () Bool)

(assert (=> b!6889208 (= e!4150477 (not lt!2462507))))

(declare-fun b!6889209 () Bool)

(declare-fun res!2808859 () Bool)

(declare-fun e!4150475 () Bool)

(assert (=> b!6889209 (=> res!2808859 e!4150475)))

(assert (=> b!6889209 (= res!2808859 (not ((_ is ElementMatch!16803) lt!2462381)))))

(assert (=> b!6889209 (= e!4150477 e!4150475)))

(declare-fun b!6889210 () Bool)

(declare-fun e!4150480 () Bool)

(assert (=> b!6889210 (= e!4150480 (not (= (head!13818 (_1!36979 lt!2462393)) (c!1280807 lt!2462381))))))

(declare-fun b!6889211 () Bool)

(declare-fun e!4150478 () Bool)

(assert (=> b!6889211 (= e!4150478 (matchR!8948 (derivativeStep!5365 lt!2462381 (head!13818 (_1!36979 lt!2462393))) (tail!12870 (_1!36979 lt!2462393))))))

(declare-fun b!6889212 () Bool)

(declare-fun res!2808860 () Bool)

(declare-fun e!4150476 () Bool)

(assert (=> b!6889212 (=> (not res!2808860) (not e!4150476))))

(declare-fun call!626896 () Bool)

(assert (=> b!6889212 (= res!2808860 (not call!626896))))

(declare-fun b!6889213 () Bool)

(assert (=> b!6889213 (= e!4150476 (= (head!13818 (_1!36979 lt!2462393)) (c!1280807 lt!2462381)))))

(declare-fun bm!626891 () Bool)

(assert (=> bm!626891 (= call!626896 (isEmpty!38688 (_1!36979 lt!2462393)))))

(declare-fun b!6889214 () Bool)

(declare-fun res!2808856 () Bool)

(assert (=> b!6889214 (=> res!2808856 e!4150480)))

(assert (=> b!6889214 (= res!2808856 (not (isEmpty!38688 (tail!12870 (_1!36979 lt!2462393)))))))

(declare-fun b!6889215 () Bool)

(declare-fun e!4150479 () Bool)

(assert (=> b!6889215 (= e!4150479 e!4150480)))

(declare-fun res!2808862 () Bool)

(assert (=> b!6889215 (=> res!2808862 e!4150480)))

(assert (=> b!6889215 (= res!2808862 call!626896)))

(declare-fun d!2160815 () Bool)

(declare-fun e!4150481 () Bool)

(assert (=> d!2160815 e!4150481))

(declare-fun c!1280956 () Bool)

(assert (=> d!2160815 (= c!1280956 ((_ is EmptyExpr!16803) lt!2462381))))

(assert (=> d!2160815 (= lt!2462507 e!4150478)))

(declare-fun c!1280958 () Bool)

(assert (=> d!2160815 (= c!1280958 (isEmpty!38688 (_1!36979 lt!2462393)))))

(assert (=> d!2160815 (validRegex!8511 lt!2462381)))

(assert (=> d!2160815 (= (matchR!8948 lt!2462381 (_1!36979 lt!2462393)) lt!2462507)))

(declare-fun b!6889207 () Bool)

(assert (=> b!6889207 (= e!4150475 e!4150479)))

(declare-fun res!2808858 () Bool)

(assert (=> b!6889207 (=> (not res!2808858) (not e!4150479))))

(assert (=> b!6889207 (= res!2808858 (not lt!2462507))))

(declare-fun b!6889216 () Bool)

(declare-fun res!2808863 () Bool)

(assert (=> b!6889216 (=> (not res!2808863) (not e!4150476))))

(assert (=> b!6889216 (= res!2808863 (isEmpty!38688 (tail!12870 (_1!36979 lt!2462393))))))

(declare-fun b!6889217 () Bool)

(declare-fun res!2808861 () Bool)

(assert (=> b!6889217 (=> res!2808861 e!4150475)))

(assert (=> b!6889217 (= res!2808861 e!4150476)))

(declare-fun res!2808857 () Bool)

(assert (=> b!6889217 (=> (not res!2808857) (not e!4150476))))

(assert (=> b!6889217 (= res!2808857 lt!2462507)))

(declare-fun b!6889218 () Bool)

(assert (=> b!6889218 (= e!4150478 (nullable!6686 lt!2462381))))

(declare-fun b!6889219 () Bool)

(assert (=> b!6889219 (= e!4150481 e!4150477)))

(declare-fun c!1280957 () Bool)

(assert (=> b!6889219 (= c!1280957 ((_ is EmptyLang!16803) lt!2462381))))

(declare-fun b!6889220 () Bool)

(assert (=> b!6889220 (= e!4150481 (= lt!2462507 call!626896))))

(assert (= (and d!2160815 c!1280958) b!6889218))

(assert (= (and d!2160815 (not c!1280958)) b!6889211))

(assert (= (and d!2160815 c!1280956) b!6889220))

(assert (= (and d!2160815 (not c!1280956)) b!6889219))

(assert (= (and b!6889219 c!1280957) b!6889208))

(assert (= (and b!6889219 (not c!1280957)) b!6889209))

(assert (= (and b!6889209 (not res!2808859)) b!6889217))

(assert (= (and b!6889217 res!2808857) b!6889212))

(assert (= (and b!6889212 res!2808860) b!6889216))

(assert (= (and b!6889216 res!2808863) b!6889213))

(assert (= (and b!6889217 (not res!2808861)) b!6889207))

(assert (= (and b!6889207 res!2808858) b!6889215))

(assert (= (and b!6889215 (not res!2808862)) b!6889214))

(assert (= (and b!6889214 (not res!2808856)) b!6889210))

(assert (= (or b!6889220 b!6889212 b!6889215) bm!626891))

(declare-fun m!7611694 () Bool)

(assert (=> b!6889210 m!7611694))

(declare-fun m!7611696 () Bool)

(assert (=> b!6889214 m!7611696))

(assert (=> b!6889214 m!7611696))

(declare-fun m!7611698 () Bool)

(assert (=> b!6889214 m!7611698))

(assert (=> bm!626891 m!7611680))

(declare-fun m!7611700 () Bool)

(assert (=> b!6889218 m!7611700))

(assert (=> b!6889216 m!7611696))

(assert (=> b!6889216 m!7611696))

(assert (=> b!6889216 m!7611698))

(assert (=> d!2160815 m!7611680))

(assert (=> d!2160815 m!7611576))

(assert (=> b!6889211 m!7611694))

(assert (=> b!6889211 m!7611694))

(declare-fun m!7611702 () Bool)

(assert (=> b!6889211 m!7611702))

(assert (=> b!6889211 m!7611696))

(assert (=> b!6889211 m!7611702))

(assert (=> b!6889211 m!7611696))

(declare-fun m!7611704 () Bool)

(assert (=> b!6889211 m!7611704))

(assert (=> b!6889213 m!7611694))

(assert (=> b!6888564 d!2160815))

(declare-fun b!6889221 () Bool)

(declare-fun res!2808866 () Bool)

(declare-fun e!4150483 () Bool)

(assert (=> b!6889221 (=> res!2808866 e!4150483)))

(assert (=> b!6889221 (= res!2808866 (not ((_ is Concat!25648) r3!135)))))

(declare-fun e!4150485 () Bool)

(assert (=> b!6889221 (= e!4150485 e!4150483)))

(declare-fun c!1280960 () Bool)

(declare-fun c!1280959 () Bool)

(declare-fun bm!626892 () Bool)

(declare-fun call!626899 () Bool)

(assert (=> bm!626892 (= call!626899 (validRegex!8511 (ite c!1280960 (reg!17132 r3!135) (ite c!1280959 (regOne!34119 r3!135) (regTwo!34118 r3!135)))))))

(declare-fun bm!626893 () Bool)

(declare-fun call!626898 () Bool)

(assert (=> bm!626893 (= call!626898 (validRegex!8511 (ite c!1280959 (regTwo!34119 r3!135) (regOne!34118 r3!135))))))

(declare-fun b!6889222 () Bool)

(declare-fun e!4150487 () Bool)

(assert (=> b!6889222 (= e!4150487 e!4150485)))

(assert (=> b!6889222 (= c!1280959 ((_ is Union!16803) r3!135))))

(declare-fun b!6889223 () Bool)

(declare-fun e!4150486 () Bool)

(assert (=> b!6889223 (= e!4150486 call!626899)))

(declare-fun b!6889224 () Bool)

(declare-fun e!4150484 () Bool)

(assert (=> b!6889224 (= e!4150484 call!626898)))

(declare-fun b!6889225 () Bool)

(assert (=> b!6889225 (= e!4150487 e!4150486)))

(declare-fun res!2808865 () Bool)

(assert (=> b!6889225 (= res!2808865 (not (nullable!6686 (reg!17132 r3!135))))))

(assert (=> b!6889225 (=> (not res!2808865) (not e!4150486))))

(declare-fun bm!626894 () Bool)

(declare-fun call!626897 () Bool)

(assert (=> bm!626894 (= call!626897 call!626899)))

(declare-fun b!6889227 () Bool)

(declare-fun e!4150488 () Bool)

(assert (=> b!6889227 (= e!4150488 call!626897)))

(declare-fun b!6889228 () Bool)

(assert (=> b!6889228 (= e!4150483 e!4150488)))

(declare-fun res!2808867 () Bool)

(assert (=> b!6889228 (=> (not res!2808867) (not e!4150488))))

(assert (=> b!6889228 (= res!2808867 call!626898)))

(declare-fun b!6889229 () Bool)

(declare-fun res!2808864 () Bool)

(assert (=> b!6889229 (=> (not res!2808864) (not e!4150484))))

(assert (=> b!6889229 (= res!2808864 call!626897)))

(assert (=> b!6889229 (= e!4150485 e!4150484)))

(declare-fun b!6889226 () Bool)

(declare-fun e!4150482 () Bool)

(assert (=> b!6889226 (= e!4150482 e!4150487)))

(assert (=> b!6889226 (= c!1280960 ((_ is Star!16803) r3!135))))

(declare-fun d!2160817 () Bool)

(declare-fun res!2808868 () Bool)

(assert (=> d!2160817 (=> res!2808868 e!4150482)))

(assert (=> d!2160817 (= res!2808868 ((_ is ElementMatch!16803) r3!135))))

(assert (=> d!2160817 (= (validRegex!8511 r3!135) e!4150482)))

(assert (= (and d!2160817 (not res!2808868)) b!6889226))

(assert (= (and b!6889226 c!1280960) b!6889225))

(assert (= (and b!6889226 (not c!1280960)) b!6889222))

(assert (= (and b!6889225 res!2808865) b!6889223))

(assert (= (and b!6889222 c!1280959) b!6889229))

(assert (= (and b!6889222 (not c!1280959)) b!6889221))

(assert (= (and b!6889229 res!2808864) b!6889224))

(assert (= (and b!6889221 (not res!2808866)) b!6889228))

(assert (= (and b!6889228 res!2808867) b!6889227))

(assert (= (or b!6889229 b!6889227) bm!626894))

(assert (= (or b!6889224 b!6889228) bm!626893))

(assert (= (or b!6889223 bm!626894) bm!626892))

(declare-fun m!7611706 () Bool)

(assert (=> bm!626892 m!7611706))

(declare-fun m!7611708 () Bool)

(assert (=> bm!626893 m!7611708))

(declare-fun m!7611710 () Bool)

(assert (=> b!6889225 m!7611710))

(assert (=> b!6888553 d!2160817))

(declare-fun d!2160819 () Bool)

(assert (=> d!2160819 (= (Exists!3815 lambda!390417) (choose!51298 lambda!390417))))

(declare-fun bs!1839515 () Bool)

(assert (= bs!1839515 d!2160819))

(declare-fun m!7611712 () Bool)

(assert (=> bs!1839515 m!7611712))

(assert (=> b!6888552 d!2160819))

(declare-fun d!2160821 () Bool)

(assert (=> d!2160821 (= (isDefined!13291 (findConcatSeparation!3002 r2!6280 r3!135 Nil!66436 lt!2462383 lt!2462383)) (not (isEmpty!38691 (findConcatSeparation!3002 r2!6280 r3!135 Nil!66436 lt!2462383 lt!2462383))))))

(declare-fun bs!1839517 () Bool)

(assert (= bs!1839517 d!2160821))

(assert (=> bs!1839517 m!7611074))

(declare-fun m!7611714 () Bool)

(assert (=> bs!1839517 m!7611714))

(assert (=> b!6888552 d!2160821))

(declare-fun b!6889230 () Bool)

(declare-fun e!4150493 () Bool)

(assert (=> b!6889230 (= e!4150493 (matchR!8948 r3!135 lt!2462383))))

(declare-fun d!2160823 () Bool)

(declare-fun e!4150489 () Bool)

(assert (=> d!2160823 e!4150489))

(declare-fun res!2808871 () Bool)

(assert (=> d!2160823 (=> res!2808871 e!4150489)))

(declare-fun e!4150490 () Bool)

(assert (=> d!2160823 (= res!2808871 e!4150490)))

(declare-fun res!2808873 () Bool)

(assert (=> d!2160823 (=> (not res!2808873) (not e!4150490))))

(declare-fun lt!2462509 () Option!16588)

(assert (=> d!2160823 (= res!2808873 (isDefined!13291 lt!2462509))))

(declare-fun e!4150491 () Option!16588)

(assert (=> d!2160823 (= lt!2462509 e!4150491)))

(declare-fun c!1280962 () Bool)

(assert (=> d!2160823 (= c!1280962 e!4150493)))

(declare-fun res!2808872 () Bool)

(assert (=> d!2160823 (=> (not res!2808872) (not e!4150493))))

(assert (=> d!2160823 (= res!2808872 (matchR!8948 r2!6280 Nil!66436))))

(assert (=> d!2160823 (validRegex!8511 r2!6280)))

(assert (=> d!2160823 (= (findConcatSeparation!3002 r2!6280 r3!135 Nil!66436 lt!2462383 lt!2462383) lt!2462509)))

(declare-fun b!6889231 () Bool)

(declare-fun e!4150492 () Option!16588)

(assert (=> b!6889231 (= e!4150492 None!16587)))

(declare-fun b!6889232 () Bool)

(declare-fun res!2808869 () Bool)

(assert (=> b!6889232 (=> (not res!2808869) (not e!4150490))))

(assert (=> b!6889232 (= res!2808869 (matchR!8948 r3!135 (_2!36979 (get!23167 lt!2462509))))))

(declare-fun b!6889233 () Bool)

(assert (=> b!6889233 (= e!4150489 (not (isDefined!13291 lt!2462509)))))

(declare-fun b!6889234 () Bool)

(assert (=> b!6889234 (= e!4150491 (Some!16587 (tuple2!67353 Nil!66436 lt!2462383)))))

(declare-fun b!6889235 () Bool)

(declare-fun lt!2462510 () Unit!160326)

(declare-fun lt!2462508 () Unit!160326)

(assert (=> b!6889235 (= lt!2462510 lt!2462508)))

(assert (=> b!6889235 (= (++!14882 (++!14882 Nil!66436 (Cons!66436 (h!72884 lt!2462383) Nil!66436)) (t!380303 lt!2462383)) lt!2462383)))

(assert (=> b!6889235 (= lt!2462508 (lemmaMoveElementToOtherListKeepsConcatEq!2777 Nil!66436 (h!72884 lt!2462383) (t!380303 lt!2462383) lt!2462383))))

(assert (=> b!6889235 (= e!4150492 (findConcatSeparation!3002 r2!6280 r3!135 (++!14882 Nil!66436 (Cons!66436 (h!72884 lt!2462383) Nil!66436)) (t!380303 lt!2462383) lt!2462383))))

(declare-fun b!6889236 () Bool)

(declare-fun res!2808870 () Bool)

(assert (=> b!6889236 (=> (not res!2808870) (not e!4150490))))

(assert (=> b!6889236 (= res!2808870 (matchR!8948 r2!6280 (_1!36979 (get!23167 lt!2462509))))))

(declare-fun b!6889237 () Bool)

(assert (=> b!6889237 (= e!4150490 (= (++!14882 (_1!36979 (get!23167 lt!2462509)) (_2!36979 (get!23167 lt!2462509))) lt!2462383))))

(declare-fun b!6889238 () Bool)

(assert (=> b!6889238 (= e!4150491 e!4150492)))

(declare-fun c!1280961 () Bool)

(assert (=> b!6889238 (= c!1280961 ((_ is Nil!66436) lt!2462383))))

(assert (= (and d!2160823 res!2808872) b!6889230))

(assert (= (and d!2160823 c!1280962) b!6889234))

(assert (= (and d!2160823 (not c!1280962)) b!6889238))

(assert (= (and b!6889238 c!1280961) b!6889231))

(assert (= (and b!6889238 (not c!1280961)) b!6889235))

(assert (= (and d!2160823 res!2808873) b!6889236))

(assert (= (and b!6889236 res!2808870) b!6889232))

(assert (= (and b!6889232 res!2808869) b!6889237))

(assert (= (and d!2160823 (not res!2808871)) b!6889233))

(declare-fun m!7611716 () Bool)

(assert (=> b!6889230 m!7611716))

(declare-fun m!7611718 () Bool)

(assert (=> b!6889235 m!7611718))

(assert (=> b!6889235 m!7611718))

(declare-fun m!7611720 () Bool)

(assert (=> b!6889235 m!7611720))

(declare-fun m!7611722 () Bool)

(assert (=> b!6889235 m!7611722))

(assert (=> b!6889235 m!7611718))

(declare-fun m!7611724 () Bool)

(assert (=> b!6889235 m!7611724))

(declare-fun m!7611726 () Bool)

(assert (=> b!6889236 m!7611726))

(declare-fun m!7611728 () Bool)

(assert (=> b!6889236 m!7611728))

(assert (=> b!6889232 m!7611726))

(declare-fun m!7611730 () Bool)

(assert (=> b!6889232 m!7611730))

(declare-fun m!7611732 () Bool)

(assert (=> d!2160823 m!7611732))

(declare-fun m!7611734 () Bool)

(assert (=> d!2160823 m!7611734))

(assert (=> d!2160823 m!7611082))

(assert (=> b!6889237 m!7611726))

(declare-fun m!7611736 () Bool)

(assert (=> b!6889237 m!7611736))

(assert (=> b!6889233 m!7611732))

(assert (=> b!6888552 d!2160823))

(declare-fun bs!1839522 () Bool)

(declare-fun d!2160825 () Bool)

(assert (= bs!1839522 (and d!2160825 d!2160703)))

(declare-fun lambda!390475 () Int)

(assert (=> bs!1839522 (= (and (= lt!2462383 (_1!36979 lt!2462393)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!390475 lambda!390449))))

(declare-fun bs!1839523 () Bool)

(assert (= bs!1839523 (and d!2160825 b!6888611)))

(assert (=> bs!1839523 (not (= lambda!390475 lambda!390425))))

(assert (=> bs!1839522 (not (= lambda!390475 lambda!390451))))

(declare-fun bs!1839525 () Bool)

(assert (= bs!1839525 (and d!2160825 d!2160787)))

(assert (=> bs!1839525 (= (and (= lt!2462383 s!14361) (= r2!6280 lt!2462381)) (= lambda!390475 lambda!390467))))

(declare-fun bs!1839526 () Bool)

(assert (= bs!1839526 (and d!2160825 b!6889175)))

(assert (=> bs!1839526 (not (= lambda!390475 lambda!390470))))

(declare-fun bs!1839527 () Bool)

(assert (= bs!1839527 (and d!2160825 b!6888552)))

(assert (=> bs!1839527 (= lambda!390475 lambda!390417)))

(declare-fun bs!1839528 () Bool)

(assert (= bs!1839528 (and d!2160825 b!6888833)))

(assert (=> bs!1839528 (not (= lambda!390475 lambda!390429))))

(declare-fun bs!1839529 () Bool)

(assert (= bs!1839529 (and d!2160825 d!2160775)))

(assert (=> bs!1839529 (not (= lambda!390475 lambda!390465))))

(declare-fun bs!1839530 () Bool)

(assert (= bs!1839530 (and d!2160825 b!6888612)))

(assert (=> bs!1839530 (not (= lambda!390475 lambda!390426))))

(declare-fun bs!1839531 () Bool)

(assert (= bs!1839531 (and d!2160825 d!2160731)))

(assert (=> bs!1839531 (= (and (= lt!2462383 s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2462386)) (= lambda!390475 lambda!390454))))

(declare-fun bs!1839532 () Bool)

(assert (= bs!1839532 (and d!2160825 d!2160749)))

(assert (=> bs!1839532 (= (and (= lt!2462383 s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2462386)) (= lambda!390475 lambda!390457))))

(declare-fun bs!1839533 () Bool)

(assert (= bs!1839533 (and d!2160825 b!6888569)))

(assert (=> bs!1839533 (= (and (= lt!2462383 s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2462386)) (= lambda!390475 lambda!390419))))

(declare-fun bs!1839534 () Bool)

(assert (= bs!1839534 (and d!2160825 b!6888853)))

(assert (=> bs!1839534 (not (= lambda!390475 lambda!390431))))

(declare-fun bs!1839535 () Bool)

(assert (= bs!1839535 (and d!2160825 b!6888547)))

(assert (=> bs!1839535 (not (= lambda!390475 lambda!390420))))

(declare-fun bs!1839536 () Bool)

(assert (= bs!1839536 (and d!2160825 b!6888564)))

(assert (=> bs!1839536 (not (= lambda!390475 lambda!390414))))

(assert (=> bs!1839529 (= (and (= lt!2462383 s!14361) (= r2!6280 lt!2462381)) (= lambda!390475 lambda!390463))))

(declare-fun bs!1839537 () Bool)

(assert (= bs!1839537 (and d!2160825 b!6888623)))

(assert (=> bs!1839537 (not (= lambda!390475 lambda!390428))))

(declare-fun bs!1839538 () Bool)

(assert (= bs!1839538 (and d!2160825 b!6888854)))

(assert (=> bs!1839538 (not (= lambda!390475 lambda!390432))))

(declare-fun bs!1839539 () Bool)

(assert (= bs!1839539 (and d!2160825 b!6888834)))

(assert (=> bs!1839539 (not (= lambda!390475 lambda!390430))))

(assert (=> bs!1839527 (not (= lambda!390475 lambda!390418))))

(declare-fun bs!1839540 () Bool)

(assert (= bs!1839540 (and d!2160825 b!6888548)))

(assert (=> bs!1839540 (= (and (= lt!2462383 (_1!36979 lt!2462393)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!390475 lambda!390415))))

(declare-fun bs!1839541 () Bool)

(assert (= bs!1839541 (and d!2160825 b!6889176)))

(assert (=> bs!1839541 (not (= lambda!390475 lambda!390472))))

(assert (=> bs!1839540 (not (= lambda!390475 lambda!390416))))

(declare-fun bs!1839543 () Bool)

(assert (= bs!1839543 (and d!2160825 b!6888622)))

(assert (=> bs!1839543 (not (= lambda!390475 lambda!390427))))

(declare-fun bs!1839545 () Bool)

(assert (= bs!1839545 (and d!2160825 d!2160689)))

(assert (=> bs!1839545 (= (and (= lt!2462383 (_1!36979 lt!2462393)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!390475 lambda!390438))))

(assert (=> bs!1839532 (not (= lambda!390475 lambda!390460))))

(assert (=> bs!1839536 (= (and (= lt!2462383 s!14361) (= r2!6280 lt!2462381)) (= lambda!390475 lambda!390413))))

(assert (=> d!2160825 true))

(assert (=> d!2160825 true))

(assert (=> d!2160825 true))

(assert (=> d!2160825 (= (isDefined!13291 (findConcatSeparation!3002 r2!6280 r3!135 Nil!66436 lt!2462383 lt!2462383)) (Exists!3815 lambda!390475))))

(declare-fun lt!2462511 () Unit!160326)

(assert (=> d!2160825 (= lt!2462511 (choose!51299 r2!6280 r3!135 lt!2462383))))

(assert (=> d!2160825 (validRegex!8511 r2!6280)))

(assert (=> d!2160825 (= (lemmaFindConcatSeparationEquivalentToExists!2766 r2!6280 r3!135 lt!2462383) lt!2462511)))

(declare-fun bs!1839550 () Bool)

(assert (= bs!1839550 d!2160825))

(assert (=> bs!1839550 m!7611082))

(assert (=> bs!1839550 m!7611074))

(assert (=> bs!1839550 m!7611078))

(declare-fun m!7611744 () Bool)

(assert (=> bs!1839550 m!7611744))

(declare-fun m!7611746 () Bool)

(assert (=> bs!1839550 m!7611746))

(assert (=> bs!1839550 m!7611074))

(assert (=> b!6888552 d!2160825))

(declare-fun d!2160829 () Bool)

(assert (=> d!2160829 (= (Exists!3815 lambda!390418) (choose!51298 lambda!390418))))

(declare-fun bs!1839553 () Bool)

(assert (= bs!1839553 d!2160829))

(declare-fun m!7611748 () Bool)

(assert (=> bs!1839553 m!7611748))

(assert (=> b!6888552 d!2160829))

(declare-fun b!6889251 () Bool)

(declare-fun e!4150503 () Bool)

(declare-fun lt!2462512 () Bool)

(assert (=> b!6889251 (= e!4150503 (not lt!2462512))))

(declare-fun b!6889252 () Bool)

(declare-fun res!2808880 () Bool)

(declare-fun e!4150501 () Bool)

(assert (=> b!6889252 (=> res!2808880 e!4150501)))

(assert (=> b!6889252 (= res!2808880 (not ((_ is ElementMatch!16803) lt!2462386)))))

(assert (=> b!6889252 (= e!4150503 e!4150501)))

(declare-fun b!6889253 () Bool)

(declare-fun e!4150506 () Bool)

(assert (=> b!6889253 (= e!4150506 (not (= (head!13818 lt!2462383) (c!1280807 lt!2462386))))))

(declare-fun b!6889254 () Bool)

(declare-fun e!4150504 () Bool)

(assert (=> b!6889254 (= e!4150504 (matchR!8948 (derivativeStep!5365 lt!2462386 (head!13818 lt!2462383)) (tail!12870 lt!2462383)))))

(declare-fun b!6889255 () Bool)

(declare-fun res!2808881 () Bool)

(declare-fun e!4150502 () Bool)

(assert (=> b!6889255 (=> (not res!2808881) (not e!4150502))))

(declare-fun call!626902 () Bool)

(assert (=> b!6889255 (= res!2808881 (not call!626902))))

(declare-fun b!6889256 () Bool)

(assert (=> b!6889256 (= e!4150502 (= (head!13818 lt!2462383) (c!1280807 lt!2462386)))))

(declare-fun bm!626897 () Bool)

(assert (=> bm!626897 (= call!626902 (isEmpty!38688 lt!2462383))))

(declare-fun b!6889257 () Bool)

(declare-fun res!2808877 () Bool)

(assert (=> b!6889257 (=> res!2808877 e!4150506)))

(assert (=> b!6889257 (= res!2808877 (not (isEmpty!38688 (tail!12870 lt!2462383))))))

(declare-fun b!6889258 () Bool)

(declare-fun e!4150505 () Bool)

(assert (=> b!6889258 (= e!4150505 e!4150506)))

(declare-fun res!2808883 () Bool)

(assert (=> b!6889258 (=> res!2808883 e!4150506)))

(assert (=> b!6889258 (= res!2808883 call!626902)))

(declare-fun d!2160831 () Bool)

(declare-fun e!4150507 () Bool)

(assert (=> d!2160831 e!4150507))

(declare-fun c!1280967 () Bool)

(assert (=> d!2160831 (= c!1280967 ((_ is EmptyExpr!16803) lt!2462386))))

(assert (=> d!2160831 (= lt!2462512 e!4150504)))

(declare-fun c!1280969 () Bool)

(assert (=> d!2160831 (= c!1280969 (isEmpty!38688 lt!2462383))))

(assert (=> d!2160831 (validRegex!8511 lt!2462386)))

(assert (=> d!2160831 (= (matchR!8948 lt!2462386 lt!2462383) lt!2462512)))

(declare-fun b!6889250 () Bool)

(assert (=> b!6889250 (= e!4150501 e!4150505)))

(declare-fun res!2808879 () Bool)

(assert (=> b!6889250 (=> (not res!2808879) (not e!4150505))))

(assert (=> b!6889250 (= res!2808879 (not lt!2462512))))

(declare-fun b!6889259 () Bool)

(declare-fun res!2808884 () Bool)

(assert (=> b!6889259 (=> (not res!2808884) (not e!4150502))))

(assert (=> b!6889259 (= res!2808884 (isEmpty!38688 (tail!12870 lt!2462383)))))

(declare-fun b!6889260 () Bool)

(declare-fun res!2808882 () Bool)

(assert (=> b!6889260 (=> res!2808882 e!4150501)))

(assert (=> b!6889260 (= res!2808882 e!4150502)))

(declare-fun res!2808878 () Bool)

(assert (=> b!6889260 (=> (not res!2808878) (not e!4150502))))

(assert (=> b!6889260 (= res!2808878 lt!2462512)))

(declare-fun b!6889261 () Bool)

(assert (=> b!6889261 (= e!4150504 (nullable!6686 lt!2462386))))

(declare-fun b!6889262 () Bool)

(assert (=> b!6889262 (= e!4150507 e!4150503)))

(declare-fun c!1280968 () Bool)

(assert (=> b!6889262 (= c!1280968 ((_ is EmptyLang!16803) lt!2462386))))

(declare-fun b!6889263 () Bool)

(assert (=> b!6889263 (= e!4150507 (= lt!2462512 call!626902))))

(assert (= (and d!2160831 c!1280969) b!6889261))

(assert (= (and d!2160831 (not c!1280969)) b!6889254))

(assert (= (and d!2160831 c!1280967) b!6889263))

(assert (= (and d!2160831 (not c!1280967)) b!6889262))

(assert (= (and b!6889262 c!1280968) b!6889251))

(assert (= (and b!6889262 (not c!1280968)) b!6889252))

(assert (= (and b!6889252 (not res!2808880)) b!6889260))

(assert (= (and b!6889260 res!2808878) b!6889255))

(assert (= (and b!6889255 res!2808881) b!6889259))

(assert (= (and b!6889259 res!2808884) b!6889256))

(assert (= (and b!6889260 (not res!2808882)) b!6889250))

(assert (= (and b!6889250 res!2808879) b!6889258))

(assert (= (and b!6889258 (not res!2808883)) b!6889257))

(assert (= (and b!6889257 (not res!2808877)) b!6889253))

(assert (= (or b!6889263 b!6889255 b!6889258) bm!626897))

(declare-fun m!7611750 () Bool)

(assert (=> b!6889253 m!7611750))

(declare-fun m!7611752 () Bool)

(assert (=> b!6889257 m!7611752))

(assert (=> b!6889257 m!7611752))

(declare-fun m!7611754 () Bool)

(assert (=> b!6889257 m!7611754))

(declare-fun m!7611756 () Bool)

(assert (=> bm!626897 m!7611756))

(declare-fun m!7611758 () Bool)

(assert (=> b!6889261 m!7611758))

(assert (=> b!6889259 m!7611752))

(assert (=> b!6889259 m!7611752))

(assert (=> b!6889259 m!7611754))

(assert (=> d!2160831 m!7611756))

(assert (=> d!2160831 m!7611092))

(assert (=> b!6889254 m!7611750))

(assert (=> b!6889254 m!7611750))

(declare-fun m!7611760 () Bool)

(assert (=> b!6889254 m!7611760))

(assert (=> b!6889254 m!7611752))

(assert (=> b!6889254 m!7611760))

(assert (=> b!6889254 m!7611752))

(declare-fun m!7611762 () Bool)

(assert (=> b!6889254 m!7611762))

(assert (=> b!6889256 m!7611750))

(assert (=> b!6888552 d!2160831))

(declare-fun bs!1839563 () Bool)

(declare-fun b!6889265 () Bool)

(assert (= bs!1839563 (and b!6889265 d!2160703)))

(declare-fun lambda!390477 () Int)

(assert (=> bs!1839563 (not (= lambda!390477 lambda!390449))))

(declare-fun bs!1839564 () Bool)

(assert (= bs!1839564 (and b!6889265 b!6888611)))

(assert (=> bs!1839564 (= (and (= lt!2462383 (_2!36979 lt!2462407)) (= (reg!17132 lt!2462386) (reg!17132 r2!6280)) (= lt!2462386 r2!6280)) (= lambda!390477 lambda!390425))))

(assert (=> bs!1839563 (not (= lambda!390477 lambda!390451))))

(declare-fun bs!1839567 () Bool)

(assert (= bs!1839567 (and b!6889265 d!2160787)))

(assert (=> bs!1839567 (not (= lambda!390477 lambda!390467))))

(declare-fun bs!1839569 () Bool)

(assert (= bs!1839569 (and b!6889265 b!6889175)))

(assert (=> bs!1839569 (= (and (= lt!2462383 (_1!36979 lt!2462393)) (= (reg!17132 lt!2462386) (reg!17132 lt!2462381)) (= lt!2462386 lt!2462381)) (= lambda!390477 lambda!390470))))

(declare-fun bs!1839571 () Bool)

(assert (= bs!1839571 (and b!6889265 b!6888552)))

(assert (=> bs!1839571 (not (= lambda!390477 lambda!390417))))

(declare-fun bs!1839573 () Bool)

(assert (= bs!1839573 (and b!6889265 b!6888833)))

(assert (=> bs!1839573 (= (and (= lt!2462383 s!14361) (= (reg!17132 lt!2462386) (reg!17132 lt!2462402)) (= lt!2462386 lt!2462402)) (= lambda!390477 lambda!390429))))

(declare-fun bs!1839574 () Bool)

(assert (= bs!1839574 (and b!6889265 d!2160775)))

(assert (=> bs!1839574 (not (= lambda!390477 lambda!390465))))

(declare-fun bs!1839576 () Bool)

(assert (= bs!1839576 (and b!6889265 b!6888612)))

(assert (=> bs!1839576 (not (= lambda!390477 lambda!390426))))

(declare-fun bs!1839578 () Bool)

(assert (= bs!1839578 (and b!6889265 d!2160731)))

(assert (=> bs!1839578 (not (= lambda!390477 lambda!390454))))

(declare-fun bs!1839579 () Bool)

(assert (= bs!1839579 (and b!6889265 b!6888569)))

(assert (=> bs!1839579 (not (= lambda!390477 lambda!390419))))

(declare-fun bs!1839581 () Bool)

(assert (= bs!1839581 (and b!6889265 b!6888853)))

(assert (=> bs!1839581 (= (and (= lt!2462383 s!14361) (= (reg!17132 lt!2462386) (reg!17132 lt!2462403)) (= lt!2462386 lt!2462403)) (= lambda!390477 lambda!390431))))

(declare-fun bs!1839583 () Bool)

(assert (= bs!1839583 (and b!6889265 b!6888547)))

(assert (=> bs!1839583 (not (= lambda!390477 lambda!390420))))

(declare-fun bs!1839585 () Bool)

(assert (= bs!1839585 (and b!6889265 b!6888564)))

(assert (=> bs!1839585 (not (= lambda!390477 lambda!390414))))

(assert (=> bs!1839574 (not (= lambda!390477 lambda!390463))))

(declare-fun bs!1839587 () Bool)

(assert (= bs!1839587 (and b!6889265 b!6888623)))

(assert (=> bs!1839587 (not (= lambda!390477 lambda!390428))))

(declare-fun bs!1839589 () Bool)

(assert (= bs!1839589 (and b!6889265 b!6888854)))

(assert (=> bs!1839589 (not (= lambda!390477 lambda!390432))))

(declare-fun bs!1839591 () Bool)

(assert (= bs!1839591 (and b!6889265 b!6888834)))

(assert (=> bs!1839591 (not (= lambda!390477 lambda!390430))))

(assert (=> bs!1839571 (not (= lambda!390477 lambda!390418))))

(declare-fun bs!1839593 () Bool)

(assert (= bs!1839593 (and b!6889265 b!6888548)))

(assert (=> bs!1839593 (not (= lambda!390477 lambda!390415))))

(declare-fun bs!1839595 () Bool)

(assert (= bs!1839595 (and b!6889265 b!6889176)))

(assert (=> bs!1839595 (not (= lambda!390477 lambda!390472))))

(assert (=> bs!1839593 (not (= lambda!390477 lambda!390416))))

(declare-fun bs!1839598 () Bool)

(assert (= bs!1839598 (and b!6889265 b!6888622)))

(assert (=> bs!1839598 (= (and (= lt!2462383 (_1!36979 lt!2462407)) (= (reg!17132 lt!2462386) (reg!17132 r1!6342)) (= lt!2462386 r1!6342)) (= lambda!390477 lambda!390427))))

(declare-fun bs!1839600 () Bool)

(assert (= bs!1839600 (and b!6889265 d!2160689)))

(assert (=> bs!1839600 (not (= lambda!390477 lambda!390438))))

(declare-fun bs!1839601 () Bool)

(assert (= bs!1839601 (and b!6889265 d!2160749)))

(assert (=> bs!1839601 (not (= lambda!390477 lambda!390457))))

(declare-fun bs!1839602 () Bool)

(assert (= bs!1839602 (and b!6889265 d!2160825)))

(assert (=> bs!1839602 (not (= lambda!390477 lambda!390475))))

(assert (=> bs!1839601 (not (= lambda!390477 lambda!390460))))

(assert (=> bs!1839585 (not (= lambda!390477 lambda!390413))))

(assert (=> b!6889265 true))

(assert (=> b!6889265 true))

(declare-fun bs!1839604 () Bool)

(declare-fun b!6889266 () Bool)

(assert (= bs!1839604 (and b!6889266 d!2160703)))

(declare-fun lambda!390479 () Int)

(assert (=> bs!1839604 (not (= lambda!390479 lambda!390449))))

(declare-fun bs!1839605 () Bool)

(assert (= bs!1839605 (and b!6889266 b!6888611)))

(assert (=> bs!1839605 (not (= lambda!390479 lambda!390425))))

(assert (=> bs!1839604 (= (and (= lt!2462383 (_1!36979 lt!2462393)) (= (regOne!34118 lt!2462386) r1!6342) (= (regTwo!34118 lt!2462386) r2!6280)) (= lambda!390479 lambda!390451))))

(declare-fun bs!1839606 () Bool)

(assert (= bs!1839606 (and b!6889266 d!2160787)))

(assert (=> bs!1839606 (not (= lambda!390479 lambda!390467))))

(declare-fun bs!1839607 () Bool)

(assert (= bs!1839607 (and b!6889266 b!6889175)))

(assert (=> bs!1839607 (not (= lambda!390479 lambda!390470))))

(declare-fun bs!1839608 () Bool)

(assert (= bs!1839608 (and b!6889266 b!6888833)))

(assert (=> bs!1839608 (not (= lambda!390479 lambda!390429))))

(declare-fun bs!1839610 () Bool)

(assert (= bs!1839610 (and b!6889266 d!2160775)))

(assert (=> bs!1839610 (= (and (= lt!2462383 s!14361) (= (regOne!34118 lt!2462386) lt!2462381) (= (regTwo!34118 lt!2462386) r3!135)) (= lambda!390479 lambda!390465))))

(declare-fun bs!1839611 () Bool)

(assert (= bs!1839611 (and b!6889266 b!6888612)))

(assert (=> bs!1839611 (= (and (= lt!2462383 (_2!36979 lt!2462407)) (= (regOne!34118 lt!2462386) (regOne!34118 r2!6280)) (= (regTwo!34118 lt!2462386) (regTwo!34118 r2!6280))) (= lambda!390479 lambda!390426))))

(declare-fun bs!1839612 () Bool)

(assert (= bs!1839612 (and b!6889266 d!2160731)))

(assert (=> bs!1839612 (not (= lambda!390479 lambda!390454))))

(declare-fun bs!1839613 () Bool)

(assert (= bs!1839613 (and b!6889266 b!6888569)))

(assert (=> bs!1839613 (not (= lambda!390479 lambda!390419))))

(declare-fun bs!1839614 () Bool)

(assert (= bs!1839614 (and b!6889266 b!6888853)))

(assert (=> bs!1839614 (not (= lambda!390479 lambda!390431))))

(declare-fun bs!1839615 () Bool)

(assert (= bs!1839615 (and b!6889266 b!6888547)))

(assert (=> bs!1839615 (= (and (= lt!2462383 s!14361) (= (regOne!34118 lt!2462386) r1!6342) (= (regTwo!34118 lt!2462386) lt!2462386)) (= lambda!390479 lambda!390420))))

(declare-fun bs!1839616 () Bool)

(assert (= bs!1839616 (and b!6889266 b!6888564)))

(assert (=> bs!1839616 (= (and (= lt!2462383 s!14361) (= (regOne!34118 lt!2462386) lt!2462381) (= (regTwo!34118 lt!2462386) r3!135)) (= lambda!390479 lambda!390414))))

(assert (=> bs!1839610 (not (= lambda!390479 lambda!390463))))

(declare-fun bs!1839618 () Bool)

(assert (= bs!1839618 (and b!6889266 b!6888623)))

(assert (=> bs!1839618 (= (and (= lt!2462383 (_1!36979 lt!2462407)) (= (regOne!34118 lt!2462386) (regOne!34118 r1!6342)) (= (regTwo!34118 lt!2462386) (regTwo!34118 r1!6342))) (= lambda!390479 lambda!390428))))

(declare-fun bs!1839620 () Bool)

(assert (= bs!1839620 (and b!6889266 b!6888854)))

(assert (=> bs!1839620 (= (and (= lt!2462383 s!14361) (= (regOne!34118 lt!2462386) (regOne!34118 lt!2462403)) (= (regTwo!34118 lt!2462386) (regTwo!34118 lt!2462403))) (= lambda!390479 lambda!390432))))

(declare-fun bs!1839622 () Bool)

(assert (= bs!1839622 (and b!6889266 b!6888834)))

(assert (=> bs!1839622 (= (and (= lt!2462383 s!14361) (= (regOne!34118 lt!2462386) (regOne!34118 lt!2462402)) (= (regTwo!34118 lt!2462386) (regTwo!34118 lt!2462402))) (= lambda!390479 lambda!390430))))

(declare-fun bs!1839624 () Bool)

(assert (= bs!1839624 (and b!6889266 b!6888552)))

(assert (=> bs!1839624 (= (and (= (regOne!34118 lt!2462386) r2!6280) (= (regTwo!34118 lt!2462386) r3!135)) (= lambda!390479 lambda!390418))))

(declare-fun bs!1839625 () Bool)

(assert (= bs!1839625 (and b!6889266 b!6888548)))

(assert (=> bs!1839625 (not (= lambda!390479 lambda!390415))))

(declare-fun bs!1839627 () Bool)

(assert (= bs!1839627 (and b!6889266 b!6889265)))

(assert (=> bs!1839627 (not (= lambda!390479 lambda!390477))))

(assert (=> bs!1839624 (not (= lambda!390479 lambda!390417))))

(declare-fun bs!1839630 () Bool)

(assert (= bs!1839630 (and b!6889266 b!6889176)))

(assert (=> bs!1839630 (= (and (= lt!2462383 (_1!36979 lt!2462393)) (= (regOne!34118 lt!2462386) (regOne!34118 lt!2462381)) (= (regTwo!34118 lt!2462386) (regTwo!34118 lt!2462381))) (= lambda!390479 lambda!390472))))

(assert (=> bs!1839625 (= (and (= lt!2462383 (_1!36979 lt!2462393)) (= (regOne!34118 lt!2462386) r1!6342) (= (regTwo!34118 lt!2462386) r2!6280)) (= lambda!390479 lambda!390416))))

(declare-fun bs!1839632 () Bool)

(assert (= bs!1839632 (and b!6889266 b!6888622)))

(assert (=> bs!1839632 (not (= lambda!390479 lambda!390427))))

(declare-fun bs!1839634 () Bool)

(assert (= bs!1839634 (and b!6889266 d!2160689)))

(assert (=> bs!1839634 (not (= lambda!390479 lambda!390438))))

(declare-fun bs!1839636 () Bool)

(assert (= bs!1839636 (and b!6889266 d!2160749)))

(assert (=> bs!1839636 (not (= lambda!390479 lambda!390457))))

(declare-fun bs!1839637 () Bool)

(assert (= bs!1839637 (and b!6889266 d!2160825)))

(assert (=> bs!1839637 (not (= lambda!390479 lambda!390475))))

(assert (=> bs!1839636 (= (and (= lt!2462383 s!14361) (= (regOne!34118 lt!2462386) r1!6342) (= (regTwo!34118 lt!2462386) lt!2462386)) (= lambda!390479 lambda!390460))))

(assert (=> bs!1839616 (not (= lambda!390479 lambda!390413))))

(assert (=> b!6889266 true))

(assert (=> b!6889266 true))

(declare-fun b!6889264 () Bool)

(declare-fun e!4150513 () Bool)

(declare-fun call!626904 () Bool)

(assert (=> b!6889264 (= e!4150513 call!626904)))

(declare-fun e!4150511 () Bool)

(declare-fun call!626903 () Bool)

(assert (=> b!6889265 (= e!4150511 call!626903)))

(declare-fun e!4150508 () Bool)

(assert (=> b!6889266 (= e!4150508 call!626903)))

(declare-fun bm!626898 () Bool)

(declare-fun c!1280973 () Bool)

(assert (=> bm!626898 (= call!626903 (Exists!3815 (ite c!1280973 lambda!390477 lambda!390479)))))

(declare-fun b!6889267 () Bool)

(declare-fun e!4150510 () Bool)

(assert (=> b!6889267 (= e!4150510 (matchRSpec!3866 (regTwo!34119 lt!2462386) lt!2462383))))

(declare-fun bm!626899 () Bool)

(assert (=> bm!626899 (= call!626904 (isEmpty!38688 lt!2462383))))

(declare-fun b!6889269 () Bool)

(declare-fun c!1280972 () Bool)

(assert (=> b!6889269 (= c!1280972 ((_ is ElementMatch!16803) lt!2462386))))

(declare-fun e!4150509 () Bool)

(declare-fun e!4150514 () Bool)

(assert (=> b!6889269 (= e!4150509 e!4150514)))

(declare-fun b!6889270 () Bool)

(assert (=> b!6889270 (= e!4150514 (= lt!2462383 (Cons!66436 (c!1280807 lt!2462386) Nil!66436)))))

(declare-fun b!6889268 () Bool)

(declare-fun e!4150512 () Bool)

(assert (=> b!6889268 (= e!4150512 e!4150510)))

(declare-fun res!2808886 () Bool)

(assert (=> b!6889268 (= res!2808886 (matchRSpec!3866 (regOne!34119 lt!2462386) lt!2462383))))

(assert (=> b!6889268 (=> res!2808886 e!4150510)))

(declare-fun d!2160833 () Bool)

(declare-fun c!1280971 () Bool)

(assert (=> d!2160833 (= c!1280971 ((_ is EmptyExpr!16803) lt!2462386))))

(assert (=> d!2160833 (= (matchRSpec!3866 lt!2462386 lt!2462383) e!4150513)))

(declare-fun b!6889271 () Bool)

(declare-fun res!2808885 () Bool)

(assert (=> b!6889271 (=> res!2808885 e!4150511)))

(assert (=> b!6889271 (= res!2808885 call!626904)))

(assert (=> b!6889271 (= e!4150508 e!4150511)))

(declare-fun b!6889272 () Bool)

(assert (=> b!6889272 (= e!4150512 e!4150508)))

(assert (=> b!6889272 (= c!1280973 ((_ is Star!16803) lt!2462386))))

(declare-fun b!6889273 () Bool)

(assert (=> b!6889273 (= e!4150513 e!4150509)))

(declare-fun res!2808887 () Bool)

(assert (=> b!6889273 (= res!2808887 (not ((_ is EmptyLang!16803) lt!2462386)))))

(assert (=> b!6889273 (=> (not res!2808887) (not e!4150509))))

(declare-fun b!6889274 () Bool)

(declare-fun c!1280970 () Bool)

(assert (=> b!6889274 (= c!1280970 ((_ is Union!16803) lt!2462386))))

(assert (=> b!6889274 (= e!4150514 e!4150512)))

(assert (= (and d!2160833 c!1280971) b!6889264))

(assert (= (and d!2160833 (not c!1280971)) b!6889273))

(assert (= (and b!6889273 res!2808887) b!6889269))

(assert (= (and b!6889269 c!1280972) b!6889270))

(assert (= (and b!6889269 (not c!1280972)) b!6889274))

(assert (= (and b!6889274 c!1280970) b!6889268))

(assert (= (and b!6889274 (not c!1280970)) b!6889272))

(assert (= (and b!6889268 (not res!2808886)) b!6889267))

(assert (= (and b!6889272 c!1280973) b!6889271))

(assert (= (and b!6889272 (not c!1280973)) b!6889266))

(assert (= (and b!6889271 (not res!2808885)) b!6889265))

(assert (= (or b!6889265 b!6889266) bm!626898))

(assert (= (or b!6889264 b!6889271) bm!626899))

(declare-fun m!7611780 () Bool)

(assert (=> bm!626898 m!7611780))

(declare-fun m!7611782 () Bool)

(assert (=> b!6889267 m!7611782))

(assert (=> bm!626899 m!7611756))

(declare-fun m!7611784 () Bool)

(assert (=> b!6889268 m!7611784))

(assert (=> b!6888552 d!2160833))

(declare-fun b!6889291 () Bool)

(declare-fun e!4150525 () List!66560)

(assert (=> b!6889291 (= e!4150525 (Cons!66436 (h!72884 (_2!36979 lt!2462407)) (++!14882 (t!380303 (_2!36979 lt!2462407)) (_2!36979 lt!2462393))))))

(declare-fun lt!2462516 () List!66560)

(declare-fun b!6889293 () Bool)

(declare-fun e!4150524 () Bool)

(assert (=> b!6889293 (= e!4150524 (or (not (= (_2!36979 lt!2462393) Nil!66436)) (= lt!2462516 (_2!36979 lt!2462407))))))

(declare-fun b!6889290 () Bool)

(assert (=> b!6889290 (= e!4150525 (_2!36979 lt!2462393))))

(declare-fun d!2160843 () Bool)

(assert (=> d!2160843 e!4150524))

(declare-fun res!2808893 () Bool)

(assert (=> d!2160843 (=> (not res!2808893) (not e!4150524))))

(assert (=> d!2160843 (= res!2808893 (= (content!13047 lt!2462516) ((_ map or) (content!13047 (_2!36979 lt!2462407)) (content!13047 (_2!36979 lt!2462393)))))))

(assert (=> d!2160843 (= lt!2462516 e!4150525)))

(declare-fun c!1280979 () Bool)

(assert (=> d!2160843 (= c!1280979 ((_ is Nil!66436) (_2!36979 lt!2462407)))))

(assert (=> d!2160843 (= (++!14882 (_2!36979 lt!2462407) (_2!36979 lt!2462393)) lt!2462516)))

(declare-fun b!6889292 () Bool)

(declare-fun res!2808894 () Bool)

(assert (=> b!6889292 (=> (not res!2808894) (not e!4150524))))

(assert (=> b!6889292 (= res!2808894 (= (size!40744 lt!2462516) (+ (size!40744 (_2!36979 lt!2462407)) (size!40744 (_2!36979 lt!2462393)))))))

(assert (= (and d!2160843 c!1280979) b!6889290))

(assert (= (and d!2160843 (not c!1280979)) b!6889291))

(assert (= (and d!2160843 res!2808893) b!6889292))

(assert (= (and b!6889292 res!2808894) b!6889293))

(declare-fun m!7611786 () Bool)

(assert (=> b!6889291 m!7611786))

(declare-fun m!7611788 () Bool)

(assert (=> d!2160843 m!7611788))

(assert (=> d!2160843 m!7611156))

(assert (=> d!2160843 m!7611172))

(declare-fun m!7611790 () Bool)

(assert (=> b!6889292 m!7611790))

(assert (=> b!6889292 m!7611162))

(assert (=> b!6889292 m!7611178))

(assert (=> b!6888552 d!2160843))

(declare-fun d!2160845 () Bool)

(assert (=> d!2160845 (= (matchR!8948 lt!2462386 lt!2462383) (matchRSpec!3866 lt!2462386 lt!2462383))))

(declare-fun lt!2462517 () Unit!160326)

(assert (=> d!2160845 (= lt!2462517 (choose!51292 lt!2462386 lt!2462383))))

(assert (=> d!2160845 (validRegex!8511 lt!2462386)))

(assert (=> d!2160845 (= (mainMatchTheorem!3866 lt!2462386 lt!2462383) lt!2462517)))

(declare-fun bs!1839647 () Bool)

(assert (= bs!1839647 d!2160845))

(assert (=> bs!1839647 m!7611072))

(assert (=> bs!1839647 m!7611076))

(declare-fun m!7611792 () Bool)

(assert (=> bs!1839647 m!7611792))

(assert (=> bs!1839647 m!7611092))

(assert (=> b!6888552 d!2160845))

(declare-fun d!2160847 () Bool)

(assert (=> d!2160847 (isDefined!13291 (findConcatSeparation!3002 r2!6280 r3!135 Nil!66436 lt!2462383 lt!2462383))))

(declare-fun lt!2462518 () Unit!160326)

(assert (=> d!2160847 (= lt!2462518 (choose!51302 r2!6280 r3!135 (_2!36979 lt!2462407) (_2!36979 lt!2462393) lt!2462383 Nil!66436 lt!2462383))))

(assert (=> d!2160847 (validRegex!8511 r2!6280)))

(assert (=> d!2160847 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!50 r2!6280 r3!135 (_2!36979 lt!2462407) (_2!36979 lt!2462393) lt!2462383 Nil!66436 lt!2462383) lt!2462518)))

(declare-fun bs!1839649 () Bool)

(assert (= bs!1839649 d!2160847))

(assert (=> bs!1839649 m!7611074))

(assert (=> bs!1839649 m!7611074))

(assert (=> bs!1839649 m!7611078))

(declare-fun m!7611794 () Bool)

(assert (=> bs!1839649 m!7611794))

(assert (=> bs!1839649 m!7611082))

(assert (=> b!6888552 d!2160847))

(declare-fun bs!1839655 () Bool)

(declare-fun d!2160849 () Bool)

(assert (= bs!1839655 (and d!2160849 d!2160703)))

(declare-fun lambda!390482 () Int)

(assert (=> bs!1839655 (= (and (= lt!2462383 (_1!36979 lt!2462393)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!390482 lambda!390449))))

(declare-fun bs!1839657 () Bool)

(assert (= bs!1839657 (and d!2160849 b!6888611)))

(assert (=> bs!1839657 (not (= lambda!390482 lambda!390425))))

(assert (=> bs!1839655 (not (= lambda!390482 lambda!390451))))

(declare-fun bs!1839660 () Bool)

(assert (= bs!1839660 (and d!2160849 d!2160787)))

(assert (=> bs!1839660 (= (and (= lt!2462383 s!14361) (= r2!6280 lt!2462381)) (= lambda!390482 lambda!390467))))

(declare-fun bs!1839661 () Bool)

(assert (= bs!1839661 (and d!2160849 b!6889175)))

(assert (=> bs!1839661 (not (= lambda!390482 lambda!390470))))

(declare-fun bs!1839663 () Bool)

(assert (= bs!1839663 (and d!2160849 b!6888833)))

(assert (=> bs!1839663 (not (= lambda!390482 lambda!390429))))

(declare-fun bs!1839665 () Bool)

(assert (= bs!1839665 (and d!2160849 d!2160775)))

(assert (=> bs!1839665 (not (= lambda!390482 lambda!390465))))

(declare-fun bs!1839666 () Bool)

(assert (= bs!1839666 (and d!2160849 b!6888612)))

(assert (=> bs!1839666 (not (= lambda!390482 lambda!390426))))

(declare-fun bs!1839668 () Bool)

(assert (= bs!1839668 (and d!2160849 d!2160731)))

(assert (=> bs!1839668 (= (and (= lt!2462383 s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2462386)) (= lambda!390482 lambda!390454))))

(declare-fun bs!1839670 () Bool)

(assert (= bs!1839670 (and d!2160849 b!6888569)))

(assert (=> bs!1839670 (= (and (= lt!2462383 s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2462386)) (= lambda!390482 lambda!390419))))

(declare-fun bs!1839671 () Bool)

(assert (= bs!1839671 (and d!2160849 b!6888853)))

(assert (=> bs!1839671 (not (= lambda!390482 lambda!390431))))

(declare-fun bs!1839673 () Bool)

(assert (= bs!1839673 (and d!2160849 b!6888547)))

(assert (=> bs!1839673 (not (= lambda!390482 lambda!390420))))

(declare-fun bs!1839675 () Bool)

(assert (= bs!1839675 (and d!2160849 b!6888564)))

(assert (=> bs!1839675 (not (= lambda!390482 lambda!390414))))

(assert (=> bs!1839665 (= (and (= lt!2462383 s!14361) (= r2!6280 lt!2462381)) (= lambda!390482 lambda!390463))))

(declare-fun bs!1839678 () Bool)

(assert (= bs!1839678 (and d!2160849 b!6888623)))

(assert (=> bs!1839678 (not (= lambda!390482 lambda!390428))))

(declare-fun bs!1839680 () Bool)

(assert (= bs!1839680 (and d!2160849 b!6888854)))

(assert (=> bs!1839680 (not (= lambda!390482 lambda!390432))))

(declare-fun bs!1839682 () Bool)

(assert (= bs!1839682 (and d!2160849 b!6888834)))

(assert (=> bs!1839682 (not (= lambda!390482 lambda!390430))))

(declare-fun bs!1839683 () Bool)

(assert (= bs!1839683 (and d!2160849 b!6888552)))

(assert (=> bs!1839683 (not (= lambda!390482 lambda!390418))))

(declare-fun bs!1839685 () Bool)

(assert (= bs!1839685 (and d!2160849 b!6888548)))

(assert (=> bs!1839685 (= (and (= lt!2462383 (_1!36979 lt!2462393)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!390482 lambda!390415))))

(declare-fun bs!1839686 () Bool)

(assert (= bs!1839686 (and d!2160849 b!6889265)))

(assert (=> bs!1839686 (not (= lambda!390482 lambda!390477))))

(assert (=> bs!1839683 (= lambda!390482 lambda!390417)))

(declare-fun bs!1839687 () Bool)

(assert (= bs!1839687 (and d!2160849 b!6889176)))

(assert (=> bs!1839687 (not (= lambda!390482 lambda!390472))))

(assert (=> bs!1839685 (not (= lambda!390482 lambda!390416))))

(declare-fun bs!1839688 () Bool)

(assert (= bs!1839688 (and d!2160849 b!6888622)))

(assert (=> bs!1839688 (not (= lambda!390482 lambda!390427))))

(declare-fun bs!1839689 () Bool)

(assert (= bs!1839689 (and d!2160849 d!2160689)))

(assert (=> bs!1839689 (= (and (= lt!2462383 (_1!36979 lt!2462393)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!390482 lambda!390438))))

(declare-fun bs!1839690 () Bool)

(assert (= bs!1839690 (and d!2160849 d!2160749)))

(assert (=> bs!1839690 (= (and (= lt!2462383 s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2462386)) (= lambda!390482 lambda!390457))))

(declare-fun bs!1839691 () Bool)

(assert (= bs!1839691 (and d!2160849 d!2160825)))

(assert (=> bs!1839691 (= lambda!390482 lambda!390475)))

(assert (=> bs!1839690 (not (= lambda!390482 lambda!390460))))

(assert (=> bs!1839675 (= (and (= lt!2462383 s!14361) (= r2!6280 lt!2462381)) (= lambda!390482 lambda!390413))))

(declare-fun bs!1839692 () Bool)

(assert (= bs!1839692 (and d!2160849 b!6889266)))

(assert (=> bs!1839692 (not (= lambda!390482 lambda!390479))))

(assert (=> d!2160849 true))

(assert (=> d!2160849 true))

(assert (=> d!2160849 true))

(declare-fun lambda!390483 () Int)

(assert (=> bs!1839655 (not (= lambda!390483 lambda!390449))))

(assert (=> bs!1839657 (not (= lambda!390483 lambda!390425))))

(assert (=> bs!1839655 (= (and (= lt!2462383 (_1!36979 lt!2462393)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!390483 lambda!390451))))

(assert (=> bs!1839660 (not (= lambda!390483 lambda!390467))))

(assert (=> bs!1839661 (not (= lambda!390483 lambda!390470))))

(assert (=> bs!1839663 (not (= lambda!390483 lambda!390429))))

(assert (=> bs!1839665 (= (and (= lt!2462383 s!14361) (= r2!6280 lt!2462381)) (= lambda!390483 lambda!390465))))

(assert (=> bs!1839666 (= (and (= lt!2462383 (_2!36979 lt!2462407)) (= r2!6280 (regOne!34118 r2!6280)) (= r3!135 (regTwo!34118 r2!6280))) (= lambda!390483 lambda!390426))))

(assert (=> bs!1839668 (not (= lambda!390483 lambda!390454))))

(assert (=> bs!1839670 (not (= lambda!390483 lambda!390419))))

(assert (=> bs!1839671 (not (= lambda!390483 lambda!390431))))

(assert (=> bs!1839673 (= (and (= lt!2462383 s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2462386)) (= lambda!390483 lambda!390420))))

(assert (=> bs!1839675 (= (and (= lt!2462383 s!14361) (= r2!6280 lt!2462381)) (= lambda!390483 lambda!390414))))

(declare-fun bs!1839701 () Bool)

(assert (= bs!1839701 d!2160849))

(assert (=> bs!1839701 (not (= lambda!390483 lambda!390482))))

(assert (=> bs!1839665 (not (= lambda!390483 lambda!390463))))

(assert (=> bs!1839678 (= (and (= lt!2462383 (_1!36979 lt!2462407)) (= r2!6280 (regOne!34118 r1!6342)) (= r3!135 (regTwo!34118 r1!6342))) (= lambda!390483 lambda!390428))))

(assert (=> bs!1839680 (= (and (= lt!2462383 s!14361) (= r2!6280 (regOne!34118 lt!2462403)) (= r3!135 (regTwo!34118 lt!2462403))) (= lambda!390483 lambda!390432))))

(assert (=> bs!1839682 (= (and (= lt!2462383 s!14361) (= r2!6280 (regOne!34118 lt!2462402)) (= r3!135 (regTwo!34118 lt!2462402))) (= lambda!390483 lambda!390430))))

(assert (=> bs!1839683 (= lambda!390483 lambda!390418)))

(assert (=> bs!1839685 (not (= lambda!390483 lambda!390415))))

(assert (=> bs!1839686 (not (= lambda!390483 lambda!390477))))

(assert (=> bs!1839683 (not (= lambda!390483 lambda!390417))))

(assert (=> bs!1839687 (= (and (= lt!2462383 (_1!36979 lt!2462393)) (= r2!6280 (regOne!34118 lt!2462381)) (= r3!135 (regTwo!34118 lt!2462381))) (= lambda!390483 lambda!390472))))

(assert (=> bs!1839685 (= (and (= lt!2462383 (_1!36979 lt!2462393)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!390483 lambda!390416))))

(assert (=> bs!1839688 (not (= lambda!390483 lambda!390427))))

(assert (=> bs!1839689 (not (= lambda!390483 lambda!390438))))

(assert (=> bs!1839690 (not (= lambda!390483 lambda!390457))))

(assert (=> bs!1839691 (not (= lambda!390483 lambda!390475))))

(assert (=> bs!1839690 (= (and (= lt!2462383 s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2462386)) (= lambda!390483 lambda!390460))))

(assert (=> bs!1839675 (not (= lambda!390483 lambda!390413))))

(assert (=> bs!1839692 (= (and (= r2!6280 (regOne!34118 lt!2462386)) (= r3!135 (regTwo!34118 lt!2462386))) (= lambda!390483 lambda!390479))))

(assert (=> d!2160849 true))

(assert (=> d!2160849 true))

(assert (=> d!2160849 true))

(assert (=> d!2160849 (= (Exists!3815 lambda!390482) (Exists!3815 lambda!390483))))

(declare-fun lt!2462519 () Unit!160326)

(assert (=> d!2160849 (= lt!2462519 (choose!51300 r2!6280 r3!135 lt!2462383))))

(assert (=> d!2160849 (validRegex!8511 r2!6280)))

(assert (=> d!2160849 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2294 r2!6280 r3!135 lt!2462383) lt!2462519)))

(declare-fun m!7611812 () Bool)

(assert (=> bs!1839701 m!7611812))

(declare-fun m!7611814 () Bool)

(assert (=> bs!1839701 m!7611814))

(declare-fun m!7611816 () Bool)

(assert (=> bs!1839701 m!7611816))

(assert (=> bs!1839701 m!7611082))

(assert (=> b!6888552 d!2160849))

(declare-fun b!6889322 () Bool)

(declare-fun e!4150537 () Bool)

(declare-fun tp!1895314 () Bool)

(declare-fun tp!1895316 () Bool)

(assert (=> b!6889322 (= e!4150537 (and tp!1895314 tp!1895316))))

(assert (=> b!6888555 (= tp!1895302 e!4150537)))

(declare-fun b!6889320 () Bool)

(declare-fun tp!1895317 () Bool)

(declare-fun tp!1895318 () Bool)

(assert (=> b!6889320 (= e!4150537 (and tp!1895317 tp!1895318))))

(declare-fun b!6889319 () Bool)

(assert (=> b!6889319 (= e!4150537 tp_is_empty!42831)))

(declare-fun b!6889321 () Bool)

(declare-fun tp!1895315 () Bool)

(assert (=> b!6889321 (= e!4150537 tp!1895315)))

(assert (= (and b!6888555 ((_ is ElementMatch!16803) (reg!17132 r1!6342))) b!6889319))

(assert (= (and b!6888555 ((_ is Concat!25648) (reg!17132 r1!6342))) b!6889320))

(assert (= (and b!6888555 ((_ is Star!16803) (reg!17132 r1!6342))) b!6889321))

(assert (= (and b!6888555 ((_ is Union!16803) (reg!17132 r1!6342))) b!6889322))

(declare-fun b!6889327 () Bool)

(declare-fun e!4150540 () Bool)

(declare-fun tp!1895321 () Bool)

(assert (=> b!6889327 (= e!4150540 (and tp_is_empty!42831 tp!1895321))))

(assert (=> b!6888570 (= tp!1895303 e!4150540)))

(assert (= (and b!6888570 ((_ is Cons!66436) (t!380303 s!14361))) b!6889327))

(declare-fun b!6889331 () Bool)

(declare-fun e!4150541 () Bool)

(declare-fun tp!1895322 () Bool)

(declare-fun tp!1895324 () Bool)

(assert (=> b!6889331 (= e!4150541 (and tp!1895322 tp!1895324))))

(assert (=> b!6888565 (= tp!1895301 e!4150541)))

(declare-fun b!6889329 () Bool)

(declare-fun tp!1895325 () Bool)

(declare-fun tp!1895326 () Bool)

(assert (=> b!6889329 (= e!4150541 (and tp!1895325 tp!1895326))))

(declare-fun b!6889328 () Bool)

(assert (=> b!6889328 (= e!4150541 tp_is_empty!42831)))

(declare-fun b!6889330 () Bool)

(declare-fun tp!1895323 () Bool)

(assert (=> b!6889330 (= e!4150541 tp!1895323)))

(assert (= (and b!6888565 ((_ is ElementMatch!16803) (reg!17132 r2!6280))) b!6889328))

(assert (= (and b!6888565 ((_ is Concat!25648) (reg!17132 r2!6280))) b!6889329))

(assert (= (and b!6888565 ((_ is Star!16803) (reg!17132 r2!6280))) b!6889330))

(assert (= (and b!6888565 ((_ is Union!16803) (reg!17132 r2!6280))) b!6889331))

(declare-fun b!6889335 () Bool)

(declare-fun e!4150542 () Bool)

(declare-fun tp!1895327 () Bool)

(declare-fun tp!1895329 () Bool)

(assert (=> b!6889335 (= e!4150542 (and tp!1895327 tp!1895329))))

(assert (=> b!6888568 (= tp!1895291 e!4150542)))

(declare-fun b!6889333 () Bool)

(declare-fun tp!1895330 () Bool)

(declare-fun tp!1895331 () Bool)

(assert (=> b!6889333 (= e!4150542 (and tp!1895330 tp!1895331))))

(declare-fun b!6889332 () Bool)

(assert (=> b!6889332 (= e!4150542 tp_is_empty!42831)))

(declare-fun b!6889334 () Bool)

(declare-fun tp!1895328 () Bool)

(assert (=> b!6889334 (= e!4150542 tp!1895328)))

(assert (= (and b!6888568 ((_ is ElementMatch!16803) (reg!17132 r3!135))) b!6889332))

(assert (= (and b!6888568 ((_ is Concat!25648) (reg!17132 r3!135))) b!6889333))

(assert (= (and b!6888568 ((_ is Star!16803) (reg!17132 r3!135))) b!6889334))

(assert (= (and b!6888568 ((_ is Union!16803) (reg!17132 r3!135))) b!6889335))

(declare-fun b!6889339 () Bool)

(declare-fun e!4150543 () Bool)

(declare-fun tp!1895332 () Bool)

(declare-fun tp!1895334 () Bool)

(assert (=> b!6889339 (= e!4150543 (and tp!1895332 tp!1895334))))

(assert (=> b!6888563 (= tp!1895299 e!4150543)))

(declare-fun b!6889337 () Bool)

(declare-fun tp!1895335 () Bool)

(declare-fun tp!1895336 () Bool)

(assert (=> b!6889337 (= e!4150543 (and tp!1895335 tp!1895336))))

(declare-fun b!6889336 () Bool)

(assert (=> b!6889336 (= e!4150543 tp_is_empty!42831)))

(declare-fun b!6889338 () Bool)

(declare-fun tp!1895333 () Bool)

(assert (=> b!6889338 (= e!4150543 tp!1895333)))

(assert (= (and b!6888563 ((_ is ElementMatch!16803) (regOne!34119 r3!135))) b!6889336))

(assert (= (and b!6888563 ((_ is Concat!25648) (regOne!34119 r3!135))) b!6889337))

(assert (= (and b!6888563 ((_ is Star!16803) (regOne!34119 r3!135))) b!6889338))

(assert (= (and b!6888563 ((_ is Union!16803) (regOne!34119 r3!135))) b!6889339))

(declare-fun b!6889343 () Bool)

(declare-fun e!4150544 () Bool)

(declare-fun tp!1895337 () Bool)

(declare-fun tp!1895339 () Bool)

(assert (=> b!6889343 (= e!4150544 (and tp!1895337 tp!1895339))))

(assert (=> b!6888563 (= tp!1895292 e!4150544)))

(declare-fun b!6889341 () Bool)

(declare-fun tp!1895340 () Bool)

(declare-fun tp!1895341 () Bool)

(assert (=> b!6889341 (= e!4150544 (and tp!1895340 tp!1895341))))

(declare-fun b!6889340 () Bool)

(assert (=> b!6889340 (= e!4150544 tp_is_empty!42831)))

(declare-fun b!6889342 () Bool)

(declare-fun tp!1895338 () Bool)

(assert (=> b!6889342 (= e!4150544 tp!1895338)))

(assert (= (and b!6888563 ((_ is ElementMatch!16803) (regTwo!34119 r3!135))) b!6889340))

(assert (= (and b!6888563 ((_ is Concat!25648) (regTwo!34119 r3!135))) b!6889341))

(assert (= (and b!6888563 ((_ is Star!16803) (regTwo!34119 r3!135))) b!6889342))

(assert (= (and b!6888563 ((_ is Union!16803) (regTwo!34119 r3!135))) b!6889343))

(declare-fun b!6889347 () Bool)

(declare-fun e!4150545 () Bool)

(declare-fun tp!1895342 () Bool)

(declare-fun tp!1895344 () Bool)

(assert (=> b!6889347 (= e!4150545 (and tp!1895342 tp!1895344))))

(assert (=> b!6888562 (= tp!1895300 e!4150545)))

(declare-fun b!6889345 () Bool)

(declare-fun tp!1895345 () Bool)

(declare-fun tp!1895346 () Bool)

(assert (=> b!6889345 (= e!4150545 (and tp!1895345 tp!1895346))))

(declare-fun b!6889344 () Bool)

(assert (=> b!6889344 (= e!4150545 tp_is_empty!42831)))

(declare-fun b!6889346 () Bool)

(declare-fun tp!1895343 () Bool)

(assert (=> b!6889346 (= e!4150545 tp!1895343)))

(assert (= (and b!6888562 ((_ is ElementMatch!16803) (regOne!34119 r2!6280))) b!6889344))

(assert (= (and b!6888562 ((_ is Concat!25648) (regOne!34119 r2!6280))) b!6889345))

(assert (= (and b!6888562 ((_ is Star!16803) (regOne!34119 r2!6280))) b!6889346))

(assert (= (and b!6888562 ((_ is Union!16803) (regOne!34119 r2!6280))) b!6889347))

(declare-fun b!6889351 () Bool)

(declare-fun e!4150546 () Bool)

(declare-fun tp!1895347 () Bool)

(declare-fun tp!1895349 () Bool)

(assert (=> b!6889351 (= e!4150546 (and tp!1895347 tp!1895349))))

(assert (=> b!6888562 (= tp!1895294 e!4150546)))

(declare-fun b!6889349 () Bool)

(declare-fun tp!1895350 () Bool)

(declare-fun tp!1895351 () Bool)

(assert (=> b!6889349 (= e!4150546 (and tp!1895350 tp!1895351))))

(declare-fun b!6889348 () Bool)

(assert (=> b!6889348 (= e!4150546 tp_is_empty!42831)))

(declare-fun b!6889350 () Bool)

(declare-fun tp!1895348 () Bool)

(assert (=> b!6889350 (= e!4150546 tp!1895348)))

(assert (= (and b!6888562 ((_ is ElementMatch!16803) (regTwo!34119 r2!6280))) b!6889348))

(assert (= (and b!6888562 ((_ is Concat!25648) (regTwo!34119 r2!6280))) b!6889349))

(assert (= (and b!6888562 ((_ is Star!16803) (regTwo!34119 r2!6280))) b!6889350))

(assert (= (and b!6888562 ((_ is Union!16803) (regTwo!34119 r2!6280))) b!6889351))

(declare-fun b!6889355 () Bool)

(declare-fun e!4150547 () Bool)

(declare-fun tp!1895352 () Bool)

(declare-fun tp!1895354 () Bool)

(assert (=> b!6889355 (= e!4150547 (and tp!1895352 tp!1895354))))

(assert (=> b!6888557 (= tp!1895295 e!4150547)))

(declare-fun b!6889353 () Bool)

(declare-fun tp!1895355 () Bool)

(declare-fun tp!1895356 () Bool)

(assert (=> b!6889353 (= e!4150547 (and tp!1895355 tp!1895356))))

(declare-fun b!6889352 () Bool)

(assert (=> b!6889352 (= e!4150547 tp_is_empty!42831)))

(declare-fun b!6889354 () Bool)

(declare-fun tp!1895353 () Bool)

(assert (=> b!6889354 (= e!4150547 tp!1895353)))

(assert (= (and b!6888557 ((_ is ElementMatch!16803) (regOne!34118 r3!135))) b!6889352))

(assert (= (and b!6888557 ((_ is Concat!25648) (regOne!34118 r3!135))) b!6889353))

(assert (= (and b!6888557 ((_ is Star!16803) (regOne!34118 r3!135))) b!6889354))

(assert (= (and b!6888557 ((_ is Union!16803) (regOne!34118 r3!135))) b!6889355))

(declare-fun b!6889359 () Bool)

(declare-fun e!4150548 () Bool)

(declare-fun tp!1895357 () Bool)

(declare-fun tp!1895359 () Bool)

(assert (=> b!6889359 (= e!4150548 (and tp!1895357 tp!1895359))))

(assert (=> b!6888557 (= tp!1895290 e!4150548)))

(declare-fun b!6889357 () Bool)

(declare-fun tp!1895360 () Bool)

(declare-fun tp!1895361 () Bool)

(assert (=> b!6889357 (= e!4150548 (and tp!1895360 tp!1895361))))

(declare-fun b!6889356 () Bool)

(assert (=> b!6889356 (= e!4150548 tp_is_empty!42831)))

(declare-fun b!6889358 () Bool)

(declare-fun tp!1895358 () Bool)

(assert (=> b!6889358 (= e!4150548 tp!1895358)))

(assert (= (and b!6888557 ((_ is ElementMatch!16803) (regTwo!34118 r3!135))) b!6889356))

(assert (= (and b!6888557 ((_ is Concat!25648) (regTwo!34118 r3!135))) b!6889357))

(assert (= (and b!6888557 ((_ is Star!16803) (regTwo!34118 r3!135))) b!6889358))

(assert (= (and b!6888557 ((_ is Union!16803) (regTwo!34118 r3!135))) b!6889359))

(declare-fun b!6889363 () Bool)

(declare-fun e!4150549 () Bool)

(declare-fun tp!1895362 () Bool)

(declare-fun tp!1895364 () Bool)

(assert (=> b!6889363 (= e!4150549 (and tp!1895362 tp!1895364))))

(assert (=> b!6888556 (= tp!1895289 e!4150549)))

(declare-fun b!6889361 () Bool)

(declare-fun tp!1895365 () Bool)

(declare-fun tp!1895366 () Bool)

(assert (=> b!6889361 (= e!4150549 (and tp!1895365 tp!1895366))))

(declare-fun b!6889360 () Bool)

(assert (=> b!6889360 (= e!4150549 tp_is_empty!42831)))

(declare-fun b!6889362 () Bool)

(declare-fun tp!1895363 () Bool)

(assert (=> b!6889362 (= e!4150549 tp!1895363)))

(assert (= (and b!6888556 ((_ is ElementMatch!16803) (regOne!34118 r2!6280))) b!6889360))

(assert (= (and b!6888556 ((_ is Concat!25648) (regOne!34118 r2!6280))) b!6889361))

(assert (= (and b!6888556 ((_ is Star!16803) (regOne!34118 r2!6280))) b!6889362))

(assert (= (and b!6888556 ((_ is Union!16803) (regOne!34118 r2!6280))) b!6889363))

(declare-fun b!6889367 () Bool)

(declare-fun e!4150550 () Bool)

(declare-fun tp!1895367 () Bool)

(declare-fun tp!1895369 () Bool)

(assert (=> b!6889367 (= e!4150550 (and tp!1895367 tp!1895369))))

(assert (=> b!6888556 (= tp!1895288 e!4150550)))

(declare-fun b!6889365 () Bool)

(declare-fun tp!1895370 () Bool)

(declare-fun tp!1895371 () Bool)

(assert (=> b!6889365 (= e!4150550 (and tp!1895370 tp!1895371))))

(declare-fun b!6889364 () Bool)

(assert (=> b!6889364 (= e!4150550 tp_is_empty!42831)))

(declare-fun b!6889366 () Bool)

(declare-fun tp!1895368 () Bool)

(assert (=> b!6889366 (= e!4150550 tp!1895368)))

(assert (= (and b!6888556 ((_ is ElementMatch!16803) (regTwo!34118 r2!6280))) b!6889364))

(assert (= (and b!6888556 ((_ is Concat!25648) (regTwo!34118 r2!6280))) b!6889365))

(assert (= (and b!6888556 ((_ is Star!16803) (regTwo!34118 r2!6280))) b!6889366))

(assert (= (and b!6888556 ((_ is Union!16803) (regTwo!34118 r2!6280))) b!6889367))

(declare-fun b!6889371 () Bool)

(declare-fun e!4150551 () Bool)

(declare-fun tp!1895372 () Bool)

(declare-fun tp!1895374 () Bool)

(assert (=> b!6889371 (= e!4150551 (and tp!1895372 tp!1895374))))

(assert (=> b!6888551 (= tp!1895293 e!4150551)))

(declare-fun b!6889369 () Bool)

(declare-fun tp!1895375 () Bool)

(declare-fun tp!1895376 () Bool)

(assert (=> b!6889369 (= e!4150551 (and tp!1895375 tp!1895376))))

(declare-fun b!6889368 () Bool)

(assert (=> b!6889368 (= e!4150551 tp_is_empty!42831)))

(declare-fun b!6889370 () Bool)

(declare-fun tp!1895373 () Bool)

(assert (=> b!6889370 (= e!4150551 tp!1895373)))

(assert (= (and b!6888551 ((_ is ElementMatch!16803) (regOne!34119 r1!6342))) b!6889368))

(assert (= (and b!6888551 ((_ is Concat!25648) (regOne!34119 r1!6342))) b!6889369))

(assert (= (and b!6888551 ((_ is Star!16803) (regOne!34119 r1!6342))) b!6889370))

(assert (= (and b!6888551 ((_ is Union!16803) (regOne!34119 r1!6342))) b!6889371))

(declare-fun b!6889375 () Bool)

(declare-fun e!4150552 () Bool)

(declare-fun tp!1895377 () Bool)

(declare-fun tp!1895379 () Bool)

(assert (=> b!6889375 (= e!4150552 (and tp!1895377 tp!1895379))))

(assert (=> b!6888551 (= tp!1895298 e!4150552)))

(declare-fun b!6889373 () Bool)

(declare-fun tp!1895380 () Bool)

(declare-fun tp!1895381 () Bool)

(assert (=> b!6889373 (= e!4150552 (and tp!1895380 tp!1895381))))

(declare-fun b!6889372 () Bool)

(assert (=> b!6889372 (= e!4150552 tp_is_empty!42831)))

(declare-fun b!6889374 () Bool)

(declare-fun tp!1895378 () Bool)

(assert (=> b!6889374 (= e!4150552 tp!1895378)))

(assert (= (and b!6888551 ((_ is ElementMatch!16803) (regTwo!34119 r1!6342))) b!6889372))

(assert (= (and b!6888551 ((_ is Concat!25648) (regTwo!34119 r1!6342))) b!6889373))

(assert (= (and b!6888551 ((_ is Star!16803) (regTwo!34119 r1!6342))) b!6889374))

(assert (= (and b!6888551 ((_ is Union!16803) (regTwo!34119 r1!6342))) b!6889375))

(declare-fun b!6889379 () Bool)

(declare-fun e!4150553 () Bool)

(declare-fun tp!1895382 () Bool)

(declare-fun tp!1895384 () Bool)

(assert (=> b!6889379 (= e!4150553 (and tp!1895382 tp!1895384))))

(assert (=> b!6888567 (= tp!1895296 e!4150553)))

(declare-fun b!6889377 () Bool)

(declare-fun tp!1895385 () Bool)

(declare-fun tp!1895386 () Bool)

(assert (=> b!6889377 (= e!4150553 (and tp!1895385 tp!1895386))))

(declare-fun b!6889376 () Bool)

(assert (=> b!6889376 (= e!4150553 tp_is_empty!42831)))

(declare-fun b!6889378 () Bool)

(declare-fun tp!1895383 () Bool)

(assert (=> b!6889378 (= e!4150553 tp!1895383)))

(assert (= (and b!6888567 ((_ is ElementMatch!16803) (regOne!34118 r1!6342))) b!6889376))

(assert (= (and b!6888567 ((_ is Concat!25648) (regOne!34118 r1!6342))) b!6889377))

(assert (= (and b!6888567 ((_ is Star!16803) (regOne!34118 r1!6342))) b!6889378))

(assert (= (and b!6888567 ((_ is Union!16803) (regOne!34118 r1!6342))) b!6889379))

(declare-fun b!6889383 () Bool)

(declare-fun e!4150554 () Bool)

(declare-fun tp!1895387 () Bool)

(declare-fun tp!1895389 () Bool)

(assert (=> b!6889383 (= e!4150554 (and tp!1895387 tp!1895389))))

(assert (=> b!6888567 (= tp!1895297 e!4150554)))

(declare-fun b!6889381 () Bool)

(declare-fun tp!1895390 () Bool)

(declare-fun tp!1895391 () Bool)

(assert (=> b!6889381 (= e!4150554 (and tp!1895390 tp!1895391))))

(declare-fun b!6889380 () Bool)

(assert (=> b!6889380 (= e!4150554 tp_is_empty!42831)))

(declare-fun b!6889382 () Bool)

(declare-fun tp!1895388 () Bool)

(assert (=> b!6889382 (= e!4150554 tp!1895388)))

(assert (= (and b!6888567 ((_ is ElementMatch!16803) (regTwo!34118 r1!6342))) b!6889380))

(assert (= (and b!6888567 ((_ is Concat!25648) (regTwo!34118 r1!6342))) b!6889381))

(assert (= (and b!6888567 ((_ is Star!16803) (regTwo!34118 r1!6342))) b!6889382))

(assert (= (and b!6888567 ((_ is Union!16803) (regTwo!34118 r1!6342))) b!6889383))

(check-sat (not b!6889268) (not b!6888669) (not b!6889327) (not d!2160655) (not b!6889341) (not d!2160845) (not d!2160823) (not b!6888855) (not b!6888624) (not bm!626836) (not b!6889350) (not d!2160703) (not b!6889331) (not b!6888799) (not b!6889041) (not bm!626850) (not d!2160695) (not b!6889381) (not b!6889361) (not d!2160809) (not b!6889131) (not d!2160687) (not b!6889370) (not b!6889254) (not d!2160743) (not bm!626866) (not b!6889353) (not b!6888800) (not bm!626876) (not b!6888674) (not b!6889373) (not b!6888778) (not b!6888625) (not bm!626817) (not d!2160775) (not bm!626872) (not d!2160763) (not d!2160753) (not b!6889362) (not b!6889114) (not d!2160829) (not bm!626846) tp_is_empty!42831 (not b!6889136) (not b!6889383) (not b!6888614) (not bm!626863) (not b!6889330) (not b!6889006) (not b!6889342) (not b!6889363) (not b!6889119) (not b!6889321) (not b!6888835) (not bm!626897) (not b!6889112) (not b!6889337) (not b!6889237) (not b!6889349) (not d!2160781) (not b!6888824) (not b!6889367) (not b!6888805) (not bm!626844) (not bm!626870) (not b!6888945) (not b!6889077) (not b!6889230) (not b!6888807) (not b!6889377) (not b!6889235) (not b!6889004) (not bm!626891) (not d!2160847) (not b!6889343) (not b!6889374) (not b!6889259) (not b!6888949) (not b!6888613) (not b!6889233) (not d!2160797) (not bm!626893) (not b!6889346) (not d!2160831) (not b!6889134) (not b!6889261) (not d!2160667) (not b!6889214) (not d!2160739) (not b!6888827) (not b!6889091) (not b!6889351) (not b!6889379) (not b!6889357) (not b!6889178) (not b!6889382) (not bm!626848) (not b!6889369) (not b!6889291) (not b!6889365) (not b!6889329) (not b!6888947) (not d!2160783) (not b!6889211) (not b!6888836) (not d!2160645) (not d!2160713) (not bm!626883) (not b!6888998) (not d!2160653) (not b!6888825) (not b!6889216) (not bm!626873) (not b!6889378) (not b!6888783) (not b!6889333) (not bm!626818) (not d!2160849) (not b!6889071) (not b!6889236) (not b!6889358) (not bm!626849) (not b!6889213) (not b!6889345) (not b!6889111) (not b!6889002) (not b!6888776) (not b!6889256) (not b!6889375) (not b!6888673) (not b!6889371) (not b!6889257) (not b!6889059) (not b!6888730) (not b!6888821) (not d!2160819) (not d!2160731) (not bm!626899) (not d!2160725) (not bm!626819) (not bm!626884) (not b!6889117) (not b!6888942) (not bm!626892) (not b!6889267) (not b!6888803) (not b!6888775) (not bm!626820) (not d!2160675) (not d!2160737) (not b!6888802) (not b!6889069) (not b!6888944) (not b!6889355) (not b!6889322) (not d!2160843) (not d!2160821) (not b!6889225) (not d!2160747) (not d!2160825) (not d!2160749) (not b!6889067) (not b!6889210) (not b!6888779) (not d!2160717) (not b!6889366) (not b!6889066) (not bm!626845) (not d!2160689) (not d!2160663) (not b!6888670) (not d!2160767) (not b!6889115) (not b!6888829) (not b!6889177) (not b!6889359) (not b!6889218) (not b!6888856) (not d!2160751) (not d!2160787) (not b!6889001) (not b!6889334) (not b!6889232) (not b!6888822) (not b!6889138) (not d!2160657) (not b!6889347) (not b!6888999) (not b!6889133) (not b!6889064) (not d!2160669) (not bm!626898) (not b!6889292) (not b!6889339) (not d!2160685) (not bm!626867) (not b!6888948) (not bm!626869) (not b!6889253) (not bm!626837) (not b!6889320) (not b!6889354) (not bm!626847) (not d!2160719) (not b!6889092) (not b!6889335) (not b!6888781) (not b!6889137) (not b!6889338) (not b!6889070) (not d!2160815))
(check-sat)
