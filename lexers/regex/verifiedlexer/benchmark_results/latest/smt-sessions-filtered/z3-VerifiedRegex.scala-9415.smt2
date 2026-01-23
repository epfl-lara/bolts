; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!498206 () Bool)

(assert start!498206)

(declare-fun b!4815419 () Bool)

(declare-fun res!2048379 () Bool)

(declare-fun e!3008567 () Bool)

(assert (=> b!4815419 (=> (not res!2048379) (not e!3008567))))

(declare-datatypes ((K!16364 0))(
  ( (K!16365 (val!21397 Int)) )
))
(declare-datatypes ((V!16610 0))(
  ( (V!16611 (val!21398 Int)) )
))
(declare-datatypes ((tuple2!57730 0))(
  ( (tuple2!57731 (_1!32159 K!16364) (_2!32159 V!16610)) )
))
(declare-datatypes ((List!54839 0))(
  ( (Nil!54715) (Cons!54715 (h!61147 tuple2!57730) (t!362335 List!54839)) )
))
(declare-datatypes ((tuple2!57732 0))(
  ( (tuple2!57733 (_1!32160 (_ BitVec 64)) (_2!32160 List!54839)) )
))
(declare-datatypes ((List!54840 0))(
  ( (Nil!54716) (Cons!54716 (h!61148 tuple2!57732) (t!362336 List!54840)) )
))
(declare-datatypes ((ListLongMap!5763 0))(
  ( (ListLongMap!5764 (toList!7283 List!54840)) )
))
(declare-fun lm!2251 () ListLongMap!5763)

(declare-fun key!5322 () K!16364)

(declare-datatypes ((ListMap!6697 0))(
  ( (ListMap!6698 (toList!7284 List!54839)) )
))
(declare-fun contains!18513 (ListMap!6697 K!16364) Bool)

(declare-fun extractMap!2600 (List!54840) ListMap!6697)

(assert (=> b!4815419 (= res!2048379 (contains!18513 (extractMap!2600 (toList!7283 lm!2251)) key!5322))))

(declare-fun b!4815420 () Bool)

(declare-fun res!2048381 () Bool)

(assert (=> b!4815420 (=> (not res!2048381) (not e!3008567))))

(declare-datatypes ((Hashable!7150 0))(
  ( (HashableExt!7149 (__x!33425 Int)) )
))
(declare-fun hashF!1486 () Hashable!7150)

(declare-fun allKeysSameHashInMap!2466 (ListLongMap!5763 Hashable!7150) Bool)

(assert (=> b!4815420 (= res!2048381 (allKeysSameHashInMap!2466 lm!2251 hashF!1486))))

(declare-fun b!4815421 () Bool)

(declare-fun res!2048380 () Bool)

(declare-fun e!3008569 () Bool)

(assert (=> b!4815421 (=> res!2048380 e!3008569)))

(declare-fun lambda!234398 () Int)

(declare-fun forall!12456 (List!54840 Int) Bool)

(assert (=> b!4815421 (= res!2048380 (not (forall!12456 (toList!7283 lm!2251) lambda!234398)))))

(declare-fun b!4815422 () Bool)

(assert (=> b!4815422 (= e!3008569 true)))

(declare-fun res!2048378 () Bool)

(assert (=> start!498206 (=> (not res!2048378) (not e!3008567))))

(assert (=> start!498206 (= res!2048378 (forall!12456 (toList!7283 lm!2251) lambda!234398))))

(assert (=> start!498206 e!3008567))

(declare-fun e!3008568 () Bool)

(declare-fun inv!70264 (ListLongMap!5763) Bool)

(assert (=> start!498206 (and (inv!70264 lm!2251) e!3008568)))

(assert (=> start!498206 true))

(declare-fun tp_is_empty!34173 () Bool)

(assert (=> start!498206 tp_is_empty!34173))

(declare-fun b!4815423 () Bool)

(declare-fun tp!1361819 () Bool)

(assert (=> b!4815423 (= e!3008568 tp!1361819)))

(declare-fun b!4815424 () Bool)

(assert (=> b!4815424 (= e!3008567 (not e!3008569))))

(declare-fun res!2048376 () Bool)

(assert (=> b!4815424 (=> res!2048376 e!3008569)))

(declare-fun lt!1966227 () List!54839)

(declare-datatypes ((Option!13400 0))(
  ( (None!13399) (Some!13399 (v!49048 tuple2!57730)) )
))
(declare-fun isEmpty!29572 (Option!13400) Bool)

(declare-fun getPair!990 (List!54839 K!16364) Option!13400)

(assert (=> b!4815424 (= res!2048376 (not (isEmpty!29572 (getPair!990 lt!1966227 key!5322))))))

(declare-datatypes ((Unit!141883 0))(
  ( (Unit!141884) )
))
(declare-fun lt!1966230 () Unit!141883)

(declare-fun lt!1966232 () tuple2!57732)

(declare-fun forallContained!4318 (List!54840 Int tuple2!57732) Unit!141883)

(assert (=> b!4815424 (= lt!1966230 (forallContained!4318 (toList!7283 lm!2251) lambda!234398 lt!1966232))))

(declare-fun contains!18514 (List!54840 tuple2!57732) Bool)

(assert (=> b!4815424 (contains!18514 (toList!7283 lm!2251) lt!1966232)))

(declare-fun lt!1966228 () (_ BitVec 64))

(assert (=> b!4815424 (= lt!1966232 (tuple2!57733 lt!1966228 lt!1966227))))

(declare-fun lt!1966229 () Unit!141883)

(declare-fun lemmaGetValueImpliesTupleContained!661 (ListLongMap!5763 (_ BitVec 64) List!54839) Unit!141883)

(assert (=> b!4815424 (= lt!1966229 (lemmaGetValueImpliesTupleContained!661 lm!2251 lt!1966228 lt!1966227))))

(declare-fun apply!13255 (ListLongMap!5763 (_ BitVec 64)) List!54839)

(assert (=> b!4815424 (= lt!1966227 (apply!13255 lm!2251 lt!1966228))))

(declare-fun contains!18515 (ListLongMap!5763 (_ BitVec 64)) Bool)

(assert (=> b!4815424 (contains!18515 lm!2251 lt!1966228)))

(declare-fun hash!5220 (Hashable!7150 K!16364) (_ BitVec 64))

(assert (=> b!4815424 (= lt!1966228 (hash!5220 hashF!1486 key!5322))))

(declare-fun lt!1966231 () Unit!141883)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1088 (ListLongMap!5763 K!16364 Hashable!7150) Unit!141883)

(assert (=> b!4815424 (= lt!1966231 (lemmaInGenMapThenLongMapContainsHash!1088 lm!2251 key!5322 hashF!1486))))

(declare-fun b!4815425 () Bool)

(declare-fun res!2048377 () Bool)

(assert (=> b!4815425 (=> res!2048377 e!3008569)))

(declare-fun containsKey!4233 (List!54839 K!16364) Bool)

(assert (=> b!4815425 (= res!2048377 (containsKey!4233 lt!1966227 key!5322))))

(assert (= (and start!498206 res!2048378) b!4815420))

(assert (= (and b!4815420 res!2048381) b!4815419))

(assert (= (and b!4815419 res!2048379) b!4815424))

(assert (= (and b!4815424 (not res!2048376)) b!4815421))

(assert (= (and b!4815421 (not res!2048380)) b!4815425))

(assert (= (and b!4815425 (not res!2048377)) b!4815422))

(assert (= start!498206 b!4815423))

(declare-fun m!5801524 () Bool)

(assert (=> b!4815420 m!5801524))

(declare-fun m!5801526 () Bool)

(assert (=> b!4815424 m!5801526))

(declare-fun m!5801528 () Bool)

(assert (=> b!4815424 m!5801528))

(declare-fun m!5801530 () Bool)

(assert (=> b!4815424 m!5801530))

(assert (=> b!4815424 m!5801526))

(declare-fun m!5801532 () Bool)

(assert (=> b!4815424 m!5801532))

(declare-fun m!5801534 () Bool)

(assert (=> b!4815424 m!5801534))

(declare-fun m!5801536 () Bool)

(assert (=> b!4815424 m!5801536))

(declare-fun m!5801538 () Bool)

(assert (=> b!4815424 m!5801538))

(declare-fun m!5801540 () Bool)

(assert (=> b!4815424 m!5801540))

(declare-fun m!5801542 () Bool)

(assert (=> b!4815424 m!5801542))

(declare-fun m!5801544 () Bool)

(assert (=> b!4815419 m!5801544))

(assert (=> b!4815419 m!5801544))

(declare-fun m!5801546 () Bool)

(assert (=> b!4815419 m!5801546))

(declare-fun m!5801548 () Bool)

(assert (=> b!4815421 m!5801548))

(declare-fun m!5801550 () Bool)

(assert (=> b!4815425 m!5801550))

(assert (=> start!498206 m!5801548))

(declare-fun m!5801552 () Bool)

(assert (=> start!498206 m!5801552))

(check-sat tp_is_empty!34173 (not b!4815425) (not b!4815420) (not b!4815419) (not b!4815421) (not start!498206) (not b!4815424) (not b!4815423))
(check-sat)
