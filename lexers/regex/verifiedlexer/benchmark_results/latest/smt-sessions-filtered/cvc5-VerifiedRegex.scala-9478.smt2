; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!500990 () Bool)

(assert start!500990)

(declare-fun res!2055316 () Bool)

(declare-fun e!3016231 () Bool)

(assert (=> start!500990 (=> (not res!2055316) (not e!3016231))))

(declare-datatypes ((V!16923 0))(
  ( (V!16924 (val!21647 Int)) )
))
(declare-datatypes ((K!16677 0))(
  ( (K!16678 (val!21648 Int)) )
))
(declare-datatypes ((tuple2!58230 0))(
  ( (tuple2!58231 (_1!32409 K!16677) (_2!32409 V!16923)) )
))
(declare-datatypes ((List!55118 0))(
  ( (Nil!54994) (Cons!54994 (h!61428 tuple2!58230) (t!362614 List!55118)) )
))
(declare-datatypes ((tuple2!58232 0))(
  ( (tuple2!58233 (_1!32410 (_ BitVec 64)) (_2!32410 List!55118)) )
))
(declare-datatypes ((List!55119 0))(
  ( (Nil!54995) (Cons!54995 (h!61429 tuple2!58232) (t!362615 List!55119)) )
))
(declare-datatypes ((ListLongMap!6013 0))(
  ( (ListLongMap!6014 (toList!7495 List!55119)) )
))
(declare-fun lm!2325 () ListLongMap!6013)

(declare-fun lambda!237031 () Int)

(declare-fun forall!12625 (List!55119 Int) Bool)

(assert (=> start!500990 (= res!2055316 (forall!12625 (toList!7495 lm!2325) lambda!237031))))

(assert (=> start!500990 e!3016231))

(declare-fun e!3016229 () Bool)

(declare-fun inv!70578 (ListLongMap!6013) Bool)

(assert (=> start!500990 (and (inv!70578 lm!2325) e!3016229)))

(assert (=> start!500990 true))

(declare-fun tp_is_empty!34485 () Bool)

(assert (=> start!500990 tp_is_empty!34485))

(declare-fun b!4827088 () Bool)

(declare-fun res!2055312 () Bool)

(assert (=> b!4827088 (=> (not res!2055312) (not e!3016231))))

(declare-datatypes ((Hashable!7275 0))(
  ( (HashableExt!7274 (__x!33550 Int)) )
))
(declare-fun hashF!1543 () Hashable!7275)

(declare-fun allKeysSameHashInMap!2591 (ListLongMap!6013 Hashable!7275) Bool)

(assert (=> b!4827088 (= res!2055312 (allKeysSameHashInMap!2591 lm!2325 hashF!1543))))

(declare-fun b!4827089 () Bool)

(declare-fun e!3016230 () Bool)

(assert (=> b!4827089 (= e!3016230 true)))

(declare-fun b!4827090 () Bool)

(declare-fun e!3016228 () Bool)

(declare-datatypes ((ListMap!6871 0))(
  ( (ListMap!6872 (toList!7496 List!55118)) )
))
(declare-fun lt!1974073 () ListMap!6871)

(declare-fun key!5594 () K!16677)

(declare-fun contains!18800 (ListMap!6871 K!16677) Bool)

(assert (=> b!4827090 (= e!3016228 (contains!18800 lt!1974073 key!5594))))

(declare-fun b!4827091 () Bool)

(declare-fun res!2055313 () Bool)

(assert (=> b!4827091 (=> (not res!2055313) (not e!3016231))))

(declare-fun contains!18801 (ListLongMap!6013 (_ BitVec 64)) Bool)

(declare-fun hash!5418 (Hashable!7275 K!16677) (_ BitVec 64))

(assert (=> b!4827091 (= res!2055313 (not (contains!18801 lm!2325 (hash!5418 hashF!1543 key!5594))))))

(declare-fun b!4827092 () Bool)

(declare-fun tp!1362669 () Bool)

(assert (=> b!4827092 (= e!3016229 tp!1362669)))

(declare-fun b!4827093 () Bool)

(assert (=> b!4827093 (= e!3016231 (not e!3016230))))

(declare-fun res!2055314 () Bool)

(assert (=> b!4827093 (=> res!2055314 e!3016230)))

(assert (=> b!4827093 (= res!2055314 (not (forall!12625 (toList!7495 lm!2325) lambda!237031)))))

(declare-fun addToMapMapFromBucket!1803 (List!55118 ListMap!6871) ListMap!6871)

(assert (=> b!4827093 (= (contains!18800 (addToMapMapFromBucket!1803 (_2!32410 (h!61429 (toList!7495 lm!2325))) lt!1974073) key!5594) e!3016228)))

(declare-fun res!2055315 () Bool)

(assert (=> b!4827093 (=> res!2055315 e!3016228)))

(declare-fun containsKey!4385 (List!55118 K!16677) Bool)

(assert (=> b!4827093 (= res!2055315 (containsKey!4385 (_2!32410 (h!61429 (toList!7495 lm!2325))) key!5594))))

(declare-datatypes ((Unit!143244 0))(
  ( (Unit!143245) )
))
(declare-fun lt!1974074 () Unit!143244)

(declare-fun lemmaAddToMapFromBucketContainsIIFInAccOrL!27 (List!55118 ListMap!6871 K!16677) Unit!143244)

(assert (=> b!4827093 (= lt!1974074 (lemmaAddToMapFromBucketContainsIIFInAccOrL!27 (_2!32410 (h!61429 (toList!7495 lm!2325))) lt!1974073 key!5594))))

(declare-fun extractMap!2687 (List!55119) ListMap!6871)

(assert (=> b!4827093 (= lt!1974073 (extractMap!2687 (t!362615 (toList!7495 lm!2325))))))

(declare-fun b!4827094 () Bool)

(declare-fun res!2055318 () Bool)

(assert (=> b!4827094 (=> res!2055318 e!3016230)))

(assert (=> b!4827094 (= res!2055318 (not (contains!18801 lm!2325 (_1!32410 (h!61429 (toList!7495 lm!2325))))))))

(declare-fun b!4827095 () Bool)

(declare-fun res!2055317 () Bool)

(assert (=> b!4827095 (=> (not res!2055317) (not e!3016231))))

(assert (=> b!4827095 (= res!2055317 (is-Cons!54995 (toList!7495 lm!2325)))))

(assert (= (and start!500990 res!2055316) b!4827088))

(assert (= (and b!4827088 res!2055312) b!4827091))

(assert (= (and b!4827091 res!2055313) b!4827095))

(assert (= (and b!4827095 res!2055317) b!4827093))

(assert (= (and b!4827093 (not res!2055315)) b!4827090))

(assert (= (and b!4827093 (not res!2055314)) b!4827094))

(assert (= (and b!4827094 (not res!2055318)) b!4827089))

(assert (= start!500990 b!4827092))

(declare-fun m!5818226 () Bool)

(assert (=> start!500990 m!5818226))

(declare-fun m!5818228 () Bool)

(assert (=> start!500990 m!5818228))

(declare-fun m!5818230 () Bool)

(assert (=> b!4827094 m!5818230))

(declare-fun m!5818232 () Bool)

(assert (=> b!4827088 m!5818232))

(declare-fun m!5818234 () Bool)

(assert (=> b!4827093 m!5818234))

(assert (=> b!4827093 m!5818226))

(declare-fun m!5818236 () Bool)

(assert (=> b!4827093 m!5818236))

(declare-fun m!5818238 () Bool)

(assert (=> b!4827093 m!5818238))

(assert (=> b!4827093 m!5818238))

(declare-fun m!5818240 () Bool)

(assert (=> b!4827093 m!5818240))

(declare-fun m!5818242 () Bool)

(assert (=> b!4827093 m!5818242))

(declare-fun m!5818244 () Bool)

(assert (=> b!4827091 m!5818244))

(assert (=> b!4827091 m!5818244))

(declare-fun m!5818246 () Bool)

(assert (=> b!4827091 m!5818246))

(declare-fun m!5818248 () Bool)

(assert (=> b!4827090 m!5818248))

(push 1)

(assert (not b!4827091))

(assert (not start!500990))

(assert (not b!4827092))

(assert (not b!4827094))

(assert (not b!4827093))

(assert (not b!4827088))

(assert (not b!4827090))

(assert tp_is_empty!34485)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

