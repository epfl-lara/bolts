; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!502018 () Bool)

(assert start!502018)

(declare-fun b!4831586 () Bool)

(declare-fun res!2057966 () Bool)

(declare-fun e!3019212 () Bool)

(assert (=> b!4831586 (=> (not res!2057966) (not e!3019212))))

(declare-datatypes ((V!17003 0))(
  ( (V!17004 (val!21711 Int)) )
))
(declare-datatypes ((K!16757 0))(
  ( (K!16758 (val!21712 Int)) )
))
(declare-datatypes ((tuple2!58358 0))(
  ( (tuple2!58359 (_1!32473 K!16757) (_2!32473 V!17003)) )
))
(declare-datatypes ((List!55194 0))(
  ( (Nil!55070) (Cons!55070 (h!61504 tuple2!58358) (t!362690 List!55194)) )
))
(declare-datatypes ((tuple2!58360 0))(
  ( (tuple2!58361 (_1!32474 (_ BitVec 64)) (_2!32474 List!55194)) )
))
(declare-datatypes ((List!55195 0))(
  ( (Nil!55071) (Cons!55071 (h!61505 tuple2!58360) (t!362691 List!55195)) )
))
(declare-datatypes ((ListLongMap!6077 0))(
  ( (ListLongMap!6078 (toList!7555 List!55195)) )
))
(declare-fun lm!2325 () ListLongMap!6077)

(assert (=> b!4831586 (= res!2057966 (is-Cons!55071 (toList!7555 lm!2325)))))

(declare-fun b!4831587 () Bool)

(declare-fun res!2057962 () Bool)

(declare-fun e!3019213 () Bool)

(assert (=> b!4831587 (=> res!2057962 e!3019213)))

(declare-fun lt!1977454 () ListLongMap!6077)

(declare-fun lt!1977450 () (_ BitVec 64))

(declare-fun contains!18882 (ListLongMap!6077 (_ BitVec 64)) Bool)

(assert (=> b!4831587 (= res!2057962 (contains!18882 lt!1977454 lt!1977450))))

(declare-fun b!4831588 () Bool)

(assert (=> b!4831588 (= e!3019212 (not e!3019213))))

(declare-fun res!2057965 () Bool)

(assert (=> b!4831588 (=> res!2057965 e!3019213)))

(declare-fun lambda!238185 () Int)

(declare-fun forall!12681 (List!55195 Int) Bool)

(assert (=> b!4831588 (= res!2057965 (not (forall!12681 (toList!7555 lt!1977454) lambda!238185)))))

(declare-fun tail!9437 (ListLongMap!6077) ListLongMap!6077)

(assert (=> b!4831588 (= lt!1977454 (tail!9437 lm!2325))))

(declare-fun key!5594 () K!16757)

(declare-fun containsKey!4438 (List!55194 K!16757) Bool)

(declare-fun apply!13372 (ListLongMap!6077 (_ BitVec 64)) List!55194)

(assert (=> b!4831588 (not (containsKey!4438 (apply!13372 lm!2325 (_1!32474 (h!61505 (toList!7555 lm!2325)))) key!5594))))

(declare-datatypes ((Unit!143893 0))(
  ( (Unit!143894) )
))
(declare-fun lt!1977453 () Unit!143893)

(declare-datatypes ((Hashable!7307 0))(
  ( (HashableExt!7306 (__x!33582 Int)) )
))
(declare-fun hashF!1543 () Hashable!7307)

(declare-fun lemmaNotSameHashThenCannotContainKey!241 (ListLongMap!6077 K!16757 (_ BitVec 64) Hashable!7307) Unit!143893)

(assert (=> b!4831588 (= lt!1977453 (lemmaNotSameHashThenCannotContainKey!241 lm!2325 key!5594 (_1!32474 (h!61505 (toList!7555 lm!2325))) hashF!1543))))

(declare-datatypes ((ListMap!6927 0))(
  ( (ListMap!6928 (toList!7556 List!55194)) )
))
(declare-fun lt!1977452 () ListMap!6927)

(declare-fun e!3019214 () Bool)

(declare-fun contains!18883 (ListMap!6927 K!16757) Bool)

(declare-fun addToMapMapFromBucket!1830 (List!55194 ListMap!6927) ListMap!6927)

(assert (=> b!4831588 (= (contains!18883 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452) key!5594) e!3019214)))

(declare-fun res!2057960 () Bool)

(assert (=> b!4831588 (=> res!2057960 e!3019214)))

(assert (=> b!4831588 (= res!2057960 (containsKey!4438 (_2!32474 (h!61505 (toList!7555 lm!2325))) key!5594))))

(declare-fun lt!1977451 () Unit!143893)

(declare-fun lemmaAddToMapFromBucketContainsIIFInAccOrL!53 (List!55194 ListMap!6927 K!16757) Unit!143893)

(assert (=> b!4831588 (= lt!1977451 (lemmaAddToMapFromBucketContainsIIFInAccOrL!53 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452 key!5594))))

(declare-fun extractMap!2715 (List!55195) ListMap!6927)

(assert (=> b!4831588 (= lt!1977452 (extractMap!2715 (t!362691 (toList!7555 lm!2325))))))

(declare-fun b!4831589 () Bool)

(declare-fun e!3019211 () Bool)

(assert (=> b!4831589 (= e!3019211 e!3019212)))

(declare-fun res!2057964 () Bool)

(assert (=> b!4831589 (=> (not res!2057964) (not e!3019212))))

(assert (=> b!4831589 (= res!2057964 (not (contains!18882 lm!2325 lt!1977450)))))

(declare-fun hash!5484 (Hashable!7307 K!16757) (_ BitVec 64))

(assert (=> b!4831589 (= lt!1977450 (hash!5484 hashF!1543 key!5594))))

(declare-fun b!4831590 () Bool)

(assert (=> b!4831590 (= e!3019214 (contains!18883 lt!1977452 key!5594))))

(declare-fun b!4831591 () Bool)

(declare-fun res!2057961 () Bool)

(assert (=> b!4831591 (=> (not res!2057961) (not e!3019211))))

(declare-fun allKeysSameHashInMap!2623 (ListLongMap!6077 Hashable!7307) Bool)

(assert (=> b!4831591 (= res!2057961 (allKeysSameHashInMap!2623 lm!2325 hashF!1543))))

(declare-fun res!2057967 () Bool)

(assert (=> start!502018 (=> (not res!2057967) (not e!3019211))))

(assert (=> start!502018 (= res!2057967 (forall!12681 (toList!7555 lm!2325) lambda!238185))))

(assert (=> start!502018 e!3019211))

(declare-fun e!3019215 () Bool)

(declare-fun inv!70658 (ListLongMap!6077) Bool)

(assert (=> start!502018 (and (inv!70658 lm!2325) e!3019215)))

(assert (=> start!502018 true))

(declare-fun tp_is_empty!34573 () Bool)

(assert (=> start!502018 tp_is_empty!34573))

(declare-fun b!4831592 () Bool)

(declare-fun res!2057963 () Bool)

(assert (=> b!4831592 (=> res!2057963 e!3019213)))

(assert (=> b!4831592 (= res!2057963 (not (allKeysSameHashInMap!2623 lt!1977454 hashF!1543)))))

(declare-fun b!4831593 () Bool)

(declare-fun tp!1362921 () Bool)

(assert (=> b!4831593 (= e!3019215 tp!1362921)))

(declare-fun b!4831594 () Bool)

(assert (=> b!4831594 (= e!3019213 (not (contains!18883 (extractMap!2715 (toList!7555 lm!2325)) key!5594)))))

(assert (=> b!4831594 (not (contains!18883 (extractMap!2715 (toList!7555 lt!1977454)) key!5594))))

(declare-fun lt!1977455 () Unit!143893)

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!91 (ListLongMap!6077 K!16757 Hashable!7307) Unit!143893)

(assert (=> b!4831594 (= lt!1977455 (lemmaHashNotInLongMapThenNotInGenerated!91 lt!1977454 key!5594 hashF!1543))))

(assert (= (and start!502018 res!2057967) b!4831591))

(assert (= (and b!4831591 res!2057961) b!4831589))

(assert (= (and b!4831589 res!2057964) b!4831586))

(assert (= (and b!4831586 res!2057966) b!4831588))

(assert (= (and b!4831588 (not res!2057960)) b!4831590))

(assert (= (and b!4831588 (not res!2057965)) b!4831592))

(assert (= (and b!4831592 (not res!2057963)) b!4831587))

(assert (= (and b!4831587 (not res!2057962)) b!4831594))

(assert (= start!502018 b!4831593))

(declare-fun m!5825182 () Bool)

(assert (=> b!4831587 m!5825182))

(declare-fun m!5825184 () Bool)

(assert (=> b!4831592 m!5825184))

(declare-fun m!5825186 () Bool)

(assert (=> b!4831590 m!5825186))

(declare-fun m!5825188 () Bool)

(assert (=> b!4831589 m!5825188))

(declare-fun m!5825190 () Bool)

(assert (=> b!4831589 m!5825190))

(declare-fun m!5825192 () Bool)

(assert (=> b!4831588 m!5825192))

(declare-fun m!5825194 () Bool)

(assert (=> b!4831588 m!5825194))

(declare-fun m!5825196 () Bool)

(assert (=> b!4831588 m!5825196))

(declare-fun m!5825198 () Bool)

(assert (=> b!4831588 m!5825198))

(declare-fun m!5825200 () Bool)

(assert (=> b!4831588 m!5825200))

(declare-fun m!5825202 () Bool)

(assert (=> b!4831588 m!5825202))

(declare-fun m!5825204 () Bool)

(assert (=> b!4831588 m!5825204))

(assert (=> b!4831588 m!5825200))

(declare-fun m!5825206 () Bool)

(assert (=> b!4831588 m!5825206))

(declare-fun m!5825208 () Bool)

(assert (=> b!4831588 m!5825208))

(declare-fun m!5825210 () Bool)

(assert (=> b!4831588 m!5825210))

(assert (=> b!4831588 m!5825196))

(declare-fun m!5825212 () Bool)

(assert (=> start!502018 m!5825212))

(declare-fun m!5825214 () Bool)

(assert (=> start!502018 m!5825214))

(declare-fun m!5825216 () Bool)

(assert (=> b!4831591 m!5825216))

(declare-fun m!5825218 () Bool)

(assert (=> b!4831594 m!5825218))

(declare-fun m!5825220 () Bool)

(assert (=> b!4831594 m!5825220))

(declare-fun m!5825222 () Bool)

(assert (=> b!4831594 m!5825222))

(assert (=> b!4831594 m!5825220))

(assert (=> b!4831594 m!5825218))

(declare-fun m!5825224 () Bool)

(assert (=> b!4831594 m!5825224))

(declare-fun m!5825226 () Bool)

(assert (=> b!4831594 m!5825226))

(push 1)

(assert (not start!502018))

(assert (not b!4831590))

(assert (not b!4831589))

(assert (not b!4831587))

(assert (not b!4831591))

(assert tp_is_empty!34573)

(assert (not b!4831592))

(assert (not b!4831588))

(assert (not b!4831594))

(assert (not b!4831593))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4831640 () Bool)

(declare-fun e!3019248 () Unit!143893)

(declare-fun lt!1977491 () Unit!143893)

(assert (=> b!4831640 (= e!3019248 lt!1977491)))

(declare-fun lt!1977497 () Unit!143893)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2441 (List!55194 K!16757) Unit!143893)

(assert (=> b!4831640 (= lt!1977497 (lemmaContainsKeyImpliesGetValueByKeyDefined!2441 (toList!7556 lt!1977452) key!5594))))

(declare-datatypes ((Option!13529 0))(
  ( (None!13528) (Some!13528 (v!49225 V!17003)) )
))
(declare-fun isDefined!10644 (Option!13529) Bool)

(declare-fun getValueByKey!2656 (List!55194 K!16757) Option!13529)

(assert (=> b!4831640 (isDefined!10644 (getValueByKey!2656 (toList!7556 lt!1977452) key!5594))))

(declare-fun lt!1977494 () Unit!143893)

(assert (=> b!4831640 (= lt!1977494 lt!1977497)))

(declare-fun lemmaInListThenGetKeysListContains!1170 (List!55194 K!16757) Unit!143893)

(assert (=> b!4831640 (= lt!1977491 (lemmaInListThenGetKeysListContains!1170 (toList!7556 lt!1977452) key!5594))))

(declare-fun call!336703 () Bool)

(assert (=> b!4831640 call!336703))

(declare-fun b!4831641 () Bool)

(declare-fun e!3019244 () Bool)

(declare-fun e!3019246 () Bool)

(assert (=> b!4831641 (= e!3019244 e!3019246)))

(declare-fun res!2058000 () Bool)

(assert (=> b!4831641 (=> (not res!2058000) (not e!3019246))))

(assert (=> b!4831641 (= res!2058000 (isDefined!10644 (getValueByKey!2656 (toList!7556 lt!1977452) key!5594)))))

(declare-fun d!1549073 () Bool)

(assert (=> d!1549073 e!3019244))

(declare-fun res!2057999 () Bool)

(assert (=> d!1549073 (=> res!2057999 e!3019244)))

(declare-fun e!3019243 () Bool)

(assert (=> d!1549073 (= res!2057999 e!3019243)))

(declare-fun res!2057998 () Bool)

(assert (=> d!1549073 (=> (not res!2057998) (not e!3019243))))

(declare-fun lt!1977492 () Bool)

(assert (=> d!1549073 (= res!2057998 (not lt!1977492))))

(declare-fun lt!1977493 () Bool)

(assert (=> d!1549073 (= lt!1977492 lt!1977493)))

(declare-fun lt!1977496 () Unit!143893)

(assert (=> d!1549073 (= lt!1977496 e!3019248)))

(declare-fun c!823275 () Bool)

(assert (=> d!1549073 (= c!823275 lt!1977493)))

(declare-fun containsKey!4440 (List!55194 K!16757) Bool)

(assert (=> d!1549073 (= lt!1977493 (containsKey!4440 (toList!7556 lt!1977452) key!5594))))

(assert (=> d!1549073 (= (contains!18883 lt!1977452 key!5594) lt!1977492)))

(declare-fun bm!336698 () Bool)

(declare-datatypes ((List!55198 0))(
  ( (Nil!55074) (Cons!55074 (h!61508 K!16757) (t!362694 List!55198)) )
))
(declare-fun e!3019247 () List!55198)

(declare-fun contains!18886 (List!55198 K!16757) Bool)

(assert (=> bm!336698 (= call!336703 (contains!18886 e!3019247 key!5594))))

(declare-fun c!823276 () Bool)

(assert (=> bm!336698 (= c!823276 c!823275)))

(declare-fun b!4831642 () Bool)

(declare-fun keys!20284 (ListMap!6927) List!55198)

(assert (=> b!4831642 (= e!3019246 (contains!18886 (keys!20284 lt!1977452) key!5594))))

(declare-fun b!4831643 () Bool)

(declare-fun e!3019245 () Unit!143893)

(assert (=> b!4831643 (= e!3019248 e!3019245)))

(declare-fun c!823274 () Bool)

(assert (=> b!4831643 (= c!823274 call!336703)))

(declare-fun b!4831644 () Bool)

(assert (=> b!4831644 (= e!3019247 (keys!20284 lt!1977452))))

(declare-fun b!4831645 () Bool)

(assert (=> b!4831645 (= e!3019243 (not (contains!18886 (keys!20284 lt!1977452) key!5594)))))

(declare-fun b!4831646 () Bool)

(assert (=> b!4831646 false))

(declare-fun lt!1977490 () Unit!143893)

(declare-fun lt!1977495 () Unit!143893)

(assert (=> b!4831646 (= lt!1977490 lt!1977495)))

(assert (=> b!4831646 (containsKey!4440 (toList!7556 lt!1977452) key!5594)))

(declare-fun lemmaInGetKeysListThenContainsKey!1175 (List!55194 K!16757) Unit!143893)

(assert (=> b!4831646 (= lt!1977495 (lemmaInGetKeysListThenContainsKey!1175 (toList!7556 lt!1977452) key!5594))))

(declare-fun Unit!143897 () Unit!143893)

(assert (=> b!4831646 (= e!3019245 Unit!143897)))

(declare-fun b!4831647 () Bool)

(declare-fun Unit!143898 () Unit!143893)

(assert (=> b!4831647 (= e!3019245 Unit!143898)))

(declare-fun b!4831648 () Bool)

(declare-fun getKeysList!1175 (List!55194) List!55198)

(assert (=> b!4831648 (= e!3019247 (getKeysList!1175 (toList!7556 lt!1977452)))))

(assert (= (and d!1549073 c!823275) b!4831640))

(assert (= (and d!1549073 (not c!823275)) b!4831643))

(assert (= (and b!4831643 c!823274) b!4831646))

(assert (= (and b!4831643 (not c!823274)) b!4831647))

(assert (= (or b!4831640 b!4831643) bm!336698))

(assert (= (and bm!336698 c!823276) b!4831648))

(assert (= (and bm!336698 (not c!823276)) b!4831644))

(assert (= (and d!1549073 res!2057998) b!4831645))

(assert (= (and d!1549073 (not res!2057999)) b!4831641))

(assert (= (and b!4831641 res!2058000) b!4831642))

(declare-fun m!5825274 () Bool)

(assert (=> b!4831641 m!5825274))

(assert (=> b!4831641 m!5825274))

(declare-fun m!5825276 () Bool)

(assert (=> b!4831641 m!5825276))

(declare-fun m!5825278 () Bool)

(assert (=> b!4831648 m!5825278))

(declare-fun m!5825280 () Bool)

(assert (=> bm!336698 m!5825280))

(declare-fun m!5825282 () Bool)

(assert (=> b!4831644 m!5825282))

(assert (=> b!4831642 m!5825282))

(assert (=> b!4831642 m!5825282))

(declare-fun m!5825284 () Bool)

(assert (=> b!4831642 m!5825284))

(declare-fun m!5825286 () Bool)

(assert (=> b!4831646 m!5825286))

(declare-fun m!5825288 () Bool)

(assert (=> b!4831646 m!5825288))

(assert (=> b!4831645 m!5825282))

(assert (=> b!4831645 m!5825282))

(assert (=> b!4831645 m!5825284))

(declare-fun m!5825290 () Bool)

(assert (=> b!4831640 m!5825290))

(assert (=> b!4831640 m!5825274))

(assert (=> b!4831640 m!5825274))

(assert (=> b!4831640 m!5825276))

(declare-fun m!5825292 () Bool)

(assert (=> b!4831640 m!5825292))

(assert (=> d!1549073 m!5825286))

(assert (=> b!4831590 d!1549073))

(declare-fun b!4831649 () Bool)

(declare-fun e!3019254 () Unit!143893)

(declare-fun lt!1977499 () Unit!143893)

(assert (=> b!4831649 (= e!3019254 lt!1977499)))

(declare-fun lt!1977505 () Unit!143893)

(assert (=> b!4831649 (= lt!1977505 (lemmaContainsKeyImpliesGetValueByKeyDefined!2441 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))) key!5594))))

(assert (=> b!4831649 (isDefined!10644 (getValueByKey!2656 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))) key!5594))))

(declare-fun lt!1977502 () Unit!143893)

(assert (=> b!4831649 (= lt!1977502 lt!1977505)))

(assert (=> b!4831649 (= lt!1977499 (lemmaInListThenGetKeysListContains!1170 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))) key!5594))))

(declare-fun call!336704 () Bool)

(assert (=> b!4831649 call!336704))

(declare-fun b!4831650 () Bool)

(declare-fun e!3019250 () Bool)

(declare-fun e!3019252 () Bool)

(assert (=> b!4831650 (= e!3019250 e!3019252)))

(declare-fun res!2058003 () Bool)

(assert (=> b!4831650 (=> (not res!2058003) (not e!3019252))))

(assert (=> b!4831650 (= res!2058003 (isDefined!10644 (getValueByKey!2656 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))) key!5594)))))

(declare-fun d!1549075 () Bool)

(assert (=> d!1549075 e!3019250))

(declare-fun res!2058002 () Bool)

(assert (=> d!1549075 (=> res!2058002 e!3019250)))

(declare-fun e!3019249 () Bool)

(assert (=> d!1549075 (= res!2058002 e!3019249)))

(declare-fun res!2058001 () Bool)

(assert (=> d!1549075 (=> (not res!2058001) (not e!3019249))))

(declare-fun lt!1977500 () Bool)

(assert (=> d!1549075 (= res!2058001 (not lt!1977500))))

(declare-fun lt!1977501 () Bool)

(assert (=> d!1549075 (= lt!1977500 lt!1977501)))

(declare-fun lt!1977504 () Unit!143893)

(assert (=> d!1549075 (= lt!1977504 e!3019254)))

(declare-fun c!823278 () Bool)

(assert (=> d!1549075 (= c!823278 lt!1977501)))

(assert (=> d!1549075 (= lt!1977501 (containsKey!4440 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))) key!5594))))

(assert (=> d!1549075 (= (contains!18883 (extractMap!2715 (toList!7555 lt!1977454)) key!5594) lt!1977500)))

(declare-fun bm!336699 () Bool)

(declare-fun e!3019253 () List!55198)

(assert (=> bm!336699 (= call!336704 (contains!18886 e!3019253 key!5594))))

(declare-fun c!823279 () Bool)

(assert (=> bm!336699 (= c!823279 c!823278)))

(declare-fun b!4831651 () Bool)

(assert (=> b!4831651 (= e!3019252 (contains!18886 (keys!20284 (extractMap!2715 (toList!7555 lt!1977454))) key!5594))))

(declare-fun b!4831652 () Bool)

(declare-fun e!3019251 () Unit!143893)

(assert (=> b!4831652 (= e!3019254 e!3019251)))

(declare-fun c!823277 () Bool)

(assert (=> b!4831652 (= c!823277 call!336704)))

(declare-fun b!4831653 () Bool)

(assert (=> b!4831653 (= e!3019253 (keys!20284 (extractMap!2715 (toList!7555 lt!1977454))))))

(declare-fun b!4831654 () Bool)

(assert (=> b!4831654 (= e!3019249 (not (contains!18886 (keys!20284 (extractMap!2715 (toList!7555 lt!1977454))) key!5594)))))

(declare-fun b!4831655 () Bool)

(assert (=> b!4831655 false))

(declare-fun lt!1977498 () Unit!143893)

(declare-fun lt!1977503 () Unit!143893)

(assert (=> b!4831655 (= lt!1977498 lt!1977503)))

(assert (=> b!4831655 (containsKey!4440 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))) key!5594)))

(assert (=> b!4831655 (= lt!1977503 (lemmaInGetKeysListThenContainsKey!1175 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))) key!5594))))

(declare-fun Unit!143899 () Unit!143893)

(assert (=> b!4831655 (= e!3019251 Unit!143899)))

(declare-fun b!4831656 () Bool)

(declare-fun Unit!143900 () Unit!143893)

(assert (=> b!4831656 (= e!3019251 Unit!143900)))

(declare-fun b!4831657 () Bool)

(assert (=> b!4831657 (= e!3019253 (getKeysList!1175 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))))))

(assert (= (and d!1549075 c!823278) b!4831649))

(assert (= (and d!1549075 (not c!823278)) b!4831652))

(assert (= (and b!4831652 c!823277) b!4831655))

(assert (= (and b!4831652 (not c!823277)) b!4831656))

(assert (= (or b!4831649 b!4831652) bm!336699))

(assert (= (and bm!336699 c!823279) b!4831657))

(assert (= (and bm!336699 (not c!823279)) b!4831653))

(assert (= (and d!1549075 res!2058001) b!4831654))

(assert (= (and d!1549075 (not res!2058002)) b!4831650))

(assert (= (and b!4831650 res!2058003) b!4831651))

(declare-fun m!5825294 () Bool)

(assert (=> b!4831650 m!5825294))

(assert (=> b!4831650 m!5825294))

(declare-fun m!5825296 () Bool)

(assert (=> b!4831650 m!5825296))

(declare-fun m!5825298 () Bool)

(assert (=> b!4831657 m!5825298))

(declare-fun m!5825300 () Bool)

(assert (=> bm!336699 m!5825300))

(assert (=> b!4831653 m!5825220))

(declare-fun m!5825302 () Bool)

(assert (=> b!4831653 m!5825302))

(assert (=> b!4831651 m!5825220))

(assert (=> b!4831651 m!5825302))

(assert (=> b!4831651 m!5825302))

(declare-fun m!5825304 () Bool)

(assert (=> b!4831651 m!5825304))

(declare-fun m!5825306 () Bool)

(assert (=> b!4831655 m!5825306))

(declare-fun m!5825308 () Bool)

(assert (=> b!4831655 m!5825308))

(assert (=> b!4831654 m!5825220))

(assert (=> b!4831654 m!5825302))

(assert (=> b!4831654 m!5825302))

(assert (=> b!4831654 m!5825304))

(declare-fun m!5825310 () Bool)

(assert (=> b!4831649 m!5825310))

(assert (=> b!4831649 m!5825294))

(assert (=> b!4831649 m!5825294))

(assert (=> b!4831649 m!5825296))

(declare-fun m!5825312 () Bool)

(assert (=> b!4831649 m!5825312))

(assert (=> d!1549075 m!5825306))

(assert (=> b!4831594 d!1549075))

(declare-fun b!4831658 () Bool)

(declare-fun e!3019260 () Unit!143893)

(declare-fun lt!1977507 () Unit!143893)

(assert (=> b!4831658 (= e!3019260 lt!1977507)))

(declare-fun lt!1977513 () Unit!143893)

(assert (=> b!4831658 (= lt!1977513 (lemmaContainsKeyImpliesGetValueByKeyDefined!2441 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))) key!5594))))

(assert (=> b!4831658 (isDefined!10644 (getValueByKey!2656 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))) key!5594))))

(declare-fun lt!1977510 () Unit!143893)

(assert (=> b!4831658 (= lt!1977510 lt!1977513)))

(assert (=> b!4831658 (= lt!1977507 (lemmaInListThenGetKeysListContains!1170 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))) key!5594))))

(declare-fun call!336705 () Bool)

(assert (=> b!4831658 call!336705))

(declare-fun b!4831659 () Bool)

(declare-fun e!3019256 () Bool)

(declare-fun e!3019258 () Bool)

(assert (=> b!4831659 (= e!3019256 e!3019258)))

(declare-fun res!2058006 () Bool)

(assert (=> b!4831659 (=> (not res!2058006) (not e!3019258))))

(assert (=> b!4831659 (= res!2058006 (isDefined!10644 (getValueByKey!2656 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))) key!5594)))))

(declare-fun d!1549077 () Bool)

(assert (=> d!1549077 e!3019256))

(declare-fun res!2058005 () Bool)

(assert (=> d!1549077 (=> res!2058005 e!3019256)))

(declare-fun e!3019255 () Bool)

(assert (=> d!1549077 (= res!2058005 e!3019255)))

(declare-fun res!2058004 () Bool)

(assert (=> d!1549077 (=> (not res!2058004) (not e!3019255))))

(declare-fun lt!1977508 () Bool)

(assert (=> d!1549077 (= res!2058004 (not lt!1977508))))

(declare-fun lt!1977509 () Bool)

(assert (=> d!1549077 (= lt!1977508 lt!1977509)))

(declare-fun lt!1977512 () Unit!143893)

(assert (=> d!1549077 (= lt!1977512 e!3019260)))

(declare-fun c!823281 () Bool)

(assert (=> d!1549077 (= c!823281 lt!1977509)))

(assert (=> d!1549077 (= lt!1977509 (containsKey!4440 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))) key!5594))))

(assert (=> d!1549077 (= (contains!18883 (extractMap!2715 (toList!7555 lm!2325)) key!5594) lt!1977508)))

(declare-fun bm!336700 () Bool)

(declare-fun e!3019259 () List!55198)

(assert (=> bm!336700 (= call!336705 (contains!18886 e!3019259 key!5594))))

(declare-fun c!823282 () Bool)

(assert (=> bm!336700 (= c!823282 c!823281)))

(declare-fun b!4831660 () Bool)

(assert (=> b!4831660 (= e!3019258 (contains!18886 (keys!20284 (extractMap!2715 (toList!7555 lm!2325))) key!5594))))

(declare-fun b!4831661 () Bool)

(declare-fun e!3019257 () Unit!143893)

(assert (=> b!4831661 (= e!3019260 e!3019257)))

(declare-fun c!823280 () Bool)

(assert (=> b!4831661 (= c!823280 call!336705)))

(declare-fun b!4831662 () Bool)

(assert (=> b!4831662 (= e!3019259 (keys!20284 (extractMap!2715 (toList!7555 lm!2325))))))

(declare-fun b!4831663 () Bool)

(assert (=> b!4831663 (= e!3019255 (not (contains!18886 (keys!20284 (extractMap!2715 (toList!7555 lm!2325))) key!5594)))))

(declare-fun b!4831664 () Bool)

(assert (=> b!4831664 false))

(declare-fun lt!1977506 () Unit!143893)

(declare-fun lt!1977511 () Unit!143893)

(assert (=> b!4831664 (= lt!1977506 lt!1977511)))

(assert (=> b!4831664 (containsKey!4440 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))) key!5594)))

(assert (=> b!4831664 (= lt!1977511 (lemmaInGetKeysListThenContainsKey!1175 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))) key!5594))))

(declare-fun Unit!143901 () Unit!143893)

(assert (=> b!4831664 (= e!3019257 Unit!143901)))

(declare-fun b!4831665 () Bool)

(declare-fun Unit!143902 () Unit!143893)

(assert (=> b!4831665 (= e!3019257 Unit!143902)))

(declare-fun b!4831666 () Bool)

(assert (=> b!4831666 (= e!3019259 (getKeysList!1175 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))))))

(assert (= (and d!1549077 c!823281) b!4831658))

(assert (= (and d!1549077 (not c!823281)) b!4831661))

(assert (= (and b!4831661 c!823280) b!4831664))

(assert (= (and b!4831661 (not c!823280)) b!4831665))

(assert (= (or b!4831658 b!4831661) bm!336700))

(assert (= (and bm!336700 c!823282) b!4831666))

(assert (= (and bm!336700 (not c!823282)) b!4831662))

(assert (= (and d!1549077 res!2058004) b!4831663))

(assert (= (and d!1549077 (not res!2058005)) b!4831659))

(assert (= (and b!4831659 res!2058006) b!4831660))

(declare-fun m!5825314 () Bool)

(assert (=> b!4831659 m!5825314))

(assert (=> b!4831659 m!5825314))

(declare-fun m!5825316 () Bool)

(assert (=> b!4831659 m!5825316))

(declare-fun m!5825318 () Bool)

(assert (=> b!4831666 m!5825318))

(declare-fun m!5825320 () Bool)

(assert (=> bm!336700 m!5825320))

(assert (=> b!4831662 m!5825218))

(declare-fun m!5825322 () Bool)

(assert (=> b!4831662 m!5825322))

(assert (=> b!4831660 m!5825218))

(assert (=> b!4831660 m!5825322))

(assert (=> b!4831660 m!5825322))

(declare-fun m!5825324 () Bool)

(assert (=> b!4831660 m!5825324))

(declare-fun m!5825326 () Bool)

(assert (=> b!4831664 m!5825326))

(declare-fun m!5825328 () Bool)

(assert (=> b!4831664 m!5825328))

(assert (=> b!4831663 m!5825218))

(assert (=> b!4831663 m!5825322))

(assert (=> b!4831663 m!5825322))

(assert (=> b!4831663 m!5825324))

(declare-fun m!5825330 () Bool)

(assert (=> b!4831658 m!5825330))

(assert (=> b!4831658 m!5825314))

(assert (=> b!4831658 m!5825314))

(assert (=> b!4831658 m!5825316))

(declare-fun m!5825332 () Bool)

(assert (=> b!4831658 m!5825332))

(assert (=> d!1549077 m!5825326))

(assert (=> b!4831594 d!1549077))

(declare-fun bs!1166350 () Bool)

(declare-fun d!1549081 () Bool)

(assert (= bs!1166350 (and d!1549081 start!502018)))

(declare-fun lambda!238197 () Int)

(assert (=> bs!1166350 (= lambda!238197 lambda!238185)))

(declare-fun lt!1977516 () ListMap!6927)

(declare-fun invariantList!1829 (List!55194) Bool)

(assert (=> d!1549081 (invariantList!1829 (toList!7556 lt!1977516))))

(declare-fun e!3019263 () ListMap!6927)

(assert (=> d!1549081 (= lt!1977516 e!3019263)))

(declare-fun c!823285 () Bool)

(assert (=> d!1549081 (= c!823285 (is-Cons!55071 (toList!7555 lt!1977454)))))

(assert (=> d!1549081 (forall!12681 (toList!7555 lt!1977454) lambda!238197)))

(assert (=> d!1549081 (= (extractMap!2715 (toList!7555 lt!1977454)) lt!1977516)))

(declare-fun b!4831673 () Bool)

(assert (=> b!4831673 (= e!3019263 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lt!1977454))) (extractMap!2715 (t!362691 (toList!7555 lt!1977454)))))))

(declare-fun b!4831674 () Bool)

(assert (=> b!4831674 (= e!3019263 (ListMap!6928 Nil!55070))))

(assert (= (and d!1549081 c!823285) b!4831673))

(assert (= (and d!1549081 (not c!823285)) b!4831674))

(declare-fun m!5825338 () Bool)

(assert (=> d!1549081 m!5825338))

(declare-fun m!5825340 () Bool)

(assert (=> d!1549081 m!5825340))

(declare-fun m!5825342 () Bool)

(assert (=> b!4831673 m!5825342))

(assert (=> b!4831673 m!5825342))

(declare-fun m!5825344 () Bool)

(assert (=> b!4831673 m!5825344))

(assert (=> b!4831594 d!1549081))

(declare-fun bs!1166351 () Bool)

(declare-fun d!1549087 () Bool)

(assert (= bs!1166351 (and d!1549087 start!502018)))

(declare-fun lambda!238198 () Int)

(assert (=> bs!1166351 (= lambda!238198 lambda!238185)))

(declare-fun bs!1166352 () Bool)

(assert (= bs!1166352 (and d!1549087 d!1549081)))

(assert (=> bs!1166352 (= lambda!238198 lambda!238197)))

(declare-fun lt!1977517 () ListMap!6927)

(assert (=> d!1549087 (invariantList!1829 (toList!7556 lt!1977517))))

(declare-fun e!3019264 () ListMap!6927)

(assert (=> d!1549087 (= lt!1977517 e!3019264)))

(declare-fun c!823286 () Bool)

(assert (=> d!1549087 (= c!823286 (is-Cons!55071 (toList!7555 lm!2325)))))

(assert (=> d!1549087 (forall!12681 (toList!7555 lm!2325) lambda!238198)))

(assert (=> d!1549087 (= (extractMap!2715 (toList!7555 lm!2325)) lt!1977517)))

(declare-fun b!4831675 () Bool)

(assert (=> b!4831675 (= e!3019264 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) (extractMap!2715 (t!362691 (toList!7555 lm!2325)))))))

(declare-fun b!4831676 () Bool)

(assert (=> b!4831676 (= e!3019264 (ListMap!6928 Nil!55070))))

(assert (= (and d!1549087 c!823286) b!4831675))

(assert (= (and d!1549087 (not c!823286)) b!4831676))

(declare-fun m!5825346 () Bool)

(assert (=> d!1549087 m!5825346))

(declare-fun m!5825348 () Bool)

(assert (=> d!1549087 m!5825348))

(assert (=> b!4831675 m!5825192))

(assert (=> b!4831675 m!5825192))

(declare-fun m!5825350 () Bool)

(assert (=> b!4831675 m!5825350))

(assert (=> b!4831594 d!1549087))

(declare-fun bs!1166353 () Bool)

(declare-fun d!1549089 () Bool)

(assert (= bs!1166353 (and d!1549089 start!502018)))

(declare-fun lambda!238201 () Int)

(assert (=> bs!1166353 (= lambda!238201 lambda!238185)))

(declare-fun bs!1166354 () Bool)

(assert (= bs!1166354 (and d!1549089 d!1549081)))

(assert (=> bs!1166354 (= lambda!238201 lambda!238197)))

(declare-fun bs!1166355 () Bool)

(assert (= bs!1166355 (and d!1549089 d!1549087)))

(assert (=> bs!1166355 (= lambda!238201 lambda!238198)))

(assert (=> d!1549089 (not (contains!18883 (extractMap!2715 (toList!7555 lt!1977454)) key!5594))))

(declare-fun lt!1977528 () Unit!143893)

(declare-fun choose!35271 (ListLongMap!6077 K!16757 Hashable!7307) Unit!143893)

(assert (=> d!1549089 (= lt!1977528 (choose!35271 lt!1977454 key!5594 hashF!1543))))

(assert (=> d!1549089 (forall!12681 (toList!7555 lt!1977454) lambda!238201)))

(assert (=> d!1549089 (= (lemmaHashNotInLongMapThenNotInGenerated!91 lt!1977454 key!5594 hashF!1543) lt!1977528)))

(declare-fun bs!1166356 () Bool)

(assert (= bs!1166356 d!1549089))

(assert (=> bs!1166356 m!5825220))

(assert (=> bs!1166356 m!5825220))

(assert (=> bs!1166356 m!5825222))

(declare-fun m!5825352 () Bool)

(assert (=> bs!1166356 m!5825352))

(declare-fun m!5825354 () Bool)

(assert (=> bs!1166356 m!5825354))

(assert (=> b!4831594 d!1549089))

(declare-fun d!1549091 () Bool)

(declare-fun res!2058013 () Bool)

(declare-fun e!3019273 () Bool)

(assert (=> d!1549091 (=> res!2058013 e!3019273)))

(assert (=> d!1549091 (= res!2058013 (is-Nil!55071 (toList!7555 lm!2325)))))

(assert (=> d!1549091 (= (forall!12681 (toList!7555 lm!2325) lambda!238185) e!3019273)))

(declare-fun b!4831687 () Bool)

(declare-fun e!3019274 () Bool)

(assert (=> b!4831687 (= e!3019273 e!3019274)))

(declare-fun res!2058014 () Bool)

(assert (=> b!4831687 (=> (not res!2058014) (not e!3019274))))

(declare-fun dynLambda!22250 (Int tuple2!58360) Bool)

(assert (=> b!4831687 (= res!2058014 (dynLambda!22250 lambda!238185 (h!61505 (toList!7555 lm!2325))))))

(declare-fun b!4831688 () Bool)

(assert (=> b!4831688 (= e!3019274 (forall!12681 (t!362691 (toList!7555 lm!2325)) lambda!238185))))

(assert (= (and d!1549091 (not res!2058013)) b!4831687))

(assert (= (and b!4831687 res!2058014) b!4831688))

(declare-fun b_lambda!190791 () Bool)

(assert (=> (not b_lambda!190791) (not b!4831687)))

(declare-fun m!5825356 () Bool)

(assert (=> b!4831687 m!5825356))

(declare-fun m!5825358 () Bool)

(assert (=> b!4831688 m!5825358))

(assert (=> start!502018 d!1549091))

(declare-fun d!1549093 () Bool)

(declare-fun isStrictlySorted!1004 (List!55195) Bool)

(assert (=> d!1549093 (= (inv!70658 lm!2325) (isStrictlySorted!1004 (toList!7555 lm!2325)))))

(declare-fun bs!1166357 () Bool)

(assert (= bs!1166357 d!1549093))

(declare-fun m!5825366 () Bool)

(assert (=> bs!1166357 m!5825366))

(assert (=> start!502018 d!1549093))

(declare-fun d!1549095 () Bool)

(declare-fun e!3019282 () Bool)

(assert (=> d!1549095 e!3019282))

(declare-fun res!2058018 () Bool)

(assert (=> d!1549095 (=> res!2058018 e!3019282)))

(declare-fun lt!1977542 () Bool)

(assert (=> d!1549095 (= res!2058018 (not lt!1977542))))

(declare-fun lt!1977541 () Bool)

(assert (=> d!1549095 (= lt!1977542 lt!1977541)))

(declare-fun lt!1977543 () Unit!143893)

(declare-fun e!3019281 () Unit!143893)

(assert (=> d!1549095 (= lt!1977543 e!3019281)))

(declare-fun c!823292 () Bool)

(assert (=> d!1549095 (= c!823292 lt!1977541)))

(declare-fun containsKey!4441 (List!55195 (_ BitVec 64)) Bool)

(assert (=> d!1549095 (= lt!1977541 (containsKey!4441 (toList!7555 lm!2325) lt!1977450))))

(assert (=> d!1549095 (= (contains!18882 lm!2325 lt!1977450) lt!1977542)))

(declare-fun b!4831698 () Bool)

(declare-fun lt!1977544 () Unit!143893)

(assert (=> b!4831698 (= e!3019281 lt!1977544)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2442 (List!55195 (_ BitVec 64)) Unit!143893)

(assert (=> b!4831698 (= lt!1977544 (lemmaContainsKeyImpliesGetValueByKeyDefined!2442 (toList!7555 lm!2325) lt!1977450))))

(declare-datatypes ((Option!13530 0))(
  ( (None!13529) (Some!13529 (v!49226 List!55194)) )
))
(declare-fun isDefined!10645 (Option!13530) Bool)

(declare-fun getValueByKey!2657 (List!55195 (_ BitVec 64)) Option!13530)

(assert (=> b!4831698 (isDefined!10645 (getValueByKey!2657 (toList!7555 lm!2325) lt!1977450))))

(declare-fun b!4831699 () Bool)

(declare-fun Unit!143903 () Unit!143893)

(assert (=> b!4831699 (= e!3019281 Unit!143903)))

(declare-fun b!4831700 () Bool)

(assert (=> b!4831700 (= e!3019282 (isDefined!10645 (getValueByKey!2657 (toList!7555 lm!2325) lt!1977450)))))

(assert (= (and d!1549095 c!823292) b!4831698))

(assert (= (and d!1549095 (not c!823292)) b!4831699))

(assert (= (and d!1549095 (not res!2058018)) b!4831700))

(declare-fun m!5825372 () Bool)

(assert (=> d!1549095 m!5825372))

(declare-fun m!5825374 () Bool)

(assert (=> b!4831698 m!5825374))

(declare-fun m!5825376 () Bool)

(assert (=> b!4831698 m!5825376))

(assert (=> b!4831698 m!5825376))

(declare-fun m!5825378 () Bool)

(assert (=> b!4831698 m!5825378))

(assert (=> b!4831700 m!5825376))

(assert (=> b!4831700 m!5825376))

(assert (=> b!4831700 m!5825378))

(assert (=> b!4831589 d!1549095))

(declare-fun d!1549101 () Bool)

(declare-fun hash!5487 (Hashable!7307 K!16757) (_ BitVec 64))

(assert (=> d!1549101 (= (hash!5484 hashF!1543 key!5594) (hash!5487 hashF!1543 key!5594))))

(declare-fun bs!1166359 () Bool)

(assert (= bs!1166359 d!1549101))

(declare-fun m!5825380 () Bool)

(assert (=> bs!1166359 m!5825380))

(assert (=> b!4831589 d!1549101))

(declare-fun d!1549103 () Bool)

(declare-fun res!2058019 () Bool)

(declare-fun e!3019283 () Bool)

(assert (=> d!1549103 (=> res!2058019 e!3019283)))

(assert (=> d!1549103 (= res!2058019 (is-Nil!55071 (toList!7555 lt!1977454)))))

(assert (=> d!1549103 (= (forall!12681 (toList!7555 lt!1977454) lambda!238185) e!3019283)))

(declare-fun b!4831701 () Bool)

(declare-fun e!3019284 () Bool)

(assert (=> b!4831701 (= e!3019283 e!3019284)))

(declare-fun res!2058020 () Bool)

(assert (=> b!4831701 (=> (not res!2058020) (not e!3019284))))

(assert (=> b!4831701 (= res!2058020 (dynLambda!22250 lambda!238185 (h!61505 (toList!7555 lt!1977454))))))

(declare-fun b!4831702 () Bool)

(assert (=> b!4831702 (= e!3019284 (forall!12681 (t!362691 (toList!7555 lt!1977454)) lambda!238185))))

(assert (= (and d!1549103 (not res!2058019)) b!4831701))

(assert (= (and b!4831701 res!2058020) b!4831702))

(declare-fun b_lambda!190793 () Bool)

(assert (=> (not b_lambda!190793) (not b!4831701)))

(declare-fun m!5825382 () Bool)

(assert (=> b!4831701 m!5825382))

(declare-fun m!5825384 () Bool)

(assert (=> b!4831702 m!5825384))

(assert (=> b!4831588 d!1549103))

(declare-fun d!1549105 () Bool)

(declare-fun res!2058025 () Bool)

(declare-fun e!3019289 () Bool)

(assert (=> d!1549105 (=> res!2058025 e!3019289)))

(assert (=> d!1549105 (= res!2058025 (and (is-Cons!55070 (apply!13372 lm!2325 (_1!32474 (h!61505 (toList!7555 lm!2325))))) (= (_1!32473 (h!61504 (apply!13372 lm!2325 (_1!32474 (h!61505 (toList!7555 lm!2325)))))) key!5594)))))

(assert (=> d!1549105 (= (containsKey!4438 (apply!13372 lm!2325 (_1!32474 (h!61505 (toList!7555 lm!2325)))) key!5594) e!3019289)))

(declare-fun b!4831707 () Bool)

(declare-fun e!3019290 () Bool)

(assert (=> b!4831707 (= e!3019289 e!3019290)))

(declare-fun res!2058026 () Bool)

(assert (=> b!4831707 (=> (not res!2058026) (not e!3019290))))

(assert (=> b!4831707 (= res!2058026 (is-Cons!55070 (apply!13372 lm!2325 (_1!32474 (h!61505 (toList!7555 lm!2325))))))))

(declare-fun b!4831708 () Bool)

(assert (=> b!4831708 (= e!3019290 (containsKey!4438 (t!362690 (apply!13372 lm!2325 (_1!32474 (h!61505 (toList!7555 lm!2325))))) key!5594))))

(assert (= (and d!1549105 (not res!2058025)) b!4831707))

(assert (= (and b!4831707 res!2058026) b!4831708))

(declare-fun m!5825386 () Bool)

(assert (=> b!4831708 m!5825386))

(assert (=> b!4831588 d!1549105))

(declare-fun d!1549107 () Bool)

(declare-fun res!2058027 () Bool)

(declare-fun e!3019291 () Bool)

(assert (=> d!1549107 (=> res!2058027 e!3019291)))

(assert (=> d!1549107 (= res!2058027 (and (is-Cons!55070 (_2!32474 (h!61505 (toList!7555 lm!2325)))) (= (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))) key!5594)))))

(assert (=> d!1549107 (= (containsKey!4438 (_2!32474 (h!61505 (toList!7555 lm!2325))) key!5594) e!3019291)))

(declare-fun b!4831709 () Bool)

(declare-fun e!3019292 () Bool)

(assert (=> b!4831709 (= e!3019291 e!3019292)))

(declare-fun res!2058028 () Bool)

(assert (=> b!4831709 (=> (not res!2058028) (not e!3019292))))

(assert (=> b!4831709 (= res!2058028 (is-Cons!55070 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))

(declare-fun b!4831710 () Bool)

(assert (=> b!4831710 (= e!3019292 (containsKey!4438 (t!362690 (_2!32474 (h!61505 (toList!7555 lm!2325)))) key!5594))))

(assert (= (and d!1549107 (not res!2058027)) b!4831709))

(assert (= (and b!4831709 res!2058028) b!4831710))

(declare-fun m!5825388 () Bool)

(assert (=> b!4831710 m!5825388))

(assert (=> b!4831588 d!1549107))

(declare-fun bs!1166360 () Bool)

(declare-fun d!1549109 () Bool)

(assert (= bs!1166360 (and d!1549109 start!502018)))

(declare-fun lambda!238202 () Int)

(assert (=> bs!1166360 (= lambda!238202 lambda!238185)))

(declare-fun bs!1166361 () Bool)

(assert (= bs!1166361 (and d!1549109 d!1549081)))

(assert (=> bs!1166361 (= lambda!238202 lambda!238197)))

(declare-fun bs!1166362 () Bool)

(assert (= bs!1166362 (and d!1549109 d!1549087)))

(assert (=> bs!1166362 (= lambda!238202 lambda!238198)))

(declare-fun bs!1166363 () Bool)

(assert (= bs!1166363 (and d!1549109 d!1549089)))

(assert (=> bs!1166363 (= lambda!238202 lambda!238201)))

(declare-fun lt!1977545 () ListMap!6927)

(assert (=> d!1549109 (invariantList!1829 (toList!7556 lt!1977545))))

(declare-fun e!3019293 () ListMap!6927)

(assert (=> d!1549109 (= lt!1977545 e!3019293)))

(declare-fun c!823293 () Bool)

(assert (=> d!1549109 (= c!823293 (is-Cons!55071 (t!362691 (toList!7555 lm!2325))))))

(assert (=> d!1549109 (forall!12681 (t!362691 (toList!7555 lm!2325)) lambda!238202)))

(assert (=> d!1549109 (= (extractMap!2715 (t!362691 (toList!7555 lm!2325))) lt!1977545)))

(declare-fun b!4831711 () Bool)

(assert (=> b!4831711 (= e!3019293 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (t!362691 (toList!7555 lm!2325)))) (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325))))))))

(declare-fun b!4831712 () Bool)

(assert (=> b!4831712 (= e!3019293 (ListMap!6928 Nil!55070))))

(assert (= (and d!1549109 c!823293) b!4831711))

(assert (= (and d!1549109 (not c!823293)) b!4831712))

(declare-fun m!5825390 () Bool)

(assert (=> d!1549109 m!5825390))

(declare-fun m!5825392 () Bool)

(assert (=> d!1549109 m!5825392))

(declare-fun m!5825394 () Bool)

(assert (=> b!4831711 m!5825394))

(assert (=> b!4831711 m!5825394))

(declare-fun m!5825396 () Bool)

(assert (=> b!4831711 m!5825396))

(assert (=> b!4831588 d!1549109))

(declare-fun e!3019296 () Bool)

(declare-fun d!1549111 () Bool)

(assert (=> d!1549111 (= (contains!18883 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452) key!5594) e!3019296)))

(declare-fun res!2058031 () Bool)

(assert (=> d!1549111 (=> res!2058031 e!3019296)))

(assert (=> d!1549111 (= res!2058031 (containsKey!4438 (_2!32474 (h!61505 (toList!7555 lm!2325))) key!5594))))

(declare-fun lt!1977548 () Unit!143893)

(declare-fun choose!35272 (List!55194 ListMap!6927 K!16757) Unit!143893)

(assert (=> d!1549111 (= lt!1977548 (choose!35272 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452 key!5594))))

(declare-fun noDuplicateKeys!2473 (List!55194) Bool)

(assert (=> d!1549111 (noDuplicateKeys!2473 (_2!32474 (h!61505 (toList!7555 lm!2325))))))

(assert (=> d!1549111 (= (lemmaAddToMapFromBucketContainsIIFInAccOrL!53 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452 key!5594) lt!1977548)))

(declare-fun b!4831715 () Bool)

(assert (=> b!4831715 (= e!3019296 (contains!18883 lt!1977452 key!5594))))

(assert (= (and d!1549111 (not res!2058031)) b!4831715))

(assert (=> d!1549111 m!5825208))

(declare-fun m!5825398 () Bool)

(assert (=> d!1549111 m!5825398))

(assert (=> d!1549111 m!5825200))

(assert (=> d!1549111 m!5825206))

(assert (=> d!1549111 m!5825200))

(declare-fun m!5825400 () Bool)

(assert (=> d!1549111 m!5825400))

(assert (=> b!4831715 m!5825186))

(assert (=> b!4831588 d!1549111))

(declare-fun b!4831716 () Bool)

(declare-fun e!3019302 () Unit!143893)

(declare-fun lt!1977550 () Unit!143893)

(assert (=> b!4831716 (= e!3019302 lt!1977550)))

(declare-fun lt!1977556 () Unit!143893)

(assert (=> b!4831716 (= lt!1977556 (lemmaContainsKeyImpliesGetValueByKeyDefined!2441 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) key!5594))))

(assert (=> b!4831716 (isDefined!10644 (getValueByKey!2656 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) key!5594))))

(declare-fun lt!1977553 () Unit!143893)

(assert (=> b!4831716 (= lt!1977553 lt!1977556)))

(assert (=> b!4831716 (= lt!1977550 (lemmaInListThenGetKeysListContains!1170 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) key!5594))))

(declare-fun call!336706 () Bool)

(assert (=> b!4831716 call!336706))

(declare-fun b!4831717 () Bool)

(declare-fun e!3019298 () Bool)

(declare-fun e!3019300 () Bool)

(assert (=> b!4831717 (= e!3019298 e!3019300)))

(declare-fun res!2058034 () Bool)

(assert (=> b!4831717 (=> (not res!2058034) (not e!3019300))))

(assert (=> b!4831717 (= res!2058034 (isDefined!10644 (getValueByKey!2656 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) key!5594)))))

(declare-fun d!1549113 () Bool)

(assert (=> d!1549113 e!3019298))

(declare-fun res!2058033 () Bool)

(assert (=> d!1549113 (=> res!2058033 e!3019298)))

(declare-fun e!3019297 () Bool)

(assert (=> d!1549113 (= res!2058033 e!3019297)))

(declare-fun res!2058032 () Bool)

(assert (=> d!1549113 (=> (not res!2058032) (not e!3019297))))

(declare-fun lt!1977551 () Bool)

(assert (=> d!1549113 (= res!2058032 (not lt!1977551))))

(declare-fun lt!1977552 () Bool)

(assert (=> d!1549113 (= lt!1977551 lt!1977552)))

(declare-fun lt!1977555 () Unit!143893)

(assert (=> d!1549113 (= lt!1977555 e!3019302)))

(declare-fun c!823295 () Bool)

(assert (=> d!1549113 (= c!823295 lt!1977552)))

(assert (=> d!1549113 (= lt!1977552 (containsKey!4440 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) key!5594))))

(assert (=> d!1549113 (= (contains!18883 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452) key!5594) lt!1977551)))

(declare-fun bm!336701 () Bool)

(declare-fun e!3019301 () List!55198)

(assert (=> bm!336701 (= call!336706 (contains!18886 e!3019301 key!5594))))

(declare-fun c!823296 () Bool)

(assert (=> bm!336701 (= c!823296 c!823295)))

(declare-fun b!4831718 () Bool)

(assert (=> b!4831718 (= e!3019300 (contains!18886 (keys!20284 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) key!5594))))

(declare-fun b!4831719 () Bool)

(declare-fun e!3019299 () Unit!143893)

(assert (=> b!4831719 (= e!3019302 e!3019299)))

(declare-fun c!823294 () Bool)

(assert (=> b!4831719 (= c!823294 call!336706)))

(declare-fun b!4831720 () Bool)

(assert (=> b!4831720 (= e!3019301 (keys!20284 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)))))

(declare-fun b!4831721 () Bool)

(assert (=> b!4831721 (= e!3019297 (not (contains!18886 (keys!20284 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) key!5594)))))

(declare-fun b!4831722 () Bool)

(assert (=> b!4831722 false))

(declare-fun lt!1977549 () Unit!143893)

(declare-fun lt!1977554 () Unit!143893)

(assert (=> b!4831722 (= lt!1977549 lt!1977554)))

(assert (=> b!4831722 (containsKey!4440 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) key!5594)))

(assert (=> b!4831722 (= lt!1977554 (lemmaInGetKeysListThenContainsKey!1175 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) key!5594))))

(declare-fun Unit!143904 () Unit!143893)

(assert (=> b!4831722 (= e!3019299 Unit!143904)))

(declare-fun b!4831723 () Bool)

(declare-fun Unit!143905 () Unit!143893)

(assert (=> b!4831723 (= e!3019299 Unit!143905)))

(declare-fun b!4831724 () Bool)

(assert (=> b!4831724 (= e!3019301 (getKeysList!1175 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))))))

(assert (= (and d!1549113 c!823295) b!4831716))

(assert (= (and d!1549113 (not c!823295)) b!4831719))

(assert (= (and b!4831719 c!823294) b!4831722))

(assert (= (and b!4831719 (not c!823294)) b!4831723))

(assert (= (or b!4831716 b!4831719) bm!336701))

(assert (= (and bm!336701 c!823296) b!4831724))

(assert (= (and bm!336701 (not c!823296)) b!4831720))

(assert (= (and d!1549113 res!2058032) b!4831721))

(assert (= (and d!1549113 (not res!2058033)) b!4831717))

(assert (= (and b!4831717 res!2058034) b!4831718))

(declare-fun m!5825402 () Bool)

(assert (=> b!4831717 m!5825402))

(assert (=> b!4831717 m!5825402))

(declare-fun m!5825404 () Bool)

(assert (=> b!4831717 m!5825404))

(declare-fun m!5825406 () Bool)

(assert (=> b!4831724 m!5825406))

(declare-fun m!5825408 () Bool)

(assert (=> bm!336701 m!5825408))

(assert (=> b!4831720 m!5825200))

(declare-fun m!5825410 () Bool)

(assert (=> b!4831720 m!5825410))

(assert (=> b!4831718 m!5825200))

(assert (=> b!4831718 m!5825410))

(assert (=> b!4831718 m!5825410))

(declare-fun m!5825412 () Bool)

(assert (=> b!4831718 m!5825412))

(declare-fun m!5825414 () Bool)

(assert (=> b!4831722 m!5825414))

(declare-fun m!5825416 () Bool)

(assert (=> b!4831722 m!5825416))

(assert (=> b!4831721 m!5825200))

(assert (=> b!4831721 m!5825410))

(assert (=> b!4831721 m!5825410))

(assert (=> b!4831721 m!5825412))

(declare-fun m!5825418 () Bool)

(assert (=> b!4831716 m!5825418))

(assert (=> b!4831716 m!5825402))

(assert (=> b!4831716 m!5825402))

(assert (=> b!4831716 m!5825404))

(declare-fun m!5825420 () Bool)

(assert (=> b!4831716 m!5825420))

(assert (=> d!1549113 m!5825414))

(assert (=> b!4831588 d!1549113))

(declare-fun d!1549115 () Bool)

(declare-fun tail!9439 (List!55195) List!55195)

(assert (=> d!1549115 (= (tail!9437 lm!2325) (ListLongMap!6078 (tail!9439 (toList!7555 lm!2325))))))

(declare-fun bs!1166364 () Bool)

(assert (= bs!1166364 d!1549115))

(declare-fun m!5825422 () Bool)

(assert (=> bs!1166364 m!5825422))

(assert (=> b!4831588 d!1549115))

(declare-fun b!4831780 () Bool)

(assert (=> b!4831780 true))

(declare-fun bs!1166378 () Bool)

(declare-fun b!4831779 () Bool)

(assert (= bs!1166378 (and b!4831779 b!4831780)))

(declare-fun lambda!238239 () Int)

(declare-fun lambda!238238 () Int)

(assert (=> bs!1166378 (= lambda!238239 lambda!238238)))

(assert (=> b!4831779 true))

(declare-fun lt!1977646 () ListMap!6927)

(declare-fun lambda!238240 () Int)

(assert (=> bs!1166378 (= (= lt!1977646 lt!1977452) (= lambda!238240 lambda!238238))))

(assert (=> b!4831779 (= (= lt!1977646 lt!1977452) (= lambda!238240 lambda!238239))))

(assert (=> b!4831779 true))

(declare-fun bs!1166379 () Bool)

(declare-fun d!1549117 () Bool)

(assert (= bs!1166379 (and d!1549117 b!4831780)))

(declare-fun lt!1977658 () ListMap!6927)

(declare-fun lambda!238241 () Int)

(assert (=> bs!1166379 (= (= lt!1977658 lt!1977452) (= lambda!238241 lambda!238238))))

(declare-fun bs!1166380 () Bool)

(assert (= bs!1166380 (and d!1549117 b!4831779)))

(assert (=> bs!1166380 (= (= lt!1977658 lt!1977452) (= lambda!238241 lambda!238239))))

(assert (=> bs!1166380 (= (= lt!1977658 lt!1977646) (= lambda!238241 lambda!238240))))

(assert (=> d!1549117 true))

(declare-fun bm!336712 () Bool)

(declare-fun c!823315 () Bool)

(declare-fun call!336719 () Bool)

(declare-fun forall!12683 (List!55194 Int) Bool)

(assert (=> bm!336712 (= call!336719 (forall!12683 (ite c!823315 (toList!7556 lt!1977452) (_2!32474 (h!61505 (toList!7555 lm!2325)))) (ite c!823315 lambda!238238 lambda!238240)))))

(declare-fun bm!336713 () Bool)

(declare-fun call!336718 () Bool)

(assert (=> bm!336713 (= call!336718 (forall!12683 (toList!7556 lt!1977452) (ite c!823315 lambda!238238 lambda!238240)))))

(declare-fun e!3019337 () Bool)

(assert (=> d!1549117 e!3019337))

(declare-fun res!2058055 () Bool)

(assert (=> d!1549117 (=> (not res!2058055) (not e!3019337))))

(assert (=> d!1549117 (= res!2058055 (forall!12683 (_2!32474 (h!61505 (toList!7555 lm!2325))) lambda!238241))))

(declare-fun e!3019338 () ListMap!6927)

(assert (=> d!1549117 (= lt!1977658 e!3019338)))

(assert (=> d!1549117 (= c!823315 (is-Nil!55070 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))

(assert (=> d!1549117 (noDuplicateKeys!2473 (_2!32474 (h!61505 (toList!7555 lm!2325))))))

(assert (=> d!1549117 (= (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452) lt!1977658)))

(assert (=> b!4831779 (= e!3019338 lt!1977646)))

(declare-fun lt!1977642 () ListMap!6927)

(declare-fun +!2552 (ListMap!6927 tuple2!58358) ListMap!6927)

(assert (=> b!4831779 (= lt!1977642 (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))))))

(assert (=> b!4831779 (= lt!1977646 (addToMapMapFromBucket!1830 (t!362690 (_2!32474 (h!61505 (toList!7555 lm!2325)))) (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))))

(declare-fun lt!1977645 () Unit!143893)

(declare-fun call!336717 () Unit!143893)

(assert (=> b!4831779 (= lt!1977645 call!336717)))

(assert (=> b!4831779 (forall!12683 (toList!7556 lt!1977452) lambda!238239)))

(declare-fun lt!1977654 () Unit!143893)

(assert (=> b!4831779 (= lt!1977654 lt!1977645)))

(assert (=> b!4831779 (forall!12683 (toList!7556 lt!1977642) lambda!238240)))

(declare-fun lt!1977648 () Unit!143893)

(declare-fun Unit!143906 () Unit!143893)

(assert (=> b!4831779 (= lt!1977648 Unit!143906)))

(assert (=> b!4831779 (forall!12683 (t!362690 (_2!32474 (h!61505 (toList!7555 lm!2325)))) lambda!238240)))

(declare-fun lt!1977650 () Unit!143893)

(declare-fun Unit!143907 () Unit!143893)

(assert (=> b!4831779 (= lt!1977650 Unit!143907)))

(declare-fun lt!1977639 () Unit!143893)

(declare-fun Unit!143908 () Unit!143893)

(assert (=> b!4831779 (= lt!1977639 Unit!143908)))

(declare-fun lt!1977656 () Unit!143893)

(declare-fun forallContained!4416 (List!55194 Int tuple2!58358) Unit!143893)

(assert (=> b!4831779 (= lt!1977656 (forallContained!4416 (toList!7556 lt!1977642) lambda!238240 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))))))

(assert (=> b!4831779 (contains!18883 lt!1977642 (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))))))

(declare-fun lt!1977640 () Unit!143893)

(declare-fun Unit!143909 () Unit!143893)

(assert (=> b!4831779 (= lt!1977640 Unit!143909)))

(assert (=> b!4831779 (contains!18883 lt!1977646 (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))))))

(declare-fun lt!1977649 () Unit!143893)

(declare-fun Unit!143910 () Unit!143893)

(assert (=> b!4831779 (= lt!1977649 Unit!143910)))

(assert (=> b!4831779 (forall!12683 (_2!32474 (h!61505 (toList!7555 lm!2325))) lambda!238240)))

(declare-fun lt!1977643 () Unit!143893)

(declare-fun Unit!143911 () Unit!143893)

(assert (=> b!4831779 (= lt!1977643 Unit!143911)))

(assert (=> b!4831779 (forall!12683 (toList!7556 lt!1977642) lambda!238240)))

(declare-fun lt!1977653 () Unit!143893)

(declare-fun Unit!143912 () Unit!143893)

(assert (=> b!4831779 (= lt!1977653 Unit!143912)))

(declare-fun lt!1977651 () Unit!143893)

(declare-fun Unit!143913 () Unit!143893)

(assert (=> b!4831779 (= lt!1977651 Unit!143913)))

(declare-fun lt!1977641 () Unit!143893)

(declare-fun addForallContainsKeyThenBeforeAdding!1006 (ListMap!6927 ListMap!6927 K!16757 V!17003) Unit!143893)

(assert (=> b!4831779 (= lt!1977641 (addForallContainsKeyThenBeforeAdding!1006 lt!1977452 lt!1977646 (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))) (_2!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))))

(assert (=> b!4831779 (forall!12683 (toList!7556 lt!1977452) lambda!238240)))

(declare-fun lt!1977657 () Unit!143893)

(assert (=> b!4831779 (= lt!1977657 lt!1977641)))

(assert (=> b!4831779 (forall!12683 (toList!7556 lt!1977452) lambda!238240)))

(declare-fun lt!1977644 () Unit!143893)

(declare-fun Unit!143914 () Unit!143893)

(assert (=> b!4831779 (= lt!1977644 Unit!143914)))

(declare-fun res!2058054 () Bool)

(assert (=> b!4831779 (= res!2058054 call!336719)))

(declare-fun e!3019339 () Bool)

(assert (=> b!4831779 (=> (not res!2058054) (not e!3019339))))

(assert (=> b!4831779 e!3019339))

(declare-fun lt!1977647 () Unit!143893)

(declare-fun Unit!143915 () Unit!143893)

(assert (=> b!4831779 (= lt!1977647 Unit!143915)))

(assert (=> b!4831780 (= e!3019338 lt!1977452)))

(declare-fun lt!1977652 () Unit!143893)

(assert (=> b!4831780 (= lt!1977652 call!336717)))

(assert (=> b!4831780 call!336719))

(declare-fun lt!1977655 () Unit!143893)

(assert (=> b!4831780 (= lt!1977655 lt!1977652)))

(assert (=> b!4831780 call!336718))

(declare-fun lt!1977638 () Unit!143893)

(declare-fun Unit!143916 () Unit!143893)

(assert (=> b!4831780 (= lt!1977638 Unit!143916)))

(declare-fun b!4831781 () Bool)

(declare-fun res!2058053 () Bool)

(assert (=> b!4831781 (=> (not res!2058053) (not e!3019337))))

(assert (=> b!4831781 (= res!2058053 (forall!12683 (toList!7556 lt!1977452) lambda!238241))))

(declare-fun b!4831782 () Bool)

(assert (=> b!4831782 (= e!3019337 (invariantList!1829 (toList!7556 lt!1977658)))))

(declare-fun bm!336714 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!1007 (ListMap!6927) Unit!143893)

(assert (=> bm!336714 (= call!336717 (lemmaContainsAllItsOwnKeys!1007 lt!1977452))))

(declare-fun b!4831783 () Bool)

(assert (=> b!4831783 (= e!3019339 call!336718)))

(assert (= (and d!1549117 c!823315) b!4831780))

(assert (= (and d!1549117 (not c!823315)) b!4831779))

(assert (= (and b!4831779 res!2058054) b!4831783))

(assert (= (or b!4831780 b!4831779) bm!336714))

(assert (= (or b!4831780 b!4831783) bm!336713))

(assert (= (or b!4831780 b!4831779) bm!336712))

(assert (= (and d!1549117 res!2058055) b!4831781))

(assert (= (and b!4831781 res!2058053) b!4831782))

(declare-fun m!5825482 () Bool)

(assert (=> b!4831779 m!5825482))

(declare-fun m!5825484 () Bool)

(assert (=> b!4831779 m!5825484))

(assert (=> b!4831779 m!5825482))

(declare-fun m!5825486 () Bool)

(assert (=> b!4831779 m!5825486))

(declare-fun m!5825488 () Bool)

(assert (=> b!4831779 m!5825488))

(declare-fun m!5825490 () Bool)

(assert (=> b!4831779 m!5825490))

(assert (=> b!4831779 m!5825486))

(declare-fun m!5825492 () Bool)

(assert (=> b!4831779 m!5825492))

(assert (=> b!4831779 m!5825490))

(declare-fun m!5825494 () Bool)

(assert (=> b!4831779 m!5825494))

(declare-fun m!5825496 () Bool)

(assert (=> b!4831779 m!5825496))

(declare-fun m!5825498 () Bool)

(assert (=> b!4831779 m!5825498))

(declare-fun m!5825500 () Bool)

(assert (=> b!4831779 m!5825500))

(declare-fun m!5825502 () Bool)

(assert (=> b!4831779 m!5825502))

(declare-fun m!5825504 () Bool)

(assert (=> bm!336712 m!5825504))

(declare-fun m!5825506 () Bool)

(assert (=> b!4831782 m!5825506))

(declare-fun m!5825508 () Bool)

(assert (=> d!1549117 m!5825508))

(assert (=> d!1549117 m!5825398))

(declare-fun m!5825510 () Bool)

(assert (=> bm!336713 m!5825510))

(declare-fun m!5825512 () Bool)

(assert (=> b!4831781 m!5825512))

(declare-fun m!5825514 () Bool)

(assert (=> bm!336714 m!5825514))

(assert (=> b!4831588 d!1549117))

(declare-fun bs!1166381 () Bool)

(declare-fun d!1549129 () Bool)

(assert (= bs!1166381 (and d!1549129 d!1549089)))

(declare-fun lambda!238244 () Int)

(assert (=> bs!1166381 (= lambda!238244 lambda!238201)))

(declare-fun bs!1166382 () Bool)

(assert (= bs!1166382 (and d!1549129 d!1549087)))

(assert (=> bs!1166382 (= lambda!238244 lambda!238198)))

(declare-fun bs!1166383 () Bool)

(assert (= bs!1166383 (and d!1549129 d!1549109)))

(assert (=> bs!1166383 (= lambda!238244 lambda!238202)))

(declare-fun bs!1166384 () Bool)

(assert (= bs!1166384 (and d!1549129 start!502018)))

(assert (=> bs!1166384 (= lambda!238244 lambda!238185)))

(declare-fun bs!1166385 () Bool)

(assert (= bs!1166385 (and d!1549129 d!1549081)))

(assert (=> bs!1166385 (= lambda!238244 lambda!238197)))

(assert (=> d!1549129 (not (containsKey!4438 (apply!13372 lm!2325 (_1!32474 (h!61505 (toList!7555 lm!2325)))) key!5594))))

(declare-fun lt!1977661 () Unit!143893)

(declare-fun choose!35273 (ListLongMap!6077 K!16757 (_ BitVec 64) Hashable!7307) Unit!143893)

(assert (=> d!1549129 (= lt!1977661 (choose!35273 lm!2325 key!5594 (_1!32474 (h!61505 (toList!7555 lm!2325))) hashF!1543))))

(assert (=> d!1549129 (forall!12681 (toList!7555 lm!2325) lambda!238244)))

(assert (=> d!1549129 (= (lemmaNotSameHashThenCannotContainKey!241 lm!2325 key!5594 (_1!32474 (h!61505 (toList!7555 lm!2325))) hashF!1543) lt!1977661)))

(declare-fun bs!1166386 () Bool)

(assert (= bs!1166386 d!1549129))

(assert (=> bs!1166386 m!5825196))

(assert (=> bs!1166386 m!5825196))

(assert (=> bs!1166386 m!5825198))

(declare-fun m!5825516 () Bool)

(assert (=> bs!1166386 m!5825516))

(declare-fun m!5825518 () Bool)

(assert (=> bs!1166386 m!5825518))

(assert (=> b!4831588 d!1549129))

(declare-fun d!1549131 () Bool)

(declare-fun get!18858 (Option!13530) List!55194)

(assert (=> d!1549131 (= (apply!13372 lm!2325 (_1!32474 (h!61505 (toList!7555 lm!2325)))) (get!18858 (getValueByKey!2657 (toList!7555 lm!2325) (_1!32474 (h!61505 (toList!7555 lm!2325))))))))

(declare-fun bs!1166387 () Bool)

(assert (= bs!1166387 d!1549131))

(declare-fun m!5825520 () Bool)

(assert (=> bs!1166387 m!5825520))

(assert (=> bs!1166387 m!5825520))

(declare-fun m!5825522 () Bool)

(assert (=> bs!1166387 m!5825522))

(assert (=> b!4831588 d!1549131))

(declare-fun bs!1166388 () Bool)

(declare-fun d!1549133 () Bool)

(assert (= bs!1166388 (and d!1549133 d!1549089)))

(declare-fun lambda!238247 () Int)

(assert (=> bs!1166388 (not (= lambda!238247 lambda!238201))))

(declare-fun bs!1166389 () Bool)

(assert (= bs!1166389 (and d!1549133 d!1549087)))

(assert (=> bs!1166389 (not (= lambda!238247 lambda!238198))))

(declare-fun bs!1166390 () Bool)

(assert (= bs!1166390 (and d!1549133 d!1549129)))

(assert (=> bs!1166390 (not (= lambda!238247 lambda!238244))))

(declare-fun bs!1166391 () Bool)

(assert (= bs!1166391 (and d!1549133 d!1549109)))

(assert (=> bs!1166391 (not (= lambda!238247 lambda!238202))))

(declare-fun bs!1166392 () Bool)

(assert (= bs!1166392 (and d!1549133 start!502018)))

(assert (=> bs!1166392 (not (= lambda!238247 lambda!238185))))

(declare-fun bs!1166393 () Bool)

(assert (= bs!1166393 (and d!1549133 d!1549081)))

(assert (=> bs!1166393 (not (= lambda!238247 lambda!238197))))

(assert (=> d!1549133 true))

(assert (=> d!1549133 (= (allKeysSameHashInMap!2623 lt!1977454 hashF!1543) (forall!12681 (toList!7555 lt!1977454) lambda!238247))))

(declare-fun bs!1166394 () Bool)

(assert (= bs!1166394 d!1549133))

(declare-fun m!5825524 () Bool)

(assert (=> bs!1166394 m!5825524))

(assert (=> b!4831592 d!1549133))

(declare-fun d!1549135 () Bool)

(declare-fun e!3019341 () Bool)

(assert (=> d!1549135 e!3019341))

(declare-fun res!2058056 () Bool)

(assert (=> d!1549135 (=> res!2058056 e!3019341)))

(declare-fun lt!1977663 () Bool)

(assert (=> d!1549135 (= res!2058056 (not lt!1977663))))

(declare-fun lt!1977662 () Bool)

(assert (=> d!1549135 (= lt!1977663 lt!1977662)))

(declare-fun lt!1977664 () Unit!143893)

(declare-fun e!3019340 () Unit!143893)

(assert (=> d!1549135 (= lt!1977664 e!3019340)))

(declare-fun c!823316 () Bool)

(assert (=> d!1549135 (= c!823316 lt!1977662)))

(assert (=> d!1549135 (= lt!1977662 (containsKey!4441 (toList!7555 lt!1977454) lt!1977450))))

(assert (=> d!1549135 (= (contains!18882 lt!1977454 lt!1977450) lt!1977663)))

(declare-fun b!4831788 () Bool)

(declare-fun lt!1977665 () Unit!143893)

(assert (=> b!4831788 (= e!3019340 lt!1977665)))

(assert (=> b!4831788 (= lt!1977665 (lemmaContainsKeyImpliesGetValueByKeyDefined!2442 (toList!7555 lt!1977454) lt!1977450))))

(assert (=> b!4831788 (isDefined!10645 (getValueByKey!2657 (toList!7555 lt!1977454) lt!1977450))))

(declare-fun b!4831789 () Bool)

(declare-fun Unit!143917 () Unit!143893)

(assert (=> b!4831789 (= e!3019340 Unit!143917)))

(declare-fun b!4831790 () Bool)

(assert (=> b!4831790 (= e!3019341 (isDefined!10645 (getValueByKey!2657 (toList!7555 lt!1977454) lt!1977450)))))

(assert (= (and d!1549135 c!823316) b!4831788))

(assert (= (and d!1549135 (not c!823316)) b!4831789))

(assert (= (and d!1549135 (not res!2058056)) b!4831790))

(declare-fun m!5825526 () Bool)

(assert (=> d!1549135 m!5825526))

(declare-fun m!5825528 () Bool)

(assert (=> b!4831788 m!5825528))

(declare-fun m!5825530 () Bool)

(assert (=> b!4831788 m!5825530))

(assert (=> b!4831788 m!5825530))

(declare-fun m!5825532 () Bool)

(assert (=> b!4831788 m!5825532))

(assert (=> b!4831790 m!5825530))

(assert (=> b!4831790 m!5825530))

(assert (=> b!4831790 m!5825532))

(assert (=> b!4831587 d!1549135))

(declare-fun bs!1166395 () Bool)

(declare-fun d!1549137 () Bool)

(assert (= bs!1166395 (and d!1549137 d!1549089)))

(declare-fun lambda!238248 () Int)

(assert (=> bs!1166395 (not (= lambda!238248 lambda!238201))))

(declare-fun bs!1166396 () Bool)

(assert (= bs!1166396 (and d!1549137 d!1549087)))

(assert (=> bs!1166396 (not (= lambda!238248 lambda!238198))))

(declare-fun bs!1166397 () Bool)

(assert (= bs!1166397 (and d!1549137 d!1549133)))

(assert (=> bs!1166397 (= lambda!238248 lambda!238247)))

(declare-fun bs!1166398 () Bool)

(assert (= bs!1166398 (and d!1549137 d!1549129)))

(assert (=> bs!1166398 (not (= lambda!238248 lambda!238244))))

(declare-fun bs!1166399 () Bool)

(assert (= bs!1166399 (and d!1549137 d!1549109)))

(assert (=> bs!1166399 (not (= lambda!238248 lambda!238202))))

(declare-fun bs!1166400 () Bool)

(assert (= bs!1166400 (and d!1549137 start!502018)))

(assert (=> bs!1166400 (not (= lambda!238248 lambda!238185))))

(declare-fun bs!1166401 () Bool)

(assert (= bs!1166401 (and d!1549137 d!1549081)))

(assert (=> bs!1166401 (not (= lambda!238248 lambda!238197))))

(assert (=> d!1549137 true))

(assert (=> d!1549137 (= (allKeysSameHashInMap!2623 lm!2325 hashF!1543) (forall!12681 (toList!7555 lm!2325) lambda!238248))))

(declare-fun bs!1166402 () Bool)

(assert (= bs!1166402 d!1549137))

(declare-fun m!5825534 () Bool)

(assert (=> bs!1166402 m!5825534))

(assert (=> b!4831591 d!1549137))

(declare-fun b!4831795 () Bool)

(declare-fun e!3019344 () Bool)

(declare-fun tp!1362929 () Bool)

(declare-fun tp!1362930 () Bool)

(assert (=> b!4831795 (= e!3019344 (and tp!1362929 tp!1362930))))

(assert (=> b!4831593 (= tp!1362921 e!3019344)))

(assert (= (and b!4831593 (is-Cons!55071 (toList!7555 lm!2325))) b!4831795))

(declare-fun b_lambda!190795 () Bool)

(assert (= b_lambda!190791 (or start!502018 b_lambda!190795)))

(declare-fun bs!1166403 () Bool)

(declare-fun d!1549139 () Bool)

(assert (= bs!1166403 (and d!1549139 start!502018)))

(assert (=> bs!1166403 (= (dynLambda!22250 lambda!238185 (h!61505 (toList!7555 lm!2325))) (noDuplicateKeys!2473 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))

(assert (=> bs!1166403 m!5825398))

(assert (=> b!4831687 d!1549139))

(declare-fun b_lambda!190797 () Bool)

(assert (= b_lambda!190793 (or start!502018 b_lambda!190797)))

(declare-fun bs!1166404 () Bool)

(declare-fun d!1549141 () Bool)

(assert (= bs!1166404 (and d!1549141 start!502018)))

(assert (=> bs!1166404 (= (dynLambda!22250 lambda!238185 (h!61505 (toList!7555 lt!1977454))) (noDuplicateKeys!2473 (_2!32474 (h!61505 (toList!7555 lt!1977454)))))))

(declare-fun m!5825536 () Bool)

(assert (=> bs!1166404 m!5825536))

(assert (=> b!4831701 d!1549141))

(push 1)

(assert (not d!1549135))

(assert (not d!1549115))

(assert (not b!4831666))

(assert (not b!4831644))

(assert (not d!1549075))

(assert (not b!4831664))

(assert (not bm!336698))

(assert (not b!4831646))

(assert (not d!1549077))

(assert (not d!1549117))

(assert (not bs!1166403))

(assert (not b_lambda!190795))

(assert (not bm!336699))

(assert (not b!4831782))

(assert (not d!1549073))

(assert (not bm!336712))

(assert (not b!4831641))

(assert (not d!1549137))

(assert (not b!4831720))

(assert (not b!4831779))

(assert (not b!4831788))

(assert (not d!1549109))

(assert (not b!4831659))

(assert (not b!4831710))

(assert (not b!4831708))

(assert (not b!4831649))

(assert (not bm!336701))

(assert (not b!4831711))

(assert (not b!4831655))

(assert (not b!4831645))

(assert (not b!4831781))

(assert (not b!4831790))

(assert (not b!4831718))

(assert (not b!4831724))

(assert (not b!4831662))

(assert (not b!4831657))

(assert (not d!1549129))

(assert (not b!4831654))

(assert (not b!4831702))

(assert (not b!4831648))

(assert (not d!1549113))

(assert (not b_lambda!190797))

(assert (not b!4831640))

(assert (not b!4831688))

(assert (not b!4831650))

(assert (not bm!336700))

(assert (not b!4831721))

(assert (not bs!1166404))

(assert (not bm!336714))

(assert (not bm!336713))

(assert (not d!1549101))

(assert (not d!1549087))

(assert (not d!1549111))

(assert (not d!1549133))

(assert (not b!4831660))

(assert (not b!4831651))

(assert (not b!4831642))

(assert tp_is_empty!34573)

(assert (not d!1549095))

(assert (not b!4831715))

(assert (not b!4831722))

(assert (not b!4831663))

(assert (not b!4831698))

(assert (not b!4831700))

(assert (not b!4831658))

(assert (not b!4831795))

(assert (not d!1549093))

(assert (not b!4831716))

(assert (not b!4831717))

(assert (not b!4831653))

(assert (not b!4831675))

(assert (not d!1549081))

(assert (not d!1549131))

(assert (not b!4831673))

(assert (not d!1549089))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1549173 () Bool)

(declare-fun isEmpty!29690 (Option!13530) Bool)

(assert (=> d!1549173 (= (isDefined!10645 (getValueByKey!2657 (toList!7555 lm!2325) lt!1977450)) (not (isEmpty!29690 (getValueByKey!2657 (toList!7555 lm!2325) lt!1977450))))))

(declare-fun bs!1166427 () Bool)

(assert (= bs!1166427 d!1549173))

(assert (=> bs!1166427 m!5825376))

(declare-fun m!5825656 () Bool)

(assert (=> bs!1166427 m!5825656))

(assert (=> b!4831700 d!1549173))

(declare-fun d!1549175 () Bool)

(declare-fun c!823332 () Bool)

(assert (=> d!1549175 (= c!823332 (and (is-Cons!55071 (toList!7555 lm!2325)) (= (_1!32474 (h!61505 (toList!7555 lm!2325))) lt!1977450)))))

(declare-fun e!3019395 () Option!13530)

(assert (=> d!1549175 (= (getValueByKey!2657 (toList!7555 lm!2325) lt!1977450) e!3019395)))

(declare-fun b!4831869 () Bool)

(declare-fun e!3019396 () Option!13530)

(assert (=> b!4831869 (= e!3019395 e!3019396)))

(declare-fun c!823333 () Bool)

(assert (=> b!4831869 (= c!823333 (and (is-Cons!55071 (toList!7555 lm!2325)) (not (= (_1!32474 (h!61505 (toList!7555 lm!2325))) lt!1977450))))))

(declare-fun b!4831868 () Bool)

(assert (=> b!4831868 (= e!3019395 (Some!13529 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))

(declare-fun b!4831871 () Bool)

(assert (=> b!4831871 (= e!3019396 None!13529)))

(declare-fun b!4831870 () Bool)

(assert (=> b!4831870 (= e!3019396 (getValueByKey!2657 (t!362691 (toList!7555 lm!2325)) lt!1977450))))

(assert (= (and d!1549175 c!823332) b!4831868))

(assert (= (and d!1549175 (not c!823332)) b!4831869))

(assert (= (and b!4831869 c!823333) b!4831870))

(assert (= (and b!4831869 (not c!823333)) b!4831871))

(declare-fun m!5825658 () Bool)

(assert (=> b!4831870 m!5825658))

(assert (=> b!4831700 d!1549175))

(declare-fun d!1549177 () Bool)

(assert (=> d!1549177 (isDefined!10645 (getValueByKey!2657 (toList!7555 lm!2325) lt!1977450))))

(declare-fun lt!1977758 () Unit!143893)

(declare-fun choose!35277 (List!55195 (_ BitVec 64)) Unit!143893)

(assert (=> d!1549177 (= lt!1977758 (choose!35277 (toList!7555 lm!2325) lt!1977450))))

(declare-fun e!3019399 () Bool)

(assert (=> d!1549177 e!3019399))

(declare-fun res!2058094 () Bool)

(assert (=> d!1549177 (=> (not res!2058094) (not e!3019399))))

(assert (=> d!1549177 (= res!2058094 (isStrictlySorted!1004 (toList!7555 lm!2325)))))

(assert (=> d!1549177 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2442 (toList!7555 lm!2325) lt!1977450) lt!1977758)))

(declare-fun b!4831874 () Bool)

(assert (=> b!4831874 (= e!3019399 (containsKey!4441 (toList!7555 lm!2325) lt!1977450))))

(assert (= (and d!1549177 res!2058094) b!4831874))

(assert (=> d!1549177 m!5825376))

(assert (=> d!1549177 m!5825376))

(assert (=> d!1549177 m!5825378))

(declare-fun m!5825660 () Bool)

(assert (=> d!1549177 m!5825660))

(assert (=> d!1549177 m!5825366))

(assert (=> b!4831874 m!5825372))

(assert (=> b!4831698 d!1549177))

(assert (=> b!4831698 d!1549173))

(assert (=> b!4831698 d!1549175))

(declare-fun d!1549179 () Bool)

(declare-fun res!2058099 () Bool)

(declare-fun e!3019404 () Bool)

(assert (=> d!1549179 (=> res!2058099 e!3019404)))

(assert (=> d!1549179 (= res!2058099 (is-Nil!55070 (toList!7556 lt!1977452)))))

(assert (=> d!1549179 (= (forall!12683 (toList!7556 lt!1977452) lambda!238241) e!3019404)))

(declare-fun b!4831879 () Bool)

(declare-fun e!3019405 () Bool)

(assert (=> b!4831879 (= e!3019404 e!3019405)))

(declare-fun res!2058100 () Bool)

(assert (=> b!4831879 (=> (not res!2058100) (not e!3019405))))

(declare-fun dynLambda!22252 (Int tuple2!58358) Bool)

(assert (=> b!4831879 (= res!2058100 (dynLambda!22252 lambda!238241 (h!61504 (toList!7556 lt!1977452))))))

(declare-fun b!4831880 () Bool)

(assert (=> b!4831880 (= e!3019405 (forall!12683 (t!362690 (toList!7556 lt!1977452)) lambda!238241))))

(assert (= (and d!1549179 (not res!2058099)) b!4831879))

(assert (= (and b!4831879 res!2058100) b!4831880))

(declare-fun b_lambda!190807 () Bool)

(assert (=> (not b_lambda!190807) (not b!4831879)))

(declare-fun m!5825662 () Bool)

(assert (=> b!4831879 m!5825662))

(declare-fun m!5825664 () Bool)

(assert (=> b!4831880 m!5825664))

(assert (=> b!4831781 d!1549179))

(declare-fun d!1549181 () Bool)

(declare-fun lt!1977761 () Bool)

(declare-fun content!9836 (List!55198) (Set K!16757))

(assert (=> d!1549181 (= lt!1977761 (set.member key!5594 (content!9836 e!3019253)))))

(declare-fun e!3019411 () Bool)

(assert (=> d!1549181 (= lt!1977761 e!3019411)))

(declare-fun res!2058106 () Bool)

(assert (=> d!1549181 (=> (not res!2058106) (not e!3019411))))

(assert (=> d!1549181 (= res!2058106 (is-Cons!55074 e!3019253))))

(assert (=> d!1549181 (= (contains!18886 e!3019253 key!5594) lt!1977761)))

(declare-fun b!4831885 () Bool)

(declare-fun e!3019410 () Bool)

(assert (=> b!4831885 (= e!3019411 e!3019410)))

(declare-fun res!2058105 () Bool)

(assert (=> b!4831885 (=> res!2058105 e!3019410)))

(assert (=> b!4831885 (= res!2058105 (= (h!61508 e!3019253) key!5594))))

(declare-fun b!4831886 () Bool)

(assert (=> b!4831886 (= e!3019410 (contains!18886 (t!362694 e!3019253) key!5594))))

(assert (= (and d!1549181 res!2058106) b!4831885))

(assert (= (and b!4831885 (not res!2058105)) b!4831886))

(declare-fun m!5825666 () Bool)

(assert (=> d!1549181 m!5825666))

(declare-fun m!5825668 () Bool)

(assert (=> d!1549181 m!5825668))

(declare-fun m!5825670 () Bool)

(assert (=> b!4831886 m!5825670))

(assert (=> bm!336699 d!1549181))

(declare-fun bs!1166428 () Bool)

(declare-fun d!1549183 () Bool)

(assert (= bs!1166428 (and d!1549183 b!4831780)))

(declare-fun lambda!238289 () Int)

(assert (=> bs!1166428 (= (= lt!1977646 lt!1977452) (= lambda!238289 lambda!238238))))

(declare-fun bs!1166429 () Bool)

(assert (= bs!1166429 (and d!1549183 b!4831779)))

(assert (=> bs!1166429 (= (= lt!1977646 lt!1977452) (= lambda!238289 lambda!238239))))

(assert (=> bs!1166429 (= lambda!238289 lambda!238240)))

(declare-fun bs!1166430 () Bool)

(assert (= bs!1166430 (and d!1549183 d!1549117)))

(assert (=> bs!1166430 (= (= lt!1977646 lt!1977658) (= lambda!238289 lambda!238241))))

(assert (=> d!1549183 true))

(assert (=> d!1549183 (forall!12683 (toList!7556 lt!1977452) lambda!238289)))

(declare-fun lt!1977764 () Unit!143893)

(declare-fun choose!35278 (ListMap!6927 ListMap!6927 K!16757 V!17003) Unit!143893)

(assert (=> d!1549183 (= lt!1977764 (choose!35278 lt!1977452 lt!1977646 (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))) (_2!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))))

(assert (=> d!1549183 (forall!12683 (toList!7556 (+!2552 lt!1977452 (tuple2!58359 (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))) (_2!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))) lambda!238289)))

(assert (=> d!1549183 (= (addForallContainsKeyThenBeforeAdding!1006 lt!1977452 lt!1977646 (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))) (_2!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) lt!1977764)))

(declare-fun bs!1166431 () Bool)

(assert (= bs!1166431 d!1549183))

(declare-fun m!5825672 () Bool)

(assert (=> bs!1166431 m!5825672))

(declare-fun m!5825674 () Bool)

(assert (=> bs!1166431 m!5825674))

(declare-fun m!5825676 () Bool)

(assert (=> bs!1166431 m!5825676))

(declare-fun m!5825678 () Bool)

(assert (=> bs!1166431 m!5825678))

(assert (=> b!4831779 d!1549183))

(declare-fun d!1549185 () Bool)

(declare-fun res!2058107 () Bool)

(declare-fun e!3019412 () Bool)

(assert (=> d!1549185 (=> res!2058107 e!3019412)))

(assert (=> d!1549185 (= res!2058107 (is-Nil!55070 (t!362690 (_2!32474 (h!61505 (toList!7555 lm!2325))))))))

(assert (=> d!1549185 (= (forall!12683 (t!362690 (_2!32474 (h!61505 (toList!7555 lm!2325)))) lambda!238240) e!3019412)))

(declare-fun b!4831888 () Bool)

(declare-fun e!3019413 () Bool)

(assert (=> b!4831888 (= e!3019412 e!3019413)))

(declare-fun res!2058108 () Bool)

(assert (=> b!4831888 (=> (not res!2058108) (not e!3019413))))

(assert (=> b!4831888 (= res!2058108 (dynLambda!22252 lambda!238240 (h!61504 (t!362690 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))))

(declare-fun b!4831889 () Bool)

(assert (=> b!4831889 (= e!3019413 (forall!12683 (t!362690 (t!362690 (_2!32474 (h!61505 (toList!7555 lm!2325))))) lambda!238240))))

(assert (= (and d!1549185 (not res!2058107)) b!4831888))

(assert (= (and b!4831888 res!2058108) b!4831889))

(declare-fun b_lambda!190809 () Bool)

(assert (=> (not b_lambda!190809) (not b!4831888)))

(declare-fun m!5825680 () Bool)

(assert (=> b!4831888 m!5825680))

(declare-fun m!5825682 () Bool)

(assert (=> b!4831889 m!5825682))

(assert (=> b!4831779 d!1549185))

(declare-fun bs!1166432 () Bool)

(declare-fun b!4831891 () Bool)

(assert (= bs!1166432 (and b!4831891 d!1549117)))

(declare-fun lambda!238290 () Int)

(assert (=> bs!1166432 (= (= (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))) lt!1977658) (= lambda!238290 lambda!238241))))

(declare-fun bs!1166433 () Bool)

(assert (= bs!1166433 (and b!4831891 d!1549183)))

(assert (=> bs!1166433 (= (= (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))) lt!1977646) (= lambda!238290 lambda!238289))))

(declare-fun bs!1166434 () Bool)

(assert (= bs!1166434 (and b!4831891 b!4831780)))

(assert (=> bs!1166434 (= (= (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))) lt!1977452) (= lambda!238290 lambda!238238))))

(declare-fun bs!1166435 () Bool)

(assert (= bs!1166435 (and b!4831891 b!4831779)))

(assert (=> bs!1166435 (= (= (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))) lt!1977452) (= lambda!238290 lambda!238239))))

(assert (=> bs!1166435 (= (= (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))) lt!1977646) (= lambda!238290 lambda!238240))))

(assert (=> b!4831891 true))

(declare-fun bs!1166436 () Bool)

(declare-fun b!4831890 () Bool)

(assert (= bs!1166436 (and b!4831890 d!1549117)))

(declare-fun lambda!238291 () Int)

(assert (=> bs!1166436 (= (= (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))) lt!1977658) (= lambda!238291 lambda!238241))))

(declare-fun bs!1166437 () Bool)

(assert (= bs!1166437 (and b!4831890 b!4831891)))

(assert (=> bs!1166437 (= lambda!238291 lambda!238290)))

(declare-fun bs!1166438 () Bool)

(assert (= bs!1166438 (and b!4831890 d!1549183)))

(assert (=> bs!1166438 (= (= (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))) lt!1977646) (= lambda!238291 lambda!238289))))

(declare-fun bs!1166439 () Bool)

(assert (= bs!1166439 (and b!4831890 b!4831780)))

(assert (=> bs!1166439 (= (= (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))) lt!1977452) (= lambda!238291 lambda!238238))))

(declare-fun bs!1166440 () Bool)

(assert (= bs!1166440 (and b!4831890 b!4831779)))

(assert (=> bs!1166440 (= (= (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))) lt!1977452) (= lambda!238291 lambda!238239))))

(assert (=> bs!1166440 (= (= (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))) lt!1977646) (= lambda!238291 lambda!238240))))

(assert (=> b!4831890 true))

(declare-fun lt!1977773 () ListMap!6927)

(declare-fun lambda!238292 () Int)

(assert (=> bs!1166436 (= (= lt!1977773 lt!1977658) (= lambda!238292 lambda!238241))))

(assert (=> bs!1166437 (= (= lt!1977773 (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) (= lambda!238292 lambda!238290))))

(assert (=> bs!1166438 (= (= lt!1977773 lt!1977646) (= lambda!238292 lambda!238289))))

(assert (=> bs!1166439 (= (= lt!1977773 lt!1977452) (= lambda!238292 lambda!238238))))

(assert (=> bs!1166440 (= (= lt!1977773 lt!1977452) (= lambda!238292 lambda!238239))))

(assert (=> bs!1166440 (= (= lt!1977773 lt!1977646) (= lambda!238292 lambda!238240))))

(assert (=> b!4831890 (= (= lt!1977773 (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) (= lambda!238292 lambda!238291))))

(assert (=> b!4831890 true))

(declare-fun bs!1166441 () Bool)

(declare-fun d!1549187 () Bool)

(assert (= bs!1166441 (and d!1549187 d!1549117)))

(declare-fun lambda!238293 () Int)

(declare-fun lt!1977785 () ListMap!6927)

(assert (=> bs!1166441 (= (= lt!1977785 lt!1977658) (= lambda!238293 lambda!238241))))

(declare-fun bs!1166442 () Bool)

(assert (= bs!1166442 (and d!1549187 b!4831891)))

(assert (=> bs!1166442 (= (= lt!1977785 (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) (= lambda!238293 lambda!238290))))

(declare-fun bs!1166443 () Bool)

(assert (= bs!1166443 (and d!1549187 d!1549183)))

(assert (=> bs!1166443 (= (= lt!1977785 lt!1977646) (= lambda!238293 lambda!238289))))

(declare-fun bs!1166444 () Bool)

(assert (= bs!1166444 (and d!1549187 b!4831780)))

(assert (=> bs!1166444 (= (= lt!1977785 lt!1977452) (= lambda!238293 lambda!238238))))

(declare-fun bs!1166445 () Bool)

(assert (= bs!1166445 (and d!1549187 b!4831890)))

(assert (=> bs!1166445 (= (= lt!1977785 lt!1977773) (= lambda!238293 lambda!238292))))

(declare-fun bs!1166446 () Bool)

(assert (= bs!1166446 (and d!1549187 b!4831779)))

(assert (=> bs!1166446 (= (= lt!1977785 lt!1977452) (= lambda!238293 lambda!238239))))

(assert (=> bs!1166446 (= (= lt!1977785 lt!1977646) (= lambda!238293 lambda!238240))))

(assert (=> bs!1166445 (= (= lt!1977785 (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) (= lambda!238293 lambda!238291))))

(assert (=> d!1549187 true))

(declare-fun c!823334 () Bool)

(declare-fun bm!336726 () Bool)

(declare-fun call!336733 () Bool)

(assert (=> bm!336726 (= call!336733 (forall!12683 (ite c!823334 (toList!7556 (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) (t!362690 (_2!32474 (h!61505 (toList!7555 lm!2325))))) (ite c!823334 lambda!238290 lambda!238292)))))

(declare-fun bm!336727 () Bool)

(declare-fun call!336732 () Bool)

(assert (=> bm!336727 (= call!336732 (forall!12683 (toList!7556 (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) (ite c!823334 lambda!238290 lambda!238292)))))

(declare-fun e!3019414 () Bool)

(assert (=> d!1549187 e!3019414))

(declare-fun res!2058111 () Bool)

(assert (=> d!1549187 (=> (not res!2058111) (not e!3019414))))

(assert (=> d!1549187 (= res!2058111 (forall!12683 (t!362690 (_2!32474 (h!61505 (toList!7555 lm!2325)))) lambda!238293))))

(declare-fun e!3019415 () ListMap!6927)

(assert (=> d!1549187 (= lt!1977785 e!3019415)))

(assert (=> d!1549187 (= c!823334 (is-Nil!55070 (t!362690 (_2!32474 (h!61505 (toList!7555 lm!2325))))))))

(assert (=> d!1549187 (noDuplicateKeys!2473 (t!362690 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))

(assert (=> d!1549187 (= (addToMapMapFromBucket!1830 (t!362690 (_2!32474 (h!61505 (toList!7555 lm!2325)))) (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) lt!1977785)))

(assert (=> b!4831890 (= e!3019415 lt!1977773)))

(declare-fun lt!1977769 () ListMap!6927)

(assert (=> b!4831890 (= lt!1977769 (+!2552 (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))) (h!61504 (t!362690 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))))

(assert (=> b!4831890 (= lt!1977773 (addToMapMapFromBucket!1830 (t!362690 (t!362690 (_2!32474 (h!61505 (toList!7555 lm!2325))))) (+!2552 (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))) (h!61504 (t!362690 (_2!32474 (h!61505 (toList!7555 lm!2325))))))))))

(declare-fun lt!1977772 () Unit!143893)

(declare-fun call!336731 () Unit!143893)

(assert (=> b!4831890 (= lt!1977772 call!336731)))

(assert (=> b!4831890 (forall!12683 (toList!7556 (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) lambda!238291)))

(declare-fun lt!1977781 () Unit!143893)

(assert (=> b!4831890 (= lt!1977781 lt!1977772)))

(assert (=> b!4831890 (forall!12683 (toList!7556 lt!1977769) lambda!238292)))

(declare-fun lt!1977775 () Unit!143893)

(declare-fun Unit!143939 () Unit!143893)

(assert (=> b!4831890 (= lt!1977775 Unit!143939)))

(assert (=> b!4831890 (forall!12683 (t!362690 (t!362690 (_2!32474 (h!61505 (toList!7555 lm!2325))))) lambda!238292)))

(declare-fun lt!1977777 () Unit!143893)

(declare-fun Unit!143940 () Unit!143893)

(assert (=> b!4831890 (= lt!1977777 Unit!143940)))

(declare-fun lt!1977766 () Unit!143893)

(declare-fun Unit!143941 () Unit!143893)

(assert (=> b!4831890 (= lt!1977766 Unit!143941)))

(declare-fun lt!1977783 () Unit!143893)

(assert (=> b!4831890 (= lt!1977783 (forallContained!4416 (toList!7556 lt!1977769) lambda!238292 (h!61504 (t!362690 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))))

(assert (=> b!4831890 (contains!18883 lt!1977769 (_1!32473 (h!61504 (t!362690 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))))

(declare-fun lt!1977767 () Unit!143893)

(declare-fun Unit!143942 () Unit!143893)

(assert (=> b!4831890 (= lt!1977767 Unit!143942)))

(assert (=> b!4831890 (contains!18883 lt!1977773 (_1!32473 (h!61504 (t!362690 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))))

(declare-fun lt!1977776 () Unit!143893)

(declare-fun Unit!143943 () Unit!143893)

(assert (=> b!4831890 (= lt!1977776 Unit!143943)))

(assert (=> b!4831890 (forall!12683 (t!362690 (_2!32474 (h!61505 (toList!7555 lm!2325)))) lambda!238292)))

(declare-fun lt!1977770 () Unit!143893)

(declare-fun Unit!143944 () Unit!143893)

(assert (=> b!4831890 (= lt!1977770 Unit!143944)))

(assert (=> b!4831890 (forall!12683 (toList!7556 lt!1977769) lambda!238292)))

(declare-fun lt!1977780 () Unit!143893)

(declare-fun Unit!143945 () Unit!143893)

(assert (=> b!4831890 (= lt!1977780 Unit!143945)))

(declare-fun lt!1977778 () Unit!143893)

(declare-fun Unit!143946 () Unit!143893)

(assert (=> b!4831890 (= lt!1977778 Unit!143946)))

(declare-fun lt!1977768 () Unit!143893)

(assert (=> b!4831890 (= lt!1977768 (addForallContainsKeyThenBeforeAdding!1006 (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))) lt!1977773 (_1!32473 (h!61504 (t!362690 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) (_2!32473 (h!61504 (t!362690 (_2!32474 (h!61505 (toList!7555 lm!2325))))))))))

(assert (=> b!4831890 (forall!12683 (toList!7556 (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) lambda!238292)))

(declare-fun lt!1977784 () Unit!143893)

(assert (=> b!4831890 (= lt!1977784 lt!1977768)))

(assert (=> b!4831890 (forall!12683 (toList!7556 (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) lambda!238292)))

(declare-fun lt!1977771 () Unit!143893)

(declare-fun Unit!143947 () Unit!143893)

(assert (=> b!4831890 (= lt!1977771 Unit!143947)))

(declare-fun res!2058110 () Bool)

(assert (=> b!4831890 (= res!2058110 call!336733)))

(declare-fun e!3019416 () Bool)

(assert (=> b!4831890 (=> (not res!2058110) (not e!3019416))))

(assert (=> b!4831890 e!3019416))

(declare-fun lt!1977774 () Unit!143893)

(declare-fun Unit!143948 () Unit!143893)

(assert (=> b!4831890 (= lt!1977774 Unit!143948)))

(assert (=> b!4831891 (= e!3019415 (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))))))

(declare-fun lt!1977779 () Unit!143893)

(assert (=> b!4831891 (= lt!1977779 call!336731)))

(assert (=> b!4831891 call!336733))

(declare-fun lt!1977782 () Unit!143893)

(assert (=> b!4831891 (= lt!1977782 lt!1977779)))

(assert (=> b!4831891 call!336732))

(declare-fun lt!1977765 () Unit!143893)

(declare-fun Unit!143949 () Unit!143893)

(assert (=> b!4831891 (= lt!1977765 Unit!143949)))

(declare-fun b!4831892 () Bool)

(declare-fun res!2058109 () Bool)

(assert (=> b!4831892 (=> (not res!2058109) (not e!3019414))))

(assert (=> b!4831892 (= res!2058109 (forall!12683 (toList!7556 (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) lambda!238293))))

(declare-fun b!4831893 () Bool)

(assert (=> b!4831893 (= e!3019414 (invariantList!1829 (toList!7556 lt!1977785)))))

(declare-fun bm!336728 () Bool)

(assert (=> bm!336728 (= call!336731 (lemmaContainsAllItsOwnKeys!1007 (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))))

(declare-fun b!4831894 () Bool)

(assert (=> b!4831894 (= e!3019416 call!336732)))

(assert (= (and d!1549187 c!823334) b!4831891))

(assert (= (and d!1549187 (not c!823334)) b!4831890))

(assert (= (and b!4831890 res!2058110) b!4831894))

(assert (= (or b!4831891 b!4831890) bm!336728))

(assert (= (or b!4831891 b!4831894) bm!336727))

(assert (= (or b!4831891 b!4831890) bm!336726))

(assert (= (and d!1549187 res!2058111) b!4831892))

(assert (= (and b!4831892 res!2058109) b!4831893))

(declare-fun m!5825684 () Bool)

(assert (=> b!4831890 m!5825684))

(declare-fun m!5825686 () Bool)

(assert (=> b!4831890 m!5825686))

(assert (=> b!4831890 m!5825482))

(assert (=> b!4831890 m!5825684))

(declare-fun m!5825688 () Bool)

(assert (=> b!4831890 m!5825688))

(declare-fun m!5825690 () Bool)

(assert (=> b!4831890 m!5825690))

(declare-fun m!5825692 () Bool)

(assert (=> b!4831890 m!5825692))

(assert (=> b!4831890 m!5825688))

(declare-fun m!5825694 () Bool)

(assert (=> b!4831890 m!5825694))

(assert (=> b!4831890 m!5825692))

(assert (=> b!4831890 m!5825482))

(declare-fun m!5825696 () Bool)

(assert (=> b!4831890 m!5825696))

(declare-fun m!5825698 () Bool)

(assert (=> b!4831890 m!5825698))

(declare-fun m!5825700 () Bool)

(assert (=> b!4831890 m!5825700))

(declare-fun m!5825702 () Bool)

(assert (=> b!4831890 m!5825702))

(declare-fun m!5825704 () Bool)

(assert (=> b!4831890 m!5825704))

(declare-fun m!5825706 () Bool)

(assert (=> bm!336726 m!5825706))

(declare-fun m!5825708 () Bool)

(assert (=> b!4831893 m!5825708))

(declare-fun m!5825710 () Bool)

(assert (=> d!1549187 m!5825710))

(declare-fun m!5825712 () Bool)

(assert (=> d!1549187 m!5825712))

(declare-fun m!5825714 () Bool)

(assert (=> bm!336727 m!5825714))

(declare-fun m!5825716 () Bool)

(assert (=> b!4831892 m!5825716))

(assert (=> bm!336728 m!5825482))

(declare-fun m!5825718 () Bool)

(assert (=> bm!336728 m!5825718))

(assert (=> b!4831779 d!1549187))

(declare-fun d!1549189 () Bool)

(declare-fun res!2058112 () Bool)

(declare-fun e!3019417 () Bool)

(assert (=> d!1549189 (=> res!2058112 e!3019417)))

(assert (=> d!1549189 (= res!2058112 (is-Nil!55070 (toList!7556 lt!1977452)))))

(assert (=> d!1549189 (= (forall!12683 (toList!7556 lt!1977452) lambda!238240) e!3019417)))

(declare-fun b!4831895 () Bool)

(declare-fun e!3019418 () Bool)

(assert (=> b!4831895 (= e!3019417 e!3019418)))

(declare-fun res!2058113 () Bool)

(assert (=> b!4831895 (=> (not res!2058113) (not e!3019418))))

(assert (=> b!4831895 (= res!2058113 (dynLambda!22252 lambda!238240 (h!61504 (toList!7556 lt!1977452))))))

(declare-fun b!4831896 () Bool)

(assert (=> b!4831896 (= e!3019418 (forall!12683 (t!362690 (toList!7556 lt!1977452)) lambda!238240))))

(assert (= (and d!1549189 (not res!2058112)) b!4831895))

(assert (= (and b!4831895 res!2058113) b!4831896))

(declare-fun b_lambda!190811 () Bool)

(assert (=> (not b_lambda!190811) (not b!4831895)))

(declare-fun m!5825720 () Bool)

(assert (=> b!4831895 m!5825720))

(declare-fun m!5825722 () Bool)

(assert (=> b!4831896 m!5825722))

(assert (=> b!4831779 d!1549189))

(declare-fun b!4831897 () Bool)

(declare-fun e!3019424 () Unit!143893)

(declare-fun lt!1977787 () Unit!143893)

(assert (=> b!4831897 (= e!3019424 lt!1977787)))

(declare-fun lt!1977793 () Unit!143893)

(assert (=> b!4831897 (= lt!1977793 (lemmaContainsKeyImpliesGetValueByKeyDefined!2441 (toList!7556 lt!1977642) (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))))

(assert (=> b!4831897 (isDefined!10644 (getValueByKey!2656 (toList!7556 lt!1977642) (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))))

(declare-fun lt!1977790 () Unit!143893)

(assert (=> b!4831897 (= lt!1977790 lt!1977793)))

(assert (=> b!4831897 (= lt!1977787 (lemmaInListThenGetKeysListContains!1170 (toList!7556 lt!1977642) (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))))

(declare-fun call!336734 () Bool)

(assert (=> b!4831897 call!336734))

(declare-fun b!4831898 () Bool)

(declare-fun e!3019420 () Bool)

(declare-fun e!3019422 () Bool)

(assert (=> b!4831898 (= e!3019420 e!3019422)))

(declare-fun res!2058116 () Bool)

(assert (=> b!4831898 (=> (not res!2058116) (not e!3019422))))

(assert (=> b!4831898 (= res!2058116 (isDefined!10644 (getValueByKey!2656 (toList!7556 lt!1977642) (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))))))))

(declare-fun d!1549191 () Bool)

(assert (=> d!1549191 e!3019420))

(declare-fun res!2058115 () Bool)

(assert (=> d!1549191 (=> res!2058115 e!3019420)))

(declare-fun e!3019419 () Bool)

(assert (=> d!1549191 (= res!2058115 e!3019419)))

(declare-fun res!2058114 () Bool)

(assert (=> d!1549191 (=> (not res!2058114) (not e!3019419))))

(declare-fun lt!1977788 () Bool)

(assert (=> d!1549191 (= res!2058114 (not lt!1977788))))

(declare-fun lt!1977789 () Bool)

(assert (=> d!1549191 (= lt!1977788 lt!1977789)))

(declare-fun lt!1977792 () Unit!143893)

(assert (=> d!1549191 (= lt!1977792 e!3019424)))

(declare-fun c!823336 () Bool)

(assert (=> d!1549191 (= c!823336 lt!1977789)))

(assert (=> d!1549191 (= lt!1977789 (containsKey!4440 (toList!7556 lt!1977642) (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))))

(assert (=> d!1549191 (= (contains!18883 lt!1977642 (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) lt!1977788)))

(declare-fun bm!336729 () Bool)

(declare-fun e!3019423 () List!55198)

(assert (=> bm!336729 (= call!336734 (contains!18886 e!3019423 (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))))

(declare-fun c!823337 () Bool)

(assert (=> bm!336729 (= c!823337 c!823336)))

(declare-fun b!4831899 () Bool)

(assert (=> b!4831899 (= e!3019422 (contains!18886 (keys!20284 lt!1977642) (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))))

(declare-fun b!4831900 () Bool)

(declare-fun e!3019421 () Unit!143893)

(assert (=> b!4831900 (= e!3019424 e!3019421)))

(declare-fun c!823335 () Bool)

(assert (=> b!4831900 (= c!823335 call!336734)))

(declare-fun b!4831901 () Bool)

(assert (=> b!4831901 (= e!3019423 (keys!20284 lt!1977642))))

(declare-fun b!4831902 () Bool)

(assert (=> b!4831902 (= e!3019419 (not (contains!18886 (keys!20284 lt!1977642) (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))))))))

(declare-fun b!4831903 () Bool)

(assert (=> b!4831903 false))

(declare-fun lt!1977786 () Unit!143893)

(declare-fun lt!1977791 () Unit!143893)

(assert (=> b!4831903 (= lt!1977786 lt!1977791)))

(assert (=> b!4831903 (containsKey!4440 (toList!7556 lt!1977642) (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))))))

(assert (=> b!4831903 (= lt!1977791 (lemmaInGetKeysListThenContainsKey!1175 (toList!7556 lt!1977642) (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))))

(declare-fun Unit!143950 () Unit!143893)

(assert (=> b!4831903 (= e!3019421 Unit!143950)))

(declare-fun b!4831904 () Bool)

(declare-fun Unit!143951 () Unit!143893)

(assert (=> b!4831904 (= e!3019421 Unit!143951)))

(declare-fun b!4831905 () Bool)

(assert (=> b!4831905 (= e!3019423 (getKeysList!1175 (toList!7556 lt!1977642)))))

(assert (= (and d!1549191 c!823336) b!4831897))

(assert (= (and d!1549191 (not c!823336)) b!4831900))

(assert (= (and b!4831900 c!823335) b!4831903))

(assert (= (and b!4831900 (not c!823335)) b!4831904))

(assert (= (or b!4831897 b!4831900) bm!336729))

(assert (= (and bm!336729 c!823337) b!4831905))

(assert (= (and bm!336729 (not c!823337)) b!4831901))

(assert (= (and d!1549191 res!2058114) b!4831902))

(assert (= (and d!1549191 (not res!2058115)) b!4831898))

(assert (= (and b!4831898 res!2058116) b!4831899))

(declare-fun m!5825724 () Bool)

(assert (=> b!4831898 m!5825724))

(assert (=> b!4831898 m!5825724))

(declare-fun m!5825726 () Bool)

(assert (=> b!4831898 m!5825726))

(declare-fun m!5825728 () Bool)

(assert (=> b!4831905 m!5825728))

(declare-fun m!5825730 () Bool)

(assert (=> bm!336729 m!5825730))

(declare-fun m!5825732 () Bool)

(assert (=> b!4831901 m!5825732))

(assert (=> b!4831899 m!5825732))

(assert (=> b!4831899 m!5825732))

(declare-fun m!5825734 () Bool)

(assert (=> b!4831899 m!5825734))

(declare-fun m!5825736 () Bool)

(assert (=> b!4831903 m!5825736))

(declare-fun m!5825738 () Bool)

(assert (=> b!4831903 m!5825738))

(assert (=> b!4831902 m!5825732))

(assert (=> b!4831902 m!5825732))

(assert (=> b!4831902 m!5825734))

(declare-fun m!5825740 () Bool)

(assert (=> b!4831897 m!5825740))

(assert (=> b!4831897 m!5825724))

(assert (=> b!4831897 m!5825724))

(assert (=> b!4831897 m!5825726))

(declare-fun m!5825742 () Bool)

(assert (=> b!4831897 m!5825742))

(assert (=> d!1549191 m!5825736))

(assert (=> b!4831779 d!1549191))

(declare-fun d!1549193 () Bool)

(declare-fun e!3019427 () Bool)

(assert (=> d!1549193 e!3019427))

(declare-fun res!2058121 () Bool)

(assert (=> d!1549193 (=> (not res!2058121) (not e!3019427))))

(declare-fun lt!1977805 () ListMap!6927)

(assert (=> d!1549193 (= res!2058121 (contains!18883 lt!1977805 (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))))

(declare-fun lt!1977803 () List!55194)

(assert (=> d!1549193 (= lt!1977805 (ListMap!6928 lt!1977803))))

(declare-fun lt!1977804 () Unit!143893)

(declare-fun lt!1977802 () Unit!143893)

(assert (=> d!1549193 (= lt!1977804 lt!1977802)))

(assert (=> d!1549193 (= (getValueByKey!2656 lt!1977803 (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) (Some!13528 (_2!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1234 (List!55194 K!16757 V!17003) Unit!143893)

(assert (=> d!1549193 (= lt!1977802 (lemmaContainsTupThenGetReturnValue!1234 lt!1977803 (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))) (_2!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))))

(declare-fun insertNoDuplicatedKeys!742 (List!55194 K!16757 V!17003) List!55194)

(assert (=> d!1549193 (= lt!1977803 (insertNoDuplicatedKeys!742 (toList!7556 lt!1977452) (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))) (_2!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))))

(assert (=> d!1549193 (= (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))) lt!1977805)))

(declare-fun b!4831910 () Bool)

(declare-fun res!2058122 () Bool)

(assert (=> b!4831910 (=> (not res!2058122) (not e!3019427))))

(assert (=> b!4831910 (= res!2058122 (= (getValueByKey!2656 (toList!7556 lt!1977805) (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) (Some!13528 (_2!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))))))))

(declare-fun b!4831911 () Bool)

(declare-fun contains!18888 (List!55194 tuple2!58358) Bool)

(assert (=> b!4831911 (= e!3019427 (contains!18888 (toList!7556 lt!1977805) (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))))))

(assert (= (and d!1549193 res!2058121) b!4831910))

(assert (= (and b!4831910 res!2058122) b!4831911))

(declare-fun m!5825744 () Bool)

(assert (=> d!1549193 m!5825744))

(declare-fun m!5825746 () Bool)

(assert (=> d!1549193 m!5825746))

(declare-fun m!5825748 () Bool)

(assert (=> d!1549193 m!5825748))

(declare-fun m!5825750 () Bool)

(assert (=> d!1549193 m!5825750))

(declare-fun m!5825752 () Bool)

(assert (=> b!4831910 m!5825752))

(declare-fun m!5825754 () Bool)

(assert (=> b!4831911 m!5825754))

(assert (=> b!4831779 d!1549193))

(declare-fun d!1549195 () Bool)

(declare-fun res!2058123 () Bool)

(declare-fun e!3019428 () Bool)

(assert (=> d!1549195 (=> res!2058123 e!3019428)))

(assert (=> d!1549195 (= res!2058123 (is-Nil!55070 (toList!7556 lt!1977452)))))

(assert (=> d!1549195 (= (forall!12683 (toList!7556 lt!1977452) lambda!238239) e!3019428)))

(declare-fun b!4831912 () Bool)

(declare-fun e!3019429 () Bool)

(assert (=> b!4831912 (= e!3019428 e!3019429)))

(declare-fun res!2058124 () Bool)

(assert (=> b!4831912 (=> (not res!2058124) (not e!3019429))))

(assert (=> b!4831912 (= res!2058124 (dynLambda!22252 lambda!238239 (h!61504 (toList!7556 lt!1977452))))))

(declare-fun b!4831913 () Bool)

(assert (=> b!4831913 (= e!3019429 (forall!12683 (t!362690 (toList!7556 lt!1977452)) lambda!238239))))

(assert (= (and d!1549195 (not res!2058123)) b!4831912))

(assert (= (and b!4831912 res!2058124) b!4831913))

(declare-fun b_lambda!190813 () Bool)

(assert (=> (not b_lambda!190813) (not b!4831912)))

(declare-fun m!5825756 () Bool)

(assert (=> b!4831912 m!5825756))

(declare-fun m!5825758 () Bool)

(assert (=> b!4831913 m!5825758))

(assert (=> b!4831779 d!1549195))

(declare-fun d!1549197 () Bool)

(declare-fun res!2058125 () Bool)

(declare-fun e!3019430 () Bool)

(assert (=> d!1549197 (=> res!2058125 e!3019430)))

(assert (=> d!1549197 (= res!2058125 (is-Nil!55070 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))

(assert (=> d!1549197 (= (forall!12683 (_2!32474 (h!61505 (toList!7555 lm!2325))) lambda!238240) e!3019430)))

(declare-fun b!4831914 () Bool)

(declare-fun e!3019431 () Bool)

(assert (=> b!4831914 (= e!3019430 e!3019431)))

(declare-fun res!2058126 () Bool)

(assert (=> b!4831914 (=> (not res!2058126) (not e!3019431))))

(assert (=> b!4831914 (= res!2058126 (dynLambda!22252 lambda!238240 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))))))

(declare-fun b!4831915 () Bool)

(assert (=> b!4831915 (= e!3019431 (forall!12683 (t!362690 (_2!32474 (h!61505 (toList!7555 lm!2325)))) lambda!238240))))

(assert (= (and d!1549197 (not res!2058125)) b!4831914))

(assert (= (and b!4831914 res!2058126) b!4831915))

(declare-fun b_lambda!190815 () Bool)

(assert (=> (not b_lambda!190815) (not b!4831914)))

(declare-fun m!5825760 () Bool)

(assert (=> b!4831914 m!5825760))

(assert (=> b!4831915 m!5825500))

(assert (=> b!4831779 d!1549197))

(declare-fun d!1549199 () Bool)

(assert (=> d!1549199 (dynLambda!22252 lambda!238240 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))

(declare-fun lt!1977808 () Unit!143893)

(declare-fun choose!35279 (List!55194 Int tuple2!58358) Unit!143893)

(assert (=> d!1549199 (= lt!1977808 (choose!35279 (toList!7556 lt!1977642) lambda!238240 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))))))

(declare-fun e!3019434 () Bool)

(assert (=> d!1549199 e!3019434))

(declare-fun res!2058129 () Bool)

(assert (=> d!1549199 (=> (not res!2058129) (not e!3019434))))

(assert (=> d!1549199 (= res!2058129 (forall!12683 (toList!7556 lt!1977642) lambda!238240))))

(assert (=> d!1549199 (= (forallContained!4416 (toList!7556 lt!1977642) lambda!238240 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))) lt!1977808)))

(declare-fun b!4831918 () Bool)

(assert (=> b!4831918 (= e!3019434 (contains!18888 (toList!7556 lt!1977642) (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))))))

(assert (= (and d!1549199 res!2058129) b!4831918))

(declare-fun b_lambda!190817 () Bool)

(assert (=> (not b_lambda!190817) (not d!1549199)))

(assert (=> d!1549199 m!5825760))

(declare-fun m!5825762 () Bool)

(assert (=> d!1549199 m!5825762))

(assert (=> d!1549199 m!5825490))

(declare-fun m!5825764 () Bool)

(assert (=> b!4831918 m!5825764))

(assert (=> b!4831779 d!1549199))

(declare-fun d!1549201 () Bool)

(declare-fun res!2058130 () Bool)

(declare-fun e!3019435 () Bool)

(assert (=> d!1549201 (=> res!2058130 e!3019435)))

(assert (=> d!1549201 (= res!2058130 (is-Nil!55070 (toList!7556 lt!1977642)))))

(assert (=> d!1549201 (= (forall!12683 (toList!7556 lt!1977642) lambda!238240) e!3019435)))

(declare-fun b!4831919 () Bool)

(declare-fun e!3019436 () Bool)

(assert (=> b!4831919 (= e!3019435 e!3019436)))

(declare-fun res!2058131 () Bool)

(assert (=> b!4831919 (=> (not res!2058131) (not e!3019436))))

(assert (=> b!4831919 (= res!2058131 (dynLambda!22252 lambda!238240 (h!61504 (toList!7556 lt!1977642))))))

(declare-fun b!4831920 () Bool)

(assert (=> b!4831920 (= e!3019436 (forall!12683 (t!362690 (toList!7556 lt!1977642)) lambda!238240))))

(assert (= (and d!1549201 (not res!2058130)) b!4831919))

(assert (= (and b!4831919 res!2058131) b!4831920))

(declare-fun b_lambda!190819 () Bool)

(assert (=> (not b_lambda!190819) (not b!4831919)))

(declare-fun m!5825766 () Bool)

(assert (=> b!4831919 m!5825766))

(declare-fun m!5825768 () Bool)

(assert (=> b!4831920 m!5825768))

(assert (=> b!4831779 d!1549201))

(declare-fun b!4831921 () Bool)

(declare-fun e!3019442 () Unit!143893)

(declare-fun lt!1977810 () Unit!143893)

(assert (=> b!4831921 (= e!3019442 lt!1977810)))

(declare-fun lt!1977816 () Unit!143893)

(assert (=> b!4831921 (= lt!1977816 (lemmaContainsKeyImpliesGetValueByKeyDefined!2441 (toList!7556 lt!1977646) (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))))

(assert (=> b!4831921 (isDefined!10644 (getValueByKey!2656 (toList!7556 lt!1977646) (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))))

(declare-fun lt!1977813 () Unit!143893)

(assert (=> b!4831921 (= lt!1977813 lt!1977816)))

(assert (=> b!4831921 (= lt!1977810 (lemmaInListThenGetKeysListContains!1170 (toList!7556 lt!1977646) (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))))

(declare-fun call!336735 () Bool)

(assert (=> b!4831921 call!336735))

(declare-fun b!4831922 () Bool)

(declare-fun e!3019438 () Bool)

(declare-fun e!3019440 () Bool)

(assert (=> b!4831922 (= e!3019438 e!3019440)))

(declare-fun res!2058134 () Bool)

(assert (=> b!4831922 (=> (not res!2058134) (not e!3019440))))

(assert (=> b!4831922 (= res!2058134 (isDefined!10644 (getValueByKey!2656 (toList!7556 lt!1977646) (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))))))))

(declare-fun d!1549203 () Bool)

(assert (=> d!1549203 e!3019438))

(declare-fun res!2058133 () Bool)

(assert (=> d!1549203 (=> res!2058133 e!3019438)))

(declare-fun e!3019437 () Bool)

(assert (=> d!1549203 (= res!2058133 e!3019437)))

(declare-fun res!2058132 () Bool)

(assert (=> d!1549203 (=> (not res!2058132) (not e!3019437))))

(declare-fun lt!1977811 () Bool)

(assert (=> d!1549203 (= res!2058132 (not lt!1977811))))

(declare-fun lt!1977812 () Bool)

(assert (=> d!1549203 (= lt!1977811 lt!1977812)))

(declare-fun lt!1977815 () Unit!143893)

(assert (=> d!1549203 (= lt!1977815 e!3019442)))

(declare-fun c!823339 () Bool)

(assert (=> d!1549203 (= c!823339 lt!1977812)))

(assert (=> d!1549203 (= lt!1977812 (containsKey!4440 (toList!7556 lt!1977646) (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))))

(assert (=> d!1549203 (= (contains!18883 lt!1977646 (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) lt!1977811)))

(declare-fun bm!336730 () Bool)

(declare-fun e!3019441 () List!55198)

(assert (=> bm!336730 (= call!336735 (contains!18886 e!3019441 (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))))

(declare-fun c!823340 () Bool)

(assert (=> bm!336730 (= c!823340 c!823339)))

(declare-fun b!4831923 () Bool)

(assert (=> b!4831923 (= e!3019440 (contains!18886 (keys!20284 lt!1977646) (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))))

(declare-fun b!4831924 () Bool)

(declare-fun e!3019439 () Unit!143893)

(assert (=> b!4831924 (= e!3019442 e!3019439)))

(declare-fun c!823338 () Bool)

(assert (=> b!4831924 (= c!823338 call!336735)))

(declare-fun b!4831925 () Bool)

(assert (=> b!4831925 (= e!3019441 (keys!20284 lt!1977646))))

(declare-fun b!4831926 () Bool)

(assert (=> b!4831926 (= e!3019437 (not (contains!18886 (keys!20284 lt!1977646) (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))))))))

(declare-fun b!4831927 () Bool)

(assert (=> b!4831927 false))

(declare-fun lt!1977809 () Unit!143893)

(declare-fun lt!1977814 () Unit!143893)

(assert (=> b!4831927 (= lt!1977809 lt!1977814)))

(assert (=> b!4831927 (containsKey!4440 (toList!7556 lt!1977646) (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))))))

(assert (=> b!4831927 (= lt!1977814 (lemmaInGetKeysListThenContainsKey!1175 (toList!7556 lt!1977646) (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))))

(declare-fun Unit!143952 () Unit!143893)

(assert (=> b!4831927 (= e!3019439 Unit!143952)))

(declare-fun b!4831928 () Bool)

(declare-fun Unit!143953 () Unit!143893)

(assert (=> b!4831928 (= e!3019439 Unit!143953)))

(declare-fun b!4831929 () Bool)

(assert (=> b!4831929 (= e!3019441 (getKeysList!1175 (toList!7556 lt!1977646)))))

(assert (= (and d!1549203 c!823339) b!4831921))

(assert (= (and d!1549203 (not c!823339)) b!4831924))

(assert (= (and b!4831924 c!823338) b!4831927))

(assert (= (and b!4831924 (not c!823338)) b!4831928))

(assert (= (or b!4831921 b!4831924) bm!336730))

(assert (= (and bm!336730 c!823340) b!4831929))

(assert (= (and bm!336730 (not c!823340)) b!4831925))

(assert (= (and d!1549203 res!2058132) b!4831926))

(assert (= (and d!1549203 (not res!2058133)) b!4831922))

(assert (= (and b!4831922 res!2058134) b!4831923))

(declare-fun m!5825770 () Bool)

(assert (=> b!4831922 m!5825770))

(assert (=> b!4831922 m!5825770))

(declare-fun m!5825772 () Bool)

(assert (=> b!4831922 m!5825772))

(declare-fun m!5825774 () Bool)

(assert (=> b!4831929 m!5825774))

(declare-fun m!5825776 () Bool)

(assert (=> bm!336730 m!5825776))

(declare-fun m!5825778 () Bool)

(assert (=> b!4831925 m!5825778))

(assert (=> b!4831923 m!5825778))

(assert (=> b!4831923 m!5825778))

(declare-fun m!5825780 () Bool)

(assert (=> b!4831923 m!5825780))

(declare-fun m!5825782 () Bool)

(assert (=> b!4831927 m!5825782))

(declare-fun m!5825784 () Bool)

(assert (=> b!4831927 m!5825784))

(assert (=> b!4831926 m!5825778))

(assert (=> b!4831926 m!5825778))

(assert (=> b!4831926 m!5825780))

(declare-fun m!5825786 () Bool)

(assert (=> b!4831921 m!5825786))

(assert (=> b!4831921 m!5825770))

(assert (=> b!4831921 m!5825770))

(assert (=> b!4831921 m!5825772))

(declare-fun m!5825788 () Bool)

(assert (=> b!4831921 m!5825788))

(assert (=> d!1549203 m!5825782))

(assert (=> b!4831779 d!1549203))

(declare-fun d!1549205 () Bool)

(declare-fun noDuplicatedKeys!495 (List!55194) Bool)

(assert (=> d!1549205 (= (invariantList!1829 (toList!7556 lt!1977516)) (noDuplicatedKeys!495 (toList!7556 lt!1977516)))))

(declare-fun bs!1166447 () Bool)

(assert (= bs!1166447 d!1549205))

(declare-fun m!5825790 () Bool)

(assert (=> bs!1166447 m!5825790))

(assert (=> d!1549081 d!1549205))

(declare-fun d!1549207 () Bool)

(declare-fun res!2058135 () Bool)

(declare-fun e!3019443 () Bool)

(assert (=> d!1549207 (=> res!2058135 e!3019443)))

(assert (=> d!1549207 (= res!2058135 (is-Nil!55071 (toList!7555 lt!1977454)))))

(assert (=> d!1549207 (= (forall!12681 (toList!7555 lt!1977454) lambda!238197) e!3019443)))

(declare-fun b!4831930 () Bool)

(declare-fun e!3019444 () Bool)

(assert (=> b!4831930 (= e!3019443 e!3019444)))

(declare-fun res!2058136 () Bool)

(assert (=> b!4831930 (=> (not res!2058136) (not e!3019444))))

(assert (=> b!4831930 (= res!2058136 (dynLambda!22250 lambda!238197 (h!61505 (toList!7555 lt!1977454))))))

(declare-fun b!4831931 () Bool)

(assert (=> b!4831931 (= e!3019444 (forall!12681 (t!362691 (toList!7555 lt!1977454)) lambda!238197))))

(assert (= (and d!1549207 (not res!2058135)) b!4831930))

(assert (= (and b!4831930 res!2058136) b!4831931))

(declare-fun b_lambda!190821 () Bool)

(assert (=> (not b_lambda!190821) (not b!4831930)))

(declare-fun m!5825792 () Bool)

(assert (=> b!4831930 m!5825792))

(declare-fun m!5825794 () Bool)

(assert (=> b!4831931 m!5825794))

(assert (=> d!1549081 d!1549207))

(declare-fun d!1549209 () Bool)

(assert (=> d!1549209 (= (get!18858 (getValueByKey!2657 (toList!7555 lm!2325) (_1!32474 (h!61505 (toList!7555 lm!2325))))) (v!49226 (getValueByKey!2657 (toList!7555 lm!2325) (_1!32474 (h!61505 (toList!7555 lm!2325))))))))

(assert (=> d!1549131 d!1549209))

(declare-fun d!1549211 () Bool)

(declare-fun c!823341 () Bool)

(assert (=> d!1549211 (= c!823341 (and (is-Cons!55071 (toList!7555 lm!2325)) (= (_1!32474 (h!61505 (toList!7555 lm!2325))) (_1!32474 (h!61505 (toList!7555 lm!2325))))))))

(declare-fun e!3019445 () Option!13530)

(assert (=> d!1549211 (= (getValueByKey!2657 (toList!7555 lm!2325) (_1!32474 (h!61505 (toList!7555 lm!2325)))) e!3019445)))

(declare-fun b!4831933 () Bool)

(declare-fun e!3019446 () Option!13530)

(assert (=> b!4831933 (= e!3019445 e!3019446)))

(declare-fun c!823342 () Bool)

(assert (=> b!4831933 (= c!823342 (and (is-Cons!55071 (toList!7555 lm!2325)) (not (= (_1!32474 (h!61505 (toList!7555 lm!2325))) (_1!32474 (h!61505 (toList!7555 lm!2325)))))))))

(declare-fun b!4831932 () Bool)

(assert (=> b!4831932 (= e!3019445 (Some!13529 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))

(declare-fun b!4831935 () Bool)

(assert (=> b!4831935 (= e!3019446 None!13529)))

(declare-fun b!4831934 () Bool)

(assert (=> b!4831934 (= e!3019446 (getValueByKey!2657 (t!362691 (toList!7555 lm!2325)) (_1!32474 (h!61505 (toList!7555 lm!2325)))))))

(assert (= (and d!1549211 c!823341) b!4831932))

(assert (= (and d!1549211 (not c!823341)) b!4831933))

(assert (= (and b!4831933 c!823342) b!4831934))

(assert (= (and b!4831933 (not c!823342)) b!4831935))

(declare-fun m!5825796 () Bool)

(assert (=> b!4831934 m!5825796))

(assert (=> d!1549131 d!1549211))

(declare-fun d!1549213 () Bool)

(assert (=> d!1549213 (isDefined!10644 (getValueByKey!2656 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))) key!5594))))

(declare-fun lt!1977819 () Unit!143893)

(declare-fun choose!35280 (List!55194 K!16757) Unit!143893)

(assert (=> d!1549213 (= lt!1977819 (choose!35280 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))) key!5594))))

(assert (=> d!1549213 (invariantList!1829 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))))))

(assert (=> d!1549213 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2441 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))) key!5594) lt!1977819)))

(declare-fun bs!1166448 () Bool)

(assert (= bs!1166448 d!1549213))

(assert (=> bs!1166448 m!5825294))

(assert (=> bs!1166448 m!5825294))

(assert (=> bs!1166448 m!5825296))

(declare-fun m!5825798 () Bool)

(assert (=> bs!1166448 m!5825798))

(declare-fun m!5825800 () Bool)

(assert (=> bs!1166448 m!5825800))

(assert (=> b!4831649 d!1549213))

(declare-fun d!1549215 () Bool)

(declare-fun isEmpty!29691 (Option!13529) Bool)

(assert (=> d!1549215 (= (isDefined!10644 (getValueByKey!2656 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))) key!5594)) (not (isEmpty!29691 (getValueByKey!2656 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))) key!5594))))))

(declare-fun bs!1166449 () Bool)

(assert (= bs!1166449 d!1549215))

(assert (=> bs!1166449 m!5825294))

(declare-fun m!5825802 () Bool)

(assert (=> bs!1166449 m!5825802))

(assert (=> b!4831649 d!1549215))

(declare-fun b!4831947 () Bool)

(declare-fun e!3019452 () Option!13529)

(assert (=> b!4831947 (= e!3019452 None!13528)))

(declare-fun b!4831945 () Bool)

(declare-fun e!3019451 () Option!13529)

(assert (=> b!4831945 (= e!3019451 e!3019452)))

(declare-fun c!823348 () Bool)

(assert (=> b!4831945 (= c!823348 (and (is-Cons!55070 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (not (= (_1!32473 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))))) key!5594))))))

(declare-fun d!1549217 () Bool)

(declare-fun c!823347 () Bool)

(assert (=> d!1549217 (= c!823347 (and (is-Cons!55070 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (= (_1!32473 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))))) key!5594)))))

(assert (=> d!1549217 (= (getValueByKey!2656 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))) key!5594) e!3019451)))

(declare-fun b!4831946 () Bool)

(assert (=> b!4831946 (= e!3019452 (getValueByKey!2656 (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) key!5594))))

(declare-fun b!4831944 () Bool)

(assert (=> b!4831944 (= e!3019451 (Some!13528 (_2!32473 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))))))))

(assert (= (and d!1549217 c!823347) b!4831944))

(assert (= (and d!1549217 (not c!823347)) b!4831945))

(assert (= (and b!4831945 c!823348) b!4831946))

(assert (= (and b!4831945 (not c!823348)) b!4831947))

(declare-fun m!5825804 () Bool)

(assert (=> b!4831946 m!5825804))

(assert (=> b!4831649 d!1549217))

(declare-fun d!1549219 () Bool)

(assert (=> d!1549219 (contains!18886 (getKeysList!1175 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) key!5594)))

(declare-fun lt!1977822 () Unit!143893)

(declare-fun choose!35281 (List!55194 K!16757) Unit!143893)

(assert (=> d!1549219 (= lt!1977822 (choose!35281 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))) key!5594))))

(assert (=> d!1549219 (invariantList!1829 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))))))

(assert (=> d!1549219 (= (lemmaInListThenGetKeysListContains!1170 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))) key!5594) lt!1977822)))

(declare-fun bs!1166450 () Bool)

(assert (= bs!1166450 d!1549219))

(assert (=> bs!1166450 m!5825298))

(assert (=> bs!1166450 m!5825298))

(declare-fun m!5825806 () Bool)

(assert (=> bs!1166450 m!5825806))

(declare-fun m!5825808 () Bool)

(assert (=> bs!1166450 m!5825808))

(assert (=> bs!1166450 m!5825800))

(assert (=> b!4831649 d!1549219))

(declare-fun d!1549221 () Bool)

(declare-fun res!2058141 () Bool)

(declare-fun e!3019457 () Bool)

(assert (=> d!1549221 (=> res!2058141 e!3019457)))

(assert (=> d!1549221 (= res!2058141 (and (is-Cons!55070 (toList!7556 lt!1977452)) (= (_1!32473 (h!61504 (toList!7556 lt!1977452))) key!5594)))))

(assert (=> d!1549221 (= (containsKey!4440 (toList!7556 lt!1977452) key!5594) e!3019457)))

(declare-fun b!4831952 () Bool)

(declare-fun e!3019458 () Bool)

(assert (=> b!4831952 (= e!3019457 e!3019458)))

(declare-fun res!2058142 () Bool)

(assert (=> b!4831952 (=> (not res!2058142) (not e!3019458))))

(assert (=> b!4831952 (= res!2058142 (is-Cons!55070 (toList!7556 lt!1977452)))))

(declare-fun b!4831953 () Bool)

(assert (=> b!4831953 (= e!3019458 (containsKey!4440 (t!362690 (toList!7556 lt!1977452)) key!5594))))

(assert (= (and d!1549221 (not res!2058141)) b!4831952))

(assert (= (and b!4831952 res!2058142) b!4831953))

(declare-fun m!5825810 () Bool)

(assert (=> b!4831953 m!5825810))

(assert (=> d!1549073 d!1549221))

(declare-fun d!1549223 () Bool)

(assert (=> d!1549223 (= (invariantList!1829 (toList!7556 lt!1977545)) (noDuplicatedKeys!495 (toList!7556 lt!1977545)))))

(declare-fun bs!1166451 () Bool)

(assert (= bs!1166451 d!1549223))

(declare-fun m!5825812 () Bool)

(assert (=> bs!1166451 m!5825812))

(assert (=> d!1549109 d!1549223))

(declare-fun d!1549225 () Bool)

(declare-fun res!2058143 () Bool)

(declare-fun e!3019459 () Bool)

(assert (=> d!1549225 (=> res!2058143 e!3019459)))

(assert (=> d!1549225 (= res!2058143 (is-Nil!55071 (t!362691 (toList!7555 lm!2325))))))

(assert (=> d!1549225 (= (forall!12681 (t!362691 (toList!7555 lm!2325)) lambda!238202) e!3019459)))

(declare-fun b!4831954 () Bool)

(declare-fun e!3019460 () Bool)

(assert (=> b!4831954 (= e!3019459 e!3019460)))

(declare-fun res!2058144 () Bool)

(assert (=> b!4831954 (=> (not res!2058144) (not e!3019460))))

(assert (=> b!4831954 (= res!2058144 (dynLambda!22250 lambda!238202 (h!61505 (t!362691 (toList!7555 lm!2325)))))))

(declare-fun b!4831955 () Bool)

(assert (=> b!4831955 (= e!3019460 (forall!12681 (t!362691 (t!362691 (toList!7555 lm!2325))) lambda!238202))))

(assert (= (and d!1549225 (not res!2058143)) b!4831954))

(assert (= (and b!4831954 res!2058144) b!4831955))

(declare-fun b_lambda!190823 () Bool)

(assert (=> (not b_lambda!190823) (not b!4831954)))

(declare-fun m!5825814 () Bool)

(assert (=> b!4831954 m!5825814))

(declare-fun m!5825816 () Bool)

(assert (=> b!4831955 m!5825816))

(assert (=> d!1549109 d!1549225))

(declare-fun bs!1166452 () Bool)

(declare-fun b!4831957 () Bool)

(assert (= bs!1166452 (and b!4831957 d!1549117)))

(declare-fun lambda!238294 () Int)

(assert (=> bs!1166452 (= (= (extractMap!2715 (t!362691 (toList!7555 lm!2325))) lt!1977658) (= lambda!238294 lambda!238241))))

(declare-fun bs!1166453 () Bool)

(assert (= bs!1166453 (and b!4831957 b!4831891)))

(assert (=> bs!1166453 (= (= (extractMap!2715 (t!362691 (toList!7555 lm!2325))) (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) (= lambda!238294 lambda!238290))))

(declare-fun bs!1166454 () Bool)

(assert (= bs!1166454 (and b!4831957 d!1549183)))

(assert (=> bs!1166454 (= (= (extractMap!2715 (t!362691 (toList!7555 lm!2325))) lt!1977646) (= lambda!238294 lambda!238289))))

(declare-fun bs!1166455 () Bool)

(assert (= bs!1166455 (and b!4831957 b!4831890)))

(assert (=> bs!1166455 (= (= (extractMap!2715 (t!362691 (toList!7555 lm!2325))) lt!1977773) (= lambda!238294 lambda!238292))))

(declare-fun bs!1166456 () Bool)

(assert (= bs!1166456 (and b!4831957 b!4831779)))

(assert (=> bs!1166456 (= (= (extractMap!2715 (t!362691 (toList!7555 lm!2325))) lt!1977452) (= lambda!238294 lambda!238239))))

(declare-fun bs!1166457 () Bool)

(assert (= bs!1166457 (and b!4831957 d!1549187)))

(assert (=> bs!1166457 (= (= (extractMap!2715 (t!362691 (toList!7555 lm!2325))) lt!1977785) (= lambda!238294 lambda!238293))))

(declare-fun bs!1166458 () Bool)

(assert (= bs!1166458 (and b!4831957 b!4831780)))

(assert (=> bs!1166458 (= (= (extractMap!2715 (t!362691 (toList!7555 lm!2325))) lt!1977452) (= lambda!238294 lambda!238238))))

(assert (=> bs!1166456 (= (= (extractMap!2715 (t!362691 (toList!7555 lm!2325))) lt!1977646) (= lambda!238294 lambda!238240))))

(assert (=> bs!1166455 (= (= (extractMap!2715 (t!362691 (toList!7555 lm!2325))) (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) (= lambda!238294 lambda!238291))))

(assert (=> b!4831957 true))

(declare-fun bs!1166459 () Bool)

(declare-fun b!4831956 () Bool)

(assert (= bs!1166459 (and b!4831956 d!1549117)))

(declare-fun lambda!238295 () Int)

(assert (=> bs!1166459 (= (= (extractMap!2715 (t!362691 (toList!7555 lm!2325))) lt!1977658) (= lambda!238295 lambda!238241))))

(declare-fun bs!1166460 () Bool)

(assert (= bs!1166460 (and b!4831956 b!4831891)))

(assert (=> bs!1166460 (= (= (extractMap!2715 (t!362691 (toList!7555 lm!2325))) (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) (= lambda!238295 lambda!238290))))

(declare-fun bs!1166461 () Bool)

(assert (= bs!1166461 (and b!4831956 d!1549183)))

(assert (=> bs!1166461 (= (= (extractMap!2715 (t!362691 (toList!7555 lm!2325))) lt!1977646) (= lambda!238295 lambda!238289))))

(declare-fun bs!1166462 () Bool)

(assert (= bs!1166462 (and b!4831956 b!4831890)))

(assert (=> bs!1166462 (= (= (extractMap!2715 (t!362691 (toList!7555 lm!2325))) lt!1977773) (= lambda!238295 lambda!238292))))

(declare-fun bs!1166463 () Bool)

(assert (= bs!1166463 (and b!4831956 b!4831957)))

(assert (=> bs!1166463 (= lambda!238295 lambda!238294)))

(declare-fun bs!1166464 () Bool)

(assert (= bs!1166464 (and b!4831956 b!4831779)))

(assert (=> bs!1166464 (= (= (extractMap!2715 (t!362691 (toList!7555 lm!2325))) lt!1977452) (= lambda!238295 lambda!238239))))

(declare-fun bs!1166465 () Bool)

(assert (= bs!1166465 (and b!4831956 d!1549187)))

(assert (=> bs!1166465 (= (= (extractMap!2715 (t!362691 (toList!7555 lm!2325))) lt!1977785) (= lambda!238295 lambda!238293))))

(declare-fun bs!1166466 () Bool)

(assert (= bs!1166466 (and b!4831956 b!4831780)))

(assert (=> bs!1166466 (= (= (extractMap!2715 (t!362691 (toList!7555 lm!2325))) lt!1977452) (= lambda!238295 lambda!238238))))

(assert (=> bs!1166464 (= (= (extractMap!2715 (t!362691 (toList!7555 lm!2325))) lt!1977646) (= lambda!238295 lambda!238240))))

(assert (=> bs!1166462 (= (= (extractMap!2715 (t!362691 (toList!7555 lm!2325))) (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) (= lambda!238295 lambda!238291))))

(assert (=> b!4831956 true))

(declare-fun lambda!238296 () Int)

(declare-fun lt!1977831 () ListMap!6927)

(assert (=> bs!1166459 (= (= lt!1977831 lt!1977658) (= lambda!238296 lambda!238241))))

(assert (=> bs!1166460 (= (= lt!1977831 (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) (= lambda!238296 lambda!238290))))

(assert (=> bs!1166461 (= (= lt!1977831 lt!1977646) (= lambda!238296 lambda!238289))))

(assert (=> bs!1166462 (= (= lt!1977831 lt!1977773) (= lambda!238296 lambda!238292))))

(assert (=> b!4831956 (= (= lt!1977831 (extractMap!2715 (t!362691 (toList!7555 lm!2325)))) (= lambda!238296 lambda!238295))))

(assert (=> bs!1166463 (= (= lt!1977831 (extractMap!2715 (t!362691 (toList!7555 lm!2325)))) (= lambda!238296 lambda!238294))))

(assert (=> bs!1166464 (= (= lt!1977831 lt!1977452) (= lambda!238296 lambda!238239))))

(assert (=> bs!1166465 (= (= lt!1977831 lt!1977785) (= lambda!238296 lambda!238293))))

(assert (=> bs!1166466 (= (= lt!1977831 lt!1977452) (= lambda!238296 lambda!238238))))

(assert (=> bs!1166464 (= (= lt!1977831 lt!1977646) (= lambda!238296 lambda!238240))))

(assert (=> bs!1166462 (= (= lt!1977831 (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) (= lambda!238296 lambda!238291))))

(assert (=> b!4831956 true))

(declare-fun bs!1166467 () Bool)

(declare-fun d!1549227 () Bool)

(assert (= bs!1166467 (and d!1549227 d!1549117)))

(declare-fun lambda!238297 () Int)

(declare-fun lt!1977843 () ListMap!6927)

(assert (=> bs!1166467 (= (= lt!1977843 lt!1977658) (= lambda!238297 lambda!238241))))

(declare-fun bs!1166468 () Bool)

(assert (= bs!1166468 (and d!1549227 b!4831891)))

(assert (=> bs!1166468 (= (= lt!1977843 (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) (= lambda!238297 lambda!238290))))

(declare-fun bs!1166469 () Bool)

(assert (= bs!1166469 (and d!1549227 d!1549183)))

(assert (=> bs!1166469 (= (= lt!1977843 lt!1977646) (= lambda!238297 lambda!238289))))

(declare-fun bs!1166470 () Bool)

(assert (= bs!1166470 (and d!1549227 b!4831890)))

(assert (=> bs!1166470 (= (= lt!1977843 lt!1977773) (= lambda!238297 lambda!238292))))

(declare-fun bs!1166471 () Bool)

(assert (= bs!1166471 (and d!1549227 b!4831956)))

(assert (=> bs!1166471 (= (= lt!1977843 (extractMap!2715 (t!362691 (toList!7555 lm!2325)))) (= lambda!238297 lambda!238295))))

(declare-fun bs!1166472 () Bool)

(assert (= bs!1166472 (and d!1549227 b!4831957)))

(assert (=> bs!1166472 (= (= lt!1977843 (extractMap!2715 (t!362691 (toList!7555 lm!2325)))) (= lambda!238297 lambda!238294))))

(declare-fun bs!1166473 () Bool)

(assert (= bs!1166473 (and d!1549227 b!4831779)))

(assert (=> bs!1166473 (= (= lt!1977843 lt!1977452) (= lambda!238297 lambda!238239))))

(assert (=> bs!1166471 (= (= lt!1977843 lt!1977831) (= lambda!238297 lambda!238296))))

(declare-fun bs!1166474 () Bool)

(assert (= bs!1166474 (and d!1549227 d!1549187)))

(assert (=> bs!1166474 (= (= lt!1977843 lt!1977785) (= lambda!238297 lambda!238293))))

(declare-fun bs!1166475 () Bool)

(assert (= bs!1166475 (and d!1549227 b!4831780)))

(assert (=> bs!1166475 (= (= lt!1977843 lt!1977452) (= lambda!238297 lambda!238238))))

(assert (=> bs!1166473 (= (= lt!1977843 lt!1977646) (= lambda!238297 lambda!238240))))

(assert (=> bs!1166470 (= (= lt!1977843 (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) (= lambda!238297 lambda!238291))))

(assert (=> d!1549227 true))

(declare-fun call!336738 () Bool)

(declare-fun c!823349 () Bool)

(declare-fun bm!336731 () Bool)

(assert (=> bm!336731 (= call!336738 (forall!12683 (ite c!823349 (toList!7556 (extractMap!2715 (t!362691 (toList!7555 lm!2325)))) (_2!32474 (h!61505 (toList!7555 lm!2325)))) (ite c!823349 lambda!238294 lambda!238296)))))

(declare-fun bm!336732 () Bool)

(declare-fun call!336737 () Bool)

(assert (=> bm!336732 (= call!336737 (forall!12683 (toList!7556 (extractMap!2715 (t!362691 (toList!7555 lm!2325)))) (ite c!823349 lambda!238294 lambda!238296)))))

(declare-fun e!3019461 () Bool)

(assert (=> d!1549227 e!3019461))

(declare-fun res!2058147 () Bool)

(assert (=> d!1549227 (=> (not res!2058147) (not e!3019461))))

(assert (=> d!1549227 (= res!2058147 (forall!12683 (_2!32474 (h!61505 (toList!7555 lm!2325))) lambda!238297))))

(declare-fun e!3019462 () ListMap!6927)

(assert (=> d!1549227 (= lt!1977843 e!3019462)))

(assert (=> d!1549227 (= c!823349 (is-Nil!55070 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))

(assert (=> d!1549227 (noDuplicateKeys!2473 (_2!32474 (h!61505 (toList!7555 lm!2325))))))

(assert (=> d!1549227 (= (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) (extractMap!2715 (t!362691 (toList!7555 lm!2325)))) lt!1977843)))

(assert (=> b!4831956 (= e!3019462 lt!1977831)))

(declare-fun lt!1977827 () ListMap!6927)

(assert (=> b!4831956 (= lt!1977827 (+!2552 (extractMap!2715 (t!362691 (toList!7555 lm!2325))) (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))))))

(assert (=> b!4831956 (= lt!1977831 (addToMapMapFromBucket!1830 (t!362690 (_2!32474 (h!61505 (toList!7555 lm!2325)))) (+!2552 (extractMap!2715 (t!362691 (toList!7555 lm!2325))) (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))))

(declare-fun lt!1977830 () Unit!143893)

(declare-fun call!336736 () Unit!143893)

(assert (=> b!4831956 (= lt!1977830 call!336736)))

(assert (=> b!4831956 (forall!12683 (toList!7556 (extractMap!2715 (t!362691 (toList!7555 lm!2325)))) lambda!238295)))

(declare-fun lt!1977839 () Unit!143893)

(assert (=> b!4831956 (= lt!1977839 lt!1977830)))

(assert (=> b!4831956 (forall!12683 (toList!7556 lt!1977827) lambda!238296)))

(declare-fun lt!1977833 () Unit!143893)

(declare-fun Unit!143954 () Unit!143893)

(assert (=> b!4831956 (= lt!1977833 Unit!143954)))

(assert (=> b!4831956 (forall!12683 (t!362690 (_2!32474 (h!61505 (toList!7555 lm!2325)))) lambda!238296)))

(declare-fun lt!1977835 () Unit!143893)

(declare-fun Unit!143955 () Unit!143893)

(assert (=> b!4831956 (= lt!1977835 Unit!143955)))

(declare-fun lt!1977824 () Unit!143893)

(declare-fun Unit!143956 () Unit!143893)

(assert (=> b!4831956 (= lt!1977824 Unit!143956)))

(declare-fun lt!1977841 () Unit!143893)

(assert (=> b!4831956 (= lt!1977841 (forallContained!4416 (toList!7556 lt!1977827) lambda!238296 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))))))

(assert (=> b!4831956 (contains!18883 lt!1977827 (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))))))

(declare-fun lt!1977825 () Unit!143893)

(declare-fun Unit!143957 () Unit!143893)

(assert (=> b!4831956 (= lt!1977825 Unit!143957)))

(assert (=> b!4831956 (contains!18883 lt!1977831 (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))))))

(declare-fun lt!1977834 () Unit!143893)

(declare-fun Unit!143958 () Unit!143893)

(assert (=> b!4831956 (= lt!1977834 Unit!143958)))

(assert (=> b!4831956 (forall!12683 (_2!32474 (h!61505 (toList!7555 lm!2325))) lambda!238296)))

(declare-fun lt!1977828 () Unit!143893)

(declare-fun Unit!143959 () Unit!143893)

(assert (=> b!4831956 (= lt!1977828 Unit!143959)))

(assert (=> b!4831956 (forall!12683 (toList!7556 lt!1977827) lambda!238296)))

(declare-fun lt!1977838 () Unit!143893)

(declare-fun Unit!143960 () Unit!143893)

(assert (=> b!4831956 (= lt!1977838 Unit!143960)))

(declare-fun lt!1977836 () Unit!143893)

(declare-fun Unit!143961 () Unit!143893)

(assert (=> b!4831956 (= lt!1977836 Unit!143961)))

(declare-fun lt!1977826 () Unit!143893)

(assert (=> b!4831956 (= lt!1977826 (addForallContainsKeyThenBeforeAdding!1006 (extractMap!2715 (t!362691 (toList!7555 lm!2325))) lt!1977831 (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))) (_2!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))))

(assert (=> b!4831956 (forall!12683 (toList!7556 (extractMap!2715 (t!362691 (toList!7555 lm!2325)))) lambda!238296)))

(declare-fun lt!1977842 () Unit!143893)

(assert (=> b!4831956 (= lt!1977842 lt!1977826)))

(assert (=> b!4831956 (forall!12683 (toList!7556 (extractMap!2715 (t!362691 (toList!7555 lm!2325)))) lambda!238296)))

(declare-fun lt!1977829 () Unit!143893)

(declare-fun Unit!143962 () Unit!143893)

(assert (=> b!4831956 (= lt!1977829 Unit!143962)))

(declare-fun res!2058146 () Bool)

(assert (=> b!4831956 (= res!2058146 call!336738)))

(declare-fun e!3019463 () Bool)

(assert (=> b!4831956 (=> (not res!2058146) (not e!3019463))))

(assert (=> b!4831956 e!3019463))

(declare-fun lt!1977832 () Unit!143893)

(declare-fun Unit!143963 () Unit!143893)

(assert (=> b!4831956 (= lt!1977832 Unit!143963)))

(assert (=> b!4831957 (= e!3019462 (extractMap!2715 (t!362691 (toList!7555 lm!2325))))))

(declare-fun lt!1977837 () Unit!143893)

(assert (=> b!4831957 (= lt!1977837 call!336736)))

(assert (=> b!4831957 call!336738))

(declare-fun lt!1977840 () Unit!143893)

(assert (=> b!4831957 (= lt!1977840 lt!1977837)))

(assert (=> b!4831957 call!336737))

(declare-fun lt!1977823 () Unit!143893)

(declare-fun Unit!143964 () Unit!143893)

(assert (=> b!4831957 (= lt!1977823 Unit!143964)))

(declare-fun b!4831958 () Bool)

(declare-fun res!2058145 () Bool)

(assert (=> b!4831958 (=> (not res!2058145) (not e!3019461))))

(assert (=> b!4831958 (= res!2058145 (forall!12683 (toList!7556 (extractMap!2715 (t!362691 (toList!7555 lm!2325)))) lambda!238297))))

(declare-fun b!4831959 () Bool)

(assert (=> b!4831959 (= e!3019461 (invariantList!1829 (toList!7556 lt!1977843)))))

(declare-fun bm!336733 () Bool)

(assert (=> bm!336733 (= call!336736 (lemmaContainsAllItsOwnKeys!1007 (extractMap!2715 (t!362691 (toList!7555 lm!2325)))))))

(declare-fun b!4831960 () Bool)

(assert (=> b!4831960 (= e!3019463 call!336737)))

(assert (= (and d!1549227 c!823349) b!4831957))

(assert (= (and d!1549227 (not c!823349)) b!4831956))

(assert (= (and b!4831956 res!2058146) b!4831960))

(assert (= (or b!4831957 b!4831956) bm!336733))

(assert (= (or b!4831957 b!4831960) bm!336732))

(assert (= (or b!4831957 b!4831956) bm!336731))

(assert (= (and d!1549227 res!2058147) b!4831958))

(assert (= (and b!4831958 res!2058145) b!4831959))

(declare-fun m!5825818 () Bool)

(assert (=> b!4831956 m!5825818))

(declare-fun m!5825820 () Bool)

(assert (=> b!4831956 m!5825820))

(assert (=> b!4831956 m!5825192))

(assert (=> b!4831956 m!5825818))

(declare-fun m!5825822 () Bool)

(assert (=> b!4831956 m!5825822))

(declare-fun m!5825824 () Bool)

(assert (=> b!4831956 m!5825824))

(declare-fun m!5825826 () Bool)

(assert (=> b!4831956 m!5825826))

(assert (=> b!4831956 m!5825822))

(declare-fun m!5825828 () Bool)

(assert (=> b!4831956 m!5825828))

(assert (=> b!4831956 m!5825826))

(assert (=> b!4831956 m!5825192))

(declare-fun m!5825830 () Bool)

(assert (=> b!4831956 m!5825830))

(declare-fun m!5825832 () Bool)

(assert (=> b!4831956 m!5825832))

(declare-fun m!5825834 () Bool)

(assert (=> b!4831956 m!5825834))

(declare-fun m!5825836 () Bool)

(assert (=> b!4831956 m!5825836))

(declare-fun m!5825838 () Bool)

(assert (=> b!4831956 m!5825838))

(declare-fun m!5825840 () Bool)

(assert (=> bm!336731 m!5825840))

(declare-fun m!5825842 () Bool)

(assert (=> b!4831959 m!5825842))

(declare-fun m!5825844 () Bool)

(assert (=> d!1549227 m!5825844))

(assert (=> d!1549227 m!5825398))

(declare-fun m!5825846 () Bool)

(assert (=> bm!336732 m!5825846))

(declare-fun m!5825848 () Bool)

(assert (=> b!4831958 m!5825848))

(assert (=> bm!336733 m!5825192))

(declare-fun m!5825850 () Bool)

(assert (=> bm!336733 m!5825850))

(assert (=> b!4831675 d!1549227))

(assert (=> b!4831675 d!1549109))

(declare-fun d!1549229 () Bool)

(declare-fun res!2058148 () Bool)

(declare-fun e!3019464 () Bool)

(assert (=> d!1549229 (=> res!2058148 e!3019464)))

(assert (=> d!1549229 (= res!2058148 (and (is-Cons!55070 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (= (_1!32473 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))))) key!5594)))))

(assert (=> d!1549229 (= (containsKey!4440 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))) key!5594) e!3019464)))

(declare-fun b!4831961 () Bool)

(declare-fun e!3019465 () Bool)

(assert (=> b!4831961 (= e!3019464 e!3019465)))

(declare-fun res!2058149 () Bool)

(assert (=> b!4831961 (=> (not res!2058149) (not e!3019465))))

(assert (=> b!4831961 (= res!2058149 (is-Cons!55070 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))))))

(declare-fun b!4831962 () Bool)

(assert (=> b!4831962 (= e!3019465 (containsKey!4440 (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) key!5594))))

(assert (= (and d!1549229 (not res!2058148)) b!4831961))

(assert (= (and b!4831961 res!2058149) b!4831962))

(declare-fun m!5825852 () Bool)

(assert (=> b!4831962 m!5825852))

(assert (=> d!1549077 d!1549229))

(declare-fun d!1549231 () Bool)

(declare-fun res!2058150 () Bool)

(declare-fun e!3019466 () Bool)

(assert (=> d!1549231 (=> res!2058150 e!3019466)))

(assert (=> d!1549231 (= res!2058150 (is-Nil!55071 (t!362691 (toList!7555 lt!1977454))))))

(assert (=> d!1549231 (= (forall!12681 (t!362691 (toList!7555 lt!1977454)) lambda!238185) e!3019466)))

(declare-fun b!4831963 () Bool)

(declare-fun e!3019467 () Bool)

(assert (=> b!4831963 (= e!3019466 e!3019467)))

(declare-fun res!2058151 () Bool)

(assert (=> b!4831963 (=> (not res!2058151) (not e!3019467))))

(assert (=> b!4831963 (= res!2058151 (dynLambda!22250 lambda!238185 (h!61505 (t!362691 (toList!7555 lt!1977454)))))))

(declare-fun b!4831964 () Bool)

(assert (=> b!4831964 (= e!3019467 (forall!12681 (t!362691 (t!362691 (toList!7555 lt!1977454))) lambda!238185))))

(assert (= (and d!1549231 (not res!2058150)) b!4831963))

(assert (= (and b!4831963 res!2058151) b!4831964))

(declare-fun b_lambda!190825 () Bool)

(assert (=> (not b_lambda!190825) (not b!4831963)))

(declare-fun m!5825854 () Bool)

(assert (=> b!4831963 m!5825854))

(declare-fun m!5825856 () Bool)

(assert (=> b!4831964 m!5825856))

(assert (=> b!4831702 d!1549231))

(declare-fun d!1549233 () Bool)

(assert (=> d!1549233 (isDefined!10644 (getValueByKey!2656 (toList!7556 lt!1977452) key!5594))))

(declare-fun lt!1977844 () Unit!143893)

(assert (=> d!1549233 (= lt!1977844 (choose!35280 (toList!7556 lt!1977452) key!5594))))

(assert (=> d!1549233 (invariantList!1829 (toList!7556 lt!1977452))))

(assert (=> d!1549233 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2441 (toList!7556 lt!1977452) key!5594) lt!1977844)))

(declare-fun bs!1166476 () Bool)

(assert (= bs!1166476 d!1549233))

(assert (=> bs!1166476 m!5825274))

(assert (=> bs!1166476 m!5825274))

(assert (=> bs!1166476 m!5825276))

(declare-fun m!5825858 () Bool)

(assert (=> bs!1166476 m!5825858))

(declare-fun m!5825860 () Bool)

(assert (=> bs!1166476 m!5825860))

(assert (=> b!4831640 d!1549233))

(declare-fun d!1549235 () Bool)

(assert (=> d!1549235 (= (isDefined!10644 (getValueByKey!2656 (toList!7556 lt!1977452) key!5594)) (not (isEmpty!29691 (getValueByKey!2656 (toList!7556 lt!1977452) key!5594))))))

(declare-fun bs!1166477 () Bool)

(assert (= bs!1166477 d!1549235))

(assert (=> bs!1166477 m!5825274))

(declare-fun m!5825862 () Bool)

(assert (=> bs!1166477 m!5825862))

(assert (=> b!4831640 d!1549235))

(declare-fun b!4831968 () Bool)

(declare-fun e!3019469 () Option!13529)

(assert (=> b!4831968 (= e!3019469 None!13528)))

(declare-fun b!4831966 () Bool)

(declare-fun e!3019468 () Option!13529)

(assert (=> b!4831966 (= e!3019468 e!3019469)))

(declare-fun c!823351 () Bool)

(assert (=> b!4831966 (= c!823351 (and (is-Cons!55070 (toList!7556 lt!1977452)) (not (= (_1!32473 (h!61504 (toList!7556 lt!1977452))) key!5594))))))

(declare-fun d!1549237 () Bool)

(declare-fun c!823350 () Bool)

(assert (=> d!1549237 (= c!823350 (and (is-Cons!55070 (toList!7556 lt!1977452)) (= (_1!32473 (h!61504 (toList!7556 lt!1977452))) key!5594)))))

(assert (=> d!1549237 (= (getValueByKey!2656 (toList!7556 lt!1977452) key!5594) e!3019468)))

(declare-fun b!4831967 () Bool)

(assert (=> b!4831967 (= e!3019469 (getValueByKey!2656 (t!362690 (toList!7556 lt!1977452)) key!5594))))

(declare-fun b!4831965 () Bool)

(assert (=> b!4831965 (= e!3019468 (Some!13528 (_2!32473 (h!61504 (toList!7556 lt!1977452)))))))

(assert (= (and d!1549237 c!823350) b!4831965))

(assert (= (and d!1549237 (not c!823350)) b!4831966))

(assert (= (and b!4831966 c!823351) b!4831967))

(assert (= (and b!4831966 (not c!823351)) b!4831968))

(declare-fun m!5825864 () Bool)

(assert (=> b!4831967 m!5825864))

(assert (=> b!4831640 d!1549237))

(declare-fun d!1549239 () Bool)

(assert (=> d!1549239 (contains!18886 (getKeysList!1175 (toList!7556 lt!1977452)) key!5594)))

(declare-fun lt!1977845 () Unit!143893)

(assert (=> d!1549239 (= lt!1977845 (choose!35281 (toList!7556 lt!1977452) key!5594))))

(assert (=> d!1549239 (invariantList!1829 (toList!7556 lt!1977452))))

(assert (=> d!1549239 (= (lemmaInListThenGetKeysListContains!1170 (toList!7556 lt!1977452) key!5594) lt!1977845)))

(declare-fun bs!1166478 () Bool)

(assert (= bs!1166478 d!1549239))

(assert (=> bs!1166478 m!5825278))

(assert (=> bs!1166478 m!5825278))

(declare-fun m!5825866 () Bool)

(assert (=> bs!1166478 m!5825866))

(declare-fun m!5825868 () Bool)

(assert (=> bs!1166478 m!5825868))

(assert (=> bs!1166478 m!5825860))

(assert (=> b!4831640 d!1549239))

(declare-fun d!1549241 () Bool)

(declare-fun res!2058152 () Bool)

(declare-fun e!3019470 () Bool)

(assert (=> d!1549241 (=> res!2058152 e!3019470)))

(assert (=> d!1549241 (= res!2058152 (and (is-Cons!55070 (t!362690 (_2!32474 (h!61505 (toList!7555 lm!2325))))) (= (_1!32473 (h!61504 (t!362690 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) key!5594)))))

(assert (=> d!1549241 (= (containsKey!4438 (t!362690 (_2!32474 (h!61505 (toList!7555 lm!2325)))) key!5594) e!3019470)))

(declare-fun b!4831969 () Bool)

(declare-fun e!3019471 () Bool)

(assert (=> b!4831969 (= e!3019470 e!3019471)))

(declare-fun res!2058153 () Bool)

(assert (=> b!4831969 (=> (not res!2058153) (not e!3019471))))

(assert (=> b!4831969 (= res!2058153 (is-Cons!55070 (t!362690 (_2!32474 (h!61505 (toList!7555 lm!2325))))))))

(declare-fun b!4831970 () Bool)

(assert (=> b!4831970 (= e!3019471 (containsKey!4438 (t!362690 (t!362690 (_2!32474 (h!61505 (toList!7555 lm!2325))))) key!5594))))

(assert (= (and d!1549241 (not res!2058152)) b!4831969))

(assert (= (and b!4831969 res!2058153) b!4831970))

(declare-fun m!5825870 () Bool)

(assert (=> b!4831970 m!5825870))

(assert (=> b!4831710 d!1549241))

(declare-fun d!1549243 () Bool)

(declare-fun lt!1977846 () Bool)

(assert (=> d!1549243 (= lt!1977846 (set.member key!5594 (content!9836 (keys!20284 (extractMap!2715 (toList!7555 lt!1977454))))))))

(declare-fun e!3019473 () Bool)

(assert (=> d!1549243 (= lt!1977846 e!3019473)))

(declare-fun res!2058155 () Bool)

(assert (=> d!1549243 (=> (not res!2058155) (not e!3019473))))

(assert (=> d!1549243 (= res!2058155 (is-Cons!55074 (keys!20284 (extractMap!2715 (toList!7555 lt!1977454)))))))

(assert (=> d!1549243 (= (contains!18886 (keys!20284 (extractMap!2715 (toList!7555 lt!1977454))) key!5594) lt!1977846)))

(declare-fun b!4831971 () Bool)

(declare-fun e!3019472 () Bool)

(assert (=> b!4831971 (= e!3019473 e!3019472)))

(declare-fun res!2058154 () Bool)

(assert (=> b!4831971 (=> res!2058154 e!3019472)))

(assert (=> b!4831971 (= res!2058154 (= (h!61508 (keys!20284 (extractMap!2715 (toList!7555 lt!1977454)))) key!5594))))

(declare-fun b!4831972 () Bool)

(assert (=> b!4831972 (= e!3019472 (contains!18886 (t!362694 (keys!20284 (extractMap!2715 (toList!7555 lt!1977454)))) key!5594))))

(assert (= (and d!1549243 res!2058155) b!4831971))

(assert (= (and b!4831971 (not res!2058154)) b!4831972))

(assert (=> d!1549243 m!5825302))

(declare-fun m!5825872 () Bool)

(assert (=> d!1549243 m!5825872))

(declare-fun m!5825874 () Bool)

(assert (=> d!1549243 m!5825874))

(declare-fun m!5825876 () Bool)

(assert (=> b!4831972 m!5825876))

(assert (=> b!4831654 d!1549243))

(declare-fun b!4831980 () Bool)

(assert (=> b!4831980 true))

(declare-fun d!1549245 () Bool)

(declare-fun e!3019476 () Bool)

(assert (=> d!1549245 e!3019476))

(declare-fun res!2058162 () Bool)

(assert (=> d!1549245 (=> (not res!2058162) (not e!3019476))))

(declare-fun lt!1977849 () List!55198)

(declare-fun noDuplicate!977 (List!55198) Bool)

(assert (=> d!1549245 (= res!2058162 (noDuplicate!977 lt!1977849))))

(assert (=> d!1549245 (= lt!1977849 (getKeysList!1175 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))))))

(assert (=> d!1549245 (= (keys!20284 (extractMap!2715 (toList!7555 lt!1977454))) lt!1977849)))

(declare-fun b!4831979 () Bool)

(declare-fun res!2058164 () Bool)

(assert (=> b!4831979 (=> (not res!2058164) (not e!3019476))))

(declare-fun length!810 (List!55198) Int)

(declare-fun length!811 (List!55194) Int)

(assert (=> b!4831979 (= res!2058164 (= (length!810 lt!1977849) (length!811 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))))))))

(declare-fun res!2058163 () Bool)

(assert (=> b!4831980 (=> (not res!2058163) (not e!3019476))))

(declare-fun lambda!238302 () Int)

(declare-fun forall!12685 (List!55198 Int) Bool)

(assert (=> b!4831980 (= res!2058163 (forall!12685 lt!1977849 lambda!238302))))

(declare-fun b!4831981 () Bool)

(declare-fun lambda!238303 () Int)

(declare-fun map!12617 (List!55194 Int) List!55198)

(assert (=> b!4831981 (= e!3019476 (= (content!9836 lt!1977849) (content!9836 (map!12617 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))) lambda!238303))))))

(assert (= (and d!1549245 res!2058162) b!4831979))

(assert (= (and b!4831979 res!2058164) b!4831980))

(assert (= (and b!4831980 res!2058163) b!4831981))

(declare-fun m!5825878 () Bool)

(assert (=> d!1549245 m!5825878))

(assert (=> d!1549245 m!5825298))

(declare-fun m!5825880 () Bool)

(assert (=> b!4831979 m!5825880))

(declare-fun m!5825882 () Bool)

(assert (=> b!4831979 m!5825882))

(declare-fun m!5825884 () Bool)

(assert (=> b!4831980 m!5825884))

(declare-fun m!5825886 () Bool)

(assert (=> b!4831981 m!5825886))

(declare-fun m!5825888 () Bool)

(assert (=> b!4831981 m!5825888))

(assert (=> b!4831981 m!5825888))

(declare-fun m!5825890 () Bool)

(assert (=> b!4831981 m!5825890))

(assert (=> b!4831654 d!1549245))

(declare-fun bs!1166479 () Bool)

(declare-fun d!1549247 () Bool)

(assert (= bs!1166479 (and d!1549247 d!1549117)))

(declare-fun lambda!238306 () Int)

(assert (=> bs!1166479 (= (= lt!1977452 lt!1977658) (= lambda!238306 lambda!238241))))

(declare-fun bs!1166480 () Bool)

(assert (= bs!1166480 (and d!1549247 b!4831891)))

(assert (=> bs!1166480 (= (= lt!1977452 (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) (= lambda!238306 lambda!238290))))

(declare-fun bs!1166481 () Bool)

(assert (= bs!1166481 (and d!1549247 d!1549183)))

(assert (=> bs!1166481 (= (= lt!1977452 lt!1977646) (= lambda!238306 lambda!238289))))

(declare-fun bs!1166482 () Bool)

(assert (= bs!1166482 (and d!1549247 b!4831890)))

(assert (=> bs!1166482 (= (= lt!1977452 lt!1977773) (= lambda!238306 lambda!238292))))

(declare-fun bs!1166483 () Bool)

(assert (= bs!1166483 (and d!1549247 b!4831956)))

(assert (=> bs!1166483 (= (= lt!1977452 (extractMap!2715 (t!362691 (toList!7555 lm!2325)))) (= lambda!238306 lambda!238295))))

(declare-fun bs!1166484 () Bool)

(assert (= bs!1166484 (and d!1549247 b!4831957)))

(assert (=> bs!1166484 (= (= lt!1977452 (extractMap!2715 (t!362691 (toList!7555 lm!2325)))) (= lambda!238306 lambda!238294))))

(declare-fun bs!1166485 () Bool)

(assert (= bs!1166485 (and d!1549247 b!4831779)))

(assert (=> bs!1166485 (= lambda!238306 lambda!238239)))

(assert (=> bs!1166483 (= (= lt!1977452 lt!1977831) (= lambda!238306 lambda!238296))))

(declare-fun bs!1166486 () Bool)

(assert (= bs!1166486 (and d!1549247 d!1549227)))

(assert (=> bs!1166486 (= (= lt!1977452 lt!1977843) (= lambda!238306 lambda!238297))))

(declare-fun bs!1166487 () Bool)

(assert (= bs!1166487 (and d!1549247 d!1549187)))

(assert (=> bs!1166487 (= (= lt!1977452 lt!1977785) (= lambda!238306 lambda!238293))))

(declare-fun bs!1166488 () Bool)

(assert (= bs!1166488 (and d!1549247 b!4831780)))

(assert (=> bs!1166488 (= lambda!238306 lambda!238238)))

(assert (=> bs!1166485 (= (= lt!1977452 lt!1977646) (= lambda!238306 lambda!238240))))

(assert (=> bs!1166482 (= (= lt!1977452 (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) (= lambda!238306 lambda!238291))))

(assert (=> d!1549247 true))

(assert (=> d!1549247 (forall!12683 (toList!7556 lt!1977452) lambda!238306)))

(declare-fun lt!1977852 () Unit!143893)

(declare-fun choose!35282 (ListMap!6927) Unit!143893)

(assert (=> d!1549247 (= lt!1977852 (choose!35282 lt!1977452))))

(assert (=> d!1549247 (= (lemmaContainsAllItsOwnKeys!1007 lt!1977452) lt!1977852)))

(declare-fun bs!1166489 () Bool)

(assert (= bs!1166489 d!1549247))

(declare-fun m!5825892 () Bool)

(assert (=> bs!1166489 m!5825892))

(declare-fun m!5825894 () Bool)

(assert (=> bs!1166489 m!5825894))

(assert (=> bm!336714 d!1549247))

(declare-fun d!1549249 () Bool)

(assert (=> d!1549249 (= (invariantList!1829 (toList!7556 lt!1977517)) (noDuplicatedKeys!495 (toList!7556 lt!1977517)))))

(declare-fun bs!1166490 () Bool)

(assert (= bs!1166490 d!1549249))

(declare-fun m!5825896 () Bool)

(assert (=> bs!1166490 m!5825896))

(assert (=> d!1549087 d!1549249))

(declare-fun d!1549251 () Bool)

(declare-fun res!2058165 () Bool)

(declare-fun e!3019477 () Bool)

(assert (=> d!1549251 (=> res!2058165 e!3019477)))

(assert (=> d!1549251 (= res!2058165 (is-Nil!55071 (toList!7555 lm!2325)))))

(assert (=> d!1549251 (= (forall!12681 (toList!7555 lm!2325) lambda!238198) e!3019477)))

(declare-fun b!4831984 () Bool)

(declare-fun e!3019478 () Bool)

(assert (=> b!4831984 (= e!3019477 e!3019478)))

(declare-fun res!2058166 () Bool)

(assert (=> b!4831984 (=> (not res!2058166) (not e!3019478))))

(assert (=> b!4831984 (= res!2058166 (dynLambda!22250 lambda!238198 (h!61505 (toList!7555 lm!2325))))))

(declare-fun b!4831985 () Bool)

(assert (=> b!4831985 (= e!3019478 (forall!12681 (t!362691 (toList!7555 lm!2325)) lambda!238198))))

(assert (= (and d!1549251 (not res!2058165)) b!4831984))

(assert (= (and b!4831984 res!2058166) b!4831985))

(declare-fun b_lambda!190827 () Bool)

(assert (=> (not b_lambda!190827) (not b!4831984)))

(declare-fun m!5825898 () Bool)

(assert (=> b!4831984 m!5825898))

(declare-fun m!5825900 () Bool)

(assert (=> b!4831985 m!5825900))

(assert (=> d!1549087 d!1549251))

(declare-fun d!1549253 () Bool)

(declare-fun lt!1977853 () Bool)

(assert (=> d!1549253 (= lt!1977853 (set.member key!5594 (content!9836 (keys!20284 (extractMap!2715 (toList!7555 lm!2325))))))))

(declare-fun e!3019480 () Bool)

(assert (=> d!1549253 (= lt!1977853 e!3019480)))

(declare-fun res!2058168 () Bool)

(assert (=> d!1549253 (=> (not res!2058168) (not e!3019480))))

(assert (=> d!1549253 (= res!2058168 (is-Cons!55074 (keys!20284 (extractMap!2715 (toList!7555 lm!2325)))))))

(assert (=> d!1549253 (= (contains!18886 (keys!20284 (extractMap!2715 (toList!7555 lm!2325))) key!5594) lt!1977853)))

(declare-fun b!4831986 () Bool)

(declare-fun e!3019479 () Bool)

(assert (=> b!4831986 (= e!3019480 e!3019479)))

(declare-fun res!2058167 () Bool)

(assert (=> b!4831986 (=> res!2058167 e!3019479)))

(assert (=> b!4831986 (= res!2058167 (= (h!61508 (keys!20284 (extractMap!2715 (toList!7555 lm!2325)))) key!5594))))

(declare-fun b!4831987 () Bool)

(assert (=> b!4831987 (= e!3019479 (contains!18886 (t!362694 (keys!20284 (extractMap!2715 (toList!7555 lm!2325)))) key!5594))))

(assert (= (and d!1549253 res!2058168) b!4831986))

(assert (= (and b!4831986 (not res!2058167)) b!4831987))

(assert (=> d!1549253 m!5825322))

(declare-fun m!5825902 () Bool)

(assert (=> d!1549253 m!5825902))

(declare-fun m!5825904 () Bool)

(assert (=> d!1549253 m!5825904))

(declare-fun m!5825906 () Bool)

(assert (=> b!4831987 m!5825906))

(assert (=> b!4831660 d!1549253))

(declare-fun bs!1166491 () Bool)

(declare-fun b!4831989 () Bool)

(assert (= bs!1166491 (and b!4831989 b!4831980)))

(declare-fun lambda!238307 () Int)

(assert (=> bs!1166491 (= (= (toList!7556 (extractMap!2715 (toList!7555 lm!2325))) (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (= lambda!238307 lambda!238302))))

(assert (=> b!4831989 true))

(declare-fun bs!1166492 () Bool)

(declare-fun b!4831990 () Bool)

(assert (= bs!1166492 (and b!4831990 b!4831981)))

(declare-fun lambda!238308 () Int)

(assert (=> bs!1166492 (= lambda!238308 lambda!238303)))

(declare-fun d!1549255 () Bool)

(declare-fun e!3019481 () Bool)

(assert (=> d!1549255 e!3019481))

(declare-fun res!2058169 () Bool)

(assert (=> d!1549255 (=> (not res!2058169) (not e!3019481))))

(declare-fun lt!1977854 () List!55198)

(assert (=> d!1549255 (= res!2058169 (noDuplicate!977 lt!1977854))))

(assert (=> d!1549255 (= lt!1977854 (getKeysList!1175 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))))))

(assert (=> d!1549255 (= (keys!20284 (extractMap!2715 (toList!7555 lm!2325))) lt!1977854)))

(declare-fun b!4831988 () Bool)

(declare-fun res!2058171 () Bool)

(assert (=> b!4831988 (=> (not res!2058171) (not e!3019481))))

(assert (=> b!4831988 (= res!2058171 (= (length!810 lt!1977854) (length!811 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))))))))

(declare-fun res!2058170 () Bool)

(assert (=> b!4831989 (=> (not res!2058170) (not e!3019481))))

(assert (=> b!4831989 (= res!2058170 (forall!12685 lt!1977854 lambda!238307))))

(assert (=> b!4831990 (= e!3019481 (= (content!9836 lt!1977854) (content!9836 (map!12617 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))) lambda!238308))))))

(assert (= (and d!1549255 res!2058169) b!4831988))

(assert (= (and b!4831988 res!2058171) b!4831989))

(assert (= (and b!4831989 res!2058170) b!4831990))

(declare-fun m!5825908 () Bool)

(assert (=> d!1549255 m!5825908))

(assert (=> d!1549255 m!5825318))

(declare-fun m!5825910 () Bool)

(assert (=> b!4831988 m!5825910))

(declare-fun m!5825912 () Bool)

(assert (=> b!4831988 m!5825912))

(declare-fun m!5825914 () Bool)

(assert (=> b!4831989 m!5825914))

(declare-fun m!5825916 () Bool)

(assert (=> b!4831990 m!5825916))

(declare-fun m!5825918 () Bool)

(assert (=> b!4831990 m!5825918))

(assert (=> b!4831990 m!5825918))

(declare-fun m!5825920 () Bool)

(assert (=> b!4831990 m!5825920))

(assert (=> b!4831660 d!1549255))

(declare-fun d!1549257 () Bool)

(declare-fun choose!35283 (Hashable!7307 K!16757) (_ BitVec 64))

(assert (=> d!1549257 (= (hash!5487 hashF!1543 key!5594) (choose!35283 hashF!1543 key!5594))))

(declare-fun bs!1166493 () Bool)

(assert (= bs!1166493 d!1549257))

(declare-fun m!5825922 () Bool)

(assert (=> bs!1166493 m!5825922))

(assert (=> d!1549101 d!1549257))

(declare-fun d!1549259 () Bool)

(declare-fun lt!1977855 () Bool)

(assert (=> d!1549259 (= lt!1977855 (set.member key!5594 (content!9836 (keys!20284 lt!1977452))))))

(declare-fun e!3019483 () Bool)

(assert (=> d!1549259 (= lt!1977855 e!3019483)))

(declare-fun res!2058173 () Bool)

(assert (=> d!1549259 (=> (not res!2058173) (not e!3019483))))

(assert (=> d!1549259 (= res!2058173 (is-Cons!55074 (keys!20284 lt!1977452)))))

(assert (=> d!1549259 (= (contains!18886 (keys!20284 lt!1977452) key!5594) lt!1977855)))

(declare-fun b!4831991 () Bool)

(declare-fun e!3019482 () Bool)

(assert (=> b!4831991 (= e!3019483 e!3019482)))

(declare-fun res!2058172 () Bool)

(assert (=> b!4831991 (=> res!2058172 e!3019482)))

(assert (=> b!4831991 (= res!2058172 (= (h!61508 (keys!20284 lt!1977452)) key!5594))))

(declare-fun b!4831992 () Bool)

(assert (=> b!4831992 (= e!3019482 (contains!18886 (t!362694 (keys!20284 lt!1977452)) key!5594))))

(assert (= (and d!1549259 res!2058173) b!4831991))

(assert (= (and b!4831991 (not res!2058172)) b!4831992))

(assert (=> d!1549259 m!5825282))

(declare-fun m!5825924 () Bool)

(assert (=> d!1549259 m!5825924))

(declare-fun m!5825926 () Bool)

(assert (=> d!1549259 m!5825926))

(declare-fun m!5825928 () Bool)

(assert (=> b!4831992 m!5825928))

(assert (=> b!4831645 d!1549259))

(declare-fun bs!1166494 () Bool)

(declare-fun b!4831994 () Bool)

(assert (= bs!1166494 (and b!4831994 b!4831980)))

(declare-fun lambda!238309 () Int)

(assert (=> bs!1166494 (= (= (toList!7556 lt!1977452) (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (= lambda!238309 lambda!238302))))

(declare-fun bs!1166495 () Bool)

(assert (= bs!1166495 (and b!4831994 b!4831989)))

(assert (=> bs!1166495 (= (= (toList!7556 lt!1977452) (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (= lambda!238309 lambda!238307))))

(assert (=> b!4831994 true))

(declare-fun bs!1166496 () Bool)

(declare-fun b!4831995 () Bool)

(assert (= bs!1166496 (and b!4831995 b!4831981)))

(declare-fun lambda!238310 () Int)

(assert (=> bs!1166496 (= lambda!238310 lambda!238303)))

(declare-fun bs!1166497 () Bool)

(assert (= bs!1166497 (and b!4831995 b!4831990)))

(assert (=> bs!1166497 (= lambda!238310 lambda!238308)))

(declare-fun d!1549261 () Bool)

(declare-fun e!3019484 () Bool)

(assert (=> d!1549261 e!3019484))

(declare-fun res!2058174 () Bool)

(assert (=> d!1549261 (=> (not res!2058174) (not e!3019484))))

(declare-fun lt!1977856 () List!55198)

(assert (=> d!1549261 (= res!2058174 (noDuplicate!977 lt!1977856))))

(assert (=> d!1549261 (= lt!1977856 (getKeysList!1175 (toList!7556 lt!1977452)))))

(assert (=> d!1549261 (= (keys!20284 lt!1977452) lt!1977856)))

(declare-fun b!4831993 () Bool)

(declare-fun res!2058176 () Bool)

(assert (=> b!4831993 (=> (not res!2058176) (not e!3019484))))

(assert (=> b!4831993 (= res!2058176 (= (length!810 lt!1977856) (length!811 (toList!7556 lt!1977452))))))

(declare-fun res!2058175 () Bool)

(assert (=> b!4831994 (=> (not res!2058175) (not e!3019484))))

(assert (=> b!4831994 (= res!2058175 (forall!12685 lt!1977856 lambda!238309))))

(assert (=> b!4831995 (= e!3019484 (= (content!9836 lt!1977856) (content!9836 (map!12617 (toList!7556 lt!1977452) lambda!238310))))))

(assert (= (and d!1549261 res!2058174) b!4831993))

(assert (= (and b!4831993 res!2058176) b!4831994))

(assert (= (and b!4831994 res!2058175) b!4831995))

(declare-fun m!5825930 () Bool)

(assert (=> d!1549261 m!5825930))

(assert (=> d!1549261 m!5825278))

(declare-fun m!5825932 () Bool)

(assert (=> b!4831993 m!5825932))

(declare-fun m!5825934 () Bool)

(assert (=> b!4831993 m!5825934))

(declare-fun m!5825936 () Bool)

(assert (=> b!4831994 m!5825936))

(declare-fun m!5825938 () Bool)

(assert (=> b!4831995 m!5825938))

(declare-fun m!5825940 () Bool)

(assert (=> b!4831995 m!5825940))

(assert (=> b!4831995 m!5825940))

(declare-fun m!5825942 () Bool)

(assert (=> b!4831995 m!5825942))

(assert (=> b!4831645 d!1549261))

(declare-fun bs!1166498 () Bool)

(declare-fun b!4831997 () Bool)

(assert (= bs!1166498 (and b!4831997 d!1549117)))

(declare-fun lambda!238311 () Int)

(assert (=> bs!1166498 (= (= (extractMap!2715 (t!362691 (toList!7555 lt!1977454))) lt!1977658) (= lambda!238311 lambda!238241))))

(declare-fun bs!1166499 () Bool)

(assert (= bs!1166499 (and b!4831997 d!1549247)))

(assert (=> bs!1166499 (= (= (extractMap!2715 (t!362691 (toList!7555 lt!1977454))) lt!1977452) (= lambda!238311 lambda!238306))))

(declare-fun bs!1166500 () Bool)

(assert (= bs!1166500 (and b!4831997 b!4831891)))

(assert (=> bs!1166500 (= (= (extractMap!2715 (t!362691 (toList!7555 lt!1977454))) (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) (= lambda!238311 lambda!238290))))

(declare-fun bs!1166501 () Bool)

(assert (= bs!1166501 (and b!4831997 d!1549183)))

(assert (=> bs!1166501 (= (= (extractMap!2715 (t!362691 (toList!7555 lt!1977454))) lt!1977646) (= lambda!238311 lambda!238289))))

(declare-fun bs!1166502 () Bool)

(assert (= bs!1166502 (and b!4831997 b!4831890)))

(assert (=> bs!1166502 (= (= (extractMap!2715 (t!362691 (toList!7555 lt!1977454))) lt!1977773) (= lambda!238311 lambda!238292))))

(declare-fun bs!1166503 () Bool)

(assert (= bs!1166503 (and b!4831997 b!4831956)))

(assert (=> bs!1166503 (= (= (extractMap!2715 (t!362691 (toList!7555 lt!1977454))) (extractMap!2715 (t!362691 (toList!7555 lm!2325)))) (= lambda!238311 lambda!238295))))

(declare-fun bs!1166504 () Bool)

(assert (= bs!1166504 (and b!4831997 b!4831957)))

(assert (=> bs!1166504 (= (= (extractMap!2715 (t!362691 (toList!7555 lt!1977454))) (extractMap!2715 (t!362691 (toList!7555 lm!2325)))) (= lambda!238311 lambda!238294))))

(declare-fun bs!1166505 () Bool)

(assert (= bs!1166505 (and b!4831997 b!4831779)))

(assert (=> bs!1166505 (= (= (extractMap!2715 (t!362691 (toList!7555 lt!1977454))) lt!1977452) (= lambda!238311 lambda!238239))))

(assert (=> bs!1166503 (= (= (extractMap!2715 (t!362691 (toList!7555 lt!1977454))) lt!1977831) (= lambda!238311 lambda!238296))))

(declare-fun bs!1166506 () Bool)

(assert (= bs!1166506 (and b!4831997 d!1549227)))

(assert (=> bs!1166506 (= (= (extractMap!2715 (t!362691 (toList!7555 lt!1977454))) lt!1977843) (= lambda!238311 lambda!238297))))

(declare-fun bs!1166507 () Bool)

(assert (= bs!1166507 (and b!4831997 d!1549187)))

(assert (=> bs!1166507 (= (= (extractMap!2715 (t!362691 (toList!7555 lt!1977454))) lt!1977785) (= lambda!238311 lambda!238293))))

(declare-fun bs!1166508 () Bool)

(assert (= bs!1166508 (and b!4831997 b!4831780)))

(assert (=> bs!1166508 (= (= (extractMap!2715 (t!362691 (toList!7555 lt!1977454))) lt!1977452) (= lambda!238311 lambda!238238))))

(assert (=> bs!1166505 (= (= (extractMap!2715 (t!362691 (toList!7555 lt!1977454))) lt!1977646) (= lambda!238311 lambda!238240))))

(assert (=> bs!1166502 (= (= (extractMap!2715 (t!362691 (toList!7555 lt!1977454))) (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) (= lambda!238311 lambda!238291))))

(assert (=> b!4831997 true))

(declare-fun bs!1166509 () Bool)

(declare-fun b!4831996 () Bool)

(assert (= bs!1166509 (and b!4831996 d!1549117)))

(declare-fun lambda!238312 () Int)

(assert (=> bs!1166509 (= (= (extractMap!2715 (t!362691 (toList!7555 lt!1977454))) lt!1977658) (= lambda!238312 lambda!238241))))

(declare-fun bs!1166510 () Bool)

(assert (= bs!1166510 (and b!4831996 d!1549247)))

(assert (=> bs!1166510 (= (= (extractMap!2715 (t!362691 (toList!7555 lt!1977454))) lt!1977452) (= lambda!238312 lambda!238306))))

(declare-fun bs!1166511 () Bool)

(assert (= bs!1166511 (and b!4831996 b!4831997)))

(assert (=> bs!1166511 (= lambda!238312 lambda!238311)))

(declare-fun bs!1166512 () Bool)

(assert (= bs!1166512 (and b!4831996 b!4831891)))

(assert (=> bs!1166512 (= (= (extractMap!2715 (t!362691 (toList!7555 lt!1977454))) (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) (= lambda!238312 lambda!238290))))

(declare-fun bs!1166513 () Bool)

(assert (= bs!1166513 (and b!4831996 d!1549183)))

(assert (=> bs!1166513 (= (= (extractMap!2715 (t!362691 (toList!7555 lt!1977454))) lt!1977646) (= lambda!238312 lambda!238289))))

(declare-fun bs!1166514 () Bool)

(assert (= bs!1166514 (and b!4831996 b!4831890)))

(assert (=> bs!1166514 (= (= (extractMap!2715 (t!362691 (toList!7555 lt!1977454))) lt!1977773) (= lambda!238312 lambda!238292))))

(declare-fun bs!1166515 () Bool)

(assert (= bs!1166515 (and b!4831996 b!4831956)))

(assert (=> bs!1166515 (= (= (extractMap!2715 (t!362691 (toList!7555 lt!1977454))) (extractMap!2715 (t!362691 (toList!7555 lm!2325)))) (= lambda!238312 lambda!238295))))

(declare-fun bs!1166516 () Bool)

(assert (= bs!1166516 (and b!4831996 b!4831957)))

(assert (=> bs!1166516 (= (= (extractMap!2715 (t!362691 (toList!7555 lt!1977454))) (extractMap!2715 (t!362691 (toList!7555 lm!2325)))) (= lambda!238312 lambda!238294))))

(declare-fun bs!1166517 () Bool)

(assert (= bs!1166517 (and b!4831996 b!4831779)))

(assert (=> bs!1166517 (= (= (extractMap!2715 (t!362691 (toList!7555 lt!1977454))) lt!1977452) (= lambda!238312 lambda!238239))))

(assert (=> bs!1166515 (= (= (extractMap!2715 (t!362691 (toList!7555 lt!1977454))) lt!1977831) (= lambda!238312 lambda!238296))))

(declare-fun bs!1166518 () Bool)

(assert (= bs!1166518 (and b!4831996 d!1549227)))

(assert (=> bs!1166518 (= (= (extractMap!2715 (t!362691 (toList!7555 lt!1977454))) lt!1977843) (= lambda!238312 lambda!238297))))

(declare-fun bs!1166519 () Bool)

(assert (= bs!1166519 (and b!4831996 d!1549187)))

(assert (=> bs!1166519 (= (= (extractMap!2715 (t!362691 (toList!7555 lt!1977454))) lt!1977785) (= lambda!238312 lambda!238293))))

(declare-fun bs!1166520 () Bool)

(assert (= bs!1166520 (and b!4831996 b!4831780)))

(assert (=> bs!1166520 (= (= (extractMap!2715 (t!362691 (toList!7555 lt!1977454))) lt!1977452) (= lambda!238312 lambda!238238))))

(assert (=> bs!1166517 (= (= (extractMap!2715 (t!362691 (toList!7555 lt!1977454))) lt!1977646) (= lambda!238312 lambda!238240))))

(assert (=> bs!1166514 (= (= (extractMap!2715 (t!362691 (toList!7555 lt!1977454))) (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) (= lambda!238312 lambda!238291))))

(assert (=> b!4831996 true))

(declare-fun lambda!238313 () Int)

(declare-fun lt!1977865 () ListMap!6927)

(assert (=> bs!1166509 (= (= lt!1977865 lt!1977658) (= lambda!238313 lambda!238241))))

(assert (=> bs!1166510 (= (= lt!1977865 lt!1977452) (= lambda!238313 lambda!238306))))

(assert (=> bs!1166511 (= (= lt!1977865 (extractMap!2715 (t!362691 (toList!7555 lt!1977454)))) (= lambda!238313 lambda!238311))))

(assert (=> bs!1166512 (= (= lt!1977865 (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) (= lambda!238313 lambda!238290))))

(assert (=> bs!1166513 (= (= lt!1977865 lt!1977646) (= lambda!238313 lambda!238289))))

(assert (=> bs!1166514 (= (= lt!1977865 lt!1977773) (= lambda!238313 lambda!238292))))

(assert (=> bs!1166515 (= (= lt!1977865 (extractMap!2715 (t!362691 (toList!7555 lm!2325)))) (= lambda!238313 lambda!238295))))

(assert (=> bs!1166516 (= (= lt!1977865 (extractMap!2715 (t!362691 (toList!7555 lm!2325)))) (= lambda!238313 lambda!238294))))

(assert (=> bs!1166515 (= (= lt!1977865 lt!1977831) (= lambda!238313 lambda!238296))))

(assert (=> bs!1166518 (= (= lt!1977865 lt!1977843) (= lambda!238313 lambda!238297))))

(assert (=> bs!1166519 (= (= lt!1977865 lt!1977785) (= lambda!238313 lambda!238293))))

(assert (=> bs!1166520 (= (= lt!1977865 lt!1977452) (= lambda!238313 lambda!238238))))

(assert (=> bs!1166517 (= (= lt!1977865 lt!1977452) (= lambda!238313 lambda!238239))))

(assert (=> b!4831996 (= (= lt!1977865 (extractMap!2715 (t!362691 (toList!7555 lt!1977454)))) (= lambda!238313 lambda!238312))))

(assert (=> bs!1166517 (= (= lt!1977865 lt!1977646) (= lambda!238313 lambda!238240))))

(assert (=> bs!1166514 (= (= lt!1977865 (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) (= lambda!238313 lambda!238291))))

(assert (=> b!4831996 true))

(declare-fun bs!1166521 () Bool)

(declare-fun d!1549263 () Bool)

(assert (= bs!1166521 (and d!1549263 b!4831996)))

(declare-fun lt!1977877 () ListMap!6927)

(declare-fun lambda!238314 () Int)

(assert (=> bs!1166521 (= (= lt!1977877 lt!1977865) (= lambda!238314 lambda!238313))))

(declare-fun bs!1166522 () Bool)

(assert (= bs!1166522 (and d!1549263 d!1549117)))

(assert (=> bs!1166522 (= (= lt!1977877 lt!1977658) (= lambda!238314 lambda!238241))))

(declare-fun bs!1166523 () Bool)

(assert (= bs!1166523 (and d!1549263 d!1549247)))

(assert (=> bs!1166523 (= (= lt!1977877 lt!1977452) (= lambda!238314 lambda!238306))))

(declare-fun bs!1166524 () Bool)

(assert (= bs!1166524 (and d!1549263 b!4831997)))

(assert (=> bs!1166524 (= (= lt!1977877 (extractMap!2715 (t!362691 (toList!7555 lt!1977454)))) (= lambda!238314 lambda!238311))))

(declare-fun bs!1166525 () Bool)

(assert (= bs!1166525 (and d!1549263 b!4831891)))

(assert (=> bs!1166525 (= (= lt!1977877 (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) (= lambda!238314 lambda!238290))))

(declare-fun bs!1166526 () Bool)

(assert (= bs!1166526 (and d!1549263 d!1549183)))

(assert (=> bs!1166526 (= (= lt!1977877 lt!1977646) (= lambda!238314 lambda!238289))))

(declare-fun bs!1166527 () Bool)

(assert (= bs!1166527 (and d!1549263 b!4831890)))

(assert (=> bs!1166527 (= (= lt!1977877 lt!1977773) (= lambda!238314 lambda!238292))))

(declare-fun bs!1166528 () Bool)

(assert (= bs!1166528 (and d!1549263 b!4831956)))

(assert (=> bs!1166528 (= (= lt!1977877 (extractMap!2715 (t!362691 (toList!7555 lm!2325)))) (= lambda!238314 lambda!238295))))

(declare-fun bs!1166529 () Bool)

(assert (= bs!1166529 (and d!1549263 b!4831957)))

(assert (=> bs!1166529 (= (= lt!1977877 (extractMap!2715 (t!362691 (toList!7555 lm!2325)))) (= lambda!238314 lambda!238294))))

(assert (=> bs!1166528 (= (= lt!1977877 lt!1977831) (= lambda!238314 lambda!238296))))

(declare-fun bs!1166530 () Bool)

(assert (= bs!1166530 (and d!1549263 d!1549227)))

(assert (=> bs!1166530 (= (= lt!1977877 lt!1977843) (= lambda!238314 lambda!238297))))

(declare-fun bs!1166531 () Bool)

(assert (= bs!1166531 (and d!1549263 d!1549187)))

(assert (=> bs!1166531 (= (= lt!1977877 lt!1977785) (= lambda!238314 lambda!238293))))

(declare-fun bs!1166532 () Bool)

(assert (= bs!1166532 (and d!1549263 b!4831780)))

(assert (=> bs!1166532 (= (= lt!1977877 lt!1977452) (= lambda!238314 lambda!238238))))

(declare-fun bs!1166533 () Bool)

(assert (= bs!1166533 (and d!1549263 b!4831779)))

(assert (=> bs!1166533 (= (= lt!1977877 lt!1977452) (= lambda!238314 lambda!238239))))

(assert (=> bs!1166521 (= (= lt!1977877 (extractMap!2715 (t!362691 (toList!7555 lt!1977454)))) (= lambda!238314 lambda!238312))))

(assert (=> bs!1166533 (= (= lt!1977877 lt!1977646) (= lambda!238314 lambda!238240))))

(assert (=> bs!1166527 (= (= lt!1977877 (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) (= lambda!238314 lambda!238291))))

(assert (=> d!1549263 true))

(declare-fun bm!336734 () Bool)

(declare-fun call!336741 () Bool)

(declare-fun c!823352 () Bool)

(assert (=> bm!336734 (= call!336741 (forall!12683 (ite c!823352 (toList!7556 (extractMap!2715 (t!362691 (toList!7555 lt!1977454)))) (_2!32474 (h!61505 (toList!7555 lt!1977454)))) (ite c!823352 lambda!238311 lambda!238313)))))

(declare-fun call!336740 () Bool)

(declare-fun bm!336735 () Bool)

(assert (=> bm!336735 (= call!336740 (forall!12683 (toList!7556 (extractMap!2715 (t!362691 (toList!7555 lt!1977454)))) (ite c!823352 lambda!238311 lambda!238313)))))

(declare-fun e!3019485 () Bool)

(assert (=> d!1549263 e!3019485))

(declare-fun res!2058179 () Bool)

(assert (=> d!1549263 (=> (not res!2058179) (not e!3019485))))

(assert (=> d!1549263 (= res!2058179 (forall!12683 (_2!32474 (h!61505 (toList!7555 lt!1977454))) lambda!238314))))

(declare-fun e!3019486 () ListMap!6927)

(assert (=> d!1549263 (= lt!1977877 e!3019486)))

(assert (=> d!1549263 (= c!823352 (is-Nil!55070 (_2!32474 (h!61505 (toList!7555 lt!1977454)))))))

(assert (=> d!1549263 (noDuplicateKeys!2473 (_2!32474 (h!61505 (toList!7555 lt!1977454))))))

(assert (=> d!1549263 (= (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lt!1977454))) (extractMap!2715 (t!362691 (toList!7555 lt!1977454)))) lt!1977877)))

(assert (=> b!4831996 (= e!3019486 lt!1977865)))

(declare-fun lt!1977861 () ListMap!6927)

(assert (=> b!4831996 (= lt!1977861 (+!2552 (extractMap!2715 (t!362691 (toList!7555 lt!1977454))) (h!61504 (_2!32474 (h!61505 (toList!7555 lt!1977454))))))))

(assert (=> b!4831996 (= lt!1977865 (addToMapMapFromBucket!1830 (t!362690 (_2!32474 (h!61505 (toList!7555 lt!1977454)))) (+!2552 (extractMap!2715 (t!362691 (toList!7555 lt!1977454))) (h!61504 (_2!32474 (h!61505 (toList!7555 lt!1977454)))))))))

(declare-fun lt!1977864 () Unit!143893)

(declare-fun call!336739 () Unit!143893)

(assert (=> b!4831996 (= lt!1977864 call!336739)))

(assert (=> b!4831996 (forall!12683 (toList!7556 (extractMap!2715 (t!362691 (toList!7555 lt!1977454)))) lambda!238312)))

(declare-fun lt!1977873 () Unit!143893)

(assert (=> b!4831996 (= lt!1977873 lt!1977864)))

(assert (=> b!4831996 (forall!12683 (toList!7556 lt!1977861) lambda!238313)))

(declare-fun lt!1977867 () Unit!143893)

(declare-fun Unit!143969 () Unit!143893)

(assert (=> b!4831996 (= lt!1977867 Unit!143969)))

(assert (=> b!4831996 (forall!12683 (t!362690 (_2!32474 (h!61505 (toList!7555 lt!1977454)))) lambda!238313)))

(declare-fun lt!1977869 () Unit!143893)

(declare-fun Unit!143970 () Unit!143893)

(assert (=> b!4831996 (= lt!1977869 Unit!143970)))

(declare-fun lt!1977858 () Unit!143893)

(declare-fun Unit!143971 () Unit!143893)

(assert (=> b!4831996 (= lt!1977858 Unit!143971)))

(declare-fun lt!1977875 () Unit!143893)

(assert (=> b!4831996 (= lt!1977875 (forallContained!4416 (toList!7556 lt!1977861) lambda!238313 (h!61504 (_2!32474 (h!61505 (toList!7555 lt!1977454))))))))

(assert (=> b!4831996 (contains!18883 lt!1977861 (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lt!1977454))))))))

(declare-fun lt!1977859 () Unit!143893)

(declare-fun Unit!143972 () Unit!143893)

(assert (=> b!4831996 (= lt!1977859 Unit!143972)))

(assert (=> b!4831996 (contains!18883 lt!1977865 (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lt!1977454))))))))

(declare-fun lt!1977868 () Unit!143893)

(declare-fun Unit!143973 () Unit!143893)

(assert (=> b!4831996 (= lt!1977868 Unit!143973)))

(assert (=> b!4831996 (forall!12683 (_2!32474 (h!61505 (toList!7555 lt!1977454))) lambda!238313)))

(declare-fun lt!1977862 () Unit!143893)

(declare-fun Unit!143974 () Unit!143893)

(assert (=> b!4831996 (= lt!1977862 Unit!143974)))

(assert (=> b!4831996 (forall!12683 (toList!7556 lt!1977861) lambda!238313)))

(declare-fun lt!1977872 () Unit!143893)

(declare-fun Unit!143975 () Unit!143893)

(assert (=> b!4831996 (= lt!1977872 Unit!143975)))

(declare-fun lt!1977870 () Unit!143893)

(declare-fun Unit!143976 () Unit!143893)

(assert (=> b!4831996 (= lt!1977870 Unit!143976)))

(declare-fun lt!1977860 () Unit!143893)

(assert (=> b!4831996 (= lt!1977860 (addForallContainsKeyThenBeforeAdding!1006 (extractMap!2715 (t!362691 (toList!7555 lt!1977454))) lt!1977865 (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lt!1977454))))) (_2!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lt!1977454)))))))))

(assert (=> b!4831996 (forall!12683 (toList!7556 (extractMap!2715 (t!362691 (toList!7555 lt!1977454)))) lambda!238313)))

(declare-fun lt!1977876 () Unit!143893)

(assert (=> b!4831996 (= lt!1977876 lt!1977860)))

(assert (=> b!4831996 (forall!12683 (toList!7556 (extractMap!2715 (t!362691 (toList!7555 lt!1977454)))) lambda!238313)))

(declare-fun lt!1977863 () Unit!143893)

(declare-fun Unit!143977 () Unit!143893)

(assert (=> b!4831996 (= lt!1977863 Unit!143977)))

(declare-fun res!2058178 () Bool)

(assert (=> b!4831996 (= res!2058178 call!336741)))

(declare-fun e!3019487 () Bool)

(assert (=> b!4831996 (=> (not res!2058178) (not e!3019487))))

(assert (=> b!4831996 e!3019487))

(declare-fun lt!1977866 () Unit!143893)

(declare-fun Unit!143978 () Unit!143893)

(assert (=> b!4831996 (= lt!1977866 Unit!143978)))

(assert (=> b!4831997 (= e!3019486 (extractMap!2715 (t!362691 (toList!7555 lt!1977454))))))

(declare-fun lt!1977871 () Unit!143893)

(assert (=> b!4831997 (= lt!1977871 call!336739)))

(assert (=> b!4831997 call!336741))

(declare-fun lt!1977874 () Unit!143893)

(assert (=> b!4831997 (= lt!1977874 lt!1977871)))

(assert (=> b!4831997 call!336740))

(declare-fun lt!1977857 () Unit!143893)

(declare-fun Unit!143979 () Unit!143893)

(assert (=> b!4831997 (= lt!1977857 Unit!143979)))

(declare-fun b!4831998 () Bool)

(declare-fun res!2058177 () Bool)

(assert (=> b!4831998 (=> (not res!2058177) (not e!3019485))))

(assert (=> b!4831998 (= res!2058177 (forall!12683 (toList!7556 (extractMap!2715 (t!362691 (toList!7555 lt!1977454)))) lambda!238314))))

(declare-fun b!4831999 () Bool)

(assert (=> b!4831999 (= e!3019485 (invariantList!1829 (toList!7556 lt!1977877)))))

(declare-fun bm!336736 () Bool)

(assert (=> bm!336736 (= call!336739 (lemmaContainsAllItsOwnKeys!1007 (extractMap!2715 (t!362691 (toList!7555 lt!1977454)))))))

(declare-fun b!4832000 () Bool)

(assert (=> b!4832000 (= e!3019487 call!336740)))

(assert (= (and d!1549263 c!823352) b!4831997))

(assert (= (and d!1549263 (not c!823352)) b!4831996))

(assert (= (and b!4831996 res!2058178) b!4832000))

(assert (= (or b!4831997 b!4831996) bm!336736))

(assert (= (or b!4831997 b!4832000) bm!336735))

(assert (= (or b!4831997 b!4831996) bm!336734))

(assert (= (and d!1549263 res!2058179) b!4831998))

(assert (= (and b!4831998 res!2058177) b!4831999))

(declare-fun m!5825944 () Bool)

(assert (=> b!4831996 m!5825944))

(declare-fun m!5825946 () Bool)

(assert (=> b!4831996 m!5825946))

(assert (=> b!4831996 m!5825342))

(assert (=> b!4831996 m!5825944))

(declare-fun m!5825948 () Bool)

(assert (=> b!4831996 m!5825948))

(declare-fun m!5825950 () Bool)

(assert (=> b!4831996 m!5825950))

(declare-fun m!5825952 () Bool)

(assert (=> b!4831996 m!5825952))

(assert (=> b!4831996 m!5825948))

(declare-fun m!5825954 () Bool)

(assert (=> b!4831996 m!5825954))

(assert (=> b!4831996 m!5825952))

(assert (=> b!4831996 m!5825342))

(declare-fun m!5825956 () Bool)

(assert (=> b!4831996 m!5825956))

(declare-fun m!5825958 () Bool)

(assert (=> b!4831996 m!5825958))

(declare-fun m!5825960 () Bool)

(assert (=> b!4831996 m!5825960))

(declare-fun m!5825962 () Bool)

(assert (=> b!4831996 m!5825962))

(declare-fun m!5825964 () Bool)

(assert (=> b!4831996 m!5825964))

(declare-fun m!5825966 () Bool)

(assert (=> bm!336734 m!5825966))

(declare-fun m!5825968 () Bool)

(assert (=> b!4831999 m!5825968))

(declare-fun m!5825970 () Bool)

(assert (=> d!1549263 m!5825970))

(assert (=> d!1549263 m!5825536))

(declare-fun m!5825972 () Bool)

(assert (=> bm!336735 m!5825972))

(declare-fun m!5825974 () Bool)

(assert (=> b!4831998 m!5825974))

(assert (=> bm!336736 m!5825342))

(declare-fun m!5825976 () Bool)

(assert (=> bm!336736 m!5825976))

(assert (=> b!4831673 d!1549263))

(declare-fun bs!1166534 () Bool)

(declare-fun d!1549265 () Bool)

(assert (= bs!1166534 (and d!1549265 d!1549089)))

(declare-fun lambda!238315 () Int)

(assert (=> bs!1166534 (= lambda!238315 lambda!238201)))

(declare-fun bs!1166535 () Bool)

(assert (= bs!1166535 (and d!1549265 d!1549137)))

(assert (=> bs!1166535 (not (= lambda!238315 lambda!238248))))

(declare-fun bs!1166536 () Bool)

(assert (= bs!1166536 (and d!1549265 d!1549087)))

(assert (=> bs!1166536 (= lambda!238315 lambda!238198)))

(declare-fun bs!1166537 () Bool)

(assert (= bs!1166537 (and d!1549265 d!1549133)))

(assert (=> bs!1166537 (not (= lambda!238315 lambda!238247))))

(declare-fun bs!1166538 () Bool)

(assert (= bs!1166538 (and d!1549265 d!1549129)))

(assert (=> bs!1166538 (= lambda!238315 lambda!238244)))

(declare-fun bs!1166539 () Bool)

(assert (= bs!1166539 (and d!1549265 d!1549109)))

(assert (=> bs!1166539 (= lambda!238315 lambda!238202)))

(declare-fun bs!1166540 () Bool)

(assert (= bs!1166540 (and d!1549265 start!502018)))

(assert (=> bs!1166540 (= lambda!238315 lambda!238185)))

(declare-fun bs!1166541 () Bool)

(assert (= bs!1166541 (and d!1549265 d!1549081)))

(assert (=> bs!1166541 (= lambda!238315 lambda!238197)))

(declare-fun lt!1977878 () ListMap!6927)

(assert (=> d!1549265 (invariantList!1829 (toList!7556 lt!1977878))))

(declare-fun e!3019488 () ListMap!6927)

(assert (=> d!1549265 (= lt!1977878 e!3019488)))

(declare-fun c!823353 () Bool)

(assert (=> d!1549265 (= c!823353 (is-Cons!55071 (t!362691 (toList!7555 lt!1977454))))))

(assert (=> d!1549265 (forall!12681 (t!362691 (toList!7555 lt!1977454)) lambda!238315)))

(assert (=> d!1549265 (= (extractMap!2715 (t!362691 (toList!7555 lt!1977454))) lt!1977878)))

(declare-fun b!4832001 () Bool)

(assert (=> b!4832001 (= e!3019488 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (t!362691 (toList!7555 lt!1977454)))) (extractMap!2715 (t!362691 (t!362691 (toList!7555 lt!1977454))))))))

(declare-fun b!4832002 () Bool)

(assert (=> b!4832002 (= e!3019488 (ListMap!6928 Nil!55070))))

(assert (= (and d!1549265 c!823353) b!4832001))

(assert (= (and d!1549265 (not c!823353)) b!4832002))

(declare-fun m!5825978 () Bool)

(assert (=> d!1549265 m!5825978))

(declare-fun m!5825980 () Bool)

(assert (=> d!1549265 m!5825980))

(declare-fun m!5825982 () Bool)

(assert (=> b!4832001 m!5825982))

(assert (=> b!4832001 m!5825982))

(declare-fun m!5825984 () Bool)

(assert (=> b!4832001 m!5825984))

(assert (=> b!4831673 d!1549265))

(declare-fun bs!1166542 () Bool)

(declare-fun b!4832004 () Bool)

(assert (= bs!1166542 (and b!4832004 b!4831996)))

(declare-fun lambda!238316 () Int)

(assert (=> bs!1166542 (= (= (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) lt!1977865) (= lambda!238316 lambda!238313))))

(declare-fun bs!1166543 () Bool)

(assert (= bs!1166543 (and b!4832004 d!1549117)))

(assert (=> bs!1166543 (= (= (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) lt!1977658) (= lambda!238316 lambda!238241))))

(declare-fun bs!1166544 () Bool)

(assert (= bs!1166544 (and b!4832004 d!1549247)))

(assert (=> bs!1166544 (= (= (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) lt!1977452) (= lambda!238316 lambda!238306))))

(declare-fun bs!1166545 () Bool)

(assert (= bs!1166545 (and b!4832004 b!4831997)))

(assert (=> bs!1166545 (= (= (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) (extractMap!2715 (t!362691 (toList!7555 lt!1977454)))) (= lambda!238316 lambda!238311))))

(declare-fun bs!1166546 () Bool)

(assert (= bs!1166546 (and b!4832004 b!4831891)))

(assert (=> bs!1166546 (= (= (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) (= lambda!238316 lambda!238290))))

(declare-fun bs!1166547 () Bool)

(assert (= bs!1166547 (and b!4832004 d!1549183)))

(assert (=> bs!1166547 (= (= (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) lt!1977646) (= lambda!238316 lambda!238289))))

(declare-fun bs!1166548 () Bool)

(assert (= bs!1166548 (and b!4832004 b!4831890)))

(assert (=> bs!1166548 (= (= (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) lt!1977773) (= lambda!238316 lambda!238292))))

(declare-fun bs!1166549 () Bool)

(assert (= bs!1166549 (and b!4832004 b!4831956)))

(assert (=> bs!1166549 (= (= (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) (extractMap!2715 (t!362691 (toList!7555 lm!2325)))) (= lambda!238316 lambda!238295))))

(declare-fun bs!1166550 () Bool)

(assert (= bs!1166550 (and b!4832004 b!4831957)))

(assert (=> bs!1166550 (= (= (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) (extractMap!2715 (t!362691 (toList!7555 lm!2325)))) (= lambda!238316 lambda!238294))))

(assert (=> bs!1166549 (= (= (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) lt!1977831) (= lambda!238316 lambda!238296))))

(declare-fun bs!1166551 () Bool)

(assert (= bs!1166551 (and b!4832004 d!1549227)))

(assert (=> bs!1166551 (= (= (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) lt!1977843) (= lambda!238316 lambda!238297))))

(declare-fun bs!1166552 () Bool)

(assert (= bs!1166552 (and b!4832004 d!1549263)))

(assert (=> bs!1166552 (= (= (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) lt!1977877) (= lambda!238316 lambda!238314))))

(declare-fun bs!1166553 () Bool)

(assert (= bs!1166553 (and b!4832004 d!1549187)))

(assert (=> bs!1166553 (= (= (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) lt!1977785) (= lambda!238316 lambda!238293))))

(declare-fun bs!1166554 () Bool)

(assert (= bs!1166554 (and b!4832004 b!4831780)))

(assert (=> bs!1166554 (= (= (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) lt!1977452) (= lambda!238316 lambda!238238))))

(declare-fun bs!1166555 () Bool)

(assert (= bs!1166555 (and b!4832004 b!4831779)))

(assert (=> bs!1166555 (= (= (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) lt!1977452) (= lambda!238316 lambda!238239))))

(assert (=> bs!1166542 (= (= (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) (extractMap!2715 (t!362691 (toList!7555 lt!1977454)))) (= lambda!238316 lambda!238312))))

(assert (=> bs!1166555 (= (= (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) lt!1977646) (= lambda!238316 lambda!238240))))

(assert (=> bs!1166548 (= (= (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) (= lambda!238316 lambda!238291))))

(assert (=> b!4832004 true))

(declare-fun bs!1166556 () Bool)

(declare-fun b!4832003 () Bool)

(assert (= bs!1166556 (and b!4832003 b!4831996)))

(declare-fun lambda!238317 () Int)

(assert (=> bs!1166556 (= (= (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) lt!1977865) (= lambda!238317 lambda!238313))))

(declare-fun bs!1166557 () Bool)

(assert (= bs!1166557 (and b!4832003 d!1549117)))

(assert (=> bs!1166557 (= (= (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) lt!1977658) (= lambda!238317 lambda!238241))))

(declare-fun bs!1166558 () Bool)

(assert (= bs!1166558 (and b!4832003 d!1549247)))

(assert (=> bs!1166558 (= (= (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) lt!1977452) (= lambda!238317 lambda!238306))))

(declare-fun bs!1166559 () Bool)

(assert (= bs!1166559 (and b!4832003 b!4831891)))

(assert (=> bs!1166559 (= (= (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) (= lambda!238317 lambda!238290))))

(declare-fun bs!1166560 () Bool)

(assert (= bs!1166560 (and b!4832003 d!1549183)))

(assert (=> bs!1166560 (= (= (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) lt!1977646) (= lambda!238317 lambda!238289))))

(declare-fun bs!1166561 () Bool)

(assert (= bs!1166561 (and b!4832003 b!4831890)))

(assert (=> bs!1166561 (= (= (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) lt!1977773) (= lambda!238317 lambda!238292))))

(declare-fun bs!1166562 () Bool)

(assert (= bs!1166562 (and b!4832003 b!4831956)))

(assert (=> bs!1166562 (= (= (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) (extractMap!2715 (t!362691 (toList!7555 lm!2325)))) (= lambda!238317 lambda!238295))))

(declare-fun bs!1166563 () Bool)

(assert (= bs!1166563 (and b!4832003 b!4831957)))

(assert (=> bs!1166563 (= (= (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) (extractMap!2715 (t!362691 (toList!7555 lm!2325)))) (= lambda!238317 lambda!238294))))

(assert (=> bs!1166562 (= (= (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) lt!1977831) (= lambda!238317 lambda!238296))))

(declare-fun bs!1166564 () Bool)

(assert (= bs!1166564 (and b!4832003 d!1549227)))

(assert (=> bs!1166564 (= (= (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) lt!1977843) (= lambda!238317 lambda!238297))))

(declare-fun bs!1166565 () Bool)

(assert (= bs!1166565 (and b!4832003 d!1549263)))

(assert (=> bs!1166565 (= (= (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) lt!1977877) (= lambda!238317 lambda!238314))))

(declare-fun bs!1166566 () Bool)

(assert (= bs!1166566 (and b!4832003 b!4832004)))

(assert (=> bs!1166566 (= lambda!238317 lambda!238316)))

(declare-fun bs!1166567 () Bool)

(assert (= bs!1166567 (and b!4832003 b!4831997)))

(assert (=> bs!1166567 (= (= (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) (extractMap!2715 (t!362691 (toList!7555 lt!1977454)))) (= lambda!238317 lambda!238311))))

(declare-fun bs!1166568 () Bool)

(assert (= bs!1166568 (and b!4832003 d!1549187)))

(assert (=> bs!1166568 (= (= (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) lt!1977785) (= lambda!238317 lambda!238293))))

(declare-fun bs!1166569 () Bool)

(assert (= bs!1166569 (and b!4832003 b!4831780)))

(assert (=> bs!1166569 (= (= (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) lt!1977452) (= lambda!238317 lambda!238238))))

(declare-fun bs!1166570 () Bool)

(assert (= bs!1166570 (and b!4832003 b!4831779)))

(assert (=> bs!1166570 (= (= (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) lt!1977452) (= lambda!238317 lambda!238239))))

(assert (=> bs!1166556 (= (= (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) (extractMap!2715 (t!362691 (toList!7555 lt!1977454)))) (= lambda!238317 lambda!238312))))

(assert (=> bs!1166570 (= (= (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) lt!1977646) (= lambda!238317 lambda!238240))))

(assert (=> bs!1166561 (= (= (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) (= lambda!238317 lambda!238291))))

(assert (=> b!4832003 true))

(declare-fun lambda!238318 () Int)

(declare-fun lt!1977887 () ListMap!6927)

(assert (=> bs!1166556 (= (= lt!1977887 lt!1977865) (= lambda!238318 lambda!238313))))

(assert (=> bs!1166557 (= (= lt!1977887 lt!1977658) (= lambda!238318 lambda!238241))))

(assert (=> bs!1166558 (= (= lt!1977887 lt!1977452) (= lambda!238318 lambda!238306))))

(assert (=> bs!1166559 (= (= lt!1977887 (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) (= lambda!238318 lambda!238290))))

(assert (=> b!4832003 (= (= lt!1977887 (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325))))) (= lambda!238318 lambda!238317))))

(assert (=> bs!1166560 (= (= lt!1977887 lt!1977646) (= lambda!238318 lambda!238289))))

(assert (=> bs!1166561 (= (= lt!1977887 lt!1977773) (= lambda!238318 lambda!238292))))

(assert (=> bs!1166562 (= (= lt!1977887 (extractMap!2715 (t!362691 (toList!7555 lm!2325)))) (= lambda!238318 lambda!238295))))

(assert (=> bs!1166563 (= (= lt!1977887 (extractMap!2715 (t!362691 (toList!7555 lm!2325)))) (= lambda!238318 lambda!238294))))

(assert (=> bs!1166562 (= (= lt!1977887 lt!1977831) (= lambda!238318 lambda!238296))))

(assert (=> bs!1166564 (= (= lt!1977887 lt!1977843) (= lambda!238318 lambda!238297))))

(assert (=> bs!1166565 (= (= lt!1977887 lt!1977877) (= lambda!238318 lambda!238314))))

(assert (=> bs!1166566 (= (= lt!1977887 (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325))))) (= lambda!238318 lambda!238316))))

(assert (=> bs!1166567 (= (= lt!1977887 (extractMap!2715 (t!362691 (toList!7555 lt!1977454)))) (= lambda!238318 lambda!238311))))

(assert (=> bs!1166568 (= (= lt!1977887 lt!1977785) (= lambda!238318 lambda!238293))))

(assert (=> bs!1166569 (= (= lt!1977887 lt!1977452) (= lambda!238318 lambda!238238))))

(assert (=> bs!1166570 (= (= lt!1977887 lt!1977452) (= lambda!238318 lambda!238239))))

(assert (=> bs!1166556 (= (= lt!1977887 (extractMap!2715 (t!362691 (toList!7555 lt!1977454)))) (= lambda!238318 lambda!238312))))

(assert (=> bs!1166570 (= (= lt!1977887 lt!1977646) (= lambda!238318 lambda!238240))))

(assert (=> bs!1166561 (= (= lt!1977887 (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) (= lambda!238318 lambda!238291))))

(assert (=> b!4832003 true))

(declare-fun bs!1166571 () Bool)

(declare-fun d!1549267 () Bool)

(assert (= bs!1166571 (and d!1549267 b!4831996)))

(declare-fun lt!1977899 () ListMap!6927)

(declare-fun lambda!238319 () Int)

(assert (=> bs!1166571 (= (= lt!1977899 lt!1977865) (= lambda!238319 lambda!238313))))

(declare-fun bs!1166572 () Bool)

(assert (= bs!1166572 (and d!1549267 d!1549117)))

(assert (=> bs!1166572 (= (= lt!1977899 lt!1977658) (= lambda!238319 lambda!238241))))

(declare-fun bs!1166573 () Bool)

(assert (= bs!1166573 (and d!1549267 d!1549247)))

(assert (=> bs!1166573 (= (= lt!1977899 lt!1977452) (= lambda!238319 lambda!238306))))

(declare-fun bs!1166574 () Bool)

(assert (= bs!1166574 (and d!1549267 b!4831891)))

(assert (=> bs!1166574 (= (= lt!1977899 (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) (= lambda!238319 lambda!238290))))

(declare-fun bs!1166575 () Bool)

(assert (= bs!1166575 (and d!1549267 b!4832003)))

(assert (=> bs!1166575 (= (= lt!1977899 (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325))))) (= lambda!238319 lambda!238317))))

(declare-fun bs!1166576 () Bool)

(assert (= bs!1166576 (and d!1549267 d!1549183)))

(assert (=> bs!1166576 (= (= lt!1977899 lt!1977646) (= lambda!238319 lambda!238289))))

(declare-fun bs!1166577 () Bool)

(assert (= bs!1166577 (and d!1549267 b!4831890)))

(assert (=> bs!1166577 (= (= lt!1977899 lt!1977773) (= lambda!238319 lambda!238292))))

(declare-fun bs!1166578 () Bool)

(assert (= bs!1166578 (and d!1549267 b!4831956)))

(assert (=> bs!1166578 (= (= lt!1977899 (extractMap!2715 (t!362691 (toList!7555 lm!2325)))) (= lambda!238319 lambda!238295))))

(declare-fun bs!1166579 () Bool)

(assert (= bs!1166579 (and d!1549267 b!4831957)))

(assert (=> bs!1166579 (= (= lt!1977899 (extractMap!2715 (t!362691 (toList!7555 lm!2325)))) (= lambda!238319 lambda!238294))))

(assert (=> bs!1166578 (= (= lt!1977899 lt!1977831) (= lambda!238319 lambda!238296))))

(declare-fun bs!1166580 () Bool)

(assert (= bs!1166580 (and d!1549267 d!1549227)))

(assert (=> bs!1166580 (= (= lt!1977899 lt!1977843) (= lambda!238319 lambda!238297))))

(declare-fun bs!1166581 () Bool)

(assert (= bs!1166581 (and d!1549267 d!1549263)))

(assert (=> bs!1166581 (= (= lt!1977899 lt!1977877) (= lambda!238319 lambda!238314))))

(declare-fun bs!1166582 () Bool)

(assert (= bs!1166582 (and d!1549267 b!4832004)))

(assert (=> bs!1166582 (= (= lt!1977899 (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325))))) (= lambda!238319 lambda!238316))))

(declare-fun bs!1166583 () Bool)

(assert (= bs!1166583 (and d!1549267 b!4831997)))

(assert (=> bs!1166583 (= (= lt!1977899 (extractMap!2715 (t!362691 (toList!7555 lt!1977454)))) (= lambda!238319 lambda!238311))))

(declare-fun bs!1166584 () Bool)

(assert (= bs!1166584 (and d!1549267 d!1549187)))

(assert (=> bs!1166584 (= (= lt!1977899 lt!1977785) (= lambda!238319 lambda!238293))))

(declare-fun bs!1166585 () Bool)

(assert (= bs!1166585 (and d!1549267 b!4831780)))

(assert (=> bs!1166585 (= (= lt!1977899 lt!1977452) (= lambda!238319 lambda!238238))))

(assert (=> bs!1166575 (= (= lt!1977899 lt!1977887) (= lambda!238319 lambda!238318))))

(declare-fun bs!1166586 () Bool)

(assert (= bs!1166586 (and d!1549267 b!4831779)))

(assert (=> bs!1166586 (= (= lt!1977899 lt!1977452) (= lambda!238319 lambda!238239))))

(assert (=> bs!1166571 (= (= lt!1977899 (extractMap!2715 (t!362691 (toList!7555 lt!1977454)))) (= lambda!238319 lambda!238312))))

(assert (=> bs!1166586 (= (= lt!1977899 lt!1977646) (= lambda!238319 lambda!238240))))

(assert (=> bs!1166577 (= (= lt!1977899 (+!2552 lt!1977452 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) (= lambda!238319 lambda!238291))))

(assert (=> d!1549267 true))

(declare-fun c!823354 () Bool)

(declare-fun bm!336737 () Bool)

(declare-fun call!336744 () Bool)

(assert (=> bm!336737 (= call!336744 (forall!12683 (ite c!823354 (toList!7556 (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325))))) (_2!32474 (h!61505 (t!362691 (toList!7555 lm!2325))))) (ite c!823354 lambda!238316 lambda!238318)))))

(declare-fun call!336743 () Bool)

(declare-fun bm!336738 () Bool)

(assert (=> bm!336738 (= call!336743 (forall!12683 (toList!7556 (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325))))) (ite c!823354 lambda!238316 lambda!238318)))))

(declare-fun e!3019489 () Bool)

(assert (=> d!1549267 e!3019489))

(declare-fun res!2058182 () Bool)

(assert (=> d!1549267 (=> (not res!2058182) (not e!3019489))))

(assert (=> d!1549267 (= res!2058182 (forall!12683 (_2!32474 (h!61505 (t!362691 (toList!7555 lm!2325)))) lambda!238319))))

(declare-fun e!3019490 () ListMap!6927)

(assert (=> d!1549267 (= lt!1977899 e!3019490)))

(assert (=> d!1549267 (= c!823354 (is-Nil!55070 (_2!32474 (h!61505 (t!362691 (toList!7555 lm!2325))))))))

(assert (=> d!1549267 (noDuplicateKeys!2473 (_2!32474 (h!61505 (t!362691 (toList!7555 lm!2325)))))))

(assert (=> d!1549267 (= (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (t!362691 (toList!7555 lm!2325)))) (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325))))) lt!1977899)))

(assert (=> b!4832003 (= e!3019490 lt!1977887)))

(declare-fun lt!1977883 () ListMap!6927)

(assert (=> b!4832003 (= lt!1977883 (+!2552 (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) (h!61504 (_2!32474 (h!61505 (t!362691 (toList!7555 lm!2325)))))))))

(assert (=> b!4832003 (= lt!1977887 (addToMapMapFromBucket!1830 (t!362690 (_2!32474 (h!61505 (t!362691 (toList!7555 lm!2325))))) (+!2552 (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) (h!61504 (_2!32474 (h!61505 (t!362691 (toList!7555 lm!2325))))))))))

(declare-fun lt!1977886 () Unit!143893)

(declare-fun call!336742 () Unit!143893)

(assert (=> b!4832003 (= lt!1977886 call!336742)))

(assert (=> b!4832003 (forall!12683 (toList!7556 (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325))))) lambda!238317)))

(declare-fun lt!1977895 () Unit!143893)

(assert (=> b!4832003 (= lt!1977895 lt!1977886)))

(assert (=> b!4832003 (forall!12683 (toList!7556 lt!1977883) lambda!238318)))

(declare-fun lt!1977889 () Unit!143893)

(declare-fun Unit!143980 () Unit!143893)

(assert (=> b!4832003 (= lt!1977889 Unit!143980)))

(assert (=> b!4832003 (forall!12683 (t!362690 (_2!32474 (h!61505 (t!362691 (toList!7555 lm!2325))))) lambda!238318)))

(declare-fun lt!1977891 () Unit!143893)

(declare-fun Unit!143981 () Unit!143893)

(assert (=> b!4832003 (= lt!1977891 Unit!143981)))

(declare-fun lt!1977880 () Unit!143893)

(declare-fun Unit!143982 () Unit!143893)

(assert (=> b!4832003 (= lt!1977880 Unit!143982)))

(declare-fun lt!1977897 () Unit!143893)

(assert (=> b!4832003 (= lt!1977897 (forallContained!4416 (toList!7556 lt!1977883) lambda!238318 (h!61504 (_2!32474 (h!61505 (t!362691 (toList!7555 lm!2325)))))))))

(assert (=> b!4832003 (contains!18883 lt!1977883 (_1!32473 (h!61504 (_2!32474 (h!61505 (t!362691 (toList!7555 lm!2325)))))))))

(declare-fun lt!1977881 () Unit!143893)

(declare-fun Unit!143983 () Unit!143893)

(assert (=> b!4832003 (= lt!1977881 Unit!143983)))

(assert (=> b!4832003 (contains!18883 lt!1977887 (_1!32473 (h!61504 (_2!32474 (h!61505 (t!362691 (toList!7555 lm!2325)))))))))

(declare-fun lt!1977890 () Unit!143893)

(declare-fun Unit!143984 () Unit!143893)

(assert (=> b!4832003 (= lt!1977890 Unit!143984)))

(assert (=> b!4832003 (forall!12683 (_2!32474 (h!61505 (t!362691 (toList!7555 lm!2325)))) lambda!238318)))

(declare-fun lt!1977884 () Unit!143893)

(declare-fun Unit!143985 () Unit!143893)

(assert (=> b!4832003 (= lt!1977884 Unit!143985)))

(assert (=> b!4832003 (forall!12683 (toList!7556 lt!1977883) lambda!238318)))

(declare-fun lt!1977894 () Unit!143893)

(declare-fun Unit!143986 () Unit!143893)

(assert (=> b!4832003 (= lt!1977894 Unit!143986)))

(declare-fun lt!1977892 () Unit!143893)

(declare-fun Unit!143987 () Unit!143893)

(assert (=> b!4832003 (= lt!1977892 Unit!143987)))

(declare-fun lt!1977882 () Unit!143893)

(assert (=> b!4832003 (= lt!1977882 (addForallContainsKeyThenBeforeAdding!1006 (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) lt!1977887 (_1!32473 (h!61504 (_2!32474 (h!61505 (t!362691 (toList!7555 lm!2325)))))) (_2!32473 (h!61504 (_2!32474 (h!61505 (t!362691 (toList!7555 lm!2325))))))))))

(assert (=> b!4832003 (forall!12683 (toList!7556 (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325))))) lambda!238318)))

(declare-fun lt!1977898 () Unit!143893)

(assert (=> b!4832003 (= lt!1977898 lt!1977882)))

(assert (=> b!4832003 (forall!12683 (toList!7556 (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325))))) lambda!238318)))

(declare-fun lt!1977885 () Unit!143893)

(declare-fun Unit!143988 () Unit!143893)

(assert (=> b!4832003 (= lt!1977885 Unit!143988)))

(declare-fun res!2058181 () Bool)

(assert (=> b!4832003 (= res!2058181 call!336744)))

(declare-fun e!3019491 () Bool)

(assert (=> b!4832003 (=> (not res!2058181) (not e!3019491))))

(assert (=> b!4832003 e!3019491))

(declare-fun lt!1977888 () Unit!143893)

(declare-fun Unit!143989 () Unit!143893)

(assert (=> b!4832003 (= lt!1977888 Unit!143989)))

(assert (=> b!4832004 (= e!3019490 (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))))))

(declare-fun lt!1977893 () Unit!143893)

(assert (=> b!4832004 (= lt!1977893 call!336742)))

(assert (=> b!4832004 call!336744))

(declare-fun lt!1977896 () Unit!143893)

(assert (=> b!4832004 (= lt!1977896 lt!1977893)))

(assert (=> b!4832004 call!336743))

(declare-fun lt!1977879 () Unit!143893)

(declare-fun Unit!143990 () Unit!143893)

(assert (=> b!4832004 (= lt!1977879 Unit!143990)))

(declare-fun b!4832005 () Bool)

(declare-fun res!2058180 () Bool)

(assert (=> b!4832005 (=> (not res!2058180) (not e!3019489))))

(assert (=> b!4832005 (= res!2058180 (forall!12683 (toList!7556 (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325))))) lambda!238319))))

(declare-fun b!4832006 () Bool)

(assert (=> b!4832006 (= e!3019489 (invariantList!1829 (toList!7556 lt!1977899)))))

(declare-fun bm!336739 () Bool)

(assert (=> bm!336739 (= call!336742 (lemmaContainsAllItsOwnKeys!1007 (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325))))))))

(declare-fun b!4832007 () Bool)

(assert (=> b!4832007 (= e!3019491 call!336743)))

(assert (= (and d!1549267 c!823354) b!4832004))

(assert (= (and d!1549267 (not c!823354)) b!4832003))

(assert (= (and b!4832003 res!2058181) b!4832007))

(assert (= (or b!4832004 b!4832003) bm!336739))

(assert (= (or b!4832004 b!4832007) bm!336738))

(assert (= (or b!4832004 b!4832003) bm!336737))

(assert (= (and d!1549267 res!2058182) b!4832005))

(assert (= (and b!4832005 res!2058180) b!4832006))

(declare-fun m!5825986 () Bool)

(assert (=> b!4832003 m!5825986))

(declare-fun m!5825988 () Bool)

(assert (=> b!4832003 m!5825988))

(assert (=> b!4832003 m!5825394))

(assert (=> b!4832003 m!5825986))

(declare-fun m!5825990 () Bool)

(assert (=> b!4832003 m!5825990))

(declare-fun m!5825992 () Bool)

(assert (=> b!4832003 m!5825992))

(declare-fun m!5825994 () Bool)

(assert (=> b!4832003 m!5825994))

(assert (=> b!4832003 m!5825990))

(declare-fun m!5825996 () Bool)

(assert (=> b!4832003 m!5825996))

(assert (=> b!4832003 m!5825994))

(assert (=> b!4832003 m!5825394))

(declare-fun m!5825998 () Bool)

(assert (=> b!4832003 m!5825998))

(declare-fun m!5826000 () Bool)

(assert (=> b!4832003 m!5826000))

(declare-fun m!5826002 () Bool)

(assert (=> b!4832003 m!5826002))

(declare-fun m!5826004 () Bool)

(assert (=> b!4832003 m!5826004))

(declare-fun m!5826006 () Bool)

(assert (=> b!4832003 m!5826006))

(declare-fun m!5826008 () Bool)

(assert (=> bm!336737 m!5826008))

(declare-fun m!5826010 () Bool)

(assert (=> b!4832006 m!5826010))

(declare-fun m!5826012 () Bool)

(assert (=> d!1549267 m!5826012))

(declare-fun m!5826014 () Bool)

(assert (=> d!1549267 m!5826014))

(declare-fun m!5826016 () Bool)

(assert (=> bm!336738 m!5826016))

(declare-fun m!5826018 () Bool)

(assert (=> b!4832005 m!5826018))

(assert (=> bm!336739 m!5825394))

(declare-fun m!5826020 () Bool)

(assert (=> bm!336739 m!5826020))

(assert (=> b!4831711 d!1549267))

(declare-fun bs!1166587 () Bool)

(declare-fun d!1549269 () Bool)

(assert (= bs!1166587 (and d!1549269 d!1549089)))

(declare-fun lambda!238320 () Int)

(assert (=> bs!1166587 (= lambda!238320 lambda!238201)))

(declare-fun bs!1166588 () Bool)

(assert (= bs!1166588 (and d!1549269 d!1549137)))

(assert (=> bs!1166588 (not (= lambda!238320 lambda!238248))))

(declare-fun bs!1166589 () Bool)

(assert (= bs!1166589 (and d!1549269 d!1549265)))

(assert (=> bs!1166589 (= lambda!238320 lambda!238315)))

(declare-fun bs!1166590 () Bool)

(assert (= bs!1166590 (and d!1549269 d!1549087)))

(assert (=> bs!1166590 (= lambda!238320 lambda!238198)))

(declare-fun bs!1166591 () Bool)

(assert (= bs!1166591 (and d!1549269 d!1549133)))

(assert (=> bs!1166591 (not (= lambda!238320 lambda!238247))))

(declare-fun bs!1166592 () Bool)

(assert (= bs!1166592 (and d!1549269 d!1549129)))

(assert (=> bs!1166592 (= lambda!238320 lambda!238244)))

(declare-fun bs!1166593 () Bool)

(assert (= bs!1166593 (and d!1549269 d!1549109)))

(assert (=> bs!1166593 (= lambda!238320 lambda!238202)))

(declare-fun bs!1166594 () Bool)

(assert (= bs!1166594 (and d!1549269 start!502018)))

(assert (=> bs!1166594 (= lambda!238320 lambda!238185)))

(declare-fun bs!1166595 () Bool)

(assert (= bs!1166595 (and d!1549269 d!1549081)))

(assert (=> bs!1166595 (= lambda!238320 lambda!238197)))

(declare-fun lt!1977900 () ListMap!6927)

(assert (=> d!1549269 (invariantList!1829 (toList!7556 lt!1977900))))

(declare-fun e!3019492 () ListMap!6927)

(assert (=> d!1549269 (= lt!1977900 e!3019492)))

(declare-fun c!823355 () Bool)

(assert (=> d!1549269 (= c!823355 (is-Cons!55071 (t!362691 (t!362691 (toList!7555 lm!2325)))))))

(assert (=> d!1549269 (forall!12681 (t!362691 (t!362691 (toList!7555 lm!2325))) lambda!238320)))

(assert (=> d!1549269 (= (extractMap!2715 (t!362691 (t!362691 (toList!7555 lm!2325)))) lt!1977900)))

(declare-fun b!4832008 () Bool)

(assert (=> b!4832008 (= e!3019492 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (t!362691 (t!362691 (toList!7555 lm!2325))))) (extractMap!2715 (t!362691 (t!362691 (t!362691 (toList!7555 lm!2325)))))))))

(declare-fun b!4832009 () Bool)

(assert (=> b!4832009 (= e!3019492 (ListMap!6928 Nil!55070))))

(assert (= (and d!1549269 c!823355) b!4832008))

(assert (= (and d!1549269 (not c!823355)) b!4832009))

(declare-fun m!5826022 () Bool)

(assert (=> d!1549269 m!5826022))

(declare-fun m!5826024 () Bool)

(assert (=> d!1549269 m!5826024))

(declare-fun m!5826026 () Bool)

(assert (=> b!4832008 m!5826026))

(assert (=> b!4832008 m!5826026))

(declare-fun m!5826028 () Bool)

(assert (=> b!4832008 m!5826028))

(assert (=> b!4831711 d!1549269))

(declare-fun d!1549271 () Bool)

(assert (=> d!1549271 (= (isDefined!10644 (getValueByKey!2656 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))) key!5594)) (not (isEmpty!29691 (getValueByKey!2656 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))) key!5594))))))

(declare-fun bs!1166596 () Bool)

(assert (= bs!1166596 d!1549271))

(assert (=> bs!1166596 m!5825314))

(declare-fun m!5826030 () Bool)

(assert (=> bs!1166596 m!5826030))

(assert (=> b!4831659 d!1549271))

(declare-fun b!4832013 () Bool)

(declare-fun e!3019494 () Option!13529)

(assert (=> b!4832013 (= e!3019494 None!13528)))

(declare-fun b!4832011 () Bool)

(declare-fun e!3019493 () Option!13529)

(assert (=> b!4832011 (= e!3019493 e!3019494)))

(declare-fun c!823357 () Bool)

(assert (=> b!4832011 (= c!823357 (and (is-Cons!55070 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (not (= (_1!32473 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))))) key!5594))))))

(declare-fun d!1549273 () Bool)

(declare-fun c!823356 () Bool)

(assert (=> d!1549273 (= c!823356 (and (is-Cons!55070 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (= (_1!32473 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))))) key!5594)))))

(assert (=> d!1549273 (= (getValueByKey!2656 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))) key!5594) e!3019493)))

(declare-fun b!4832012 () Bool)

(assert (=> b!4832012 (= e!3019494 (getValueByKey!2656 (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) key!5594))))

(declare-fun b!4832010 () Bool)

(assert (=> b!4832010 (= e!3019493 (Some!13528 (_2!32473 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))))))))

(assert (= (and d!1549273 c!823356) b!4832010))

(assert (= (and d!1549273 (not c!823356)) b!4832011))

(assert (= (and b!4832011 c!823357) b!4832012))

(assert (= (and b!4832011 (not c!823357)) b!4832013))

(declare-fun m!5826032 () Bool)

(assert (=> b!4832012 m!5826032))

(assert (=> b!4831659 d!1549273))

(declare-fun d!1549275 () Bool)

(declare-fun lt!1977901 () Bool)

(assert (=> d!1549275 (= lt!1977901 (set.member key!5594 (content!9836 e!3019301)))))

(declare-fun e!3019496 () Bool)

(assert (=> d!1549275 (= lt!1977901 e!3019496)))

(declare-fun res!2058184 () Bool)

(assert (=> d!1549275 (=> (not res!2058184) (not e!3019496))))

(assert (=> d!1549275 (= res!2058184 (is-Cons!55074 e!3019301))))

(assert (=> d!1549275 (= (contains!18886 e!3019301 key!5594) lt!1977901)))

(declare-fun b!4832014 () Bool)

(declare-fun e!3019495 () Bool)

(assert (=> b!4832014 (= e!3019496 e!3019495)))

(declare-fun res!2058183 () Bool)

(assert (=> b!4832014 (=> res!2058183 e!3019495)))

(assert (=> b!4832014 (= res!2058183 (= (h!61508 e!3019301) key!5594))))

(declare-fun b!4832015 () Bool)

(assert (=> b!4832015 (= e!3019495 (contains!18886 (t!362694 e!3019301) key!5594))))

(assert (= (and d!1549275 res!2058184) b!4832014))

(assert (= (and b!4832014 (not res!2058183)) b!4832015))

(declare-fun m!5826034 () Bool)

(assert (=> d!1549275 m!5826034))

(declare-fun m!5826036 () Bool)

(assert (=> d!1549275 m!5826036))

(declare-fun m!5826038 () Bool)

(assert (=> b!4832015 m!5826038))

(assert (=> bm!336701 d!1549275))

(declare-fun d!1549277 () Bool)

(declare-fun res!2058189 () Bool)

(declare-fun e!3019501 () Bool)

(assert (=> d!1549277 (=> res!2058189 e!3019501)))

(assert (=> d!1549277 (= res!2058189 (not (is-Cons!55070 (_2!32474 (h!61505 (toList!7555 lt!1977454))))))))

(assert (=> d!1549277 (= (noDuplicateKeys!2473 (_2!32474 (h!61505 (toList!7555 lt!1977454)))) e!3019501)))

(declare-fun b!4832020 () Bool)

(declare-fun e!3019502 () Bool)

(assert (=> b!4832020 (= e!3019501 e!3019502)))

(declare-fun res!2058190 () Bool)

(assert (=> b!4832020 (=> (not res!2058190) (not e!3019502))))

(assert (=> b!4832020 (= res!2058190 (not (containsKey!4438 (t!362690 (_2!32474 (h!61505 (toList!7555 lt!1977454)))) (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lt!1977454))))))))))

(declare-fun b!4832021 () Bool)

(assert (=> b!4832021 (= e!3019502 (noDuplicateKeys!2473 (t!362690 (_2!32474 (h!61505 (toList!7555 lt!1977454))))))))

(assert (= (and d!1549277 (not res!2058189)) b!4832020))

(assert (= (and b!4832020 res!2058190) b!4832021))

(declare-fun m!5826040 () Bool)

(assert (=> b!4832020 m!5826040))

(declare-fun m!5826042 () Bool)

(assert (=> b!4832021 m!5826042))

(assert (=> bs!1166404 d!1549277))

(declare-fun d!1549279 () Bool)

(assert (=> d!1549279 (isDefined!10644 (getValueByKey!2656 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) key!5594))))

(declare-fun lt!1977902 () Unit!143893)

(assert (=> d!1549279 (= lt!1977902 (choose!35280 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) key!5594))))

(assert (=> d!1549279 (invariantList!1829 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)))))

(assert (=> d!1549279 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2441 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) key!5594) lt!1977902)))

(declare-fun bs!1166597 () Bool)

(assert (= bs!1166597 d!1549279))

(assert (=> bs!1166597 m!5825402))

(assert (=> bs!1166597 m!5825402))

(assert (=> bs!1166597 m!5825404))

(declare-fun m!5826044 () Bool)

(assert (=> bs!1166597 m!5826044))

(declare-fun m!5826046 () Bool)

(assert (=> bs!1166597 m!5826046))

(assert (=> b!4831716 d!1549279))

(declare-fun d!1549281 () Bool)

(assert (=> d!1549281 (= (isDefined!10644 (getValueByKey!2656 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) key!5594)) (not (isEmpty!29691 (getValueByKey!2656 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) key!5594))))))

(declare-fun bs!1166598 () Bool)

(assert (= bs!1166598 d!1549281))

(assert (=> bs!1166598 m!5825402))

(declare-fun m!5826048 () Bool)

(assert (=> bs!1166598 m!5826048))

(assert (=> b!4831716 d!1549281))

(declare-fun b!4832025 () Bool)

(declare-fun e!3019504 () Option!13529)

(assert (=> b!4832025 (= e!3019504 None!13528)))

(declare-fun b!4832023 () Bool)

(declare-fun e!3019503 () Option!13529)

(assert (=> b!4832023 (= e!3019503 e!3019504)))

(declare-fun c!823359 () Bool)

(assert (=> b!4832023 (= c!823359 (and (is-Cons!55070 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (not (= (_1!32473 (h!61504 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)))) key!5594))))))

(declare-fun c!823358 () Bool)

(declare-fun d!1549283 () Bool)

(assert (=> d!1549283 (= c!823358 (and (is-Cons!55070 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (= (_1!32473 (h!61504 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)))) key!5594)))))

(assert (=> d!1549283 (= (getValueByKey!2656 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) key!5594) e!3019503)))

(declare-fun b!4832024 () Bool)

(assert (=> b!4832024 (= e!3019504 (getValueByKey!2656 (t!362690 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) key!5594))))

(declare-fun b!4832022 () Bool)

(assert (=> b!4832022 (= e!3019503 (Some!13528 (_2!32473 (h!61504 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))))))))

(assert (= (and d!1549283 c!823358) b!4832022))

(assert (= (and d!1549283 (not c!823358)) b!4832023))

(assert (= (and b!4832023 c!823359) b!4832024))

(assert (= (and b!4832023 (not c!823359)) b!4832025))

(declare-fun m!5826050 () Bool)

(assert (=> b!4832024 m!5826050))

(assert (=> b!4831716 d!1549283))

(declare-fun d!1549285 () Bool)

(assert (=> d!1549285 (contains!18886 (getKeysList!1175 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) key!5594)))

(declare-fun lt!1977903 () Unit!143893)

(assert (=> d!1549285 (= lt!1977903 (choose!35281 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) key!5594))))

(assert (=> d!1549285 (invariantList!1829 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)))))

(assert (=> d!1549285 (= (lemmaInListThenGetKeysListContains!1170 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) key!5594) lt!1977903)))

(declare-fun bs!1166599 () Bool)

(assert (= bs!1166599 d!1549285))

(assert (=> bs!1166599 m!5825406))

(assert (=> bs!1166599 m!5825406))

(declare-fun m!5826052 () Bool)

(assert (=> bs!1166599 m!5826052))

(declare-fun m!5826054 () Bool)

(assert (=> bs!1166599 m!5826054))

(assert (=> bs!1166599 m!5826046))

(assert (=> b!4831716 d!1549285))

(declare-fun d!1549287 () Bool)

(declare-fun lt!1977904 () Bool)

(assert (=> d!1549287 (= lt!1977904 (set.member key!5594 (content!9836 e!3019247)))))

(declare-fun e!3019506 () Bool)

(assert (=> d!1549287 (= lt!1977904 e!3019506)))

(declare-fun res!2058192 () Bool)

(assert (=> d!1549287 (=> (not res!2058192) (not e!3019506))))

(assert (=> d!1549287 (= res!2058192 (is-Cons!55074 e!3019247))))

(assert (=> d!1549287 (= (contains!18886 e!3019247 key!5594) lt!1977904)))

(declare-fun b!4832026 () Bool)

(declare-fun e!3019505 () Bool)

(assert (=> b!4832026 (= e!3019506 e!3019505)))

(declare-fun res!2058191 () Bool)

(assert (=> b!4832026 (=> res!2058191 e!3019505)))

(assert (=> b!4832026 (= res!2058191 (= (h!61508 e!3019247) key!5594))))

(declare-fun b!4832027 () Bool)

(assert (=> b!4832027 (= e!3019505 (contains!18886 (t!362694 e!3019247) key!5594))))

(assert (= (and d!1549287 res!2058192) b!4832026))

(assert (= (and b!4832026 (not res!2058191)) b!4832027))

(declare-fun m!5826056 () Bool)

(assert (=> d!1549287 m!5826056))

(declare-fun m!5826058 () Bool)

(assert (=> d!1549287 m!5826058))

(declare-fun m!5826060 () Bool)

(assert (=> b!4832027 m!5826060))

(assert (=> bm!336698 d!1549287))

(declare-fun d!1549289 () Bool)

(declare-fun res!2058193 () Bool)

(declare-fun e!3019507 () Bool)

(assert (=> d!1549289 (=> res!2058193 e!3019507)))

(assert (=> d!1549289 (= res!2058193 (and (is-Cons!55070 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (= (_1!32473 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))))) key!5594)))))

(assert (=> d!1549289 (= (containsKey!4440 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))) key!5594) e!3019507)))

(declare-fun b!4832028 () Bool)

(declare-fun e!3019508 () Bool)

(assert (=> b!4832028 (= e!3019507 e!3019508)))

(declare-fun res!2058194 () Bool)

(assert (=> b!4832028 (=> (not res!2058194) (not e!3019508))))

(assert (=> b!4832028 (= res!2058194 (is-Cons!55070 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))))))

(declare-fun b!4832029 () Bool)

(assert (=> b!4832029 (= e!3019508 (containsKey!4440 (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) key!5594))))

(assert (= (and d!1549289 (not res!2058193)) b!4832028))

(assert (= (and b!4832028 res!2058194) b!4832029))

(declare-fun m!5826062 () Bool)

(assert (=> b!4832029 m!5826062))

(assert (=> d!1549075 d!1549289))

(declare-fun d!1549291 () Bool)

(assert (=> d!1549291 (= (tail!9439 (toList!7555 lm!2325)) (t!362691 (toList!7555 lm!2325)))))

(assert (=> d!1549115 d!1549291))

(assert (=> b!4831664 d!1549229))

(declare-fun d!1549293 () Bool)

(assert (=> d!1549293 (containsKey!4440 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))) key!5594)))

(declare-fun lt!1977907 () Unit!143893)

(declare-fun choose!35289 (List!55194 K!16757) Unit!143893)

(assert (=> d!1549293 (= lt!1977907 (choose!35289 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))) key!5594))))

(assert (=> d!1549293 (invariantList!1829 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))))))

(assert (=> d!1549293 (= (lemmaInGetKeysListThenContainsKey!1175 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))) key!5594) lt!1977907)))

(declare-fun bs!1166600 () Bool)

(assert (= bs!1166600 d!1549293))

(assert (=> bs!1166600 m!5825326))

(declare-fun m!5826064 () Bool)

(assert (=> bs!1166600 m!5826064))

(declare-fun m!5826066 () Bool)

(assert (=> bs!1166600 m!5826066))

(assert (=> b!4831664 d!1549293))

(assert (=> b!4831662 d!1549255))

(declare-fun lt!1977908 () Bool)

(declare-fun d!1549295 () Bool)

(assert (=> d!1549295 (= lt!1977908 (set.member key!5594 (content!9836 (keys!20284 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)))))))

(declare-fun e!3019510 () Bool)

(assert (=> d!1549295 (= lt!1977908 e!3019510)))

(declare-fun res!2058196 () Bool)

(assert (=> d!1549295 (=> (not res!2058196) (not e!3019510))))

(assert (=> d!1549295 (= res!2058196 (is-Cons!55074 (keys!20284 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))))))

(assert (=> d!1549295 (= (contains!18886 (keys!20284 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) key!5594) lt!1977908)))

(declare-fun b!4832030 () Bool)

(declare-fun e!3019509 () Bool)

(assert (=> b!4832030 (= e!3019510 e!3019509)))

(declare-fun res!2058195 () Bool)

(assert (=> b!4832030 (=> res!2058195 e!3019509)))

(assert (=> b!4832030 (= res!2058195 (= (h!61508 (keys!20284 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) key!5594))))

(declare-fun b!4832031 () Bool)

(assert (=> b!4832031 (= e!3019509 (contains!18886 (t!362694 (keys!20284 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) key!5594))))

(assert (= (and d!1549295 res!2058196) b!4832030))

(assert (= (and b!4832030 (not res!2058195)) b!4832031))

(assert (=> d!1549295 m!5825410))

(declare-fun m!5826068 () Bool)

(assert (=> d!1549295 m!5826068))

(declare-fun m!5826070 () Bool)

(assert (=> d!1549295 m!5826070))

(declare-fun m!5826072 () Bool)

(assert (=> b!4832031 m!5826072))

(assert (=> b!4831721 d!1549295))

(declare-fun bs!1166601 () Bool)

(declare-fun b!4832033 () Bool)

(assert (= bs!1166601 (and b!4832033 b!4831980)))

(declare-fun lambda!238321 () Int)

(assert (=> bs!1166601 (= (= (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (= lambda!238321 lambda!238302))))

(declare-fun bs!1166602 () Bool)

(assert (= bs!1166602 (and b!4832033 b!4831989)))

(assert (=> bs!1166602 (= (= (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (= lambda!238321 lambda!238307))))

(declare-fun bs!1166603 () Bool)

(assert (= bs!1166603 (and b!4832033 b!4831994)))

(assert (=> bs!1166603 (= (= (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) (toList!7556 lt!1977452)) (= lambda!238321 lambda!238309))))

(assert (=> b!4832033 true))

(declare-fun bs!1166604 () Bool)

(declare-fun b!4832034 () Bool)

(assert (= bs!1166604 (and b!4832034 b!4831981)))

(declare-fun lambda!238322 () Int)

(assert (=> bs!1166604 (= lambda!238322 lambda!238303)))

(declare-fun bs!1166605 () Bool)

(assert (= bs!1166605 (and b!4832034 b!4831990)))

(assert (=> bs!1166605 (= lambda!238322 lambda!238308)))

(declare-fun bs!1166606 () Bool)

(assert (= bs!1166606 (and b!4832034 b!4831995)))

(assert (=> bs!1166606 (= lambda!238322 lambda!238310)))

(declare-fun d!1549297 () Bool)

(declare-fun e!3019511 () Bool)

(assert (=> d!1549297 e!3019511))

(declare-fun res!2058197 () Bool)

(assert (=> d!1549297 (=> (not res!2058197) (not e!3019511))))

(declare-fun lt!1977909 () List!55198)

(assert (=> d!1549297 (= res!2058197 (noDuplicate!977 lt!1977909))))

(assert (=> d!1549297 (= lt!1977909 (getKeysList!1175 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))))))

(assert (=> d!1549297 (= (keys!20284 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) lt!1977909)))

(declare-fun b!4832032 () Bool)

(declare-fun res!2058199 () Bool)

(assert (=> b!4832032 (=> (not res!2058199) (not e!3019511))))

(assert (=> b!4832032 (= res!2058199 (= (length!810 lt!1977909) (length!811 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)))))))

(declare-fun res!2058198 () Bool)

(assert (=> b!4832033 (=> (not res!2058198) (not e!3019511))))

(assert (=> b!4832033 (= res!2058198 (forall!12685 lt!1977909 lambda!238321))))

(assert (=> b!4832034 (= e!3019511 (= (content!9836 lt!1977909) (content!9836 (map!12617 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) lambda!238322))))))

(assert (= (and d!1549297 res!2058197) b!4832032))

(assert (= (and b!4832032 res!2058199) b!4832033))

(assert (= (and b!4832033 res!2058198) b!4832034))

(declare-fun m!5826074 () Bool)

(assert (=> d!1549297 m!5826074))

(assert (=> d!1549297 m!5825406))

(declare-fun m!5826076 () Bool)

(assert (=> b!4832032 m!5826076))

(declare-fun m!5826078 () Bool)

(assert (=> b!4832032 m!5826078))

(declare-fun m!5826080 () Bool)

(assert (=> b!4832033 m!5826080))

(declare-fun m!5826082 () Bool)

(assert (=> b!4832034 m!5826082))

(declare-fun m!5826084 () Bool)

(assert (=> b!4832034 m!5826084))

(assert (=> b!4832034 m!5826084))

(declare-fun m!5826086 () Bool)

(assert (=> b!4832034 m!5826086))

(assert (=> b!4831721 d!1549297))

(assert (=> d!1549129 d!1549105))

(assert (=> d!1549129 d!1549131))

(declare-fun d!1549299 () Bool)

(assert (=> d!1549299 (not (containsKey!4438 (apply!13372 lm!2325 (_1!32474 (h!61505 (toList!7555 lm!2325)))) key!5594))))

(assert (=> d!1549299 true))

(declare-fun _$39!475 () Unit!143893)

(assert (=> d!1549299 (= (choose!35273 lm!2325 key!5594 (_1!32474 (h!61505 (toList!7555 lm!2325))) hashF!1543) _$39!475)))

(declare-fun bs!1166607 () Bool)

(assert (= bs!1166607 d!1549299))

(assert (=> bs!1166607 m!5825196))

(assert (=> bs!1166607 m!5825196))

(assert (=> bs!1166607 m!5825198))

(assert (=> d!1549129 d!1549299))

(declare-fun d!1549301 () Bool)

(declare-fun res!2058200 () Bool)

(declare-fun e!3019512 () Bool)

(assert (=> d!1549301 (=> res!2058200 e!3019512)))

(assert (=> d!1549301 (= res!2058200 (is-Nil!55071 (toList!7555 lm!2325)))))

(assert (=> d!1549301 (= (forall!12681 (toList!7555 lm!2325) lambda!238244) e!3019512)))

(declare-fun b!4832035 () Bool)

(declare-fun e!3019513 () Bool)

(assert (=> b!4832035 (= e!3019512 e!3019513)))

(declare-fun res!2058201 () Bool)

(assert (=> b!4832035 (=> (not res!2058201) (not e!3019513))))

(assert (=> b!4832035 (= res!2058201 (dynLambda!22250 lambda!238244 (h!61505 (toList!7555 lm!2325))))))

(declare-fun b!4832036 () Bool)

(assert (=> b!4832036 (= e!3019513 (forall!12681 (t!362691 (toList!7555 lm!2325)) lambda!238244))))

(assert (= (and d!1549301 (not res!2058200)) b!4832035))

(assert (= (and b!4832035 res!2058201) b!4832036))

(declare-fun b_lambda!190829 () Bool)

(assert (=> (not b_lambda!190829) (not b!4832035)))

(declare-fun m!5826088 () Bool)

(assert (=> b!4832035 m!5826088))

(declare-fun m!5826090 () Bool)

(assert (=> b!4832036 m!5826090))

(assert (=> d!1549129 d!1549301))

(declare-fun d!1549303 () Bool)

(assert (=> d!1549303 (= (invariantList!1829 (toList!7556 lt!1977658)) (noDuplicatedKeys!495 (toList!7556 lt!1977658)))))

(declare-fun bs!1166608 () Bool)

(assert (= bs!1166608 d!1549303))

(declare-fun m!5826092 () Bool)

(assert (=> bs!1166608 m!5826092))

(assert (=> b!4831782 d!1549303))

(assert (=> b!4831715 d!1549073))

(declare-fun d!1549305 () Bool)

(assert (=> d!1549305 (isDefined!10645 (getValueByKey!2657 (toList!7555 lt!1977454) lt!1977450))))

(declare-fun lt!1977910 () Unit!143893)

(assert (=> d!1549305 (= lt!1977910 (choose!35277 (toList!7555 lt!1977454) lt!1977450))))

(declare-fun e!3019514 () Bool)

(assert (=> d!1549305 e!3019514))

(declare-fun res!2058202 () Bool)

(assert (=> d!1549305 (=> (not res!2058202) (not e!3019514))))

(assert (=> d!1549305 (= res!2058202 (isStrictlySorted!1004 (toList!7555 lt!1977454)))))

(assert (=> d!1549305 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2442 (toList!7555 lt!1977454) lt!1977450) lt!1977910)))

(declare-fun b!4832037 () Bool)

(assert (=> b!4832037 (= e!3019514 (containsKey!4441 (toList!7555 lt!1977454) lt!1977450))))

(assert (= (and d!1549305 res!2058202) b!4832037))

(assert (=> d!1549305 m!5825530))

(assert (=> d!1549305 m!5825530))

(assert (=> d!1549305 m!5825532))

(declare-fun m!5826094 () Bool)

(assert (=> d!1549305 m!5826094))

(declare-fun m!5826096 () Bool)

(assert (=> d!1549305 m!5826096))

(assert (=> b!4832037 m!5825526))

(assert (=> b!4831788 d!1549305))

(declare-fun d!1549307 () Bool)

(assert (=> d!1549307 (= (isDefined!10645 (getValueByKey!2657 (toList!7555 lt!1977454) lt!1977450)) (not (isEmpty!29690 (getValueByKey!2657 (toList!7555 lt!1977454) lt!1977450))))))

(declare-fun bs!1166609 () Bool)

(assert (= bs!1166609 d!1549307))

(assert (=> bs!1166609 m!5825530))

(declare-fun m!5826098 () Bool)

(assert (=> bs!1166609 m!5826098))

(assert (=> b!4831788 d!1549307))

(declare-fun d!1549309 () Bool)

(declare-fun c!823360 () Bool)

(assert (=> d!1549309 (= c!823360 (and (is-Cons!55071 (toList!7555 lt!1977454)) (= (_1!32474 (h!61505 (toList!7555 lt!1977454))) lt!1977450)))))

(declare-fun e!3019515 () Option!13530)

(assert (=> d!1549309 (= (getValueByKey!2657 (toList!7555 lt!1977454) lt!1977450) e!3019515)))

(declare-fun b!4832039 () Bool)

(declare-fun e!3019516 () Option!13530)

(assert (=> b!4832039 (= e!3019515 e!3019516)))

(declare-fun c!823361 () Bool)

(assert (=> b!4832039 (= c!823361 (and (is-Cons!55071 (toList!7555 lt!1977454)) (not (= (_1!32474 (h!61505 (toList!7555 lt!1977454))) lt!1977450))))))

(declare-fun b!4832038 () Bool)

(assert (=> b!4832038 (= e!3019515 (Some!13529 (_2!32474 (h!61505 (toList!7555 lt!1977454)))))))

(declare-fun b!4832041 () Bool)

(assert (=> b!4832041 (= e!3019516 None!13529)))

(declare-fun b!4832040 () Bool)

(assert (=> b!4832040 (= e!3019516 (getValueByKey!2657 (t!362691 (toList!7555 lt!1977454)) lt!1977450))))

(assert (= (and d!1549309 c!823360) b!4832038))

(assert (= (and d!1549309 (not c!823360)) b!4832039))

(assert (= (and b!4832039 c!823361) b!4832040))

(assert (= (and b!4832039 (not c!823361)) b!4832041))

(declare-fun m!5826100 () Bool)

(assert (=> b!4832040 m!5826100))

(assert (=> b!4831788 d!1549309))

(assert (=> b!4831653 d!1549245))

(assert (=> b!4831651 d!1549243))

(assert (=> b!4831651 d!1549245))

(declare-fun d!1549311 () Bool)

(declare-fun res!2058203 () Bool)

(declare-fun e!3019517 () Bool)

(assert (=> d!1549311 (=> res!2058203 e!3019517)))

(assert (=> d!1549311 (= res!2058203 (is-Nil!55070 (toList!7556 lt!1977452)))))

(assert (=> d!1549311 (= (forall!12683 (toList!7556 lt!1977452) (ite c!823315 lambda!238238 lambda!238240)) e!3019517)))

(declare-fun b!4832042 () Bool)

(declare-fun e!3019518 () Bool)

(assert (=> b!4832042 (= e!3019517 e!3019518)))

(declare-fun res!2058204 () Bool)

(assert (=> b!4832042 (=> (not res!2058204) (not e!3019518))))

(assert (=> b!4832042 (= res!2058204 (dynLambda!22252 (ite c!823315 lambda!238238 lambda!238240) (h!61504 (toList!7556 lt!1977452))))))

(declare-fun b!4832043 () Bool)

(assert (=> b!4832043 (= e!3019518 (forall!12683 (t!362690 (toList!7556 lt!1977452)) (ite c!823315 lambda!238238 lambda!238240)))))

(assert (= (and d!1549311 (not res!2058203)) b!4832042))

(assert (= (and b!4832042 res!2058204) b!4832043))

(declare-fun b_lambda!190831 () Bool)

(assert (=> (not b_lambda!190831) (not b!4832042)))

(declare-fun m!5826102 () Bool)

(assert (=> b!4832042 m!5826102))

(declare-fun m!5826104 () Bool)

(assert (=> b!4832043 m!5826104))

(assert (=> bm!336713 d!1549311))

(assert (=> b!4831650 d!1549215))

(assert (=> b!4831650 d!1549217))

(declare-fun bs!1166610 () Bool)

(declare-fun b!4832067 () Bool)

(assert (= bs!1166610 (and b!4832067 b!4831980)))

(declare-fun lambda!238331 () Int)

(assert (=> bs!1166610 (= (= (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (= lambda!238331 lambda!238302))))

(declare-fun bs!1166611 () Bool)

(assert (= bs!1166611 (and b!4832067 b!4831989)))

(assert (=> bs!1166611 (= (= (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (= lambda!238331 lambda!238307))))

(declare-fun bs!1166612 () Bool)

(assert (= bs!1166612 (and b!4832067 b!4831994)))

(assert (=> bs!1166612 (= (= (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (toList!7556 lt!1977452)) (= lambda!238331 lambda!238309))))

(declare-fun bs!1166613 () Bool)

(assert (= bs!1166613 (and b!4832067 b!4832033)))

(assert (=> bs!1166613 (= (= (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (= lambda!238331 lambda!238321))))

(assert (=> b!4832067 true))

(declare-fun bs!1166614 () Bool)

(declare-fun b!4832070 () Bool)

(assert (= bs!1166614 (and b!4832070 b!4832067)))

(declare-fun lambda!238332 () Int)

(assert (=> bs!1166614 (= (= (Cons!55070 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))))) (= lambda!238332 lambda!238331))))

(declare-fun bs!1166615 () Bool)

(assert (= bs!1166615 (and b!4832070 b!4831994)))

(assert (=> bs!1166615 (= (= (Cons!55070 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))))) (toList!7556 lt!1977452)) (= lambda!238332 lambda!238309))))

(declare-fun bs!1166616 () Bool)

(assert (= bs!1166616 (and b!4832070 b!4831980)))

(assert (=> bs!1166616 (= (= (Cons!55070 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))))) (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (= lambda!238332 lambda!238302))))

(declare-fun bs!1166617 () Bool)

(assert (= bs!1166617 (and b!4832070 b!4831989)))

(assert (=> bs!1166617 (= (= (Cons!55070 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))))) (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (= lambda!238332 lambda!238307))))

(declare-fun bs!1166618 () Bool)

(assert (= bs!1166618 (and b!4832070 b!4832033)))

(assert (=> bs!1166618 (= (= (Cons!55070 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))))) (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (= lambda!238332 lambda!238321))))

(assert (=> b!4832070 true))

(declare-fun bs!1166619 () Bool)

(declare-fun b!4832068 () Bool)

(assert (= bs!1166619 (and b!4832068 b!4832067)))

(declare-fun lambda!238333 () Int)

(assert (=> bs!1166619 (= (= (toList!7556 (extractMap!2715 (toList!7555 lm!2325))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))))) (= lambda!238333 lambda!238331))))

(declare-fun bs!1166620 () Bool)

(assert (= bs!1166620 (and b!4832068 b!4832070)))

(assert (=> bs!1166620 (= (= (toList!7556 (extractMap!2715 (toList!7555 lm!2325))) (Cons!55070 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))))) (= lambda!238333 lambda!238332))))

(declare-fun bs!1166621 () Bool)

(assert (= bs!1166621 (and b!4832068 b!4831994)))

(assert (=> bs!1166621 (= (= (toList!7556 (extractMap!2715 (toList!7555 lm!2325))) (toList!7556 lt!1977452)) (= lambda!238333 lambda!238309))))

(declare-fun bs!1166622 () Bool)

(assert (= bs!1166622 (and b!4832068 b!4831980)))

(assert (=> bs!1166622 (= (= (toList!7556 (extractMap!2715 (toList!7555 lm!2325))) (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (= lambda!238333 lambda!238302))))

(declare-fun bs!1166623 () Bool)

(assert (= bs!1166623 (and b!4832068 b!4831989)))

(assert (=> bs!1166623 (= lambda!238333 lambda!238307)))

(declare-fun bs!1166624 () Bool)

(assert (= bs!1166624 (and b!4832068 b!4832033)))

(assert (=> bs!1166624 (= (= (toList!7556 (extractMap!2715 (toList!7555 lm!2325))) (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (= lambda!238333 lambda!238321))))

(assert (=> b!4832068 true))

(declare-fun bs!1166625 () Bool)

(declare-fun b!4832064 () Bool)

(assert (= bs!1166625 (and b!4832064 b!4831981)))

(declare-fun lambda!238334 () Int)

(assert (=> bs!1166625 (= lambda!238334 lambda!238303)))

(declare-fun bs!1166626 () Bool)

(assert (= bs!1166626 (and b!4832064 b!4831990)))

(assert (=> bs!1166626 (= lambda!238334 lambda!238308)))

(declare-fun bs!1166627 () Bool)

(assert (= bs!1166627 (and b!4832064 b!4831995)))

(assert (=> bs!1166627 (= lambda!238334 lambda!238310)))

(declare-fun bs!1166628 () Bool)

(assert (= bs!1166628 (and b!4832064 b!4832034)))

(assert (=> bs!1166628 (= lambda!238334 lambda!238322)))

(declare-fun d!1549313 () Bool)

(declare-fun e!3019530 () Bool)

(assert (=> d!1549313 e!3019530))

(declare-fun res!2058212 () Bool)

(assert (=> d!1549313 (=> (not res!2058212) (not e!3019530))))

(declare-fun lt!1977926 () List!55198)

(assert (=> d!1549313 (= res!2058212 (noDuplicate!977 lt!1977926))))

(declare-fun e!3019527 () List!55198)

(assert (=> d!1549313 (= lt!1977926 e!3019527)))

(declare-fun c!823368 () Bool)

(assert (=> d!1549313 (= c!823368 (is-Cons!55070 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))))))

(assert (=> d!1549313 (invariantList!1829 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))))))

(assert (=> d!1549313 (= (getKeysList!1175 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) lt!1977926)))

(declare-fun b!4832062 () Bool)

(assert (=> b!4832062 (= e!3019527 Nil!55074)))

(declare-fun b!4832063 () Bool)

(assert (=> b!4832063 false))

(declare-fun e!3019529 () Unit!143893)

(declare-fun Unit!143995 () Unit!143893)

(assert (=> b!4832063 (= e!3019529 Unit!143995)))

(assert (=> b!4832064 (= e!3019530 (= (content!9836 lt!1977926) (content!9836 (map!12617 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))) lambda!238334))))))

(declare-fun b!4832065 () Bool)

(declare-fun res!2058211 () Bool)

(assert (=> b!4832065 (=> (not res!2058211) (not e!3019530))))

(assert (=> b!4832065 (= res!2058211 (= (length!810 lt!1977926) (length!811 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))))))))

(declare-fun b!4832066 () Bool)

(declare-fun Unit!143996 () Unit!143893)

(assert (=> b!4832066 (= e!3019529 Unit!143996)))

(assert (=> b!4832067 false))

(declare-fun lt!1977928 () Unit!143893)

(declare-fun forallContained!4419 (List!55198 Int K!16757) Unit!143893)

(assert (=> b!4832067 (= lt!1977928 (forallContained!4419 (getKeysList!1175 (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))))) lambda!238331 (_1!32473 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))))))))

(declare-fun e!3019528 () Unit!143893)

(declare-fun Unit!143998 () Unit!143893)

(assert (=> b!4832067 (= e!3019528 Unit!143998)))

(declare-fun res!2058213 () Bool)

(assert (=> b!4832068 (=> (not res!2058213) (not e!3019530))))

(assert (=> b!4832068 (= res!2058213 (forall!12685 lt!1977926 lambda!238333))))

(declare-fun b!4832069 () Bool)

(declare-fun Unit!143999 () Unit!143893)

(assert (=> b!4832069 (= e!3019528 Unit!143999)))

(assert (=> b!4832070 (= e!3019527 (Cons!55074 (_1!32473 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))))) (getKeysList!1175 (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))))))))

(declare-fun c!823369 () Bool)

(assert (=> b!4832070 (= c!823369 (containsKey!4440 (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (_1!32473 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))))))))

(declare-fun lt!1977930 () Unit!143893)

(assert (=> b!4832070 (= lt!1977930 e!3019529)))

(declare-fun c!823370 () Bool)

(assert (=> b!4832070 (= c!823370 (contains!18886 (getKeysList!1175 (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))))) (_1!32473 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))))))))

(declare-fun lt!1977927 () Unit!143893)

(assert (=> b!4832070 (= lt!1977927 e!3019528)))

(declare-fun lt!1977929 () List!55198)

(assert (=> b!4832070 (= lt!1977929 (getKeysList!1175 (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))))))))

(declare-fun lt!1977931 () Unit!143893)

(declare-fun lemmaForallContainsAddHeadPreserves!392 (List!55194 List!55198 tuple2!58358) Unit!143893)

(assert (=> b!4832070 (= lt!1977931 (lemmaForallContainsAddHeadPreserves!392 (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) lt!1977929 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))))))))

(assert (=> b!4832070 (forall!12685 lt!1977929 lambda!238332)))

(declare-fun lt!1977925 () Unit!143893)

(assert (=> b!4832070 (= lt!1977925 lt!1977931)))

(assert (= (and d!1549313 c!823368) b!4832070))

(assert (= (and d!1549313 (not c!823368)) b!4832062))

(assert (= (and b!4832070 c!823369) b!4832063))

(assert (= (and b!4832070 (not c!823369)) b!4832066))

(assert (= (and b!4832070 c!823370) b!4832067))

(assert (= (and b!4832070 (not c!823370)) b!4832069))

(assert (= (and d!1549313 res!2058212) b!4832065))

(assert (= (and b!4832065 res!2058211) b!4832068))

(assert (= (and b!4832068 res!2058213) b!4832064))

(declare-fun m!5826106 () Bool)

(assert (=> b!4832068 m!5826106))

(declare-fun m!5826108 () Bool)

(assert (=> d!1549313 m!5826108))

(assert (=> d!1549313 m!5826066))

(declare-fun m!5826110 () Bool)

(assert (=> b!4832067 m!5826110))

(assert (=> b!4832067 m!5826110))

(declare-fun m!5826112 () Bool)

(assert (=> b!4832067 m!5826112))

(declare-fun m!5826114 () Bool)

(assert (=> b!4832064 m!5826114))

(declare-fun m!5826116 () Bool)

(assert (=> b!4832064 m!5826116))

(assert (=> b!4832064 m!5826116))

(declare-fun m!5826118 () Bool)

(assert (=> b!4832064 m!5826118))

(declare-fun m!5826120 () Bool)

(assert (=> b!4832065 m!5826120))

(assert (=> b!4832065 m!5825912))

(declare-fun m!5826122 () Bool)

(assert (=> b!4832070 m!5826122))

(declare-fun m!5826124 () Bool)

(assert (=> b!4832070 m!5826124))

(assert (=> b!4832070 m!5826110))

(declare-fun m!5826126 () Bool)

(assert (=> b!4832070 m!5826126))

(assert (=> b!4832070 m!5826110))

(declare-fun m!5826128 () Bool)

(assert (=> b!4832070 m!5826128))

(assert (=> b!4831666 d!1549313))

(assert (=> d!1549089 d!1549075))

(assert (=> d!1549089 d!1549081))

(declare-fun d!1549315 () Bool)

(assert (=> d!1549315 (not (contains!18883 (extractMap!2715 (toList!7555 lt!1977454)) key!5594))))

(assert (=> d!1549315 true))

(declare-fun _$28!880 () Unit!143893)

(assert (=> d!1549315 (= (choose!35271 lt!1977454 key!5594 hashF!1543) _$28!880)))

(declare-fun bs!1166629 () Bool)

(assert (= bs!1166629 d!1549315))

(assert (=> bs!1166629 m!5825220))

(assert (=> bs!1166629 m!5825220))

(assert (=> bs!1166629 m!5825222))

(assert (=> d!1549089 d!1549315))

(declare-fun d!1549317 () Bool)

(declare-fun res!2058214 () Bool)

(declare-fun e!3019531 () Bool)

(assert (=> d!1549317 (=> res!2058214 e!3019531)))

(assert (=> d!1549317 (= res!2058214 (is-Nil!55071 (toList!7555 lt!1977454)))))

(assert (=> d!1549317 (= (forall!12681 (toList!7555 lt!1977454) lambda!238201) e!3019531)))

(declare-fun b!4832073 () Bool)

(declare-fun e!3019532 () Bool)

(assert (=> b!4832073 (= e!3019531 e!3019532)))

(declare-fun res!2058215 () Bool)

(assert (=> b!4832073 (=> (not res!2058215) (not e!3019532))))

(assert (=> b!4832073 (= res!2058215 (dynLambda!22250 lambda!238201 (h!61505 (toList!7555 lt!1977454))))))

(declare-fun b!4832074 () Bool)

(assert (=> b!4832074 (= e!3019532 (forall!12681 (t!362691 (toList!7555 lt!1977454)) lambda!238201))))

(assert (= (and d!1549317 (not res!2058214)) b!4832073))

(assert (= (and b!4832073 res!2058215) b!4832074))

(declare-fun b_lambda!190833 () Bool)

(assert (=> (not b_lambda!190833) (not b!4832073)))

(declare-fun m!5826130 () Bool)

(assert (=> b!4832073 m!5826130))

(declare-fun m!5826132 () Bool)

(assert (=> b!4832074 m!5826132))

(assert (=> d!1549089 d!1549317))

(assert (=> b!4831641 d!1549235))

(assert (=> b!4831641 d!1549237))

(declare-fun d!1549319 () Bool)

(declare-fun res!2058216 () Bool)

(declare-fun e!3019533 () Bool)

(assert (=> d!1549319 (=> res!2058216 e!3019533)))

(assert (=> d!1549319 (= res!2058216 (not (is-Cons!55070 (_2!32474 (h!61505 (toList!7555 lm!2325))))))))

(assert (=> d!1549319 (= (noDuplicateKeys!2473 (_2!32474 (h!61505 (toList!7555 lm!2325)))) e!3019533)))

(declare-fun b!4832075 () Bool)

(declare-fun e!3019534 () Bool)

(assert (=> b!4832075 (= e!3019533 e!3019534)))

(declare-fun res!2058217 () Bool)

(assert (=> b!4832075 (=> (not res!2058217) (not e!3019534))))

(assert (=> b!4832075 (= res!2058217 (not (containsKey!4438 (t!362690 (_2!32474 (h!61505 (toList!7555 lm!2325)))) (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))))))))

(declare-fun b!4832076 () Bool)

(assert (=> b!4832076 (= e!3019534 (noDuplicateKeys!2473 (t!362690 (_2!32474 (h!61505 (toList!7555 lm!2325))))))))

(assert (= (and d!1549319 (not res!2058216)) b!4832075))

(assert (= (and b!4832075 res!2058217) b!4832076))

(declare-fun m!5826134 () Bool)

(assert (=> b!4832075 m!5826134))

(assert (=> b!4832076 m!5825712))

(assert (=> bs!1166403 d!1549319))

(declare-fun d!1549321 () Bool)

(declare-fun res!2058218 () Bool)

(declare-fun e!3019535 () Bool)

(assert (=> d!1549321 (=> res!2058218 e!3019535)))

(assert (=> d!1549321 (= res!2058218 (and (is-Cons!55070 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (= (_1!32473 (h!61504 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)))) key!5594)))))

(assert (=> d!1549321 (= (containsKey!4440 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) key!5594) e!3019535)))

(declare-fun b!4832077 () Bool)

(declare-fun e!3019536 () Bool)

(assert (=> b!4832077 (= e!3019535 e!3019536)))

(declare-fun res!2058219 () Bool)

(assert (=> b!4832077 (=> (not res!2058219) (not e!3019536))))

(assert (=> b!4832077 (= res!2058219 (is-Cons!55070 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))))))

(declare-fun b!4832078 () Bool)

(assert (=> b!4832078 (= e!3019536 (containsKey!4440 (t!362690 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) key!5594))))

(assert (= (and d!1549321 (not res!2058218)) b!4832077))

(assert (= (and b!4832077 res!2058219) b!4832078))

(declare-fun m!5826136 () Bool)

(assert (=> b!4832078 m!5826136))

(assert (=> d!1549113 d!1549321))

(declare-fun bs!1166630 () Bool)

(declare-fun b!4832084 () Bool)

(assert (= bs!1166630 (and b!4832084 b!4832067)))

(declare-fun lambda!238335 () Int)

(assert (=> bs!1166630 (= (= (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))))) (= lambda!238335 lambda!238331))))

(declare-fun bs!1166631 () Bool)

(assert (= bs!1166631 (and b!4832084 b!4832070)))

(assert (=> bs!1166631 (= (= (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (Cons!55070 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))))) (= lambda!238335 lambda!238332))))

(declare-fun bs!1166632 () Bool)

(assert (= bs!1166632 (and b!4832084 b!4831994)))

(assert (=> bs!1166632 (= (= (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (toList!7556 lt!1977452)) (= lambda!238335 lambda!238309))))

(declare-fun bs!1166633 () Bool)

(assert (= bs!1166633 (and b!4832084 b!4831980)))

(assert (=> bs!1166633 (= (= (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (= lambda!238335 lambda!238302))))

(declare-fun bs!1166634 () Bool)

(assert (= bs!1166634 (and b!4832084 b!4832068)))

(assert (=> bs!1166634 (= (= (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (= lambda!238335 lambda!238333))))

(declare-fun bs!1166635 () Bool)

(assert (= bs!1166635 (and b!4832084 b!4831989)))

(assert (=> bs!1166635 (= (= (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (= lambda!238335 lambda!238307))))

(declare-fun bs!1166636 () Bool)

(assert (= bs!1166636 (and b!4832084 b!4832033)))

(assert (=> bs!1166636 (= (= (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (= lambda!238335 lambda!238321))))

(assert (=> b!4832084 true))

(declare-fun bs!1166637 () Bool)

(declare-fun b!4832087 () Bool)

(assert (= bs!1166637 (and b!4832087 b!4832067)))

(declare-fun lambda!238336 () Int)

(assert (=> bs!1166637 (= (= (Cons!55070 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))))) (= lambda!238336 lambda!238331))))

(declare-fun bs!1166638 () Bool)

(assert (= bs!1166638 (and b!4832087 b!4832070)))

(assert (=> bs!1166638 (= (= (Cons!55070 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))))) (Cons!55070 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))))) (= lambda!238336 lambda!238332))))

(declare-fun bs!1166639 () Bool)

(assert (= bs!1166639 (and b!4832087 b!4832084)))

(assert (=> bs!1166639 (= (= (Cons!55070 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))))) (= lambda!238336 lambda!238335))))

(declare-fun bs!1166640 () Bool)

(assert (= bs!1166640 (and b!4832087 b!4831994)))

(assert (=> bs!1166640 (= (= (Cons!55070 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))))) (toList!7556 lt!1977452)) (= lambda!238336 lambda!238309))))

(declare-fun bs!1166641 () Bool)

(assert (= bs!1166641 (and b!4832087 b!4831980)))

(assert (=> bs!1166641 (= (= (Cons!55070 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))))) (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (= lambda!238336 lambda!238302))))

(declare-fun bs!1166642 () Bool)

(assert (= bs!1166642 (and b!4832087 b!4832068)))

(assert (=> bs!1166642 (= (= (Cons!55070 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))))) (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (= lambda!238336 lambda!238333))))

(declare-fun bs!1166643 () Bool)

(assert (= bs!1166643 (and b!4832087 b!4831989)))

(assert (=> bs!1166643 (= (= (Cons!55070 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))))) (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (= lambda!238336 lambda!238307))))

(declare-fun bs!1166644 () Bool)

(assert (= bs!1166644 (and b!4832087 b!4832033)))

(assert (=> bs!1166644 (= (= (Cons!55070 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))))) (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (= lambda!238336 lambda!238321))))

(assert (=> b!4832087 true))

(declare-fun bs!1166645 () Bool)

(declare-fun b!4832085 () Bool)

(assert (= bs!1166645 (and b!4832085 b!4832067)))

(declare-fun lambda!238337 () Int)

(assert (=> bs!1166645 (= (= (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))))) (= lambda!238337 lambda!238331))))

(declare-fun bs!1166646 () Bool)

(assert (= bs!1166646 (and b!4832085 b!4832070)))

(assert (=> bs!1166646 (= (= (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))) (Cons!55070 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))))) (= lambda!238337 lambda!238332))))

(declare-fun bs!1166647 () Bool)

(assert (= bs!1166647 (and b!4832085 b!4832084)))

(assert (=> bs!1166647 (= (= (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))))) (= lambda!238337 lambda!238335))))

(declare-fun bs!1166648 () Bool)

(assert (= bs!1166648 (and b!4832085 b!4832087)))

(assert (=> bs!1166648 (= (= (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))) (Cons!55070 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))))) (= lambda!238337 lambda!238336))))

(declare-fun bs!1166649 () Bool)

(assert (= bs!1166649 (and b!4832085 b!4831994)))

(assert (=> bs!1166649 (= (= (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))) (toList!7556 lt!1977452)) (= lambda!238337 lambda!238309))))

(declare-fun bs!1166650 () Bool)

(assert (= bs!1166650 (and b!4832085 b!4831980)))

(assert (=> bs!1166650 (= lambda!238337 lambda!238302)))

(declare-fun bs!1166651 () Bool)

(assert (= bs!1166651 (and b!4832085 b!4832068)))

(assert (=> bs!1166651 (= (= (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))) (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (= lambda!238337 lambda!238333))))

(declare-fun bs!1166652 () Bool)

(assert (= bs!1166652 (and b!4832085 b!4831989)))

(assert (=> bs!1166652 (= (= (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))) (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (= lambda!238337 lambda!238307))))

(declare-fun bs!1166653 () Bool)

(assert (= bs!1166653 (and b!4832085 b!4832033)))

(assert (=> bs!1166653 (= (= (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))) (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (= lambda!238337 lambda!238321))))

(assert (=> b!4832085 true))

(declare-fun bs!1166654 () Bool)

(declare-fun b!4832081 () Bool)

(assert (= bs!1166654 (and b!4832081 b!4832064)))

(declare-fun lambda!238338 () Int)

(assert (=> bs!1166654 (= lambda!238338 lambda!238334)))

(declare-fun bs!1166655 () Bool)

(assert (= bs!1166655 (and b!4832081 b!4831981)))

(assert (=> bs!1166655 (= lambda!238338 lambda!238303)))

(declare-fun bs!1166656 () Bool)

(assert (= bs!1166656 (and b!4832081 b!4832034)))

(assert (=> bs!1166656 (= lambda!238338 lambda!238322)))

(declare-fun bs!1166657 () Bool)

(assert (= bs!1166657 (and b!4832081 b!4831995)))

(assert (=> bs!1166657 (= lambda!238338 lambda!238310)))

(declare-fun bs!1166658 () Bool)

(assert (= bs!1166658 (and b!4832081 b!4831990)))

(assert (=> bs!1166658 (= lambda!238338 lambda!238308)))

(declare-fun d!1549323 () Bool)

(declare-fun e!3019540 () Bool)

(assert (=> d!1549323 e!3019540))

(declare-fun res!2058221 () Bool)

(assert (=> d!1549323 (=> (not res!2058221) (not e!3019540))))

(declare-fun lt!1977933 () List!55198)

(assert (=> d!1549323 (= res!2058221 (noDuplicate!977 lt!1977933))))

(declare-fun e!3019537 () List!55198)

(assert (=> d!1549323 (= lt!1977933 e!3019537)))

(declare-fun c!823371 () Bool)

(assert (=> d!1549323 (= c!823371 (is-Cons!55070 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))))))

(assert (=> d!1549323 (invariantList!1829 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))))))

(assert (=> d!1549323 (= (getKeysList!1175 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) lt!1977933)))

(declare-fun b!4832079 () Bool)

(assert (=> b!4832079 (= e!3019537 Nil!55074)))

(declare-fun b!4832080 () Bool)

(assert (=> b!4832080 false))

(declare-fun e!3019539 () Unit!143893)

(declare-fun Unit!144010 () Unit!143893)

(assert (=> b!4832080 (= e!3019539 Unit!144010)))

(assert (=> b!4832081 (= e!3019540 (= (content!9836 lt!1977933) (content!9836 (map!12617 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))) lambda!238338))))))

(declare-fun b!4832082 () Bool)

(declare-fun res!2058220 () Bool)

(assert (=> b!4832082 (=> (not res!2058220) (not e!3019540))))

(assert (=> b!4832082 (= res!2058220 (= (length!810 lt!1977933) (length!811 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))))))))

(declare-fun b!4832083 () Bool)

(declare-fun Unit!144011 () Unit!143893)

(assert (=> b!4832083 (= e!3019539 Unit!144011)))

(assert (=> b!4832084 false))

(declare-fun lt!1977935 () Unit!143893)

(assert (=> b!4832084 (= lt!1977935 (forallContained!4419 (getKeysList!1175 (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))))) lambda!238335 (_1!32473 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))))))))

(declare-fun e!3019538 () Unit!143893)

(declare-fun Unit!144012 () Unit!143893)

(assert (=> b!4832084 (= e!3019538 Unit!144012)))

(declare-fun res!2058222 () Bool)

(assert (=> b!4832085 (=> (not res!2058222) (not e!3019540))))

(assert (=> b!4832085 (= res!2058222 (forall!12685 lt!1977933 lambda!238337))))

(declare-fun b!4832086 () Bool)

(declare-fun Unit!144013 () Unit!143893)

(assert (=> b!4832086 (= e!3019538 Unit!144013)))

(assert (=> b!4832087 (= e!3019537 (Cons!55074 (_1!32473 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))))) (getKeysList!1175 (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))))))))

(declare-fun c!823372 () Bool)

(assert (=> b!4832087 (= c!823372 (containsKey!4440 (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (_1!32473 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))))))))

(declare-fun lt!1977937 () Unit!143893)

(assert (=> b!4832087 (= lt!1977937 e!3019539)))

(declare-fun c!823373 () Bool)

(assert (=> b!4832087 (= c!823373 (contains!18886 (getKeysList!1175 (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))))) (_1!32473 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))))))))

(declare-fun lt!1977934 () Unit!143893)

(assert (=> b!4832087 (= lt!1977934 e!3019538)))

(declare-fun lt!1977936 () List!55198)

(assert (=> b!4832087 (= lt!1977936 (getKeysList!1175 (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))))))))

(declare-fun lt!1977938 () Unit!143893)

(assert (=> b!4832087 (= lt!1977938 (lemmaForallContainsAddHeadPreserves!392 (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) lt!1977936 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))))))))

(assert (=> b!4832087 (forall!12685 lt!1977936 lambda!238336)))

(declare-fun lt!1977932 () Unit!143893)

(assert (=> b!4832087 (= lt!1977932 lt!1977938)))

(assert (= (and d!1549323 c!823371) b!4832087))

(assert (= (and d!1549323 (not c!823371)) b!4832079))

(assert (= (and b!4832087 c!823372) b!4832080))

(assert (= (and b!4832087 (not c!823372)) b!4832083))

(assert (= (and b!4832087 c!823373) b!4832084))

(assert (= (and b!4832087 (not c!823373)) b!4832086))

(assert (= (and d!1549323 res!2058221) b!4832082))

(assert (= (and b!4832082 res!2058220) b!4832085))

(assert (= (and b!4832085 res!2058222) b!4832081))

(declare-fun m!5826138 () Bool)

(assert (=> b!4832085 m!5826138))

(declare-fun m!5826140 () Bool)

(assert (=> d!1549323 m!5826140))

(assert (=> d!1549323 m!5825800))

(declare-fun m!5826142 () Bool)

(assert (=> b!4832084 m!5826142))

(assert (=> b!4832084 m!5826142))

(declare-fun m!5826144 () Bool)

(assert (=> b!4832084 m!5826144))

(declare-fun m!5826146 () Bool)

(assert (=> b!4832081 m!5826146))

(declare-fun m!5826148 () Bool)

(assert (=> b!4832081 m!5826148))

(assert (=> b!4832081 m!5826148))

(declare-fun m!5826150 () Bool)

(assert (=> b!4832081 m!5826150))

(declare-fun m!5826152 () Bool)

(assert (=> b!4832082 m!5826152))

(assert (=> b!4832082 m!5825882))

(declare-fun m!5826154 () Bool)

(assert (=> b!4832087 m!5826154))

(declare-fun m!5826156 () Bool)

(assert (=> b!4832087 m!5826156))

(assert (=> b!4832087 m!5826142))

(declare-fun m!5826158 () Bool)

(assert (=> b!4832087 m!5826158))

(assert (=> b!4832087 m!5826142))

(declare-fun m!5826160 () Bool)

(assert (=> b!4832087 m!5826160))

(assert (=> b!4831657 d!1549323))

(assert (=> d!1549111 d!1549319))

(assert (=> d!1549111 d!1549113))

(declare-fun d!1549327 () Bool)

(declare-fun e!3019549 () Bool)

(assert (=> d!1549327 (= (contains!18883 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452) key!5594) e!3019549)))

(declare-fun res!2058231 () Bool)

(assert (=> d!1549327 (=> res!2058231 e!3019549)))

(assert (=> d!1549327 (= res!2058231 (containsKey!4438 (_2!32474 (h!61505 (toList!7555 lm!2325))) key!5594))))

(assert (=> d!1549327 true))

(declare-fun _$29!856 () Unit!143893)

(assert (=> d!1549327 (= (choose!35272 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452 key!5594) _$29!856)))

(declare-fun b!4832096 () Bool)

(assert (=> b!4832096 (= e!3019549 (contains!18883 lt!1977452 key!5594))))

(assert (= (and d!1549327 (not res!2058231)) b!4832096))

(assert (=> d!1549327 m!5825200))

(assert (=> d!1549327 m!5825200))

(assert (=> d!1549327 m!5825206))

(assert (=> d!1549327 m!5825208))

(assert (=> b!4832096 m!5825186))

(assert (=> d!1549111 d!1549327))

(assert (=> d!1549111 d!1549117))

(assert (=> d!1549111 d!1549107))

(declare-fun d!1549331 () Bool)

(declare-fun res!2058232 () Bool)

(declare-fun e!3019550 () Bool)

(assert (=> d!1549331 (=> res!2058232 e!3019550)))

(assert (=> d!1549331 (= res!2058232 (is-Nil!55071 (t!362691 (toList!7555 lm!2325))))))

(assert (=> d!1549331 (= (forall!12681 (t!362691 (toList!7555 lm!2325)) lambda!238185) e!3019550)))

(declare-fun b!4832097 () Bool)

(declare-fun e!3019551 () Bool)

(assert (=> b!4832097 (= e!3019550 e!3019551)))

(declare-fun res!2058233 () Bool)

(assert (=> b!4832097 (=> (not res!2058233) (not e!3019551))))

(assert (=> b!4832097 (= res!2058233 (dynLambda!22250 lambda!238185 (h!61505 (t!362691 (toList!7555 lm!2325)))))))

(declare-fun b!4832098 () Bool)

(assert (=> b!4832098 (= e!3019551 (forall!12681 (t!362691 (t!362691 (toList!7555 lm!2325))) lambda!238185))))

(assert (= (and d!1549331 (not res!2058232)) b!4832097))

(assert (= (and b!4832097 res!2058233) b!4832098))

(declare-fun b_lambda!190835 () Bool)

(assert (=> (not b_lambda!190835) (not b!4832097)))

(declare-fun m!5826166 () Bool)

(assert (=> b!4832097 m!5826166))

(declare-fun m!5826168 () Bool)

(assert (=> b!4832098 m!5826168))

(assert (=> b!4831688 d!1549331))

(assert (=> b!4831655 d!1549289))

(declare-fun d!1549333 () Bool)

(assert (=> d!1549333 (containsKey!4440 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))) key!5594)))

(declare-fun lt!1977939 () Unit!143893)

(assert (=> d!1549333 (= lt!1977939 (choose!35289 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))) key!5594))))

(assert (=> d!1549333 (invariantList!1829 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))))))

(assert (=> d!1549333 (= (lemmaInGetKeysListThenContainsKey!1175 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))) key!5594) lt!1977939)))

(declare-fun bs!1166659 () Bool)

(assert (= bs!1166659 d!1549333))

(assert (=> bs!1166659 m!5825306))

(declare-fun m!5826170 () Bool)

(assert (=> bs!1166659 m!5826170))

(assert (=> bs!1166659 m!5825800))

(assert (=> b!4831655 d!1549333))

(declare-fun d!1549335 () Bool)

(declare-fun res!2058234 () Bool)

(declare-fun e!3019552 () Bool)

(assert (=> d!1549335 (=> res!2058234 e!3019552)))

(assert (=> d!1549335 (= res!2058234 (is-Nil!55070 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))

(assert (=> d!1549335 (= (forall!12683 (_2!32474 (h!61505 (toList!7555 lm!2325))) lambda!238241) e!3019552)))

(declare-fun b!4832099 () Bool)

(declare-fun e!3019553 () Bool)

(assert (=> b!4832099 (= e!3019552 e!3019553)))

(declare-fun res!2058235 () Bool)

(assert (=> b!4832099 (=> (not res!2058235) (not e!3019553))))

(assert (=> b!4832099 (= res!2058235 (dynLambda!22252 lambda!238241 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))))))

(declare-fun b!4832100 () Bool)

(assert (=> b!4832100 (= e!3019553 (forall!12683 (t!362690 (_2!32474 (h!61505 (toList!7555 lm!2325)))) lambda!238241))))

(assert (= (and d!1549335 (not res!2058234)) b!4832099))

(assert (= (and b!4832099 res!2058235) b!4832100))

(declare-fun b_lambda!190837 () Bool)

(assert (=> (not b_lambda!190837) (not b!4832099)))

(declare-fun m!5826172 () Bool)

(assert (=> b!4832099 m!5826172))

(declare-fun m!5826174 () Bool)

(assert (=> b!4832100 m!5826174))

(assert (=> d!1549117 d!1549335))

(assert (=> d!1549117 d!1549319))

(assert (=> b!4831790 d!1549307))

(assert (=> b!4831790 d!1549309))

(declare-fun d!1549337 () Bool)

(declare-fun res!2058243 () Bool)

(declare-fun e!3019561 () Bool)

(assert (=> d!1549337 (=> res!2058243 e!3019561)))

(assert (=> d!1549337 (= res!2058243 (or (is-Nil!55071 (toList!7555 lm!2325)) (is-Nil!55071 (t!362691 (toList!7555 lm!2325)))))))

(assert (=> d!1549337 (= (isStrictlySorted!1004 (toList!7555 lm!2325)) e!3019561)))

(declare-fun b!4832108 () Bool)

(declare-fun e!3019562 () Bool)

(assert (=> b!4832108 (= e!3019561 e!3019562)))

(declare-fun res!2058244 () Bool)

(assert (=> b!4832108 (=> (not res!2058244) (not e!3019562))))

(assert (=> b!4832108 (= res!2058244 (bvslt (_1!32474 (h!61505 (toList!7555 lm!2325))) (_1!32474 (h!61505 (t!362691 (toList!7555 lm!2325))))))))

(declare-fun b!4832109 () Bool)

(assert (=> b!4832109 (= e!3019562 (isStrictlySorted!1004 (t!362691 (toList!7555 lm!2325))))))

(assert (= (and d!1549337 (not res!2058243)) b!4832108))

(assert (= (and b!4832108 res!2058244) b!4832109))

(declare-fun m!5826176 () Bool)

(assert (=> b!4832109 m!5826176))

(assert (=> d!1549093 d!1549337))

(assert (=> b!4831644 d!1549261))

(declare-fun d!1549341 () Bool)

(declare-fun lt!1977940 () Bool)

(assert (=> d!1549341 (= lt!1977940 (set.member key!5594 (content!9836 e!3019259)))))

(declare-fun e!3019564 () Bool)

(assert (=> d!1549341 (= lt!1977940 e!3019564)))

(declare-fun res!2058246 () Bool)

(assert (=> d!1549341 (=> (not res!2058246) (not e!3019564))))

(assert (=> d!1549341 (= res!2058246 (is-Cons!55074 e!3019259))))

(assert (=> d!1549341 (= (contains!18886 e!3019259 key!5594) lt!1977940)))

(declare-fun b!4832110 () Bool)

(declare-fun e!3019563 () Bool)

(assert (=> b!4832110 (= e!3019564 e!3019563)))

(declare-fun res!2058245 () Bool)

(assert (=> b!4832110 (=> res!2058245 e!3019563)))

(assert (=> b!4832110 (= res!2058245 (= (h!61508 e!3019259) key!5594))))

(declare-fun b!4832111 () Bool)

(assert (=> b!4832111 (= e!3019563 (contains!18886 (t!362694 e!3019259) key!5594))))

(assert (= (and d!1549341 res!2058246) b!4832110))

(assert (= (and b!4832110 (not res!2058245)) b!4832111))

(declare-fun m!5826178 () Bool)

(assert (=> d!1549341 m!5826178))

(declare-fun m!5826180 () Bool)

(assert (=> d!1549341 m!5826180))

(declare-fun m!5826182 () Bool)

(assert (=> b!4832111 m!5826182))

(assert (=> bm!336700 d!1549341))

(assert (=> b!4831718 d!1549295))

(assert (=> b!4831718 d!1549297))

(assert (=> b!4831717 d!1549281))

(assert (=> b!4831717 d!1549283))

(assert (=> b!4831642 d!1549259))

(assert (=> b!4831642 d!1549261))

(declare-fun d!1549343 () Bool)

(assert (=> d!1549343 (isDefined!10644 (getValueByKey!2656 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))) key!5594))))

(declare-fun lt!1977941 () Unit!143893)

(assert (=> d!1549343 (= lt!1977941 (choose!35280 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))) key!5594))))

(assert (=> d!1549343 (invariantList!1829 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))))))

(assert (=> d!1549343 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2441 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))) key!5594) lt!1977941)))

(declare-fun bs!1166660 () Bool)

(assert (= bs!1166660 d!1549343))

(assert (=> bs!1166660 m!5825314))

(assert (=> bs!1166660 m!5825314))

(assert (=> bs!1166660 m!5825316))

(declare-fun m!5826184 () Bool)

(assert (=> bs!1166660 m!5826184))

(assert (=> bs!1166660 m!5826066))

(assert (=> b!4831658 d!1549343))

(assert (=> b!4831658 d!1549271))

(assert (=> b!4831658 d!1549273))

(declare-fun d!1549345 () Bool)

(assert (=> d!1549345 (contains!18886 (getKeysList!1175 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) key!5594)))

(declare-fun lt!1977942 () Unit!143893)

(assert (=> d!1549345 (= lt!1977942 (choose!35281 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))) key!5594))))

(assert (=> d!1549345 (invariantList!1829 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))))))

(assert (=> d!1549345 (= (lemmaInListThenGetKeysListContains!1170 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))) key!5594) lt!1977942)))

(declare-fun bs!1166661 () Bool)

(assert (= bs!1166661 d!1549345))

(assert (=> bs!1166661 m!5825318))

(assert (=> bs!1166661 m!5825318))

(declare-fun m!5826186 () Bool)

(assert (=> bs!1166661 m!5826186))

(declare-fun m!5826188 () Bool)

(assert (=> bs!1166661 m!5826188))

(assert (=> bs!1166661 m!5826066))

(assert (=> b!4831658 d!1549345))

(declare-fun d!1549347 () Bool)

(declare-fun res!2058247 () Bool)

(declare-fun e!3019565 () Bool)

(assert (=> d!1549347 (=> res!2058247 e!3019565)))

(assert (=> d!1549347 (= res!2058247 (is-Nil!55071 (toList!7555 lt!1977454)))))

(assert (=> d!1549347 (= (forall!12681 (toList!7555 lt!1977454) lambda!238247) e!3019565)))

(declare-fun b!4832112 () Bool)

(declare-fun e!3019566 () Bool)

(assert (=> b!4832112 (= e!3019565 e!3019566)))

(declare-fun res!2058248 () Bool)

(assert (=> b!4832112 (=> (not res!2058248) (not e!3019566))))

(assert (=> b!4832112 (= res!2058248 (dynLambda!22250 lambda!238247 (h!61505 (toList!7555 lt!1977454))))))

(declare-fun b!4832113 () Bool)

(assert (=> b!4832113 (= e!3019566 (forall!12681 (t!362691 (toList!7555 lt!1977454)) lambda!238247))))

(assert (= (and d!1549347 (not res!2058247)) b!4832112))

(assert (= (and b!4832112 res!2058248) b!4832113))

(declare-fun b_lambda!190839 () Bool)

(assert (=> (not b_lambda!190839) (not b!4832112)))

(declare-fun m!5826190 () Bool)

(assert (=> b!4832112 m!5826190))

(declare-fun m!5826192 () Bool)

(assert (=> b!4832113 m!5826192))

(assert (=> d!1549133 d!1549347))

(declare-fun bs!1166662 () Bool)

(declare-fun b!4832119 () Bool)

(assert (= bs!1166662 (and b!4832119 b!4832067)))

(declare-fun lambda!238339 () Int)

(assert (=> bs!1166662 (= (= (t!362690 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))))) (= lambda!238339 lambda!238331))))

(declare-fun bs!1166663 () Bool)

(assert (= bs!1166663 (and b!4832119 b!4832070)))

(assert (=> bs!1166663 (= (= (t!362690 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (Cons!55070 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))))) (= lambda!238339 lambda!238332))))

(declare-fun bs!1166664 () Bool)

(assert (= bs!1166664 (and b!4832119 b!4832084)))

(assert (=> bs!1166664 (= (= (t!362690 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))))) (= lambda!238339 lambda!238335))))

(declare-fun bs!1166665 () Bool)

(assert (= bs!1166665 (and b!4832119 b!4832087)))

(assert (=> bs!1166665 (= (= (t!362690 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (Cons!55070 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))))) (= lambda!238339 lambda!238336))))

(declare-fun bs!1166666 () Bool)

(assert (= bs!1166666 (and b!4832119 b!4831994)))

(assert (=> bs!1166666 (= (= (t!362690 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (toList!7556 lt!1977452)) (= lambda!238339 lambda!238309))))

(declare-fun bs!1166667 () Bool)

(assert (= bs!1166667 (and b!4832119 b!4832085)))

(assert (=> bs!1166667 (= (= (t!362690 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (= lambda!238339 lambda!238337))))

(declare-fun bs!1166668 () Bool)

(assert (= bs!1166668 (and b!4832119 b!4831980)))

(assert (=> bs!1166668 (= (= (t!362690 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (= lambda!238339 lambda!238302))))

(declare-fun bs!1166669 () Bool)

(assert (= bs!1166669 (and b!4832119 b!4832068)))

(assert (=> bs!1166669 (= (= (t!362690 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (= lambda!238339 lambda!238333))))

(declare-fun bs!1166670 () Bool)

(assert (= bs!1166670 (and b!4832119 b!4831989)))

(assert (=> bs!1166670 (= (= (t!362690 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (= lambda!238339 lambda!238307))))

(declare-fun bs!1166671 () Bool)

(assert (= bs!1166671 (and b!4832119 b!4832033)))

(assert (=> bs!1166671 (= (= (t!362690 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (= lambda!238339 lambda!238321))))

(assert (=> b!4832119 true))

(declare-fun bs!1166672 () Bool)

(declare-fun b!4832122 () Bool)

(assert (= bs!1166672 (and b!4832122 b!4832067)))

(declare-fun lambda!238341 () Int)

(assert (=> bs!1166672 (= (= (Cons!55070 (h!61504 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (t!362690 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))))) (= lambda!238341 lambda!238331))))

(declare-fun bs!1166673 () Bool)

(assert (= bs!1166673 (and b!4832122 b!4832070)))

(assert (=> bs!1166673 (= (= (Cons!55070 (h!61504 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (t!362690 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)))) (Cons!55070 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))))) (= lambda!238341 lambda!238332))))

(declare-fun bs!1166674 () Bool)

(assert (= bs!1166674 (and b!4832122 b!4832084)))

(assert (=> bs!1166674 (= (= (Cons!55070 (h!61504 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (t!362690 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))))) (= lambda!238341 lambda!238335))))

(declare-fun bs!1166675 () Bool)

(assert (= bs!1166675 (and b!4832122 b!4832087)))

(assert (=> bs!1166675 (= (= (Cons!55070 (h!61504 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (t!362690 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)))) (Cons!55070 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))))) (= lambda!238341 lambda!238336))))

(declare-fun bs!1166676 () Bool)

(assert (= bs!1166676 (and b!4832122 b!4831994)))

(assert (=> bs!1166676 (= (= (Cons!55070 (h!61504 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (t!362690 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)))) (toList!7556 lt!1977452)) (= lambda!238341 lambda!238309))))

(declare-fun bs!1166677 () Bool)

(assert (= bs!1166677 (and b!4832122 b!4832085)))

(assert (=> bs!1166677 (= (= (Cons!55070 (h!61504 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (t!362690 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)))) (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (= lambda!238341 lambda!238337))))

(declare-fun bs!1166678 () Bool)

(assert (= bs!1166678 (and b!4832122 b!4831980)))

(assert (=> bs!1166678 (= (= (Cons!55070 (h!61504 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (t!362690 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)))) (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (= lambda!238341 lambda!238302))))

(declare-fun bs!1166679 () Bool)

(assert (= bs!1166679 (and b!4832122 b!4832119)))

(assert (=> bs!1166679 (= (= (Cons!55070 (h!61504 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (t!362690 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)))) (t!362690 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)))) (= lambda!238341 lambda!238339))))

(declare-fun bs!1166680 () Bool)

(assert (= bs!1166680 (and b!4832122 b!4832068)))

(assert (=> bs!1166680 (= (= (Cons!55070 (h!61504 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (t!362690 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)))) (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (= lambda!238341 lambda!238333))))

(declare-fun bs!1166681 () Bool)

(assert (= bs!1166681 (and b!4832122 b!4831989)))

(assert (=> bs!1166681 (= (= (Cons!55070 (h!61504 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (t!362690 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)))) (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (= lambda!238341 lambda!238307))))

(declare-fun bs!1166682 () Bool)

(assert (= bs!1166682 (and b!4832122 b!4832033)))

(assert (=> bs!1166682 (= (= (Cons!55070 (h!61504 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (t!362690 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)))) (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (= lambda!238341 lambda!238321))))

(assert (=> b!4832122 true))

(declare-fun bs!1166683 () Bool)

(declare-fun b!4832120 () Bool)

(assert (= bs!1166683 (and b!4832120 b!4832067)))

(declare-fun lambda!238345 () Int)

(assert (=> bs!1166683 (= (= (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))))) (= lambda!238345 lambda!238331))))

(declare-fun bs!1166684 () Bool)

(assert (= bs!1166684 (and b!4832120 b!4832070)))

(assert (=> bs!1166684 (= (= (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) (Cons!55070 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))))) (= lambda!238345 lambda!238332))))

(declare-fun bs!1166685 () Bool)

(assert (= bs!1166685 (and b!4832120 b!4832084)))

(assert (=> bs!1166685 (= (= (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))))) (= lambda!238345 lambda!238335))))

(declare-fun bs!1166686 () Bool)

(assert (= bs!1166686 (and b!4832120 b!4832087)))

(assert (=> bs!1166686 (= (= (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) (Cons!55070 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))))) (= lambda!238345 lambda!238336))))

(declare-fun bs!1166687 () Bool)

(assert (= bs!1166687 (and b!4832120 b!4831994)))

(assert (=> bs!1166687 (= (= (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) (toList!7556 lt!1977452)) (= lambda!238345 lambda!238309))))

(declare-fun bs!1166688 () Bool)

(assert (= bs!1166688 (and b!4832120 b!4832085)))

(assert (=> bs!1166688 (= (= (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (= lambda!238345 lambda!238337))))

(declare-fun bs!1166689 () Bool)

(assert (= bs!1166689 (and b!4832120 b!4831980)))

(assert (=> bs!1166689 (= (= (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (= lambda!238345 lambda!238302))))

(declare-fun bs!1166690 () Bool)

(assert (= bs!1166690 (and b!4832120 b!4832122)))

(assert (=> bs!1166690 (= (= (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) (Cons!55070 (h!61504 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (t!362690 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))))) (= lambda!238345 lambda!238341))))

(declare-fun bs!1166691 () Bool)

(assert (= bs!1166691 (and b!4832120 b!4832119)))

(assert (=> bs!1166691 (= (= (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) (t!362690 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)))) (= lambda!238345 lambda!238339))))

(declare-fun bs!1166692 () Bool)

(assert (= bs!1166692 (and b!4832120 b!4832068)))

(assert (=> bs!1166692 (= (= (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (= lambda!238345 lambda!238333))))

(declare-fun bs!1166693 () Bool)

(assert (= bs!1166693 (and b!4832120 b!4831989)))

(assert (=> bs!1166693 (= (= (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (= lambda!238345 lambda!238307))))

(declare-fun bs!1166694 () Bool)

(assert (= bs!1166694 (and b!4832120 b!4832033)))

(assert (=> bs!1166694 (= lambda!238345 lambda!238321)))

(assert (=> b!4832120 true))

(declare-fun bs!1166695 () Bool)

(declare-fun b!4832116 () Bool)

(assert (= bs!1166695 (and b!4832116 b!4832064)))

(declare-fun lambda!238346 () Int)

(assert (=> bs!1166695 (= lambda!238346 lambda!238334)))

(declare-fun bs!1166696 () Bool)

(assert (= bs!1166696 (and b!4832116 b!4831981)))

(assert (=> bs!1166696 (= lambda!238346 lambda!238303)))

(declare-fun bs!1166697 () Bool)

(assert (= bs!1166697 (and b!4832116 b!4832034)))

(assert (=> bs!1166697 (= lambda!238346 lambda!238322)))

(declare-fun bs!1166698 () Bool)

(assert (= bs!1166698 (and b!4832116 b!4831995)))

(assert (=> bs!1166698 (= lambda!238346 lambda!238310)))

(declare-fun bs!1166699 () Bool)

(assert (= bs!1166699 (and b!4832116 b!4832081)))

(assert (=> bs!1166699 (= lambda!238346 lambda!238338)))

(declare-fun bs!1166700 () Bool)

(assert (= bs!1166700 (and b!4832116 b!4831990)))

(assert (=> bs!1166700 (= lambda!238346 lambda!238308)))

(declare-fun d!1549349 () Bool)

(declare-fun e!3019570 () Bool)

(assert (=> d!1549349 e!3019570))

(declare-fun res!2058250 () Bool)

(assert (=> d!1549349 (=> (not res!2058250) (not e!3019570))))

(declare-fun lt!1977944 () List!55198)

(assert (=> d!1549349 (= res!2058250 (noDuplicate!977 lt!1977944))))

(declare-fun e!3019567 () List!55198)

(assert (=> d!1549349 (= lt!1977944 e!3019567)))

(declare-fun c!823374 () Bool)

(assert (=> d!1549349 (= c!823374 (is-Cons!55070 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))))))

(assert (=> d!1549349 (invariantList!1829 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)))))

(assert (=> d!1549349 (= (getKeysList!1175 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) lt!1977944)))

(declare-fun b!4832114 () Bool)

(assert (=> b!4832114 (= e!3019567 Nil!55074)))

(declare-fun b!4832115 () Bool)

(assert (=> b!4832115 false))

(declare-fun e!3019569 () Unit!143893)

(declare-fun Unit!144025 () Unit!143893)

(assert (=> b!4832115 (= e!3019569 Unit!144025)))

(assert (=> b!4832116 (= e!3019570 (= (content!9836 lt!1977944) (content!9836 (map!12617 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) lambda!238346))))))

(declare-fun b!4832117 () Bool)

(declare-fun res!2058249 () Bool)

(assert (=> b!4832117 (=> (not res!2058249) (not e!3019570))))

(assert (=> b!4832117 (= res!2058249 (= (length!810 lt!1977944) (length!811 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)))))))

(declare-fun b!4832118 () Bool)

(declare-fun Unit!144026 () Unit!143893)

(assert (=> b!4832118 (= e!3019569 Unit!144026)))

(assert (=> b!4832119 false))

(declare-fun lt!1977946 () Unit!143893)

(assert (=> b!4832119 (= lt!1977946 (forallContained!4419 (getKeysList!1175 (t!362690 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)))) lambda!238339 (_1!32473 (h!61504 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))))))))

(declare-fun e!3019568 () Unit!143893)

(declare-fun Unit!144027 () Unit!143893)

(assert (=> b!4832119 (= e!3019568 Unit!144027)))

(declare-fun res!2058251 () Bool)

(assert (=> b!4832120 (=> (not res!2058251) (not e!3019570))))

(assert (=> b!4832120 (= res!2058251 (forall!12685 lt!1977944 lambda!238345))))

(declare-fun b!4832121 () Bool)

(declare-fun Unit!144028 () Unit!143893)

(assert (=> b!4832121 (= e!3019568 Unit!144028)))

(assert (=> b!4832122 (= e!3019567 (Cons!55074 (_1!32473 (h!61504 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)))) (getKeysList!1175 (t!362690 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))))))))

(declare-fun c!823375 () Bool)

(assert (=> b!4832122 (= c!823375 (containsKey!4440 (t!362690 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (_1!32473 (h!61504 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))))))))

(declare-fun lt!1977948 () Unit!143893)

(assert (=> b!4832122 (= lt!1977948 e!3019569)))

(declare-fun c!823376 () Bool)

(assert (=> b!4832122 (= c!823376 (contains!18886 (getKeysList!1175 (t!362690 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)))) (_1!32473 (h!61504 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))))))))

(declare-fun lt!1977945 () Unit!143893)

(assert (=> b!4832122 (= lt!1977945 e!3019568)))

(declare-fun lt!1977947 () List!55198)

(assert (=> b!4832122 (= lt!1977947 (getKeysList!1175 (t!362690 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)))))))

(declare-fun lt!1977949 () Unit!143893)

(assert (=> b!4832122 (= lt!1977949 (lemmaForallContainsAddHeadPreserves!392 (t!362690 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) lt!1977947 (h!61504 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)))))))

(assert (=> b!4832122 (forall!12685 lt!1977947 lambda!238341)))

(declare-fun lt!1977943 () Unit!143893)

(assert (=> b!4832122 (= lt!1977943 lt!1977949)))

(assert (= (and d!1549349 c!823374) b!4832122))

(assert (= (and d!1549349 (not c!823374)) b!4832114))

(assert (= (and b!4832122 c!823375) b!4832115))

(assert (= (and b!4832122 (not c!823375)) b!4832118))

(assert (= (and b!4832122 c!823376) b!4832119))

(assert (= (and b!4832122 (not c!823376)) b!4832121))

(assert (= (and d!1549349 res!2058250) b!4832117))

(assert (= (and b!4832117 res!2058249) b!4832120))

(assert (= (and b!4832120 res!2058251) b!4832116))

(declare-fun m!5826208 () Bool)

(assert (=> b!4832120 m!5826208))

(declare-fun m!5826210 () Bool)

(assert (=> d!1549349 m!5826210))

(assert (=> d!1549349 m!5826046))

(declare-fun m!5826212 () Bool)

(assert (=> b!4832119 m!5826212))

(assert (=> b!4832119 m!5826212))

(declare-fun m!5826214 () Bool)

(assert (=> b!4832119 m!5826214))

(declare-fun m!5826216 () Bool)

(assert (=> b!4832116 m!5826216))

(declare-fun m!5826218 () Bool)

(assert (=> b!4832116 m!5826218))

(assert (=> b!4832116 m!5826218))

(declare-fun m!5826220 () Bool)

(assert (=> b!4832116 m!5826220))

(declare-fun m!5826222 () Bool)

(assert (=> b!4832117 m!5826222))

(assert (=> b!4832117 m!5826078))

(declare-fun m!5826224 () Bool)

(assert (=> b!4832122 m!5826224))

(declare-fun m!5826226 () Bool)

(assert (=> b!4832122 m!5826226))

(assert (=> b!4832122 m!5826212))

(declare-fun m!5826228 () Bool)

(assert (=> b!4832122 m!5826228))

(assert (=> b!4832122 m!5826212))

(declare-fun m!5826230 () Bool)

(assert (=> b!4832122 m!5826230))

(assert (=> b!4831724 d!1549349))

(declare-fun d!1549353 () Bool)

(declare-fun res!2058261 () Bool)

(declare-fun e!3019574 () Bool)

(assert (=> d!1549353 (=> res!2058261 e!3019574)))

(assert (=> d!1549353 (= res!2058261 (is-Nil!55070 (ite c!823315 (toList!7556 lt!1977452) (_2!32474 (h!61505 (toList!7555 lm!2325))))))))

(assert (=> d!1549353 (= (forall!12683 (ite c!823315 (toList!7556 lt!1977452) (_2!32474 (h!61505 (toList!7555 lm!2325)))) (ite c!823315 lambda!238238 lambda!238240)) e!3019574)))

(declare-fun b!4832134 () Bool)

(declare-fun e!3019575 () Bool)

(assert (=> b!4832134 (= e!3019574 e!3019575)))

(declare-fun res!2058262 () Bool)

(assert (=> b!4832134 (=> (not res!2058262) (not e!3019575))))

(assert (=> b!4832134 (= res!2058262 (dynLambda!22252 (ite c!823315 lambda!238238 lambda!238240) (h!61504 (ite c!823315 (toList!7556 lt!1977452) (_2!32474 (h!61505 (toList!7555 lm!2325)))))))))

(declare-fun b!4832135 () Bool)

(assert (=> b!4832135 (= e!3019575 (forall!12683 (t!362690 (ite c!823315 (toList!7556 lt!1977452) (_2!32474 (h!61505 (toList!7555 lm!2325))))) (ite c!823315 lambda!238238 lambda!238240)))))

(assert (= (and d!1549353 (not res!2058261)) b!4832134))

(assert (= (and b!4832134 res!2058262) b!4832135))

(declare-fun b_lambda!190841 () Bool)

(assert (=> (not b_lambda!190841) (not b!4832134)))

(declare-fun m!5826232 () Bool)

(assert (=> b!4832134 m!5826232))

(declare-fun m!5826234 () Bool)

(assert (=> b!4832135 m!5826234))

(assert (=> bm!336712 d!1549353))

(declare-fun d!1549355 () Bool)

(declare-fun res!2058273 () Bool)

(declare-fun e!3019588 () Bool)

(assert (=> d!1549355 (=> res!2058273 e!3019588)))

(assert (=> d!1549355 (= res!2058273 (and (is-Cons!55071 (toList!7555 lm!2325)) (= (_1!32474 (h!61505 (toList!7555 lm!2325))) lt!1977450)))))

(assert (=> d!1549355 (= (containsKey!4441 (toList!7555 lm!2325) lt!1977450) e!3019588)))

(declare-fun b!4832150 () Bool)

(declare-fun e!3019589 () Bool)

(assert (=> b!4832150 (= e!3019588 e!3019589)))

(declare-fun res!2058274 () Bool)

(assert (=> b!4832150 (=> (not res!2058274) (not e!3019589))))

(assert (=> b!4832150 (= res!2058274 (and (or (not (is-Cons!55071 (toList!7555 lm!2325))) (bvsle (_1!32474 (h!61505 (toList!7555 lm!2325))) lt!1977450)) (is-Cons!55071 (toList!7555 lm!2325)) (bvslt (_1!32474 (h!61505 (toList!7555 lm!2325))) lt!1977450)))))

(declare-fun b!4832151 () Bool)

(assert (=> b!4832151 (= e!3019589 (containsKey!4441 (t!362691 (toList!7555 lm!2325)) lt!1977450))))

(assert (= (and d!1549355 (not res!2058273)) b!4832150))

(assert (= (and b!4832150 res!2058274) b!4832151))

(declare-fun m!5826242 () Bool)

(assert (=> b!4832151 m!5826242))

(assert (=> d!1549095 d!1549355))

(declare-fun bs!1166701 () Bool)

(declare-fun b!4832161 () Bool)

(assert (= bs!1166701 (and b!4832161 b!4832067)))

(declare-fun lambda!238349 () Int)

(assert (=> bs!1166701 (= (= (t!362690 (toList!7556 lt!1977452)) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))))) (= lambda!238349 lambda!238331))))

(declare-fun bs!1166702 () Bool)

(assert (= bs!1166702 (and b!4832161 b!4832070)))

(assert (=> bs!1166702 (= (= (t!362690 (toList!7556 lt!1977452)) (Cons!55070 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))))) (= lambda!238349 lambda!238332))))

(declare-fun bs!1166703 () Bool)

(assert (= bs!1166703 (and b!4832161 b!4832084)))

(assert (=> bs!1166703 (= (= (t!362690 (toList!7556 lt!1977452)) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))))) (= lambda!238349 lambda!238335))))

(declare-fun bs!1166704 () Bool)

(assert (= bs!1166704 (and b!4832161 b!4832087)))

(assert (=> bs!1166704 (= (= (t!362690 (toList!7556 lt!1977452)) (Cons!55070 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))))) (= lambda!238349 lambda!238336))))

(declare-fun bs!1166705 () Bool)

(assert (= bs!1166705 (and b!4832161 b!4831994)))

(assert (=> bs!1166705 (= (= (t!362690 (toList!7556 lt!1977452)) (toList!7556 lt!1977452)) (= lambda!238349 lambda!238309))))

(declare-fun bs!1166706 () Bool)

(assert (= bs!1166706 (and b!4832161 b!4832085)))

(assert (=> bs!1166706 (= (= (t!362690 (toList!7556 lt!1977452)) (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (= lambda!238349 lambda!238337))))

(declare-fun bs!1166707 () Bool)

(assert (= bs!1166707 (and b!4832161 b!4832120)))

(assert (=> bs!1166707 (= (= (t!362690 (toList!7556 lt!1977452)) (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (= lambda!238349 lambda!238345))))

(declare-fun bs!1166708 () Bool)

(assert (= bs!1166708 (and b!4832161 b!4831980)))

(assert (=> bs!1166708 (= (= (t!362690 (toList!7556 lt!1977452)) (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (= lambda!238349 lambda!238302))))

(declare-fun bs!1166709 () Bool)

(assert (= bs!1166709 (and b!4832161 b!4832122)))

(assert (=> bs!1166709 (= (= (t!362690 (toList!7556 lt!1977452)) (Cons!55070 (h!61504 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (t!362690 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))))) (= lambda!238349 lambda!238341))))

(declare-fun bs!1166710 () Bool)

(assert (= bs!1166710 (and b!4832161 b!4832119)))

(assert (=> bs!1166710 (= (= (t!362690 (toList!7556 lt!1977452)) (t!362690 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)))) (= lambda!238349 lambda!238339))))

(declare-fun bs!1166711 () Bool)

(assert (= bs!1166711 (and b!4832161 b!4832068)))

(assert (=> bs!1166711 (= (= (t!362690 (toList!7556 lt!1977452)) (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (= lambda!238349 lambda!238333))))

(declare-fun bs!1166712 () Bool)

(assert (= bs!1166712 (and b!4832161 b!4831989)))

(assert (=> bs!1166712 (= (= (t!362690 (toList!7556 lt!1977452)) (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (= lambda!238349 lambda!238307))))

(declare-fun bs!1166713 () Bool)

(assert (= bs!1166713 (and b!4832161 b!4832033)))

(assert (=> bs!1166713 (= (= (t!362690 (toList!7556 lt!1977452)) (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (= lambda!238349 lambda!238321))))

(assert (=> b!4832161 true))

(declare-fun bs!1166714 () Bool)

(declare-fun b!4832164 () Bool)

(assert (= bs!1166714 (and b!4832164 b!4832161)))

(declare-fun lambda!238350 () Int)

(assert (=> bs!1166714 (= (= (Cons!55070 (h!61504 (toList!7556 lt!1977452)) (t!362690 (toList!7556 lt!1977452))) (t!362690 (toList!7556 lt!1977452))) (= lambda!238350 lambda!238349))))

(declare-fun bs!1166715 () Bool)

(assert (= bs!1166715 (and b!4832164 b!4832067)))

(assert (=> bs!1166715 (= (= (Cons!55070 (h!61504 (toList!7556 lt!1977452)) (t!362690 (toList!7556 lt!1977452))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))))) (= lambda!238350 lambda!238331))))

(declare-fun bs!1166716 () Bool)

(assert (= bs!1166716 (and b!4832164 b!4832070)))

(assert (=> bs!1166716 (= (= (Cons!55070 (h!61504 (toList!7556 lt!1977452)) (t!362690 (toList!7556 lt!1977452))) (Cons!55070 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))))) (= lambda!238350 lambda!238332))))

(declare-fun bs!1166717 () Bool)

(assert (= bs!1166717 (and b!4832164 b!4832084)))

(assert (=> bs!1166717 (= (= (Cons!55070 (h!61504 (toList!7556 lt!1977452)) (t!362690 (toList!7556 lt!1977452))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))))) (= lambda!238350 lambda!238335))))

(declare-fun bs!1166718 () Bool)

(assert (= bs!1166718 (and b!4832164 b!4832087)))

(assert (=> bs!1166718 (= (= (Cons!55070 (h!61504 (toList!7556 lt!1977452)) (t!362690 (toList!7556 lt!1977452))) (Cons!55070 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))))) (= lambda!238350 lambda!238336))))

(declare-fun bs!1166719 () Bool)

(assert (= bs!1166719 (and b!4832164 b!4831994)))

(assert (=> bs!1166719 (= (= (Cons!55070 (h!61504 (toList!7556 lt!1977452)) (t!362690 (toList!7556 lt!1977452))) (toList!7556 lt!1977452)) (= lambda!238350 lambda!238309))))

(declare-fun bs!1166720 () Bool)

(assert (= bs!1166720 (and b!4832164 b!4832085)))

(assert (=> bs!1166720 (= (= (Cons!55070 (h!61504 (toList!7556 lt!1977452)) (t!362690 (toList!7556 lt!1977452))) (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (= lambda!238350 lambda!238337))))

(declare-fun bs!1166721 () Bool)

(assert (= bs!1166721 (and b!4832164 b!4832120)))

(assert (=> bs!1166721 (= (= (Cons!55070 (h!61504 (toList!7556 lt!1977452)) (t!362690 (toList!7556 lt!1977452))) (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (= lambda!238350 lambda!238345))))

(declare-fun bs!1166722 () Bool)

(assert (= bs!1166722 (and b!4832164 b!4831980)))

(assert (=> bs!1166722 (= (= (Cons!55070 (h!61504 (toList!7556 lt!1977452)) (t!362690 (toList!7556 lt!1977452))) (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (= lambda!238350 lambda!238302))))

(declare-fun bs!1166723 () Bool)

(assert (= bs!1166723 (and b!4832164 b!4832122)))

(assert (=> bs!1166723 (= (= (Cons!55070 (h!61504 (toList!7556 lt!1977452)) (t!362690 (toList!7556 lt!1977452))) (Cons!55070 (h!61504 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (t!362690 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))))) (= lambda!238350 lambda!238341))))

(declare-fun bs!1166724 () Bool)

(assert (= bs!1166724 (and b!4832164 b!4832119)))

(assert (=> bs!1166724 (= (= (Cons!55070 (h!61504 (toList!7556 lt!1977452)) (t!362690 (toList!7556 lt!1977452))) (t!362690 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)))) (= lambda!238350 lambda!238339))))

(declare-fun bs!1166725 () Bool)

(assert (= bs!1166725 (and b!4832164 b!4832068)))

(assert (=> bs!1166725 (= (= (Cons!55070 (h!61504 (toList!7556 lt!1977452)) (t!362690 (toList!7556 lt!1977452))) (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (= lambda!238350 lambda!238333))))

(declare-fun bs!1166726 () Bool)

(assert (= bs!1166726 (and b!4832164 b!4831989)))

(assert (=> bs!1166726 (= (= (Cons!55070 (h!61504 (toList!7556 lt!1977452)) (t!362690 (toList!7556 lt!1977452))) (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (= lambda!238350 lambda!238307))))

(declare-fun bs!1166727 () Bool)

(assert (= bs!1166727 (and b!4832164 b!4832033)))

(assert (=> bs!1166727 (= (= (Cons!55070 (h!61504 (toList!7556 lt!1977452)) (t!362690 (toList!7556 lt!1977452))) (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (= lambda!238350 lambda!238321))))

(assert (=> b!4832164 true))

(declare-fun bs!1166728 () Bool)

(declare-fun b!4832162 () Bool)

(assert (= bs!1166728 (and b!4832162 b!4832161)))

(declare-fun lambda!238351 () Int)

(assert (=> bs!1166728 (= (= (toList!7556 lt!1977452) (t!362690 (toList!7556 lt!1977452))) (= lambda!238351 lambda!238349))))

(declare-fun bs!1166729 () Bool)

(assert (= bs!1166729 (and b!4832162 b!4832067)))

(assert (=> bs!1166729 (= (= (toList!7556 lt!1977452) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lm!2325))))) (= lambda!238351 lambda!238331))))

(declare-fun bs!1166730 () Bool)

(assert (= bs!1166730 (and b!4832162 b!4832070)))

(assert (=> bs!1166730 (= (= (toList!7556 lt!1977452) (Cons!55070 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))))) (= lambda!238351 lambda!238332))))

(declare-fun bs!1166731 () Bool)

(assert (= bs!1166731 (and b!4832162 b!4832084)))

(assert (=> bs!1166731 (= (= (toList!7556 lt!1977452) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454))))) (= lambda!238351 lambda!238335))))

(declare-fun bs!1166732 () Bool)

(assert (= bs!1166732 (and b!4832162 b!4832087)))

(assert (=> bs!1166732 (= (= (toList!7556 lt!1977452) (Cons!55070 (h!61504 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (t!362690 (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))))) (= lambda!238351 lambda!238336))))

(declare-fun bs!1166733 () Bool)

(assert (= bs!1166733 (and b!4832162 b!4831994)))

(assert (=> bs!1166733 (= lambda!238351 lambda!238309)))

(declare-fun bs!1166734 () Bool)

(assert (= bs!1166734 (and b!4832162 b!4832085)))

(assert (=> bs!1166734 (= (= (toList!7556 lt!1977452) (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (= lambda!238351 lambda!238337))))

(declare-fun bs!1166735 () Bool)

(assert (= bs!1166735 (and b!4832162 b!4832120)))

(assert (=> bs!1166735 (= (= (toList!7556 lt!1977452) (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (= lambda!238351 lambda!238345))))

(declare-fun bs!1166736 () Bool)

(assert (= bs!1166736 (and b!4832162 b!4831980)))

(assert (=> bs!1166736 (= (= (toList!7556 lt!1977452) (toList!7556 (extractMap!2715 (toList!7555 lt!1977454)))) (= lambda!238351 lambda!238302))))

(declare-fun bs!1166737 () Bool)

(assert (= bs!1166737 (and b!4832162 b!4832122)))

(assert (=> bs!1166737 (= (= (toList!7556 lt!1977452) (Cons!55070 (h!61504 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (t!362690 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))))) (= lambda!238351 lambda!238341))))

(declare-fun bs!1166738 () Bool)

(assert (= bs!1166738 (and b!4832162 b!4832068)))

(assert (=> bs!1166738 (= (= (toList!7556 lt!1977452) (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (= lambda!238351 lambda!238333))))

(declare-fun bs!1166739 () Bool)

(assert (= bs!1166739 (and b!4832162 b!4832164)))

(assert (=> bs!1166739 (= (= (toList!7556 lt!1977452) (Cons!55070 (h!61504 (toList!7556 lt!1977452)) (t!362690 (toList!7556 lt!1977452)))) (= lambda!238351 lambda!238350))))

(declare-fun bs!1166740 () Bool)

(assert (= bs!1166740 (and b!4832162 b!4832119)))

(assert (=> bs!1166740 (= (= (toList!7556 lt!1977452) (t!362690 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)))) (= lambda!238351 lambda!238339))))

(declare-fun bs!1166741 () Bool)

(assert (= bs!1166741 (and b!4832162 b!4831989)))

(assert (=> bs!1166741 (= (= (toList!7556 lt!1977452) (toList!7556 (extractMap!2715 (toList!7555 lm!2325)))) (= lambda!238351 lambda!238307))))

(declare-fun bs!1166742 () Bool)

(assert (= bs!1166742 (and b!4832162 b!4832033)))

(assert (=> bs!1166742 (= (= (toList!7556 lt!1977452) (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452))) (= lambda!238351 lambda!238321))))

(assert (=> b!4832162 true))

(declare-fun bs!1166743 () Bool)

(declare-fun b!4832158 () Bool)

(assert (= bs!1166743 (and b!4832158 b!4832064)))

(declare-fun lambda!238352 () Int)

(assert (=> bs!1166743 (= lambda!238352 lambda!238334)))

(declare-fun bs!1166744 () Bool)

(assert (= bs!1166744 (and b!4832158 b!4831981)))

(assert (=> bs!1166744 (= lambda!238352 lambda!238303)))

(declare-fun bs!1166745 () Bool)

(assert (= bs!1166745 (and b!4832158 b!4832116)))

(assert (=> bs!1166745 (= lambda!238352 lambda!238346)))

(declare-fun bs!1166746 () Bool)

(assert (= bs!1166746 (and b!4832158 b!4832034)))

(assert (=> bs!1166746 (= lambda!238352 lambda!238322)))

(declare-fun bs!1166747 () Bool)

(assert (= bs!1166747 (and b!4832158 b!4831995)))

(assert (=> bs!1166747 (= lambda!238352 lambda!238310)))

(declare-fun bs!1166748 () Bool)

(assert (= bs!1166748 (and b!4832158 b!4832081)))

(assert (=> bs!1166748 (= lambda!238352 lambda!238338)))

(declare-fun bs!1166749 () Bool)

(assert (= bs!1166749 (and b!4832158 b!4831990)))

(assert (=> bs!1166749 (= lambda!238352 lambda!238308)))

(declare-fun d!1549361 () Bool)

(declare-fun e!3019595 () Bool)

(assert (=> d!1549361 e!3019595))

(declare-fun res!2058276 () Bool)

(assert (=> d!1549361 (=> (not res!2058276) (not e!3019595))))

(declare-fun lt!1977957 () List!55198)

(assert (=> d!1549361 (= res!2058276 (noDuplicate!977 lt!1977957))))

(declare-fun e!3019592 () List!55198)

(assert (=> d!1549361 (= lt!1977957 e!3019592)))

(declare-fun c!823381 () Bool)

(assert (=> d!1549361 (= c!823381 (is-Cons!55070 (toList!7556 lt!1977452)))))

(assert (=> d!1549361 (invariantList!1829 (toList!7556 lt!1977452))))

(assert (=> d!1549361 (= (getKeysList!1175 (toList!7556 lt!1977452)) lt!1977957)))

(declare-fun b!4832156 () Bool)

(assert (=> b!4832156 (= e!3019592 Nil!55074)))

(declare-fun b!4832157 () Bool)

(assert (=> b!4832157 false))

(declare-fun e!3019594 () Unit!143893)

(declare-fun Unit!144039 () Unit!143893)

(assert (=> b!4832157 (= e!3019594 Unit!144039)))

(assert (=> b!4832158 (= e!3019595 (= (content!9836 lt!1977957) (content!9836 (map!12617 (toList!7556 lt!1977452) lambda!238352))))))

(declare-fun b!4832159 () Bool)

(declare-fun res!2058275 () Bool)

(assert (=> b!4832159 (=> (not res!2058275) (not e!3019595))))

(assert (=> b!4832159 (= res!2058275 (= (length!810 lt!1977957) (length!811 (toList!7556 lt!1977452))))))

(declare-fun b!4832160 () Bool)

(declare-fun Unit!144041 () Unit!143893)

(assert (=> b!4832160 (= e!3019594 Unit!144041)))

(assert (=> b!4832161 false))

(declare-fun lt!1977959 () Unit!143893)

(assert (=> b!4832161 (= lt!1977959 (forallContained!4419 (getKeysList!1175 (t!362690 (toList!7556 lt!1977452))) lambda!238349 (_1!32473 (h!61504 (toList!7556 lt!1977452)))))))

(declare-fun e!3019593 () Unit!143893)

(declare-fun Unit!144042 () Unit!143893)

(assert (=> b!4832161 (= e!3019593 Unit!144042)))

(declare-fun res!2058277 () Bool)

(assert (=> b!4832162 (=> (not res!2058277) (not e!3019595))))

(assert (=> b!4832162 (= res!2058277 (forall!12685 lt!1977957 lambda!238351))))

(declare-fun b!4832163 () Bool)

(declare-fun Unit!144043 () Unit!143893)

(assert (=> b!4832163 (= e!3019593 Unit!144043)))

(assert (=> b!4832164 (= e!3019592 (Cons!55074 (_1!32473 (h!61504 (toList!7556 lt!1977452))) (getKeysList!1175 (t!362690 (toList!7556 lt!1977452)))))))

(declare-fun c!823382 () Bool)

(assert (=> b!4832164 (= c!823382 (containsKey!4440 (t!362690 (toList!7556 lt!1977452)) (_1!32473 (h!61504 (toList!7556 lt!1977452)))))))

(declare-fun lt!1977961 () Unit!143893)

(assert (=> b!4832164 (= lt!1977961 e!3019594)))

(declare-fun c!823383 () Bool)

(assert (=> b!4832164 (= c!823383 (contains!18886 (getKeysList!1175 (t!362690 (toList!7556 lt!1977452))) (_1!32473 (h!61504 (toList!7556 lt!1977452)))))))

(declare-fun lt!1977958 () Unit!143893)

(assert (=> b!4832164 (= lt!1977958 e!3019593)))

(declare-fun lt!1977960 () List!55198)

(assert (=> b!4832164 (= lt!1977960 (getKeysList!1175 (t!362690 (toList!7556 lt!1977452))))))

(declare-fun lt!1977962 () Unit!143893)

(assert (=> b!4832164 (= lt!1977962 (lemmaForallContainsAddHeadPreserves!392 (t!362690 (toList!7556 lt!1977452)) lt!1977960 (h!61504 (toList!7556 lt!1977452))))))

(assert (=> b!4832164 (forall!12685 lt!1977960 lambda!238350)))

(declare-fun lt!1977956 () Unit!143893)

(assert (=> b!4832164 (= lt!1977956 lt!1977962)))

(assert (= (and d!1549361 c!823381) b!4832164))

(assert (= (and d!1549361 (not c!823381)) b!4832156))

(assert (= (and b!4832164 c!823382) b!4832157))

(assert (= (and b!4832164 (not c!823382)) b!4832160))

(assert (= (and b!4832164 c!823383) b!4832161))

(assert (= (and b!4832164 (not c!823383)) b!4832163))

(assert (= (and d!1549361 res!2058276) b!4832159))

(assert (= (and b!4832159 res!2058275) b!4832162))

(assert (= (and b!4832162 res!2058277) b!4832158))

(declare-fun m!5826250 () Bool)

(assert (=> b!4832162 m!5826250))

(declare-fun m!5826252 () Bool)

(assert (=> d!1549361 m!5826252))

(assert (=> d!1549361 m!5825860))

(declare-fun m!5826254 () Bool)

(assert (=> b!4832161 m!5826254))

(assert (=> b!4832161 m!5826254))

(declare-fun m!5826256 () Bool)

(assert (=> b!4832161 m!5826256))

(declare-fun m!5826258 () Bool)

(assert (=> b!4832158 m!5826258))

(declare-fun m!5826260 () Bool)

(assert (=> b!4832158 m!5826260))

(assert (=> b!4832158 m!5826260))

(declare-fun m!5826262 () Bool)

(assert (=> b!4832158 m!5826262))

(declare-fun m!5826264 () Bool)

(assert (=> b!4832159 m!5826264))

(assert (=> b!4832159 m!5825934))

(declare-fun m!5826266 () Bool)

(assert (=> b!4832164 m!5826266))

(declare-fun m!5826268 () Bool)

(assert (=> b!4832164 m!5826268))

(assert (=> b!4832164 m!5826254))

(declare-fun m!5826270 () Bool)

(assert (=> b!4832164 m!5826270))

(assert (=> b!4832164 m!5826254))

(declare-fun m!5826272 () Bool)

(assert (=> b!4832164 m!5826272))

(assert (=> b!4831648 d!1549361))

(assert (=> b!4831663 d!1549253))

(assert (=> b!4831663 d!1549255))

(declare-fun d!1549367 () Bool)

(declare-fun res!2058280 () Bool)

(declare-fun e!3019600 () Bool)

(assert (=> d!1549367 (=> res!2058280 e!3019600)))

(assert (=> d!1549367 (= res!2058280 (and (is-Cons!55070 (t!362690 (apply!13372 lm!2325 (_1!32474 (h!61505 (toList!7555 lm!2325)))))) (= (_1!32473 (h!61504 (t!362690 (apply!13372 lm!2325 (_1!32474 (h!61505 (toList!7555 lm!2325))))))) key!5594)))))

(assert (=> d!1549367 (= (containsKey!4438 (t!362690 (apply!13372 lm!2325 (_1!32474 (h!61505 (toList!7555 lm!2325))))) key!5594) e!3019600)))

(declare-fun b!4832171 () Bool)

(declare-fun e!3019601 () Bool)

(assert (=> b!4832171 (= e!3019600 e!3019601)))

(declare-fun res!2058281 () Bool)

(assert (=> b!4832171 (=> (not res!2058281) (not e!3019601))))

(assert (=> b!4832171 (= res!2058281 (is-Cons!55070 (t!362690 (apply!13372 lm!2325 (_1!32474 (h!61505 (toList!7555 lm!2325)))))))))

(declare-fun b!4832172 () Bool)

(assert (=> b!4832172 (= e!3019601 (containsKey!4438 (t!362690 (t!362690 (apply!13372 lm!2325 (_1!32474 (h!61505 (toList!7555 lm!2325)))))) key!5594))))

(assert (= (and d!1549367 (not res!2058280)) b!4832171))

(assert (= (and b!4832171 res!2058281) b!4832172))

(declare-fun m!5826274 () Bool)

(assert (=> b!4832172 m!5826274))

(assert (=> b!4831708 d!1549367))

(assert (=> b!4831722 d!1549321))

(declare-fun d!1549369 () Bool)

(assert (=> d!1549369 (containsKey!4440 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) key!5594)))

(declare-fun lt!1977963 () Unit!143893)

(assert (=> d!1549369 (= lt!1977963 (choose!35289 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) key!5594))))

(assert (=> d!1549369 (invariantList!1829 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)))))

(assert (=> d!1549369 (= (lemmaInGetKeysListThenContainsKey!1175 (toList!7556 (addToMapMapFromBucket!1830 (_2!32474 (h!61505 (toList!7555 lm!2325))) lt!1977452)) key!5594) lt!1977963)))

(declare-fun bs!1166750 () Bool)

(assert (= bs!1166750 d!1549369))

(assert (=> bs!1166750 m!5825414))

(declare-fun m!5826276 () Bool)

(assert (=> bs!1166750 m!5826276))

(assert (=> bs!1166750 m!5826046))

(assert (=> b!4831722 d!1549369))

(declare-fun d!1549371 () Bool)

(declare-fun res!2058282 () Bool)

(declare-fun e!3019602 () Bool)

(assert (=> d!1549371 (=> res!2058282 e!3019602)))

(assert (=> d!1549371 (= res!2058282 (is-Nil!55071 (toList!7555 lm!2325)))))

(assert (=> d!1549371 (= (forall!12681 (toList!7555 lm!2325) lambda!238248) e!3019602)))

(declare-fun b!4832173 () Bool)

(declare-fun e!3019603 () Bool)

(assert (=> b!4832173 (= e!3019602 e!3019603)))

(declare-fun res!2058283 () Bool)

(assert (=> b!4832173 (=> (not res!2058283) (not e!3019603))))

(assert (=> b!4832173 (= res!2058283 (dynLambda!22250 lambda!238248 (h!61505 (toList!7555 lm!2325))))))

(declare-fun b!4832174 () Bool)

(assert (=> b!4832174 (= e!3019603 (forall!12681 (t!362691 (toList!7555 lm!2325)) lambda!238248))))

(assert (= (and d!1549371 (not res!2058282)) b!4832173))

(assert (= (and b!4832173 res!2058283) b!4832174))

(declare-fun b_lambda!190845 () Bool)

(assert (=> (not b_lambda!190845) (not b!4832173)))

(declare-fun m!5826278 () Bool)

(assert (=> b!4832173 m!5826278))

(declare-fun m!5826280 () Bool)

(assert (=> b!4832174 m!5826280))

(assert (=> d!1549137 d!1549371))

(assert (=> b!4831720 d!1549297))

(assert (=> b!4831646 d!1549221))

(declare-fun d!1549373 () Bool)

(assert (=> d!1549373 (containsKey!4440 (toList!7556 lt!1977452) key!5594)))

(declare-fun lt!1977964 () Unit!143893)

(assert (=> d!1549373 (= lt!1977964 (choose!35289 (toList!7556 lt!1977452) key!5594))))

(assert (=> d!1549373 (invariantList!1829 (toList!7556 lt!1977452))))

(assert (=> d!1549373 (= (lemmaInGetKeysListThenContainsKey!1175 (toList!7556 lt!1977452) key!5594) lt!1977964)))

(declare-fun bs!1166751 () Bool)

(assert (= bs!1166751 d!1549373))

(assert (=> bs!1166751 m!5825286))

(declare-fun m!5826282 () Bool)

(assert (=> bs!1166751 m!5826282))

(assert (=> bs!1166751 m!5825860))

(assert (=> b!4831646 d!1549373))

(declare-fun d!1549375 () Bool)

(declare-fun res!2058284 () Bool)

(declare-fun e!3019604 () Bool)

(assert (=> d!1549375 (=> res!2058284 e!3019604)))

(assert (=> d!1549375 (= res!2058284 (and (is-Cons!55071 (toList!7555 lt!1977454)) (= (_1!32474 (h!61505 (toList!7555 lt!1977454))) lt!1977450)))))

(assert (=> d!1549375 (= (containsKey!4441 (toList!7555 lt!1977454) lt!1977450) e!3019604)))

(declare-fun b!4832175 () Bool)

(declare-fun e!3019605 () Bool)

(assert (=> b!4832175 (= e!3019604 e!3019605)))

(declare-fun res!2058285 () Bool)

(assert (=> b!4832175 (=> (not res!2058285) (not e!3019605))))

(assert (=> b!4832175 (= res!2058285 (and (or (not (is-Cons!55071 (toList!7555 lt!1977454))) (bvsle (_1!32474 (h!61505 (toList!7555 lt!1977454))) lt!1977450)) (is-Cons!55071 (toList!7555 lt!1977454)) (bvslt (_1!32474 (h!61505 (toList!7555 lt!1977454))) lt!1977450)))))

(declare-fun b!4832176 () Bool)

(assert (=> b!4832176 (= e!3019605 (containsKey!4441 (t!362691 (toList!7555 lt!1977454)) lt!1977450))))

(assert (= (and d!1549375 (not res!2058284)) b!4832175))

(assert (= (and b!4832175 res!2058285) b!4832176))

(declare-fun m!5826284 () Bool)

(assert (=> b!4832176 m!5826284))

(assert (=> d!1549135 d!1549375))

(declare-fun tp!1362939 () Bool)

(declare-fun tp_is_empty!34577 () Bool)

(declare-fun b!4832181 () Bool)

(declare-fun e!3019608 () Bool)

(assert (=> b!4832181 (= e!3019608 (and tp_is_empty!34573 tp_is_empty!34577 tp!1362939))))

(assert (=> b!4831795 (= tp!1362929 e!3019608)))

(assert (= (and b!4831795 (is-Cons!55070 (_2!32474 (h!61505 (toList!7555 lm!2325))))) b!4832181))

(declare-fun b!4832182 () Bool)

(declare-fun e!3019609 () Bool)

(declare-fun tp!1362940 () Bool)

(declare-fun tp!1362941 () Bool)

(assert (=> b!4832182 (= e!3019609 (and tp!1362940 tp!1362941))))

(assert (=> b!4831795 (= tp!1362930 e!3019609)))

(assert (= (and b!4831795 (is-Cons!55071 (t!362691 (toList!7555 lm!2325)))) b!4832182))

(declare-fun b_lambda!190847 () Bool)

(assert (= b_lambda!190811 (or b!4831779 b_lambda!190847)))

(declare-fun bs!1166752 () Bool)

(declare-fun d!1549377 () Bool)

(assert (= bs!1166752 (and d!1549377 b!4831779)))

(assert (=> bs!1166752 (= (dynLambda!22252 lambda!238240 (h!61504 (toList!7556 lt!1977452))) (contains!18883 lt!1977646 (_1!32473 (h!61504 (toList!7556 lt!1977452)))))))

(declare-fun m!5826286 () Bool)

(assert (=> bs!1166752 m!5826286))

(assert (=> b!4831895 d!1549377))

(declare-fun b_lambda!190849 () Bool)

(assert (= b_lambda!190837 (or d!1549117 b_lambda!190849)))

(declare-fun bs!1166753 () Bool)

(declare-fun d!1549379 () Bool)

(assert (= bs!1166753 (and d!1549379 d!1549117)))

(assert (=> bs!1166753 (= (dynLambda!22252 lambda!238241 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))) (contains!18883 lt!1977658 (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))))

(declare-fun m!5826288 () Bool)

(assert (=> bs!1166753 m!5826288))

(assert (=> b!4832099 d!1549379))

(declare-fun b_lambda!190851 () Bool)

(assert (= b_lambda!190827 (or d!1549087 b_lambda!190851)))

(declare-fun bs!1166754 () Bool)

(declare-fun d!1549381 () Bool)

(assert (= bs!1166754 (and d!1549381 d!1549087)))

(assert (=> bs!1166754 (= (dynLambda!22250 lambda!238198 (h!61505 (toList!7555 lm!2325))) (noDuplicateKeys!2473 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))

(assert (=> bs!1166754 m!5825398))

(assert (=> b!4831984 d!1549381))

(declare-fun b_lambda!190853 () Bool)

(assert (= b_lambda!190821 (or d!1549081 b_lambda!190853)))

(declare-fun bs!1166755 () Bool)

(declare-fun d!1549383 () Bool)

(assert (= bs!1166755 (and d!1549383 d!1549081)))

(assert (=> bs!1166755 (= (dynLambda!22250 lambda!238197 (h!61505 (toList!7555 lt!1977454))) (noDuplicateKeys!2473 (_2!32474 (h!61505 (toList!7555 lt!1977454)))))))

(assert (=> bs!1166755 m!5825536))

(assert (=> b!4831930 d!1549383))

(declare-fun b_lambda!190855 () Bool)

(assert (= b_lambda!190817 (or b!4831779 b_lambda!190855)))

(declare-fun bs!1166756 () Bool)

(declare-fun d!1549385 () Bool)

(assert (= bs!1166756 (and d!1549385 b!4831779)))

(assert (=> bs!1166756 (= (dynLambda!22252 lambda!238240 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325))))) (contains!18883 lt!1977646 (_1!32473 (h!61504 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))))

(assert (=> bs!1166756 m!5825496))

(assert (=> d!1549199 d!1549385))

(declare-fun b_lambda!190857 () Bool)

(assert (= b_lambda!190839 (or d!1549133 b_lambda!190857)))

(declare-fun bs!1166757 () Bool)

(declare-fun d!1549387 () Bool)

(assert (= bs!1166757 (and d!1549387 d!1549133)))

(declare-fun allKeysSameHash!2019 (List!55194 (_ BitVec 64) Hashable!7307) Bool)

(assert (=> bs!1166757 (= (dynLambda!22250 lambda!238247 (h!61505 (toList!7555 lt!1977454))) (allKeysSameHash!2019 (_2!32474 (h!61505 (toList!7555 lt!1977454))) (_1!32474 (h!61505 (toList!7555 lt!1977454))) hashF!1543))))

(declare-fun m!5826290 () Bool)

(assert (=> bs!1166757 m!5826290))

(assert (=> b!4832112 d!1549387))

(declare-fun b_lambda!190859 () Bool)

(assert (= b_lambda!190829 (or d!1549129 b_lambda!190859)))

(declare-fun bs!1166758 () Bool)

(declare-fun d!1549389 () Bool)

(assert (= bs!1166758 (and d!1549389 d!1549129)))

(assert (=> bs!1166758 (= (dynLambda!22250 lambda!238244 (h!61505 (toList!7555 lm!2325))) (noDuplicateKeys!2473 (_2!32474 (h!61505 (toList!7555 lm!2325)))))))

(assert (=> bs!1166758 m!5825398))

(assert (=> b!4832035 d!1549389))

(declare-fun b_lambda!190861 () Bool)

(assert (= b_lambda!190807 (or d!1549117 b_lambda!190861)))

(declare-fun bs!1166759 () Bool)

(declare-fun d!1549391 () Bool)

(assert (= bs!1166759 (and d!1549391 d!1549117)))

(assert (=> bs!1166759 (= (dynLambda!22252 lambda!238241 (h!61504 (toList!7556 lt!1977452))) (contains!18883 lt!1977658 (_1!32473 (h!61504 (toList!7556 lt!1977452)))))))

(declare-fun m!5826292 () Bool)

(assert (=> bs!1166759 m!5826292))

(assert (=> b!4831879 d!1549391))

(declare-fun b_lambda!190863 () Bool)

(assert (= b_lambda!190819 (or b!4831779 b_lambda!190863)))

(declare-fun bs!1166760 () Bool)

(declare-fun d!1549393 () Bool)

(assert (= bs!1166760 (and d!1549393 b!4831779)))

(assert (=> bs!1166760 (= (dynLambda!22252 lambda!238240 (h!61504 (toList!7556 lt!1977642))) (contains!18883 lt!1977646 (_1!32473 (h!61504 (toList!7556 lt!1977642)))))))

(declare-fun m!5826294 () Bool)

(assert (=> bs!1166760 m!5826294))

(assert (=> b!4831919 d!1549393))

(declare-fun b_lambda!190865 () Bool)

(assert (= b_lambda!190813 (or b!4831779 b_lambda!190865)))

(declare-fun bs!1166761 () Bool)

(declare-fun d!1549395 () Bool)

(assert (= bs!1166761 (and d!1549395 b!4831779)))

(assert (=> bs!1166761 (= (dynLambda!22252 lambda!238239 (h!61504 (toList!7556 lt!1977452))) (contains!18883 lt!1977452 (_1!32473 (h!61504 (toList!7556 lt!1977452)))))))

(declare-fun m!5826296 () Bool)

(assert (=> bs!1166761 m!5826296))

(assert (=> b!4831912 d!1549395))

(declare-fun b_lambda!190867 () Bool)

(assert (= b_lambda!190809 (or b!4831779 b_lambda!190867)))

(declare-fun bs!1166762 () Bool)

(declare-fun d!1549397 () Bool)

(assert (= bs!1166762 (and d!1549397 b!4831779)))

(assert (=> bs!1166762 (= (dynLambda!22252 lambda!238240 (h!61504 (t!362690 (_2!32474 (h!61505 (toList!7555 lm!2325)))))) (contains!18883 lt!1977646 (_1!32473 (h!61504 (t!362690 (_2!32474 (h!61505 (toList!7555 lm!2325))))))))))

(declare-fun m!5826298 () Bool)

(assert (=> bs!1166762 m!5826298))

(assert (=> b!4831888 d!1549397))

(declare-fun b_lambda!190869 () Bool)

(assert (= b_lambda!190833 (or d!1549089 b_lambda!190869)))

(declare-fun bs!1166763 () Bool)

(declare-fun d!1549399 () Bool)

(assert (= bs!1166763 (and d!1549399 d!1549089)))

(assert (=> bs!1166763 (= (dynLambda!22250 lambda!238201 (h!61505 (toList!7555 lt!1977454))) (noDuplicateKeys!2473 (_2!32474 (h!61505 (toList!7555 lt!1977454)))))))

(assert (=> bs!1166763 m!5825536))

(assert (=> b!4832073 d!1549399))

(declare-fun b_lambda!190871 () Bool)

(assert (= b_lambda!190835 (or start!502018 b_lambda!190871)))

(declare-fun bs!1166764 () Bool)

(declare-fun d!1549401 () Bool)

(assert (= bs!1166764 (and d!1549401 start!502018)))

(assert (=> bs!1166764 (= (dynLambda!22250 lambda!238185 (h!61505 (t!362691 (toList!7555 lm!2325)))) (noDuplicateKeys!2473 (_2!32474 (h!61505 (t!362691 (toList!7555 lm!2325))))))))

(assert (=> bs!1166764 m!5826014))

(assert (=> b!4832097 d!1549401))

(declare-fun b_lambda!190873 () Bool)

(assert (= b_lambda!190825 (or start!502018 b_lambda!190873)))

(declare-fun bs!1166765 () Bool)

(declare-fun d!1549403 () Bool)

(assert (= bs!1166765 (and d!1549403 start!502018)))

(assert (=> bs!1166765 (= (dynLambda!22250 lambda!238185 (h!61505 (t!362691 (toList!7555 lt!1977454)))) (noDuplicateKeys!2473 (_2!32474 (h!61505 (t!362691 (toList!7555 lt!1977454))))))))

(declare-fun m!5826300 () Bool)

(assert (=> bs!1166765 m!5826300))

(assert (=> b!4831963 d!1549403))

(declare-fun b_lambda!190875 () Bool)

(assert (= b_lambda!190845 (or d!1549137 b_lambda!190875)))

(declare-fun bs!1166766 () Bool)

(declare-fun d!1549405 () Bool)

(assert (= bs!1166766 (and d!1549405 d!1549137)))

(assert (=> bs!1166766 (= (dynLambda!22250 lambda!238248 (h!61505 (toList!7555 lm!2325))) (allKeysSameHash!2019 (_2!32474 (h!61505 (toList!7555 lm!2325))) (_1!32474 (h!61505 (toList!7555 lm!2325))) hashF!1543))))

(declare-fun m!5826302 () Bool)

(assert (=> bs!1166766 m!5826302))

(assert (=> b!4832173 d!1549405))

(declare-fun b_lambda!190877 () Bool)

(assert (= b_lambda!190823 (or d!1549109 b_lambda!190877)))

(declare-fun bs!1166767 () Bool)

(declare-fun d!1549407 () Bool)

(assert (= bs!1166767 (and d!1549407 d!1549109)))

(assert (=> bs!1166767 (= (dynLambda!22250 lambda!238202 (h!61505 (t!362691 (toList!7555 lm!2325)))) (noDuplicateKeys!2473 (_2!32474 (h!61505 (t!362691 (toList!7555 lm!2325))))))))

(assert (=> bs!1166767 m!5826014))

(assert (=> b!4831954 d!1549407))

(declare-fun b_lambda!190879 () Bool)

(assert (= b_lambda!190815 (or b!4831779 b_lambda!190879)))

(assert (=> b!4831914 d!1549385))

(push 1)

(assert (not d!1549191))

(assert (not b!4832151))

(assert (not b!4831980))

(assert (not bm!336738))

(assert (not bm!336728))

(assert (not b!4831892))

(assert (not b!4831929))

(assert (not b!4832100))

(assert (not b!4831990))

(assert (not d!1549227))

(assert (not b_lambda!190859))

(assert (not d!1549267))

(assert (not b!4831870))

(assert (not b!4832032))

(assert (not b!4831899))

(assert (not b!4831874))

(assert (not b!4832034))

(assert (not b!4832182))

(assert (not b!4832113))

(assert (not b!4832176))

(assert (not b_lambda!190795))

(assert (not bm!336730))

(assert (not b!4831898))

(assert (not bs!1166765))

(assert (not b!4831915))

(assert (not d!1549293))

(assert (not d!1549299))

(assert (not b_lambda!190869))

(assert (not d!1549327))

(assert (not b!4831964))

(assert (not bs!1166764))

(assert (not d!1549183))

(assert (not bm!336727))

(assert (not b!4832119))

(assert (not b!4832006))

(assert (not b!4831981))

(assert (not d!1549307))

(assert (not b!4832117))

(assert (not bs!1166755))

(assert (not bm!336735))

(assert (not d!1549233))

(assert (not bs!1166756))

(assert (not d!1549257))

(assert (not d!1549265))

(assert (not d!1549297))

(assert (not b!4831911))

(assert (not d!1549369))

(assert (not bm!336729))

(assert (not b_lambda!190831))

(assert (not bs!1166759))

(assert (not b!4832087))

(assert (not b!4831901))

(assert (not b!4832159))

(assert (not b!4831927))

(assert (not b!4831992))

(assert (not b!4832122))

(assert (not b!4832174))

(assert (not b!4832085))

(assert (not b!4831890))

(assert (not d!1549239))

(assert (not bs!1166762))

(assert (not d!1549187))

(assert (not b!4832172))

(assert (not d!1549259))

(assert (not b!4831893))

(assert (not bm!336731))

(assert (not b!4832020))

(assert (not b!4831995))

(assert (not b!4832084))

(assert (not b!4831918))

(assert (not d!1549281))

(assert (not bs!1166758))

(assert (not b!4832065))

(assert (not bm!336726))

(assert (not b!4832098))

(assert (not b!4832082))

(assert (not b!4831979))

(assert (not b!4832111))

(assert (not b_lambda!190861))

(assert (not d!1549303))

(assert (not b!4832181))

(assert (not b!4831970))

(assert (not b!4832078))

(assert (not b!4831903))

(assert (not bs!1166760))

(assert (not b!4832001))

(assert (not b!4831921))

(assert (not d!1549193))

(assert (not bs!1166766))

(assert (not bm!336736))

(assert (not b!4831910))

(assert (not d!1549361))

(assert (not b_lambda!190851))

(assert (not d!1549315))

(assert (not bs!1166767))

(assert (not bm!336739))

(assert (not b_lambda!190841))

(assert (not d!1549243))

(assert (not d!1549285))

(assert (not b!4831987))

(assert (not d!1549263))

(assert (not b!4832040))

(assert (not b!4831959))

(assert (not b!4831953))

(assert (not b_lambda!190797))

(assert (not b!4832135))

(assert (not b!4832027))

(assert (not d!1549255))

(assert (not b_lambda!190879))

(assert (not b!4831994))

(assert (not d!1549271))

(assert (not b!4831972))

(assert (not bs!1166752))

(assert (not bm!336733))

(assert (not b!4831922))

(assert (not b!4831923))

(assert (not b!4831988))

(assert (not b!4832064))

(assert (not b_lambda!190875))

(assert (not b!4831886))

(assert (not b!4832162))

(assert (not b!4832067))

(assert (not d!1549313))

(assert (not b!4832120))

(assert (not b!4831905))

(assert (not d!1549343))

(assert (not d!1549177))

(assert (not d!1549213))

(assert (not d!1549249))

(assert (not b!4831956))

(assert (not b!4832081))

(assert tp_is_empty!34577)

(assert (not b!4831993))

(assert (not d!1549279))

(assert (not bs!1166754))

(assert (not b!4832024))

(assert (not b_lambda!190871))

(assert (not d!1549295))

(assert (not b!4831897))

(assert (not d!1549373))

(assert (not d!1549215))

(assert (not b!4831913))

(assert (not d!1549247))

(assert (not bm!336732))

(assert (not b!4832008))

(assert (not b_lambda!190847))

(assert (not b!4832021))

(assert (not d!1549235))

(assert (not b_lambda!190849))

(assert (not b!4831955))

(assert (not b!4832109))

(assert (not b_lambda!190873))

(assert (not b!4831925))

(assert (not b!4832031))

(assert (not b!4832158))

(assert (not d!1549269))

(assert (not bs!1166761))

(assert (not b!4831926))

(assert (not b!4832068))

(assert (not b!4832015))

(assert (not d!1549181))

(assert (not b!4832076))

(assert (not b!4832033))

(assert tp_is_empty!34573)

(assert (not b!4831896))

(assert (not bm!336737))

(assert (not b_lambda!190853))

(assert (not b!4831967))

(assert (not d!1549199))

(assert (not d!1549349))

(assert (not b_lambda!190865))

(assert (not b!4832075))

(assert (not b!4832116))

(assert (not b!4831958))

(assert (not b!4831989))

(assert (not d!1549275))

(assert (not b!4831931))

(assert (not b!4832070))

(assert (not b!4831985))

(assert (not b!4831998))

(assert (not b!4831880))

(assert (not b!4832164))

(assert (not b_lambda!190867))

(assert (not b_lambda!190855))

(assert (not b!4832037))

(assert (not b!4831934))

(assert (not d!1549287))

(assert (not d!1549305))

(assert (not b!4831946))

(assert (not b!4832074))

(assert (not d!1549323))

(assert (not bs!1166757))

(assert (not bs!1166753))

(assert (not bs!1166763))

(assert (not b_lambda!190863))

(assert (not d!1549245))

(assert (not b!4832096))

(assert (not b!4832043))

(assert (not b!4832012))

(assert (not b!4832005))

(assert (not d!1549341))

(assert (not b!4832029))

(assert (not b!4832036))

(assert (not b!4832161))

(assert (not b!4831996))

(assert (not b!4831999))

(assert (not b_lambda!190857))

(assert (not d!1549261))

(assert (not d!1549345))

(assert (not d!1549219))

(assert (not b!4831962))

(assert (not d!1549333))

(assert (not b_lambda!190877))

(assert (not d!1549205))

(assert (not d!1549223))

(assert (not b!4831920))

(assert (not d!1549253))

(assert (not b!4831889))

(assert (not bm!336734))

(assert (not b!4832003))

(assert (not d!1549173))

(assert (not d!1549203))

(assert (not b!4831902))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

