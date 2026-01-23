; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!441544 () Bool)

(assert start!441544)

(declare-fun b!4484714 () Bool)

(declare-datatypes ((Unit!90043 0))(
  ( (Unit!90044) )
))
(declare-fun e!2793145 () Unit!90043)

(declare-fun Unit!90045 () Unit!90043)

(assert (=> b!4484714 (= e!2793145 Unit!90045)))

(declare-fun res!1862661 () Bool)

(declare-fun e!2793148 () Bool)

(assert (=> start!441544 (=> (not res!1862661) (not e!2793148))))

(declare-datatypes ((K!11850 0))(
  ( (K!11851 (val!17751 Int)) )
))
(declare-datatypes ((V!12096 0))(
  ( (V!12097 (val!17752 Int)) )
))
(declare-datatypes ((tuple2!50770 0))(
  ( (tuple2!50771 (_1!28679 K!11850) (_2!28679 V!12096)) )
))
(declare-datatypes ((List!50560 0))(
  ( (Nil!50436) (Cons!50436 (h!56231 tuple2!50770) (t!357514 List!50560)) )
))
(declare-datatypes ((tuple2!50772 0))(
  ( (tuple2!50773 (_1!28680 (_ BitVec 64)) (_2!28680 List!50560)) )
))
(declare-datatypes ((List!50561 0))(
  ( (Nil!50437) (Cons!50437 (h!56232 tuple2!50772) (t!357515 List!50561)) )
))
(declare-datatypes ((ListLongMap!2807 0))(
  ( (ListLongMap!2808 (toList!4175 List!50561)) )
))
(declare-fun lm!1477 () ListLongMap!2807)

(declare-fun lambda!166185 () Int)

(declare-fun forall!10094 (List!50561 Int) Bool)

(assert (=> start!441544 (= res!1862661 (forall!10094 (toList!4175 lm!1477) lambda!166185))))

(assert (=> start!441544 e!2793148))

(assert (=> start!441544 true))

(declare-fun e!2793142 () Bool)

(declare-fun inv!66034 (ListLongMap!2807) Bool)

(assert (=> start!441544 (and (inv!66034 lm!1477) e!2793142)))

(declare-fun tp_is_empty!27613 () Bool)

(assert (=> start!441544 tp_is_empty!27613))

(declare-fun e!2793144 () Bool)

(assert (=> start!441544 e!2793144))

(declare-fun b!4484715 () Bool)

(declare-fun e!2793146 () Bool)

(assert (=> b!4484715 (= e!2793146 true)))

(declare-fun lt!1670532 () ListLongMap!2807)

(declare-fun lt!1670531 () tuple2!50772)

(declare-fun lt!1670530 () Unit!90043)

(declare-fun forallContained!2355 (List!50561 Int tuple2!50772) Unit!90043)

(assert (=> b!4484715 (= lt!1670530 (forallContained!2355 (toList!4175 lt!1670532) lambda!166185 lt!1670531))))

(declare-fun b!4484716 () Bool)

(declare-fun e!2793143 () Bool)

(declare-fun e!2793149 () Bool)

(assert (=> b!4484716 (= e!2793143 e!2793149)))

(declare-fun res!1862660 () Bool)

(assert (=> b!4484716 (=> res!1862660 e!2793149)))

(declare-fun lt!1670520 () Bool)

(assert (=> b!4484716 (= res!1862660 lt!1670520)))

(declare-fun lt!1670525 () Unit!90043)

(assert (=> b!4484716 (= lt!1670525 e!2793145)))

(declare-fun c!763859 () Bool)

(assert (=> b!4484716 (= c!763859 lt!1670520)))

(declare-fun lt!1670519 () List!50560)

(declare-fun key!3287 () K!11850)

(declare-fun containsKey!1588 (List!50560 K!11850) Bool)

(assert (=> b!4484716 (= lt!1670520 (not (containsKey!1588 lt!1670519 key!3287)))))

(declare-fun b!4484717 () Bool)

(declare-fun res!1862653 () Bool)

(assert (=> b!4484717 (=> res!1862653 e!2793149)))

(assert (=> b!4484717 (= res!1862653 (not (forall!10094 (toList!4175 lt!1670532) lambda!166185)))))

(declare-fun b!4484718 () Bool)

(declare-fun e!2793141 () Bool)

(assert (=> b!4484718 (= e!2793148 e!2793141)))

(declare-fun res!1862662 () Bool)

(assert (=> b!4484718 (=> (not res!1862662) (not e!2793141))))

(declare-fun lt!1670521 () (_ BitVec 64))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4484718 (= res!1862662 (= lt!1670521 hash!344))))

(declare-datatypes ((Hashable!5479 0))(
  ( (HashableExt!5478 (__x!31182 Int)) )
))
(declare-fun hashF!1107 () Hashable!5479)

(declare-fun hash!2589 (Hashable!5479 K!11850) (_ BitVec 64))

(assert (=> b!4484718 (= lt!1670521 (hash!2589 hashF!1107 key!3287))))

(declare-fun b!4484719 () Bool)

(declare-fun res!1862649 () Bool)

(declare-fun e!2793147 () Bool)

(assert (=> b!4484719 (=> res!1862649 e!2793147)))

(get-info :version)

(assert (=> b!4484719 (= res!1862649 (or ((_ is Nil!50437) (toList!4175 lm!1477)) (= (_1!28680 (h!56232 (toList!4175 lm!1477))) hash!344)))))

(declare-fun b!4484720 () Bool)

(declare-fun res!1862654 () Bool)

(assert (=> b!4484720 (=> res!1862654 e!2793149)))

(declare-fun contains!13053 (ListLongMap!2807 (_ BitVec 64)) Bool)

(assert (=> b!4484720 (= res!1862654 (not (contains!13053 lt!1670532 lt!1670521)))))

(declare-fun b!4484721 () Bool)

(declare-fun Unit!90046 () Unit!90043)

(assert (=> b!4484721 (= e!2793145 Unit!90046)))

(declare-fun lt!1670528 () Unit!90043)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!72 (ListLongMap!2807 K!11850 Hashable!5479) Unit!90043)

(assert (=> b!4484721 (= lt!1670528 (lemmaNotInItsHashBucketThenNotInMap!72 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4484721 false))

(declare-fun b!4484722 () Bool)

(declare-fun res!1862658 () Bool)

(assert (=> b!4484722 (=> (not res!1862658) (not e!2793148))))

(declare-fun allKeysSameHashInMap!1191 (ListLongMap!2807 Hashable!5479) Bool)

(assert (=> b!4484722 (= res!1862658 (allKeysSameHashInMap!1191 lm!1477 hashF!1107))))

(declare-fun tp_is_empty!27615 () Bool)

(declare-fun b!4484723 () Bool)

(declare-fun tp!1336938 () Bool)

(assert (=> b!4484723 (= e!2793144 (and tp_is_empty!27613 tp_is_empty!27615 tp!1336938))))

(declare-fun b!4484724 () Bool)

(declare-fun res!1862648 () Bool)

(assert (=> b!4484724 (=> res!1862648 e!2793147)))

(declare-fun newBucket!178 () List!50560)

(declare-fun noDuplicateKeys!1084 (List!50560) Bool)

(assert (=> b!4484724 (= res!1862648 (not (noDuplicateKeys!1084 newBucket!178)))))

(declare-fun b!4484725 () Bool)

(declare-fun tp!1336939 () Bool)

(assert (=> b!4484725 (= e!2793142 tp!1336939)))

(declare-fun b!4484726 () Bool)

(declare-fun res!1862657 () Bool)

(assert (=> b!4484726 (=> (not res!1862657) (not e!2793148))))

(declare-datatypes ((ListMap!3437 0))(
  ( (ListMap!3438 (toList!4176 List!50560)) )
))
(declare-fun contains!13054 (ListMap!3437 K!11850) Bool)

(declare-fun extractMap!1140 (List!50561) ListMap!3437)

(assert (=> b!4484726 (= res!1862657 (contains!13054 (extractMap!1140 (toList!4175 lm!1477)) key!3287))))

(declare-fun b!4484727 () Bool)

(declare-fun res!1862652 () Bool)

(assert (=> b!4484727 (=> res!1862652 e!2793146)))

(assert (=> b!4484727 (= res!1862652 (not (forall!10094 (toList!4175 lt!1670532) lambda!166185)))))

(declare-fun b!4484728 () Bool)

(declare-fun res!1862650 () Bool)

(assert (=> b!4484728 (=> (not res!1862650) (not e!2793141))))

(declare-fun allKeysSameHash!938 (List!50560 (_ BitVec 64) Hashable!5479) Bool)

(assert (=> b!4484728 (= res!1862650 (allKeysSameHash!938 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4484729 () Bool)

(assert (=> b!4484729 (= e!2793149 e!2793146)))

(declare-fun res!1862656 () Bool)

(assert (=> b!4484729 (=> res!1862656 e!2793146)))

(declare-fun lt!1670527 () List!50560)

(declare-datatypes ((Option!10993 0))(
  ( (None!10992) (Some!10992 (v!44396 tuple2!50770)) )
))
(declare-fun isDefined!8280 (Option!10993) Bool)

(declare-fun getPair!178 (List!50560 K!11850) Option!10993)

(assert (=> b!4484729 (= res!1862656 (not (isDefined!8280 (getPair!178 lt!1670527 key!3287))))))

(declare-fun lt!1670522 () Unit!90043)

(assert (=> b!4484729 (= lt!1670522 (forallContained!2355 (toList!4175 lt!1670532) lambda!166185 lt!1670531))))

(declare-fun contains!13055 (List!50561 tuple2!50772) Bool)

(assert (=> b!4484729 (contains!13055 (toList!4175 lt!1670532) lt!1670531)))

(assert (=> b!4484729 (= lt!1670531 (tuple2!50773 lt!1670521 lt!1670527))))

(declare-fun lt!1670526 () Unit!90043)

(declare-fun lemmaGetValueImpliesTupleContained!47 (ListLongMap!2807 (_ BitVec 64) List!50560) Unit!90043)

(assert (=> b!4484729 (= lt!1670526 (lemmaGetValueImpliesTupleContained!47 lt!1670532 lt!1670521 lt!1670527))))

(declare-fun apply!11821 (ListLongMap!2807 (_ BitVec 64)) List!50560)

(assert (=> b!4484729 (= lt!1670527 (apply!11821 lt!1670532 lt!1670521))))

(declare-fun b!4484730 () Bool)

(declare-fun res!1862651 () Bool)

(assert (=> b!4484730 (=> res!1862651 e!2793143)))

(declare-fun lt!1670518 () tuple2!50772)

(assert (=> b!4484730 (= res!1862651 (not (contains!13055 (t!357515 (toList!4175 lm!1477)) lt!1670518)))))

(declare-fun b!4484731 () Bool)

(declare-fun res!1862647 () Bool)

(assert (=> b!4484731 (=> res!1862647 e!2793143)))

(assert (=> b!4484731 (= res!1862647 (not (= (apply!11821 lt!1670532 hash!344) lt!1670519)))))

(declare-fun b!4484732 () Bool)

(declare-fun res!1862659 () Bool)

(assert (=> b!4484732 (=> res!1862659 e!2793149)))

(assert (=> b!4484732 (= res!1862659 (not (allKeysSameHashInMap!1191 lt!1670532 hashF!1107)))))

(declare-fun b!4484733 () Bool)

(assert (=> b!4484733 (= e!2793141 (not e!2793147))))

(declare-fun res!1862655 () Bool)

(assert (=> b!4484733 (=> res!1862655 e!2793147)))

(declare-fun removePairForKey!711 (List!50560 K!11850) List!50560)

(assert (=> b!4484733 (= res!1862655 (not (= newBucket!178 (removePairForKey!711 lt!1670519 key!3287))))))

(declare-fun lt!1670529 () Unit!90043)

(assert (=> b!4484733 (= lt!1670529 (forallContained!2355 (toList!4175 lm!1477) lambda!166185 lt!1670518))))

(assert (=> b!4484733 (contains!13055 (toList!4175 lm!1477) lt!1670518)))

(assert (=> b!4484733 (= lt!1670518 (tuple2!50773 hash!344 lt!1670519))))

(declare-fun lt!1670523 () Unit!90043)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!596 (List!50561 (_ BitVec 64) List!50560) Unit!90043)

(assert (=> b!4484733 (= lt!1670523 (lemmaGetValueByKeyImpliesContainsTuple!596 (toList!4175 lm!1477) hash!344 lt!1670519))))

(assert (=> b!4484733 (= lt!1670519 (apply!11821 lm!1477 hash!344))))

(assert (=> b!4484733 (contains!13053 lm!1477 lt!1670521)))

(declare-fun lt!1670524 () Unit!90043)

(declare-fun lemmaInGenMapThenLongMapContainsHash!158 (ListLongMap!2807 K!11850 Hashable!5479) Unit!90043)

(assert (=> b!4484733 (= lt!1670524 (lemmaInGenMapThenLongMapContainsHash!158 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4484734 () Bool)

(assert (=> b!4484734 (= e!2793147 e!2793143)))

(declare-fun res!1862646 () Bool)

(assert (=> b!4484734 (=> res!1862646 e!2793143)))

(assert (=> b!4484734 (= res!1862646 (not (contains!13053 lt!1670532 hash!344)))))

(declare-fun tail!7601 (ListLongMap!2807) ListLongMap!2807)

(assert (=> b!4484734 (= lt!1670532 (tail!7601 lm!1477))))

(assert (= (and start!441544 res!1862661) b!4484722))

(assert (= (and b!4484722 res!1862658) b!4484726))

(assert (= (and b!4484726 res!1862657) b!4484718))

(assert (= (and b!4484718 res!1862662) b!4484728))

(assert (= (and b!4484728 res!1862650) b!4484733))

(assert (= (and b!4484733 (not res!1862655)) b!4484724))

(assert (= (and b!4484724 (not res!1862648)) b!4484719))

(assert (= (and b!4484719 (not res!1862649)) b!4484734))

(assert (= (and b!4484734 (not res!1862646)) b!4484731))

(assert (= (and b!4484731 (not res!1862647)) b!4484730))

(assert (= (and b!4484730 (not res!1862651)) b!4484716))

(assert (= (and b!4484716 c!763859) b!4484721))

(assert (= (and b!4484716 (not c!763859)) b!4484714))

(assert (= (and b!4484716 (not res!1862660)) b!4484717))

(assert (= (and b!4484717 (not res!1862653)) b!4484732))

(assert (= (and b!4484732 (not res!1862659)) b!4484720))

(assert (= (and b!4484720 (not res!1862654)) b!4484729))

(assert (= (and b!4484729 (not res!1862656)) b!4484727))

(assert (= (and b!4484727 (not res!1862652)) b!4484715))

(assert (= start!441544 b!4484725))

(assert (= (and start!441544 ((_ is Cons!50436) newBucket!178)) b!4484723))

(declare-fun m!5205305 () Bool)

(assert (=> b!4484732 m!5205305))

(declare-fun m!5205307 () Bool)

(assert (=> b!4484727 m!5205307))

(declare-fun m!5205309 () Bool)

(assert (=> b!4484726 m!5205309))

(assert (=> b!4484726 m!5205309))

(declare-fun m!5205311 () Bool)

(assert (=> b!4484726 m!5205311))

(declare-fun m!5205313 () Bool)

(assert (=> start!441544 m!5205313))

(declare-fun m!5205315 () Bool)

(assert (=> start!441544 m!5205315))

(declare-fun m!5205317 () Bool)

(assert (=> b!4484720 m!5205317))

(declare-fun m!5205319 () Bool)

(assert (=> b!4484730 m!5205319))

(declare-fun m!5205321 () Bool)

(assert (=> b!4484724 m!5205321))

(declare-fun m!5205323 () Bool)

(assert (=> b!4484734 m!5205323))

(declare-fun m!5205325 () Bool)

(assert (=> b!4484734 m!5205325))

(declare-fun m!5205327 () Bool)

(assert (=> b!4484733 m!5205327))

(declare-fun m!5205329 () Bool)

(assert (=> b!4484733 m!5205329))

(declare-fun m!5205331 () Bool)

(assert (=> b!4484733 m!5205331))

(declare-fun m!5205333 () Bool)

(assert (=> b!4484733 m!5205333))

(declare-fun m!5205335 () Bool)

(assert (=> b!4484733 m!5205335))

(declare-fun m!5205337 () Bool)

(assert (=> b!4484733 m!5205337))

(declare-fun m!5205339 () Bool)

(assert (=> b!4484733 m!5205339))

(declare-fun m!5205341 () Bool)

(assert (=> b!4484722 m!5205341))

(declare-fun m!5205343 () Bool)

(assert (=> b!4484731 m!5205343))

(declare-fun m!5205345 () Bool)

(assert (=> b!4484728 m!5205345))

(declare-fun m!5205347 () Bool)

(assert (=> b!4484729 m!5205347))

(declare-fun m!5205349 () Bool)

(assert (=> b!4484729 m!5205349))

(declare-fun m!5205351 () Bool)

(assert (=> b!4484729 m!5205351))

(declare-fun m!5205353 () Bool)

(assert (=> b!4484729 m!5205353))

(declare-fun m!5205355 () Bool)

(assert (=> b!4484729 m!5205355))

(assert (=> b!4484729 m!5205349))

(declare-fun m!5205357 () Bool)

(assert (=> b!4484729 m!5205357))

(assert (=> b!4484715 m!5205351))

(declare-fun m!5205359 () Bool)

(assert (=> b!4484721 m!5205359))

(assert (=> b!4484717 m!5205307))

(declare-fun m!5205361 () Bool)

(assert (=> b!4484718 m!5205361))

(declare-fun m!5205363 () Bool)

(assert (=> b!4484716 m!5205363))

(check-sat (not b!4484725) (not b!4484733) (not b!4484730) (not b!4484724) (not b!4484723) (not b!4484727) tp_is_empty!27615 (not b!4484732) (not b!4484729) (not b!4484722) (not start!441544) (not b!4484717) (not b!4484728) tp_is_empty!27613 (not b!4484715) (not b!4484716) (not b!4484726) (not b!4484720) (not b!4484721) (not b!4484718) (not b!4484731) (not b!4484734))
(check-sat)
