; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!424800 () Bool)

(assert start!424800)

(declare-fun e!2723632 () Bool)

(declare-fun b!4375652 () Bool)

(declare-fun tp!1331087 () Bool)

(declare-fun tp_is_empty!25523 () Bool)

(declare-fun tp_is_empty!25521 () Bool)

(assert (=> b!4375652 (= e!2723632 (and tp_is_empty!25521 tp_is_empty!25523 tp!1331087))))

(declare-fun b!4375653 () Bool)

(declare-fun e!2723630 () Bool)

(declare-fun e!2723628 () Bool)

(assert (=> b!4375653 (= e!2723630 (not e!2723628))))

(declare-fun res!1801502 () Bool)

(assert (=> b!4375653 (=> res!1801502 e!2723628)))

(declare-datatypes ((K!10495 0))(
  ( (K!10496 (val!16667 Int)) )
))
(declare-datatypes ((V!10741 0))(
  ( (V!10742 (val!16668 Int)) )
))
(declare-datatypes ((tuple2!48654 0))(
  ( (tuple2!48655 (_1!27621 K!10495) (_2!27621 V!10741)) )
))
(declare-datatypes ((List!49260 0))(
  ( (Nil!49136) (Cons!49136 (h!54729 tuple2!48654) (t!356186 List!49260)) )
))
(declare-fun newBucket!200 () List!49260)

(declare-fun lt!1586337 () List!49260)

(assert (=> b!4375653 (= res!1801502 (not (= newBucket!200 lt!1586337)))))

(declare-fun lt!1586343 () tuple2!48654)

(declare-fun lt!1586340 () List!49260)

(assert (=> b!4375653 (= lt!1586337 (Cons!49136 lt!1586343 lt!1586340))))

(declare-fun lt!1586341 () List!49260)

(declare-fun key!3918 () K!10495)

(declare-fun removePairForKey!539 (List!49260 K!10495) List!49260)

(assert (=> b!4375653 (= lt!1586340 (removePairForKey!539 lt!1586341 key!3918))))

(declare-fun newValue!99 () V!10741)

(assert (=> b!4375653 (= lt!1586343 (tuple2!48655 key!3918 newValue!99))))

(declare-fun lambda!144581 () Int)

(declare-datatypes ((tuple2!48656 0))(
  ( (tuple2!48657 (_1!27622 (_ BitVec 64)) (_2!27622 List!49260)) )
))
(declare-datatypes ((List!49261 0))(
  ( (Nil!49137) (Cons!49137 (h!54730 tuple2!48656) (t!356187 List!49261)) )
))
(declare-datatypes ((ListLongMap!1775 0))(
  ( (ListLongMap!1776 (toList!3125 List!49261)) )
))
(declare-fun lm!1707 () ListLongMap!1775)

(declare-datatypes ((Unit!74652 0))(
  ( (Unit!74653) )
))
(declare-fun lt!1586332 () Unit!74652)

(declare-fun lt!1586335 () tuple2!48656)

(declare-fun forallContained!1895 (List!49261 Int tuple2!48656) Unit!74652)

(assert (=> b!4375653 (= lt!1586332 (forallContained!1895 (toList!3125 lm!1707) lambda!144581 lt!1586335))))

(declare-fun contains!11455 (List!49261 tuple2!48656) Bool)

(assert (=> b!4375653 (contains!11455 (toList!3125 lm!1707) lt!1586335)))

(declare-fun hash!377 () (_ BitVec 64))

(assert (=> b!4375653 (= lt!1586335 (tuple2!48657 hash!377 lt!1586341))))

(declare-fun lt!1586339 () Unit!74652)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!416 (List!49261 (_ BitVec 64) List!49260) Unit!74652)

(assert (=> b!4375653 (= lt!1586339 (lemmaGetValueByKeyImpliesContainsTuple!416 (toList!3125 lm!1707) hash!377 lt!1586341))))

(declare-fun apply!11423 (ListLongMap!1775 (_ BitVec 64)) List!49260)

(assert (=> b!4375653 (= lt!1586341 (apply!11423 lm!1707 hash!377))))

(declare-fun b!4375654 () Bool)

(declare-fun res!1801494 () Bool)

(assert (=> b!4375654 (=> (not res!1801494) (not e!2723630))))

(declare-fun contains!11456 (ListLongMap!1775 (_ BitVec 64)) Bool)

(assert (=> b!4375654 (= res!1801494 (contains!11456 lm!1707 hash!377))))

(declare-fun lt!1586347 () ListLongMap!1775)

(declare-fun lt!1586342 () tuple2!48656)

(declare-fun e!2723629 () Bool)

(declare-fun b!4375655 () Bool)

(get-info :version)

(assert (=> b!4375655 (= e!2723629 (or (not ((_ is Cons!49137) (toList!3125 lm!1707))) (not (= (_1!27622 (h!54730 (toList!3125 lm!1707))) hash!377)) (= lt!1586347 (ListLongMap!1776 (Cons!49137 lt!1586342 (t!356187 (toList!3125 lm!1707)))))))))

(declare-fun b!4375656 () Bool)

(declare-fun res!1801503 () Bool)

(assert (=> b!4375656 (=> (not res!1801503) (not e!2723630))))

(declare-datatypes ((Hashable!4963 0))(
  ( (HashableExt!4962 (__x!30666 Int)) )
))
(declare-fun hashF!1247 () Hashable!4963)

(declare-fun allKeysSameHashInMap!675 (ListLongMap!1775 Hashable!4963) Bool)

(assert (=> b!4375656 (= res!1801503 (allKeysSameHashInMap!675 lm!1707 hashF!1247))))

(declare-fun b!4375657 () Bool)

(declare-fun res!1801497 () Bool)

(assert (=> b!4375657 (=> (not res!1801497) (not e!2723629))))

(declare-fun forall!9257 (List!49261 Int) Bool)

(assert (=> b!4375657 (= res!1801497 (forall!9257 (toList!3125 lt!1586347) lambda!144581))))

(declare-fun b!4375658 () Bool)

(declare-fun e!2723634 () Bool)

(declare-datatypes ((ListMap!2369 0))(
  ( (ListMap!2370 (toList!3126 List!49260)) )
))
(declare-fun lt!1586345 () ListMap!2369)

(declare-fun lt!1586338 () ListLongMap!1775)

(declare-fun extractMap!630 (List!49261) ListMap!2369)

(assert (=> b!4375658 (= e!2723634 (= lt!1586345 (extractMap!630 (toList!3125 lt!1586338))))))

(declare-fun b!4375659 () Bool)

(declare-fun res!1801501 () Bool)

(assert (=> b!4375659 (=> (not res!1801501) (not e!2723630))))

(declare-fun contains!11457 (ListMap!2369 K!10495) Bool)

(assert (=> b!4375659 (= res!1801501 (contains!11457 (extractMap!630 (toList!3125 lm!1707)) key!3918))))

(declare-fun b!4375660 () Bool)

(declare-fun e!2723627 () Bool)

(assert (=> b!4375660 (= e!2723628 e!2723627)))

(declare-fun res!1801495 () Bool)

(assert (=> b!4375660 (=> res!1801495 e!2723627)))

(assert (=> b!4375660 (= res!1801495 (or (not ((_ is Cons!49137) (toList!3125 lm!1707))) (not (= (_1!27622 (h!54730 (toList!3125 lm!1707))) hash!377))))))

(assert (=> b!4375660 e!2723629))

(declare-fun res!1801499 () Bool)

(assert (=> b!4375660 (=> (not res!1801499) (not e!2723629))))

(assert (=> b!4375660 (= res!1801499 (forall!9257 (toList!3125 lt!1586347) lambda!144581))))

(declare-fun +!773 (ListLongMap!1775 tuple2!48656) ListLongMap!1775)

(assert (=> b!4375660 (= lt!1586347 (+!773 lm!1707 lt!1586342))))

(assert (=> b!4375660 (= lt!1586342 (tuple2!48657 hash!377 newBucket!200))))

(declare-fun lt!1586344 () Unit!74652)

(declare-fun addValidProp!217 (ListLongMap!1775 Int (_ BitVec 64) List!49260) Unit!74652)

(assert (=> b!4375660 (= lt!1586344 (addValidProp!217 lm!1707 lambda!144581 hash!377 newBucket!200))))

(assert (=> b!4375660 (forall!9257 (toList!3125 lm!1707) lambda!144581)))

(declare-fun b!4375662 () Bool)

(declare-fun e!2723631 () Bool)

(declare-fun lt!1586330 () ListMap!2369)

(declare-fun lt!1586336 () ListMap!2369)

(declare-fun eq!309 (ListMap!2369 ListMap!2369) Bool)

(assert (=> b!4375662 (= e!2723631 (eq!309 lt!1586330 lt!1586336))))

(declare-fun b!4375663 () Bool)

(assert (=> b!4375663 (= e!2723627 true)))

(assert (=> b!4375663 e!2723634))

(declare-fun res!1801496 () Bool)

(assert (=> b!4375663 (=> (not res!1801496) (not e!2723634))))

(declare-fun lt!1586331 () List!49260)

(assert (=> b!4375663 (= res!1801496 (= lt!1586331 lt!1586340))))

(assert (=> b!4375663 (= lt!1586338 (+!773 lm!1707 (tuple2!48657 hash!377 lt!1586331)))))

(declare-fun tail!7064 (List!49260) List!49260)

(assert (=> b!4375663 (= lt!1586331 (tail!7064 newBucket!200))))

(assert (=> b!4375663 e!2723631))

(declare-fun res!1801493 () Bool)

(assert (=> b!4375663 (=> (not res!1801493) (not e!2723631))))

(declare-fun lt!1586333 () ListMap!2369)

(assert (=> b!4375663 (= res!1801493 (eq!309 lt!1586333 lt!1586336))))

(declare-fun +!774 (ListMap!2369 tuple2!48654) ListMap!2369)

(assert (=> b!4375663 (= lt!1586336 (+!774 lt!1586345 lt!1586343))))

(declare-fun lt!1586334 () ListMap!2369)

(declare-fun addToMapMapFromBucket!252 (List!49260 ListMap!2369) ListMap!2369)

(assert (=> b!4375663 (= lt!1586345 (addToMapMapFromBucket!252 lt!1586340 lt!1586334))))

(declare-fun lt!1586348 () Unit!74652)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!118 (ListMap!2369 K!10495 V!10741 List!49260) Unit!74652)

(assert (=> b!4375663 (= lt!1586348 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!118 lt!1586334 key!3918 newValue!99 lt!1586340))))

(assert (=> b!4375663 (= lt!1586330 lt!1586333)))

(assert (=> b!4375663 (= lt!1586333 (addToMapMapFromBucket!252 lt!1586340 (+!774 lt!1586334 lt!1586343)))))

(declare-fun lt!1586346 () ListMap!2369)

(assert (=> b!4375663 (= lt!1586346 lt!1586330)))

(assert (=> b!4375663 (= lt!1586330 (addToMapMapFromBucket!252 lt!1586337 lt!1586334))))

(assert (=> b!4375663 (= lt!1586346 (addToMapMapFromBucket!252 newBucket!200 lt!1586334))))

(assert (=> b!4375663 (= lt!1586346 (extractMap!630 (toList!3125 lt!1586347)))))

(assert (=> b!4375663 (= lt!1586334 (extractMap!630 (t!356187 (toList!3125 lm!1707))))))

(declare-fun b!4375664 () Bool)

(declare-fun res!1801498 () Bool)

(assert (=> b!4375664 (=> res!1801498 e!2723628)))

(declare-fun noDuplicateKeys!571 (List!49260) Bool)

(assert (=> b!4375664 (= res!1801498 (not (noDuplicateKeys!571 newBucket!200)))))

(declare-fun res!1801500 () Bool)

(assert (=> start!424800 (=> (not res!1801500) (not e!2723630))))

(assert (=> start!424800 (= res!1801500 (forall!9257 (toList!3125 lm!1707) lambda!144581))))

(assert (=> start!424800 e!2723630))

(assert (=> start!424800 e!2723632))

(assert (=> start!424800 true))

(declare-fun e!2723633 () Bool)

(declare-fun inv!64681 (ListLongMap!1775) Bool)

(assert (=> start!424800 (and (inv!64681 lm!1707) e!2723633)))

(assert (=> start!424800 tp_is_empty!25521))

(assert (=> start!424800 tp_is_empty!25523))

(declare-fun b!4375661 () Bool)

(declare-fun tp!1331088 () Bool)

(assert (=> b!4375661 (= e!2723633 tp!1331088)))

(declare-fun b!4375665 () Bool)

(declare-fun res!1801491 () Bool)

(assert (=> b!4375665 (=> (not res!1801491) (not e!2723630))))

(declare-fun hash!1734 (Hashable!4963 K!10495) (_ BitVec 64))

(assert (=> b!4375665 (= res!1801491 (= (hash!1734 hashF!1247 key!3918) hash!377))))

(declare-fun b!4375666 () Bool)

(declare-fun res!1801492 () Bool)

(assert (=> b!4375666 (=> (not res!1801492) (not e!2723630))))

(declare-fun allKeysSameHash!529 (List!49260 (_ BitVec 64) Hashable!4963) Bool)

(assert (=> b!4375666 (= res!1801492 (allKeysSameHash!529 newBucket!200 hash!377 hashF!1247))))

(assert (= (and start!424800 res!1801500) b!4375656))

(assert (= (and b!4375656 res!1801503) b!4375665))

(assert (= (and b!4375665 res!1801491) b!4375666))

(assert (= (and b!4375666 res!1801492) b!4375659))

(assert (= (and b!4375659 res!1801501) b!4375654))

(assert (= (and b!4375654 res!1801494) b!4375653))

(assert (= (and b!4375653 (not res!1801502)) b!4375664))

(assert (= (and b!4375664 (not res!1801498)) b!4375660))

(assert (= (and b!4375660 res!1801499) b!4375657))

(assert (= (and b!4375657 res!1801497) b!4375655))

(assert (= (and b!4375660 (not res!1801495)) b!4375663))

(assert (= (and b!4375663 res!1801493) b!4375662))

(assert (= (and b!4375663 res!1801496) b!4375658))

(assert (= (and start!424800 ((_ is Cons!49136) newBucket!200)) b!4375652))

(assert (= start!424800 b!4375661))

(declare-fun m!5008683 () Bool)

(assert (=> b!4375664 m!5008683))

(declare-fun m!5008685 () Bool)

(assert (=> b!4375653 m!5008685))

(declare-fun m!5008687 () Bool)

(assert (=> b!4375653 m!5008687))

(declare-fun m!5008689 () Bool)

(assert (=> b!4375653 m!5008689))

(declare-fun m!5008691 () Bool)

(assert (=> b!4375653 m!5008691))

(declare-fun m!5008693 () Bool)

(assert (=> b!4375653 m!5008693))

(declare-fun m!5008695 () Bool)

(assert (=> start!424800 m!5008695))

(declare-fun m!5008697 () Bool)

(assert (=> start!424800 m!5008697))

(declare-fun m!5008699 () Bool)

(assert (=> b!4375665 m!5008699))

(declare-fun m!5008701 () Bool)

(assert (=> b!4375654 m!5008701))

(declare-fun m!5008703 () Bool)

(assert (=> b!4375663 m!5008703))

(declare-fun m!5008705 () Bool)

(assert (=> b!4375663 m!5008705))

(declare-fun m!5008707 () Bool)

(assert (=> b!4375663 m!5008707))

(declare-fun m!5008709 () Bool)

(assert (=> b!4375663 m!5008709))

(declare-fun m!5008711 () Bool)

(assert (=> b!4375663 m!5008711))

(assert (=> b!4375663 m!5008703))

(declare-fun m!5008713 () Bool)

(assert (=> b!4375663 m!5008713))

(declare-fun m!5008715 () Bool)

(assert (=> b!4375663 m!5008715))

(declare-fun m!5008717 () Bool)

(assert (=> b!4375663 m!5008717))

(declare-fun m!5008719 () Bool)

(assert (=> b!4375663 m!5008719))

(declare-fun m!5008721 () Bool)

(assert (=> b!4375663 m!5008721))

(declare-fun m!5008723 () Bool)

(assert (=> b!4375663 m!5008723))

(declare-fun m!5008725 () Bool)

(assert (=> b!4375663 m!5008725))

(declare-fun m!5008727 () Bool)

(assert (=> b!4375666 m!5008727))

(declare-fun m!5008729 () Bool)

(assert (=> b!4375662 m!5008729))

(declare-fun m!5008731 () Bool)

(assert (=> b!4375658 m!5008731))

(declare-fun m!5008733 () Bool)

(assert (=> b!4375660 m!5008733))

(declare-fun m!5008735 () Bool)

(assert (=> b!4375660 m!5008735))

(declare-fun m!5008737 () Bool)

(assert (=> b!4375660 m!5008737))

(assert (=> b!4375660 m!5008695))

(declare-fun m!5008739 () Bool)

(assert (=> b!4375659 m!5008739))

(assert (=> b!4375659 m!5008739))

(declare-fun m!5008741 () Bool)

(assert (=> b!4375659 m!5008741))

(declare-fun m!5008743 () Bool)

(assert (=> b!4375656 m!5008743))

(assert (=> b!4375657 m!5008733))

(check-sat (not b!4375653) (not b!4375659) (not b!4375666) (not b!4375662) (not b!4375652) (not b!4375663) (not start!424800) (not b!4375664) (not b!4375654) (not b!4375661) (not b!4375660) (not b!4375656) (not b!4375665) tp_is_empty!25523 tp_is_empty!25521 (not b!4375658) (not b!4375657))
(check-sat)
