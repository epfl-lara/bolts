; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!429998 () Bool)

(assert start!429998)

(declare-fun b!4415508 () Bool)

(declare-fun res!1823645 () Bool)

(declare-fun e!2749541 () Bool)

(assert (=> b!4415508 (=> (not res!1823645) (not e!2749541))))

(declare-datatypes ((K!10795 0))(
  ( (K!10796 (val!16907 Int)) )
))
(declare-datatypes ((V!11041 0))(
  ( (V!11042 (val!16908 Int)) )
))
(declare-datatypes ((tuple2!49134 0))(
  ( (tuple2!49135 (_1!27861 K!10795) (_2!27861 V!11041)) )
))
(declare-datatypes ((List!49561 0))(
  ( (Nil!49437) (Cons!49437 (h!55096 tuple2!49134) (t!356499 List!49561)) )
))
(declare-fun newBucket!194 () List!49561)

(declare-datatypes ((Hashable!5083 0))(
  ( (HashableExt!5082 (__x!30786 Int)) )
))
(declare-fun hashF!1220 () Hashable!5083)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun allKeysSameHash!649 (List!49561 (_ BitVec 64) Hashable!5083) Bool)

(assert (=> b!4415508 (= res!1823645 (allKeysSameHash!649 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4415509 () Bool)

(declare-fun res!1823650 () Bool)

(assert (=> b!4415509 (=> (not res!1823650) (not e!2749541))))

(declare-datatypes ((tuple2!49136 0))(
  ( (tuple2!49137 (_1!27862 (_ BitVec 64)) (_2!27862 List!49561)) )
))
(declare-datatypes ((List!49562 0))(
  ( (Nil!49438) (Cons!49438 (h!55097 tuple2!49136) (t!356500 List!49562)) )
))
(declare-datatypes ((ListLongMap!2015 0))(
  ( (ListLongMap!2016 (toList!3365 List!49562)) )
))
(declare-fun lm!1616 () ListLongMap!2015)

(declare-fun allKeysSameHashInMap!795 (ListLongMap!2015 Hashable!5083) Bool)

(assert (=> b!4415509 (= res!1823650 (allKeysSameHashInMap!795 lm!1616 hashF!1220))))

(declare-fun b!4415510 () Bool)

(declare-fun res!1823649 () Bool)

(declare-fun e!2749540 () Bool)

(assert (=> b!4415510 (=> res!1823649 e!2749540)))

(declare-fun lt!1617412 () Bool)

(get-info :version)

(assert (=> b!4415510 (= res!1823649 (or (not ((_ is Cons!49438) (toList!3365 lm!1616))) (not (= (_1!27862 (h!55097 (toList!3365 lm!1616))) hash!366)) lt!1617412))))

(declare-fun b!4415511 () Bool)

(declare-fun e!2749542 () Bool)

(declare-fun tp!1332559 () Bool)

(assert (=> b!4415511 (= e!2749542 tp!1332559)))

(declare-fun b!4415512 () Bool)

(declare-fun e!2749546 () Bool)

(declare-fun e!2749538 () Bool)

(assert (=> b!4415512 (= e!2749546 e!2749538)))

(declare-fun res!1823636 () Bool)

(assert (=> b!4415512 (=> res!1823636 e!2749538)))

(declare-fun lt!1617406 () List!49561)

(declare-fun lt!1617410 () tuple2!49134)

(assert (=> b!4415512 (= res!1823636 (not (= newBucket!194 (Cons!49437 lt!1617410 lt!1617406))))))

(declare-fun apply!11541 (ListLongMap!2015 (_ BitVec 64)) List!49561)

(assert (=> b!4415512 (= lt!1617406 (apply!11541 lm!1616 hash!366))))

(declare-fun key!3717 () K!10795)

(declare-fun newValue!93 () V!11041)

(assert (=> b!4415512 (= lt!1617410 (tuple2!49135 key!3717 newValue!93))))

(declare-fun b!4415513 () Bool)

(declare-fun res!1823646 () Bool)

(assert (=> b!4415513 (=> (not res!1823646) (not e!2749541))))

(declare-datatypes ((ListMap!2609 0))(
  ( (ListMap!2610 (toList!3366 List!49561)) )
))
(declare-fun contains!11891 (ListMap!2609 K!10795) Bool)

(declare-fun extractMap!750 (List!49562) ListMap!2609)

(assert (=> b!4415513 (= res!1823646 (not (contains!11891 (extractMap!750 (toList!3365 lm!1616)) key!3717)))))

(declare-fun b!4415515 () Bool)

(declare-fun res!1823635 () Bool)

(declare-fun e!2749539 () Bool)

(assert (=> b!4415515 (=> (not res!1823635) (not e!2749539))))

(declare-fun lambda!151828 () Int)

(declare-fun forall!9470 (List!49562 Int) Bool)

(assert (=> b!4415515 (= res!1823635 (forall!9470 (toList!3365 lm!1616) lambda!151828))))

(declare-fun b!4415516 () Bool)

(declare-fun res!1823640 () Bool)

(assert (=> b!4415516 (=> res!1823640 e!2749540)))

(declare-fun lt!1617414 () ListLongMap!2015)

(declare-fun tail!7177 (List!49562) List!49562)

(assert (=> b!4415516 (= res!1823640 (not (= (tail!7177 (toList!3365 lt!1617414)) (t!356500 (toList!3365 lm!1616)))))))

(declare-fun e!2749544 () Bool)

(declare-fun tp!1332560 () Bool)

(declare-fun tp_is_empty!26001 () Bool)

(declare-fun b!4415517 () Bool)

(declare-fun tp_is_empty!26003 () Bool)

(assert (=> b!4415517 (= e!2749544 (and tp_is_empty!26003 tp_is_empty!26001 tp!1332560))))

(declare-fun b!4415518 () Bool)

(declare-fun e!2749545 () Bool)

(assert (=> b!4415518 (= e!2749538 e!2749545)))

(declare-fun res!1823643 () Bool)

(assert (=> b!4415518 (=> res!1823643 e!2749545)))

(declare-fun lt!1617403 () ListMap!2609)

(declare-fun lt!1617404 () ListMap!2609)

(assert (=> b!4415518 (= res!1823643 (not (= lt!1617403 lt!1617404)))))

(declare-fun lt!1617408 () ListMap!2609)

(declare-fun addToMapMapFromBucket!343 (List!49561 ListMap!2609) ListMap!2609)

(declare-fun +!978 (ListMap!2609 tuple2!49134) ListMap!2609)

(assert (=> b!4415518 (= lt!1617404 (addToMapMapFromBucket!343 lt!1617406 (+!978 lt!1617408 lt!1617410)))))

(declare-fun b!4415519 () Bool)

(declare-fun res!1823648 () Bool)

(assert (=> b!4415519 (=> (not res!1823648) (not e!2749541))))

(declare-fun hash!2002 (Hashable!5083 K!10795) (_ BitVec 64))

(assert (=> b!4415519 (= res!1823648 (= (hash!2002 hashF!1220 key!3717) hash!366))))

(declare-fun b!4415520 () Bool)

(assert (=> b!4415520 (= e!2749541 e!2749539)))

(declare-fun res!1823642 () Bool)

(assert (=> b!4415520 (=> (not res!1823642) (not e!2749539))))

(declare-fun e!2749547 () Bool)

(assert (=> b!4415520 (= res!1823642 e!2749547)))

(declare-fun res!1823644 () Bool)

(assert (=> b!4415520 (=> res!1823644 e!2749547)))

(declare-fun e!2749543 () Bool)

(assert (=> b!4415520 (= res!1823644 e!2749543)))

(declare-fun res!1823638 () Bool)

(assert (=> b!4415520 (=> (not res!1823638) (not e!2749543))))

(assert (=> b!4415520 (= res!1823638 (not lt!1617412))))

(declare-fun lt!1617411 () Bool)

(assert (=> b!4415520 (= lt!1617412 (not lt!1617411))))

(declare-fun contains!11892 (ListLongMap!2015 (_ BitVec 64)) Bool)

(assert (=> b!4415520 (= lt!1617411 (contains!11892 lm!1616 hash!366))))

(declare-fun b!4415521 () Bool)

(declare-fun res!1823639 () Bool)

(assert (=> b!4415521 (=> res!1823639 e!2749540)))

(declare-fun lt!1617405 () tuple2!49136)

(declare-fun head!9168 (List!49562) tuple2!49136)

(assert (=> b!4415521 (= res!1823639 (not (= (head!9168 (toList!3365 lt!1617414)) lt!1617405)))))

(declare-fun b!4415522 () Bool)

(assert (=> b!4415522 (= e!2749540 e!2749546)))

(declare-fun res!1823651 () Bool)

(assert (=> b!4415522 (=> res!1823651 e!2749546)))

(declare-fun lt!1617409 () ListMap!2609)

(assert (=> b!4415522 (= res!1823651 (not (= lt!1617409 lt!1617403)))))

(assert (=> b!4415522 (= lt!1617403 (addToMapMapFromBucket!343 newBucket!194 lt!1617408))))

(assert (=> b!4415522 (= lt!1617409 (extractMap!750 (toList!3365 lt!1617414)))))

(assert (=> b!4415522 (= lt!1617408 (extractMap!750 (t!356500 (toList!3365 lm!1616))))))

(declare-fun b!4415523 () Bool)

(declare-fun res!1823647 () Bool)

(assert (=> b!4415523 (=> (not res!1823647) (not e!2749539))))

(declare-fun noDuplicateKeys!689 (List!49561) Bool)

(assert (=> b!4415523 (= res!1823647 (noDuplicateKeys!689 newBucket!194))))

(declare-fun b!4415524 () Bool)

(assert (=> b!4415524 (= e!2749543 (= newBucket!194 (Cons!49437 (tuple2!49135 key!3717 newValue!93) (apply!11541 lm!1616 hash!366))))))

(declare-fun b!4415525 () Bool)

(assert (=> b!4415525 (= e!2749539 (not e!2749540))))

(declare-fun res!1823637 () Bool)

(assert (=> b!4415525 (=> res!1823637 e!2749540)))

(assert (=> b!4415525 (= res!1823637 (not (forall!9470 (toList!3365 lt!1617414) lambda!151828)))))

(assert (=> b!4415525 (forall!9470 (toList!3365 lt!1617414) lambda!151828)))

(declare-fun +!979 (ListLongMap!2015 tuple2!49136) ListLongMap!2015)

(assert (=> b!4415525 (= lt!1617414 (+!979 lm!1616 lt!1617405))))

(assert (=> b!4415525 (= lt!1617405 (tuple2!49137 hash!366 newBucket!194))))

(declare-datatypes ((Unit!80819 0))(
  ( (Unit!80820) )
))
(declare-fun lt!1617413 () Unit!80819)

(declare-fun addValidProp!333 (ListLongMap!2015 Int (_ BitVec 64) List!49561) Unit!80819)

(assert (=> b!4415525 (= lt!1617413 (addValidProp!333 lm!1616 lambda!151828 hash!366 newBucket!194))))

(declare-fun res!1823641 () Bool)

(assert (=> start!429998 (=> (not res!1823641) (not e!2749541))))

(assert (=> start!429998 (= res!1823641 (forall!9470 (toList!3365 lm!1616) lambda!151828))))

(assert (=> start!429998 e!2749541))

(assert (=> start!429998 tp_is_empty!26001))

(assert (=> start!429998 tp_is_empty!26003))

(assert (=> start!429998 e!2749544))

(declare-fun inv!64981 (ListLongMap!2015) Bool)

(assert (=> start!429998 (and (inv!64981 lm!1616) e!2749542)))

(assert (=> start!429998 true))

(declare-fun b!4415514 () Bool)

(declare-fun e!2749548 () Bool)

(assert (=> b!4415514 (= e!2749548 (forall!9470 (toList!3365 lt!1617414) lambda!151828))))

(declare-fun b!4415526 () Bool)

(assert (=> b!4415526 (= e!2749545 e!2749548)))

(declare-fun res!1823634 () Bool)

(assert (=> b!4415526 (=> res!1823634 e!2749548)))

(declare-fun lt!1617415 () ListMap!2609)

(declare-fun eq!365 (ListMap!2609 ListMap!2609) Bool)

(assert (=> b!4415526 (= res!1823634 (not (eq!365 lt!1617403 lt!1617415)))))

(assert (=> b!4415526 (eq!365 lt!1617404 lt!1617415)))

(assert (=> b!4415526 (= lt!1617415 (+!978 (addToMapMapFromBucket!343 lt!1617406 lt!1617408) lt!1617410))))

(declare-fun lt!1617407 () Unit!80819)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!160 (ListMap!2609 K!10795 V!11041 List!49561) Unit!80819)

(assert (=> b!4415526 (= lt!1617407 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!160 lt!1617408 key!3717 newValue!93 lt!1617406))))

(declare-fun b!4415527 () Bool)

(assert (=> b!4415527 (= e!2749547 (and (not lt!1617411) (= newBucket!194 (Cons!49437 (tuple2!49135 key!3717 newValue!93) Nil!49437))))))

(assert (= (and start!429998 res!1823641) b!4415509))

(assert (= (and b!4415509 res!1823650) b!4415519))

(assert (= (and b!4415519 res!1823648) b!4415508))

(assert (= (and b!4415508 res!1823645) b!4415513))

(assert (= (and b!4415513 res!1823646) b!4415520))

(assert (= (and b!4415520 res!1823638) b!4415524))

(assert (= (and b!4415520 (not res!1823644)) b!4415527))

(assert (= (and b!4415520 res!1823642) b!4415523))

(assert (= (and b!4415523 res!1823647) b!4415515))

(assert (= (and b!4415515 res!1823635) b!4415525))

(assert (= (and b!4415525 (not res!1823637)) b!4415510))

(assert (= (and b!4415510 (not res!1823649)) b!4415521))

(assert (= (and b!4415521 (not res!1823639)) b!4415516))

(assert (= (and b!4415516 (not res!1823640)) b!4415522))

(assert (= (and b!4415522 (not res!1823651)) b!4415512))

(assert (= (and b!4415512 (not res!1823636)) b!4415518))

(assert (= (and b!4415518 (not res!1823643)) b!4415526))

(assert (= (and b!4415526 (not res!1823634)) b!4415514))

(assert (= (and start!429998 ((_ is Cons!49437) newBucket!194)) b!4415517))

(assert (= start!429998 b!4415511))

(declare-fun m!5091597 () Bool)

(assert (=> b!4415508 m!5091597))

(declare-fun m!5091599 () Bool)

(assert (=> b!4415516 m!5091599))

(declare-fun m!5091601 () Bool)

(assert (=> b!4415512 m!5091601))

(declare-fun m!5091603 () Bool)

(assert (=> b!4415520 m!5091603))

(declare-fun m!5091605 () Bool)

(assert (=> b!4415518 m!5091605))

(assert (=> b!4415518 m!5091605))

(declare-fun m!5091607 () Bool)

(assert (=> b!4415518 m!5091607))

(declare-fun m!5091609 () Bool)

(assert (=> b!4415525 m!5091609))

(assert (=> b!4415525 m!5091609))

(declare-fun m!5091611 () Bool)

(assert (=> b!4415525 m!5091611))

(declare-fun m!5091613 () Bool)

(assert (=> b!4415525 m!5091613))

(declare-fun m!5091615 () Bool)

(assert (=> b!4415522 m!5091615))

(declare-fun m!5091617 () Bool)

(assert (=> b!4415522 m!5091617))

(declare-fun m!5091619 () Bool)

(assert (=> b!4415522 m!5091619))

(declare-fun m!5091621 () Bool)

(assert (=> b!4415523 m!5091621))

(declare-fun m!5091623 () Bool)

(assert (=> b!4415521 m!5091623))

(declare-fun m!5091625 () Bool)

(assert (=> b!4415519 m!5091625))

(declare-fun m!5091627 () Bool)

(assert (=> b!4415526 m!5091627))

(declare-fun m!5091629 () Bool)

(assert (=> b!4415526 m!5091629))

(declare-fun m!5091631 () Bool)

(assert (=> b!4415526 m!5091631))

(declare-fun m!5091633 () Bool)

(assert (=> b!4415526 m!5091633))

(assert (=> b!4415526 m!5091629))

(declare-fun m!5091635 () Bool)

(assert (=> b!4415526 m!5091635))

(declare-fun m!5091637 () Bool)

(assert (=> start!429998 m!5091637))

(declare-fun m!5091639 () Bool)

(assert (=> start!429998 m!5091639))

(declare-fun m!5091641 () Bool)

(assert (=> b!4415513 m!5091641))

(assert (=> b!4415513 m!5091641))

(declare-fun m!5091643 () Bool)

(assert (=> b!4415513 m!5091643))

(declare-fun m!5091645 () Bool)

(assert (=> b!4415509 m!5091645))

(assert (=> b!4415524 m!5091601))

(assert (=> b!4415514 m!5091609))

(assert (=> b!4415515 m!5091637))

(check-sat (not b!4415513) (not b!4415516) (not b!4415508) (not b!4415509) (not b!4415523) (not b!4415512) (not b!4415517) (not b!4415514) (not b!4415518) tp_is_empty!26001 (not b!4415520) tp_is_empty!26003 (not b!4415525) (not b!4415511) (not start!429998) (not b!4415519) (not b!4415526) (not b!4415521) (not b!4415515) (not b!4415524) (not b!4415522))
(check-sat)
