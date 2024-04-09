; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5236 () Bool)

(assert start!5236)

(declare-fun res!22959 () Bool)

(declare-fun e!24177 () Bool)

(assert (=> start!5236 (=> (not res!22959) (not e!24177))))

(declare-datatypes ((B!788 0))(
  ( (B!789 (val!894 Int)) )
))
(declare-fun b!99 () B!788)

(declare-datatypes ((tuple2!1452 0))(
  ( (tuple2!1453 (_1!736 (_ BitVec 64)) (_2!736 B!788)) )
))
(declare-datatypes ((List!1020 0))(
  ( (Nil!1017) (Cons!1016 (h!1584 tuple2!1452) (t!3861 List!1020)) )
))
(declare-datatypes ((ListLongMap!1033 0))(
  ( (ListLongMap!1034 (toList!532 List!1020)) )
))
(declare-fun lm!264 () ListLongMap!1033)

(declare-fun a!526 () (_ BitVec 64))

(declare-fun contains!480 (List!1020 tuple2!1452) Bool)

(assert (=> start!5236 (= res!22959 (contains!480 (toList!532 lm!264) (tuple2!1453 a!526 b!99)))))

(assert (=> start!5236 e!24177))

(declare-fun e!24176 () Bool)

(declare-fun inv!1699 (ListLongMap!1033) Bool)

(assert (=> start!5236 (and (inv!1699 lm!264) e!24176)))

(assert (=> start!5236 true))

(declare-fun tp_is_empty!1711 () Bool)

(assert (=> start!5236 tp_is_empty!1711))

(declare-fun b!38041 () Bool)

(declare-fun e!24175 () Bool)

(assert (=> b!38041 (= e!24177 (not e!24175))))

(declare-fun res!22960 () Bool)

(assert (=> b!38041 (=> res!22960 e!24175)))

(declare-fun isStrictlySorted!196 (List!1020) Bool)

(assert (=> b!38041 (= res!22960 (not (isStrictlySorted!196 (toList!532 lm!264))))))

(declare-fun containsKey!62 (List!1020 (_ BitVec 64)) Bool)

(assert (=> b!38041 (containsKey!62 (toList!532 lm!264) a!526)))

(declare-datatypes ((Unit!876 0))(
  ( (Unit!877) )
))
(declare-fun lt!13977 () Unit!876)

(declare-fun lemmaContainsTupleThenContainsKey!7 (List!1020 (_ BitVec 64) B!788) Unit!876)

(assert (=> b!38041 (= lt!13977 (lemmaContainsTupleThenContainsKey!7 (toList!532 lm!264) a!526 b!99))))

(declare-fun b!38042 () Bool)

(assert (=> b!38042 (= e!24175 true)))

(declare-datatypes ((Option!98 0))(
  ( (Some!97 (v!1972 B!788)) (None!96) )
))
(declare-fun getValueByKey!92 (List!1020 (_ BitVec 64)) Option!98)

(assert (=> b!38042 (= (getValueByKey!92 (toList!532 lm!264) a!526) (Some!97 b!99))))

(declare-fun lt!13978 () Unit!876)

(declare-fun lemmaContainsTupThenGetReturnValue!20 (List!1020 (_ BitVec 64) B!788) Unit!876)

(assert (=> b!38042 (= lt!13978 (lemmaContainsTupThenGetReturnValue!20 (toList!532 lm!264) a!526 b!99))))

(declare-fun b!38043 () Bool)

(declare-fun tp!5642 () Bool)

(assert (=> b!38043 (= e!24176 tp!5642)))

(assert (= (and start!5236 res!22959) b!38041))

(assert (= (and b!38041 (not res!22960)) b!38042))

(assert (= start!5236 b!38043))

(declare-fun m!30725 () Bool)

(assert (=> start!5236 m!30725))

(declare-fun m!30727 () Bool)

(assert (=> start!5236 m!30727))

(declare-fun m!30729 () Bool)

(assert (=> b!38041 m!30729))

(declare-fun m!30731 () Bool)

(assert (=> b!38041 m!30731))

(declare-fun m!30733 () Bool)

(assert (=> b!38041 m!30733))

(declare-fun m!30735 () Bool)

(assert (=> b!38042 m!30735))

(declare-fun m!30737 () Bool)

(assert (=> b!38042 m!30737))

(push 1)

(assert (not b!38043))

(assert tp_is_empty!1711)

(assert (not b!38042))

(assert (not b!38041))

(assert (not start!5236))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

