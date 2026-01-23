; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!430412 () Bool)

(assert start!430412)

(declare-fun b!4418376 () Bool)

(declare-fun res!1825656 () Bool)

(declare-fun e!2751176 () Bool)

(assert (=> b!4418376 (=> (not res!1825656) (not e!2751176))))

(declare-datatypes ((V!11111 0))(
  ( (V!11112 (val!16963 Int)) )
))
(declare-datatypes ((K!10865 0))(
  ( (K!10866 (val!16964 Int)) )
))
(declare-datatypes ((tuple2!49246 0))(
  ( (tuple2!49247 (_1!27917 K!10865) (_2!27917 V!11111)) )
))
(declare-datatypes ((List!49624 0))(
  ( (Nil!49500) (Cons!49500 (h!55167 tuple2!49246) (t!356562 List!49624)) )
))
(declare-datatypes ((tuple2!49248 0))(
  ( (tuple2!49249 (_1!27918 (_ BitVec 64)) (_2!27918 List!49624)) )
))
(declare-datatypes ((List!49625 0))(
  ( (Nil!49501) (Cons!49501 (h!55168 tuple2!49248) (t!356563 List!49625)) )
))
(declare-datatypes ((ListLongMap!2071 0))(
  ( (ListLongMap!2072 (toList!3421 List!49625)) )
))
(declare-fun lm!1616 () ListLongMap!2071)

(declare-fun lambda!152500 () Int)

(declare-fun forall!9507 (List!49625 Int) Bool)

(assert (=> b!4418376 (= res!1825656 (forall!9507 (toList!3421 lm!1616) lambda!152500))))

(declare-fun b!4418377 () Bool)

(declare-fun tp_is_empty!26113 () Bool)

(declare-fun tp_is_empty!26115 () Bool)

(declare-fun tp!1332807 () Bool)

(declare-fun e!2751180 () Bool)

(assert (=> b!4418377 (= e!2751180 (and tp_is_empty!26115 tp_is_empty!26113 tp!1332807))))

(declare-fun b!4418378 () Bool)

(declare-fun e!2751178 () Bool)

(declare-fun lt!1619404 () ListLongMap!2071)

(assert (=> b!4418378 (= e!2751178 (forall!9507 (toList!3421 lt!1619404) lambda!152500))))

(declare-fun b!4418379 () Bool)

(declare-fun res!1825646 () Bool)

(declare-fun e!2751171 () Bool)

(assert (=> b!4418379 (=> (not res!1825646) (not e!2751171))))

(declare-fun key!3717 () K!10865)

(declare-datatypes ((ListMap!2665 0))(
  ( (ListMap!2666 (toList!3422 List!49624)) )
))
(declare-fun contains!11965 (ListMap!2665 K!10865) Bool)

(declare-fun extractMap!778 (List!49625) ListMap!2665)

(assert (=> b!4418379 (= res!1825646 (not (contains!11965 (extractMap!778 (toList!3421 lm!1616)) key!3717)))))

(declare-fun b!4418380 () Bool)

(declare-datatypes ((Unit!81100 0))(
  ( (Unit!81101) )
))
(declare-fun e!2751179 () Unit!81100)

(declare-fun Unit!81102 () Unit!81100)

(assert (=> b!4418380 (= e!2751179 Unit!81102)))

(declare-fun lt!1619400 () Unit!81100)

(declare-datatypes ((Hashable!5111 0))(
  ( (HashableExt!5110 (__x!30814 Int)) )
))
(declare-fun hashF!1220 () Hashable!5111)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!4 (ListLongMap!2071 K!10865 Hashable!5111) Unit!81100)

(assert (=> b!4418380 (= lt!1619400 (lemmaExtractTailMapContainsThenExtractMapDoes!4 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4418380 false))

(declare-fun b!4418381 () Bool)

(declare-fun res!1825643 () Bool)

(declare-fun e!2751170 () Bool)

(assert (=> b!4418381 (=> res!1825643 e!2751170)))

(assert (=> b!4418381 (= res!1825643 (contains!11965 (extractMap!778 (toList!3421 lt!1619404)) key!3717))))

(declare-fun b!4418382 () Bool)

(declare-fun res!1825645 () Bool)

(assert (=> b!4418382 (=> (not res!1825645) (not e!2751171))))

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun hash!2037 (Hashable!5111 K!10865) (_ BitVec 64))

(assert (=> b!4418382 (= res!1825645 (= (hash!2037 hashF!1220 key!3717) hash!366))))

(declare-fun b!4418383 () Bool)

(declare-fun res!1825641 () Bool)

(assert (=> b!4418383 (=> res!1825641 e!2751170)))

(declare-fun allKeysSameHashInMap!823 (ListLongMap!2071 Hashable!5111) Bool)

(assert (=> b!4418383 (= res!1825641 (not (allKeysSameHashInMap!823 lt!1619404 hashF!1220)))))

(declare-fun b!4418384 () Bool)

(declare-fun Unit!81103 () Unit!81100)

(assert (=> b!4418384 (= e!2751179 Unit!81103)))

(declare-fun newValue!93 () V!11111)

(declare-fun e!2751175 () Bool)

(declare-fun lt!1619401 () Bool)

(declare-fun newBucket!194 () List!49624)

(declare-fun b!4418385 () Bool)

(assert (=> b!4418385 (= e!2751175 (and (not lt!1619401) (= newBucket!194 (Cons!49500 (tuple2!49247 key!3717 newValue!93) Nil!49500))))))

(declare-fun b!4418386 () Bool)

(declare-fun e!2751173 () Bool)

(assert (=> b!4418386 (= e!2751173 e!2751170)))

(declare-fun res!1825647 () Bool)

(assert (=> b!4418386 (=> res!1825647 e!2751170)))

(assert (=> b!4418386 (= res!1825647 (not (forall!9507 (toList!3421 lt!1619404) lambda!152500)))))

(declare-fun tail!7206 (ListLongMap!2071) ListLongMap!2071)

(assert (=> b!4418386 (= lt!1619404 (tail!7206 lm!1616))))

(declare-fun lt!1619405 () Unit!81100)

(assert (=> b!4418386 (= lt!1619405 e!2751179)))

(declare-fun c!752065 () Bool)

(declare-fun tail!7207 (List!49625) List!49625)

(assert (=> b!4418386 (= c!752065 (contains!11965 (extractMap!778 (tail!7207 (toList!3421 lm!1616))) key!3717))))

(declare-fun b!4418387 () Bool)

(assert (=> b!4418387 (= e!2751170 e!2751178)))

(declare-fun res!1825657 () Bool)

(assert (=> b!4418387 (=> res!1825657 e!2751178)))

(declare-fun e!2751174 () Bool)

(assert (=> b!4418387 (= res!1825657 e!2751174)))

(declare-fun res!1825655 () Bool)

(assert (=> b!4418387 (=> (not res!1825655) (not e!2751174))))

(declare-fun e!2751169 () Bool)

(assert (=> b!4418387 (= res!1825655 e!2751169)))

(declare-fun res!1825653 () Bool)

(assert (=> b!4418387 (=> res!1825653 e!2751169)))

(declare-fun lt!1619402 () Bool)

(assert (=> b!4418387 (= res!1825653 (not lt!1619402))))

(declare-fun contains!11966 (ListLongMap!2071 (_ BitVec 64)) Bool)

(assert (=> b!4418387 (= lt!1619402 (contains!11966 lt!1619404 hash!366))))

(declare-fun res!1825650 () Bool)

(assert (=> start!430412 (=> (not res!1825650) (not e!2751171))))

(assert (=> start!430412 (= res!1825650 (forall!9507 (toList!3421 lm!1616) lambda!152500))))

(assert (=> start!430412 e!2751171))

(assert (=> start!430412 tp_is_empty!26113))

(assert (=> start!430412 tp_is_empty!26115))

(assert (=> start!430412 e!2751180))

(declare-fun e!2751177 () Bool)

(declare-fun inv!65051 (ListLongMap!2071) Bool)

(assert (=> start!430412 (and (inv!65051 lm!1616) e!2751177)))

(assert (=> start!430412 true))

(declare-fun b!4418388 () Bool)

(declare-fun res!1825648 () Bool)

(assert (=> b!4418388 (=> (not res!1825648) (not e!2751171))))

(declare-fun allKeysSameHash!677 (List!49624 (_ BitVec 64) Hashable!5111) Bool)

(assert (=> b!4418388 (= res!1825648 (allKeysSameHash!677 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4418389 () Bool)

(declare-fun res!1825644 () Bool)

(assert (=> b!4418389 (=> (not res!1825644) (not e!2751176))))

(declare-fun noDuplicateKeys!717 (List!49624) Bool)

(assert (=> b!4418389 (= res!1825644 (noDuplicateKeys!717 newBucket!194))))

(declare-fun b!4418390 () Bool)

(declare-fun res!1825640 () Bool)

(assert (=> b!4418390 (=> (not res!1825640) (not e!2751171))))

(assert (=> b!4418390 (= res!1825640 (allKeysSameHashInMap!823 lm!1616 hashF!1220))))

(declare-fun b!4418391 () Bool)

(assert (=> b!4418391 (= e!2751176 (not e!2751173))))

(declare-fun res!1825654 () Bool)

(assert (=> b!4418391 (=> res!1825654 e!2751173)))

(declare-fun lt!1619403 () ListLongMap!2071)

(assert (=> b!4418391 (= res!1825654 (not (forall!9507 (toList!3421 lt!1619403) lambda!152500)))))

(assert (=> b!4418391 (forall!9507 (toList!3421 lt!1619403) lambda!152500)))

(declare-fun +!1023 (ListLongMap!2071 tuple2!49248) ListLongMap!2071)

(assert (=> b!4418391 (= lt!1619403 (+!1023 lm!1616 (tuple2!49249 hash!366 newBucket!194)))))

(declare-fun lt!1619399 () Unit!81100)

(declare-fun addValidProp!361 (ListLongMap!2071 Int (_ BitVec 64) List!49624) Unit!81100)

(assert (=> b!4418391 (= lt!1619399 (addValidProp!361 lm!1616 lambda!152500 hash!366 newBucket!194))))

(declare-fun b!4418392 () Bool)

(assert (=> b!4418392 (= e!2751171 e!2751176)))

(declare-fun res!1825652 () Bool)

(assert (=> b!4418392 (=> (not res!1825652) (not e!2751176))))

(assert (=> b!4418392 (= res!1825652 e!2751175)))

(declare-fun res!1825649 () Bool)

(assert (=> b!4418392 (=> res!1825649 e!2751175)))

(declare-fun e!2751172 () Bool)

(assert (=> b!4418392 (= res!1825649 e!2751172)))

(declare-fun res!1825642 () Bool)

(assert (=> b!4418392 (=> (not res!1825642) (not e!2751172))))

(assert (=> b!4418392 (= res!1825642 lt!1619401)))

(assert (=> b!4418392 (= lt!1619401 (contains!11966 lm!1616 hash!366))))

(declare-fun b!4418393 () Bool)

(declare-fun tp!1332808 () Bool)

(assert (=> b!4418393 (= e!2751177 tp!1332808)))

(declare-fun b!4418394 () Bool)

(declare-fun apply!11569 (ListLongMap!2071 (_ BitVec 64)) List!49624)

(assert (=> b!4418394 (= e!2751169 (not (= newBucket!194 (Cons!49500 (tuple2!49247 key!3717 newValue!93) (apply!11569 lt!1619404 hash!366)))))))

(declare-fun b!4418395 () Bool)

(assert (=> b!4418395 (= e!2751172 (= newBucket!194 (Cons!49500 (tuple2!49247 key!3717 newValue!93) (apply!11569 lm!1616 hash!366))))))

(declare-fun b!4418396 () Bool)

(assert (=> b!4418396 (= e!2751174 (or lt!1619402 (not (= newBucket!194 (Cons!49500 (tuple2!49247 key!3717 newValue!93) Nil!49500)))))))

(declare-fun b!4418397 () Bool)

(declare-fun res!1825651 () Bool)

(assert (=> b!4418397 (=> res!1825651 e!2751173)))

(get-info :version)

(assert (=> b!4418397 (= res!1825651 (or (and ((_ is Cons!49501) (toList!3421 lm!1616)) (= (_1!27918 (h!55168 (toList!3421 lm!1616))) hash!366)) (not ((_ is Cons!49501) (toList!3421 lm!1616))) (= (_1!27918 (h!55168 (toList!3421 lm!1616))) hash!366)))))

(assert (= (and start!430412 res!1825650) b!4418390))

(assert (= (and b!4418390 res!1825640) b!4418382))

(assert (= (and b!4418382 res!1825645) b!4418388))

(assert (= (and b!4418388 res!1825648) b!4418379))

(assert (= (and b!4418379 res!1825646) b!4418392))

(assert (= (and b!4418392 res!1825642) b!4418395))

(assert (= (and b!4418392 (not res!1825649)) b!4418385))

(assert (= (and b!4418392 res!1825652) b!4418389))

(assert (= (and b!4418389 res!1825644) b!4418376))

(assert (= (and b!4418376 res!1825656) b!4418391))

(assert (= (and b!4418391 (not res!1825654)) b!4418397))

(assert (= (and b!4418397 (not res!1825651)) b!4418386))

(assert (= (and b!4418386 c!752065) b!4418380))

(assert (= (and b!4418386 (not c!752065)) b!4418384))

(assert (= (and b!4418386 (not res!1825647)) b!4418383))

(assert (= (and b!4418383 (not res!1825641)) b!4418381))

(assert (= (and b!4418381 (not res!1825643)) b!4418387))

(assert (= (and b!4418387 (not res!1825653)) b!4418394))

(assert (= (and b!4418387 res!1825655) b!4418396))

(assert (= (and b!4418387 (not res!1825657)) b!4418378))

(assert (= (and start!430412 ((_ is Cons!49500) newBucket!194)) b!4418377))

(assert (= start!430412 b!4418393))

(declare-fun m!5094831 () Bool)

(assert (=> b!4418395 m!5094831))

(declare-fun m!5094833 () Bool)

(assert (=> b!4418394 m!5094833))

(declare-fun m!5094835 () Bool)

(assert (=> b!4418390 m!5094835))

(declare-fun m!5094837 () Bool)

(assert (=> b!4418391 m!5094837))

(assert (=> b!4418391 m!5094837))

(declare-fun m!5094839 () Bool)

(assert (=> b!4418391 m!5094839))

(declare-fun m!5094841 () Bool)

(assert (=> b!4418391 m!5094841))

(declare-fun m!5094843 () Bool)

(assert (=> b!4418387 m!5094843))

(declare-fun m!5094845 () Bool)

(assert (=> b!4418386 m!5094845))

(declare-fun m!5094847 () Bool)

(assert (=> b!4418386 m!5094847))

(declare-fun m!5094849 () Bool)

(assert (=> b!4418386 m!5094849))

(declare-fun m!5094851 () Bool)

(assert (=> b!4418386 m!5094851))

(assert (=> b!4418386 m!5094845))

(assert (=> b!4418386 m!5094847))

(declare-fun m!5094853 () Bool)

(assert (=> b!4418386 m!5094853))

(declare-fun m!5094855 () Bool)

(assert (=> b!4418376 m!5094855))

(declare-fun m!5094857 () Bool)

(assert (=> b!4418379 m!5094857))

(assert (=> b!4418379 m!5094857))

(declare-fun m!5094859 () Bool)

(assert (=> b!4418379 m!5094859))

(declare-fun m!5094861 () Bool)

(assert (=> b!4418381 m!5094861))

(assert (=> b!4418381 m!5094861))

(declare-fun m!5094863 () Bool)

(assert (=> b!4418381 m!5094863))

(declare-fun m!5094865 () Bool)

(assert (=> b!4418392 m!5094865))

(declare-fun m!5094867 () Bool)

(assert (=> b!4418388 m!5094867))

(assert (=> b!4418378 m!5094849))

(declare-fun m!5094869 () Bool)

(assert (=> b!4418389 m!5094869))

(declare-fun m!5094871 () Bool)

(assert (=> b!4418383 m!5094871))

(declare-fun m!5094873 () Bool)

(assert (=> b!4418382 m!5094873))

(assert (=> start!430412 m!5094855))

(declare-fun m!5094875 () Bool)

(assert (=> start!430412 m!5094875))

(declare-fun m!5094877 () Bool)

(assert (=> b!4418380 m!5094877))

(check-sat (not b!4418376) (not start!430412) (not b!4418387) tp_is_empty!26113 (not b!4418390) (not b!4418392) tp_is_empty!26115 (not b!4418379) (not b!4418377) (not b!4418383) (not b!4418382) (not b!4418395) (not b!4418389) (not b!4418381) (not b!4418380) (not b!4418378) (not b!4418386) (not b!4418391) (not b!4418394) (not b!4418388) (not b!4418393))
(check-sat)
