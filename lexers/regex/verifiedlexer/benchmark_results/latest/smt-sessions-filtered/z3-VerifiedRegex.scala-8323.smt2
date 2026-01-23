; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!432508 () Bool)

(assert start!432508)

(declare-fun b!4429929 () Bool)

(declare-fun e!2758304 () Bool)

(declare-fun e!2758305 () Bool)

(assert (=> b!4429929 (= e!2758304 e!2758305)))

(declare-fun res!1832310 () Bool)

(assert (=> b!4429929 (=> (not res!1832310) (not e!2758305))))

(declare-fun e!2758307 () Bool)

(assert (=> b!4429929 (= res!1832310 e!2758307)))

(declare-fun res!1832316 () Bool)

(assert (=> b!4429929 (=> res!1832316 e!2758307)))

(declare-fun e!2758309 () Bool)

(assert (=> b!4429929 (= res!1832316 e!2758309)))

(declare-fun res!1832312 () Bool)

(assert (=> b!4429929 (=> (not res!1832312) (not e!2758309))))

(declare-fun lt!1629091 () Bool)

(assert (=> b!4429929 (= res!1832312 lt!1629091)))

(declare-datatypes ((V!11266 0))(
  ( (V!11267 (val!17087 Int)) )
))
(declare-datatypes ((K!11020 0))(
  ( (K!11021 (val!17088 Int)) )
))
(declare-datatypes ((tuple2!49494 0))(
  ( (tuple2!49495 (_1!28041 K!11020) (_2!28041 V!11266)) )
))
(declare-datatypes ((List!49777 0))(
  ( (Nil!49653) (Cons!49653 (h!55350 tuple2!49494) (t!356715 List!49777)) )
))
(declare-datatypes ((tuple2!49496 0))(
  ( (tuple2!49497 (_1!28042 (_ BitVec 64)) (_2!28042 List!49777)) )
))
(declare-datatypes ((List!49778 0))(
  ( (Nil!49654) (Cons!49654 (h!55351 tuple2!49496) (t!356716 List!49778)) )
))
(declare-datatypes ((ListLongMap!2195 0))(
  ( (ListLongMap!2196 (toList!3545 List!49778)) )
))
(declare-fun lm!1616 () ListLongMap!2195)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun contains!12178 (ListLongMap!2195 (_ BitVec 64)) Bool)

(assert (=> b!4429929 (= lt!1629091 (contains!12178 lm!1616 hash!366))))

(declare-fun b!4429930 () Bool)

(declare-fun res!1832306 () Bool)

(assert (=> b!4429930 (=> (not res!1832306) (not e!2758305))))

(declare-fun lambda!155046 () Int)

(declare-fun forall!9606 (List!49778 Int) Bool)

(assert (=> b!4429930 (= res!1832306 (forall!9606 (toList!3545 lm!1616) lambda!155046))))

(declare-fun b!4429931 () Bool)

(declare-fun e!2758310 () Bool)

(declare-fun tp!1333490 () Bool)

(assert (=> b!4429931 (= e!2758310 tp!1333490)))

(declare-fun b!4429932 () Bool)

(declare-fun res!1832314 () Bool)

(assert (=> b!4429932 (=> (not res!1832314) (not e!2758304))))

(declare-fun newBucket!194 () List!49777)

(declare-datatypes ((Hashable!5173 0))(
  ( (HashableExt!5172 (__x!30876 Int)) )
))
(declare-fun hashF!1220 () Hashable!5173)

(declare-fun allKeysSameHash!739 (List!49777 (_ BitVec 64) Hashable!5173) Bool)

(assert (=> b!4429932 (= res!1832314 (allKeysSameHash!739 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4429933 () Bool)

(declare-fun e!2758308 () Bool)

(assert (=> b!4429933 (= e!2758308 (forall!9606 (toList!3545 lm!1616) lambda!155046))))

(declare-datatypes ((ListMap!2789 0))(
  ( (ListMap!2790 (toList!3546 List!49777)) )
))
(declare-fun lt!1629092 () ListMap!2789)

(declare-fun lt!1629093 () ListLongMap!2195)

(declare-fun extractMap!840 (List!49778) ListMap!2789)

(assert (=> b!4429933 (= lt!1629092 (extractMap!840 (toList!3545 lt!1629093)))))

(declare-fun b!4429934 () Bool)

(declare-fun res!1832313 () Bool)

(assert (=> b!4429934 (=> (not res!1832313) (not e!2758304))))

(declare-fun allKeysSameHashInMap!885 (ListLongMap!2195 Hashable!5173) Bool)

(assert (=> b!4429934 (= res!1832313 (allKeysSameHashInMap!885 lm!1616 hashF!1220))))

(declare-fun b!4429935 () Bool)

(declare-fun tp!1333489 () Bool)

(declare-fun tp_is_empty!26361 () Bool)

(declare-fun e!2758306 () Bool)

(declare-fun tp_is_empty!26363 () Bool)

(assert (=> b!4429935 (= e!2758306 (and tp_is_empty!26363 tp_is_empty!26361 tp!1333489))))

(declare-fun b!4429936 () Bool)

(declare-fun res!1832308 () Bool)

(assert (=> b!4429936 (=> (not res!1832308) (not e!2758304))))

(declare-fun key!3717 () K!11020)

(declare-fun hash!2192 (Hashable!5173 K!11020) (_ BitVec 64))

(assert (=> b!4429936 (= res!1832308 (= (hash!2192 hashF!1220 key!3717) hash!366))))

(declare-fun b!4429937 () Bool)

(declare-fun res!1832315 () Bool)

(assert (=> b!4429937 (=> (not res!1832315) (not e!2758304))))

(declare-fun contains!12179 (ListMap!2789 K!11020) Bool)

(assert (=> b!4429937 (= res!1832315 (not (contains!12179 (extractMap!840 (toList!3545 lm!1616)) key!3717)))))

(declare-fun b!4429928 () Bool)

(assert (=> b!4429928 (= e!2758305 (not e!2758308))))

(declare-fun res!1832317 () Bool)

(assert (=> b!4429928 (=> res!1832317 e!2758308)))

(assert (=> b!4429928 (= res!1832317 (not (forall!9606 (toList!3545 lt!1629093) lambda!155046)))))

(assert (=> b!4429928 (forall!9606 (toList!3545 lt!1629093) lambda!155046)))

(declare-fun +!1135 (ListLongMap!2195 tuple2!49496) ListLongMap!2195)

(assert (=> b!4429928 (= lt!1629093 (+!1135 lm!1616 (tuple2!49497 hash!366 newBucket!194)))))

(declare-datatypes ((Unit!82623 0))(
  ( (Unit!82624) )
))
(declare-fun lt!1629090 () Unit!82623)

(declare-fun addValidProp!423 (ListLongMap!2195 Int (_ BitVec 64) List!49777) Unit!82623)

(assert (=> b!4429928 (= lt!1629090 (addValidProp!423 lm!1616 lambda!155046 hash!366 newBucket!194))))

(declare-fun res!1832311 () Bool)

(assert (=> start!432508 (=> (not res!1832311) (not e!2758304))))

(assert (=> start!432508 (= res!1832311 (forall!9606 (toList!3545 lm!1616) lambda!155046))))

(assert (=> start!432508 e!2758304))

(assert (=> start!432508 tp_is_empty!26361))

(assert (=> start!432508 tp_is_empty!26363))

(assert (=> start!432508 e!2758306))

(declare-fun inv!65206 (ListLongMap!2195) Bool)

(assert (=> start!432508 (and (inv!65206 lm!1616) e!2758310)))

(assert (=> start!432508 true))

(declare-fun b!4429938 () Bool)

(declare-fun res!1832307 () Bool)

(assert (=> b!4429938 (=> res!1832307 e!2758308)))

(get-info :version)

(assert (=> b!4429938 (= res!1832307 (or (and ((_ is Cons!49654) (toList!3545 lm!1616)) (= (_1!28042 (h!55351 (toList!3545 lm!1616))) hash!366)) (and ((_ is Cons!49654) (toList!3545 lm!1616)) (not (= (_1!28042 (h!55351 (toList!3545 lm!1616))) hash!366))) ((_ is Nil!49654) (toList!3545 lm!1616))))))

(declare-fun b!4429939 () Bool)

(declare-fun res!1832309 () Bool)

(assert (=> b!4429939 (=> (not res!1832309) (not e!2758305))))

(declare-fun noDuplicateKeys!779 (List!49777) Bool)

(assert (=> b!4429939 (= res!1832309 (noDuplicateKeys!779 newBucket!194))))

(declare-fun b!4429940 () Bool)

(declare-fun newValue!93 () V!11266)

(assert (=> b!4429940 (= e!2758307 (and (not lt!1629091) (= newBucket!194 (Cons!49653 (tuple2!49495 key!3717 newValue!93) Nil!49653))))))

(declare-fun b!4429941 () Bool)

(declare-fun apply!11631 (ListLongMap!2195 (_ BitVec 64)) List!49777)

(assert (=> b!4429941 (= e!2758309 (= newBucket!194 (Cons!49653 (tuple2!49495 key!3717 newValue!93) (apply!11631 lm!1616 hash!366))))))

(assert (= (and start!432508 res!1832311) b!4429934))

(assert (= (and b!4429934 res!1832313) b!4429936))

(assert (= (and b!4429936 res!1832308) b!4429932))

(assert (= (and b!4429932 res!1832314) b!4429937))

(assert (= (and b!4429937 res!1832315) b!4429929))

(assert (= (and b!4429929 res!1832312) b!4429941))

(assert (= (and b!4429929 (not res!1832316)) b!4429940))

(assert (= (and b!4429929 res!1832310) b!4429939))

(assert (= (and b!4429939 res!1832309) b!4429930))

(assert (= (and b!4429930 res!1832306) b!4429928))

(assert (= (and b!4429928 (not res!1832317)) b!4429938))

(assert (= (and b!4429938 (not res!1832307)) b!4429933))

(assert (= (and start!432508 ((_ is Cons!49653) newBucket!194)) b!4429935))

(assert (= start!432508 b!4429931))

(declare-fun m!5114087 () Bool)

(assert (=> b!4429937 m!5114087))

(assert (=> b!4429937 m!5114087))

(declare-fun m!5114089 () Bool)

(assert (=> b!4429937 m!5114089))

(declare-fun m!5114091 () Bool)

(assert (=> b!4429930 m!5114091))

(declare-fun m!5114093 () Bool)

(assert (=> b!4429936 m!5114093))

(declare-fun m!5114095 () Bool)

(assert (=> b!4429941 m!5114095))

(declare-fun m!5114097 () Bool)

(assert (=> b!4429929 m!5114097))

(declare-fun m!5114099 () Bool)

(assert (=> b!4429932 m!5114099))

(declare-fun m!5114101 () Bool)

(assert (=> b!4429939 m!5114101))

(assert (=> b!4429933 m!5114091))

(declare-fun m!5114103 () Bool)

(assert (=> b!4429933 m!5114103))

(assert (=> start!432508 m!5114091))

(declare-fun m!5114105 () Bool)

(assert (=> start!432508 m!5114105))

(declare-fun m!5114107 () Bool)

(assert (=> b!4429928 m!5114107))

(assert (=> b!4429928 m!5114107))

(declare-fun m!5114109 () Bool)

(assert (=> b!4429928 m!5114109))

(declare-fun m!5114111 () Bool)

(assert (=> b!4429928 m!5114111))

(declare-fun m!5114113 () Bool)

(assert (=> b!4429934 m!5114113))

(check-sat (not b!4429935) (not b!4429939) (not b!4429931) (not b!4429934) (not b!4429932) (not b!4429933) tp_is_empty!26361 (not b!4429937) (not b!4429941) (not b!4429930) (not b!4429929) (not start!432508) tp_is_empty!26363 (not b!4429928) (not b!4429936))
(check-sat)
