; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!758074 () Bool)

(assert start!758074)

(declare-fun b!8049971 () Bool)

(declare-fun e!4743205 () Bool)

(declare-fun e!4743206 () Bool)

(assert (=> b!8049971 (= e!4743205 e!4743206)))

(declare-fun res!3182654 () Bool)

(assert (=> b!8049971 (=> (not res!3182654) (not e!4743206))))

(declare-fun e!4743208 () Bool)

(assert (=> b!8049971 (= res!3182654 e!4743208)))

(declare-fun res!3182657 () Bool)

(assert (=> b!8049971 (=> res!3182657 e!4743208)))

(declare-fun e!4743207 () Bool)

(assert (=> b!8049971 (= res!3182657 e!4743207)))

(declare-fun res!3182665 () Bool)

(assert (=> b!8049971 (=> (not res!3182665) (not e!4743207))))

(declare-fun lt!2723866 () Bool)

(assert (=> b!8049971 (= res!3182665 lt!2723866)))

(declare-datatypes ((K!22758 0))(
  ( (K!22759 (val!32879 Int)) )
))
(declare-datatypes ((V!23012 0))(
  ( (V!23013 (val!32880 Int)) )
))
(declare-datatypes ((tuple2!70844 0))(
  ( (tuple2!70845 (_1!38725 K!22758) (_2!38725 V!23012)) )
))
(declare-datatypes ((List!75631 0))(
  ( (Nil!75505) (Cons!75505 (h!81953 tuple2!70844) (t!391403 List!75631)) )
))
(declare-datatypes ((ListMap!7247 0))(
  ( (ListMap!7248 (toList!11898 List!75631)) )
))
(declare-fun acc!1298 () ListMap!7247)

(declare-fun key!6222 () K!22758)

(declare-fun contains!21146 (ListMap!7247 K!22758) Bool)

(assert (=> b!8049971 (= lt!2723866 (contains!21146 acc!1298 key!6222))))

(declare-fun b!8049972 () Bool)

(declare-fun res!3182662 () Bool)

(declare-fun e!4743204 () Bool)

(assert (=> b!8049972 (=> res!3182662 e!4743204)))

(declare-fun l!14636 () List!75631)

(declare-fun containsKey!4812 (List!75631 K!22758) Bool)

(assert (=> b!8049972 (= res!3182662 (not (containsKey!4812 (t!391403 l!14636) key!6222)))))

(declare-fun b!8049973 () Bool)

(declare-fun e!4743200 () Bool)

(assert (=> b!8049973 (= e!4743200 (not e!4743204))))

(declare-fun res!3182661 () Bool)

(assert (=> b!8049973 (=> res!3182661 e!4743204)))

(declare-fun noDuplicateKeys!2684 (List!75631) Bool)

(assert (=> b!8049973 (= res!3182661 (not (noDuplicateKeys!2684 (t!391403 l!14636))))))

(declare-fun lt!2723867 () ListMap!7247)

(assert (=> b!8049973 (not (contains!21146 lt!2723867 key!6222))))

(declare-datatypes ((Unit!171288 0))(
  ( (Unit!171289) )
))
(declare-fun lt!2723868 () Unit!171288)

(declare-fun addStillNotContains!11 (ListMap!7247 K!22758 V!23012 K!22758) Unit!171288)

(assert (=> b!8049973 (= lt!2723868 (addStillNotContains!11 acc!1298 (_1!38725 (h!81953 l!14636)) (_2!38725 (h!81953 l!14636)) key!6222))))

(declare-fun b!8049974 () Bool)

(assert (=> b!8049974 (= e!4743204 true)))

(declare-fun lt!2723864 () ListMap!7247)

(declare-fun value!3131 () V!23012)

(declare-fun apply!14411 (ListMap!7247 K!22758) V!23012)

(assert (=> b!8049974 (= (apply!14411 lt!2723864 key!6222) value!3131)))

(declare-fun lt!2723865 () Unit!171288)

(declare-fun lemmaAddToMapFromBucketMaintainsMapping!18 (List!75631 ListMap!7247 K!22758 V!23012) Unit!171288)

(assert (=> b!8049974 (= lt!2723865 (lemmaAddToMapFromBucketMaintainsMapping!18 (t!391403 l!14636) lt!2723867 key!6222 value!3131))))

(declare-fun b!8049975 () Bool)

(assert (=> b!8049975 (= e!4743207 (not (containsKey!4812 l!14636 key!6222)))))

(declare-fun b!8049976 () Bool)

(declare-fun e!4743201 () Bool)

(declare-fun tp!2413529 () Bool)

(assert (=> b!8049976 (= e!4743201 tp!2413529)))

(declare-fun tp_is_empty!54813 () Bool)

(declare-fun tp_is_empty!54811 () Bool)

(declare-fun e!4743203 () Bool)

(declare-fun b!8049977 () Bool)

(declare-fun tp!2413528 () Bool)

(assert (=> b!8049977 (= e!4743203 (and tp_is_empty!54811 tp_is_empty!54813 tp!2413528))))

(declare-fun b!8049978 () Bool)

(declare-fun res!3182660 () Bool)

(assert (=> b!8049978 (=> (not res!3182660) (not e!4743206))))

(get-info :version)

(assert (=> b!8049978 (= res!3182660 (not ((_ is Nil!75505) l!14636)))))

(declare-fun b!8049979 () Bool)

(declare-fun e!4743202 () Bool)

(assert (=> b!8049979 (= e!4743208 e!4743202)))

(declare-fun res!3182666 () Bool)

(assert (=> b!8049979 (=> (not res!3182666) (not e!4743202))))

(assert (=> b!8049979 (= res!3182666 (containsKey!4812 l!14636 key!6222))))

(declare-fun res!3182655 () Bool)

(assert (=> start!758074 (=> (not res!3182655) (not e!4743205))))

(assert (=> start!758074 (= res!3182655 (noDuplicateKeys!2684 l!14636))))

(assert (=> start!758074 e!4743205))

(assert (=> start!758074 e!4743203))

(declare-fun inv!97247 (ListMap!7247) Bool)

(assert (=> start!758074 (and (inv!97247 acc!1298) e!4743201)))

(assert (=> start!758074 tp_is_empty!54811))

(assert (=> start!758074 tp_is_empty!54813))

(declare-fun b!8049980 () Bool)

(assert (=> b!8049980 (= e!4743206 e!4743200)))

(declare-fun res!3182653 () Bool)

(assert (=> b!8049980 (=> (not res!3182653) (not e!4743200))))

(assert (=> b!8049980 (= res!3182653 (and (not (= (_1!38725 (h!81953 l!14636)) key!6222)) (not lt!2723866)))))

(declare-fun addToMapMapFromBucket!1965 (List!75631 ListMap!7247) ListMap!7247)

(assert (=> b!8049980 (= lt!2723864 (addToMapMapFromBucket!1965 (t!391403 l!14636) lt!2723867))))

(declare-fun +!2650 (ListMap!7247 tuple2!70844) ListMap!7247)

(assert (=> b!8049980 (= lt!2723867 (+!2650 acc!1298 (h!81953 l!14636)))))

(declare-fun b!8049981 () Bool)

(declare-fun res!3182659 () Bool)

(assert (=> b!8049981 (=> (not res!3182659) (not e!4743200))))

(declare-fun contains!21147 (List!75631 tuple2!70844) Bool)

(assert (=> b!8049981 (= res!3182659 (contains!21147 (t!391403 l!14636) (tuple2!70845 key!6222 value!3131)))))

(declare-fun b!8049982 () Bool)

(declare-fun res!3182658 () Bool)

(assert (=> b!8049982 (=> (not res!3182658) (not e!4743205))))

(assert (=> b!8049982 (= res!3182658 (contains!21146 (addToMapMapFromBucket!1965 l!14636 acc!1298) key!6222))))

(declare-fun b!8049983 () Bool)

(assert (=> b!8049983 (= e!4743202 (not lt!2723866))))

(declare-fun b!8049984 () Bool)

(declare-fun res!3182663 () Bool)

(assert (=> b!8049984 (=> (not res!3182663) (not e!4743207))))

(assert (=> b!8049984 (= res!3182663 (= (apply!14411 acc!1298 key!6222) value!3131))))

(declare-fun b!8049985 () Bool)

(declare-fun res!3182664 () Bool)

(assert (=> b!8049985 (=> res!3182664 e!4743204)))

(assert (=> b!8049985 (= res!3182664 (not (contains!21146 lt!2723864 key!6222)))))

(declare-fun b!8049986 () Bool)

(declare-fun res!3182656 () Bool)

(assert (=> b!8049986 (=> (not res!3182656) (not e!4743202))))

(assert (=> b!8049986 (= res!3182656 (contains!21147 l!14636 (tuple2!70845 key!6222 value!3131)))))

(assert (= (and start!758074 res!3182655) b!8049982))

(assert (= (and b!8049982 res!3182658) b!8049971))

(assert (= (and b!8049971 res!3182665) b!8049984))

(assert (= (and b!8049984 res!3182663) b!8049975))

(assert (= (and b!8049971 (not res!3182657)) b!8049979))

(assert (= (and b!8049979 res!3182666) b!8049986))

(assert (= (and b!8049986 res!3182656) b!8049983))

(assert (= (and b!8049971 res!3182654) b!8049978))

(assert (= (and b!8049978 res!3182660) b!8049980))

(assert (= (and b!8049980 res!3182653) b!8049981))

(assert (= (and b!8049981 res!3182659) b!8049973))

(assert (= (and b!8049973 (not res!3182661)) b!8049985))

(assert (= (and b!8049985 (not res!3182664)) b!8049972))

(assert (= (and b!8049972 (not res!3182662)) b!8049974))

(assert (= (and start!758074 ((_ is Cons!75505) l!14636)) b!8049977))

(assert (= start!758074 b!8049976))

(declare-fun m!8400852 () Bool)

(assert (=> start!758074 m!8400852))

(declare-fun m!8400854 () Bool)

(assert (=> start!758074 m!8400854))

(declare-fun m!8400856 () Bool)

(assert (=> b!8049975 m!8400856))

(declare-fun m!8400858 () Bool)

(assert (=> b!8049974 m!8400858))

(declare-fun m!8400860 () Bool)

(assert (=> b!8049974 m!8400860))

(declare-fun m!8400862 () Bool)

(assert (=> b!8049981 m!8400862))

(declare-fun m!8400864 () Bool)

(assert (=> b!8049982 m!8400864))

(assert (=> b!8049982 m!8400864))

(declare-fun m!8400866 () Bool)

(assert (=> b!8049982 m!8400866))

(declare-fun m!8400868 () Bool)

(assert (=> b!8049986 m!8400868))

(declare-fun m!8400870 () Bool)

(assert (=> b!8049972 m!8400870))

(declare-fun m!8400872 () Bool)

(assert (=> b!8049985 m!8400872))

(declare-fun m!8400874 () Bool)

(assert (=> b!8049973 m!8400874))

(declare-fun m!8400876 () Bool)

(assert (=> b!8049973 m!8400876))

(declare-fun m!8400878 () Bool)

(assert (=> b!8049973 m!8400878))

(declare-fun m!8400880 () Bool)

(assert (=> b!8049980 m!8400880))

(declare-fun m!8400882 () Bool)

(assert (=> b!8049980 m!8400882))

(declare-fun m!8400884 () Bool)

(assert (=> b!8049984 m!8400884))

(assert (=> b!8049979 m!8400856))

(declare-fun m!8400886 () Bool)

(assert (=> b!8049971 m!8400886))

(check-sat (not b!8049977) (not b!8049980) (not b!8049973) (not b!8049979) (not b!8049974) (not b!8049981) (not b!8049986) (not b!8049985) (not b!8049972) (not b!8049976) (not b!8049984) (not start!758074) tp_is_empty!54813 (not b!8049971) tp_is_empty!54811 (not b!8049982) (not b!8049975))
(check-sat)
