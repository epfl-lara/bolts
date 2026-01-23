; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!758070 () Bool)

(assert start!758070)

(declare-fun b!8049876 () Bool)

(declare-fun e!4743150 () Bool)

(declare-datatypes ((K!22753 0))(
  ( (K!22754 (val!32875 Int)) )
))
(declare-datatypes ((V!23007 0))(
  ( (V!23008 (val!32876 Int)) )
))
(declare-datatypes ((tuple2!70840 0))(
  ( (tuple2!70841 (_1!38723 K!22753) (_2!38723 V!23007)) )
))
(declare-datatypes ((List!75629 0))(
  ( (Nil!75503) (Cons!75503 (h!81951 tuple2!70840) (t!391401 List!75629)) )
))
(declare-fun l!14636 () List!75629)

(declare-fun key!6222 () K!22753)

(declare-fun containsKey!4810 (List!75629 K!22753) Bool)

(assert (=> b!8049876 (= e!4743150 (not (containsKey!4810 l!14636 key!6222)))))

(declare-fun b!8049877 () Bool)

(declare-fun e!4743151 () Bool)

(declare-fun tp!2413517 () Bool)

(assert (=> b!8049877 (= e!4743151 tp!2413517)))

(declare-fun b!8049878 () Bool)

(declare-fun e!4743146 () Bool)

(assert (=> b!8049878 (= e!4743146 true)))

(declare-fun lt!2723837 () Bool)

(assert (=> b!8049878 (= lt!2723837 (containsKey!4810 (t!391401 l!14636) key!6222))))

(declare-fun res!3182573 () Bool)

(declare-fun e!4743149 () Bool)

(assert (=> start!758070 (=> (not res!3182573) (not e!4743149))))

(declare-fun noDuplicateKeys!2682 (List!75629) Bool)

(assert (=> start!758070 (= res!3182573 (noDuplicateKeys!2682 l!14636))))

(assert (=> start!758070 e!4743149))

(declare-fun e!4743153 () Bool)

(assert (=> start!758070 e!4743153))

(declare-datatypes ((ListMap!7243 0))(
  ( (ListMap!7244 (toList!11896 List!75629)) )
))
(declare-fun acc!1298 () ListMap!7243)

(declare-fun inv!97242 (ListMap!7243) Bool)

(assert (=> start!758070 (and (inv!97242 acc!1298) e!4743151)))

(declare-fun tp_is_empty!54803 () Bool)

(assert (=> start!758070 tp_is_empty!54803))

(declare-fun tp_is_empty!54805 () Bool)

(assert (=> start!758070 tp_is_empty!54805))

(declare-fun b!8049879 () Bool)

(declare-fun e!4743154 () Bool)

(declare-fun e!4743147 () Bool)

(assert (=> b!8049879 (= e!4743154 e!4743147)))

(declare-fun res!3182578 () Bool)

(assert (=> b!8049879 (=> (not res!3182578) (not e!4743147))))

(declare-fun lt!2723836 () Bool)

(assert (=> b!8049879 (= res!3182578 (and (not (= (_1!38723 (h!81951 l!14636)) key!6222)) (not lt!2723836)))))

(declare-fun lt!2723838 () ListMap!7243)

(declare-fun lt!2723834 () ListMap!7243)

(declare-fun addToMapMapFromBucket!1963 (List!75629 ListMap!7243) ListMap!7243)

(assert (=> b!8049879 (= lt!2723838 (addToMapMapFromBucket!1963 (t!391401 l!14636) lt!2723834))))

(declare-fun +!2648 (ListMap!7243 tuple2!70840) ListMap!7243)

(assert (=> b!8049879 (= lt!2723834 (+!2648 acc!1298 (h!81951 l!14636)))))

(declare-fun b!8049880 () Bool)

(assert (=> b!8049880 (= e!4743147 (not e!4743146))))

(declare-fun res!3182577 () Bool)

(assert (=> b!8049880 (=> res!3182577 e!4743146)))

(assert (=> b!8049880 (= res!3182577 (not (noDuplicateKeys!2682 (t!391401 l!14636))))))

(declare-fun contains!21142 (ListMap!7243 K!22753) Bool)

(assert (=> b!8049880 (not (contains!21142 lt!2723834 key!6222))))

(declare-datatypes ((Unit!171284 0))(
  ( (Unit!171285) )
))
(declare-fun lt!2723835 () Unit!171284)

(declare-fun addStillNotContains!9 (ListMap!7243 K!22753 V!23007 K!22753) Unit!171284)

(assert (=> b!8049880 (= lt!2723835 (addStillNotContains!9 acc!1298 (_1!38723 (h!81951 l!14636)) (_2!38723 (h!81951 l!14636)) key!6222))))

(declare-fun b!8049881 () Bool)

(declare-fun res!3182582 () Bool)

(assert (=> b!8049881 (=> (not res!3182582) (not e!4743149))))

(assert (=> b!8049881 (= res!3182582 (contains!21142 (addToMapMapFromBucket!1963 l!14636 acc!1298) key!6222))))

(declare-fun b!8049882 () Bool)

(declare-fun e!4743148 () Bool)

(assert (=> b!8049882 (= e!4743148 (not lt!2723836))))

(declare-fun b!8049883 () Bool)

(declare-fun res!3182579 () Bool)

(assert (=> b!8049883 (=> (not res!3182579) (not e!4743147))))

(declare-fun value!3131 () V!23007)

(declare-fun contains!21143 (List!75629 tuple2!70840) Bool)

(assert (=> b!8049883 (= res!3182579 (contains!21143 (t!391401 l!14636) (tuple2!70841 key!6222 value!3131)))))

(declare-fun b!8049884 () Bool)

(declare-fun e!4743152 () Bool)

(assert (=> b!8049884 (= e!4743152 e!4743148)))

(declare-fun res!3182575 () Bool)

(assert (=> b!8049884 (=> (not res!3182575) (not e!4743148))))

(assert (=> b!8049884 (= res!3182575 (containsKey!4810 l!14636 key!6222))))

(declare-fun b!8049885 () Bool)

(declare-fun res!3182572 () Bool)

(assert (=> b!8049885 (=> (not res!3182572) (not e!4743154))))

(get-info :version)

(assert (=> b!8049885 (= res!3182572 (not ((_ is Nil!75503) l!14636)))))

(declare-fun b!8049886 () Bool)

(assert (=> b!8049886 (= e!4743149 e!4743154)))

(declare-fun res!3182576 () Bool)

(assert (=> b!8049886 (=> (not res!3182576) (not e!4743154))))

(assert (=> b!8049886 (= res!3182576 e!4743152)))

(declare-fun res!3182571 () Bool)

(assert (=> b!8049886 (=> res!3182571 e!4743152)))

(assert (=> b!8049886 (= res!3182571 e!4743150)))

(declare-fun res!3182570 () Bool)

(assert (=> b!8049886 (=> (not res!3182570) (not e!4743150))))

(assert (=> b!8049886 (= res!3182570 lt!2723836)))

(assert (=> b!8049886 (= lt!2723836 (contains!21142 acc!1298 key!6222))))

(declare-fun b!8049887 () Bool)

(declare-fun tp!2413516 () Bool)

(assert (=> b!8049887 (= e!4743153 (and tp_is_empty!54803 tp_is_empty!54805 tp!2413516))))

(declare-fun b!8049888 () Bool)

(declare-fun res!3182581 () Bool)

(assert (=> b!8049888 (=> (not res!3182581) (not e!4743150))))

(declare-fun apply!14409 (ListMap!7243 K!22753) V!23007)

(assert (=> b!8049888 (= res!3182581 (= (apply!14409 acc!1298 key!6222) value!3131))))

(declare-fun b!8049889 () Bool)

(declare-fun res!3182574 () Bool)

(assert (=> b!8049889 (=> res!3182574 e!4743146)))

(assert (=> b!8049889 (= res!3182574 (not (contains!21142 lt!2723838 key!6222)))))

(declare-fun b!8049890 () Bool)

(declare-fun res!3182580 () Bool)

(assert (=> b!8049890 (=> (not res!3182580) (not e!4743148))))

(assert (=> b!8049890 (= res!3182580 (contains!21143 l!14636 (tuple2!70841 key!6222 value!3131)))))

(assert (= (and start!758070 res!3182573) b!8049881))

(assert (= (and b!8049881 res!3182582) b!8049886))

(assert (= (and b!8049886 res!3182570) b!8049888))

(assert (= (and b!8049888 res!3182581) b!8049876))

(assert (= (and b!8049886 (not res!3182571)) b!8049884))

(assert (= (and b!8049884 res!3182575) b!8049890))

(assert (= (and b!8049890 res!3182580) b!8049882))

(assert (= (and b!8049886 res!3182576) b!8049885))

(assert (= (and b!8049885 res!3182572) b!8049879))

(assert (= (and b!8049879 res!3182578) b!8049883))

(assert (= (and b!8049883 res!3182579) b!8049880))

(assert (= (and b!8049880 (not res!3182577)) b!8049889))

(assert (= (and b!8049889 (not res!3182574)) b!8049878))

(assert (= (and start!758070 ((_ is Cons!75503) l!14636)) b!8049887))

(assert (= start!758070 b!8049877))

(declare-fun m!8400784 () Bool)

(assert (=> b!8049890 m!8400784))

(declare-fun m!8400786 () Bool)

(assert (=> b!8049881 m!8400786))

(assert (=> b!8049881 m!8400786))

(declare-fun m!8400788 () Bool)

(assert (=> b!8049881 m!8400788))

(declare-fun m!8400790 () Bool)

(assert (=> start!758070 m!8400790))

(declare-fun m!8400792 () Bool)

(assert (=> start!758070 m!8400792))

(declare-fun m!8400794 () Bool)

(assert (=> b!8049879 m!8400794))

(declare-fun m!8400796 () Bool)

(assert (=> b!8049879 m!8400796))

(declare-fun m!8400798 () Bool)

(assert (=> b!8049876 m!8400798))

(declare-fun m!8400800 () Bool)

(assert (=> b!8049889 m!8400800))

(assert (=> b!8049884 m!8400798))

(declare-fun m!8400802 () Bool)

(assert (=> b!8049878 m!8400802))

(declare-fun m!8400804 () Bool)

(assert (=> b!8049888 m!8400804))

(declare-fun m!8400806 () Bool)

(assert (=> b!8049880 m!8400806))

(declare-fun m!8400808 () Bool)

(assert (=> b!8049880 m!8400808))

(declare-fun m!8400810 () Bool)

(assert (=> b!8049880 m!8400810))

(declare-fun m!8400812 () Bool)

(assert (=> b!8049886 m!8400812))

(declare-fun m!8400814 () Bool)

(assert (=> b!8049883 m!8400814))

(check-sat (not b!8049884) (not b!8049877) (not b!8049876) (not b!8049890) (not b!8049880) (not start!758070) (not b!8049888) tp_is_empty!54805 (not b!8049886) (not b!8049878) (not b!8049889) (not b!8049879) (not b!8049883) (not b!8049881) tp_is_empty!54803 (not b!8049887))
(check-sat)
