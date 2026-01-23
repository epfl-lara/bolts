; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!441350 () Bool)

(assert start!441350)

(declare-fun b!4483745 () Bool)

(declare-datatypes ((Unit!89977 0))(
  ( (Unit!89978) )
))
(declare-fun e!2792580 () Unit!89977)

(declare-fun Unit!89979 () Unit!89977)

(assert (=> b!4483745 (= e!2792580 Unit!89979)))

(declare-fun b!4483746 () Bool)

(declare-fun res!1862044 () Bool)

(declare-fun e!2792576 () Bool)

(assert (=> b!4483746 (=> res!1862044 e!2792576)))

(declare-datatypes ((K!11833 0))(
  ( (K!11834 (val!17737 Int)) )
))
(declare-datatypes ((V!12079 0))(
  ( (V!12080 (val!17738 Int)) )
))
(declare-datatypes ((tuple2!50742 0))(
  ( (tuple2!50743 (_1!28665 K!11833) (_2!28665 V!12079)) )
))
(declare-datatypes ((List!50544 0))(
  ( (Nil!50420) (Cons!50420 (h!56213 tuple2!50742) (t!357498 List!50544)) )
))
(declare-datatypes ((tuple2!50744 0))(
  ( (tuple2!50745 (_1!28666 (_ BitVec 64)) (_2!28666 List!50544)) )
))
(declare-datatypes ((List!50545 0))(
  ( (Nil!50421) (Cons!50421 (h!56214 tuple2!50744) (t!357499 List!50545)) )
))
(declare-datatypes ((ListLongMap!2793 0))(
  ( (ListLongMap!2794 (toList!4161 List!50545)) )
))
(declare-fun lt!1669889 () ListLongMap!2793)

(declare-fun lt!1669896 () List!50544)

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun apply!11814 (ListLongMap!2793 (_ BitVec 64)) List!50544)

(assert (=> b!4483746 (= res!1862044 (not (= (apply!11814 lt!1669889 hash!344) lt!1669896)))))

(declare-fun b!4483747 () Bool)

(declare-fun res!1862049 () Bool)

(declare-fun e!2792574 () Bool)

(assert (=> b!4483747 (=> (not res!1862049) (not e!2792574))))

(declare-fun lm!1477 () ListLongMap!2793)

(declare-fun key!3287 () K!11833)

(declare-datatypes ((ListMap!3423 0))(
  ( (ListMap!3424 (toList!4162 List!50544)) )
))
(declare-fun contains!13030 (ListMap!3423 K!11833) Bool)

(declare-fun extractMap!1133 (List!50545) ListMap!3423)

(assert (=> b!4483747 (= res!1862049 (contains!13030 (extractMap!1133 (toList!4161 lm!1477)) key!3287))))

(declare-fun b!4483748 () Bool)

(declare-fun res!1862053 () Bool)

(assert (=> b!4483748 (=> (not res!1862053) (not e!2792574))))

(declare-datatypes ((Hashable!5472 0))(
  ( (HashableExt!5471 (__x!31175 Int)) )
))
(declare-fun hashF!1107 () Hashable!5472)

(declare-fun allKeysSameHashInMap!1184 (ListLongMap!2793 Hashable!5472) Bool)

(assert (=> b!4483748 (= res!1862053 (allKeysSameHashInMap!1184 lm!1477 hashF!1107))))

(declare-fun b!4483749 () Bool)

(declare-fun Unit!89980 () Unit!89977)

(assert (=> b!4483749 (= e!2792580 Unit!89980)))

(declare-fun lt!1669891 () Unit!89977)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!65 (ListLongMap!2793 K!11833 Hashable!5472) Unit!89977)

(assert (=> b!4483749 (= lt!1669891 (lemmaNotInItsHashBucketThenNotInMap!65 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4483749 false))

(declare-fun b!4483750 () Bool)

(declare-fun res!1862051 () Bool)

(declare-fun e!2792577 () Bool)

(assert (=> b!4483750 (=> res!1862051 e!2792577)))

(assert (=> b!4483750 (= res!1862051 (or (is-Nil!50421 (toList!4161 lm!1477)) (= (_1!28666 (h!56214 (toList!4161 lm!1477))) hash!344)))))

(declare-fun b!4483751 () Bool)

(assert (=> b!4483751 (= e!2792577 e!2792576)))

(declare-fun res!1862047 () Bool)

(assert (=> b!4483751 (=> res!1862047 e!2792576)))

(declare-fun contains!13031 (ListLongMap!2793 (_ BitVec 64)) Bool)

(assert (=> b!4483751 (= res!1862047 (not (contains!13031 lt!1669889 hash!344)))))

(declare-fun tail!7592 (ListLongMap!2793) ListLongMap!2793)

(assert (=> b!4483751 (= lt!1669889 (tail!7592 lm!1477))))

(declare-fun b!4483752 () Bool)

(declare-fun res!1862052 () Bool)

(assert (=> b!4483752 (=> res!1862052 e!2792576)))

(declare-fun lt!1669894 () tuple2!50744)

(declare-fun contains!13032 (List!50545 tuple2!50744) Bool)

(assert (=> b!4483752 (= res!1862052 (not (contains!13032 (t!357499 (toList!4161 lm!1477)) lt!1669894)))))

(declare-fun b!4483753 () Bool)

(declare-fun e!2792581 () Bool)

(assert (=> b!4483753 (= e!2792574 e!2792581)))

(declare-fun res!1862043 () Bool)

(assert (=> b!4483753 (=> (not res!1862043) (not e!2792581))))

(declare-fun lt!1669895 () (_ BitVec 64))

(assert (=> b!4483753 (= res!1862043 (= lt!1669895 hash!344))))

(declare-fun hash!2580 (Hashable!5472 K!11833) (_ BitVec 64))

(assert (=> b!4483753 (= lt!1669895 (hash!2580 hashF!1107 key!3287))))

(declare-fun tp_is_empty!27587 () Bool)

(declare-fun tp_is_empty!27585 () Bool)

(declare-fun b!4483754 () Bool)

(declare-fun tp!1336871 () Bool)

(declare-fun e!2792579 () Bool)

(assert (=> b!4483754 (= e!2792579 (and tp_is_empty!27585 tp_is_empty!27587 tp!1336871))))

(declare-fun b!4483755 () Bool)

(declare-fun res!1862046 () Bool)

(assert (=> b!4483755 (=> res!1862046 e!2792577)))

(declare-fun newBucket!178 () List!50544)

(declare-fun noDuplicateKeys!1077 (List!50544) Bool)

(assert (=> b!4483755 (= res!1862046 (not (noDuplicateKeys!1077 newBucket!178)))))

(declare-fun b!4483756 () Bool)

(declare-fun res!1862045 () Bool)

(assert (=> b!4483756 (=> (not res!1862045) (not e!2792581))))

(declare-fun allKeysSameHash!931 (List!50544 (_ BitVec 64) Hashable!5472) Bool)

(assert (=> b!4483756 (= res!1862045 (allKeysSameHash!931 newBucket!178 hash!344 hashF!1107))))

(declare-fun res!1862050 () Bool)

(assert (=> start!441350 (=> (not res!1862050) (not e!2792574))))

(declare-fun lambda!165982 () Int)

(declare-fun forall!10083 (List!50545 Int) Bool)

(assert (=> start!441350 (= res!1862050 (forall!10083 (toList!4161 lm!1477) lambda!165982))))

(assert (=> start!441350 e!2792574))

(assert (=> start!441350 true))

(declare-fun e!2792575 () Bool)

(declare-fun inv!66018 (ListLongMap!2793) Bool)

(assert (=> start!441350 (and (inv!66018 lm!1477) e!2792575)))

(assert (=> start!441350 tp_is_empty!27585))

(assert (=> start!441350 e!2792579))

(declare-fun b!4483757 () Bool)

(declare-fun e!2792578 () Bool)

(declare-fun isEmpty!28526 (ListLongMap!2793) Bool)

(assert (=> b!4483757 (= e!2792578 (not (isEmpty!28526 lm!1477)))))

(declare-fun b!4483758 () Bool)

(declare-fun tp!1336870 () Bool)

(assert (=> b!4483758 (= e!2792575 tp!1336870)))

(declare-fun b!4483759 () Bool)

(assert (=> b!4483759 (= e!2792576 e!2792578)))

(declare-fun res!1862048 () Bool)

(assert (=> b!4483759 (=> res!1862048 e!2792578)))

(declare-fun lt!1669890 () Bool)

(assert (=> b!4483759 (= res!1862048 lt!1669890)))

(declare-fun lt!1669893 () Unit!89977)

(assert (=> b!4483759 (= lt!1669893 e!2792580)))

(declare-fun c!763722 () Bool)

(assert (=> b!4483759 (= c!763722 lt!1669890)))

(declare-fun containsKey!1577 (List!50544 K!11833) Bool)

(assert (=> b!4483759 (= lt!1669890 (not (containsKey!1577 lt!1669896 key!3287)))))

(declare-fun b!4483760 () Bool)

(assert (=> b!4483760 (= e!2792581 (not e!2792577))))

(declare-fun res!1862054 () Bool)

(assert (=> b!4483760 (=> res!1862054 e!2792577)))

(declare-fun removePairForKey!704 (List!50544 K!11833) List!50544)

(assert (=> b!4483760 (= res!1862054 (not (= newBucket!178 (removePairForKey!704 lt!1669896 key!3287))))))

(declare-fun lt!1669887 () Unit!89977)

(declare-fun forallContained!2344 (List!50545 Int tuple2!50744) Unit!89977)

(assert (=> b!4483760 (= lt!1669887 (forallContained!2344 (toList!4161 lm!1477) lambda!165982 lt!1669894))))

(assert (=> b!4483760 (contains!13032 (toList!4161 lm!1477) lt!1669894)))

(assert (=> b!4483760 (= lt!1669894 (tuple2!50745 hash!344 lt!1669896))))

(declare-fun lt!1669892 () Unit!89977)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!589 (List!50545 (_ BitVec 64) List!50544) Unit!89977)

(assert (=> b!4483760 (= lt!1669892 (lemmaGetValueByKeyImpliesContainsTuple!589 (toList!4161 lm!1477) hash!344 lt!1669896))))

(assert (=> b!4483760 (= lt!1669896 (apply!11814 lm!1477 hash!344))))

(assert (=> b!4483760 (contains!13031 lm!1477 lt!1669895)))

(declare-fun lt!1669888 () Unit!89977)

(declare-fun lemmaInGenMapThenLongMapContainsHash!151 (ListLongMap!2793 K!11833 Hashable!5472) Unit!89977)

(assert (=> b!4483760 (= lt!1669888 (lemmaInGenMapThenLongMapContainsHash!151 lm!1477 key!3287 hashF!1107))))

(assert (= (and start!441350 res!1862050) b!4483748))

(assert (= (and b!4483748 res!1862053) b!4483747))

(assert (= (and b!4483747 res!1862049) b!4483753))

(assert (= (and b!4483753 res!1862043) b!4483756))

(assert (= (and b!4483756 res!1862045) b!4483760))

(assert (= (and b!4483760 (not res!1862054)) b!4483755))

(assert (= (and b!4483755 (not res!1862046)) b!4483750))

(assert (= (and b!4483750 (not res!1862051)) b!4483751))

(assert (= (and b!4483751 (not res!1862047)) b!4483746))

(assert (= (and b!4483746 (not res!1862044)) b!4483752))

(assert (= (and b!4483752 (not res!1862052)) b!4483759))

(assert (= (and b!4483759 c!763722) b!4483749))

(assert (= (and b!4483759 (not c!763722)) b!4483745))

(assert (= (and b!4483759 (not res!1862048)) b!4483757))

(assert (= start!441350 b!4483758))

(assert (= (and start!441350 (is-Cons!50420 newBucket!178)) b!4483754))

(declare-fun m!5204275 () Bool)

(assert (=> b!4483746 m!5204275))

(declare-fun m!5204277 () Bool)

(assert (=> b!4483755 m!5204277))

(declare-fun m!5204279 () Bool)

(assert (=> b!4483749 m!5204279))

(declare-fun m!5204281 () Bool)

(assert (=> b!4483752 m!5204281))

(declare-fun m!5204283 () Bool)

(assert (=> b!4483760 m!5204283))

(declare-fun m!5204285 () Bool)

(assert (=> b!4483760 m!5204285))

(declare-fun m!5204287 () Bool)

(assert (=> b!4483760 m!5204287))

(declare-fun m!5204289 () Bool)

(assert (=> b!4483760 m!5204289))

(declare-fun m!5204291 () Bool)

(assert (=> b!4483760 m!5204291))

(declare-fun m!5204293 () Bool)

(assert (=> b!4483760 m!5204293))

(declare-fun m!5204295 () Bool)

(assert (=> b!4483760 m!5204295))

(declare-fun m!5204297 () Bool)

(assert (=> b!4483751 m!5204297))

(declare-fun m!5204299 () Bool)

(assert (=> b!4483751 m!5204299))

(declare-fun m!5204301 () Bool)

(assert (=> b!4483756 m!5204301))

(declare-fun m!5204303 () Bool)

(assert (=> b!4483753 m!5204303))

(declare-fun m!5204305 () Bool)

(assert (=> b!4483759 m!5204305))

(declare-fun m!5204307 () Bool)

(assert (=> b!4483757 m!5204307))

(declare-fun m!5204309 () Bool)

(assert (=> start!441350 m!5204309))

(declare-fun m!5204311 () Bool)

(assert (=> start!441350 m!5204311))

(declare-fun m!5204313 () Bool)

(assert (=> b!4483748 m!5204313))

(declare-fun m!5204315 () Bool)

(assert (=> b!4483747 m!5204315))

(assert (=> b!4483747 m!5204315))

(declare-fun m!5204317 () Bool)

(assert (=> b!4483747 m!5204317))

(push 1)

(assert tp_is_empty!27587)

(assert (not b!4483747))

(assert (not b!4483756))

(assert (not b!4483748))

(assert tp_is_empty!27585)

(assert (not b!4483757))

(assert (not b!4483760))

(assert (not b!4483746))

(assert (not b!4483759))

(assert (not b!4483751))

(assert (not b!4483755))

(assert (not b!4483753))

(assert (not b!4483758))

(assert (not b!4483752))

(assert (not b!4483749))

(assert (not b!4483754))

(assert (not start!441350))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1372483 () Bool)

(declare-fun e!2792610 () Bool)

(assert (=> d!1372483 e!2792610))

(declare-fun res!1862093 () Bool)

(assert (=> d!1372483 (=> res!1862093 e!2792610)))

(declare-fun lt!1669936 () Bool)

(assert (=> d!1372483 (= res!1862093 (not lt!1669936))))

(declare-fun lt!1669935 () Bool)

(assert (=> d!1372483 (= lt!1669936 lt!1669935)))

(declare-fun lt!1669938 () Unit!89977)

(declare-fun e!2792611 () Unit!89977)

(assert (=> d!1372483 (= lt!1669938 e!2792611)))

(declare-fun c!763728 () Bool)

(assert (=> d!1372483 (= c!763728 lt!1669935)))

(declare-fun containsKey!1579 (List!50545 (_ BitVec 64)) Bool)

(assert (=> d!1372483 (= lt!1669935 (containsKey!1579 (toList!4161 lt!1669889) hash!344))))

(assert (=> d!1372483 (= (contains!13031 lt!1669889 hash!344) lt!1669936)))

(declare-fun b!4483815 () Bool)

(declare-fun lt!1669937 () Unit!89977)

(assert (=> b!4483815 (= e!2792611 lt!1669937)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!874 (List!50545 (_ BitVec 64)) Unit!89977)

(assert (=> b!4483815 (= lt!1669937 (lemmaContainsKeyImpliesGetValueByKeyDefined!874 (toList!4161 lt!1669889) hash!344))))

(declare-datatypes ((Option!10984 0))(
  ( (None!10983) (Some!10983 (v!44382 List!50544)) )
))
(declare-fun isDefined!8271 (Option!10984) Bool)

(declare-fun getValueByKey!970 (List!50545 (_ BitVec 64)) Option!10984)

(assert (=> b!4483815 (isDefined!8271 (getValueByKey!970 (toList!4161 lt!1669889) hash!344))))

(declare-fun b!4483816 () Bool)

(declare-fun Unit!89985 () Unit!89977)

(assert (=> b!4483816 (= e!2792611 Unit!89985)))

(declare-fun b!4483817 () Bool)

(assert (=> b!4483817 (= e!2792610 (isDefined!8271 (getValueByKey!970 (toList!4161 lt!1669889) hash!344)))))

(assert (= (and d!1372483 c!763728) b!4483815))

(assert (= (and d!1372483 (not c!763728)) b!4483816))

(assert (= (and d!1372483 (not res!1862093)) b!4483817))

(declare-fun m!5204363 () Bool)

(assert (=> d!1372483 m!5204363))

(declare-fun m!5204365 () Bool)

(assert (=> b!4483815 m!5204365))

(declare-fun m!5204367 () Bool)

(assert (=> b!4483815 m!5204367))

(assert (=> b!4483815 m!5204367))

(declare-fun m!5204369 () Bool)

(assert (=> b!4483815 m!5204369))

(assert (=> b!4483817 m!5204367))

(assert (=> b!4483817 m!5204367))

(assert (=> b!4483817 m!5204369))

(assert (=> b!4483751 d!1372483))

(declare-fun d!1372485 () Bool)

(declare-fun tail!7594 (List!50545) List!50545)

(assert (=> d!1372485 (= (tail!7592 lm!1477) (ListLongMap!2794 (tail!7594 (toList!4161 lm!1477))))))

(declare-fun bs!825647 () Bool)

(assert (= bs!825647 d!1372485))

(declare-fun m!5204371 () Bool)

(assert (=> bs!825647 m!5204371))

(assert (=> b!4483751 d!1372485))

(declare-fun d!1372487 () Bool)

(declare-fun lt!1669941 () Bool)

(declare-fun content!8184 (List!50545) (Set tuple2!50744))

(assert (=> d!1372487 (= lt!1669941 (set.member lt!1669894 (content!8184 (t!357499 (toList!4161 lm!1477)))))))

(declare-fun e!2792616 () Bool)

(assert (=> d!1372487 (= lt!1669941 e!2792616)))

(declare-fun res!1862099 () Bool)

(assert (=> d!1372487 (=> (not res!1862099) (not e!2792616))))

(assert (=> d!1372487 (= res!1862099 (is-Cons!50421 (t!357499 (toList!4161 lm!1477))))))

(assert (=> d!1372487 (= (contains!13032 (t!357499 (toList!4161 lm!1477)) lt!1669894) lt!1669941)))

(declare-fun b!4483822 () Bool)

(declare-fun e!2792617 () Bool)

(assert (=> b!4483822 (= e!2792616 e!2792617)))

(declare-fun res!1862098 () Bool)

(assert (=> b!4483822 (=> res!1862098 e!2792617)))

(assert (=> b!4483822 (= res!1862098 (= (h!56214 (t!357499 (toList!4161 lm!1477))) lt!1669894))))

(declare-fun b!4483823 () Bool)

(assert (=> b!4483823 (= e!2792617 (contains!13032 (t!357499 (t!357499 (toList!4161 lm!1477))) lt!1669894))))

(assert (= (and d!1372487 res!1862099) b!4483822))

(assert (= (and b!4483822 (not res!1862098)) b!4483823))

(declare-fun m!5204373 () Bool)

(assert (=> d!1372487 m!5204373))

(declare-fun m!5204375 () Bool)

(assert (=> d!1372487 m!5204375))

(declare-fun m!5204377 () Bool)

(assert (=> b!4483823 m!5204377))

(assert (=> b!4483752 d!1372487))

(declare-fun d!1372489 () Bool)

(declare-fun hash!2582 (Hashable!5472 K!11833) (_ BitVec 64))

(assert (=> d!1372489 (= (hash!2580 hashF!1107 key!3287) (hash!2582 hashF!1107 key!3287))))

(declare-fun bs!825648 () Bool)

(assert (= bs!825648 d!1372489))

(declare-fun m!5204379 () Bool)

(assert (=> bs!825648 m!5204379))

(assert (=> b!4483753 d!1372489))

(declare-fun d!1372491 () Bool)

(declare-fun res!1862104 () Bool)

(declare-fun e!2792622 () Bool)

(assert (=> d!1372491 (=> res!1862104 e!2792622)))

(assert (=> d!1372491 (= res!1862104 (not (is-Cons!50420 newBucket!178)))))

(assert (=> d!1372491 (= (noDuplicateKeys!1077 newBucket!178) e!2792622)))

(declare-fun b!4483828 () Bool)

(declare-fun e!2792623 () Bool)

(assert (=> b!4483828 (= e!2792622 e!2792623)))

(declare-fun res!1862105 () Bool)

(assert (=> b!4483828 (=> (not res!1862105) (not e!2792623))))

(assert (=> b!4483828 (= res!1862105 (not (containsKey!1577 (t!357498 newBucket!178) (_1!28665 (h!56213 newBucket!178)))))))

(declare-fun b!4483829 () Bool)

(assert (=> b!4483829 (= e!2792623 (noDuplicateKeys!1077 (t!357498 newBucket!178)))))

(assert (= (and d!1372491 (not res!1862104)) b!4483828))

(assert (= (and b!4483828 res!1862105) b!4483829))

(declare-fun m!5204381 () Bool)

(assert (=> b!4483828 m!5204381))

(declare-fun m!5204383 () Bool)

(assert (=> b!4483829 m!5204383))

(assert (=> b!4483755 d!1372491))

(declare-fun d!1372493 () Bool)

(declare-fun get!16454 (Option!10984) List!50544)

(assert (=> d!1372493 (= (apply!11814 lt!1669889 hash!344) (get!16454 (getValueByKey!970 (toList!4161 lt!1669889) hash!344)))))

(declare-fun bs!825649 () Bool)

(assert (= bs!825649 d!1372493))

(assert (=> bs!825649 m!5204367))

(assert (=> bs!825649 m!5204367))

(declare-fun m!5204385 () Bool)

(assert (=> bs!825649 m!5204385))

(assert (=> b!4483746 d!1372493))

(declare-fun d!1372495 () Bool)

(assert (=> d!1372495 true))

(assert (=> d!1372495 true))

(declare-fun lambda!165990 () Int)

(declare-fun forall!10085 (List!50544 Int) Bool)

(assert (=> d!1372495 (= (allKeysSameHash!931 newBucket!178 hash!344 hashF!1107) (forall!10085 newBucket!178 lambda!165990))))

(declare-fun bs!825650 () Bool)

(assert (= bs!825650 d!1372495))

(declare-fun m!5204387 () Bool)

(assert (=> bs!825650 m!5204387))

(assert (=> b!4483756 d!1372495))

(declare-fun bm!312153 () Bool)

(declare-fun call!312158 () Bool)

(declare-datatypes ((List!50548 0))(
  ( (Nil!50424) (Cons!50424 (h!56219 K!11833) (t!357502 List!50548)) )
))
(declare-fun e!2792649 () List!50548)

(declare-fun contains!13036 (List!50548 K!11833) Bool)

(assert (=> bm!312153 (= call!312158 (contains!13036 e!2792649 key!3287))))

(declare-fun c!763735 () Bool)

(declare-fun c!763736 () Bool)

(assert (=> bm!312153 (= c!763735 c!763736)))

(declare-fun b!4483864 () Bool)

(declare-fun e!2792653 () Unit!89977)

(declare-fun lt!1669966 () Unit!89977)

(assert (=> b!4483864 (= e!2792653 lt!1669966)))

(declare-fun lt!1669964 () Unit!89977)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!875 (List!50544 K!11833) Unit!89977)

(assert (=> b!4483864 (= lt!1669964 (lemmaContainsKeyImpliesGetValueByKeyDefined!875 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))) key!3287))))

(declare-datatypes ((Option!10985 0))(
  ( (None!10984) (Some!10984 (v!44383 V!12079)) )
))
(declare-fun isDefined!8272 (Option!10985) Bool)

(declare-fun getValueByKey!971 (List!50544 K!11833) Option!10985)

(assert (=> b!4483864 (isDefined!8272 (getValueByKey!971 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))) key!3287))))

(declare-fun lt!1669965 () Unit!89977)

(assert (=> b!4483864 (= lt!1669965 lt!1669964)))

(declare-fun lemmaInListThenGetKeysListContains!400 (List!50544 K!11833) Unit!89977)

(assert (=> b!4483864 (= lt!1669966 (lemmaInListThenGetKeysListContains!400 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))) key!3287))))

(assert (=> b!4483864 call!312158))

(declare-fun b!4483865 () Bool)

(declare-fun e!2792648 () Bool)

(declare-fun keys!17447 (ListMap!3423) List!50548)

(assert (=> b!4483865 (= e!2792648 (not (contains!13036 (keys!17447 (extractMap!1133 (toList!4161 lm!1477))) key!3287)))))

(declare-fun b!4483866 () Bool)

(declare-fun e!2792651 () Bool)

(assert (=> b!4483866 (= e!2792651 (contains!13036 (keys!17447 (extractMap!1133 (toList!4161 lm!1477))) key!3287))))

(declare-fun b!4483867 () Bool)

(declare-fun getKeysList!404 (List!50544) List!50548)

(assert (=> b!4483867 (= e!2792649 (getKeysList!404 (toList!4162 (extractMap!1133 (toList!4161 lm!1477)))))))

(declare-fun b!4483868 () Bool)

(declare-fun e!2792650 () Bool)

(assert (=> b!4483868 (= e!2792650 e!2792651)))

(declare-fun res!1862126 () Bool)

(assert (=> b!4483868 (=> (not res!1862126) (not e!2792651))))

(assert (=> b!4483868 (= res!1862126 (isDefined!8272 (getValueByKey!971 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))) key!3287)))))

(declare-fun b!4483869 () Bool)

(assert (=> b!4483869 false))

(declare-fun lt!1669961 () Unit!89977)

(declare-fun lt!1669962 () Unit!89977)

(assert (=> b!4483869 (= lt!1669961 lt!1669962)))

(declare-fun containsKey!1580 (List!50544 K!11833) Bool)

(assert (=> b!4483869 (containsKey!1580 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!403 (List!50544 K!11833) Unit!89977)

(assert (=> b!4483869 (= lt!1669962 (lemmaInGetKeysListThenContainsKey!403 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))) key!3287))))

(declare-fun e!2792652 () Unit!89977)

(declare-fun Unit!89986 () Unit!89977)

(assert (=> b!4483869 (= e!2792652 Unit!89986)))

(declare-fun d!1372499 () Bool)

(assert (=> d!1372499 e!2792650))

(declare-fun res!1862125 () Bool)

(assert (=> d!1372499 (=> res!1862125 e!2792650)))

(assert (=> d!1372499 (= res!1862125 e!2792648)))

(declare-fun res!1862124 () Bool)

(assert (=> d!1372499 (=> (not res!1862124) (not e!2792648))))

(declare-fun lt!1669963 () Bool)

(assert (=> d!1372499 (= res!1862124 (not lt!1669963))))

(declare-fun lt!1669967 () Bool)

(assert (=> d!1372499 (= lt!1669963 lt!1669967)))

(declare-fun lt!1669968 () Unit!89977)

(assert (=> d!1372499 (= lt!1669968 e!2792653)))

(assert (=> d!1372499 (= c!763736 lt!1669967)))

(assert (=> d!1372499 (= lt!1669967 (containsKey!1580 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))) key!3287))))

(assert (=> d!1372499 (= (contains!13030 (extractMap!1133 (toList!4161 lm!1477)) key!3287) lt!1669963)))

(declare-fun b!4483870 () Bool)

(declare-fun Unit!89987 () Unit!89977)

(assert (=> b!4483870 (= e!2792652 Unit!89987)))

(declare-fun b!4483871 () Bool)

(assert (=> b!4483871 (= e!2792653 e!2792652)))

(declare-fun c!763737 () Bool)

(assert (=> b!4483871 (= c!763737 call!312158)))

(declare-fun b!4483872 () Bool)

(assert (=> b!4483872 (= e!2792649 (keys!17447 (extractMap!1133 (toList!4161 lm!1477))))))

(assert (= (and d!1372499 c!763736) b!4483864))

(assert (= (and d!1372499 (not c!763736)) b!4483871))

(assert (= (and b!4483871 c!763737) b!4483869))

(assert (= (and b!4483871 (not c!763737)) b!4483870))

(assert (= (or b!4483864 b!4483871) bm!312153))

(assert (= (and bm!312153 c!763735) b!4483867))

(assert (= (and bm!312153 (not c!763735)) b!4483872))

(assert (= (and d!1372499 res!1862124) b!4483865))

(assert (= (and d!1372499 (not res!1862125)) b!4483868))

(assert (= (and b!4483868 res!1862126) b!4483866))

(assert (=> b!4483872 m!5204315))

(declare-fun m!5204399 () Bool)

(assert (=> b!4483872 m!5204399))

(assert (=> b!4483866 m!5204315))

(assert (=> b!4483866 m!5204399))

(assert (=> b!4483866 m!5204399))

(declare-fun m!5204401 () Bool)

(assert (=> b!4483866 m!5204401))

(declare-fun m!5204403 () Bool)

(assert (=> b!4483864 m!5204403))

(declare-fun m!5204405 () Bool)

(assert (=> b!4483864 m!5204405))

(assert (=> b!4483864 m!5204405))

(declare-fun m!5204407 () Bool)

(assert (=> b!4483864 m!5204407))

(declare-fun m!5204409 () Bool)

(assert (=> b!4483864 m!5204409))

(assert (=> b!4483868 m!5204405))

(assert (=> b!4483868 m!5204405))

(assert (=> b!4483868 m!5204407))

(declare-fun m!5204411 () Bool)

(assert (=> d!1372499 m!5204411))

(declare-fun m!5204413 () Bool)

(assert (=> bm!312153 m!5204413))

(assert (=> b!4483869 m!5204411))

(declare-fun m!5204415 () Bool)

(assert (=> b!4483869 m!5204415))

(declare-fun m!5204417 () Bool)

(assert (=> b!4483867 m!5204417))

(assert (=> b!4483865 m!5204315))

(assert (=> b!4483865 m!5204399))

(assert (=> b!4483865 m!5204399))

(assert (=> b!4483865 m!5204401))

(assert (=> b!4483747 d!1372499))

(declare-fun bs!825652 () Bool)

(declare-fun d!1372507 () Bool)

(assert (= bs!825652 (and d!1372507 start!441350)))

(declare-fun lambda!165993 () Int)

(assert (=> bs!825652 (= lambda!165993 lambda!165982)))

(declare-fun lt!1669979 () ListMap!3423)

(declare-fun invariantList!956 (List!50544) Bool)

(assert (=> d!1372507 (invariantList!956 (toList!4162 lt!1669979))))

(declare-fun e!2792660 () ListMap!3423)

(assert (=> d!1372507 (= lt!1669979 e!2792660)))

(declare-fun c!763742 () Bool)

(assert (=> d!1372507 (= c!763742 (is-Cons!50421 (toList!4161 lm!1477)))))

(assert (=> d!1372507 (forall!10083 (toList!4161 lm!1477) lambda!165993)))

(assert (=> d!1372507 (= (extractMap!1133 (toList!4161 lm!1477)) lt!1669979)))

(declare-fun b!4483883 () Bool)

(declare-fun addToMapMapFromBucket!624 (List!50544 ListMap!3423) ListMap!3423)

(assert (=> b!4483883 (= e!2792660 (addToMapMapFromBucket!624 (_2!28666 (h!56214 (toList!4161 lm!1477))) (extractMap!1133 (t!357499 (toList!4161 lm!1477)))))))

(declare-fun b!4483884 () Bool)

(assert (=> b!4483884 (= e!2792660 (ListMap!3424 Nil!50420))))

(assert (= (and d!1372507 c!763742) b!4483883))

(assert (= (and d!1372507 (not c!763742)) b!4483884))

(declare-fun m!5204419 () Bool)

(assert (=> d!1372507 m!5204419))

(declare-fun m!5204421 () Bool)

(assert (=> d!1372507 m!5204421))

(declare-fun m!5204423 () Bool)

(assert (=> b!4483883 m!5204423))

(assert (=> b!4483883 m!5204423))

(declare-fun m!5204425 () Bool)

(assert (=> b!4483883 m!5204425))

(assert (=> b!4483747 d!1372507))

(declare-fun d!1372509 () Bool)

(declare-fun res!1862134 () Bool)

(declare-fun e!2792667 () Bool)

(assert (=> d!1372509 (=> res!1862134 e!2792667)))

(assert (=> d!1372509 (= res!1862134 (is-Nil!50421 (toList!4161 lm!1477)))))

(assert (=> d!1372509 (= (forall!10083 (toList!4161 lm!1477) lambda!165982) e!2792667)))

(declare-fun b!4483892 () Bool)

(declare-fun e!2792668 () Bool)

(assert (=> b!4483892 (= e!2792667 e!2792668)))

(declare-fun res!1862135 () Bool)

(assert (=> b!4483892 (=> (not res!1862135) (not e!2792668))))

(declare-fun dynLambda!21057 (Int tuple2!50744) Bool)

(assert (=> b!4483892 (= res!1862135 (dynLambda!21057 lambda!165982 (h!56214 (toList!4161 lm!1477))))))

(declare-fun b!4483893 () Bool)

(assert (=> b!4483893 (= e!2792668 (forall!10083 (t!357499 (toList!4161 lm!1477)) lambda!165982))))

(assert (= (and d!1372509 (not res!1862134)) b!4483892))

(assert (= (and b!4483892 res!1862135) b!4483893))

(declare-fun b_lambda!150481 () Bool)

(assert (=> (not b_lambda!150481) (not b!4483892)))

(declare-fun m!5204433 () Bool)

(assert (=> b!4483892 m!5204433))

(declare-fun m!5204435 () Bool)

(assert (=> b!4483893 m!5204435))

(assert (=> start!441350 d!1372509))

(declare-fun d!1372511 () Bool)

(declare-fun isStrictlySorted!370 (List!50545) Bool)

(assert (=> d!1372511 (= (inv!66018 lm!1477) (isStrictlySorted!370 (toList!4161 lm!1477)))))

(declare-fun bs!825653 () Bool)

(assert (= bs!825653 d!1372511))

(declare-fun m!5204439 () Bool)

(assert (=> bs!825653 m!5204439))

(assert (=> start!441350 d!1372511))

(declare-fun d!1372515 () Bool)

(declare-fun isEmpty!28528 (List!50545) Bool)

(assert (=> d!1372515 (= (isEmpty!28526 lm!1477) (isEmpty!28528 (toList!4161 lm!1477)))))

(declare-fun bs!825654 () Bool)

(assert (= bs!825654 d!1372515))

(declare-fun m!5204441 () Bool)

(assert (=> bs!825654 m!5204441))

(assert (=> b!4483757 d!1372515))

(declare-fun d!1372517 () Bool)

(declare-fun res!1862140 () Bool)

(declare-fun e!2792673 () Bool)

(assert (=> d!1372517 (=> res!1862140 e!2792673)))

(assert (=> d!1372517 (= res!1862140 (and (is-Cons!50420 lt!1669896) (= (_1!28665 (h!56213 lt!1669896)) key!3287)))))

(assert (=> d!1372517 (= (containsKey!1577 lt!1669896 key!3287) e!2792673)))

(declare-fun b!4483898 () Bool)

(declare-fun e!2792674 () Bool)

(assert (=> b!4483898 (= e!2792673 e!2792674)))

(declare-fun res!1862141 () Bool)

(assert (=> b!4483898 (=> (not res!1862141) (not e!2792674))))

(assert (=> b!4483898 (= res!1862141 (is-Cons!50420 lt!1669896))))

(declare-fun b!4483899 () Bool)

(assert (=> b!4483899 (= e!2792674 (containsKey!1577 (t!357498 lt!1669896) key!3287))))

(assert (= (and d!1372517 (not res!1862140)) b!4483898))

(assert (= (and b!4483898 res!1862141) b!4483899))

(declare-fun m!5204445 () Bool)

(assert (=> b!4483899 m!5204445))

(assert (=> b!4483759 d!1372517))

(declare-fun bs!825656 () Bool)

(declare-fun d!1372521 () Bool)

(assert (= bs!825656 (and d!1372521 start!441350)))

(declare-fun lambda!165996 () Int)

(assert (=> bs!825656 (not (= lambda!165996 lambda!165982))))

(declare-fun bs!825657 () Bool)

(assert (= bs!825657 (and d!1372521 d!1372507)))

(assert (=> bs!825657 (not (= lambda!165996 lambda!165993))))

(assert (=> d!1372521 true))

(assert (=> d!1372521 (= (allKeysSameHashInMap!1184 lm!1477 hashF!1107) (forall!10083 (toList!4161 lm!1477) lambda!165996))))

(declare-fun bs!825658 () Bool)

(assert (= bs!825658 d!1372521))

(declare-fun m!5204447 () Bool)

(assert (=> bs!825658 m!5204447))

(assert (=> b!4483748 d!1372521))

(declare-fun bs!825662 () Bool)

(declare-fun d!1372523 () Bool)

(assert (= bs!825662 (and d!1372523 start!441350)))

(declare-fun lambda!166002 () Int)

(assert (=> bs!825662 (= lambda!166002 lambda!165982)))

(declare-fun bs!825663 () Bool)

(assert (= bs!825663 (and d!1372523 d!1372507)))

(assert (=> bs!825663 (= lambda!166002 lambda!165993)))

(declare-fun bs!825664 () Bool)

(assert (= bs!825664 (and d!1372523 d!1372521)))

(assert (=> bs!825664 (not (= lambda!166002 lambda!165996))))

(assert (=> d!1372523 (not (contains!13030 (extractMap!1133 (toList!4161 lm!1477)) key!3287))))

(declare-fun lt!1669986 () Unit!89977)

(declare-fun choose!28819 (ListLongMap!2793 K!11833 Hashable!5472) Unit!89977)

(assert (=> d!1372523 (= lt!1669986 (choose!28819 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1372523 (forall!10083 (toList!4161 lm!1477) lambda!166002)))

(assert (=> d!1372523 (= (lemmaNotInItsHashBucketThenNotInMap!65 lm!1477 key!3287 hashF!1107) lt!1669986)))

(declare-fun bs!825665 () Bool)

(assert (= bs!825665 d!1372523))

(assert (=> bs!825665 m!5204315))

(assert (=> bs!825665 m!5204315))

(assert (=> bs!825665 m!5204317))

(declare-fun m!5204457 () Bool)

(assert (=> bs!825665 m!5204457))

(declare-fun m!5204459 () Bool)

(assert (=> bs!825665 m!5204459))

(assert (=> b!4483749 d!1372523))

(declare-fun bs!825666 () Bool)

(declare-fun d!1372531 () Bool)

(assert (= bs!825666 (and d!1372531 start!441350)))

(declare-fun lambda!166007 () Int)

(assert (=> bs!825666 (= lambda!166007 lambda!165982)))

(declare-fun bs!825667 () Bool)

(assert (= bs!825667 (and d!1372531 d!1372507)))

(assert (=> bs!825667 (= lambda!166007 lambda!165993)))

(declare-fun bs!825668 () Bool)

(assert (= bs!825668 (and d!1372531 d!1372521)))

(assert (=> bs!825668 (not (= lambda!166007 lambda!165996))))

(declare-fun bs!825669 () Bool)

(assert (= bs!825669 (and d!1372531 d!1372523)))

(assert (=> bs!825669 (= lambda!166007 lambda!166002)))

(assert (=> d!1372531 (contains!13031 lm!1477 (hash!2580 hashF!1107 key!3287))))

(declare-fun lt!1669989 () Unit!89977)

(declare-fun choose!28820 (ListLongMap!2793 K!11833 Hashable!5472) Unit!89977)

(assert (=> d!1372531 (= lt!1669989 (choose!28820 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1372531 (forall!10083 (toList!4161 lm!1477) lambda!166007)))

(assert (=> d!1372531 (= (lemmaInGenMapThenLongMapContainsHash!151 lm!1477 key!3287 hashF!1107) lt!1669989)))

(declare-fun bs!825670 () Bool)

(assert (= bs!825670 d!1372531))

(assert (=> bs!825670 m!5204303))

(assert (=> bs!825670 m!5204303))

(declare-fun m!5204461 () Bool)

(assert (=> bs!825670 m!5204461))

(declare-fun m!5204463 () Bool)

(assert (=> bs!825670 m!5204463))

(declare-fun m!5204465 () Bool)

(assert (=> bs!825670 m!5204465))

(assert (=> b!4483760 d!1372531))

(declare-fun d!1372533 () Bool)

(assert (=> d!1372533 (= (apply!11814 lm!1477 hash!344) (get!16454 (getValueByKey!970 (toList!4161 lm!1477) hash!344)))))

(declare-fun bs!825671 () Bool)

(assert (= bs!825671 d!1372533))

(declare-fun m!5204467 () Bool)

(assert (=> bs!825671 m!5204467))

(assert (=> bs!825671 m!5204467))

(declare-fun m!5204469 () Bool)

(assert (=> bs!825671 m!5204469))

(assert (=> b!4483760 d!1372533))

(declare-fun d!1372535 () Bool)

(declare-fun e!2792681 () Bool)

(assert (=> d!1372535 e!2792681))

(declare-fun res!1862148 () Bool)

(assert (=> d!1372535 (=> res!1862148 e!2792681)))

(declare-fun lt!1669991 () Bool)

(assert (=> d!1372535 (= res!1862148 (not lt!1669991))))

(declare-fun lt!1669990 () Bool)

(assert (=> d!1372535 (= lt!1669991 lt!1669990)))

(declare-fun lt!1669993 () Unit!89977)

(declare-fun e!2792682 () Unit!89977)

(assert (=> d!1372535 (= lt!1669993 e!2792682)))

(declare-fun c!763744 () Bool)

(assert (=> d!1372535 (= c!763744 lt!1669990)))

(assert (=> d!1372535 (= lt!1669990 (containsKey!1579 (toList!4161 lm!1477) lt!1669895))))

(assert (=> d!1372535 (= (contains!13031 lm!1477 lt!1669895) lt!1669991)))

(declare-fun b!4483914 () Bool)

(declare-fun lt!1669992 () Unit!89977)

(assert (=> b!4483914 (= e!2792682 lt!1669992)))

(assert (=> b!4483914 (= lt!1669992 (lemmaContainsKeyImpliesGetValueByKeyDefined!874 (toList!4161 lm!1477) lt!1669895))))

(assert (=> b!4483914 (isDefined!8271 (getValueByKey!970 (toList!4161 lm!1477) lt!1669895))))

(declare-fun b!4483915 () Bool)

(declare-fun Unit!89988 () Unit!89977)

(assert (=> b!4483915 (= e!2792682 Unit!89988)))

(declare-fun b!4483916 () Bool)

(assert (=> b!4483916 (= e!2792681 (isDefined!8271 (getValueByKey!970 (toList!4161 lm!1477) lt!1669895)))))

(assert (= (and d!1372535 c!763744) b!4483914))

(assert (= (and d!1372535 (not c!763744)) b!4483915))

(assert (= (and d!1372535 (not res!1862148)) b!4483916))

(declare-fun m!5204473 () Bool)

(assert (=> d!1372535 m!5204473))

(declare-fun m!5204475 () Bool)

(assert (=> b!4483914 m!5204475))

(declare-fun m!5204477 () Bool)

(assert (=> b!4483914 m!5204477))

(assert (=> b!4483914 m!5204477))

(declare-fun m!5204479 () Bool)

(assert (=> b!4483914 m!5204479))

(assert (=> b!4483916 m!5204477))

(assert (=> b!4483916 m!5204477))

(assert (=> b!4483916 m!5204479))

(assert (=> b!4483760 d!1372535))

(declare-fun d!1372539 () Bool)

(assert (=> d!1372539 (contains!13032 (toList!4161 lm!1477) (tuple2!50745 hash!344 lt!1669896))))

(declare-fun lt!1669997 () Unit!89977)

(declare-fun choose!28821 (List!50545 (_ BitVec 64) List!50544) Unit!89977)

(assert (=> d!1372539 (= lt!1669997 (choose!28821 (toList!4161 lm!1477) hash!344 lt!1669896))))

(declare-fun e!2792687 () Bool)

(assert (=> d!1372539 e!2792687))

(declare-fun res!1862153 () Bool)

(assert (=> d!1372539 (=> (not res!1862153) (not e!2792687))))

(assert (=> d!1372539 (= res!1862153 (isStrictlySorted!370 (toList!4161 lm!1477)))))

(assert (=> d!1372539 (= (lemmaGetValueByKeyImpliesContainsTuple!589 (toList!4161 lm!1477) hash!344 lt!1669896) lt!1669997)))

(declare-fun b!4483921 () Bool)

(assert (=> b!4483921 (= e!2792687 (= (getValueByKey!970 (toList!4161 lm!1477) hash!344) (Some!10983 lt!1669896)))))

(assert (= (and d!1372539 res!1862153) b!4483921))

(declare-fun m!5204485 () Bool)

(assert (=> d!1372539 m!5204485))

(declare-fun m!5204487 () Bool)

(assert (=> d!1372539 m!5204487))

(assert (=> d!1372539 m!5204439))

(assert (=> b!4483921 m!5204467))

(assert (=> b!4483760 d!1372539))

(declare-fun d!1372543 () Bool)

(assert (=> d!1372543 (dynLambda!21057 lambda!165982 lt!1669894)))

(declare-fun lt!1670000 () Unit!89977)

(declare-fun choose!28822 (List!50545 Int tuple2!50744) Unit!89977)

(assert (=> d!1372543 (= lt!1670000 (choose!28822 (toList!4161 lm!1477) lambda!165982 lt!1669894))))

(declare-fun e!2792690 () Bool)

(assert (=> d!1372543 e!2792690))

(declare-fun res!1862156 () Bool)

(assert (=> d!1372543 (=> (not res!1862156) (not e!2792690))))

(assert (=> d!1372543 (= res!1862156 (forall!10083 (toList!4161 lm!1477) lambda!165982))))

(assert (=> d!1372543 (= (forallContained!2344 (toList!4161 lm!1477) lambda!165982 lt!1669894) lt!1670000)))

(declare-fun b!4483924 () Bool)

(assert (=> b!4483924 (= e!2792690 (contains!13032 (toList!4161 lm!1477) lt!1669894))))

(assert (= (and d!1372543 res!1862156) b!4483924))

(declare-fun b_lambda!150485 () Bool)

(assert (=> (not b_lambda!150485) (not d!1372543)))

(declare-fun m!5204489 () Bool)

(assert (=> d!1372543 m!5204489))

(declare-fun m!5204491 () Bool)

(assert (=> d!1372543 m!5204491))

(assert (=> d!1372543 m!5204309))

(assert (=> b!4483924 m!5204289))

(assert (=> b!4483760 d!1372543))

(declare-fun b!4483936 () Bool)

(declare-fun e!2792695 () List!50544)

(assert (=> b!4483936 (= e!2792695 Nil!50420)))

(declare-fun d!1372545 () Bool)

(declare-fun lt!1670005 () List!50544)

(assert (=> d!1372545 (not (containsKey!1577 lt!1670005 key!3287))))

(declare-fun e!2792696 () List!50544)

(assert (=> d!1372545 (= lt!1670005 e!2792696)))

(declare-fun c!763749 () Bool)

(assert (=> d!1372545 (= c!763749 (and (is-Cons!50420 lt!1669896) (= (_1!28665 (h!56213 lt!1669896)) key!3287)))))

(assert (=> d!1372545 (noDuplicateKeys!1077 lt!1669896)))

(assert (=> d!1372545 (= (removePairForKey!704 lt!1669896 key!3287) lt!1670005)))

(declare-fun b!4483934 () Bool)

(assert (=> b!4483934 (= e!2792696 e!2792695)))

(declare-fun c!763750 () Bool)

(assert (=> b!4483934 (= c!763750 (is-Cons!50420 lt!1669896))))

(declare-fun b!4483935 () Bool)

(assert (=> b!4483935 (= e!2792695 (Cons!50420 (h!56213 lt!1669896) (removePairForKey!704 (t!357498 lt!1669896) key!3287)))))

(declare-fun b!4483933 () Bool)

(assert (=> b!4483933 (= e!2792696 (t!357498 lt!1669896))))

(assert (= (and d!1372545 c!763749) b!4483933))

(assert (= (and d!1372545 (not c!763749)) b!4483934))

(assert (= (and b!4483934 c!763750) b!4483935))

(assert (= (and b!4483934 (not c!763750)) b!4483936))

(declare-fun m!5204493 () Bool)

(assert (=> d!1372545 m!5204493))

(declare-fun m!5204495 () Bool)

(assert (=> d!1372545 m!5204495))

(declare-fun m!5204497 () Bool)

(assert (=> b!4483935 m!5204497))

(assert (=> b!4483760 d!1372545))

(declare-fun d!1372547 () Bool)

(declare-fun lt!1670007 () Bool)

(assert (=> d!1372547 (= lt!1670007 (set.member lt!1669894 (content!8184 (toList!4161 lm!1477))))))

(declare-fun e!2792697 () Bool)

(assert (=> d!1372547 (= lt!1670007 e!2792697)))

(declare-fun res!1862158 () Bool)

(assert (=> d!1372547 (=> (not res!1862158) (not e!2792697))))

(assert (=> d!1372547 (= res!1862158 (is-Cons!50421 (toList!4161 lm!1477)))))

(assert (=> d!1372547 (= (contains!13032 (toList!4161 lm!1477) lt!1669894) lt!1670007)))

(declare-fun b!4483937 () Bool)

(declare-fun e!2792698 () Bool)

(assert (=> b!4483937 (= e!2792697 e!2792698)))

(declare-fun res!1862157 () Bool)

(assert (=> b!4483937 (=> res!1862157 e!2792698)))

(assert (=> b!4483937 (= res!1862157 (= (h!56214 (toList!4161 lm!1477)) lt!1669894))))

(declare-fun b!4483938 () Bool)

(assert (=> b!4483938 (= e!2792698 (contains!13032 (t!357499 (toList!4161 lm!1477)) lt!1669894))))

(assert (= (and d!1372547 res!1862158) b!4483937))

(assert (= (and b!4483937 (not res!1862157)) b!4483938))

(declare-fun m!5204499 () Bool)

(assert (=> d!1372547 m!5204499))

(declare-fun m!5204501 () Bool)

(assert (=> d!1372547 m!5204501))

(assert (=> b!4483938 m!5204281))

(assert (=> b!4483760 d!1372547))

(declare-fun b!4483943 () Bool)

(declare-fun e!2792701 () Bool)

(declare-fun tp!1336882 () Bool)

(declare-fun tp!1336883 () Bool)

(assert (=> b!4483943 (= e!2792701 (and tp!1336882 tp!1336883))))

(assert (=> b!4483758 (= tp!1336870 e!2792701)))

(assert (= (and b!4483758 (is-Cons!50421 (toList!4161 lm!1477))) b!4483943))

(declare-fun e!2792704 () Bool)

(declare-fun tp!1336886 () Bool)

(declare-fun b!4483948 () Bool)

(assert (=> b!4483948 (= e!2792704 (and tp_is_empty!27585 tp_is_empty!27587 tp!1336886))))

(assert (=> b!4483754 (= tp!1336871 e!2792704)))

(assert (= (and b!4483754 (is-Cons!50420 (t!357498 newBucket!178))) b!4483948))

(declare-fun b_lambda!150487 () Bool)

(assert (= b_lambda!150481 (or start!441350 b_lambda!150487)))

(declare-fun bs!825676 () Bool)

(declare-fun d!1372551 () Bool)

(assert (= bs!825676 (and d!1372551 start!441350)))

(assert (=> bs!825676 (= (dynLambda!21057 lambda!165982 (h!56214 (toList!4161 lm!1477))) (noDuplicateKeys!1077 (_2!28666 (h!56214 (toList!4161 lm!1477)))))))

(declare-fun m!5204509 () Bool)

(assert (=> bs!825676 m!5204509))

(assert (=> b!4483892 d!1372551))

(declare-fun b_lambda!150489 () Bool)

(assert (= b_lambda!150485 (or start!441350 b_lambda!150489)))

(declare-fun bs!825677 () Bool)

(declare-fun d!1372553 () Bool)

(assert (= bs!825677 (and d!1372553 start!441350)))

(assert (=> bs!825677 (= (dynLambda!21057 lambda!165982 lt!1669894) (noDuplicateKeys!1077 (_2!28666 lt!1669894)))))

(declare-fun m!5204511 () Bool)

(assert (=> bs!825677 m!5204511))

(assert (=> d!1372543 d!1372553))

(push 1)

(assert tp_is_empty!27587)

(assert (not b!4483829))

(assert (not d!1372485))

(assert (not d!1372523))

(assert (not d!1372521))

(assert (not d!1372495))

(assert (not b!4483948))

(assert (not bs!825677))

(assert (not d!1372507))

(assert (not b!4483815))

(assert (not d!1372543))

(assert (not b!4483921))

(assert (not d!1372493))

(assert tp_is_empty!27585)

(assert (not b!4483938))

(assert (not d!1372515))

(assert (not b!4483899))

(assert (not bs!825676))

(assert (not d!1372511))

(assert (not b!4483868))

(assert (not b!4483916))

(assert (not b!4483872))

(assert (not b!4483867))

(assert (not b!4483935))

(assert (not d!1372531))

(assert (not b_lambda!150487))

(assert (not bm!312153))

(assert (not d!1372539))

(assert (not b!4483817))

(assert (not d!1372535))

(assert (not b!4483924))

(assert (not d!1372487))

(assert (not d!1372483))

(assert (not b!4483865))

(assert (not b!4483828))

(assert (not b_lambda!150489))

(assert (not d!1372489))

(assert (not b!4483883))

(assert (not b!4483864))

(assert (not b!4483869))

(assert (not b!4483866))

(assert (not b!4483914))

(assert (not d!1372547))

(assert (not d!1372499))

(assert (not b!4483893))

(assert (not d!1372533))

(assert (not d!1372545))

(assert (not b!4483943))

(assert (not b!4483823))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!1372523 d!1372499))

(assert (=> d!1372523 d!1372507))

(declare-fun d!1372579 () Bool)

(assert (=> d!1372579 (not (contains!13030 (extractMap!1133 (toList!4161 lm!1477)) key!3287))))

(assert (=> d!1372579 true))

(declare-fun _$26!260 () Unit!89977)

(assert (=> d!1372579 (= (choose!28819 lm!1477 key!3287 hashF!1107) _$26!260)))

(declare-fun bs!825691 () Bool)

(assert (= bs!825691 d!1372579))

(assert (=> bs!825691 m!5204315))

(assert (=> bs!825691 m!5204315))

(assert (=> bs!825691 m!5204317))

(assert (=> d!1372523 d!1372579))

(declare-fun d!1372581 () Bool)

(declare-fun res!1862181 () Bool)

(declare-fun e!2792752 () Bool)

(assert (=> d!1372581 (=> res!1862181 e!2792752)))

(assert (=> d!1372581 (= res!1862181 (is-Nil!50421 (toList!4161 lm!1477)))))

(assert (=> d!1372581 (= (forall!10083 (toList!4161 lm!1477) lambda!166002) e!2792752)))

(declare-fun b!4484019 () Bool)

(declare-fun e!2792753 () Bool)

(assert (=> b!4484019 (= e!2792752 e!2792753)))

(declare-fun res!1862182 () Bool)

(assert (=> b!4484019 (=> (not res!1862182) (not e!2792753))))

(assert (=> b!4484019 (= res!1862182 (dynLambda!21057 lambda!166002 (h!56214 (toList!4161 lm!1477))))))

(declare-fun b!4484020 () Bool)

(assert (=> b!4484020 (= e!2792753 (forall!10083 (t!357499 (toList!4161 lm!1477)) lambda!166002))))

(assert (= (and d!1372581 (not res!1862181)) b!4484019))

(assert (= (and b!4484019 res!1862182) b!4484020))

(declare-fun b_lambda!150497 () Bool)

(assert (=> (not b_lambda!150497) (not b!4484019)))

(declare-fun m!5204583 () Bool)

(assert (=> b!4484019 m!5204583))

(declare-fun m!5204585 () Bool)

(assert (=> b!4484020 m!5204585))

(assert (=> d!1372523 d!1372581))

(declare-fun d!1372583 () Bool)

(declare-fun res!1862187 () Bool)

(declare-fun e!2792758 () Bool)

(assert (=> d!1372583 (=> res!1862187 e!2792758)))

(assert (=> d!1372583 (= res!1862187 (is-Nil!50420 newBucket!178))))

(assert (=> d!1372583 (= (forall!10085 newBucket!178 lambda!165990) e!2792758)))

(declare-fun b!4484025 () Bool)

(declare-fun e!2792759 () Bool)

(assert (=> b!4484025 (= e!2792758 e!2792759)))

(declare-fun res!1862188 () Bool)

(assert (=> b!4484025 (=> (not res!1862188) (not e!2792759))))

(declare-fun dynLambda!21059 (Int tuple2!50742) Bool)

(assert (=> b!4484025 (= res!1862188 (dynLambda!21059 lambda!165990 (h!56213 newBucket!178)))))

(declare-fun b!4484026 () Bool)

(assert (=> b!4484026 (= e!2792759 (forall!10085 (t!357498 newBucket!178) lambda!165990))))

(assert (= (and d!1372583 (not res!1862187)) b!4484025))

(assert (= (and b!4484025 res!1862188) b!4484026))

(declare-fun b_lambda!150499 () Bool)

(assert (=> (not b_lambda!150499) (not b!4484025)))

(declare-fun m!5204587 () Bool)

(assert (=> b!4484025 m!5204587))

(declare-fun m!5204589 () Bool)

(assert (=> b!4484026 m!5204589))

(assert (=> d!1372495 d!1372583))

(declare-fun d!1372585 () Bool)

(declare-fun res!1862189 () Bool)

(declare-fun e!2792760 () Bool)

(assert (=> d!1372585 (=> res!1862189 e!2792760)))

(assert (=> d!1372585 (= res!1862189 (and (is-Cons!50420 (t!357498 lt!1669896)) (= (_1!28665 (h!56213 (t!357498 lt!1669896))) key!3287)))))

(assert (=> d!1372585 (= (containsKey!1577 (t!357498 lt!1669896) key!3287) e!2792760)))

(declare-fun b!4484027 () Bool)

(declare-fun e!2792761 () Bool)

(assert (=> b!4484027 (= e!2792760 e!2792761)))

(declare-fun res!1862190 () Bool)

(assert (=> b!4484027 (=> (not res!1862190) (not e!2792761))))

(assert (=> b!4484027 (= res!1862190 (is-Cons!50420 (t!357498 lt!1669896)))))

(declare-fun b!4484028 () Bool)

(assert (=> b!4484028 (= e!2792761 (containsKey!1577 (t!357498 (t!357498 lt!1669896)) key!3287))))

(assert (= (and d!1372585 (not res!1862189)) b!4484027))

(assert (= (and b!4484027 res!1862190) b!4484028))

(declare-fun m!5204591 () Bool)

(assert (=> b!4484028 m!5204591))

(assert (=> b!4483899 d!1372585))

(declare-fun d!1372587 () Bool)

(declare-fun res!1862191 () Bool)

(declare-fun e!2792762 () Bool)

(assert (=> d!1372587 (=> res!1862191 e!2792762)))

(assert (=> d!1372587 (= res!1862191 (is-Nil!50421 (t!357499 (toList!4161 lm!1477))))))

(assert (=> d!1372587 (= (forall!10083 (t!357499 (toList!4161 lm!1477)) lambda!165982) e!2792762)))

(declare-fun b!4484029 () Bool)

(declare-fun e!2792763 () Bool)

(assert (=> b!4484029 (= e!2792762 e!2792763)))

(declare-fun res!1862192 () Bool)

(assert (=> b!4484029 (=> (not res!1862192) (not e!2792763))))

(assert (=> b!4484029 (= res!1862192 (dynLambda!21057 lambda!165982 (h!56214 (t!357499 (toList!4161 lm!1477)))))))

(declare-fun b!4484030 () Bool)

(assert (=> b!4484030 (= e!2792763 (forall!10083 (t!357499 (t!357499 (toList!4161 lm!1477))) lambda!165982))))

(assert (= (and d!1372587 (not res!1862191)) b!4484029))

(assert (= (and b!4484029 res!1862192) b!4484030))

(declare-fun b_lambda!150501 () Bool)

(assert (=> (not b_lambda!150501) (not b!4484029)))

(declare-fun m!5204593 () Bool)

(assert (=> b!4484029 m!5204593))

(declare-fun m!5204595 () Bool)

(assert (=> b!4484030 m!5204595))

(assert (=> b!4483893 d!1372587))

(declare-fun d!1372589 () Bool)

(assert (=> d!1372589 (dynLambda!21057 lambda!165982 lt!1669894)))

(assert (=> d!1372589 true))

(declare-fun _$7!1720 () Unit!89977)

(assert (=> d!1372589 (= (choose!28822 (toList!4161 lm!1477) lambda!165982 lt!1669894) _$7!1720)))

(declare-fun b_lambda!150503 () Bool)

(assert (=> (not b_lambda!150503) (not d!1372589)))

(declare-fun bs!825692 () Bool)

(assert (= bs!825692 d!1372589))

(assert (=> bs!825692 m!5204489))

(assert (=> d!1372543 d!1372589))

(assert (=> d!1372543 d!1372509))

(assert (=> b!4483938 d!1372487))

(declare-fun d!1372591 () Bool)

(declare-fun lt!1670053 () Bool)

(declare-fun content!8186 (List!50548) (Set K!11833))

(assert (=> d!1372591 (= lt!1670053 (set.member key!3287 (content!8186 e!2792649)))))

(declare-fun e!2792768 () Bool)

(assert (=> d!1372591 (= lt!1670053 e!2792768)))

(declare-fun res!1862197 () Bool)

(assert (=> d!1372591 (=> (not res!1862197) (not e!2792768))))

(assert (=> d!1372591 (= res!1862197 (is-Cons!50424 e!2792649))))

(assert (=> d!1372591 (= (contains!13036 e!2792649 key!3287) lt!1670053)))

(declare-fun b!4484035 () Bool)

(declare-fun e!2792769 () Bool)

(assert (=> b!4484035 (= e!2792768 e!2792769)))

(declare-fun res!1862198 () Bool)

(assert (=> b!4484035 (=> res!1862198 e!2792769)))

(assert (=> b!4484035 (= res!1862198 (= (h!56219 e!2792649) key!3287))))

(declare-fun b!4484036 () Bool)

(assert (=> b!4484036 (= e!2792769 (contains!13036 (t!357502 e!2792649) key!3287))))

(assert (= (and d!1372591 res!1862197) b!4484035))

(assert (= (and b!4484035 (not res!1862198)) b!4484036))

(declare-fun m!5204597 () Bool)

(assert (=> d!1372591 m!5204597))

(declare-fun m!5204599 () Bool)

(assert (=> d!1372591 m!5204599))

(declare-fun m!5204601 () Bool)

(assert (=> b!4484036 m!5204601))

(assert (=> bm!312153 d!1372591))

(declare-fun d!1372593 () Bool)

(declare-fun res!1862199 () Bool)

(declare-fun e!2792770 () Bool)

(assert (=> d!1372593 (=> res!1862199 e!2792770)))

(assert (=> d!1372593 (= res!1862199 (is-Nil!50421 (toList!4161 lm!1477)))))

(assert (=> d!1372593 (= (forall!10083 (toList!4161 lm!1477) lambda!165996) e!2792770)))

(declare-fun b!4484037 () Bool)

(declare-fun e!2792771 () Bool)

(assert (=> b!4484037 (= e!2792770 e!2792771)))

(declare-fun res!1862200 () Bool)

(assert (=> b!4484037 (=> (not res!1862200) (not e!2792771))))

(assert (=> b!4484037 (= res!1862200 (dynLambda!21057 lambda!165996 (h!56214 (toList!4161 lm!1477))))))

(declare-fun b!4484038 () Bool)

(assert (=> b!4484038 (= e!2792771 (forall!10083 (t!357499 (toList!4161 lm!1477)) lambda!165996))))

(assert (= (and d!1372593 (not res!1862199)) b!4484037))

(assert (= (and b!4484037 res!1862200) b!4484038))

(declare-fun b_lambda!150505 () Bool)

(assert (=> (not b_lambda!150505) (not b!4484037)))

(declare-fun m!5204603 () Bool)

(assert (=> b!4484037 m!5204603))

(declare-fun m!5204605 () Bool)

(assert (=> b!4484038 m!5204605))

(assert (=> d!1372521 d!1372593))

(declare-fun d!1372595 () Bool)

(assert (=> d!1372595 (isDefined!8272 (getValueByKey!971 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))) key!3287))))

(declare-fun lt!1670056 () Unit!89977)

(declare-fun choose!28827 (List!50544 K!11833) Unit!89977)

(assert (=> d!1372595 (= lt!1670056 (choose!28827 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))) key!3287))))

(assert (=> d!1372595 (invariantList!956 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))))))

(assert (=> d!1372595 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!875 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))) key!3287) lt!1670056)))

(declare-fun bs!825693 () Bool)

(assert (= bs!825693 d!1372595))

(assert (=> bs!825693 m!5204405))

(assert (=> bs!825693 m!5204405))

(assert (=> bs!825693 m!5204407))

(declare-fun m!5204607 () Bool)

(assert (=> bs!825693 m!5204607))

(declare-fun m!5204609 () Bool)

(assert (=> bs!825693 m!5204609))

(assert (=> b!4483864 d!1372595))

(declare-fun d!1372597 () Bool)

(declare-fun isEmpty!28530 (Option!10985) Bool)

(assert (=> d!1372597 (= (isDefined!8272 (getValueByKey!971 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))) key!3287)) (not (isEmpty!28530 (getValueByKey!971 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))) key!3287))))))

(declare-fun bs!825694 () Bool)

(assert (= bs!825694 d!1372597))

(assert (=> bs!825694 m!5204405))

(declare-fun m!5204611 () Bool)

(assert (=> bs!825694 m!5204611))

(assert (=> b!4483864 d!1372597))

(declare-fun b!4484050 () Bool)

(declare-fun e!2792777 () Option!10985)

(assert (=> b!4484050 (= e!2792777 None!10984)))

(declare-fun d!1372599 () Bool)

(declare-fun c!763774 () Bool)

(assert (=> d!1372599 (= c!763774 (and (is-Cons!50420 (toList!4162 (extractMap!1133 (toList!4161 lm!1477)))) (= (_1!28665 (h!56213 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))))) key!3287)))))

(declare-fun e!2792776 () Option!10985)

(assert (=> d!1372599 (= (getValueByKey!971 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))) key!3287) e!2792776)))

(declare-fun b!4484049 () Bool)

(assert (=> b!4484049 (= e!2792777 (getValueByKey!971 (t!357498 (toList!4162 (extractMap!1133 (toList!4161 lm!1477)))) key!3287))))

(declare-fun b!4484048 () Bool)

(assert (=> b!4484048 (= e!2792776 e!2792777)))

(declare-fun c!763775 () Bool)

(assert (=> b!4484048 (= c!763775 (and (is-Cons!50420 (toList!4162 (extractMap!1133 (toList!4161 lm!1477)))) (not (= (_1!28665 (h!56213 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))))) key!3287))))))

(declare-fun b!4484047 () Bool)

(assert (=> b!4484047 (= e!2792776 (Some!10984 (_2!28665 (h!56213 (toList!4162 (extractMap!1133 (toList!4161 lm!1477)))))))))

(assert (= (and d!1372599 c!763774) b!4484047))

(assert (= (and d!1372599 (not c!763774)) b!4484048))

(assert (= (and b!4484048 c!763775) b!4484049))

(assert (= (and b!4484048 (not c!763775)) b!4484050))

(declare-fun m!5204613 () Bool)

(assert (=> b!4484049 m!5204613))

(assert (=> b!4483864 d!1372599))

(declare-fun d!1372601 () Bool)

(assert (=> d!1372601 (contains!13036 (getKeysList!404 (toList!4162 (extractMap!1133 (toList!4161 lm!1477)))) key!3287)))

(declare-fun lt!1670059 () Unit!89977)

(declare-fun choose!28828 (List!50544 K!11833) Unit!89977)

(assert (=> d!1372601 (= lt!1670059 (choose!28828 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))) key!3287))))

(assert (=> d!1372601 (invariantList!956 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))))))

(assert (=> d!1372601 (= (lemmaInListThenGetKeysListContains!400 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))) key!3287) lt!1670059)))

(declare-fun bs!825695 () Bool)

(assert (= bs!825695 d!1372601))

(assert (=> bs!825695 m!5204417))

(assert (=> bs!825695 m!5204417))

(declare-fun m!5204615 () Bool)

(assert (=> bs!825695 m!5204615))

(declare-fun m!5204617 () Bool)

(assert (=> bs!825695 m!5204617))

(assert (=> bs!825695 m!5204609))

(assert (=> b!4483864 d!1372601))

(declare-fun d!1372603 () Bool)

(declare-fun lt!1670060 () Bool)

(assert (=> d!1372603 (= lt!1670060 (set.member key!3287 (content!8186 (keys!17447 (extractMap!1133 (toList!4161 lm!1477))))))))

(declare-fun e!2792778 () Bool)

(assert (=> d!1372603 (= lt!1670060 e!2792778)))

(declare-fun res!1862201 () Bool)

(assert (=> d!1372603 (=> (not res!1862201) (not e!2792778))))

(assert (=> d!1372603 (= res!1862201 (is-Cons!50424 (keys!17447 (extractMap!1133 (toList!4161 lm!1477)))))))

(assert (=> d!1372603 (= (contains!13036 (keys!17447 (extractMap!1133 (toList!4161 lm!1477))) key!3287) lt!1670060)))

(declare-fun b!4484051 () Bool)

(declare-fun e!2792779 () Bool)

(assert (=> b!4484051 (= e!2792778 e!2792779)))

(declare-fun res!1862202 () Bool)

(assert (=> b!4484051 (=> res!1862202 e!2792779)))

(assert (=> b!4484051 (= res!1862202 (= (h!56219 (keys!17447 (extractMap!1133 (toList!4161 lm!1477)))) key!3287))))

(declare-fun b!4484052 () Bool)

(assert (=> b!4484052 (= e!2792779 (contains!13036 (t!357502 (keys!17447 (extractMap!1133 (toList!4161 lm!1477)))) key!3287))))

(assert (= (and d!1372603 res!1862201) b!4484051))

(assert (= (and b!4484051 (not res!1862202)) b!4484052))

(assert (=> d!1372603 m!5204399))

(declare-fun m!5204619 () Bool)

(assert (=> d!1372603 m!5204619))

(declare-fun m!5204621 () Bool)

(assert (=> d!1372603 m!5204621))

(declare-fun m!5204623 () Bool)

(assert (=> b!4484052 m!5204623))

(assert (=> b!4483865 d!1372603))

(declare-fun b!4484060 () Bool)

(assert (=> b!4484060 true))

(declare-fun d!1372605 () Bool)

(declare-fun e!2792782 () Bool)

(assert (=> d!1372605 e!2792782))

(declare-fun res!1862210 () Bool)

(assert (=> d!1372605 (=> (not res!1862210) (not e!2792782))))

(declare-fun lt!1670063 () List!50548)

(declare-fun noDuplicate!709 (List!50548) Bool)

(assert (=> d!1372605 (= res!1862210 (noDuplicate!709 lt!1670063))))

(assert (=> d!1372605 (= lt!1670063 (getKeysList!404 (toList!4162 (extractMap!1133 (toList!4161 lm!1477)))))))

(assert (=> d!1372605 (= (keys!17447 (extractMap!1133 (toList!4161 lm!1477))) lt!1670063)))

(declare-fun b!4484059 () Bool)

(declare-fun res!1862211 () Bool)

(assert (=> b!4484059 (=> (not res!1862211) (not e!2792782))))

(declare-fun length!274 (List!50548) Int)

(declare-fun length!275 (List!50544) Int)

(assert (=> b!4484059 (= res!1862211 (= (length!274 lt!1670063) (length!275 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))))))))

(declare-fun res!1862209 () Bool)

(assert (=> b!4484060 (=> (not res!1862209) (not e!2792782))))

(declare-fun lambda!166022 () Int)

(declare-fun forall!10087 (List!50548 Int) Bool)

(assert (=> b!4484060 (= res!1862209 (forall!10087 lt!1670063 lambda!166022))))

(declare-fun lambda!166023 () Int)

(declare-fun b!4484061 () Bool)

(declare-fun map!11059 (List!50544 Int) List!50548)

(assert (=> b!4484061 (= e!2792782 (= (content!8186 lt!1670063) (content!8186 (map!11059 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))) lambda!166023))))))

(assert (= (and d!1372605 res!1862210) b!4484059))

(assert (= (and b!4484059 res!1862211) b!4484060))

(assert (= (and b!4484060 res!1862209) b!4484061))

(declare-fun m!5204625 () Bool)

(assert (=> d!1372605 m!5204625))

(assert (=> d!1372605 m!5204417))

(declare-fun m!5204627 () Bool)

(assert (=> b!4484059 m!5204627))

(declare-fun m!5204629 () Bool)

(assert (=> b!4484059 m!5204629))

(declare-fun m!5204631 () Bool)

(assert (=> b!4484060 m!5204631))

(declare-fun m!5204633 () Bool)

(assert (=> b!4484061 m!5204633))

(declare-fun m!5204635 () Bool)

(assert (=> b!4484061 m!5204635))

(assert (=> b!4484061 m!5204635))

(declare-fun m!5204637 () Bool)

(assert (=> b!4484061 m!5204637))

(assert (=> b!4483865 d!1372605))

(declare-fun d!1372607 () Bool)

(declare-fun c!763778 () Bool)

(assert (=> d!1372607 (= c!763778 (is-Nil!50421 (t!357499 (toList!4161 lm!1477))))))

(declare-fun e!2792785 () (Set tuple2!50744))

(assert (=> d!1372607 (= (content!8184 (t!357499 (toList!4161 lm!1477))) e!2792785)))

(declare-fun b!4484068 () Bool)

(assert (=> b!4484068 (= e!2792785 (as set.empty (Set tuple2!50744)))))

(declare-fun b!4484069 () Bool)

(assert (=> b!4484069 (= e!2792785 (set.union (set.insert (h!56214 (t!357499 (toList!4161 lm!1477))) (as set.empty (Set tuple2!50744))) (content!8184 (t!357499 (t!357499 (toList!4161 lm!1477))))))))

(assert (= (and d!1372607 c!763778) b!4484068))

(assert (= (and d!1372607 (not c!763778)) b!4484069))

(declare-fun m!5204639 () Bool)

(assert (=> b!4484069 m!5204639))

(declare-fun m!5204641 () Bool)

(assert (=> b!4484069 m!5204641))

(assert (=> d!1372487 d!1372607))

(declare-fun d!1372609 () Bool)

(assert (=> d!1372609 (= (isEmpty!28528 (toList!4161 lm!1477)) (is-Nil!50421 (toList!4161 lm!1477)))))

(assert (=> d!1372515 d!1372609))

(declare-fun d!1372611 () Bool)

(assert (=> d!1372611 (isDefined!8271 (getValueByKey!970 (toList!4161 lm!1477) lt!1669895))))

(declare-fun lt!1670066 () Unit!89977)

(declare-fun choose!28829 (List!50545 (_ BitVec 64)) Unit!89977)

(assert (=> d!1372611 (= lt!1670066 (choose!28829 (toList!4161 lm!1477) lt!1669895))))

(declare-fun e!2792788 () Bool)

(assert (=> d!1372611 e!2792788))

(declare-fun res!1862214 () Bool)

(assert (=> d!1372611 (=> (not res!1862214) (not e!2792788))))

(assert (=> d!1372611 (= res!1862214 (isStrictlySorted!370 (toList!4161 lm!1477)))))

(assert (=> d!1372611 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!874 (toList!4161 lm!1477) lt!1669895) lt!1670066)))

(declare-fun b!4484072 () Bool)

(assert (=> b!4484072 (= e!2792788 (containsKey!1579 (toList!4161 lm!1477) lt!1669895))))

(assert (= (and d!1372611 res!1862214) b!4484072))

(assert (=> d!1372611 m!5204477))

(assert (=> d!1372611 m!5204477))

(assert (=> d!1372611 m!5204479))

(declare-fun m!5204643 () Bool)

(assert (=> d!1372611 m!5204643))

(assert (=> d!1372611 m!5204439))

(assert (=> b!4484072 m!5204473))

(assert (=> b!4483914 d!1372611))

(declare-fun d!1372613 () Bool)

(declare-fun isEmpty!28531 (Option!10984) Bool)

(assert (=> d!1372613 (= (isDefined!8271 (getValueByKey!970 (toList!4161 lm!1477) lt!1669895)) (not (isEmpty!28531 (getValueByKey!970 (toList!4161 lm!1477) lt!1669895))))))

(declare-fun bs!825696 () Bool)

(assert (= bs!825696 d!1372613))

(assert (=> bs!825696 m!5204477))

(declare-fun m!5204645 () Bool)

(assert (=> bs!825696 m!5204645))

(assert (=> b!4483914 d!1372613))

(declare-fun b!4484081 () Bool)

(declare-fun e!2792793 () Option!10984)

(assert (=> b!4484081 (= e!2792793 (Some!10983 (_2!28666 (h!56214 (toList!4161 lm!1477)))))))

(declare-fun b!4484082 () Bool)

(declare-fun e!2792794 () Option!10984)

(assert (=> b!4484082 (= e!2792793 e!2792794)))

(declare-fun c!763784 () Bool)

(assert (=> b!4484082 (= c!763784 (and (is-Cons!50421 (toList!4161 lm!1477)) (not (= (_1!28666 (h!56214 (toList!4161 lm!1477))) lt!1669895))))))

(declare-fun b!4484083 () Bool)

(assert (=> b!4484083 (= e!2792794 (getValueByKey!970 (t!357499 (toList!4161 lm!1477)) lt!1669895))))

(declare-fun d!1372615 () Bool)

(declare-fun c!763783 () Bool)

(assert (=> d!1372615 (= c!763783 (and (is-Cons!50421 (toList!4161 lm!1477)) (= (_1!28666 (h!56214 (toList!4161 lm!1477))) lt!1669895)))))

(assert (=> d!1372615 (= (getValueByKey!970 (toList!4161 lm!1477) lt!1669895) e!2792793)))

(declare-fun b!4484084 () Bool)

(assert (=> b!4484084 (= e!2792794 None!10983)))

(assert (= (and d!1372615 c!763783) b!4484081))

(assert (= (and d!1372615 (not c!763783)) b!4484082))

(assert (= (and b!4484082 c!763784) b!4484083))

(assert (= (and b!4484082 (not c!763784)) b!4484084))

(declare-fun m!5204647 () Bool)

(assert (=> b!4484083 m!5204647))

(assert (=> b!4483914 d!1372615))

(declare-fun lt!1670067 () Bool)

(declare-fun d!1372617 () Bool)

(assert (=> d!1372617 (= lt!1670067 (set.member (tuple2!50745 hash!344 lt!1669896) (content!8184 (toList!4161 lm!1477))))))

(declare-fun e!2792795 () Bool)

(assert (=> d!1372617 (= lt!1670067 e!2792795)))

(declare-fun res!1862216 () Bool)

(assert (=> d!1372617 (=> (not res!1862216) (not e!2792795))))

(assert (=> d!1372617 (= res!1862216 (is-Cons!50421 (toList!4161 lm!1477)))))

(assert (=> d!1372617 (= (contains!13032 (toList!4161 lm!1477) (tuple2!50745 hash!344 lt!1669896)) lt!1670067)))

(declare-fun b!4484085 () Bool)

(declare-fun e!2792796 () Bool)

(assert (=> b!4484085 (= e!2792795 e!2792796)))

(declare-fun res!1862215 () Bool)

(assert (=> b!4484085 (=> res!1862215 e!2792796)))

(assert (=> b!4484085 (= res!1862215 (= (h!56214 (toList!4161 lm!1477)) (tuple2!50745 hash!344 lt!1669896)))))

(declare-fun b!4484086 () Bool)

(assert (=> b!4484086 (= e!2792796 (contains!13032 (t!357499 (toList!4161 lm!1477)) (tuple2!50745 hash!344 lt!1669896)))))

(assert (= (and d!1372617 res!1862216) b!4484085))

(assert (= (and b!4484085 (not res!1862215)) b!4484086))

(assert (=> d!1372617 m!5204499))

(declare-fun m!5204649 () Bool)

(assert (=> d!1372617 m!5204649))

(declare-fun m!5204651 () Bool)

(assert (=> b!4484086 m!5204651))

(assert (=> d!1372539 d!1372617))

(declare-fun d!1372619 () Bool)

(assert (=> d!1372619 (contains!13032 (toList!4161 lm!1477) (tuple2!50745 hash!344 lt!1669896))))

(assert (=> d!1372619 true))

(declare-fun _$14!1027 () Unit!89977)

(assert (=> d!1372619 (= (choose!28821 (toList!4161 lm!1477) hash!344 lt!1669896) _$14!1027)))

(declare-fun bs!825697 () Bool)

(assert (= bs!825697 d!1372619))

(assert (=> bs!825697 m!5204485))

(assert (=> d!1372539 d!1372619))

(declare-fun d!1372621 () Bool)

(declare-fun res!1862221 () Bool)

(declare-fun e!2792801 () Bool)

(assert (=> d!1372621 (=> res!1862221 e!2792801)))

(assert (=> d!1372621 (= res!1862221 (or (is-Nil!50421 (toList!4161 lm!1477)) (is-Nil!50421 (t!357499 (toList!4161 lm!1477)))))))

(assert (=> d!1372621 (= (isStrictlySorted!370 (toList!4161 lm!1477)) e!2792801)))

(declare-fun b!4484091 () Bool)

(declare-fun e!2792802 () Bool)

(assert (=> b!4484091 (= e!2792801 e!2792802)))

(declare-fun res!1862222 () Bool)

(assert (=> b!4484091 (=> (not res!1862222) (not e!2792802))))

(assert (=> b!4484091 (= res!1862222 (bvslt (_1!28666 (h!56214 (toList!4161 lm!1477))) (_1!28666 (h!56214 (t!357499 (toList!4161 lm!1477))))))))

(declare-fun b!4484092 () Bool)

(assert (=> b!4484092 (= e!2792802 (isStrictlySorted!370 (t!357499 (toList!4161 lm!1477))))))

(assert (= (and d!1372621 (not res!1862221)) b!4484091))

(assert (= (and b!4484091 res!1862222) b!4484092))

(declare-fun m!5204653 () Bool)

(assert (=> b!4484092 m!5204653))

(assert (=> d!1372539 d!1372621))

(assert (=> d!1372511 d!1372621))

(declare-fun d!1372623 () Bool)

(declare-fun choose!28830 (Hashable!5472 K!11833) (_ BitVec 64))

(assert (=> d!1372623 (= (hash!2582 hashF!1107 key!3287) (choose!28830 hashF!1107 key!3287))))

(declare-fun bs!825698 () Bool)

(assert (= bs!825698 d!1372623))

(declare-fun m!5204655 () Bool)

(assert (=> bs!825698 m!5204655))

(assert (=> d!1372489 d!1372623))

(declare-fun b!4484093 () Bool)

(declare-fun e!2792803 () Option!10984)

(assert (=> b!4484093 (= e!2792803 (Some!10983 (_2!28666 (h!56214 (toList!4161 lm!1477)))))))

(declare-fun b!4484094 () Bool)

(declare-fun e!2792804 () Option!10984)

(assert (=> b!4484094 (= e!2792803 e!2792804)))

(declare-fun c!763786 () Bool)

(assert (=> b!4484094 (= c!763786 (and (is-Cons!50421 (toList!4161 lm!1477)) (not (= (_1!28666 (h!56214 (toList!4161 lm!1477))) hash!344))))))

(declare-fun b!4484095 () Bool)

(assert (=> b!4484095 (= e!2792804 (getValueByKey!970 (t!357499 (toList!4161 lm!1477)) hash!344))))

(declare-fun d!1372625 () Bool)

(declare-fun c!763785 () Bool)

(assert (=> d!1372625 (= c!763785 (and (is-Cons!50421 (toList!4161 lm!1477)) (= (_1!28666 (h!56214 (toList!4161 lm!1477))) hash!344)))))

(assert (=> d!1372625 (= (getValueByKey!970 (toList!4161 lm!1477) hash!344) e!2792803)))

(declare-fun b!4484096 () Bool)

(assert (=> b!4484096 (= e!2792804 None!10983)))

(assert (= (and d!1372625 c!763785) b!4484093))

(assert (= (and d!1372625 (not c!763785)) b!4484094))

(assert (= (and b!4484094 c!763786) b!4484095))

(assert (= (and b!4484094 (not c!763786)) b!4484096))

(declare-fun m!5204657 () Bool)

(assert (=> b!4484095 m!5204657))

(assert (=> b!4483921 d!1372625))

(assert (=> b!4483916 d!1372613))

(assert (=> b!4483916 d!1372615))

(declare-fun d!1372627 () Bool)

(declare-fun res!1862223 () Bool)

(declare-fun e!2792805 () Bool)

(assert (=> d!1372627 (=> res!1862223 e!2792805)))

(assert (=> d!1372627 (= res!1862223 (not (is-Cons!50420 (_2!28666 lt!1669894))))))

(assert (=> d!1372627 (= (noDuplicateKeys!1077 (_2!28666 lt!1669894)) e!2792805)))

(declare-fun b!4484097 () Bool)

(declare-fun e!2792806 () Bool)

(assert (=> b!4484097 (= e!2792805 e!2792806)))

(declare-fun res!1862224 () Bool)

(assert (=> b!4484097 (=> (not res!1862224) (not e!2792806))))

(assert (=> b!4484097 (= res!1862224 (not (containsKey!1577 (t!357498 (_2!28666 lt!1669894)) (_1!28665 (h!56213 (_2!28666 lt!1669894))))))))

(declare-fun b!4484098 () Bool)

(assert (=> b!4484098 (= e!2792806 (noDuplicateKeys!1077 (t!357498 (_2!28666 lt!1669894))))))

(assert (= (and d!1372627 (not res!1862223)) b!4484097))

(assert (= (and b!4484097 res!1862224) b!4484098))

(declare-fun m!5204659 () Bool)

(assert (=> b!4484097 m!5204659))

(declare-fun m!5204661 () Bool)

(assert (=> b!4484098 m!5204661))

(assert (=> bs!825677 d!1372627))

(declare-fun d!1372629 () Bool)

(assert (=> d!1372629 (= (tail!7594 (toList!4161 lm!1477)) (t!357499 (toList!4161 lm!1477)))))

(assert (=> d!1372485 d!1372629))

(declare-fun bs!825699 () Bool)

(declare-fun b!4484113 () Bool)

(assert (= bs!825699 (and b!4484113 d!1372495)))

(declare-fun lambda!166052 () Int)

(assert (=> bs!825699 (not (= lambda!166052 lambda!165990))))

(assert (=> b!4484113 true))

(declare-fun bs!825700 () Bool)

(declare-fun b!4484112 () Bool)

(assert (= bs!825700 (and b!4484112 d!1372495)))

(declare-fun lambda!166053 () Int)

(assert (=> bs!825700 (not (= lambda!166053 lambda!165990))))

(declare-fun bs!825701 () Bool)

(assert (= bs!825701 (and b!4484112 b!4484113)))

(assert (=> bs!825701 (= lambda!166053 lambda!166052)))

(assert (=> b!4484112 true))

(declare-fun lambda!166054 () Int)

(assert (=> bs!825700 (not (= lambda!166054 lambda!165990))))

(declare-fun lt!1670110 () ListMap!3423)

(assert (=> bs!825701 (= (= lt!1670110 (extractMap!1133 (t!357499 (toList!4161 lm!1477)))) (= lambda!166054 lambda!166052))))

(assert (=> b!4484112 (= (= lt!1670110 (extractMap!1133 (t!357499 (toList!4161 lm!1477)))) (= lambda!166054 lambda!166053))))

(assert (=> b!4484112 true))

(declare-fun bs!825702 () Bool)

(declare-fun d!1372631 () Bool)

(assert (= bs!825702 (and d!1372631 d!1372495)))

(declare-fun lambda!166055 () Int)

(assert (=> bs!825702 (not (= lambda!166055 lambda!165990))))

(declare-fun bs!825703 () Bool)

(assert (= bs!825703 (and d!1372631 b!4484113)))

(declare-fun lt!1670117 () ListMap!3423)

(assert (=> bs!825703 (= (= lt!1670117 (extractMap!1133 (t!357499 (toList!4161 lm!1477)))) (= lambda!166055 lambda!166052))))

(declare-fun bs!825704 () Bool)

(assert (= bs!825704 (and d!1372631 b!4484112)))

(assert (=> bs!825704 (= (= lt!1670117 (extractMap!1133 (t!357499 (toList!4161 lm!1477)))) (= lambda!166055 lambda!166053))))

(assert (=> bs!825704 (= (= lt!1670117 lt!1670110) (= lambda!166055 lambda!166054))))

(assert (=> d!1372631 true))

(declare-fun b!4484109 () Bool)

(declare-fun e!2792814 () Bool)

(declare-fun call!312168 () Bool)

(assert (=> b!4484109 (= e!2792814 call!312168)))

(declare-fun bm!312163 () Bool)

(declare-fun c!763789 () Bool)

(assert (=> bm!312163 (= call!312168 (forall!10085 (toList!4162 (extractMap!1133 (t!357499 (toList!4161 lm!1477)))) (ite c!763789 lambda!166052 lambda!166054)))))

(declare-fun b!4484110 () Bool)

(declare-fun e!2792813 () Bool)

(assert (=> b!4484110 (= e!2792813 (invariantList!956 (toList!4162 lt!1670117)))))

(declare-fun bm!312164 () Bool)

(declare-fun call!312170 () Bool)

(assert (=> bm!312164 (= call!312170 (forall!10085 (toList!4162 (extractMap!1133 (t!357499 (toList!4161 lm!1477)))) (ite c!763789 lambda!166052 lambda!166054)))))

(declare-fun b!4484111 () Bool)

(declare-fun res!1862231 () Bool)

(assert (=> b!4484111 (=> (not res!1862231) (not e!2792813))))

(assert (=> b!4484111 (= res!1862231 (forall!10085 (toList!4162 (extractMap!1133 (t!357499 (toList!4161 lm!1477)))) lambda!166055))))

(declare-fun bm!312165 () Bool)

(declare-fun call!312169 () Unit!89977)

(declare-fun lemmaContainsAllItsOwnKeys!287 (ListMap!3423) Unit!89977)

(assert (=> bm!312165 (= call!312169 (lemmaContainsAllItsOwnKeys!287 (extractMap!1133 (t!357499 (toList!4161 lm!1477)))))))

(declare-fun e!2792815 () ListMap!3423)

(assert (=> b!4484112 (= e!2792815 lt!1670110)))

(declare-fun lt!1670111 () ListMap!3423)

(declare-fun +!1429 (ListMap!3423 tuple2!50742) ListMap!3423)

(assert (=> b!4484112 (= lt!1670111 (+!1429 (extractMap!1133 (t!357499 (toList!4161 lm!1477))) (h!56213 (_2!28666 (h!56214 (toList!4161 lm!1477))))))))

(assert (=> b!4484112 (= lt!1670110 (addToMapMapFromBucket!624 (t!357498 (_2!28666 (h!56214 (toList!4161 lm!1477)))) (+!1429 (extractMap!1133 (t!357499 (toList!4161 lm!1477))) (h!56213 (_2!28666 (h!56214 (toList!4161 lm!1477)))))))))

(declare-fun lt!1670126 () Unit!89977)

(assert (=> b!4484112 (= lt!1670126 call!312169)))

(assert (=> b!4484112 (forall!10085 (toList!4162 (extractMap!1133 (t!357499 (toList!4161 lm!1477)))) lambda!166053)))

(declare-fun lt!1670128 () Unit!89977)

(assert (=> b!4484112 (= lt!1670128 lt!1670126)))

(assert (=> b!4484112 (forall!10085 (toList!4162 lt!1670111) lambda!166054)))

(declare-fun lt!1670123 () Unit!89977)

(declare-fun Unit!89993 () Unit!89977)

(assert (=> b!4484112 (= lt!1670123 Unit!89993)))

(assert (=> b!4484112 (forall!10085 (t!357498 (_2!28666 (h!56214 (toList!4161 lm!1477)))) lambda!166054)))

(declare-fun lt!1670122 () Unit!89977)

(declare-fun Unit!89994 () Unit!89977)

(assert (=> b!4484112 (= lt!1670122 Unit!89994)))

(declare-fun lt!1670112 () Unit!89977)

(declare-fun Unit!89995 () Unit!89977)

(assert (=> b!4484112 (= lt!1670112 Unit!89995)))

(declare-fun lt!1670113 () Unit!89977)

(declare-fun forallContained!2346 (List!50544 Int tuple2!50742) Unit!89977)

(assert (=> b!4484112 (= lt!1670113 (forallContained!2346 (toList!4162 lt!1670111) lambda!166054 (h!56213 (_2!28666 (h!56214 (toList!4161 lm!1477))))))))

(assert (=> b!4484112 (contains!13030 lt!1670111 (_1!28665 (h!56213 (_2!28666 (h!56214 (toList!4161 lm!1477))))))))

(declare-fun lt!1670115 () Unit!89977)

(declare-fun Unit!89996 () Unit!89977)

(assert (=> b!4484112 (= lt!1670115 Unit!89996)))

(assert (=> b!4484112 (contains!13030 lt!1670110 (_1!28665 (h!56213 (_2!28666 (h!56214 (toList!4161 lm!1477))))))))

(declare-fun lt!1670121 () Unit!89977)

(declare-fun Unit!89997 () Unit!89977)

(assert (=> b!4484112 (= lt!1670121 Unit!89997)))

(assert (=> b!4484112 (forall!10085 (_2!28666 (h!56214 (toList!4161 lm!1477))) lambda!166054)))

(declare-fun lt!1670127 () Unit!89977)

(declare-fun Unit!89998 () Unit!89977)

(assert (=> b!4484112 (= lt!1670127 Unit!89998)))

(assert (=> b!4484112 (forall!10085 (toList!4162 lt!1670111) lambda!166054)))

(declare-fun lt!1670116 () Unit!89977)

(declare-fun Unit!89999 () Unit!89977)

(assert (=> b!4484112 (= lt!1670116 Unit!89999)))

(declare-fun lt!1670129 () Unit!89977)

(declare-fun Unit!90000 () Unit!89977)

(assert (=> b!4484112 (= lt!1670129 Unit!90000)))

(declare-fun lt!1670130 () Unit!89977)

(declare-fun addForallContainsKeyThenBeforeAdding!287 (ListMap!3423 ListMap!3423 K!11833 V!12079) Unit!89977)

(assert (=> b!4484112 (= lt!1670130 (addForallContainsKeyThenBeforeAdding!287 (extractMap!1133 (t!357499 (toList!4161 lm!1477))) lt!1670110 (_1!28665 (h!56213 (_2!28666 (h!56214 (toList!4161 lm!1477))))) (_2!28665 (h!56213 (_2!28666 (h!56214 (toList!4161 lm!1477)))))))))

(assert (=> b!4484112 call!312170))

(declare-fun lt!1670119 () Unit!89977)

(assert (=> b!4484112 (= lt!1670119 lt!1670130)))

(assert (=> b!4484112 (forall!10085 (toList!4162 (extractMap!1133 (t!357499 (toList!4161 lm!1477)))) lambda!166054)))

(declare-fun lt!1670114 () Unit!89977)

(declare-fun Unit!90001 () Unit!89977)

(assert (=> b!4484112 (= lt!1670114 Unit!90001)))

(declare-fun res!1862232 () Bool)

(assert (=> b!4484112 (= res!1862232 (forall!10085 (_2!28666 (h!56214 (toList!4161 lm!1477))) lambda!166054))))

(assert (=> b!4484112 (=> (not res!1862232) (not e!2792814))))

(assert (=> b!4484112 e!2792814))

(declare-fun lt!1670120 () Unit!89977)

(declare-fun Unit!90002 () Unit!89977)

(assert (=> b!4484112 (= lt!1670120 Unit!90002)))

(assert (=> b!4484113 (= e!2792815 (extractMap!1133 (t!357499 (toList!4161 lm!1477))))))

(declare-fun lt!1670125 () Unit!89977)

(assert (=> b!4484113 (= lt!1670125 call!312169)))

(assert (=> b!4484113 call!312170))

(declare-fun lt!1670118 () Unit!89977)

(assert (=> b!4484113 (= lt!1670118 lt!1670125)))

(assert (=> b!4484113 call!312168))

(declare-fun lt!1670124 () Unit!89977)

(declare-fun Unit!90003 () Unit!89977)

(assert (=> b!4484113 (= lt!1670124 Unit!90003)))

(assert (=> d!1372631 e!2792813))

(declare-fun res!1862233 () Bool)

(assert (=> d!1372631 (=> (not res!1862233) (not e!2792813))))

(assert (=> d!1372631 (= res!1862233 (forall!10085 (_2!28666 (h!56214 (toList!4161 lm!1477))) lambda!166055))))

(assert (=> d!1372631 (= lt!1670117 e!2792815)))

(assert (=> d!1372631 (= c!763789 (is-Nil!50420 (_2!28666 (h!56214 (toList!4161 lm!1477)))))))

(assert (=> d!1372631 (noDuplicateKeys!1077 (_2!28666 (h!56214 (toList!4161 lm!1477))))))

(assert (=> d!1372631 (= (addToMapMapFromBucket!624 (_2!28666 (h!56214 (toList!4161 lm!1477))) (extractMap!1133 (t!357499 (toList!4161 lm!1477)))) lt!1670117)))

(assert (= (and d!1372631 c!763789) b!4484113))

(assert (= (and d!1372631 (not c!763789)) b!4484112))

(assert (= (and b!4484112 res!1862232) b!4484109))

(assert (= (or b!4484113 b!4484109) bm!312163))

(assert (= (or b!4484113 b!4484112) bm!312164))

(assert (= (or b!4484113 b!4484112) bm!312165))

(assert (= (and d!1372631 res!1862233) b!4484111))

(assert (= (and b!4484111 res!1862231) b!4484110))

(declare-fun m!5204675 () Bool)

(assert (=> bm!312164 m!5204675))

(declare-fun m!5204677 () Bool)

(assert (=> b!4484111 m!5204677))

(declare-fun m!5204679 () Bool)

(assert (=> b!4484112 m!5204679))

(declare-fun m!5204681 () Bool)

(assert (=> b!4484112 m!5204681))

(declare-fun m!5204683 () Bool)

(assert (=> b!4484112 m!5204683))

(assert (=> b!4484112 m!5204423))

(declare-fun m!5204685 () Bool)

(assert (=> b!4484112 m!5204685))

(declare-fun m!5204687 () Bool)

(assert (=> b!4484112 m!5204687))

(declare-fun m!5204689 () Bool)

(assert (=> b!4484112 m!5204689))

(declare-fun m!5204691 () Bool)

(assert (=> b!4484112 m!5204691))

(declare-fun m!5204693 () Bool)

(assert (=> b!4484112 m!5204693))

(declare-fun m!5204695 () Bool)

(assert (=> b!4484112 m!5204695))

(assert (=> b!4484112 m!5204423))

(assert (=> b!4484112 m!5204681))

(declare-fun m!5204697 () Bool)

(assert (=> b!4484112 m!5204697))

(declare-fun m!5204699 () Bool)

(assert (=> b!4484112 m!5204699))

(assert (=> b!4484112 m!5204697))

(assert (=> b!4484112 m!5204679))

(declare-fun m!5204701 () Bool)

(assert (=> d!1372631 m!5204701))

(assert (=> d!1372631 m!5204509))

(assert (=> bm!312165 m!5204423))

(declare-fun m!5204703 () Bool)

(assert (=> bm!312165 m!5204703))

(assert (=> bm!312163 m!5204675))

(declare-fun m!5204705 () Bool)

(assert (=> b!4484110 m!5204705))

(assert (=> b!4483883 d!1372631))

(declare-fun bs!825705 () Bool)

(declare-fun d!1372639 () Bool)

(assert (= bs!825705 (and d!1372639 d!1372523)))

(declare-fun lambda!166056 () Int)

(assert (=> bs!825705 (= lambda!166056 lambda!166002)))

(declare-fun bs!825706 () Bool)

(assert (= bs!825706 (and d!1372639 start!441350)))

(assert (=> bs!825706 (= lambda!166056 lambda!165982)))

(declare-fun bs!825707 () Bool)

(assert (= bs!825707 (and d!1372639 d!1372521)))

(assert (=> bs!825707 (not (= lambda!166056 lambda!165996))))

(declare-fun bs!825708 () Bool)

(assert (= bs!825708 (and d!1372639 d!1372531)))

(assert (=> bs!825708 (= lambda!166056 lambda!166007)))

(declare-fun bs!825709 () Bool)

(assert (= bs!825709 (and d!1372639 d!1372507)))

(assert (=> bs!825709 (= lambda!166056 lambda!165993)))

(declare-fun lt!1670135 () ListMap!3423)

(assert (=> d!1372639 (invariantList!956 (toList!4162 lt!1670135))))

(declare-fun e!2792820 () ListMap!3423)

(assert (=> d!1372639 (= lt!1670135 e!2792820)))

(declare-fun c!763791 () Bool)

(assert (=> d!1372639 (= c!763791 (is-Cons!50421 (t!357499 (toList!4161 lm!1477))))))

(assert (=> d!1372639 (forall!10083 (t!357499 (toList!4161 lm!1477)) lambda!166056)))

(assert (=> d!1372639 (= (extractMap!1133 (t!357499 (toList!4161 lm!1477))) lt!1670135)))

(declare-fun b!4484121 () Bool)

(assert (=> b!4484121 (= e!2792820 (addToMapMapFromBucket!624 (_2!28666 (h!56214 (t!357499 (toList!4161 lm!1477)))) (extractMap!1133 (t!357499 (t!357499 (toList!4161 lm!1477))))))))

(declare-fun b!4484122 () Bool)

(assert (=> b!4484122 (= e!2792820 (ListMap!3424 Nil!50420))))

(assert (= (and d!1372639 c!763791) b!4484121))

(assert (= (and d!1372639 (not c!763791)) b!4484122))

(declare-fun m!5204707 () Bool)

(assert (=> d!1372639 m!5204707))

(declare-fun m!5204709 () Bool)

(assert (=> d!1372639 m!5204709))

(declare-fun m!5204711 () Bool)

(assert (=> b!4484121 m!5204711))

(assert (=> b!4484121 m!5204711))

(declare-fun m!5204713 () Bool)

(assert (=> b!4484121 m!5204713))

(assert (=> b!4483883 d!1372639))

(declare-fun d!1372641 () Bool)

(assert (=> d!1372641 (= (get!16454 (getValueByKey!970 (toList!4161 lm!1477) hash!344)) (v!44382 (getValueByKey!970 (toList!4161 lm!1477) hash!344)))))

(assert (=> d!1372533 d!1372641))

(assert (=> d!1372533 d!1372625))

(declare-fun d!1372643 () Bool)

(declare-fun res!1862243 () Bool)

(declare-fun e!2792827 () Bool)

(assert (=> d!1372643 (=> res!1862243 e!2792827)))

(assert (=> d!1372643 (= res!1862243 (and (is-Cons!50420 (toList!4162 (extractMap!1133 (toList!4161 lm!1477)))) (= (_1!28665 (h!56213 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))))) key!3287)))))

(assert (=> d!1372643 (= (containsKey!1580 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))) key!3287) e!2792827)))

(declare-fun b!4484129 () Bool)

(declare-fun e!2792828 () Bool)

(assert (=> b!4484129 (= e!2792827 e!2792828)))

(declare-fun res!1862244 () Bool)

(assert (=> b!4484129 (=> (not res!1862244) (not e!2792828))))

(assert (=> b!4484129 (= res!1862244 (is-Cons!50420 (toList!4162 (extractMap!1133 (toList!4161 lm!1477)))))))

(declare-fun b!4484130 () Bool)

(assert (=> b!4484130 (= e!2792828 (containsKey!1580 (t!357498 (toList!4162 (extractMap!1133 (toList!4161 lm!1477)))) key!3287))))

(assert (= (and d!1372643 (not res!1862243)) b!4484129))

(assert (= (and b!4484129 res!1862244) b!4484130))

(declare-fun m!5204719 () Bool)

(assert (=> b!4484130 m!5204719))

(assert (=> d!1372499 d!1372643))

(assert (=> b!4483924 d!1372547))

(assert (=> b!4483872 d!1372605))

(declare-fun d!1372651 () Bool)

(declare-fun noDuplicatedKeys!224 (List!50544) Bool)

(assert (=> d!1372651 (= (invariantList!956 (toList!4162 lt!1669979)) (noDuplicatedKeys!224 (toList!4162 lt!1669979)))))

(declare-fun bs!825711 () Bool)

(assert (= bs!825711 d!1372651))

(declare-fun m!5204721 () Bool)

(assert (=> bs!825711 m!5204721))

(assert (=> d!1372507 d!1372651))

(declare-fun d!1372653 () Bool)

(declare-fun res!1862245 () Bool)

(declare-fun e!2792829 () Bool)

(assert (=> d!1372653 (=> res!1862245 e!2792829)))

(assert (=> d!1372653 (= res!1862245 (is-Nil!50421 (toList!4161 lm!1477)))))

(assert (=> d!1372653 (= (forall!10083 (toList!4161 lm!1477) lambda!165993) e!2792829)))

(declare-fun b!4484131 () Bool)

(declare-fun e!2792830 () Bool)

(assert (=> b!4484131 (= e!2792829 e!2792830)))

(declare-fun res!1862246 () Bool)

(assert (=> b!4484131 (=> (not res!1862246) (not e!2792830))))

(assert (=> b!4484131 (= res!1862246 (dynLambda!21057 lambda!165993 (h!56214 (toList!4161 lm!1477))))))

(declare-fun b!4484132 () Bool)

(assert (=> b!4484132 (= e!2792830 (forall!10083 (t!357499 (toList!4161 lm!1477)) lambda!165993))))

(assert (= (and d!1372653 (not res!1862245)) b!4484131))

(assert (= (and b!4484131 res!1862246) b!4484132))

(declare-fun b_lambda!150511 () Bool)

(assert (=> (not b_lambda!150511) (not b!4484131)))

(declare-fun m!5204723 () Bool)

(assert (=> b!4484131 m!5204723))

(declare-fun m!5204725 () Bool)

(assert (=> b!4484132 m!5204725))

(assert (=> d!1372507 d!1372653))

(declare-fun d!1372655 () Bool)

(declare-fun res!1862247 () Bool)

(declare-fun e!2792831 () Bool)

(assert (=> d!1372655 (=> res!1862247 e!2792831)))

(assert (=> d!1372655 (= res!1862247 (not (is-Cons!50420 (_2!28666 (h!56214 (toList!4161 lm!1477))))))))

(assert (=> d!1372655 (= (noDuplicateKeys!1077 (_2!28666 (h!56214 (toList!4161 lm!1477)))) e!2792831)))

(declare-fun b!4484133 () Bool)

(declare-fun e!2792832 () Bool)

(assert (=> b!4484133 (= e!2792831 e!2792832)))

(declare-fun res!1862248 () Bool)

(assert (=> b!4484133 (=> (not res!1862248) (not e!2792832))))

(assert (=> b!4484133 (= res!1862248 (not (containsKey!1577 (t!357498 (_2!28666 (h!56214 (toList!4161 lm!1477)))) (_1!28665 (h!56213 (_2!28666 (h!56214 (toList!4161 lm!1477))))))))))

(declare-fun b!4484134 () Bool)

(assert (=> b!4484134 (= e!2792832 (noDuplicateKeys!1077 (t!357498 (_2!28666 (h!56214 (toList!4161 lm!1477))))))))

(assert (= (and d!1372655 (not res!1862247)) b!4484133))

(assert (= (and b!4484133 res!1862248) b!4484134))

(declare-fun m!5204727 () Bool)

(assert (=> b!4484133 m!5204727))

(declare-fun m!5204729 () Bool)

(assert (=> b!4484134 m!5204729))

(assert (=> bs!825676 d!1372655))

(declare-fun d!1372657 () Bool)

(assert (=> d!1372657 (= (get!16454 (getValueByKey!970 (toList!4161 lt!1669889) hash!344)) (v!44382 (getValueByKey!970 (toList!4161 lt!1669889) hash!344)))))

(assert (=> d!1372493 d!1372657))

(declare-fun b!4484135 () Bool)

(declare-fun e!2792833 () Option!10984)

(assert (=> b!4484135 (= e!2792833 (Some!10983 (_2!28666 (h!56214 (toList!4161 lt!1669889)))))))

(declare-fun b!4484136 () Bool)

(declare-fun e!2792834 () Option!10984)

(assert (=> b!4484136 (= e!2792833 e!2792834)))

(declare-fun c!763793 () Bool)

(assert (=> b!4484136 (= c!763793 (and (is-Cons!50421 (toList!4161 lt!1669889)) (not (= (_1!28666 (h!56214 (toList!4161 lt!1669889))) hash!344))))))

(declare-fun b!4484137 () Bool)

(assert (=> b!4484137 (= e!2792834 (getValueByKey!970 (t!357499 (toList!4161 lt!1669889)) hash!344))))

(declare-fun d!1372659 () Bool)

(declare-fun c!763792 () Bool)

(assert (=> d!1372659 (= c!763792 (and (is-Cons!50421 (toList!4161 lt!1669889)) (= (_1!28666 (h!56214 (toList!4161 lt!1669889))) hash!344)))))

(assert (=> d!1372659 (= (getValueByKey!970 (toList!4161 lt!1669889) hash!344) e!2792833)))

(declare-fun b!4484138 () Bool)

(assert (=> b!4484138 (= e!2792834 None!10983)))

(assert (= (and d!1372659 c!763792) b!4484135))

(assert (= (and d!1372659 (not c!763792)) b!4484136))

(assert (= (and b!4484136 c!763793) b!4484137))

(assert (= (and b!4484136 (not c!763793)) b!4484138))

(declare-fun m!5204731 () Bool)

(assert (=> b!4484137 m!5204731))

(assert (=> d!1372493 d!1372659))

(declare-fun d!1372661 () Bool)

(declare-fun c!763794 () Bool)

(assert (=> d!1372661 (= c!763794 (is-Nil!50421 (toList!4161 lm!1477)))))

(declare-fun e!2792835 () (Set tuple2!50744))

(assert (=> d!1372661 (= (content!8184 (toList!4161 lm!1477)) e!2792835)))

(declare-fun b!4484139 () Bool)

(assert (=> b!4484139 (= e!2792835 (as set.empty (Set tuple2!50744)))))

(declare-fun b!4484140 () Bool)

(assert (=> b!4484140 (= e!2792835 (set.union (set.insert (h!56214 (toList!4161 lm!1477)) (as set.empty (Set tuple2!50744))) (content!8184 (t!357499 (toList!4161 lm!1477)))))))

(assert (= (and d!1372661 c!763794) b!4484139))

(assert (= (and d!1372661 (not c!763794)) b!4484140))

(declare-fun m!5204733 () Bool)

(assert (=> b!4484140 m!5204733))

(assert (=> b!4484140 m!5204373))

(assert (=> d!1372547 d!1372661))

(declare-fun d!1372663 () Bool)

(declare-fun res!1862249 () Bool)

(declare-fun e!2792836 () Bool)

(assert (=> d!1372663 (=> res!1862249 e!2792836)))

(assert (=> d!1372663 (= res!1862249 (and (is-Cons!50420 (t!357498 newBucket!178)) (= (_1!28665 (h!56213 (t!357498 newBucket!178))) (_1!28665 (h!56213 newBucket!178)))))))

(assert (=> d!1372663 (= (containsKey!1577 (t!357498 newBucket!178) (_1!28665 (h!56213 newBucket!178))) e!2792836)))

(declare-fun b!4484141 () Bool)

(declare-fun e!2792837 () Bool)

(assert (=> b!4484141 (= e!2792836 e!2792837)))

(declare-fun res!1862250 () Bool)

(assert (=> b!4484141 (=> (not res!1862250) (not e!2792837))))

(assert (=> b!4484141 (= res!1862250 (is-Cons!50420 (t!357498 newBucket!178)))))

(declare-fun b!4484142 () Bool)

(assert (=> b!4484142 (= e!2792837 (containsKey!1577 (t!357498 (t!357498 newBucket!178)) (_1!28665 (h!56213 newBucket!178))))))

(assert (= (and d!1372663 (not res!1862249)) b!4484141))

(assert (= (and b!4484141 res!1862250) b!4484142))

(declare-fun m!5204735 () Bool)

(assert (=> b!4484142 m!5204735))

(assert (=> b!4483828 d!1372663))

(declare-fun b!4484148 () Bool)

(declare-fun e!2792842 () List!50544)

(assert (=> b!4484148 (= e!2792842 Nil!50420)))

(declare-fun d!1372665 () Bool)

(declare-fun lt!1670136 () List!50544)

(assert (=> d!1372665 (not (containsKey!1577 lt!1670136 key!3287))))

(declare-fun e!2792843 () List!50544)

(assert (=> d!1372665 (= lt!1670136 e!2792843)))

(declare-fun c!763795 () Bool)

(assert (=> d!1372665 (= c!763795 (and (is-Cons!50420 (t!357498 lt!1669896)) (= (_1!28665 (h!56213 (t!357498 lt!1669896))) key!3287)))))

(assert (=> d!1372665 (noDuplicateKeys!1077 (t!357498 lt!1669896))))

(assert (=> d!1372665 (= (removePairForKey!704 (t!357498 lt!1669896) key!3287) lt!1670136)))

(declare-fun b!4484146 () Bool)

(assert (=> b!4484146 (= e!2792843 e!2792842)))

(declare-fun c!763796 () Bool)

(assert (=> b!4484146 (= c!763796 (is-Cons!50420 (t!357498 lt!1669896)))))

(declare-fun b!4484147 () Bool)

(assert (=> b!4484147 (= e!2792842 (Cons!50420 (h!56213 (t!357498 lt!1669896)) (removePairForKey!704 (t!357498 (t!357498 lt!1669896)) key!3287)))))

(declare-fun b!4484145 () Bool)

(assert (=> b!4484145 (= e!2792843 (t!357498 (t!357498 lt!1669896)))))

(assert (= (and d!1372665 c!763795) b!4484145))

(assert (= (and d!1372665 (not c!763795)) b!4484146))

(assert (= (and b!4484146 c!763796) b!4484147))

(assert (= (and b!4484146 (not c!763796)) b!4484148))

(declare-fun m!5204737 () Bool)

(assert (=> d!1372665 m!5204737))

(declare-fun m!5204739 () Bool)

(assert (=> d!1372665 m!5204739))

(declare-fun m!5204741 () Bool)

(assert (=> b!4484147 m!5204741))

(assert (=> b!4483935 d!1372665))

(declare-fun d!1372667 () Bool)

(declare-fun res!1862261 () Bool)

(declare-fun e!2792850 () Bool)

(assert (=> d!1372667 (=> res!1862261 e!2792850)))

(assert (=> d!1372667 (= res!1862261 (and (is-Cons!50421 (toList!4161 lm!1477)) (= (_1!28666 (h!56214 (toList!4161 lm!1477))) lt!1669895)))))

(assert (=> d!1372667 (= (containsKey!1579 (toList!4161 lm!1477) lt!1669895) e!2792850)))

(declare-fun b!4484157 () Bool)

(declare-fun e!2792851 () Bool)

(assert (=> b!4484157 (= e!2792850 e!2792851)))

(declare-fun res!1862262 () Bool)

(assert (=> b!4484157 (=> (not res!1862262) (not e!2792851))))

(assert (=> b!4484157 (= res!1862262 (and (or (not (is-Cons!50421 (toList!4161 lm!1477))) (bvsle (_1!28666 (h!56214 (toList!4161 lm!1477))) lt!1669895)) (is-Cons!50421 (toList!4161 lm!1477)) (bvslt (_1!28666 (h!56214 (toList!4161 lm!1477))) lt!1669895)))))

(declare-fun b!4484158 () Bool)

(assert (=> b!4484158 (= e!2792851 (containsKey!1579 (t!357499 (toList!4161 lm!1477)) lt!1669895))))

(assert (= (and d!1372667 (not res!1862261)) b!4484157))

(assert (= (and b!4484157 res!1862262) b!4484158))

(declare-fun m!5204745 () Bool)

(assert (=> b!4484158 m!5204745))

(assert (=> d!1372535 d!1372667))

(declare-fun d!1372671 () Bool)

(assert (=> d!1372671 (isDefined!8271 (getValueByKey!970 (toList!4161 lt!1669889) hash!344))))

(declare-fun lt!1670137 () Unit!89977)

(assert (=> d!1372671 (= lt!1670137 (choose!28829 (toList!4161 lt!1669889) hash!344))))

(declare-fun e!2792852 () Bool)

(assert (=> d!1372671 e!2792852))

(declare-fun res!1862263 () Bool)

(assert (=> d!1372671 (=> (not res!1862263) (not e!2792852))))

(assert (=> d!1372671 (= res!1862263 (isStrictlySorted!370 (toList!4161 lt!1669889)))))

(assert (=> d!1372671 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!874 (toList!4161 lt!1669889) hash!344) lt!1670137)))

(declare-fun b!4484159 () Bool)

(assert (=> b!4484159 (= e!2792852 (containsKey!1579 (toList!4161 lt!1669889) hash!344))))

(assert (= (and d!1372671 res!1862263) b!4484159))

(assert (=> d!1372671 m!5204367))

(assert (=> d!1372671 m!5204367))

(assert (=> d!1372671 m!5204369))

(declare-fun m!5204747 () Bool)

(assert (=> d!1372671 m!5204747))

(declare-fun m!5204749 () Bool)

(assert (=> d!1372671 m!5204749))

(assert (=> b!4484159 m!5204363))

(assert (=> b!4483815 d!1372671))

(declare-fun d!1372673 () Bool)

(assert (=> d!1372673 (= (isDefined!8271 (getValueByKey!970 (toList!4161 lt!1669889) hash!344)) (not (isEmpty!28531 (getValueByKey!970 (toList!4161 lt!1669889) hash!344))))))

(declare-fun bs!825712 () Bool)

(assert (= bs!825712 d!1372673))

(assert (=> bs!825712 m!5204367))

(declare-fun m!5204751 () Bool)

(assert (=> bs!825712 m!5204751))

(assert (=> b!4483815 d!1372673))

(assert (=> b!4483815 d!1372659))

(assert (=> b!4483866 d!1372603))

(assert (=> b!4483866 d!1372605))

(declare-fun d!1372675 () Bool)

(declare-fun res!1862264 () Bool)

(declare-fun e!2792853 () Bool)

(assert (=> d!1372675 (=> res!1862264 e!2792853)))

(assert (=> d!1372675 (= res!1862264 (and (is-Cons!50420 lt!1670005) (= (_1!28665 (h!56213 lt!1670005)) key!3287)))))

(assert (=> d!1372675 (= (containsKey!1577 lt!1670005 key!3287) e!2792853)))

(declare-fun b!4484160 () Bool)

(declare-fun e!2792854 () Bool)

(assert (=> b!4484160 (= e!2792853 e!2792854)))

(declare-fun res!1862265 () Bool)

(assert (=> b!4484160 (=> (not res!1862265) (not e!2792854))))

(assert (=> b!4484160 (= res!1862265 (is-Cons!50420 lt!1670005))))

(declare-fun b!4484161 () Bool)

(assert (=> b!4484161 (= e!2792854 (containsKey!1577 (t!357498 lt!1670005) key!3287))))

(assert (= (and d!1372675 (not res!1862264)) b!4484160))

(assert (= (and b!4484160 res!1862265) b!4484161))

(declare-fun m!5204753 () Bool)

(assert (=> b!4484161 m!5204753))

(assert (=> d!1372545 d!1372675))

(declare-fun d!1372677 () Bool)

(declare-fun res!1862266 () Bool)

(declare-fun e!2792855 () Bool)

(assert (=> d!1372677 (=> res!1862266 e!2792855)))

(assert (=> d!1372677 (= res!1862266 (not (is-Cons!50420 lt!1669896)))))

(assert (=> d!1372677 (= (noDuplicateKeys!1077 lt!1669896) e!2792855)))

(declare-fun b!4484162 () Bool)

(declare-fun e!2792856 () Bool)

(assert (=> b!4484162 (= e!2792855 e!2792856)))

(declare-fun res!1862267 () Bool)

(assert (=> b!4484162 (=> (not res!1862267) (not e!2792856))))

(assert (=> b!4484162 (= res!1862267 (not (containsKey!1577 (t!357498 lt!1669896) (_1!28665 (h!56213 lt!1669896)))))))

(declare-fun b!4484163 () Bool)

(assert (=> b!4484163 (= e!2792856 (noDuplicateKeys!1077 (t!357498 lt!1669896)))))

(assert (= (and d!1372677 (not res!1862266)) b!4484162))

(assert (= (and b!4484162 res!1862267) b!4484163))

(declare-fun m!5204755 () Bool)

(assert (=> b!4484162 m!5204755))

(assert (=> b!4484163 m!5204739))

(assert (=> d!1372545 d!1372677))

(declare-fun d!1372679 () Bool)

(declare-fun res!1862268 () Bool)

(declare-fun e!2792857 () Bool)

(assert (=> d!1372679 (=> res!1862268 e!2792857)))

(assert (=> d!1372679 (= res!1862268 (not (is-Cons!50420 (t!357498 newBucket!178))))))

(assert (=> d!1372679 (= (noDuplicateKeys!1077 (t!357498 newBucket!178)) e!2792857)))

(declare-fun b!4484164 () Bool)

(declare-fun e!2792858 () Bool)

(assert (=> b!4484164 (= e!2792857 e!2792858)))

(declare-fun res!1862269 () Bool)

(assert (=> b!4484164 (=> (not res!1862269) (not e!2792858))))

(assert (=> b!4484164 (= res!1862269 (not (containsKey!1577 (t!357498 (t!357498 newBucket!178)) (_1!28665 (h!56213 (t!357498 newBucket!178))))))))

(declare-fun b!4484165 () Bool)

(assert (=> b!4484165 (= e!2792858 (noDuplicateKeys!1077 (t!357498 (t!357498 newBucket!178))))))

(assert (= (and d!1372679 (not res!1862268)) b!4484164))

(assert (= (and b!4484164 res!1862269) b!4484165))

(declare-fun m!5204757 () Bool)

(assert (=> b!4484164 m!5204757))

(declare-fun m!5204759 () Bool)

(assert (=> b!4484165 m!5204759))

(assert (=> b!4483829 d!1372679))

(declare-fun bs!825716 () Bool)

(declare-fun b!4484226 () Bool)

(assert (= bs!825716 (and b!4484226 b!4484060)))

(declare-fun lambda!166065 () Int)

(assert (=> bs!825716 (= (= (t!357498 (toList!4162 (extractMap!1133 (toList!4161 lm!1477)))) (toList!4162 (extractMap!1133 (toList!4161 lm!1477)))) (= lambda!166065 lambda!166022))))

(assert (=> b!4484226 true))

(declare-fun bs!825717 () Bool)

(declare-fun b!4484228 () Bool)

(assert (= bs!825717 (and b!4484228 b!4484060)))

(declare-fun lambda!166066 () Int)

(assert (=> bs!825717 (= (= (Cons!50420 (h!56213 (toList!4162 (extractMap!1133 (toList!4161 lm!1477)))) (t!357498 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))))) (toList!4162 (extractMap!1133 (toList!4161 lm!1477)))) (= lambda!166066 lambda!166022))))

(declare-fun bs!825718 () Bool)

(assert (= bs!825718 (and b!4484228 b!4484226)))

(assert (=> bs!825718 (= (= (Cons!50420 (h!56213 (toList!4162 (extractMap!1133 (toList!4161 lm!1477)))) (t!357498 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))))) (t!357498 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))))) (= lambda!166066 lambda!166065))))

(assert (=> b!4484228 true))

(declare-fun bs!825719 () Bool)

(declare-fun b!4484223 () Bool)

(assert (= bs!825719 (and b!4484223 b!4484060)))

(declare-fun lambda!166067 () Int)

(assert (=> bs!825719 (= lambda!166067 lambda!166022)))

(declare-fun bs!825720 () Bool)

(assert (= bs!825720 (and b!4484223 b!4484226)))

(assert (=> bs!825720 (= (= (toList!4162 (extractMap!1133 (toList!4161 lm!1477))) (t!357498 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))))) (= lambda!166067 lambda!166065))))

(declare-fun bs!825721 () Bool)

(assert (= bs!825721 (and b!4484223 b!4484228)))

(assert (=> bs!825721 (= (= (toList!4162 (extractMap!1133 (toList!4161 lm!1477))) (Cons!50420 (h!56213 (toList!4162 (extractMap!1133 (toList!4161 lm!1477)))) (t!357498 (toList!4162 (extractMap!1133 (toList!4161 lm!1477)))))) (= lambda!166067 lambda!166066))))

(assert (=> b!4484223 true))

(declare-fun bs!825722 () Bool)

(declare-fun b!4484229 () Bool)

(assert (= bs!825722 (and b!4484229 b!4484061)))

(declare-fun lambda!166068 () Int)

(assert (=> bs!825722 (= lambda!166068 lambda!166023)))

(declare-fun b!4484221 () Bool)

(declare-fun e!2792890 () List!50548)

(assert (=> b!4484221 (= e!2792890 Nil!50424)))

(declare-fun b!4484222 () Bool)

(declare-fun res!1862286 () Bool)

(declare-fun e!2792891 () Bool)

(assert (=> b!4484222 (=> (not res!1862286) (not e!2792891))))

(declare-fun lt!1670161 () List!50548)

(assert (=> b!4484222 (= res!1862286 (= (length!274 lt!1670161) (length!275 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))))))))

(declare-fun res!1862287 () Bool)

(assert (=> b!4484223 (=> (not res!1862287) (not e!2792891))))

(assert (=> b!4484223 (= res!1862287 (forall!10087 lt!1670161 lambda!166067))))

(declare-fun b!4484225 () Bool)

(declare-fun e!2792892 () Unit!89977)

(declare-fun Unit!90004 () Unit!89977)

(assert (=> b!4484225 (= e!2792892 Unit!90004)))

(assert (=> b!4484226 false))

(declare-fun lt!1670160 () Unit!89977)

(declare-fun forallContained!2347 (List!50548 Int K!11833) Unit!89977)

(assert (=> b!4484226 (= lt!1670160 (forallContained!2347 (getKeysList!404 (t!357498 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))))) lambda!166065 (_1!28665 (h!56213 (toList!4162 (extractMap!1133 (toList!4161 lm!1477)))))))))

(declare-fun e!2792893 () Unit!89977)

(declare-fun Unit!90005 () Unit!89977)

(assert (=> b!4484226 (= e!2792893 Unit!90005)))

(declare-fun b!4484227 () Bool)

(declare-fun Unit!90006 () Unit!89977)

(assert (=> b!4484227 (= e!2792893 Unit!90006)))

(assert (=> b!4484228 (= e!2792890 (Cons!50424 (_1!28665 (h!56213 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))))) (getKeysList!404 (t!357498 (toList!4162 (extractMap!1133 (toList!4161 lm!1477)))))))))

(declare-fun c!763818 () Bool)

(assert (=> b!4484228 (= c!763818 (containsKey!1580 (t!357498 (toList!4162 (extractMap!1133 (toList!4161 lm!1477)))) (_1!28665 (h!56213 (toList!4162 (extractMap!1133 (toList!4161 lm!1477)))))))))

(declare-fun lt!1670163 () Unit!89977)

(assert (=> b!4484228 (= lt!1670163 e!2792892)))

(declare-fun c!763817 () Bool)

(assert (=> b!4484228 (= c!763817 (contains!13036 (getKeysList!404 (t!357498 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))))) (_1!28665 (h!56213 (toList!4162 (extractMap!1133 (toList!4161 lm!1477)))))))))

(declare-fun lt!1670159 () Unit!89977)

(assert (=> b!4484228 (= lt!1670159 e!2792893)))

(declare-fun lt!1670164 () List!50548)

(assert (=> b!4484228 (= lt!1670164 (getKeysList!404 (t!357498 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))))))))

(declare-fun lt!1670162 () Unit!89977)

(declare-fun lemmaForallContainsAddHeadPreserves!131 (List!50544 List!50548 tuple2!50742) Unit!89977)

(assert (=> b!4484228 (= lt!1670162 (lemmaForallContainsAddHeadPreserves!131 (t!357498 (toList!4162 (extractMap!1133 (toList!4161 lm!1477)))) lt!1670164 (h!56213 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))))))))

(assert (=> b!4484228 (forall!10087 lt!1670164 lambda!166066)))

(declare-fun lt!1670165 () Unit!89977)

(assert (=> b!4484228 (= lt!1670165 lt!1670162)))

(assert (=> b!4484229 (= e!2792891 (= (content!8186 lt!1670161) (content!8186 (map!11059 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))) lambda!166068))))))

(declare-fun d!1372681 () Bool)

(assert (=> d!1372681 e!2792891))

(declare-fun res!1862285 () Bool)

(assert (=> d!1372681 (=> (not res!1862285) (not e!2792891))))

(assert (=> d!1372681 (= res!1862285 (noDuplicate!709 lt!1670161))))

(assert (=> d!1372681 (= lt!1670161 e!2792890)))

(declare-fun c!763819 () Bool)

(assert (=> d!1372681 (= c!763819 (is-Cons!50420 (toList!4162 (extractMap!1133 (toList!4161 lm!1477)))))))

(assert (=> d!1372681 (invariantList!956 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))))))

(assert (=> d!1372681 (= (getKeysList!404 (toList!4162 (extractMap!1133 (toList!4161 lm!1477)))) lt!1670161)))

(declare-fun b!4484224 () Bool)

(assert (=> b!4484224 false))

(declare-fun Unit!90007 () Unit!89977)

(assert (=> b!4484224 (= e!2792892 Unit!90007)))

(assert (= (and d!1372681 c!763819) b!4484228))

(assert (= (and d!1372681 (not c!763819)) b!4484221))

(assert (= (and b!4484228 c!763818) b!4484224))

(assert (= (and b!4484228 (not c!763818)) b!4484225))

(assert (= (and b!4484228 c!763817) b!4484226))

(assert (= (and b!4484228 (not c!763817)) b!4484227))

(assert (= (and d!1372681 res!1862285) b!4484222))

(assert (= (and b!4484222 res!1862286) b!4484223))

(assert (= (and b!4484223 res!1862287) b!4484229))

(declare-fun m!5204785 () Bool)

(assert (=> d!1372681 m!5204785))

(assert (=> d!1372681 m!5204609))

(declare-fun m!5204787 () Bool)

(assert (=> b!4484228 m!5204787))

(declare-fun m!5204791 () Bool)

(assert (=> b!4484228 m!5204791))

(declare-fun m!5204793 () Bool)

(assert (=> b!4484228 m!5204793))

(declare-fun m!5204795 () Bool)

(assert (=> b!4484228 m!5204795))

(declare-fun m!5204797 () Bool)

(assert (=> b!4484228 m!5204797))

(assert (=> b!4484228 m!5204791))

(assert (=> b!4484226 m!5204791))

(assert (=> b!4484226 m!5204791))

(declare-fun m!5204799 () Bool)

(assert (=> b!4484226 m!5204799))

(declare-fun m!5204801 () Bool)

(assert (=> b!4484229 m!5204801))

(declare-fun m!5204803 () Bool)

(assert (=> b!4484229 m!5204803))

(assert (=> b!4484229 m!5204803))

(declare-fun m!5204805 () Bool)

(assert (=> b!4484229 m!5204805))

(declare-fun m!5204807 () Bool)

(assert (=> b!4484222 m!5204807))

(assert (=> b!4484222 m!5204629))

(declare-fun m!5204809 () Bool)

(assert (=> b!4484223 m!5204809))

(assert (=> b!4483867 d!1372681))

(assert (=> b!4483817 d!1372673))

(assert (=> b!4483817 d!1372659))

(declare-fun d!1372701 () Bool)

(declare-fun e!2792896 () Bool)

(assert (=> d!1372701 e!2792896))

(declare-fun res!1862288 () Bool)

(assert (=> d!1372701 (=> res!1862288 e!2792896)))

(declare-fun lt!1670167 () Bool)

(assert (=> d!1372701 (= res!1862288 (not lt!1670167))))

(declare-fun lt!1670166 () Bool)

(assert (=> d!1372701 (= lt!1670167 lt!1670166)))

(declare-fun lt!1670169 () Unit!89977)

(declare-fun e!2792897 () Unit!89977)

(assert (=> d!1372701 (= lt!1670169 e!2792897)))

(declare-fun c!763822 () Bool)

(assert (=> d!1372701 (= c!763822 lt!1670166)))

(assert (=> d!1372701 (= lt!1670166 (containsKey!1579 (toList!4161 lm!1477) (hash!2580 hashF!1107 key!3287)))))

(assert (=> d!1372701 (= (contains!13031 lm!1477 (hash!2580 hashF!1107 key!3287)) lt!1670167)))

(declare-fun b!4484236 () Bool)

(declare-fun lt!1670168 () Unit!89977)

(assert (=> b!4484236 (= e!2792897 lt!1670168)))

(assert (=> b!4484236 (= lt!1670168 (lemmaContainsKeyImpliesGetValueByKeyDefined!874 (toList!4161 lm!1477) (hash!2580 hashF!1107 key!3287)))))

(assert (=> b!4484236 (isDefined!8271 (getValueByKey!970 (toList!4161 lm!1477) (hash!2580 hashF!1107 key!3287)))))

(declare-fun b!4484237 () Bool)

(declare-fun Unit!90008 () Unit!89977)

(assert (=> b!4484237 (= e!2792897 Unit!90008)))

(declare-fun b!4484238 () Bool)

(assert (=> b!4484238 (= e!2792896 (isDefined!8271 (getValueByKey!970 (toList!4161 lm!1477) (hash!2580 hashF!1107 key!3287))))))

(assert (= (and d!1372701 c!763822) b!4484236))

(assert (= (and d!1372701 (not c!763822)) b!4484237))

(assert (= (and d!1372701 (not res!1862288)) b!4484238))

(assert (=> d!1372701 m!5204303))

(declare-fun m!5204811 () Bool)

(assert (=> d!1372701 m!5204811))

(assert (=> b!4484236 m!5204303))

(declare-fun m!5204813 () Bool)

(assert (=> b!4484236 m!5204813))

(assert (=> b!4484236 m!5204303))

(declare-fun m!5204815 () Bool)

(assert (=> b!4484236 m!5204815))

(assert (=> b!4484236 m!5204815))

(declare-fun m!5204817 () Bool)

(assert (=> b!4484236 m!5204817))

(assert (=> b!4484238 m!5204303))

(assert (=> b!4484238 m!5204815))

(assert (=> b!4484238 m!5204815))

(assert (=> b!4484238 m!5204817))

(assert (=> d!1372531 d!1372701))

(assert (=> d!1372531 d!1372489))

(declare-fun d!1372705 () Bool)

(assert (=> d!1372705 (contains!13031 lm!1477 (hash!2580 hashF!1107 key!3287))))

(assert (=> d!1372705 true))

(declare-fun _$27!1122 () Unit!89977)

(assert (=> d!1372705 (= (choose!28820 lm!1477 key!3287 hashF!1107) _$27!1122)))

(declare-fun bs!825723 () Bool)

(assert (= bs!825723 d!1372705))

(assert (=> bs!825723 m!5204303))

(assert (=> bs!825723 m!5204303))

(assert (=> bs!825723 m!5204461))

(assert (=> d!1372531 d!1372705))

(declare-fun d!1372711 () Bool)

(declare-fun res!1862293 () Bool)

(declare-fun e!2792902 () Bool)

(assert (=> d!1372711 (=> res!1862293 e!2792902)))

(assert (=> d!1372711 (= res!1862293 (is-Nil!50421 (toList!4161 lm!1477)))))

(assert (=> d!1372711 (= (forall!10083 (toList!4161 lm!1477) lambda!166007) e!2792902)))

(declare-fun b!4484243 () Bool)

(declare-fun e!2792903 () Bool)

(assert (=> b!4484243 (= e!2792902 e!2792903)))

(declare-fun res!1862294 () Bool)

(assert (=> b!4484243 (=> (not res!1862294) (not e!2792903))))

(assert (=> b!4484243 (= res!1862294 (dynLambda!21057 lambda!166007 (h!56214 (toList!4161 lm!1477))))))

(declare-fun b!4484244 () Bool)

(assert (=> b!4484244 (= e!2792903 (forall!10083 (t!357499 (toList!4161 lm!1477)) lambda!166007))))

(assert (= (and d!1372711 (not res!1862293)) b!4484243))

(assert (= (and b!4484243 res!1862294) b!4484244))

(declare-fun b_lambda!150513 () Bool)

(assert (=> (not b_lambda!150513) (not b!4484243)))

(declare-fun m!5204827 () Bool)

(assert (=> b!4484243 m!5204827))

(declare-fun m!5204829 () Bool)

(assert (=> b!4484244 m!5204829))

(assert (=> d!1372531 d!1372711))

(assert (=> b!4483868 d!1372597))

(assert (=> b!4483868 d!1372599))

(declare-fun d!1372713 () Bool)

(declare-fun lt!1670171 () Bool)

(assert (=> d!1372713 (= lt!1670171 (set.member lt!1669894 (content!8184 (t!357499 (t!357499 (toList!4161 lm!1477))))))))

(declare-fun e!2792908 () Bool)

(assert (=> d!1372713 (= lt!1670171 e!2792908)))

(declare-fun res!1862300 () Bool)

(assert (=> d!1372713 (=> (not res!1862300) (not e!2792908))))

(assert (=> d!1372713 (= res!1862300 (is-Cons!50421 (t!357499 (t!357499 (toList!4161 lm!1477)))))))

(assert (=> d!1372713 (= (contains!13032 (t!357499 (t!357499 (toList!4161 lm!1477))) lt!1669894) lt!1670171)))

(declare-fun b!4484249 () Bool)

(declare-fun e!2792909 () Bool)

(assert (=> b!4484249 (= e!2792908 e!2792909)))

(declare-fun res!1862299 () Bool)

(assert (=> b!4484249 (=> res!1862299 e!2792909)))

(assert (=> b!4484249 (= res!1862299 (= (h!56214 (t!357499 (t!357499 (toList!4161 lm!1477)))) lt!1669894))))

(declare-fun b!4484250 () Bool)

(assert (=> b!4484250 (= e!2792909 (contains!13032 (t!357499 (t!357499 (t!357499 (toList!4161 lm!1477)))) lt!1669894))))

(assert (= (and d!1372713 res!1862300) b!4484249))

(assert (= (and b!4484249 (not res!1862299)) b!4484250))

(assert (=> d!1372713 m!5204641))

(declare-fun m!5204831 () Bool)

(assert (=> d!1372713 m!5204831))

(declare-fun m!5204833 () Bool)

(assert (=> b!4484250 m!5204833))

(assert (=> b!4483823 d!1372713))

(assert (=> b!4483869 d!1372643))

(declare-fun d!1372715 () Bool)

(assert (=> d!1372715 (containsKey!1580 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))) key!3287)))

(declare-fun lt!1670174 () Unit!89977)

(declare-fun choose!28832 (List!50544 K!11833) Unit!89977)

(assert (=> d!1372715 (= lt!1670174 (choose!28832 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))) key!3287))))

(assert (=> d!1372715 (invariantList!956 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))))))

(assert (=> d!1372715 (= (lemmaInGetKeysListThenContainsKey!403 (toList!4162 (extractMap!1133 (toList!4161 lm!1477))) key!3287) lt!1670174)))

(declare-fun bs!825724 () Bool)

(assert (= bs!825724 d!1372715))

(assert (=> bs!825724 m!5204411))

(declare-fun m!5204837 () Bool)

(assert (=> bs!825724 m!5204837))

(assert (=> bs!825724 m!5204609))

(assert (=> b!4483869 d!1372715))

(declare-fun d!1372717 () Bool)

(declare-fun res!1862303 () Bool)

(declare-fun e!2792912 () Bool)

(assert (=> d!1372717 (=> res!1862303 e!2792912)))

(assert (=> d!1372717 (= res!1862303 (and (is-Cons!50421 (toList!4161 lt!1669889)) (= (_1!28666 (h!56214 (toList!4161 lt!1669889))) hash!344)))))

(assert (=> d!1372717 (= (containsKey!1579 (toList!4161 lt!1669889) hash!344) e!2792912)))

(declare-fun b!4484253 () Bool)

(declare-fun e!2792913 () Bool)

(assert (=> b!4484253 (= e!2792912 e!2792913)))

(declare-fun res!1862304 () Bool)

(assert (=> b!4484253 (=> (not res!1862304) (not e!2792913))))

(assert (=> b!4484253 (= res!1862304 (and (or (not (is-Cons!50421 (toList!4161 lt!1669889))) (bvsle (_1!28666 (h!56214 (toList!4161 lt!1669889))) hash!344)) (is-Cons!50421 (toList!4161 lt!1669889)) (bvslt (_1!28666 (h!56214 (toList!4161 lt!1669889))) hash!344)))))

(declare-fun b!4484254 () Bool)

(assert (=> b!4484254 (= e!2792913 (containsKey!1579 (t!357499 (toList!4161 lt!1669889)) hash!344))))

(assert (= (and d!1372717 (not res!1862303)) b!4484253))

(assert (= (and b!4484253 res!1862304) b!4484254))

(declare-fun m!5204841 () Bool)

(assert (=> b!4484254 m!5204841))

(assert (=> d!1372483 d!1372717))

(declare-fun tp!1336896 () Bool)

(declare-fun b!4484255 () Bool)

(declare-fun e!2792914 () Bool)

(assert (=> b!4484255 (= e!2792914 (and tp_is_empty!27585 tp_is_empty!27587 tp!1336896))))

(assert (=> b!4483943 (= tp!1336882 e!2792914)))

(assert (= (and b!4483943 (is-Cons!50420 (_2!28666 (h!56214 (toList!4161 lm!1477))))) b!4484255))

(declare-fun b!4484256 () Bool)

(declare-fun e!2792915 () Bool)

(declare-fun tp!1336897 () Bool)

(declare-fun tp!1336898 () Bool)

(assert (=> b!4484256 (= e!2792915 (and tp!1336897 tp!1336898))))

(assert (=> b!4483943 (= tp!1336883 e!2792915)))

(assert (= (and b!4483943 (is-Cons!50421 (t!357499 (toList!4161 lm!1477)))) b!4484256))

(declare-fun b!4484257 () Bool)

(declare-fun tp!1336899 () Bool)

(declare-fun e!2792916 () Bool)

(assert (=> b!4484257 (= e!2792916 (and tp_is_empty!27585 tp_is_empty!27587 tp!1336899))))

(assert (=> b!4483948 (= tp!1336886 e!2792916)))

(assert (= (and b!4483948 (is-Cons!50420 (t!357498 (t!357498 newBucket!178)))) b!4484257))

(declare-fun b_lambda!150517 () Bool)

(assert (= b_lambda!150501 (or start!441350 b_lambda!150517)))

(declare-fun bs!825725 () Bool)

(declare-fun d!1372721 () Bool)

(assert (= bs!825725 (and d!1372721 start!441350)))

(assert (=> bs!825725 (= (dynLambda!21057 lambda!165982 (h!56214 (t!357499 (toList!4161 lm!1477)))) (noDuplicateKeys!1077 (_2!28666 (h!56214 (t!357499 (toList!4161 lm!1477))))))))

(declare-fun m!5204843 () Bool)

(assert (=> bs!825725 m!5204843))

(assert (=> b!4484029 d!1372721))

(declare-fun b_lambda!150519 () Bool)

(assert (= b_lambda!150503 (or start!441350 b_lambda!150519)))

(assert (=> d!1372589 d!1372553))

(declare-fun b_lambda!150521 () Bool)

(assert (= b_lambda!150499 (or d!1372495 b_lambda!150521)))

(declare-fun bs!825726 () Bool)

(declare-fun d!1372723 () Bool)

(assert (= bs!825726 (and d!1372723 d!1372495)))

(assert (=> bs!825726 (= (dynLambda!21059 lambda!165990 (h!56213 newBucket!178)) (= (hash!2580 hashF!1107 (_1!28665 (h!56213 newBucket!178))) hash!344))))

(declare-fun m!5204845 () Bool)

(assert (=> bs!825726 m!5204845))

(assert (=> b!4484025 d!1372723))

(declare-fun b_lambda!150523 () Bool)

(assert (= b_lambda!150497 (or d!1372523 b_lambda!150523)))

(declare-fun bs!825727 () Bool)

(declare-fun d!1372725 () Bool)

(assert (= bs!825727 (and d!1372725 d!1372523)))

(assert (=> bs!825727 (= (dynLambda!21057 lambda!166002 (h!56214 (toList!4161 lm!1477))) (noDuplicateKeys!1077 (_2!28666 (h!56214 (toList!4161 lm!1477)))))))

(assert (=> bs!825727 m!5204509))

(assert (=> b!4484019 d!1372725))

(declare-fun b_lambda!150525 () Bool)

(assert (= b_lambda!150505 (or d!1372521 b_lambda!150525)))

(declare-fun bs!825728 () Bool)

(declare-fun d!1372727 () Bool)

(assert (= bs!825728 (and d!1372727 d!1372521)))

(assert (=> bs!825728 (= (dynLambda!21057 lambda!165996 (h!56214 (toList!4161 lm!1477))) (allKeysSameHash!931 (_2!28666 (h!56214 (toList!4161 lm!1477))) (_1!28666 (h!56214 (toList!4161 lm!1477))) hashF!1107))))

(declare-fun m!5204847 () Bool)

(assert (=> bs!825728 m!5204847))

(assert (=> b!4484037 d!1372727))

(declare-fun b_lambda!150527 () Bool)

(assert (= b_lambda!150511 (or d!1372507 b_lambda!150527)))

(declare-fun bs!825729 () Bool)

(declare-fun d!1372729 () Bool)

(assert (= bs!825729 (and d!1372729 d!1372507)))

(assert (=> bs!825729 (= (dynLambda!21057 lambda!165993 (h!56214 (toList!4161 lm!1477))) (noDuplicateKeys!1077 (_2!28666 (h!56214 (toList!4161 lm!1477)))))))

(assert (=> bs!825729 m!5204509))

(assert (=> b!4484131 d!1372729))

(declare-fun b_lambda!150529 () Bool)

(assert (= b_lambda!150513 (or d!1372531 b_lambda!150529)))

(declare-fun bs!825730 () Bool)

(declare-fun d!1372731 () Bool)

(assert (= bs!825730 (and d!1372731 d!1372531)))

(assert (=> bs!825730 (= (dynLambda!21057 lambda!166007 (h!56214 (toList!4161 lm!1477))) (noDuplicateKeys!1077 (_2!28666 (h!56214 (toList!4161 lm!1477)))))))

(assert (=> bs!825730 m!5204509))

(assert (=> b!4484243 d!1372731))

(push 1)

(assert (not b!4484158))

(assert (not b!4484098))

(assert (not b_lambda!150489))

(assert (not bs!825730))

(assert (not d!1372605))

(assert tp_is_empty!27587)

(assert (not b_lambda!150517))

(assert (not b!4484244))

(assert (not bs!825726))

(assert (not b!4484030))

(assert (not b!4484052))

(assert (not d!1372665))

(assert (not b!4484257))

(assert (not d!1372705))

(assert (not b!4484110))

(assert (not b!4484038))

(assert (not b_lambda!150529))

(assert (not b!4484254))

(assert tp_is_empty!27585)

(assert (not b!4484255))

(assert (not d!1372681))

(assert (not b!4484165))

(assert (not b_lambda!150519))

(assert (not b_lambda!150521))

(assert (not b!4484229))

(assert (not b!4484069))

(assert (not b_lambda!150487))

(assert (not b!4484049))

(assert (not b!4484028))

(assert (not b!4484060))

(assert (not d!1372617))

(assert (not b!4484130))

(assert (not b_lambda!150527))

(assert (not b!4484036))

(assert (not b!4484072))

(assert (not d!1372597))

(assert (not b!4484159))

(assert (not b!4484164))

(assert (not d!1372631))

(assert (not bs!825727))

(assert (not b!4484097))

(assert (not d!1372671))

(assert (not b!4484092))

(assert (not b!4484228))

(assert (not b!4484083))

(assert (not b!4484161))

(assert (not bm!312164))

(assert (not b!4484256))

(assert (not bm!312165))

(assert (not b!4484086))

(assert (not b!4484112))

(assert (not bs!825728))

(assert (not b!4484142))

(assert (not b!4484026))

(assert (not d!1372715))

(assert (not b_lambda!150525))

(assert (not b!4484222))

(assert (not d!1372579))

(assert (not d!1372619))

(assert (not b!4484095))

(assert (not d!1372595))

(assert (not b!4484250))

(assert (not b!4484137))

(assert (not d!1372651))

(assert (not b!4484059))

(assert (not b!4484133))

(assert (not d!1372613))

(assert (not b_lambda!150523))

(assert (not d!1372591))

(assert (not b!4484121))

(assert (not b!4484226))

(assert (not b!4484238))

(assert (not b!4484061))

(assert (not b!4484132))

(assert (not b!4484163))

(assert (not d!1372601))

(assert (not d!1372611))

(assert (not b!4484162))

(assert (not b!4484147))

(assert (not b!4484020))

(assert (not b!4484140))

(assert (not d!1372701))

(assert (not bs!825725))

(assert (not bm!312163))

(assert (not d!1372713))

(assert (not d!1372623))

(assert (not b!4484134))

(assert (not bs!825729))

(assert (not d!1372603))

(assert (not b!4484111))

(assert (not b!4484223))

(assert (not b!4484236))

(assert (not d!1372673))

(assert (not d!1372639))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

