; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!504792 () Bool)

(assert start!504792)

(declare-fun b!4846260 () Bool)

(declare-fun e!3029034 () Bool)

(declare-fun e!3029032 () Bool)

(assert (=> b!4846260 (= e!3029034 e!3029032)))

(declare-fun res!2067376 () Bool)

(assert (=> b!4846260 (=> (not res!2067376) (not e!3029032))))

(declare-datatypes ((K!17284 0))(
  ( (K!17285 (val!22133 Int)) )
))
(declare-datatypes ((V!17530 0))(
  ( (V!17531 (val!22134 Int)) )
))
(declare-datatypes ((tuple2!59138 0))(
  ( (tuple2!59139 (_1!32863 K!17284) (_2!32863 V!17530)) )
))
(declare-datatypes ((List!55626 0))(
  ( (Nil!55502) (Cons!55502 (h!61939 tuple2!59138) (t!363122 List!55626)) )
))
(declare-datatypes ((tuple2!59140 0))(
  ( (tuple2!59141 (_1!32864 (_ BitVec 64)) (_2!32864 List!55626)) )
))
(declare-datatypes ((List!55627 0))(
  ( (Nil!55503) (Cons!55503 (h!61940 tuple2!59140) (t!363123 List!55627)) )
))
(declare-datatypes ((ListLongMap!6407 0))(
  ( (ListLongMap!6408 (toList!7832 List!55627)) )
))
(declare-fun lm!2646 () ListLongMap!6407)

(declare-fun lt!1987997 () (_ BitVec 64))

(declare-fun contains!19146 (ListLongMap!6407 (_ BitVec 64)) Bool)

(assert (=> b!4846260 (= res!2067376 (contains!19146 lm!2646 lt!1987997))))

(declare-datatypes ((Hashable!7472 0))(
  ( (HashableExt!7471 (__x!33747 Int)) )
))
(declare-fun hashF!1641 () Hashable!7472)

(declare-fun key!6445 () K!17284)

(declare-fun hash!5542 (Hashable!7472 K!17284) (_ BitVec 64))

(assert (=> b!4846260 (= lt!1987997 (hash!5542 hashF!1641 key!6445))))

(declare-fun b!4846261 () Bool)

(declare-fun res!2067377 () Bool)

(declare-fun e!3029033 () Bool)

(assert (=> b!4846261 (=> res!2067377 e!3029033)))

(get-info :version)

(assert (=> b!4846261 (= res!2067377 (or (and ((_ is Cons!55503) (toList!7832 lm!2646)) (= (_1!32864 (h!61940 (toList!7832 lm!2646))) lt!1987997)) (not ((_ is Cons!55503) (toList!7832 lm!2646))) (= lt!1987997 (_1!32864 (h!61940 (toList!7832 lm!2646))))))))

(declare-fun b!4846262 () Bool)

(declare-fun res!2067374 () Bool)

(assert (=> b!4846262 (=> res!2067374 e!3029033)))

(declare-fun lambda!242316 () Int)

(declare-fun forall!12925 (List!55627 Int) Bool)

(assert (=> b!4846262 (= res!2067374 (not (forall!12925 (toList!7832 lm!2646) lambda!242316)))))

(declare-fun b!4846263 () Bool)

(declare-fun res!2067381 () Bool)

(assert (=> b!4846263 (=> res!2067381 e!3029033)))

(assert (=> b!4846263 (= res!2067381 (= (_1!32864 (h!61940 (toList!7832 lm!2646))) lt!1987997))))

(declare-fun b!4846264 () Bool)

(declare-fun res!2067379 () Bool)

(assert (=> b!4846264 (=> (not res!2067379) (not e!3029034))))

(declare-fun allKeysSameHashInMap!2788 (ListLongMap!6407 Hashable!7472) Bool)

(assert (=> b!4846264 (= res!2067379 (allKeysSameHashInMap!2788 lm!2646 hashF!1641))))

(declare-fun b!4846265 () Bool)

(declare-fun e!3029031 () Bool)

(declare-fun tp!1364460 () Bool)

(assert (=> b!4846265 (= e!3029031 tp!1364460)))

(declare-fun res!2067375 () Bool)

(assert (=> start!504792 (=> (not res!2067375) (not e!3029034))))

(assert (=> start!504792 (= res!2067375 (forall!12925 (toList!7832 lm!2646) lambda!242316))))

(assert (=> start!504792 e!3029034))

(declare-fun inv!71170 (ListLongMap!6407) Bool)

(assert (=> start!504792 (and (inv!71170 lm!2646) e!3029031)))

(assert (=> start!504792 true))

(declare-fun tp_is_empty!35119 () Bool)

(assert (=> start!504792 tp_is_empty!35119))

(declare-fun b!4846259 () Bool)

(declare-fun res!2067378 () Bool)

(assert (=> b!4846259 (=> res!2067378 e!3029033)))

(assert (=> b!4846259 (= res!2067378 (not (contains!19146 lm!2646 (_1!32864 (h!61940 (toList!7832 lm!2646))))))))

(declare-fun b!4846266 () Bool)

(assert (=> b!4846266 (= e!3029032 (not e!3029033))))

(declare-fun res!2067380 () Bool)

(assert (=> b!4846266 (=> res!2067380 e!3029033)))

(declare-fun lt!1988001 () List!55626)

(declare-datatypes ((Option!13632 0))(
  ( (None!13631) (Some!13631 (v!49377 tuple2!59138)) )
))
(declare-fun isDefined!10724 (Option!13632) Bool)

(declare-fun getPair!1062 (List!55626 K!17284) Option!13632)

(assert (=> b!4846266 (= res!2067380 (not (isDefined!10724 (getPair!1062 lt!1988001 key!6445))))))

(declare-fun lt!1987999 () tuple2!59140)

(declare-datatypes ((Unit!145625 0))(
  ( (Unit!145626) )
))
(declare-fun lt!1988000 () Unit!145625)

(declare-fun forallContained!4513 (List!55627 Int tuple2!59140) Unit!145625)

(assert (=> b!4846266 (= lt!1988000 (forallContained!4513 (toList!7832 lm!2646) lambda!242316 lt!1987999))))

(declare-fun contains!19147 (List!55627 tuple2!59140) Bool)

(assert (=> b!4846266 (contains!19147 (toList!7832 lm!2646) lt!1987999)))

(assert (=> b!4846266 (= lt!1987999 (tuple2!59141 lt!1987997 lt!1988001))))

(declare-fun lt!1987998 () Unit!145625)

(declare-fun lemmaGetValueImpliesTupleContained!739 (ListLongMap!6407 (_ BitVec 64) List!55626) Unit!145625)

(assert (=> b!4846266 (= lt!1987998 (lemmaGetValueImpliesTupleContained!739 lm!2646 lt!1987997 lt!1988001))))

(declare-fun apply!13415 (ListLongMap!6407 (_ BitVec 64)) List!55626)

(assert (=> b!4846266 (= lt!1988001 (apply!13415 lm!2646 lt!1987997))))

(declare-fun b!4846267 () Bool)

(assert (=> b!4846267 (= e!3029033 (forall!12925 (toList!7832 lm!2646) lambda!242316))))

(assert (= (and start!504792 res!2067375) b!4846264))

(assert (= (and b!4846264 res!2067379) b!4846260))

(assert (= (and b!4846260 res!2067376) b!4846266))

(assert (= (and b!4846266 (not res!2067380)) b!4846261))

(assert (= (and b!4846261 (not res!2067377)) b!4846262))

(assert (= (and b!4846262 (not res!2067374)) b!4846259))

(assert (= (and b!4846259 (not res!2067378)) b!4846263))

(assert (= (and b!4846263 (not res!2067381)) b!4846267))

(assert (= start!504792 b!4846265))

(declare-fun m!5844168 () Bool)

(assert (=> b!4846266 m!5844168))

(declare-fun m!5844170 () Bool)

(assert (=> b!4846266 m!5844170))

(assert (=> b!4846266 m!5844168))

(declare-fun m!5844172 () Bool)

(assert (=> b!4846266 m!5844172))

(declare-fun m!5844174 () Bool)

(assert (=> b!4846266 m!5844174))

(declare-fun m!5844176 () Bool)

(assert (=> b!4846266 m!5844176))

(declare-fun m!5844178 () Bool)

(assert (=> b!4846266 m!5844178))

(declare-fun m!5844180 () Bool)

(assert (=> start!504792 m!5844180))

(declare-fun m!5844182 () Bool)

(assert (=> start!504792 m!5844182))

(assert (=> b!4846262 m!5844180))

(declare-fun m!5844184 () Bool)

(assert (=> b!4846260 m!5844184))

(declare-fun m!5844186 () Bool)

(assert (=> b!4846260 m!5844186))

(assert (=> b!4846267 m!5844180))

(declare-fun m!5844188 () Bool)

(assert (=> b!4846264 m!5844188))

(declare-fun m!5844190 () Bool)

(assert (=> b!4846259 m!5844190))

(check-sat (not b!4846260) tp_is_empty!35119 (not b!4846265) (not b!4846267) (not b!4846262) (not start!504792) (not b!4846266) (not b!4846259) (not b!4846264))
(check-sat)
