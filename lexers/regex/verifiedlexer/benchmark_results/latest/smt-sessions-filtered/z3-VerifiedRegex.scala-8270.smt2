; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!429694 () Bool)

(assert start!429694)

(declare-fun b!4413652 () Bool)

(declare-fun res!1822374 () Bool)

(declare-fun e!2748492 () Bool)

(assert (=> b!4413652 (=> res!1822374 e!2748492)))

(declare-datatypes ((V!11001 0))(
  ( (V!11002 (val!16875 Int)) )
))
(declare-datatypes ((K!10755 0))(
  ( (K!10756 (val!16876 Int)) )
))
(declare-datatypes ((tuple2!49070 0))(
  ( (tuple2!49071 (_1!27829 K!10755) (_2!27829 V!11001)) )
))
(declare-datatypes ((List!49521 0))(
  ( (Nil!49397) (Cons!49397 (h!55048 tuple2!49070) (t!356459 List!49521)) )
))
(declare-datatypes ((tuple2!49072 0))(
  ( (tuple2!49073 (_1!27830 (_ BitVec 64)) (_2!27830 List!49521)) )
))
(declare-datatypes ((List!49522 0))(
  ( (Nil!49398) (Cons!49398 (h!55049 tuple2!49072) (t!356460 List!49522)) )
))
(declare-datatypes ((ListLongMap!1983 0))(
  ( (ListLongMap!1984 (toList!3333 List!49522)) )
))
(declare-fun lt!1615594 () ListLongMap!1983)

(declare-fun lt!1615600 () tuple2!49072)

(declare-fun head!9152 (List!49522) tuple2!49072)

(assert (=> b!4413652 (= res!1822374 (not (= (head!9152 (toList!3333 lt!1615594)) lt!1615600)))))

(declare-fun b!4413653 () Bool)

(declare-fun e!2748493 () Bool)

(declare-fun e!2748496 () Bool)

(assert (=> b!4413653 (= e!2748493 e!2748496)))

(declare-fun res!1822366 () Bool)

(assert (=> b!4413653 (=> res!1822366 e!2748496)))

(declare-fun lt!1615596 () tuple2!49070)

(declare-fun newBucket!194 () List!49521)

(declare-fun lm!1616 () ListLongMap!1983)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun apply!11525 (ListLongMap!1983 (_ BitVec 64)) List!49521)

(assert (=> b!4413653 (= res!1822366 (not (= newBucket!194 (Cons!49397 lt!1615596 (apply!11525 lm!1616 hash!366)))))))

(declare-fun key!3717 () K!10755)

(declare-fun newValue!93 () V!11001)

(assert (=> b!4413653 (= lt!1615596 (tuple2!49071 key!3717 newValue!93))))

(declare-fun b!4413654 () Bool)

(declare-fun res!1822376 () Bool)

(declare-fun e!2748499 () Bool)

(assert (=> b!4413654 (=> (not res!1822376) (not e!2748499))))

(declare-datatypes ((Hashable!5067 0))(
  ( (HashableExt!5066 (__x!30770 Int)) )
))
(declare-fun hashF!1220 () Hashable!5067)

(declare-fun allKeysSameHashInMap!779 (ListLongMap!1983 Hashable!5067) Bool)

(assert (=> b!4413654 (= res!1822376 (allKeysSameHashInMap!779 lm!1616 hashF!1220))))

(declare-fun e!2748500 () Bool)

(declare-fun lt!1615601 () Bool)

(declare-fun b!4413655 () Bool)

(assert (=> b!4413655 (= e!2748500 (and (not lt!1615601) (= newBucket!194 (Cons!49397 (tuple2!49071 key!3717 newValue!93) Nil!49397))))))

(declare-fun b!4413656 () Bool)

(declare-fun e!2748498 () Bool)

(assert (=> b!4413656 (= e!2748498 (not e!2748492))))

(declare-fun res!1822368 () Bool)

(assert (=> b!4413656 (=> res!1822368 e!2748492)))

(declare-fun lambda!151288 () Int)

(declare-fun forall!9447 (List!49522 Int) Bool)

(assert (=> b!4413656 (= res!1822368 (not (forall!9447 (toList!3333 lt!1615594) lambda!151288)))))

(assert (=> b!4413656 (forall!9447 (toList!3333 lt!1615594) lambda!151288)))

(declare-fun +!946 (ListLongMap!1983 tuple2!49072) ListLongMap!1983)

(assert (=> b!4413656 (= lt!1615594 (+!946 lm!1616 lt!1615600))))

(assert (=> b!4413656 (= lt!1615600 (tuple2!49073 hash!366 newBucket!194))))

(declare-datatypes ((Unit!80576 0))(
  ( (Unit!80577) )
))
(declare-fun lt!1615597 () Unit!80576)

(declare-fun addValidProp!317 (ListLongMap!1983 Int (_ BitVec 64) List!49521) Unit!80576)

(assert (=> b!4413656 (= lt!1615597 (addValidProp!317 lm!1616 lambda!151288 hash!366 newBucket!194))))

(declare-fun tp_is_empty!25939 () Bool)

(declare-fun b!4413657 () Bool)

(declare-fun tp!1332392 () Bool)

(declare-fun e!2748497 () Bool)

(declare-fun tp_is_empty!25937 () Bool)

(assert (=> b!4413657 (= e!2748497 (and tp_is_empty!25939 tp_is_empty!25937 tp!1332392))))

(declare-fun b!4413659 () Bool)

(declare-fun e!2748495 () Bool)

(declare-fun tp!1332391 () Bool)

(assert (=> b!4413659 (= e!2748495 tp!1332391)))

(declare-fun b!4413660 () Bool)

(declare-fun e!2748494 () Bool)

(assert (=> b!4413660 (= e!2748494 (= newBucket!194 (Cons!49397 (tuple2!49071 key!3717 newValue!93) (apply!11525 lm!1616 hash!366))))))

(declare-fun b!4413661 () Bool)

(declare-fun res!1822375 () Bool)

(assert (=> b!4413661 (=> (not res!1822375) (not e!2748498))))

(declare-fun noDuplicateKeys!673 (List!49521) Bool)

(assert (=> b!4413661 (= res!1822375 (noDuplicateKeys!673 newBucket!194))))

(declare-fun b!4413662 () Bool)

(declare-fun res!1822378 () Bool)

(assert (=> b!4413662 (=> res!1822378 e!2748492)))

(declare-fun tail!7161 (List!49522) List!49522)

(assert (=> b!4413662 (= res!1822378 (not (= (tail!7161 (toList!3333 lt!1615594)) (t!356460 (toList!3333 lm!1616)))))))

(declare-fun b!4413663 () Bool)

(declare-fun res!1822371 () Bool)

(assert (=> b!4413663 (=> (not res!1822371) (not e!2748498))))

(assert (=> b!4413663 (= res!1822371 (forall!9447 (toList!3333 lm!1616) lambda!151288))))

(declare-fun b!4413664 () Bool)

(assert (=> b!4413664 (= e!2748499 e!2748498)))

(declare-fun res!1822370 () Bool)

(assert (=> b!4413664 (=> (not res!1822370) (not e!2748498))))

(assert (=> b!4413664 (= res!1822370 e!2748500)))

(declare-fun res!1822367 () Bool)

(assert (=> b!4413664 (=> res!1822367 e!2748500)))

(assert (=> b!4413664 (= res!1822367 e!2748494)))

(declare-fun res!1822377 () Bool)

(assert (=> b!4413664 (=> (not res!1822377) (not e!2748494))))

(declare-fun lt!1615595 () Bool)

(assert (=> b!4413664 (= res!1822377 (not lt!1615595))))

(assert (=> b!4413664 (= lt!1615595 (not lt!1615601))))

(declare-fun contains!11836 (ListLongMap!1983 (_ BitVec 64)) Bool)

(assert (=> b!4413664 (= lt!1615601 (contains!11836 lm!1616 hash!366))))

(declare-fun b!4413665 () Bool)

(declare-fun res!1822373 () Bool)

(assert (=> b!4413665 (=> (not res!1822373) (not e!2748499))))

(declare-fun allKeysSameHash!633 (List!49521 (_ BitVec 64) Hashable!5067) Bool)

(assert (=> b!4413665 (= res!1822373 (allKeysSameHash!633 newBucket!194 hash!366 hashF!1220))))

(declare-fun res!1822380 () Bool)

(assert (=> start!429694 (=> (not res!1822380) (not e!2748499))))

(assert (=> start!429694 (= res!1822380 (forall!9447 (toList!3333 lm!1616) lambda!151288))))

(assert (=> start!429694 e!2748499))

(assert (=> start!429694 tp_is_empty!25937))

(assert (=> start!429694 tp_is_empty!25939))

(assert (=> start!429694 e!2748497))

(declare-fun inv!64941 (ListLongMap!1983) Bool)

(assert (=> start!429694 (and (inv!64941 lm!1616) e!2748495)))

(assert (=> start!429694 true))

(declare-fun b!4413658 () Bool)

(declare-fun res!1822381 () Bool)

(assert (=> b!4413658 (=> (not res!1822381) (not e!2748499))))

(declare-fun hash!1978 (Hashable!5067 K!10755) (_ BitVec 64))

(assert (=> b!4413658 (= res!1822381 (= (hash!1978 hashF!1220 key!3717) hash!366))))

(declare-fun b!4413666 () Bool)

(declare-fun res!1822369 () Bool)

(assert (=> b!4413666 (=> res!1822369 e!2748492)))

(get-info :version)

(assert (=> b!4413666 (= res!1822369 (or (not ((_ is Cons!49398) (toList!3333 lm!1616))) (not (= (_1!27830 (h!55049 (toList!3333 lm!1616))) hash!366)) lt!1615595))))

(declare-fun b!4413667 () Bool)

(assert (=> b!4413667 (= e!2748496 true)))

(declare-datatypes ((ListMap!2577 0))(
  ( (ListMap!2578 (toList!3334 List!49521)) )
))
(declare-fun lt!1615599 () ListMap!2577)

(declare-fun lt!1615598 () ListMap!2577)

(declare-fun +!947 (ListMap!2577 tuple2!49070) ListMap!2577)

(assert (=> b!4413667 (= lt!1615599 (+!947 lt!1615598 lt!1615596))))

(declare-fun b!4413668 () Bool)

(declare-fun res!1822372 () Bool)

(assert (=> b!4413668 (=> (not res!1822372) (not e!2748499))))

(declare-fun contains!11837 (ListMap!2577 K!10755) Bool)

(declare-fun extractMap!734 (List!49522) ListMap!2577)

(assert (=> b!4413668 (= res!1822372 (not (contains!11837 (extractMap!734 (toList!3333 lm!1616)) key!3717)))))

(declare-fun b!4413669 () Bool)

(assert (=> b!4413669 (= e!2748492 e!2748493)))

(declare-fun res!1822379 () Bool)

(assert (=> b!4413669 (=> res!1822379 e!2748493)))

(declare-fun addToMapMapFromBucket!327 (List!49521 ListMap!2577) ListMap!2577)

(assert (=> b!4413669 (= res!1822379 (not (= (extractMap!734 (toList!3333 lt!1615594)) (addToMapMapFromBucket!327 newBucket!194 lt!1615598))))))

(assert (=> b!4413669 (= lt!1615598 (extractMap!734 (t!356460 (toList!3333 lm!1616))))))

(assert (= (and start!429694 res!1822380) b!4413654))

(assert (= (and b!4413654 res!1822376) b!4413658))

(assert (= (and b!4413658 res!1822381) b!4413665))

(assert (= (and b!4413665 res!1822373) b!4413668))

(assert (= (and b!4413668 res!1822372) b!4413664))

(assert (= (and b!4413664 res!1822377) b!4413660))

(assert (= (and b!4413664 (not res!1822367)) b!4413655))

(assert (= (and b!4413664 res!1822370) b!4413661))

(assert (= (and b!4413661 res!1822375) b!4413663))

(assert (= (and b!4413663 res!1822371) b!4413656))

(assert (= (and b!4413656 (not res!1822368)) b!4413666))

(assert (= (and b!4413666 (not res!1822369)) b!4413652))

(assert (= (and b!4413652 (not res!1822374)) b!4413662))

(assert (= (and b!4413662 (not res!1822378)) b!4413669))

(assert (= (and b!4413669 (not res!1822379)) b!4413653))

(assert (= (and b!4413653 (not res!1822366)) b!4413667))

(assert (= (and start!429694 ((_ is Cons!49397) newBucket!194)) b!4413657))

(assert (= start!429694 b!4413659))

(declare-fun m!5089269 () Bool)

(assert (=> b!4413660 m!5089269))

(declare-fun m!5089271 () Bool)

(assert (=> start!429694 m!5089271))

(declare-fun m!5089273 () Bool)

(assert (=> start!429694 m!5089273))

(declare-fun m!5089275 () Bool)

(assert (=> b!4413662 m!5089275))

(declare-fun m!5089277 () Bool)

(assert (=> b!4413664 m!5089277))

(declare-fun m!5089279 () Bool)

(assert (=> b!4413654 m!5089279))

(declare-fun m!5089281 () Bool)

(assert (=> b!4413665 m!5089281))

(declare-fun m!5089283 () Bool)

(assert (=> b!4413668 m!5089283))

(assert (=> b!4413668 m!5089283))

(declare-fun m!5089285 () Bool)

(assert (=> b!4413668 m!5089285))

(assert (=> b!4413653 m!5089269))

(declare-fun m!5089287 () Bool)

(assert (=> b!4413658 m!5089287))

(declare-fun m!5089289 () Bool)

(assert (=> b!4413669 m!5089289))

(declare-fun m!5089291 () Bool)

(assert (=> b!4413669 m!5089291))

(declare-fun m!5089293 () Bool)

(assert (=> b!4413669 m!5089293))

(assert (=> b!4413663 m!5089271))

(declare-fun m!5089295 () Bool)

(assert (=> b!4413652 m!5089295))

(declare-fun m!5089297 () Bool)

(assert (=> b!4413667 m!5089297))

(declare-fun m!5089299 () Bool)

(assert (=> b!4413656 m!5089299))

(assert (=> b!4413656 m!5089299))

(declare-fun m!5089301 () Bool)

(assert (=> b!4413656 m!5089301))

(declare-fun m!5089303 () Bool)

(assert (=> b!4413656 m!5089303))

(declare-fun m!5089305 () Bool)

(assert (=> b!4413661 m!5089305))

(check-sat (not b!4413663) (not b!4413654) (not b!4413659) (not b!4413665) (not b!4413668) (not start!429694) (not b!4413662) (not b!4413652) (not b!4413656) tp_is_empty!25937 (not b!4413657) (not b!4413658) (not b!4413664) (not b!4413653) (not b!4413667) (not b!4413669) (not b!4413661) tp_is_empty!25939 (not b!4413660))
(check-sat)
