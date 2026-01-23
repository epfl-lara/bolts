; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!436624 () Bool)

(assert start!436624)

(declare-fun b!4455629 () Bool)

(declare-fun e!2774525 () Bool)

(declare-datatypes ((K!11355 0))(
  ( (K!11356 (val!17355 Int)) )
))
(declare-datatypes ((V!11601 0))(
  ( (V!11602 (val!17356 Int)) )
))
(declare-datatypes ((tuple2!50030 0))(
  ( (tuple2!50031 (_1!28309 K!11355) (_2!28309 V!11601)) )
))
(declare-datatypes ((List!50103 0))(
  ( (Nil!49979) (Cons!49979 (h!55724 tuple2!50030) (t!357053 List!50103)) )
))
(declare-datatypes ((tuple2!50032 0))(
  ( (tuple2!50033 (_1!28310 (_ BitVec 64)) (_2!28310 List!50103)) )
))
(declare-datatypes ((List!50104 0))(
  ( (Nil!49980) (Cons!49980 (h!55725 tuple2!50032) (t!357054 List!50104)) )
))
(declare-datatypes ((ListLongMap!2463 0))(
  ( (ListLongMap!2464 (toList!3807 List!50104)) )
))
(declare-fun lm!1853 () ListLongMap!2463)

(declare-fun lambda!160155 () Int)

(declare-fun forall!9820 (List!50104 Int) Bool)

(assert (=> b!4455629 (= e!2774525 (not (forall!9820 (toList!3807 lm!1853) lambda!160155)))))

(declare-fun b!4455630 () Bool)

(declare-fun res!1846969 () Bool)

(assert (=> b!4455630 (=> (not res!1846969) (not e!2774525))))

(assert (=> b!4455630 (= res!1846969 (forall!9820 (toList!3807 lm!1853) lambda!160155))))

(declare-fun b!4455631 () Bool)

(declare-fun e!2774527 () Bool)

(declare-fun tp_is_empty!26823 () Bool)

(declare-fun tp!1334910 () Bool)

(declare-fun tp_is_empty!26821 () Bool)

(assert (=> b!4455631 (= e!2774527 (and tp_is_empty!26821 tp_is_empty!26823 tp!1334910))))

(declare-fun b!4455632 () Bool)

(declare-fun res!1846973 () Bool)

(assert (=> b!4455632 (=> (not res!1846973) (not e!2774525))))

(declare-fun key!4412 () K!11355)

(declare-datatypes ((ListMap!3045 0))(
  ( (ListMap!3046 (toList!3808 List!50103)) )
))
(declare-fun contains!12532 (ListMap!3045 K!11355) Bool)

(declare-fun extractMap!968 (List!50104) ListMap!3045)

(assert (=> b!4455632 (= res!1846973 (contains!12532 (extractMap!968 (toList!3807 lm!1853)) key!4412))))

(declare-fun b!4455633 () Bool)

(declare-fun res!1846975 () Bool)

(assert (=> b!4455633 (=> (not res!1846975) (not e!2774525))))

(declare-fun l!12858 () List!50103)

(declare-fun noDuplicateKeys!900 (List!50103) Bool)

(assert (=> b!4455633 (= res!1846975 (noDuplicateKeys!900 (t!357053 l!12858)))))

(declare-fun b!4455634 () Bool)

(declare-fun res!1846971 () Bool)

(assert (=> b!4455634 (=> (not res!1846971) (not e!2774525))))

(assert (=> b!4455634 (= res!1846971 (noDuplicateKeys!900 l!12858))))

(declare-fun b!4455635 () Bool)

(declare-fun e!2774526 () Bool)

(declare-fun tp!1334911 () Bool)

(assert (=> b!4455635 (= e!2774526 tp!1334911)))

(declare-fun res!1846972 () Bool)

(assert (=> start!436624 (=> (not res!1846972) (not e!2774525))))

(assert (=> start!436624 (= res!1846972 (forall!9820 (toList!3807 lm!1853) lambda!160155))))

(assert (=> start!436624 e!2774525))

(declare-fun inv!65541 (ListLongMap!2463) Bool)

(assert (=> start!436624 (and (inv!65541 lm!1853) e!2774526)))

(assert (=> start!436624 true))

(assert (=> start!436624 e!2774527))

(assert (=> start!436624 tp_is_empty!26821))

(declare-fun b!4455636 () Bool)

(declare-fun res!1846970 () Bool)

(assert (=> b!4455636 (=> (not res!1846970) (not e!2774525))))

(declare-datatypes ((Hashable!5307 0))(
  ( (HashableExt!5306 (__x!31010 Int)) )
))
(declare-fun hashF!1313 () Hashable!5307)

(declare-fun allKeysSameHashInMap!1019 (ListLongMap!2463 Hashable!5307) Bool)

(assert (=> b!4455636 (= res!1846970 (allKeysSameHashInMap!1019 lm!1853 hashF!1313))))

(declare-fun b!4455637 () Bool)

(declare-fun res!1846974 () Bool)

(assert (=> b!4455637 (=> (not res!1846974) (not e!2774525))))

(get-info :version)

(assert (=> b!4455637 (= res!1846974 ((_ is Cons!49979) l!12858))))

(assert (= (and start!436624 res!1846972) b!4455636))

(assert (= (and b!4455636 res!1846970) b!4455634))

(assert (= (and b!4455634 res!1846971) b!4455632))

(assert (= (and b!4455632 res!1846973) b!4455637))

(assert (= (and b!4455637 res!1846974) b!4455630))

(assert (= (and b!4455630 res!1846969) b!4455633))

(assert (= (and b!4455633 res!1846975) b!4455629))

(assert (= start!436624 b!4455635))

(assert (= (and start!436624 ((_ is Cons!49979) l!12858)) b!4455631))

(declare-fun m!5157185 () Bool)

(assert (=> b!4455629 m!5157185))

(assert (=> b!4455630 m!5157185))

(declare-fun m!5157187 () Bool)

(assert (=> b!4455633 m!5157187))

(declare-fun m!5157189 () Bool)

(assert (=> b!4455632 m!5157189))

(assert (=> b!4455632 m!5157189))

(declare-fun m!5157191 () Bool)

(assert (=> b!4455632 m!5157191))

(declare-fun m!5157193 () Bool)

(assert (=> b!4455634 m!5157193))

(declare-fun m!5157195 () Bool)

(assert (=> b!4455636 m!5157195))

(assert (=> start!436624 m!5157185))

(declare-fun m!5157197 () Bool)

(assert (=> start!436624 m!5157197))

(check-sat (not b!4455631) (not b!4455633) tp_is_empty!26823 (not b!4455634) (not b!4455629) (not start!436624) tp_is_empty!26821 (not b!4455632) (not b!4455636) (not b!4455630) (not b!4455635))
(check-sat)
