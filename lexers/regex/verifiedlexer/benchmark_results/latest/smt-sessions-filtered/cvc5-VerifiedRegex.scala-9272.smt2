; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!492360 () Bool)

(assert start!492360)

(declare-fun bs!1153686 () Bool)

(declare-fun b!4786873 () Bool)

(assert (= bs!1153686 (and b!4786873 start!492360)))

(declare-fun lambda!229441 () Int)

(declare-fun lambda!229440 () Int)

(assert (=> bs!1153686 (not (= lambda!229441 lambda!229440))))

(assert (=> b!4786873 true))

(assert (=> b!4786873 true))

(assert (=> b!4786873 true))

(declare-fun b!4786865 () Bool)

(declare-fun res!2033532 () Bool)

(declare-fun e!2988806 () Bool)

(assert (=> b!4786865 (=> (not res!2033532) (not e!2988806))))

(declare-datatypes ((K!15647 0))(
  ( (K!15648 (val!20823 Int)) )
))
(declare-datatypes ((V!15893 0))(
  ( (V!15894 (val!20824 Int)) )
))
(declare-datatypes ((tuple2!56620 0))(
  ( (tuple2!56621 (_1!31604 K!15647) (_2!31604 V!15893)) )
))
(declare-datatypes ((List!54209 0))(
  ( (Nil!54085) (Cons!54085 (h!60509 tuple2!56620) (t!361659 List!54209)) )
))
(declare-datatypes ((tuple2!56622 0))(
  ( (tuple2!56623 (_1!31605 (_ BitVec 64)) (_2!31605 List!54209)) )
))
(declare-datatypes ((List!54210 0))(
  ( (Nil!54086) (Cons!54086 (h!60510 tuple2!56622) (t!361660 List!54210)) )
))
(declare-datatypes ((ListLongMap!5227 0))(
  ( (ListLongMap!5228 (toList!6805 List!54210)) )
))
(declare-fun lm!2473 () ListLongMap!5227)

(declare-datatypes ((Hashable!6863 0))(
  ( (HashableExt!6862 (__x!32886 Int)) )
))
(declare-fun hashF!1559 () Hashable!6863)

(declare-fun allKeysSameHashInMap!2268 (ListLongMap!5227 Hashable!6863) Bool)

(assert (=> b!4786865 (= res!2033532 (allKeysSameHashInMap!2268 lm!2473 hashF!1559))))

(declare-fun b!4786866 () Bool)

(declare-fun res!2033529 () Bool)

(declare-fun e!2988807 () Bool)

(assert (=> b!4786866 (=> res!2033529 e!2988807)))

(declare-fun lt!1947813 () ListLongMap!5227)

(declare-fun lt!1947814 () (_ BitVec 64))

(declare-fun contains!17666 (ListLongMap!5227 (_ BitVec 64)) Bool)

(assert (=> b!4786866 (= res!2033529 (contains!17666 lt!1947813 lt!1947814))))

(declare-fun b!4786867 () Bool)

(declare-fun res!2033531 () Bool)

(declare-fun e!2988805 () Bool)

(assert (=> b!4786867 (=> res!2033531 e!2988805)))

(declare-fun key!5896 () K!15647)

(declare-fun containsKey!3870 (List!54209 K!15647) Bool)

(assert (=> b!4786867 (= res!2033531 (not (containsKey!3870 (_2!31605 (h!60510 (toList!6805 lm!2473))) key!5896)))))

(declare-fun b!4786868 () Bool)

(declare-fun res!2033530 () Bool)

(assert (=> b!4786868 (=> res!2033530 e!2988805)))

(assert (=> b!4786868 (= res!2033530 (not (is-Cons!54086 (toList!6805 lm!2473))))))

(declare-fun b!4786869 () Bool)

(assert (=> b!4786869 (= e!2988806 (not e!2988805))))

(declare-fun res!2033537 () Bool)

(assert (=> b!4786869 (=> res!2033537 e!2988805)))

(declare-fun value!3111 () V!15893)

(declare-fun getValue!59 (List!54210 K!15647) V!15893)

(assert (=> b!4786869 (= res!2033537 (not (= (getValue!59 (toList!6805 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!513 (List!54210 K!15647) Bool)

(assert (=> b!4786869 (containsKeyBiggerList!513 (toList!6805 lm!2473) key!5896)))

(declare-datatypes ((Unit!139562 0))(
  ( (Unit!139563) )
))
(declare-fun lt!1947811 () Unit!139562)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!253 (ListLongMap!5227 K!15647 Hashable!6863) Unit!139562)

(assert (=> b!4786869 (= lt!1947811 (lemmaInLongMapThenContainsKeyBiggerList!253 lm!2473 key!5896 hashF!1559))))

(declare-fun e!2988809 () Bool)

(assert (=> b!4786869 e!2988809))

(declare-fun res!2033534 () Bool)

(assert (=> b!4786869 (=> (not res!2033534) (not e!2988809))))

(assert (=> b!4786869 (= res!2033534 (contains!17666 lm!2473 lt!1947814))))

(declare-fun hash!4884 (Hashable!6863 K!15647) (_ BitVec 64))

(assert (=> b!4786869 (= lt!1947814 (hash!4884 hashF!1559 key!5896))))

(declare-fun lt!1947812 () Unit!139562)

(declare-fun lemmaInGenericMapThenInLongMap!267 (ListLongMap!5227 K!15647 Hashable!6863) Unit!139562)

(assert (=> b!4786869 (= lt!1947812 (lemmaInGenericMapThenInLongMap!267 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4786870 () Bool)

(declare-fun res!2033535 () Bool)

(assert (=> b!4786870 (=> res!2033535 e!2988807)))

(assert (=> b!4786870 (= res!2033535 (not (allKeysSameHashInMap!2268 lt!1947813 hashF!1559)))))

(declare-fun res!2033538 () Bool)

(assert (=> start!492360 (=> (not res!2033538) (not e!2988806))))

(declare-fun forall!12171 (List!54210 Int) Bool)

(assert (=> start!492360 (= res!2033538 (forall!12171 (toList!6805 lm!2473) lambda!229440))))

(assert (=> start!492360 e!2988806))

(declare-fun e!2988808 () Bool)

(declare-fun inv!69674 (ListLongMap!5227) Bool)

(assert (=> start!492360 (and (inv!69674 lm!2473) e!2988808)))

(assert (=> start!492360 true))

(declare-fun tp_is_empty!33333 () Bool)

(assert (=> start!492360 tp_is_empty!33333))

(declare-fun tp_is_empty!33335 () Bool)

(assert (=> start!492360 tp_is_empty!33335))

(declare-fun b!4786871 () Bool)

(declare-fun tp!1357707 () Bool)

(assert (=> b!4786871 (= e!2988808 tp!1357707)))

(declare-fun b!4786872 () Bool)

(assert (=> b!4786872 (= e!2988807 (forall!12171 (toList!6805 lt!1947813) lambda!229440))))

(assert (=> b!4786873 (= e!2988805 e!2988807)))

(declare-fun res!2033536 () Bool)

(assert (=> b!4786873 (=> res!2033536 e!2988807)))

(assert (=> b!4786873 (= res!2033536 (not (forall!12171 (toList!6805 lt!1947813) lambda!229440)))))

(declare-fun tail!9210 (ListLongMap!5227) ListLongMap!5227)

(assert (=> b!4786873 (= lt!1947813 (tail!9210 lm!2473))))

(declare-fun lt!1947810 () Unit!139562)

(declare-fun lambda!229442 () Int)

(declare-fun forallContained!4109 (List!54209 Int tuple2!56620) Unit!139562)

(assert (=> b!4786873 (= lt!1947810 (forallContained!4109 (_2!31605 (h!60510 (toList!6805 lm!2473))) lambda!229442 (tuple2!56621 key!5896 value!3111)))))

(declare-fun lt!1947815 () Unit!139562)

(declare-fun forallContained!4110 (List!54210 Int tuple2!56622) Unit!139562)

(assert (=> b!4786873 (= lt!1947815 (forallContained!4110 (toList!6805 lm!2473) lambda!229441 (h!60510 (toList!6805 lm!2473))))))

(declare-fun b!4786874 () Bool)

(declare-datatypes ((Option!13007 0))(
  ( (None!13006) (Some!13006 (v!48269 tuple2!56620)) )
))
(declare-fun isDefined!10149 (Option!13007) Bool)

(declare-fun getPair!835 (List!54209 K!15647) Option!13007)

(declare-fun apply!12918 (ListLongMap!5227 (_ BitVec 64)) List!54209)

(assert (=> b!4786874 (= e!2988809 (isDefined!10149 (getPair!835 (apply!12918 lm!2473 lt!1947814) key!5896)))))

(declare-fun b!4786875 () Bool)

(declare-fun res!2033533 () Bool)

(assert (=> b!4786875 (=> (not res!2033533) (not e!2988806))))

(declare-datatypes ((ListMap!6277 0))(
  ( (ListMap!6278 (toList!6806 List!54209)) )
))
(declare-fun contains!17667 (ListMap!6277 K!15647) Bool)

(declare-fun extractMap!2390 (List!54210) ListMap!6277)

(assert (=> b!4786875 (= res!2033533 (contains!17667 (extractMap!2390 (toList!6805 lm!2473)) key!5896))))

(assert (= (and start!492360 res!2033538) b!4786865))

(assert (= (and b!4786865 res!2033532) b!4786875))

(assert (= (and b!4786875 res!2033533) b!4786869))

(assert (= (and b!4786869 res!2033534) b!4786874))

(assert (= (and b!4786869 (not res!2033537)) b!4786868))

(assert (= (and b!4786868 (not res!2033530)) b!4786867))

(assert (= (and b!4786867 (not res!2033531)) b!4786873))

(assert (= (and b!4786873 (not res!2033536)) b!4786870))

(assert (= (and b!4786870 (not res!2033535)) b!4786866))

(assert (= (and b!4786866 (not res!2033529)) b!4786872))

(assert (= start!492360 b!4786871))

(declare-fun m!5766058 () Bool)

(assert (=> b!4786875 m!5766058))

(assert (=> b!4786875 m!5766058))

(declare-fun m!5766060 () Bool)

(assert (=> b!4786875 m!5766060))

(declare-fun m!5766062 () Bool)

(assert (=> b!4786873 m!5766062))

(declare-fun m!5766064 () Bool)

(assert (=> b!4786873 m!5766064))

(declare-fun m!5766066 () Bool)

(assert (=> b!4786873 m!5766066))

(declare-fun m!5766068 () Bool)

(assert (=> b!4786873 m!5766068))

(declare-fun m!5766070 () Bool)

(assert (=> b!4786866 m!5766070))

(declare-fun m!5766072 () Bool)

(assert (=> b!4786874 m!5766072))

(assert (=> b!4786874 m!5766072))

(declare-fun m!5766074 () Bool)

(assert (=> b!4786874 m!5766074))

(assert (=> b!4786874 m!5766074))

(declare-fun m!5766076 () Bool)

(assert (=> b!4786874 m!5766076))

(declare-fun m!5766078 () Bool)

(assert (=> b!4786865 m!5766078))

(declare-fun m!5766080 () Bool)

(assert (=> start!492360 m!5766080))

(declare-fun m!5766082 () Bool)

(assert (=> start!492360 m!5766082))

(declare-fun m!5766084 () Bool)

(assert (=> b!4786870 m!5766084))

(assert (=> b!4786872 m!5766062))

(declare-fun m!5766086 () Bool)

(assert (=> b!4786869 m!5766086))

(declare-fun m!5766088 () Bool)

(assert (=> b!4786869 m!5766088))

(declare-fun m!5766090 () Bool)

(assert (=> b!4786869 m!5766090))

(declare-fun m!5766092 () Bool)

(assert (=> b!4786869 m!5766092))

(declare-fun m!5766094 () Bool)

(assert (=> b!4786869 m!5766094))

(declare-fun m!5766096 () Bool)

(assert (=> b!4786869 m!5766096))

(declare-fun m!5766098 () Bool)

(assert (=> b!4786867 m!5766098))

(push 1)

(assert tp_is_empty!33333)

(assert (not b!4786873))

(assert (not b!4786869))

(assert (not b!4786871))

(assert (not b!4786872))

(assert (not b!4786874))

(assert (not b!4786866))

(assert (not b!4786870))

(assert (not b!4786865))

(assert (not b!4786867))

(assert (not start!492360))

(assert tp_is_empty!33335)

(assert (not b!4786875))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

