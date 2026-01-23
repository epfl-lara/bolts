; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!481206 () Bool)

(assert start!481206)

(declare-fun b!4726082 () Bool)

(declare-fun res!2000022 () Bool)

(declare-fun e!2947624 () Bool)

(assert (=> b!4726082 (=> (not res!2000022) (not e!2947624))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-datatypes ((Hashable!6390 0))(
  ( (HashableExt!6389 (__x!32093 Int)) )
))
(declare-fun hashF!1323 () Hashable!6390)

(declare-datatypes ((K!14203 0))(
  ( (K!14204 (val!19633 Int)) )
))
(declare-datatypes ((V!14449 0))(
  ( (V!14450 (val!19634 Int)) )
))
(declare-datatypes ((tuple2!54478 0))(
  ( (tuple2!54479 (_1!30533 K!14203) (_2!30533 V!14449)) )
))
(declare-datatypes ((List!52974 0))(
  ( (Nil!52850) (Cons!52850 (h!59203 tuple2!54478) (t!360250 List!52974)) )
))
(declare-fun newBucket!218 () List!52974)

(declare-fun allKeysSameHash!1847 (List!52974 (_ BitVec 64) Hashable!6390) Bool)

(assert (=> b!4726082 (= res!2000022 (allKeysSameHash!1847 newBucket!218 hash!405 hashF!1323))))

(declare-fun tp!1348550 () Bool)

(declare-fun e!2947621 () Bool)

(declare-fun b!4726083 () Bool)

(declare-fun tp_is_empty!31377 () Bool)

(declare-fun tp_is_empty!31379 () Bool)

(assert (=> b!4726083 (= e!2947621 (and tp_is_empty!31377 tp_is_empty!31379 tp!1348550))))

(declare-fun b!4726084 () Bool)

(declare-fun e!2947622 () Bool)

(declare-datatypes ((ListMap!5295 0))(
  ( (ListMap!5296 (toList!5931 List!52974)) )
))
(declare-fun lt!1890916 () ListMap!5295)

(declare-datatypes ((tuple2!54480 0))(
  ( (tuple2!54481 (_1!30534 (_ BitVec 64)) (_2!30534 List!52974)) )
))
(declare-datatypes ((List!52975 0))(
  ( (Nil!52851) (Cons!52851 (h!59204 tuple2!54480) (t!360251 List!52975)) )
))
(declare-datatypes ((ListLongMap!4461 0))(
  ( (ListLongMap!4462 (toList!5932 List!52975)) )
))
(declare-fun lm!2023 () ListLongMap!4461)

(declare-fun addToMapMapFromBucket!1451 (List!52974 ListMap!5295) ListMap!5295)

(declare-fun extractMap!2047 (List!52975) ListMap!5295)

(assert (=> b!4726084 (= e!2947622 (= lt!1890916 (addToMapMapFromBucket!1451 (_2!30534 (h!59204 (toList!5932 lm!2023))) (extractMap!2047 (t!360251 (toList!5932 lm!2023))))))))

(declare-fun b!4726085 () Bool)

(declare-fun res!2000020 () Bool)

(assert (=> b!4726085 (=> (not res!2000020) (not e!2947624))))

(declare-fun allKeysSameHashInMap!1935 (ListLongMap!4461 Hashable!6390) Bool)

(assert (=> b!4726085 (= res!2000020 (allKeysSameHashInMap!1935 lm!2023 hashF!1323))))

(declare-fun tp!1348548 () Bool)

(declare-fun e!2947623 () Bool)

(declare-fun b!4726086 () Bool)

(assert (=> b!4726086 (= e!2947623 (and tp_is_empty!31377 tp_is_empty!31379 tp!1348548))))

(declare-fun res!2000025 () Bool)

(declare-fun e!2947619 () Bool)

(assert (=> start!481206 (=> (not res!2000025) (not e!2947619))))

(declare-fun lambda!216237 () Int)

(declare-fun forall!11605 (List!52975 Int) Bool)

(assert (=> start!481206 (= res!2000025 (forall!11605 (toList!5932 lm!2023) lambda!216237))))

(assert (=> start!481206 e!2947619))

(declare-fun e!2947620 () Bool)

(declare-fun inv!68078 (ListLongMap!4461) Bool)

(assert (=> start!481206 (and (inv!68078 lm!2023) e!2947620)))

(assert (=> start!481206 tp_is_empty!31377))

(assert (=> start!481206 e!2947621))

(assert (=> start!481206 true))

(assert (=> start!481206 e!2947623))

(declare-fun b!4726087 () Bool)

(declare-fun tp!1348549 () Bool)

(assert (=> b!4726087 (= e!2947620 tp!1348549)))

(declare-fun b!4726088 () Bool)

(assert (=> b!4726088 (= e!2947619 e!2947624)))

(declare-fun res!2000023 () Bool)

(assert (=> b!4726088 (=> (not res!2000023) (not e!2947624))))

(declare-fun key!4653 () K!14203)

(declare-fun contains!16197 (ListMap!5295 K!14203) Bool)

(assert (=> b!4726088 (= res!2000023 (contains!16197 lt!1890916 key!4653))))

(assert (=> b!4726088 (= lt!1890916 (extractMap!2047 (toList!5932 lm!2023)))))

(declare-fun b!4726089 () Bool)

(declare-fun res!2000030 () Bool)

(assert (=> b!4726089 (=> (not res!2000030) (not e!2947619))))

(declare-fun oldBucket!34 () List!52974)

(declare-fun removePairForKey!1616 (List!52974 K!14203) List!52974)

(assert (=> b!4726089 (= res!2000030 (= (removePairForKey!1616 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4726090 () Bool)

(declare-fun res!2000026 () Bool)

(assert (=> b!4726090 (=> (not res!2000026) (not e!2947619))))

(declare-fun noDuplicateKeys!2021 (List!52974) Bool)

(assert (=> b!4726090 (= res!2000026 (noDuplicateKeys!2021 newBucket!218))))

(declare-fun b!4726091 () Bool)

(declare-fun res!2000028 () Bool)

(assert (=> b!4726091 (=> (not res!2000028) (not e!2947624))))

(assert (=> b!4726091 (= res!2000028 (is-Cons!52851 (toList!5932 lm!2023)))))

(declare-fun b!4726092 () Bool)

(assert (=> b!4726092 (= e!2947624 (not true))))

(assert (=> b!4726092 e!2947622))

(declare-fun res!2000024 () Bool)

(assert (=> b!4726092 (=> (not res!2000024) (not e!2947622))))

(declare-fun tail!9020 (ListLongMap!4461) ListLongMap!4461)

(assert (=> b!4726092 (= res!2000024 (= (t!360251 (toList!5932 lm!2023)) (toList!5932 (tail!9020 lm!2023))))))

(declare-fun b!4726093 () Bool)

(declare-fun res!2000021 () Bool)

(assert (=> b!4726093 (=> (not res!2000021) (not e!2947619))))

(assert (=> b!4726093 (= res!2000021 (noDuplicateKeys!2021 oldBucket!34))))

(declare-fun b!4726094 () Bool)

(declare-fun res!2000029 () Bool)

(assert (=> b!4726094 (=> (not res!2000029) (not e!2947619))))

(assert (=> b!4726094 (= res!2000029 (allKeysSameHash!1847 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4726095 () Bool)

(declare-fun res!2000027 () Bool)

(assert (=> b!4726095 (=> (not res!2000027) (not e!2947624))))

(declare-fun hash!4397 (Hashable!6390 K!14203) (_ BitVec 64))

(assert (=> b!4726095 (= res!2000027 (= (hash!4397 hashF!1323 key!4653) hash!405))))

(declare-fun b!4726096 () Bool)

(declare-fun res!2000031 () Bool)

(assert (=> b!4726096 (=> (not res!2000031) (not e!2947624))))

(declare-fun head!10261 (List!52975) tuple2!54480)

(assert (=> b!4726096 (= res!2000031 (= (head!10261 (toList!5932 lm!2023)) (tuple2!54481 hash!405 oldBucket!34)))))

(assert (= (and start!481206 res!2000025) b!4726093))

(assert (= (and b!4726093 res!2000021) b!4726090))

(assert (= (and b!4726090 res!2000026) b!4726089))

(assert (= (and b!4726089 res!2000030) b!4726094))

(assert (= (and b!4726094 res!2000029) b!4726088))

(assert (= (and b!4726088 res!2000023) b!4726095))

(assert (= (and b!4726095 res!2000027) b!4726082))

(assert (= (and b!4726082 res!2000022) b!4726085))

(assert (= (and b!4726085 res!2000020) b!4726096))

(assert (= (and b!4726096 res!2000031) b!4726091))

(assert (= (and b!4726091 res!2000028) b!4726092))

(assert (= (and b!4726092 res!2000024) b!4726084))

(assert (= start!481206 b!4726087))

(assert (= (and start!481206 (is-Cons!52850 oldBucket!34)) b!4726083))

(assert (= (and start!481206 (is-Cons!52850 newBucket!218)) b!4726086))

(declare-fun m!5665821 () Bool)

(assert (=> b!4726092 m!5665821))

(declare-fun m!5665823 () Bool)

(assert (=> start!481206 m!5665823))

(declare-fun m!5665825 () Bool)

(assert (=> start!481206 m!5665825))

(declare-fun m!5665827 () Bool)

(assert (=> b!4726085 m!5665827))

(declare-fun m!5665829 () Bool)

(assert (=> b!4726090 m!5665829))

(declare-fun m!5665831 () Bool)

(assert (=> b!4726096 m!5665831))

(declare-fun m!5665833 () Bool)

(assert (=> b!4726094 m!5665833))

(declare-fun m!5665835 () Bool)

(assert (=> b!4726093 m!5665835))

(declare-fun m!5665837 () Bool)

(assert (=> b!4726089 m!5665837))

(declare-fun m!5665839 () Bool)

(assert (=> b!4726082 m!5665839))

(declare-fun m!5665841 () Bool)

(assert (=> b!4726084 m!5665841))

(assert (=> b!4726084 m!5665841))

(declare-fun m!5665843 () Bool)

(assert (=> b!4726084 m!5665843))

(declare-fun m!5665845 () Bool)

(assert (=> b!4726088 m!5665845))

(declare-fun m!5665847 () Bool)

(assert (=> b!4726088 m!5665847))

(declare-fun m!5665849 () Bool)

(assert (=> b!4726095 m!5665849))

(push 1)

(assert (not b!4726082))

(assert (not b!4726096))

(assert (not start!481206))

(assert (not b!4726093))

(assert (not b!4726085))

(assert tp_is_empty!31377)

(assert (not b!4726092))

(assert (not b!4726088))

(assert (not b!4726094))

(assert tp_is_empty!31379)

(assert (not b!4726090))

(assert (not b!4726084))

(assert (not b!4726087))

(assert (not b!4726089))

(assert (not b!4726095))

(assert (not b!4726086))

(assert (not b!4726083))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

