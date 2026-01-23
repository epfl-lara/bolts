; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489044 () Bool)

(assert start!489044)

(declare-fun b!4773639 () Bool)

(declare-fun e!2980096 () Bool)

(assert (=> b!4773639 (= e!2980096 true)))

(declare-datatypes ((K!15247 0))(
  ( (K!15248 (val!20503 Int)) )
))
(declare-datatypes ((V!15493 0))(
  ( (V!15494 (val!20504 Int)) )
))
(declare-datatypes ((tuple2!55980 0))(
  ( (tuple2!55981 (_1!31284 K!15247) (_2!31284 V!15493)) )
))
(declare-datatypes ((List!53845 0))(
  ( (Nil!53721) (Cons!53721 (h!60135 tuple2!55980) (t!361295 List!53845)) )
))
(declare-datatypes ((tuple2!55982 0))(
  ( (tuple2!55983 (_1!31285 (_ BitVec 64)) (_2!31285 List!53845)) )
))
(declare-fun lt!1936382 () tuple2!55982)

(declare-datatypes ((List!53846 0))(
  ( (Nil!53722) (Cons!53722 (h!60136 tuple2!55982) (t!361296 List!53846)) )
))
(declare-datatypes ((ListLongMap!4907 0))(
  ( (ListLongMap!4908 (toList!6493 List!53846)) )
))
(declare-fun lm!1309 () ListLongMap!4907)

(declare-datatypes ((Unit!138710 0))(
  ( (Unit!138711) )
))
(declare-fun lt!1936385 () Unit!138710)

(declare-fun lambda!225938 () Int)

(declare-fun forallContained!3944 (List!53846 Int tuple2!55982) Unit!138710)

(assert (=> b!4773639 (= lt!1936385 (forallContained!3944 (toList!6493 lm!1309) lambda!225938 lt!1936382))))

(declare-fun b!4773640 () Bool)

(declare-fun e!2980097 () Bool)

(assert (=> b!4773640 (= e!2980097 (not e!2980096))))

(declare-fun res!2025202 () Bool)

(assert (=> b!4773640 (=> res!2025202 e!2980096)))

(declare-datatypes ((Option!12796 0))(
  ( (None!12795) (Some!12795 (v!47936 tuple2!55980)) )
))
(declare-fun lt!1936386 () Option!12796)

(declare-fun v!9615 () V!15493)

(declare-fun get!18184 (Option!12796) tuple2!55980)

(assert (=> b!4773640 (= res!2025202 (not (= (_2!31284 (get!18184 lt!1936386)) v!9615)))))

(declare-fun isDefined!9942 (Option!12796) Bool)

(assert (=> b!4773640 (isDefined!9942 lt!1936386)))

(declare-fun lt!1936380 () List!53845)

(declare-fun key!2872 () K!15247)

(declare-fun getPair!711 (List!53845 K!15247) Option!12796)

(assert (=> b!4773640 (= lt!1936386 (getPair!711 lt!1936380 key!2872))))

(declare-fun lt!1936388 () Unit!138710)

(assert (=> b!4773640 (= lt!1936388 (forallContained!3944 (toList!6493 lm!1309) lambda!225938 lt!1936382))))

(declare-datatypes ((Hashable!6703 0))(
  ( (HashableExt!6702 (__x!32726 Int)) )
))
(declare-fun hashF!980 () Hashable!6703)

(declare-fun lt!1936381 () Unit!138710)

(declare-fun lemmaInGenMapThenGetPairDefined!485 (ListLongMap!4907 K!15247 Hashable!6703) Unit!138710)

(assert (=> b!4773640 (= lt!1936381 (lemmaInGenMapThenGetPairDefined!485 lm!1309 key!2872 hashF!980))))

(declare-fun lt!1936383 () Unit!138710)

(assert (=> b!4773640 (= lt!1936383 (forallContained!3944 (toList!6493 lm!1309) lambda!225938 lt!1936382))))

(declare-fun contains!17155 (List!53846 tuple2!55982) Bool)

(assert (=> b!4773640 (contains!17155 (toList!6493 lm!1309) lt!1936382)))

(declare-fun lt!1936387 () (_ BitVec 64))

(assert (=> b!4773640 (= lt!1936382 (tuple2!55983 lt!1936387 lt!1936380))))

(declare-fun lt!1936389 () Unit!138710)

(declare-fun lemmaGetValueImpliesTupleContained!506 (ListLongMap!4907 (_ BitVec 64) List!53845) Unit!138710)

(assert (=> b!4773640 (= lt!1936389 (lemmaGetValueImpliesTupleContained!506 lm!1309 lt!1936387 lt!1936380))))

(declare-fun apply!12766 (ListLongMap!4907 (_ BitVec 64)) List!53845)

(assert (=> b!4773640 (= lt!1936380 (apply!12766 lm!1309 lt!1936387))))

(declare-fun contains!17156 (ListLongMap!4907 (_ BitVec 64)) Bool)

(assert (=> b!4773640 (contains!17156 lm!1309 lt!1936387)))

(declare-fun hash!4678 (Hashable!6703 K!15247) (_ BitVec 64))

(assert (=> b!4773640 (= lt!1936387 (hash!4678 hashF!980 key!2872))))

(declare-fun lt!1936384 () Unit!138710)

(declare-fun lemmaInGenMapThenLongMapContainsHash!915 (ListLongMap!4907 K!15247 Hashable!6703) Unit!138710)

(assert (=> b!4773640 (= lt!1936384 (lemmaInGenMapThenLongMapContainsHash!915 lm!1309 key!2872 hashF!980))))

(declare-fun b!4773641 () Bool)

(declare-fun res!2025200 () Bool)

(assert (=> b!4773641 (=> (not res!2025200) (not e!2980097))))

(declare-fun allKeysSameHashInMap!2108 (ListLongMap!4907 Hashable!6703) Bool)

(assert (=> b!4773641 (= res!2025200 (allKeysSameHashInMap!2108 lm!1309 hashF!980))))

(declare-fun b!4773642 () Bool)

(declare-fun res!2025203 () Bool)

(assert (=> b!4773642 (=> res!2025203 e!2980096)))

(declare-fun forall!11971 (List!53846 Int) Bool)

(assert (=> b!4773642 (= res!2025203 (not (forall!11971 (toList!6493 lm!1309) lambda!225938)))))

(declare-fun b!4773643 () Bool)

(declare-fun res!2025199 () Bool)

(assert (=> b!4773643 (=> (not res!2025199) (not e!2980097))))

(declare-datatypes ((ListMap!5973 0))(
  ( (ListMap!5974 (toList!6494 List!53845)) )
))
(declare-fun contains!17157 (ListMap!5973 K!15247) Bool)

(declare-fun extractMap!2238 (List!53846) ListMap!5973)

(assert (=> b!4773643 (= res!2025199 (contains!17157 (extractMap!2238 (toList!6493 lm!1309)) key!2872))))

(declare-fun b!4773644 () Bool)

(declare-fun e!2980095 () Bool)

(declare-fun tp!1356855 () Bool)

(assert (=> b!4773644 (= e!2980095 tp!1356855)))

(declare-fun res!2025201 () Bool)

(assert (=> start!489044 (=> (not res!2025201) (not e!2980097))))

(assert (=> start!489044 (= res!2025201 (forall!11971 (toList!6493 lm!1309) lambda!225938))))

(assert (=> start!489044 e!2980097))

(declare-fun inv!69274 (ListLongMap!4907) Bool)

(assert (=> start!489044 (and (inv!69274 lm!1309) e!2980095)))

(assert (=> start!489044 true))

(declare-fun tp_is_empty!32789 () Bool)

(assert (=> start!489044 tp_is_empty!32789))

(declare-fun tp_is_empty!32791 () Bool)

(assert (=> start!489044 tp_is_empty!32791))

(assert (= (and start!489044 res!2025201) b!4773641))

(assert (= (and b!4773641 res!2025200) b!4773643))

(assert (= (and b!4773643 res!2025199) b!4773640))

(assert (= (and b!4773640 (not res!2025202)) b!4773642))

(assert (= (and b!4773642 (not res!2025203)) b!4773639))

(assert (= start!489044 b!4773644))

(declare-fun m!5747100 () Bool)

(assert (=> b!4773639 m!5747100))

(declare-fun m!5747102 () Bool)

(assert (=> b!4773643 m!5747102))

(assert (=> b!4773643 m!5747102))

(declare-fun m!5747104 () Bool)

(assert (=> b!4773643 m!5747104))

(declare-fun m!5747106 () Bool)

(assert (=> b!4773641 m!5747106))

(declare-fun m!5747108 () Bool)

(assert (=> b!4773640 m!5747108))

(assert (=> b!4773640 m!5747100))

(declare-fun m!5747110 () Bool)

(assert (=> b!4773640 m!5747110))

(declare-fun m!5747112 () Bool)

(assert (=> b!4773640 m!5747112))

(declare-fun m!5747114 () Bool)

(assert (=> b!4773640 m!5747114))

(declare-fun m!5747116 () Bool)

(assert (=> b!4773640 m!5747116))

(declare-fun m!5747118 () Bool)

(assert (=> b!4773640 m!5747118))

(declare-fun m!5747120 () Bool)

(assert (=> b!4773640 m!5747120))

(declare-fun m!5747122 () Bool)

(assert (=> b!4773640 m!5747122))

(declare-fun m!5747124 () Bool)

(assert (=> b!4773640 m!5747124))

(assert (=> b!4773640 m!5747100))

(declare-fun m!5747126 () Bool)

(assert (=> b!4773640 m!5747126))

(declare-fun m!5747128 () Bool)

(assert (=> b!4773642 m!5747128))

(assert (=> start!489044 m!5747128))

(declare-fun m!5747130 () Bool)

(assert (=> start!489044 m!5747130))

(push 1)

(assert (not b!4773639))

(assert (not b!4773644))

(assert (not b!4773643))

(assert (not start!489044))

(assert (not b!4773642))

(assert (not b!4773640))

(assert tp_is_empty!32789)

(assert tp_is_empty!32791)

(assert (not b!4773641))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

