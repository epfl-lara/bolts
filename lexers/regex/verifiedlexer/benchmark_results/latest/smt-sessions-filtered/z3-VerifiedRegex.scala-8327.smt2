; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!432668 () Bool)

(assert start!432668)

(declare-fun b!4430790 () Bool)

(declare-fun res!1832840 () Bool)

(declare-fun e!2758824 () Bool)

(assert (=> b!4430790 (=> (not res!1832840) (not e!2758824))))

(declare-datatypes ((K!11040 0))(
  ( (K!11041 (val!17103 Int)) )
))
(declare-fun key!3717 () K!11040)

(declare-datatypes ((Hashable!5181 0))(
  ( (HashableExt!5180 (__x!30884 Int)) )
))
(declare-fun hashF!1220 () Hashable!5181)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun hash!2202 (Hashable!5181 K!11040) (_ BitVec 64))

(assert (=> b!4430790 (= res!1832840 (= (hash!2202 hashF!1220 key!3717) hash!366))))

(declare-fun b!4430792 () Bool)

(declare-fun res!1832847 () Bool)

(declare-fun e!2758825 () Bool)

(assert (=> b!4430792 (=> (not res!1832847) (not e!2758825))))

(declare-datatypes ((V!11286 0))(
  ( (V!11287 (val!17104 Int)) )
))
(declare-datatypes ((tuple2!49526 0))(
  ( (tuple2!49527 (_1!28057 K!11040) (_2!28057 V!11286)) )
))
(declare-datatypes ((List!49795 0))(
  ( (Nil!49671) (Cons!49671 (h!55370 tuple2!49526) (t!356733 List!49795)) )
))
(declare-fun newBucket!194 () List!49795)

(declare-fun noDuplicateKeys!787 (List!49795) Bool)

(assert (=> b!4430792 (= res!1832847 (noDuplicateKeys!787 newBucket!194))))

(declare-fun b!4430793 () Bool)

(declare-fun res!1832849 () Bool)

(assert (=> b!4430793 (=> (not res!1832849) (not e!2758824))))

(declare-datatypes ((tuple2!49528 0))(
  ( (tuple2!49529 (_1!28058 (_ BitVec 64)) (_2!28058 List!49795)) )
))
(declare-datatypes ((List!49796 0))(
  ( (Nil!49672) (Cons!49672 (h!55371 tuple2!49528) (t!356734 List!49796)) )
))
(declare-datatypes ((ListLongMap!2211 0))(
  ( (ListLongMap!2212 (toList!3561 List!49796)) )
))
(declare-fun lm!1616 () ListLongMap!2211)

(declare-fun allKeysSameHashInMap!893 (ListLongMap!2211 Hashable!5181) Bool)

(assert (=> b!4430793 (= res!1832849 (allKeysSameHashInMap!893 lm!1616 hashF!1220))))

(declare-fun b!4430794 () Bool)

(declare-fun res!1832842 () Bool)

(declare-fun e!2758828 () Bool)

(assert (=> b!4430794 (=> res!1832842 e!2758828)))

(declare-fun lt!1629507 () Bool)

(get-info :version)

(assert (=> b!4430794 (= res!1832842 (or (not ((_ is Cons!49672) (toList!3561 lm!1616))) (not (= (_1!28058 (h!55371 (toList!3561 lm!1616))) hash!366)) lt!1629507))))

(declare-fun b!4430795 () Bool)

(assert (=> b!4430795 (= e!2758825 (not e!2758828))))

(declare-fun res!1832844 () Bool)

(assert (=> b!4430795 (=> res!1832844 e!2758828)))

(declare-fun lt!1629503 () ListLongMap!2211)

(declare-fun lambda!155230 () Int)

(declare-fun forall!9618 (List!49796 Int) Bool)

(assert (=> b!4430795 (= res!1832844 (not (forall!9618 (toList!3561 lt!1629503) lambda!155230)))))

(assert (=> b!4430795 (forall!9618 (toList!3561 lt!1629503) lambda!155230)))

(declare-fun lt!1629505 () tuple2!49528)

(declare-fun +!1143 (ListLongMap!2211 tuple2!49528) ListLongMap!2211)

(assert (=> b!4430795 (= lt!1629503 (+!1143 lm!1616 lt!1629505))))

(assert (=> b!4430795 (= lt!1629505 (tuple2!49529 hash!366 newBucket!194))))

(declare-datatypes ((Unit!82673 0))(
  ( (Unit!82674) )
))
(declare-fun lt!1629504 () Unit!82673)

(declare-fun addValidProp!429 (ListLongMap!2211 Int (_ BitVec 64) List!49795) Unit!82673)

(assert (=> b!4430795 (= lt!1629504 (addValidProp!429 lm!1616 lambda!155230 hash!366 newBucket!194))))

(declare-fun b!4430796 () Bool)

(assert (=> b!4430796 (= e!2758824 e!2758825)))

(declare-fun res!1832838 () Bool)

(assert (=> b!4430796 (=> (not res!1832838) (not e!2758825))))

(declare-fun e!2758827 () Bool)

(assert (=> b!4430796 (= res!1832838 e!2758827)))

(declare-fun res!1832845 () Bool)

(assert (=> b!4430796 (=> res!1832845 e!2758827)))

(declare-fun e!2758830 () Bool)

(assert (=> b!4430796 (= res!1832845 e!2758830)))

(declare-fun res!1832841 () Bool)

(assert (=> b!4430796 (=> (not res!1832841) (not e!2758830))))

(assert (=> b!4430796 (= res!1832841 (not lt!1629507))))

(declare-fun lt!1629506 () Bool)

(assert (=> b!4430796 (= lt!1629507 (not lt!1629506))))

(declare-fun contains!12198 (ListLongMap!2211 (_ BitVec 64)) Bool)

(assert (=> b!4430796 (= lt!1629506 (contains!12198 lm!1616 hash!366))))

(declare-fun b!4430797 () Bool)

(declare-fun res!1832843 () Bool)

(assert (=> b!4430797 (=> (not res!1832843) (not e!2758824))))

(declare-fun allKeysSameHash!747 (List!49795 (_ BitVec 64) Hashable!5181) Bool)

(assert (=> b!4430797 (= res!1832843 (allKeysSameHash!747 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4430798 () Bool)

(declare-fun res!1832848 () Bool)

(assert (=> b!4430798 (=> (not res!1832848) (not e!2758825))))

(assert (=> b!4430798 (= res!1832848 (forall!9618 (toList!3561 lm!1616) lambda!155230))))

(declare-fun newValue!93 () V!11286)

(declare-fun b!4430799 () Bool)

(assert (=> b!4430799 (= e!2758827 (and (not lt!1629506) (= newBucket!194 (Cons!49671 (tuple2!49527 key!3717 newValue!93) Nil!49671))))))

(declare-fun b!4430791 () Bool)

(declare-fun e!2758829 () Bool)

(declare-fun tp!1333564 () Bool)

(assert (=> b!4430791 (= e!2758829 tp!1333564)))

(declare-fun res!1832839 () Bool)

(assert (=> start!432668 (=> (not res!1832839) (not e!2758824))))

(assert (=> start!432668 (= res!1832839 (forall!9618 (toList!3561 lm!1616) lambda!155230))))

(assert (=> start!432668 e!2758824))

(declare-fun tp_is_empty!26393 () Bool)

(assert (=> start!432668 tp_is_empty!26393))

(declare-fun tp_is_empty!26395 () Bool)

(assert (=> start!432668 tp_is_empty!26395))

(declare-fun e!2758826 () Bool)

(assert (=> start!432668 e!2758826))

(declare-fun inv!65226 (ListLongMap!2211) Bool)

(assert (=> start!432668 (and (inv!65226 lm!1616) e!2758829)))

(assert (=> start!432668 true))

(declare-fun b!4430800 () Bool)

(declare-fun res!1832846 () Bool)

(assert (=> b!4430800 (=> (not res!1832846) (not e!2758824))))

(declare-datatypes ((ListMap!2805 0))(
  ( (ListMap!2806 (toList!3562 List!49795)) )
))
(declare-fun contains!12199 (ListMap!2805 K!11040) Bool)

(declare-fun extractMap!848 (List!49796) ListMap!2805)

(assert (=> b!4430800 (= res!1832846 (not (contains!12199 (extractMap!848 (toList!3561 lm!1616)) key!3717)))))

(declare-fun b!4430801 () Bool)

(declare-fun head!9252 (List!49796) tuple2!49528)

(assert (=> b!4430801 (= e!2758828 (= (head!9252 (toList!3561 lt!1629503)) lt!1629505))))

(declare-fun b!4430802 () Bool)

(declare-fun tp!1333563 () Bool)

(assert (=> b!4430802 (= e!2758826 (and tp_is_empty!26395 tp_is_empty!26393 tp!1333563))))

(declare-fun b!4430803 () Bool)

(declare-fun apply!11639 (ListLongMap!2211 (_ BitVec 64)) List!49795)

(assert (=> b!4430803 (= e!2758830 (= newBucket!194 (Cons!49671 (tuple2!49527 key!3717 newValue!93) (apply!11639 lm!1616 hash!366))))))

(assert (= (and start!432668 res!1832839) b!4430793))

(assert (= (and b!4430793 res!1832849) b!4430790))

(assert (= (and b!4430790 res!1832840) b!4430797))

(assert (= (and b!4430797 res!1832843) b!4430800))

(assert (= (and b!4430800 res!1832846) b!4430796))

(assert (= (and b!4430796 res!1832841) b!4430803))

(assert (= (and b!4430796 (not res!1832845)) b!4430799))

(assert (= (and b!4430796 res!1832838) b!4430792))

(assert (= (and b!4430792 res!1832847) b!4430798))

(assert (= (and b!4430798 res!1832848) b!4430795))

(assert (= (and b!4430795 (not res!1832844)) b!4430794))

(assert (= (and b!4430794 (not res!1832842)) b!4430801))

(assert (= (and start!432668 ((_ is Cons!49671) newBucket!194)) b!4430802))

(assert (= start!432668 b!4430791))

(declare-fun m!5114865 () Bool)

(assert (=> b!4430800 m!5114865))

(assert (=> b!4430800 m!5114865))

(declare-fun m!5114867 () Bool)

(assert (=> b!4430800 m!5114867))

(declare-fun m!5114869 () Bool)

(assert (=> b!4430803 m!5114869))

(declare-fun m!5114871 () Bool)

(assert (=> b!4430795 m!5114871))

(assert (=> b!4430795 m!5114871))

(declare-fun m!5114873 () Bool)

(assert (=> b!4430795 m!5114873))

(declare-fun m!5114875 () Bool)

(assert (=> b!4430795 m!5114875))

(declare-fun m!5114877 () Bool)

(assert (=> b!4430801 m!5114877))

(declare-fun m!5114879 () Bool)

(assert (=> b!4430792 m!5114879))

(declare-fun m!5114881 () Bool)

(assert (=> b!4430790 m!5114881))

(declare-fun m!5114883 () Bool)

(assert (=> b!4430796 m!5114883))

(declare-fun m!5114885 () Bool)

(assert (=> b!4430798 m!5114885))

(assert (=> start!432668 m!5114885))

(declare-fun m!5114887 () Bool)

(assert (=> start!432668 m!5114887))

(declare-fun m!5114889 () Bool)

(assert (=> b!4430797 m!5114889))

(declare-fun m!5114891 () Bool)

(assert (=> b!4430793 m!5114891))

(check-sat (not b!4430795) (not b!4430798) (not b!4430803) (not b!4430796) (not b!4430790) (not b!4430797) (not b!4430800) tp_is_empty!26395 (not b!4430802) (not b!4430801) (not start!432668) (not b!4430792) tp_is_empty!26393 (not b!4430791) (not b!4430793))
(check-sat)
(get-model)

(declare-fun b!4430877 () Bool)

(declare-fun e!2758882 () Unit!82673)

(declare-fun e!2758885 () Unit!82673)

(assert (=> b!4430877 (= e!2758882 e!2758885)))

(declare-fun c!754134 () Bool)

(declare-fun call!308292 () Bool)

(assert (=> b!4430877 (= c!754134 call!308292)))

(declare-fun b!4430878 () Bool)

(declare-datatypes ((List!49798 0))(
  ( (Nil!49674) (Cons!49674 (h!55375 K!11040) (t!356736 List!49798)) )
))
(declare-fun e!2758881 () List!49798)

(declare-fun keys!16980 (ListMap!2805) List!49798)

(assert (=> b!4430878 (= e!2758881 (keys!16980 (extractMap!848 (toList!3561 lm!1616))))))

(declare-fun b!4430879 () Bool)

(declare-fun lt!1629563 () Unit!82673)

(assert (=> b!4430879 (= e!2758882 lt!1629563)))

(declare-fun lt!1629569 () Unit!82673)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!648 (List!49795 K!11040) Unit!82673)

(assert (=> b!4430879 (= lt!1629569 (lemmaContainsKeyImpliesGetValueByKeyDefined!648 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) key!3717))))

(declare-datatypes ((Option!10753 0))(
  ( (None!10752) (Some!10752 (v!43950 V!11286)) )
))
(declare-fun isDefined!8045 (Option!10753) Bool)

(declare-fun getValueByKey!739 (List!49795 K!11040) Option!10753)

(assert (=> b!4430879 (isDefined!8045 (getValueByKey!739 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) key!3717))))

(declare-fun lt!1629568 () Unit!82673)

(assert (=> b!4430879 (= lt!1629568 lt!1629569)))

(declare-fun lemmaInListThenGetKeysListContains!263 (List!49795 K!11040) Unit!82673)

(assert (=> b!4430879 (= lt!1629563 (lemmaInListThenGetKeysListContains!263 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) key!3717))))

(assert (=> b!4430879 call!308292))

(declare-fun b!4430880 () Bool)

(declare-fun e!2758883 () Bool)

(declare-fun contains!12202 (List!49798 K!11040) Bool)

(assert (=> b!4430880 (= e!2758883 (not (contains!12202 (keys!16980 (extractMap!848 (toList!3561 lm!1616))) key!3717)))))

(declare-fun b!4430881 () Bool)

(declare-fun e!2758886 () Bool)

(declare-fun e!2758884 () Bool)

(assert (=> b!4430881 (= e!2758886 e!2758884)))

(declare-fun res!1832887 () Bool)

(assert (=> b!4430881 (=> (not res!1832887) (not e!2758884))))

(assert (=> b!4430881 (= res!1832887 (isDefined!8045 (getValueByKey!739 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) key!3717)))))

(declare-fun b!4430882 () Bool)

(assert (=> b!4430882 false))

(declare-fun lt!1629567 () Unit!82673)

(declare-fun lt!1629564 () Unit!82673)

(assert (=> b!4430882 (= lt!1629567 lt!1629564)))

(declare-fun containsKey!1168 (List!49795 K!11040) Bool)

(assert (=> b!4430882 (containsKey!1168 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!264 (List!49795 K!11040) Unit!82673)

(assert (=> b!4430882 (= lt!1629564 (lemmaInGetKeysListThenContainsKey!264 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) key!3717))))

(declare-fun Unit!82678 () Unit!82673)

(assert (=> b!4430882 (= e!2758885 Unit!82678)))

(declare-fun b!4430883 () Bool)

(declare-fun Unit!82679 () Unit!82673)

(assert (=> b!4430883 (= e!2758885 Unit!82679)))

(declare-fun b!4430884 () Bool)

(declare-fun getKeysList!266 (List!49795) List!49798)

(assert (=> b!4430884 (= e!2758881 (getKeysList!266 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))))

(declare-fun b!4430885 () Bool)

(assert (=> b!4430885 (= e!2758884 (contains!12202 (keys!16980 (extractMap!848 (toList!3561 lm!1616))) key!3717))))

(declare-fun d!1343580 () Bool)

(assert (=> d!1343580 e!2758886))

(declare-fun res!1832886 () Bool)

(assert (=> d!1343580 (=> res!1832886 e!2758886)))

(assert (=> d!1343580 (= res!1832886 e!2758883)))

(declare-fun res!1832885 () Bool)

(assert (=> d!1343580 (=> (not res!1832885) (not e!2758883))))

(declare-fun lt!1629566 () Bool)

(assert (=> d!1343580 (= res!1832885 (not lt!1629566))))

(declare-fun lt!1629565 () Bool)

(assert (=> d!1343580 (= lt!1629566 lt!1629565)))

(declare-fun lt!1629570 () Unit!82673)

(assert (=> d!1343580 (= lt!1629570 e!2758882)))

(declare-fun c!754135 () Bool)

(assert (=> d!1343580 (= c!754135 lt!1629565)))

(assert (=> d!1343580 (= lt!1629565 (containsKey!1168 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) key!3717))))

(assert (=> d!1343580 (= (contains!12199 (extractMap!848 (toList!3561 lm!1616)) key!3717) lt!1629566)))

(declare-fun bm!308287 () Bool)

(assert (=> bm!308287 (= call!308292 (contains!12202 e!2758881 key!3717))))

(declare-fun c!754136 () Bool)

(assert (=> bm!308287 (= c!754136 c!754135)))

(assert (= (and d!1343580 c!754135) b!4430879))

(assert (= (and d!1343580 (not c!754135)) b!4430877))

(assert (= (and b!4430877 c!754134) b!4430882))

(assert (= (and b!4430877 (not c!754134)) b!4430883))

(assert (= (or b!4430879 b!4430877) bm!308287))

(assert (= (and bm!308287 c!754136) b!4430884))

(assert (= (and bm!308287 (not c!754136)) b!4430878))

(assert (= (and d!1343580 res!1832885) b!4430880))

(assert (= (and d!1343580 (not res!1832886)) b!4430881))

(assert (= (and b!4430881 res!1832887) b!4430885))

(assert (=> b!4430878 m!5114865))

(declare-fun m!5114955 () Bool)

(assert (=> b!4430878 m!5114955))

(declare-fun m!5114957 () Bool)

(assert (=> d!1343580 m!5114957))

(assert (=> b!4430880 m!5114865))

(assert (=> b!4430880 m!5114955))

(assert (=> b!4430880 m!5114955))

(declare-fun m!5114959 () Bool)

(assert (=> b!4430880 m!5114959))

(declare-fun m!5114961 () Bool)

(assert (=> b!4430881 m!5114961))

(assert (=> b!4430881 m!5114961))

(declare-fun m!5114963 () Bool)

(assert (=> b!4430881 m!5114963))

(declare-fun m!5114965 () Bool)

(assert (=> bm!308287 m!5114965))

(declare-fun m!5114967 () Bool)

(assert (=> b!4430884 m!5114967))

(declare-fun m!5114969 () Bool)

(assert (=> b!4430879 m!5114969))

(assert (=> b!4430879 m!5114961))

(assert (=> b!4430879 m!5114961))

(assert (=> b!4430879 m!5114963))

(declare-fun m!5114971 () Bool)

(assert (=> b!4430879 m!5114971))

(assert (=> b!4430882 m!5114957))

(declare-fun m!5114973 () Bool)

(assert (=> b!4430882 m!5114973))

(assert (=> b!4430885 m!5114865))

(assert (=> b!4430885 m!5114955))

(assert (=> b!4430885 m!5114955))

(assert (=> b!4430885 m!5114959))

(assert (=> b!4430800 d!1343580))

(declare-fun bs!759807 () Bool)

(declare-fun d!1343594 () Bool)

(assert (= bs!759807 (and d!1343594 start!432668)))

(declare-fun lambda!155242 () Int)

(assert (=> bs!759807 (= lambda!155242 lambda!155230)))

(declare-fun lt!1629588 () ListMap!2805)

(declare-fun invariantList!819 (List!49795) Bool)

(assert (=> d!1343594 (invariantList!819 (toList!3562 lt!1629588))))

(declare-fun e!2758904 () ListMap!2805)

(assert (=> d!1343594 (= lt!1629588 e!2758904)))

(declare-fun c!754142 () Bool)

(assert (=> d!1343594 (= c!754142 ((_ is Cons!49672) (toList!3561 lm!1616)))))

(assert (=> d!1343594 (forall!9618 (toList!3561 lm!1616) lambda!155242)))

(assert (=> d!1343594 (= (extractMap!848 (toList!3561 lm!1616)) lt!1629588)))

(declare-fun b!4430917 () Bool)

(declare-fun addToMapMapFromBucket!412 (List!49795 ListMap!2805) ListMap!2805)

(assert (=> b!4430917 (= e!2758904 (addToMapMapFromBucket!412 (_2!28058 (h!55371 (toList!3561 lm!1616))) (extractMap!848 (t!356734 (toList!3561 lm!1616)))))))

(declare-fun b!4430918 () Bool)

(assert (=> b!4430918 (= e!2758904 (ListMap!2806 Nil!49671))))

(assert (= (and d!1343594 c!754142) b!4430917))

(assert (= (and d!1343594 (not c!754142)) b!4430918))

(declare-fun m!5114997 () Bool)

(assert (=> d!1343594 m!5114997))

(declare-fun m!5114999 () Bool)

(assert (=> d!1343594 m!5114999))

(declare-fun m!5115001 () Bool)

(assert (=> b!4430917 m!5115001))

(assert (=> b!4430917 m!5115001))

(declare-fun m!5115003 () Bool)

(assert (=> b!4430917 m!5115003))

(assert (=> b!4430800 d!1343594))

(declare-fun d!1343608 () Bool)

(declare-fun res!1832898 () Bool)

(declare-fun e!2758909 () Bool)

(assert (=> d!1343608 (=> res!1832898 e!2758909)))

(assert (=> d!1343608 (= res!1832898 ((_ is Nil!49672) (toList!3561 lt!1629503)))))

(assert (=> d!1343608 (= (forall!9618 (toList!3561 lt!1629503) lambda!155230) e!2758909)))

(declare-fun b!4430923 () Bool)

(declare-fun e!2758910 () Bool)

(assert (=> b!4430923 (= e!2758909 e!2758910)))

(declare-fun res!1832899 () Bool)

(assert (=> b!4430923 (=> (not res!1832899) (not e!2758910))))

(declare-fun dynLambda!20864 (Int tuple2!49528) Bool)

(assert (=> b!4430923 (= res!1832899 (dynLambda!20864 lambda!155230 (h!55371 (toList!3561 lt!1629503))))))

(declare-fun b!4430924 () Bool)

(assert (=> b!4430924 (= e!2758910 (forall!9618 (t!356734 (toList!3561 lt!1629503)) lambda!155230))))

(assert (= (and d!1343608 (not res!1832898)) b!4430923))

(assert (= (and b!4430923 res!1832899) b!4430924))

(declare-fun b_lambda!143639 () Bool)

(assert (=> (not b_lambda!143639) (not b!4430923)))

(declare-fun m!5115005 () Bool)

(assert (=> b!4430923 m!5115005))

(declare-fun m!5115007 () Bool)

(assert (=> b!4430924 m!5115007))

(assert (=> b!4430795 d!1343608))

(declare-fun d!1343610 () Bool)

(declare-fun e!2758913 () Bool)

(assert (=> d!1343610 e!2758913))

(declare-fun res!1832904 () Bool)

(assert (=> d!1343610 (=> (not res!1832904) (not e!2758913))))

(declare-fun lt!1629600 () ListLongMap!2211)

(assert (=> d!1343610 (= res!1832904 (contains!12198 lt!1629600 (_1!28058 lt!1629505)))))

(declare-fun lt!1629598 () List!49796)

(assert (=> d!1343610 (= lt!1629600 (ListLongMap!2212 lt!1629598))))

(declare-fun lt!1629599 () Unit!82673)

(declare-fun lt!1629597 () Unit!82673)

(assert (=> d!1343610 (= lt!1629599 lt!1629597)))

(declare-datatypes ((Option!10754 0))(
  ( (None!10753) (Some!10753 (v!43951 List!49795)) )
))
(declare-fun getValueByKey!740 (List!49796 (_ BitVec 64)) Option!10754)

(assert (=> d!1343610 (= (getValueByKey!740 lt!1629598 (_1!28058 lt!1629505)) (Some!10753 (_2!28058 lt!1629505)))))

(declare-fun lemmaContainsTupThenGetReturnValue!471 (List!49796 (_ BitVec 64) List!49795) Unit!82673)

(assert (=> d!1343610 (= lt!1629597 (lemmaContainsTupThenGetReturnValue!471 lt!1629598 (_1!28058 lt!1629505) (_2!28058 lt!1629505)))))

(declare-fun insertStrictlySorted!274 (List!49796 (_ BitVec 64) List!49795) List!49796)

(assert (=> d!1343610 (= lt!1629598 (insertStrictlySorted!274 (toList!3561 lm!1616) (_1!28058 lt!1629505) (_2!28058 lt!1629505)))))

(assert (=> d!1343610 (= (+!1143 lm!1616 lt!1629505) lt!1629600)))

(declare-fun b!4430929 () Bool)

(declare-fun res!1832905 () Bool)

(assert (=> b!4430929 (=> (not res!1832905) (not e!2758913))))

(assert (=> b!4430929 (= res!1832905 (= (getValueByKey!740 (toList!3561 lt!1629600) (_1!28058 lt!1629505)) (Some!10753 (_2!28058 lt!1629505))))))

(declare-fun b!4430930 () Bool)

(declare-fun contains!12203 (List!49796 tuple2!49528) Bool)

(assert (=> b!4430930 (= e!2758913 (contains!12203 (toList!3561 lt!1629600) lt!1629505))))

(assert (= (and d!1343610 res!1832904) b!4430929))

(assert (= (and b!4430929 res!1832905) b!4430930))

(declare-fun m!5115009 () Bool)

(assert (=> d!1343610 m!5115009))

(declare-fun m!5115011 () Bool)

(assert (=> d!1343610 m!5115011))

(declare-fun m!5115013 () Bool)

(assert (=> d!1343610 m!5115013))

(declare-fun m!5115015 () Bool)

(assert (=> d!1343610 m!5115015))

(declare-fun m!5115017 () Bool)

(assert (=> b!4430929 m!5115017))

(declare-fun m!5115019 () Bool)

(assert (=> b!4430930 m!5115019))

(assert (=> b!4430795 d!1343610))

(declare-fun d!1343612 () Bool)

(assert (=> d!1343612 (forall!9618 (toList!3561 (+!1143 lm!1616 (tuple2!49529 hash!366 newBucket!194))) lambda!155230)))

(declare-fun lt!1629603 () Unit!82673)

(declare-fun choose!28045 (ListLongMap!2211 Int (_ BitVec 64) List!49795) Unit!82673)

(assert (=> d!1343612 (= lt!1629603 (choose!28045 lm!1616 lambda!155230 hash!366 newBucket!194))))

(declare-fun e!2758916 () Bool)

(assert (=> d!1343612 e!2758916))

(declare-fun res!1832908 () Bool)

(assert (=> d!1343612 (=> (not res!1832908) (not e!2758916))))

(assert (=> d!1343612 (= res!1832908 (forall!9618 (toList!3561 lm!1616) lambda!155230))))

(assert (=> d!1343612 (= (addValidProp!429 lm!1616 lambda!155230 hash!366 newBucket!194) lt!1629603)))

(declare-fun b!4430934 () Bool)

(assert (=> b!4430934 (= e!2758916 (dynLambda!20864 lambda!155230 (tuple2!49529 hash!366 newBucket!194)))))

(assert (= (and d!1343612 res!1832908) b!4430934))

(declare-fun b_lambda!143641 () Bool)

(assert (=> (not b_lambda!143641) (not b!4430934)))

(declare-fun m!5115021 () Bool)

(assert (=> d!1343612 m!5115021))

(declare-fun m!5115023 () Bool)

(assert (=> d!1343612 m!5115023))

(declare-fun m!5115025 () Bool)

(assert (=> d!1343612 m!5115025))

(assert (=> d!1343612 m!5114885))

(declare-fun m!5115027 () Bool)

(assert (=> b!4430934 m!5115027))

(assert (=> b!4430795 d!1343612))

(declare-fun d!1343614 () Bool)

(declare-fun hash!2204 (Hashable!5181 K!11040) (_ BitVec 64))

(assert (=> d!1343614 (= (hash!2202 hashF!1220 key!3717) (hash!2204 hashF!1220 key!3717))))

(declare-fun bs!759808 () Bool)

(assert (= bs!759808 d!1343614))

(declare-fun m!5115029 () Bool)

(assert (=> bs!759808 m!5115029))

(assert (=> b!4430790 d!1343614))

(declare-fun d!1343616 () Bool)

(assert (=> d!1343616 (= (head!9252 (toList!3561 lt!1629503)) (h!55371 (toList!3561 lt!1629503)))))

(assert (=> b!4430801 d!1343616))

(declare-fun d!1343618 () Bool)

(declare-fun res!1832913 () Bool)

(declare-fun e!2758921 () Bool)

(assert (=> d!1343618 (=> res!1832913 e!2758921)))

(assert (=> d!1343618 (= res!1832913 (not ((_ is Cons!49671) newBucket!194)))))

(assert (=> d!1343618 (= (noDuplicateKeys!787 newBucket!194) e!2758921)))

(declare-fun b!4430939 () Bool)

(declare-fun e!2758922 () Bool)

(assert (=> b!4430939 (= e!2758921 e!2758922)))

(declare-fun res!1832914 () Bool)

(assert (=> b!4430939 (=> (not res!1832914) (not e!2758922))))

(declare-fun containsKey!1169 (List!49795 K!11040) Bool)

(assert (=> b!4430939 (= res!1832914 (not (containsKey!1169 (t!356733 newBucket!194) (_1!28057 (h!55370 newBucket!194)))))))

(declare-fun b!4430940 () Bool)

(assert (=> b!4430940 (= e!2758922 (noDuplicateKeys!787 (t!356733 newBucket!194)))))

(assert (= (and d!1343618 (not res!1832913)) b!4430939))

(assert (= (and b!4430939 res!1832914) b!4430940))

(declare-fun m!5115031 () Bool)

(assert (=> b!4430939 m!5115031))

(declare-fun m!5115033 () Bool)

(assert (=> b!4430940 m!5115033))

(assert (=> b!4430792 d!1343618))

(declare-fun d!1343620 () Bool)

(declare-fun res!1832915 () Bool)

(declare-fun e!2758923 () Bool)

(assert (=> d!1343620 (=> res!1832915 e!2758923)))

(assert (=> d!1343620 (= res!1832915 ((_ is Nil!49672) (toList!3561 lm!1616)))))

(assert (=> d!1343620 (= (forall!9618 (toList!3561 lm!1616) lambda!155230) e!2758923)))

(declare-fun b!4430941 () Bool)

(declare-fun e!2758924 () Bool)

(assert (=> b!4430941 (= e!2758923 e!2758924)))

(declare-fun res!1832916 () Bool)

(assert (=> b!4430941 (=> (not res!1832916) (not e!2758924))))

(assert (=> b!4430941 (= res!1832916 (dynLambda!20864 lambda!155230 (h!55371 (toList!3561 lm!1616))))))

(declare-fun b!4430942 () Bool)

(assert (=> b!4430942 (= e!2758924 (forall!9618 (t!356734 (toList!3561 lm!1616)) lambda!155230))))

(assert (= (and d!1343620 (not res!1832915)) b!4430941))

(assert (= (and b!4430941 res!1832916) b!4430942))

(declare-fun b_lambda!143643 () Bool)

(assert (=> (not b_lambda!143643) (not b!4430941)))

(declare-fun m!5115035 () Bool)

(assert (=> b!4430941 m!5115035))

(declare-fun m!5115037 () Bool)

(assert (=> b!4430942 m!5115037))

(assert (=> start!432668 d!1343620))

(declare-fun d!1343622 () Bool)

(declare-fun isStrictlySorted!246 (List!49796) Bool)

(assert (=> d!1343622 (= (inv!65226 lm!1616) (isStrictlySorted!246 (toList!3561 lm!1616)))))

(declare-fun bs!759809 () Bool)

(assert (= bs!759809 d!1343622))

(declare-fun m!5115039 () Bool)

(assert (=> bs!759809 m!5115039))

(assert (=> start!432668 d!1343622))

(declare-fun d!1343624 () Bool)

(declare-fun get!16192 (Option!10754) List!49795)

(assert (=> d!1343624 (= (apply!11639 lm!1616 hash!366) (get!16192 (getValueByKey!740 (toList!3561 lm!1616) hash!366)))))

(declare-fun bs!759810 () Bool)

(assert (= bs!759810 d!1343624))

(declare-fun m!5115041 () Bool)

(assert (=> bs!759810 m!5115041))

(assert (=> bs!759810 m!5115041))

(declare-fun m!5115043 () Bool)

(assert (=> bs!759810 m!5115043))

(assert (=> b!4430803 d!1343624))

(assert (=> b!4430798 d!1343620))

(declare-fun bs!759811 () Bool)

(declare-fun d!1343626 () Bool)

(assert (= bs!759811 (and d!1343626 start!432668)))

(declare-fun lambda!155245 () Int)

(assert (=> bs!759811 (not (= lambda!155245 lambda!155230))))

(declare-fun bs!759812 () Bool)

(assert (= bs!759812 (and d!1343626 d!1343594)))

(assert (=> bs!759812 (not (= lambda!155245 lambda!155242))))

(assert (=> d!1343626 true))

(assert (=> d!1343626 (= (allKeysSameHashInMap!893 lm!1616 hashF!1220) (forall!9618 (toList!3561 lm!1616) lambda!155245))))

(declare-fun bs!759813 () Bool)

(assert (= bs!759813 d!1343626))

(declare-fun m!5115045 () Bool)

(assert (=> bs!759813 m!5115045))

(assert (=> b!4430793 d!1343626))

(declare-fun d!1343628 () Bool)

(declare-fun e!2758930 () Bool)

(assert (=> d!1343628 e!2758930))

(declare-fun res!1832919 () Bool)

(assert (=> d!1343628 (=> res!1832919 e!2758930)))

(declare-fun lt!1629614 () Bool)

(assert (=> d!1343628 (= res!1832919 (not lt!1629614))))

(declare-fun lt!1629612 () Bool)

(assert (=> d!1343628 (= lt!1629614 lt!1629612)))

(declare-fun lt!1629613 () Unit!82673)

(declare-fun e!2758929 () Unit!82673)

(assert (=> d!1343628 (= lt!1629613 e!2758929)))

(declare-fun c!754145 () Bool)

(assert (=> d!1343628 (= c!754145 lt!1629612)))

(declare-fun containsKey!1170 (List!49796 (_ BitVec 64)) Bool)

(assert (=> d!1343628 (= lt!1629612 (containsKey!1170 (toList!3561 lm!1616) hash!366))))

(assert (=> d!1343628 (= (contains!12198 lm!1616 hash!366) lt!1629614)))

(declare-fun b!4430951 () Bool)

(declare-fun lt!1629615 () Unit!82673)

(assert (=> b!4430951 (= e!2758929 lt!1629615)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!649 (List!49796 (_ BitVec 64)) Unit!82673)

(assert (=> b!4430951 (= lt!1629615 (lemmaContainsKeyImpliesGetValueByKeyDefined!649 (toList!3561 lm!1616) hash!366))))

(declare-fun isDefined!8046 (Option!10754) Bool)

(assert (=> b!4430951 (isDefined!8046 (getValueByKey!740 (toList!3561 lm!1616) hash!366))))

(declare-fun b!4430952 () Bool)

(declare-fun Unit!82680 () Unit!82673)

(assert (=> b!4430952 (= e!2758929 Unit!82680)))

(declare-fun b!4430953 () Bool)

(assert (=> b!4430953 (= e!2758930 (isDefined!8046 (getValueByKey!740 (toList!3561 lm!1616) hash!366)))))

(assert (= (and d!1343628 c!754145) b!4430951))

(assert (= (and d!1343628 (not c!754145)) b!4430952))

(assert (= (and d!1343628 (not res!1832919)) b!4430953))

(declare-fun m!5115047 () Bool)

(assert (=> d!1343628 m!5115047))

(declare-fun m!5115049 () Bool)

(assert (=> b!4430951 m!5115049))

(assert (=> b!4430951 m!5115041))

(assert (=> b!4430951 m!5115041))

(declare-fun m!5115051 () Bool)

(assert (=> b!4430951 m!5115051))

(assert (=> b!4430953 m!5115041))

(assert (=> b!4430953 m!5115041))

(assert (=> b!4430953 m!5115051))

(assert (=> b!4430796 d!1343628))

(declare-fun d!1343630 () Bool)

(assert (=> d!1343630 true))

(assert (=> d!1343630 true))

(declare-fun lambda!155248 () Int)

(declare-fun forall!9620 (List!49795 Int) Bool)

(assert (=> d!1343630 (= (allKeysSameHash!747 newBucket!194 hash!366 hashF!1220) (forall!9620 newBucket!194 lambda!155248))))

(declare-fun bs!759814 () Bool)

(assert (= bs!759814 d!1343630))

(declare-fun m!5115053 () Bool)

(assert (=> bs!759814 m!5115053))

(assert (=> b!4430797 d!1343630))

(declare-fun b!4430962 () Bool)

(declare-fun e!2758933 () Bool)

(declare-fun tp!1333578 () Bool)

(declare-fun tp!1333579 () Bool)

(assert (=> b!4430962 (= e!2758933 (and tp!1333578 tp!1333579))))

(assert (=> b!4430791 (= tp!1333564 e!2758933)))

(assert (= (and b!4430791 ((_ is Cons!49672) (toList!3561 lm!1616))) b!4430962))

(declare-fun tp!1333582 () Bool)

(declare-fun b!4430967 () Bool)

(declare-fun e!2758936 () Bool)

(assert (=> b!4430967 (= e!2758936 (and tp_is_empty!26395 tp_is_empty!26393 tp!1333582))))

(assert (=> b!4430802 (= tp!1333563 e!2758936)))

(assert (= (and b!4430802 ((_ is Cons!49671) (t!356733 newBucket!194))) b!4430967))

(declare-fun b_lambda!143645 () Bool)

(assert (= b_lambda!143639 (or start!432668 b_lambda!143645)))

(declare-fun bs!759815 () Bool)

(declare-fun d!1343632 () Bool)

(assert (= bs!759815 (and d!1343632 start!432668)))

(assert (=> bs!759815 (= (dynLambda!20864 lambda!155230 (h!55371 (toList!3561 lt!1629503))) (noDuplicateKeys!787 (_2!28058 (h!55371 (toList!3561 lt!1629503)))))))

(declare-fun m!5115055 () Bool)

(assert (=> bs!759815 m!5115055))

(assert (=> b!4430923 d!1343632))

(declare-fun b_lambda!143647 () Bool)

(assert (= b_lambda!143641 (or start!432668 b_lambda!143647)))

(declare-fun bs!759816 () Bool)

(declare-fun d!1343634 () Bool)

(assert (= bs!759816 (and d!1343634 start!432668)))

(assert (=> bs!759816 (= (dynLambda!20864 lambda!155230 (tuple2!49529 hash!366 newBucket!194)) (noDuplicateKeys!787 (_2!28058 (tuple2!49529 hash!366 newBucket!194))))))

(declare-fun m!5115057 () Bool)

(assert (=> bs!759816 m!5115057))

(assert (=> b!4430934 d!1343634))

(declare-fun b_lambda!143649 () Bool)

(assert (= b_lambda!143643 (or start!432668 b_lambda!143649)))

(declare-fun bs!759817 () Bool)

(declare-fun d!1343636 () Bool)

(assert (= bs!759817 (and d!1343636 start!432668)))

(assert (=> bs!759817 (= (dynLambda!20864 lambda!155230 (h!55371 (toList!3561 lm!1616))) (noDuplicateKeys!787 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))

(declare-fun m!5115059 () Bool)

(assert (=> bs!759817 m!5115059))

(assert (=> b!4430941 d!1343636))

(check-sat (not b!4430942) (not d!1343614) (not b!4430967) (not bs!759816) (not d!1343594) (not b!4430924) (not b!4430929) (not b_lambda!143649) (not b!4430962) (not d!1343630) (not b!4430879) (not b!4430880) (not bs!759817) (not b!4430953) (not b!4430884) (not d!1343612) (not d!1343622) (not b!4430885) (not d!1343624) tp_is_empty!26393 (not d!1343626) tp_is_empty!26395 (not b_lambda!143647) (not bs!759815) (not b!4430917) (not d!1343580) (not b!4430881) (not b!4430951) (not bm!308287) (not b!4430930) (not b!4430939) (not b!4430878) (not b!4430940) (not d!1343628) (not b!4430882) (not b_lambda!143645) (not d!1343610))
(check-sat)
(get-model)

(declare-fun d!1343654 () Bool)

(declare-fun res!1832944 () Bool)

(declare-fun e!2758963 () Bool)

(assert (=> d!1343654 (=> res!1832944 e!2758963)))

(assert (=> d!1343654 (= res!1832944 ((_ is Nil!49672) (t!356734 (toList!3561 lm!1616))))))

(assert (=> d!1343654 (= (forall!9618 (t!356734 (toList!3561 lm!1616)) lambda!155230) e!2758963)))

(declare-fun b!4430996 () Bool)

(declare-fun e!2758964 () Bool)

(assert (=> b!4430996 (= e!2758963 e!2758964)))

(declare-fun res!1832945 () Bool)

(assert (=> b!4430996 (=> (not res!1832945) (not e!2758964))))

(assert (=> b!4430996 (= res!1832945 (dynLambda!20864 lambda!155230 (h!55371 (t!356734 (toList!3561 lm!1616)))))))

(declare-fun b!4430997 () Bool)

(assert (=> b!4430997 (= e!2758964 (forall!9618 (t!356734 (t!356734 (toList!3561 lm!1616))) lambda!155230))))

(assert (= (and d!1343654 (not res!1832944)) b!4430996))

(assert (= (and b!4430996 res!1832945) b!4430997))

(declare-fun b_lambda!143657 () Bool)

(assert (=> (not b_lambda!143657) (not b!4430996)))

(declare-fun m!5115085 () Bool)

(assert (=> b!4430996 m!5115085))

(declare-fun m!5115087 () Bool)

(assert (=> b!4430997 m!5115087))

(assert (=> b!4430942 d!1343654))

(declare-fun d!1343656 () Bool)

(declare-fun res!1832948 () Bool)

(declare-fun e!2758967 () Bool)

(assert (=> d!1343656 (=> res!1832948 e!2758967)))

(assert (=> d!1343656 (= res!1832948 ((_ is Nil!49672) (toList!3561 (+!1143 lm!1616 (tuple2!49529 hash!366 newBucket!194)))))))

(assert (=> d!1343656 (= (forall!9618 (toList!3561 (+!1143 lm!1616 (tuple2!49529 hash!366 newBucket!194))) lambda!155230) e!2758967)))

(declare-fun b!4430998 () Bool)

(declare-fun e!2758968 () Bool)

(assert (=> b!4430998 (= e!2758967 e!2758968)))

(declare-fun res!1832949 () Bool)

(assert (=> b!4430998 (=> (not res!1832949) (not e!2758968))))

(assert (=> b!4430998 (= res!1832949 (dynLambda!20864 lambda!155230 (h!55371 (toList!3561 (+!1143 lm!1616 (tuple2!49529 hash!366 newBucket!194))))))))

(declare-fun b!4430999 () Bool)

(assert (=> b!4430999 (= e!2758968 (forall!9618 (t!356734 (toList!3561 (+!1143 lm!1616 (tuple2!49529 hash!366 newBucket!194)))) lambda!155230))))

(assert (= (and d!1343656 (not res!1832948)) b!4430998))

(assert (= (and b!4430998 res!1832949) b!4430999))

(declare-fun b_lambda!143659 () Bool)

(assert (=> (not b_lambda!143659) (not b!4430998)))

(declare-fun m!5115089 () Bool)

(assert (=> b!4430998 m!5115089))

(declare-fun m!5115091 () Bool)

(assert (=> b!4430999 m!5115091))

(assert (=> d!1343612 d!1343656))

(declare-fun d!1343658 () Bool)

(declare-fun e!2758969 () Bool)

(assert (=> d!1343658 e!2758969))

(declare-fun res!1832952 () Bool)

(assert (=> d!1343658 (=> (not res!1832952) (not e!2758969))))

(declare-fun lt!1629661 () ListLongMap!2211)

(assert (=> d!1343658 (= res!1832952 (contains!12198 lt!1629661 (_1!28058 (tuple2!49529 hash!366 newBucket!194))))))

(declare-fun lt!1629659 () List!49796)

(assert (=> d!1343658 (= lt!1629661 (ListLongMap!2212 lt!1629659))))

(declare-fun lt!1629660 () Unit!82673)

(declare-fun lt!1629658 () Unit!82673)

(assert (=> d!1343658 (= lt!1629660 lt!1629658)))

(assert (=> d!1343658 (= (getValueByKey!740 lt!1629659 (_1!28058 (tuple2!49529 hash!366 newBucket!194))) (Some!10753 (_2!28058 (tuple2!49529 hash!366 newBucket!194))))))

(assert (=> d!1343658 (= lt!1629658 (lemmaContainsTupThenGetReturnValue!471 lt!1629659 (_1!28058 (tuple2!49529 hash!366 newBucket!194)) (_2!28058 (tuple2!49529 hash!366 newBucket!194))))))

(assert (=> d!1343658 (= lt!1629659 (insertStrictlySorted!274 (toList!3561 lm!1616) (_1!28058 (tuple2!49529 hash!366 newBucket!194)) (_2!28058 (tuple2!49529 hash!366 newBucket!194))))))

(assert (=> d!1343658 (= (+!1143 lm!1616 (tuple2!49529 hash!366 newBucket!194)) lt!1629661)))

(declare-fun b!4431004 () Bool)

(declare-fun res!1832953 () Bool)

(assert (=> b!4431004 (=> (not res!1832953) (not e!2758969))))

(assert (=> b!4431004 (= res!1832953 (= (getValueByKey!740 (toList!3561 lt!1629661) (_1!28058 (tuple2!49529 hash!366 newBucket!194))) (Some!10753 (_2!28058 (tuple2!49529 hash!366 newBucket!194)))))))

(declare-fun b!4431005 () Bool)

(assert (=> b!4431005 (= e!2758969 (contains!12203 (toList!3561 lt!1629661) (tuple2!49529 hash!366 newBucket!194)))))

(assert (= (and d!1343658 res!1832952) b!4431004))

(assert (= (and b!4431004 res!1832953) b!4431005))

(declare-fun m!5115093 () Bool)

(assert (=> d!1343658 m!5115093))

(declare-fun m!5115095 () Bool)

(assert (=> d!1343658 m!5115095))

(declare-fun m!5115097 () Bool)

(assert (=> d!1343658 m!5115097))

(declare-fun m!5115099 () Bool)

(assert (=> d!1343658 m!5115099))

(declare-fun m!5115101 () Bool)

(assert (=> b!4431004 m!5115101))

(declare-fun m!5115103 () Bool)

(assert (=> b!4431005 m!5115103))

(assert (=> d!1343612 d!1343658))

(declare-fun d!1343660 () Bool)

(assert (=> d!1343660 (forall!9618 (toList!3561 (+!1143 lm!1616 (tuple2!49529 hash!366 newBucket!194))) lambda!155230)))

(assert (=> d!1343660 true))

(declare-fun _$31!403 () Unit!82673)

(assert (=> d!1343660 (= (choose!28045 lm!1616 lambda!155230 hash!366 newBucket!194) _$31!403)))

(declare-fun bs!759821 () Bool)

(assert (= bs!759821 d!1343660))

(assert (=> bs!759821 m!5115021))

(assert (=> bs!759821 m!5115023))

(assert (=> d!1343612 d!1343660))

(assert (=> d!1343612 d!1343620))

(declare-fun d!1343662 () Bool)

(declare-fun res!1832957 () Bool)

(declare-fun e!2758973 () Bool)

(assert (=> d!1343662 (=> res!1832957 e!2758973)))

(assert (=> d!1343662 (= res!1832957 (not ((_ is Cons!49671) (_2!28058 (h!55371 (toList!3561 lt!1629503))))))))

(assert (=> d!1343662 (= (noDuplicateKeys!787 (_2!28058 (h!55371 (toList!3561 lt!1629503)))) e!2758973)))

(declare-fun b!4431014 () Bool)

(declare-fun e!2758974 () Bool)

(assert (=> b!4431014 (= e!2758973 e!2758974)))

(declare-fun res!1832958 () Bool)

(assert (=> b!4431014 (=> (not res!1832958) (not e!2758974))))

(assert (=> b!4431014 (= res!1832958 (not (containsKey!1169 (t!356733 (_2!28058 (h!55371 (toList!3561 lt!1629503)))) (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lt!1629503))))))))))

(declare-fun b!4431015 () Bool)

(assert (=> b!4431015 (= e!2758974 (noDuplicateKeys!787 (t!356733 (_2!28058 (h!55371 (toList!3561 lt!1629503))))))))

(assert (= (and d!1343662 (not res!1832957)) b!4431014))

(assert (= (and b!4431014 res!1832958) b!4431015))

(declare-fun m!5115105 () Bool)

(assert (=> b!4431014 m!5115105))

(declare-fun m!5115107 () Bool)

(assert (=> b!4431015 m!5115107))

(assert (=> bs!759815 d!1343662))

(declare-fun d!1343664 () Bool)

(declare-fun choose!28050 (Hashable!5181 K!11040) (_ BitVec 64))

(assert (=> d!1343664 (= (hash!2204 hashF!1220 key!3717) (choose!28050 hashF!1220 key!3717))))

(declare-fun bs!759825 () Bool)

(assert (= bs!759825 d!1343664))

(declare-fun m!5115109 () Bool)

(assert (=> bs!759825 m!5115109))

(assert (=> d!1343614 d!1343664))

(declare-fun d!1343666 () Bool)

(assert (=> d!1343666 (= (get!16192 (getValueByKey!740 (toList!3561 lm!1616) hash!366)) (v!43951 (getValueByKey!740 (toList!3561 lm!1616) hash!366)))))

(assert (=> d!1343624 d!1343666))

(declare-fun d!1343668 () Bool)

(declare-fun c!754160 () Bool)

(assert (=> d!1343668 (= c!754160 (and ((_ is Cons!49672) (toList!3561 lm!1616)) (= (_1!28058 (h!55371 (toList!3561 lm!1616))) hash!366)))))

(declare-fun e!2758986 () Option!10754)

(assert (=> d!1343668 (= (getValueByKey!740 (toList!3561 lm!1616) hash!366) e!2758986)))

(declare-fun b!4431040 () Bool)

(declare-fun e!2758987 () Option!10754)

(assert (=> b!4431040 (= e!2758987 (getValueByKey!740 (t!356734 (toList!3561 lm!1616)) hash!366))))

(declare-fun b!4431038 () Bool)

(assert (=> b!4431038 (= e!2758986 (Some!10753 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))

(declare-fun b!4431039 () Bool)

(assert (=> b!4431039 (= e!2758986 e!2758987)))

(declare-fun c!754161 () Bool)

(assert (=> b!4431039 (= c!754161 (and ((_ is Cons!49672) (toList!3561 lm!1616)) (not (= (_1!28058 (h!55371 (toList!3561 lm!1616))) hash!366))))))

(declare-fun b!4431041 () Bool)

(assert (=> b!4431041 (= e!2758987 None!10753)))

(assert (= (and d!1343668 c!754160) b!4431038))

(assert (= (and d!1343668 (not c!754160)) b!4431039))

(assert (= (and b!4431039 c!754161) b!4431040))

(assert (= (and b!4431039 (not c!754161)) b!4431041))

(declare-fun m!5115161 () Bool)

(assert (=> b!4431040 m!5115161))

(assert (=> d!1343624 d!1343668))

(declare-fun bs!759850 () Bool)

(declare-fun b!4431201 () Bool)

(assert (= bs!759850 (and b!4431201 d!1343630)))

(declare-fun lambda!155328 () Int)

(assert (=> bs!759850 (not (= lambda!155328 lambda!155248))))

(assert (=> b!4431201 true))

(declare-fun bs!759851 () Bool)

(declare-fun b!4431204 () Bool)

(assert (= bs!759851 (and b!4431204 d!1343630)))

(declare-fun lambda!155329 () Int)

(assert (=> bs!759851 (not (= lambda!155329 lambda!155248))))

(declare-fun bs!759852 () Bool)

(assert (= bs!759852 (and b!4431204 b!4431201)))

(assert (=> bs!759852 (= lambda!155329 lambda!155328)))

(assert (=> b!4431204 true))

(declare-fun lambda!155330 () Int)

(assert (=> bs!759851 (not (= lambda!155330 lambda!155248))))

(declare-fun lt!1629788 () ListMap!2805)

(assert (=> bs!759852 (= (= lt!1629788 (extractMap!848 (t!356734 (toList!3561 lm!1616)))) (= lambda!155330 lambda!155328))))

(assert (=> b!4431204 (= (= lt!1629788 (extractMap!848 (t!356734 (toList!3561 lm!1616)))) (= lambda!155330 lambda!155329))))

(assert (=> b!4431204 true))

(declare-fun bs!759853 () Bool)

(declare-fun d!1343680 () Bool)

(assert (= bs!759853 (and d!1343680 d!1343630)))

(declare-fun lambda!155331 () Int)

(assert (=> bs!759853 (not (= lambda!155331 lambda!155248))))

(declare-fun bs!759854 () Bool)

(assert (= bs!759854 (and d!1343680 b!4431201)))

(declare-fun lt!1629792 () ListMap!2805)

(assert (=> bs!759854 (= (= lt!1629792 (extractMap!848 (t!356734 (toList!3561 lm!1616)))) (= lambda!155331 lambda!155328))))

(declare-fun bs!759855 () Bool)

(assert (= bs!759855 (and d!1343680 b!4431204)))

(assert (=> bs!759855 (= (= lt!1629792 (extractMap!848 (t!356734 (toList!3561 lm!1616)))) (= lambda!155331 lambda!155329))))

(assert (=> bs!759855 (= (= lt!1629792 lt!1629788) (= lambda!155331 lambda!155330))))

(assert (=> d!1343680 true))

(declare-fun b!4431200 () Bool)

(declare-fun e!2759086 () Bool)

(assert (=> b!4431200 (= e!2759086 (invariantList!819 (toList!3562 lt!1629792)))))

(declare-fun e!2759088 () ListMap!2805)

(assert (=> b!4431201 (= e!2759088 (extractMap!848 (t!356734 (toList!3561 lm!1616))))))

(declare-fun lt!1629803 () Unit!82673)

(declare-fun call!308318 () Unit!82673)

(assert (=> b!4431201 (= lt!1629803 call!308318)))

(declare-fun call!308317 () Bool)

(assert (=> b!4431201 call!308317))

(declare-fun lt!1629783 () Unit!82673)

(assert (=> b!4431201 (= lt!1629783 lt!1629803)))

(declare-fun call!308319 () Bool)

(assert (=> b!4431201 call!308319))

(declare-fun lt!1629786 () Unit!82673)

(declare-fun Unit!82693 () Unit!82673)

(assert (=> b!4431201 (= lt!1629786 Unit!82693)))

(declare-fun b!4431202 () Bool)

(declare-fun e!2759087 () Bool)

(assert (=> b!4431202 (= e!2759087 (forall!9620 (toList!3562 (extractMap!848 (t!356734 (toList!3561 lm!1616)))) lambda!155330))))

(declare-fun b!4431203 () Bool)

(declare-fun res!1833042 () Bool)

(assert (=> b!4431203 (=> (not res!1833042) (not e!2759086))))

(assert (=> b!4431203 (= res!1833042 (forall!9620 (toList!3562 (extractMap!848 (t!356734 (toList!3561 lm!1616)))) lambda!155331))))

(assert (=> b!4431204 (= e!2759088 lt!1629788)))

(declare-fun lt!1629790 () ListMap!2805)

(declare-fun +!1145 (ListMap!2805 tuple2!49526) ListMap!2805)

(assert (=> b!4431204 (= lt!1629790 (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))))))

(assert (=> b!4431204 (= lt!1629788 (addToMapMapFromBucket!412 (t!356733 (_2!28058 (h!55371 (toList!3561 lm!1616)))) (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))))

(declare-fun lt!1629787 () Unit!82673)

(assert (=> b!4431204 (= lt!1629787 call!308318)))

(assert (=> b!4431204 (forall!9620 (toList!3562 (extractMap!848 (t!356734 (toList!3561 lm!1616)))) lambda!155329)))

(declare-fun lt!1629793 () Unit!82673)

(assert (=> b!4431204 (= lt!1629793 lt!1629787)))

(assert (=> b!4431204 (forall!9620 (toList!3562 lt!1629790) lambda!155330)))

(declare-fun lt!1629799 () Unit!82673)

(declare-fun Unit!82694 () Unit!82673)

(assert (=> b!4431204 (= lt!1629799 Unit!82694)))

(assert (=> b!4431204 call!308319))

(declare-fun lt!1629784 () Unit!82673)

(declare-fun Unit!82695 () Unit!82673)

(assert (=> b!4431204 (= lt!1629784 Unit!82695)))

(declare-fun lt!1629795 () Unit!82673)

(declare-fun Unit!82696 () Unit!82673)

(assert (=> b!4431204 (= lt!1629795 Unit!82696)))

(declare-fun lt!1629794 () Unit!82673)

(declare-fun forallContained!2111 (List!49795 Int tuple2!49526) Unit!82673)

(assert (=> b!4431204 (= lt!1629794 (forallContained!2111 (toList!3562 lt!1629790) lambda!155330 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))))))

(assert (=> b!4431204 (contains!12199 lt!1629790 (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))))))

(declare-fun lt!1629798 () Unit!82673)

(declare-fun Unit!82697 () Unit!82673)

(assert (=> b!4431204 (= lt!1629798 Unit!82697)))

(assert (=> b!4431204 (contains!12199 lt!1629788 (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))))))

(declare-fun lt!1629801 () Unit!82673)

(declare-fun Unit!82698 () Unit!82673)

(assert (=> b!4431204 (= lt!1629801 Unit!82698)))

(assert (=> b!4431204 (forall!9620 (_2!28058 (h!55371 (toList!3561 lm!1616))) lambda!155330)))

(declare-fun lt!1629800 () Unit!82673)

(declare-fun Unit!82699 () Unit!82673)

(assert (=> b!4431204 (= lt!1629800 Unit!82699)))

(assert (=> b!4431204 (forall!9620 (toList!3562 lt!1629790) lambda!155330)))

(declare-fun lt!1629789 () Unit!82673)

(declare-fun Unit!82700 () Unit!82673)

(assert (=> b!4431204 (= lt!1629789 Unit!82700)))

(declare-fun lt!1629785 () Unit!82673)

(declare-fun Unit!82702 () Unit!82673)

(assert (=> b!4431204 (= lt!1629785 Unit!82702)))

(declare-fun lt!1629797 () Unit!82673)

(declare-fun addForallContainsKeyThenBeforeAdding!187 (ListMap!2805 ListMap!2805 K!11040 V!11286) Unit!82673)

(assert (=> b!4431204 (= lt!1629797 (addForallContainsKeyThenBeforeAdding!187 (extractMap!848 (t!356734 (toList!3561 lm!1616))) lt!1629788 (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))) (_2!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))))

(assert (=> b!4431204 (forall!9620 (toList!3562 (extractMap!848 (t!356734 (toList!3561 lm!1616)))) lambda!155330)))

(declare-fun lt!1629791 () Unit!82673)

(assert (=> b!4431204 (= lt!1629791 lt!1629797)))

(assert (=> b!4431204 call!308317))

(declare-fun lt!1629796 () Unit!82673)

(declare-fun Unit!82703 () Unit!82673)

(assert (=> b!4431204 (= lt!1629796 Unit!82703)))

(declare-fun res!1833043 () Bool)

(assert (=> b!4431204 (= res!1833043 (forall!9620 (_2!28058 (h!55371 (toList!3561 lm!1616))) lambda!155330))))

(assert (=> b!4431204 (=> (not res!1833043) (not e!2759087))))

(assert (=> b!4431204 e!2759087))

(declare-fun lt!1629802 () Unit!82673)

(declare-fun Unit!82706 () Unit!82673)

(assert (=> b!4431204 (= lt!1629802 Unit!82706)))

(assert (=> d!1343680 e!2759086))

(declare-fun res!1833041 () Bool)

(assert (=> d!1343680 (=> (not res!1833041) (not e!2759086))))

(assert (=> d!1343680 (= res!1833041 (forall!9620 (_2!28058 (h!55371 (toList!3561 lm!1616))) lambda!155331))))

(assert (=> d!1343680 (= lt!1629792 e!2759088)))

(declare-fun c!754196 () Bool)

(assert (=> d!1343680 (= c!754196 ((_ is Nil!49671) (_2!28058 (h!55371 (toList!3561 lm!1616)))))))

(assert (=> d!1343680 (noDuplicateKeys!787 (_2!28058 (h!55371 (toList!3561 lm!1616))))))

(assert (=> d!1343680 (= (addToMapMapFromBucket!412 (_2!28058 (h!55371 (toList!3561 lm!1616))) (extractMap!848 (t!356734 (toList!3561 lm!1616)))) lt!1629792)))

(declare-fun bm!308312 () Bool)

(assert (=> bm!308312 (= call!308319 (forall!9620 (ite c!754196 (toList!3562 (extractMap!848 (t!356734 (toList!3561 lm!1616)))) (t!356733 (_2!28058 (h!55371 (toList!3561 lm!1616))))) (ite c!754196 lambda!155328 lambda!155330)))))

(declare-fun bm!308313 () Bool)

(assert (=> bm!308313 (= call!308317 (forall!9620 (toList!3562 (extractMap!848 (t!356734 (toList!3561 lm!1616)))) (ite c!754196 lambda!155328 lambda!155330)))))

(declare-fun bm!308314 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!187 (ListMap!2805) Unit!82673)

(assert (=> bm!308314 (= call!308318 (lemmaContainsAllItsOwnKeys!187 (extractMap!848 (t!356734 (toList!3561 lm!1616)))))))

(assert (= (and d!1343680 c!754196) b!4431201))

(assert (= (and d!1343680 (not c!754196)) b!4431204))

(assert (= (and b!4431204 res!1833043) b!4431202))

(assert (= (or b!4431201 b!4431204) bm!308314))

(assert (= (or b!4431201 b!4431204) bm!308312))

(assert (= (or b!4431201 b!4431204) bm!308313))

(assert (= (and d!1343680 res!1833041) b!4431203))

(assert (= (and b!4431203 res!1833042) b!4431200))

(declare-fun m!5115307 () Bool)

(assert (=> b!4431203 m!5115307))

(declare-fun m!5115309 () Bool)

(assert (=> b!4431202 m!5115309))

(declare-fun m!5115311 () Bool)

(assert (=> d!1343680 m!5115311))

(assert (=> d!1343680 m!5115059))

(declare-fun m!5115313 () Bool)

(assert (=> b!4431200 m!5115313))

(assert (=> bm!308314 m!5115001))

(declare-fun m!5115315 () Bool)

(assert (=> bm!308314 m!5115315))

(declare-fun m!5115317 () Bool)

(assert (=> bm!308312 m!5115317))

(declare-fun m!5115319 () Bool)

(assert (=> b!4431204 m!5115319))

(declare-fun m!5115321 () Bool)

(assert (=> b!4431204 m!5115321))

(declare-fun m!5115323 () Bool)

(assert (=> b!4431204 m!5115323))

(declare-fun m!5115325 () Bool)

(assert (=> b!4431204 m!5115325))

(assert (=> b!4431204 m!5115309))

(assert (=> b!4431204 m!5115001))

(declare-fun m!5115327 () Bool)

(assert (=> b!4431204 m!5115327))

(declare-fun m!5115329 () Bool)

(assert (=> b!4431204 m!5115329))

(assert (=> b!4431204 m!5115325))

(assert (=> b!4431204 m!5115321))

(assert (=> b!4431204 m!5115001))

(declare-fun m!5115331 () Bool)

(assert (=> b!4431204 m!5115331))

(assert (=> b!4431204 m!5115331))

(declare-fun m!5115333 () Bool)

(assert (=> b!4431204 m!5115333))

(declare-fun m!5115335 () Bool)

(assert (=> b!4431204 m!5115335))

(declare-fun m!5115337 () Bool)

(assert (=> bm!308313 m!5115337))

(assert (=> b!4430917 d!1343680))

(declare-fun bs!759856 () Bool)

(declare-fun d!1343746 () Bool)

(assert (= bs!759856 (and d!1343746 start!432668)))

(declare-fun lambda!155332 () Int)

(assert (=> bs!759856 (= lambda!155332 lambda!155230)))

(declare-fun bs!759857 () Bool)

(assert (= bs!759857 (and d!1343746 d!1343594)))

(assert (=> bs!759857 (= lambda!155332 lambda!155242)))

(declare-fun bs!759858 () Bool)

(assert (= bs!759858 (and d!1343746 d!1343626)))

(assert (=> bs!759858 (not (= lambda!155332 lambda!155245))))

(declare-fun lt!1629804 () ListMap!2805)

(assert (=> d!1343746 (invariantList!819 (toList!3562 lt!1629804))))

(declare-fun e!2759089 () ListMap!2805)

(assert (=> d!1343746 (= lt!1629804 e!2759089)))

(declare-fun c!754197 () Bool)

(assert (=> d!1343746 (= c!754197 ((_ is Cons!49672) (t!356734 (toList!3561 lm!1616))))))

(assert (=> d!1343746 (forall!9618 (t!356734 (toList!3561 lm!1616)) lambda!155332)))

(assert (=> d!1343746 (= (extractMap!848 (t!356734 (toList!3561 lm!1616))) lt!1629804)))

(declare-fun b!4431207 () Bool)

(assert (=> b!4431207 (= e!2759089 (addToMapMapFromBucket!412 (_2!28058 (h!55371 (t!356734 (toList!3561 lm!1616)))) (extractMap!848 (t!356734 (t!356734 (toList!3561 lm!1616))))))))

(declare-fun b!4431208 () Bool)

(assert (=> b!4431208 (= e!2759089 (ListMap!2806 Nil!49671))))

(assert (= (and d!1343746 c!754197) b!4431207))

(assert (= (and d!1343746 (not c!754197)) b!4431208))

(declare-fun m!5115339 () Bool)

(assert (=> d!1343746 m!5115339))

(declare-fun m!5115341 () Bool)

(assert (=> d!1343746 m!5115341))

(declare-fun m!5115343 () Bool)

(assert (=> b!4431207 m!5115343))

(assert (=> b!4431207 m!5115343))

(declare-fun m!5115345 () Bool)

(assert (=> b!4431207 m!5115345))

(assert (=> b!4430917 d!1343746))

(declare-fun d!1343748 () Bool)

(declare-fun e!2759091 () Bool)

(assert (=> d!1343748 e!2759091))

(declare-fun res!1833044 () Bool)

(assert (=> d!1343748 (=> res!1833044 e!2759091)))

(declare-fun lt!1629807 () Bool)

(assert (=> d!1343748 (= res!1833044 (not lt!1629807))))

(declare-fun lt!1629805 () Bool)

(assert (=> d!1343748 (= lt!1629807 lt!1629805)))

(declare-fun lt!1629806 () Unit!82673)

(declare-fun e!2759090 () Unit!82673)

(assert (=> d!1343748 (= lt!1629806 e!2759090)))

(declare-fun c!754198 () Bool)

(assert (=> d!1343748 (= c!754198 lt!1629805)))

(assert (=> d!1343748 (= lt!1629805 (containsKey!1170 (toList!3561 lt!1629600) (_1!28058 lt!1629505)))))

(assert (=> d!1343748 (= (contains!12198 lt!1629600 (_1!28058 lt!1629505)) lt!1629807)))

(declare-fun b!4431209 () Bool)

(declare-fun lt!1629808 () Unit!82673)

(assert (=> b!4431209 (= e!2759090 lt!1629808)))

(assert (=> b!4431209 (= lt!1629808 (lemmaContainsKeyImpliesGetValueByKeyDefined!649 (toList!3561 lt!1629600) (_1!28058 lt!1629505)))))

(assert (=> b!4431209 (isDefined!8046 (getValueByKey!740 (toList!3561 lt!1629600) (_1!28058 lt!1629505)))))

(declare-fun b!4431210 () Bool)

(declare-fun Unit!82708 () Unit!82673)

(assert (=> b!4431210 (= e!2759090 Unit!82708)))

(declare-fun b!4431211 () Bool)

(assert (=> b!4431211 (= e!2759091 (isDefined!8046 (getValueByKey!740 (toList!3561 lt!1629600) (_1!28058 lt!1629505))))))

(assert (= (and d!1343748 c!754198) b!4431209))

(assert (= (and d!1343748 (not c!754198)) b!4431210))

(assert (= (and d!1343748 (not res!1833044)) b!4431211))

(declare-fun m!5115347 () Bool)

(assert (=> d!1343748 m!5115347))

(declare-fun m!5115349 () Bool)

(assert (=> b!4431209 m!5115349))

(assert (=> b!4431209 m!5115017))

(assert (=> b!4431209 m!5115017))

(declare-fun m!5115351 () Bool)

(assert (=> b!4431209 m!5115351))

(assert (=> b!4431211 m!5115017))

(assert (=> b!4431211 m!5115017))

(assert (=> b!4431211 m!5115351))

(assert (=> d!1343610 d!1343748))

(declare-fun d!1343750 () Bool)

(declare-fun c!754199 () Bool)

(assert (=> d!1343750 (= c!754199 (and ((_ is Cons!49672) lt!1629598) (= (_1!28058 (h!55371 lt!1629598)) (_1!28058 lt!1629505))))))

(declare-fun e!2759092 () Option!10754)

(assert (=> d!1343750 (= (getValueByKey!740 lt!1629598 (_1!28058 lt!1629505)) e!2759092)))

(declare-fun b!4431214 () Bool)

(declare-fun e!2759093 () Option!10754)

(assert (=> b!4431214 (= e!2759093 (getValueByKey!740 (t!356734 lt!1629598) (_1!28058 lt!1629505)))))

(declare-fun b!4431212 () Bool)

(assert (=> b!4431212 (= e!2759092 (Some!10753 (_2!28058 (h!55371 lt!1629598))))))

(declare-fun b!4431213 () Bool)

(assert (=> b!4431213 (= e!2759092 e!2759093)))

(declare-fun c!754200 () Bool)

(assert (=> b!4431213 (= c!754200 (and ((_ is Cons!49672) lt!1629598) (not (= (_1!28058 (h!55371 lt!1629598)) (_1!28058 lt!1629505)))))))

(declare-fun b!4431215 () Bool)

(assert (=> b!4431215 (= e!2759093 None!10753)))

(assert (= (and d!1343750 c!754199) b!4431212))

(assert (= (and d!1343750 (not c!754199)) b!4431213))

(assert (= (and b!4431213 c!754200) b!4431214))

(assert (= (and b!4431213 (not c!754200)) b!4431215))

(declare-fun m!5115353 () Bool)

(assert (=> b!4431214 m!5115353))

(assert (=> d!1343610 d!1343750))

(declare-fun d!1343752 () Bool)

(assert (=> d!1343752 (= (getValueByKey!740 lt!1629598 (_1!28058 lt!1629505)) (Some!10753 (_2!28058 lt!1629505)))))

(declare-fun lt!1629811 () Unit!82673)

(declare-fun choose!28053 (List!49796 (_ BitVec 64) List!49795) Unit!82673)

(assert (=> d!1343752 (= lt!1629811 (choose!28053 lt!1629598 (_1!28058 lt!1629505) (_2!28058 lt!1629505)))))

(declare-fun e!2759096 () Bool)

(assert (=> d!1343752 e!2759096))

(declare-fun res!1833049 () Bool)

(assert (=> d!1343752 (=> (not res!1833049) (not e!2759096))))

(assert (=> d!1343752 (= res!1833049 (isStrictlySorted!246 lt!1629598))))

(assert (=> d!1343752 (= (lemmaContainsTupThenGetReturnValue!471 lt!1629598 (_1!28058 lt!1629505) (_2!28058 lt!1629505)) lt!1629811)))

(declare-fun b!4431220 () Bool)

(declare-fun res!1833050 () Bool)

(assert (=> b!4431220 (=> (not res!1833050) (not e!2759096))))

(assert (=> b!4431220 (= res!1833050 (containsKey!1170 lt!1629598 (_1!28058 lt!1629505)))))

(declare-fun b!4431221 () Bool)

(assert (=> b!4431221 (= e!2759096 (contains!12203 lt!1629598 (tuple2!49529 (_1!28058 lt!1629505) (_2!28058 lt!1629505))))))

(assert (= (and d!1343752 res!1833049) b!4431220))

(assert (= (and b!4431220 res!1833050) b!4431221))

(assert (=> d!1343752 m!5115011))

(declare-fun m!5115355 () Bool)

(assert (=> d!1343752 m!5115355))

(declare-fun m!5115357 () Bool)

(assert (=> d!1343752 m!5115357))

(declare-fun m!5115359 () Bool)

(assert (=> b!4431220 m!5115359))

(declare-fun m!5115361 () Bool)

(assert (=> b!4431221 m!5115361))

(assert (=> d!1343610 d!1343752))

(declare-fun b!4431242 () Bool)

(declare-fun e!2759111 () List!49796)

(declare-fun call!308327 () List!49796)

(assert (=> b!4431242 (= e!2759111 call!308327)))

(declare-fun b!4431243 () Bool)

(declare-fun e!2759109 () Bool)

(declare-fun lt!1629814 () List!49796)

(assert (=> b!4431243 (= e!2759109 (contains!12203 lt!1629814 (tuple2!49529 (_1!28058 lt!1629505) (_2!28058 lt!1629505))))))

(declare-fun b!4431244 () Bool)

(declare-fun c!754211 () Bool)

(declare-fun e!2759108 () List!49796)

(declare-fun c!754209 () Bool)

(assert (=> b!4431244 (= e!2759108 (ite c!754209 (t!356734 (toList!3561 lm!1616)) (ite c!754211 (Cons!49672 (h!55371 (toList!3561 lm!1616)) (t!356734 (toList!3561 lm!1616))) Nil!49672)))))

(declare-fun b!4431245 () Bool)

(declare-fun e!2759110 () List!49796)

(declare-fun call!308326 () List!49796)

(assert (=> b!4431245 (= e!2759110 call!308326)))

(declare-fun bm!308321 () Bool)

(declare-fun call!308328 () List!49796)

(assert (=> bm!308321 (= call!308328 call!308326)))

(declare-fun b!4431246 () Bool)

(declare-fun e!2759107 () List!49796)

(assert (=> b!4431246 (= e!2759110 e!2759107)))

(assert (=> b!4431246 (= c!754209 (and ((_ is Cons!49672) (toList!3561 lm!1616)) (= (_1!28058 (h!55371 (toList!3561 lm!1616))) (_1!28058 lt!1629505))))))

(declare-fun b!4431247 () Bool)

(declare-fun res!1833056 () Bool)

(assert (=> b!4431247 (=> (not res!1833056) (not e!2759109))))

(assert (=> b!4431247 (= res!1833056 (containsKey!1170 lt!1629814 (_1!28058 lt!1629505)))))

(declare-fun b!4431248 () Bool)

(assert (=> b!4431248 (= e!2759108 (insertStrictlySorted!274 (t!356734 (toList!3561 lm!1616)) (_1!28058 lt!1629505) (_2!28058 lt!1629505)))))

(declare-fun bm!308322 () Bool)

(assert (=> bm!308322 (= call!308327 call!308328)))

(declare-fun d!1343754 () Bool)

(assert (=> d!1343754 e!2759109))

(declare-fun res!1833055 () Bool)

(assert (=> d!1343754 (=> (not res!1833055) (not e!2759109))))

(assert (=> d!1343754 (= res!1833055 (isStrictlySorted!246 lt!1629814))))

(assert (=> d!1343754 (= lt!1629814 e!2759110)))

(declare-fun c!754210 () Bool)

(assert (=> d!1343754 (= c!754210 (and ((_ is Cons!49672) (toList!3561 lm!1616)) (bvslt (_1!28058 (h!55371 (toList!3561 lm!1616))) (_1!28058 lt!1629505))))))

(assert (=> d!1343754 (isStrictlySorted!246 (toList!3561 lm!1616))))

(assert (=> d!1343754 (= (insertStrictlySorted!274 (toList!3561 lm!1616) (_1!28058 lt!1629505) (_2!28058 lt!1629505)) lt!1629814)))

(declare-fun b!4431249 () Bool)

(assert (=> b!4431249 (= e!2759107 call!308328)))

(declare-fun b!4431250 () Bool)

(assert (=> b!4431250 (= c!754211 (and ((_ is Cons!49672) (toList!3561 lm!1616)) (bvsgt (_1!28058 (h!55371 (toList!3561 lm!1616))) (_1!28058 lt!1629505))))))

(assert (=> b!4431250 (= e!2759107 e!2759111)))

(declare-fun bm!308323 () Bool)

(declare-fun $colon$colon!793 (List!49796 tuple2!49528) List!49796)

(assert (=> bm!308323 (= call!308326 ($colon$colon!793 e!2759108 (ite c!754210 (h!55371 (toList!3561 lm!1616)) (tuple2!49529 (_1!28058 lt!1629505) (_2!28058 lt!1629505)))))))

(declare-fun c!754212 () Bool)

(assert (=> bm!308323 (= c!754212 c!754210)))

(declare-fun b!4431251 () Bool)

(assert (=> b!4431251 (= e!2759111 call!308327)))

(assert (= (and d!1343754 c!754210) b!4431245))

(assert (= (and d!1343754 (not c!754210)) b!4431246))

(assert (= (and b!4431246 c!754209) b!4431249))

(assert (= (and b!4431246 (not c!754209)) b!4431250))

(assert (= (and b!4431250 c!754211) b!4431251))

(assert (= (and b!4431250 (not c!754211)) b!4431242))

(assert (= (or b!4431251 b!4431242) bm!308322))

(assert (= (or b!4431249 bm!308322) bm!308321))

(assert (= (or b!4431245 bm!308321) bm!308323))

(assert (= (and bm!308323 c!754212) b!4431248))

(assert (= (and bm!308323 (not c!754212)) b!4431244))

(assert (= (and d!1343754 res!1833055) b!4431247))

(assert (= (and b!4431247 res!1833056) b!4431243))

(declare-fun m!5115363 () Bool)

(assert (=> d!1343754 m!5115363))

(assert (=> d!1343754 m!5115039))

(declare-fun m!5115365 () Bool)

(assert (=> b!4431248 m!5115365))

(declare-fun m!5115367 () Bool)

(assert (=> b!4431247 m!5115367))

(declare-fun m!5115369 () Bool)

(assert (=> bm!308323 m!5115369))

(declare-fun m!5115371 () Bool)

(assert (=> b!4431243 m!5115371))

(assert (=> d!1343610 d!1343754))

(declare-fun d!1343756 () Bool)

(declare-fun noDuplicatedKeys!180 (List!49795) Bool)

(assert (=> d!1343756 (= (invariantList!819 (toList!3562 lt!1629588)) (noDuplicatedKeys!180 (toList!3562 lt!1629588)))))

(declare-fun bs!759859 () Bool)

(assert (= bs!759859 d!1343756))

(declare-fun m!5115373 () Bool)

(assert (=> bs!759859 m!5115373))

(assert (=> d!1343594 d!1343756))

(declare-fun d!1343758 () Bool)

(declare-fun res!1833057 () Bool)

(declare-fun e!2759112 () Bool)

(assert (=> d!1343758 (=> res!1833057 e!2759112)))

(assert (=> d!1343758 (= res!1833057 ((_ is Nil!49672) (toList!3561 lm!1616)))))

(assert (=> d!1343758 (= (forall!9618 (toList!3561 lm!1616) lambda!155242) e!2759112)))

(declare-fun b!4431252 () Bool)

(declare-fun e!2759113 () Bool)

(assert (=> b!4431252 (= e!2759112 e!2759113)))

(declare-fun res!1833058 () Bool)

(assert (=> b!4431252 (=> (not res!1833058) (not e!2759113))))

(assert (=> b!4431252 (= res!1833058 (dynLambda!20864 lambda!155242 (h!55371 (toList!3561 lm!1616))))))

(declare-fun b!4431253 () Bool)

(assert (=> b!4431253 (= e!2759113 (forall!9618 (t!356734 (toList!3561 lm!1616)) lambda!155242))))

(assert (= (and d!1343758 (not res!1833057)) b!4431252))

(assert (= (and b!4431252 res!1833058) b!4431253))

(declare-fun b_lambda!143679 () Bool)

(assert (=> (not b_lambda!143679) (not b!4431252)))

(declare-fun m!5115375 () Bool)

(assert (=> b!4431252 m!5115375))

(declare-fun m!5115377 () Bool)

(assert (=> b!4431253 m!5115377))

(assert (=> d!1343594 d!1343758))

(declare-fun d!1343760 () Bool)

(declare-fun res!1833063 () Bool)

(declare-fun e!2759118 () Bool)

(assert (=> d!1343760 (=> res!1833063 e!2759118)))

(assert (=> d!1343760 (= res!1833063 ((_ is Nil!49671) newBucket!194))))

(assert (=> d!1343760 (= (forall!9620 newBucket!194 lambda!155248) e!2759118)))

(declare-fun b!4431258 () Bool)

(declare-fun e!2759119 () Bool)

(assert (=> b!4431258 (= e!2759118 e!2759119)))

(declare-fun res!1833064 () Bool)

(assert (=> b!4431258 (=> (not res!1833064) (not e!2759119))))

(declare-fun dynLambda!20866 (Int tuple2!49526) Bool)

(assert (=> b!4431258 (= res!1833064 (dynLambda!20866 lambda!155248 (h!55370 newBucket!194)))))

(declare-fun b!4431259 () Bool)

(assert (=> b!4431259 (= e!2759119 (forall!9620 (t!356733 newBucket!194) lambda!155248))))

(assert (= (and d!1343760 (not res!1833063)) b!4431258))

(assert (= (and b!4431258 res!1833064) b!4431259))

(declare-fun b_lambda!143681 () Bool)

(assert (=> (not b_lambda!143681) (not b!4431258)))

(declare-fun m!5115379 () Bool)

(assert (=> b!4431258 m!5115379))

(declare-fun m!5115381 () Bool)

(assert (=> b!4431259 m!5115381))

(assert (=> d!1343630 d!1343760))

(declare-fun d!1343762 () Bool)

(declare-fun lt!1629817 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7979 (List!49798) (InoxSet K!11040))

(assert (=> d!1343762 (= lt!1629817 (select (content!7979 (keys!16980 (extractMap!848 (toList!3561 lm!1616)))) key!3717))))

(declare-fun e!2759124 () Bool)

(assert (=> d!1343762 (= lt!1629817 e!2759124)))

(declare-fun res!1833070 () Bool)

(assert (=> d!1343762 (=> (not res!1833070) (not e!2759124))))

(assert (=> d!1343762 (= res!1833070 ((_ is Cons!49674) (keys!16980 (extractMap!848 (toList!3561 lm!1616)))))))

(assert (=> d!1343762 (= (contains!12202 (keys!16980 (extractMap!848 (toList!3561 lm!1616))) key!3717) lt!1629817)))

(declare-fun b!4431264 () Bool)

(declare-fun e!2759125 () Bool)

(assert (=> b!4431264 (= e!2759124 e!2759125)))

(declare-fun res!1833069 () Bool)

(assert (=> b!4431264 (=> res!1833069 e!2759125)))

(assert (=> b!4431264 (= res!1833069 (= (h!55375 (keys!16980 (extractMap!848 (toList!3561 lm!1616)))) key!3717))))

(declare-fun b!4431265 () Bool)

(assert (=> b!4431265 (= e!2759125 (contains!12202 (t!356736 (keys!16980 (extractMap!848 (toList!3561 lm!1616)))) key!3717))))

(assert (= (and d!1343762 res!1833070) b!4431264))

(assert (= (and b!4431264 (not res!1833069)) b!4431265))

(assert (=> d!1343762 m!5114955))

(declare-fun m!5115383 () Bool)

(assert (=> d!1343762 m!5115383))

(declare-fun m!5115385 () Bool)

(assert (=> d!1343762 m!5115385))

(declare-fun m!5115387 () Bool)

(assert (=> b!4431265 m!5115387))

(assert (=> b!4430885 d!1343762))

(declare-fun b!4431273 () Bool)

(assert (=> b!4431273 true))

(declare-fun d!1343764 () Bool)

(declare-fun e!2759128 () Bool)

(assert (=> d!1343764 e!2759128))

(declare-fun res!1833077 () Bool)

(assert (=> d!1343764 (=> (not res!1833077) (not e!2759128))))

(declare-fun lt!1629820 () List!49798)

(declare-fun noDuplicate!664 (List!49798) Bool)

(assert (=> d!1343764 (= res!1833077 (noDuplicate!664 lt!1629820))))

(assert (=> d!1343764 (= lt!1629820 (getKeysList!266 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))))

(assert (=> d!1343764 (= (keys!16980 (extractMap!848 (toList!3561 lm!1616))) lt!1629820)))

(declare-fun b!4431272 () Bool)

(declare-fun res!1833078 () Bool)

(assert (=> b!4431272 (=> (not res!1833078) (not e!2759128))))

(declare-fun length!184 (List!49798) Int)

(declare-fun length!185 (List!49795) Int)

(assert (=> b!4431272 (= res!1833078 (= (length!184 lt!1629820) (length!185 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))))))

(declare-fun res!1833079 () Bool)

(assert (=> b!4431273 (=> (not res!1833079) (not e!2759128))))

(declare-fun lambda!155337 () Int)

(declare-fun forall!9622 (List!49798 Int) Bool)

(assert (=> b!4431273 (= res!1833079 (forall!9622 lt!1629820 lambda!155337))))

(declare-fun lambda!155338 () Int)

(declare-fun b!4431274 () Bool)

(declare-fun map!10855 (List!49795 Int) List!49798)

(assert (=> b!4431274 (= e!2759128 (= (content!7979 lt!1629820) (content!7979 (map!10855 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) lambda!155338))))))

(assert (= (and d!1343764 res!1833077) b!4431272))

(assert (= (and b!4431272 res!1833078) b!4431273))

(assert (= (and b!4431273 res!1833079) b!4431274))

(declare-fun m!5115389 () Bool)

(assert (=> d!1343764 m!5115389))

(assert (=> d!1343764 m!5114967))

(declare-fun m!5115391 () Bool)

(assert (=> b!4431272 m!5115391))

(declare-fun m!5115393 () Bool)

(assert (=> b!4431272 m!5115393))

(declare-fun m!5115395 () Bool)

(assert (=> b!4431273 m!5115395))

(declare-fun m!5115397 () Bool)

(assert (=> b!4431274 m!5115397))

(declare-fun m!5115399 () Bool)

(assert (=> b!4431274 m!5115399))

(assert (=> b!4431274 m!5115399))

(declare-fun m!5115401 () Bool)

(assert (=> b!4431274 m!5115401))

(assert (=> b!4430885 d!1343764))

(declare-fun bs!759860 () Bool)

(declare-fun b!4431296 () Bool)

(assert (= bs!759860 (and b!4431296 b!4431273)))

(declare-fun lambda!155347 () Int)

(assert (=> bs!759860 (= (= (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) (= lambda!155347 lambda!155337))))

(assert (=> b!4431296 true))

(declare-fun bs!759861 () Bool)

(declare-fun b!4431297 () Bool)

(assert (= bs!759861 (and b!4431297 b!4431273)))

(declare-fun lambda!155348 () Int)

(assert (=> bs!759861 (= (= (Cons!49671 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) (= lambda!155348 lambda!155337))))

(declare-fun bs!759862 () Bool)

(assert (= bs!759862 (and b!4431297 b!4431296)))

(assert (=> bs!759862 (= (= (Cons!49671 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) (= lambda!155348 lambda!155347))))

(assert (=> b!4431297 true))

(declare-fun bs!759863 () Bool)

(declare-fun b!4431295 () Bool)

(assert (= bs!759863 (and b!4431295 b!4431273)))

(declare-fun lambda!155349 () Int)

(assert (=> bs!759863 (= lambda!155349 lambda!155337)))

(declare-fun bs!759864 () Bool)

(assert (= bs!759864 (and b!4431295 b!4431296)))

(assert (=> bs!759864 (= (= (toList!3562 (extractMap!848 (toList!3561 lm!1616))) (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) (= lambda!155349 lambda!155347))))

(declare-fun bs!759865 () Bool)

(assert (= bs!759865 (and b!4431295 b!4431297)))

(assert (=> bs!759865 (= (= (toList!3562 (extractMap!848 (toList!3561 lm!1616))) (Cons!49671 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))) (= lambda!155349 lambda!155348))))

(assert (=> b!4431295 true))

(declare-fun bs!759866 () Bool)

(declare-fun b!4431298 () Bool)

(assert (= bs!759866 (and b!4431298 b!4431274)))

(declare-fun lambda!155350 () Int)

(assert (=> bs!759866 (= lambda!155350 lambda!155338)))

(declare-fun res!1833088 () Bool)

(declare-fun e!2759137 () Bool)

(assert (=> b!4431295 (=> (not res!1833088) (not e!2759137))))

(declare-fun lt!1629840 () List!49798)

(assert (=> b!4431295 (= res!1833088 (forall!9622 lt!1629840 lambda!155349))))

(assert (=> b!4431296 false))

(declare-fun lt!1629835 () Unit!82673)

(declare-fun forallContained!2113 (List!49798 Int K!11040) Unit!82673)

(assert (=> b!4431296 (= lt!1629835 (forallContained!2113 (getKeysList!266 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) lambda!155347 (_1!28057 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))))))

(declare-fun e!2759139 () Unit!82673)

(declare-fun Unit!82709 () Unit!82673)

(assert (=> b!4431296 (= e!2759139 Unit!82709)))

(declare-fun e!2759138 () List!49798)

(assert (=> b!4431297 (= e!2759138 (Cons!49674 (_1!28057 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) (getKeysList!266 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))))))

(declare-fun c!754219 () Bool)

(assert (=> b!4431297 (= c!754219 (containsKey!1168 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) (_1!28057 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))))))

(declare-fun lt!1629841 () Unit!82673)

(declare-fun e!2759140 () Unit!82673)

(assert (=> b!4431297 (= lt!1629841 e!2759140)))

(declare-fun c!754220 () Bool)

(assert (=> b!4431297 (= c!754220 (contains!12202 (getKeysList!266 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) (_1!28057 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))))))

(declare-fun lt!1629837 () Unit!82673)

(assert (=> b!4431297 (= lt!1629837 e!2759139)))

(declare-fun lt!1629836 () List!49798)

(assert (=> b!4431297 (= lt!1629836 (getKeysList!266 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))))))

(declare-fun lt!1629839 () Unit!82673)

(declare-fun lemmaForallContainsAddHeadPreserves!86 (List!49795 List!49798 tuple2!49526) Unit!82673)

(assert (=> b!4431297 (= lt!1629839 (lemmaForallContainsAddHeadPreserves!86 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) lt!1629836 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))))))

(assert (=> b!4431297 (forall!9622 lt!1629836 lambda!155348)))

(declare-fun lt!1629838 () Unit!82673)

(assert (=> b!4431297 (= lt!1629838 lt!1629839)))

(declare-fun d!1343766 () Bool)

(assert (=> d!1343766 e!2759137))

(declare-fun res!1833087 () Bool)

(assert (=> d!1343766 (=> (not res!1833087) (not e!2759137))))

(assert (=> d!1343766 (= res!1833087 (noDuplicate!664 lt!1629840))))

(assert (=> d!1343766 (= lt!1629840 e!2759138)))

(declare-fun c!754221 () Bool)

(assert (=> d!1343766 (= c!754221 ((_ is Cons!49671) (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))))

(assert (=> d!1343766 (invariantList!819 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))))

(assert (=> d!1343766 (= (getKeysList!266 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) lt!1629840)))

(assert (=> b!4431298 (= e!2759137 (= (content!7979 lt!1629840) (content!7979 (map!10855 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) lambda!155350))))))

(declare-fun b!4431299 () Bool)

(assert (=> b!4431299 false))

(declare-fun Unit!82710 () Unit!82673)

(assert (=> b!4431299 (= e!2759140 Unit!82710)))

(declare-fun b!4431300 () Bool)

(declare-fun Unit!82711 () Unit!82673)

(assert (=> b!4431300 (= e!2759140 Unit!82711)))

(declare-fun b!4431301 () Bool)

(assert (=> b!4431301 (= e!2759138 Nil!49674)))

(declare-fun b!4431302 () Bool)

(declare-fun Unit!82712 () Unit!82673)

(assert (=> b!4431302 (= e!2759139 Unit!82712)))

(declare-fun b!4431303 () Bool)

(declare-fun res!1833086 () Bool)

(assert (=> b!4431303 (=> (not res!1833086) (not e!2759137))))

(assert (=> b!4431303 (= res!1833086 (= (length!184 lt!1629840) (length!185 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))))))

(assert (= (and d!1343766 c!754221) b!4431297))

(assert (= (and d!1343766 (not c!754221)) b!4431301))

(assert (= (and b!4431297 c!754219) b!4431299))

(assert (= (and b!4431297 (not c!754219)) b!4431300))

(assert (= (and b!4431297 c!754220) b!4431296))

(assert (= (and b!4431297 (not c!754220)) b!4431302))

(assert (= (and d!1343766 res!1833087) b!4431303))

(assert (= (and b!4431303 res!1833086) b!4431295))

(assert (= (and b!4431295 res!1833088) b!4431298))

(declare-fun m!5115403 () Bool)

(assert (=> b!4431296 m!5115403))

(assert (=> b!4431296 m!5115403))

(declare-fun m!5115405 () Bool)

(assert (=> b!4431296 m!5115405))

(declare-fun m!5115407 () Bool)

(assert (=> d!1343766 m!5115407))

(declare-fun m!5115409 () Bool)

(assert (=> d!1343766 m!5115409))

(declare-fun m!5115411 () Bool)

(assert (=> b!4431298 m!5115411))

(declare-fun m!5115413 () Bool)

(assert (=> b!4431298 m!5115413))

(assert (=> b!4431298 m!5115413))

(declare-fun m!5115415 () Bool)

(assert (=> b!4431298 m!5115415))

(declare-fun m!5115417 () Bool)

(assert (=> b!4431303 m!5115417))

(assert (=> b!4431303 m!5115393))

(assert (=> b!4431297 m!5115403))

(declare-fun m!5115419 () Bool)

(assert (=> b!4431297 m!5115419))

(declare-fun m!5115421 () Bool)

(assert (=> b!4431297 m!5115421))

(assert (=> b!4431297 m!5115403))

(declare-fun m!5115423 () Bool)

(assert (=> b!4431297 m!5115423))

(declare-fun m!5115425 () Bool)

(assert (=> b!4431297 m!5115425))

(declare-fun m!5115427 () Bool)

(assert (=> b!4431295 m!5115427))

(assert (=> b!4430884 d!1343766))

(declare-fun d!1343768 () Bool)

(declare-fun res!1833093 () Bool)

(declare-fun e!2759145 () Bool)

(assert (=> d!1343768 (=> res!1833093 e!2759145)))

(assert (=> d!1343768 (= res!1833093 (and ((_ is Cons!49671) (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) (= (_1!28057 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) key!3717)))))

(assert (=> d!1343768 (= (containsKey!1168 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) key!3717) e!2759145)))

(declare-fun b!4431310 () Bool)

(declare-fun e!2759146 () Bool)

(assert (=> b!4431310 (= e!2759145 e!2759146)))

(declare-fun res!1833094 () Bool)

(assert (=> b!4431310 (=> (not res!1833094) (not e!2759146))))

(assert (=> b!4431310 (= res!1833094 ((_ is Cons!49671) (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))))

(declare-fun b!4431311 () Bool)

(assert (=> b!4431311 (= e!2759146 (containsKey!1168 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) key!3717))))

(assert (= (and d!1343768 (not res!1833093)) b!4431310))

(assert (= (and b!4431310 res!1833094) b!4431311))

(declare-fun m!5115429 () Bool)

(assert (=> b!4431311 m!5115429))

(assert (=> d!1343580 d!1343768))

(declare-fun d!1343770 () Bool)

(declare-fun lt!1629842 () Bool)

(assert (=> d!1343770 (= lt!1629842 (select (content!7979 e!2758881) key!3717))))

(declare-fun e!2759147 () Bool)

(assert (=> d!1343770 (= lt!1629842 e!2759147)))

(declare-fun res!1833096 () Bool)

(assert (=> d!1343770 (=> (not res!1833096) (not e!2759147))))

(assert (=> d!1343770 (= res!1833096 ((_ is Cons!49674) e!2758881))))

(assert (=> d!1343770 (= (contains!12202 e!2758881 key!3717) lt!1629842)))

(declare-fun b!4431312 () Bool)

(declare-fun e!2759148 () Bool)

(assert (=> b!4431312 (= e!2759147 e!2759148)))

(declare-fun res!1833095 () Bool)

(assert (=> b!4431312 (=> res!1833095 e!2759148)))

(assert (=> b!4431312 (= res!1833095 (= (h!55375 e!2758881) key!3717))))

(declare-fun b!4431313 () Bool)

(assert (=> b!4431313 (= e!2759148 (contains!12202 (t!356736 e!2758881) key!3717))))

(assert (= (and d!1343770 res!1833096) b!4431312))

(assert (= (and b!4431312 (not res!1833095)) b!4431313))

(declare-fun m!5115431 () Bool)

(assert (=> d!1343770 m!5115431))

(declare-fun m!5115433 () Bool)

(assert (=> d!1343770 m!5115433))

(declare-fun m!5115435 () Bool)

(assert (=> b!4431313 m!5115435))

(assert (=> bm!308287 d!1343770))

(declare-fun d!1343772 () Bool)

(declare-fun res!1833101 () Bool)

(declare-fun e!2759153 () Bool)

(assert (=> d!1343772 (=> res!1833101 e!2759153)))

(assert (=> d!1343772 (= res!1833101 (and ((_ is Cons!49672) (toList!3561 lm!1616)) (= (_1!28058 (h!55371 (toList!3561 lm!1616))) hash!366)))))

(assert (=> d!1343772 (= (containsKey!1170 (toList!3561 lm!1616) hash!366) e!2759153)))

(declare-fun b!4431318 () Bool)

(declare-fun e!2759154 () Bool)

(assert (=> b!4431318 (= e!2759153 e!2759154)))

(declare-fun res!1833102 () Bool)

(assert (=> b!4431318 (=> (not res!1833102) (not e!2759154))))

(assert (=> b!4431318 (= res!1833102 (and (or (not ((_ is Cons!49672) (toList!3561 lm!1616))) (bvsle (_1!28058 (h!55371 (toList!3561 lm!1616))) hash!366)) ((_ is Cons!49672) (toList!3561 lm!1616)) (bvslt (_1!28058 (h!55371 (toList!3561 lm!1616))) hash!366)))))

(declare-fun b!4431319 () Bool)

(assert (=> b!4431319 (= e!2759154 (containsKey!1170 (t!356734 (toList!3561 lm!1616)) hash!366))))

(assert (= (and d!1343772 (not res!1833101)) b!4431318))

(assert (= (and b!4431318 res!1833102) b!4431319))

(declare-fun m!5115437 () Bool)

(assert (=> b!4431319 m!5115437))

(assert (=> d!1343628 d!1343772))

(declare-fun d!1343774 () Bool)

(declare-fun res!1833103 () Bool)

(declare-fun e!2759155 () Bool)

(assert (=> d!1343774 (=> res!1833103 e!2759155)))

(assert (=> d!1343774 (= res!1833103 (not ((_ is Cons!49671) (_2!28058 (h!55371 (toList!3561 lm!1616))))))))

(assert (=> d!1343774 (= (noDuplicateKeys!787 (_2!28058 (h!55371 (toList!3561 lm!1616)))) e!2759155)))

(declare-fun b!4431320 () Bool)

(declare-fun e!2759156 () Bool)

(assert (=> b!4431320 (= e!2759155 e!2759156)))

(declare-fun res!1833104 () Bool)

(assert (=> b!4431320 (=> (not res!1833104) (not e!2759156))))

(assert (=> b!4431320 (= res!1833104 (not (containsKey!1169 (t!356733 (_2!28058 (h!55371 (toList!3561 lm!1616)))) (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))))))))

(declare-fun b!4431321 () Bool)

(assert (=> b!4431321 (= e!2759156 (noDuplicateKeys!787 (t!356733 (_2!28058 (h!55371 (toList!3561 lm!1616))))))))

(assert (= (and d!1343774 (not res!1833103)) b!4431320))

(assert (= (and b!4431320 res!1833104) b!4431321))

(declare-fun m!5115439 () Bool)

(assert (=> b!4431320 m!5115439))

(declare-fun m!5115441 () Bool)

(assert (=> b!4431321 m!5115441))

(assert (=> bs!759817 d!1343774))

(declare-fun d!1343776 () Bool)

(declare-fun res!1833109 () Bool)

(declare-fun e!2759161 () Bool)

(assert (=> d!1343776 (=> res!1833109 e!2759161)))

(assert (=> d!1343776 (= res!1833109 (or ((_ is Nil!49672) (toList!3561 lm!1616)) ((_ is Nil!49672) (t!356734 (toList!3561 lm!1616)))))))

(assert (=> d!1343776 (= (isStrictlySorted!246 (toList!3561 lm!1616)) e!2759161)))

(declare-fun b!4431326 () Bool)

(declare-fun e!2759162 () Bool)

(assert (=> b!4431326 (= e!2759161 e!2759162)))

(declare-fun res!1833110 () Bool)

(assert (=> b!4431326 (=> (not res!1833110) (not e!2759162))))

(assert (=> b!4431326 (= res!1833110 (bvslt (_1!28058 (h!55371 (toList!3561 lm!1616))) (_1!28058 (h!55371 (t!356734 (toList!3561 lm!1616))))))))

(declare-fun b!4431327 () Bool)

(assert (=> b!4431327 (= e!2759162 (isStrictlySorted!246 (t!356734 (toList!3561 lm!1616))))))

(assert (= (and d!1343776 (not res!1833109)) b!4431326))

(assert (= (and b!4431326 res!1833110) b!4431327))

(declare-fun m!5115443 () Bool)

(assert (=> b!4431327 m!5115443))

(assert (=> d!1343622 d!1343776))

(declare-fun d!1343778 () Bool)

(declare-fun res!1833111 () Bool)

(declare-fun e!2759163 () Bool)

(assert (=> d!1343778 (=> res!1833111 e!2759163)))

(assert (=> d!1343778 (= res!1833111 (not ((_ is Cons!49671) (t!356733 newBucket!194))))))

(assert (=> d!1343778 (= (noDuplicateKeys!787 (t!356733 newBucket!194)) e!2759163)))

(declare-fun b!4431328 () Bool)

(declare-fun e!2759164 () Bool)

(assert (=> b!4431328 (= e!2759163 e!2759164)))

(declare-fun res!1833112 () Bool)

(assert (=> b!4431328 (=> (not res!1833112) (not e!2759164))))

(assert (=> b!4431328 (= res!1833112 (not (containsKey!1169 (t!356733 (t!356733 newBucket!194)) (_1!28057 (h!55370 (t!356733 newBucket!194))))))))

(declare-fun b!4431329 () Bool)

(assert (=> b!4431329 (= e!2759164 (noDuplicateKeys!787 (t!356733 (t!356733 newBucket!194))))))

(assert (= (and d!1343778 (not res!1833111)) b!4431328))

(assert (= (and b!4431328 res!1833112) b!4431329))

(declare-fun m!5115445 () Bool)

(assert (=> b!4431328 m!5115445))

(declare-fun m!5115447 () Bool)

(assert (=> b!4431329 m!5115447))

(assert (=> b!4430940 d!1343778))

(assert (=> b!4430882 d!1343768))

(declare-fun d!1343780 () Bool)

(assert (=> d!1343780 (containsKey!1168 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) key!3717)))

(declare-fun lt!1629845 () Unit!82673)

(declare-fun choose!28054 (List!49795 K!11040) Unit!82673)

(assert (=> d!1343780 (= lt!1629845 (choose!28054 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) key!3717))))

(assert (=> d!1343780 (invariantList!819 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))))

(assert (=> d!1343780 (= (lemmaInGetKeysListThenContainsKey!264 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) key!3717) lt!1629845)))

(declare-fun bs!759867 () Bool)

(assert (= bs!759867 d!1343780))

(assert (=> bs!759867 m!5114957))

(declare-fun m!5115449 () Bool)

(assert (=> bs!759867 m!5115449))

(assert (=> bs!759867 m!5115409))

(assert (=> b!4430882 d!1343780))

(declare-fun d!1343782 () Bool)

(declare-fun res!1833117 () Bool)

(declare-fun e!2759169 () Bool)

(assert (=> d!1343782 (=> res!1833117 e!2759169)))

(assert (=> d!1343782 (= res!1833117 (and ((_ is Cons!49671) (t!356733 newBucket!194)) (= (_1!28057 (h!55370 (t!356733 newBucket!194))) (_1!28057 (h!55370 newBucket!194)))))))

(assert (=> d!1343782 (= (containsKey!1169 (t!356733 newBucket!194) (_1!28057 (h!55370 newBucket!194))) e!2759169)))

(declare-fun b!4431334 () Bool)

(declare-fun e!2759170 () Bool)

(assert (=> b!4431334 (= e!2759169 e!2759170)))

(declare-fun res!1833118 () Bool)

(assert (=> b!4431334 (=> (not res!1833118) (not e!2759170))))

(assert (=> b!4431334 (= res!1833118 ((_ is Cons!49671) (t!356733 newBucket!194)))))

(declare-fun b!4431335 () Bool)

(assert (=> b!4431335 (= e!2759170 (containsKey!1169 (t!356733 (t!356733 newBucket!194)) (_1!28057 (h!55370 newBucket!194))))))

(assert (= (and d!1343782 (not res!1833117)) b!4431334))

(assert (= (and b!4431334 res!1833118) b!4431335))

(declare-fun m!5115451 () Bool)

(assert (=> b!4431335 m!5115451))

(assert (=> b!4430939 d!1343782))

(assert (=> b!4430880 d!1343762))

(assert (=> b!4430880 d!1343764))

(declare-fun d!1343784 () Bool)

(declare-fun isEmpty!28362 (Option!10753) Bool)

(assert (=> d!1343784 (= (isDefined!8045 (getValueByKey!739 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) key!3717)) (not (isEmpty!28362 (getValueByKey!739 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) key!3717))))))

(declare-fun bs!759868 () Bool)

(assert (= bs!759868 d!1343784))

(assert (=> bs!759868 m!5114961))

(declare-fun m!5115453 () Bool)

(assert (=> bs!759868 m!5115453))

(assert (=> b!4430881 d!1343784))

(declare-fun d!1343786 () Bool)

(declare-fun c!754226 () Bool)

(assert (=> d!1343786 (= c!754226 (and ((_ is Cons!49671) (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) (= (_1!28057 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) key!3717)))))

(declare-fun e!2759175 () Option!10753)

(assert (=> d!1343786 (= (getValueByKey!739 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) key!3717) e!2759175)))

(declare-fun b!4431344 () Bool)

(assert (=> b!4431344 (= e!2759175 (Some!10752 (_2!28057 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))))))

(declare-fun b!4431345 () Bool)

(declare-fun e!2759176 () Option!10753)

(assert (=> b!4431345 (= e!2759175 e!2759176)))

(declare-fun c!754227 () Bool)

(assert (=> b!4431345 (= c!754227 (and ((_ is Cons!49671) (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) (not (= (_1!28057 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) key!3717))))))

(declare-fun b!4431347 () Bool)

(assert (=> b!4431347 (= e!2759176 None!10752)))

(declare-fun b!4431346 () Bool)

(assert (=> b!4431346 (= e!2759176 (getValueByKey!739 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) key!3717))))

(assert (= (and d!1343786 c!754226) b!4431344))

(assert (= (and d!1343786 (not c!754226)) b!4431345))

(assert (= (and b!4431345 c!754227) b!4431346))

(assert (= (and b!4431345 (not c!754227)) b!4431347))

(declare-fun m!5115455 () Bool)

(assert (=> b!4431346 m!5115455))

(assert (=> b!4430881 d!1343786))

(declare-fun d!1343788 () Bool)

(declare-fun res!1833119 () Bool)

(declare-fun e!2759177 () Bool)

(assert (=> d!1343788 (=> res!1833119 e!2759177)))

(assert (=> d!1343788 (= res!1833119 ((_ is Nil!49672) (t!356734 (toList!3561 lt!1629503))))))

(assert (=> d!1343788 (= (forall!9618 (t!356734 (toList!3561 lt!1629503)) lambda!155230) e!2759177)))

(declare-fun b!4431348 () Bool)

(declare-fun e!2759178 () Bool)

(assert (=> b!4431348 (= e!2759177 e!2759178)))

(declare-fun res!1833120 () Bool)

(assert (=> b!4431348 (=> (not res!1833120) (not e!2759178))))

(assert (=> b!4431348 (= res!1833120 (dynLambda!20864 lambda!155230 (h!55371 (t!356734 (toList!3561 lt!1629503)))))))

(declare-fun b!4431349 () Bool)

(assert (=> b!4431349 (= e!2759178 (forall!9618 (t!356734 (t!356734 (toList!3561 lt!1629503))) lambda!155230))))

(assert (= (and d!1343788 (not res!1833119)) b!4431348))

(assert (= (and b!4431348 res!1833120) b!4431349))

(declare-fun b_lambda!143683 () Bool)

(assert (=> (not b_lambda!143683) (not b!4431348)))

(declare-fun m!5115457 () Bool)

(assert (=> b!4431348 m!5115457))

(declare-fun m!5115459 () Bool)

(assert (=> b!4431349 m!5115459))

(assert (=> b!4430924 d!1343788))

(declare-fun d!1343790 () Bool)

(declare-fun lt!1629848 () Bool)

(declare-fun content!7980 (List!49796) (InoxSet tuple2!49528))

(assert (=> d!1343790 (= lt!1629848 (select (content!7980 (toList!3561 lt!1629600)) lt!1629505))))

(declare-fun e!2759183 () Bool)

(assert (=> d!1343790 (= lt!1629848 e!2759183)))

(declare-fun res!1833125 () Bool)

(assert (=> d!1343790 (=> (not res!1833125) (not e!2759183))))

(assert (=> d!1343790 (= res!1833125 ((_ is Cons!49672) (toList!3561 lt!1629600)))))

(assert (=> d!1343790 (= (contains!12203 (toList!3561 lt!1629600) lt!1629505) lt!1629848)))

(declare-fun b!4431354 () Bool)

(declare-fun e!2759184 () Bool)

(assert (=> b!4431354 (= e!2759183 e!2759184)))

(declare-fun res!1833126 () Bool)

(assert (=> b!4431354 (=> res!1833126 e!2759184)))

(assert (=> b!4431354 (= res!1833126 (= (h!55371 (toList!3561 lt!1629600)) lt!1629505))))

(declare-fun b!4431355 () Bool)

(assert (=> b!4431355 (= e!2759184 (contains!12203 (t!356734 (toList!3561 lt!1629600)) lt!1629505))))

(assert (= (and d!1343790 res!1833125) b!4431354))

(assert (= (and b!4431354 (not res!1833126)) b!4431355))

(declare-fun m!5115461 () Bool)

(assert (=> d!1343790 m!5115461))

(declare-fun m!5115463 () Bool)

(assert (=> d!1343790 m!5115463))

(declare-fun m!5115465 () Bool)

(assert (=> b!4431355 m!5115465))

(assert (=> b!4430930 d!1343790))

(declare-fun d!1343792 () Bool)

(assert (=> d!1343792 (isDefined!8045 (getValueByKey!739 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) key!3717))))

(declare-fun lt!1629851 () Unit!82673)

(declare-fun choose!28055 (List!49795 K!11040) Unit!82673)

(assert (=> d!1343792 (= lt!1629851 (choose!28055 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) key!3717))))

(assert (=> d!1343792 (invariantList!819 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))))

(assert (=> d!1343792 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!648 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) key!3717) lt!1629851)))

(declare-fun bs!759869 () Bool)

(assert (= bs!759869 d!1343792))

(assert (=> bs!759869 m!5114961))

(assert (=> bs!759869 m!5114961))

(assert (=> bs!759869 m!5114963))

(declare-fun m!5115467 () Bool)

(assert (=> bs!759869 m!5115467))

(assert (=> bs!759869 m!5115409))

(assert (=> b!4430879 d!1343792))

(assert (=> b!4430879 d!1343784))

(assert (=> b!4430879 d!1343786))

(declare-fun d!1343794 () Bool)

(assert (=> d!1343794 (contains!12202 (getKeysList!266 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) key!3717)))

(declare-fun lt!1629854 () Unit!82673)

(declare-fun choose!28056 (List!49795 K!11040) Unit!82673)

(assert (=> d!1343794 (= lt!1629854 (choose!28056 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) key!3717))))

(assert (=> d!1343794 (invariantList!819 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))))

(assert (=> d!1343794 (= (lemmaInListThenGetKeysListContains!263 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) key!3717) lt!1629854)))

(declare-fun bs!759870 () Bool)

(assert (= bs!759870 d!1343794))

(assert (=> bs!759870 m!5114967))

(assert (=> bs!759870 m!5114967))

(declare-fun m!5115469 () Bool)

(assert (=> bs!759870 m!5115469))

(declare-fun m!5115471 () Bool)

(assert (=> bs!759870 m!5115471))

(assert (=> bs!759870 m!5115409))

(assert (=> b!4430879 d!1343794))

(declare-fun d!1343796 () Bool)

(declare-fun res!1833127 () Bool)

(declare-fun e!2759185 () Bool)

(assert (=> d!1343796 (=> res!1833127 e!2759185)))

(assert (=> d!1343796 (= res!1833127 (not ((_ is Cons!49671) (_2!28058 (tuple2!49529 hash!366 newBucket!194)))))))

(assert (=> d!1343796 (= (noDuplicateKeys!787 (_2!28058 (tuple2!49529 hash!366 newBucket!194))) e!2759185)))

(declare-fun b!4431356 () Bool)

(declare-fun e!2759186 () Bool)

(assert (=> b!4431356 (= e!2759185 e!2759186)))

(declare-fun res!1833128 () Bool)

(assert (=> b!4431356 (=> (not res!1833128) (not e!2759186))))

(assert (=> b!4431356 (= res!1833128 (not (containsKey!1169 (t!356733 (_2!28058 (tuple2!49529 hash!366 newBucket!194))) (_1!28057 (h!55370 (_2!28058 (tuple2!49529 hash!366 newBucket!194)))))))))

(declare-fun b!4431357 () Bool)

(assert (=> b!4431357 (= e!2759186 (noDuplicateKeys!787 (t!356733 (_2!28058 (tuple2!49529 hash!366 newBucket!194)))))))

(assert (= (and d!1343796 (not res!1833127)) b!4431356))

(assert (= (and b!4431356 res!1833128) b!4431357))

(declare-fun m!5115473 () Bool)

(assert (=> b!4431356 m!5115473))

(declare-fun m!5115475 () Bool)

(assert (=> b!4431357 m!5115475))

(assert (=> bs!759816 d!1343796))

(declare-fun d!1343798 () Bool)

(declare-fun c!754228 () Bool)

(assert (=> d!1343798 (= c!754228 (and ((_ is Cons!49672) (toList!3561 lt!1629600)) (= (_1!28058 (h!55371 (toList!3561 lt!1629600))) (_1!28058 lt!1629505))))))

(declare-fun e!2759187 () Option!10754)

(assert (=> d!1343798 (= (getValueByKey!740 (toList!3561 lt!1629600) (_1!28058 lt!1629505)) e!2759187)))

(declare-fun b!4431360 () Bool)

(declare-fun e!2759188 () Option!10754)

(assert (=> b!4431360 (= e!2759188 (getValueByKey!740 (t!356734 (toList!3561 lt!1629600)) (_1!28058 lt!1629505)))))

(declare-fun b!4431358 () Bool)

(assert (=> b!4431358 (= e!2759187 (Some!10753 (_2!28058 (h!55371 (toList!3561 lt!1629600)))))))

(declare-fun b!4431359 () Bool)

(assert (=> b!4431359 (= e!2759187 e!2759188)))

(declare-fun c!754229 () Bool)

(assert (=> b!4431359 (= c!754229 (and ((_ is Cons!49672) (toList!3561 lt!1629600)) (not (= (_1!28058 (h!55371 (toList!3561 lt!1629600))) (_1!28058 lt!1629505)))))))

(declare-fun b!4431361 () Bool)

(assert (=> b!4431361 (= e!2759188 None!10753)))

(assert (= (and d!1343798 c!754228) b!4431358))

(assert (= (and d!1343798 (not c!754228)) b!4431359))

(assert (= (and b!4431359 c!754229) b!4431360))

(assert (= (and b!4431359 (not c!754229)) b!4431361))

(declare-fun m!5115477 () Bool)

(assert (=> b!4431360 m!5115477))

(assert (=> b!4430929 d!1343798))

(declare-fun d!1343800 () Bool)

(declare-fun isEmpty!28363 (Option!10754) Bool)

(assert (=> d!1343800 (= (isDefined!8046 (getValueByKey!740 (toList!3561 lm!1616) hash!366)) (not (isEmpty!28363 (getValueByKey!740 (toList!3561 lm!1616) hash!366))))))

(declare-fun bs!759871 () Bool)

(assert (= bs!759871 d!1343800))

(assert (=> bs!759871 m!5115041))

(declare-fun m!5115479 () Bool)

(assert (=> bs!759871 m!5115479))

(assert (=> b!4430953 d!1343800))

(assert (=> b!4430953 d!1343668))

(declare-fun d!1343802 () Bool)

(declare-fun res!1833129 () Bool)

(declare-fun e!2759189 () Bool)

(assert (=> d!1343802 (=> res!1833129 e!2759189)))

(assert (=> d!1343802 (= res!1833129 ((_ is Nil!49672) (toList!3561 lm!1616)))))

(assert (=> d!1343802 (= (forall!9618 (toList!3561 lm!1616) lambda!155245) e!2759189)))

(declare-fun b!4431362 () Bool)

(declare-fun e!2759190 () Bool)

(assert (=> b!4431362 (= e!2759189 e!2759190)))

(declare-fun res!1833130 () Bool)

(assert (=> b!4431362 (=> (not res!1833130) (not e!2759190))))

(assert (=> b!4431362 (= res!1833130 (dynLambda!20864 lambda!155245 (h!55371 (toList!3561 lm!1616))))))

(declare-fun b!4431363 () Bool)

(assert (=> b!4431363 (= e!2759190 (forall!9618 (t!356734 (toList!3561 lm!1616)) lambda!155245))))

(assert (= (and d!1343802 (not res!1833129)) b!4431362))

(assert (= (and b!4431362 res!1833130) b!4431363))

(declare-fun b_lambda!143685 () Bool)

(assert (=> (not b_lambda!143685) (not b!4431362)))

(declare-fun m!5115481 () Bool)

(assert (=> b!4431362 m!5115481))

(declare-fun m!5115483 () Bool)

(assert (=> b!4431363 m!5115483))

(assert (=> d!1343626 d!1343802))

(assert (=> b!4430878 d!1343764))

(declare-fun d!1343804 () Bool)

(assert (=> d!1343804 (isDefined!8046 (getValueByKey!740 (toList!3561 lm!1616) hash!366))))

(declare-fun lt!1629857 () Unit!82673)

(declare-fun choose!28057 (List!49796 (_ BitVec 64)) Unit!82673)

(assert (=> d!1343804 (= lt!1629857 (choose!28057 (toList!3561 lm!1616) hash!366))))

(declare-fun e!2759193 () Bool)

(assert (=> d!1343804 e!2759193))

(declare-fun res!1833133 () Bool)

(assert (=> d!1343804 (=> (not res!1833133) (not e!2759193))))

(assert (=> d!1343804 (= res!1833133 (isStrictlySorted!246 (toList!3561 lm!1616)))))

(assert (=> d!1343804 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!649 (toList!3561 lm!1616) hash!366) lt!1629857)))

(declare-fun b!4431366 () Bool)

(assert (=> b!4431366 (= e!2759193 (containsKey!1170 (toList!3561 lm!1616) hash!366))))

(assert (= (and d!1343804 res!1833133) b!4431366))

(assert (=> d!1343804 m!5115041))

(assert (=> d!1343804 m!5115041))

(assert (=> d!1343804 m!5115051))

(declare-fun m!5115485 () Bool)

(assert (=> d!1343804 m!5115485))

(assert (=> d!1343804 m!5115039))

(assert (=> b!4431366 m!5115047))

(assert (=> b!4430951 d!1343804))

(assert (=> b!4430951 d!1343800))

(assert (=> b!4430951 d!1343668))

(declare-fun b!4431367 () Bool)

(declare-fun tp!1333587 () Bool)

(declare-fun e!2759194 () Bool)

(assert (=> b!4431367 (= e!2759194 (and tp_is_empty!26395 tp_is_empty!26393 tp!1333587))))

(assert (=> b!4430962 (= tp!1333578 e!2759194)))

(assert (= (and b!4430962 ((_ is Cons!49671) (_2!28058 (h!55371 (toList!3561 lm!1616))))) b!4431367))

(declare-fun b!4431368 () Bool)

(declare-fun e!2759195 () Bool)

(declare-fun tp!1333588 () Bool)

(declare-fun tp!1333589 () Bool)

(assert (=> b!4431368 (= e!2759195 (and tp!1333588 tp!1333589))))

(assert (=> b!4430962 (= tp!1333579 e!2759195)))

(assert (= (and b!4430962 ((_ is Cons!49672) (t!356734 (toList!3561 lm!1616)))) b!4431368))

(declare-fun b!4431369 () Bool)

(declare-fun tp!1333590 () Bool)

(declare-fun e!2759196 () Bool)

(assert (=> b!4431369 (= e!2759196 (and tp_is_empty!26395 tp_is_empty!26393 tp!1333590))))

(assert (=> b!4430967 (= tp!1333582 e!2759196)))

(assert (= (and b!4430967 ((_ is Cons!49671) (t!356733 (t!356733 newBucket!194)))) b!4431369))

(declare-fun b_lambda!143687 () Bool)

(assert (= b_lambda!143683 (or start!432668 b_lambda!143687)))

(declare-fun bs!759872 () Bool)

(declare-fun d!1343806 () Bool)

(assert (= bs!759872 (and d!1343806 start!432668)))

(assert (=> bs!759872 (= (dynLambda!20864 lambda!155230 (h!55371 (t!356734 (toList!3561 lt!1629503)))) (noDuplicateKeys!787 (_2!28058 (h!55371 (t!356734 (toList!3561 lt!1629503))))))))

(declare-fun m!5115487 () Bool)

(assert (=> bs!759872 m!5115487))

(assert (=> b!4431348 d!1343806))

(declare-fun b_lambda!143689 () Bool)

(assert (= b_lambda!143681 (or d!1343630 b_lambda!143689)))

(declare-fun bs!759873 () Bool)

(declare-fun d!1343808 () Bool)

(assert (= bs!759873 (and d!1343808 d!1343630)))

(assert (=> bs!759873 (= (dynLambda!20866 lambda!155248 (h!55370 newBucket!194)) (= (hash!2202 hashF!1220 (_1!28057 (h!55370 newBucket!194))) hash!366))))

(declare-fun m!5115489 () Bool)

(assert (=> bs!759873 m!5115489))

(assert (=> b!4431258 d!1343808))

(declare-fun b_lambda!143691 () Bool)

(assert (= b_lambda!143659 (or start!432668 b_lambda!143691)))

(declare-fun bs!759874 () Bool)

(declare-fun d!1343810 () Bool)

(assert (= bs!759874 (and d!1343810 start!432668)))

(assert (=> bs!759874 (= (dynLambda!20864 lambda!155230 (h!55371 (toList!3561 (+!1143 lm!1616 (tuple2!49529 hash!366 newBucket!194))))) (noDuplicateKeys!787 (_2!28058 (h!55371 (toList!3561 (+!1143 lm!1616 (tuple2!49529 hash!366 newBucket!194)))))))))

(declare-fun m!5115491 () Bool)

(assert (=> bs!759874 m!5115491))

(assert (=> b!4430998 d!1343810))

(declare-fun b_lambda!143693 () Bool)

(assert (= b_lambda!143679 (or d!1343594 b_lambda!143693)))

(declare-fun bs!759875 () Bool)

(declare-fun d!1343812 () Bool)

(assert (= bs!759875 (and d!1343812 d!1343594)))

(assert (=> bs!759875 (= (dynLambda!20864 lambda!155242 (h!55371 (toList!3561 lm!1616))) (noDuplicateKeys!787 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))

(assert (=> bs!759875 m!5115059))

(assert (=> b!4431252 d!1343812))

(declare-fun b_lambda!143695 () Bool)

(assert (= b_lambda!143657 (or start!432668 b_lambda!143695)))

(declare-fun bs!759876 () Bool)

(declare-fun d!1343814 () Bool)

(assert (= bs!759876 (and d!1343814 start!432668)))

(assert (=> bs!759876 (= (dynLambda!20864 lambda!155230 (h!55371 (t!356734 (toList!3561 lm!1616)))) (noDuplicateKeys!787 (_2!28058 (h!55371 (t!356734 (toList!3561 lm!1616))))))))

(declare-fun m!5115493 () Bool)

(assert (=> bs!759876 m!5115493))

(assert (=> b!4430996 d!1343814))

(declare-fun b_lambda!143697 () Bool)

(assert (= b_lambda!143685 (or d!1343626 b_lambda!143697)))

(declare-fun bs!759877 () Bool)

(declare-fun d!1343816 () Bool)

(assert (= bs!759877 (and d!1343816 d!1343626)))

(assert (=> bs!759877 (= (dynLambda!20864 lambda!155245 (h!55371 (toList!3561 lm!1616))) (allKeysSameHash!747 (_2!28058 (h!55371 (toList!3561 lm!1616))) (_1!28058 (h!55371 (toList!3561 lm!1616))) hashF!1220))))

(declare-fun m!5115495 () Bool)

(assert (=> bs!759877 m!5115495))

(assert (=> b!4431362 d!1343816))

(check-sat (not b!4431303) (not b!4431349) (not b!4431207) (not b!4431014) (not b!4431311) (not b!4431355) (not b_lambda!143695) (not b!4431004) (not b!4431357) (not b!4431367) (not bs!759876) (not b!4430997) (not b!4431272) (not b!4431368) (not b!4431040) (not d!1343800) (not b!4431204) (not b!4431329) (not d!1343792) (not b!4431319) (not b_lambda!143689) (not bm!308314) (not b!4431200) (not bs!759873) (not b!4431346) (not b_lambda!143691) (not b!4431273) (not b!4431202) (not b_lambda!143687) (not d!1343766) (not d!1343794) (not b!4431221) (not b!4431366) (not bm!308312) (not d!1343790) (not b!4431203) (not b!4431360) (not b!4431214) (not d!1343680) tp_is_empty!26393 (not d!1343746) (not d!1343658) (not b!4431247) (not b!4431265) (not b!4431211) (not bs!759877) (not d!1343784) tp_is_empty!26395 (not b!4431220) (not b!4431209) (not b!4431321) (not b_lambda!143647) (not b_lambda!143693) (not d!1343752) (not d!1343660) (not b!4430999) (not bm!308323) (not b!4431248) (not b!4431253) (not b!4431296) (not b!4431320) (not b!4431015) (not d!1343804) (not b!4431243) (not bs!759875) (not d!1343770) (not d!1343748) (not b!4431335) (not b!4431298) (not d!1343780) (not b!4431259) (not d!1343756) (not b!4431274) (not d!1343664) (not bs!759874) (not b!4431356) (not b!4431295) (not b!4431005) (not b_lambda!143649) (not b!4431369) (not b_lambda!143697) (not bs!759872) (not b!4431297) (not d!1343754) (not d!1343764) (not b!4431313) (not b!4431363) (not b!4431327) (not d!1343762) (not b!4431328) (not bm!308313) (not b_lambda!143645))
(check-sat)
(get-model)

(declare-fun d!1343876 () Bool)

(declare-fun res!1833174 () Bool)

(declare-fun e!2759250 () Bool)

(assert (=> d!1343876 (=> res!1833174 e!2759250)))

(assert (=> d!1343876 (= res!1833174 (not ((_ is Cons!49671) (t!356733 (t!356733 newBucket!194)))))))

(assert (=> d!1343876 (= (noDuplicateKeys!787 (t!356733 (t!356733 newBucket!194))) e!2759250)))

(declare-fun b!4431443 () Bool)

(declare-fun e!2759251 () Bool)

(assert (=> b!4431443 (= e!2759250 e!2759251)))

(declare-fun res!1833175 () Bool)

(assert (=> b!4431443 (=> (not res!1833175) (not e!2759251))))

(assert (=> b!4431443 (= res!1833175 (not (containsKey!1169 (t!356733 (t!356733 (t!356733 newBucket!194))) (_1!28057 (h!55370 (t!356733 (t!356733 newBucket!194)))))))))

(declare-fun b!4431444 () Bool)

(assert (=> b!4431444 (= e!2759251 (noDuplicateKeys!787 (t!356733 (t!356733 (t!356733 newBucket!194)))))))

(assert (= (and d!1343876 (not res!1833174)) b!4431443))

(assert (= (and b!4431443 res!1833175) b!4431444))

(declare-fun m!5115601 () Bool)

(assert (=> b!4431443 m!5115601))

(declare-fun m!5115603 () Bool)

(assert (=> b!4431444 m!5115603))

(assert (=> b!4431329 d!1343876))

(declare-fun d!1343878 () Bool)

(declare-fun res!1833176 () Bool)

(declare-fun e!2759252 () Bool)

(assert (=> d!1343878 (=> res!1833176 e!2759252)))

(assert (=> d!1343878 (= res!1833176 ((_ is Nil!49671) (_2!28058 (h!55371 (toList!3561 lm!1616)))))))

(assert (=> d!1343878 (= (forall!9620 (_2!28058 (h!55371 (toList!3561 lm!1616))) lambda!155331) e!2759252)))

(declare-fun b!4431445 () Bool)

(declare-fun e!2759253 () Bool)

(assert (=> b!4431445 (= e!2759252 e!2759253)))

(declare-fun res!1833177 () Bool)

(assert (=> b!4431445 (=> (not res!1833177) (not e!2759253))))

(assert (=> b!4431445 (= res!1833177 (dynLambda!20866 lambda!155331 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))))))

(declare-fun b!4431446 () Bool)

(assert (=> b!4431446 (= e!2759253 (forall!9620 (t!356733 (_2!28058 (h!55371 (toList!3561 lm!1616)))) lambda!155331))))

(assert (= (and d!1343878 (not res!1833176)) b!4431445))

(assert (= (and b!4431445 res!1833177) b!4431446))

(declare-fun b_lambda!143711 () Bool)

(assert (=> (not b_lambda!143711) (not b!4431445)))

(declare-fun m!5115605 () Bool)

(assert (=> b!4431445 m!5115605))

(declare-fun m!5115607 () Bool)

(assert (=> b!4431446 m!5115607))

(assert (=> d!1343680 d!1343878))

(assert (=> d!1343680 d!1343774))

(declare-fun d!1343880 () Bool)

(assert (=> d!1343880 (= (hash!2202 hashF!1220 (_1!28057 (h!55370 newBucket!194))) (hash!2204 hashF!1220 (_1!28057 (h!55370 newBucket!194))))))

(declare-fun bs!759881 () Bool)

(assert (= bs!759881 d!1343880))

(declare-fun m!5115609 () Bool)

(assert (=> bs!759881 m!5115609))

(assert (=> bs!759873 d!1343880))

(declare-fun d!1343882 () Bool)

(declare-fun res!1833178 () Bool)

(declare-fun e!2759254 () Bool)

(assert (=> d!1343882 (=> res!1833178 e!2759254)))

(assert (=> d!1343882 (= res!1833178 ((_ is Nil!49672) (t!356734 (toList!3561 (+!1143 lm!1616 (tuple2!49529 hash!366 newBucket!194))))))))

(assert (=> d!1343882 (= (forall!9618 (t!356734 (toList!3561 (+!1143 lm!1616 (tuple2!49529 hash!366 newBucket!194)))) lambda!155230) e!2759254)))

(declare-fun b!4431447 () Bool)

(declare-fun e!2759255 () Bool)

(assert (=> b!4431447 (= e!2759254 e!2759255)))

(declare-fun res!1833179 () Bool)

(assert (=> b!4431447 (=> (not res!1833179) (not e!2759255))))

(assert (=> b!4431447 (= res!1833179 (dynLambda!20864 lambda!155230 (h!55371 (t!356734 (toList!3561 (+!1143 lm!1616 (tuple2!49529 hash!366 newBucket!194)))))))))

(declare-fun b!4431448 () Bool)

(assert (=> b!4431448 (= e!2759255 (forall!9618 (t!356734 (t!356734 (toList!3561 (+!1143 lm!1616 (tuple2!49529 hash!366 newBucket!194))))) lambda!155230))))

(assert (= (and d!1343882 (not res!1833178)) b!4431447))

(assert (= (and b!4431447 res!1833179) b!4431448))

(declare-fun b_lambda!143713 () Bool)

(assert (=> (not b_lambda!143713) (not b!4431447)))

(declare-fun m!5115611 () Bool)

(assert (=> b!4431447 m!5115611))

(declare-fun m!5115613 () Bool)

(assert (=> b!4431448 m!5115613))

(assert (=> b!4430999 d!1343882))

(assert (=> d!1343660 d!1343656))

(assert (=> d!1343660 d!1343658))

(declare-fun d!1343884 () Bool)

(assert (=> d!1343884 (= ($colon$colon!793 e!2759108 (ite c!754210 (h!55371 (toList!3561 lm!1616)) (tuple2!49529 (_1!28058 lt!1629505) (_2!28058 lt!1629505)))) (Cons!49672 (ite c!754210 (h!55371 (toList!3561 lm!1616)) (tuple2!49529 (_1!28058 lt!1629505) (_2!28058 lt!1629505))) e!2759108))))

(assert (=> bm!308323 d!1343884))

(declare-fun d!1343886 () Bool)

(declare-fun c!754250 () Bool)

(assert (=> d!1343886 (= c!754250 ((_ is Nil!49674) e!2758881))))

(declare-fun e!2759258 () (InoxSet K!11040))

(assert (=> d!1343886 (= (content!7979 e!2758881) e!2759258)))

(declare-fun b!4431454 () Bool)

(assert (=> b!4431454 (= e!2759258 ((as const (Array K!11040 Bool)) false))))

(declare-fun b!4431455 () Bool)

(assert (=> b!4431455 (= e!2759258 ((_ map or) (store ((as const (Array K!11040 Bool)) false) (h!55375 e!2758881) true) (content!7979 (t!356736 e!2758881))))))

(assert (= (and d!1343886 c!754250) b!4431454))

(assert (= (and d!1343886 (not c!754250)) b!4431455))

(declare-fun m!5115615 () Bool)

(assert (=> b!4431455 m!5115615))

(declare-fun m!5115617 () Bool)

(assert (=> b!4431455 m!5115617))

(assert (=> d!1343770 d!1343886))

(declare-fun b!4431456 () Bool)

(declare-fun e!2759263 () List!49796)

(declare-fun call!308333 () List!49796)

(assert (=> b!4431456 (= e!2759263 call!308333)))

(declare-fun b!4431457 () Bool)

(declare-fun e!2759261 () Bool)

(declare-fun lt!1629870 () List!49796)

(assert (=> b!4431457 (= e!2759261 (contains!12203 lt!1629870 (tuple2!49529 (_1!28058 lt!1629505) (_2!28058 lt!1629505))))))

(declare-fun e!2759260 () List!49796)

(declare-fun c!754251 () Bool)

(declare-fun b!4431458 () Bool)

(declare-fun c!754253 () Bool)

(assert (=> b!4431458 (= e!2759260 (ite c!754251 (t!356734 (t!356734 (toList!3561 lm!1616))) (ite c!754253 (Cons!49672 (h!55371 (t!356734 (toList!3561 lm!1616))) (t!356734 (t!356734 (toList!3561 lm!1616)))) Nil!49672)))))

(declare-fun b!4431459 () Bool)

(declare-fun e!2759262 () List!49796)

(declare-fun call!308332 () List!49796)

(assert (=> b!4431459 (= e!2759262 call!308332)))

(declare-fun bm!308327 () Bool)

(declare-fun call!308334 () List!49796)

(assert (=> bm!308327 (= call!308334 call!308332)))

(declare-fun b!4431460 () Bool)

(declare-fun e!2759259 () List!49796)

(assert (=> b!4431460 (= e!2759262 e!2759259)))

(assert (=> b!4431460 (= c!754251 (and ((_ is Cons!49672) (t!356734 (toList!3561 lm!1616))) (= (_1!28058 (h!55371 (t!356734 (toList!3561 lm!1616)))) (_1!28058 lt!1629505))))))

(declare-fun b!4431461 () Bool)

(declare-fun res!1833181 () Bool)

(assert (=> b!4431461 (=> (not res!1833181) (not e!2759261))))

(assert (=> b!4431461 (= res!1833181 (containsKey!1170 lt!1629870 (_1!28058 lt!1629505)))))

(declare-fun b!4431462 () Bool)

(assert (=> b!4431462 (= e!2759260 (insertStrictlySorted!274 (t!356734 (t!356734 (toList!3561 lm!1616))) (_1!28058 lt!1629505) (_2!28058 lt!1629505)))))

(declare-fun bm!308328 () Bool)

(assert (=> bm!308328 (= call!308333 call!308334)))

(declare-fun d!1343888 () Bool)

(assert (=> d!1343888 e!2759261))

(declare-fun res!1833180 () Bool)

(assert (=> d!1343888 (=> (not res!1833180) (not e!2759261))))

(assert (=> d!1343888 (= res!1833180 (isStrictlySorted!246 lt!1629870))))

(assert (=> d!1343888 (= lt!1629870 e!2759262)))

(declare-fun c!754252 () Bool)

(assert (=> d!1343888 (= c!754252 (and ((_ is Cons!49672) (t!356734 (toList!3561 lm!1616))) (bvslt (_1!28058 (h!55371 (t!356734 (toList!3561 lm!1616)))) (_1!28058 lt!1629505))))))

(assert (=> d!1343888 (isStrictlySorted!246 (t!356734 (toList!3561 lm!1616)))))

(assert (=> d!1343888 (= (insertStrictlySorted!274 (t!356734 (toList!3561 lm!1616)) (_1!28058 lt!1629505) (_2!28058 lt!1629505)) lt!1629870)))

(declare-fun b!4431463 () Bool)

(assert (=> b!4431463 (= e!2759259 call!308334)))

(declare-fun b!4431464 () Bool)

(assert (=> b!4431464 (= c!754253 (and ((_ is Cons!49672) (t!356734 (toList!3561 lm!1616))) (bvsgt (_1!28058 (h!55371 (t!356734 (toList!3561 lm!1616)))) (_1!28058 lt!1629505))))))

(assert (=> b!4431464 (= e!2759259 e!2759263)))

(declare-fun bm!308329 () Bool)

(assert (=> bm!308329 (= call!308332 ($colon$colon!793 e!2759260 (ite c!754252 (h!55371 (t!356734 (toList!3561 lm!1616))) (tuple2!49529 (_1!28058 lt!1629505) (_2!28058 lt!1629505)))))))

(declare-fun c!754254 () Bool)

(assert (=> bm!308329 (= c!754254 c!754252)))

(declare-fun b!4431465 () Bool)

(assert (=> b!4431465 (= e!2759263 call!308333)))

(assert (= (and d!1343888 c!754252) b!4431459))

(assert (= (and d!1343888 (not c!754252)) b!4431460))

(assert (= (and b!4431460 c!754251) b!4431463))

(assert (= (and b!4431460 (not c!754251)) b!4431464))

(assert (= (and b!4431464 c!754253) b!4431465))

(assert (= (and b!4431464 (not c!754253)) b!4431456))

(assert (= (or b!4431465 b!4431456) bm!308328))

(assert (= (or b!4431463 bm!308328) bm!308327))

(assert (= (or b!4431459 bm!308327) bm!308329))

(assert (= (and bm!308329 c!754254) b!4431462))

(assert (= (and bm!308329 (not c!754254)) b!4431458))

(assert (= (and d!1343888 res!1833180) b!4431461))

(assert (= (and b!4431461 res!1833181) b!4431457))

(declare-fun m!5115619 () Bool)

(assert (=> d!1343888 m!5115619))

(assert (=> d!1343888 m!5115443))

(declare-fun m!5115621 () Bool)

(assert (=> b!4431462 m!5115621))

(declare-fun m!5115623 () Bool)

(assert (=> b!4431461 m!5115623))

(declare-fun m!5115625 () Bool)

(assert (=> bm!308329 m!5115625))

(declare-fun m!5115627 () Bool)

(assert (=> b!4431457 m!5115627))

(assert (=> b!4431248 d!1343888))

(declare-fun d!1343890 () Bool)

(declare-fun c!754255 () Bool)

(assert (=> d!1343890 (= c!754255 (and ((_ is Cons!49671) (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) (= (_1!28057 (h!55370 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))) key!3717)))))

(declare-fun e!2759264 () Option!10753)

(assert (=> d!1343890 (= (getValueByKey!739 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) key!3717) e!2759264)))

(declare-fun b!4431466 () Bool)

(assert (=> b!4431466 (= e!2759264 (Some!10752 (_2!28057 (h!55370 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))))))))

(declare-fun b!4431467 () Bool)

(declare-fun e!2759265 () Option!10753)

(assert (=> b!4431467 (= e!2759264 e!2759265)))

(declare-fun c!754256 () Bool)

(assert (=> b!4431467 (= c!754256 (and ((_ is Cons!49671) (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) (not (= (_1!28057 (h!55370 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))) key!3717))))))

(declare-fun b!4431469 () Bool)

(assert (=> b!4431469 (= e!2759265 None!10752)))

(declare-fun b!4431468 () Bool)

(assert (=> b!4431468 (= e!2759265 (getValueByKey!739 (t!356733 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) key!3717))))

(assert (= (and d!1343890 c!754255) b!4431466))

(assert (= (and d!1343890 (not c!754255)) b!4431467))

(assert (= (and b!4431467 c!754256) b!4431468))

(assert (= (and b!4431467 (not c!754256)) b!4431469))

(declare-fun m!5115629 () Bool)

(assert (=> b!4431468 m!5115629))

(assert (=> b!4431346 d!1343890))

(declare-fun d!1343892 () Bool)

(declare-fun res!1833182 () Bool)

(declare-fun e!2759266 () Bool)

(assert (=> d!1343892 (=> res!1833182 e!2759266)))

(assert (=> d!1343892 (= res!1833182 ((_ is Nil!49671) (toList!3562 lt!1629790)))))

(assert (=> d!1343892 (= (forall!9620 (toList!3562 lt!1629790) lambda!155330) e!2759266)))

(declare-fun b!4431470 () Bool)

(declare-fun e!2759267 () Bool)

(assert (=> b!4431470 (= e!2759266 e!2759267)))

(declare-fun res!1833183 () Bool)

(assert (=> b!4431470 (=> (not res!1833183) (not e!2759267))))

(assert (=> b!4431470 (= res!1833183 (dynLambda!20866 lambda!155330 (h!55370 (toList!3562 lt!1629790))))))

(declare-fun b!4431471 () Bool)

(assert (=> b!4431471 (= e!2759267 (forall!9620 (t!356733 (toList!3562 lt!1629790)) lambda!155330))))

(assert (= (and d!1343892 (not res!1833182)) b!4431470))

(assert (= (and b!4431470 res!1833183) b!4431471))

(declare-fun b_lambda!143715 () Bool)

(assert (=> (not b_lambda!143715) (not b!4431470)))

(declare-fun m!5115631 () Bool)

(assert (=> b!4431470 m!5115631))

(declare-fun m!5115633 () Bool)

(assert (=> b!4431471 m!5115633))

(assert (=> b!4431204 d!1343892))

(declare-fun bs!759887 () Bool)

(declare-fun d!1343894 () Bool)

(assert (= bs!759887 (and d!1343894 b!4431204)))

(declare-fun lambda!155360 () Int)

(assert (=> bs!759887 (= (= lt!1629788 (extractMap!848 (t!356734 (toList!3561 lm!1616)))) (= lambda!155360 lambda!155329))))

(declare-fun bs!759888 () Bool)

(assert (= bs!759888 (and d!1343894 b!4431201)))

(assert (=> bs!759888 (= (= lt!1629788 (extractMap!848 (t!356734 (toList!3561 lm!1616)))) (= lambda!155360 lambda!155328))))

(declare-fun bs!759889 () Bool)

(assert (= bs!759889 (and d!1343894 d!1343680)))

(assert (=> bs!759889 (= (= lt!1629788 lt!1629792) (= lambda!155360 lambda!155331))))

(assert (=> bs!759887 (= lambda!155360 lambda!155330)))

(declare-fun bs!759890 () Bool)

(assert (= bs!759890 (and d!1343894 d!1343630)))

(assert (=> bs!759890 (not (= lambda!155360 lambda!155248))))

(assert (=> d!1343894 true))

(assert (=> d!1343894 (forall!9620 (toList!3562 (extractMap!848 (t!356734 (toList!3561 lm!1616)))) lambda!155360)))

(declare-fun lt!1629884 () Unit!82673)

(declare-fun choose!28058 (ListMap!2805 ListMap!2805 K!11040 V!11286) Unit!82673)

(assert (=> d!1343894 (= lt!1629884 (choose!28058 (extractMap!848 (t!356734 (toList!3561 lm!1616))) lt!1629788 (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))) (_2!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))))

(assert (=> d!1343894 (forall!9620 (toList!3562 (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (tuple2!49527 (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))) (_2!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))) lambda!155360)))

(assert (=> d!1343894 (= (addForallContainsKeyThenBeforeAdding!187 (extractMap!848 (t!356734 (toList!3561 lm!1616))) lt!1629788 (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))) (_2!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))) lt!1629884)))

(declare-fun bs!759891 () Bool)

(assert (= bs!759891 d!1343894))

(declare-fun m!5115663 () Bool)

(assert (=> bs!759891 m!5115663))

(assert (=> bs!759891 m!5115001))

(declare-fun m!5115665 () Bool)

(assert (=> bs!759891 m!5115665))

(assert (=> bs!759891 m!5115001))

(declare-fun m!5115667 () Bool)

(assert (=> bs!759891 m!5115667))

(declare-fun m!5115669 () Bool)

(assert (=> bs!759891 m!5115669))

(assert (=> b!4431204 d!1343894))

(declare-fun b!4431485 () Bool)

(declare-fun e!2759278 () Unit!82673)

(declare-fun e!2759281 () Unit!82673)

(assert (=> b!4431485 (= e!2759278 e!2759281)))

(declare-fun c!754260 () Bool)

(declare-fun call!308336 () Bool)

(assert (=> b!4431485 (= c!754260 call!308336)))

(declare-fun b!4431486 () Bool)

(declare-fun e!2759277 () List!49798)

(assert (=> b!4431486 (= e!2759277 (keys!16980 lt!1629788))))

(declare-fun b!4431487 () Bool)

(declare-fun lt!1629886 () Unit!82673)

(assert (=> b!4431487 (= e!2759278 lt!1629886)))

(declare-fun lt!1629892 () Unit!82673)

(assert (=> b!4431487 (= lt!1629892 (lemmaContainsKeyImpliesGetValueByKeyDefined!648 (toList!3562 lt!1629788) (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))))

(assert (=> b!4431487 (isDefined!8045 (getValueByKey!739 (toList!3562 lt!1629788) (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))))

(declare-fun lt!1629891 () Unit!82673)

(assert (=> b!4431487 (= lt!1629891 lt!1629892)))

(assert (=> b!4431487 (= lt!1629886 (lemmaInListThenGetKeysListContains!263 (toList!3562 lt!1629788) (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))))

(assert (=> b!4431487 call!308336))

(declare-fun b!4431488 () Bool)

(declare-fun e!2759279 () Bool)

(assert (=> b!4431488 (= e!2759279 (not (contains!12202 (keys!16980 lt!1629788) (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))))))))

(declare-fun b!4431489 () Bool)

(declare-fun e!2759282 () Bool)

(declare-fun e!2759280 () Bool)

(assert (=> b!4431489 (= e!2759282 e!2759280)))

(declare-fun res!1833192 () Bool)

(assert (=> b!4431489 (=> (not res!1833192) (not e!2759280))))

(assert (=> b!4431489 (= res!1833192 (isDefined!8045 (getValueByKey!739 (toList!3562 lt!1629788) (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))))))))

(declare-fun b!4431490 () Bool)

(assert (=> b!4431490 false))

(declare-fun lt!1629890 () Unit!82673)

(declare-fun lt!1629887 () Unit!82673)

(assert (=> b!4431490 (= lt!1629890 lt!1629887)))

(assert (=> b!4431490 (containsKey!1168 (toList!3562 lt!1629788) (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))))))

(assert (=> b!4431490 (= lt!1629887 (lemmaInGetKeysListThenContainsKey!264 (toList!3562 lt!1629788) (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))))

(declare-fun Unit!82714 () Unit!82673)

(assert (=> b!4431490 (= e!2759281 Unit!82714)))

(declare-fun b!4431491 () Bool)

(declare-fun Unit!82715 () Unit!82673)

(assert (=> b!4431491 (= e!2759281 Unit!82715)))

(declare-fun b!4431492 () Bool)

(assert (=> b!4431492 (= e!2759277 (getKeysList!266 (toList!3562 lt!1629788)))))

(declare-fun b!4431493 () Bool)

(assert (=> b!4431493 (= e!2759280 (contains!12202 (keys!16980 lt!1629788) (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))))

(declare-fun d!1343900 () Bool)

(assert (=> d!1343900 e!2759282))

(declare-fun res!1833191 () Bool)

(assert (=> d!1343900 (=> res!1833191 e!2759282)))

(assert (=> d!1343900 (= res!1833191 e!2759279)))

(declare-fun res!1833190 () Bool)

(assert (=> d!1343900 (=> (not res!1833190) (not e!2759279))))

(declare-fun lt!1629889 () Bool)

(assert (=> d!1343900 (= res!1833190 (not lt!1629889))))

(declare-fun lt!1629888 () Bool)

(assert (=> d!1343900 (= lt!1629889 lt!1629888)))

(declare-fun lt!1629893 () Unit!82673)

(assert (=> d!1343900 (= lt!1629893 e!2759278)))

(declare-fun c!754261 () Bool)

(assert (=> d!1343900 (= c!754261 lt!1629888)))

(assert (=> d!1343900 (= lt!1629888 (containsKey!1168 (toList!3562 lt!1629788) (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))))

(assert (=> d!1343900 (= (contains!12199 lt!1629788 (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))) lt!1629889)))

(declare-fun bm!308331 () Bool)

(assert (=> bm!308331 (= call!308336 (contains!12202 e!2759277 (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))))

(declare-fun c!754262 () Bool)

(assert (=> bm!308331 (= c!754262 c!754261)))

(assert (= (and d!1343900 c!754261) b!4431487))

(assert (= (and d!1343900 (not c!754261)) b!4431485))

(assert (= (and b!4431485 c!754260) b!4431490))

(assert (= (and b!4431485 (not c!754260)) b!4431491))

(assert (= (or b!4431487 b!4431485) bm!308331))

(assert (= (and bm!308331 c!754262) b!4431492))

(assert (= (and bm!308331 (not c!754262)) b!4431486))

(assert (= (and d!1343900 res!1833190) b!4431488))

(assert (= (and d!1343900 (not res!1833191)) b!4431489))

(assert (= (and b!4431489 res!1833192) b!4431493))

(declare-fun m!5115677 () Bool)

(assert (=> b!4431486 m!5115677))

(declare-fun m!5115679 () Bool)

(assert (=> d!1343900 m!5115679))

(assert (=> b!4431488 m!5115677))

(assert (=> b!4431488 m!5115677))

(declare-fun m!5115681 () Bool)

(assert (=> b!4431488 m!5115681))

(declare-fun m!5115683 () Bool)

(assert (=> b!4431489 m!5115683))

(assert (=> b!4431489 m!5115683))

(declare-fun m!5115685 () Bool)

(assert (=> b!4431489 m!5115685))

(declare-fun m!5115689 () Bool)

(assert (=> bm!308331 m!5115689))

(declare-fun m!5115693 () Bool)

(assert (=> b!4431492 m!5115693))

(declare-fun m!5115695 () Bool)

(assert (=> b!4431487 m!5115695))

(assert (=> b!4431487 m!5115683))

(assert (=> b!4431487 m!5115683))

(assert (=> b!4431487 m!5115685))

(declare-fun m!5115697 () Bool)

(assert (=> b!4431487 m!5115697))

(assert (=> b!4431490 m!5115679))

(declare-fun m!5115699 () Bool)

(assert (=> b!4431490 m!5115699))

(assert (=> b!4431493 m!5115677))

(assert (=> b!4431493 m!5115677))

(assert (=> b!4431493 m!5115681))

(assert (=> b!4431204 d!1343900))

(declare-fun d!1343906 () Bool)

(declare-fun res!1833197 () Bool)

(declare-fun e!2759287 () Bool)

(assert (=> d!1343906 (=> res!1833197 e!2759287)))

(assert (=> d!1343906 (= res!1833197 ((_ is Nil!49671) (toList!3562 (extractMap!848 (t!356734 (toList!3561 lm!1616))))))))

(assert (=> d!1343906 (= (forall!9620 (toList!3562 (extractMap!848 (t!356734 (toList!3561 lm!1616)))) lambda!155330) e!2759287)))

(declare-fun b!4431498 () Bool)

(declare-fun e!2759288 () Bool)

(assert (=> b!4431498 (= e!2759287 e!2759288)))

(declare-fun res!1833198 () Bool)

(assert (=> b!4431498 (=> (not res!1833198) (not e!2759288))))

(assert (=> b!4431498 (= res!1833198 (dynLambda!20866 lambda!155330 (h!55370 (toList!3562 (extractMap!848 (t!356734 (toList!3561 lm!1616)))))))))

(declare-fun b!4431499 () Bool)

(assert (=> b!4431499 (= e!2759288 (forall!9620 (t!356733 (toList!3562 (extractMap!848 (t!356734 (toList!3561 lm!1616))))) lambda!155330))))

(assert (= (and d!1343906 (not res!1833197)) b!4431498))

(assert (= (and b!4431498 res!1833198) b!4431499))

(declare-fun b_lambda!143723 () Bool)

(assert (=> (not b_lambda!143723) (not b!4431498)))

(declare-fun m!5115705 () Bool)

(assert (=> b!4431498 m!5115705))

(declare-fun m!5115707 () Bool)

(assert (=> b!4431499 m!5115707))

(assert (=> b!4431204 d!1343906))

(declare-fun b!4431502 () Bool)

(declare-fun e!2759292 () Unit!82673)

(declare-fun e!2759295 () Unit!82673)

(assert (=> b!4431502 (= e!2759292 e!2759295)))

(declare-fun c!754263 () Bool)

(declare-fun call!308337 () Bool)

(assert (=> b!4431502 (= c!754263 call!308337)))

(declare-fun b!4431503 () Bool)

(declare-fun e!2759291 () List!49798)

(assert (=> b!4431503 (= e!2759291 (keys!16980 lt!1629790))))

(declare-fun b!4431504 () Bool)

(declare-fun lt!1629894 () Unit!82673)

(assert (=> b!4431504 (= e!2759292 lt!1629894)))

(declare-fun lt!1629900 () Unit!82673)

(assert (=> b!4431504 (= lt!1629900 (lemmaContainsKeyImpliesGetValueByKeyDefined!648 (toList!3562 lt!1629790) (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))))

(assert (=> b!4431504 (isDefined!8045 (getValueByKey!739 (toList!3562 lt!1629790) (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))))

(declare-fun lt!1629899 () Unit!82673)

(assert (=> b!4431504 (= lt!1629899 lt!1629900)))

(assert (=> b!4431504 (= lt!1629894 (lemmaInListThenGetKeysListContains!263 (toList!3562 lt!1629790) (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))))

(assert (=> b!4431504 call!308337))

(declare-fun b!4431505 () Bool)

(declare-fun e!2759293 () Bool)

(assert (=> b!4431505 (= e!2759293 (not (contains!12202 (keys!16980 lt!1629790) (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))))))))

(declare-fun b!4431506 () Bool)

(declare-fun e!2759296 () Bool)

(declare-fun e!2759294 () Bool)

(assert (=> b!4431506 (= e!2759296 e!2759294)))

(declare-fun res!1833203 () Bool)

(assert (=> b!4431506 (=> (not res!1833203) (not e!2759294))))

(assert (=> b!4431506 (= res!1833203 (isDefined!8045 (getValueByKey!739 (toList!3562 lt!1629790) (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))))))))

(declare-fun b!4431507 () Bool)

(assert (=> b!4431507 false))

(declare-fun lt!1629898 () Unit!82673)

(declare-fun lt!1629895 () Unit!82673)

(assert (=> b!4431507 (= lt!1629898 lt!1629895)))

(assert (=> b!4431507 (containsKey!1168 (toList!3562 lt!1629790) (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))))))

(assert (=> b!4431507 (= lt!1629895 (lemmaInGetKeysListThenContainsKey!264 (toList!3562 lt!1629790) (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))))

(declare-fun Unit!82716 () Unit!82673)

(assert (=> b!4431507 (= e!2759295 Unit!82716)))

(declare-fun b!4431508 () Bool)

(declare-fun Unit!82717 () Unit!82673)

(assert (=> b!4431508 (= e!2759295 Unit!82717)))

(declare-fun b!4431509 () Bool)

(assert (=> b!4431509 (= e!2759291 (getKeysList!266 (toList!3562 lt!1629790)))))

(declare-fun b!4431510 () Bool)

(assert (=> b!4431510 (= e!2759294 (contains!12202 (keys!16980 lt!1629790) (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))))

(declare-fun d!1343910 () Bool)

(assert (=> d!1343910 e!2759296))

(declare-fun res!1833202 () Bool)

(assert (=> d!1343910 (=> res!1833202 e!2759296)))

(assert (=> d!1343910 (= res!1833202 e!2759293)))

(declare-fun res!1833201 () Bool)

(assert (=> d!1343910 (=> (not res!1833201) (not e!2759293))))

(declare-fun lt!1629897 () Bool)

(assert (=> d!1343910 (= res!1833201 (not lt!1629897))))

(declare-fun lt!1629896 () Bool)

(assert (=> d!1343910 (= lt!1629897 lt!1629896)))

(declare-fun lt!1629901 () Unit!82673)

(assert (=> d!1343910 (= lt!1629901 e!2759292)))

(declare-fun c!754264 () Bool)

(assert (=> d!1343910 (= c!754264 lt!1629896)))

(assert (=> d!1343910 (= lt!1629896 (containsKey!1168 (toList!3562 lt!1629790) (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))))

(assert (=> d!1343910 (= (contains!12199 lt!1629790 (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))) lt!1629897)))

(declare-fun bm!308332 () Bool)

(assert (=> bm!308332 (= call!308337 (contains!12202 e!2759291 (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))))

(declare-fun c!754265 () Bool)

(assert (=> bm!308332 (= c!754265 c!754264)))

(assert (= (and d!1343910 c!754264) b!4431504))

(assert (= (and d!1343910 (not c!754264)) b!4431502))

(assert (= (and b!4431502 c!754263) b!4431507))

(assert (= (and b!4431502 (not c!754263)) b!4431508))

(assert (= (or b!4431504 b!4431502) bm!308332))

(assert (= (and bm!308332 c!754265) b!4431509))

(assert (= (and bm!308332 (not c!754265)) b!4431503))

(assert (= (and d!1343910 res!1833201) b!4431505))

(assert (= (and d!1343910 (not res!1833202)) b!4431506))

(assert (= (and b!4431506 res!1833203) b!4431510))

(declare-fun m!5115713 () Bool)

(assert (=> b!4431503 m!5115713))

(declare-fun m!5115715 () Bool)

(assert (=> d!1343910 m!5115715))

(assert (=> b!4431505 m!5115713))

(assert (=> b!4431505 m!5115713))

(declare-fun m!5115719 () Bool)

(assert (=> b!4431505 m!5115719))

(declare-fun m!5115723 () Bool)

(assert (=> b!4431506 m!5115723))

(assert (=> b!4431506 m!5115723))

(declare-fun m!5115727 () Bool)

(assert (=> b!4431506 m!5115727))

(declare-fun m!5115731 () Bool)

(assert (=> bm!308332 m!5115731))

(declare-fun m!5115733 () Bool)

(assert (=> b!4431509 m!5115733))

(declare-fun m!5115735 () Bool)

(assert (=> b!4431504 m!5115735))

(assert (=> b!4431504 m!5115723))

(assert (=> b!4431504 m!5115723))

(assert (=> b!4431504 m!5115727))

(declare-fun m!5115741 () Bool)

(assert (=> b!4431504 m!5115741))

(assert (=> b!4431507 m!5115715))

(declare-fun m!5115745 () Bool)

(assert (=> b!4431507 m!5115745))

(assert (=> b!4431510 m!5115713))

(assert (=> b!4431510 m!5115713))

(assert (=> b!4431510 m!5115719))

(assert (=> b!4431204 d!1343910))

(declare-fun d!1343914 () Bool)

(assert (=> d!1343914 (dynLambda!20866 lambda!155330 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))

(declare-fun lt!1629933 () Unit!82673)

(declare-fun choose!28059 (List!49795 Int tuple2!49526) Unit!82673)

(assert (=> d!1343914 (= lt!1629933 (choose!28059 (toList!3562 lt!1629790) lambda!155330 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))))))

(declare-fun e!2759308 () Bool)

(assert (=> d!1343914 e!2759308))

(declare-fun res!1833212 () Bool)

(assert (=> d!1343914 (=> (not res!1833212) (not e!2759308))))

(assert (=> d!1343914 (= res!1833212 (forall!9620 (toList!3562 lt!1629790) lambda!155330))))

(assert (=> d!1343914 (= (forallContained!2111 (toList!3562 lt!1629790) lambda!155330 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))) lt!1629933)))

(declare-fun b!4431527 () Bool)

(declare-fun contains!12204 (List!49795 tuple2!49526) Bool)

(assert (=> b!4431527 (= e!2759308 (contains!12204 (toList!3562 lt!1629790) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))))))

(assert (= (and d!1343914 res!1833212) b!4431527))

(declare-fun b_lambda!143727 () Bool)

(assert (=> (not b_lambda!143727) (not d!1343914)))

(declare-fun m!5115753 () Bool)

(assert (=> d!1343914 m!5115753))

(declare-fun m!5115755 () Bool)

(assert (=> d!1343914 m!5115755))

(assert (=> d!1343914 m!5115321))

(declare-fun m!5115757 () Bool)

(assert (=> b!4431527 m!5115757))

(assert (=> b!4431204 d!1343914))

(declare-fun bs!759903 () Bool)

(declare-fun b!4431529 () Bool)

(assert (= bs!759903 (and b!4431529 b!4431204)))

(declare-fun lambda!155364 () Int)

(assert (=> bs!759903 (= (= (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))) (extractMap!848 (t!356734 (toList!3561 lm!1616)))) (= lambda!155364 lambda!155329))))

(declare-fun bs!759904 () Bool)

(assert (= bs!759904 (and b!4431529 b!4431201)))

(assert (=> bs!759904 (= (= (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))) (extractMap!848 (t!356734 (toList!3561 lm!1616)))) (= lambda!155364 lambda!155328))))

(declare-fun bs!759905 () Bool)

(assert (= bs!759905 (and b!4431529 d!1343894)))

(assert (=> bs!759905 (= (= (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))) lt!1629788) (= lambda!155364 lambda!155360))))

(declare-fun bs!759906 () Bool)

(assert (= bs!759906 (and b!4431529 d!1343680)))

(assert (=> bs!759906 (= (= (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))) lt!1629792) (= lambda!155364 lambda!155331))))

(assert (=> bs!759903 (= (= (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))) lt!1629788) (= lambda!155364 lambda!155330))))

(declare-fun bs!759908 () Bool)

(assert (= bs!759908 (and b!4431529 d!1343630)))

(assert (=> bs!759908 (not (= lambda!155364 lambda!155248))))

(assert (=> b!4431529 true))

(declare-fun bs!759915 () Bool)

(declare-fun b!4431532 () Bool)

(assert (= bs!759915 (and b!4431532 b!4431204)))

(declare-fun lambda!155366 () Int)

(assert (=> bs!759915 (= (= (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))) (extractMap!848 (t!356734 (toList!3561 lm!1616)))) (= lambda!155366 lambda!155329))))

(declare-fun bs!759916 () Bool)

(assert (= bs!759916 (and b!4431532 b!4431201)))

(assert (=> bs!759916 (= (= (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))) (extractMap!848 (t!356734 (toList!3561 lm!1616)))) (= lambda!155366 lambda!155328))))

(declare-fun bs!759917 () Bool)

(assert (= bs!759917 (and b!4431532 d!1343894)))

(assert (=> bs!759917 (= (= (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))) lt!1629788) (= lambda!155366 lambda!155360))))

(declare-fun bs!759918 () Bool)

(assert (= bs!759918 (and b!4431532 d!1343680)))

(assert (=> bs!759918 (= (= (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))) lt!1629792) (= lambda!155366 lambda!155331))))

(assert (=> bs!759915 (= (= (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))) lt!1629788) (= lambda!155366 lambda!155330))))

(declare-fun bs!759919 () Bool)

(assert (= bs!759919 (and b!4431532 d!1343630)))

(assert (=> bs!759919 (not (= lambda!155366 lambda!155248))))

(declare-fun bs!759920 () Bool)

(assert (= bs!759920 (and b!4431532 b!4431529)))

(assert (=> bs!759920 (= lambda!155366 lambda!155364)))

(assert (=> b!4431532 true))

(declare-fun lambda!155367 () Int)

(declare-fun lt!1629939 () ListMap!2805)

(assert (=> bs!759915 (= (= lt!1629939 (extractMap!848 (t!356734 (toList!3561 lm!1616)))) (= lambda!155367 lambda!155329))))

(assert (=> bs!759916 (= (= lt!1629939 (extractMap!848 (t!356734 (toList!3561 lm!1616)))) (= lambda!155367 lambda!155328))))

(assert (=> bs!759917 (= (= lt!1629939 lt!1629788) (= lambda!155367 lambda!155360))))

(assert (=> bs!759918 (= (= lt!1629939 lt!1629792) (= lambda!155367 lambda!155331))))

(assert (=> bs!759915 (= (= lt!1629939 lt!1629788) (= lambda!155367 lambda!155330))))

(assert (=> b!4431532 (= (= lt!1629939 (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))) (= lambda!155367 lambda!155366))))

(assert (=> bs!759919 (not (= lambda!155367 lambda!155248))))

(assert (=> bs!759920 (= (= lt!1629939 (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))) (= lambda!155367 lambda!155364))))

(assert (=> b!4431532 true))

(declare-fun bs!759921 () Bool)

(declare-fun d!1343918 () Bool)

(assert (= bs!759921 (and d!1343918 b!4431204)))

(declare-fun lt!1629943 () ListMap!2805)

(declare-fun lambda!155368 () Int)

(assert (=> bs!759921 (= (= lt!1629943 (extractMap!848 (t!356734 (toList!3561 lm!1616)))) (= lambda!155368 lambda!155329))))

(declare-fun bs!759922 () Bool)

(assert (= bs!759922 (and d!1343918 b!4431201)))

(assert (=> bs!759922 (= (= lt!1629943 (extractMap!848 (t!356734 (toList!3561 lm!1616)))) (= lambda!155368 lambda!155328))))

(declare-fun bs!759923 () Bool)

(assert (= bs!759923 (and d!1343918 b!4431532)))

(assert (=> bs!759923 (= (= lt!1629943 lt!1629939) (= lambda!155368 lambda!155367))))

(declare-fun bs!759924 () Bool)

(assert (= bs!759924 (and d!1343918 d!1343894)))

(assert (=> bs!759924 (= (= lt!1629943 lt!1629788) (= lambda!155368 lambda!155360))))

(declare-fun bs!759925 () Bool)

(assert (= bs!759925 (and d!1343918 d!1343680)))

(assert (=> bs!759925 (= (= lt!1629943 lt!1629792) (= lambda!155368 lambda!155331))))

(assert (=> bs!759921 (= (= lt!1629943 lt!1629788) (= lambda!155368 lambda!155330))))

(assert (=> bs!759923 (= (= lt!1629943 (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))) (= lambda!155368 lambda!155366))))

(declare-fun bs!759926 () Bool)

(assert (= bs!759926 (and d!1343918 d!1343630)))

(assert (=> bs!759926 (not (= lambda!155368 lambda!155248))))

(declare-fun bs!759927 () Bool)

(assert (= bs!759927 (and d!1343918 b!4431529)))

(assert (=> bs!759927 (= (= lt!1629943 (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))) (= lambda!155368 lambda!155364))))

(assert (=> d!1343918 true))

(declare-fun b!4431528 () Bool)

(declare-fun e!2759309 () Bool)

(assert (=> b!4431528 (= e!2759309 (invariantList!819 (toList!3562 lt!1629943)))))

(declare-fun e!2759311 () ListMap!2805)

(assert (=> b!4431529 (= e!2759311 (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))))))

(declare-fun lt!1629954 () Unit!82673)

(declare-fun call!308343 () Unit!82673)

(assert (=> b!4431529 (= lt!1629954 call!308343)))

(declare-fun call!308342 () Bool)

(assert (=> b!4431529 call!308342))

(declare-fun lt!1629934 () Unit!82673)

(assert (=> b!4431529 (= lt!1629934 lt!1629954)))

(declare-fun call!308344 () Bool)

(assert (=> b!4431529 call!308344))

(declare-fun lt!1629937 () Unit!82673)

(declare-fun Unit!82719 () Unit!82673)

(assert (=> b!4431529 (= lt!1629937 Unit!82719)))

(declare-fun b!4431530 () Bool)

(declare-fun e!2759310 () Bool)

(assert (=> b!4431530 (= e!2759310 (forall!9620 (toList!3562 (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))) lambda!155367))))

(declare-fun b!4431531 () Bool)

(declare-fun res!1833214 () Bool)

(assert (=> b!4431531 (=> (not res!1833214) (not e!2759309))))

(assert (=> b!4431531 (= res!1833214 (forall!9620 (toList!3562 (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))) lambda!155368))))

(assert (=> b!4431532 (= e!2759311 lt!1629939)))

(declare-fun lt!1629941 () ListMap!2805)

(assert (=> b!4431532 (= lt!1629941 (+!1145 (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))) (h!55370 (t!356733 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))))

(assert (=> b!4431532 (= lt!1629939 (addToMapMapFromBucket!412 (t!356733 (t!356733 (_2!28058 (h!55371 (toList!3561 lm!1616))))) (+!1145 (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))) (h!55370 (t!356733 (_2!28058 (h!55371 (toList!3561 lm!1616))))))))))

(declare-fun lt!1629938 () Unit!82673)

(assert (=> b!4431532 (= lt!1629938 call!308343)))

(assert (=> b!4431532 (forall!9620 (toList!3562 (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))) lambda!155366)))

(declare-fun lt!1629944 () Unit!82673)

(assert (=> b!4431532 (= lt!1629944 lt!1629938)))

(assert (=> b!4431532 (forall!9620 (toList!3562 lt!1629941) lambda!155367)))

(declare-fun lt!1629950 () Unit!82673)

(declare-fun Unit!82721 () Unit!82673)

(assert (=> b!4431532 (= lt!1629950 Unit!82721)))

(assert (=> b!4431532 call!308344))

(declare-fun lt!1629935 () Unit!82673)

(declare-fun Unit!82722 () Unit!82673)

(assert (=> b!4431532 (= lt!1629935 Unit!82722)))

(declare-fun lt!1629946 () Unit!82673)

(declare-fun Unit!82723 () Unit!82673)

(assert (=> b!4431532 (= lt!1629946 Unit!82723)))

(declare-fun lt!1629945 () Unit!82673)

(assert (=> b!4431532 (= lt!1629945 (forallContained!2111 (toList!3562 lt!1629941) lambda!155367 (h!55370 (t!356733 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))))

(assert (=> b!4431532 (contains!12199 lt!1629941 (_1!28057 (h!55370 (t!356733 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))))

(declare-fun lt!1629949 () Unit!82673)

(declare-fun Unit!82724 () Unit!82673)

(assert (=> b!4431532 (= lt!1629949 Unit!82724)))

(assert (=> b!4431532 (contains!12199 lt!1629939 (_1!28057 (h!55370 (t!356733 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))))

(declare-fun lt!1629952 () Unit!82673)

(declare-fun Unit!82725 () Unit!82673)

(assert (=> b!4431532 (= lt!1629952 Unit!82725)))

(assert (=> b!4431532 (forall!9620 (t!356733 (_2!28058 (h!55371 (toList!3561 lm!1616)))) lambda!155367)))

(declare-fun lt!1629951 () Unit!82673)

(declare-fun Unit!82726 () Unit!82673)

(assert (=> b!4431532 (= lt!1629951 Unit!82726)))

(assert (=> b!4431532 (forall!9620 (toList!3562 lt!1629941) lambda!155367)))

(declare-fun lt!1629940 () Unit!82673)

(declare-fun Unit!82727 () Unit!82673)

(assert (=> b!4431532 (= lt!1629940 Unit!82727)))

(declare-fun lt!1629936 () Unit!82673)

(declare-fun Unit!82728 () Unit!82673)

(assert (=> b!4431532 (= lt!1629936 Unit!82728)))

(declare-fun lt!1629948 () Unit!82673)

(assert (=> b!4431532 (= lt!1629948 (addForallContainsKeyThenBeforeAdding!187 (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))) lt!1629939 (_1!28057 (h!55370 (t!356733 (_2!28058 (h!55371 (toList!3561 lm!1616)))))) (_2!28057 (h!55370 (t!356733 (_2!28058 (h!55371 (toList!3561 lm!1616))))))))))

(assert (=> b!4431532 (forall!9620 (toList!3562 (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))) lambda!155367)))

(declare-fun lt!1629942 () Unit!82673)

(assert (=> b!4431532 (= lt!1629942 lt!1629948)))

(assert (=> b!4431532 call!308342))

(declare-fun lt!1629947 () Unit!82673)

(declare-fun Unit!82729 () Unit!82673)

(assert (=> b!4431532 (= lt!1629947 Unit!82729)))

(declare-fun res!1833215 () Bool)

(assert (=> b!4431532 (= res!1833215 (forall!9620 (t!356733 (_2!28058 (h!55371 (toList!3561 lm!1616)))) lambda!155367))))

(assert (=> b!4431532 (=> (not res!1833215) (not e!2759310))))

(assert (=> b!4431532 e!2759310))

(declare-fun lt!1629953 () Unit!82673)

(declare-fun Unit!82730 () Unit!82673)

(assert (=> b!4431532 (= lt!1629953 Unit!82730)))

(assert (=> d!1343918 e!2759309))

(declare-fun res!1833213 () Bool)

(assert (=> d!1343918 (=> (not res!1833213) (not e!2759309))))

(assert (=> d!1343918 (= res!1833213 (forall!9620 (t!356733 (_2!28058 (h!55371 (toList!3561 lm!1616)))) lambda!155368))))

(assert (=> d!1343918 (= lt!1629943 e!2759311)))

(declare-fun c!754270 () Bool)

(assert (=> d!1343918 (= c!754270 ((_ is Nil!49671) (t!356733 (_2!28058 (h!55371 (toList!3561 lm!1616))))))))

(assert (=> d!1343918 (noDuplicateKeys!787 (t!356733 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))

(assert (=> d!1343918 (= (addToMapMapFromBucket!412 (t!356733 (_2!28058 (h!55371 (toList!3561 lm!1616)))) (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))) lt!1629943)))

(declare-fun bm!308337 () Bool)

(assert (=> bm!308337 (= call!308344 (forall!9620 (ite c!754270 (toList!3562 (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))) (t!356733 (t!356733 (_2!28058 (h!55371 (toList!3561 lm!1616)))))) (ite c!754270 lambda!155364 lambda!155367)))))

(declare-fun bm!308338 () Bool)

(assert (=> bm!308338 (= call!308342 (forall!9620 (toList!3562 (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))) (ite c!754270 lambda!155364 lambda!155367)))))

(declare-fun bm!308339 () Bool)

(assert (=> bm!308339 (= call!308343 (lemmaContainsAllItsOwnKeys!187 (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))))

(assert (= (and d!1343918 c!754270) b!4431529))

(assert (= (and d!1343918 (not c!754270)) b!4431532))

(assert (= (and b!4431532 res!1833215) b!4431530))

(assert (= (or b!4431529 b!4431532) bm!308339))

(assert (= (or b!4431529 b!4431532) bm!308337))

(assert (= (or b!4431529 b!4431532) bm!308338))

(assert (= (and d!1343918 res!1833213) b!4431531))

(assert (= (and b!4431531 res!1833214) b!4431528))

(declare-fun m!5115791 () Bool)

(assert (=> b!4431531 m!5115791))

(declare-fun m!5115793 () Bool)

(assert (=> b!4431530 m!5115793))

(declare-fun m!5115795 () Bool)

(assert (=> d!1343918 m!5115795))

(assert (=> d!1343918 m!5115441))

(declare-fun m!5115797 () Bool)

(assert (=> b!4431528 m!5115797))

(assert (=> bm!308339 m!5115331))

(declare-fun m!5115799 () Bool)

(assert (=> bm!308339 m!5115799))

(declare-fun m!5115801 () Bool)

(assert (=> bm!308337 m!5115801))

(declare-fun m!5115803 () Bool)

(assert (=> b!4431532 m!5115803))

(declare-fun m!5115805 () Bool)

(assert (=> b!4431532 m!5115805))

(declare-fun m!5115807 () Bool)

(assert (=> b!4431532 m!5115807))

(declare-fun m!5115809 () Bool)

(assert (=> b!4431532 m!5115809))

(assert (=> b!4431532 m!5115793))

(assert (=> b!4431532 m!5115331))

(declare-fun m!5115811 () Bool)

(assert (=> b!4431532 m!5115811))

(declare-fun m!5115813 () Bool)

(assert (=> b!4431532 m!5115813))

(assert (=> b!4431532 m!5115809))

(assert (=> b!4431532 m!5115805))

(assert (=> b!4431532 m!5115331))

(declare-fun m!5115815 () Bool)

(assert (=> b!4431532 m!5115815))

(assert (=> b!4431532 m!5115815))

(declare-fun m!5115817 () Bool)

(assert (=> b!4431532 m!5115817))

(declare-fun m!5115819 () Bool)

(assert (=> b!4431532 m!5115819))

(declare-fun m!5115821 () Bool)

(assert (=> bm!308338 m!5115821))

(assert (=> b!4431204 d!1343918))

(declare-fun d!1343924 () Bool)

(declare-fun e!2759325 () Bool)

(assert (=> d!1343924 e!2759325))

(declare-fun res!1833234 () Bool)

(assert (=> d!1343924 (=> (not res!1833234) (not e!2759325))))

(declare-fun lt!1629977 () ListMap!2805)

(assert (=> d!1343924 (= res!1833234 (contains!12199 lt!1629977 (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))))

(declare-fun lt!1629979 () List!49795)

(assert (=> d!1343924 (= lt!1629977 (ListMap!2806 lt!1629979))))

(declare-fun lt!1629976 () Unit!82673)

(declare-fun lt!1629978 () Unit!82673)

(assert (=> d!1343924 (= lt!1629976 lt!1629978)))

(assert (=> d!1343924 (= (getValueByKey!739 lt!1629979 (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))) (Some!10752 (_2!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!472 (List!49795 K!11040 V!11286) Unit!82673)

(assert (=> d!1343924 (= lt!1629978 (lemmaContainsTupThenGetReturnValue!472 lt!1629979 (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))) (_2!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))))

(declare-fun insertNoDuplicatedKeys!206 (List!49795 K!11040 V!11286) List!49795)

(assert (=> d!1343924 (= lt!1629979 (insertNoDuplicatedKeys!206 (toList!3562 (extractMap!848 (t!356734 (toList!3561 lm!1616)))) (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))) (_2!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))))

(assert (=> d!1343924 (= (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))) lt!1629977)))

(declare-fun b!4431551 () Bool)

(declare-fun res!1833235 () Bool)

(assert (=> b!4431551 (=> (not res!1833235) (not e!2759325))))

(assert (=> b!4431551 (= res!1833235 (= (getValueByKey!739 (toList!3562 lt!1629977) (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))) (Some!10752 (_2!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))))))))

(declare-fun b!4431552 () Bool)

(assert (=> b!4431552 (= e!2759325 (contains!12204 (toList!3562 lt!1629977) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))))))

(assert (= (and d!1343924 res!1833234) b!4431551))

(assert (= (and b!4431551 res!1833235) b!4431552))

(declare-fun m!5115847 () Bool)

(assert (=> d!1343924 m!5115847))

(declare-fun m!5115851 () Bool)

(assert (=> d!1343924 m!5115851))

(declare-fun m!5115855 () Bool)

(assert (=> d!1343924 m!5115855))

(declare-fun m!5115857 () Bool)

(assert (=> d!1343924 m!5115857))

(declare-fun m!5115861 () Bool)

(assert (=> b!4431551 m!5115861))

(declare-fun m!5115863 () Bool)

(assert (=> b!4431552 m!5115863))

(assert (=> b!4431204 d!1343924))

(declare-fun d!1343938 () Bool)

(declare-fun res!1833240 () Bool)

(declare-fun e!2759330 () Bool)

(assert (=> d!1343938 (=> res!1833240 e!2759330)))

(assert (=> d!1343938 (= res!1833240 ((_ is Nil!49671) (_2!28058 (h!55371 (toList!3561 lm!1616)))))))

(assert (=> d!1343938 (= (forall!9620 (_2!28058 (h!55371 (toList!3561 lm!1616))) lambda!155330) e!2759330)))

(declare-fun b!4431557 () Bool)

(declare-fun e!2759331 () Bool)

(assert (=> b!4431557 (= e!2759330 e!2759331)))

(declare-fun res!1833241 () Bool)

(assert (=> b!4431557 (=> (not res!1833241) (not e!2759331))))

(assert (=> b!4431557 (= res!1833241 (dynLambda!20866 lambda!155330 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))))))

(declare-fun b!4431558 () Bool)

(assert (=> b!4431558 (= e!2759331 (forall!9620 (t!356733 (_2!28058 (h!55371 (toList!3561 lm!1616)))) lambda!155330))))

(assert (= (and d!1343938 (not res!1833240)) b!4431557))

(assert (= (and b!4431557 res!1833241) b!4431558))

(declare-fun b_lambda!143733 () Bool)

(assert (=> (not b_lambda!143733) (not b!4431557)))

(assert (=> b!4431557 m!5115753))

(declare-fun m!5115871 () Bool)

(assert (=> b!4431558 m!5115871))

(assert (=> b!4431204 d!1343938))

(declare-fun d!1343944 () Bool)

(declare-fun res!1833242 () Bool)

(declare-fun e!2759332 () Bool)

(assert (=> d!1343944 (=> res!1833242 e!2759332)))

(assert (=> d!1343944 (= res!1833242 ((_ is Nil!49671) (toList!3562 (extractMap!848 (t!356734 (toList!3561 lm!1616))))))))

(assert (=> d!1343944 (= (forall!9620 (toList!3562 (extractMap!848 (t!356734 (toList!3561 lm!1616)))) lambda!155329) e!2759332)))

(declare-fun b!4431559 () Bool)

(declare-fun e!2759333 () Bool)

(assert (=> b!4431559 (= e!2759332 e!2759333)))

(declare-fun res!1833243 () Bool)

(assert (=> b!4431559 (=> (not res!1833243) (not e!2759333))))

(assert (=> b!4431559 (= res!1833243 (dynLambda!20866 lambda!155329 (h!55370 (toList!3562 (extractMap!848 (t!356734 (toList!3561 lm!1616)))))))))

(declare-fun b!4431560 () Bool)

(assert (=> b!4431560 (= e!2759333 (forall!9620 (t!356733 (toList!3562 (extractMap!848 (t!356734 (toList!3561 lm!1616))))) lambda!155329))))

(assert (= (and d!1343944 (not res!1833242)) b!4431559))

(assert (= (and b!4431559 res!1833243) b!4431560))

(declare-fun b_lambda!143735 () Bool)

(assert (=> (not b_lambda!143735) (not b!4431559)))

(declare-fun m!5115873 () Bool)

(assert (=> b!4431559 m!5115873))

(declare-fun m!5115875 () Bool)

(assert (=> b!4431560 m!5115875))

(assert (=> b!4431204 d!1343944))

(declare-fun d!1343946 () Bool)

(declare-fun res!1833244 () Bool)

(declare-fun e!2759334 () Bool)

(assert (=> d!1343946 (=> res!1833244 e!2759334)))

(assert (=> d!1343946 (= res!1833244 (and ((_ is Cons!49671) (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) (= (_1!28057 (h!55370 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))) key!3717)))))

(assert (=> d!1343946 (= (containsKey!1168 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) key!3717) e!2759334)))

(declare-fun b!4431561 () Bool)

(declare-fun e!2759335 () Bool)

(assert (=> b!4431561 (= e!2759334 e!2759335)))

(declare-fun res!1833245 () Bool)

(assert (=> b!4431561 (=> (not res!1833245) (not e!2759335))))

(assert (=> b!4431561 (= res!1833245 ((_ is Cons!49671) (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))))))

(declare-fun b!4431562 () Bool)

(assert (=> b!4431562 (= e!2759335 (containsKey!1168 (t!356733 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) key!3717))))

(assert (= (and d!1343946 (not res!1833244)) b!4431561))

(assert (= (and b!4431561 res!1833245) b!4431562))

(declare-fun m!5115879 () Bool)

(assert (=> b!4431562 m!5115879))

(assert (=> b!4431311 d!1343946))

(declare-fun d!1343950 () Bool)

(declare-fun res!1833255 () Bool)

(declare-fun e!2759350 () Bool)

(assert (=> d!1343950 (=> res!1833255 e!2759350)))

(assert (=> d!1343950 (= res!1833255 ((_ is Nil!49674) lt!1629840))))

(assert (=> d!1343950 (= (noDuplicate!664 lt!1629840) e!2759350)))

(declare-fun b!4431582 () Bool)

(declare-fun e!2759351 () Bool)

(assert (=> b!4431582 (= e!2759350 e!2759351)))

(declare-fun res!1833256 () Bool)

(assert (=> b!4431582 (=> (not res!1833256) (not e!2759351))))

(assert (=> b!4431582 (= res!1833256 (not (contains!12202 (t!356736 lt!1629840) (h!55375 lt!1629840))))))

(declare-fun b!4431583 () Bool)

(assert (=> b!4431583 (= e!2759351 (noDuplicate!664 (t!356736 lt!1629840)))))

(assert (= (and d!1343950 (not res!1833255)) b!4431582))

(assert (= (and b!4431582 res!1833256) b!4431583))

(declare-fun m!5115895 () Bool)

(assert (=> b!4431582 m!5115895))

(declare-fun m!5115897 () Bool)

(assert (=> b!4431583 m!5115897))

(assert (=> d!1343766 d!1343950))

(declare-fun d!1343964 () Bool)

(assert (=> d!1343964 (= (invariantList!819 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) (noDuplicatedKeys!180 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))))

(declare-fun bs!759932 () Bool)

(assert (= bs!759932 d!1343964))

(declare-fun m!5115901 () Bool)

(assert (=> bs!759932 m!5115901))

(assert (=> d!1343766 d!1343964))

(declare-fun d!1343968 () Bool)

(declare-fun res!1833257 () Bool)

(declare-fun e!2759352 () Bool)

(assert (=> d!1343968 (=> res!1833257 e!2759352)))

(assert (=> d!1343968 (= res!1833257 ((_ is Nil!49672) (t!356734 (t!356734 (toList!3561 lm!1616)))))))

(assert (=> d!1343968 (= (forall!9618 (t!356734 (t!356734 (toList!3561 lm!1616))) lambda!155230) e!2759352)))

(declare-fun b!4431584 () Bool)

(declare-fun e!2759353 () Bool)

(assert (=> b!4431584 (= e!2759352 e!2759353)))

(declare-fun res!1833258 () Bool)

(assert (=> b!4431584 (=> (not res!1833258) (not e!2759353))))

(assert (=> b!4431584 (= res!1833258 (dynLambda!20864 lambda!155230 (h!55371 (t!356734 (t!356734 (toList!3561 lm!1616))))))))

(declare-fun b!4431585 () Bool)

(assert (=> b!4431585 (= e!2759353 (forall!9618 (t!356734 (t!356734 (t!356734 (toList!3561 lm!1616)))) lambda!155230))))

(assert (= (and d!1343968 (not res!1833257)) b!4431584))

(assert (= (and b!4431584 res!1833258) b!4431585))

(declare-fun b_lambda!143737 () Bool)

(assert (=> (not b_lambda!143737) (not b!4431584)))

(declare-fun m!5115903 () Bool)

(assert (=> b!4431584 m!5115903))

(declare-fun m!5115905 () Bool)

(assert (=> b!4431585 m!5115905))

(assert (=> b!4430997 d!1343968))

(declare-fun d!1343970 () Bool)

(declare-fun lt!1629982 () Bool)

(assert (=> d!1343970 (= lt!1629982 (select (content!7979 (getKeysList!266 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) key!3717))))

(declare-fun e!2759354 () Bool)

(assert (=> d!1343970 (= lt!1629982 e!2759354)))

(declare-fun res!1833260 () Bool)

(assert (=> d!1343970 (=> (not res!1833260) (not e!2759354))))

(assert (=> d!1343970 (= res!1833260 ((_ is Cons!49674) (getKeysList!266 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))))))

(assert (=> d!1343970 (= (contains!12202 (getKeysList!266 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) key!3717) lt!1629982)))

(declare-fun b!4431586 () Bool)

(declare-fun e!2759355 () Bool)

(assert (=> b!4431586 (= e!2759354 e!2759355)))

(declare-fun res!1833259 () Bool)

(assert (=> b!4431586 (=> res!1833259 e!2759355)))

(assert (=> b!4431586 (= res!1833259 (= (h!55375 (getKeysList!266 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) key!3717))))

(declare-fun b!4431587 () Bool)

(assert (=> b!4431587 (= e!2759355 (contains!12202 (t!356736 (getKeysList!266 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) key!3717))))

(assert (= (and d!1343970 res!1833260) b!4431586))

(assert (= (and b!4431586 (not res!1833259)) b!4431587))

(assert (=> d!1343970 m!5114967))

(declare-fun m!5115907 () Bool)

(assert (=> d!1343970 m!5115907))

(declare-fun m!5115909 () Bool)

(assert (=> d!1343970 m!5115909))

(declare-fun m!5115911 () Bool)

(assert (=> b!4431587 m!5115911))

(assert (=> d!1343794 d!1343970))

(assert (=> d!1343794 d!1343766))

(declare-fun d!1343972 () Bool)

(assert (=> d!1343972 (contains!12202 (getKeysList!266 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) key!3717)))

(assert (=> d!1343972 true))

(declare-fun _$14!931 () Unit!82673)

(assert (=> d!1343972 (= (choose!28056 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) key!3717) _$14!931)))

(declare-fun bs!759933 () Bool)

(assert (= bs!759933 d!1343972))

(assert (=> bs!759933 m!5114967))

(assert (=> bs!759933 m!5114967))

(assert (=> bs!759933 m!5115469))

(assert (=> d!1343794 d!1343972))

(assert (=> d!1343794 d!1343964))

(declare-fun d!1343976 () Bool)

(declare-fun res!1833267 () Bool)

(declare-fun e!2759363 () Bool)

(assert (=> d!1343976 (=> res!1833267 e!2759363)))

(assert (=> d!1343976 (= res!1833267 ((_ is Nil!49671) (toList!3562 (extractMap!848 (t!356734 (toList!3561 lm!1616))))))))

(assert (=> d!1343976 (= (forall!9620 (toList!3562 (extractMap!848 (t!356734 (toList!3561 lm!1616)))) (ite c!754196 lambda!155328 lambda!155330)) e!2759363)))

(declare-fun b!4431600 () Bool)

(declare-fun e!2759364 () Bool)

(assert (=> b!4431600 (= e!2759363 e!2759364)))

(declare-fun res!1833268 () Bool)

(assert (=> b!4431600 (=> (not res!1833268) (not e!2759364))))

(assert (=> b!4431600 (= res!1833268 (dynLambda!20866 (ite c!754196 lambda!155328 lambda!155330) (h!55370 (toList!3562 (extractMap!848 (t!356734 (toList!3561 lm!1616)))))))))

(declare-fun b!4431601 () Bool)

(assert (=> b!4431601 (= e!2759364 (forall!9620 (t!356733 (toList!3562 (extractMap!848 (t!356734 (toList!3561 lm!1616))))) (ite c!754196 lambda!155328 lambda!155330)))))

(assert (= (and d!1343976 (not res!1833267)) b!4431600))

(assert (= (and b!4431600 res!1833268) b!4431601))

(declare-fun b_lambda!143741 () Bool)

(assert (=> (not b_lambda!143741) (not b!4431600)))

(declare-fun m!5115919 () Bool)

(assert (=> b!4431600 m!5115919))

(declare-fun m!5115921 () Bool)

(assert (=> b!4431601 m!5115921))

(assert (=> bm!308313 d!1343976))

(declare-fun d!1343978 () Bool)

(declare-fun c!754279 () Bool)

(assert (=> d!1343978 (= c!754279 (and ((_ is Cons!49672) (t!356734 lt!1629598)) (= (_1!28058 (h!55371 (t!356734 lt!1629598))) (_1!28058 lt!1629505))))))

(declare-fun e!2759365 () Option!10754)

(assert (=> d!1343978 (= (getValueByKey!740 (t!356734 lt!1629598) (_1!28058 lt!1629505)) e!2759365)))

(declare-fun b!4431604 () Bool)

(declare-fun e!2759366 () Option!10754)

(assert (=> b!4431604 (= e!2759366 (getValueByKey!740 (t!356734 (t!356734 lt!1629598)) (_1!28058 lt!1629505)))))

(declare-fun b!4431602 () Bool)

(assert (=> b!4431602 (= e!2759365 (Some!10753 (_2!28058 (h!55371 (t!356734 lt!1629598)))))))

(declare-fun b!4431603 () Bool)

(assert (=> b!4431603 (= e!2759365 e!2759366)))

(declare-fun c!754280 () Bool)

(assert (=> b!4431603 (= c!754280 (and ((_ is Cons!49672) (t!356734 lt!1629598)) (not (= (_1!28058 (h!55371 (t!356734 lt!1629598))) (_1!28058 lt!1629505)))))))

(declare-fun b!4431605 () Bool)

(assert (=> b!4431605 (= e!2759366 None!10753)))

(assert (= (and d!1343978 c!754279) b!4431602))

(assert (= (and d!1343978 (not c!754279)) b!4431603))

(assert (= (and b!4431603 c!754280) b!4431604))

(assert (= (and b!4431603 (not c!754280)) b!4431605))

(declare-fun m!5115923 () Bool)

(assert (=> b!4431604 m!5115923))

(assert (=> b!4431214 d!1343978))

(assert (=> d!1343804 d!1343800))

(assert (=> d!1343804 d!1343668))

(declare-fun d!1343980 () Bool)

(assert (=> d!1343980 (isDefined!8046 (getValueByKey!740 (toList!3561 lm!1616) hash!366))))

(assert (=> d!1343980 true))

(declare-fun _$13!1481 () Unit!82673)

(assert (=> d!1343980 (= (choose!28057 (toList!3561 lm!1616) hash!366) _$13!1481)))

(declare-fun bs!759950 () Bool)

(assert (= bs!759950 d!1343980))

(assert (=> bs!759950 m!5115041))

(assert (=> bs!759950 m!5115041))

(assert (=> bs!759950 m!5115051))

(assert (=> d!1343804 d!1343980))

(assert (=> d!1343804 d!1343776))

(declare-fun d!1343982 () Bool)

(declare-fun res!1833275 () Bool)

(declare-fun e!2759373 () Bool)

(assert (=> d!1343982 (=> res!1833275 e!2759373)))

(assert (=> d!1343982 (= res!1833275 ((_ is Nil!49674) lt!1629820))))

(assert (=> d!1343982 (= (forall!9622 lt!1629820 lambda!155337) e!2759373)))

(declare-fun b!4431612 () Bool)

(declare-fun e!2759374 () Bool)

(assert (=> b!4431612 (= e!2759373 e!2759374)))

(declare-fun res!1833276 () Bool)

(assert (=> b!4431612 (=> (not res!1833276) (not e!2759374))))

(declare-fun dynLambda!20869 (Int K!11040) Bool)

(assert (=> b!4431612 (= res!1833276 (dynLambda!20869 lambda!155337 (h!55375 lt!1629820)))))

(declare-fun b!4431613 () Bool)

(assert (=> b!4431613 (= e!2759374 (forall!9622 (t!356736 lt!1629820) lambda!155337))))

(assert (= (and d!1343982 (not res!1833275)) b!4431612))

(assert (= (and b!4431612 res!1833276) b!4431613))

(declare-fun b_lambda!143745 () Bool)

(assert (=> (not b_lambda!143745) (not b!4431612)))

(declare-fun m!5115957 () Bool)

(assert (=> b!4431612 m!5115957))

(declare-fun m!5115959 () Bool)

(assert (=> b!4431613 m!5115959))

(assert (=> b!4431273 d!1343982))

(assert (=> b!4431202 d!1343906))

(declare-fun d!1343988 () Bool)

(declare-fun res!1833280 () Bool)

(declare-fun e!2759378 () Bool)

(assert (=> d!1343988 (=> res!1833280 e!2759378)))

(assert (=> d!1343988 (= res!1833280 (and ((_ is Cons!49671) (t!356733 (_2!28058 (tuple2!49529 hash!366 newBucket!194)))) (= (_1!28057 (h!55370 (t!356733 (_2!28058 (tuple2!49529 hash!366 newBucket!194))))) (_1!28057 (h!55370 (_2!28058 (tuple2!49529 hash!366 newBucket!194)))))))))

(assert (=> d!1343988 (= (containsKey!1169 (t!356733 (_2!28058 (tuple2!49529 hash!366 newBucket!194))) (_1!28057 (h!55370 (_2!28058 (tuple2!49529 hash!366 newBucket!194))))) e!2759378)))

(declare-fun b!4431619 () Bool)

(declare-fun e!2759379 () Bool)

(assert (=> b!4431619 (= e!2759378 e!2759379)))

(declare-fun res!1833281 () Bool)

(assert (=> b!4431619 (=> (not res!1833281) (not e!2759379))))

(assert (=> b!4431619 (= res!1833281 ((_ is Cons!49671) (t!356733 (_2!28058 (tuple2!49529 hash!366 newBucket!194)))))))

(declare-fun b!4431620 () Bool)

(assert (=> b!4431620 (= e!2759379 (containsKey!1169 (t!356733 (t!356733 (_2!28058 (tuple2!49529 hash!366 newBucket!194)))) (_1!28057 (h!55370 (_2!28058 (tuple2!49529 hash!366 newBucket!194))))))))

(assert (= (and d!1343988 (not res!1833280)) b!4431619))

(assert (= (and b!4431619 res!1833281) b!4431620))

(declare-fun m!5115961 () Bool)

(assert (=> b!4431620 m!5115961))

(assert (=> b!4431356 d!1343988))

(declare-fun d!1343990 () Bool)

(declare-fun e!2759381 () Bool)

(assert (=> d!1343990 e!2759381))

(declare-fun res!1833282 () Bool)

(assert (=> d!1343990 (=> res!1833282 e!2759381)))

(declare-fun lt!1630016 () Bool)

(assert (=> d!1343990 (= res!1833282 (not lt!1630016))))

(declare-fun lt!1630014 () Bool)

(assert (=> d!1343990 (= lt!1630016 lt!1630014)))

(declare-fun lt!1630015 () Unit!82673)

(declare-fun e!2759380 () Unit!82673)

(assert (=> d!1343990 (= lt!1630015 e!2759380)))

(declare-fun c!754282 () Bool)

(assert (=> d!1343990 (= c!754282 lt!1630014)))

(assert (=> d!1343990 (= lt!1630014 (containsKey!1170 (toList!3561 lt!1629661) (_1!28058 (tuple2!49529 hash!366 newBucket!194))))))

(assert (=> d!1343990 (= (contains!12198 lt!1629661 (_1!28058 (tuple2!49529 hash!366 newBucket!194))) lt!1630016)))

(declare-fun b!4431621 () Bool)

(declare-fun lt!1630017 () Unit!82673)

(assert (=> b!4431621 (= e!2759380 lt!1630017)))

(assert (=> b!4431621 (= lt!1630017 (lemmaContainsKeyImpliesGetValueByKeyDefined!649 (toList!3561 lt!1629661) (_1!28058 (tuple2!49529 hash!366 newBucket!194))))))

(assert (=> b!4431621 (isDefined!8046 (getValueByKey!740 (toList!3561 lt!1629661) (_1!28058 (tuple2!49529 hash!366 newBucket!194))))))

(declare-fun b!4431622 () Bool)

(declare-fun Unit!82741 () Unit!82673)

(assert (=> b!4431622 (= e!2759380 Unit!82741)))

(declare-fun b!4431623 () Bool)

(assert (=> b!4431623 (= e!2759381 (isDefined!8046 (getValueByKey!740 (toList!3561 lt!1629661) (_1!28058 (tuple2!49529 hash!366 newBucket!194)))))))

(assert (= (and d!1343990 c!754282) b!4431621))

(assert (= (and d!1343990 (not c!754282)) b!4431622))

(assert (= (and d!1343990 (not res!1833282)) b!4431623))

(declare-fun m!5115963 () Bool)

(assert (=> d!1343990 m!5115963))

(declare-fun m!5115965 () Bool)

(assert (=> b!4431621 m!5115965))

(assert (=> b!4431621 m!5115101))

(assert (=> b!4431621 m!5115101))

(declare-fun m!5115967 () Bool)

(assert (=> b!4431621 m!5115967))

(assert (=> b!4431623 m!5115101))

(assert (=> b!4431623 m!5115101))

(assert (=> b!4431623 m!5115967))

(assert (=> d!1343658 d!1343990))

(declare-fun d!1343992 () Bool)

(declare-fun c!754283 () Bool)

(assert (=> d!1343992 (= c!754283 (and ((_ is Cons!49672) lt!1629659) (= (_1!28058 (h!55371 lt!1629659)) (_1!28058 (tuple2!49529 hash!366 newBucket!194)))))))

(declare-fun e!2759382 () Option!10754)

(assert (=> d!1343992 (= (getValueByKey!740 lt!1629659 (_1!28058 (tuple2!49529 hash!366 newBucket!194))) e!2759382)))

(declare-fun b!4431626 () Bool)

(declare-fun e!2759383 () Option!10754)

(assert (=> b!4431626 (= e!2759383 (getValueByKey!740 (t!356734 lt!1629659) (_1!28058 (tuple2!49529 hash!366 newBucket!194))))))

(declare-fun b!4431624 () Bool)

(assert (=> b!4431624 (= e!2759382 (Some!10753 (_2!28058 (h!55371 lt!1629659))))))

(declare-fun b!4431625 () Bool)

(assert (=> b!4431625 (= e!2759382 e!2759383)))

(declare-fun c!754284 () Bool)

(assert (=> b!4431625 (= c!754284 (and ((_ is Cons!49672) lt!1629659) (not (= (_1!28058 (h!55371 lt!1629659)) (_1!28058 (tuple2!49529 hash!366 newBucket!194))))))))

(declare-fun b!4431627 () Bool)

(assert (=> b!4431627 (= e!2759383 None!10753)))

(assert (= (and d!1343992 c!754283) b!4431624))

(assert (= (and d!1343992 (not c!754283)) b!4431625))

(assert (= (and b!4431625 c!754284) b!4431626))

(assert (= (and b!4431625 (not c!754284)) b!4431627))

(declare-fun m!5115969 () Bool)

(assert (=> b!4431626 m!5115969))

(assert (=> d!1343658 d!1343992))

(declare-fun d!1343994 () Bool)

(assert (=> d!1343994 (= (getValueByKey!740 lt!1629659 (_1!28058 (tuple2!49529 hash!366 newBucket!194))) (Some!10753 (_2!28058 (tuple2!49529 hash!366 newBucket!194))))))

(declare-fun lt!1630018 () Unit!82673)

(assert (=> d!1343994 (= lt!1630018 (choose!28053 lt!1629659 (_1!28058 (tuple2!49529 hash!366 newBucket!194)) (_2!28058 (tuple2!49529 hash!366 newBucket!194))))))

(declare-fun e!2759384 () Bool)

(assert (=> d!1343994 e!2759384))

(declare-fun res!1833283 () Bool)

(assert (=> d!1343994 (=> (not res!1833283) (not e!2759384))))

(assert (=> d!1343994 (= res!1833283 (isStrictlySorted!246 lt!1629659))))

(assert (=> d!1343994 (= (lemmaContainsTupThenGetReturnValue!471 lt!1629659 (_1!28058 (tuple2!49529 hash!366 newBucket!194)) (_2!28058 (tuple2!49529 hash!366 newBucket!194))) lt!1630018)))

(declare-fun b!4431628 () Bool)

(declare-fun res!1833284 () Bool)

(assert (=> b!4431628 (=> (not res!1833284) (not e!2759384))))

(assert (=> b!4431628 (= res!1833284 (containsKey!1170 lt!1629659 (_1!28058 (tuple2!49529 hash!366 newBucket!194))))))

(declare-fun b!4431629 () Bool)

(assert (=> b!4431629 (= e!2759384 (contains!12203 lt!1629659 (tuple2!49529 (_1!28058 (tuple2!49529 hash!366 newBucket!194)) (_2!28058 (tuple2!49529 hash!366 newBucket!194)))))))

(assert (= (and d!1343994 res!1833283) b!4431628))

(assert (= (and b!4431628 res!1833284) b!4431629))

(assert (=> d!1343994 m!5115095))

(declare-fun m!5115971 () Bool)

(assert (=> d!1343994 m!5115971))

(declare-fun m!5115973 () Bool)

(assert (=> d!1343994 m!5115973))

(declare-fun m!5115975 () Bool)

(assert (=> b!4431628 m!5115975))

(declare-fun m!5115977 () Bool)

(assert (=> b!4431629 m!5115977))

(assert (=> d!1343658 d!1343994))

(declare-fun b!4431630 () Bool)

(declare-fun e!2759389 () List!49796)

(declare-fun call!308349 () List!49796)

(assert (=> b!4431630 (= e!2759389 call!308349)))

(declare-fun e!2759387 () Bool)

(declare-fun lt!1630019 () List!49796)

(declare-fun b!4431631 () Bool)

(assert (=> b!4431631 (= e!2759387 (contains!12203 lt!1630019 (tuple2!49529 (_1!28058 (tuple2!49529 hash!366 newBucket!194)) (_2!28058 (tuple2!49529 hash!366 newBucket!194)))))))

(declare-fun c!754287 () Bool)

(declare-fun b!4431632 () Bool)

(declare-fun e!2759386 () List!49796)

(declare-fun c!754285 () Bool)

(assert (=> b!4431632 (= e!2759386 (ite c!754285 (t!356734 (toList!3561 lm!1616)) (ite c!754287 (Cons!49672 (h!55371 (toList!3561 lm!1616)) (t!356734 (toList!3561 lm!1616))) Nil!49672)))))

(declare-fun b!4431633 () Bool)

(declare-fun e!2759388 () List!49796)

(declare-fun call!308348 () List!49796)

(assert (=> b!4431633 (= e!2759388 call!308348)))

(declare-fun bm!308343 () Bool)

(declare-fun call!308350 () List!49796)

(assert (=> bm!308343 (= call!308350 call!308348)))

(declare-fun b!4431634 () Bool)

(declare-fun e!2759385 () List!49796)

(assert (=> b!4431634 (= e!2759388 e!2759385)))

(assert (=> b!4431634 (= c!754285 (and ((_ is Cons!49672) (toList!3561 lm!1616)) (= (_1!28058 (h!55371 (toList!3561 lm!1616))) (_1!28058 (tuple2!49529 hash!366 newBucket!194)))))))

(declare-fun b!4431635 () Bool)

(declare-fun res!1833286 () Bool)

(assert (=> b!4431635 (=> (not res!1833286) (not e!2759387))))

(assert (=> b!4431635 (= res!1833286 (containsKey!1170 lt!1630019 (_1!28058 (tuple2!49529 hash!366 newBucket!194))))))

(declare-fun b!4431636 () Bool)

(assert (=> b!4431636 (= e!2759386 (insertStrictlySorted!274 (t!356734 (toList!3561 lm!1616)) (_1!28058 (tuple2!49529 hash!366 newBucket!194)) (_2!28058 (tuple2!49529 hash!366 newBucket!194))))))

(declare-fun bm!308344 () Bool)

(assert (=> bm!308344 (= call!308349 call!308350)))

(declare-fun d!1343996 () Bool)

(assert (=> d!1343996 e!2759387))

(declare-fun res!1833285 () Bool)

(assert (=> d!1343996 (=> (not res!1833285) (not e!2759387))))

(assert (=> d!1343996 (= res!1833285 (isStrictlySorted!246 lt!1630019))))

(assert (=> d!1343996 (= lt!1630019 e!2759388)))

(declare-fun c!754286 () Bool)

(assert (=> d!1343996 (= c!754286 (and ((_ is Cons!49672) (toList!3561 lm!1616)) (bvslt (_1!28058 (h!55371 (toList!3561 lm!1616))) (_1!28058 (tuple2!49529 hash!366 newBucket!194)))))))

(assert (=> d!1343996 (isStrictlySorted!246 (toList!3561 lm!1616))))

(assert (=> d!1343996 (= (insertStrictlySorted!274 (toList!3561 lm!1616) (_1!28058 (tuple2!49529 hash!366 newBucket!194)) (_2!28058 (tuple2!49529 hash!366 newBucket!194))) lt!1630019)))

(declare-fun b!4431637 () Bool)

(assert (=> b!4431637 (= e!2759385 call!308350)))

(declare-fun b!4431638 () Bool)

(assert (=> b!4431638 (= c!754287 (and ((_ is Cons!49672) (toList!3561 lm!1616)) (bvsgt (_1!28058 (h!55371 (toList!3561 lm!1616))) (_1!28058 (tuple2!49529 hash!366 newBucket!194)))))))

(assert (=> b!4431638 (= e!2759385 e!2759389)))

(declare-fun bm!308345 () Bool)

(assert (=> bm!308345 (= call!308348 ($colon$colon!793 e!2759386 (ite c!754286 (h!55371 (toList!3561 lm!1616)) (tuple2!49529 (_1!28058 (tuple2!49529 hash!366 newBucket!194)) (_2!28058 (tuple2!49529 hash!366 newBucket!194))))))))

(declare-fun c!754288 () Bool)

(assert (=> bm!308345 (= c!754288 c!754286)))

(declare-fun b!4431639 () Bool)

(assert (=> b!4431639 (= e!2759389 call!308349)))

(assert (= (and d!1343996 c!754286) b!4431633))

(assert (= (and d!1343996 (not c!754286)) b!4431634))

(assert (= (and b!4431634 c!754285) b!4431637))

(assert (= (and b!4431634 (not c!754285)) b!4431638))

(assert (= (and b!4431638 c!754287) b!4431639))

(assert (= (and b!4431638 (not c!754287)) b!4431630))

(assert (= (or b!4431639 b!4431630) bm!308344))

(assert (= (or b!4431637 bm!308344) bm!308343))

(assert (= (or b!4431633 bm!308343) bm!308345))

(assert (= (and bm!308345 c!754288) b!4431636))

(assert (= (and bm!308345 (not c!754288)) b!4431632))

(assert (= (and d!1343996 res!1833285) b!4431635))

(assert (= (and b!4431635 res!1833286) b!4431631))

(declare-fun m!5115979 () Bool)

(assert (=> d!1343996 m!5115979))

(assert (=> d!1343996 m!5115039))

(declare-fun m!5115981 () Bool)

(assert (=> b!4431636 m!5115981))

(declare-fun m!5115983 () Bool)

(assert (=> b!4431635 m!5115983))

(declare-fun m!5115985 () Bool)

(assert (=> bm!308345 m!5115985))

(declare-fun m!5115987 () Bool)

(assert (=> b!4431631 m!5115987))

(assert (=> d!1343658 d!1343996))

(declare-fun d!1343998 () Bool)

(declare-fun res!1833287 () Bool)

(declare-fun e!2759390 () Bool)

(assert (=> d!1343998 (=> res!1833287 e!2759390)))

(assert (=> d!1343998 (= res!1833287 (or ((_ is Nil!49672) lt!1629814) ((_ is Nil!49672) (t!356734 lt!1629814))))))

(assert (=> d!1343998 (= (isStrictlySorted!246 lt!1629814) e!2759390)))

(declare-fun b!4431640 () Bool)

(declare-fun e!2759391 () Bool)

(assert (=> b!4431640 (= e!2759390 e!2759391)))

(declare-fun res!1833288 () Bool)

(assert (=> b!4431640 (=> (not res!1833288) (not e!2759391))))

(assert (=> b!4431640 (= res!1833288 (bvslt (_1!28058 (h!55371 lt!1629814)) (_1!28058 (h!55371 (t!356734 lt!1629814)))))))

(declare-fun b!4431641 () Bool)

(assert (=> b!4431641 (= e!2759391 (isStrictlySorted!246 (t!356734 lt!1629814)))))

(assert (= (and d!1343998 (not res!1833287)) b!4431640))

(assert (= (and b!4431640 res!1833288) b!4431641))

(declare-fun m!5115989 () Bool)

(assert (=> b!4431641 m!5115989))

(assert (=> d!1343754 d!1343998))

(assert (=> d!1343754 d!1343776))

(declare-fun d!1344000 () Bool)

(declare-fun res!1833289 () Bool)

(declare-fun e!2759392 () Bool)

(assert (=> d!1344000 (=> res!1833289 e!2759392)))

(assert (=> d!1344000 (= res!1833289 (not ((_ is Cons!49671) (_2!28058 (h!55371 (t!356734 (toList!3561 lm!1616)))))))))

(assert (=> d!1344000 (= (noDuplicateKeys!787 (_2!28058 (h!55371 (t!356734 (toList!3561 lm!1616))))) e!2759392)))

(declare-fun b!4431642 () Bool)

(declare-fun e!2759393 () Bool)

(assert (=> b!4431642 (= e!2759392 e!2759393)))

(declare-fun res!1833290 () Bool)

(assert (=> b!4431642 (=> (not res!1833290) (not e!2759393))))

(assert (=> b!4431642 (= res!1833290 (not (containsKey!1169 (t!356733 (_2!28058 (h!55371 (t!356734 (toList!3561 lm!1616))))) (_1!28057 (h!55370 (_2!28058 (h!55371 (t!356734 (toList!3561 lm!1616)))))))))))

(declare-fun b!4431643 () Bool)

(assert (=> b!4431643 (= e!2759393 (noDuplicateKeys!787 (t!356733 (_2!28058 (h!55371 (t!356734 (toList!3561 lm!1616)))))))))

(assert (= (and d!1344000 (not res!1833289)) b!4431642))

(assert (= (and b!4431642 res!1833290) b!4431643))

(declare-fun m!5115991 () Bool)

(assert (=> b!4431642 m!5115991))

(declare-fun m!5115993 () Bool)

(assert (=> b!4431643 m!5115993))

(assert (=> bs!759876 d!1344000))

(declare-fun d!1344002 () Bool)

(declare-fun res!1833291 () Bool)

(declare-fun e!2759394 () Bool)

(assert (=> d!1344002 (=> res!1833291 e!2759394)))

(assert (=> d!1344002 (= res!1833291 (or ((_ is Nil!49672) (t!356734 (toList!3561 lm!1616))) ((_ is Nil!49672) (t!356734 (t!356734 (toList!3561 lm!1616))))))))

(assert (=> d!1344002 (= (isStrictlySorted!246 (t!356734 (toList!3561 lm!1616))) e!2759394)))

(declare-fun b!4431644 () Bool)

(declare-fun e!2759395 () Bool)

(assert (=> b!4431644 (= e!2759394 e!2759395)))

(declare-fun res!1833292 () Bool)

(assert (=> b!4431644 (=> (not res!1833292) (not e!2759395))))

(assert (=> b!4431644 (= res!1833292 (bvslt (_1!28058 (h!55371 (t!356734 (toList!3561 lm!1616)))) (_1!28058 (h!55371 (t!356734 (t!356734 (toList!3561 lm!1616)))))))))

(declare-fun b!4431645 () Bool)

(assert (=> b!4431645 (= e!2759395 (isStrictlySorted!246 (t!356734 (t!356734 (toList!3561 lm!1616)))))))

(assert (= (and d!1344002 (not res!1833291)) b!4431644))

(assert (= (and b!4431644 res!1833292) b!4431645))

(declare-fun m!5115995 () Bool)

(assert (=> b!4431645 m!5115995))

(assert (=> b!4431327 d!1344002))

(declare-fun d!1344004 () Bool)

(declare-fun res!1833297 () Bool)

(declare-fun e!2759400 () Bool)

(assert (=> d!1344004 (=> res!1833297 e!2759400)))

(assert (=> d!1344004 (= res!1833297 (or ((_ is Nil!49671) (toList!3562 lt!1629588)) ((_ is Nil!49671) (t!356733 (toList!3562 lt!1629588)))))))

(assert (=> d!1344004 (= (noDuplicatedKeys!180 (toList!3562 lt!1629588)) e!2759400)))

(declare-fun b!4431650 () Bool)

(declare-fun e!2759401 () Bool)

(assert (=> b!4431650 (= e!2759400 e!2759401)))

(declare-fun res!1833298 () Bool)

(assert (=> b!4431650 (=> (not res!1833298) (not e!2759401))))

(assert (=> b!4431650 (= res!1833298 (not (containsKey!1168 (t!356733 (toList!3562 lt!1629588)) (_1!28057 (h!55370 (toList!3562 lt!1629588))))))))

(declare-fun b!4431651 () Bool)

(assert (=> b!4431651 (= e!2759401 (noDuplicatedKeys!180 (t!356733 (toList!3562 lt!1629588))))))

(assert (= (and d!1344004 (not res!1833297)) b!4431650))

(assert (= (and b!4431650 res!1833298) b!4431651))

(declare-fun m!5115997 () Bool)

(assert (=> b!4431650 m!5115997))

(declare-fun m!5115999 () Bool)

(assert (=> b!4431651 m!5115999))

(assert (=> d!1343756 d!1344004))

(declare-fun d!1344006 () Bool)

(assert (=> d!1344006 (= (invariantList!819 (toList!3562 lt!1629792)) (noDuplicatedKeys!180 (toList!3562 lt!1629792)))))

(declare-fun bs!759979 () Bool)

(assert (= bs!759979 d!1344006))

(declare-fun m!5116001 () Bool)

(assert (=> bs!759979 m!5116001))

(assert (=> b!4431200 d!1344006))

(declare-fun bs!759980 () Bool)

(declare-fun b!4431653 () Bool)

(assert (= bs!759980 (and b!4431653 b!4431204)))

(declare-fun lambda!155377 () Int)

(assert (=> bs!759980 (= (= (extractMap!848 (t!356734 (t!356734 (toList!3561 lm!1616)))) (extractMap!848 (t!356734 (toList!3561 lm!1616)))) (= lambda!155377 lambda!155329))))

(declare-fun bs!759981 () Bool)

(assert (= bs!759981 (and b!4431653 b!4431201)))

(assert (=> bs!759981 (= (= (extractMap!848 (t!356734 (t!356734 (toList!3561 lm!1616)))) (extractMap!848 (t!356734 (toList!3561 lm!1616)))) (= lambda!155377 lambda!155328))))

(declare-fun bs!759982 () Bool)

(assert (= bs!759982 (and b!4431653 d!1343894)))

(assert (=> bs!759982 (= (= (extractMap!848 (t!356734 (t!356734 (toList!3561 lm!1616)))) lt!1629788) (= lambda!155377 lambda!155360))))

(declare-fun bs!759983 () Bool)

(assert (= bs!759983 (and b!4431653 d!1343680)))

(assert (=> bs!759983 (= (= (extractMap!848 (t!356734 (t!356734 (toList!3561 lm!1616)))) lt!1629792) (= lambda!155377 lambda!155331))))

(assert (=> bs!759980 (= (= (extractMap!848 (t!356734 (t!356734 (toList!3561 lm!1616)))) lt!1629788) (= lambda!155377 lambda!155330))))

(declare-fun bs!759984 () Bool)

(assert (= bs!759984 (and b!4431653 b!4431532)))

(assert (=> bs!759984 (= (= (extractMap!848 (t!356734 (t!356734 (toList!3561 lm!1616)))) (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))) (= lambda!155377 lambda!155366))))

(declare-fun bs!759985 () Bool)

(assert (= bs!759985 (and b!4431653 d!1343630)))

(assert (=> bs!759985 (not (= lambda!155377 lambda!155248))))

(declare-fun bs!759986 () Bool)

(assert (= bs!759986 (and b!4431653 b!4431529)))

(assert (=> bs!759986 (= (= (extractMap!848 (t!356734 (t!356734 (toList!3561 lm!1616)))) (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))) (= lambda!155377 lambda!155364))))

(assert (=> bs!759984 (= (= (extractMap!848 (t!356734 (t!356734 (toList!3561 lm!1616)))) lt!1629939) (= lambda!155377 lambda!155367))))

(declare-fun bs!759987 () Bool)

(assert (= bs!759987 (and b!4431653 d!1343918)))

(assert (=> bs!759987 (= (= (extractMap!848 (t!356734 (t!356734 (toList!3561 lm!1616)))) lt!1629943) (= lambda!155377 lambda!155368))))

(assert (=> b!4431653 true))

(declare-fun bs!759992 () Bool)

(declare-fun b!4431656 () Bool)

(assert (= bs!759992 (and b!4431656 b!4431204)))

(declare-fun lambda!155379 () Int)

(assert (=> bs!759992 (= (= (extractMap!848 (t!356734 (t!356734 (toList!3561 lm!1616)))) (extractMap!848 (t!356734 (toList!3561 lm!1616)))) (= lambda!155379 lambda!155329))))

(declare-fun bs!759993 () Bool)

(assert (= bs!759993 (and b!4431656 b!4431201)))

(assert (=> bs!759993 (= (= (extractMap!848 (t!356734 (t!356734 (toList!3561 lm!1616)))) (extractMap!848 (t!356734 (toList!3561 lm!1616)))) (= lambda!155379 lambda!155328))))

(declare-fun bs!759994 () Bool)

(assert (= bs!759994 (and b!4431656 d!1343894)))

(assert (=> bs!759994 (= (= (extractMap!848 (t!356734 (t!356734 (toList!3561 lm!1616)))) lt!1629788) (= lambda!155379 lambda!155360))))

(declare-fun bs!759995 () Bool)

(assert (= bs!759995 (and b!4431656 d!1343680)))

(assert (=> bs!759995 (= (= (extractMap!848 (t!356734 (t!356734 (toList!3561 lm!1616)))) lt!1629792) (= lambda!155379 lambda!155331))))

(assert (=> bs!759992 (= (= (extractMap!848 (t!356734 (t!356734 (toList!3561 lm!1616)))) lt!1629788) (= lambda!155379 lambda!155330))))

(declare-fun bs!759996 () Bool)

(assert (= bs!759996 (and b!4431656 b!4431653)))

(assert (=> bs!759996 (= lambda!155379 lambda!155377)))

(declare-fun bs!759997 () Bool)

(assert (= bs!759997 (and b!4431656 b!4431532)))

(assert (=> bs!759997 (= (= (extractMap!848 (t!356734 (t!356734 (toList!3561 lm!1616)))) (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))) (= lambda!155379 lambda!155366))))

(declare-fun bs!759998 () Bool)

(assert (= bs!759998 (and b!4431656 d!1343630)))

(assert (=> bs!759998 (not (= lambda!155379 lambda!155248))))

(declare-fun bs!759999 () Bool)

(assert (= bs!759999 (and b!4431656 b!4431529)))

(assert (=> bs!759999 (= (= (extractMap!848 (t!356734 (t!356734 (toList!3561 lm!1616)))) (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))) (= lambda!155379 lambda!155364))))

(assert (=> bs!759997 (= (= (extractMap!848 (t!356734 (t!356734 (toList!3561 lm!1616)))) lt!1629939) (= lambda!155379 lambda!155367))))

(declare-fun bs!760000 () Bool)

(assert (= bs!760000 (and b!4431656 d!1343918)))

(assert (=> bs!760000 (= (= (extractMap!848 (t!356734 (t!356734 (toList!3561 lm!1616)))) lt!1629943) (= lambda!155379 lambda!155368))))

(assert (=> b!4431656 true))

(declare-fun lambda!155380 () Int)

(declare-fun lt!1630025 () ListMap!2805)

(assert (=> bs!759992 (= (= lt!1630025 (extractMap!848 (t!356734 (toList!3561 lm!1616)))) (= lambda!155380 lambda!155329))))

(assert (=> bs!759993 (= (= lt!1630025 (extractMap!848 (t!356734 (toList!3561 lm!1616)))) (= lambda!155380 lambda!155328))))

(assert (=> bs!759994 (= (= lt!1630025 lt!1629788) (= lambda!155380 lambda!155360))))

(assert (=> bs!759995 (= (= lt!1630025 lt!1629792) (= lambda!155380 lambda!155331))))

(assert (=> bs!759992 (= (= lt!1630025 lt!1629788) (= lambda!155380 lambda!155330))))

(assert (=> bs!759996 (= (= lt!1630025 (extractMap!848 (t!356734 (t!356734 (toList!3561 lm!1616))))) (= lambda!155380 lambda!155377))))

(assert (=> bs!759997 (= (= lt!1630025 (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))) (= lambda!155380 lambda!155366))))

(assert (=> bs!759998 (not (= lambda!155380 lambda!155248))))

(assert (=> b!4431656 (= (= lt!1630025 (extractMap!848 (t!356734 (t!356734 (toList!3561 lm!1616))))) (= lambda!155380 lambda!155379))))

(assert (=> bs!759999 (= (= lt!1630025 (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))) (= lambda!155380 lambda!155364))))

(assert (=> bs!759997 (= (= lt!1630025 lt!1629939) (= lambda!155380 lambda!155367))))

(assert (=> bs!760000 (= (= lt!1630025 lt!1629943) (= lambda!155380 lambda!155368))))

(assert (=> b!4431656 true))

(declare-fun bs!760002 () Bool)

(declare-fun d!1344008 () Bool)

(assert (= bs!760002 (and d!1344008 b!4431204)))

(declare-fun lambda!155381 () Int)

(declare-fun lt!1630029 () ListMap!2805)

(assert (=> bs!760002 (= (= lt!1630029 (extractMap!848 (t!356734 (toList!3561 lm!1616)))) (= lambda!155381 lambda!155329))))

(declare-fun bs!760003 () Bool)

(assert (= bs!760003 (and d!1344008 b!4431201)))

(assert (=> bs!760003 (= (= lt!1630029 (extractMap!848 (t!356734 (toList!3561 lm!1616)))) (= lambda!155381 lambda!155328))))

(declare-fun bs!760004 () Bool)

(assert (= bs!760004 (and d!1344008 d!1343680)))

(assert (=> bs!760004 (= (= lt!1630029 lt!1629792) (= lambda!155381 lambda!155331))))

(assert (=> bs!760002 (= (= lt!1630029 lt!1629788) (= lambda!155381 lambda!155330))))

(declare-fun bs!760005 () Bool)

(assert (= bs!760005 (and d!1344008 b!4431653)))

(assert (=> bs!760005 (= (= lt!1630029 (extractMap!848 (t!356734 (t!356734 (toList!3561 lm!1616))))) (= lambda!155381 lambda!155377))))

(declare-fun bs!760006 () Bool)

(assert (= bs!760006 (and d!1344008 b!4431532)))

(assert (=> bs!760006 (= (= lt!1630029 (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))) (= lambda!155381 lambda!155366))))

(declare-fun bs!760007 () Bool)

(assert (= bs!760007 (and d!1344008 d!1343630)))

(assert (=> bs!760007 (not (= lambda!155381 lambda!155248))))

(declare-fun bs!760008 () Bool)

(assert (= bs!760008 (and d!1344008 b!4431656)))

(assert (=> bs!760008 (= (= lt!1630029 (extractMap!848 (t!356734 (t!356734 (toList!3561 lm!1616))))) (= lambda!155381 lambda!155379))))

(declare-fun bs!760009 () Bool)

(assert (= bs!760009 (and d!1344008 b!4431529)))

(assert (=> bs!760009 (= (= lt!1630029 (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))) (= lambda!155381 lambda!155364))))

(assert (=> bs!760006 (= (= lt!1630029 lt!1629939) (= lambda!155381 lambda!155367))))

(declare-fun bs!760010 () Bool)

(assert (= bs!760010 (and d!1344008 d!1343918)))

(assert (=> bs!760010 (= (= lt!1630029 lt!1629943) (= lambda!155381 lambda!155368))))

(assert (=> bs!760008 (= (= lt!1630029 lt!1630025) (= lambda!155381 lambda!155380))))

(declare-fun bs!760011 () Bool)

(assert (= bs!760011 (and d!1344008 d!1343894)))

(assert (=> bs!760011 (= (= lt!1630029 lt!1629788) (= lambda!155381 lambda!155360))))

(assert (=> d!1344008 true))

(declare-fun b!4431652 () Bool)

(declare-fun e!2759402 () Bool)

(assert (=> b!4431652 (= e!2759402 (invariantList!819 (toList!3562 lt!1630029)))))

(declare-fun e!2759404 () ListMap!2805)

(assert (=> b!4431653 (= e!2759404 (extractMap!848 (t!356734 (t!356734 (toList!3561 lm!1616)))))))

(declare-fun lt!1630040 () Unit!82673)

(declare-fun call!308352 () Unit!82673)

(assert (=> b!4431653 (= lt!1630040 call!308352)))

(declare-fun call!308351 () Bool)

(assert (=> b!4431653 call!308351))

(declare-fun lt!1630020 () Unit!82673)

(assert (=> b!4431653 (= lt!1630020 lt!1630040)))

(declare-fun call!308353 () Bool)

(assert (=> b!4431653 call!308353))

(declare-fun lt!1630023 () Unit!82673)

(declare-fun Unit!82745 () Unit!82673)

(assert (=> b!4431653 (= lt!1630023 Unit!82745)))

(declare-fun b!4431654 () Bool)

(declare-fun e!2759403 () Bool)

(assert (=> b!4431654 (= e!2759403 (forall!9620 (toList!3562 (extractMap!848 (t!356734 (t!356734 (toList!3561 lm!1616))))) lambda!155380))))

(declare-fun b!4431655 () Bool)

(declare-fun res!1833300 () Bool)

(assert (=> b!4431655 (=> (not res!1833300) (not e!2759402))))

(assert (=> b!4431655 (= res!1833300 (forall!9620 (toList!3562 (extractMap!848 (t!356734 (t!356734 (toList!3561 lm!1616))))) lambda!155381))))

(assert (=> b!4431656 (= e!2759404 lt!1630025)))

(declare-fun lt!1630027 () ListMap!2805)

(assert (=> b!4431656 (= lt!1630027 (+!1145 (extractMap!848 (t!356734 (t!356734 (toList!3561 lm!1616)))) (h!55370 (_2!28058 (h!55371 (t!356734 (toList!3561 lm!1616)))))))))

(assert (=> b!4431656 (= lt!1630025 (addToMapMapFromBucket!412 (t!356733 (_2!28058 (h!55371 (t!356734 (toList!3561 lm!1616))))) (+!1145 (extractMap!848 (t!356734 (t!356734 (toList!3561 lm!1616)))) (h!55370 (_2!28058 (h!55371 (t!356734 (toList!3561 lm!1616))))))))))

(declare-fun lt!1630024 () Unit!82673)

(assert (=> b!4431656 (= lt!1630024 call!308352)))

(assert (=> b!4431656 (forall!9620 (toList!3562 (extractMap!848 (t!356734 (t!356734 (toList!3561 lm!1616))))) lambda!155379)))

(declare-fun lt!1630030 () Unit!82673)

(assert (=> b!4431656 (= lt!1630030 lt!1630024)))

(assert (=> b!4431656 (forall!9620 (toList!3562 lt!1630027) lambda!155380)))

(declare-fun lt!1630036 () Unit!82673)

(declare-fun Unit!82746 () Unit!82673)

(assert (=> b!4431656 (= lt!1630036 Unit!82746)))

(assert (=> b!4431656 call!308353))

(declare-fun lt!1630021 () Unit!82673)

(declare-fun Unit!82747 () Unit!82673)

(assert (=> b!4431656 (= lt!1630021 Unit!82747)))

(declare-fun lt!1630032 () Unit!82673)

(declare-fun Unit!82748 () Unit!82673)

(assert (=> b!4431656 (= lt!1630032 Unit!82748)))

(declare-fun lt!1630031 () Unit!82673)

(assert (=> b!4431656 (= lt!1630031 (forallContained!2111 (toList!3562 lt!1630027) lambda!155380 (h!55370 (_2!28058 (h!55371 (t!356734 (toList!3561 lm!1616)))))))))

(assert (=> b!4431656 (contains!12199 lt!1630027 (_1!28057 (h!55370 (_2!28058 (h!55371 (t!356734 (toList!3561 lm!1616)))))))))

(declare-fun lt!1630035 () Unit!82673)

(declare-fun Unit!82749 () Unit!82673)

(assert (=> b!4431656 (= lt!1630035 Unit!82749)))

(assert (=> b!4431656 (contains!12199 lt!1630025 (_1!28057 (h!55370 (_2!28058 (h!55371 (t!356734 (toList!3561 lm!1616)))))))))

(declare-fun lt!1630038 () Unit!82673)

(declare-fun Unit!82750 () Unit!82673)

(assert (=> b!4431656 (= lt!1630038 Unit!82750)))

(assert (=> b!4431656 (forall!9620 (_2!28058 (h!55371 (t!356734 (toList!3561 lm!1616)))) lambda!155380)))

(declare-fun lt!1630037 () Unit!82673)

(declare-fun Unit!82751 () Unit!82673)

(assert (=> b!4431656 (= lt!1630037 Unit!82751)))

(assert (=> b!4431656 (forall!9620 (toList!3562 lt!1630027) lambda!155380)))

(declare-fun lt!1630026 () Unit!82673)

(declare-fun Unit!82752 () Unit!82673)

(assert (=> b!4431656 (= lt!1630026 Unit!82752)))

(declare-fun lt!1630022 () Unit!82673)

(declare-fun Unit!82753 () Unit!82673)

(assert (=> b!4431656 (= lt!1630022 Unit!82753)))

(declare-fun lt!1630034 () Unit!82673)

(assert (=> b!4431656 (= lt!1630034 (addForallContainsKeyThenBeforeAdding!187 (extractMap!848 (t!356734 (t!356734 (toList!3561 lm!1616)))) lt!1630025 (_1!28057 (h!55370 (_2!28058 (h!55371 (t!356734 (toList!3561 lm!1616)))))) (_2!28057 (h!55370 (_2!28058 (h!55371 (t!356734 (toList!3561 lm!1616))))))))))

(assert (=> b!4431656 (forall!9620 (toList!3562 (extractMap!848 (t!356734 (t!356734 (toList!3561 lm!1616))))) lambda!155380)))

(declare-fun lt!1630028 () Unit!82673)

(assert (=> b!4431656 (= lt!1630028 lt!1630034)))

(assert (=> b!4431656 call!308351))

(declare-fun lt!1630033 () Unit!82673)

(declare-fun Unit!82754 () Unit!82673)

(assert (=> b!4431656 (= lt!1630033 Unit!82754)))

(declare-fun res!1833301 () Bool)

(assert (=> b!4431656 (= res!1833301 (forall!9620 (_2!28058 (h!55371 (t!356734 (toList!3561 lm!1616)))) lambda!155380))))

(assert (=> b!4431656 (=> (not res!1833301) (not e!2759403))))

(assert (=> b!4431656 e!2759403))

(declare-fun lt!1630039 () Unit!82673)

(declare-fun Unit!82755 () Unit!82673)

(assert (=> b!4431656 (= lt!1630039 Unit!82755)))

(assert (=> d!1344008 e!2759402))

(declare-fun res!1833299 () Bool)

(assert (=> d!1344008 (=> (not res!1833299) (not e!2759402))))

(assert (=> d!1344008 (= res!1833299 (forall!9620 (_2!28058 (h!55371 (t!356734 (toList!3561 lm!1616)))) lambda!155381))))

(assert (=> d!1344008 (= lt!1630029 e!2759404)))

(declare-fun c!754289 () Bool)

(assert (=> d!1344008 (= c!754289 ((_ is Nil!49671) (_2!28058 (h!55371 (t!356734 (toList!3561 lm!1616))))))))

(assert (=> d!1344008 (noDuplicateKeys!787 (_2!28058 (h!55371 (t!356734 (toList!3561 lm!1616)))))))

(assert (=> d!1344008 (= (addToMapMapFromBucket!412 (_2!28058 (h!55371 (t!356734 (toList!3561 lm!1616)))) (extractMap!848 (t!356734 (t!356734 (toList!3561 lm!1616))))) lt!1630029)))

(declare-fun bm!308346 () Bool)

(assert (=> bm!308346 (= call!308353 (forall!9620 (ite c!754289 (toList!3562 (extractMap!848 (t!356734 (t!356734 (toList!3561 lm!1616))))) (t!356733 (_2!28058 (h!55371 (t!356734 (toList!3561 lm!1616)))))) (ite c!754289 lambda!155377 lambda!155380)))))

(declare-fun bm!308347 () Bool)

(assert (=> bm!308347 (= call!308351 (forall!9620 (toList!3562 (extractMap!848 (t!356734 (t!356734 (toList!3561 lm!1616))))) (ite c!754289 lambda!155377 lambda!155380)))))

(declare-fun bm!308348 () Bool)

(assert (=> bm!308348 (= call!308352 (lemmaContainsAllItsOwnKeys!187 (extractMap!848 (t!356734 (t!356734 (toList!3561 lm!1616))))))))

(assert (= (and d!1344008 c!754289) b!4431653))

(assert (= (and d!1344008 (not c!754289)) b!4431656))

(assert (= (and b!4431656 res!1833301) b!4431654))

(assert (= (or b!4431653 b!4431656) bm!308348))

(assert (= (or b!4431653 b!4431656) bm!308346))

(assert (= (or b!4431653 b!4431656) bm!308347))

(assert (= (and d!1344008 res!1833299) b!4431655))

(assert (= (and b!4431655 res!1833300) b!4431652))

(declare-fun m!5116067 () Bool)

(assert (=> b!4431655 m!5116067))

(declare-fun m!5116069 () Bool)

(assert (=> b!4431654 m!5116069))

(declare-fun m!5116071 () Bool)

(assert (=> d!1344008 m!5116071))

(assert (=> d!1344008 m!5115493))

(declare-fun m!5116073 () Bool)

(assert (=> b!4431652 m!5116073))

(assert (=> bm!308348 m!5115343))

(declare-fun m!5116075 () Bool)

(assert (=> bm!308348 m!5116075))

(declare-fun m!5116077 () Bool)

(assert (=> bm!308346 m!5116077))

(declare-fun m!5116079 () Bool)

(assert (=> b!4431656 m!5116079))

(declare-fun m!5116081 () Bool)

(assert (=> b!4431656 m!5116081))

(declare-fun m!5116083 () Bool)

(assert (=> b!4431656 m!5116083))

(declare-fun m!5116085 () Bool)

(assert (=> b!4431656 m!5116085))

(assert (=> b!4431656 m!5116069))

(assert (=> b!4431656 m!5115343))

(declare-fun m!5116087 () Bool)

(assert (=> b!4431656 m!5116087))

(declare-fun m!5116089 () Bool)

(assert (=> b!4431656 m!5116089))

(assert (=> b!4431656 m!5116085))

(assert (=> b!4431656 m!5116081))

(assert (=> b!4431656 m!5115343))

(declare-fun m!5116091 () Bool)

(assert (=> b!4431656 m!5116091))

(assert (=> b!4431656 m!5116091))

(declare-fun m!5116093 () Bool)

(assert (=> b!4431656 m!5116093))

(declare-fun m!5116095 () Bool)

(assert (=> b!4431656 m!5116095))

(declare-fun m!5116097 () Bool)

(assert (=> bm!308347 m!5116097))

(assert (=> b!4431207 d!1344008))

(declare-fun bs!760012 () Bool)

(declare-fun d!1344026 () Bool)

(assert (= bs!760012 (and d!1344026 start!432668)))

(declare-fun lambda!155382 () Int)

(assert (=> bs!760012 (= lambda!155382 lambda!155230)))

(declare-fun bs!760013 () Bool)

(assert (= bs!760013 (and d!1344026 d!1343594)))

(assert (=> bs!760013 (= lambda!155382 lambda!155242)))

(declare-fun bs!760014 () Bool)

(assert (= bs!760014 (and d!1344026 d!1343626)))

(assert (=> bs!760014 (not (= lambda!155382 lambda!155245))))

(declare-fun bs!760015 () Bool)

(assert (= bs!760015 (and d!1344026 d!1343746)))

(assert (=> bs!760015 (= lambda!155382 lambda!155332)))

(declare-fun lt!1630047 () ListMap!2805)

(assert (=> d!1344026 (invariantList!819 (toList!3562 lt!1630047))))

(declare-fun e!2759416 () ListMap!2805)

(assert (=> d!1344026 (= lt!1630047 e!2759416)))

(declare-fun c!754291 () Bool)

(assert (=> d!1344026 (= c!754291 ((_ is Cons!49672) (t!356734 (t!356734 (toList!3561 lm!1616)))))))

(assert (=> d!1344026 (forall!9618 (t!356734 (t!356734 (toList!3561 lm!1616))) lambda!155382)))

(assert (=> d!1344026 (= (extractMap!848 (t!356734 (t!356734 (toList!3561 lm!1616)))) lt!1630047)))

(declare-fun b!4431669 () Bool)

(assert (=> b!4431669 (= e!2759416 (addToMapMapFromBucket!412 (_2!28058 (h!55371 (t!356734 (t!356734 (toList!3561 lm!1616))))) (extractMap!848 (t!356734 (t!356734 (t!356734 (toList!3561 lm!1616)))))))))

(declare-fun b!4431670 () Bool)

(assert (=> b!4431670 (= e!2759416 (ListMap!2806 Nil!49671))))

(assert (= (and d!1344026 c!754291) b!4431669))

(assert (= (and d!1344026 (not c!754291)) b!4431670))

(declare-fun m!5116099 () Bool)

(assert (=> d!1344026 m!5116099))

(declare-fun m!5116101 () Bool)

(assert (=> d!1344026 m!5116101))

(declare-fun m!5116103 () Bool)

(assert (=> b!4431669 m!5116103))

(assert (=> b!4431669 m!5116103))

(declare-fun m!5116105 () Bool)

(assert (=> b!4431669 m!5116105))

(assert (=> b!4431207 d!1344026))

(declare-fun d!1344028 () Bool)

(declare-fun res!1833312 () Bool)

(declare-fun e!2759417 () Bool)

(assert (=> d!1344028 (=> res!1833312 e!2759417)))

(assert (=> d!1344028 (= res!1833312 ((_ is Nil!49674) lt!1629820))))

(assert (=> d!1344028 (= (noDuplicate!664 lt!1629820) e!2759417)))

(declare-fun b!4431671 () Bool)

(declare-fun e!2759418 () Bool)

(assert (=> b!4431671 (= e!2759417 e!2759418)))

(declare-fun res!1833313 () Bool)

(assert (=> b!4431671 (=> (not res!1833313) (not e!2759418))))

(assert (=> b!4431671 (= res!1833313 (not (contains!12202 (t!356736 lt!1629820) (h!55375 lt!1629820))))))

(declare-fun b!4431672 () Bool)

(assert (=> b!4431672 (= e!2759418 (noDuplicate!664 (t!356736 lt!1629820)))))

(assert (= (and d!1344028 (not res!1833312)) b!4431671))

(assert (= (and b!4431671 res!1833313) b!4431672))

(declare-fun m!5116107 () Bool)

(assert (=> b!4431671 m!5116107))

(declare-fun m!5116109 () Bool)

(assert (=> b!4431672 m!5116109))

(assert (=> d!1343764 d!1344028))

(assert (=> d!1343764 d!1343766))

(declare-fun d!1344030 () Bool)

(assert (=> d!1344030 (= (isEmpty!28363 (getValueByKey!740 (toList!3561 lm!1616) hash!366)) (not ((_ is Some!10753) (getValueByKey!740 (toList!3561 lm!1616) hash!366))))))

(assert (=> d!1343800 d!1344030))

(declare-fun d!1344032 () Bool)

(declare-fun c!754292 () Bool)

(assert (=> d!1344032 (= c!754292 ((_ is Nil!49674) lt!1629840))))

(declare-fun e!2759419 () (InoxSet K!11040))

(assert (=> d!1344032 (= (content!7979 lt!1629840) e!2759419)))

(declare-fun b!4431675 () Bool)

(assert (=> b!4431675 (= e!2759419 ((as const (Array K!11040 Bool)) false))))

(declare-fun b!4431676 () Bool)

(assert (=> b!4431676 (= e!2759419 ((_ map or) (store ((as const (Array K!11040 Bool)) false) (h!55375 lt!1629840) true) (content!7979 (t!356736 lt!1629840))))))

(assert (= (and d!1344032 c!754292) b!4431675))

(assert (= (and d!1344032 (not c!754292)) b!4431676))

(declare-fun m!5116113 () Bool)

(assert (=> b!4431676 m!5116113))

(declare-fun m!5116115 () Bool)

(assert (=> b!4431676 m!5116115))

(assert (=> b!4431298 d!1344032))

(declare-fun d!1344034 () Bool)

(declare-fun c!754293 () Bool)

(assert (=> d!1344034 (= c!754293 ((_ is Nil!49674) (map!10855 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) lambda!155350)))))

(declare-fun e!2759420 () (InoxSet K!11040))

(assert (=> d!1344034 (= (content!7979 (map!10855 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) lambda!155350)) e!2759420)))

(declare-fun b!4431677 () Bool)

(assert (=> b!4431677 (= e!2759420 ((as const (Array K!11040 Bool)) false))))

(declare-fun b!4431678 () Bool)

(assert (=> b!4431678 (= e!2759420 ((_ map or) (store ((as const (Array K!11040 Bool)) false) (h!55375 (map!10855 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) lambda!155350)) true) (content!7979 (t!356736 (map!10855 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) lambda!155350)))))))

(assert (= (and d!1344034 c!754293) b!4431677))

(assert (= (and d!1344034 (not c!754293)) b!4431678))

(declare-fun m!5116119 () Bool)

(assert (=> b!4431678 m!5116119))

(declare-fun m!5116121 () Bool)

(assert (=> b!4431678 m!5116121))

(assert (=> b!4431298 d!1344034))

(declare-fun d!1344038 () Bool)

(declare-fun lt!1630052 () List!49798)

(declare-fun size!35879 (List!49798) Int)

(declare-fun size!35880 (List!49795) Int)

(assert (=> d!1344038 (= (size!35879 lt!1630052) (size!35880 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))))

(declare-fun e!2759435 () List!49798)

(assert (=> d!1344038 (= lt!1630052 e!2759435)))

(declare-fun c!754296 () Bool)

(assert (=> d!1344038 (= c!754296 ((_ is Nil!49671) (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))))

(assert (=> d!1344038 (= (map!10855 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) lambda!155350) lt!1630052)))

(declare-fun b!4431695 () Bool)

(assert (=> b!4431695 (= e!2759435 Nil!49674)))

(declare-fun b!4431696 () Bool)

(declare-fun $colon$colon!795 (List!49798 K!11040) List!49798)

(declare-fun dynLambda!20870 (Int tuple2!49526) K!11040)

(assert (=> b!4431696 (= e!2759435 ($colon$colon!795 (map!10855 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) lambda!155350) (dynLambda!20870 lambda!155350 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))))))

(assert (= (and d!1344038 c!754296) b!4431695))

(assert (= (and d!1344038 (not c!754296)) b!4431696))

(declare-fun b_lambda!143753 () Bool)

(assert (=> (not b_lambda!143753) (not b!4431696)))

(declare-fun m!5116147 () Bool)

(assert (=> d!1344038 m!5116147))

(declare-fun m!5116149 () Bool)

(assert (=> d!1344038 m!5116149))

(declare-fun m!5116151 () Bool)

(assert (=> b!4431696 m!5116151))

(declare-fun m!5116153 () Bool)

(assert (=> b!4431696 m!5116153))

(assert (=> b!4431696 m!5116151))

(assert (=> b!4431696 m!5116153))

(declare-fun m!5116155 () Bool)

(assert (=> b!4431696 m!5116155))

(assert (=> b!4431298 d!1344038))

(declare-fun d!1344054 () Bool)

(declare-fun res!1833326 () Bool)

(declare-fun e!2759436 () Bool)

(assert (=> d!1344054 (=> res!1833326 e!2759436)))

(assert (=> d!1344054 (= res!1833326 (and ((_ is Cons!49672) (toList!3561 lt!1629600)) (= (_1!28058 (h!55371 (toList!3561 lt!1629600))) (_1!28058 lt!1629505))))))

(assert (=> d!1344054 (= (containsKey!1170 (toList!3561 lt!1629600) (_1!28058 lt!1629505)) e!2759436)))

(declare-fun b!4431697 () Bool)

(declare-fun e!2759437 () Bool)

(assert (=> b!4431697 (= e!2759436 e!2759437)))

(declare-fun res!1833327 () Bool)

(assert (=> b!4431697 (=> (not res!1833327) (not e!2759437))))

(assert (=> b!4431697 (= res!1833327 (and (or (not ((_ is Cons!49672) (toList!3561 lt!1629600))) (bvsle (_1!28058 (h!55371 (toList!3561 lt!1629600))) (_1!28058 lt!1629505))) ((_ is Cons!49672) (toList!3561 lt!1629600)) (bvslt (_1!28058 (h!55371 (toList!3561 lt!1629600))) (_1!28058 lt!1629505))))))

(declare-fun b!4431698 () Bool)

(assert (=> b!4431698 (= e!2759437 (containsKey!1170 (t!356734 (toList!3561 lt!1629600)) (_1!28058 lt!1629505)))))

(assert (= (and d!1344054 (not res!1833326)) b!4431697))

(assert (= (and b!4431697 res!1833327) b!4431698))

(declare-fun m!5116159 () Bool)

(assert (=> b!4431698 m!5116159))

(assert (=> d!1343748 d!1344054))

(declare-fun d!1344058 () Bool)

(declare-fun lt!1630054 () Bool)

(assert (=> d!1344058 (= lt!1630054 (select (content!7980 lt!1629814) (tuple2!49529 (_1!28058 lt!1629505) (_2!28058 lt!1629505))))))

(declare-fun e!2759440 () Bool)

(assert (=> d!1344058 (= lt!1630054 e!2759440)))

(declare-fun res!1833330 () Bool)

(assert (=> d!1344058 (=> (not res!1833330) (not e!2759440))))

(assert (=> d!1344058 (= res!1833330 ((_ is Cons!49672) lt!1629814))))

(assert (=> d!1344058 (= (contains!12203 lt!1629814 (tuple2!49529 (_1!28058 lt!1629505) (_2!28058 lt!1629505))) lt!1630054)))

(declare-fun b!4431701 () Bool)

(declare-fun e!2759441 () Bool)

(assert (=> b!4431701 (= e!2759440 e!2759441)))

(declare-fun res!1833331 () Bool)

(assert (=> b!4431701 (=> res!1833331 e!2759441)))

(assert (=> b!4431701 (= res!1833331 (= (h!55371 lt!1629814) (tuple2!49529 (_1!28058 lt!1629505) (_2!28058 lt!1629505))))))

(declare-fun b!4431702 () Bool)

(assert (=> b!4431702 (= e!2759441 (contains!12203 (t!356734 lt!1629814) (tuple2!49529 (_1!28058 lt!1629505) (_2!28058 lt!1629505))))))

(assert (= (and d!1344058 res!1833330) b!4431701))

(assert (= (and b!4431701 (not res!1833331)) b!4431702))

(declare-fun m!5116167 () Bool)

(assert (=> d!1344058 m!5116167))

(declare-fun m!5116169 () Bool)

(assert (=> d!1344058 m!5116169))

(declare-fun m!5116171 () Bool)

(assert (=> b!4431702 m!5116171))

(assert (=> b!4431243 d!1344058))

(declare-fun d!1344062 () Bool)

(declare-fun lt!1630055 () Bool)

(assert (=> d!1344062 (= lt!1630055 (select (content!7980 lt!1629598) (tuple2!49529 (_1!28058 lt!1629505) (_2!28058 lt!1629505))))))

(declare-fun e!2759442 () Bool)

(assert (=> d!1344062 (= lt!1630055 e!2759442)))

(declare-fun res!1833332 () Bool)

(assert (=> d!1344062 (=> (not res!1833332) (not e!2759442))))

(assert (=> d!1344062 (= res!1833332 ((_ is Cons!49672) lt!1629598))))

(assert (=> d!1344062 (= (contains!12203 lt!1629598 (tuple2!49529 (_1!28058 lt!1629505) (_2!28058 lt!1629505))) lt!1630055)))

(declare-fun b!4431703 () Bool)

(declare-fun e!2759443 () Bool)

(assert (=> b!4431703 (= e!2759442 e!2759443)))

(declare-fun res!1833333 () Bool)

(assert (=> b!4431703 (=> res!1833333 e!2759443)))

(assert (=> b!4431703 (= res!1833333 (= (h!55371 lt!1629598) (tuple2!49529 (_1!28058 lt!1629505) (_2!28058 lt!1629505))))))

(declare-fun b!4431704 () Bool)

(assert (=> b!4431704 (= e!2759443 (contains!12203 (t!356734 lt!1629598) (tuple2!49529 (_1!28058 lt!1629505) (_2!28058 lt!1629505))))))

(assert (= (and d!1344062 res!1833332) b!4431703))

(assert (= (and b!4431703 (not res!1833333)) b!4431704))

(declare-fun m!5116173 () Bool)

(assert (=> d!1344062 m!5116173))

(declare-fun m!5116175 () Bool)

(assert (=> d!1344062 m!5116175))

(declare-fun m!5116177 () Bool)

(assert (=> b!4431704 m!5116177))

(assert (=> b!4431221 d!1344062))

(assert (=> d!1343792 d!1343784))

(assert (=> d!1343792 d!1343786))

(declare-fun d!1344064 () Bool)

(assert (=> d!1344064 (isDefined!8045 (getValueByKey!739 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) key!3717))))

(assert (=> d!1344064 true))

(declare-fun _$29!579 () Unit!82673)

(assert (=> d!1344064 (= (choose!28055 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) key!3717) _$29!579)))

(declare-fun bs!760037 () Bool)

(assert (= bs!760037 d!1344064))

(assert (=> bs!760037 m!5114961))

(assert (=> bs!760037 m!5114961))

(assert (=> bs!760037 m!5114963))

(assert (=> d!1343792 d!1344064))

(assert (=> d!1343792 d!1343964))

(declare-fun d!1344066 () Bool)

(declare-fun res!1833334 () Bool)

(declare-fun e!2759447 () Bool)

(assert (=> d!1344066 (=> res!1833334 e!2759447)))

(assert (=> d!1344066 (= res!1833334 ((_ is Nil!49672) (t!356734 (toList!3561 lm!1616))))))

(assert (=> d!1344066 (= (forall!9618 (t!356734 (toList!3561 lm!1616)) lambda!155245) e!2759447)))

(declare-fun b!4431711 () Bool)

(declare-fun e!2759448 () Bool)

(assert (=> b!4431711 (= e!2759447 e!2759448)))

(declare-fun res!1833335 () Bool)

(assert (=> b!4431711 (=> (not res!1833335) (not e!2759448))))

(assert (=> b!4431711 (= res!1833335 (dynLambda!20864 lambda!155245 (h!55371 (t!356734 (toList!3561 lm!1616)))))))

(declare-fun b!4431712 () Bool)

(assert (=> b!4431712 (= e!2759448 (forall!9618 (t!356734 (t!356734 (toList!3561 lm!1616))) lambda!155245))))

(assert (= (and d!1344066 (not res!1833334)) b!4431711))

(assert (= (and b!4431711 res!1833335) b!4431712))

(declare-fun b_lambda!143755 () Bool)

(assert (=> (not b_lambda!143755) (not b!4431711)))

(declare-fun m!5116181 () Bool)

(assert (=> b!4431711 m!5116181))

(declare-fun m!5116183 () Bool)

(assert (=> b!4431712 m!5116183))

(assert (=> b!4431363 d!1344066))

(declare-fun d!1344070 () Bool)

(declare-fun res!1833338 () Bool)

(declare-fun e!2759451 () Bool)

(assert (=> d!1344070 (=> res!1833338 e!2759451)))

(assert (=> d!1344070 (= res!1833338 (and ((_ is Cons!49671) (t!356733 (_2!28058 (h!55371 (toList!3561 lt!1629503))))) (= (_1!28057 (h!55370 (t!356733 (_2!28058 (h!55371 (toList!3561 lt!1629503)))))) (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lt!1629503))))))))))

(assert (=> d!1344070 (= (containsKey!1169 (t!356733 (_2!28058 (h!55371 (toList!3561 lt!1629503)))) (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lt!1629503)))))) e!2759451)))

(declare-fun b!4431715 () Bool)

(declare-fun e!2759452 () Bool)

(assert (=> b!4431715 (= e!2759451 e!2759452)))

(declare-fun res!1833339 () Bool)

(assert (=> b!4431715 (=> (not res!1833339) (not e!2759452))))

(assert (=> b!4431715 (= res!1833339 ((_ is Cons!49671) (t!356733 (_2!28058 (h!55371 (toList!3561 lt!1629503))))))))

(declare-fun b!4431716 () Bool)

(assert (=> b!4431716 (= e!2759452 (containsKey!1169 (t!356733 (t!356733 (_2!28058 (h!55371 (toList!3561 lt!1629503))))) (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lt!1629503)))))))))

(assert (= (and d!1344070 (not res!1833338)) b!4431715))

(assert (= (and b!4431715 res!1833339) b!4431716))

(declare-fun m!5116189 () Bool)

(assert (=> b!4431716 m!5116189))

(assert (=> b!4431014 d!1344070))

(declare-fun d!1344074 () Bool)

(assert (=> d!1344074 (dynLambda!20869 lambda!155347 (_1!28057 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))))))

(declare-fun lt!1630058 () Unit!82673)

(declare-fun choose!28063 (List!49798 Int K!11040) Unit!82673)

(assert (=> d!1344074 (= lt!1630058 (choose!28063 (getKeysList!266 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) lambda!155347 (_1!28057 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))))))

(declare-fun e!2759455 () Bool)

(assert (=> d!1344074 e!2759455))

(declare-fun res!1833342 () Bool)

(assert (=> d!1344074 (=> (not res!1833342) (not e!2759455))))

(assert (=> d!1344074 (= res!1833342 (forall!9622 (getKeysList!266 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) lambda!155347))))

(assert (=> d!1344074 (= (forallContained!2113 (getKeysList!266 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) lambda!155347 (_1!28057 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))) lt!1630058)))

(declare-fun b!4431719 () Bool)

(assert (=> b!4431719 (= e!2759455 (contains!12202 (getKeysList!266 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) (_1!28057 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))))))

(assert (= (and d!1344074 res!1833342) b!4431719))

(declare-fun b_lambda!143759 () Bool)

(assert (=> (not b_lambda!143759) (not d!1344074)))

(declare-fun m!5116191 () Bool)

(assert (=> d!1344074 m!5116191))

(assert (=> d!1344074 m!5115403))

(declare-fun m!5116193 () Bool)

(assert (=> d!1344074 m!5116193))

(assert (=> d!1344074 m!5115403))

(declare-fun m!5116195 () Bool)

(assert (=> d!1344074 m!5116195))

(assert (=> b!4431719 m!5115403))

(assert (=> b!4431719 m!5115419))

(assert (=> b!4431296 d!1344074))

(declare-fun bs!760038 () Bool)

(declare-fun b!4431721 () Bool)

(assert (= bs!760038 (and b!4431721 b!4431273)))

(declare-fun lambda!155387 () Int)

(assert (=> bs!760038 (= (= (t!356733 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) (= lambda!155387 lambda!155337))))

(declare-fun bs!760039 () Bool)

(assert (= bs!760039 (and b!4431721 b!4431296)))

(assert (=> bs!760039 (= (= (t!356733 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) (= lambda!155387 lambda!155347))))

(declare-fun bs!760040 () Bool)

(assert (= bs!760040 (and b!4431721 b!4431297)))

(assert (=> bs!760040 (= (= (t!356733 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) (Cons!49671 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))) (= lambda!155387 lambda!155348))))

(declare-fun bs!760041 () Bool)

(assert (= bs!760041 (and b!4431721 b!4431295)))

(assert (=> bs!760041 (= (= (t!356733 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) (= lambda!155387 lambda!155349))))

(assert (=> b!4431721 true))

(declare-fun bs!760042 () Bool)

(declare-fun b!4431722 () Bool)

(assert (= bs!760042 (and b!4431722 b!4431297)))

(declare-fun lambda!155388 () Int)

(assert (=> bs!760042 (= (= (Cons!49671 (h!55370 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) (t!356733 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))) (Cons!49671 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))) (= lambda!155388 lambda!155348))))

(declare-fun bs!760043 () Bool)

(assert (= bs!760043 (and b!4431722 b!4431295)))

(assert (=> bs!760043 (= (= (Cons!49671 (h!55370 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) (t!356733 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))) (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) (= lambda!155388 lambda!155349))))

(declare-fun bs!760044 () Bool)

(assert (= bs!760044 (and b!4431722 b!4431273)))

(assert (=> bs!760044 (= (= (Cons!49671 (h!55370 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) (t!356733 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))) (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) (= lambda!155388 lambda!155337))))

(declare-fun bs!760045 () Bool)

(assert (= bs!760045 (and b!4431722 b!4431296)))

(assert (=> bs!760045 (= (= (Cons!49671 (h!55370 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) (t!356733 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))) (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) (= lambda!155388 lambda!155347))))

(declare-fun bs!760046 () Bool)

(assert (= bs!760046 (and b!4431722 b!4431721)))

(assert (=> bs!760046 (= (= (Cons!49671 (h!55370 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) (t!356733 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))) (t!356733 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))) (= lambda!155388 lambda!155387))))

(assert (=> b!4431722 true))

(declare-fun bs!760047 () Bool)

(declare-fun b!4431720 () Bool)

(assert (= bs!760047 (and b!4431720 b!4431297)))

(declare-fun lambda!155391 () Int)

(assert (=> bs!760047 (= (= (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) (Cons!49671 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))) (= lambda!155391 lambda!155348))))

(declare-fun bs!760048 () Bool)

(assert (= bs!760048 (and b!4431720 b!4431273)))

(assert (=> bs!760048 (= (= (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) (= lambda!155391 lambda!155337))))

(declare-fun bs!760049 () Bool)

(assert (= bs!760049 (and b!4431720 b!4431296)))

(assert (=> bs!760049 (= lambda!155391 lambda!155347)))

(declare-fun bs!760050 () Bool)

(assert (= bs!760050 (and b!4431720 b!4431721)))

(assert (=> bs!760050 (= (= (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) (t!356733 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))) (= lambda!155391 lambda!155387))))

(declare-fun bs!760051 () Bool)

(assert (= bs!760051 (and b!4431720 b!4431295)))

(assert (=> bs!760051 (= (= (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) (= lambda!155391 lambda!155349))))

(declare-fun bs!760052 () Bool)

(assert (= bs!760052 (and b!4431720 b!4431722)))

(assert (=> bs!760052 (= (= (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) (Cons!49671 (h!55370 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) (t!356733 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))))) (= lambda!155391 lambda!155388))))

(assert (=> b!4431720 true))

(declare-fun bs!760053 () Bool)

(declare-fun b!4431723 () Bool)

(assert (= bs!760053 (and b!4431723 b!4431274)))

(declare-fun lambda!155392 () Int)

(assert (=> bs!760053 (= lambda!155392 lambda!155338)))

(declare-fun bs!760054 () Bool)

(assert (= bs!760054 (and b!4431723 b!4431298)))

(assert (=> bs!760054 (= lambda!155392 lambda!155350)))

(declare-fun res!1833345 () Bool)

(declare-fun e!2759456 () Bool)

(assert (=> b!4431720 (=> (not res!1833345) (not e!2759456))))

(declare-fun lt!1630064 () List!49798)

(assert (=> b!4431720 (= res!1833345 (forall!9622 lt!1630064 lambda!155391))))

(assert (=> b!4431721 false))

(declare-fun lt!1630059 () Unit!82673)

(assert (=> b!4431721 (= lt!1630059 (forallContained!2113 (getKeysList!266 (t!356733 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))) lambda!155387 (_1!28057 (h!55370 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))))))))

(declare-fun e!2759458 () Unit!82673)

(declare-fun Unit!82760 () Unit!82673)

(assert (=> b!4431721 (= e!2759458 Unit!82760)))

(declare-fun e!2759457 () List!49798)

(assert (=> b!4431722 (= e!2759457 (Cons!49674 (_1!28057 (h!55370 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))) (getKeysList!266 (t!356733 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))))))))

(declare-fun c!754300 () Bool)

(assert (=> b!4431722 (= c!754300 (containsKey!1168 (t!356733 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) (_1!28057 (h!55370 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))))))))

(declare-fun lt!1630065 () Unit!82673)

(declare-fun e!2759459 () Unit!82673)

(assert (=> b!4431722 (= lt!1630065 e!2759459)))

(declare-fun c!754301 () Bool)

(assert (=> b!4431722 (= c!754301 (contains!12202 (getKeysList!266 (t!356733 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))) (_1!28057 (h!55370 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))))))))

(declare-fun lt!1630061 () Unit!82673)

(assert (=> b!4431722 (= lt!1630061 e!2759458)))

(declare-fun lt!1630060 () List!49798)

(assert (=> b!4431722 (= lt!1630060 (getKeysList!266 (t!356733 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))))))

(declare-fun lt!1630063 () Unit!82673)

(assert (=> b!4431722 (= lt!1630063 (lemmaForallContainsAddHeadPreserves!86 (t!356733 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) lt!1630060 (h!55370 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))))))

(assert (=> b!4431722 (forall!9622 lt!1630060 lambda!155388)))

(declare-fun lt!1630062 () Unit!82673)

(assert (=> b!4431722 (= lt!1630062 lt!1630063)))

(declare-fun d!1344078 () Bool)

(assert (=> d!1344078 e!2759456))

(declare-fun res!1833344 () Bool)

(assert (=> d!1344078 (=> (not res!1833344) (not e!2759456))))

(assert (=> d!1344078 (= res!1833344 (noDuplicate!664 lt!1630064))))

(assert (=> d!1344078 (= lt!1630064 e!2759457)))

(declare-fun c!754302 () Bool)

(assert (=> d!1344078 (= c!754302 ((_ is Cons!49671) (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))))))

(assert (=> d!1344078 (invariantList!819 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))))

(assert (=> d!1344078 (= (getKeysList!266 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) lt!1630064)))

(assert (=> b!4431723 (= e!2759456 (= (content!7979 lt!1630064) (content!7979 (map!10855 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) lambda!155392))))))

(declare-fun b!4431724 () Bool)

(assert (=> b!4431724 false))

(declare-fun Unit!82767 () Unit!82673)

(assert (=> b!4431724 (= e!2759459 Unit!82767)))

(declare-fun b!4431725 () Bool)

(declare-fun Unit!82768 () Unit!82673)

(assert (=> b!4431725 (= e!2759459 Unit!82768)))

(declare-fun b!4431726 () Bool)

(assert (=> b!4431726 (= e!2759457 Nil!49674)))

(declare-fun b!4431727 () Bool)

(declare-fun Unit!82771 () Unit!82673)

(assert (=> b!4431727 (= e!2759458 Unit!82771)))

(declare-fun b!4431728 () Bool)

(declare-fun res!1833343 () Bool)

(assert (=> b!4431728 (=> (not res!1833343) (not e!2759456))))

(assert (=> b!4431728 (= res!1833343 (= (length!184 lt!1630064) (length!185 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))))))

(assert (= (and d!1344078 c!754302) b!4431722))

(assert (= (and d!1344078 (not c!754302)) b!4431726))

(assert (= (and b!4431722 c!754300) b!4431724))

(assert (= (and b!4431722 (not c!754300)) b!4431725))

(assert (= (and b!4431722 c!754301) b!4431721))

(assert (= (and b!4431722 (not c!754301)) b!4431727))

(assert (= (and d!1344078 res!1833344) b!4431728))

(assert (= (and b!4431728 res!1833343) b!4431720))

(assert (= (and b!4431720 res!1833345) b!4431723))

(declare-fun m!5116197 () Bool)

(assert (=> b!4431721 m!5116197))

(assert (=> b!4431721 m!5116197))

(declare-fun m!5116199 () Bool)

(assert (=> b!4431721 m!5116199))

(declare-fun m!5116201 () Bool)

(assert (=> d!1344078 m!5116201))

(declare-fun m!5116203 () Bool)

(assert (=> d!1344078 m!5116203))

(declare-fun m!5116205 () Bool)

(assert (=> b!4431723 m!5116205))

(declare-fun m!5116207 () Bool)

(assert (=> b!4431723 m!5116207))

(assert (=> b!4431723 m!5116207))

(declare-fun m!5116209 () Bool)

(assert (=> b!4431723 m!5116209))

(declare-fun m!5116211 () Bool)

(assert (=> b!4431728 m!5116211))

(declare-fun m!5116213 () Bool)

(assert (=> b!4431728 m!5116213))

(assert (=> b!4431722 m!5116197))

(declare-fun m!5116215 () Bool)

(assert (=> b!4431722 m!5116215))

(declare-fun m!5116217 () Bool)

(assert (=> b!4431722 m!5116217))

(assert (=> b!4431722 m!5116197))

(declare-fun m!5116219 () Bool)

(assert (=> b!4431722 m!5116219))

(declare-fun m!5116221 () Bool)

(assert (=> b!4431722 m!5116221))

(declare-fun m!5116225 () Bool)

(assert (=> b!4431720 m!5116225))

(assert (=> b!4431296 d!1344078))

(declare-fun d!1344080 () Bool)

(declare-fun lt!1630069 () Bool)

(assert (=> d!1344080 (= lt!1630069 (select (content!7979 (t!356736 e!2758881)) key!3717))))

(declare-fun e!2759460 () Bool)

(assert (=> d!1344080 (= lt!1630069 e!2759460)))

(declare-fun res!1833347 () Bool)

(assert (=> d!1344080 (=> (not res!1833347) (not e!2759460))))

(assert (=> d!1344080 (= res!1833347 ((_ is Cons!49674) (t!356736 e!2758881)))))

(assert (=> d!1344080 (= (contains!12202 (t!356736 e!2758881) key!3717) lt!1630069)))

(declare-fun b!4431729 () Bool)

(declare-fun e!2759461 () Bool)

(assert (=> b!4431729 (= e!2759460 e!2759461)))

(declare-fun res!1833346 () Bool)

(assert (=> b!4431729 (=> res!1833346 e!2759461)))

(assert (=> b!4431729 (= res!1833346 (= (h!55375 (t!356736 e!2758881)) key!3717))))

(declare-fun b!4431730 () Bool)

(assert (=> b!4431730 (= e!2759461 (contains!12202 (t!356736 (t!356736 e!2758881)) key!3717))))

(assert (= (and d!1344080 res!1833347) b!4431729))

(assert (= (and b!4431729 (not res!1833346)) b!4431730))

(assert (=> d!1344080 m!5115617))

(declare-fun m!5116229 () Bool)

(assert (=> d!1344080 m!5116229))

(declare-fun m!5116231 () Bool)

(assert (=> b!4431730 m!5116231))

(assert (=> b!4431313 d!1344080))

(declare-fun d!1344084 () Bool)

(declare-fun res!1833350 () Bool)

(declare-fun e!2759464 () Bool)

(assert (=> d!1344084 (=> res!1833350 e!2759464)))

(assert (=> d!1344084 (= res!1833350 (not ((_ is Cons!49671) (_2!28058 (h!55371 (toList!3561 (+!1143 lm!1616 (tuple2!49529 hash!366 newBucket!194))))))))))

(assert (=> d!1344084 (= (noDuplicateKeys!787 (_2!28058 (h!55371 (toList!3561 (+!1143 lm!1616 (tuple2!49529 hash!366 newBucket!194)))))) e!2759464)))

(declare-fun b!4431733 () Bool)

(declare-fun e!2759465 () Bool)

(assert (=> b!4431733 (= e!2759464 e!2759465)))

(declare-fun res!1833351 () Bool)

(assert (=> b!4431733 (=> (not res!1833351) (not e!2759465))))

(assert (=> b!4431733 (= res!1833351 (not (containsKey!1169 (t!356733 (_2!28058 (h!55371 (toList!3561 (+!1143 lm!1616 (tuple2!49529 hash!366 newBucket!194)))))) (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 (+!1143 lm!1616 (tuple2!49529 hash!366 newBucket!194))))))))))))

(declare-fun b!4431734 () Bool)

(assert (=> b!4431734 (= e!2759465 (noDuplicateKeys!787 (t!356733 (_2!28058 (h!55371 (toList!3561 (+!1143 lm!1616 (tuple2!49529 hash!366 newBucket!194))))))))))

(assert (= (and d!1344084 (not res!1833350)) b!4431733))

(assert (= (and b!4431733 res!1833351) b!4431734))

(declare-fun m!5116239 () Bool)

(assert (=> b!4431733 m!5116239))

(declare-fun m!5116241 () Bool)

(assert (=> b!4431734 m!5116241))

(assert (=> bs!759874 d!1344084))

(declare-fun d!1344088 () Bool)

(assert (=> d!1344088 (= (isEmpty!28362 (getValueByKey!739 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) key!3717)) (not ((_ is Some!10752) (getValueByKey!739 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) key!3717))))))

(assert (=> d!1343784 d!1344088))

(declare-fun d!1344090 () Bool)

(declare-fun lt!1630071 () Bool)

(assert (=> d!1344090 (= lt!1630071 (select (content!7980 (toList!3561 lt!1629661)) (tuple2!49529 hash!366 newBucket!194)))))

(declare-fun e!2759468 () Bool)

(assert (=> d!1344090 (= lt!1630071 e!2759468)))

(declare-fun res!1833354 () Bool)

(assert (=> d!1344090 (=> (not res!1833354) (not e!2759468))))

(assert (=> d!1344090 (= res!1833354 ((_ is Cons!49672) (toList!3561 lt!1629661)))))

(assert (=> d!1344090 (= (contains!12203 (toList!3561 lt!1629661) (tuple2!49529 hash!366 newBucket!194)) lt!1630071)))

(declare-fun b!4431737 () Bool)

(declare-fun e!2759469 () Bool)

(assert (=> b!4431737 (= e!2759468 e!2759469)))

(declare-fun res!1833355 () Bool)

(assert (=> b!4431737 (=> res!1833355 e!2759469)))

(assert (=> b!4431737 (= res!1833355 (= (h!55371 (toList!3561 lt!1629661)) (tuple2!49529 hash!366 newBucket!194)))))

(declare-fun b!4431738 () Bool)

(assert (=> b!4431738 (= e!2759469 (contains!12203 (t!356734 (toList!3561 lt!1629661)) (tuple2!49529 hash!366 newBucket!194)))))

(assert (= (and d!1344090 res!1833354) b!4431737))

(assert (= (and b!4431737 (not res!1833355)) b!4431738))

(declare-fun m!5116247 () Bool)

(assert (=> d!1344090 m!5116247))

(declare-fun m!5116249 () Bool)

(assert (=> d!1344090 m!5116249))

(declare-fun m!5116251 () Bool)

(assert (=> b!4431738 m!5116251))

(assert (=> b!4431005 d!1344090))

(declare-fun d!1344094 () Bool)

(declare-fun res!1833356 () Bool)

(declare-fun e!2759470 () Bool)

(assert (=> d!1344094 (=> res!1833356 e!2759470)))

(assert (=> d!1344094 (= res!1833356 (and ((_ is Cons!49671) (t!356733 (_2!28058 (h!55371 (toList!3561 lm!1616))))) (= (_1!28057 (h!55370 (t!356733 (_2!28058 (h!55371 (toList!3561 lm!1616)))))) (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))))))))

(assert (=> d!1344094 (= (containsKey!1169 (t!356733 (_2!28058 (h!55371 (toList!3561 lm!1616)))) (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))) e!2759470)))

(declare-fun b!4431739 () Bool)

(declare-fun e!2759471 () Bool)

(assert (=> b!4431739 (= e!2759470 e!2759471)))

(declare-fun res!1833357 () Bool)

(assert (=> b!4431739 (=> (not res!1833357) (not e!2759471))))

(assert (=> b!4431739 (= res!1833357 ((_ is Cons!49671) (t!356733 (_2!28058 (h!55371 (toList!3561 lm!1616))))))))

(declare-fun b!4431740 () Bool)

(assert (=> b!4431740 (= e!2759471 (containsKey!1169 (t!356733 (t!356733 (_2!28058 (h!55371 (toList!3561 lm!1616))))) (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))))

(assert (= (and d!1344094 (not res!1833356)) b!4431739))

(assert (= (and b!4431739 res!1833357) b!4431740))

(declare-fun m!5116253 () Bool)

(assert (=> b!4431740 m!5116253))

(assert (=> b!4431320 d!1344094))

(declare-fun d!1344098 () Bool)

(declare-fun lt!1630072 () Bool)

(assert (=> d!1344098 (= lt!1630072 (select (content!7979 (t!356736 (keys!16980 (extractMap!848 (toList!3561 lm!1616))))) key!3717))))

(declare-fun e!2759474 () Bool)

(assert (=> d!1344098 (= lt!1630072 e!2759474)))

(declare-fun res!1833359 () Bool)

(assert (=> d!1344098 (=> (not res!1833359) (not e!2759474))))

(assert (=> d!1344098 (= res!1833359 ((_ is Cons!49674) (t!356736 (keys!16980 (extractMap!848 (toList!3561 lm!1616))))))))

(assert (=> d!1344098 (= (contains!12202 (t!356736 (keys!16980 (extractMap!848 (toList!3561 lm!1616)))) key!3717) lt!1630072)))

(declare-fun b!4431745 () Bool)

(declare-fun e!2759475 () Bool)

(assert (=> b!4431745 (= e!2759474 e!2759475)))

(declare-fun res!1833358 () Bool)

(assert (=> b!4431745 (=> res!1833358 e!2759475)))

(assert (=> b!4431745 (= res!1833358 (= (h!55375 (t!356736 (keys!16980 (extractMap!848 (toList!3561 lm!1616))))) key!3717))))

(declare-fun b!4431746 () Bool)

(assert (=> b!4431746 (= e!2759475 (contains!12202 (t!356736 (t!356736 (keys!16980 (extractMap!848 (toList!3561 lm!1616))))) key!3717))))

(assert (= (and d!1344098 res!1833359) b!4431745))

(assert (= (and b!4431745 (not res!1833358)) b!4431746))

(declare-fun m!5116255 () Bool)

(assert (=> d!1344098 m!5116255))

(declare-fun m!5116257 () Bool)

(assert (=> d!1344098 m!5116257))

(declare-fun m!5116259 () Bool)

(assert (=> b!4431746 m!5116259))

(assert (=> b!4431265 d!1344098))

(declare-fun d!1344100 () Bool)

(declare-fun c!754305 () Bool)

(assert (=> d!1344100 (= c!754305 ((_ is Nil!49674) (keys!16980 (extractMap!848 (toList!3561 lm!1616)))))))

(declare-fun e!2759476 () (InoxSet K!11040))

(assert (=> d!1344100 (= (content!7979 (keys!16980 (extractMap!848 (toList!3561 lm!1616)))) e!2759476)))

(declare-fun b!4431747 () Bool)

(assert (=> b!4431747 (= e!2759476 ((as const (Array K!11040 Bool)) false))))

(declare-fun b!4431748 () Bool)

(assert (=> b!4431748 (= e!2759476 ((_ map or) (store ((as const (Array K!11040 Bool)) false) (h!55375 (keys!16980 (extractMap!848 (toList!3561 lm!1616)))) true) (content!7979 (t!356736 (keys!16980 (extractMap!848 (toList!3561 lm!1616)))))))))

(assert (= (and d!1344100 c!754305) b!4431747))

(assert (= (and d!1344100 (not c!754305)) b!4431748))

(declare-fun m!5116263 () Bool)

(assert (=> b!4431748 m!5116263))

(assert (=> b!4431748 m!5116255))

(assert (=> d!1343762 d!1344100))

(declare-fun bs!760072 () Bool)

(declare-fun d!1344104 () Bool)

(assert (= bs!760072 (and d!1344104 b!4431204)))

(declare-fun lambda!155396 () Int)

(assert (=> bs!760072 (= lambda!155396 lambda!155329)))

(declare-fun bs!760073 () Bool)

(assert (= bs!760073 (and d!1344104 b!4431201)))

(assert (=> bs!760073 (= lambda!155396 lambda!155328)))

(assert (=> bs!760072 (= (= (extractMap!848 (t!356734 (toList!3561 lm!1616))) lt!1629788) (= lambda!155396 lambda!155330))))

(declare-fun bs!760074 () Bool)

(assert (= bs!760074 (and d!1344104 b!4431653)))

(assert (=> bs!760074 (= (= (extractMap!848 (t!356734 (toList!3561 lm!1616))) (extractMap!848 (t!356734 (t!356734 (toList!3561 lm!1616))))) (= lambda!155396 lambda!155377))))

(declare-fun bs!760075 () Bool)

(assert (= bs!760075 (and d!1344104 b!4431532)))

(assert (=> bs!760075 (= (= (extractMap!848 (t!356734 (toList!3561 lm!1616))) (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))) (= lambda!155396 lambda!155366))))

(declare-fun bs!760076 () Bool)

(assert (= bs!760076 (and d!1344104 d!1343630)))

(assert (=> bs!760076 (not (= lambda!155396 lambda!155248))))

(declare-fun bs!760077 () Bool)

(assert (= bs!760077 (and d!1344104 b!4431656)))

(assert (=> bs!760077 (= (= (extractMap!848 (t!356734 (toList!3561 lm!1616))) (extractMap!848 (t!356734 (t!356734 (toList!3561 lm!1616))))) (= lambda!155396 lambda!155379))))

(declare-fun bs!760078 () Bool)

(assert (= bs!760078 (and d!1344104 b!4431529)))

(assert (=> bs!760078 (= (= (extractMap!848 (t!356734 (toList!3561 lm!1616))) (+!1145 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))) (= lambda!155396 lambda!155364))))

(assert (=> bs!760075 (= (= (extractMap!848 (t!356734 (toList!3561 lm!1616))) lt!1629939) (= lambda!155396 lambda!155367))))

(declare-fun bs!760079 () Bool)

(assert (= bs!760079 (and d!1344104 d!1343918)))

(assert (=> bs!760079 (= (= (extractMap!848 (t!356734 (toList!3561 lm!1616))) lt!1629943) (= lambda!155396 lambda!155368))))

(assert (=> bs!760077 (= (= (extractMap!848 (t!356734 (toList!3561 lm!1616))) lt!1630025) (= lambda!155396 lambda!155380))))

(declare-fun bs!760080 () Bool)

(assert (= bs!760080 (and d!1344104 d!1343894)))

(assert (=> bs!760080 (= (= (extractMap!848 (t!356734 (toList!3561 lm!1616))) lt!1629788) (= lambda!155396 lambda!155360))))

(declare-fun bs!760081 () Bool)

(assert (= bs!760081 (and d!1344104 d!1344008)))

(assert (=> bs!760081 (= (= (extractMap!848 (t!356734 (toList!3561 lm!1616))) lt!1630029) (= lambda!155396 lambda!155381))))

(declare-fun bs!760082 () Bool)

(assert (= bs!760082 (and d!1344104 d!1343680)))

(assert (=> bs!760082 (= (= (extractMap!848 (t!356734 (toList!3561 lm!1616))) lt!1629792) (= lambda!155396 lambda!155331))))

(assert (=> d!1344104 true))

(assert (=> d!1344104 (forall!9620 (toList!3562 (extractMap!848 (t!356734 (toList!3561 lm!1616)))) lambda!155396)))

(declare-fun lt!1630075 () Unit!82673)

(declare-fun choose!28064 (ListMap!2805) Unit!82673)

(assert (=> d!1344104 (= lt!1630075 (choose!28064 (extractMap!848 (t!356734 (toList!3561 lm!1616)))))))

(assert (=> d!1344104 (= (lemmaContainsAllItsOwnKeys!187 (extractMap!848 (t!356734 (toList!3561 lm!1616)))) lt!1630075)))

(declare-fun bs!760083 () Bool)

(assert (= bs!760083 d!1344104))

(declare-fun m!5116301 () Bool)

(assert (=> bs!760083 m!5116301))

(assert (=> bs!760083 m!5115001))

(declare-fun m!5116303 () Bool)

(assert (=> bs!760083 m!5116303))

(assert (=> bm!308314 d!1344104))

(declare-fun d!1344130 () Bool)

(declare-fun lt!1630077 () Bool)

(assert (=> d!1344130 (= lt!1630077 (select (content!7980 (t!356734 (toList!3561 lt!1629600))) lt!1629505))))

(declare-fun e!2759498 () Bool)

(assert (=> d!1344130 (= lt!1630077 e!2759498)))

(declare-fun res!1833376 () Bool)

(assert (=> d!1344130 (=> (not res!1833376) (not e!2759498))))

(assert (=> d!1344130 (= res!1833376 ((_ is Cons!49672) (t!356734 (toList!3561 lt!1629600))))))

(assert (=> d!1344130 (= (contains!12203 (t!356734 (toList!3561 lt!1629600)) lt!1629505) lt!1630077)))

(declare-fun b!4431777 () Bool)

(declare-fun e!2759499 () Bool)

(assert (=> b!4431777 (= e!2759498 e!2759499)))

(declare-fun res!1833377 () Bool)

(assert (=> b!4431777 (=> res!1833377 e!2759499)))

(assert (=> b!4431777 (= res!1833377 (= (h!55371 (t!356734 (toList!3561 lt!1629600))) lt!1629505))))

(declare-fun b!4431778 () Bool)

(assert (=> b!4431778 (= e!2759499 (contains!12203 (t!356734 (t!356734 (toList!3561 lt!1629600))) lt!1629505))))

(assert (= (and d!1344130 res!1833376) b!4431777))

(assert (= (and b!4431777 (not res!1833377)) b!4431778))

(declare-fun m!5116309 () Bool)

(assert (=> d!1344130 m!5116309))

(declare-fun m!5116311 () Bool)

(assert (=> d!1344130 m!5116311))

(declare-fun m!5116313 () Bool)

(assert (=> b!4431778 m!5116313))

(assert (=> b!4431355 d!1344130))

(declare-fun d!1344134 () Bool)

(declare-fun res!1833380 () Bool)

(declare-fun e!2759502 () Bool)

(assert (=> d!1344134 (=> res!1833380 e!2759502)))

(assert (=> d!1344134 (= res!1833380 (not ((_ is Cons!49671) (_2!28058 (h!55371 (t!356734 (toList!3561 lt!1629503)))))))))

(assert (=> d!1344134 (= (noDuplicateKeys!787 (_2!28058 (h!55371 (t!356734 (toList!3561 lt!1629503))))) e!2759502)))

(declare-fun b!4431781 () Bool)

(declare-fun e!2759503 () Bool)

(assert (=> b!4431781 (= e!2759502 e!2759503)))

(declare-fun res!1833381 () Bool)

(assert (=> b!4431781 (=> (not res!1833381) (not e!2759503))))

(assert (=> b!4431781 (= res!1833381 (not (containsKey!1169 (t!356733 (_2!28058 (h!55371 (t!356734 (toList!3561 lt!1629503))))) (_1!28057 (h!55370 (_2!28058 (h!55371 (t!356734 (toList!3561 lt!1629503)))))))))))

(declare-fun b!4431782 () Bool)

(assert (=> b!4431782 (= e!2759503 (noDuplicateKeys!787 (t!356733 (_2!28058 (h!55371 (t!356734 (toList!3561 lt!1629503)))))))))

(assert (= (and d!1344134 (not res!1833380)) b!4431781))

(assert (= (and b!4431781 res!1833381) b!4431782))

(declare-fun m!5116319 () Bool)

(assert (=> b!4431781 m!5116319))

(declare-fun m!5116321 () Bool)

(assert (=> b!4431782 m!5116321))

(assert (=> bs!759872 d!1344134))

(declare-fun d!1344138 () Bool)

(declare-fun c!754314 () Bool)

(assert (=> d!1344138 (= c!754314 (and ((_ is Cons!49672) (t!356734 (toList!3561 lm!1616))) (= (_1!28058 (h!55371 (t!356734 (toList!3561 lm!1616)))) hash!366)))))

(declare-fun e!2759506 () Option!10754)

(assert (=> d!1344138 (= (getValueByKey!740 (t!356734 (toList!3561 lm!1616)) hash!366) e!2759506)))

(declare-fun b!4431789 () Bool)

(declare-fun e!2759507 () Option!10754)

(assert (=> b!4431789 (= e!2759507 (getValueByKey!740 (t!356734 (t!356734 (toList!3561 lm!1616))) hash!366))))

(declare-fun b!4431787 () Bool)

(assert (=> b!4431787 (= e!2759506 (Some!10753 (_2!28058 (h!55371 (t!356734 (toList!3561 lm!1616))))))))

(declare-fun b!4431788 () Bool)

(assert (=> b!4431788 (= e!2759506 e!2759507)))

(declare-fun c!754315 () Bool)

(assert (=> b!4431788 (= c!754315 (and ((_ is Cons!49672) (t!356734 (toList!3561 lm!1616))) (not (= (_1!28058 (h!55371 (t!356734 (toList!3561 lm!1616)))) hash!366))))))

(declare-fun b!4431790 () Bool)

(assert (=> b!4431790 (= e!2759507 None!10753)))

(assert (= (and d!1344138 c!754314) b!4431787))

(assert (= (and d!1344138 (not c!754314)) b!4431788))

(assert (= (and b!4431788 c!754315) b!4431789))

(assert (= (and b!4431788 (not c!754315)) b!4431790))

(declare-fun m!5116325 () Bool)

(assert (=> b!4431789 m!5116325))

(assert (=> b!4431040 d!1344138))

(declare-fun d!1344142 () Bool)

(assert (=> d!1344142 (= (isDefined!8046 (getValueByKey!740 (toList!3561 lt!1629600) (_1!28058 lt!1629505))) (not (isEmpty!28363 (getValueByKey!740 (toList!3561 lt!1629600) (_1!28058 lt!1629505)))))))

(declare-fun bs!760084 () Bool)

(assert (= bs!760084 d!1344142))

(assert (=> bs!760084 m!5115017))

(declare-fun m!5116329 () Bool)

(assert (=> bs!760084 m!5116329))

(assert (=> b!4431211 d!1344142))

(assert (=> b!4431211 d!1343798))

(assert (=> d!1343752 d!1343750))

(declare-fun d!1344146 () Bool)

(assert (=> d!1344146 (= (getValueByKey!740 lt!1629598 (_1!28058 lt!1629505)) (Some!10753 (_2!28058 lt!1629505)))))

(assert (=> d!1344146 true))

(declare-fun _$23!234 () Unit!82673)

(assert (=> d!1344146 (= (choose!28053 lt!1629598 (_1!28058 lt!1629505) (_2!28058 lt!1629505)) _$23!234)))

(declare-fun bs!760085 () Bool)

(assert (= bs!760085 d!1344146))

(assert (=> bs!760085 m!5115011))

(assert (=> d!1343752 d!1344146))

(declare-fun d!1344148 () Bool)

(declare-fun res!1833388 () Bool)

(declare-fun e!2759514 () Bool)

(assert (=> d!1344148 (=> res!1833388 e!2759514)))

(assert (=> d!1344148 (= res!1833388 (or ((_ is Nil!49672) lt!1629598) ((_ is Nil!49672) (t!356734 lt!1629598))))))

(assert (=> d!1344148 (= (isStrictlySorted!246 lt!1629598) e!2759514)))

(declare-fun b!4431797 () Bool)

(declare-fun e!2759515 () Bool)

(assert (=> b!4431797 (= e!2759514 e!2759515)))

(declare-fun res!1833389 () Bool)

(assert (=> b!4431797 (=> (not res!1833389) (not e!2759515))))

(assert (=> b!4431797 (= res!1833389 (bvslt (_1!28058 (h!55371 lt!1629598)) (_1!28058 (h!55371 (t!356734 lt!1629598)))))))

(declare-fun b!4431798 () Bool)

(assert (=> b!4431798 (= e!2759515 (isStrictlySorted!246 (t!356734 lt!1629598)))))

(assert (= (and d!1344148 (not res!1833388)) b!4431797))

(assert (= (and b!4431797 res!1833389) b!4431798))

(declare-fun m!5116331 () Bool)

(assert (=> b!4431798 m!5116331))

(assert (=> d!1343752 d!1344148))

(declare-fun bs!760086 () Bool)

(declare-fun d!1344150 () Bool)

(assert (= bs!760086 (and d!1344150 b!4431204)))

(declare-fun lambda!155397 () Int)

(assert (=> bs!760086 (not (= lambda!155397 lambda!155329))))

(declare-fun bs!760087 () Bool)

(assert (= bs!760087 (and d!1344150 b!4431201)))

(assert (=> bs!760087 (not (= lambda!155397 lambda!155328))))

(assert (=> bs!760086 (not (= lambda!155397 lambda!155330))))

(declare-fun bs!760088 () Bool)

(assert (= bs!760088 (and d!1344150 b!4431653)))

(assert (=> bs!760088 (not (= lambda!155397 lambda!155377))))

(declare-fun bs!760089 () Bool)

(assert (= bs!760089 (and d!1344150 b!4431532)))

(assert (=> bs!760089 (not (= lambda!155397 lambda!155366))))

(declare-fun bs!760090 () Bool)

(assert (= bs!760090 (and d!1344150 d!1343630)))

(assert (=> bs!760090 (= (= (_1!28058 (h!55371 (toList!3561 lm!1616))) hash!366) (= lambda!155397 lambda!155248))))

(declare-fun bs!760091 () Bool)

(assert (= bs!760091 (and d!1344150 b!4431656)))

(assert (=> bs!760091 (not (= lambda!155397 lambda!155379))))

(declare-fun bs!760092 () Bool)

(assert (= bs!760092 (and d!1344150 b!4431529)))

(assert (=> bs!760092 (not (= lambda!155397 lambda!155364))))

(assert (=> bs!760089 (not (= lambda!155397 lambda!155367))))

(declare-fun bs!760093 () Bool)

(assert (= bs!760093 (and d!1344150 d!1343918)))

(assert (=> bs!760093 (not (= lambda!155397 lambda!155368))))

(assert (=> bs!760091 (not (= lambda!155397 lambda!155380))))

(declare-fun bs!760094 () Bool)

(assert (= bs!760094 (and d!1344150 d!1343894)))

(assert (=> bs!760094 (not (= lambda!155397 lambda!155360))))

(declare-fun bs!760095 () Bool)

(assert (= bs!760095 (and d!1344150 d!1344104)))

(assert (=> bs!760095 (not (= lambda!155397 lambda!155396))))

(declare-fun bs!760096 () Bool)

(assert (= bs!760096 (and d!1344150 d!1344008)))

(assert (=> bs!760096 (not (= lambda!155397 lambda!155381))))

(declare-fun bs!760097 () Bool)

(assert (= bs!760097 (and d!1344150 d!1343680)))

(assert (=> bs!760097 (not (= lambda!155397 lambda!155331))))

(assert (=> d!1344150 true))

(assert (=> d!1344150 true))

(assert (=> d!1344150 (= (allKeysSameHash!747 (_2!28058 (h!55371 (toList!3561 lm!1616))) (_1!28058 (h!55371 (toList!3561 lm!1616))) hashF!1220) (forall!9620 (_2!28058 (h!55371 (toList!3561 lm!1616))) lambda!155397))))

(declare-fun bs!760098 () Bool)

(assert (= bs!760098 d!1344150))

(declare-fun m!5116339 () Bool)

(assert (=> bs!760098 m!5116339))

(assert (=> bs!759877 d!1344150))

(declare-fun d!1344154 () Bool)

(declare-fun res!1833394 () Bool)

(declare-fun e!2759522 () Bool)

(assert (=> d!1344154 (=> res!1833394 e!2759522)))

(assert (=> d!1344154 (= res!1833394 (and ((_ is Cons!49671) (t!356733 (t!356733 newBucket!194))) (= (_1!28057 (h!55370 (t!356733 (t!356733 newBucket!194)))) (_1!28057 (h!55370 newBucket!194)))))))

(assert (=> d!1344154 (= (containsKey!1169 (t!356733 (t!356733 newBucket!194)) (_1!28057 (h!55370 newBucket!194))) e!2759522)))

(declare-fun b!4431805 () Bool)

(declare-fun e!2759523 () Bool)

(assert (=> b!4431805 (= e!2759522 e!2759523)))

(declare-fun res!1833395 () Bool)

(assert (=> b!4431805 (=> (not res!1833395) (not e!2759523))))

(assert (=> b!4431805 (= res!1833395 ((_ is Cons!49671) (t!356733 (t!356733 newBucket!194))))))

(declare-fun b!4431806 () Bool)

(assert (=> b!4431806 (= e!2759523 (containsKey!1169 (t!356733 (t!356733 (t!356733 newBucket!194))) (_1!28057 (h!55370 newBucket!194))))))

(assert (= (and d!1344154 (not res!1833394)) b!4431805))

(assert (= (and b!4431805 res!1833395) b!4431806))

(declare-fun m!5116341 () Bool)

(assert (=> b!4431806 m!5116341))

(assert (=> b!4431335 d!1344154))

(declare-fun d!1344156 () Bool)

(declare-fun res!1833396 () Bool)

(declare-fun e!2759526 () Bool)

(assert (=> d!1344156 (=> res!1833396 e!2759526)))

(assert (=> d!1344156 (= res!1833396 (and ((_ is Cons!49671) (t!356733 (t!356733 newBucket!194))) (= (_1!28057 (h!55370 (t!356733 (t!356733 newBucket!194)))) (_1!28057 (h!55370 (t!356733 newBucket!194))))))))

(assert (=> d!1344156 (= (containsKey!1169 (t!356733 (t!356733 newBucket!194)) (_1!28057 (h!55370 (t!356733 newBucket!194)))) e!2759526)))

(declare-fun b!4431809 () Bool)

(declare-fun e!2759527 () Bool)

(assert (=> b!4431809 (= e!2759526 e!2759527)))

(declare-fun res!1833397 () Bool)

(assert (=> b!4431809 (=> (not res!1833397) (not e!2759527))))

(assert (=> b!4431809 (= res!1833397 ((_ is Cons!49671) (t!356733 (t!356733 newBucket!194))))))

(declare-fun b!4431810 () Bool)

(assert (=> b!4431810 (= e!2759527 (containsKey!1169 (t!356733 (t!356733 (t!356733 newBucket!194))) (_1!28057 (h!55370 (t!356733 newBucket!194)))))))

(assert (= (and d!1344156 (not res!1833396)) b!4431809))

(assert (= (and b!4431809 res!1833397) b!4431810))

(declare-fun m!5116343 () Bool)

(assert (=> b!4431810 m!5116343))

(assert (=> b!4431328 d!1344156))

(declare-fun d!1344158 () Bool)

(declare-fun res!1833398 () Bool)

(declare-fun e!2759528 () Bool)

(assert (=> d!1344158 (=> res!1833398 e!2759528)))

(assert (=> d!1344158 (= res!1833398 (not ((_ is Cons!49671) (t!356733 (_2!28058 (tuple2!49529 hash!366 newBucket!194))))))))

(assert (=> d!1344158 (= (noDuplicateKeys!787 (t!356733 (_2!28058 (tuple2!49529 hash!366 newBucket!194)))) e!2759528)))

(declare-fun b!4431811 () Bool)

(declare-fun e!2759529 () Bool)

(assert (=> b!4431811 (= e!2759528 e!2759529)))

(declare-fun res!1833399 () Bool)

(assert (=> b!4431811 (=> (not res!1833399) (not e!2759529))))

(assert (=> b!4431811 (= res!1833399 (not (containsKey!1169 (t!356733 (t!356733 (_2!28058 (tuple2!49529 hash!366 newBucket!194)))) (_1!28057 (h!55370 (t!356733 (_2!28058 (tuple2!49529 hash!366 newBucket!194))))))))))

(declare-fun b!4431812 () Bool)

(assert (=> b!4431812 (= e!2759529 (noDuplicateKeys!787 (t!356733 (t!356733 (_2!28058 (tuple2!49529 hash!366 newBucket!194))))))))

(assert (= (and d!1344158 (not res!1833398)) b!4431811))

(assert (= (and b!4431811 res!1833399) b!4431812))

(declare-fun m!5116345 () Bool)

(assert (=> b!4431811 m!5116345))

(declare-fun m!5116347 () Bool)

(assert (=> b!4431812 m!5116347))

(assert (=> b!4431357 d!1344158))

(declare-fun d!1344160 () Bool)

(declare-fun res!1833400 () Bool)

(declare-fun e!2759530 () Bool)

(assert (=> d!1344160 (=> res!1833400 e!2759530)))

(assert (=> d!1344160 (= res!1833400 ((_ is Nil!49671) (ite c!754196 (toList!3562 (extractMap!848 (t!356734 (toList!3561 lm!1616)))) (t!356733 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))))

(assert (=> d!1344160 (= (forall!9620 (ite c!754196 (toList!3562 (extractMap!848 (t!356734 (toList!3561 lm!1616)))) (t!356733 (_2!28058 (h!55371 (toList!3561 lm!1616))))) (ite c!754196 lambda!155328 lambda!155330)) e!2759530)))

(declare-fun b!4431813 () Bool)

(declare-fun e!2759531 () Bool)

(assert (=> b!4431813 (= e!2759530 e!2759531)))

(declare-fun res!1833401 () Bool)

(assert (=> b!4431813 (=> (not res!1833401) (not e!2759531))))

(assert (=> b!4431813 (= res!1833401 (dynLambda!20866 (ite c!754196 lambda!155328 lambda!155330) (h!55370 (ite c!754196 (toList!3562 (extractMap!848 (t!356734 (toList!3561 lm!1616)))) (t!356733 (_2!28058 (h!55371 (toList!3561 lm!1616))))))))))

(declare-fun b!4431814 () Bool)

(assert (=> b!4431814 (= e!2759531 (forall!9620 (t!356733 (ite c!754196 (toList!3562 (extractMap!848 (t!356734 (toList!3561 lm!1616)))) (t!356733 (_2!28058 (h!55371 (toList!3561 lm!1616)))))) (ite c!754196 lambda!155328 lambda!155330)))))

(assert (= (and d!1344160 (not res!1833400)) b!4431813))

(assert (= (and b!4431813 res!1833401) b!4431814))

(declare-fun b_lambda!143809 () Bool)

(assert (=> (not b_lambda!143809) (not b!4431813)))

(declare-fun m!5116357 () Bool)

(assert (=> b!4431813 m!5116357))

(declare-fun m!5116359 () Bool)

(assert (=> b!4431814 m!5116359))

(assert (=> bm!308312 d!1344160))

(declare-fun d!1344178 () Bool)

(assert (=> d!1344178 (isDefined!8046 (getValueByKey!740 (toList!3561 lt!1629600) (_1!28058 lt!1629505)))))

(declare-fun lt!1630078 () Unit!82673)

(assert (=> d!1344178 (= lt!1630078 (choose!28057 (toList!3561 lt!1629600) (_1!28058 lt!1629505)))))

(declare-fun e!2759532 () Bool)

(assert (=> d!1344178 e!2759532))

(declare-fun res!1833402 () Bool)

(assert (=> d!1344178 (=> (not res!1833402) (not e!2759532))))

(assert (=> d!1344178 (= res!1833402 (isStrictlySorted!246 (toList!3561 lt!1629600)))))

(assert (=> d!1344178 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!649 (toList!3561 lt!1629600) (_1!28058 lt!1629505)) lt!1630078)))

(declare-fun b!4431815 () Bool)

(assert (=> b!4431815 (= e!2759532 (containsKey!1170 (toList!3561 lt!1629600) (_1!28058 lt!1629505)))))

(assert (= (and d!1344178 res!1833402) b!4431815))

(assert (=> d!1344178 m!5115017))

(assert (=> d!1344178 m!5115017))

(assert (=> d!1344178 m!5115351))

(declare-fun m!5116367 () Bool)

(assert (=> d!1344178 m!5116367))

(declare-fun m!5116369 () Bool)

(assert (=> d!1344178 m!5116369))

(assert (=> b!4431815 m!5115347))

(assert (=> b!4431209 d!1344178))

(assert (=> b!4431209 d!1344142))

(assert (=> b!4431209 d!1343798))

(declare-fun d!1344190 () Bool)

(declare-fun res!1833403 () Bool)

(declare-fun e!2759533 () Bool)

(assert (=> d!1344190 (=> res!1833403 e!2759533)))

(assert (=> d!1344190 (= res!1833403 ((_ is Nil!49671) (t!356733 newBucket!194)))))

(assert (=> d!1344190 (= (forall!9620 (t!356733 newBucket!194) lambda!155248) e!2759533)))

(declare-fun b!4431816 () Bool)

(declare-fun e!2759534 () Bool)

(assert (=> b!4431816 (= e!2759533 e!2759534)))

(declare-fun res!1833404 () Bool)

(assert (=> b!4431816 (=> (not res!1833404) (not e!2759534))))

(assert (=> b!4431816 (= res!1833404 (dynLambda!20866 lambda!155248 (h!55370 (t!356733 newBucket!194))))))

(declare-fun b!4431817 () Bool)

(assert (=> b!4431817 (= e!2759534 (forall!9620 (t!356733 (t!356733 newBucket!194)) lambda!155248))))

(assert (= (and d!1344190 (not res!1833403)) b!4431816))

(assert (= (and b!4431816 res!1833404) b!4431817))

(declare-fun b_lambda!143811 () Bool)

(assert (=> (not b_lambda!143811) (not b!4431816)))

(declare-fun m!5116379 () Bool)

(assert (=> b!4431816 m!5116379))

(declare-fun m!5116381 () Bool)

(assert (=> b!4431817 m!5116381))

(assert (=> b!4431259 d!1344190))

(declare-fun d!1344200 () Bool)

(declare-fun c!754316 () Bool)

(assert (=> d!1344200 (= c!754316 ((_ is Nil!49674) lt!1629820))))

(declare-fun e!2759535 () (InoxSet K!11040))

(assert (=> d!1344200 (= (content!7979 lt!1629820) e!2759535)))

(declare-fun b!4431818 () Bool)

(assert (=> b!4431818 (= e!2759535 ((as const (Array K!11040 Bool)) false))))

(declare-fun b!4431819 () Bool)

(assert (=> b!4431819 (= e!2759535 ((_ map or) (store ((as const (Array K!11040 Bool)) false) (h!55375 lt!1629820) true) (content!7979 (t!356736 lt!1629820))))))

(assert (= (and d!1344200 c!754316) b!4431818))

(assert (= (and d!1344200 (not c!754316)) b!4431819))

(declare-fun m!5116385 () Bool)

(assert (=> b!4431819 m!5116385))

(declare-fun m!5116387 () Bool)

(assert (=> b!4431819 m!5116387))

(assert (=> b!4431274 d!1344200))

(declare-fun d!1344206 () Bool)

(declare-fun c!754317 () Bool)

(assert (=> d!1344206 (= c!754317 ((_ is Nil!49674) (map!10855 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) lambda!155338)))))

(declare-fun e!2759536 () (InoxSet K!11040))

(assert (=> d!1344206 (= (content!7979 (map!10855 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) lambda!155338)) e!2759536)))

(declare-fun b!4431820 () Bool)

(assert (=> b!4431820 (= e!2759536 ((as const (Array K!11040 Bool)) false))))

(declare-fun b!4431821 () Bool)

(assert (=> b!4431821 (= e!2759536 ((_ map or) (store ((as const (Array K!11040 Bool)) false) (h!55375 (map!10855 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) lambda!155338)) true) (content!7979 (t!356736 (map!10855 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) lambda!155338)))))))

(assert (= (and d!1344206 c!754317) b!4431820))

(assert (= (and d!1344206 (not c!754317)) b!4431821))

(declare-fun m!5116391 () Bool)

(assert (=> b!4431821 m!5116391))

(declare-fun m!5116393 () Bool)

(assert (=> b!4431821 m!5116393))

(assert (=> b!4431274 d!1344206))

(declare-fun d!1344208 () Bool)

(declare-fun lt!1630079 () List!49798)

(assert (=> d!1344208 (= (size!35879 lt!1630079) (size!35880 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))))

(declare-fun e!2759537 () List!49798)

(assert (=> d!1344208 (= lt!1630079 e!2759537)))

(declare-fun c!754318 () Bool)

(assert (=> d!1344208 (= c!754318 ((_ is Nil!49671) (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))))

(assert (=> d!1344208 (= (map!10855 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) lambda!155338) lt!1630079)))

(declare-fun b!4431822 () Bool)

(assert (=> b!4431822 (= e!2759537 Nil!49674)))

(declare-fun b!4431823 () Bool)

(assert (=> b!4431823 (= e!2759537 ($colon$colon!795 (map!10855 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) lambda!155338) (dynLambda!20870 lambda!155338 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))))))

(assert (= (and d!1344208 c!754318) b!4431822))

(assert (= (and d!1344208 (not c!754318)) b!4431823))

(declare-fun b_lambda!143813 () Bool)

(assert (=> (not b_lambda!143813) (not b!4431823)))

(declare-fun m!5116395 () Bool)

(assert (=> d!1344208 m!5116395))

(assert (=> d!1344208 m!5116149))

(declare-fun m!5116397 () Bool)

(assert (=> b!4431823 m!5116397))

(declare-fun m!5116399 () Bool)

(assert (=> b!4431823 m!5116399))

(assert (=> b!4431823 m!5116397))

(assert (=> b!4431823 m!5116399))

(declare-fun m!5116401 () Bool)

(assert (=> b!4431823 m!5116401))

(assert (=> b!4431274 d!1344208))

(declare-fun d!1344210 () Bool)

(declare-fun res!1833405 () Bool)

(declare-fun e!2759538 () Bool)

(assert (=> d!1344210 (=> res!1833405 e!2759538)))

(assert (=> d!1344210 (= res!1833405 ((_ is Nil!49671) (toList!3562 (extractMap!848 (t!356734 (toList!3561 lm!1616))))))))

(assert (=> d!1344210 (= (forall!9620 (toList!3562 (extractMap!848 (t!356734 (toList!3561 lm!1616)))) lambda!155331) e!2759538)))

(declare-fun b!4431824 () Bool)

(declare-fun e!2759539 () Bool)

(assert (=> b!4431824 (= e!2759538 e!2759539)))

(declare-fun res!1833406 () Bool)

(assert (=> b!4431824 (=> (not res!1833406) (not e!2759539))))

(assert (=> b!4431824 (= res!1833406 (dynLambda!20866 lambda!155331 (h!55370 (toList!3562 (extractMap!848 (t!356734 (toList!3561 lm!1616)))))))))

(declare-fun b!4431825 () Bool)

(assert (=> b!4431825 (= e!2759539 (forall!9620 (t!356733 (toList!3562 (extractMap!848 (t!356734 (toList!3561 lm!1616))))) lambda!155331))))

(assert (= (and d!1344210 (not res!1833405)) b!4431824))

(assert (= (and b!4431824 res!1833406) b!4431825))

(declare-fun b_lambda!143815 () Bool)

(assert (=> (not b_lambda!143815) (not b!4431824)))

(declare-fun m!5116403 () Bool)

(assert (=> b!4431824 m!5116403))

(declare-fun m!5116405 () Bool)

(assert (=> b!4431825 m!5116405))

(assert (=> b!4431203 d!1344210))

(declare-fun d!1344212 () Bool)

(declare-fun c!754321 () Bool)

(assert (=> d!1344212 (= c!754321 ((_ is Nil!49672) (toList!3561 lt!1629600)))))

(declare-fun e!2759542 () (InoxSet tuple2!49528))

(assert (=> d!1344212 (= (content!7980 (toList!3561 lt!1629600)) e!2759542)))

(declare-fun b!4431830 () Bool)

(assert (=> b!4431830 (= e!2759542 ((as const (Array tuple2!49528 Bool)) false))))

(declare-fun b!4431831 () Bool)

(assert (=> b!4431831 (= e!2759542 ((_ map or) (store ((as const (Array tuple2!49528 Bool)) false) (h!55371 (toList!3561 lt!1629600)) true) (content!7980 (t!356734 (toList!3561 lt!1629600)))))))

(assert (= (and d!1344212 c!754321) b!4431830))

(assert (= (and d!1344212 (not c!754321)) b!4431831))

(declare-fun m!5116407 () Bool)

(assert (=> b!4431831 m!5116407))

(assert (=> b!4431831 m!5116309))

(assert (=> d!1343790 d!1344212))

(declare-fun d!1344214 () Bool)

(declare-fun res!1833407 () Bool)

(declare-fun e!2759543 () Bool)

(assert (=> d!1344214 (=> res!1833407 e!2759543)))

(assert (=> d!1344214 (= res!1833407 (and ((_ is Cons!49672) lt!1629814) (= (_1!28058 (h!55371 lt!1629814)) (_1!28058 lt!1629505))))))

(assert (=> d!1344214 (= (containsKey!1170 lt!1629814 (_1!28058 lt!1629505)) e!2759543)))

(declare-fun b!4431832 () Bool)

(declare-fun e!2759544 () Bool)

(assert (=> b!4431832 (= e!2759543 e!2759544)))

(declare-fun res!1833408 () Bool)

(assert (=> b!4431832 (=> (not res!1833408) (not e!2759544))))

(assert (=> b!4431832 (= res!1833408 (and (or (not ((_ is Cons!49672) lt!1629814)) (bvsle (_1!28058 (h!55371 lt!1629814)) (_1!28058 lt!1629505))) ((_ is Cons!49672) lt!1629814) (bvslt (_1!28058 (h!55371 lt!1629814)) (_1!28058 lt!1629505))))))

(declare-fun b!4431833 () Bool)

(assert (=> b!4431833 (= e!2759544 (containsKey!1170 (t!356734 lt!1629814) (_1!28058 lt!1629505)))))

(assert (= (and d!1344214 (not res!1833407)) b!4431832))

(assert (= (and b!4431832 res!1833408) b!4431833))

(declare-fun m!5116409 () Bool)

(assert (=> b!4431833 m!5116409))

(assert (=> b!4431247 d!1344214))

(declare-fun d!1344216 () Bool)

(declare-fun res!1833409 () Bool)

(declare-fun e!2759545 () Bool)

(assert (=> d!1344216 (=> res!1833409 e!2759545)))

(assert (=> d!1344216 (= res!1833409 (and ((_ is Cons!49672) (t!356734 (toList!3561 lm!1616))) (= (_1!28058 (h!55371 (t!356734 (toList!3561 lm!1616)))) hash!366)))))

(assert (=> d!1344216 (= (containsKey!1170 (t!356734 (toList!3561 lm!1616)) hash!366) e!2759545)))

(declare-fun b!4431834 () Bool)

(declare-fun e!2759546 () Bool)

(assert (=> b!4431834 (= e!2759545 e!2759546)))

(declare-fun res!1833410 () Bool)

(assert (=> b!4431834 (=> (not res!1833410) (not e!2759546))))

(assert (=> b!4431834 (= res!1833410 (and (or (not ((_ is Cons!49672) (t!356734 (toList!3561 lm!1616)))) (bvsle (_1!28058 (h!55371 (t!356734 (toList!3561 lm!1616)))) hash!366)) ((_ is Cons!49672) (t!356734 (toList!3561 lm!1616))) (bvslt (_1!28058 (h!55371 (t!356734 (toList!3561 lm!1616)))) hash!366)))))

(declare-fun b!4431835 () Bool)

(assert (=> b!4431835 (= e!2759546 (containsKey!1170 (t!356734 (t!356734 (toList!3561 lm!1616))) hash!366))))

(assert (= (and d!1344216 (not res!1833409)) b!4431834))

(assert (= (and b!4431834 res!1833410) b!4431835))

(declare-fun m!5116411 () Bool)

(assert (=> b!4431835 m!5116411))

(assert (=> b!4431319 d!1344216))

(declare-fun d!1344218 () Bool)

(assert (=> d!1344218 true))

(assert (=> d!1344218 true))

(declare-fun res!1833413 () (_ BitVec 64))

(assert (=> d!1344218 (= (choose!28050 hashF!1220 key!3717) res!1833413)))

(assert (=> d!1343664 d!1344218))

(assert (=> bs!759875 d!1343774))

(declare-fun d!1344220 () Bool)

(assert (=> d!1344220 (= (length!184 lt!1629820) (size!35879 lt!1629820))))

(declare-fun bs!760118 () Bool)

(assert (= bs!760118 d!1344220))

(declare-fun m!5116413 () Bool)

(assert (=> bs!760118 m!5116413))

(assert (=> b!4431272 d!1344220))

(declare-fun d!1344222 () Bool)

(assert (=> d!1344222 (= (length!185 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) (size!35880 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))))

(declare-fun bs!760119 () Bool)

(assert (= bs!760119 d!1344222))

(assert (=> bs!760119 m!5116149))

(assert (=> b!4431272 d!1344222))

(assert (=> b!4431366 d!1343772))

(declare-fun d!1344224 () Bool)

(assert (=> d!1344224 (= (length!184 lt!1629840) (size!35879 lt!1629840))))

(declare-fun bs!760120 () Bool)

(assert (= bs!760120 d!1344224))

(declare-fun m!5116415 () Bool)

(assert (=> bs!760120 m!5116415))

(assert (=> b!4431303 d!1344224))

(assert (=> b!4431303 d!1344222))

(declare-fun d!1344226 () Bool)

(assert (=> d!1344226 (= (invariantList!819 (toList!3562 lt!1629804)) (noDuplicatedKeys!180 (toList!3562 lt!1629804)))))

(declare-fun bs!760121 () Bool)

(assert (= bs!760121 d!1344226))

(declare-fun m!5116417 () Bool)

(assert (=> bs!760121 m!5116417))

(assert (=> d!1343746 d!1344226))

(declare-fun d!1344228 () Bool)

(declare-fun res!1833414 () Bool)

(declare-fun e!2759547 () Bool)

(assert (=> d!1344228 (=> res!1833414 e!2759547)))

(assert (=> d!1344228 (= res!1833414 ((_ is Nil!49672) (t!356734 (toList!3561 lm!1616))))))

(assert (=> d!1344228 (= (forall!9618 (t!356734 (toList!3561 lm!1616)) lambda!155332) e!2759547)))

(declare-fun b!4431836 () Bool)

(declare-fun e!2759548 () Bool)

(assert (=> b!4431836 (= e!2759547 e!2759548)))

(declare-fun res!1833415 () Bool)

(assert (=> b!4431836 (=> (not res!1833415) (not e!2759548))))

(assert (=> b!4431836 (= res!1833415 (dynLambda!20864 lambda!155332 (h!55371 (t!356734 (toList!3561 lm!1616)))))))

(declare-fun b!4431837 () Bool)

(assert (=> b!4431837 (= e!2759548 (forall!9618 (t!356734 (t!356734 (toList!3561 lm!1616))) lambda!155332))))

(assert (= (and d!1344228 (not res!1833414)) b!4431836))

(assert (= (and b!4431836 res!1833415) b!4431837))

(declare-fun b_lambda!143817 () Bool)

(assert (=> (not b_lambda!143817) (not b!4431836)))

(declare-fun m!5116419 () Bool)

(assert (=> b!4431836 m!5116419))

(declare-fun m!5116421 () Bool)

(assert (=> b!4431837 m!5116421))

(assert (=> d!1343746 d!1344228))

(assert (=> d!1343780 d!1343768))

(declare-fun d!1344230 () Bool)

(assert (=> d!1344230 (containsKey!1168 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) key!3717)))

(assert (=> d!1344230 true))

(declare-fun _$15!661 () Unit!82673)

(assert (=> d!1344230 (= (choose!28054 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) key!3717) _$15!661)))

(declare-fun bs!760122 () Bool)

(assert (= bs!760122 d!1344230))

(assert (=> bs!760122 m!5114957))

(assert (=> d!1343780 d!1344230))

(assert (=> d!1343780 d!1343964))

(declare-fun d!1344232 () Bool)

(declare-fun res!1833416 () Bool)

(declare-fun e!2759549 () Bool)

(assert (=> d!1344232 (=> res!1833416 e!2759549)))

(assert (=> d!1344232 (= res!1833416 ((_ is Nil!49672) (t!356734 (t!356734 (toList!3561 lt!1629503)))))))

(assert (=> d!1344232 (= (forall!9618 (t!356734 (t!356734 (toList!3561 lt!1629503))) lambda!155230) e!2759549)))

(declare-fun b!4431838 () Bool)

(declare-fun e!2759550 () Bool)

(assert (=> b!4431838 (= e!2759549 e!2759550)))

(declare-fun res!1833417 () Bool)

(assert (=> b!4431838 (=> (not res!1833417) (not e!2759550))))

(assert (=> b!4431838 (= res!1833417 (dynLambda!20864 lambda!155230 (h!55371 (t!356734 (t!356734 (toList!3561 lt!1629503))))))))

(declare-fun b!4431839 () Bool)

(assert (=> b!4431839 (= e!2759550 (forall!9618 (t!356734 (t!356734 (t!356734 (toList!3561 lt!1629503)))) lambda!155230))))

(assert (= (and d!1344232 (not res!1833416)) b!4431838))

(assert (= (and b!4431838 res!1833417) b!4431839))

(declare-fun b_lambda!143819 () Bool)

(assert (=> (not b_lambda!143819) (not b!4431838)))

(declare-fun m!5116423 () Bool)

(assert (=> b!4431838 m!5116423))

(declare-fun m!5116425 () Bool)

(assert (=> b!4431839 m!5116425))

(assert (=> b!4431349 d!1344232))

(declare-fun d!1344234 () Bool)

(declare-fun lt!1630080 () Bool)

(assert (=> d!1344234 (= lt!1630080 (select (content!7979 (getKeysList!266 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))) (_1!28057 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))))))

(declare-fun e!2759551 () Bool)

(assert (=> d!1344234 (= lt!1630080 e!2759551)))

(declare-fun res!1833419 () Bool)

(assert (=> d!1344234 (=> (not res!1833419) (not e!2759551))))

(assert (=> d!1344234 (= res!1833419 ((_ is Cons!49674) (getKeysList!266 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))))))

(assert (=> d!1344234 (= (contains!12202 (getKeysList!266 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) (_1!28057 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))) lt!1630080)))

(declare-fun b!4431840 () Bool)

(declare-fun e!2759552 () Bool)

(assert (=> b!4431840 (= e!2759551 e!2759552)))

(declare-fun res!1833418 () Bool)

(assert (=> b!4431840 (=> res!1833418 e!2759552)))

(assert (=> b!4431840 (= res!1833418 (= (h!55375 (getKeysList!266 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))) (_1!28057 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))))))

(declare-fun b!4431841 () Bool)

(assert (=> b!4431841 (= e!2759552 (contains!12202 (t!356736 (getKeysList!266 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))) (_1!28057 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))))))

(assert (= (and d!1344234 res!1833419) b!4431840))

(assert (= (and b!4431840 (not res!1833418)) b!4431841))

(assert (=> d!1344234 m!5115403))

(declare-fun m!5116427 () Bool)

(assert (=> d!1344234 m!5116427))

(declare-fun m!5116429 () Bool)

(assert (=> d!1344234 m!5116429))

(declare-fun m!5116431 () Bool)

(assert (=> b!4431841 m!5116431))

(assert (=> b!4431297 d!1344234))

(declare-fun d!1344236 () Bool)

(declare-fun res!1833420 () Bool)

(declare-fun e!2759553 () Bool)

(assert (=> d!1344236 (=> res!1833420 e!2759553)))

(assert (=> d!1344236 (= res!1833420 ((_ is Nil!49674) lt!1629836))))

(assert (=> d!1344236 (= (forall!9622 lt!1629836 lambda!155348) e!2759553)))

(declare-fun b!4431842 () Bool)

(declare-fun e!2759554 () Bool)

(assert (=> b!4431842 (= e!2759553 e!2759554)))

(declare-fun res!1833421 () Bool)

(assert (=> b!4431842 (=> (not res!1833421) (not e!2759554))))

(assert (=> b!4431842 (= res!1833421 (dynLambda!20869 lambda!155348 (h!55375 lt!1629836)))))

(declare-fun b!4431843 () Bool)

(assert (=> b!4431843 (= e!2759554 (forall!9622 (t!356736 lt!1629836) lambda!155348))))

(assert (= (and d!1344236 (not res!1833420)) b!4431842))

(assert (= (and b!4431842 res!1833421) b!4431843))

(declare-fun b_lambda!143821 () Bool)

(assert (=> (not b_lambda!143821) (not b!4431842)))

(declare-fun m!5116433 () Bool)

(assert (=> b!4431842 m!5116433))

(declare-fun m!5116435 () Bool)

(assert (=> b!4431843 m!5116435))

(assert (=> b!4431297 d!1344236))

(assert (=> b!4431297 d!1344078))

(declare-fun bs!760123 () Bool)

(declare-fun d!1344238 () Bool)

(assert (= bs!760123 (and d!1344238 b!4431297)))

(declare-fun lambda!155400 () Int)

(assert (=> bs!760123 (= lambda!155400 lambda!155348)))

(declare-fun bs!760124 () Bool)

(assert (= bs!760124 (and d!1344238 b!4431273)))

(assert (=> bs!760124 (= (= (Cons!49671 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) (= lambda!155400 lambda!155337))))

(declare-fun bs!760125 () Bool)

(assert (= bs!760125 (and d!1344238 b!4431720)))

(assert (=> bs!760125 (= (= (Cons!49671 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) (= lambda!155400 lambda!155391))))

(declare-fun bs!760126 () Bool)

(assert (= bs!760126 (and d!1344238 b!4431296)))

(assert (=> bs!760126 (= (= (Cons!49671 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) (= lambda!155400 lambda!155347))))

(declare-fun bs!760127 () Bool)

(assert (= bs!760127 (and d!1344238 b!4431721)))

(assert (=> bs!760127 (= (= (Cons!49671 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) (t!356733 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))) (= lambda!155400 lambda!155387))))

(declare-fun bs!760128 () Bool)

(assert (= bs!760128 (and d!1344238 b!4431295)))

(assert (=> bs!760128 (= (= (Cons!49671 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) (= lambda!155400 lambda!155349))))

(declare-fun bs!760129 () Bool)

(assert (= bs!760129 (and d!1344238 b!4431722)))

(assert (=> bs!760129 (= (= (Cons!49671 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) (Cons!49671 (h!55370 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) (t!356733 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))))) (= lambda!155400 lambda!155388))))

(assert (=> d!1344238 true))

(assert (=> d!1344238 true))

(assert (=> d!1344238 (forall!9622 lt!1629836 lambda!155400)))

(declare-fun lt!1630083 () Unit!82673)

(declare-fun choose!28067 (List!49795 List!49798 tuple2!49526) Unit!82673)

(assert (=> d!1344238 (= lt!1630083 (choose!28067 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) lt!1629836 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))))))

(assert (=> d!1344238 (invariantList!819 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))))

(assert (=> d!1344238 (= (lemmaForallContainsAddHeadPreserves!86 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) lt!1629836 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) lt!1630083)))

(declare-fun bs!760130 () Bool)

(assert (= bs!760130 d!1344238))

(declare-fun m!5116437 () Bool)

(assert (=> bs!760130 m!5116437))

(declare-fun m!5116439 () Bool)

(assert (=> bs!760130 m!5116439))

(assert (=> bs!760130 m!5116203))

(assert (=> b!4431297 d!1344238))

(declare-fun d!1344240 () Bool)

(declare-fun res!1833422 () Bool)

(declare-fun e!2759555 () Bool)

(assert (=> d!1344240 (=> res!1833422 e!2759555)))

(assert (=> d!1344240 (= res!1833422 (and ((_ is Cons!49671) (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) (= (_1!28057 (h!55370 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))) (_1!28057 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))))))))

(assert (=> d!1344240 (= (containsKey!1168 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) (_1!28057 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))) e!2759555)))

(declare-fun b!4431846 () Bool)

(declare-fun e!2759556 () Bool)

(assert (=> b!4431846 (= e!2759555 e!2759556)))

(declare-fun res!1833423 () Bool)

(assert (=> b!4431846 (=> (not res!1833423) (not e!2759556))))

(assert (=> b!4431846 (= res!1833423 ((_ is Cons!49671) (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))))))

(declare-fun b!4431847 () Bool)

(assert (=> b!4431847 (= e!2759556 (containsKey!1168 (t!356733 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) (_1!28057 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))))))

(assert (= (and d!1344240 (not res!1833422)) b!4431846))

(assert (= (and b!4431846 res!1833423) b!4431847))

(declare-fun m!5116441 () Bool)

(assert (=> b!4431847 m!5116441))

(assert (=> b!4431297 d!1344240))

(declare-fun d!1344242 () Bool)

(declare-fun res!1833424 () Bool)

(declare-fun e!2759557 () Bool)

(assert (=> d!1344242 (=> res!1833424 e!2759557)))

(assert (=> d!1344242 (= res!1833424 (not ((_ is Cons!49671) (t!356733 (_2!28058 (h!55371 (toList!3561 lt!1629503)))))))))

(assert (=> d!1344242 (= (noDuplicateKeys!787 (t!356733 (_2!28058 (h!55371 (toList!3561 lt!1629503))))) e!2759557)))

(declare-fun b!4431848 () Bool)

(declare-fun e!2759558 () Bool)

(assert (=> b!4431848 (= e!2759557 e!2759558)))

(declare-fun res!1833425 () Bool)

(assert (=> b!4431848 (=> (not res!1833425) (not e!2759558))))

(assert (=> b!4431848 (= res!1833425 (not (containsKey!1169 (t!356733 (t!356733 (_2!28058 (h!55371 (toList!3561 lt!1629503))))) (_1!28057 (h!55370 (t!356733 (_2!28058 (h!55371 (toList!3561 lt!1629503)))))))))))

(declare-fun b!4431849 () Bool)

(assert (=> b!4431849 (= e!2759558 (noDuplicateKeys!787 (t!356733 (t!356733 (_2!28058 (h!55371 (toList!3561 lt!1629503)))))))))

(assert (= (and d!1344242 (not res!1833424)) b!4431848))

(assert (= (and b!4431848 res!1833425) b!4431849))

(declare-fun m!5116443 () Bool)

(assert (=> b!4431848 m!5116443))

(declare-fun m!5116445 () Bool)

(assert (=> b!4431849 m!5116445))

(assert (=> b!4431015 d!1344242))

(declare-fun d!1344244 () Bool)

(declare-fun c!754322 () Bool)

(assert (=> d!1344244 (= c!754322 (and ((_ is Cons!49672) (t!356734 (toList!3561 lt!1629600))) (= (_1!28058 (h!55371 (t!356734 (toList!3561 lt!1629600)))) (_1!28058 lt!1629505))))))

(declare-fun e!2759559 () Option!10754)

(assert (=> d!1344244 (= (getValueByKey!740 (t!356734 (toList!3561 lt!1629600)) (_1!28058 lt!1629505)) e!2759559)))

(declare-fun b!4431852 () Bool)

(declare-fun e!2759560 () Option!10754)

(assert (=> b!4431852 (= e!2759560 (getValueByKey!740 (t!356734 (t!356734 (toList!3561 lt!1629600))) (_1!28058 lt!1629505)))))

(declare-fun b!4431850 () Bool)

(assert (=> b!4431850 (= e!2759559 (Some!10753 (_2!28058 (h!55371 (t!356734 (toList!3561 lt!1629600))))))))

(declare-fun b!4431851 () Bool)

(assert (=> b!4431851 (= e!2759559 e!2759560)))

(declare-fun c!754323 () Bool)

(assert (=> b!4431851 (= c!754323 (and ((_ is Cons!49672) (t!356734 (toList!3561 lt!1629600))) (not (= (_1!28058 (h!55371 (t!356734 (toList!3561 lt!1629600)))) (_1!28058 lt!1629505)))))))

(declare-fun b!4431853 () Bool)

(assert (=> b!4431853 (= e!2759560 None!10753)))

(assert (= (and d!1344244 c!754322) b!4431850))

(assert (= (and d!1344244 (not c!754322)) b!4431851))

(assert (= (and b!4431851 c!754323) b!4431852))

(assert (= (and b!4431851 (not c!754323)) b!4431853))

(declare-fun m!5116447 () Bool)

(assert (=> b!4431852 m!5116447))

(assert (=> b!4431360 d!1344244))

(declare-fun d!1344246 () Bool)

(declare-fun res!1833426 () Bool)

(declare-fun e!2759561 () Bool)

(assert (=> d!1344246 (=> res!1833426 e!2759561)))

(assert (=> d!1344246 (= res!1833426 ((_ is Nil!49674) lt!1629840))))

(assert (=> d!1344246 (= (forall!9622 lt!1629840 lambda!155349) e!2759561)))

(declare-fun b!4431854 () Bool)

(declare-fun e!2759562 () Bool)

(assert (=> b!4431854 (= e!2759561 e!2759562)))

(declare-fun res!1833427 () Bool)

(assert (=> b!4431854 (=> (not res!1833427) (not e!2759562))))

(assert (=> b!4431854 (= res!1833427 (dynLambda!20869 lambda!155349 (h!55375 lt!1629840)))))

(declare-fun b!4431855 () Bool)

(assert (=> b!4431855 (= e!2759562 (forall!9622 (t!356736 lt!1629840) lambda!155349))))

(assert (= (and d!1344246 (not res!1833426)) b!4431854))

(assert (= (and b!4431854 res!1833427) b!4431855))

(declare-fun b_lambda!143823 () Bool)

(assert (=> (not b_lambda!143823) (not b!4431854)))

(declare-fun m!5116449 () Bool)

(assert (=> b!4431854 m!5116449))

(declare-fun m!5116451 () Bool)

(assert (=> b!4431855 m!5116451))

(assert (=> b!4431295 d!1344246))

(declare-fun d!1344248 () Bool)

(declare-fun res!1833428 () Bool)

(declare-fun e!2759563 () Bool)

(assert (=> d!1344248 (=> res!1833428 e!2759563)))

(assert (=> d!1344248 (= res!1833428 (not ((_ is Cons!49671) (t!356733 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))))

(assert (=> d!1344248 (= (noDuplicateKeys!787 (t!356733 (_2!28058 (h!55371 (toList!3561 lm!1616))))) e!2759563)))

(declare-fun b!4431856 () Bool)

(declare-fun e!2759564 () Bool)

(assert (=> b!4431856 (= e!2759563 e!2759564)))

(declare-fun res!1833429 () Bool)

(assert (=> b!4431856 (=> (not res!1833429) (not e!2759564))))

(assert (=> b!4431856 (= res!1833429 (not (containsKey!1169 (t!356733 (t!356733 (_2!28058 (h!55371 (toList!3561 lm!1616))))) (_1!28057 (h!55370 (t!356733 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))))))

(declare-fun b!4431857 () Bool)

(assert (=> b!4431857 (= e!2759564 (noDuplicateKeys!787 (t!356733 (t!356733 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))))

(assert (= (and d!1344248 (not res!1833428)) b!4431856))

(assert (= (and b!4431856 res!1833429) b!4431857))

(declare-fun m!5116453 () Bool)

(assert (=> b!4431856 m!5116453))

(declare-fun m!5116455 () Bool)

(assert (=> b!4431857 m!5116455))

(assert (=> b!4431321 d!1344248))

(declare-fun d!1344250 () Bool)

(declare-fun c!754324 () Bool)

(assert (=> d!1344250 (= c!754324 (and ((_ is Cons!49672) (toList!3561 lt!1629661)) (= (_1!28058 (h!55371 (toList!3561 lt!1629661))) (_1!28058 (tuple2!49529 hash!366 newBucket!194)))))))

(declare-fun e!2759565 () Option!10754)

(assert (=> d!1344250 (= (getValueByKey!740 (toList!3561 lt!1629661) (_1!28058 (tuple2!49529 hash!366 newBucket!194))) e!2759565)))

(declare-fun b!4431860 () Bool)

(declare-fun e!2759566 () Option!10754)

(assert (=> b!4431860 (= e!2759566 (getValueByKey!740 (t!356734 (toList!3561 lt!1629661)) (_1!28058 (tuple2!49529 hash!366 newBucket!194))))))

(declare-fun b!4431858 () Bool)

(assert (=> b!4431858 (= e!2759565 (Some!10753 (_2!28058 (h!55371 (toList!3561 lt!1629661)))))))

(declare-fun b!4431859 () Bool)

(assert (=> b!4431859 (= e!2759565 e!2759566)))

(declare-fun c!754325 () Bool)

(assert (=> b!4431859 (= c!754325 (and ((_ is Cons!49672) (toList!3561 lt!1629661)) (not (= (_1!28058 (h!55371 (toList!3561 lt!1629661))) (_1!28058 (tuple2!49529 hash!366 newBucket!194))))))))

(declare-fun b!4431861 () Bool)

(assert (=> b!4431861 (= e!2759566 None!10753)))

(assert (= (and d!1344250 c!754324) b!4431858))

(assert (= (and d!1344250 (not c!754324)) b!4431859))

(assert (= (and b!4431859 c!754325) b!4431860))

(assert (= (and b!4431859 (not c!754325)) b!4431861))

(declare-fun m!5116457 () Bool)

(assert (=> b!4431860 m!5116457))

(assert (=> b!4431004 d!1344250))

(declare-fun d!1344252 () Bool)

(declare-fun res!1833430 () Bool)

(declare-fun e!2759567 () Bool)

(assert (=> d!1344252 (=> res!1833430 e!2759567)))

(assert (=> d!1344252 (= res!1833430 ((_ is Nil!49672) (t!356734 (toList!3561 lm!1616))))))

(assert (=> d!1344252 (= (forall!9618 (t!356734 (toList!3561 lm!1616)) lambda!155242) e!2759567)))

(declare-fun b!4431862 () Bool)

(declare-fun e!2759568 () Bool)

(assert (=> b!4431862 (= e!2759567 e!2759568)))

(declare-fun res!1833431 () Bool)

(assert (=> b!4431862 (=> (not res!1833431) (not e!2759568))))

(assert (=> b!4431862 (= res!1833431 (dynLambda!20864 lambda!155242 (h!55371 (t!356734 (toList!3561 lm!1616)))))))

(declare-fun b!4431863 () Bool)

(assert (=> b!4431863 (= e!2759568 (forall!9618 (t!356734 (t!356734 (toList!3561 lm!1616))) lambda!155242))))

(assert (= (and d!1344252 (not res!1833430)) b!4431862))

(assert (= (and b!4431862 res!1833431) b!4431863))

(declare-fun b_lambda!143825 () Bool)

(assert (=> (not b_lambda!143825) (not b!4431862)))

(declare-fun m!5116459 () Bool)

(assert (=> b!4431862 m!5116459))

(declare-fun m!5116461 () Bool)

(assert (=> b!4431863 m!5116461))

(assert (=> b!4431253 d!1344252))

(declare-fun d!1344254 () Bool)

(declare-fun res!1833432 () Bool)

(declare-fun e!2759569 () Bool)

(assert (=> d!1344254 (=> res!1833432 e!2759569)))

(assert (=> d!1344254 (= res!1833432 (and ((_ is Cons!49672) lt!1629598) (= (_1!28058 (h!55371 lt!1629598)) (_1!28058 lt!1629505))))))

(assert (=> d!1344254 (= (containsKey!1170 lt!1629598 (_1!28058 lt!1629505)) e!2759569)))

(declare-fun b!4431864 () Bool)

(declare-fun e!2759570 () Bool)

(assert (=> b!4431864 (= e!2759569 e!2759570)))

(declare-fun res!1833433 () Bool)

(assert (=> b!4431864 (=> (not res!1833433) (not e!2759570))))

(assert (=> b!4431864 (= res!1833433 (and (or (not ((_ is Cons!49672) lt!1629598)) (bvsle (_1!28058 (h!55371 lt!1629598)) (_1!28058 lt!1629505))) ((_ is Cons!49672) lt!1629598) (bvslt (_1!28058 (h!55371 lt!1629598)) (_1!28058 lt!1629505))))))

(declare-fun b!4431865 () Bool)

(assert (=> b!4431865 (= e!2759570 (containsKey!1170 (t!356734 lt!1629598) (_1!28058 lt!1629505)))))

(assert (= (and d!1344254 (not res!1833432)) b!4431864))

(assert (= (and b!4431864 res!1833433) b!4431865))

(declare-fun m!5116463 () Bool)

(assert (=> b!4431865 m!5116463))

(assert (=> b!4431220 d!1344254))

(declare-fun b!4431866 () Bool)

(declare-fun tp!1333596 () Bool)

(declare-fun e!2759571 () Bool)

(assert (=> b!4431866 (= e!2759571 (and tp_is_empty!26395 tp_is_empty!26393 tp!1333596))))

(assert (=> b!4431368 (= tp!1333588 e!2759571)))

(assert (= (and b!4431368 ((_ is Cons!49671) (_2!28058 (h!55371 (t!356734 (toList!3561 lm!1616)))))) b!4431866))

(declare-fun b!4431867 () Bool)

(declare-fun e!2759572 () Bool)

(declare-fun tp!1333597 () Bool)

(declare-fun tp!1333598 () Bool)

(assert (=> b!4431867 (= e!2759572 (and tp!1333597 tp!1333598))))

(assert (=> b!4431368 (= tp!1333589 e!2759572)))

(assert (= (and b!4431368 ((_ is Cons!49672) (t!356734 (t!356734 (toList!3561 lm!1616))))) b!4431867))

(declare-fun b!4431868 () Bool)

(declare-fun tp!1333599 () Bool)

(declare-fun e!2759573 () Bool)

(assert (=> b!4431868 (= e!2759573 (and tp_is_empty!26395 tp_is_empty!26393 tp!1333599))))

(assert (=> b!4431367 (= tp!1333587 e!2759573)))

(assert (= (and b!4431367 ((_ is Cons!49671) (t!356733 (_2!28058 (h!55371 (toList!3561 lm!1616)))))) b!4431868))

(declare-fun e!2759574 () Bool)

(declare-fun tp!1333600 () Bool)

(declare-fun b!4431869 () Bool)

(assert (=> b!4431869 (= e!2759574 (and tp_is_empty!26395 tp_is_empty!26393 tp!1333600))))

(assert (=> b!4431369 (= tp!1333590 e!2759574)))

(assert (= (and b!4431369 ((_ is Cons!49671) (t!356733 (t!356733 (t!356733 newBucket!194))))) b!4431869))

(declare-fun b_lambda!143827 () Bool)

(assert (= b_lambda!143811 (or d!1343630 b_lambda!143827)))

(declare-fun bs!760131 () Bool)

(declare-fun d!1344256 () Bool)

(assert (= bs!760131 (and d!1344256 d!1343630)))

(assert (=> bs!760131 (= (dynLambda!20866 lambda!155248 (h!55370 (t!356733 newBucket!194))) (= (hash!2202 hashF!1220 (_1!28057 (h!55370 (t!356733 newBucket!194)))) hash!366))))

(declare-fun m!5116465 () Bool)

(assert (=> bs!760131 m!5116465))

(assert (=> b!4431816 d!1344256))

(declare-fun b_lambda!143829 () Bool)

(assert (= b_lambda!143737 (or start!432668 b_lambda!143829)))

(declare-fun bs!760132 () Bool)

(declare-fun d!1344258 () Bool)

(assert (= bs!760132 (and d!1344258 start!432668)))

(assert (=> bs!760132 (= (dynLambda!20864 lambda!155230 (h!55371 (t!356734 (t!356734 (toList!3561 lm!1616))))) (noDuplicateKeys!787 (_2!28058 (h!55371 (t!356734 (t!356734 (toList!3561 lm!1616)))))))))

(declare-fun m!5116467 () Bool)

(assert (=> bs!760132 m!5116467))

(assert (=> b!4431584 d!1344258))

(declare-fun b_lambda!143831 () Bool)

(assert (= b_lambda!143823 (or b!4431295 b_lambda!143831)))

(declare-fun bs!760133 () Bool)

(declare-fun d!1344260 () Bool)

(assert (= bs!760133 (and d!1344260 b!4431295)))

(assert (=> bs!760133 (= (dynLambda!20869 lambda!155349 (h!55375 lt!1629840)) (containsKey!1168 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) (h!55375 lt!1629840)))))

(declare-fun m!5116469 () Bool)

(assert (=> bs!760133 m!5116469))

(assert (=> b!4431854 d!1344260))

(declare-fun b_lambda!143833 () Bool)

(assert (= b_lambda!143733 (or b!4431204 b_lambda!143833)))

(declare-fun bs!760134 () Bool)

(declare-fun d!1344262 () Bool)

(assert (= bs!760134 (and d!1344262 b!4431204)))

(assert (=> bs!760134 (= (dynLambda!20866 lambda!155330 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))) (contains!12199 lt!1629788 (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))))

(assert (=> bs!760134 m!5115323))

(assert (=> b!4431557 d!1344262))

(declare-fun b_lambda!143835 () Bool)

(assert (= b_lambda!143755 (or d!1343626 b_lambda!143835)))

(declare-fun bs!760135 () Bool)

(declare-fun d!1344264 () Bool)

(assert (= bs!760135 (and d!1344264 d!1343626)))

(assert (=> bs!760135 (= (dynLambda!20864 lambda!155245 (h!55371 (t!356734 (toList!3561 lm!1616)))) (allKeysSameHash!747 (_2!28058 (h!55371 (t!356734 (toList!3561 lm!1616)))) (_1!28058 (h!55371 (t!356734 (toList!3561 lm!1616)))) hashF!1220))))

(declare-fun m!5116471 () Bool)

(assert (=> bs!760135 m!5116471))

(assert (=> b!4431711 d!1344264))

(declare-fun b_lambda!143837 () Bool)

(assert (= b_lambda!143745 (or b!4431273 b_lambda!143837)))

(declare-fun bs!760136 () Bool)

(declare-fun d!1344266 () Bool)

(assert (= bs!760136 (and d!1344266 b!4431273)))

(assert (=> bs!760136 (= (dynLambda!20869 lambda!155337 (h!55375 lt!1629820)) (containsKey!1168 (toList!3562 (extractMap!848 (toList!3561 lm!1616))) (h!55375 lt!1629820)))))

(declare-fun m!5116473 () Bool)

(assert (=> bs!760136 m!5116473))

(assert (=> b!4431612 d!1344266))

(declare-fun b_lambda!143839 () Bool)

(assert (= b_lambda!143759 (or b!4431296 b_lambda!143839)))

(declare-fun bs!760137 () Bool)

(declare-fun d!1344268 () Bool)

(assert (= bs!760137 (and d!1344268 b!4431296)))

(assert (=> bs!760137 (= (dynLambda!20869 lambda!155347 (_1!28057 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))) (containsKey!1168 (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) (_1!28057 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))))))))

(assert (=> bs!760137 m!5115425))

(assert (=> d!1344074 d!1344268))

(declare-fun b_lambda!143841 () Bool)

(assert (= b_lambda!143817 (or d!1343746 b_lambda!143841)))

(declare-fun bs!760138 () Bool)

(declare-fun d!1344270 () Bool)

(assert (= bs!760138 (and d!1344270 d!1343746)))

(assert (=> bs!760138 (= (dynLambda!20864 lambda!155332 (h!55371 (t!356734 (toList!3561 lm!1616)))) (noDuplicateKeys!787 (_2!28058 (h!55371 (t!356734 (toList!3561 lm!1616))))))))

(assert (=> bs!760138 m!5115493))

(assert (=> b!4431836 d!1344270))

(declare-fun b_lambda!143843 () Bool)

(assert (= b_lambda!143713 (or start!432668 b_lambda!143843)))

(declare-fun bs!760139 () Bool)

(declare-fun d!1344272 () Bool)

(assert (= bs!760139 (and d!1344272 start!432668)))

(assert (=> bs!760139 (= (dynLambda!20864 lambda!155230 (h!55371 (t!356734 (toList!3561 (+!1143 lm!1616 (tuple2!49529 hash!366 newBucket!194)))))) (noDuplicateKeys!787 (_2!28058 (h!55371 (t!356734 (toList!3561 (+!1143 lm!1616 (tuple2!49529 hash!366 newBucket!194))))))))))

(declare-fun m!5116475 () Bool)

(assert (=> bs!760139 m!5116475))

(assert (=> b!4431447 d!1344272))

(declare-fun b_lambda!143845 () Bool)

(assert (= b_lambda!143711 (or d!1343680 b_lambda!143845)))

(declare-fun bs!760140 () Bool)

(declare-fun d!1344274 () Bool)

(assert (= bs!760140 (and d!1344274 d!1343680)))

(assert (=> bs!760140 (= (dynLambda!20866 lambda!155331 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616))))) (contains!12199 lt!1629792 (_1!28057 (h!55370 (_2!28058 (h!55371 (toList!3561 lm!1616)))))))))

(declare-fun m!5116477 () Bool)

(assert (=> bs!760140 m!5116477))

(assert (=> b!4431445 d!1344274))

(declare-fun b_lambda!143847 () Bool)

(assert (= b_lambda!143819 (or start!432668 b_lambda!143847)))

(declare-fun bs!760141 () Bool)

(declare-fun d!1344276 () Bool)

(assert (= bs!760141 (and d!1344276 start!432668)))

(assert (=> bs!760141 (= (dynLambda!20864 lambda!155230 (h!55371 (t!356734 (t!356734 (toList!3561 lt!1629503))))) (noDuplicateKeys!787 (_2!28058 (h!55371 (t!356734 (t!356734 (toList!3561 lt!1629503)))))))))

(declare-fun m!5116479 () Bool)

(assert (=> bs!760141 m!5116479))

(assert (=> b!4431838 d!1344276))

(declare-fun b_lambda!143849 () Bool)

(assert (= b_lambda!143727 (or b!4431204 b_lambda!143849)))

(assert (=> d!1343914 d!1344262))

(declare-fun b_lambda!143851 () Bool)

(assert (= b_lambda!143813 (or b!4431274 b_lambda!143851)))

(declare-fun bs!760142 () Bool)

(declare-fun d!1344278 () Bool)

(assert (= bs!760142 (and d!1344278 b!4431274)))

(assert (=> bs!760142 (= (dynLambda!20870 lambda!155338 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) (_1!28057 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))))))

(assert (=> b!4431823 d!1344278))

(declare-fun b_lambda!143853 () Bool)

(assert (= b_lambda!143715 (or b!4431204 b_lambda!143853)))

(declare-fun bs!760143 () Bool)

(declare-fun d!1344280 () Bool)

(assert (= bs!760143 (and d!1344280 b!4431204)))

(assert (=> bs!760143 (= (dynLambda!20866 lambda!155330 (h!55370 (toList!3562 lt!1629790))) (contains!12199 lt!1629788 (_1!28057 (h!55370 (toList!3562 lt!1629790)))))))

(declare-fun m!5116481 () Bool)

(assert (=> bs!760143 m!5116481))

(assert (=> b!4431470 d!1344280))

(declare-fun b_lambda!143855 () Bool)

(assert (= b_lambda!143815 (or d!1343680 b_lambda!143855)))

(declare-fun bs!760144 () Bool)

(declare-fun d!1344282 () Bool)

(assert (= bs!760144 (and d!1344282 d!1343680)))

(assert (=> bs!760144 (= (dynLambda!20866 lambda!155331 (h!55370 (toList!3562 (extractMap!848 (t!356734 (toList!3561 lm!1616)))))) (contains!12199 lt!1629792 (_1!28057 (h!55370 (toList!3562 (extractMap!848 (t!356734 (toList!3561 lm!1616))))))))))

(declare-fun m!5116483 () Bool)

(assert (=> bs!760144 m!5116483))

(assert (=> b!4431824 d!1344282))

(declare-fun b_lambda!143857 () Bool)

(assert (= b_lambda!143753 (or b!4431298 b_lambda!143857)))

(declare-fun bs!760145 () Bool)

(declare-fun d!1344284 () Bool)

(assert (= bs!760145 (and d!1344284 b!4431298)))

(assert (=> bs!760145 (= (dynLambda!20870 lambda!155350 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) (_1!28057 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))))))

(assert (=> b!4431696 d!1344284))

(declare-fun b_lambda!143859 () Bool)

(assert (= b_lambda!143821 (or b!4431297 b_lambda!143859)))

(declare-fun bs!760146 () Bool)

(declare-fun d!1344286 () Bool)

(assert (= bs!760146 (and d!1344286 b!4431297)))

(assert (=> bs!760146 (= (dynLambda!20869 lambda!155348 (h!55375 lt!1629836)) (containsKey!1168 (Cons!49671 (h!55370 (toList!3562 (extractMap!848 (toList!3561 lm!1616)))) (t!356733 (toList!3562 (extractMap!848 (toList!3561 lm!1616))))) (h!55375 lt!1629836)))))

(declare-fun m!5116485 () Bool)

(assert (=> bs!760146 m!5116485))

(assert (=> b!4431842 d!1344286))

(declare-fun b_lambda!143861 () Bool)

(assert (= b_lambda!143735 (or b!4431204 b_lambda!143861)))

(declare-fun bs!760147 () Bool)

(declare-fun d!1344288 () Bool)

(assert (= bs!760147 (and d!1344288 b!4431204)))

(assert (=> bs!760147 (= (dynLambda!20866 lambda!155329 (h!55370 (toList!3562 (extractMap!848 (t!356734 (toList!3561 lm!1616)))))) (contains!12199 (extractMap!848 (t!356734 (toList!3561 lm!1616))) (_1!28057 (h!55370 (toList!3562 (extractMap!848 (t!356734 (toList!3561 lm!1616))))))))))

(assert (=> bs!760147 m!5115001))

(declare-fun m!5116487 () Bool)

(assert (=> bs!760147 m!5116487))

(assert (=> b!4431559 d!1344288))

(declare-fun b_lambda!143863 () Bool)

(assert (= b_lambda!143825 (or d!1343594 b_lambda!143863)))

(declare-fun bs!760148 () Bool)

(declare-fun d!1344290 () Bool)

(assert (= bs!760148 (and d!1344290 d!1343594)))

(assert (=> bs!760148 (= (dynLambda!20864 lambda!155242 (h!55371 (t!356734 (toList!3561 lm!1616)))) (noDuplicateKeys!787 (_2!28058 (h!55371 (t!356734 (toList!3561 lm!1616))))))))

(assert (=> bs!760148 m!5115493))

(assert (=> b!4431862 d!1344290))

(declare-fun b_lambda!143865 () Bool)

(assert (= b_lambda!143723 (or b!4431204 b_lambda!143865)))

(declare-fun bs!760149 () Bool)

(declare-fun d!1344292 () Bool)

(assert (= bs!760149 (and d!1344292 b!4431204)))

(assert (=> bs!760149 (= (dynLambda!20866 lambda!155330 (h!55370 (toList!3562 (extractMap!848 (t!356734 (toList!3561 lm!1616)))))) (contains!12199 lt!1629788 (_1!28057 (h!55370 (toList!3562 (extractMap!848 (t!356734 (toList!3561 lm!1616))))))))))

(declare-fun m!5116489 () Bool)

(assert (=> bs!760149 m!5116489))

(assert (=> b!4431498 d!1344292))

(check-sat (not b_lambda!143831) (not d!1344230) (not bm!308348) (not b!4431443) (not b!4431621) (not d!1343914) (not b!4431733) (not b_lambda!143695) (not d!1343888) (not b!4431558) (not b!4431841) (not d!1344146) (not b!4431601) (not b!4431655) (not d!1344062) (not b_lambda!143845) (not b!4431527) (not b!4431656) (not b_lambda!143859) (not b_lambda!143849) (not b!4431651) (not b!4431696) (not d!1343980) (not b!4431471) (not b!4431582) (not d!1344090) (not bs!760149) (not b_lambda!143839) (not b!4431866) (not d!1344080) (not b!4431806) (not b!4431642) (not b!4431488) (not bs!760131) (not b!4431636) (not b!4431835) (not b_lambda!143865) (not b!4431650) (not b!4431857) (not b_lambda!143689) (not b!4431645) (not b!4431704) (not b!4431823) (not b!4431446) (not b!4431468) (not b!4431486) (not b!4431868) (not bm!308329) (not b_lambda!143855) (not d!1343990) (not b_lambda!143843) (not b_lambda!143691) (not b!4431848) (not bs!760139) (not b_lambda!143837) (not d!1344006) (not b_lambda!143841) (not b!4431613) (not b_lambda!143847) (not b!4431490) (not d!1344220) (not b!4431821) (not b!4431628) (not b_lambda!143829) (not b!4431635) (not b_lambda!143687) (not b!4431457) (not d!1343970) (not b!4431740) (not b!4431746) (not b!4431462) (not b_lambda!143861) (not b!4431719) (not b!4431629) (not b!4431505) (not b!4431652) (not d!1343918) (not b!4431489) (not b!4431461) (not b!4431837) (not b_lambda!143857) (not b!4431814) (not b!4431448) (not d!1344058) (not d!1344008) (not b!4431532) (not b_lambda!143851) (not d!1343880) (not b!4431560) (not d!1344026) tp_is_empty!26393 (not b_lambda!143809) (not bs!760143) (not d!1344234) (not b!4431604) (not b!4431734) (not b!4431504) (not b!4431839) (not bm!308331) (not bs!760136) (not b!4431810) (not b!4431849) (not b!4431860) (not d!1343994) (not bm!308339) tp_is_empty!26395 (not d!1344098) (not b!4431798) (not b!4431819) (not d!1344224) (not b!4431869) (not bs!760148) (not b_lambda!143863) (not bs!760137) (not bs!760140) (not b!4431671) (not b!4431712) (not d!1344064) (not b!4431510) (not d!1344130) (not b_lambda!143647) (not bs!760135) (not b!4431530) (not b_lambda!143693) (not b!4431623) (not b!4431778) (not b_lambda!143827) (not d!1343964) (not bs!760147) (not b!4431669) (not b_lambda!143741) (not b!4431847) (not b!4431455) (not b!4431833) (not b!4431722) (not b!4431587) (not bs!760132) (not b!4431562) (not b_lambda!143835) (not d!1344038) (not bs!760144) (not b!4431852) (not b!4431716) (not b!4431620) (not b!4431721) (not b!4431815) (not d!1344226) (not b_lambda!143853) (not d!1343996) (not b!4431492) (not b!4431863) (not bm!308337) (not b!4431507) (not d!1343972) (not d!1344142) (not b!4431506) (not bs!760138) (not b!4431812) (not bm!308346) (not bm!308347) (not d!1344178) (not b!4431678) (not b!4431641) (not bm!308338) (not b!4431867) (not bm!308332) (not d!1344238) (not d!1344208) (not b!4431738) (not d!1344078) (not bs!760133) (not b!4431730) (not d!1343900) (not b!4431865) (not bs!760146) (not b!4431817) (not b!4431585) (not b!4431444) (not b!4431702) (not b!4431503) (not bs!760134) (not d!1344150) (not b!4431528) (not b_lambda!143697) (not b_lambda!143649) (not b_lambda!143833) (not b!4431631) (not b!4431856) (not b!4431493) (not b!4431552) (not d!1344222) (not b!4431583) (not b!4431672) (not d!1343910) (not b!4431728) (not b!4431551) (not b!4431676) (not b!4431499) (not d!1344074) (not b!4431487) (not b!4431531) (not b!4431825) (not b!4431811) (not d!1343894) (not b!4431748) (not d!1343924) (not bs!760141) (not b!4431843) (not b!4431509) (not b!4431654) (not d!1344104) (not b!4431782) (not b!4431626) (not b!4431720) (not b!4431781) (not bm!308345) (not b!4431698) (not b!4431723) (not b!4431789) (not b!4431855) (not b!4431831) (not b!4431643) (not b_lambda!143645))
(check-sat)
