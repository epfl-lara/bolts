; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!758062 () Bool)

(assert start!758062)

(declare-fun b!8049711 () Bool)

(declare-fun res!3182443 () Bool)

(declare-fun e!4743047 () Bool)

(assert (=> b!8049711 (=> (not res!3182443) (not e!4743047))))

(declare-datatypes ((K!22743 0))(
  ( (K!22744 (val!32867 Int)) )
))
(declare-fun key!6222 () K!22743)

(declare-datatypes ((V!22997 0))(
  ( (V!22998 (val!32868 Int)) )
))
(declare-fun value!3131 () V!22997)

(declare-datatypes ((tuple2!70832 0))(
  ( (tuple2!70833 (_1!38719 K!22743) (_2!38719 V!22997)) )
))
(declare-datatypes ((List!75625 0))(
  ( (Nil!75499) (Cons!75499 (h!81947 tuple2!70832) (t!391397 List!75625)) )
))
(declare-datatypes ((ListMap!7235 0))(
  ( (ListMap!7236 (toList!11892 List!75625)) )
))
(declare-fun acc!1298 () ListMap!7235)

(declare-fun apply!14405 (ListMap!7235 K!22743) V!22997)

(assert (=> b!8049711 (= res!3182443 (= (apply!14405 acc!1298 key!6222) value!3131))))

(declare-fun b!8049712 () Bool)

(declare-fun e!4743046 () Bool)

(declare-fun e!4743048 () Bool)

(assert (=> b!8049712 (= e!4743046 e!4743048)))

(declare-fun res!3182439 () Bool)

(assert (=> b!8049712 (=> (not res!3182439) (not e!4743048))))

(declare-fun e!4743044 () Bool)

(assert (=> b!8049712 (= res!3182439 e!4743044)))

(declare-fun res!3182435 () Bool)

(assert (=> b!8049712 (=> res!3182435 e!4743044)))

(assert (=> b!8049712 (= res!3182435 e!4743047)))

(declare-fun res!3182436 () Bool)

(assert (=> b!8049712 (=> (not res!3182436) (not e!4743047))))

(declare-fun lt!2723789 () Bool)

(assert (=> b!8049712 (= res!3182436 (not lt!2723789))))

(declare-fun lt!2723786 () Bool)

(assert (=> b!8049712 (= lt!2723789 (not lt!2723786))))

(declare-fun contains!21134 (ListMap!7235 K!22743) Bool)

(assert (=> b!8049712 (= lt!2723786 (contains!21134 acc!1298 key!6222))))

(declare-fun b!8049713 () Bool)

(declare-fun e!4743043 () Bool)

(declare-fun l!14636 () List!75625)

(declare-fun containsKey!4806 (List!75625 K!22743) Bool)

(assert (=> b!8049713 (= e!4743043 (containsKey!4806 (t!391397 l!14636) key!6222))))

(declare-fun b!8049714 () Bool)

(declare-fun res!3182433 () Bool)

(assert (=> b!8049714 (=> (not res!3182433) (not e!4743046))))

(declare-fun addToMapMapFromBucket!1959 (List!75625 ListMap!7235) ListMap!7235)

(assert (=> b!8049714 (= res!3182433 (contains!21134 (addToMapMapFromBucket!1959 l!14636 acc!1298) key!6222))))

(declare-fun b!8049715 () Bool)

(declare-fun res!3182431 () Bool)

(declare-fun e!4743051 () Bool)

(assert (=> b!8049715 (=> res!3182431 e!4743051)))

(declare-fun lt!2723784 () ListMap!7235)

(assert (=> b!8049715 (= res!3182431 (not (contains!21134 lt!2723784 key!6222)))))

(declare-fun b!8049716 () Bool)

(declare-fun e!4743049 () Bool)

(assert (=> b!8049716 (= e!4743044 e!4743049)))

(declare-fun res!3182440 () Bool)

(assert (=> b!8049716 (=> (not res!3182440) (not e!4743049))))

(assert (=> b!8049716 (= res!3182440 (containsKey!4806 l!14636 key!6222))))

(declare-fun b!8049717 () Bool)

(declare-fun e!4743042 () Bool)

(declare-fun e!4743041 () Bool)

(assert (=> b!8049717 (= e!4743042 e!4743041)))

(declare-fun res!3182444 () Bool)

(assert (=> b!8049717 (=> res!3182444 e!4743041)))

(assert (=> b!8049717 (= res!3182444 (not (containsKey!4806 (t!391397 l!14636) key!6222)))))

(declare-fun b!8049718 () Bool)

(declare-fun res!3182432 () Bool)

(assert (=> b!8049718 (=> res!3182432 e!4743051)))

(assert (=> b!8049718 (= res!3182432 e!4743042)))

(declare-fun res!3182430 () Bool)

(assert (=> b!8049718 (=> (not res!3182430) (not e!4743042))))

(assert (=> b!8049718 (= res!3182430 e!4743043)))

(declare-fun res!3182429 () Bool)

(assert (=> b!8049718 (=> res!3182429 e!4743043)))

(declare-fun lt!2723788 () V!22997)

(assert (=> b!8049718 (= res!3182429 (not (= lt!2723788 value!3131)))))

(declare-fun res!3182442 () Bool)

(assert (=> start!758062 (=> (not res!3182442) (not e!4743046))))

(declare-fun noDuplicateKeys!2678 (List!75625) Bool)

(assert (=> start!758062 (= res!3182442 (noDuplicateKeys!2678 l!14636))))

(assert (=> start!758062 e!4743046))

(declare-fun e!4743050 () Bool)

(assert (=> start!758062 e!4743050))

(declare-fun e!4743045 () Bool)

(declare-fun inv!97232 (ListMap!7235) Bool)

(assert (=> start!758062 (and (inv!97232 acc!1298) e!4743045)))

(declare-fun tp_is_empty!54787 () Bool)

(assert (=> start!758062 tp_is_empty!54787))

(declare-fun tp_is_empty!54789 () Bool)

(assert (=> start!758062 tp_is_empty!54789))

(declare-fun b!8049719 () Bool)

(declare-fun res!3182441 () Bool)

(assert (=> b!8049719 (=> (not res!3182441) (not e!4743049))))

(declare-fun contains!21135 (List!75625 tuple2!70832) Bool)

(assert (=> b!8049719 (= res!3182441 (contains!21135 l!14636 (tuple2!70833 key!6222 value!3131)))))

(declare-fun b!8049720 () Bool)

(declare-fun res!3182438 () Bool)

(assert (=> b!8049720 (=> (not res!3182438) (not e!4743048))))

(get-info :version)

(assert (=> b!8049720 (= res!3182438 (not ((_ is Nil!75499) l!14636)))))

(declare-fun b!8049721 () Bool)

(assert (=> b!8049721 (= e!4743051 true)))

(assert (=> b!8049721 (= (apply!14405 lt!2723784 key!6222) value!3131)))

(declare-datatypes ((Unit!171280 0))(
  ( (Unit!171281) )
))
(declare-fun lt!2723785 () Unit!171280)

(declare-fun lt!2723782 () ListMap!7235)

(declare-fun lemmaAddToMapFromBucketMaintainsMapping!16 (List!75625 ListMap!7235 K!22743 V!22997) Unit!171280)

(assert (=> b!8049721 (= lt!2723785 (lemmaAddToMapFromBucketMaintainsMapping!16 (t!391397 l!14636) lt!2723782 key!6222 value!3131))))

(declare-fun b!8049722 () Bool)

(declare-fun e!4743052 () Bool)

(assert (=> b!8049722 (= e!4743048 e!4743052)))

(declare-fun res!3182437 () Bool)

(assert (=> b!8049722 (=> (not res!3182437) (not e!4743052))))

(assert (=> b!8049722 (= res!3182437 (and (not (= (_1!38719 (h!81947 l!14636)) key!6222)) (not lt!2723789)))))

(assert (=> b!8049722 (= lt!2723784 (addToMapMapFromBucket!1959 (t!391397 l!14636) lt!2723782))))

(declare-fun +!2644 (ListMap!7235 tuple2!70832) ListMap!7235)

(assert (=> b!8049722 (= lt!2723782 (+!2644 acc!1298 (h!81947 l!14636)))))

(declare-fun b!8049723 () Bool)

(assert (=> b!8049723 (= e!4743049 (not lt!2723786))))

(declare-fun b!8049724 () Bool)

(assert (=> b!8049724 (= e!4743052 (not e!4743051))))

(declare-fun res!3182434 () Bool)

(assert (=> b!8049724 (=> res!3182434 e!4743051)))

(assert (=> b!8049724 (= res!3182434 (not (noDuplicateKeys!2678 (t!391397 l!14636))))))

(declare-fun lt!2723790 () tuple2!70832)

(assert (=> b!8049724 (not (contains!21135 l!14636 lt!2723790))))

(assert (=> b!8049724 (= lt!2723790 (tuple2!70833 key!6222 value!3131))))

(declare-fun lt!2723787 () Unit!171280)

(declare-fun lemmaNotContainsKeyThenCannotContainPair!12 (List!75625 K!22743 V!22997) Unit!171280)

(assert (=> b!8049724 (= lt!2723787 (lemmaNotContainsKeyThenCannotContainPair!12 l!14636 key!6222 value!3131))))

(assert (=> b!8049724 (= lt!2723788 (apply!14405 acc!1298 key!6222))))

(assert (=> b!8049724 (= lt!2723788 (apply!14405 lt!2723782 key!6222))))

(declare-fun lt!2723780 () Unit!171280)

(declare-fun addApplyDifferent!13 (ListMap!7235 K!22743 V!22997 K!22743) Unit!171280)

(assert (=> b!8049724 (= lt!2723780 (addApplyDifferent!13 acc!1298 (_1!38719 (h!81947 l!14636)) (_2!38719 (h!81947 l!14636)) key!6222))))

(assert (=> b!8049724 (contains!21134 lt!2723782 key!6222)))

(declare-fun lt!2723783 () Unit!171280)

(declare-fun addStillContains!37 (ListMap!7235 K!22743 V!22997 K!22743) Unit!171280)

(assert (=> b!8049724 (= lt!2723783 (addStillContains!37 acc!1298 (_1!38719 (h!81947 l!14636)) (_2!38719 (h!81947 l!14636)) key!6222))))

(declare-fun b!8049725 () Bool)

(declare-fun tp!2413493 () Bool)

(assert (=> b!8049725 (= e!4743045 tp!2413493)))

(declare-fun b!8049726 () Bool)

(assert (=> b!8049726 (= e!4743041 true)))

(declare-fun lt!2723781 () Bool)

(assert (=> b!8049726 (= lt!2723781 (contains!21135 (t!391397 l!14636) lt!2723790))))

(declare-fun tp!2413492 () Bool)

(declare-fun b!8049727 () Bool)

(assert (=> b!8049727 (= e!4743050 (and tp_is_empty!54787 tp_is_empty!54789 tp!2413492))))

(declare-fun b!8049728 () Bool)

(assert (=> b!8049728 (= e!4743047 (not (containsKey!4806 l!14636 key!6222)))))

(assert (= (and start!758062 res!3182442) b!8049714))

(assert (= (and b!8049714 res!3182433) b!8049712))

(assert (= (and b!8049712 res!3182436) b!8049711))

(assert (= (and b!8049711 res!3182443) b!8049728))

(assert (= (and b!8049712 (not res!3182435)) b!8049716))

(assert (= (and b!8049716 res!3182440) b!8049719))

(assert (= (and b!8049719 res!3182441) b!8049723))

(assert (= (and b!8049712 res!3182439) b!8049720))

(assert (= (and b!8049720 res!3182438) b!8049722))

(assert (= (and b!8049722 res!3182437) b!8049724))

(assert (= (and b!8049724 (not res!3182434)) b!8049715))

(assert (= (and b!8049715 (not res!3182431)) b!8049718))

(assert (= (and b!8049718 (not res!3182429)) b!8049713))

(assert (= (and b!8049718 res!3182430) b!8049717))

(assert (= (and b!8049717 (not res!3182444)) b!8049726))

(assert (= (and b!8049718 (not res!3182432)) b!8049721))

(assert (= (and start!758062 ((_ is Cons!75499) l!14636)) b!8049727))

(assert (= start!758062 b!8049725))

(declare-fun m!8400664 () Bool)

(assert (=> b!8049714 m!8400664))

(assert (=> b!8049714 m!8400664))

(declare-fun m!8400666 () Bool)

(assert (=> b!8049714 m!8400666))

(declare-fun m!8400668 () Bool)

(assert (=> b!8049715 m!8400668))

(declare-fun m!8400670 () Bool)

(assert (=> start!758062 m!8400670))

(declare-fun m!8400672 () Bool)

(assert (=> start!758062 m!8400672))

(declare-fun m!8400674 () Bool)

(assert (=> b!8049722 m!8400674))

(declare-fun m!8400676 () Bool)

(assert (=> b!8049722 m!8400676))

(declare-fun m!8400678 () Bool)

(assert (=> b!8049721 m!8400678))

(declare-fun m!8400680 () Bool)

(assert (=> b!8049721 m!8400680))

(declare-fun m!8400682 () Bool)

(assert (=> b!8049713 m!8400682))

(declare-fun m!8400684 () Bool)

(assert (=> b!8049726 m!8400684))

(declare-fun m!8400686 () Bool)

(assert (=> b!8049711 m!8400686))

(declare-fun m!8400688 () Bool)

(assert (=> b!8049728 m!8400688))

(declare-fun m!8400690 () Bool)

(assert (=> b!8049724 m!8400690))

(declare-fun m!8400692 () Bool)

(assert (=> b!8049724 m!8400692))

(declare-fun m!8400694 () Bool)

(assert (=> b!8049724 m!8400694))

(declare-fun m!8400696 () Bool)

(assert (=> b!8049724 m!8400696))

(assert (=> b!8049724 m!8400686))

(declare-fun m!8400698 () Bool)

(assert (=> b!8049724 m!8400698))

(declare-fun m!8400700 () Bool)

(assert (=> b!8049724 m!8400700))

(declare-fun m!8400702 () Bool)

(assert (=> b!8049724 m!8400702))

(assert (=> b!8049716 m!8400688))

(declare-fun m!8400704 () Bool)

(assert (=> b!8049712 m!8400704))

(declare-fun m!8400706 () Bool)

(assert (=> b!8049719 m!8400706))

(assert (=> b!8049717 m!8400682))

(check-sat (not b!8049713) (not b!8049722) (not b!8049714) (not start!758062) (not b!8049726) (not b!8049715) (not b!8049719) tp_is_empty!54789 (not b!8049721) (not b!8049728) (not b!8049724) (not b!8049712) (not b!8049711) (not b!8049716) tp_is_empty!54787 (not b!8049717) (not b!8049725) (not b!8049727))
(check-sat)
