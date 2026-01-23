; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!235320 () Bool)

(assert start!235320)

(declare-fun b!2398374 () Bool)

(assert (=> b!2398374 true))

(assert (=> b!2398374 true))

(declare-fun lambda!90093 () Int)

(declare-fun lambda!90092 () Int)

(assert (=> b!2398374 (not (= lambda!90093 lambda!90092))))

(assert (=> b!2398374 true))

(assert (=> b!2398374 true))

(declare-fun b!2398369 () Bool)

(declare-datatypes ((Unit!41318 0))(
  ( (Unit!41319) )
))
(declare-fun e!1528227 () Unit!41318)

(declare-fun Unit!41320 () Unit!41318)

(assert (=> b!2398369 (= e!1528227 Unit!41320)))

(declare-datatypes ((C!14212 0))(
  ( (C!14213 (val!8348 Int)) )
))
(declare-datatypes ((List!28292 0))(
  ( (Nil!28194) (Cons!28194 (h!33595 C!14212) (t!208269 List!28292)) )
))
(declare-datatypes ((tuple2!27918 0))(
  ( (tuple2!27919 (_1!16500 List!28292) (_2!16500 List!28292)) )
))
(declare-datatypes ((Option!5570 0))(
  ( (None!5569) (Some!5569 (v!30977 tuple2!27918)) )
))
(declare-fun lt!872310 () Option!5570)

(declare-fun call!146490 () Option!5570)

(assert (=> b!2398369 (= lt!872310 call!146490)))

(declare-fun lt!872316 () Bool)

(declare-fun call!146486 () Bool)

(assert (=> b!2398369 (= lt!872316 call!146486)))

(declare-fun c!381790 () Bool)

(assert (=> b!2398369 (= c!381790 lt!872316)))

(declare-fun lt!872315 () Unit!41318)

(declare-fun e!1528225 () Unit!41318)

(assert (=> b!2398369 (= lt!872315 e!1528225)))

(declare-fun res!1019089 () Bool)

(assert (=> b!2398369 (= res!1019089 (not lt!872316))))

(declare-fun e!1528224 () Bool)

(assert (=> b!2398369 (=> (not res!1019089) (not e!1528224))))

(assert (=> b!2398369 e!1528224))

(declare-fun b!2398370 () Bool)

(declare-fun e!1528217 () Bool)

(declare-fun e!1528221 () Bool)

(assert (=> b!2398370 (= e!1528217 e!1528221)))

(declare-fun res!1019084 () Bool)

(assert (=> b!2398370 (=> res!1019084 e!1528221)))

(declare-fun e!1528222 () Bool)

(assert (=> b!2398370 (= res!1019084 e!1528222)))

(declare-fun c!381791 () Bool)

(declare-datatypes ((Regex!7027 0))(
  ( (ElementMatch!7027 (c!381793 C!14212)) (Concat!11663 (regOne!14566 Regex!7027) (regTwo!14566 Regex!7027)) (EmptyExpr!7027) (Star!7027 (reg!7356 Regex!7027)) (EmptyLang!7027) (Union!7027 (regOne!14567 Regex!7027) (regTwo!14567 Regex!7027)) )
))
(declare-datatypes ((List!28293 0))(
  ( (Nil!28195) (Cons!28195 (h!33596 Regex!7027) (t!208270 List!28293)) )
))
(declare-fun l!9164 () List!28293)

(get-info :version)

(assert (=> b!2398370 (= c!381791 ((_ is Cons!28195) l!9164))))

(declare-fun lt!872311 () Unit!41318)

(declare-fun e!1528223 () Unit!41318)

(assert (=> b!2398370 (= lt!872311 e!1528223)))

(declare-fun c!381792 () Bool)

(declare-fun isEmpty!16189 (List!28293) Bool)

(assert (=> b!2398370 (= c!381792 (isEmpty!16189 l!9164))))

(declare-fun b!2398371 () Bool)

(declare-fun e!1528226 () Bool)

(declare-fun tp!763403 () Bool)

(declare-fun tp!763406 () Bool)

(assert (=> b!2398371 (= e!1528226 (and tp!763403 tp!763406))))

(declare-fun call!146488 () Option!5570)

(declare-fun c!381789 () Bool)

(declare-fun bm!146477 () Bool)

(declare-fun c!381788 () Bool)

(declare-fun call!146484 () Bool)

(declare-fun isDefined!4398 (Option!5570) Bool)

(assert (=> bm!146477 (= call!146484 (isDefined!4398 (ite c!381789 (ite c!381788 call!146490 lt!872310) call!146488)))))

(declare-fun b!2398372 () Bool)

(declare-fun e!1528218 () Bool)

(declare-fun call!146492 () Bool)

(assert (=> b!2398372 (= e!1528218 call!146492)))

(declare-fun call!146487 () Option!5570)

(declare-fun s!9460 () List!28292)

(declare-fun bm!146478 () Bool)

(declare-fun call!146489 () Regex!7027)

(declare-fun lt!872320 () Regex!7027)

(declare-fun findConcatSeparation!678 (Regex!7027 Regex!7027 List!28292 List!28292 List!28292) Option!5570)

(assert (=> bm!146478 (= call!146487 (findConcatSeparation!678 lt!872320 call!146489 Nil!28194 s!9460 s!9460))))

(declare-fun b!2398373 () Bool)

(declare-fun lt!872318 () Bool)

(assert (=> b!2398373 (= lt!872318 call!146484)))

(declare-fun e!1528228 () Unit!41318)

(declare-fun Unit!41321 () Unit!41318)

(assert (=> b!2398373 (= e!1528228 Unit!41321)))

(declare-fun e!1528220 () Bool)

(assert (=> b!2398374 (= e!1528220 e!1528217)))

(declare-fun res!1019083 () Bool)

(assert (=> b!2398374 (=> res!1019083 e!1528217)))

(declare-fun lt!872309 () Bool)

(declare-fun lt!872322 () Bool)

(assert (=> b!2398374 (= res!1019083 (not (= lt!872309 lt!872322)))))

(declare-fun Exists!1089 (Int) Bool)

(assert (=> b!2398374 (= (Exists!1089 lambda!90092) (Exists!1089 lambda!90093))))

(declare-fun lt!872307 () Unit!41318)

(declare-fun r!13927 () Regex!7027)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!428 (Regex!7027 Regex!7027 List!28292) Unit!41318)

(assert (=> b!2398374 (= lt!872307 (lemmaExistCutMatchRandMatchRSpecEquivalent!428 (regOne!14566 r!13927) (regTwo!14566 r!13927) s!9460))))

(assert (=> b!2398374 (= lt!872322 (Exists!1089 lambda!90092))))

(assert (=> b!2398374 (= lt!872322 (isDefined!4398 (findConcatSeparation!678 (regOne!14566 r!13927) (regTwo!14566 r!13927) Nil!28194 s!9460 s!9460)))))

(declare-fun lt!872314 () Unit!41318)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!678 (Regex!7027 Regex!7027 List!28292) Unit!41318)

(assert (=> b!2398374 (= lt!872314 (lemmaFindConcatSeparationEquivalentToExists!678 (regOne!14566 r!13927) (regTwo!14566 r!13927) s!9460))))

(declare-fun call!146483 () Regex!7027)

(declare-fun b!2398375 () Bool)

(assert (=> b!2398375 (= lt!872318 (isDefined!4398 (findConcatSeparation!678 lt!872320 call!146483 Nil!28194 s!9460 s!9460)))))

(declare-fun lt!872319 () Unit!41318)

(assert (=> b!2398375 (= lt!872319 e!1528227)))

(declare-fun matchR!3144 (Regex!7027 List!28292) Bool)

(assert (=> b!2398375 (= c!381788 (matchR!3144 lt!872320 s!9460))))

(declare-fun call!146485 () Regex!7027)

(assert (=> b!2398375 (= lt!872320 call!146485)))

(declare-fun Unit!41322 () Unit!41318)

(assert (=> b!2398375 (= e!1528228 Unit!41322)))

(declare-fun b!2398376 () Bool)

(declare-fun e!1528213 () Bool)

(declare-fun tp_is_empty!11467 () Bool)

(declare-fun tp!763408 () Bool)

(assert (=> b!2398376 (= e!1528213 (and tp_is_empty!11467 tp!763408))))

(declare-fun b!2398377 () Bool)

(declare-fun res!1019086 () Bool)

(assert (=> b!2398377 (=> res!1019086 e!1528221)))

(assert (=> b!2398377 (= res!1019086 ((_ is Cons!28195) l!9164))))

(declare-fun bm!146479 () Bool)

(assert (=> bm!146479 (= call!146489 call!146483)))

(declare-fun b!2398378 () Bool)

(assert (=> b!2398378 (= e!1528224 (not call!146492))))

(declare-fun b!2398379 () Bool)

(declare-fun validRegex!2752 (Regex!7027) Bool)

(assert (=> b!2398379 (= e!1528221 (validRegex!2752 r!13927))))

(declare-fun b!2398380 () Bool)

(declare-fun isEmpty!16190 (List!28292) Bool)

(assert (=> b!2398380 (= e!1528222 (not (= lt!872318 (isEmpty!16190 s!9460))))))

(declare-fun b!2398381 () Bool)

(declare-fun tp!763402 () Bool)

(declare-fun tp!763405 () Bool)

(assert (=> b!2398381 (= e!1528226 (and tp!763402 tp!763405))))

(declare-fun b!2398382 () Bool)

(declare-fun e!1528216 () Bool)

(declare-fun call!146491 () Bool)

(assert (=> b!2398382 (= e!1528216 call!146491)))

(declare-fun b!2398383 () Bool)

(assert (=> b!2398383 (= e!1528226 tp_is_empty!11467)))

(declare-fun b!2398384 () Bool)

(declare-fun e!1528215 () Bool)

(assert (=> b!2398384 (= e!1528215 (not e!1528220))))

(declare-fun res!1019091 () Bool)

(assert (=> b!2398384 (=> res!1019091 e!1528220)))

(assert (=> b!2398384 (= res!1019091 (not ((_ is Concat!11663) r!13927)))))

(assert (=> b!2398384 (= lt!872318 lt!872309)))

(declare-fun matchRSpec!876 (Regex!7027 List!28292) Bool)

(assert (=> b!2398384 (= lt!872309 (matchRSpec!876 r!13927 s!9460))))

(assert (=> b!2398384 (= lt!872318 (matchR!3144 r!13927 s!9460))))

(declare-fun lt!872312 () Unit!41318)

(declare-fun mainMatchTheorem!876 (Regex!7027 List!28292) Unit!41318)

(assert (=> b!2398384 (= lt!872312 (mainMatchTheorem!876 r!13927 s!9460))))

(declare-fun bm!146480 () Bool)

(declare-fun call!146482 () List!28292)

(declare-fun lt!872306 () Regex!7027)

(assert (=> bm!146480 (= call!146491 (matchR!3144 (ite c!381788 lt!872306 (Concat!11663 lt!872320 EmptyExpr!7027)) (ite c!381788 s!9460 call!146482)))))

(declare-fun b!2398385 () Bool)

(declare-fun Unit!41323 () Unit!41318)

(assert (=> b!2398385 (= e!1528223 Unit!41323)))

(assert (=> b!2398385 false))

(declare-fun bm!146481 () Bool)

(assert (=> bm!146481 (= call!146486 call!146484)))

(declare-fun b!2398386 () Bool)

(assert (=> b!2398386 (= e!1528223 e!1528228)))

(declare-fun lt!872321 () List!28293)

(declare-fun tail!3555 (List!28293) List!28293)

(assert (=> b!2398386 (= lt!872321 (tail!3555 l!9164))))

(assert (=> b!2398386 (= c!381789 (isEmpty!16189 lt!872321))))

(declare-fun bm!146482 () Bool)

(assert (=> bm!146482 (= call!146492 (isDefined!4398 call!146487))))

(declare-fun b!2398387 () Bool)

(declare-fun tp!763407 () Bool)

(assert (=> b!2398387 (= e!1528226 tp!763407)))

(declare-fun res!1019090 () Bool)

(assert (=> start!235320 (=> (not res!1019090) (not e!1528215))))

(declare-fun lambda!90091 () Int)

(declare-fun forall!5661 (List!28293 Int) Bool)

(assert (=> start!235320 (= res!1019090 (forall!5661 l!9164 lambda!90091))))

(assert (=> start!235320 e!1528215))

(declare-fun e!1528219 () Bool)

(assert (=> start!235320 e!1528219))

(assert (=> start!235320 e!1528226))

(assert (=> start!235320 e!1528213))

(declare-fun b!2398388 () Bool)

(declare-fun res!1019087 () Bool)

(assert (=> b!2398388 (=> (not res!1019087) (not e!1528215))))

(declare-fun generalisedConcat!128 (List!28293) Regex!7027)

(assert (=> b!2398388 (= res!1019087 (= r!13927 (generalisedConcat!128 l!9164)))))

(declare-fun bm!146483 () Bool)

(assert (=> bm!146483 (= call!146488 (findConcatSeparation!678 (ite c!381789 lt!872320 call!146485) (ite c!381789 EmptyExpr!7027 call!146483) Nil!28194 s!9460 s!9460))))

(declare-fun b!2398389 () Bool)

(declare-fun Unit!41324 () Unit!41318)

(assert (=> b!2398389 (= e!1528225 Unit!41324)))

(declare-fun b!2398390 () Bool)

(assert (=> b!2398390 (= e!1528222 (not (= lt!872318 (isDefined!4398 (findConcatSeparation!678 (h!33596 l!9164) (generalisedConcat!128 (t!208270 l!9164)) Nil!28194 s!9460 s!9460)))))))

(declare-fun b!2398391 () Bool)

(declare-fun e!1528214 () Bool)

(assert (=> b!2398391 e!1528214))

(declare-fun res!1019092 () Bool)

(assert (=> b!2398391 (=> (not res!1019092) (not e!1528214))))

(assert (=> b!2398391 (= res!1019092 call!146491)))

(declare-fun lt!872305 () tuple2!27918)

(declare-fun lt!872308 () Unit!41318)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!46 (Regex!7027 Regex!7027 List!28292 List!28292 List!28292) Unit!41318)

(assert (=> b!2398391 (= lt!872308 (lemmaFindSeparationIsDefinedThenConcatMatches!46 lt!872320 EmptyExpr!7027 (_1!16500 lt!872305) (_2!16500 lt!872305) s!9460))))

(declare-fun get!8638 (Option!5570) tuple2!27918)

(assert (=> b!2398391 (= lt!872305 (get!8638 lt!872310))))

(declare-fun Unit!41325 () Unit!41318)

(assert (=> b!2398391 (= e!1528225 Unit!41325)))

(declare-fun bm!146484 () Bool)

(assert (=> bm!146484 (= call!146490 call!146488)))

(declare-fun bm!146485 () Bool)

(assert (=> bm!146485 (= call!146483 (generalisedConcat!128 lt!872321))))

(declare-fun b!2398392 () Bool)

(declare-fun Unit!41326 () Unit!41318)

(assert (=> b!2398392 (= e!1528227 Unit!41326)))

(declare-fun lt!872313 () Unit!41318)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!64 (Regex!7027 Regex!7027 List!28292 List!28292) Unit!41318)

(assert (=> b!2398392 (= lt!872313 (lemmaTwoRegexMatchThenConcatMatchesConcatString!64 lt!872320 EmptyExpr!7027 s!9460 Nil!28194))))

(assert (=> b!2398392 (= lt!872306 (Concat!11663 lt!872320 EmptyExpr!7027))))

(declare-fun res!1019088 () Bool)

(assert (=> b!2398392 (= res!1019088 (matchR!3144 lt!872306 call!146482))))

(assert (=> b!2398392 (=> (not res!1019088) (not e!1528216))))

(assert (=> b!2398392 e!1528216))

(declare-fun lt!872317 () Unit!41318)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!46 (Regex!7027 Regex!7027 List!28292) Unit!41318)

(assert (=> b!2398392 (= lt!872317 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!46 lt!872320 EmptyExpr!7027 s!9460))))

(declare-fun res!1019085 () Bool)

(assert (=> b!2398392 (= res!1019085 call!146486)))

(assert (=> b!2398392 (=> (not res!1019085) (not e!1528218))))

(assert (=> b!2398392 e!1528218))

(declare-fun bm!146486 () Bool)

(declare-fun head!5285 (List!28293) Regex!7027)

(assert (=> bm!146486 (= call!146485 (head!5285 l!9164))))

(declare-fun b!2398393 () Bool)

(declare-fun tp!763404 () Bool)

(declare-fun tp!763409 () Bool)

(assert (=> b!2398393 (= e!1528219 (and tp!763404 tp!763409))))

(declare-fun b!2398394 () Bool)

(assert (=> b!2398394 (= e!1528214 false)))

(declare-fun bm!146487 () Bool)

(declare-fun ++!6981 (List!28292 List!28292) List!28292)

(assert (=> bm!146487 (= call!146482 (++!6981 (ite c!381788 s!9460 (_1!16500 lt!872305)) (ite c!381788 Nil!28194 (_2!16500 lt!872305))))))

(assert (= (and start!235320 res!1019090) b!2398388))

(assert (= (and b!2398388 res!1019087) b!2398384))

(assert (= (and b!2398384 (not res!1019091)) b!2398374))

(assert (= (and b!2398374 (not res!1019083)) b!2398370))

(assert (= (and b!2398370 c!381792) b!2398385))

(assert (= (and b!2398370 (not c!381792)) b!2398386))

(assert (= (and b!2398386 c!381789) b!2398375))

(assert (= (and b!2398386 (not c!381789)) b!2398373))

(assert (= (and b!2398375 c!381788) b!2398392))

(assert (= (and b!2398375 (not c!381788)) b!2398369))

(assert (= (and b!2398392 res!1019088) b!2398382))

(assert (= (and b!2398392 res!1019085) b!2398372))

(assert (= (and b!2398369 c!381790) b!2398391))

(assert (= (and b!2398369 (not c!381790)) b!2398389))

(assert (= (and b!2398391 res!1019092) b!2398394))

(assert (= (and b!2398369 res!1019089) b!2398378))

(assert (= (or b!2398392 b!2398391) bm!146487))

(assert (= (or b!2398392 b!2398369) bm!146484))

(assert (= (or b!2398372 b!2398378) bm!146479))

(assert (= (or b!2398382 b!2398391) bm!146480))

(assert (= (or b!2398392 b!2398369) bm!146481))

(assert (= (or b!2398372 b!2398378) bm!146478))

(assert (= (or b!2398372 b!2398378) bm!146482))

(assert (= (or b!2398375 b!2398373) bm!146486))

(assert (= (or b!2398375 bm!146479 b!2398373) bm!146485))

(assert (= (or bm!146484 b!2398373) bm!146483))

(assert (= (or bm!146481 b!2398373) bm!146477))

(assert (= (and b!2398370 c!381791) b!2398390))

(assert (= (and b!2398370 (not c!381791)) b!2398380))

(assert (= (and b!2398370 (not res!1019084)) b!2398377))

(assert (= (and b!2398377 (not res!1019086)) b!2398379))

(assert (= (and start!235320 ((_ is Cons!28195) l!9164)) b!2398393))

(assert (= (and start!235320 ((_ is ElementMatch!7027) r!13927)) b!2398383))

(assert (= (and start!235320 ((_ is Concat!11663) r!13927)) b!2398371))

(assert (= (and start!235320 ((_ is Star!7027) r!13927)) b!2398387))

(assert (= (and start!235320 ((_ is Union!7027) r!13927)) b!2398381))

(assert (= (and start!235320 ((_ is Cons!28194) s!9460)) b!2398376))

(declare-fun m!2796673 () Bool)

(assert (=> b!2398390 m!2796673))

(assert (=> b!2398390 m!2796673))

(declare-fun m!2796675 () Bool)

(assert (=> b!2398390 m!2796675))

(assert (=> b!2398390 m!2796675))

(declare-fun m!2796677 () Bool)

(assert (=> b!2398390 m!2796677))

(declare-fun m!2796679 () Bool)

(assert (=> b!2398370 m!2796679))

(declare-fun m!2796681 () Bool)

(assert (=> b!2398392 m!2796681))

(declare-fun m!2796683 () Bool)

(assert (=> b!2398392 m!2796683))

(declare-fun m!2796685 () Bool)

(assert (=> b!2398392 m!2796685))

(declare-fun m!2796687 () Bool)

(assert (=> b!2398380 m!2796687))

(declare-fun m!2796689 () Bool)

(assert (=> b!2398375 m!2796689))

(assert (=> b!2398375 m!2796689))

(declare-fun m!2796691 () Bool)

(assert (=> b!2398375 m!2796691))

(declare-fun m!2796693 () Bool)

(assert (=> b!2398375 m!2796693))

(declare-fun m!2796695 () Bool)

(assert (=> bm!146483 m!2796695))

(declare-fun m!2796697 () Bool)

(assert (=> bm!146487 m!2796697))

(declare-fun m!2796699 () Bool)

(assert (=> bm!146477 m!2796699))

(declare-fun m!2796701 () Bool)

(assert (=> b!2398384 m!2796701))

(declare-fun m!2796703 () Bool)

(assert (=> b!2398384 m!2796703))

(declare-fun m!2796705 () Bool)

(assert (=> b!2398384 m!2796705))

(declare-fun m!2796707 () Bool)

(assert (=> bm!146478 m!2796707))

(declare-fun m!2796709 () Bool)

(assert (=> b!2398374 m!2796709))

(declare-fun m!2796711 () Bool)

(assert (=> b!2398374 m!2796711))

(declare-fun m!2796713 () Bool)

(assert (=> b!2398374 m!2796713))

(assert (=> b!2398374 m!2796709))

(declare-fun m!2796715 () Bool)

(assert (=> b!2398374 m!2796715))

(declare-fun m!2796717 () Bool)

(assert (=> b!2398374 m!2796717))

(assert (=> b!2398374 m!2796715))

(declare-fun m!2796719 () Bool)

(assert (=> b!2398374 m!2796719))

(declare-fun m!2796721 () Bool)

(assert (=> b!2398391 m!2796721))

(declare-fun m!2796723 () Bool)

(assert (=> b!2398391 m!2796723))

(declare-fun m!2796725 () Bool)

(assert (=> bm!146480 m!2796725))

(declare-fun m!2796727 () Bool)

(assert (=> bm!146482 m!2796727))

(declare-fun m!2796729 () Bool)

(assert (=> b!2398379 m!2796729))

(declare-fun m!2796731 () Bool)

(assert (=> start!235320 m!2796731))

(declare-fun m!2796733 () Bool)

(assert (=> bm!146485 m!2796733))

(declare-fun m!2796735 () Bool)

(assert (=> b!2398386 m!2796735))

(declare-fun m!2796737 () Bool)

(assert (=> b!2398386 m!2796737))

(declare-fun m!2796739 () Bool)

(assert (=> bm!146486 m!2796739))

(declare-fun m!2796741 () Bool)

(assert (=> b!2398388 m!2796741))

(check-sat (not b!2398391) (not b!2398379) (not b!2398390) (not start!235320) (not b!2398388) (not b!2398392) (not b!2398376) tp_is_empty!11467 (not b!2398380) (not b!2398387) (not b!2398393) (not bm!146477) (not bm!146485) (not bm!146486) (not b!2398374) (not bm!146483) (not b!2398386) (not b!2398371) (not b!2398384) (not b!2398375) (not bm!146480) (not b!2398381) (not bm!146487) (not b!2398370) (not bm!146482) (not bm!146478))
(check-sat)
(get-model)

(declare-fun d!699378 () Bool)

(declare-fun isEmpty!16192 (Option!5570) Bool)

(assert (=> d!699378 (= (isDefined!4398 (findConcatSeparation!678 (h!33596 l!9164) (generalisedConcat!128 (t!208270 l!9164)) Nil!28194 s!9460 s!9460)) (not (isEmpty!16192 (findConcatSeparation!678 (h!33596 l!9164) (generalisedConcat!128 (t!208270 l!9164)) Nil!28194 s!9460 s!9460))))))

(declare-fun bs!463041 () Bool)

(assert (= bs!463041 d!699378))

(assert (=> bs!463041 m!2796675))

(declare-fun m!2796743 () Bool)

(assert (=> bs!463041 m!2796743))

(assert (=> b!2398390 d!699378))

(declare-fun b!2398430 () Bool)

(declare-fun res!1019115 () Bool)

(declare-fun e!1528248 () Bool)

(assert (=> b!2398430 (=> (not res!1019115) (not e!1528248))))

(declare-fun lt!872336 () Option!5570)

(assert (=> b!2398430 (= res!1019115 (matchR!3144 (h!33596 l!9164) (_1!16500 (get!8638 lt!872336))))))

(declare-fun b!2398431 () Bool)

(declare-fun e!1528247 () Option!5570)

(declare-fun e!1528246 () Option!5570)

(assert (=> b!2398431 (= e!1528247 e!1528246)))

(declare-fun c!381799 () Bool)

(assert (=> b!2398431 (= c!381799 ((_ is Nil!28194) s!9460))))

(declare-fun b!2398432 () Bool)

(declare-fun res!1019118 () Bool)

(assert (=> b!2398432 (=> (not res!1019118) (not e!1528248))))

(assert (=> b!2398432 (= res!1019118 (matchR!3144 (generalisedConcat!128 (t!208270 l!9164)) (_2!16500 (get!8638 lt!872336))))))

(declare-fun b!2398433 () Bool)

(declare-fun e!1528249 () Bool)

(assert (=> b!2398433 (= e!1528249 (not (isDefined!4398 lt!872336)))))

(declare-fun b!2398434 () Bool)

(assert (=> b!2398434 (= e!1528246 None!5569)))

(declare-fun b!2398435 () Bool)

(declare-fun e!1528245 () Bool)

(assert (=> b!2398435 (= e!1528245 (matchR!3144 (generalisedConcat!128 (t!208270 l!9164)) s!9460))))

(declare-fun b!2398436 () Bool)

(assert (=> b!2398436 (= e!1528248 (= (++!6981 (_1!16500 (get!8638 lt!872336)) (_2!16500 (get!8638 lt!872336))) s!9460))))

(declare-fun b!2398437 () Bool)

(assert (=> b!2398437 (= e!1528247 (Some!5569 (tuple2!27919 Nil!28194 s!9460)))))

(declare-fun d!699380 () Bool)

(assert (=> d!699380 e!1528249))

(declare-fun res!1019116 () Bool)

(assert (=> d!699380 (=> res!1019116 e!1528249)))

(assert (=> d!699380 (= res!1019116 e!1528248)))

(declare-fun res!1019119 () Bool)

(assert (=> d!699380 (=> (not res!1019119) (not e!1528248))))

(assert (=> d!699380 (= res!1019119 (isDefined!4398 lt!872336))))

(assert (=> d!699380 (= lt!872336 e!1528247)))

(declare-fun c!381798 () Bool)

(assert (=> d!699380 (= c!381798 e!1528245)))

(declare-fun res!1019117 () Bool)

(assert (=> d!699380 (=> (not res!1019117) (not e!1528245))))

(assert (=> d!699380 (= res!1019117 (matchR!3144 (h!33596 l!9164) Nil!28194))))

(assert (=> d!699380 (validRegex!2752 (h!33596 l!9164))))

(assert (=> d!699380 (= (findConcatSeparation!678 (h!33596 l!9164) (generalisedConcat!128 (t!208270 l!9164)) Nil!28194 s!9460 s!9460) lt!872336)))

(declare-fun b!2398429 () Bool)

(declare-fun lt!872335 () Unit!41318)

(declare-fun lt!872337 () Unit!41318)

(assert (=> b!2398429 (= lt!872335 lt!872337)))

(assert (=> b!2398429 (= (++!6981 (++!6981 Nil!28194 (Cons!28194 (h!33595 s!9460) Nil!28194)) (t!208269 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!623 (List!28292 C!14212 List!28292 List!28292) Unit!41318)

(assert (=> b!2398429 (= lt!872337 (lemmaMoveElementToOtherListKeepsConcatEq!623 Nil!28194 (h!33595 s!9460) (t!208269 s!9460) s!9460))))

(assert (=> b!2398429 (= e!1528246 (findConcatSeparation!678 (h!33596 l!9164) (generalisedConcat!128 (t!208270 l!9164)) (++!6981 Nil!28194 (Cons!28194 (h!33595 s!9460) Nil!28194)) (t!208269 s!9460) s!9460))))

(assert (= (and d!699380 res!1019117) b!2398435))

(assert (= (and d!699380 c!381798) b!2398437))

(assert (= (and d!699380 (not c!381798)) b!2398431))

(assert (= (and b!2398431 c!381799) b!2398434))

(assert (= (and b!2398431 (not c!381799)) b!2398429))

(assert (= (and d!699380 res!1019119) b!2398430))

(assert (= (and b!2398430 res!1019115) b!2398432))

(assert (= (and b!2398432 res!1019118) b!2398436))

(assert (= (and d!699380 (not res!1019116)) b!2398433))

(declare-fun m!2796763 () Bool)

(assert (=> b!2398430 m!2796763))

(declare-fun m!2796765 () Bool)

(assert (=> b!2398430 m!2796765))

(declare-fun m!2796767 () Bool)

(assert (=> d!699380 m!2796767))

(declare-fun m!2796769 () Bool)

(assert (=> d!699380 m!2796769))

(declare-fun m!2796771 () Bool)

(assert (=> d!699380 m!2796771))

(assert (=> b!2398432 m!2796763))

(assert (=> b!2398432 m!2796673))

(declare-fun m!2796773 () Bool)

(assert (=> b!2398432 m!2796773))

(assert (=> b!2398433 m!2796767))

(assert (=> b!2398435 m!2796673))

(declare-fun m!2796775 () Bool)

(assert (=> b!2398435 m!2796775))

(declare-fun m!2796777 () Bool)

(assert (=> b!2398429 m!2796777))

(assert (=> b!2398429 m!2796777))

(declare-fun m!2796779 () Bool)

(assert (=> b!2398429 m!2796779))

(declare-fun m!2796781 () Bool)

(assert (=> b!2398429 m!2796781))

(assert (=> b!2398429 m!2796673))

(assert (=> b!2398429 m!2796777))

(declare-fun m!2796783 () Bool)

(assert (=> b!2398429 m!2796783))

(assert (=> b!2398436 m!2796763))

(declare-fun m!2796785 () Bool)

(assert (=> b!2398436 m!2796785))

(assert (=> b!2398390 d!699380))

(declare-fun bs!463050 () Bool)

(declare-fun d!699394 () Bool)

(assert (= bs!463050 (and d!699394 start!235320)))

(declare-fun lambda!90107 () Int)

(assert (=> bs!463050 (= lambda!90107 lambda!90091)))

(declare-fun b!2398505 () Bool)

(declare-fun e!1528290 () Bool)

(declare-fun lt!872351 () Regex!7027)

(declare-fun isEmptyExpr!97 (Regex!7027) Bool)

(assert (=> b!2398505 (= e!1528290 (isEmptyExpr!97 lt!872351))))

(declare-fun b!2398506 () Bool)

(declare-fun e!1528289 () Regex!7027)

(declare-fun e!1528291 () Regex!7027)

(assert (=> b!2398506 (= e!1528289 e!1528291)))

(declare-fun c!381825 () Bool)

(assert (=> b!2398506 (= c!381825 ((_ is Cons!28195) (t!208270 l!9164)))))

(declare-fun b!2398507 () Bool)

(declare-fun e!1528293 () Bool)

(assert (=> b!2398507 (= e!1528293 e!1528290)))

(declare-fun c!381823 () Bool)

(assert (=> b!2398507 (= c!381823 (isEmpty!16189 (t!208270 l!9164)))))

(declare-fun b!2398508 () Bool)

(declare-fun e!1528294 () Bool)

(declare-fun isConcat!97 (Regex!7027) Bool)

(assert (=> b!2398508 (= e!1528294 (isConcat!97 lt!872351))))

(declare-fun b!2398509 () Bool)

(assert (=> b!2398509 (= e!1528291 EmptyExpr!7027)))

(declare-fun b!2398510 () Bool)

(assert (=> b!2398510 (= e!1528291 (Concat!11663 (h!33596 (t!208270 l!9164)) (generalisedConcat!128 (t!208270 (t!208270 l!9164)))))))

(declare-fun b!2398511 () Bool)

(assert (=> b!2398511 (= e!1528290 e!1528294)))

(declare-fun c!381824 () Bool)

(assert (=> b!2398511 (= c!381824 (isEmpty!16189 (tail!3555 (t!208270 l!9164))))))

(declare-fun b!2398512 () Bool)

(declare-fun e!1528292 () Bool)

(assert (=> b!2398512 (= e!1528292 (isEmpty!16189 (t!208270 (t!208270 l!9164))))))

(declare-fun b!2398513 () Bool)

(assert (=> b!2398513 (= e!1528289 (h!33596 (t!208270 l!9164)))))

(assert (=> d!699394 e!1528293))

(declare-fun res!1019144 () Bool)

(assert (=> d!699394 (=> (not res!1019144) (not e!1528293))))

(assert (=> d!699394 (= res!1019144 (validRegex!2752 lt!872351))))

(assert (=> d!699394 (= lt!872351 e!1528289)))

(declare-fun c!381822 () Bool)

(assert (=> d!699394 (= c!381822 e!1528292)))

(declare-fun res!1019143 () Bool)

(assert (=> d!699394 (=> (not res!1019143) (not e!1528292))))

(assert (=> d!699394 (= res!1019143 ((_ is Cons!28195) (t!208270 l!9164)))))

(assert (=> d!699394 (forall!5661 (t!208270 l!9164) lambda!90107)))

(assert (=> d!699394 (= (generalisedConcat!128 (t!208270 l!9164)) lt!872351)))

(declare-fun b!2398514 () Bool)

(assert (=> b!2398514 (= e!1528294 (= lt!872351 (head!5285 (t!208270 l!9164))))))

(assert (= (and d!699394 res!1019143) b!2398512))

(assert (= (and d!699394 c!381822) b!2398513))

(assert (= (and d!699394 (not c!381822)) b!2398506))

(assert (= (and b!2398506 c!381825) b!2398510))

(assert (= (and b!2398506 (not c!381825)) b!2398509))

(assert (= (and d!699394 res!1019144) b!2398507))

(assert (= (and b!2398507 c!381823) b!2398505))

(assert (= (and b!2398507 (not c!381823)) b!2398511))

(assert (= (and b!2398511 c!381824) b!2398514))

(assert (= (and b!2398511 (not c!381824)) b!2398508))

(declare-fun m!2796809 () Bool)

(assert (=> b!2398510 m!2796809))

(declare-fun m!2796811 () Bool)

(assert (=> d!699394 m!2796811))

(declare-fun m!2796813 () Bool)

(assert (=> d!699394 m!2796813))

(declare-fun m!2796815 () Bool)

(assert (=> b!2398507 m!2796815))

(declare-fun m!2796817 () Bool)

(assert (=> b!2398508 m!2796817))

(declare-fun m!2796819 () Bool)

(assert (=> b!2398511 m!2796819))

(assert (=> b!2398511 m!2796819))

(declare-fun m!2796821 () Bool)

(assert (=> b!2398511 m!2796821))

(declare-fun m!2796823 () Bool)

(assert (=> b!2398514 m!2796823))

(declare-fun m!2796825 () Bool)

(assert (=> b!2398512 m!2796825))

(declare-fun m!2796827 () Bool)

(assert (=> b!2398505 m!2796827))

(assert (=> b!2398390 d!699394))

(declare-fun d!699398 () Bool)

(assert (=> d!699398 (matchR!3144 (Concat!11663 lt!872320 EmptyExpr!7027) (++!6981 (_1!16500 lt!872305) (_2!16500 lt!872305)))))

(declare-fun lt!872362 () Unit!41318)

(declare-fun choose!14198 (Regex!7027 Regex!7027 List!28292 List!28292 List!28292) Unit!41318)

(assert (=> d!699398 (= lt!872362 (choose!14198 lt!872320 EmptyExpr!7027 (_1!16500 lt!872305) (_2!16500 lt!872305) s!9460))))

(assert (=> d!699398 (validRegex!2752 lt!872320)))

(assert (=> d!699398 (= (lemmaFindSeparationIsDefinedThenConcatMatches!46 lt!872320 EmptyExpr!7027 (_1!16500 lt!872305) (_2!16500 lt!872305) s!9460) lt!872362)))

(declare-fun bs!463057 () Bool)

(assert (= bs!463057 d!699398))

(declare-fun m!2796901 () Bool)

(assert (=> bs!463057 m!2796901))

(assert (=> bs!463057 m!2796901))

(declare-fun m!2796903 () Bool)

(assert (=> bs!463057 m!2796903))

(declare-fun m!2796905 () Bool)

(assert (=> bs!463057 m!2796905))

(declare-fun m!2796907 () Bool)

(assert (=> bs!463057 m!2796907))

(assert (=> b!2398391 d!699398))

(declare-fun d!699414 () Bool)

(assert (=> d!699414 (= (get!8638 lt!872310) (v!30977 lt!872310))))

(assert (=> b!2398391 d!699414))

(declare-fun d!699422 () Bool)

(declare-fun res!1019176 () Bool)

(declare-fun e!1528338 () Bool)

(assert (=> d!699422 (=> res!1019176 e!1528338)))

(assert (=> d!699422 (= res!1019176 ((_ is Nil!28195) l!9164))))

(assert (=> d!699422 (= (forall!5661 l!9164 lambda!90091) e!1528338)))

(declare-fun b!2398582 () Bool)

(declare-fun e!1528339 () Bool)

(assert (=> b!2398582 (= e!1528338 e!1528339)))

(declare-fun res!1019177 () Bool)

(assert (=> b!2398582 (=> (not res!1019177) (not e!1528339))))

(declare-fun dynLambda!12142 (Int Regex!7027) Bool)

(assert (=> b!2398582 (= res!1019177 (dynLambda!12142 lambda!90091 (h!33596 l!9164)))))

(declare-fun b!2398583 () Bool)

(assert (=> b!2398583 (= e!1528339 (forall!5661 (t!208270 l!9164) lambda!90091))))

(assert (= (and d!699422 (not res!1019176)) b!2398582))

(assert (= (and b!2398582 res!1019177) b!2398583))

(declare-fun b_lambda!74277 () Bool)

(assert (=> (not b_lambda!74277) (not b!2398582)))

(declare-fun m!2796945 () Bool)

(assert (=> b!2398582 m!2796945))

(declare-fun m!2796947 () Bool)

(assert (=> b!2398583 m!2796947))

(assert (=> start!235320 d!699422))

(declare-fun d!699430 () Bool)

(assert (=> d!699430 (= (isDefined!4398 (findConcatSeparation!678 lt!872320 call!146483 Nil!28194 s!9460 s!9460)) (not (isEmpty!16192 (findConcatSeparation!678 lt!872320 call!146483 Nil!28194 s!9460 s!9460))))))

(declare-fun bs!463061 () Bool)

(assert (= bs!463061 d!699430))

(assert (=> bs!463061 m!2796689))

(declare-fun m!2796949 () Bool)

(assert (=> bs!463061 m!2796949))

(assert (=> b!2398375 d!699430))

(declare-fun b!2398585 () Bool)

(declare-fun res!1019178 () Bool)

(declare-fun e!1528343 () Bool)

(assert (=> b!2398585 (=> (not res!1019178) (not e!1528343))))

(declare-fun lt!872368 () Option!5570)

(assert (=> b!2398585 (= res!1019178 (matchR!3144 lt!872320 (_1!16500 (get!8638 lt!872368))))))

(declare-fun b!2398586 () Bool)

(declare-fun e!1528342 () Option!5570)

(declare-fun e!1528341 () Option!5570)

(assert (=> b!2398586 (= e!1528342 e!1528341)))

(declare-fun c!381845 () Bool)

(assert (=> b!2398586 (= c!381845 ((_ is Nil!28194) s!9460))))

(declare-fun b!2398587 () Bool)

(declare-fun res!1019181 () Bool)

(assert (=> b!2398587 (=> (not res!1019181) (not e!1528343))))

(assert (=> b!2398587 (= res!1019181 (matchR!3144 call!146483 (_2!16500 (get!8638 lt!872368))))))

(declare-fun b!2398588 () Bool)

(declare-fun e!1528344 () Bool)

(assert (=> b!2398588 (= e!1528344 (not (isDefined!4398 lt!872368)))))

(declare-fun b!2398589 () Bool)

(assert (=> b!2398589 (= e!1528341 None!5569)))

(declare-fun b!2398590 () Bool)

(declare-fun e!1528340 () Bool)

(assert (=> b!2398590 (= e!1528340 (matchR!3144 call!146483 s!9460))))

(declare-fun b!2398591 () Bool)

(assert (=> b!2398591 (= e!1528343 (= (++!6981 (_1!16500 (get!8638 lt!872368)) (_2!16500 (get!8638 lt!872368))) s!9460))))

(declare-fun b!2398592 () Bool)

(assert (=> b!2398592 (= e!1528342 (Some!5569 (tuple2!27919 Nil!28194 s!9460)))))

(declare-fun d!699432 () Bool)

(assert (=> d!699432 e!1528344))

(declare-fun res!1019179 () Bool)

(assert (=> d!699432 (=> res!1019179 e!1528344)))

(assert (=> d!699432 (= res!1019179 e!1528343)))

(declare-fun res!1019182 () Bool)

(assert (=> d!699432 (=> (not res!1019182) (not e!1528343))))

(assert (=> d!699432 (= res!1019182 (isDefined!4398 lt!872368))))

(assert (=> d!699432 (= lt!872368 e!1528342)))

(declare-fun c!381844 () Bool)

(assert (=> d!699432 (= c!381844 e!1528340)))

(declare-fun res!1019180 () Bool)

(assert (=> d!699432 (=> (not res!1019180) (not e!1528340))))

(assert (=> d!699432 (= res!1019180 (matchR!3144 lt!872320 Nil!28194))))

(assert (=> d!699432 (validRegex!2752 lt!872320)))

(assert (=> d!699432 (= (findConcatSeparation!678 lt!872320 call!146483 Nil!28194 s!9460 s!9460) lt!872368)))

(declare-fun b!2398584 () Bool)

(declare-fun lt!872367 () Unit!41318)

(declare-fun lt!872369 () Unit!41318)

(assert (=> b!2398584 (= lt!872367 lt!872369)))

(assert (=> b!2398584 (= (++!6981 (++!6981 Nil!28194 (Cons!28194 (h!33595 s!9460) Nil!28194)) (t!208269 s!9460)) s!9460)))

(assert (=> b!2398584 (= lt!872369 (lemmaMoveElementToOtherListKeepsConcatEq!623 Nil!28194 (h!33595 s!9460) (t!208269 s!9460) s!9460))))

(assert (=> b!2398584 (= e!1528341 (findConcatSeparation!678 lt!872320 call!146483 (++!6981 Nil!28194 (Cons!28194 (h!33595 s!9460) Nil!28194)) (t!208269 s!9460) s!9460))))

(assert (= (and d!699432 res!1019180) b!2398590))

(assert (= (and d!699432 c!381844) b!2398592))

(assert (= (and d!699432 (not c!381844)) b!2398586))

(assert (= (and b!2398586 c!381845) b!2398589))

(assert (= (and b!2398586 (not c!381845)) b!2398584))

(assert (= (and d!699432 res!1019182) b!2398585))

(assert (= (and b!2398585 res!1019178) b!2398587))

(assert (= (and b!2398587 res!1019181) b!2398591))

(assert (= (and d!699432 (not res!1019179)) b!2398588))

(declare-fun m!2796951 () Bool)

(assert (=> b!2398585 m!2796951))

(declare-fun m!2796953 () Bool)

(assert (=> b!2398585 m!2796953))

(declare-fun m!2796955 () Bool)

(assert (=> d!699432 m!2796955))

(declare-fun m!2796957 () Bool)

(assert (=> d!699432 m!2796957))

(assert (=> d!699432 m!2796907))

(assert (=> b!2398587 m!2796951))

(declare-fun m!2796959 () Bool)

(assert (=> b!2398587 m!2796959))

(assert (=> b!2398588 m!2796955))

(declare-fun m!2796961 () Bool)

(assert (=> b!2398590 m!2796961))

(assert (=> b!2398584 m!2796777))

(assert (=> b!2398584 m!2796777))

(assert (=> b!2398584 m!2796779))

(assert (=> b!2398584 m!2796781))

(assert (=> b!2398584 m!2796777))

(declare-fun m!2796963 () Bool)

(assert (=> b!2398584 m!2796963))

(assert (=> b!2398591 m!2796951))

(declare-fun m!2796965 () Bool)

(assert (=> b!2398591 m!2796965))

(assert (=> b!2398375 d!699432))

(declare-fun b!2398720 () Bool)

(declare-fun e!1528418 () Bool)

(declare-fun head!5287 (List!28292) C!14212)

(assert (=> b!2398720 (= e!1528418 (= (head!5287 s!9460) (c!381793 lt!872320)))))

(declare-fun b!2398721 () Bool)

(declare-fun res!1019252 () Bool)

(declare-fun e!1528412 () Bool)

(assert (=> b!2398721 (=> res!1019252 e!1528412)))

(assert (=> b!2398721 (= res!1019252 e!1528418)))

(declare-fun res!1019250 () Bool)

(assert (=> b!2398721 (=> (not res!1019250) (not e!1528418))))

(declare-fun lt!872376 () Bool)

(assert (=> b!2398721 (= res!1019250 lt!872376)))

(declare-fun b!2398722 () Bool)

(declare-fun e!1528416 () Bool)

(assert (=> b!2398722 (= e!1528412 e!1528416)))

(declare-fun res!1019257 () Bool)

(assert (=> b!2398722 (=> (not res!1019257) (not e!1528416))))

(assert (=> b!2398722 (= res!1019257 (not lt!872376))))

(declare-fun b!2398723 () Bool)

(declare-fun e!1528417 () Bool)

(assert (=> b!2398723 (= e!1528417 (not (= (head!5287 s!9460) (c!381793 lt!872320))))))

(declare-fun b!2398724 () Bool)

(declare-fun res!1019253 () Bool)

(assert (=> b!2398724 (=> (not res!1019253) (not e!1528418))))

(declare-fun call!146505 () Bool)

(assert (=> b!2398724 (= res!1019253 (not call!146505))))

(declare-fun bm!146500 () Bool)

(assert (=> bm!146500 (= call!146505 (isEmpty!16190 s!9460))))

(declare-fun b!2398725 () Bool)

(declare-fun e!1528415 () Bool)

(assert (=> b!2398725 (= e!1528415 (not lt!872376))))

(declare-fun d!699434 () Bool)

(declare-fun e!1528414 () Bool)

(assert (=> d!699434 e!1528414))

(declare-fun c!381876 () Bool)

(assert (=> d!699434 (= c!381876 ((_ is EmptyExpr!7027) lt!872320))))

(declare-fun e!1528413 () Bool)

(assert (=> d!699434 (= lt!872376 e!1528413)))

(declare-fun c!381878 () Bool)

(assert (=> d!699434 (= c!381878 (isEmpty!16190 s!9460))))

(assert (=> d!699434 (validRegex!2752 lt!872320)))

(assert (=> d!699434 (= (matchR!3144 lt!872320 s!9460) lt!872376)))

(declare-fun b!2398726 () Bool)

(assert (=> b!2398726 (= e!1528414 e!1528415)))

(declare-fun c!381877 () Bool)

(assert (=> b!2398726 (= c!381877 ((_ is EmptyLang!7027) lt!872320))))

(declare-fun b!2398727 () Bool)

(assert (=> b!2398727 (= e!1528414 (= lt!872376 call!146505))))

(declare-fun b!2398728 () Bool)

(declare-fun res!1019254 () Bool)

(assert (=> b!2398728 (=> (not res!1019254) (not e!1528418))))

(declare-fun tail!3557 (List!28292) List!28292)

(assert (=> b!2398728 (= res!1019254 (isEmpty!16190 (tail!3557 s!9460)))))

(declare-fun b!2398729 () Bool)

(declare-fun nullable!2076 (Regex!7027) Bool)

(assert (=> b!2398729 (= e!1528413 (nullable!2076 lt!872320))))

(declare-fun b!2398730 () Bool)

(declare-fun derivativeStep!1734 (Regex!7027 C!14212) Regex!7027)

(assert (=> b!2398730 (= e!1528413 (matchR!3144 (derivativeStep!1734 lt!872320 (head!5287 s!9460)) (tail!3557 s!9460)))))

(declare-fun b!2398731 () Bool)

(declare-fun res!1019256 () Bool)

(assert (=> b!2398731 (=> res!1019256 e!1528412)))

(assert (=> b!2398731 (= res!1019256 (not ((_ is ElementMatch!7027) lt!872320)))))

(assert (=> b!2398731 (= e!1528415 e!1528412)))

(declare-fun b!2398732 () Bool)

(assert (=> b!2398732 (= e!1528416 e!1528417)))

(declare-fun res!1019255 () Bool)

(assert (=> b!2398732 (=> res!1019255 e!1528417)))

(assert (=> b!2398732 (= res!1019255 call!146505)))

(declare-fun b!2398733 () Bool)

(declare-fun res!1019251 () Bool)

(assert (=> b!2398733 (=> res!1019251 e!1528417)))

(assert (=> b!2398733 (= res!1019251 (not (isEmpty!16190 (tail!3557 s!9460))))))

(assert (= (and d!699434 c!381878) b!2398729))

(assert (= (and d!699434 (not c!381878)) b!2398730))

(assert (= (and d!699434 c!381876) b!2398727))

(assert (= (and d!699434 (not c!381876)) b!2398726))

(assert (= (and b!2398726 c!381877) b!2398725))

(assert (= (and b!2398726 (not c!381877)) b!2398731))

(assert (= (and b!2398731 (not res!1019256)) b!2398721))

(assert (= (and b!2398721 res!1019250) b!2398724))

(assert (= (and b!2398724 res!1019253) b!2398728))

(assert (= (and b!2398728 res!1019254) b!2398720))

(assert (= (and b!2398721 (not res!1019252)) b!2398722))

(assert (= (and b!2398722 res!1019257) b!2398732))

(assert (= (and b!2398732 (not res!1019255)) b!2398733))

(assert (= (and b!2398733 (not res!1019251)) b!2398723))

(assert (= (or b!2398727 b!2398724 b!2398732) bm!146500))

(assert (=> d!699434 m!2796687))

(assert (=> d!699434 m!2796907))

(assert (=> bm!146500 m!2796687))

(declare-fun m!2796991 () Bool)

(assert (=> b!2398720 m!2796991))

(declare-fun m!2796993 () Bool)

(assert (=> b!2398733 m!2796993))

(assert (=> b!2398733 m!2796993))

(declare-fun m!2796995 () Bool)

(assert (=> b!2398733 m!2796995))

(assert (=> b!2398728 m!2796993))

(assert (=> b!2398728 m!2796993))

(assert (=> b!2398728 m!2796995))

(assert (=> b!2398723 m!2796991))

(assert (=> b!2398730 m!2796991))

(assert (=> b!2398730 m!2796991))

(declare-fun m!2796997 () Bool)

(assert (=> b!2398730 m!2796997))

(assert (=> b!2398730 m!2796993))

(assert (=> b!2398730 m!2796997))

(assert (=> b!2398730 m!2796993))

(declare-fun m!2797001 () Bool)

(assert (=> b!2398730 m!2797001))

(declare-fun m!2797003 () Bool)

(assert (=> b!2398729 m!2797003))

(assert (=> b!2398375 d!699434))

(declare-fun d!699444 () Bool)

(assert (=> d!699444 (= (isDefined!4398 (findConcatSeparation!678 (regOne!14566 r!13927) (regTwo!14566 r!13927) Nil!28194 s!9460 s!9460)) (not (isEmpty!16192 (findConcatSeparation!678 (regOne!14566 r!13927) (regTwo!14566 r!13927) Nil!28194 s!9460 s!9460))))))

(declare-fun bs!463070 () Bool)

(assert (= bs!463070 d!699444))

(assert (=> bs!463070 m!2796709))

(declare-fun m!2797005 () Bool)

(assert (=> bs!463070 m!2797005))

(assert (=> b!2398374 d!699444))

(declare-fun d!699448 () Bool)

(declare-fun choose!14199 (Int) Bool)

(assert (=> d!699448 (= (Exists!1089 lambda!90093) (choose!14199 lambda!90093))))

(declare-fun bs!463071 () Bool)

(assert (= bs!463071 d!699448))

(declare-fun m!2797007 () Bool)

(assert (=> bs!463071 m!2797007))

(assert (=> b!2398374 d!699448))

(declare-fun bs!463072 () Bool)

(declare-fun d!699450 () Bool)

(assert (= bs!463072 (and d!699450 b!2398374)))

(declare-fun lambda!90119 () Int)

(assert (=> bs!463072 (= lambda!90119 lambda!90092)))

(assert (=> bs!463072 (not (= lambda!90119 lambda!90093))))

(assert (=> d!699450 true))

(assert (=> d!699450 true))

(assert (=> d!699450 true))

(assert (=> d!699450 (= (isDefined!4398 (findConcatSeparation!678 (regOne!14566 r!13927) (regTwo!14566 r!13927) Nil!28194 s!9460 s!9460)) (Exists!1089 lambda!90119))))

(declare-fun lt!872392 () Unit!41318)

(declare-fun choose!14200 (Regex!7027 Regex!7027 List!28292) Unit!41318)

(assert (=> d!699450 (= lt!872392 (choose!14200 (regOne!14566 r!13927) (regTwo!14566 r!13927) s!9460))))

(assert (=> d!699450 (validRegex!2752 (regOne!14566 r!13927))))

(assert (=> d!699450 (= (lemmaFindConcatSeparationEquivalentToExists!678 (regOne!14566 r!13927) (regTwo!14566 r!13927) s!9460) lt!872392)))

(declare-fun bs!463073 () Bool)

(assert (= bs!463073 d!699450))

(declare-fun m!2797071 () Bool)

(assert (=> bs!463073 m!2797071))

(assert (=> bs!463073 m!2796709))

(assert (=> bs!463073 m!2796711))

(declare-fun m!2797073 () Bool)

(assert (=> bs!463073 m!2797073))

(assert (=> bs!463073 m!2796709))

(declare-fun m!2797075 () Bool)

(assert (=> bs!463073 m!2797075))

(assert (=> b!2398374 d!699450))

(declare-fun bs!463078 () Bool)

(declare-fun d!699462 () Bool)

(assert (= bs!463078 (and d!699462 b!2398374)))

(declare-fun lambda!90124 () Int)

(assert (=> bs!463078 (= lambda!90124 lambda!90092)))

(assert (=> bs!463078 (not (= lambda!90124 lambda!90093))))

(declare-fun bs!463079 () Bool)

(assert (= bs!463079 (and d!699462 d!699450)))

(assert (=> bs!463079 (= lambda!90124 lambda!90119)))

(assert (=> d!699462 true))

(assert (=> d!699462 true))

(assert (=> d!699462 true))

(declare-fun lambda!90125 () Int)

(assert (=> bs!463078 (not (= lambda!90125 lambda!90092))))

(assert (=> bs!463078 (= lambda!90125 lambda!90093)))

(assert (=> bs!463079 (not (= lambda!90125 lambda!90119))))

(declare-fun bs!463080 () Bool)

(assert (= bs!463080 d!699462))

(assert (=> bs!463080 (not (= lambda!90125 lambda!90124))))

(assert (=> d!699462 true))

(assert (=> d!699462 true))

(assert (=> d!699462 true))

(assert (=> d!699462 (= (Exists!1089 lambda!90124) (Exists!1089 lambda!90125))))

(declare-fun lt!872402 () Unit!41318)

(declare-fun choose!14201 (Regex!7027 Regex!7027 List!28292) Unit!41318)

(assert (=> d!699462 (= lt!872402 (choose!14201 (regOne!14566 r!13927) (regTwo!14566 r!13927) s!9460))))

(assert (=> d!699462 (validRegex!2752 (regOne!14566 r!13927))))

(assert (=> d!699462 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!428 (regOne!14566 r!13927) (regTwo!14566 r!13927) s!9460) lt!872402)))

(declare-fun m!2797107 () Bool)

(assert (=> bs!463080 m!2797107))

(declare-fun m!2797109 () Bool)

(assert (=> bs!463080 m!2797109))

(declare-fun m!2797111 () Bool)

(assert (=> bs!463080 m!2797111))

(assert (=> bs!463080 m!2797073))

(assert (=> b!2398374 d!699462))

(declare-fun b!2398870 () Bool)

(declare-fun res!1019315 () Bool)

(declare-fun e!1528491 () Bool)

(assert (=> b!2398870 (=> (not res!1019315) (not e!1528491))))

(declare-fun lt!872404 () Option!5570)

(assert (=> b!2398870 (= res!1019315 (matchR!3144 (regOne!14566 r!13927) (_1!16500 (get!8638 lt!872404))))))

(declare-fun b!2398871 () Bool)

(declare-fun e!1528490 () Option!5570)

(declare-fun e!1528489 () Option!5570)

(assert (=> b!2398871 (= e!1528490 e!1528489)))

(declare-fun c!381897 () Bool)

(assert (=> b!2398871 (= c!381897 ((_ is Nil!28194) s!9460))))

(declare-fun b!2398872 () Bool)

(declare-fun res!1019318 () Bool)

(assert (=> b!2398872 (=> (not res!1019318) (not e!1528491))))

(assert (=> b!2398872 (= res!1019318 (matchR!3144 (regTwo!14566 r!13927) (_2!16500 (get!8638 lt!872404))))))

(declare-fun b!2398873 () Bool)

(declare-fun e!1528492 () Bool)

(assert (=> b!2398873 (= e!1528492 (not (isDefined!4398 lt!872404)))))

(declare-fun b!2398874 () Bool)

(assert (=> b!2398874 (= e!1528489 None!5569)))

(declare-fun b!2398875 () Bool)

(declare-fun e!1528488 () Bool)

(assert (=> b!2398875 (= e!1528488 (matchR!3144 (regTwo!14566 r!13927) s!9460))))

(declare-fun b!2398876 () Bool)

(assert (=> b!2398876 (= e!1528491 (= (++!6981 (_1!16500 (get!8638 lt!872404)) (_2!16500 (get!8638 lt!872404))) s!9460))))

(declare-fun b!2398877 () Bool)

(assert (=> b!2398877 (= e!1528490 (Some!5569 (tuple2!27919 Nil!28194 s!9460)))))

(declare-fun d!699476 () Bool)

(assert (=> d!699476 e!1528492))

(declare-fun res!1019316 () Bool)

(assert (=> d!699476 (=> res!1019316 e!1528492)))

(assert (=> d!699476 (= res!1019316 e!1528491)))

(declare-fun res!1019319 () Bool)

(assert (=> d!699476 (=> (not res!1019319) (not e!1528491))))

(assert (=> d!699476 (= res!1019319 (isDefined!4398 lt!872404))))

(assert (=> d!699476 (= lt!872404 e!1528490)))

(declare-fun c!381896 () Bool)

(assert (=> d!699476 (= c!381896 e!1528488)))

(declare-fun res!1019317 () Bool)

(assert (=> d!699476 (=> (not res!1019317) (not e!1528488))))

(assert (=> d!699476 (= res!1019317 (matchR!3144 (regOne!14566 r!13927) Nil!28194))))

(assert (=> d!699476 (validRegex!2752 (regOne!14566 r!13927))))

(assert (=> d!699476 (= (findConcatSeparation!678 (regOne!14566 r!13927) (regTwo!14566 r!13927) Nil!28194 s!9460 s!9460) lt!872404)))

(declare-fun b!2398869 () Bool)

(declare-fun lt!872403 () Unit!41318)

(declare-fun lt!872405 () Unit!41318)

(assert (=> b!2398869 (= lt!872403 lt!872405)))

(assert (=> b!2398869 (= (++!6981 (++!6981 Nil!28194 (Cons!28194 (h!33595 s!9460) Nil!28194)) (t!208269 s!9460)) s!9460)))

(assert (=> b!2398869 (= lt!872405 (lemmaMoveElementToOtherListKeepsConcatEq!623 Nil!28194 (h!33595 s!9460) (t!208269 s!9460) s!9460))))

(assert (=> b!2398869 (= e!1528489 (findConcatSeparation!678 (regOne!14566 r!13927) (regTwo!14566 r!13927) (++!6981 Nil!28194 (Cons!28194 (h!33595 s!9460) Nil!28194)) (t!208269 s!9460) s!9460))))

(assert (= (and d!699476 res!1019317) b!2398875))

(assert (= (and d!699476 c!381896) b!2398877))

(assert (= (and d!699476 (not c!381896)) b!2398871))

(assert (= (and b!2398871 c!381897) b!2398874))

(assert (= (and b!2398871 (not c!381897)) b!2398869))

(assert (= (and d!699476 res!1019319) b!2398870))

(assert (= (and b!2398870 res!1019315) b!2398872))

(assert (= (and b!2398872 res!1019318) b!2398876))

(assert (= (and d!699476 (not res!1019316)) b!2398873))

(declare-fun m!2797113 () Bool)

(assert (=> b!2398870 m!2797113))

(declare-fun m!2797115 () Bool)

(assert (=> b!2398870 m!2797115))

(declare-fun m!2797117 () Bool)

(assert (=> d!699476 m!2797117))

(declare-fun m!2797119 () Bool)

(assert (=> d!699476 m!2797119))

(assert (=> d!699476 m!2797073))

(assert (=> b!2398872 m!2797113))

(declare-fun m!2797121 () Bool)

(assert (=> b!2398872 m!2797121))

(assert (=> b!2398873 m!2797117))

(declare-fun m!2797123 () Bool)

(assert (=> b!2398875 m!2797123))

(assert (=> b!2398869 m!2796777))

(assert (=> b!2398869 m!2796777))

(assert (=> b!2398869 m!2796779))

(assert (=> b!2398869 m!2796781))

(assert (=> b!2398869 m!2796777))

(declare-fun m!2797125 () Bool)

(assert (=> b!2398869 m!2797125))

(assert (=> b!2398876 m!2797113))

(declare-fun m!2797127 () Bool)

(assert (=> b!2398876 m!2797127))

(assert (=> b!2398374 d!699476))

(declare-fun d!699478 () Bool)

(assert (=> d!699478 (= (Exists!1089 lambda!90092) (choose!14199 lambda!90092))))

(declare-fun bs!463081 () Bool)

(assert (= bs!463081 d!699478))

(declare-fun m!2797129 () Bool)

(assert (=> bs!463081 m!2797129))

(assert (=> b!2398374 d!699478))

(declare-fun bs!463082 () Bool)

(declare-fun b!2398915 () Bool)

(assert (= bs!463082 (and b!2398915 d!699450)))

(declare-fun lambda!90130 () Int)

(assert (=> bs!463082 (not (= lambda!90130 lambda!90119))))

(declare-fun bs!463083 () Bool)

(assert (= bs!463083 (and b!2398915 b!2398374)))

(assert (=> bs!463083 (not (= lambda!90130 lambda!90093))))

(assert (=> bs!463083 (not (= lambda!90130 lambda!90092))))

(declare-fun bs!463084 () Bool)

(assert (= bs!463084 (and b!2398915 d!699462)))

(assert (=> bs!463084 (not (= lambda!90130 lambda!90125))))

(assert (=> bs!463084 (not (= lambda!90130 lambda!90124))))

(assert (=> b!2398915 true))

(assert (=> b!2398915 true))

(declare-fun bs!463085 () Bool)

(declare-fun b!2398917 () Bool)

(assert (= bs!463085 (and b!2398917 d!699450)))

(declare-fun lambda!90131 () Int)

(assert (=> bs!463085 (not (= lambda!90131 lambda!90119))))

(declare-fun bs!463086 () Bool)

(assert (= bs!463086 (and b!2398917 b!2398374)))

(assert (=> bs!463086 (= lambda!90131 lambda!90093)))

(declare-fun bs!463087 () Bool)

(assert (= bs!463087 (and b!2398917 b!2398915)))

(assert (=> bs!463087 (not (= lambda!90131 lambda!90130))))

(assert (=> bs!463086 (not (= lambda!90131 lambda!90092))))

(declare-fun bs!463088 () Bool)

(assert (= bs!463088 (and b!2398917 d!699462)))

(assert (=> bs!463088 (= lambda!90131 lambda!90125)))

(assert (=> bs!463088 (not (= lambda!90131 lambda!90124))))

(assert (=> b!2398917 true))

(assert (=> b!2398917 true))

(declare-fun b!2398910 () Bool)

(declare-fun e!1528517 () Bool)

(assert (=> b!2398910 (= e!1528517 (= s!9460 (Cons!28194 (c!381793 r!13927) Nil!28194)))))

(declare-fun b!2398911 () Bool)

(declare-fun c!381909 () Bool)

(assert (=> b!2398911 (= c!381909 ((_ is Union!7027) r!13927))))

(declare-fun e!1528512 () Bool)

(assert (=> b!2398911 (= e!1528517 e!1528512)))

(declare-fun bm!146516 () Bool)

(declare-fun c!381908 () Bool)

(declare-fun call!146522 () Bool)

(assert (=> bm!146516 (= call!146522 (Exists!1089 (ite c!381908 lambda!90130 lambda!90131)))))

(declare-fun d!699480 () Bool)

(declare-fun c!381907 () Bool)

(assert (=> d!699480 (= c!381907 ((_ is EmptyExpr!7027) r!13927))))

(declare-fun e!1528514 () Bool)

(assert (=> d!699480 (= (matchRSpec!876 r!13927 s!9460) e!1528514)))

(declare-fun b!2398912 () Bool)

(declare-fun call!146521 () Bool)

(assert (=> b!2398912 (= e!1528514 call!146521)))

(declare-fun b!2398913 () Bool)

(declare-fun res!1019338 () Bool)

(declare-fun e!1528513 () Bool)

(assert (=> b!2398913 (=> res!1019338 e!1528513)))

(assert (=> b!2398913 (= res!1019338 call!146521)))

(declare-fun e!1528516 () Bool)

(assert (=> b!2398913 (= e!1528516 e!1528513)))

(declare-fun bm!146517 () Bool)

(assert (=> bm!146517 (= call!146521 (isEmpty!16190 s!9460))))

(declare-fun b!2398914 () Bool)

(declare-fun e!1528515 () Bool)

(assert (=> b!2398914 (= e!1528512 e!1528515)))

(declare-fun res!1019337 () Bool)

(assert (=> b!2398914 (= res!1019337 (matchRSpec!876 (regOne!14567 r!13927) s!9460))))

(assert (=> b!2398914 (=> res!1019337 e!1528515)))

(assert (=> b!2398915 (= e!1528513 call!146522)))

(declare-fun b!2398916 () Bool)

(declare-fun c!381906 () Bool)

(assert (=> b!2398916 (= c!381906 ((_ is ElementMatch!7027) r!13927))))

(declare-fun e!1528511 () Bool)

(assert (=> b!2398916 (= e!1528511 e!1528517)))

(assert (=> b!2398917 (= e!1528516 call!146522)))

(declare-fun b!2398918 () Bool)

(assert (=> b!2398918 (= e!1528512 e!1528516)))

(assert (=> b!2398918 (= c!381908 ((_ is Star!7027) r!13927))))

(declare-fun b!2398919 () Bool)

(assert (=> b!2398919 (= e!1528514 e!1528511)))

(declare-fun res!1019336 () Bool)

(assert (=> b!2398919 (= res!1019336 (not ((_ is EmptyLang!7027) r!13927)))))

(assert (=> b!2398919 (=> (not res!1019336) (not e!1528511))))

(declare-fun b!2398920 () Bool)

(assert (=> b!2398920 (= e!1528515 (matchRSpec!876 (regTwo!14567 r!13927) s!9460))))

(assert (= (and d!699480 c!381907) b!2398912))

(assert (= (and d!699480 (not c!381907)) b!2398919))

(assert (= (and b!2398919 res!1019336) b!2398916))

(assert (= (and b!2398916 c!381906) b!2398910))

(assert (= (and b!2398916 (not c!381906)) b!2398911))

(assert (= (and b!2398911 c!381909) b!2398914))

(assert (= (and b!2398911 (not c!381909)) b!2398918))

(assert (= (and b!2398914 (not res!1019337)) b!2398920))

(assert (= (and b!2398918 c!381908) b!2398913))

(assert (= (and b!2398918 (not c!381908)) b!2398917))

(assert (= (and b!2398913 (not res!1019338)) b!2398915))

(assert (= (or b!2398915 b!2398917) bm!146516))

(assert (= (or b!2398912 b!2398913) bm!146517))

(declare-fun m!2797131 () Bool)

(assert (=> bm!146516 m!2797131))

(assert (=> bm!146517 m!2796687))

(declare-fun m!2797133 () Bool)

(assert (=> b!2398914 m!2797133))

(declare-fun m!2797135 () Bool)

(assert (=> b!2398920 m!2797135))

(assert (=> b!2398384 d!699480))

(declare-fun b!2398921 () Bool)

(declare-fun e!1528524 () Bool)

(assert (=> b!2398921 (= e!1528524 (= (head!5287 s!9460) (c!381793 r!13927)))))

(declare-fun b!2398922 () Bool)

(declare-fun res!1019341 () Bool)

(declare-fun e!1528518 () Bool)

(assert (=> b!2398922 (=> res!1019341 e!1528518)))

(assert (=> b!2398922 (= res!1019341 e!1528524)))

(declare-fun res!1019339 () Bool)

(assert (=> b!2398922 (=> (not res!1019339) (not e!1528524))))

(declare-fun lt!872406 () Bool)

(assert (=> b!2398922 (= res!1019339 lt!872406)))

(declare-fun b!2398923 () Bool)

(declare-fun e!1528522 () Bool)

(assert (=> b!2398923 (= e!1528518 e!1528522)))

(declare-fun res!1019346 () Bool)

(assert (=> b!2398923 (=> (not res!1019346) (not e!1528522))))

(assert (=> b!2398923 (= res!1019346 (not lt!872406))))

(declare-fun b!2398924 () Bool)

(declare-fun e!1528523 () Bool)

(assert (=> b!2398924 (= e!1528523 (not (= (head!5287 s!9460) (c!381793 r!13927))))))

(declare-fun b!2398925 () Bool)

(declare-fun res!1019342 () Bool)

(assert (=> b!2398925 (=> (not res!1019342) (not e!1528524))))

(declare-fun call!146523 () Bool)

(assert (=> b!2398925 (= res!1019342 (not call!146523))))

(declare-fun bm!146518 () Bool)

(assert (=> bm!146518 (= call!146523 (isEmpty!16190 s!9460))))

(declare-fun b!2398926 () Bool)

(declare-fun e!1528521 () Bool)

(assert (=> b!2398926 (= e!1528521 (not lt!872406))))

(declare-fun d!699482 () Bool)

(declare-fun e!1528520 () Bool)

(assert (=> d!699482 e!1528520))

(declare-fun c!381910 () Bool)

(assert (=> d!699482 (= c!381910 ((_ is EmptyExpr!7027) r!13927))))

(declare-fun e!1528519 () Bool)

(assert (=> d!699482 (= lt!872406 e!1528519)))

(declare-fun c!381912 () Bool)

(assert (=> d!699482 (= c!381912 (isEmpty!16190 s!9460))))

(assert (=> d!699482 (validRegex!2752 r!13927)))

(assert (=> d!699482 (= (matchR!3144 r!13927 s!9460) lt!872406)))

(declare-fun b!2398927 () Bool)

(assert (=> b!2398927 (= e!1528520 e!1528521)))

(declare-fun c!381911 () Bool)

(assert (=> b!2398927 (= c!381911 ((_ is EmptyLang!7027) r!13927))))

(declare-fun b!2398928 () Bool)

(assert (=> b!2398928 (= e!1528520 (= lt!872406 call!146523))))

(declare-fun b!2398929 () Bool)

(declare-fun res!1019343 () Bool)

(assert (=> b!2398929 (=> (not res!1019343) (not e!1528524))))

(assert (=> b!2398929 (= res!1019343 (isEmpty!16190 (tail!3557 s!9460)))))

(declare-fun b!2398930 () Bool)

(assert (=> b!2398930 (= e!1528519 (nullable!2076 r!13927))))

(declare-fun b!2398931 () Bool)

(assert (=> b!2398931 (= e!1528519 (matchR!3144 (derivativeStep!1734 r!13927 (head!5287 s!9460)) (tail!3557 s!9460)))))

(declare-fun b!2398932 () Bool)

(declare-fun res!1019345 () Bool)

(assert (=> b!2398932 (=> res!1019345 e!1528518)))

(assert (=> b!2398932 (= res!1019345 (not ((_ is ElementMatch!7027) r!13927)))))

(assert (=> b!2398932 (= e!1528521 e!1528518)))

(declare-fun b!2398933 () Bool)

(assert (=> b!2398933 (= e!1528522 e!1528523)))

(declare-fun res!1019344 () Bool)

(assert (=> b!2398933 (=> res!1019344 e!1528523)))

(assert (=> b!2398933 (= res!1019344 call!146523)))

(declare-fun b!2398934 () Bool)

(declare-fun res!1019340 () Bool)

(assert (=> b!2398934 (=> res!1019340 e!1528523)))

(assert (=> b!2398934 (= res!1019340 (not (isEmpty!16190 (tail!3557 s!9460))))))

(assert (= (and d!699482 c!381912) b!2398930))

(assert (= (and d!699482 (not c!381912)) b!2398931))

(assert (= (and d!699482 c!381910) b!2398928))

(assert (= (and d!699482 (not c!381910)) b!2398927))

(assert (= (and b!2398927 c!381911) b!2398926))

(assert (= (and b!2398927 (not c!381911)) b!2398932))

(assert (= (and b!2398932 (not res!1019345)) b!2398922))

(assert (= (and b!2398922 res!1019339) b!2398925))

(assert (= (and b!2398925 res!1019342) b!2398929))

(assert (= (and b!2398929 res!1019343) b!2398921))

(assert (= (and b!2398922 (not res!1019341)) b!2398923))

(assert (= (and b!2398923 res!1019346) b!2398933))

(assert (= (and b!2398933 (not res!1019344)) b!2398934))

(assert (= (and b!2398934 (not res!1019340)) b!2398924))

(assert (= (or b!2398928 b!2398925 b!2398933) bm!146518))

(assert (=> d!699482 m!2796687))

(assert (=> d!699482 m!2796729))

(assert (=> bm!146518 m!2796687))

(assert (=> b!2398921 m!2796991))

(assert (=> b!2398934 m!2796993))

(assert (=> b!2398934 m!2796993))

(assert (=> b!2398934 m!2796995))

(assert (=> b!2398929 m!2796993))

(assert (=> b!2398929 m!2796993))

(assert (=> b!2398929 m!2796995))

(assert (=> b!2398924 m!2796991))

(assert (=> b!2398931 m!2796991))

(assert (=> b!2398931 m!2796991))

(declare-fun m!2797137 () Bool)

(assert (=> b!2398931 m!2797137))

(assert (=> b!2398931 m!2796993))

(assert (=> b!2398931 m!2797137))

(assert (=> b!2398931 m!2796993))

(declare-fun m!2797139 () Bool)

(assert (=> b!2398931 m!2797139))

(declare-fun m!2797141 () Bool)

(assert (=> b!2398930 m!2797141))

(assert (=> b!2398384 d!699482))

(declare-fun d!699484 () Bool)

(assert (=> d!699484 (= (matchR!3144 r!13927 s!9460) (matchRSpec!876 r!13927 s!9460))))

(declare-fun lt!872409 () Unit!41318)

(declare-fun choose!14204 (Regex!7027 List!28292) Unit!41318)

(assert (=> d!699484 (= lt!872409 (choose!14204 r!13927 s!9460))))

(assert (=> d!699484 (validRegex!2752 r!13927)))

(assert (=> d!699484 (= (mainMatchTheorem!876 r!13927 s!9460) lt!872409)))

(declare-fun bs!463089 () Bool)

(assert (= bs!463089 d!699484))

(assert (=> bs!463089 m!2796703))

(assert (=> bs!463089 m!2796701))

(declare-fun m!2797143 () Bool)

(assert (=> bs!463089 m!2797143))

(assert (=> bs!463089 m!2796729))

(assert (=> b!2398384 d!699484))

(declare-fun bs!463090 () Bool)

(declare-fun d!699486 () Bool)

(assert (= bs!463090 (and d!699486 start!235320)))

(declare-fun lambda!90132 () Int)

(assert (=> bs!463090 (= lambda!90132 lambda!90091)))

(declare-fun bs!463091 () Bool)

(assert (= bs!463091 (and d!699486 d!699394)))

(assert (=> bs!463091 (= lambda!90132 lambda!90107)))

(declare-fun b!2398935 () Bool)

(declare-fun e!1528526 () Bool)

(declare-fun lt!872410 () Regex!7027)

(assert (=> b!2398935 (= e!1528526 (isEmptyExpr!97 lt!872410))))

(declare-fun b!2398936 () Bool)

(declare-fun e!1528525 () Regex!7027)

(declare-fun e!1528527 () Regex!7027)

(assert (=> b!2398936 (= e!1528525 e!1528527)))

(declare-fun c!381916 () Bool)

(assert (=> b!2398936 (= c!381916 ((_ is Cons!28195) l!9164))))

(declare-fun b!2398937 () Bool)

(declare-fun e!1528529 () Bool)

(assert (=> b!2398937 (= e!1528529 e!1528526)))

(declare-fun c!381914 () Bool)

(assert (=> b!2398937 (= c!381914 (isEmpty!16189 l!9164))))

(declare-fun b!2398938 () Bool)

(declare-fun e!1528530 () Bool)

(assert (=> b!2398938 (= e!1528530 (isConcat!97 lt!872410))))

(declare-fun b!2398939 () Bool)

(assert (=> b!2398939 (= e!1528527 EmptyExpr!7027)))

(declare-fun b!2398940 () Bool)

(assert (=> b!2398940 (= e!1528527 (Concat!11663 (h!33596 l!9164) (generalisedConcat!128 (t!208270 l!9164))))))

(declare-fun b!2398941 () Bool)

(assert (=> b!2398941 (= e!1528526 e!1528530)))

(declare-fun c!381915 () Bool)

(assert (=> b!2398941 (= c!381915 (isEmpty!16189 (tail!3555 l!9164)))))

(declare-fun b!2398942 () Bool)

(declare-fun e!1528528 () Bool)

(assert (=> b!2398942 (= e!1528528 (isEmpty!16189 (t!208270 l!9164)))))

(declare-fun b!2398943 () Bool)

(assert (=> b!2398943 (= e!1528525 (h!33596 l!9164))))

(assert (=> d!699486 e!1528529))

(declare-fun res!1019348 () Bool)

(assert (=> d!699486 (=> (not res!1019348) (not e!1528529))))

(assert (=> d!699486 (= res!1019348 (validRegex!2752 lt!872410))))

(assert (=> d!699486 (= lt!872410 e!1528525)))

(declare-fun c!381913 () Bool)

(assert (=> d!699486 (= c!381913 e!1528528)))

(declare-fun res!1019347 () Bool)

(assert (=> d!699486 (=> (not res!1019347) (not e!1528528))))

(assert (=> d!699486 (= res!1019347 ((_ is Cons!28195) l!9164))))

(assert (=> d!699486 (forall!5661 l!9164 lambda!90132)))

(assert (=> d!699486 (= (generalisedConcat!128 l!9164) lt!872410)))

(declare-fun b!2398944 () Bool)

(assert (=> b!2398944 (= e!1528530 (= lt!872410 (head!5285 l!9164)))))

(assert (= (and d!699486 res!1019347) b!2398942))

(assert (= (and d!699486 c!381913) b!2398943))

(assert (= (and d!699486 (not c!381913)) b!2398936))

(assert (= (and b!2398936 c!381916) b!2398940))

(assert (= (and b!2398936 (not c!381916)) b!2398939))

(assert (= (and d!699486 res!1019348) b!2398937))

(assert (= (and b!2398937 c!381914) b!2398935))

(assert (= (and b!2398937 (not c!381914)) b!2398941))

(assert (= (and b!2398941 c!381915) b!2398944))

(assert (= (and b!2398941 (not c!381915)) b!2398938))

(assert (=> b!2398940 m!2796673))

(declare-fun m!2797145 () Bool)

(assert (=> d!699486 m!2797145))

(declare-fun m!2797147 () Bool)

(assert (=> d!699486 m!2797147))

(assert (=> b!2398937 m!2796679))

(declare-fun m!2797149 () Bool)

(assert (=> b!2398938 m!2797149))

(assert (=> b!2398941 m!2796735))

(assert (=> b!2398941 m!2796735))

(declare-fun m!2797151 () Bool)

(assert (=> b!2398941 m!2797151))

(assert (=> b!2398944 m!2796739))

(assert (=> b!2398942 m!2796815))

(declare-fun m!2797153 () Bool)

(assert (=> b!2398935 m!2797153))

(assert (=> b!2398388 d!699486))

(declare-fun d!699488 () Bool)

(assert (=> d!699488 (= (isDefined!4398 (ite c!381789 (ite c!381788 call!146490 lt!872310) call!146488)) (not (isEmpty!16192 (ite c!381789 (ite c!381788 call!146490 lt!872310) call!146488))))))

(declare-fun bs!463092 () Bool)

(assert (= bs!463092 d!699488))

(declare-fun m!2797155 () Bool)

(assert (=> bs!463092 m!2797155))

(assert (=> bm!146477 d!699488))

(declare-fun e!1528536 () List!28292)

(declare-fun b!2398954 () Bool)

(assert (=> b!2398954 (= e!1528536 (Cons!28194 (h!33595 (ite c!381788 s!9460 (_1!16500 lt!872305))) (++!6981 (t!208269 (ite c!381788 s!9460 (_1!16500 lt!872305))) (ite c!381788 Nil!28194 (_2!16500 lt!872305)))))))

(declare-fun lt!872413 () List!28292)

(declare-fun b!2398956 () Bool)

(declare-fun e!1528535 () Bool)

(assert (=> b!2398956 (= e!1528535 (or (not (= (ite c!381788 Nil!28194 (_2!16500 lt!872305)) Nil!28194)) (= lt!872413 (ite c!381788 s!9460 (_1!16500 lt!872305)))))))

(declare-fun d!699490 () Bool)

(assert (=> d!699490 e!1528535))

(declare-fun res!1019353 () Bool)

(assert (=> d!699490 (=> (not res!1019353) (not e!1528535))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3864 (List!28292) (InoxSet C!14212))

(assert (=> d!699490 (= res!1019353 (= (content!3864 lt!872413) ((_ map or) (content!3864 (ite c!381788 s!9460 (_1!16500 lt!872305))) (content!3864 (ite c!381788 Nil!28194 (_2!16500 lt!872305))))))))

(assert (=> d!699490 (= lt!872413 e!1528536)))

(declare-fun c!381919 () Bool)

(assert (=> d!699490 (= c!381919 ((_ is Nil!28194) (ite c!381788 s!9460 (_1!16500 lt!872305))))))

(assert (=> d!699490 (= (++!6981 (ite c!381788 s!9460 (_1!16500 lt!872305)) (ite c!381788 Nil!28194 (_2!16500 lt!872305))) lt!872413)))

(declare-fun b!2398955 () Bool)

(declare-fun res!1019354 () Bool)

(assert (=> b!2398955 (=> (not res!1019354) (not e!1528535))))

(declare-fun size!22202 (List!28292) Int)

(assert (=> b!2398955 (= res!1019354 (= (size!22202 lt!872413) (+ (size!22202 (ite c!381788 s!9460 (_1!16500 lt!872305))) (size!22202 (ite c!381788 Nil!28194 (_2!16500 lt!872305))))))))

(declare-fun b!2398953 () Bool)

(assert (=> b!2398953 (= e!1528536 (ite c!381788 Nil!28194 (_2!16500 lt!872305)))))

(assert (= (and d!699490 c!381919) b!2398953))

(assert (= (and d!699490 (not c!381919)) b!2398954))

(assert (= (and d!699490 res!1019353) b!2398955))

(assert (= (and b!2398955 res!1019354) b!2398956))

(declare-fun m!2797157 () Bool)

(assert (=> b!2398954 m!2797157))

(declare-fun m!2797159 () Bool)

(assert (=> d!699490 m!2797159))

(declare-fun m!2797161 () Bool)

(assert (=> d!699490 m!2797161))

(declare-fun m!2797163 () Bool)

(assert (=> d!699490 m!2797163))

(declare-fun m!2797165 () Bool)

(assert (=> b!2398955 m!2797165))

(declare-fun m!2797167 () Bool)

(assert (=> b!2398955 m!2797167))

(declare-fun m!2797169 () Bool)

(assert (=> b!2398955 m!2797169))

(assert (=> bm!146487 d!699490))

(declare-fun d!699492 () Bool)

(assert (=> d!699492 (= (isEmpty!16190 s!9460) ((_ is Nil!28194) s!9460))))

(assert (=> b!2398380 d!699492))

(declare-fun b!2398958 () Bool)

(declare-fun res!1019355 () Bool)

(declare-fun e!1528540 () Bool)

(assert (=> b!2398958 (=> (not res!1019355) (not e!1528540))))

(declare-fun lt!872415 () Option!5570)

(assert (=> b!2398958 (= res!1019355 (matchR!3144 lt!872320 (_1!16500 (get!8638 lt!872415))))))

(declare-fun b!2398959 () Bool)

(declare-fun e!1528539 () Option!5570)

(declare-fun e!1528538 () Option!5570)

(assert (=> b!2398959 (= e!1528539 e!1528538)))

(declare-fun c!381921 () Bool)

(assert (=> b!2398959 (= c!381921 ((_ is Nil!28194) s!9460))))

(declare-fun b!2398960 () Bool)

(declare-fun res!1019358 () Bool)

(assert (=> b!2398960 (=> (not res!1019358) (not e!1528540))))

(assert (=> b!2398960 (= res!1019358 (matchR!3144 call!146489 (_2!16500 (get!8638 lt!872415))))))

(declare-fun b!2398961 () Bool)

(declare-fun e!1528541 () Bool)

(assert (=> b!2398961 (= e!1528541 (not (isDefined!4398 lt!872415)))))

(declare-fun b!2398962 () Bool)

(assert (=> b!2398962 (= e!1528538 None!5569)))

(declare-fun b!2398963 () Bool)

(declare-fun e!1528537 () Bool)

(assert (=> b!2398963 (= e!1528537 (matchR!3144 call!146489 s!9460))))

(declare-fun b!2398964 () Bool)

(assert (=> b!2398964 (= e!1528540 (= (++!6981 (_1!16500 (get!8638 lt!872415)) (_2!16500 (get!8638 lt!872415))) s!9460))))

(declare-fun b!2398965 () Bool)

(assert (=> b!2398965 (= e!1528539 (Some!5569 (tuple2!27919 Nil!28194 s!9460)))))

(declare-fun d!699494 () Bool)

(assert (=> d!699494 e!1528541))

(declare-fun res!1019356 () Bool)

(assert (=> d!699494 (=> res!1019356 e!1528541)))

(assert (=> d!699494 (= res!1019356 e!1528540)))

(declare-fun res!1019359 () Bool)

(assert (=> d!699494 (=> (not res!1019359) (not e!1528540))))

(assert (=> d!699494 (= res!1019359 (isDefined!4398 lt!872415))))

(assert (=> d!699494 (= lt!872415 e!1528539)))

(declare-fun c!381920 () Bool)

(assert (=> d!699494 (= c!381920 e!1528537)))

(declare-fun res!1019357 () Bool)

(assert (=> d!699494 (=> (not res!1019357) (not e!1528537))))

(assert (=> d!699494 (= res!1019357 (matchR!3144 lt!872320 Nil!28194))))

(assert (=> d!699494 (validRegex!2752 lt!872320)))

(assert (=> d!699494 (= (findConcatSeparation!678 lt!872320 call!146489 Nil!28194 s!9460 s!9460) lt!872415)))

(declare-fun b!2398957 () Bool)

(declare-fun lt!872414 () Unit!41318)

(declare-fun lt!872416 () Unit!41318)

(assert (=> b!2398957 (= lt!872414 lt!872416)))

(assert (=> b!2398957 (= (++!6981 (++!6981 Nil!28194 (Cons!28194 (h!33595 s!9460) Nil!28194)) (t!208269 s!9460)) s!9460)))

(assert (=> b!2398957 (= lt!872416 (lemmaMoveElementToOtherListKeepsConcatEq!623 Nil!28194 (h!33595 s!9460) (t!208269 s!9460) s!9460))))

(assert (=> b!2398957 (= e!1528538 (findConcatSeparation!678 lt!872320 call!146489 (++!6981 Nil!28194 (Cons!28194 (h!33595 s!9460) Nil!28194)) (t!208269 s!9460) s!9460))))

(assert (= (and d!699494 res!1019357) b!2398963))

(assert (= (and d!699494 c!381920) b!2398965))

(assert (= (and d!699494 (not c!381920)) b!2398959))

(assert (= (and b!2398959 c!381921) b!2398962))

(assert (= (and b!2398959 (not c!381921)) b!2398957))

(assert (= (and d!699494 res!1019359) b!2398958))

(assert (= (and b!2398958 res!1019355) b!2398960))

(assert (= (and b!2398960 res!1019358) b!2398964))

(assert (= (and d!699494 (not res!1019356)) b!2398961))

(declare-fun m!2797171 () Bool)

(assert (=> b!2398958 m!2797171))

(declare-fun m!2797173 () Bool)

(assert (=> b!2398958 m!2797173))

(declare-fun m!2797175 () Bool)

(assert (=> d!699494 m!2797175))

(assert (=> d!699494 m!2796957))

(assert (=> d!699494 m!2796907))

(assert (=> b!2398960 m!2797171))

(declare-fun m!2797177 () Bool)

(assert (=> b!2398960 m!2797177))

(assert (=> b!2398961 m!2797175))

(declare-fun m!2797179 () Bool)

(assert (=> b!2398963 m!2797179))

(assert (=> b!2398957 m!2796777))

(assert (=> b!2398957 m!2796777))

(assert (=> b!2398957 m!2796779))

(assert (=> b!2398957 m!2796781))

(assert (=> b!2398957 m!2796777))

(declare-fun m!2797181 () Bool)

(assert (=> b!2398957 m!2797181))

(assert (=> b!2398964 m!2797171))

(declare-fun m!2797183 () Bool)

(assert (=> b!2398964 m!2797183))

(assert (=> bm!146478 d!699494))

(declare-fun b!2398967 () Bool)

(declare-fun res!1019360 () Bool)

(declare-fun e!1528545 () Bool)

(assert (=> b!2398967 (=> (not res!1019360) (not e!1528545))))

(declare-fun lt!872418 () Option!5570)

(assert (=> b!2398967 (= res!1019360 (matchR!3144 (ite c!381789 lt!872320 call!146485) (_1!16500 (get!8638 lt!872418))))))

(declare-fun b!2398968 () Bool)

(declare-fun e!1528544 () Option!5570)

(declare-fun e!1528543 () Option!5570)

(assert (=> b!2398968 (= e!1528544 e!1528543)))

(declare-fun c!381923 () Bool)

(assert (=> b!2398968 (= c!381923 ((_ is Nil!28194) s!9460))))

(declare-fun b!2398969 () Bool)

(declare-fun res!1019363 () Bool)

(assert (=> b!2398969 (=> (not res!1019363) (not e!1528545))))

(assert (=> b!2398969 (= res!1019363 (matchR!3144 (ite c!381789 EmptyExpr!7027 call!146483) (_2!16500 (get!8638 lt!872418))))))

(declare-fun b!2398970 () Bool)

(declare-fun e!1528546 () Bool)

(assert (=> b!2398970 (= e!1528546 (not (isDefined!4398 lt!872418)))))

(declare-fun b!2398971 () Bool)

(assert (=> b!2398971 (= e!1528543 None!5569)))

(declare-fun b!2398972 () Bool)

(declare-fun e!1528542 () Bool)

(assert (=> b!2398972 (= e!1528542 (matchR!3144 (ite c!381789 EmptyExpr!7027 call!146483) s!9460))))

(declare-fun b!2398973 () Bool)

(assert (=> b!2398973 (= e!1528545 (= (++!6981 (_1!16500 (get!8638 lt!872418)) (_2!16500 (get!8638 lt!872418))) s!9460))))

(declare-fun b!2398974 () Bool)

(assert (=> b!2398974 (= e!1528544 (Some!5569 (tuple2!27919 Nil!28194 s!9460)))))

(declare-fun d!699496 () Bool)

(assert (=> d!699496 e!1528546))

(declare-fun res!1019361 () Bool)

(assert (=> d!699496 (=> res!1019361 e!1528546)))

(assert (=> d!699496 (= res!1019361 e!1528545)))

(declare-fun res!1019364 () Bool)

(assert (=> d!699496 (=> (not res!1019364) (not e!1528545))))

(assert (=> d!699496 (= res!1019364 (isDefined!4398 lt!872418))))

(assert (=> d!699496 (= lt!872418 e!1528544)))

(declare-fun c!381922 () Bool)

(assert (=> d!699496 (= c!381922 e!1528542)))

(declare-fun res!1019362 () Bool)

(assert (=> d!699496 (=> (not res!1019362) (not e!1528542))))

(assert (=> d!699496 (= res!1019362 (matchR!3144 (ite c!381789 lt!872320 call!146485) Nil!28194))))

(assert (=> d!699496 (validRegex!2752 (ite c!381789 lt!872320 call!146485))))

(assert (=> d!699496 (= (findConcatSeparation!678 (ite c!381789 lt!872320 call!146485) (ite c!381789 EmptyExpr!7027 call!146483) Nil!28194 s!9460 s!9460) lt!872418)))

(declare-fun b!2398966 () Bool)

(declare-fun lt!872417 () Unit!41318)

(declare-fun lt!872419 () Unit!41318)

(assert (=> b!2398966 (= lt!872417 lt!872419)))

(assert (=> b!2398966 (= (++!6981 (++!6981 Nil!28194 (Cons!28194 (h!33595 s!9460) Nil!28194)) (t!208269 s!9460)) s!9460)))

(assert (=> b!2398966 (= lt!872419 (lemmaMoveElementToOtherListKeepsConcatEq!623 Nil!28194 (h!33595 s!9460) (t!208269 s!9460) s!9460))))

(assert (=> b!2398966 (= e!1528543 (findConcatSeparation!678 (ite c!381789 lt!872320 call!146485) (ite c!381789 EmptyExpr!7027 call!146483) (++!6981 Nil!28194 (Cons!28194 (h!33595 s!9460) Nil!28194)) (t!208269 s!9460) s!9460))))

(assert (= (and d!699496 res!1019362) b!2398972))

(assert (= (and d!699496 c!381922) b!2398974))

(assert (= (and d!699496 (not c!381922)) b!2398968))

(assert (= (and b!2398968 c!381923) b!2398971))

(assert (= (and b!2398968 (not c!381923)) b!2398966))

(assert (= (and d!699496 res!1019364) b!2398967))

(assert (= (and b!2398967 res!1019360) b!2398969))

(assert (= (and b!2398969 res!1019363) b!2398973))

(assert (= (and d!699496 (not res!1019361)) b!2398970))

(declare-fun m!2797185 () Bool)

(assert (=> b!2398967 m!2797185))

(declare-fun m!2797187 () Bool)

(assert (=> b!2398967 m!2797187))

(declare-fun m!2797189 () Bool)

(assert (=> d!699496 m!2797189))

(declare-fun m!2797191 () Bool)

(assert (=> d!699496 m!2797191))

(declare-fun m!2797193 () Bool)

(assert (=> d!699496 m!2797193))

(assert (=> b!2398969 m!2797185))

(declare-fun m!2797195 () Bool)

(assert (=> b!2398969 m!2797195))

(assert (=> b!2398970 m!2797189))

(declare-fun m!2797197 () Bool)

(assert (=> b!2398972 m!2797197))

(assert (=> b!2398966 m!2796777))

(assert (=> b!2398966 m!2796777))

(assert (=> b!2398966 m!2796779))

(assert (=> b!2398966 m!2796781))

(assert (=> b!2398966 m!2796777))

(declare-fun m!2797199 () Bool)

(assert (=> b!2398966 m!2797199))

(assert (=> b!2398973 m!2797185))

(declare-fun m!2797201 () Bool)

(assert (=> b!2398973 m!2797201))

(assert (=> bm!146483 d!699496))

(declare-fun d!699498 () Bool)

(assert (=> d!699498 (= (isEmpty!16189 l!9164) ((_ is Nil!28195) l!9164))))

(assert (=> b!2398370 d!699498))

(declare-fun d!699500 () Bool)

(assert (=> d!699500 (= (tail!3555 l!9164) (t!208270 l!9164))))

(assert (=> b!2398386 d!699500))

(declare-fun d!699502 () Bool)

(assert (=> d!699502 (= (isEmpty!16189 lt!872321) ((_ is Nil!28195) lt!872321))))

(assert (=> b!2398386 d!699502))

(declare-fun d!699504 () Bool)

(assert (=> d!699504 (= (head!5285 l!9164) (h!33596 l!9164))))

(assert (=> bm!146486 d!699504))

(declare-fun b!2398993 () Bool)

(declare-fun e!1528564 () Bool)

(declare-fun call!146532 () Bool)

(assert (=> b!2398993 (= e!1528564 call!146532)))

(declare-fun b!2398994 () Bool)

(declare-fun e!1528561 () Bool)

(declare-fun e!1528565 () Bool)

(assert (=> b!2398994 (= e!1528561 e!1528565)))

(declare-fun c!381929 () Bool)

(assert (=> b!2398994 (= c!381929 ((_ is Union!7027) r!13927))))

(declare-fun b!2398995 () Bool)

(declare-fun res!1019379 () Bool)

(declare-fun e!1528563 () Bool)

(assert (=> b!2398995 (=> (not res!1019379) (not e!1528563))))

(declare-fun call!146531 () Bool)

(assert (=> b!2398995 (= res!1019379 call!146531)))

(assert (=> b!2398995 (= e!1528565 e!1528563)))

(declare-fun bm!146525 () Bool)

(declare-fun call!146530 () Bool)

(assert (=> bm!146525 (= call!146530 call!146532)))

(declare-fun b!2398996 () Bool)

(assert (=> b!2398996 (= e!1528563 call!146530)))

(declare-fun b!2398997 () Bool)

(declare-fun e!1528567 () Bool)

(assert (=> b!2398997 (= e!1528567 call!146531)))

(declare-fun b!2398998 () Bool)

(declare-fun e!1528562 () Bool)

(assert (=> b!2398998 (= e!1528562 e!1528567)))

(declare-fun res!1019378 () Bool)

(assert (=> b!2398998 (=> (not res!1019378) (not e!1528567))))

(assert (=> b!2398998 (= res!1019378 call!146530)))

(declare-fun bm!146526 () Bool)

(assert (=> bm!146526 (= call!146531 (validRegex!2752 (ite c!381929 (regOne!14567 r!13927) (regTwo!14566 r!13927))))))

(declare-fun d!699506 () Bool)

(declare-fun res!1019376 () Bool)

(declare-fun e!1528566 () Bool)

(assert (=> d!699506 (=> res!1019376 e!1528566)))

(assert (=> d!699506 (= res!1019376 ((_ is ElementMatch!7027) r!13927))))

(assert (=> d!699506 (= (validRegex!2752 r!13927) e!1528566)))

(declare-fun b!2398999 () Bool)

(assert (=> b!2398999 (= e!1528561 e!1528564)))

(declare-fun res!1019375 () Bool)

(assert (=> b!2398999 (= res!1019375 (not (nullable!2076 (reg!7356 r!13927))))))

(assert (=> b!2398999 (=> (not res!1019375) (not e!1528564))))

(declare-fun b!2399000 () Bool)

(assert (=> b!2399000 (= e!1528566 e!1528561)))

(declare-fun c!381928 () Bool)

(assert (=> b!2399000 (= c!381928 ((_ is Star!7027) r!13927))))

(declare-fun bm!146527 () Bool)

(assert (=> bm!146527 (= call!146532 (validRegex!2752 (ite c!381928 (reg!7356 r!13927) (ite c!381929 (regTwo!14567 r!13927) (regOne!14566 r!13927)))))))

(declare-fun b!2399001 () Bool)

(declare-fun res!1019377 () Bool)

(assert (=> b!2399001 (=> res!1019377 e!1528562)))

(assert (=> b!2399001 (= res!1019377 (not ((_ is Concat!11663) r!13927)))))

(assert (=> b!2399001 (= e!1528565 e!1528562)))

(assert (= (and d!699506 (not res!1019376)) b!2399000))

(assert (= (and b!2399000 c!381928) b!2398999))

(assert (= (and b!2399000 (not c!381928)) b!2398994))

(assert (= (and b!2398999 res!1019375) b!2398993))

(assert (= (and b!2398994 c!381929) b!2398995))

(assert (= (and b!2398994 (not c!381929)) b!2399001))

(assert (= (and b!2398995 res!1019379) b!2398996))

(assert (= (and b!2399001 (not res!1019377)) b!2398998))

(assert (= (and b!2398998 res!1019378) b!2398997))

(assert (= (or b!2398995 b!2398997) bm!146526))

(assert (= (or b!2398996 b!2398998) bm!146525))

(assert (= (or b!2398993 bm!146525) bm!146527))

(declare-fun m!2797203 () Bool)

(assert (=> bm!146526 m!2797203))

(declare-fun m!2797205 () Bool)

(assert (=> b!2398999 m!2797205))

(declare-fun m!2797207 () Bool)

(assert (=> bm!146527 m!2797207))

(assert (=> b!2398379 d!699506))

(declare-fun d!699508 () Bool)

(assert (=> d!699508 (= (isDefined!4398 call!146487) (not (isEmpty!16192 call!146487)))))

(declare-fun bs!463093 () Bool)

(assert (= bs!463093 d!699508))

(declare-fun m!2797209 () Bool)

(assert (=> bs!463093 m!2797209))

(assert (=> bm!146482 d!699508))

(declare-fun e!1528574 () Bool)

(declare-fun b!2399002 () Bool)

(assert (=> b!2399002 (= e!1528574 (= (head!5287 (ite c!381788 s!9460 call!146482)) (c!381793 (ite c!381788 lt!872306 (Concat!11663 lt!872320 EmptyExpr!7027)))))))

(declare-fun b!2399003 () Bool)

(declare-fun res!1019382 () Bool)

(declare-fun e!1528568 () Bool)

(assert (=> b!2399003 (=> res!1019382 e!1528568)))

(assert (=> b!2399003 (= res!1019382 e!1528574)))

(declare-fun res!1019380 () Bool)

(assert (=> b!2399003 (=> (not res!1019380) (not e!1528574))))

(declare-fun lt!872420 () Bool)

(assert (=> b!2399003 (= res!1019380 lt!872420)))

(declare-fun b!2399004 () Bool)

(declare-fun e!1528572 () Bool)

(assert (=> b!2399004 (= e!1528568 e!1528572)))

(declare-fun res!1019387 () Bool)

(assert (=> b!2399004 (=> (not res!1019387) (not e!1528572))))

(assert (=> b!2399004 (= res!1019387 (not lt!872420))))

(declare-fun e!1528573 () Bool)

(declare-fun b!2399005 () Bool)

(assert (=> b!2399005 (= e!1528573 (not (= (head!5287 (ite c!381788 s!9460 call!146482)) (c!381793 (ite c!381788 lt!872306 (Concat!11663 lt!872320 EmptyExpr!7027))))))))

(declare-fun b!2399006 () Bool)

(declare-fun res!1019383 () Bool)

(assert (=> b!2399006 (=> (not res!1019383) (not e!1528574))))

(declare-fun call!146533 () Bool)

(assert (=> b!2399006 (= res!1019383 (not call!146533))))

(declare-fun bm!146528 () Bool)

(assert (=> bm!146528 (= call!146533 (isEmpty!16190 (ite c!381788 s!9460 call!146482)))))

(declare-fun b!2399007 () Bool)

(declare-fun e!1528571 () Bool)

(assert (=> b!2399007 (= e!1528571 (not lt!872420))))

(declare-fun d!699510 () Bool)

(declare-fun e!1528570 () Bool)

(assert (=> d!699510 e!1528570))

(declare-fun c!381930 () Bool)

(assert (=> d!699510 (= c!381930 ((_ is EmptyExpr!7027) (ite c!381788 lt!872306 (Concat!11663 lt!872320 EmptyExpr!7027))))))

(declare-fun e!1528569 () Bool)

(assert (=> d!699510 (= lt!872420 e!1528569)))

(declare-fun c!381932 () Bool)

(assert (=> d!699510 (= c!381932 (isEmpty!16190 (ite c!381788 s!9460 call!146482)))))

(assert (=> d!699510 (validRegex!2752 (ite c!381788 lt!872306 (Concat!11663 lt!872320 EmptyExpr!7027)))))

(assert (=> d!699510 (= (matchR!3144 (ite c!381788 lt!872306 (Concat!11663 lt!872320 EmptyExpr!7027)) (ite c!381788 s!9460 call!146482)) lt!872420)))

(declare-fun b!2399008 () Bool)

(assert (=> b!2399008 (= e!1528570 e!1528571)))

(declare-fun c!381931 () Bool)

(assert (=> b!2399008 (= c!381931 ((_ is EmptyLang!7027) (ite c!381788 lt!872306 (Concat!11663 lt!872320 EmptyExpr!7027))))))

(declare-fun b!2399009 () Bool)

(assert (=> b!2399009 (= e!1528570 (= lt!872420 call!146533))))

(declare-fun b!2399010 () Bool)

(declare-fun res!1019384 () Bool)

(assert (=> b!2399010 (=> (not res!1019384) (not e!1528574))))

(assert (=> b!2399010 (= res!1019384 (isEmpty!16190 (tail!3557 (ite c!381788 s!9460 call!146482))))))

(declare-fun b!2399011 () Bool)

(assert (=> b!2399011 (= e!1528569 (nullable!2076 (ite c!381788 lt!872306 (Concat!11663 lt!872320 EmptyExpr!7027))))))

(declare-fun b!2399012 () Bool)

(assert (=> b!2399012 (= e!1528569 (matchR!3144 (derivativeStep!1734 (ite c!381788 lt!872306 (Concat!11663 lt!872320 EmptyExpr!7027)) (head!5287 (ite c!381788 s!9460 call!146482))) (tail!3557 (ite c!381788 s!9460 call!146482))))))

(declare-fun b!2399013 () Bool)

(declare-fun res!1019386 () Bool)

(assert (=> b!2399013 (=> res!1019386 e!1528568)))

(assert (=> b!2399013 (= res!1019386 (not ((_ is ElementMatch!7027) (ite c!381788 lt!872306 (Concat!11663 lt!872320 EmptyExpr!7027)))))))

(assert (=> b!2399013 (= e!1528571 e!1528568)))

(declare-fun b!2399014 () Bool)

(assert (=> b!2399014 (= e!1528572 e!1528573)))

(declare-fun res!1019385 () Bool)

(assert (=> b!2399014 (=> res!1019385 e!1528573)))

(assert (=> b!2399014 (= res!1019385 call!146533)))

(declare-fun b!2399015 () Bool)

(declare-fun res!1019381 () Bool)

(assert (=> b!2399015 (=> res!1019381 e!1528573)))

(assert (=> b!2399015 (= res!1019381 (not (isEmpty!16190 (tail!3557 (ite c!381788 s!9460 call!146482)))))))

(assert (= (and d!699510 c!381932) b!2399011))

(assert (= (and d!699510 (not c!381932)) b!2399012))

(assert (= (and d!699510 c!381930) b!2399009))

(assert (= (and d!699510 (not c!381930)) b!2399008))

(assert (= (and b!2399008 c!381931) b!2399007))

(assert (= (and b!2399008 (not c!381931)) b!2399013))

(assert (= (and b!2399013 (not res!1019386)) b!2399003))

(assert (= (and b!2399003 res!1019380) b!2399006))

(assert (= (and b!2399006 res!1019383) b!2399010))

(assert (= (and b!2399010 res!1019384) b!2399002))

(assert (= (and b!2399003 (not res!1019382)) b!2399004))

(assert (= (and b!2399004 res!1019387) b!2399014))

(assert (= (and b!2399014 (not res!1019385)) b!2399015))

(assert (= (and b!2399015 (not res!1019381)) b!2399005))

(assert (= (or b!2399009 b!2399006 b!2399014) bm!146528))

(declare-fun m!2797211 () Bool)

(assert (=> d!699510 m!2797211))

(declare-fun m!2797213 () Bool)

(assert (=> d!699510 m!2797213))

(assert (=> bm!146528 m!2797211))

(declare-fun m!2797215 () Bool)

(assert (=> b!2399002 m!2797215))

(declare-fun m!2797217 () Bool)

(assert (=> b!2399015 m!2797217))

(assert (=> b!2399015 m!2797217))

(declare-fun m!2797219 () Bool)

(assert (=> b!2399015 m!2797219))

(assert (=> b!2399010 m!2797217))

(assert (=> b!2399010 m!2797217))

(assert (=> b!2399010 m!2797219))

(assert (=> b!2399005 m!2797215))

(assert (=> b!2399012 m!2797215))

(assert (=> b!2399012 m!2797215))

(declare-fun m!2797221 () Bool)

(assert (=> b!2399012 m!2797221))

(assert (=> b!2399012 m!2797217))

(assert (=> b!2399012 m!2797221))

(assert (=> b!2399012 m!2797217))

(declare-fun m!2797223 () Bool)

(assert (=> b!2399012 m!2797223))

(declare-fun m!2797225 () Bool)

(assert (=> b!2399011 m!2797225))

(assert (=> bm!146480 d!699510))

(declare-fun bs!463094 () Bool)

(declare-fun d!699512 () Bool)

(assert (= bs!463094 (and d!699512 start!235320)))

(declare-fun lambda!90133 () Int)

(assert (=> bs!463094 (= lambda!90133 lambda!90091)))

(declare-fun bs!463095 () Bool)

(assert (= bs!463095 (and d!699512 d!699394)))

(assert (=> bs!463095 (= lambda!90133 lambda!90107)))

(declare-fun bs!463096 () Bool)

(assert (= bs!463096 (and d!699512 d!699486)))

(assert (=> bs!463096 (= lambda!90133 lambda!90132)))

(declare-fun b!2399016 () Bool)

(declare-fun e!1528576 () Bool)

(declare-fun lt!872421 () Regex!7027)

(assert (=> b!2399016 (= e!1528576 (isEmptyExpr!97 lt!872421))))

(declare-fun b!2399017 () Bool)

(declare-fun e!1528575 () Regex!7027)

(declare-fun e!1528577 () Regex!7027)

(assert (=> b!2399017 (= e!1528575 e!1528577)))

(declare-fun c!381936 () Bool)

(assert (=> b!2399017 (= c!381936 ((_ is Cons!28195) lt!872321))))

(declare-fun b!2399018 () Bool)

(declare-fun e!1528579 () Bool)

(assert (=> b!2399018 (= e!1528579 e!1528576)))

(declare-fun c!381934 () Bool)

(assert (=> b!2399018 (= c!381934 (isEmpty!16189 lt!872321))))

(declare-fun b!2399019 () Bool)

(declare-fun e!1528580 () Bool)

(assert (=> b!2399019 (= e!1528580 (isConcat!97 lt!872421))))

(declare-fun b!2399020 () Bool)

(assert (=> b!2399020 (= e!1528577 EmptyExpr!7027)))

(declare-fun b!2399021 () Bool)

(assert (=> b!2399021 (= e!1528577 (Concat!11663 (h!33596 lt!872321) (generalisedConcat!128 (t!208270 lt!872321))))))

(declare-fun b!2399022 () Bool)

(assert (=> b!2399022 (= e!1528576 e!1528580)))

(declare-fun c!381935 () Bool)

(assert (=> b!2399022 (= c!381935 (isEmpty!16189 (tail!3555 lt!872321)))))

(declare-fun b!2399023 () Bool)

(declare-fun e!1528578 () Bool)

(assert (=> b!2399023 (= e!1528578 (isEmpty!16189 (t!208270 lt!872321)))))

(declare-fun b!2399024 () Bool)

(assert (=> b!2399024 (= e!1528575 (h!33596 lt!872321))))

(assert (=> d!699512 e!1528579))

(declare-fun res!1019389 () Bool)

(assert (=> d!699512 (=> (not res!1019389) (not e!1528579))))

(assert (=> d!699512 (= res!1019389 (validRegex!2752 lt!872421))))

(assert (=> d!699512 (= lt!872421 e!1528575)))

(declare-fun c!381933 () Bool)

(assert (=> d!699512 (= c!381933 e!1528578)))

(declare-fun res!1019388 () Bool)

(assert (=> d!699512 (=> (not res!1019388) (not e!1528578))))

(assert (=> d!699512 (= res!1019388 ((_ is Cons!28195) lt!872321))))

(assert (=> d!699512 (forall!5661 lt!872321 lambda!90133)))

(assert (=> d!699512 (= (generalisedConcat!128 lt!872321) lt!872421)))

(declare-fun b!2399025 () Bool)

(assert (=> b!2399025 (= e!1528580 (= lt!872421 (head!5285 lt!872321)))))

(assert (= (and d!699512 res!1019388) b!2399023))

(assert (= (and d!699512 c!381933) b!2399024))

(assert (= (and d!699512 (not c!381933)) b!2399017))

(assert (= (and b!2399017 c!381936) b!2399021))

(assert (= (and b!2399017 (not c!381936)) b!2399020))

(assert (= (and d!699512 res!1019389) b!2399018))

(assert (= (and b!2399018 c!381934) b!2399016))

(assert (= (and b!2399018 (not c!381934)) b!2399022))

(assert (= (and b!2399022 c!381935) b!2399025))

(assert (= (and b!2399022 (not c!381935)) b!2399019))

(declare-fun m!2797227 () Bool)

(assert (=> b!2399021 m!2797227))

(declare-fun m!2797229 () Bool)

(assert (=> d!699512 m!2797229))

(declare-fun m!2797231 () Bool)

(assert (=> d!699512 m!2797231))

(assert (=> b!2399018 m!2796737))

(declare-fun m!2797233 () Bool)

(assert (=> b!2399019 m!2797233))

(declare-fun m!2797235 () Bool)

(assert (=> b!2399022 m!2797235))

(assert (=> b!2399022 m!2797235))

(declare-fun m!2797237 () Bool)

(assert (=> b!2399022 m!2797237))

(declare-fun m!2797239 () Bool)

(assert (=> b!2399025 m!2797239))

(declare-fun m!2797241 () Bool)

(assert (=> b!2399023 m!2797241))

(declare-fun m!2797243 () Bool)

(assert (=> b!2399016 m!2797243))

(assert (=> bm!146485 d!699512))

(declare-fun d!699514 () Bool)

(assert (=> d!699514 (matchR!3144 (Concat!11663 lt!872320 EmptyExpr!7027) (++!6981 s!9460 Nil!28194))))

(declare-fun lt!872424 () Unit!41318)

(declare-fun choose!14207 (Regex!7027 Regex!7027 List!28292 List!28292) Unit!41318)

(assert (=> d!699514 (= lt!872424 (choose!14207 lt!872320 EmptyExpr!7027 s!9460 Nil!28194))))

(declare-fun e!1528583 () Bool)

(assert (=> d!699514 e!1528583))

(declare-fun res!1019392 () Bool)

(assert (=> d!699514 (=> (not res!1019392) (not e!1528583))))

(assert (=> d!699514 (= res!1019392 (validRegex!2752 lt!872320))))

(assert (=> d!699514 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!64 lt!872320 EmptyExpr!7027 s!9460 Nil!28194) lt!872424)))

(declare-fun b!2399028 () Bool)

(assert (=> b!2399028 (= e!1528583 (validRegex!2752 EmptyExpr!7027))))

(assert (= (and d!699514 res!1019392) b!2399028))

(declare-fun m!2797245 () Bool)

(assert (=> d!699514 m!2797245))

(assert (=> d!699514 m!2797245))

(declare-fun m!2797247 () Bool)

(assert (=> d!699514 m!2797247))

(declare-fun m!2797249 () Bool)

(assert (=> d!699514 m!2797249))

(assert (=> d!699514 m!2796907))

(declare-fun m!2797251 () Bool)

(assert (=> b!2399028 m!2797251))

(assert (=> b!2398392 d!699514))

(declare-fun b!2399029 () Bool)

(declare-fun e!1528590 () Bool)

(assert (=> b!2399029 (= e!1528590 (= (head!5287 call!146482) (c!381793 lt!872306)))))

(declare-fun b!2399030 () Bool)

(declare-fun res!1019395 () Bool)

(declare-fun e!1528584 () Bool)

(assert (=> b!2399030 (=> res!1019395 e!1528584)))

(assert (=> b!2399030 (= res!1019395 e!1528590)))

(declare-fun res!1019393 () Bool)

(assert (=> b!2399030 (=> (not res!1019393) (not e!1528590))))

(declare-fun lt!872425 () Bool)

(assert (=> b!2399030 (= res!1019393 lt!872425)))

(declare-fun b!2399031 () Bool)

(declare-fun e!1528588 () Bool)

(assert (=> b!2399031 (= e!1528584 e!1528588)))

(declare-fun res!1019400 () Bool)

(assert (=> b!2399031 (=> (not res!1019400) (not e!1528588))))

(assert (=> b!2399031 (= res!1019400 (not lt!872425))))

(declare-fun b!2399032 () Bool)

(declare-fun e!1528589 () Bool)

(assert (=> b!2399032 (= e!1528589 (not (= (head!5287 call!146482) (c!381793 lt!872306))))))

(declare-fun b!2399033 () Bool)

(declare-fun res!1019396 () Bool)

(assert (=> b!2399033 (=> (not res!1019396) (not e!1528590))))

(declare-fun call!146534 () Bool)

(assert (=> b!2399033 (= res!1019396 (not call!146534))))

(declare-fun bm!146529 () Bool)

(assert (=> bm!146529 (= call!146534 (isEmpty!16190 call!146482))))

(declare-fun b!2399034 () Bool)

(declare-fun e!1528587 () Bool)

(assert (=> b!2399034 (= e!1528587 (not lt!872425))))

(declare-fun d!699516 () Bool)

(declare-fun e!1528586 () Bool)

(assert (=> d!699516 e!1528586))

(declare-fun c!381937 () Bool)

(assert (=> d!699516 (= c!381937 ((_ is EmptyExpr!7027) lt!872306))))

(declare-fun e!1528585 () Bool)

(assert (=> d!699516 (= lt!872425 e!1528585)))

(declare-fun c!381939 () Bool)

(assert (=> d!699516 (= c!381939 (isEmpty!16190 call!146482))))

(assert (=> d!699516 (validRegex!2752 lt!872306)))

(assert (=> d!699516 (= (matchR!3144 lt!872306 call!146482) lt!872425)))

(declare-fun b!2399035 () Bool)

(assert (=> b!2399035 (= e!1528586 e!1528587)))

(declare-fun c!381938 () Bool)

(assert (=> b!2399035 (= c!381938 ((_ is EmptyLang!7027) lt!872306))))

(declare-fun b!2399036 () Bool)

(assert (=> b!2399036 (= e!1528586 (= lt!872425 call!146534))))

(declare-fun b!2399037 () Bool)

(declare-fun res!1019397 () Bool)

(assert (=> b!2399037 (=> (not res!1019397) (not e!1528590))))

(assert (=> b!2399037 (= res!1019397 (isEmpty!16190 (tail!3557 call!146482)))))

(declare-fun b!2399038 () Bool)

(assert (=> b!2399038 (= e!1528585 (nullable!2076 lt!872306))))

(declare-fun b!2399039 () Bool)

(assert (=> b!2399039 (= e!1528585 (matchR!3144 (derivativeStep!1734 lt!872306 (head!5287 call!146482)) (tail!3557 call!146482)))))

(declare-fun b!2399040 () Bool)

(declare-fun res!1019399 () Bool)

(assert (=> b!2399040 (=> res!1019399 e!1528584)))

(assert (=> b!2399040 (= res!1019399 (not ((_ is ElementMatch!7027) lt!872306)))))

(assert (=> b!2399040 (= e!1528587 e!1528584)))

(declare-fun b!2399041 () Bool)

(assert (=> b!2399041 (= e!1528588 e!1528589)))

(declare-fun res!1019398 () Bool)

(assert (=> b!2399041 (=> res!1019398 e!1528589)))

(assert (=> b!2399041 (= res!1019398 call!146534)))

(declare-fun b!2399042 () Bool)

(declare-fun res!1019394 () Bool)

(assert (=> b!2399042 (=> res!1019394 e!1528589)))

(assert (=> b!2399042 (= res!1019394 (not (isEmpty!16190 (tail!3557 call!146482))))))

(assert (= (and d!699516 c!381939) b!2399038))

(assert (= (and d!699516 (not c!381939)) b!2399039))

(assert (= (and d!699516 c!381937) b!2399036))

(assert (= (and d!699516 (not c!381937)) b!2399035))

(assert (= (and b!2399035 c!381938) b!2399034))

(assert (= (and b!2399035 (not c!381938)) b!2399040))

(assert (= (and b!2399040 (not res!1019399)) b!2399030))

(assert (= (and b!2399030 res!1019393) b!2399033))

(assert (= (and b!2399033 res!1019396) b!2399037))

(assert (= (and b!2399037 res!1019397) b!2399029))

(assert (= (and b!2399030 (not res!1019395)) b!2399031))

(assert (= (and b!2399031 res!1019400) b!2399041))

(assert (= (and b!2399041 (not res!1019398)) b!2399042))

(assert (= (and b!2399042 (not res!1019394)) b!2399032))

(assert (= (or b!2399036 b!2399033 b!2399041) bm!146529))

(declare-fun m!2797253 () Bool)

(assert (=> d!699516 m!2797253))

(declare-fun m!2797255 () Bool)

(assert (=> d!699516 m!2797255))

(assert (=> bm!146529 m!2797253))

(declare-fun m!2797257 () Bool)

(assert (=> b!2399029 m!2797257))

(declare-fun m!2797259 () Bool)

(assert (=> b!2399042 m!2797259))

(assert (=> b!2399042 m!2797259))

(declare-fun m!2797261 () Bool)

(assert (=> b!2399042 m!2797261))

(assert (=> b!2399037 m!2797259))

(assert (=> b!2399037 m!2797259))

(assert (=> b!2399037 m!2797261))

(assert (=> b!2399032 m!2797257))

(assert (=> b!2399039 m!2797257))

(assert (=> b!2399039 m!2797257))

(declare-fun m!2797263 () Bool)

(assert (=> b!2399039 m!2797263))

(assert (=> b!2399039 m!2797259))

(assert (=> b!2399039 m!2797263))

(assert (=> b!2399039 m!2797259))

(declare-fun m!2797265 () Bool)

(assert (=> b!2399039 m!2797265))

(declare-fun m!2797267 () Bool)

(assert (=> b!2399038 m!2797267))

(assert (=> b!2398392 d!699516))

(declare-fun d!699518 () Bool)

(assert (=> d!699518 (isDefined!4398 (findConcatSeparation!678 lt!872320 EmptyExpr!7027 Nil!28194 s!9460 s!9460))))

(declare-fun lt!872428 () Unit!41318)

(declare-fun choose!14208 (Regex!7027 Regex!7027 List!28292) Unit!41318)

(assert (=> d!699518 (= lt!872428 (choose!14208 lt!872320 EmptyExpr!7027 s!9460))))

(assert (=> d!699518 (validRegex!2752 lt!872320)))

(assert (=> d!699518 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!46 lt!872320 EmptyExpr!7027 s!9460) lt!872428)))

(declare-fun bs!463097 () Bool)

(assert (= bs!463097 d!699518))

(declare-fun m!2797269 () Bool)

(assert (=> bs!463097 m!2797269))

(assert (=> bs!463097 m!2797269))

(declare-fun m!2797271 () Bool)

(assert (=> bs!463097 m!2797271))

(declare-fun m!2797273 () Bool)

(assert (=> bs!463097 m!2797273))

(assert (=> bs!463097 m!2796907))

(assert (=> b!2398392 d!699518))

(declare-fun b!2399056 () Bool)

(declare-fun e!1528593 () Bool)

(declare-fun tp!763472 () Bool)

(declare-fun tp!763471 () Bool)

(assert (=> b!2399056 (= e!1528593 (and tp!763472 tp!763471))))

(declare-fun b!2399054 () Bool)

(declare-fun tp!763469 () Bool)

(declare-fun tp!763473 () Bool)

(assert (=> b!2399054 (= e!1528593 (and tp!763469 tp!763473))))

(declare-fun b!2399053 () Bool)

(assert (=> b!2399053 (= e!1528593 tp_is_empty!11467)))

(assert (=> b!2398393 (= tp!763404 e!1528593)))

(declare-fun b!2399055 () Bool)

(declare-fun tp!763470 () Bool)

(assert (=> b!2399055 (= e!1528593 tp!763470)))

(assert (= (and b!2398393 ((_ is ElementMatch!7027) (h!33596 l!9164))) b!2399053))

(assert (= (and b!2398393 ((_ is Concat!11663) (h!33596 l!9164))) b!2399054))

(assert (= (and b!2398393 ((_ is Star!7027) (h!33596 l!9164))) b!2399055))

(assert (= (and b!2398393 ((_ is Union!7027) (h!33596 l!9164))) b!2399056))

(declare-fun b!2399061 () Bool)

(declare-fun e!1528596 () Bool)

(declare-fun tp!763478 () Bool)

(declare-fun tp!763479 () Bool)

(assert (=> b!2399061 (= e!1528596 (and tp!763478 tp!763479))))

(assert (=> b!2398393 (= tp!763409 e!1528596)))

(assert (= (and b!2398393 ((_ is Cons!28195) (t!208270 l!9164))) b!2399061))

(declare-fun b!2399065 () Bool)

(declare-fun e!1528597 () Bool)

(declare-fun tp!763483 () Bool)

(declare-fun tp!763482 () Bool)

(assert (=> b!2399065 (= e!1528597 (and tp!763483 tp!763482))))

(declare-fun b!2399063 () Bool)

(declare-fun tp!763480 () Bool)

(declare-fun tp!763484 () Bool)

(assert (=> b!2399063 (= e!1528597 (and tp!763480 tp!763484))))

(declare-fun b!2399062 () Bool)

(assert (=> b!2399062 (= e!1528597 tp_is_empty!11467)))

(assert (=> b!2398387 (= tp!763407 e!1528597)))

(declare-fun b!2399064 () Bool)

(declare-fun tp!763481 () Bool)

(assert (=> b!2399064 (= e!1528597 tp!763481)))

(assert (= (and b!2398387 ((_ is ElementMatch!7027) (reg!7356 r!13927))) b!2399062))

(assert (= (and b!2398387 ((_ is Concat!11663) (reg!7356 r!13927))) b!2399063))

(assert (= (and b!2398387 ((_ is Star!7027) (reg!7356 r!13927))) b!2399064))

(assert (= (and b!2398387 ((_ is Union!7027) (reg!7356 r!13927))) b!2399065))

(declare-fun b!2399069 () Bool)

(declare-fun e!1528598 () Bool)

(declare-fun tp!763488 () Bool)

(declare-fun tp!763487 () Bool)

(assert (=> b!2399069 (= e!1528598 (and tp!763488 tp!763487))))

(declare-fun b!2399067 () Bool)

(declare-fun tp!763485 () Bool)

(declare-fun tp!763489 () Bool)

(assert (=> b!2399067 (= e!1528598 (and tp!763485 tp!763489))))

(declare-fun b!2399066 () Bool)

(assert (=> b!2399066 (= e!1528598 tp_is_empty!11467)))

(assert (=> b!2398371 (= tp!763403 e!1528598)))

(declare-fun b!2399068 () Bool)

(declare-fun tp!763486 () Bool)

(assert (=> b!2399068 (= e!1528598 tp!763486)))

(assert (= (and b!2398371 ((_ is ElementMatch!7027) (regOne!14566 r!13927))) b!2399066))

(assert (= (and b!2398371 ((_ is Concat!11663) (regOne!14566 r!13927))) b!2399067))

(assert (= (and b!2398371 ((_ is Star!7027) (regOne!14566 r!13927))) b!2399068))

(assert (= (and b!2398371 ((_ is Union!7027) (regOne!14566 r!13927))) b!2399069))

(declare-fun b!2399073 () Bool)

(declare-fun e!1528599 () Bool)

(declare-fun tp!763493 () Bool)

(declare-fun tp!763492 () Bool)

(assert (=> b!2399073 (= e!1528599 (and tp!763493 tp!763492))))

(declare-fun b!2399071 () Bool)

(declare-fun tp!763490 () Bool)

(declare-fun tp!763494 () Bool)

(assert (=> b!2399071 (= e!1528599 (and tp!763490 tp!763494))))

(declare-fun b!2399070 () Bool)

(assert (=> b!2399070 (= e!1528599 tp_is_empty!11467)))

(assert (=> b!2398371 (= tp!763406 e!1528599)))

(declare-fun b!2399072 () Bool)

(declare-fun tp!763491 () Bool)

(assert (=> b!2399072 (= e!1528599 tp!763491)))

(assert (= (and b!2398371 ((_ is ElementMatch!7027) (regTwo!14566 r!13927))) b!2399070))

(assert (= (and b!2398371 ((_ is Concat!11663) (regTwo!14566 r!13927))) b!2399071))

(assert (= (and b!2398371 ((_ is Star!7027) (regTwo!14566 r!13927))) b!2399072))

(assert (= (and b!2398371 ((_ is Union!7027) (regTwo!14566 r!13927))) b!2399073))

(declare-fun b!2399078 () Bool)

(declare-fun e!1528602 () Bool)

(declare-fun tp!763497 () Bool)

(assert (=> b!2399078 (= e!1528602 (and tp_is_empty!11467 tp!763497))))

(assert (=> b!2398376 (= tp!763408 e!1528602)))

(assert (= (and b!2398376 ((_ is Cons!28194) (t!208269 s!9460))) b!2399078))

(declare-fun b!2399082 () Bool)

(declare-fun e!1528603 () Bool)

(declare-fun tp!763501 () Bool)

(declare-fun tp!763500 () Bool)

(assert (=> b!2399082 (= e!1528603 (and tp!763501 tp!763500))))

(declare-fun b!2399080 () Bool)

(declare-fun tp!763498 () Bool)

(declare-fun tp!763502 () Bool)

(assert (=> b!2399080 (= e!1528603 (and tp!763498 tp!763502))))

(declare-fun b!2399079 () Bool)

(assert (=> b!2399079 (= e!1528603 tp_is_empty!11467)))

(assert (=> b!2398381 (= tp!763402 e!1528603)))

(declare-fun b!2399081 () Bool)

(declare-fun tp!763499 () Bool)

(assert (=> b!2399081 (= e!1528603 tp!763499)))

(assert (= (and b!2398381 ((_ is ElementMatch!7027) (regOne!14567 r!13927))) b!2399079))

(assert (= (and b!2398381 ((_ is Concat!11663) (regOne!14567 r!13927))) b!2399080))

(assert (= (and b!2398381 ((_ is Star!7027) (regOne!14567 r!13927))) b!2399081))

(assert (= (and b!2398381 ((_ is Union!7027) (regOne!14567 r!13927))) b!2399082))

(declare-fun b!2399086 () Bool)

(declare-fun e!1528604 () Bool)

(declare-fun tp!763506 () Bool)

(declare-fun tp!763505 () Bool)

(assert (=> b!2399086 (= e!1528604 (and tp!763506 tp!763505))))

(declare-fun b!2399084 () Bool)

(declare-fun tp!763503 () Bool)

(declare-fun tp!763507 () Bool)

(assert (=> b!2399084 (= e!1528604 (and tp!763503 tp!763507))))

(declare-fun b!2399083 () Bool)

(assert (=> b!2399083 (= e!1528604 tp_is_empty!11467)))

(assert (=> b!2398381 (= tp!763405 e!1528604)))

(declare-fun b!2399085 () Bool)

(declare-fun tp!763504 () Bool)

(assert (=> b!2399085 (= e!1528604 tp!763504)))

(assert (= (and b!2398381 ((_ is ElementMatch!7027) (regTwo!14567 r!13927))) b!2399083))

(assert (= (and b!2398381 ((_ is Concat!11663) (regTwo!14567 r!13927))) b!2399084))

(assert (= (and b!2398381 ((_ is Star!7027) (regTwo!14567 r!13927))) b!2399085))

(assert (= (and b!2398381 ((_ is Union!7027) (regTwo!14567 r!13927))) b!2399086))

(declare-fun b_lambda!74281 () Bool)

(assert (= b_lambda!74277 (or start!235320 b_lambda!74281)))

(declare-fun bs!463098 () Bool)

(declare-fun d!699520 () Bool)

(assert (= bs!463098 (and d!699520 start!235320)))

(assert (=> bs!463098 (= (dynLambda!12142 lambda!90091 (h!33596 l!9164)) (validRegex!2752 (h!33596 l!9164)))))

(assert (=> bs!463098 m!2796771))

(assert (=> b!2398582 d!699520))

(check-sat (not d!699510) (not b!2398941) (not b!2398733) (not b!2398931) (not b!2399005) (not b!2398958) (not b!2399025) (not d!699508) (not b!2398970) (not d!699462) (not d!699434) (not d!699494) (not b!2399078) (not d!699490) (not d!699484) (not b!2398969) (not d!699432) (not b!2398429) (not bm!146529) (not b!2399015) (not b!2398935) (not b!2399086) (not b!2398967) (not b!2399039) (not b!2398972) (not b!2398942) (not b!2398436) (not bm!146527) (not d!699486) (not b!2399067) (not b!2398957) (not b!2398999) (not d!699478) (not bm!146526) (not b!2399055) (not b!2398966) (not d!699518) (not b!2399054) (not b!2399080) (not b!2398934) (not b!2398505) (not b!2398872) (not b!2398937) (not b!2399010) (not d!699496) (not b!2398954) (not b!2399061) (not b!2399082) (not d!699448) (not b!2398869) (not b!2398729) (not b!2398876) (not b!2399018) (not b!2398940) (not b!2398585) (not b!2398511) (not b!2398914) (not b!2399023) (not b!2399042) (not b!2398435) (not b!2398875) (not bm!146516) (not b!2398430) tp_is_empty!11467 (not b!2399056) (not b!2398720) (not bm!146517) (not b!2399016) (not b!2398921) (not b!2399071) (not b!2398924) (not b!2398938) (not d!699380) (not b!2398512) (not b!2399081) (not b!2399012) (not b!2399069) (not b!2398510) (not b!2399032) (not b!2398728) (not b!2398955) (not b!2398963) (not d!699394) (not b!2399065) (not b!2399011) (not b!2399037) (not b!2399085) (not b!2398730) (not d!699398) (not b!2399021) (not d!699430) (not bs!463098) (not d!699482) (not b!2399084) (not b!2398432) (not b!2398930) (not b!2398587) (not b!2399019) (not b!2398590) (not b!2398920) (not b!2399002) (not b!2398507) (not bm!146500) (not b!2398929) (not b!2399063) (not d!699516) (not d!699444) (not b!2399072) (not b!2398591) (not bm!146528) (not b!2398723) (not b!2398973) (not d!699378) (not b!2398508) (not b!2398514) (not b!2398433) (not bm!146518) (not d!699450) (not b!2398584) (not d!699514) (not b!2398588) (not b!2398961) (not d!699488) (not b!2398964) (not b!2399064) (not b!2399068) (not d!699512) (not b!2398944) (not d!699476) (not b!2399073) (not b!2399029) (not b!2398870) (not b!2399022) (not b!2398960) (not b!2398873) (not b_lambda!74281) (not b!2399028) (not b!2398583) (not b!2399038))
(check-sat)
