; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489052 () Bool)

(assert start!489052)

(declare-fun res!2025252 () Bool)

(declare-fun e!2980132 () Bool)

(assert (=> start!489052 (=> (not res!2025252) (not e!2980132))))

(declare-datatypes ((K!15257 0))(
  ( (K!15258 (val!20511 Int)) )
))
(declare-datatypes ((V!15503 0))(
  ( (V!15504 (val!20512 Int)) )
))
(declare-datatypes ((tuple2!55996 0))(
  ( (tuple2!55997 (_1!31292 K!15257) (_2!31292 V!15503)) )
))
(declare-datatypes ((List!53853 0))(
  ( (Nil!53729) (Cons!53729 (h!60143 tuple2!55996) (t!361303 List!53853)) )
))
(declare-datatypes ((tuple2!55998 0))(
  ( (tuple2!55999 (_1!31293 (_ BitVec 64)) (_2!31293 List!53853)) )
))
(declare-datatypes ((List!53854 0))(
  ( (Nil!53730) (Cons!53730 (h!60144 tuple2!55998) (t!361304 List!53854)) )
))
(declare-datatypes ((ListLongMap!4915 0))(
  ( (ListLongMap!4916 (toList!6501 List!53854)) )
))
(declare-fun lm!1309 () ListLongMap!4915)

(declare-fun lambda!225972 () Int)

(declare-fun forall!11975 (List!53854 Int) Bool)

(assert (=> start!489052 (= res!2025252 (forall!11975 (toList!6501 lm!1309) lambda!225972))))

(assert (=> start!489052 e!2980132))

(declare-fun e!2980131 () Bool)

(declare-fun inv!69284 (ListLongMap!4915) Bool)

(assert (=> start!489052 (and (inv!69284 lm!1309) e!2980131)))

(assert (=> start!489052 true))

(declare-fun tp_is_empty!32805 () Bool)

(assert (=> start!489052 tp_is_empty!32805))

(declare-fun tp_is_empty!32807 () Bool)

(assert (=> start!489052 tp_is_empty!32807))

(declare-fun b!4773703 () Bool)

(declare-fun e!2980133 () Bool)

(assert (=> b!4773703 (= e!2980132 (not e!2980133))))

(declare-fun res!2025254 () Bool)

(assert (=> b!4773703 (=> res!2025254 e!2980133)))

(declare-datatypes ((Option!12800 0))(
  ( (None!12799) (Some!12799 (v!47940 tuple2!55996)) )
))
(declare-fun lt!1936508 () Option!12800)

(declare-fun v!9615 () V!15503)

(declare-fun get!18190 (Option!12800) tuple2!55996)

(assert (=> b!4773703 (= res!2025254 (not (= (_2!31292 (get!18190 lt!1936508)) v!9615)))))

(declare-fun isDefined!9946 (Option!12800) Bool)

(assert (=> b!4773703 (isDefined!9946 lt!1936508)))

(declare-fun lt!1936506 () List!53853)

(declare-fun key!2872 () K!15257)

(declare-fun getPair!715 (List!53853 K!15257) Option!12800)

(assert (=> b!4773703 (= lt!1936508 (getPair!715 lt!1936506 key!2872))))

(declare-fun lt!1936501 () tuple2!55998)

(declare-datatypes ((Unit!138718 0))(
  ( (Unit!138719) )
))
(declare-fun lt!1936500 () Unit!138718)

(declare-fun forallContained!3948 (List!53854 Int tuple2!55998) Unit!138718)

(assert (=> b!4773703 (= lt!1936500 (forallContained!3948 (toList!6501 lm!1309) lambda!225972 lt!1936501))))

(declare-datatypes ((Hashable!6707 0))(
  ( (HashableExt!6706 (__x!32730 Int)) )
))
(declare-fun hashF!980 () Hashable!6707)

(declare-fun lt!1936507 () Unit!138718)

(declare-fun lemmaInGenMapThenGetPairDefined!489 (ListLongMap!4915 K!15257 Hashable!6707) Unit!138718)

(assert (=> b!4773703 (= lt!1936507 (lemmaInGenMapThenGetPairDefined!489 lm!1309 key!2872 hashF!980))))

(declare-fun lt!1936504 () Unit!138718)

(assert (=> b!4773703 (= lt!1936504 (forallContained!3948 (toList!6501 lm!1309) lambda!225972 lt!1936501))))

(declare-fun contains!17167 (List!53854 tuple2!55998) Bool)

(assert (=> b!4773703 (contains!17167 (toList!6501 lm!1309) lt!1936501)))

(declare-fun lt!1936503 () (_ BitVec 64))

(assert (=> b!4773703 (= lt!1936501 (tuple2!55999 lt!1936503 lt!1936506))))

(declare-fun lt!1936509 () Unit!138718)

(declare-fun lemmaGetValueImpliesTupleContained!510 (ListLongMap!4915 (_ BitVec 64) List!53853) Unit!138718)

(assert (=> b!4773703 (= lt!1936509 (lemmaGetValueImpliesTupleContained!510 lm!1309 lt!1936503 lt!1936506))))

(declare-fun apply!12770 (ListLongMap!4915 (_ BitVec 64)) List!53853)

(assert (=> b!4773703 (= lt!1936506 (apply!12770 lm!1309 lt!1936503))))

(declare-fun contains!17168 (ListLongMap!4915 (_ BitVec 64)) Bool)

(assert (=> b!4773703 (contains!17168 lm!1309 lt!1936503)))

(declare-fun hash!4682 (Hashable!6707 K!15257) (_ BitVec 64))

(assert (=> b!4773703 (= lt!1936503 (hash!4682 hashF!980 key!2872))))

(declare-fun lt!1936505 () Unit!138718)

(declare-fun lemmaInGenMapThenLongMapContainsHash!919 (ListLongMap!4915 K!15257 Hashable!6707) Unit!138718)

(assert (=> b!4773703 (= lt!1936505 (lemmaInGenMapThenLongMapContainsHash!919 lm!1309 key!2872 hashF!980))))

(declare-fun b!4773704 () Bool)

(assert (=> b!4773704 (= e!2980133 (forall!11975 (toList!6501 lm!1309) lambda!225972))))

(declare-fun containsKeyBiggerList!363 (List!53854 K!15257) Bool)

(assert (=> b!4773704 (containsKeyBiggerList!363 (toList!6501 lm!1309) key!2872)))

(declare-fun lt!1936502 () Unit!138718)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!221 (ListLongMap!4915 K!15257 Hashable!6707) Unit!138718)

(assert (=> b!4773704 (= lt!1936502 (lemmaInLongMapThenContainsKeyBiggerList!221 lm!1309 key!2872 hashF!980))))

(declare-fun b!4773705 () Bool)

(declare-fun res!2025253 () Bool)

(assert (=> b!4773705 (=> (not res!2025253) (not e!2980132))))

(declare-fun allKeysSameHashInMap!2112 (ListLongMap!4915 Hashable!6707) Bool)

(assert (=> b!4773705 (= res!2025253 (allKeysSameHashInMap!2112 lm!1309 hashF!980))))

(declare-fun b!4773706 () Bool)

(declare-fun res!2025251 () Bool)

(assert (=> b!4773706 (=> (not res!2025251) (not e!2980132))))

(declare-datatypes ((ListMap!5981 0))(
  ( (ListMap!5982 (toList!6502 List!53853)) )
))
(declare-fun contains!17169 (ListMap!5981 K!15257) Bool)

(declare-fun extractMap!2242 (List!53854) ListMap!5981)

(assert (=> b!4773706 (= res!2025251 (contains!17169 (extractMap!2242 (toList!6501 lm!1309)) key!2872))))

(declare-fun b!4773707 () Bool)

(declare-fun tp!1356867 () Bool)

(assert (=> b!4773707 (= e!2980131 tp!1356867)))

(assert (= (and start!489052 res!2025252) b!4773705))

(assert (= (and b!4773705 res!2025253) b!4773706))

(assert (= (and b!4773706 res!2025251) b!4773703))

(assert (= (and b!4773703 (not res!2025254)) b!4773704))

(assert (= start!489052 b!4773707))

(declare-fun m!5747236 () Bool)

(assert (=> start!489052 m!5747236))

(declare-fun m!5747238 () Bool)

(assert (=> start!489052 m!5747238))

(declare-fun m!5747240 () Bool)

(assert (=> b!4773703 m!5747240))

(declare-fun m!5747242 () Bool)

(assert (=> b!4773703 m!5747242))

(declare-fun m!5747244 () Bool)

(assert (=> b!4773703 m!5747244))

(declare-fun m!5747246 () Bool)

(assert (=> b!4773703 m!5747246))

(declare-fun m!5747248 () Bool)

(assert (=> b!4773703 m!5747248))

(declare-fun m!5747250 () Bool)

(assert (=> b!4773703 m!5747250))

(declare-fun m!5747252 () Bool)

(assert (=> b!4773703 m!5747252))

(declare-fun m!5747254 () Bool)

(assert (=> b!4773703 m!5747254))

(declare-fun m!5747256 () Bool)

(assert (=> b!4773703 m!5747256))

(declare-fun m!5747258 () Bool)

(assert (=> b!4773703 m!5747258))

(assert (=> b!4773703 m!5747250))

(declare-fun m!5747260 () Bool)

(assert (=> b!4773703 m!5747260))

(assert (=> b!4773704 m!5747236))

(declare-fun m!5747262 () Bool)

(assert (=> b!4773704 m!5747262))

(declare-fun m!5747264 () Bool)

(assert (=> b!4773704 m!5747264))

(declare-fun m!5747266 () Bool)

(assert (=> b!4773706 m!5747266))

(assert (=> b!4773706 m!5747266))

(declare-fun m!5747268 () Bool)

(assert (=> b!4773706 m!5747268))

(declare-fun m!5747270 () Bool)

(assert (=> b!4773705 m!5747270))

(push 1)

(assert (not b!4773707))

(assert tp_is_empty!32805)

(assert (not b!4773704))

(assert (not start!489052))

(assert (not b!4773703))

(assert (not b!4773706))

(assert (not b!4773705))

(assert tp_is_empty!32807)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

