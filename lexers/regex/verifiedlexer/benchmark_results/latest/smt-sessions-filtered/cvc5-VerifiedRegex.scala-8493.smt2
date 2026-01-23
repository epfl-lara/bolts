; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!441750 () Bool)

(assert start!441750)

(declare-fun b!4485707 () Bool)

(declare-fun res!1863274 () Bool)

(declare-fun e!2793764 () Bool)

(assert (=> b!4485707 (=> (not res!1863274) (not e!2793764))))

(declare-datatypes ((Hashable!5486 0))(
  ( (HashableExt!5485 (__x!31189 Int)) )
))
(declare-fun hashF!1107 () Hashable!5486)

(declare-fun hash!344 () (_ BitVec 64))

(declare-datatypes ((K!11868 0))(
  ( (K!11869 (val!17765 Int)) )
))
(declare-datatypes ((V!12114 0))(
  ( (V!12115 (val!17766 Int)) )
))
(declare-datatypes ((tuple2!50798 0))(
  ( (tuple2!50799 (_1!28693 K!11868) (_2!28693 V!12114)) )
))
(declare-datatypes ((List!50576 0))(
  ( (Nil!50452) (Cons!50452 (h!56249 tuple2!50798) (t!357530 List!50576)) )
))
(declare-fun newBucket!178 () List!50576)

(declare-fun allKeysSameHash!945 (List!50576 (_ BitVec 64) Hashable!5486) Bool)

(assert (=> b!4485707 (= res!1863274 (allKeysSameHash!945 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4485708 () Bool)

(declare-fun e!2793766 () Bool)

(declare-datatypes ((tuple2!50800 0))(
  ( (tuple2!50801 (_1!28694 (_ BitVec 64)) (_2!28694 List!50576)) )
))
(declare-datatypes ((List!50577 0))(
  ( (Nil!50453) (Cons!50453 (h!56250 tuple2!50800) (t!357531 List!50577)) )
))
(declare-datatypes ((ListLongMap!2821 0))(
  ( (ListLongMap!2822 (toList!4189 List!50577)) )
))
(declare-fun lm!1477 () ListLongMap!2821)

(declare-fun lambda!166372 () Int)

(declare-fun forall!10105 (List!50577 Int) Bool)

(assert (=> b!4485708 (= e!2793766 (forall!10105 (t!357531 (toList!4189 lm!1477)) lambda!166372))))

(declare-fun lt!1671113 () ListLongMap!2821)

(declare-fun key!3287 () K!11868)

(declare-datatypes ((ListMap!3451 0))(
  ( (ListMap!3452 (toList!4190 List!50576)) )
))
(declare-fun contains!13076 (ListMap!3451 K!11868) Bool)

(declare-fun extractMap!1147 (List!50577) ListMap!3451)

(assert (=> b!4485708 (contains!13076 (extractMap!1147 (toList!4189 lt!1671113)) key!3287)))

(declare-datatypes ((Unit!90110 0))(
  ( (Unit!90111) )
))
(declare-fun lt!1671110 () Unit!90110)

(declare-fun lemmaListContainsThenExtractedMapContains!61 (ListLongMap!2821 K!11868 Hashable!5486) Unit!90110)

(assert (=> b!4485708 (= lt!1671110 (lemmaListContainsThenExtractedMapContains!61 lt!1671113 key!3287 hashF!1107))))

(declare-fun e!2793762 () Bool)

(declare-fun tp!1337006 () Bool)

(declare-fun tp_is_empty!27643 () Bool)

(declare-fun b!4485709 () Bool)

(declare-fun tp_is_empty!27641 () Bool)

(assert (=> b!4485709 (= e!2793762 (and tp_is_empty!27641 tp_is_empty!27643 tp!1337006))))

(declare-fun b!4485710 () Bool)

(declare-fun res!1863283 () Bool)

(declare-fun e!2793763 () Bool)

(assert (=> b!4485710 (=> res!1863283 e!2793763)))

(declare-fun lt!1671116 () List!50576)

(declare-fun apply!11828 (ListLongMap!2821 (_ BitVec 64)) List!50576)

(assert (=> b!4485710 (= res!1863283 (not (= (apply!11828 lt!1671113 hash!344) lt!1671116)))))

(declare-fun b!4485711 () Bool)

(declare-fun e!2793760 () Bool)

(assert (=> b!4485711 (= e!2793760 e!2793766)))

(declare-fun res!1863279 () Bool)

(assert (=> b!4485711 (=> res!1863279 e!2793766)))

(declare-fun containsKeyBiggerList!71 (List!50577 K!11868) Bool)

(assert (=> b!4485711 (= res!1863279 (not (containsKeyBiggerList!71 (t!357531 (toList!4189 lm!1477)) key!3287)))))

(assert (=> b!4485711 (containsKeyBiggerList!71 (toList!4189 lt!1671113) key!3287)))

(declare-fun lt!1671114 () Unit!90110)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!7 (ListLongMap!2821 K!11868 Hashable!5486) Unit!90110)

(assert (=> b!4485711 (= lt!1671114 (lemmaInLongMapThenContainsKeyBiggerList!7 lt!1671113 key!3287 hashF!1107))))

(declare-fun b!4485712 () Bool)

(declare-fun res!1863273 () Bool)

(declare-fun e!2793761 () Bool)

(assert (=> b!4485712 (=> res!1863273 e!2793761)))

(declare-fun noDuplicateKeys!1091 (List!50576) Bool)

(assert (=> b!4485712 (= res!1863273 (not (noDuplicateKeys!1091 newBucket!178)))))

(declare-fun b!4485713 () Bool)

(declare-fun res!1863278 () Bool)

(assert (=> b!4485713 (=> res!1863278 e!2793763)))

(declare-fun lt!1671109 () tuple2!50800)

(declare-fun contains!13077 (List!50577 tuple2!50800) Bool)

(assert (=> b!4485713 (= res!1863278 (not (contains!13077 (t!357531 (toList!4189 lm!1477)) lt!1671109)))))

(declare-fun b!4485714 () Bool)

(declare-fun e!2793768 () Bool)

(assert (=> b!4485714 (= e!2793768 e!2793764)))

(declare-fun res!1863276 () Bool)

(assert (=> b!4485714 (=> (not res!1863276) (not e!2793764))))

(declare-fun lt!1671118 () (_ BitVec 64))

(assert (=> b!4485714 (= res!1863276 (= lt!1671118 hash!344))))

(declare-fun hash!2598 (Hashable!5486 K!11868) (_ BitVec 64))

(assert (=> b!4485714 (= lt!1671118 (hash!2598 hashF!1107 key!3287))))

(declare-fun b!4485715 () Bool)

(declare-fun e!2793767 () Bool)

(declare-fun tp!1337007 () Bool)

(assert (=> b!4485715 (= e!2793767 tp!1337007)))

(declare-fun res!1863280 () Bool)

(assert (=> start!441750 (=> (not res!1863280) (not e!2793768))))

(assert (=> start!441750 (= res!1863280 (forall!10105 (toList!4189 lm!1477) lambda!166372))))

(assert (=> start!441750 e!2793768))

(assert (=> start!441750 true))

(declare-fun inv!66053 (ListLongMap!2821) Bool)

(assert (=> start!441750 (and (inv!66053 lm!1477) e!2793767)))

(assert (=> start!441750 tp_is_empty!27641))

(assert (=> start!441750 e!2793762))

(declare-fun b!4485716 () Bool)

(declare-fun e!2793765 () Unit!90110)

(declare-fun Unit!90112 () Unit!90110)

(assert (=> b!4485716 (= e!2793765 Unit!90112)))

(declare-fun b!4485717 () Bool)

(declare-fun res!1863284 () Bool)

(assert (=> b!4485717 (=> (not res!1863284) (not e!2793768))))

(declare-fun allKeysSameHashInMap!1198 (ListLongMap!2821 Hashable!5486) Bool)

(assert (=> b!4485717 (= res!1863284 (allKeysSameHashInMap!1198 lm!1477 hashF!1107))))

(declare-fun b!4485718 () Bool)

(declare-fun res!1863285 () Bool)

(assert (=> b!4485718 (=> (not res!1863285) (not e!2793768))))

(assert (=> b!4485718 (= res!1863285 (contains!13076 (extractMap!1147 (toList!4189 lm!1477)) key!3287))))

(declare-fun b!4485719 () Bool)

(declare-fun Unit!90113 () Unit!90110)

(assert (=> b!4485719 (= e!2793765 Unit!90113)))

(declare-fun lt!1671119 () Unit!90110)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!79 (ListLongMap!2821 K!11868 Hashable!5486) Unit!90110)

(assert (=> b!4485719 (= lt!1671119 (lemmaNotInItsHashBucketThenNotInMap!79 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4485719 false))

(declare-fun b!4485720 () Bool)

(declare-fun res!1863275 () Bool)

(assert (=> b!4485720 (=> res!1863275 e!2793761)))

(assert (=> b!4485720 (= res!1863275 (or (is-Nil!50453 (toList!4189 lm!1477)) (= (_1!28694 (h!56250 (toList!4189 lm!1477))) hash!344)))))

(declare-fun b!4485721 () Bool)

(assert (=> b!4485721 (= e!2793763 e!2793760)))

(declare-fun res!1863282 () Bool)

(assert (=> b!4485721 (=> res!1863282 e!2793760)))

(declare-fun lt!1671111 () Bool)

(assert (=> b!4485721 (= res!1863282 lt!1671111)))

(declare-fun lt!1671117 () Unit!90110)

(assert (=> b!4485721 (= lt!1671117 e!2793765)))

(declare-fun c!763996 () Bool)

(assert (=> b!4485721 (= c!763996 lt!1671111)))

(declare-fun containsKey!1599 (List!50576 K!11868) Bool)

(assert (=> b!4485721 (= lt!1671111 (not (containsKey!1599 lt!1671116 key!3287)))))

(declare-fun b!4485722 () Bool)

(assert (=> b!4485722 (= e!2793761 e!2793763)))

(declare-fun res!1863281 () Bool)

(assert (=> b!4485722 (=> res!1863281 e!2793763)))

(declare-fun contains!13078 (ListLongMap!2821 (_ BitVec 64)) Bool)

(assert (=> b!4485722 (= res!1863281 (not (contains!13078 lt!1671113 hash!344)))))

(declare-fun tail!7610 (ListLongMap!2821) ListLongMap!2821)

(assert (=> b!4485722 (= lt!1671113 (tail!7610 lm!1477))))

(declare-fun b!4485723 () Bool)

(assert (=> b!4485723 (= e!2793764 (not e!2793761))))

(declare-fun res!1863277 () Bool)

(assert (=> b!4485723 (=> res!1863277 e!2793761)))

(declare-fun removePairForKey!718 (List!50576 K!11868) List!50576)

(assert (=> b!4485723 (= res!1863277 (not (= newBucket!178 (removePairForKey!718 lt!1671116 key!3287))))))

(declare-fun lt!1671120 () Unit!90110)

(declare-fun forallContained!2366 (List!50577 Int tuple2!50800) Unit!90110)

(assert (=> b!4485723 (= lt!1671120 (forallContained!2366 (toList!4189 lm!1477) lambda!166372 lt!1671109))))

(assert (=> b!4485723 (contains!13077 (toList!4189 lm!1477) lt!1671109)))

(assert (=> b!4485723 (= lt!1671109 (tuple2!50801 hash!344 lt!1671116))))

(declare-fun lt!1671115 () Unit!90110)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!603 (List!50577 (_ BitVec 64) List!50576) Unit!90110)

(assert (=> b!4485723 (= lt!1671115 (lemmaGetValueByKeyImpliesContainsTuple!603 (toList!4189 lm!1477) hash!344 lt!1671116))))

(assert (=> b!4485723 (= lt!1671116 (apply!11828 lm!1477 hash!344))))

(assert (=> b!4485723 (contains!13078 lm!1477 lt!1671118)))

(declare-fun lt!1671112 () Unit!90110)

(declare-fun lemmaInGenMapThenLongMapContainsHash!165 (ListLongMap!2821 K!11868 Hashable!5486) Unit!90110)

(assert (=> b!4485723 (= lt!1671112 (lemmaInGenMapThenLongMapContainsHash!165 lm!1477 key!3287 hashF!1107))))

(assert (= (and start!441750 res!1863280) b!4485717))

(assert (= (and b!4485717 res!1863284) b!4485718))

(assert (= (and b!4485718 res!1863285) b!4485714))

(assert (= (and b!4485714 res!1863276) b!4485707))

(assert (= (and b!4485707 res!1863274) b!4485723))

(assert (= (and b!4485723 (not res!1863277)) b!4485712))

(assert (= (and b!4485712 (not res!1863273)) b!4485720))

(assert (= (and b!4485720 (not res!1863275)) b!4485722))

(assert (= (and b!4485722 (not res!1863281)) b!4485710))

(assert (= (and b!4485710 (not res!1863283)) b!4485713))

(assert (= (and b!4485713 (not res!1863278)) b!4485721))

(assert (= (and b!4485721 c!763996) b!4485719))

(assert (= (and b!4485721 (not c!763996)) b!4485716))

(assert (= (and b!4485721 (not res!1863282)) b!4485711))

(assert (= (and b!4485711 (not res!1863279)) b!4485708))

(assert (= start!441750 b!4485715))

(assert (= (and start!441750 (is-Cons!50452 newBucket!178)) b!4485709))

(declare-fun m!5206373 () Bool)

(assert (=> b!4485712 m!5206373))

(declare-fun m!5206375 () Bool)

(assert (=> b!4485721 m!5206375))

(declare-fun m!5206377 () Bool)

(assert (=> b!4485722 m!5206377))

(declare-fun m!5206379 () Bool)

(assert (=> b!4485722 m!5206379))

(declare-fun m!5206381 () Bool)

(assert (=> b!4485711 m!5206381))

(declare-fun m!5206383 () Bool)

(assert (=> b!4485711 m!5206383))

(declare-fun m!5206385 () Bool)

(assert (=> b!4485711 m!5206385))

(declare-fun m!5206387 () Bool)

(assert (=> b!4485714 m!5206387))

(declare-fun m!5206389 () Bool)

(assert (=> b!4485717 m!5206389))

(declare-fun m!5206391 () Bool)

(assert (=> b!4485708 m!5206391))

(declare-fun m!5206393 () Bool)

(assert (=> b!4485708 m!5206393))

(assert (=> b!4485708 m!5206393))

(declare-fun m!5206395 () Bool)

(assert (=> b!4485708 m!5206395))

(declare-fun m!5206397 () Bool)

(assert (=> b!4485708 m!5206397))

(declare-fun m!5206399 () Bool)

(assert (=> b!4485718 m!5206399))

(assert (=> b!4485718 m!5206399))

(declare-fun m!5206401 () Bool)

(assert (=> b!4485718 m!5206401))

(declare-fun m!5206403 () Bool)

(assert (=> start!441750 m!5206403))

(declare-fun m!5206405 () Bool)

(assert (=> start!441750 m!5206405))

(declare-fun m!5206407 () Bool)

(assert (=> b!4485707 m!5206407))

(declare-fun m!5206409 () Bool)

(assert (=> b!4485713 m!5206409))

(declare-fun m!5206411 () Bool)

(assert (=> b!4485719 m!5206411))

(declare-fun m!5206413 () Bool)

(assert (=> b!4485710 m!5206413))

(declare-fun m!5206415 () Bool)

(assert (=> b!4485723 m!5206415))

(declare-fun m!5206417 () Bool)

(assert (=> b!4485723 m!5206417))

(declare-fun m!5206419 () Bool)

(assert (=> b!4485723 m!5206419))

(declare-fun m!5206421 () Bool)

(assert (=> b!4485723 m!5206421))

(declare-fun m!5206423 () Bool)

(assert (=> b!4485723 m!5206423))

(declare-fun m!5206425 () Bool)

(assert (=> b!4485723 m!5206425))

(declare-fun m!5206427 () Bool)

(assert (=> b!4485723 m!5206427))

(push 1)

(assert (not b!4485712))

(assert (not b!4485721))

(assert (not b!4485707))

(assert (not b!4485715))

(assert (not b!4485723))

(assert (not b!4485708))

(assert tp_is_empty!27643)

(assert (not b!4485722))

(assert tp_is_empty!27641)

(assert (not b!4485718))

(assert (not b!4485711))

(assert (not b!4485717))

(assert (not start!441750))

(assert (not b!4485709))

(assert (not b!4485714))

(assert (not b!4485719))

(assert (not b!4485713))

(assert (not b!4485710))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4485793 () Bool)

(declare-fun e!2793811 () Bool)

(declare-fun e!2793810 () Bool)

(assert (=> b!4485793 (= e!2793811 e!2793810)))

(declare-fun res!1863331 () Bool)

(assert (=> b!4485793 (=> (not res!1863331) (not e!2793810))))

(declare-datatypes ((Option!10998 0))(
  ( (None!10997) (Some!10997 (v!44412 V!12114)) )
))
(declare-fun isDefined!8285 (Option!10998) Bool)

(declare-fun getValueByKey!978 (List!50576 K!11868) Option!10998)

(assert (=> b!4485793 (= res!1863331 (isDefined!8285 (getValueByKey!978 (toList!4190 (extractMap!1147 (toList!4189 lm!1477))) key!3287)))))

(declare-fun b!4485794 () Bool)

(declare-fun e!2793812 () Unit!90110)

(declare-fun Unit!90118 () Unit!90110)

(assert (=> b!4485794 (= e!2793812 Unit!90118)))

(declare-fun b!4485795 () Bool)

(declare-datatypes ((List!50580 0))(
  ( (Nil!50456) (Cons!50456 (h!56255 K!11868) (t!357534 List!50580)) )
))
(declare-fun e!2793808 () List!50580)

(declare-fun getKeysList!408 (List!50576) List!50580)

(assert (=> b!4485795 (= e!2793808 (getKeysList!408 (toList!4190 (extractMap!1147 (toList!4189 lm!1477)))))))

(declare-fun b!4485796 () Bool)

(declare-fun keys!17465 (ListMap!3451) List!50580)

(assert (=> b!4485796 (= e!2793808 (keys!17465 (extractMap!1147 (toList!4189 lm!1477))))))

(declare-fun b!4485797 () Bool)

(declare-fun e!2793809 () Unit!90110)

(declare-fun lt!1671176 () Unit!90110)

(assert (=> b!4485797 (= e!2793809 lt!1671176)))

(declare-fun lt!1671173 () Unit!90110)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!882 (List!50576 K!11868) Unit!90110)

(assert (=> b!4485797 (= lt!1671173 (lemmaContainsKeyImpliesGetValueByKeyDefined!882 (toList!4190 (extractMap!1147 (toList!4189 lm!1477))) key!3287))))

(assert (=> b!4485797 (isDefined!8285 (getValueByKey!978 (toList!4190 (extractMap!1147 (toList!4189 lm!1477))) key!3287))))

(declare-fun lt!1671174 () Unit!90110)

(assert (=> b!4485797 (= lt!1671174 lt!1671173)))

(declare-fun lemmaInListThenGetKeysListContains!404 (List!50576 K!11868) Unit!90110)

(assert (=> b!4485797 (= lt!1671176 (lemmaInListThenGetKeysListContains!404 (toList!4190 (extractMap!1147 (toList!4189 lm!1477))) key!3287))))

(declare-fun call!312206 () Bool)

(assert (=> b!4485797 call!312206))

(declare-fun b!4485798 () Bool)

(assert (=> b!4485798 (= e!2793809 e!2793812)))

(declare-fun c!764006 () Bool)

(assert (=> b!4485798 (= c!764006 call!312206)))

(declare-fun b!4485799 () Bool)

(declare-fun contains!13082 (List!50580 K!11868) Bool)

(assert (=> b!4485799 (= e!2793810 (contains!13082 (keys!17465 (extractMap!1147 (toList!4189 lm!1477))) key!3287))))

(declare-fun b!4485800 () Bool)

(assert (=> b!4485800 false))

(declare-fun lt!1671180 () Unit!90110)

(declare-fun lt!1671179 () Unit!90110)

(assert (=> b!4485800 (= lt!1671180 lt!1671179)))

(declare-fun containsKey!1601 (List!50576 K!11868) Bool)

(assert (=> b!4485800 (containsKey!1601 (toList!4190 (extractMap!1147 (toList!4189 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!407 (List!50576 K!11868) Unit!90110)

(assert (=> b!4485800 (= lt!1671179 (lemmaInGetKeysListThenContainsKey!407 (toList!4190 (extractMap!1147 (toList!4189 lm!1477))) key!3287))))

(declare-fun Unit!90119 () Unit!90110)

(assert (=> b!4485800 (= e!2793812 Unit!90119)))

(declare-fun b!4485801 () Bool)

(declare-fun e!2793813 () Bool)

(assert (=> b!4485801 (= e!2793813 (not (contains!13082 (keys!17465 (extractMap!1147 (toList!4189 lm!1477))) key!3287)))))

(declare-fun bm!312201 () Bool)

(assert (=> bm!312201 (= call!312206 (contains!13082 e!2793808 key!3287))))

(declare-fun c!764007 () Bool)

(declare-fun c!764008 () Bool)

(assert (=> bm!312201 (= c!764007 c!764008)))

(declare-fun d!1373178 () Bool)

(assert (=> d!1373178 e!2793811))

(declare-fun res!1863332 () Bool)

(assert (=> d!1373178 (=> res!1863332 e!2793811)))

(assert (=> d!1373178 (= res!1863332 e!2793813)))

(declare-fun res!1863333 () Bool)

(assert (=> d!1373178 (=> (not res!1863333) (not e!2793813))))

(declare-fun lt!1671178 () Bool)

(assert (=> d!1373178 (= res!1863333 (not lt!1671178))))

(declare-fun lt!1671175 () Bool)

(assert (=> d!1373178 (= lt!1671178 lt!1671175)))

(declare-fun lt!1671177 () Unit!90110)

(assert (=> d!1373178 (= lt!1671177 e!2793809)))

(assert (=> d!1373178 (= c!764008 lt!1671175)))

(assert (=> d!1373178 (= lt!1671175 (containsKey!1601 (toList!4190 (extractMap!1147 (toList!4189 lm!1477))) key!3287))))

(assert (=> d!1373178 (= (contains!13076 (extractMap!1147 (toList!4189 lm!1477)) key!3287) lt!1671178)))

(assert (= (and d!1373178 c!764008) b!4485797))

(assert (= (and d!1373178 (not c!764008)) b!4485798))

(assert (= (and b!4485798 c!764006) b!4485800))

(assert (= (and b!4485798 (not c!764006)) b!4485794))

(assert (= (or b!4485797 b!4485798) bm!312201))

(assert (= (and bm!312201 c!764007) b!4485795))

(assert (= (and bm!312201 (not c!764007)) b!4485796))

(assert (= (and d!1373178 res!1863333) b!4485801))

(assert (= (and d!1373178 (not res!1863332)) b!4485793))

(assert (= (and b!4485793 res!1863331) b!4485799))

(declare-fun m!5206487 () Bool)

(assert (=> b!4485793 m!5206487))

(assert (=> b!4485793 m!5206487))

(declare-fun m!5206489 () Bool)

(assert (=> b!4485793 m!5206489))

(declare-fun m!5206491 () Bool)

(assert (=> d!1373178 m!5206491))

(declare-fun m!5206493 () Bool)

(assert (=> b!4485797 m!5206493))

(assert (=> b!4485797 m!5206487))

(assert (=> b!4485797 m!5206487))

(assert (=> b!4485797 m!5206489))

(declare-fun m!5206495 () Bool)

(assert (=> b!4485797 m!5206495))

(declare-fun m!5206497 () Bool)

(assert (=> b!4485795 m!5206497))

(assert (=> b!4485796 m!5206399))

(declare-fun m!5206499 () Bool)

(assert (=> b!4485796 m!5206499))

(assert (=> b!4485801 m!5206399))

(assert (=> b!4485801 m!5206499))

(assert (=> b!4485801 m!5206499))

(declare-fun m!5206501 () Bool)

(assert (=> b!4485801 m!5206501))

(assert (=> b!4485800 m!5206491))

(declare-fun m!5206503 () Bool)

(assert (=> b!4485800 m!5206503))

(assert (=> b!4485799 m!5206399))

(assert (=> b!4485799 m!5206499))

(assert (=> b!4485799 m!5206499))

(assert (=> b!4485799 m!5206501))

(declare-fun m!5206505 () Bool)

(assert (=> bm!312201 m!5206505))

(assert (=> b!4485718 d!1373178))

(declare-fun bs!825913 () Bool)

(declare-fun d!1373184 () Bool)

(assert (= bs!825913 (and d!1373184 start!441750)))

(declare-fun lambda!166385 () Int)

(assert (=> bs!825913 (= lambda!166385 lambda!166372)))

(declare-fun lt!1671183 () ListMap!3451)

(declare-fun invariantList!960 (List!50576) Bool)

(assert (=> d!1373184 (invariantList!960 (toList!4190 lt!1671183))))

(declare-fun e!2793822 () ListMap!3451)

(assert (=> d!1373184 (= lt!1671183 e!2793822)))

(declare-fun c!764011 () Bool)

(assert (=> d!1373184 (= c!764011 (is-Cons!50453 (toList!4189 lm!1477)))))

(assert (=> d!1373184 (forall!10105 (toList!4189 lm!1477) lambda!166385)))

(assert (=> d!1373184 (= (extractMap!1147 (toList!4189 lm!1477)) lt!1671183)))

(declare-fun b!4485816 () Bool)

(declare-fun addToMapMapFromBucket!628 (List!50576 ListMap!3451) ListMap!3451)

(assert (=> b!4485816 (= e!2793822 (addToMapMapFromBucket!628 (_2!28694 (h!56250 (toList!4189 lm!1477))) (extractMap!1147 (t!357531 (toList!4189 lm!1477)))))))

(declare-fun b!4485817 () Bool)

(assert (=> b!4485817 (= e!2793822 (ListMap!3452 Nil!50452))))

(assert (= (and d!1373184 c!764011) b!4485816))

(assert (= (and d!1373184 (not c!764011)) b!4485817))

(declare-fun m!5206513 () Bool)

(assert (=> d!1373184 m!5206513))

(declare-fun m!5206515 () Bool)

(assert (=> d!1373184 m!5206515))

(declare-fun m!5206517 () Bool)

(assert (=> b!4485816 m!5206517))

(assert (=> b!4485816 m!5206517))

(declare-fun m!5206519 () Bool)

(assert (=> b!4485816 m!5206519))

(assert (=> b!4485718 d!1373184))

(declare-fun d!1373190 () Bool)

(assert (=> d!1373190 true))

(assert (=> d!1373190 true))

(declare-fun lambda!166388 () Int)

(declare-fun forall!10107 (List!50576 Int) Bool)

(assert (=> d!1373190 (= (allKeysSameHash!945 newBucket!178 hash!344 hashF!1107) (forall!10107 newBucket!178 lambda!166388))))

(declare-fun bs!825914 () Bool)

(assert (= bs!825914 d!1373190))

(declare-fun m!5206521 () Bool)

(assert (=> bs!825914 m!5206521))

(assert (=> b!4485707 d!1373190))

(declare-fun bs!825915 () Bool)

(declare-fun d!1373192 () Bool)

(assert (= bs!825915 (and d!1373192 start!441750)))

(declare-fun lambda!166391 () Int)

(assert (=> bs!825915 (not (= lambda!166391 lambda!166372))))

(declare-fun bs!825916 () Bool)

(assert (= bs!825916 (and d!1373192 d!1373184)))

(assert (=> bs!825916 (not (= lambda!166391 lambda!166385))))

(assert (=> d!1373192 true))

(assert (=> d!1373192 (= (allKeysSameHashInMap!1198 lm!1477 hashF!1107) (forall!10105 (toList!4189 lm!1477) lambda!166391))))

(declare-fun bs!825917 () Bool)

(assert (= bs!825917 d!1373192))

(declare-fun m!5206523 () Bool)

(assert (=> bs!825917 m!5206523))

(assert (=> b!4485717 d!1373192))

(declare-fun d!1373194 () Bool)

(declare-datatypes ((Option!10999 0))(
  ( (None!10998) (Some!10998 (v!44413 List!50576)) )
))
(declare-fun get!16465 (Option!10999) List!50576)

(declare-fun getValueByKey!979 (List!50577 (_ BitVec 64)) Option!10999)

(assert (=> d!1373194 (= (apply!11828 lt!1671113 hash!344) (get!16465 (getValueByKey!979 (toList!4189 lt!1671113) hash!344)))))

(declare-fun bs!825918 () Bool)

(assert (= bs!825918 d!1373194))

(declare-fun m!5206525 () Bool)

(assert (=> bs!825918 m!5206525))

(assert (=> bs!825918 m!5206525))

(declare-fun m!5206527 () Bool)

(assert (=> bs!825918 m!5206527))

(assert (=> b!4485710 d!1373194))

(declare-fun d!1373196 () Bool)

(declare-fun res!1863344 () Bool)

(declare-fun e!2793827 () Bool)

(assert (=> d!1373196 (=> res!1863344 e!2793827)))

(assert (=> d!1373196 (= res!1863344 (and (is-Cons!50452 lt!1671116) (= (_1!28693 (h!56249 lt!1671116)) key!3287)))))

(assert (=> d!1373196 (= (containsKey!1599 lt!1671116 key!3287) e!2793827)))

(declare-fun b!4485828 () Bool)

(declare-fun e!2793828 () Bool)

(assert (=> b!4485828 (= e!2793827 e!2793828)))

(declare-fun res!1863345 () Bool)

(assert (=> b!4485828 (=> (not res!1863345) (not e!2793828))))

(assert (=> b!4485828 (= res!1863345 (is-Cons!50452 lt!1671116))))

(declare-fun b!4485829 () Bool)

(assert (=> b!4485829 (= e!2793828 (containsKey!1599 (t!357530 lt!1671116) key!3287))))

(assert (= (and d!1373196 (not res!1863344)) b!4485828))

(assert (= (and b!4485828 res!1863345) b!4485829))

(declare-fun m!5206529 () Bool)

(assert (=> b!4485829 m!5206529))

(assert (=> b!4485721 d!1373196))

(declare-fun d!1373198 () Bool)

(declare-fun res!1863350 () Bool)

(declare-fun e!2793833 () Bool)

(assert (=> d!1373198 (=> res!1863350 e!2793833)))

(assert (=> d!1373198 (= res!1863350 (is-Nil!50453 (t!357531 (toList!4189 lm!1477))))))

(assert (=> d!1373198 (= (forall!10105 (t!357531 (toList!4189 lm!1477)) lambda!166372) e!2793833)))

(declare-fun b!4485834 () Bool)

(declare-fun e!2793834 () Bool)

(assert (=> b!4485834 (= e!2793833 e!2793834)))

(declare-fun res!1863351 () Bool)

(assert (=> b!4485834 (=> (not res!1863351) (not e!2793834))))

(declare-fun dynLambda!21064 (Int tuple2!50800) Bool)

(assert (=> b!4485834 (= res!1863351 (dynLambda!21064 lambda!166372 (h!56250 (t!357531 (toList!4189 lm!1477)))))))

(declare-fun b!4485835 () Bool)

(assert (=> b!4485835 (= e!2793834 (forall!10105 (t!357531 (t!357531 (toList!4189 lm!1477))) lambda!166372))))

(assert (= (and d!1373198 (not res!1863350)) b!4485834))

(assert (= (and b!4485834 res!1863351) b!4485835))

(declare-fun b_lambda!150633 () Bool)

(assert (=> (not b_lambda!150633) (not b!4485834)))

(declare-fun m!5206531 () Bool)

(assert (=> b!4485834 m!5206531))

(declare-fun m!5206533 () Bool)

(assert (=> b!4485835 m!5206533))

(assert (=> b!4485708 d!1373198))

(declare-fun b!4485836 () Bool)

(declare-fun e!2793838 () Bool)

(declare-fun e!2793837 () Bool)

(assert (=> b!4485836 (= e!2793838 e!2793837)))

(declare-fun res!1863352 () Bool)

(assert (=> b!4485836 (=> (not res!1863352) (not e!2793837))))

(assert (=> b!4485836 (= res!1863352 (isDefined!8285 (getValueByKey!978 (toList!4190 (extractMap!1147 (toList!4189 lt!1671113))) key!3287)))))

(declare-fun b!4485837 () Bool)

(declare-fun e!2793839 () Unit!90110)

(declare-fun Unit!90120 () Unit!90110)

(assert (=> b!4485837 (= e!2793839 Unit!90120)))

(declare-fun b!4485838 () Bool)

(declare-fun e!2793835 () List!50580)

(assert (=> b!4485838 (= e!2793835 (getKeysList!408 (toList!4190 (extractMap!1147 (toList!4189 lt!1671113)))))))

(declare-fun b!4485839 () Bool)

(assert (=> b!4485839 (= e!2793835 (keys!17465 (extractMap!1147 (toList!4189 lt!1671113))))))

(declare-fun b!4485840 () Bool)

(declare-fun e!2793836 () Unit!90110)

(declare-fun lt!1671187 () Unit!90110)

(assert (=> b!4485840 (= e!2793836 lt!1671187)))

(declare-fun lt!1671184 () Unit!90110)

(assert (=> b!4485840 (= lt!1671184 (lemmaContainsKeyImpliesGetValueByKeyDefined!882 (toList!4190 (extractMap!1147 (toList!4189 lt!1671113))) key!3287))))

(assert (=> b!4485840 (isDefined!8285 (getValueByKey!978 (toList!4190 (extractMap!1147 (toList!4189 lt!1671113))) key!3287))))

(declare-fun lt!1671185 () Unit!90110)

(assert (=> b!4485840 (= lt!1671185 lt!1671184)))

(assert (=> b!4485840 (= lt!1671187 (lemmaInListThenGetKeysListContains!404 (toList!4190 (extractMap!1147 (toList!4189 lt!1671113))) key!3287))))

(declare-fun call!312207 () Bool)

(assert (=> b!4485840 call!312207))

(declare-fun b!4485841 () Bool)

(assert (=> b!4485841 (= e!2793836 e!2793839)))

(declare-fun c!764012 () Bool)

(assert (=> b!4485841 (= c!764012 call!312207)))

(declare-fun b!4485842 () Bool)

(assert (=> b!4485842 (= e!2793837 (contains!13082 (keys!17465 (extractMap!1147 (toList!4189 lt!1671113))) key!3287))))

(declare-fun b!4485843 () Bool)

(assert (=> b!4485843 false))

(declare-fun lt!1671191 () Unit!90110)

(declare-fun lt!1671190 () Unit!90110)

(assert (=> b!4485843 (= lt!1671191 lt!1671190)))

(assert (=> b!4485843 (containsKey!1601 (toList!4190 (extractMap!1147 (toList!4189 lt!1671113))) key!3287)))

(assert (=> b!4485843 (= lt!1671190 (lemmaInGetKeysListThenContainsKey!407 (toList!4190 (extractMap!1147 (toList!4189 lt!1671113))) key!3287))))

(declare-fun Unit!90121 () Unit!90110)

(assert (=> b!4485843 (= e!2793839 Unit!90121)))

(declare-fun b!4485844 () Bool)

(declare-fun e!2793840 () Bool)

(assert (=> b!4485844 (= e!2793840 (not (contains!13082 (keys!17465 (extractMap!1147 (toList!4189 lt!1671113))) key!3287)))))

(declare-fun bm!312202 () Bool)

(assert (=> bm!312202 (= call!312207 (contains!13082 e!2793835 key!3287))))

(declare-fun c!764013 () Bool)

(declare-fun c!764014 () Bool)

(assert (=> bm!312202 (= c!764013 c!764014)))

(declare-fun d!1373200 () Bool)

(assert (=> d!1373200 e!2793838))

(declare-fun res!1863353 () Bool)

(assert (=> d!1373200 (=> res!1863353 e!2793838)))

(assert (=> d!1373200 (= res!1863353 e!2793840)))

(declare-fun res!1863354 () Bool)

(assert (=> d!1373200 (=> (not res!1863354) (not e!2793840))))

(declare-fun lt!1671189 () Bool)

(assert (=> d!1373200 (= res!1863354 (not lt!1671189))))

(declare-fun lt!1671186 () Bool)

(assert (=> d!1373200 (= lt!1671189 lt!1671186)))

(declare-fun lt!1671188 () Unit!90110)

(assert (=> d!1373200 (= lt!1671188 e!2793836)))

(assert (=> d!1373200 (= c!764014 lt!1671186)))

(assert (=> d!1373200 (= lt!1671186 (containsKey!1601 (toList!4190 (extractMap!1147 (toList!4189 lt!1671113))) key!3287))))

(assert (=> d!1373200 (= (contains!13076 (extractMap!1147 (toList!4189 lt!1671113)) key!3287) lt!1671189)))

(assert (= (and d!1373200 c!764014) b!4485840))

(assert (= (and d!1373200 (not c!764014)) b!4485841))

(assert (= (and b!4485841 c!764012) b!4485843))

(assert (= (and b!4485841 (not c!764012)) b!4485837))

(assert (= (or b!4485840 b!4485841) bm!312202))

(assert (= (and bm!312202 c!764013) b!4485838))

(assert (= (and bm!312202 (not c!764013)) b!4485839))

(assert (= (and d!1373200 res!1863354) b!4485844))

(assert (= (and d!1373200 (not res!1863353)) b!4485836))

(assert (= (and b!4485836 res!1863352) b!4485842))

(declare-fun m!5206535 () Bool)

(assert (=> b!4485836 m!5206535))

(assert (=> b!4485836 m!5206535))

(declare-fun m!5206537 () Bool)

(assert (=> b!4485836 m!5206537))

(declare-fun m!5206539 () Bool)

(assert (=> d!1373200 m!5206539))

(declare-fun m!5206541 () Bool)

(assert (=> b!4485840 m!5206541))

(assert (=> b!4485840 m!5206535))

(assert (=> b!4485840 m!5206535))

(assert (=> b!4485840 m!5206537))

(declare-fun m!5206543 () Bool)

(assert (=> b!4485840 m!5206543))

(declare-fun m!5206545 () Bool)

(assert (=> b!4485838 m!5206545))

(assert (=> b!4485839 m!5206393))

(declare-fun m!5206547 () Bool)

(assert (=> b!4485839 m!5206547))

(assert (=> b!4485844 m!5206393))

(assert (=> b!4485844 m!5206547))

(assert (=> b!4485844 m!5206547))

(declare-fun m!5206549 () Bool)

(assert (=> b!4485844 m!5206549))

(assert (=> b!4485843 m!5206539))

(declare-fun m!5206551 () Bool)

(assert (=> b!4485843 m!5206551))

(assert (=> b!4485842 m!5206393))

(assert (=> b!4485842 m!5206547))

(assert (=> b!4485842 m!5206547))

(assert (=> b!4485842 m!5206549))

(declare-fun m!5206553 () Bool)

(assert (=> bm!312202 m!5206553))

(assert (=> b!4485708 d!1373200))

(declare-fun bs!825919 () Bool)

(declare-fun d!1373202 () Bool)

(assert (= bs!825919 (and d!1373202 start!441750)))

(declare-fun lambda!166392 () Int)

(assert (=> bs!825919 (= lambda!166392 lambda!166372)))

(declare-fun bs!825920 () Bool)

(assert (= bs!825920 (and d!1373202 d!1373184)))

(assert (=> bs!825920 (= lambda!166392 lambda!166385)))

(declare-fun bs!825921 () Bool)

(assert (= bs!825921 (and d!1373202 d!1373192)))

(assert (=> bs!825921 (not (= lambda!166392 lambda!166391))))

(declare-fun lt!1671192 () ListMap!3451)

(assert (=> d!1373202 (invariantList!960 (toList!4190 lt!1671192))))

(declare-fun e!2793841 () ListMap!3451)

(assert (=> d!1373202 (= lt!1671192 e!2793841)))

(declare-fun c!764015 () Bool)

(assert (=> d!1373202 (= c!764015 (is-Cons!50453 (toList!4189 lt!1671113)))))

(assert (=> d!1373202 (forall!10105 (toList!4189 lt!1671113) lambda!166392)))

(assert (=> d!1373202 (= (extractMap!1147 (toList!4189 lt!1671113)) lt!1671192)))

(declare-fun b!4485845 () Bool)

(assert (=> b!4485845 (= e!2793841 (addToMapMapFromBucket!628 (_2!28694 (h!56250 (toList!4189 lt!1671113))) (extractMap!1147 (t!357531 (toList!4189 lt!1671113)))))))

(declare-fun b!4485846 () Bool)

(assert (=> b!4485846 (= e!2793841 (ListMap!3452 Nil!50452))))

(assert (= (and d!1373202 c!764015) b!4485845))

(assert (= (and d!1373202 (not c!764015)) b!4485846))

(declare-fun m!5206555 () Bool)

(assert (=> d!1373202 m!5206555))

(declare-fun m!5206557 () Bool)

(assert (=> d!1373202 m!5206557))

(declare-fun m!5206559 () Bool)

(assert (=> b!4485845 m!5206559))

(assert (=> b!4485845 m!5206559))

(declare-fun m!5206561 () Bool)

(assert (=> b!4485845 m!5206561))

(assert (=> b!4485708 d!1373202))

(declare-fun bs!825922 () Bool)

(declare-fun d!1373204 () Bool)

(assert (= bs!825922 (and d!1373204 start!441750)))

(declare-fun lambda!166395 () Int)

(assert (=> bs!825922 (= lambda!166395 lambda!166372)))

(declare-fun bs!825923 () Bool)

(assert (= bs!825923 (and d!1373204 d!1373184)))

(assert (=> bs!825923 (= lambda!166395 lambda!166385)))

(declare-fun bs!825924 () Bool)

(assert (= bs!825924 (and d!1373204 d!1373192)))

(assert (=> bs!825924 (not (= lambda!166395 lambda!166391))))

(declare-fun bs!825925 () Bool)

(assert (= bs!825925 (and d!1373204 d!1373202)))

(assert (=> bs!825925 (= lambda!166395 lambda!166392)))

(assert (=> d!1373204 (contains!13076 (extractMap!1147 (toList!4189 lt!1671113)) key!3287)))

(declare-fun lt!1671201 () Unit!90110)

(declare-fun choose!28856 (ListLongMap!2821 K!11868 Hashable!5486) Unit!90110)

(assert (=> d!1373204 (= lt!1671201 (choose!28856 lt!1671113 key!3287 hashF!1107))))

(assert (=> d!1373204 (forall!10105 (toList!4189 lt!1671113) lambda!166395)))

(assert (=> d!1373204 (= (lemmaListContainsThenExtractedMapContains!61 lt!1671113 key!3287 hashF!1107) lt!1671201)))

(declare-fun bs!825926 () Bool)

(assert (= bs!825926 d!1373204))

(assert (=> bs!825926 m!5206393))

(assert (=> bs!825926 m!5206393))

(assert (=> bs!825926 m!5206395))

(declare-fun m!5206563 () Bool)

(assert (=> bs!825926 m!5206563))

(declare-fun m!5206565 () Bool)

(assert (=> bs!825926 m!5206565))

(assert (=> b!4485708 d!1373204))

(declare-fun bs!825927 () Bool)

(declare-fun d!1373206 () Bool)

(assert (= bs!825927 (and d!1373206 d!1373192)))

(declare-fun lambda!166398 () Int)

(assert (=> bs!825927 (not (= lambda!166398 lambda!166391))))

(declare-fun bs!825928 () Bool)

(assert (= bs!825928 (and d!1373206 d!1373204)))

(assert (=> bs!825928 (= lambda!166398 lambda!166395)))

(declare-fun bs!825929 () Bool)

(assert (= bs!825929 (and d!1373206 start!441750)))

(assert (=> bs!825929 (= lambda!166398 lambda!166372)))

(declare-fun bs!825930 () Bool)

(assert (= bs!825930 (and d!1373206 d!1373184)))

(assert (=> bs!825930 (= lambda!166398 lambda!166385)))

(declare-fun bs!825931 () Bool)

(assert (= bs!825931 (and d!1373206 d!1373202)))

(assert (=> bs!825931 (= lambda!166398 lambda!166392)))

(assert (=> d!1373206 (not (contains!13076 (extractMap!1147 (toList!4189 lm!1477)) key!3287))))

(declare-fun lt!1671222 () Unit!90110)

(declare-fun choose!28857 (ListLongMap!2821 K!11868 Hashable!5486) Unit!90110)

(assert (=> d!1373206 (= lt!1671222 (choose!28857 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1373206 (forall!10105 (toList!4189 lm!1477) lambda!166398)))

(assert (=> d!1373206 (= (lemmaNotInItsHashBucketThenNotInMap!79 lm!1477 key!3287 hashF!1107) lt!1671222)))

(declare-fun bs!825932 () Bool)

(assert (= bs!825932 d!1373206))

(assert (=> bs!825932 m!5206399))

(assert (=> bs!825932 m!5206399))

(assert (=> bs!825932 m!5206401))

(declare-fun m!5206567 () Bool)

(assert (=> bs!825932 m!5206567))

(declare-fun m!5206569 () Bool)

(assert (=> bs!825932 m!5206569))

(assert (=> b!4485719 d!1373206))

(declare-fun d!1373208 () Bool)

(declare-fun lt!1671225 () Bool)

(declare-fun content!8192 (List!50577) (Set tuple2!50800))

(assert (=> d!1373208 (= lt!1671225 (set.member lt!1671109 (content!8192 (t!357531 (toList!4189 lm!1477)))))))

(declare-fun e!2793865 () Bool)

(assert (=> d!1373208 (= lt!1671225 e!2793865)))

(declare-fun res!1863369 () Bool)

(assert (=> d!1373208 (=> (not res!1863369) (not e!2793865))))

(assert (=> d!1373208 (= res!1863369 (is-Cons!50453 (t!357531 (toList!4189 lm!1477))))))

(assert (=> d!1373208 (= (contains!13077 (t!357531 (toList!4189 lm!1477)) lt!1671109) lt!1671225)))

(declare-fun b!4485878 () Bool)

(declare-fun e!2793864 () Bool)

(assert (=> b!4485878 (= e!2793865 e!2793864)))

(declare-fun res!1863368 () Bool)

(assert (=> b!4485878 (=> res!1863368 e!2793864)))

(assert (=> b!4485878 (= res!1863368 (= (h!56250 (t!357531 (toList!4189 lm!1477))) lt!1671109))))

(declare-fun b!4485879 () Bool)

(assert (=> b!4485879 (= e!2793864 (contains!13077 (t!357531 (t!357531 (toList!4189 lm!1477))) lt!1671109))))

(assert (= (and d!1373208 res!1863369) b!4485878))

(assert (= (and b!4485878 (not res!1863368)) b!4485879))

(declare-fun m!5206591 () Bool)

(assert (=> d!1373208 m!5206591))

(declare-fun m!5206593 () Bool)

(assert (=> d!1373208 m!5206593))

(declare-fun m!5206595 () Bool)

(assert (=> b!4485879 m!5206595))

(assert (=> b!4485713 d!1373208))

(declare-fun d!1373212 () Bool)

(declare-fun res!1863374 () Bool)

(declare-fun e!2793870 () Bool)

(assert (=> d!1373212 (=> res!1863374 e!2793870)))

(assert (=> d!1373212 (= res!1863374 (not (is-Cons!50452 newBucket!178)))))

(assert (=> d!1373212 (= (noDuplicateKeys!1091 newBucket!178) e!2793870)))

(declare-fun b!4485884 () Bool)

(declare-fun e!2793871 () Bool)

(assert (=> b!4485884 (= e!2793870 e!2793871)))

(declare-fun res!1863375 () Bool)

(assert (=> b!4485884 (=> (not res!1863375) (not e!2793871))))

(assert (=> b!4485884 (= res!1863375 (not (containsKey!1599 (t!357530 newBucket!178) (_1!28693 (h!56249 newBucket!178)))))))

(declare-fun b!4485885 () Bool)

(assert (=> b!4485885 (= e!2793871 (noDuplicateKeys!1091 (t!357530 newBucket!178)))))

(assert (= (and d!1373212 (not res!1863374)) b!4485884))

(assert (= (and b!4485884 res!1863375) b!4485885))

(declare-fun m!5206597 () Bool)

(assert (=> b!4485884 m!5206597))

(declare-fun m!5206599 () Bool)

(assert (=> b!4485885 m!5206599))

(assert (=> b!4485712 d!1373212))

(declare-fun d!1373214 () Bool)

(assert (=> d!1373214 (contains!13077 (toList!4189 lm!1477) (tuple2!50801 hash!344 lt!1671116))))

(declare-fun lt!1671228 () Unit!90110)

(declare-fun choose!28858 (List!50577 (_ BitVec 64) List!50576) Unit!90110)

(assert (=> d!1373214 (= lt!1671228 (choose!28858 (toList!4189 lm!1477) hash!344 lt!1671116))))

(declare-fun e!2793874 () Bool)

(assert (=> d!1373214 e!2793874))

(declare-fun res!1863378 () Bool)

(assert (=> d!1373214 (=> (not res!1863378) (not e!2793874))))

(declare-fun isStrictlySorted!374 (List!50577) Bool)

(assert (=> d!1373214 (= res!1863378 (isStrictlySorted!374 (toList!4189 lm!1477)))))

(assert (=> d!1373214 (= (lemmaGetValueByKeyImpliesContainsTuple!603 (toList!4189 lm!1477) hash!344 lt!1671116) lt!1671228)))

(declare-fun b!4485888 () Bool)

(assert (=> b!4485888 (= e!2793874 (= (getValueByKey!979 (toList!4189 lm!1477) hash!344) (Some!10998 lt!1671116)))))

(assert (= (and d!1373214 res!1863378) b!4485888))

(declare-fun m!5206601 () Bool)

(assert (=> d!1373214 m!5206601))

(declare-fun m!5206603 () Bool)

(assert (=> d!1373214 m!5206603))

(declare-fun m!5206605 () Bool)

(assert (=> d!1373214 m!5206605))

(declare-fun m!5206607 () Bool)

(assert (=> b!4485888 m!5206607))

(assert (=> b!4485723 d!1373214))

(declare-fun d!1373216 () Bool)

(assert (=> d!1373216 (= (apply!11828 lm!1477 hash!344) (get!16465 (getValueByKey!979 (toList!4189 lm!1477) hash!344)))))

(declare-fun bs!825933 () Bool)

(assert (= bs!825933 d!1373216))

(assert (=> bs!825933 m!5206607))

(assert (=> bs!825933 m!5206607))

(declare-fun m!5206609 () Bool)

(assert (=> bs!825933 m!5206609))

(assert (=> b!4485723 d!1373216))

(declare-fun d!1373218 () Bool)

(declare-fun lt!1671229 () Bool)

(assert (=> d!1373218 (= lt!1671229 (set.member lt!1671109 (content!8192 (toList!4189 lm!1477))))))

(declare-fun e!2793876 () Bool)

(assert (=> d!1373218 (= lt!1671229 e!2793876)))

(declare-fun res!1863380 () Bool)

(assert (=> d!1373218 (=> (not res!1863380) (not e!2793876))))

(assert (=> d!1373218 (= res!1863380 (is-Cons!50453 (toList!4189 lm!1477)))))

(assert (=> d!1373218 (= (contains!13077 (toList!4189 lm!1477) lt!1671109) lt!1671229)))

(declare-fun b!4485889 () Bool)

(declare-fun e!2793875 () Bool)

(assert (=> b!4485889 (= e!2793876 e!2793875)))

(declare-fun res!1863379 () Bool)

(assert (=> b!4485889 (=> res!1863379 e!2793875)))

(assert (=> b!4485889 (= res!1863379 (= (h!56250 (toList!4189 lm!1477)) lt!1671109))))

(declare-fun b!4485890 () Bool)

(assert (=> b!4485890 (= e!2793875 (contains!13077 (t!357531 (toList!4189 lm!1477)) lt!1671109))))

(assert (= (and d!1373218 res!1863380) b!4485889))

(assert (= (and b!4485889 (not res!1863379)) b!4485890))

(declare-fun m!5206611 () Bool)

(assert (=> d!1373218 m!5206611))

(declare-fun m!5206613 () Bool)

(assert (=> d!1373218 m!5206613))

(assert (=> b!4485890 m!5206409))

(assert (=> b!4485723 d!1373218))

(declare-fun bs!825934 () Bool)

(declare-fun d!1373220 () Bool)

(assert (= bs!825934 (and d!1373220 d!1373192)))

(declare-fun lambda!166401 () Int)

(assert (=> bs!825934 (not (= lambda!166401 lambda!166391))))

(declare-fun bs!825935 () Bool)

(assert (= bs!825935 (and d!1373220 d!1373204)))

(assert (=> bs!825935 (= lambda!166401 lambda!166395)))

(declare-fun bs!825936 () Bool)

(assert (= bs!825936 (and d!1373220 start!441750)))

(assert (=> bs!825936 (= lambda!166401 lambda!166372)))

(declare-fun bs!825937 () Bool)

(assert (= bs!825937 (and d!1373220 d!1373206)))

(assert (=> bs!825937 (= lambda!166401 lambda!166398)))

(declare-fun bs!825938 () Bool)

(assert (= bs!825938 (and d!1373220 d!1373184)))

(assert (=> bs!825938 (= lambda!166401 lambda!166385)))

(declare-fun bs!825939 () Bool)

(assert (= bs!825939 (and d!1373220 d!1373202)))

(assert (=> bs!825939 (= lambda!166401 lambda!166392)))

(assert (=> d!1373220 (contains!13078 lm!1477 (hash!2598 hashF!1107 key!3287))))

(declare-fun lt!1671232 () Unit!90110)

(declare-fun choose!28859 (ListLongMap!2821 K!11868 Hashable!5486) Unit!90110)

(assert (=> d!1373220 (= lt!1671232 (choose!28859 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1373220 (forall!10105 (toList!4189 lm!1477) lambda!166401)))

(assert (=> d!1373220 (= (lemmaInGenMapThenLongMapContainsHash!165 lm!1477 key!3287 hashF!1107) lt!1671232)))

(declare-fun bs!825940 () Bool)

(assert (= bs!825940 d!1373220))

(assert (=> bs!825940 m!5206387))

(assert (=> bs!825940 m!5206387))

(declare-fun m!5206615 () Bool)

(assert (=> bs!825940 m!5206615))

(declare-fun m!5206617 () Bool)

(assert (=> bs!825940 m!5206617))

(declare-fun m!5206619 () Bool)

(assert (=> bs!825940 m!5206619))

(assert (=> b!4485723 d!1373220))

(declare-fun d!1373222 () Bool)

(declare-fun e!2793881 () Bool)

(assert (=> d!1373222 e!2793881))

(declare-fun res!1863383 () Bool)

(assert (=> d!1373222 (=> res!1863383 e!2793881)))

(declare-fun lt!1671244 () Bool)

(assert (=> d!1373222 (= res!1863383 (not lt!1671244))))

(declare-fun lt!1671243 () Bool)

(assert (=> d!1373222 (= lt!1671244 lt!1671243)))

(declare-fun lt!1671241 () Unit!90110)

(declare-fun e!2793882 () Unit!90110)

(assert (=> d!1373222 (= lt!1671241 e!2793882)))

(declare-fun c!764027 () Bool)

(assert (=> d!1373222 (= c!764027 lt!1671243)))

(declare-fun containsKey!1602 (List!50577 (_ BitVec 64)) Bool)

(assert (=> d!1373222 (= lt!1671243 (containsKey!1602 (toList!4189 lm!1477) lt!1671118))))

(assert (=> d!1373222 (= (contains!13078 lm!1477 lt!1671118) lt!1671244)))

(declare-fun b!4485897 () Bool)

(declare-fun lt!1671242 () Unit!90110)

(assert (=> b!4485897 (= e!2793882 lt!1671242)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!883 (List!50577 (_ BitVec 64)) Unit!90110)

(assert (=> b!4485897 (= lt!1671242 (lemmaContainsKeyImpliesGetValueByKeyDefined!883 (toList!4189 lm!1477) lt!1671118))))

(declare-fun isDefined!8286 (Option!10999) Bool)

(assert (=> b!4485897 (isDefined!8286 (getValueByKey!979 (toList!4189 lm!1477) lt!1671118))))

(declare-fun b!4485898 () Bool)

(declare-fun Unit!90122 () Unit!90110)

(assert (=> b!4485898 (= e!2793882 Unit!90122)))

(declare-fun b!4485899 () Bool)

(assert (=> b!4485899 (= e!2793881 (isDefined!8286 (getValueByKey!979 (toList!4189 lm!1477) lt!1671118)))))

(assert (= (and d!1373222 c!764027) b!4485897))

(assert (= (and d!1373222 (not c!764027)) b!4485898))

(assert (= (and d!1373222 (not res!1863383)) b!4485899))

(declare-fun m!5206621 () Bool)

(assert (=> d!1373222 m!5206621))

(declare-fun m!5206623 () Bool)

(assert (=> b!4485897 m!5206623))

(declare-fun m!5206625 () Bool)

(assert (=> b!4485897 m!5206625))

(assert (=> b!4485897 m!5206625))

(declare-fun m!5206627 () Bool)

(assert (=> b!4485897 m!5206627))

(assert (=> b!4485899 m!5206625))

(assert (=> b!4485899 m!5206625))

(assert (=> b!4485899 m!5206627))

(assert (=> b!4485723 d!1373222))

(declare-fun d!1373224 () Bool)

(assert (=> d!1373224 (dynLambda!21064 lambda!166372 lt!1671109)))

(declare-fun lt!1671247 () Unit!90110)

(declare-fun choose!28860 (List!50577 Int tuple2!50800) Unit!90110)

(assert (=> d!1373224 (= lt!1671247 (choose!28860 (toList!4189 lm!1477) lambda!166372 lt!1671109))))

(declare-fun e!2793885 () Bool)

(assert (=> d!1373224 e!2793885))

(declare-fun res!1863386 () Bool)

(assert (=> d!1373224 (=> (not res!1863386) (not e!2793885))))

(assert (=> d!1373224 (= res!1863386 (forall!10105 (toList!4189 lm!1477) lambda!166372))))

(assert (=> d!1373224 (= (forallContained!2366 (toList!4189 lm!1477) lambda!166372 lt!1671109) lt!1671247)))

(declare-fun b!4485902 () Bool)

(assert (=> b!4485902 (= e!2793885 (contains!13077 (toList!4189 lm!1477) lt!1671109))))

(assert (= (and d!1373224 res!1863386) b!4485902))

(declare-fun b_lambda!150635 () Bool)

(assert (=> (not b_lambda!150635) (not d!1373224)))

(declare-fun m!5206629 () Bool)

(assert (=> d!1373224 m!5206629))

(declare-fun m!5206631 () Bool)

(assert (=> d!1373224 m!5206631))

(assert (=> d!1373224 m!5206403))

(assert (=> b!4485902 m!5206425))

(assert (=> b!4485723 d!1373224))

(declare-fun b!4485918 () Bool)

(declare-fun e!2793893 () List!50576)

(assert (=> b!4485918 (= e!2793893 Nil!50452)))

(declare-fun b!4485915 () Bool)

(declare-fun e!2793892 () List!50576)

(assert (=> b!4485915 (= e!2793892 (t!357530 lt!1671116))))

(declare-fun d!1373226 () Bool)

(declare-fun lt!1671252 () List!50576)

(assert (=> d!1373226 (not (containsKey!1599 lt!1671252 key!3287))))

(assert (=> d!1373226 (= lt!1671252 e!2793892)))

(declare-fun c!764035 () Bool)

(assert (=> d!1373226 (= c!764035 (and (is-Cons!50452 lt!1671116) (= (_1!28693 (h!56249 lt!1671116)) key!3287)))))

(assert (=> d!1373226 (noDuplicateKeys!1091 lt!1671116)))

(assert (=> d!1373226 (= (removePairForKey!718 lt!1671116 key!3287) lt!1671252)))

(declare-fun b!4485916 () Bool)

(assert (=> b!4485916 (= e!2793892 e!2793893)))

(declare-fun c!764034 () Bool)

(assert (=> b!4485916 (= c!764034 (is-Cons!50452 lt!1671116))))

(declare-fun b!4485917 () Bool)

(assert (=> b!4485917 (= e!2793893 (Cons!50452 (h!56249 lt!1671116) (removePairForKey!718 (t!357530 lt!1671116) key!3287)))))

(assert (= (and d!1373226 c!764035) b!4485915))

(assert (= (and d!1373226 (not c!764035)) b!4485916))

(assert (= (and b!4485916 c!764034) b!4485917))

(assert (= (and b!4485916 (not c!764034)) b!4485918))

(declare-fun m!5206633 () Bool)

(assert (=> d!1373226 m!5206633))

(declare-fun m!5206635 () Bool)

(assert (=> d!1373226 m!5206635))

(declare-fun m!5206637 () Bool)

(assert (=> b!4485917 m!5206637))

(assert (=> b!4485723 d!1373226))

(declare-fun d!1373228 () Bool)

(declare-fun e!2793894 () Bool)

(assert (=> d!1373228 e!2793894))

(declare-fun res!1863387 () Bool)

(assert (=> d!1373228 (=> res!1863387 e!2793894)))

(declare-fun lt!1671256 () Bool)

(assert (=> d!1373228 (= res!1863387 (not lt!1671256))))

(declare-fun lt!1671255 () Bool)

(assert (=> d!1373228 (= lt!1671256 lt!1671255)))

(declare-fun lt!1671253 () Unit!90110)

(declare-fun e!2793895 () Unit!90110)

(assert (=> d!1373228 (= lt!1671253 e!2793895)))

(declare-fun c!764036 () Bool)

(assert (=> d!1373228 (= c!764036 lt!1671255)))

(assert (=> d!1373228 (= lt!1671255 (containsKey!1602 (toList!4189 lt!1671113) hash!344))))

(assert (=> d!1373228 (= (contains!13078 lt!1671113 hash!344) lt!1671256)))

(declare-fun b!4485919 () Bool)

(declare-fun lt!1671254 () Unit!90110)

(assert (=> b!4485919 (= e!2793895 lt!1671254)))

(assert (=> b!4485919 (= lt!1671254 (lemmaContainsKeyImpliesGetValueByKeyDefined!883 (toList!4189 lt!1671113) hash!344))))

(assert (=> b!4485919 (isDefined!8286 (getValueByKey!979 (toList!4189 lt!1671113) hash!344))))

(declare-fun b!4485920 () Bool)

(declare-fun Unit!90123 () Unit!90110)

(assert (=> b!4485920 (= e!2793895 Unit!90123)))

(declare-fun b!4485921 () Bool)

(assert (=> b!4485921 (= e!2793894 (isDefined!8286 (getValueByKey!979 (toList!4189 lt!1671113) hash!344)))))

(assert (= (and d!1373228 c!764036) b!4485919))

(assert (= (and d!1373228 (not c!764036)) b!4485920))

(assert (= (and d!1373228 (not res!1863387)) b!4485921))

(declare-fun m!5206639 () Bool)

(assert (=> d!1373228 m!5206639))

(declare-fun m!5206641 () Bool)

(assert (=> b!4485919 m!5206641))

(assert (=> b!4485919 m!5206525))

(assert (=> b!4485919 m!5206525))

(declare-fun m!5206643 () Bool)

(assert (=> b!4485919 m!5206643))

(assert (=> b!4485921 m!5206525))

(assert (=> b!4485921 m!5206525))

(assert (=> b!4485921 m!5206643))

(assert (=> b!4485722 d!1373228))

(declare-fun d!1373230 () Bool)

(declare-fun tail!7612 (List!50577) List!50577)

(assert (=> d!1373230 (= (tail!7610 lm!1477) (ListLongMap!2822 (tail!7612 (toList!4189 lm!1477))))))

(declare-fun bs!825942 () Bool)

(assert (= bs!825942 d!1373230))

(declare-fun m!5206645 () Bool)

(assert (=> bs!825942 m!5206645))

(assert (=> b!4485722 d!1373230))

(declare-fun d!1373232 () Bool)

(declare-fun res!1863388 () Bool)

(declare-fun e!2793897 () Bool)

(assert (=> d!1373232 (=> res!1863388 e!2793897)))

(assert (=> d!1373232 (= res!1863388 (is-Nil!50453 (toList!4189 lm!1477)))))

(assert (=> d!1373232 (= (forall!10105 (toList!4189 lm!1477) lambda!166372) e!2793897)))

(declare-fun b!4485924 () Bool)

(declare-fun e!2793898 () Bool)

(assert (=> b!4485924 (= e!2793897 e!2793898)))

(declare-fun res!1863389 () Bool)

(assert (=> b!4485924 (=> (not res!1863389) (not e!2793898))))

(assert (=> b!4485924 (= res!1863389 (dynLambda!21064 lambda!166372 (h!56250 (toList!4189 lm!1477))))))

(declare-fun b!4485925 () Bool)

(assert (=> b!4485925 (= e!2793898 (forall!10105 (t!357531 (toList!4189 lm!1477)) lambda!166372))))

(assert (= (and d!1373232 (not res!1863388)) b!4485924))

(assert (= (and b!4485924 res!1863389) b!4485925))

(declare-fun b_lambda!150637 () Bool)

(assert (=> (not b_lambda!150637) (not b!4485924)))

(declare-fun m!5206649 () Bool)

(assert (=> b!4485924 m!5206649))

(assert (=> b!4485925 m!5206391))

(assert (=> start!441750 d!1373232))

(declare-fun d!1373234 () Bool)

(assert (=> d!1373234 (= (inv!66053 lm!1477) (isStrictlySorted!374 (toList!4189 lm!1477)))))

(declare-fun bs!825943 () Bool)

(assert (= bs!825943 d!1373234))

(assert (=> bs!825943 m!5206605))

(assert (=> start!441750 d!1373234))

(declare-fun d!1373238 () Bool)

(declare-fun res!1863396 () Bool)

(declare-fun e!2793905 () Bool)

(assert (=> d!1373238 (=> res!1863396 e!2793905)))

(declare-fun e!2793907 () Bool)

(assert (=> d!1373238 (= res!1863396 e!2793907)))

(declare-fun res!1863397 () Bool)

(assert (=> d!1373238 (=> (not res!1863397) (not e!2793907))))

(assert (=> d!1373238 (= res!1863397 (is-Cons!50453 (t!357531 (toList!4189 lm!1477))))))

(assert (=> d!1373238 (= (containsKeyBiggerList!71 (t!357531 (toList!4189 lm!1477)) key!3287) e!2793905)))

(declare-fun b!4485932 () Bool)

(assert (=> b!4485932 (= e!2793907 (containsKey!1599 (_2!28694 (h!56250 (t!357531 (toList!4189 lm!1477)))) key!3287))))

(declare-fun b!4485933 () Bool)

(declare-fun e!2793906 () Bool)

(assert (=> b!4485933 (= e!2793905 e!2793906)))

(declare-fun res!1863398 () Bool)

(assert (=> b!4485933 (=> (not res!1863398) (not e!2793906))))

(assert (=> b!4485933 (= res!1863398 (is-Cons!50453 (t!357531 (toList!4189 lm!1477))))))

(declare-fun b!4485934 () Bool)

(assert (=> b!4485934 (= e!2793906 (containsKeyBiggerList!71 (t!357531 (t!357531 (toList!4189 lm!1477))) key!3287))))

(assert (= (and d!1373238 res!1863397) b!4485932))

(assert (= (and d!1373238 (not res!1863396)) b!4485933))

(assert (= (and b!4485933 res!1863398) b!4485934))

(declare-fun m!5206657 () Bool)

(assert (=> b!4485932 m!5206657))

(declare-fun m!5206659 () Bool)

(assert (=> b!4485934 m!5206659))

(assert (=> b!4485711 d!1373238))

(declare-fun d!1373240 () Bool)

(declare-fun res!1863399 () Bool)

(declare-fun e!2793908 () Bool)

(assert (=> d!1373240 (=> res!1863399 e!2793908)))

(declare-fun e!2793910 () Bool)

(assert (=> d!1373240 (= res!1863399 e!2793910)))

(declare-fun res!1863400 () Bool)

(assert (=> d!1373240 (=> (not res!1863400) (not e!2793910))))

(assert (=> d!1373240 (= res!1863400 (is-Cons!50453 (toList!4189 lt!1671113)))))

(assert (=> d!1373240 (= (containsKeyBiggerList!71 (toList!4189 lt!1671113) key!3287) e!2793908)))

(declare-fun b!4485935 () Bool)

(assert (=> b!4485935 (= e!2793910 (containsKey!1599 (_2!28694 (h!56250 (toList!4189 lt!1671113))) key!3287))))

(declare-fun b!4485936 () Bool)

(declare-fun e!2793909 () Bool)

(assert (=> b!4485936 (= e!2793908 e!2793909)))

(declare-fun res!1863401 () Bool)

(assert (=> b!4485936 (=> (not res!1863401) (not e!2793909))))

(assert (=> b!4485936 (= res!1863401 (is-Cons!50453 (toList!4189 lt!1671113)))))

(declare-fun b!4485937 () Bool)

(assert (=> b!4485937 (= e!2793909 (containsKeyBiggerList!71 (t!357531 (toList!4189 lt!1671113)) key!3287))))

(assert (= (and d!1373240 res!1863400) b!4485935))

(assert (= (and d!1373240 (not res!1863399)) b!4485936))

(assert (= (and b!4485936 res!1863401) b!4485937))

(declare-fun m!5206661 () Bool)

(assert (=> b!4485935 m!5206661))

(declare-fun m!5206663 () Bool)

(assert (=> b!4485937 m!5206663))

(assert (=> b!4485711 d!1373240))

(declare-fun bs!825944 () Bool)

(declare-fun d!1373242 () Bool)

(assert (= bs!825944 (and d!1373242 d!1373192)))

(declare-fun lambda!166407 () Int)

(assert (=> bs!825944 (not (= lambda!166407 lambda!166391))))

(declare-fun bs!825945 () Bool)

(assert (= bs!825945 (and d!1373242 d!1373204)))

(assert (=> bs!825945 (= lambda!166407 lambda!166395)))

(declare-fun bs!825946 () Bool)

(assert (= bs!825946 (and d!1373242 start!441750)))

(assert (=> bs!825946 (= lambda!166407 lambda!166372)))

(declare-fun bs!825947 () Bool)

(assert (= bs!825947 (and d!1373242 d!1373206)))

(assert (=> bs!825947 (= lambda!166407 lambda!166398)))

(declare-fun bs!825948 () Bool)

(assert (= bs!825948 (and d!1373242 d!1373184)))

(assert (=> bs!825948 (= lambda!166407 lambda!166385)))

(declare-fun bs!825949 () Bool)

(assert (= bs!825949 (and d!1373242 d!1373220)))

(assert (=> bs!825949 (= lambda!166407 lambda!166401)))

(declare-fun bs!825950 () Bool)

(assert (= bs!825950 (and d!1373242 d!1373202)))

(assert (=> bs!825950 (= lambda!166407 lambda!166392)))

(assert (=> d!1373242 (containsKeyBiggerList!71 (toList!4189 lt!1671113) key!3287)))

(declare-fun lt!1671263 () Unit!90110)

(declare-fun choose!28861 (ListLongMap!2821 K!11868 Hashable!5486) Unit!90110)

(assert (=> d!1373242 (= lt!1671263 (choose!28861 lt!1671113 key!3287 hashF!1107))))

(assert (=> d!1373242 (forall!10105 (toList!4189 lt!1671113) lambda!166407)))

(assert (=> d!1373242 (= (lemmaInLongMapThenContainsKeyBiggerList!7 lt!1671113 key!3287 hashF!1107) lt!1671263)))

(declare-fun bs!825951 () Bool)

(assert (= bs!825951 d!1373242))

(assert (=> bs!825951 m!5206383))

(declare-fun m!5206671 () Bool)

(assert (=> bs!825951 m!5206671))

(declare-fun m!5206673 () Bool)

(assert (=> bs!825951 m!5206673))

(assert (=> b!4485711 d!1373242))

(declare-fun d!1373246 () Bool)

(declare-fun hash!2601 (Hashable!5486 K!11868) (_ BitVec 64))

(assert (=> d!1373246 (= (hash!2598 hashF!1107 key!3287) (hash!2601 hashF!1107 key!3287))))

(declare-fun bs!825952 () Bool)

(assert (= bs!825952 d!1373246))

(declare-fun m!5206675 () Bool)

(assert (=> bs!825952 m!5206675))

(assert (=> b!4485714 d!1373246))

(declare-fun b!4485948 () Bool)

(declare-fun e!2793919 () Bool)

(declare-fun tp!1337018 () Bool)

(declare-fun tp!1337019 () Bool)

(assert (=> b!4485948 (= e!2793919 (and tp!1337018 tp!1337019))))

(assert (=> b!4485715 (= tp!1337007 e!2793919)))

(assert (= (and b!4485715 (is-Cons!50453 (toList!4189 lm!1477))) b!4485948))

(declare-fun e!2793926 () Bool)

(declare-fun tp!1337022 () Bool)

(declare-fun b!4485957 () Bool)

(assert (=> b!4485957 (= e!2793926 (and tp_is_empty!27641 tp_is_empty!27643 tp!1337022))))

(assert (=> b!4485709 (= tp!1337006 e!2793926)))

(assert (= (and b!4485709 (is-Cons!50452 (t!357530 newBucket!178))) b!4485957))

(declare-fun b_lambda!150639 () Bool)

(assert (= b_lambda!150637 (or start!441750 b_lambda!150639)))

(declare-fun bs!825953 () Bool)

(declare-fun d!1373248 () Bool)

(assert (= bs!825953 (and d!1373248 start!441750)))

(assert (=> bs!825953 (= (dynLambda!21064 lambda!166372 (h!56250 (toList!4189 lm!1477))) (noDuplicateKeys!1091 (_2!28694 (h!56250 (toList!4189 lm!1477)))))))

(declare-fun m!5206677 () Bool)

(assert (=> bs!825953 m!5206677))

(assert (=> b!4485924 d!1373248))

(declare-fun b_lambda!150641 () Bool)

(assert (= b_lambda!150635 (or start!441750 b_lambda!150641)))

(declare-fun bs!825954 () Bool)

(declare-fun d!1373250 () Bool)

(assert (= bs!825954 (and d!1373250 start!441750)))

(assert (=> bs!825954 (= (dynLambda!21064 lambda!166372 lt!1671109) (noDuplicateKeys!1091 (_2!28694 lt!1671109)))))

(declare-fun m!5206679 () Bool)

(assert (=> bs!825954 m!5206679))

(assert (=> d!1373224 d!1373250))

(declare-fun b_lambda!150643 () Bool)

(assert (= b_lambda!150633 (or start!441750 b_lambda!150643)))

(declare-fun bs!825955 () Bool)

(declare-fun d!1373252 () Bool)

(assert (= bs!825955 (and d!1373252 start!441750)))

(assert (=> bs!825955 (= (dynLambda!21064 lambda!166372 (h!56250 (t!357531 (toList!4189 lm!1477)))) (noDuplicateKeys!1091 (_2!28694 (h!56250 (t!357531 (toList!4189 lm!1477))))))))

(declare-fun m!5206681 () Bool)

(assert (=> bs!825955 m!5206681))

(assert (=> b!4485834 d!1373252))

(push 1)

(assert (not bm!312202))

(assert (not b!4485839))

(assert (not b!4485948))

(assert (not b!4485897))

(assert (not b_lambda!150639))

(assert (not b!4485899))

(assert (not d!1373234))

(assert (not b!4485796))

(assert (not d!1373184))

(assert (not b!4485793))

(assert (not d!1373190))

(assert (not d!1373216))

(assert (not d!1373224))

(assert (not d!1373206))

(assert (not bs!825953))

(assert (not b!4485925))

(assert (not d!1373222))

(assert (not b!4485838))

(assert (not b!4485879))

(assert (not d!1373192))

(assert (not b!4485801))

(assert (not b!4485795))

(assert (not bs!825955))

(assert (not d!1373208))

(assert (not b!4485934))

(assert (not b!4485890))

(assert (not b!4485921))

(assert (not b!4485888))

(assert (not d!1373178))

(assert (not d!1373228))

(assert (not d!1373194))

(assert (not b!4485797))

(assert (not b!4485932))

(assert (not d!1373242))

(assert (not b!4485917))

(assert (not b!4485902))

(assert (not b!4485937))

(assert (not b!4485840))

(assert (not d!1373218))

(assert (not b!4485935))

(assert (not b!4485800))

(assert (not b_lambda!150643))

(assert tp_is_empty!27643)

(assert (not b!4485884))

(assert (not b!4485816))

(assert (not d!1373246))

(assert (not b!4485885))

(assert (not d!1373202))

(assert (not d!1373226))

(assert (not b!4485843))

(assert (not d!1373204))

(assert (not b_lambda!150641))

(assert (not b!4485844))

(assert tp_is_empty!27641)

(assert (not b!4485799))

(assert (not bs!825954))

(assert (not b!4485829))

(assert (not b!4485957))

(assert (not d!1373230))

(assert (not b!4485842))

(assert (not d!1373220))

(assert (not b!4485919))

(assert (not d!1373214))

(assert (not d!1373200))

(assert (not b!4485845))

(assert (not b!4485835))

(assert (not b!4485836))

(assert (not bm!312201))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

