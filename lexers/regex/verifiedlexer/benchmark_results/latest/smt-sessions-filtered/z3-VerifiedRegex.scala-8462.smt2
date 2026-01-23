; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!439488 () Bool)

(assert start!439488)

(declare-fun b!4471184 () Bool)

(declare-fun e!2784277 () Bool)

(declare-fun e!2784268 () Bool)

(assert (=> b!4471184 (= e!2784277 e!2784268)))

(declare-fun res!1855136 () Bool)

(assert (=> b!4471184 (=> res!1855136 e!2784268)))

(declare-datatypes ((K!11715 0))(
  ( (K!11716 (val!17643 Int)) )
))
(declare-datatypes ((V!11961 0))(
  ( (V!11962 (val!17644 Int)) )
))
(declare-datatypes ((tuple2!50554 0))(
  ( (tuple2!50555 (_1!28571 K!11715) (_2!28571 V!11961)) )
))
(declare-datatypes ((List!50426 0))(
  ( (Nil!50302) (Cons!50302 (h!56071 tuple2!50554) (t!357376 List!50426)) )
))
(declare-datatypes ((ListMap!3329 0))(
  ( (ListMap!3330 (toList!4067 List!50426)) )
))
(declare-fun lt!1659603 () ListMap!3329)

(declare-datatypes ((tuple2!50556 0))(
  ( (tuple2!50557 (_1!28572 (_ BitVec 64)) (_2!28572 List!50426)) )
))
(declare-datatypes ((List!50427 0))(
  ( (Nil!50303) (Cons!50303 (h!56072 tuple2!50556) (t!357377 List!50427)) )
))
(declare-datatypes ((ListLongMap!2699 0))(
  ( (ListLongMap!2700 (toList!4068 List!50427)) )
))
(declare-fun lm!1477 () ListLongMap!2699)

(declare-fun extractMap!1086 (List!50427) ListMap!3329)

(assert (=> b!4471184 (= res!1855136 (not (= lt!1659603 (extractMap!1086 (t!357377 (toList!4068 lm!1477))))))))

(declare-fun lt!1659599 () ListLongMap!2699)

(assert (=> b!4471184 (= lt!1659603 (extractMap!1086 (toList!4068 lt!1659599)))))

(declare-fun b!4471185 () Bool)

(declare-fun e!2784267 () Bool)

(assert (=> b!4471185 (= e!2784267 e!2784277)))

(declare-fun res!1855141 () Bool)

(assert (=> b!4471185 (=> res!1855141 e!2784277)))

(declare-fun lt!1659612 () ListLongMap!2699)

(declare-fun lt!1659607 () tuple2!50556)

(declare-fun +!1376 (ListLongMap!2699 tuple2!50556) ListLongMap!2699)

(assert (=> b!4471185 (= res!1855141 (not (= lt!1659612 (+!1376 lt!1659599 lt!1659607))))))

(declare-fun tail!7512 (ListLongMap!2699) ListLongMap!2699)

(assert (=> b!4471185 (= lt!1659599 (tail!7512 lm!1477))))

(declare-fun b!4471186 () Bool)

(declare-fun res!1855130 () Bool)

(declare-fun e!2784273 () Bool)

(assert (=> b!4471186 (=> (not res!1855130) (not e!2784273))))

(declare-fun key!3287 () K!11715)

(declare-fun contains!12861 (ListMap!3329 K!11715) Bool)

(assert (=> b!4471186 (= res!1855130 (contains!12861 (extractMap!1086 (toList!4068 lm!1477)) key!3287))))

(declare-fun b!4471187 () Bool)

(declare-datatypes ((Unit!88007 0))(
  ( (Unit!88008) )
))
(declare-fun e!2784271 () Unit!88007)

(declare-fun Unit!88009 () Unit!88007)

(assert (=> b!4471187 (= e!2784271 Unit!88009)))

(declare-datatypes ((Hashable!5425 0))(
  ( (HashableExt!5424 (__x!31128 Int)) )
))
(declare-fun hashF!1107 () Hashable!5425)

(declare-fun lt!1659609 () Unit!88007)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!30 (ListLongMap!2699 K!11715 Hashable!5425) Unit!88007)

(assert (=> b!4471187 (= lt!1659609 (lemmaNotInItsHashBucketThenNotInMap!30 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4471187 false))

(declare-fun b!4471188 () Bool)

(declare-fun e!2784269 () Bool)

(declare-fun e!2784276 () Bool)

(assert (=> b!4471188 (= e!2784269 (not e!2784276))))

(declare-fun res!1855138 () Bool)

(assert (=> b!4471188 (=> res!1855138 e!2784276)))

(declare-fun lt!1659604 () List!50426)

(declare-fun newBucket!178 () List!50426)

(declare-fun removePairForKey!657 (List!50426 K!11715) List!50426)

(assert (=> b!4471188 (= res!1855138 (not (= newBucket!178 (removePairForKey!657 lt!1659604 key!3287))))))

(declare-fun lt!1659600 () tuple2!50556)

(declare-fun lambda!163617 () Int)

(declare-fun lt!1659602 () Unit!88007)

(declare-fun forallContained!2271 (List!50427 Int tuple2!50556) Unit!88007)

(assert (=> b!4471188 (= lt!1659602 (forallContained!2271 (toList!4068 lm!1477) lambda!163617 lt!1659600))))

(declare-fun contains!12862 (List!50427 tuple2!50556) Bool)

(assert (=> b!4471188 (contains!12862 (toList!4068 lm!1477) lt!1659600)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4471188 (= lt!1659600 (tuple2!50557 hash!344 lt!1659604))))

(declare-fun lt!1659601 () Unit!88007)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!542 (List!50427 (_ BitVec 64) List!50426) Unit!88007)

(assert (=> b!4471188 (= lt!1659601 (lemmaGetValueByKeyImpliesContainsTuple!542 (toList!4068 lm!1477) hash!344 lt!1659604))))

(declare-fun apply!11767 (ListLongMap!2699 (_ BitVec 64)) List!50426)

(assert (=> b!4471188 (= lt!1659604 (apply!11767 lm!1477 hash!344))))

(declare-fun lt!1659598 () (_ BitVec 64))

(declare-fun contains!12863 (ListLongMap!2699 (_ BitVec 64)) Bool)

(assert (=> b!4471188 (contains!12863 lm!1477 lt!1659598)))

(declare-fun lt!1659608 () Unit!88007)

(declare-fun lemmaInGenMapThenLongMapContainsHash!104 (ListLongMap!2699 K!11715 Hashable!5425) Unit!88007)

(assert (=> b!4471188 (= lt!1659608 (lemmaInGenMapThenLongMapContainsHash!104 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4471189 () Bool)

(declare-fun e!2784270 () Bool)

(declare-fun tp!1336330 () Bool)

(assert (=> b!4471189 (= e!2784270 tp!1336330)))

(declare-fun b!4471190 () Bool)

(declare-fun Unit!88010 () Unit!88007)

(assert (=> b!4471190 (= e!2784271 Unit!88010)))

(declare-fun b!4471191 () Bool)

(declare-fun e!2784275 () Bool)

(assert (=> b!4471191 (= e!2784275 e!2784267)))

(declare-fun res!1855127 () Bool)

(assert (=> b!4471191 (=> res!1855127 e!2784267)))

(declare-fun tail!7513 (List!50427) List!50427)

(assert (=> b!4471191 (= res!1855127 (not (= (t!357377 (toList!4068 lm!1477)) (tail!7513 (toList!4068 lt!1659612)))))))

(assert (=> b!4471191 (= lt!1659612 (+!1376 lm!1477 lt!1659607))))

(declare-fun eq!523 (ListMap!3329 ListMap!3329) Bool)

(declare-fun -!292 (ListMap!3329 K!11715) ListMap!3329)

(assert (=> b!4471191 (eq!523 (extractMap!1086 (Cons!50303 lt!1659607 Nil!50303)) (-!292 (extractMap!1086 (Cons!50303 (tuple2!50557 hash!344 (_2!28572 (h!56072 (toList!4068 lm!1477)))) Nil!50303)) key!3287))))

(assert (=> b!4471191 (= lt!1659607 (tuple2!50557 hash!344 newBucket!178))))

(declare-fun lt!1659611 () Unit!88007)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!22 ((_ BitVec 64) List!50426 List!50426 K!11715 Hashable!5425) Unit!88007)

(assert (=> b!4471191 (= lt!1659611 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!22 hash!344 (_2!28572 (h!56072 (toList!4068 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun lt!1659606 () List!50427)

(assert (=> b!4471191 (contains!12861 (extractMap!1086 lt!1659606) key!3287)))

(declare-fun lt!1659597 () Unit!88007)

(declare-fun lemmaListContainsThenExtractedMapContains!26 (ListLongMap!2699 K!11715 Hashable!5425) Unit!88007)

(assert (=> b!4471191 (= lt!1659597 (lemmaListContainsThenExtractedMapContains!26 (ListLongMap!2700 lt!1659606) key!3287 hashF!1107))))

(declare-fun b!4471192 () Bool)

(declare-fun res!1855129 () Bool)

(assert (=> b!4471192 (=> res!1855129 e!2784268)))

(declare-fun allKeysSameHashInMap!1137 (ListLongMap!2699 Hashable!5425) Bool)

(assert (=> b!4471192 (= res!1855129 (not (allKeysSameHashInMap!1137 lt!1659599 hashF!1107)))))

(declare-fun b!4471193 () Bool)

(declare-fun res!1855135 () Bool)

(assert (=> b!4471193 (=> (not res!1855135) (not e!2784269))))

(declare-fun allKeysSameHash!884 (List!50426 (_ BitVec 64) Hashable!5425) Bool)

(assert (=> b!4471193 (= res!1855135 (allKeysSameHash!884 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4471195 () Bool)

(declare-fun e!2784274 () Bool)

(assert (=> b!4471195 (= e!2784276 e!2784274)))

(declare-fun res!1855128 () Bool)

(assert (=> b!4471195 (=> res!1855128 e!2784274)))

(declare-fun lt!1659605 () Bool)

(assert (=> b!4471195 (= res!1855128 lt!1659605)))

(declare-fun lt!1659610 () Unit!88007)

(assert (=> b!4471195 (= lt!1659610 e!2784271)))

(declare-fun c!761284 () Bool)

(assert (=> b!4471195 (= c!761284 lt!1659605)))

(declare-fun containsKey!1486 (List!50426 K!11715) Bool)

(assert (=> b!4471195 (= lt!1659605 (not (containsKey!1486 (_2!28572 (h!56072 (toList!4068 lm!1477))) key!3287)))))

(declare-fun b!4471194 () Bool)

(declare-fun res!1855137 () Bool)

(assert (=> b!4471194 (=> res!1855137 e!2784268)))

(assert (=> b!4471194 (= res!1855137 (not (contains!12861 lt!1659603 key!3287)))))

(declare-fun res!1855140 () Bool)

(assert (=> start!439488 (=> (not res!1855140) (not e!2784273))))

(declare-fun forall!10004 (List!50427 Int) Bool)

(assert (=> start!439488 (= res!1855140 (forall!10004 (toList!4068 lm!1477) lambda!163617))))

(assert (=> start!439488 e!2784273))

(assert (=> start!439488 true))

(declare-fun inv!65899 (ListLongMap!2699) Bool)

(assert (=> start!439488 (and (inv!65899 lm!1477) e!2784270)))

(declare-fun tp_is_empty!27397 () Bool)

(assert (=> start!439488 tp_is_empty!27397))

(declare-fun e!2784272 () Bool)

(assert (=> start!439488 e!2784272))

(declare-fun b!4471196 () Bool)

(declare-fun res!1855126 () Bool)

(assert (=> b!4471196 (=> res!1855126 e!2784276)))

(get-info :version)

(assert (=> b!4471196 (= res!1855126 (or ((_ is Nil!50303) (toList!4068 lm!1477)) (not (= (_1!28572 (h!56072 (toList!4068 lm!1477))) hash!344))))))

(declare-fun b!4471197 () Bool)

(declare-fun res!1855131 () Bool)

(assert (=> b!4471197 (=> res!1855131 e!2784268)))

(assert (=> b!4471197 (= res!1855131 (not (forall!10004 (toList!4068 lt!1659599) lambda!163617)))))

(declare-fun b!4471198 () Bool)

(assert (=> b!4471198 (= e!2784268 (forall!10004 (toList!4068 lt!1659599) lambda!163617))))

(declare-fun b!4471199 () Bool)

(declare-fun res!1855132 () Bool)

(assert (=> b!4471199 (=> (not res!1855132) (not e!2784273))))

(assert (=> b!4471199 (= res!1855132 (allKeysSameHashInMap!1137 lm!1477 hashF!1107))))

(declare-fun b!4471200 () Bool)

(declare-fun tp!1336331 () Bool)

(declare-fun tp_is_empty!27399 () Bool)

(assert (=> b!4471200 (= e!2784272 (and tp_is_empty!27397 tp_is_empty!27399 tp!1336331))))

(declare-fun b!4471201 () Bool)

(assert (=> b!4471201 (= e!2784274 e!2784275)))

(declare-fun res!1855134 () Bool)

(assert (=> b!4471201 (=> res!1855134 e!2784275)))

(declare-fun containsKeyBiggerList!30 (List!50427 K!11715) Bool)

(assert (=> b!4471201 (= res!1855134 (not (containsKeyBiggerList!30 lt!1659606 key!3287)))))

(assert (=> b!4471201 (= lt!1659606 (Cons!50303 (h!56072 (toList!4068 lm!1477)) Nil!50303))))

(declare-fun b!4471202 () Bool)

(declare-fun res!1855133 () Bool)

(assert (=> b!4471202 (=> res!1855133 e!2784276)))

(declare-fun noDuplicateKeys!1030 (List!50426) Bool)

(assert (=> b!4471202 (= res!1855133 (not (noDuplicateKeys!1030 newBucket!178)))))

(declare-fun b!4471203 () Bool)

(assert (=> b!4471203 (= e!2784273 e!2784269)))

(declare-fun res!1855139 () Bool)

(assert (=> b!4471203 (=> (not res!1855139) (not e!2784269))))

(assert (=> b!4471203 (= res!1855139 (= lt!1659598 hash!344))))

(declare-fun hash!2467 (Hashable!5425 K!11715) (_ BitVec 64))

(assert (=> b!4471203 (= lt!1659598 (hash!2467 hashF!1107 key!3287))))

(assert (= (and start!439488 res!1855140) b!4471199))

(assert (= (and b!4471199 res!1855132) b!4471186))

(assert (= (and b!4471186 res!1855130) b!4471203))

(assert (= (and b!4471203 res!1855139) b!4471193))

(assert (= (and b!4471193 res!1855135) b!4471188))

(assert (= (and b!4471188 (not res!1855138)) b!4471202))

(assert (= (and b!4471202 (not res!1855133)) b!4471196))

(assert (= (and b!4471196 (not res!1855126)) b!4471195))

(assert (= (and b!4471195 c!761284) b!4471187))

(assert (= (and b!4471195 (not c!761284)) b!4471190))

(assert (= (and b!4471195 (not res!1855128)) b!4471201))

(assert (= (and b!4471201 (not res!1855134)) b!4471191))

(assert (= (and b!4471191 (not res!1855127)) b!4471185))

(assert (= (and b!4471185 (not res!1855141)) b!4471184))

(assert (= (and b!4471184 (not res!1855136)) b!4471194))

(assert (= (and b!4471194 (not res!1855137)) b!4471197))

(assert (= (and b!4471197 (not res!1855131)) b!4471192))

(assert (= (and b!4471192 (not res!1855129)) b!4471198))

(assert (= start!439488 b!4471189))

(assert (= (and start!439488 ((_ is Cons!50302) newBucket!178)) b!4471200))

(declare-fun m!5179143 () Bool)

(assert (=> b!4471201 m!5179143))

(declare-fun m!5179145 () Bool)

(assert (=> b!4471188 m!5179145))

(declare-fun m!5179147 () Bool)

(assert (=> b!4471188 m!5179147))

(declare-fun m!5179149 () Bool)

(assert (=> b!4471188 m!5179149))

(declare-fun m!5179151 () Bool)

(assert (=> b!4471188 m!5179151))

(declare-fun m!5179153 () Bool)

(assert (=> b!4471188 m!5179153))

(declare-fun m!5179155 () Bool)

(assert (=> b!4471188 m!5179155))

(declare-fun m!5179157 () Bool)

(assert (=> b!4471188 m!5179157))

(declare-fun m!5179159 () Bool)

(assert (=> b!4471184 m!5179159))

(declare-fun m!5179161 () Bool)

(assert (=> b!4471184 m!5179161))

(declare-fun m!5179163 () Bool)

(assert (=> b!4471198 m!5179163))

(declare-fun m!5179165 () Bool)

(assert (=> b!4471192 m!5179165))

(assert (=> b!4471197 m!5179163))

(declare-fun m!5179167 () Bool)

(assert (=> b!4471195 m!5179167))

(declare-fun m!5179169 () Bool)

(assert (=> b!4471194 m!5179169))

(declare-fun m!5179171 () Bool)

(assert (=> b!4471202 m!5179171))

(declare-fun m!5179173 () Bool)

(assert (=> start!439488 m!5179173))

(declare-fun m!5179175 () Bool)

(assert (=> start!439488 m!5179175))

(declare-fun m!5179177 () Bool)

(assert (=> b!4471191 m!5179177))

(declare-fun m!5179179 () Bool)

(assert (=> b!4471191 m!5179179))

(declare-fun m!5179181 () Bool)

(assert (=> b!4471191 m!5179181))

(declare-fun m!5179183 () Bool)

(assert (=> b!4471191 m!5179183))

(declare-fun m!5179185 () Bool)

(assert (=> b!4471191 m!5179185))

(declare-fun m!5179187 () Bool)

(assert (=> b!4471191 m!5179187))

(declare-fun m!5179189 () Bool)

(assert (=> b!4471191 m!5179189))

(assert (=> b!4471191 m!5179177))

(declare-fun m!5179191 () Bool)

(assert (=> b!4471191 m!5179191))

(assert (=> b!4471191 m!5179183))

(assert (=> b!4471191 m!5179179))

(declare-fun m!5179193 () Bool)

(assert (=> b!4471191 m!5179193))

(assert (=> b!4471191 m!5179187))

(declare-fun m!5179195 () Bool)

(assert (=> b!4471191 m!5179195))

(declare-fun m!5179197 () Bool)

(assert (=> b!4471185 m!5179197))

(declare-fun m!5179199 () Bool)

(assert (=> b!4471185 m!5179199))

(declare-fun m!5179201 () Bool)

(assert (=> b!4471193 m!5179201))

(declare-fun m!5179203 () Bool)

(assert (=> b!4471199 m!5179203))

(declare-fun m!5179205 () Bool)

(assert (=> b!4471203 m!5179205))

(declare-fun m!5179207 () Bool)

(assert (=> b!4471187 m!5179207))

(declare-fun m!5179209 () Bool)

(assert (=> b!4471186 m!5179209))

(assert (=> b!4471186 m!5179209))

(declare-fun m!5179211 () Bool)

(assert (=> b!4471186 m!5179211))

(check-sat (not b!4471194) (not b!4471200) (not b!4471185) (not b!4471187) (not b!4471193) (not b!4471199) (not b!4471195) (not b!4471203) tp_is_empty!27397 (not b!4471186) (not b!4471188) (not b!4471197) (not b!4471202) (not b!4471191) (not b!4471192) (not b!4471201) (not b!4471198) (not start!439488) (not b!4471189) tp_is_empty!27399 (not b!4471184))
(check-sat)
