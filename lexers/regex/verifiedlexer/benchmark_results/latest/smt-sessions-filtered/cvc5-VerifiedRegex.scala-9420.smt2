; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!498288 () Bool)

(assert start!498288)

(declare-fun b!4815784 () Bool)

(declare-fun e!3008786 () Bool)

(declare-fun tp!1361858 () Bool)

(assert (=> b!4815784 (= e!3008786 tp!1361858)))

(declare-fun b!4815786 () Bool)

(declare-datatypes ((Unit!141920 0))(
  ( (Unit!141921) )
))
(declare-fun e!3008787 () Unit!141920)

(declare-fun Unit!141922 () Unit!141920)

(assert (=> b!4815786 (= e!3008787 Unit!141922)))

(declare-fun lt!1966566 () Unit!141920)

(declare-datatypes ((K!16387 0))(
  ( (K!16388 (val!21415 Int)) )
))
(declare-datatypes ((V!16633 0))(
  ( (V!16634 (val!21416 Int)) )
))
(declare-datatypes ((tuple2!57766 0))(
  ( (tuple2!57767 (_1!32177 K!16387) (_2!32177 V!16633)) )
))
(declare-datatypes ((List!54858 0))(
  ( (Nil!54734) (Cons!54734 (h!61166 tuple2!57766) (t!362354 List!54858)) )
))
(declare-datatypes ((tuple2!57768 0))(
  ( (tuple2!57769 (_1!32178 (_ BitVec 64)) (_2!32178 List!54858)) )
))
(declare-datatypes ((List!54859 0))(
  ( (Nil!54735) (Cons!54735 (h!61167 tuple2!57768) (t!362355 List!54859)) )
))
(declare-datatypes ((ListLongMap!5781 0))(
  ( (ListLongMap!5782 (toList!7301 List!54859)) )
))
(declare-fun lm!2251 () ListLongMap!5781)

(declare-datatypes ((Hashable!7159 0))(
  ( (HashableExt!7158 (__x!33434 Int)) )
))
(declare-fun hashF!1486 () Hashable!7159)

(declare-fun key!5322 () K!16387)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!431 (ListLongMap!5781 K!16387 Hashable!7159) Unit!141920)

(assert (=> b!4815786 (= lt!1966566 (lemmaNotInItsHashBucketThenNotInMap!431 lm!2251 key!5322 hashF!1486))))

(assert (=> b!4815786 false))

(declare-fun b!4815787 () Bool)

(declare-fun res!2048562 () Bool)

(declare-fun e!3008788 () Bool)

(assert (=> b!4815787 (=> (not res!2048562) (not e!3008788))))

(declare-fun allKeysSameHashInMap!2475 (ListLongMap!5781 Hashable!7159) Bool)

(assert (=> b!4815787 (= res!2048562 (allKeysSameHashInMap!2475 lm!2251 hashF!1486))))

(declare-fun b!4815788 () Bool)

(declare-fun res!2048564 () Bool)

(assert (=> b!4815788 (=> (not res!2048564) (not e!3008788))))

(declare-datatypes ((ListMap!6715 0))(
  ( (ListMap!6716 (toList!7302 List!54858)) )
))
(declare-fun contains!18542 (ListMap!6715 K!16387) Bool)

(declare-fun extractMap!2609 (List!54859) ListMap!6715)

(assert (=> b!4815788 (= res!2048564 (contains!18542 (extractMap!2609 (toList!7301 lm!2251)) key!5322))))

(declare-fun b!4815789 () Bool)

(declare-fun Unit!141923 () Unit!141920)

(assert (=> b!4815789 (= e!3008787 Unit!141923)))

(declare-fun b!4815785 () Bool)

(assert (=> b!4815785 (= e!3008788 (not true))))

(declare-fun lt!1966567 () Unit!141920)

(assert (=> b!4815785 (= lt!1966567 e!3008787)))

(declare-fun c!820777 () Bool)

(declare-fun lt!1966564 () List!54858)

(declare-datatypes ((Option!13411 0))(
  ( (None!13410) (Some!13410 (v!49061 tuple2!57766)) )
))
(declare-fun isEmpty!29581 (Option!13411) Bool)

(declare-fun getPair!999 (List!54858 K!16387) Option!13411)

(assert (=> b!4815785 (= c!820777 (isEmpty!29581 (getPair!999 lt!1966564 key!5322)))))

(declare-fun lt!1966561 () tuple2!57768)

(declare-fun lambda!234475 () Int)

(declare-fun lt!1966565 () Unit!141920)

(declare-fun forallContained!4327 (List!54859 Int tuple2!57768) Unit!141920)

(assert (=> b!4815785 (= lt!1966565 (forallContained!4327 (toList!7301 lm!2251) lambda!234475 lt!1966561))))

(declare-fun contains!18543 (List!54859 tuple2!57768) Bool)

(assert (=> b!4815785 (contains!18543 (toList!7301 lm!2251) lt!1966561)))

(declare-fun lt!1966563 () (_ BitVec 64))

(assert (=> b!4815785 (= lt!1966561 (tuple2!57769 lt!1966563 lt!1966564))))

(declare-fun lt!1966562 () Unit!141920)

(declare-fun lemmaGetValueImpliesTupleContained!670 (ListLongMap!5781 (_ BitVec 64) List!54858) Unit!141920)

(assert (=> b!4815785 (= lt!1966562 (lemmaGetValueImpliesTupleContained!670 lm!2251 lt!1966563 lt!1966564))))

(declare-fun apply!13264 (ListLongMap!5781 (_ BitVec 64)) List!54858)

(assert (=> b!4815785 (= lt!1966564 (apply!13264 lm!2251 lt!1966563))))

(declare-fun contains!18544 (ListLongMap!5781 (_ BitVec 64)) Bool)

(assert (=> b!4815785 (contains!18544 lm!2251 lt!1966563)))

(declare-fun hash!5231 (Hashable!7159 K!16387) (_ BitVec 64))

(assert (=> b!4815785 (= lt!1966563 (hash!5231 hashF!1486 key!5322))))

(declare-fun lt!1966568 () Unit!141920)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1097 (ListLongMap!5781 K!16387 Hashable!7159) Unit!141920)

(assert (=> b!4815785 (= lt!1966568 (lemmaInGenMapThenLongMapContainsHash!1097 lm!2251 key!5322 hashF!1486))))

(declare-fun res!2048563 () Bool)

(assert (=> start!498288 (=> (not res!2048563) (not e!3008788))))

(declare-fun forall!12465 (List!54859 Int) Bool)

(assert (=> start!498288 (= res!2048563 (forall!12465 (toList!7301 lm!2251) lambda!234475))))

(assert (=> start!498288 e!3008788))

(declare-fun inv!70288 (ListLongMap!5781) Bool)

(assert (=> start!498288 (and (inv!70288 lm!2251) e!3008786)))

(assert (=> start!498288 true))

(declare-fun tp_is_empty!34191 () Bool)

(assert (=> start!498288 tp_is_empty!34191))

(assert (= (and start!498288 res!2048563) b!4815787))

(assert (= (and b!4815787 res!2048562) b!4815788))

(assert (= (and b!4815788 res!2048564) b!4815785))

(assert (= (and b!4815785 c!820777) b!4815786))

(assert (= (and b!4815785 (not c!820777)) b!4815789))

(assert (= start!498288 b!4815784))

(declare-fun m!5801986 () Bool)

(assert (=> b!4815788 m!5801986))

(assert (=> b!4815788 m!5801986))

(declare-fun m!5801988 () Bool)

(assert (=> b!4815788 m!5801988))

(declare-fun m!5801990 () Bool)

(assert (=> b!4815786 m!5801990))

(declare-fun m!5801992 () Bool)

(assert (=> b!4815787 m!5801992))

(declare-fun m!5801994 () Bool)

(assert (=> start!498288 m!5801994))

(declare-fun m!5801996 () Bool)

(assert (=> start!498288 m!5801996))

(declare-fun m!5801998 () Bool)

(assert (=> b!4815785 m!5801998))

(declare-fun m!5802000 () Bool)

(assert (=> b!4815785 m!5802000))

(declare-fun m!5802002 () Bool)

(assert (=> b!4815785 m!5802002))

(declare-fun m!5802004 () Bool)

(assert (=> b!4815785 m!5802004))

(declare-fun m!5802006 () Bool)

(assert (=> b!4815785 m!5802006))

(assert (=> b!4815785 m!5802006))

(declare-fun m!5802008 () Bool)

(assert (=> b!4815785 m!5802008))

(declare-fun m!5802010 () Bool)

(assert (=> b!4815785 m!5802010))

(declare-fun m!5802012 () Bool)

(assert (=> b!4815785 m!5802012))

(declare-fun m!5802014 () Bool)

(assert (=> b!4815785 m!5802014))

(push 1)

(assert tp_is_empty!34191)

(assert (not b!4815786))

(assert (not b!4815788))

(assert (not b!4815784))

(assert (not start!498288))

(assert (not b!4815785))

(assert (not b!4815787))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

