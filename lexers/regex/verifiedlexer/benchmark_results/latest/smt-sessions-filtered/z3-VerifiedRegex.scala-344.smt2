; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11138 () Bool)

(assert start!11138)

(declare-fun b_free!3345 () Bool)

(declare-fun b_next!3345 () Bool)

(assert (=> start!11138 (= b_free!3345 (not b_next!3345))))

(declare-fun tp!59472 () Bool)

(declare-fun b_and!5283 () Bool)

(assert (=> start!11138 (= tp!59472 b_and!5283)))

(declare-fun b_free!3347 () Bool)

(declare-fun b_next!3347 () Bool)

(assert (=> start!11138 (= b_free!3347 (not b_next!3347))))

(declare-fun tp!59471 () Bool)

(declare-fun b_and!5285 () Bool)

(assert (=> start!11138 (= tp!59471 b_and!5285)))

(assert (=> start!11138 true))

(declare-fun order!1009 () Int)

(declare-fun lambda!2536 () Int)

(declare-fun order!1011 () Int)

(declare-fun f!927 () Int)

(declare-fun dynLambda!665 (Int Int) Int)

(declare-fun dynLambda!666 (Int Int) Int)

(assert (=> start!11138 (< (dynLambda!665 order!1009 f!927) (dynLambda!666 order!1011 lambda!2536))))

(assert (=> start!11138 true))

(declare-fun g!9 () Int)

(assert (=> start!11138 (< (dynLambda!665 order!1009 g!9) (dynLambda!666 order!1011 lambda!2536))))

(declare-fun setNonEmpty!1538 () Bool)

(declare-fun setRes!1538 () Bool)

(declare-fun tp!59473 () Bool)

(declare-fun tp_is_empty!877 () Bool)

(assert (=> setNonEmpty!1538 (= setRes!1538 (and tp!59473 tp_is_empty!877))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!275 0))(
  ( (A!276 (val!578 Int)) )
))
(declare-fun s!1451 () (InoxSet A!275))

(declare-fun setElem!1538 () A!275)

(declare-fun setRest!1538 () (InoxSet A!275))

(assert (=> setNonEmpty!1538 (= s!1451 ((_ map or) (store ((as const (Array A!275 Bool)) false) setElem!1538 true) setRest!1538))))

(declare-fun b!109716 () Bool)

(declare-fun e!61134 () Bool)

(declare-fun e!61136 () Bool)

(assert (=> b!109716 (= e!61134 e!61136)))

(declare-fun res!52832 () Bool)

(assert (=> b!109716 (=> (not res!52832) (not e!61136))))

(declare-datatypes ((List!1761 0))(
  ( (Nil!1755) (Cons!1755 (h!7152 A!275) (t!21980 List!1761)) )
))
(declare-fun lt!31629 () List!1761)

(get-info :version)

(assert (=> b!109716 (= res!52832 ((_ is Cons!1755) lt!31629))))

(declare-fun toList!240 ((InoxSet A!275)) List!1761)

(assert (=> b!109716 (= lt!31629 (toList!240 s!1451))))

(declare-fun lt!31634 () Int)

(declare-fun lt!31633 () Int)

(declare-fun b!109717 () Bool)

(declare-fun e!61135 () Bool)

(declare-fun lt!31636 () Int)

(assert (=> b!109717 (= e!61135 (or (not (= lt!31636 lt!31633)) (< lt!31633 lt!31634)))))

(assert (=> b!109717 (= lt!31633 lt!31636)))

(declare-fun lt!31637 () (InoxSet A!275))

(declare-fun size!1541 (List!1761) Int)

(assert (=> b!109717 (= lt!31633 (size!1541 (toList!240 lt!31637)))))

(declare-datatypes ((Unit!1216 0))(
  ( (Unit!1217) )
))
(declare-fun lt!31632 () Unit!1216)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!10 (List!1761) Unit!1216)

(assert (=> b!109717 (= lt!31632 (lemmaNoDuplicateThenContentToListSameSize!10 (t!21980 lt!31629)))))

(declare-fun b!109718 () Bool)

(declare-fun e!61138 () Bool)

(assert (=> b!109718 (= e!61136 e!61138)))

(declare-fun res!52831 () Bool)

(assert (=> b!109718 (=> (not res!52831) (not e!61138))))

(declare-fun lt!31630 () (InoxSet A!275))

(assert (=> b!109718 (= res!52831 (= s!1451 lt!31630))))

(declare-fun lt!31626 () (InoxSet A!275))

(assert (=> b!109718 (= lt!31630 ((_ map or) lt!31626 lt!31637))))

(declare-fun content!183 (List!1761) (InoxSet A!275))

(assert (=> b!109718 (= lt!31637 (content!183 (t!21980 lt!31629)))))

(assert (=> b!109718 (= lt!31626 (store ((as const (Array A!275 Bool)) false) (h!7152 lt!31629) true))))

(declare-fun b!109719 () Bool)

(declare-fun e!61137 () Bool)

(assert (=> b!109719 (= e!61138 (not e!61137))))

(declare-fun res!52834 () Bool)

(assert (=> b!109719 (=> res!52834 e!61137)))

(declare-fun forall!293 (List!1761 Int) Bool)

(assert (=> b!109719 (= res!52834 (not (forall!293 (t!21980 lt!31629) lambda!2536)))))

(declare-datatypes ((B!567 0))(
  ( (B!568 (val!579 Int)) )
))
(declare-fun flatMap!43 ((InoxSet A!275) Int) (InoxSet B!567))

(assert (=> b!109719 (= ((_ map or) (flatMap!43 lt!31626 g!9) (flatMap!43 lt!31637 g!9)) (flatMap!43 lt!31630 g!9))))

(declare-fun lt!31627 () Unit!1216)

(declare-fun lemmaFlatMapAssociative!30 ((InoxSet A!275) (InoxSet A!275) Int) Unit!1216)

(assert (=> b!109719 (= lt!31627 (lemmaFlatMapAssociative!30 lt!31626 lt!31637 g!9))))

(assert (=> b!109719 (= ((_ map or) (flatMap!43 lt!31626 f!927) (flatMap!43 lt!31637 f!927)) (flatMap!43 lt!31630 f!927))))

(declare-fun lt!31631 () Unit!1216)

(assert (=> b!109719 (= lt!31631 (lemmaFlatMapAssociative!30 lt!31626 lt!31637 f!927))))

(declare-fun setIsEmpty!1538 () Bool)

(assert (=> setIsEmpty!1538 setRes!1538))

(declare-fun res!52830 () Bool)

(assert (=> start!11138 (=> (not res!52830) (not e!61134))))

(declare-fun forall!294 ((InoxSet A!275) Int) Bool)

(assert (=> start!11138 (= res!52830 (forall!294 s!1451 lambda!2536))))

(assert (=> start!11138 e!61134))

(declare-fun condSetEmpty!1538 () Bool)

(assert (=> start!11138 (= condSetEmpty!1538 (= s!1451 ((as const (Array A!275 Bool)) false)))))

(assert (=> start!11138 setRes!1538))

(assert (=> start!11138 tp!59472))

(assert (=> start!11138 tp!59471))

(declare-fun b!109715 () Bool)

(declare-fun e!61139 () Bool)

(assert (=> b!109715 (= e!61139 e!61135)))

(declare-fun res!52829 () Bool)

(assert (=> b!109715 (=> res!52829 e!61135)))

(declare-fun lt!31635 () Int)

(assert (=> b!109715 (= res!52829 (not (= lt!31635 lt!31636)))))

(assert (=> b!109715 (= lt!31636 (size!1541 (t!21980 lt!31629)))))

(assert (=> b!109715 (> lt!31634 lt!31635)))

(declare-fun tail!194 (List!1761) List!1761)

(assert (=> b!109715 (= lt!31635 (size!1541 (tail!194 lt!31629)))))

(assert (=> b!109715 (= lt!31634 (size!1541 lt!31629))))

(declare-fun lt!31628 () Unit!1216)

(declare-fun lemmaToListSizeBiggerThanTailContentSize!18 ((InoxSet A!275)) Unit!1216)

(assert (=> b!109715 (= lt!31628 (lemmaToListSizeBiggerThanTailContentSize!18 s!1451))))

(declare-fun lt!31625 () Unit!1216)

(declare-fun forallContained!22 (List!1761 Int A!275) Unit!1216)

(assert (=> b!109715 (= lt!31625 (forallContained!22 lt!31629 lambda!2536 (h!7152 lt!31629)))))

(declare-fun b!109720 () Bool)

(assert (=> b!109720 (= e!61137 e!61139)))

(declare-fun res!52833 () Bool)

(assert (=> b!109720 (=> res!52833 e!61139)))

(declare-fun dynLambda!667 (Int A!275) (InoxSet B!567))

(assert (=> b!109720 (= res!52833 (not (= (dynLambda!667 f!927 (h!7152 lt!31629)) (dynLambda!667 g!9 (h!7152 lt!31629)))))))

(assert (=> b!109720 (forall!294 lt!31637 lambda!2536)))

(declare-fun lt!31638 () Unit!1216)

(declare-fun lemmaForallThenOnContent!26 (List!1761 Int) Unit!1216)

(assert (=> b!109720 (= lt!31638 (lemmaForallThenOnContent!26 (t!21980 lt!31629) lambda!2536))))

(declare-fun b!109721 () Bool)

(declare-fun res!52828 () Bool)

(assert (=> b!109721 (=> res!52828 e!61139)))

(assert (=> b!109721 (= res!52828 (not (forall!294 lt!31637 lambda!2536)))))

(assert (= (and start!11138 res!52830) b!109716))

(assert (= (and b!109716 res!52832) b!109718))

(assert (= (and b!109718 res!52831) b!109719))

(assert (= (and b!109719 (not res!52834)) b!109720))

(assert (= (and b!109720 (not res!52833)) b!109721))

(assert (= (and b!109721 (not res!52828)) b!109715))

(assert (= (and b!109715 (not res!52829)) b!109717))

(assert (= (and start!11138 condSetEmpty!1538) setIsEmpty!1538))

(assert (= (and start!11138 (not condSetEmpty!1538)) setNonEmpty!1538))

(declare-fun b_lambda!1505 () Bool)

(assert (=> (not b_lambda!1505) (not b!109720)))

(declare-fun t!21973 () Bool)

(declare-fun tb!3479 () Bool)

(assert (=> (and start!11138 (= f!927 f!927) t!21973) tb!3479))

(assert (=> b!109720 t!21973))

(declare-fun result!5024 () Bool)

(declare-fun b_and!5287 () Bool)

(assert (= b_and!5283 (and (=> t!21973 result!5024) b_and!5287)))

(declare-fun t!21975 () Bool)

(declare-fun tb!3481 () Bool)

(assert (=> (and start!11138 (= g!9 f!927) t!21975) tb!3481))

(assert (=> b!109720 t!21975))

(declare-fun result!5026 () Bool)

(declare-fun b_and!5289 () Bool)

(assert (= b_and!5285 (and (=> t!21975 result!5026) b_and!5289)))

(declare-fun b_lambda!1507 () Bool)

(assert (=> (not b_lambda!1507) (not b!109720)))

(declare-fun tb!3483 () Bool)

(declare-fun t!21977 () Bool)

(assert (=> (and start!11138 (= f!927 g!9) t!21977) tb!3483))

(assert (=> b!109720 t!21977))

(declare-fun result!5028 () Bool)

(declare-fun b_and!5291 () Bool)

(assert (= b_and!5287 (and (=> t!21977 result!5028) b_and!5291)))

(declare-fun t!21979 () Bool)

(declare-fun tb!3485 () Bool)

(assert (=> (and start!11138 (= g!9 g!9) t!21979) tb!3485))

(assert (=> b!109720 t!21979))

(declare-fun result!5030 () Bool)

(declare-fun b_and!5293 () Bool)

(assert (= b_and!5289 (and (=> t!21979 result!5030) b_and!5293)))

(declare-fun m!99406 () Bool)

(assert (=> b!109715 m!99406))

(declare-fun m!99408 () Bool)

(assert (=> b!109715 m!99408))

(declare-fun m!99410 () Bool)

(assert (=> b!109715 m!99410))

(declare-fun m!99412 () Bool)

(assert (=> b!109715 m!99412))

(assert (=> b!109715 m!99410))

(declare-fun m!99414 () Bool)

(assert (=> b!109715 m!99414))

(declare-fun m!99416 () Bool)

(assert (=> b!109715 m!99416))

(declare-fun m!99418 () Bool)

(assert (=> b!109721 m!99418))

(declare-fun m!99420 () Bool)

(assert (=> b!109720 m!99420))

(declare-fun m!99422 () Bool)

(assert (=> b!109720 m!99422))

(assert (=> b!109720 m!99418))

(declare-fun m!99424 () Bool)

(assert (=> b!109720 m!99424))

(declare-fun m!99426 () Bool)

(assert (=> b!109718 m!99426))

(declare-fun m!99428 () Bool)

(assert (=> b!109718 m!99428))

(declare-fun m!99430 () Bool)

(assert (=> start!11138 m!99430))

(declare-fun m!99432 () Bool)

(assert (=> b!109716 m!99432))

(declare-fun m!99434 () Bool)

(assert (=> b!109717 m!99434))

(assert (=> b!109717 m!99434))

(declare-fun m!99436 () Bool)

(assert (=> b!109717 m!99436))

(declare-fun m!99438 () Bool)

(assert (=> b!109717 m!99438))

(declare-fun m!99440 () Bool)

(assert (=> b!109719 m!99440))

(declare-fun m!99442 () Bool)

(assert (=> b!109719 m!99442))

(declare-fun m!99444 () Bool)

(assert (=> b!109719 m!99444))

(declare-fun m!99446 () Bool)

(assert (=> b!109719 m!99446))

(declare-fun m!99448 () Bool)

(assert (=> b!109719 m!99448))

(declare-fun m!99450 () Bool)

(assert (=> b!109719 m!99450))

(declare-fun m!99452 () Bool)

(assert (=> b!109719 m!99452))

(declare-fun m!99454 () Bool)

(assert (=> b!109719 m!99454))

(declare-fun m!99456 () Bool)

(assert (=> b!109719 m!99456))

(check-sat (not tb!3479) (not b_lambda!1507) tp_is_empty!877 (not setNonEmpty!1538) (not b!109718) (not b_next!3347) (not b!109715) (not b_lambda!1505) (not tb!3483) (not tb!3485) (not b!109717) (not b_next!3345) (not b!109716) (not start!11138) b_and!5293 (not b!109721) (not b!109720) b_and!5291 (not b!109719) (not tb!3481))
(check-sat b_and!5291 b_and!5293 (not b_next!3347) (not b_next!3345))
