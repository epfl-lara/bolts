; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!498200 () Bool)

(assert start!498200)

(declare-fun b!4815356 () Bool)

(declare-fun e!3008540 () Bool)

(declare-fun e!3008541 () Bool)

(assert (=> b!4815356 (= e!3008540 (not e!3008541))))

(declare-fun res!2048322 () Bool)

(assert (=> b!4815356 (=> res!2048322 e!3008541)))

(declare-datatypes ((K!16357 0))(
  ( (K!16358 (val!21391 Int)) )
))
(declare-datatypes ((V!16603 0))(
  ( (V!16604 (val!21392 Int)) )
))
(declare-datatypes ((tuple2!57718 0))(
  ( (tuple2!57719 (_1!32153 K!16357) (_2!32153 V!16603)) )
))
(declare-datatypes ((List!54833 0))(
  ( (Nil!54709) (Cons!54709 (h!61141 tuple2!57718) (t!362329 List!54833)) )
))
(declare-fun lt!1966177 () List!54833)

(declare-fun key!5322 () K!16357)

(declare-datatypes ((Option!13397 0))(
  ( (None!13396) (Some!13396 (v!49045 tuple2!57718)) )
))
(declare-fun isEmpty!29569 (Option!13397) Bool)

(declare-fun getPair!987 (List!54833 K!16357) Option!13397)

(assert (=> b!4815356 (= res!2048322 (not (isEmpty!29569 (getPair!987 lt!1966177 key!5322))))))

(declare-datatypes ((tuple2!57720 0))(
  ( (tuple2!57721 (_1!32154 (_ BitVec 64)) (_2!32154 List!54833)) )
))
(declare-fun lt!1966176 () tuple2!57720)

(declare-datatypes ((List!54834 0))(
  ( (Nil!54710) (Cons!54710 (h!61142 tuple2!57720) (t!362330 List!54834)) )
))
(declare-datatypes ((ListLongMap!5757 0))(
  ( (ListLongMap!5758 (toList!7277 List!54834)) )
))
(declare-fun lm!2251 () ListLongMap!5757)

(declare-fun lambda!234375 () Int)

(declare-datatypes ((Unit!141877 0))(
  ( (Unit!141878) )
))
(declare-fun lt!1966174 () Unit!141877)

(declare-fun forallContained!4315 (List!54834 Int tuple2!57720) Unit!141877)

(assert (=> b!4815356 (= lt!1966174 (forallContained!4315 (toList!7277 lm!2251) lambda!234375 lt!1966176))))

(declare-fun contains!18504 (List!54834 tuple2!57720) Bool)

(assert (=> b!4815356 (contains!18504 (toList!7277 lm!2251) lt!1966176)))

(declare-fun lt!1966175 () (_ BitVec 64))

(assert (=> b!4815356 (= lt!1966176 (tuple2!57721 lt!1966175 lt!1966177))))

(declare-fun lt!1966173 () Unit!141877)

(declare-fun lemmaGetValueImpliesTupleContained!658 (ListLongMap!5757 (_ BitVec 64) List!54833) Unit!141877)

(assert (=> b!4815356 (= lt!1966173 (lemmaGetValueImpliesTupleContained!658 lm!2251 lt!1966175 lt!1966177))))

(declare-fun apply!13252 (ListLongMap!5757 (_ BitVec 64)) List!54833)

(assert (=> b!4815356 (= lt!1966177 (apply!13252 lm!2251 lt!1966175))))

(declare-fun contains!18505 (ListLongMap!5757 (_ BitVec 64)) Bool)

(assert (=> b!4815356 (contains!18505 lm!2251 lt!1966175)))

(declare-datatypes ((Hashable!7147 0))(
  ( (HashableExt!7146 (__x!33422 Int)) )
))
(declare-fun hashF!1486 () Hashable!7147)

(declare-fun hash!5217 (Hashable!7147 K!16357) (_ BitVec 64))

(assert (=> b!4815356 (= lt!1966175 (hash!5217 hashF!1486 key!5322))))

(declare-fun lt!1966178 () Unit!141877)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1085 (ListLongMap!5757 K!16357 Hashable!7147) Unit!141877)

(assert (=> b!4815356 (= lt!1966178 (lemmaInGenMapThenLongMapContainsHash!1085 lm!2251 key!5322 hashF!1486))))

(declare-fun b!4815357 () Bool)

(declare-fun forall!12453 (List!54834 Int) Bool)

(assert (=> b!4815357 (= e!3008541 (forall!12453 (toList!7277 lm!2251) lambda!234375))))

(declare-fun res!2048324 () Bool)

(assert (=> start!498200 (=> (not res!2048324) (not e!3008540))))

(assert (=> start!498200 (= res!2048324 (forall!12453 (toList!7277 lm!2251) lambda!234375))))

(assert (=> start!498200 e!3008540))

(declare-fun e!3008542 () Bool)

(declare-fun inv!70258 (ListLongMap!5757) Bool)

(assert (=> start!498200 (and (inv!70258 lm!2251) e!3008542)))

(assert (=> start!498200 true))

(declare-fun tp_is_empty!34167 () Bool)

(assert (=> start!498200 tp_is_empty!34167))

(declare-fun b!4815358 () Bool)

(declare-fun res!2048326 () Bool)

(assert (=> b!4815358 (=> (not res!2048326) (not e!3008540))))

(declare-datatypes ((ListMap!6691 0))(
  ( (ListMap!6692 (toList!7278 List!54833)) )
))
(declare-fun contains!18506 (ListMap!6691 K!16357) Bool)

(declare-fun extractMap!2597 (List!54834) ListMap!6691)

(assert (=> b!4815358 (= res!2048326 (contains!18506 (extractMap!2597 (toList!7277 lm!2251)) key!5322))))

(declare-fun b!4815359 () Bool)

(declare-fun tp!1361810 () Bool)

(assert (=> b!4815359 (= e!3008542 tp!1361810)))

(declare-fun b!4815360 () Bool)

(declare-fun res!2048327 () Bool)

(assert (=> b!4815360 (=> res!2048327 e!3008541)))

(assert (=> b!4815360 (= res!2048327 (not (forall!12453 (toList!7277 lm!2251) lambda!234375)))))

(declare-fun b!4815361 () Bool)

(declare-fun res!2048325 () Bool)

(assert (=> b!4815361 (=> (not res!2048325) (not e!3008540))))

(declare-fun allKeysSameHashInMap!2463 (ListLongMap!5757 Hashable!7147) Bool)

(assert (=> b!4815361 (= res!2048325 (allKeysSameHashInMap!2463 lm!2251 hashF!1486))))

(declare-fun b!4815362 () Bool)

(declare-fun res!2048323 () Bool)

(assert (=> b!4815362 (=> res!2048323 e!3008541)))

(declare-fun containsKey!4230 (List!54833 K!16357) Bool)

(assert (=> b!4815362 (= res!2048323 (containsKey!4230 lt!1966177 key!5322))))

(assert (= (and start!498200 res!2048324) b!4815361))

(assert (= (and b!4815361 res!2048325) b!4815358))

(assert (= (and b!4815358 res!2048326) b!4815356))

(assert (= (and b!4815356 (not res!2048322)) b!4815360))

(assert (= (and b!4815360 (not res!2048327)) b!4815362))

(assert (= (and b!4815362 (not res!2048323)) b!4815357))

(assert (= start!498200 b!4815359))

(declare-fun m!5801434 () Bool)

(assert (=> b!4815362 m!5801434))

(declare-fun m!5801436 () Bool)

(assert (=> b!4815358 m!5801436))

(assert (=> b!4815358 m!5801436))

(declare-fun m!5801438 () Bool)

(assert (=> b!4815358 m!5801438))

(declare-fun m!5801440 () Bool)

(assert (=> b!4815361 m!5801440))

(declare-fun m!5801442 () Bool)

(assert (=> b!4815356 m!5801442))

(declare-fun m!5801444 () Bool)

(assert (=> b!4815356 m!5801444))

(declare-fun m!5801446 () Bool)

(assert (=> b!4815356 m!5801446))

(declare-fun m!5801448 () Bool)

(assert (=> b!4815356 m!5801448))

(declare-fun m!5801450 () Bool)

(assert (=> b!4815356 m!5801450))

(declare-fun m!5801452 () Bool)

(assert (=> b!4815356 m!5801452))

(declare-fun m!5801454 () Bool)

(assert (=> b!4815356 m!5801454))

(assert (=> b!4815356 m!5801444))

(declare-fun m!5801456 () Bool)

(assert (=> b!4815356 m!5801456))

(declare-fun m!5801458 () Bool)

(assert (=> b!4815356 m!5801458))

(declare-fun m!5801460 () Bool)

(assert (=> b!4815357 m!5801460))

(assert (=> b!4815360 m!5801460))

(assert (=> start!498200 m!5801460))

(declare-fun m!5801462 () Bool)

(assert (=> start!498200 m!5801462))

(push 1)

(assert (not start!498200))

(assert (not b!4815357))

(assert (not b!4815356))

(assert (not b!4815359))

(assert (not b!4815361))

(assert (not b!4815360))

(assert tp_is_empty!34167)

(assert (not b!4815358))

(assert (not b!4815362))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

