; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!758066 () Bool)

(assert start!758066)

(declare-fun b!8049789 () Bool)

(declare-fun e!4743099 () Bool)

(declare-fun tp!2413505 () Bool)

(assert (=> b!8049789 (= e!4743099 tp!2413505)))

(declare-fun b!8049790 () Bool)

(declare-fun res!3182495 () Bool)

(declare-fun e!4743096 () Bool)

(assert (=> b!8049790 (=> (not res!3182495) (not e!4743096))))

(declare-datatypes ((K!22748 0))(
  ( (K!22749 (val!32871 Int)) )
))
(declare-datatypes ((V!23002 0))(
  ( (V!23003 (val!32872 Int)) )
))
(declare-datatypes ((tuple2!70836 0))(
  ( (tuple2!70837 (_1!38721 K!22748) (_2!38721 V!23002)) )
))
(declare-datatypes ((List!75627 0))(
  ( (Nil!75501) (Cons!75501 (h!81949 tuple2!70836) (t!391399 List!75627)) )
))
(declare-fun l!14636 () List!75627)

(get-info :version)

(assert (=> b!8049790 (= res!3182495 (not ((_ is Nil!75501) l!14636)))))

(declare-fun b!8049791 () Bool)

(declare-fun e!4743097 () Bool)

(declare-fun lt!2723808 () Bool)

(assert (=> b!8049791 (= e!4743097 (not lt!2723808))))

(declare-fun res!3182496 () Bool)

(declare-fun e!4743100 () Bool)

(assert (=> start!758066 (=> (not res!3182496) (not e!4743100))))

(declare-fun noDuplicateKeys!2680 (List!75627) Bool)

(assert (=> start!758066 (= res!3182496 (noDuplicateKeys!2680 l!14636))))

(assert (=> start!758066 e!4743100))

(declare-fun e!4743093 () Bool)

(assert (=> start!758066 e!4743093))

(declare-datatypes ((ListMap!7239 0))(
  ( (ListMap!7240 (toList!11894 List!75627)) )
))
(declare-fun acc!1298 () ListMap!7239)

(declare-fun inv!97237 (ListMap!7239) Bool)

(assert (=> start!758066 (and (inv!97237 acc!1298) e!4743099)))

(declare-fun tp_is_empty!54795 () Bool)

(assert (=> start!758066 tp_is_empty!54795))

(declare-fun tp_is_empty!54797 () Bool)

(assert (=> start!758066 tp_is_empty!54797))

(declare-fun b!8049792 () Bool)

(declare-fun e!4743094 () Bool)

(assert (=> b!8049792 (= e!4743094 e!4743097)))

(declare-fun res!3182501 () Bool)

(assert (=> b!8049792 (=> (not res!3182501) (not e!4743097))))

(declare-fun key!6222 () K!22748)

(declare-fun containsKey!4808 (List!75627 K!22748) Bool)

(assert (=> b!8049792 (= res!3182501 (containsKey!4808 l!14636 key!6222))))

(declare-fun b!8049793 () Bool)

(declare-fun e!4743098 () Bool)

(assert (=> b!8049793 (= e!4743096 e!4743098)))

(declare-fun res!3182500 () Bool)

(assert (=> b!8049793 (=> (not res!3182500) (not e!4743098))))

(assert (=> b!8049793 (= res!3182500 (and (not (= (_1!38721 (h!81949 l!14636)) key!6222)) (not lt!2723808)))))

(declare-fun lt!2723806 () ListMap!7239)

(declare-fun addToMapMapFromBucket!1961 (List!75627 ListMap!7239) ListMap!7239)

(declare-fun +!2646 (ListMap!7239 tuple2!70836) ListMap!7239)

(assert (=> b!8049793 (= lt!2723806 (addToMapMapFromBucket!1961 (t!391399 l!14636) (+!2646 acc!1298 (h!81949 l!14636))))))

(declare-fun b!8049794 () Bool)

(declare-fun res!3182503 () Bool)

(declare-fun e!4743095 () Bool)

(assert (=> b!8049794 (=> (not res!3182503) (not e!4743095))))

(declare-fun value!3131 () V!23002)

(declare-fun apply!14407 (ListMap!7239 K!22748) V!23002)

(assert (=> b!8049794 (= res!3182503 (= (apply!14407 acc!1298 key!6222) value!3131))))

(declare-fun b!8049795 () Bool)

(assert (=> b!8049795 (= e!4743100 e!4743096)))

(declare-fun res!3182499 () Bool)

(assert (=> b!8049795 (=> (not res!3182499) (not e!4743096))))

(assert (=> b!8049795 (= res!3182499 e!4743094)))

(declare-fun res!3182502 () Bool)

(assert (=> b!8049795 (=> res!3182502 e!4743094)))

(assert (=> b!8049795 (= res!3182502 e!4743095)))

(declare-fun res!3182504 () Bool)

(assert (=> b!8049795 (=> (not res!3182504) (not e!4743095))))

(assert (=> b!8049795 (= res!3182504 lt!2723808)))

(declare-fun contains!21138 (ListMap!7239 K!22748) Bool)

(assert (=> b!8049795 (= lt!2723808 (contains!21138 acc!1298 key!6222))))

(declare-fun b!8049796 () Bool)

(declare-fun tp!2413504 () Bool)

(assert (=> b!8049796 (= e!4743093 (and tp_is_empty!54795 tp_is_empty!54797 tp!2413504))))

(declare-fun b!8049797 () Bool)

(declare-fun res!3182497 () Bool)

(assert (=> b!8049797 (=> (not res!3182497) (not e!4743100))))

(assert (=> b!8049797 (= res!3182497 (contains!21138 (addToMapMapFromBucket!1961 l!14636 acc!1298) key!6222))))

(declare-fun b!8049798 () Bool)

(assert (=> b!8049798 (= e!4743095 (not (containsKey!4808 l!14636 key!6222)))))

(declare-fun b!8049799 () Bool)

(assert (=> b!8049799 (= e!4743098 false)))

(declare-fun lt!2723807 () Bool)

(declare-fun contains!21139 (List!75627 tuple2!70836) Bool)

(assert (=> b!8049799 (= lt!2723807 (contains!21139 (t!391399 l!14636) (tuple2!70837 key!6222 value!3131)))))

(declare-fun b!8049800 () Bool)

(declare-fun res!3182498 () Bool)

(assert (=> b!8049800 (=> (not res!3182498) (not e!4743097))))

(assert (=> b!8049800 (= res!3182498 (contains!21139 l!14636 (tuple2!70837 key!6222 value!3131)))))

(assert (= (and start!758066 res!3182496) b!8049797))

(assert (= (and b!8049797 res!3182497) b!8049795))

(assert (= (and b!8049795 res!3182504) b!8049794))

(assert (= (and b!8049794 res!3182503) b!8049798))

(assert (= (and b!8049795 (not res!3182502)) b!8049792))

(assert (= (and b!8049792 res!3182501) b!8049800))

(assert (= (and b!8049800 res!3182498) b!8049791))

(assert (= (and b!8049795 res!3182499) b!8049790))

(assert (= (and b!8049790 res!3182495) b!8049793))

(assert (= (and b!8049793 res!3182500) b!8049799))

(assert (= (and start!758066 ((_ is Cons!75501) l!14636)) b!8049796))

(assert (= start!758066 b!8049789))

(declare-fun m!8400730 () Bool)

(assert (=> start!758066 m!8400730))

(declare-fun m!8400732 () Bool)

(assert (=> start!758066 m!8400732))

(declare-fun m!8400734 () Bool)

(assert (=> b!8049795 m!8400734))

(declare-fun m!8400736 () Bool)

(assert (=> b!8049800 m!8400736))

(declare-fun m!8400738 () Bool)

(assert (=> b!8049794 m!8400738))

(declare-fun m!8400740 () Bool)

(assert (=> b!8049799 m!8400740))

(declare-fun m!8400742 () Bool)

(assert (=> b!8049798 m!8400742))

(assert (=> b!8049792 m!8400742))

(declare-fun m!8400744 () Bool)

(assert (=> b!8049797 m!8400744))

(assert (=> b!8049797 m!8400744))

(declare-fun m!8400746 () Bool)

(assert (=> b!8049797 m!8400746))

(declare-fun m!8400748 () Bool)

(assert (=> b!8049793 m!8400748))

(assert (=> b!8049793 m!8400748))

(declare-fun m!8400750 () Bool)

(assert (=> b!8049793 m!8400750))

(check-sat (not b!8049799) (not b!8049789) tp_is_empty!54797 (not b!8049796) (not b!8049794) (not b!8049797) tp_is_empty!54795 (not b!8049800) (not b!8049795) (not b!8049792) (not start!758066) (not b!8049798) (not b!8049793))
(check-sat)
