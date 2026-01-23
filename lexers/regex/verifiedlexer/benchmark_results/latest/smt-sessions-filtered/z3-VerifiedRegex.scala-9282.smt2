; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!492814 () Bool)

(assert start!492814)

(declare-fun b!4789058 () Bool)

(declare-fun lt!1949069 () (_ BitVec 64))

(declare-fun e!2990182 () Bool)

(declare-datatypes ((K!15699 0))(
  ( (K!15700 (val!20865 Int)) )
))
(declare-fun key!5896 () K!15699)

(declare-datatypes ((V!15945 0))(
  ( (V!15946 (val!20866 Int)) )
))
(declare-datatypes ((tuple2!56704 0))(
  ( (tuple2!56705 (_1!31646 K!15699) (_2!31646 V!15945)) )
))
(declare-datatypes ((List!54257 0))(
  ( (Nil!54133) (Cons!54133 (h!60557 tuple2!56704) (t!361707 List!54257)) )
))
(declare-datatypes ((tuple2!56706 0))(
  ( (tuple2!56707 (_1!31647 (_ BitVec 64)) (_2!31647 List!54257)) )
))
(declare-datatypes ((List!54258 0))(
  ( (Nil!54134) (Cons!54134 (h!60558 tuple2!56706) (t!361708 List!54258)) )
))
(declare-datatypes ((ListLongMap!5269 0))(
  ( (ListLongMap!5270 (toList!6847 List!54258)) )
))
(declare-fun lm!2473 () ListLongMap!5269)

(declare-datatypes ((Option!13039 0))(
  ( (None!13038) (Some!13038 (v!48309 tuple2!56704)) )
))
(declare-fun isDefined!10181 (Option!13039) Bool)

(declare-fun getPair!856 (List!54257 K!15699) Option!13039)

(declare-fun apply!12945 (ListLongMap!5269 (_ BitVec 64)) List!54257)

(assert (=> b!4789058 (= e!2990182 (isDefined!10181 (getPair!856 (apply!12945 lm!2473 lt!1949069) key!5896)))))

(declare-fun b!4789059 () Bool)

(declare-fun res!2034917 () Bool)

(declare-fun e!2990180 () Bool)

(assert (=> b!4789059 (=> res!2034917 e!2990180)))

(declare-fun containsKey!3902 (List!54257 K!15699) Bool)

(assert (=> b!4789059 (= res!2034917 (containsKey!3902 (_2!31647 (h!60558 (toList!6847 lm!2473))) key!5896))))

(declare-fun b!4789060 () Bool)

(declare-fun res!2034915 () Bool)

(declare-fun e!2990176 () Bool)

(assert (=> b!4789060 (=> res!2034915 e!2990176)))

(declare-fun lt!1949073 () Bool)

(assert (=> b!4789060 (= res!2034915 lt!1949073)))

(declare-fun b!4789061 () Bool)

(assert (=> b!4789061 (= e!2990180 e!2990176)))

(declare-fun res!2034912 () Bool)

(assert (=> b!4789061 (=> res!2034912 e!2990176)))

(declare-fun lambda!229895 () Int)

(declare-fun forall!12201 (List!54258 Int) Bool)

(assert (=> b!4789061 (= res!2034912 (not (forall!12201 (toList!6847 lm!2473) lambda!229895)))))

(declare-datatypes ((Unit!139673 0))(
  ( (Unit!139674) )
))
(declare-fun lt!1949077 () Unit!139673)

(declare-fun e!2990178 () Unit!139673)

(assert (=> b!4789061 (= lt!1949077 e!2990178)))

(declare-fun c!816271 () Bool)

(declare-fun lt!1949076 () ListLongMap!5269)

(declare-fun contains!17729 (ListLongMap!5269 (_ BitVec 64)) Bool)

(assert (=> b!4789061 (= c!816271 (not (contains!17729 lt!1949076 lt!1949069)))))

(declare-fun tail!9233 (ListLongMap!5269) ListLongMap!5269)

(assert (=> b!4789061 (= lt!1949076 (tail!9233 lm!2473))))

(declare-fun b!4789062 () Bool)

(declare-fun e!2990177 () Bool)

(declare-fun tp!1357826 () Bool)

(assert (=> b!4789062 (= e!2990177 tp!1357826)))

(declare-fun b!4789063 () Bool)

(declare-fun lt!1949078 () Unit!139673)

(assert (=> b!4789063 (= e!2990178 lt!1949078)))

(declare-datatypes ((Hashable!6884 0))(
  ( (HashableExt!6883 (__x!32907 Int)) )
))
(declare-fun hashF!1559 () Hashable!6884)

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!10 (ListLongMap!5269 K!15699 Hashable!6884) Unit!139673)

(assert (=> b!4789063 (= lt!1949078 (lemmaHashNotInLongMapThenNotInGenerated!10 lt!1949076 key!5896 hashF!1559))))

(declare-datatypes ((ListMap!6319 0))(
  ( (ListMap!6320 (toList!6848 List!54257)) )
))
(declare-fun contains!17730 (ListMap!6319 K!15699) Bool)

(declare-fun extractMap!2411 (List!54258) ListMap!6319)

(assert (=> b!4789063 (not (contains!17730 (extractMap!2411 (toList!6847 lt!1949076)) key!5896))))

(declare-fun res!2034919 () Bool)

(declare-fun e!2990179 () Bool)

(assert (=> start!492814 (=> (not res!2034919) (not e!2990179))))

(assert (=> start!492814 (= res!2034919 (forall!12201 (toList!6847 lm!2473) lambda!229895))))

(assert (=> start!492814 e!2990179))

(declare-fun inv!69725 (ListLongMap!5269) Bool)

(assert (=> start!492814 (and (inv!69725 lm!2473) e!2990177)))

(assert (=> start!492814 true))

(declare-fun tp_is_empty!33417 () Bool)

(assert (=> start!492814 tp_is_empty!33417))

(declare-fun tp_is_empty!33419 () Bool)

(assert (=> start!492814 tp_is_empty!33419))

(declare-fun b!4789064 () Bool)

(declare-fun res!2034911 () Bool)

(assert (=> b!4789064 (=> (not res!2034911) (not e!2990179))))

(declare-fun allKeysSameHashInMap!2289 (ListLongMap!5269 Hashable!6884) Bool)

(assert (=> b!4789064 (= res!2034911 (allKeysSameHashInMap!2289 lm!2473 hashF!1559))))

(declare-fun b!4789065 () Bool)

(declare-fun Unit!139675 () Unit!139673)

(assert (=> b!4789065 (= e!2990178 Unit!139675)))

(declare-fun b!4789066 () Bool)

(declare-fun res!2034914 () Bool)

(assert (=> b!4789066 (=> (not res!2034914) (not e!2990179))))

(assert (=> b!4789066 (= res!2034914 (contains!17730 (extractMap!2411 (toList!6847 lm!2473)) key!5896))))

(declare-fun b!4789067 () Bool)

(declare-fun e!2990181 () Bool)

(assert (=> b!4789067 (= e!2990181 (forall!12201 (toList!6847 lm!2473) lambda!229895))))

(declare-fun b!4789068 () Bool)

(declare-fun res!2034918 () Bool)

(assert (=> b!4789068 (=> res!2034918 e!2990180)))

(get-info :version)

(assert (=> b!4789068 (= res!2034918 (not ((_ is Cons!54134) (toList!6847 lm!2473))))))

(declare-fun b!4789069 () Bool)

(assert (=> b!4789069 (= e!2990176 e!2990181)))

(declare-fun res!2034916 () Bool)

(assert (=> b!4789069 (=> res!2034916 e!2990181)))

(declare-fun lt!1949079 () List!54257)

(assert (=> b!4789069 (= res!2034916 (not (isDefined!10181 (getPair!856 lt!1949079 key!5896))))))

(declare-fun lt!1949071 () Unit!139673)

(declare-fun lt!1949074 () tuple2!56706)

(declare-fun forallContained!4139 (List!54258 Int tuple2!56706) Unit!139673)

(assert (=> b!4789069 (= lt!1949071 (forallContained!4139 (toList!6847 lm!2473) lambda!229895 lt!1949074))))

(declare-fun contains!17731 (List!54258 tuple2!56706) Bool)

(assert (=> b!4789069 (contains!17731 (toList!6847 lm!2473) lt!1949074)))

(assert (=> b!4789069 (= lt!1949074 (tuple2!56707 lt!1949069 lt!1949079))))

(declare-fun lt!1949075 () Unit!139673)

(declare-fun lemmaGetValueImpliesTupleContained!633 (ListLongMap!5269 (_ BitVec 64) List!54257) Unit!139673)

(assert (=> b!4789069 (= lt!1949075 (lemmaGetValueImpliesTupleContained!633 lm!2473 lt!1949069 lt!1949079))))

(assert (=> b!4789069 (= lt!1949079 (apply!12945 lm!2473 lt!1949069))))

(declare-fun b!4789070 () Bool)

(assert (=> b!4789070 (= e!2990179 (not e!2990180))))

(declare-fun res!2034920 () Bool)

(assert (=> b!4789070 (=> res!2034920 e!2990180)))

(declare-fun value!3111 () V!15945)

(declare-fun getValue!80 (List!54258 K!15699) V!15945)

(assert (=> b!4789070 (= res!2034920 (not (= (getValue!80 (toList!6847 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!534 (List!54258 K!15699) Bool)

(assert (=> b!4789070 (containsKeyBiggerList!534 (toList!6847 lm!2473) key!5896)))

(declare-fun lt!1949070 () Unit!139673)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!274 (ListLongMap!5269 K!15699 Hashable!6884) Unit!139673)

(assert (=> b!4789070 (= lt!1949070 (lemmaInLongMapThenContainsKeyBiggerList!274 lm!2473 key!5896 hashF!1559))))

(assert (=> b!4789070 e!2990182))

(declare-fun res!2034913 () Bool)

(assert (=> b!4789070 (=> (not res!2034913) (not e!2990182))))

(assert (=> b!4789070 (= res!2034913 (not lt!1949073))))

(assert (=> b!4789070 (= lt!1949073 (not (contains!17729 lm!2473 lt!1949069)))))

(declare-fun hash!4910 (Hashable!6884 K!15699) (_ BitVec 64))

(assert (=> b!4789070 (= lt!1949069 (hash!4910 hashF!1559 key!5896))))

(declare-fun lt!1949072 () Unit!139673)

(declare-fun lemmaInGenericMapThenInLongMap!288 (ListLongMap!5269 K!15699 Hashable!6884) Unit!139673)

(assert (=> b!4789070 (= lt!1949072 (lemmaInGenericMapThenInLongMap!288 lm!2473 key!5896 hashF!1559))))

(assert (= (and start!492814 res!2034919) b!4789064))

(assert (= (and b!4789064 res!2034911) b!4789066))

(assert (= (and b!4789066 res!2034914) b!4789070))

(assert (= (and b!4789070 res!2034913) b!4789058))

(assert (= (and b!4789070 (not res!2034920)) b!4789068))

(assert (= (and b!4789068 (not res!2034918)) b!4789059))

(assert (= (and b!4789059 (not res!2034917)) b!4789061))

(assert (= (and b!4789061 c!816271) b!4789063))

(assert (= (and b!4789061 (not c!816271)) b!4789065))

(assert (= (and b!4789061 (not res!2034912)) b!4789060))

(assert (= (and b!4789060 (not res!2034915)) b!4789069))

(assert (= (and b!4789069 (not res!2034916)) b!4789067))

(assert (= start!492814 b!4789062))

(declare-fun m!5768592 () Bool)

(assert (=> start!492814 m!5768592))

(declare-fun m!5768594 () Bool)

(assert (=> start!492814 m!5768594))

(assert (=> b!4789067 m!5768592))

(declare-fun m!5768596 () Bool)

(assert (=> b!4789070 m!5768596))

(declare-fun m!5768598 () Bool)

(assert (=> b!4789070 m!5768598))

(declare-fun m!5768600 () Bool)

(assert (=> b!4789070 m!5768600))

(declare-fun m!5768602 () Bool)

(assert (=> b!4789070 m!5768602))

(declare-fun m!5768604 () Bool)

(assert (=> b!4789070 m!5768604))

(declare-fun m!5768606 () Bool)

(assert (=> b!4789070 m!5768606))

(declare-fun m!5768608 () Bool)

(assert (=> b!4789064 m!5768608))

(declare-fun m!5768610 () Bool)

(assert (=> b!4789058 m!5768610))

(assert (=> b!4789058 m!5768610))

(declare-fun m!5768612 () Bool)

(assert (=> b!4789058 m!5768612))

(assert (=> b!4789058 m!5768612))

(declare-fun m!5768614 () Bool)

(assert (=> b!4789058 m!5768614))

(assert (=> b!4789061 m!5768592))

(declare-fun m!5768616 () Bool)

(assert (=> b!4789061 m!5768616))

(declare-fun m!5768618 () Bool)

(assert (=> b!4789061 m!5768618))

(declare-fun m!5768620 () Bool)

(assert (=> b!4789059 m!5768620))

(declare-fun m!5768622 () Bool)

(assert (=> b!4789063 m!5768622))

(declare-fun m!5768624 () Bool)

(assert (=> b!4789063 m!5768624))

(assert (=> b!4789063 m!5768624))

(declare-fun m!5768626 () Bool)

(assert (=> b!4789063 m!5768626))

(declare-fun m!5768628 () Bool)

(assert (=> b!4789066 m!5768628))

(assert (=> b!4789066 m!5768628))

(declare-fun m!5768630 () Bool)

(assert (=> b!4789066 m!5768630))

(declare-fun m!5768632 () Bool)

(assert (=> b!4789069 m!5768632))

(declare-fun m!5768634 () Bool)

(assert (=> b!4789069 m!5768634))

(declare-fun m!5768636 () Bool)

(assert (=> b!4789069 m!5768636))

(declare-fun m!5768638 () Bool)

(assert (=> b!4789069 m!5768638))

(assert (=> b!4789069 m!5768610))

(assert (=> b!4789069 m!5768632))

(declare-fun m!5768640 () Bool)

(assert (=> b!4789069 m!5768640))

(check-sat (not b!4789062) (not b!4789067) tp_is_empty!33419 (not start!492814) (not b!4789064) (not b!4789066) tp_is_empty!33417 (not b!4789063) (not b!4789069) (not b!4789059) (not b!4789061) (not b!4789058) (not b!4789070))
(check-sat)
