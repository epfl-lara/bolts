; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!498400 () Bool)

(assert start!498400)

(declare-fun b!4816262 () Bool)

(declare-fun res!2048792 () Bool)

(declare-fun e!3009087 () Bool)

(assert (=> b!4816262 (=> (not res!2048792) (not e!3009087))))

(declare-datatypes ((K!16412 0))(
  ( (K!16413 (val!21435 Int)) )
))
(declare-datatypes ((V!16658 0))(
  ( (V!16659 (val!21436 Int)) )
))
(declare-datatypes ((tuple2!57806 0))(
  ( (tuple2!57807 (_1!32197 K!16412) (_2!32197 V!16658)) )
))
(declare-datatypes ((List!54880 0))(
  ( (Nil!54756) (Cons!54756 (h!61188 tuple2!57806) (t!362376 List!54880)) )
))
(declare-datatypes ((tuple2!57808 0))(
  ( (tuple2!57809 (_1!32198 (_ BitVec 64)) (_2!32198 List!54880)) )
))
(declare-datatypes ((List!54881 0))(
  ( (Nil!54757) (Cons!54757 (h!61189 tuple2!57808) (t!362377 List!54881)) )
))
(declare-datatypes ((ListLongMap!5801 0))(
  ( (ListLongMap!5802 (toList!7321 List!54881)) )
))
(declare-fun lm!2251 () ListLongMap!5801)

(declare-fun key!5322 () K!16412)

(declare-datatypes ((ListMap!6735 0))(
  ( (ListMap!6736 (toList!7322 List!54880)) )
))
(declare-fun contains!18571 (ListMap!6735 K!16412) Bool)

(declare-fun extractMap!2619 (List!54881) ListMap!6735)

(assert (=> b!4816262 (= res!2048792 (contains!18571 (extractMap!2619 (toList!7321 lm!2251)) key!5322))))

(declare-fun res!2048795 () Bool)

(assert (=> start!498400 (=> (not res!2048795) (not e!3009087))))

(declare-fun lambda!234571 () Int)

(declare-fun forall!12475 (List!54881 Int) Bool)

(assert (=> start!498400 (= res!2048795 (forall!12475 (toList!7321 lm!2251) lambda!234571))))

(assert (=> start!498400 e!3009087))

(declare-fun e!3009088 () Bool)

(declare-fun inv!70313 (ListLongMap!5801) Bool)

(assert (=> start!498400 (and (inv!70313 lm!2251) e!3009088)))

(assert (=> start!498400 true))

(declare-fun tp_is_empty!34211 () Bool)

(assert (=> start!498400 tp_is_empty!34211))

(declare-fun b!4816263 () Bool)

(declare-fun e!3009086 () Bool)

(assert (=> b!4816263 (= e!3009087 (not e!3009086))))

(declare-fun res!2048793 () Bool)

(assert (=> b!4816263 (=> res!2048793 e!3009086)))

(declare-fun lt!1966957 () List!54880)

(declare-datatypes ((Option!13422 0))(
  ( (None!13421) (Some!13421 (v!49074 tuple2!57806)) )
))
(declare-fun isEmpty!29589 (Option!13422) Bool)

(declare-fun getPair!1007 (List!54880 K!16412) Option!13422)

(assert (=> b!4816263 (= res!2048793 (not (isEmpty!29589 (getPair!1007 lt!1966957 key!5322))))))

(declare-datatypes ((Unit!141959 0))(
  ( (Unit!141960) )
))
(declare-fun lt!1966953 () Unit!141959)

(declare-fun lt!1966956 () tuple2!57808)

(declare-fun forallContained!4335 (List!54881 Int tuple2!57808) Unit!141959)

(assert (=> b!4816263 (= lt!1966953 (forallContained!4335 (toList!7321 lm!2251) lambda!234571 lt!1966956))))

(declare-fun contains!18572 (List!54881 tuple2!57808) Bool)

(assert (=> b!4816263 (contains!18572 (toList!7321 lm!2251) lt!1966956)))

(declare-fun lt!1966955 () (_ BitVec 64))

(assert (=> b!4816263 (= lt!1966956 (tuple2!57809 lt!1966955 lt!1966957))))

(declare-fun lt!1966958 () Unit!141959)

(declare-fun lemmaGetValueImpliesTupleContained!678 (ListLongMap!5801 (_ BitVec 64) List!54880) Unit!141959)

(assert (=> b!4816263 (= lt!1966958 (lemmaGetValueImpliesTupleContained!678 lm!2251 lt!1966955 lt!1966957))))

(declare-fun apply!13272 (ListLongMap!5801 (_ BitVec 64)) List!54880)

(assert (=> b!4816263 (= lt!1966957 (apply!13272 lm!2251 lt!1966955))))

(declare-fun contains!18573 (ListLongMap!5801 (_ BitVec 64)) Bool)

(assert (=> b!4816263 (contains!18573 lm!2251 lt!1966955)))

(declare-datatypes ((Hashable!7169 0))(
  ( (HashableExt!7168 (__x!33444 Int)) )
))
(declare-fun hashF!1486 () Hashable!7169)

(declare-fun hash!5240 (Hashable!7169 K!16412) (_ BitVec 64))

(assert (=> b!4816263 (= lt!1966955 (hash!5240 hashF!1486 key!5322))))

(declare-fun lt!1966954 () Unit!141959)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1105 (ListLongMap!5801 K!16412 Hashable!7169) Unit!141959)

(assert (=> b!4816263 (= lt!1966954 (lemmaInGenMapThenLongMapContainsHash!1105 lm!2251 key!5322 hashF!1486))))

(declare-fun b!4816264 () Bool)

(declare-fun tp!1361912 () Bool)

(assert (=> b!4816264 (= e!3009088 tp!1361912)))

(declare-fun b!4816265 () Bool)

(declare-fun res!2048794 () Bool)

(assert (=> b!4816265 (=> (not res!2048794) (not e!3009087))))

(declare-fun allKeysSameHashInMap!2485 (ListLongMap!5801 Hashable!7169) Bool)

(assert (=> b!4816265 (= res!2048794 (allKeysSameHashInMap!2485 lm!2251 hashF!1486))))

(declare-fun b!4816266 () Bool)

(assert (=> b!4816266 (= e!3009086 (forall!12475 (toList!7321 lm!2251) lambda!234571))))

(assert (= (and start!498400 res!2048795) b!4816265))

(assert (= (and b!4816265 res!2048794) b!4816262))

(assert (= (and b!4816262 res!2048792) b!4816263))

(assert (= (and b!4816263 (not res!2048793)) b!4816266))

(assert (= start!498400 b!4816264))

(declare-fun m!5802526 () Bool)

(assert (=> b!4816263 m!5802526))

(declare-fun m!5802528 () Bool)

(assert (=> b!4816263 m!5802528))

(assert (=> b!4816263 m!5802526))

(declare-fun m!5802530 () Bool)

(assert (=> b!4816263 m!5802530))

(declare-fun m!5802532 () Bool)

(assert (=> b!4816263 m!5802532))

(declare-fun m!5802534 () Bool)

(assert (=> b!4816263 m!5802534))

(declare-fun m!5802536 () Bool)

(assert (=> b!4816263 m!5802536))

(declare-fun m!5802538 () Bool)

(assert (=> b!4816263 m!5802538))

(declare-fun m!5802540 () Bool)

(assert (=> b!4816263 m!5802540))

(declare-fun m!5802542 () Bool)

(assert (=> b!4816263 m!5802542))

(declare-fun m!5802544 () Bool)

(assert (=> b!4816266 m!5802544))

(assert (=> start!498400 m!5802544))

(declare-fun m!5802546 () Bool)

(assert (=> start!498400 m!5802546))

(declare-fun m!5802548 () Bool)

(assert (=> b!4816262 m!5802548))

(assert (=> b!4816262 m!5802548))

(declare-fun m!5802550 () Bool)

(assert (=> b!4816262 m!5802550))

(declare-fun m!5802552 () Bool)

(assert (=> b!4816265 m!5802552))

(push 1)

(assert (not b!4816266))

(assert (not b!4816265))

(assert (not b!4816262))

(assert tp_is_empty!34211)

(assert (not b!4816264))

(assert (not start!498400))

(assert (not b!4816263))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

