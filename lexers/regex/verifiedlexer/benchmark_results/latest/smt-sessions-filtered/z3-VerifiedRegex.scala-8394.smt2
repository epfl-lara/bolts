; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!436672 () Bool)

(assert start!436672)

(declare-fun e!2774732 () Bool)

(declare-fun tp!1334977 () Bool)

(declare-fun tp_is_empty!26855 () Bool)

(declare-fun b!4455986 () Bool)

(declare-fun tp_is_empty!26853 () Bool)

(assert (=> b!4455986 (= e!2774732 (and tp_is_empty!26853 tp_is_empty!26855 tp!1334977))))

(declare-fun res!1847183 () Bool)

(declare-fun e!2774734 () Bool)

(assert (=> start!436672 (=> (not res!1847183) (not e!2774734))))

(declare-datatypes ((K!11375 0))(
  ( (K!11376 (val!17371 Int)) )
))
(declare-datatypes ((V!11621 0))(
  ( (V!11622 (val!17372 Int)) )
))
(declare-datatypes ((tuple2!50062 0))(
  ( (tuple2!50063 (_1!28325 K!11375) (_2!28325 V!11621)) )
))
(declare-datatypes ((List!50121 0))(
  ( (Nil!49997) (Cons!49997 (h!55742 tuple2!50062) (t!357071 List!50121)) )
))
(declare-datatypes ((tuple2!50064 0))(
  ( (tuple2!50065 (_1!28326 (_ BitVec 64)) (_2!28326 List!50121)) )
))
(declare-datatypes ((List!50122 0))(
  ( (Nil!49998) (Cons!49998 (h!55743 tuple2!50064) (t!357072 List!50122)) )
))
(declare-datatypes ((ListLongMap!2479 0))(
  ( (ListLongMap!2480 (toList!3823 List!50122)) )
))
(declare-fun lm!1853 () ListLongMap!2479)

(declare-fun lambda!160269 () Int)

(declare-fun forall!9829 (List!50122 Int) Bool)

(assert (=> start!436672 (= res!1847183 (forall!9829 (toList!3823 lm!1853) lambda!160269))))

(assert (=> start!436672 e!2774734))

(declare-fun e!2774735 () Bool)

(declare-fun inv!65561 (ListLongMap!2479) Bool)

(assert (=> start!436672 (and (inv!65561 lm!1853) e!2774735)))

(assert (=> start!436672 true))

(assert (=> start!436672 e!2774732))

(assert (=> start!436672 tp_is_empty!26853))

(declare-fun b!4455987 () Bool)

(declare-fun res!1847178 () Bool)

(assert (=> b!4455987 (=> (not res!1847178) (not e!2774734))))

(declare-datatypes ((Hashable!5315 0))(
  ( (HashableExt!5314 (__x!31018 Int)) )
))
(declare-fun hashF!1313 () Hashable!5315)

(declare-fun allKeysSameHashInMap!1027 (ListLongMap!2479 Hashable!5315) Bool)

(assert (=> b!4455987 (= res!1847178 (allKeysSameHashInMap!1027 lm!1853 hashF!1313))))

(declare-fun b!4455988 () Bool)

(declare-fun e!2774731 () Bool)

(assert (=> b!4455988 (= e!2774731 true)))

(declare-fun lt!1647250 () Bool)

(declare-fun l!12858 () List!50121)

(declare-fun noDuplicateKeys!908 (List!50121) Bool)

(assert (=> b!4455988 (= lt!1647250 (noDuplicateKeys!908 (t!357071 l!12858)))))

(declare-fun b!4455989 () Bool)

(declare-fun res!1847180 () Bool)

(assert (=> b!4455989 (=> (not res!1847180) (not e!2774734))))

(assert (=> b!4455989 (= res!1847180 (noDuplicateKeys!908 l!12858))))

(declare-fun b!4455990 () Bool)

(declare-fun e!2774733 () Bool)

(assert (=> b!4455990 (= e!2774734 e!2774733)))

(declare-fun res!1847181 () Bool)

(assert (=> b!4455990 (=> (not res!1847181) (not e!2774733))))

(declare-datatypes ((ListMap!3061 0))(
  ( (ListMap!3062 (toList!3824 List!50121)) )
))
(declare-fun lt!1647251 () ListMap!3061)

(declare-fun key!4412 () K!11375)

(declare-fun contains!12542 (ListMap!3061 K!11375) Bool)

(assert (=> b!4455990 (= res!1847181 (contains!12542 lt!1647251 key!4412))))

(declare-fun extractMap!976 (List!50122) ListMap!3061)

(assert (=> b!4455990 (= lt!1647251 (extractMap!976 (toList!3823 lm!1853)))))

(declare-fun b!4455991 () Bool)

(declare-fun tp!1334976 () Bool)

(assert (=> b!4455991 (= e!2774735 tp!1334976)))

(declare-fun b!4455992 () Bool)

(declare-fun res!1847182 () Bool)

(assert (=> b!4455992 (=> (not res!1847182) (not e!2774733))))

(get-info :version)

(assert (=> b!4455992 (= res!1847182 ((_ is Cons!49997) l!12858))))

(declare-fun b!4455993 () Bool)

(assert (=> b!4455993 (= e!2774733 (not e!2774731))))

(declare-fun res!1847179 () Bool)

(assert (=> b!4455993 (=> res!1847179 e!2774731)))

(declare-fun containsKey!1322 (List!50121 K!11375) Bool)

(assert (=> b!4455993 (= res!1847179 (containsKey!1322 (t!357071 l!12858) (_1!28325 (h!55742 l!12858))))))

(declare-fun addToMapMapFromBucket!502 (List!50121 ListMap!3061) ListMap!3061)

(assert (=> b!4455993 (contains!12542 (addToMapMapFromBucket!502 (t!357071 l!12858) lt!1647251) key!4412)))

(declare-datatypes ((Unit!86025 0))(
  ( (Unit!86026) )
))
(declare-fun lt!1647252 () Unit!86025)

(declare-fun lemmaAddToMapMaintainsContains!10 (ListLongMap!2479 K!11375 List!50121 Hashable!5315) Unit!86025)

(assert (=> b!4455993 (= lt!1647252 (lemmaAddToMapMaintainsContains!10 lm!1853 key!4412 (t!357071 l!12858) hashF!1313))))

(assert (= (and start!436672 res!1847183) b!4455987))

(assert (= (and b!4455987 res!1847178) b!4455989))

(assert (= (and b!4455989 res!1847180) b!4455990))

(assert (= (and b!4455990 res!1847181) b!4455992))

(assert (= (and b!4455992 res!1847182) b!4455993))

(assert (= (and b!4455993 (not res!1847179)) b!4455988))

(assert (= start!436672 b!4455991))

(assert (= (and start!436672 ((_ is Cons!49997) l!12858)) b!4455986))

(declare-fun m!5157535 () Bool)

(assert (=> start!436672 m!5157535))

(declare-fun m!5157537 () Bool)

(assert (=> start!436672 m!5157537))

(declare-fun m!5157539 () Bool)

(assert (=> b!4455990 m!5157539))

(declare-fun m!5157541 () Bool)

(assert (=> b!4455990 m!5157541))

(declare-fun m!5157543 () Bool)

(assert (=> b!4455987 m!5157543))

(declare-fun m!5157545 () Bool)

(assert (=> b!4455993 m!5157545))

(declare-fun m!5157547 () Bool)

(assert (=> b!4455993 m!5157547))

(assert (=> b!4455993 m!5157547))

(declare-fun m!5157549 () Bool)

(assert (=> b!4455993 m!5157549))

(declare-fun m!5157551 () Bool)

(assert (=> b!4455993 m!5157551))

(declare-fun m!5157553 () Bool)

(assert (=> b!4455988 m!5157553))

(declare-fun m!5157555 () Bool)

(assert (=> b!4455989 m!5157555))

(check-sat (not b!4455990) (not b!4455987) tp_is_empty!26855 (not b!4455991) (not b!4455993) (not b!4455989) (not b!4455986) (not b!4455988) (not start!436672) tp_is_empty!26853)
(check-sat)
