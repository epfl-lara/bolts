; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7796 () Bool)

(assert start!7796)

(declare-datatypes ((B!1008 0))(
  ( (B!1009 (val!1124 Int)) )
))
(declare-datatypes ((tuple2!1834 0))(
  ( (tuple2!1835 (_1!927 (_ BitVec 64)) (_2!927 B!1008)) )
))
(declare-datatypes ((List!1340 0))(
  ( (Nil!1337) (Cons!1336 (h!1916 tuple2!1834) (t!4382 List!1340)) )
))
(declare-datatypes ((ListLongMap!1259 0))(
  ( (ListLongMap!1260 (toList!645 List!1340)) )
))
(declare-fun thiss!192 () ListLongMap!1259)

(declare-fun isStrictlySorted!275 (List!1340) Bool)

(assert (=> start!7796 (not (isStrictlySorted!275 (toList!645 thiss!192)))))

(declare-fun e!31795 () Bool)

(declare-fun inv!2306 (ListLongMap!1259) Bool)

(assert (=> start!7796 (and (inv!2306 thiss!192) e!31795)))

(declare-fun b!49479 () Bool)

(declare-fun tp!6539 () Bool)

(assert (=> b!49479 (= e!31795 tp!6539)))

(assert (= start!7796 b!49479))

(declare-fun m!42911 () Bool)

(assert (=> start!7796 m!42911))

(declare-fun m!42913 () Bool)

(assert (=> start!7796 m!42913))

(push 1)

(assert (not start!7796))

(assert (not b!49479))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9937 () Bool)

(declare-fun res!28634 () Bool)

(declare-fun e!31814 () Bool)

(assert (=> d!9937 (=> res!28634 e!31814)))

(assert (=> d!9937 (= res!28634 (or (is-Nil!1337 (toList!645 thiss!192)) (is-Nil!1337 (t!4382 (toList!645 thiss!192)))))))

(assert (=> d!9937 (= (isStrictlySorted!275 (toList!645 thiss!192)) e!31814)))

(declare-fun b!49500 () Bool)

(declare-fun e!31815 () Bool)

(assert (=> b!49500 (= e!31814 e!31815)))

(declare-fun res!28635 () Bool)

(assert (=> b!49500 (=> (not res!28635) (not e!31815))))

(assert (=> b!49500 (= res!28635 (bvslt (_1!927 (h!1916 (toList!645 thiss!192))) (_1!927 (h!1916 (t!4382 (toList!645 thiss!192))))))))

(declare-fun b!49501 () Bool)

(assert (=> b!49501 (= e!31815 (isStrictlySorted!275 (t!4382 (toList!645 thiss!192))))))

(assert (= (and d!9937 (not res!28634)) b!49500))

(assert (= (and b!49500 res!28635) b!49501))

(declare-fun m!42919 () Bool)

(assert (=> b!49501 m!42919))

(assert (=> start!7796 d!9937))

(declare-fun d!9943 () Bool)

(assert (=> d!9943 (= (inv!2306 thiss!192) (isStrictlySorted!275 (toList!645 thiss!192)))))

(declare-fun bs!2299 () Bool)

(assert (= bs!2299 d!9943))

