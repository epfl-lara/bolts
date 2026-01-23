; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11270 () Bool)

(assert start!11270)

(declare-fun b_free!3425 () Bool)

(declare-fun b_next!3425 () Bool)

(assert (=> start!11270 (= b_free!3425 (not b_next!3425))))

(declare-fun tp!59704 () Bool)

(declare-fun b_and!5539 () Bool)

(assert (=> start!11270 (= tp!59704 b_and!5539)))

(declare-fun b_free!3427 () Bool)

(declare-fun b_next!3427 () Bool)

(assert (=> start!11270 (= b_free!3427 (not b_next!3427))))

(declare-fun tp!59705 () Bool)

(declare-fun b_and!5541 () Bool)

(assert (=> start!11270 (= tp!59705 b_and!5541)))

(assert (=> start!11270 true))

(declare-fun order!1089 () Int)

(declare-fun lambda!2708 () Int)

(declare-fun order!1091 () Int)

(declare-fun f!927 () Int)

(declare-fun dynLambda!719 (Int Int) Int)

(declare-fun dynLambda!720 (Int Int) Int)

(assert (=> start!11270 (< (dynLambda!719 order!1089 f!927) (dynLambda!720 order!1091 lambda!2708))))

(assert (=> start!11270 true))

(declare-fun g!9 () Int)

(assert (=> start!11270 (< (dynLambda!719 order!1089 g!9) (dynLambda!720 order!1091 lambda!2708))))

(declare-fun b!110259 () Bool)

(declare-fun e!61548 () Bool)

(declare-fun e!61551 () Bool)

(assert (=> b!110259 (= e!61548 e!61551)))

(declare-fun res!53276 () Bool)

(assert (=> b!110259 (=> res!53276 e!61551)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((B!603 0))(
  ( (B!604 (val!616 Int)) )
))
(declare-fun lt!32349 () (InoxSet B!603))

(declare-fun lt!32354 () (InoxSet B!603))

(assert (=> b!110259 (= res!53276 (not (= lt!32349 lt!32354)))))

(declare-datatypes ((A!315 0))(
  ( (A!316 (val!617 Int)) )
))
(declare-datatypes ((List!1781 0))(
  ( (Nil!1775) (Cons!1775 (h!7172 A!315) (t!22160 List!1781)) )
))
(declare-fun lt!32351 () List!1781)

(declare-fun dynLambda!721 (Int A!315) (InoxSet B!603))

(assert (=> b!110259 (= lt!32354 (dynLambda!721 g!9 (h!7172 lt!32351)))))

(assert (=> b!110259 (= lt!32349 (dynLambda!721 f!927 (h!7172 lt!32351)))))

(declare-fun lt!32352 () (InoxSet A!315))

(declare-fun forall!329 ((InoxSet A!315) Int) Bool)

(assert (=> b!110259 (forall!329 lt!32352 lambda!2708)))

(declare-datatypes ((Unit!1252 0))(
  ( (Unit!1253) )
))
(declare-fun lt!32350 () Unit!1252)

(declare-fun lemmaForallThenOnContent!38 (List!1781 Int) Unit!1252)

(assert (=> b!110259 (= lt!32350 (lemmaForallThenOnContent!38 (t!22160 lt!32351) lambda!2708))))

(declare-fun b!110260 () Bool)

(declare-fun e!61545 () Bool)

(assert (=> b!110260 (= e!61545 (not e!61548))))

(declare-fun res!53283 () Bool)

(assert (=> b!110260 (=> res!53283 e!61548)))

(declare-fun forall!330 (List!1781 Int) Bool)

(assert (=> b!110260 (= res!53283 (not (forall!330 (t!22160 lt!32351) lambda!2708)))))

(declare-fun lt!32353 () (InoxSet A!315))

(declare-fun lt!32357 () (InoxSet B!603))

(declare-fun lt!32341 () (InoxSet B!603))

(declare-fun flatMap!61 ((InoxSet A!315) Int) (InoxSet B!603))

(assert (=> b!110260 (= ((_ map or) lt!32341 lt!32357) (flatMap!61 lt!32353 g!9))))

(assert (=> b!110260 (= lt!32357 (flatMap!61 lt!32352 g!9))))

(declare-fun lt!32346 () (InoxSet A!315))

(assert (=> b!110260 (= lt!32341 (flatMap!61 lt!32346 g!9))))

(declare-fun lt!32362 () Unit!1252)

(declare-fun lemmaFlatMapAssociative!44 ((InoxSet A!315) (InoxSet A!315) Int) Unit!1252)

(assert (=> b!110260 (= lt!32362 (lemmaFlatMapAssociative!44 lt!32346 lt!32352 g!9))))

(declare-fun lt!32361 () (InoxSet B!603))

(declare-fun lt!32342 () (InoxSet B!603))

(assert (=> b!110260 (= ((_ map or) lt!32361 lt!32342) (flatMap!61 lt!32353 f!927))))

(assert (=> b!110260 (= lt!32342 (flatMap!61 lt!32352 f!927))))

(assert (=> b!110260 (= lt!32361 (flatMap!61 lt!32346 f!927))))

(declare-fun lt!32345 () Unit!1252)

(assert (=> b!110260 (= lt!32345 (lemmaFlatMapAssociative!44 lt!32346 lt!32352 f!927))))

(declare-fun b!110261 () Bool)

(declare-fun e!61550 () Bool)

(declare-fun e!61546 () Bool)

(assert (=> b!110261 (= e!61550 e!61546)))

(declare-fun res!53281 () Bool)

(assert (=> b!110261 (=> res!53281 e!61546)))

(declare-fun lt!32343 () Int)

(declare-fun lt!32348 () Int)

(declare-fun lt!32359 () Int)

(assert (=> b!110261 (= res!53281 (or (not (= lt!32359 lt!32348)) (>= lt!32348 lt!32343)))))

(assert (=> b!110261 (= lt!32348 lt!32359)))

(declare-fun size!1553 (List!1781) Int)

(declare-fun toList!260 ((InoxSet A!315)) List!1781)

(assert (=> b!110261 (= lt!32348 (size!1553 (toList!260 lt!32352)))))

(declare-fun lt!32358 () Unit!1252)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!18 (List!1781) Unit!1252)

(assert (=> b!110261 (= lt!32358 (lemmaNoDuplicateThenContentToListSameSize!18 (t!22160 lt!32351)))))

(declare-fun b!110262 () Bool)

(declare-fun e!61549 () Bool)

(assert (=> b!110262 (= e!61546 e!61549)))

(declare-fun res!53284 () Bool)

(assert (=> b!110262 (=> res!53284 e!61549)))

(assert (=> b!110262 (= res!53284 (not (= lt!32361 lt!32341)))))

(assert (=> b!110262 (= lt!32341 lt!32354)))

(declare-fun lt!32356 () Unit!1252)

(declare-fun lemmaFlatMapOnSingletonSet!6 ((InoxSet A!315) A!315 Int) Unit!1252)

(assert (=> b!110262 (= lt!32356 (lemmaFlatMapOnSingletonSet!6 lt!32346 (h!7172 lt!32351) g!9))))

(assert (=> b!110262 (= lt!32361 lt!32349)))

(declare-fun lt!32344 () Unit!1252)

(assert (=> b!110262 (= lt!32344 (lemmaFlatMapOnSingletonSet!6 lt!32346 (h!7172 lt!32351) f!927))))

(assert (=> b!110262 (= lt!32342 lt!32357)))

(declare-fun lt!32355 () Unit!1252)

(declare-fun lemmaFlatMapWithExtEqualFunctionsOnSetThenSame!8 ((InoxSet A!315) Int Int) Unit!1252)

(assert (=> b!110262 (= lt!32355 (lemmaFlatMapWithExtEqualFunctionsOnSetThenSame!8 lt!32352 f!927 g!9))))

(declare-fun res!53280 () Bool)

(declare-fun e!61544 () Bool)

(assert (=> start!11270 (=> (not res!53280) (not e!61544))))

(declare-fun s!1451 () (InoxSet A!315))

(assert (=> start!11270 (= res!53280 (forall!329 s!1451 lambda!2708))))

(assert (=> start!11270 e!61544))

(declare-fun condSetEmpty!1644 () Bool)

(assert (=> start!11270 (= condSetEmpty!1644 (= s!1451 ((as const (Array A!315 Bool)) false)))))

(declare-fun setRes!1644 () Bool)

(assert (=> start!11270 setRes!1644))

(assert (=> start!11270 tp!59704))

(assert (=> start!11270 tp!59705))

(declare-fun setNonEmpty!1644 () Bool)

(declare-fun tp!59703 () Bool)

(declare-fun tp_is_empty!921 () Bool)

(assert (=> setNonEmpty!1644 (= setRes!1644 (and tp!59703 tp_is_empty!921))))

(declare-fun setElem!1644 () A!315)

(declare-fun setRest!1644 () (InoxSet A!315))

(assert (=> setNonEmpty!1644 (= s!1451 ((_ map or) (store ((as const (Array A!315 Bool)) false) setElem!1644 true) setRest!1644))))

(declare-fun setIsEmpty!1644 () Bool)

(assert (=> setIsEmpty!1644 setRes!1644))

(declare-fun b!110263 () Bool)

(assert (=> b!110263 (= e!61549 (= (flatMap!61 s!1451 f!927) (flatMap!61 s!1451 g!9)))))

(declare-fun b!110264 () Bool)

(assert (=> b!110264 (= e!61551 e!61550)))

(declare-fun res!53282 () Bool)

(assert (=> b!110264 (=> res!53282 e!61550)))

(declare-fun lt!32340 () Int)

(assert (=> b!110264 (= res!53282 (not (= lt!32340 lt!32359)))))

(assert (=> b!110264 (= lt!32359 (size!1553 (t!22160 lt!32351)))))

(assert (=> b!110264 (> lt!32343 lt!32340)))

(declare-fun tail!204 (List!1781) List!1781)

(assert (=> b!110264 (= lt!32340 (size!1553 (tail!204 lt!32351)))))

(assert (=> b!110264 (= lt!32343 (size!1553 lt!32351))))

(declare-fun lt!32360 () Unit!1252)

(declare-fun lemmaToListSizeBiggerThanTailContentSize!28 ((InoxSet A!315)) Unit!1252)

(assert (=> b!110264 (= lt!32360 (lemmaToListSizeBiggerThanTailContentSize!28 s!1451))))

(declare-fun lt!32347 () Unit!1252)

(declare-fun forallContained!34 (List!1781 Int A!315) Unit!1252)

(assert (=> b!110264 (= lt!32347 (forallContained!34 lt!32351 lambda!2708 (h!7172 lt!32351)))))

(declare-fun b!110265 () Bool)

(declare-fun e!61547 () Bool)

(assert (=> b!110265 (= e!61547 e!61545)))

(declare-fun res!53279 () Bool)

(assert (=> b!110265 (=> (not res!53279) (not e!61545))))

(assert (=> b!110265 (= res!53279 (= s!1451 lt!32353))))

(assert (=> b!110265 (= lt!32353 ((_ map or) lt!32346 lt!32352))))

(declare-fun content!199 (List!1781) (InoxSet A!315))

(assert (=> b!110265 (= lt!32352 (content!199 (t!22160 lt!32351)))))

(assert (=> b!110265 (= lt!32346 (store ((as const (Array A!315 Bool)) false) (h!7172 lt!32351) true))))

(declare-fun b!110266 () Bool)

(assert (=> b!110266 (= e!61544 e!61547)))

(declare-fun res!53277 () Bool)

(assert (=> b!110266 (=> (not res!53277) (not e!61547))))

(get-info :version)

(assert (=> b!110266 (= res!53277 ((_ is Cons!1775) lt!32351))))

(assert (=> b!110266 (= lt!32351 (toList!260 s!1451))))

(declare-fun b!110267 () Bool)

(declare-fun res!53278 () Bool)

(assert (=> b!110267 (=> res!53278 e!61551)))

(assert (=> b!110267 (= res!53278 (not (forall!329 lt!32352 lambda!2708)))))

(assert (= (and start!11270 res!53280) b!110266))

(assert (= (and b!110266 res!53277) b!110265))

(assert (= (and b!110265 res!53279) b!110260))

(assert (= (and b!110260 (not res!53283)) b!110259))

(assert (= (and b!110259 (not res!53276)) b!110267))

(assert (= (and b!110267 (not res!53278)) b!110264))

(assert (= (and b!110264 (not res!53282)) b!110261))

(assert (= (and b!110261 (not res!53281)) b!110262))

(assert (= (and b!110262 (not res!53284)) b!110263))

(assert (= (and start!11270 condSetEmpty!1644) setIsEmpty!1644))

(assert (= (and start!11270 (not condSetEmpty!1644)) setNonEmpty!1644))

(declare-fun b_lambda!1673 () Bool)

(assert (=> (not b_lambda!1673) (not b!110259)))

(declare-fun t!22153 () Bool)

(declare-fun tb!3639 () Bool)

(assert (=> (and start!11270 (= f!927 g!9) t!22153) tb!3639))

(assert (=> b!110259 t!22153))

(declare-fun result!5196 () Bool)

(declare-fun b_and!5543 () Bool)

(assert (= b_and!5539 (and (=> t!22153 result!5196) b_and!5543)))

(declare-fun t!22155 () Bool)

(declare-fun tb!3641 () Bool)

(assert (=> (and start!11270 (= g!9 g!9) t!22155) tb!3641))

(assert (=> b!110259 t!22155))

(declare-fun result!5198 () Bool)

(declare-fun b_and!5545 () Bool)

(assert (= b_and!5541 (and (=> t!22155 result!5198) b_and!5545)))

(declare-fun b_lambda!1675 () Bool)

(assert (=> (not b_lambda!1675) (not b!110259)))

(declare-fun t!22157 () Bool)

(declare-fun tb!3643 () Bool)

(assert (=> (and start!11270 (= f!927 f!927) t!22157) tb!3643))

(assert (=> b!110259 t!22157))

(declare-fun result!5200 () Bool)

(declare-fun b_and!5547 () Bool)

(assert (= b_and!5543 (and (=> t!22157 result!5200) b_and!5547)))

(declare-fun t!22159 () Bool)

(declare-fun tb!3645 () Bool)

(assert (=> (and start!11270 (= g!9 f!927) t!22159) tb!3645))

(assert (=> b!110259 t!22159))

(declare-fun result!5202 () Bool)

(declare-fun b_and!5549 () Bool)

(assert (= b_and!5545 (and (=> t!22159 result!5202) b_and!5549)))

(declare-fun m!100456 () Bool)

(assert (=> b!110259 m!100456))

(declare-fun m!100458 () Bool)

(assert (=> b!110259 m!100458))

(declare-fun m!100460 () Bool)

(assert (=> b!110259 m!100460))

(declare-fun m!100462 () Bool)

(assert (=> b!110259 m!100462))

(declare-fun m!100464 () Bool)

(assert (=> b!110262 m!100464))

(declare-fun m!100466 () Bool)

(assert (=> b!110262 m!100466))

(declare-fun m!100468 () Bool)

(assert (=> b!110262 m!100468))

(declare-fun m!100470 () Bool)

(assert (=> b!110261 m!100470))

(assert (=> b!110261 m!100470))

(declare-fun m!100472 () Bool)

(assert (=> b!110261 m!100472))

(declare-fun m!100474 () Bool)

(assert (=> b!110261 m!100474))

(declare-fun m!100476 () Bool)

(assert (=> b!110264 m!100476))

(declare-fun m!100478 () Bool)

(assert (=> b!110264 m!100478))

(declare-fun m!100480 () Bool)

(assert (=> b!110264 m!100480))

(assert (=> b!110264 m!100478))

(declare-fun m!100482 () Bool)

(assert (=> b!110264 m!100482))

(declare-fun m!100484 () Bool)

(assert (=> b!110264 m!100484))

(declare-fun m!100486 () Bool)

(assert (=> b!110264 m!100486))

(declare-fun m!100488 () Bool)

(assert (=> b!110260 m!100488))

(declare-fun m!100490 () Bool)

(assert (=> b!110260 m!100490))

(declare-fun m!100492 () Bool)

(assert (=> b!110260 m!100492))

(declare-fun m!100494 () Bool)

(assert (=> b!110260 m!100494))

(declare-fun m!100496 () Bool)

(assert (=> b!110260 m!100496))

(declare-fun m!100498 () Bool)

(assert (=> b!110260 m!100498))

(declare-fun m!100500 () Bool)

(assert (=> b!110260 m!100500))

(declare-fun m!100502 () Bool)

(assert (=> b!110260 m!100502))

(declare-fun m!100504 () Bool)

(assert (=> b!110260 m!100504))

(assert (=> b!110267 m!100460))

(declare-fun m!100506 () Bool)

(assert (=> b!110265 m!100506))

(declare-fun m!100508 () Bool)

(assert (=> b!110265 m!100508))

(declare-fun m!100510 () Bool)

(assert (=> b!110266 m!100510))

(declare-fun m!100512 () Bool)

(assert (=> b!110263 m!100512))

(declare-fun m!100514 () Bool)

(assert (=> b!110263 m!100514))

(declare-fun m!100516 () Bool)

(assert (=> start!11270 m!100516))

(check-sat (not start!11270) (not b!110264) b_and!5547 (not b_next!3425) (not b!110265) (not b!110259) (not b!110260) (not b!110266) (not tb!3641) tp_is_empty!921 (not b_next!3427) (not b!110263) (not tb!3643) (not tb!3639) (not tb!3645) (not b!110261) (not b!110267) (not b!110262) (not b_lambda!1673) b_and!5549 (not setNonEmpty!1644) (not b_lambda!1675))
(check-sat b_and!5547 b_and!5549 (not b_next!3427) (not b_next!3425))
