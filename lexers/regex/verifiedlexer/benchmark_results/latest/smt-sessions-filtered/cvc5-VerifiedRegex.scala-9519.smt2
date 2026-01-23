; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!502668 () Bool)

(assert start!502668)

(declare-fun res!2060014 () Bool)

(declare-fun e!3021729 () Bool)

(assert (=> start!502668 (=> (not res!2060014) (not e!3021729))))

(declare-datatypes ((K!16882 0))(
  ( (K!16883 (val!21811 Int)) )
))
(declare-datatypes ((V!17128 0))(
  ( (V!17129 (val!21812 Int)) )
))
(declare-datatypes ((tuple2!58494 0))(
  ( (tuple2!58495 (_1!32541 K!16882) (_2!32541 V!17128)) )
))
(declare-datatypes ((List!55280 0))(
  ( (Nil!55156) (Cons!55156 (h!61590 tuple2!58494) (t!362776 List!55280)) )
))
(declare-datatypes ((tuple2!58496 0))(
  ( (tuple2!58497 (_1!32542 (_ BitVec 64)) (_2!32542 List!55280)) )
))
(declare-datatypes ((List!55281 0))(
  ( (Nil!55157) (Cons!55157 (h!61591 tuple2!58496) (t!362777 List!55281)) )
))
(declare-datatypes ((ListLongMap!6113 0))(
  ( (ListLongMap!6114 (toList!7609 List!55281)) )
))
(declare-fun lm!1282 () ListLongMap!6113)

(declare-fun lambda!239237 () Int)

(declare-fun forall!12724 (List!55281 Int) Bool)

(assert (=> start!502668 (= res!2060014 (forall!12724 (toList!7609 lm!1282) lambda!239237))))

(assert (=> start!502668 e!3021729))

(declare-fun e!3021732 () Bool)

(declare-fun inv!70783 (ListLongMap!6113) Bool)

(assert (=> start!502668 (and (inv!70783 lm!1282) e!3021732)))

(assert (=> start!502668 true))

(declare-fun tp_is_empty!34745 () Bool)

(assert (=> start!502668 tp_is_empty!34745))

(declare-fun b!4835252 () Bool)

(declare-fun tp!1363303 () Bool)

(assert (=> b!4835252 (= e!3021732 tp!1363303)))

(declare-fun b!4835253 () Bool)

(declare-fun res!2060015 () Bool)

(assert (=> b!4835253 (=> (not res!2060015) (not e!3021729))))

(declare-datatypes ((Hashable!7325 0))(
  ( (HashableExt!7324 (__x!33600 Int)) )
))
(declare-fun hashF!961 () Hashable!7325)

(declare-fun allKeysSameHashInMap!2641 (ListLongMap!6113 Hashable!7325) Bool)

(assert (=> b!4835253 (= res!2060015 (allKeysSameHashInMap!2641 lm!1282 hashF!961))))

(declare-fun b!4835254 () Bool)

(declare-fun e!3021731 () Bool)

(assert (=> b!4835254 (= e!3021729 e!3021731)))

(declare-fun res!2060019 () Bool)

(assert (=> b!4835254 (=> (not res!2060019) (not e!3021731))))

(declare-fun lt!1981216 () (_ BitVec 64))

(declare-fun contains!18980 (ListLongMap!6113 (_ BitVec 64)) Bool)

(assert (=> b!4835254 (= res!2060019 (contains!18980 lm!1282 lt!1981216))))

(declare-fun key!2791 () K!16882)

(declare-fun hash!5511 (Hashable!7325 K!16882) (_ BitVec 64))

(assert (=> b!4835254 (= lt!1981216 (hash!5511 hashF!961 key!2791))))

(declare-fun b!4835255 () Bool)

(declare-fun res!2060018 () Bool)

(declare-fun e!3021730 () Bool)

(assert (=> b!4835255 (=> res!2060018 e!3021730)))

(assert (=> b!4835255 (= res!2060018 (not (forall!12724 (toList!7609 lm!1282) lambda!239237)))))

(declare-fun b!4835256 () Bool)

(assert (=> b!4835256 (= e!3021731 (not e!3021730))))

(declare-fun res!2060017 () Bool)

(assert (=> b!4835256 (=> res!2060017 e!3021730)))

(declare-fun lt!1981210 () List!55280)

(declare-datatypes ((Option!13561 0))(
  ( (None!13560) (Some!13560 (v!49263 tuple2!58494)) )
))
(declare-fun isDefined!10671 (Option!13561) Bool)

(declare-fun getPair!1025 (List!55280 K!16882) Option!13561)

(assert (=> b!4835256 (= res!2060017 (not (isDefined!10671 (getPair!1025 lt!1981210 key!2791))))))

(declare-datatypes ((Unit!144542 0))(
  ( (Unit!144543) )
))
(declare-fun lt!1981214 () Unit!144542)

(declare-fun lt!1981211 () tuple2!58496)

(declare-fun forallContained!4448 (List!55281 Int tuple2!58496) Unit!144542)

(assert (=> b!4835256 (= lt!1981214 (forallContained!4448 (toList!7609 lm!1282) lambda!239237 lt!1981211))))

(declare-fun contains!18981 (List!55281 tuple2!58496) Bool)

(assert (=> b!4835256 (contains!18981 (toList!7609 lm!1282) lt!1981211)))

(assert (=> b!4835256 (= lt!1981211 (tuple2!58497 lt!1981216 lt!1981210))))

(declare-fun lt!1981215 () Unit!144542)

(declare-fun lemmaGetValueImpliesTupleContained!704 (ListLongMap!6113 (_ BitVec 64) List!55280) Unit!144542)

(assert (=> b!4835256 (= lt!1981215 (lemmaGetValueImpliesTupleContained!704 lm!1282 lt!1981216 lt!1981210))))

(declare-fun apply!13388 (ListLongMap!6113 (_ BitVec 64)) List!55280)

(assert (=> b!4835256 (= lt!1981210 (apply!13388 lm!1282 lt!1981216))))

(declare-fun b!4835257 () Bool)

(declare-fun e!3021728 () Bool)

(assert (=> b!4835257 (= e!3021728 true)))

(declare-fun lt!1981212 () Unit!144542)

(assert (=> b!4835257 (= lt!1981212 (forallContained!4448 (toList!7609 lm!1282) lambda!239237 lt!1981211))))

(declare-fun b!4835258 () Bool)

(assert (=> b!4835258 (= e!3021730 e!3021728)))

(declare-fun res!2060016 () Bool)

(assert (=> b!4835258 (=> res!2060016 e!3021728)))

(assert (=> b!4835258 (= res!2060016 (not (forall!12724 (toList!7609 lm!1282) lambda!239237)))))

(declare-fun lt!1981213 () Unit!144542)

(assert (=> b!4835258 (= lt!1981213 (forallContained!4448 (toList!7609 lm!1282) lambda!239237 lt!1981211))))

(assert (= (and start!502668 res!2060014) b!4835253))

(assert (= (and b!4835253 res!2060015) b!4835254))

(assert (= (and b!4835254 res!2060019) b!4835256))

(assert (= (and b!4835256 (not res!2060017)) b!4835255))

(assert (= (and b!4835255 (not res!2060018)) b!4835258))

(assert (= (and b!4835258 (not res!2060016)) b!4835257))

(assert (= start!502668 b!4835252))

(declare-fun m!5830416 () Bool)

(assert (=> b!4835255 m!5830416))

(declare-fun m!5830418 () Bool)

(assert (=> b!4835256 m!5830418))

(declare-fun m!5830420 () Bool)

(assert (=> b!4835256 m!5830420))

(declare-fun m!5830422 () Bool)

(assert (=> b!4835256 m!5830422))

(declare-fun m!5830424 () Bool)

(assert (=> b!4835256 m!5830424))

(declare-fun m!5830426 () Bool)

(assert (=> b!4835256 m!5830426))

(assert (=> b!4835256 m!5830424))

(declare-fun m!5830428 () Bool)

(assert (=> b!4835256 m!5830428))

(assert (=> start!502668 m!5830416))

(declare-fun m!5830430 () Bool)

(assert (=> start!502668 m!5830430))

(assert (=> b!4835257 m!5830428))

(declare-fun m!5830432 () Bool)

(assert (=> b!4835253 m!5830432))

(declare-fun m!5830434 () Bool)

(assert (=> b!4835254 m!5830434))

(declare-fun m!5830436 () Bool)

(assert (=> b!4835254 m!5830436))

(assert (=> b!4835258 m!5830416))

(assert (=> b!4835258 m!5830428))

(push 1)

(assert (not b!4835258))

(assert tp_is_empty!34745)

(assert (not b!4835254))

(assert (not b!4835255))

(assert (not start!502668))

(assert (not b!4835256))

(assert (not b!4835257))

(assert (not b!4835253))

(assert (not b!4835252))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

