; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!758058 () Bool)

(assert start!758058)

(declare-fun b!8049604 () Bool)

(declare-fun res!3182334 () Bool)

(declare-fun e!4742974 () Bool)

(assert (=> b!8049604 (=> (not res!3182334) (not e!4742974))))

(declare-datatypes ((K!22738 0))(
  ( (K!22739 (val!32863 Int)) )
))
(declare-fun key!6222 () K!22738)

(declare-datatypes ((V!22992 0))(
  ( (V!22993 (val!32864 Int)) )
))
(declare-datatypes ((tuple2!70828 0))(
  ( (tuple2!70829 (_1!38717 K!22738) (_2!38717 V!22992)) )
))
(declare-datatypes ((List!75623 0))(
  ( (Nil!75497) (Cons!75497 (h!81945 tuple2!70828) (t!391395 List!75623)) )
))
(declare-fun l!14636 () List!75623)

(declare-datatypes ((ListMap!7231 0))(
  ( (ListMap!7232 (toList!11890 List!75623)) )
))
(declare-fun acc!1298 () ListMap!7231)

(declare-fun contains!21130 (ListMap!7231 K!22738) Bool)

(declare-fun addToMapMapFromBucket!1957 (List!75623 ListMap!7231) ListMap!7231)

(assert (=> b!8049604 (= res!3182334 (contains!21130 (addToMapMapFromBucket!1957 l!14636 acc!1298) key!6222))))

(declare-fun b!8049605 () Bool)

(declare-fun e!4742980 () Bool)

(assert (=> b!8049605 (= e!4742980 false)))

(declare-fun lt!2723717 () Bool)

(declare-fun lt!2723723 () tuple2!70828)

(declare-fun contains!21131 (List!75623 tuple2!70828) Bool)

(assert (=> b!8049605 (= lt!2723717 (contains!21131 (t!391395 l!14636) lt!2723723))))

(declare-fun b!8049606 () Bool)

(declare-fun e!4742971 () Bool)

(declare-fun tp!2413481 () Bool)

(assert (=> b!8049606 (= e!4742971 tp!2413481)))

(declare-fun b!8049607 () Bool)

(declare-fun e!4742978 () Bool)

(declare-fun containsKey!4804 (List!75623 K!22738) Bool)

(assert (=> b!8049607 (= e!4742978 (not (containsKey!4804 (t!391395 l!14636) key!6222)))))

(declare-fun b!8049608 () Bool)

(declare-fun res!3182336 () Bool)

(declare-fun e!4742972 () Bool)

(assert (=> b!8049608 (=> res!3182336 e!4742972)))

(declare-fun lt!2723721 () ListMap!7231)

(assert (=> b!8049608 (= res!3182336 (not (contains!21130 lt!2723721 key!6222)))))

(declare-fun res!3182335 () Bool)

(assert (=> start!758058 (=> (not res!3182335) (not e!4742974))))

(declare-fun noDuplicateKeys!2676 (List!75623) Bool)

(assert (=> start!758058 (= res!3182335 (noDuplicateKeys!2676 l!14636))))

(assert (=> start!758058 e!4742974))

(declare-fun e!4742970 () Bool)

(assert (=> start!758058 e!4742970))

(declare-fun inv!97227 (ListMap!7231) Bool)

(assert (=> start!758058 (and (inv!97227 acc!1298) e!4742971)))

(declare-fun tp_is_empty!54779 () Bool)

(assert (=> start!758058 tp_is_empty!54779))

(declare-fun tp_is_empty!54781 () Bool)

(assert (=> start!758058 tp_is_empty!54781))

(declare-fun b!8049609 () Bool)

(declare-fun e!4742977 () Bool)

(declare-fun lt!2723720 () Bool)

(assert (=> b!8049609 (= e!4742977 (not lt!2723720))))

(declare-fun b!8049610 () Bool)

(declare-fun e!4742969 () Bool)

(assert (=> b!8049610 (= e!4742974 e!4742969)))

(declare-fun res!3182344 () Bool)

(assert (=> b!8049610 (=> (not res!3182344) (not e!4742969))))

(declare-fun e!4742973 () Bool)

(assert (=> b!8049610 (= res!3182344 e!4742973)))

(declare-fun res!3182337 () Bool)

(assert (=> b!8049610 (=> res!3182337 e!4742973)))

(declare-fun e!4742975 () Bool)

(assert (=> b!8049610 (= res!3182337 e!4742975)))

(declare-fun res!3182338 () Bool)

(assert (=> b!8049610 (=> (not res!3182338) (not e!4742975))))

(declare-fun lt!2723714 () Bool)

(assert (=> b!8049610 (= res!3182338 (not lt!2723714))))

(assert (=> b!8049610 (= lt!2723714 (not lt!2723720))))

(assert (=> b!8049610 (= lt!2723720 (contains!21130 acc!1298 key!6222))))

(declare-fun b!8049611 () Bool)

(assert (=> b!8049611 (= e!4742972 true)))

(declare-fun lt!2723716 () Bool)

(declare-fun e!4742979 () Bool)

(assert (=> b!8049611 (= lt!2723716 e!4742979)))

(declare-fun res!3182347 () Bool)

(assert (=> b!8049611 (=> res!3182347 e!4742979)))

(assert (=> b!8049611 (= res!3182347 e!4742978)))

(declare-fun res!3182341 () Bool)

(assert (=> b!8049611 (=> (not res!3182341) (not e!4742978))))

(declare-fun lt!2723718 () V!22992)

(declare-fun value!3131 () V!22992)

(assert (=> b!8049611 (= res!3182341 (= lt!2723718 value!3131))))

(declare-fun b!8049612 () Bool)

(declare-fun res!3182342 () Bool)

(assert (=> b!8049612 (=> (not res!3182342) (not e!4742977))))

(assert (=> b!8049612 (= res!3182342 (contains!21131 l!14636 (tuple2!70829 key!6222 value!3131)))))

(declare-fun b!8049613 () Bool)

(assert (=> b!8049613 (= e!4742975 (not (containsKey!4804 l!14636 key!6222)))))

(declare-fun b!8049614 () Bool)

(declare-fun tp!2413480 () Bool)

(assert (=> b!8049614 (= e!4742970 (and tp_is_empty!54779 tp_is_empty!54781 tp!2413480))))

(declare-fun b!8049615 () Bool)

(declare-fun e!4742976 () Bool)

(assert (=> b!8049615 (= e!4742969 e!4742976)))

(declare-fun res!3182343 () Bool)

(assert (=> b!8049615 (=> (not res!3182343) (not e!4742976))))

(assert (=> b!8049615 (= res!3182343 (and (not (= (_1!38717 (h!81945 l!14636)) key!6222)) (not lt!2723714)))))

(declare-fun lt!2723722 () ListMap!7231)

(assert (=> b!8049615 (= lt!2723721 (addToMapMapFromBucket!1957 (t!391395 l!14636) lt!2723722))))

(declare-fun +!2642 (ListMap!7231 tuple2!70828) ListMap!7231)

(assert (=> b!8049615 (= lt!2723722 (+!2642 acc!1298 (h!81945 l!14636)))))

(declare-fun b!8049616 () Bool)

(assert (=> b!8049616 (= e!4742979 e!4742980)))

(declare-fun res!3182339 () Bool)

(assert (=> b!8049616 (=> (not res!3182339) (not e!4742980))))

(assert (=> b!8049616 (= res!3182339 (containsKey!4804 (t!391395 l!14636) key!6222))))

(declare-fun b!8049617 () Bool)

(assert (=> b!8049617 (= e!4742973 e!4742977)))

(declare-fun res!3182348 () Bool)

(assert (=> b!8049617 (=> (not res!3182348) (not e!4742977))))

(assert (=> b!8049617 (= res!3182348 (containsKey!4804 l!14636 key!6222))))

(declare-fun b!8049618 () Bool)

(declare-fun res!3182340 () Bool)

(assert (=> b!8049618 (=> (not res!3182340) (not e!4742975))))

(declare-fun apply!14403 (ListMap!7231 K!22738) V!22992)

(assert (=> b!8049618 (= res!3182340 (= (apply!14403 acc!1298 key!6222) value!3131))))

(declare-fun b!8049619 () Bool)

(declare-fun res!3182346 () Bool)

(assert (=> b!8049619 (=> (not res!3182346) (not e!4742969))))

(get-info :version)

(assert (=> b!8049619 (= res!3182346 (not ((_ is Nil!75497) l!14636)))))

(declare-fun b!8049620 () Bool)

(assert (=> b!8049620 (= e!4742976 (not e!4742972))))

(declare-fun res!3182345 () Bool)

(assert (=> b!8049620 (=> res!3182345 e!4742972)))

(assert (=> b!8049620 (= res!3182345 (not (noDuplicateKeys!2676 (t!391395 l!14636))))))

(assert (=> b!8049620 (not (contains!21131 l!14636 lt!2723723))))

(assert (=> b!8049620 (= lt!2723723 (tuple2!70829 key!6222 value!3131))))

(declare-datatypes ((Unit!171276 0))(
  ( (Unit!171277) )
))
(declare-fun lt!2723724 () Unit!171276)

(declare-fun lemmaNotContainsKeyThenCannotContainPair!10 (List!75623 K!22738 V!22992) Unit!171276)

(assert (=> b!8049620 (= lt!2723724 (lemmaNotContainsKeyThenCannotContainPair!10 l!14636 key!6222 value!3131))))

(assert (=> b!8049620 (= lt!2723718 (apply!14403 acc!1298 key!6222))))

(assert (=> b!8049620 (= lt!2723718 (apply!14403 lt!2723722 key!6222))))

(declare-fun lt!2723719 () Unit!171276)

(declare-fun addApplyDifferent!11 (ListMap!7231 K!22738 V!22992 K!22738) Unit!171276)

(assert (=> b!8049620 (= lt!2723719 (addApplyDifferent!11 acc!1298 (_1!38717 (h!81945 l!14636)) (_2!38717 (h!81945 l!14636)) key!6222))))

(assert (=> b!8049620 (contains!21130 lt!2723722 key!6222)))

(declare-fun lt!2723715 () Unit!171276)

(declare-fun addStillContains!35 (ListMap!7231 K!22738 V!22992 K!22738) Unit!171276)

(assert (=> b!8049620 (= lt!2723715 (addStillContains!35 acc!1298 (_1!38717 (h!81945 l!14636)) (_2!38717 (h!81945 l!14636)) key!6222))))

(assert (= (and start!758058 res!3182335) b!8049604))

(assert (= (and b!8049604 res!3182334) b!8049610))

(assert (= (and b!8049610 res!3182338) b!8049618))

(assert (= (and b!8049618 res!3182340) b!8049613))

(assert (= (and b!8049610 (not res!3182337)) b!8049617))

(assert (= (and b!8049617 res!3182348) b!8049612))

(assert (= (and b!8049612 res!3182342) b!8049609))

(assert (= (and b!8049610 res!3182344) b!8049619))

(assert (= (and b!8049619 res!3182346) b!8049615))

(assert (= (and b!8049615 res!3182343) b!8049620))

(assert (= (and b!8049620 (not res!3182345)) b!8049608))

(assert (= (and b!8049608 (not res!3182336)) b!8049611))

(assert (= (and b!8049611 res!3182341) b!8049607))

(assert (= (and b!8049611 (not res!3182347)) b!8049616))

(assert (= (and b!8049616 res!3182339) b!8049605))

(assert (= (and start!758058 ((_ is Cons!75497) l!14636)) b!8049614))

(assert (= start!758058 b!8049606))

(declare-fun m!8400580 () Bool)

(assert (=> b!8049620 m!8400580))

(declare-fun m!8400582 () Bool)

(assert (=> b!8049620 m!8400582))

(declare-fun m!8400584 () Bool)

(assert (=> b!8049620 m!8400584))

(declare-fun m!8400586 () Bool)

(assert (=> b!8049620 m!8400586))

(declare-fun m!8400588 () Bool)

(assert (=> b!8049620 m!8400588))

(declare-fun m!8400590 () Bool)

(assert (=> b!8049620 m!8400590))

(declare-fun m!8400592 () Bool)

(assert (=> b!8049620 m!8400592))

(declare-fun m!8400594 () Bool)

(assert (=> b!8049620 m!8400594))

(declare-fun m!8400596 () Bool)

(assert (=> b!8049616 m!8400596))

(assert (=> b!8049607 m!8400596))

(declare-fun m!8400598 () Bool)

(assert (=> b!8049608 m!8400598))

(declare-fun m!8400600 () Bool)

(assert (=> b!8049613 m!8400600))

(declare-fun m!8400602 () Bool)

(assert (=> b!8049612 m!8400602))

(assert (=> b!8049618 m!8400586))

(declare-fun m!8400604 () Bool)

(assert (=> b!8049615 m!8400604))

(declare-fun m!8400606 () Bool)

(assert (=> b!8049615 m!8400606))

(declare-fun m!8400608 () Bool)

(assert (=> b!8049604 m!8400608))

(assert (=> b!8049604 m!8400608))

(declare-fun m!8400610 () Bool)

(assert (=> b!8049604 m!8400610))

(declare-fun m!8400612 () Bool)

(assert (=> b!8049610 m!8400612))

(assert (=> b!8049617 m!8400600))

(declare-fun m!8400614 () Bool)

(assert (=> b!8049605 m!8400614))

(declare-fun m!8400616 () Bool)

(assert (=> start!758058 m!8400616))

(declare-fun m!8400618 () Bool)

(assert (=> start!758058 m!8400618))

(check-sat (not b!8049620) tp_is_empty!54779 (not b!8049614) (not b!8049606) (not b!8049608) (not b!8049613) (not b!8049616) tp_is_empty!54781 (not start!758058) (not b!8049615) (not b!8049607) (not b!8049605) (not b!8049610) (not b!8049617) (not b!8049604) (not b!8049612) (not b!8049618))
(check-sat)
