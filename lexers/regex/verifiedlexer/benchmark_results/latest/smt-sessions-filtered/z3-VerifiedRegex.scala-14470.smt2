; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!753064 () Bool)

(assert start!753064)

(declare-fun b!8004460 () Bool)

(declare-fun res!3165218 () Bool)

(declare-fun e!4715251 () Bool)

(assert (=> b!8004460 (=> res!3165218 e!4715251)))

(declare-fun testedPSize!271 () Int)

(declare-fun totalInputSize!629 () Int)

(assert (=> b!8004460 (= res!3165218 (= testedPSize!271 totalInputSize!629))))

(declare-fun res!3165213 () Bool)

(declare-fun e!4715243 () Bool)

(assert (=> start!753064 (=> (not res!3165213) (not e!4715243))))

(declare-datatypes ((C!43580 0))(
  ( (C!43581 (val!32338 Int)) )
))
(declare-datatypes ((Regex!21621 0))(
  ( (ElementMatch!21621 (c!1469490 C!43580)) (Concat!30620 (regOne!43754 Regex!21621) (regTwo!43754 Regex!21621)) (EmptyExpr!21621) (Star!21621 (reg!21950 Regex!21621)) (EmptyLang!21621) (Union!21621 (regOne!43755 Regex!21621) (regTwo!43755 Regex!21621)) )
))
(declare-fun r!15422 () Regex!21621)

(declare-fun validRegex!11925 (Regex!21621) Bool)

(assert (=> start!753064 (= res!3165213 (validRegex!11925 r!15422))))

(assert (=> start!753064 e!4715243))

(declare-fun e!4715245 () Bool)

(assert (=> start!753064 e!4715245))

(assert (=> start!753064 true))

(declare-fun e!4715247 () Bool)

(assert (=> start!753064 e!4715247))

(declare-fun e!4715250 () Bool)

(assert (=> start!753064 e!4715250))

(declare-fun e!4715246 () Bool)

(assert (=> start!753064 e!4715246))

(declare-fun b!8004461 () Bool)

(declare-fun tp_is_empty!53785 () Bool)

(declare-fun tp!2394887 () Bool)

(assert (=> b!8004461 (= e!4715245 (and tp_is_empty!53785 tp!2394887))))

(declare-fun b!8004462 () Bool)

(declare-fun tp!2394885 () Bool)

(assert (=> b!8004462 (= e!4715246 (and tp_is_empty!53785 tp!2394885))))

(declare-fun b!8004463 () Bool)

(declare-fun e!4715241 () Bool)

(assert (=> b!8004463 (= e!4715241 e!4715251)))

(declare-fun res!3165214 () Bool)

(assert (=> b!8004463 (=> res!3165214 e!4715251)))

(declare-fun lostCause!2018 (Regex!21621) Bool)

(assert (=> b!8004463 (= res!3165214 (lostCause!2018 r!15422))))

(declare-datatypes ((List!74850 0))(
  ( (Nil!74726) (Cons!74726 (h!81174 C!43580) (t!390593 List!74850)) )
))
(declare-fun testedSuffix!271 () List!74850)

(declare-fun lt!2714342 () List!74850)

(assert (=> b!8004463 (and (= testedSuffix!271 lt!2714342) (= lt!2714342 testedSuffix!271))))

(declare-fun totalInput!1349 () List!74850)

(declare-datatypes ((Unit!170642 0))(
  ( (Unit!170643) )
))
(declare-fun lt!2714350 () Unit!170642)

(declare-fun testedP!353 () List!74850)

(declare-fun lemmaSamePrefixThenSameSuffix!3038 (List!74850 List!74850 List!74850 List!74850 List!74850) Unit!170642)

(assert (=> b!8004463 (= lt!2714350 (lemmaSamePrefixThenSameSuffix!3038 testedP!353 testedSuffix!271 testedP!353 lt!2714342 totalInput!1349))))

(declare-fun getSuffix!3872 (List!74850 List!74850) List!74850)

(assert (=> b!8004463 (= lt!2714342 (getSuffix!3872 totalInput!1349 testedP!353))))

(declare-fun b!8004464 () Bool)

(declare-fun e!4715240 () Bool)

(declare-fun e!4715242 () Bool)

(assert (=> b!8004464 (= e!4715240 e!4715242)))

(declare-fun res!3165220 () Bool)

(assert (=> b!8004464 (=> (not res!3165220) (not e!4715242))))

(declare-fun lt!2714348 () Int)

(assert (=> b!8004464 (= res!3165220 (= testedPSize!271 lt!2714348))))

(declare-fun size!43523 (List!74850) Int)

(assert (=> b!8004464 (= lt!2714348 (size!43523 testedP!353))))

(declare-fun b!8004465 () Bool)

(declare-fun e!4715244 () Unit!170642)

(declare-fun Unit!170644 () Unit!170642)

(assert (=> b!8004465 (= e!4715244 Unit!170644)))

(declare-fun b!8004466 () Bool)

(declare-fun tp!2394888 () Bool)

(declare-fun tp!2394883 () Bool)

(assert (=> b!8004466 (= e!4715250 (and tp!2394888 tp!2394883))))

(declare-fun b!8004467 () Bool)

(declare-fun e!4715248 () Bool)

(assert (=> b!8004467 (= e!4715248 true)))

(declare-fun lt!2714351 () List!74850)

(declare-fun ++!18447 (List!74850 List!74850) List!74850)

(declare-fun head!16313 (List!74850) C!43580)

(assert (=> b!8004467 (= lt!2714351 (++!18447 testedP!353 (Cons!74726 (head!16313 testedSuffix!271) Nil!74726)))))

(declare-fun b!8004468 () Bool)

(assert (=> b!8004468 (= e!4715251 e!4715248)))

(declare-fun res!3165215 () Bool)

(assert (=> b!8004468 (=> res!3165215 e!4715248)))

(declare-fun lt!2714343 () Int)

(assert (=> b!8004468 (= res!3165215 (>= lt!2714348 lt!2714343))))

(declare-fun lt!2714345 () Unit!170642)

(assert (=> b!8004468 (= lt!2714345 e!4715244)))

(declare-fun c!1469489 () Bool)

(assert (=> b!8004468 (= c!1469489 (= lt!2714348 lt!2714343))))

(assert (=> b!8004468 (<= lt!2714348 lt!2714343)))

(declare-fun lt!2714347 () Unit!170642)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1176 (List!74850 List!74850) Unit!170642)

(assert (=> b!8004468 (= lt!2714347 (lemmaIsPrefixThenSmallerEqSize!1176 testedP!353 totalInput!1349))))

(declare-fun b!8004469 () Bool)

(declare-fun tp!2394886 () Bool)

(assert (=> b!8004469 (= e!4715250 tp!2394886)))

(declare-fun b!8004470 () Bool)

(declare-fun tp!2394889 () Bool)

(assert (=> b!8004470 (= e!4715247 (and tp_is_empty!53785 tp!2394889))))

(declare-fun b!8004471 () Bool)

(declare-fun Unit!170645 () Unit!170642)

(assert (=> b!8004471 (= e!4715244 Unit!170645)))

(declare-fun lt!2714341 () Unit!170642)

(declare-fun lemmaIsPrefixRefl!4127 (List!74850 List!74850) Unit!170642)

(assert (=> b!8004471 (= lt!2714341 (lemmaIsPrefixRefl!4127 totalInput!1349 totalInput!1349))))

(declare-fun isPrefix!6675 (List!74850 List!74850) Bool)

(assert (=> b!8004471 (isPrefix!6675 totalInput!1349 totalInput!1349)))

(declare-fun lt!2714349 () Unit!170642)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1701 (List!74850 List!74850 List!74850) Unit!170642)

(assert (=> b!8004471 (= lt!2714349 (lemmaIsPrefixSameLengthThenSameList!1701 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> b!8004471 false))

(declare-fun b!8004472 () Bool)

(assert (=> b!8004472 (= e!4715243 e!4715240)))

(declare-fun res!3165217 () Bool)

(assert (=> b!8004472 (=> (not res!3165217) (not e!4715240))))

(declare-fun lt!2714346 () List!74850)

(assert (=> b!8004472 (= res!3165217 (= lt!2714346 totalInput!1349))))

(assert (=> b!8004472 (= lt!2714346 (++!18447 testedP!353 testedSuffix!271))))

(declare-fun b!8004473 () Bool)

(declare-fun e!4715249 () Bool)

(assert (=> b!8004473 (= e!4715242 e!4715249)))

(declare-fun res!3165216 () Bool)

(assert (=> b!8004473 (=> (not res!3165216) (not e!4715249))))

(assert (=> b!8004473 (= res!3165216 (= totalInputSize!629 lt!2714343))))

(assert (=> b!8004473 (= lt!2714343 (size!43523 totalInput!1349))))

(declare-fun b!8004474 () Bool)

(assert (=> b!8004474 (= e!4715249 (not e!4715241))))

(declare-fun res!3165219 () Bool)

(assert (=> b!8004474 (=> res!3165219 e!4715241)))

(assert (=> b!8004474 (= res!3165219 (not (isPrefix!6675 testedP!353 totalInput!1349)))))

(assert (=> b!8004474 (isPrefix!6675 testedP!353 lt!2714346)))

(declare-fun lt!2714344 () Unit!170642)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3906 (List!74850 List!74850) Unit!170642)

(assert (=> b!8004474 (= lt!2714344 (lemmaConcatTwoListThenFirstIsPrefix!3906 testedP!353 testedSuffix!271))))

(declare-fun b!8004475 () Bool)

(assert (=> b!8004475 (= e!4715250 tp_is_empty!53785)))

(declare-fun b!8004476 () Bool)

(declare-fun tp!2394884 () Bool)

(declare-fun tp!2394890 () Bool)

(assert (=> b!8004476 (= e!4715250 (and tp!2394884 tp!2394890))))

(assert (= (and start!753064 res!3165213) b!8004472))

(assert (= (and b!8004472 res!3165217) b!8004464))

(assert (= (and b!8004464 res!3165220) b!8004473))

(assert (= (and b!8004473 res!3165216) b!8004474))

(assert (= (and b!8004474 (not res!3165219)) b!8004463))

(assert (= (and b!8004463 (not res!3165214)) b!8004460))

(assert (= (and b!8004460 (not res!3165218)) b!8004468))

(assert (= (and b!8004468 c!1469489) b!8004471))

(assert (= (and b!8004468 (not c!1469489)) b!8004465))

(assert (= (and b!8004468 (not res!3165215)) b!8004467))

(get-info :version)

(assert (= (and start!753064 ((_ is Cons!74726) totalInput!1349)) b!8004461))

(assert (= (and start!753064 ((_ is Cons!74726) testedSuffix!271)) b!8004470))

(assert (= (and start!753064 ((_ is ElementMatch!21621) r!15422)) b!8004475))

(assert (= (and start!753064 ((_ is Concat!30620) r!15422)) b!8004476))

(assert (= (and start!753064 ((_ is Star!21621) r!15422)) b!8004469))

(assert (= (and start!753064 ((_ is Union!21621) r!15422)) b!8004466))

(assert (= (and start!753064 ((_ is Cons!74726) testedP!353)) b!8004462))

(declare-fun m!8370010 () Bool)

(assert (=> b!8004474 m!8370010))

(declare-fun m!8370012 () Bool)

(assert (=> b!8004474 m!8370012))

(declare-fun m!8370014 () Bool)

(assert (=> b!8004474 m!8370014))

(declare-fun m!8370016 () Bool)

(assert (=> b!8004471 m!8370016))

(declare-fun m!8370018 () Bool)

(assert (=> b!8004471 m!8370018))

(declare-fun m!8370020 () Bool)

(assert (=> b!8004471 m!8370020))

(declare-fun m!8370022 () Bool)

(assert (=> b!8004473 m!8370022))

(declare-fun m!8370024 () Bool)

(assert (=> b!8004468 m!8370024))

(declare-fun m!8370026 () Bool)

(assert (=> b!8004472 m!8370026))

(declare-fun m!8370028 () Bool)

(assert (=> b!8004467 m!8370028))

(declare-fun m!8370030 () Bool)

(assert (=> b!8004467 m!8370030))

(declare-fun m!8370032 () Bool)

(assert (=> b!8004464 m!8370032))

(declare-fun m!8370034 () Bool)

(assert (=> start!753064 m!8370034))

(declare-fun m!8370036 () Bool)

(assert (=> b!8004463 m!8370036))

(declare-fun m!8370038 () Bool)

(assert (=> b!8004463 m!8370038))

(declare-fun m!8370040 () Bool)

(assert (=> b!8004463 m!8370040))

(check-sat (not b!8004467) (not b!8004466) (not b!8004470) (not b!8004471) (not b!8004476) (not b!8004469) (not b!8004474) (not start!753064) (not b!8004468) (not b!8004473) (not b!8004472) (not b!8004463) (not b!8004464) (not b!8004462) tp_is_empty!53785 (not b!8004461))
(check-sat)
