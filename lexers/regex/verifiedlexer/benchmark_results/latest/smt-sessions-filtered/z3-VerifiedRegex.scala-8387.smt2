; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!436584 () Bool)

(assert start!436584)

(declare-fun b!4455395 () Bool)

(declare-fun e!2774404 () Bool)

(declare-datatypes ((V!11586 0))(
  ( (V!11587 (val!17343 Int)) )
))
(declare-datatypes ((K!11340 0))(
  ( (K!11341 (val!17344 Int)) )
))
(declare-datatypes ((tuple2!50006 0))(
  ( (tuple2!50007 (_1!28297 K!11340) (_2!28297 V!11586)) )
))
(declare-datatypes ((List!50089 0))(
  ( (Nil!49965) (Cons!49965 (h!55710 tuple2!50006) (t!357039 List!50089)) )
))
(declare-datatypes ((ListMap!3037 0))(
  ( (ListMap!3038 (toList!3797 List!50089)) )
))
(declare-fun lt!1646935 () ListMap!3037)

(declare-fun key!4369 () K!11340)

(declare-fun contains!12526 (ListMap!3037 K!11340) Bool)

(assert (=> b!4455395 (= e!2774404 (contains!12526 lt!1646935 key!4369))))

(declare-fun lt!1646934 () ListMap!3037)

(assert (=> b!4455395 (contains!12526 lt!1646934 key!4369)))

(declare-datatypes ((tuple2!50008 0))(
  ( (tuple2!50009 (_1!28298 (_ BitVec 64)) (_2!28298 List!50089)) )
))
(declare-datatypes ((List!50090 0))(
  ( (Nil!49966) (Cons!49966 (h!55711 tuple2!50008) (t!357040 List!50090)) )
))
(declare-datatypes ((ListLongMap!2451 0))(
  ( (ListLongMap!2452 (toList!3798 List!50090)) )
))
(declare-fun lm!1837 () ListLongMap!2451)

(declare-datatypes ((Unit!85987 0))(
  ( (Unit!85988) )
))
(declare-fun lt!1646932 () Unit!85987)

(declare-datatypes ((Hashable!5301 0))(
  ( (HashableExt!5300 (__x!31004 Int)) )
))
(declare-fun hashF!1304 () Hashable!5301)

(declare-fun lt!1646936 () ListLongMap!2451)

(declare-fun lemmaAddToMapMaintainsContains!4 (ListLongMap!2451 K!11340 List!50089 Hashable!5301) Unit!85987)

(assert (=> b!4455395 (= lt!1646932 (lemmaAddToMapMaintainsContains!4 lt!1646936 key!4369 (_2!28298 (h!55711 (toList!3798 lm!1837))) hashF!1304))))

(declare-fun b!4455396 () Bool)

(declare-fun res!1846848 () Bool)

(assert (=> b!4455396 (=> res!1846848 e!2774404)))

(declare-fun noDuplicateKeys!895 (List!50089) Bool)

(assert (=> b!4455396 (= res!1846848 (not (noDuplicateKeys!895 (_2!28298 (h!55711 (toList!3798 lm!1837))))))))

(declare-fun b!4455397 () Bool)

(declare-fun res!1846845 () Bool)

(declare-fun e!2774403 () Bool)

(assert (=> b!4455397 (=> (not res!1846845) (not e!2774403))))

(get-info :version)

(assert (=> b!4455397 (= res!1846845 ((_ is Cons!49966) (toList!3798 lm!1837)))))

(declare-fun b!4455398 () Bool)

(declare-fun e!2774405 () Bool)

(assert (=> b!4455398 (= e!2774405 e!2774403)))

(declare-fun res!1846847 () Bool)

(assert (=> b!4455398 (=> (not res!1846847) (not e!2774403))))

(declare-fun lt!1646933 () ListMap!3037)

(assert (=> b!4455398 (= res!1846847 (contains!12526 lt!1646933 key!4369))))

(declare-fun extractMap!964 (List!50090) ListMap!3037)

(assert (=> b!4455398 (= lt!1646933 (extractMap!964 (toList!3798 lt!1646936)))))

(declare-fun tail!7476 (ListLongMap!2451) ListLongMap!2451)

(assert (=> b!4455398 (= lt!1646936 (tail!7476 lm!1837))))

(declare-fun b!4455399 () Bool)

(assert (=> b!4455399 (= e!2774403 (not e!2774404))))

(declare-fun res!1846846 () Bool)

(assert (=> b!4455399 (=> res!1846846 e!2774404)))

(declare-fun lambda!160111 () Int)

(declare-fun forall!9814 (List!50090 Int) Bool)

(assert (=> b!4455399 (= res!1846846 (not (forall!9814 (toList!3798 lt!1646936) lambda!160111)))))

(assert (=> b!4455399 (= lt!1646935 lt!1646934)))

(declare-fun addToMapMapFromBucket!495 (List!50089 ListMap!3037) ListMap!3037)

(assert (=> b!4455399 (= lt!1646934 (addToMapMapFromBucket!495 (_2!28298 (h!55711 (toList!3798 lm!1837))) lt!1646933))))

(assert (=> b!4455399 (= lt!1646935 (extractMap!964 (toList!3798 lm!1837)))))

(declare-fun b!4455400 () Bool)

(declare-fun res!1846843 () Bool)

(assert (=> b!4455400 (=> res!1846843 e!2774404)))

(declare-fun allKeysSameHashInMap!1013 (ListLongMap!2451 Hashable!5301) Bool)

(assert (=> b!4455400 (= res!1846843 (not (allKeysSameHashInMap!1013 lt!1646936 hashF!1304)))))

(declare-fun b!4455401 () Bool)

(declare-fun res!1846849 () Bool)

(assert (=> b!4455401 (=> (not res!1846849) (not e!2774405))))

(declare-fun isEmpty!28455 (List!50090) Bool)

(assert (=> b!4455401 (= res!1846849 (not (isEmpty!28455 (toList!3798 lm!1837))))))

(declare-fun res!1846842 () Bool)

(assert (=> start!436584 (=> (not res!1846842) (not e!2774405))))

(assert (=> start!436584 (= res!1846842 (forall!9814 (toList!3798 lm!1837) lambda!160111))))

(assert (=> start!436584 e!2774405))

(declare-fun e!2774402 () Bool)

(declare-fun inv!65526 (ListLongMap!2451) Bool)

(assert (=> start!436584 (and (inv!65526 lm!1837) e!2774402)))

(assert (=> start!436584 true))

(declare-fun tp_is_empty!26803 () Bool)

(assert (=> start!436584 tp_is_empty!26803))

(declare-fun b!4455402 () Bool)

(declare-fun tp!1334869 () Bool)

(assert (=> b!4455402 (= e!2774402 tp!1334869)))

(declare-fun b!4455403 () Bool)

(declare-fun res!1846844 () Bool)

(assert (=> b!4455403 (=> (not res!1846844) (not e!2774405))))

(assert (=> b!4455403 (= res!1846844 (allKeysSameHashInMap!1013 lm!1837 hashF!1304))))

(assert (= (and start!436584 res!1846842) b!4455403))

(assert (= (and b!4455403 res!1846844) b!4455401))

(assert (= (and b!4455401 res!1846849) b!4455398))

(assert (= (and b!4455398 res!1846847) b!4455397))

(assert (= (and b!4455397 res!1846845) b!4455399))

(assert (= (and b!4455399 (not res!1846846)) b!4455400))

(assert (= (and b!4455400 (not res!1846843)) b!4455396))

(assert (= (and b!4455396 (not res!1846848)) b!4455395))

(assert (= start!436584 b!4455402))

(declare-fun m!5156953 () Bool)

(assert (=> start!436584 m!5156953))

(declare-fun m!5156955 () Bool)

(assert (=> start!436584 m!5156955))

(declare-fun m!5156957 () Bool)

(assert (=> b!4455400 m!5156957))

(declare-fun m!5156959 () Bool)

(assert (=> b!4455399 m!5156959))

(declare-fun m!5156961 () Bool)

(assert (=> b!4455399 m!5156961))

(declare-fun m!5156963 () Bool)

(assert (=> b!4455399 m!5156963))

(declare-fun m!5156965 () Bool)

(assert (=> b!4455401 m!5156965))

(declare-fun m!5156967 () Bool)

(assert (=> b!4455398 m!5156967))

(declare-fun m!5156969 () Bool)

(assert (=> b!4455398 m!5156969))

(declare-fun m!5156971 () Bool)

(assert (=> b!4455398 m!5156971))

(declare-fun m!5156973 () Bool)

(assert (=> b!4455403 m!5156973))

(declare-fun m!5156975 () Bool)

(assert (=> b!4455396 m!5156975))

(declare-fun m!5156977 () Bool)

(assert (=> b!4455395 m!5156977))

(declare-fun m!5156979 () Bool)

(assert (=> b!4455395 m!5156979))

(declare-fun m!5156981 () Bool)

(assert (=> b!4455395 m!5156981))

(check-sat (not b!4455396) (not b!4455400) (not start!436584) (not b!4455395) (not b!4455401) (not b!4455398) (not b!4455399) (not b!4455402) tp_is_empty!26803 (not b!4455403))
(check-sat)
