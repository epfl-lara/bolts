; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!449928 () Bool)

(assert start!449928)

(declare-fun bs!871486 () Bool)

(declare-fun b!4535199 () Bool)

(assert (= bs!871486 (and b!4535199 start!449928)))

(declare-fun lambda!175214 () Int)

(declare-fun lambda!175213 () Int)

(assert (=> bs!871486 (not (= lambda!175214 lambda!175213))))

(assert (=> b!4535199 true))

(assert (=> b!4535199 true))

(assert (=> b!4535199 true))

(declare-fun b!4535170 () Bool)

(declare-fun e!2825959 () Bool)

(declare-fun e!2825954 () Bool)

(assert (=> b!4535170 (= e!2825959 e!2825954)))

(declare-fun res!1889434 () Bool)

(assert (=> b!4535170 (=> res!1889434 e!2825954)))

(declare-datatypes ((K!12120 0))(
  ( (K!12121 (val!17967 Int)) )
))
(declare-datatypes ((V!12366 0))(
  ( (V!12367 (val!17968 Int)) )
))
(declare-datatypes ((tuple2!51202 0))(
  ( (tuple2!51203 (_1!28895 K!12120) (_2!28895 V!12366)) )
))
(declare-datatypes ((List!50856 0))(
  ( (Nil!50732) (Cons!50732 (h!56607 tuple2!51202) (t!357818 List!50856)) )
))
(declare-datatypes ((ListMap!3653 0))(
  ( (ListMap!3654 (toList!4391 List!50856)) )
))
(declare-fun lt!1710422 () ListMap!3653)

(declare-fun lt!1710442 () ListMap!3653)

(declare-fun eq!649 (ListMap!3653 ListMap!3653) Bool)

(assert (=> b!4535170 (= res!1889434 (not (eq!649 lt!1710422 lt!1710442)))))

(assert (=> b!4535170 (= lt!1710422 lt!1710442)))

(declare-fun lt!1710448 () ListMap!3653)

(declare-datatypes ((tuple2!51204 0))(
  ( (tuple2!51205 (_1!28896 (_ BitVec 64)) (_2!28896 List!50856)) )
))
(declare-fun lt!1710445 () tuple2!51204)

(declare-fun key!3287 () K!12120)

(declare-fun -!418 (ListMap!3653 K!12120) ListMap!3653)

(declare-fun addToMapMapFromBucket!719 (List!50856 ListMap!3653) ListMap!3653)

(assert (=> b!4535170 (= lt!1710442 (-!418 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448) key!3287))))

(declare-datatypes ((Unit!97630 0))(
  ( (Unit!97631) )
))
(declare-fun lt!1710437 () Unit!97630)

(declare-fun lemmaAddToMapFromBucketMinusKeyIsCommutative!16 (ListMap!3653 K!12120 List!50856) Unit!97630)

(assert (=> b!4535170 (= lt!1710437 (lemmaAddToMapFromBucketMinusKeyIsCommutative!16 lt!1710448 key!3287 (_2!28896 lt!1710445)))))

(declare-fun b!4535171 () Bool)

(declare-fun res!1889443 () Bool)

(declare-fun e!2825953 () Bool)

(assert (=> b!4535171 (=> res!1889443 e!2825953)))

(declare-fun lt!1710434 () List!50856)

(declare-datatypes ((List!50857 0))(
  ( (Nil!50733) (Cons!50733 (h!56608 tuple2!51204) (t!357819 List!50857)) )
))
(declare-datatypes ((ListLongMap!3023 0))(
  ( (ListLongMap!3024 (toList!4392 List!50857)) )
))
(declare-fun lt!1710421 () ListLongMap!3023)

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun apply!11929 (ListLongMap!3023 (_ BitVec 64)) List!50856)

(assert (=> b!4535171 (= res!1889443 (not (= (apply!11929 lt!1710421 hash!344) lt!1710434)))))

(declare-fun b!4535172 () Bool)

(declare-fun res!1889422 () Bool)

(declare-fun e!2825964 () Bool)

(assert (=> b!4535172 (=> res!1889422 e!2825964)))

(declare-fun newBucket!178 () List!50856)

(declare-fun noDuplicateKeys!1192 (List!50856) Bool)

(assert (=> b!4535172 (= res!1889422 (not (noDuplicateKeys!1192 newBucket!178)))))

(declare-fun b!4535173 () Bool)

(declare-fun res!1889433 () Bool)

(declare-fun e!2825969 () Bool)

(assert (=> b!4535173 (=> res!1889433 e!2825969)))

(assert (=> b!4535173 (= res!1889433 (bvsge (_1!28896 lt!1710445) hash!344))))

(declare-fun b!4535174 () Bool)

(declare-fun res!1889423 () Bool)

(declare-fun e!2825955 () Bool)

(assert (=> b!4535174 (=> (not res!1889423) (not e!2825955))))

(declare-fun lm!1477 () ListLongMap!3023)

(declare-datatypes ((Hashable!5587 0))(
  ( (HashableExt!5586 (__x!31290 Int)) )
))
(declare-fun hashF!1107 () Hashable!5587)

(declare-fun allKeysSameHashInMap!1299 (ListLongMap!3023 Hashable!5587) Bool)

(assert (=> b!4535174 (= res!1889423 (allKeysSameHashInMap!1299 lm!1477 hashF!1107))))

(declare-fun b!4535175 () Bool)

(declare-fun e!2825965 () Bool)

(declare-fun e!2825957 () Bool)

(assert (=> b!4535175 (= e!2825965 e!2825957)))

(declare-fun res!1889428 () Bool)

(assert (=> b!4535175 (=> res!1889428 e!2825957)))

(declare-fun lt!1710439 () ListMap!3653)

(assert (=> b!4535175 (= res!1889428 (not (eq!649 lt!1710439 lt!1710422)))))

(declare-fun lt!1710430 () ListMap!3653)

(assert (=> b!4535175 (eq!649 lt!1710430 lt!1710422)))

(declare-fun lt!1710429 () ListMap!3653)

(assert (=> b!4535175 (= lt!1710422 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710429))))

(declare-fun lt!1710415 () ListMap!3653)

(declare-fun lt!1710428 () Unit!97630)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!68 (ListMap!3653 ListMap!3653 List!50856) Unit!97630)

(assert (=> b!4535175 (= lt!1710428 (lemmaAddToMapFromBucketPreservesEquivalence!68 lt!1710415 lt!1710429 (_2!28896 lt!1710445)))))

(declare-fun b!4535176 () Bool)

(declare-fun res!1889421 () Bool)

(assert (=> b!4535176 (=> res!1889421 e!2825954)))

(declare-fun lt!1710447 () ListMap!3653)

(assert (=> b!4535176 (= res!1889421 (not (eq!649 lt!1710422 (-!418 lt!1710447 key!3287))))))

(declare-fun b!4535177 () Bool)

(declare-fun e!2825971 () Bool)

(assert (=> b!4535177 (= e!2825971 (not e!2825964))))

(declare-fun res!1889444 () Bool)

(assert (=> b!4535177 (=> res!1889444 e!2825964)))

(declare-fun removePairForKey!819 (List!50856 K!12120) List!50856)

(assert (=> b!4535177 (= res!1889444 (not (= newBucket!178 (removePairForKey!819 lt!1710434 key!3287))))))

(declare-fun lt!1710433 () Unit!97630)

(declare-fun lt!1710441 () tuple2!51204)

(declare-fun forallContained!2590 (List!50857 Int tuple2!51204) Unit!97630)

(assert (=> b!4535177 (= lt!1710433 (forallContained!2590 (toList!4392 lm!1477) lambda!175213 lt!1710441))))

(declare-fun contains!13511 (List!50857 tuple2!51204) Bool)

(assert (=> b!4535177 (contains!13511 (toList!4392 lm!1477) lt!1710441)))

(assert (=> b!4535177 (= lt!1710441 (tuple2!51205 hash!344 lt!1710434))))

(declare-fun lt!1710418 () Unit!97630)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!704 (List!50857 (_ BitVec 64) List!50856) Unit!97630)

(assert (=> b!4535177 (= lt!1710418 (lemmaGetValueByKeyImpliesContainsTuple!704 (toList!4392 lm!1477) hash!344 lt!1710434))))

(assert (=> b!4535177 (= lt!1710434 (apply!11929 lm!1477 hash!344))))

(declare-fun lt!1710423 () (_ BitVec 64))

(declare-fun contains!13512 (ListLongMap!3023 (_ BitVec 64)) Bool)

(assert (=> b!4535177 (contains!13512 lm!1477 lt!1710423)))

(declare-fun lt!1710436 () Unit!97630)

(declare-fun lemmaInGenMapThenLongMapContainsHash!266 (ListLongMap!3023 K!12120 Hashable!5587) Unit!97630)

(assert (=> b!4535177 (= lt!1710436 (lemmaInGenMapThenLongMapContainsHash!266 lm!1477 key!3287 hashF!1107))))

(declare-fun res!1889437 () Bool)

(assert (=> start!449928 (=> (not res!1889437) (not e!2825955))))

(declare-fun forall!10329 (List!50857 Int) Bool)

(assert (=> start!449928 (= res!1889437 (forall!10329 (toList!4392 lm!1477) lambda!175213))))

(assert (=> start!449928 e!2825955))

(assert (=> start!449928 true))

(declare-fun e!2825956 () Bool)

(declare-fun inv!66304 (ListLongMap!3023) Bool)

(assert (=> start!449928 (and (inv!66304 lm!1477) e!2825956)))

(declare-fun tp_is_empty!28045 () Bool)

(assert (=> start!449928 tp_is_empty!28045))

(declare-fun e!2825970 () Bool)

(assert (=> start!449928 e!2825970))

(declare-fun b!4535178 () Bool)

(declare-fun res!1889432 () Bool)

(assert (=> b!4535178 (=> res!1889432 e!2825964)))

(get-info :version)

(assert (=> b!4535178 (= res!1889432 (or ((_ is Nil!50733) (toList!4392 lm!1477)) (= (_1!28896 (h!56608 (toList!4392 lm!1477))) hash!344)))))

(declare-fun b!4535179 () Bool)

(declare-fun e!2825962 () Bool)

(assert (=> b!4535179 (= e!2825969 e!2825962)))

(declare-fun res!1889420 () Bool)

(assert (=> b!4535179 (=> res!1889420 e!2825962)))

(declare-fun lt!1710440 () ListLongMap!3023)

(declare-fun lt!1710425 () tuple2!51204)

(declare-fun +!1592 (ListLongMap!3023 tuple2!51204) ListLongMap!3023)

(assert (=> b!4535179 (= res!1889420 (not (= lt!1710440 (+!1592 lm!1477 lt!1710425))))))

(declare-fun lt!1710432 () ListLongMap!3023)

(assert (=> b!4535179 (= lt!1710440 (+!1592 lt!1710432 lt!1710445))))

(declare-fun b!4535180 () Bool)

(declare-fun e!2825967 () Unit!97630)

(declare-fun Unit!97632 () Unit!97630)

(assert (=> b!4535180 (= e!2825967 Unit!97632)))

(declare-fun b!4535181 () Bool)

(declare-fun e!2825968 () Bool)

(assert (=> b!4535181 (= e!2825968 e!2825969)))

(declare-fun res!1889438 () Bool)

(assert (=> b!4535181 (=> res!1889438 e!2825969)))

(declare-fun lt!1710443 () ListMap!3653)

(assert (=> b!4535181 (= res!1889438 (not (eq!649 lt!1710443 lt!1710447)))))

(declare-fun extractMap!1248 (List!50857) ListMap!3653)

(assert (=> b!4535181 (= lt!1710443 (extractMap!1248 (toList!4392 (+!1592 lt!1710421 lt!1710445))))))

(declare-fun head!9466 (ListLongMap!3023) tuple2!51204)

(assert (=> b!4535181 (= lt!1710445 (head!9466 lm!1477))))

(assert (=> b!4535181 (eq!649 lt!1710415 lt!1710429)))

(assert (=> b!4535181 (= lt!1710429 (-!418 lt!1710448 key!3287))))

(assert (=> b!4535181 (= lt!1710415 (extractMap!1248 (toList!4392 lt!1710432)))))

(assert (=> b!4535181 (= lt!1710432 (+!1592 lt!1710421 lt!1710425))))

(assert (=> b!4535181 (= lt!1710425 (tuple2!51205 hash!344 newBucket!178))))

(declare-fun lt!1710444 () Unit!97630)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!177 (ListLongMap!3023 (_ BitVec 64) List!50856 K!12120 Hashable!5587) Unit!97630)

(assert (=> b!4535181 (= lt!1710444 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!177 lt!1710421 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4535182 () Bool)

(declare-fun e!2825966 () Unit!97630)

(declare-fun Unit!97633 () Unit!97630)

(assert (=> b!4535182 (= e!2825966 Unit!97633)))

(declare-fun b!4535183 () Bool)

(declare-fun e!2825960 () Bool)

(declare-fun e!2825958 () Bool)

(assert (=> b!4535183 (= e!2825960 e!2825958)))

(declare-fun res!1889427 () Bool)

(assert (=> b!4535183 (=> res!1889427 e!2825958)))

(declare-fun containsKeyBiggerList!172 (List!50857 K!12120) Bool)

(assert (=> b!4535183 (= res!1889427 (not (containsKeyBiggerList!172 (t!357819 (toList!4392 lm!1477)) key!3287)))))

(assert (=> b!4535183 (containsKeyBiggerList!172 (toList!4392 lt!1710421) key!3287)))

(declare-fun lt!1710427 () Unit!97630)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!108 (ListLongMap!3023 K!12120 Hashable!5587) Unit!97630)

(assert (=> b!4535183 (= lt!1710427 (lemmaInLongMapThenContainsKeyBiggerList!108 lt!1710421 key!3287 hashF!1107))))

(declare-fun b!4535184 () Bool)

(assert (=> b!4535184 (= e!2825958 e!2825968)))

(declare-fun res!1889429 () Bool)

(assert (=> b!4535184 (=> res!1889429 e!2825968)))

(declare-fun contains!13513 (ListMap!3653 K!12120) Bool)

(assert (=> b!4535184 (= res!1889429 (not (contains!13513 (extractMap!1248 (t!357819 (toList!4392 lm!1477))) key!3287)))))

(assert (=> b!4535184 (contains!13513 lt!1710448 key!3287)))

(assert (=> b!4535184 (= lt!1710448 (extractMap!1248 (toList!4392 lt!1710421)))))

(declare-fun lt!1710431 () Unit!97630)

(declare-fun lemmaListContainsThenExtractedMapContains!162 (ListLongMap!3023 K!12120 Hashable!5587) Unit!97630)

(assert (=> b!4535184 (= lt!1710431 (lemmaListContainsThenExtractedMapContains!162 lt!1710421 key!3287 hashF!1107))))

(declare-fun b!4535185 () Bool)

(declare-fun tp_is_empty!28047 () Bool)

(declare-fun tp!1338519 () Bool)

(assert (=> b!4535185 (= e!2825970 (and tp_is_empty!28045 tp_is_empty!28047 tp!1338519))))

(declare-fun b!4535186 () Bool)

(declare-fun res!1889431 () Bool)

(assert (=> b!4535186 (=> res!1889431 e!2825969)))

(assert (=> b!4535186 (= res!1889431 (not (eq!649 lt!1710447 lt!1710443)))))

(declare-fun b!4535187 () Bool)

(declare-fun e!2825963 () Bool)

(assert (=> b!4535187 (= e!2825957 e!2825963)))

(declare-fun res!1889424 () Bool)

(assert (=> b!4535187 (=> res!1889424 e!2825963)))

(assert (=> b!4535187 (= res!1889424 (not (noDuplicateKeys!1192 (_2!28896 lt!1710445))))))

(declare-fun lt!1710438 () Unit!97630)

(assert (=> b!4535187 (= lt!1710438 (forallContained!2590 (toList!4392 lm!1477) lambda!175213 (h!56608 (toList!4392 lm!1477))))))

(declare-fun b!4535188 () Bool)

(declare-fun tp!1338518 () Bool)

(assert (=> b!4535188 (= e!2825956 tp!1338518)))

(declare-fun b!4535189 () Bool)

(declare-fun res!1889439 () Bool)

(assert (=> b!4535189 (=> (not res!1889439) (not e!2825971))))

(declare-fun allKeysSameHash!1046 (List!50856 (_ BitVec 64) Hashable!5587) Bool)

(assert (=> b!4535189 (= res!1889439 (allKeysSameHash!1046 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4535190 () Bool)

(declare-fun res!1889435 () Bool)

(assert (=> b!4535190 (=> res!1889435 e!2825962)))

(assert (=> b!4535190 (= res!1889435 (not (= (head!9466 lt!1710440) lt!1710445)))))

(declare-fun b!4535191 () Bool)

(assert (=> b!4535191 (= e!2825963 e!2825959)))

(declare-fun res!1889442 () Bool)

(assert (=> b!4535191 (=> res!1889442 e!2825959)))

(declare-fun lt!1710417 () Bool)

(assert (=> b!4535191 (= res!1889442 lt!1710417)))

(declare-fun lt!1710426 () Unit!97630)

(assert (=> b!4535191 (= lt!1710426 e!2825967)))

(declare-fun c!774437 () Bool)

(assert (=> b!4535191 (= c!774437 lt!1710417)))

(declare-fun containsKey!1856 (List!50856 K!12120) Bool)

(assert (=> b!4535191 (= lt!1710417 (containsKey!1856 (_2!28896 lt!1710445) key!3287))))

(declare-fun b!4535192 () Bool)

(assert (=> b!4535192 (= e!2825964 e!2825953)))

(declare-fun res!1889425 () Bool)

(assert (=> b!4535192 (=> res!1889425 e!2825953)))

(assert (=> b!4535192 (= res!1889425 (not (contains!13512 lt!1710421 hash!344)))))

(declare-fun tail!7788 (ListLongMap!3023) ListLongMap!3023)

(assert (=> b!4535192 (= lt!1710421 (tail!7788 lm!1477))))

(declare-fun b!4535193 () Bool)

(declare-fun isEmpty!28731 (ListLongMap!3023) Bool)

(assert (=> b!4535193 (= e!2825954 (not (isEmpty!28731 lm!1477)))))

(declare-fun b!4535194 () Bool)

(assert (=> b!4535194 (= e!2825953 e!2825960)))

(declare-fun res!1889436 () Bool)

(assert (=> b!4535194 (=> res!1889436 e!2825960)))

(declare-fun lt!1710435 () Bool)

(assert (=> b!4535194 (= res!1889436 lt!1710435)))

(declare-fun lt!1710424 () Unit!97630)

(assert (=> b!4535194 (= lt!1710424 e!2825966)))

(declare-fun c!774436 () Bool)

(assert (=> b!4535194 (= c!774436 lt!1710435)))

(assert (=> b!4535194 (= lt!1710435 (not (containsKey!1856 lt!1710434 key!3287)))))

(declare-fun b!4535195 () Bool)

(declare-fun e!2825961 () Bool)

(assert (=> b!4535195 (= e!2825955 e!2825961)))

(declare-fun res!1889430 () Bool)

(assert (=> b!4535195 (=> (not res!1889430) (not e!2825961))))

(assert (=> b!4535195 (= res!1889430 (contains!13513 lt!1710447 key!3287))))

(assert (=> b!4535195 (= lt!1710447 (extractMap!1248 (toList!4392 lm!1477)))))

(declare-fun b!4535196 () Bool)

(declare-fun Unit!97634 () Unit!97630)

(assert (=> b!4535196 (= e!2825966 Unit!97634)))

(declare-fun lt!1710446 () Unit!97630)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!180 (ListLongMap!3023 K!12120 Hashable!5587) Unit!97630)

(assert (=> b!4535196 (= lt!1710446 (lemmaNotInItsHashBucketThenNotInMap!180 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4535196 false))

(declare-fun b!4535197 () Bool)

(declare-fun res!1889440 () Bool)

(assert (=> b!4535197 (=> res!1889440 e!2825953)))

(assert (=> b!4535197 (= res!1889440 (not (contains!13511 (t!357819 (toList!4392 lm!1477)) lt!1710441)))))

(declare-fun b!4535198 () Bool)

(assert (=> b!4535198 (= e!2825961 e!2825971)))

(declare-fun res!1889441 () Bool)

(assert (=> b!4535198 (=> (not res!1889441) (not e!2825971))))

(assert (=> b!4535198 (= res!1889441 (= lt!1710423 hash!344))))

(declare-fun hash!2895 (Hashable!5587 K!12120) (_ BitVec 64))

(assert (=> b!4535198 (= lt!1710423 (hash!2895 hashF!1107 key!3287))))

(declare-fun Unit!97635 () Unit!97630)

(assert (=> b!4535199 (= e!2825967 Unit!97635)))

(assert (=> b!4535199 (not (= hash!344 (_1!28896 lt!1710445)))))

(declare-datatypes ((Option!11183 0))(
  ( (None!11182) (Some!11182 (v!44856 tuple2!51202)) )
))
(declare-fun lt!1710416 () Option!11183)

(declare-fun getPair!208 (List!50856 K!12120) Option!11183)

(assert (=> b!4535199 (= lt!1710416 (getPair!208 (_2!28896 lt!1710445) key!3287))))

(declare-fun lt!1710419 () Unit!97630)

(assert (=> b!4535199 (= lt!1710419 (forallContained!2590 (toList!4392 lm!1477) lambda!175214 (h!56608 (toList!4392 lm!1477))))))

(declare-fun lambda!175215 () Int)

(declare-fun lt!1710420 () Unit!97630)

(declare-fun forallContained!2591 (List!50856 Int tuple2!51202) Unit!97630)

(declare-fun get!16666 (Option!11183) tuple2!51202)

(assert (=> b!4535199 (= lt!1710420 (forallContained!2591 (_2!28896 (h!56608 (toList!4392 lm!1477))) lambda!175215 (tuple2!51203 key!3287 (_2!28895 (get!16666 lt!1710416)))))))

(assert (=> b!4535199 false))

(declare-fun b!4535200 () Bool)

(assert (=> b!4535200 (= e!2825962 e!2825965)))

(declare-fun res!1889426 () Bool)

(assert (=> b!4535200 (=> res!1889426 e!2825965)))

(assert (=> b!4535200 (= res!1889426 (not (eq!649 lt!1710439 lt!1710430)))))

(assert (=> b!4535200 (= lt!1710430 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710415))))

(assert (=> b!4535200 (= lt!1710439 (extractMap!1248 (toList!4392 lt!1710440)))))

(assert (= (and start!449928 res!1889437) b!4535174))

(assert (= (and b!4535174 res!1889423) b!4535195))

(assert (= (and b!4535195 res!1889430) b!4535198))

(assert (= (and b!4535198 res!1889441) b!4535189))

(assert (= (and b!4535189 res!1889439) b!4535177))

(assert (= (and b!4535177 (not res!1889444)) b!4535172))

(assert (= (and b!4535172 (not res!1889422)) b!4535178))

(assert (= (and b!4535178 (not res!1889432)) b!4535192))

(assert (= (and b!4535192 (not res!1889425)) b!4535171))

(assert (= (and b!4535171 (not res!1889443)) b!4535197))

(assert (= (and b!4535197 (not res!1889440)) b!4535194))

(assert (= (and b!4535194 c!774436) b!4535196))

(assert (= (and b!4535194 (not c!774436)) b!4535182))

(assert (= (and b!4535194 (not res!1889436)) b!4535183))

(assert (= (and b!4535183 (not res!1889427)) b!4535184))

(assert (= (and b!4535184 (not res!1889429)) b!4535181))

(assert (= (and b!4535181 (not res!1889438)) b!4535186))

(assert (= (and b!4535186 (not res!1889431)) b!4535173))

(assert (= (and b!4535173 (not res!1889433)) b!4535179))

(assert (= (and b!4535179 (not res!1889420)) b!4535190))

(assert (= (and b!4535190 (not res!1889435)) b!4535200))

(assert (= (and b!4535200 (not res!1889426)) b!4535175))

(assert (= (and b!4535175 (not res!1889428)) b!4535187))

(assert (= (and b!4535187 (not res!1889424)) b!4535191))

(assert (= (and b!4535191 c!774437) b!4535199))

(assert (= (and b!4535191 (not c!774437)) b!4535180))

(assert (= (and b!4535191 (not res!1889442)) b!4535170))

(assert (= (and b!4535170 (not res!1889434)) b!4535176))

(assert (= (and b!4535176 (not res!1889421)) b!4535193))

(assert (= start!449928 b!4535188))

(assert (= (and start!449928 ((_ is Cons!50732) newBucket!178)) b!4535185))

(declare-fun m!5296529 () Bool)

(assert (=> b!4535177 m!5296529))

(declare-fun m!5296531 () Bool)

(assert (=> b!4535177 m!5296531))

(declare-fun m!5296533 () Bool)

(assert (=> b!4535177 m!5296533))

(declare-fun m!5296535 () Bool)

(assert (=> b!4535177 m!5296535))

(declare-fun m!5296537 () Bool)

(assert (=> b!4535177 m!5296537))

(declare-fun m!5296539 () Bool)

(assert (=> b!4535177 m!5296539))

(declare-fun m!5296541 () Bool)

(assert (=> b!4535177 m!5296541))

(declare-fun m!5296543 () Bool)

(assert (=> b!4535196 m!5296543))

(declare-fun m!5296545 () Bool)

(assert (=> b!4535172 m!5296545))

(declare-fun m!5296547 () Bool)

(assert (=> b!4535195 m!5296547))

(declare-fun m!5296549 () Bool)

(assert (=> b!4535195 m!5296549))

(declare-fun m!5296551 () Bool)

(assert (=> b!4535189 m!5296551))

(declare-fun m!5296553 () Bool)

(assert (=> b!4535194 m!5296553))

(declare-fun m!5296555 () Bool)

(assert (=> b!4535171 m!5296555))

(declare-fun m!5296557 () Bool)

(assert (=> b!4535186 m!5296557))

(declare-fun m!5296559 () Bool)

(assert (=> b!4535191 m!5296559))

(declare-fun m!5296561 () Bool)

(assert (=> b!4535192 m!5296561))

(declare-fun m!5296563 () Bool)

(assert (=> b!4535192 m!5296563))

(declare-fun m!5296565 () Bool)

(assert (=> b!4535175 m!5296565))

(declare-fun m!5296567 () Bool)

(assert (=> b!4535175 m!5296567))

(declare-fun m!5296569 () Bool)

(assert (=> b!4535175 m!5296569))

(declare-fun m!5296571 () Bool)

(assert (=> b!4535175 m!5296571))

(declare-fun m!5296573 () Bool)

(assert (=> b!4535198 m!5296573))

(declare-fun m!5296575 () Bool)

(assert (=> b!4535190 m!5296575))

(declare-fun m!5296577 () Bool)

(assert (=> b!4535181 m!5296577))

(declare-fun m!5296579 () Bool)

(assert (=> b!4535181 m!5296579))

(declare-fun m!5296581 () Bool)

(assert (=> b!4535181 m!5296581))

(declare-fun m!5296583 () Bool)

(assert (=> b!4535181 m!5296583))

(declare-fun m!5296585 () Bool)

(assert (=> b!4535181 m!5296585))

(declare-fun m!5296587 () Bool)

(assert (=> b!4535181 m!5296587))

(declare-fun m!5296589 () Bool)

(assert (=> b!4535181 m!5296589))

(declare-fun m!5296591 () Bool)

(assert (=> b!4535181 m!5296591))

(declare-fun m!5296593 () Bool)

(assert (=> b!4535181 m!5296593))

(declare-fun m!5296595 () Bool)

(assert (=> b!4535183 m!5296595))

(declare-fun m!5296597 () Bool)

(assert (=> b!4535183 m!5296597))

(declare-fun m!5296599 () Bool)

(assert (=> b!4535183 m!5296599))

(declare-fun m!5296601 () Bool)

(assert (=> b!4535174 m!5296601))

(declare-fun m!5296603 () Bool)

(assert (=> b!4535200 m!5296603))

(declare-fun m!5296605 () Bool)

(assert (=> b!4535200 m!5296605))

(declare-fun m!5296607 () Bool)

(assert (=> b!4535200 m!5296607))

(declare-fun m!5296609 () Bool)

(assert (=> b!4535199 m!5296609))

(declare-fun m!5296611 () Bool)

(assert (=> b!4535199 m!5296611))

(declare-fun m!5296613 () Bool)

(assert (=> b!4535199 m!5296613))

(declare-fun m!5296615 () Bool)

(assert (=> b!4535199 m!5296615))

(declare-fun m!5296617 () Bool)

(assert (=> start!449928 m!5296617))

(declare-fun m!5296619 () Bool)

(assert (=> start!449928 m!5296619))

(declare-fun m!5296621 () Bool)

(assert (=> b!4535197 m!5296621))

(declare-fun m!5296623 () Bool)

(assert (=> b!4535187 m!5296623))

(declare-fun m!5296625 () Bool)

(assert (=> b!4535187 m!5296625))

(declare-fun m!5296627 () Bool)

(assert (=> b!4535184 m!5296627))

(declare-fun m!5296629 () Bool)

(assert (=> b!4535184 m!5296629))

(declare-fun m!5296631 () Bool)

(assert (=> b!4535184 m!5296631))

(declare-fun m!5296633 () Bool)

(assert (=> b!4535184 m!5296633))

(assert (=> b!4535184 m!5296629))

(declare-fun m!5296635 () Bool)

(assert (=> b!4535184 m!5296635))

(declare-fun m!5296637 () Bool)

(assert (=> b!4535179 m!5296637))

(declare-fun m!5296639 () Bool)

(assert (=> b!4535179 m!5296639))

(declare-fun m!5296641 () Bool)

(assert (=> b!4535176 m!5296641))

(assert (=> b!4535176 m!5296641))

(declare-fun m!5296643 () Bool)

(assert (=> b!4535176 m!5296643))

(declare-fun m!5296645 () Bool)

(assert (=> b!4535170 m!5296645))

(declare-fun m!5296647 () Bool)

(assert (=> b!4535170 m!5296647))

(assert (=> b!4535170 m!5296647))

(declare-fun m!5296649 () Bool)

(assert (=> b!4535170 m!5296649))

(declare-fun m!5296651 () Bool)

(assert (=> b!4535170 m!5296651))

(declare-fun m!5296653 () Bool)

(assert (=> b!4535193 m!5296653))

(check-sat (not b!4535187) (not b!4535199) (not b!4535189) (not b!4535192) (not b!4535197) (not b!4535181) (not b!4535186) tp_is_empty!28047 (not b!4535184) (not b!4535198) (not start!449928) (not b!4535177) (not b!4535195) (not b!4535193) (not b!4535183) (not b!4535185) (not b!4535174) (not b!4535172) (not b!4535194) (not b!4535196) (not b!4535175) (not b!4535171) (not b!4535190) (not b!4535170) (not b!4535191) (not b!4535179) (not b!4535188) tp_is_empty!28045 (not b!4535176) (not b!4535200))
(check-sat)
(get-model)

(declare-fun d!1400622 () Bool)

(declare-fun res!1889449 () Bool)

(declare-fun e!2825976 () Bool)

(assert (=> d!1400622 (=> res!1889449 e!2825976)))

(assert (=> d!1400622 (= res!1889449 (and ((_ is Cons!50732) (_2!28896 lt!1710445)) (= (_1!28895 (h!56607 (_2!28896 lt!1710445))) key!3287)))))

(assert (=> d!1400622 (= (containsKey!1856 (_2!28896 lt!1710445) key!3287) e!2825976)))

(declare-fun b!4535211 () Bool)

(declare-fun e!2825977 () Bool)

(assert (=> b!4535211 (= e!2825976 e!2825977)))

(declare-fun res!1889450 () Bool)

(assert (=> b!4535211 (=> (not res!1889450) (not e!2825977))))

(assert (=> b!4535211 (= res!1889450 ((_ is Cons!50732) (_2!28896 lt!1710445)))))

(declare-fun b!4535212 () Bool)

(assert (=> b!4535212 (= e!2825977 (containsKey!1856 (t!357818 (_2!28896 lt!1710445)) key!3287))))

(assert (= (and d!1400622 (not res!1889449)) b!4535211))

(assert (= (and b!4535211 res!1889450) b!4535212))

(declare-fun m!5296655 () Bool)

(assert (=> b!4535212 m!5296655))

(assert (=> b!4535191 d!1400622))

(declare-fun d!1400624 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8420 (List!50856) (InoxSet tuple2!51202))

(assert (=> d!1400624 (= (eq!649 lt!1710422 lt!1710442) (= (content!8420 (toList!4391 lt!1710422)) (content!8420 (toList!4391 lt!1710442))))))

(declare-fun bs!871487 () Bool)

(assert (= bs!871487 d!1400624))

(declare-fun m!5296657 () Bool)

(assert (=> bs!871487 m!5296657))

(declare-fun m!5296659 () Bool)

(assert (=> bs!871487 m!5296659))

(assert (=> b!4535170 d!1400624))

(declare-fun d!1400626 () Bool)

(declare-fun e!2825980 () Bool)

(assert (=> d!1400626 e!2825980))

(declare-fun res!1889453 () Bool)

(assert (=> d!1400626 (=> (not res!1889453) (not e!2825980))))

(declare-fun lt!1710451 () ListMap!3653)

(assert (=> d!1400626 (= res!1889453 (not (contains!13513 lt!1710451 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!162 (List!50856 K!12120) List!50856)

(assert (=> d!1400626 (= lt!1710451 (ListMap!3654 (removePresrvNoDuplicatedKeys!162 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448)) key!3287)))))

(assert (=> d!1400626 (= (-!418 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448) key!3287) lt!1710451)))

(declare-fun b!4535215 () Bool)

(declare-datatypes ((List!50859 0))(
  ( (Nil!50735) (Cons!50735 (h!56612 K!12120) (t!357821 List!50859)) )
))
(declare-fun content!8421 (List!50859) (InoxSet K!12120))

(declare-fun keys!17648 (ListMap!3653) List!50859)

(assert (=> b!4535215 (= e!2825980 (= ((_ map and) (content!8421 (keys!17648 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448))) ((_ map not) (store ((as const (Array K!12120 Bool)) false) key!3287 true))) (content!8421 (keys!17648 lt!1710451))))))

(assert (= (and d!1400626 res!1889453) b!4535215))

(declare-fun m!5296661 () Bool)

(assert (=> d!1400626 m!5296661))

(declare-fun m!5296663 () Bool)

(assert (=> d!1400626 m!5296663))

(assert (=> b!4535215 m!5296647))

(declare-fun m!5296665 () Bool)

(assert (=> b!4535215 m!5296665))

(declare-fun m!5296667 () Bool)

(assert (=> b!4535215 m!5296667))

(declare-fun m!5296669 () Bool)

(assert (=> b!4535215 m!5296669))

(declare-fun m!5296671 () Bool)

(assert (=> b!4535215 m!5296671))

(assert (=> b!4535215 m!5296665))

(declare-fun m!5296673 () Bool)

(assert (=> b!4535215 m!5296673))

(assert (=> b!4535215 m!5296669))

(assert (=> b!4535170 d!1400626))

(declare-fun bs!871544 () Bool)

(declare-fun b!4535312 () Bool)

(assert (= bs!871544 (and b!4535312 b!4535199)))

(declare-fun lambda!175265 () Int)

(assert (=> bs!871544 (not (= lambda!175265 lambda!175215))))

(assert (=> b!4535312 true))

(declare-fun bs!871545 () Bool)

(declare-fun b!4535309 () Bool)

(assert (= bs!871545 (and b!4535309 b!4535199)))

(declare-fun lambda!175266 () Int)

(assert (=> bs!871545 (not (= lambda!175266 lambda!175215))))

(declare-fun bs!871546 () Bool)

(assert (= bs!871546 (and b!4535309 b!4535312)))

(assert (=> bs!871546 (= lambda!175266 lambda!175265)))

(assert (=> b!4535309 true))

(declare-fun lambda!175267 () Int)

(assert (=> bs!871545 (not (= lambda!175267 lambda!175215))))

(declare-fun lt!1710578 () ListMap!3653)

(assert (=> bs!871546 (= (= lt!1710578 lt!1710448) (= lambda!175267 lambda!175265))))

(assert (=> b!4535309 (= (= lt!1710578 lt!1710448) (= lambda!175267 lambda!175266))))

(assert (=> b!4535309 true))

(declare-fun bs!871547 () Bool)

(declare-fun d!1400628 () Bool)

(assert (= bs!871547 (and d!1400628 b!4535199)))

(declare-fun lambda!175268 () Int)

(assert (=> bs!871547 (not (= lambda!175268 lambda!175215))))

(declare-fun bs!871548 () Bool)

(assert (= bs!871548 (and d!1400628 b!4535312)))

(declare-fun lt!1710589 () ListMap!3653)

(assert (=> bs!871548 (= (= lt!1710589 lt!1710448) (= lambda!175268 lambda!175265))))

(declare-fun bs!871549 () Bool)

(assert (= bs!871549 (and d!1400628 b!4535309)))

(assert (=> bs!871549 (= (= lt!1710589 lt!1710448) (= lambda!175268 lambda!175266))))

(assert (=> bs!871549 (= (= lt!1710589 lt!1710578) (= lambda!175268 lambda!175267))))

(assert (=> d!1400628 true))

(declare-fun bm!316167 () Bool)

(declare-fun call!316172 () Unit!97630)

(declare-fun lemmaContainsAllItsOwnKeys!359 (ListMap!3653) Unit!97630)

(assert (=> bm!316167 (= call!316172 (lemmaContainsAllItsOwnKeys!359 lt!1710448))))

(declare-fun c!774458 () Bool)

(declare-fun call!316173 () Bool)

(declare-fun bm!316168 () Bool)

(declare-fun forall!10330 (List!50856 Int) Bool)

(assert (=> bm!316168 (= call!316173 (forall!10330 (toList!4391 lt!1710448) (ite c!774458 lambda!175265 lambda!175267)))))

(declare-fun e!2826046 () ListMap!3653)

(assert (=> b!4535309 (= e!2826046 lt!1710578)))

(declare-fun lt!1710580 () ListMap!3653)

(declare-fun +!1593 (ListMap!3653 tuple2!51202) ListMap!3653)

(assert (=> b!4535309 (= lt!1710580 (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))))))

(assert (=> b!4535309 (= lt!1710578 (addToMapMapFromBucket!719 (t!357818 (_2!28896 lt!1710445)) (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun lt!1710591 () Unit!97630)

(assert (=> b!4535309 (= lt!1710591 call!316172)))

(assert (=> b!4535309 (forall!10330 (toList!4391 lt!1710448) lambda!175266)))

(declare-fun lt!1710586 () Unit!97630)

(assert (=> b!4535309 (= lt!1710586 lt!1710591)))

(assert (=> b!4535309 (forall!10330 (toList!4391 lt!1710580) lambda!175267)))

(declare-fun lt!1710581 () Unit!97630)

(declare-fun Unit!97640 () Unit!97630)

(assert (=> b!4535309 (= lt!1710581 Unit!97640)))

(assert (=> b!4535309 (forall!10330 (t!357818 (_2!28896 lt!1710445)) lambda!175267)))

(declare-fun lt!1710583 () Unit!97630)

(declare-fun Unit!97641 () Unit!97630)

(assert (=> b!4535309 (= lt!1710583 Unit!97641)))

(declare-fun lt!1710577 () Unit!97630)

(declare-fun Unit!97642 () Unit!97630)

(assert (=> b!4535309 (= lt!1710577 Unit!97642)))

(declare-fun lt!1710595 () Unit!97630)

(assert (=> b!4535309 (= lt!1710595 (forallContained!2591 (toList!4391 lt!1710580) lambda!175267 (h!56607 (_2!28896 lt!1710445))))))

(assert (=> b!4535309 (contains!13513 lt!1710580 (_1!28895 (h!56607 (_2!28896 lt!1710445))))))

(declare-fun lt!1710575 () Unit!97630)

(declare-fun Unit!97643 () Unit!97630)

(assert (=> b!4535309 (= lt!1710575 Unit!97643)))

(assert (=> b!4535309 (contains!13513 lt!1710578 (_1!28895 (h!56607 (_2!28896 lt!1710445))))))

(declare-fun lt!1710587 () Unit!97630)

(declare-fun Unit!97644 () Unit!97630)

(assert (=> b!4535309 (= lt!1710587 Unit!97644)))

(assert (=> b!4535309 (forall!10330 (_2!28896 lt!1710445) lambda!175267)))

(declare-fun lt!1710590 () Unit!97630)

(declare-fun Unit!97645 () Unit!97630)

(assert (=> b!4535309 (= lt!1710590 Unit!97645)))

(assert (=> b!4535309 (forall!10330 (toList!4391 lt!1710580) lambda!175267)))

(declare-fun lt!1710576 () Unit!97630)

(declare-fun Unit!97646 () Unit!97630)

(assert (=> b!4535309 (= lt!1710576 Unit!97646)))

(declare-fun lt!1710579 () Unit!97630)

(declare-fun Unit!97647 () Unit!97630)

(assert (=> b!4535309 (= lt!1710579 Unit!97647)))

(declare-fun lt!1710592 () Unit!97630)

(declare-fun addForallContainsKeyThenBeforeAdding!359 (ListMap!3653 ListMap!3653 K!12120 V!12366) Unit!97630)

(assert (=> b!4535309 (= lt!1710592 (addForallContainsKeyThenBeforeAdding!359 lt!1710448 lt!1710578 (_1!28895 (h!56607 (_2!28896 lt!1710445))) (_2!28895 (h!56607 (_2!28896 lt!1710445)))))))

(assert (=> b!4535309 (forall!10330 (toList!4391 lt!1710448) lambda!175267)))

(declare-fun lt!1710584 () Unit!97630)

(assert (=> b!4535309 (= lt!1710584 lt!1710592)))

(assert (=> b!4535309 (forall!10330 (toList!4391 lt!1710448) lambda!175267)))

(declare-fun lt!1710582 () Unit!97630)

(declare-fun Unit!97648 () Unit!97630)

(assert (=> b!4535309 (= lt!1710582 Unit!97648)))

(declare-fun res!1889505 () Bool)

(declare-fun call!316174 () Bool)

(assert (=> b!4535309 (= res!1889505 call!316174)))

(declare-fun e!2826045 () Bool)

(assert (=> b!4535309 (=> (not res!1889505) (not e!2826045))))

(assert (=> b!4535309 e!2826045))

(declare-fun lt!1710585 () Unit!97630)

(declare-fun Unit!97649 () Unit!97630)

(assert (=> b!4535309 (= lt!1710585 Unit!97649)))

(declare-fun b!4535310 () Bool)

(declare-fun e!2826044 () Bool)

(declare-fun invariantList!1039 (List!50856) Bool)

(assert (=> b!4535310 (= e!2826044 (invariantList!1039 (toList!4391 lt!1710589)))))

(declare-fun b!4535311 () Bool)

(declare-fun res!1889506 () Bool)

(assert (=> b!4535311 (=> (not res!1889506) (not e!2826044))))

(assert (=> b!4535311 (= res!1889506 (forall!10330 (toList!4391 lt!1710448) lambda!175268))))

(declare-fun bm!316169 () Bool)

(assert (=> bm!316169 (= call!316174 (forall!10330 (ite c!774458 (toList!4391 lt!1710448) (_2!28896 lt!1710445)) (ite c!774458 lambda!175265 lambda!175267)))))

(declare-fun b!4535313 () Bool)

(assert (=> b!4535313 (= e!2826045 call!316173)))

(assert (=> b!4535312 (= e!2826046 lt!1710448)))

(declare-fun lt!1710588 () Unit!97630)

(assert (=> b!4535312 (= lt!1710588 call!316172)))

(assert (=> b!4535312 call!316173))

(declare-fun lt!1710594 () Unit!97630)

(assert (=> b!4535312 (= lt!1710594 lt!1710588)))

(assert (=> b!4535312 call!316174))

(declare-fun lt!1710593 () Unit!97630)

(declare-fun Unit!97650 () Unit!97630)

(assert (=> b!4535312 (= lt!1710593 Unit!97650)))

(assert (=> d!1400628 e!2826044))

(declare-fun res!1889507 () Bool)

(assert (=> d!1400628 (=> (not res!1889507) (not e!2826044))))

(assert (=> d!1400628 (= res!1889507 (forall!10330 (_2!28896 lt!1710445) lambda!175268))))

(assert (=> d!1400628 (= lt!1710589 e!2826046)))

(assert (=> d!1400628 (= c!774458 ((_ is Nil!50732) (_2!28896 lt!1710445)))))

(assert (=> d!1400628 (noDuplicateKeys!1192 (_2!28896 lt!1710445))))

(assert (=> d!1400628 (= (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448) lt!1710589)))

(assert (= (and d!1400628 c!774458) b!4535312))

(assert (= (and d!1400628 (not c!774458)) b!4535309))

(assert (= (and b!4535309 res!1889505) b!4535313))

(assert (= (or b!4535312 b!4535313) bm!316168))

(assert (= (or b!4535312 b!4535309) bm!316169))

(assert (= (or b!4535312 b!4535309) bm!316167))

(assert (= (and d!1400628 res!1889507) b!4535311))

(assert (= (and b!4535311 res!1889506) b!4535310))

(declare-fun m!5296887 () Bool)

(assert (=> b!4535310 m!5296887))

(declare-fun m!5296889 () Bool)

(assert (=> d!1400628 m!5296889))

(assert (=> d!1400628 m!5296623))

(declare-fun m!5296891 () Bool)

(assert (=> bm!316169 m!5296891))

(declare-fun m!5296893 () Bool)

(assert (=> b!4535309 m!5296893))

(declare-fun m!5296895 () Bool)

(assert (=> b!4535309 m!5296895))

(declare-fun m!5296897 () Bool)

(assert (=> b!4535309 m!5296897))

(declare-fun m!5296899 () Bool)

(assert (=> b!4535309 m!5296899))

(declare-fun m!5296901 () Bool)

(assert (=> b!4535309 m!5296901))

(declare-fun m!5296903 () Bool)

(assert (=> b!4535309 m!5296903))

(declare-fun m!5296905 () Bool)

(assert (=> b!4535309 m!5296905))

(assert (=> b!4535309 m!5296893))

(declare-fun m!5296907 () Bool)

(assert (=> b!4535309 m!5296907))

(assert (=> b!4535309 m!5296903))

(declare-fun m!5296909 () Bool)

(assert (=> b!4535309 m!5296909))

(declare-fun m!5296911 () Bool)

(assert (=> b!4535309 m!5296911))

(assert (=> b!4535309 m!5296895))

(declare-fun m!5296913 () Bool)

(assert (=> b!4535309 m!5296913))

(declare-fun m!5296915 () Bool)

(assert (=> bm!316167 m!5296915))

(declare-fun m!5296917 () Bool)

(assert (=> bm!316168 m!5296917))

(declare-fun m!5296919 () Bool)

(assert (=> b!4535311 m!5296919))

(assert (=> b!4535170 d!1400628))

(declare-fun d!1400686 () Bool)

(assert (=> d!1400686 (= (addToMapMapFromBucket!719 (_2!28896 lt!1710445) (-!418 lt!1710448 key!3287)) (-!418 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448) key!3287))))

(declare-fun lt!1710598 () Unit!97630)

(declare-fun choose!29809 (ListMap!3653 K!12120 List!50856) Unit!97630)

(assert (=> d!1400686 (= lt!1710598 (choose!29809 lt!1710448 key!3287 (_2!28896 lt!1710445)))))

(assert (=> d!1400686 (not (containsKey!1856 (_2!28896 lt!1710445) key!3287))))

(assert (=> d!1400686 (= (lemmaAddToMapFromBucketMinusKeyIsCommutative!16 lt!1710448 key!3287 (_2!28896 lt!1710445)) lt!1710598)))

(declare-fun bs!871550 () Bool)

(assert (= bs!871550 d!1400686))

(assert (=> bs!871550 m!5296559))

(assert (=> bs!871550 m!5296593))

(declare-fun m!5296921 () Bool)

(assert (=> bs!871550 m!5296921))

(assert (=> bs!871550 m!5296647))

(assert (=> bs!871550 m!5296647))

(assert (=> bs!871550 m!5296649))

(assert (=> bs!871550 m!5296593))

(declare-fun m!5296923 () Bool)

(assert (=> bs!871550 m!5296923))

(assert (=> b!4535170 d!1400686))

(declare-fun d!1400688 () Bool)

(declare-fun e!2826052 () Bool)

(assert (=> d!1400688 e!2826052))

(declare-fun res!1889510 () Bool)

(assert (=> d!1400688 (=> res!1889510 e!2826052)))

(declare-fun lt!1710609 () Bool)

(assert (=> d!1400688 (= res!1889510 (not lt!1710609))))

(declare-fun lt!1710610 () Bool)

(assert (=> d!1400688 (= lt!1710609 lt!1710610)))

(declare-fun lt!1710608 () Unit!97630)

(declare-fun e!2826051 () Unit!97630)

(assert (=> d!1400688 (= lt!1710608 e!2826051)))

(declare-fun c!774461 () Bool)

(assert (=> d!1400688 (= c!774461 lt!1710610)))

(declare-fun containsKey!1858 (List!50857 (_ BitVec 64)) Bool)

(assert (=> d!1400688 (= lt!1710610 (containsKey!1858 (toList!4392 lt!1710421) hash!344))))

(assert (=> d!1400688 (= (contains!13512 lt!1710421 hash!344) lt!1710609)))

(declare-fun b!4535322 () Bool)

(declare-fun lt!1710607 () Unit!97630)

(assert (=> b!4535322 (= e!2826051 lt!1710607)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1039 (List!50857 (_ BitVec 64)) Unit!97630)

(assert (=> b!4535322 (= lt!1710607 (lemmaContainsKeyImpliesGetValueByKeyDefined!1039 (toList!4392 lt!1710421) hash!344))))

(declare-datatypes ((Option!11186 0))(
  ( (None!11185) (Some!11185 (v!44863 List!50856)) )
))
(declare-fun isDefined!8462 (Option!11186) Bool)

(declare-fun getValueByKey!1136 (List!50857 (_ BitVec 64)) Option!11186)

(assert (=> b!4535322 (isDefined!8462 (getValueByKey!1136 (toList!4392 lt!1710421) hash!344))))

(declare-fun b!4535323 () Bool)

(declare-fun Unit!97651 () Unit!97630)

(assert (=> b!4535323 (= e!2826051 Unit!97651)))

(declare-fun b!4535324 () Bool)

(assert (=> b!4535324 (= e!2826052 (isDefined!8462 (getValueByKey!1136 (toList!4392 lt!1710421) hash!344)))))

(assert (= (and d!1400688 c!774461) b!4535322))

(assert (= (and d!1400688 (not c!774461)) b!4535323))

(assert (= (and d!1400688 (not res!1889510)) b!4535324))

(declare-fun m!5296925 () Bool)

(assert (=> d!1400688 m!5296925))

(declare-fun m!5296927 () Bool)

(assert (=> b!4535322 m!5296927))

(declare-fun m!5296929 () Bool)

(assert (=> b!4535322 m!5296929))

(assert (=> b!4535322 m!5296929))

(declare-fun m!5296931 () Bool)

(assert (=> b!4535322 m!5296931))

(assert (=> b!4535324 m!5296929))

(assert (=> b!4535324 m!5296929))

(assert (=> b!4535324 m!5296931))

(assert (=> b!4535192 d!1400688))

(declare-fun d!1400690 () Bool)

(declare-fun tail!7789 (List!50857) List!50857)

(assert (=> d!1400690 (= (tail!7788 lm!1477) (ListLongMap!3024 (tail!7789 (toList!4392 lm!1477))))))

(declare-fun bs!871551 () Bool)

(assert (= bs!871551 d!1400690))

(declare-fun m!5296933 () Bool)

(assert (=> bs!871551 m!5296933))

(assert (=> b!4535192 d!1400690))

(declare-fun d!1400692 () Bool)

(declare-fun get!16667 (Option!11186) List!50856)

(assert (=> d!1400692 (= (apply!11929 lt!1710421 hash!344) (get!16667 (getValueByKey!1136 (toList!4392 lt!1710421) hash!344)))))

(declare-fun bs!871552 () Bool)

(assert (= bs!871552 d!1400692))

(assert (=> bs!871552 m!5296929))

(assert (=> bs!871552 m!5296929))

(declare-fun m!5296935 () Bool)

(assert (=> bs!871552 m!5296935))

(assert (=> b!4535171 d!1400692))

(declare-fun d!1400694 () Bool)

(declare-fun isEmpty!28732 (List!50857) Bool)

(assert (=> d!1400694 (= (isEmpty!28731 lm!1477) (isEmpty!28732 (toList!4392 lm!1477)))))

(declare-fun bs!871553 () Bool)

(assert (= bs!871553 d!1400694))

(declare-fun m!5296937 () Bool)

(assert (=> bs!871553 m!5296937))

(assert (=> b!4535193 d!1400694))

(declare-fun d!1400696 () Bool)

(declare-fun res!1889515 () Bool)

(declare-fun e!2826057 () Bool)

(assert (=> d!1400696 (=> res!1889515 e!2826057)))

(assert (=> d!1400696 (= res!1889515 (not ((_ is Cons!50732) newBucket!178)))))

(assert (=> d!1400696 (= (noDuplicateKeys!1192 newBucket!178) e!2826057)))

(declare-fun b!4535329 () Bool)

(declare-fun e!2826058 () Bool)

(assert (=> b!4535329 (= e!2826057 e!2826058)))

(declare-fun res!1889516 () Bool)

(assert (=> b!4535329 (=> (not res!1889516) (not e!2826058))))

(assert (=> b!4535329 (= res!1889516 (not (containsKey!1856 (t!357818 newBucket!178) (_1!28895 (h!56607 newBucket!178)))))))

(declare-fun b!4535330 () Bool)

(assert (=> b!4535330 (= e!2826058 (noDuplicateKeys!1192 (t!357818 newBucket!178)))))

(assert (= (and d!1400696 (not res!1889515)) b!4535329))

(assert (= (and b!4535329 res!1889516) b!4535330))

(declare-fun m!5296939 () Bool)

(assert (=> b!4535329 m!5296939))

(declare-fun m!5296941 () Bool)

(assert (=> b!4535330 m!5296941))

(assert (=> b!4535172 d!1400696))

(declare-fun d!1400698 () Bool)

(declare-fun res!1889517 () Bool)

(declare-fun e!2826059 () Bool)

(assert (=> d!1400698 (=> res!1889517 e!2826059)))

(assert (=> d!1400698 (= res!1889517 (and ((_ is Cons!50732) lt!1710434) (= (_1!28895 (h!56607 lt!1710434)) key!3287)))))

(assert (=> d!1400698 (= (containsKey!1856 lt!1710434 key!3287) e!2826059)))

(declare-fun b!4535331 () Bool)

(declare-fun e!2826060 () Bool)

(assert (=> b!4535331 (= e!2826059 e!2826060)))

(declare-fun res!1889518 () Bool)

(assert (=> b!4535331 (=> (not res!1889518) (not e!2826060))))

(assert (=> b!4535331 (= res!1889518 ((_ is Cons!50732) lt!1710434))))

(declare-fun b!4535332 () Bool)

(assert (=> b!4535332 (= e!2826060 (containsKey!1856 (t!357818 lt!1710434) key!3287))))

(assert (= (and d!1400698 (not res!1889517)) b!4535331))

(assert (= (and b!4535331 res!1889518) b!4535332))

(declare-fun m!5296943 () Bool)

(assert (=> b!4535332 m!5296943))

(assert (=> b!4535194 d!1400698))

(declare-fun d!1400700 () Bool)

(declare-fun e!2826079 () Bool)

(assert (=> d!1400700 e!2826079))

(declare-fun res!1889527 () Bool)

(assert (=> d!1400700 (=> res!1889527 e!2826079)))

(declare-fun e!2826081 () Bool)

(assert (=> d!1400700 (= res!1889527 e!2826081)))

(declare-fun res!1889528 () Bool)

(assert (=> d!1400700 (=> (not res!1889528) (not e!2826081))))

(declare-fun lt!1710675 () Bool)

(assert (=> d!1400700 (= res!1889528 (not lt!1710675))))

(declare-fun lt!1710670 () Bool)

(assert (=> d!1400700 (= lt!1710675 lt!1710670)))

(declare-fun lt!1710669 () Unit!97630)

(declare-fun e!2826078 () Unit!97630)

(assert (=> d!1400700 (= lt!1710669 e!2826078)))

(declare-fun c!774470 () Bool)

(assert (=> d!1400700 (= c!774470 lt!1710670)))

(declare-fun containsKey!1859 (List!50856 K!12120) Bool)

(assert (=> d!1400700 (= lt!1710670 (containsKey!1859 (toList!4391 lt!1710447) key!3287))))

(assert (=> d!1400700 (= (contains!13513 lt!1710447 key!3287) lt!1710675)))

(declare-fun b!4535355 () Bool)

(declare-fun lt!1710676 () Unit!97630)

(assert (=> b!4535355 (= e!2826078 lt!1710676)))

(declare-fun lt!1710671 () Unit!97630)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1040 (List!50856 K!12120) Unit!97630)

(assert (=> b!4535355 (= lt!1710671 (lemmaContainsKeyImpliesGetValueByKeyDefined!1040 (toList!4391 lt!1710447) key!3287))))

(declare-datatypes ((Option!11187 0))(
  ( (None!11186) (Some!11186 (v!44864 V!12366)) )
))
(declare-fun isDefined!8463 (Option!11187) Bool)

(declare-fun getValueByKey!1137 (List!50856 K!12120) Option!11187)

(assert (=> b!4535355 (isDefined!8463 (getValueByKey!1137 (toList!4391 lt!1710447) key!3287))))

(declare-fun lt!1710673 () Unit!97630)

(assert (=> b!4535355 (= lt!1710673 lt!1710671)))

(declare-fun lemmaInListThenGetKeysListContains!483 (List!50856 K!12120) Unit!97630)

(assert (=> b!4535355 (= lt!1710676 (lemmaInListThenGetKeysListContains!483 (toList!4391 lt!1710447) key!3287))))

(declare-fun call!316177 () Bool)

(assert (=> b!4535355 call!316177))

(declare-fun b!4535356 () Bool)

(assert (=> b!4535356 false))

(declare-fun lt!1710672 () Unit!97630)

(declare-fun lt!1710674 () Unit!97630)

(assert (=> b!4535356 (= lt!1710672 lt!1710674)))

(assert (=> b!4535356 (containsKey!1859 (toList!4391 lt!1710447) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!486 (List!50856 K!12120) Unit!97630)

(assert (=> b!4535356 (= lt!1710674 (lemmaInGetKeysListThenContainsKey!486 (toList!4391 lt!1710447) key!3287))))

(declare-fun e!2826080 () Unit!97630)

(declare-fun Unit!97652 () Unit!97630)

(assert (=> b!4535356 (= e!2826080 Unit!97652)))

(declare-fun bm!316172 () Bool)

(declare-fun e!2826082 () List!50859)

(declare-fun contains!13515 (List!50859 K!12120) Bool)

(assert (=> bm!316172 (= call!316177 (contains!13515 e!2826082 key!3287))))

(declare-fun c!774472 () Bool)

(assert (=> bm!316172 (= c!774472 c!774470)))

(declare-fun b!4535357 () Bool)

(declare-fun e!2826077 () Bool)

(assert (=> b!4535357 (= e!2826079 e!2826077)))

(declare-fun res!1889529 () Bool)

(assert (=> b!4535357 (=> (not res!1889529) (not e!2826077))))

(assert (=> b!4535357 (= res!1889529 (isDefined!8463 (getValueByKey!1137 (toList!4391 lt!1710447) key!3287)))))

(declare-fun b!4535358 () Bool)

(assert (=> b!4535358 (= e!2826082 (keys!17648 lt!1710447))))

(declare-fun b!4535359 () Bool)

(assert (=> b!4535359 (= e!2826078 e!2826080)))

(declare-fun c!774471 () Bool)

(assert (=> b!4535359 (= c!774471 call!316177)))

(declare-fun b!4535360 () Bool)

(declare-fun Unit!97653 () Unit!97630)

(assert (=> b!4535360 (= e!2826080 Unit!97653)))

(declare-fun b!4535361 () Bool)

(declare-fun getKeysList!487 (List!50856) List!50859)

(assert (=> b!4535361 (= e!2826082 (getKeysList!487 (toList!4391 lt!1710447)))))

(declare-fun b!4535362 () Bool)

(assert (=> b!4535362 (= e!2826077 (contains!13515 (keys!17648 lt!1710447) key!3287))))

(declare-fun b!4535363 () Bool)

(assert (=> b!4535363 (= e!2826081 (not (contains!13515 (keys!17648 lt!1710447) key!3287)))))

(assert (= (and d!1400700 c!774470) b!4535355))

(assert (= (and d!1400700 (not c!774470)) b!4535359))

(assert (= (and b!4535359 c!774471) b!4535356))

(assert (= (and b!4535359 (not c!774471)) b!4535360))

(assert (= (or b!4535355 b!4535359) bm!316172))

(assert (= (and bm!316172 c!774472) b!4535361))

(assert (= (and bm!316172 (not c!774472)) b!4535358))

(assert (= (and d!1400700 res!1889528) b!4535363))

(assert (= (and d!1400700 (not res!1889527)) b!4535357))

(assert (= (and b!4535357 res!1889529) b!4535362))

(declare-fun m!5296945 () Bool)

(assert (=> b!4535362 m!5296945))

(assert (=> b!4535362 m!5296945))

(declare-fun m!5296947 () Bool)

(assert (=> b!4535362 m!5296947))

(declare-fun m!5296949 () Bool)

(assert (=> b!4535356 m!5296949))

(declare-fun m!5296951 () Bool)

(assert (=> b!4535356 m!5296951))

(assert (=> b!4535358 m!5296945))

(assert (=> b!4535363 m!5296945))

(assert (=> b!4535363 m!5296945))

(assert (=> b!4535363 m!5296947))

(declare-fun m!5296953 () Bool)

(assert (=> b!4535357 m!5296953))

(assert (=> b!4535357 m!5296953))

(declare-fun m!5296955 () Bool)

(assert (=> b!4535357 m!5296955))

(declare-fun m!5296957 () Bool)

(assert (=> bm!316172 m!5296957))

(declare-fun m!5296959 () Bool)

(assert (=> b!4535361 m!5296959))

(declare-fun m!5296961 () Bool)

(assert (=> b!4535355 m!5296961))

(assert (=> b!4535355 m!5296953))

(assert (=> b!4535355 m!5296953))

(assert (=> b!4535355 m!5296955))

(declare-fun m!5296963 () Bool)

(assert (=> b!4535355 m!5296963))

(assert (=> d!1400700 m!5296949))

(assert (=> b!4535195 d!1400700))

(declare-fun bs!871561 () Bool)

(declare-fun d!1400702 () Bool)

(assert (= bs!871561 (and d!1400702 start!449928)))

(declare-fun lambda!175303 () Int)

(assert (=> bs!871561 (= lambda!175303 lambda!175213)))

(declare-fun bs!871563 () Bool)

(assert (= bs!871563 (and d!1400702 b!4535199)))

(assert (=> bs!871563 (not (= lambda!175303 lambda!175214))))

(declare-fun lt!1710700 () ListMap!3653)

(assert (=> d!1400702 (invariantList!1039 (toList!4391 lt!1710700))))

(declare-fun e!2826090 () ListMap!3653)

(assert (=> d!1400702 (= lt!1710700 e!2826090)))

(declare-fun c!774476 () Bool)

(assert (=> d!1400702 (= c!774476 ((_ is Cons!50733) (toList!4392 lm!1477)))))

(assert (=> d!1400702 (forall!10329 (toList!4392 lm!1477) lambda!175303)))

(assert (=> d!1400702 (= (extractMap!1248 (toList!4392 lm!1477)) lt!1710700)))

(declare-fun b!4535381 () Bool)

(assert (=> b!4535381 (= e!2826090 (addToMapMapFromBucket!719 (_2!28896 (h!56608 (toList!4392 lm!1477))) (extractMap!1248 (t!357819 (toList!4392 lm!1477)))))))

(declare-fun b!4535382 () Bool)

(assert (=> b!4535382 (= e!2826090 (ListMap!3654 Nil!50732))))

(assert (= (and d!1400702 c!774476) b!4535381))

(assert (= (and d!1400702 (not c!774476)) b!4535382))

(declare-fun m!5296965 () Bool)

(assert (=> d!1400702 m!5296965))

(declare-fun m!5296967 () Bool)

(assert (=> d!1400702 m!5296967))

(assert (=> b!4535381 m!5296629))

(assert (=> b!4535381 m!5296629))

(declare-fun m!5296969 () Bool)

(assert (=> b!4535381 m!5296969))

(assert (=> b!4535195 d!1400702))

(declare-fun bs!871565 () Bool)

(declare-fun d!1400704 () Bool)

(assert (= bs!871565 (and d!1400704 start!449928)))

(declare-fun lambda!175306 () Int)

(assert (=> bs!871565 (not (= lambda!175306 lambda!175213))))

(declare-fun bs!871566 () Bool)

(assert (= bs!871566 (and d!1400704 b!4535199)))

(assert (=> bs!871566 (= lambda!175306 lambda!175214)))

(declare-fun bs!871567 () Bool)

(assert (= bs!871567 (and d!1400704 d!1400702)))

(assert (=> bs!871567 (not (= lambda!175306 lambda!175303))))

(assert (=> d!1400704 true))

(assert (=> d!1400704 (= (allKeysSameHashInMap!1299 lm!1477 hashF!1107) (forall!10329 (toList!4392 lm!1477) lambda!175306))))

(declare-fun bs!871568 () Bool)

(assert (= bs!871568 d!1400704))

(declare-fun m!5297005 () Bool)

(assert (=> bs!871568 m!5297005))

(assert (=> b!4535174 d!1400704))

(declare-fun bs!871570 () Bool)

(declare-fun d!1400708 () Bool)

(assert (= bs!871570 (and d!1400708 start!449928)))

(declare-fun lambda!175309 () Int)

(assert (=> bs!871570 (= lambda!175309 lambda!175213)))

(declare-fun bs!871571 () Bool)

(assert (= bs!871571 (and d!1400708 b!4535199)))

(assert (=> bs!871571 (not (= lambda!175309 lambda!175214))))

(declare-fun bs!871572 () Bool)

(assert (= bs!871572 (and d!1400708 d!1400702)))

(assert (=> bs!871572 (= lambda!175309 lambda!175303)))

(declare-fun bs!871573 () Bool)

(assert (= bs!871573 (and d!1400708 d!1400704)))

(assert (=> bs!871573 (not (= lambda!175309 lambda!175306))))

(assert (=> d!1400708 (not (contains!13513 (extractMap!1248 (toList!4392 lm!1477)) key!3287))))

(declare-fun lt!1710706 () Unit!97630)

(declare-fun choose!29813 (ListLongMap!3023 K!12120 Hashable!5587) Unit!97630)

(assert (=> d!1400708 (= lt!1710706 (choose!29813 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1400708 (forall!10329 (toList!4392 lm!1477) lambda!175309)))

(assert (=> d!1400708 (= (lemmaNotInItsHashBucketThenNotInMap!180 lm!1477 key!3287 hashF!1107) lt!1710706)))

(declare-fun bs!871575 () Bool)

(assert (= bs!871575 d!1400708))

(assert (=> bs!871575 m!5296549))

(assert (=> bs!871575 m!5296549))

(declare-fun m!5297013 () Bool)

(assert (=> bs!871575 m!5297013))

(declare-fun m!5297015 () Bool)

(assert (=> bs!871575 m!5297015))

(declare-fun m!5297017 () Bool)

(assert (=> bs!871575 m!5297017))

(assert (=> b!4535196 d!1400708))

(declare-fun d!1400714 () Bool)

(assert (=> d!1400714 (= (eq!649 lt!1710447 lt!1710443) (= (content!8420 (toList!4391 lt!1710447)) (content!8420 (toList!4391 lt!1710443))))))

(declare-fun bs!871576 () Bool)

(assert (= bs!871576 d!1400714))

(declare-fun m!5297019 () Bool)

(assert (=> bs!871576 m!5297019))

(declare-fun m!5297021 () Bool)

(assert (=> bs!871576 m!5297021))

(assert (=> b!4535186 d!1400714))

(declare-fun d!1400716 () Bool)

(declare-fun res!1889537 () Bool)

(declare-fun e!2826091 () Bool)

(assert (=> d!1400716 (=> res!1889537 e!2826091)))

(assert (=> d!1400716 (= res!1889537 (not ((_ is Cons!50732) (_2!28896 lt!1710445))))))

(assert (=> d!1400716 (= (noDuplicateKeys!1192 (_2!28896 lt!1710445)) e!2826091)))

(declare-fun b!4535383 () Bool)

(declare-fun e!2826092 () Bool)

(assert (=> b!4535383 (= e!2826091 e!2826092)))

(declare-fun res!1889538 () Bool)

(assert (=> b!4535383 (=> (not res!1889538) (not e!2826092))))

(assert (=> b!4535383 (= res!1889538 (not (containsKey!1856 (t!357818 (_2!28896 lt!1710445)) (_1!28895 (h!56607 (_2!28896 lt!1710445))))))))

(declare-fun b!4535384 () Bool)

(assert (=> b!4535384 (= e!2826092 (noDuplicateKeys!1192 (t!357818 (_2!28896 lt!1710445))))))

(assert (= (and d!1400716 (not res!1889537)) b!4535383))

(assert (= (and b!4535383 res!1889538) b!4535384))

(declare-fun m!5297023 () Bool)

(assert (=> b!4535383 m!5297023))

(declare-fun m!5297025 () Bool)

(assert (=> b!4535384 m!5297025))

(assert (=> b!4535187 d!1400716))

(declare-fun d!1400718 () Bool)

(declare-fun dynLambda!21203 (Int tuple2!51204) Bool)

(assert (=> d!1400718 (dynLambda!21203 lambda!175213 (h!56608 (toList!4392 lm!1477)))))

(declare-fun lt!1710709 () Unit!97630)

(declare-fun choose!29814 (List!50857 Int tuple2!51204) Unit!97630)

(assert (=> d!1400718 (= lt!1710709 (choose!29814 (toList!4392 lm!1477) lambda!175213 (h!56608 (toList!4392 lm!1477))))))

(declare-fun e!2826095 () Bool)

(assert (=> d!1400718 e!2826095))

(declare-fun res!1889541 () Bool)

(assert (=> d!1400718 (=> (not res!1889541) (not e!2826095))))

(assert (=> d!1400718 (= res!1889541 (forall!10329 (toList!4392 lm!1477) lambda!175213))))

(assert (=> d!1400718 (= (forallContained!2590 (toList!4392 lm!1477) lambda!175213 (h!56608 (toList!4392 lm!1477))) lt!1710709)))

(declare-fun b!4535387 () Bool)

(assert (=> b!4535387 (= e!2826095 (contains!13511 (toList!4392 lm!1477) (h!56608 (toList!4392 lm!1477))))))

(assert (= (and d!1400718 res!1889541) b!4535387))

(declare-fun b_lambda!157197 () Bool)

(assert (=> (not b_lambda!157197) (not d!1400718)))

(declare-fun m!5297027 () Bool)

(assert (=> d!1400718 m!5297027))

(declare-fun m!5297029 () Bool)

(assert (=> d!1400718 m!5297029))

(assert (=> d!1400718 m!5296617))

(declare-fun m!5297031 () Bool)

(assert (=> b!4535387 m!5297031))

(assert (=> b!4535187 d!1400718))

(declare-fun d!1400720 () Bool)

(declare-fun res!1889554 () Bool)

(declare-fun e!2826110 () Bool)

(assert (=> d!1400720 (=> res!1889554 e!2826110)))

(assert (=> d!1400720 (= res!1889554 ((_ is Nil!50733) (toList!4392 lm!1477)))))

(assert (=> d!1400720 (= (forall!10329 (toList!4392 lm!1477) lambda!175213) e!2826110)))

(declare-fun b!4535408 () Bool)

(declare-fun e!2826111 () Bool)

(assert (=> b!4535408 (= e!2826110 e!2826111)))

(declare-fun res!1889555 () Bool)

(assert (=> b!4535408 (=> (not res!1889555) (not e!2826111))))

(assert (=> b!4535408 (= res!1889555 (dynLambda!21203 lambda!175213 (h!56608 (toList!4392 lm!1477))))))

(declare-fun b!4535409 () Bool)

(assert (=> b!4535409 (= e!2826111 (forall!10329 (t!357819 (toList!4392 lm!1477)) lambda!175213))))

(assert (= (and d!1400720 (not res!1889554)) b!4535408))

(assert (= (and b!4535408 res!1889555) b!4535409))

(declare-fun b_lambda!157199 () Bool)

(assert (=> (not b_lambda!157199) (not b!4535408)))

(assert (=> b!4535408 m!5297027))

(declare-fun m!5297033 () Bool)

(assert (=> b!4535409 m!5297033))

(assert (=> start!449928 d!1400720))

(declare-fun d!1400722 () Bool)

(declare-fun isStrictlySorted!452 (List!50857) Bool)

(assert (=> d!1400722 (= (inv!66304 lm!1477) (isStrictlySorted!452 (toList!4392 lm!1477)))))

(declare-fun bs!871577 () Bool)

(assert (= bs!871577 d!1400722))

(declare-fun m!5297035 () Bool)

(assert (=> bs!871577 m!5297035))

(assert (=> start!449928 d!1400722))

(declare-fun bs!871578 () Bool)

(declare-fun d!1400724 () Bool)

(assert (= bs!871578 (and d!1400724 b!4535309)))

(declare-fun lambda!175312 () Int)

(assert (=> bs!871578 (not (= lambda!175312 lambda!175267))))

(declare-fun bs!871579 () Bool)

(assert (= bs!871579 (and d!1400724 b!4535199)))

(assert (=> bs!871579 (= (= hash!344 (_1!28896 (h!56608 (toList!4392 lm!1477)))) (= lambda!175312 lambda!175215))))

(declare-fun bs!871580 () Bool)

(assert (= bs!871580 (and d!1400724 d!1400628)))

(assert (=> bs!871580 (not (= lambda!175312 lambda!175268))))

(assert (=> bs!871578 (not (= lambda!175312 lambda!175266))))

(declare-fun bs!871581 () Bool)

(assert (= bs!871581 (and d!1400724 b!4535312)))

(assert (=> bs!871581 (not (= lambda!175312 lambda!175265))))

(assert (=> d!1400724 true))

(assert (=> d!1400724 true))

(assert (=> d!1400724 (= (allKeysSameHash!1046 newBucket!178 hash!344 hashF!1107) (forall!10330 newBucket!178 lambda!175312))))

(declare-fun bs!871582 () Bool)

(assert (= bs!871582 d!1400724))

(declare-fun m!5297053 () Bool)

(assert (=> bs!871582 m!5297053))

(assert (=> b!4535189 d!1400724))

(declare-fun d!1400730 () Bool)

(declare-fun head!9468 (List!50857) tuple2!51204)

(assert (=> d!1400730 (= (head!9466 lt!1710440) (head!9468 (toList!4392 lt!1710440)))))

(declare-fun bs!871583 () Bool)

(assert (= bs!871583 d!1400730))

(declare-fun m!5297055 () Bool)

(assert (=> bs!871583 m!5297055))

(assert (=> b!4535190 d!1400730))

(declare-fun d!1400732 () Bool)

(declare-fun e!2826120 () Bool)

(assert (=> d!1400732 e!2826120))

(declare-fun res!1889563 () Bool)

(assert (=> d!1400732 (=> (not res!1889563) (not e!2826120))))

(declare-fun lt!1710716 () ListMap!3653)

(assert (=> d!1400732 (= res!1889563 (not (contains!13513 lt!1710716 key!3287)))))

(assert (=> d!1400732 (= lt!1710716 (ListMap!3654 (removePresrvNoDuplicatedKeys!162 (toList!4391 lt!1710448) key!3287)))))

(assert (=> d!1400732 (= (-!418 lt!1710448 key!3287) lt!1710716)))

(declare-fun b!4535423 () Bool)

(assert (=> b!4535423 (= e!2826120 (= ((_ map and) (content!8421 (keys!17648 lt!1710448)) ((_ map not) (store ((as const (Array K!12120 Bool)) false) key!3287 true))) (content!8421 (keys!17648 lt!1710716))))))

(assert (= (and d!1400732 res!1889563) b!4535423))

(declare-fun m!5297057 () Bool)

(assert (=> d!1400732 m!5297057))

(declare-fun m!5297059 () Bool)

(assert (=> d!1400732 m!5297059))

(declare-fun m!5297061 () Bool)

(assert (=> b!4535423 m!5297061))

(assert (=> b!4535423 m!5296667))

(declare-fun m!5297063 () Bool)

(assert (=> b!4535423 m!5297063))

(declare-fun m!5297065 () Bool)

(assert (=> b!4535423 m!5297065))

(assert (=> b!4535423 m!5297061))

(declare-fun m!5297067 () Bool)

(assert (=> b!4535423 m!5297067))

(assert (=> b!4535423 m!5297063))

(assert (=> b!4535181 d!1400732))

(declare-fun d!1400734 () Bool)

(declare-fun e!2826140 () Bool)

(assert (=> d!1400734 e!2826140))

(declare-fun res!1889581 () Bool)

(assert (=> d!1400734 (=> (not res!1889581) (not e!2826140))))

(declare-fun lt!1710757 () ListLongMap!3023)

(assert (=> d!1400734 (= res!1889581 (contains!13512 lt!1710757 (_1!28896 lt!1710445)))))

(declare-fun lt!1710756 () List!50857)

(assert (=> d!1400734 (= lt!1710757 (ListLongMap!3024 lt!1710756))))

(declare-fun lt!1710759 () Unit!97630)

(declare-fun lt!1710758 () Unit!97630)

(assert (=> d!1400734 (= lt!1710759 lt!1710758)))

(assert (=> d!1400734 (= (getValueByKey!1136 lt!1710756 (_1!28896 lt!1710445)) (Some!11185 (_2!28896 lt!1710445)))))

(declare-fun lemmaContainsTupThenGetReturnValue!712 (List!50857 (_ BitVec 64) List!50856) Unit!97630)

(assert (=> d!1400734 (= lt!1710758 (lemmaContainsTupThenGetReturnValue!712 lt!1710756 (_1!28896 lt!1710445) (_2!28896 lt!1710445)))))

(declare-fun insertStrictlySorted!430 (List!50857 (_ BitVec 64) List!50856) List!50857)

(assert (=> d!1400734 (= lt!1710756 (insertStrictlySorted!430 (toList!4392 lt!1710421) (_1!28896 lt!1710445) (_2!28896 lt!1710445)))))

(assert (=> d!1400734 (= (+!1592 lt!1710421 lt!1710445) lt!1710757)))

(declare-fun b!4535451 () Bool)

(declare-fun res!1889582 () Bool)

(assert (=> b!4535451 (=> (not res!1889582) (not e!2826140))))

(assert (=> b!4535451 (= res!1889582 (= (getValueByKey!1136 (toList!4392 lt!1710757) (_1!28896 lt!1710445)) (Some!11185 (_2!28896 lt!1710445))))))

(declare-fun b!4535452 () Bool)

(assert (=> b!4535452 (= e!2826140 (contains!13511 (toList!4392 lt!1710757) lt!1710445))))

(assert (= (and d!1400734 res!1889581) b!4535451))

(assert (= (and b!4535451 res!1889582) b!4535452))

(declare-fun m!5297109 () Bool)

(assert (=> d!1400734 m!5297109))

(declare-fun m!5297111 () Bool)

(assert (=> d!1400734 m!5297111))

(declare-fun m!5297113 () Bool)

(assert (=> d!1400734 m!5297113))

(declare-fun m!5297115 () Bool)

(assert (=> d!1400734 m!5297115))

(declare-fun m!5297117 () Bool)

(assert (=> b!4535451 m!5297117))

(declare-fun m!5297119 () Bool)

(assert (=> b!4535452 m!5297119))

(assert (=> b!4535181 d!1400734))

(declare-fun bs!871606 () Bool)

(declare-fun d!1400748 () Bool)

(assert (= bs!871606 (and d!1400748 d!1400702)))

(declare-fun lambda!175316 () Int)

(assert (=> bs!871606 (= lambda!175316 lambda!175303)))

(declare-fun bs!871607 () Bool)

(assert (= bs!871607 (and d!1400748 d!1400708)))

(assert (=> bs!871607 (= lambda!175316 lambda!175309)))

(declare-fun bs!871608 () Bool)

(assert (= bs!871608 (and d!1400748 start!449928)))

(assert (=> bs!871608 (= lambda!175316 lambda!175213)))

(declare-fun bs!871609 () Bool)

(assert (= bs!871609 (and d!1400748 b!4535199)))

(assert (=> bs!871609 (not (= lambda!175316 lambda!175214))))

(declare-fun bs!871610 () Bool)

(assert (= bs!871610 (and d!1400748 d!1400704)))

(assert (=> bs!871610 (not (= lambda!175316 lambda!175306))))

(declare-fun lt!1710760 () ListMap!3653)

(assert (=> d!1400748 (invariantList!1039 (toList!4391 lt!1710760))))

(declare-fun e!2826141 () ListMap!3653)

(assert (=> d!1400748 (= lt!1710760 e!2826141)))

(declare-fun c!774488 () Bool)

(assert (=> d!1400748 (= c!774488 ((_ is Cons!50733) (toList!4392 (+!1592 lt!1710421 lt!1710445))))))

(assert (=> d!1400748 (forall!10329 (toList!4392 (+!1592 lt!1710421 lt!1710445)) lambda!175316)))

(assert (=> d!1400748 (= (extractMap!1248 (toList!4392 (+!1592 lt!1710421 lt!1710445))) lt!1710760)))

(declare-fun b!4535453 () Bool)

(assert (=> b!4535453 (= e!2826141 (addToMapMapFromBucket!719 (_2!28896 (h!56608 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))))))

(declare-fun b!4535454 () Bool)

(assert (=> b!4535454 (= e!2826141 (ListMap!3654 Nil!50732))))

(assert (= (and d!1400748 c!774488) b!4535453))

(assert (= (and d!1400748 (not c!774488)) b!4535454))

(declare-fun m!5297121 () Bool)

(assert (=> d!1400748 m!5297121))

(declare-fun m!5297123 () Bool)

(assert (=> d!1400748 m!5297123))

(declare-fun m!5297125 () Bool)

(assert (=> b!4535453 m!5297125))

(assert (=> b!4535453 m!5297125))

(declare-fun m!5297127 () Bool)

(assert (=> b!4535453 m!5297127))

(assert (=> b!4535181 d!1400748))

(declare-fun d!1400750 () Bool)

(declare-fun e!2826142 () Bool)

(assert (=> d!1400750 e!2826142))

(declare-fun res!1889583 () Bool)

(assert (=> d!1400750 (=> (not res!1889583) (not e!2826142))))

(declare-fun lt!1710762 () ListLongMap!3023)

(assert (=> d!1400750 (= res!1889583 (contains!13512 lt!1710762 (_1!28896 lt!1710425)))))

(declare-fun lt!1710761 () List!50857)

(assert (=> d!1400750 (= lt!1710762 (ListLongMap!3024 lt!1710761))))

(declare-fun lt!1710764 () Unit!97630)

(declare-fun lt!1710763 () Unit!97630)

(assert (=> d!1400750 (= lt!1710764 lt!1710763)))

(assert (=> d!1400750 (= (getValueByKey!1136 lt!1710761 (_1!28896 lt!1710425)) (Some!11185 (_2!28896 lt!1710425)))))

(assert (=> d!1400750 (= lt!1710763 (lemmaContainsTupThenGetReturnValue!712 lt!1710761 (_1!28896 lt!1710425) (_2!28896 lt!1710425)))))

(assert (=> d!1400750 (= lt!1710761 (insertStrictlySorted!430 (toList!4392 lt!1710421) (_1!28896 lt!1710425) (_2!28896 lt!1710425)))))

(assert (=> d!1400750 (= (+!1592 lt!1710421 lt!1710425) lt!1710762)))

(declare-fun b!4535455 () Bool)

(declare-fun res!1889584 () Bool)

(assert (=> b!4535455 (=> (not res!1889584) (not e!2826142))))

(assert (=> b!4535455 (= res!1889584 (= (getValueByKey!1136 (toList!4392 lt!1710762) (_1!28896 lt!1710425)) (Some!11185 (_2!28896 lt!1710425))))))

(declare-fun b!4535456 () Bool)

(assert (=> b!4535456 (= e!2826142 (contains!13511 (toList!4392 lt!1710762) lt!1710425))))

(assert (= (and d!1400750 res!1889583) b!4535455))

(assert (= (and b!4535455 res!1889584) b!4535456))

(declare-fun m!5297129 () Bool)

(assert (=> d!1400750 m!5297129))

(declare-fun m!5297131 () Bool)

(assert (=> d!1400750 m!5297131))

(declare-fun m!5297133 () Bool)

(assert (=> d!1400750 m!5297133))

(declare-fun m!5297135 () Bool)

(assert (=> d!1400750 m!5297135))

(declare-fun m!5297137 () Bool)

(assert (=> b!4535455 m!5297137))

(declare-fun m!5297139 () Bool)

(assert (=> b!4535456 m!5297139))

(assert (=> b!4535181 d!1400750))

(declare-fun bs!871631 () Bool)

(declare-fun d!1400752 () Bool)

(assert (= bs!871631 (and d!1400752 d!1400702)))

(declare-fun lambda!175322 () Int)

(assert (=> bs!871631 (= lambda!175322 lambda!175303)))

(declare-fun bs!871633 () Bool)

(assert (= bs!871633 (and d!1400752 start!449928)))

(assert (=> bs!871633 (= lambda!175322 lambda!175213)))

(declare-fun bs!871635 () Bool)

(assert (= bs!871635 (and d!1400752 b!4535199)))

(assert (=> bs!871635 (not (= lambda!175322 lambda!175214))))

(declare-fun bs!871636 () Bool)

(assert (= bs!871636 (and d!1400752 d!1400704)))

(assert (=> bs!871636 (not (= lambda!175322 lambda!175306))))

(declare-fun bs!871638 () Bool)

(assert (= bs!871638 (and d!1400752 d!1400748)))

(assert (=> bs!871638 (= lambda!175322 lambda!175316)))

(declare-fun bs!871639 () Bool)

(assert (= bs!871639 (and d!1400752 d!1400708)))

(assert (=> bs!871639 (= lambda!175322 lambda!175309)))

(assert (=> d!1400752 (eq!649 (extractMap!1248 (toList!4392 (+!1592 lt!1710421 (tuple2!51205 hash!344 newBucket!178)))) (-!418 (extractMap!1248 (toList!4392 lt!1710421)) key!3287))))

(declare-fun lt!1710781 () Unit!97630)

(declare-fun choose!29816 (ListLongMap!3023 (_ BitVec 64) List!50856 K!12120 Hashable!5587) Unit!97630)

(assert (=> d!1400752 (= lt!1710781 (choose!29816 lt!1710421 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1400752 (forall!10329 (toList!4392 lt!1710421) lambda!175322)))

(assert (=> d!1400752 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!177 lt!1710421 hash!344 newBucket!178 key!3287 hashF!1107) lt!1710781)))

(declare-fun bs!871642 () Bool)

(assert (= bs!871642 d!1400752))

(declare-fun m!5297207 () Bool)

(assert (=> bs!871642 m!5297207))

(assert (=> bs!871642 m!5296627))

(declare-fun m!5297209 () Bool)

(assert (=> bs!871642 m!5297209))

(declare-fun m!5297211 () Bool)

(assert (=> bs!871642 m!5297211))

(declare-fun m!5297213 () Bool)

(assert (=> bs!871642 m!5297213))

(assert (=> bs!871642 m!5297209))

(declare-fun m!5297215 () Bool)

(assert (=> bs!871642 m!5297215))

(declare-fun m!5297217 () Bool)

(assert (=> bs!871642 m!5297217))

(assert (=> bs!871642 m!5297213))

(assert (=> bs!871642 m!5296627))

(assert (=> b!4535181 d!1400752))

(declare-fun d!1400774 () Bool)

(assert (=> d!1400774 (= (eq!649 lt!1710443 lt!1710447) (= (content!8420 (toList!4391 lt!1710443)) (content!8420 (toList!4391 lt!1710447))))))

(declare-fun bs!871649 () Bool)

(assert (= bs!871649 d!1400774))

(assert (=> bs!871649 m!5297021))

(assert (=> bs!871649 m!5297019))

(assert (=> b!4535181 d!1400774))

(declare-fun d!1400776 () Bool)

(assert (=> d!1400776 (= (head!9466 lm!1477) (head!9468 (toList!4392 lm!1477)))))

(declare-fun bs!871650 () Bool)

(assert (= bs!871650 d!1400776))

(declare-fun m!5297219 () Bool)

(assert (=> bs!871650 m!5297219))

(assert (=> b!4535181 d!1400776))

(declare-fun d!1400778 () Bool)

(assert (=> d!1400778 (= (eq!649 lt!1710415 lt!1710429) (= (content!8420 (toList!4391 lt!1710415)) (content!8420 (toList!4391 lt!1710429))))))

(declare-fun bs!871651 () Bool)

(assert (= bs!871651 d!1400778))

(declare-fun m!5297221 () Bool)

(assert (=> bs!871651 m!5297221))

(declare-fun m!5297223 () Bool)

(assert (=> bs!871651 m!5297223))

(assert (=> b!4535181 d!1400778))

(declare-fun bs!871654 () Bool)

(declare-fun d!1400780 () Bool)

(assert (= bs!871654 (and d!1400780 d!1400702)))

(declare-fun lambda!175325 () Int)

(assert (=> bs!871654 (= lambda!175325 lambda!175303)))

(declare-fun bs!871656 () Bool)

(assert (= bs!871656 (and d!1400780 b!4535199)))

(assert (=> bs!871656 (not (= lambda!175325 lambda!175214))))

(declare-fun bs!871659 () Bool)

(assert (= bs!871659 (and d!1400780 d!1400704)))

(assert (=> bs!871659 (not (= lambda!175325 lambda!175306))))

(declare-fun bs!871661 () Bool)

(assert (= bs!871661 (and d!1400780 d!1400748)))

(assert (=> bs!871661 (= lambda!175325 lambda!175316)))

(declare-fun bs!871663 () Bool)

(assert (= bs!871663 (and d!1400780 d!1400708)))

(assert (=> bs!871663 (= lambda!175325 lambda!175309)))

(declare-fun bs!871664 () Bool)

(assert (= bs!871664 (and d!1400780 start!449928)))

(assert (=> bs!871664 (= lambda!175325 lambda!175213)))

(declare-fun bs!871666 () Bool)

(assert (= bs!871666 (and d!1400780 d!1400752)))

(assert (=> bs!871666 (= lambda!175325 lambda!175322)))

(declare-fun lt!1710803 () ListMap!3653)

(assert (=> d!1400780 (invariantList!1039 (toList!4391 lt!1710803))))

(declare-fun e!2826160 () ListMap!3653)

(assert (=> d!1400780 (= lt!1710803 e!2826160)))

(declare-fun c!774494 () Bool)

(assert (=> d!1400780 (= c!774494 ((_ is Cons!50733) (toList!4392 lt!1710432)))))

(assert (=> d!1400780 (forall!10329 (toList!4392 lt!1710432) lambda!175325)))

(assert (=> d!1400780 (= (extractMap!1248 (toList!4392 lt!1710432)) lt!1710803)))

(declare-fun b!4535480 () Bool)

(assert (=> b!4535480 (= e!2826160 (addToMapMapFromBucket!719 (_2!28896 (h!56608 (toList!4392 lt!1710432))) (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))))))

(declare-fun b!4535481 () Bool)

(assert (=> b!4535481 (= e!2826160 (ListMap!3654 Nil!50732))))

(assert (= (and d!1400780 c!774494) b!4535480))

(assert (= (and d!1400780 (not c!774494)) b!4535481))

(declare-fun m!5297225 () Bool)

(assert (=> d!1400780 m!5297225))

(declare-fun m!5297227 () Bool)

(assert (=> d!1400780 m!5297227))

(declare-fun m!5297229 () Bool)

(assert (=> b!4535480 m!5297229))

(assert (=> b!4535480 m!5297229))

(declare-fun m!5297231 () Bool)

(assert (=> b!4535480 m!5297231))

(assert (=> b!4535181 d!1400780))

(declare-fun d!1400782 () Bool)

(declare-fun res!1889605 () Bool)

(declare-fun e!2826169 () Bool)

(assert (=> d!1400782 (=> res!1889605 e!2826169)))

(declare-fun e!2826167 () Bool)

(assert (=> d!1400782 (= res!1889605 e!2826167)))

(declare-fun res!1889606 () Bool)

(assert (=> d!1400782 (=> (not res!1889606) (not e!2826167))))

(assert (=> d!1400782 (= res!1889606 ((_ is Cons!50733) (t!357819 (toList!4392 lm!1477))))))

(assert (=> d!1400782 (= (containsKeyBiggerList!172 (t!357819 (toList!4392 lm!1477)) key!3287) e!2826169)))

(declare-fun b!4535488 () Bool)

(assert (=> b!4535488 (= e!2826167 (containsKey!1856 (_2!28896 (h!56608 (t!357819 (toList!4392 lm!1477)))) key!3287))))

(declare-fun b!4535489 () Bool)

(declare-fun e!2826168 () Bool)

(assert (=> b!4535489 (= e!2826169 e!2826168)))

(declare-fun res!1889604 () Bool)

(assert (=> b!4535489 (=> (not res!1889604) (not e!2826168))))

(assert (=> b!4535489 (= res!1889604 ((_ is Cons!50733) (t!357819 (toList!4392 lm!1477))))))

(declare-fun b!4535490 () Bool)

(assert (=> b!4535490 (= e!2826168 (containsKeyBiggerList!172 (t!357819 (t!357819 (toList!4392 lm!1477))) key!3287))))

(assert (= (and d!1400782 res!1889606) b!4535488))

(assert (= (and d!1400782 (not res!1889605)) b!4535489))

(assert (= (and b!4535489 res!1889604) b!4535490))

(declare-fun m!5297233 () Bool)

(assert (=> b!4535488 m!5297233))

(declare-fun m!5297235 () Bool)

(assert (=> b!4535490 m!5297235))

(assert (=> b!4535183 d!1400782))

(declare-fun d!1400784 () Bool)

(declare-fun res!1889608 () Bool)

(declare-fun e!2826172 () Bool)

(assert (=> d!1400784 (=> res!1889608 e!2826172)))

(declare-fun e!2826170 () Bool)

(assert (=> d!1400784 (= res!1889608 e!2826170)))

(declare-fun res!1889609 () Bool)

(assert (=> d!1400784 (=> (not res!1889609) (not e!2826170))))

(assert (=> d!1400784 (= res!1889609 ((_ is Cons!50733) (toList!4392 lt!1710421)))))

(assert (=> d!1400784 (= (containsKeyBiggerList!172 (toList!4392 lt!1710421) key!3287) e!2826172)))

(declare-fun b!4535491 () Bool)

(assert (=> b!4535491 (= e!2826170 (containsKey!1856 (_2!28896 (h!56608 (toList!4392 lt!1710421))) key!3287))))

(declare-fun b!4535492 () Bool)

(declare-fun e!2826171 () Bool)

(assert (=> b!4535492 (= e!2826172 e!2826171)))

(declare-fun res!1889607 () Bool)

(assert (=> b!4535492 (=> (not res!1889607) (not e!2826171))))

(assert (=> b!4535492 (= res!1889607 ((_ is Cons!50733) (toList!4392 lt!1710421)))))

(declare-fun b!4535493 () Bool)

(assert (=> b!4535493 (= e!2826171 (containsKeyBiggerList!172 (t!357819 (toList!4392 lt!1710421)) key!3287))))

(assert (= (and d!1400784 res!1889609) b!4535491))

(assert (= (and d!1400784 (not res!1889608)) b!4535492))

(assert (= (and b!4535492 res!1889607) b!4535493))

(declare-fun m!5297237 () Bool)

(assert (=> b!4535491 m!5297237))

(declare-fun m!5297239 () Bool)

(assert (=> b!4535493 m!5297239))

(assert (=> b!4535183 d!1400784))

(declare-fun bs!871678 () Bool)

(declare-fun d!1400786 () Bool)

(assert (= bs!871678 (and d!1400786 d!1400702)))

(declare-fun lambda!175330 () Int)

(assert (=> bs!871678 (= lambda!175330 lambda!175303)))

(declare-fun bs!871679 () Bool)

(assert (= bs!871679 (and d!1400786 d!1400780)))

(assert (=> bs!871679 (= lambda!175330 lambda!175325)))

(declare-fun bs!871680 () Bool)

(assert (= bs!871680 (and d!1400786 b!4535199)))

(assert (=> bs!871680 (not (= lambda!175330 lambda!175214))))

(declare-fun bs!871681 () Bool)

(assert (= bs!871681 (and d!1400786 d!1400704)))

(assert (=> bs!871681 (not (= lambda!175330 lambda!175306))))

(declare-fun bs!871682 () Bool)

(assert (= bs!871682 (and d!1400786 d!1400748)))

(assert (=> bs!871682 (= lambda!175330 lambda!175316)))

(declare-fun bs!871683 () Bool)

(assert (= bs!871683 (and d!1400786 d!1400708)))

(assert (=> bs!871683 (= lambda!175330 lambda!175309)))

(declare-fun bs!871684 () Bool)

(assert (= bs!871684 (and d!1400786 start!449928)))

(assert (=> bs!871684 (= lambda!175330 lambda!175213)))

(declare-fun bs!871685 () Bool)

(assert (= bs!871685 (and d!1400786 d!1400752)))

(assert (=> bs!871685 (= lambda!175330 lambda!175322)))

(assert (=> d!1400786 (containsKeyBiggerList!172 (toList!4392 lt!1710421) key!3287)))

(declare-fun lt!1710806 () Unit!97630)

(declare-fun choose!29818 (ListLongMap!3023 K!12120 Hashable!5587) Unit!97630)

(assert (=> d!1400786 (= lt!1710806 (choose!29818 lt!1710421 key!3287 hashF!1107))))

(assert (=> d!1400786 (forall!10329 (toList!4392 lt!1710421) lambda!175330)))

(assert (=> d!1400786 (= (lemmaInLongMapThenContainsKeyBiggerList!108 lt!1710421 key!3287 hashF!1107) lt!1710806)))

(declare-fun bs!871686 () Bool)

(assert (= bs!871686 d!1400786))

(assert (=> bs!871686 m!5296597))

(declare-fun m!5297275 () Bool)

(assert (=> bs!871686 m!5297275))

(declare-fun m!5297277 () Bool)

(assert (=> bs!871686 m!5297277))

(assert (=> b!4535183 d!1400786))

(declare-fun bs!871687 () Bool)

(declare-fun d!1400790 () Bool)

(assert (= bs!871687 (and d!1400790 d!1400786)))

(declare-fun lambda!175331 () Int)

(assert (=> bs!871687 (= lambda!175331 lambda!175330)))

(declare-fun bs!871688 () Bool)

(assert (= bs!871688 (and d!1400790 d!1400702)))

(assert (=> bs!871688 (= lambda!175331 lambda!175303)))

(declare-fun bs!871689 () Bool)

(assert (= bs!871689 (and d!1400790 d!1400780)))

(assert (=> bs!871689 (= lambda!175331 lambda!175325)))

(declare-fun bs!871690 () Bool)

(assert (= bs!871690 (and d!1400790 b!4535199)))

(assert (=> bs!871690 (not (= lambda!175331 lambda!175214))))

(declare-fun bs!871691 () Bool)

(assert (= bs!871691 (and d!1400790 d!1400704)))

(assert (=> bs!871691 (not (= lambda!175331 lambda!175306))))

(declare-fun bs!871692 () Bool)

(assert (= bs!871692 (and d!1400790 d!1400748)))

(assert (=> bs!871692 (= lambda!175331 lambda!175316)))

(declare-fun bs!871693 () Bool)

(assert (= bs!871693 (and d!1400790 d!1400708)))

(assert (=> bs!871693 (= lambda!175331 lambda!175309)))

(declare-fun bs!871694 () Bool)

(assert (= bs!871694 (and d!1400790 start!449928)))

(assert (=> bs!871694 (= lambda!175331 lambda!175213)))

(declare-fun bs!871695 () Bool)

(assert (= bs!871695 (and d!1400790 d!1400752)))

(assert (=> bs!871695 (= lambda!175331 lambda!175322)))

(declare-fun lt!1710807 () ListMap!3653)

(assert (=> d!1400790 (invariantList!1039 (toList!4391 lt!1710807))))

(declare-fun e!2826173 () ListMap!3653)

(assert (=> d!1400790 (= lt!1710807 e!2826173)))

(declare-fun c!774495 () Bool)

(assert (=> d!1400790 (= c!774495 ((_ is Cons!50733) (toList!4392 lt!1710421)))))

(assert (=> d!1400790 (forall!10329 (toList!4392 lt!1710421) lambda!175331)))

(assert (=> d!1400790 (= (extractMap!1248 (toList!4392 lt!1710421)) lt!1710807)))

(declare-fun b!4535494 () Bool)

(assert (=> b!4535494 (= e!2826173 (addToMapMapFromBucket!719 (_2!28896 (h!56608 (toList!4392 lt!1710421))) (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))))))

(declare-fun b!4535495 () Bool)

(assert (=> b!4535495 (= e!2826173 (ListMap!3654 Nil!50732))))

(assert (= (and d!1400790 c!774495) b!4535494))

(assert (= (and d!1400790 (not c!774495)) b!4535495))

(declare-fun m!5297279 () Bool)

(assert (=> d!1400790 m!5297279))

(declare-fun m!5297281 () Bool)

(assert (=> d!1400790 m!5297281))

(declare-fun m!5297283 () Bool)

(assert (=> b!4535494 m!5297283))

(assert (=> b!4535494 m!5297283))

(declare-fun m!5297285 () Bool)

(assert (=> b!4535494 m!5297285))

(assert (=> b!4535184 d!1400790))

(declare-fun d!1400792 () Bool)

(declare-fun e!2826176 () Bool)

(assert (=> d!1400792 e!2826176))

(declare-fun res!1889610 () Bool)

(assert (=> d!1400792 (=> res!1889610 e!2826176)))

(declare-fun e!2826178 () Bool)

(assert (=> d!1400792 (= res!1889610 e!2826178)))

(declare-fun res!1889611 () Bool)

(assert (=> d!1400792 (=> (not res!1889611) (not e!2826178))))

(declare-fun lt!1710814 () Bool)

(assert (=> d!1400792 (= res!1889611 (not lt!1710814))))

(declare-fun lt!1710809 () Bool)

(assert (=> d!1400792 (= lt!1710814 lt!1710809)))

(declare-fun lt!1710808 () Unit!97630)

(declare-fun e!2826175 () Unit!97630)

(assert (=> d!1400792 (= lt!1710808 e!2826175)))

(declare-fun c!774496 () Bool)

(assert (=> d!1400792 (= c!774496 lt!1710809)))

(assert (=> d!1400792 (= lt!1710809 (containsKey!1859 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) key!3287))))

(assert (=> d!1400792 (= (contains!13513 (extractMap!1248 (t!357819 (toList!4392 lm!1477))) key!3287) lt!1710814)))

(declare-fun b!4535496 () Bool)

(declare-fun lt!1710815 () Unit!97630)

(assert (=> b!4535496 (= e!2826175 lt!1710815)))

(declare-fun lt!1710810 () Unit!97630)

(assert (=> b!4535496 (= lt!1710810 (lemmaContainsKeyImpliesGetValueByKeyDefined!1040 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) key!3287))))

(assert (=> b!4535496 (isDefined!8463 (getValueByKey!1137 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) key!3287))))

(declare-fun lt!1710812 () Unit!97630)

(assert (=> b!4535496 (= lt!1710812 lt!1710810)))

(assert (=> b!4535496 (= lt!1710815 (lemmaInListThenGetKeysListContains!483 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) key!3287))))

(declare-fun call!316194 () Bool)

(assert (=> b!4535496 call!316194))

(declare-fun b!4535497 () Bool)

(assert (=> b!4535497 false))

(declare-fun lt!1710811 () Unit!97630)

(declare-fun lt!1710813 () Unit!97630)

(assert (=> b!4535497 (= lt!1710811 lt!1710813)))

(assert (=> b!4535497 (containsKey!1859 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) key!3287)))

(assert (=> b!4535497 (= lt!1710813 (lemmaInGetKeysListThenContainsKey!486 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) key!3287))))

(declare-fun e!2826177 () Unit!97630)

(declare-fun Unit!97667 () Unit!97630)

(assert (=> b!4535497 (= e!2826177 Unit!97667)))

(declare-fun bm!316189 () Bool)

(declare-fun e!2826179 () List!50859)

(assert (=> bm!316189 (= call!316194 (contains!13515 e!2826179 key!3287))))

(declare-fun c!774498 () Bool)

(assert (=> bm!316189 (= c!774498 c!774496)))

(declare-fun b!4535498 () Bool)

(declare-fun e!2826174 () Bool)

(assert (=> b!4535498 (= e!2826176 e!2826174)))

(declare-fun res!1889612 () Bool)

(assert (=> b!4535498 (=> (not res!1889612) (not e!2826174))))

(assert (=> b!4535498 (= res!1889612 (isDefined!8463 (getValueByKey!1137 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) key!3287)))))

(declare-fun b!4535499 () Bool)

(assert (=> b!4535499 (= e!2826179 (keys!17648 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))))))

(declare-fun b!4535500 () Bool)

(assert (=> b!4535500 (= e!2826175 e!2826177)))

(declare-fun c!774497 () Bool)

(assert (=> b!4535500 (= c!774497 call!316194)))

(declare-fun b!4535501 () Bool)

(declare-fun Unit!97668 () Unit!97630)

(assert (=> b!4535501 (= e!2826177 Unit!97668)))

(declare-fun b!4535502 () Bool)

(assert (=> b!4535502 (= e!2826179 (getKeysList!487 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))))))

(declare-fun b!4535503 () Bool)

(assert (=> b!4535503 (= e!2826174 (contains!13515 (keys!17648 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) key!3287))))

(declare-fun b!4535504 () Bool)

(assert (=> b!4535504 (= e!2826178 (not (contains!13515 (keys!17648 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) key!3287)))))

(assert (= (and d!1400792 c!774496) b!4535496))

(assert (= (and d!1400792 (not c!774496)) b!4535500))

(assert (= (and b!4535500 c!774497) b!4535497))

(assert (= (and b!4535500 (not c!774497)) b!4535501))

(assert (= (or b!4535496 b!4535500) bm!316189))

(assert (= (and bm!316189 c!774498) b!4535502))

(assert (= (and bm!316189 (not c!774498)) b!4535499))

(assert (= (and d!1400792 res!1889611) b!4535504))

(assert (= (and d!1400792 (not res!1889610)) b!4535498))

(assert (= (and b!4535498 res!1889612) b!4535503))

(assert (=> b!4535503 m!5296629))

(declare-fun m!5297287 () Bool)

(assert (=> b!4535503 m!5297287))

(assert (=> b!4535503 m!5297287))

(declare-fun m!5297289 () Bool)

(assert (=> b!4535503 m!5297289))

(declare-fun m!5297291 () Bool)

(assert (=> b!4535497 m!5297291))

(declare-fun m!5297293 () Bool)

(assert (=> b!4535497 m!5297293))

(assert (=> b!4535499 m!5296629))

(assert (=> b!4535499 m!5297287))

(assert (=> b!4535504 m!5296629))

(assert (=> b!4535504 m!5297287))

(assert (=> b!4535504 m!5297287))

(assert (=> b!4535504 m!5297289))

(declare-fun m!5297295 () Bool)

(assert (=> b!4535498 m!5297295))

(assert (=> b!4535498 m!5297295))

(declare-fun m!5297297 () Bool)

(assert (=> b!4535498 m!5297297))

(declare-fun m!5297299 () Bool)

(assert (=> bm!316189 m!5297299))

(declare-fun m!5297301 () Bool)

(assert (=> b!4535502 m!5297301))

(declare-fun m!5297303 () Bool)

(assert (=> b!4535496 m!5297303))

(assert (=> b!4535496 m!5297295))

(assert (=> b!4535496 m!5297295))

(assert (=> b!4535496 m!5297297))

(declare-fun m!5297305 () Bool)

(assert (=> b!4535496 m!5297305))

(assert (=> d!1400792 m!5297291))

(assert (=> b!4535184 d!1400792))

(declare-fun bs!871696 () Bool)

(declare-fun d!1400794 () Bool)

(assert (= bs!871696 (and d!1400794 d!1400702)))

(declare-fun lambda!175332 () Int)

(assert (=> bs!871696 (= lambda!175332 lambda!175303)))

(declare-fun bs!871697 () Bool)

(assert (= bs!871697 (and d!1400794 d!1400780)))

(assert (=> bs!871697 (= lambda!175332 lambda!175325)))

(declare-fun bs!871698 () Bool)

(assert (= bs!871698 (and d!1400794 b!4535199)))

(assert (=> bs!871698 (not (= lambda!175332 lambda!175214))))

(declare-fun bs!871699 () Bool)

(assert (= bs!871699 (and d!1400794 d!1400704)))

(assert (=> bs!871699 (not (= lambda!175332 lambda!175306))))

(declare-fun bs!871700 () Bool)

(assert (= bs!871700 (and d!1400794 d!1400786)))

(assert (=> bs!871700 (= lambda!175332 lambda!175330)))

(declare-fun bs!871701 () Bool)

(assert (= bs!871701 (and d!1400794 d!1400790)))

(assert (=> bs!871701 (= lambda!175332 lambda!175331)))

(declare-fun bs!871702 () Bool)

(assert (= bs!871702 (and d!1400794 d!1400748)))

(assert (=> bs!871702 (= lambda!175332 lambda!175316)))

(declare-fun bs!871703 () Bool)

(assert (= bs!871703 (and d!1400794 d!1400708)))

(assert (=> bs!871703 (= lambda!175332 lambda!175309)))

(declare-fun bs!871704 () Bool)

(assert (= bs!871704 (and d!1400794 start!449928)))

(assert (=> bs!871704 (= lambda!175332 lambda!175213)))

(declare-fun bs!871705 () Bool)

(assert (= bs!871705 (and d!1400794 d!1400752)))

(assert (=> bs!871705 (= lambda!175332 lambda!175322)))

(declare-fun lt!1710816 () ListMap!3653)

(assert (=> d!1400794 (invariantList!1039 (toList!4391 lt!1710816))))

(declare-fun e!2826180 () ListMap!3653)

(assert (=> d!1400794 (= lt!1710816 e!2826180)))

(declare-fun c!774499 () Bool)

(assert (=> d!1400794 (= c!774499 ((_ is Cons!50733) (t!357819 (toList!4392 lm!1477))))))

(assert (=> d!1400794 (forall!10329 (t!357819 (toList!4392 lm!1477)) lambda!175332)))

(assert (=> d!1400794 (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1710816)))

(declare-fun b!4535505 () Bool)

(assert (=> b!4535505 (= e!2826180 (addToMapMapFromBucket!719 (_2!28896 (h!56608 (t!357819 (toList!4392 lm!1477)))) (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477))))))))

(declare-fun b!4535506 () Bool)

(assert (=> b!4535506 (= e!2826180 (ListMap!3654 Nil!50732))))

(assert (= (and d!1400794 c!774499) b!4535505))

(assert (= (and d!1400794 (not c!774499)) b!4535506))

(declare-fun m!5297307 () Bool)

(assert (=> d!1400794 m!5297307))

(declare-fun m!5297309 () Bool)

(assert (=> d!1400794 m!5297309))

(declare-fun m!5297311 () Bool)

(assert (=> b!4535505 m!5297311))

(assert (=> b!4535505 m!5297311))

(declare-fun m!5297313 () Bool)

(assert (=> b!4535505 m!5297313))

(assert (=> b!4535184 d!1400794))

(declare-fun d!1400796 () Bool)

(declare-fun e!2826183 () Bool)

(assert (=> d!1400796 e!2826183))

(declare-fun res!1889613 () Bool)

(assert (=> d!1400796 (=> res!1889613 e!2826183)))

(declare-fun e!2826185 () Bool)

(assert (=> d!1400796 (= res!1889613 e!2826185)))

(declare-fun res!1889614 () Bool)

(assert (=> d!1400796 (=> (not res!1889614) (not e!2826185))))

(declare-fun lt!1710823 () Bool)

(assert (=> d!1400796 (= res!1889614 (not lt!1710823))))

(declare-fun lt!1710818 () Bool)

(assert (=> d!1400796 (= lt!1710823 lt!1710818)))

(declare-fun lt!1710817 () Unit!97630)

(declare-fun e!2826182 () Unit!97630)

(assert (=> d!1400796 (= lt!1710817 e!2826182)))

(declare-fun c!774500 () Bool)

(assert (=> d!1400796 (= c!774500 lt!1710818)))

(assert (=> d!1400796 (= lt!1710818 (containsKey!1859 (toList!4391 lt!1710448) key!3287))))

(assert (=> d!1400796 (= (contains!13513 lt!1710448 key!3287) lt!1710823)))

(declare-fun b!4535507 () Bool)

(declare-fun lt!1710824 () Unit!97630)

(assert (=> b!4535507 (= e!2826182 lt!1710824)))

(declare-fun lt!1710819 () Unit!97630)

(assert (=> b!4535507 (= lt!1710819 (lemmaContainsKeyImpliesGetValueByKeyDefined!1040 (toList!4391 lt!1710448) key!3287))))

(assert (=> b!4535507 (isDefined!8463 (getValueByKey!1137 (toList!4391 lt!1710448) key!3287))))

(declare-fun lt!1710821 () Unit!97630)

(assert (=> b!4535507 (= lt!1710821 lt!1710819)))

(assert (=> b!4535507 (= lt!1710824 (lemmaInListThenGetKeysListContains!483 (toList!4391 lt!1710448) key!3287))))

(declare-fun call!316195 () Bool)

(assert (=> b!4535507 call!316195))

(declare-fun b!4535508 () Bool)

(assert (=> b!4535508 false))

(declare-fun lt!1710820 () Unit!97630)

(declare-fun lt!1710822 () Unit!97630)

(assert (=> b!4535508 (= lt!1710820 lt!1710822)))

(assert (=> b!4535508 (containsKey!1859 (toList!4391 lt!1710448) key!3287)))

(assert (=> b!4535508 (= lt!1710822 (lemmaInGetKeysListThenContainsKey!486 (toList!4391 lt!1710448) key!3287))))

(declare-fun e!2826184 () Unit!97630)

(declare-fun Unit!97669 () Unit!97630)

(assert (=> b!4535508 (= e!2826184 Unit!97669)))

(declare-fun bm!316190 () Bool)

(declare-fun e!2826186 () List!50859)

(assert (=> bm!316190 (= call!316195 (contains!13515 e!2826186 key!3287))))

(declare-fun c!774502 () Bool)

(assert (=> bm!316190 (= c!774502 c!774500)))

(declare-fun b!4535509 () Bool)

(declare-fun e!2826181 () Bool)

(assert (=> b!4535509 (= e!2826183 e!2826181)))

(declare-fun res!1889615 () Bool)

(assert (=> b!4535509 (=> (not res!1889615) (not e!2826181))))

(assert (=> b!4535509 (= res!1889615 (isDefined!8463 (getValueByKey!1137 (toList!4391 lt!1710448) key!3287)))))

(declare-fun b!4535510 () Bool)

(assert (=> b!4535510 (= e!2826186 (keys!17648 lt!1710448))))

(declare-fun b!4535511 () Bool)

(assert (=> b!4535511 (= e!2826182 e!2826184)))

(declare-fun c!774501 () Bool)

(assert (=> b!4535511 (= c!774501 call!316195)))

(declare-fun b!4535512 () Bool)

(declare-fun Unit!97670 () Unit!97630)

(assert (=> b!4535512 (= e!2826184 Unit!97670)))

(declare-fun b!4535513 () Bool)

(assert (=> b!4535513 (= e!2826186 (getKeysList!487 (toList!4391 lt!1710448)))))

(declare-fun b!4535514 () Bool)

(assert (=> b!4535514 (= e!2826181 (contains!13515 (keys!17648 lt!1710448) key!3287))))

(declare-fun b!4535515 () Bool)

(assert (=> b!4535515 (= e!2826185 (not (contains!13515 (keys!17648 lt!1710448) key!3287)))))

(assert (= (and d!1400796 c!774500) b!4535507))

(assert (= (and d!1400796 (not c!774500)) b!4535511))

(assert (= (and b!4535511 c!774501) b!4535508))

(assert (= (and b!4535511 (not c!774501)) b!4535512))

(assert (= (or b!4535507 b!4535511) bm!316190))

(assert (= (and bm!316190 c!774502) b!4535513))

(assert (= (and bm!316190 (not c!774502)) b!4535510))

(assert (= (and d!1400796 res!1889614) b!4535515))

(assert (= (and d!1400796 (not res!1889613)) b!4535509))

(assert (= (and b!4535509 res!1889615) b!4535514))

(assert (=> b!4535514 m!5297061))

(assert (=> b!4535514 m!5297061))

(declare-fun m!5297315 () Bool)

(assert (=> b!4535514 m!5297315))

(declare-fun m!5297317 () Bool)

(assert (=> b!4535508 m!5297317))

(declare-fun m!5297319 () Bool)

(assert (=> b!4535508 m!5297319))

(assert (=> b!4535510 m!5297061))

(assert (=> b!4535515 m!5297061))

(assert (=> b!4535515 m!5297061))

(assert (=> b!4535515 m!5297315))

(declare-fun m!5297321 () Bool)

(assert (=> b!4535509 m!5297321))

(assert (=> b!4535509 m!5297321))

(declare-fun m!5297323 () Bool)

(assert (=> b!4535509 m!5297323))

(declare-fun m!5297325 () Bool)

(assert (=> bm!316190 m!5297325))

(declare-fun m!5297327 () Bool)

(assert (=> b!4535513 m!5297327))

(declare-fun m!5297329 () Bool)

(assert (=> b!4535507 m!5297329))

(assert (=> b!4535507 m!5297321))

(assert (=> b!4535507 m!5297321))

(assert (=> b!4535507 m!5297323))

(declare-fun m!5297331 () Bool)

(assert (=> b!4535507 m!5297331))

(assert (=> d!1400796 m!5297317))

(assert (=> b!4535184 d!1400796))

(declare-fun bs!871721 () Bool)

(declare-fun d!1400798 () Bool)

(assert (= bs!871721 (and d!1400798 d!1400702)))

(declare-fun lambda!175338 () Int)

(assert (=> bs!871721 (= lambda!175338 lambda!175303)))

(declare-fun bs!871722 () Bool)

(assert (= bs!871722 (and d!1400798 d!1400794)))

(assert (=> bs!871722 (= lambda!175338 lambda!175332)))

(declare-fun bs!871723 () Bool)

(assert (= bs!871723 (and d!1400798 d!1400780)))

(assert (=> bs!871723 (= lambda!175338 lambda!175325)))

(declare-fun bs!871724 () Bool)

(assert (= bs!871724 (and d!1400798 b!4535199)))

(assert (=> bs!871724 (not (= lambda!175338 lambda!175214))))

(declare-fun bs!871725 () Bool)

(assert (= bs!871725 (and d!1400798 d!1400704)))

(assert (=> bs!871725 (not (= lambda!175338 lambda!175306))))

(declare-fun bs!871726 () Bool)

(assert (= bs!871726 (and d!1400798 d!1400786)))

(assert (=> bs!871726 (= lambda!175338 lambda!175330)))

(declare-fun bs!871727 () Bool)

(assert (= bs!871727 (and d!1400798 d!1400790)))

(assert (=> bs!871727 (= lambda!175338 lambda!175331)))

(declare-fun bs!871728 () Bool)

(assert (= bs!871728 (and d!1400798 d!1400748)))

(assert (=> bs!871728 (= lambda!175338 lambda!175316)))

(declare-fun bs!871729 () Bool)

(assert (= bs!871729 (and d!1400798 d!1400708)))

(assert (=> bs!871729 (= lambda!175338 lambda!175309)))

(declare-fun bs!871730 () Bool)

(assert (= bs!871730 (and d!1400798 start!449928)))

(assert (=> bs!871730 (= lambda!175338 lambda!175213)))

(declare-fun bs!871731 () Bool)

(assert (= bs!871731 (and d!1400798 d!1400752)))

(assert (=> bs!871731 (= lambda!175338 lambda!175322)))

(assert (=> d!1400798 (contains!13513 (extractMap!1248 (toList!4392 lt!1710421)) key!3287)))

(declare-fun lt!1710835 () Unit!97630)

(declare-fun choose!29819 (ListLongMap!3023 K!12120 Hashable!5587) Unit!97630)

(assert (=> d!1400798 (= lt!1710835 (choose!29819 lt!1710421 key!3287 hashF!1107))))

(assert (=> d!1400798 (forall!10329 (toList!4392 lt!1710421) lambda!175338)))

(assert (=> d!1400798 (= (lemmaListContainsThenExtractedMapContains!162 lt!1710421 key!3287 hashF!1107) lt!1710835)))

(declare-fun bs!871732 () Bool)

(assert (= bs!871732 d!1400798))

(assert (=> bs!871732 m!5296627))

(assert (=> bs!871732 m!5296627))

(declare-fun m!5297351 () Bool)

(assert (=> bs!871732 m!5297351))

(declare-fun m!5297353 () Bool)

(assert (=> bs!871732 m!5297353))

(declare-fun m!5297355 () Bool)

(assert (=> bs!871732 m!5297355))

(assert (=> b!4535184 d!1400798))

(declare-fun d!1400812 () Bool)

(assert (=> d!1400812 (= (eq!649 lt!1710439 lt!1710422) (= (content!8420 (toList!4391 lt!1710439)) (content!8420 (toList!4391 lt!1710422))))))

(declare-fun bs!871733 () Bool)

(assert (= bs!871733 d!1400812))

(declare-fun m!5297357 () Bool)

(assert (=> bs!871733 m!5297357))

(assert (=> bs!871733 m!5296657))

(assert (=> b!4535175 d!1400812))

(declare-fun d!1400814 () Bool)

(assert (=> d!1400814 (= (eq!649 lt!1710430 lt!1710422) (= (content!8420 (toList!4391 lt!1710430)) (content!8420 (toList!4391 lt!1710422))))))

(declare-fun bs!871734 () Bool)

(assert (= bs!871734 d!1400814))

(declare-fun m!5297359 () Bool)

(assert (=> bs!871734 m!5297359))

(assert (=> bs!871734 m!5296657))

(assert (=> b!4535175 d!1400814))

(declare-fun bs!871735 () Bool)

(declare-fun b!4535545 () Bool)

(assert (= bs!871735 (and b!4535545 d!1400724)))

(declare-fun lambda!175339 () Int)

(assert (=> bs!871735 (not (= lambda!175339 lambda!175312))))

(declare-fun bs!871736 () Bool)

(assert (= bs!871736 (and b!4535545 b!4535309)))

(assert (=> bs!871736 (= (= lt!1710429 lt!1710578) (= lambda!175339 lambda!175267))))

(declare-fun bs!871737 () Bool)

(assert (= bs!871737 (and b!4535545 b!4535199)))

(assert (=> bs!871737 (not (= lambda!175339 lambda!175215))))

(declare-fun bs!871738 () Bool)

(assert (= bs!871738 (and b!4535545 d!1400628)))

(assert (=> bs!871738 (= (= lt!1710429 lt!1710589) (= lambda!175339 lambda!175268))))

(assert (=> bs!871736 (= (= lt!1710429 lt!1710448) (= lambda!175339 lambda!175266))))

(declare-fun bs!871739 () Bool)

(assert (= bs!871739 (and b!4535545 b!4535312)))

(assert (=> bs!871739 (= (= lt!1710429 lt!1710448) (= lambda!175339 lambda!175265))))

(assert (=> b!4535545 true))

(declare-fun bs!871740 () Bool)

(declare-fun b!4535542 () Bool)

(assert (= bs!871740 (and b!4535542 d!1400724)))

(declare-fun lambda!175340 () Int)

(assert (=> bs!871740 (not (= lambda!175340 lambda!175312))))

(declare-fun bs!871741 () Bool)

(assert (= bs!871741 (and b!4535542 b!4535309)))

(assert (=> bs!871741 (= (= lt!1710429 lt!1710578) (= lambda!175340 lambda!175267))))

(declare-fun bs!871742 () Bool)

(assert (= bs!871742 (and b!4535542 d!1400628)))

(assert (=> bs!871742 (= (= lt!1710429 lt!1710589) (= lambda!175340 lambda!175268))))

(declare-fun bs!871743 () Bool)

(assert (= bs!871743 (and b!4535542 b!4535199)))

(assert (=> bs!871743 (not (= lambda!175340 lambda!175215))))

(declare-fun bs!871744 () Bool)

(assert (= bs!871744 (and b!4535542 b!4535545)))

(assert (=> bs!871744 (= lambda!175340 lambda!175339)))

(assert (=> bs!871741 (= (= lt!1710429 lt!1710448) (= lambda!175340 lambda!175266))))

(declare-fun bs!871745 () Bool)

(assert (= bs!871745 (and b!4535542 b!4535312)))

(assert (=> bs!871745 (= (= lt!1710429 lt!1710448) (= lambda!175340 lambda!175265))))

(assert (=> b!4535542 true))

(declare-fun lambda!175341 () Int)

(assert (=> bs!871740 (not (= lambda!175341 lambda!175312))))

(declare-fun lt!1710840 () ListMap!3653)

(assert (=> bs!871741 (= (= lt!1710840 lt!1710578) (= lambda!175341 lambda!175267))))

(assert (=> b!4535542 (= (= lt!1710840 lt!1710429) (= lambda!175341 lambda!175340))))

(assert (=> bs!871742 (= (= lt!1710840 lt!1710589) (= lambda!175341 lambda!175268))))

(assert (=> bs!871743 (not (= lambda!175341 lambda!175215))))

(assert (=> bs!871744 (= (= lt!1710840 lt!1710429) (= lambda!175341 lambda!175339))))

(assert (=> bs!871741 (= (= lt!1710840 lt!1710448) (= lambda!175341 lambda!175266))))

(assert (=> bs!871745 (= (= lt!1710840 lt!1710448) (= lambda!175341 lambda!175265))))

(assert (=> b!4535542 true))

(declare-fun bs!871746 () Bool)

(declare-fun d!1400816 () Bool)

(assert (= bs!871746 (and d!1400816 d!1400724)))

(declare-fun lambda!175344 () Int)

(assert (=> bs!871746 (not (= lambda!175344 lambda!175312))))

(declare-fun bs!871747 () Bool)

(assert (= bs!871747 (and d!1400816 b!4535309)))

(declare-fun lt!1710851 () ListMap!3653)

(assert (=> bs!871747 (= (= lt!1710851 lt!1710578) (= lambda!175344 lambda!175267))))

(declare-fun bs!871748 () Bool)

(assert (= bs!871748 (and d!1400816 b!4535542)))

(assert (=> bs!871748 (= (= lt!1710851 lt!1710429) (= lambda!175344 lambda!175340))))

(declare-fun bs!871749 () Bool)

(assert (= bs!871749 (and d!1400816 d!1400628)))

(assert (=> bs!871749 (= (= lt!1710851 lt!1710589) (= lambda!175344 lambda!175268))))

(assert (=> bs!871748 (= (= lt!1710851 lt!1710840) (= lambda!175344 lambda!175341))))

(declare-fun bs!871750 () Bool)

(assert (= bs!871750 (and d!1400816 b!4535199)))

(assert (=> bs!871750 (not (= lambda!175344 lambda!175215))))

(declare-fun bs!871751 () Bool)

(assert (= bs!871751 (and d!1400816 b!4535545)))

(assert (=> bs!871751 (= (= lt!1710851 lt!1710429) (= lambda!175344 lambda!175339))))

(assert (=> bs!871747 (= (= lt!1710851 lt!1710448) (= lambda!175344 lambda!175266))))

(declare-fun bs!871752 () Bool)

(assert (= bs!871752 (and d!1400816 b!4535312)))

(assert (=> bs!871752 (= (= lt!1710851 lt!1710448) (= lambda!175344 lambda!175265))))

(assert (=> d!1400816 true))

(declare-fun bm!316191 () Bool)

(declare-fun call!316196 () Unit!97630)

(assert (=> bm!316191 (= call!316196 (lemmaContainsAllItsOwnKeys!359 lt!1710429))))

(declare-fun bm!316192 () Bool)

(declare-fun call!316197 () Bool)

(declare-fun c!774509 () Bool)

(assert (=> bm!316192 (= call!316197 (forall!10330 (toList!4391 lt!1710429) (ite c!774509 lambda!175339 lambda!175341)))))

(declare-fun e!2826209 () ListMap!3653)

(assert (=> b!4535542 (= e!2826209 lt!1710840)))

(declare-fun lt!1710842 () ListMap!3653)

(assert (=> b!4535542 (= lt!1710842 (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))))))

(assert (=> b!4535542 (= lt!1710840 (addToMapMapFromBucket!719 (t!357818 (_2!28896 lt!1710445)) (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun lt!1710853 () Unit!97630)

(assert (=> b!4535542 (= lt!1710853 call!316196)))

(assert (=> b!4535542 (forall!10330 (toList!4391 lt!1710429) lambda!175340)))

(declare-fun lt!1710848 () Unit!97630)

(assert (=> b!4535542 (= lt!1710848 lt!1710853)))

(assert (=> b!4535542 (forall!10330 (toList!4391 lt!1710842) lambda!175341)))

(declare-fun lt!1710843 () Unit!97630)

(declare-fun Unit!97682 () Unit!97630)

(assert (=> b!4535542 (= lt!1710843 Unit!97682)))

(assert (=> b!4535542 (forall!10330 (t!357818 (_2!28896 lt!1710445)) lambda!175341)))

(declare-fun lt!1710845 () Unit!97630)

(declare-fun Unit!97683 () Unit!97630)

(assert (=> b!4535542 (= lt!1710845 Unit!97683)))

(declare-fun lt!1710839 () Unit!97630)

(declare-fun Unit!97684 () Unit!97630)

(assert (=> b!4535542 (= lt!1710839 Unit!97684)))

(declare-fun lt!1710857 () Unit!97630)

(assert (=> b!4535542 (= lt!1710857 (forallContained!2591 (toList!4391 lt!1710842) lambda!175341 (h!56607 (_2!28896 lt!1710445))))))

(assert (=> b!4535542 (contains!13513 lt!1710842 (_1!28895 (h!56607 (_2!28896 lt!1710445))))))

(declare-fun lt!1710837 () Unit!97630)

(declare-fun Unit!97685 () Unit!97630)

(assert (=> b!4535542 (= lt!1710837 Unit!97685)))

(assert (=> b!4535542 (contains!13513 lt!1710840 (_1!28895 (h!56607 (_2!28896 lt!1710445))))))

(declare-fun lt!1710849 () Unit!97630)

(declare-fun Unit!97686 () Unit!97630)

(assert (=> b!4535542 (= lt!1710849 Unit!97686)))

(assert (=> b!4535542 (forall!10330 (_2!28896 lt!1710445) lambda!175341)))

(declare-fun lt!1710852 () Unit!97630)

(declare-fun Unit!97687 () Unit!97630)

(assert (=> b!4535542 (= lt!1710852 Unit!97687)))

(assert (=> b!4535542 (forall!10330 (toList!4391 lt!1710842) lambda!175341)))

(declare-fun lt!1710838 () Unit!97630)

(declare-fun Unit!97688 () Unit!97630)

(assert (=> b!4535542 (= lt!1710838 Unit!97688)))

(declare-fun lt!1710841 () Unit!97630)

(declare-fun Unit!97689 () Unit!97630)

(assert (=> b!4535542 (= lt!1710841 Unit!97689)))

(declare-fun lt!1710854 () Unit!97630)

(assert (=> b!4535542 (= lt!1710854 (addForallContainsKeyThenBeforeAdding!359 lt!1710429 lt!1710840 (_1!28895 (h!56607 (_2!28896 lt!1710445))) (_2!28895 (h!56607 (_2!28896 lt!1710445)))))))

(assert (=> b!4535542 (forall!10330 (toList!4391 lt!1710429) lambda!175341)))

(declare-fun lt!1710846 () Unit!97630)

(assert (=> b!4535542 (= lt!1710846 lt!1710854)))

(assert (=> b!4535542 (forall!10330 (toList!4391 lt!1710429) lambda!175341)))

(declare-fun lt!1710844 () Unit!97630)

(declare-fun Unit!97691 () Unit!97630)

(assert (=> b!4535542 (= lt!1710844 Unit!97691)))

(declare-fun res!1889630 () Bool)

(declare-fun call!316198 () Bool)

(assert (=> b!4535542 (= res!1889630 call!316198)))

(declare-fun e!2826208 () Bool)

(assert (=> b!4535542 (=> (not res!1889630) (not e!2826208))))

(assert (=> b!4535542 e!2826208))

(declare-fun lt!1710847 () Unit!97630)

(declare-fun Unit!97692 () Unit!97630)

(assert (=> b!4535542 (= lt!1710847 Unit!97692)))

(declare-fun b!4535543 () Bool)

(declare-fun e!2826207 () Bool)

(assert (=> b!4535543 (= e!2826207 (invariantList!1039 (toList!4391 lt!1710851)))))

(declare-fun b!4535544 () Bool)

(declare-fun res!1889631 () Bool)

(assert (=> b!4535544 (=> (not res!1889631) (not e!2826207))))

(assert (=> b!4535544 (= res!1889631 (forall!10330 (toList!4391 lt!1710429) lambda!175344))))

(declare-fun bm!316193 () Bool)

(assert (=> bm!316193 (= call!316198 (forall!10330 (ite c!774509 (toList!4391 lt!1710429) (_2!28896 lt!1710445)) (ite c!774509 lambda!175339 lambda!175341)))))

(declare-fun b!4535546 () Bool)

(assert (=> b!4535546 (= e!2826208 call!316197)))

(assert (=> b!4535545 (= e!2826209 lt!1710429)))

(declare-fun lt!1710850 () Unit!97630)

(assert (=> b!4535545 (= lt!1710850 call!316196)))

(assert (=> b!4535545 call!316197))

(declare-fun lt!1710856 () Unit!97630)

(assert (=> b!4535545 (= lt!1710856 lt!1710850)))

(assert (=> b!4535545 call!316198))

(declare-fun lt!1710855 () Unit!97630)

(declare-fun Unit!97693 () Unit!97630)

(assert (=> b!4535545 (= lt!1710855 Unit!97693)))

(assert (=> d!1400816 e!2826207))

(declare-fun res!1889632 () Bool)

(assert (=> d!1400816 (=> (not res!1889632) (not e!2826207))))

(assert (=> d!1400816 (= res!1889632 (forall!10330 (_2!28896 lt!1710445) lambda!175344))))

(assert (=> d!1400816 (= lt!1710851 e!2826209)))

(assert (=> d!1400816 (= c!774509 ((_ is Nil!50732) (_2!28896 lt!1710445)))))

(assert (=> d!1400816 (noDuplicateKeys!1192 (_2!28896 lt!1710445))))

(assert (=> d!1400816 (= (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710429) lt!1710851)))

(assert (= (and d!1400816 c!774509) b!4535545))

(assert (= (and d!1400816 (not c!774509)) b!4535542))

(assert (= (and b!4535542 res!1889630) b!4535546))

(assert (= (or b!4535545 b!4535546) bm!316192))

(assert (= (or b!4535545 b!4535542) bm!316193))

(assert (= (or b!4535545 b!4535542) bm!316191))

(assert (= (and d!1400816 res!1889632) b!4535544))

(assert (= (and b!4535544 res!1889631) b!4535543))

(declare-fun m!5297375 () Bool)

(assert (=> b!4535543 m!5297375))

(declare-fun m!5297377 () Bool)

(assert (=> d!1400816 m!5297377))

(assert (=> d!1400816 m!5296623))

(declare-fun m!5297379 () Bool)

(assert (=> bm!316193 m!5297379))

(declare-fun m!5297381 () Bool)

(assert (=> b!4535542 m!5297381))

(declare-fun m!5297383 () Bool)

(assert (=> b!4535542 m!5297383))

(declare-fun m!5297385 () Bool)

(assert (=> b!4535542 m!5297385))

(declare-fun m!5297387 () Bool)

(assert (=> b!4535542 m!5297387))

(declare-fun m!5297389 () Bool)

(assert (=> b!4535542 m!5297389))

(declare-fun m!5297391 () Bool)

(assert (=> b!4535542 m!5297391))

(declare-fun m!5297395 () Bool)

(assert (=> b!4535542 m!5297395))

(assert (=> b!4535542 m!5297381))

(declare-fun m!5297399 () Bool)

(assert (=> b!4535542 m!5297399))

(assert (=> b!4535542 m!5297391))

(declare-fun m!5297403 () Bool)

(assert (=> b!4535542 m!5297403))

(declare-fun m!5297405 () Bool)

(assert (=> b!4535542 m!5297405))

(assert (=> b!4535542 m!5297383))

(declare-fun m!5297407 () Bool)

(assert (=> b!4535542 m!5297407))

(declare-fun m!5297409 () Bool)

(assert (=> bm!316191 m!5297409))

(declare-fun m!5297413 () Bool)

(assert (=> bm!316192 m!5297413))

(declare-fun m!5297417 () Bool)

(assert (=> b!4535544 m!5297417))

(assert (=> b!4535175 d!1400816))

(declare-fun d!1400826 () Bool)

(assert (=> d!1400826 (eq!649 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710415) (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710429))))

(declare-fun lt!1710872 () Unit!97630)

(declare-fun choose!29820 (ListMap!3653 ListMap!3653 List!50856) Unit!97630)

(assert (=> d!1400826 (= lt!1710872 (choose!29820 lt!1710415 lt!1710429 (_2!28896 lt!1710445)))))

(assert (=> d!1400826 (noDuplicateKeys!1192 (_2!28896 lt!1710445))))

(assert (=> d!1400826 (= (lemmaAddToMapFromBucketPreservesEquivalence!68 lt!1710415 lt!1710429 (_2!28896 lt!1710445)) lt!1710872)))

(declare-fun bs!871773 () Bool)

(assert (= bs!871773 d!1400826))

(assert (=> bs!871773 m!5296605))

(assert (=> bs!871773 m!5296569))

(declare-fun m!5297441 () Bool)

(assert (=> bs!871773 m!5297441))

(assert (=> bs!871773 m!5296623))

(declare-fun m!5297443 () Bool)

(assert (=> bs!871773 m!5297443))

(assert (=> bs!871773 m!5296605))

(assert (=> bs!871773 m!5296569))

(assert (=> b!4535175 d!1400826))

(declare-fun d!1400842 () Bool)

(declare-fun lt!1710875 () Bool)

(declare-fun content!8425 (List!50857) (InoxSet tuple2!51204))

(assert (=> d!1400842 (= lt!1710875 (select (content!8425 (t!357819 (toList!4392 lm!1477))) lt!1710441))))

(declare-fun e!2826228 () Bool)

(assert (=> d!1400842 (= lt!1710875 e!2826228)))

(declare-fun res!1889645 () Bool)

(assert (=> d!1400842 (=> (not res!1889645) (not e!2826228))))

(assert (=> d!1400842 (= res!1889645 ((_ is Cons!50733) (t!357819 (toList!4392 lm!1477))))))

(assert (=> d!1400842 (= (contains!13511 (t!357819 (toList!4392 lm!1477)) lt!1710441) lt!1710875)))

(declare-fun b!4535570 () Bool)

(declare-fun e!2826229 () Bool)

(assert (=> b!4535570 (= e!2826228 e!2826229)))

(declare-fun res!1889644 () Bool)

(assert (=> b!4535570 (=> res!1889644 e!2826229)))

(assert (=> b!4535570 (= res!1889644 (= (h!56608 (t!357819 (toList!4392 lm!1477))) lt!1710441))))

(declare-fun b!4535571 () Bool)

(assert (=> b!4535571 (= e!2826229 (contains!13511 (t!357819 (t!357819 (toList!4392 lm!1477))) lt!1710441))))

(assert (= (and d!1400842 res!1889645) b!4535570))

(assert (= (and b!4535570 (not res!1889644)) b!4535571))

(declare-fun m!5297445 () Bool)

(assert (=> d!1400842 m!5297445))

(declare-fun m!5297447 () Bool)

(assert (=> d!1400842 m!5297447))

(declare-fun m!5297449 () Bool)

(assert (=> b!4535571 m!5297449))

(assert (=> b!4535197 d!1400842))

(declare-fun d!1400844 () Bool)

(assert (=> d!1400844 (= (eq!649 lt!1710422 (-!418 lt!1710447 key!3287)) (= (content!8420 (toList!4391 lt!1710422)) (content!8420 (toList!4391 (-!418 lt!1710447 key!3287)))))))

(declare-fun bs!871774 () Bool)

(assert (= bs!871774 d!1400844))

(assert (=> bs!871774 m!5296657))

(declare-fun m!5297451 () Bool)

(assert (=> bs!871774 m!5297451))

(assert (=> b!4535176 d!1400844))

(declare-fun d!1400846 () Bool)

(declare-fun e!2826230 () Bool)

(assert (=> d!1400846 e!2826230))

(declare-fun res!1889646 () Bool)

(assert (=> d!1400846 (=> (not res!1889646) (not e!2826230))))

(declare-fun lt!1710876 () ListMap!3653)

(assert (=> d!1400846 (= res!1889646 (not (contains!13513 lt!1710876 key!3287)))))

(assert (=> d!1400846 (= lt!1710876 (ListMap!3654 (removePresrvNoDuplicatedKeys!162 (toList!4391 lt!1710447) key!3287)))))

(assert (=> d!1400846 (= (-!418 lt!1710447 key!3287) lt!1710876)))

(declare-fun b!4535572 () Bool)

(assert (=> b!4535572 (= e!2826230 (= ((_ map and) (content!8421 (keys!17648 lt!1710447)) ((_ map not) (store ((as const (Array K!12120 Bool)) false) key!3287 true))) (content!8421 (keys!17648 lt!1710876))))))

(assert (= (and d!1400846 res!1889646) b!4535572))

(declare-fun m!5297453 () Bool)

(assert (=> d!1400846 m!5297453))

(declare-fun m!5297455 () Bool)

(assert (=> d!1400846 m!5297455))

(assert (=> b!4535572 m!5296945))

(assert (=> b!4535572 m!5296667))

(declare-fun m!5297457 () Bool)

(assert (=> b!4535572 m!5297457))

(declare-fun m!5297459 () Bool)

(assert (=> b!4535572 m!5297459))

(assert (=> b!4535572 m!5296945))

(declare-fun m!5297461 () Bool)

(assert (=> b!4535572 m!5297461))

(assert (=> b!4535572 m!5297457))

(assert (=> b!4535176 d!1400846))

(declare-fun d!1400848 () Bool)

(declare-fun hash!2899 (Hashable!5587 K!12120) (_ BitVec 64))

(assert (=> d!1400848 (= (hash!2895 hashF!1107 key!3287) (hash!2899 hashF!1107 key!3287))))

(declare-fun bs!871775 () Bool)

(assert (= bs!871775 d!1400848))

(declare-fun m!5297463 () Bool)

(assert (=> bs!871775 m!5297463))

(assert (=> b!4535198 d!1400848))

(declare-fun d!1400850 () Bool)

(declare-fun lt!1710877 () Bool)

(assert (=> d!1400850 (= lt!1710877 (select (content!8425 (toList!4392 lm!1477)) lt!1710441))))

(declare-fun e!2826231 () Bool)

(assert (=> d!1400850 (= lt!1710877 e!2826231)))

(declare-fun res!1889648 () Bool)

(assert (=> d!1400850 (=> (not res!1889648) (not e!2826231))))

(assert (=> d!1400850 (= res!1889648 ((_ is Cons!50733) (toList!4392 lm!1477)))))

(assert (=> d!1400850 (= (contains!13511 (toList!4392 lm!1477) lt!1710441) lt!1710877)))

(declare-fun b!4535573 () Bool)

(declare-fun e!2826232 () Bool)

(assert (=> b!4535573 (= e!2826231 e!2826232)))

(declare-fun res!1889647 () Bool)

(assert (=> b!4535573 (=> res!1889647 e!2826232)))

(assert (=> b!4535573 (= res!1889647 (= (h!56608 (toList!4392 lm!1477)) lt!1710441))))

(declare-fun b!4535574 () Bool)

(assert (=> b!4535574 (= e!2826232 (contains!13511 (t!357819 (toList!4392 lm!1477)) lt!1710441))))

(assert (= (and d!1400850 res!1889648) b!4535573))

(assert (= (and b!4535573 (not res!1889647)) b!4535574))

(declare-fun m!5297465 () Bool)

(assert (=> d!1400850 m!5297465))

(declare-fun m!5297467 () Bool)

(assert (=> d!1400850 m!5297467))

(assert (=> b!4535574 m!5296621))

(assert (=> b!4535177 d!1400850))

(declare-fun d!1400852 () Bool)

(declare-fun lt!1710880 () List!50856)

(assert (=> d!1400852 (not (containsKey!1856 lt!1710880 key!3287))))

(declare-fun e!2826238 () List!50856)

(assert (=> d!1400852 (= lt!1710880 e!2826238)))

(declare-fun c!774515 () Bool)

(assert (=> d!1400852 (= c!774515 (and ((_ is Cons!50732) lt!1710434) (= (_1!28895 (h!56607 lt!1710434)) key!3287)))))

(assert (=> d!1400852 (noDuplicateKeys!1192 lt!1710434)))

(assert (=> d!1400852 (= (removePairForKey!819 lt!1710434 key!3287) lt!1710880)))

(declare-fun b!4535585 () Bool)

(declare-fun e!2826237 () List!50856)

(assert (=> b!4535585 (= e!2826237 (Cons!50732 (h!56607 lt!1710434) (removePairForKey!819 (t!357818 lt!1710434) key!3287)))))

(declare-fun b!4535584 () Bool)

(assert (=> b!4535584 (= e!2826238 e!2826237)))

(declare-fun c!774516 () Bool)

(assert (=> b!4535584 (= c!774516 ((_ is Cons!50732) lt!1710434))))

(declare-fun b!4535583 () Bool)

(assert (=> b!4535583 (= e!2826238 (t!357818 lt!1710434))))

(declare-fun b!4535586 () Bool)

(assert (=> b!4535586 (= e!2826237 Nil!50732)))

(assert (= (and d!1400852 c!774515) b!4535583))

(assert (= (and d!1400852 (not c!774515)) b!4535584))

(assert (= (and b!4535584 c!774516) b!4535585))

(assert (= (and b!4535584 (not c!774516)) b!4535586))

(declare-fun m!5297469 () Bool)

(assert (=> d!1400852 m!5297469))

(declare-fun m!5297471 () Bool)

(assert (=> d!1400852 m!5297471))

(declare-fun m!5297473 () Bool)

(assert (=> b!4535585 m!5297473))

(assert (=> b!4535177 d!1400852))

(declare-fun bs!871776 () Bool)

(declare-fun d!1400854 () Bool)

(assert (= bs!871776 (and d!1400854 d!1400702)))

(declare-fun lambda!175348 () Int)

(assert (=> bs!871776 (= lambda!175348 lambda!175303)))

(declare-fun bs!871777 () Bool)

(assert (= bs!871777 (and d!1400854 d!1400798)))

(assert (=> bs!871777 (= lambda!175348 lambda!175338)))

(declare-fun bs!871778 () Bool)

(assert (= bs!871778 (and d!1400854 d!1400794)))

(assert (=> bs!871778 (= lambda!175348 lambda!175332)))

(declare-fun bs!871779 () Bool)

(assert (= bs!871779 (and d!1400854 d!1400780)))

(assert (=> bs!871779 (= lambda!175348 lambda!175325)))

(declare-fun bs!871780 () Bool)

(assert (= bs!871780 (and d!1400854 b!4535199)))

(assert (=> bs!871780 (not (= lambda!175348 lambda!175214))))

(declare-fun bs!871781 () Bool)

(assert (= bs!871781 (and d!1400854 d!1400704)))

(assert (=> bs!871781 (not (= lambda!175348 lambda!175306))))

(declare-fun bs!871782 () Bool)

(assert (= bs!871782 (and d!1400854 d!1400786)))

(assert (=> bs!871782 (= lambda!175348 lambda!175330)))

(declare-fun bs!871783 () Bool)

(assert (= bs!871783 (and d!1400854 d!1400790)))

(assert (=> bs!871783 (= lambda!175348 lambda!175331)))

(declare-fun bs!871784 () Bool)

(assert (= bs!871784 (and d!1400854 d!1400748)))

(assert (=> bs!871784 (= lambda!175348 lambda!175316)))

(declare-fun bs!871785 () Bool)

(assert (= bs!871785 (and d!1400854 d!1400708)))

(assert (=> bs!871785 (= lambda!175348 lambda!175309)))

(declare-fun bs!871786 () Bool)

(assert (= bs!871786 (and d!1400854 start!449928)))

(assert (=> bs!871786 (= lambda!175348 lambda!175213)))

(declare-fun bs!871787 () Bool)

(assert (= bs!871787 (and d!1400854 d!1400752)))

(assert (=> bs!871787 (= lambda!175348 lambda!175322)))

(assert (=> d!1400854 (contains!13512 lm!1477 (hash!2895 hashF!1107 key!3287))))

(declare-fun lt!1710883 () Unit!97630)

(declare-fun choose!29821 (ListLongMap!3023 K!12120 Hashable!5587) Unit!97630)

(assert (=> d!1400854 (= lt!1710883 (choose!29821 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1400854 (forall!10329 (toList!4392 lm!1477) lambda!175348)))

(assert (=> d!1400854 (= (lemmaInGenMapThenLongMapContainsHash!266 lm!1477 key!3287 hashF!1107) lt!1710883)))

(declare-fun bs!871788 () Bool)

(assert (= bs!871788 d!1400854))

(assert (=> bs!871788 m!5296573))

(assert (=> bs!871788 m!5296573))

(declare-fun m!5297475 () Bool)

(assert (=> bs!871788 m!5297475))

(declare-fun m!5297477 () Bool)

(assert (=> bs!871788 m!5297477))

(declare-fun m!5297479 () Bool)

(assert (=> bs!871788 m!5297479))

(assert (=> b!4535177 d!1400854))

(declare-fun d!1400856 () Bool)

(assert (=> d!1400856 (contains!13511 (toList!4392 lm!1477) (tuple2!51205 hash!344 lt!1710434))))

(declare-fun lt!1710886 () Unit!97630)

(declare-fun choose!29822 (List!50857 (_ BitVec 64) List!50856) Unit!97630)

(assert (=> d!1400856 (= lt!1710886 (choose!29822 (toList!4392 lm!1477) hash!344 lt!1710434))))

(declare-fun e!2826241 () Bool)

(assert (=> d!1400856 e!2826241))

(declare-fun res!1889651 () Bool)

(assert (=> d!1400856 (=> (not res!1889651) (not e!2826241))))

(assert (=> d!1400856 (= res!1889651 (isStrictlySorted!452 (toList!4392 lm!1477)))))

(assert (=> d!1400856 (= (lemmaGetValueByKeyImpliesContainsTuple!704 (toList!4392 lm!1477) hash!344 lt!1710434) lt!1710886)))

(declare-fun b!4535589 () Bool)

(assert (=> b!4535589 (= e!2826241 (= (getValueByKey!1136 (toList!4392 lm!1477) hash!344) (Some!11185 lt!1710434)))))

(assert (= (and d!1400856 res!1889651) b!4535589))

(declare-fun m!5297481 () Bool)

(assert (=> d!1400856 m!5297481))

(declare-fun m!5297483 () Bool)

(assert (=> d!1400856 m!5297483))

(assert (=> d!1400856 m!5297035))

(declare-fun m!5297485 () Bool)

(assert (=> b!4535589 m!5297485))

(assert (=> b!4535177 d!1400856))

(declare-fun d!1400858 () Bool)

(assert (=> d!1400858 (= (apply!11929 lm!1477 hash!344) (get!16667 (getValueByKey!1136 (toList!4392 lm!1477) hash!344)))))

(declare-fun bs!871789 () Bool)

(assert (= bs!871789 d!1400858))

(assert (=> bs!871789 m!5297485))

(assert (=> bs!871789 m!5297485))

(declare-fun m!5297487 () Bool)

(assert (=> bs!871789 m!5297487))

(assert (=> b!4535177 d!1400858))

(declare-fun d!1400860 () Bool)

(assert (=> d!1400860 (dynLambda!21203 lambda!175213 lt!1710441)))

(declare-fun lt!1710887 () Unit!97630)

(assert (=> d!1400860 (= lt!1710887 (choose!29814 (toList!4392 lm!1477) lambda!175213 lt!1710441))))

(declare-fun e!2826242 () Bool)

(assert (=> d!1400860 e!2826242))

(declare-fun res!1889652 () Bool)

(assert (=> d!1400860 (=> (not res!1889652) (not e!2826242))))

(assert (=> d!1400860 (= res!1889652 (forall!10329 (toList!4392 lm!1477) lambda!175213))))

(assert (=> d!1400860 (= (forallContained!2590 (toList!4392 lm!1477) lambda!175213 lt!1710441) lt!1710887)))

(declare-fun b!4535590 () Bool)

(assert (=> b!4535590 (= e!2826242 (contains!13511 (toList!4392 lm!1477) lt!1710441))))

(assert (= (and d!1400860 res!1889652) b!4535590))

(declare-fun b_lambda!157219 () Bool)

(assert (=> (not b_lambda!157219) (not d!1400860)))

(declare-fun m!5297489 () Bool)

(assert (=> d!1400860 m!5297489))

(declare-fun m!5297491 () Bool)

(assert (=> d!1400860 m!5297491))

(assert (=> d!1400860 m!5296617))

(assert (=> b!4535590 m!5296531))

(assert (=> b!4535177 d!1400860))

(declare-fun d!1400862 () Bool)

(declare-fun e!2826244 () Bool)

(assert (=> d!1400862 e!2826244))

(declare-fun res!1889653 () Bool)

(assert (=> d!1400862 (=> res!1889653 e!2826244)))

(declare-fun lt!1710890 () Bool)

(assert (=> d!1400862 (= res!1889653 (not lt!1710890))))

(declare-fun lt!1710891 () Bool)

(assert (=> d!1400862 (= lt!1710890 lt!1710891)))

(declare-fun lt!1710889 () Unit!97630)

(declare-fun e!2826243 () Unit!97630)

(assert (=> d!1400862 (= lt!1710889 e!2826243)))

(declare-fun c!774517 () Bool)

(assert (=> d!1400862 (= c!774517 lt!1710891)))

(assert (=> d!1400862 (= lt!1710891 (containsKey!1858 (toList!4392 lm!1477) lt!1710423))))

(assert (=> d!1400862 (= (contains!13512 lm!1477 lt!1710423) lt!1710890)))

(declare-fun b!4535591 () Bool)

(declare-fun lt!1710888 () Unit!97630)

(assert (=> b!4535591 (= e!2826243 lt!1710888)))

(assert (=> b!4535591 (= lt!1710888 (lemmaContainsKeyImpliesGetValueByKeyDefined!1039 (toList!4392 lm!1477) lt!1710423))))

(assert (=> b!4535591 (isDefined!8462 (getValueByKey!1136 (toList!4392 lm!1477) lt!1710423))))

(declare-fun b!4535592 () Bool)

(declare-fun Unit!97705 () Unit!97630)

(assert (=> b!4535592 (= e!2826243 Unit!97705)))

(declare-fun b!4535593 () Bool)

(assert (=> b!4535593 (= e!2826244 (isDefined!8462 (getValueByKey!1136 (toList!4392 lm!1477) lt!1710423)))))

(assert (= (and d!1400862 c!774517) b!4535591))

(assert (= (and d!1400862 (not c!774517)) b!4535592))

(assert (= (and d!1400862 (not res!1889653)) b!4535593))

(declare-fun m!5297493 () Bool)

(assert (=> d!1400862 m!5297493))

(declare-fun m!5297495 () Bool)

(assert (=> b!4535591 m!5297495))

(declare-fun m!5297497 () Bool)

(assert (=> b!4535591 m!5297497))

(assert (=> b!4535591 m!5297497))

(declare-fun m!5297499 () Bool)

(assert (=> b!4535591 m!5297499))

(assert (=> b!4535593 m!5297497))

(assert (=> b!4535593 m!5297497))

(assert (=> b!4535593 m!5297499))

(assert (=> b!4535177 d!1400862))

(declare-fun b!4535610 () Bool)

(declare-fun e!2826256 () Bool)

(declare-fun lt!1710894 () Option!11183)

(declare-fun contains!13517 (List!50856 tuple2!51202) Bool)

(assert (=> b!4535610 (= e!2826256 (contains!13517 (_2!28896 lt!1710445) (get!16666 lt!1710894)))))

(declare-fun b!4535611 () Bool)

(declare-fun e!2826259 () Option!11183)

(declare-fun e!2826257 () Option!11183)

(assert (=> b!4535611 (= e!2826259 e!2826257)))

(declare-fun c!774522 () Bool)

(assert (=> b!4535611 (= c!774522 ((_ is Cons!50732) (_2!28896 lt!1710445)))))

(declare-fun b!4535612 () Bool)

(declare-fun res!1889663 () Bool)

(assert (=> b!4535612 (=> (not res!1889663) (not e!2826256))))

(assert (=> b!4535612 (= res!1889663 (= (_1!28895 (get!16666 lt!1710894)) key!3287))))

(declare-fun b!4535613 () Bool)

(assert (=> b!4535613 (= e!2826257 (getPair!208 (t!357818 (_2!28896 lt!1710445)) key!3287))))

(declare-fun b!4535614 () Bool)

(assert (=> b!4535614 (= e!2826259 (Some!11182 (h!56607 (_2!28896 lt!1710445))))))

(declare-fun b!4535615 () Bool)

(declare-fun e!2826255 () Bool)

(assert (=> b!4535615 (= e!2826255 (not (containsKey!1856 (_2!28896 lt!1710445) key!3287)))))

(declare-fun b!4535616 () Bool)

(assert (=> b!4535616 (= e!2826257 None!11182)))

(declare-fun d!1400864 () Bool)

(declare-fun e!2826258 () Bool)

(assert (=> d!1400864 e!2826258))

(declare-fun res!1889662 () Bool)

(assert (=> d!1400864 (=> res!1889662 e!2826258)))

(assert (=> d!1400864 (= res!1889662 e!2826255)))

(declare-fun res!1889665 () Bool)

(assert (=> d!1400864 (=> (not res!1889665) (not e!2826255))))

(declare-fun isEmpty!28735 (Option!11183) Bool)

(assert (=> d!1400864 (= res!1889665 (isEmpty!28735 lt!1710894))))

(assert (=> d!1400864 (= lt!1710894 e!2826259)))

(declare-fun c!774523 () Bool)

(assert (=> d!1400864 (= c!774523 (and ((_ is Cons!50732) (_2!28896 lt!1710445)) (= (_1!28895 (h!56607 (_2!28896 lt!1710445))) key!3287)))))

(assert (=> d!1400864 (noDuplicateKeys!1192 (_2!28896 lt!1710445))))

(assert (=> d!1400864 (= (getPair!208 (_2!28896 lt!1710445) key!3287) lt!1710894)))

(declare-fun b!4535617 () Bool)

(assert (=> b!4535617 (= e!2826258 e!2826256)))

(declare-fun res!1889664 () Bool)

(assert (=> b!4535617 (=> (not res!1889664) (not e!2826256))))

(declare-fun isDefined!8466 (Option!11183) Bool)

(assert (=> b!4535617 (= res!1889664 (isDefined!8466 lt!1710894))))

(assert (= (and d!1400864 c!774523) b!4535614))

(assert (= (and d!1400864 (not c!774523)) b!4535611))

(assert (= (and b!4535611 c!774522) b!4535613))

(assert (= (and b!4535611 (not c!774522)) b!4535616))

(assert (= (and d!1400864 res!1889665) b!4535615))

(assert (= (and d!1400864 (not res!1889662)) b!4535617))

(assert (= (and b!4535617 res!1889664) b!4535612))

(assert (= (and b!4535612 res!1889663) b!4535610))

(declare-fun m!5297501 () Bool)

(assert (=> b!4535610 m!5297501))

(assert (=> b!4535610 m!5297501))

(declare-fun m!5297503 () Bool)

(assert (=> b!4535610 m!5297503))

(declare-fun m!5297505 () Bool)

(assert (=> d!1400864 m!5297505))

(assert (=> d!1400864 m!5296623))

(declare-fun m!5297507 () Bool)

(assert (=> b!4535617 m!5297507))

(assert (=> b!4535612 m!5297501))

(assert (=> b!4535615 m!5296559))

(declare-fun m!5297509 () Bool)

(assert (=> b!4535613 m!5297509))

(assert (=> b!4535199 d!1400864))

(declare-fun d!1400866 () Bool)

(assert (=> d!1400866 (dynLambda!21203 lambda!175214 (h!56608 (toList!4392 lm!1477)))))

(declare-fun lt!1710895 () Unit!97630)

(assert (=> d!1400866 (= lt!1710895 (choose!29814 (toList!4392 lm!1477) lambda!175214 (h!56608 (toList!4392 lm!1477))))))

(declare-fun e!2826260 () Bool)

(assert (=> d!1400866 e!2826260))

(declare-fun res!1889666 () Bool)

(assert (=> d!1400866 (=> (not res!1889666) (not e!2826260))))

(assert (=> d!1400866 (= res!1889666 (forall!10329 (toList!4392 lm!1477) lambda!175214))))

(assert (=> d!1400866 (= (forallContained!2590 (toList!4392 lm!1477) lambda!175214 (h!56608 (toList!4392 lm!1477))) lt!1710895)))

(declare-fun b!4535618 () Bool)

(assert (=> b!4535618 (= e!2826260 (contains!13511 (toList!4392 lm!1477) (h!56608 (toList!4392 lm!1477))))))

(assert (= (and d!1400866 res!1889666) b!4535618))

(declare-fun b_lambda!157221 () Bool)

(assert (=> (not b_lambda!157221) (not d!1400866)))

(declare-fun m!5297511 () Bool)

(assert (=> d!1400866 m!5297511))

(declare-fun m!5297513 () Bool)

(assert (=> d!1400866 m!5297513))

(declare-fun m!5297515 () Bool)

(assert (=> d!1400866 m!5297515))

(assert (=> b!4535618 m!5297031))

(assert (=> b!4535199 d!1400866))

(declare-fun d!1400868 () Bool)

(declare-fun dynLambda!21205 (Int tuple2!51202) Bool)

(assert (=> d!1400868 (dynLambda!21205 lambda!175215 (tuple2!51203 key!3287 (_2!28895 (get!16666 lt!1710416))))))

(declare-fun lt!1710898 () Unit!97630)

(declare-fun choose!29824 (List!50856 Int tuple2!51202) Unit!97630)

(assert (=> d!1400868 (= lt!1710898 (choose!29824 (_2!28896 (h!56608 (toList!4392 lm!1477))) lambda!175215 (tuple2!51203 key!3287 (_2!28895 (get!16666 lt!1710416)))))))

(declare-fun e!2826263 () Bool)

(assert (=> d!1400868 e!2826263))

(declare-fun res!1889669 () Bool)

(assert (=> d!1400868 (=> (not res!1889669) (not e!2826263))))

(assert (=> d!1400868 (= res!1889669 (forall!10330 (_2!28896 (h!56608 (toList!4392 lm!1477))) lambda!175215))))

(assert (=> d!1400868 (= (forallContained!2591 (_2!28896 (h!56608 (toList!4392 lm!1477))) lambda!175215 (tuple2!51203 key!3287 (_2!28895 (get!16666 lt!1710416)))) lt!1710898)))

(declare-fun b!4535621 () Bool)

(assert (=> b!4535621 (= e!2826263 (contains!13517 (_2!28896 (h!56608 (toList!4392 lm!1477))) (tuple2!51203 key!3287 (_2!28895 (get!16666 lt!1710416)))))))

(assert (= (and d!1400868 res!1889669) b!4535621))

(declare-fun b_lambda!157223 () Bool)

(assert (=> (not b_lambda!157223) (not d!1400868)))

(declare-fun m!5297517 () Bool)

(assert (=> d!1400868 m!5297517))

(declare-fun m!5297519 () Bool)

(assert (=> d!1400868 m!5297519))

(declare-fun m!5297521 () Bool)

(assert (=> d!1400868 m!5297521))

(declare-fun m!5297523 () Bool)

(assert (=> b!4535621 m!5297523))

(assert (=> b!4535199 d!1400868))

(declare-fun d!1400870 () Bool)

(assert (=> d!1400870 (= (get!16666 lt!1710416) (v!44856 lt!1710416))))

(assert (=> b!4535199 d!1400870))

(declare-fun d!1400872 () Bool)

(assert (=> d!1400872 (= (eq!649 lt!1710439 lt!1710430) (= (content!8420 (toList!4391 lt!1710439)) (content!8420 (toList!4391 lt!1710430))))))

(declare-fun bs!871790 () Bool)

(assert (= bs!871790 d!1400872))

(assert (=> bs!871790 m!5297357))

(assert (=> bs!871790 m!5297359))

(assert (=> b!4535200 d!1400872))

(declare-fun bs!871791 () Bool)

(declare-fun b!4535625 () Bool)

(assert (= bs!871791 (and b!4535625 d!1400816)))

(declare-fun lambda!175349 () Int)

(assert (=> bs!871791 (= (= lt!1710415 lt!1710851) (= lambda!175349 lambda!175344))))

(declare-fun bs!871792 () Bool)

(assert (= bs!871792 (and b!4535625 d!1400724)))

(assert (=> bs!871792 (not (= lambda!175349 lambda!175312))))

(declare-fun bs!871793 () Bool)

(assert (= bs!871793 (and b!4535625 b!4535309)))

(assert (=> bs!871793 (= (= lt!1710415 lt!1710578) (= lambda!175349 lambda!175267))))

(declare-fun bs!871794 () Bool)

(assert (= bs!871794 (and b!4535625 b!4535542)))

(assert (=> bs!871794 (= (= lt!1710415 lt!1710429) (= lambda!175349 lambda!175340))))

(declare-fun bs!871795 () Bool)

(assert (= bs!871795 (and b!4535625 d!1400628)))

(assert (=> bs!871795 (= (= lt!1710415 lt!1710589) (= lambda!175349 lambda!175268))))

(assert (=> bs!871794 (= (= lt!1710415 lt!1710840) (= lambda!175349 lambda!175341))))

(declare-fun bs!871796 () Bool)

(assert (= bs!871796 (and b!4535625 b!4535199)))

(assert (=> bs!871796 (not (= lambda!175349 lambda!175215))))

(declare-fun bs!871797 () Bool)

(assert (= bs!871797 (and b!4535625 b!4535545)))

(assert (=> bs!871797 (= (= lt!1710415 lt!1710429) (= lambda!175349 lambda!175339))))

(assert (=> bs!871793 (= (= lt!1710415 lt!1710448) (= lambda!175349 lambda!175266))))

(declare-fun bs!871798 () Bool)

(assert (= bs!871798 (and b!4535625 b!4535312)))

(assert (=> bs!871798 (= (= lt!1710415 lt!1710448) (= lambda!175349 lambda!175265))))

(assert (=> b!4535625 true))

(declare-fun bs!871799 () Bool)

(declare-fun b!4535622 () Bool)

(assert (= bs!871799 (and b!4535622 d!1400816)))

(declare-fun lambda!175350 () Int)

(assert (=> bs!871799 (= (= lt!1710415 lt!1710851) (= lambda!175350 lambda!175344))))

(declare-fun bs!871800 () Bool)

(assert (= bs!871800 (and b!4535622 d!1400724)))

(assert (=> bs!871800 (not (= lambda!175350 lambda!175312))))

(declare-fun bs!871801 () Bool)

(assert (= bs!871801 (and b!4535622 b!4535309)))

(assert (=> bs!871801 (= (= lt!1710415 lt!1710578) (= lambda!175350 lambda!175267))))

(declare-fun bs!871802 () Bool)

(assert (= bs!871802 (and b!4535622 b!4535625)))

(assert (=> bs!871802 (= lambda!175350 lambda!175349)))

(declare-fun bs!871803 () Bool)

(assert (= bs!871803 (and b!4535622 b!4535542)))

(assert (=> bs!871803 (= (= lt!1710415 lt!1710429) (= lambda!175350 lambda!175340))))

(declare-fun bs!871804 () Bool)

(assert (= bs!871804 (and b!4535622 d!1400628)))

(assert (=> bs!871804 (= (= lt!1710415 lt!1710589) (= lambda!175350 lambda!175268))))

(assert (=> bs!871803 (= (= lt!1710415 lt!1710840) (= lambda!175350 lambda!175341))))

(declare-fun bs!871805 () Bool)

(assert (= bs!871805 (and b!4535622 b!4535199)))

(assert (=> bs!871805 (not (= lambda!175350 lambda!175215))))

(declare-fun bs!871806 () Bool)

(assert (= bs!871806 (and b!4535622 b!4535545)))

(assert (=> bs!871806 (= (= lt!1710415 lt!1710429) (= lambda!175350 lambda!175339))))

(assert (=> bs!871801 (= (= lt!1710415 lt!1710448) (= lambda!175350 lambda!175266))))

(declare-fun bs!871807 () Bool)

(assert (= bs!871807 (and b!4535622 b!4535312)))

(assert (=> bs!871807 (= (= lt!1710415 lt!1710448) (= lambda!175350 lambda!175265))))

(assert (=> b!4535622 true))

(declare-fun lambda!175351 () Int)

(declare-fun lt!1710902 () ListMap!3653)

(assert (=> bs!871799 (= (= lt!1710902 lt!1710851) (= lambda!175351 lambda!175344))))

(assert (=> b!4535622 (= (= lt!1710902 lt!1710415) (= lambda!175351 lambda!175350))))

(assert (=> bs!871800 (not (= lambda!175351 lambda!175312))))

(assert (=> bs!871801 (= (= lt!1710902 lt!1710578) (= lambda!175351 lambda!175267))))

(assert (=> bs!871802 (= (= lt!1710902 lt!1710415) (= lambda!175351 lambda!175349))))

(assert (=> bs!871803 (= (= lt!1710902 lt!1710429) (= lambda!175351 lambda!175340))))

(assert (=> bs!871804 (= (= lt!1710902 lt!1710589) (= lambda!175351 lambda!175268))))

(assert (=> bs!871803 (= (= lt!1710902 lt!1710840) (= lambda!175351 lambda!175341))))

(assert (=> bs!871805 (not (= lambda!175351 lambda!175215))))

(assert (=> bs!871806 (= (= lt!1710902 lt!1710429) (= lambda!175351 lambda!175339))))

(assert (=> bs!871801 (= (= lt!1710902 lt!1710448) (= lambda!175351 lambda!175266))))

(assert (=> bs!871807 (= (= lt!1710902 lt!1710448) (= lambda!175351 lambda!175265))))

(assert (=> b!4535622 true))

(declare-fun bs!871808 () Bool)

(declare-fun d!1400874 () Bool)

(assert (= bs!871808 (and d!1400874 d!1400816)))

(declare-fun lt!1710913 () ListMap!3653)

(declare-fun lambda!175352 () Int)

(assert (=> bs!871808 (= (= lt!1710913 lt!1710851) (= lambda!175352 lambda!175344))))

(declare-fun bs!871809 () Bool)

(assert (= bs!871809 (and d!1400874 b!4535622)))

(assert (=> bs!871809 (= (= lt!1710913 lt!1710415) (= lambda!175352 lambda!175350))))

(declare-fun bs!871810 () Bool)

(assert (= bs!871810 (and d!1400874 d!1400724)))

(assert (=> bs!871810 (not (= lambda!175352 lambda!175312))))

(declare-fun bs!871811 () Bool)

(assert (= bs!871811 (and d!1400874 b!4535309)))

(assert (=> bs!871811 (= (= lt!1710913 lt!1710578) (= lambda!175352 lambda!175267))))

(declare-fun bs!871812 () Bool)

(assert (= bs!871812 (and d!1400874 b!4535625)))

(assert (=> bs!871812 (= (= lt!1710913 lt!1710415) (= lambda!175352 lambda!175349))))

(assert (=> bs!871809 (= (= lt!1710913 lt!1710902) (= lambda!175352 lambda!175351))))

(declare-fun bs!871813 () Bool)

(assert (= bs!871813 (and d!1400874 b!4535542)))

(assert (=> bs!871813 (= (= lt!1710913 lt!1710429) (= lambda!175352 lambda!175340))))

(declare-fun bs!871814 () Bool)

(assert (= bs!871814 (and d!1400874 d!1400628)))

(assert (=> bs!871814 (= (= lt!1710913 lt!1710589) (= lambda!175352 lambda!175268))))

(assert (=> bs!871813 (= (= lt!1710913 lt!1710840) (= lambda!175352 lambda!175341))))

(declare-fun bs!871815 () Bool)

(assert (= bs!871815 (and d!1400874 b!4535199)))

(assert (=> bs!871815 (not (= lambda!175352 lambda!175215))))

(declare-fun bs!871816 () Bool)

(assert (= bs!871816 (and d!1400874 b!4535545)))

(assert (=> bs!871816 (= (= lt!1710913 lt!1710429) (= lambda!175352 lambda!175339))))

(assert (=> bs!871811 (= (= lt!1710913 lt!1710448) (= lambda!175352 lambda!175266))))

(declare-fun bs!871817 () Bool)

(assert (= bs!871817 (and d!1400874 b!4535312)))

(assert (=> bs!871817 (= (= lt!1710913 lt!1710448) (= lambda!175352 lambda!175265))))

(assert (=> d!1400874 true))

(declare-fun bm!316194 () Bool)

(declare-fun call!316199 () Unit!97630)

(assert (=> bm!316194 (= call!316199 (lemmaContainsAllItsOwnKeys!359 lt!1710415))))

(declare-fun c!774524 () Bool)

(declare-fun call!316200 () Bool)

(declare-fun bm!316195 () Bool)

(assert (=> bm!316195 (= call!316200 (forall!10330 (toList!4391 lt!1710415) (ite c!774524 lambda!175349 lambda!175351)))))

(declare-fun e!2826266 () ListMap!3653)

(assert (=> b!4535622 (= e!2826266 lt!1710902)))

(declare-fun lt!1710904 () ListMap!3653)

(assert (=> b!4535622 (= lt!1710904 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))))))

(assert (=> b!4535622 (= lt!1710902 (addToMapMapFromBucket!719 (t!357818 (_2!28896 lt!1710445)) (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun lt!1710915 () Unit!97630)

(assert (=> b!4535622 (= lt!1710915 call!316199)))

(assert (=> b!4535622 (forall!10330 (toList!4391 lt!1710415) lambda!175350)))

(declare-fun lt!1710910 () Unit!97630)

(assert (=> b!4535622 (= lt!1710910 lt!1710915)))

(assert (=> b!4535622 (forall!10330 (toList!4391 lt!1710904) lambda!175351)))

(declare-fun lt!1710905 () Unit!97630)

(declare-fun Unit!97707 () Unit!97630)

(assert (=> b!4535622 (= lt!1710905 Unit!97707)))

(assert (=> b!4535622 (forall!10330 (t!357818 (_2!28896 lt!1710445)) lambda!175351)))

(declare-fun lt!1710907 () Unit!97630)

(declare-fun Unit!97708 () Unit!97630)

(assert (=> b!4535622 (= lt!1710907 Unit!97708)))

(declare-fun lt!1710901 () Unit!97630)

(declare-fun Unit!97709 () Unit!97630)

(assert (=> b!4535622 (= lt!1710901 Unit!97709)))

(declare-fun lt!1710919 () Unit!97630)

(assert (=> b!4535622 (= lt!1710919 (forallContained!2591 (toList!4391 lt!1710904) lambda!175351 (h!56607 (_2!28896 lt!1710445))))))

(assert (=> b!4535622 (contains!13513 lt!1710904 (_1!28895 (h!56607 (_2!28896 lt!1710445))))))

(declare-fun lt!1710899 () Unit!97630)

(declare-fun Unit!97710 () Unit!97630)

(assert (=> b!4535622 (= lt!1710899 Unit!97710)))

(assert (=> b!4535622 (contains!13513 lt!1710902 (_1!28895 (h!56607 (_2!28896 lt!1710445))))))

(declare-fun lt!1710911 () Unit!97630)

(declare-fun Unit!97711 () Unit!97630)

(assert (=> b!4535622 (= lt!1710911 Unit!97711)))

(assert (=> b!4535622 (forall!10330 (_2!28896 lt!1710445) lambda!175351)))

(declare-fun lt!1710914 () Unit!97630)

(declare-fun Unit!97712 () Unit!97630)

(assert (=> b!4535622 (= lt!1710914 Unit!97712)))

(assert (=> b!4535622 (forall!10330 (toList!4391 lt!1710904) lambda!175351)))

(declare-fun lt!1710900 () Unit!97630)

(declare-fun Unit!97713 () Unit!97630)

(assert (=> b!4535622 (= lt!1710900 Unit!97713)))

(declare-fun lt!1710903 () Unit!97630)

(declare-fun Unit!97714 () Unit!97630)

(assert (=> b!4535622 (= lt!1710903 Unit!97714)))

(declare-fun lt!1710916 () Unit!97630)

(assert (=> b!4535622 (= lt!1710916 (addForallContainsKeyThenBeforeAdding!359 lt!1710415 lt!1710902 (_1!28895 (h!56607 (_2!28896 lt!1710445))) (_2!28895 (h!56607 (_2!28896 lt!1710445)))))))

(assert (=> b!4535622 (forall!10330 (toList!4391 lt!1710415) lambda!175351)))

(declare-fun lt!1710908 () Unit!97630)

(assert (=> b!4535622 (= lt!1710908 lt!1710916)))

(assert (=> b!4535622 (forall!10330 (toList!4391 lt!1710415) lambda!175351)))

(declare-fun lt!1710906 () Unit!97630)

(declare-fun Unit!97715 () Unit!97630)

(assert (=> b!4535622 (= lt!1710906 Unit!97715)))

(declare-fun res!1889670 () Bool)

(declare-fun call!316201 () Bool)

(assert (=> b!4535622 (= res!1889670 call!316201)))

(declare-fun e!2826265 () Bool)

(assert (=> b!4535622 (=> (not res!1889670) (not e!2826265))))

(assert (=> b!4535622 e!2826265))

(declare-fun lt!1710909 () Unit!97630)

(declare-fun Unit!97716 () Unit!97630)

(assert (=> b!4535622 (= lt!1710909 Unit!97716)))

(declare-fun b!4535623 () Bool)

(declare-fun e!2826264 () Bool)

(assert (=> b!4535623 (= e!2826264 (invariantList!1039 (toList!4391 lt!1710913)))))

(declare-fun b!4535624 () Bool)

(declare-fun res!1889671 () Bool)

(assert (=> b!4535624 (=> (not res!1889671) (not e!2826264))))

(assert (=> b!4535624 (= res!1889671 (forall!10330 (toList!4391 lt!1710415) lambda!175352))))

(declare-fun bm!316196 () Bool)

(assert (=> bm!316196 (= call!316201 (forall!10330 (ite c!774524 (toList!4391 lt!1710415) (_2!28896 lt!1710445)) (ite c!774524 lambda!175349 lambda!175351)))))

(declare-fun b!4535626 () Bool)

(assert (=> b!4535626 (= e!2826265 call!316200)))

(assert (=> b!4535625 (= e!2826266 lt!1710415)))

(declare-fun lt!1710912 () Unit!97630)

(assert (=> b!4535625 (= lt!1710912 call!316199)))

(assert (=> b!4535625 call!316200))

(declare-fun lt!1710918 () Unit!97630)

(assert (=> b!4535625 (= lt!1710918 lt!1710912)))

(assert (=> b!4535625 call!316201))

(declare-fun lt!1710917 () Unit!97630)

(declare-fun Unit!97717 () Unit!97630)

(assert (=> b!4535625 (= lt!1710917 Unit!97717)))

(assert (=> d!1400874 e!2826264))

(declare-fun res!1889672 () Bool)

(assert (=> d!1400874 (=> (not res!1889672) (not e!2826264))))

(assert (=> d!1400874 (= res!1889672 (forall!10330 (_2!28896 lt!1710445) lambda!175352))))

(assert (=> d!1400874 (= lt!1710913 e!2826266)))

(assert (=> d!1400874 (= c!774524 ((_ is Nil!50732) (_2!28896 lt!1710445)))))

(assert (=> d!1400874 (noDuplicateKeys!1192 (_2!28896 lt!1710445))))

(assert (=> d!1400874 (= (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710415) lt!1710913)))

(assert (= (and d!1400874 c!774524) b!4535625))

(assert (= (and d!1400874 (not c!774524)) b!4535622))

(assert (= (and b!4535622 res!1889670) b!4535626))

(assert (= (or b!4535625 b!4535626) bm!316195))

(assert (= (or b!4535625 b!4535622) bm!316196))

(assert (= (or b!4535625 b!4535622) bm!316194))

(assert (= (and d!1400874 res!1889672) b!4535624))

(assert (= (and b!4535624 res!1889671) b!4535623))

(declare-fun m!5297525 () Bool)

(assert (=> b!4535623 m!5297525))

(declare-fun m!5297527 () Bool)

(assert (=> d!1400874 m!5297527))

(assert (=> d!1400874 m!5296623))

(declare-fun m!5297529 () Bool)

(assert (=> bm!316196 m!5297529))

(declare-fun m!5297531 () Bool)

(assert (=> b!4535622 m!5297531))

(declare-fun m!5297533 () Bool)

(assert (=> b!4535622 m!5297533))

(declare-fun m!5297535 () Bool)

(assert (=> b!4535622 m!5297535))

(declare-fun m!5297537 () Bool)

(assert (=> b!4535622 m!5297537))

(declare-fun m!5297539 () Bool)

(assert (=> b!4535622 m!5297539))

(declare-fun m!5297541 () Bool)

(assert (=> b!4535622 m!5297541))

(declare-fun m!5297543 () Bool)

(assert (=> b!4535622 m!5297543))

(assert (=> b!4535622 m!5297531))

(declare-fun m!5297545 () Bool)

(assert (=> b!4535622 m!5297545))

(assert (=> b!4535622 m!5297541))

(declare-fun m!5297547 () Bool)

(assert (=> b!4535622 m!5297547))

(declare-fun m!5297549 () Bool)

(assert (=> b!4535622 m!5297549))

(assert (=> b!4535622 m!5297533))

(declare-fun m!5297551 () Bool)

(assert (=> b!4535622 m!5297551))

(declare-fun m!5297553 () Bool)

(assert (=> bm!316194 m!5297553))

(declare-fun m!5297555 () Bool)

(assert (=> bm!316195 m!5297555))

(declare-fun m!5297557 () Bool)

(assert (=> b!4535624 m!5297557))

(assert (=> b!4535200 d!1400874))

(declare-fun bs!871818 () Bool)

(declare-fun d!1400876 () Bool)

(assert (= bs!871818 (and d!1400876 d!1400702)))

(declare-fun lambda!175353 () Int)

(assert (=> bs!871818 (= lambda!175353 lambda!175303)))

(declare-fun bs!871819 () Bool)

(assert (= bs!871819 (and d!1400876 d!1400798)))

(assert (=> bs!871819 (= lambda!175353 lambda!175338)))

(declare-fun bs!871820 () Bool)

(assert (= bs!871820 (and d!1400876 d!1400794)))

(assert (=> bs!871820 (= lambda!175353 lambda!175332)))

(declare-fun bs!871821 () Bool)

(assert (= bs!871821 (and d!1400876 b!4535199)))

(assert (=> bs!871821 (not (= lambda!175353 lambda!175214))))

(declare-fun bs!871822 () Bool)

(assert (= bs!871822 (and d!1400876 d!1400704)))

(assert (=> bs!871822 (not (= lambda!175353 lambda!175306))))

(declare-fun bs!871823 () Bool)

(assert (= bs!871823 (and d!1400876 d!1400786)))

(assert (=> bs!871823 (= lambda!175353 lambda!175330)))

(declare-fun bs!871824 () Bool)

(assert (= bs!871824 (and d!1400876 d!1400790)))

(assert (=> bs!871824 (= lambda!175353 lambda!175331)))

(declare-fun bs!871825 () Bool)

(assert (= bs!871825 (and d!1400876 d!1400748)))

(assert (=> bs!871825 (= lambda!175353 lambda!175316)))

(declare-fun bs!871826 () Bool)

(assert (= bs!871826 (and d!1400876 d!1400708)))

(assert (=> bs!871826 (= lambda!175353 lambda!175309)))

(declare-fun bs!871827 () Bool)

(assert (= bs!871827 (and d!1400876 start!449928)))

(assert (=> bs!871827 (= lambda!175353 lambda!175213)))

(declare-fun bs!871828 () Bool)

(assert (= bs!871828 (and d!1400876 d!1400752)))

(assert (=> bs!871828 (= lambda!175353 lambda!175322)))

(declare-fun bs!871829 () Bool)

(assert (= bs!871829 (and d!1400876 d!1400854)))

(assert (=> bs!871829 (= lambda!175353 lambda!175348)))

(declare-fun bs!871830 () Bool)

(assert (= bs!871830 (and d!1400876 d!1400780)))

(assert (=> bs!871830 (= lambda!175353 lambda!175325)))

(declare-fun lt!1710920 () ListMap!3653)

(assert (=> d!1400876 (invariantList!1039 (toList!4391 lt!1710920))))

(declare-fun e!2826267 () ListMap!3653)

(assert (=> d!1400876 (= lt!1710920 e!2826267)))

(declare-fun c!774525 () Bool)

(assert (=> d!1400876 (= c!774525 ((_ is Cons!50733) (toList!4392 lt!1710440)))))

(assert (=> d!1400876 (forall!10329 (toList!4392 lt!1710440) lambda!175353)))

(assert (=> d!1400876 (= (extractMap!1248 (toList!4392 lt!1710440)) lt!1710920)))

(declare-fun b!4535627 () Bool)

(assert (=> b!4535627 (= e!2826267 (addToMapMapFromBucket!719 (_2!28896 (h!56608 (toList!4392 lt!1710440))) (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))))))

(declare-fun b!4535628 () Bool)

(assert (=> b!4535628 (= e!2826267 (ListMap!3654 Nil!50732))))

(assert (= (and d!1400876 c!774525) b!4535627))

(assert (= (and d!1400876 (not c!774525)) b!4535628))

(declare-fun m!5297559 () Bool)

(assert (=> d!1400876 m!5297559))

(declare-fun m!5297561 () Bool)

(assert (=> d!1400876 m!5297561))

(declare-fun m!5297563 () Bool)

(assert (=> b!4535627 m!5297563))

(assert (=> b!4535627 m!5297563))

(declare-fun m!5297565 () Bool)

(assert (=> b!4535627 m!5297565))

(assert (=> b!4535200 d!1400876))

(declare-fun d!1400878 () Bool)

(declare-fun e!2826268 () Bool)

(assert (=> d!1400878 e!2826268))

(declare-fun res!1889673 () Bool)

(assert (=> d!1400878 (=> (not res!1889673) (not e!2826268))))

(declare-fun lt!1710922 () ListLongMap!3023)

(assert (=> d!1400878 (= res!1889673 (contains!13512 lt!1710922 (_1!28896 lt!1710425)))))

(declare-fun lt!1710921 () List!50857)

(assert (=> d!1400878 (= lt!1710922 (ListLongMap!3024 lt!1710921))))

(declare-fun lt!1710924 () Unit!97630)

(declare-fun lt!1710923 () Unit!97630)

(assert (=> d!1400878 (= lt!1710924 lt!1710923)))

(assert (=> d!1400878 (= (getValueByKey!1136 lt!1710921 (_1!28896 lt!1710425)) (Some!11185 (_2!28896 lt!1710425)))))

(assert (=> d!1400878 (= lt!1710923 (lemmaContainsTupThenGetReturnValue!712 lt!1710921 (_1!28896 lt!1710425) (_2!28896 lt!1710425)))))

(assert (=> d!1400878 (= lt!1710921 (insertStrictlySorted!430 (toList!4392 lm!1477) (_1!28896 lt!1710425) (_2!28896 lt!1710425)))))

(assert (=> d!1400878 (= (+!1592 lm!1477 lt!1710425) lt!1710922)))

(declare-fun b!4535629 () Bool)

(declare-fun res!1889674 () Bool)

(assert (=> b!4535629 (=> (not res!1889674) (not e!2826268))))

(assert (=> b!4535629 (= res!1889674 (= (getValueByKey!1136 (toList!4392 lt!1710922) (_1!28896 lt!1710425)) (Some!11185 (_2!28896 lt!1710425))))))

(declare-fun b!4535630 () Bool)

(assert (=> b!4535630 (= e!2826268 (contains!13511 (toList!4392 lt!1710922) lt!1710425))))

(assert (= (and d!1400878 res!1889673) b!4535629))

(assert (= (and b!4535629 res!1889674) b!4535630))

(declare-fun m!5297567 () Bool)

(assert (=> d!1400878 m!5297567))

(declare-fun m!5297569 () Bool)

(assert (=> d!1400878 m!5297569))

(declare-fun m!5297571 () Bool)

(assert (=> d!1400878 m!5297571))

(declare-fun m!5297573 () Bool)

(assert (=> d!1400878 m!5297573))

(declare-fun m!5297575 () Bool)

(assert (=> b!4535629 m!5297575))

(declare-fun m!5297577 () Bool)

(assert (=> b!4535630 m!5297577))

(assert (=> b!4535179 d!1400878))

(declare-fun d!1400880 () Bool)

(declare-fun e!2826269 () Bool)

(assert (=> d!1400880 e!2826269))

(declare-fun res!1889675 () Bool)

(assert (=> d!1400880 (=> (not res!1889675) (not e!2826269))))

(declare-fun lt!1710926 () ListLongMap!3023)

(assert (=> d!1400880 (= res!1889675 (contains!13512 lt!1710926 (_1!28896 lt!1710445)))))

(declare-fun lt!1710925 () List!50857)

(assert (=> d!1400880 (= lt!1710926 (ListLongMap!3024 lt!1710925))))

(declare-fun lt!1710928 () Unit!97630)

(declare-fun lt!1710927 () Unit!97630)

(assert (=> d!1400880 (= lt!1710928 lt!1710927)))

(assert (=> d!1400880 (= (getValueByKey!1136 lt!1710925 (_1!28896 lt!1710445)) (Some!11185 (_2!28896 lt!1710445)))))

(assert (=> d!1400880 (= lt!1710927 (lemmaContainsTupThenGetReturnValue!712 lt!1710925 (_1!28896 lt!1710445) (_2!28896 lt!1710445)))))

(assert (=> d!1400880 (= lt!1710925 (insertStrictlySorted!430 (toList!4392 lt!1710432) (_1!28896 lt!1710445) (_2!28896 lt!1710445)))))

(assert (=> d!1400880 (= (+!1592 lt!1710432 lt!1710445) lt!1710926)))

(declare-fun b!4535631 () Bool)

(declare-fun res!1889676 () Bool)

(assert (=> b!4535631 (=> (not res!1889676) (not e!2826269))))

(assert (=> b!4535631 (= res!1889676 (= (getValueByKey!1136 (toList!4392 lt!1710926) (_1!28896 lt!1710445)) (Some!11185 (_2!28896 lt!1710445))))))

(declare-fun b!4535632 () Bool)

(assert (=> b!4535632 (= e!2826269 (contains!13511 (toList!4392 lt!1710926) lt!1710445))))

(assert (= (and d!1400880 res!1889675) b!4535631))

(assert (= (and b!4535631 res!1889676) b!4535632))

(declare-fun m!5297579 () Bool)

(assert (=> d!1400880 m!5297579))

(declare-fun m!5297581 () Bool)

(assert (=> d!1400880 m!5297581))

(declare-fun m!5297583 () Bool)

(assert (=> d!1400880 m!5297583))

(declare-fun m!5297585 () Bool)

(assert (=> d!1400880 m!5297585))

(declare-fun m!5297587 () Bool)

(assert (=> b!4535631 m!5297587))

(declare-fun m!5297589 () Bool)

(assert (=> b!4535632 m!5297589))

(assert (=> b!4535179 d!1400880))

(declare-fun b!4535637 () Bool)

(declare-fun e!2826272 () Bool)

(declare-fun tp!1338533 () Bool)

(declare-fun tp!1338534 () Bool)

(assert (=> b!4535637 (= e!2826272 (and tp!1338533 tp!1338534))))

(assert (=> b!4535188 (= tp!1338518 e!2826272)))

(assert (= (and b!4535188 ((_ is Cons!50733) (toList!4392 lm!1477))) b!4535637))

(declare-fun b!4535642 () Bool)

(declare-fun e!2826275 () Bool)

(declare-fun tp!1338537 () Bool)

(assert (=> b!4535642 (= e!2826275 (and tp_is_empty!28045 tp_is_empty!28047 tp!1338537))))

(assert (=> b!4535185 (= tp!1338519 e!2826275)))

(assert (= (and b!4535185 ((_ is Cons!50732) (t!357818 newBucket!178))) b!4535642))

(declare-fun b_lambda!157225 () Bool)

(assert (= b_lambda!157223 (or b!4535199 b_lambda!157225)))

(declare-fun bs!871831 () Bool)

(declare-fun d!1400882 () Bool)

(assert (= bs!871831 (and d!1400882 b!4535199)))

(assert (=> bs!871831 (= (dynLambda!21205 lambda!175215 (tuple2!51203 key!3287 (_2!28895 (get!16666 lt!1710416)))) (= (hash!2895 hashF!1107 (_1!28895 (tuple2!51203 key!3287 (_2!28895 (get!16666 lt!1710416))))) (_1!28896 (h!56608 (toList!4392 lm!1477)))))))

(declare-fun m!5297591 () Bool)

(assert (=> bs!871831 m!5297591))

(assert (=> d!1400868 d!1400882))

(declare-fun b_lambda!157227 () Bool)

(assert (= b_lambda!157221 (or b!4535199 b_lambda!157227)))

(declare-fun bs!871832 () Bool)

(declare-fun d!1400884 () Bool)

(assert (= bs!871832 (and d!1400884 b!4535199)))

(assert (=> bs!871832 (= (dynLambda!21203 lambda!175214 (h!56608 (toList!4392 lm!1477))) (allKeysSameHash!1046 (_2!28896 (h!56608 (toList!4392 lm!1477))) (_1!28896 (h!56608 (toList!4392 lm!1477))) hashF!1107))))

(declare-fun m!5297593 () Bool)

(assert (=> bs!871832 m!5297593))

(assert (=> d!1400866 d!1400884))

(declare-fun b_lambda!157229 () Bool)

(assert (= b_lambda!157199 (or start!449928 b_lambda!157229)))

(declare-fun bs!871833 () Bool)

(declare-fun d!1400886 () Bool)

(assert (= bs!871833 (and d!1400886 start!449928)))

(assert (=> bs!871833 (= (dynLambda!21203 lambda!175213 (h!56608 (toList!4392 lm!1477))) (noDuplicateKeys!1192 (_2!28896 (h!56608 (toList!4392 lm!1477)))))))

(declare-fun m!5297595 () Bool)

(assert (=> bs!871833 m!5297595))

(assert (=> b!4535408 d!1400886))

(declare-fun b_lambda!157231 () Bool)

(assert (= b_lambda!157197 (or start!449928 b_lambda!157231)))

(assert (=> d!1400718 d!1400886))

(declare-fun b_lambda!157233 () Bool)

(assert (= b_lambda!157219 (or start!449928 b_lambda!157233)))

(declare-fun bs!871834 () Bool)

(declare-fun d!1400888 () Bool)

(assert (= bs!871834 (and d!1400888 start!449928)))

(assert (=> bs!871834 (= (dynLambda!21203 lambda!175213 lt!1710441) (noDuplicateKeys!1192 (_2!28896 lt!1710441)))))

(declare-fun m!5297597 () Bool)

(assert (=> bs!871834 m!5297597))

(assert (=> d!1400860 d!1400888))

(check-sat (not b!4535361) (not d!1400724) (not b!4535310) (not b!4535590) (not b!4535509) (not b_lambda!157229) (not d!1400734) (not b!4535409) (not b!4535613) (not b!4535612) (not b!4535637) (not d!1400842) (not b!4535610) (not bm!316193) (not d!1400628) (not d!1400686) (not d!1400844) (not b!4535502) (not b!4535384) (not b!4535624) (not d!1400708) (not b!4535490) (not b!4535496) (not b!4535630) (not bs!871834) (not d!1400722) (not b!4535488) (not b!4535381) (not b!4535615) (not b!4535572) (not b!4535357) (not b!4535542) (not bm!316194) (not b!4535494) (not d!1400752) (not b!4535309) (not b!4535383) (not bm!316168) (not d!1400796) (not b!4535627) (not b_lambda!157227) (not d!1400812) (not b!4535513) (not bm!316169) (not b!4535332) (not b!4535497) (not d!1400786) (not b!4535455) (not d!1400814) (not d!1400872) (not d!1400816) (not b!4535311) (not d!1400880) (not d!1400860) (not bm!316196) (not b!4535642) (not d!1400876) (not d!1400624) (not b!4535324) (not d!1400694) (not b!4535423) (not d!1400790) (not bm!316192) (not b!4535623) (not b!4535574) (not d!1400692) (not b!4535358) (not d!1400750) (not b!4535329) (not d!1400856) (not d!1400718) (not d!1400774) (not bm!316190) (not d!1400776) (not d!1400868) (not d!1400702) (not d!1400798) (not bm!316167) (not b!4535617) (not b!4535543) (not d!1400700) (not b!4535507) (not b_lambda!157231) (not b!4535493) (not b!4535571) (not d!1400862) (not d!1400848) (not d!1400778) (not d!1400732) (not d!1400874) (not d!1400854) (not b!4535510) (not d!1400704) (not d!1400794) (not b!4535631) (not bm!316191) (not b!4535451) (not b!4535591) (not bm!316195) (not b!4535355) (not bm!316189) (not b!4535622) (not bs!871832) (not d!1400748) (not b!4535480) (not b!4535212) (not d!1400780) (not d!1400826) tp_is_empty!28047 (not d!1400850) (not d!1400846) (not b!4535456) (not b!4535453) (not d!1400688) (not b!4535593) tp_is_empty!28045 (not b!4535498) (not b!4535618) (not b!4535362) (not b!4535632) (not d!1400626) (not b!4535505) (not b!4535499) (not b!4535514) (not b!4535322) (not b!4535544) (not d!1400858) (not b!4535629) (not d!1400878) (not b!4535387) (not b!4535330) (not d!1400866) (not d!1400714) (not d!1400792) (not bm!316172) (not b!4535504) (not b_lambda!157225) (not bs!871831) (not d!1400864) (not d!1400730) (not b!4535503) (not d!1400690) (not b_lambda!157233) (not b!4535621) (not b!4535215) (not b!4535363) (not b!4535356) (not bs!871833) (not b!4535585) (not b!4535515) (not d!1400852) (not b!4535589) (not b!4535452) (not b!4535491) (not b!4535508))
(check-sat)
(get-model)

(declare-fun d!1400890 () Bool)

(declare-fun lt!1710931 () Bool)

(assert (=> d!1400890 (= lt!1710931 (select (content!8421 (keys!17648 lt!1710447)) key!3287))))

(declare-fun e!2826280 () Bool)

(assert (=> d!1400890 (= lt!1710931 e!2826280)))

(declare-fun res!1889682 () Bool)

(assert (=> d!1400890 (=> (not res!1889682) (not e!2826280))))

(assert (=> d!1400890 (= res!1889682 ((_ is Cons!50735) (keys!17648 lt!1710447)))))

(assert (=> d!1400890 (= (contains!13515 (keys!17648 lt!1710447) key!3287) lt!1710931)))

(declare-fun b!4535647 () Bool)

(declare-fun e!2826281 () Bool)

(assert (=> b!4535647 (= e!2826280 e!2826281)))

(declare-fun res!1889681 () Bool)

(assert (=> b!4535647 (=> res!1889681 e!2826281)))

(assert (=> b!4535647 (= res!1889681 (= (h!56612 (keys!17648 lt!1710447)) key!3287))))

(declare-fun b!4535648 () Bool)

(assert (=> b!4535648 (= e!2826281 (contains!13515 (t!357821 (keys!17648 lt!1710447)) key!3287))))

(assert (= (and d!1400890 res!1889682) b!4535647))

(assert (= (and b!4535647 (not res!1889681)) b!4535648))

(assert (=> d!1400890 m!5296945))

(assert (=> d!1400890 m!5297461))

(declare-fun m!5297599 () Bool)

(assert (=> d!1400890 m!5297599))

(declare-fun m!5297601 () Bool)

(assert (=> b!4535648 m!5297601))

(assert (=> b!4535362 d!1400890))

(declare-fun b!4535656 () Bool)

(assert (=> b!4535656 true))

(declare-fun d!1400892 () Bool)

(declare-fun e!2826284 () Bool)

(assert (=> d!1400892 e!2826284))

(declare-fun res!1889689 () Bool)

(assert (=> d!1400892 (=> (not res!1889689) (not e!2826284))))

(declare-fun lt!1710934 () List!50859)

(declare-fun noDuplicate!759 (List!50859) Bool)

(assert (=> d!1400892 (= res!1889689 (noDuplicate!759 lt!1710934))))

(assert (=> d!1400892 (= lt!1710934 (getKeysList!487 (toList!4391 lt!1710447)))))

(assert (=> d!1400892 (= (keys!17648 lt!1710447) lt!1710934)))

(declare-fun b!4535655 () Bool)

(declare-fun res!1889691 () Bool)

(assert (=> b!4535655 (=> (not res!1889691) (not e!2826284))))

(declare-fun length!374 (List!50859) Int)

(declare-fun length!375 (List!50856) Int)

(assert (=> b!4535655 (= res!1889691 (= (length!374 lt!1710934) (length!375 (toList!4391 lt!1710447))))))

(declare-fun res!1889690 () Bool)

(assert (=> b!4535656 (=> (not res!1889690) (not e!2826284))))

(declare-fun lambda!175358 () Int)

(declare-fun forall!10332 (List!50859 Int) Bool)

(assert (=> b!4535656 (= res!1889690 (forall!10332 lt!1710934 lambda!175358))))

(declare-fun b!4535657 () Bool)

(declare-fun lambda!175359 () Int)

(declare-fun map!11166 (List!50856 Int) List!50859)

(assert (=> b!4535657 (= e!2826284 (= (content!8421 lt!1710934) (content!8421 (map!11166 (toList!4391 lt!1710447) lambda!175359))))))

(assert (= (and d!1400892 res!1889689) b!4535655))

(assert (= (and b!4535655 res!1889691) b!4535656))

(assert (= (and b!4535656 res!1889690) b!4535657))

(declare-fun m!5297603 () Bool)

(assert (=> d!1400892 m!5297603))

(assert (=> d!1400892 m!5296959))

(declare-fun m!5297605 () Bool)

(assert (=> b!4535655 m!5297605))

(declare-fun m!5297607 () Bool)

(assert (=> b!4535655 m!5297607))

(declare-fun m!5297609 () Bool)

(assert (=> b!4535656 m!5297609))

(declare-fun m!5297611 () Bool)

(assert (=> b!4535657 m!5297611))

(declare-fun m!5297613 () Bool)

(assert (=> b!4535657 m!5297613))

(assert (=> b!4535657 m!5297613))

(declare-fun m!5297615 () Bool)

(assert (=> b!4535657 m!5297615))

(assert (=> b!4535362 d!1400892))

(declare-fun d!1400894 () Bool)

(declare-fun res!1889696 () Bool)

(declare-fun e!2826289 () Bool)

(assert (=> d!1400894 (=> res!1889696 e!2826289)))

(assert (=> d!1400894 (= res!1889696 ((_ is Nil!50732) (_2!28896 lt!1710445)))))

(assert (=> d!1400894 (= (forall!10330 (_2!28896 lt!1710445) lambda!175344) e!2826289)))

(declare-fun b!4535664 () Bool)

(declare-fun e!2826290 () Bool)

(assert (=> b!4535664 (= e!2826289 e!2826290)))

(declare-fun res!1889697 () Bool)

(assert (=> b!4535664 (=> (not res!1889697) (not e!2826290))))

(assert (=> b!4535664 (= res!1889697 (dynLambda!21205 lambda!175344 (h!56607 (_2!28896 lt!1710445))))))

(declare-fun b!4535665 () Bool)

(assert (=> b!4535665 (= e!2826290 (forall!10330 (t!357818 (_2!28896 lt!1710445)) lambda!175344))))

(assert (= (and d!1400894 (not res!1889696)) b!4535664))

(assert (= (and b!4535664 res!1889697) b!4535665))

(declare-fun b_lambda!157235 () Bool)

(assert (=> (not b_lambda!157235) (not b!4535664)))

(declare-fun m!5297617 () Bool)

(assert (=> b!4535664 m!5297617))

(declare-fun m!5297619 () Bool)

(assert (=> b!4535665 m!5297619))

(assert (=> d!1400816 d!1400894))

(assert (=> d!1400816 d!1400716))

(declare-fun bs!871835 () Bool)

(declare-fun b!4535669 () Bool)

(assert (= bs!871835 (and b!4535669 d!1400816)))

(declare-fun lambda!175360 () Int)

(assert (=> bs!871835 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710440))) lt!1710851) (= lambda!175360 lambda!175344))))

(declare-fun bs!871836 () Bool)

(assert (= bs!871836 (and b!4535669 b!4535622)))

(assert (=> bs!871836 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710440))) lt!1710415) (= lambda!175360 lambda!175350))))

(declare-fun bs!871837 () Bool)

(assert (= bs!871837 (and b!4535669 d!1400724)))

(assert (=> bs!871837 (not (= lambda!175360 lambda!175312))))

(declare-fun bs!871838 () Bool)

(assert (= bs!871838 (and b!4535669 b!4535309)))

(assert (=> bs!871838 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710440))) lt!1710578) (= lambda!175360 lambda!175267))))

(declare-fun bs!871839 () Bool)

(assert (= bs!871839 (and b!4535669 d!1400874)))

(assert (=> bs!871839 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710440))) lt!1710913) (= lambda!175360 lambda!175352))))

(declare-fun bs!871840 () Bool)

(assert (= bs!871840 (and b!4535669 b!4535625)))

(assert (=> bs!871840 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710440))) lt!1710415) (= lambda!175360 lambda!175349))))

(assert (=> bs!871836 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710440))) lt!1710902) (= lambda!175360 lambda!175351))))

(declare-fun bs!871841 () Bool)

(assert (= bs!871841 (and b!4535669 b!4535542)))

(assert (=> bs!871841 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710440))) lt!1710429) (= lambda!175360 lambda!175340))))

(declare-fun bs!871842 () Bool)

(assert (= bs!871842 (and b!4535669 d!1400628)))

(assert (=> bs!871842 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710440))) lt!1710589) (= lambda!175360 lambda!175268))))

(assert (=> bs!871841 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710440))) lt!1710840) (= lambda!175360 lambda!175341))))

(declare-fun bs!871843 () Bool)

(assert (= bs!871843 (and b!4535669 b!4535199)))

(assert (=> bs!871843 (not (= lambda!175360 lambda!175215))))

(declare-fun bs!871844 () Bool)

(assert (= bs!871844 (and b!4535669 b!4535545)))

(assert (=> bs!871844 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710440))) lt!1710429) (= lambda!175360 lambda!175339))))

(assert (=> bs!871838 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710440))) lt!1710448) (= lambda!175360 lambda!175266))))

(declare-fun bs!871845 () Bool)

(assert (= bs!871845 (and b!4535669 b!4535312)))

(assert (=> bs!871845 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710440))) lt!1710448) (= lambda!175360 lambda!175265))))

(assert (=> b!4535669 true))

(declare-fun bs!871846 () Bool)

(declare-fun b!4535666 () Bool)

(assert (= bs!871846 (and b!4535666 d!1400816)))

(declare-fun lambda!175361 () Int)

(assert (=> bs!871846 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710440))) lt!1710851) (= lambda!175361 lambda!175344))))

(declare-fun bs!871847 () Bool)

(assert (= bs!871847 (and b!4535666 b!4535622)))

(assert (=> bs!871847 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710440))) lt!1710415) (= lambda!175361 lambda!175350))))

(declare-fun bs!871848 () Bool)

(assert (= bs!871848 (and b!4535666 d!1400724)))

(assert (=> bs!871848 (not (= lambda!175361 lambda!175312))))

(declare-fun bs!871849 () Bool)

(assert (= bs!871849 (and b!4535666 b!4535309)))

(assert (=> bs!871849 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710440))) lt!1710578) (= lambda!175361 lambda!175267))))

(declare-fun bs!871850 () Bool)

(assert (= bs!871850 (and b!4535666 d!1400874)))

(assert (=> bs!871850 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710440))) lt!1710913) (= lambda!175361 lambda!175352))))

(declare-fun bs!871851 () Bool)

(assert (= bs!871851 (and b!4535666 b!4535625)))

(assert (=> bs!871851 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710440))) lt!1710415) (= lambda!175361 lambda!175349))))

(assert (=> bs!871847 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710440))) lt!1710902) (= lambda!175361 lambda!175351))))

(declare-fun bs!871852 () Bool)

(assert (= bs!871852 (and b!4535666 b!4535542)))

(assert (=> bs!871852 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710440))) lt!1710429) (= lambda!175361 lambda!175340))))

(declare-fun bs!871853 () Bool)

(assert (= bs!871853 (and b!4535666 d!1400628)))

(assert (=> bs!871853 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710440))) lt!1710589) (= lambda!175361 lambda!175268))))

(declare-fun bs!871854 () Bool)

(assert (= bs!871854 (and b!4535666 b!4535669)))

(assert (=> bs!871854 (= lambda!175361 lambda!175360)))

(assert (=> bs!871852 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710440))) lt!1710840) (= lambda!175361 lambda!175341))))

(declare-fun bs!871855 () Bool)

(assert (= bs!871855 (and b!4535666 b!4535199)))

(assert (=> bs!871855 (not (= lambda!175361 lambda!175215))))

(declare-fun bs!871856 () Bool)

(assert (= bs!871856 (and b!4535666 b!4535545)))

(assert (=> bs!871856 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710440))) lt!1710429) (= lambda!175361 lambda!175339))))

(assert (=> bs!871849 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710440))) lt!1710448) (= lambda!175361 lambda!175266))))

(declare-fun bs!871857 () Bool)

(assert (= bs!871857 (and b!4535666 b!4535312)))

(assert (=> bs!871857 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710440))) lt!1710448) (= lambda!175361 lambda!175265))))

(assert (=> b!4535666 true))

(declare-fun lt!1710938 () ListMap!3653)

(declare-fun lambda!175362 () Int)

(assert (=> bs!871846 (= (= lt!1710938 lt!1710851) (= lambda!175362 lambda!175344))))

(assert (=> bs!871848 (not (= lambda!175362 lambda!175312))))

(assert (=> bs!871849 (= (= lt!1710938 lt!1710578) (= lambda!175362 lambda!175267))))

(assert (=> bs!871850 (= (= lt!1710938 lt!1710913) (= lambda!175362 lambda!175352))))

(assert (=> bs!871851 (= (= lt!1710938 lt!1710415) (= lambda!175362 lambda!175349))))

(assert (=> bs!871847 (= (= lt!1710938 lt!1710902) (= lambda!175362 lambda!175351))))

(assert (=> bs!871852 (= (= lt!1710938 lt!1710429) (= lambda!175362 lambda!175340))))

(assert (=> bs!871853 (= (= lt!1710938 lt!1710589) (= lambda!175362 lambda!175268))))

(assert (=> bs!871854 (= (= lt!1710938 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175362 lambda!175360))))

(assert (=> bs!871852 (= (= lt!1710938 lt!1710840) (= lambda!175362 lambda!175341))))

(assert (=> b!4535666 (= (= lt!1710938 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175362 lambda!175361))))

(assert (=> bs!871847 (= (= lt!1710938 lt!1710415) (= lambda!175362 lambda!175350))))

(assert (=> bs!871855 (not (= lambda!175362 lambda!175215))))

(assert (=> bs!871856 (= (= lt!1710938 lt!1710429) (= lambda!175362 lambda!175339))))

(assert (=> bs!871849 (= (= lt!1710938 lt!1710448) (= lambda!175362 lambda!175266))))

(assert (=> bs!871857 (= (= lt!1710938 lt!1710448) (= lambda!175362 lambda!175265))))

(assert (=> b!4535666 true))

(declare-fun bs!871858 () Bool)

(declare-fun d!1400896 () Bool)

(assert (= bs!871858 (and d!1400896 d!1400816)))

(declare-fun lt!1710949 () ListMap!3653)

(declare-fun lambda!175363 () Int)

(assert (=> bs!871858 (= (= lt!1710949 lt!1710851) (= lambda!175363 lambda!175344))))

(declare-fun bs!871859 () Bool)

(assert (= bs!871859 (and d!1400896 d!1400724)))

(assert (=> bs!871859 (not (= lambda!175363 lambda!175312))))

(declare-fun bs!871860 () Bool)

(assert (= bs!871860 (and d!1400896 b!4535309)))

(assert (=> bs!871860 (= (= lt!1710949 lt!1710578) (= lambda!175363 lambda!175267))))

(declare-fun bs!871861 () Bool)

(assert (= bs!871861 (and d!1400896 d!1400874)))

(assert (=> bs!871861 (= (= lt!1710949 lt!1710913) (= lambda!175363 lambda!175352))))

(declare-fun bs!871862 () Bool)

(assert (= bs!871862 (and d!1400896 b!4535625)))

(assert (=> bs!871862 (= (= lt!1710949 lt!1710415) (= lambda!175363 lambda!175349))))

(declare-fun bs!871863 () Bool)

(assert (= bs!871863 (and d!1400896 b!4535622)))

(assert (=> bs!871863 (= (= lt!1710949 lt!1710902) (= lambda!175363 lambda!175351))))

(declare-fun bs!871864 () Bool)

(assert (= bs!871864 (and d!1400896 b!4535542)))

(assert (=> bs!871864 (= (= lt!1710949 lt!1710429) (= lambda!175363 lambda!175340))))

(declare-fun bs!871865 () Bool)

(assert (= bs!871865 (and d!1400896 d!1400628)))

(assert (=> bs!871865 (= (= lt!1710949 lt!1710589) (= lambda!175363 lambda!175268))))

(declare-fun bs!871866 () Bool)

(assert (= bs!871866 (and d!1400896 b!4535669)))

(assert (=> bs!871866 (= (= lt!1710949 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175363 lambda!175360))))

(assert (=> bs!871864 (= (= lt!1710949 lt!1710840) (= lambda!175363 lambda!175341))))

(declare-fun bs!871867 () Bool)

(assert (= bs!871867 (and d!1400896 b!4535666)))

(assert (=> bs!871867 (= (= lt!1710949 lt!1710938) (= lambda!175363 lambda!175362))))

(assert (=> bs!871867 (= (= lt!1710949 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175363 lambda!175361))))

(assert (=> bs!871863 (= (= lt!1710949 lt!1710415) (= lambda!175363 lambda!175350))))

(declare-fun bs!871868 () Bool)

(assert (= bs!871868 (and d!1400896 b!4535199)))

(assert (=> bs!871868 (not (= lambda!175363 lambda!175215))))

(declare-fun bs!871869 () Bool)

(assert (= bs!871869 (and d!1400896 b!4535545)))

(assert (=> bs!871869 (= (= lt!1710949 lt!1710429) (= lambda!175363 lambda!175339))))

(assert (=> bs!871860 (= (= lt!1710949 lt!1710448) (= lambda!175363 lambda!175266))))

(declare-fun bs!871870 () Bool)

(assert (= bs!871870 (and d!1400896 b!4535312)))

(assert (=> bs!871870 (= (= lt!1710949 lt!1710448) (= lambda!175363 lambda!175265))))

(assert (=> d!1400896 true))

(declare-fun bm!316197 () Bool)

(declare-fun call!316202 () Unit!97630)

(assert (=> bm!316197 (= call!316202 (lemmaContainsAllItsOwnKeys!359 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))))))

(declare-fun c!774526 () Bool)

(declare-fun bm!316198 () Bool)

(declare-fun call!316203 () Bool)

(assert (=> bm!316198 (= call!316203 (forall!10330 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (ite c!774526 lambda!175360 lambda!175362)))))

(declare-fun e!2826293 () ListMap!3653)

(assert (=> b!4535666 (= e!2826293 lt!1710938)))

(declare-fun lt!1710940 () ListMap!3653)

(assert (=> b!4535666 (= lt!1710940 (+!1593 (extractMap!1248 (t!357819 (toList!4392 lt!1710440))) (h!56607 (_2!28896 (h!56608 (toList!4392 lt!1710440))))))))

(assert (=> b!4535666 (= lt!1710938 (addToMapMapFromBucket!719 (t!357818 (_2!28896 (h!56608 (toList!4392 lt!1710440)))) (+!1593 (extractMap!1248 (t!357819 (toList!4392 lt!1710440))) (h!56607 (_2!28896 (h!56608 (toList!4392 lt!1710440)))))))))

(declare-fun lt!1710951 () Unit!97630)

(assert (=> b!4535666 (= lt!1710951 call!316202)))

(assert (=> b!4535666 (forall!10330 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) lambda!175361)))

(declare-fun lt!1710946 () Unit!97630)

(assert (=> b!4535666 (= lt!1710946 lt!1710951)))

(assert (=> b!4535666 (forall!10330 (toList!4391 lt!1710940) lambda!175362)))

(declare-fun lt!1710941 () Unit!97630)

(declare-fun Unit!97718 () Unit!97630)

(assert (=> b!4535666 (= lt!1710941 Unit!97718)))

(assert (=> b!4535666 (forall!10330 (t!357818 (_2!28896 (h!56608 (toList!4392 lt!1710440)))) lambda!175362)))

(declare-fun lt!1710943 () Unit!97630)

(declare-fun Unit!97719 () Unit!97630)

(assert (=> b!4535666 (= lt!1710943 Unit!97719)))

(declare-fun lt!1710937 () Unit!97630)

(declare-fun Unit!97720 () Unit!97630)

(assert (=> b!4535666 (= lt!1710937 Unit!97720)))

(declare-fun lt!1710955 () Unit!97630)

(assert (=> b!4535666 (= lt!1710955 (forallContained!2591 (toList!4391 lt!1710940) lambda!175362 (h!56607 (_2!28896 (h!56608 (toList!4392 lt!1710440))))))))

(assert (=> b!4535666 (contains!13513 lt!1710940 (_1!28895 (h!56607 (_2!28896 (h!56608 (toList!4392 lt!1710440))))))))

(declare-fun lt!1710935 () Unit!97630)

(declare-fun Unit!97721 () Unit!97630)

(assert (=> b!4535666 (= lt!1710935 Unit!97721)))

(assert (=> b!4535666 (contains!13513 lt!1710938 (_1!28895 (h!56607 (_2!28896 (h!56608 (toList!4392 lt!1710440))))))))

(declare-fun lt!1710947 () Unit!97630)

(declare-fun Unit!97722 () Unit!97630)

(assert (=> b!4535666 (= lt!1710947 Unit!97722)))

(assert (=> b!4535666 (forall!10330 (_2!28896 (h!56608 (toList!4392 lt!1710440))) lambda!175362)))

(declare-fun lt!1710950 () Unit!97630)

(declare-fun Unit!97723 () Unit!97630)

(assert (=> b!4535666 (= lt!1710950 Unit!97723)))

(assert (=> b!4535666 (forall!10330 (toList!4391 lt!1710940) lambda!175362)))

(declare-fun lt!1710936 () Unit!97630)

(declare-fun Unit!97724 () Unit!97630)

(assert (=> b!4535666 (= lt!1710936 Unit!97724)))

(declare-fun lt!1710939 () Unit!97630)

(declare-fun Unit!97725 () Unit!97630)

(assert (=> b!4535666 (= lt!1710939 Unit!97725)))

(declare-fun lt!1710952 () Unit!97630)

(assert (=> b!4535666 (= lt!1710952 (addForallContainsKeyThenBeforeAdding!359 (extractMap!1248 (t!357819 (toList!4392 lt!1710440))) lt!1710938 (_1!28895 (h!56607 (_2!28896 (h!56608 (toList!4392 lt!1710440))))) (_2!28895 (h!56607 (_2!28896 (h!56608 (toList!4392 lt!1710440)))))))))

(assert (=> b!4535666 (forall!10330 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) lambda!175362)))

(declare-fun lt!1710944 () Unit!97630)

(assert (=> b!4535666 (= lt!1710944 lt!1710952)))

(assert (=> b!4535666 (forall!10330 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) lambda!175362)))

(declare-fun lt!1710942 () Unit!97630)

(declare-fun Unit!97726 () Unit!97630)

(assert (=> b!4535666 (= lt!1710942 Unit!97726)))

(declare-fun res!1889698 () Bool)

(declare-fun call!316204 () Bool)

(assert (=> b!4535666 (= res!1889698 call!316204)))

(declare-fun e!2826292 () Bool)

(assert (=> b!4535666 (=> (not res!1889698) (not e!2826292))))

(assert (=> b!4535666 e!2826292))

(declare-fun lt!1710945 () Unit!97630)

(declare-fun Unit!97727 () Unit!97630)

(assert (=> b!4535666 (= lt!1710945 Unit!97727)))

(declare-fun b!4535667 () Bool)

(declare-fun e!2826291 () Bool)

(assert (=> b!4535667 (= e!2826291 (invariantList!1039 (toList!4391 lt!1710949)))))

(declare-fun b!4535668 () Bool)

(declare-fun res!1889699 () Bool)

(assert (=> b!4535668 (=> (not res!1889699) (not e!2826291))))

(assert (=> b!4535668 (= res!1889699 (forall!10330 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) lambda!175363))))

(declare-fun bm!316199 () Bool)

(assert (=> bm!316199 (= call!316204 (forall!10330 (ite c!774526 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (_2!28896 (h!56608 (toList!4392 lt!1710440)))) (ite c!774526 lambda!175360 lambda!175362)))))

(declare-fun b!4535670 () Bool)

(assert (=> b!4535670 (= e!2826292 call!316203)))

(assert (=> b!4535669 (= e!2826293 (extractMap!1248 (t!357819 (toList!4392 lt!1710440))))))

(declare-fun lt!1710948 () Unit!97630)

(assert (=> b!4535669 (= lt!1710948 call!316202)))

(assert (=> b!4535669 call!316203))

(declare-fun lt!1710954 () Unit!97630)

(assert (=> b!4535669 (= lt!1710954 lt!1710948)))

(assert (=> b!4535669 call!316204))

(declare-fun lt!1710953 () Unit!97630)

(declare-fun Unit!97728 () Unit!97630)

(assert (=> b!4535669 (= lt!1710953 Unit!97728)))

(assert (=> d!1400896 e!2826291))

(declare-fun res!1889700 () Bool)

(assert (=> d!1400896 (=> (not res!1889700) (not e!2826291))))

(assert (=> d!1400896 (= res!1889700 (forall!10330 (_2!28896 (h!56608 (toList!4392 lt!1710440))) lambda!175363))))

(assert (=> d!1400896 (= lt!1710949 e!2826293)))

(assert (=> d!1400896 (= c!774526 ((_ is Nil!50732) (_2!28896 (h!56608 (toList!4392 lt!1710440)))))))

(assert (=> d!1400896 (noDuplicateKeys!1192 (_2!28896 (h!56608 (toList!4392 lt!1710440))))))

(assert (=> d!1400896 (= (addToMapMapFromBucket!719 (_2!28896 (h!56608 (toList!4392 lt!1710440))) (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) lt!1710949)))

(assert (= (and d!1400896 c!774526) b!4535669))

(assert (= (and d!1400896 (not c!774526)) b!4535666))

(assert (= (and b!4535666 res!1889698) b!4535670))

(assert (= (or b!4535669 b!4535670) bm!316198))

(assert (= (or b!4535669 b!4535666) bm!316199))

(assert (= (or b!4535669 b!4535666) bm!316197))

(assert (= (and d!1400896 res!1889700) b!4535668))

(assert (= (and b!4535668 res!1889699) b!4535667))

(declare-fun m!5297621 () Bool)

(assert (=> b!4535667 m!5297621))

(declare-fun m!5297623 () Bool)

(assert (=> d!1400896 m!5297623))

(declare-fun m!5297625 () Bool)

(assert (=> d!1400896 m!5297625))

(declare-fun m!5297627 () Bool)

(assert (=> bm!316199 m!5297627))

(declare-fun m!5297629 () Bool)

(assert (=> b!4535666 m!5297629))

(declare-fun m!5297631 () Bool)

(assert (=> b!4535666 m!5297631))

(declare-fun m!5297633 () Bool)

(assert (=> b!4535666 m!5297633))

(declare-fun m!5297635 () Bool)

(assert (=> b!4535666 m!5297635))

(assert (=> b!4535666 m!5297563))

(declare-fun m!5297637 () Bool)

(assert (=> b!4535666 m!5297637))

(declare-fun m!5297639 () Bool)

(assert (=> b!4535666 m!5297639))

(declare-fun m!5297641 () Bool)

(assert (=> b!4535666 m!5297641))

(assert (=> b!4535666 m!5297629))

(declare-fun m!5297643 () Bool)

(assert (=> b!4535666 m!5297643))

(assert (=> b!4535666 m!5297563))

(assert (=> b!4535666 m!5297639))

(declare-fun m!5297645 () Bool)

(assert (=> b!4535666 m!5297645))

(declare-fun m!5297647 () Bool)

(assert (=> b!4535666 m!5297647))

(assert (=> b!4535666 m!5297631))

(declare-fun m!5297649 () Bool)

(assert (=> b!4535666 m!5297649))

(assert (=> bm!316197 m!5297563))

(declare-fun m!5297651 () Bool)

(assert (=> bm!316197 m!5297651))

(declare-fun m!5297653 () Bool)

(assert (=> bm!316198 m!5297653))

(declare-fun m!5297655 () Bool)

(assert (=> b!4535668 m!5297655))

(assert (=> b!4535627 d!1400896))

(declare-fun bs!871871 () Bool)

(declare-fun d!1400898 () Bool)

(assert (= bs!871871 (and d!1400898 d!1400702)))

(declare-fun lambda!175364 () Int)

(assert (=> bs!871871 (= lambda!175364 lambda!175303)))

(declare-fun bs!871872 () Bool)

(assert (= bs!871872 (and d!1400898 d!1400798)))

(assert (=> bs!871872 (= lambda!175364 lambda!175338)))

(declare-fun bs!871873 () Bool)

(assert (= bs!871873 (and d!1400898 d!1400794)))

(assert (=> bs!871873 (= lambda!175364 lambda!175332)))

(declare-fun bs!871874 () Bool)

(assert (= bs!871874 (and d!1400898 d!1400876)))

(assert (=> bs!871874 (= lambda!175364 lambda!175353)))

(declare-fun bs!871875 () Bool)

(assert (= bs!871875 (and d!1400898 b!4535199)))

(assert (=> bs!871875 (not (= lambda!175364 lambda!175214))))

(declare-fun bs!871876 () Bool)

(assert (= bs!871876 (and d!1400898 d!1400704)))

(assert (=> bs!871876 (not (= lambda!175364 lambda!175306))))

(declare-fun bs!871877 () Bool)

(assert (= bs!871877 (and d!1400898 d!1400786)))

(assert (=> bs!871877 (= lambda!175364 lambda!175330)))

(declare-fun bs!871878 () Bool)

(assert (= bs!871878 (and d!1400898 d!1400790)))

(assert (=> bs!871878 (= lambda!175364 lambda!175331)))

(declare-fun bs!871879 () Bool)

(assert (= bs!871879 (and d!1400898 d!1400748)))

(assert (=> bs!871879 (= lambda!175364 lambda!175316)))

(declare-fun bs!871880 () Bool)

(assert (= bs!871880 (and d!1400898 d!1400708)))

(assert (=> bs!871880 (= lambda!175364 lambda!175309)))

(declare-fun bs!871881 () Bool)

(assert (= bs!871881 (and d!1400898 start!449928)))

(assert (=> bs!871881 (= lambda!175364 lambda!175213)))

(declare-fun bs!871882 () Bool)

(assert (= bs!871882 (and d!1400898 d!1400752)))

(assert (=> bs!871882 (= lambda!175364 lambda!175322)))

(declare-fun bs!871883 () Bool)

(assert (= bs!871883 (and d!1400898 d!1400854)))

(assert (=> bs!871883 (= lambda!175364 lambda!175348)))

(declare-fun bs!871884 () Bool)

(assert (= bs!871884 (and d!1400898 d!1400780)))

(assert (=> bs!871884 (= lambda!175364 lambda!175325)))

(declare-fun lt!1710956 () ListMap!3653)

(assert (=> d!1400898 (invariantList!1039 (toList!4391 lt!1710956))))

(declare-fun e!2826294 () ListMap!3653)

(assert (=> d!1400898 (= lt!1710956 e!2826294)))

(declare-fun c!774527 () Bool)

(assert (=> d!1400898 (= c!774527 ((_ is Cons!50733) (t!357819 (toList!4392 lt!1710440))))))

(assert (=> d!1400898 (forall!10329 (t!357819 (toList!4392 lt!1710440)) lambda!175364)))

(assert (=> d!1400898 (= (extractMap!1248 (t!357819 (toList!4392 lt!1710440))) lt!1710956)))

(declare-fun b!4535671 () Bool)

(assert (=> b!4535671 (= e!2826294 (addToMapMapFromBucket!719 (_2!28896 (h!56608 (t!357819 (toList!4392 lt!1710440)))) (extractMap!1248 (t!357819 (t!357819 (toList!4392 lt!1710440))))))))

(declare-fun b!4535672 () Bool)

(assert (=> b!4535672 (= e!2826294 (ListMap!3654 Nil!50732))))

(assert (= (and d!1400898 c!774527) b!4535671))

(assert (= (and d!1400898 (not c!774527)) b!4535672))

(declare-fun m!5297657 () Bool)

(assert (=> d!1400898 m!5297657))

(declare-fun m!5297659 () Bool)

(assert (=> d!1400898 m!5297659))

(declare-fun m!5297661 () Bool)

(assert (=> b!4535671 m!5297661))

(assert (=> b!4535671 m!5297661))

(declare-fun m!5297663 () Bool)

(assert (=> b!4535671 m!5297663))

(assert (=> b!4535627 d!1400898))

(declare-fun d!1400900 () Bool)

(assert (=> d!1400900 (dynLambda!21203 lambda!175213 (h!56608 (toList!4392 lm!1477)))))

(assert (=> d!1400900 true))

(declare-fun _$7!1922 () Unit!97630)

(assert (=> d!1400900 (= (choose!29814 (toList!4392 lm!1477) lambda!175213 (h!56608 (toList!4392 lm!1477))) _$7!1922)))

(declare-fun b_lambda!157237 () Bool)

(assert (=> (not b_lambda!157237) (not d!1400900)))

(declare-fun bs!871885 () Bool)

(assert (= bs!871885 d!1400900))

(assert (=> bs!871885 m!5297027))

(assert (=> d!1400718 d!1400900))

(assert (=> d!1400718 d!1400720))

(declare-fun d!1400902 () Bool)

(declare-fun c!774530 () Bool)

(assert (=> d!1400902 (= c!774530 ((_ is Nil!50735) (keys!17648 lt!1710447)))))

(declare-fun e!2826297 () (InoxSet K!12120))

(assert (=> d!1400902 (= (content!8421 (keys!17648 lt!1710447)) e!2826297)))

(declare-fun b!4535677 () Bool)

(assert (=> b!4535677 (= e!2826297 ((as const (Array K!12120 Bool)) false))))

(declare-fun b!4535678 () Bool)

(assert (=> b!4535678 (= e!2826297 ((_ map or) (store ((as const (Array K!12120 Bool)) false) (h!56612 (keys!17648 lt!1710447)) true) (content!8421 (t!357821 (keys!17648 lt!1710447)))))))

(assert (= (and d!1400902 c!774530) b!4535677))

(assert (= (and d!1400902 (not c!774530)) b!4535678))

(declare-fun m!5297665 () Bool)

(assert (=> b!4535678 m!5297665))

(declare-fun m!5297667 () Bool)

(assert (=> b!4535678 m!5297667))

(assert (=> b!4535572 d!1400902))

(assert (=> b!4535572 d!1400892))

(declare-fun d!1400904 () Bool)

(declare-fun c!774531 () Bool)

(assert (=> d!1400904 (= c!774531 ((_ is Nil!50735) (keys!17648 lt!1710876)))))

(declare-fun e!2826298 () (InoxSet K!12120))

(assert (=> d!1400904 (= (content!8421 (keys!17648 lt!1710876)) e!2826298)))

(declare-fun b!4535679 () Bool)

(assert (=> b!4535679 (= e!2826298 ((as const (Array K!12120 Bool)) false))))

(declare-fun b!4535680 () Bool)

(assert (=> b!4535680 (= e!2826298 ((_ map or) (store ((as const (Array K!12120 Bool)) false) (h!56612 (keys!17648 lt!1710876)) true) (content!8421 (t!357821 (keys!17648 lt!1710876)))))))

(assert (= (and d!1400904 c!774531) b!4535679))

(assert (= (and d!1400904 (not c!774531)) b!4535680))

(declare-fun m!5297669 () Bool)

(assert (=> b!4535680 m!5297669))

(declare-fun m!5297671 () Bool)

(assert (=> b!4535680 m!5297671))

(assert (=> b!4535572 d!1400904))

(declare-fun bs!871886 () Bool)

(declare-fun b!4535682 () Bool)

(assert (= bs!871886 (and b!4535682 b!4535656)))

(declare-fun lambda!175365 () Int)

(assert (=> bs!871886 (= (= (toList!4391 lt!1710876) (toList!4391 lt!1710447)) (= lambda!175365 lambda!175358))))

(assert (=> b!4535682 true))

(declare-fun bs!871887 () Bool)

(declare-fun b!4535683 () Bool)

(assert (= bs!871887 (and b!4535683 b!4535657)))

(declare-fun lambda!175366 () Int)

(assert (=> bs!871887 (= lambda!175366 lambda!175359)))

(declare-fun d!1400906 () Bool)

(declare-fun e!2826299 () Bool)

(assert (=> d!1400906 e!2826299))

(declare-fun res!1889701 () Bool)

(assert (=> d!1400906 (=> (not res!1889701) (not e!2826299))))

(declare-fun lt!1710957 () List!50859)

(assert (=> d!1400906 (= res!1889701 (noDuplicate!759 lt!1710957))))

(assert (=> d!1400906 (= lt!1710957 (getKeysList!487 (toList!4391 lt!1710876)))))

(assert (=> d!1400906 (= (keys!17648 lt!1710876) lt!1710957)))

(declare-fun b!4535681 () Bool)

(declare-fun res!1889703 () Bool)

(assert (=> b!4535681 (=> (not res!1889703) (not e!2826299))))

(assert (=> b!4535681 (= res!1889703 (= (length!374 lt!1710957) (length!375 (toList!4391 lt!1710876))))))

(declare-fun res!1889702 () Bool)

(assert (=> b!4535682 (=> (not res!1889702) (not e!2826299))))

(assert (=> b!4535682 (= res!1889702 (forall!10332 lt!1710957 lambda!175365))))

(assert (=> b!4535683 (= e!2826299 (= (content!8421 lt!1710957) (content!8421 (map!11166 (toList!4391 lt!1710876) lambda!175366))))))

(assert (= (and d!1400906 res!1889701) b!4535681))

(assert (= (and b!4535681 res!1889703) b!4535682))

(assert (= (and b!4535682 res!1889702) b!4535683))

(declare-fun m!5297673 () Bool)

(assert (=> d!1400906 m!5297673))

(declare-fun m!5297675 () Bool)

(assert (=> d!1400906 m!5297675))

(declare-fun m!5297677 () Bool)

(assert (=> b!4535681 m!5297677))

(declare-fun m!5297679 () Bool)

(assert (=> b!4535681 m!5297679))

(declare-fun m!5297681 () Bool)

(assert (=> b!4535682 m!5297681))

(declare-fun m!5297683 () Bool)

(assert (=> b!4535683 m!5297683))

(declare-fun m!5297685 () Bool)

(assert (=> b!4535683 m!5297685))

(assert (=> b!4535683 m!5297685))

(declare-fun m!5297687 () Bool)

(assert (=> b!4535683 m!5297687))

(assert (=> b!4535572 d!1400906))

(declare-fun d!1400908 () Bool)

(declare-fun res!1889704 () Bool)

(declare-fun e!2826300 () Bool)

(assert (=> d!1400908 (=> res!1889704 e!2826300)))

(assert (=> d!1400908 (= res!1889704 ((_ is Nil!50732) (ite c!774458 (toList!4391 lt!1710448) (_2!28896 lt!1710445))))))

(assert (=> d!1400908 (= (forall!10330 (ite c!774458 (toList!4391 lt!1710448) (_2!28896 lt!1710445)) (ite c!774458 lambda!175265 lambda!175267)) e!2826300)))

(declare-fun b!4535684 () Bool)

(declare-fun e!2826301 () Bool)

(assert (=> b!4535684 (= e!2826300 e!2826301)))

(declare-fun res!1889705 () Bool)

(assert (=> b!4535684 (=> (not res!1889705) (not e!2826301))))

(assert (=> b!4535684 (= res!1889705 (dynLambda!21205 (ite c!774458 lambda!175265 lambda!175267) (h!56607 (ite c!774458 (toList!4391 lt!1710448) (_2!28896 lt!1710445)))))))

(declare-fun b!4535685 () Bool)

(assert (=> b!4535685 (= e!2826301 (forall!10330 (t!357818 (ite c!774458 (toList!4391 lt!1710448) (_2!28896 lt!1710445))) (ite c!774458 lambda!175265 lambda!175267)))))

(assert (= (and d!1400908 (not res!1889704)) b!4535684))

(assert (= (and b!4535684 res!1889705) b!4535685))

(declare-fun b_lambda!157239 () Bool)

(assert (=> (not b_lambda!157239) (not b!4535684)))

(declare-fun m!5297689 () Bool)

(assert (=> b!4535684 m!5297689))

(declare-fun m!5297691 () Bool)

(assert (=> b!4535685 m!5297691))

(assert (=> bm!316169 d!1400908))

(declare-fun d!1400910 () Bool)

(declare-fun res!1889710 () Bool)

(declare-fun e!2826306 () Bool)

(assert (=> d!1400910 (=> res!1889710 e!2826306)))

(assert (=> d!1400910 (= res!1889710 (and ((_ is Cons!50732) (toList!4391 lt!1710448)) (= (_1!28895 (h!56607 (toList!4391 lt!1710448))) key!3287)))))

(assert (=> d!1400910 (= (containsKey!1859 (toList!4391 lt!1710448) key!3287) e!2826306)))

(declare-fun b!4535690 () Bool)

(declare-fun e!2826307 () Bool)

(assert (=> b!4535690 (= e!2826306 e!2826307)))

(declare-fun res!1889711 () Bool)

(assert (=> b!4535690 (=> (not res!1889711) (not e!2826307))))

(assert (=> b!4535690 (= res!1889711 ((_ is Cons!50732) (toList!4391 lt!1710448)))))

(declare-fun b!4535691 () Bool)

(assert (=> b!4535691 (= e!2826307 (containsKey!1859 (t!357818 (toList!4391 lt!1710448)) key!3287))))

(assert (= (and d!1400910 (not res!1889710)) b!4535690))

(assert (= (and b!4535690 res!1889711) b!4535691))

(declare-fun m!5297693 () Bool)

(assert (=> b!4535691 m!5297693))

(assert (=> b!4535508 d!1400910))

(declare-fun d!1400912 () Bool)

(assert (=> d!1400912 (containsKey!1859 (toList!4391 lt!1710448) key!3287)))

(declare-fun lt!1710960 () Unit!97630)

(declare-fun choose!29828 (List!50856 K!12120) Unit!97630)

(assert (=> d!1400912 (= lt!1710960 (choose!29828 (toList!4391 lt!1710448) key!3287))))

(assert (=> d!1400912 (invariantList!1039 (toList!4391 lt!1710448))))

(assert (=> d!1400912 (= (lemmaInGetKeysListThenContainsKey!486 (toList!4391 lt!1710448) key!3287) lt!1710960)))

(declare-fun bs!871888 () Bool)

(assert (= bs!871888 d!1400912))

(assert (=> bs!871888 m!5297317))

(declare-fun m!5297695 () Bool)

(assert (=> bs!871888 m!5297695))

(declare-fun m!5297697 () Bool)

(assert (=> bs!871888 m!5297697))

(assert (=> b!4535508 d!1400912))

(declare-fun d!1400914 () Bool)

(declare-fun lt!1710961 () Bool)

(assert (=> d!1400914 (= lt!1710961 (select (content!8425 (toList!4392 lt!1710757)) lt!1710445))))

(declare-fun e!2826308 () Bool)

(assert (=> d!1400914 (= lt!1710961 e!2826308)))

(declare-fun res!1889713 () Bool)

(assert (=> d!1400914 (=> (not res!1889713) (not e!2826308))))

(assert (=> d!1400914 (= res!1889713 ((_ is Cons!50733) (toList!4392 lt!1710757)))))

(assert (=> d!1400914 (= (contains!13511 (toList!4392 lt!1710757) lt!1710445) lt!1710961)))

(declare-fun b!4535692 () Bool)

(declare-fun e!2826309 () Bool)

(assert (=> b!4535692 (= e!2826308 e!2826309)))

(declare-fun res!1889712 () Bool)

(assert (=> b!4535692 (=> res!1889712 e!2826309)))

(assert (=> b!4535692 (= res!1889712 (= (h!56608 (toList!4392 lt!1710757)) lt!1710445))))

(declare-fun b!4535693 () Bool)

(assert (=> b!4535693 (= e!2826309 (contains!13511 (t!357819 (toList!4392 lt!1710757)) lt!1710445))))

(assert (= (and d!1400914 res!1889713) b!4535692))

(assert (= (and b!4535692 (not res!1889712)) b!4535693))

(declare-fun m!5297699 () Bool)

(assert (=> d!1400914 m!5297699))

(declare-fun m!5297701 () Bool)

(assert (=> d!1400914 m!5297701))

(declare-fun m!5297703 () Bool)

(assert (=> b!4535693 m!5297703))

(assert (=> b!4535452 d!1400914))

(assert (=> d!1400826 d!1400816))

(assert (=> d!1400826 d!1400874))

(declare-fun d!1400916 () Bool)

(assert (=> d!1400916 (eq!649 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710415) (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710429))))

(assert (=> d!1400916 true))

(declare-fun _$16!254 () Unit!97630)

(assert (=> d!1400916 (= (choose!29820 lt!1710415 lt!1710429 (_2!28896 lt!1710445)) _$16!254)))

(declare-fun bs!871889 () Bool)

(assert (= bs!871889 d!1400916))

(assert (=> bs!871889 m!5296605))

(assert (=> bs!871889 m!5296569))

(assert (=> bs!871889 m!5296605))

(assert (=> bs!871889 m!5296569))

(assert (=> bs!871889 m!5297441))

(assert (=> d!1400826 d!1400916))

(assert (=> d!1400826 d!1400716))

(declare-fun d!1400918 () Bool)

(assert (=> d!1400918 (= (eq!649 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710415) (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710429)) (= (content!8420 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710415))) (content!8420 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710429)))))))

(declare-fun bs!871890 () Bool)

(assert (= bs!871890 d!1400918))

(declare-fun m!5297705 () Bool)

(assert (=> bs!871890 m!5297705))

(declare-fun m!5297707 () Bool)

(assert (=> bs!871890 m!5297707))

(assert (=> d!1400826 d!1400918))

(declare-fun d!1400920 () Bool)

(declare-fun c!774532 () Bool)

(assert (=> d!1400920 (= c!774532 ((_ is Nil!50735) (keys!17648 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448))))))

(declare-fun e!2826310 () (InoxSet K!12120))

(assert (=> d!1400920 (= (content!8421 (keys!17648 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448))) e!2826310)))

(declare-fun b!4535694 () Bool)

(assert (=> b!4535694 (= e!2826310 ((as const (Array K!12120 Bool)) false))))

(declare-fun b!4535695 () Bool)

(assert (=> b!4535695 (= e!2826310 ((_ map or) (store ((as const (Array K!12120 Bool)) false) (h!56612 (keys!17648 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448))) true) (content!8421 (t!357821 (keys!17648 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448))))))))

(assert (= (and d!1400920 c!774532) b!4535694))

(assert (= (and d!1400920 (not c!774532)) b!4535695))

(declare-fun m!5297709 () Bool)

(assert (=> b!4535695 m!5297709))

(declare-fun m!5297711 () Bool)

(assert (=> b!4535695 m!5297711))

(assert (=> b!4535215 d!1400920))

(declare-fun bs!871891 () Bool)

(declare-fun b!4535697 () Bool)

(assert (= bs!871891 (and b!4535697 b!4535656)))

(declare-fun lambda!175367 () Int)

(assert (=> bs!871891 (= (= (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448)) (toList!4391 lt!1710447)) (= lambda!175367 lambda!175358))))

(declare-fun bs!871892 () Bool)

(assert (= bs!871892 (and b!4535697 b!4535682)))

(assert (=> bs!871892 (= (= (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448)) (toList!4391 lt!1710876)) (= lambda!175367 lambda!175365))))

(assert (=> b!4535697 true))

(declare-fun bs!871893 () Bool)

(declare-fun b!4535698 () Bool)

(assert (= bs!871893 (and b!4535698 b!4535657)))

(declare-fun lambda!175368 () Int)

(assert (=> bs!871893 (= lambda!175368 lambda!175359)))

(declare-fun bs!871894 () Bool)

(assert (= bs!871894 (and b!4535698 b!4535683)))

(assert (=> bs!871894 (= lambda!175368 lambda!175366)))

(declare-fun d!1400922 () Bool)

(declare-fun e!2826311 () Bool)

(assert (=> d!1400922 e!2826311))

(declare-fun res!1889714 () Bool)

(assert (=> d!1400922 (=> (not res!1889714) (not e!2826311))))

(declare-fun lt!1710962 () List!50859)

(assert (=> d!1400922 (= res!1889714 (noDuplicate!759 lt!1710962))))

(assert (=> d!1400922 (= lt!1710962 (getKeysList!487 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448))))))

(assert (=> d!1400922 (= (keys!17648 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448)) lt!1710962)))

(declare-fun b!4535696 () Bool)

(declare-fun res!1889716 () Bool)

(assert (=> b!4535696 (=> (not res!1889716) (not e!2826311))))

(assert (=> b!4535696 (= res!1889716 (= (length!374 lt!1710962) (length!375 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448)))))))

(declare-fun res!1889715 () Bool)

(assert (=> b!4535697 (=> (not res!1889715) (not e!2826311))))

(assert (=> b!4535697 (= res!1889715 (forall!10332 lt!1710962 lambda!175367))))

(assert (=> b!4535698 (= e!2826311 (= (content!8421 lt!1710962) (content!8421 (map!11166 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448)) lambda!175368))))))

(assert (= (and d!1400922 res!1889714) b!4535696))

(assert (= (and b!4535696 res!1889716) b!4535697))

(assert (= (and b!4535697 res!1889715) b!4535698))

(declare-fun m!5297713 () Bool)

(assert (=> d!1400922 m!5297713))

(declare-fun m!5297715 () Bool)

(assert (=> d!1400922 m!5297715))

(declare-fun m!5297717 () Bool)

(assert (=> b!4535696 m!5297717))

(declare-fun m!5297719 () Bool)

(assert (=> b!4535696 m!5297719))

(declare-fun m!5297721 () Bool)

(assert (=> b!4535697 m!5297721))

(declare-fun m!5297723 () Bool)

(assert (=> b!4535698 m!5297723))

(declare-fun m!5297725 () Bool)

(assert (=> b!4535698 m!5297725))

(assert (=> b!4535698 m!5297725))

(declare-fun m!5297727 () Bool)

(assert (=> b!4535698 m!5297727))

(assert (=> b!4535215 d!1400922))

(declare-fun d!1400924 () Bool)

(declare-fun c!774533 () Bool)

(assert (=> d!1400924 (= c!774533 ((_ is Nil!50735) (keys!17648 lt!1710451)))))

(declare-fun e!2826312 () (InoxSet K!12120))

(assert (=> d!1400924 (= (content!8421 (keys!17648 lt!1710451)) e!2826312)))

(declare-fun b!4535699 () Bool)

(assert (=> b!4535699 (= e!2826312 ((as const (Array K!12120 Bool)) false))))

(declare-fun b!4535700 () Bool)

(assert (=> b!4535700 (= e!2826312 ((_ map or) (store ((as const (Array K!12120 Bool)) false) (h!56612 (keys!17648 lt!1710451)) true) (content!8421 (t!357821 (keys!17648 lt!1710451)))))))

(assert (= (and d!1400924 c!774533) b!4535699))

(assert (= (and d!1400924 (not c!774533)) b!4535700))

(declare-fun m!5297729 () Bool)

(assert (=> b!4535700 m!5297729))

(declare-fun m!5297731 () Bool)

(assert (=> b!4535700 m!5297731))

(assert (=> b!4535215 d!1400924))

(declare-fun bs!871895 () Bool)

(declare-fun b!4535702 () Bool)

(assert (= bs!871895 (and b!4535702 b!4535656)))

(declare-fun lambda!175369 () Int)

(assert (=> bs!871895 (= (= (toList!4391 lt!1710451) (toList!4391 lt!1710447)) (= lambda!175369 lambda!175358))))

(declare-fun bs!871896 () Bool)

(assert (= bs!871896 (and b!4535702 b!4535682)))

(assert (=> bs!871896 (= (= (toList!4391 lt!1710451) (toList!4391 lt!1710876)) (= lambda!175369 lambda!175365))))

(declare-fun bs!871897 () Bool)

(assert (= bs!871897 (and b!4535702 b!4535697)))

(assert (=> bs!871897 (= (= (toList!4391 lt!1710451) (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448))) (= lambda!175369 lambda!175367))))

(assert (=> b!4535702 true))

(declare-fun bs!871898 () Bool)

(declare-fun b!4535703 () Bool)

(assert (= bs!871898 (and b!4535703 b!4535657)))

(declare-fun lambda!175370 () Int)

(assert (=> bs!871898 (= lambda!175370 lambda!175359)))

(declare-fun bs!871899 () Bool)

(assert (= bs!871899 (and b!4535703 b!4535683)))

(assert (=> bs!871899 (= lambda!175370 lambda!175366)))

(declare-fun bs!871900 () Bool)

(assert (= bs!871900 (and b!4535703 b!4535698)))

(assert (=> bs!871900 (= lambda!175370 lambda!175368)))

(declare-fun d!1400926 () Bool)

(declare-fun e!2826313 () Bool)

(assert (=> d!1400926 e!2826313))

(declare-fun res!1889717 () Bool)

(assert (=> d!1400926 (=> (not res!1889717) (not e!2826313))))

(declare-fun lt!1710963 () List!50859)

(assert (=> d!1400926 (= res!1889717 (noDuplicate!759 lt!1710963))))

(assert (=> d!1400926 (= lt!1710963 (getKeysList!487 (toList!4391 lt!1710451)))))

(assert (=> d!1400926 (= (keys!17648 lt!1710451) lt!1710963)))

(declare-fun b!4535701 () Bool)

(declare-fun res!1889719 () Bool)

(assert (=> b!4535701 (=> (not res!1889719) (not e!2826313))))

(assert (=> b!4535701 (= res!1889719 (= (length!374 lt!1710963) (length!375 (toList!4391 lt!1710451))))))

(declare-fun res!1889718 () Bool)

(assert (=> b!4535702 (=> (not res!1889718) (not e!2826313))))

(assert (=> b!4535702 (= res!1889718 (forall!10332 lt!1710963 lambda!175369))))

(assert (=> b!4535703 (= e!2826313 (= (content!8421 lt!1710963) (content!8421 (map!11166 (toList!4391 lt!1710451) lambda!175370))))))

(assert (= (and d!1400926 res!1889717) b!4535701))

(assert (= (and b!4535701 res!1889719) b!4535702))

(assert (= (and b!4535702 res!1889718) b!4535703))

(declare-fun m!5297733 () Bool)

(assert (=> d!1400926 m!5297733))

(declare-fun m!5297735 () Bool)

(assert (=> d!1400926 m!5297735))

(declare-fun m!5297737 () Bool)

(assert (=> b!4535701 m!5297737))

(declare-fun m!5297739 () Bool)

(assert (=> b!4535701 m!5297739))

(declare-fun m!5297741 () Bool)

(assert (=> b!4535702 m!5297741))

(declare-fun m!5297743 () Bool)

(assert (=> b!4535703 m!5297743))

(declare-fun m!5297745 () Bool)

(assert (=> b!4535703 m!5297745))

(assert (=> b!4535703 m!5297745))

(declare-fun m!5297747 () Bool)

(assert (=> b!4535703 m!5297747))

(assert (=> b!4535215 d!1400926))

(declare-fun d!1400928 () Bool)

(declare-fun lt!1710966 () Bool)

(assert (=> d!1400928 (= lt!1710966 (select (content!8420 (_2!28896 (h!56608 (toList!4392 lm!1477)))) (tuple2!51203 key!3287 (_2!28895 (get!16666 lt!1710416)))))))

(declare-fun e!2826319 () Bool)

(assert (=> d!1400928 (= lt!1710966 e!2826319)))

(declare-fun res!1889725 () Bool)

(assert (=> d!1400928 (=> (not res!1889725) (not e!2826319))))

(assert (=> d!1400928 (= res!1889725 ((_ is Cons!50732) (_2!28896 (h!56608 (toList!4392 lm!1477)))))))

(assert (=> d!1400928 (= (contains!13517 (_2!28896 (h!56608 (toList!4392 lm!1477))) (tuple2!51203 key!3287 (_2!28895 (get!16666 lt!1710416)))) lt!1710966)))

(declare-fun b!4535708 () Bool)

(declare-fun e!2826318 () Bool)

(assert (=> b!4535708 (= e!2826319 e!2826318)))

(declare-fun res!1889724 () Bool)

(assert (=> b!4535708 (=> res!1889724 e!2826318)))

(assert (=> b!4535708 (= res!1889724 (= (h!56607 (_2!28896 (h!56608 (toList!4392 lm!1477)))) (tuple2!51203 key!3287 (_2!28895 (get!16666 lt!1710416)))))))

(declare-fun b!4535709 () Bool)

(assert (=> b!4535709 (= e!2826318 (contains!13517 (t!357818 (_2!28896 (h!56608 (toList!4392 lm!1477)))) (tuple2!51203 key!3287 (_2!28895 (get!16666 lt!1710416)))))))

(assert (= (and d!1400928 res!1889725) b!4535708))

(assert (= (and b!4535708 (not res!1889724)) b!4535709))

(declare-fun m!5297749 () Bool)

(assert (=> d!1400928 m!5297749))

(declare-fun m!5297751 () Bool)

(assert (=> d!1400928 m!5297751))

(declare-fun m!5297753 () Bool)

(assert (=> b!4535709 m!5297753))

(assert (=> b!4535621 d!1400928))

(assert (=> b!4535358 d!1400892))

(declare-fun d!1400930 () Bool)

(declare-fun isEmpty!28736 (Option!11186) Bool)

(assert (=> d!1400930 (= (isDefined!8462 (getValueByKey!1136 (toList!4392 lt!1710421) hash!344)) (not (isEmpty!28736 (getValueByKey!1136 (toList!4392 lt!1710421) hash!344))))))

(declare-fun bs!871901 () Bool)

(assert (= bs!871901 d!1400930))

(assert (=> bs!871901 m!5296929))

(declare-fun m!5297755 () Bool)

(assert (=> bs!871901 m!5297755))

(assert (=> b!4535324 d!1400930))

(declare-fun b!4535719 () Bool)

(declare-fun e!2826324 () Option!11186)

(declare-fun e!2826325 () Option!11186)

(assert (=> b!4535719 (= e!2826324 e!2826325)))

(declare-fun c!774539 () Bool)

(assert (=> b!4535719 (= c!774539 (and ((_ is Cons!50733) (toList!4392 lt!1710421)) (not (= (_1!28896 (h!56608 (toList!4392 lt!1710421))) hash!344))))))

(declare-fun b!4535718 () Bool)

(assert (=> b!4535718 (= e!2826324 (Some!11185 (_2!28896 (h!56608 (toList!4392 lt!1710421)))))))

(declare-fun b!4535721 () Bool)

(assert (=> b!4535721 (= e!2826325 None!11185)))

(declare-fun d!1400932 () Bool)

(declare-fun c!774538 () Bool)

(assert (=> d!1400932 (= c!774538 (and ((_ is Cons!50733) (toList!4392 lt!1710421)) (= (_1!28896 (h!56608 (toList!4392 lt!1710421))) hash!344)))))

(assert (=> d!1400932 (= (getValueByKey!1136 (toList!4392 lt!1710421) hash!344) e!2826324)))

(declare-fun b!4535720 () Bool)

(assert (=> b!4535720 (= e!2826325 (getValueByKey!1136 (t!357819 (toList!4392 lt!1710421)) hash!344))))

(assert (= (and d!1400932 c!774538) b!4535718))

(assert (= (and d!1400932 (not c!774538)) b!4535719))

(assert (= (and b!4535719 c!774539) b!4535720))

(assert (= (and b!4535719 (not c!774539)) b!4535721))

(declare-fun m!5297757 () Bool)

(assert (=> b!4535720 m!5297757))

(assert (=> b!4535324 d!1400932))

(declare-fun d!1400934 () Bool)

(declare-fun noDuplicatedKeys!274 (List!50856) Bool)

(assert (=> d!1400934 (= (invariantList!1039 (toList!4391 lt!1710920)) (noDuplicatedKeys!274 (toList!4391 lt!1710920)))))

(declare-fun bs!871902 () Bool)

(assert (= bs!871902 d!1400934))

(declare-fun m!5297759 () Bool)

(assert (=> bs!871902 m!5297759))

(assert (=> d!1400876 d!1400934))

(declare-fun d!1400936 () Bool)

(declare-fun res!1889726 () Bool)

(declare-fun e!2826326 () Bool)

(assert (=> d!1400936 (=> res!1889726 e!2826326)))

(assert (=> d!1400936 (= res!1889726 ((_ is Nil!50733) (toList!4392 lt!1710440)))))

(assert (=> d!1400936 (= (forall!10329 (toList!4392 lt!1710440) lambda!175353) e!2826326)))

(declare-fun b!4535722 () Bool)

(declare-fun e!2826327 () Bool)

(assert (=> b!4535722 (= e!2826326 e!2826327)))

(declare-fun res!1889727 () Bool)

(assert (=> b!4535722 (=> (not res!1889727) (not e!2826327))))

(assert (=> b!4535722 (= res!1889727 (dynLambda!21203 lambda!175353 (h!56608 (toList!4392 lt!1710440))))))

(declare-fun b!4535723 () Bool)

(assert (=> b!4535723 (= e!2826327 (forall!10329 (t!357819 (toList!4392 lt!1710440)) lambda!175353))))

(assert (= (and d!1400936 (not res!1889726)) b!4535722))

(assert (= (and b!4535722 res!1889727) b!4535723))

(declare-fun b_lambda!157241 () Bool)

(assert (=> (not b_lambda!157241) (not b!4535722)))

(declare-fun m!5297761 () Bool)

(assert (=> b!4535722 m!5297761))

(declare-fun m!5297763 () Bool)

(assert (=> b!4535723 m!5297763))

(assert (=> d!1400876 d!1400936))

(declare-fun d!1400938 () Bool)

(declare-fun lt!1710967 () Bool)

(assert (=> d!1400938 (= lt!1710967 (select (content!8425 (toList!4392 lm!1477)) (h!56608 (toList!4392 lm!1477))))))

(declare-fun e!2826328 () Bool)

(assert (=> d!1400938 (= lt!1710967 e!2826328)))

(declare-fun res!1889729 () Bool)

(assert (=> d!1400938 (=> (not res!1889729) (not e!2826328))))

(assert (=> d!1400938 (= res!1889729 ((_ is Cons!50733) (toList!4392 lm!1477)))))

(assert (=> d!1400938 (= (contains!13511 (toList!4392 lm!1477) (h!56608 (toList!4392 lm!1477))) lt!1710967)))

(declare-fun b!4535724 () Bool)

(declare-fun e!2826329 () Bool)

(assert (=> b!4535724 (= e!2826328 e!2826329)))

(declare-fun res!1889728 () Bool)

(assert (=> b!4535724 (=> res!1889728 e!2826329)))

(assert (=> b!4535724 (= res!1889728 (= (h!56608 (toList!4392 lm!1477)) (h!56608 (toList!4392 lm!1477))))))

(declare-fun b!4535725 () Bool)

(assert (=> b!4535725 (= e!2826329 (contains!13511 (t!357819 (toList!4392 lm!1477)) (h!56608 (toList!4392 lm!1477))))))

(assert (= (and d!1400938 res!1889729) b!4535724))

(assert (= (and b!4535724 (not res!1889728)) b!4535725))

(assert (=> d!1400938 m!5297465))

(declare-fun m!5297765 () Bool)

(assert (=> d!1400938 m!5297765))

(declare-fun m!5297767 () Bool)

(assert (=> b!4535725 m!5297767))

(assert (=> b!4535387 d!1400938))

(declare-fun lt!1710968 () Bool)

(declare-fun d!1400940 () Bool)

(assert (=> d!1400940 (= lt!1710968 (select (content!8425 (toList!4392 lm!1477)) (tuple2!51205 hash!344 lt!1710434)))))

(declare-fun e!2826330 () Bool)

(assert (=> d!1400940 (= lt!1710968 e!2826330)))

(declare-fun res!1889731 () Bool)

(assert (=> d!1400940 (=> (not res!1889731) (not e!2826330))))

(assert (=> d!1400940 (= res!1889731 ((_ is Cons!50733) (toList!4392 lm!1477)))))

(assert (=> d!1400940 (= (contains!13511 (toList!4392 lm!1477) (tuple2!51205 hash!344 lt!1710434)) lt!1710968)))

(declare-fun b!4535726 () Bool)

(declare-fun e!2826331 () Bool)

(assert (=> b!4535726 (= e!2826330 e!2826331)))

(declare-fun res!1889730 () Bool)

(assert (=> b!4535726 (=> res!1889730 e!2826331)))

(assert (=> b!4535726 (= res!1889730 (= (h!56608 (toList!4392 lm!1477)) (tuple2!51205 hash!344 lt!1710434)))))

(declare-fun b!4535727 () Bool)

(assert (=> b!4535727 (= e!2826331 (contains!13511 (t!357819 (toList!4392 lm!1477)) (tuple2!51205 hash!344 lt!1710434)))))

(assert (= (and d!1400940 res!1889731) b!4535726))

(assert (= (and b!4535726 (not res!1889730)) b!4535727))

(assert (=> d!1400940 m!5297465))

(declare-fun m!5297769 () Bool)

(assert (=> d!1400940 m!5297769))

(declare-fun m!5297771 () Bool)

(assert (=> b!4535727 m!5297771))

(assert (=> d!1400856 d!1400940))

(declare-fun d!1400942 () Bool)

(assert (=> d!1400942 (contains!13511 (toList!4392 lm!1477) (tuple2!51205 hash!344 lt!1710434))))

(assert (=> d!1400942 true))

(declare-fun _$14!1209 () Unit!97630)

(assert (=> d!1400942 (= (choose!29822 (toList!4392 lm!1477) hash!344 lt!1710434) _$14!1209)))

(declare-fun bs!871903 () Bool)

(assert (= bs!871903 d!1400942))

(assert (=> bs!871903 m!5297481))

(assert (=> d!1400856 d!1400942))

(declare-fun d!1400944 () Bool)

(declare-fun res!1889736 () Bool)

(declare-fun e!2826336 () Bool)

(assert (=> d!1400944 (=> res!1889736 e!2826336)))

(assert (=> d!1400944 (= res!1889736 (or ((_ is Nil!50733) (toList!4392 lm!1477)) ((_ is Nil!50733) (t!357819 (toList!4392 lm!1477)))))))

(assert (=> d!1400944 (= (isStrictlySorted!452 (toList!4392 lm!1477)) e!2826336)))

(declare-fun b!4535732 () Bool)

(declare-fun e!2826337 () Bool)

(assert (=> b!4535732 (= e!2826336 e!2826337)))

(declare-fun res!1889737 () Bool)

(assert (=> b!4535732 (=> (not res!1889737) (not e!2826337))))

(assert (=> b!4535732 (= res!1889737 (bvslt (_1!28896 (h!56608 (toList!4392 lm!1477))) (_1!28896 (h!56608 (t!357819 (toList!4392 lm!1477))))))))

(declare-fun b!4535733 () Bool)

(assert (=> b!4535733 (= e!2826337 (isStrictlySorted!452 (t!357819 (toList!4392 lm!1477))))))

(assert (= (and d!1400944 (not res!1889736)) b!4535732))

(assert (= (and b!4535732 res!1889737) b!4535733))

(declare-fun m!5297773 () Bool)

(assert (=> b!4535733 m!5297773))

(assert (=> d!1400856 d!1400944))

(declare-fun d!1400946 () Bool)

(declare-fun e!2826339 () Bool)

(assert (=> d!1400946 e!2826339))

(declare-fun res!1889738 () Bool)

(assert (=> d!1400946 (=> res!1889738 e!2826339)))

(declare-fun lt!1710971 () Bool)

(assert (=> d!1400946 (= res!1889738 (not lt!1710971))))

(declare-fun lt!1710972 () Bool)

(assert (=> d!1400946 (= lt!1710971 lt!1710972)))

(declare-fun lt!1710970 () Unit!97630)

(declare-fun e!2826338 () Unit!97630)

(assert (=> d!1400946 (= lt!1710970 e!2826338)))

(declare-fun c!774540 () Bool)

(assert (=> d!1400946 (= c!774540 lt!1710972)))

(assert (=> d!1400946 (= lt!1710972 (containsKey!1858 (toList!4392 lt!1710922) (_1!28896 lt!1710425)))))

(assert (=> d!1400946 (= (contains!13512 lt!1710922 (_1!28896 lt!1710425)) lt!1710971)))

(declare-fun b!4535734 () Bool)

(declare-fun lt!1710969 () Unit!97630)

(assert (=> b!4535734 (= e!2826338 lt!1710969)))

(assert (=> b!4535734 (= lt!1710969 (lemmaContainsKeyImpliesGetValueByKeyDefined!1039 (toList!4392 lt!1710922) (_1!28896 lt!1710425)))))

(assert (=> b!4535734 (isDefined!8462 (getValueByKey!1136 (toList!4392 lt!1710922) (_1!28896 lt!1710425)))))

(declare-fun b!4535735 () Bool)

(declare-fun Unit!97729 () Unit!97630)

(assert (=> b!4535735 (= e!2826338 Unit!97729)))

(declare-fun b!4535736 () Bool)

(assert (=> b!4535736 (= e!2826339 (isDefined!8462 (getValueByKey!1136 (toList!4392 lt!1710922) (_1!28896 lt!1710425))))))

(assert (= (and d!1400946 c!774540) b!4535734))

(assert (= (and d!1400946 (not c!774540)) b!4535735))

(assert (= (and d!1400946 (not res!1889738)) b!4535736))

(declare-fun m!5297775 () Bool)

(assert (=> d!1400946 m!5297775))

(declare-fun m!5297777 () Bool)

(assert (=> b!4535734 m!5297777))

(assert (=> b!4535734 m!5297575))

(assert (=> b!4535734 m!5297575))

(declare-fun m!5297779 () Bool)

(assert (=> b!4535734 m!5297779))

(assert (=> b!4535736 m!5297575))

(assert (=> b!4535736 m!5297575))

(assert (=> b!4535736 m!5297779))

(assert (=> d!1400878 d!1400946))

(declare-fun b!4535738 () Bool)

(declare-fun e!2826340 () Option!11186)

(declare-fun e!2826341 () Option!11186)

(assert (=> b!4535738 (= e!2826340 e!2826341)))

(declare-fun c!774542 () Bool)

(assert (=> b!4535738 (= c!774542 (and ((_ is Cons!50733) lt!1710921) (not (= (_1!28896 (h!56608 lt!1710921)) (_1!28896 lt!1710425)))))))

(declare-fun b!4535737 () Bool)

(assert (=> b!4535737 (= e!2826340 (Some!11185 (_2!28896 (h!56608 lt!1710921))))))

(declare-fun b!4535740 () Bool)

(assert (=> b!4535740 (= e!2826341 None!11185)))

(declare-fun d!1400948 () Bool)

(declare-fun c!774541 () Bool)

(assert (=> d!1400948 (= c!774541 (and ((_ is Cons!50733) lt!1710921) (= (_1!28896 (h!56608 lt!1710921)) (_1!28896 lt!1710425))))))

(assert (=> d!1400948 (= (getValueByKey!1136 lt!1710921 (_1!28896 lt!1710425)) e!2826340)))

(declare-fun b!4535739 () Bool)

(assert (=> b!4535739 (= e!2826341 (getValueByKey!1136 (t!357819 lt!1710921) (_1!28896 lt!1710425)))))

(assert (= (and d!1400948 c!774541) b!4535737))

(assert (= (and d!1400948 (not c!774541)) b!4535738))

(assert (= (and b!4535738 c!774542) b!4535739))

(assert (= (and b!4535738 (not c!774542)) b!4535740))

(declare-fun m!5297781 () Bool)

(assert (=> b!4535739 m!5297781))

(assert (=> d!1400878 d!1400948))

(declare-fun d!1400950 () Bool)

(assert (=> d!1400950 (= (getValueByKey!1136 lt!1710921 (_1!28896 lt!1710425)) (Some!11185 (_2!28896 lt!1710425)))))

(declare-fun lt!1710975 () Unit!97630)

(declare-fun choose!29830 (List!50857 (_ BitVec 64) List!50856) Unit!97630)

(assert (=> d!1400950 (= lt!1710975 (choose!29830 lt!1710921 (_1!28896 lt!1710425) (_2!28896 lt!1710425)))))

(declare-fun e!2826344 () Bool)

(assert (=> d!1400950 e!2826344))

(declare-fun res!1889743 () Bool)

(assert (=> d!1400950 (=> (not res!1889743) (not e!2826344))))

(assert (=> d!1400950 (= res!1889743 (isStrictlySorted!452 lt!1710921))))

(assert (=> d!1400950 (= (lemmaContainsTupThenGetReturnValue!712 lt!1710921 (_1!28896 lt!1710425) (_2!28896 lt!1710425)) lt!1710975)))

(declare-fun b!4535745 () Bool)

(declare-fun res!1889744 () Bool)

(assert (=> b!4535745 (=> (not res!1889744) (not e!2826344))))

(assert (=> b!4535745 (= res!1889744 (containsKey!1858 lt!1710921 (_1!28896 lt!1710425)))))

(declare-fun b!4535746 () Bool)

(assert (=> b!4535746 (= e!2826344 (contains!13511 lt!1710921 (tuple2!51205 (_1!28896 lt!1710425) (_2!28896 lt!1710425))))))

(assert (= (and d!1400950 res!1889743) b!4535745))

(assert (= (and b!4535745 res!1889744) b!4535746))

(assert (=> d!1400950 m!5297569))

(declare-fun m!5297783 () Bool)

(assert (=> d!1400950 m!5297783))

(declare-fun m!5297785 () Bool)

(assert (=> d!1400950 m!5297785))

(declare-fun m!5297787 () Bool)

(assert (=> b!4535745 m!5297787))

(declare-fun m!5297789 () Bool)

(assert (=> b!4535746 m!5297789))

(assert (=> d!1400878 d!1400950))

(declare-fun b!4535771 () Bool)

(declare-fun e!2826361 () List!50857)

(declare-fun e!2826360 () List!50857)

(assert (=> b!4535771 (= e!2826361 e!2826360)))

(declare-fun c!774554 () Bool)

(assert (=> b!4535771 (= c!774554 (and ((_ is Cons!50733) (toList!4392 lm!1477)) (= (_1!28896 (h!56608 (toList!4392 lm!1477))) (_1!28896 lt!1710425))))))

(declare-fun c!774552 () Bool)

(declare-fun bm!316206 () Bool)

(declare-fun call!316212 () List!50857)

(declare-fun e!2826363 () List!50857)

(declare-fun $colon$colon!959 (List!50857 tuple2!51204) List!50857)

(assert (=> bm!316206 (= call!316212 ($colon$colon!959 e!2826363 (ite c!774552 (h!56608 (toList!4392 lm!1477)) (tuple2!51205 (_1!28896 lt!1710425) (_2!28896 lt!1710425)))))))

(declare-fun c!774553 () Bool)

(assert (=> bm!316206 (= c!774553 c!774552)))

(declare-fun b!4535772 () Bool)

(assert (=> b!4535772 (= e!2826363 (insertStrictlySorted!430 (t!357819 (toList!4392 lm!1477)) (_1!28896 lt!1710425) (_2!28896 lt!1710425)))))

(declare-fun b!4535773 () Bool)

(declare-fun e!2826359 () List!50857)

(declare-fun call!316211 () List!50857)

(assert (=> b!4535773 (= e!2826359 call!316211)))

(declare-fun bm!316207 () Bool)

(declare-fun call!316213 () List!50857)

(assert (=> bm!316207 (= call!316213 call!316212)))

(declare-fun b!4535775 () Bool)

(declare-fun c!774551 () Bool)

(assert (=> b!4535775 (= c!774551 (and ((_ is Cons!50733) (toList!4392 lm!1477)) (bvsgt (_1!28896 (h!56608 (toList!4392 lm!1477))) (_1!28896 lt!1710425))))))

(assert (=> b!4535775 (= e!2826360 e!2826359)))

(declare-fun b!4535776 () Bool)

(assert (=> b!4535776 (= e!2826361 call!316212)))

(declare-fun bm!316208 () Bool)

(assert (=> bm!316208 (= call!316211 call!316213)))

(declare-fun b!4535777 () Bool)

(assert (=> b!4535777 (= e!2826359 call!316211)))

(declare-fun b!4535778 () Bool)

(assert (=> b!4535778 (= e!2826360 call!316213)))

(declare-fun b!4535774 () Bool)

(declare-fun e!2826362 () Bool)

(declare-fun lt!1710978 () List!50857)

(assert (=> b!4535774 (= e!2826362 (contains!13511 lt!1710978 (tuple2!51205 (_1!28896 lt!1710425) (_2!28896 lt!1710425))))))

(declare-fun d!1400952 () Bool)

(assert (=> d!1400952 e!2826362))

(declare-fun res!1889754 () Bool)

(assert (=> d!1400952 (=> (not res!1889754) (not e!2826362))))

(assert (=> d!1400952 (= res!1889754 (isStrictlySorted!452 lt!1710978))))

(assert (=> d!1400952 (= lt!1710978 e!2826361)))

(assert (=> d!1400952 (= c!774552 (and ((_ is Cons!50733) (toList!4392 lm!1477)) (bvslt (_1!28896 (h!56608 (toList!4392 lm!1477))) (_1!28896 lt!1710425))))))

(assert (=> d!1400952 (isStrictlySorted!452 (toList!4392 lm!1477))))

(assert (=> d!1400952 (= (insertStrictlySorted!430 (toList!4392 lm!1477) (_1!28896 lt!1710425) (_2!28896 lt!1710425)) lt!1710978)))

(declare-fun b!4535779 () Bool)

(assert (=> b!4535779 (= e!2826363 (ite c!774554 (t!357819 (toList!4392 lm!1477)) (ite c!774551 (Cons!50733 (h!56608 (toList!4392 lm!1477)) (t!357819 (toList!4392 lm!1477))) Nil!50733)))))

(declare-fun b!4535780 () Bool)

(declare-fun res!1889753 () Bool)

(assert (=> b!4535780 (=> (not res!1889753) (not e!2826362))))

(assert (=> b!4535780 (= res!1889753 (containsKey!1858 lt!1710978 (_1!28896 lt!1710425)))))

(assert (= (and d!1400952 c!774552) b!4535776))

(assert (= (and d!1400952 (not c!774552)) b!4535771))

(assert (= (and b!4535771 c!774554) b!4535778))

(assert (= (and b!4535771 (not c!774554)) b!4535775))

(assert (= (and b!4535775 c!774551) b!4535773))

(assert (= (and b!4535775 (not c!774551)) b!4535777))

(assert (= (or b!4535773 b!4535777) bm!316208))

(assert (= (or b!4535778 bm!316208) bm!316207))

(assert (= (or b!4535776 bm!316207) bm!316206))

(assert (= (and bm!316206 c!774553) b!4535772))

(assert (= (and bm!316206 (not c!774553)) b!4535779))

(assert (= (and d!1400952 res!1889754) b!4535780))

(assert (= (and b!4535780 res!1889753) b!4535774))

(declare-fun m!5297803 () Bool)

(assert (=> bm!316206 m!5297803))

(declare-fun m!5297805 () Bool)

(assert (=> b!4535780 m!5297805))

(declare-fun m!5297807 () Bool)

(assert (=> b!4535774 m!5297807))

(declare-fun m!5297809 () Bool)

(assert (=> d!1400952 m!5297809))

(assert (=> d!1400952 m!5297035))

(declare-fun m!5297811 () Bool)

(assert (=> b!4535772 m!5297811))

(assert (=> d!1400878 d!1400952))

(declare-fun d!1400966 () Bool)

(assert (=> d!1400966 (isDefined!8463 (getValueByKey!1137 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) key!3287))))

(declare-fun lt!1710981 () Unit!97630)

(declare-fun choose!29831 (List!50856 K!12120) Unit!97630)

(assert (=> d!1400966 (= lt!1710981 (choose!29831 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) key!3287))))

(assert (=> d!1400966 (invariantList!1039 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))))))

(assert (=> d!1400966 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1040 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) key!3287) lt!1710981)))

(declare-fun bs!871906 () Bool)

(assert (= bs!871906 d!1400966))

(assert (=> bs!871906 m!5297295))

(assert (=> bs!871906 m!5297295))

(assert (=> bs!871906 m!5297297))

(declare-fun m!5297813 () Bool)

(assert (=> bs!871906 m!5297813))

(declare-fun m!5297815 () Bool)

(assert (=> bs!871906 m!5297815))

(assert (=> b!4535496 d!1400966))

(declare-fun d!1400968 () Bool)

(declare-fun isEmpty!28738 (Option!11187) Bool)

(assert (=> d!1400968 (= (isDefined!8463 (getValueByKey!1137 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) key!3287)) (not (isEmpty!28738 (getValueByKey!1137 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) key!3287))))))

(declare-fun bs!871907 () Bool)

(assert (= bs!871907 d!1400968))

(assert (=> bs!871907 m!5297295))

(declare-fun m!5297817 () Bool)

(assert (=> bs!871907 m!5297817))

(assert (=> b!4535496 d!1400968))

(declare-fun b!4535791 () Bool)

(declare-fun e!2826369 () Option!11187)

(assert (=> b!4535791 (= e!2826369 (getValueByKey!1137 (t!357818 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) key!3287))))

(declare-fun b!4535789 () Bool)

(declare-fun e!2826368 () Option!11187)

(assert (=> b!4535789 (= e!2826368 (Some!11186 (_2!28895 (h!56607 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))))))))

(declare-fun d!1400970 () Bool)

(declare-fun c!774559 () Bool)

(assert (=> d!1400970 (= c!774559 (and ((_ is Cons!50732) (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (= (_1!28895 (h!56607 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))))) key!3287)))))

(assert (=> d!1400970 (= (getValueByKey!1137 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) key!3287) e!2826368)))

(declare-fun b!4535790 () Bool)

(assert (=> b!4535790 (= e!2826368 e!2826369)))

(declare-fun c!774560 () Bool)

(assert (=> b!4535790 (= c!774560 (and ((_ is Cons!50732) (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (not (= (_1!28895 (h!56607 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))))) key!3287))))))

(declare-fun b!4535792 () Bool)

(assert (=> b!4535792 (= e!2826369 None!11186)))

(assert (= (and d!1400970 c!774559) b!4535789))

(assert (= (and d!1400970 (not c!774559)) b!4535790))

(assert (= (and b!4535790 c!774560) b!4535791))

(assert (= (and b!4535790 (not c!774560)) b!4535792))

(declare-fun m!5297819 () Bool)

(assert (=> b!4535791 m!5297819))

(assert (=> b!4535496 d!1400970))

(declare-fun d!1400972 () Bool)

(assert (=> d!1400972 (contains!13515 (getKeysList!487 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) key!3287)))

(declare-fun lt!1710984 () Unit!97630)

(declare-fun choose!29832 (List!50856 K!12120) Unit!97630)

(assert (=> d!1400972 (= lt!1710984 (choose!29832 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) key!3287))))

(assert (=> d!1400972 (invariantList!1039 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))))))

(assert (=> d!1400972 (= (lemmaInListThenGetKeysListContains!483 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) key!3287) lt!1710984)))

(declare-fun bs!871908 () Bool)

(assert (= bs!871908 d!1400972))

(assert (=> bs!871908 m!5297301))

(assert (=> bs!871908 m!5297301))

(declare-fun m!5297821 () Bool)

(assert (=> bs!871908 m!5297821))

(declare-fun m!5297823 () Bool)

(assert (=> bs!871908 m!5297823))

(assert (=> bs!871908 m!5297815))

(assert (=> b!4535496 d!1400972))

(declare-fun d!1400974 () Bool)

(assert (=> d!1400974 (dynLambda!21205 lambda!175215 (tuple2!51203 key!3287 (_2!28895 (get!16666 lt!1710416))))))

(assert (=> d!1400974 true))

(declare-fun _$7!1925 () Unit!97630)

(assert (=> d!1400974 (= (choose!29824 (_2!28896 (h!56608 (toList!4392 lm!1477))) lambda!175215 (tuple2!51203 key!3287 (_2!28895 (get!16666 lt!1710416)))) _$7!1925)))

(declare-fun b_lambda!157245 () Bool)

(assert (=> (not b_lambda!157245) (not d!1400974)))

(declare-fun bs!871909 () Bool)

(assert (= bs!871909 d!1400974))

(assert (=> bs!871909 m!5297517))

(assert (=> d!1400868 d!1400974))

(declare-fun d!1400976 () Bool)

(declare-fun res!1889755 () Bool)

(declare-fun e!2826370 () Bool)

(assert (=> d!1400976 (=> res!1889755 e!2826370)))

(assert (=> d!1400976 (= res!1889755 ((_ is Nil!50732) (_2!28896 (h!56608 (toList!4392 lm!1477)))))))

(assert (=> d!1400976 (= (forall!10330 (_2!28896 (h!56608 (toList!4392 lm!1477))) lambda!175215) e!2826370)))

(declare-fun b!4535793 () Bool)

(declare-fun e!2826371 () Bool)

(assert (=> b!4535793 (= e!2826370 e!2826371)))

(declare-fun res!1889756 () Bool)

(assert (=> b!4535793 (=> (not res!1889756) (not e!2826371))))

(assert (=> b!4535793 (= res!1889756 (dynLambda!21205 lambda!175215 (h!56607 (_2!28896 (h!56608 (toList!4392 lm!1477))))))))

(declare-fun b!4535794 () Bool)

(assert (=> b!4535794 (= e!2826371 (forall!10330 (t!357818 (_2!28896 (h!56608 (toList!4392 lm!1477)))) lambda!175215))))

(assert (= (and d!1400976 (not res!1889755)) b!4535793))

(assert (= (and b!4535793 res!1889756) b!4535794))

(declare-fun b_lambda!157247 () Bool)

(assert (=> (not b_lambda!157247) (not b!4535793)))

(declare-fun m!5297825 () Bool)

(assert (=> b!4535793 m!5297825))

(declare-fun m!5297827 () Bool)

(assert (=> b!4535794 m!5297827))

(assert (=> d!1400868 d!1400976))

(declare-fun d!1400978 () Bool)

(declare-fun lt!1710985 () Bool)

(assert (=> d!1400978 (= lt!1710985 (select (content!8425 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710441))))

(declare-fun e!2826372 () Bool)

(assert (=> d!1400978 (= lt!1710985 e!2826372)))

(declare-fun res!1889758 () Bool)

(assert (=> d!1400978 (=> (not res!1889758) (not e!2826372))))

(assert (=> d!1400978 (= res!1889758 ((_ is Cons!50733) (t!357819 (t!357819 (toList!4392 lm!1477)))))))

(assert (=> d!1400978 (= (contains!13511 (t!357819 (t!357819 (toList!4392 lm!1477))) lt!1710441) lt!1710985)))

(declare-fun b!4535795 () Bool)

(declare-fun e!2826373 () Bool)

(assert (=> b!4535795 (= e!2826372 e!2826373)))

(declare-fun res!1889757 () Bool)

(assert (=> b!4535795 (=> res!1889757 e!2826373)))

(assert (=> b!4535795 (= res!1889757 (= (h!56608 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710441))))

(declare-fun b!4535796 () Bool)

(assert (=> b!4535796 (= e!2826373 (contains!13511 (t!357819 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710441))))

(assert (= (and d!1400978 res!1889758) b!4535795))

(assert (= (and b!4535795 (not res!1889757)) b!4535796))

(declare-fun m!5297829 () Bool)

(assert (=> d!1400978 m!5297829))

(declare-fun m!5297831 () Bool)

(assert (=> d!1400978 m!5297831))

(declare-fun m!5297833 () Bool)

(assert (=> b!4535796 m!5297833))

(assert (=> b!4535571 d!1400978))

(declare-fun bs!871910 () Bool)

(declare-fun b!4535800 () Bool)

(assert (= bs!871910 (and b!4535800 d!1400816)))

(declare-fun lambda!175371 () Int)

(assert (=> bs!871910 (= (= (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) lt!1710851) (= lambda!175371 lambda!175344))))

(declare-fun bs!871911 () Bool)

(assert (= bs!871911 (and b!4535800 d!1400724)))

(assert (=> bs!871911 (not (= lambda!175371 lambda!175312))))

(declare-fun bs!871912 () Bool)

(assert (= bs!871912 (and b!4535800 b!4535309)))

(assert (=> bs!871912 (= (= (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) lt!1710578) (= lambda!175371 lambda!175267))))

(declare-fun bs!871913 () Bool)

(assert (= bs!871913 (and b!4535800 d!1400896)))

(assert (=> bs!871913 (= (= (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) lt!1710949) (= lambda!175371 lambda!175363))))

(declare-fun bs!871914 () Bool)

(assert (= bs!871914 (and b!4535800 d!1400874)))

(assert (=> bs!871914 (= (= (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) lt!1710913) (= lambda!175371 lambda!175352))))

(declare-fun bs!871915 () Bool)

(assert (= bs!871915 (and b!4535800 b!4535625)))

(assert (=> bs!871915 (= (= (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) lt!1710415) (= lambda!175371 lambda!175349))))

(declare-fun bs!871916 () Bool)

(assert (= bs!871916 (and b!4535800 b!4535622)))

(assert (=> bs!871916 (= (= (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) lt!1710902) (= lambda!175371 lambda!175351))))

(declare-fun bs!871917 () Bool)

(assert (= bs!871917 (and b!4535800 b!4535542)))

(assert (=> bs!871917 (= (= (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) lt!1710429) (= lambda!175371 lambda!175340))))

(declare-fun bs!871918 () Bool)

(assert (= bs!871918 (and b!4535800 d!1400628)))

(assert (=> bs!871918 (= (= (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) lt!1710589) (= lambda!175371 lambda!175268))))

(declare-fun bs!871919 () Bool)

(assert (= bs!871919 (and b!4535800 b!4535669)))

(assert (=> bs!871919 (= (= (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175371 lambda!175360))))

(assert (=> bs!871917 (= (= (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) lt!1710840) (= lambda!175371 lambda!175341))))

(declare-fun bs!871920 () Bool)

(assert (= bs!871920 (and b!4535800 b!4535666)))

(assert (=> bs!871920 (= (= (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) lt!1710938) (= lambda!175371 lambda!175362))))

(assert (=> bs!871920 (= (= (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175371 lambda!175361))))

(assert (=> bs!871916 (= (= (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) lt!1710415) (= lambda!175371 lambda!175350))))

(declare-fun bs!871921 () Bool)

(assert (= bs!871921 (and b!4535800 b!4535199)))

(assert (=> bs!871921 (not (= lambda!175371 lambda!175215))))

(declare-fun bs!871922 () Bool)

(assert (= bs!871922 (and b!4535800 b!4535545)))

(assert (=> bs!871922 (= (= (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) lt!1710429) (= lambda!175371 lambda!175339))))

(assert (=> bs!871912 (= (= (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) lt!1710448) (= lambda!175371 lambda!175266))))

(declare-fun bs!871923 () Bool)

(assert (= bs!871923 (and b!4535800 b!4535312)))

(assert (=> bs!871923 (= (= (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) lt!1710448) (= lambda!175371 lambda!175265))))

(assert (=> b!4535800 true))

(declare-fun bs!871924 () Bool)

(declare-fun b!4535797 () Bool)

(assert (= bs!871924 (and b!4535797 d!1400816)))

(declare-fun lambda!175372 () Int)

(assert (=> bs!871924 (= (= (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) lt!1710851) (= lambda!175372 lambda!175344))))

(declare-fun bs!871925 () Bool)

(assert (= bs!871925 (and b!4535797 d!1400724)))

(assert (=> bs!871925 (not (= lambda!175372 lambda!175312))))

(declare-fun bs!871926 () Bool)

(assert (= bs!871926 (and b!4535797 b!4535309)))

(assert (=> bs!871926 (= (= (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) lt!1710578) (= lambda!175372 lambda!175267))))

(declare-fun bs!871927 () Bool)

(assert (= bs!871927 (and b!4535797 d!1400896)))

(assert (=> bs!871927 (= (= (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) lt!1710949) (= lambda!175372 lambda!175363))))

(declare-fun bs!871928 () Bool)

(assert (= bs!871928 (and b!4535797 d!1400874)))

(assert (=> bs!871928 (= (= (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) lt!1710913) (= lambda!175372 lambda!175352))))

(declare-fun bs!871929 () Bool)

(assert (= bs!871929 (and b!4535797 b!4535625)))

(assert (=> bs!871929 (= (= (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) lt!1710415) (= lambda!175372 lambda!175349))))

(declare-fun bs!871930 () Bool)

(assert (= bs!871930 (and b!4535797 b!4535622)))

(assert (=> bs!871930 (= (= (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) lt!1710902) (= lambda!175372 lambda!175351))))

(declare-fun bs!871931 () Bool)

(assert (= bs!871931 (and b!4535797 b!4535800)))

(assert (=> bs!871931 (= lambda!175372 lambda!175371)))

(declare-fun bs!871932 () Bool)

(assert (= bs!871932 (and b!4535797 b!4535542)))

(assert (=> bs!871932 (= (= (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) lt!1710429) (= lambda!175372 lambda!175340))))

(declare-fun bs!871933 () Bool)

(assert (= bs!871933 (and b!4535797 d!1400628)))

(assert (=> bs!871933 (= (= (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) lt!1710589) (= lambda!175372 lambda!175268))))

(declare-fun bs!871934 () Bool)

(assert (= bs!871934 (and b!4535797 b!4535669)))

(assert (=> bs!871934 (= (= (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175372 lambda!175360))))

(assert (=> bs!871932 (= (= (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) lt!1710840) (= lambda!175372 lambda!175341))))

(declare-fun bs!871935 () Bool)

(assert (= bs!871935 (and b!4535797 b!4535666)))

(assert (=> bs!871935 (= (= (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) lt!1710938) (= lambda!175372 lambda!175362))))

(assert (=> bs!871935 (= (= (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175372 lambda!175361))))

(assert (=> bs!871930 (= (= (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) lt!1710415) (= lambda!175372 lambda!175350))))

(declare-fun bs!871936 () Bool)

(assert (= bs!871936 (and b!4535797 b!4535199)))

(assert (=> bs!871936 (not (= lambda!175372 lambda!175215))))

(declare-fun bs!871937 () Bool)

(assert (= bs!871937 (and b!4535797 b!4535545)))

(assert (=> bs!871937 (= (= (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) lt!1710429) (= lambda!175372 lambda!175339))))

(assert (=> bs!871926 (= (= (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) lt!1710448) (= lambda!175372 lambda!175266))))

(declare-fun bs!871938 () Bool)

(assert (= bs!871938 (and b!4535797 b!4535312)))

(assert (=> bs!871938 (= (= (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) lt!1710448) (= lambda!175372 lambda!175265))))

(assert (=> b!4535797 true))

(declare-fun lambda!175373 () Int)

(declare-fun lt!1710989 () ListMap!3653)

(assert (=> bs!871924 (= (= lt!1710989 lt!1710851) (= lambda!175373 lambda!175344))))

(assert (=> bs!871925 (not (= lambda!175373 lambda!175312))))

(assert (=> bs!871926 (= (= lt!1710989 lt!1710578) (= lambda!175373 lambda!175267))))

(assert (=> bs!871927 (= (= lt!1710989 lt!1710949) (= lambda!175373 lambda!175363))))

(assert (=> bs!871929 (= (= lt!1710989 lt!1710415) (= lambda!175373 lambda!175349))))

(assert (=> bs!871930 (= (= lt!1710989 lt!1710902) (= lambda!175373 lambda!175351))))

(assert (=> bs!871931 (= (= lt!1710989 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175373 lambda!175371))))

(assert (=> bs!871932 (= (= lt!1710989 lt!1710429) (= lambda!175373 lambda!175340))))

(assert (=> bs!871933 (= (= lt!1710989 lt!1710589) (= lambda!175373 lambda!175268))))

(assert (=> bs!871934 (= (= lt!1710989 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175373 lambda!175360))))

(assert (=> bs!871932 (= (= lt!1710989 lt!1710840) (= lambda!175373 lambda!175341))))

(assert (=> bs!871935 (= (= lt!1710989 lt!1710938) (= lambda!175373 lambda!175362))))

(assert (=> bs!871935 (= (= lt!1710989 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175373 lambda!175361))))

(assert (=> bs!871930 (= (= lt!1710989 lt!1710415) (= lambda!175373 lambda!175350))))

(assert (=> b!4535797 (= (= lt!1710989 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175373 lambda!175372))))

(assert (=> bs!871928 (= (= lt!1710989 lt!1710913) (= lambda!175373 lambda!175352))))

(assert (=> bs!871936 (not (= lambda!175373 lambda!175215))))

(assert (=> bs!871937 (= (= lt!1710989 lt!1710429) (= lambda!175373 lambda!175339))))

(assert (=> bs!871926 (= (= lt!1710989 lt!1710448) (= lambda!175373 lambda!175266))))

(assert (=> bs!871938 (= (= lt!1710989 lt!1710448) (= lambda!175373 lambda!175265))))

(assert (=> b!4535797 true))

(declare-fun bs!871939 () Bool)

(declare-fun d!1400980 () Bool)

(assert (= bs!871939 (and d!1400980 d!1400816)))

(declare-fun lambda!175374 () Int)

(declare-fun lt!1711000 () ListMap!3653)

(assert (=> bs!871939 (= (= lt!1711000 lt!1710851) (= lambda!175374 lambda!175344))))

(declare-fun bs!871940 () Bool)

(assert (= bs!871940 (and d!1400980 d!1400724)))

(assert (=> bs!871940 (not (= lambda!175374 lambda!175312))))

(declare-fun bs!871941 () Bool)

(assert (= bs!871941 (and d!1400980 b!4535309)))

(assert (=> bs!871941 (= (= lt!1711000 lt!1710578) (= lambda!175374 lambda!175267))))

(declare-fun bs!871942 () Bool)

(assert (= bs!871942 (and d!1400980 d!1400896)))

(assert (=> bs!871942 (= (= lt!1711000 lt!1710949) (= lambda!175374 lambda!175363))))

(declare-fun bs!871943 () Bool)

(assert (= bs!871943 (and d!1400980 b!4535797)))

(assert (=> bs!871943 (= (= lt!1711000 lt!1710989) (= lambda!175374 lambda!175373))))

(declare-fun bs!871944 () Bool)

(assert (= bs!871944 (and d!1400980 b!4535625)))

(assert (=> bs!871944 (= (= lt!1711000 lt!1710415) (= lambda!175374 lambda!175349))))

(declare-fun bs!871945 () Bool)

(assert (= bs!871945 (and d!1400980 b!4535622)))

(assert (=> bs!871945 (= (= lt!1711000 lt!1710902) (= lambda!175374 lambda!175351))))

(declare-fun bs!871946 () Bool)

(assert (= bs!871946 (and d!1400980 b!4535800)))

(assert (=> bs!871946 (= (= lt!1711000 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175374 lambda!175371))))

(declare-fun bs!871947 () Bool)

(assert (= bs!871947 (and d!1400980 b!4535542)))

(assert (=> bs!871947 (= (= lt!1711000 lt!1710429) (= lambda!175374 lambda!175340))))

(declare-fun bs!871948 () Bool)

(assert (= bs!871948 (and d!1400980 d!1400628)))

(assert (=> bs!871948 (= (= lt!1711000 lt!1710589) (= lambda!175374 lambda!175268))))

(declare-fun bs!871949 () Bool)

(assert (= bs!871949 (and d!1400980 b!4535669)))

(assert (=> bs!871949 (= (= lt!1711000 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175374 lambda!175360))))

(assert (=> bs!871947 (= (= lt!1711000 lt!1710840) (= lambda!175374 lambda!175341))))

(declare-fun bs!871950 () Bool)

(assert (= bs!871950 (and d!1400980 b!4535666)))

(assert (=> bs!871950 (= (= lt!1711000 lt!1710938) (= lambda!175374 lambda!175362))))

(assert (=> bs!871950 (= (= lt!1711000 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175374 lambda!175361))))

(assert (=> bs!871945 (= (= lt!1711000 lt!1710415) (= lambda!175374 lambda!175350))))

(assert (=> bs!871943 (= (= lt!1711000 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175374 lambda!175372))))

(declare-fun bs!871951 () Bool)

(assert (= bs!871951 (and d!1400980 d!1400874)))

(assert (=> bs!871951 (= (= lt!1711000 lt!1710913) (= lambda!175374 lambda!175352))))

(declare-fun bs!871952 () Bool)

(assert (= bs!871952 (and d!1400980 b!4535199)))

(assert (=> bs!871952 (not (= lambda!175374 lambda!175215))))

(declare-fun bs!871953 () Bool)

(assert (= bs!871953 (and d!1400980 b!4535545)))

(assert (=> bs!871953 (= (= lt!1711000 lt!1710429) (= lambda!175374 lambda!175339))))

(assert (=> bs!871941 (= (= lt!1711000 lt!1710448) (= lambda!175374 lambda!175266))))

(declare-fun bs!871954 () Bool)

(assert (= bs!871954 (and d!1400980 b!4535312)))

(assert (=> bs!871954 (= (= lt!1711000 lt!1710448) (= lambda!175374 lambda!175265))))

(assert (=> d!1400980 true))

(declare-fun bm!316209 () Bool)

(declare-fun call!316214 () Unit!97630)

(assert (=> bm!316209 (= call!316214 (lemmaContainsAllItsOwnKeys!359 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))))))

(declare-fun c!774561 () Bool)

(declare-fun bm!316210 () Bool)

(declare-fun call!316215 () Bool)

(assert (=> bm!316210 (= call!316215 (forall!10330 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (ite c!774561 lambda!175371 lambda!175373)))))

(declare-fun e!2826376 () ListMap!3653)

(assert (=> b!4535797 (= e!2826376 lt!1710989)))

(declare-fun lt!1710991 () ListMap!3653)

(assert (=> b!4535797 (= lt!1710991 (+!1593 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) (h!56607 (_2!28896 (h!56608 (toList!4392 (+!1592 lt!1710421 lt!1710445)))))))))

(assert (=> b!4535797 (= lt!1710989 (addToMapMapFromBucket!719 (t!357818 (_2!28896 (h!56608 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (+!1593 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) (h!56607 (_2!28896 (h!56608 (toList!4392 (+!1592 lt!1710421 lt!1710445))))))))))

(declare-fun lt!1711002 () Unit!97630)

(assert (=> b!4535797 (= lt!1711002 call!316214)))

(assert (=> b!4535797 (forall!10330 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) lambda!175372)))

(declare-fun lt!1710997 () Unit!97630)

(assert (=> b!4535797 (= lt!1710997 lt!1711002)))

(assert (=> b!4535797 (forall!10330 (toList!4391 lt!1710991) lambda!175373)))

(declare-fun lt!1710992 () Unit!97630)

(declare-fun Unit!97740 () Unit!97630)

(assert (=> b!4535797 (= lt!1710992 Unit!97740)))

(assert (=> b!4535797 (forall!10330 (t!357818 (_2!28896 (h!56608 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) lambda!175373)))

(declare-fun lt!1710994 () Unit!97630)

(declare-fun Unit!97741 () Unit!97630)

(assert (=> b!4535797 (= lt!1710994 Unit!97741)))

(declare-fun lt!1710988 () Unit!97630)

(declare-fun Unit!97742 () Unit!97630)

(assert (=> b!4535797 (= lt!1710988 Unit!97742)))

(declare-fun lt!1711006 () Unit!97630)

(assert (=> b!4535797 (= lt!1711006 (forallContained!2591 (toList!4391 lt!1710991) lambda!175373 (h!56607 (_2!28896 (h!56608 (toList!4392 (+!1592 lt!1710421 lt!1710445)))))))))

(assert (=> b!4535797 (contains!13513 lt!1710991 (_1!28895 (h!56607 (_2!28896 (h!56608 (toList!4392 (+!1592 lt!1710421 lt!1710445)))))))))

(declare-fun lt!1710986 () Unit!97630)

(declare-fun Unit!97745 () Unit!97630)

(assert (=> b!4535797 (= lt!1710986 Unit!97745)))

(assert (=> b!4535797 (contains!13513 lt!1710989 (_1!28895 (h!56607 (_2!28896 (h!56608 (toList!4392 (+!1592 lt!1710421 lt!1710445)))))))))

(declare-fun lt!1710998 () Unit!97630)

(declare-fun Unit!97746 () Unit!97630)

(assert (=> b!4535797 (= lt!1710998 Unit!97746)))

(assert (=> b!4535797 (forall!10330 (_2!28896 (h!56608 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) lambda!175373)))

(declare-fun lt!1711001 () Unit!97630)

(declare-fun Unit!97747 () Unit!97630)

(assert (=> b!4535797 (= lt!1711001 Unit!97747)))

(assert (=> b!4535797 (forall!10330 (toList!4391 lt!1710991) lambda!175373)))

(declare-fun lt!1710987 () Unit!97630)

(declare-fun Unit!97748 () Unit!97630)

(assert (=> b!4535797 (= lt!1710987 Unit!97748)))

(declare-fun lt!1710990 () Unit!97630)

(declare-fun Unit!97749 () Unit!97630)

(assert (=> b!4535797 (= lt!1710990 Unit!97749)))

(declare-fun lt!1711003 () Unit!97630)

(assert (=> b!4535797 (= lt!1711003 (addForallContainsKeyThenBeforeAdding!359 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) lt!1710989 (_1!28895 (h!56607 (_2!28896 (h!56608 (toList!4392 (+!1592 lt!1710421 lt!1710445)))))) (_2!28895 (h!56607 (_2!28896 (h!56608 (toList!4392 (+!1592 lt!1710421 lt!1710445))))))))))

(assert (=> b!4535797 (forall!10330 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) lambda!175373)))

(declare-fun lt!1710995 () Unit!97630)

(assert (=> b!4535797 (= lt!1710995 lt!1711003)))

(assert (=> b!4535797 (forall!10330 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) lambda!175373)))

(declare-fun lt!1710993 () Unit!97630)

(declare-fun Unit!97750 () Unit!97630)

(assert (=> b!4535797 (= lt!1710993 Unit!97750)))

(declare-fun res!1889759 () Bool)

(declare-fun call!316216 () Bool)

(assert (=> b!4535797 (= res!1889759 call!316216)))

(declare-fun e!2826375 () Bool)

(assert (=> b!4535797 (=> (not res!1889759) (not e!2826375))))

(assert (=> b!4535797 e!2826375))

(declare-fun lt!1710996 () Unit!97630)

(declare-fun Unit!97751 () Unit!97630)

(assert (=> b!4535797 (= lt!1710996 Unit!97751)))

(declare-fun b!4535798 () Bool)

(declare-fun e!2826374 () Bool)

(assert (=> b!4535798 (= e!2826374 (invariantList!1039 (toList!4391 lt!1711000)))))

(declare-fun b!4535799 () Bool)

(declare-fun res!1889760 () Bool)

(assert (=> b!4535799 (=> (not res!1889760) (not e!2826374))))

(assert (=> b!4535799 (= res!1889760 (forall!10330 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) lambda!175374))))

(declare-fun bm!316211 () Bool)

(assert (=> bm!316211 (= call!316216 (forall!10330 (ite c!774561 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (_2!28896 (h!56608 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (ite c!774561 lambda!175371 lambda!175373)))))

(declare-fun b!4535801 () Bool)

(assert (=> b!4535801 (= e!2826375 call!316215)))

(assert (=> b!4535800 (= e!2826376 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))))))

(declare-fun lt!1710999 () Unit!97630)

(assert (=> b!4535800 (= lt!1710999 call!316214)))

(assert (=> b!4535800 call!316215))

(declare-fun lt!1711005 () Unit!97630)

(assert (=> b!4535800 (= lt!1711005 lt!1710999)))

(assert (=> b!4535800 call!316216))

(declare-fun lt!1711004 () Unit!97630)

(declare-fun Unit!97754 () Unit!97630)

(assert (=> b!4535800 (= lt!1711004 Unit!97754)))

(assert (=> d!1400980 e!2826374))

(declare-fun res!1889761 () Bool)

(assert (=> d!1400980 (=> (not res!1889761) (not e!2826374))))

(assert (=> d!1400980 (= res!1889761 (forall!10330 (_2!28896 (h!56608 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) lambda!175374))))

(assert (=> d!1400980 (= lt!1711000 e!2826376)))

(assert (=> d!1400980 (= c!774561 ((_ is Nil!50732) (_2!28896 (h!56608 (toList!4392 (+!1592 lt!1710421 lt!1710445))))))))

(assert (=> d!1400980 (noDuplicateKeys!1192 (_2!28896 (h!56608 (toList!4392 (+!1592 lt!1710421 lt!1710445)))))))

(assert (=> d!1400980 (= (addToMapMapFromBucket!719 (_2!28896 (h!56608 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) lt!1711000)))

(assert (= (and d!1400980 c!774561) b!4535800))

(assert (= (and d!1400980 (not c!774561)) b!4535797))

(assert (= (and b!4535797 res!1889759) b!4535801))

(assert (= (or b!4535800 b!4535801) bm!316210))

(assert (= (or b!4535800 b!4535797) bm!316211))

(assert (= (or b!4535800 b!4535797) bm!316209))

(assert (= (and d!1400980 res!1889761) b!4535799))

(assert (= (and b!4535799 res!1889760) b!4535798))

(declare-fun m!5297835 () Bool)

(assert (=> b!4535798 m!5297835))

(declare-fun m!5297837 () Bool)

(assert (=> d!1400980 m!5297837))

(declare-fun m!5297839 () Bool)

(assert (=> d!1400980 m!5297839))

(declare-fun m!5297841 () Bool)

(assert (=> bm!316211 m!5297841))

(declare-fun m!5297843 () Bool)

(assert (=> b!4535797 m!5297843))

(declare-fun m!5297845 () Bool)

(assert (=> b!4535797 m!5297845))

(declare-fun m!5297847 () Bool)

(assert (=> b!4535797 m!5297847))

(declare-fun m!5297849 () Bool)

(assert (=> b!4535797 m!5297849))

(assert (=> b!4535797 m!5297125))

(declare-fun m!5297851 () Bool)

(assert (=> b!4535797 m!5297851))

(declare-fun m!5297853 () Bool)

(assert (=> b!4535797 m!5297853))

(declare-fun m!5297855 () Bool)

(assert (=> b!4535797 m!5297855))

(assert (=> b!4535797 m!5297843))

(declare-fun m!5297857 () Bool)

(assert (=> b!4535797 m!5297857))

(assert (=> b!4535797 m!5297125))

(assert (=> b!4535797 m!5297853))

(declare-fun m!5297859 () Bool)

(assert (=> b!4535797 m!5297859))

(declare-fun m!5297861 () Bool)

(assert (=> b!4535797 m!5297861))

(assert (=> b!4535797 m!5297845))

(declare-fun m!5297863 () Bool)

(assert (=> b!4535797 m!5297863))

(assert (=> bm!316209 m!5297125))

(declare-fun m!5297865 () Bool)

(assert (=> bm!316209 m!5297865))

(declare-fun m!5297867 () Bool)

(assert (=> bm!316210 m!5297867))

(declare-fun m!5297869 () Bool)

(assert (=> b!4535799 m!5297869))

(assert (=> b!4535453 d!1400980))

(declare-fun bs!871956 () Bool)

(declare-fun d!1400982 () Bool)

(assert (= bs!871956 (and d!1400982 d!1400702)))

(declare-fun lambda!175375 () Int)

(assert (=> bs!871956 (= lambda!175375 lambda!175303)))

(declare-fun bs!871957 () Bool)

(assert (= bs!871957 (and d!1400982 d!1400794)))

(assert (=> bs!871957 (= lambda!175375 lambda!175332)))

(declare-fun bs!871958 () Bool)

(assert (= bs!871958 (and d!1400982 d!1400876)))

(assert (=> bs!871958 (= lambda!175375 lambda!175353)))

(declare-fun bs!871959 () Bool)

(assert (= bs!871959 (and d!1400982 b!4535199)))

(assert (=> bs!871959 (not (= lambda!175375 lambda!175214))))

(declare-fun bs!871960 () Bool)

(assert (= bs!871960 (and d!1400982 d!1400704)))

(assert (=> bs!871960 (not (= lambda!175375 lambda!175306))))

(declare-fun bs!871961 () Bool)

(assert (= bs!871961 (and d!1400982 d!1400786)))

(assert (=> bs!871961 (= lambda!175375 lambda!175330)))

(declare-fun bs!871962 () Bool)

(assert (= bs!871962 (and d!1400982 d!1400790)))

(assert (=> bs!871962 (= lambda!175375 lambda!175331)))

(declare-fun bs!871963 () Bool)

(assert (= bs!871963 (and d!1400982 d!1400748)))

(assert (=> bs!871963 (= lambda!175375 lambda!175316)))

(declare-fun bs!871964 () Bool)

(assert (= bs!871964 (and d!1400982 d!1400708)))

(assert (=> bs!871964 (= lambda!175375 lambda!175309)))

(declare-fun bs!871965 () Bool)

(assert (= bs!871965 (and d!1400982 d!1400898)))

(assert (=> bs!871965 (= lambda!175375 lambda!175364)))

(declare-fun bs!871966 () Bool)

(assert (= bs!871966 (and d!1400982 d!1400798)))

(assert (=> bs!871966 (= lambda!175375 lambda!175338)))

(declare-fun bs!871967 () Bool)

(assert (= bs!871967 (and d!1400982 start!449928)))

(assert (=> bs!871967 (= lambda!175375 lambda!175213)))

(declare-fun bs!871968 () Bool)

(assert (= bs!871968 (and d!1400982 d!1400752)))

(assert (=> bs!871968 (= lambda!175375 lambda!175322)))

(declare-fun bs!871969 () Bool)

(assert (= bs!871969 (and d!1400982 d!1400854)))

(assert (=> bs!871969 (= lambda!175375 lambda!175348)))

(declare-fun bs!871970 () Bool)

(assert (= bs!871970 (and d!1400982 d!1400780)))

(assert (=> bs!871970 (= lambda!175375 lambda!175325)))

(declare-fun lt!1711007 () ListMap!3653)

(assert (=> d!1400982 (invariantList!1039 (toList!4391 lt!1711007))))

(declare-fun e!2826377 () ListMap!3653)

(assert (=> d!1400982 (= lt!1711007 e!2826377)))

(declare-fun c!774562 () Bool)

(assert (=> d!1400982 (= c!774562 ((_ is Cons!50733) (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))))))

(assert (=> d!1400982 (forall!10329 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))) lambda!175375)))

(assert (=> d!1400982 (= (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) lt!1711007)))

(declare-fun b!4535802 () Bool)

(assert (=> b!4535802 (= e!2826377 (addToMapMapFromBucket!719 (_2!28896 (h!56608 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (extractMap!1248 (t!357819 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445)))))))))

(declare-fun b!4535803 () Bool)

(assert (=> b!4535803 (= e!2826377 (ListMap!3654 Nil!50732))))

(assert (= (and d!1400982 c!774562) b!4535802))

(assert (= (and d!1400982 (not c!774562)) b!4535803))

(declare-fun m!5297883 () Bool)

(assert (=> d!1400982 m!5297883))

(declare-fun m!5297885 () Bool)

(assert (=> d!1400982 m!5297885))

(declare-fun m!5297887 () Bool)

(assert (=> b!4535802 m!5297887))

(assert (=> b!4535802 m!5297887))

(declare-fun m!5297889 () Bool)

(assert (=> b!4535802 m!5297889))

(assert (=> b!4535453 d!1400982))

(declare-fun d!1400988 () Bool)

(assert (=> d!1400988 (= (hash!2895 hashF!1107 (_1!28895 (tuple2!51203 key!3287 (_2!28895 (get!16666 lt!1710416))))) (hash!2899 hashF!1107 (_1!28895 (tuple2!51203 key!3287 (_2!28895 (get!16666 lt!1710416))))))))

(declare-fun bs!871971 () Bool)

(assert (= bs!871971 d!1400988))

(declare-fun m!5297891 () Bool)

(assert (=> bs!871971 m!5297891))

(assert (=> bs!871831 d!1400988))

(declare-fun d!1400990 () Bool)

(declare-fun c!774566 () Bool)

(assert (=> d!1400990 (= c!774566 ((_ is Nil!50732) (toList!4391 lt!1710422)))))

(declare-fun e!2826382 () (InoxSet tuple2!51202))

(assert (=> d!1400990 (= (content!8420 (toList!4391 lt!1710422)) e!2826382)))

(declare-fun b!4535812 () Bool)

(assert (=> b!4535812 (= e!2826382 ((as const (Array tuple2!51202 Bool)) false))))

(declare-fun b!4535813 () Bool)

(assert (=> b!4535813 (= e!2826382 ((_ map or) (store ((as const (Array tuple2!51202 Bool)) false) (h!56607 (toList!4391 lt!1710422)) true) (content!8420 (t!357818 (toList!4391 lt!1710422)))))))

(assert (= (and d!1400990 c!774566) b!4535812))

(assert (= (and d!1400990 (not c!774566)) b!4535813))

(declare-fun m!5297893 () Bool)

(assert (=> b!4535813 m!5297893))

(declare-fun m!5297895 () Bool)

(assert (=> b!4535813 m!5297895))

(assert (=> d!1400844 d!1400990))

(declare-fun d!1400992 () Bool)

(declare-fun c!774567 () Bool)

(assert (=> d!1400992 (= c!774567 ((_ is Nil!50732) (toList!4391 (-!418 lt!1710447 key!3287))))))

(declare-fun e!2826383 () (InoxSet tuple2!51202))

(assert (=> d!1400992 (= (content!8420 (toList!4391 (-!418 lt!1710447 key!3287))) e!2826383)))

(declare-fun b!4535814 () Bool)

(assert (=> b!4535814 (= e!2826383 ((as const (Array tuple2!51202 Bool)) false))))

(declare-fun b!4535815 () Bool)

(assert (=> b!4535815 (= e!2826383 ((_ map or) (store ((as const (Array tuple2!51202 Bool)) false) (h!56607 (toList!4391 (-!418 lt!1710447 key!3287))) true) (content!8420 (t!357818 (toList!4391 (-!418 lt!1710447 key!3287))))))))

(assert (= (and d!1400992 c!774567) b!4535814))

(assert (= (and d!1400992 (not c!774567)) b!4535815))

(declare-fun m!5297897 () Bool)

(assert (=> b!4535815 m!5297897))

(declare-fun m!5297899 () Bool)

(assert (=> b!4535815 m!5297899))

(assert (=> d!1400844 d!1400992))

(declare-fun d!1400994 () Bool)

(declare-fun e!2826386 () Bool)

(assert (=> d!1400994 e!2826386))

(declare-fun res!1889764 () Bool)

(assert (=> d!1400994 (=> res!1889764 e!2826386)))

(declare-fun e!2826388 () Bool)

(assert (=> d!1400994 (= res!1889764 e!2826388)))

(declare-fun res!1889765 () Bool)

(assert (=> d!1400994 (=> (not res!1889765) (not e!2826388))))

(declare-fun lt!1711019 () Bool)

(assert (=> d!1400994 (= res!1889765 (not lt!1711019))))

(declare-fun lt!1711014 () Bool)

(assert (=> d!1400994 (= lt!1711019 lt!1711014)))

(declare-fun lt!1711013 () Unit!97630)

(declare-fun e!2826385 () Unit!97630)

(assert (=> d!1400994 (= lt!1711013 e!2826385)))

(declare-fun c!774568 () Bool)

(assert (=> d!1400994 (= c!774568 lt!1711014)))

(assert (=> d!1400994 (= lt!1711014 (containsKey!1859 (toList!4391 lt!1710904) (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(assert (=> d!1400994 (= (contains!13513 lt!1710904 (_1!28895 (h!56607 (_2!28896 lt!1710445)))) lt!1711019)))

(declare-fun b!4535816 () Bool)

(declare-fun lt!1711020 () Unit!97630)

(assert (=> b!4535816 (= e!2826385 lt!1711020)))

(declare-fun lt!1711015 () Unit!97630)

(assert (=> b!4535816 (= lt!1711015 (lemmaContainsKeyImpliesGetValueByKeyDefined!1040 (toList!4391 lt!1710904) (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(assert (=> b!4535816 (isDefined!8463 (getValueByKey!1137 (toList!4391 lt!1710904) (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun lt!1711017 () Unit!97630)

(assert (=> b!4535816 (= lt!1711017 lt!1711015)))

(assert (=> b!4535816 (= lt!1711020 (lemmaInListThenGetKeysListContains!483 (toList!4391 lt!1710904) (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun call!316217 () Bool)

(assert (=> b!4535816 call!316217))

(declare-fun b!4535817 () Bool)

(assert (=> b!4535817 false))

(declare-fun lt!1711016 () Unit!97630)

(declare-fun lt!1711018 () Unit!97630)

(assert (=> b!4535817 (= lt!1711016 lt!1711018)))

(assert (=> b!4535817 (containsKey!1859 (toList!4391 lt!1710904) (_1!28895 (h!56607 (_2!28896 lt!1710445))))))

(assert (=> b!4535817 (= lt!1711018 (lemmaInGetKeysListThenContainsKey!486 (toList!4391 lt!1710904) (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun e!2826387 () Unit!97630)

(declare-fun Unit!97755 () Unit!97630)

(assert (=> b!4535817 (= e!2826387 Unit!97755)))

(declare-fun bm!316212 () Bool)

(declare-fun e!2826389 () List!50859)

(assert (=> bm!316212 (= call!316217 (contains!13515 e!2826389 (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun c!774570 () Bool)

(assert (=> bm!316212 (= c!774570 c!774568)))

(declare-fun b!4535818 () Bool)

(declare-fun e!2826384 () Bool)

(assert (=> b!4535818 (= e!2826386 e!2826384)))

(declare-fun res!1889766 () Bool)

(assert (=> b!4535818 (=> (not res!1889766) (not e!2826384))))

(assert (=> b!4535818 (= res!1889766 (isDefined!8463 (getValueByKey!1137 (toList!4391 lt!1710904) (_1!28895 (h!56607 (_2!28896 lt!1710445))))))))

(declare-fun b!4535819 () Bool)

(assert (=> b!4535819 (= e!2826389 (keys!17648 lt!1710904))))

(declare-fun b!4535820 () Bool)

(assert (=> b!4535820 (= e!2826385 e!2826387)))

(declare-fun c!774569 () Bool)

(assert (=> b!4535820 (= c!774569 call!316217)))

(declare-fun b!4535821 () Bool)

(declare-fun Unit!97756 () Unit!97630)

(assert (=> b!4535821 (= e!2826387 Unit!97756)))

(declare-fun b!4535822 () Bool)

(assert (=> b!4535822 (= e!2826389 (getKeysList!487 (toList!4391 lt!1710904)))))

(declare-fun b!4535823 () Bool)

(assert (=> b!4535823 (= e!2826384 (contains!13515 (keys!17648 lt!1710904) (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun b!4535824 () Bool)

(assert (=> b!4535824 (= e!2826388 (not (contains!13515 (keys!17648 lt!1710904) (_1!28895 (h!56607 (_2!28896 lt!1710445))))))))

(assert (= (and d!1400994 c!774568) b!4535816))

(assert (= (and d!1400994 (not c!774568)) b!4535820))

(assert (= (and b!4535820 c!774569) b!4535817))

(assert (= (and b!4535820 (not c!774569)) b!4535821))

(assert (= (or b!4535816 b!4535820) bm!316212))

(assert (= (and bm!316212 c!774570) b!4535822))

(assert (= (and bm!316212 (not c!774570)) b!4535819))

(assert (= (and d!1400994 res!1889765) b!4535824))

(assert (= (and d!1400994 (not res!1889764)) b!4535818))

(assert (= (and b!4535818 res!1889766) b!4535823))

(declare-fun m!5297907 () Bool)

(assert (=> b!4535823 m!5297907))

(assert (=> b!4535823 m!5297907))

(declare-fun m!5297911 () Bool)

(assert (=> b!4535823 m!5297911))

(declare-fun m!5297913 () Bool)

(assert (=> b!4535817 m!5297913))

(declare-fun m!5297915 () Bool)

(assert (=> b!4535817 m!5297915))

(assert (=> b!4535819 m!5297907))

(assert (=> b!4535824 m!5297907))

(assert (=> b!4535824 m!5297907))

(assert (=> b!4535824 m!5297911))

(declare-fun m!5297917 () Bool)

(assert (=> b!4535818 m!5297917))

(assert (=> b!4535818 m!5297917))

(declare-fun m!5297919 () Bool)

(assert (=> b!4535818 m!5297919))

(declare-fun m!5297921 () Bool)

(assert (=> bm!316212 m!5297921))

(declare-fun m!5297923 () Bool)

(assert (=> b!4535822 m!5297923))

(declare-fun m!5297925 () Bool)

(assert (=> b!4535816 m!5297925))

(assert (=> b!4535816 m!5297917))

(assert (=> b!4535816 m!5297917))

(assert (=> b!4535816 m!5297919))

(declare-fun m!5297927 () Bool)

(assert (=> b!4535816 m!5297927))

(assert (=> d!1400994 m!5297913))

(assert (=> b!4535622 d!1400994))

(declare-fun d!1400998 () Bool)

(declare-fun res!1889768 () Bool)

(declare-fun e!2826391 () Bool)

(assert (=> d!1400998 (=> res!1889768 e!2826391)))

(assert (=> d!1400998 (= res!1889768 ((_ is Nil!50732) (toList!4391 lt!1710415)))))

(assert (=> d!1400998 (= (forall!10330 (toList!4391 lt!1710415) lambda!175351) e!2826391)))

(declare-fun b!4535826 () Bool)

(declare-fun e!2826392 () Bool)

(assert (=> b!4535826 (= e!2826391 e!2826392)))

(declare-fun res!1889769 () Bool)

(assert (=> b!4535826 (=> (not res!1889769) (not e!2826392))))

(assert (=> b!4535826 (= res!1889769 (dynLambda!21205 lambda!175351 (h!56607 (toList!4391 lt!1710415))))))

(declare-fun b!4535827 () Bool)

(assert (=> b!4535827 (= e!2826392 (forall!10330 (t!357818 (toList!4391 lt!1710415)) lambda!175351))))

(assert (= (and d!1400998 (not res!1889768)) b!4535826))

(assert (= (and b!4535826 res!1889769) b!4535827))

(declare-fun b_lambda!157249 () Bool)

(assert (=> (not b_lambda!157249) (not b!4535826)))

(declare-fun m!5297933 () Bool)

(assert (=> b!4535826 m!5297933))

(declare-fun m!5297937 () Bool)

(assert (=> b!4535827 m!5297937))

(assert (=> b!4535622 d!1400998))

(declare-fun d!1401000 () Bool)

(assert (=> d!1401000 (dynLambda!21205 lambda!175351 (h!56607 (_2!28896 lt!1710445)))))

(declare-fun lt!1711022 () Unit!97630)

(assert (=> d!1401000 (= lt!1711022 (choose!29824 (toList!4391 lt!1710904) lambda!175351 (h!56607 (_2!28896 lt!1710445))))))

(declare-fun e!2826393 () Bool)

(assert (=> d!1401000 e!2826393))

(declare-fun res!1889770 () Bool)

(assert (=> d!1401000 (=> (not res!1889770) (not e!2826393))))

(assert (=> d!1401000 (= res!1889770 (forall!10330 (toList!4391 lt!1710904) lambda!175351))))

(assert (=> d!1401000 (= (forallContained!2591 (toList!4391 lt!1710904) lambda!175351 (h!56607 (_2!28896 lt!1710445))) lt!1711022)))

(declare-fun b!4535828 () Bool)

(assert (=> b!4535828 (= e!2826393 (contains!13517 (toList!4391 lt!1710904) (h!56607 (_2!28896 lt!1710445))))))

(assert (= (and d!1401000 res!1889770) b!4535828))

(declare-fun b_lambda!157251 () Bool)

(assert (=> (not b_lambda!157251) (not d!1401000)))

(declare-fun m!5297945 () Bool)

(assert (=> d!1401000 m!5297945))

(declare-fun m!5297947 () Bool)

(assert (=> d!1401000 m!5297947))

(assert (=> d!1401000 m!5297531))

(declare-fun m!5297949 () Bool)

(assert (=> b!4535828 m!5297949))

(assert (=> b!4535622 d!1401000))

(declare-fun bs!871986 () Bool)

(declare-fun b!4535832 () Bool)

(assert (= bs!871986 (and b!4535832 d!1400816)))

(declare-fun lambda!175377 () Int)

(assert (=> bs!871986 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) lt!1710851) (= lambda!175377 lambda!175344))))

(declare-fun bs!871987 () Bool)

(assert (= bs!871987 (and b!4535832 d!1400724)))

(assert (=> bs!871987 (not (= lambda!175377 lambda!175312))))

(declare-fun bs!871988 () Bool)

(assert (= bs!871988 (and b!4535832 b!4535309)))

(assert (=> bs!871988 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) lt!1710578) (= lambda!175377 lambda!175267))))

(declare-fun bs!871989 () Bool)

(assert (= bs!871989 (and b!4535832 d!1400896)))

(assert (=> bs!871989 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) lt!1710949) (= lambda!175377 lambda!175363))))

(declare-fun bs!871990 () Bool)

(assert (= bs!871990 (and b!4535832 b!4535797)))

(assert (=> bs!871990 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) lt!1710989) (= lambda!175377 lambda!175373))))

(declare-fun bs!871991 () Bool)

(assert (= bs!871991 (and b!4535832 b!4535625)))

(assert (=> bs!871991 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) lt!1710415) (= lambda!175377 lambda!175349))))

(declare-fun bs!871992 () Bool)

(assert (= bs!871992 (and b!4535832 b!4535622)))

(assert (=> bs!871992 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) lt!1710902) (= lambda!175377 lambda!175351))))

(declare-fun bs!871993 () Bool)

(assert (= bs!871993 (and b!4535832 b!4535800)))

(assert (=> bs!871993 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175377 lambda!175371))))

(declare-fun bs!871994 () Bool)

(assert (= bs!871994 (and b!4535832 b!4535542)))

(assert (=> bs!871994 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) lt!1710429) (= lambda!175377 lambda!175340))))

(declare-fun bs!871995 () Bool)

(assert (= bs!871995 (and b!4535832 b!4535669)))

(assert (=> bs!871995 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175377 lambda!175360))))

(assert (=> bs!871994 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) lt!1710840) (= lambda!175377 lambda!175341))))

(declare-fun bs!871996 () Bool)

(assert (= bs!871996 (and b!4535832 b!4535666)))

(assert (=> bs!871996 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) lt!1710938) (= lambda!175377 lambda!175362))))

(assert (=> bs!871996 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175377 lambda!175361))))

(assert (=> bs!871992 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) lt!1710415) (= lambda!175377 lambda!175350))))

(assert (=> bs!871990 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175377 lambda!175372))))

(declare-fun bs!871997 () Bool)

(assert (= bs!871997 (and b!4535832 d!1400874)))

(assert (=> bs!871997 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) lt!1710913) (= lambda!175377 lambda!175352))))

(declare-fun bs!871998 () Bool)

(assert (= bs!871998 (and b!4535832 b!4535199)))

(assert (=> bs!871998 (not (= lambda!175377 lambda!175215))))

(declare-fun bs!871999 () Bool)

(assert (= bs!871999 (and b!4535832 b!4535545)))

(assert (=> bs!871999 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) lt!1710429) (= lambda!175377 lambda!175339))))

(declare-fun bs!872000 () Bool)

(assert (= bs!872000 (and b!4535832 d!1400980)))

(assert (=> bs!872000 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) lt!1711000) (= lambda!175377 lambda!175374))))

(declare-fun bs!872001 () Bool)

(assert (= bs!872001 (and b!4535832 d!1400628)))

(assert (=> bs!872001 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) lt!1710589) (= lambda!175377 lambda!175268))))

(assert (=> bs!871988 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) lt!1710448) (= lambda!175377 lambda!175266))))

(declare-fun bs!872002 () Bool)

(assert (= bs!872002 (and b!4535832 b!4535312)))

(assert (=> bs!872002 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) lt!1710448) (= lambda!175377 lambda!175265))))

(assert (=> b!4535832 true))

(declare-fun bs!872003 () Bool)

(declare-fun b!4535829 () Bool)

(assert (= bs!872003 (and b!4535829 d!1400724)))

(declare-fun lambda!175378 () Int)

(assert (=> bs!872003 (not (= lambda!175378 lambda!175312))))

(declare-fun bs!872004 () Bool)

(assert (= bs!872004 (and b!4535829 b!4535309)))

(assert (=> bs!872004 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) lt!1710578) (= lambda!175378 lambda!175267))))

(declare-fun bs!872005 () Bool)

(assert (= bs!872005 (and b!4535829 d!1400896)))

(assert (=> bs!872005 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) lt!1710949) (= lambda!175378 lambda!175363))))

(declare-fun bs!872006 () Bool)

(assert (= bs!872006 (and b!4535829 b!4535797)))

(assert (=> bs!872006 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) lt!1710989) (= lambda!175378 lambda!175373))))

(declare-fun bs!872007 () Bool)

(assert (= bs!872007 (and b!4535829 b!4535625)))

(assert (=> bs!872007 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) lt!1710415) (= lambda!175378 lambda!175349))))

(declare-fun bs!872008 () Bool)

(assert (= bs!872008 (and b!4535829 b!4535622)))

(assert (=> bs!872008 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) lt!1710902) (= lambda!175378 lambda!175351))))

(declare-fun bs!872009 () Bool)

(assert (= bs!872009 (and b!4535829 b!4535800)))

(assert (=> bs!872009 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175378 lambda!175371))))

(declare-fun bs!872010 () Bool)

(assert (= bs!872010 (and b!4535829 b!4535542)))

(assert (=> bs!872010 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) lt!1710429) (= lambda!175378 lambda!175340))))

(declare-fun bs!872011 () Bool)

(assert (= bs!872011 (and b!4535829 b!4535669)))

(assert (=> bs!872011 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175378 lambda!175360))))

(assert (=> bs!872010 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) lt!1710840) (= lambda!175378 lambda!175341))))

(declare-fun bs!872012 () Bool)

(assert (= bs!872012 (and b!4535829 b!4535666)))

(assert (=> bs!872012 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) lt!1710938) (= lambda!175378 lambda!175362))))

(declare-fun bs!872013 () Bool)

(assert (= bs!872013 (and b!4535829 b!4535832)))

(assert (=> bs!872013 (= lambda!175378 lambda!175377)))

(declare-fun bs!872014 () Bool)

(assert (= bs!872014 (and b!4535829 d!1400816)))

(assert (=> bs!872014 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) lt!1710851) (= lambda!175378 lambda!175344))))

(assert (=> bs!872012 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175378 lambda!175361))))

(assert (=> bs!872008 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) lt!1710415) (= lambda!175378 lambda!175350))))

(assert (=> bs!872006 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175378 lambda!175372))))

(declare-fun bs!872015 () Bool)

(assert (= bs!872015 (and b!4535829 d!1400874)))

(assert (=> bs!872015 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) lt!1710913) (= lambda!175378 lambda!175352))))

(declare-fun bs!872016 () Bool)

(assert (= bs!872016 (and b!4535829 b!4535199)))

(assert (=> bs!872016 (not (= lambda!175378 lambda!175215))))

(declare-fun bs!872017 () Bool)

(assert (= bs!872017 (and b!4535829 b!4535545)))

(assert (=> bs!872017 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) lt!1710429) (= lambda!175378 lambda!175339))))

(declare-fun bs!872018 () Bool)

(assert (= bs!872018 (and b!4535829 d!1400980)))

(assert (=> bs!872018 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) lt!1711000) (= lambda!175378 lambda!175374))))

(declare-fun bs!872019 () Bool)

(assert (= bs!872019 (and b!4535829 d!1400628)))

(assert (=> bs!872019 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) lt!1710589) (= lambda!175378 lambda!175268))))

(assert (=> bs!872004 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) lt!1710448) (= lambda!175378 lambda!175266))))

(declare-fun bs!872020 () Bool)

(assert (= bs!872020 (and b!4535829 b!4535312)))

(assert (=> bs!872020 (= (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) lt!1710448) (= lambda!175378 lambda!175265))))

(assert (=> b!4535829 true))

(declare-fun lambda!175379 () Int)

(assert (=> bs!872003 (not (= lambda!175379 lambda!175312))))

(declare-fun lt!1711026 () ListMap!3653)

(assert (=> bs!872004 (= (= lt!1711026 lt!1710578) (= lambda!175379 lambda!175267))))

(assert (=> bs!872006 (= (= lt!1711026 lt!1710989) (= lambda!175379 lambda!175373))))

(assert (=> bs!872007 (= (= lt!1711026 lt!1710415) (= lambda!175379 lambda!175349))))

(assert (=> bs!872008 (= (= lt!1711026 lt!1710902) (= lambda!175379 lambda!175351))))

(assert (=> bs!872009 (= (= lt!1711026 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175379 lambda!175371))))

(assert (=> bs!872010 (= (= lt!1711026 lt!1710429) (= lambda!175379 lambda!175340))))

(assert (=> bs!872011 (= (= lt!1711026 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175379 lambda!175360))))

(assert (=> bs!872010 (= (= lt!1711026 lt!1710840) (= lambda!175379 lambda!175341))))

(assert (=> bs!872012 (= (= lt!1711026 lt!1710938) (= lambda!175379 lambda!175362))))

(assert (=> bs!872013 (= (= lt!1711026 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175379 lambda!175377))))

(assert (=> bs!872014 (= (= lt!1711026 lt!1710851) (= lambda!175379 lambda!175344))))

(assert (=> bs!872012 (= (= lt!1711026 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175379 lambda!175361))))

(assert (=> bs!872008 (= (= lt!1711026 lt!1710415) (= lambda!175379 lambda!175350))))

(assert (=> bs!872005 (= (= lt!1711026 lt!1710949) (= lambda!175379 lambda!175363))))

(assert (=> b!4535829 (= (= lt!1711026 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175379 lambda!175378))))

(assert (=> bs!872006 (= (= lt!1711026 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175379 lambda!175372))))

(assert (=> bs!872015 (= (= lt!1711026 lt!1710913) (= lambda!175379 lambda!175352))))

(assert (=> bs!872016 (not (= lambda!175379 lambda!175215))))

(assert (=> bs!872017 (= (= lt!1711026 lt!1710429) (= lambda!175379 lambda!175339))))

(assert (=> bs!872018 (= (= lt!1711026 lt!1711000) (= lambda!175379 lambda!175374))))

(assert (=> bs!872019 (= (= lt!1711026 lt!1710589) (= lambda!175379 lambda!175268))))

(assert (=> bs!872004 (= (= lt!1711026 lt!1710448) (= lambda!175379 lambda!175266))))

(assert (=> bs!872020 (= (= lt!1711026 lt!1710448) (= lambda!175379 lambda!175265))))

(assert (=> b!4535829 true))

(declare-fun bs!872021 () Bool)

(declare-fun d!1401004 () Bool)

(assert (= bs!872021 (and d!1401004 d!1400724)))

(declare-fun lambda!175380 () Int)

(assert (=> bs!872021 (not (= lambda!175380 lambda!175312))))

(declare-fun bs!872022 () Bool)

(assert (= bs!872022 (and d!1401004 b!4535309)))

(declare-fun lt!1711037 () ListMap!3653)

(assert (=> bs!872022 (= (= lt!1711037 lt!1710578) (= lambda!175380 lambda!175267))))

(declare-fun bs!872023 () Bool)

(assert (= bs!872023 (and d!1401004 b!4535797)))

(assert (=> bs!872023 (= (= lt!1711037 lt!1710989) (= lambda!175380 lambda!175373))))

(declare-fun bs!872024 () Bool)

(assert (= bs!872024 (and d!1401004 b!4535625)))

(assert (=> bs!872024 (= (= lt!1711037 lt!1710415) (= lambda!175380 lambda!175349))))

(declare-fun bs!872025 () Bool)

(assert (= bs!872025 (and d!1401004 b!4535622)))

(assert (=> bs!872025 (= (= lt!1711037 lt!1710902) (= lambda!175380 lambda!175351))))

(declare-fun bs!872026 () Bool)

(assert (= bs!872026 (and d!1401004 b!4535800)))

(assert (=> bs!872026 (= (= lt!1711037 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175380 lambda!175371))))

(declare-fun bs!872027 () Bool)

(assert (= bs!872027 (and d!1401004 b!4535542)))

(assert (=> bs!872027 (= (= lt!1711037 lt!1710429) (= lambda!175380 lambda!175340))))

(declare-fun bs!872028 () Bool)

(assert (= bs!872028 (and d!1401004 b!4535669)))

(assert (=> bs!872028 (= (= lt!1711037 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175380 lambda!175360))))

(assert (=> bs!872027 (= (= lt!1711037 lt!1710840) (= lambda!175380 lambda!175341))))

(declare-fun bs!872029 () Bool)

(assert (= bs!872029 (and d!1401004 b!4535666)))

(assert (=> bs!872029 (= (= lt!1711037 lt!1710938) (= lambda!175380 lambda!175362))))

(declare-fun bs!872030 () Bool)

(assert (= bs!872030 (and d!1401004 b!4535832)))

(assert (=> bs!872030 (= (= lt!1711037 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175380 lambda!175377))))

(declare-fun bs!872031 () Bool)

(assert (= bs!872031 (and d!1401004 d!1400816)))

(assert (=> bs!872031 (= (= lt!1711037 lt!1710851) (= lambda!175380 lambda!175344))))

(assert (=> bs!872029 (= (= lt!1711037 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175380 lambda!175361))))

(declare-fun bs!872032 () Bool)

(assert (= bs!872032 (and d!1401004 b!4535829)))

(assert (=> bs!872032 (= (= lt!1711037 lt!1711026) (= lambda!175380 lambda!175379))))

(assert (=> bs!872025 (= (= lt!1711037 lt!1710415) (= lambda!175380 lambda!175350))))

(declare-fun bs!872033 () Bool)

(assert (= bs!872033 (and d!1401004 d!1400896)))

(assert (=> bs!872033 (= (= lt!1711037 lt!1710949) (= lambda!175380 lambda!175363))))

(assert (=> bs!872032 (= (= lt!1711037 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175380 lambda!175378))))

(assert (=> bs!872023 (= (= lt!1711037 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175380 lambda!175372))))

(declare-fun bs!872034 () Bool)

(assert (= bs!872034 (and d!1401004 d!1400874)))

(assert (=> bs!872034 (= (= lt!1711037 lt!1710913) (= lambda!175380 lambda!175352))))

(declare-fun bs!872035 () Bool)

(assert (= bs!872035 (and d!1401004 b!4535199)))

(assert (=> bs!872035 (not (= lambda!175380 lambda!175215))))

(declare-fun bs!872036 () Bool)

(assert (= bs!872036 (and d!1401004 b!4535545)))

(assert (=> bs!872036 (= (= lt!1711037 lt!1710429) (= lambda!175380 lambda!175339))))

(declare-fun bs!872037 () Bool)

(assert (= bs!872037 (and d!1401004 d!1400980)))

(assert (=> bs!872037 (= (= lt!1711037 lt!1711000) (= lambda!175380 lambda!175374))))

(declare-fun bs!872038 () Bool)

(assert (= bs!872038 (and d!1401004 d!1400628)))

(assert (=> bs!872038 (= (= lt!1711037 lt!1710589) (= lambda!175380 lambda!175268))))

(assert (=> bs!872022 (= (= lt!1711037 lt!1710448) (= lambda!175380 lambda!175266))))

(declare-fun bs!872039 () Bool)

(assert (= bs!872039 (and d!1401004 b!4535312)))

(assert (=> bs!872039 (= (= lt!1711037 lt!1710448) (= lambda!175380 lambda!175265))))

(assert (=> d!1401004 true))

(declare-fun bm!316213 () Bool)

(declare-fun call!316218 () Unit!97630)

(assert (=> bm!316213 (= call!316218 (lemmaContainsAllItsOwnKeys!359 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun c!774571 () Bool)

(declare-fun bm!316214 () Bool)

(declare-fun call!316219 () Bool)

(assert (=> bm!316214 (= call!316219 (forall!10330 (toList!4391 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (ite c!774571 lambda!175377 lambda!175379)))))

(declare-fun e!2826396 () ListMap!3653)

(assert (=> b!4535829 (= e!2826396 lt!1711026)))

(declare-fun lt!1711028 () ListMap!3653)

(assert (=> b!4535829 (= lt!1711028 (+!1593 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) (h!56607 (t!357818 (_2!28896 lt!1710445)))))))

(assert (=> b!4535829 (= lt!1711026 (addToMapMapFromBucket!719 (t!357818 (t!357818 (_2!28896 lt!1710445))) (+!1593 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) (h!56607 (t!357818 (_2!28896 lt!1710445))))))))

(declare-fun lt!1711039 () Unit!97630)

(assert (=> b!4535829 (= lt!1711039 call!316218)))

(assert (=> b!4535829 (forall!10330 (toList!4391 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) lambda!175378)))

(declare-fun lt!1711034 () Unit!97630)

(assert (=> b!4535829 (= lt!1711034 lt!1711039)))

(assert (=> b!4535829 (forall!10330 (toList!4391 lt!1711028) lambda!175379)))

(declare-fun lt!1711029 () Unit!97630)

(declare-fun Unit!97757 () Unit!97630)

(assert (=> b!4535829 (= lt!1711029 Unit!97757)))

(assert (=> b!4535829 (forall!10330 (t!357818 (t!357818 (_2!28896 lt!1710445))) lambda!175379)))

(declare-fun lt!1711031 () Unit!97630)

(declare-fun Unit!97758 () Unit!97630)

(assert (=> b!4535829 (= lt!1711031 Unit!97758)))

(declare-fun lt!1711025 () Unit!97630)

(declare-fun Unit!97759 () Unit!97630)

(assert (=> b!4535829 (= lt!1711025 Unit!97759)))

(declare-fun lt!1711043 () Unit!97630)

(assert (=> b!4535829 (= lt!1711043 (forallContained!2591 (toList!4391 lt!1711028) lambda!175379 (h!56607 (t!357818 (_2!28896 lt!1710445)))))))

(assert (=> b!4535829 (contains!13513 lt!1711028 (_1!28895 (h!56607 (t!357818 (_2!28896 lt!1710445)))))))

(declare-fun lt!1711023 () Unit!97630)

(declare-fun Unit!97760 () Unit!97630)

(assert (=> b!4535829 (= lt!1711023 Unit!97760)))

(assert (=> b!4535829 (contains!13513 lt!1711026 (_1!28895 (h!56607 (t!357818 (_2!28896 lt!1710445)))))))

(declare-fun lt!1711035 () Unit!97630)

(declare-fun Unit!97761 () Unit!97630)

(assert (=> b!4535829 (= lt!1711035 Unit!97761)))

(assert (=> b!4535829 (forall!10330 (t!357818 (_2!28896 lt!1710445)) lambda!175379)))

(declare-fun lt!1711038 () Unit!97630)

(declare-fun Unit!97762 () Unit!97630)

(assert (=> b!4535829 (= lt!1711038 Unit!97762)))

(assert (=> b!4535829 (forall!10330 (toList!4391 lt!1711028) lambda!175379)))

(declare-fun lt!1711024 () Unit!97630)

(declare-fun Unit!97763 () Unit!97630)

(assert (=> b!4535829 (= lt!1711024 Unit!97763)))

(declare-fun lt!1711027 () Unit!97630)

(declare-fun Unit!97764 () Unit!97630)

(assert (=> b!4535829 (= lt!1711027 Unit!97764)))

(declare-fun lt!1711040 () Unit!97630)

(assert (=> b!4535829 (= lt!1711040 (addForallContainsKeyThenBeforeAdding!359 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) lt!1711026 (_1!28895 (h!56607 (t!357818 (_2!28896 lt!1710445)))) (_2!28895 (h!56607 (t!357818 (_2!28896 lt!1710445))))))))

(assert (=> b!4535829 (forall!10330 (toList!4391 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) lambda!175379)))

(declare-fun lt!1711032 () Unit!97630)

(assert (=> b!4535829 (= lt!1711032 lt!1711040)))

(assert (=> b!4535829 (forall!10330 (toList!4391 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) lambda!175379)))

(declare-fun lt!1711030 () Unit!97630)

(declare-fun Unit!97765 () Unit!97630)

(assert (=> b!4535829 (= lt!1711030 Unit!97765)))

(declare-fun res!1889771 () Bool)

(declare-fun call!316220 () Bool)

(assert (=> b!4535829 (= res!1889771 call!316220)))

(declare-fun e!2826395 () Bool)

(assert (=> b!4535829 (=> (not res!1889771) (not e!2826395))))

(assert (=> b!4535829 e!2826395))

(declare-fun lt!1711033 () Unit!97630)

(declare-fun Unit!97766 () Unit!97630)

(assert (=> b!4535829 (= lt!1711033 Unit!97766)))

(declare-fun b!4535830 () Bool)

(declare-fun e!2826394 () Bool)

(assert (=> b!4535830 (= e!2826394 (invariantList!1039 (toList!4391 lt!1711037)))))

(declare-fun b!4535831 () Bool)

(declare-fun res!1889772 () Bool)

(assert (=> b!4535831 (=> (not res!1889772) (not e!2826394))))

(assert (=> b!4535831 (= res!1889772 (forall!10330 (toList!4391 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) lambda!175380))))

(declare-fun bm!316215 () Bool)

(assert (=> bm!316215 (= call!316220 (forall!10330 (ite c!774571 (toList!4391 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (t!357818 (_2!28896 lt!1710445))) (ite c!774571 lambda!175377 lambda!175379)))))

(declare-fun b!4535833 () Bool)

(assert (=> b!4535833 (= e!2826395 call!316219)))

(assert (=> b!4535832 (= e!2826396 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))))))

(declare-fun lt!1711036 () Unit!97630)

(assert (=> b!4535832 (= lt!1711036 call!316218)))

(assert (=> b!4535832 call!316219))

(declare-fun lt!1711042 () Unit!97630)

(assert (=> b!4535832 (= lt!1711042 lt!1711036)))

(assert (=> b!4535832 call!316220))

(declare-fun lt!1711041 () Unit!97630)

(declare-fun Unit!97767 () Unit!97630)

(assert (=> b!4535832 (= lt!1711041 Unit!97767)))

(assert (=> d!1401004 e!2826394))

(declare-fun res!1889773 () Bool)

(assert (=> d!1401004 (=> (not res!1889773) (not e!2826394))))

(assert (=> d!1401004 (= res!1889773 (forall!10330 (t!357818 (_2!28896 lt!1710445)) lambda!175380))))

(assert (=> d!1401004 (= lt!1711037 e!2826396)))

(assert (=> d!1401004 (= c!774571 ((_ is Nil!50732) (t!357818 (_2!28896 lt!1710445))))))

(assert (=> d!1401004 (noDuplicateKeys!1192 (t!357818 (_2!28896 lt!1710445)))))

(assert (=> d!1401004 (= (addToMapMapFromBucket!719 (t!357818 (_2!28896 lt!1710445)) (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) lt!1711037)))

(assert (= (and d!1401004 c!774571) b!4535832))

(assert (= (and d!1401004 (not c!774571)) b!4535829))

(assert (= (and b!4535829 res!1889771) b!4535833))

(assert (= (or b!4535832 b!4535833) bm!316214))

(assert (= (or b!4535832 b!4535829) bm!316215))

(assert (= (or b!4535832 b!4535829) bm!316213))

(assert (= (and d!1401004 res!1889773) b!4535831))

(assert (= (and b!4535831 res!1889772) b!4535830))

(declare-fun m!5297953 () Bool)

(assert (=> b!4535830 m!5297953))

(declare-fun m!5297955 () Bool)

(assert (=> d!1401004 m!5297955))

(assert (=> d!1401004 m!5297025))

(declare-fun m!5297957 () Bool)

(assert (=> bm!316215 m!5297957))

(declare-fun m!5297959 () Bool)

(assert (=> b!4535829 m!5297959))

(declare-fun m!5297961 () Bool)

(assert (=> b!4535829 m!5297961))

(declare-fun m!5297963 () Bool)

(assert (=> b!4535829 m!5297963))

(declare-fun m!5297965 () Bool)

(assert (=> b!4535829 m!5297965))

(assert (=> b!4535829 m!5297541))

(declare-fun m!5297967 () Bool)

(assert (=> b!4535829 m!5297967))

(declare-fun m!5297969 () Bool)

(assert (=> b!4535829 m!5297969))

(declare-fun m!5297971 () Bool)

(assert (=> b!4535829 m!5297971))

(assert (=> b!4535829 m!5297959))

(declare-fun m!5297973 () Bool)

(assert (=> b!4535829 m!5297973))

(assert (=> b!4535829 m!5297541))

(assert (=> b!4535829 m!5297969))

(declare-fun m!5297975 () Bool)

(assert (=> b!4535829 m!5297975))

(declare-fun m!5297977 () Bool)

(assert (=> b!4535829 m!5297977))

(assert (=> b!4535829 m!5297961))

(declare-fun m!5297979 () Bool)

(assert (=> b!4535829 m!5297979))

(assert (=> bm!316213 m!5297541))

(declare-fun m!5297981 () Bool)

(assert (=> bm!316213 m!5297981))

(declare-fun m!5297983 () Bool)

(assert (=> bm!316214 m!5297983))

(declare-fun m!5297985 () Bool)

(assert (=> b!4535831 m!5297985))

(assert (=> b!4535622 d!1401004))

(declare-fun d!1401010 () Bool)

(declare-fun res!1889780 () Bool)

(declare-fun e!2826409 () Bool)

(assert (=> d!1401010 (=> res!1889780 e!2826409)))

(assert (=> d!1401010 (= res!1889780 ((_ is Nil!50732) (toList!4391 lt!1710904)))))

(assert (=> d!1401010 (= (forall!10330 (toList!4391 lt!1710904) lambda!175351) e!2826409)))

(declare-fun b!4535852 () Bool)

(declare-fun e!2826410 () Bool)

(assert (=> b!4535852 (= e!2826409 e!2826410)))

(declare-fun res!1889781 () Bool)

(assert (=> b!4535852 (=> (not res!1889781) (not e!2826410))))

(assert (=> b!4535852 (= res!1889781 (dynLambda!21205 lambda!175351 (h!56607 (toList!4391 lt!1710904))))))

(declare-fun b!4535853 () Bool)

(assert (=> b!4535853 (= e!2826410 (forall!10330 (t!357818 (toList!4391 lt!1710904)) lambda!175351))))

(assert (= (and d!1401010 (not res!1889780)) b!4535852))

(assert (= (and b!4535852 res!1889781) b!4535853))

(declare-fun b_lambda!157253 () Bool)

(assert (=> (not b_lambda!157253) (not b!4535852)))

(declare-fun m!5297991 () Bool)

(assert (=> b!4535852 m!5297991))

(declare-fun m!5297993 () Bool)

(assert (=> b!4535853 m!5297993))

(assert (=> b!4535622 d!1401010))

(declare-fun d!1401014 () Bool)

(declare-fun res!1889782 () Bool)

(declare-fun e!2826411 () Bool)

(assert (=> d!1401014 (=> res!1889782 e!2826411)))

(assert (=> d!1401014 (= res!1889782 ((_ is Nil!50732) (toList!4391 lt!1710415)))))

(assert (=> d!1401014 (= (forall!10330 (toList!4391 lt!1710415) lambda!175350) e!2826411)))

(declare-fun b!4535854 () Bool)

(declare-fun e!2826412 () Bool)

(assert (=> b!4535854 (= e!2826411 e!2826412)))

(declare-fun res!1889783 () Bool)

(assert (=> b!4535854 (=> (not res!1889783) (not e!2826412))))

(assert (=> b!4535854 (= res!1889783 (dynLambda!21205 lambda!175350 (h!56607 (toList!4391 lt!1710415))))))

(declare-fun b!4535855 () Bool)

(assert (=> b!4535855 (= e!2826412 (forall!10330 (t!357818 (toList!4391 lt!1710415)) lambda!175350))))

(assert (= (and d!1401014 (not res!1889782)) b!4535854))

(assert (= (and b!4535854 res!1889783) b!4535855))

(declare-fun b_lambda!157255 () Bool)

(assert (=> (not b_lambda!157255) (not b!4535854)))

(declare-fun m!5297995 () Bool)

(assert (=> b!4535854 m!5297995))

(declare-fun m!5297997 () Bool)

(assert (=> b!4535855 m!5297997))

(assert (=> b!4535622 d!1401014))

(declare-fun d!1401016 () Bool)

(declare-fun e!2826415 () Bool)

(assert (=> d!1401016 e!2826415))

(declare-fun res!1889784 () Bool)

(assert (=> d!1401016 (=> res!1889784 e!2826415)))

(declare-fun e!2826417 () Bool)

(assert (=> d!1401016 (= res!1889784 e!2826417)))

(declare-fun res!1889785 () Bool)

(assert (=> d!1401016 (=> (not res!1889785) (not e!2826417))))

(declare-fun lt!1711053 () Bool)

(assert (=> d!1401016 (= res!1889785 (not lt!1711053))))

(declare-fun lt!1711048 () Bool)

(assert (=> d!1401016 (= lt!1711053 lt!1711048)))

(declare-fun lt!1711047 () Unit!97630)

(declare-fun e!2826414 () Unit!97630)

(assert (=> d!1401016 (= lt!1711047 e!2826414)))

(declare-fun c!774578 () Bool)

(assert (=> d!1401016 (= c!774578 lt!1711048)))

(assert (=> d!1401016 (= lt!1711048 (containsKey!1859 (toList!4391 lt!1710902) (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(assert (=> d!1401016 (= (contains!13513 lt!1710902 (_1!28895 (h!56607 (_2!28896 lt!1710445)))) lt!1711053)))

(declare-fun b!4535856 () Bool)

(declare-fun lt!1711054 () Unit!97630)

(assert (=> b!4535856 (= e!2826414 lt!1711054)))

(declare-fun lt!1711049 () Unit!97630)

(assert (=> b!4535856 (= lt!1711049 (lemmaContainsKeyImpliesGetValueByKeyDefined!1040 (toList!4391 lt!1710902) (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(assert (=> b!4535856 (isDefined!8463 (getValueByKey!1137 (toList!4391 lt!1710902) (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun lt!1711051 () Unit!97630)

(assert (=> b!4535856 (= lt!1711051 lt!1711049)))

(assert (=> b!4535856 (= lt!1711054 (lemmaInListThenGetKeysListContains!483 (toList!4391 lt!1710902) (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun call!316221 () Bool)

(assert (=> b!4535856 call!316221))

(declare-fun b!4535857 () Bool)

(assert (=> b!4535857 false))

(declare-fun lt!1711050 () Unit!97630)

(declare-fun lt!1711052 () Unit!97630)

(assert (=> b!4535857 (= lt!1711050 lt!1711052)))

(assert (=> b!4535857 (containsKey!1859 (toList!4391 lt!1710902) (_1!28895 (h!56607 (_2!28896 lt!1710445))))))

(assert (=> b!4535857 (= lt!1711052 (lemmaInGetKeysListThenContainsKey!486 (toList!4391 lt!1710902) (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun e!2826416 () Unit!97630)

(declare-fun Unit!97768 () Unit!97630)

(assert (=> b!4535857 (= e!2826416 Unit!97768)))

(declare-fun bm!316216 () Bool)

(declare-fun e!2826418 () List!50859)

(assert (=> bm!316216 (= call!316221 (contains!13515 e!2826418 (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun c!774580 () Bool)

(assert (=> bm!316216 (= c!774580 c!774578)))

(declare-fun b!4535858 () Bool)

(declare-fun e!2826413 () Bool)

(assert (=> b!4535858 (= e!2826415 e!2826413)))

(declare-fun res!1889786 () Bool)

(assert (=> b!4535858 (=> (not res!1889786) (not e!2826413))))

(assert (=> b!4535858 (= res!1889786 (isDefined!8463 (getValueByKey!1137 (toList!4391 lt!1710902) (_1!28895 (h!56607 (_2!28896 lt!1710445))))))))

(declare-fun b!4535859 () Bool)

(assert (=> b!4535859 (= e!2826418 (keys!17648 lt!1710902))))

(declare-fun b!4535860 () Bool)

(assert (=> b!4535860 (= e!2826414 e!2826416)))

(declare-fun c!774579 () Bool)

(assert (=> b!4535860 (= c!774579 call!316221)))

(declare-fun b!4535861 () Bool)

(declare-fun Unit!97769 () Unit!97630)

(assert (=> b!4535861 (= e!2826416 Unit!97769)))

(declare-fun b!4535862 () Bool)

(assert (=> b!4535862 (= e!2826418 (getKeysList!487 (toList!4391 lt!1710902)))))

(declare-fun b!4535863 () Bool)

(assert (=> b!4535863 (= e!2826413 (contains!13515 (keys!17648 lt!1710902) (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun b!4535864 () Bool)

(assert (=> b!4535864 (= e!2826417 (not (contains!13515 (keys!17648 lt!1710902) (_1!28895 (h!56607 (_2!28896 lt!1710445))))))))

(assert (= (and d!1401016 c!774578) b!4535856))

(assert (= (and d!1401016 (not c!774578)) b!4535860))

(assert (= (and b!4535860 c!774579) b!4535857))

(assert (= (and b!4535860 (not c!774579)) b!4535861))

(assert (= (or b!4535856 b!4535860) bm!316216))

(assert (= (and bm!316216 c!774580) b!4535862))

(assert (= (and bm!316216 (not c!774580)) b!4535859))

(assert (= (and d!1401016 res!1889785) b!4535864))

(assert (= (and d!1401016 (not res!1889784)) b!4535858))

(assert (= (and b!4535858 res!1889786) b!4535863))

(declare-fun m!5297999 () Bool)

(assert (=> b!4535863 m!5297999))

(assert (=> b!4535863 m!5297999))

(declare-fun m!5298001 () Bool)

(assert (=> b!4535863 m!5298001))

(declare-fun m!5298003 () Bool)

(assert (=> b!4535857 m!5298003))

(declare-fun m!5298005 () Bool)

(assert (=> b!4535857 m!5298005))

(assert (=> b!4535859 m!5297999))

(assert (=> b!4535864 m!5297999))

(assert (=> b!4535864 m!5297999))

(assert (=> b!4535864 m!5298001))

(declare-fun m!5298007 () Bool)

(assert (=> b!4535858 m!5298007))

(assert (=> b!4535858 m!5298007))

(declare-fun m!5298009 () Bool)

(assert (=> b!4535858 m!5298009))

(declare-fun m!5298011 () Bool)

(assert (=> bm!316216 m!5298011))

(declare-fun m!5298013 () Bool)

(assert (=> b!4535862 m!5298013))

(declare-fun m!5298015 () Bool)

(assert (=> b!4535856 m!5298015))

(assert (=> b!4535856 m!5298007))

(assert (=> b!4535856 m!5298007))

(assert (=> b!4535856 m!5298009))

(declare-fun m!5298017 () Bool)

(assert (=> b!4535856 m!5298017))

(assert (=> d!1401016 m!5298003))

(assert (=> b!4535622 d!1401016))

(declare-fun bs!872040 () Bool)

(declare-fun d!1401018 () Bool)

(assert (= bs!872040 (and d!1401018 d!1400724)))

(declare-fun lambda!175389 () Int)

(assert (=> bs!872040 (not (= lambda!175389 lambda!175312))))

(declare-fun bs!872041 () Bool)

(assert (= bs!872041 (and d!1401018 b!4535309)))

(assert (=> bs!872041 (= (= lt!1710902 lt!1710578) (= lambda!175389 lambda!175267))))

(declare-fun bs!872042 () Bool)

(assert (= bs!872042 (and d!1401018 b!4535797)))

(assert (=> bs!872042 (= (= lt!1710902 lt!1710989) (= lambda!175389 lambda!175373))))

(declare-fun bs!872043 () Bool)

(assert (= bs!872043 (and d!1401018 b!4535625)))

(assert (=> bs!872043 (= (= lt!1710902 lt!1710415) (= lambda!175389 lambda!175349))))

(declare-fun bs!872044 () Bool)

(assert (= bs!872044 (and d!1401018 b!4535622)))

(assert (=> bs!872044 (= lambda!175389 lambda!175351)))

(declare-fun bs!872045 () Bool)

(assert (= bs!872045 (and d!1401018 d!1401004)))

(assert (=> bs!872045 (= (= lt!1710902 lt!1711037) (= lambda!175389 lambda!175380))))

(declare-fun bs!872046 () Bool)

(assert (= bs!872046 (and d!1401018 b!4535800)))

(assert (=> bs!872046 (= (= lt!1710902 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175389 lambda!175371))))

(declare-fun bs!872047 () Bool)

(assert (= bs!872047 (and d!1401018 b!4535542)))

(assert (=> bs!872047 (= (= lt!1710902 lt!1710429) (= lambda!175389 lambda!175340))))

(declare-fun bs!872048 () Bool)

(assert (= bs!872048 (and d!1401018 b!4535669)))

(assert (=> bs!872048 (= (= lt!1710902 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175389 lambda!175360))))

(assert (=> bs!872047 (= (= lt!1710902 lt!1710840) (= lambda!175389 lambda!175341))))

(declare-fun bs!872049 () Bool)

(assert (= bs!872049 (and d!1401018 b!4535666)))

(assert (=> bs!872049 (= (= lt!1710902 lt!1710938) (= lambda!175389 lambda!175362))))

(declare-fun bs!872050 () Bool)

(assert (= bs!872050 (and d!1401018 b!4535832)))

(assert (=> bs!872050 (= (= lt!1710902 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175389 lambda!175377))))

(declare-fun bs!872051 () Bool)

(assert (= bs!872051 (and d!1401018 d!1400816)))

(assert (=> bs!872051 (= (= lt!1710902 lt!1710851) (= lambda!175389 lambda!175344))))

(assert (=> bs!872049 (= (= lt!1710902 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175389 lambda!175361))))

(declare-fun bs!872052 () Bool)

(assert (= bs!872052 (and d!1401018 b!4535829)))

(assert (=> bs!872052 (= (= lt!1710902 lt!1711026) (= lambda!175389 lambda!175379))))

(assert (=> bs!872044 (= (= lt!1710902 lt!1710415) (= lambda!175389 lambda!175350))))

(declare-fun bs!872053 () Bool)

(assert (= bs!872053 (and d!1401018 d!1400896)))

(assert (=> bs!872053 (= (= lt!1710902 lt!1710949) (= lambda!175389 lambda!175363))))

(assert (=> bs!872052 (= (= lt!1710902 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175389 lambda!175378))))

(assert (=> bs!872042 (= (= lt!1710902 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175389 lambda!175372))))

(declare-fun bs!872054 () Bool)

(assert (= bs!872054 (and d!1401018 d!1400874)))

(assert (=> bs!872054 (= (= lt!1710902 lt!1710913) (= lambda!175389 lambda!175352))))

(declare-fun bs!872055 () Bool)

(assert (= bs!872055 (and d!1401018 b!4535199)))

(assert (=> bs!872055 (not (= lambda!175389 lambda!175215))))

(declare-fun bs!872056 () Bool)

(assert (= bs!872056 (and d!1401018 b!4535545)))

(assert (=> bs!872056 (= (= lt!1710902 lt!1710429) (= lambda!175389 lambda!175339))))

(declare-fun bs!872057 () Bool)

(assert (= bs!872057 (and d!1401018 d!1400980)))

(assert (=> bs!872057 (= (= lt!1710902 lt!1711000) (= lambda!175389 lambda!175374))))

(declare-fun bs!872058 () Bool)

(assert (= bs!872058 (and d!1401018 d!1400628)))

(assert (=> bs!872058 (= (= lt!1710902 lt!1710589) (= lambda!175389 lambda!175268))))

(assert (=> bs!872041 (= (= lt!1710902 lt!1710448) (= lambda!175389 lambda!175266))))

(declare-fun bs!872059 () Bool)

(assert (= bs!872059 (and d!1401018 b!4535312)))

(assert (=> bs!872059 (= (= lt!1710902 lt!1710448) (= lambda!175389 lambda!175265))))

(assert (=> d!1401018 true))

(assert (=> d!1401018 (forall!10330 (toList!4391 lt!1710415) lambda!175389)))

(declare-fun lt!1711059 () Unit!97630)

(declare-fun choose!29836 (ListMap!3653 ListMap!3653 K!12120 V!12366) Unit!97630)

(assert (=> d!1401018 (= lt!1711059 (choose!29836 lt!1710415 lt!1710902 (_1!28895 (h!56607 (_2!28896 lt!1710445))) (_2!28895 (h!56607 (_2!28896 lt!1710445)))))))

(assert (=> d!1401018 (forall!10330 (toList!4391 (+!1593 lt!1710415 (tuple2!51203 (_1!28895 (h!56607 (_2!28896 lt!1710445))) (_2!28895 (h!56607 (_2!28896 lt!1710445)))))) lambda!175389)))

(assert (=> d!1401018 (= (addForallContainsKeyThenBeforeAdding!359 lt!1710415 lt!1710902 (_1!28895 (h!56607 (_2!28896 lt!1710445))) (_2!28895 (h!56607 (_2!28896 lt!1710445)))) lt!1711059)))

(declare-fun bs!872060 () Bool)

(assert (= bs!872060 d!1401018))

(declare-fun m!5298019 () Bool)

(assert (=> bs!872060 m!5298019))

(declare-fun m!5298021 () Bool)

(assert (=> bs!872060 m!5298021))

(declare-fun m!5298023 () Bool)

(assert (=> bs!872060 m!5298023))

(declare-fun m!5298025 () Bool)

(assert (=> bs!872060 m!5298025))

(assert (=> b!4535622 d!1401018))

(declare-fun d!1401020 () Bool)

(declare-fun res!1889796 () Bool)

(declare-fun e!2826422 () Bool)

(assert (=> d!1401020 (=> res!1889796 e!2826422)))

(assert (=> d!1401020 (= res!1889796 ((_ is Nil!50732) (t!357818 (_2!28896 lt!1710445))))))

(assert (=> d!1401020 (= (forall!10330 (t!357818 (_2!28896 lt!1710445)) lambda!175351) e!2826422)))

(declare-fun b!4535877 () Bool)

(declare-fun e!2826423 () Bool)

(assert (=> b!4535877 (= e!2826422 e!2826423)))

(declare-fun res!1889797 () Bool)

(assert (=> b!4535877 (=> (not res!1889797) (not e!2826423))))

(assert (=> b!4535877 (= res!1889797 (dynLambda!21205 lambda!175351 (h!56607 (t!357818 (_2!28896 lt!1710445)))))))

(declare-fun b!4535878 () Bool)

(assert (=> b!4535878 (= e!2826423 (forall!10330 (t!357818 (t!357818 (_2!28896 lt!1710445))) lambda!175351))))

(assert (= (and d!1401020 (not res!1889796)) b!4535877))

(assert (= (and b!4535877 res!1889797) b!4535878))

(declare-fun b_lambda!157257 () Bool)

(assert (=> (not b_lambda!157257) (not b!4535877)))

(declare-fun m!5298041 () Bool)

(assert (=> b!4535877 m!5298041))

(declare-fun m!5298043 () Bool)

(assert (=> b!4535878 m!5298043))

(assert (=> b!4535622 d!1401020))

(declare-fun d!1401024 () Bool)

(declare-fun e!2826442 () Bool)

(assert (=> d!1401024 e!2826442))

(declare-fun res!1889819 () Bool)

(assert (=> d!1401024 (=> (not res!1889819) (not e!2826442))))

(declare-fun lt!1711071 () ListMap!3653)

(assert (=> d!1401024 (= res!1889819 (contains!13513 lt!1711071 (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun lt!1711072 () List!50856)

(assert (=> d!1401024 (= lt!1711071 (ListMap!3654 lt!1711072))))

(declare-fun lt!1711073 () Unit!97630)

(declare-fun lt!1711070 () Unit!97630)

(assert (=> d!1401024 (= lt!1711073 lt!1711070)))

(assert (=> d!1401024 (= (getValueByKey!1137 lt!1711072 (_1!28895 (h!56607 (_2!28896 lt!1710445)))) (Some!11186 (_2!28895 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!713 (List!50856 K!12120 V!12366) Unit!97630)

(assert (=> d!1401024 (= lt!1711070 (lemmaContainsTupThenGetReturnValue!713 lt!1711072 (_1!28895 (h!56607 (_2!28896 lt!1710445))) (_2!28895 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun insertNoDuplicatedKeys!291 (List!50856 K!12120 V!12366) List!50856)

(assert (=> d!1401024 (= lt!1711072 (insertNoDuplicatedKeys!291 (toList!4391 lt!1710415) (_1!28895 (h!56607 (_2!28896 lt!1710445))) (_2!28895 (h!56607 (_2!28896 lt!1710445)))))))

(assert (=> d!1401024 (= (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445))) lt!1711071)))

(declare-fun b!4535899 () Bool)

(declare-fun res!1889818 () Bool)

(assert (=> b!4535899 (=> (not res!1889818) (not e!2826442))))

(assert (=> b!4535899 (= res!1889818 (= (getValueByKey!1137 (toList!4391 lt!1711071) (_1!28895 (h!56607 (_2!28896 lt!1710445)))) (Some!11186 (_2!28895 (h!56607 (_2!28896 lt!1710445))))))))

(declare-fun b!4535900 () Bool)

(assert (=> b!4535900 (= e!2826442 (contains!13517 (toList!4391 lt!1711071) (h!56607 (_2!28896 lt!1710445))))))

(assert (= (and d!1401024 res!1889819) b!4535899))

(assert (= (and b!4535899 res!1889818) b!4535900))

(declare-fun m!5298061 () Bool)

(assert (=> d!1401024 m!5298061))

(declare-fun m!5298063 () Bool)

(assert (=> d!1401024 m!5298063))

(declare-fun m!5298065 () Bool)

(assert (=> d!1401024 m!5298065))

(declare-fun m!5298067 () Bool)

(assert (=> d!1401024 m!5298067))

(declare-fun m!5298069 () Bool)

(assert (=> b!4535899 m!5298069))

(declare-fun m!5298071 () Bool)

(assert (=> b!4535900 m!5298071))

(assert (=> b!4535622 d!1401024))

(declare-fun d!1401034 () Bool)

(declare-fun res!1889820 () Bool)

(declare-fun e!2826443 () Bool)

(assert (=> d!1401034 (=> res!1889820 e!2826443)))

(assert (=> d!1401034 (= res!1889820 ((_ is Nil!50732) (_2!28896 lt!1710445)))))

(assert (=> d!1401034 (= (forall!10330 (_2!28896 lt!1710445) lambda!175351) e!2826443)))

(declare-fun b!4535901 () Bool)

(declare-fun e!2826444 () Bool)

(assert (=> b!4535901 (= e!2826443 e!2826444)))

(declare-fun res!1889821 () Bool)

(assert (=> b!4535901 (=> (not res!1889821) (not e!2826444))))

(assert (=> b!4535901 (= res!1889821 (dynLambda!21205 lambda!175351 (h!56607 (_2!28896 lt!1710445))))))

(declare-fun b!4535902 () Bool)

(assert (=> b!4535902 (= e!2826444 (forall!10330 (t!357818 (_2!28896 lt!1710445)) lambda!175351))))

(assert (= (and d!1401034 (not res!1889820)) b!4535901))

(assert (= (and b!4535901 res!1889821) b!4535902))

(declare-fun b_lambda!157263 () Bool)

(assert (=> (not b_lambda!157263) (not b!4535901)))

(assert (=> b!4535901 m!5297945))

(assert (=> b!4535902 m!5297551))

(assert (=> b!4535622 d!1401034))

(declare-fun d!1401036 () Bool)

(declare-fun e!2826447 () Bool)

(assert (=> d!1401036 e!2826447))

(declare-fun res!1889822 () Bool)

(assert (=> d!1401036 (=> res!1889822 e!2826447)))

(declare-fun e!2826449 () Bool)

(assert (=> d!1401036 (= res!1889822 e!2826449)))

(declare-fun res!1889823 () Bool)

(assert (=> d!1401036 (=> (not res!1889823) (not e!2826449))))

(declare-fun lt!1711080 () Bool)

(assert (=> d!1401036 (= res!1889823 (not lt!1711080))))

(declare-fun lt!1711075 () Bool)

(assert (=> d!1401036 (= lt!1711080 lt!1711075)))

(declare-fun lt!1711074 () Unit!97630)

(declare-fun e!2826446 () Unit!97630)

(assert (=> d!1401036 (= lt!1711074 e!2826446)))

(declare-fun c!774581 () Bool)

(assert (=> d!1401036 (= c!774581 lt!1711075)))

(assert (=> d!1401036 (= lt!1711075 (containsKey!1859 (toList!4391 lt!1710716) key!3287))))

(assert (=> d!1401036 (= (contains!13513 lt!1710716 key!3287) lt!1711080)))

(declare-fun b!4535903 () Bool)

(declare-fun lt!1711081 () Unit!97630)

(assert (=> b!4535903 (= e!2826446 lt!1711081)))

(declare-fun lt!1711076 () Unit!97630)

(assert (=> b!4535903 (= lt!1711076 (lemmaContainsKeyImpliesGetValueByKeyDefined!1040 (toList!4391 lt!1710716) key!3287))))

(assert (=> b!4535903 (isDefined!8463 (getValueByKey!1137 (toList!4391 lt!1710716) key!3287))))

(declare-fun lt!1711078 () Unit!97630)

(assert (=> b!4535903 (= lt!1711078 lt!1711076)))

(assert (=> b!4535903 (= lt!1711081 (lemmaInListThenGetKeysListContains!483 (toList!4391 lt!1710716) key!3287))))

(declare-fun call!316222 () Bool)

(assert (=> b!4535903 call!316222))

(declare-fun b!4535904 () Bool)

(assert (=> b!4535904 false))

(declare-fun lt!1711077 () Unit!97630)

(declare-fun lt!1711079 () Unit!97630)

(assert (=> b!4535904 (= lt!1711077 lt!1711079)))

(assert (=> b!4535904 (containsKey!1859 (toList!4391 lt!1710716) key!3287)))

(assert (=> b!4535904 (= lt!1711079 (lemmaInGetKeysListThenContainsKey!486 (toList!4391 lt!1710716) key!3287))))

(declare-fun e!2826448 () Unit!97630)

(declare-fun Unit!97781 () Unit!97630)

(assert (=> b!4535904 (= e!2826448 Unit!97781)))

(declare-fun bm!316217 () Bool)

(declare-fun e!2826450 () List!50859)

(assert (=> bm!316217 (= call!316222 (contains!13515 e!2826450 key!3287))))

(declare-fun c!774583 () Bool)

(assert (=> bm!316217 (= c!774583 c!774581)))

(declare-fun b!4535905 () Bool)

(declare-fun e!2826445 () Bool)

(assert (=> b!4535905 (= e!2826447 e!2826445)))

(declare-fun res!1889824 () Bool)

(assert (=> b!4535905 (=> (not res!1889824) (not e!2826445))))

(assert (=> b!4535905 (= res!1889824 (isDefined!8463 (getValueByKey!1137 (toList!4391 lt!1710716) key!3287)))))

(declare-fun b!4535906 () Bool)

(assert (=> b!4535906 (= e!2826450 (keys!17648 lt!1710716))))

(declare-fun b!4535907 () Bool)

(assert (=> b!4535907 (= e!2826446 e!2826448)))

(declare-fun c!774582 () Bool)

(assert (=> b!4535907 (= c!774582 call!316222)))

(declare-fun b!4535908 () Bool)

(declare-fun Unit!97782 () Unit!97630)

(assert (=> b!4535908 (= e!2826448 Unit!97782)))

(declare-fun b!4535909 () Bool)

(assert (=> b!4535909 (= e!2826450 (getKeysList!487 (toList!4391 lt!1710716)))))

(declare-fun b!4535910 () Bool)

(assert (=> b!4535910 (= e!2826445 (contains!13515 (keys!17648 lt!1710716) key!3287))))

(declare-fun b!4535911 () Bool)

(assert (=> b!4535911 (= e!2826449 (not (contains!13515 (keys!17648 lt!1710716) key!3287)))))

(assert (= (and d!1401036 c!774581) b!4535903))

(assert (= (and d!1401036 (not c!774581)) b!4535907))

(assert (= (and b!4535907 c!774582) b!4535904))

(assert (= (and b!4535907 (not c!774582)) b!4535908))

(assert (= (or b!4535903 b!4535907) bm!316217))

(assert (= (and bm!316217 c!774583) b!4535909))

(assert (= (and bm!316217 (not c!774583)) b!4535906))

(assert (= (and d!1401036 res!1889823) b!4535911))

(assert (= (and d!1401036 (not res!1889822)) b!4535905))

(assert (= (and b!4535905 res!1889824) b!4535910))

(assert (=> b!4535910 m!5297063))

(assert (=> b!4535910 m!5297063))

(declare-fun m!5298077 () Bool)

(assert (=> b!4535910 m!5298077))

(declare-fun m!5298079 () Bool)

(assert (=> b!4535904 m!5298079))

(declare-fun m!5298081 () Bool)

(assert (=> b!4535904 m!5298081))

(assert (=> b!4535906 m!5297063))

(assert (=> b!4535911 m!5297063))

(assert (=> b!4535911 m!5297063))

(assert (=> b!4535911 m!5298077))

(declare-fun m!5298083 () Bool)

(assert (=> b!4535905 m!5298083))

(assert (=> b!4535905 m!5298083))

(declare-fun m!5298085 () Bool)

(assert (=> b!4535905 m!5298085))

(declare-fun m!5298087 () Bool)

(assert (=> bm!316217 m!5298087))

(declare-fun m!5298089 () Bool)

(assert (=> b!4535909 m!5298089))

(declare-fun m!5298091 () Bool)

(assert (=> b!4535903 m!5298091))

(assert (=> b!4535903 m!5298083))

(assert (=> b!4535903 m!5298083))

(assert (=> b!4535903 m!5298085))

(declare-fun m!5298093 () Bool)

(assert (=> b!4535903 m!5298093))

(assert (=> d!1401036 m!5298079))

(assert (=> d!1400732 d!1401036))

(declare-fun bm!316243 () Bool)

(declare-fun call!316249 () (InoxSet tuple2!51202))

(declare-fun lt!1711165 () List!50856)

(assert (=> bm!316243 (= call!316249 (content!8420 lt!1711165))))

(declare-fun b!4536001 () Bool)

(declare-fun res!1889840 () Bool)

(declare-fun e!2826503 () Bool)

(assert (=> b!4536001 (=> (not res!1889840) (not e!2826503))))

(assert (=> b!4536001 (= res!1889840 (not (containsKey!1859 lt!1711165 key!3287)))))

(declare-fun b!4536003 () Bool)

(declare-fun e!2826505 () Bool)

(assert (=> b!4536003 (= e!2826503 e!2826505)))

(declare-fun c!774621 () Bool)

(assert (=> b!4536003 (= c!774621 (containsKey!1859 (toList!4391 lt!1710448) key!3287))))

(declare-fun b!4536004 () Bool)

(declare-fun e!2826500 () Unit!97630)

(declare-fun Unit!97783 () Unit!97630)

(assert (=> b!4536004 (= e!2826500 Unit!97783)))

(declare-fun lt!1711174 () Unit!97630)

(assert (=> b!4536004 (= lt!1711174 (lemmaInGetKeysListThenContainsKey!486 (t!357818 (toList!4391 lt!1710448)) (_1!28895 (h!56607 (toList!4391 lt!1710448)))))))

(declare-fun call!316250 () Bool)

(assert (=> b!4536004 call!316250))

(declare-fun lt!1711168 () Unit!97630)

(assert (=> b!4536004 (= lt!1711168 lt!1711174)))

(assert (=> b!4536004 false))

(declare-fun b!4536005 () Bool)

(declare-fun res!1889842 () Bool)

(assert (=> b!4536005 (=> (not res!1889842) (not e!2826503))))

(assert (=> b!4536005 (= res!1889842 (= (content!8421 (getKeysList!487 lt!1711165)) ((_ map and) (content!8421 (getKeysList!487 (toList!4391 lt!1710448))) ((_ map not) (store ((as const (Array K!12120 Bool)) false) key!3287 true)))))))

(declare-fun bm!316244 () Bool)

(declare-fun call!316251 () (InoxSet tuple2!51202))

(assert (=> bm!316244 (= call!316251 (content!8420 (toList!4391 lt!1710448)))))

(declare-fun b!4536006 () Bool)

(declare-fun lt!1711175 () Unit!97630)

(declare-fun e!2826507 () Unit!97630)

(assert (=> b!4536006 (= lt!1711175 e!2826507)))

(declare-fun c!774627 () Bool)

(declare-fun call!316252 () Bool)

(assert (=> b!4536006 (= c!774627 call!316252)))

(declare-fun lt!1711177 () Unit!97630)

(assert (=> b!4536006 (= lt!1711177 e!2826500)))

(declare-fun c!774622 () Bool)

(assert (=> b!4536006 (= c!774622 (contains!13515 (getKeysList!487 (t!357818 (toList!4391 lt!1710448))) (_1!28895 (h!56607 (toList!4391 lt!1710448)))))))

(declare-fun lt!1711176 () List!50856)

(declare-fun $colon$colon!961 (List!50856 tuple2!51202) List!50856)

(assert (=> b!4536006 (= lt!1711176 ($colon$colon!961 (removePresrvNoDuplicatedKeys!162 (t!357818 (toList!4391 lt!1710448)) key!3287) (h!56607 (toList!4391 lt!1710448))))))

(declare-fun e!2826502 () List!50856)

(assert (=> b!4536006 (= e!2826502 lt!1711176)))

(declare-fun bm!316245 () Bool)

(declare-fun call!316248 () (InoxSet tuple2!51202))

(assert (=> bm!316245 (= call!316248 (content!8420 (t!357818 (toList!4391 lt!1710448))))))

(declare-fun b!4536007 () Bool)

(declare-fun e!2826499 () List!50856)

(assert (=> b!4536007 (= e!2826499 (t!357818 (toList!4391 lt!1710448)))))

(declare-fun b!4536008 () Bool)

(assert (=> b!4536008 (= e!2826502 Nil!50732)))

(declare-fun b!4536009 () Bool)

(declare-fun call!316253 () (InoxSet tuple2!51202))

(assert (=> b!4536009 (= e!2826505 (= call!316249 call!316253))))

(declare-fun b!4536010 () Bool)

(declare-fun get!16670 (Option!11187) V!12366)

(assert (=> b!4536010 (= call!316248 ((_ map and) call!316251 ((_ map not) (store ((as const (Array tuple2!51202 Bool)) false) (tuple2!51203 key!3287 (get!16670 (getValueByKey!1137 (toList!4391 lt!1710448) key!3287))) true))))))

(declare-fun lt!1711179 () Unit!97630)

(declare-fun e!2826501 () Unit!97630)

(assert (=> b!4536010 (= lt!1711179 e!2826501)))

(declare-fun c!774625 () Bool)

(assert (=> b!4536010 (= c!774625 (contains!13517 (t!357818 (toList!4391 lt!1710448)) (tuple2!51203 key!3287 (get!16670 (getValueByKey!1137 (toList!4391 lt!1710448) key!3287)))))))

(declare-fun e!2826506 () Unit!97630)

(declare-fun Unit!97784 () Unit!97630)

(assert (=> b!4536010 (= e!2826506 Unit!97784)))

(declare-fun b!4536011 () Bool)

(declare-fun e!2826504 () List!50856)

(assert (=> b!4536011 (= e!2826504 e!2826502)))

(declare-fun c!774626 () Bool)

(assert (=> b!4536011 (= c!774626 (and ((_ is Cons!50732) (toList!4391 lt!1710448)) (not (= (_1!28895 (h!56607 (toList!4391 lt!1710448))) key!3287))))))

(declare-fun b!4536012 () Bool)

(assert (=> b!4536012 (= e!2826505 (= call!316249 ((_ map and) call!316253 ((_ map not) (store ((as const (Array tuple2!51202 Bool)) false) (tuple2!51203 key!3287 (get!16670 (getValueByKey!1137 (toList!4391 lt!1710448) key!3287))) true)))))))

(assert (=> b!4536012 (containsKey!1859 (toList!4391 lt!1710448) key!3287)))

(declare-fun lt!1711167 () Unit!97630)

(assert (=> b!4536012 (= lt!1711167 (lemmaContainsKeyImpliesGetValueByKeyDefined!1040 (toList!4391 lt!1710448) key!3287))))

(assert (=> b!4536012 (isDefined!8463 (getValueByKey!1137 (toList!4391 lt!1710448) key!3287))))

(declare-fun lt!1711170 () Unit!97630)

(assert (=> b!4536012 (= lt!1711170 lt!1711167)))

(declare-fun b!4536013 () Bool)

(declare-fun Unit!97785 () Unit!97630)

(assert (=> b!4536013 (= e!2826501 Unit!97785)))

(declare-fun b!4536014 () Bool)

(declare-fun Unit!97786 () Unit!97630)

(assert (=> b!4536014 (= e!2826501 Unit!97786)))

(declare-fun lt!1711164 () V!12366)

(assert (=> b!4536014 (= lt!1711164 (get!16670 (getValueByKey!1137 (toList!4391 lt!1710448) key!3287)))))

(declare-fun lt!1711166 () K!12120)

(assert (=> b!4536014 (= lt!1711166 key!3287)))

(declare-fun lt!1711172 () K!12120)

(assert (=> b!4536014 (= lt!1711172 key!3287)))

(declare-fun lt!1711171 () Unit!97630)

(declare-fun lemmaContainsTupleThenContainsKey!75 (List!50856 K!12120 V!12366) Unit!97630)

(assert (=> b!4536014 (= lt!1711171 (lemmaContainsTupleThenContainsKey!75 (t!357818 (toList!4391 lt!1710448)) lt!1711166 (get!16670 (getValueByKey!1137 (toList!4391 lt!1710448) key!3287))))))

(assert (=> b!4536014 call!316252))

(declare-fun lt!1711162 () Unit!97630)

(assert (=> b!4536014 (= lt!1711162 lt!1711171)))

(assert (=> b!4536014 false))

(declare-fun bm!316246 () Bool)

(declare-fun c!774624 () Bool)

(assert (=> bm!316246 (= call!316252 (containsKey!1859 e!2826499 (ite c!774624 lt!1711166 (_1!28895 (h!56607 (toList!4391 lt!1710448))))))))

(declare-fun c!774628 () Bool)

(assert (=> bm!316246 (= c!774628 c!774624)))

(declare-fun d!1401042 () Bool)

(assert (=> d!1401042 e!2826503))

(declare-fun res!1889841 () Bool)

(assert (=> d!1401042 (=> (not res!1889841) (not e!2826503))))

(assert (=> d!1401042 (= res!1889841 (invariantList!1039 lt!1711165))))

(assert (=> d!1401042 (= lt!1711165 e!2826504)))

(assert (=> d!1401042 (= c!774624 (and ((_ is Cons!50732) (toList!4391 lt!1710448)) (= (_1!28895 (h!56607 (toList!4391 lt!1710448))) key!3287)))))

(assert (=> d!1401042 (invariantList!1039 (toList!4391 lt!1710448))))

(assert (=> d!1401042 (= (removePresrvNoDuplicatedKeys!162 (toList!4391 lt!1710448) key!3287) lt!1711165)))

(declare-fun b!4536002 () Bool)

(declare-fun Unit!97787 () Unit!97630)

(assert (=> b!4536002 (= e!2826507 Unit!97787)))

(declare-fun b!4536015 () Bool)

(declare-fun Unit!97788 () Unit!97630)

(assert (=> b!4536015 (= e!2826507 Unit!97788)))

(declare-fun lt!1711169 () List!50856)

(assert (=> b!4536015 (= lt!1711169 (removePresrvNoDuplicatedKeys!162 (t!357818 (toList!4391 lt!1710448)) key!3287))))

(declare-fun lt!1711163 () Unit!97630)

(assert (=> b!4536015 (= lt!1711163 (lemmaInListThenGetKeysListContains!483 lt!1711169 (_1!28895 (h!56607 (toList!4391 lt!1710448)))))))

(assert (=> b!4536015 (contains!13515 (getKeysList!487 lt!1711169) (_1!28895 (h!56607 (toList!4391 lt!1710448))))))

(declare-fun lt!1711173 () Unit!97630)

(assert (=> b!4536015 (= lt!1711173 lt!1711163)))

(assert (=> b!4536015 false))

(declare-fun b!4536016 () Bool)

(assert (=> b!4536016 (= e!2826504 (t!357818 (toList!4391 lt!1710448)))))

(declare-fun c!774623 () Bool)

(assert (=> b!4536016 (= c!774623 call!316250)))

(declare-fun lt!1711178 () Unit!97630)

(assert (=> b!4536016 (= lt!1711178 e!2826506)))

(declare-fun bm!316247 () Bool)

(assert (=> bm!316247 (= call!316253 (content!8420 (toList!4391 lt!1710448)))))

(declare-fun b!4536017 () Bool)

(assert (=> b!4536017 (= e!2826499 (removePresrvNoDuplicatedKeys!162 (t!357818 (toList!4391 lt!1710448)) key!3287))))

(declare-fun b!4536018 () Bool)

(assert (=> b!4536018 (= call!316248 call!316251)))

(declare-fun Unit!97789 () Unit!97630)

(assert (=> b!4536018 (= e!2826506 Unit!97789)))

(declare-fun b!4536019 () Bool)

(declare-fun Unit!97790 () Unit!97630)

(assert (=> b!4536019 (= e!2826500 Unit!97790)))

(declare-fun bm!316248 () Bool)

(assert (=> bm!316248 (= call!316250 (containsKey!1859 (ite c!774624 (toList!4391 lt!1710448) (t!357818 (toList!4391 lt!1710448))) (ite c!774624 key!3287 (_1!28895 (h!56607 (toList!4391 lt!1710448))))))))

(assert (= (and d!1401042 c!774624) b!4536016))

(assert (= (and d!1401042 (not c!774624)) b!4536011))

(assert (= (and b!4536016 c!774623) b!4536010))

(assert (= (and b!4536016 (not c!774623)) b!4536018))

(assert (= (and b!4536010 c!774625) b!4536014))

(assert (= (and b!4536010 (not c!774625)) b!4536013))

(assert (= (or b!4536010 b!4536018) bm!316245))

(assert (= (or b!4536010 b!4536018) bm!316244))

(assert (= (and b!4536011 c!774626) b!4536006))

(assert (= (and b!4536011 (not c!774626)) b!4536008))

(assert (= (and b!4536006 c!774622) b!4536004))

(assert (= (and b!4536006 (not c!774622)) b!4536019))

(assert (= (and b!4536006 c!774627) b!4536015))

(assert (= (and b!4536006 (not c!774627)) b!4536002))

(assert (= (or b!4536016 b!4536004) bm!316248))

(assert (= (or b!4536014 b!4536006) bm!316246))

(assert (= (and bm!316246 c!774628) b!4536007))

(assert (= (and bm!316246 (not c!774628)) b!4536017))

(assert (= (and d!1401042 res!1889841) b!4536001))

(assert (= (and b!4536001 res!1889840) b!4536005))

(assert (= (and b!4536005 res!1889842) b!4536003))

(assert (= (and b!4536003 c!774621) b!4536012))

(assert (= (and b!4536003 (not c!774621)) b!4536009))

(assert (= (or b!4536012 b!4536009) bm!316243))

(assert (= (or b!4536012 b!4536009) bm!316247))

(declare-fun m!5298113 () Bool)

(assert (=> d!1401042 m!5298113))

(assert (=> d!1401042 m!5297697))

(declare-fun m!5298115 () Bool)

(assert (=> bm!316245 m!5298115))

(declare-fun m!5298117 () Bool)

(assert (=> bm!316248 m!5298117))

(declare-fun m!5298119 () Bool)

(assert (=> bm!316246 m!5298119))

(assert (=> b!4536014 m!5297321))

(assert (=> b!4536014 m!5297321))

(declare-fun m!5298121 () Bool)

(assert (=> b!4536014 m!5298121))

(assert (=> b!4536014 m!5298121))

(declare-fun m!5298123 () Bool)

(assert (=> b!4536014 m!5298123))

(declare-fun m!5298125 () Bool)

(assert (=> bm!316244 m!5298125))

(declare-fun m!5298127 () Bool)

(assert (=> bm!316243 m!5298127))

(assert (=> b!4536003 m!5297317))

(assert (=> b!4536010 m!5297321))

(assert (=> b!4536010 m!5297321))

(assert (=> b!4536010 m!5298121))

(declare-fun m!5298129 () Bool)

(assert (=> b!4536010 m!5298129))

(declare-fun m!5298131 () Bool)

(assert (=> b!4536010 m!5298131))

(assert (=> b!4536012 m!5297321))

(assert (=> b!4536012 m!5298121))

(assert (=> b!4536012 m!5297321))

(assert (=> b!4536012 m!5297323))

(assert (=> b!4536012 m!5298129))

(assert (=> b!4536012 m!5297317))

(assert (=> b!4536012 m!5297329))

(assert (=> b!4536012 m!5297321))

(declare-fun m!5298133 () Bool)

(assert (=> b!4536017 m!5298133))

(declare-fun m!5298135 () Bool)

(assert (=> b!4536004 m!5298135))

(declare-fun m!5298137 () Bool)

(assert (=> b!4536001 m!5298137))

(assert (=> b!4536005 m!5297327))

(declare-fun m!5298139 () Bool)

(assert (=> b!4536005 m!5298139))

(declare-fun m!5298141 () Bool)

(assert (=> b!4536005 m!5298141))

(assert (=> b!4536005 m!5298141))

(declare-fun m!5298143 () Bool)

(assert (=> b!4536005 m!5298143))

(assert (=> b!4536005 m!5296667))

(assert (=> b!4536005 m!5297327))

(declare-fun m!5298145 () Bool)

(assert (=> b!4536006 m!5298145))

(assert (=> b!4536006 m!5298145))

(declare-fun m!5298147 () Bool)

(assert (=> b!4536006 m!5298147))

(assert (=> b!4536006 m!5298133))

(assert (=> b!4536006 m!5298133))

(declare-fun m!5298149 () Bool)

(assert (=> b!4536006 m!5298149))

(assert (=> bm!316247 m!5298125))

(assert (=> b!4536015 m!5298133))

(declare-fun m!5298151 () Bool)

(assert (=> b!4536015 m!5298151))

(declare-fun m!5298153 () Bool)

(assert (=> b!4536015 m!5298153))

(assert (=> b!4536015 m!5298153))

(declare-fun m!5298155 () Bool)

(assert (=> b!4536015 m!5298155))

(assert (=> d!1400732 d!1401042))

(declare-fun d!1401046 () Bool)

(assert (=> d!1401046 (= (head!9468 (toList!4392 lt!1710440)) (h!56608 (toList!4392 lt!1710440)))))

(assert (=> d!1400730 d!1401046))

(declare-fun d!1401048 () Bool)

(assert (=> d!1401048 (= (isDefined!8462 (getValueByKey!1136 (toList!4392 lm!1477) lt!1710423)) (not (isEmpty!28736 (getValueByKey!1136 (toList!4392 lm!1477) lt!1710423))))))

(declare-fun bs!872062 () Bool)

(assert (= bs!872062 d!1401048))

(assert (=> bs!872062 m!5297497))

(declare-fun m!5298157 () Bool)

(assert (=> bs!872062 m!5298157))

(assert (=> b!4535593 d!1401048))

(declare-fun b!4536021 () Bool)

(declare-fun e!2826508 () Option!11186)

(declare-fun e!2826509 () Option!11186)

(assert (=> b!4536021 (= e!2826508 e!2826509)))

(declare-fun c!774630 () Bool)

(assert (=> b!4536021 (= c!774630 (and ((_ is Cons!50733) (toList!4392 lm!1477)) (not (= (_1!28896 (h!56608 (toList!4392 lm!1477))) lt!1710423))))))

(declare-fun b!4536020 () Bool)

(assert (=> b!4536020 (= e!2826508 (Some!11185 (_2!28896 (h!56608 (toList!4392 lm!1477)))))))

(declare-fun b!4536023 () Bool)

(assert (=> b!4536023 (= e!2826509 None!11185)))

(declare-fun d!1401050 () Bool)

(declare-fun c!774629 () Bool)

(assert (=> d!1401050 (= c!774629 (and ((_ is Cons!50733) (toList!4392 lm!1477)) (= (_1!28896 (h!56608 (toList!4392 lm!1477))) lt!1710423)))))

(assert (=> d!1401050 (= (getValueByKey!1136 (toList!4392 lm!1477) lt!1710423) e!2826508)))

(declare-fun b!4536022 () Bool)

(assert (=> b!4536022 (= e!2826509 (getValueByKey!1136 (t!357819 (toList!4392 lm!1477)) lt!1710423))))

(assert (= (and d!1401050 c!774629) b!4536020))

(assert (= (and d!1401050 (not c!774629)) b!4536021))

(assert (= (and b!4536021 c!774630) b!4536022))

(assert (= (and b!4536021 (not c!774630)) b!4536023))

(declare-fun m!5298159 () Bool)

(assert (=> b!4536022 m!5298159))

(assert (=> b!4535593 d!1401050))

(declare-fun d!1401052 () Bool)

(declare-fun lt!1711180 () Bool)

(assert (=> d!1401052 (= lt!1711180 (select (content!8425 (toList!4392 lt!1710762)) lt!1710425))))

(declare-fun e!2826510 () Bool)

(assert (=> d!1401052 (= lt!1711180 e!2826510)))

(declare-fun res!1889844 () Bool)

(assert (=> d!1401052 (=> (not res!1889844) (not e!2826510))))

(assert (=> d!1401052 (= res!1889844 ((_ is Cons!50733) (toList!4392 lt!1710762)))))

(assert (=> d!1401052 (= (contains!13511 (toList!4392 lt!1710762) lt!1710425) lt!1711180)))

(declare-fun b!4536024 () Bool)

(declare-fun e!2826511 () Bool)

(assert (=> b!4536024 (= e!2826510 e!2826511)))

(declare-fun res!1889843 () Bool)

(assert (=> b!4536024 (=> res!1889843 e!2826511)))

(assert (=> b!4536024 (= res!1889843 (= (h!56608 (toList!4392 lt!1710762)) lt!1710425))))

(declare-fun b!4536025 () Bool)

(assert (=> b!4536025 (= e!2826511 (contains!13511 (t!357819 (toList!4392 lt!1710762)) lt!1710425))))

(assert (= (and d!1401052 res!1889844) b!4536024))

(assert (= (and b!4536024 (not res!1889843)) b!4536025))

(declare-fun m!5298161 () Bool)

(assert (=> d!1401052 m!5298161))

(declare-fun m!5298163 () Bool)

(assert (=> d!1401052 m!5298163))

(declare-fun m!5298165 () Bool)

(assert (=> b!4536025 m!5298165))

(assert (=> b!4535456 d!1401052))

(declare-fun bs!872063 () Bool)

(declare-fun b!4536027 () Bool)

(assert (= bs!872063 (and b!4536027 b!4535656)))

(declare-fun lambda!175392 () Int)

(assert (=> bs!872063 (= (= (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (toList!4391 lt!1710447)) (= lambda!175392 lambda!175358))))

(declare-fun bs!872064 () Bool)

(assert (= bs!872064 (and b!4536027 b!4535682)))

(assert (=> bs!872064 (= (= (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (toList!4391 lt!1710876)) (= lambda!175392 lambda!175365))))

(declare-fun bs!872065 () Bool)

(assert (= bs!872065 (and b!4536027 b!4535697)))

(assert (=> bs!872065 (= (= (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448))) (= lambda!175392 lambda!175367))))

(declare-fun bs!872066 () Bool)

(assert (= bs!872066 (and b!4536027 b!4535702)))

(assert (=> bs!872066 (= (= (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (toList!4391 lt!1710451)) (= lambda!175392 lambda!175369))))

(assert (=> b!4536027 true))

(declare-fun bs!872067 () Bool)

(declare-fun b!4536028 () Bool)

(assert (= bs!872067 (and b!4536028 b!4535657)))

(declare-fun lambda!175393 () Int)

(assert (=> bs!872067 (= lambda!175393 lambda!175359)))

(declare-fun bs!872068 () Bool)

(assert (= bs!872068 (and b!4536028 b!4535683)))

(assert (=> bs!872068 (= lambda!175393 lambda!175366)))

(declare-fun bs!872069 () Bool)

(assert (= bs!872069 (and b!4536028 b!4535698)))

(assert (=> bs!872069 (= lambda!175393 lambda!175368)))

(declare-fun bs!872070 () Bool)

(assert (= bs!872070 (and b!4536028 b!4535703)))

(assert (=> bs!872070 (= lambda!175393 lambda!175370)))

(declare-fun d!1401054 () Bool)

(declare-fun e!2826512 () Bool)

(assert (=> d!1401054 e!2826512))

(declare-fun res!1889845 () Bool)

(assert (=> d!1401054 (=> (not res!1889845) (not e!2826512))))

(declare-fun lt!1711181 () List!50859)

(assert (=> d!1401054 (= res!1889845 (noDuplicate!759 lt!1711181))))

(assert (=> d!1401054 (= lt!1711181 (getKeysList!487 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))))))

(assert (=> d!1401054 (= (keys!17648 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) lt!1711181)))

(declare-fun b!4536026 () Bool)

(declare-fun res!1889847 () Bool)

(assert (=> b!4536026 (=> (not res!1889847) (not e!2826512))))

(assert (=> b!4536026 (= res!1889847 (= (length!374 lt!1711181) (length!375 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))))))))

(declare-fun res!1889846 () Bool)

(assert (=> b!4536027 (=> (not res!1889846) (not e!2826512))))

(assert (=> b!4536027 (= res!1889846 (forall!10332 lt!1711181 lambda!175392))))

(assert (=> b!4536028 (= e!2826512 (= (content!8421 lt!1711181) (content!8421 (map!11166 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) lambda!175393))))))

(assert (= (and d!1401054 res!1889845) b!4536026))

(assert (= (and b!4536026 res!1889847) b!4536027))

(assert (= (and b!4536027 res!1889846) b!4536028))

(declare-fun m!5298167 () Bool)

(assert (=> d!1401054 m!5298167))

(assert (=> d!1401054 m!5297301))

(declare-fun m!5298169 () Bool)

(assert (=> b!4536026 m!5298169))

(declare-fun m!5298171 () Bool)

(assert (=> b!4536026 m!5298171))

(declare-fun m!5298173 () Bool)

(assert (=> b!4536027 m!5298173))

(declare-fun m!5298175 () Bool)

(assert (=> b!4536028 m!5298175))

(declare-fun m!5298177 () Bool)

(assert (=> b!4536028 m!5298177))

(assert (=> b!4536028 m!5298177))

(declare-fun m!5298179 () Bool)

(assert (=> b!4536028 m!5298179))

(assert (=> b!4535499 d!1401054))

(declare-fun d!1401056 () Bool)

(declare-fun lt!1711200 () Bool)

(assert (=> d!1401056 (= lt!1711200 (select (content!8421 (keys!17648 lt!1710448)) key!3287))))

(declare-fun e!2826522 () Bool)

(assert (=> d!1401056 (= lt!1711200 e!2826522)))

(declare-fun res!1889852 () Bool)

(assert (=> d!1401056 (=> (not res!1889852) (not e!2826522))))

(assert (=> d!1401056 (= res!1889852 ((_ is Cons!50735) (keys!17648 lt!1710448)))))

(assert (=> d!1401056 (= (contains!13515 (keys!17648 lt!1710448) key!3287) lt!1711200)))

(declare-fun b!4536048 () Bool)

(declare-fun e!2826523 () Bool)

(assert (=> b!4536048 (= e!2826522 e!2826523)))

(declare-fun res!1889851 () Bool)

(assert (=> b!4536048 (=> res!1889851 e!2826523)))

(assert (=> b!4536048 (= res!1889851 (= (h!56612 (keys!17648 lt!1710448)) key!3287))))

(declare-fun b!4536049 () Bool)

(assert (=> b!4536049 (= e!2826523 (contains!13515 (t!357821 (keys!17648 lt!1710448)) key!3287))))

(assert (= (and d!1401056 res!1889852) b!4536048))

(assert (= (and b!4536048 (not res!1889851)) b!4536049))

(assert (=> d!1401056 m!5297061))

(assert (=> d!1401056 m!5297067))

(declare-fun m!5298181 () Bool)

(assert (=> d!1401056 m!5298181))

(declare-fun m!5298183 () Bool)

(assert (=> b!4536049 m!5298183))

(assert (=> b!4535515 d!1401056))

(declare-fun bs!872071 () Bool)

(declare-fun b!4536051 () Bool)

(assert (= bs!872071 (and b!4536051 b!4536027)))

(declare-fun lambda!175394 () Int)

(assert (=> bs!872071 (= (= (toList!4391 lt!1710448) (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (= lambda!175394 lambda!175392))))

(declare-fun bs!872072 () Bool)

(assert (= bs!872072 (and b!4536051 b!4535656)))

(assert (=> bs!872072 (= (= (toList!4391 lt!1710448) (toList!4391 lt!1710447)) (= lambda!175394 lambda!175358))))

(declare-fun bs!872073 () Bool)

(assert (= bs!872073 (and b!4536051 b!4535697)))

(assert (=> bs!872073 (= (= (toList!4391 lt!1710448) (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448))) (= lambda!175394 lambda!175367))))

(declare-fun bs!872074 () Bool)

(assert (= bs!872074 (and b!4536051 b!4535702)))

(assert (=> bs!872074 (= (= (toList!4391 lt!1710448) (toList!4391 lt!1710451)) (= lambda!175394 lambda!175369))))

(declare-fun bs!872075 () Bool)

(assert (= bs!872075 (and b!4536051 b!4535682)))

(assert (=> bs!872075 (= (= (toList!4391 lt!1710448) (toList!4391 lt!1710876)) (= lambda!175394 lambda!175365))))

(assert (=> b!4536051 true))

(declare-fun bs!872076 () Bool)

(declare-fun b!4536052 () Bool)

(assert (= bs!872076 (and b!4536052 b!4535657)))

(declare-fun lambda!175395 () Int)

(assert (=> bs!872076 (= lambda!175395 lambda!175359)))

(declare-fun bs!872077 () Bool)

(assert (= bs!872077 (and b!4536052 b!4535698)))

(assert (=> bs!872077 (= lambda!175395 lambda!175368)))

(declare-fun bs!872078 () Bool)

(assert (= bs!872078 (and b!4536052 b!4535683)))

(assert (=> bs!872078 (= lambda!175395 lambda!175366)))

(declare-fun bs!872079 () Bool)

(assert (= bs!872079 (and b!4536052 b!4536028)))

(assert (=> bs!872079 (= lambda!175395 lambda!175393)))

(declare-fun bs!872080 () Bool)

(assert (= bs!872080 (and b!4536052 b!4535703)))

(assert (=> bs!872080 (= lambda!175395 lambda!175370)))

(declare-fun d!1401058 () Bool)

(declare-fun e!2826524 () Bool)

(assert (=> d!1401058 e!2826524))

(declare-fun res!1889853 () Bool)

(assert (=> d!1401058 (=> (not res!1889853) (not e!2826524))))

(declare-fun lt!1711201 () List!50859)

(assert (=> d!1401058 (= res!1889853 (noDuplicate!759 lt!1711201))))

(assert (=> d!1401058 (= lt!1711201 (getKeysList!487 (toList!4391 lt!1710448)))))

(assert (=> d!1401058 (= (keys!17648 lt!1710448) lt!1711201)))

(declare-fun b!4536050 () Bool)

(declare-fun res!1889855 () Bool)

(assert (=> b!4536050 (=> (not res!1889855) (not e!2826524))))

(assert (=> b!4536050 (= res!1889855 (= (length!374 lt!1711201) (length!375 (toList!4391 lt!1710448))))))

(declare-fun res!1889854 () Bool)

(assert (=> b!4536051 (=> (not res!1889854) (not e!2826524))))

(assert (=> b!4536051 (= res!1889854 (forall!10332 lt!1711201 lambda!175394))))

(assert (=> b!4536052 (= e!2826524 (= (content!8421 lt!1711201) (content!8421 (map!11166 (toList!4391 lt!1710448) lambda!175395))))))

(assert (= (and d!1401058 res!1889853) b!4536050))

(assert (= (and b!4536050 res!1889855) b!4536051))

(assert (= (and b!4536051 res!1889854) b!4536052))

(declare-fun m!5298205 () Bool)

(assert (=> d!1401058 m!5298205))

(assert (=> d!1401058 m!5297327))

(declare-fun m!5298209 () Bool)

(assert (=> b!4536050 m!5298209))

(declare-fun m!5298213 () Bool)

(assert (=> b!4536050 m!5298213))

(declare-fun m!5298217 () Bool)

(assert (=> b!4536051 m!5298217))

(declare-fun m!5298219 () Bool)

(assert (=> b!4536052 m!5298219))

(declare-fun m!5298223 () Bool)

(assert (=> b!4536052 m!5298223))

(assert (=> b!4536052 m!5298223))

(declare-fun m!5298227 () Bool)

(assert (=> b!4536052 m!5298227))

(assert (=> b!4535515 d!1401058))

(declare-fun d!1401060 () Bool)

(assert (=> d!1401060 (= (isDefined!8463 (getValueByKey!1137 (toList!4391 lt!1710447) key!3287)) (not (isEmpty!28738 (getValueByKey!1137 (toList!4391 lt!1710447) key!3287))))))

(declare-fun bs!872081 () Bool)

(assert (= bs!872081 d!1401060))

(assert (=> bs!872081 m!5296953))

(declare-fun m!5298235 () Bool)

(assert (=> bs!872081 m!5298235))

(assert (=> b!4535357 d!1401060))

(declare-fun b!4536055 () Bool)

(declare-fun e!2826526 () Option!11187)

(assert (=> b!4536055 (= e!2826526 (getValueByKey!1137 (t!357818 (toList!4391 lt!1710447)) key!3287))))

(declare-fun b!4536053 () Bool)

(declare-fun e!2826525 () Option!11187)

(assert (=> b!4536053 (= e!2826525 (Some!11186 (_2!28895 (h!56607 (toList!4391 lt!1710447)))))))

(declare-fun d!1401062 () Bool)

(declare-fun c!774639 () Bool)

(assert (=> d!1401062 (= c!774639 (and ((_ is Cons!50732) (toList!4391 lt!1710447)) (= (_1!28895 (h!56607 (toList!4391 lt!1710447))) key!3287)))))

(assert (=> d!1401062 (= (getValueByKey!1137 (toList!4391 lt!1710447) key!3287) e!2826525)))

(declare-fun b!4536054 () Bool)

(assert (=> b!4536054 (= e!2826525 e!2826526)))

(declare-fun c!774640 () Bool)

(assert (=> b!4536054 (= c!774640 (and ((_ is Cons!50732) (toList!4391 lt!1710447)) (not (= (_1!28895 (h!56607 (toList!4391 lt!1710447))) key!3287))))))

(declare-fun b!4536056 () Bool)

(assert (=> b!4536056 (= e!2826526 None!11186)))

(assert (= (and d!1401062 c!774639) b!4536053))

(assert (= (and d!1401062 (not c!774639)) b!4536054))

(assert (= (and b!4536054 c!774640) b!4536055))

(assert (= (and b!4536054 (not c!774640)) b!4536056))

(declare-fun m!5298245 () Bool)

(assert (=> b!4536055 m!5298245))

(assert (=> b!4535357 d!1401062))

(declare-fun d!1401066 () Bool)

(declare-fun res!1889856 () Bool)

(declare-fun e!2826527 () Bool)

(assert (=> d!1401066 (=> res!1889856 e!2826527)))

(assert (=> d!1401066 (= res!1889856 ((_ is Nil!50732) (toList!4391 lt!1710429)))))

(assert (=> d!1401066 (= (forall!10330 (toList!4391 lt!1710429) (ite c!774509 lambda!175339 lambda!175341)) e!2826527)))

(declare-fun b!4536057 () Bool)

(declare-fun e!2826528 () Bool)

(assert (=> b!4536057 (= e!2826527 e!2826528)))

(declare-fun res!1889857 () Bool)

(assert (=> b!4536057 (=> (not res!1889857) (not e!2826528))))

(assert (=> b!4536057 (= res!1889857 (dynLambda!21205 (ite c!774509 lambda!175339 lambda!175341) (h!56607 (toList!4391 lt!1710429))))))

(declare-fun b!4536058 () Bool)

(assert (=> b!4536058 (= e!2826528 (forall!10330 (t!357818 (toList!4391 lt!1710429)) (ite c!774509 lambda!175339 lambda!175341)))))

(assert (= (and d!1401066 (not res!1889856)) b!4536057))

(assert (= (and b!4536057 res!1889857) b!4536058))

(declare-fun b_lambda!157265 () Bool)

(assert (=> (not b_lambda!157265) (not b!4536057)))

(declare-fun m!5298247 () Bool)

(assert (=> b!4536057 m!5298247))

(declare-fun m!5298249 () Bool)

(assert (=> b!4536058 m!5298249))

(assert (=> bm!316192 d!1401066))

(declare-fun d!1401068 () Bool)

(declare-fun c!774643 () Bool)

(assert (=> d!1401068 (= c!774643 ((_ is Nil!50732) (toList!4391 lt!1710443)))))

(declare-fun e!2826531 () (InoxSet tuple2!51202))

(assert (=> d!1401068 (= (content!8420 (toList!4391 lt!1710443)) e!2826531)))

(declare-fun b!4536063 () Bool)

(assert (=> b!4536063 (= e!2826531 ((as const (Array tuple2!51202 Bool)) false))))

(declare-fun b!4536064 () Bool)

(assert (=> b!4536064 (= e!2826531 ((_ map or) (store ((as const (Array tuple2!51202 Bool)) false) (h!56607 (toList!4391 lt!1710443)) true) (content!8420 (t!357818 (toList!4391 lt!1710443)))))))

(assert (= (and d!1401068 c!774643) b!4536063))

(assert (= (and d!1401068 (not c!774643)) b!4536064))

(declare-fun m!5298251 () Bool)

(assert (=> b!4536064 m!5298251))

(declare-fun m!5298253 () Bool)

(assert (=> b!4536064 m!5298253))

(assert (=> d!1400774 d!1401068))

(declare-fun d!1401070 () Bool)

(declare-fun c!774644 () Bool)

(assert (=> d!1401070 (= c!774644 ((_ is Nil!50732) (toList!4391 lt!1710447)))))

(declare-fun e!2826532 () (InoxSet tuple2!51202))

(assert (=> d!1401070 (= (content!8420 (toList!4391 lt!1710447)) e!2826532)))

(declare-fun b!4536065 () Bool)

(assert (=> b!4536065 (= e!2826532 ((as const (Array tuple2!51202 Bool)) false))))

(declare-fun b!4536066 () Bool)

(assert (=> b!4536066 (= e!2826532 ((_ map or) (store ((as const (Array tuple2!51202 Bool)) false) (h!56607 (toList!4391 lt!1710447)) true) (content!8420 (t!357818 (toList!4391 lt!1710447)))))))

(assert (= (and d!1401070 c!774644) b!4536065))

(assert (= (and d!1401070 (not c!774644)) b!4536066))

(declare-fun m!5298255 () Bool)

(assert (=> b!4536066 m!5298255))

(declare-fun m!5298257 () Bool)

(assert (=> b!4536066 m!5298257))

(assert (=> d!1400774 d!1401070))

(declare-fun d!1401072 () Bool)

(declare-fun c!774645 () Bool)

(assert (=> d!1401072 (= c!774645 ((_ is Nil!50732) (toList!4391 lt!1710430)))))

(declare-fun e!2826533 () (InoxSet tuple2!51202))

(assert (=> d!1401072 (= (content!8420 (toList!4391 lt!1710430)) e!2826533)))

(declare-fun b!4536067 () Bool)

(assert (=> b!4536067 (= e!2826533 ((as const (Array tuple2!51202 Bool)) false))))

(declare-fun b!4536068 () Bool)

(assert (=> b!4536068 (= e!2826533 ((_ map or) (store ((as const (Array tuple2!51202 Bool)) false) (h!56607 (toList!4391 lt!1710430)) true) (content!8420 (t!357818 (toList!4391 lt!1710430)))))))

(assert (= (and d!1401072 c!774645) b!4536067))

(assert (= (and d!1401072 (not c!774645)) b!4536068))

(declare-fun m!5298259 () Bool)

(assert (=> b!4536068 m!5298259))

(declare-fun m!5298261 () Bool)

(assert (=> b!4536068 m!5298261))

(assert (=> d!1400814 d!1401072))

(assert (=> d!1400814 d!1400990))

(declare-fun d!1401074 () Bool)

(declare-fun res!1889859 () Bool)

(declare-fun e!2826537 () Bool)

(assert (=> d!1401074 (=> res!1889859 e!2826537)))

(declare-fun e!2826535 () Bool)

(assert (=> d!1401074 (= res!1889859 e!2826535)))

(declare-fun res!1889860 () Bool)

(assert (=> d!1401074 (=> (not res!1889860) (not e!2826535))))

(assert (=> d!1401074 (= res!1889860 ((_ is Cons!50733) (t!357819 (toList!4392 lt!1710421))))))

(assert (=> d!1401074 (= (containsKeyBiggerList!172 (t!357819 (toList!4392 lt!1710421)) key!3287) e!2826537)))

(declare-fun b!4536071 () Bool)

(assert (=> b!4536071 (= e!2826535 (containsKey!1856 (_2!28896 (h!56608 (t!357819 (toList!4392 lt!1710421)))) key!3287))))

(declare-fun b!4536072 () Bool)

(declare-fun e!2826536 () Bool)

(assert (=> b!4536072 (= e!2826537 e!2826536)))

(declare-fun res!1889858 () Bool)

(assert (=> b!4536072 (=> (not res!1889858) (not e!2826536))))

(assert (=> b!4536072 (= res!1889858 ((_ is Cons!50733) (t!357819 (toList!4392 lt!1710421))))))

(declare-fun b!4536073 () Bool)

(assert (=> b!4536073 (= e!2826536 (containsKeyBiggerList!172 (t!357819 (t!357819 (toList!4392 lt!1710421))) key!3287))))

(assert (= (and d!1401074 res!1889860) b!4536071))

(assert (= (and d!1401074 (not res!1889859)) b!4536072))

(assert (= (and b!4536072 res!1889858) b!4536073))

(declare-fun m!5298267 () Bool)

(assert (=> b!4536071 m!5298267))

(declare-fun m!5298269 () Bool)

(assert (=> b!4536073 m!5298269))

(assert (=> b!4535493 d!1401074))

(declare-fun b!4536076 () Bool)

(declare-fun e!2826540 () Bool)

(declare-fun lt!1711202 () Option!11183)

(assert (=> b!4536076 (= e!2826540 (contains!13517 (t!357818 (_2!28896 lt!1710445)) (get!16666 lt!1711202)))))

(declare-fun b!4536078 () Bool)

(declare-fun e!2826543 () Option!11183)

(declare-fun e!2826541 () Option!11183)

(assert (=> b!4536078 (= e!2826543 e!2826541)))

(declare-fun c!774648 () Bool)

(assert (=> b!4536078 (= c!774648 ((_ is Cons!50732) (t!357818 (_2!28896 lt!1710445))))))

(declare-fun b!4536080 () Bool)

(declare-fun res!1889862 () Bool)

(assert (=> b!4536080 (=> (not res!1889862) (not e!2826540))))

(assert (=> b!4536080 (= res!1889862 (= (_1!28895 (get!16666 lt!1711202)) key!3287))))

(declare-fun b!4536081 () Bool)

(assert (=> b!4536081 (= e!2826541 (getPair!208 (t!357818 (t!357818 (_2!28896 lt!1710445))) key!3287))))

(declare-fun b!4536082 () Bool)

(assert (=> b!4536082 (= e!2826543 (Some!11182 (h!56607 (t!357818 (_2!28896 lt!1710445)))))))

(declare-fun b!4536083 () Bool)

(declare-fun e!2826539 () Bool)

(assert (=> b!4536083 (= e!2826539 (not (containsKey!1856 (t!357818 (_2!28896 lt!1710445)) key!3287)))))

(declare-fun b!4536084 () Bool)

(assert (=> b!4536084 (= e!2826541 None!11182)))

(declare-fun d!1401078 () Bool)

(declare-fun e!2826542 () Bool)

(assert (=> d!1401078 e!2826542))

(declare-fun res!1889861 () Bool)

(assert (=> d!1401078 (=> res!1889861 e!2826542)))

(assert (=> d!1401078 (= res!1889861 e!2826539)))

(declare-fun res!1889864 () Bool)

(assert (=> d!1401078 (=> (not res!1889864) (not e!2826539))))

(assert (=> d!1401078 (= res!1889864 (isEmpty!28735 lt!1711202))))

(assert (=> d!1401078 (= lt!1711202 e!2826543)))

(declare-fun c!774649 () Bool)

(assert (=> d!1401078 (= c!774649 (and ((_ is Cons!50732) (t!357818 (_2!28896 lt!1710445))) (= (_1!28895 (h!56607 (t!357818 (_2!28896 lt!1710445)))) key!3287)))))

(assert (=> d!1401078 (noDuplicateKeys!1192 (t!357818 (_2!28896 lt!1710445)))))

(assert (=> d!1401078 (= (getPair!208 (t!357818 (_2!28896 lt!1710445)) key!3287) lt!1711202)))

(declare-fun b!4536085 () Bool)

(assert (=> b!4536085 (= e!2826542 e!2826540)))

(declare-fun res!1889863 () Bool)

(assert (=> b!4536085 (=> (not res!1889863) (not e!2826540))))

(assert (=> b!4536085 (= res!1889863 (isDefined!8466 lt!1711202))))

(assert (= (and d!1401078 c!774649) b!4536082))

(assert (= (and d!1401078 (not c!774649)) b!4536078))

(assert (= (and b!4536078 c!774648) b!4536081))

(assert (= (and b!4536078 (not c!774648)) b!4536084))

(assert (= (and d!1401078 res!1889864) b!4536083))

(assert (= (and d!1401078 (not res!1889861)) b!4536085))

(assert (= (and b!4536085 res!1889863) b!4536080))

(assert (= (and b!4536080 res!1889862) b!4536076))

(declare-fun m!5298283 () Bool)

(assert (=> b!4536076 m!5298283))

(assert (=> b!4536076 m!5298283))

(declare-fun m!5298285 () Bool)

(assert (=> b!4536076 m!5298285))

(declare-fun m!5298287 () Bool)

(assert (=> d!1401078 m!5298287))

(assert (=> d!1401078 m!5297025))

(declare-fun m!5298289 () Bool)

(assert (=> b!4536085 m!5298289))

(assert (=> b!4536080 m!5298283))

(assert (=> b!4536083 m!5296655))

(declare-fun m!5298291 () Bool)

(assert (=> b!4536081 m!5298291))

(assert (=> b!4535613 d!1401078))

(declare-fun d!1401086 () Bool)

(declare-fun res!1889865 () Bool)

(declare-fun e!2826546 () Bool)

(assert (=> d!1401086 (=> res!1889865 e!2826546)))

(assert (=> d!1401086 (= res!1889865 ((_ is Nil!50732) (toList!4391 lt!1710448)))))

(assert (=> d!1401086 (= (forall!10330 (toList!4391 lt!1710448) (ite c!774458 lambda!175265 lambda!175267)) e!2826546)))

(declare-fun b!4536088 () Bool)

(declare-fun e!2826547 () Bool)

(assert (=> b!4536088 (= e!2826546 e!2826547)))

(declare-fun res!1889866 () Bool)

(assert (=> b!4536088 (=> (not res!1889866) (not e!2826547))))

(assert (=> b!4536088 (= res!1889866 (dynLambda!21205 (ite c!774458 lambda!175265 lambda!175267) (h!56607 (toList!4391 lt!1710448))))))

(declare-fun b!4536089 () Bool)

(assert (=> b!4536089 (= e!2826547 (forall!10330 (t!357818 (toList!4391 lt!1710448)) (ite c!774458 lambda!175265 lambda!175267)))))

(assert (= (and d!1401086 (not res!1889865)) b!4536088))

(assert (= (and b!4536088 res!1889866) b!4536089))

(declare-fun b_lambda!157267 () Bool)

(assert (=> (not b_lambda!157267) (not b!4536088)))

(declare-fun m!5298295 () Bool)

(assert (=> b!4536088 m!5298295))

(declare-fun m!5298297 () Bool)

(assert (=> b!4536089 m!5298297))

(assert (=> bm!316168 d!1401086))

(declare-fun d!1401092 () Bool)

(declare-fun res!1889871 () Bool)

(declare-fun e!2826551 () Bool)

(assert (=> d!1401092 (=> res!1889871 e!2826551)))

(assert (=> d!1401092 (= res!1889871 (and ((_ is Cons!50732) (_2!28896 (h!56608 (t!357819 (toList!4392 lm!1477))))) (= (_1!28895 (h!56607 (_2!28896 (h!56608 (t!357819 (toList!4392 lm!1477)))))) key!3287)))))

(assert (=> d!1401092 (= (containsKey!1856 (_2!28896 (h!56608 (t!357819 (toList!4392 lm!1477)))) key!3287) e!2826551)))

(declare-fun b!4536094 () Bool)

(declare-fun e!2826553 () Bool)

(assert (=> b!4536094 (= e!2826551 e!2826553)))

(declare-fun res!1889872 () Bool)

(assert (=> b!4536094 (=> (not res!1889872) (not e!2826553))))

(assert (=> b!4536094 (= res!1889872 ((_ is Cons!50732) (_2!28896 (h!56608 (t!357819 (toList!4392 lm!1477))))))))

(declare-fun b!4536095 () Bool)

(assert (=> b!4536095 (= e!2826553 (containsKey!1856 (t!357818 (_2!28896 (h!56608 (t!357819 (toList!4392 lm!1477))))) key!3287))))

(assert (= (and d!1401092 (not res!1889871)) b!4536094))

(assert (= (and b!4536094 res!1889872) b!4536095))

(declare-fun m!5298301 () Bool)

(assert (=> b!4536095 m!5298301))

(assert (=> b!4535488 d!1401092))

(declare-fun d!1401096 () Bool)

(declare-fun lt!1711204 () Bool)

(assert (=> d!1401096 (= lt!1711204 (select (content!8425 (toList!4392 lt!1710926)) lt!1710445))))

(declare-fun e!2826554 () Bool)

(assert (=> d!1401096 (= lt!1711204 e!2826554)))

(declare-fun res!1889874 () Bool)

(assert (=> d!1401096 (=> (not res!1889874) (not e!2826554))))

(assert (=> d!1401096 (= res!1889874 ((_ is Cons!50733) (toList!4392 lt!1710926)))))

(assert (=> d!1401096 (= (contains!13511 (toList!4392 lt!1710926) lt!1710445) lt!1711204)))

(declare-fun b!4536096 () Bool)

(declare-fun e!2826555 () Bool)

(assert (=> b!4536096 (= e!2826554 e!2826555)))

(declare-fun res!1889873 () Bool)

(assert (=> b!4536096 (=> res!1889873 e!2826555)))

(assert (=> b!4536096 (= res!1889873 (= (h!56608 (toList!4392 lt!1710926)) lt!1710445))))

(declare-fun b!4536097 () Bool)

(assert (=> b!4536097 (= e!2826555 (contains!13511 (t!357819 (toList!4392 lt!1710926)) lt!1710445))))

(assert (= (and d!1401096 res!1889874) b!4536096))

(assert (= (and b!4536096 (not res!1889873)) b!4536097))

(declare-fun m!5298309 () Bool)

(assert (=> d!1401096 m!5298309))

(declare-fun m!5298311 () Bool)

(assert (=> d!1401096 m!5298311))

(declare-fun m!5298313 () Bool)

(assert (=> b!4536097 m!5298313))

(assert (=> b!4535632 d!1401096))

(declare-fun d!1401100 () Bool)

(declare-fun res!1889877 () Bool)

(declare-fun e!2826558 () Bool)

(assert (=> d!1401100 (=> res!1889877 e!2826558)))

(assert (=> d!1401100 (= res!1889877 ((_ is Nil!50732) (ite c!774524 (toList!4391 lt!1710415) (_2!28896 lt!1710445))))))

(assert (=> d!1401100 (= (forall!10330 (ite c!774524 (toList!4391 lt!1710415) (_2!28896 lt!1710445)) (ite c!774524 lambda!175349 lambda!175351)) e!2826558)))

(declare-fun b!4536100 () Bool)

(declare-fun e!2826559 () Bool)

(assert (=> b!4536100 (= e!2826558 e!2826559)))

(declare-fun res!1889878 () Bool)

(assert (=> b!4536100 (=> (not res!1889878) (not e!2826559))))

(assert (=> b!4536100 (= res!1889878 (dynLambda!21205 (ite c!774524 lambda!175349 lambda!175351) (h!56607 (ite c!774524 (toList!4391 lt!1710415) (_2!28896 lt!1710445)))))))

(declare-fun b!4536101 () Bool)

(assert (=> b!4536101 (= e!2826559 (forall!10330 (t!357818 (ite c!774524 (toList!4391 lt!1710415) (_2!28896 lt!1710445))) (ite c!774524 lambda!175349 lambda!175351)))))

(assert (= (and d!1401100 (not res!1889877)) b!4536100))

(assert (= (and b!4536100 res!1889878) b!4536101))

(declare-fun b_lambda!157269 () Bool)

(assert (=> (not b_lambda!157269) (not b!4536100)))

(declare-fun m!5298319 () Bool)

(assert (=> b!4536100 m!5298319))

(declare-fun m!5298321 () Bool)

(assert (=> b!4536101 m!5298321))

(assert (=> bm!316196 d!1401100))

(declare-fun d!1401104 () Bool)

(declare-fun c!774652 () Bool)

(assert (=> d!1401104 (= c!774652 ((_ is Nil!50735) (keys!17648 lt!1710448)))))

(declare-fun e!2826561 () (InoxSet K!12120))

(assert (=> d!1401104 (= (content!8421 (keys!17648 lt!1710448)) e!2826561)))

(declare-fun b!4536105 () Bool)

(assert (=> b!4536105 (= e!2826561 ((as const (Array K!12120 Bool)) false))))

(declare-fun b!4536106 () Bool)

(assert (=> b!4536106 (= e!2826561 ((_ map or) (store ((as const (Array K!12120 Bool)) false) (h!56612 (keys!17648 lt!1710448)) true) (content!8421 (t!357821 (keys!17648 lt!1710448)))))))

(assert (= (and d!1401104 c!774652) b!4536105))

(assert (= (and d!1401104 (not c!774652)) b!4536106))

(declare-fun m!5298335 () Bool)

(assert (=> b!4536106 m!5298335))

(declare-fun m!5298337 () Bool)

(assert (=> b!4536106 m!5298337))

(assert (=> b!4535423 d!1401104))

(assert (=> b!4535423 d!1401058))

(declare-fun d!1401106 () Bool)

(declare-fun c!774653 () Bool)

(assert (=> d!1401106 (= c!774653 ((_ is Nil!50735) (keys!17648 lt!1710716)))))

(declare-fun e!2826562 () (InoxSet K!12120))

(assert (=> d!1401106 (= (content!8421 (keys!17648 lt!1710716)) e!2826562)))

(declare-fun b!4536107 () Bool)

(assert (=> b!4536107 (= e!2826562 ((as const (Array K!12120 Bool)) false))))

(declare-fun b!4536108 () Bool)

(assert (=> b!4536108 (= e!2826562 ((_ map or) (store ((as const (Array K!12120 Bool)) false) (h!56612 (keys!17648 lt!1710716)) true) (content!8421 (t!357821 (keys!17648 lt!1710716)))))))

(assert (= (and d!1401106 c!774653) b!4536107))

(assert (= (and d!1401106 (not c!774653)) b!4536108))

(declare-fun m!5298341 () Bool)

(assert (=> b!4536108 m!5298341))

(declare-fun m!5298343 () Bool)

(assert (=> b!4536108 m!5298343))

(assert (=> b!4535423 d!1401106))

(declare-fun bs!872085 () Bool)

(declare-fun b!4536110 () Bool)

(assert (= bs!872085 (and b!4536110 b!4536027)))

(declare-fun lambda!175398 () Int)

(assert (=> bs!872085 (= (= (toList!4391 lt!1710716) (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (= lambda!175398 lambda!175392))))

(declare-fun bs!872086 () Bool)

(assert (= bs!872086 (and b!4536110 b!4535656)))

(assert (=> bs!872086 (= (= (toList!4391 lt!1710716) (toList!4391 lt!1710447)) (= lambda!175398 lambda!175358))))

(declare-fun bs!872087 () Bool)

(assert (= bs!872087 (and b!4536110 b!4536051)))

(assert (=> bs!872087 (= (= (toList!4391 lt!1710716) (toList!4391 lt!1710448)) (= lambda!175398 lambda!175394))))

(declare-fun bs!872088 () Bool)

(assert (= bs!872088 (and b!4536110 b!4535697)))

(assert (=> bs!872088 (= (= (toList!4391 lt!1710716) (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448))) (= lambda!175398 lambda!175367))))

(declare-fun bs!872089 () Bool)

(assert (= bs!872089 (and b!4536110 b!4535702)))

(assert (=> bs!872089 (= (= (toList!4391 lt!1710716) (toList!4391 lt!1710451)) (= lambda!175398 lambda!175369))))

(declare-fun bs!872090 () Bool)

(assert (= bs!872090 (and b!4536110 b!4535682)))

(assert (=> bs!872090 (= (= (toList!4391 lt!1710716) (toList!4391 lt!1710876)) (= lambda!175398 lambda!175365))))

(assert (=> b!4536110 true))

(declare-fun bs!872091 () Bool)

(declare-fun b!4536111 () Bool)

(assert (= bs!872091 (and b!4536111 b!4535657)))

(declare-fun lambda!175399 () Int)

(assert (=> bs!872091 (= lambda!175399 lambda!175359)))

(declare-fun bs!872092 () Bool)

(assert (= bs!872092 (and b!4536111 b!4535698)))

(assert (=> bs!872092 (= lambda!175399 lambda!175368)))

(declare-fun bs!872093 () Bool)

(assert (= bs!872093 (and b!4536111 b!4535683)))

(assert (=> bs!872093 (= lambda!175399 lambda!175366)))

(declare-fun bs!872094 () Bool)

(assert (= bs!872094 (and b!4536111 b!4536028)))

(assert (=> bs!872094 (= lambda!175399 lambda!175393)))

(declare-fun bs!872095 () Bool)

(assert (= bs!872095 (and b!4536111 b!4536052)))

(assert (=> bs!872095 (= lambda!175399 lambda!175395)))

(declare-fun bs!872096 () Bool)

(assert (= bs!872096 (and b!4536111 b!4535703)))

(assert (=> bs!872096 (= lambda!175399 lambda!175370)))

(declare-fun d!1401110 () Bool)

(declare-fun e!2826563 () Bool)

(assert (=> d!1401110 e!2826563))

(declare-fun res!1889882 () Bool)

(assert (=> d!1401110 (=> (not res!1889882) (not e!2826563))))

(declare-fun lt!1711207 () List!50859)

(assert (=> d!1401110 (= res!1889882 (noDuplicate!759 lt!1711207))))

(assert (=> d!1401110 (= lt!1711207 (getKeysList!487 (toList!4391 lt!1710716)))))

(assert (=> d!1401110 (= (keys!17648 lt!1710716) lt!1711207)))

(declare-fun b!4536109 () Bool)

(declare-fun res!1889884 () Bool)

(assert (=> b!4536109 (=> (not res!1889884) (not e!2826563))))

(assert (=> b!4536109 (= res!1889884 (= (length!374 lt!1711207) (length!375 (toList!4391 lt!1710716))))))

(declare-fun res!1889883 () Bool)

(assert (=> b!4536110 (=> (not res!1889883) (not e!2826563))))

(assert (=> b!4536110 (= res!1889883 (forall!10332 lt!1711207 lambda!175398))))

(assert (=> b!4536111 (= e!2826563 (= (content!8421 lt!1711207) (content!8421 (map!11166 (toList!4391 lt!1710716) lambda!175399))))))

(assert (= (and d!1401110 res!1889882) b!4536109))

(assert (= (and b!4536109 res!1889884) b!4536110))

(assert (= (and b!4536110 res!1889883) b!4536111))

(declare-fun m!5298345 () Bool)

(assert (=> d!1401110 m!5298345))

(assert (=> d!1401110 m!5298089))

(declare-fun m!5298347 () Bool)

(assert (=> b!4536109 m!5298347))

(declare-fun m!5298349 () Bool)

(assert (=> b!4536109 m!5298349))

(declare-fun m!5298351 () Bool)

(assert (=> b!4536110 m!5298351))

(declare-fun m!5298353 () Bool)

(assert (=> b!4536111 m!5298353))

(declare-fun m!5298355 () Bool)

(assert (=> b!4536111 m!5298355))

(assert (=> b!4536111 m!5298355))

(declare-fun m!5298357 () Bool)

(assert (=> b!4536111 m!5298357))

(assert (=> b!4535423 d!1401110))

(declare-fun d!1401112 () Bool)

(declare-fun res!1889885 () Bool)

(declare-fun e!2826564 () Bool)

(assert (=> d!1401112 (=> res!1889885 e!2826564)))

(assert (=> d!1401112 (= res!1889885 ((_ is Nil!50732) (_2!28896 lt!1710445)))))

(assert (=> d!1401112 (= (forall!10330 (_2!28896 lt!1710445) lambda!175268) e!2826564)))

(declare-fun b!4536112 () Bool)

(declare-fun e!2826565 () Bool)

(assert (=> b!4536112 (= e!2826564 e!2826565)))

(declare-fun res!1889886 () Bool)

(assert (=> b!4536112 (=> (not res!1889886) (not e!2826565))))

(assert (=> b!4536112 (= res!1889886 (dynLambda!21205 lambda!175268 (h!56607 (_2!28896 lt!1710445))))))

(declare-fun b!4536113 () Bool)

(assert (=> b!4536113 (= e!2826565 (forall!10330 (t!357818 (_2!28896 lt!1710445)) lambda!175268))))

(assert (= (and d!1401112 (not res!1889885)) b!4536112))

(assert (= (and b!4536112 res!1889886) b!4536113))

(declare-fun b_lambda!157271 () Bool)

(assert (=> (not b_lambda!157271) (not b!4536112)))

(declare-fun m!5298359 () Bool)

(assert (=> b!4536112 m!5298359))

(declare-fun m!5298361 () Bool)

(assert (=> b!4536113 m!5298361))

(assert (=> d!1400628 d!1401112))

(assert (=> d!1400628 d!1400716))

(declare-fun b!4536115 () Bool)

(declare-fun e!2826566 () Option!11186)

(declare-fun e!2826567 () Option!11186)

(assert (=> b!4536115 (= e!2826566 e!2826567)))

(declare-fun c!774655 () Bool)

(assert (=> b!4536115 (= c!774655 (and ((_ is Cons!50733) (toList!4392 lt!1710922)) (not (= (_1!28896 (h!56608 (toList!4392 lt!1710922))) (_1!28896 lt!1710425)))))))

(declare-fun b!4536114 () Bool)

(assert (=> b!4536114 (= e!2826566 (Some!11185 (_2!28896 (h!56608 (toList!4392 lt!1710922)))))))

(declare-fun b!4536117 () Bool)

(assert (=> b!4536117 (= e!2826567 None!11185)))

(declare-fun d!1401114 () Bool)

(declare-fun c!774654 () Bool)

(assert (=> d!1401114 (= c!774654 (and ((_ is Cons!50733) (toList!4392 lt!1710922)) (= (_1!28896 (h!56608 (toList!4392 lt!1710922))) (_1!28896 lt!1710425))))))

(assert (=> d!1401114 (= (getValueByKey!1136 (toList!4392 lt!1710922) (_1!28896 lt!1710425)) e!2826566)))

(declare-fun b!4536116 () Bool)

(assert (=> b!4536116 (= e!2826567 (getValueByKey!1136 (t!357819 (toList!4392 lt!1710922)) (_1!28896 lt!1710425)))))

(assert (= (and d!1401114 c!774654) b!4536114))

(assert (= (and d!1401114 (not c!774654)) b!4536115))

(assert (= (and b!4536115 c!774655) b!4536116))

(assert (= (and b!4536115 (not c!774655)) b!4536117))

(declare-fun m!5298363 () Bool)

(assert (=> b!4536116 m!5298363))

(assert (=> b!4535629 d!1401114))

(declare-fun d!1401116 () Bool)

(declare-fun lt!1711208 () Bool)

(assert (=> d!1401116 (= lt!1711208 (select (content!8421 (keys!17648 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) key!3287))))

(declare-fun e!2826568 () Bool)

(assert (=> d!1401116 (= lt!1711208 e!2826568)))

(declare-fun res!1889888 () Bool)

(assert (=> d!1401116 (=> (not res!1889888) (not e!2826568))))

(assert (=> d!1401116 (= res!1889888 ((_ is Cons!50735) (keys!17648 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))))))

(assert (=> d!1401116 (= (contains!13515 (keys!17648 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) key!3287) lt!1711208)))

(declare-fun b!4536118 () Bool)

(declare-fun e!2826569 () Bool)

(assert (=> b!4536118 (= e!2826568 e!2826569)))

(declare-fun res!1889887 () Bool)

(assert (=> b!4536118 (=> res!1889887 e!2826569)))

(assert (=> b!4536118 (= res!1889887 (= (h!56612 (keys!17648 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) key!3287))))

(declare-fun b!4536119 () Bool)

(assert (=> b!4536119 (= e!2826569 (contains!13515 (t!357821 (keys!17648 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) key!3287))))

(assert (= (and d!1401116 res!1889888) b!4536118))

(assert (= (and b!4536118 (not res!1889887)) b!4536119))

(assert (=> d!1401116 m!5297287))

(declare-fun m!5298365 () Bool)

(assert (=> d!1401116 m!5298365))

(declare-fun m!5298367 () Bool)

(assert (=> d!1401116 m!5298367))

(declare-fun m!5298369 () Bool)

(assert (=> b!4536119 m!5298369))

(assert (=> b!4535503 d!1401116))

(assert (=> b!4535503 d!1401054))

(declare-fun d!1401118 () Bool)

(declare-fun e!2826571 () Bool)

(assert (=> d!1401118 e!2826571))

(declare-fun res!1889889 () Bool)

(assert (=> d!1401118 (=> res!1889889 e!2826571)))

(declare-fun lt!1711211 () Bool)

(assert (=> d!1401118 (= res!1889889 (not lt!1711211))))

(declare-fun lt!1711212 () Bool)

(assert (=> d!1401118 (= lt!1711211 lt!1711212)))

(declare-fun lt!1711210 () Unit!97630)

(declare-fun e!2826570 () Unit!97630)

(assert (=> d!1401118 (= lt!1711210 e!2826570)))

(declare-fun c!774656 () Bool)

(assert (=> d!1401118 (= c!774656 lt!1711212)))

(assert (=> d!1401118 (= lt!1711212 (containsKey!1858 (toList!4392 lt!1710762) (_1!28896 lt!1710425)))))

(assert (=> d!1401118 (= (contains!13512 lt!1710762 (_1!28896 lt!1710425)) lt!1711211)))

(declare-fun b!4536120 () Bool)

(declare-fun lt!1711209 () Unit!97630)

(assert (=> b!4536120 (= e!2826570 lt!1711209)))

(assert (=> b!4536120 (= lt!1711209 (lemmaContainsKeyImpliesGetValueByKeyDefined!1039 (toList!4392 lt!1710762) (_1!28896 lt!1710425)))))

(assert (=> b!4536120 (isDefined!8462 (getValueByKey!1136 (toList!4392 lt!1710762) (_1!28896 lt!1710425)))))

(declare-fun b!4536121 () Bool)

(declare-fun Unit!97802 () Unit!97630)

(assert (=> b!4536121 (= e!2826570 Unit!97802)))

(declare-fun b!4536122 () Bool)

(assert (=> b!4536122 (= e!2826571 (isDefined!8462 (getValueByKey!1136 (toList!4392 lt!1710762) (_1!28896 lt!1710425))))))

(assert (= (and d!1401118 c!774656) b!4536120))

(assert (= (and d!1401118 (not c!774656)) b!4536121))

(assert (= (and d!1401118 (not res!1889889)) b!4536122))

(declare-fun m!5298371 () Bool)

(assert (=> d!1401118 m!5298371))

(declare-fun m!5298373 () Bool)

(assert (=> b!4536120 m!5298373))

(assert (=> b!4536120 m!5297137))

(assert (=> b!4536120 m!5297137))

(declare-fun m!5298375 () Bool)

(assert (=> b!4536120 m!5298375))

(assert (=> b!4536122 m!5297137))

(assert (=> b!4536122 m!5297137))

(assert (=> b!4536122 m!5298375))

(assert (=> d!1400750 d!1401118))

(declare-fun b!4536124 () Bool)

(declare-fun e!2826572 () Option!11186)

(declare-fun e!2826573 () Option!11186)

(assert (=> b!4536124 (= e!2826572 e!2826573)))

(declare-fun c!774658 () Bool)

(assert (=> b!4536124 (= c!774658 (and ((_ is Cons!50733) lt!1710761) (not (= (_1!28896 (h!56608 lt!1710761)) (_1!28896 lt!1710425)))))))

(declare-fun b!4536123 () Bool)

(assert (=> b!4536123 (= e!2826572 (Some!11185 (_2!28896 (h!56608 lt!1710761))))))

(declare-fun b!4536126 () Bool)

(assert (=> b!4536126 (= e!2826573 None!11185)))

(declare-fun d!1401120 () Bool)

(declare-fun c!774657 () Bool)

(assert (=> d!1401120 (= c!774657 (and ((_ is Cons!50733) lt!1710761) (= (_1!28896 (h!56608 lt!1710761)) (_1!28896 lt!1710425))))))

(assert (=> d!1401120 (= (getValueByKey!1136 lt!1710761 (_1!28896 lt!1710425)) e!2826572)))

(declare-fun b!4536125 () Bool)

(assert (=> b!4536125 (= e!2826573 (getValueByKey!1136 (t!357819 lt!1710761) (_1!28896 lt!1710425)))))

(assert (= (and d!1401120 c!774657) b!4536123))

(assert (= (and d!1401120 (not c!774657)) b!4536124))

(assert (= (and b!4536124 c!774658) b!4536125))

(assert (= (and b!4536124 (not c!774658)) b!4536126))

(declare-fun m!5298377 () Bool)

(assert (=> b!4536125 m!5298377))

(assert (=> d!1400750 d!1401120))

(declare-fun d!1401122 () Bool)

(assert (=> d!1401122 (= (getValueByKey!1136 lt!1710761 (_1!28896 lt!1710425)) (Some!11185 (_2!28896 lt!1710425)))))

(declare-fun lt!1711213 () Unit!97630)

(assert (=> d!1401122 (= lt!1711213 (choose!29830 lt!1710761 (_1!28896 lt!1710425) (_2!28896 lt!1710425)))))

(declare-fun e!2826574 () Bool)

(assert (=> d!1401122 e!2826574))

(declare-fun res!1889890 () Bool)

(assert (=> d!1401122 (=> (not res!1889890) (not e!2826574))))

(assert (=> d!1401122 (= res!1889890 (isStrictlySorted!452 lt!1710761))))

(assert (=> d!1401122 (= (lemmaContainsTupThenGetReturnValue!712 lt!1710761 (_1!28896 lt!1710425) (_2!28896 lt!1710425)) lt!1711213)))

(declare-fun b!4536127 () Bool)

(declare-fun res!1889891 () Bool)

(assert (=> b!4536127 (=> (not res!1889891) (not e!2826574))))

(assert (=> b!4536127 (= res!1889891 (containsKey!1858 lt!1710761 (_1!28896 lt!1710425)))))

(declare-fun b!4536128 () Bool)

(assert (=> b!4536128 (= e!2826574 (contains!13511 lt!1710761 (tuple2!51205 (_1!28896 lt!1710425) (_2!28896 lt!1710425))))))

(assert (= (and d!1401122 res!1889890) b!4536127))

(assert (= (and b!4536127 res!1889891) b!4536128))

(assert (=> d!1401122 m!5297131))

(declare-fun m!5298379 () Bool)

(assert (=> d!1401122 m!5298379))

(declare-fun m!5298381 () Bool)

(assert (=> d!1401122 m!5298381))

(declare-fun m!5298383 () Bool)

(assert (=> b!4536127 m!5298383))

(declare-fun m!5298385 () Bool)

(assert (=> b!4536128 m!5298385))

(assert (=> d!1400750 d!1401122))

(declare-fun b!4536129 () Bool)

(declare-fun e!2826577 () List!50857)

(declare-fun e!2826576 () List!50857)

(assert (=> b!4536129 (= e!2826577 e!2826576)))

(declare-fun c!774662 () Bool)

(assert (=> b!4536129 (= c!774662 (and ((_ is Cons!50733) (toList!4392 lt!1710421)) (= (_1!28896 (h!56608 (toList!4392 lt!1710421))) (_1!28896 lt!1710425))))))

(declare-fun c!774660 () Bool)

(declare-fun e!2826579 () List!50857)

(declare-fun call!316261 () List!50857)

(declare-fun bm!316255 () Bool)

(assert (=> bm!316255 (= call!316261 ($colon$colon!959 e!2826579 (ite c!774660 (h!56608 (toList!4392 lt!1710421)) (tuple2!51205 (_1!28896 lt!1710425) (_2!28896 lt!1710425)))))))

(declare-fun c!774661 () Bool)

(assert (=> bm!316255 (= c!774661 c!774660)))

(declare-fun b!4536130 () Bool)

(assert (=> b!4536130 (= e!2826579 (insertStrictlySorted!430 (t!357819 (toList!4392 lt!1710421)) (_1!28896 lt!1710425) (_2!28896 lt!1710425)))))

(declare-fun b!4536131 () Bool)

(declare-fun e!2826575 () List!50857)

(declare-fun call!316260 () List!50857)

(assert (=> b!4536131 (= e!2826575 call!316260)))

(declare-fun bm!316256 () Bool)

(declare-fun call!316262 () List!50857)

(assert (=> bm!316256 (= call!316262 call!316261)))

(declare-fun b!4536133 () Bool)

(declare-fun c!774659 () Bool)

(assert (=> b!4536133 (= c!774659 (and ((_ is Cons!50733) (toList!4392 lt!1710421)) (bvsgt (_1!28896 (h!56608 (toList!4392 lt!1710421))) (_1!28896 lt!1710425))))))

(assert (=> b!4536133 (= e!2826576 e!2826575)))

(declare-fun b!4536134 () Bool)

(assert (=> b!4536134 (= e!2826577 call!316261)))

(declare-fun bm!316257 () Bool)

(assert (=> bm!316257 (= call!316260 call!316262)))

(declare-fun b!4536135 () Bool)

(assert (=> b!4536135 (= e!2826575 call!316260)))

(declare-fun b!4536136 () Bool)

(assert (=> b!4536136 (= e!2826576 call!316262)))

(declare-fun b!4536132 () Bool)

(declare-fun e!2826578 () Bool)

(declare-fun lt!1711214 () List!50857)

(assert (=> b!4536132 (= e!2826578 (contains!13511 lt!1711214 (tuple2!51205 (_1!28896 lt!1710425) (_2!28896 lt!1710425))))))

(declare-fun d!1401124 () Bool)

(assert (=> d!1401124 e!2826578))

(declare-fun res!1889893 () Bool)

(assert (=> d!1401124 (=> (not res!1889893) (not e!2826578))))

(assert (=> d!1401124 (= res!1889893 (isStrictlySorted!452 lt!1711214))))

(assert (=> d!1401124 (= lt!1711214 e!2826577)))

(assert (=> d!1401124 (= c!774660 (and ((_ is Cons!50733) (toList!4392 lt!1710421)) (bvslt (_1!28896 (h!56608 (toList!4392 lt!1710421))) (_1!28896 lt!1710425))))))

(assert (=> d!1401124 (isStrictlySorted!452 (toList!4392 lt!1710421))))

(assert (=> d!1401124 (= (insertStrictlySorted!430 (toList!4392 lt!1710421) (_1!28896 lt!1710425) (_2!28896 lt!1710425)) lt!1711214)))

(declare-fun b!4536137 () Bool)

(assert (=> b!4536137 (= e!2826579 (ite c!774662 (t!357819 (toList!4392 lt!1710421)) (ite c!774659 (Cons!50733 (h!56608 (toList!4392 lt!1710421)) (t!357819 (toList!4392 lt!1710421))) Nil!50733)))))

(declare-fun b!4536138 () Bool)

(declare-fun res!1889892 () Bool)

(assert (=> b!4536138 (=> (not res!1889892) (not e!2826578))))

(assert (=> b!4536138 (= res!1889892 (containsKey!1858 lt!1711214 (_1!28896 lt!1710425)))))

(assert (= (and d!1401124 c!774660) b!4536134))

(assert (= (and d!1401124 (not c!774660)) b!4536129))

(assert (= (and b!4536129 c!774662) b!4536136))

(assert (= (and b!4536129 (not c!774662)) b!4536133))

(assert (= (and b!4536133 c!774659) b!4536131))

(assert (= (and b!4536133 (not c!774659)) b!4536135))

(assert (= (or b!4536131 b!4536135) bm!316257))

(assert (= (or b!4536136 bm!316257) bm!316256))

(assert (= (or b!4536134 bm!316256) bm!316255))

(assert (= (and bm!316255 c!774661) b!4536130))

(assert (= (and bm!316255 (not c!774661)) b!4536137))

(assert (= (and d!1401124 res!1889893) b!4536138))

(assert (= (and b!4536138 res!1889892) b!4536132))

(declare-fun m!5298387 () Bool)

(assert (=> bm!316255 m!5298387))

(declare-fun m!5298389 () Bool)

(assert (=> b!4536138 m!5298389))

(declare-fun m!5298391 () Bool)

(assert (=> b!4536132 m!5298391))

(declare-fun m!5298393 () Bool)

(assert (=> d!1401124 m!5298393))

(declare-fun m!5298395 () Bool)

(assert (=> d!1401124 m!5298395))

(declare-fun m!5298397 () Bool)

(assert (=> b!4536130 m!5298397))

(assert (=> d!1400750 d!1401124))

(declare-fun d!1401126 () Bool)

(assert (=> d!1401126 (= (invariantList!1039 (toList!4391 lt!1710807)) (noDuplicatedKeys!274 (toList!4391 lt!1710807)))))

(declare-fun bs!872097 () Bool)

(assert (= bs!872097 d!1401126))

(declare-fun m!5298399 () Bool)

(assert (=> bs!872097 m!5298399))

(assert (=> d!1400790 d!1401126))

(declare-fun d!1401128 () Bool)

(declare-fun res!1889894 () Bool)

(declare-fun e!2826580 () Bool)

(assert (=> d!1401128 (=> res!1889894 e!2826580)))

(assert (=> d!1401128 (= res!1889894 ((_ is Nil!50733) (toList!4392 lt!1710421)))))

(assert (=> d!1401128 (= (forall!10329 (toList!4392 lt!1710421) lambda!175331) e!2826580)))

(declare-fun b!4536139 () Bool)

(declare-fun e!2826581 () Bool)

(assert (=> b!4536139 (= e!2826580 e!2826581)))

(declare-fun res!1889895 () Bool)

(assert (=> b!4536139 (=> (not res!1889895) (not e!2826581))))

(assert (=> b!4536139 (= res!1889895 (dynLambda!21203 lambda!175331 (h!56608 (toList!4392 lt!1710421))))))

(declare-fun b!4536140 () Bool)

(assert (=> b!4536140 (= e!2826581 (forall!10329 (t!357819 (toList!4392 lt!1710421)) lambda!175331))))

(assert (= (and d!1401128 (not res!1889894)) b!4536139))

(assert (= (and b!4536139 res!1889895) b!4536140))

(declare-fun b_lambda!157273 () Bool)

(assert (=> (not b_lambda!157273) (not b!4536139)))

(declare-fun m!5298401 () Bool)

(assert (=> b!4536139 m!5298401))

(declare-fun m!5298403 () Bool)

(assert (=> b!4536140 m!5298403))

(assert (=> d!1400790 d!1401128))

(declare-fun d!1401130 () Bool)

(declare-fun c!774665 () Bool)

(assert (=> d!1401130 (= c!774665 ((_ is Nil!50733) (t!357819 (toList!4392 lm!1477))))))

(declare-fun e!2826584 () (InoxSet tuple2!51204))

(assert (=> d!1401130 (= (content!8425 (t!357819 (toList!4392 lm!1477))) e!2826584)))

(declare-fun b!4536145 () Bool)

(assert (=> b!4536145 (= e!2826584 ((as const (Array tuple2!51204 Bool)) false))))

(declare-fun b!4536146 () Bool)

(assert (=> b!4536146 (= e!2826584 ((_ map or) (store ((as const (Array tuple2!51204 Bool)) false) (h!56608 (t!357819 (toList!4392 lm!1477))) true) (content!8425 (t!357819 (t!357819 (toList!4392 lm!1477))))))))

(assert (= (and d!1401130 c!774665) b!4536145))

(assert (= (and d!1401130 (not c!774665)) b!4536146))

(declare-fun m!5298405 () Bool)

(assert (=> b!4536146 m!5298405))

(assert (=> b!4536146 m!5297829))

(assert (=> d!1400842 d!1401130))

(declare-fun bs!872118 () Bool)

(declare-fun b!4536216 () Bool)

(assert (= bs!872118 (and b!4536216 b!4536027)))

(declare-fun lambda!175422 () Int)

(assert (=> bs!872118 (= (= (t!357818 (toList!4391 lt!1710447)) (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (= lambda!175422 lambda!175392))))

(declare-fun bs!872119 () Bool)

(assert (= bs!872119 (and b!4536216 b!4535656)))

(assert (=> bs!872119 (= (= (t!357818 (toList!4391 lt!1710447)) (toList!4391 lt!1710447)) (= lambda!175422 lambda!175358))))

(declare-fun bs!872121 () Bool)

(assert (= bs!872121 (and b!4536216 b!4536110)))

(assert (=> bs!872121 (= (= (t!357818 (toList!4391 lt!1710447)) (toList!4391 lt!1710716)) (= lambda!175422 lambda!175398))))

(declare-fun bs!872122 () Bool)

(assert (= bs!872122 (and b!4536216 b!4536051)))

(assert (=> bs!872122 (= (= (t!357818 (toList!4391 lt!1710447)) (toList!4391 lt!1710448)) (= lambda!175422 lambda!175394))))

(declare-fun bs!872124 () Bool)

(assert (= bs!872124 (and b!4536216 b!4535697)))

(assert (=> bs!872124 (= (= (t!357818 (toList!4391 lt!1710447)) (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448))) (= lambda!175422 lambda!175367))))

(declare-fun bs!872126 () Bool)

(assert (= bs!872126 (and b!4536216 b!4535702)))

(assert (=> bs!872126 (= (= (t!357818 (toList!4391 lt!1710447)) (toList!4391 lt!1710451)) (= lambda!175422 lambda!175369))))

(declare-fun bs!872128 () Bool)

(assert (= bs!872128 (and b!4536216 b!4535682)))

(assert (=> bs!872128 (= (= (t!357818 (toList!4391 lt!1710447)) (toList!4391 lt!1710876)) (= lambda!175422 lambda!175365))))

(assert (=> b!4536216 true))

(declare-fun bs!872133 () Bool)

(declare-fun b!4536218 () Bool)

(assert (= bs!872133 (and b!4536218 b!4536027)))

(declare-fun lambda!175425 () Int)

(assert (=> bs!872133 (= (= (Cons!50732 (h!56607 (toList!4391 lt!1710447)) (t!357818 (toList!4391 lt!1710447))) (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (= lambda!175425 lambda!175392))))

(declare-fun bs!872135 () Bool)

(assert (= bs!872135 (and b!4536218 b!4535656)))

(assert (=> bs!872135 (= (= (Cons!50732 (h!56607 (toList!4391 lt!1710447)) (t!357818 (toList!4391 lt!1710447))) (toList!4391 lt!1710447)) (= lambda!175425 lambda!175358))))

(declare-fun bs!872137 () Bool)

(assert (= bs!872137 (and b!4536218 b!4536216)))

(assert (=> bs!872137 (= (= (Cons!50732 (h!56607 (toList!4391 lt!1710447)) (t!357818 (toList!4391 lt!1710447))) (t!357818 (toList!4391 lt!1710447))) (= lambda!175425 lambda!175422))))

(declare-fun bs!872138 () Bool)

(assert (= bs!872138 (and b!4536218 b!4536110)))

(assert (=> bs!872138 (= (= (Cons!50732 (h!56607 (toList!4391 lt!1710447)) (t!357818 (toList!4391 lt!1710447))) (toList!4391 lt!1710716)) (= lambda!175425 lambda!175398))))

(declare-fun bs!872139 () Bool)

(assert (= bs!872139 (and b!4536218 b!4536051)))

(assert (=> bs!872139 (= (= (Cons!50732 (h!56607 (toList!4391 lt!1710447)) (t!357818 (toList!4391 lt!1710447))) (toList!4391 lt!1710448)) (= lambda!175425 lambda!175394))))

(declare-fun bs!872140 () Bool)

(assert (= bs!872140 (and b!4536218 b!4535697)))

(assert (=> bs!872140 (= (= (Cons!50732 (h!56607 (toList!4391 lt!1710447)) (t!357818 (toList!4391 lt!1710447))) (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448))) (= lambda!175425 lambda!175367))))

(declare-fun bs!872141 () Bool)

(assert (= bs!872141 (and b!4536218 b!4535702)))

(assert (=> bs!872141 (= (= (Cons!50732 (h!56607 (toList!4391 lt!1710447)) (t!357818 (toList!4391 lt!1710447))) (toList!4391 lt!1710451)) (= lambda!175425 lambda!175369))))

(declare-fun bs!872142 () Bool)

(assert (= bs!872142 (and b!4536218 b!4535682)))

(assert (=> bs!872142 (= (= (Cons!50732 (h!56607 (toList!4391 lt!1710447)) (t!357818 (toList!4391 lt!1710447))) (toList!4391 lt!1710876)) (= lambda!175425 lambda!175365))))

(assert (=> b!4536218 true))

(declare-fun bs!872143 () Bool)

(declare-fun b!4536213 () Bool)

(assert (= bs!872143 (and b!4536213 b!4536027)))

(declare-fun lambda!175426 () Int)

(assert (=> bs!872143 (= (= (toList!4391 lt!1710447) (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (= lambda!175426 lambda!175392))))

(declare-fun bs!872145 () Bool)

(assert (= bs!872145 (and b!4536213 b!4535656)))

(assert (=> bs!872145 (= lambda!175426 lambda!175358)))

(declare-fun bs!872146 () Bool)

(assert (= bs!872146 (and b!4536213 b!4536216)))

(assert (=> bs!872146 (= (= (toList!4391 lt!1710447) (t!357818 (toList!4391 lt!1710447))) (= lambda!175426 lambda!175422))))

(declare-fun bs!872147 () Bool)

(assert (= bs!872147 (and b!4536213 b!4536110)))

(assert (=> bs!872147 (= (= (toList!4391 lt!1710447) (toList!4391 lt!1710716)) (= lambda!175426 lambda!175398))))

(declare-fun bs!872148 () Bool)

(assert (= bs!872148 (and b!4536213 b!4536218)))

(assert (=> bs!872148 (= (= (toList!4391 lt!1710447) (Cons!50732 (h!56607 (toList!4391 lt!1710447)) (t!357818 (toList!4391 lt!1710447)))) (= lambda!175426 lambda!175425))))

(declare-fun bs!872149 () Bool)

(assert (= bs!872149 (and b!4536213 b!4536051)))

(assert (=> bs!872149 (= (= (toList!4391 lt!1710447) (toList!4391 lt!1710448)) (= lambda!175426 lambda!175394))))

(declare-fun bs!872150 () Bool)

(assert (= bs!872150 (and b!4536213 b!4535697)))

(assert (=> bs!872150 (= (= (toList!4391 lt!1710447) (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448))) (= lambda!175426 lambda!175367))))

(declare-fun bs!872151 () Bool)

(assert (= bs!872151 (and b!4536213 b!4535702)))

(assert (=> bs!872151 (= (= (toList!4391 lt!1710447) (toList!4391 lt!1710451)) (= lambda!175426 lambda!175369))))

(declare-fun bs!872152 () Bool)

(assert (= bs!872152 (and b!4536213 b!4535682)))

(assert (=> bs!872152 (= (= (toList!4391 lt!1710447) (toList!4391 lt!1710876)) (= lambda!175426 lambda!175365))))

(assert (=> b!4536213 true))

(declare-fun bs!872153 () Bool)

(declare-fun b!4536215 () Bool)

(assert (= bs!872153 (and b!4536215 b!4535657)))

(declare-fun lambda!175427 () Int)

(assert (=> bs!872153 (= lambda!175427 lambda!175359)))

(declare-fun bs!872154 () Bool)

(assert (= bs!872154 (and b!4536215 b!4535698)))

(assert (=> bs!872154 (= lambda!175427 lambda!175368)))

(declare-fun bs!872155 () Bool)

(assert (= bs!872155 (and b!4536215 b!4535683)))

(assert (=> bs!872155 (= lambda!175427 lambda!175366)))

(declare-fun bs!872156 () Bool)

(assert (= bs!872156 (and b!4536215 b!4536111)))

(assert (=> bs!872156 (= lambda!175427 lambda!175399)))

(declare-fun bs!872157 () Bool)

(assert (= bs!872157 (and b!4536215 b!4536028)))

(assert (=> bs!872157 (= lambda!175427 lambda!175393)))

(declare-fun bs!872158 () Bool)

(assert (= bs!872158 (and b!4536215 b!4536052)))

(assert (=> bs!872158 (= lambda!175427 lambda!175395)))

(declare-fun bs!872159 () Bool)

(assert (= bs!872159 (and b!4536215 b!4535703)))

(assert (=> bs!872159 (= lambda!175427 lambda!175370)))

(declare-fun res!1889922 () Bool)

(declare-fun e!2826621 () Bool)

(assert (=> b!4536213 (=> (not res!1889922) (not e!2826621))))

(declare-fun lt!1711253 () List!50859)

(assert (=> b!4536213 (= res!1889922 (forall!10332 lt!1711253 lambda!175426))))

(declare-fun d!1401132 () Bool)

(assert (=> d!1401132 e!2826621))

(declare-fun res!1889924 () Bool)

(assert (=> d!1401132 (=> (not res!1889924) (not e!2826621))))

(assert (=> d!1401132 (= res!1889924 (noDuplicate!759 lt!1711253))))

(declare-fun e!2826620 () List!50859)

(assert (=> d!1401132 (= lt!1711253 e!2826620)))

(declare-fun c!774687 () Bool)

(assert (=> d!1401132 (= c!774687 ((_ is Cons!50732) (toList!4391 lt!1710447)))))

(assert (=> d!1401132 (invariantList!1039 (toList!4391 lt!1710447))))

(assert (=> d!1401132 (= (getKeysList!487 (toList!4391 lt!1710447)) lt!1711253)))

(declare-fun b!4536214 () Bool)

(declare-fun res!1889923 () Bool)

(assert (=> b!4536214 (=> (not res!1889923) (not e!2826621))))

(assert (=> b!4536214 (= res!1889923 (= (length!374 lt!1711253) (length!375 (toList!4391 lt!1710447))))))

(assert (=> b!4536215 (= e!2826621 (= (content!8421 lt!1711253) (content!8421 (map!11166 (toList!4391 lt!1710447) lambda!175427))))))

(assert (=> b!4536216 false))

(declare-fun lt!1711257 () Unit!97630)

(declare-fun forallContained!2593 (List!50859 Int K!12120) Unit!97630)

(assert (=> b!4536216 (= lt!1711257 (forallContained!2593 (getKeysList!487 (t!357818 (toList!4391 lt!1710447))) lambda!175422 (_1!28895 (h!56607 (toList!4391 lt!1710447)))))))

(declare-fun e!2826618 () Unit!97630)

(declare-fun Unit!97814 () Unit!97630)

(assert (=> b!4536216 (= e!2826618 Unit!97814)))

(declare-fun b!4536217 () Bool)

(assert (=> b!4536217 false))

(declare-fun e!2826619 () Unit!97630)

(declare-fun Unit!97815 () Unit!97630)

(assert (=> b!4536217 (= e!2826619 Unit!97815)))

(assert (=> b!4536218 (= e!2826620 (Cons!50735 (_1!28895 (h!56607 (toList!4391 lt!1710447))) (getKeysList!487 (t!357818 (toList!4391 lt!1710447)))))))

(declare-fun c!774686 () Bool)

(assert (=> b!4536218 (= c!774686 (containsKey!1859 (t!357818 (toList!4391 lt!1710447)) (_1!28895 (h!56607 (toList!4391 lt!1710447)))))))

(declare-fun lt!1711256 () Unit!97630)

(assert (=> b!4536218 (= lt!1711256 e!2826619)))

(declare-fun c!774685 () Bool)

(assert (=> b!4536218 (= c!774685 (contains!13515 (getKeysList!487 (t!357818 (toList!4391 lt!1710447))) (_1!28895 (h!56607 (toList!4391 lt!1710447)))))))

(declare-fun lt!1711254 () Unit!97630)

(assert (=> b!4536218 (= lt!1711254 e!2826618)))

(declare-fun lt!1711252 () List!50859)

(assert (=> b!4536218 (= lt!1711252 (getKeysList!487 (t!357818 (toList!4391 lt!1710447))))))

(declare-fun lt!1711255 () Unit!97630)

(declare-fun lemmaForallContainsAddHeadPreserves!181 (List!50856 List!50859 tuple2!51202) Unit!97630)

(assert (=> b!4536218 (= lt!1711255 (lemmaForallContainsAddHeadPreserves!181 (t!357818 (toList!4391 lt!1710447)) lt!1711252 (h!56607 (toList!4391 lt!1710447))))))

(assert (=> b!4536218 (forall!10332 lt!1711252 lambda!175425)))

(declare-fun lt!1711251 () Unit!97630)

(assert (=> b!4536218 (= lt!1711251 lt!1711255)))

(declare-fun b!4536219 () Bool)

(declare-fun Unit!97816 () Unit!97630)

(assert (=> b!4536219 (= e!2826618 Unit!97816)))

(declare-fun b!4536220 () Bool)

(assert (=> b!4536220 (= e!2826620 Nil!50735)))

(declare-fun b!4536221 () Bool)

(declare-fun Unit!97817 () Unit!97630)

(assert (=> b!4536221 (= e!2826619 Unit!97817)))

(assert (= (and d!1401132 c!774687) b!4536218))

(assert (= (and d!1401132 (not c!774687)) b!4536220))

(assert (= (and b!4536218 c!774686) b!4536217))

(assert (= (and b!4536218 (not c!774686)) b!4536221))

(assert (= (and b!4536218 c!774685) b!4536216))

(assert (= (and b!4536218 (not c!774685)) b!4536219))

(assert (= (and d!1401132 res!1889924) b!4536214))

(assert (= (and b!4536214 res!1889923) b!4536213))

(assert (= (and b!4536213 res!1889922) b!4536215))

(declare-fun m!5298495 () Bool)

(assert (=> b!4536213 m!5298495))

(declare-fun m!5298497 () Bool)

(assert (=> b!4536216 m!5298497))

(assert (=> b!4536216 m!5298497))

(declare-fun m!5298499 () Bool)

(assert (=> b!4536216 m!5298499))

(declare-fun m!5298501 () Bool)

(assert (=> b!4536218 m!5298501))

(declare-fun m!5298503 () Bool)

(assert (=> b!4536218 m!5298503))

(assert (=> b!4536218 m!5298497))

(assert (=> b!4536218 m!5298497))

(declare-fun m!5298505 () Bool)

(assert (=> b!4536218 m!5298505))

(declare-fun m!5298509 () Bool)

(assert (=> b!4536218 m!5298509))

(declare-fun m!5298513 () Bool)

(assert (=> b!4536214 m!5298513))

(assert (=> b!4536214 m!5297607))

(declare-fun m!5298515 () Bool)

(assert (=> d!1401132 m!5298515))

(declare-fun m!5298517 () Bool)

(assert (=> d!1401132 m!5298517))

(declare-fun m!5298519 () Bool)

(assert (=> b!4536215 m!5298519))

(declare-fun m!5298521 () Bool)

(assert (=> b!4536215 m!5298521))

(assert (=> b!4536215 m!5298521))

(declare-fun m!5298523 () Bool)

(assert (=> b!4536215 m!5298523))

(assert (=> b!4535361 d!1401132))

(declare-fun d!1401162 () Bool)

(assert (=> d!1401162 (isDefined!8463 (getValueByKey!1137 (toList!4391 lt!1710448) key!3287))))

(declare-fun lt!1711263 () Unit!97630)

(assert (=> d!1401162 (= lt!1711263 (choose!29831 (toList!4391 lt!1710448) key!3287))))

(assert (=> d!1401162 (invariantList!1039 (toList!4391 lt!1710448))))

(assert (=> d!1401162 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1040 (toList!4391 lt!1710448) key!3287) lt!1711263)))

(declare-fun bs!872161 () Bool)

(assert (= bs!872161 d!1401162))

(assert (=> bs!872161 m!5297321))

(assert (=> bs!872161 m!5297321))

(assert (=> bs!872161 m!5297323))

(declare-fun m!5298525 () Bool)

(assert (=> bs!872161 m!5298525))

(assert (=> bs!872161 m!5297697))

(assert (=> b!4535507 d!1401162))

(declare-fun d!1401164 () Bool)

(assert (=> d!1401164 (= (isDefined!8463 (getValueByKey!1137 (toList!4391 lt!1710448) key!3287)) (not (isEmpty!28738 (getValueByKey!1137 (toList!4391 lt!1710448) key!3287))))))

(declare-fun bs!872163 () Bool)

(assert (= bs!872163 d!1401164))

(assert (=> bs!872163 m!5297321))

(declare-fun m!5298529 () Bool)

(assert (=> bs!872163 m!5298529))

(assert (=> b!4535507 d!1401164))

(declare-fun b!4536235 () Bool)

(declare-fun e!2826628 () Option!11187)

(assert (=> b!4536235 (= e!2826628 (getValueByKey!1137 (t!357818 (toList!4391 lt!1710448)) key!3287))))

(declare-fun b!4536233 () Bool)

(declare-fun e!2826627 () Option!11187)

(assert (=> b!4536233 (= e!2826627 (Some!11186 (_2!28895 (h!56607 (toList!4391 lt!1710448)))))))

(declare-fun d!1401168 () Bool)

(declare-fun c!774690 () Bool)

(assert (=> d!1401168 (= c!774690 (and ((_ is Cons!50732) (toList!4391 lt!1710448)) (= (_1!28895 (h!56607 (toList!4391 lt!1710448))) key!3287)))))

(assert (=> d!1401168 (= (getValueByKey!1137 (toList!4391 lt!1710448) key!3287) e!2826627)))

(declare-fun b!4536234 () Bool)

(assert (=> b!4536234 (= e!2826627 e!2826628)))

(declare-fun c!774691 () Bool)

(assert (=> b!4536234 (= c!774691 (and ((_ is Cons!50732) (toList!4391 lt!1710448)) (not (= (_1!28895 (h!56607 (toList!4391 lt!1710448))) key!3287))))))

(declare-fun b!4536236 () Bool)

(assert (=> b!4536236 (= e!2826628 None!11186)))

(assert (= (and d!1401168 c!774690) b!4536233))

(assert (= (and d!1401168 (not c!774690)) b!4536234))

(assert (= (and b!4536234 c!774691) b!4536235))

(assert (= (and b!4536234 (not c!774691)) b!4536236))

(declare-fun m!5298531 () Bool)

(assert (=> b!4536235 m!5298531))

(assert (=> b!4535507 d!1401168))

(declare-fun d!1401170 () Bool)

(assert (=> d!1401170 (contains!13515 (getKeysList!487 (toList!4391 lt!1710448)) key!3287)))

(declare-fun lt!1711264 () Unit!97630)

(assert (=> d!1401170 (= lt!1711264 (choose!29832 (toList!4391 lt!1710448) key!3287))))

(assert (=> d!1401170 (invariantList!1039 (toList!4391 lt!1710448))))

(assert (=> d!1401170 (= (lemmaInListThenGetKeysListContains!483 (toList!4391 lt!1710448) key!3287) lt!1711264)))

(declare-fun bs!872164 () Bool)

(assert (= bs!872164 d!1401170))

(assert (=> bs!872164 m!5297327))

(assert (=> bs!872164 m!5297327))

(declare-fun m!5298533 () Bool)

(assert (=> bs!872164 m!5298533))

(declare-fun m!5298535 () Bool)

(assert (=> bs!872164 m!5298535))

(assert (=> bs!872164 m!5297697))

(assert (=> b!4535507 d!1401170))

(declare-fun d!1401172 () Bool)

(assert (=> d!1401172 (= (isDefined!8466 lt!1710894) (not (isEmpty!28735 lt!1710894)))))

(declare-fun bs!872165 () Bool)

(assert (= bs!872165 d!1401172))

(assert (=> bs!872165 m!5297505))

(assert (=> b!4535617 d!1401172))

(declare-fun d!1401174 () Bool)

(assert (=> d!1401174 (= (invariantList!1039 (toList!4391 lt!1710760)) (noDuplicatedKeys!274 (toList!4391 lt!1710760)))))

(declare-fun bs!872166 () Bool)

(assert (= bs!872166 d!1401174))

(declare-fun m!5298537 () Bool)

(assert (=> bs!872166 m!5298537))

(assert (=> d!1400748 d!1401174))

(declare-fun d!1401176 () Bool)

(declare-fun res!1889930 () Bool)

(declare-fun e!2826633 () Bool)

(assert (=> d!1401176 (=> res!1889930 e!2826633)))

(assert (=> d!1401176 (= res!1889930 ((_ is Nil!50733) (toList!4392 (+!1592 lt!1710421 lt!1710445))))))

(assert (=> d!1401176 (= (forall!10329 (toList!4392 (+!1592 lt!1710421 lt!1710445)) lambda!175316) e!2826633)))

(declare-fun b!4536245 () Bool)

(declare-fun e!2826634 () Bool)

(assert (=> b!4536245 (= e!2826633 e!2826634)))

(declare-fun res!1889931 () Bool)

(assert (=> b!4536245 (=> (not res!1889931) (not e!2826634))))

(assert (=> b!4536245 (= res!1889931 (dynLambda!21203 lambda!175316 (h!56608 (toList!4392 (+!1592 lt!1710421 lt!1710445)))))))

(declare-fun b!4536246 () Bool)

(assert (=> b!4536246 (= e!2826634 (forall!10329 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))) lambda!175316))))

(assert (= (and d!1401176 (not res!1889930)) b!4536245))

(assert (= (and b!4536245 res!1889931) b!4536246))

(declare-fun b_lambda!157281 () Bool)

(assert (=> (not b_lambda!157281) (not b!4536245)))

(declare-fun m!5298539 () Bool)

(assert (=> b!4536245 m!5298539))

(declare-fun m!5298541 () Bool)

(assert (=> b!4536246 m!5298541))

(assert (=> d!1400748 d!1401176))

(declare-fun b!4536248 () Bool)

(declare-fun e!2826635 () Option!11186)

(declare-fun e!2826636 () Option!11186)

(assert (=> b!4536248 (= e!2826635 e!2826636)))

(declare-fun c!774697 () Bool)

(assert (=> b!4536248 (= c!774697 (and ((_ is Cons!50733) (toList!4392 lt!1710757)) (not (= (_1!28896 (h!56608 (toList!4392 lt!1710757))) (_1!28896 lt!1710445)))))))

(declare-fun b!4536247 () Bool)

(assert (=> b!4536247 (= e!2826635 (Some!11185 (_2!28896 (h!56608 (toList!4392 lt!1710757)))))))

(declare-fun b!4536250 () Bool)

(assert (=> b!4536250 (= e!2826636 None!11185)))

(declare-fun d!1401178 () Bool)

(declare-fun c!774696 () Bool)

(assert (=> d!1401178 (= c!774696 (and ((_ is Cons!50733) (toList!4392 lt!1710757)) (= (_1!28896 (h!56608 (toList!4392 lt!1710757))) (_1!28896 lt!1710445))))))

(assert (=> d!1401178 (= (getValueByKey!1136 (toList!4392 lt!1710757) (_1!28896 lt!1710445)) e!2826635)))

(declare-fun b!4536249 () Bool)

(assert (=> b!4536249 (= e!2826636 (getValueByKey!1136 (t!357819 (toList!4392 lt!1710757)) (_1!28896 lt!1710445)))))

(assert (= (and d!1401178 c!774696) b!4536247))

(assert (= (and d!1401178 (not c!774696)) b!4536248))

(assert (= (and b!4536248 c!774697) b!4536249))

(assert (= (and b!4536248 (not c!774697)) b!4536250))

(declare-fun m!5298543 () Bool)

(assert (=> b!4536249 m!5298543))

(assert (=> b!4535451 d!1401178))

(declare-fun d!1401180 () Bool)

(declare-fun res!1889932 () Bool)

(declare-fun e!2826637 () Bool)

(assert (=> d!1401180 (=> res!1889932 e!2826637)))

(assert (=> d!1401180 (= res!1889932 ((_ is Nil!50732) (_2!28896 lt!1710445)))))

(assert (=> d!1401180 (= (forall!10330 (_2!28896 lt!1710445) lambda!175352) e!2826637)))

(declare-fun b!4536251 () Bool)

(declare-fun e!2826638 () Bool)

(assert (=> b!4536251 (= e!2826637 e!2826638)))

(declare-fun res!1889933 () Bool)

(assert (=> b!4536251 (=> (not res!1889933) (not e!2826638))))

(assert (=> b!4536251 (= res!1889933 (dynLambda!21205 lambda!175352 (h!56607 (_2!28896 lt!1710445))))))

(declare-fun b!4536252 () Bool)

(assert (=> b!4536252 (= e!2826638 (forall!10330 (t!357818 (_2!28896 lt!1710445)) lambda!175352))))

(assert (= (and d!1401180 (not res!1889932)) b!4536251))

(assert (= (and b!4536251 res!1889933) b!4536252))

(declare-fun b_lambda!157283 () Bool)

(assert (=> (not b_lambda!157283) (not b!4536251)))

(declare-fun m!5298545 () Bool)

(assert (=> b!4536251 m!5298545))

(declare-fun m!5298547 () Bool)

(assert (=> b!4536252 m!5298547))

(assert (=> d!1400874 d!1401180))

(assert (=> d!1400874 d!1400716))

(declare-fun d!1401182 () Bool)

(declare-fun res!1889934 () Bool)

(declare-fun e!2826641 () Bool)

(assert (=> d!1401182 (=> res!1889934 e!2826641)))

(assert (=> d!1401182 (= res!1889934 ((_ is Nil!50733) (toList!4392 lm!1477)))))

(assert (=> d!1401182 (= (forall!10329 (toList!4392 lm!1477) lambda!175306) e!2826641)))

(declare-fun b!4536257 () Bool)

(declare-fun e!2826642 () Bool)

(assert (=> b!4536257 (= e!2826641 e!2826642)))

(declare-fun res!1889935 () Bool)

(assert (=> b!4536257 (=> (not res!1889935) (not e!2826642))))

(assert (=> b!4536257 (= res!1889935 (dynLambda!21203 lambda!175306 (h!56608 (toList!4392 lm!1477))))))

(declare-fun b!4536258 () Bool)

(assert (=> b!4536258 (= e!2826642 (forall!10329 (t!357819 (toList!4392 lm!1477)) lambda!175306))))

(assert (= (and d!1401182 (not res!1889934)) b!4536257))

(assert (= (and b!4536257 res!1889935) b!4536258))

(declare-fun b_lambda!157285 () Bool)

(assert (=> (not b_lambda!157285) (not b!4536257)))

(declare-fun m!5298551 () Bool)

(assert (=> b!4536257 m!5298551))

(declare-fun m!5298553 () Bool)

(assert (=> b!4536258 m!5298553))

(assert (=> d!1400704 d!1401182))

(declare-fun d!1401186 () Bool)

(declare-fun res!1889936 () Bool)

(declare-fun e!2826643 () Bool)

(assert (=> d!1401186 (=> res!1889936 e!2826643)))

(assert (=> d!1401186 (= res!1889936 (and ((_ is Cons!50732) (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (= (_1!28895 (h!56607 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))))) key!3287)))))

(assert (=> d!1401186 (= (containsKey!1859 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) key!3287) e!2826643)))

(declare-fun b!4536259 () Bool)

(declare-fun e!2826644 () Bool)

(assert (=> b!4536259 (= e!2826643 e!2826644)))

(declare-fun res!1889937 () Bool)

(assert (=> b!4536259 (=> (not res!1889937) (not e!2826644))))

(assert (=> b!4536259 (= res!1889937 ((_ is Cons!50732) (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))))))

(declare-fun b!4536260 () Bool)

(assert (=> b!4536260 (= e!2826644 (containsKey!1859 (t!357818 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) key!3287))))

(assert (= (and d!1401186 (not res!1889936)) b!4536259))

(assert (= (and b!4536259 res!1889937) b!4536260))

(declare-fun m!5298555 () Bool)

(assert (=> b!4536260 m!5298555))

(assert (=> d!1400792 d!1401186))

(declare-fun bs!872167 () Bool)

(declare-fun b!4536264 () Bool)

(assert (= bs!872167 (and b!4536264 d!1400724)))

(declare-fun lambda!175428 () Int)

(assert (=> bs!872167 (not (= lambda!175428 lambda!175312))))

(declare-fun bs!872168 () Bool)

(assert (= bs!872168 (and b!4536264 b!4535309)))

(assert (=> bs!872168 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1710578) (= lambda!175428 lambda!175267))))

(declare-fun bs!872169 () Bool)

(assert (= bs!872169 (and b!4536264 b!4535797)))

(assert (=> bs!872169 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1710989) (= lambda!175428 lambda!175373))))

(declare-fun bs!872170 () Bool)

(assert (= bs!872170 (and b!4536264 b!4535625)))

(assert (=> bs!872170 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1710415) (= lambda!175428 lambda!175349))))

(declare-fun bs!872171 () Bool)

(assert (= bs!872171 (and b!4536264 b!4535622)))

(assert (=> bs!872171 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1710902) (= lambda!175428 lambda!175351))))

(declare-fun bs!872172 () Bool)

(assert (= bs!872172 (and b!4536264 d!1401004)))

(assert (=> bs!872172 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1711037) (= lambda!175428 lambda!175380))))

(declare-fun bs!872173 () Bool)

(assert (= bs!872173 (and b!4536264 b!4535800)))

(assert (=> bs!872173 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175428 lambda!175371))))

(declare-fun bs!872174 () Bool)

(assert (= bs!872174 (and b!4536264 b!4535542)))

(assert (=> bs!872174 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1710429) (= lambda!175428 lambda!175340))))

(declare-fun bs!872175 () Bool)

(assert (= bs!872175 (and b!4536264 b!4535669)))

(assert (=> bs!872175 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175428 lambda!175360))))

(assert (=> bs!872174 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1710840) (= lambda!175428 lambda!175341))))

(declare-fun bs!872176 () Bool)

(assert (= bs!872176 (and b!4536264 b!4535666)))

(assert (=> bs!872176 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1710938) (= lambda!175428 lambda!175362))))

(declare-fun bs!872177 () Bool)

(assert (= bs!872177 (and b!4536264 b!4535832)))

(assert (=> bs!872177 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175428 lambda!175377))))

(declare-fun bs!872178 () Bool)

(assert (= bs!872178 (and b!4536264 d!1401018)))

(assert (=> bs!872178 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1710902) (= lambda!175428 lambda!175389))))

(declare-fun bs!872179 () Bool)

(assert (= bs!872179 (and b!4536264 d!1400816)))

(assert (=> bs!872179 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1710851) (= lambda!175428 lambda!175344))))

(assert (=> bs!872176 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175428 lambda!175361))))

(declare-fun bs!872180 () Bool)

(assert (= bs!872180 (and b!4536264 b!4535829)))

(assert (=> bs!872180 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1711026) (= lambda!175428 lambda!175379))))

(assert (=> bs!872171 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1710415) (= lambda!175428 lambda!175350))))

(declare-fun bs!872181 () Bool)

(assert (= bs!872181 (and b!4536264 d!1400896)))

(assert (=> bs!872181 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1710949) (= lambda!175428 lambda!175363))))

(assert (=> bs!872180 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175428 lambda!175378))))

(assert (=> bs!872169 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175428 lambda!175372))))

(declare-fun bs!872182 () Bool)

(assert (= bs!872182 (and b!4536264 d!1400874)))

(assert (=> bs!872182 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1710913) (= lambda!175428 lambda!175352))))

(declare-fun bs!872183 () Bool)

(assert (= bs!872183 (and b!4536264 b!4535199)))

(assert (=> bs!872183 (not (= lambda!175428 lambda!175215))))

(declare-fun bs!872184 () Bool)

(assert (= bs!872184 (and b!4536264 b!4535545)))

(assert (=> bs!872184 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1710429) (= lambda!175428 lambda!175339))))

(declare-fun bs!872185 () Bool)

(assert (= bs!872185 (and b!4536264 d!1400980)))

(assert (=> bs!872185 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1711000) (= lambda!175428 lambda!175374))))

(declare-fun bs!872186 () Bool)

(assert (= bs!872186 (and b!4536264 d!1400628)))

(assert (=> bs!872186 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1710589) (= lambda!175428 lambda!175268))))

(assert (=> bs!872168 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1710448) (= lambda!175428 lambda!175266))))

(declare-fun bs!872188 () Bool)

(assert (= bs!872188 (and b!4536264 b!4535312)))

(assert (=> bs!872188 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1710448) (= lambda!175428 lambda!175265))))

(assert (=> b!4536264 true))

(declare-fun bs!872189 () Bool)

(declare-fun b!4536261 () Bool)

(assert (= bs!872189 (and b!4536261 b!4536264)))

(declare-fun lambda!175429 () Int)

(assert (=> bs!872189 (= lambda!175429 lambda!175428)))

(declare-fun bs!872190 () Bool)

(assert (= bs!872190 (and b!4536261 d!1400724)))

(assert (=> bs!872190 (not (= lambda!175429 lambda!175312))))

(declare-fun bs!872191 () Bool)

(assert (= bs!872191 (and b!4536261 b!4535309)))

(assert (=> bs!872191 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1710578) (= lambda!175429 lambda!175267))))

(declare-fun bs!872192 () Bool)

(assert (= bs!872192 (and b!4536261 b!4535797)))

(assert (=> bs!872192 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1710989) (= lambda!175429 lambda!175373))))

(declare-fun bs!872193 () Bool)

(assert (= bs!872193 (and b!4536261 b!4535625)))

(assert (=> bs!872193 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1710415) (= lambda!175429 lambda!175349))))

(declare-fun bs!872194 () Bool)

(assert (= bs!872194 (and b!4536261 b!4535622)))

(assert (=> bs!872194 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1710902) (= lambda!175429 lambda!175351))))

(declare-fun bs!872195 () Bool)

(assert (= bs!872195 (and b!4536261 d!1401004)))

(assert (=> bs!872195 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1711037) (= lambda!175429 lambda!175380))))

(declare-fun bs!872196 () Bool)

(assert (= bs!872196 (and b!4536261 b!4535800)))

(assert (=> bs!872196 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175429 lambda!175371))))

(declare-fun bs!872197 () Bool)

(assert (= bs!872197 (and b!4536261 b!4535542)))

(assert (=> bs!872197 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1710429) (= lambda!175429 lambda!175340))))

(declare-fun bs!872198 () Bool)

(assert (= bs!872198 (and b!4536261 b!4535669)))

(assert (=> bs!872198 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175429 lambda!175360))))

(assert (=> bs!872197 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1710840) (= lambda!175429 lambda!175341))))

(declare-fun bs!872199 () Bool)

(assert (= bs!872199 (and b!4536261 b!4535666)))

(assert (=> bs!872199 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1710938) (= lambda!175429 lambda!175362))))

(declare-fun bs!872200 () Bool)

(assert (= bs!872200 (and b!4536261 b!4535832)))

(assert (=> bs!872200 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175429 lambda!175377))))

(declare-fun bs!872201 () Bool)

(assert (= bs!872201 (and b!4536261 d!1401018)))

(assert (=> bs!872201 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1710902) (= lambda!175429 lambda!175389))))

(declare-fun bs!872202 () Bool)

(assert (= bs!872202 (and b!4536261 d!1400816)))

(assert (=> bs!872202 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1710851) (= lambda!175429 lambda!175344))))

(assert (=> bs!872199 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175429 lambda!175361))))

(declare-fun bs!872203 () Bool)

(assert (= bs!872203 (and b!4536261 b!4535829)))

(assert (=> bs!872203 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1711026) (= lambda!175429 lambda!175379))))

(assert (=> bs!872194 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1710415) (= lambda!175429 lambda!175350))))

(declare-fun bs!872204 () Bool)

(assert (= bs!872204 (and b!4536261 d!1400896)))

(assert (=> bs!872204 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1710949) (= lambda!175429 lambda!175363))))

(assert (=> bs!872203 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175429 lambda!175378))))

(assert (=> bs!872192 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175429 lambda!175372))))

(declare-fun bs!872205 () Bool)

(assert (= bs!872205 (and b!4536261 d!1400874)))

(assert (=> bs!872205 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1710913) (= lambda!175429 lambda!175352))))

(declare-fun bs!872206 () Bool)

(assert (= bs!872206 (and b!4536261 b!4535199)))

(assert (=> bs!872206 (not (= lambda!175429 lambda!175215))))

(declare-fun bs!872207 () Bool)

(assert (= bs!872207 (and b!4536261 b!4535545)))

(assert (=> bs!872207 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1710429) (= lambda!175429 lambda!175339))))

(declare-fun bs!872208 () Bool)

(assert (= bs!872208 (and b!4536261 d!1400980)))

(assert (=> bs!872208 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1711000) (= lambda!175429 lambda!175374))))

(declare-fun bs!872209 () Bool)

(assert (= bs!872209 (and b!4536261 d!1400628)))

(assert (=> bs!872209 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1710589) (= lambda!175429 lambda!175268))))

(assert (=> bs!872191 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1710448) (= lambda!175429 lambda!175266))))

(declare-fun bs!872210 () Bool)

(assert (= bs!872210 (and b!4536261 b!4535312)))

(assert (=> bs!872210 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1710448) (= lambda!175429 lambda!175265))))

(assert (=> b!4536261 true))

(declare-fun lambda!175430 () Int)

(declare-fun lt!1711268 () ListMap!3653)

(assert (=> bs!872189 (= (= lt!1711268 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175430 lambda!175428))))

(assert (=> bs!872190 (not (= lambda!175430 lambda!175312))))

(assert (=> bs!872191 (= (= lt!1711268 lt!1710578) (= lambda!175430 lambda!175267))))

(assert (=> bs!872192 (= (= lt!1711268 lt!1710989) (= lambda!175430 lambda!175373))))

(assert (=> bs!872193 (= (= lt!1711268 lt!1710415) (= lambda!175430 lambda!175349))))

(assert (=> bs!872194 (= (= lt!1711268 lt!1710902) (= lambda!175430 lambda!175351))))

(assert (=> bs!872195 (= (= lt!1711268 lt!1711037) (= lambda!175430 lambda!175380))))

(assert (=> bs!872196 (= (= lt!1711268 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175430 lambda!175371))))

(assert (=> bs!872197 (= (= lt!1711268 lt!1710429) (= lambda!175430 lambda!175340))))

(assert (=> bs!872198 (= (= lt!1711268 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175430 lambda!175360))))

(assert (=> bs!872197 (= (= lt!1711268 lt!1710840) (= lambda!175430 lambda!175341))))

(assert (=> bs!872199 (= (= lt!1711268 lt!1710938) (= lambda!175430 lambda!175362))))

(assert (=> bs!872200 (= (= lt!1711268 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175430 lambda!175377))))

(assert (=> bs!872201 (= (= lt!1711268 lt!1710902) (= lambda!175430 lambda!175389))))

(assert (=> b!4536261 (= (= lt!1711268 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175430 lambda!175429))))

(assert (=> bs!872202 (= (= lt!1711268 lt!1710851) (= lambda!175430 lambda!175344))))

(assert (=> bs!872199 (= (= lt!1711268 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175430 lambda!175361))))

(assert (=> bs!872203 (= (= lt!1711268 lt!1711026) (= lambda!175430 lambda!175379))))

(assert (=> bs!872194 (= (= lt!1711268 lt!1710415) (= lambda!175430 lambda!175350))))

(assert (=> bs!872204 (= (= lt!1711268 lt!1710949) (= lambda!175430 lambda!175363))))

(assert (=> bs!872203 (= (= lt!1711268 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175430 lambda!175378))))

(assert (=> bs!872192 (= (= lt!1711268 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175430 lambda!175372))))

(assert (=> bs!872205 (= (= lt!1711268 lt!1710913) (= lambda!175430 lambda!175352))))

(assert (=> bs!872206 (not (= lambda!175430 lambda!175215))))

(assert (=> bs!872207 (= (= lt!1711268 lt!1710429) (= lambda!175430 lambda!175339))))

(assert (=> bs!872208 (= (= lt!1711268 lt!1711000) (= lambda!175430 lambda!175374))))

(assert (=> bs!872209 (= (= lt!1711268 lt!1710589) (= lambda!175430 lambda!175268))))

(assert (=> bs!872191 (= (= lt!1711268 lt!1710448) (= lambda!175430 lambda!175266))))

(assert (=> bs!872210 (= (= lt!1711268 lt!1710448) (= lambda!175430 lambda!175265))))

(assert (=> b!4536261 true))

(declare-fun bs!872215 () Bool)

(declare-fun d!1401188 () Bool)

(assert (= bs!872215 (and d!1401188 b!4536264)))

(declare-fun lt!1711279 () ListMap!3653)

(declare-fun lambda!175431 () Int)

(assert (=> bs!872215 (= (= lt!1711279 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175431 lambda!175428))))

(declare-fun bs!872216 () Bool)

(assert (= bs!872216 (and d!1401188 b!4536261)))

(assert (=> bs!872216 (= (= lt!1711279 lt!1711268) (= lambda!175431 lambda!175430))))

(declare-fun bs!872217 () Bool)

(assert (= bs!872217 (and d!1401188 d!1400724)))

(assert (=> bs!872217 (not (= lambda!175431 lambda!175312))))

(declare-fun bs!872218 () Bool)

(assert (= bs!872218 (and d!1401188 b!4535309)))

(assert (=> bs!872218 (= (= lt!1711279 lt!1710578) (= lambda!175431 lambda!175267))))

(declare-fun bs!872219 () Bool)

(assert (= bs!872219 (and d!1401188 b!4535797)))

(assert (=> bs!872219 (= (= lt!1711279 lt!1710989) (= lambda!175431 lambda!175373))))

(declare-fun bs!872220 () Bool)

(assert (= bs!872220 (and d!1401188 b!4535625)))

(assert (=> bs!872220 (= (= lt!1711279 lt!1710415) (= lambda!175431 lambda!175349))))

(declare-fun bs!872221 () Bool)

(assert (= bs!872221 (and d!1401188 b!4535622)))

(assert (=> bs!872221 (= (= lt!1711279 lt!1710902) (= lambda!175431 lambda!175351))))

(declare-fun bs!872222 () Bool)

(assert (= bs!872222 (and d!1401188 d!1401004)))

(assert (=> bs!872222 (= (= lt!1711279 lt!1711037) (= lambda!175431 lambda!175380))))

(declare-fun bs!872223 () Bool)

(assert (= bs!872223 (and d!1401188 b!4535800)))

(assert (=> bs!872223 (= (= lt!1711279 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175431 lambda!175371))))

(declare-fun bs!872224 () Bool)

(assert (= bs!872224 (and d!1401188 b!4535542)))

(assert (=> bs!872224 (= (= lt!1711279 lt!1710429) (= lambda!175431 lambda!175340))))

(declare-fun bs!872225 () Bool)

(assert (= bs!872225 (and d!1401188 b!4535669)))

(assert (=> bs!872225 (= (= lt!1711279 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175431 lambda!175360))))

(assert (=> bs!872224 (= (= lt!1711279 lt!1710840) (= lambda!175431 lambda!175341))))

(declare-fun bs!872226 () Bool)

(assert (= bs!872226 (and d!1401188 b!4535666)))

(assert (=> bs!872226 (= (= lt!1711279 lt!1710938) (= lambda!175431 lambda!175362))))

(declare-fun bs!872227 () Bool)

(assert (= bs!872227 (and d!1401188 b!4535832)))

(assert (=> bs!872227 (= (= lt!1711279 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175431 lambda!175377))))

(declare-fun bs!872228 () Bool)

(assert (= bs!872228 (and d!1401188 d!1401018)))

(assert (=> bs!872228 (= (= lt!1711279 lt!1710902) (= lambda!175431 lambda!175389))))

(assert (=> bs!872216 (= (= lt!1711279 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175431 lambda!175429))))

(declare-fun bs!872230 () Bool)

(assert (= bs!872230 (and d!1401188 d!1400816)))

(assert (=> bs!872230 (= (= lt!1711279 lt!1710851) (= lambda!175431 lambda!175344))))

(assert (=> bs!872226 (= (= lt!1711279 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175431 lambda!175361))))

(declare-fun bs!872232 () Bool)

(assert (= bs!872232 (and d!1401188 b!4535829)))

(assert (=> bs!872232 (= (= lt!1711279 lt!1711026) (= lambda!175431 lambda!175379))))

(assert (=> bs!872221 (= (= lt!1711279 lt!1710415) (= lambda!175431 lambda!175350))))

(declare-fun bs!872235 () Bool)

(assert (= bs!872235 (and d!1401188 d!1400896)))

(assert (=> bs!872235 (= (= lt!1711279 lt!1710949) (= lambda!175431 lambda!175363))))

(assert (=> bs!872232 (= (= lt!1711279 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175431 lambda!175378))))

(assert (=> bs!872219 (= (= lt!1711279 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175431 lambda!175372))))

(declare-fun bs!872238 () Bool)

(assert (= bs!872238 (and d!1401188 d!1400874)))

(assert (=> bs!872238 (= (= lt!1711279 lt!1710913) (= lambda!175431 lambda!175352))))

(declare-fun bs!872240 () Bool)

(assert (= bs!872240 (and d!1401188 b!4535199)))

(assert (=> bs!872240 (not (= lambda!175431 lambda!175215))))

(declare-fun bs!872243 () Bool)

(assert (= bs!872243 (and d!1401188 b!4535545)))

(assert (=> bs!872243 (= (= lt!1711279 lt!1710429) (= lambda!175431 lambda!175339))))

(declare-fun bs!872244 () Bool)

(assert (= bs!872244 (and d!1401188 d!1400980)))

(assert (=> bs!872244 (= (= lt!1711279 lt!1711000) (= lambda!175431 lambda!175374))))

(declare-fun bs!872246 () Bool)

(assert (= bs!872246 (and d!1401188 d!1400628)))

(assert (=> bs!872246 (= (= lt!1711279 lt!1710589) (= lambda!175431 lambda!175268))))

(assert (=> bs!872218 (= (= lt!1711279 lt!1710448) (= lambda!175431 lambda!175266))))

(declare-fun bs!872248 () Bool)

(assert (= bs!872248 (and d!1401188 b!4535312)))

(assert (=> bs!872248 (= (= lt!1711279 lt!1710448) (= lambda!175431 lambda!175265))))

(assert (=> d!1401188 true))

(declare-fun bm!316258 () Bool)

(declare-fun call!316263 () Unit!97630)

(assert (=> bm!316258 (= call!316263 (lemmaContainsAllItsOwnKeys!359 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))))))

(declare-fun bm!316259 () Bool)

(declare-fun call!316264 () Bool)

(declare-fun c!774700 () Bool)

(assert (=> bm!316259 (= call!316264 (forall!10330 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (ite c!774700 lambda!175428 lambda!175430)))))

(declare-fun e!2826647 () ListMap!3653)

(assert (=> b!4536261 (= e!2826647 lt!1711268)))

(declare-fun lt!1711270 () ListMap!3653)

(assert (=> b!4536261 (= lt!1711270 (+!1593 (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) (h!56607 (_2!28896 (h!56608 (toList!4392 lt!1710421))))))))

(assert (=> b!4536261 (= lt!1711268 (addToMapMapFromBucket!719 (t!357818 (_2!28896 (h!56608 (toList!4392 lt!1710421)))) (+!1593 (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) (h!56607 (_2!28896 (h!56608 (toList!4392 lt!1710421)))))))))

(declare-fun lt!1711281 () Unit!97630)

(assert (=> b!4536261 (= lt!1711281 call!316263)))

(assert (=> b!4536261 (forall!10330 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) lambda!175429)))

(declare-fun lt!1711276 () Unit!97630)

(assert (=> b!4536261 (= lt!1711276 lt!1711281)))

(assert (=> b!4536261 (forall!10330 (toList!4391 lt!1711270) lambda!175430)))

(declare-fun lt!1711271 () Unit!97630)

(declare-fun Unit!97818 () Unit!97630)

(assert (=> b!4536261 (= lt!1711271 Unit!97818)))

(assert (=> b!4536261 (forall!10330 (t!357818 (_2!28896 (h!56608 (toList!4392 lt!1710421)))) lambda!175430)))

(declare-fun lt!1711273 () Unit!97630)

(declare-fun Unit!97819 () Unit!97630)

(assert (=> b!4536261 (= lt!1711273 Unit!97819)))

(declare-fun lt!1711267 () Unit!97630)

(declare-fun Unit!97820 () Unit!97630)

(assert (=> b!4536261 (= lt!1711267 Unit!97820)))

(declare-fun lt!1711285 () Unit!97630)

(assert (=> b!4536261 (= lt!1711285 (forallContained!2591 (toList!4391 lt!1711270) lambda!175430 (h!56607 (_2!28896 (h!56608 (toList!4392 lt!1710421))))))))

(assert (=> b!4536261 (contains!13513 lt!1711270 (_1!28895 (h!56607 (_2!28896 (h!56608 (toList!4392 lt!1710421))))))))

(declare-fun lt!1711265 () Unit!97630)

(declare-fun Unit!97821 () Unit!97630)

(assert (=> b!4536261 (= lt!1711265 Unit!97821)))

(assert (=> b!4536261 (contains!13513 lt!1711268 (_1!28895 (h!56607 (_2!28896 (h!56608 (toList!4392 lt!1710421))))))))

(declare-fun lt!1711277 () Unit!97630)

(declare-fun Unit!97822 () Unit!97630)

(assert (=> b!4536261 (= lt!1711277 Unit!97822)))

(assert (=> b!4536261 (forall!10330 (_2!28896 (h!56608 (toList!4392 lt!1710421))) lambda!175430)))

(declare-fun lt!1711280 () Unit!97630)

(declare-fun Unit!97823 () Unit!97630)

(assert (=> b!4536261 (= lt!1711280 Unit!97823)))

(assert (=> b!4536261 (forall!10330 (toList!4391 lt!1711270) lambda!175430)))

(declare-fun lt!1711266 () Unit!97630)

(declare-fun Unit!97824 () Unit!97630)

(assert (=> b!4536261 (= lt!1711266 Unit!97824)))

(declare-fun lt!1711269 () Unit!97630)

(declare-fun Unit!97825 () Unit!97630)

(assert (=> b!4536261 (= lt!1711269 Unit!97825)))

(declare-fun lt!1711282 () Unit!97630)

(assert (=> b!4536261 (= lt!1711282 (addForallContainsKeyThenBeforeAdding!359 (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1711268 (_1!28895 (h!56607 (_2!28896 (h!56608 (toList!4392 lt!1710421))))) (_2!28895 (h!56607 (_2!28896 (h!56608 (toList!4392 lt!1710421)))))))))

(assert (=> b!4536261 (forall!10330 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) lambda!175430)))

(declare-fun lt!1711274 () Unit!97630)

(assert (=> b!4536261 (= lt!1711274 lt!1711282)))

(assert (=> b!4536261 (forall!10330 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) lambda!175430)))

(declare-fun lt!1711272 () Unit!97630)

(declare-fun Unit!97826 () Unit!97630)

(assert (=> b!4536261 (= lt!1711272 Unit!97826)))

(declare-fun res!1889938 () Bool)

(declare-fun call!316265 () Bool)

(assert (=> b!4536261 (= res!1889938 call!316265)))

(declare-fun e!2826646 () Bool)

(assert (=> b!4536261 (=> (not res!1889938) (not e!2826646))))

(assert (=> b!4536261 e!2826646))

(declare-fun lt!1711275 () Unit!97630)

(declare-fun Unit!97827 () Unit!97630)

(assert (=> b!4536261 (= lt!1711275 Unit!97827)))

(declare-fun b!4536262 () Bool)

(declare-fun e!2826645 () Bool)

(assert (=> b!4536262 (= e!2826645 (invariantList!1039 (toList!4391 lt!1711279)))))

(declare-fun b!4536263 () Bool)

(declare-fun res!1889939 () Bool)

(assert (=> b!4536263 (=> (not res!1889939) (not e!2826645))))

(assert (=> b!4536263 (= res!1889939 (forall!10330 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) lambda!175431))))

(declare-fun bm!316260 () Bool)

(assert (=> bm!316260 (= call!316265 (forall!10330 (ite c!774700 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (_2!28896 (h!56608 (toList!4392 lt!1710421)))) (ite c!774700 lambda!175428 lambda!175430)))))

(declare-fun b!4536265 () Bool)

(assert (=> b!4536265 (= e!2826646 call!316264)))

(assert (=> b!4536264 (= e!2826647 (extractMap!1248 (t!357819 (toList!4392 lt!1710421))))))

(declare-fun lt!1711278 () Unit!97630)

(assert (=> b!4536264 (= lt!1711278 call!316263)))

(assert (=> b!4536264 call!316264))

(declare-fun lt!1711284 () Unit!97630)

(assert (=> b!4536264 (= lt!1711284 lt!1711278)))

(assert (=> b!4536264 call!316265))

(declare-fun lt!1711283 () Unit!97630)

(declare-fun Unit!97828 () Unit!97630)

(assert (=> b!4536264 (= lt!1711283 Unit!97828)))

(assert (=> d!1401188 e!2826645))

(declare-fun res!1889940 () Bool)

(assert (=> d!1401188 (=> (not res!1889940) (not e!2826645))))

(assert (=> d!1401188 (= res!1889940 (forall!10330 (_2!28896 (h!56608 (toList!4392 lt!1710421))) lambda!175431))))

(assert (=> d!1401188 (= lt!1711279 e!2826647)))

(assert (=> d!1401188 (= c!774700 ((_ is Nil!50732) (_2!28896 (h!56608 (toList!4392 lt!1710421)))))))

(assert (=> d!1401188 (noDuplicateKeys!1192 (_2!28896 (h!56608 (toList!4392 lt!1710421))))))

(assert (=> d!1401188 (= (addToMapMapFromBucket!719 (_2!28896 (h!56608 (toList!4392 lt!1710421))) (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) lt!1711279)))

(assert (= (and d!1401188 c!774700) b!4536264))

(assert (= (and d!1401188 (not c!774700)) b!4536261))

(assert (= (and b!4536261 res!1889938) b!4536265))

(assert (= (or b!4536264 b!4536265) bm!316259))

(assert (= (or b!4536264 b!4536261) bm!316260))

(assert (= (or b!4536264 b!4536261) bm!316258))

(assert (= (and d!1401188 res!1889940) b!4536263))

(assert (= (and b!4536263 res!1889939) b!4536262))

(declare-fun m!5298583 () Bool)

(assert (=> b!4536262 m!5298583))

(declare-fun m!5298585 () Bool)

(assert (=> d!1401188 m!5298585))

(declare-fun m!5298587 () Bool)

(assert (=> d!1401188 m!5298587))

(declare-fun m!5298589 () Bool)

(assert (=> bm!316260 m!5298589))

(declare-fun m!5298591 () Bool)

(assert (=> b!4536261 m!5298591))

(declare-fun m!5298593 () Bool)

(assert (=> b!4536261 m!5298593))

(declare-fun m!5298595 () Bool)

(assert (=> b!4536261 m!5298595))

(declare-fun m!5298597 () Bool)

(assert (=> b!4536261 m!5298597))

(assert (=> b!4536261 m!5297283))

(declare-fun m!5298599 () Bool)

(assert (=> b!4536261 m!5298599))

(declare-fun m!5298601 () Bool)

(assert (=> b!4536261 m!5298601))

(declare-fun m!5298603 () Bool)

(assert (=> b!4536261 m!5298603))

(assert (=> b!4536261 m!5298591))

(declare-fun m!5298605 () Bool)

(assert (=> b!4536261 m!5298605))

(assert (=> b!4536261 m!5297283))

(assert (=> b!4536261 m!5298601))

(declare-fun m!5298607 () Bool)

(assert (=> b!4536261 m!5298607))

(declare-fun m!5298609 () Bool)

(assert (=> b!4536261 m!5298609))

(assert (=> b!4536261 m!5298593))

(declare-fun m!5298611 () Bool)

(assert (=> b!4536261 m!5298611))

(assert (=> bm!316258 m!5297283))

(declare-fun m!5298613 () Bool)

(assert (=> bm!316258 m!5298613))

(declare-fun m!5298615 () Bool)

(assert (=> bm!316259 m!5298615))

(declare-fun m!5298617 () Bool)

(assert (=> b!4536263 m!5298617))

(assert (=> b!4535494 d!1401188))

(declare-fun bs!872261 () Bool)

(declare-fun d!1401212 () Bool)

(assert (= bs!872261 (and d!1401212 d!1400702)))

(declare-fun lambda!175435 () Int)

(assert (=> bs!872261 (= lambda!175435 lambda!175303)))

(declare-fun bs!872262 () Bool)

(assert (= bs!872262 (and d!1401212 d!1400982)))

(assert (=> bs!872262 (= lambda!175435 lambda!175375)))

(declare-fun bs!872263 () Bool)

(assert (= bs!872263 (and d!1401212 d!1400794)))

(assert (=> bs!872263 (= lambda!175435 lambda!175332)))

(declare-fun bs!872264 () Bool)

(assert (= bs!872264 (and d!1401212 d!1400876)))

(assert (=> bs!872264 (= lambda!175435 lambda!175353)))

(declare-fun bs!872265 () Bool)

(assert (= bs!872265 (and d!1401212 b!4535199)))

(assert (=> bs!872265 (not (= lambda!175435 lambda!175214))))

(declare-fun bs!872266 () Bool)

(assert (= bs!872266 (and d!1401212 d!1400704)))

(assert (=> bs!872266 (not (= lambda!175435 lambda!175306))))

(declare-fun bs!872267 () Bool)

(assert (= bs!872267 (and d!1401212 d!1400786)))

(assert (=> bs!872267 (= lambda!175435 lambda!175330)))

(declare-fun bs!872268 () Bool)

(assert (= bs!872268 (and d!1401212 d!1400790)))

(assert (=> bs!872268 (= lambda!175435 lambda!175331)))

(declare-fun bs!872269 () Bool)

(assert (= bs!872269 (and d!1401212 d!1400748)))

(assert (=> bs!872269 (= lambda!175435 lambda!175316)))

(declare-fun bs!872270 () Bool)

(assert (= bs!872270 (and d!1401212 d!1400708)))

(assert (=> bs!872270 (= lambda!175435 lambda!175309)))

(declare-fun bs!872271 () Bool)

(assert (= bs!872271 (and d!1401212 d!1400898)))

(assert (=> bs!872271 (= lambda!175435 lambda!175364)))

(declare-fun bs!872272 () Bool)

(assert (= bs!872272 (and d!1401212 d!1400798)))

(assert (=> bs!872272 (= lambda!175435 lambda!175338)))

(declare-fun bs!872273 () Bool)

(assert (= bs!872273 (and d!1401212 start!449928)))

(assert (=> bs!872273 (= lambda!175435 lambda!175213)))

(declare-fun bs!872274 () Bool)

(assert (= bs!872274 (and d!1401212 d!1400752)))

(assert (=> bs!872274 (= lambda!175435 lambda!175322)))

(declare-fun bs!872275 () Bool)

(assert (= bs!872275 (and d!1401212 d!1400854)))

(assert (=> bs!872275 (= lambda!175435 lambda!175348)))

(declare-fun bs!872276 () Bool)

(assert (= bs!872276 (and d!1401212 d!1400780)))

(assert (=> bs!872276 (= lambda!175435 lambda!175325)))

(declare-fun lt!1711313 () ListMap!3653)

(assert (=> d!1401212 (invariantList!1039 (toList!4391 lt!1711313))))

(declare-fun e!2826663 () ListMap!3653)

(assert (=> d!1401212 (= lt!1711313 e!2826663)))

(declare-fun c!774702 () Bool)

(assert (=> d!1401212 (= c!774702 ((_ is Cons!50733) (t!357819 (toList!4392 lt!1710421))))))

(assert (=> d!1401212 (forall!10329 (t!357819 (toList!4392 lt!1710421)) lambda!175435)))

(assert (=> d!1401212 (= (extractMap!1248 (t!357819 (toList!4392 lt!1710421))) lt!1711313)))

(declare-fun b!4536283 () Bool)

(assert (=> b!4536283 (= e!2826663 (addToMapMapFromBucket!719 (_2!28896 (h!56608 (t!357819 (toList!4392 lt!1710421)))) (extractMap!1248 (t!357819 (t!357819 (toList!4392 lt!1710421))))))))

(declare-fun b!4536284 () Bool)

(assert (=> b!4536284 (= e!2826663 (ListMap!3654 Nil!50732))))

(assert (= (and d!1401212 c!774702) b!4536283))

(assert (= (and d!1401212 (not c!774702)) b!4536284))

(declare-fun m!5298619 () Bool)

(assert (=> d!1401212 m!5298619))

(declare-fun m!5298621 () Bool)

(assert (=> d!1401212 m!5298621))

(declare-fun m!5298623 () Bool)

(assert (=> b!4536283 m!5298623))

(assert (=> b!4536283 m!5298623))

(declare-fun m!5298625 () Bool)

(assert (=> b!4536283 m!5298625))

(assert (=> b!4535494 d!1401212))

(assert (=> b!4535510 d!1401058))

(declare-fun d!1401214 () Bool)

(declare-fun c!774703 () Bool)

(assert (=> d!1401214 (= c!774703 ((_ is Nil!50732) (toList!4391 lt!1710415)))))

(declare-fun e!2826664 () (InoxSet tuple2!51202))

(assert (=> d!1401214 (= (content!8420 (toList!4391 lt!1710415)) e!2826664)))

(declare-fun b!4536285 () Bool)

(assert (=> b!4536285 (= e!2826664 ((as const (Array tuple2!51202 Bool)) false))))

(declare-fun b!4536286 () Bool)

(assert (=> b!4536286 (= e!2826664 ((_ map or) (store ((as const (Array tuple2!51202 Bool)) false) (h!56607 (toList!4391 lt!1710415)) true) (content!8420 (t!357818 (toList!4391 lt!1710415)))))))

(assert (= (and d!1401214 c!774703) b!4536285))

(assert (= (and d!1401214 (not c!774703)) b!4536286))

(declare-fun m!5298627 () Bool)

(assert (=> b!4536286 m!5298627))

(declare-fun m!5298629 () Bool)

(assert (=> b!4536286 m!5298629))

(assert (=> d!1400778 d!1401214))

(declare-fun d!1401216 () Bool)

(declare-fun c!774704 () Bool)

(assert (=> d!1401216 (= c!774704 ((_ is Nil!50732) (toList!4391 lt!1710429)))))

(declare-fun e!2826665 () (InoxSet tuple2!51202))

(assert (=> d!1401216 (= (content!8420 (toList!4391 lt!1710429)) e!2826665)))

(declare-fun b!4536287 () Bool)

(assert (=> b!4536287 (= e!2826665 ((as const (Array tuple2!51202 Bool)) false))))

(declare-fun b!4536288 () Bool)

(assert (=> b!4536288 (= e!2826665 ((_ map or) (store ((as const (Array tuple2!51202 Bool)) false) (h!56607 (toList!4391 lt!1710429)) true) (content!8420 (t!357818 (toList!4391 lt!1710429)))))))

(assert (= (and d!1401216 c!774704) b!4536287))

(assert (= (and d!1401216 (not c!774704)) b!4536288))

(declare-fun m!5298631 () Bool)

(assert (=> b!4536288 m!5298631))

(declare-fun m!5298633 () Bool)

(assert (=> b!4536288 m!5298633))

(assert (=> d!1400778 d!1401216))

(declare-fun d!1401218 () Bool)

(assert (=> d!1401218 (dynLambda!21203 lambda!175214 (h!56608 (toList!4392 lm!1477)))))

(assert (=> d!1401218 true))

(declare-fun _$7!1929 () Unit!97630)

(assert (=> d!1401218 (= (choose!29814 (toList!4392 lm!1477) lambda!175214 (h!56608 (toList!4392 lm!1477))) _$7!1929)))

(declare-fun b_lambda!157297 () Bool)

(assert (=> (not b_lambda!157297) (not d!1401218)))

(declare-fun bs!872287 () Bool)

(assert (= bs!872287 d!1401218))

(assert (=> bs!872287 m!5297511))

(assert (=> d!1400866 d!1401218))

(declare-fun d!1401220 () Bool)

(declare-fun res!1889956 () Bool)

(declare-fun e!2826666 () Bool)

(assert (=> d!1401220 (=> res!1889956 e!2826666)))

(assert (=> d!1401220 (= res!1889956 ((_ is Nil!50733) (toList!4392 lm!1477)))))

(assert (=> d!1401220 (= (forall!10329 (toList!4392 lm!1477) lambda!175214) e!2826666)))

(declare-fun b!4536289 () Bool)

(declare-fun e!2826667 () Bool)

(assert (=> b!4536289 (= e!2826666 e!2826667)))

(declare-fun res!1889957 () Bool)

(assert (=> b!4536289 (=> (not res!1889957) (not e!2826667))))

(assert (=> b!4536289 (= res!1889957 (dynLambda!21203 lambda!175214 (h!56608 (toList!4392 lm!1477))))))

(declare-fun b!4536290 () Bool)

(assert (=> b!4536290 (= e!2826667 (forall!10329 (t!357819 (toList!4392 lm!1477)) lambda!175214))))

(assert (= (and d!1401220 (not res!1889956)) b!4536289))

(assert (= (and b!4536289 res!1889957) b!4536290))

(declare-fun b_lambda!157299 () Bool)

(assert (=> (not b_lambda!157299) (not b!4536289)))

(assert (=> b!4536289 m!5297511))

(declare-fun m!5298635 () Bool)

(assert (=> b!4536290 m!5298635))

(assert (=> d!1400866 d!1401220))

(declare-fun bs!872291 () Bool)

(declare-fun b!4536294 () Bool)

(assert (= bs!872291 (and b!4536294 b!4536264)))

(declare-fun lambda!175437 () Int)

(assert (=> bs!872291 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175437 lambda!175428))))

(declare-fun bs!872292 () Bool)

(assert (= bs!872292 (and b!4536294 d!1400724)))

(assert (=> bs!872292 (not (= lambda!175437 lambda!175312))))

(declare-fun bs!872293 () Bool)

(assert (= bs!872293 (and b!4536294 b!4535309)))

(assert (=> bs!872293 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1710578) (= lambda!175437 lambda!175267))))

(declare-fun bs!872294 () Bool)

(assert (= bs!872294 (and b!4536294 b!4535797)))

(assert (=> bs!872294 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1710989) (= lambda!175437 lambda!175373))))

(declare-fun bs!872295 () Bool)

(assert (= bs!872295 (and b!4536294 b!4535625)))

(assert (=> bs!872295 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1710415) (= lambda!175437 lambda!175349))))

(declare-fun bs!872296 () Bool)

(assert (= bs!872296 (and b!4536294 b!4535622)))

(assert (=> bs!872296 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1710902) (= lambda!175437 lambda!175351))))

(declare-fun bs!872297 () Bool)

(assert (= bs!872297 (and b!4536294 d!1401004)))

(assert (=> bs!872297 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1711037) (= lambda!175437 lambda!175380))))

(declare-fun bs!872298 () Bool)

(assert (= bs!872298 (and b!4536294 b!4535800)))

(assert (=> bs!872298 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175437 lambda!175371))))

(declare-fun bs!872299 () Bool)

(assert (= bs!872299 (and b!4536294 b!4535542)))

(assert (=> bs!872299 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1710429) (= lambda!175437 lambda!175340))))

(declare-fun bs!872300 () Bool)

(assert (= bs!872300 (and b!4536294 b!4535669)))

(assert (=> bs!872300 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175437 lambda!175360))))

(assert (=> bs!872299 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1710840) (= lambda!175437 lambda!175341))))

(declare-fun bs!872301 () Bool)

(assert (= bs!872301 (and b!4536294 b!4535666)))

(assert (=> bs!872301 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1710938) (= lambda!175437 lambda!175362))))

(declare-fun bs!872302 () Bool)

(assert (= bs!872302 (and b!4536294 b!4535832)))

(assert (=> bs!872302 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175437 lambda!175377))))

(declare-fun bs!872303 () Bool)

(assert (= bs!872303 (and b!4536294 d!1401018)))

(assert (=> bs!872303 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1710902) (= lambda!175437 lambda!175389))))

(declare-fun bs!872304 () Bool)

(assert (= bs!872304 (and b!4536294 b!4536261)))

(assert (=> bs!872304 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175437 lambda!175429))))

(declare-fun bs!872305 () Bool)

(assert (= bs!872305 (and b!4536294 d!1400816)))

(assert (=> bs!872305 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1710851) (= lambda!175437 lambda!175344))))

(assert (=> bs!872301 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175437 lambda!175361))))

(declare-fun bs!872306 () Bool)

(assert (= bs!872306 (and b!4536294 b!4535829)))

(assert (=> bs!872306 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1711026) (= lambda!175437 lambda!175379))))

(assert (=> bs!872296 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1710415) (= lambda!175437 lambda!175350))))

(declare-fun bs!872307 () Bool)

(assert (= bs!872307 (and b!4536294 d!1401188)))

(assert (=> bs!872307 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1711279) (= lambda!175437 lambda!175431))))

(assert (=> bs!872304 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1711268) (= lambda!175437 lambda!175430))))

(declare-fun bs!872308 () Bool)

(assert (= bs!872308 (and b!4536294 d!1400896)))

(assert (=> bs!872308 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1710949) (= lambda!175437 lambda!175363))))

(assert (=> bs!872306 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175437 lambda!175378))))

(assert (=> bs!872294 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175437 lambda!175372))))

(declare-fun bs!872309 () Bool)

(assert (= bs!872309 (and b!4536294 d!1400874)))

(assert (=> bs!872309 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1710913) (= lambda!175437 lambda!175352))))

(declare-fun bs!872310 () Bool)

(assert (= bs!872310 (and b!4536294 b!4535199)))

(assert (=> bs!872310 (not (= lambda!175437 lambda!175215))))

(declare-fun bs!872311 () Bool)

(assert (= bs!872311 (and b!4536294 b!4535545)))

(assert (=> bs!872311 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1710429) (= lambda!175437 lambda!175339))))

(declare-fun bs!872312 () Bool)

(assert (= bs!872312 (and b!4536294 d!1400980)))

(assert (=> bs!872312 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1711000) (= lambda!175437 lambda!175374))))

(declare-fun bs!872313 () Bool)

(assert (= bs!872313 (and b!4536294 d!1400628)))

(assert (=> bs!872313 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1710589) (= lambda!175437 lambda!175268))))

(assert (=> bs!872293 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1710448) (= lambda!175437 lambda!175266))))

(declare-fun bs!872314 () Bool)

(assert (= bs!872314 (and b!4536294 b!4535312)))

(assert (=> bs!872314 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1710448) (= lambda!175437 lambda!175265))))

(assert (=> b!4536294 true))

(declare-fun bs!872315 () Bool)

(declare-fun b!4536291 () Bool)

(assert (= bs!872315 (and b!4536291 b!4536264)))

(declare-fun lambda!175438 () Int)

(assert (=> bs!872315 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175438 lambda!175428))))

(declare-fun bs!872316 () Bool)

(assert (= bs!872316 (and b!4536291 d!1400724)))

(assert (=> bs!872316 (not (= lambda!175438 lambda!175312))))

(declare-fun bs!872317 () Bool)

(assert (= bs!872317 (and b!4536291 b!4535309)))

(assert (=> bs!872317 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1710578) (= lambda!175438 lambda!175267))))

(declare-fun bs!872318 () Bool)

(assert (= bs!872318 (and b!4536291 b!4535797)))

(assert (=> bs!872318 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1710989) (= lambda!175438 lambda!175373))))

(declare-fun bs!872320 () Bool)

(assert (= bs!872320 (and b!4536291 b!4535625)))

(assert (=> bs!872320 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1710415) (= lambda!175438 lambda!175349))))

(declare-fun bs!872321 () Bool)

(assert (= bs!872321 (and b!4536291 b!4535622)))

(assert (=> bs!872321 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1710902) (= lambda!175438 lambda!175351))))

(declare-fun bs!872322 () Bool)

(assert (= bs!872322 (and b!4536291 d!1401004)))

(assert (=> bs!872322 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1711037) (= lambda!175438 lambda!175380))))

(declare-fun bs!872323 () Bool)

(assert (= bs!872323 (and b!4536291 b!4535800)))

(assert (=> bs!872323 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175438 lambda!175371))))

(declare-fun bs!872324 () Bool)

(assert (= bs!872324 (and b!4536291 b!4535542)))

(assert (=> bs!872324 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1710429) (= lambda!175438 lambda!175340))))

(declare-fun bs!872325 () Bool)

(assert (= bs!872325 (and b!4536291 b!4535669)))

(assert (=> bs!872325 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175438 lambda!175360))))

(assert (=> bs!872324 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1710840) (= lambda!175438 lambda!175341))))

(declare-fun bs!872326 () Bool)

(assert (= bs!872326 (and b!4536291 b!4535666)))

(assert (=> bs!872326 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1710938) (= lambda!175438 lambda!175362))))

(declare-fun bs!872327 () Bool)

(assert (= bs!872327 (and b!4536291 b!4535832)))

(assert (=> bs!872327 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175438 lambda!175377))))

(declare-fun bs!872328 () Bool)

(assert (= bs!872328 (and b!4536291 d!1401018)))

(assert (=> bs!872328 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1710902) (= lambda!175438 lambda!175389))))

(declare-fun bs!872329 () Bool)

(assert (= bs!872329 (and b!4536291 b!4536261)))

(assert (=> bs!872329 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175438 lambda!175429))))

(declare-fun bs!872330 () Bool)

(assert (= bs!872330 (and b!4536291 d!1400816)))

(assert (=> bs!872330 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1710851) (= lambda!175438 lambda!175344))))

(assert (=> bs!872326 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175438 lambda!175361))))

(declare-fun bs!872331 () Bool)

(assert (= bs!872331 (and b!4536291 b!4535829)))

(assert (=> bs!872331 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1711026) (= lambda!175438 lambda!175379))))

(assert (=> bs!872321 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1710415) (= lambda!175438 lambda!175350))))

(declare-fun bs!872332 () Bool)

(assert (= bs!872332 (and b!4536291 d!1401188)))

(assert (=> bs!872332 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1711279) (= lambda!175438 lambda!175431))))

(declare-fun bs!872333 () Bool)

(assert (= bs!872333 (and b!4536291 b!4536294)))

(assert (=> bs!872333 (= lambda!175438 lambda!175437)))

(assert (=> bs!872329 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1711268) (= lambda!175438 lambda!175430))))

(declare-fun bs!872334 () Bool)

(assert (= bs!872334 (and b!4536291 d!1400896)))

(assert (=> bs!872334 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1710949) (= lambda!175438 lambda!175363))))

(assert (=> bs!872331 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175438 lambda!175378))))

(assert (=> bs!872318 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175438 lambda!175372))))

(declare-fun bs!872335 () Bool)

(assert (= bs!872335 (and b!4536291 d!1400874)))

(assert (=> bs!872335 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1710913) (= lambda!175438 lambda!175352))))

(declare-fun bs!872336 () Bool)

(assert (= bs!872336 (and b!4536291 b!4535199)))

(assert (=> bs!872336 (not (= lambda!175438 lambda!175215))))

(declare-fun bs!872337 () Bool)

(assert (= bs!872337 (and b!4536291 b!4535545)))

(assert (=> bs!872337 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1710429) (= lambda!175438 lambda!175339))))

(declare-fun bs!872338 () Bool)

(assert (= bs!872338 (and b!4536291 d!1400980)))

(assert (=> bs!872338 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1711000) (= lambda!175438 lambda!175374))))

(declare-fun bs!872339 () Bool)

(assert (= bs!872339 (and b!4536291 d!1400628)))

(assert (=> bs!872339 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1710589) (= lambda!175438 lambda!175268))))

(assert (=> bs!872317 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1710448) (= lambda!175438 lambda!175266))))

(declare-fun bs!872340 () Bool)

(assert (= bs!872340 (and b!4536291 b!4535312)))

(assert (=> bs!872340 (= (= (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1710448) (= lambda!175438 lambda!175265))))

(assert (=> b!4536291 true))

(declare-fun lt!1711317 () ListMap!3653)

(declare-fun lambda!175439 () Int)

(assert (=> bs!872315 (= (= lt!1711317 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175439 lambda!175428))))

(assert (=> b!4536291 (= (= lt!1711317 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175439 lambda!175438))))

(assert (=> bs!872316 (not (= lambda!175439 lambda!175312))))

(assert (=> bs!872317 (= (= lt!1711317 lt!1710578) (= lambda!175439 lambda!175267))))

(assert (=> bs!872318 (= (= lt!1711317 lt!1710989) (= lambda!175439 lambda!175373))))

(assert (=> bs!872320 (= (= lt!1711317 lt!1710415) (= lambda!175439 lambda!175349))))

(assert (=> bs!872321 (= (= lt!1711317 lt!1710902) (= lambda!175439 lambda!175351))))

(assert (=> bs!872322 (= (= lt!1711317 lt!1711037) (= lambda!175439 lambda!175380))))

(assert (=> bs!872323 (= (= lt!1711317 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175439 lambda!175371))))

(assert (=> bs!872324 (= (= lt!1711317 lt!1710429) (= lambda!175439 lambda!175340))))

(assert (=> bs!872325 (= (= lt!1711317 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175439 lambda!175360))))

(assert (=> bs!872324 (= (= lt!1711317 lt!1710840) (= lambda!175439 lambda!175341))))

(assert (=> bs!872326 (= (= lt!1711317 lt!1710938) (= lambda!175439 lambda!175362))))

(assert (=> bs!872327 (= (= lt!1711317 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175439 lambda!175377))))

(assert (=> bs!872328 (= (= lt!1711317 lt!1710902) (= lambda!175439 lambda!175389))))

(assert (=> bs!872329 (= (= lt!1711317 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175439 lambda!175429))))

(assert (=> bs!872330 (= (= lt!1711317 lt!1710851) (= lambda!175439 lambda!175344))))

(assert (=> bs!872326 (= (= lt!1711317 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175439 lambda!175361))))

(assert (=> bs!872331 (= (= lt!1711317 lt!1711026) (= lambda!175439 lambda!175379))))

(assert (=> bs!872321 (= (= lt!1711317 lt!1710415) (= lambda!175439 lambda!175350))))

(assert (=> bs!872332 (= (= lt!1711317 lt!1711279) (= lambda!175439 lambda!175431))))

(assert (=> bs!872333 (= (= lt!1711317 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175439 lambda!175437))))

(assert (=> bs!872329 (= (= lt!1711317 lt!1711268) (= lambda!175439 lambda!175430))))

(assert (=> bs!872334 (= (= lt!1711317 lt!1710949) (= lambda!175439 lambda!175363))))

(assert (=> bs!872331 (= (= lt!1711317 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175439 lambda!175378))))

(assert (=> bs!872318 (= (= lt!1711317 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175439 lambda!175372))))

(assert (=> bs!872335 (= (= lt!1711317 lt!1710913) (= lambda!175439 lambda!175352))))

(assert (=> bs!872336 (not (= lambda!175439 lambda!175215))))

(assert (=> bs!872337 (= (= lt!1711317 lt!1710429) (= lambda!175439 lambda!175339))))

(assert (=> bs!872338 (= (= lt!1711317 lt!1711000) (= lambda!175439 lambda!175374))))

(assert (=> bs!872339 (= (= lt!1711317 lt!1710589) (= lambda!175439 lambda!175268))))

(assert (=> bs!872317 (= (= lt!1711317 lt!1710448) (= lambda!175439 lambda!175266))))

(assert (=> bs!872340 (= (= lt!1711317 lt!1710448) (= lambda!175439 lambda!175265))))

(assert (=> b!4536291 true))

(declare-fun bs!872345 () Bool)

(declare-fun d!1401222 () Bool)

(assert (= bs!872345 (and d!1401222 b!4536264)))

(declare-fun lt!1711328 () ListMap!3653)

(declare-fun lambda!175440 () Int)

(assert (=> bs!872345 (= (= lt!1711328 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175440 lambda!175428))))

(declare-fun bs!872346 () Bool)

(assert (= bs!872346 (and d!1401222 b!4536291)))

(assert (=> bs!872346 (= (= lt!1711328 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175440 lambda!175438))))

(declare-fun bs!872347 () Bool)

(assert (= bs!872347 (and d!1401222 d!1400724)))

(assert (=> bs!872347 (not (= lambda!175440 lambda!175312))))

(declare-fun bs!872348 () Bool)

(assert (= bs!872348 (and d!1401222 b!4535309)))

(assert (=> bs!872348 (= (= lt!1711328 lt!1710578) (= lambda!175440 lambda!175267))))

(declare-fun bs!872349 () Bool)

(assert (= bs!872349 (and d!1401222 b!4535797)))

(assert (=> bs!872349 (= (= lt!1711328 lt!1710989) (= lambda!175440 lambda!175373))))

(declare-fun bs!872350 () Bool)

(assert (= bs!872350 (and d!1401222 b!4535625)))

(assert (=> bs!872350 (= (= lt!1711328 lt!1710415) (= lambda!175440 lambda!175349))))

(declare-fun bs!872351 () Bool)

(assert (= bs!872351 (and d!1401222 b!4535622)))

(assert (=> bs!872351 (= (= lt!1711328 lt!1710902) (= lambda!175440 lambda!175351))))

(declare-fun bs!872352 () Bool)

(assert (= bs!872352 (and d!1401222 d!1401004)))

(assert (=> bs!872352 (= (= lt!1711328 lt!1711037) (= lambda!175440 lambda!175380))))

(declare-fun bs!872353 () Bool)

(assert (= bs!872353 (and d!1401222 b!4535800)))

(assert (=> bs!872353 (= (= lt!1711328 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175440 lambda!175371))))

(declare-fun bs!872354 () Bool)

(assert (= bs!872354 (and d!1401222 b!4535542)))

(assert (=> bs!872354 (= (= lt!1711328 lt!1710429) (= lambda!175440 lambda!175340))))

(declare-fun bs!872355 () Bool)

(assert (= bs!872355 (and d!1401222 b!4535669)))

(assert (=> bs!872355 (= (= lt!1711328 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175440 lambda!175360))))

(assert (=> bs!872354 (= (= lt!1711328 lt!1710840) (= lambda!175440 lambda!175341))))

(assert (=> bs!872346 (= (= lt!1711328 lt!1711317) (= lambda!175440 lambda!175439))))

(declare-fun bs!872356 () Bool)

(assert (= bs!872356 (and d!1401222 b!4535666)))

(assert (=> bs!872356 (= (= lt!1711328 lt!1710938) (= lambda!175440 lambda!175362))))

(declare-fun bs!872357 () Bool)

(assert (= bs!872357 (and d!1401222 b!4535832)))

(assert (=> bs!872357 (= (= lt!1711328 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175440 lambda!175377))))

(declare-fun bs!872358 () Bool)

(assert (= bs!872358 (and d!1401222 d!1401018)))

(assert (=> bs!872358 (= (= lt!1711328 lt!1710902) (= lambda!175440 lambda!175389))))

(declare-fun bs!872360 () Bool)

(assert (= bs!872360 (and d!1401222 b!4536261)))

(assert (=> bs!872360 (= (= lt!1711328 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175440 lambda!175429))))

(declare-fun bs!872361 () Bool)

(assert (= bs!872361 (and d!1401222 d!1400816)))

(assert (=> bs!872361 (= (= lt!1711328 lt!1710851) (= lambda!175440 lambda!175344))))

(assert (=> bs!872356 (= (= lt!1711328 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175440 lambda!175361))))

(declare-fun bs!872362 () Bool)

(assert (= bs!872362 (and d!1401222 b!4535829)))

(assert (=> bs!872362 (= (= lt!1711328 lt!1711026) (= lambda!175440 lambda!175379))))

(assert (=> bs!872351 (= (= lt!1711328 lt!1710415) (= lambda!175440 lambda!175350))))

(declare-fun bs!872363 () Bool)

(assert (= bs!872363 (and d!1401222 d!1401188)))

(assert (=> bs!872363 (= (= lt!1711328 lt!1711279) (= lambda!175440 lambda!175431))))

(declare-fun bs!872364 () Bool)

(assert (= bs!872364 (and d!1401222 b!4536294)))

(assert (=> bs!872364 (= (= lt!1711328 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175440 lambda!175437))))

(assert (=> bs!872360 (= (= lt!1711328 lt!1711268) (= lambda!175440 lambda!175430))))

(declare-fun bs!872365 () Bool)

(assert (= bs!872365 (and d!1401222 d!1400896)))

(assert (=> bs!872365 (= (= lt!1711328 lt!1710949) (= lambda!175440 lambda!175363))))

(assert (=> bs!872362 (= (= lt!1711328 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175440 lambda!175378))))

(assert (=> bs!872349 (= (= lt!1711328 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175440 lambda!175372))))

(declare-fun bs!872366 () Bool)

(assert (= bs!872366 (and d!1401222 d!1400874)))

(assert (=> bs!872366 (= (= lt!1711328 lt!1710913) (= lambda!175440 lambda!175352))))

(declare-fun bs!872367 () Bool)

(assert (= bs!872367 (and d!1401222 b!4535199)))

(assert (=> bs!872367 (not (= lambda!175440 lambda!175215))))

(declare-fun bs!872369 () Bool)

(assert (= bs!872369 (and d!1401222 b!4535545)))

(assert (=> bs!872369 (= (= lt!1711328 lt!1710429) (= lambda!175440 lambda!175339))))

(declare-fun bs!872371 () Bool)

(assert (= bs!872371 (and d!1401222 d!1400980)))

(assert (=> bs!872371 (= (= lt!1711328 lt!1711000) (= lambda!175440 lambda!175374))))

(declare-fun bs!872373 () Bool)

(assert (= bs!872373 (and d!1401222 d!1400628)))

(assert (=> bs!872373 (= (= lt!1711328 lt!1710589) (= lambda!175440 lambda!175268))))

(assert (=> bs!872348 (= (= lt!1711328 lt!1710448) (= lambda!175440 lambda!175266))))

(declare-fun bs!872376 () Bool)

(assert (= bs!872376 (and d!1401222 b!4535312)))

(assert (=> bs!872376 (= (= lt!1711328 lt!1710448) (= lambda!175440 lambda!175265))))

(assert (=> d!1401222 true))

(declare-fun bm!316264 () Bool)

(declare-fun call!316269 () Unit!97630)

(assert (=> bm!316264 (= call!316269 (lemmaContainsAllItsOwnKeys!359 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))))))

(declare-fun call!316270 () Bool)

(declare-fun bm!316265 () Bool)

(declare-fun c!774705 () Bool)

(assert (=> bm!316265 (= call!316270 (forall!10330 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (ite c!774705 lambda!175437 lambda!175439)))))

(declare-fun e!2826670 () ListMap!3653)

(assert (=> b!4536291 (= e!2826670 lt!1711317)))

(declare-fun lt!1711319 () ListMap!3653)

(assert (=> b!4536291 (= lt!1711319 (+!1593 (extractMap!1248 (t!357819 (toList!4392 lm!1477))) (h!56607 (_2!28896 (h!56608 (toList!4392 lm!1477))))))))

(assert (=> b!4536291 (= lt!1711317 (addToMapMapFromBucket!719 (t!357818 (_2!28896 (h!56608 (toList!4392 lm!1477)))) (+!1593 (extractMap!1248 (t!357819 (toList!4392 lm!1477))) (h!56607 (_2!28896 (h!56608 (toList!4392 lm!1477)))))))))

(declare-fun lt!1711330 () Unit!97630)

(assert (=> b!4536291 (= lt!1711330 call!316269)))

(assert (=> b!4536291 (forall!10330 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) lambda!175438)))

(declare-fun lt!1711325 () Unit!97630)

(assert (=> b!4536291 (= lt!1711325 lt!1711330)))

(assert (=> b!4536291 (forall!10330 (toList!4391 lt!1711319) lambda!175439)))

(declare-fun lt!1711320 () Unit!97630)

(declare-fun Unit!97841 () Unit!97630)

(assert (=> b!4536291 (= lt!1711320 Unit!97841)))

(assert (=> b!4536291 (forall!10330 (t!357818 (_2!28896 (h!56608 (toList!4392 lm!1477)))) lambda!175439)))

(declare-fun lt!1711322 () Unit!97630)

(declare-fun Unit!97842 () Unit!97630)

(assert (=> b!4536291 (= lt!1711322 Unit!97842)))

(declare-fun lt!1711316 () Unit!97630)

(declare-fun Unit!97843 () Unit!97630)

(assert (=> b!4536291 (= lt!1711316 Unit!97843)))

(declare-fun lt!1711334 () Unit!97630)

(assert (=> b!4536291 (= lt!1711334 (forallContained!2591 (toList!4391 lt!1711319) lambda!175439 (h!56607 (_2!28896 (h!56608 (toList!4392 lm!1477))))))))

(assert (=> b!4536291 (contains!13513 lt!1711319 (_1!28895 (h!56607 (_2!28896 (h!56608 (toList!4392 lm!1477))))))))

(declare-fun lt!1711314 () Unit!97630)

(declare-fun Unit!97844 () Unit!97630)

(assert (=> b!4536291 (= lt!1711314 Unit!97844)))

(assert (=> b!4536291 (contains!13513 lt!1711317 (_1!28895 (h!56607 (_2!28896 (h!56608 (toList!4392 lm!1477))))))))

(declare-fun lt!1711326 () Unit!97630)

(declare-fun Unit!97845 () Unit!97630)

(assert (=> b!4536291 (= lt!1711326 Unit!97845)))

(assert (=> b!4536291 (forall!10330 (_2!28896 (h!56608 (toList!4392 lm!1477))) lambda!175439)))

(declare-fun lt!1711329 () Unit!97630)

(declare-fun Unit!97846 () Unit!97630)

(assert (=> b!4536291 (= lt!1711329 Unit!97846)))

(assert (=> b!4536291 (forall!10330 (toList!4391 lt!1711319) lambda!175439)))

(declare-fun lt!1711315 () Unit!97630)

(declare-fun Unit!97847 () Unit!97630)

(assert (=> b!4536291 (= lt!1711315 Unit!97847)))

(declare-fun lt!1711318 () Unit!97630)

(declare-fun Unit!97848 () Unit!97630)

(assert (=> b!4536291 (= lt!1711318 Unit!97848)))

(declare-fun lt!1711331 () Unit!97630)

(assert (=> b!4536291 (= lt!1711331 (addForallContainsKeyThenBeforeAdding!359 (extractMap!1248 (t!357819 (toList!4392 lm!1477))) lt!1711317 (_1!28895 (h!56607 (_2!28896 (h!56608 (toList!4392 lm!1477))))) (_2!28895 (h!56607 (_2!28896 (h!56608 (toList!4392 lm!1477)))))))))

(assert (=> b!4536291 (forall!10330 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) lambda!175439)))

(declare-fun lt!1711323 () Unit!97630)

(assert (=> b!4536291 (= lt!1711323 lt!1711331)))

(assert (=> b!4536291 (forall!10330 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) lambda!175439)))

(declare-fun lt!1711321 () Unit!97630)

(declare-fun Unit!97849 () Unit!97630)

(assert (=> b!4536291 (= lt!1711321 Unit!97849)))

(declare-fun res!1889958 () Bool)

(declare-fun call!316271 () Bool)

(assert (=> b!4536291 (= res!1889958 call!316271)))

(declare-fun e!2826669 () Bool)

(assert (=> b!4536291 (=> (not res!1889958) (not e!2826669))))

(assert (=> b!4536291 e!2826669))

(declare-fun lt!1711324 () Unit!97630)

(declare-fun Unit!97850 () Unit!97630)

(assert (=> b!4536291 (= lt!1711324 Unit!97850)))

(declare-fun b!4536292 () Bool)

(declare-fun e!2826668 () Bool)

(assert (=> b!4536292 (= e!2826668 (invariantList!1039 (toList!4391 lt!1711328)))))

(declare-fun b!4536293 () Bool)

(declare-fun res!1889959 () Bool)

(assert (=> b!4536293 (=> (not res!1889959) (not e!2826668))))

(assert (=> b!4536293 (= res!1889959 (forall!10330 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) lambda!175440))))

(declare-fun bm!316266 () Bool)

(assert (=> bm!316266 (= call!316271 (forall!10330 (ite c!774705 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (_2!28896 (h!56608 (toList!4392 lm!1477)))) (ite c!774705 lambda!175437 lambda!175439)))))

(declare-fun b!4536295 () Bool)

(assert (=> b!4536295 (= e!2826669 call!316270)))

(assert (=> b!4536294 (= e!2826670 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))))

(declare-fun lt!1711327 () Unit!97630)

(assert (=> b!4536294 (= lt!1711327 call!316269)))

(assert (=> b!4536294 call!316270))

(declare-fun lt!1711333 () Unit!97630)

(assert (=> b!4536294 (= lt!1711333 lt!1711327)))

(assert (=> b!4536294 call!316271))

(declare-fun lt!1711332 () Unit!97630)

(declare-fun Unit!97851 () Unit!97630)

(assert (=> b!4536294 (= lt!1711332 Unit!97851)))

(assert (=> d!1401222 e!2826668))

(declare-fun res!1889960 () Bool)

(assert (=> d!1401222 (=> (not res!1889960) (not e!2826668))))

(assert (=> d!1401222 (= res!1889960 (forall!10330 (_2!28896 (h!56608 (toList!4392 lm!1477))) lambda!175440))))

(assert (=> d!1401222 (= lt!1711328 e!2826670)))

(assert (=> d!1401222 (= c!774705 ((_ is Nil!50732) (_2!28896 (h!56608 (toList!4392 lm!1477)))))))

(assert (=> d!1401222 (noDuplicateKeys!1192 (_2!28896 (h!56608 (toList!4392 lm!1477))))))

(assert (=> d!1401222 (= (addToMapMapFromBucket!719 (_2!28896 (h!56608 (toList!4392 lm!1477))) (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) lt!1711328)))

(assert (= (and d!1401222 c!774705) b!4536294))

(assert (= (and d!1401222 (not c!774705)) b!4536291))

(assert (= (and b!4536291 res!1889958) b!4536295))

(assert (= (or b!4536294 b!4536295) bm!316265))

(assert (= (or b!4536294 b!4536291) bm!316266))

(assert (= (or b!4536294 b!4536291) bm!316264))

(assert (= (and d!1401222 res!1889960) b!4536293))

(assert (= (and b!4536293 res!1889959) b!4536292))

(declare-fun m!5298751 () Bool)

(assert (=> b!4536292 m!5298751))

(declare-fun m!5298753 () Bool)

(assert (=> d!1401222 m!5298753))

(assert (=> d!1401222 m!5297595))

(declare-fun m!5298755 () Bool)

(assert (=> bm!316266 m!5298755))

(declare-fun m!5298757 () Bool)

(assert (=> b!4536291 m!5298757))

(declare-fun m!5298759 () Bool)

(assert (=> b!4536291 m!5298759))

(declare-fun m!5298761 () Bool)

(assert (=> b!4536291 m!5298761))

(declare-fun m!5298763 () Bool)

(assert (=> b!4536291 m!5298763))

(assert (=> b!4536291 m!5296629))

(declare-fun m!5298765 () Bool)

(assert (=> b!4536291 m!5298765))

(declare-fun m!5298767 () Bool)

(assert (=> b!4536291 m!5298767))

(declare-fun m!5298769 () Bool)

(assert (=> b!4536291 m!5298769))

(assert (=> b!4536291 m!5298757))

(declare-fun m!5298771 () Bool)

(assert (=> b!4536291 m!5298771))

(assert (=> b!4536291 m!5296629))

(assert (=> b!4536291 m!5298767))

(declare-fun m!5298773 () Bool)

(assert (=> b!4536291 m!5298773))

(declare-fun m!5298775 () Bool)

(assert (=> b!4536291 m!5298775))

(assert (=> b!4536291 m!5298759))

(declare-fun m!5298777 () Bool)

(assert (=> b!4536291 m!5298777))

(assert (=> bm!316264 m!5296629))

(declare-fun m!5298779 () Bool)

(assert (=> bm!316264 m!5298779))

(declare-fun m!5298781 () Bool)

(assert (=> bm!316265 m!5298781))

(declare-fun m!5298783 () Bool)

(assert (=> b!4536293 m!5298783))

(assert (=> b!4535381 d!1401222))

(assert (=> b!4535381 d!1400794))

(declare-fun d!1401274 () Bool)

(declare-fun res!1889985 () Bool)

(declare-fun e!2826704 () Bool)

(assert (=> d!1401274 (=> res!1889985 e!2826704)))

(assert (=> d!1401274 (= res!1889985 (and ((_ is Cons!50732) (t!357818 (_2!28896 lt!1710445))) (= (_1!28895 (h!56607 (t!357818 (_2!28896 lt!1710445)))) key!3287)))))

(assert (=> d!1401274 (= (containsKey!1856 (t!357818 (_2!28896 lt!1710445)) key!3287) e!2826704)))

(declare-fun b!4536340 () Bool)

(declare-fun e!2826705 () Bool)

(assert (=> b!4536340 (= e!2826704 e!2826705)))

(declare-fun res!1889986 () Bool)

(assert (=> b!4536340 (=> (not res!1889986) (not e!2826705))))

(assert (=> b!4536340 (= res!1889986 ((_ is Cons!50732) (t!357818 (_2!28896 lt!1710445))))))

(declare-fun b!4536341 () Bool)

(assert (=> b!4536341 (= e!2826705 (containsKey!1856 (t!357818 (t!357818 (_2!28896 lt!1710445))) key!3287))))

(assert (= (and d!1401274 (not res!1889985)) b!4536340))

(assert (= (and b!4536340 res!1889986) b!4536341))

(declare-fun m!5298785 () Bool)

(assert (=> b!4536341 m!5298785))

(assert (=> b!4535212 d!1401274))

(declare-fun bs!872401 () Bool)

(declare-fun b!4536345 () Bool)

(assert (= bs!872401 (and b!4536345 b!4536264)))

(declare-fun lambda!175443 () Int)

(assert (=> bs!872401 (= (= (-!418 lt!1710448 key!3287) (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175443 lambda!175428))))

(declare-fun bs!872402 () Bool)

(assert (= bs!872402 (and b!4536345 b!4536291)))

(assert (=> bs!872402 (= (= (-!418 lt!1710448 key!3287) (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175443 lambda!175438))))

(declare-fun bs!872403 () Bool)

(assert (= bs!872403 (and b!4536345 d!1400724)))

(assert (=> bs!872403 (not (= lambda!175443 lambda!175312))))

(declare-fun bs!872404 () Bool)

(assert (= bs!872404 (and b!4536345 b!4535309)))

(assert (=> bs!872404 (= (= (-!418 lt!1710448 key!3287) lt!1710578) (= lambda!175443 lambda!175267))))

(declare-fun bs!872405 () Bool)

(assert (= bs!872405 (and b!4536345 b!4535797)))

(assert (=> bs!872405 (= (= (-!418 lt!1710448 key!3287) lt!1710989) (= lambda!175443 lambda!175373))))

(declare-fun bs!872406 () Bool)

(assert (= bs!872406 (and b!4536345 b!4535625)))

(assert (=> bs!872406 (= (= (-!418 lt!1710448 key!3287) lt!1710415) (= lambda!175443 lambda!175349))))

(declare-fun bs!872407 () Bool)

(assert (= bs!872407 (and b!4536345 b!4535622)))

(assert (=> bs!872407 (= (= (-!418 lt!1710448 key!3287) lt!1710902) (= lambda!175443 lambda!175351))))

(declare-fun bs!872408 () Bool)

(assert (= bs!872408 (and b!4536345 d!1401004)))

(assert (=> bs!872408 (= (= (-!418 lt!1710448 key!3287) lt!1711037) (= lambda!175443 lambda!175380))))

(declare-fun bs!872409 () Bool)

(assert (= bs!872409 (and b!4536345 b!4535542)))

(assert (=> bs!872409 (= (= (-!418 lt!1710448 key!3287) lt!1710429) (= lambda!175443 lambda!175340))))

(declare-fun bs!872410 () Bool)

(assert (= bs!872410 (and b!4536345 b!4535669)))

(assert (=> bs!872410 (= (= (-!418 lt!1710448 key!3287) (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175443 lambda!175360))))

(assert (=> bs!872409 (= (= (-!418 lt!1710448 key!3287) lt!1710840) (= lambda!175443 lambda!175341))))

(assert (=> bs!872402 (= (= (-!418 lt!1710448 key!3287) lt!1711317) (= lambda!175443 lambda!175439))))

(declare-fun bs!872411 () Bool)

(assert (= bs!872411 (and b!4536345 b!4535666)))

(assert (=> bs!872411 (= (= (-!418 lt!1710448 key!3287) lt!1710938) (= lambda!175443 lambda!175362))))

(declare-fun bs!872412 () Bool)

(assert (= bs!872412 (and b!4536345 b!4535832)))

(assert (=> bs!872412 (= (= (-!418 lt!1710448 key!3287) (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175443 lambda!175377))))

(declare-fun bs!872413 () Bool)

(assert (= bs!872413 (and b!4536345 d!1401018)))

(assert (=> bs!872413 (= (= (-!418 lt!1710448 key!3287) lt!1710902) (= lambda!175443 lambda!175389))))

(declare-fun bs!872414 () Bool)

(assert (= bs!872414 (and b!4536345 b!4536261)))

(assert (=> bs!872414 (= (= (-!418 lt!1710448 key!3287) (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175443 lambda!175429))))

(declare-fun bs!872415 () Bool)

(assert (= bs!872415 (and b!4536345 d!1400816)))

(assert (=> bs!872415 (= (= (-!418 lt!1710448 key!3287) lt!1710851) (= lambda!175443 lambda!175344))))

(assert (=> bs!872411 (= (= (-!418 lt!1710448 key!3287) (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175443 lambda!175361))))

(declare-fun bs!872416 () Bool)

(assert (= bs!872416 (and b!4536345 b!4535829)))

(assert (=> bs!872416 (= (= (-!418 lt!1710448 key!3287) lt!1711026) (= lambda!175443 lambda!175379))))

(assert (=> bs!872407 (= (= (-!418 lt!1710448 key!3287) lt!1710415) (= lambda!175443 lambda!175350))))

(declare-fun bs!872417 () Bool)

(assert (= bs!872417 (and b!4536345 d!1401188)))

(assert (=> bs!872417 (= (= (-!418 lt!1710448 key!3287) lt!1711279) (= lambda!175443 lambda!175431))))

(declare-fun bs!872418 () Bool)

(assert (= bs!872418 (and b!4536345 b!4536294)))

(assert (=> bs!872418 (= (= (-!418 lt!1710448 key!3287) (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175443 lambda!175437))))

(assert (=> bs!872414 (= (= (-!418 lt!1710448 key!3287) lt!1711268) (= lambda!175443 lambda!175430))))

(declare-fun bs!872419 () Bool)

(assert (= bs!872419 (and b!4536345 d!1400896)))

(assert (=> bs!872419 (= (= (-!418 lt!1710448 key!3287) lt!1710949) (= lambda!175443 lambda!175363))))

(assert (=> bs!872416 (= (= (-!418 lt!1710448 key!3287) (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175443 lambda!175378))))

(assert (=> bs!872405 (= (= (-!418 lt!1710448 key!3287) (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175443 lambda!175372))))

(declare-fun bs!872420 () Bool)

(assert (= bs!872420 (and b!4536345 d!1400874)))

(assert (=> bs!872420 (= (= (-!418 lt!1710448 key!3287) lt!1710913) (= lambda!175443 lambda!175352))))

(declare-fun bs!872421 () Bool)

(assert (= bs!872421 (and b!4536345 b!4535199)))

(assert (=> bs!872421 (not (= lambda!175443 lambda!175215))))

(declare-fun bs!872422 () Bool)

(assert (= bs!872422 (and b!4536345 b!4535545)))

(assert (=> bs!872422 (= (= (-!418 lt!1710448 key!3287) lt!1710429) (= lambda!175443 lambda!175339))))

(declare-fun bs!872423 () Bool)

(assert (= bs!872423 (and b!4536345 d!1401222)))

(assert (=> bs!872423 (= (= (-!418 lt!1710448 key!3287) lt!1711328) (= lambda!175443 lambda!175440))))

(declare-fun bs!872424 () Bool)

(assert (= bs!872424 (and b!4536345 b!4535800)))

(assert (=> bs!872424 (= (= (-!418 lt!1710448 key!3287) (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175443 lambda!175371))))

(declare-fun bs!872425 () Bool)

(assert (= bs!872425 (and b!4536345 d!1400980)))

(assert (=> bs!872425 (= (= (-!418 lt!1710448 key!3287) lt!1711000) (= lambda!175443 lambda!175374))))

(declare-fun bs!872426 () Bool)

(assert (= bs!872426 (and b!4536345 d!1400628)))

(assert (=> bs!872426 (= (= (-!418 lt!1710448 key!3287) lt!1710589) (= lambda!175443 lambda!175268))))

(assert (=> bs!872404 (= (= (-!418 lt!1710448 key!3287) lt!1710448) (= lambda!175443 lambda!175266))))

(declare-fun bs!872427 () Bool)

(assert (= bs!872427 (and b!4536345 b!4535312)))

(assert (=> bs!872427 (= (= (-!418 lt!1710448 key!3287) lt!1710448) (= lambda!175443 lambda!175265))))

(assert (=> b!4536345 true))

(declare-fun bs!872434 () Bool)

(declare-fun b!4536342 () Bool)

(assert (= bs!872434 (and b!4536342 b!4536264)))

(declare-fun lambda!175446 () Int)

(assert (=> bs!872434 (= (= (-!418 lt!1710448 key!3287) (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175446 lambda!175428))))

(declare-fun bs!872436 () Bool)

(assert (= bs!872436 (and b!4536342 b!4536291)))

(assert (=> bs!872436 (= (= (-!418 lt!1710448 key!3287) (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175446 lambda!175438))))

(declare-fun bs!872438 () Bool)

(assert (= bs!872438 (and b!4536342 d!1400724)))

(assert (=> bs!872438 (not (= lambda!175446 lambda!175312))))

(declare-fun bs!872440 () Bool)

(assert (= bs!872440 (and b!4536342 b!4535309)))

(assert (=> bs!872440 (= (= (-!418 lt!1710448 key!3287) lt!1710578) (= lambda!175446 lambda!175267))))

(declare-fun bs!872442 () Bool)

(assert (= bs!872442 (and b!4536342 b!4535797)))

(assert (=> bs!872442 (= (= (-!418 lt!1710448 key!3287) lt!1710989) (= lambda!175446 lambda!175373))))

(declare-fun bs!872444 () Bool)

(assert (= bs!872444 (and b!4536342 b!4535625)))

(assert (=> bs!872444 (= (= (-!418 lt!1710448 key!3287) lt!1710415) (= lambda!175446 lambda!175349))))

(declare-fun bs!872445 () Bool)

(assert (= bs!872445 (and b!4536342 b!4535622)))

(assert (=> bs!872445 (= (= (-!418 lt!1710448 key!3287) lt!1710902) (= lambda!175446 lambda!175351))))

(declare-fun bs!872447 () Bool)

(assert (= bs!872447 (and b!4536342 d!1401004)))

(assert (=> bs!872447 (= (= (-!418 lt!1710448 key!3287) lt!1711037) (= lambda!175446 lambda!175380))))

(declare-fun bs!872449 () Bool)

(assert (= bs!872449 (and b!4536342 b!4535542)))

(assert (=> bs!872449 (= (= (-!418 lt!1710448 key!3287) lt!1710429) (= lambda!175446 lambda!175340))))

(declare-fun bs!872451 () Bool)

(assert (= bs!872451 (and b!4536342 b!4535669)))

(assert (=> bs!872451 (= (= (-!418 lt!1710448 key!3287) (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175446 lambda!175360))))

(assert (=> bs!872449 (= (= (-!418 lt!1710448 key!3287) lt!1710840) (= lambda!175446 lambda!175341))))

(assert (=> bs!872436 (= (= (-!418 lt!1710448 key!3287) lt!1711317) (= lambda!175446 lambda!175439))))

(declare-fun bs!872453 () Bool)

(assert (= bs!872453 (and b!4536342 b!4535666)))

(assert (=> bs!872453 (= (= (-!418 lt!1710448 key!3287) lt!1710938) (= lambda!175446 lambda!175362))))

(declare-fun bs!872455 () Bool)

(assert (= bs!872455 (and b!4536342 b!4535832)))

(assert (=> bs!872455 (= (= (-!418 lt!1710448 key!3287) (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175446 lambda!175377))))

(declare-fun bs!872456 () Bool)

(assert (= bs!872456 (and b!4536342 d!1401018)))

(assert (=> bs!872456 (= (= (-!418 lt!1710448 key!3287) lt!1710902) (= lambda!175446 lambda!175389))))

(declare-fun bs!872457 () Bool)

(assert (= bs!872457 (and b!4536342 b!4536261)))

(assert (=> bs!872457 (= (= (-!418 lt!1710448 key!3287) (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175446 lambda!175429))))

(declare-fun bs!872458 () Bool)

(assert (= bs!872458 (and b!4536342 d!1400816)))

(assert (=> bs!872458 (= (= (-!418 lt!1710448 key!3287) lt!1710851) (= lambda!175446 lambda!175344))))

(assert (=> bs!872453 (= (= (-!418 lt!1710448 key!3287) (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175446 lambda!175361))))

(declare-fun bs!872459 () Bool)

(assert (= bs!872459 (and b!4536342 b!4535829)))

(assert (=> bs!872459 (= (= (-!418 lt!1710448 key!3287) lt!1711026) (= lambda!175446 lambda!175379))))

(assert (=> bs!872445 (= (= (-!418 lt!1710448 key!3287) lt!1710415) (= lambda!175446 lambda!175350))))

(declare-fun bs!872460 () Bool)

(assert (= bs!872460 (and b!4536342 d!1401188)))

(assert (=> bs!872460 (= (= (-!418 lt!1710448 key!3287) lt!1711279) (= lambda!175446 lambda!175431))))

(declare-fun bs!872461 () Bool)

(assert (= bs!872461 (and b!4536342 b!4536294)))

(assert (=> bs!872461 (= (= (-!418 lt!1710448 key!3287) (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175446 lambda!175437))))

(assert (=> bs!872457 (= (= (-!418 lt!1710448 key!3287) lt!1711268) (= lambda!175446 lambda!175430))))

(declare-fun bs!872462 () Bool)

(assert (= bs!872462 (and b!4536342 d!1400896)))

(assert (=> bs!872462 (= (= (-!418 lt!1710448 key!3287) lt!1710949) (= lambda!175446 lambda!175363))))

(assert (=> bs!872459 (= (= (-!418 lt!1710448 key!3287) (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175446 lambda!175378))))

(assert (=> bs!872442 (= (= (-!418 lt!1710448 key!3287) (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175446 lambda!175372))))

(declare-fun bs!872463 () Bool)

(assert (= bs!872463 (and b!4536342 d!1400874)))

(assert (=> bs!872463 (= (= (-!418 lt!1710448 key!3287) lt!1710913) (= lambda!175446 lambda!175352))))

(declare-fun bs!872464 () Bool)

(assert (= bs!872464 (and b!4536342 b!4536345)))

(assert (=> bs!872464 (= lambda!175446 lambda!175443)))

(declare-fun bs!872465 () Bool)

(assert (= bs!872465 (and b!4536342 b!4535199)))

(assert (=> bs!872465 (not (= lambda!175446 lambda!175215))))

(declare-fun bs!872466 () Bool)

(assert (= bs!872466 (and b!4536342 b!4535545)))

(assert (=> bs!872466 (= (= (-!418 lt!1710448 key!3287) lt!1710429) (= lambda!175446 lambda!175339))))

(declare-fun bs!872467 () Bool)

(assert (= bs!872467 (and b!4536342 d!1401222)))

(assert (=> bs!872467 (= (= (-!418 lt!1710448 key!3287) lt!1711328) (= lambda!175446 lambda!175440))))

(declare-fun bs!872468 () Bool)

(assert (= bs!872468 (and b!4536342 b!4535800)))

(assert (=> bs!872468 (= (= (-!418 lt!1710448 key!3287) (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175446 lambda!175371))))

(declare-fun bs!872469 () Bool)

(assert (= bs!872469 (and b!4536342 d!1400980)))

(assert (=> bs!872469 (= (= (-!418 lt!1710448 key!3287) lt!1711000) (= lambda!175446 lambda!175374))))

(declare-fun bs!872470 () Bool)

(assert (= bs!872470 (and b!4536342 d!1400628)))

(assert (=> bs!872470 (= (= (-!418 lt!1710448 key!3287) lt!1710589) (= lambda!175446 lambda!175268))))

(assert (=> bs!872440 (= (= (-!418 lt!1710448 key!3287) lt!1710448) (= lambda!175446 lambda!175266))))

(declare-fun bs!872471 () Bool)

(assert (= bs!872471 (and b!4536342 b!4535312)))

(assert (=> bs!872471 (= (= (-!418 lt!1710448 key!3287) lt!1710448) (= lambda!175446 lambda!175265))))

(assert (=> b!4536342 true))

(declare-fun lt!1711365 () ListMap!3653)

(declare-fun lambda!175447 () Int)

(assert (=> bs!872434 (= (= lt!1711365 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175447 lambda!175428))))

(assert (=> bs!872438 (not (= lambda!175447 lambda!175312))))

(assert (=> bs!872440 (= (= lt!1711365 lt!1710578) (= lambda!175447 lambda!175267))))

(assert (=> bs!872442 (= (= lt!1711365 lt!1710989) (= lambda!175447 lambda!175373))))

(assert (=> bs!872444 (= (= lt!1711365 lt!1710415) (= lambda!175447 lambda!175349))))

(assert (=> bs!872445 (= (= lt!1711365 lt!1710902) (= lambda!175447 lambda!175351))))

(assert (=> bs!872447 (= (= lt!1711365 lt!1711037) (= lambda!175447 lambda!175380))))

(assert (=> bs!872449 (= (= lt!1711365 lt!1710429) (= lambda!175447 lambda!175340))))

(assert (=> bs!872451 (= (= lt!1711365 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175447 lambda!175360))))

(assert (=> bs!872449 (= (= lt!1711365 lt!1710840) (= lambda!175447 lambda!175341))))

(assert (=> bs!872436 (= (= lt!1711365 lt!1711317) (= lambda!175447 lambda!175439))))

(assert (=> bs!872453 (= (= lt!1711365 lt!1710938) (= lambda!175447 lambda!175362))))

(assert (=> bs!872455 (= (= lt!1711365 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175447 lambda!175377))))

(assert (=> bs!872456 (= (= lt!1711365 lt!1710902) (= lambda!175447 lambda!175389))))

(assert (=> bs!872457 (= (= lt!1711365 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175447 lambda!175429))))

(assert (=> bs!872458 (= (= lt!1711365 lt!1710851) (= lambda!175447 lambda!175344))))

(assert (=> b!4536342 (= (= lt!1711365 (-!418 lt!1710448 key!3287)) (= lambda!175447 lambda!175446))))

(assert (=> bs!872436 (= (= lt!1711365 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175447 lambda!175438))))

(assert (=> bs!872453 (= (= lt!1711365 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175447 lambda!175361))))

(assert (=> bs!872459 (= (= lt!1711365 lt!1711026) (= lambda!175447 lambda!175379))))

(assert (=> bs!872445 (= (= lt!1711365 lt!1710415) (= lambda!175447 lambda!175350))))

(assert (=> bs!872460 (= (= lt!1711365 lt!1711279) (= lambda!175447 lambda!175431))))

(assert (=> bs!872461 (= (= lt!1711365 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175447 lambda!175437))))

(assert (=> bs!872457 (= (= lt!1711365 lt!1711268) (= lambda!175447 lambda!175430))))

(assert (=> bs!872462 (= (= lt!1711365 lt!1710949) (= lambda!175447 lambda!175363))))

(assert (=> bs!872459 (= (= lt!1711365 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175447 lambda!175378))))

(assert (=> bs!872442 (= (= lt!1711365 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175447 lambda!175372))))

(assert (=> bs!872463 (= (= lt!1711365 lt!1710913) (= lambda!175447 lambda!175352))))

(assert (=> bs!872464 (= (= lt!1711365 (-!418 lt!1710448 key!3287)) (= lambda!175447 lambda!175443))))

(assert (=> bs!872465 (not (= lambda!175447 lambda!175215))))

(assert (=> bs!872466 (= (= lt!1711365 lt!1710429) (= lambda!175447 lambda!175339))))

(assert (=> bs!872467 (= (= lt!1711365 lt!1711328) (= lambda!175447 lambda!175440))))

(assert (=> bs!872468 (= (= lt!1711365 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175447 lambda!175371))))

(assert (=> bs!872469 (= (= lt!1711365 lt!1711000) (= lambda!175447 lambda!175374))))

(assert (=> bs!872470 (= (= lt!1711365 lt!1710589) (= lambda!175447 lambda!175268))))

(assert (=> bs!872440 (= (= lt!1711365 lt!1710448) (= lambda!175447 lambda!175266))))

(assert (=> bs!872471 (= (= lt!1711365 lt!1710448) (= lambda!175447 lambda!175265))))

(assert (=> b!4536342 true))

(declare-fun bs!872496 () Bool)

(declare-fun d!1401276 () Bool)

(assert (= bs!872496 (and d!1401276 b!4536264)))

(declare-fun lambda!175450 () Int)

(declare-fun lt!1711376 () ListMap!3653)

(assert (=> bs!872496 (= (= lt!1711376 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175450 lambda!175428))))

(declare-fun bs!872498 () Bool)

(assert (= bs!872498 (and d!1401276 d!1400724)))

(assert (=> bs!872498 (not (= lambda!175450 lambda!175312))))

(declare-fun bs!872500 () Bool)

(assert (= bs!872500 (and d!1401276 b!4535309)))

(assert (=> bs!872500 (= (= lt!1711376 lt!1710578) (= lambda!175450 lambda!175267))))

(declare-fun bs!872502 () Bool)

(assert (= bs!872502 (and d!1401276 b!4535797)))

(assert (=> bs!872502 (= (= lt!1711376 lt!1710989) (= lambda!175450 lambda!175373))))

(declare-fun bs!872504 () Bool)

(assert (= bs!872504 (and d!1401276 b!4535625)))

(assert (=> bs!872504 (= (= lt!1711376 lt!1710415) (= lambda!175450 lambda!175349))))

(declare-fun bs!872506 () Bool)

(assert (= bs!872506 (and d!1401276 b!4535622)))

(assert (=> bs!872506 (= (= lt!1711376 lt!1710902) (= lambda!175450 lambda!175351))))

(declare-fun bs!872507 () Bool)

(assert (= bs!872507 (and d!1401276 d!1401004)))

(assert (=> bs!872507 (= (= lt!1711376 lt!1711037) (= lambda!175450 lambda!175380))))

(declare-fun bs!872509 () Bool)

(assert (= bs!872509 (and d!1401276 b!4535542)))

(assert (=> bs!872509 (= (= lt!1711376 lt!1710429) (= lambda!175450 lambda!175340))))

(declare-fun bs!872510 () Bool)

(assert (= bs!872510 (and d!1401276 b!4536342)))

(assert (=> bs!872510 (= (= lt!1711376 lt!1711365) (= lambda!175450 lambda!175447))))

(declare-fun bs!872512 () Bool)

(assert (= bs!872512 (and d!1401276 b!4535669)))

(assert (=> bs!872512 (= (= lt!1711376 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175450 lambda!175360))))

(assert (=> bs!872509 (= (= lt!1711376 lt!1710840) (= lambda!175450 lambda!175341))))

(declare-fun bs!872514 () Bool)

(assert (= bs!872514 (and d!1401276 b!4536291)))

(assert (=> bs!872514 (= (= lt!1711376 lt!1711317) (= lambda!175450 lambda!175439))))

(declare-fun bs!872515 () Bool)

(assert (= bs!872515 (and d!1401276 b!4535666)))

(assert (=> bs!872515 (= (= lt!1711376 lt!1710938) (= lambda!175450 lambda!175362))))

(declare-fun bs!872517 () Bool)

(assert (= bs!872517 (and d!1401276 b!4535832)))

(assert (=> bs!872517 (= (= lt!1711376 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175450 lambda!175377))))

(declare-fun bs!872518 () Bool)

(assert (= bs!872518 (and d!1401276 d!1401018)))

(assert (=> bs!872518 (= (= lt!1711376 lt!1710902) (= lambda!175450 lambda!175389))))

(declare-fun bs!872519 () Bool)

(assert (= bs!872519 (and d!1401276 b!4536261)))

(assert (=> bs!872519 (= (= lt!1711376 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175450 lambda!175429))))

(declare-fun bs!872520 () Bool)

(assert (= bs!872520 (and d!1401276 d!1400816)))

(assert (=> bs!872520 (= (= lt!1711376 lt!1710851) (= lambda!175450 lambda!175344))))

(assert (=> bs!872510 (= (= lt!1711376 (-!418 lt!1710448 key!3287)) (= lambda!175450 lambda!175446))))

(assert (=> bs!872514 (= (= lt!1711376 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175450 lambda!175438))))

(assert (=> bs!872515 (= (= lt!1711376 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175450 lambda!175361))))

(declare-fun bs!872521 () Bool)

(assert (= bs!872521 (and d!1401276 b!4535829)))

(assert (=> bs!872521 (= (= lt!1711376 lt!1711026) (= lambda!175450 lambda!175379))))

(assert (=> bs!872506 (= (= lt!1711376 lt!1710415) (= lambda!175450 lambda!175350))))

(declare-fun bs!872524 () Bool)

(assert (= bs!872524 (and d!1401276 d!1401188)))

(assert (=> bs!872524 (= (= lt!1711376 lt!1711279) (= lambda!175450 lambda!175431))))

(declare-fun bs!872526 () Bool)

(assert (= bs!872526 (and d!1401276 b!4536294)))

(assert (=> bs!872526 (= (= lt!1711376 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175450 lambda!175437))))

(assert (=> bs!872519 (= (= lt!1711376 lt!1711268) (= lambda!175450 lambda!175430))))

(declare-fun bs!872528 () Bool)

(assert (= bs!872528 (and d!1401276 d!1400896)))

(assert (=> bs!872528 (= (= lt!1711376 lt!1710949) (= lambda!175450 lambda!175363))))

(assert (=> bs!872521 (= (= lt!1711376 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175450 lambda!175378))))

(assert (=> bs!872502 (= (= lt!1711376 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175450 lambda!175372))))

(declare-fun bs!872532 () Bool)

(assert (= bs!872532 (and d!1401276 d!1400874)))

(assert (=> bs!872532 (= (= lt!1711376 lt!1710913) (= lambda!175450 lambda!175352))))

(declare-fun bs!872533 () Bool)

(assert (= bs!872533 (and d!1401276 b!4536345)))

(assert (=> bs!872533 (= (= lt!1711376 (-!418 lt!1710448 key!3287)) (= lambda!175450 lambda!175443))))

(declare-fun bs!872535 () Bool)

(assert (= bs!872535 (and d!1401276 b!4535199)))

(assert (=> bs!872535 (not (= lambda!175450 lambda!175215))))

(declare-fun bs!872537 () Bool)

(assert (= bs!872537 (and d!1401276 b!4535545)))

(assert (=> bs!872537 (= (= lt!1711376 lt!1710429) (= lambda!175450 lambda!175339))))

(declare-fun bs!872539 () Bool)

(assert (= bs!872539 (and d!1401276 d!1401222)))

(assert (=> bs!872539 (= (= lt!1711376 lt!1711328) (= lambda!175450 lambda!175440))))

(declare-fun bs!872541 () Bool)

(assert (= bs!872541 (and d!1401276 b!4535800)))

(assert (=> bs!872541 (= (= lt!1711376 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175450 lambda!175371))))

(declare-fun bs!872543 () Bool)

(assert (= bs!872543 (and d!1401276 d!1400980)))

(assert (=> bs!872543 (= (= lt!1711376 lt!1711000) (= lambda!175450 lambda!175374))))

(declare-fun bs!872545 () Bool)

(assert (= bs!872545 (and d!1401276 d!1400628)))

(assert (=> bs!872545 (= (= lt!1711376 lt!1710589) (= lambda!175450 lambda!175268))))

(assert (=> bs!872500 (= (= lt!1711376 lt!1710448) (= lambda!175450 lambda!175266))))

(declare-fun bs!872547 () Bool)

(assert (= bs!872547 (and d!1401276 b!4535312)))

(assert (=> bs!872547 (= (= lt!1711376 lt!1710448) (= lambda!175450 lambda!175265))))

(assert (=> d!1401276 true))

(declare-fun bm!316270 () Bool)

(declare-fun call!316275 () Unit!97630)

(assert (=> bm!316270 (= call!316275 (lemmaContainsAllItsOwnKeys!359 (-!418 lt!1710448 key!3287)))))

(declare-fun c!774716 () Bool)

(declare-fun call!316276 () Bool)

(declare-fun bm!316271 () Bool)

(assert (=> bm!316271 (= call!316276 (forall!10330 (toList!4391 (-!418 lt!1710448 key!3287)) (ite c!774716 lambda!175443 lambda!175447)))))

(declare-fun e!2826708 () ListMap!3653)

(assert (=> b!4536342 (= e!2826708 lt!1711365)))

(declare-fun lt!1711367 () ListMap!3653)

(assert (=> b!4536342 (= lt!1711367 (+!1593 (-!418 lt!1710448 key!3287) (h!56607 (_2!28896 lt!1710445))))))

(assert (=> b!4536342 (= lt!1711365 (addToMapMapFromBucket!719 (t!357818 (_2!28896 lt!1710445)) (+!1593 (-!418 lt!1710448 key!3287) (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun lt!1711378 () Unit!97630)

(assert (=> b!4536342 (= lt!1711378 call!316275)))

(assert (=> b!4536342 (forall!10330 (toList!4391 (-!418 lt!1710448 key!3287)) lambda!175446)))

(declare-fun lt!1711373 () Unit!97630)

(assert (=> b!4536342 (= lt!1711373 lt!1711378)))

(assert (=> b!4536342 (forall!10330 (toList!4391 lt!1711367) lambda!175447)))

(declare-fun lt!1711368 () Unit!97630)

(declare-fun Unit!97852 () Unit!97630)

(assert (=> b!4536342 (= lt!1711368 Unit!97852)))

(assert (=> b!4536342 (forall!10330 (t!357818 (_2!28896 lt!1710445)) lambda!175447)))

(declare-fun lt!1711370 () Unit!97630)

(declare-fun Unit!97853 () Unit!97630)

(assert (=> b!4536342 (= lt!1711370 Unit!97853)))

(declare-fun lt!1711364 () Unit!97630)

(declare-fun Unit!97854 () Unit!97630)

(assert (=> b!4536342 (= lt!1711364 Unit!97854)))

(declare-fun lt!1711382 () Unit!97630)

(assert (=> b!4536342 (= lt!1711382 (forallContained!2591 (toList!4391 lt!1711367) lambda!175447 (h!56607 (_2!28896 lt!1710445))))))

(assert (=> b!4536342 (contains!13513 lt!1711367 (_1!28895 (h!56607 (_2!28896 lt!1710445))))))

(declare-fun lt!1711362 () Unit!97630)

(declare-fun Unit!97855 () Unit!97630)

(assert (=> b!4536342 (= lt!1711362 Unit!97855)))

(assert (=> b!4536342 (contains!13513 lt!1711365 (_1!28895 (h!56607 (_2!28896 lt!1710445))))))

(declare-fun lt!1711374 () Unit!97630)

(declare-fun Unit!97856 () Unit!97630)

(assert (=> b!4536342 (= lt!1711374 Unit!97856)))

(assert (=> b!4536342 (forall!10330 (_2!28896 lt!1710445) lambda!175447)))

(declare-fun lt!1711377 () Unit!97630)

(declare-fun Unit!97857 () Unit!97630)

(assert (=> b!4536342 (= lt!1711377 Unit!97857)))

(assert (=> b!4536342 (forall!10330 (toList!4391 lt!1711367) lambda!175447)))

(declare-fun lt!1711363 () Unit!97630)

(declare-fun Unit!97858 () Unit!97630)

(assert (=> b!4536342 (= lt!1711363 Unit!97858)))

(declare-fun lt!1711366 () Unit!97630)

(declare-fun Unit!97859 () Unit!97630)

(assert (=> b!4536342 (= lt!1711366 Unit!97859)))

(declare-fun lt!1711379 () Unit!97630)

(assert (=> b!4536342 (= lt!1711379 (addForallContainsKeyThenBeforeAdding!359 (-!418 lt!1710448 key!3287) lt!1711365 (_1!28895 (h!56607 (_2!28896 lt!1710445))) (_2!28895 (h!56607 (_2!28896 lt!1710445)))))))

(assert (=> b!4536342 (forall!10330 (toList!4391 (-!418 lt!1710448 key!3287)) lambda!175447)))

(declare-fun lt!1711371 () Unit!97630)

(assert (=> b!4536342 (= lt!1711371 lt!1711379)))

(assert (=> b!4536342 (forall!10330 (toList!4391 (-!418 lt!1710448 key!3287)) lambda!175447)))

(declare-fun lt!1711369 () Unit!97630)

(declare-fun Unit!97860 () Unit!97630)

(assert (=> b!4536342 (= lt!1711369 Unit!97860)))

(declare-fun res!1889987 () Bool)

(declare-fun call!316277 () Bool)

(assert (=> b!4536342 (= res!1889987 call!316277)))

(declare-fun e!2826707 () Bool)

(assert (=> b!4536342 (=> (not res!1889987) (not e!2826707))))

(assert (=> b!4536342 e!2826707))

(declare-fun lt!1711372 () Unit!97630)

(declare-fun Unit!97861 () Unit!97630)

(assert (=> b!4536342 (= lt!1711372 Unit!97861)))

(declare-fun b!4536343 () Bool)

(declare-fun e!2826706 () Bool)

(assert (=> b!4536343 (= e!2826706 (invariantList!1039 (toList!4391 lt!1711376)))))

(declare-fun b!4536344 () Bool)

(declare-fun res!1889988 () Bool)

(assert (=> b!4536344 (=> (not res!1889988) (not e!2826706))))

(assert (=> b!4536344 (= res!1889988 (forall!10330 (toList!4391 (-!418 lt!1710448 key!3287)) lambda!175450))))

(declare-fun bm!316272 () Bool)

(assert (=> bm!316272 (= call!316277 (forall!10330 (ite c!774716 (toList!4391 (-!418 lt!1710448 key!3287)) (_2!28896 lt!1710445)) (ite c!774716 lambda!175443 lambda!175447)))))

(declare-fun b!4536346 () Bool)

(assert (=> b!4536346 (= e!2826707 call!316276)))

(assert (=> b!4536345 (= e!2826708 (-!418 lt!1710448 key!3287))))

(declare-fun lt!1711375 () Unit!97630)

(assert (=> b!4536345 (= lt!1711375 call!316275)))

(assert (=> b!4536345 call!316276))

(declare-fun lt!1711381 () Unit!97630)

(assert (=> b!4536345 (= lt!1711381 lt!1711375)))

(assert (=> b!4536345 call!316277))

(declare-fun lt!1711380 () Unit!97630)

(declare-fun Unit!97862 () Unit!97630)

(assert (=> b!4536345 (= lt!1711380 Unit!97862)))

(assert (=> d!1401276 e!2826706))

(declare-fun res!1889989 () Bool)

(assert (=> d!1401276 (=> (not res!1889989) (not e!2826706))))

(assert (=> d!1401276 (= res!1889989 (forall!10330 (_2!28896 lt!1710445) lambda!175450))))

(assert (=> d!1401276 (= lt!1711376 e!2826708)))

(assert (=> d!1401276 (= c!774716 ((_ is Nil!50732) (_2!28896 lt!1710445)))))

(assert (=> d!1401276 (noDuplicateKeys!1192 (_2!28896 lt!1710445))))

(assert (=> d!1401276 (= (addToMapMapFromBucket!719 (_2!28896 lt!1710445) (-!418 lt!1710448 key!3287)) lt!1711376)))

(assert (= (and d!1401276 c!774716) b!4536345))

(assert (= (and d!1401276 (not c!774716)) b!4536342))

(assert (= (and b!4536342 res!1889987) b!4536346))

(assert (= (or b!4536345 b!4536346) bm!316271))

(assert (= (or b!4536345 b!4536342) bm!316272))

(assert (= (or b!4536345 b!4536342) bm!316270))

(assert (= (and d!1401276 res!1889989) b!4536344))

(assert (= (and b!4536344 res!1889988) b!4536343))

(declare-fun m!5298833 () Bool)

(assert (=> b!4536343 m!5298833))

(declare-fun m!5298835 () Bool)

(assert (=> d!1401276 m!5298835))

(assert (=> d!1401276 m!5296623))

(declare-fun m!5298837 () Bool)

(assert (=> bm!316272 m!5298837))

(declare-fun m!5298839 () Bool)

(assert (=> b!4536342 m!5298839))

(declare-fun m!5298841 () Bool)

(assert (=> b!4536342 m!5298841))

(declare-fun m!5298843 () Bool)

(assert (=> b!4536342 m!5298843))

(declare-fun m!5298845 () Bool)

(assert (=> b!4536342 m!5298845))

(assert (=> b!4536342 m!5296593))

(declare-fun m!5298847 () Bool)

(assert (=> b!4536342 m!5298847))

(declare-fun m!5298849 () Bool)

(assert (=> b!4536342 m!5298849))

(declare-fun m!5298851 () Bool)

(assert (=> b!4536342 m!5298851))

(assert (=> b!4536342 m!5298839))

(declare-fun m!5298853 () Bool)

(assert (=> b!4536342 m!5298853))

(assert (=> b!4536342 m!5296593))

(assert (=> b!4536342 m!5298849))

(declare-fun m!5298855 () Bool)

(assert (=> b!4536342 m!5298855))

(declare-fun m!5298857 () Bool)

(assert (=> b!4536342 m!5298857))

(assert (=> b!4536342 m!5298841))

(declare-fun m!5298859 () Bool)

(assert (=> b!4536342 m!5298859))

(assert (=> bm!316270 m!5296593))

(declare-fun m!5298861 () Bool)

(assert (=> bm!316270 m!5298861))

(declare-fun m!5298863 () Bool)

(assert (=> bm!316271 m!5298863))

(declare-fun m!5298865 () Bool)

(assert (=> b!4536344 m!5298865))

(assert (=> d!1400686 d!1401276))

(declare-fun d!1401284 () Bool)

(assert (=> d!1401284 (= (addToMapMapFromBucket!719 (_2!28896 lt!1710445) (-!418 lt!1710448 key!3287)) (-!418 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448) key!3287))))

(assert (=> d!1401284 true))

(declare-fun _$14!1212 () Unit!97630)

(assert (=> d!1401284 (= (choose!29809 lt!1710448 key!3287 (_2!28896 lt!1710445)) _$14!1212)))

(declare-fun bs!872587 () Bool)

(assert (= bs!872587 d!1401284))

(assert (=> bs!872587 m!5296593))

(assert (=> bs!872587 m!5296593))

(assert (=> bs!872587 m!5296923))

(assert (=> bs!872587 m!5296647))

(assert (=> bs!872587 m!5296647))

(assert (=> bs!872587 m!5296649))

(assert (=> d!1400686 d!1401284))

(assert (=> d!1400686 d!1400628))

(assert (=> d!1400686 d!1400732))

(assert (=> d!1400686 d!1400622))

(assert (=> d!1400686 d!1400626))

(declare-fun b!4536357 () Bool)

(declare-fun e!2826716 () Option!11186)

(declare-fun e!2826717 () Option!11186)

(assert (=> b!4536357 (= e!2826716 e!2826717)))

(declare-fun c!774721 () Bool)

(assert (=> b!4536357 (= c!774721 (and ((_ is Cons!50733) (toList!4392 lt!1710762)) (not (= (_1!28896 (h!56608 (toList!4392 lt!1710762))) (_1!28896 lt!1710425)))))))

(declare-fun b!4536356 () Bool)

(assert (=> b!4536356 (= e!2826716 (Some!11185 (_2!28896 (h!56608 (toList!4392 lt!1710762)))))))

(declare-fun b!4536361 () Bool)

(assert (=> b!4536361 (= e!2826717 None!11185)))

(declare-fun d!1401290 () Bool)

(declare-fun c!774720 () Bool)

(assert (=> d!1401290 (= c!774720 (and ((_ is Cons!50733) (toList!4392 lt!1710762)) (= (_1!28896 (h!56608 (toList!4392 lt!1710762))) (_1!28896 lt!1710425))))))

(assert (=> d!1401290 (= (getValueByKey!1136 (toList!4392 lt!1710762) (_1!28896 lt!1710425)) e!2826716)))

(declare-fun b!4536358 () Bool)

(assert (=> b!4536358 (= e!2826717 (getValueByKey!1136 (t!357819 (toList!4392 lt!1710762)) (_1!28896 lt!1710425)))))

(assert (= (and d!1401290 c!774720) b!4536356))

(assert (= (and d!1401290 (not c!774720)) b!4536357))

(assert (= (and b!4536357 c!774721) b!4536358))

(assert (= (and b!4536357 (not c!774721)) b!4536361))

(declare-fun m!5298911 () Bool)

(assert (=> b!4536358 m!5298911))

(assert (=> b!4535455 d!1401290))

(assert (=> b!4535498 d!1400968))

(assert (=> b!4535498 d!1400970))

(declare-fun d!1401292 () Bool)

(declare-fun res!1889997 () Bool)

(declare-fun e!2826720 () Bool)

(assert (=> d!1401292 (=> res!1889997 e!2826720)))

(assert (=> d!1401292 (= res!1889997 ((_ is Nil!50732) (toList!4391 lt!1710415)))))

(assert (=> d!1401292 (= (forall!10330 (toList!4391 lt!1710415) (ite c!774524 lambda!175349 lambda!175351)) e!2826720)))

(declare-fun b!4536364 () Bool)

(declare-fun e!2826721 () Bool)

(assert (=> b!4536364 (= e!2826720 e!2826721)))

(declare-fun res!1889998 () Bool)

(assert (=> b!4536364 (=> (not res!1889998) (not e!2826721))))

(assert (=> b!4536364 (= res!1889998 (dynLambda!21205 (ite c!774524 lambda!175349 lambda!175351) (h!56607 (toList!4391 lt!1710415))))))

(declare-fun b!4536365 () Bool)

(assert (=> b!4536365 (= e!2826721 (forall!10330 (t!357818 (toList!4391 lt!1710415)) (ite c!774524 lambda!175349 lambda!175351)))))

(assert (= (and d!1401292 (not res!1889997)) b!4536364))

(assert (= (and b!4536364 res!1889998) b!4536365))

(declare-fun b_lambda!157309 () Bool)

(assert (=> (not b_lambda!157309) (not b!4536364)))

(declare-fun m!5298915 () Bool)

(assert (=> b!4536364 m!5298915))

(declare-fun m!5298917 () Bool)

(assert (=> b!4536365 m!5298917))

(assert (=> bm!316195 d!1401292))

(declare-fun d!1401296 () Bool)

(declare-fun e!2826727 () Bool)

(assert (=> d!1401296 e!2826727))

(declare-fun res!1890003 () Bool)

(assert (=> d!1401296 (=> res!1890003 e!2826727)))

(declare-fun lt!1711410 () Bool)

(assert (=> d!1401296 (= res!1890003 (not lt!1711410))))

(declare-fun lt!1711411 () Bool)

(assert (=> d!1401296 (= lt!1711410 lt!1711411)))

(declare-fun lt!1711409 () Unit!97630)

(declare-fun e!2826726 () Unit!97630)

(assert (=> d!1401296 (= lt!1711409 e!2826726)))

(declare-fun c!774722 () Bool)

(assert (=> d!1401296 (= c!774722 lt!1711411)))

(assert (=> d!1401296 (= lt!1711411 (containsKey!1858 (toList!4392 lt!1710926) (_1!28896 lt!1710445)))))

(assert (=> d!1401296 (= (contains!13512 lt!1710926 (_1!28896 lt!1710445)) lt!1711410)))

(declare-fun b!4536370 () Bool)

(declare-fun lt!1711408 () Unit!97630)

(assert (=> b!4536370 (= e!2826726 lt!1711408)))

(assert (=> b!4536370 (= lt!1711408 (lemmaContainsKeyImpliesGetValueByKeyDefined!1039 (toList!4392 lt!1710926) (_1!28896 lt!1710445)))))

(assert (=> b!4536370 (isDefined!8462 (getValueByKey!1136 (toList!4392 lt!1710926) (_1!28896 lt!1710445)))))

(declare-fun b!4536371 () Bool)

(declare-fun Unit!97872 () Unit!97630)

(assert (=> b!4536371 (= e!2826726 Unit!97872)))

(declare-fun b!4536372 () Bool)

(assert (=> b!4536372 (= e!2826727 (isDefined!8462 (getValueByKey!1136 (toList!4392 lt!1710926) (_1!28896 lt!1710445))))))

(assert (= (and d!1401296 c!774722) b!4536370))

(assert (= (and d!1401296 (not c!774722)) b!4536371))

(assert (= (and d!1401296 (not res!1890003)) b!4536372))

(declare-fun m!5298923 () Bool)

(assert (=> d!1401296 m!5298923))

(declare-fun m!5298925 () Bool)

(assert (=> b!4536370 m!5298925))

(assert (=> b!4536370 m!5297587))

(assert (=> b!4536370 m!5297587))

(declare-fun m!5298927 () Bool)

(assert (=> b!4536370 m!5298927))

(assert (=> b!4536372 m!5297587))

(assert (=> b!4536372 m!5297587))

(assert (=> b!4536372 m!5298927))

(assert (=> d!1400880 d!1401296))

(declare-fun b!4536374 () Bool)

(declare-fun e!2826728 () Option!11186)

(declare-fun e!2826729 () Option!11186)

(assert (=> b!4536374 (= e!2826728 e!2826729)))

(declare-fun c!774724 () Bool)

(assert (=> b!4536374 (= c!774724 (and ((_ is Cons!50733) lt!1710925) (not (= (_1!28896 (h!56608 lt!1710925)) (_1!28896 lt!1710445)))))))

(declare-fun b!4536373 () Bool)

(assert (=> b!4536373 (= e!2826728 (Some!11185 (_2!28896 (h!56608 lt!1710925))))))

(declare-fun b!4536376 () Bool)

(assert (=> b!4536376 (= e!2826729 None!11185)))

(declare-fun d!1401300 () Bool)

(declare-fun c!774723 () Bool)

(assert (=> d!1401300 (= c!774723 (and ((_ is Cons!50733) lt!1710925) (= (_1!28896 (h!56608 lt!1710925)) (_1!28896 lt!1710445))))))

(assert (=> d!1401300 (= (getValueByKey!1136 lt!1710925 (_1!28896 lt!1710445)) e!2826728)))

(declare-fun b!4536375 () Bool)

(assert (=> b!4536375 (= e!2826729 (getValueByKey!1136 (t!357819 lt!1710925) (_1!28896 lt!1710445)))))

(assert (= (and d!1401300 c!774723) b!4536373))

(assert (= (and d!1401300 (not c!774723)) b!4536374))

(assert (= (and b!4536374 c!774724) b!4536375))

(assert (= (and b!4536374 (not c!774724)) b!4536376))

(declare-fun m!5298929 () Bool)

(assert (=> b!4536375 m!5298929))

(assert (=> d!1400880 d!1401300))

(declare-fun d!1401302 () Bool)

(assert (=> d!1401302 (= (getValueByKey!1136 lt!1710925 (_1!28896 lt!1710445)) (Some!11185 (_2!28896 lt!1710445)))))

(declare-fun lt!1711412 () Unit!97630)

(assert (=> d!1401302 (= lt!1711412 (choose!29830 lt!1710925 (_1!28896 lt!1710445) (_2!28896 lt!1710445)))))

(declare-fun e!2826730 () Bool)

(assert (=> d!1401302 e!2826730))

(declare-fun res!1890004 () Bool)

(assert (=> d!1401302 (=> (not res!1890004) (not e!2826730))))

(assert (=> d!1401302 (= res!1890004 (isStrictlySorted!452 lt!1710925))))

(assert (=> d!1401302 (= (lemmaContainsTupThenGetReturnValue!712 lt!1710925 (_1!28896 lt!1710445) (_2!28896 lt!1710445)) lt!1711412)))

(declare-fun b!4536377 () Bool)

(declare-fun res!1890005 () Bool)

(assert (=> b!4536377 (=> (not res!1890005) (not e!2826730))))

(assert (=> b!4536377 (= res!1890005 (containsKey!1858 lt!1710925 (_1!28896 lt!1710445)))))

(declare-fun b!4536378 () Bool)

(assert (=> b!4536378 (= e!2826730 (contains!13511 lt!1710925 (tuple2!51205 (_1!28896 lt!1710445) (_2!28896 lt!1710445))))))

(assert (= (and d!1401302 res!1890004) b!4536377))

(assert (= (and b!4536377 res!1890005) b!4536378))

(assert (=> d!1401302 m!5297581))

(declare-fun m!5298933 () Bool)

(assert (=> d!1401302 m!5298933))

(declare-fun m!5298935 () Bool)

(assert (=> d!1401302 m!5298935))

(declare-fun m!5298937 () Bool)

(assert (=> b!4536377 m!5298937))

(declare-fun m!5298939 () Bool)

(assert (=> b!4536378 m!5298939))

(assert (=> d!1400880 d!1401302))

(declare-fun b!4536383 () Bool)

(declare-fun e!2826735 () List!50857)

(declare-fun e!2826734 () List!50857)

(assert (=> b!4536383 (= e!2826735 e!2826734)))

(declare-fun c!774730 () Bool)

(assert (=> b!4536383 (= c!774730 (and ((_ is Cons!50733) (toList!4392 lt!1710432)) (= (_1!28896 (h!56608 (toList!4392 lt!1710432))) (_1!28896 lt!1710445))))))

(declare-fun bm!316276 () Bool)

(declare-fun e!2826737 () List!50857)

(declare-fun call!316282 () List!50857)

(declare-fun c!774728 () Bool)

(assert (=> bm!316276 (= call!316282 ($colon$colon!959 e!2826737 (ite c!774728 (h!56608 (toList!4392 lt!1710432)) (tuple2!51205 (_1!28896 lt!1710445) (_2!28896 lt!1710445)))))))

(declare-fun c!774729 () Bool)

(assert (=> bm!316276 (= c!774729 c!774728)))

(declare-fun b!4536384 () Bool)

(assert (=> b!4536384 (= e!2826737 (insertStrictlySorted!430 (t!357819 (toList!4392 lt!1710432)) (_1!28896 lt!1710445) (_2!28896 lt!1710445)))))

(declare-fun b!4536385 () Bool)

(declare-fun e!2826733 () List!50857)

(declare-fun call!316281 () List!50857)

(assert (=> b!4536385 (= e!2826733 call!316281)))

(declare-fun bm!316277 () Bool)

(declare-fun call!316283 () List!50857)

(assert (=> bm!316277 (= call!316283 call!316282)))

(declare-fun b!4536387 () Bool)

(declare-fun c!774727 () Bool)

(assert (=> b!4536387 (= c!774727 (and ((_ is Cons!50733) (toList!4392 lt!1710432)) (bvsgt (_1!28896 (h!56608 (toList!4392 lt!1710432))) (_1!28896 lt!1710445))))))

(assert (=> b!4536387 (= e!2826734 e!2826733)))

(declare-fun b!4536388 () Bool)

(assert (=> b!4536388 (= e!2826735 call!316282)))

(declare-fun bm!316278 () Bool)

(assert (=> bm!316278 (= call!316281 call!316283)))

(declare-fun b!4536389 () Bool)

(assert (=> b!4536389 (= e!2826733 call!316281)))

(declare-fun b!4536390 () Bool)

(assert (=> b!4536390 (= e!2826734 call!316283)))

(declare-fun b!4536386 () Bool)

(declare-fun e!2826736 () Bool)

(declare-fun lt!1711413 () List!50857)

(assert (=> b!4536386 (= e!2826736 (contains!13511 lt!1711413 (tuple2!51205 (_1!28896 lt!1710445) (_2!28896 lt!1710445))))))

(declare-fun d!1401308 () Bool)

(assert (=> d!1401308 e!2826736))

(declare-fun res!1890007 () Bool)

(assert (=> d!1401308 (=> (not res!1890007) (not e!2826736))))

(assert (=> d!1401308 (= res!1890007 (isStrictlySorted!452 lt!1711413))))

(assert (=> d!1401308 (= lt!1711413 e!2826735)))

(assert (=> d!1401308 (= c!774728 (and ((_ is Cons!50733) (toList!4392 lt!1710432)) (bvslt (_1!28896 (h!56608 (toList!4392 lt!1710432))) (_1!28896 lt!1710445))))))

(assert (=> d!1401308 (isStrictlySorted!452 (toList!4392 lt!1710432))))

(assert (=> d!1401308 (= (insertStrictlySorted!430 (toList!4392 lt!1710432) (_1!28896 lt!1710445) (_2!28896 lt!1710445)) lt!1711413)))

(declare-fun b!4536391 () Bool)

(assert (=> b!4536391 (= e!2826737 (ite c!774730 (t!357819 (toList!4392 lt!1710432)) (ite c!774727 (Cons!50733 (h!56608 (toList!4392 lt!1710432)) (t!357819 (toList!4392 lt!1710432))) Nil!50733)))))

(declare-fun b!4536392 () Bool)

(declare-fun res!1890006 () Bool)

(assert (=> b!4536392 (=> (not res!1890006) (not e!2826736))))

(assert (=> b!4536392 (= res!1890006 (containsKey!1858 lt!1711413 (_1!28896 lt!1710445)))))

(assert (= (and d!1401308 c!774728) b!4536388))

(assert (= (and d!1401308 (not c!774728)) b!4536383))

(assert (= (and b!4536383 c!774730) b!4536390))

(assert (= (and b!4536383 (not c!774730)) b!4536387))

(assert (= (and b!4536387 c!774727) b!4536385))

(assert (= (and b!4536387 (not c!774727)) b!4536389))

(assert (= (or b!4536385 b!4536389) bm!316278))

(assert (= (or b!4536390 bm!316278) bm!316277))

(assert (= (or b!4536388 bm!316277) bm!316276))

(assert (= (and bm!316276 c!774729) b!4536384))

(assert (= (and bm!316276 (not c!774729)) b!4536391))

(assert (= (and d!1401308 res!1890007) b!4536392))

(assert (= (and b!4536392 res!1890006) b!4536386))

(declare-fun m!5298949 () Bool)

(assert (=> bm!316276 m!5298949))

(declare-fun m!5298951 () Bool)

(assert (=> b!4536392 m!5298951))

(declare-fun m!5298953 () Bool)

(assert (=> b!4536386 m!5298953))

(declare-fun m!5298955 () Bool)

(assert (=> d!1401308 m!5298955))

(declare-fun m!5298957 () Bool)

(assert (=> d!1401308 m!5298957))

(declare-fun m!5298959 () Bool)

(assert (=> b!4536384 m!5298959))

(assert (=> d!1400880 d!1401308))

(assert (=> b!4535514 d!1401056))

(assert (=> b!4535514 d!1401058))

(declare-fun d!1401316 () Bool)

(declare-fun c!774731 () Bool)

(assert (=> d!1401316 (= c!774731 ((_ is Nil!50732) (toList!4391 lt!1710439)))))

(declare-fun e!2826740 () (InoxSet tuple2!51202))

(assert (=> d!1401316 (= (content!8420 (toList!4391 lt!1710439)) e!2826740)))

(declare-fun b!4536395 () Bool)

(assert (=> b!4536395 (= e!2826740 ((as const (Array tuple2!51202 Bool)) false))))

(declare-fun b!4536396 () Bool)

(assert (=> b!4536396 (= e!2826740 ((_ map or) (store ((as const (Array tuple2!51202 Bool)) false) (h!56607 (toList!4391 lt!1710439)) true) (content!8420 (t!357818 (toList!4391 lt!1710439)))))))

(assert (= (and d!1401316 c!774731) b!4536395))

(assert (= (and d!1401316 (not c!774731)) b!4536396))

(declare-fun m!5298961 () Bool)

(assert (=> b!4536396 m!5298961))

(declare-fun m!5298963 () Bool)

(assert (=> b!4536396 m!5298963))

(assert (=> d!1400812 d!1401316))

(assert (=> d!1400812 d!1400990))

(declare-fun d!1401318 () Bool)

(declare-fun e!2826743 () Bool)

(assert (=> d!1401318 e!2826743))

(declare-fun res!1890010 () Bool)

(assert (=> d!1401318 (=> res!1890010 e!2826743)))

(declare-fun e!2826745 () Bool)

(assert (=> d!1401318 (= res!1890010 e!2826745)))

(declare-fun res!1890011 () Bool)

(assert (=> d!1401318 (=> (not res!1890011) (not e!2826745))))

(declare-fun lt!1711421 () Bool)

(assert (=> d!1401318 (= res!1890011 (not lt!1711421))))

(declare-fun lt!1711416 () Bool)

(assert (=> d!1401318 (= lt!1711421 lt!1711416)))

(declare-fun lt!1711415 () Unit!97630)

(declare-fun e!2826742 () Unit!97630)

(assert (=> d!1401318 (= lt!1711415 e!2826742)))

(declare-fun c!774732 () Bool)

(assert (=> d!1401318 (= c!774732 lt!1711416)))

(assert (=> d!1401318 (= lt!1711416 (containsKey!1859 (toList!4391 (extractMap!1248 (toList!4392 lm!1477))) key!3287))))

(assert (=> d!1401318 (= (contains!13513 (extractMap!1248 (toList!4392 lm!1477)) key!3287) lt!1711421)))

(declare-fun b!4536397 () Bool)

(declare-fun lt!1711422 () Unit!97630)

(assert (=> b!4536397 (= e!2826742 lt!1711422)))

(declare-fun lt!1711417 () Unit!97630)

(assert (=> b!4536397 (= lt!1711417 (lemmaContainsKeyImpliesGetValueByKeyDefined!1040 (toList!4391 (extractMap!1248 (toList!4392 lm!1477))) key!3287))))

(assert (=> b!4536397 (isDefined!8463 (getValueByKey!1137 (toList!4391 (extractMap!1248 (toList!4392 lm!1477))) key!3287))))

(declare-fun lt!1711419 () Unit!97630)

(assert (=> b!4536397 (= lt!1711419 lt!1711417)))

(assert (=> b!4536397 (= lt!1711422 (lemmaInListThenGetKeysListContains!483 (toList!4391 (extractMap!1248 (toList!4392 lm!1477))) key!3287))))

(declare-fun call!316284 () Bool)

(assert (=> b!4536397 call!316284))

(declare-fun b!4536398 () Bool)

(assert (=> b!4536398 false))

(declare-fun lt!1711418 () Unit!97630)

(declare-fun lt!1711420 () Unit!97630)

(assert (=> b!4536398 (= lt!1711418 lt!1711420)))

(assert (=> b!4536398 (containsKey!1859 (toList!4391 (extractMap!1248 (toList!4392 lm!1477))) key!3287)))

(assert (=> b!4536398 (= lt!1711420 (lemmaInGetKeysListThenContainsKey!486 (toList!4391 (extractMap!1248 (toList!4392 lm!1477))) key!3287))))

(declare-fun e!2826744 () Unit!97630)

(declare-fun Unit!97876 () Unit!97630)

(assert (=> b!4536398 (= e!2826744 Unit!97876)))

(declare-fun bm!316279 () Bool)

(declare-fun e!2826746 () List!50859)

(assert (=> bm!316279 (= call!316284 (contains!13515 e!2826746 key!3287))))

(declare-fun c!774734 () Bool)

(assert (=> bm!316279 (= c!774734 c!774732)))

(declare-fun b!4536399 () Bool)

(declare-fun e!2826741 () Bool)

(assert (=> b!4536399 (= e!2826743 e!2826741)))

(declare-fun res!1890012 () Bool)

(assert (=> b!4536399 (=> (not res!1890012) (not e!2826741))))

(assert (=> b!4536399 (= res!1890012 (isDefined!8463 (getValueByKey!1137 (toList!4391 (extractMap!1248 (toList!4392 lm!1477))) key!3287)))))

(declare-fun b!4536400 () Bool)

(assert (=> b!4536400 (= e!2826746 (keys!17648 (extractMap!1248 (toList!4392 lm!1477))))))

(declare-fun b!4536401 () Bool)

(assert (=> b!4536401 (= e!2826742 e!2826744)))

(declare-fun c!774733 () Bool)

(assert (=> b!4536401 (= c!774733 call!316284)))

(declare-fun b!4536402 () Bool)

(declare-fun Unit!97877 () Unit!97630)

(assert (=> b!4536402 (= e!2826744 Unit!97877)))

(declare-fun b!4536403 () Bool)

(assert (=> b!4536403 (= e!2826746 (getKeysList!487 (toList!4391 (extractMap!1248 (toList!4392 lm!1477)))))))

(declare-fun b!4536404 () Bool)

(assert (=> b!4536404 (= e!2826741 (contains!13515 (keys!17648 (extractMap!1248 (toList!4392 lm!1477))) key!3287))))

(declare-fun b!4536405 () Bool)

(assert (=> b!4536405 (= e!2826745 (not (contains!13515 (keys!17648 (extractMap!1248 (toList!4392 lm!1477))) key!3287)))))

(assert (= (and d!1401318 c!774732) b!4536397))

(assert (= (and d!1401318 (not c!774732)) b!4536401))

(assert (= (and b!4536401 c!774733) b!4536398))

(assert (= (and b!4536401 (not c!774733)) b!4536402))

(assert (= (or b!4536397 b!4536401) bm!316279))

(assert (= (and bm!316279 c!774734) b!4536403))

(assert (= (and bm!316279 (not c!774734)) b!4536400))

(assert (= (and d!1401318 res!1890011) b!4536405))

(assert (= (and d!1401318 (not res!1890010)) b!4536399))

(assert (= (and b!4536399 res!1890012) b!4536404))

(assert (=> b!4536404 m!5296549))

(declare-fun m!5298965 () Bool)

(assert (=> b!4536404 m!5298965))

(assert (=> b!4536404 m!5298965))

(declare-fun m!5298967 () Bool)

(assert (=> b!4536404 m!5298967))

(declare-fun m!5298969 () Bool)

(assert (=> b!4536398 m!5298969))

(declare-fun m!5298971 () Bool)

(assert (=> b!4536398 m!5298971))

(assert (=> b!4536400 m!5296549))

(assert (=> b!4536400 m!5298965))

(assert (=> b!4536405 m!5296549))

(assert (=> b!4536405 m!5298965))

(assert (=> b!4536405 m!5298965))

(assert (=> b!4536405 m!5298967))

(declare-fun m!5298973 () Bool)

(assert (=> b!4536399 m!5298973))

(assert (=> b!4536399 m!5298973))

(declare-fun m!5298975 () Bool)

(assert (=> b!4536399 m!5298975))

(declare-fun m!5298977 () Bool)

(assert (=> bm!316279 m!5298977))

(declare-fun m!5298979 () Bool)

(assert (=> b!4536403 m!5298979))

(declare-fun m!5298981 () Bool)

(assert (=> b!4536397 m!5298981))

(assert (=> b!4536397 m!5298973))

(assert (=> b!4536397 m!5298973))

(assert (=> b!4536397 m!5298975))

(declare-fun m!5298983 () Bool)

(assert (=> b!4536397 m!5298983))

(assert (=> d!1401318 m!5298969))

(assert (=> d!1400708 d!1401318))

(assert (=> d!1400708 d!1400702))

(declare-fun d!1401320 () Bool)

(assert (=> d!1401320 (not (contains!13513 (extractMap!1248 (toList!4392 lm!1477)) key!3287))))

(assert (=> d!1401320 true))

(declare-fun _$26!410 () Unit!97630)

(assert (=> d!1401320 (= (choose!29813 lm!1477 key!3287 hashF!1107) _$26!410)))

(declare-fun bs!872612 () Bool)

(assert (= bs!872612 d!1401320))

(assert (=> bs!872612 m!5296549))

(assert (=> bs!872612 m!5296549))

(assert (=> bs!872612 m!5297013))

(assert (=> d!1400708 d!1401320))

(declare-fun d!1401324 () Bool)

(declare-fun res!1890019 () Bool)

(declare-fun e!2826753 () Bool)

(assert (=> d!1401324 (=> res!1890019 e!2826753)))

(assert (=> d!1401324 (= res!1890019 ((_ is Nil!50733) (toList!4392 lm!1477)))))

(assert (=> d!1401324 (= (forall!10329 (toList!4392 lm!1477) lambda!175309) e!2826753)))

(declare-fun b!4536412 () Bool)

(declare-fun e!2826754 () Bool)

(assert (=> b!4536412 (= e!2826753 e!2826754)))

(declare-fun res!1890020 () Bool)

(assert (=> b!4536412 (=> (not res!1890020) (not e!2826754))))

(assert (=> b!4536412 (= res!1890020 (dynLambda!21203 lambda!175309 (h!56608 (toList!4392 lm!1477))))))

(declare-fun b!4536413 () Bool)

(assert (=> b!4536413 (= e!2826754 (forall!10329 (t!357819 (toList!4392 lm!1477)) lambda!175309))))

(assert (= (and d!1401324 (not res!1890019)) b!4536412))

(assert (= (and b!4536412 res!1890020) b!4536413))

(declare-fun b_lambda!157313 () Bool)

(assert (=> (not b_lambda!157313) (not b!4536412)))

(declare-fun m!5298997 () Bool)

(assert (=> b!4536412 m!5298997))

(declare-fun m!5298999 () Bool)

(assert (=> b!4536413 m!5298999))

(assert (=> d!1400708 d!1401324))

(declare-fun d!1401332 () Bool)

(declare-fun lt!1711429 () Bool)

(assert (=> d!1401332 (= lt!1711429 (select (content!8421 e!2826082) key!3287))))

(declare-fun e!2826757 () Bool)

(assert (=> d!1401332 (= lt!1711429 e!2826757)))

(declare-fun res!1890024 () Bool)

(assert (=> d!1401332 (=> (not res!1890024) (not e!2826757))))

(assert (=> d!1401332 (= res!1890024 ((_ is Cons!50735) e!2826082))))

(assert (=> d!1401332 (= (contains!13515 e!2826082 key!3287) lt!1711429)))

(declare-fun b!4536416 () Bool)

(declare-fun e!2826758 () Bool)

(assert (=> b!4536416 (= e!2826757 e!2826758)))

(declare-fun res!1890023 () Bool)

(assert (=> b!4536416 (=> res!1890023 e!2826758)))

(assert (=> b!4536416 (= res!1890023 (= (h!56612 e!2826082) key!3287))))

(declare-fun b!4536417 () Bool)

(assert (=> b!4536417 (= e!2826758 (contains!13515 (t!357821 e!2826082) key!3287))))

(assert (= (and d!1401332 res!1890024) b!4536416))

(assert (= (and b!4536416 (not res!1890023)) b!4536417))

(declare-fun m!5299001 () Bool)

(assert (=> d!1401332 m!5299001))

(declare-fun m!5299003 () Bool)

(assert (=> d!1401332 m!5299003))

(declare-fun m!5299007 () Bool)

(assert (=> b!4536417 m!5299007))

(assert (=> bm!316172 d!1401332))

(declare-fun d!1401334 () Bool)

(assert (=> d!1401334 (isDefined!8462 (getValueByKey!1136 (toList!4392 lt!1710421) hash!344))))

(declare-fun lt!1711433 () Unit!97630)

(declare-fun choose!29840 (List!50857 (_ BitVec 64)) Unit!97630)

(assert (=> d!1401334 (= lt!1711433 (choose!29840 (toList!4392 lt!1710421) hash!344))))

(declare-fun e!2826761 () Bool)

(assert (=> d!1401334 e!2826761))

(declare-fun res!1890027 () Bool)

(assert (=> d!1401334 (=> (not res!1890027) (not e!2826761))))

(assert (=> d!1401334 (= res!1890027 (isStrictlySorted!452 (toList!4392 lt!1710421)))))

(assert (=> d!1401334 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1039 (toList!4392 lt!1710421) hash!344) lt!1711433)))

(declare-fun b!4536420 () Bool)

(assert (=> b!4536420 (= e!2826761 (containsKey!1858 (toList!4392 lt!1710421) hash!344))))

(assert (= (and d!1401334 res!1890027) b!4536420))

(assert (=> d!1401334 m!5296929))

(assert (=> d!1401334 m!5296929))

(assert (=> d!1401334 m!5296931))

(declare-fun m!5299015 () Bool)

(assert (=> d!1401334 m!5299015))

(assert (=> d!1401334 m!5298395))

(assert (=> b!4536420 m!5296925))

(assert (=> b!4535322 d!1401334))

(assert (=> b!4535322 d!1400930))

(assert (=> b!4535322 d!1400932))

(declare-fun d!1401342 () Bool)

(declare-fun e!2826765 () Bool)

(assert (=> d!1401342 e!2826765))

(declare-fun res!1890031 () Bool)

(assert (=> d!1401342 (=> res!1890031 e!2826765)))

(declare-fun lt!1711452 () Bool)

(assert (=> d!1401342 (= res!1890031 (not lt!1711452))))

(declare-fun lt!1711453 () Bool)

(assert (=> d!1401342 (= lt!1711452 lt!1711453)))

(declare-fun lt!1711451 () Unit!97630)

(declare-fun e!2826764 () Unit!97630)

(assert (=> d!1401342 (= lt!1711451 e!2826764)))

(declare-fun c!774736 () Bool)

(assert (=> d!1401342 (= c!774736 lt!1711453)))

(assert (=> d!1401342 (= lt!1711453 (containsKey!1858 (toList!4392 lm!1477) (hash!2895 hashF!1107 key!3287)))))

(assert (=> d!1401342 (= (contains!13512 lm!1477 (hash!2895 hashF!1107 key!3287)) lt!1711452)))

(declare-fun b!4536421 () Bool)

(declare-fun lt!1711448 () Unit!97630)

(assert (=> b!4536421 (= e!2826764 lt!1711448)))

(assert (=> b!4536421 (= lt!1711448 (lemmaContainsKeyImpliesGetValueByKeyDefined!1039 (toList!4392 lm!1477) (hash!2895 hashF!1107 key!3287)))))

(assert (=> b!4536421 (isDefined!8462 (getValueByKey!1136 (toList!4392 lm!1477) (hash!2895 hashF!1107 key!3287)))))

(declare-fun b!4536422 () Bool)

(declare-fun Unit!97878 () Unit!97630)

(assert (=> b!4536422 (= e!2826764 Unit!97878)))

(declare-fun b!4536423 () Bool)

(assert (=> b!4536423 (= e!2826765 (isDefined!8462 (getValueByKey!1136 (toList!4392 lm!1477) (hash!2895 hashF!1107 key!3287))))))

(assert (= (and d!1401342 c!774736) b!4536421))

(assert (= (and d!1401342 (not c!774736)) b!4536422))

(assert (= (and d!1401342 (not res!1890031)) b!4536423))

(assert (=> d!1401342 m!5296573))

(declare-fun m!5299017 () Bool)

(assert (=> d!1401342 m!5299017))

(assert (=> b!4536421 m!5296573))

(declare-fun m!5299019 () Bool)

(assert (=> b!4536421 m!5299019))

(assert (=> b!4536421 m!5296573))

(declare-fun m!5299021 () Bool)

(assert (=> b!4536421 m!5299021))

(assert (=> b!4536421 m!5299021))

(declare-fun m!5299023 () Bool)

(assert (=> b!4536421 m!5299023))

(assert (=> b!4536423 m!5296573))

(assert (=> b!4536423 m!5299021))

(assert (=> b!4536423 m!5299021))

(assert (=> b!4536423 m!5299023))

(assert (=> d!1400854 d!1401342))

(assert (=> d!1400854 d!1400848))

(declare-fun d!1401344 () Bool)

(assert (=> d!1401344 (contains!13512 lm!1477 (hash!2895 hashF!1107 key!3287))))

(assert (=> d!1401344 true))

(declare-fun _$27!1269 () Unit!97630)

(assert (=> d!1401344 (= (choose!29821 lm!1477 key!3287 hashF!1107) _$27!1269)))

(declare-fun bs!872657 () Bool)

(assert (= bs!872657 d!1401344))

(assert (=> bs!872657 m!5296573))

(assert (=> bs!872657 m!5296573))

(assert (=> bs!872657 m!5297475))

(assert (=> d!1400854 d!1401344))

(declare-fun d!1401346 () Bool)

(declare-fun res!1890032 () Bool)

(declare-fun e!2826767 () Bool)

(assert (=> d!1401346 (=> res!1890032 e!2826767)))

(assert (=> d!1401346 (= res!1890032 ((_ is Nil!50733) (toList!4392 lm!1477)))))

(assert (=> d!1401346 (= (forall!10329 (toList!4392 lm!1477) lambda!175348) e!2826767)))

(declare-fun b!4536429 () Bool)

(declare-fun e!2826768 () Bool)

(assert (=> b!4536429 (= e!2826767 e!2826768)))

(declare-fun res!1890033 () Bool)

(assert (=> b!4536429 (=> (not res!1890033) (not e!2826768))))

(assert (=> b!4536429 (= res!1890033 (dynLambda!21203 lambda!175348 (h!56608 (toList!4392 lm!1477))))))

(declare-fun b!4536430 () Bool)

(assert (=> b!4536430 (= e!2826768 (forall!10329 (t!357819 (toList!4392 lm!1477)) lambda!175348))))

(assert (= (and d!1401346 (not res!1890032)) b!4536429))

(assert (= (and b!4536429 res!1890033) b!4536430))

(declare-fun b_lambda!157319 () Bool)

(assert (=> (not b_lambda!157319) (not b!4536429)))

(declare-fun m!5299025 () Bool)

(assert (=> b!4536429 m!5299025))

(declare-fun m!5299027 () Bool)

(assert (=> b!4536430 m!5299027))

(assert (=> d!1400854 d!1401346))

(declare-fun bs!872683 () Bool)

(declare-fun d!1401348 () Bool)

(assert (= bs!872683 (and d!1401348 b!4536264)))

(declare-fun lambda!175464 () Int)

(assert (=> bs!872683 (= (= lt!1710429 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175464 lambda!175428))))

(declare-fun bs!872684 () Bool)

(assert (= bs!872684 (and d!1401348 d!1400724)))

(assert (=> bs!872684 (not (= lambda!175464 lambda!175312))))

(declare-fun bs!872685 () Bool)

(assert (= bs!872685 (and d!1401348 b!4535309)))

(assert (=> bs!872685 (= (= lt!1710429 lt!1710578) (= lambda!175464 lambda!175267))))

(declare-fun bs!872686 () Bool)

(assert (= bs!872686 (and d!1401348 b!4535797)))

(assert (=> bs!872686 (= (= lt!1710429 lt!1710989) (= lambda!175464 lambda!175373))))

(declare-fun bs!872687 () Bool)

(assert (= bs!872687 (and d!1401348 b!4535625)))

(assert (=> bs!872687 (= (= lt!1710429 lt!1710415) (= lambda!175464 lambda!175349))))

(declare-fun bs!872688 () Bool)

(assert (= bs!872688 (and d!1401348 b!4535622)))

(assert (=> bs!872688 (= (= lt!1710429 lt!1710902) (= lambda!175464 lambda!175351))))

(declare-fun bs!872689 () Bool)

(assert (= bs!872689 (and d!1401348 d!1401004)))

(assert (=> bs!872689 (= (= lt!1710429 lt!1711037) (= lambda!175464 lambda!175380))))

(declare-fun bs!872690 () Bool)

(assert (= bs!872690 (and d!1401348 b!4535542)))

(assert (=> bs!872690 (= lambda!175464 lambda!175340)))

(declare-fun bs!872691 () Bool)

(assert (= bs!872691 (and d!1401348 b!4536342)))

(assert (=> bs!872691 (= (= lt!1710429 lt!1711365) (= lambda!175464 lambda!175447))))

(declare-fun bs!872692 () Bool)

(assert (= bs!872692 (and d!1401348 b!4535669)))

(assert (=> bs!872692 (= (= lt!1710429 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175464 lambda!175360))))

(assert (=> bs!872690 (= (= lt!1710429 lt!1710840) (= lambda!175464 lambda!175341))))

(declare-fun bs!872694 () Bool)

(assert (= bs!872694 (and d!1401348 b!4536291)))

(assert (=> bs!872694 (= (= lt!1710429 lt!1711317) (= lambda!175464 lambda!175439))))

(declare-fun bs!872695 () Bool)

(assert (= bs!872695 (and d!1401348 b!4535666)))

(assert (=> bs!872695 (= (= lt!1710429 lt!1710938) (= lambda!175464 lambda!175362))))

(declare-fun bs!872697 () Bool)

(assert (= bs!872697 (and d!1401348 b!4535832)))

(assert (=> bs!872697 (= (= lt!1710429 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175464 lambda!175377))))

(declare-fun bs!872699 () Bool)

(assert (= bs!872699 (and d!1401348 d!1401018)))

(assert (=> bs!872699 (= (= lt!1710429 lt!1710902) (= lambda!175464 lambda!175389))))

(declare-fun bs!872701 () Bool)

(assert (= bs!872701 (and d!1401348 b!4536261)))

(assert (=> bs!872701 (= (= lt!1710429 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175464 lambda!175429))))

(declare-fun bs!872704 () Bool)

(assert (= bs!872704 (and d!1401348 d!1400816)))

(assert (=> bs!872704 (= (= lt!1710429 lt!1710851) (= lambda!175464 lambda!175344))))

(assert (=> bs!872694 (= (= lt!1710429 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175464 lambda!175438))))

(assert (=> bs!872691 (= (= lt!1710429 (-!418 lt!1710448 key!3287)) (= lambda!175464 lambda!175446))))

(declare-fun bs!872708 () Bool)

(assert (= bs!872708 (and d!1401348 d!1401276)))

(assert (=> bs!872708 (= (= lt!1710429 lt!1711376) (= lambda!175464 lambda!175450))))

(assert (=> bs!872695 (= (= lt!1710429 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175464 lambda!175361))))

(declare-fun bs!872711 () Bool)

(assert (= bs!872711 (and d!1401348 b!4535829)))

(assert (=> bs!872711 (= (= lt!1710429 lt!1711026) (= lambda!175464 lambda!175379))))

(assert (=> bs!872688 (= (= lt!1710429 lt!1710415) (= lambda!175464 lambda!175350))))

(declare-fun bs!872713 () Bool)

(assert (= bs!872713 (and d!1401348 d!1401188)))

(assert (=> bs!872713 (= (= lt!1710429 lt!1711279) (= lambda!175464 lambda!175431))))

(declare-fun bs!872715 () Bool)

(assert (= bs!872715 (and d!1401348 b!4536294)))

(assert (=> bs!872715 (= (= lt!1710429 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175464 lambda!175437))))

(assert (=> bs!872701 (= (= lt!1710429 lt!1711268) (= lambda!175464 lambda!175430))))

(declare-fun bs!872718 () Bool)

(assert (= bs!872718 (and d!1401348 d!1400896)))

(assert (=> bs!872718 (= (= lt!1710429 lt!1710949) (= lambda!175464 lambda!175363))))

(assert (=> bs!872711 (= (= lt!1710429 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175464 lambda!175378))))

(assert (=> bs!872686 (= (= lt!1710429 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175464 lambda!175372))))

(declare-fun bs!872722 () Bool)

(assert (= bs!872722 (and d!1401348 d!1400874)))

(assert (=> bs!872722 (= (= lt!1710429 lt!1710913) (= lambda!175464 lambda!175352))))

(declare-fun bs!872724 () Bool)

(assert (= bs!872724 (and d!1401348 b!4536345)))

(assert (=> bs!872724 (= (= lt!1710429 (-!418 lt!1710448 key!3287)) (= lambda!175464 lambda!175443))))

(declare-fun bs!872725 () Bool)

(assert (= bs!872725 (and d!1401348 b!4535199)))

(assert (=> bs!872725 (not (= lambda!175464 lambda!175215))))

(declare-fun bs!872727 () Bool)

(assert (= bs!872727 (and d!1401348 b!4535545)))

(assert (=> bs!872727 (= lambda!175464 lambda!175339)))

(declare-fun bs!872728 () Bool)

(assert (= bs!872728 (and d!1401348 d!1401222)))

(assert (=> bs!872728 (= (= lt!1710429 lt!1711328) (= lambda!175464 lambda!175440))))

(declare-fun bs!872730 () Bool)

(assert (= bs!872730 (and d!1401348 b!4535800)))

(assert (=> bs!872730 (= (= lt!1710429 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175464 lambda!175371))))

(declare-fun bs!872731 () Bool)

(assert (= bs!872731 (and d!1401348 d!1400980)))

(assert (=> bs!872731 (= (= lt!1710429 lt!1711000) (= lambda!175464 lambda!175374))))

(declare-fun bs!872732 () Bool)

(assert (= bs!872732 (and d!1401348 d!1400628)))

(assert (=> bs!872732 (= (= lt!1710429 lt!1710589) (= lambda!175464 lambda!175268))))

(assert (=> bs!872685 (= (= lt!1710429 lt!1710448) (= lambda!175464 lambda!175266))))

(declare-fun bs!872735 () Bool)

(assert (= bs!872735 (and d!1401348 b!4535312)))

(assert (=> bs!872735 (= (= lt!1710429 lt!1710448) (= lambda!175464 lambda!175265))))

(assert (=> d!1401348 true))

(assert (=> d!1401348 (forall!10330 (toList!4391 lt!1710429) lambda!175464)))

(declare-fun lt!1711461 () Unit!97630)

(declare-fun choose!29841 (ListMap!3653) Unit!97630)

(assert (=> d!1401348 (= lt!1711461 (choose!29841 lt!1710429))))

(assert (=> d!1401348 (= (lemmaContainsAllItsOwnKeys!359 lt!1710429) lt!1711461)))

(declare-fun bs!872737 () Bool)

(assert (= bs!872737 d!1401348))

(declare-fun m!5299029 () Bool)

(assert (=> bs!872737 m!5299029))

(declare-fun m!5299031 () Bool)

(assert (=> bs!872737 m!5299031))

(assert (=> bm!316191 d!1401348))

(declare-fun b!4536432 () Bool)

(declare-fun e!2826769 () Option!11186)

(declare-fun e!2826770 () Option!11186)

(assert (=> b!4536432 (= e!2826769 e!2826770)))

(declare-fun c!774738 () Bool)

(assert (=> b!4536432 (= c!774738 (and ((_ is Cons!50733) (toList!4392 lt!1710926)) (not (= (_1!28896 (h!56608 (toList!4392 lt!1710926))) (_1!28896 lt!1710445)))))))

(declare-fun b!4536431 () Bool)

(assert (=> b!4536431 (= e!2826769 (Some!11185 (_2!28896 (h!56608 (toList!4392 lt!1710926)))))))

(declare-fun b!4536434 () Bool)

(assert (=> b!4536434 (= e!2826770 None!11185)))

(declare-fun d!1401350 () Bool)

(declare-fun c!774737 () Bool)

(assert (=> d!1401350 (= c!774737 (and ((_ is Cons!50733) (toList!4392 lt!1710926)) (= (_1!28896 (h!56608 (toList!4392 lt!1710926))) (_1!28896 lt!1710445))))))

(assert (=> d!1401350 (= (getValueByKey!1136 (toList!4392 lt!1710926) (_1!28896 lt!1710445)) e!2826769)))

(declare-fun b!4536433 () Bool)

(assert (=> b!4536433 (= e!2826770 (getValueByKey!1136 (t!357819 (toList!4392 lt!1710926)) (_1!28896 lt!1710445)))))

(assert (= (and d!1401350 c!774737) b!4536431))

(assert (= (and d!1401350 (not c!774737)) b!4536432))

(assert (= (and b!4536432 c!774738) b!4536433))

(assert (= (and b!4536432 (not c!774738)) b!4536434))

(declare-fun m!5299033 () Bool)

(assert (=> b!4536433 m!5299033))

(assert (=> b!4535631 d!1401350))

(declare-fun d!1401352 () Bool)

(declare-fun res!1890034 () Bool)

(declare-fun e!2826771 () Bool)

(assert (=> d!1401352 (=> res!1890034 e!2826771)))

(assert (=> d!1401352 (= res!1890034 (not ((_ is Cons!50732) (t!357818 (_2!28896 lt!1710445)))))))

(assert (=> d!1401352 (= (noDuplicateKeys!1192 (t!357818 (_2!28896 lt!1710445))) e!2826771)))

(declare-fun b!4536435 () Bool)

(declare-fun e!2826772 () Bool)

(assert (=> b!4536435 (= e!2826771 e!2826772)))

(declare-fun res!1890035 () Bool)

(assert (=> b!4536435 (=> (not res!1890035) (not e!2826772))))

(assert (=> b!4536435 (= res!1890035 (not (containsKey!1856 (t!357818 (t!357818 (_2!28896 lt!1710445))) (_1!28895 (h!56607 (t!357818 (_2!28896 lt!1710445)))))))))

(declare-fun b!4536436 () Bool)

(assert (=> b!4536436 (= e!2826772 (noDuplicateKeys!1192 (t!357818 (t!357818 (_2!28896 lt!1710445)))))))

(assert (= (and d!1401352 (not res!1890034)) b!4536435))

(assert (= (and b!4536435 res!1890035) b!4536436))

(declare-fun m!5299035 () Bool)

(assert (=> b!4536435 m!5299035))

(declare-fun m!5299037 () Bool)

(assert (=> b!4536436 m!5299037))

(assert (=> b!4535384 d!1401352))

(declare-fun bs!872738 () Bool)

(declare-fun d!1401354 () Bool)

(assert (= bs!872738 (and d!1401354 d!1400724)))

(declare-fun lambda!175466 () Int)

(assert (=> bs!872738 (not (= lambda!175466 lambda!175312))))

(declare-fun bs!872739 () Bool)

(assert (= bs!872739 (and d!1401354 b!4535309)))

(assert (=> bs!872739 (= (= lt!1710448 lt!1710578) (= lambda!175466 lambda!175267))))

(declare-fun bs!872740 () Bool)

(assert (= bs!872740 (and d!1401354 b!4535797)))

(assert (=> bs!872740 (= (= lt!1710448 lt!1710989) (= lambda!175466 lambda!175373))))

(declare-fun bs!872741 () Bool)

(assert (= bs!872741 (and d!1401354 b!4535625)))

(assert (=> bs!872741 (= (= lt!1710448 lt!1710415) (= lambda!175466 lambda!175349))))

(declare-fun bs!872742 () Bool)

(assert (= bs!872742 (and d!1401354 b!4535622)))

(assert (=> bs!872742 (= (= lt!1710448 lt!1710902) (= lambda!175466 lambda!175351))))

(declare-fun bs!872743 () Bool)

(assert (= bs!872743 (and d!1401354 d!1401004)))

(assert (=> bs!872743 (= (= lt!1710448 lt!1711037) (= lambda!175466 lambda!175380))))

(declare-fun bs!872744 () Bool)

(assert (= bs!872744 (and d!1401354 b!4535542)))

(assert (=> bs!872744 (= (= lt!1710448 lt!1710429) (= lambda!175466 lambda!175340))))

(declare-fun bs!872745 () Bool)

(assert (= bs!872745 (and d!1401354 b!4536342)))

(assert (=> bs!872745 (= (= lt!1710448 lt!1711365) (= lambda!175466 lambda!175447))))

(declare-fun bs!872746 () Bool)

(assert (= bs!872746 (and d!1401354 b!4535669)))

(assert (=> bs!872746 (= (= lt!1710448 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175466 lambda!175360))))

(assert (=> bs!872744 (= (= lt!1710448 lt!1710840) (= lambda!175466 lambda!175341))))

(declare-fun bs!872747 () Bool)

(assert (= bs!872747 (and d!1401354 b!4536291)))

(assert (=> bs!872747 (= (= lt!1710448 lt!1711317) (= lambda!175466 lambda!175439))))

(declare-fun bs!872748 () Bool)

(assert (= bs!872748 (and d!1401354 b!4535666)))

(assert (=> bs!872748 (= (= lt!1710448 lt!1710938) (= lambda!175466 lambda!175362))))

(declare-fun bs!872749 () Bool)

(assert (= bs!872749 (and d!1401354 d!1401348)))

(assert (=> bs!872749 (= (= lt!1710448 lt!1710429) (= lambda!175466 lambda!175464))))

(declare-fun bs!872750 () Bool)

(assert (= bs!872750 (and d!1401354 b!4536264)))

(assert (=> bs!872750 (= (= lt!1710448 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175466 lambda!175428))))

(declare-fun bs!872751 () Bool)

(assert (= bs!872751 (and d!1401354 b!4535832)))

(assert (=> bs!872751 (= (= lt!1710448 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175466 lambda!175377))))

(declare-fun bs!872752 () Bool)

(assert (= bs!872752 (and d!1401354 d!1401018)))

(assert (=> bs!872752 (= (= lt!1710448 lt!1710902) (= lambda!175466 lambda!175389))))

(declare-fun bs!872754 () Bool)

(assert (= bs!872754 (and d!1401354 b!4536261)))

(assert (=> bs!872754 (= (= lt!1710448 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175466 lambda!175429))))

(declare-fun bs!872755 () Bool)

(assert (= bs!872755 (and d!1401354 d!1400816)))

(assert (=> bs!872755 (= (= lt!1710448 lt!1710851) (= lambda!175466 lambda!175344))))

(assert (=> bs!872747 (= (= lt!1710448 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175466 lambda!175438))))

(assert (=> bs!872745 (= (= lt!1710448 (-!418 lt!1710448 key!3287)) (= lambda!175466 lambda!175446))))

(declare-fun bs!872759 () Bool)

(assert (= bs!872759 (and d!1401354 d!1401276)))

(assert (=> bs!872759 (= (= lt!1710448 lt!1711376) (= lambda!175466 lambda!175450))))

(assert (=> bs!872748 (= (= lt!1710448 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175466 lambda!175361))))

(declare-fun bs!872762 () Bool)

(assert (= bs!872762 (and d!1401354 b!4535829)))

(assert (=> bs!872762 (= (= lt!1710448 lt!1711026) (= lambda!175466 lambda!175379))))

(assert (=> bs!872742 (= (= lt!1710448 lt!1710415) (= lambda!175466 lambda!175350))))

(declare-fun bs!872765 () Bool)

(assert (= bs!872765 (and d!1401354 d!1401188)))

(assert (=> bs!872765 (= (= lt!1710448 lt!1711279) (= lambda!175466 lambda!175431))))

(declare-fun bs!872767 () Bool)

(assert (= bs!872767 (and d!1401354 b!4536294)))

(assert (=> bs!872767 (= (= lt!1710448 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175466 lambda!175437))))

(assert (=> bs!872754 (= (= lt!1710448 lt!1711268) (= lambda!175466 lambda!175430))))

(declare-fun bs!872769 () Bool)

(assert (= bs!872769 (and d!1401354 d!1400896)))

(assert (=> bs!872769 (= (= lt!1710448 lt!1710949) (= lambda!175466 lambda!175363))))

(assert (=> bs!872762 (= (= lt!1710448 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175466 lambda!175378))))

(assert (=> bs!872740 (= (= lt!1710448 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175466 lambda!175372))))

(declare-fun bs!872774 () Bool)

(assert (= bs!872774 (and d!1401354 d!1400874)))

(assert (=> bs!872774 (= (= lt!1710448 lt!1710913) (= lambda!175466 lambda!175352))))

(declare-fun bs!872776 () Bool)

(assert (= bs!872776 (and d!1401354 b!4536345)))

(assert (=> bs!872776 (= (= lt!1710448 (-!418 lt!1710448 key!3287)) (= lambda!175466 lambda!175443))))

(declare-fun bs!872778 () Bool)

(assert (= bs!872778 (and d!1401354 b!4535199)))

(assert (=> bs!872778 (not (= lambda!175466 lambda!175215))))

(declare-fun bs!872780 () Bool)

(assert (= bs!872780 (and d!1401354 b!4535545)))

(assert (=> bs!872780 (= (= lt!1710448 lt!1710429) (= lambda!175466 lambda!175339))))

(declare-fun bs!872781 () Bool)

(assert (= bs!872781 (and d!1401354 d!1401222)))

(assert (=> bs!872781 (= (= lt!1710448 lt!1711328) (= lambda!175466 lambda!175440))))

(declare-fun bs!872782 () Bool)

(assert (= bs!872782 (and d!1401354 b!4535800)))

(assert (=> bs!872782 (= (= lt!1710448 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175466 lambda!175371))))

(declare-fun bs!872783 () Bool)

(assert (= bs!872783 (and d!1401354 d!1400980)))

(assert (=> bs!872783 (= (= lt!1710448 lt!1711000) (= lambda!175466 lambda!175374))))

(declare-fun bs!872784 () Bool)

(assert (= bs!872784 (and d!1401354 d!1400628)))

(assert (=> bs!872784 (= (= lt!1710448 lt!1710589) (= lambda!175466 lambda!175268))))

(assert (=> bs!872739 (= lambda!175466 lambda!175266)))

(declare-fun bs!872785 () Bool)

(assert (= bs!872785 (and d!1401354 b!4535312)))

(assert (=> bs!872785 (= lambda!175466 lambda!175265)))

(assert (=> d!1401354 true))

(assert (=> d!1401354 (forall!10330 (toList!4391 lt!1710448) lambda!175466)))

(declare-fun lt!1711462 () Unit!97630)

(assert (=> d!1401354 (= lt!1711462 (choose!29841 lt!1710448))))

(assert (=> d!1401354 (= (lemmaContainsAllItsOwnKeys!359 lt!1710448) lt!1711462)))

(declare-fun bs!872786 () Bool)

(assert (= bs!872786 d!1401354))

(declare-fun m!5299083 () Bool)

(assert (=> bs!872786 m!5299083))

(declare-fun m!5299085 () Bool)

(assert (=> bs!872786 m!5299085))

(assert (=> bm!316167 d!1401354))

(assert (=> d!1400722 d!1400944))

(assert (=> b!4535618 d!1400938))

(declare-fun d!1401360 () Bool)

(assert (=> d!1401360 (= (get!16666 lt!1710894) (v!44856 lt!1710894))))

(assert (=> b!4535612 d!1401360))

(assert (=> d!1400624 d!1400990))

(declare-fun d!1401362 () Bool)

(declare-fun c!774740 () Bool)

(assert (=> d!1401362 (= c!774740 ((_ is Nil!50732) (toList!4391 lt!1710442)))))

(declare-fun e!2826776 () (InoxSet tuple2!51202))

(assert (=> d!1401362 (= (content!8420 (toList!4391 lt!1710442)) e!2826776)))

(declare-fun b!4536441 () Bool)

(assert (=> b!4536441 (= e!2826776 ((as const (Array tuple2!51202 Bool)) false))))

(declare-fun b!4536442 () Bool)

(assert (=> b!4536442 (= e!2826776 ((_ map or) (store ((as const (Array tuple2!51202 Bool)) false) (h!56607 (toList!4391 lt!1710442)) true) (content!8420 (t!357818 (toList!4391 lt!1710442)))))))

(assert (= (and d!1401362 c!774740) b!4536441))

(assert (= (and d!1401362 (not c!774740)) b!4536442))

(declare-fun m!5299087 () Bool)

(assert (=> b!4536442 m!5299087))

(declare-fun m!5299089 () Bool)

(assert (=> b!4536442 m!5299089))

(assert (=> d!1400624 d!1401362))

(declare-fun bs!872787 () Bool)

(declare-fun b!4536446 () Bool)

(assert (= bs!872787 (and b!4536446 b!4536027)))

(declare-fun lambda!175468 () Int)

(assert (=> bs!872787 (= (= (t!357818 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (= lambda!175468 lambda!175392))))

(declare-fun bs!872788 () Bool)

(assert (= bs!872788 (and b!4536446 b!4535656)))

(assert (=> bs!872788 (= (= (t!357818 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (toList!4391 lt!1710447)) (= lambda!175468 lambda!175358))))

(declare-fun bs!872789 () Bool)

(assert (= bs!872789 (and b!4536446 b!4536216)))

(assert (=> bs!872789 (= (= (t!357818 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (t!357818 (toList!4391 lt!1710447))) (= lambda!175468 lambda!175422))))

(declare-fun bs!872790 () Bool)

(assert (= bs!872790 (and b!4536446 b!4536110)))

(assert (=> bs!872790 (= (= (t!357818 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (toList!4391 lt!1710716)) (= lambda!175468 lambda!175398))))

(declare-fun bs!872791 () Bool)

(assert (= bs!872791 (and b!4536446 b!4536218)))

(assert (=> bs!872791 (= (= (t!357818 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (Cons!50732 (h!56607 (toList!4391 lt!1710447)) (t!357818 (toList!4391 lt!1710447)))) (= lambda!175468 lambda!175425))))

(declare-fun bs!872792 () Bool)

(assert (= bs!872792 (and b!4536446 b!4536051)))

(assert (=> bs!872792 (= (= (t!357818 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (toList!4391 lt!1710448)) (= lambda!175468 lambda!175394))))

(declare-fun bs!872793 () Bool)

(assert (= bs!872793 (and b!4536446 b!4536213)))

(assert (=> bs!872793 (= (= (t!357818 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (toList!4391 lt!1710447)) (= lambda!175468 lambda!175426))))

(declare-fun bs!872794 () Bool)

(assert (= bs!872794 (and b!4536446 b!4535697)))

(assert (=> bs!872794 (= (= (t!357818 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448))) (= lambda!175468 lambda!175367))))

(declare-fun bs!872795 () Bool)

(assert (= bs!872795 (and b!4536446 b!4535702)))

(assert (=> bs!872795 (= (= (t!357818 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (toList!4391 lt!1710451)) (= lambda!175468 lambda!175369))))

(declare-fun bs!872796 () Bool)

(assert (= bs!872796 (and b!4536446 b!4535682)))

(assert (=> bs!872796 (= (= (t!357818 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (toList!4391 lt!1710876)) (= lambda!175468 lambda!175365))))

(assert (=> b!4536446 true))

(declare-fun bs!872797 () Bool)

(declare-fun b!4536448 () Bool)

(assert (= bs!872797 (and b!4536448 b!4536027)))

(declare-fun lambda!175469 () Int)

(assert (=> bs!872797 (= (= (Cons!50732 (h!56607 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (t!357818 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))))) (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (= lambda!175469 lambda!175392))))

(declare-fun bs!872798 () Bool)

(assert (= bs!872798 (and b!4536448 b!4535656)))

(assert (=> bs!872798 (= (= (Cons!50732 (h!56607 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (t!357818 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))))) (toList!4391 lt!1710447)) (= lambda!175469 lambda!175358))))

(declare-fun bs!872799 () Bool)

(assert (= bs!872799 (and b!4536448 b!4536216)))

(assert (=> bs!872799 (= (= (Cons!50732 (h!56607 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (t!357818 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))))) (t!357818 (toList!4391 lt!1710447))) (= lambda!175469 lambda!175422))))

(declare-fun bs!872800 () Bool)

(assert (= bs!872800 (and b!4536448 b!4536110)))

(assert (=> bs!872800 (= (= (Cons!50732 (h!56607 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (t!357818 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))))) (toList!4391 lt!1710716)) (= lambda!175469 lambda!175398))))

(declare-fun bs!872801 () Bool)

(assert (= bs!872801 (and b!4536448 b!4536218)))

(assert (=> bs!872801 (= (= (Cons!50732 (h!56607 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (t!357818 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))))) (Cons!50732 (h!56607 (toList!4391 lt!1710447)) (t!357818 (toList!4391 lt!1710447)))) (= lambda!175469 lambda!175425))))

(declare-fun bs!872802 () Bool)

(assert (= bs!872802 (and b!4536448 b!4536051)))

(assert (=> bs!872802 (= (= (Cons!50732 (h!56607 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (t!357818 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))))) (toList!4391 lt!1710448)) (= lambda!175469 lambda!175394))))

(declare-fun bs!872803 () Bool)

(assert (= bs!872803 (and b!4536448 b!4536213)))

(assert (=> bs!872803 (= (= (Cons!50732 (h!56607 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (t!357818 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))))) (toList!4391 lt!1710447)) (= lambda!175469 lambda!175426))))

(declare-fun bs!872804 () Bool)

(assert (= bs!872804 (and b!4536448 b!4535697)))

(assert (=> bs!872804 (= (= (Cons!50732 (h!56607 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (t!357818 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))))) (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448))) (= lambda!175469 lambda!175367))))

(declare-fun bs!872805 () Bool)

(assert (= bs!872805 (and b!4536448 b!4536446)))

(assert (=> bs!872805 (= (= (Cons!50732 (h!56607 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (t!357818 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))))) (t!357818 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))))) (= lambda!175469 lambda!175468))))

(declare-fun bs!872806 () Bool)

(assert (= bs!872806 (and b!4536448 b!4535702)))

(assert (=> bs!872806 (= (= (Cons!50732 (h!56607 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (t!357818 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))))) (toList!4391 lt!1710451)) (= lambda!175469 lambda!175369))))

(declare-fun bs!872807 () Bool)

(assert (= bs!872807 (and b!4536448 b!4535682)))

(assert (=> bs!872807 (= (= (Cons!50732 (h!56607 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (t!357818 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))))) (toList!4391 lt!1710876)) (= lambda!175469 lambda!175365))))

(assert (=> b!4536448 true))

(declare-fun bs!872808 () Bool)

(declare-fun b!4536443 () Bool)

(assert (= bs!872808 (and b!4536443 b!4536027)))

(declare-fun lambda!175470 () Int)

(assert (=> bs!872808 (= lambda!175470 lambda!175392)))

(declare-fun bs!872809 () Bool)

(assert (= bs!872809 (and b!4536443 b!4535656)))

(assert (=> bs!872809 (= (= (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (toList!4391 lt!1710447)) (= lambda!175470 lambda!175358))))

(declare-fun bs!872810 () Bool)

(assert (= bs!872810 (and b!4536443 b!4536216)))

(assert (=> bs!872810 (= (= (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (t!357818 (toList!4391 lt!1710447))) (= lambda!175470 lambda!175422))))

(declare-fun bs!872811 () Bool)

(assert (= bs!872811 (and b!4536443 b!4536110)))

(assert (=> bs!872811 (= (= (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (toList!4391 lt!1710716)) (= lambda!175470 lambda!175398))))

(declare-fun bs!872812 () Bool)

(assert (= bs!872812 (and b!4536443 b!4536218)))

(assert (=> bs!872812 (= (= (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (Cons!50732 (h!56607 (toList!4391 lt!1710447)) (t!357818 (toList!4391 lt!1710447)))) (= lambda!175470 lambda!175425))))

(declare-fun bs!872813 () Bool)

(assert (= bs!872813 (and b!4536443 b!4536051)))

(assert (=> bs!872813 (= (= (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (toList!4391 lt!1710448)) (= lambda!175470 lambda!175394))))

(declare-fun bs!872814 () Bool)

(assert (= bs!872814 (and b!4536443 b!4536213)))

(assert (=> bs!872814 (= (= (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (toList!4391 lt!1710447)) (= lambda!175470 lambda!175426))))

(declare-fun bs!872815 () Bool)

(assert (= bs!872815 (and b!4536443 b!4535697)))

(assert (=> bs!872815 (= (= (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448))) (= lambda!175470 lambda!175367))))

(declare-fun bs!872816 () Bool)

(assert (= bs!872816 (and b!4536443 b!4536446)))

(assert (=> bs!872816 (= (= (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (t!357818 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))))) (= lambda!175470 lambda!175468))))

(declare-fun bs!872817 () Bool)

(assert (= bs!872817 (and b!4536443 b!4536448)))

(assert (=> bs!872817 (= (= (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (Cons!50732 (h!56607 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (t!357818 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))))) (= lambda!175470 lambda!175469))))

(declare-fun bs!872818 () Bool)

(assert (= bs!872818 (and b!4536443 b!4535702)))

(assert (=> bs!872818 (= (= (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (toList!4391 lt!1710451)) (= lambda!175470 lambda!175369))))

(declare-fun bs!872819 () Bool)

(assert (= bs!872819 (and b!4536443 b!4535682)))

(assert (=> bs!872819 (= (= (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (toList!4391 lt!1710876)) (= lambda!175470 lambda!175365))))

(assert (=> b!4536443 true))

(declare-fun bs!872820 () Bool)

(declare-fun b!4536445 () Bool)

(assert (= bs!872820 (and b!4536445 b!4535657)))

(declare-fun lambda!175471 () Int)

(assert (=> bs!872820 (= lambda!175471 lambda!175359)))

(declare-fun bs!872821 () Bool)

(assert (= bs!872821 (and b!4536445 b!4535698)))

(assert (=> bs!872821 (= lambda!175471 lambda!175368)))

(declare-fun bs!872822 () Bool)

(assert (= bs!872822 (and b!4536445 b!4535683)))

(assert (=> bs!872822 (= lambda!175471 lambda!175366)))

(declare-fun bs!872823 () Bool)

(assert (= bs!872823 (and b!4536445 b!4536215)))

(assert (=> bs!872823 (= lambda!175471 lambda!175427)))

(declare-fun bs!872824 () Bool)

(assert (= bs!872824 (and b!4536445 b!4536111)))

(assert (=> bs!872824 (= lambda!175471 lambda!175399)))

(declare-fun bs!872825 () Bool)

(assert (= bs!872825 (and b!4536445 b!4536028)))

(assert (=> bs!872825 (= lambda!175471 lambda!175393)))

(declare-fun bs!872826 () Bool)

(assert (= bs!872826 (and b!4536445 b!4536052)))

(assert (=> bs!872826 (= lambda!175471 lambda!175395)))

(declare-fun bs!872827 () Bool)

(assert (= bs!872827 (and b!4536445 b!4535703)))

(assert (=> bs!872827 (= lambda!175471 lambda!175370)))

(declare-fun res!1890038 () Bool)

(declare-fun e!2826780 () Bool)

(assert (=> b!4536443 (=> (not res!1890038) (not e!2826780))))

(declare-fun lt!1711466 () List!50859)

(assert (=> b!4536443 (= res!1890038 (forall!10332 lt!1711466 lambda!175470))))

(declare-fun d!1401364 () Bool)

(assert (=> d!1401364 e!2826780))

(declare-fun res!1890040 () Bool)

(assert (=> d!1401364 (=> (not res!1890040) (not e!2826780))))

(assert (=> d!1401364 (= res!1890040 (noDuplicate!759 lt!1711466))))

(declare-fun e!2826779 () List!50859)

(assert (=> d!1401364 (= lt!1711466 e!2826779)))

(declare-fun c!774743 () Bool)

(assert (=> d!1401364 (= c!774743 ((_ is Cons!50732) (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))))))

(assert (=> d!1401364 (invariantList!1039 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))))))

(assert (=> d!1401364 (= (getKeysList!487 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) lt!1711466)))

(declare-fun b!4536444 () Bool)

(declare-fun res!1890039 () Bool)

(assert (=> b!4536444 (=> (not res!1890039) (not e!2826780))))

(assert (=> b!4536444 (= res!1890039 (= (length!374 lt!1711466) (length!375 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))))))))

(assert (=> b!4536445 (= e!2826780 (= (content!8421 lt!1711466) (content!8421 (map!11166 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) lambda!175471))))))

(assert (=> b!4536446 false))

(declare-fun lt!1711470 () Unit!97630)

(assert (=> b!4536446 (= lt!1711470 (forallContained!2593 (getKeysList!487 (t!357818 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))))) lambda!175468 (_1!28895 (h!56607 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))))))))

(declare-fun e!2826777 () Unit!97630)

(declare-fun Unit!97885 () Unit!97630)

(assert (=> b!4536446 (= e!2826777 Unit!97885)))

(declare-fun b!4536447 () Bool)

(assert (=> b!4536447 false))

(declare-fun e!2826778 () Unit!97630)

(declare-fun Unit!97886 () Unit!97630)

(assert (=> b!4536447 (= e!2826778 Unit!97886)))

(assert (=> b!4536448 (= e!2826779 (Cons!50735 (_1!28895 (h!56607 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))))) (getKeysList!487 (t!357818 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))))))))

(declare-fun c!774742 () Bool)

(assert (=> b!4536448 (= c!774742 (containsKey!1859 (t!357818 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (_1!28895 (h!56607 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))))))))

(declare-fun lt!1711469 () Unit!97630)

(assert (=> b!4536448 (= lt!1711469 e!2826778)))

(declare-fun c!774741 () Bool)

(assert (=> b!4536448 (= c!774741 (contains!13515 (getKeysList!487 (t!357818 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))))) (_1!28895 (h!56607 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))))))))

(declare-fun lt!1711467 () Unit!97630)

(assert (=> b!4536448 (= lt!1711467 e!2826777)))

(declare-fun lt!1711465 () List!50859)

(assert (=> b!4536448 (= lt!1711465 (getKeysList!487 (t!357818 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))))))))

(declare-fun lt!1711468 () Unit!97630)

(assert (=> b!4536448 (= lt!1711468 (lemmaForallContainsAddHeadPreserves!181 (t!357818 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) lt!1711465 (h!56607 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))))))))

(assert (=> b!4536448 (forall!10332 lt!1711465 lambda!175469)))

(declare-fun lt!1711464 () Unit!97630)

(assert (=> b!4536448 (= lt!1711464 lt!1711468)))

(declare-fun b!4536449 () Bool)

(declare-fun Unit!97889 () Unit!97630)

(assert (=> b!4536449 (= e!2826777 Unit!97889)))

(declare-fun b!4536450 () Bool)

(assert (=> b!4536450 (= e!2826779 Nil!50735)))

(declare-fun b!4536451 () Bool)

(declare-fun Unit!97890 () Unit!97630)

(assert (=> b!4536451 (= e!2826778 Unit!97890)))

(assert (= (and d!1401364 c!774743) b!4536448))

(assert (= (and d!1401364 (not c!774743)) b!4536450))

(assert (= (and b!4536448 c!774742) b!4536447))

(assert (= (and b!4536448 (not c!774742)) b!4536451))

(assert (= (and b!4536448 c!774741) b!4536446))

(assert (= (and b!4536448 (not c!774741)) b!4536449))

(assert (= (and d!1401364 res!1890040) b!4536444))

(assert (= (and b!4536444 res!1890039) b!4536443))

(assert (= (and b!4536443 res!1890038) b!4536445))

(declare-fun m!5299107 () Bool)

(assert (=> b!4536443 m!5299107))

(declare-fun m!5299109 () Bool)

(assert (=> b!4536446 m!5299109))

(assert (=> b!4536446 m!5299109))

(declare-fun m!5299111 () Bool)

(assert (=> b!4536446 m!5299111))

(declare-fun m!5299113 () Bool)

(assert (=> b!4536448 m!5299113))

(declare-fun m!5299115 () Bool)

(assert (=> b!4536448 m!5299115))

(assert (=> b!4536448 m!5299109))

(assert (=> b!4536448 m!5299109))

(declare-fun m!5299117 () Bool)

(assert (=> b!4536448 m!5299117))

(declare-fun m!5299119 () Bool)

(assert (=> b!4536448 m!5299119))

(declare-fun m!5299121 () Bool)

(assert (=> b!4536444 m!5299121))

(assert (=> b!4536444 m!5298171))

(declare-fun m!5299123 () Bool)

(assert (=> d!1401364 m!5299123))

(assert (=> d!1401364 m!5297815))

(declare-fun m!5299125 () Bool)

(assert (=> b!4536445 m!5299125))

(declare-fun m!5299127 () Bool)

(assert (=> b!4536445 m!5299127))

(assert (=> b!4536445 m!5299127))

(declare-fun m!5299129 () Bool)

(assert (=> b!4536445 m!5299129))

(assert (=> b!4535502 d!1401364))

(assert (=> d!1400786 d!1400784))

(declare-fun d!1401374 () Bool)

(assert (=> d!1401374 (containsKeyBiggerList!172 (toList!4392 lt!1710421) key!3287)))

(assert (=> d!1401374 true))

(declare-fun _$33!706 () Unit!97630)

(assert (=> d!1401374 (= (choose!29818 lt!1710421 key!3287 hashF!1107) _$33!706)))

(declare-fun bs!872828 () Bool)

(assert (= bs!872828 d!1401374))

(assert (=> bs!872828 m!5296597))

(assert (=> d!1400786 d!1401374))

(declare-fun d!1401376 () Bool)

(declare-fun res!1890049 () Bool)

(declare-fun e!2826790 () Bool)

(assert (=> d!1401376 (=> res!1890049 e!2826790)))

(assert (=> d!1401376 (= res!1890049 ((_ is Nil!50733) (toList!4392 lt!1710421)))))

(assert (=> d!1401376 (= (forall!10329 (toList!4392 lt!1710421) lambda!175330) e!2826790)))

(declare-fun b!4536466 () Bool)

(declare-fun e!2826791 () Bool)

(assert (=> b!4536466 (= e!2826790 e!2826791)))

(declare-fun res!1890050 () Bool)

(assert (=> b!4536466 (=> (not res!1890050) (not e!2826791))))

(assert (=> b!4536466 (= res!1890050 (dynLambda!21203 lambda!175330 (h!56608 (toList!4392 lt!1710421))))))

(declare-fun b!4536467 () Bool)

(assert (=> b!4536467 (= e!2826791 (forall!10329 (t!357819 (toList!4392 lt!1710421)) lambda!175330))))

(assert (= (and d!1401376 (not res!1890049)) b!4536466))

(assert (= (and b!4536466 res!1890050) b!4536467))

(declare-fun b_lambda!157323 () Bool)

(assert (=> (not b_lambda!157323) (not b!4536466)))

(declare-fun m!5299131 () Bool)

(assert (=> b!4536466 m!5299131))

(declare-fun m!5299133 () Bool)

(assert (=> b!4536467 m!5299133))

(assert (=> d!1400786 d!1401376))

(declare-fun d!1401378 () Bool)

(declare-fun res!1890051 () Bool)

(declare-fun e!2826792 () Bool)

(assert (=> d!1401378 (=> res!1890051 e!2826792)))

(assert (=> d!1401378 (= res!1890051 ((_ is Nil!50732) (toList!4391 lt!1710429)))))

(assert (=> d!1401378 (= (forall!10330 (toList!4391 lt!1710429) lambda!175344) e!2826792)))

(declare-fun b!4536468 () Bool)

(declare-fun e!2826793 () Bool)

(assert (=> b!4536468 (= e!2826792 e!2826793)))

(declare-fun res!1890052 () Bool)

(assert (=> b!4536468 (=> (not res!1890052) (not e!2826793))))

(assert (=> b!4536468 (= res!1890052 (dynLambda!21205 lambda!175344 (h!56607 (toList!4391 lt!1710429))))))

(declare-fun b!4536469 () Bool)

(assert (=> b!4536469 (= e!2826793 (forall!10330 (t!357818 (toList!4391 lt!1710429)) lambda!175344))))

(assert (= (and d!1401378 (not res!1890051)) b!4536468))

(assert (= (and b!4536468 res!1890052) b!4536469))

(declare-fun b_lambda!157325 () Bool)

(assert (=> (not b_lambda!157325) (not b!4536468)))

(declare-fun m!5299135 () Bool)

(assert (=> b!4536468 m!5299135))

(declare-fun m!5299137 () Bool)

(assert (=> b!4536469 m!5299137))

(assert (=> b!4535544 d!1401378))

(declare-fun d!1401380 () Bool)

(assert (=> d!1401380 (= (head!9468 (toList!4392 lm!1477)) (h!56608 (toList!4392 lm!1477)))))

(assert (=> d!1400776 d!1401380))

(assert (=> d!1400796 d!1400910))

(declare-fun d!1401382 () Bool)

(declare-fun res!1890053 () Bool)

(declare-fun e!2826794 () Bool)

(assert (=> d!1401382 (=> res!1890053 e!2826794)))

(assert (=> d!1401382 (= res!1890053 ((_ is Nil!50732) (toList!4391 lt!1710448)))))

(assert (=> d!1401382 (= (forall!10330 (toList!4391 lt!1710448) lambda!175268) e!2826794)))

(declare-fun b!4536470 () Bool)

(declare-fun e!2826795 () Bool)

(assert (=> b!4536470 (= e!2826794 e!2826795)))

(declare-fun res!1890054 () Bool)

(assert (=> b!4536470 (=> (not res!1890054) (not e!2826795))))

(assert (=> b!4536470 (= res!1890054 (dynLambda!21205 lambda!175268 (h!56607 (toList!4391 lt!1710448))))))

(declare-fun b!4536471 () Bool)

(assert (=> b!4536471 (= e!2826795 (forall!10330 (t!357818 (toList!4391 lt!1710448)) lambda!175268))))

(assert (= (and d!1401382 (not res!1890053)) b!4536470))

(assert (= (and b!4536470 res!1890054) b!4536471))

(declare-fun b_lambda!157327 () Bool)

(assert (=> (not b_lambda!157327) (not b!4536470)))

(declare-fun m!5299139 () Bool)

(assert (=> b!4536470 m!5299139))

(declare-fun m!5299141 () Bool)

(assert (=> b!4536471 m!5299141))

(assert (=> b!4535311 d!1401382))

(declare-fun d!1401384 () Bool)

(declare-fun res!1890057 () Bool)

(declare-fun e!2826797 () Bool)

(assert (=> d!1401384 (=> res!1890057 e!2826797)))

(assert (=> d!1401384 (= res!1890057 (and ((_ is Cons!50732) lt!1710880) (= (_1!28895 (h!56607 lt!1710880)) key!3287)))))

(assert (=> d!1401384 (= (containsKey!1856 lt!1710880 key!3287) e!2826797)))

(declare-fun b!4536474 () Bool)

(declare-fun e!2826798 () Bool)

(assert (=> b!4536474 (= e!2826797 e!2826798)))

(declare-fun res!1890058 () Bool)

(assert (=> b!4536474 (=> (not res!1890058) (not e!2826798))))

(assert (=> b!4536474 (= res!1890058 ((_ is Cons!50732) lt!1710880))))

(declare-fun b!4536475 () Bool)

(assert (=> b!4536475 (= e!2826798 (containsKey!1856 (t!357818 lt!1710880) key!3287))))

(assert (= (and d!1401384 (not res!1890057)) b!4536474))

(assert (= (and b!4536474 res!1890058) b!4536475))

(declare-fun m!5299145 () Bool)

(assert (=> b!4536475 m!5299145))

(assert (=> d!1400852 d!1401384))

(declare-fun d!1401386 () Bool)

(declare-fun res!1890059 () Bool)

(declare-fun e!2826799 () Bool)

(assert (=> d!1401386 (=> res!1890059 e!2826799)))

(assert (=> d!1401386 (= res!1890059 (not ((_ is Cons!50732) lt!1710434)))))

(assert (=> d!1401386 (= (noDuplicateKeys!1192 lt!1710434) e!2826799)))

(declare-fun b!4536476 () Bool)

(declare-fun e!2826800 () Bool)

(assert (=> b!4536476 (= e!2826799 e!2826800)))

(declare-fun res!1890060 () Bool)

(assert (=> b!4536476 (=> (not res!1890060) (not e!2826800))))

(assert (=> b!4536476 (= res!1890060 (not (containsKey!1856 (t!357818 lt!1710434) (_1!28895 (h!56607 lt!1710434)))))))

(declare-fun b!4536477 () Bool)

(assert (=> b!4536477 (= e!2826800 (noDuplicateKeys!1192 (t!357818 lt!1710434)))))

(assert (= (and d!1401386 (not res!1890059)) b!4536476))

(assert (= (and b!4536476 res!1890060) b!4536477))

(declare-fun m!5299153 () Bool)

(assert (=> b!4536476 m!5299153))

(declare-fun m!5299155 () Bool)

(assert (=> b!4536477 m!5299155))

(assert (=> d!1400852 d!1401386))

(declare-fun bs!872829 () Bool)

(declare-fun b!4536481 () Bool)

(assert (= bs!872829 (and b!4536481 b!4536027)))

(declare-fun lambda!175472 () Int)

(assert (=> bs!872829 (= (= (t!357818 (toList!4391 lt!1710448)) (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (= lambda!175472 lambda!175392))))

(declare-fun bs!872830 () Bool)

(assert (= bs!872830 (and b!4536481 b!4535656)))

(assert (=> bs!872830 (= (= (t!357818 (toList!4391 lt!1710448)) (toList!4391 lt!1710447)) (= lambda!175472 lambda!175358))))

(declare-fun bs!872831 () Bool)

(assert (= bs!872831 (and b!4536481 b!4536216)))

(assert (=> bs!872831 (= (= (t!357818 (toList!4391 lt!1710448)) (t!357818 (toList!4391 lt!1710447))) (= lambda!175472 lambda!175422))))

(declare-fun bs!872832 () Bool)

(assert (= bs!872832 (and b!4536481 b!4536110)))

(assert (=> bs!872832 (= (= (t!357818 (toList!4391 lt!1710448)) (toList!4391 lt!1710716)) (= lambda!175472 lambda!175398))))

(declare-fun bs!872833 () Bool)

(assert (= bs!872833 (and b!4536481 b!4536218)))

(assert (=> bs!872833 (= (= (t!357818 (toList!4391 lt!1710448)) (Cons!50732 (h!56607 (toList!4391 lt!1710447)) (t!357818 (toList!4391 lt!1710447)))) (= lambda!175472 lambda!175425))))

(declare-fun bs!872834 () Bool)

(assert (= bs!872834 (and b!4536481 b!4536051)))

(assert (=> bs!872834 (= (= (t!357818 (toList!4391 lt!1710448)) (toList!4391 lt!1710448)) (= lambda!175472 lambda!175394))))

(declare-fun bs!872835 () Bool)

(assert (= bs!872835 (and b!4536481 b!4536213)))

(assert (=> bs!872835 (= (= (t!357818 (toList!4391 lt!1710448)) (toList!4391 lt!1710447)) (= lambda!175472 lambda!175426))))

(declare-fun bs!872836 () Bool)

(assert (= bs!872836 (and b!4536481 b!4535697)))

(assert (=> bs!872836 (= (= (t!357818 (toList!4391 lt!1710448)) (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448))) (= lambda!175472 lambda!175367))))

(declare-fun bs!872837 () Bool)

(assert (= bs!872837 (and b!4536481 b!4536443)))

(assert (=> bs!872837 (= (= (t!357818 (toList!4391 lt!1710448)) (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (= lambda!175472 lambda!175470))))

(declare-fun bs!872838 () Bool)

(assert (= bs!872838 (and b!4536481 b!4536446)))

(assert (=> bs!872838 (= (= (t!357818 (toList!4391 lt!1710448)) (t!357818 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))))) (= lambda!175472 lambda!175468))))

(declare-fun bs!872839 () Bool)

(assert (= bs!872839 (and b!4536481 b!4536448)))

(assert (=> bs!872839 (= (= (t!357818 (toList!4391 lt!1710448)) (Cons!50732 (h!56607 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (t!357818 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))))) (= lambda!175472 lambda!175469))))

(declare-fun bs!872840 () Bool)

(assert (= bs!872840 (and b!4536481 b!4535702)))

(assert (=> bs!872840 (= (= (t!357818 (toList!4391 lt!1710448)) (toList!4391 lt!1710451)) (= lambda!175472 lambda!175369))))

(declare-fun bs!872841 () Bool)

(assert (= bs!872841 (and b!4536481 b!4535682)))

(assert (=> bs!872841 (= (= (t!357818 (toList!4391 lt!1710448)) (toList!4391 lt!1710876)) (= lambda!175472 lambda!175365))))

(assert (=> b!4536481 true))

(declare-fun bs!872842 () Bool)

(declare-fun b!4536483 () Bool)

(assert (= bs!872842 (and b!4536483 b!4536027)))

(declare-fun lambda!175473 () Int)

(assert (=> bs!872842 (= (= (Cons!50732 (h!56607 (toList!4391 lt!1710448)) (t!357818 (toList!4391 lt!1710448))) (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (= lambda!175473 lambda!175392))))

(declare-fun bs!872843 () Bool)

(assert (= bs!872843 (and b!4536483 b!4536481)))

(assert (=> bs!872843 (= (= (Cons!50732 (h!56607 (toList!4391 lt!1710448)) (t!357818 (toList!4391 lt!1710448))) (t!357818 (toList!4391 lt!1710448))) (= lambda!175473 lambda!175472))))

(declare-fun bs!872844 () Bool)

(assert (= bs!872844 (and b!4536483 b!4535656)))

(assert (=> bs!872844 (= (= (Cons!50732 (h!56607 (toList!4391 lt!1710448)) (t!357818 (toList!4391 lt!1710448))) (toList!4391 lt!1710447)) (= lambda!175473 lambda!175358))))

(declare-fun bs!872845 () Bool)

(assert (= bs!872845 (and b!4536483 b!4536216)))

(assert (=> bs!872845 (= (= (Cons!50732 (h!56607 (toList!4391 lt!1710448)) (t!357818 (toList!4391 lt!1710448))) (t!357818 (toList!4391 lt!1710447))) (= lambda!175473 lambda!175422))))

(declare-fun bs!872846 () Bool)

(assert (= bs!872846 (and b!4536483 b!4536110)))

(assert (=> bs!872846 (= (= (Cons!50732 (h!56607 (toList!4391 lt!1710448)) (t!357818 (toList!4391 lt!1710448))) (toList!4391 lt!1710716)) (= lambda!175473 lambda!175398))))

(declare-fun bs!872847 () Bool)

(assert (= bs!872847 (and b!4536483 b!4536218)))

(assert (=> bs!872847 (= (= (Cons!50732 (h!56607 (toList!4391 lt!1710448)) (t!357818 (toList!4391 lt!1710448))) (Cons!50732 (h!56607 (toList!4391 lt!1710447)) (t!357818 (toList!4391 lt!1710447)))) (= lambda!175473 lambda!175425))))

(declare-fun bs!872848 () Bool)

(assert (= bs!872848 (and b!4536483 b!4536051)))

(assert (=> bs!872848 (= (= (Cons!50732 (h!56607 (toList!4391 lt!1710448)) (t!357818 (toList!4391 lt!1710448))) (toList!4391 lt!1710448)) (= lambda!175473 lambda!175394))))

(declare-fun bs!872849 () Bool)

(assert (= bs!872849 (and b!4536483 b!4536213)))

(assert (=> bs!872849 (= (= (Cons!50732 (h!56607 (toList!4391 lt!1710448)) (t!357818 (toList!4391 lt!1710448))) (toList!4391 lt!1710447)) (= lambda!175473 lambda!175426))))

(declare-fun bs!872850 () Bool)

(assert (= bs!872850 (and b!4536483 b!4535697)))

(assert (=> bs!872850 (= (= (Cons!50732 (h!56607 (toList!4391 lt!1710448)) (t!357818 (toList!4391 lt!1710448))) (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448))) (= lambda!175473 lambda!175367))))

(declare-fun bs!872851 () Bool)

(assert (= bs!872851 (and b!4536483 b!4536443)))

(assert (=> bs!872851 (= (= (Cons!50732 (h!56607 (toList!4391 lt!1710448)) (t!357818 (toList!4391 lt!1710448))) (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (= lambda!175473 lambda!175470))))

(declare-fun bs!872852 () Bool)

(assert (= bs!872852 (and b!4536483 b!4536446)))

(assert (=> bs!872852 (= (= (Cons!50732 (h!56607 (toList!4391 lt!1710448)) (t!357818 (toList!4391 lt!1710448))) (t!357818 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))))) (= lambda!175473 lambda!175468))))

(declare-fun bs!872853 () Bool)

(assert (= bs!872853 (and b!4536483 b!4536448)))

(assert (=> bs!872853 (= (= (Cons!50732 (h!56607 (toList!4391 lt!1710448)) (t!357818 (toList!4391 lt!1710448))) (Cons!50732 (h!56607 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (t!357818 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))))) (= lambda!175473 lambda!175469))))

(declare-fun bs!872854 () Bool)

(assert (= bs!872854 (and b!4536483 b!4535702)))

(assert (=> bs!872854 (= (= (Cons!50732 (h!56607 (toList!4391 lt!1710448)) (t!357818 (toList!4391 lt!1710448))) (toList!4391 lt!1710451)) (= lambda!175473 lambda!175369))))

(declare-fun bs!872855 () Bool)

(assert (= bs!872855 (and b!4536483 b!4535682)))

(assert (=> bs!872855 (= (= (Cons!50732 (h!56607 (toList!4391 lt!1710448)) (t!357818 (toList!4391 lt!1710448))) (toList!4391 lt!1710876)) (= lambda!175473 lambda!175365))))

(assert (=> b!4536483 true))

(declare-fun bs!872856 () Bool)

(declare-fun b!4536478 () Bool)

(assert (= bs!872856 (and b!4536478 b!4536483)))

(declare-fun lambda!175474 () Int)

(assert (=> bs!872856 (= (= (toList!4391 lt!1710448) (Cons!50732 (h!56607 (toList!4391 lt!1710448)) (t!357818 (toList!4391 lt!1710448)))) (= lambda!175474 lambda!175473))))

(declare-fun bs!872857 () Bool)

(assert (= bs!872857 (and b!4536478 b!4536027)))

(assert (=> bs!872857 (= (= (toList!4391 lt!1710448) (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (= lambda!175474 lambda!175392))))

(declare-fun bs!872858 () Bool)

(assert (= bs!872858 (and b!4536478 b!4536481)))

(assert (=> bs!872858 (= (= (toList!4391 lt!1710448) (t!357818 (toList!4391 lt!1710448))) (= lambda!175474 lambda!175472))))

(declare-fun bs!872859 () Bool)

(assert (= bs!872859 (and b!4536478 b!4535656)))

(assert (=> bs!872859 (= (= (toList!4391 lt!1710448) (toList!4391 lt!1710447)) (= lambda!175474 lambda!175358))))

(declare-fun bs!872860 () Bool)

(assert (= bs!872860 (and b!4536478 b!4536216)))

(assert (=> bs!872860 (= (= (toList!4391 lt!1710448) (t!357818 (toList!4391 lt!1710447))) (= lambda!175474 lambda!175422))))

(declare-fun bs!872861 () Bool)

(assert (= bs!872861 (and b!4536478 b!4536110)))

(assert (=> bs!872861 (= (= (toList!4391 lt!1710448) (toList!4391 lt!1710716)) (= lambda!175474 lambda!175398))))

(declare-fun bs!872862 () Bool)

(assert (= bs!872862 (and b!4536478 b!4536218)))

(assert (=> bs!872862 (= (= (toList!4391 lt!1710448) (Cons!50732 (h!56607 (toList!4391 lt!1710447)) (t!357818 (toList!4391 lt!1710447)))) (= lambda!175474 lambda!175425))))

(declare-fun bs!872863 () Bool)

(assert (= bs!872863 (and b!4536478 b!4536051)))

(assert (=> bs!872863 (= lambda!175474 lambda!175394)))

(declare-fun bs!872864 () Bool)

(assert (= bs!872864 (and b!4536478 b!4536213)))

(assert (=> bs!872864 (= (= (toList!4391 lt!1710448) (toList!4391 lt!1710447)) (= lambda!175474 lambda!175426))))

(declare-fun bs!872865 () Bool)

(assert (= bs!872865 (and b!4536478 b!4535697)))

(assert (=> bs!872865 (= (= (toList!4391 lt!1710448) (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448))) (= lambda!175474 lambda!175367))))

(declare-fun bs!872866 () Bool)

(assert (= bs!872866 (and b!4536478 b!4536443)))

(assert (=> bs!872866 (= (= (toList!4391 lt!1710448) (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (= lambda!175474 lambda!175470))))

(declare-fun bs!872867 () Bool)

(assert (= bs!872867 (and b!4536478 b!4536446)))

(assert (=> bs!872867 (= (= (toList!4391 lt!1710448) (t!357818 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))))) (= lambda!175474 lambda!175468))))

(declare-fun bs!872868 () Bool)

(assert (= bs!872868 (and b!4536478 b!4536448)))

(assert (=> bs!872868 (= (= (toList!4391 lt!1710448) (Cons!50732 (h!56607 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))) (t!357818 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477))))))) (= lambda!175474 lambda!175469))))

(declare-fun bs!872869 () Bool)

(assert (= bs!872869 (and b!4536478 b!4535702)))

(assert (=> bs!872869 (= (= (toList!4391 lt!1710448) (toList!4391 lt!1710451)) (= lambda!175474 lambda!175369))))

(declare-fun bs!872870 () Bool)

(assert (= bs!872870 (and b!4536478 b!4535682)))

(assert (=> bs!872870 (= (= (toList!4391 lt!1710448) (toList!4391 lt!1710876)) (= lambda!175474 lambda!175365))))

(assert (=> b!4536478 true))

(declare-fun bs!872871 () Bool)

(declare-fun b!4536480 () Bool)

(assert (= bs!872871 (and b!4536480 b!4535657)))

(declare-fun lambda!175475 () Int)

(assert (=> bs!872871 (= lambda!175475 lambda!175359)))

(declare-fun bs!872872 () Bool)

(assert (= bs!872872 (and b!4536480 b!4535683)))

(assert (=> bs!872872 (= lambda!175475 lambda!175366)))

(declare-fun bs!872873 () Bool)

(assert (= bs!872873 (and b!4536480 b!4536215)))

(assert (=> bs!872873 (= lambda!175475 lambda!175427)))

(declare-fun bs!872874 () Bool)

(assert (= bs!872874 (and b!4536480 b!4536111)))

(assert (=> bs!872874 (= lambda!175475 lambda!175399)))

(declare-fun bs!872875 () Bool)

(assert (= bs!872875 (and b!4536480 b!4536028)))

(assert (=> bs!872875 (= lambda!175475 lambda!175393)))

(declare-fun bs!872876 () Bool)

(assert (= bs!872876 (and b!4536480 b!4536052)))

(assert (=> bs!872876 (= lambda!175475 lambda!175395)))

(declare-fun bs!872877 () Bool)

(assert (= bs!872877 (and b!4536480 b!4535703)))

(assert (=> bs!872877 (= lambda!175475 lambda!175370)))

(declare-fun bs!872878 () Bool)

(assert (= bs!872878 (and b!4536480 b!4536445)))

(assert (=> bs!872878 (= lambda!175475 lambda!175471)))

(declare-fun bs!872879 () Bool)

(assert (= bs!872879 (and b!4536480 b!4535698)))

(assert (=> bs!872879 (= lambda!175475 lambda!175368)))

(declare-fun res!1890061 () Bool)

(declare-fun e!2826804 () Bool)

(assert (=> b!4536478 (=> (not res!1890061) (not e!2826804))))

(declare-fun lt!1711483 () List!50859)

(assert (=> b!4536478 (= res!1890061 (forall!10332 lt!1711483 lambda!175474))))

(declare-fun d!1401390 () Bool)

(assert (=> d!1401390 e!2826804))

(declare-fun res!1890063 () Bool)

(assert (=> d!1401390 (=> (not res!1890063) (not e!2826804))))

(assert (=> d!1401390 (= res!1890063 (noDuplicate!759 lt!1711483))))

(declare-fun e!2826803 () List!50859)

(assert (=> d!1401390 (= lt!1711483 e!2826803)))

(declare-fun c!774749 () Bool)

(assert (=> d!1401390 (= c!774749 ((_ is Cons!50732) (toList!4391 lt!1710448)))))

(assert (=> d!1401390 (invariantList!1039 (toList!4391 lt!1710448))))

(assert (=> d!1401390 (= (getKeysList!487 (toList!4391 lt!1710448)) lt!1711483)))

(declare-fun b!4536479 () Bool)

(declare-fun res!1890062 () Bool)

(assert (=> b!4536479 (=> (not res!1890062) (not e!2826804))))

(assert (=> b!4536479 (= res!1890062 (= (length!374 lt!1711483) (length!375 (toList!4391 lt!1710448))))))

(assert (=> b!4536480 (= e!2826804 (= (content!8421 lt!1711483) (content!8421 (map!11166 (toList!4391 lt!1710448) lambda!175475))))))

(assert (=> b!4536481 false))

(declare-fun lt!1711487 () Unit!97630)

(assert (=> b!4536481 (= lt!1711487 (forallContained!2593 (getKeysList!487 (t!357818 (toList!4391 lt!1710448))) lambda!175472 (_1!28895 (h!56607 (toList!4391 lt!1710448)))))))

(declare-fun e!2826801 () Unit!97630)

(declare-fun Unit!97900 () Unit!97630)

(assert (=> b!4536481 (= e!2826801 Unit!97900)))

(declare-fun b!4536482 () Bool)

(assert (=> b!4536482 false))

(declare-fun e!2826802 () Unit!97630)

(declare-fun Unit!97901 () Unit!97630)

(assert (=> b!4536482 (= e!2826802 Unit!97901)))

(assert (=> b!4536483 (= e!2826803 (Cons!50735 (_1!28895 (h!56607 (toList!4391 lt!1710448))) (getKeysList!487 (t!357818 (toList!4391 lt!1710448)))))))

(declare-fun c!774748 () Bool)

(assert (=> b!4536483 (= c!774748 (containsKey!1859 (t!357818 (toList!4391 lt!1710448)) (_1!28895 (h!56607 (toList!4391 lt!1710448)))))))

(declare-fun lt!1711486 () Unit!97630)

(assert (=> b!4536483 (= lt!1711486 e!2826802)))

(declare-fun c!774747 () Bool)

(assert (=> b!4536483 (= c!774747 (contains!13515 (getKeysList!487 (t!357818 (toList!4391 lt!1710448))) (_1!28895 (h!56607 (toList!4391 lt!1710448)))))))

(declare-fun lt!1711484 () Unit!97630)

(assert (=> b!4536483 (= lt!1711484 e!2826801)))

(declare-fun lt!1711482 () List!50859)

(assert (=> b!4536483 (= lt!1711482 (getKeysList!487 (t!357818 (toList!4391 lt!1710448))))))

(declare-fun lt!1711485 () Unit!97630)

(assert (=> b!4536483 (= lt!1711485 (lemmaForallContainsAddHeadPreserves!181 (t!357818 (toList!4391 lt!1710448)) lt!1711482 (h!56607 (toList!4391 lt!1710448))))))

(assert (=> b!4536483 (forall!10332 lt!1711482 lambda!175473)))

(declare-fun lt!1711481 () Unit!97630)

(assert (=> b!4536483 (= lt!1711481 lt!1711485)))

(declare-fun b!4536484 () Bool)

(declare-fun Unit!97902 () Unit!97630)

(assert (=> b!4536484 (= e!2826801 Unit!97902)))

(declare-fun b!4536485 () Bool)

(assert (=> b!4536485 (= e!2826803 Nil!50735)))

(declare-fun b!4536486 () Bool)

(declare-fun Unit!97903 () Unit!97630)

(assert (=> b!4536486 (= e!2826802 Unit!97903)))

(assert (= (and d!1401390 c!774749) b!4536483))

(assert (= (and d!1401390 (not c!774749)) b!4536485))

(assert (= (and b!4536483 c!774748) b!4536482))

(assert (= (and b!4536483 (not c!774748)) b!4536486))

(assert (= (and b!4536483 c!774747) b!4536481))

(assert (= (and b!4536483 (not c!774747)) b!4536484))

(assert (= (and d!1401390 res!1890063) b!4536479))

(assert (= (and b!4536479 res!1890062) b!4536478))

(assert (= (and b!4536478 res!1890061) b!4536480))

(declare-fun m!5299157 () Bool)

(assert (=> b!4536478 m!5299157))

(assert (=> b!4536481 m!5298145))

(assert (=> b!4536481 m!5298145))

(declare-fun m!5299159 () Bool)

(assert (=> b!4536481 m!5299159))

(declare-fun m!5299161 () Bool)

(assert (=> b!4536483 m!5299161))

(declare-fun m!5299163 () Bool)

(assert (=> b!4536483 m!5299163))

(assert (=> b!4536483 m!5298145))

(assert (=> b!4536483 m!5298145))

(assert (=> b!4536483 m!5298147))

(declare-fun m!5299165 () Bool)

(assert (=> b!4536483 m!5299165))

(declare-fun m!5299167 () Bool)

(assert (=> b!4536479 m!5299167))

(assert (=> b!4536479 m!5298213))

(declare-fun m!5299169 () Bool)

(assert (=> d!1401390 m!5299169))

(assert (=> d!1401390 m!5297697))

(declare-fun m!5299171 () Bool)

(assert (=> b!4536480 m!5299171))

(declare-fun m!5299173 () Bool)

(assert (=> b!4536480 m!5299173))

(assert (=> b!4536480 m!5299173))

(declare-fun m!5299175 () Bool)

(assert (=> b!4536480 m!5299175))

(assert (=> b!4535513 d!1401390))

(declare-fun d!1401392 () Bool)

(assert (=> d!1401392 (isDefined!8462 (getValueByKey!1136 (toList!4392 lm!1477) lt!1710423))))

(declare-fun lt!1711490 () Unit!97630)

(assert (=> d!1401392 (= lt!1711490 (choose!29840 (toList!4392 lm!1477) lt!1710423))))

(declare-fun e!2826811 () Bool)

(assert (=> d!1401392 e!2826811))

(declare-fun res!1890064 () Bool)

(assert (=> d!1401392 (=> (not res!1890064) (not e!2826811))))

(assert (=> d!1401392 (= res!1890064 (isStrictlySorted!452 (toList!4392 lm!1477)))))

(assert (=> d!1401392 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1039 (toList!4392 lm!1477) lt!1710423) lt!1711490)))

(declare-fun b!4536499 () Bool)

(assert (=> b!4536499 (= e!2826811 (containsKey!1858 (toList!4392 lm!1477) lt!1710423))))

(assert (= (and d!1401392 res!1890064) b!4536499))

(assert (=> d!1401392 m!5297497))

(assert (=> d!1401392 m!5297497))

(assert (=> d!1401392 m!5297499))

(declare-fun m!5299177 () Bool)

(assert (=> d!1401392 m!5299177))

(assert (=> d!1401392 m!5297035))

(assert (=> b!4536499 m!5297493))

(assert (=> b!4535591 d!1401392))

(assert (=> b!4535591 d!1401048))

(assert (=> b!4535591 d!1401050))

(declare-fun d!1401394 () Bool)

(declare-fun res!1890065 () Bool)

(declare-fun e!2826812 () Bool)

(assert (=> d!1401394 (=> res!1890065 e!2826812)))

(assert (=> d!1401394 (= res!1890065 ((_ is Nil!50732) newBucket!178))))

(assert (=> d!1401394 (= (forall!10330 newBucket!178 lambda!175312) e!2826812)))

(declare-fun b!4536500 () Bool)

(declare-fun e!2826813 () Bool)

(assert (=> b!4536500 (= e!2826812 e!2826813)))

(declare-fun res!1890066 () Bool)

(assert (=> b!4536500 (=> (not res!1890066) (not e!2826813))))

(assert (=> b!4536500 (= res!1890066 (dynLambda!21205 lambda!175312 (h!56607 newBucket!178)))))

(declare-fun b!4536501 () Bool)

(assert (=> b!4536501 (= e!2826813 (forall!10330 (t!357818 newBucket!178) lambda!175312))))

(assert (= (and d!1401394 (not res!1890065)) b!4536500))

(assert (= (and b!4536500 res!1890066) b!4536501))

(declare-fun b_lambda!157329 () Bool)

(assert (=> (not b_lambda!157329) (not b!4536500)))

(declare-fun m!5299179 () Bool)

(assert (=> b!4536500 m!5299179))

(declare-fun m!5299181 () Bool)

(assert (=> b!4536501 m!5299181))

(assert (=> d!1400724 d!1401394))

(declare-fun d!1401396 () Bool)

(declare-fun res!1890067 () Bool)

(declare-fun e!2826816 () Bool)

(assert (=> d!1401396 (=> res!1890067 e!2826816)))

(assert (=> d!1401396 (= res!1890067 (not ((_ is Cons!50732) (_2!28896 lt!1710441))))))

(assert (=> d!1401396 (= (noDuplicateKeys!1192 (_2!28896 lt!1710441)) e!2826816)))

(declare-fun b!4536506 () Bool)

(declare-fun e!2826817 () Bool)

(assert (=> b!4536506 (= e!2826816 e!2826817)))

(declare-fun res!1890068 () Bool)

(assert (=> b!4536506 (=> (not res!1890068) (not e!2826817))))

(assert (=> b!4536506 (= res!1890068 (not (containsKey!1856 (t!357818 (_2!28896 lt!1710441)) (_1!28895 (h!56607 (_2!28896 lt!1710441))))))))

(declare-fun b!4536507 () Bool)

(assert (=> b!4536507 (= e!2826817 (noDuplicateKeys!1192 (t!357818 (_2!28896 lt!1710441))))))

(assert (= (and d!1401396 (not res!1890067)) b!4536506))

(assert (= (and b!4536506 res!1890068) b!4536507))

(declare-fun m!5299183 () Bool)

(assert (=> b!4536506 m!5299183))

(declare-fun m!5299185 () Bool)

(assert (=> b!4536507 m!5299185))

(assert (=> bs!871834 d!1401396))

(declare-fun d!1401398 () Bool)

(assert (=> d!1401398 (= (isEmpty!28732 (toList!4392 lm!1477)) ((_ is Nil!50733) (toList!4392 lm!1477)))))

(assert (=> d!1400694 d!1401398))

(assert (=> d!1400714 d!1401070))

(assert (=> d!1400714 d!1401068))

(declare-fun d!1401400 () Bool)

(declare-fun res!1890073 () Bool)

(declare-fun e!2826820 () Bool)

(assert (=> d!1401400 (=> res!1890073 e!2826820)))

(assert (=> d!1401400 (= res!1890073 ((_ is Nil!50732) (ite c!774509 (toList!4391 lt!1710429) (_2!28896 lt!1710445))))))

(assert (=> d!1401400 (= (forall!10330 (ite c!774509 (toList!4391 lt!1710429) (_2!28896 lt!1710445)) (ite c!774509 lambda!175339 lambda!175341)) e!2826820)))

(declare-fun b!4536512 () Bool)

(declare-fun e!2826821 () Bool)

(assert (=> b!4536512 (= e!2826820 e!2826821)))

(declare-fun res!1890074 () Bool)

(assert (=> b!4536512 (=> (not res!1890074) (not e!2826821))))

(assert (=> b!4536512 (= res!1890074 (dynLambda!21205 (ite c!774509 lambda!175339 lambda!175341) (h!56607 (ite c!774509 (toList!4391 lt!1710429) (_2!28896 lt!1710445)))))))

(declare-fun b!4536513 () Bool)

(assert (=> b!4536513 (= e!2826821 (forall!10330 (t!357818 (ite c!774509 (toList!4391 lt!1710429) (_2!28896 lt!1710445))) (ite c!774509 lambda!175339 lambda!175341)))))

(assert (= (and d!1401400 (not res!1890073)) b!4536512))

(assert (= (and b!4536512 res!1890074) b!4536513))

(declare-fun b_lambda!157331 () Bool)

(assert (=> (not b_lambda!157331) (not b!4536512)))

(declare-fun m!5299187 () Bool)

(assert (=> b!4536512 m!5299187))

(declare-fun m!5299189 () Bool)

(assert (=> b!4536513 m!5299189))

(assert (=> bm!316193 d!1401400))

(assert (=> b!4535509 d!1401164))

(assert (=> b!4535509 d!1401168))

(assert (=> b!4535590 d!1400850))

(declare-fun d!1401402 () Bool)

(declare-fun res!1890075 () Bool)

(declare-fun e!2826822 () Bool)

(assert (=> d!1401402 (=> res!1890075 e!2826822)))

(assert (=> d!1401402 (= res!1890075 ((_ is Nil!50732) (toList!4391 lt!1710415)))))

(assert (=> d!1401402 (= (forall!10330 (toList!4391 lt!1710415) lambda!175352) e!2826822)))

(declare-fun b!4536514 () Bool)

(declare-fun e!2826823 () Bool)

(assert (=> b!4536514 (= e!2826822 e!2826823)))

(declare-fun res!1890076 () Bool)

(assert (=> b!4536514 (=> (not res!1890076) (not e!2826823))))

(assert (=> b!4536514 (= res!1890076 (dynLambda!21205 lambda!175352 (h!56607 (toList!4391 lt!1710415))))))

(declare-fun b!4536515 () Bool)

(assert (=> b!4536515 (= e!2826823 (forall!10330 (t!357818 (toList!4391 lt!1710415)) lambda!175352))))

(assert (= (and d!1401402 (not res!1890075)) b!4536514))

(assert (= (and b!4536514 res!1890076) b!4536515))

(declare-fun b_lambda!157333 () Bool)

(assert (=> (not b_lambda!157333) (not b!4536514)))

(declare-fun m!5299191 () Bool)

(assert (=> b!4536514 m!5299191))

(declare-fun m!5299193 () Bool)

(assert (=> b!4536515 m!5299193))

(assert (=> b!4535624 d!1401402))

(declare-fun d!1401404 () Bool)

(declare-fun res!1890077 () Bool)

(declare-fun e!2826824 () Bool)

(assert (=> d!1401404 (=> res!1890077 e!2826824)))

(assert (=> d!1401404 (= res!1890077 (not ((_ is Cons!50732) (t!357818 newBucket!178))))))

(assert (=> d!1401404 (= (noDuplicateKeys!1192 (t!357818 newBucket!178)) e!2826824)))

(declare-fun b!4536516 () Bool)

(declare-fun e!2826825 () Bool)

(assert (=> b!4536516 (= e!2826824 e!2826825)))

(declare-fun res!1890078 () Bool)

(assert (=> b!4536516 (=> (not res!1890078) (not e!2826825))))

(assert (=> b!4536516 (= res!1890078 (not (containsKey!1856 (t!357818 (t!357818 newBucket!178)) (_1!28895 (h!56607 (t!357818 newBucket!178))))))))

(declare-fun b!4536517 () Bool)

(assert (=> b!4536517 (= e!2826825 (noDuplicateKeys!1192 (t!357818 (t!357818 newBucket!178))))))

(assert (= (and d!1401404 (not res!1890077)) b!4536516))

(assert (= (and b!4536516 res!1890078) b!4536517))

(declare-fun m!5299195 () Bool)

(assert (=> b!4536516 m!5299195))

(declare-fun m!5299197 () Bool)

(assert (=> b!4536517 m!5299197))

(assert (=> b!4535330 d!1401404))

(declare-fun d!1401406 () Bool)

(assert (=> d!1401406 (= (invariantList!1039 (toList!4391 lt!1710803)) (noDuplicatedKeys!274 (toList!4391 lt!1710803)))))

(declare-fun bs!872880 () Bool)

(assert (= bs!872880 d!1401406))

(declare-fun m!5299199 () Bool)

(assert (=> bs!872880 m!5299199))

(assert (=> d!1400780 d!1401406))

(declare-fun d!1401408 () Bool)

(declare-fun res!1890079 () Bool)

(declare-fun e!2826826 () Bool)

(assert (=> d!1401408 (=> res!1890079 e!2826826)))

(assert (=> d!1401408 (= res!1890079 ((_ is Nil!50733) (toList!4392 lt!1710432)))))

(assert (=> d!1401408 (= (forall!10329 (toList!4392 lt!1710432) lambda!175325) e!2826826)))

(declare-fun b!4536518 () Bool)

(declare-fun e!2826827 () Bool)

(assert (=> b!4536518 (= e!2826826 e!2826827)))

(declare-fun res!1890080 () Bool)

(assert (=> b!4536518 (=> (not res!1890080) (not e!2826827))))

(assert (=> b!4536518 (= res!1890080 (dynLambda!21203 lambda!175325 (h!56608 (toList!4392 lt!1710432))))))

(declare-fun b!4536519 () Bool)

(assert (=> b!4536519 (= e!2826827 (forall!10329 (t!357819 (toList!4392 lt!1710432)) lambda!175325))))

(assert (= (and d!1401408 (not res!1890079)) b!4536518))

(assert (= (and b!4536518 res!1890080) b!4536519))

(declare-fun b_lambda!157335 () Bool)

(assert (=> (not b_lambda!157335) (not b!4536518)))

(declare-fun m!5299201 () Bool)

(assert (=> b!4536518 m!5299201))

(declare-fun m!5299203 () Bool)

(assert (=> b!4536519 m!5299203))

(assert (=> d!1400780 d!1401408))

(declare-fun d!1401410 () Bool)

(declare-fun lt!1711492 () Bool)

(assert (=> d!1401410 (= lt!1711492 (select (content!8421 e!2826179) key!3287))))

(declare-fun e!2826833 () Bool)

(assert (=> d!1401410 (= lt!1711492 e!2826833)))

(declare-fun res!1890084 () Bool)

(assert (=> d!1401410 (=> (not res!1890084) (not e!2826833))))

(assert (=> d!1401410 (= res!1890084 ((_ is Cons!50735) e!2826179))))

(assert (=> d!1401410 (= (contains!13515 e!2826179 key!3287) lt!1711492)))

(declare-fun b!4536530 () Bool)

(declare-fun e!2826834 () Bool)

(assert (=> b!4536530 (= e!2826833 e!2826834)))

(declare-fun res!1890083 () Bool)

(assert (=> b!4536530 (=> res!1890083 e!2826834)))

(assert (=> b!4536530 (= res!1890083 (= (h!56612 e!2826179) key!3287))))

(declare-fun b!4536531 () Bool)

(assert (=> b!4536531 (= e!2826834 (contains!13515 (t!357821 e!2826179) key!3287))))

(assert (= (and d!1401410 res!1890084) b!4536530))

(assert (= (and b!4536530 (not res!1890083)) b!4536531))

(declare-fun m!5299205 () Bool)

(assert (=> d!1401410 m!5299205))

(declare-fun m!5299207 () Bool)

(assert (=> d!1401410 m!5299207))

(declare-fun m!5299209 () Bool)

(assert (=> b!4536531 m!5299209))

(assert (=> bm!316189 d!1401410))

(declare-fun d!1401412 () Bool)

(assert (=> d!1401412 (dynLambda!21203 lambda!175213 lt!1710441)))

(assert (=> d!1401412 true))

(declare-fun _$7!1932 () Unit!97630)

(assert (=> d!1401412 (= (choose!29814 (toList!4392 lm!1477) lambda!175213 lt!1710441) _$7!1932)))

(declare-fun b_lambda!157337 () Bool)

(assert (=> (not b_lambda!157337) (not d!1401412)))

(declare-fun bs!872881 () Bool)

(assert (= bs!872881 d!1401412))

(assert (=> bs!872881 m!5297489))

(assert (=> d!1400860 d!1401412))

(assert (=> d!1400860 d!1400720))

(declare-fun d!1401414 () Bool)

(assert (=> d!1401414 (= (tail!7789 (toList!4392 lm!1477)) (t!357819 (toList!4392 lm!1477)))))

(assert (=> d!1400690 d!1401414))

(declare-fun bs!872882 () Bool)

(declare-fun d!1401418 () Bool)

(assert (= bs!872882 (and d!1401418 d!1400724)))

(declare-fun lambda!175476 () Int)

(assert (=> bs!872882 (not (= lambda!175476 lambda!175312))))

(declare-fun bs!872883 () Bool)

(assert (= bs!872883 (and d!1401418 b!4535309)))

(assert (=> bs!872883 (= (= lt!1710415 lt!1710578) (= lambda!175476 lambda!175267))))

(declare-fun bs!872884 () Bool)

(assert (= bs!872884 (and d!1401418 b!4535797)))

(assert (=> bs!872884 (= (= lt!1710415 lt!1710989) (= lambda!175476 lambda!175373))))

(declare-fun bs!872885 () Bool)

(assert (= bs!872885 (and d!1401418 b!4535625)))

(assert (=> bs!872885 (= lambda!175476 lambda!175349)))

(declare-fun bs!872886 () Bool)

(assert (= bs!872886 (and d!1401418 b!4535622)))

(assert (=> bs!872886 (= (= lt!1710415 lt!1710902) (= lambda!175476 lambda!175351))))

(declare-fun bs!872887 () Bool)

(assert (= bs!872887 (and d!1401418 d!1401004)))

(assert (=> bs!872887 (= (= lt!1710415 lt!1711037) (= lambda!175476 lambda!175380))))

(declare-fun bs!872888 () Bool)

(assert (= bs!872888 (and d!1401418 b!4536342)))

(assert (=> bs!872888 (= (= lt!1710415 lt!1711365) (= lambda!175476 lambda!175447))))

(declare-fun bs!872889 () Bool)

(assert (= bs!872889 (and d!1401418 b!4535669)))

(assert (=> bs!872889 (= (= lt!1710415 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175476 lambda!175360))))

(declare-fun bs!872890 () Bool)

(assert (= bs!872890 (and d!1401418 b!4535542)))

(assert (=> bs!872890 (= (= lt!1710415 lt!1710840) (= lambda!175476 lambda!175341))))

(declare-fun bs!872891 () Bool)

(assert (= bs!872891 (and d!1401418 b!4536291)))

(assert (=> bs!872891 (= (= lt!1710415 lt!1711317) (= lambda!175476 lambda!175439))))

(declare-fun bs!872892 () Bool)

(assert (= bs!872892 (and d!1401418 b!4535666)))

(assert (=> bs!872892 (= (= lt!1710415 lt!1710938) (= lambda!175476 lambda!175362))))

(declare-fun bs!872893 () Bool)

(assert (= bs!872893 (and d!1401418 d!1401348)))

(assert (=> bs!872893 (= (= lt!1710415 lt!1710429) (= lambda!175476 lambda!175464))))

(declare-fun bs!872894 () Bool)

(assert (= bs!872894 (and d!1401418 b!4536264)))

(assert (=> bs!872894 (= (= lt!1710415 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175476 lambda!175428))))

(declare-fun bs!872895 () Bool)

(assert (= bs!872895 (and d!1401418 b!4535832)))

(assert (=> bs!872895 (= (= lt!1710415 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175476 lambda!175377))))

(declare-fun bs!872896 () Bool)

(assert (= bs!872896 (and d!1401418 d!1401018)))

(assert (=> bs!872896 (= (= lt!1710415 lt!1710902) (= lambda!175476 lambda!175389))))

(declare-fun bs!872897 () Bool)

(assert (= bs!872897 (and d!1401418 b!4536261)))

(assert (=> bs!872897 (= (= lt!1710415 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175476 lambda!175429))))

(declare-fun bs!872898 () Bool)

(assert (= bs!872898 (and d!1401418 d!1400816)))

(assert (=> bs!872898 (= (= lt!1710415 lt!1710851) (= lambda!175476 lambda!175344))))

(assert (=> bs!872891 (= (= lt!1710415 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175476 lambda!175438))))

(assert (=> bs!872888 (= (= lt!1710415 (-!418 lt!1710448 key!3287)) (= lambda!175476 lambda!175446))))

(declare-fun bs!872899 () Bool)

(assert (= bs!872899 (and d!1401418 d!1401276)))

(assert (=> bs!872899 (= (= lt!1710415 lt!1711376) (= lambda!175476 lambda!175450))))

(assert (=> bs!872892 (= (= lt!1710415 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175476 lambda!175361))))

(declare-fun bs!872900 () Bool)

(assert (= bs!872900 (and d!1401418 b!4535829)))

(assert (=> bs!872900 (= (= lt!1710415 lt!1711026) (= lambda!175476 lambda!175379))))

(assert (=> bs!872886 (= lambda!175476 lambda!175350)))

(declare-fun bs!872901 () Bool)

(assert (= bs!872901 (and d!1401418 d!1401188)))

(assert (=> bs!872901 (= (= lt!1710415 lt!1711279) (= lambda!175476 lambda!175431))))

(declare-fun bs!872902 () Bool)

(assert (= bs!872902 (and d!1401418 b!4536294)))

(assert (=> bs!872902 (= (= lt!1710415 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175476 lambda!175437))))

(assert (=> bs!872897 (= (= lt!1710415 lt!1711268) (= lambda!175476 lambda!175430))))

(declare-fun bs!872903 () Bool)

(assert (= bs!872903 (and d!1401418 d!1400896)))

(assert (=> bs!872903 (= (= lt!1710415 lt!1710949) (= lambda!175476 lambda!175363))))

(assert (=> bs!872900 (= (= lt!1710415 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175476 lambda!175378))))

(assert (=> bs!872884 (= (= lt!1710415 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175476 lambda!175372))))

(declare-fun bs!872906 () Bool)

(assert (= bs!872906 (and d!1401418 d!1400874)))

(assert (=> bs!872906 (= (= lt!1710415 lt!1710913) (= lambda!175476 lambda!175352))))

(declare-fun bs!872908 () Bool)

(assert (= bs!872908 (and d!1401418 b!4536345)))

(assert (=> bs!872908 (= (= lt!1710415 (-!418 lt!1710448 key!3287)) (= lambda!175476 lambda!175443))))

(declare-fun bs!872910 () Bool)

(assert (= bs!872910 (and d!1401418 b!4535199)))

(assert (=> bs!872910 (not (= lambda!175476 lambda!175215))))

(declare-fun bs!872911 () Bool)

(assert (= bs!872911 (and d!1401418 b!4535545)))

(assert (=> bs!872911 (= (= lt!1710415 lt!1710429) (= lambda!175476 lambda!175339))))

(declare-fun bs!872913 () Bool)

(assert (= bs!872913 (and d!1401418 d!1401222)))

(assert (=> bs!872913 (= (= lt!1710415 lt!1711328) (= lambda!175476 lambda!175440))))

(declare-fun bs!872915 () Bool)

(assert (= bs!872915 (and d!1401418 b!4535800)))

(assert (=> bs!872915 (= (= lt!1710415 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175476 lambda!175371))))

(declare-fun bs!872917 () Bool)

(assert (= bs!872917 (and d!1401418 d!1401354)))

(assert (=> bs!872917 (= (= lt!1710415 lt!1710448) (= lambda!175476 lambda!175466))))

(assert (=> bs!872890 (= (= lt!1710415 lt!1710429) (= lambda!175476 lambda!175340))))

(declare-fun bs!872920 () Bool)

(assert (= bs!872920 (and d!1401418 d!1400980)))

(assert (=> bs!872920 (= (= lt!1710415 lt!1711000) (= lambda!175476 lambda!175374))))

(declare-fun bs!872922 () Bool)

(assert (= bs!872922 (and d!1401418 d!1400628)))

(assert (=> bs!872922 (= (= lt!1710415 lt!1710589) (= lambda!175476 lambda!175268))))

(assert (=> bs!872883 (= (= lt!1710415 lt!1710448) (= lambda!175476 lambda!175266))))

(declare-fun bs!872925 () Bool)

(assert (= bs!872925 (and d!1401418 b!4535312)))

(assert (=> bs!872925 (= (= lt!1710415 lt!1710448) (= lambda!175476 lambda!175265))))

(assert (=> d!1401418 true))

(assert (=> d!1401418 (forall!10330 (toList!4391 lt!1710415) lambda!175476)))

(declare-fun lt!1711493 () Unit!97630)

(assert (=> d!1401418 (= lt!1711493 (choose!29841 lt!1710415))))

(assert (=> d!1401418 (= (lemmaContainsAllItsOwnKeys!359 lt!1710415) lt!1711493)))

(declare-fun bs!872931 () Bool)

(assert (= bs!872931 d!1401418))

(declare-fun m!5299223 () Bool)

(assert (=> bs!872931 m!5299223))

(declare-fun m!5299225 () Bool)

(assert (=> bs!872931 m!5299225))

(assert (=> bm!316194 d!1401418))

(declare-fun d!1401422 () Bool)

(assert (=> d!1401422 (= (invariantList!1039 (toList!4391 lt!1710589)) (noDuplicatedKeys!274 (toList!4391 lt!1710589)))))

(declare-fun bs!872934 () Bool)

(assert (= bs!872934 d!1401422))

(declare-fun m!5299227 () Bool)

(assert (=> bs!872934 m!5299227))

(assert (=> b!4535310 d!1401422))

(declare-fun d!1401424 () Bool)

(assert (=> d!1401424 (= (invariantList!1039 (toList!4391 lt!1710816)) (noDuplicatedKeys!274 (toList!4391 lt!1710816)))))

(declare-fun bs!872936 () Bool)

(assert (= bs!872936 d!1401424))

(declare-fun m!5299229 () Bool)

(assert (=> bs!872936 m!5299229))

(assert (=> d!1400794 d!1401424))

(declare-fun d!1401426 () Bool)

(declare-fun res!1890085 () Bool)

(declare-fun e!2826838 () Bool)

(assert (=> d!1401426 (=> res!1890085 e!2826838)))

(assert (=> d!1401426 (= res!1890085 ((_ is Nil!50733) (t!357819 (toList!4392 lm!1477))))))

(assert (=> d!1401426 (= (forall!10329 (t!357819 (toList!4392 lm!1477)) lambda!175332) e!2826838)))

(declare-fun b!4536538 () Bool)

(declare-fun e!2826839 () Bool)

(assert (=> b!4536538 (= e!2826838 e!2826839)))

(declare-fun res!1890086 () Bool)

(assert (=> b!4536538 (=> (not res!1890086) (not e!2826839))))

(assert (=> b!4536538 (= res!1890086 (dynLambda!21203 lambda!175332 (h!56608 (t!357819 (toList!4392 lm!1477)))))))

(declare-fun b!4536539 () Bool)

(assert (=> b!4536539 (= e!2826839 (forall!10329 (t!357819 (t!357819 (toList!4392 lm!1477))) lambda!175332))))

(assert (= (and d!1401426 (not res!1890085)) b!4536538))

(assert (= (and b!4536538 res!1890086) b!4536539))

(declare-fun b_lambda!157339 () Bool)

(assert (=> (not b_lambda!157339) (not b!4536538)))

(declare-fun m!5299231 () Bool)

(assert (=> b!4536538 m!5299231))

(declare-fun m!5299233 () Bool)

(assert (=> b!4536539 m!5299233))

(assert (=> d!1400794 d!1401426))

(declare-fun b!4536541 () Bool)

(declare-fun e!2826840 () Option!11186)

(declare-fun e!2826841 () Option!11186)

(assert (=> b!4536541 (= e!2826840 e!2826841)))

(declare-fun c!774766 () Bool)

(assert (=> b!4536541 (= c!774766 (and ((_ is Cons!50733) (toList!4392 lm!1477)) (not (= (_1!28896 (h!56608 (toList!4392 lm!1477))) hash!344))))))

(declare-fun b!4536540 () Bool)

(assert (=> b!4536540 (= e!2826840 (Some!11185 (_2!28896 (h!56608 (toList!4392 lm!1477)))))))

(declare-fun b!4536543 () Bool)

(assert (=> b!4536543 (= e!2826841 None!11185)))

(declare-fun d!1401428 () Bool)

(declare-fun c!774765 () Bool)

(assert (=> d!1401428 (= c!774765 (and ((_ is Cons!50733) (toList!4392 lm!1477)) (= (_1!28896 (h!56608 (toList!4392 lm!1477))) hash!344)))))

(assert (=> d!1401428 (= (getValueByKey!1136 (toList!4392 lm!1477) hash!344) e!2826840)))

(declare-fun b!4536542 () Bool)

(assert (=> b!4536542 (= e!2826841 (getValueByKey!1136 (t!357819 (toList!4392 lm!1477)) hash!344))))

(assert (= (and d!1401428 c!774765) b!4536540))

(assert (= (and d!1401428 (not c!774765)) b!4536541))

(assert (= (and b!4536541 c!774766) b!4536542))

(assert (= (and b!4536541 (not c!774766)) b!4536543))

(declare-fun m!5299235 () Bool)

(assert (=> b!4536542 m!5299235))

(assert (=> b!4535589 d!1401428))

(declare-fun d!1401430 () Bool)

(declare-fun res!1890087 () Bool)

(declare-fun e!2826842 () Bool)

(assert (=> d!1401430 (=> res!1890087 e!2826842)))

(assert (=> d!1401430 (= res!1890087 (and ((_ is Cons!50732) (t!357818 (_2!28896 lt!1710445))) (= (_1!28895 (h!56607 (t!357818 (_2!28896 lt!1710445)))) (_1!28895 (h!56607 (_2!28896 lt!1710445))))))))

(assert (=> d!1401430 (= (containsKey!1856 (t!357818 (_2!28896 lt!1710445)) (_1!28895 (h!56607 (_2!28896 lt!1710445)))) e!2826842)))

(declare-fun b!4536544 () Bool)

(declare-fun e!2826843 () Bool)

(assert (=> b!4536544 (= e!2826842 e!2826843)))

(declare-fun res!1890088 () Bool)

(assert (=> b!4536544 (=> (not res!1890088) (not e!2826843))))

(assert (=> b!4536544 (= res!1890088 ((_ is Cons!50732) (t!357818 (_2!28896 lt!1710445))))))

(declare-fun b!4536545 () Bool)

(assert (=> b!4536545 (= e!2826843 (containsKey!1856 (t!357818 (t!357818 (_2!28896 lt!1710445))) (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(assert (= (and d!1401430 (not res!1890087)) b!4536544))

(assert (= (and b!4536544 res!1890088) b!4536545))

(declare-fun m!5299239 () Bool)

(assert (=> b!4536545 m!5299239))

(assert (=> b!4535383 d!1401430))

(declare-fun d!1401432 () Bool)

(declare-fun res!1890089 () Bool)

(declare-fun e!2826844 () Bool)

(assert (=> d!1401432 (=> res!1890089 e!2826844)))

(assert (=> d!1401432 (= res!1890089 (and ((_ is Cons!50732) (toList!4391 lt!1710447)) (= (_1!28895 (h!56607 (toList!4391 lt!1710447))) key!3287)))))

(assert (=> d!1401432 (= (containsKey!1859 (toList!4391 lt!1710447) key!3287) e!2826844)))

(declare-fun b!4536546 () Bool)

(declare-fun e!2826845 () Bool)

(assert (=> b!4536546 (= e!2826844 e!2826845)))

(declare-fun res!1890090 () Bool)

(assert (=> b!4536546 (=> (not res!1890090) (not e!2826845))))

(assert (=> b!4536546 (= res!1890090 ((_ is Cons!50732) (toList!4391 lt!1710447)))))

(declare-fun b!4536547 () Bool)

(assert (=> b!4536547 (= e!2826845 (containsKey!1859 (t!357818 (toList!4391 lt!1710447)) key!3287))))

(assert (= (and d!1401432 (not res!1890089)) b!4536546))

(assert (= (and b!4536546 res!1890090) b!4536547))

(declare-fun m!5299243 () Bool)

(assert (=> b!4536547 m!5299243))

(assert (=> b!4535356 d!1401432))

(declare-fun d!1401438 () Bool)

(assert (=> d!1401438 (containsKey!1859 (toList!4391 lt!1710447) key!3287)))

(declare-fun lt!1711494 () Unit!97630)

(assert (=> d!1401438 (= lt!1711494 (choose!29828 (toList!4391 lt!1710447) key!3287))))

(assert (=> d!1401438 (invariantList!1039 (toList!4391 lt!1710447))))

(assert (=> d!1401438 (= (lemmaInGetKeysListThenContainsKey!486 (toList!4391 lt!1710447) key!3287) lt!1711494)))

(declare-fun bs!872944 () Bool)

(assert (= bs!872944 d!1401438))

(assert (=> bs!872944 m!5296949))

(declare-fun m!5299245 () Bool)

(assert (=> bs!872944 m!5299245))

(assert (=> bs!872944 m!5298517))

(assert (=> b!4535356 d!1401438))

(declare-fun d!1401442 () Bool)

(assert (=> d!1401442 (= (get!16667 (getValueByKey!1136 (toList!4392 lt!1710421) hash!344)) (v!44863 (getValueByKey!1136 (toList!4392 lt!1710421) hash!344)))))

(assert (=> d!1400692 d!1401442))

(assert (=> d!1400692 d!1400932))

(declare-fun d!1401446 () Bool)

(declare-fun e!2826853 () Bool)

(assert (=> d!1401446 e!2826853))

(declare-fun res!1890096 () Bool)

(assert (=> d!1401446 (=> res!1890096 e!2826853)))

(declare-fun e!2826855 () Bool)

(assert (=> d!1401446 (= res!1890096 e!2826855)))

(declare-fun res!1890097 () Bool)

(assert (=> d!1401446 (=> (not res!1890097) (not e!2826855))))

(declare-fun lt!1711522 () Bool)

(assert (=> d!1401446 (= res!1890097 (not lt!1711522))))

(declare-fun lt!1711517 () Bool)

(assert (=> d!1401446 (= lt!1711522 lt!1711517)))

(declare-fun lt!1711516 () Unit!97630)

(declare-fun e!2826852 () Unit!97630)

(assert (=> d!1401446 (= lt!1711516 e!2826852)))

(declare-fun c!774768 () Bool)

(assert (=> d!1401446 (= c!774768 lt!1711517)))

(assert (=> d!1401446 (= lt!1711517 (containsKey!1859 (toList!4391 (extractMap!1248 (toList!4392 lt!1710421))) key!3287))))

(assert (=> d!1401446 (= (contains!13513 (extractMap!1248 (toList!4392 lt!1710421)) key!3287) lt!1711522)))

(declare-fun b!4536555 () Bool)

(declare-fun lt!1711523 () Unit!97630)

(assert (=> b!4536555 (= e!2826852 lt!1711523)))

(declare-fun lt!1711518 () Unit!97630)

(assert (=> b!4536555 (= lt!1711518 (lemmaContainsKeyImpliesGetValueByKeyDefined!1040 (toList!4391 (extractMap!1248 (toList!4392 lt!1710421))) key!3287))))

(assert (=> b!4536555 (isDefined!8463 (getValueByKey!1137 (toList!4391 (extractMap!1248 (toList!4392 lt!1710421))) key!3287))))

(declare-fun lt!1711520 () Unit!97630)

(assert (=> b!4536555 (= lt!1711520 lt!1711518)))

(assert (=> b!4536555 (= lt!1711523 (lemmaInListThenGetKeysListContains!483 (toList!4391 (extractMap!1248 (toList!4392 lt!1710421))) key!3287))))

(declare-fun call!316300 () Bool)

(assert (=> b!4536555 call!316300))

(declare-fun b!4536556 () Bool)

(assert (=> b!4536556 false))

(declare-fun lt!1711519 () Unit!97630)

(declare-fun lt!1711521 () Unit!97630)

(assert (=> b!4536556 (= lt!1711519 lt!1711521)))

(assert (=> b!4536556 (containsKey!1859 (toList!4391 (extractMap!1248 (toList!4392 lt!1710421))) key!3287)))

(assert (=> b!4536556 (= lt!1711521 (lemmaInGetKeysListThenContainsKey!486 (toList!4391 (extractMap!1248 (toList!4392 lt!1710421))) key!3287))))

(declare-fun e!2826854 () Unit!97630)

(declare-fun Unit!97906 () Unit!97630)

(assert (=> b!4536556 (= e!2826854 Unit!97906)))

(declare-fun bm!316295 () Bool)

(declare-fun e!2826856 () List!50859)

(assert (=> bm!316295 (= call!316300 (contains!13515 e!2826856 key!3287))))

(declare-fun c!774770 () Bool)

(assert (=> bm!316295 (= c!774770 c!774768)))

(declare-fun b!4536557 () Bool)

(declare-fun e!2826851 () Bool)

(assert (=> b!4536557 (= e!2826853 e!2826851)))

(declare-fun res!1890098 () Bool)

(assert (=> b!4536557 (=> (not res!1890098) (not e!2826851))))

(assert (=> b!4536557 (= res!1890098 (isDefined!8463 (getValueByKey!1137 (toList!4391 (extractMap!1248 (toList!4392 lt!1710421))) key!3287)))))

(declare-fun b!4536558 () Bool)

(assert (=> b!4536558 (= e!2826856 (keys!17648 (extractMap!1248 (toList!4392 lt!1710421))))))

(declare-fun b!4536559 () Bool)

(assert (=> b!4536559 (= e!2826852 e!2826854)))

(declare-fun c!774769 () Bool)

(assert (=> b!4536559 (= c!774769 call!316300)))

(declare-fun b!4536560 () Bool)

(declare-fun Unit!97907 () Unit!97630)

(assert (=> b!4536560 (= e!2826854 Unit!97907)))

(declare-fun b!4536561 () Bool)

(assert (=> b!4536561 (= e!2826856 (getKeysList!487 (toList!4391 (extractMap!1248 (toList!4392 lt!1710421)))))))

(declare-fun b!4536562 () Bool)

(assert (=> b!4536562 (= e!2826851 (contains!13515 (keys!17648 (extractMap!1248 (toList!4392 lt!1710421))) key!3287))))

(declare-fun b!4536563 () Bool)

(assert (=> b!4536563 (= e!2826855 (not (contains!13515 (keys!17648 (extractMap!1248 (toList!4392 lt!1710421))) key!3287)))))

(assert (= (and d!1401446 c!774768) b!4536555))

(assert (= (and d!1401446 (not c!774768)) b!4536559))

(assert (= (and b!4536559 c!774769) b!4536556))

(assert (= (and b!4536559 (not c!774769)) b!4536560))

(assert (= (or b!4536555 b!4536559) bm!316295))

(assert (= (and bm!316295 c!774770) b!4536561))

(assert (= (and bm!316295 (not c!774770)) b!4536558))

(assert (= (and d!1401446 res!1890097) b!4536563))

(assert (= (and d!1401446 (not res!1890096)) b!4536557))

(assert (= (and b!4536557 res!1890098) b!4536562))

(assert (=> b!4536562 m!5296627))

(declare-fun m!5299251 () Bool)

(assert (=> b!4536562 m!5299251))

(assert (=> b!4536562 m!5299251))

(declare-fun m!5299253 () Bool)

(assert (=> b!4536562 m!5299253))

(declare-fun m!5299255 () Bool)

(assert (=> b!4536556 m!5299255))

(declare-fun m!5299257 () Bool)

(assert (=> b!4536556 m!5299257))

(assert (=> b!4536558 m!5296627))

(assert (=> b!4536558 m!5299251))

(assert (=> b!4536563 m!5296627))

(assert (=> b!4536563 m!5299251))

(assert (=> b!4536563 m!5299251))

(assert (=> b!4536563 m!5299253))

(declare-fun m!5299259 () Bool)

(assert (=> b!4536557 m!5299259))

(assert (=> b!4536557 m!5299259))

(declare-fun m!5299261 () Bool)

(assert (=> b!4536557 m!5299261))

(declare-fun m!5299263 () Bool)

(assert (=> bm!316295 m!5299263))

(declare-fun m!5299265 () Bool)

(assert (=> b!4536561 m!5299265))

(declare-fun m!5299267 () Bool)

(assert (=> b!4536555 m!5299267))

(assert (=> b!4536555 m!5299259))

(assert (=> b!4536555 m!5299259))

(assert (=> b!4536555 m!5299261))

(declare-fun m!5299269 () Bool)

(assert (=> b!4536555 m!5299269))

(assert (=> d!1401446 m!5299255))

(assert (=> d!1400798 d!1401446))

(assert (=> d!1400798 d!1400790))

(declare-fun d!1401448 () Bool)

(assert (=> d!1401448 (contains!13513 (extractMap!1248 (toList!4392 lt!1710421)) key!3287)))

(assert (=> d!1401448 true))

(declare-fun _$34!715 () Unit!97630)

(assert (=> d!1401448 (= (choose!29819 lt!1710421 key!3287 hashF!1107) _$34!715)))

(declare-fun bs!873000 () Bool)

(assert (= bs!873000 d!1401448))

(assert (=> bs!873000 m!5296627))

(assert (=> bs!873000 m!5296627))

(assert (=> bs!873000 m!5297351))

(assert (=> d!1400798 d!1401448))

(declare-fun d!1401450 () Bool)

(declare-fun res!1890099 () Bool)

(declare-fun e!2826857 () Bool)

(assert (=> d!1401450 (=> res!1890099 e!2826857)))

(assert (=> d!1401450 (= res!1890099 ((_ is Nil!50733) (toList!4392 lt!1710421)))))

(assert (=> d!1401450 (= (forall!10329 (toList!4392 lt!1710421) lambda!175338) e!2826857)))

(declare-fun b!4536564 () Bool)

(declare-fun e!2826858 () Bool)

(assert (=> b!4536564 (= e!2826857 e!2826858)))

(declare-fun res!1890100 () Bool)

(assert (=> b!4536564 (=> (not res!1890100) (not e!2826858))))

(assert (=> b!4536564 (= res!1890100 (dynLambda!21203 lambda!175338 (h!56608 (toList!4392 lt!1710421))))))

(declare-fun b!4536565 () Bool)

(assert (=> b!4536565 (= e!2826858 (forall!10329 (t!357819 (toList!4392 lt!1710421)) lambda!175338))))

(assert (= (and d!1401450 (not res!1890099)) b!4536564))

(assert (= (and b!4536564 res!1890100) b!4536565))

(declare-fun b_lambda!157343 () Bool)

(assert (=> (not b_lambda!157343) (not b!4536564)))

(declare-fun m!5299271 () Bool)

(assert (=> b!4536564 m!5299271))

(declare-fun m!5299273 () Bool)

(assert (=> b!4536565 m!5299273))

(assert (=> d!1400798 d!1401450))

(declare-fun bs!873018 () Bool)

(declare-fun b!4536569 () Bool)

(assert (= bs!873018 (and b!4536569 d!1400724)))

(declare-fun lambda!175482 () Int)

(assert (=> bs!873018 (not (= lambda!175482 lambda!175312))))

(declare-fun bs!873020 () Bool)

(assert (= bs!873020 (and b!4536569 b!4535309)))

(assert (=> bs!873020 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1710578) (= lambda!175482 lambda!175267))))

(declare-fun bs!873022 () Bool)

(assert (= bs!873022 (and b!4536569 b!4535797)))

(assert (=> bs!873022 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1710989) (= lambda!175482 lambda!175373))))

(declare-fun bs!873024 () Bool)

(assert (= bs!873024 (and b!4536569 b!4535625)))

(assert (=> bs!873024 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1710415) (= lambda!175482 lambda!175349))))

(declare-fun bs!873025 () Bool)

(assert (= bs!873025 (and b!4536569 b!4535622)))

(assert (=> bs!873025 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1710902) (= lambda!175482 lambda!175351))))

(declare-fun bs!873027 () Bool)

(assert (= bs!873027 (and b!4536569 d!1401004)))

(assert (=> bs!873027 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1711037) (= lambda!175482 lambda!175380))))

(declare-fun bs!873029 () Bool)

(assert (= bs!873029 (and b!4536569 b!4536342)))

(assert (=> bs!873029 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1711365) (= lambda!175482 lambda!175447))))

(declare-fun bs!873030 () Bool)

(assert (= bs!873030 (and b!4536569 b!4535669)))

(assert (=> bs!873030 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175482 lambda!175360))))

(declare-fun bs!873032 () Bool)

(assert (= bs!873032 (and b!4536569 b!4535542)))

(assert (=> bs!873032 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1710840) (= lambda!175482 lambda!175341))))

(declare-fun bs!873033 () Bool)

(assert (= bs!873033 (and b!4536569 b!4536291)))

(assert (=> bs!873033 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1711317) (= lambda!175482 lambda!175439))))

(declare-fun bs!873035 () Bool)

(assert (= bs!873035 (and b!4536569 d!1401348)))

(assert (=> bs!873035 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1710429) (= lambda!175482 lambda!175464))))

(declare-fun bs!873037 () Bool)

(assert (= bs!873037 (and b!4536569 b!4536264)))

(assert (=> bs!873037 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175482 lambda!175428))))

(declare-fun bs!873038 () Bool)

(assert (= bs!873038 (and b!4536569 b!4535832)))

(assert (=> bs!873038 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175482 lambda!175377))))

(declare-fun bs!873040 () Bool)

(assert (= bs!873040 (and b!4536569 d!1401018)))

(assert (=> bs!873040 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1710902) (= lambda!175482 lambda!175389))))

(declare-fun bs!873041 () Bool)

(assert (= bs!873041 (and b!4536569 b!4536261)))

(assert (=> bs!873041 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175482 lambda!175429))))

(declare-fun bs!873042 () Bool)

(assert (= bs!873042 (and b!4536569 d!1400816)))

(assert (=> bs!873042 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1710851) (= lambda!175482 lambda!175344))))

(assert (=> bs!873033 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175482 lambda!175438))))

(assert (=> bs!873029 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) (-!418 lt!1710448 key!3287)) (= lambda!175482 lambda!175446))))

(declare-fun bs!873043 () Bool)

(assert (= bs!873043 (and b!4536569 d!1401276)))

(assert (=> bs!873043 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1711376) (= lambda!175482 lambda!175450))))

(declare-fun bs!873044 () Bool)

(assert (= bs!873044 (and b!4536569 b!4535666)))

(assert (=> bs!873044 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175482 lambda!175361))))

(declare-fun bs!873045 () Bool)

(assert (= bs!873045 (and b!4536569 b!4535829)))

(assert (=> bs!873045 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1711026) (= lambda!175482 lambda!175379))))

(assert (=> bs!873025 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1710415) (= lambda!175482 lambda!175350))))

(declare-fun bs!873046 () Bool)

(assert (= bs!873046 (and b!4536569 d!1401188)))

(assert (=> bs!873046 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1711279) (= lambda!175482 lambda!175431))))

(declare-fun bs!873047 () Bool)

(assert (= bs!873047 (and b!4536569 b!4536294)))

(assert (=> bs!873047 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175482 lambda!175437))))

(assert (=> bs!873041 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1711268) (= lambda!175482 lambda!175430))))

(declare-fun bs!873048 () Bool)

(assert (= bs!873048 (and b!4536569 d!1400896)))

(assert (=> bs!873048 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1710949) (= lambda!175482 lambda!175363))))

(assert (=> bs!873045 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175482 lambda!175378))))

(assert (=> bs!873022 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175482 lambda!175372))))

(declare-fun bs!873049 () Bool)

(assert (= bs!873049 (and b!4536569 d!1400874)))

(assert (=> bs!873049 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1710913) (= lambda!175482 lambda!175352))))

(declare-fun bs!873050 () Bool)

(assert (= bs!873050 (and b!4536569 b!4536345)))

(assert (=> bs!873050 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) (-!418 lt!1710448 key!3287)) (= lambda!175482 lambda!175443))))

(declare-fun bs!873051 () Bool)

(assert (= bs!873051 (and b!4536569 b!4535199)))

(assert (=> bs!873051 (not (= lambda!175482 lambda!175215))))

(declare-fun bs!873052 () Bool)

(assert (= bs!873052 (and b!4536569 b!4535545)))

(assert (=> bs!873052 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1710429) (= lambda!175482 lambda!175339))))

(declare-fun bs!873053 () Bool)

(assert (= bs!873053 (and b!4536569 d!1401222)))

(assert (=> bs!873053 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1711328) (= lambda!175482 lambda!175440))))

(declare-fun bs!873054 () Bool)

(assert (= bs!873054 (and b!4536569 b!4535800)))

(assert (=> bs!873054 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175482 lambda!175371))))

(declare-fun bs!873055 () Bool)

(assert (= bs!873055 (and b!4536569 d!1401354)))

(assert (=> bs!873055 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1710448) (= lambda!175482 lambda!175466))))

(assert (=> bs!873032 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1710429) (= lambda!175482 lambda!175340))))

(declare-fun bs!873056 () Bool)

(assert (= bs!873056 (and b!4536569 d!1400980)))

(assert (=> bs!873056 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1711000) (= lambda!175482 lambda!175374))))

(declare-fun bs!873057 () Bool)

(assert (= bs!873057 (and b!4536569 d!1400628)))

(assert (=> bs!873057 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1710589) (= lambda!175482 lambda!175268))))

(assert (=> bs!873020 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1710448) (= lambda!175482 lambda!175266))))

(declare-fun bs!873058 () Bool)

(assert (= bs!873058 (and b!4536569 b!4535312)))

(assert (=> bs!873058 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1710448) (= lambda!175482 lambda!175265))))

(declare-fun bs!873059 () Bool)

(assert (= bs!873059 (and b!4536569 d!1401418)))

(assert (=> bs!873059 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1710415) (= lambda!175482 lambda!175476))))

(assert (=> bs!873044 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1710938) (= lambda!175482 lambda!175362))))

(assert (=> b!4536569 true))

(declare-fun bs!873060 () Bool)

(declare-fun b!4536566 () Bool)

(assert (= bs!873060 (and b!4536566 d!1400724)))

(declare-fun lambda!175483 () Int)

(assert (=> bs!873060 (not (= lambda!175483 lambda!175312))))

(declare-fun bs!873061 () Bool)

(assert (= bs!873061 (and b!4536566 b!4535309)))

(assert (=> bs!873061 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1710578) (= lambda!175483 lambda!175267))))

(declare-fun bs!873062 () Bool)

(assert (= bs!873062 (and b!4536566 b!4535797)))

(assert (=> bs!873062 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1710989) (= lambda!175483 lambda!175373))))

(declare-fun bs!873064 () Bool)

(assert (= bs!873064 (and b!4536566 b!4535625)))

(assert (=> bs!873064 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1710415) (= lambda!175483 lambda!175349))))

(declare-fun bs!873065 () Bool)

(assert (= bs!873065 (and b!4536566 b!4535622)))

(assert (=> bs!873065 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1710902) (= lambda!175483 lambda!175351))))

(declare-fun bs!873067 () Bool)

(assert (= bs!873067 (and b!4536566 d!1401004)))

(assert (=> bs!873067 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1711037) (= lambda!175483 lambda!175380))))

(declare-fun bs!873069 () Bool)

(assert (= bs!873069 (and b!4536566 b!4535669)))

(assert (=> bs!873069 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175483 lambda!175360))))

(declare-fun bs!873071 () Bool)

(assert (= bs!873071 (and b!4536566 b!4535542)))

(assert (=> bs!873071 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1710840) (= lambda!175483 lambda!175341))))

(declare-fun bs!873073 () Bool)

(assert (= bs!873073 (and b!4536566 b!4536291)))

(assert (=> bs!873073 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1711317) (= lambda!175483 lambda!175439))))

(declare-fun bs!873075 () Bool)

(assert (= bs!873075 (and b!4536566 d!1401348)))

(assert (=> bs!873075 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1710429) (= lambda!175483 lambda!175464))))

(declare-fun bs!873077 () Bool)

(assert (= bs!873077 (and b!4536566 b!4536264)))

(assert (=> bs!873077 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175483 lambda!175428))))

(declare-fun bs!873079 () Bool)

(assert (= bs!873079 (and b!4536566 b!4535832)))

(assert (=> bs!873079 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175483 lambda!175377))))

(declare-fun bs!873081 () Bool)

(assert (= bs!873081 (and b!4536566 d!1401018)))

(assert (=> bs!873081 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1710902) (= lambda!175483 lambda!175389))))

(declare-fun bs!873083 () Bool)

(assert (= bs!873083 (and b!4536566 b!4536261)))

(assert (=> bs!873083 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175483 lambda!175429))))

(declare-fun bs!873085 () Bool)

(assert (= bs!873085 (and b!4536566 d!1400816)))

(assert (=> bs!873085 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1710851) (= lambda!175483 lambda!175344))))

(assert (=> bs!873073 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175483 lambda!175438))))

(declare-fun bs!873088 () Bool)

(assert (= bs!873088 (and b!4536566 b!4536342)))

(assert (=> bs!873088 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) (-!418 lt!1710448 key!3287)) (= lambda!175483 lambda!175446))))

(declare-fun bs!873090 () Bool)

(assert (= bs!873090 (and b!4536566 d!1401276)))

(assert (=> bs!873090 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1711376) (= lambda!175483 lambda!175450))))

(declare-fun bs!873091 () Bool)

(assert (= bs!873091 (and b!4536566 b!4535666)))

(assert (=> bs!873091 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175483 lambda!175361))))

(declare-fun bs!873094 () Bool)

(assert (= bs!873094 (and b!4536566 b!4535829)))

(assert (=> bs!873094 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1711026) (= lambda!175483 lambda!175379))))

(assert (=> bs!873065 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1710415) (= lambda!175483 lambda!175350))))

(declare-fun bs!873096 () Bool)

(assert (= bs!873096 (and b!4536566 d!1401188)))

(assert (=> bs!873096 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1711279) (= lambda!175483 lambda!175431))))

(declare-fun bs!873098 () Bool)

(assert (= bs!873098 (and b!4536566 b!4536294)))

(assert (=> bs!873098 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175483 lambda!175437))))

(assert (=> bs!873083 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1711268) (= lambda!175483 lambda!175430))))

(declare-fun bs!873099 () Bool)

(assert (= bs!873099 (and b!4536566 d!1400896)))

(assert (=> bs!873099 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1710949) (= lambda!175483 lambda!175363))))

(assert (=> bs!873094 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175483 lambda!175378))))

(assert (=> bs!873062 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175483 lambda!175372))))

(declare-fun bs!873100 () Bool)

(assert (= bs!873100 (and b!4536566 d!1400874)))

(assert (=> bs!873100 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1710913) (= lambda!175483 lambda!175352))))

(declare-fun bs!873101 () Bool)

(assert (= bs!873101 (and b!4536566 b!4536345)))

(assert (=> bs!873101 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) (-!418 lt!1710448 key!3287)) (= lambda!175483 lambda!175443))))

(declare-fun bs!873102 () Bool)

(assert (= bs!873102 (and b!4536566 b!4535199)))

(assert (=> bs!873102 (not (= lambda!175483 lambda!175215))))

(declare-fun bs!873103 () Bool)

(assert (= bs!873103 (and b!4536566 b!4535545)))

(assert (=> bs!873103 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1710429) (= lambda!175483 lambda!175339))))

(declare-fun bs!873104 () Bool)

(assert (= bs!873104 (and b!4536566 d!1401222)))

(assert (=> bs!873104 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1711328) (= lambda!175483 lambda!175440))))

(declare-fun bs!873105 () Bool)

(assert (= bs!873105 (and b!4536566 b!4535800)))

(assert (=> bs!873105 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175483 lambda!175371))))

(declare-fun bs!873106 () Bool)

(assert (= bs!873106 (and b!4536566 d!1401354)))

(assert (=> bs!873106 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1710448) (= lambda!175483 lambda!175466))))

(assert (=> bs!873071 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1710429) (= lambda!175483 lambda!175340))))

(assert (=> bs!873088 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1711365) (= lambda!175483 lambda!175447))))

(declare-fun bs!873107 () Bool)

(assert (= bs!873107 (and b!4536566 b!4536569)))

(assert (=> bs!873107 (= lambda!175483 lambda!175482)))

(declare-fun bs!873108 () Bool)

(assert (= bs!873108 (and b!4536566 d!1400980)))

(assert (=> bs!873108 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1711000) (= lambda!175483 lambda!175374))))

(declare-fun bs!873109 () Bool)

(assert (= bs!873109 (and b!4536566 d!1400628)))

(assert (=> bs!873109 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1710589) (= lambda!175483 lambda!175268))))

(assert (=> bs!873061 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1710448) (= lambda!175483 lambda!175266))))

(declare-fun bs!873110 () Bool)

(assert (= bs!873110 (and b!4536566 b!4535312)))

(assert (=> bs!873110 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1710448) (= lambda!175483 lambda!175265))))

(declare-fun bs!873111 () Bool)

(assert (= bs!873111 (and b!4536566 d!1401418)))

(assert (=> bs!873111 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1710415) (= lambda!175483 lambda!175476))))

(assert (=> bs!873091 (= (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1710938) (= lambda!175483 lambda!175362))))

(assert (=> b!4536566 true))

(declare-fun lt!1711527 () ListMap!3653)

(declare-fun lambda!175485 () Int)

(assert (=> b!4536566 (= (= lt!1711527 (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) (= lambda!175485 lambda!175483))))

(assert (=> bs!873060 (not (= lambda!175485 lambda!175312))))

(assert (=> bs!873061 (= (= lt!1711527 lt!1710578) (= lambda!175485 lambda!175267))))

(assert (=> bs!873062 (= (= lt!1711527 lt!1710989) (= lambda!175485 lambda!175373))))

(assert (=> bs!873064 (= (= lt!1711527 lt!1710415) (= lambda!175485 lambda!175349))))

(assert (=> bs!873065 (= (= lt!1711527 lt!1710902) (= lambda!175485 lambda!175351))))

(assert (=> bs!873067 (= (= lt!1711527 lt!1711037) (= lambda!175485 lambda!175380))))

(assert (=> bs!873069 (= (= lt!1711527 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175485 lambda!175360))))

(assert (=> bs!873071 (= (= lt!1711527 lt!1710840) (= lambda!175485 lambda!175341))))

(assert (=> bs!873073 (= (= lt!1711527 lt!1711317) (= lambda!175485 lambda!175439))))

(assert (=> bs!873075 (= (= lt!1711527 lt!1710429) (= lambda!175485 lambda!175464))))

(assert (=> bs!873077 (= (= lt!1711527 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175485 lambda!175428))))

(assert (=> bs!873079 (= (= lt!1711527 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175485 lambda!175377))))

(assert (=> bs!873081 (= (= lt!1711527 lt!1710902) (= lambda!175485 lambda!175389))))

(assert (=> bs!873083 (= (= lt!1711527 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175485 lambda!175429))))

(assert (=> bs!873085 (= (= lt!1711527 lt!1710851) (= lambda!175485 lambda!175344))))

(assert (=> bs!873073 (= (= lt!1711527 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175485 lambda!175438))))

(assert (=> bs!873088 (= (= lt!1711527 (-!418 lt!1710448 key!3287)) (= lambda!175485 lambda!175446))))

(assert (=> bs!873090 (= (= lt!1711527 lt!1711376) (= lambda!175485 lambda!175450))))

(assert (=> bs!873091 (= (= lt!1711527 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175485 lambda!175361))))

(assert (=> bs!873094 (= (= lt!1711527 lt!1711026) (= lambda!175485 lambda!175379))))

(assert (=> bs!873065 (= (= lt!1711527 lt!1710415) (= lambda!175485 lambda!175350))))

(assert (=> bs!873096 (= (= lt!1711527 lt!1711279) (= lambda!175485 lambda!175431))))

(assert (=> bs!873098 (= (= lt!1711527 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175485 lambda!175437))))

(assert (=> bs!873083 (= (= lt!1711527 lt!1711268) (= lambda!175485 lambda!175430))))

(assert (=> bs!873099 (= (= lt!1711527 lt!1710949) (= lambda!175485 lambda!175363))))

(assert (=> bs!873094 (= (= lt!1711527 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175485 lambda!175378))))

(assert (=> bs!873062 (= (= lt!1711527 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175485 lambda!175372))))

(assert (=> bs!873100 (= (= lt!1711527 lt!1710913) (= lambda!175485 lambda!175352))))

(assert (=> bs!873101 (= (= lt!1711527 (-!418 lt!1710448 key!3287)) (= lambda!175485 lambda!175443))))

(assert (=> bs!873102 (not (= lambda!175485 lambda!175215))))

(assert (=> bs!873103 (= (= lt!1711527 lt!1710429) (= lambda!175485 lambda!175339))))

(assert (=> bs!873104 (= (= lt!1711527 lt!1711328) (= lambda!175485 lambda!175440))))

(assert (=> bs!873105 (= (= lt!1711527 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175485 lambda!175371))))

(assert (=> bs!873106 (= (= lt!1711527 lt!1710448) (= lambda!175485 lambda!175466))))

(assert (=> bs!873071 (= (= lt!1711527 lt!1710429) (= lambda!175485 lambda!175340))))

(assert (=> bs!873088 (= (= lt!1711527 lt!1711365) (= lambda!175485 lambda!175447))))

(assert (=> bs!873107 (= (= lt!1711527 (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) (= lambda!175485 lambda!175482))))

(assert (=> bs!873108 (= (= lt!1711527 lt!1711000) (= lambda!175485 lambda!175374))))

(assert (=> bs!873109 (= (= lt!1711527 lt!1710589) (= lambda!175485 lambda!175268))))

(assert (=> bs!873061 (= (= lt!1711527 lt!1710448) (= lambda!175485 lambda!175266))))

(assert (=> bs!873110 (= (= lt!1711527 lt!1710448) (= lambda!175485 lambda!175265))))

(assert (=> bs!873111 (= (= lt!1711527 lt!1710415) (= lambda!175485 lambda!175476))))

(assert (=> bs!873091 (= (= lt!1711527 lt!1710938) (= lambda!175485 lambda!175362))))

(assert (=> b!4536566 true))

(declare-fun bs!873112 () Bool)

(declare-fun d!1401452 () Bool)

(assert (= bs!873112 (and d!1401452 b!4536566)))

(declare-fun lt!1711538 () ListMap!3653)

(declare-fun lambda!175486 () Int)

(assert (=> bs!873112 (= (= lt!1711538 (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) (= lambda!175486 lambda!175483))))

(declare-fun bs!873113 () Bool)

(assert (= bs!873113 (and d!1401452 d!1400724)))

(assert (=> bs!873113 (not (= lambda!175486 lambda!175312))))

(declare-fun bs!873114 () Bool)

(assert (= bs!873114 (and d!1401452 b!4535309)))

(assert (=> bs!873114 (= (= lt!1711538 lt!1710578) (= lambda!175486 lambda!175267))))

(declare-fun bs!873115 () Bool)

(assert (= bs!873115 (and d!1401452 b!4535797)))

(assert (=> bs!873115 (= (= lt!1711538 lt!1710989) (= lambda!175486 lambda!175373))))

(declare-fun bs!873116 () Bool)

(assert (= bs!873116 (and d!1401452 b!4535625)))

(assert (=> bs!873116 (= (= lt!1711538 lt!1710415) (= lambda!175486 lambda!175349))))

(declare-fun bs!873117 () Bool)

(assert (= bs!873117 (and d!1401452 b!4535622)))

(assert (=> bs!873117 (= (= lt!1711538 lt!1710902) (= lambda!175486 lambda!175351))))

(declare-fun bs!873118 () Bool)

(assert (= bs!873118 (and d!1401452 b!4535669)))

(assert (=> bs!873118 (= (= lt!1711538 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175486 lambda!175360))))

(declare-fun bs!873119 () Bool)

(assert (= bs!873119 (and d!1401452 b!4535542)))

(assert (=> bs!873119 (= (= lt!1711538 lt!1710840) (= lambda!175486 lambda!175341))))

(declare-fun bs!873120 () Bool)

(assert (= bs!873120 (and d!1401452 b!4536291)))

(assert (=> bs!873120 (= (= lt!1711538 lt!1711317) (= lambda!175486 lambda!175439))))

(declare-fun bs!873121 () Bool)

(assert (= bs!873121 (and d!1401452 d!1401348)))

(assert (=> bs!873121 (= (= lt!1711538 lt!1710429) (= lambda!175486 lambda!175464))))

(declare-fun bs!873122 () Bool)

(assert (= bs!873122 (and d!1401452 b!4536264)))

(assert (=> bs!873122 (= (= lt!1711538 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175486 lambda!175428))))

(declare-fun bs!873123 () Bool)

(assert (= bs!873123 (and d!1401452 b!4535832)))

(assert (=> bs!873123 (= (= lt!1711538 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175486 lambda!175377))))

(declare-fun bs!873124 () Bool)

(assert (= bs!873124 (and d!1401452 d!1401018)))

(assert (=> bs!873124 (= (= lt!1711538 lt!1710902) (= lambda!175486 lambda!175389))))

(declare-fun bs!873125 () Bool)

(assert (= bs!873125 (and d!1401452 b!4536261)))

(assert (=> bs!873125 (= (= lt!1711538 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175486 lambda!175429))))

(declare-fun bs!873126 () Bool)

(assert (= bs!873126 (and d!1401452 d!1400816)))

(assert (=> bs!873126 (= (= lt!1711538 lt!1710851) (= lambda!175486 lambda!175344))))

(assert (=> bs!873120 (= (= lt!1711538 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175486 lambda!175438))))

(declare-fun bs!873127 () Bool)

(assert (= bs!873127 (and d!1401452 b!4536342)))

(assert (=> bs!873127 (= (= lt!1711538 (-!418 lt!1710448 key!3287)) (= lambda!175486 lambda!175446))))

(declare-fun bs!873128 () Bool)

(assert (= bs!873128 (and d!1401452 d!1401276)))

(assert (=> bs!873128 (= (= lt!1711538 lt!1711376) (= lambda!175486 lambda!175450))))

(declare-fun bs!873129 () Bool)

(assert (= bs!873129 (and d!1401452 b!4535666)))

(assert (=> bs!873129 (= (= lt!1711538 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175486 lambda!175361))))

(declare-fun bs!873130 () Bool)

(assert (= bs!873130 (and d!1401452 b!4535829)))

(assert (=> bs!873130 (= (= lt!1711538 lt!1711026) (= lambda!175486 lambda!175379))))

(assert (=> bs!873117 (= (= lt!1711538 lt!1710415) (= lambda!175486 lambda!175350))))

(declare-fun bs!873131 () Bool)

(assert (= bs!873131 (and d!1401452 d!1401188)))

(assert (=> bs!873131 (= (= lt!1711538 lt!1711279) (= lambda!175486 lambda!175431))))

(declare-fun bs!873132 () Bool)

(assert (= bs!873132 (and d!1401452 b!4536294)))

(assert (=> bs!873132 (= (= lt!1711538 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175486 lambda!175437))))

(assert (=> bs!873125 (= (= lt!1711538 lt!1711268) (= lambda!175486 lambda!175430))))

(declare-fun bs!873133 () Bool)

(assert (= bs!873133 (and d!1401452 d!1400896)))

(assert (=> bs!873133 (= (= lt!1711538 lt!1710949) (= lambda!175486 lambda!175363))))

(assert (=> bs!873130 (= (= lt!1711538 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175486 lambda!175378))))

(assert (=> bs!873115 (= (= lt!1711538 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175486 lambda!175372))))

(declare-fun bs!873134 () Bool)

(assert (= bs!873134 (and d!1401452 d!1400874)))

(assert (=> bs!873134 (= (= lt!1711538 lt!1710913) (= lambda!175486 lambda!175352))))

(declare-fun bs!873135 () Bool)

(assert (= bs!873135 (and d!1401452 b!4536345)))

(assert (=> bs!873135 (= (= lt!1711538 (-!418 lt!1710448 key!3287)) (= lambda!175486 lambda!175443))))

(declare-fun bs!873136 () Bool)

(assert (= bs!873136 (and d!1401452 b!4535199)))

(assert (=> bs!873136 (not (= lambda!175486 lambda!175215))))

(declare-fun bs!873137 () Bool)

(assert (= bs!873137 (and d!1401452 b!4535545)))

(assert (=> bs!873137 (= (= lt!1711538 lt!1710429) (= lambda!175486 lambda!175339))))

(assert (=> bs!873112 (= (= lt!1711538 lt!1711527) (= lambda!175486 lambda!175485))))

(declare-fun bs!873138 () Bool)

(assert (= bs!873138 (and d!1401452 d!1401004)))

(assert (=> bs!873138 (= (= lt!1711538 lt!1711037) (= lambda!175486 lambda!175380))))

(declare-fun bs!873139 () Bool)

(assert (= bs!873139 (and d!1401452 d!1401222)))

(assert (=> bs!873139 (= (= lt!1711538 lt!1711328) (= lambda!175486 lambda!175440))))

(declare-fun bs!873140 () Bool)

(assert (= bs!873140 (and d!1401452 b!4535800)))

(assert (=> bs!873140 (= (= lt!1711538 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175486 lambda!175371))))

(declare-fun bs!873141 () Bool)

(assert (= bs!873141 (and d!1401452 d!1401354)))

(assert (=> bs!873141 (= (= lt!1711538 lt!1710448) (= lambda!175486 lambda!175466))))

(assert (=> bs!873119 (= (= lt!1711538 lt!1710429) (= lambda!175486 lambda!175340))))

(assert (=> bs!873127 (= (= lt!1711538 lt!1711365) (= lambda!175486 lambda!175447))))

(declare-fun bs!873142 () Bool)

(assert (= bs!873142 (and d!1401452 b!4536569)))

(assert (=> bs!873142 (= (= lt!1711538 (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) (= lambda!175486 lambda!175482))))

(declare-fun bs!873143 () Bool)

(assert (= bs!873143 (and d!1401452 d!1400980)))

(assert (=> bs!873143 (= (= lt!1711538 lt!1711000) (= lambda!175486 lambda!175374))))

(declare-fun bs!873144 () Bool)

(assert (= bs!873144 (and d!1401452 d!1400628)))

(assert (=> bs!873144 (= (= lt!1711538 lt!1710589) (= lambda!175486 lambda!175268))))

(assert (=> bs!873114 (= (= lt!1711538 lt!1710448) (= lambda!175486 lambda!175266))))

(declare-fun bs!873145 () Bool)

(assert (= bs!873145 (and d!1401452 b!4535312)))

(assert (=> bs!873145 (= (= lt!1711538 lt!1710448) (= lambda!175486 lambda!175265))))

(declare-fun bs!873146 () Bool)

(assert (= bs!873146 (and d!1401452 d!1401418)))

(assert (=> bs!873146 (= (= lt!1711538 lt!1710415) (= lambda!175486 lambda!175476))))

(assert (=> bs!873129 (= (= lt!1711538 lt!1710938) (= lambda!175486 lambda!175362))))

(assert (=> d!1401452 true))

(declare-fun bm!316296 () Bool)

(declare-fun call!316301 () Unit!97630)

(assert (=> bm!316296 (= call!316301 (lemmaContainsAllItsOwnKeys!359 (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))))))

(declare-fun call!316302 () Bool)

(declare-fun c!774771 () Bool)

(declare-fun bm!316297 () Bool)

(assert (=> bm!316297 (= call!316302 (forall!10330 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) (ite c!774771 lambda!175482 lambda!175485)))))

(declare-fun e!2826861 () ListMap!3653)

(assert (=> b!4536566 (= e!2826861 lt!1711527)))

(declare-fun lt!1711529 () ListMap!3653)

(assert (=> b!4536566 (= lt!1711529 (+!1593 (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) (h!56607 (_2!28896 (h!56608 (toList!4392 lt!1710432))))))))

(assert (=> b!4536566 (= lt!1711527 (addToMapMapFromBucket!719 (t!357818 (_2!28896 (h!56608 (toList!4392 lt!1710432)))) (+!1593 (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) (h!56607 (_2!28896 (h!56608 (toList!4392 lt!1710432)))))))))

(declare-fun lt!1711540 () Unit!97630)

(assert (=> b!4536566 (= lt!1711540 call!316301)))

(assert (=> b!4536566 (forall!10330 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) lambda!175483)))

(declare-fun lt!1711535 () Unit!97630)

(assert (=> b!4536566 (= lt!1711535 lt!1711540)))

(assert (=> b!4536566 (forall!10330 (toList!4391 lt!1711529) lambda!175485)))

(declare-fun lt!1711530 () Unit!97630)

(declare-fun Unit!97919 () Unit!97630)

(assert (=> b!4536566 (= lt!1711530 Unit!97919)))

(assert (=> b!4536566 (forall!10330 (t!357818 (_2!28896 (h!56608 (toList!4392 lt!1710432)))) lambda!175485)))

(declare-fun lt!1711532 () Unit!97630)

(declare-fun Unit!97920 () Unit!97630)

(assert (=> b!4536566 (= lt!1711532 Unit!97920)))

(declare-fun lt!1711526 () Unit!97630)

(declare-fun Unit!97921 () Unit!97630)

(assert (=> b!4536566 (= lt!1711526 Unit!97921)))

(declare-fun lt!1711544 () Unit!97630)

(assert (=> b!4536566 (= lt!1711544 (forallContained!2591 (toList!4391 lt!1711529) lambda!175485 (h!56607 (_2!28896 (h!56608 (toList!4392 lt!1710432))))))))

(assert (=> b!4536566 (contains!13513 lt!1711529 (_1!28895 (h!56607 (_2!28896 (h!56608 (toList!4392 lt!1710432))))))))

(declare-fun lt!1711524 () Unit!97630)

(declare-fun Unit!97922 () Unit!97630)

(assert (=> b!4536566 (= lt!1711524 Unit!97922)))

(assert (=> b!4536566 (contains!13513 lt!1711527 (_1!28895 (h!56607 (_2!28896 (h!56608 (toList!4392 lt!1710432))))))))

(declare-fun lt!1711536 () Unit!97630)

(declare-fun Unit!97923 () Unit!97630)

(assert (=> b!4536566 (= lt!1711536 Unit!97923)))

(assert (=> b!4536566 (forall!10330 (_2!28896 (h!56608 (toList!4392 lt!1710432))) lambda!175485)))

(declare-fun lt!1711539 () Unit!97630)

(declare-fun Unit!97924 () Unit!97630)

(assert (=> b!4536566 (= lt!1711539 Unit!97924)))

(assert (=> b!4536566 (forall!10330 (toList!4391 lt!1711529) lambda!175485)))

(declare-fun lt!1711525 () Unit!97630)

(declare-fun Unit!97925 () Unit!97630)

(assert (=> b!4536566 (= lt!1711525 Unit!97925)))

(declare-fun lt!1711528 () Unit!97630)

(declare-fun Unit!97926 () Unit!97630)

(assert (=> b!4536566 (= lt!1711528 Unit!97926)))

(declare-fun lt!1711541 () Unit!97630)

(assert (=> b!4536566 (= lt!1711541 (addForallContainsKeyThenBeforeAdding!359 (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1711527 (_1!28895 (h!56607 (_2!28896 (h!56608 (toList!4392 lt!1710432))))) (_2!28895 (h!56607 (_2!28896 (h!56608 (toList!4392 lt!1710432)))))))))

(assert (=> b!4536566 (forall!10330 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) lambda!175485)))

(declare-fun lt!1711533 () Unit!97630)

(assert (=> b!4536566 (= lt!1711533 lt!1711541)))

(assert (=> b!4536566 (forall!10330 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) lambda!175485)))

(declare-fun lt!1711531 () Unit!97630)

(declare-fun Unit!97927 () Unit!97630)

(assert (=> b!4536566 (= lt!1711531 Unit!97927)))

(declare-fun res!1890101 () Bool)

(declare-fun call!316303 () Bool)

(assert (=> b!4536566 (= res!1890101 call!316303)))

(declare-fun e!2826860 () Bool)

(assert (=> b!4536566 (=> (not res!1890101) (not e!2826860))))

(assert (=> b!4536566 e!2826860))

(declare-fun lt!1711534 () Unit!97630)

(declare-fun Unit!97928 () Unit!97630)

(assert (=> b!4536566 (= lt!1711534 Unit!97928)))

(declare-fun b!4536567 () Bool)

(declare-fun e!2826859 () Bool)

(assert (=> b!4536567 (= e!2826859 (invariantList!1039 (toList!4391 lt!1711538)))))

(declare-fun b!4536568 () Bool)

(declare-fun res!1890102 () Bool)

(assert (=> b!4536568 (=> (not res!1890102) (not e!2826859))))

(assert (=> b!4536568 (= res!1890102 (forall!10330 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) lambda!175486))))

(declare-fun bm!316298 () Bool)

(assert (=> bm!316298 (= call!316303 (forall!10330 (ite c!774771 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) (_2!28896 (h!56608 (toList!4392 lt!1710432)))) (ite c!774771 lambda!175482 lambda!175485)))))

(declare-fun b!4536570 () Bool)

(assert (=> b!4536570 (= e!2826860 call!316302)))

(assert (=> b!4536569 (= e!2826861 (extractMap!1248 (t!357819 (toList!4392 lt!1710432))))))

(declare-fun lt!1711537 () Unit!97630)

(assert (=> b!4536569 (= lt!1711537 call!316301)))

(assert (=> b!4536569 call!316302))

(declare-fun lt!1711543 () Unit!97630)

(assert (=> b!4536569 (= lt!1711543 lt!1711537)))

(assert (=> b!4536569 call!316303))

(declare-fun lt!1711542 () Unit!97630)

(declare-fun Unit!97929 () Unit!97630)

(assert (=> b!4536569 (= lt!1711542 Unit!97929)))

(assert (=> d!1401452 e!2826859))

(declare-fun res!1890103 () Bool)

(assert (=> d!1401452 (=> (not res!1890103) (not e!2826859))))

(assert (=> d!1401452 (= res!1890103 (forall!10330 (_2!28896 (h!56608 (toList!4392 lt!1710432))) lambda!175486))))

(assert (=> d!1401452 (= lt!1711538 e!2826861)))

(assert (=> d!1401452 (= c!774771 ((_ is Nil!50732) (_2!28896 (h!56608 (toList!4392 lt!1710432)))))))

(assert (=> d!1401452 (noDuplicateKeys!1192 (_2!28896 (h!56608 (toList!4392 lt!1710432))))))

(assert (=> d!1401452 (= (addToMapMapFromBucket!719 (_2!28896 (h!56608 (toList!4392 lt!1710432))) (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) lt!1711538)))

(assert (= (and d!1401452 c!774771) b!4536569))

(assert (= (and d!1401452 (not c!774771)) b!4536566))

(assert (= (and b!4536566 res!1890101) b!4536570))

(assert (= (or b!4536569 b!4536570) bm!316297))

(assert (= (or b!4536569 b!4536566) bm!316298))

(assert (= (or b!4536569 b!4536566) bm!316296))

(assert (= (and d!1401452 res!1890103) b!4536568))

(assert (= (and b!4536568 res!1890102) b!4536567))

(declare-fun m!5299365 () Bool)

(assert (=> b!4536567 m!5299365))

(declare-fun m!5299367 () Bool)

(assert (=> d!1401452 m!5299367))

(declare-fun m!5299369 () Bool)

(assert (=> d!1401452 m!5299369))

(declare-fun m!5299371 () Bool)

(assert (=> bm!316298 m!5299371))

(declare-fun m!5299373 () Bool)

(assert (=> b!4536566 m!5299373))

(declare-fun m!5299375 () Bool)

(assert (=> b!4536566 m!5299375))

(declare-fun m!5299377 () Bool)

(assert (=> b!4536566 m!5299377))

(declare-fun m!5299379 () Bool)

(assert (=> b!4536566 m!5299379))

(assert (=> b!4536566 m!5297229))

(declare-fun m!5299381 () Bool)

(assert (=> b!4536566 m!5299381))

(declare-fun m!5299383 () Bool)

(assert (=> b!4536566 m!5299383))

(declare-fun m!5299385 () Bool)

(assert (=> b!4536566 m!5299385))

(assert (=> b!4536566 m!5299373))

(declare-fun m!5299387 () Bool)

(assert (=> b!4536566 m!5299387))

(assert (=> b!4536566 m!5297229))

(assert (=> b!4536566 m!5299383))

(declare-fun m!5299389 () Bool)

(assert (=> b!4536566 m!5299389))

(declare-fun m!5299391 () Bool)

(assert (=> b!4536566 m!5299391))

(assert (=> b!4536566 m!5299375))

(declare-fun m!5299393 () Bool)

(assert (=> b!4536566 m!5299393))

(assert (=> bm!316296 m!5297229))

(declare-fun m!5299395 () Bool)

(assert (=> bm!316296 m!5299395))

(declare-fun m!5299397 () Bool)

(assert (=> bm!316297 m!5299397))

(declare-fun m!5299399 () Bool)

(assert (=> b!4536568 m!5299399))

(assert (=> b!4535480 d!1401452))

(declare-fun bs!873147 () Bool)

(declare-fun d!1401468 () Bool)

(assert (= bs!873147 (and d!1401468 d!1400702)))

(declare-fun lambda!175487 () Int)

(assert (=> bs!873147 (= lambda!175487 lambda!175303)))

(declare-fun bs!873148 () Bool)

(assert (= bs!873148 (and d!1401468 d!1400982)))

(assert (=> bs!873148 (= lambda!175487 lambda!175375)))

(declare-fun bs!873149 () Bool)

(assert (= bs!873149 (and d!1401468 d!1400794)))

(assert (=> bs!873149 (= lambda!175487 lambda!175332)))

(declare-fun bs!873150 () Bool)

(assert (= bs!873150 (and d!1401468 d!1400876)))

(assert (=> bs!873150 (= lambda!175487 lambda!175353)))

(declare-fun bs!873151 () Bool)

(assert (= bs!873151 (and d!1401468 b!4535199)))

(assert (=> bs!873151 (not (= lambda!175487 lambda!175214))))

(declare-fun bs!873152 () Bool)

(assert (= bs!873152 (and d!1401468 d!1400704)))

(assert (=> bs!873152 (not (= lambda!175487 lambda!175306))))

(declare-fun bs!873153 () Bool)

(assert (= bs!873153 (and d!1401468 d!1400786)))

(assert (=> bs!873153 (= lambda!175487 lambda!175330)))

(declare-fun bs!873154 () Bool)

(assert (= bs!873154 (and d!1401468 d!1400790)))

(assert (=> bs!873154 (= lambda!175487 lambda!175331)))

(declare-fun bs!873155 () Bool)

(assert (= bs!873155 (and d!1401468 d!1400748)))

(assert (=> bs!873155 (= lambda!175487 lambda!175316)))

(declare-fun bs!873156 () Bool)

(assert (= bs!873156 (and d!1401468 d!1400708)))

(assert (=> bs!873156 (= lambda!175487 lambda!175309)))

(declare-fun bs!873157 () Bool)

(assert (= bs!873157 (and d!1401468 d!1400898)))

(assert (=> bs!873157 (= lambda!175487 lambda!175364)))

(declare-fun bs!873158 () Bool)

(assert (= bs!873158 (and d!1401468 d!1400798)))

(assert (=> bs!873158 (= lambda!175487 lambda!175338)))

(declare-fun bs!873159 () Bool)

(assert (= bs!873159 (and d!1401468 d!1401212)))

(assert (=> bs!873159 (= lambda!175487 lambda!175435)))

(declare-fun bs!873160 () Bool)

(assert (= bs!873160 (and d!1401468 start!449928)))

(assert (=> bs!873160 (= lambda!175487 lambda!175213)))

(declare-fun bs!873161 () Bool)

(assert (= bs!873161 (and d!1401468 d!1400752)))

(assert (=> bs!873161 (= lambda!175487 lambda!175322)))

(declare-fun bs!873162 () Bool)

(assert (= bs!873162 (and d!1401468 d!1400854)))

(assert (=> bs!873162 (= lambda!175487 lambda!175348)))

(declare-fun bs!873163 () Bool)

(assert (= bs!873163 (and d!1401468 d!1400780)))

(assert (=> bs!873163 (= lambda!175487 lambda!175325)))

(declare-fun lt!1711560 () ListMap!3653)

(assert (=> d!1401468 (invariantList!1039 (toList!4391 lt!1711560))))

(declare-fun e!2826879 () ListMap!3653)

(assert (=> d!1401468 (= lt!1711560 e!2826879)))

(declare-fun c!774783 () Bool)

(assert (=> d!1401468 (= c!774783 ((_ is Cons!50733) (t!357819 (toList!4392 lt!1710432))))))

(assert (=> d!1401468 (forall!10329 (t!357819 (toList!4392 lt!1710432)) lambda!175487)))

(assert (=> d!1401468 (= (extractMap!1248 (t!357819 (toList!4392 lt!1710432))) lt!1711560)))

(declare-fun b!4536601 () Bool)

(assert (=> b!4536601 (= e!2826879 (addToMapMapFromBucket!719 (_2!28896 (h!56608 (t!357819 (toList!4392 lt!1710432)))) (extractMap!1248 (t!357819 (t!357819 (toList!4392 lt!1710432))))))))

(declare-fun b!4536602 () Bool)

(assert (=> b!4536602 (= e!2826879 (ListMap!3654 Nil!50732))))

(assert (= (and d!1401468 c!774783) b!4536601))

(assert (= (and d!1401468 (not c!774783)) b!4536602))

(declare-fun m!5299401 () Bool)

(assert (=> d!1401468 m!5299401))

(declare-fun m!5299403 () Bool)

(assert (=> d!1401468 m!5299403))

(declare-fun m!5299405 () Bool)

(assert (=> b!4536601 m!5299405))

(assert (=> b!4536601 m!5299405))

(declare-fun m!5299407 () Bool)

(assert (=> b!4536601 m!5299407))

(assert (=> b!4535480 d!1401468))

(declare-fun d!1401472 () Bool)

(declare-fun res!1890114 () Bool)

(declare-fun e!2826882 () Bool)

(assert (=> d!1401472 (=> res!1890114 e!2826882)))

(assert (=> d!1401472 (= res!1890114 (and ((_ is Cons!50732) (_2!28896 (h!56608 (toList!4392 lt!1710421)))) (= (_1!28895 (h!56607 (_2!28896 (h!56608 (toList!4392 lt!1710421))))) key!3287)))))

(assert (=> d!1401472 (= (containsKey!1856 (_2!28896 (h!56608 (toList!4392 lt!1710421))) key!3287) e!2826882)))

(declare-fun b!4536605 () Bool)

(declare-fun e!2826883 () Bool)

(assert (=> b!4536605 (= e!2826882 e!2826883)))

(declare-fun res!1890115 () Bool)

(assert (=> b!4536605 (=> (not res!1890115) (not e!2826883))))

(assert (=> b!4536605 (= res!1890115 ((_ is Cons!50732) (_2!28896 (h!56608 (toList!4392 lt!1710421)))))))

(declare-fun b!4536606 () Bool)

(assert (=> b!4536606 (= e!2826883 (containsKey!1856 (t!357818 (_2!28896 (h!56608 (toList!4392 lt!1710421)))) key!3287))))

(assert (= (and d!1401472 (not res!1890114)) b!4536605))

(assert (= (and b!4536605 res!1890115) b!4536606))

(declare-fun m!5299409 () Bool)

(assert (=> b!4536606 m!5299409))

(assert (=> b!4535491 d!1401472))

(declare-fun d!1401474 () Bool)

(declare-fun res!1890116 () Bool)

(declare-fun e!2826884 () Bool)

(assert (=> d!1401474 (=> res!1890116 e!2826884)))

(assert (=> d!1401474 (= res!1890116 (and ((_ is Cons!50732) (t!357818 lt!1710434)) (= (_1!28895 (h!56607 (t!357818 lt!1710434))) key!3287)))))

(assert (=> d!1401474 (= (containsKey!1856 (t!357818 lt!1710434) key!3287) e!2826884)))

(declare-fun b!4536607 () Bool)

(declare-fun e!2826885 () Bool)

(assert (=> b!4536607 (= e!2826884 e!2826885)))

(declare-fun res!1890117 () Bool)

(assert (=> b!4536607 (=> (not res!1890117) (not e!2826885))))

(assert (=> b!4536607 (= res!1890117 ((_ is Cons!50732) (t!357818 lt!1710434)))))

(declare-fun b!4536608 () Bool)

(assert (=> b!4536608 (= e!2826885 (containsKey!1856 (t!357818 (t!357818 lt!1710434)) key!3287))))

(assert (= (and d!1401474 (not res!1890116)) b!4536607))

(assert (= (and b!4536607 res!1890117) b!4536608))

(declare-fun m!5299415 () Bool)

(assert (=> b!4536608 m!5299415))

(assert (=> b!4535332 d!1401474))

(declare-fun d!1401478 () Bool)

(declare-fun lt!1711568 () Bool)

(assert (=> d!1401478 (= lt!1711568 (select (content!8421 e!2826186) key!3287))))

(declare-fun e!2826890 () Bool)

(assert (=> d!1401478 (= lt!1711568 e!2826890)))

(declare-fun res!1890122 () Bool)

(assert (=> d!1401478 (=> (not res!1890122) (not e!2826890))))

(assert (=> d!1401478 (= res!1890122 ((_ is Cons!50735) e!2826186))))

(assert (=> d!1401478 (= (contains!13515 e!2826186 key!3287) lt!1711568)))

(declare-fun b!4536618 () Bool)

(declare-fun e!2826891 () Bool)

(assert (=> b!4536618 (= e!2826890 e!2826891)))

(declare-fun res!1890121 () Bool)

(assert (=> b!4536618 (=> res!1890121 e!2826891)))

(assert (=> b!4536618 (= res!1890121 (= (h!56612 e!2826186) key!3287))))

(declare-fun b!4536619 () Bool)

(assert (=> b!4536619 (= e!2826891 (contains!13515 (t!357821 e!2826186) key!3287))))

(assert (= (and d!1401478 res!1890122) b!4536618))

(assert (= (and b!4536618 (not res!1890121)) b!4536619))

(declare-fun m!5299417 () Bool)

(assert (=> d!1401478 m!5299417))

(declare-fun m!5299419 () Bool)

(assert (=> d!1401478 m!5299419))

(declare-fun m!5299421 () Bool)

(assert (=> b!4536619 m!5299421))

(assert (=> bm!316190 d!1401478))

(declare-fun d!1401480 () Bool)

(declare-fun res!1890123 () Bool)

(declare-fun e!2826892 () Bool)

(assert (=> d!1401480 (=> res!1890123 e!2826892)))

(assert (=> d!1401480 (= res!1890123 (not ((_ is Cons!50732) (_2!28896 (h!56608 (toList!4392 lm!1477))))))))

(assert (=> d!1401480 (= (noDuplicateKeys!1192 (_2!28896 (h!56608 (toList!4392 lm!1477)))) e!2826892)))

(declare-fun b!4536620 () Bool)

(declare-fun e!2826893 () Bool)

(assert (=> b!4536620 (= e!2826892 e!2826893)))

(declare-fun res!1890124 () Bool)

(assert (=> b!4536620 (=> (not res!1890124) (not e!2826893))))

(assert (=> b!4536620 (= res!1890124 (not (containsKey!1856 (t!357818 (_2!28896 (h!56608 (toList!4392 lm!1477)))) (_1!28895 (h!56607 (_2!28896 (h!56608 (toList!4392 lm!1477))))))))))

(declare-fun b!4536621 () Bool)

(assert (=> b!4536621 (= e!2826893 (noDuplicateKeys!1192 (t!357818 (_2!28896 (h!56608 (toList!4392 lm!1477))))))))

(assert (= (and d!1401480 (not res!1890123)) b!4536620))

(assert (= (and b!4536620 res!1890124) b!4536621))

(declare-fun m!5299423 () Bool)

(assert (=> b!4536620 m!5299423))

(declare-fun m!5299425 () Bool)

(assert (=> b!4536621 m!5299425))

(assert (=> bs!871833 d!1401480))

(declare-fun d!1401482 () Bool)

(declare-fun res!1890129 () Bool)

(declare-fun e!2826898 () Bool)

(assert (=> d!1401482 (=> res!1890129 e!2826898)))

(assert (=> d!1401482 (= res!1890129 (and ((_ is Cons!50733) (toList!4392 lm!1477)) (= (_1!28896 (h!56608 (toList!4392 lm!1477))) lt!1710423)))))

(assert (=> d!1401482 (= (containsKey!1858 (toList!4392 lm!1477) lt!1710423) e!2826898)))

(declare-fun b!4536626 () Bool)

(declare-fun e!2826899 () Bool)

(assert (=> b!4536626 (= e!2826898 e!2826899)))

(declare-fun res!1890130 () Bool)

(assert (=> b!4536626 (=> (not res!1890130) (not e!2826899))))

(assert (=> b!4536626 (= res!1890130 (and (or (not ((_ is Cons!50733) (toList!4392 lm!1477))) (bvsle (_1!28896 (h!56608 (toList!4392 lm!1477))) lt!1710423)) ((_ is Cons!50733) (toList!4392 lm!1477)) (bvslt (_1!28896 (h!56608 (toList!4392 lm!1477))) lt!1710423)))))

(declare-fun b!4536627 () Bool)

(assert (=> b!4536627 (= e!2826899 (containsKey!1858 (t!357819 (toList!4392 lm!1477)) lt!1710423))))

(assert (= (and d!1401482 (not res!1890129)) b!4536626))

(assert (= (and b!4536626 res!1890130) b!4536627))

(declare-fun m!5299427 () Bool)

(assert (=> b!4536627 m!5299427))

(assert (=> d!1400862 d!1401482))

(declare-fun bs!873194 () Bool)

(declare-fun b!4536631 () Bool)

(assert (= bs!873194 (and b!4536631 b!4536566)))

(declare-fun lambda!175492 () Int)

(assert (=> bs!873194 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) (= lambda!175492 lambda!175483))))

(declare-fun bs!873195 () Bool)

(assert (= bs!873195 (and b!4536631 d!1400724)))

(assert (=> bs!873195 (not (= lambda!175492 lambda!175312))))

(declare-fun bs!873196 () Bool)

(assert (= bs!873196 (and b!4536631 b!4535309)))

(assert (=> bs!873196 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710578) (= lambda!175492 lambda!175267))))

(declare-fun bs!873198 () Bool)

(assert (= bs!873198 (and b!4536631 b!4535797)))

(assert (=> bs!873198 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710989) (= lambda!175492 lambda!175373))))

(declare-fun bs!873199 () Bool)

(assert (= bs!873199 (and b!4536631 b!4535625)))

(assert (=> bs!873199 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710415) (= lambda!175492 lambda!175349))))

(declare-fun bs!873201 () Bool)

(assert (= bs!873201 (and b!4536631 b!4535622)))

(assert (=> bs!873201 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710902) (= lambda!175492 lambda!175351))))

(declare-fun bs!873203 () Bool)

(assert (= bs!873203 (and b!4536631 b!4535669)))

(assert (=> bs!873203 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175492 lambda!175360))))

(declare-fun bs!873205 () Bool)

(assert (= bs!873205 (and b!4536631 b!4535542)))

(assert (=> bs!873205 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710840) (= lambda!175492 lambda!175341))))

(declare-fun bs!873207 () Bool)

(assert (= bs!873207 (and b!4536631 b!4536291)))

(assert (=> bs!873207 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1711317) (= lambda!175492 lambda!175439))))

(declare-fun bs!873209 () Bool)

(assert (= bs!873209 (and b!4536631 d!1401348)))

(assert (=> bs!873209 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710429) (= lambda!175492 lambda!175464))))

(declare-fun bs!873211 () Bool)

(assert (= bs!873211 (and b!4536631 b!4536264)))

(assert (=> bs!873211 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175492 lambda!175428))))

(declare-fun bs!873213 () Bool)

(assert (= bs!873213 (and b!4536631 b!4535832)))

(assert (=> bs!873213 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175492 lambda!175377))))

(declare-fun bs!873215 () Bool)

(assert (= bs!873215 (and b!4536631 d!1401018)))

(assert (=> bs!873215 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710902) (= lambda!175492 lambda!175389))))

(declare-fun bs!873217 () Bool)

(assert (= bs!873217 (and b!4536631 b!4536261)))

(assert (=> bs!873217 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175492 lambda!175429))))

(declare-fun bs!873219 () Bool)

(assert (= bs!873219 (and b!4536631 d!1400816)))

(assert (=> bs!873219 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710851) (= lambda!175492 lambda!175344))))

(assert (=> bs!873207 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175492 lambda!175438))))

(declare-fun bs!873222 () Bool)

(assert (= bs!873222 (and b!4536631 b!4536342)))

(assert (=> bs!873222 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) (-!418 lt!1710448 key!3287)) (= lambda!175492 lambda!175446))))

(declare-fun bs!873224 () Bool)

(assert (= bs!873224 (and b!4536631 d!1401276)))

(assert (=> bs!873224 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1711376) (= lambda!175492 lambda!175450))))

(declare-fun bs!873226 () Bool)

(assert (= bs!873226 (and b!4536631 b!4535666)))

(assert (=> bs!873226 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175492 lambda!175361))))

(declare-fun bs!873228 () Bool)

(assert (= bs!873228 (and b!4536631 b!4535829)))

(assert (=> bs!873228 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1711026) (= lambda!175492 lambda!175379))))

(assert (=> bs!873201 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710415) (= lambda!175492 lambda!175350))))

(declare-fun bs!873230 () Bool)

(assert (= bs!873230 (and b!4536631 d!1401188)))

(assert (=> bs!873230 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1711279) (= lambda!175492 lambda!175431))))

(declare-fun bs!873232 () Bool)

(assert (= bs!873232 (and b!4536631 b!4536294)))

(assert (=> bs!873232 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175492 lambda!175437))))

(assert (=> bs!873217 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1711268) (= lambda!175492 lambda!175430))))

(declare-fun bs!873235 () Bool)

(assert (= bs!873235 (and b!4536631 d!1400896)))

(assert (=> bs!873235 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710949) (= lambda!175492 lambda!175363))))

(assert (=> bs!873228 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175492 lambda!175378))))

(assert (=> bs!873198 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175492 lambda!175372))))

(declare-fun bs!873239 () Bool)

(assert (= bs!873239 (and b!4536631 d!1401452)))

(assert (=> bs!873239 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1711538) (= lambda!175492 lambda!175486))))

(declare-fun bs!873240 () Bool)

(assert (= bs!873240 (and b!4536631 d!1400874)))

(assert (=> bs!873240 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710913) (= lambda!175492 lambda!175352))))

(declare-fun bs!873242 () Bool)

(assert (= bs!873242 (and b!4536631 b!4536345)))

(assert (=> bs!873242 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) (-!418 lt!1710448 key!3287)) (= lambda!175492 lambda!175443))))

(declare-fun bs!873244 () Bool)

(assert (= bs!873244 (and b!4536631 b!4535199)))

(assert (=> bs!873244 (not (= lambda!175492 lambda!175215))))

(declare-fun bs!873245 () Bool)

(assert (= bs!873245 (and b!4536631 b!4535545)))

(assert (=> bs!873245 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710429) (= lambda!175492 lambda!175339))))

(assert (=> bs!873194 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1711527) (= lambda!175492 lambda!175485))))

(declare-fun bs!873247 () Bool)

(assert (= bs!873247 (and b!4536631 d!1401004)))

(assert (=> bs!873247 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1711037) (= lambda!175492 lambda!175380))))

(declare-fun bs!873248 () Bool)

(assert (= bs!873248 (and b!4536631 d!1401222)))

(assert (=> bs!873248 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1711328) (= lambda!175492 lambda!175440))))

(declare-fun bs!873250 () Bool)

(assert (= bs!873250 (and b!4536631 b!4535800)))

(assert (=> bs!873250 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175492 lambda!175371))))

(declare-fun bs!873252 () Bool)

(assert (= bs!873252 (and b!4536631 d!1401354)))

(assert (=> bs!873252 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710448) (= lambda!175492 lambda!175466))))

(assert (=> bs!873205 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710429) (= lambda!175492 lambda!175340))))

(assert (=> bs!873222 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1711365) (= lambda!175492 lambda!175447))))

(declare-fun bs!873254 () Bool)

(assert (= bs!873254 (and b!4536631 b!4536569)))

(assert (=> bs!873254 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) (= lambda!175492 lambda!175482))))

(declare-fun bs!873255 () Bool)

(assert (= bs!873255 (and b!4536631 d!1400980)))

(assert (=> bs!873255 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1711000) (= lambda!175492 lambda!175374))))

(declare-fun bs!873256 () Bool)

(assert (= bs!873256 (and b!4536631 d!1400628)))

(assert (=> bs!873256 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710589) (= lambda!175492 lambda!175268))))

(assert (=> bs!873196 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710448) (= lambda!175492 lambda!175266))))

(declare-fun bs!873257 () Bool)

(assert (= bs!873257 (and b!4536631 b!4535312)))

(assert (=> bs!873257 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710448) (= lambda!175492 lambda!175265))))

(declare-fun bs!873258 () Bool)

(assert (= bs!873258 (and b!4536631 d!1401418)))

(assert (=> bs!873258 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710415) (= lambda!175492 lambda!175476))))

(assert (=> bs!873226 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710938) (= lambda!175492 lambda!175362))))

(assert (=> b!4536631 true))

(declare-fun bs!873260 () Bool)

(declare-fun b!4536628 () Bool)

(assert (= bs!873260 (and b!4536628 b!4536566)))

(declare-fun lambda!175494 () Int)

(assert (=> bs!873260 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) (= lambda!175494 lambda!175483))))

(declare-fun bs!873261 () Bool)

(assert (= bs!873261 (and b!4536628 d!1400724)))

(assert (=> bs!873261 (not (= lambda!175494 lambda!175312))))

(declare-fun bs!873262 () Bool)

(assert (= bs!873262 (and b!4536628 b!4535309)))

(assert (=> bs!873262 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710578) (= lambda!175494 lambda!175267))))

(declare-fun bs!873263 () Bool)

(assert (= bs!873263 (and b!4536628 b!4535797)))

(assert (=> bs!873263 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710989) (= lambda!175494 lambda!175373))))

(declare-fun bs!873264 () Bool)

(assert (= bs!873264 (and b!4536628 b!4535625)))

(assert (=> bs!873264 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710415) (= lambda!175494 lambda!175349))))

(declare-fun bs!873265 () Bool)

(assert (= bs!873265 (and b!4536628 b!4535622)))

(assert (=> bs!873265 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710902) (= lambda!175494 lambda!175351))))

(declare-fun bs!873266 () Bool)

(assert (= bs!873266 (and b!4536628 b!4536631)))

(assert (=> bs!873266 (= lambda!175494 lambda!175492)))

(declare-fun bs!873267 () Bool)

(assert (= bs!873267 (and b!4536628 b!4535669)))

(assert (=> bs!873267 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175494 lambda!175360))))

(declare-fun bs!873268 () Bool)

(assert (= bs!873268 (and b!4536628 b!4535542)))

(assert (=> bs!873268 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710840) (= lambda!175494 lambda!175341))))

(declare-fun bs!873269 () Bool)

(assert (= bs!873269 (and b!4536628 b!4536291)))

(assert (=> bs!873269 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1711317) (= lambda!175494 lambda!175439))))

(declare-fun bs!873270 () Bool)

(assert (= bs!873270 (and b!4536628 d!1401348)))

(assert (=> bs!873270 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710429) (= lambda!175494 lambda!175464))))

(declare-fun bs!873271 () Bool)

(assert (= bs!873271 (and b!4536628 b!4536264)))

(assert (=> bs!873271 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175494 lambda!175428))))

(declare-fun bs!873272 () Bool)

(assert (= bs!873272 (and b!4536628 b!4535832)))

(assert (=> bs!873272 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175494 lambda!175377))))

(declare-fun bs!873273 () Bool)

(assert (= bs!873273 (and b!4536628 d!1401018)))

(assert (=> bs!873273 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710902) (= lambda!175494 lambda!175389))))

(declare-fun bs!873274 () Bool)

(assert (= bs!873274 (and b!4536628 b!4536261)))

(assert (=> bs!873274 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175494 lambda!175429))))

(declare-fun bs!873275 () Bool)

(assert (= bs!873275 (and b!4536628 d!1400816)))

(assert (=> bs!873275 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710851) (= lambda!175494 lambda!175344))))

(assert (=> bs!873269 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175494 lambda!175438))))

(declare-fun bs!873276 () Bool)

(assert (= bs!873276 (and b!4536628 b!4536342)))

(assert (=> bs!873276 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) (-!418 lt!1710448 key!3287)) (= lambda!175494 lambda!175446))))

(declare-fun bs!873277 () Bool)

(assert (= bs!873277 (and b!4536628 d!1401276)))

(assert (=> bs!873277 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1711376) (= lambda!175494 lambda!175450))))

(declare-fun bs!873278 () Bool)

(assert (= bs!873278 (and b!4536628 b!4535666)))

(assert (=> bs!873278 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175494 lambda!175361))))

(declare-fun bs!873279 () Bool)

(assert (= bs!873279 (and b!4536628 b!4535829)))

(assert (=> bs!873279 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1711026) (= lambda!175494 lambda!175379))))

(assert (=> bs!873265 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710415) (= lambda!175494 lambda!175350))))

(declare-fun bs!873280 () Bool)

(assert (= bs!873280 (and b!4536628 d!1401188)))

(assert (=> bs!873280 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1711279) (= lambda!175494 lambda!175431))))

(declare-fun bs!873281 () Bool)

(assert (= bs!873281 (and b!4536628 b!4536294)))

(assert (=> bs!873281 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175494 lambda!175437))))

(assert (=> bs!873274 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1711268) (= lambda!175494 lambda!175430))))

(declare-fun bs!873282 () Bool)

(assert (= bs!873282 (and b!4536628 d!1400896)))

(assert (=> bs!873282 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710949) (= lambda!175494 lambda!175363))))

(assert (=> bs!873279 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175494 lambda!175378))))

(assert (=> bs!873263 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175494 lambda!175372))))

(declare-fun bs!873283 () Bool)

(assert (= bs!873283 (and b!4536628 d!1401452)))

(assert (=> bs!873283 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1711538) (= lambda!175494 lambda!175486))))

(declare-fun bs!873284 () Bool)

(assert (= bs!873284 (and b!4536628 d!1400874)))

(assert (=> bs!873284 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710913) (= lambda!175494 lambda!175352))))

(declare-fun bs!873285 () Bool)

(assert (= bs!873285 (and b!4536628 b!4536345)))

(assert (=> bs!873285 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) (-!418 lt!1710448 key!3287)) (= lambda!175494 lambda!175443))))

(declare-fun bs!873286 () Bool)

(assert (= bs!873286 (and b!4536628 b!4535199)))

(assert (=> bs!873286 (not (= lambda!175494 lambda!175215))))

(declare-fun bs!873287 () Bool)

(assert (= bs!873287 (and b!4536628 b!4535545)))

(assert (=> bs!873287 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710429) (= lambda!175494 lambda!175339))))

(assert (=> bs!873260 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1711527) (= lambda!175494 lambda!175485))))

(declare-fun bs!873288 () Bool)

(assert (= bs!873288 (and b!4536628 d!1401004)))

(assert (=> bs!873288 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1711037) (= lambda!175494 lambda!175380))))

(declare-fun bs!873289 () Bool)

(assert (= bs!873289 (and b!4536628 d!1401222)))

(assert (=> bs!873289 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1711328) (= lambda!175494 lambda!175440))))

(declare-fun bs!873290 () Bool)

(assert (= bs!873290 (and b!4536628 b!4535800)))

(assert (=> bs!873290 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175494 lambda!175371))))

(declare-fun bs!873291 () Bool)

(assert (= bs!873291 (and b!4536628 d!1401354)))

(assert (=> bs!873291 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710448) (= lambda!175494 lambda!175466))))

(assert (=> bs!873268 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710429) (= lambda!175494 lambda!175340))))

(assert (=> bs!873276 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1711365) (= lambda!175494 lambda!175447))))

(declare-fun bs!873292 () Bool)

(assert (= bs!873292 (and b!4536628 b!4536569)))

(assert (=> bs!873292 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) (= lambda!175494 lambda!175482))))

(declare-fun bs!873293 () Bool)

(assert (= bs!873293 (and b!4536628 d!1400980)))

(assert (=> bs!873293 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1711000) (= lambda!175494 lambda!175374))))

(declare-fun bs!873294 () Bool)

(assert (= bs!873294 (and b!4536628 d!1400628)))

(assert (=> bs!873294 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710589) (= lambda!175494 lambda!175268))))

(assert (=> bs!873262 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710448) (= lambda!175494 lambda!175266))))

(declare-fun bs!873295 () Bool)

(assert (= bs!873295 (and b!4536628 b!4535312)))

(assert (=> bs!873295 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710448) (= lambda!175494 lambda!175265))))

(declare-fun bs!873296 () Bool)

(assert (= bs!873296 (and b!4536628 d!1401418)))

(assert (=> bs!873296 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710415) (= lambda!175494 lambda!175476))))

(assert (=> bs!873278 (= (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1710938) (= lambda!175494 lambda!175362))))

(assert (=> b!4536628 true))

(declare-fun lt!1711572 () ListMap!3653)

(declare-fun lambda!175495 () Int)

(assert (=> bs!873260 (= (= lt!1711572 (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) (= lambda!175495 lambda!175483))))

(assert (=> bs!873261 (not (= lambda!175495 lambda!175312))))

(assert (=> bs!873262 (= (= lt!1711572 lt!1710578) (= lambda!175495 lambda!175267))))

(assert (=> bs!873263 (= (= lt!1711572 lt!1710989) (= lambda!175495 lambda!175373))))

(assert (=> bs!873264 (= (= lt!1711572 lt!1710415) (= lambda!175495 lambda!175349))))

(assert (=> bs!873265 (= (= lt!1711572 lt!1710902) (= lambda!175495 lambda!175351))))

(assert (=> bs!873267 (= (= lt!1711572 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175495 lambda!175360))))

(assert (=> bs!873268 (= (= lt!1711572 lt!1710840) (= lambda!175495 lambda!175341))))

(assert (=> bs!873269 (= (= lt!1711572 lt!1711317) (= lambda!175495 lambda!175439))))

(assert (=> bs!873270 (= (= lt!1711572 lt!1710429) (= lambda!175495 lambda!175464))))

(assert (=> bs!873271 (= (= lt!1711572 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175495 lambda!175428))))

(assert (=> bs!873272 (= (= lt!1711572 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175495 lambda!175377))))

(assert (=> bs!873273 (= (= lt!1711572 lt!1710902) (= lambda!175495 lambda!175389))))

(assert (=> bs!873274 (= (= lt!1711572 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175495 lambda!175429))))

(assert (=> bs!873275 (= (= lt!1711572 lt!1710851) (= lambda!175495 lambda!175344))))

(assert (=> bs!873269 (= (= lt!1711572 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175495 lambda!175438))))

(assert (=> bs!873276 (= (= lt!1711572 (-!418 lt!1710448 key!3287)) (= lambda!175495 lambda!175446))))

(assert (=> bs!873277 (= (= lt!1711572 lt!1711376) (= lambda!175495 lambda!175450))))

(assert (=> bs!873278 (= (= lt!1711572 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175495 lambda!175361))))

(assert (=> bs!873279 (= (= lt!1711572 lt!1711026) (= lambda!175495 lambda!175379))))

(assert (=> bs!873265 (= (= lt!1711572 lt!1710415) (= lambda!175495 lambda!175350))))

(assert (=> bs!873280 (= (= lt!1711572 lt!1711279) (= lambda!175495 lambda!175431))))

(assert (=> bs!873281 (= (= lt!1711572 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175495 lambda!175437))))

(assert (=> bs!873274 (= (= lt!1711572 lt!1711268) (= lambda!175495 lambda!175430))))

(assert (=> bs!873282 (= (= lt!1711572 lt!1710949) (= lambda!175495 lambda!175363))))

(assert (=> bs!873279 (= (= lt!1711572 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175495 lambda!175378))))

(assert (=> bs!873263 (= (= lt!1711572 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175495 lambda!175372))))

(assert (=> bs!873283 (= (= lt!1711572 lt!1711538) (= lambda!175495 lambda!175486))))

(assert (=> bs!873284 (= (= lt!1711572 lt!1710913) (= lambda!175495 lambda!175352))))

(assert (=> bs!873285 (= (= lt!1711572 (-!418 lt!1710448 key!3287)) (= lambda!175495 lambda!175443))))

(assert (=> bs!873286 (not (= lambda!175495 lambda!175215))))

(assert (=> bs!873287 (= (= lt!1711572 lt!1710429) (= lambda!175495 lambda!175339))))

(assert (=> bs!873266 (= (= lt!1711572 (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477))))) (= lambda!175495 lambda!175492))))

(assert (=> b!4536628 (= (= lt!1711572 (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477))))) (= lambda!175495 lambda!175494))))

(assert (=> bs!873260 (= (= lt!1711572 lt!1711527) (= lambda!175495 lambda!175485))))

(assert (=> bs!873288 (= (= lt!1711572 lt!1711037) (= lambda!175495 lambda!175380))))

(assert (=> bs!873289 (= (= lt!1711572 lt!1711328) (= lambda!175495 lambda!175440))))

(assert (=> bs!873290 (= (= lt!1711572 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175495 lambda!175371))))

(assert (=> bs!873291 (= (= lt!1711572 lt!1710448) (= lambda!175495 lambda!175466))))

(assert (=> bs!873268 (= (= lt!1711572 lt!1710429) (= lambda!175495 lambda!175340))))

(assert (=> bs!873276 (= (= lt!1711572 lt!1711365) (= lambda!175495 lambda!175447))))

(assert (=> bs!873292 (= (= lt!1711572 (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) (= lambda!175495 lambda!175482))))

(assert (=> bs!873293 (= (= lt!1711572 lt!1711000) (= lambda!175495 lambda!175374))))

(assert (=> bs!873294 (= (= lt!1711572 lt!1710589) (= lambda!175495 lambda!175268))))

(assert (=> bs!873262 (= (= lt!1711572 lt!1710448) (= lambda!175495 lambda!175266))))

(assert (=> bs!873295 (= (= lt!1711572 lt!1710448) (= lambda!175495 lambda!175265))))

(assert (=> bs!873296 (= (= lt!1711572 lt!1710415) (= lambda!175495 lambda!175476))))

(assert (=> bs!873278 (= (= lt!1711572 lt!1710938) (= lambda!175495 lambda!175362))))

(assert (=> b!4536628 true))

(declare-fun bs!873297 () Bool)

(declare-fun d!1401484 () Bool)

(assert (= bs!873297 (and d!1401484 b!4536628)))

(declare-fun lambda!175496 () Int)

(declare-fun lt!1711583 () ListMap!3653)

(assert (=> bs!873297 (= (= lt!1711583 lt!1711572) (= lambda!175496 lambda!175495))))

(declare-fun bs!873298 () Bool)

(assert (= bs!873298 (and d!1401484 b!4536566)))

(assert (=> bs!873298 (= (= lt!1711583 (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) (= lambda!175496 lambda!175483))))

(declare-fun bs!873299 () Bool)

(assert (= bs!873299 (and d!1401484 d!1400724)))

(assert (=> bs!873299 (not (= lambda!175496 lambda!175312))))

(declare-fun bs!873300 () Bool)

(assert (= bs!873300 (and d!1401484 b!4535309)))

(assert (=> bs!873300 (= (= lt!1711583 lt!1710578) (= lambda!175496 lambda!175267))))

(declare-fun bs!873301 () Bool)

(assert (= bs!873301 (and d!1401484 b!4535797)))

(assert (=> bs!873301 (= (= lt!1711583 lt!1710989) (= lambda!175496 lambda!175373))))

(declare-fun bs!873302 () Bool)

(assert (= bs!873302 (and d!1401484 b!4535625)))

(assert (=> bs!873302 (= (= lt!1711583 lt!1710415) (= lambda!175496 lambda!175349))))

(declare-fun bs!873303 () Bool)

(assert (= bs!873303 (and d!1401484 b!4535622)))

(assert (=> bs!873303 (= (= lt!1711583 lt!1710902) (= lambda!175496 lambda!175351))))

(declare-fun bs!873304 () Bool)

(assert (= bs!873304 (and d!1401484 b!4535669)))

(assert (=> bs!873304 (= (= lt!1711583 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175496 lambda!175360))))

(declare-fun bs!873305 () Bool)

(assert (= bs!873305 (and d!1401484 b!4535542)))

(assert (=> bs!873305 (= (= lt!1711583 lt!1710840) (= lambda!175496 lambda!175341))))

(declare-fun bs!873306 () Bool)

(assert (= bs!873306 (and d!1401484 b!4536291)))

(assert (=> bs!873306 (= (= lt!1711583 lt!1711317) (= lambda!175496 lambda!175439))))

(declare-fun bs!873307 () Bool)

(assert (= bs!873307 (and d!1401484 d!1401348)))

(assert (=> bs!873307 (= (= lt!1711583 lt!1710429) (= lambda!175496 lambda!175464))))

(declare-fun bs!873308 () Bool)

(assert (= bs!873308 (and d!1401484 b!4536264)))

(assert (=> bs!873308 (= (= lt!1711583 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175496 lambda!175428))))

(declare-fun bs!873309 () Bool)

(assert (= bs!873309 (and d!1401484 b!4535832)))

(assert (=> bs!873309 (= (= lt!1711583 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175496 lambda!175377))))

(declare-fun bs!873310 () Bool)

(assert (= bs!873310 (and d!1401484 d!1401018)))

(assert (=> bs!873310 (= (= lt!1711583 lt!1710902) (= lambda!175496 lambda!175389))))

(declare-fun bs!873311 () Bool)

(assert (= bs!873311 (and d!1401484 b!4536261)))

(assert (=> bs!873311 (= (= lt!1711583 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175496 lambda!175429))))

(declare-fun bs!873312 () Bool)

(assert (= bs!873312 (and d!1401484 d!1400816)))

(assert (=> bs!873312 (= (= lt!1711583 lt!1710851) (= lambda!175496 lambda!175344))))

(assert (=> bs!873306 (= (= lt!1711583 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175496 lambda!175438))))

(declare-fun bs!873313 () Bool)

(assert (= bs!873313 (and d!1401484 b!4536342)))

(assert (=> bs!873313 (= (= lt!1711583 (-!418 lt!1710448 key!3287)) (= lambda!175496 lambda!175446))))

(declare-fun bs!873314 () Bool)

(assert (= bs!873314 (and d!1401484 d!1401276)))

(assert (=> bs!873314 (= (= lt!1711583 lt!1711376) (= lambda!175496 lambda!175450))))

(declare-fun bs!873315 () Bool)

(assert (= bs!873315 (and d!1401484 b!4535666)))

(assert (=> bs!873315 (= (= lt!1711583 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175496 lambda!175361))))

(declare-fun bs!873316 () Bool)

(assert (= bs!873316 (and d!1401484 b!4535829)))

(assert (=> bs!873316 (= (= lt!1711583 lt!1711026) (= lambda!175496 lambda!175379))))

(assert (=> bs!873303 (= (= lt!1711583 lt!1710415) (= lambda!175496 lambda!175350))))

(declare-fun bs!873318 () Bool)

(assert (= bs!873318 (and d!1401484 d!1401188)))

(assert (=> bs!873318 (= (= lt!1711583 lt!1711279) (= lambda!175496 lambda!175431))))

(declare-fun bs!873320 () Bool)

(assert (= bs!873320 (and d!1401484 b!4536294)))

(assert (=> bs!873320 (= (= lt!1711583 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175496 lambda!175437))))

(assert (=> bs!873311 (= (= lt!1711583 lt!1711268) (= lambda!175496 lambda!175430))))

(declare-fun bs!873323 () Bool)

(assert (= bs!873323 (and d!1401484 d!1400896)))

(assert (=> bs!873323 (= (= lt!1711583 lt!1710949) (= lambda!175496 lambda!175363))))

(assert (=> bs!873316 (= (= lt!1711583 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175496 lambda!175378))))

(assert (=> bs!873301 (= (= lt!1711583 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175496 lambda!175372))))

(declare-fun bs!873326 () Bool)

(assert (= bs!873326 (and d!1401484 d!1401452)))

(assert (=> bs!873326 (= (= lt!1711583 lt!1711538) (= lambda!175496 lambda!175486))))

(declare-fun bs!873328 () Bool)

(assert (= bs!873328 (and d!1401484 d!1400874)))

(assert (=> bs!873328 (= (= lt!1711583 lt!1710913) (= lambda!175496 lambda!175352))))

(declare-fun bs!873330 () Bool)

(assert (= bs!873330 (and d!1401484 b!4536345)))

(assert (=> bs!873330 (= (= lt!1711583 (-!418 lt!1710448 key!3287)) (= lambda!175496 lambda!175443))))

(declare-fun bs!873332 () Bool)

(assert (= bs!873332 (and d!1401484 b!4535199)))

(assert (=> bs!873332 (not (= lambda!175496 lambda!175215))))

(declare-fun bs!873334 () Bool)

(assert (= bs!873334 (and d!1401484 b!4535545)))

(assert (=> bs!873334 (= (= lt!1711583 lt!1710429) (= lambda!175496 lambda!175339))))

(declare-fun bs!873336 () Bool)

(assert (= bs!873336 (and d!1401484 b!4536631)))

(assert (=> bs!873336 (= (= lt!1711583 (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477))))) (= lambda!175496 lambda!175492))))

(assert (=> bs!873297 (= (= lt!1711583 (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477))))) (= lambda!175496 lambda!175494))))

(assert (=> bs!873298 (= (= lt!1711583 lt!1711527) (= lambda!175496 lambda!175485))))

(declare-fun bs!873340 () Bool)

(assert (= bs!873340 (and d!1401484 d!1401004)))

(assert (=> bs!873340 (= (= lt!1711583 lt!1711037) (= lambda!175496 lambda!175380))))

(declare-fun bs!873342 () Bool)

(assert (= bs!873342 (and d!1401484 d!1401222)))

(assert (=> bs!873342 (= (= lt!1711583 lt!1711328) (= lambda!175496 lambda!175440))))

(declare-fun bs!873343 () Bool)

(assert (= bs!873343 (and d!1401484 b!4535800)))

(assert (=> bs!873343 (= (= lt!1711583 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175496 lambda!175371))))

(declare-fun bs!873345 () Bool)

(assert (= bs!873345 (and d!1401484 d!1401354)))

(assert (=> bs!873345 (= (= lt!1711583 lt!1710448) (= lambda!175496 lambda!175466))))

(assert (=> bs!873305 (= (= lt!1711583 lt!1710429) (= lambda!175496 lambda!175340))))

(assert (=> bs!873313 (= (= lt!1711583 lt!1711365) (= lambda!175496 lambda!175447))))

(declare-fun bs!873348 () Bool)

(assert (= bs!873348 (and d!1401484 b!4536569)))

(assert (=> bs!873348 (= (= lt!1711583 (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) (= lambda!175496 lambda!175482))))

(declare-fun bs!873350 () Bool)

(assert (= bs!873350 (and d!1401484 d!1400980)))

(assert (=> bs!873350 (= (= lt!1711583 lt!1711000) (= lambda!175496 lambda!175374))))

(declare-fun bs!873352 () Bool)

(assert (= bs!873352 (and d!1401484 d!1400628)))

(assert (=> bs!873352 (= (= lt!1711583 lt!1710589) (= lambda!175496 lambda!175268))))

(assert (=> bs!873300 (= (= lt!1711583 lt!1710448) (= lambda!175496 lambda!175266))))

(declare-fun bs!873355 () Bool)

(assert (= bs!873355 (and d!1401484 b!4535312)))

(assert (=> bs!873355 (= (= lt!1711583 lt!1710448) (= lambda!175496 lambda!175265))))

(declare-fun bs!873356 () Bool)

(assert (= bs!873356 (and d!1401484 d!1401418)))

(assert (=> bs!873356 (= (= lt!1711583 lt!1710415) (= lambda!175496 lambda!175476))))

(assert (=> bs!873315 (= (= lt!1711583 lt!1710938) (= lambda!175496 lambda!175362))))

(assert (=> d!1401484 true))

(declare-fun bm!316303 () Bool)

(declare-fun call!316308 () Unit!97630)

(assert (=> bm!316303 (= call!316308 (lemmaContainsAllItsOwnKeys!359 (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477))))))))

(declare-fun bm!316304 () Bool)

(declare-fun c!774787 () Bool)

(declare-fun call!316309 () Bool)

(assert (=> bm!316304 (= call!316309 (forall!10330 (toList!4391 (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477))))) (ite c!774787 lambda!175492 lambda!175495)))))

(declare-fun e!2826902 () ListMap!3653)

(assert (=> b!4536628 (= e!2826902 lt!1711572)))

(declare-fun lt!1711574 () ListMap!3653)

(assert (=> b!4536628 (= lt!1711574 (+!1593 (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) (h!56607 (_2!28896 (h!56608 (t!357819 (toList!4392 lm!1477)))))))))

(assert (=> b!4536628 (= lt!1711572 (addToMapMapFromBucket!719 (t!357818 (_2!28896 (h!56608 (t!357819 (toList!4392 lm!1477))))) (+!1593 (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) (h!56607 (_2!28896 (h!56608 (t!357819 (toList!4392 lm!1477))))))))))

(declare-fun lt!1711585 () Unit!97630)

(assert (=> b!4536628 (= lt!1711585 call!316308)))

(assert (=> b!4536628 (forall!10330 (toList!4391 (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477))))) lambda!175494)))

(declare-fun lt!1711580 () Unit!97630)

(assert (=> b!4536628 (= lt!1711580 lt!1711585)))

(assert (=> b!4536628 (forall!10330 (toList!4391 lt!1711574) lambda!175495)))

(declare-fun lt!1711575 () Unit!97630)

(declare-fun Unit!97932 () Unit!97630)

(assert (=> b!4536628 (= lt!1711575 Unit!97932)))

(assert (=> b!4536628 (forall!10330 (t!357818 (_2!28896 (h!56608 (t!357819 (toList!4392 lm!1477))))) lambda!175495)))

(declare-fun lt!1711577 () Unit!97630)

(declare-fun Unit!97933 () Unit!97630)

(assert (=> b!4536628 (= lt!1711577 Unit!97933)))

(declare-fun lt!1711571 () Unit!97630)

(declare-fun Unit!97934 () Unit!97630)

(assert (=> b!4536628 (= lt!1711571 Unit!97934)))

(declare-fun lt!1711589 () Unit!97630)

(assert (=> b!4536628 (= lt!1711589 (forallContained!2591 (toList!4391 lt!1711574) lambda!175495 (h!56607 (_2!28896 (h!56608 (t!357819 (toList!4392 lm!1477)))))))))

(assert (=> b!4536628 (contains!13513 lt!1711574 (_1!28895 (h!56607 (_2!28896 (h!56608 (t!357819 (toList!4392 lm!1477)))))))))

(declare-fun lt!1711569 () Unit!97630)

(declare-fun Unit!97935 () Unit!97630)

(assert (=> b!4536628 (= lt!1711569 Unit!97935)))

(assert (=> b!4536628 (contains!13513 lt!1711572 (_1!28895 (h!56607 (_2!28896 (h!56608 (t!357819 (toList!4392 lm!1477)))))))))

(declare-fun lt!1711581 () Unit!97630)

(declare-fun Unit!97936 () Unit!97630)

(assert (=> b!4536628 (= lt!1711581 Unit!97936)))

(assert (=> b!4536628 (forall!10330 (_2!28896 (h!56608 (t!357819 (toList!4392 lm!1477)))) lambda!175495)))

(declare-fun lt!1711584 () Unit!97630)

(declare-fun Unit!97937 () Unit!97630)

(assert (=> b!4536628 (= lt!1711584 Unit!97937)))

(assert (=> b!4536628 (forall!10330 (toList!4391 lt!1711574) lambda!175495)))

(declare-fun lt!1711570 () Unit!97630)

(declare-fun Unit!97938 () Unit!97630)

(assert (=> b!4536628 (= lt!1711570 Unit!97938)))

(declare-fun lt!1711573 () Unit!97630)

(declare-fun Unit!97939 () Unit!97630)

(assert (=> b!4536628 (= lt!1711573 Unit!97939)))

(declare-fun lt!1711586 () Unit!97630)

(assert (=> b!4536628 (= lt!1711586 (addForallContainsKeyThenBeforeAdding!359 (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1711572 (_1!28895 (h!56607 (_2!28896 (h!56608 (t!357819 (toList!4392 lm!1477)))))) (_2!28895 (h!56607 (_2!28896 (h!56608 (t!357819 (toList!4392 lm!1477))))))))))

(assert (=> b!4536628 (forall!10330 (toList!4391 (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477))))) lambda!175495)))

(declare-fun lt!1711578 () Unit!97630)

(assert (=> b!4536628 (= lt!1711578 lt!1711586)))

(assert (=> b!4536628 (forall!10330 (toList!4391 (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477))))) lambda!175495)))

(declare-fun lt!1711576 () Unit!97630)

(declare-fun Unit!97940 () Unit!97630)

(assert (=> b!4536628 (= lt!1711576 Unit!97940)))

(declare-fun res!1890131 () Bool)

(declare-fun call!316310 () Bool)

(assert (=> b!4536628 (= res!1890131 call!316310)))

(declare-fun e!2826901 () Bool)

(assert (=> b!4536628 (=> (not res!1890131) (not e!2826901))))

(assert (=> b!4536628 e!2826901))

(declare-fun lt!1711579 () Unit!97630)

(declare-fun Unit!97941 () Unit!97630)

(assert (=> b!4536628 (= lt!1711579 Unit!97941)))

(declare-fun b!4536629 () Bool)

(declare-fun e!2826900 () Bool)

(assert (=> b!4536629 (= e!2826900 (invariantList!1039 (toList!4391 lt!1711583)))))

(declare-fun b!4536630 () Bool)

(declare-fun res!1890132 () Bool)

(assert (=> b!4536630 (=> (not res!1890132) (not e!2826900))))

(assert (=> b!4536630 (= res!1890132 (forall!10330 (toList!4391 (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477))))) lambda!175496))))

(declare-fun bm!316305 () Bool)

(assert (=> bm!316305 (= call!316310 (forall!10330 (ite c!774787 (toList!4391 (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477))))) (_2!28896 (h!56608 (t!357819 (toList!4392 lm!1477))))) (ite c!774787 lambda!175492 lambda!175495)))))

(declare-fun b!4536632 () Bool)

(assert (=> b!4536632 (= e!2826901 call!316309)))

(assert (=> b!4536631 (= e!2826902 (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))))))

(declare-fun lt!1711582 () Unit!97630)

(assert (=> b!4536631 (= lt!1711582 call!316308)))

(assert (=> b!4536631 call!316309))

(declare-fun lt!1711588 () Unit!97630)

(assert (=> b!4536631 (= lt!1711588 lt!1711582)))

(assert (=> b!4536631 call!316310))

(declare-fun lt!1711587 () Unit!97630)

(declare-fun Unit!97942 () Unit!97630)

(assert (=> b!4536631 (= lt!1711587 Unit!97942)))

(assert (=> d!1401484 e!2826900))

(declare-fun res!1890133 () Bool)

(assert (=> d!1401484 (=> (not res!1890133) (not e!2826900))))

(assert (=> d!1401484 (= res!1890133 (forall!10330 (_2!28896 (h!56608 (t!357819 (toList!4392 lm!1477)))) lambda!175496))))

(assert (=> d!1401484 (= lt!1711583 e!2826902)))

(assert (=> d!1401484 (= c!774787 ((_ is Nil!50732) (_2!28896 (h!56608 (t!357819 (toList!4392 lm!1477))))))))

(assert (=> d!1401484 (noDuplicateKeys!1192 (_2!28896 (h!56608 (t!357819 (toList!4392 lm!1477)))))))

(assert (=> d!1401484 (= (addToMapMapFromBucket!719 (_2!28896 (h!56608 (t!357819 (toList!4392 lm!1477)))) (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477))))) lt!1711583)))

(assert (= (and d!1401484 c!774787) b!4536631))

(assert (= (and d!1401484 (not c!774787)) b!4536628))

(assert (= (and b!4536628 res!1890131) b!4536632))

(assert (= (or b!4536631 b!4536632) bm!316304))

(assert (= (or b!4536631 b!4536628) bm!316305))

(assert (= (or b!4536631 b!4536628) bm!316303))

(assert (= (and d!1401484 res!1890133) b!4536630))

(assert (= (and b!4536630 res!1890132) b!4536629))

(declare-fun m!5299577 () Bool)

(assert (=> b!4536629 m!5299577))

(declare-fun m!5299579 () Bool)

(assert (=> d!1401484 m!5299579))

(declare-fun m!5299581 () Bool)

(assert (=> d!1401484 m!5299581))

(declare-fun m!5299583 () Bool)

(assert (=> bm!316305 m!5299583))

(declare-fun m!5299585 () Bool)

(assert (=> b!4536628 m!5299585))

(declare-fun m!5299587 () Bool)

(assert (=> b!4536628 m!5299587))

(declare-fun m!5299589 () Bool)

(assert (=> b!4536628 m!5299589))

(declare-fun m!5299591 () Bool)

(assert (=> b!4536628 m!5299591))

(assert (=> b!4536628 m!5297311))

(declare-fun m!5299593 () Bool)

(assert (=> b!4536628 m!5299593))

(declare-fun m!5299595 () Bool)

(assert (=> b!4536628 m!5299595))

(declare-fun m!5299597 () Bool)

(assert (=> b!4536628 m!5299597))

(assert (=> b!4536628 m!5299585))

(declare-fun m!5299599 () Bool)

(assert (=> b!4536628 m!5299599))

(assert (=> b!4536628 m!5297311))

(assert (=> b!4536628 m!5299595))

(declare-fun m!5299601 () Bool)

(assert (=> b!4536628 m!5299601))

(declare-fun m!5299603 () Bool)

(assert (=> b!4536628 m!5299603))

(assert (=> b!4536628 m!5299587))

(declare-fun m!5299605 () Bool)

(assert (=> b!4536628 m!5299605))

(assert (=> bm!316303 m!5297311))

(declare-fun m!5299607 () Bool)

(assert (=> bm!316303 m!5299607))

(declare-fun m!5299609 () Bool)

(assert (=> bm!316304 m!5299609))

(declare-fun m!5299611 () Bool)

(assert (=> b!4536630 m!5299611))

(assert (=> b!4535505 d!1401484))

(declare-fun bs!873378 () Bool)

(declare-fun d!1401510 () Bool)

(assert (= bs!873378 (and d!1401510 d!1400702)))

(declare-fun lambda!175499 () Int)

(assert (=> bs!873378 (= lambda!175499 lambda!175303)))

(declare-fun bs!873380 () Bool)

(assert (= bs!873380 (and d!1401510 d!1400982)))

(assert (=> bs!873380 (= lambda!175499 lambda!175375)))

(declare-fun bs!873382 () Bool)

(assert (= bs!873382 (and d!1401510 d!1400794)))

(assert (=> bs!873382 (= lambda!175499 lambda!175332)))

(declare-fun bs!873384 () Bool)

(assert (= bs!873384 (and d!1401510 d!1400876)))

(assert (=> bs!873384 (= lambda!175499 lambda!175353)))

(declare-fun bs!873386 () Bool)

(assert (= bs!873386 (and d!1401510 b!4535199)))

(assert (=> bs!873386 (not (= lambda!175499 lambda!175214))))

(declare-fun bs!873388 () Bool)

(assert (= bs!873388 (and d!1401510 d!1400704)))

(assert (=> bs!873388 (not (= lambda!175499 lambda!175306))))

(declare-fun bs!873390 () Bool)

(assert (= bs!873390 (and d!1401510 d!1400786)))

(assert (=> bs!873390 (= lambda!175499 lambda!175330)))

(declare-fun bs!873392 () Bool)

(assert (= bs!873392 (and d!1401510 d!1400790)))

(assert (=> bs!873392 (= lambda!175499 lambda!175331)))

(declare-fun bs!873394 () Bool)

(assert (= bs!873394 (and d!1401510 d!1400748)))

(assert (=> bs!873394 (= lambda!175499 lambda!175316)))

(declare-fun bs!873396 () Bool)

(assert (= bs!873396 (and d!1401510 d!1400708)))

(assert (=> bs!873396 (= lambda!175499 lambda!175309)))

(declare-fun bs!873398 () Bool)

(assert (= bs!873398 (and d!1401510 d!1400898)))

(assert (=> bs!873398 (= lambda!175499 lambda!175364)))

(declare-fun bs!873399 () Bool)

(assert (= bs!873399 (and d!1401510 d!1400798)))

(assert (=> bs!873399 (= lambda!175499 lambda!175338)))

(declare-fun bs!873401 () Bool)

(assert (= bs!873401 (and d!1401510 d!1401212)))

(assert (=> bs!873401 (= lambda!175499 lambda!175435)))

(declare-fun bs!873403 () Bool)

(assert (= bs!873403 (and d!1401510 start!449928)))

(assert (=> bs!873403 (= lambda!175499 lambda!175213)))

(declare-fun bs!873404 () Bool)

(assert (= bs!873404 (and d!1401510 d!1400752)))

(assert (=> bs!873404 (= lambda!175499 lambda!175322)))

(declare-fun bs!873406 () Bool)

(assert (= bs!873406 (and d!1401510 d!1401468)))

(assert (=> bs!873406 (= lambda!175499 lambda!175487)))

(declare-fun bs!873407 () Bool)

(assert (= bs!873407 (and d!1401510 d!1400854)))

(assert (=> bs!873407 (= lambda!175499 lambda!175348)))

(declare-fun bs!873409 () Bool)

(assert (= bs!873409 (and d!1401510 d!1400780)))

(assert (=> bs!873409 (= lambda!175499 lambda!175325)))

(declare-fun lt!1711652 () ListMap!3653)

(assert (=> d!1401510 (invariantList!1039 (toList!4391 lt!1711652))))

(declare-fun e!2826941 () ListMap!3653)

(assert (=> d!1401510 (= lt!1711652 e!2826941)))

(declare-fun c!774812 () Bool)

(assert (=> d!1401510 (= c!774812 ((_ is Cons!50733) (t!357819 (t!357819 (toList!4392 lm!1477)))))))

(assert (=> d!1401510 (forall!10329 (t!357819 (t!357819 (toList!4392 lm!1477))) lambda!175499)))

(assert (=> d!1401510 (= (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477)))) lt!1711652)))

(declare-fun b!4536700 () Bool)

(assert (=> b!4536700 (= e!2826941 (addToMapMapFromBucket!719 (_2!28896 (h!56608 (t!357819 (t!357819 (toList!4392 lm!1477))))) (extractMap!1248 (t!357819 (t!357819 (t!357819 (toList!4392 lm!1477)))))))))

(declare-fun b!4536701 () Bool)

(assert (=> b!4536701 (= e!2826941 (ListMap!3654 Nil!50732))))

(assert (= (and d!1401510 c!774812) b!4536700))

(assert (= (and d!1401510 (not c!774812)) b!4536701))

(declare-fun m!5299613 () Bool)

(assert (=> d!1401510 m!5299613))

(declare-fun m!5299615 () Bool)

(assert (=> d!1401510 m!5299615))

(declare-fun m!5299617 () Bool)

(assert (=> b!4536700 m!5299617))

(assert (=> b!4536700 m!5299617))

(declare-fun m!5299619 () Bool)

(assert (=> b!4536700 m!5299619))

(assert (=> b!4535505 d!1401510))

(assert (=> b!4535615 d!1400622))

(declare-fun d!1401512 () Bool)

(declare-fun res!1890154 () Bool)

(declare-fun e!2826944 () Bool)

(assert (=> d!1401512 (=> res!1890154 e!2826944)))

(declare-fun e!2826942 () Bool)

(assert (=> d!1401512 (= res!1890154 e!2826942)))

(declare-fun res!1890155 () Bool)

(assert (=> d!1401512 (=> (not res!1890155) (not e!2826942))))

(assert (=> d!1401512 (= res!1890155 ((_ is Cons!50733) (t!357819 (t!357819 (toList!4392 lm!1477)))))))

(assert (=> d!1401512 (= (containsKeyBiggerList!172 (t!357819 (t!357819 (toList!4392 lm!1477))) key!3287) e!2826944)))

(declare-fun b!4536702 () Bool)

(assert (=> b!4536702 (= e!2826942 (containsKey!1856 (_2!28896 (h!56608 (t!357819 (t!357819 (toList!4392 lm!1477))))) key!3287))))

(declare-fun b!4536703 () Bool)

(declare-fun e!2826943 () Bool)

(assert (=> b!4536703 (= e!2826944 e!2826943)))

(declare-fun res!1890153 () Bool)

(assert (=> b!4536703 (=> (not res!1890153) (not e!2826943))))

(assert (=> b!4536703 (= res!1890153 ((_ is Cons!50733) (t!357819 (t!357819 (toList!4392 lm!1477)))))))

(declare-fun b!4536704 () Bool)

(assert (=> b!4536704 (= e!2826943 (containsKeyBiggerList!172 (t!357819 (t!357819 (t!357819 (toList!4392 lm!1477)))) key!3287))))

(assert (= (and d!1401512 res!1890155) b!4536702))

(assert (= (and d!1401512 (not res!1890154)) b!4536703))

(assert (= (and b!4536703 res!1890153) b!4536704))

(declare-fun m!5299621 () Bool)

(assert (=> b!4536702 m!5299621))

(declare-fun m!5299623 () Bool)

(assert (=> b!4536704 m!5299623))

(assert (=> b!4535490 d!1401512))

(declare-fun d!1401514 () Bool)

(assert (=> d!1401514 (= (invariantList!1039 (toList!4391 lt!1710851)) (noDuplicatedKeys!274 (toList!4391 lt!1710851)))))

(declare-fun bs!873414 () Bool)

(assert (= bs!873414 d!1401514))

(declare-fun m!5299625 () Bool)

(assert (=> bs!873414 m!5299625))

(assert (=> b!4535543 d!1401514))

(declare-fun d!1401516 () Bool)

(assert (=> d!1401516 (= (isEmpty!28735 lt!1710894) (not ((_ is Some!11182) lt!1710894)))))

(assert (=> d!1400864 d!1401516))

(assert (=> d!1400864 d!1400716))

(declare-fun d!1401518 () Bool)

(declare-fun e!2826946 () Bool)

(assert (=> d!1401518 e!2826946))

(declare-fun res!1890156 () Bool)

(assert (=> d!1401518 (=> res!1890156 e!2826946)))

(declare-fun lt!1711655 () Bool)

(assert (=> d!1401518 (= res!1890156 (not lt!1711655))))

(declare-fun lt!1711656 () Bool)

(assert (=> d!1401518 (= lt!1711655 lt!1711656)))

(declare-fun lt!1711654 () Unit!97630)

(declare-fun e!2826945 () Unit!97630)

(assert (=> d!1401518 (= lt!1711654 e!2826945)))

(declare-fun c!774813 () Bool)

(assert (=> d!1401518 (= c!774813 lt!1711656)))

(assert (=> d!1401518 (= lt!1711656 (containsKey!1858 (toList!4392 lt!1710757) (_1!28896 lt!1710445)))))

(assert (=> d!1401518 (= (contains!13512 lt!1710757 (_1!28896 lt!1710445)) lt!1711655)))

(declare-fun b!4536705 () Bool)

(declare-fun lt!1711653 () Unit!97630)

(assert (=> b!4536705 (= e!2826945 lt!1711653)))

(assert (=> b!4536705 (= lt!1711653 (lemmaContainsKeyImpliesGetValueByKeyDefined!1039 (toList!4392 lt!1710757) (_1!28896 lt!1710445)))))

(assert (=> b!4536705 (isDefined!8462 (getValueByKey!1136 (toList!4392 lt!1710757) (_1!28896 lt!1710445)))))

(declare-fun b!4536706 () Bool)

(declare-fun Unit!97943 () Unit!97630)

(assert (=> b!4536706 (= e!2826945 Unit!97943)))

(declare-fun b!4536707 () Bool)

(assert (=> b!4536707 (= e!2826946 (isDefined!8462 (getValueByKey!1136 (toList!4392 lt!1710757) (_1!28896 lt!1710445))))))

(assert (= (and d!1401518 c!774813) b!4536705))

(assert (= (and d!1401518 (not c!774813)) b!4536706))

(assert (= (and d!1401518 (not res!1890156)) b!4536707))

(declare-fun m!5299627 () Bool)

(assert (=> d!1401518 m!5299627))

(declare-fun m!5299629 () Bool)

(assert (=> b!4536705 m!5299629))

(assert (=> b!4536705 m!5297117))

(assert (=> b!4536705 m!5297117))

(declare-fun m!5299631 () Bool)

(assert (=> b!4536705 m!5299631))

(assert (=> b!4536707 m!5297117))

(assert (=> b!4536707 m!5297117))

(assert (=> b!4536707 m!5299631))

(assert (=> d!1400734 d!1401518))

(declare-fun b!4536709 () Bool)

(declare-fun e!2826947 () Option!11186)

(declare-fun e!2826948 () Option!11186)

(assert (=> b!4536709 (= e!2826947 e!2826948)))

(declare-fun c!774815 () Bool)

(assert (=> b!4536709 (= c!774815 (and ((_ is Cons!50733) lt!1710756) (not (= (_1!28896 (h!56608 lt!1710756)) (_1!28896 lt!1710445)))))))

(declare-fun b!4536708 () Bool)

(assert (=> b!4536708 (= e!2826947 (Some!11185 (_2!28896 (h!56608 lt!1710756))))))

(declare-fun b!4536711 () Bool)

(assert (=> b!4536711 (= e!2826948 None!11185)))

(declare-fun d!1401520 () Bool)

(declare-fun c!774814 () Bool)

(assert (=> d!1401520 (= c!774814 (and ((_ is Cons!50733) lt!1710756) (= (_1!28896 (h!56608 lt!1710756)) (_1!28896 lt!1710445))))))

(assert (=> d!1401520 (= (getValueByKey!1136 lt!1710756 (_1!28896 lt!1710445)) e!2826947)))

(declare-fun b!4536710 () Bool)

(assert (=> b!4536710 (= e!2826948 (getValueByKey!1136 (t!357819 lt!1710756) (_1!28896 lt!1710445)))))

(assert (= (and d!1401520 c!774814) b!4536708))

(assert (= (and d!1401520 (not c!774814)) b!4536709))

(assert (= (and b!4536709 c!774815) b!4536710))

(assert (= (and b!4536709 (not c!774815)) b!4536711))

(declare-fun m!5299633 () Bool)

(assert (=> b!4536710 m!5299633))

(assert (=> d!1400734 d!1401520))

(declare-fun d!1401522 () Bool)

(assert (=> d!1401522 (= (getValueByKey!1136 lt!1710756 (_1!28896 lt!1710445)) (Some!11185 (_2!28896 lt!1710445)))))

(declare-fun lt!1711657 () Unit!97630)

(assert (=> d!1401522 (= lt!1711657 (choose!29830 lt!1710756 (_1!28896 lt!1710445) (_2!28896 lt!1710445)))))

(declare-fun e!2826949 () Bool)

(assert (=> d!1401522 e!2826949))

(declare-fun res!1890157 () Bool)

(assert (=> d!1401522 (=> (not res!1890157) (not e!2826949))))

(assert (=> d!1401522 (= res!1890157 (isStrictlySorted!452 lt!1710756))))

(assert (=> d!1401522 (= (lemmaContainsTupThenGetReturnValue!712 lt!1710756 (_1!28896 lt!1710445) (_2!28896 lt!1710445)) lt!1711657)))

(declare-fun b!4536712 () Bool)

(declare-fun res!1890158 () Bool)

(assert (=> b!4536712 (=> (not res!1890158) (not e!2826949))))

(assert (=> b!4536712 (= res!1890158 (containsKey!1858 lt!1710756 (_1!28896 lt!1710445)))))

(declare-fun b!4536713 () Bool)

(assert (=> b!4536713 (= e!2826949 (contains!13511 lt!1710756 (tuple2!51205 (_1!28896 lt!1710445) (_2!28896 lt!1710445))))))

(assert (= (and d!1401522 res!1890157) b!4536712))

(assert (= (and b!4536712 res!1890158) b!4536713))

(assert (=> d!1401522 m!5297111))

(declare-fun m!5299635 () Bool)

(assert (=> d!1401522 m!5299635))

(declare-fun m!5299637 () Bool)

(assert (=> d!1401522 m!5299637))

(declare-fun m!5299639 () Bool)

(assert (=> b!4536712 m!5299639))

(declare-fun m!5299641 () Bool)

(assert (=> b!4536713 m!5299641))

(assert (=> d!1400734 d!1401522))

(declare-fun b!4536714 () Bool)

(declare-fun e!2826952 () List!50857)

(declare-fun e!2826951 () List!50857)

(assert (=> b!4536714 (= e!2826952 e!2826951)))

(declare-fun c!774819 () Bool)

(assert (=> b!4536714 (= c!774819 (and ((_ is Cons!50733) (toList!4392 lt!1710421)) (= (_1!28896 (h!56608 (toList!4392 lt!1710421))) (_1!28896 lt!1710445))))))

(declare-fun bm!316320 () Bool)

(declare-fun call!316326 () List!50857)

(declare-fun c!774817 () Bool)

(declare-fun e!2826954 () List!50857)

(assert (=> bm!316320 (= call!316326 ($colon$colon!959 e!2826954 (ite c!774817 (h!56608 (toList!4392 lt!1710421)) (tuple2!51205 (_1!28896 lt!1710445) (_2!28896 lt!1710445)))))))

(declare-fun c!774818 () Bool)

(assert (=> bm!316320 (= c!774818 c!774817)))

(declare-fun b!4536715 () Bool)

(assert (=> b!4536715 (= e!2826954 (insertStrictlySorted!430 (t!357819 (toList!4392 lt!1710421)) (_1!28896 lt!1710445) (_2!28896 lt!1710445)))))

(declare-fun b!4536716 () Bool)

(declare-fun e!2826950 () List!50857)

(declare-fun call!316325 () List!50857)

(assert (=> b!4536716 (= e!2826950 call!316325)))

(declare-fun bm!316321 () Bool)

(declare-fun call!316327 () List!50857)

(assert (=> bm!316321 (= call!316327 call!316326)))

(declare-fun b!4536718 () Bool)

(declare-fun c!774816 () Bool)

(assert (=> b!4536718 (= c!774816 (and ((_ is Cons!50733) (toList!4392 lt!1710421)) (bvsgt (_1!28896 (h!56608 (toList!4392 lt!1710421))) (_1!28896 lt!1710445))))))

(assert (=> b!4536718 (= e!2826951 e!2826950)))

(declare-fun b!4536719 () Bool)

(assert (=> b!4536719 (= e!2826952 call!316326)))

(declare-fun bm!316322 () Bool)

(assert (=> bm!316322 (= call!316325 call!316327)))

(declare-fun b!4536720 () Bool)

(assert (=> b!4536720 (= e!2826950 call!316325)))

(declare-fun b!4536721 () Bool)

(assert (=> b!4536721 (= e!2826951 call!316327)))

(declare-fun b!4536717 () Bool)

(declare-fun e!2826953 () Bool)

(declare-fun lt!1711658 () List!50857)

(assert (=> b!4536717 (= e!2826953 (contains!13511 lt!1711658 (tuple2!51205 (_1!28896 lt!1710445) (_2!28896 lt!1710445))))))

(declare-fun d!1401524 () Bool)

(assert (=> d!1401524 e!2826953))

(declare-fun res!1890160 () Bool)

(assert (=> d!1401524 (=> (not res!1890160) (not e!2826953))))

(assert (=> d!1401524 (= res!1890160 (isStrictlySorted!452 lt!1711658))))

(assert (=> d!1401524 (= lt!1711658 e!2826952)))

(assert (=> d!1401524 (= c!774817 (and ((_ is Cons!50733) (toList!4392 lt!1710421)) (bvslt (_1!28896 (h!56608 (toList!4392 lt!1710421))) (_1!28896 lt!1710445))))))

(assert (=> d!1401524 (isStrictlySorted!452 (toList!4392 lt!1710421))))

(assert (=> d!1401524 (= (insertStrictlySorted!430 (toList!4392 lt!1710421) (_1!28896 lt!1710445) (_2!28896 lt!1710445)) lt!1711658)))

(declare-fun b!4536722 () Bool)

(assert (=> b!4536722 (= e!2826954 (ite c!774819 (t!357819 (toList!4392 lt!1710421)) (ite c!774816 (Cons!50733 (h!56608 (toList!4392 lt!1710421)) (t!357819 (toList!4392 lt!1710421))) Nil!50733)))))

(declare-fun b!4536723 () Bool)

(declare-fun res!1890159 () Bool)

(assert (=> b!4536723 (=> (not res!1890159) (not e!2826953))))

(assert (=> b!4536723 (= res!1890159 (containsKey!1858 lt!1711658 (_1!28896 lt!1710445)))))

(assert (= (and d!1401524 c!774817) b!4536719))

(assert (= (and d!1401524 (not c!774817)) b!4536714))

(assert (= (and b!4536714 c!774819) b!4536721))

(assert (= (and b!4536714 (not c!774819)) b!4536718))

(assert (= (and b!4536718 c!774816) b!4536716))

(assert (= (and b!4536718 (not c!774816)) b!4536720))

(assert (= (or b!4536716 b!4536720) bm!316322))

(assert (= (or b!4536721 bm!316322) bm!316321))

(assert (= (or b!4536719 bm!316321) bm!316320))

(assert (= (and bm!316320 c!774818) b!4536715))

(assert (= (and bm!316320 (not c!774818)) b!4536722))

(assert (= (and d!1401524 res!1890160) b!4536723))

(assert (= (and b!4536723 res!1890159) b!4536717))

(declare-fun m!5299643 () Bool)

(assert (=> bm!316320 m!5299643))

(declare-fun m!5299645 () Bool)

(assert (=> b!4536723 m!5299645))

(declare-fun m!5299647 () Bool)

(assert (=> b!4536717 m!5299647))

(declare-fun m!5299649 () Bool)

(assert (=> d!1401524 m!5299649))

(assert (=> d!1401524 m!5298395))

(declare-fun m!5299651 () Bool)

(assert (=> b!4536715 m!5299651))

(assert (=> d!1400734 d!1401524))

(assert (=> b!4535497 d!1401186))

(declare-fun d!1401526 () Bool)

(assert (=> d!1401526 (containsKey!1859 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) key!3287)))

(declare-fun lt!1711659 () Unit!97630)

(assert (=> d!1401526 (= lt!1711659 (choose!29828 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) key!3287))))

(assert (=> d!1401526 (invariantList!1039 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))))))

(assert (=> d!1401526 (= (lemmaInGetKeysListThenContainsKey!486 (toList!4391 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) key!3287) lt!1711659)))

(declare-fun bs!873415 () Bool)

(assert (= bs!873415 d!1401526))

(assert (=> bs!873415 m!5297291))

(declare-fun m!5299653 () Bool)

(assert (=> bs!873415 m!5299653))

(assert (=> bs!873415 m!5297815))

(assert (=> b!4535497 d!1401526))

(assert (=> d!1400700 d!1401432))

(declare-fun d!1401528 () Bool)

(declare-fun res!1890161 () Bool)

(declare-fun e!2826955 () Bool)

(assert (=> d!1401528 (=> res!1890161 e!2826955)))

(assert (=> d!1401528 (= res!1890161 (and ((_ is Cons!50733) (toList!4392 lt!1710421)) (= (_1!28896 (h!56608 (toList!4392 lt!1710421))) hash!344)))))

(assert (=> d!1401528 (= (containsKey!1858 (toList!4392 lt!1710421) hash!344) e!2826955)))

(declare-fun b!4536724 () Bool)

(declare-fun e!2826956 () Bool)

(assert (=> b!4536724 (= e!2826955 e!2826956)))

(declare-fun res!1890162 () Bool)

(assert (=> b!4536724 (=> (not res!1890162) (not e!2826956))))

(assert (=> b!4536724 (= res!1890162 (and (or (not ((_ is Cons!50733) (toList!4392 lt!1710421))) (bvsle (_1!28896 (h!56608 (toList!4392 lt!1710421))) hash!344)) ((_ is Cons!50733) (toList!4392 lt!1710421)) (bvslt (_1!28896 (h!56608 (toList!4392 lt!1710421))) hash!344)))))

(declare-fun b!4536725 () Bool)

(assert (=> b!4536725 (= e!2826956 (containsKey!1858 (t!357819 (toList!4392 lt!1710421)) hash!344))))

(assert (= (and d!1401528 (not res!1890161)) b!4536724))

(assert (= (and b!4536724 res!1890162) b!4536725))

(declare-fun m!5299655 () Bool)

(assert (=> b!4536725 m!5299655))

(assert (=> d!1400688 d!1401528))

(declare-fun d!1401530 () Bool)

(declare-fun e!2826959 () Bool)

(assert (=> d!1401530 e!2826959))

(declare-fun res!1890163 () Bool)

(assert (=> d!1401530 (=> res!1890163 e!2826959)))

(declare-fun e!2826961 () Bool)

(assert (=> d!1401530 (= res!1890163 e!2826961)))

(declare-fun res!1890164 () Bool)

(assert (=> d!1401530 (=> (not res!1890164) (not e!2826961))))

(declare-fun lt!1711666 () Bool)

(assert (=> d!1401530 (= res!1890164 (not lt!1711666))))

(declare-fun lt!1711661 () Bool)

(assert (=> d!1401530 (= lt!1711666 lt!1711661)))

(declare-fun lt!1711660 () Unit!97630)

(declare-fun e!2826958 () Unit!97630)

(assert (=> d!1401530 (= lt!1711660 e!2826958)))

(declare-fun c!774820 () Bool)

(assert (=> d!1401530 (= c!774820 lt!1711661)))

(assert (=> d!1401530 (= lt!1711661 (containsKey!1859 (toList!4391 lt!1710451) key!3287))))

(assert (=> d!1401530 (= (contains!13513 lt!1710451 key!3287) lt!1711666)))

(declare-fun b!4536726 () Bool)

(declare-fun lt!1711667 () Unit!97630)

(assert (=> b!4536726 (= e!2826958 lt!1711667)))

(declare-fun lt!1711662 () Unit!97630)

(assert (=> b!4536726 (= lt!1711662 (lemmaContainsKeyImpliesGetValueByKeyDefined!1040 (toList!4391 lt!1710451) key!3287))))

(assert (=> b!4536726 (isDefined!8463 (getValueByKey!1137 (toList!4391 lt!1710451) key!3287))))

(declare-fun lt!1711664 () Unit!97630)

(assert (=> b!4536726 (= lt!1711664 lt!1711662)))

(assert (=> b!4536726 (= lt!1711667 (lemmaInListThenGetKeysListContains!483 (toList!4391 lt!1710451) key!3287))))

(declare-fun call!316328 () Bool)

(assert (=> b!4536726 call!316328))

(declare-fun b!4536727 () Bool)

(assert (=> b!4536727 false))

(declare-fun lt!1711663 () Unit!97630)

(declare-fun lt!1711665 () Unit!97630)

(assert (=> b!4536727 (= lt!1711663 lt!1711665)))

(assert (=> b!4536727 (containsKey!1859 (toList!4391 lt!1710451) key!3287)))

(assert (=> b!4536727 (= lt!1711665 (lemmaInGetKeysListThenContainsKey!486 (toList!4391 lt!1710451) key!3287))))

(declare-fun e!2826960 () Unit!97630)

(declare-fun Unit!97955 () Unit!97630)

(assert (=> b!4536727 (= e!2826960 Unit!97955)))

(declare-fun bm!316323 () Bool)

(declare-fun e!2826962 () List!50859)

(assert (=> bm!316323 (= call!316328 (contains!13515 e!2826962 key!3287))))

(declare-fun c!774822 () Bool)

(assert (=> bm!316323 (= c!774822 c!774820)))

(declare-fun b!4536728 () Bool)

(declare-fun e!2826957 () Bool)

(assert (=> b!4536728 (= e!2826959 e!2826957)))

(declare-fun res!1890165 () Bool)

(assert (=> b!4536728 (=> (not res!1890165) (not e!2826957))))

(assert (=> b!4536728 (= res!1890165 (isDefined!8463 (getValueByKey!1137 (toList!4391 lt!1710451) key!3287)))))

(declare-fun b!4536729 () Bool)

(assert (=> b!4536729 (= e!2826962 (keys!17648 lt!1710451))))

(declare-fun b!4536730 () Bool)

(assert (=> b!4536730 (= e!2826958 e!2826960)))

(declare-fun c!774821 () Bool)

(assert (=> b!4536730 (= c!774821 call!316328)))

(declare-fun b!4536731 () Bool)

(declare-fun Unit!97956 () Unit!97630)

(assert (=> b!4536731 (= e!2826960 Unit!97956)))

(declare-fun b!4536732 () Bool)

(assert (=> b!4536732 (= e!2826962 (getKeysList!487 (toList!4391 lt!1710451)))))

(declare-fun b!4536733 () Bool)

(assert (=> b!4536733 (= e!2826957 (contains!13515 (keys!17648 lt!1710451) key!3287))))

(declare-fun b!4536734 () Bool)

(assert (=> b!4536734 (= e!2826961 (not (contains!13515 (keys!17648 lt!1710451) key!3287)))))

(assert (= (and d!1401530 c!774820) b!4536726))

(assert (= (and d!1401530 (not c!774820)) b!4536730))

(assert (= (and b!4536730 c!774821) b!4536727))

(assert (= (and b!4536730 (not c!774821)) b!4536731))

(assert (= (or b!4536726 b!4536730) bm!316323))

(assert (= (and bm!316323 c!774822) b!4536732))

(assert (= (and bm!316323 (not c!774822)) b!4536729))

(assert (= (and d!1401530 res!1890164) b!4536734))

(assert (= (and d!1401530 (not res!1890163)) b!4536728))

(assert (= (and b!4536728 res!1890165) b!4536733))

(assert (=> b!4536733 m!5296669))

(assert (=> b!4536733 m!5296669))

(declare-fun m!5299657 () Bool)

(assert (=> b!4536733 m!5299657))

(declare-fun m!5299659 () Bool)

(assert (=> b!4536727 m!5299659))

(declare-fun m!5299661 () Bool)

(assert (=> b!4536727 m!5299661))

(assert (=> b!4536729 m!5296669))

(assert (=> b!4536734 m!5296669))

(assert (=> b!4536734 m!5296669))

(assert (=> b!4536734 m!5299657))

(declare-fun m!5299663 () Bool)

(assert (=> b!4536728 m!5299663))

(assert (=> b!4536728 m!5299663))

(declare-fun m!5299665 () Bool)

(assert (=> b!4536728 m!5299665))

(declare-fun m!5299667 () Bool)

(assert (=> bm!316323 m!5299667))

(assert (=> b!4536732 m!5297735))

(declare-fun m!5299669 () Bool)

(assert (=> b!4536726 m!5299669))

(assert (=> b!4536726 m!5299663))

(assert (=> b!4536726 m!5299663))

(assert (=> b!4536726 m!5299665))

(declare-fun m!5299671 () Bool)

(assert (=> b!4536726 m!5299671))

(assert (=> d!1401530 m!5299659))

(assert (=> d!1400626 d!1401530))

(declare-fun bm!316324 () Bool)

(declare-fun call!316330 () (InoxSet tuple2!51202))

(declare-fun lt!1711671 () List!50856)

(assert (=> bm!316324 (= call!316330 (content!8420 lt!1711671))))

(declare-fun b!4536735 () Bool)

(declare-fun res!1890166 () Bool)

(declare-fun e!2826967 () Bool)

(assert (=> b!4536735 (=> (not res!1890166) (not e!2826967))))

(assert (=> b!4536735 (= res!1890166 (not (containsKey!1859 lt!1711671 key!3287)))))

(declare-fun b!4536737 () Bool)

(declare-fun e!2826969 () Bool)

(assert (=> b!4536737 (= e!2826967 e!2826969)))

(declare-fun c!774823 () Bool)

(assert (=> b!4536737 (= c!774823 (containsKey!1859 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448)) key!3287))))

(declare-fun b!4536738 () Bool)

(declare-fun e!2826964 () Unit!97630)

(declare-fun Unit!97957 () Unit!97630)

(assert (=> b!4536738 (= e!2826964 Unit!97957)))

(declare-fun lt!1711680 () Unit!97630)

(assert (=> b!4536738 (= lt!1711680 (lemmaInGetKeysListThenContainsKey!486 (t!357818 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448))) (_1!28895 (h!56607 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448))))))))

(declare-fun call!316331 () Bool)

(assert (=> b!4536738 call!316331))

(declare-fun lt!1711674 () Unit!97630)

(assert (=> b!4536738 (= lt!1711674 lt!1711680)))

(assert (=> b!4536738 false))

(declare-fun b!4536739 () Bool)

(declare-fun res!1890168 () Bool)

(assert (=> b!4536739 (=> (not res!1890168) (not e!2826967))))

(assert (=> b!4536739 (= res!1890168 (= (content!8421 (getKeysList!487 lt!1711671)) ((_ map and) (content!8421 (getKeysList!487 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448)))) ((_ map not) (store ((as const (Array K!12120 Bool)) false) key!3287 true)))))))

(declare-fun bm!316325 () Bool)

(declare-fun call!316332 () (InoxSet tuple2!51202))

(assert (=> bm!316325 (= call!316332 (content!8420 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448))))))

(declare-fun b!4536740 () Bool)

(declare-fun lt!1711681 () Unit!97630)

(declare-fun e!2826971 () Unit!97630)

(assert (=> b!4536740 (= lt!1711681 e!2826971)))

(declare-fun c!774829 () Bool)

(declare-fun call!316333 () Bool)

(assert (=> b!4536740 (= c!774829 call!316333)))

(declare-fun lt!1711683 () Unit!97630)

(assert (=> b!4536740 (= lt!1711683 e!2826964)))

(declare-fun c!774824 () Bool)

(assert (=> b!4536740 (= c!774824 (contains!13515 (getKeysList!487 (t!357818 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448)))) (_1!28895 (h!56607 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448))))))))

(declare-fun lt!1711682 () List!50856)

(assert (=> b!4536740 (= lt!1711682 ($colon$colon!961 (removePresrvNoDuplicatedKeys!162 (t!357818 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448))) key!3287) (h!56607 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448)))))))

(declare-fun e!2826966 () List!50856)

(assert (=> b!4536740 (= e!2826966 lt!1711682)))

(declare-fun bm!316326 () Bool)

(declare-fun call!316329 () (InoxSet tuple2!51202))

(assert (=> bm!316326 (= call!316329 (content!8420 (t!357818 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448)))))))

(declare-fun b!4536741 () Bool)

(declare-fun e!2826963 () List!50856)

(assert (=> b!4536741 (= e!2826963 (t!357818 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448))))))

(declare-fun b!4536742 () Bool)

(assert (=> b!4536742 (= e!2826966 Nil!50732)))

(declare-fun b!4536743 () Bool)

(declare-fun call!316334 () (InoxSet tuple2!51202))

(assert (=> b!4536743 (= e!2826969 (= call!316330 call!316334))))

(declare-fun b!4536744 () Bool)

(assert (=> b!4536744 (= call!316329 ((_ map and) call!316332 ((_ map not) (store ((as const (Array tuple2!51202 Bool)) false) (tuple2!51203 key!3287 (get!16670 (getValueByKey!1137 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448)) key!3287))) true))))))

(declare-fun lt!1711685 () Unit!97630)

(declare-fun e!2826965 () Unit!97630)

(assert (=> b!4536744 (= lt!1711685 e!2826965)))

(declare-fun c!774827 () Bool)

(assert (=> b!4536744 (= c!774827 (contains!13517 (t!357818 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448))) (tuple2!51203 key!3287 (get!16670 (getValueByKey!1137 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448)) key!3287)))))))

(declare-fun e!2826970 () Unit!97630)

(declare-fun Unit!97958 () Unit!97630)

(assert (=> b!4536744 (= e!2826970 Unit!97958)))

(declare-fun b!4536745 () Bool)

(declare-fun e!2826968 () List!50856)

(assert (=> b!4536745 (= e!2826968 e!2826966)))

(declare-fun c!774828 () Bool)

(assert (=> b!4536745 (= c!774828 (and ((_ is Cons!50732) (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448))) (not (= (_1!28895 (h!56607 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448)))) key!3287))))))

(declare-fun b!4536746 () Bool)

(assert (=> b!4536746 (= e!2826969 (= call!316330 ((_ map and) call!316334 ((_ map not) (store ((as const (Array tuple2!51202 Bool)) false) (tuple2!51203 key!3287 (get!16670 (getValueByKey!1137 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448)) key!3287))) true)))))))

(assert (=> b!4536746 (containsKey!1859 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448)) key!3287)))

(declare-fun lt!1711673 () Unit!97630)

(assert (=> b!4536746 (= lt!1711673 (lemmaContainsKeyImpliesGetValueByKeyDefined!1040 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448)) key!3287))))

(assert (=> b!4536746 (isDefined!8463 (getValueByKey!1137 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448)) key!3287))))

(declare-fun lt!1711676 () Unit!97630)

(assert (=> b!4536746 (= lt!1711676 lt!1711673)))

(declare-fun b!4536747 () Bool)

(declare-fun Unit!97959 () Unit!97630)

(assert (=> b!4536747 (= e!2826965 Unit!97959)))

(declare-fun b!4536748 () Bool)

(declare-fun Unit!97960 () Unit!97630)

(assert (=> b!4536748 (= e!2826965 Unit!97960)))

(declare-fun lt!1711670 () V!12366)

(assert (=> b!4536748 (= lt!1711670 (get!16670 (getValueByKey!1137 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448)) key!3287)))))

(declare-fun lt!1711672 () K!12120)

(assert (=> b!4536748 (= lt!1711672 key!3287)))

(declare-fun lt!1711678 () K!12120)

(assert (=> b!4536748 (= lt!1711678 key!3287)))

(declare-fun lt!1711677 () Unit!97630)

(assert (=> b!4536748 (= lt!1711677 (lemmaContainsTupleThenContainsKey!75 (t!357818 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448))) lt!1711672 (get!16670 (getValueByKey!1137 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448)) key!3287))))))

(assert (=> b!4536748 call!316333))

(declare-fun lt!1711668 () Unit!97630)

(assert (=> b!4536748 (= lt!1711668 lt!1711677)))

(assert (=> b!4536748 false))

(declare-fun bm!316327 () Bool)

(declare-fun c!774826 () Bool)

(assert (=> bm!316327 (= call!316333 (containsKey!1859 e!2826963 (ite c!774826 lt!1711672 (_1!28895 (h!56607 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448)))))))))

(declare-fun c!774830 () Bool)

(assert (=> bm!316327 (= c!774830 c!774826)))

(declare-fun d!1401532 () Bool)

(assert (=> d!1401532 e!2826967))

(declare-fun res!1890167 () Bool)

(assert (=> d!1401532 (=> (not res!1890167) (not e!2826967))))

(assert (=> d!1401532 (= res!1890167 (invariantList!1039 lt!1711671))))

(assert (=> d!1401532 (= lt!1711671 e!2826968)))

(assert (=> d!1401532 (= c!774826 (and ((_ is Cons!50732) (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448))) (= (_1!28895 (h!56607 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448)))) key!3287)))))

(assert (=> d!1401532 (invariantList!1039 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448)))))

(assert (=> d!1401532 (= (removePresrvNoDuplicatedKeys!162 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448)) key!3287) lt!1711671)))

(declare-fun b!4536736 () Bool)

(declare-fun Unit!97961 () Unit!97630)

(assert (=> b!4536736 (= e!2826971 Unit!97961)))

(declare-fun b!4536749 () Bool)

(declare-fun Unit!97962 () Unit!97630)

(assert (=> b!4536749 (= e!2826971 Unit!97962)))

(declare-fun lt!1711675 () List!50856)

(assert (=> b!4536749 (= lt!1711675 (removePresrvNoDuplicatedKeys!162 (t!357818 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448))) key!3287))))

(declare-fun lt!1711669 () Unit!97630)

(assert (=> b!4536749 (= lt!1711669 (lemmaInListThenGetKeysListContains!483 lt!1711675 (_1!28895 (h!56607 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448))))))))

(assert (=> b!4536749 (contains!13515 (getKeysList!487 lt!1711675) (_1!28895 (h!56607 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448)))))))

(declare-fun lt!1711679 () Unit!97630)

(assert (=> b!4536749 (= lt!1711679 lt!1711669)))

(assert (=> b!4536749 false))

(declare-fun b!4536750 () Bool)

(assert (=> b!4536750 (= e!2826968 (t!357818 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448))))))

(declare-fun c!774825 () Bool)

(assert (=> b!4536750 (= c!774825 call!316331)))

(declare-fun lt!1711684 () Unit!97630)

(assert (=> b!4536750 (= lt!1711684 e!2826970)))

(declare-fun bm!316328 () Bool)

(assert (=> bm!316328 (= call!316334 (content!8420 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448))))))

(declare-fun b!4536751 () Bool)

(assert (=> b!4536751 (= e!2826963 (removePresrvNoDuplicatedKeys!162 (t!357818 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448))) key!3287))))

(declare-fun b!4536752 () Bool)

(assert (=> b!4536752 (= call!316329 call!316332)))

(declare-fun Unit!97963 () Unit!97630)

(assert (=> b!4536752 (= e!2826970 Unit!97963)))

(declare-fun b!4536753 () Bool)

(declare-fun Unit!97964 () Unit!97630)

(assert (=> b!4536753 (= e!2826964 Unit!97964)))

(declare-fun bm!316329 () Bool)

(assert (=> bm!316329 (= call!316331 (containsKey!1859 (ite c!774826 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448)) (t!357818 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448)))) (ite c!774826 key!3287 (_1!28895 (h!56607 (toList!4391 (addToMapMapFromBucket!719 (_2!28896 lt!1710445) lt!1710448)))))))))

(assert (= (and d!1401532 c!774826) b!4536750))

(assert (= (and d!1401532 (not c!774826)) b!4536745))

(assert (= (and b!4536750 c!774825) b!4536744))

(assert (= (and b!4536750 (not c!774825)) b!4536752))

(assert (= (and b!4536744 c!774827) b!4536748))

(assert (= (and b!4536744 (not c!774827)) b!4536747))

(assert (= (or b!4536744 b!4536752) bm!316326))

(assert (= (or b!4536744 b!4536752) bm!316325))

(assert (= (and b!4536745 c!774828) b!4536740))

(assert (= (and b!4536745 (not c!774828)) b!4536742))

(assert (= (and b!4536740 c!774824) b!4536738))

(assert (= (and b!4536740 (not c!774824)) b!4536753))

(assert (= (and b!4536740 c!774829) b!4536749))

(assert (= (and b!4536740 (not c!774829)) b!4536736))

(assert (= (or b!4536750 b!4536738) bm!316329))

(assert (= (or b!4536748 b!4536740) bm!316327))

(assert (= (and bm!316327 c!774830) b!4536741))

(assert (= (and bm!316327 (not c!774830)) b!4536751))

(assert (= (and d!1401532 res!1890167) b!4536735))

(assert (= (and b!4536735 res!1890166) b!4536739))

(assert (= (and b!4536739 res!1890168) b!4536737))

(assert (= (and b!4536737 c!774823) b!4536746))

(assert (= (and b!4536737 (not c!774823)) b!4536743))

(assert (= (or b!4536746 b!4536743) bm!316324))

(assert (= (or b!4536746 b!4536743) bm!316328))

(declare-fun m!5299673 () Bool)

(assert (=> d!1401532 m!5299673))

(declare-fun m!5299675 () Bool)

(assert (=> d!1401532 m!5299675))

(declare-fun m!5299677 () Bool)

(assert (=> bm!316326 m!5299677))

(declare-fun m!5299679 () Bool)

(assert (=> bm!316329 m!5299679))

(declare-fun m!5299681 () Bool)

(assert (=> bm!316327 m!5299681))

(declare-fun m!5299683 () Bool)

(assert (=> b!4536748 m!5299683))

(assert (=> b!4536748 m!5299683))

(declare-fun m!5299687 () Bool)

(assert (=> b!4536748 m!5299687))

(assert (=> b!4536748 m!5299687))

(declare-fun m!5299691 () Bool)

(assert (=> b!4536748 m!5299691))

(declare-fun m!5299693 () Bool)

(assert (=> bm!316325 m!5299693))

(declare-fun m!5299697 () Bool)

(assert (=> bm!316324 m!5299697))

(declare-fun m!5299701 () Bool)

(assert (=> b!4536737 m!5299701))

(assert (=> b!4536744 m!5299683))

(assert (=> b!4536744 m!5299683))

(assert (=> b!4536744 m!5299687))

(declare-fun m!5299707 () Bool)

(assert (=> b!4536744 m!5299707))

(declare-fun m!5299715 () Bool)

(assert (=> b!4536744 m!5299715))

(assert (=> b!4536746 m!5299683))

(assert (=> b!4536746 m!5299687))

(assert (=> b!4536746 m!5299683))

(declare-fun m!5299721 () Bool)

(assert (=> b!4536746 m!5299721))

(assert (=> b!4536746 m!5299707))

(assert (=> b!4536746 m!5299701))

(declare-fun m!5299727 () Bool)

(assert (=> b!4536746 m!5299727))

(assert (=> b!4536746 m!5299683))

(declare-fun m!5299731 () Bool)

(assert (=> b!4536751 m!5299731))

(declare-fun m!5299735 () Bool)

(assert (=> b!4536738 m!5299735))

(declare-fun m!5299739 () Bool)

(assert (=> b!4536735 m!5299739))

(assert (=> b!4536739 m!5297715))

(declare-fun m!5299743 () Bool)

(assert (=> b!4536739 m!5299743))

(declare-fun m!5299745 () Bool)

(assert (=> b!4536739 m!5299745))

(assert (=> b!4536739 m!5299745))

(declare-fun m!5299747 () Bool)

(assert (=> b!4536739 m!5299747))

(assert (=> b!4536739 m!5296667))

(assert (=> b!4536739 m!5297715))

(declare-fun m!5299749 () Bool)

(assert (=> b!4536740 m!5299749))

(assert (=> b!4536740 m!5299749))

(declare-fun m!5299751 () Bool)

(assert (=> b!4536740 m!5299751))

(assert (=> b!4536740 m!5299731))

(assert (=> b!4536740 m!5299731))

(declare-fun m!5299753 () Bool)

(assert (=> b!4536740 m!5299753))

(assert (=> bm!316328 m!5299693))

(assert (=> b!4536749 m!5299731))

(declare-fun m!5299755 () Bool)

(assert (=> b!4536749 m!5299755))

(declare-fun m!5299757 () Bool)

(assert (=> b!4536749 m!5299757))

(assert (=> b!4536749 m!5299757))

(declare-fun m!5299759 () Bool)

(assert (=> b!4536749 m!5299759))

(assert (=> d!1400626 d!1401532))

(declare-fun d!1401536 () Bool)

(declare-fun c!774831 () Bool)

(assert (=> d!1401536 (= c!774831 ((_ is Nil!50733) (toList!4392 lm!1477)))))

(declare-fun e!2826972 () (InoxSet tuple2!51204))

(assert (=> d!1401536 (= (content!8425 (toList!4392 lm!1477)) e!2826972)))

(declare-fun b!4536754 () Bool)

(assert (=> b!4536754 (= e!2826972 ((as const (Array tuple2!51204 Bool)) false))))

(declare-fun b!4536755 () Bool)

(assert (=> b!4536755 (= e!2826972 ((_ map or) (store ((as const (Array tuple2!51204 Bool)) false) (h!56608 (toList!4392 lm!1477)) true) (content!8425 (t!357819 (toList!4392 lm!1477)))))))

(assert (= (and d!1401536 c!774831) b!4536754))

(assert (= (and d!1401536 (not c!774831)) b!4536755))

(declare-fun m!5299761 () Bool)

(assert (=> b!4536755 m!5299761))

(assert (=> b!4536755 m!5297445))

(assert (=> d!1400850 d!1401536))

(declare-fun d!1401538 () Bool)

(declare-fun res!1890169 () Bool)

(declare-fun e!2826973 () Bool)

(assert (=> d!1401538 (=> res!1890169 e!2826973)))

(assert (=> d!1401538 (= res!1890169 ((_ is Nil!50733) (toList!4392 lt!1710421)))))

(assert (=> d!1401538 (= (forall!10329 (toList!4392 lt!1710421) lambda!175322) e!2826973)))

(declare-fun b!4536756 () Bool)

(declare-fun e!2826974 () Bool)

(assert (=> b!4536756 (= e!2826973 e!2826974)))

(declare-fun res!1890170 () Bool)

(assert (=> b!4536756 (=> (not res!1890170) (not e!2826974))))

(assert (=> b!4536756 (= res!1890170 (dynLambda!21203 lambda!175322 (h!56608 (toList!4392 lt!1710421))))))

(declare-fun b!4536757 () Bool)

(assert (=> b!4536757 (= e!2826974 (forall!10329 (t!357819 (toList!4392 lt!1710421)) lambda!175322))))

(assert (= (and d!1401538 (not res!1890169)) b!4536756))

(assert (= (and b!4536756 res!1890170) b!4536757))

(declare-fun b_lambda!157349 () Bool)

(assert (=> (not b_lambda!157349) (not b!4536756)))

(declare-fun m!5299763 () Bool)

(assert (=> b!4536756 m!5299763))

(declare-fun m!5299765 () Bool)

(assert (=> b!4536757 m!5299765))

(assert (=> d!1400752 d!1401538))

(assert (=> d!1400752 d!1400790))

(declare-fun d!1401540 () Bool)

(declare-fun e!2826975 () Bool)

(assert (=> d!1401540 e!2826975))

(declare-fun res!1890171 () Bool)

(assert (=> d!1401540 (=> (not res!1890171) (not e!2826975))))

(declare-fun lt!1711686 () ListMap!3653)

(assert (=> d!1401540 (= res!1890171 (not (contains!13513 lt!1711686 key!3287)))))

(assert (=> d!1401540 (= lt!1711686 (ListMap!3654 (removePresrvNoDuplicatedKeys!162 (toList!4391 (extractMap!1248 (toList!4392 lt!1710421))) key!3287)))))

(assert (=> d!1401540 (= (-!418 (extractMap!1248 (toList!4392 lt!1710421)) key!3287) lt!1711686)))

(declare-fun b!4536758 () Bool)

(assert (=> b!4536758 (= e!2826975 (= ((_ map and) (content!8421 (keys!17648 (extractMap!1248 (toList!4392 lt!1710421)))) ((_ map not) (store ((as const (Array K!12120 Bool)) false) key!3287 true))) (content!8421 (keys!17648 lt!1711686))))))

(assert (= (and d!1401540 res!1890171) b!4536758))

(declare-fun m!5299767 () Bool)

(assert (=> d!1401540 m!5299767))

(declare-fun m!5299769 () Bool)

(assert (=> d!1401540 m!5299769))

(assert (=> b!4536758 m!5296627))

(assert (=> b!4536758 m!5299251))

(assert (=> b!4536758 m!5296667))

(declare-fun m!5299771 () Bool)

(assert (=> b!4536758 m!5299771))

(declare-fun m!5299773 () Bool)

(assert (=> b!4536758 m!5299773))

(assert (=> b!4536758 m!5299251))

(declare-fun m!5299775 () Bool)

(assert (=> b!4536758 m!5299775))

(assert (=> b!4536758 m!5299771))

(assert (=> d!1400752 d!1401540))

(declare-fun d!1401542 () Bool)

(declare-fun e!2826976 () Bool)

(assert (=> d!1401542 e!2826976))

(declare-fun res!1890172 () Bool)

(assert (=> d!1401542 (=> (not res!1890172) (not e!2826976))))

(declare-fun lt!1711688 () ListLongMap!3023)

(assert (=> d!1401542 (= res!1890172 (contains!13512 lt!1711688 (_1!28896 (tuple2!51205 hash!344 newBucket!178))))))

(declare-fun lt!1711687 () List!50857)

(assert (=> d!1401542 (= lt!1711688 (ListLongMap!3024 lt!1711687))))

(declare-fun lt!1711690 () Unit!97630)

(declare-fun lt!1711689 () Unit!97630)

(assert (=> d!1401542 (= lt!1711690 lt!1711689)))

(assert (=> d!1401542 (= (getValueByKey!1136 lt!1711687 (_1!28896 (tuple2!51205 hash!344 newBucket!178))) (Some!11185 (_2!28896 (tuple2!51205 hash!344 newBucket!178))))))

(assert (=> d!1401542 (= lt!1711689 (lemmaContainsTupThenGetReturnValue!712 lt!1711687 (_1!28896 (tuple2!51205 hash!344 newBucket!178)) (_2!28896 (tuple2!51205 hash!344 newBucket!178))))))

(assert (=> d!1401542 (= lt!1711687 (insertStrictlySorted!430 (toList!4392 lt!1710421) (_1!28896 (tuple2!51205 hash!344 newBucket!178)) (_2!28896 (tuple2!51205 hash!344 newBucket!178))))))

(assert (=> d!1401542 (= (+!1592 lt!1710421 (tuple2!51205 hash!344 newBucket!178)) lt!1711688)))

(declare-fun b!4536759 () Bool)

(declare-fun res!1890173 () Bool)

(assert (=> b!4536759 (=> (not res!1890173) (not e!2826976))))

(assert (=> b!4536759 (= res!1890173 (= (getValueByKey!1136 (toList!4392 lt!1711688) (_1!28896 (tuple2!51205 hash!344 newBucket!178))) (Some!11185 (_2!28896 (tuple2!51205 hash!344 newBucket!178)))))))

(declare-fun b!4536760 () Bool)

(assert (=> b!4536760 (= e!2826976 (contains!13511 (toList!4392 lt!1711688) (tuple2!51205 hash!344 newBucket!178)))))

(assert (= (and d!1401542 res!1890172) b!4536759))

(assert (= (and b!4536759 res!1890173) b!4536760))

(declare-fun m!5299777 () Bool)

(assert (=> d!1401542 m!5299777))

(declare-fun m!5299779 () Bool)

(assert (=> d!1401542 m!5299779))

(declare-fun m!5299781 () Bool)

(assert (=> d!1401542 m!5299781))

(declare-fun m!5299783 () Bool)

(assert (=> d!1401542 m!5299783))

(declare-fun m!5299785 () Bool)

(assert (=> b!4536759 m!5299785))

(declare-fun m!5299787 () Bool)

(assert (=> b!4536760 m!5299787))

(assert (=> d!1400752 d!1401542))

(declare-fun bs!873448 () Bool)

(declare-fun d!1401544 () Bool)

(assert (= bs!873448 (and d!1401544 d!1400702)))

(declare-fun lambda!175502 () Int)

(assert (=> bs!873448 (= lambda!175502 lambda!175303)))

(declare-fun bs!873449 () Bool)

(assert (= bs!873449 (and d!1401544 d!1400982)))

(assert (=> bs!873449 (= lambda!175502 lambda!175375)))

(declare-fun bs!873450 () Bool)

(assert (= bs!873450 (and d!1401544 d!1400794)))

(assert (=> bs!873450 (= lambda!175502 lambda!175332)))

(declare-fun bs!873451 () Bool)

(assert (= bs!873451 (and d!1401544 d!1400876)))

(assert (=> bs!873451 (= lambda!175502 lambda!175353)))

(declare-fun bs!873452 () Bool)

(assert (= bs!873452 (and d!1401544 b!4535199)))

(assert (=> bs!873452 (not (= lambda!175502 lambda!175214))))

(declare-fun bs!873453 () Bool)

(assert (= bs!873453 (and d!1401544 d!1400704)))

(assert (=> bs!873453 (not (= lambda!175502 lambda!175306))))

(declare-fun bs!873454 () Bool)

(assert (= bs!873454 (and d!1401544 d!1400786)))

(assert (=> bs!873454 (= lambda!175502 lambda!175330)))

(declare-fun bs!873455 () Bool)

(assert (= bs!873455 (and d!1401544 d!1400790)))

(assert (=> bs!873455 (= lambda!175502 lambda!175331)))

(declare-fun bs!873456 () Bool)

(assert (= bs!873456 (and d!1401544 d!1400748)))

(assert (=> bs!873456 (= lambda!175502 lambda!175316)))

(declare-fun bs!873457 () Bool)

(assert (= bs!873457 (and d!1401544 d!1400708)))

(assert (=> bs!873457 (= lambda!175502 lambda!175309)))

(declare-fun bs!873458 () Bool)

(assert (= bs!873458 (and d!1401544 d!1400898)))

(assert (=> bs!873458 (= lambda!175502 lambda!175364)))

(declare-fun bs!873459 () Bool)

(assert (= bs!873459 (and d!1401544 d!1400798)))

(assert (=> bs!873459 (= lambda!175502 lambda!175338)))

(declare-fun bs!873460 () Bool)

(assert (= bs!873460 (and d!1401544 d!1401212)))

(assert (=> bs!873460 (= lambda!175502 lambda!175435)))

(declare-fun bs!873461 () Bool)

(assert (= bs!873461 (and d!1401544 d!1401510)))

(assert (=> bs!873461 (= lambda!175502 lambda!175499)))

(declare-fun bs!873462 () Bool)

(assert (= bs!873462 (and d!1401544 start!449928)))

(assert (=> bs!873462 (= lambda!175502 lambda!175213)))

(declare-fun bs!873463 () Bool)

(assert (= bs!873463 (and d!1401544 d!1400752)))

(assert (=> bs!873463 (= lambda!175502 lambda!175322)))

(declare-fun bs!873464 () Bool)

(assert (= bs!873464 (and d!1401544 d!1401468)))

(assert (=> bs!873464 (= lambda!175502 lambda!175487)))

(declare-fun bs!873465 () Bool)

(assert (= bs!873465 (and d!1401544 d!1400854)))

(assert (=> bs!873465 (= lambda!175502 lambda!175348)))

(declare-fun bs!873466 () Bool)

(assert (= bs!873466 (and d!1401544 d!1400780)))

(assert (=> bs!873466 (= lambda!175502 lambda!175325)))

(declare-fun lt!1711691 () ListMap!3653)

(assert (=> d!1401544 (invariantList!1039 (toList!4391 lt!1711691))))

(declare-fun e!2826977 () ListMap!3653)

(assert (=> d!1401544 (= lt!1711691 e!2826977)))

(declare-fun c!774832 () Bool)

(assert (=> d!1401544 (= c!774832 ((_ is Cons!50733) (toList!4392 (+!1592 lt!1710421 (tuple2!51205 hash!344 newBucket!178)))))))

(assert (=> d!1401544 (forall!10329 (toList!4392 (+!1592 lt!1710421 (tuple2!51205 hash!344 newBucket!178))) lambda!175502)))

(assert (=> d!1401544 (= (extractMap!1248 (toList!4392 (+!1592 lt!1710421 (tuple2!51205 hash!344 newBucket!178)))) lt!1711691)))

(declare-fun b!4536761 () Bool)

(assert (=> b!4536761 (= e!2826977 (addToMapMapFromBucket!719 (_2!28896 (h!56608 (toList!4392 (+!1592 lt!1710421 (tuple2!51205 hash!344 newBucket!178))))) (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 (tuple2!51205 hash!344 newBucket!178)))))))))

(declare-fun b!4536762 () Bool)

(assert (=> b!4536762 (= e!2826977 (ListMap!3654 Nil!50732))))

(assert (= (and d!1401544 c!774832) b!4536761))

(assert (= (and d!1401544 (not c!774832)) b!4536762))

(declare-fun m!5299789 () Bool)

(assert (=> d!1401544 m!5299789))

(declare-fun m!5299791 () Bool)

(assert (=> d!1401544 m!5299791))

(declare-fun m!5299793 () Bool)

(assert (=> b!4536761 m!5299793))

(assert (=> b!4536761 m!5299793))

(declare-fun m!5299795 () Bool)

(assert (=> b!4536761 m!5299795))

(assert (=> d!1400752 d!1401544))

(declare-fun d!1401546 () Bool)

(assert (=> d!1401546 (= (eq!649 (extractMap!1248 (toList!4392 (+!1592 lt!1710421 (tuple2!51205 hash!344 newBucket!178)))) (-!418 (extractMap!1248 (toList!4392 lt!1710421)) key!3287)) (= (content!8420 (toList!4391 (extractMap!1248 (toList!4392 (+!1592 lt!1710421 (tuple2!51205 hash!344 newBucket!178)))))) (content!8420 (toList!4391 (-!418 (extractMap!1248 (toList!4392 lt!1710421)) key!3287)))))))

(declare-fun bs!873467 () Bool)

(assert (= bs!873467 d!1401546))

(declare-fun m!5299797 () Bool)

(assert (=> bs!873467 m!5299797))

(declare-fun m!5299799 () Bool)

(assert (=> bs!873467 m!5299799))

(assert (=> d!1400752 d!1401546))

(declare-fun d!1401548 () Bool)

(assert (=> d!1401548 (eq!649 (extractMap!1248 (toList!4392 (+!1592 lt!1710421 (tuple2!51205 hash!344 newBucket!178)))) (-!418 (extractMap!1248 (toList!4392 lt!1710421)) key!3287))))

(assert (=> d!1401548 true))

(declare-fun _$8!692 () Unit!97630)

(assert (=> d!1401548 (= (choose!29816 lt!1710421 hash!344 newBucket!178 key!3287 hashF!1107) _$8!692)))

(declare-fun bs!873468 () Bool)

(assert (= bs!873468 d!1401548))

(assert (=> bs!873468 m!5297213))

(assert (=> bs!873468 m!5297209))

(assert (=> bs!873468 m!5297215))

(assert (=> bs!873468 m!5296627))

(assert (=> bs!873468 m!5297213))

(assert (=> bs!873468 m!5297207))

(assert (=> bs!873468 m!5296627))

(assert (=> bs!873468 m!5297209))

(assert (=> d!1400752 d!1401548))

(declare-fun d!1401558 () Bool)

(assert (=> d!1401558 (= (get!16667 (getValueByKey!1136 (toList!4392 lm!1477) hash!344)) (v!44863 (getValueByKey!1136 (toList!4392 lm!1477) hash!344)))))

(assert (=> d!1400858 d!1401558))

(assert (=> d!1400858 d!1401428))

(assert (=> b!4535363 d!1400890))

(assert (=> b!4535363 d!1400892))

(declare-fun d!1401560 () Bool)

(assert (=> d!1401560 (= (invariantList!1039 (toList!4391 lt!1710913)) (noDuplicatedKeys!274 (toList!4391 lt!1710913)))))

(declare-fun bs!873469 () Bool)

(assert (= bs!873469 d!1401560))

(declare-fun m!5299825 () Bool)

(assert (=> bs!873469 m!5299825))

(assert (=> b!4535623 d!1401560))

(assert (=> b!4535574 d!1400842))

(declare-fun d!1401562 () Bool)

(assert (=> d!1401562 (= (invariantList!1039 (toList!4391 lt!1710700)) (noDuplicatedKeys!274 (toList!4391 lt!1710700)))))

(declare-fun bs!873470 () Bool)

(assert (= bs!873470 d!1401562))

(declare-fun m!5299827 () Bool)

(assert (=> bs!873470 m!5299827))

(assert (=> d!1400702 d!1401562))

(declare-fun d!1401564 () Bool)

(declare-fun res!1890186 () Bool)

(declare-fun e!2826987 () Bool)

(assert (=> d!1401564 (=> res!1890186 e!2826987)))

(assert (=> d!1401564 (= res!1890186 ((_ is Nil!50733) (toList!4392 lm!1477)))))

(assert (=> d!1401564 (= (forall!10329 (toList!4392 lm!1477) lambda!175303) e!2826987)))

(declare-fun b!4536776 () Bool)

(declare-fun e!2826988 () Bool)

(assert (=> b!4536776 (= e!2826987 e!2826988)))

(declare-fun res!1890187 () Bool)

(assert (=> b!4536776 (=> (not res!1890187) (not e!2826988))))

(assert (=> b!4536776 (= res!1890187 (dynLambda!21203 lambda!175303 (h!56608 (toList!4392 lm!1477))))))

(declare-fun b!4536777 () Bool)

(assert (=> b!4536777 (= e!2826988 (forall!10329 (t!357819 (toList!4392 lm!1477)) lambda!175303))))

(assert (= (and d!1401564 (not res!1890186)) b!4536776))

(assert (= (and b!4536776 res!1890187) b!4536777))

(declare-fun b_lambda!157357 () Bool)

(assert (=> (not b_lambda!157357) (not b!4536776)))

(declare-fun m!5299829 () Bool)

(assert (=> b!4536776 m!5299829))

(declare-fun m!5299831 () Bool)

(assert (=> b!4536777 m!5299831))

(assert (=> d!1400702 d!1401564))

(declare-fun d!1401566 () Bool)

(declare-fun res!1890188 () Bool)

(declare-fun e!2826989 () Bool)

(assert (=> d!1401566 (=> res!1890188 e!2826989)))

(assert (=> d!1401566 (= res!1890188 (and ((_ is Cons!50732) (t!357818 newBucket!178)) (= (_1!28895 (h!56607 (t!357818 newBucket!178))) (_1!28895 (h!56607 newBucket!178)))))))

(assert (=> d!1401566 (= (containsKey!1856 (t!357818 newBucket!178) (_1!28895 (h!56607 newBucket!178))) e!2826989)))

(declare-fun b!4536778 () Bool)

(declare-fun e!2826990 () Bool)

(assert (=> b!4536778 (= e!2826989 e!2826990)))

(declare-fun res!1890189 () Bool)

(assert (=> b!4536778 (=> (not res!1890189) (not e!2826990))))

(assert (=> b!4536778 (= res!1890189 ((_ is Cons!50732) (t!357818 newBucket!178)))))

(declare-fun b!4536779 () Bool)

(assert (=> b!4536779 (= e!2826990 (containsKey!1856 (t!357818 (t!357818 newBucket!178)) (_1!28895 (h!56607 newBucket!178))))))

(assert (= (and d!1401566 (not res!1890188)) b!4536778))

(assert (= (and b!4536778 res!1890189) b!4536779))

(declare-fun m!5299833 () Bool)

(assert (=> b!4536779 m!5299833))

(assert (=> b!4535329 d!1401566))

(declare-fun d!1401568 () Bool)

(declare-fun res!1890190 () Bool)

(declare-fun e!2826991 () Bool)

(assert (=> d!1401568 (=> res!1890190 e!2826991)))

(assert (=> d!1401568 (= res!1890190 ((_ is Nil!50733) (t!357819 (toList!4392 lm!1477))))))

(assert (=> d!1401568 (= (forall!10329 (t!357819 (toList!4392 lm!1477)) lambda!175213) e!2826991)))

(declare-fun b!4536780 () Bool)

(declare-fun e!2826992 () Bool)

(assert (=> b!4536780 (= e!2826991 e!2826992)))

(declare-fun res!1890191 () Bool)

(assert (=> b!4536780 (=> (not res!1890191) (not e!2826992))))

(assert (=> b!4536780 (= res!1890191 (dynLambda!21203 lambda!175213 (h!56608 (t!357819 (toList!4392 lm!1477)))))))

(declare-fun b!4536781 () Bool)

(assert (=> b!4536781 (= e!2826992 (forall!10329 (t!357819 (t!357819 (toList!4392 lm!1477))) lambda!175213))))

(assert (= (and d!1401568 (not res!1890190)) b!4536780))

(assert (= (and b!4536780 res!1890191) b!4536781))

(declare-fun b_lambda!157359 () Bool)

(assert (=> (not b_lambda!157359) (not b!4536780)))

(declare-fun m!5299835 () Bool)

(assert (=> b!4536780 m!5299835))

(declare-fun m!5299837 () Bool)

(assert (=> b!4536781 m!5299837))

(assert (=> b!4535409 d!1401568))

(declare-fun d!1401570 () Bool)

(declare-fun lt!1711707 () List!50856)

(assert (=> d!1401570 (not (containsKey!1856 lt!1711707 key!3287))))

(declare-fun e!2826994 () List!50856)

(assert (=> d!1401570 (= lt!1711707 e!2826994)))

(declare-fun c!774833 () Bool)

(assert (=> d!1401570 (= c!774833 (and ((_ is Cons!50732) (t!357818 lt!1710434)) (= (_1!28895 (h!56607 (t!357818 lt!1710434))) key!3287)))))

(assert (=> d!1401570 (noDuplicateKeys!1192 (t!357818 lt!1710434))))

(assert (=> d!1401570 (= (removePairForKey!819 (t!357818 lt!1710434) key!3287) lt!1711707)))

(declare-fun b!4536784 () Bool)

(declare-fun e!2826993 () List!50856)

(assert (=> b!4536784 (= e!2826993 (Cons!50732 (h!56607 (t!357818 lt!1710434)) (removePairForKey!819 (t!357818 (t!357818 lt!1710434)) key!3287)))))

(declare-fun b!4536783 () Bool)

(assert (=> b!4536783 (= e!2826994 e!2826993)))

(declare-fun c!774834 () Bool)

(assert (=> b!4536783 (= c!774834 ((_ is Cons!50732) (t!357818 lt!1710434)))))

(declare-fun b!4536782 () Bool)

(assert (=> b!4536782 (= e!2826994 (t!357818 (t!357818 lt!1710434)))))

(declare-fun b!4536785 () Bool)

(assert (=> b!4536785 (= e!2826993 Nil!50732)))

(assert (= (and d!1401570 c!774833) b!4536782))

(assert (= (and d!1401570 (not c!774833)) b!4536783))

(assert (= (and b!4536783 c!774834) b!4536784))

(assert (= (and b!4536783 (not c!774834)) b!4536785))

(declare-fun m!5299839 () Bool)

(assert (=> d!1401570 m!5299839))

(assert (=> d!1401570 m!5299155))

(declare-fun m!5299841 () Bool)

(assert (=> b!4536784 m!5299841))

(assert (=> b!4535585 d!1401570))

(declare-fun d!1401572 () Bool)

(declare-fun choose!29843 (Hashable!5587 K!12120) (_ BitVec 64))

(assert (=> d!1401572 (= (hash!2899 hashF!1107 key!3287) (choose!29843 hashF!1107 key!3287))))

(declare-fun bs!873496 () Bool)

(assert (= bs!873496 d!1401572))

(declare-fun m!5299843 () Bool)

(assert (=> bs!873496 m!5299843))

(assert (=> d!1400848 d!1401572))

(declare-fun d!1401574 () Bool)

(declare-fun e!2826997 () Bool)

(assert (=> d!1401574 e!2826997))

(declare-fun res!1890192 () Bool)

(assert (=> d!1401574 (=> res!1890192 e!2826997)))

(declare-fun e!2826999 () Bool)

(assert (=> d!1401574 (= res!1890192 e!2826999)))

(declare-fun res!1890193 () Bool)

(assert (=> d!1401574 (=> (not res!1890193) (not e!2826999))))

(declare-fun lt!1711714 () Bool)

(assert (=> d!1401574 (= res!1890193 (not lt!1711714))))

(declare-fun lt!1711709 () Bool)

(assert (=> d!1401574 (= lt!1711714 lt!1711709)))

(declare-fun lt!1711708 () Unit!97630)

(declare-fun e!2826996 () Unit!97630)

(assert (=> d!1401574 (= lt!1711708 e!2826996)))

(declare-fun c!774835 () Bool)

(assert (=> d!1401574 (= c!774835 lt!1711709)))

(assert (=> d!1401574 (= lt!1711709 (containsKey!1859 (toList!4391 lt!1710876) key!3287))))

(assert (=> d!1401574 (= (contains!13513 lt!1710876 key!3287) lt!1711714)))

(declare-fun b!4536786 () Bool)

(declare-fun lt!1711715 () Unit!97630)

(assert (=> b!4536786 (= e!2826996 lt!1711715)))

(declare-fun lt!1711710 () Unit!97630)

(assert (=> b!4536786 (= lt!1711710 (lemmaContainsKeyImpliesGetValueByKeyDefined!1040 (toList!4391 lt!1710876) key!3287))))

(assert (=> b!4536786 (isDefined!8463 (getValueByKey!1137 (toList!4391 lt!1710876) key!3287))))

(declare-fun lt!1711712 () Unit!97630)

(assert (=> b!4536786 (= lt!1711712 lt!1711710)))

(assert (=> b!4536786 (= lt!1711715 (lemmaInListThenGetKeysListContains!483 (toList!4391 lt!1710876) key!3287))))

(declare-fun call!316335 () Bool)

(assert (=> b!4536786 call!316335))

(declare-fun b!4536787 () Bool)

(assert (=> b!4536787 false))

(declare-fun lt!1711711 () Unit!97630)

(declare-fun lt!1711713 () Unit!97630)

(assert (=> b!4536787 (= lt!1711711 lt!1711713)))

(assert (=> b!4536787 (containsKey!1859 (toList!4391 lt!1710876) key!3287)))

(assert (=> b!4536787 (= lt!1711713 (lemmaInGetKeysListThenContainsKey!486 (toList!4391 lt!1710876) key!3287))))

(declare-fun e!2826998 () Unit!97630)

(declare-fun Unit!97977 () Unit!97630)

(assert (=> b!4536787 (= e!2826998 Unit!97977)))

(declare-fun bm!316330 () Bool)

(declare-fun e!2827000 () List!50859)

(assert (=> bm!316330 (= call!316335 (contains!13515 e!2827000 key!3287))))

(declare-fun c!774837 () Bool)

(assert (=> bm!316330 (= c!774837 c!774835)))

(declare-fun b!4536788 () Bool)

(declare-fun e!2826995 () Bool)

(assert (=> b!4536788 (= e!2826997 e!2826995)))

(declare-fun res!1890194 () Bool)

(assert (=> b!4536788 (=> (not res!1890194) (not e!2826995))))

(assert (=> b!4536788 (= res!1890194 (isDefined!8463 (getValueByKey!1137 (toList!4391 lt!1710876) key!3287)))))

(declare-fun b!4536789 () Bool)

(assert (=> b!4536789 (= e!2827000 (keys!17648 lt!1710876))))

(declare-fun b!4536790 () Bool)

(assert (=> b!4536790 (= e!2826996 e!2826998)))

(declare-fun c!774836 () Bool)

(assert (=> b!4536790 (= c!774836 call!316335)))

(declare-fun b!4536791 () Bool)

(declare-fun Unit!97978 () Unit!97630)

(assert (=> b!4536791 (= e!2826998 Unit!97978)))

(declare-fun b!4536792 () Bool)

(assert (=> b!4536792 (= e!2827000 (getKeysList!487 (toList!4391 lt!1710876)))))

(declare-fun b!4536793 () Bool)

(assert (=> b!4536793 (= e!2826995 (contains!13515 (keys!17648 lt!1710876) key!3287))))

(declare-fun b!4536794 () Bool)

(assert (=> b!4536794 (= e!2826999 (not (contains!13515 (keys!17648 lt!1710876) key!3287)))))

(assert (= (and d!1401574 c!774835) b!4536786))

(assert (= (and d!1401574 (not c!774835)) b!4536790))

(assert (= (and b!4536790 c!774836) b!4536787))

(assert (= (and b!4536790 (not c!774836)) b!4536791))

(assert (= (or b!4536786 b!4536790) bm!316330))

(assert (= (and bm!316330 c!774837) b!4536792))

(assert (= (and bm!316330 (not c!774837)) b!4536789))

(assert (= (and d!1401574 res!1890193) b!4536794))

(assert (= (and d!1401574 (not res!1890192)) b!4536788))

(assert (= (and b!4536788 res!1890194) b!4536793))

(assert (=> b!4536793 m!5297457))

(assert (=> b!4536793 m!5297457))

(declare-fun m!5299845 () Bool)

(assert (=> b!4536793 m!5299845))

(declare-fun m!5299847 () Bool)

(assert (=> b!4536787 m!5299847))

(declare-fun m!5299849 () Bool)

(assert (=> b!4536787 m!5299849))

(assert (=> b!4536789 m!5297457))

(assert (=> b!4536794 m!5297457))

(assert (=> b!4536794 m!5297457))

(assert (=> b!4536794 m!5299845))

(declare-fun m!5299851 () Bool)

(assert (=> b!4536788 m!5299851))

(assert (=> b!4536788 m!5299851))

(declare-fun m!5299853 () Bool)

(assert (=> b!4536788 m!5299853))

(declare-fun m!5299855 () Bool)

(assert (=> bm!316330 m!5299855))

(assert (=> b!4536792 m!5297675))

(declare-fun m!5299857 () Bool)

(assert (=> b!4536786 m!5299857))

(assert (=> b!4536786 m!5299851))

(assert (=> b!4536786 m!5299851))

(assert (=> b!4536786 m!5299853))

(declare-fun m!5299859 () Bool)

(assert (=> b!4536786 m!5299859))

(assert (=> d!1401574 m!5299847))

(assert (=> d!1400846 d!1401574))

(declare-fun bm!316331 () Bool)

(declare-fun call!316337 () (InoxSet tuple2!51202))

(declare-fun lt!1711719 () List!50856)

(assert (=> bm!316331 (= call!316337 (content!8420 lt!1711719))))

(declare-fun b!4536795 () Bool)

(declare-fun res!1890195 () Bool)

(declare-fun e!2827005 () Bool)

(assert (=> b!4536795 (=> (not res!1890195) (not e!2827005))))

(assert (=> b!4536795 (= res!1890195 (not (containsKey!1859 lt!1711719 key!3287)))))

(declare-fun b!4536797 () Bool)

(declare-fun e!2827007 () Bool)

(assert (=> b!4536797 (= e!2827005 e!2827007)))

(declare-fun c!774838 () Bool)

(assert (=> b!4536797 (= c!774838 (containsKey!1859 (toList!4391 lt!1710447) key!3287))))

(declare-fun b!4536798 () Bool)

(declare-fun e!2827002 () Unit!97630)

(declare-fun Unit!97979 () Unit!97630)

(assert (=> b!4536798 (= e!2827002 Unit!97979)))

(declare-fun lt!1711728 () Unit!97630)

(assert (=> b!4536798 (= lt!1711728 (lemmaInGetKeysListThenContainsKey!486 (t!357818 (toList!4391 lt!1710447)) (_1!28895 (h!56607 (toList!4391 lt!1710447)))))))

(declare-fun call!316338 () Bool)

(assert (=> b!4536798 call!316338))

(declare-fun lt!1711722 () Unit!97630)

(assert (=> b!4536798 (= lt!1711722 lt!1711728)))

(assert (=> b!4536798 false))

(declare-fun b!4536799 () Bool)

(declare-fun res!1890197 () Bool)

(assert (=> b!4536799 (=> (not res!1890197) (not e!2827005))))

(assert (=> b!4536799 (= res!1890197 (= (content!8421 (getKeysList!487 lt!1711719)) ((_ map and) (content!8421 (getKeysList!487 (toList!4391 lt!1710447))) ((_ map not) (store ((as const (Array K!12120 Bool)) false) key!3287 true)))))))

(declare-fun bm!316332 () Bool)

(declare-fun call!316339 () (InoxSet tuple2!51202))

(assert (=> bm!316332 (= call!316339 (content!8420 (toList!4391 lt!1710447)))))

(declare-fun b!4536800 () Bool)

(declare-fun lt!1711729 () Unit!97630)

(declare-fun e!2827009 () Unit!97630)

(assert (=> b!4536800 (= lt!1711729 e!2827009)))

(declare-fun c!774844 () Bool)

(declare-fun call!316340 () Bool)

(assert (=> b!4536800 (= c!774844 call!316340)))

(declare-fun lt!1711731 () Unit!97630)

(assert (=> b!4536800 (= lt!1711731 e!2827002)))

(declare-fun c!774839 () Bool)

(assert (=> b!4536800 (= c!774839 (contains!13515 (getKeysList!487 (t!357818 (toList!4391 lt!1710447))) (_1!28895 (h!56607 (toList!4391 lt!1710447)))))))

(declare-fun lt!1711730 () List!50856)

(assert (=> b!4536800 (= lt!1711730 ($colon$colon!961 (removePresrvNoDuplicatedKeys!162 (t!357818 (toList!4391 lt!1710447)) key!3287) (h!56607 (toList!4391 lt!1710447))))))

(declare-fun e!2827004 () List!50856)

(assert (=> b!4536800 (= e!2827004 lt!1711730)))

(declare-fun bm!316333 () Bool)

(declare-fun call!316336 () (InoxSet tuple2!51202))

(assert (=> bm!316333 (= call!316336 (content!8420 (t!357818 (toList!4391 lt!1710447))))))

(declare-fun b!4536801 () Bool)

(declare-fun e!2827001 () List!50856)

(assert (=> b!4536801 (= e!2827001 (t!357818 (toList!4391 lt!1710447)))))

(declare-fun b!4536802 () Bool)

(assert (=> b!4536802 (= e!2827004 Nil!50732)))

(declare-fun b!4536803 () Bool)

(declare-fun call!316341 () (InoxSet tuple2!51202))

(assert (=> b!4536803 (= e!2827007 (= call!316337 call!316341))))

(declare-fun b!4536804 () Bool)

(assert (=> b!4536804 (= call!316336 ((_ map and) call!316339 ((_ map not) (store ((as const (Array tuple2!51202 Bool)) false) (tuple2!51203 key!3287 (get!16670 (getValueByKey!1137 (toList!4391 lt!1710447) key!3287))) true))))))

(declare-fun lt!1711733 () Unit!97630)

(declare-fun e!2827003 () Unit!97630)

(assert (=> b!4536804 (= lt!1711733 e!2827003)))

(declare-fun c!774842 () Bool)

(assert (=> b!4536804 (= c!774842 (contains!13517 (t!357818 (toList!4391 lt!1710447)) (tuple2!51203 key!3287 (get!16670 (getValueByKey!1137 (toList!4391 lt!1710447) key!3287)))))))

(declare-fun e!2827008 () Unit!97630)

(declare-fun Unit!97980 () Unit!97630)

(assert (=> b!4536804 (= e!2827008 Unit!97980)))

(declare-fun b!4536805 () Bool)

(declare-fun e!2827006 () List!50856)

(assert (=> b!4536805 (= e!2827006 e!2827004)))

(declare-fun c!774843 () Bool)

(assert (=> b!4536805 (= c!774843 (and ((_ is Cons!50732) (toList!4391 lt!1710447)) (not (= (_1!28895 (h!56607 (toList!4391 lt!1710447))) key!3287))))))

(declare-fun b!4536806 () Bool)

(assert (=> b!4536806 (= e!2827007 (= call!316337 ((_ map and) call!316341 ((_ map not) (store ((as const (Array tuple2!51202 Bool)) false) (tuple2!51203 key!3287 (get!16670 (getValueByKey!1137 (toList!4391 lt!1710447) key!3287))) true)))))))

(assert (=> b!4536806 (containsKey!1859 (toList!4391 lt!1710447) key!3287)))

(declare-fun lt!1711721 () Unit!97630)

(assert (=> b!4536806 (= lt!1711721 (lemmaContainsKeyImpliesGetValueByKeyDefined!1040 (toList!4391 lt!1710447) key!3287))))

(assert (=> b!4536806 (isDefined!8463 (getValueByKey!1137 (toList!4391 lt!1710447) key!3287))))

(declare-fun lt!1711724 () Unit!97630)

(assert (=> b!4536806 (= lt!1711724 lt!1711721)))

(declare-fun b!4536807 () Bool)

(declare-fun Unit!97981 () Unit!97630)

(assert (=> b!4536807 (= e!2827003 Unit!97981)))

(declare-fun b!4536808 () Bool)

(declare-fun Unit!97982 () Unit!97630)

(assert (=> b!4536808 (= e!2827003 Unit!97982)))

(declare-fun lt!1711718 () V!12366)

(assert (=> b!4536808 (= lt!1711718 (get!16670 (getValueByKey!1137 (toList!4391 lt!1710447) key!3287)))))

(declare-fun lt!1711720 () K!12120)

(assert (=> b!4536808 (= lt!1711720 key!3287)))

(declare-fun lt!1711726 () K!12120)

(assert (=> b!4536808 (= lt!1711726 key!3287)))

(declare-fun lt!1711725 () Unit!97630)

(assert (=> b!4536808 (= lt!1711725 (lemmaContainsTupleThenContainsKey!75 (t!357818 (toList!4391 lt!1710447)) lt!1711720 (get!16670 (getValueByKey!1137 (toList!4391 lt!1710447) key!3287))))))

(assert (=> b!4536808 call!316340))

(declare-fun lt!1711716 () Unit!97630)

(assert (=> b!4536808 (= lt!1711716 lt!1711725)))

(assert (=> b!4536808 false))

(declare-fun bm!316334 () Bool)

(declare-fun c!774841 () Bool)

(assert (=> bm!316334 (= call!316340 (containsKey!1859 e!2827001 (ite c!774841 lt!1711720 (_1!28895 (h!56607 (toList!4391 lt!1710447))))))))

(declare-fun c!774845 () Bool)

(assert (=> bm!316334 (= c!774845 c!774841)))

(declare-fun d!1401576 () Bool)

(assert (=> d!1401576 e!2827005))

(declare-fun res!1890196 () Bool)

(assert (=> d!1401576 (=> (not res!1890196) (not e!2827005))))

(assert (=> d!1401576 (= res!1890196 (invariantList!1039 lt!1711719))))

(assert (=> d!1401576 (= lt!1711719 e!2827006)))

(assert (=> d!1401576 (= c!774841 (and ((_ is Cons!50732) (toList!4391 lt!1710447)) (= (_1!28895 (h!56607 (toList!4391 lt!1710447))) key!3287)))))

(assert (=> d!1401576 (invariantList!1039 (toList!4391 lt!1710447))))

(assert (=> d!1401576 (= (removePresrvNoDuplicatedKeys!162 (toList!4391 lt!1710447) key!3287) lt!1711719)))

(declare-fun b!4536796 () Bool)

(declare-fun Unit!97983 () Unit!97630)

(assert (=> b!4536796 (= e!2827009 Unit!97983)))

(declare-fun b!4536809 () Bool)

(declare-fun Unit!97984 () Unit!97630)

(assert (=> b!4536809 (= e!2827009 Unit!97984)))

(declare-fun lt!1711723 () List!50856)

(assert (=> b!4536809 (= lt!1711723 (removePresrvNoDuplicatedKeys!162 (t!357818 (toList!4391 lt!1710447)) key!3287))))

(declare-fun lt!1711717 () Unit!97630)

(assert (=> b!4536809 (= lt!1711717 (lemmaInListThenGetKeysListContains!483 lt!1711723 (_1!28895 (h!56607 (toList!4391 lt!1710447)))))))

(assert (=> b!4536809 (contains!13515 (getKeysList!487 lt!1711723) (_1!28895 (h!56607 (toList!4391 lt!1710447))))))

(declare-fun lt!1711727 () Unit!97630)

(assert (=> b!4536809 (= lt!1711727 lt!1711717)))

(assert (=> b!4536809 false))

(declare-fun b!4536810 () Bool)

(assert (=> b!4536810 (= e!2827006 (t!357818 (toList!4391 lt!1710447)))))

(declare-fun c!774840 () Bool)

(assert (=> b!4536810 (= c!774840 call!316338)))

(declare-fun lt!1711732 () Unit!97630)

(assert (=> b!4536810 (= lt!1711732 e!2827008)))

(declare-fun bm!316335 () Bool)

(assert (=> bm!316335 (= call!316341 (content!8420 (toList!4391 lt!1710447)))))

(declare-fun b!4536811 () Bool)

(assert (=> b!4536811 (= e!2827001 (removePresrvNoDuplicatedKeys!162 (t!357818 (toList!4391 lt!1710447)) key!3287))))

(declare-fun b!4536812 () Bool)

(assert (=> b!4536812 (= call!316336 call!316339)))

(declare-fun Unit!97985 () Unit!97630)

(assert (=> b!4536812 (= e!2827008 Unit!97985)))

(declare-fun b!4536813 () Bool)

(declare-fun Unit!97986 () Unit!97630)

(assert (=> b!4536813 (= e!2827002 Unit!97986)))

(declare-fun bm!316336 () Bool)

(assert (=> bm!316336 (= call!316338 (containsKey!1859 (ite c!774841 (toList!4391 lt!1710447) (t!357818 (toList!4391 lt!1710447))) (ite c!774841 key!3287 (_1!28895 (h!56607 (toList!4391 lt!1710447))))))))

(assert (= (and d!1401576 c!774841) b!4536810))

(assert (= (and d!1401576 (not c!774841)) b!4536805))

(assert (= (and b!4536810 c!774840) b!4536804))

(assert (= (and b!4536810 (not c!774840)) b!4536812))

(assert (= (and b!4536804 c!774842) b!4536808))

(assert (= (and b!4536804 (not c!774842)) b!4536807))

(assert (= (or b!4536804 b!4536812) bm!316333))

(assert (= (or b!4536804 b!4536812) bm!316332))

(assert (= (and b!4536805 c!774843) b!4536800))

(assert (= (and b!4536805 (not c!774843)) b!4536802))

(assert (= (and b!4536800 c!774839) b!4536798))

(assert (= (and b!4536800 (not c!774839)) b!4536813))

(assert (= (and b!4536800 c!774844) b!4536809))

(assert (= (and b!4536800 (not c!774844)) b!4536796))

(assert (= (or b!4536810 b!4536798) bm!316336))

(assert (= (or b!4536808 b!4536800) bm!316334))

(assert (= (and bm!316334 c!774845) b!4536801))

(assert (= (and bm!316334 (not c!774845)) b!4536811))

(assert (= (and d!1401576 res!1890196) b!4536795))

(assert (= (and b!4536795 res!1890195) b!4536799))

(assert (= (and b!4536799 res!1890197) b!4536797))

(assert (= (and b!4536797 c!774838) b!4536806))

(assert (= (and b!4536797 (not c!774838)) b!4536803))

(assert (= (or b!4536806 b!4536803) bm!316331))

(assert (= (or b!4536806 b!4536803) bm!316335))

(declare-fun m!5299889 () Bool)

(assert (=> d!1401576 m!5299889))

(assert (=> d!1401576 m!5298517))

(assert (=> bm!316333 m!5298257))

(declare-fun m!5299891 () Bool)

(assert (=> bm!316336 m!5299891))

(declare-fun m!5299893 () Bool)

(assert (=> bm!316334 m!5299893))

(assert (=> b!4536808 m!5296953))

(assert (=> b!4536808 m!5296953))

(declare-fun m!5299895 () Bool)

(assert (=> b!4536808 m!5299895))

(assert (=> b!4536808 m!5299895))

(declare-fun m!5299897 () Bool)

(assert (=> b!4536808 m!5299897))

(assert (=> bm!316332 m!5297019))

(declare-fun m!5299899 () Bool)

(assert (=> bm!316331 m!5299899))

(assert (=> b!4536797 m!5296949))

(assert (=> b!4536804 m!5296953))

(assert (=> b!4536804 m!5296953))

(assert (=> b!4536804 m!5299895))

(declare-fun m!5299901 () Bool)

(assert (=> b!4536804 m!5299901))

(declare-fun m!5299905 () Bool)

(assert (=> b!4536804 m!5299905))

(assert (=> b!4536806 m!5296953))

(assert (=> b!4536806 m!5299895))

(assert (=> b!4536806 m!5296953))

(assert (=> b!4536806 m!5296955))

(assert (=> b!4536806 m!5299901))

(assert (=> b!4536806 m!5296949))

(assert (=> b!4536806 m!5296961))

(assert (=> b!4536806 m!5296953))

(declare-fun m!5299909 () Bool)

(assert (=> b!4536811 m!5299909))

(declare-fun m!5299911 () Bool)

(assert (=> b!4536798 m!5299911))

(declare-fun m!5299913 () Bool)

(assert (=> b!4536795 m!5299913))

(assert (=> b!4536799 m!5296959))

(declare-fun m!5299915 () Bool)

(assert (=> b!4536799 m!5299915))

(declare-fun m!5299917 () Bool)

(assert (=> b!4536799 m!5299917))

(assert (=> b!4536799 m!5299917))

(declare-fun m!5299919 () Bool)

(assert (=> b!4536799 m!5299919))

(assert (=> b!4536799 m!5296667))

(assert (=> b!4536799 m!5296959))

(assert (=> b!4536800 m!5298497))

(assert (=> b!4536800 m!5298497))

(assert (=> b!4536800 m!5298505))

(assert (=> b!4536800 m!5299909))

(assert (=> b!4536800 m!5299909))

(declare-fun m!5299925 () Bool)

(assert (=> b!4536800 m!5299925))

(assert (=> bm!316335 m!5297019))

(assert (=> b!4536809 m!5299909))

(declare-fun m!5299927 () Bool)

(assert (=> b!4536809 m!5299927))

(declare-fun m!5299929 () Bool)

(assert (=> b!4536809 m!5299929))

(assert (=> b!4536809 m!5299929))

(declare-fun m!5299931 () Bool)

(assert (=> b!4536809 m!5299931))

(assert (=> d!1400846 d!1401576))

(declare-fun d!1401586 () Bool)

(declare-fun e!2827023 () Bool)

(assert (=> d!1401586 e!2827023))

(declare-fun res!1890204 () Bool)

(assert (=> d!1401586 (=> res!1890204 e!2827023)))

(declare-fun e!2827025 () Bool)

(assert (=> d!1401586 (= res!1890204 e!2827025)))

(declare-fun res!1890205 () Bool)

(assert (=> d!1401586 (=> (not res!1890205) (not e!2827025))))

(declare-fun lt!1711750 () Bool)

(assert (=> d!1401586 (= res!1890205 (not lt!1711750))))

(declare-fun lt!1711745 () Bool)

(assert (=> d!1401586 (= lt!1711750 lt!1711745)))

(declare-fun lt!1711744 () Unit!97630)

(declare-fun e!2827022 () Unit!97630)

(assert (=> d!1401586 (= lt!1711744 e!2827022)))

(declare-fun c!774851 () Bool)

(assert (=> d!1401586 (= c!774851 lt!1711745)))

(assert (=> d!1401586 (= lt!1711745 (containsKey!1859 (toList!4391 lt!1710580) (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(assert (=> d!1401586 (= (contains!13513 lt!1710580 (_1!28895 (h!56607 (_2!28896 lt!1710445)))) lt!1711750)))

(declare-fun b!4536830 () Bool)

(declare-fun lt!1711751 () Unit!97630)

(assert (=> b!4536830 (= e!2827022 lt!1711751)))

(declare-fun lt!1711746 () Unit!97630)

(assert (=> b!4536830 (= lt!1711746 (lemmaContainsKeyImpliesGetValueByKeyDefined!1040 (toList!4391 lt!1710580) (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(assert (=> b!4536830 (isDefined!8463 (getValueByKey!1137 (toList!4391 lt!1710580) (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun lt!1711748 () Unit!97630)

(assert (=> b!4536830 (= lt!1711748 lt!1711746)))

(assert (=> b!4536830 (= lt!1711751 (lemmaInListThenGetKeysListContains!483 (toList!4391 lt!1710580) (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun call!316343 () Bool)

(assert (=> b!4536830 call!316343))

(declare-fun b!4536831 () Bool)

(assert (=> b!4536831 false))

(declare-fun lt!1711747 () Unit!97630)

(declare-fun lt!1711749 () Unit!97630)

(assert (=> b!4536831 (= lt!1711747 lt!1711749)))

(assert (=> b!4536831 (containsKey!1859 (toList!4391 lt!1710580) (_1!28895 (h!56607 (_2!28896 lt!1710445))))))

(assert (=> b!4536831 (= lt!1711749 (lemmaInGetKeysListThenContainsKey!486 (toList!4391 lt!1710580) (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun e!2827024 () Unit!97630)

(declare-fun Unit!97987 () Unit!97630)

(assert (=> b!4536831 (= e!2827024 Unit!97987)))

(declare-fun bm!316338 () Bool)

(declare-fun e!2827026 () List!50859)

(assert (=> bm!316338 (= call!316343 (contains!13515 e!2827026 (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun c!774853 () Bool)

(assert (=> bm!316338 (= c!774853 c!774851)))

(declare-fun b!4536832 () Bool)

(declare-fun e!2827021 () Bool)

(assert (=> b!4536832 (= e!2827023 e!2827021)))

(declare-fun res!1890206 () Bool)

(assert (=> b!4536832 (=> (not res!1890206) (not e!2827021))))

(assert (=> b!4536832 (= res!1890206 (isDefined!8463 (getValueByKey!1137 (toList!4391 lt!1710580) (_1!28895 (h!56607 (_2!28896 lt!1710445))))))))

(declare-fun b!4536833 () Bool)

(assert (=> b!4536833 (= e!2827026 (keys!17648 lt!1710580))))

(declare-fun b!4536834 () Bool)

(assert (=> b!4536834 (= e!2827022 e!2827024)))

(declare-fun c!774852 () Bool)

(assert (=> b!4536834 (= c!774852 call!316343)))

(declare-fun b!4536835 () Bool)

(declare-fun Unit!97988 () Unit!97630)

(assert (=> b!4536835 (= e!2827024 Unit!97988)))

(declare-fun b!4536836 () Bool)

(assert (=> b!4536836 (= e!2827026 (getKeysList!487 (toList!4391 lt!1710580)))))

(declare-fun b!4536837 () Bool)

(assert (=> b!4536837 (= e!2827021 (contains!13515 (keys!17648 lt!1710580) (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun b!4536838 () Bool)

(assert (=> b!4536838 (= e!2827025 (not (contains!13515 (keys!17648 lt!1710580) (_1!28895 (h!56607 (_2!28896 lt!1710445))))))))

(assert (= (and d!1401586 c!774851) b!4536830))

(assert (= (and d!1401586 (not c!774851)) b!4536834))

(assert (= (and b!4536834 c!774852) b!4536831))

(assert (= (and b!4536834 (not c!774852)) b!4536835))

(assert (= (or b!4536830 b!4536834) bm!316338))

(assert (= (and bm!316338 c!774853) b!4536836))

(assert (= (and bm!316338 (not c!774853)) b!4536833))

(assert (= (and d!1401586 res!1890205) b!4536838))

(assert (= (and d!1401586 (not res!1890204)) b!4536832))

(assert (= (and b!4536832 res!1890206) b!4536837))

(declare-fun m!5299943 () Bool)

(assert (=> b!4536837 m!5299943))

(assert (=> b!4536837 m!5299943))

(declare-fun m!5299945 () Bool)

(assert (=> b!4536837 m!5299945))

(declare-fun m!5299947 () Bool)

(assert (=> b!4536831 m!5299947))

(declare-fun m!5299949 () Bool)

(assert (=> b!4536831 m!5299949))

(assert (=> b!4536833 m!5299943))

(assert (=> b!4536838 m!5299943))

(assert (=> b!4536838 m!5299943))

(assert (=> b!4536838 m!5299945))

(declare-fun m!5299951 () Bool)

(assert (=> b!4536832 m!5299951))

(assert (=> b!4536832 m!5299951))

(declare-fun m!5299955 () Bool)

(assert (=> b!4536832 m!5299955))

(declare-fun m!5299959 () Bool)

(assert (=> bm!316338 m!5299959))

(declare-fun m!5299963 () Bool)

(assert (=> b!4536836 m!5299963))

(declare-fun m!5299965 () Bool)

(assert (=> b!4536830 m!5299965))

(assert (=> b!4536830 m!5299951))

(assert (=> b!4536830 m!5299951))

(assert (=> b!4536830 m!5299955))

(declare-fun m!5299967 () Bool)

(assert (=> b!4536830 m!5299967))

(assert (=> d!1401586 m!5299947))

(assert (=> b!4535309 d!1401586))

(declare-fun d!1401596 () Bool)

(declare-fun res!1890215 () Bool)

(declare-fun e!2827035 () Bool)

(assert (=> d!1401596 (=> res!1890215 e!2827035)))

(assert (=> d!1401596 (= res!1890215 ((_ is Nil!50732) (toList!4391 lt!1710580)))))

(assert (=> d!1401596 (= (forall!10330 (toList!4391 lt!1710580) lambda!175267) e!2827035)))

(declare-fun b!4536847 () Bool)

(declare-fun e!2827036 () Bool)

(assert (=> b!4536847 (= e!2827035 e!2827036)))

(declare-fun res!1890216 () Bool)

(assert (=> b!4536847 (=> (not res!1890216) (not e!2827036))))

(assert (=> b!4536847 (= res!1890216 (dynLambda!21205 lambda!175267 (h!56607 (toList!4391 lt!1710580))))))

(declare-fun b!4536848 () Bool)

(assert (=> b!4536848 (= e!2827036 (forall!10330 (t!357818 (toList!4391 lt!1710580)) lambda!175267))))

(assert (= (and d!1401596 (not res!1890215)) b!4536847))

(assert (= (and b!4536847 res!1890216) b!4536848))

(declare-fun b_lambda!157367 () Bool)

(assert (=> (not b_lambda!157367) (not b!4536847)))

(declare-fun m!5299973 () Bool)

(assert (=> b!4536847 m!5299973))

(declare-fun m!5299975 () Bool)

(assert (=> b!4536848 m!5299975))

(assert (=> b!4535309 d!1401596))

(declare-fun d!1401600 () Bool)

(assert (=> d!1401600 (dynLambda!21205 lambda!175267 (h!56607 (_2!28896 lt!1710445)))))

(declare-fun lt!1711753 () Unit!97630)

(assert (=> d!1401600 (= lt!1711753 (choose!29824 (toList!4391 lt!1710580) lambda!175267 (h!56607 (_2!28896 lt!1710445))))))

(declare-fun e!2827039 () Bool)

(assert (=> d!1401600 e!2827039))

(declare-fun res!1890217 () Bool)

(assert (=> d!1401600 (=> (not res!1890217) (not e!2827039))))

(assert (=> d!1401600 (= res!1890217 (forall!10330 (toList!4391 lt!1710580) lambda!175267))))

(assert (=> d!1401600 (= (forallContained!2591 (toList!4391 lt!1710580) lambda!175267 (h!56607 (_2!28896 lt!1710445))) lt!1711753)))

(declare-fun b!4536853 () Bool)

(assert (=> b!4536853 (= e!2827039 (contains!13517 (toList!4391 lt!1710580) (h!56607 (_2!28896 lt!1710445))))))

(assert (= (and d!1401600 res!1890217) b!4536853))

(declare-fun b_lambda!157369 () Bool)

(assert (=> (not b_lambda!157369) (not d!1401600)))

(declare-fun m!5299979 () Bool)

(assert (=> d!1401600 m!5299979))

(declare-fun m!5299981 () Bool)

(assert (=> d!1401600 m!5299981))

(assert (=> d!1401600 m!5296893))

(declare-fun m!5299983 () Bool)

(assert (=> b!4536853 m!5299983))

(assert (=> b!4535309 d!1401600))

(declare-fun d!1401606 () Bool)

(declare-fun e!2827042 () Bool)

(assert (=> d!1401606 e!2827042))

(declare-fun res!1890221 () Bool)

(assert (=> d!1401606 (=> (not res!1890221) (not e!2827042))))

(declare-fun lt!1711755 () ListMap!3653)

(assert (=> d!1401606 (= res!1890221 (contains!13513 lt!1711755 (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun lt!1711756 () List!50856)

(assert (=> d!1401606 (= lt!1711755 (ListMap!3654 lt!1711756))))

(declare-fun lt!1711757 () Unit!97630)

(declare-fun lt!1711754 () Unit!97630)

(assert (=> d!1401606 (= lt!1711757 lt!1711754)))

(assert (=> d!1401606 (= (getValueByKey!1137 lt!1711756 (_1!28895 (h!56607 (_2!28896 lt!1710445)))) (Some!11186 (_2!28895 (h!56607 (_2!28896 lt!1710445)))))))

(assert (=> d!1401606 (= lt!1711754 (lemmaContainsTupThenGetReturnValue!713 lt!1711756 (_1!28895 (h!56607 (_2!28896 lt!1710445))) (_2!28895 (h!56607 (_2!28896 lt!1710445)))))))

(assert (=> d!1401606 (= lt!1711756 (insertNoDuplicatedKeys!291 (toList!4391 lt!1710448) (_1!28895 (h!56607 (_2!28896 lt!1710445))) (_2!28895 (h!56607 (_2!28896 lt!1710445)))))))

(assert (=> d!1401606 (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1711755)))

(declare-fun b!4536858 () Bool)

(declare-fun res!1890220 () Bool)

(assert (=> b!4536858 (=> (not res!1890220) (not e!2827042))))

(assert (=> b!4536858 (= res!1890220 (= (getValueByKey!1137 (toList!4391 lt!1711755) (_1!28895 (h!56607 (_2!28896 lt!1710445)))) (Some!11186 (_2!28895 (h!56607 (_2!28896 lt!1710445))))))))

(declare-fun b!4536859 () Bool)

(assert (=> b!4536859 (= e!2827042 (contains!13517 (toList!4391 lt!1711755) (h!56607 (_2!28896 lt!1710445))))))

(assert (= (and d!1401606 res!1890221) b!4536858))

(assert (= (and b!4536858 res!1890220) b!4536859))

(declare-fun m!5299991 () Bool)

(assert (=> d!1401606 m!5299991))

(declare-fun m!5299993 () Bool)

(assert (=> d!1401606 m!5299993))

(declare-fun m!5299995 () Bool)

(assert (=> d!1401606 m!5299995))

(declare-fun m!5299997 () Bool)

(assert (=> d!1401606 m!5299997))

(declare-fun m!5299999 () Bool)

(assert (=> b!4536858 m!5299999))

(declare-fun m!5300001 () Bool)

(assert (=> b!4536859 m!5300001))

(assert (=> b!4535309 d!1401606))

(declare-fun d!1401610 () Bool)

(declare-fun res!1890225 () Bool)

(declare-fun e!2827045 () Bool)

(assert (=> d!1401610 (=> res!1890225 e!2827045)))

(assert (=> d!1401610 (= res!1890225 ((_ is Nil!50732) (toList!4391 lt!1710448)))))

(assert (=> d!1401610 (= (forall!10330 (toList!4391 lt!1710448) lambda!175266) e!2827045)))

(declare-fun b!4536863 () Bool)

(declare-fun e!2827046 () Bool)

(assert (=> b!4536863 (= e!2827045 e!2827046)))

(declare-fun res!1890226 () Bool)

(assert (=> b!4536863 (=> (not res!1890226) (not e!2827046))))

(assert (=> b!4536863 (= res!1890226 (dynLambda!21205 lambda!175266 (h!56607 (toList!4391 lt!1710448))))))

(declare-fun b!4536864 () Bool)

(assert (=> b!4536864 (= e!2827046 (forall!10330 (t!357818 (toList!4391 lt!1710448)) lambda!175266))))

(assert (= (and d!1401610 (not res!1890225)) b!4536863))

(assert (= (and b!4536863 res!1890226) b!4536864))

(declare-fun b_lambda!157371 () Bool)

(assert (=> (not b_lambda!157371) (not b!4536863)))

(declare-fun m!5300003 () Bool)

(assert (=> b!4536863 m!5300003))

(declare-fun m!5300005 () Bool)

(assert (=> b!4536864 m!5300005))

(assert (=> b!4535309 d!1401610))

(declare-fun d!1401612 () Bool)

(declare-fun e!2827049 () Bool)

(assert (=> d!1401612 e!2827049))

(declare-fun res!1890227 () Bool)

(assert (=> d!1401612 (=> res!1890227 e!2827049)))

(declare-fun e!2827051 () Bool)

(assert (=> d!1401612 (= res!1890227 e!2827051)))

(declare-fun res!1890228 () Bool)

(assert (=> d!1401612 (=> (not res!1890228) (not e!2827051))))

(declare-fun lt!1711765 () Bool)

(assert (=> d!1401612 (= res!1890228 (not lt!1711765))))

(declare-fun lt!1711760 () Bool)

(assert (=> d!1401612 (= lt!1711765 lt!1711760)))

(declare-fun lt!1711759 () Unit!97630)

(declare-fun e!2827048 () Unit!97630)

(assert (=> d!1401612 (= lt!1711759 e!2827048)))

(declare-fun c!774857 () Bool)

(assert (=> d!1401612 (= c!774857 lt!1711760)))

(assert (=> d!1401612 (= lt!1711760 (containsKey!1859 (toList!4391 lt!1710578) (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(assert (=> d!1401612 (= (contains!13513 lt!1710578 (_1!28895 (h!56607 (_2!28896 lt!1710445)))) lt!1711765)))

(declare-fun b!4536865 () Bool)

(declare-fun lt!1711766 () Unit!97630)

(assert (=> b!4536865 (= e!2827048 lt!1711766)))

(declare-fun lt!1711761 () Unit!97630)

(assert (=> b!4536865 (= lt!1711761 (lemmaContainsKeyImpliesGetValueByKeyDefined!1040 (toList!4391 lt!1710578) (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(assert (=> b!4536865 (isDefined!8463 (getValueByKey!1137 (toList!4391 lt!1710578) (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun lt!1711763 () Unit!97630)

(assert (=> b!4536865 (= lt!1711763 lt!1711761)))

(assert (=> b!4536865 (= lt!1711766 (lemmaInListThenGetKeysListContains!483 (toList!4391 lt!1710578) (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun call!316344 () Bool)

(assert (=> b!4536865 call!316344))

(declare-fun b!4536866 () Bool)

(assert (=> b!4536866 false))

(declare-fun lt!1711762 () Unit!97630)

(declare-fun lt!1711764 () Unit!97630)

(assert (=> b!4536866 (= lt!1711762 lt!1711764)))

(assert (=> b!4536866 (containsKey!1859 (toList!4391 lt!1710578) (_1!28895 (h!56607 (_2!28896 lt!1710445))))))

(assert (=> b!4536866 (= lt!1711764 (lemmaInGetKeysListThenContainsKey!486 (toList!4391 lt!1710578) (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun e!2827050 () Unit!97630)

(declare-fun Unit!97989 () Unit!97630)

(assert (=> b!4536866 (= e!2827050 Unit!97989)))

(declare-fun bm!316339 () Bool)

(declare-fun e!2827052 () List!50859)

(assert (=> bm!316339 (= call!316344 (contains!13515 e!2827052 (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun c!774859 () Bool)

(assert (=> bm!316339 (= c!774859 c!774857)))

(declare-fun b!4536867 () Bool)

(declare-fun e!2827047 () Bool)

(assert (=> b!4536867 (= e!2827049 e!2827047)))

(declare-fun res!1890229 () Bool)

(assert (=> b!4536867 (=> (not res!1890229) (not e!2827047))))

(assert (=> b!4536867 (= res!1890229 (isDefined!8463 (getValueByKey!1137 (toList!4391 lt!1710578) (_1!28895 (h!56607 (_2!28896 lt!1710445))))))))

(declare-fun b!4536868 () Bool)

(assert (=> b!4536868 (= e!2827052 (keys!17648 lt!1710578))))

(declare-fun b!4536869 () Bool)

(assert (=> b!4536869 (= e!2827048 e!2827050)))

(declare-fun c!774858 () Bool)

(assert (=> b!4536869 (= c!774858 call!316344)))

(declare-fun b!4536870 () Bool)

(declare-fun Unit!97990 () Unit!97630)

(assert (=> b!4536870 (= e!2827050 Unit!97990)))

(declare-fun b!4536871 () Bool)

(assert (=> b!4536871 (= e!2827052 (getKeysList!487 (toList!4391 lt!1710578)))))

(declare-fun b!4536872 () Bool)

(assert (=> b!4536872 (= e!2827047 (contains!13515 (keys!17648 lt!1710578) (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun b!4536873 () Bool)

(assert (=> b!4536873 (= e!2827051 (not (contains!13515 (keys!17648 lt!1710578) (_1!28895 (h!56607 (_2!28896 lt!1710445))))))))

(assert (= (and d!1401612 c!774857) b!4536865))

(assert (= (and d!1401612 (not c!774857)) b!4536869))

(assert (= (and b!4536869 c!774858) b!4536866))

(assert (= (and b!4536869 (not c!774858)) b!4536870))

(assert (= (or b!4536865 b!4536869) bm!316339))

(assert (= (and bm!316339 c!774859) b!4536871))

(assert (= (and bm!316339 (not c!774859)) b!4536868))

(assert (= (and d!1401612 res!1890228) b!4536873))

(assert (= (and d!1401612 (not res!1890227)) b!4536867))

(assert (= (and b!4536867 res!1890229) b!4536872))

(declare-fun m!5300007 () Bool)

(assert (=> b!4536872 m!5300007))

(assert (=> b!4536872 m!5300007))

(declare-fun m!5300009 () Bool)

(assert (=> b!4536872 m!5300009))

(declare-fun m!5300011 () Bool)

(assert (=> b!4536866 m!5300011))

(declare-fun m!5300013 () Bool)

(assert (=> b!4536866 m!5300013))

(assert (=> b!4536868 m!5300007))

(assert (=> b!4536873 m!5300007))

(assert (=> b!4536873 m!5300007))

(assert (=> b!4536873 m!5300009))

(declare-fun m!5300015 () Bool)

(assert (=> b!4536867 m!5300015))

(assert (=> b!4536867 m!5300015))

(declare-fun m!5300017 () Bool)

(assert (=> b!4536867 m!5300017))

(declare-fun m!5300019 () Bool)

(assert (=> bm!316339 m!5300019))

(declare-fun m!5300021 () Bool)

(assert (=> b!4536871 m!5300021))

(declare-fun m!5300025 () Bool)

(assert (=> b!4536865 m!5300025))

(assert (=> b!4536865 m!5300015))

(assert (=> b!4536865 m!5300015))

(assert (=> b!4536865 m!5300017))

(declare-fun m!5300031 () Bool)

(assert (=> b!4536865 m!5300031))

(assert (=> d!1401612 m!5300011))

(assert (=> b!4535309 d!1401612))

(declare-fun bs!873522 () Bool)

(declare-fun d!1401614 () Bool)

(assert (= bs!873522 (and d!1401614 b!4536628)))

(declare-fun lambda!175510 () Int)

(assert (=> bs!873522 (= (= lt!1710578 lt!1711572) (= lambda!175510 lambda!175495))))

(declare-fun bs!873523 () Bool)

(assert (= bs!873523 (and d!1401614 b!4536566)))

(assert (=> bs!873523 (= (= lt!1710578 (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) (= lambda!175510 lambda!175483))))

(declare-fun bs!873524 () Bool)

(assert (= bs!873524 (and d!1401614 d!1400724)))

(assert (=> bs!873524 (not (= lambda!175510 lambda!175312))))

(declare-fun bs!873526 () Bool)

(assert (= bs!873526 (and d!1401614 b!4535309)))

(assert (=> bs!873526 (= lambda!175510 lambda!175267)))

(declare-fun bs!873528 () Bool)

(assert (= bs!873528 (and d!1401614 b!4535797)))

(assert (=> bs!873528 (= (= lt!1710578 lt!1710989) (= lambda!175510 lambda!175373))))

(declare-fun bs!873530 () Bool)

(assert (= bs!873530 (and d!1401614 d!1401484)))

(assert (=> bs!873530 (= (= lt!1710578 lt!1711583) (= lambda!175510 lambda!175496))))

(declare-fun bs!873532 () Bool)

(assert (= bs!873532 (and d!1401614 b!4535625)))

(assert (=> bs!873532 (= (= lt!1710578 lt!1710415) (= lambda!175510 lambda!175349))))

(declare-fun bs!873534 () Bool)

(assert (= bs!873534 (and d!1401614 b!4535622)))

(assert (=> bs!873534 (= (= lt!1710578 lt!1710902) (= lambda!175510 lambda!175351))))

(declare-fun bs!873536 () Bool)

(assert (= bs!873536 (and d!1401614 b!4535669)))

(assert (=> bs!873536 (= (= lt!1710578 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175510 lambda!175360))))

(declare-fun bs!873538 () Bool)

(assert (= bs!873538 (and d!1401614 b!4535542)))

(assert (=> bs!873538 (= (= lt!1710578 lt!1710840) (= lambda!175510 lambda!175341))))

(declare-fun bs!873540 () Bool)

(assert (= bs!873540 (and d!1401614 b!4536291)))

(assert (=> bs!873540 (= (= lt!1710578 lt!1711317) (= lambda!175510 lambda!175439))))

(declare-fun bs!873542 () Bool)

(assert (= bs!873542 (and d!1401614 d!1401348)))

(assert (=> bs!873542 (= (= lt!1710578 lt!1710429) (= lambda!175510 lambda!175464))))

(declare-fun bs!873544 () Bool)

(assert (= bs!873544 (and d!1401614 b!4536264)))

(assert (=> bs!873544 (= (= lt!1710578 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175510 lambda!175428))))

(declare-fun bs!873546 () Bool)

(assert (= bs!873546 (and d!1401614 b!4535832)))

(assert (=> bs!873546 (= (= lt!1710578 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175510 lambda!175377))))

(declare-fun bs!873547 () Bool)

(assert (= bs!873547 (and d!1401614 d!1401018)))

(assert (=> bs!873547 (= (= lt!1710578 lt!1710902) (= lambda!175510 lambda!175389))))

(declare-fun bs!873549 () Bool)

(assert (= bs!873549 (and d!1401614 b!4536261)))

(assert (=> bs!873549 (= (= lt!1710578 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175510 lambda!175429))))

(declare-fun bs!873551 () Bool)

(assert (= bs!873551 (and d!1401614 d!1400816)))

(assert (=> bs!873551 (= (= lt!1710578 lt!1710851) (= lambda!175510 lambda!175344))))

(assert (=> bs!873540 (= (= lt!1710578 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175510 lambda!175438))))

(declare-fun bs!873554 () Bool)

(assert (= bs!873554 (and d!1401614 b!4536342)))

(assert (=> bs!873554 (= (= lt!1710578 (-!418 lt!1710448 key!3287)) (= lambda!175510 lambda!175446))))

(declare-fun bs!873556 () Bool)

(assert (= bs!873556 (and d!1401614 d!1401276)))

(assert (=> bs!873556 (= (= lt!1710578 lt!1711376) (= lambda!175510 lambda!175450))))

(declare-fun bs!873558 () Bool)

(assert (= bs!873558 (and d!1401614 b!4535666)))

(assert (=> bs!873558 (= (= lt!1710578 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175510 lambda!175361))))

(declare-fun bs!873560 () Bool)

(assert (= bs!873560 (and d!1401614 b!4535829)))

(assert (=> bs!873560 (= (= lt!1710578 lt!1711026) (= lambda!175510 lambda!175379))))

(assert (=> bs!873534 (= (= lt!1710578 lt!1710415) (= lambda!175510 lambda!175350))))

(declare-fun bs!873561 () Bool)

(assert (= bs!873561 (and d!1401614 d!1401188)))

(assert (=> bs!873561 (= (= lt!1710578 lt!1711279) (= lambda!175510 lambda!175431))))

(declare-fun bs!873562 () Bool)

(assert (= bs!873562 (and d!1401614 b!4536294)))

(assert (=> bs!873562 (= (= lt!1710578 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175510 lambda!175437))))

(assert (=> bs!873549 (= (= lt!1710578 lt!1711268) (= lambda!175510 lambda!175430))))

(declare-fun bs!873563 () Bool)

(assert (= bs!873563 (and d!1401614 d!1400896)))

(assert (=> bs!873563 (= (= lt!1710578 lt!1710949) (= lambda!175510 lambda!175363))))

(assert (=> bs!873560 (= (= lt!1710578 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175510 lambda!175378))))

(assert (=> bs!873528 (= (= lt!1710578 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175510 lambda!175372))))

(declare-fun bs!873564 () Bool)

(assert (= bs!873564 (and d!1401614 d!1401452)))

(assert (=> bs!873564 (= (= lt!1710578 lt!1711538) (= lambda!175510 lambda!175486))))

(declare-fun bs!873565 () Bool)

(assert (= bs!873565 (and d!1401614 d!1400874)))

(assert (=> bs!873565 (= (= lt!1710578 lt!1710913) (= lambda!175510 lambda!175352))))

(declare-fun bs!873566 () Bool)

(assert (= bs!873566 (and d!1401614 b!4536345)))

(assert (=> bs!873566 (= (= lt!1710578 (-!418 lt!1710448 key!3287)) (= lambda!175510 lambda!175443))))

(declare-fun bs!873567 () Bool)

(assert (= bs!873567 (and d!1401614 b!4535199)))

(assert (=> bs!873567 (not (= lambda!175510 lambda!175215))))

(declare-fun bs!873568 () Bool)

(assert (= bs!873568 (and d!1401614 b!4535545)))

(assert (=> bs!873568 (= (= lt!1710578 lt!1710429) (= lambda!175510 lambda!175339))))

(declare-fun bs!873569 () Bool)

(assert (= bs!873569 (and d!1401614 b!4536631)))

(assert (=> bs!873569 (= (= lt!1710578 (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477))))) (= lambda!175510 lambda!175492))))

(assert (=> bs!873522 (= (= lt!1710578 (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477))))) (= lambda!175510 lambda!175494))))

(assert (=> bs!873523 (= (= lt!1710578 lt!1711527) (= lambda!175510 lambda!175485))))

(declare-fun bs!873570 () Bool)

(assert (= bs!873570 (and d!1401614 d!1401004)))

(assert (=> bs!873570 (= (= lt!1710578 lt!1711037) (= lambda!175510 lambda!175380))))

(declare-fun bs!873571 () Bool)

(assert (= bs!873571 (and d!1401614 d!1401222)))

(assert (=> bs!873571 (= (= lt!1710578 lt!1711328) (= lambda!175510 lambda!175440))))

(declare-fun bs!873572 () Bool)

(assert (= bs!873572 (and d!1401614 b!4535800)))

(assert (=> bs!873572 (= (= lt!1710578 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175510 lambda!175371))))

(declare-fun bs!873573 () Bool)

(assert (= bs!873573 (and d!1401614 d!1401354)))

(assert (=> bs!873573 (= (= lt!1710578 lt!1710448) (= lambda!175510 lambda!175466))))

(assert (=> bs!873538 (= (= lt!1710578 lt!1710429) (= lambda!175510 lambda!175340))))

(assert (=> bs!873554 (= (= lt!1710578 lt!1711365) (= lambda!175510 lambda!175447))))

(declare-fun bs!873574 () Bool)

(assert (= bs!873574 (and d!1401614 b!4536569)))

(assert (=> bs!873574 (= (= lt!1710578 (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) (= lambda!175510 lambda!175482))))

(declare-fun bs!873575 () Bool)

(assert (= bs!873575 (and d!1401614 d!1400980)))

(assert (=> bs!873575 (= (= lt!1710578 lt!1711000) (= lambda!175510 lambda!175374))))

(declare-fun bs!873576 () Bool)

(assert (= bs!873576 (and d!1401614 d!1400628)))

(assert (=> bs!873576 (= (= lt!1710578 lt!1710589) (= lambda!175510 lambda!175268))))

(assert (=> bs!873526 (= (= lt!1710578 lt!1710448) (= lambda!175510 lambda!175266))))

(declare-fun bs!873577 () Bool)

(assert (= bs!873577 (and d!1401614 b!4535312)))

(assert (=> bs!873577 (= (= lt!1710578 lt!1710448) (= lambda!175510 lambda!175265))))

(declare-fun bs!873578 () Bool)

(assert (= bs!873578 (and d!1401614 d!1401418)))

(assert (=> bs!873578 (= (= lt!1710578 lt!1710415) (= lambda!175510 lambda!175476))))

(assert (=> bs!873558 (= (= lt!1710578 lt!1710938) (= lambda!175510 lambda!175362))))

(assert (=> d!1401614 true))

(assert (=> d!1401614 (forall!10330 (toList!4391 lt!1710448) lambda!175510)))

(declare-fun lt!1711767 () Unit!97630)

(assert (=> d!1401614 (= lt!1711767 (choose!29836 lt!1710448 lt!1710578 (_1!28895 (h!56607 (_2!28896 lt!1710445))) (_2!28895 (h!56607 (_2!28896 lt!1710445)))))))

(assert (=> d!1401614 (forall!10330 (toList!4391 (+!1593 lt!1710448 (tuple2!51203 (_1!28895 (h!56607 (_2!28896 lt!1710445))) (_2!28895 (h!56607 (_2!28896 lt!1710445)))))) lambda!175510)))

(assert (=> d!1401614 (= (addForallContainsKeyThenBeforeAdding!359 lt!1710448 lt!1710578 (_1!28895 (h!56607 (_2!28896 lt!1710445))) (_2!28895 (h!56607 (_2!28896 lt!1710445)))) lt!1711767)))

(declare-fun bs!873580 () Bool)

(assert (= bs!873580 d!1401614))

(declare-fun m!5300063 () Bool)

(assert (=> bs!873580 m!5300063))

(declare-fun m!5300065 () Bool)

(assert (=> bs!873580 m!5300065))

(declare-fun m!5300067 () Bool)

(assert (=> bs!873580 m!5300067))

(declare-fun m!5300069 () Bool)

(assert (=> bs!873580 m!5300069))

(assert (=> b!4535309 d!1401614))

(declare-fun bs!873591 () Bool)

(declare-fun b!4536889 () Bool)

(assert (= bs!873591 (and b!4536889 b!4536628)))

(declare-fun lambda!175514 () Int)

(assert (=> bs!873591 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1711572) (= lambda!175514 lambda!175495))))

(declare-fun bs!873594 () Bool)

(assert (= bs!873594 (and b!4536889 b!4536566)))

(assert (=> bs!873594 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) (= lambda!175514 lambda!175483))))

(declare-fun bs!873596 () Bool)

(assert (= bs!873596 (and b!4536889 d!1400724)))

(assert (=> bs!873596 (not (= lambda!175514 lambda!175312))))

(declare-fun bs!873598 () Bool)

(assert (= bs!873598 (and b!4536889 b!4535309)))

(assert (=> bs!873598 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710578) (= lambda!175514 lambda!175267))))

(declare-fun bs!873600 () Bool)

(assert (= bs!873600 (and b!4536889 b!4535797)))

(assert (=> bs!873600 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710989) (= lambda!175514 lambda!175373))))

(declare-fun bs!873602 () Bool)

(assert (= bs!873602 (and b!4536889 d!1401484)))

(assert (=> bs!873602 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1711583) (= lambda!175514 lambda!175496))))

(declare-fun bs!873604 () Bool)

(assert (= bs!873604 (and b!4536889 b!4535625)))

(assert (=> bs!873604 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710415) (= lambda!175514 lambda!175349))))

(declare-fun bs!873606 () Bool)

(assert (= bs!873606 (and b!4536889 b!4535622)))

(assert (=> bs!873606 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710902) (= lambda!175514 lambda!175351))))

(declare-fun bs!873607 () Bool)

(assert (= bs!873607 (and b!4536889 b!4535669)))

(assert (=> bs!873607 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175514 lambda!175360))))

(declare-fun bs!873609 () Bool)

(assert (= bs!873609 (and b!4536889 b!4535542)))

(assert (=> bs!873609 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710840) (= lambda!175514 lambda!175341))))

(declare-fun bs!873611 () Bool)

(assert (= bs!873611 (and b!4536889 b!4536291)))

(assert (=> bs!873611 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1711317) (= lambda!175514 lambda!175439))))

(declare-fun bs!873613 () Bool)

(assert (= bs!873613 (and b!4536889 d!1401348)))

(assert (=> bs!873613 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710429) (= lambda!175514 lambda!175464))))

(declare-fun bs!873615 () Bool)

(assert (= bs!873615 (and b!4536889 b!4536264)))

(assert (=> bs!873615 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175514 lambda!175428))))

(declare-fun bs!873617 () Bool)

(assert (= bs!873617 (and b!4536889 b!4535832)))

(assert (=> bs!873617 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175514 lambda!175377))))

(declare-fun bs!873619 () Bool)

(assert (= bs!873619 (and b!4536889 d!1401018)))

(assert (=> bs!873619 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710902) (= lambda!175514 lambda!175389))))

(declare-fun bs!873621 () Bool)

(assert (= bs!873621 (and b!4536889 b!4536261)))

(assert (=> bs!873621 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175514 lambda!175429))))

(declare-fun bs!873622 () Bool)

(assert (= bs!873622 (and b!4536889 d!1400816)))

(assert (=> bs!873622 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710851) (= lambda!175514 lambda!175344))))

(assert (=> bs!873611 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175514 lambda!175438))))

(declare-fun bs!873625 () Bool)

(assert (= bs!873625 (and b!4536889 b!4536342)))

(assert (=> bs!873625 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) (-!418 lt!1710448 key!3287)) (= lambda!175514 lambda!175446))))

(declare-fun bs!873627 () Bool)

(assert (= bs!873627 (and b!4536889 d!1401276)))

(assert (=> bs!873627 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1711376) (= lambda!175514 lambda!175450))))

(declare-fun bs!873628 () Bool)

(assert (= bs!873628 (and b!4536889 b!4535666)))

(assert (=> bs!873628 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175514 lambda!175361))))

(declare-fun bs!873629 () Bool)

(assert (= bs!873629 (and b!4536889 b!4535829)))

(assert (=> bs!873629 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1711026) (= lambda!175514 lambda!175379))))

(assert (=> bs!873606 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710415) (= lambda!175514 lambda!175350))))

(declare-fun bs!873631 () Bool)

(assert (= bs!873631 (and b!4536889 d!1401188)))

(assert (=> bs!873631 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1711279) (= lambda!175514 lambda!175431))))

(declare-fun bs!873633 () Bool)

(assert (= bs!873633 (and b!4536889 b!4536294)))

(assert (=> bs!873633 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175514 lambda!175437))))

(assert (=> bs!873621 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1711268) (= lambda!175514 lambda!175430))))

(declare-fun bs!873636 () Bool)

(assert (= bs!873636 (and b!4536889 d!1400896)))

(assert (=> bs!873636 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710949) (= lambda!175514 lambda!175363))))

(assert (=> bs!873629 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175514 lambda!175378))))

(assert (=> bs!873600 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175514 lambda!175372))))

(declare-fun bs!873638 () Bool)

(assert (= bs!873638 (and b!4536889 d!1401452)))

(assert (=> bs!873638 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1711538) (= lambda!175514 lambda!175486))))

(declare-fun bs!873639 () Bool)

(assert (= bs!873639 (and b!4536889 d!1400874)))

(assert (=> bs!873639 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710913) (= lambda!175514 lambda!175352))))

(declare-fun bs!873640 () Bool)

(assert (= bs!873640 (and b!4536889 b!4536345)))

(assert (=> bs!873640 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) (-!418 lt!1710448 key!3287)) (= lambda!175514 lambda!175443))))

(declare-fun bs!873641 () Bool)

(assert (= bs!873641 (and b!4536889 b!4535199)))

(assert (=> bs!873641 (not (= lambda!175514 lambda!175215))))

(declare-fun bs!873642 () Bool)

(assert (= bs!873642 (and b!4536889 b!4535545)))

(assert (=> bs!873642 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710429) (= lambda!175514 lambda!175339))))

(declare-fun bs!873643 () Bool)

(assert (= bs!873643 (and b!4536889 b!4536631)))

(assert (=> bs!873643 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477))))) (= lambda!175514 lambda!175492))))

(assert (=> bs!873591 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477))))) (= lambda!175514 lambda!175494))))

(assert (=> bs!873594 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1711527) (= lambda!175514 lambda!175485))))

(declare-fun bs!873644 () Bool)

(assert (= bs!873644 (and b!4536889 d!1401004)))

(assert (=> bs!873644 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1711037) (= lambda!175514 lambda!175380))))

(declare-fun bs!873645 () Bool)

(assert (= bs!873645 (and b!4536889 d!1401222)))

(assert (=> bs!873645 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1711328) (= lambda!175514 lambda!175440))))

(declare-fun bs!873647 () Bool)

(assert (= bs!873647 (and b!4536889 b!4535800)))

(assert (=> bs!873647 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175514 lambda!175371))))

(declare-fun bs!873649 () Bool)

(assert (= bs!873649 (and b!4536889 d!1401354)))

(assert (=> bs!873649 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710448) (= lambda!175514 lambda!175466))))

(assert (=> bs!873609 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710429) (= lambda!175514 lambda!175340))))

(assert (=> bs!873625 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1711365) (= lambda!175514 lambda!175447))))

(declare-fun bs!873652 () Bool)

(assert (= bs!873652 (and b!4536889 b!4536569)))

(assert (=> bs!873652 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) (= lambda!175514 lambda!175482))))

(declare-fun bs!873654 () Bool)

(assert (= bs!873654 (and b!4536889 d!1400980)))

(assert (=> bs!873654 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1711000) (= lambda!175514 lambda!175374))))

(declare-fun bs!873656 () Bool)

(assert (= bs!873656 (and b!4536889 d!1400628)))

(assert (=> bs!873656 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710589) (= lambda!175514 lambda!175268))))

(assert (=> bs!873598 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710448) (= lambda!175514 lambda!175266))))

(declare-fun bs!873659 () Bool)

(assert (= bs!873659 (and b!4536889 b!4535312)))

(assert (=> bs!873659 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710448) (= lambda!175514 lambda!175265))))

(declare-fun bs!873661 () Bool)

(assert (= bs!873661 (and b!4536889 d!1401614)))

(assert (=> bs!873661 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710578) (= lambda!175514 lambda!175510))))

(declare-fun bs!873663 () Bool)

(assert (= bs!873663 (and b!4536889 d!1401418)))

(assert (=> bs!873663 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710415) (= lambda!175514 lambda!175476))))

(assert (=> bs!873628 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710938) (= lambda!175514 lambda!175362))))

(assert (=> b!4536889 true))

(declare-fun bs!873674 () Bool)

(declare-fun b!4536886 () Bool)

(assert (= bs!873674 (and b!4536886 b!4536628)))

(declare-fun lambda!175516 () Int)

(assert (=> bs!873674 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1711572) (= lambda!175516 lambda!175495))))

(declare-fun bs!873676 () Bool)

(assert (= bs!873676 (and b!4536886 b!4536566)))

(assert (=> bs!873676 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) (= lambda!175516 lambda!175483))))

(declare-fun bs!873678 () Bool)

(assert (= bs!873678 (and b!4536886 d!1400724)))

(assert (=> bs!873678 (not (= lambda!175516 lambda!175312))))

(declare-fun bs!873680 () Bool)

(assert (= bs!873680 (and b!4536886 b!4535309)))

(assert (=> bs!873680 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710578) (= lambda!175516 lambda!175267))))

(declare-fun bs!873682 () Bool)

(assert (= bs!873682 (and b!4536886 b!4535797)))

(assert (=> bs!873682 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710989) (= lambda!175516 lambda!175373))))

(declare-fun bs!873684 () Bool)

(assert (= bs!873684 (and b!4536886 d!1401484)))

(assert (=> bs!873684 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1711583) (= lambda!175516 lambda!175496))))

(declare-fun bs!873686 () Bool)

(assert (= bs!873686 (and b!4536886 b!4535625)))

(assert (=> bs!873686 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710415) (= lambda!175516 lambda!175349))))

(declare-fun bs!873688 () Bool)

(assert (= bs!873688 (and b!4536886 b!4535622)))

(assert (=> bs!873688 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710902) (= lambda!175516 lambda!175351))))

(declare-fun bs!873689 () Bool)

(assert (= bs!873689 (and b!4536886 b!4535669)))

(assert (=> bs!873689 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175516 lambda!175360))))

(declare-fun bs!873691 () Bool)

(assert (= bs!873691 (and b!4536886 b!4535542)))

(assert (=> bs!873691 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710840) (= lambda!175516 lambda!175341))))

(declare-fun bs!873693 () Bool)

(assert (= bs!873693 (and b!4536886 b!4536291)))

(assert (=> bs!873693 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1711317) (= lambda!175516 lambda!175439))))

(declare-fun bs!873694 () Bool)

(assert (= bs!873694 (and b!4536886 d!1401348)))

(assert (=> bs!873694 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710429) (= lambda!175516 lambda!175464))))

(declare-fun bs!873696 () Bool)

(assert (= bs!873696 (and b!4536886 b!4536264)))

(assert (=> bs!873696 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175516 lambda!175428))))

(declare-fun bs!873697 () Bool)

(assert (= bs!873697 (and b!4536886 b!4535832)))

(assert (=> bs!873697 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175516 lambda!175377))))

(declare-fun bs!873698 () Bool)

(assert (= bs!873698 (and b!4536886 d!1401018)))

(assert (=> bs!873698 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710902) (= lambda!175516 lambda!175389))))

(declare-fun bs!873700 () Bool)

(assert (= bs!873700 (and b!4536886 b!4536261)))

(assert (=> bs!873700 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175516 lambda!175429))))

(declare-fun bs!873701 () Bool)

(assert (= bs!873701 (and b!4536886 d!1400816)))

(assert (=> bs!873701 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710851) (= lambda!175516 lambda!175344))))

(assert (=> bs!873693 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175516 lambda!175438))))

(declare-fun bs!873704 () Bool)

(assert (= bs!873704 (and b!4536886 b!4536342)))

(assert (=> bs!873704 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) (-!418 lt!1710448 key!3287)) (= lambda!175516 lambda!175446))))

(declare-fun bs!873706 () Bool)

(assert (= bs!873706 (and b!4536886 d!1401276)))

(assert (=> bs!873706 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1711376) (= lambda!175516 lambda!175450))))

(declare-fun bs!873707 () Bool)

(assert (= bs!873707 (and b!4536886 b!4535666)))

(assert (=> bs!873707 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175516 lambda!175361))))

(declare-fun bs!873709 () Bool)

(assert (= bs!873709 (and b!4536886 b!4535829)))

(assert (=> bs!873709 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1711026) (= lambda!175516 lambda!175379))))

(assert (=> bs!873688 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710415) (= lambda!175516 lambda!175350))))

(declare-fun bs!873710 () Bool)

(assert (= bs!873710 (and b!4536886 d!1401188)))

(assert (=> bs!873710 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1711279) (= lambda!175516 lambda!175431))))

(declare-fun bs!873711 () Bool)

(assert (= bs!873711 (and b!4536886 b!4536294)))

(assert (=> bs!873711 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175516 lambda!175437))))

(assert (=> bs!873700 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1711268) (= lambda!175516 lambda!175430))))

(declare-fun bs!873712 () Bool)

(assert (= bs!873712 (and b!4536886 d!1400896)))

(assert (=> bs!873712 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710949) (= lambda!175516 lambda!175363))))

(assert (=> bs!873709 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175516 lambda!175378))))

(declare-fun bs!873713 () Bool)

(assert (= bs!873713 (and b!4536886 b!4536889)))

(assert (=> bs!873713 (= lambda!175516 lambda!175514)))

(assert (=> bs!873682 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175516 lambda!175372))))

(declare-fun bs!873714 () Bool)

(assert (= bs!873714 (and b!4536886 d!1401452)))

(assert (=> bs!873714 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1711538) (= lambda!175516 lambda!175486))))

(declare-fun bs!873715 () Bool)

(assert (= bs!873715 (and b!4536886 d!1400874)))

(assert (=> bs!873715 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710913) (= lambda!175516 lambda!175352))))

(declare-fun bs!873716 () Bool)

(assert (= bs!873716 (and b!4536886 b!4536345)))

(assert (=> bs!873716 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) (-!418 lt!1710448 key!3287)) (= lambda!175516 lambda!175443))))

(declare-fun bs!873717 () Bool)

(assert (= bs!873717 (and b!4536886 b!4535199)))

(assert (=> bs!873717 (not (= lambda!175516 lambda!175215))))

(declare-fun bs!873718 () Bool)

(assert (= bs!873718 (and b!4536886 b!4535545)))

(assert (=> bs!873718 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710429) (= lambda!175516 lambda!175339))))

(declare-fun bs!873719 () Bool)

(assert (= bs!873719 (and b!4536886 b!4536631)))

(assert (=> bs!873719 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477))))) (= lambda!175516 lambda!175492))))

(assert (=> bs!873674 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477))))) (= lambda!175516 lambda!175494))))

(assert (=> bs!873676 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1711527) (= lambda!175516 lambda!175485))))

(declare-fun bs!873720 () Bool)

(assert (= bs!873720 (and b!4536886 d!1401004)))

(assert (=> bs!873720 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1711037) (= lambda!175516 lambda!175380))))

(declare-fun bs!873721 () Bool)

(assert (= bs!873721 (and b!4536886 d!1401222)))

(assert (=> bs!873721 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1711328) (= lambda!175516 lambda!175440))))

(declare-fun bs!873722 () Bool)

(assert (= bs!873722 (and b!4536886 b!4535800)))

(assert (=> bs!873722 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175516 lambda!175371))))

(declare-fun bs!873723 () Bool)

(assert (= bs!873723 (and b!4536886 d!1401354)))

(assert (=> bs!873723 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710448) (= lambda!175516 lambda!175466))))

(assert (=> bs!873691 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710429) (= lambda!175516 lambda!175340))))

(assert (=> bs!873704 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1711365) (= lambda!175516 lambda!175447))))

(declare-fun bs!873724 () Bool)

(assert (= bs!873724 (and b!4536886 b!4536569)))

(assert (=> bs!873724 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) (= lambda!175516 lambda!175482))))

(declare-fun bs!873725 () Bool)

(assert (= bs!873725 (and b!4536886 d!1400980)))

(assert (=> bs!873725 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1711000) (= lambda!175516 lambda!175374))))

(declare-fun bs!873726 () Bool)

(assert (= bs!873726 (and b!4536886 d!1400628)))

(assert (=> bs!873726 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710589) (= lambda!175516 lambda!175268))))

(assert (=> bs!873680 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710448) (= lambda!175516 lambda!175266))))

(declare-fun bs!873727 () Bool)

(assert (= bs!873727 (and b!4536886 b!4535312)))

(assert (=> bs!873727 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710448) (= lambda!175516 lambda!175265))))

(declare-fun bs!873728 () Bool)

(assert (= bs!873728 (and b!4536886 d!1401614)))

(assert (=> bs!873728 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710578) (= lambda!175516 lambda!175510))))

(declare-fun bs!873729 () Bool)

(assert (= bs!873729 (and b!4536886 d!1401418)))

(assert (=> bs!873729 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710415) (= lambda!175516 lambda!175476))))

(assert (=> bs!873707 (= (= (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1710938) (= lambda!175516 lambda!175362))))

(assert (=> b!4536886 true))

(declare-fun lt!1711793 () ListMap!3653)

(declare-fun lambda!175518 () Int)

(assert (=> bs!873674 (= (= lt!1711793 lt!1711572) (= lambda!175518 lambda!175495))))

(assert (=> bs!873676 (= (= lt!1711793 (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) (= lambda!175518 lambda!175483))))

(assert (=> bs!873680 (= (= lt!1711793 lt!1710578) (= lambda!175518 lambda!175267))))

(assert (=> bs!873682 (= (= lt!1711793 lt!1710989) (= lambda!175518 lambda!175373))))

(assert (=> bs!873684 (= (= lt!1711793 lt!1711583) (= lambda!175518 lambda!175496))))

(assert (=> bs!873686 (= (= lt!1711793 lt!1710415) (= lambda!175518 lambda!175349))))

(assert (=> bs!873688 (= (= lt!1711793 lt!1710902) (= lambda!175518 lambda!175351))))

(assert (=> bs!873689 (= (= lt!1711793 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175518 lambda!175360))))

(assert (=> bs!873691 (= (= lt!1711793 lt!1710840) (= lambda!175518 lambda!175341))))

(assert (=> bs!873693 (= (= lt!1711793 lt!1711317) (= lambda!175518 lambda!175439))))

(assert (=> bs!873694 (= (= lt!1711793 lt!1710429) (= lambda!175518 lambda!175464))))

(assert (=> bs!873696 (= (= lt!1711793 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175518 lambda!175428))))

(assert (=> bs!873697 (= (= lt!1711793 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175518 lambda!175377))))

(assert (=> bs!873698 (= (= lt!1711793 lt!1710902) (= lambda!175518 lambda!175389))))

(assert (=> bs!873700 (= (= lt!1711793 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175518 lambda!175429))))

(assert (=> bs!873701 (= (= lt!1711793 lt!1710851) (= lambda!175518 lambda!175344))))

(assert (=> bs!873693 (= (= lt!1711793 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175518 lambda!175438))))

(assert (=> bs!873704 (= (= lt!1711793 (-!418 lt!1710448 key!3287)) (= lambda!175518 lambda!175446))))

(assert (=> bs!873706 (= (= lt!1711793 lt!1711376) (= lambda!175518 lambda!175450))))

(assert (=> bs!873707 (= (= lt!1711793 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175518 lambda!175361))))

(assert (=> bs!873709 (= (= lt!1711793 lt!1711026) (= lambda!175518 lambda!175379))))

(assert (=> bs!873688 (= (= lt!1711793 lt!1710415) (= lambda!175518 lambda!175350))))

(assert (=> bs!873710 (= (= lt!1711793 lt!1711279) (= lambda!175518 lambda!175431))))

(assert (=> bs!873711 (= (= lt!1711793 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175518 lambda!175437))))

(assert (=> bs!873700 (= (= lt!1711793 lt!1711268) (= lambda!175518 lambda!175430))))

(assert (=> b!4536886 (= (= lt!1711793 (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175518 lambda!175516))))

(assert (=> bs!873678 (not (= lambda!175518 lambda!175312))))

(assert (=> bs!873712 (= (= lt!1711793 lt!1710949) (= lambda!175518 lambda!175363))))

(assert (=> bs!873709 (= (= lt!1711793 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175518 lambda!175378))))

(assert (=> bs!873713 (= (= lt!1711793 (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175518 lambda!175514))))

(assert (=> bs!873682 (= (= lt!1711793 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175518 lambda!175372))))

(assert (=> bs!873714 (= (= lt!1711793 lt!1711538) (= lambda!175518 lambda!175486))))

(assert (=> bs!873715 (= (= lt!1711793 lt!1710913) (= lambda!175518 lambda!175352))))

(assert (=> bs!873716 (= (= lt!1711793 (-!418 lt!1710448 key!3287)) (= lambda!175518 lambda!175443))))

(assert (=> bs!873717 (not (= lambda!175518 lambda!175215))))

(assert (=> bs!873718 (= (= lt!1711793 lt!1710429) (= lambda!175518 lambda!175339))))

(assert (=> bs!873719 (= (= lt!1711793 (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477))))) (= lambda!175518 lambda!175492))))

(assert (=> bs!873674 (= (= lt!1711793 (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477))))) (= lambda!175518 lambda!175494))))

(assert (=> bs!873676 (= (= lt!1711793 lt!1711527) (= lambda!175518 lambda!175485))))

(assert (=> bs!873720 (= (= lt!1711793 lt!1711037) (= lambda!175518 lambda!175380))))

(assert (=> bs!873721 (= (= lt!1711793 lt!1711328) (= lambda!175518 lambda!175440))))

(assert (=> bs!873722 (= (= lt!1711793 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175518 lambda!175371))))

(assert (=> bs!873723 (= (= lt!1711793 lt!1710448) (= lambda!175518 lambda!175466))))

(assert (=> bs!873691 (= (= lt!1711793 lt!1710429) (= lambda!175518 lambda!175340))))

(assert (=> bs!873704 (= (= lt!1711793 lt!1711365) (= lambda!175518 lambda!175447))))

(assert (=> bs!873724 (= (= lt!1711793 (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) (= lambda!175518 lambda!175482))))

(assert (=> bs!873725 (= (= lt!1711793 lt!1711000) (= lambda!175518 lambda!175374))))

(assert (=> bs!873726 (= (= lt!1711793 lt!1710589) (= lambda!175518 lambda!175268))))

(assert (=> bs!873680 (= (= lt!1711793 lt!1710448) (= lambda!175518 lambda!175266))))

(assert (=> bs!873727 (= (= lt!1711793 lt!1710448) (= lambda!175518 lambda!175265))))

(assert (=> bs!873728 (= (= lt!1711793 lt!1710578) (= lambda!175518 lambda!175510))))

(assert (=> bs!873729 (= (= lt!1711793 lt!1710415) (= lambda!175518 lambda!175476))))

(assert (=> bs!873707 (= (= lt!1711793 lt!1710938) (= lambda!175518 lambda!175362))))

(assert (=> b!4536886 true))

(declare-fun bs!873761 () Bool)

(declare-fun d!1401624 () Bool)

(assert (= bs!873761 (and d!1401624 b!4536628)))

(declare-fun lt!1711804 () ListMap!3653)

(declare-fun lambda!175520 () Int)

(assert (=> bs!873761 (= (= lt!1711804 lt!1711572) (= lambda!175520 lambda!175495))))

(declare-fun bs!873763 () Bool)

(assert (= bs!873763 (and d!1401624 b!4536566)))

(assert (=> bs!873763 (= (= lt!1711804 (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) (= lambda!175520 lambda!175483))))

(declare-fun bs!873764 () Bool)

(assert (= bs!873764 (and d!1401624 b!4535309)))

(assert (=> bs!873764 (= (= lt!1711804 lt!1710578) (= lambda!175520 lambda!175267))))

(declare-fun bs!873766 () Bool)

(assert (= bs!873766 (and d!1401624 b!4535797)))

(assert (=> bs!873766 (= (= lt!1711804 lt!1710989) (= lambda!175520 lambda!175373))))

(declare-fun bs!873768 () Bool)

(assert (= bs!873768 (and d!1401624 d!1401484)))

(assert (=> bs!873768 (= (= lt!1711804 lt!1711583) (= lambda!175520 lambda!175496))))

(declare-fun bs!873770 () Bool)

(assert (= bs!873770 (and d!1401624 b!4535625)))

(assert (=> bs!873770 (= (= lt!1711804 lt!1710415) (= lambda!175520 lambda!175349))))

(declare-fun bs!873771 () Bool)

(assert (= bs!873771 (and d!1401624 b!4535622)))

(assert (=> bs!873771 (= (= lt!1711804 lt!1710902) (= lambda!175520 lambda!175351))))

(declare-fun bs!873773 () Bool)

(assert (= bs!873773 (and d!1401624 b!4535669)))

(assert (=> bs!873773 (= (= lt!1711804 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175520 lambda!175360))))

(declare-fun bs!873774 () Bool)

(assert (= bs!873774 (and d!1401624 b!4536291)))

(assert (=> bs!873774 (= (= lt!1711804 lt!1711317) (= lambda!175520 lambda!175439))))

(declare-fun bs!873775 () Bool)

(assert (= bs!873775 (and d!1401624 d!1401348)))

(assert (=> bs!873775 (= (= lt!1711804 lt!1710429) (= lambda!175520 lambda!175464))))

(declare-fun bs!873776 () Bool)

(assert (= bs!873776 (and d!1401624 b!4536264)))

(assert (=> bs!873776 (= (= lt!1711804 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175520 lambda!175428))))

(declare-fun bs!873777 () Bool)

(assert (= bs!873777 (and d!1401624 b!4535832)))

(assert (=> bs!873777 (= (= lt!1711804 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175520 lambda!175377))))

(declare-fun bs!873778 () Bool)

(assert (= bs!873778 (and d!1401624 d!1401018)))

(assert (=> bs!873778 (= (= lt!1711804 lt!1710902) (= lambda!175520 lambda!175389))))

(declare-fun bs!873779 () Bool)

(assert (= bs!873779 (and d!1401624 b!4536261)))

(assert (=> bs!873779 (= (= lt!1711804 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175520 lambda!175429))))

(declare-fun bs!873780 () Bool)

(assert (= bs!873780 (and d!1401624 d!1400816)))

(assert (=> bs!873780 (= (= lt!1711804 lt!1710851) (= lambda!175520 lambda!175344))))

(assert (=> bs!873774 (= (= lt!1711804 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175520 lambda!175438))))

(declare-fun bs!873781 () Bool)

(assert (= bs!873781 (and d!1401624 b!4536342)))

(assert (=> bs!873781 (= (= lt!1711804 (-!418 lt!1710448 key!3287)) (= lambda!175520 lambda!175446))))

(declare-fun bs!873782 () Bool)

(assert (= bs!873782 (and d!1401624 d!1401276)))

(assert (=> bs!873782 (= (= lt!1711804 lt!1711376) (= lambda!175520 lambda!175450))))

(declare-fun bs!873783 () Bool)

(assert (= bs!873783 (and d!1401624 b!4535666)))

(assert (=> bs!873783 (= (= lt!1711804 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175520 lambda!175361))))

(declare-fun bs!873784 () Bool)

(assert (= bs!873784 (and d!1401624 b!4535829)))

(assert (=> bs!873784 (= (= lt!1711804 lt!1711026) (= lambda!175520 lambda!175379))))

(assert (=> bs!873771 (= (= lt!1711804 lt!1710415) (= lambda!175520 lambda!175350))))

(declare-fun bs!873785 () Bool)

(assert (= bs!873785 (and d!1401624 d!1401188)))

(assert (=> bs!873785 (= (= lt!1711804 lt!1711279) (= lambda!175520 lambda!175431))))

(declare-fun bs!873786 () Bool)

(assert (= bs!873786 (and d!1401624 b!4536294)))

(assert (=> bs!873786 (= (= lt!1711804 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175520 lambda!175437))))

(assert (=> bs!873779 (= (= lt!1711804 lt!1711268) (= lambda!175520 lambda!175430))))

(declare-fun bs!873787 () Bool)

(assert (= bs!873787 (and d!1401624 b!4536886)))

(assert (=> bs!873787 (= (= lt!1711804 (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175520 lambda!175516))))

(declare-fun bs!873788 () Bool)

(assert (= bs!873788 (and d!1401624 d!1400724)))

(assert (=> bs!873788 (not (= lambda!175520 lambda!175312))))

(declare-fun bs!873789 () Bool)

(assert (= bs!873789 (and d!1401624 d!1400896)))

(assert (=> bs!873789 (= (= lt!1711804 lt!1710949) (= lambda!175520 lambda!175363))))

(assert (=> bs!873784 (= (= lt!1711804 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175520 lambda!175378))))

(declare-fun bs!873790 () Bool)

(assert (= bs!873790 (and d!1401624 b!4536889)))

(assert (=> bs!873790 (= (= lt!1711804 (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175520 lambda!175514))))

(assert (=> bs!873766 (= (= lt!1711804 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175520 lambda!175372))))

(declare-fun bs!873791 () Bool)

(assert (= bs!873791 (and d!1401624 d!1401452)))

(assert (=> bs!873791 (= (= lt!1711804 lt!1711538) (= lambda!175520 lambda!175486))))

(declare-fun bs!873792 () Bool)

(assert (= bs!873792 (and d!1401624 d!1400874)))

(assert (=> bs!873792 (= (= lt!1711804 lt!1710913) (= lambda!175520 lambda!175352))))

(declare-fun bs!873793 () Bool)

(assert (= bs!873793 (and d!1401624 b!4536345)))

(assert (=> bs!873793 (= (= lt!1711804 (-!418 lt!1710448 key!3287)) (= lambda!175520 lambda!175443))))

(declare-fun bs!873794 () Bool)

(assert (= bs!873794 (and d!1401624 b!4535199)))

(assert (=> bs!873794 (not (= lambda!175520 lambda!175215))))

(declare-fun bs!873795 () Bool)

(assert (= bs!873795 (and d!1401624 b!4535545)))

(assert (=> bs!873795 (= (= lt!1711804 lt!1710429) (= lambda!175520 lambda!175339))))

(declare-fun bs!873796 () Bool)

(assert (= bs!873796 (and d!1401624 b!4536631)))

(assert (=> bs!873796 (= (= lt!1711804 (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477))))) (= lambda!175520 lambda!175492))))

(assert (=> bs!873761 (= (= lt!1711804 (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477))))) (= lambda!175520 lambda!175494))))

(assert (=> bs!873763 (= (= lt!1711804 lt!1711527) (= lambda!175520 lambda!175485))))

(declare-fun bs!873797 () Bool)

(assert (= bs!873797 (and d!1401624 d!1401004)))

(assert (=> bs!873797 (= (= lt!1711804 lt!1711037) (= lambda!175520 lambda!175380))))

(declare-fun bs!873798 () Bool)

(assert (= bs!873798 (and d!1401624 d!1401222)))

(assert (=> bs!873798 (= (= lt!1711804 lt!1711328) (= lambda!175520 lambda!175440))))

(declare-fun bs!873799 () Bool)

(assert (= bs!873799 (and d!1401624 b!4535800)))

(assert (=> bs!873799 (= (= lt!1711804 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175520 lambda!175371))))

(declare-fun bs!873800 () Bool)

(assert (= bs!873800 (and d!1401624 d!1401354)))

(assert (=> bs!873800 (= (= lt!1711804 lt!1710448) (= lambda!175520 lambda!175466))))

(declare-fun bs!873801 () Bool)

(assert (= bs!873801 (and d!1401624 b!4535542)))

(assert (=> bs!873801 (= (= lt!1711804 lt!1710429) (= lambda!175520 lambda!175340))))

(assert (=> bs!873781 (= (= lt!1711804 lt!1711365) (= lambda!175520 lambda!175447))))

(declare-fun bs!873802 () Bool)

(assert (= bs!873802 (and d!1401624 b!4536569)))

(assert (=> bs!873802 (= (= lt!1711804 (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) (= lambda!175520 lambda!175482))))

(declare-fun bs!873803 () Bool)

(assert (= bs!873803 (and d!1401624 d!1400980)))

(assert (=> bs!873803 (= (= lt!1711804 lt!1711000) (= lambda!175520 lambda!175374))))

(declare-fun bs!873804 () Bool)

(assert (= bs!873804 (and d!1401624 d!1400628)))

(assert (=> bs!873804 (= (= lt!1711804 lt!1710589) (= lambda!175520 lambda!175268))))

(assert (=> bs!873764 (= (= lt!1711804 lt!1710448) (= lambda!175520 lambda!175266))))

(declare-fun bs!873805 () Bool)

(assert (= bs!873805 (and d!1401624 b!4535312)))

(assert (=> bs!873805 (= (= lt!1711804 lt!1710448) (= lambda!175520 lambda!175265))))

(assert (=> bs!873801 (= (= lt!1711804 lt!1710840) (= lambda!175520 lambda!175341))))

(assert (=> bs!873787 (= (= lt!1711804 lt!1711793) (= lambda!175520 lambda!175518))))

(declare-fun bs!873806 () Bool)

(assert (= bs!873806 (and d!1401624 d!1401614)))

(assert (=> bs!873806 (= (= lt!1711804 lt!1710578) (= lambda!175520 lambda!175510))))

(declare-fun bs!873807 () Bool)

(assert (= bs!873807 (and d!1401624 d!1401418)))

(assert (=> bs!873807 (= (= lt!1711804 lt!1710415) (= lambda!175520 lambda!175476))))

(assert (=> bs!873783 (= (= lt!1711804 lt!1710938) (= lambda!175520 lambda!175362))))

(assert (=> d!1401624 true))

(declare-fun bm!316343 () Bool)

(declare-fun call!316348 () Unit!97630)

(assert (=> bm!316343 (= call!316348 (lemmaContainsAllItsOwnKeys!359 (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun c!774862 () Bool)

(declare-fun bm!316344 () Bool)

(declare-fun call!316349 () Bool)

(assert (=> bm!316344 (= call!316349 (forall!10330 (toList!4391 (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445)))) (ite c!774862 lambda!175514 lambda!175518)))))

(declare-fun e!2827062 () ListMap!3653)

(assert (=> b!4536886 (= e!2827062 lt!1711793)))

(declare-fun lt!1711795 () ListMap!3653)

(assert (=> b!4536886 (= lt!1711795 (+!1593 (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) (h!56607 (t!357818 (_2!28896 lt!1710445)))))))

(assert (=> b!4536886 (= lt!1711793 (addToMapMapFromBucket!719 (t!357818 (t!357818 (_2!28896 lt!1710445))) (+!1593 (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) (h!56607 (t!357818 (_2!28896 lt!1710445))))))))

(declare-fun lt!1711806 () Unit!97630)

(assert (=> b!4536886 (= lt!1711806 call!316348)))

(assert (=> b!4536886 (forall!10330 (toList!4391 (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445)))) lambda!175516)))

(declare-fun lt!1711801 () Unit!97630)

(assert (=> b!4536886 (= lt!1711801 lt!1711806)))

(assert (=> b!4536886 (forall!10330 (toList!4391 lt!1711795) lambda!175518)))

(declare-fun lt!1711796 () Unit!97630)

(declare-fun Unit!98004 () Unit!97630)

(assert (=> b!4536886 (= lt!1711796 Unit!98004)))

(assert (=> b!4536886 (forall!10330 (t!357818 (t!357818 (_2!28896 lt!1710445))) lambda!175518)))

(declare-fun lt!1711798 () Unit!97630)

(declare-fun Unit!98005 () Unit!97630)

(assert (=> b!4536886 (= lt!1711798 Unit!98005)))

(declare-fun lt!1711792 () Unit!97630)

(declare-fun Unit!98006 () Unit!97630)

(assert (=> b!4536886 (= lt!1711792 Unit!98006)))

(declare-fun lt!1711810 () Unit!97630)

(assert (=> b!4536886 (= lt!1711810 (forallContained!2591 (toList!4391 lt!1711795) lambda!175518 (h!56607 (t!357818 (_2!28896 lt!1710445)))))))

(assert (=> b!4536886 (contains!13513 lt!1711795 (_1!28895 (h!56607 (t!357818 (_2!28896 lt!1710445)))))))

(declare-fun lt!1711790 () Unit!97630)

(declare-fun Unit!98007 () Unit!97630)

(assert (=> b!4536886 (= lt!1711790 Unit!98007)))

(assert (=> b!4536886 (contains!13513 lt!1711793 (_1!28895 (h!56607 (t!357818 (_2!28896 lt!1710445)))))))

(declare-fun lt!1711802 () Unit!97630)

(declare-fun Unit!98008 () Unit!97630)

(assert (=> b!4536886 (= lt!1711802 Unit!98008)))

(assert (=> b!4536886 (forall!10330 (t!357818 (_2!28896 lt!1710445)) lambda!175518)))

(declare-fun lt!1711805 () Unit!97630)

(declare-fun Unit!98009 () Unit!97630)

(assert (=> b!4536886 (= lt!1711805 Unit!98009)))

(assert (=> b!4536886 (forall!10330 (toList!4391 lt!1711795) lambda!175518)))

(declare-fun lt!1711791 () Unit!97630)

(declare-fun Unit!98010 () Unit!97630)

(assert (=> b!4536886 (= lt!1711791 Unit!98010)))

(declare-fun lt!1711794 () Unit!97630)

(declare-fun Unit!98011 () Unit!97630)

(assert (=> b!4536886 (= lt!1711794 Unit!98011)))

(declare-fun lt!1711807 () Unit!97630)

(assert (=> b!4536886 (= lt!1711807 (addForallContainsKeyThenBeforeAdding!359 (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))) lt!1711793 (_1!28895 (h!56607 (t!357818 (_2!28896 lt!1710445)))) (_2!28895 (h!56607 (t!357818 (_2!28896 lt!1710445))))))))

(assert (=> b!4536886 (forall!10330 (toList!4391 (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445)))) lambda!175518)))

(declare-fun lt!1711799 () Unit!97630)

(assert (=> b!4536886 (= lt!1711799 lt!1711807)))

(assert (=> b!4536886 (forall!10330 (toList!4391 (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445)))) lambda!175518)))

(declare-fun lt!1711797 () Unit!97630)

(declare-fun Unit!98012 () Unit!97630)

(assert (=> b!4536886 (= lt!1711797 Unit!98012)))

(declare-fun res!1890238 () Bool)

(declare-fun call!316350 () Bool)

(assert (=> b!4536886 (= res!1890238 call!316350)))

(declare-fun e!2827061 () Bool)

(assert (=> b!4536886 (=> (not res!1890238) (not e!2827061))))

(assert (=> b!4536886 e!2827061))

(declare-fun lt!1711800 () Unit!97630)

(declare-fun Unit!98013 () Unit!97630)

(assert (=> b!4536886 (= lt!1711800 Unit!98013)))

(declare-fun b!4536887 () Bool)

(declare-fun e!2827060 () Bool)

(assert (=> b!4536887 (= e!2827060 (invariantList!1039 (toList!4391 lt!1711804)))))

(declare-fun b!4536888 () Bool)

(declare-fun res!1890239 () Bool)

(assert (=> b!4536888 (=> (not res!1890239) (not e!2827060))))

(assert (=> b!4536888 (= res!1890239 (forall!10330 (toList!4391 (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445)))) lambda!175520))))

(declare-fun bm!316345 () Bool)

(assert (=> bm!316345 (= call!316350 (forall!10330 (ite c!774862 (toList!4391 (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445)))) (t!357818 (_2!28896 lt!1710445))) (ite c!774862 lambda!175514 lambda!175518)))))

(declare-fun b!4536890 () Bool)

(assert (=> b!4536890 (= e!2827061 call!316349)))

(assert (=> b!4536889 (= e!2827062 (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445))))))

(declare-fun lt!1711803 () Unit!97630)

(assert (=> b!4536889 (= lt!1711803 call!316348)))

(assert (=> b!4536889 call!316349))

(declare-fun lt!1711809 () Unit!97630)

(assert (=> b!4536889 (= lt!1711809 lt!1711803)))

(assert (=> b!4536889 call!316350))

(declare-fun lt!1711808 () Unit!97630)

(declare-fun Unit!98014 () Unit!97630)

(assert (=> b!4536889 (= lt!1711808 Unit!98014)))

(assert (=> d!1401624 e!2827060))

(declare-fun res!1890240 () Bool)

(assert (=> d!1401624 (=> (not res!1890240) (not e!2827060))))

(assert (=> d!1401624 (= res!1890240 (forall!10330 (t!357818 (_2!28896 lt!1710445)) lambda!175520))))

(assert (=> d!1401624 (= lt!1711804 e!2827062)))

(assert (=> d!1401624 (= c!774862 ((_ is Nil!50732) (t!357818 (_2!28896 lt!1710445))))))

(assert (=> d!1401624 (noDuplicateKeys!1192 (t!357818 (_2!28896 lt!1710445)))))

(assert (=> d!1401624 (= (addToMapMapFromBucket!719 (t!357818 (_2!28896 lt!1710445)) (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445)))) lt!1711804)))

(assert (= (and d!1401624 c!774862) b!4536889))

(assert (= (and d!1401624 (not c!774862)) b!4536886))

(assert (= (and b!4536886 res!1890238) b!4536890))

(assert (= (or b!4536889 b!4536890) bm!316344))

(assert (= (or b!4536889 b!4536886) bm!316345))

(assert (= (or b!4536889 b!4536886) bm!316343))

(assert (= (and d!1401624 res!1890240) b!4536888))

(assert (= (and b!4536888 res!1890239) b!4536887))

(declare-fun m!5300105 () Bool)

(assert (=> b!4536887 m!5300105))

(declare-fun m!5300107 () Bool)

(assert (=> d!1401624 m!5300107))

(assert (=> d!1401624 m!5297025))

(declare-fun m!5300109 () Bool)

(assert (=> bm!316345 m!5300109))

(declare-fun m!5300111 () Bool)

(assert (=> b!4536886 m!5300111))

(declare-fun m!5300113 () Bool)

(assert (=> b!4536886 m!5300113))

(declare-fun m!5300115 () Bool)

(assert (=> b!4536886 m!5300115))

(declare-fun m!5300117 () Bool)

(assert (=> b!4536886 m!5300117))

(assert (=> b!4536886 m!5296903))

(declare-fun m!5300119 () Bool)

(assert (=> b!4536886 m!5300119))

(declare-fun m!5300121 () Bool)

(assert (=> b!4536886 m!5300121))

(declare-fun m!5300123 () Bool)

(assert (=> b!4536886 m!5300123))

(assert (=> b!4536886 m!5300111))

(declare-fun m!5300125 () Bool)

(assert (=> b!4536886 m!5300125))

(assert (=> b!4536886 m!5296903))

(assert (=> b!4536886 m!5300121))

(declare-fun m!5300127 () Bool)

(assert (=> b!4536886 m!5300127))

(declare-fun m!5300129 () Bool)

(assert (=> b!4536886 m!5300129))

(assert (=> b!4536886 m!5300113))

(declare-fun m!5300131 () Bool)

(assert (=> b!4536886 m!5300131))

(assert (=> bm!316343 m!5296903))

(declare-fun m!5300133 () Bool)

(assert (=> bm!316343 m!5300133))

(declare-fun m!5300135 () Bool)

(assert (=> bm!316344 m!5300135))

(declare-fun m!5300137 () Bool)

(assert (=> b!4536888 m!5300137))

(assert (=> b!4535309 d!1401624))

(declare-fun d!1401628 () Bool)

(declare-fun res!1890241 () Bool)

(declare-fun e!2827063 () Bool)

(assert (=> d!1401628 (=> res!1890241 e!2827063)))

(assert (=> d!1401628 (= res!1890241 ((_ is Nil!50732) (t!357818 (_2!28896 lt!1710445))))))

(assert (=> d!1401628 (= (forall!10330 (t!357818 (_2!28896 lt!1710445)) lambda!175267) e!2827063)))

(declare-fun b!4536891 () Bool)

(declare-fun e!2827064 () Bool)

(assert (=> b!4536891 (= e!2827063 e!2827064)))

(declare-fun res!1890242 () Bool)

(assert (=> b!4536891 (=> (not res!1890242) (not e!2827064))))

(assert (=> b!4536891 (= res!1890242 (dynLambda!21205 lambda!175267 (h!56607 (t!357818 (_2!28896 lt!1710445)))))))

(declare-fun b!4536892 () Bool)

(assert (=> b!4536892 (= e!2827064 (forall!10330 (t!357818 (t!357818 (_2!28896 lt!1710445))) lambda!175267))))

(assert (= (and d!1401628 (not res!1890241)) b!4536891))

(assert (= (and b!4536891 res!1890242) b!4536892))

(declare-fun b_lambda!157375 () Bool)

(assert (=> (not b_lambda!157375) (not b!4536891)))

(declare-fun m!5300139 () Bool)

(assert (=> b!4536891 m!5300139))

(declare-fun m!5300141 () Bool)

(assert (=> b!4536892 m!5300141))

(assert (=> b!4535309 d!1401628))

(declare-fun d!1401630 () Bool)

(declare-fun res!1890243 () Bool)

(declare-fun e!2827065 () Bool)

(assert (=> d!1401630 (=> res!1890243 e!2827065)))

(assert (=> d!1401630 (= res!1890243 ((_ is Nil!50732) (_2!28896 lt!1710445)))))

(assert (=> d!1401630 (= (forall!10330 (_2!28896 lt!1710445) lambda!175267) e!2827065)))

(declare-fun b!4536893 () Bool)

(declare-fun e!2827066 () Bool)

(assert (=> b!4536893 (= e!2827065 e!2827066)))

(declare-fun res!1890244 () Bool)

(assert (=> b!4536893 (=> (not res!1890244) (not e!2827066))))

(assert (=> b!4536893 (= res!1890244 (dynLambda!21205 lambda!175267 (h!56607 (_2!28896 lt!1710445))))))

(declare-fun b!4536894 () Bool)

(assert (=> b!4536894 (= e!2827066 (forall!10330 (t!357818 (_2!28896 lt!1710445)) lambda!175267))))

(assert (= (and d!1401630 (not res!1890243)) b!4536893))

(assert (= (and b!4536893 res!1890244) b!4536894))

(declare-fun b_lambda!157377 () Bool)

(assert (=> (not b_lambda!157377) (not b!4536893)))

(assert (=> b!4536893 m!5299979))

(assert (=> b!4536894 m!5296913))

(assert (=> b!4535309 d!1401630))

(declare-fun d!1401632 () Bool)

(declare-fun res!1890245 () Bool)

(declare-fun e!2827067 () Bool)

(assert (=> d!1401632 (=> res!1890245 e!2827067)))

(assert (=> d!1401632 (= res!1890245 ((_ is Nil!50732) (toList!4391 lt!1710448)))))

(assert (=> d!1401632 (= (forall!10330 (toList!4391 lt!1710448) lambda!175267) e!2827067)))

(declare-fun b!4536895 () Bool)

(declare-fun e!2827068 () Bool)

(assert (=> b!4536895 (= e!2827067 e!2827068)))

(declare-fun res!1890246 () Bool)

(assert (=> b!4536895 (=> (not res!1890246) (not e!2827068))))

(assert (=> b!4536895 (= res!1890246 (dynLambda!21205 lambda!175267 (h!56607 (toList!4391 lt!1710448))))))

(declare-fun b!4536896 () Bool)

(assert (=> b!4536896 (= e!2827068 (forall!10330 (t!357818 (toList!4391 lt!1710448)) lambda!175267))))

(assert (= (and d!1401632 (not res!1890245)) b!4536895))

(assert (= (and b!4536895 res!1890246) b!4536896))

(declare-fun b_lambda!157379 () Bool)

(assert (=> (not b_lambda!157379) (not b!4536895)))

(declare-fun m!5300143 () Bool)

(assert (=> b!4536895 m!5300143))

(declare-fun m!5300145 () Bool)

(assert (=> b!4536896 m!5300145))

(assert (=> b!4535309 d!1401632))

(declare-fun d!1401634 () Bool)

(declare-fun res!1890247 () Bool)

(declare-fun e!2827069 () Bool)

(assert (=> d!1401634 (=> res!1890247 e!2827069)))

(assert (=> d!1401634 (= res!1890247 ((_ is Nil!50732) (_2!28896 lt!1710445)))))

(assert (=> d!1401634 (= (forall!10330 (_2!28896 lt!1710445) lambda!175341) e!2827069)))

(declare-fun b!4536897 () Bool)

(declare-fun e!2827070 () Bool)

(assert (=> b!4536897 (= e!2827069 e!2827070)))

(declare-fun res!1890248 () Bool)

(assert (=> b!4536897 (=> (not res!1890248) (not e!2827070))))

(assert (=> b!4536897 (= res!1890248 (dynLambda!21205 lambda!175341 (h!56607 (_2!28896 lt!1710445))))))

(declare-fun b!4536898 () Bool)

(assert (=> b!4536898 (= e!2827070 (forall!10330 (t!357818 (_2!28896 lt!1710445)) lambda!175341))))

(assert (= (and d!1401634 (not res!1890247)) b!4536897))

(assert (= (and b!4536897 res!1890248) b!4536898))

(declare-fun b_lambda!157381 () Bool)

(assert (=> (not b_lambda!157381) (not b!4536897)))

(declare-fun m!5300147 () Bool)

(assert (=> b!4536897 m!5300147))

(assert (=> b!4536898 m!5297407))

(assert (=> b!4535542 d!1401634))

(declare-fun d!1401636 () Bool)

(declare-fun res!1890249 () Bool)

(declare-fun e!2827071 () Bool)

(assert (=> d!1401636 (=> res!1890249 e!2827071)))

(assert (=> d!1401636 (= res!1890249 ((_ is Nil!50732) (toList!4391 lt!1710429)))))

(assert (=> d!1401636 (= (forall!10330 (toList!4391 lt!1710429) lambda!175340) e!2827071)))

(declare-fun b!4536899 () Bool)

(declare-fun e!2827072 () Bool)

(assert (=> b!4536899 (= e!2827071 e!2827072)))

(declare-fun res!1890250 () Bool)

(assert (=> b!4536899 (=> (not res!1890250) (not e!2827072))))

(assert (=> b!4536899 (= res!1890250 (dynLambda!21205 lambda!175340 (h!56607 (toList!4391 lt!1710429))))))

(declare-fun b!4536900 () Bool)

(assert (=> b!4536900 (= e!2827072 (forall!10330 (t!357818 (toList!4391 lt!1710429)) lambda!175340))))

(assert (= (and d!1401636 (not res!1890249)) b!4536899))

(assert (= (and b!4536899 res!1890250) b!4536900))

(declare-fun b_lambda!157383 () Bool)

(assert (=> (not b_lambda!157383) (not b!4536899)))

(declare-fun m!5300149 () Bool)

(assert (=> b!4536899 m!5300149))

(declare-fun m!5300151 () Bool)

(assert (=> b!4536900 m!5300151))

(assert (=> b!4535542 d!1401636))

(declare-fun d!1401638 () Bool)

(declare-fun res!1890251 () Bool)

(declare-fun e!2827073 () Bool)

(assert (=> d!1401638 (=> res!1890251 e!2827073)))

(assert (=> d!1401638 (= res!1890251 ((_ is Nil!50732) (toList!4391 lt!1710842)))))

(assert (=> d!1401638 (= (forall!10330 (toList!4391 lt!1710842) lambda!175341) e!2827073)))

(declare-fun b!4536901 () Bool)

(declare-fun e!2827074 () Bool)

(assert (=> b!4536901 (= e!2827073 e!2827074)))

(declare-fun res!1890252 () Bool)

(assert (=> b!4536901 (=> (not res!1890252) (not e!2827074))))

(assert (=> b!4536901 (= res!1890252 (dynLambda!21205 lambda!175341 (h!56607 (toList!4391 lt!1710842))))))

(declare-fun b!4536902 () Bool)

(assert (=> b!4536902 (= e!2827074 (forall!10330 (t!357818 (toList!4391 lt!1710842)) lambda!175341))))

(assert (= (and d!1401638 (not res!1890251)) b!4536901))

(assert (= (and b!4536901 res!1890252) b!4536902))

(declare-fun b_lambda!157385 () Bool)

(assert (=> (not b_lambda!157385) (not b!4536901)))

(declare-fun m!5300153 () Bool)

(assert (=> b!4536901 m!5300153))

(declare-fun m!5300155 () Bool)

(assert (=> b!4536902 m!5300155))

(assert (=> b!4535542 d!1401638))

(declare-fun d!1401640 () Bool)

(assert (=> d!1401640 (dynLambda!21205 lambda!175341 (h!56607 (_2!28896 lt!1710445)))))

(declare-fun lt!1711811 () Unit!97630)

(assert (=> d!1401640 (= lt!1711811 (choose!29824 (toList!4391 lt!1710842) lambda!175341 (h!56607 (_2!28896 lt!1710445))))))

(declare-fun e!2827075 () Bool)

(assert (=> d!1401640 e!2827075))

(declare-fun res!1890253 () Bool)

(assert (=> d!1401640 (=> (not res!1890253) (not e!2827075))))

(assert (=> d!1401640 (= res!1890253 (forall!10330 (toList!4391 lt!1710842) lambda!175341))))

(assert (=> d!1401640 (= (forallContained!2591 (toList!4391 lt!1710842) lambda!175341 (h!56607 (_2!28896 lt!1710445))) lt!1711811)))

(declare-fun b!4536903 () Bool)

(assert (=> b!4536903 (= e!2827075 (contains!13517 (toList!4391 lt!1710842) (h!56607 (_2!28896 lt!1710445))))))

(assert (= (and d!1401640 res!1890253) b!4536903))

(declare-fun b_lambda!157387 () Bool)

(assert (=> (not b_lambda!157387) (not d!1401640)))

(assert (=> d!1401640 m!5300147))

(declare-fun m!5300157 () Bool)

(assert (=> d!1401640 m!5300157))

(assert (=> d!1401640 m!5297381))

(declare-fun m!5300159 () Bool)

(assert (=> b!4536903 m!5300159))

(assert (=> b!4535542 d!1401640))

(declare-fun d!1401642 () Bool)

(declare-fun e!2827078 () Bool)

(assert (=> d!1401642 e!2827078))

(declare-fun res!1890254 () Bool)

(assert (=> d!1401642 (=> res!1890254 e!2827078)))

(declare-fun e!2827080 () Bool)

(assert (=> d!1401642 (= res!1890254 e!2827080)))

(declare-fun res!1890255 () Bool)

(assert (=> d!1401642 (=> (not res!1890255) (not e!2827080))))

(declare-fun lt!1711818 () Bool)

(assert (=> d!1401642 (= res!1890255 (not lt!1711818))))

(declare-fun lt!1711813 () Bool)

(assert (=> d!1401642 (= lt!1711818 lt!1711813)))

(declare-fun lt!1711812 () Unit!97630)

(declare-fun e!2827077 () Unit!97630)

(assert (=> d!1401642 (= lt!1711812 e!2827077)))

(declare-fun c!774863 () Bool)

(assert (=> d!1401642 (= c!774863 lt!1711813)))

(assert (=> d!1401642 (= lt!1711813 (containsKey!1859 (toList!4391 lt!1710842) (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(assert (=> d!1401642 (= (contains!13513 lt!1710842 (_1!28895 (h!56607 (_2!28896 lt!1710445)))) lt!1711818)))

(declare-fun b!4536904 () Bool)

(declare-fun lt!1711819 () Unit!97630)

(assert (=> b!4536904 (= e!2827077 lt!1711819)))

(declare-fun lt!1711814 () Unit!97630)

(assert (=> b!4536904 (= lt!1711814 (lemmaContainsKeyImpliesGetValueByKeyDefined!1040 (toList!4391 lt!1710842) (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(assert (=> b!4536904 (isDefined!8463 (getValueByKey!1137 (toList!4391 lt!1710842) (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun lt!1711816 () Unit!97630)

(assert (=> b!4536904 (= lt!1711816 lt!1711814)))

(assert (=> b!4536904 (= lt!1711819 (lemmaInListThenGetKeysListContains!483 (toList!4391 lt!1710842) (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun call!316351 () Bool)

(assert (=> b!4536904 call!316351))

(declare-fun b!4536905 () Bool)

(assert (=> b!4536905 false))

(declare-fun lt!1711815 () Unit!97630)

(declare-fun lt!1711817 () Unit!97630)

(assert (=> b!4536905 (= lt!1711815 lt!1711817)))

(assert (=> b!4536905 (containsKey!1859 (toList!4391 lt!1710842) (_1!28895 (h!56607 (_2!28896 lt!1710445))))))

(assert (=> b!4536905 (= lt!1711817 (lemmaInGetKeysListThenContainsKey!486 (toList!4391 lt!1710842) (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun e!2827079 () Unit!97630)

(declare-fun Unit!98015 () Unit!97630)

(assert (=> b!4536905 (= e!2827079 Unit!98015)))

(declare-fun bm!316346 () Bool)

(declare-fun e!2827081 () List!50859)

(assert (=> bm!316346 (= call!316351 (contains!13515 e!2827081 (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun c!774865 () Bool)

(assert (=> bm!316346 (= c!774865 c!774863)))

(declare-fun b!4536906 () Bool)

(declare-fun e!2827076 () Bool)

(assert (=> b!4536906 (= e!2827078 e!2827076)))

(declare-fun res!1890256 () Bool)

(assert (=> b!4536906 (=> (not res!1890256) (not e!2827076))))

(assert (=> b!4536906 (= res!1890256 (isDefined!8463 (getValueByKey!1137 (toList!4391 lt!1710842) (_1!28895 (h!56607 (_2!28896 lt!1710445))))))))

(declare-fun b!4536907 () Bool)

(assert (=> b!4536907 (= e!2827081 (keys!17648 lt!1710842))))

(declare-fun b!4536908 () Bool)

(assert (=> b!4536908 (= e!2827077 e!2827079)))

(declare-fun c!774864 () Bool)

(assert (=> b!4536908 (= c!774864 call!316351)))

(declare-fun b!4536909 () Bool)

(declare-fun Unit!98016 () Unit!97630)

(assert (=> b!4536909 (= e!2827079 Unit!98016)))

(declare-fun b!4536910 () Bool)

(assert (=> b!4536910 (= e!2827081 (getKeysList!487 (toList!4391 lt!1710842)))))

(declare-fun b!4536911 () Bool)

(assert (=> b!4536911 (= e!2827076 (contains!13515 (keys!17648 lt!1710842) (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun b!4536912 () Bool)

(assert (=> b!4536912 (= e!2827080 (not (contains!13515 (keys!17648 lt!1710842) (_1!28895 (h!56607 (_2!28896 lt!1710445))))))))

(assert (= (and d!1401642 c!774863) b!4536904))

(assert (= (and d!1401642 (not c!774863)) b!4536908))

(assert (= (and b!4536908 c!774864) b!4536905))

(assert (= (and b!4536908 (not c!774864)) b!4536909))

(assert (= (or b!4536904 b!4536908) bm!316346))

(assert (= (and bm!316346 c!774865) b!4536910))

(assert (= (and bm!316346 (not c!774865)) b!4536907))

(assert (= (and d!1401642 res!1890255) b!4536912))

(assert (= (and d!1401642 (not res!1890254)) b!4536906))

(assert (= (and b!4536906 res!1890256) b!4536911))

(declare-fun m!5300161 () Bool)

(assert (=> b!4536911 m!5300161))

(assert (=> b!4536911 m!5300161))

(declare-fun m!5300163 () Bool)

(assert (=> b!4536911 m!5300163))

(declare-fun m!5300165 () Bool)

(assert (=> b!4536905 m!5300165))

(declare-fun m!5300167 () Bool)

(assert (=> b!4536905 m!5300167))

(assert (=> b!4536907 m!5300161))

(assert (=> b!4536912 m!5300161))

(assert (=> b!4536912 m!5300161))

(assert (=> b!4536912 m!5300163))

(declare-fun m!5300169 () Bool)

(assert (=> b!4536906 m!5300169))

(assert (=> b!4536906 m!5300169))

(declare-fun m!5300171 () Bool)

(assert (=> b!4536906 m!5300171))

(declare-fun m!5300173 () Bool)

(assert (=> bm!316346 m!5300173))

(declare-fun m!5300175 () Bool)

(assert (=> b!4536910 m!5300175))

(declare-fun m!5300177 () Bool)

(assert (=> b!4536904 m!5300177))

(assert (=> b!4536904 m!5300169))

(assert (=> b!4536904 m!5300169))

(assert (=> b!4536904 m!5300171))

(declare-fun m!5300179 () Bool)

(assert (=> b!4536904 m!5300179))

(assert (=> d!1401642 m!5300165))

(assert (=> b!4535542 d!1401642))

(declare-fun d!1401644 () Bool)

(declare-fun e!2827084 () Bool)

(assert (=> d!1401644 e!2827084))

(declare-fun res!1890257 () Bool)

(assert (=> d!1401644 (=> res!1890257 e!2827084)))

(declare-fun e!2827086 () Bool)

(assert (=> d!1401644 (= res!1890257 e!2827086)))

(declare-fun res!1890258 () Bool)

(assert (=> d!1401644 (=> (not res!1890258) (not e!2827086))))

(declare-fun lt!1711826 () Bool)

(assert (=> d!1401644 (= res!1890258 (not lt!1711826))))

(declare-fun lt!1711821 () Bool)

(assert (=> d!1401644 (= lt!1711826 lt!1711821)))

(declare-fun lt!1711820 () Unit!97630)

(declare-fun e!2827083 () Unit!97630)

(assert (=> d!1401644 (= lt!1711820 e!2827083)))

(declare-fun c!774866 () Bool)

(assert (=> d!1401644 (= c!774866 lt!1711821)))

(assert (=> d!1401644 (= lt!1711821 (containsKey!1859 (toList!4391 lt!1710840) (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(assert (=> d!1401644 (= (contains!13513 lt!1710840 (_1!28895 (h!56607 (_2!28896 lt!1710445)))) lt!1711826)))

(declare-fun b!4536913 () Bool)

(declare-fun lt!1711827 () Unit!97630)

(assert (=> b!4536913 (= e!2827083 lt!1711827)))

(declare-fun lt!1711822 () Unit!97630)

(assert (=> b!4536913 (= lt!1711822 (lemmaContainsKeyImpliesGetValueByKeyDefined!1040 (toList!4391 lt!1710840) (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(assert (=> b!4536913 (isDefined!8463 (getValueByKey!1137 (toList!4391 lt!1710840) (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun lt!1711824 () Unit!97630)

(assert (=> b!4536913 (= lt!1711824 lt!1711822)))

(assert (=> b!4536913 (= lt!1711827 (lemmaInListThenGetKeysListContains!483 (toList!4391 lt!1710840) (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun call!316352 () Bool)

(assert (=> b!4536913 call!316352))

(declare-fun b!4536914 () Bool)

(assert (=> b!4536914 false))

(declare-fun lt!1711823 () Unit!97630)

(declare-fun lt!1711825 () Unit!97630)

(assert (=> b!4536914 (= lt!1711823 lt!1711825)))

(assert (=> b!4536914 (containsKey!1859 (toList!4391 lt!1710840) (_1!28895 (h!56607 (_2!28896 lt!1710445))))))

(assert (=> b!4536914 (= lt!1711825 (lemmaInGetKeysListThenContainsKey!486 (toList!4391 lt!1710840) (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun e!2827085 () Unit!97630)

(declare-fun Unit!98017 () Unit!97630)

(assert (=> b!4536914 (= e!2827085 Unit!98017)))

(declare-fun bm!316347 () Bool)

(declare-fun e!2827087 () List!50859)

(assert (=> bm!316347 (= call!316352 (contains!13515 e!2827087 (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun c!774868 () Bool)

(assert (=> bm!316347 (= c!774868 c!774866)))

(declare-fun b!4536915 () Bool)

(declare-fun e!2827082 () Bool)

(assert (=> b!4536915 (= e!2827084 e!2827082)))

(declare-fun res!1890259 () Bool)

(assert (=> b!4536915 (=> (not res!1890259) (not e!2827082))))

(assert (=> b!4536915 (= res!1890259 (isDefined!8463 (getValueByKey!1137 (toList!4391 lt!1710840) (_1!28895 (h!56607 (_2!28896 lt!1710445))))))))

(declare-fun b!4536916 () Bool)

(assert (=> b!4536916 (= e!2827087 (keys!17648 lt!1710840))))

(declare-fun b!4536917 () Bool)

(assert (=> b!4536917 (= e!2827083 e!2827085)))

(declare-fun c!774867 () Bool)

(assert (=> b!4536917 (= c!774867 call!316352)))

(declare-fun b!4536918 () Bool)

(declare-fun Unit!98018 () Unit!97630)

(assert (=> b!4536918 (= e!2827085 Unit!98018)))

(declare-fun b!4536919 () Bool)

(assert (=> b!4536919 (= e!2827087 (getKeysList!487 (toList!4391 lt!1710840)))))

(declare-fun b!4536920 () Bool)

(assert (=> b!4536920 (= e!2827082 (contains!13515 (keys!17648 lt!1710840) (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun b!4536921 () Bool)

(assert (=> b!4536921 (= e!2827086 (not (contains!13515 (keys!17648 lt!1710840) (_1!28895 (h!56607 (_2!28896 lt!1710445))))))))

(assert (= (and d!1401644 c!774866) b!4536913))

(assert (= (and d!1401644 (not c!774866)) b!4536917))

(assert (= (and b!4536917 c!774867) b!4536914))

(assert (= (and b!4536917 (not c!774867)) b!4536918))

(assert (= (or b!4536913 b!4536917) bm!316347))

(assert (= (and bm!316347 c!774868) b!4536919))

(assert (= (and bm!316347 (not c!774868)) b!4536916))

(assert (= (and d!1401644 res!1890258) b!4536921))

(assert (= (and d!1401644 (not res!1890257)) b!4536915))

(assert (= (and b!4536915 res!1890259) b!4536920))

(declare-fun m!5300181 () Bool)

(assert (=> b!4536920 m!5300181))

(assert (=> b!4536920 m!5300181))

(declare-fun m!5300183 () Bool)

(assert (=> b!4536920 m!5300183))

(declare-fun m!5300185 () Bool)

(assert (=> b!4536914 m!5300185))

(declare-fun m!5300187 () Bool)

(assert (=> b!4536914 m!5300187))

(assert (=> b!4536916 m!5300181))

(assert (=> b!4536921 m!5300181))

(assert (=> b!4536921 m!5300181))

(assert (=> b!4536921 m!5300183))

(declare-fun m!5300189 () Bool)

(assert (=> b!4536915 m!5300189))

(assert (=> b!4536915 m!5300189))

(declare-fun m!5300191 () Bool)

(assert (=> b!4536915 m!5300191))

(declare-fun m!5300193 () Bool)

(assert (=> bm!316347 m!5300193))

(declare-fun m!5300195 () Bool)

(assert (=> b!4536919 m!5300195))

(declare-fun m!5300197 () Bool)

(assert (=> b!4536913 m!5300197))

(assert (=> b!4536913 m!5300189))

(assert (=> b!4536913 m!5300189))

(assert (=> b!4536913 m!5300191))

(declare-fun m!5300199 () Bool)

(assert (=> b!4536913 m!5300199))

(assert (=> d!1401644 m!5300185))

(assert (=> b!4535542 d!1401644))

(declare-fun d!1401646 () Bool)

(declare-fun res!1890260 () Bool)

(declare-fun e!2827088 () Bool)

(assert (=> d!1401646 (=> res!1890260 e!2827088)))

(assert (=> d!1401646 (= res!1890260 ((_ is Nil!50732) (t!357818 (_2!28896 lt!1710445))))))

(assert (=> d!1401646 (= (forall!10330 (t!357818 (_2!28896 lt!1710445)) lambda!175341) e!2827088)))

(declare-fun b!4536922 () Bool)

(declare-fun e!2827089 () Bool)

(assert (=> b!4536922 (= e!2827088 e!2827089)))

(declare-fun res!1890261 () Bool)

(assert (=> b!4536922 (=> (not res!1890261) (not e!2827089))))

(assert (=> b!4536922 (= res!1890261 (dynLambda!21205 lambda!175341 (h!56607 (t!357818 (_2!28896 lt!1710445)))))))

(declare-fun b!4536923 () Bool)

(assert (=> b!4536923 (= e!2827089 (forall!10330 (t!357818 (t!357818 (_2!28896 lt!1710445))) lambda!175341))))

(assert (= (and d!1401646 (not res!1890260)) b!4536922))

(assert (= (and b!4536922 res!1890261) b!4536923))

(declare-fun b_lambda!157389 () Bool)

(assert (=> (not b_lambda!157389) (not b!4536922)))

(declare-fun m!5300201 () Bool)

(assert (=> b!4536922 m!5300201))

(declare-fun m!5300203 () Bool)

(assert (=> b!4536923 m!5300203))

(assert (=> b!4535542 d!1401646))

(declare-fun bs!873810 () Bool)

(declare-fun b!4536927 () Bool)

(assert (= bs!873810 (and b!4536927 b!4536628)))

(declare-fun lambda!175521 () Int)

(assert (=> bs!873810 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1711572) (= lambda!175521 lambda!175495))))

(declare-fun bs!873811 () Bool)

(assert (= bs!873811 (and b!4536927 b!4536566)))

(assert (=> bs!873811 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) (= lambda!175521 lambda!175483))))

(declare-fun bs!873812 () Bool)

(assert (= bs!873812 (and b!4536927 b!4535309)))

(assert (=> bs!873812 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710578) (= lambda!175521 lambda!175267))))

(declare-fun bs!873813 () Bool)

(assert (= bs!873813 (and b!4536927 b!4535797)))

(assert (=> bs!873813 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710989) (= lambda!175521 lambda!175373))))

(declare-fun bs!873814 () Bool)

(assert (= bs!873814 (and b!4536927 d!1401484)))

(assert (=> bs!873814 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1711583) (= lambda!175521 lambda!175496))))

(declare-fun bs!873815 () Bool)

(assert (= bs!873815 (and b!4536927 b!4535625)))

(assert (=> bs!873815 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710415) (= lambda!175521 lambda!175349))))

(declare-fun bs!873816 () Bool)

(assert (= bs!873816 (and b!4536927 b!4535622)))

(assert (=> bs!873816 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710902) (= lambda!175521 lambda!175351))))

(declare-fun bs!873817 () Bool)

(assert (= bs!873817 (and b!4536927 b!4535669)))

(assert (=> bs!873817 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175521 lambda!175360))))

(declare-fun bs!873818 () Bool)

(assert (= bs!873818 (and b!4536927 b!4536291)))

(assert (=> bs!873818 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1711317) (= lambda!175521 lambda!175439))))

(declare-fun bs!873819 () Bool)

(assert (= bs!873819 (and b!4536927 d!1401348)))

(assert (=> bs!873819 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710429) (= lambda!175521 lambda!175464))))

(declare-fun bs!873820 () Bool)

(assert (= bs!873820 (and b!4536927 b!4536264)))

(assert (=> bs!873820 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175521 lambda!175428))))

(declare-fun bs!873821 () Bool)

(assert (= bs!873821 (and b!4536927 b!4535832)))

(assert (=> bs!873821 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175521 lambda!175377))))

(declare-fun bs!873822 () Bool)

(assert (= bs!873822 (and b!4536927 d!1401018)))

(assert (=> bs!873822 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710902) (= lambda!175521 lambda!175389))))

(declare-fun bs!873823 () Bool)

(assert (= bs!873823 (and b!4536927 b!4536261)))

(assert (=> bs!873823 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175521 lambda!175429))))

(declare-fun bs!873824 () Bool)

(assert (= bs!873824 (and b!4536927 d!1400816)))

(assert (=> bs!873824 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710851) (= lambda!175521 lambda!175344))))

(assert (=> bs!873818 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175521 lambda!175438))))

(declare-fun bs!873825 () Bool)

(assert (= bs!873825 (and b!4536927 b!4536342)))

(assert (=> bs!873825 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) (-!418 lt!1710448 key!3287)) (= lambda!175521 lambda!175446))))

(declare-fun bs!873826 () Bool)

(assert (= bs!873826 (and b!4536927 d!1401276)))

(assert (=> bs!873826 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1711376) (= lambda!175521 lambda!175450))))

(declare-fun bs!873827 () Bool)

(assert (= bs!873827 (and b!4536927 b!4535666)))

(assert (=> bs!873827 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175521 lambda!175361))))

(declare-fun bs!873828 () Bool)

(assert (= bs!873828 (and b!4536927 b!4535829)))

(assert (=> bs!873828 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1711026) (= lambda!175521 lambda!175379))))

(assert (=> bs!873816 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710415) (= lambda!175521 lambda!175350))))

(declare-fun bs!873829 () Bool)

(assert (= bs!873829 (and b!4536927 d!1401188)))

(assert (=> bs!873829 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1711279) (= lambda!175521 lambda!175431))))

(declare-fun bs!873830 () Bool)

(assert (= bs!873830 (and b!4536927 b!4536294)))

(assert (=> bs!873830 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175521 lambda!175437))))

(assert (=> bs!873823 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1711268) (= lambda!175521 lambda!175430))))

(declare-fun bs!873831 () Bool)

(assert (= bs!873831 (and b!4536927 b!4536886)))

(assert (=> bs!873831 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175521 lambda!175516))))

(declare-fun bs!873832 () Bool)

(assert (= bs!873832 (and b!4536927 d!1400724)))

(assert (=> bs!873832 (not (= lambda!175521 lambda!175312))))

(declare-fun bs!873833 () Bool)

(assert (= bs!873833 (and b!4536927 d!1400896)))

(assert (=> bs!873833 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710949) (= lambda!175521 lambda!175363))))

(assert (=> bs!873828 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175521 lambda!175378))))

(declare-fun bs!873834 () Bool)

(assert (= bs!873834 (and b!4536927 b!4536889)))

(assert (=> bs!873834 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175521 lambda!175514))))

(assert (=> bs!873813 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175521 lambda!175372))))

(declare-fun bs!873835 () Bool)

(assert (= bs!873835 (and b!4536927 d!1401452)))

(assert (=> bs!873835 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1711538) (= lambda!175521 lambda!175486))))

(declare-fun bs!873836 () Bool)

(assert (= bs!873836 (and b!4536927 d!1400874)))

(assert (=> bs!873836 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710913) (= lambda!175521 lambda!175352))))

(declare-fun bs!873837 () Bool)

(assert (= bs!873837 (and b!4536927 b!4536345)))

(assert (=> bs!873837 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) (-!418 lt!1710448 key!3287)) (= lambda!175521 lambda!175443))))

(declare-fun bs!873838 () Bool)

(assert (= bs!873838 (and b!4536927 b!4535199)))

(assert (=> bs!873838 (not (= lambda!175521 lambda!175215))))

(declare-fun bs!873839 () Bool)

(assert (= bs!873839 (and b!4536927 b!4535545)))

(assert (=> bs!873839 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710429) (= lambda!175521 lambda!175339))))

(declare-fun bs!873840 () Bool)

(assert (= bs!873840 (and b!4536927 d!1401624)))

(assert (=> bs!873840 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1711804) (= lambda!175521 lambda!175520))))

(declare-fun bs!873841 () Bool)

(assert (= bs!873841 (and b!4536927 b!4536631)))

(assert (=> bs!873841 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477))))) (= lambda!175521 lambda!175492))))

(assert (=> bs!873810 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477))))) (= lambda!175521 lambda!175494))))

(assert (=> bs!873811 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1711527) (= lambda!175521 lambda!175485))))

(declare-fun bs!873843 () Bool)

(assert (= bs!873843 (and b!4536927 d!1401004)))

(assert (=> bs!873843 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1711037) (= lambda!175521 lambda!175380))))

(declare-fun bs!873844 () Bool)

(assert (= bs!873844 (and b!4536927 d!1401222)))

(assert (=> bs!873844 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1711328) (= lambda!175521 lambda!175440))))

(declare-fun bs!873845 () Bool)

(assert (= bs!873845 (and b!4536927 b!4535800)))

(assert (=> bs!873845 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175521 lambda!175371))))

(declare-fun bs!873846 () Bool)

(assert (= bs!873846 (and b!4536927 d!1401354)))

(assert (=> bs!873846 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710448) (= lambda!175521 lambda!175466))))

(declare-fun bs!873847 () Bool)

(assert (= bs!873847 (and b!4536927 b!4535542)))

(assert (=> bs!873847 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710429) (= lambda!175521 lambda!175340))))

(assert (=> bs!873825 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1711365) (= lambda!175521 lambda!175447))))

(declare-fun bs!873848 () Bool)

(assert (= bs!873848 (and b!4536927 b!4536569)))

(assert (=> bs!873848 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) (= lambda!175521 lambda!175482))))

(declare-fun bs!873849 () Bool)

(assert (= bs!873849 (and b!4536927 d!1400980)))

(assert (=> bs!873849 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1711000) (= lambda!175521 lambda!175374))))

(declare-fun bs!873850 () Bool)

(assert (= bs!873850 (and b!4536927 d!1400628)))

(assert (=> bs!873850 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710589) (= lambda!175521 lambda!175268))))

(assert (=> bs!873812 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710448) (= lambda!175521 lambda!175266))))

(declare-fun bs!873851 () Bool)

(assert (= bs!873851 (and b!4536927 b!4535312)))

(assert (=> bs!873851 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710448) (= lambda!175521 lambda!175265))))

(assert (=> bs!873847 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710840) (= lambda!175521 lambda!175341))))

(assert (=> bs!873831 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1711793) (= lambda!175521 lambda!175518))))

(declare-fun bs!873852 () Bool)

(assert (= bs!873852 (and b!4536927 d!1401614)))

(assert (=> bs!873852 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710578) (= lambda!175521 lambda!175510))))

(declare-fun bs!873853 () Bool)

(assert (= bs!873853 (and b!4536927 d!1401418)))

(assert (=> bs!873853 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710415) (= lambda!175521 lambda!175476))))

(assert (=> bs!873827 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710938) (= lambda!175521 lambda!175362))))

(assert (=> b!4536927 true))

(declare-fun bs!873854 () Bool)

(declare-fun b!4536924 () Bool)

(assert (= bs!873854 (and b!4536924 b!4536628)))

(declare-fun lambda!175522 () Int)

(assert (=> bs!873854 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1711572) (= lambda!175522 lambda!175495))))

(declare-fun bs!873855 () Bool)

(assert (= bs!873855 (and b!4536924 b!4536566)))

(assert (=> bs!873855 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) (= lambda!175522 lambda!175483))))

(declare-fun bs!873856 () Bool)

(assert (= bs!873856 (and b!4536924 b!4535309)))

(assert (=> bs!873856 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710578) (= lambda!175522 lambda!175267))))

(declare-fun bs!873857 () Bool)

(assert (= bs!873857 (and b!4536924 b!4535797)))

(assert (=> bs!873857 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710989) (= lambda!175522 lambda!175373))))

(declare-fun bs!873858 () Bool)

(assert (= bs!873858 (and b!4536924 d!1401484)))

(assert (=> bs!873858 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1711583) (= lambda!175522 lambda!175496))))

(declare-fun bs!873859 () Bool)

(assert (= bs!873859 (and b!4536924 b!4535622)))

(assert (=> bs!873859 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710902) (= lambda!175522 lambda!175351))))

(declare-fun bs!873860 () Bool)

(assert (= bs!873860 (and b!4536924 b!4535669)))

(assert (=> bs!873860 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175522 lambda!175360))))

(declare-fun bs!873861 () Bool)

(assert (= bs!873861 (and b!4536924 b!4536291)))

(assert (=> bs!873861 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1711317) (= lambda!175522 lambda!175439))))

(declare-fun bs!873862 () Bool)

(assert (= bs!873862 (and b!4536924 d!1401348)))

(assert (=> bs!873862 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710429) (= lambda!175522 lambda!175464))))

(declare-fun bs!873863 () Bool)

(assert (= bs!873863 (and b!4536924 b!4536264)))

(assert (=> bs!873863 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175522 lambda!175428))))

(declare-fun bs!873864 () Bool)

(assert (= bs!873864 (and b!4536924 b!4535832)))

(assert (=> bs!873864 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175522 lambda!175377))))

(declare-fun bs!873865 () Bool)

(assert (= bs!873865 (and b!4536924 d!1401018)))

(assert (=> bs!873865 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710902) (= lambda!175522 lambda!175389))))

(declare-fun bs!873866 () Bool)

(assert (= bs!873866 (and b!4536924 b!4536261)))

(assert (=> bs!873866 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175522 lambda!175429))))

(declare-fun bs!873867 () Bool)

(assert (= bs!873867 (and b!4536924 d!1400816)))

(assert (=> bs!873867 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710851) (= lambda!175522 lambda!175344))))

(assert (=> bs!873861 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175522 lambda!175438))))

(declare-fun bs!873868 () Bool)

(assert (= bs!873868 (and b!4536924 b!4536342)))

(assert (=> bs!873868 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) (-!418 lt!1710448 key!3287)) (= lambda!175522 lambda!175446))))

(declare-fun bs!873869 () Bool)

(assert (= bs!873869 (and b!4536924 d!1401276)))

(assert (=> bs!873869 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1711376) (= lambda!175522 lambda!175450))))

(declare-fun bs!873870 () Bool)

(assert (= bs!873870 (and b!4536924 b!4535666)))

(assert (=> bs!873870 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175522 lambda!175361))))

(declare-fun bs!873871 () Bool)

(assert (= bs!873871 (and b!4536924 b!4535829)))

(assert (=> bs!873871 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1711026) (= lambda!175522 lambda!175379))))

(assert (=> bs!873859 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710415) (= lambda!175522 lambda!175350))))

(declare-fun bs!873872 () Bool)

(assert (= bs!873872 (and b!4536924 d!1401188)))

(assert (=> bs!873872 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1711279) (= lambda!175522 lambda!175431))))

(declare-fun bs!873873 () Bool)

(assert (= bs!873873 (and b!4536924 b!4536294)))

(assert (=> bs!873873 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175522 lambda!175437))))

(assert (=> bs!873866 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1711268) (= lambda!175522 lambda!175430))))

(declare-fun bs!873874 () Bool)

(assert (= bs!873874 (and b!4536924 b!4536886)))

(assert (=> bs!873874 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175522 lambda!175516))))

(declare-fun bs!873875 () Bool)

(assert (= bs!873875 (and b!4536924 d!1400724)))

(assert (=> bs!873875 (not (= lambda!175522 lambda!175312))))

(declare-fun bs!873876 () Bool)

(assert (= bs!873876 (and b!4536924 d!1400896)))

(assert (=> bs!873876 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710949) (= lambda!175522 lambda!175363))))

(assert (=> bs!873871 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175522 lambda!175378))))

(declare-fun bs!873877 () Bool)

(assert (= bs!873877 (and b!4536924 b!4536889)))

(assert (=> bs!873877 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175522 lambda!175514))))

(assert (=> bs!873857 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175522 lambda!175372))))

(declare-fun bs!873878 () Bool)

(assert (= bs!873878 (and b!4536924 d!1401452)))

(assert (=> bs!873878 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1711538) (= lambda!175522 lambda!175486))))

(declare-fun bs!873879 () Bool)

(assert (= bs!873879 (and b!4536924 d!1400874)))

(assert (=> bs!873879 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710913) (= lambda!175522 lambda!175352))))

(declare-fun bs!873880 () Bool)

(assert (= bs!873880 (and b!4536924 b!4535625)))

(assert (=> bs!873880 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710415) (= lambda!175522 lambda!175349))))

(declare-fun bs!873881 () Bool)

(assert (= bs!873881 (and b!4536924 b!4536927)))

(assert (=> bs!873881 (= lambda!175522 lambda!175521)))

(declare-fun bs!873882 () Bool)

(assert (= bs!873882 (and b!4536924 b!4536345)))

(assert (=> bs!873882 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) (-!418 lt!1710448 key!3287)) (= lambda!175522 lambda!175443))))

(declare-fun bs!873883 () Bool)

(assert (= bs!873883 (and b!4536924 b!4535199)))

(assert (=> bs!873883 (not (= lambda!175522 lambda!175215))))

(declare-fun bs!873884 () Bool)

(assert (= bs!873884 (and b!4536924 b!4535545)))

(assert (=> bs!873884 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710429) (= lambda!175522 lambda!175339))))

(declare-fun bs!873885 () Bool)

(assert (= bs!873885 (and b!4536924 d!1401624)))

(assert (=> bs!873885 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1711804) (= lambda!175522 lambda!175520))))

(declare-fun bs!873886 () Bool)

(assert (= bs!873886 (and b!4536924 b!4536631)))

(assert (=> bs!873886 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477))))) (= lambda!175522 lambda!175492))))

(assert (=> bs!873854 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477))))) (= lambda!175522 lambda!175494))))

(assert (=> bs!873855 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1711527) (= lambda!175522 lambda!175485))))

(declare-fun bs!873887 () Bool)

(assert (= bs!873887 (and b!4536924 d!1401004)))

(assert (=> bs!873887 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1711037) (= lambda!175522 lambda!175380))))

(declare-fun bs!873888 () Bool)

(assert (= bs!873888 (and b!4536924 d!1401222)))

(assert (=> bs!873888 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1711328) (= lambda!175522 lambda!175440))))

(declare-fun bs!873889 () Bool)

(assert (= bs!873889 (and b!4536924 b!4535800)))

(assert (=> bs!873889 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175522 lambda!175371))))

(declare-fun bs!873890 () Bool)

(assert (= bs!873890 (and b!4536924 d!1401354)))

(assert (=> bs!873890 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710448) (= lambda!175522 lambda!175466))))

(declare-fun bs!873891 () Bool)

(assert (= bs!873891 (and b!4536924 b!4535542)))

(assert (=> bs!873891 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710429) (= lambda!175522 lambda!175340))))

(assert (=> bs!873868 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1711365) (= lambda!175522 lambda!175447))))

(declare-fun bs!873892 () Bool)

(assert (= bs!873892 (and b!4536924 b!4536569)))

(assert (=> bs!873892 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) (= lambda!175522 lambda!175482))))

(declare-fun bs!873893 () Bool)

(assert (= bs!873893 (and b!4536924 d!1400980)))

(assert (=> bs!873893 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1711000) (= lambda!175522 lambda!175374))))

(declare-fun bs!873894 () Bool)

(assert (= bs!873894 (and b!4536924 d!1400628)))

(assert (=> bs!873894 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710589) (= lambda!175522 lambda!175268))))

(assert (=> bs!873856 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710448) (= lambda!175522 lambda!175266))))

(declare-fun bs!873895 () Bool)

(assert (= bs!873895 (and b!4536924 b!4535312)))

(assert (=> bs!873895 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710448) (= lambda!175522 lambda!175265))))

(assert (=> bs!873891 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710840) (= lambda!175522 lambda!175341))))

(assert (=> bs!873874 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1711793) (= lambda!175522 lambda!175518))))

(declare-fun bs!873896 () Bool)

(assert (= bs!873896 (and b!4536924 d!1401614)))

(assert (=> bs!873896 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710578) (= lambda!175522 lambda!175510))))

(declare-fun bs!873897 () Bool)

(assert (= bs!873897 (and b!4536924 d!1401418)))

(assert (=> bs!873897 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710415) (= lambda!175522 lambda!175476))))

(assert (=> bs!873870 (= (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1710938) (= lambda!175522 lambda!175362))))

(assert (=> b!4536924 true))

(declare-fun lambda!175523 () Int)

(declare-fun lt!1711831 () ListMap!3653)

(assert (=> bs!873854 (= (= lt!1711831 lt!1711572) (= lambda!175523 lambda!175495))))

(assert (=> bs!873855 (= (= lt!1711831 (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) (= lambda!175523 lambda!175483))))

(assert (=> bs!873856 (= (= lt!1711831 lt!1710578) (= lambda!175523 lambda!175267))))

(assert (=> bs!873857 (= (= lt!1711831 lt!1710989) (= lambda!175523 lambda!175373))))

(assert (=> bs!873858 (= (= lt!1711831 lt!1711583) (= lambda!175523 lambda!175496))))

(assert (=> bs!873859 (= (= lt!1711831 lt!1710902) (= lambda!175523 lambda!175351))))

(assert (=> bs!873860 (= (= lt!1711831 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175523 lambda!175360))))

(assert (=> bs!873861 (= (= lt!1711831 lt!1711317) (= lambda!175523 lambda!175439))))

(assert (=> bs!873862 (= (= lt!1711831 lt!1710429) (= lambda!175523 lambda!175464))))

(assert (=> bs!873863 (= (= lt!1711831 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175523 lambda!175428))))

(assert (=> bs!873864 (= (= lt!1711831 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175523 lambda!175377))))

(assert (=> bs!873865 (= (= lt!1711831 lt!1710902) (= lambda!175523 lambda!175389))))

(assert (=> bs!873866 (= (= lt!1711831 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175523 lambda!175429))))

(assert (=> bs!873867 (= (= lt!1711831 lt!1710851) (= lambda!175523 lambda!175344))))

(assert (=> bs!873861 (= (= lt!1711831 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175523 lambda!175438))))

(assert (=> bs!873868 (= (= lt!1711831 (-!418 lt!1710448 key!3287)) (= lambda!175523 lambda!175446))))

(assert (=> bs!873869 (= (= lt!1711831 lt!1711376) (= lambda!175523 lambda!175450))))

(assert (=> bs!873870 (= (= lt!1711831 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175523 lambda!175361))))

(assert (=> bs!873871 (= (= lt!1711831 lt!1711026) (= lambda!175523 lambda!175379))))

(assert (=> bs!873859 (= (= lt!1711831 lt!1710415) (= lambda!175523 lambda!175350))))

(assert (=> bs!873872 (= (= lt!1711831 lt!1711279) (= lambda!175523 lambda!175431))))

(assert (=> bs!873873 (= (= lt!1711831 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175523 lambda!175437))))

(assert (=> bs!873866 (= (= lt!1711831 lt!1711268) (= lambda!175523 lambda!175430))))

(assert (=> bs!873874 (= (= lt!1711831 (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175523 lambda!175516))))

(assert (=> bs!873875 (not (= lambda!175523 lambda!175312))))

(assert (=> bs!873876 (= (= lt!1711831 lt!1710949) (= lambda!175523 lambda!175363))))

(assert (=> bs!873871 (= (= lt!1711831 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175523 lambda!175378))))

(assert (=> bs!873877 (= (= lt!1711831 (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175523 lambda!175514))))

(assert (=> bs!873857 (= (= lt!1711831 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175523 lambda!175372))))

(assert (=> bs!873878 (= (= lt!1711831 lt!1711538) (= lambda!175523 lambda!175486))))

(assert (=> bs!873879 (= (= lt!1711831 lt!1710913) (= lambda!175523 lambda!175352))))

(assert (=> bs!873880 (= (= lt!1711831 lt!1710415) (= lambda!175523 lambda!175349))))

(assert (=> bs!873881 (= (= lt!1711831 (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175523 lambda!175521))))

(assert (=> bs!873882 (= (= lt!1711831 (-!418 lt!1710448 key!3287)) (= lambda!175523 lambda!175443))))

(assert (=> bs!873884 (= (= lt!1711831 lt!1710429) (= lambda!175523 lambda!175339))))

(assert (=> bs!873883 (not (= lambda!175523 lambda!175215))))

(assert (=> b!4536924 (= (= lt!1711831 (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175523 lambda!175522))))

(assert (=> bs!873885 (= (= lt!1711831 lt!1711804) (= lambda!175523 lambda!175520))))

(assert (=> bs!873886 (= (= lt!1711831 (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477))))) (= lambda!175523 lambda!175492))))

(assert (=> bs!873854 (= (= lt!1711831 (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477))))) (= lambda!175523 lambda!175494))))

(assert (=> bs!873855 (= (= lt!1711831 lt!1711527) (= lambda!175523 lambda!175485))))

(assert (=> bs!873887 (= (= lt!1711831 lt!1711037) (= lambda!175523 lambda!175380))))

(assert (=> bs!873888 (= (= lt!1711831 lt!1711328) (= lambda!175523 lambda!175440))))

(assert (=> bs!873889 (= (= lt!1711831 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175523 lambda!175371))))

(assert (=> bs!873890 (= (= lt!1711831 lt!1710448) (= lambda!175523 lambda!175466))))

(assert (=> bs!873891 (= (= lt!1711831 lt!1710429) (= lambda!175523 lambda!175340))))

(assert (=> bs!873868 (= (= lt!1711831 lt!1711365) (= lambda!175523 lambda!175447))))

(assert (=> bs!873892 (= (= lt!1711831 (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) (= lambda!175523 lambda!175482))))

(assert (=> bs!873893 (= (= lt!1711831 lt!1711000) (= lambda!175523 lambda!175374))))

(assert (=> bs!873894 (= (= lt!1711831 lt!1710589) (= lambda!175523 lambda!175268))))

(assert (=> bs!873856 (= (= lt!1711831 lt!1710448) (= lambda!175523 lambda!175266))))

(assert (=> bs!873895 (= (= lt!1711831 lt!1710448) (= lambda!175523 lambda!175265))))

(assert (=> bs!873891 (= (= lt!1711831 lt!1710840) (= lambda!175523 lambda!175341))))

(assert (=> bs!873874 (= (= lt!1711831 lt!1711793) (= lambda!175523 lambda!175518))))

(assert (=> bs!873896 (= (= lt!1711831 lt!1710578) (= lambda!175523 lambda!175510))))

(assert (=> bs!873897 (= (= lt!1711831 lt!1710415) (= lambda!175523 lambda!175476))))

(assert (=> bs!873870 (= (= lt!1711831 lt!1710938) (= lambda!175523 lambda!175362))))

(assert (=> b!4536924 true))

(declare-fun bs!873931 () Bool)

(declare-fun d!1401648 () Bool)

(assert (= bs!873931 (and d!1401648 b!4536628)))

(declare-fun lt!1711842 () ListMap!3653)

(declare-fun lambda!175525 () Int)

(assert (=> bs!873931 (= (= lt!1711842 lt!1711572) (= lambda!175525 lambda!175495))))

(declare-fun bs!873933 () Bool)

(assert (= bs!873933 (and d!1401648 b!4536566)))

(assert (=> bs!873933 (= (= lt!1711842 (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) (= lambda!175525 lambda!175483))))

(declare-fun bs!873935 () Bool)

(assert (= bs!873935 (and d!1401648 b!4535309)))

(assert (=> bs!873935 (= (= lt!1711842 lt!1710578) (= lambda!175525 lambda!175267))))

(declare-fun bs!873937 () Bool)

(assert (= bs!873937 (and d!1401648 b!4535797)))

(assert (=> bs!873937 (= (= lt!1711842 lt!1710989) (= lambda!175525 lambda!175373))))

(declare-fun bs!873938 () Bool)

(assert (= bs!873938 (and d!1401648 d!1401484)))

(assert (=> bs!873938 (= (= lt!1711842 lt!1711583) (= lambda!175525 lambda!175496))))

(declare-fun bs!873940 () Bool)

(assert (= bs!873940 (and d!1401648 b!4535622)))

(assert (=> bs!873940 (= (= lt!1711842 lt!1710902) (= lambda!175525 lambda!175351))))

(declare-fun bs!873941 () Bool)

(assert (= bs!873941 (and d!1401648 b!4535669)))

(assert (=> bs!873941 (= (= lt!1711842 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175525 lambda!175360))))

(declare-fun bs!873942 () Bool)

(assert (= bs!873942 (and d!1401648 b!4536291)))

(assert (=> bs!873942 (= (= lt!1711842 lt!1711317) (= lambda!175525 lambda!175439))))

(declare-fun bs!873943 () Bool)

(assert (= bs!873943 (and d!1401648 b!4536924)))

(assert (=> bs!873943 (= (= lt!1711842 lt!1711831) (= lambda!175525 lambda!175523))))

(declare-fun bs!873944 () Bool)

(assert (= bs!873944 (and d!1401648 d!1401348)))

(assert (=> bs!873944 (= (= lt!1711842 lt!1710429) (= lambda!175525 lambda!175464))))

(declare-fun bs!873945 () Bool)

(assert (= bs!873945 (and d!1401648 b!4536264)))

(assert (=> bs!873945 (= (= lt!1711842 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175525 lambda!175428))))

(declare-fun bs!873946 () Bool)

(assert (= bs!873946 (and d!1401648 b!4535832)))

(assert (=> bs!873946 (= (= lt!1711842 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175525 lambda!175377))))

(declare-fun bs!873947 () Bool)

(assert (= bs!873947 (and d!1401648 d!1401018)))

(assert (=> bs!873947 (= (= lt!1711842 lt!1710902) (= lambda!175525 lambda!175389))))

(declare-fun bs!873948 () Bool)

(assert (= bs!873948 (and d!1401648 b!4536261)))

(assert (=> bs!873948 (= (= lt!1711842 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175525 lambda!175429))))

(declare-fun bs!873949 () Bool)

(assert (= bs!873949 (and d!1401648 d!1400816)))

(assert (=> bs!873949 (= (= lt!1711842 lt!1710851) (= lambda!175525 lambda!175344))))

(assert (=> bs!873942 (= (= lt!1711842 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175525 lambda!175438))))

(declare-fun bs!873951 () Bool)

(assert (= bs!873951 (and d!1401648 b!4536342)))

(assert (=> bs!873951 (= (= lt!1711842 (-!418 lt!1710448 key!3287)) (= lambda!175525 lambda!175446))))

(declare-fun bs!873953 () Bool)

(assert (= bs!873953 (and d!1401648 d!1401276)))

(assert (=> bs!873953 (= (= lt!1711842 lt!1711376) (= lambda!175525 lambda!175450))))

(declare-fun bs!873955 () Bool)

(assert (= bs!873955 (and d!1401648 b!4535666)))

(assert (=> bs!873955 (= (= lt!1711842 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175525 lambda!175361))))

(declare-fun bs!873957 () Bool)

(assert (= bs!873957 (and d!1401648 b!4535829)))

(assert (=> bs!873957 (= (= lt!1711842 lt!1711026) (= lambda!175525 lambda!175379))))

(assert (=> bs!873940 (= (= lt!1711842 lt!1710415) (= lambda!175525 lambda!175350))))

(declare-fun bs!873959 () Bool)

(assert (= bs!873959 (and d!1401648 d!1401188)))

(assert (=> bs!873959 (= (= lt!1711842 lt!1711279) (= lambda!175525 lambda!175431))))

(declare-fun bs!873961 () Bool)

(assert (= bs!873961 (and d!1401648 b!4536294)))

(assert (=> bs!873961 (= (= lt!1711842 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175525 lambda!175437))))

(assert (=> bs!873948 (= (= lt!1711842 lt!1711268) (= lambda!175525 lambda!175430))))

(declare-fun bs!873964 () Bool)

(assert (= bs!873964 (and d!1401648 b!4536886)))

(assert (=> bs!873964 (= (= lt!1711842 (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175525 lambda!175516))))

(declare-fun bs!873966 () Bool)

(assert (= bs!873966 (and d!1401648 d!1400724)))

(assert (=> bs!873966 (not (= lambda!175525 lambda!175312))))

(declare-fun bs!873968 () Bool)

(assert (= bs!873968 (and d!1401648 d!1400896)))

(assert (=> bs!873968 (= (= lt!1711842 lt!1710949) (= lambda!175525 lambda!175363))))

(assert (=> bs!873957 (= (= lt!1711842 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175525 lambda!175378))))

(declare-fun bs!873971 () Bool)

(assert (= bs!873971 (and d!1401648 b!4536889)))

(assert (=> bs!873971 (= (= lt!1711842 (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175525 lambda!175514))))

(assert (=> bs!873937 (= (= lt!1711842 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175525 lambda!175372))))

(declare-fun bs!873974 () Bool)

(assert (= bs!873974 (and d!1401648 d!1401452)))

(assert (=> bs!873974 (= (= lt!1711842 lt!1711538) (= lambda!175525 lambda!175486))))

(declare-fun bs!873976 () Bool)

(assert (= bs!873976 (and d!1401648 d!1400874)))

(assert (=> bs!873976 (= (= lt!1711842 lt!1710913) (= lambda!175525 lambda!175352))))

(declare-fun bs!873978 () Bool)

(assert (= bs!873978 (and d!1401648 b!4535625)))

(assert (=> bs!873978 (= (= lt!1711842 lt!1710415) (= lambda!175525 lambda!175349))))

(declare-fun bs!873980 () Bool)

(assert (= bs!873980 (and d!1401648 b!4536927)))

(assert (=> bs!873980 (= (= lt!1711842 (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175525 lambda!175521))))

(declare-fun bs!873981 () Bool)

(assert (= bs!873981 (and d!1401648 b!4536345)))

(assert (=> bs!873981 (= (= lt!1711842 (-!418 lt!1710448 key!3287)) (= lambda!175525 lambda!175443))))

(declare-fun bs!873982 () Bool)

(assert (= bs!873982 (and d!1401648 b!4535545)))

(assert (=> bs!873982 (= (= lt!1711842 lt!1710429) (= lambda!175525 lambda!175339))))

(declare-fun bs!873984 () Bool)

(assert (= bs!873984 (and d!1401648 b!4535199)))

(assert (=> bs!873984 (not (= lambda!175525 lambda!175215))))

(assert (=> bs!873943 (= (= lt!1711842 (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175525 lambda!175522))))

(declare-fun bs!873987 () Bool)

(assert (= bs!873987 (and d!1401648 d!1401624)))

(assert (=> bs!873987 (= (= lt!1711842 lt!1711804) (= lambda!175525 lambda!175520))))

(declare-fun bs!873989 () Bool)

(assert (= bs!873989 (and d!1401648 b!4536631)))

(assert (=> bs!873989 (= (= lt!1711842 (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477))))) (= lambda!175525 lambda!175492))))

(assert (=> bs!873931 (= (= lt!1711842 (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477))))) (= lambda!175525 lambda!175494))))

(assert (=> bs!873933 (= (= lt!1711842 lt!1711527) (= lambda!175525 lambda!175485))))

(declare-fun bs!873993 () Bool)

(assert (= bs!873993 (and d!1401648 d!1401004)))

(assert (=> bs!873993 (= (= lt!1711842 lt!1711037) (= lambda!175525 lambda!175380))))

(declare-fun bs!873995 () Bool)

(assert (= bs!873995 (and d!1401648 d!1401222)))

(assert (=> bs!873995 (= (= lt!1711842 lt!1711328) (= lambda!175525 lambda!175440))))

(declare-fun bs!873997 () Bool)

(assert (= bs!873997 (and d!1401648 b!4535800)))

(assert (=> bs!873997 (= (= lt!1711842 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175525 lambda!175371))))

(declare-fun bs!873998 () Bool)

(assert (= bs!873998 (and d!1401648 d!1401354)))

(assert (=> bs!873998 (= (= lt!1711842 lt!1710448) (= lambda!175525 lambda!175466))))

(declare-fun bs!873999 () Bool)

(assert (= bs!873999 (and d!1401648 b!4535542)))

(assert (=> bs!873999 (= (= lt!1711842 lt!1710429) (= lambda!175525 lambda!175340))))

(assert (=> bs!873951 (= (= lt!1711842 lt!1711365) (= lambda!175525 lambda!175447))))

(declare-fun bs!874002 () Bool)

(assert (= bs!874002 (and d!1401648 b!4536569)))

(assert (=> bs!874002 (= (= lt!1711842 (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) (= lambda!175525 lambda!175482))))

(declare-fun bs!874004 () Bool)

(assert (= bs!874004 (and d!1401648 d!1400980)))

(assert (=> bs!874004 (= (= lt!1711842 lt!1711000) (= lambda!175525 lambda!175374))))

(declare-fun bs!874006 () Bool)

(assert (= bs!874006 (and d!1401648 d!1400628)))

(assert (=> bs!874006 (= (= lt!1711842 lt!1710589) (= lambda!175525 lambda!175268))))

(assert (=> bs!873935 (= (= lt!1711842 lt!1710448) (= lambda!175525 lambda!175266))))

(declare-fun bs!874009 () Bool)

(assert (= bs!874009 (and d!1401648 b!4535312)))

(assert (=> bs!874009 (= (= lt!1711842 lt!1710448) (= lambda!175525 lambda!175265))))

(assert (=> bs!873999 (= (= lt!1711842 lt!1710840) (= lambda!175525 lambda!175341))))

(assert (=> bs!873964 (= (= lt!1711842 lt!1711793) (= lambda!175525 lambda!175518))))

(declare-fun bs!874011 () Bool)

(assert (= bs!874011 (and d!1401648 d!1401614)))

(assert (=> bs!874011 (= (= lt!1711842 lt!1710578) (= lambda!175525 lambda!175510))))

(declare-fun bs!874012 () Bool)

(assert (= bs!874012 (and d!1401648 d!1401418)))

(assert (=> bs!874012 (= (= lt!1711842 lt!1710415) (= lambda!175525 lambda!175476))))

(assert (=> bs!873955 (= (= lt!1711842 lt!1710938) (= lambda!175525 lambda!175362))))

(assert (=> d!1401648 true))

(declare-fun bm!316348 () Bool)

(declare-fun call!316353 () Unit!97630)

(assert (=> bm!316348 (= call!316353 (lemmaContainsAllItsOwnKeys!359 (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun bm!316349 () Bool)

(declare-fun c!774869 () Bool)

(declare-fun call!316354 () Bool)

(assert (=> bm!316349 (= call!316354 (forall!10330 (toList!4391 (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445)))) (ite c!774869 lambda!175521 lambda!175523)))))

(declare-fun e!2827092 () ListMap!3653)

(assert (=> b!4536924 (= e!2827092 lt!1711831)))

(declare-fun lt!1711833 () ListMap!3653)

(assert (=> b!4536924 (= lt!1711833 (+!1593 (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) (h!56607 (t!357818 (_2!28896 lt!1710445)))))))

(assert (=> b!4536924 (= lt!1711831 (addToMapMapFromBucket!719 (t!357818 (t!357818 (_2!28896 lt!1710445))) (+!1593 (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) (h!56607 (t!357818 (_2!28896 lt!1710445))))))))

(declare-fun lt!1711844 () Unit!97630)

(assert (=> b!4536924 (= lt!1711844 call!316353)))

(assert (=> b!4536924 (forall!10330 (toList!4391 (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445)))) lambda!175522)))

(declare-fun lt!1711839 () Unit!97630)

(assert (=> b!4536924 (= lt!1711839 lt!1711844)))

(assert (=> b!4536924 (forall!10330 (toList!4391 lt!1711833) lambda!175523)))

(declare-fun lt!1711834 () Unit!97630)

(declare-fun Unit!98030 () Unit!97630)

(assert (=> b!4536924 (= lt!1711834 Unit!98030)))

(assert (=> b!4536924 (forall!10330 (t!357818 (t!357818 (_2!28896 lt!1710445))) lambda!175523)))

(declare-fun lt!1711836 () Unit!97630)

(declare-fun Unit!98031 () Unit!97630)

(assert (=> b!4536924 (= lt!1711836 Unit!98031)))

(declare-fun lt!1711830 () Unit!97630)

(declare-fun Unit!98032 () Unit!97630)

(assert (=> b!4536924 (= lt!1711830 Unit!98032)))

(declare-fun lt!1711848 () Unit!97630)

(assert (=> b!4536924 (= lt!1711848 (forallContained!2591 (toList!4391 lt!1711833) lambda!175523 (h!56607 (t!357818 (_2!28896 lt!1710445)))))))

(assert (=> b!4536924 (contains!13513 lt!1711833 (_1!28895 (h!56607 (t!357818 (_2!28896 lt!1710445)))))))

(declare-fun lt!1711828 () Unit!97630)

(declare-fun Unit!98033 () Unit!97630)

(assert (=> b!4536924 (= lt!1711828 Unit!98033)))

(assert (=> b!4536924 (contains!13513 lt!1711831 (_1!28895 (h!56607 (t!357818 (_2!28896 lt!1710445)))))))

(declare-fun lt!1711840 () Unit!97630)

(declare-fun Unit!98034 () Unit!97630)

(assert (=> b!4536924 (= lt!1711840 Unit!98034)))

(assert (=> b!4536924 (forall!10330 (t!357818 (_2!28896 lt!1710445)) lambda!175523)))

(declare-fun lt!1711843 () Unit!97630)

(declare-fun Unit!98035 () Unit!97630)

(assert (=> b!4536924 (= lt!1711843 Unit!98035)))

(assert (=> b!4536924 (forall!10330 (toList!4391 lt!1711833) lambda!175523)))

(declare-fun lt!1711829 () Unit!97630)

(declare-fun Unit!98036 () Unit!97630)

(assert (=> b!4536924 (= lt!1711829 Unit!98036)))

(declare-fun lt!1711832 () Unit!97630)

(declare-fun Unit!98037 () Unit!97630)

(assert (=> b!4536924 (= lt!1711832 Unit!98037)))

(declare-fun lt!1711845 () Unit!97630)

(assert (=> b!4536924 (= lt!1711845 (addForallContainsKeyThenBeforeAdding!359 (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1711831 (_1!28895 (h!56607 (t!357818 (_2!28896 lt!1710445)))) (_2!28895 (h!56607 (t!357818 (_2!28896 lt!1710445))))))))

(assert (=> b!4536924 (forall!10330 (toList!4391 (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445)))) lambda!175523)))

(declare-fun lt!1711837 () Unit!97630)

(assert (=> b!4536924 (= lt!1711837 lt!1711845)))

(assert (=> b!4536924 (forall!10330 (toList!4391 (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445)))) lambda!175523)))

(declare-fun lt!1711835 () Unit!97630)

(declare-fun Unit!98038 () Unit!97630)

(assert (=> b!4536924 (= lt!1711835 Unit!98038)))

(declare-fun res!1890262 () Bool)

(declare-fun call!316355 () Bool)

(assert (=> b!4536924 (= res!1890262 call!316355)))

(declare-fun e!2827091 () Bool)

(assert (=> b!4536924 (=> (not res!1890262) (not e!2827091))))

(assert (=> b!4536924 e!2827091))

(declare-fun lt!1711838 () Unit!97630)

(declare-fun Unit!98039 () Unit!97630)

(assert (=> b!4536924 (= lt!1711838 Unit!98039)))

(declare-fun b!4536925 () Bool)

(declare-fun e!2827090 () Bool)

(assert (=> b!4536925 (= e!2827090 (invariantList!1039 (toList!4391 lt!1711842)))))

(declare-fun b!4536926 () Bool)

(declare-fun res!1890263 () Bool)

(assert (=> b!4536926 (=> (not res!1890263) (not e!2827090))))

(assert (=> b!4536926 (= res!1890263 (forall!10330 (toList!4391 (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445)))) lambda!175525))))

(declare-fun bm!316350 () Bool)

(assert (=> bm!316350 (= call!316355 (forall!10330 (ite c!774869 (toList!4391 (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445)))) (t!357818 (_2!28896 lt!1710445))) (ite c!774869 lambda!175521 lambda!175523)))))

(declare-fun b!4536928 () Bool)

(assert (=> b!4536928 (= e!2827091 call!316354)))

(assert (=> b!4536927 (= e!2827092 (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))))))

(declare-fun lt!1711841 () Unit!97630)

(assert (=> b!4536927 (= lt!1711841 call!316353)))

(assert (=> b!4536927 call!316354))

(declare-fun lt!1711847 () Unit!97630)

(assert (=> b!4536927 (= lt!1711847 lt!1711841)))

(assert (=> b!4536927 call!316355))

(declare-fun lt!1711846 () Unit!97630)

(declare-fun Unit!98040 () Unit!97630)

(assert (=> b!4536927 (= lt!1711846 Unit!98040)))

(assert (=> d!1401648 e!2827090))

(declare-fun res!1890264 () Bool)

(assert (=> d!1401648 (=> (not res!1890264) (not e!2827090))))

(assert (=> d!1401648 (= res!1890264 (forall!10330 (t!357818 (_2!28896 lt!1710445)) lambda!175525))))

(assert (=> d!1401648 (= lt!1711842 e!2827092)))

(assert (=> d!1401648 (= c!774869 ((_ is Nil!50732) (t!357818 (_2!28896 lt!1710445))))))

(assert (=> d!1401648 (noDuplicateKeys!1192 (t!357818 (_2!28896 lt!1710445)))))

(assert (=> d!1401648 (= (addToMapMapFromBucket!719 (t!357818 (_2!28896 lt!1710445)) (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445)))) lt!1711842)))

(assert (= (and d!1401648 c!774869) b!4536927))

(assert (= (and d!1401648 (not c!774869)) b!4536924))

(assert (= (and b!4536924 res!1890262) b!4536928))

(assert (= (or b!4536927 b!4536928) bm!316349))

(assert (= (or b!4536927 b!4536924) bm!316350))

(assert (= (or b!4536927 b!4536924) bm!316348))

(assert (= (and d!1401648 res!1890264) b!4536926))

(assert (= (and b!4536926 res!1890263) b!4536925))

(declare-fun m!5300317 () Bool)

(assert (=> b!4536925 m!5300317))

(declare-fun m!5300319 () Bool)

(assert (=> d!1401648 m!5300319))

(assert (=> d!1401648 m!5297025))

(declare-fun m!5300321 () Bool)

(assert (=> bm!316350 m!5300321))

(declare-fun m!5300323 () Bool)

(assert (=> b!4536924 m!5300323))

(declare-fun m!5300325 () Bool)

(assert (=> b!4536924 m!5300325))

(declare-fun m!5300327 () Bool)

(assert (=> b!4536924 m!5300327))

(declare-fun m!5300329 () Bool)

(assert (=> b!4536924 m!5300329))

(assert (=> b!4536924 m!5297391))

(declare-fun m!5300331 () Bool)

(assert (=> b!4536924 m!5300331))

(declare-fun m!5300333 () Bool)

(assert (=> b!4536924 m!5300333))

(declare-fun m!5300335 () Bool)

(assert (=> b!4536924 m!5300335))

(assert (=> b!4536924 m!5300323))

(declare-fun m!5300337 () Bool)

(assert (=> b!4536924 m!5300337))

(assert (=> b!4536924 m!5297391))

(assert (=> b!4536924 m!5300333))

(declare-fun m!5300339 () Bool)

(assert (=> b!4536924 m!5300339))

(declare-fun m!5300341 () Bool)

(assert (=> b!4536924 m!5300341))

(assert (=> b!4536924 m!5300325))

(declare-fun m!5300343 () Bool)

(assert (=> b!4536924 m!5300343))

(assert (=> bm!316348 m!5297391))

(declare-fun m!5300345 () Bool)

(assert (=> bm!316348 m!5300345))

(declare-fun m!5300347 () Bool)

(assert (=> bm!316349 m!5300347))

(declare-fun m!5300349 () Bool)

(assert (=> b!4536926 m!5300349))

(assert (=> b!4535542 d!1401648))

(declare-fun d!1401676 () Bool)

(declare-fun e!2827132 () Bool)

(assert (=> d!1401676 e!2827132))

(declare-fun res!1890292 () Bool)

(assert (=> d!1401676 (=> (not res!1890292) (not e!2827132))))

(declare-fun lt!1711907 () ListMap!3653)

(assert (=> d!1401676 (= res!1890292 (contains!13513 lt!1711907 (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun lt!1711908 () List!50856)

(assert (=> d!1401676 (= lt!1711907 (ListMap!3654 lt!1711908))))

(declare-fun lt!1711909 () Unit!97630)

(declare-fun lt!1711906 () Unit!97630)

(assert (=> d!1401676 (= lt!1711909 lt!1711906)))

(assert (=> d!1401676 (= (getValueByKey!1137 lt!1711908 (_1!28895 (h!56607 (_2!28896 lt!1710445)))) (Some!11186 (_2!28895 (h!56607 (_2!28896 lt!1710445)))))))

(assert (=> d!1401676 (= lt!1711906 (lemmaContainsTupThenGetReturnValue!713 lt!1711908 (_1!28895 (h!56607 (_2!28896 lt!1710445))) (_2!28895 (h!56607 (_2!28896 lt!1710445)))))))

(assert (=> d!1401676 (= lt!1711908 (insertNoDuplicatedKeys!291 (toList!4391 lt!1710429) (_1!28895 (h!56607 (_2!28896 lt!1710445))) (_2!28895 (h!56607 (_2!28896 lt!1710445)))))))

(assert (=> d!1401676 (= (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445))) lt!1711907)))

(declare-fun b!4536989 () Bool)

(declare-fun res!1890291 () Bool)

(assert (=> b!4536989 (=> (not res!1890291) (not e!2827132))))

(assert (=> b!4536989 (= res!1890291 (= (getValueByKey!1137 (toList!4391 lt!1711907) (_1!28895 (h!56607 (_2!28896 lt!1710445)))) (Some!11186 (_2!28895 (h!56607 (_2!28896 lt!1710445))))))))

(declare-fun b!4536990 () Bool)

(assert (=> b!4536990 (= e!2827132 (contains!13517 (toList!4391 lt!1711907) (h!56607 (_2!28896 lt!1710445))))))

(assert (= (and d!1401676 res!1890292) b!4536989))

(assert (= (and b!4536989 res!1890291) b!4536990))

(declare-fun m!5300351 () Bool)

(assert (=> d!1401676 m!5300351))

(declare-fun m!5300353 () Bool)

(assert (=> d!1401676 m!5300353))

(declare-fun m!5300355 () Bool)

(assert (=> d!1401676 m!5300355))

(declare-fun m!5300357 () Bool)

(assert (=> d!1401676 m!5300357))

(declare-fun m!5300359 () Bool)

(assert (=> b!4536989 m!5300359))

(declare-fun m!5300361 () Bool)

(assert (=> b!4536990 m!5300361))

(assert (=> b!4535542 d!1401676))

(declare-fun bs!874018 () Bool)

(declare-fun d!1401678 () Bool)

(assert (= bs!874018 (and d!1401678 b!4536628)))

(declare-fun lambda!175528 () Int)

(assert (=> bs!874018 (= (= lt!1710840 lt!1711572) (= lambda!175528 lambda!175495))))

(declare-fun bs!874019 () Bool)

(assert (= bs!874019 (and d!1401678 b!4536566)))

(assert (=> bs!874019 (= (= lt!1710840 (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) (= lambda!175528 lambda!175483))))

(declare-fun bs!874020 () Bool)

(assert (= bs!874020 (and d!1401678 b!4535309)))

(assert (=> bs!874020 (= (= lt!1710840 lt!1710578) (= lambda!175528 lambda!175267))))

(declare-fun bs!874021 () Bool)

(assert (= bs!874021 (and d!1401678 b!4535797)))

(assert (=> bs!874021 (= (= lt!1710840 lt!1710989) (= lambda!175528 lambda!175373))))

(declare-fun bs!874022 () Bool)

(assert (= bs!874022 (and d!1401678 d!1401484)))

(assert (=> bs!874022 (= (= lt!1710840 lt!1711583) (= lambda!175528 lambda!175496))))

(declare-fun bs!874023 () Bool)

(assert (= bs!874023 (and d!1401678 b!4535622)))

(assert (=> bs!874023 (= (= lt!1710840 lt!1710902) (= lambda!175528 lambda!175351))))

(declare-fun bs!874024 () Bool)

(assert (= bs!874024 (and d!1401678 d!1401648)))

(assert (=> bs!874024 (= (= lt!1710840 lt!1711842) (= lambda!175528 lambda!175525))))

(declare-fun bs!874025 () Bool)

(assert (= bs!874025 (and d!1401678 b!4535669)))

(assert (=> bs!874025 (= (= lt!1710840 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175528 lambda!175360))))

(declare-fun bs!874026 () Bool)

(assert (= bs!874026 (and d!1401678 b!4536291)))

(assert (=> bs!874026 (= (= lt!1710840 lt!1711317) (= lambda!175528 lambda!175439))))

(declare-fun bs!874027 () Bool)

(assert (= bs!874027 (and d!1401678 b!4536924)))

(assert (=> bs!874027 (= (= lt!1710840 lt!1711831) (= lambda!175528 lambda!175523))))

(declare-fun bs!874028 () Bool)

(assert (= bs!874028 (and d!1401678 d!1401348)))

(assert (=> bs!874028 (= (= lt!1710840 lt!1710429) (= lambda!175528 lambda!175464))))

(declare-fun bs!874029 () Bool)

(assert (= bs!874029 (and d!1401678 b!4536264)))

(assert (=> bs!874029 (= (= lt!1710840 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175528 lambda!175428))))

(declare-fun bs!874030 () Bool)

(assert (= bs!874030 (and d!1401678 b!4535832)))

(assert (=> bs!874030 (= (= lt!1710840 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175528 lambda!175377))))

(declare-fun bs!874031 () Bool)

(assert (= bs!874031 (and d!1401678 d!1401018)))

(assert (=> bs!874031 (= (= lt!1710840 lt!1710902) (= lambda!175528 lambda!175389))))

(declare-fun bs!874032 () Bool)

(assert (= bs!874032 (and d!1401678 b!4536261)))

(assert (=> bs!874032 (= (= lt!1710840 (extractMap!1248 (t!357819 (toList!4392 lt!1710421)))) (= lambda!175528 lambda!175429))))

(declare-fun bs!874033 () Bool)

(assert (= bs!874033 (and d!1401678 d!1400816)))

(assert (=> bs!874033 (= (= lt!1710840 lt!1710851) (= lambda!175528 lambda!175344))))

(assert (=> bs!874026 (= (= lt!1710840 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175528 lambda!175438))))

(declare-fun bs!874034 () Bool)

(assert (= bs!874034 (and d!1401678 b!4536342)))

(assert (=> bs!874034 (= (= lt!1710840 (-!418 lt!1710448 key!3287)) (= lambda!175528 lambda!175446))))

(declare-fun bs!874035 () Bool)

(assert (= bs!874035 (and d!1401678 d!1401276)))

(assert (=> bs!874035 (= (= lt!1710840 lt!1711376) (= lambda!175528 lambda!175450))))

(declare-fun bs!874036 () Bool)

(assert (= bs!874036 (and d!1401678 b!4535666)))

(assert (=> bs!874036 (= (= lt!1710840 (extractMap!1248 (t!357819 (toList!4392 lt!1710440)))) (= lambda!175528 lambda!175361))))

(declare-fun bs!874037 () Bool)

(assert (= bs!874037 (and d!1401678 b!4535829)))

(assert (=> bs!874037 (= (= lt!1710840 lt!1711026) (= lambda!175528 lambda!175379))))

(assert (=> bs!874023 (= (= lt!1710840 lt!1710415) (= lambda!175528 lambda!175350))))

(declare-fun bs!874038 () Bool)

(assert (= bs!874038 (and d!1401678 d!1401188)))

(assert (=> bs!874038 (= (= lt!1710840 lt!1711279) (= lambda!175528 lambda!175431))))

(declare-fun bs!874039 () Bool)

(assert (= bs!874039 (and d!1401678 b!4536294)))

(assert (=> bs!874039 (= (= lt!1710840 (extractMap!1248 (t!357819 (toList!4392 lm!1477)))) (= lambda!175528 lambda!175437))))

(assert (=> bs!874032 (= (= lt!1710840 lt!1711268) (= lambda!175528 lambda!175430))))

(declare-fun bs!874040 () Bool)

(assert (= bs!874040 (and d!1401678 b!4536886)))

(assert (=> bs!874040 (= (= lt!1710840 (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175528 lambda!175516))))

(declare-fun bs!874041 () Bool)

(assert (= bs!874041 (and d!1401678 d!1400724)))

(assert (=> bs!874041 (not (= lambda!175528 lambda!175312))))

(declare-fun bs!874043 () Bool)

(assert (= bs!874043 (and d!1401678 d!1400896)))

(assert (=> bs!874043 (= (= lt!1710840 lt!1710949) (= lambda!175528 lambda!175363))))

(assert (=> bs!874037 (= (= lt!1710840 (+!1593 lt!1710415 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175528 lambda!175378))))

(declare-fun bs!874045 () Bool)

(assert (= bs!874045 (and d!1401678 b!4536889)))

(assert (=> bs!874045 (= (= lt!1710840 (+!1593 lt!1710448 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175528 lambda!175514))))

(assert (=> bs!874021 (= (= lt!1710840 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175528 lambda!175372))))

(declare-fun bs!874048 () Bool)

(assert (= bs!874048 (and d!1401678 d!1401452)))

(assert (=> bs!874048 (= (= lt!1710840 lt!1711538) (= lambda!175528 lambda!175486))))

(declare-fun bs!874050 () Bool)

(assert (= bs!874050 (and d!1401678 d!1400874)))

(assert (=> bs!874050 (= (= lt!1710840 lt!1710913) (= lambda!175528 lambda!175352))))

(declare-fun bs!874052 () Bool)

(assert (= bs!874052 (and d!1401678 b!4535625)))

(assert (=> bs!874052 (= (= lt!1710840 lt!1710415) (= lambda!175528 lambda!175349))))

(declare-fun bs!874054 () Bool)

(assert (= bs!874054 (and d!1401678 b!4536927)))

(assert (=> bs!874054 (= (= lt!1710840 (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175528 lambda!175521))))

(declare-fun bs!874057 () Bool)

(assert (= bs!874057 (and d!1401678 b!4536345)))

(assert (=> bs!874057 (= (= lt!1710840 (-!418 lt!1710448 key!3287)) (= lambda!175528 lambda!175443))))

(declare-fun bs!874059 () Bool)

(assert (= bs!874059 (and d!1401678 b!4535545)))

(assert (=> bs!874059 (= (= lt!1710840 lt!1710429) (= lambda!175528 lambda!175339))))

(declare-fun bs!874061 () Bool)

(assert (= bs!874061 (and d!1401678 b!4535199)))

(assert (=> bs!874061 (not (= lambda!175528 lambda!175215))))

(assert (=> bs!874027 (= (= lt!1710840 (+!1593 lt!1710429 (h!56607 (_2!28896 lt!1710445)))) (= lambda!175528 lambda!175522))))

(declare-fun bs!874064 () Bool)

(assert (= bs!874064 (and d!1401678 d!1401624)))

(assert (=> bs!874064 (= (= lt!1710840 lt!1711804) (= lambda!175528 lambda!175520))))

(declare-fun bs!874066 () Bool)

(assert (= bs!874066 (and d!1401678 b!4536631)))

(assert (=> bs!874066 (= (= lt!1710840 (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477))))) (= lambda!175528 lambda!175492))))

(assert (=> bs!874018 (= (= lt!1710840 (extractMap!1248 (t!357819 (t!357819 (toList!4392 lm!1477))))) (= lambda!175528 lambda!175494))))

(assert (=> bs!874019 (= (= lt!1710840 lt!1711527) (= lambda!175528 lambda!175485))))

(declare-fun bs!874068 () Bool)

(assert (= bs!874068 (and d!1401678 d!1401004)))

(assert (=> bs!874068 (= (= lt!1710840 lt!1711037) (= lambda!175528 lambda!175380))))

(declare-fun bs!874070 () Bool)

(assert (= bs!874070 (and d!1401678 d!1401222)))

(assert (=> bs!874070 (= (= lt!1710840 lt!1711328) (= lambda!175528 lambda!175440))))

(declare-fun bs!874073 () Bool)

(assert (= bs!874073 (and d!1401678 b!4535800)))

(assert (=> bs!874073 (= (= lt!1710840 (extractMap!1248 (t!357819 (toList!4392 (+!1592 lt!1710421 lt!1710445))))) (= lambda!175528 lambda!175371))))

(declare-fun bs!874074 () Bool)

(assert (= bs!874074 (and d!1401678 d!1401354)))

(assert (=> bs!874074 (= (= lt!1710840 lt!1710448) (= lambda!175528 lambda!175466))))

(declare-fun bs!874075 () Bool)

(assert (= bs!874075 (and d!1401678 b!4535542)))

(assert (=> bs!874075 (= (= lt!1710840 lt!1710429) (= lambda!175528 lambda!175340))))

(assert (=> bs!874034 (= (= lt!1710840 lt!1711365) (= lambda!175528 lambda!175447))))

(declare-fun bs!874078 () Bool)

(assert (= bs!874078 (and d!1401678 b!4536569)))

(assert (=> bs!874078 (= (= lt!1710840 (extractMap!1248 (t!357819 (toList!4392 lt!1710432)))) (= lambda!175528 lambda!175482))))

(declare-fun bs!874080 () Bool)

(assert (= bs!874080 (and d!1401678 d!1400980)))

(assert (=> bs!874080 (= (= lt!1710840 lt!1711000) (= lambda!175528 lambda!175374))))

(declare-fun bs!874082 () Bool)

(assert (= bs!874082 (and d!1401678 d!1400628)))

(assert (=> bs!874082 (= (= lt!1710840 lt!1710589) (= lambda!175528 lambda!175268))))

(assert (=> bs!874020 (= (= lt!1710840 lt!1710448) (= lambda!175528 lambda!175266))))

(declare-fun bs!874085 () Bool)

(assert (= bs!874085 (and d!1401678 b!4535312)))

(assert (=> bs!874085 (= (= lt!1710840 lt!1710448) (= lambda!175528 lambda!175265))))

(assert (=> bs!874075 (= lambda!175528 lambda!175341)))

(assert (=> bs!874040 (= (= lt!1710840 lt!1711793) (= lambda!175528 lambda!175518))))

(declare-fun bs!874089 () Bool)

(assert (= bs!874089 (and d!1401678 d!1401614)))

(assert (=> bs!874089 (= (= lt!1710840 lt!1710578) (= lambda!175528 lambda!175510))))

(declare-fun bs!874090 () Bool)

(assert (= bs!874090 (and d!1401678 d!1401418)))

(assert (=> bs!874090 (= (= lt!1710840 lt!1710415) (= lambda!175528 lambda!175476))))

(assert (=> bs!874036 (= (= lt!1710840 lt!1710938) (= lambda!175528 lambda!175362))))

(assert (=> d!1401678 true))

(assert (=> d!1401678 (forall!10330 (toList!4391 lt!1710429) lambda!175528)))

(declare-fun lt!1711910 () Unit!97630)

(assert (=> d!1401678 (= lt!1711910 (choose!29836 lt!1710429 lt!1710840 (_1!28895 (h!56607 (_2!28896 lt!1710445))) (_2!28895 (h!56607 (_2!28896 lt!1710445)))))))

(assert (=> d!1401678 (forall!10330 (toList!4391 (+!1593 lt!1710429 (tuple2!51203 (_1!28895 (h!56607 (_2!28896 lt!1710445))) (_2!28895 (h!56607 (_2!28896 lt!1710445)))))) lambda!175528)))

(assert (=> d!1401678 (= (addForallContainsKeyThenBeforeAdding!359 lt!1710429 lt!1710840 (_1!28895 (h!56607 (_2!28896 lt!1710445))) (_2!28895 (h!56607 (_2!28896 lt!1710445)))) lt!1711910)))

(declare-fun bs!874098 () Bool)

(assert (= bs!874098 d!1401678))

(declare-fun m!5300363 () Bool)

(assert (=> bs!874098 m!5300363))

(declare-fun m!5300365 () Bool)

(assert (=> bs!874098 m!5300365))

(declare-fun m!5300367 () Bool)

(assert (=> bs!874098 m!5300367))

(declare-fun m!5300369 () Bool)

(assert (=> bs!874098 m!5300369))

(assert (=> b!4535542 d!1401678))

(declare-fun d!1401680 () Bool)

(declare-fun res!1890293 () Bool)

(declare-fun e!2827133 () Bool)

(assert (=> d!1401680 (=> res!1890293 e!2827133)))

(assert (=> d!1401680 (= res!1890293 ((_ is Nil!50732) (toList!4391 lt!1710429)))))

(assert (=> d!1401680 (= (forall!10330 (toList!4391 lt!1710429) lambda!175341) e!2827133)))

(declare-fun b!4536991 () Bool)

(declare-fun e!2827134 () Bool)

(assert (=> b!4536991 (= e!2827133 e!2827134)))

(declare-fun res!1890294 () Bool)

(assert (=> b!4536991 (=> (not res!1890294) (not e!2827134))))

(assert (=> b!4536991 (= res!1890294 (dynLambda!21205 lambda!175341 (h!56607 (toList!4391 lt!1710429))))))

(declare-fun b!4536992 () Bool)

(assert (=> b!4536992 (= e!2827134 (forall!10330 (t!357818 (toList!4391 lt!1710429)) lambda!175341))))

(assert (= (and d!1401680 (not res!1890293)) b!4536991))

(assert (= (and b!4536991 res!1890294) b!4536992))

(declare-fun b_lambda!157399 () Bool)

(assert (=> (not b_lambda!157399) (not b!4536991)))

(declare-fun m!5300371 () Bool)

(assert (=> b!4536991 m!5300371))

(declare-fun m!5300373 () Bool)

(assert (=> b!4536992 m!5300373))

(assert (=> b!4535542 d!1401680))

(assert (=> d!1400872 d!1401316))

(assert (=> d!1400872 d!1401072))

(declare-fun bs!874104 () Bool)

(declare-fun d!1401682 () Bool)

(assert (= bs!874104 (and d!1401682 b!4536628)))

(declare-fun lambda!175530 () Int)

(assert (=> bs!874104 (not (= lambda!175530 lambda!175495))))

(declare-fun bs!874105 () Bool)

(assert (= bs!874105 (and d!1401682 b!4536566)))

(assert (=> bs!874105 (not (= lambda!175530 lambda!175483))))

(declare-fun bs!874106 () Bool)

(assert (= bs!874106 (and d!1401682 b!4535309)))

(assert (=> bs!874106 (not (= lambda!175530 lambda!175267))))

(declare-fun bs!874107 () Bool)

(assert (= bs!874107 (and d!1401682 b!4535797)))

(assert (=> bs!874107 (not (= lambda!175530 lambda!175373))))

(declare-fun bs!874108 () Bool)

(assert (= bs!874108 (and d!1401682 d!1401484)))

(assert (=> bs!874108 (not (= lambda!175530 lambda!175496))))

(declare-fun bs!874109 () Bool)

(assert (= bs!874109 (and d!1401682 b!4535622)))

(assert (=> bs!874109 (not (= lambda!175530 lambda!175351))))

(declare-fun bs!874110 () Bool)

(assert (= bs!874110 (and d!1401682 d!1401648)))

(assert (=> bs!874110 (not (= lambda!175530 lambda!175525))))

(declare-fun bs!874111 () Bool)

(assert (= bs!874111 (and d!1401682 b!4535669)))

(assert (=> bs!874111 (not (= lambda!175530 lambda!175360))))

(declare-fun bs!874112 () Bool)

(assert (= bs!874112 (and d!1401682 b!4536291)))

(assert (=> bs!874112 (not (= lambda!175530 lambda!175439))))

(declare-fun bs!874113 () Bool)

(assert (= bs!874113 (and d!1401682 d!1401678)))

(assert (=> bs!874113 (not (= lambda!175530 lambda!175528))))

(declare-fun bs!874114 () Bool)

(assert (= bs!874114 (and d!1401682 b!4536924)))

(assert (=> bs!874114 (not (= lambda!175530 lambda!175523))))

(declare-fun bs!874115 () Bool)

(assert (= bs!874115 (and d!1401682 d!1401348)))

(assert (=> bs!874115 (not (= lambda!175530 lambda!175464))))

(declare-fun bs!874116 () Bool)

(assert (= bs!874116 (and d!1401682 b!4536264)))

(assert (=> bs!874116 (not (= lambda!175530 lambda!175428))))

(declare-fun bs!874117 () Bool)

(assert (= bs!874117 (and d!1401682 b!4535832)))

(assert (=> bs!874117 (not (= lambda!175530 lambda!175377))))

(declare-fun bs!874118 () Bool)

(assert (= bs!874118 (and d!1401682 d!1401018)))

(assert (=> bs!874118 (not (= lambda!175530 lambda!175389))))

(declare-fun bs!874119 () Bool)

(assert (= bs!874119 (and d!1401682 b!4536261)))

(assert (=> bs!874119 (not (= lambda!175530 lambda!175429))))

(declare-fun bs!874120 () Bool)

(assert (= bs!874120 (and d!1401682 d!1400816)))

(assert (=> bs!874120 (not (= lambda!175530 lambda!175344))))

(assert (=> bs!874112 (not (= lambda!175530 lambda!175438))))

(declare-fun bs!874121 () Bool)

(assert (= bs!874121 (and d!1401682 b!4536342)))

(assert (=> bs!874121 (not (= lambda!175530 lambda!175446))))

(declare-fun bs!874122 () Bool)

(assert (= bs!874122 (and d!1401682 d!1401276)))

(assert (=> bs!874122 (not (= lambda!175530 lambda!175450))))

(declare-fun bs!874123 () Bool)

(assert (= bs!874123 (and d!1401682 b!4535666)))

(assert (=> bs!874123 (not (= lambda!175530 lambda!175361))))

(declare-fun bs!874124 () Bool)

(assert (= bs!874124 (and d!1401682 b!4535829)))

(assert (=> bs!874124 (not (= lambda!175530 lambda!175379))))

(assert (=> bs!874109 (not (= lambda!175530 lambda!175350))))

(declare-fun bs!874125 () Bool)

(assert (= bs!874125 (and d!1401682 d!1401188)))

(assert (=> bs!874125 (not (= lambda!175530 lambda!175431))))

(declare-fun bs!874126 () Bool)

(assert (= bs!874126 (and d!1401682 b!4536294)))

(assert (=> bs!874126 (not (= lambda!175530 lambda!175437))))

(assert (=> bs!874119 (not (= lambda!175530 lambda!175430))))

(declare-fun bs!874127 () Bool)

(assert (= bs!874127 (and d!1401682 b!4536886)))

(assert (=> bs!874127 (not (= lambda!175530 lambda!175516))))

(declare-fun bs!874128 () Bool)

(assert (= bs!874128 (and d!1401682 d!1400724)))

(assert (=> bs!874128 (= (= (_1!28896 (h!56608 (toList!4392 lm!1477))) hash!344) (= lambda!175530 lambda!175312))))

(declare-fun bs!874129 () Bool)

(assert (= bs!874129 (and d!1401682 d!1400896)))

(assert (=> bs!874129 (not (= lambda!175530 lambda!175363))))

(assert (=> bs!874124 (not (= lambda!175530 lambda!175378))))

(declare-fun bs!874130 () Bool)

(assert (= bs!874130 (and d!1401682 b!4536889)))

(assert (=> bs!874130 (not (= lambda!175530 lambda!175514))))

(assert (=> bs!874107 (not (= lambda!175530 lambda!175372))))

(declare-fun bs!874131 () Bool)

(assert (= bs!874131 (and d!1401682 d!1401452)))

(assert (=> bs!874131 (not (= lambda!175530 lambda!175486))))

(declare-fun bs!874132 () Bool)

(assert (= bs!874132 (and d!1401682 d!1400874)))

(assert (=> bs!874132 (not (= lambda!175530 lambda!175352))))

(declare-fun bs!874133 () Bool)

(assert (= bs!874133 (and d!1401682 b!4535625)))

(assert (=> bs!874133 (not (= lambda!175530 lambda!175349))))

(declare-fun bs!874134 () Bool)

(assert (= bs!874134 (and d!1401682 b!4536927)))

(assert (=> bs!874134 (not (= lambda!175530 lambda!175521))))

(declare-fun bs!874135 () Bool)

(assert (= bs!874135 (and d!1401682 b!4536345)))

(assert (=> bs!874135 (not (= lambda!175530 lambda!175443))))

(declare-fun bs!874136 () Bool)

(assert (= bs!874136 (and d!1401682 b!4535545)))

(assert (=> bs!874136 (not (= lambda!175530 lambda!175339))))

(declare-fun bs!874137 () Bool)

(assert (= bs!874137 (and d!1401682 b!4535199)))

(assert (=> bs!874137 (= lambda!175530 lambda!175215)))

(assert (=> bs!874114 (not (= lambda!175530 lambda!175522))))

(declare-fun bs!874138 () Bool)

(assert (= bs!874138 (and d!1401682 d!1401624)))

(assert (=> bs!874138 (not (= lambda!175530 lambda!175520))))

(declare-fun bs!874139 () Bool)

(assert (= bs!874139 (and d!1401682 b!4536631)))

(assert (=> bs!874139 (not (= lambda!175530 lambda!175492))))

(assert (=> bs!874104 (not (= lambda!175530 lambda!175494))))

(assert (=> bs!874105 (not (= lambda!175530 lambda!175485))))

(declare-fun bs!874140 () Bool)

(assert (= bs!874140 (and d!1401682 d!1401004)))

(assert (=> bs!874140 (not (= lambda!175530 lambda!175380))))

(declare-fun bs!874141 () Bool)

(assert (= bs!874141 (and d!1401682 d!1401222)))

(assert (=> bs!874141 (not (= lambda!175530 lambda!175440))))

(declare-fun bs!874142 () Bool)

(assert (= bs!874142 (and d!1401682 b!4535800)))

(assert (=> bs!874142 (not (= lambda!175530 lambda!175371))))

(declare-fun bs!874143 () Bool)

(assert (= bs!874143 (and d!1401682 d!1401354)))

(assert (=> bs!874143 (not (= lambda!175530 lambda!175466))))

(declare-fun bs!874144 () Bool)

(assert (= bs!874144 (and d!1401682 b!4535542)))

(assert (=> bs!874144 (not (= lambda!175530 lambda!175340))))

(assert (=> bs!874121 (not (= lambda!175530 lambda!175447))))

(declare-fun bs!874145 () Bool)

(assert (= bs!874145 (and d!1401682 b!4536569)))

(assert (=> bs!874145 (not (= lambda!175530 lambda!175482))))

(declare-fun bs!874146 () Bool)

(assert (= bs!874146 (and d!1401682 d!1400980)))

(assert (=> bs!874146 (not (= lambda!175530 lambda!175374))))

(declare-fun bs!874147 () Bool)

(assert (= bs!874147 (and d!1401682 d!1400628)))

(assert (=> bs!874147 (not (= lambda!175530 lambda!175268))))

(assert (=> bs!874106 (not (= lambda!175530 lambda!175266))))

(declare-fun bs!874148 () Bool)

(assert (= bs!874148 (and d!1401682 b!4535312)))

(assert (=> bs!874148 (not (= lambda!175530 lambda!175265))))

(assert (=> bs!874144 (not (= lambda!175530 lambda!175341))))

(assert (=> bs!874127 (not (= lambda!175530 lambda!175518))))

(declare-fun bs!874149 () Bool)

(assert (= bs!874149 (and d!1401682 d!1401614)))

(assert (=> bs!874149 (not (= lambda!175530 lambda!175510))))

(declare-fun bs!874150 () Bool)

(assert (= bs!874150 (and d!1401682 d!1401418)))

(assert (=> bs!874150 (not (= lambda!175530 lambda!175476))))

(assert (=> bs!874123 (not (= lambda!175530 lambda!175362))))

(assert (=> d!1401682 true))

(assert (=> d!1401682 true))

(assert (=> d!1401682 (= (allKeysSameHash!1046 (_2!28896 (h!56608 (toList!4392 lm!1477))) (_1!28896 (h!56608 (toList!4392 lm!1477))) hashF!1107) (forall!10330 (_2!28896 (h!56608 (toList!4392 lm!1477))) lambda!175530))))

(declare-fun bs!874151 () Bool)

(assert (= bs!874151 d!1401682))

(declare-fun m!5300453 () Bool)

(assert (=> bs!874151 m!5300453))

(assert (=> bs!871832 d!1401682))

(declare-fun d!1401698 () Bool)

(assert (=> d!1401698 (isDefined!8463 (getValueByKey!1137 (toList!4391 lt!1710447) key!3287))))

(declare-fun lt!1711925 () Unit!97630)

(assert (=> d!1401698 (= lt!1711925 (choose!29831 (toList!4391 lt!1710447) key!3287))))

(assert (=> d!1401698 (invariantList!1039 (toList!4391 lt!1710447))))

(assert (=> d!1401698 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1040 (toList!4391 lt!1710447) key!3287) lt!1711925)))

(declare-fun bs!874152 () Bool)

(assert (= bs!874152 d!1401698))

(assert (=> bs!874152 m!5296953))

(assert (=> bs!874152 m!5296953))

(assert (=> bs!874152 m!5296955))

(declare-fun m!5300457 () Bool)

(assert (=> bs!874152 m!5300457))

(assert (=> bs!874152 m!5298517))

(assert (=> b!4535355 d!1401698))

(assert (=> b!4535355 d!1401060))

(assert (=> b!4535355 d!1401062))

(declare-fun d!1401700 () Bool)

(assert (=> d!1401700 (contains!13515 (getKeysList!487 (toList!4391 lt!1710447)) key!3287)))

(declare-fun lt!1711926 () Unit!97630)

(assert (=> d!1401700 (= lt!1711926 (choose!29832 (toList!4391 lt!1710447) key!3287))))

(assert (=> d!1401700 (invariantList!1039 (toList!4391 lt!1710447))))

(assert (=> d!1401700 (= (lemmaInListThenGetKeysListContains!483 (toList!4391 lt!1710447) key!3287) lt!1711926)))

(declare-fun bs!874155 () Bool)

(assert (= bs!874155 d!1401700))

(assert (=> bs!874155 m!5296959))

(assert (=> bs!874155 m!5296959))

(declare-fun m!5300459 () Bool)

(assert (=> bs!874155 m!5300459))

(declare-fun m!5300461 () Bool)

(assert (=> bs!874155 m!5300461))

(assert (=> bs!874155 m!5298517))

(assert (=> b!4535355 d!1401700))

(assert (=> b!4535504 d!1401116))

(assert (=> b!4535504 d!1401054))

(declare-fun d!1401702 () Bool)

(declare-fun lt!1711927 () Bool)

(assert (=> d!1401702 (= lt!1711927 (select (content!8420 (_2!28896 lt!1710445)) (get!16666 lt!1710894)))))

(declare-fun e!2827150 () Bool)

(assert (=> d!1401702 (= lt!1711927 e!2827150)))

(declare-fun res!1890308 () Bool)

(assert (=> d!1401702 (=> (not res!1890308) (not e!2827150))))

(assert (=> d!1401702 (= res!1890308 ((_ is Cons!50732) (_2!28896 lt!1710445)))))

(assert (=> d!1401702 (= (contains!13517 (_2!28896 lt!1710445) (get!16666 lt!1710894)) lt!1711927)))

(declare-fun b!4537011 () Bool)

(declare-fun e!2827149 () Bool)

(assert (=> b!4537011 (= e!2827150 e!2827149)))

(declare-fun res!1890307 () Bool)

(assert (=> b!4537011 (=> res!1890307 e!2827149)))

(assert (=> b!4537011 (= res!1890307 (= (h!56607 (_2!28896 lt!1710445)) (get!16666 lt!1710894)))))

(declare-fun b!4537012 () Bool)

(assert (=> b!4537012 (= e!2827149 (contains!13517 (t!357818 (_2!28896 lt!1710445)) (get!16666 lt!1710894)))))

(assert (= (and d!1401702 res!1890308) b!4537011))

(assert (= (and b!4537011 (not res!1890307)) b!4537012))

(declare-fun m!5300463 () Bool)

(assert (=> d!1401702 m!5300463))

(assert (=> d!1401702 m!5297501))

(declare-fun m!5300465 () Bool)

(assert (=> d!1401702 m!5300465))

(assert (=> b!4537012 m!5297501))

(declare-fun m!5300467 () Bool)

(assert (=> b!4537012 m!5300467))

(assert (=> b!4535610 d!1401702))

(assert (=> b!4535610 d!1401360))

(declare-fun d!1401704 () Bool)

(declare-fun lt!1711928 () Bool)

(assert (=> d!1401704 (= lt!1711928 (select (content!8425 (toList!4392 lt!1710922)) lt!1710425))))

(declare-fun e!2827151 () Bool)

(assert (=> d!1401704 (= lt!1711928 e!2827151)))

(declare-fun res!1890310 () Bool)

(assert (=> d!1401704 (=> (not res!1890310) (not e!2827151))))

(assert (=> d!1401704 (= res!1890310 ((_ is Cons!50733) (toList!4392 lt!1710922)))))

(assert (=> d!1401704 (= (contains!13511 (toList!4392 lt!1710922) lt!1710425) lt!1711928)))

(declare-fun b!4537013 () Bool)

(declare-fun e!2827152 () Bool)

(assert (=> b!4537013 (= e!2827151 e!2827152)))

(declare-fun res!1890309 () Bool)

(assert (=> b!4537013 (=> res!1890309 e!2827152)))

(assert (=> b!4537013 (= res!1890309 (= (h!56608 (toList!4392 lt!1710922)) lt!1710425))))

(declare-fun b!4537014 () Bool)

(assert (=> b!4537014 (= e!2827152 (contains!13511 (t!357819 (toList!4392 lt!1710922)) lt!1710425))))

(assert (= (and d!1401704 res!1890310) b!4537013))

(assert (= (and b!4537013 (not res!1890309)) b!4537014))

(declare-fun m!5300469 () Bool)

(assert (=> d!1401704 m!5300469))

(declare-fun m!5300471 () Bool)

(assert (=> d!1401704 m!5300471))

(declare-fun m!5300473 () Bool)

(assert (=> b!4537014 m!5300473))

(assert (=> b!4535630 d!1401704))

(declare-fun tp!1338538 () Bool)

(declare-fun b!4537015 () Bool)

(declare-fun e!2827153 () Bool)

(assert (=> b!4537015 (= e!2827153 (and tp_is_empty!28045 tp_is_empty!28047 tp!1338538))))

(assert (=> b!4535637 (= tp!1338533 e!2827153)))

(assert (= (and b!4535637 ((_ is Cons!50732) (_2!28896 (h!56608 (toList!4392 lm!1477))))) b!4537015))

(declare-fun b!4537016 () Bool)

(declare-fun e!2827154 () Bool)

(declare-fun tp!1338539 () Bool)

(declare-fun tp!1338540 () Bool)

(assert (=> b!4537016 (= e!2827154 (and tp!1338539 tp!1338540))))

(assert (=> b!4535637 (= tp!1338534 e!2827154)))

(assert (= (and b!4535637 ((_ is Cons!50733) (t!357819 (toList!4392 lm!1477)))) b!4537016))

(declare-fun b!4537017 () Bool)

(declare-fun tp!1338541 () Bool)

(declare-fun e!2827155 () Bool)

(assert (=> b!4537017 (= e!2827155 (and tp_is_empty!28045 tp_is_empty!28047 tp!1338541))))

(assert (=> b!4535642 (= tp!1338537 e!2827155)))

(assert (= (and b!4535642 ((_ is Cons!50732) (t!357818 (t!357818 newBucket!178)))) b!4537017))

(declare-fun b_lambda!157409 () Bool)

(assert (= b_lambda!157369 (or b!4535309 b_lambda!157409)))

(declare-fun bs!874194 () Bool)

(declare-fun d!1401706 () Bool)

(assert (= bs!874194 (and d!1401706 b!4535309)))

(assert (=> bs!874194 (= (dynLambda!21205 lambda!175267 (h!56607 (_2!28896 lt!1710445))) (contains!13513 lt!1710578 (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(assert (=> bs!874194 m!5296899))

(assert (=> d!1401600 d!1401706))

(declare-fun b_lambda!157411 () Bool)

(assert (= b_lambda!157389 (or b!4535542 b_lambda!157411)))

(declare-fun bs!874195 () Bool)

(declare-fun d!1401708 () Bool)

(assert (= bs!874195 (and d!1401708 b!4535542)))

(assert (=> bs!874195 (= (dynLambda!21205 lambda!175341 (h!56607 (t!357818 (_2!28896 lt!1710445)))) (contains!13513 lt!1710840 (_1!28895 (h!56607 (t!357818 (_2!28896 lt!1710445))))))))

(declare-fun m!5300477 () Bool)

(assert (=> bs!874195 m!5300477))

(assert (=> b!4536922 d!1401708))

(declare-fun b_lambda!157413 () Bool)

(assert (= b_lambda!157319 (or d!1400854 b_lambda!157413)))

(declare-fun bs!874197 () Bool)

(declare-fun d!1401710 () Bool)

(assert (= bs!874197 (and d!1401710 d!1400854)))

(assert (=> bs!874197 (= (dynLambda!21203 lambda!175348 (h!56608 (toList!4392 lm!1477))) (noDuplicateKeys!1192 (_2!28896 (h!56608 (toList!4392 lm!1477)))))))

(assert (=> bs!874197 m!5297595))

(assert (=> b!4536429 d!1401710))

(declare-fun b_lambda!157415 () Bool)

(assert (= b_lambda!157357 (or d!1400702 b_lambda!157415)))

(declare-fun bs!874198 () Bool)

(declare-fun d!1401712 () Bool)

(assert (= bs!874198 (and d!1401712 d!1400702)))

(assert (=> bs!874198 (= (dynLambda!21203 lambda!175303 (h!56608 (toList!4392 lm!1477))) (noDuplicateKeys!1192 (_2!28896 (h!56608 (toList!4392 lm!1477)))))))

(assert (=> bs!874198 m!5297595))

(assert (=> b!4536776 d!1401712))

(declare-fun b_lambda!157417 () Bool)

(assert (= b_lambda!157349 (or d!1400752 b_lambda!157417)))

(declare-fun bs!874199 () Bool)

(declare-fun d!1401716 () Bool)

(assert (= bs!874199 (and d!1401716 d!1400752)))

(assert (=> bs!874199 (= (dynLambda!21203 lambda!175322 (h!56608 (toList!4392 lt!1710421))) (noDuplicateKeys!1192 (_2!28896 (h!56608 (toList!4392 lt!1710421)))))))

(assert (=> bs!874199 m!5298587))

(assert (=> b!4536756 d!1401716))

(declare-fun b_lambda!157419 () Bool)

(assert (= b_lambda!157271 (or d!1400628 b_lambda!157419)))

(declare-fun bs!874200 () Bool)

(declare-fun d!1401718 () Bool)

(assert (= bs!874200 (and d!1401718 d!1400628)))

(assert (=> bs!874200 (= (dynLambda!21205 lambda!175268 (h!56607 (_2!28896 lt!1710445))) (contains!13513 lt!1710589 (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun m!5300485 () Bool)

(assert (=> bs!874200 m!5300485))

(assert (=> b!4536112 d!1401718))

(declare-fun b_lambda!157421 () Bool)

(assert (= b_lambda!157325 (or d!1400816 b_lambda!157421)))

(declare-fun bs!874201 () Bool)

(declare-fun d!1401720 () Bool)

(assert (= bs!874201 (and d!1401720 d!1400816)))

(assert (=> bs!874201 (= (dynLambda!21205 lambda!175344 (h!56607 (toList!4391 lt!1710429))) (contains!13513 lt!1710851 (_1!28895 (h!56607 (toList!4391 lt!1710429)))))))

(declare-fun m!5300487 () Bool)

(assert (=> bs!874201 m!5300487))

(assert (=> b!4536468 d!1401720))

(declare-fun b_lambda!157423 () Bool)

(assert (= b_lambda!157245 (or b!4535199 b_lambda!157423)))

(assert (=> d!1400974 d!1400882))

(declare-fun b_lambda!157425 () Bool)

(assert (= b_lambda!157297 (or b!4535199 b_lambda!157425)))

(assert (=> d!1401218 d!1400884))

(declare-fun b_lambda!157427 () Bool)

(assert (= b_lambda!157383 (or b!4535542 b_lambda!157427)))

(declare-fun bs!874202 () Bool)

(declare-fun d!1401722 () Bool)

(assert (= bs!874202 (and d!1401722 b!4535542)))

(assert (=> bs!874202 (= (dynLambda!21205 lambda!175340 (h!56607 (toList!4391 lt!1710429))) (contains!13513 lt!1710429 (_1!28895 (h!56607 (toList!4391 lt!1710429)))))))

(declare-fun m!5300491 () Bool)

(assert (=> bs!874202 m!5300491))

(assert (=> b!4536899 d!1401722))

(declare-fun b_lambda!157429 () Bool)

(assert (= b_lambda!157377 (or b!4535309 b_lambda!157429)))

(assert (=> b!4536893 d!1401706))

(declare-fun b_lambda!157431 () Bool)

(assert (= b_lambda!157375 (or b!4535309 b_lambda!157431)))

(declare-fun bs!874203 () Bool)

(declare-fun d!1401726 () Bool)

(assert (= bs!874203 (and d!1401726 b!4535309)))

(assert (=> bs!874203 (= (dynLambda!21205 lambda!175267 (h!56607 (t!357818 (_2!28896 lt!1710445)))) (contains!13513 lt!1710578 (_1!28895 (h!56607 (t!357818 (_2!28896 lt!1710445))))))))

(declare-fun m!5300495 () Bool)

(assert (=> bs!874203 m!5300495))

(assert (=> b!4536891 d!1401726))

(declare-fun b_lambda!157433 () Bool)

(assert (= b_lambda!157367 (or b!4535309 b_lambda!157433)))

(declare-fun bs!874204 () Bool)

(declare-fun d!1401728 () Bool)

(assert (= bs!874204 (and d!1401728 b!4535309)))

(assert (=> bs!874204 (= (dynLambda!21205 lambda!175267 (h!56607 (toList!4391 lt!1710580))) (contains!13513 lt!1710578 (_1!28895 (h!56607 (toList!4391 lt!1710580)))))))

(declare-fun m!5300497 () Bool)

(assert (=> bs!874204 m!5300497))

(assert (=> b!4536847 d!1401728))

(declare-fun b_lambda!157435 () Bool)

(assert (= b_lambda!157253 (or b!4535622 b_lambda!157435)))

(declare-fun bs!874205 () Bool)

(declare-fun d!1401730 () Bool)

(assert (= bs!874205 (and d!1401730 b!4535622)))

(assert (=> bs!874205 (= (dynLambda!21205 lambda!175351 (h!56607 (toList!4391 lt!1710904))) (contains!13513 lt!1710902 (_1!28895 (h!56607 (toList!4391 lt!1710904)))))))

(declare-fun m!5300499 () Bool)

(assert (=> bs!874205 m!5300499))

(assert (=> b!4535852 d!1401730))

(declare-fun b_lambda!157437 () Bool)

(assert (= b_lambda!157263 (or b!4535622 b_lambda!157437)))

(declare-fun bs!874206 () Bool)

(declare-fun d!1401732 () Bool)

(assert (= bs!874206 (and d!1401732 b!4535622)))

(assert (=> bs!874206 (= (dynLambda!21205 lambda!175351 (h!56607 (_2!28896 lt!1710445))) (contains!13513 lt!1710902 (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(assert (=> bs!874206 m!5297537))

(assert (=> b!4535901 d!1401732))

(declare-fun b_lambda!157439 () Bool)

(assert (= b_lambda!157241 (or d!1400876 b_lambda!157439)))

(declare-fun bs!874207 () Bool)

(declare-fun d!1401734 () Bool)

(assert (= bs!874207 (and d!1401734 d!1400876)))

(assert (=> bs!874207 (= (dynLambda!21203 lambda!175353 (h!56608 (toList!4392 lt!1710440))) (noDuplicateKeys!1192 (_2!28896 (h!56608 (toList!4392 lt!1710440)))))))

(assert (=> bs!874207 m!5297625))

(assert (=> b!4535722 d!1401734))

(declare-fun b_lambda!157441 () Bool)

(assert (= b_lambda!157251 (or b!4535622 b_lambda!157441)))

(assert (=> d!1401000 d!1401732))

(declare-fun b_lambda!157443 () Bool)

(assert (= b_lambda!157327 (or d!1400628 b_lambda!157443)))

(declare-fun bs!874208 () Bool)

(declare-fun d!1401738 () Bool)

(assert (= bs!874208 (and d!1401738 d!1400628)))

(assert (=> bs!874208 (= (dynLambda!21205 lambda!175268 (h!56607 (toList!4391 lt!1710448))) (contains!13513 lt!1710589 (_1!28895 (h!56607 (toList!4391 lt!1710448)))))))

(declare-fun m!5300505 () Bool)

(assert (=> bs!874208 m!5300505))

(assert (=> b!4536470 d!1401738))

(declare-fun b_lambda!157445 () Bool)

(assert (= b_lambda!157343 (or d!1400798 b_lambda!157445)))

(declare-fun bs!874210 () Bool)

(declare-fun d!1401740 () Bool)

(assert (= bs!874210 (and d!1401740 d!1400798)))

(assert (=> bs!874210 (= (dynLambda!21203 lambda!175338 (h!56608 (toList!4392 lt!1710421))) (noDuplicateKeys!1192 (_2!28896 (h!56608 (toList!4392 lt!1710421)))))))

(assert (=> bs!874210 m!5298587))

(assert (=> b!4536564 d!1401740))

(declare-fun b_lambda!157447 () Bool)

(assert (= b_lambda!157371 (or b!4535309 b_lambda!157447)))

(declare-fun bs!874211 () Bool)

(declare-fun d!1401744 () Bool)

(assert (= bs!874211 (and d!1401744 b!4535309)))

(assert (=> bs!874211 (= (dynLambda!21205 lambda!175266 (h!56607 (toList!4391 lt!1710448))) (contains!13513 lt!1710448 (_1!28895 (h!56607 (toList!4391 lt!1710448)))))))

(declare-fun m!5300509 () Bool)

(assert (=> bs!874211 m!5300509))

(assert (=> b!4536863 d!1401744))

(declare-fun b_lambda!157449 () Bool)

(assert (= b_lambda!157337 (or start!449928 b_lambda!157449)))

(assert (=> d!1401412 d!1400888))

(declare-fun b_lambda!157451 () Bool)

(assert (= b_lambda!157283 (or d!1400874 b_lambda!157451)))

(declare-fun bs!874213 () Bool)

(declare-fun d!1401746 () Bool)

(assert (= bs!874213 (and d!1401746 d!1400874)))

(assert (=> bs!874213 (= (dynLambda!21205 lambda!175352 (h!56607 (_2!28896 lt!1710445))) (contains!13513 lt!1710913 (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun m!5300513 () Bool)

(assert (=> bs!874213 m!5300513))

(assert (=> b!4536251 d!1401746))

(declare-fun b_lambda!157453 () Bool)

(assert (= b_lambda!157399 (or b!4535542 b_lambda!157453)))

(declare-fun bs!874214 () Bool)

(declare-fun d!1401750 () Bool)

(assert (= bs!874214 (and d!1401750 b!4535542)))

(assert (=> bs!874214 (= (dynLambda!21205 lambda!175341 (h!56607 (toList!4391 lt!1710429))) (contains!13513 lt!1710840 (_1!28895 (h!56607 (toList!4391 lt!1710429)))))))

(declare-fun m!5300515 () Bool)

(assert (=> bs!874214 m!5300515))

(assert (=> b!4536991 d!1401750))

(declare-fun b_lambda!157455 () Bool)

(assert (= b_lambda!157359 (or start!449928 b_lambda!157455)))

(declare-fun bs!874215 () Bool)

(declare-fun d!1401752 () Bool)

(assert (= bs!874215 (and d!1401752 start!449928)))

(assert (=> bs!874215 (= (dynLambda!21203 lambda!175213 (h!56608 (t!357819 (toList!4392 lm!1477)))) (noDuplicateKeys!1192 (_2!28896 (h!56608 (t!357819 (toList!4392 lm!1477))))))))

(assert (=> bs!874215 m!5299581))

(assert (=> b!4536780 d!1401752))

(declare-fun b_lambda!157457 () Bool)

(assert (= b_lambda!157333 (or d!1400874 b_lambda!157457)))

(declare-fun bs!874216 () Bool)

(declare-fun d!1401754 () Bool)

(assert (= bs!874216 (and d!1401754 d!1400874)))

(assert (=> bs!874216 (= (dynLambda!21205 lambda!175352 (h!56607 (toList!4391 lt!1710415))) (contains!13513 lt!1710913 (_1!28895 (h!56607 (toList!4391 lt!1710415)))))))

(declare-fun m!5300521 () Bool)

(assert (=> bs!874216 m!5300521))

(assert (=> b!4536514 d!1401754))

(declare-fun b_lambda!157459 () Bool)

(assert (= b_lambda!157281 (or d!1400748 b_lambda!157459)))

(declare-fun bs!874217 () Bool)

(declare-fun d!1401758 () Bool)

(assert (= bs!874217 (and d!1401758 d!1400748)))

(assert (=> bs!874217 (= (dynLambda!21203 lambda!175316 (h!56608 (toList!4392 (+!1592 lt!1710421 lt!1710445)))) (noDuplicateKeys!1192 (_2!28896 (h!56608 (toList!4392 (+!1592 lt!1710421 lt!1710445))))))))

(assert (=> bs!874217 m!5297839))

(assert (=> b!4536245 d!1401758))

(declare-fun b_lambda!157461 () Bool)

(assert (= b_lambda!157255 (or b!4535622 b_lambda!157461)))

(declare-fun bs!874218 () Bool)

(declare-fun d!1401760 () Bool)

(assert (= bs!874218 (and d!1401760 b!4535622)))

(assert (=> bs!874218 (= (dynLambda!21205 lambda!175350 (h!56607 (toList!4391 lt!1710415))) (contains!13513 lt!1710415 (_1!28895 (h!56607 (toList!4391 lt!1710415)))))))

(declare-fun m!5300523 () Bool)

(assert (=> bs!874218 m!5300523))

(assert (=> b!4535854 d!1401760))

(declare-fun b_lambda!157463 () Bool)

(assert (= b_lambda!157387 (or b!4535542 b_lambda!157463)))

(declare-fun bs!874219 () Bool)

(declare-fun d!1401762 () Bool)

(assert (= bs!874219 (and d!1401762 b!4535542)))

(assert (=> bs!874219 (= (dynLambda!21205 lambda!175341 (h!56607 (_2!28896 lt!1710445))) (contains!13513 lt!1710840 (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(assert (=> bs!874219 m!5297387))

(assert (=> d!1401640 d!1401762))

(declare-fun b_lambda!157465 () Bool)

(assert (= b_lambda!157247 (or b!4535199 b_lambda!157465)))

(declare-fun bs!874220 () Bool)

(declare-fun d!1401764 () Bool)

(assert (= bs!874220 (and d!1401764 b!4535199)))

(assert (=> bs!874220 (= (dynLambda!21205 lambda!175215 (h!56607 (_2!28896 (h!56608 (toList!4392 lm!1477))))) (= (hash!2895 hashF!1107 (_1!28895 (h!56607 (_2!28896 (h!56608 (toList!4392 lm!1477)))))) (_1!28896 (h!56608 (toList!4392 lm!1477)))))))

(declare-fun m!5300529 () Bool)

(assert (=> bs!874220 m!5300529))

(assert (=> b!4535793 d!1401764))

(declare-fun b_lambda!157467 () Bool)

(assert (= b_lambda!157273 (or d!1400790 b_lambda!157467)))

(declare-fun bs!874221 () Bool)

(declare-fun d!1401768 () Bool)

(assert (= bs!874221 (and d!1401768 d!1400790)))

(assert (=> bs!874221 (= (dynLambda!21203 lambda!175331 (h!56608 (toList!4392 lt!1710421))) (noDuplicateKeys!1192 (_2!28896 (h!56608 (toList!4392 lt!1710421)))))))

(assert (=> bs!874221 m!5298587))

(assert (=> b!4536139 d!1401768))

(declare-fun b_lambda!157469 () Bool)

(assert (= b_lambda!157335 (or d!1400780 b_lambda!157469)))

(declare-fun bs!874222 () Bool)

(declare-fun d!1401770 () Bool)

(assert (= bs!874222 (and d!1401770 d!1400780)))

(assert (=> bs!874222 (= (dynLambda!21203 lambda!175325 (h!56608 (toList!4392 lt!1710432))) (noDuplicateKeys!1192 (_2!28896 (h!56608 (toList!4392 lt!1710432)))))))

(assert (=> bs!874222 m!5299369))

(assert (=> b!4536518 d!1401770))

(declare-fun b_lambda!157471 () Bool)

(assert (= b_lambda!157299 (or b!4535199 b_lambda!157471)))

(assert (=> b!4536289 d!1400884))

(declare-fun b_lambda!157473 () Bool)

(assert (= b_lambda!157323 (or d!1400786 b_lambda!157473)))

(declare-fun bs!874224 () Bool)

(declare-fun d!1401772 () Bool)

(assert (= bs!874224 (and d!1401772 d!1400786)))

(assert (=> bs!874224 (= (dynLambda!21203 lambda!175330 (h!56608 (toList!4392 lt!1710421))) (noDuplicateKeys!1192 (_2!28896 (h!56608 (toList!4392 lt!1710421)))))))

(assert (=> bs!874224 m!5298587))

(assert (=> b!4536466 d!1401772))

(declare-fun b_lambda!157475 () Bool)

(assert (= b_lambda!157285 (or d!1400704 b_lambda!157475)))

(declare-fun bs!874225 () Bool)

(declare-fun d!1401776 () Bool)

(assert (= bs!874225 (and d!1401776 d!1400704)))

(assert (=> bs!874225 (= (dynLambda!21203 lambda!175306 (h!56608 (toList!4392 lm!1477))) (allKeysSameHash!1046 (_2!28896 (h!56608 (toList!4392 lm!1477))) (_1!28896 (h!56608 (toList!4392 lm!1477))) hashF!1107))))

(assert (=> bs!874225 m!5297593))

(assert (=> b!4536257 d!1401776))

(declare-fun b_lambda!157477 () Bool)

(assert (= b_lambda!157257 (or b!4535622 b_lambda!157477)))

(declare-fun bs!874226 () Bool)

(declare-fun d!1401778 () Bool)

(assert (= bs!874226 (and d!1401778 b!4535622)))

(assert (=> bs!874226 (= (dynLambda!21205 lambda!175351 (h!56607 (t!357818 (_2!28896 lt!1710445)))) (contains!13513 lt!1710902 (_1!28895 (h!56607 (t!357818 (_2!28896 lt!1710445))))))))

(declare-fun m!5300535 () Bool)

(assert (=> bs!874226 m!5300535))

(assert (=> b!4535877 d!1401778))

(declare-fun b_lambda!157479 () Bool)

(assert (= b_lambda!157249 (or b!4535622 b_lambda!157479)))

(declare-fun bs!874227 () Bool)

(declare-fun d!1401780 () Bool)

(assert (= bs!874227 (and d!1401780 b!4535622)))

(assert (=> bs!874227 (= (dynLambda!21205 lambda!175351 (h!56607 (toList!4391 lt!1710415))) (contains!13513 lt!1710902 (_1!28895 (h!56607 (toList!4391 lt!1710415)))))))

(declare-fun m!5300537 () Bool)

(assert (=> bs!874227 m!5300537))

(assert (=> b!4535826 d!1401780))

(declare-fun b_lambda!157481 () Bool)

(assert (= b_lambda!157313 (or d!1400708 b_lambda!157481)))

(declare-fun bs!874228 () Bool)

(declare-fun d!1401782 () Bool)

(assert (= bs!874228 (and d!1401782 d!1400708)))

(assert (=> bs!874228 (= (dynLambda!21203 lambda!175309 (h!56608 (toList!4392 lm!1477))) (noDuplicateKeys!1192 (_2!28896 (h!56608 (toList!4392 lm!1477)))))))

(assert (=> bs!874228 m!5297595))

(assert (=> b!4536412 d!1401782))

(declare-fun b_lambda!157483 () Bool)

(assert (= b_lambda!157329 (or d!1400724 b_lambda!157483)))

(declare-fun bs!874229 () Bool)

(declare-fun d!1401784 () Bool)

(assert (= bs!874229 (and d!1401784 d!1400724)))

(assert (=> bs!874229 (= (dynLambda!21205 lambda!175312 (h!56607 newBucket!178)) (= (hash!2895 hashF!1107 (_1!28895 (h!56607 newBucket!178))) hash!344))))

(declare-fun m!5300539 () Bool)

(assert (=> bs!874229 m!5300539))

(assert (=> b!4536500 d!1401784))

(declare-fun b_lambda!157485 () Bool)

(assert (= b_lambda!157381 (or b!4535542 b_lambda!157485)))

(assert (=> b!4536897 d!1401762))

(declare-fun b_lambda!157487 () Bool)

(assert (= b_lambda!157237 (or start!449928 b_lambda!157487)))

(assert (=> d!1400900 d!1400886))

(declare-fun b_lambda!157489 () Bool)

(assert (= b_lambda!157235 (or d!1400816 b_lambda!157489)))

(declare-fun bs!874230 () Bool)

(declare-fun d!1401786 () Bool)

(assert (= bs!874230 (and d!1401786 d!1400816)))

(assert (=> bs!874230 (= (dynLambda!21205 lambda!175344 (h!56607 (_2!28896 lt!1710445))) (contains!13513 lt!1710851 (_1!28895 (h!56607 (_2!28896 lt!1710445)))))))

(declare-fun m!5300541 () Bool)

(assert (=> bs!874230 m!5300541))

(assert (=> b!4535664 d!1401786))

(declare-fun b_lambda!157491 () Bool)

(assert (= b_lambda!157385 (or b!4535542 b_lambda!157491)))

(declare-fun bs!874231 () Bool)

(declare-fun d!1401788 () Bool)

(assert (= bs!874231 (and d!1401788 b!4535542)))

(assert (=> bs!874231 (= (dynLambda!21205 lambda!175341 (h!56607 (toList!4391 lt!1710842))) (contains!13513 lt!1710840 (_1!28895 (h!56607 (toList!4391 lt!1710842)))))))

(declare-fun m!5300543 () Bool)

(assert (=> bs!874231 m!5300543))

(assert (=> b!4536901 d!1401788))

(declare-fun b_lambda!157493 () Bool)

(assert (= b_lambda!157379 (or b!4535309 b_lambda!157493)))

(declare-fun bs!874232 () Bool)

(declare-fun d!1401790 () Bool)

(assert (= bs!874232 (and d!1401790 b!4535309)))

(assert (=> bs!874232 (= (dynLambda!21205 lambda!175267 (h!56607 (toList!4391 lt!1710448))) (contains!13513 lt!1710578 (_1!28895 (h!56607 (toList!4391 lt!1710448)))))))

(declare-fun m!5300545 () Bool)

(assert (=> bs!874232 m!5300545))

(assert (=> b!4536895 d!1401790))

(declare-fun b_lambda!157495 () Bool)

(assert (= b_lambda!157339 (or d!1400794 b_lambda!157495)))

(declare-fun bs!874233 () Bool)

(declare-fun d!1401792 () Bool)

(assert (= bs!874233 (and d!1401792 d!1400794)))

(assert (=> bs!874233 (= (dynLambda!21203 lambda!175332 (h!56608 (t!357819 (toList!4392 lm!1477)))) (noDuplicateKeys!1192 (_2!28896 (h!56608 (t!357819 (toList!4392 lm!1477))))))))

(assert (=> bs!874233 m!5299581))

(assert (=> b!4536538 d!1401792))

(check-sat (not b!4535829) (not b!4536120) (not d!1401612) (not b!4536539) (not bs!874228) (not d!1401704) (not b_lambda!157437) (not d!1401624) (not b!4536478) (not bs!874197) (not b_lambda!157463) (not b!4536370) (not b!4536113) (not d!1401532) (not b!4536398) (not b!4536921) (not b_lambda!157229) (not bm!316246) (not d!1401478) (not b!4536601) (not bs!874225) (not bs!874204) (not d!1400980) (not b!4536292) (not bm!316298) (not b!4536014) (not b!4536293) (not b_lambda!157445) (not b!4536446) (not b!4536507) (not b!4536068) (not b!4536608) (not b_lambda!157477) (not b!4536566) (not b_lambda!157443) (not b!4536733) (not d!1401016) (not d!1400892) (not b!4536757) (not bs!874221) (not b!4536621) (not b!4536558) (not d!1401452) (not b!4536797) (not b!4535746) (not b_lambda!157439) (not b!4536341) (not b!4536916) (not b!4536375) (not b!4536798) (not d!1401702) (not b!4536081) (not b_lambda!157491) (not b!4536794) (not b!4536146) (not d!1401682) (not d!1401132) (not b!4536868) (not b!4536400) (not b!4536073) (not b!4536378) (not b!4536888) (not bm!316326) (not d!1401296) (not d!1401334) (not d!1401344) (not bm!316270) (not b!4536726) (not b!4535828) (not bs!874213) (not d!1401548) (not b_lambda!157459) (not b!4536873) (not b!4536017) (not bs!874211) (not b!4535667) (not bs!874222) (not b_lambda!157453) (not b!4536430) (not b!4536755) (not bm!316343) (not b!4536925) (not b!4536006) (not d!1401678) (not bs!874214) (not b!4536990) (not b!4535911) (not d!1401364) (not d!1401422) (not b!4536519) (not bm!316335) (not b_lambda!157469) (not b!4535668) (not bm!316296) (not b!4536481) (not b!4536444) (not b!4536735) (not b!4536116) (not d!1401284) (not b!4535648) (not d!1401174) (not d!1401222) (not d!1401116) (not b!4536800) (not b_lambda!157455) (not b!4535819) (not d!1400896) (not bs!874201) (not b!4536445) (not b!4536342) (not b!4536003) (not b!4535864) (not b!4536739) (not b!4536725) (not b!4536080) (not b!4536789) (not bs!874194) (not b!4536732) (not b!4536784) (not bm!316272) (not b!4536734) (not b!4536809) (not d!1401188) (not b!4536288) (not bs!874218) (not d!1401574) (not bs!874227) (not b!4536792) (not b!4535736) (not bm!316206) (not d!1401354) (not bs!874230) (not b!4536365) (not d!1401524) (not d!1401348) (not b!4535693) (not b!4535680) (not bm!316198) (not b!4536125) (not b!4536213) (not bs!874205) (not b!4536723) (not d!1401320) (not b_lambda!157433) (not d!1401514) (not b_lambda!157487) (not bm!316331) (not bm!316323) (not b_lambda!157489) (not b!4535794) (not b!4535815) (not b!4536727) (not b!4536561) (not b!4536749) (not b!4536442) (not b!4536475) (not b!4535655) (not bs!874202) (not b!4536620) (not b!4536483) (not b!4536892) (not bm!316334) (not b_lambda!157471) (not d!1401390) (not b!4536894) (not d!1401438) (not b!4536246) (not b!4536089) (not b_lambda!157479) (not d!1400926) (not b_lambda!157467) (not b!4536710) (not b!4536568) (not b!4537014) (not d!1400906) (not b!4535853) (not b_lambda!157227) (not b!4536567) (not bm!316276) (not bs!874198) (not d!1401000) (not b!4535700) (not d!1401078) (not b_lambda!157415) (not b!4536506) (not d!1401648) (not b_lambda!157411) (not d!1401302) (not b!4536076) (not bm!316339) (not b!4536026) (not d!1401058) (not b!4536262) (not b_lambda!157331) (not b!4536015) (not b!4536744) (not bm!316320) (not b_lambda!157427) (not b!4535703) (not b!4536286) (not bm!316345) (not b!4535862) (not d!1401276) (not d!1401110) (not b!4535798) (not b!4536836) (not b!4535696) (not b!4536517) (not b!4535905) (not b!4536562) (not b!4536283) (not b!4535772) (not b!4536926) (not bm!316216) (not b!4536748) (not b!4536515) (not bs!874231) (not bm!316264) (not b_lambda!157423) (not b!4536476) (not d!1400988) (not b!4536914) (not d!1401448) (not d!1401036) (not b!4536830) (not bs!874220) (not b!4535678) (not d!1401318) (not b_lambda!157425) (not bs!874215) (not b!4535827) (not b!4536004) (not b!4536433) (not b!4536787) (not b!4536372) (not bs!874217) (not b!4536786) (not bm!316266) (not b!4536907) (not b!4535818) (not b_lambda!157447) (not d!1401418) (not d!1400942) (not b!4535682) (not bs!874200) (not d!1400914) (not b!4536399) (not b!4536397) (not d!1401162) (not b!4536058) (not b!4536421) (not d!1401392) (not b!4536435) (not d!1401676) (not b!4536563) (not d!1401406) (not b!4536403) (not d!1401424) (not b!4536022) (not bm!316347) (not bm!316271) (not b!4536291) (not b!4536261) (not b!4536630) (not bm!316199) (not d!1400946) (not b!4536513) (not b!4536864) (not b!4536629) (not b_lambda!157269) (not bm!316304) (not bm!316330) (not b!4536499) (not b!4535723) (not b!4535856) (not d!1401468) (not b!4536728) (not b!4536920) (not b!4536781) (not b!4536480) (not b!4535802) (not d!1401042) (not b!4535859) (not b!4536545) (not d!1401642) (not bm!316247) (not b!4537015) (not d!1401484) (not b!4536216) (not bs!874229) (not bs!874226) (not b!4536866) (not b!4536516) (not b_lambda!157429) (not b!4536010) (not b!4536001) (not b!4536436) (not b!4536912) (not d!1400912) (not d!1401518) (not b!4536215) (not b!4536910) (not b!4536384) (not b!4535727) (not b!4536705) (not b_lambda!157239) (not b_lambda!157451) (not d!1401562) (not b!4536811) (not b!4536130) (not b!4536467) (not b!4536838) (not d!1400940) (not b!4535739) (not b!4535725) (not b_lambda!157231) (not bm!316217) (not b!4535900) (not b!4536249) (not b!4536218) (not bm!316328) (not b_lambda!157475) (not d!1400972) (not b_lambda!157413) (not b!4536028) (not b_lambda!157483) (not b!4536050) (not b!4535858) (not b!4535683) (not b!4536715) (not b!4535780) (not b!4536097) (not bm!316344) (not d!1401586) (not b!4537017) (not d!1400930) (not d!1400982) (not bm!316346) (not d!1401700) (not b!4537016) (not b!4536108) (not bm!316329) (not d!1401698) (not bs!874208) (not b!4536898) (not b!4536903) (not b!4536858) (not d!1401170) (not d!1400952) (not b!4535855) (not b_lambda!157309) (not bs!874203) (not b!4535910) (not b!4536848) (not d!1401446) (not bm!316324) (not b!4536627) (not b!4536759) (not bm!316213) (not b!4536859) (not b!4536556) (not b!4536740) (not b!4536501) (not d!1401172) (not bs!874219) (not b!4536127) (not bm!316211) (not b!4535878) (not d!1400922) (not b!4536547) (not d!1401124) (not b!4536992) (not bm!316332) (not b!4536405) (not d!1401308) (not b!4536923) (not b!4536025) (not b!4536343) (not d!1400978) (not b_lambda!157495) (not b!4536779) (not b!4536871) (not b!4536896) (not d!1401606) (not b!4535774) (not b!4536887) (not bm!316214) (not b!4536263) (not b!4536122) (not d!1401096) (not b!4536392) (not b!4537012) (not b!4536795) (not bm!316349) (not b!4536837) (not b!4536989) (not b!4535909) (not d!1401522) (not b!4535671) (not b!4535665) (not b!4536713) (not b!4536404) (not b!4536738) (not d!1400918) (not bm!316297) (not bm!316279) (not b!4536443) (not b!4535816) (not b!4536258) (not b!4536886) (not b!4535830) (not b!4535656) (not b!4536702) (not bm!316245) (not b!4535701) (not d!1400968) (not b!4536477) (not b!4536565) (not b!4535799) (not d!1400916) (not b!4536737) (not b!4536542) (not b!4535695) (not b!4536106) (not b!4536111) (not d!1401560) (not b!4536066) (not b_lambda!157417) (not d!1401122) (not b!4536804) (not b_lambda!157449) (not b!4536132) (not b!4536109) (not bm!316348) (not bm!316212) (not d!1401640) (not b!4536760) (not bs!874232) (not b_lambda!157461) (not d!1401546) (not bm!316255) (not bm!316336) (not d!1401540) (not b!4536900) (not bm!316248) (not b!4536052) (not b!4535822) (not d!1401024) (not b!4535813) tp_is_empty!28047 (not b!4536138) (not b!4536396) (not b!4536055) (not b!4536252) (not b!4536235) (not b!4535831) (not b!4536479) (not b!4536913) (not b!4536012) (not d!1401118) (not b!4536704) (not b!4536619) (not b_lambda!157435) (not b!4536853) (not bm!316295) (not d!1401614) (not b!4536832) (not b!4536095) (not d!1400966) (not b!4536049) (not b!4535745) (not bm!316197) (not bs!874199) tp_is_empty!28045 (not d!1401048) (not b!4535720) (not b!4535691) (not b!4536793) (not b!4536417) (not bs!874207) (not b!4536808) (not b!4535685) (not b_lambda!157265) (not b!4536872) (not b_lambda!157473) (not b!4536071) (not d!1401056) (not d!1401510) (not d!1401004) (not b!4536557) (not b!4535863) (not b!4536628) (not b!4536260) (not b!4536788) (not b_lambda!157465) (not bm!316244) (not d!1400898) (not d!1401126) (not b!4536700) (not b!4535797) (not b!4535857) (not b!4536119) (not b!4536140) (not d!1401600) (not b!4536905) (not b!4535702) (not b!4536761) (not bs!874195) (not b!4536448) (not d!1401054) (not b!4535697) (not b!4536064) (not b!4536751) (not b!4536729) (not bs!874206) (not b!4535906) (not b!4536777) (not b!4536214) (not bm!316259) (not d!1401018) (not b!4535709) (not b!4535824) (not bm!316350) (not d!1400890) (not d!1401060) (not b!4536799) (not b!4536083) (not b_lambda!157267) (not bs!874210) (not d!1400928) (not bm!316327) (not b!4535681) (not d!1401410) (not b!4536005) (not b!4535796) (not bm!316265) (not b!4536085) (not d!1401572) (not d!1401526) (not bm!316338) (not b!4535734) (not b!4536906) (not b!4535666) (not d!1401530) (not b!4536831) (not b_lambda!157457) (not d!1400934) (not bm!316243) (not b!4536420) (not b!4536531) (not b!4536746) (not d!1400938) (not bm!316209) (not b!4536555) (not b!4535791) (not d!1401570) (not bm!316258) (not d!1401342) (not bm!316325) (not b!4536707) (not b_lambda!157225) (not bs!874216) (not d!1401544) (not b!4536027) (not b!4536924) (not b_lambda!157409) (not b!4536758) (not d!1400950) (not b_lambda!157233) (not b!4536717) (not bs!874224) (not bs!874233) (not b!4536919) (not d!1401644) (not b!4536377) (not bm!316210) (not b!4536904) (not b_lambda!157493) (not d!1401212) (not b!4536606) (not b_lambda!157421) (not b!4536865) (not bm!316260) (not bm!316303) (not d!1401052) (not b_lambda!157481) (not b!4536806) (not b_lambda!157431) (not b!4536911) (not b!4536423) (not b!4535657) (not b!4536712) (not b!4535698) (not b!4535903) (not b!4536469) (not b!4535904) (not b!4535733) (not b!4535817) (not b!4536902) (not bm!316215) (not b_lambda!157419) (not b!4536471) (not bm!316305) (not d!1401332) (not d!1401164) (not b!4535902) (not b!4536915) (not b!4536344) (not b!4536833) (not b_lambda!157441) (not d!1400994) (not b!4536386) (not b!4536413) (not bm!316333) (not d!1401374) (not b!4536358) (not b_lambda!157485) (not d!1401542) (not b!4536110) (not b!4536051) (not b!4536101) (not b!4535823) (not b!4535899) (not d!1401576) (not b!4536867) (not b!4536128) (not b!4536290))
(check-sat)
