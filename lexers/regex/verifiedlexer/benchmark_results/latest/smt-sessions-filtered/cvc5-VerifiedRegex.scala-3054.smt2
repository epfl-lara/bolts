; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!182816 () Bool)

(assert start!182816)

(declare-fun res!826119 () Bool)

(declare-fun e!1174471 () Bool)

(assert (=> start!182816 (=> (not res!826119) (not e!1174471))))

(declare-fun i!921 () Int)

(declare-datatypes ((B!1467 0))(
  ( (B!1468 (val!5681 Int)) )
))
(declare-datatypes ((List!20281 0))(
  ( (Nil!20211) (Cons!20211 (h!25612 B!1467) (t!171710 List!20281)) )
))
(declare-fun l!3005 () List!20281)

(assert (=> start!182816 (= res!826119 (and (>= i!921 0) (not (is-Nil!20211 l!3005)) (not (= i!921 0))))))

(assert (=> start!182816 e!1174471))

(assert (=> start!182816 true))

(declare-fun e!1174469 () Bool)

(assert (=> start!182816 e!1174469))

(declare-fun e!1174470 () Bool)

(assert (=> start!182816 e!1174470))

(declare-fun b!1837977 () Bool)

(declare-datatypes ((tuple2!19656 0))(
  ( (tuple2!19657 (_1!11230 List!20281) (_2!11230 List!20281)) )
))
(declare-fun lt!713362 () tuple2!19656)

(declare-fun lt!713367 () List!20281)

(declare-fun lt!713365 () tuple2!19656)

(assert (=> b!1837977 (= e!1174471 (not (= lt!713365 (tuple2!19657 lt!713367 (_2!11230 lt!713362)))))))

(declare-fun lt!713363 () List!20281)

(assert (=> b!1837977 (= lt!713363 lt!713367)))

(declare-fun lt!713364 () List!20281)

(declare-fun acc!274 () List!20281)

(declare-fun ++!5484 (List!20281 List!20281) List!20281)

(assert (=> b!1837977 (= lt!713367 (++!5484 acc!274 (++!5484 lt!713364 (_1!11230 lt!713362))))))

(declare-datatypes ((Unit!34925 0))(
  ( (Unit!34926) )
))
(declare-fun lt!713361 () Unit!34925)

(declare-fun lemmaConcatAssociativity!1080 (List!20281 List!20281 List!20281) Unit!34925)

(assert (=> b!1837977 (= lt!713361 (lemmaConcatAssociativity!1080 acc!274 lt!713364 (_1!11230 lt!713362)))))

(assert (=> b!1837977 (= lt!713365 (tuple2!19657 lt!713363 (_2!11230 lt!713362)))))

(declare-fun lt!713366 () List!20281)

(declare-fun splitAtIndexTr!9 (List!20281 Int List!20281) tuple2!19656)

(assert (=> b!1837977 (= lt!713365 (splitAtIndexTr!9 (t!171710 l!3005) (- i!921 1) lt!713366))))

(assert (=> b!1837977 (= lt!713363 (++!5484 lt!713366 (_1!11230 lt!713362)))))

(declare-fun splitAtIndex!11 (List!20281 Int) tuple2!19656)

(assert (=> b!1837977 (= lt!713362 (splitAtIndex!11 (t!171710 l!3005) (- i!921 1)))))

(declare-fun lt!713368 () Unit!34925)

(declare-fun lemmaSplitAtIndexTrEqualsSplitAtIndex!9 (List!20281 Int List!20281) Unit!34925)

(assert (=> b!1837977 (= lt!713368 (lemmaSplitAtIndexTrEqualsSplitAtIndex!9 (t!171710 l!3005) (- i!921 1) lt!713366))))

(assert (=> b!1837977 (= lt!713366 (++!5484 acc!274 lt!713364))))

(assert (=> b!1837977 (= lt!713364 (Cons!20211 (h!25612 l!3005) Nil!20211))))

(declare-fun b!1837978 () Bool)

(declare-fun tp_is_empty!8215 () Bool)

(declare-fun tp!519974 () Bool)

(assert (=> b!1837978 (= e!1174469 (and tp_is_empty!8215 tp!519974))))

(declare-fun b!1837979 () Bool)

(declare-fun tp!519973 () Bool)

(assert (=> b!1837979 (= e!1174470 (and tp_is_empty!8215 tp!519973))))

(assert (= (and start!182816 res!826119) b!1837977))

(assert (= (and start!182816 (is-Cons!20211 l!3005)) b!1837978))

(assert (= (and start!182816 (is-Cons!20211 acc!274)) b!1837979))

(declare-fun m!2265893 () Bool)

(assert (=> b!1837977 m!2265893))

(declare-fun m!2265895 () Bool)

(assert (=> b!1837977 m!2265895))

(assert (=> b!1837977 m!2265893))

(declare-fun m!2265897 () Bool)

(assert (=> b!1837977 m!2265897))

(declare-fun m!2265899 () Bool)

(assert (=> b!1837977 m!2265899))

(declare-fun m!2265901 () Bool)

(assert (=> b!1837977 m!2265901))

(declare-fun m!2265903 () Bool)

(assert (=> b!1837977 m!2265903))

(declare-fun m!2265905 () Bool)

(assert (=> b!1837977 m!2265905))

(declare-fun m!2265907 () Bool)

(assert (=> b!1837977 m!2265907))

(push 1)

(assert (not b!1837977))

(assert (not b!1837979))

(assert (not b!1837978))

(assert tp_is_empty!8215)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

