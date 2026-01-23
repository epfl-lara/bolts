; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!489762 () Bool)

(assert start!489762)

(declare-fun b!4776932 () Bool)

(declare-fun e!2982132 () Bool)

(declare-fun e!2982129 () Bool)

(assert (=> b!4776932 (= e!2982132 e!2982129)))

(declare-fun res!2027478 () Bool)

(assert (=> b!4776932 (=> res!2027478 e!2982129)))

(declare-datatypes ((K!15454 0))(
  ( (K!15455 (val!20669 Int)) )
))
(declare-datatypes ((V!15700 0))(
  ( (V!15701 (val!20670 Int)) )
))
(declare-datatypes ((tuple2!56312 0))(
  ( (tuple2!56313 (_1!31450 K!15454) (_2!31450 V!15700)) )
))
(declare-datatypes ((List!54021 0))(
  ( (Nil!53897) (Cons!53897 (h!60311 tuple2!56312) (t!361471 List!54021)) )
))
(declare-datatypes ((tuple2!56314 0))(
  ( (tuple2!56315 (_1!31451 (_ BitVec 64)) (_2!31451 List!54021)) )
))
(declare-datatypes ((List!54022 0))(
  ( (Nil!53898) (Cons!53898 (h!60312 tuple2!56314) (t!361472 List!54022)) )
))
(declare-datatypes ((ListLongMap!5073 0))(
  ( (ListLongMap!5074 (toList!6655 List!54022)) )
))
(declare-fun lm!2709 () ListLongMap!5073)

(declare-fun key!6641 () K!15454)

(declare-fun containsKey!3761 (List!54021 K!15454) Bool)

(assert (=> b!4776932 (= res!2027478 (containsKey!3761 (_2!31451 (h!60312 (toList!6655 lm!2709))) key!6641))))

(declare-fun apply!12849 (ListLongMap!5073 (_ BitVec 64)) List!54021)

(assert (=> b!4776932 (not (containsKey!3761 (apply!12849 lm!2709 (_1!31451 (h!60312 (toList!6655 lm!2709)))) key!6641))))

(declare-datatypes ((Unit!138930 0))(
  ( (Unit!138931) )
))
(declare-fun lt!1940232 () Unit!138930)

(declare-datatypes ((Hashable!6786 0))(
  ( (HashableExt!6785 (__x!32809 Int)) )
))
(declare-fun hashF!1687 () Hashable!6786)

(declare-fun lemmaNotSameHashThenCannotContainKey!178 (ListLongMap!5073 K!15454 (_ BitVec 64) Hashable!6786) Unit!138930)

(assert (=> b!4776932 (= lt!1940232 (lemmaNotSameHashThenCannotContainKey!178 lm!2709 key!6641 (_1!31451 (h!60312 (toList!6655 lm!2709))) hashF!1687))))

(declare-fun b!4776933 () Bool)

(declare-fun e!2982134 () Bool)

(declare-fun lambda!227051 () Int)

(declare-fun forall!12058 (List!54022 Int) Bool)

(assert (=> b!4776933 (= e!2982134 (forall!12058 (toList!6655 lm!2709) lambda!227051))))

(declare-fun lt!1940251 () ListLongMap!5073)

(declare-fun v!11584 () V!15700)

(declare-fun getValue!46 (List!54022 K!15454) V!15700)

(assert (=> b!4776933 (= (getValue!46 (toList!6655 lt!1940251) key!6641) v!11584)))

(declare-fun lt!1940233 () Unit!138930)

(declare-fun lemmaGetValueEquivToGetPair!46 (ListLongMap!5073 K!15454 V!15700 Hashable!6786) Unit!138930)

(assert (=> b!4776933 (= lt!1940233 (lemmaGetValueEquivToGetPair!46 lt!1940251 key!6641 v!11584 hashF!1687))))

(declare-fun res!2027470 () Bool)

(declare-fun e!2982130 () Bool)

(assert (=> start!489762 (=> (not res!2027470) (not e!2982130))))

(assert (=> start!489762 (= res!2027470 (forall!12058 (toList!6655 lm!2709) lambda!227051))))

(assert (=> start!489762 e!2982130))

(declare-fun e!2982133 () Bool)

(declare-fun inv!69480 (ListLongMap!5073) Bool)

(assert (=> start!489762 (and (inv!69480 lm!2709) e!2982133)))

(assert (=> start!489762 true))

(declare-fun tp_is_empty!33073 () Bool)

(assert (=> start!489762 tp_is_empty!33073))

(declare-fun tp_is_empty!33075 () Bool)

(assert (=> start!489762 tp_is_empty!33075))

(declare-fun b!4776934 () Bool)

(declare-fun res!2027472 () Bool)

(assert (=> b!4776934 (=> (not res!2027472) (not e!2982130))))

(declare-fun allKeysSameHashInMap!2191 (ListLongMap!5073 Hashable!6786) Bool)

(assert (=> b!4776934 (= res!2027472 (allKeysSameHashInMap!2191 lm!2709 hashF!1687))))

(declare-fun b!4776935 () Bool)

(declare-fun e!2982131 () Bool)

(assert (=> b!4776935 (= e!2982131 e!2982134)))

(declare-fun res!2027474 () Bool)

(assert (=> b!4776935 (=> res!2027474 e!2982134)))

(declare-datatypes ((Option!12879 0))(
  ( (None!12878) (Some!12878 (v!48047 tuple2!56312)) )
))
(declare-fun lt!1940234 () Option!12879)

(declare-fun get!18298 (Option!12879) tuple2!56312)

(assert (=> b!4776935 (= res!2027474 (not (= (_2!31450 (get!18298 lt!1940234)) v!11584)))))

(declare-fun isDefined!10023 (Option!12879) Bool)

(assert (=> b!4776935 (isDefined!10023 lt!1940234)))

(declare-fun lt!1940250 () List!54021)

(declare-fun getPair!774 (List!54021 K!15454) Option!12879)

(assert (=> b!4776935 (= lt!1940234 (getPair!774 lt!1940250 key!6641))))

(declare-fun lt!1940235 () Unit!138930)

(declare-fun lt!1940249 () tuple2!56314)

(declare-fun forallContained!4015 (List!54022 Int tuple2!56314) Unit!138930)

(assert (=> b!4776935 (= lt!1940235 (forallContained!4015 (toList!6655 lt!1940251) lambda!227051 lt!1940249))))

(declare-fun lt!1940244 () Unit!138930)

(declare-fun lemmaInGenMapThenGetPairDefined!548 (ListLongMap!5073 K!15454 Hashable!6786) Unit!138930)

(assert (=> b!4776935 (= lt!1940244 (lemmaInGenMapThenGetPairDefined!548 lt!1940251 key!6641 hashF!1687))))

(declare-fun lt!1940239 () Unit!138930)

(assert (=> b!4776935 (= lt!1940239 (forallContained!4015 (toList!6655 lt!1940251) lambda!227051 lt!1940249))))

(declare-fun contains!17398 (List!54022 tuple2!56314) Bool)

(assert (=> b!4776935 (contains!17398 (toList!6655 lt!1940251) lt!1940249)))

(declare-fun lt!1940242 () (_ BitVec 64))

(assert (=> b!4776935 (= lt!1940249 (tuple2!56315 lt!1940242 lt!1940250))))

(declare-fun lt!1940238 () Unit!138930)

(declare-fun lemmaGetValueImpliesTupleContained!577 (ListLongMap!5073 (_ BitVec 64) List!54021) Unit!138930)

(assert (=> b!4776935 (= lt!1940238 (lemmaGetValueImpliesTupleContained!577 lt!1940251 lt!1940242 lt!1940250))))

(assert (=> b!4776935 (= lt!1940250 (apply!12849 lt!1940251 lt!1940242))))

(declare-fun contains!17399 (ListLongMap!5073 (_ BitVec 64)) Bool)

(assert (=> b!4776935 (contains!17399 lt!1940251 lt!1940242)))

(declare-fun lt!1940247 () Unit!138930)

(declare-fun lemmaInGenMapThenLongMapContainsHash!990 (ListLongMap!5073 K!15454 Hashable!6786) Unit!138930)

(assert (=> b!4776935 (= lt!1940247 (lemmaInGenMapThenLongMapContainsHash!990 lt!1940251 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6131 0))(
  ( (ListMap!6132 (toList!6656 List!54021)) )
))
(declare-fun contains!17400 (ListMap!6131 K!15454) Bool)

(declare-fun extractMap!2317 (List!54022) ListMap!6131)

(assert (=> b!4776935 (contains!17400 (extractMap!2317 (toList!6655 lt!1940251)) key!6641)))

(declare-fun lt!1940248 () Unit!138930)

(declare-fun lemmaListContainsThenExtractedMapContains!638 (ListLongMap!5073 K!15454 Hashable!6786) Unit!138930)

(assert (=> b!4776935 (= lt!1940248 (lemmaListContainsThenExtractedMapContains!638 lt!1940251 key!6641 hashF!1687))))

(declare-fun b!4776936 () Bool)

(assert (=> b!4776936 (= e!2982129 e!2982131)))

(declare-fun res!2027473 () Bool)

(assert (=> b!4776936 (=> res!2027473 e!2982131)))

(assert (=> b!4776936 (= res!2027473 (not (forall!12058 (toList!6655 lt!1940251) lambda!227051)))))

(declare-fun tail!9184 (ListLongMap!5073) ListLongMap!5073)

(assert (=> b!4776936 (= lt!1940251 (tail!9184 lm!2709))))

(declare-fun containsKeyBiggerList!442 (List!54022 K!15454) Bool)

(declare-fun tail!9185 (List!54022) List!54022)

(assert (=> b!4776936 (containsKeyBiggerList!442 (tail!9185 (toList!6655 lm!2709)) key!6641)))

(declare-fun lt!1940253 () Unit!138930)

(declare-fun lemmaInBiggerListButNotHeadThenTail!12 (ListLongMap!5073 K!15454 Hashable!6786) Unit!138930)

(assert (=> b!4776936 (= lt!1940253 (lemmaInBiggerListButNotHeadThenTail!12 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4776937 () Bool)

(declare-fun tp!1357174 () Bool)

(assert (=> b!4776937 (= e!2982133 tp!1357174)))

(declare-fun b!4776938 () Bool)

(declare-fun res!2027471 () Bool)

(assert (=> b!4776938 (=> (not res!2027471) (not e!2982130))))

(assert (=> b!4776938 (= res!2027471 (containsKeyBiggerList!442 (toList!6655 lm!2709) key!6641))))

(declare-fun b!4776939 () Bool)

(declare-fun res!2027475 () Bool)

(assert (=> b!4776939 (=> res!2027475 e!2982131)))

(assert (=> b!4776939 (= res!2027475 (not (containsKeyBiggerList!442 (toList!6655 lt!1940251) key!6641)))))

(declare-fun b!4776940 () Bool)

(declare-fun res!2027469 () Bool)

(assert (=> b!4776940 (=> res!2027469 e!2982132)))

(get-info :version)

(assert (=> b!4776940 (= res!2027469 (or (and ((_ is Cons!53898) (toList!6655 lm!2709)) (= (_1!31451 (h!60312 (toList!6655 lm!2709))) lt!1940242)) (not ((_ is Cons!53898) (toList!6655 lm!2709)))))))

(declare-fun b!4776941 () Bool)

(declare-fun res!2027477 () Bool)

(assert (=> b!4776941 (=> res!2027477 e!2982131)))

(assert (=> b!4776941 (= res!2027477 (not (allKeysSameHashInMap!2191 lt!1940251 hashF!1687)))))

(declare-fun b!4776942 () Bool)

(assert (=> b!4776942 (= e!2982130 (not e!2982132))))

(declare-fun res!2027476 () Bool)

(assert (=> b!4776942 (=> res!2027476 e!2982132)))

(declare-fun lt!1940240 () Option!12879)

(assert (=> b!4776942 (= res!2027476 (not (= (_2!31450 (get!18298 lt!1940240)) v!11584)))))

(assert (=> b!4776942 (isDefined!10023 lt!1940240)))

(declare-fun lt!1940243 () List!54021)

(assert (=> b!4776942 (= lt!1940240 (getPair!774 lt!1940243 key!6641))))

(declare-fun lt!1940241 () tuple2!56314)

(declare-fun lt!1940246 () Unit!138930)

(assert (=> b!4776942 (= lt!1940246 (forallContained!4015 (toList!6655 lm!2709) lambda!227051 lt!1940241))))

(declare-fun lt!1940231 () Unit!138930)

(assert (=> b!4776942 (= lt!1940231 (lemmaInGenMapThenGetPairDefined!548 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1940252 () Unit!138930)

(assert (=> b!4776942 (= lt!1940252 (forallContained!4015 (toList!6655 lm!2709) lambda!227051 lt!1940241))))

(assert (=> b!4776942 (contains!17398 (toList!6655 lm!2709) lt!1940241)))

(assert (=> b!4776942 (= lt!1940241 (tuple2!56315 lt!1940242 lt!1940243))))

(declare-fun lt!1940237 () Unit!138930)

(assert (=> b!4776942 (= lt!1940237 (lemmaGetValueImpliesTupleContained!577 lm!2709 lt!1940242 lt!1940243))))

(assert (=> b!4776942 (= lt!1940243 (apply!12849 lm!2709 lt!1940242))))

(assert (=> b!4776942 (contains!17399 lm!2709 lt!1940242)))

(declare-fun hash!4764 (Hashable!6786 K!15454) (_ BitVec 64))

(assert (=> b!4776942 (= lt!1940242 (hash!4764 hashF!1687 key!6641))))

(declare-fun lt!1940245 () Unit!138930)

(assert (=> b!4776942 (= lt!1940245 (lemmaInGenMapThenLongMapContainsHash!990 lm!2709 key!6641 hashF!1687))))

(assert (=> b!4776942 (contains!17400 (extractMap!2317 (toList!6655 lm!2709)) key!6641)))

(declare-fun lt!1940236 () Unit!138930)

(assert (=> b!4776942 (= lt!1940236 (lemmaListContainsThenExtractedMapContains!638 lm!2709 key!6641 hashF!1687))))

(assert (= (and start!489762 res!2027470) b!4776934))

(assert (= (and b!4776934 res!2027472) b!4776938))

(assert (= (and b!4776938 res!2027471) b!4776942))

(assert (= (and b!4776942 (not res!2027476)) b!4776940))

(assert (= (and b!4776940 (not res!2027469)) b!4776932))

(assert (= (and b!4776932 (not res!2027478)) b!4776936))

(assert (= (and b!4776936 (not res!2027473)) b!4776941))

(assert (= (and b!4776941 (not res!2027477)) b!4776939))

(assert (= (and b!4776939 (not res!2027475)) b!4776935))

(assert (= (and b!4776935 (not res!2027474)) b!4776933))

(assert (= start!489762 b!4776937))

(declare-fun m!5752340 () Bool)

(assert (=> b!4776932 m!5752340))

(declare-fun m!5752342 () Bool)

(assert (=> b!4776932 m!5752342))

(assert (=> b!4776932 m!5752342))

(declare-fun m!5752344 () Bool)

(assert (=> b!4776932 m!5752344))

(declare-fun m!5752346 () Bool)

(assert (=> b!4776932 m!5752346))

(declare-fun m!5752348 () Bool)

(assert (=> b!4776935 m!5752348))

(declare-fun m!5752350 () Bool)

(assert (=> b!4776935 m!5752350))

(declare-fun m!5752352 () Bool)

(assert (=> b!4776935 m!5752352))

(declare-fun m!5752354 () Bool)

(assert (=> b!4776935 m!5752354))

(declare-fun m!5752356 () Bool)

(assert (=> b!4776935 m!5752356))

(declare-fun m!5752358 () Bool)

(assert (=> b!4776935 m!5752358))

(declare-fun m!5752360 () Bool)

(assert (=> b!4776935 m!5752360))

(declare-fun m!5752362 () Bool)

(assert (=> b!4776935 m!5752362))

(assert (=> b!4776935 m!5752358))

(declare-fun m!5752364 () Bool)

(assert (=> b!4776935 m!5752364))

(declare-fun m!5752366 () Bool)

(assert (=> b!4776935 m!5752366))

(assert (=> b!4776935 m!5752366))

(declare-fun m!5752368 () Bool)

(assert (=> b!4776935 m!5752368))

(declare-fun m!5752370 () Bool)

(assert (=> b!4776935 m!5752370))

(declare-fun m!5752372 () Bool)

(assert (=> b!4776935 m!5752372))

(declare-fun m!5752374 () Bool)

(assert (=> b!4776939 m!5752374))

(declare-fun m!5752376 () Bool)

(assert (=> b!4776933 m!5752376))

(declare-fun m!5752378 () Bool)

(assert (=> b!4776933 m!5752378))

(declare-fun m!5752380 () Bool)

(assert (=> b!4776933 m!5752380))

(declare-fun m!5752382 () Bool)

(assert (=> b!4776942 m!5752382))

(declare-fun m!5752384 () Bool)

(assert (=> b!4776942 m!5752384))

(declare-fun m!5752386 () Bool)

(assert (=> b!4776942 m!5752386))

(declare-fun m!5752388 () Bool)

(assert (=> b!4776942 m!5752388))

(declare-fun m!5752390 () Bool)

(assert (=> b!4776942 m!5752390))

(declare-fun m!5752392 () Bool)

(assert (=> b!4776942 m!5752392))

(declare-fun m!5752394 () Bool)

(assert (=> b!4776942 m!5752394))

(declare-fun m!5752396 () Bool)

(assert (=> b!4776942 m!5752396))

(declare-fun m!5752398 () Bool)

(assert (=> b!4776942 m!5752398))

(declare-fun m!5752400 () Bool)

(assert (=> b!4776942 m!5752400))

(assert (=> b!4776942 m!5752390))

(declare-fun m!5752402 () Bool)

(assert (=> b!4776942 m!5752402))

(declare-fun m!5752404 () Bool)

(assert (=> b!4776942 m!5752404))

(declare-fun m!5752406 () Bool)

(assert (=> b!4776942 m!5752406))

(assert (=> b!4776942 m!5752382))

(declare-fun m!5752408 () Bool)

(assert (=> b!4776942 m!5752408))

(declare-fun m!5752410 () Bool)

(assert (=> b!4776934 m!5752410))

(declare-fun m!5752412 () Bool)

(assert (=> b!4776936 m!5752412))

(declare-fun m!5752414 () Bool)

(assert (=> b!4776936 m!5752414))

(assert (=> b!4776936 m!5752414))

(declare-fun m!5752416 () Bool)

(assert (=> b!4776936 m!5752416))

(declare-fun m!5752418 () Bool)

(assert (=> b!4776936 m!5752418))

(declare-fun m!5752420 () Bool)

(assert (=> b!4776936 m!5752420))

(declare-fun m!5752422 () Bool)

(assert (=> b!4776938 m!5752422))

(declare-fun m!5752424 () Bool)

(assert (=> b!4776941 m!5752424))

(assert (=> start!489762 m!5752376))

(declare-fun m!5752426 () Bool)

(assert (=> start!489762 m!5752426))

(check-sat tp_is_empty!33073 (not b!4776942) (not b!4776937) (not b!4776936) tp_is_empty!33075 (not b!4776934) (not b!4776935) (not b!4776932) (not b!4776939) (not b!4776933) (not start!489762) (not b!4776938) (not b!4776941))
(check-sat)
