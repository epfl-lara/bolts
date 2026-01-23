; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!498284 () Bool)

(assert start!498284)

(declare-fun b!4815748 () Bool)

(declare-datatypes ((Unit!141912 0))(
  ( (Unit!141913) )
))
(declare-fun e!3008769 () Unit!141912)

(declare-fun Unit!141914 () Unit!141912)

(assert (=> b!4815748 (= e!3008769 Unit!141914)))

(declare-fun lt!1966516 () Unit!141912)

(declare-datatypes ((K!16382 0))(
  ( (K!16383 (val!21411 Int)) )
))
(declare-datatypes ((V!16628 0))(
  ( (V!16629 (val!21412 Int)) )
))
(declare-datatypes ((tuple2!57758 0))(
  ( (tuple2!57759 (_1!32173 K!16382) (_2!32173 V!16628)) )
))
(declare-datatypes ((List!54854 0))(
  ( (Nil!54730) (Cons!54730 (h!61162 tuple2!57758) (t!362350 List!54854)) )
))
(declare-datatypes ((tuple2!57760 0))(
  ( (tuple2!57761 (_1!32174 (_ BitVec 64)) (_2!32174 List!54854)) )
))
(declare-datatypes ((List!54855 0))(
  ( (Nil!54731) (Cons!54731 (h!61163 tuple2!57760) (t!362351 List!54855)) )
))
(declare-datatypes ((ListLongMap!5777 0))(
  ( (ListLongMap!5778 (toList!7297 List!54855)) )
))
(declare-fun lm!2251 () ListLongMap!5777)

(declare-datatypes ((Hashable!7157 0))(
  ( (HashableExt!7156 (__x!33432 Int)) )
))
(declare-fun hashF!1486 () Hashable!7157)

(declare-fun key!5322 () K!16382)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!429 (ListLongMap!5777 K!16382 Hashable!7157) Unit!141912)

(assert (=> b!4815748 (= lt!1966516 (lemmaNotInItsHashBucketThenNotInMap!429 lm!2251 key!5322 hashF!1486))))

(assert (=> b!4815748 false))

(declare-fun b!4815749 () Bool)

(declare-fun e!3008770 () Bool)

(assert (=> b!4815749 (= e!3008770 (not true))))

(declare-fun lt!1966513 () Unit!141912)

(assert (=> b!4815749 (= lt!1966513 e!3008769)))

(declare-fun c!820771 () Bool)

(declare-fun lt!1966518 () List!54854)

(declare-datatypes ((Option!13409 0))(
  ( (None!13408) (Some!13408 (v!49059 tuple2!57758)) )
))
(declare-fun isEmpty!29579 (Option!13409) Bool)

(declare-fun getPair!997 (List!54854 K!16382) Option!13409)

(assert (=> b!4815749 (= c!820771 (isEmpty!29579 (getPair!997 lt!1966518 key!5322)))))

(declare-fun lt!1966517 () tuple2!57760)

(declare-fun lambda!234465 () Int)

(declare-fun lt!1966519 () Unit!141912)

(declare-fun forallContained!4325 (List!54855 Int tuple2!57760) Unit!141912)

(assert (=> b!4815749 (= lt!1966519 (forallContained!4325 (toList!7297 lm!2251) lambda!234465 lt!1966517))))

(declare-fun contains!18536 (List!54855 tuple2!57760) Bool)

(assert (=> b!4815749 (contains!18536 (toList!7297 lm!2251) lt!1966517)))

(declare-fun lt!1966515 () (_ BitVec 64))

(assert (=> b!4815749 (= lt!1966517 (tuple2!57761 lt!1966515 lt!1966518))))

(declare-fun lt!1966514 () Unit!141912)

(declare-fun lemmaGetValueImpliesTupleContained!668 (ListLongMap!5777 (_ BitVec 64) List!54854) Unit!141912)

(assert (=> b!4815749 (= lt!1966514 (lemmaGetValueImpliesTupleContained!668 lm!2251 lt!1966515 lt!1966518))))

(declare-fun apply!13262 (ListLongMap!5777 (_ BitVec 64)) List!54854)

(assert (=> b!4815749 (= lt!1966518 (apply!13262 lm!2251 lt!1966515))))

(declare-fun contains!18537 (ListLongMap!5777 (_ BitVec 64)) Bool)

(assert (=> b!4815749 (contains!18537 lm!2251 lt!1966515)))

(declare-fun hash!5229 (Hashable!7157 K!16382) (_ BitVec 64))

(assert (=> b!4815749 (= lt!1966515 (hash!5229 hashF!1486 key!5322))))

(declare-fun lt!1966520 () Unit!141912)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1095 (ListLongMap!5777 K!16382 Hashable!7157) Unit!141912)

(assert (=> b!4815749 (= lt!1966520 (lemmaInGenMapThenLongMapContainsHash!1095 lm!2251 key!5322 hashF!1486))))

(declare-fun b!4815750 () Bool)

(declare-fun e!3008768 () Bool)

(declare-fun tp!1361852 () Bool)

(assert (=> b!4815750 (= e!3008768 tp!1361852)))

(declare-fun b!4815751 () Bool)

(declare-fun res!2048546 () Bool)

(assert (=> b!4815751 (=> (not res!2048546) (not e!3008770))))

(declare-datatypes ((ListMap!6711 0))(
  ( (ListMap!6712 (toList!7298 List!54854)) )
))
(declare-fun contains!18538 (ListMap!6711 K!16382) Bool)

(declare-fun extractMap!2607 (List!54855) ListMap!6711)

(assert (=> b!4815751 (= res!2048546 (contains!18538 (extractMap!2607 (toList!7297 lm!2251)) key!5322))))

(declare-fun b!4815752 () Bool)

(declare-fun Unit!141915 () Unit!141912)

(assert (=> b!4815752 (= e!3008769 Unit!141915)))

(declare-fun b!4815753 () Bool)

(declare-fun res!2048544 () Bool)

(assert (=> b!4815753 (=> (not res!2048544) (not e!3008770))))

(declare-fun allKeysSameHashInMap!2473 (ListLongMap!5777 Hashable!7157) Bool)

(assert (=> b!4815753 (= res!2048544 (allKeysSameHashInMap!2473 lm!2251 hashF!1486))))

(declare-fun res!2048545 () Bool)

(assert (=> start!498284 (=> (not res!2048545) (not e!3008770))))

(declare-fun forall!12463 (List!54855 Int) Bool)

(assert (=> start!498284 (= res!2048545 (forall!12463 (toList!7297 lm!2251) lambda!234465))))

(assert (=> start!498284 e!3008770))

(declare-fun inv!70283 (ListLongMap!5777) Bool)

(assert (=> start!498284 (and (inv!70283 lm!2251) e!3008768)))

(assert (=> start!498284 true))

(declare-fun tp_is_empty!34187 () Bool)

(assert (=> start!498284 tp_is_empty!34187))

(assert (= (and start!498284 res!2048545) b!4815753))

(assert (= (and b!4815753 res!2048544) b!4815751))

(assert (= (and b!4815751 res!2048546) b!4815749))

(assert (= (and b!4815749 c!820771) b!4815748))

(assert (= (and b!4815749 (not c!820771)) b!4815752))

(assert (= start!498284 b!4815750))

(declare-fun m!5801926 () Bool)

(assert (=> b!4815748 m!5801926))

(declare-fun m!5801928 () Bool)

(assert (=> b!4815749 m!5801928))

(declare-fun m!5801930 () Bool)

(assert (=> b!4815749 m!5801930))

(declare-fun m!5801932 () Bool)

(assert (=> b!4815749 m!5801932))

(declare-fun m!5801934 () Bool)

(assert (=> b!4815749 m!5801934))

(declare-fun m!5801936 () Bool)

(assert (=> b!4815749 m!5801936))

(declare-fun m!5801938 () Bool)

(assert (=> b!4815749 m!5801938))

(declare-fun m!5801940 () Bool)

(assert (=> b!4815749 m!5801940))

(declare-fun m!5801942 () Bool)

(assert (=> b!4815749 m!5801942))

(declare-fun m!5801944 () Bool)

(assert (=> b!4815749 m!5801944))

(assert (=> b!4815749 m!5801936))

(declare-fun m!5801946 () Bool)

(assert (=> b!4815751 m!5801946))

(assert (=> b!4815751 m!5801946))

(declare-fun m!5801948 () Bool)

(assert (=> b!4815751 m!5801948))

(declare-fun m!5801950 () Bool)

(assert (=> b!4815753 m!5801950))

(declare-fun m!5801952 () Bool)

(assert (=> start!498284 m!5801952))

(declare-fun m!5801954 () Bool)

(assert (=> start!498284 m!5801954))

(push 1)

(assert (not b!4815751))

(assert (not b!4815748))

(assert (not b!4815750))

(assert (not start!498284))

(assert tp_is_empty!34187)

(assert (not b!4815749))

(assert (not b!4815753))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

