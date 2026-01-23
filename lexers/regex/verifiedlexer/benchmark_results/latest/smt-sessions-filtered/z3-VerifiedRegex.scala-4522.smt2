; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!239818 () Bool)

(assert start!239818)

(declare-fun b!2460402 () Bool)

(declare-fun e!1560460 () Bool)

(assert (=> b!2460402 e!1560460))

(declare-fun res!1042661 () Bool)

(assert (=> b!2460402 (=> (not res!1042661) (not e!1560460))))

(declare-fun call!151392 () Bool)

(assert (=> b!2460402 (= res!1042661 call!151392)))

(declare-datatypes ((C!14632 0))(
  ( (C!14633 (val!8558 Int)) )
))
(declare-datatypes ((List!28710 0))(
  ( (Nil!28612) (Cons!28612 (h!34013 C!14632) (t!208687 List!28710)) )
))
(declare-fun s!9460 () List!28710)

(declare-datatypes ((Regex!7237 0))(
  ( (ElementMatch!7237 (c!392705 C!14632)) (Concat!11873 (regOne!14986 Regex!7237) (regTwo!14986 Regex!7237)) (EmptyExpr!7237) (Star!7237 (reg!7566 Regex!7237)) (EmptyLang!7237) (Union!7237 (regOne!14987 Regex!7237) (regTwo!14987 Regex!7237)) )
))
(declare-fun lt!880974 () Regex!7237)

(declare-datatypes ((Unit!41965 0))(
  ( (Unit!41966) )
))
(declare-fun lt!880976 () Unit!41965)

(declare-datatypes ((tuple2!28202 0))(
  ( (tuple2!28203 (_1!16642 List!28710) (_2!16642 List!28710)) )
))
(declare-fun lt!880967 () tuple2!28202)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!110 (Regex!7237 Regex!7237 List!28710 List!28710 List!28710) Unit!41965)

(assert (=> b!2460402 (= lt!880976 (lemmaFindSeparationIsDefinedThenConcatMatches!110 lt!880974 EmptyExpr!7237 (_1!16642 lt!880967) (_2!16642 lt!880967) s!9460))))

(declare-datatypes ((Option!5712 0))(
  ( (None!5711) (Some!5711 (v!31119 tuple2!28202)) )
))
(declare-fun lt!880963 () Option!5712)

(declare-fun get!8862 (Option!5712) tuple2!28202)

(assert (=> b!2460402 (= lt!880967 (get!8862 lt!880963))))

(declare-fun e!1560456 () Unit!41965)

(declare-fun Unit!41967 () Unit!41965)

(assert (=> b!2460402 (= e!1560456 Unit!41967)))

(declare-fun bm!151382 () Bool)

(declare-fun call!151388 () Bool)

(declare-fun call!151391 () Option!5712)

(declare-fun isDefined!4538 (Option!5712) Bool)

(assert (=> bm!151382 (= call!151388 (isDefined!4538 call!151391))))

(declare-fun bm!151383 () Bool)

(declare-fun c!392702 () Bool)

(declare-fun call!151387 () Option!5712)

(declare-fun call!151390 () Bool)

(assert (=> bm!151383 (= call!151390 (isDefined!4538 (ite c!392702 call!151387 lt!880963)))))

(declare-fun bm!151384 () Bool)

(declare-fun call!151389 () List!28710)

(declare-fun ++!7125 (List!28710 List!28710) List!28710)

(assert (=> bm!151384 (= call!151389 (++!7125 (ite c!392702 s!9460 (_1!16642 lt!880967)) (ite c!392702 Nil!28612 (_2!16642 lt!880967))))))

(declare-fun lt!880971 () Regex!7237)

(declare-fun bm!151385 () Bool)

(declare-fun findConcatSeparation!820 (Regex!7237 Regex!7237 List!28710 List!28710 List!28710) Option!5712)

(assert (=> bm!151385 (= call!151387 (findConcatSeparation!820 lt!880974 (ite c!392702 lt!880971 EmptyExpr!7237) Nil!28612 s!9460 s!9460))))

(declare-fun b!2460403 () Bool)

(declare-fun e!1560457 () Bool)

(assert (=> b!2460403 (= e!1560457 (not call!151388))))

(declare-fun b!2460404 () Bool)

(declare-fun e!1560462 () Bool)

(declare-fun e!1560469 () Bool)

(assert (=> b!2460404 (= e!1560462 e!1560469)))

(declare-fun c!392701 () Bool)

(declare-datatypes ((List!28711 0))(
  ( (Nil!28613) (Cons!28613 (h!34014 Regex!7237) (t!208688 List!28711)) )
))
(declare-fun l!9164 () List!28711)

(get-info :version)

(assert (=> b!2460404 (= c!392701 ((_ is Cons!28613) l!9164))))

(declare-fun b!2460405 () Bool)

(declare-fun e!1560468 () Bool)

(declare-fun tp_is_empty!11887 () Bool)

(assert (=> b!2460405 (= e!1560468 tp_is_empty!11887)))

(declare-fun b!2460406 () Bool)

(declare-fun e!1560455 () Bool)

(assert (=> b!2460406 (= e!1560455 call!151392)))

(declare-fun b!2460407 () Bool)

(assert (=> b!2460407 (= e!1560460 false)))

(declare-fun b!2460408 () Bool)

(declare-fun e!1560465 () Bool)

(declare-fun e!1560461 () Bool)

(assert (=> b!2460408 (= e!1560465 e!1560461)))

(declare-fun res!1042660 () Bool)

(assert (=> b!2460408 (=> res!1042660 e!1560461)))

(declare-fun lt!880972 () List!28711)

(declare-fun isEmpty!16638 (List!28711) Bool)

(assert (=> b!2460408 (= res!1042660 (not (isEmpty!16638 lt!880972)))))

(declare-fun tail!3894 (List!28711) List!28711)

(assert (=> b!2460408 (= lt!880972 (tail!3894 l!9164))))

(declare-fun b!2460409 () Bool)

(declare-fun tp!783303 () Bool)

(declare-fun tp!783304 () Bool)

(assert (=> b!2460409 (= e!1560468 (and tp!783303 tp!783304))))

(declare-fun res!1042664 () Bool)

(declare-fun e!1560470 () Bool)

(assert (=> start!239818 (=> (not res!1042664) (not e!1560470))))

(declare-fun lambda!93125 () Int)

(declare-fun forall!5871 (List!28711 Int) Bool)

(assert (=> start!239818 (= res!1042664 (forall!5871 l!9164 lambda!93125))))

(assert (=> start!239818 e!1560470))

(declare-fun e!1560458 () Bool)

(assert (=> start!239818 e!1560458))

(assert (=> start!239818 e!1560468))

(declare-fun e!1560466 () Bool)

(assert (=> start!239818 e!1560466))

(declare-fun b!2460410 () Bool)

(declare-fun e!1560467 () Bool)

(assert (=> b!2460410 (= e!1560461 e!1560467)))

(declare-fun res!1042667 () Bool)

(assert (=> b!2460410 (=> res!1042667 e!1560467)))

(assert (=> b!2460410 (= res!1042667 (not (= lt!880971 EmptyExpr!7237)))))

(declare-fun generalisedConcat!338 (List!28711) Regex!7237)

(assert (=> b!2460410 (= lt!880971 (generalisedConcat!338 lt!880972))))

(declare-fun b!2460411 () Bool)

(declare-fun tp!783305 () Bool)

(declare-fun tp!783307 () Bool)

(assert (=> b!2460411 (= e!1560468 (and tp!783305 tp!783307))))

(declare-fun b!2460412 () Bool)

(declare-fun tp!783306 () Bool)

(assert (=> b!2460412 (= e!1560466 (and tp_is_empty!11887 tp!783306))))

(declare-fun b!2460413 () Bool)

(declare-fun e!1560464 () Bool)

(declare-fun lt!880968 () Bool)

(declare-fun isEmpty!16639 (List!28710) Bool)

(assert (=> b!2460413 (= e!1560464 (not (= lt!880968 (isEmpty!16639 s!9460))))))

(declare-fun b!2460414 () Bool)

(declare-fun e!1560463 () Unit!41965)

(declare-fun Unit!41968 () Unit!41965)

(assert (=> b!2460414 (= e!1560463 Unit!41968)))

(declare-fun lt!880973 () Unit!41965)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!140 (Regex!7237 Regex!7237 List!28710 List!28710) Unit!41965)

(assert (=> b!2460414 (= lt!880973 (lemmaTwoRegexMatchThenConcatMatchesConcatString!140 lt!880974 EmptyExpr!7237 s!9460 Nil!28612))))

(declare-fun lt!880975 () Regex!7237)

(assert (=> b!2460414 (= lt!880975 (Concat!11873 lt!880974 EmptyExpr!7237))))

(declare-fun res!1042666 () Bool)

(declare-fun matchR!3352 (Regex!7237 List!28710) Bool)

(assert (=> b!2460414 (= res!1042666 (matchR!3352 lt!880975 call!151389))))

(assert (=> b!2460414 (=> (not res!1042666) (not e!1560455))))

(assert (=> b!2460414 e!1560455))

(declare-fun lt!880969 () Unit!41965)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!102 (Regex!7237 Regex!7237 List!28710) Unit!41965)

(assert (=> b!2460414 (= lt!880969 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!102 lt!880974 EmptyExpr!7237 s!9460))))

(declare-fun res!1042663 () Bool)

(assert (=> b!2460414 (= res!1042663 call!151388)))

(declare-fun e!1560459 () Bool)

(assert (=> b!2460414 (=> (not res!1042663) (not e!1560459))))

(assert (=> b!2460414 e!1560459))

(declare-fun b!2460415 () Bool)

(declare-fun res!1042665 () Bool)

(assert (=> b!2460415 (=> res!1042665 e!1560465)))

(assert (=> b!2460415 (= res!1042665 (isEmpty!16638 l!9164))))

(declare-fun b!2460416 () Bool)

(assert (=> b!2460416 (= e!1560469 (= lt!880968 (isEmpty!16639 s!9460)))))

(declare-fun b!2460417 () Bool)

(declare-fun tp!783301 () Bool)

(assert (=> b!2460417 (= e!1560468 tp!783301)))

(declare-fun b!2460418 () Bool)

(assert (=> b!2460418 (= e!1560470 (not e!1560465))))

(declare-fun res!1042662 () Bool)

(assert (=> b!2460418 (=> res!1042662 e!1560465)))

(declare-fun r!13927 () Regex!7237)

(assert (=> b!2460418 (= res!1042662 (or ((_ is Concat!11873) r!13927) ((_ is EmptyExpr!7237) r!13927)))))

(declare-fun matchRSpec!1084 (Regex!7237 List!28710) Bool)

(assert (=> b!2460418 (= lt!880968 (matchRSpec!1084 r!13927 s!9460))))

(assert (=> b!2460418 (= lt!880968 (matchR!3352 r!13927 s!9460))))

(declare-fun lt!880970 () Unit!41965)

(declare-fun mainMatchTheorem!1084 (Regex!7237 List!28710) Unit!41965)

(assert (=> b!2460418 (= lt!880970 (mainMatchTheorem!1084 r!13927 s!9460))))

(declare-fun b!2460419 () Bool)

(assert (=> b!2460419 (= e!1560464 (not (= lt!880968 (isDefined!4538 (findConcatSeparation!820 (h!34014 l!9164) (generalisedConcat!338 (t!208688 l!9164)) Nil!28612 s!9460 s!9460)))))))

(declare-fun b!2460420 () Bool)

(declare-fun tp!783300 () Bool)

(declare-fun tp!783302 () Bool)

(assert (=> b!2460420 (= e!1560458 (and tp!783300 tp!783302))))

(declare-fun b!2460421 () Bool)

(declare-fun res!1042669 () Bool)

(assert (=> b!2460421 (=> (not res!1042669) (not e!1560470))))

(assert (=> b!2460421 (= res!1042669 (= r!13927 (generalisedConcat!338 l!9164)))))

(declare-fun bm!151386 () Bool)

(assert (=> bm!151386 (= call!151392 (matchR!3352 (ite c!392702 lt!880975 (Concat!11873 lt!880974 EmptyExpr!7237)) (ite c!392702 s!9460 call!151389)))))

(declare-fun b!2460422 () Bool)

(declare-fun Unit!41969 () Unit!41965)

(assert (=> b!2460422 (= e!1560456 Unit!41969)))

(declare-fun b!2460423 () Bool)

(assert (=> b!2460423 (= e!1560467 e!1560462)))

(declare-fun res!1042670 () Bool)

(assert (=> b!2460423 (=> res!1042670 e!1560462)))

(assert (=> b!2460423 (= res!1042670 e!1560464)))

(declare-fun c!392704 () Bool)

(assert (=> b!2460423 (= c!392704 ((_ is Cons!28613) l!9164))))

(declare-fun lt!880964 () Unit!41965)

(assert (=> b!2460423 (= lt!880964 e!1560463)))

(assert (=> b!2460423 (= c!392702 (matchR!3352 lt!880974 s!9460))))

(declare-fun head!5621 (List!28711) Regex!7237)

(assert (=> b!2460423 (= lt!880974 (head!5621 l!9164))))

(declare-fun b!2460424 () Bool)

(declare-fun Unit!41970 () Unit!41965)

(assert (=> b!2460424 (= e!1560463 Unit!41970)))

(assert (=> b!2460424 (= lt!880963 call!151387)))

(declare-fun lt!880966 () Bool)

(assert (=> b!2460424 (= lt!880966 call!151390)))

(declare-fun c!392703 () Bool)

(assert (=> b!2460424 (= c!392703 lt!880966)))

(declare-fun lt!880965 () Unit!41965)

(assert (=> b!2460424 (= lt!880965 e!1560456)))

(declare-fun res!1042668 () Bool)

(assert (=> b!2460424 (= res!1042668 (not lt!880966))))

(assert (=> b!2460424 (=> (not res!1042668) (not e!1560457))))

(assert (=> b!2460424 e!1560457))

(declare-fun bm!151387 () Bool)

(assert (=> bm!151387 (= call!151391 (findConcatSeparation!820 lt!880974 (ite c!392702 EmptyExpr!7237 lt!880971) Nil!28612 s!9460 s!9460))))

(declare-fun b!2460425 () Bool)

(assert (=> b!2460425 (= e!1560459 call!151390)))

(declare-fun b!2460426 () Bool)

(assert (=> b!2460426 (= e!1560469 (= lt!880968 (isDefined!4538 (findConcatSeparation!820 (h!34014 l!9164) (generalisedConcat!338 (t!208688 l!9164)) Nil!28612 s!9460 s!9460))))))

(assert (= (and start!239818 res!1042664) b!2460421))

(assert (= (and b!2460421 res!1042669) b!2460418))

(assert (= (and b!2460418 (not res!1042662)) b!2460415))

(assert (= (and b!2460415 (not res!1042665)) b!2460408))

(assert (= (and b!2460408 (not res!1042660)) b!2460410))

(assert (= (and b!2460410 (not res!1042667)) b!2460423))

(assert (= (and b!2460423 c!392702) b!2460414))

(assert (= (and b!2460423 (not c!392702)) b!2460424))

(assert (= (and b!2460414 res!1042666) b!2460406))

(assert (= (and b!2460414 res!1042663) b!2460425))

(assert (= (and b!2460424 c!392703) b!2460402))

(assert (= (and b!2460424 (not c!392703)) b!2460422))

(assert (= (and b!2460402 res!1042661) b!2460407))

(assert (= (and b!2460424 res!1042668) b!2460403))

(assert (= (or b!2460414 b!2460403) bm!151387))

(assert (= (or b!2460414 b!2460402) bm!151384))

(assert (= (or b!2460425 b!2460424) bm!151385))

(assert (= (or b!2460425 b!2460424) bm!151383))

(assert (= (or b!2460406 b!2460402) bm!151386))

(assert (= (or b!2460414 b!2460403) bm!151382))

(assert (= (and b!2460423 c!392704) b!2460419))

(assert (= (and b!2460423 (not c!392704)) b!2460413))

(assert (= (and b!2460423 (not res!1042670)) b!2460404))

(assert (= (and b!2460404 c!392701) b!2460426))

(assert (= (and b!2460404 (not c!392701)) b!2460416))

(assert (= (and start!239818 ((_ is Cons!28613) l!9164)) b!2460420))

(assert (= (and start!239818 ((_ is ElementMatch!7237) r!13927)) b!2460405))

(assert (= (and start!239818 ((_ is Concat!11873) r!13927)) b!2460411))

(assert (= (and start!239818 ((_ is Star!7237) r!13927)) b!2460417))

(assert (= (and start!239818 ((_ is Union!7237) r!13927)) b!2460409))

(assert (= (and start!239818 ((_ is Cons!28612) s!9460)) b!2460412))

(declare-fun m!2829815 () Bool)

(assert (=> b!2460423 m!2829815))

(declare-fun m!2829817 () Bool)

(assert (=> b!2460423 m!2829817))

(declare-fun m!2829819 () Bool)

(assert (=> b!2460402 m!2829819))

(declare-fun m!2829821 () Bool)

(assert (=> b!2460402 m!2829821))

(declare-fun m!2829823 () Bool)

(assert (=> b!2460410 m!2829823))

(declare-fun m!2829825 () Bool)

(assert (=> b!2460421 m!2829825))

(declare-fun m!2829827 () Bool)

(assert (=> b!2460419 m!2829827))

(assert (=> b!2460419 m!2829827))

(declare-fun m!2829829 () Bool)

(assert (=> b!2460419 m!2829829))

(assert (=> b!2460419 m!2829829))

(declare-fun m!2829831 () Bool)

(assert (=> b!2460419 m!2829831))

(declare-fun m!2829833 () Bool)

(assert (=> b!2460408 m!2829833))

(declare-fun m!2829835 () Bool)

(assert (=> b!2460408 m!2829835))

(declare-fun m!2829837 () Bool)

(assert (=> b!2460418 m!2829837))

(declare-fun m!2829839 () Bool)

(assert (=> b!2460418 m!2829839))

(declare-fun m!2829841 () Bool)

(assert (=> b!2460418 m!2829841))

(declare-fun m!2829843 () Bool)

(assert (=> b!2460415 m!2829843))

(declare-fun m!2829845 () Bool)

(assert (=> bm!151385 m!2829845))

(assert (=> b!2460426 m!2829827))

(assert (=> b!2460426 m!2829827))

(assert (=> b!2460426 m!2829829))

(assert (=> b!2460426 m!2829829))

(assert (=> b!2460426 m!2829831))

(declare-fun m!2829847 () Bool)

(assert (=> bm!151386 m!2829847))

(declare-fun m!2829849 () Bool)

(assert (=> bm!151382 m!2829849))

(declare-fun m!2829851 () Bool)

(assert (=> b!2460414 m!2829851))

(declare-fun m!2829853 () Bool)

(assert (=> b!2460414 m!2829853))

(declare-fun m!2829855 () Bool)

(assert (=> b!2460414 m!2829855))

(declare-fun m!2829857 () Bool)

(assert (=> bm!151387 m!2829857))

(declare-fun m!2829859 () Bool)

(assert (=> b!2460416 m!2829859))

(assert (=> b!2460413 m!2829859))

(declare-fun m!2829861 () Bool)

(assert (=> bm!151383 m!2829861))

(declare-fun m!2829863 () Bool)

(assert (=> start!239818 m!2829863))

(declare-fun m!2829865 () Bool)

(assert (=> bm!151384 m!2829865))

(check-sat (not bm!151387) (not b!2460408) (not b!2460421) (not b!2460418) (not b!2460423) (not b!2460420) (not bm!151382) (not b!2460413) (not b!2460416) (not bm!151386) (not b!2460415) (not b!2460419) (not b!2460412) (not start!239818) (not bm!151385) tp_is_empty!11887 (not b!2460414) (not b!2460410) (not b!2460426) (not b!2460411) (not b!2460409) (not b!2460402) (not bm!151383) (not bm!151384) (not b!2460417))
(check-sat)
