; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412688 () Bool)

(assert start!412688)

(declare-fun b_free!127917 () Bool)

(declare-fun b_next!128621 () Bool)

(assert (=> start!412688 (= b_free!127917 (not b_next!128621))))

(declare-fun tp!1320525 () Bool)

(declare-fun b_and!339179 () Bool)

(assert (=> start!412688 (= tp!1320525 b_and!339179)))

(declare-fun b!4298400 () Bool)

(declare-fun b_free!127919 () Bool)

(declare-fun b_next!128623 () Bool)

(assert (=> b!4298400 (= b_free!127919 (not b_next!128623))))

(declare-fun tp!1320528 () Bool)

(declare-fun b_and!339181 () Bool)

(assert (=> b!4298400 (= tp!1320528 b_and!339181)))

(declare-fun b!4298399 () Bool)

(declare-fun b_free!127921 () Bool)

(declare-fun b_next!128625 () Bool)

(assert (=> b!4298399 (= b_free!127921 (not b_next!128625))))

(declare-fun tp!1320529 () Bool)

(declare-fun b_and!339183 () Bool)

(assert (=> b!4298399 (= tp!1320529 b_and!339183)))

(declare-fun b!4298394 () Bool)

(declare-fun e!2671577 () Bool)

(declare-datatypes ((K!9004 0))(
  ( (K!9005 (val!15461 Int)) )
))
(declare-datatypes ((V!9206 0))(
  ( (V!9207 (val!15462 Int)) )
))
(declare-datatypes ((tuple2!45778 0))(
  ( (tuple2!45779 (_1!26168 K!9004) (_2!26168 V!9206)) )
))
(declare-datatypes ((List!48033 0))(
  ( (Nil!47909) (Cons!47909 (h!53329 tuple2!45778) (t!354688 List!48033)) )
))
(declare-datatypes ((Hashable!4419 0))(
  ( (HashableExt!4418 (__x!29534 Int)) )
))
(declare-datatypes ((array!16100 0))(
  ( (array!16101 (arr!7191 (Array (_ BitVec 32) (_ BitVec 64))) (size!35230 (_ BitVec 32))) )
))
(declare-datatypes ((array!16102 0))(
  ( (array!16103 (arr!7192 (Array (_ BitVec 32) List!48033)) (size!35231 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9006 0))(
  ( (LongMapFixedSize!9007 (defaultEntry!4888 Int) (mask!12983 (_ BitVec 32)) (extraKeys!4752 (_ BitVec 32)) (zeroValue!4762 List!48033) (minValue!4762 List!48033) (_size!9049 (_ BitVec 32)) (_keys!4803 array!16100) (_values!4784 array!16102) (_vacant!4564 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17821 0))(
  ( (Cell!17822 (v!41853 LongMapFixedSize!9006)) )
))
(declare-datatypes ((MutLongMap!4503 0))(
  ( (LongMap!4503 (underlying!9235 Cell!17821)) (MutLongMapExt!4502 (__x!29535 Int)) )
))
(declare-datatypes ((Cell!17823 0))(
  ( (Cell!17824 (v!41854 MutLongMap!4503)) )
))
(declare-datatypes ((MutableMap!4409 0))(
  ( (MutableMapExt!4408 (__x!29536 Int)) (HashMap!4409 (underlying!9236 Cell!17823) (hashF!6451 Hashable!4419) (_size!9050 (_ BitVec 32)) (defaultValue!4580 Int)) )
))
(declare-datatypes ((tuple2!45780 0))(
  ( (tuple2!45781 (_1!26169 Bool) (_2!26169 MutableMap!4409)) )
))
(declare-fun lt!1519983 () tuple2!45780)

(get-info :version)

(assert (=> b!4298394 (= e!2671577 (and (not (_1!26169 lt!1519983)) (not ((_ is HashMap!4409) (_2!26169 lt!1519983)))))))

(declare-fun k0!1716 () K!9004)

(declare-fun hm!64 () MutableMap!4409)

(declare-fun v!9471 () V!9206)

(declare-fun update!309 (MutableMap!4409 K!9004 V!9206) tuple2!45780)

(assert (=> b!4298394 (= lt!1519983 (update!309 hm!64 k0!1716 v!9471))))

(declare-datatypes ((ListMap!1447 0))(
  ( (ListMap!1448 (toList!2171 List!48033)) )
))
(declare-fun lt!1519982 () ListMap!1447)

(declare-fun lt!1519984 () ListMap!1447)

(declare-fun lt!1519981 () tuple2!45778)

(declare-fun +!151 (ListMap!1447 tuple2!45778) ListMap!1447)

(assert (=> b!4298394 (= lt!1519982 (+!151 lt!1519984 lt!1519981))))

(declare-fun b!4298395 () Bool)

(declare-fun e!2671575 () Bool)

(declare-fun e!2671583 () Bool)

(assert (=> b!4298395 (= e!2671575 e!2671583)))

(declare-fun res!1761743 () Bool)

(assert (=> b!4298395 (=> (not res!1761743) (not e!2671583))))

(declare-fun p!6034 () Int)

(declare-fun forall!8609 (List!48033 Int) Bool)

(assert (=> b!4298395 (= res!1761743 (forall!8609 (toList!2171 lt!1519984) p!6034))))

(declare-fun map!9867 (MutableMap!4409) ListMap!1447)

(assert (=> b!4298395 (= lt!1519984 (map!9867 hm!64))))

(declare-fun mapIsEmpty!20229 () Bool)

(declare-fun mapRes!20229 () Bool)

(assert (=> mapIsEmpty!20229 mapRes!20229))

(declare-fun b!4298396 () Bool)

(declare-fun e!2671578 () Bool)

(declare-fun e!2671580 () Bool)

(declare-fun lt!1519985 () MutLongMap!4503)

(assert (=> b!4298396 (= e!2671578 (and e!2671580 ((_ is LongMap!4503) lt!1519985)))))

(assert (=> b!4298396 (= lt!1519985 (v!41854 (underlying!9236 hm!64)))))

(declare-fun b!4298397 () Bool)

(declare-fun e!2671582 () Bool)

(declare-fun e!2671581 () Bool)

(assert (=> b!4298397 (= e!2671582 e!2671581)))

(declare-fun res!1761741 () Bool)

(assert (=> start!412688 (=> (not res!1761741) (not e!2671575))))

(assert (=> start!412688 (= res!1761741 ((_ is HashMap!4409) hm!64))))

(assert (=> start!412688 e!2671575))

(declare-fun e!2671576 () Bool)

(assert (=> start!412688 e!2671576))

(declare-fun tp_is_empty!23185 () Bool)

(assert (=> start!412688 tp_is_empty!23185))

(declare-fun tp_is_empty!23187 () Bool)

(assert (=> start!412688 tp_is_empty!23187))

(assert (=> start!412688 tp!1320525))

(declare-fun b!4298398 () Bool)

(assert (=> b!4298398 (= e!2671583 e!2671577)))

(declare-fun res!1761742 () Bool)

(assert (=> b!4298398 (=> (not res!1761742) (not e!2671577))))

(declare-fun dynLambda!20346 (Int tuple2!45778) Bool)

(assert (=> b!4298398 (= res!1761742 (dynLambda!20346 p!6034 lt!1519981))))

(assert (=> b!4298398 (= lt!1519981 (tuple2!45779 k0!1716 v!9471))))

(declare-fun mapNonEmpty!20229 () Bool)

(declare-fun tp!1320522 () Bool)

(declare-fun tp!1320527 () Bool)

(assert (=> mapNonEmpty!20229 (= mapRes!20229 (and tp!1320522 tp!1320527))))

(declare-fun mapRest!20229 () (Array (_ BitVec 32) List!48033))

(declare-fun mapValue!20229 () List!48033)

(declare-fun mapKey!20229 () (_ BitVec 32))

(assert (=> mapNonEmpty!20229 (= (arr!7192 (_values!4784 (v!41853 (underlying!9235 (v!41854 (underlying!9236 hm!64)))))) (store mapRest!20229 mapKey!20229 mapValue!20229))))

(declare-fun tp!1320523 () Bool)

(declare-fun tp!1320524 () Bool)

(declare-fun e!2671579 () Bool)

(declare-fun array_inv!5153 (array!16100) Bool)

(declare-fun array_inv!5154 (array!16102) Bool)

(assert (=> b!4298399 (= e!2671581 (and tp!1320529 tp!1320523 tp!1320524 (array_inv!5153 (_keys!4803 (v!41853 (underlying!9235 (v!41854 (underlying!9236 hm!64)))))) (array_inv!5154 (_values!4784 (v!41853 (underlying!9235 (v!41854 (underlying!9236 hm!64)))))) e!2671579))))

(assert (=> b!4298400 (= e!2671576 (and e!2671578 tp!1320528))))

(declare-fun b!4298401 () Bool)

(assert (=> b!4298401 (= e!2671580 e!2671582)))

(declare-fun b!4298402 () Bool)

(declare-fun res!1761744 () Bool)

(assert (=> b!4298402 (=> (not res!1761744) (not e!2671575))))

(declare-fun valid!3481 (MutableMap!4409) Bool)

(assert (=> b!4298402 (= res!1761744 (valid!3481 hm!64))))

(declare-fun b!4298403 () Bool)

(declare-fun tp!1320526 () Bool)

(assert (=> b!4298403 (= e!2671579 (and tp!1320526 mapRes!20229))))

(declare-fun condMapEmpty!20229 () Bool)

(declare-fun mapDefault!20229 () List!48033)

(assert (=> b!4298403 (= condMapEmpty!20229 (= (arr!7192 (_values!4784 (v!41853 (underlying!9235 (v!41854 (underlying!9236 hm!64)))))) ((as const (Array (_ BitVec 32) List!48033)) mapDefault!20229)))))

(assert (= (and start!412688 res!1761741) b!4298402))

(assert (= (and b!4298402 res!1761744) b!4298395))

(assert (= (and b!4298395 res!1761743) b!4298398))

(assert (= (and b!4298398 res!1761742) b!4298394))

(assert (= (and b!4298403 condMapEmpty!20229) mapIsEmpty!20229))

(assert (= (and b!4298403 (not condMapEmpty!20229)) mapNonEmpty!20229))

(assert (= b!4298399 b!4298403))

(assert (= b!4298397 b!4298399))

(assert (= b!4298401 b!4298397))

(assert (= (and b!4298396 ((_ is LongMap!4503) (v!41854 (underlying!9236 hm!64)))) b!4298401))

(assert (= b!4298400 b!4298396))

(assert (= (and start!412688 ((_ is HashMap!4409) hm!64)) b!4298400))

(declare-fun b_lambda!126215 () Bool)

(assert (=> (not b_lambda!126215) (not b!4298398)))

(declare-fun t!354687 () Bool)

(declare-fun tb!257139 () Bool)

(assert (=> (and start!412688 (= p!6034 p!6034) t!354687) tb!257139))

(declare-fun result!314388 () Bool)

(assert (=> tb!257139 (= result!314388 true)))

(assert (=> b!4298398 t!354687))

(declare-fun b_and!339185 () Bool)

(assert (= b_and!339179 (and (=> t!354687 result!314388) b_and!339185)))

(declare-fun m!4890491 () Bool)

(assert (=> b!4298402 m!4890491))

(declare-fun m!4890493 () Bool)

(assert (=> b!4298394 m!4890493))

(declare-fun m!4890495 () Bool)

(assert (=> b!4298394 m!4890495))

(declare-fun m!4890497 () Bool)

(assert (=> b!4298398 m!4890497))

(declare-fun m!4890499 () Bool)

(assert (=> mapNonEmpty!20229 m!4890499))

(declare-fun m!4890501 () Bool)

(assert (=> b!4298395 m!4890501))

(declare-fun m!4890503 () Bool)

(assert (=> b!4298395 m!4890503))

(declare-fun m!4890505 () Bool)

(assert (=> b!4298399 m!4890505))

(declare-fun m!4890507 () Bool)

(assert (=> b!4298399 m!4890507))

(check-sat (not b_lambda!126215) b_and!339183 b_and!339185 tp_is_empty!23187 (not mapNonEmpty!20229) (not b_next!128621) (not b_next!128623) (not b!4298394) b_and!339181 tp_is_empty!23185 (not b!4298402) (not b!4298399) (not b!4298395) (not b!4298403) (not b_next!128625))
(check-sat b_and!339181 b_and!339183 (not b_next!128625) b_and!339185 (not b_next!128621) (not b_next!128623))
(get-model)

(declare-fun b_lambda!126217 () Bool)

(assert (= b_lambda!126215 (or (and start!412688 b_free!127917) b_lambda!126217)))

(check-sat b_and!339183 b_and!339185 tp_is_empty!23187 (not mapNonEmpty!20229) (not b_lambda!126217) (not b_next!128621) (not b_next!128623) (not b!4298394) b_and!339181 tp_is_empty!23185 (not b!4298402) (not b!4298399) (not b!4298395) (not b!4298403) (not b_next!128625))
(check-sat b_and!339181 b_and!339183 (not b_next!128625) b_and!339185 (not b_next!128621) (not b_next!128623))
(get-model)

(declare-fun bs!603893 () Bool)

(declare-fun b!4298446 () Bool)

(declare-fun b!4298450 () Bool)

(assert (= bs!603893 (and b!4298446 b!4298450)))

(declare-fun lambda!131867 () Int)

(declare-fun lambda!131866 () Int)

(assert (=> bs!603893 (= lambda!131867 lambda!131866)))

(declare-fun bm!295357 () Bool)

(declare-fun call!295365 () ListMap!1447)

(declare-datatypes ((tuple2!45782 0))(
  ( (tuple2!45783 (_1!26170 (_ BitVec 64)) (_2!26170 List!48033)) )
))
(declare-datatypes ((List!48034 0))(
  ( (Nil!47910) (Cons!47910 (h!53330 tuple2!45782) (t!354691 List!48034)) )
))
(declare-datatypes ((ListLongMap!789 0))(
  ( (ListLongMap!790 (toList!2172 List!48034)) )
))
(declare-fun call!295384 () ListLongMap!789)

(declare-fun extractMap!263 (List!48034) ListMap!1447)

(assert (=> bm!295357 (= call!295365 (extractMap!263 (toList!2172 call!295384)))))

(declare-datatypes ((tuple2!45784 0))(
  ( (tuple2!45785 (_1!26171 Bool) (_2!26171 MutLongMap!4503)) )
))
(declare-fun lt!1520144 () tuple2!45784)

(declare-fun lt!1520132 () MutableMap!4409)

(declare-fun b!4298442 () Bool)

(declare-fun e!2671606 () tuple2!45780)

(declare-datatypes ((Unit!66623 0))(
  ( (Unit!66624) )
))
(declare-datatypes ((tuple2!45786 0))(
  ( (tuple2!45787 (_1!26172 Unit!66623) (_2!26172 MutableMap!4409)) )
))
(declare-fun Unit!66625 () Unit!66623)

(declare-fun Unit!66626 () Unit!66623)

(assert (=> b!4298442 (= e!2671606 (tuple2!45781 (_1!26171 lt!1520144) (_2!26172 (ite false (tuple2!45787 Unit!66625 (HashMap!4409 (Cell!17824 (_2!26171 lt!1520144)) (hashF!6451 hm!64) (bvadd (_size!9050 hm!64) #b00000000000000000000000000000001) (defaultValue!4580 hm!64))) (tuple2!45787 Unit!66626 lt!1520132)))))))

(declare-fun lt!1520146 () (_ BitVec 64))

(declare-fun call!295386 () (_ BitVec 64))

(assert (=> b!4298442 (= lt!1520146 call!295386)))

(declare-fun lt!1520135 () List!48033)

(declare-fun call!295382 () List!48033)

(assert (=> b!4298442 (= lt!1520135 call!295382)))

(declare-fun call!295362 () List!48033)

(declare-fun lt!1520124 () List!48033)

(assert (=> b!4298442 (= lt!1520124 (Cons!47909 (tuple2!45779 k0!1716 v!9471) call!295362))))

(declare-fun call!295371 () tuple2!45784)

(assert (=> b!4298442 (= lt!1520144 call!295371)))

(assert (=> b!4298442 (= lt!1520132 (HashMap!4409 (Cell!17824 (_2!26171 lt!1520144)) (hashF!6451 hm!64) (_size!9050 hm!64) (defaultValue!4580 hm!64)))))

(declare-fun c!731197 () Bool)

(assert (=> b!4298442 (= c!731197 (_1!26171 lt!1520144))))

(declare-fun lt!1520125 () Unit!66623)

(declare-fun e!2671612 () Unit!66623)

(assert (=> b!4298442 (= lt!1520125 e!2671612)))

(declare-fun lt!1520134 () List!48033)

(declare-fun c!731196 () Bool)

(declare-fun lt!1520133 () ListLongMap!789)

(declare-fun call!295379 () Unit!66623)

(declare-fun lt!1520110 () (_ BitVec 64))

(declare-fun bm!295358 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!106 (List!48034 (_ BitVec 64) List!48033 Hashable!4419) Unit!66623)

(assert (=> bm!295358 (= call!295379 (lemmaInLongMapAllKeySameHashThenForTuple!106 (toList!2172 lt!1520133) (ite c!731196 lt!1520146 lt!1520110) (ite c!731196 lt!1520135 lt!1520134) (hashF!6451 hm!64)))))

(declare-fun b!4298443 () Bool)

(declare-fun e!2671607 () ListMap!1447)

(declare-fun call!295367 () ListMap!1447)

(assert (=> b!4298443 (= e!2671607 call!295367)))

(declare-fun bm!295359 () Bool)

(declare-fun call!295364 () ListMap!1447)

(assert (=> bm!295359 (= call!295364 (extractMap!263 (toList!2172 lt!1520133)))))

(declare-fun call!295389 () ListMap!1447)

(declare-fun bm!295360 () Bool)

(assert (=> bm!295360 (= call!295389 (+!151 call!295364 (tuple2!45779 k0!1716 v!9471)))))

(declare-fun call!295391 () ListLongMap!789)

(declare-fun lt!1520143 () tuple2!45784)

(declare-fun bm!295361 () Bool)

(declare-fun map!9868 (MutLongMap!4503) ListLongMap!789)

(assert (=> bm!295361 (= call!295391 (map!9868 (ite c!731196 (_2!26171 lt!1520144) (_2!26171 lt!1520143))))))

(declare-fun bm!295362 () Bool)

(declare-fun call!295380 () Unit!66623)

(declare-fun lt!1520129 () List!48033)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!93 (ListLongMap!789 (_ BitVec 64) List!48033 Hashable!4419) Unit!66623)

(assert (=> bm!295362 (= call!295380 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!93 lt!1520133 (ite c!731196 lt!1520146 lt!1520110) (ite c!731196 lt!1520124 lt!1520129) (hashF!6451 hm!64)))))

(declare-fun bm!295363 () Bool)

(declare-fun call!295368 () ListMap!1447)

(declare-fun lt!1520126 () tuple2!45780)

(assert (=> bm!295363 (= call!295368 (map!9867 (_2!26169 lt!1520126)))))

(declare-fun call!295375 () Bool)

(declare-fun bm!295364 () Bool)

(declare-fun forall!8610 (List!48034 Int) Bool)

(assert (=> bm!295364 (= call!295375 (forall!8610 (toList!2172 call!295391) (ite c!731196 lambda!131866 lambda!131867)))))

(declare-fun bm!295365 () Bool)

(declare-fun hash!831 (Hashable!4419 K!9004) (_ BitVec 64))

(assert (=> bm!295365 (= call!295386 (hash!831 (hashF!6451 hm!64) k0!1716))))

(declare-fun bm!295366 () Bool)

(declare-fun call!295385 () Bool)

(declare-fun eq!92 (ListMap!1447 ListMap!1447) Bool)

(assert (=> bm!295366 (= call!295385 (eq!92 call!295365 call!295389))))

(declare-fun call!295374 () Bool)

(declare-fun bm!295367 () Bool)

(declare-fun allKeysSameHash!115 (List!48033 (_ BitVec 64) Hashable!4419) Bool)

(assert (=> bm!295367 (= call!295374 (allKeysSameHash!115 call!295362 (ite c!731196 lt!1520146 lt!1520110) (hashF!6451 hm!64)))))

(declare-fun bm!295368 () Bool)

(declare-fun call!295381 () ListMap!1447)

(declare-fun call!295363 () ListMap!1447)

(assert (=> bm!295368 (= call!295381 call!295363)))

(declare-fun call!295376 () Bool)

(declare-fun bm!295369 () Bool)

(declare-fun lt!1520112 () ListMap!1447)

(declare-fun contains!9826 (ListMap!1447 K!9004) Bool)

(assert (=> bm!295369 (= call!295376 (contains!9826 (ite c!731196 lt!1520112 call!295381) k0!1716))))

(declare-fun lt!1520115 () ListLongMap!789)

(declare-fun call!295377 () Bool)

(declare-fun bm!295370 () Bool)

(declare-fun lt!1520148 () ListLongMap!789)

(declare-fun allKeysSameHashInMap!263 (ListLongMap!789 Hashable!4419) Bool)

(assert (=> bm!295370 (= call!295377 (allKeysSameHashInMap!263 (ite c!731196 lt!1520115 lt!1520148) (hashF!6451 hm!64)))))

(declare-fun b!4298444 () Bool)

(declare-fun e!2671614 () List!48033)

(assert (=> b!4298444 (= e!2671614 Nil!47909)))

(declare-fun bm!295371 () Bool)

(declare-fun +!152 (ListLongMap!789 tuple2!45782) ListLongMap!789)

(assert (=> bm!295371 (= call!295384 (+!152 lt!1520133 (ite c!731196 (tuple2!45783 lt!1520146 lt!1520124) (tuple2!45783 lt!1520110 lt!1520129))))))

(declare-fun b!4298445 () Bool)

(declare-fun e!2671616 () Unit!66623)

(declare-fun lt!1520121 () Unit!66623)

(assert (=> b!4298445 (= e!2671616 lt!1520121)))

(declare-fun lt!1520119 () Unit!66623)

(assert (=> b!4298445 (= lt!1520119 call!295379)))

(declare-fun call!295366 () Bool)

(assert (=> b!4298445 call!295366))

(declare-fun lt!1520127 () Unit!66623)

(assert (=> b!4298445 (= lt!1520127 lt!1520119)))

(declare-fun call!295392 () Unit!66623)

(assert (=> b!4298445 (= lt!1520121 call!295392)))

(assert (=> b!4298445 call!295374))

(assert (=> b!4298446 call!295376))

(declare-fun lt!1520145 () Unit!66623)

(declare-fun Unit!66627 () Unit!66623)

(assert (=> b!4298446 (= lt!1520145 Unit!66627)))

(declare-fun call!295372 () ListMap!1447)

(assert (=> b!4298446 (contains!9826 call!295372 k0!1716)))

(declare-fun lt!1520117 () Unit!66623)

(declare-fun lt!1520136 () Unit!66623)

(assert (=> b!4298446 (= lt!1520117 lt!1520136)))

(declare-fun lt!1520137 () ListMap!1447)

(declare-fun call!295373 () Bool)

(assert (=> b!4298446 (= (contains!9826 lt!1520137 k0!1716) call!295373)))

(declare-fun call!295378 () Unit!66623)

(assert (=> b!4298446 (= lt!1520136 call!295378)))

(declare-fun lt!1520128 () ListMap!1447)

(assert (=> b!4298446 (= lt!1520128 call!295372)))

(assert (=> b!4298446 (= lt!1520137 call!295381)))

(declare-fun lt!1520105 () Unit!66623)

(declare-fun Unit!66628 () Unit!66623)

(assert (=> b!4298446 (= lt!1520105 Unit!66628)))

(declare-fun call!295383 () Bool)

(assert (=> b!4298446 call!295383))

(declare-fun lt!1520149 () Unit!66623)

(declare-fun Unit!66629 () Unit!66623)

(assert (=> b!4298446 (= lt!1520149 Unit!66629)))

(declare-fun call!295387 () Bool)

(assert (=> b!4298446 call!295387))

(declare-fun lt!1520131 () Unit!66623)

(declare-fun Unit!66630 () Unit!66623)

(assert (=> b!4298446 (= lt!1520131 Unit!66630)))

(assert (=> b!4298446 call!295375))

(declare-fun lt!1520109 () Unit!66623)

(declare-fun lt!1520113 () Unit!66623)

(assert (=> b!4298446 (= lt!1520109 lt!1520113)))

(assert (=> b!4298446 call!295385))

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!27 (ListLongMap!789 (_ BitVec 64) List!48033 K!9004 V!9206 Hashable!4419) Unit!66623)

(assert (=> b!4298446 (= lt!1520113 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!27 lt!1520133 lt!1520110 lt!1520129 k0!1716 v!9471 (hashF!6451 hm!64)))))

(declare-fun lt!1520141 () Unit!66623)

(declare-fun lt!1520150 () Unit!66623)

(assert (=> b!4298446 (= lt!1520141 lt!1520150)))

(declare-fun e!2671609 () Bool)

(assert (=> b!4298446 e!2671609))

(declare-fun res!1761755 () Bool)

(assert (=> b!4298446 (=> (not res!1761755) (not e!2671609))))

(declare-fun call!295390 () Bool)

(assert (=> b!4298446 (= res!1761755 call!295390)))

(assert (=> b!4298446 (= lt!1520148 call!295384)))

(assert (=> b!4298446 (= lt!1520150 call!295380)))

(declare-fun lt!1520142 () Unit!66623)

(assert (=> b!4298446 (= lt!1520142 e!2671616)))

(declare-fun c!731198 () Bool)

(declare-fun isEmpty!28039 (List!48033) Bool)

(assert (=> b!4298446 (= c!731198 (not (isEmpty!28039 lt!1520134)))))

(declare-fun e!2671613 () Unit!66623)

(declare-fun Unit!66631 () Unit!66623)

(assert (=> b!4298446 (= e!2671613 Unit!66631)))

(declare-fun bm!295372 () Bool)

(declare-fun call!295388 () ListMap!1447)

(assert (=> bm!295372 (= call!295383 (eq!92 (ite c!731196 call!295388 call!295381) call!295372))))

(declare-fun bm!295373 () Bool)

(assert (=> bm!295373 (= call!295367 (map!9867 hm!64))))

(declare-fun bm!295374 () Bool)

(declare-fun lemmaRemovePairForKeyPreservesHash!102 (List!48033 K!9004 (_ BitVec 64) Hashable!4419) Unit!66623)

(assert (=> bm!295374 (= call!295392 (lemmaRemovePairForKeyPreservesHash!102 (ite c!731196 lt!1520135 lt!1520134) k0!1716 (ite c!731196 lt!1520146 lt!1520110) (hashF!6451 hm!64)))))

(declare-fun bm!295375 () Bool)

(declare-fun lt!1520108 () ListMap!1447)

(assert (=> bm!295375 (= call!295373 (contains!9826 (ite c!731196 lt!1520108 lt!1520128) k0!1716))))

(declare-fun b!4298447 () Bool)

(declare-fun res!1761759 () Bool)

(declare-fun e!2671608 () Bool)

(assert (=> b!4298447 (=> (not res!1761759) (not e!2671608))))

(assert (=> b!4298447 (= res!1761759 (valid!3481 (_2!26169 lt!1520126)))))

(declare-fun bm!295376 () Bool)

(assert (=> bm!295376 (= call!295387 (allKeysSameHashInMap!263 call!295391 (hashF!6451 hm!64)))))

(declare-fun bm!295377 () Bool)

(assert (=> bm!295377 (= call!295390 (forall!8610 (ite c!731196 (toList!2172 lt!1520115) (toList!2172 lt!1520148)) (ite c!731196 lambda!131866 lambda!131867)))))

(declare-fun b!4298448 () Bool)

(declare-fun e!2671610 () Bool)

(declare-fun e!2671615 () Bool)

(assert (=> b!4298448 (= e!2671610 e!2671615)))

(declare-fun res!1761756 () Bool)

(assert (=> b!4298448 (= res!1761756 (contains!9826 call!295368 k0!1716))))

(assert (=> b!4298448 (=> (not res!1761756) (not e!2671615))))

(declare-fun call!295369 () Bool)

(declare-fun bm!295378 () Bool)

(declare-fun lt!1520138 () MutableMap!4409)

(assert (=> bm!295378 (= call!295369 (valid!3481 (ite c!731196 lt!1520132 lt!1520138)))))

(declare-fun b!4298449 () Bool)

(assert (=> b!4298449 (= e!2671607 (+!151 call!295367 (tuple2!45779 k0!1716 v!9471)))))

(declare-fun d!1266412 () Bool)

(assert (=> d!1266412 e!2671608))

(declare-fun res!1761757 () Bool)

(assert (=> d!1266412 (=> (not res!1761757) (not e!2671608))))

(assert (=> d!1266412 (= res!1761757 ((_ is HashMap!4409) (_2!26169 lt!1520126)))))

(declare-fun lt!1520139 () tuple2!45780)

(assert (=> d!1266412 (= lt!1520126 (tuple2!45781 (_1!26169 lt!1520139) (_2!26169 lt!1520139)))))

(assert (=> d!1266412 (= lt!1520139 e!2671606)))

(declare-fun contains!9827 (MutableMap!4409 K!9004) Bool)

(assert (=> d!1266412 (= c!731196 (contains!9827 hm!64 k0!1716))))

(assert (=> d!1266412 (= lt!1520133 (map!9868 (v!41854 (underlying!9236 hm!64))))))

(declare-fun lt!1520111 () ListMap!1447)

(assert (=> d!1266412 (= lt!1520111 (map!9867 hm!64))))

(assert (=> d!1266412 (valid!3481 hm!64)))

(assert (=> d!1266412 (= (update!309 hm!64 k0!1716 v!9471) lt!1520126)))

(declare-fun bm!295379 () Bool)

(declare-fun lemmaEquivalentThenSameContains!27 (ListMap!1447 ListMap!1447 K!9004) Unit!66623)

(assert (=> bm!295379 (= call!295378 (lemmaEquivalentThenSameContains!27 (ite c!731196 lt!1520112 lt!1520137) (ite c!731196 lt!1520108 lt!1520128) k0!1716))))

(assert (=> b!4298450 call!295383))

(declare-fun lt!1520103 () Unit!66623)

(declare-fun Unit!66632 () Unit!66623)

(assert (=> b!4298450 (= lt!1520103 Unit!66632)))

(assert (=> b!4298450 call!295387))

(declare-fun lt!1520122 () Unit!66623)

(declare-fun Unit!66633 () Unit!66623)

(assert (=> b!4298450 (= lt!1520122 Unit!66633)))

(assert (=> b!4298450 call!295375))

(declare-fun lt!1520098 () Unit!66623)

(declare-fun lt!1520099 () Unit!66623)

(assert (=> b!4298450 (= lt!1520098 lt!1520099)))

(assert (=> b!4298450 (= call!295376 call!295373)))

(assert (=> b!4298450 (= lt!1520099 call!295378)))

(assert (=> b!4298450 (= lt!1520108 call!295372)))

(assert (=> b!4298450 (= lt!1520112 call!295388)))

(declare-fun lt!1520116 () Unit!66623)

(declare-fun lt!1520101 () Unit!66623)

(assert (=> b!4298450 (= lt!1520116 lt!1520101)))

(assert (=> b!4298450 call!295385))

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!27 (ListLongMap!789 (_ BitVec 64) List!48033 K!9004 V!9206 Hashable!4419) Unit!66623)

(assert (=> b!4298450 (= lt!1520101 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!27 lt!1520133 lt!1520146 lt!1520124 k0!1716 v!9471 (hashF!6451 hm!64)))))

(declare-fun lt!1520123 () Unit!66623)

(declare-fun lt!1520102 () Unit!66623)

(assert (=> b!4298450 (= lt!1520123 lt!1520102)))

(declare-fun e!2671611 () Bool)

(assert (=> b!4298450 e!2671611))

(declare-fun res!1761758 () Bool)

(assert (=> b!4298450 (=> (not res!1761758) (not e!2671611))))

(assert (=> b!4298450 (= res!1761758 call!295390)))

(assert (=> b!4298450 (= lt!1520115 call!295384)))

(assert (=> b!4298450 (= lt!1520102 call!295380)))

(declare-fun lt!1520118 () Unit!66623)

(declare-fun Unit!66634 () Unit!66623)

(assert (=> b!4298450 (= lt!1520118 Unit!66634)))

(declare-fun noDuplicateKeys!143 (List!48033) Bool)

(assert (=> b!4298450 (noDuplicateKeys!143 lt!1520124)))

(declare-fun lt!1520104 () Unit!66623)

(declare-fun Unit!66635 () Unit!66623)

(assert (=> b!4298450 (= lt!1520104 Unit!66635)))

(declare-fun containsKey!222 (List!48033 K!9004) Bool)

(assert (=> b!4298450 (not (containsKey!222 call!295362 k0!1716))))

(declare-fun lt!1520130 () Unit!66623)

(declare-fun Unit!66636 () Unit!66623)

(assert (=> b!4298450 (= lt!1520130 Unit!66636)))

(declare-fun lt!1520096 () Unit!66623)

(declare-fun lt!1520140 () Unit!66623)

(assert (=> b!4298450 (= lt!1520096 lt!1520140)))

(assert (=> b!4298450 (noDuplicateKeys!143 call!295362)))

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!120 (List!48033 K!9004) Unit!66623)

(assert (=> b!4298450 (= lt!1520140 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!120 lt!1520135 k0!1716))))

(declare-fun lt!1520147 () Unit!66623)

(declare-fun lt!1520114 () Unit!66623)

(assert (=> b!4298450 (= lt!1520147 lt!1520114)))

(assert (=> b!4298450 call!295374))

(assert (=> b!4298450 (= lt!1520114 call!295392)))

(declare-fun lt!1520106 () Unit!66623)

(declare-fun lt!1520100 () Unit!66623)

(assert (=> b!4298450 (= lt!1520106 lt!1520100)))

(assert (=> b!4298450 call!295366))

(assert (=> b!4298450 (= lt!1520100 call!295379)))

(declare-fun Unit!66637 () Unit!66623)

(assert (=> b!4298450 (= e!2671612 Unit!66637)))

(declare-fun bm!295380 () Bool)

(declare-fun call!295370 () Bool)

(assert (=> bm!295380 (= call!295370 (eq!92 call!295368 e!2671607))))

(declare-fun c!731200 () Bool)

(declare-fun c!731194 () Bool)

(assert (=> bm!295380 (= c!731200 c!731194)))

(declare-fun bm!295381 () Bool)

(declare-fun apply!10868 (MutLongMap!4503 (_ BitVec 64)) List!48033)

(assert (=> bm!295381 (= call!295382 (apply!10868 (v!41854 (underlying!9236 hm!64)) (ite c!731196 lt!1520146 lt!1520110)))))

(declare-fun b!4298451 () Bool)

(assert (=> b!4298451 (= call!295381 lt!1520111)))

(declare-fun lt!1520097 () Unit!66623)

(declare-fun Unit!66638 () Unit!66623)

(assert (=> b!4298451 (= lt!1520097 Unit!66638)))

(assert (=> b!4298451 call!295369))

(declare-fun Unit!66639 () Unit!66623)

(assert (=> b!4298451 (= e!2671613 Unit!66639)))

(declare-fun b!4298452 () Bool)

(declare-fun Unit!66640 () Unit!66623)

(assert (=> b!4298452 (= e!2671616 Unit!66640)))

(declare-fun b!4298453 () Bool)

(declare-fun Unit!66641 () Unit!66623)

(declare-fun Unit!66642 () Unit!66623)

(assert (=> b!4298453 (= e!2671606 (tuple2!45781 (_1!26171 lt!1520143) (_2!26172 (ite (_1!26171 lt!1520143) (tuple2!45787 Unit!66641 (HashMap!4409 (Cell!17824 (_2!26171 lt!1520143)) (hashF!6451 hm!64) (bvadd (_size!9050 hm!64) #b00000000000000000000000000000001) (defaultValue!4580 hm!64))) (tuple2!45787 Unit!66642 lt!1520138)))))))

(assert (=> b!4298453 (= lt!1520110 call!295386)))

(declare-fun c!731199 () Bool)

(declare-fun contains!9828 (MutLongMap!4503 (_ BitVec 64)) Bool)

(assert (=> b!4298453 (= c!731199 (contains!9828 (v!41854 (underlying!9236 hm!64)) lt!1520110))))

(assert (=> b!4298453 (= lt!1520134 e!2671614)))

(assert (=> b!4298453 (= lt!1520129 (Cons!47909 (tuple2!45779 k0!1716 v!9471) lt!1520134))))

(assert (=> b!4298453 (= lt!1520143 call!295371)))

(assert (=> b!4298453 (= lt!1520138 (HashMap!4409 (Cell!17824 (_2!26171 lt!1520143)) (hashF!6451 hm!64) (_size!9050 hm!64) (defaultValue!4580 hm!64)))))

(declare-fun c!731195 () Bool)

(assert (=> b!4298453 (= c!731195 (_1!26171 lt!1520143))))

(declare-fun lt!1520120 () Unit!66623)

(assert (=> b!4298453 (= lt!1520120 e!2671613)))

(declare-fun b!4298454 () Bool)

(assert (=> b!4298454 (= e!2671608 e!2671610)))

(assert (=> b!4298454 (= c!731194 (_1!26169 lt!1520126))))

(declare-fun b!4298455 () Bool)

(assert (=> b!4298455 (= call!295388 lt!1520111)))

(declare-fun lt!1520107 () Unit!66623)

(declare-fun Unit!66643 () Unit!66623)

(assert (=> b!4298455 (= lt!1520107 Unit!66643)))

(assert (=> b!4298455 call!295369))

(declare-fun Unit!66644 () Unit!66623)

(assert (=> b!4298455 (= e!2671612 Unit!66644)))

(declare-fun bm!295382 () Bool)

(declare-fun update!310 (MutLongMap!4503 (_ BitVec 64) List!48033) tuple2!45784)

(assert (=> bm!295382 (= call!295371 (update!310 (v!41854 (underlying!9236 hm!64)) (ite c!731196 lt!1520146 lt!1520110) (ite c!731196 lt!1520124 lt!1520129)))))

(declare-fun b!4298456 () Bool)

(assert (=> b!4298456 (= e!2671610 call!295370)))

(declare-fun bm!295383 () Bool)

(assert (=> bm!295383 (= call!295372 (+!151 lt!1520111 (tuple2!45779 k0!1716 v!9471)))))

(declare-fun bm!295384 () Bool)

(declare-fun removePairForKey!132 (List!48033 K!9004) List!48033)

(assert (=> bm!295384 (= call!295362 (removePairForKey!132 (ite c!731196 lt!1520135 lt!1520134) k0!1716))))

(declare-fun b!4298457 () Bool)

(assert (=> b!4298457 (= e!2671611 call!295377)))

(declare-fun b!4298458 () Bool)

(assert (=> b!4298458 (= e!2671614 call!295382)))

(declare-fun bm!295385 () Bool)

(assert (=> bm!295385 (= call!295363 (map!9867 (ite c!731196 lt!1520132 lt!1520138)))))

(declare-fun bm!295386 () Bool)

(assert (=> bm!295386 (= call!295366 (allKeysSameHash!115 (ite c!731196 lt!1520135 lt!1520134) (ite c!731196 lt!1520146 lt!1520110) (hashF!6451 hm!64)))))

(declare-fun bm!295387 () Bool)

(assert (=> bm!295387 (= call!295388 call!295363)))

(declare-fun b!4298459 () Bool)

(assert (=> b!4298459 (= e!2671609 call!295377)))

(declare-fun b!4298460 () Bool)

(assert (=> b!4298460 (= e!2671615 call!295370)))

(assert (= (and d!1266412 c!731196) b!4298442))

(assert (= (and d!1266412 (not c!731196)) b!4298453))

(assert (= (and b!4298442 c!731197) b!4298450))

(assert (= (and b!4298442 (not c!731197)) b!4298455))

(assert (= (and b!4298450 res!1761758) b!4298457))

(assert (= (or b!4298450 b!4298455) bm!295387))

(assert (= (and b!4298453 c!731199) b!4298458))

(assert (= (and b!4298453 (not c!731199)) b!4298444))

(assert (= (and b!4298453 c!731195) b!4298446))

(assert (= (and b!4298453 (not c!731195)) b!4298451))

(assert (= (and b!4298446 c!731198) b!4298445))

(assert (= (and b!4298446 (not c!731198)) b!4298452))

(assert (= (and b!4298446 res!1761755) b!4298459))

(assert (= (or b!4298446 b!4298451) bm!295368))

(assert (= (or b!4298450 b!4298445) bm!295358))

(assert (= (or b!4298450 b!4298446) bm!295383))

(assert (= (or b!4298450 b!4298446) bm!295362))

(assert (= (or b!4298450 b!4298446) bm!295379))

(assert (= (or b!4298455 b!4298451) bm!295378))

(assert (= (or b!4298450 b!4298446) bm!295375))

(assert (= (or b!4298442 b!4298453) bm!295365))

(assert (= (or b!4298442 b!4298458) bm!295381))

(assert (= (or b!4298442 b!4298450 b!4298445) bm!295384))

(assert (= (or b!4298450 b!4298446) bm!295359))

(assert (= (or b!4298450 b!4298446) bm!295361))

(assert (= (or b!4298450 b!4298446) bm!295377))

(assert (= (or b!4298442 b!4298453) bm!295382))

(assert (= (or b!4298457 b!4298459) bm!295370))

(assert (= (or b!4298450 b!4298446) bm!295369))

(assert (= (or b!4298450 b!4298446) bm!295371))

(assert (= (or b!4298450 b!4298445) bm!295386))

(assert (= (or bm!295387 bm!295368) bm!295385))

(assert (= (or b!4298450 b!4298445) bm!295374))

(assert (= (or b!4298450 b!4298446) bm!295376))

(assert (= (or b!4298450 b!4298446) bm!295360))

(assert (= (or b!4298450 b!4298445) bm!295367))

(assert (= (or b!4298450 b!4298446) bm!295357))

(assert (= (or b!4298450 b!4298446) bm!295364))

(assert (= (or b!4298450 b!4298446) bm!295372))

(assert (= (or b!4298450 b!4298446) bm!295366))

(assert (= (and d!1266412 res!1761757) b!4298447))

(assert (= (and b!4298447 res!1761759) b!4298454))

(assert (= (and b!4298454 c!731194) b!4298448))

(assert (= (and b!4298454 (not c!731194)) b!4298456))

(assert (= (and b!4298448 res!1761756) b!4298460))

(assert (= (or b!4298460 b!4298456) bm!295373))

(assert (= (or b!4298448 b!4298460 b!4298456) bm!295363))

(assert (= (or b!4298460 b!4298456) bm!295380))

(assert (= (and bm!295380 c!731200) b!4298449))

(assert (= (and bm!295380 (not c!731200)) b!4298443))

(declare-fun m!4890509 () Bool)

(assert (=> bm!295383 m!4890509))

(declare-fun m!4890511 () Bool)

(assert (=> bm!295365 m!4890511))

(declare-fun m!4890513 () Bool)

(assert (=> bm!295358 m!4890513))

(declare-fun m!4890515 () Bool)

(assert (=> b!4298449 m!4890515))

(declare-fun m!4890517 () Bool)

(assert (=> bm!295370 m!4890517))

(declare-fun m!4890519 () Bool)

(assert (=> bm!295377 m!4890519))

(declare-fun m!4890521 () Bool)

(assert (=> bm!295369 m!4890521))

(declare-fun m!4890523 () Bool)

(assert (=> bm!295357 m!4890523))

(declare-fun m!4890525 () Bool)

(assert (=> bm!295385 m!4890525))

(declare-fun m!4890527 () Bool)

(assert (=> b!4298448 m!4890527))

(declare-fun m!4890529 () Bool)

(assert (=> b!4298447 m!4890529))

(declare-fun m!4890531 () Bool)

(assert (=> bm!295359 m!4890531))

(declare-fun m!4890533 () Bool)

(assert (=> bm!295380 m!4890533))

(declare-fun m!4890535 () Bool)

(assert (=> bm!295379 m!4890535))

(declare-fun m!4890537 () Bool)

(assert (=> bm!295367 m!4890537))

(declare-fun m!4890539 () Bool)

(assert (=> bm!295381 m!4890539))

(declare-fun m!4890541 () Bool)

(assert (=> bm!295384 m!4890541))

(declare-fun m!4890543 () Bool)

(assert (=> bm!295376 m!4890543))

(declare-fun m!4890545 () Bool)

(assert (=> bm!295382 m!4890545))

(declare-fun m!4890547 () Bool)

(assert (=> b!4298450 m!4890547))

(declare-fun m!4890549 () Bool)

(assert (=> b!4298450 m!4890549))

(declare-fun m!4890551 () Bool)

(assert (=> b!4298450 m!4890551))

(declare-fun m!4890553 () Bool)

(assert (=> b!4298450 m!4890553))

(declare-fun m!4890555 () Bool)

(assert (=> b!4298450 m!4890555))

(declare-fun m!4890557 () Bool)

(assert (=> bm!295378 m!4890557))

(declare-fun m!4890559 () Bool)

(assert (=> bm!295361 m!4890559))

(declare-fun m!4890561 () Bool)

(assert (=> d!1266412 m!4890561))

(declare-fun m!4890563 () Bool)

(assert (=> d!1266412 m!4890563))

(assert (=> d!1266412 m!4890503))

(assert (=> d!1266412 m!4890491))

(declare-fun m!4890565 () Bool)

(assert (=> bm!295386 m!4890565))

(declare-fun m!4890567 () Bool)

(assert (=> bm!295374 m!4890567))

(declare-fun m!4890569 () Bool)

(assert (=> bm!295363 m!4890569))

(declare-fun m!4890571 () Bool)

(assert (=> bm!295366 m!4890571))

(declare-fun m!4890573 () Bool)

(assert (=> bm!295375 m!4890573))

(declare-fun m!4890575 () Bool)

(assert (=> bm!295360 m!4890575))

(declare-fun m!4890577 () Bool)

(assert (=> b!4298446 m!4890577))

(declare-fun m!4890579 () Bool)

(assert (=> b!4298446 m!4890579))

(declare-fun m!4890581 () Bool)

(assert (=> b!4298446 m!4890581))

(declare-fun m!4890583 () Bool)

(assert (=> b!4298446 m!4890583))

(declare-fun m!4890585 () Bool)

(assert (=> b!4298453 m!4890585))

(declare-fun m!4890587 () Bool)

(assert (=> bm!295362 m!4890587))

(assert (=> bm!295373 m!4890503))

(declare-fun m!4890589 () Bool)

(assert (=> bm!295371 m!4890589))

(declare-fun m!4890591 () Bool)

(assert (=> bm!295372 m!4890591))

(declare-fun m!4890593 () Bool)

(assert (=> bm!295364 m!4890593))

(assert (=> b!4298394 d!1266412))

(declare-fun d!1266414 () Bool)

(declare-fun e!2671619 () Bool)

(assert (=> d!1266414 e!2671619))

(declare-fun res!1761765 () Bool)

(assert (=> d!1266414 (=> (not res!1761765) (not e!2671619))))

(declare-fun lt!1520160 () ListMap!1447)

(assert (=> d!1266414 (= res!1761765 (contains!9826 lt!1520160 (_1!26168 lt!1519981)))))

(declare-fun lt!1520159 () List!48033)

(assert (=> d!1266414 (= lt!1520160 (ListMap!1448 lt!1520159))))

(declare-fun lt!1520162 () Unit!66623)

(declare-fun lt!1520161 () Unit!66623)

(assert (=> d!1266414 (= lt!1520162 lt!1520161)))

(declare-datatypes ((Option!10155 0))(
  ( (None!10154) (Some!10154 (v!41856 V!9206)) )
))
(declare-fun getValueByKey!204 (List!48033 K!9004) Option!10155)

(assert (=> d!1266414 (= (getValueByKey!204 lt!1520159 (_1!26168 lt!1519981)) (Some!10154 (_2!26168 lt!1519981)))))

(declare-fun lemmaContainsTupThenGetReturnValue!35 (List!48033 K!9004 V!9206) Unit!66623)

(assert (=> d!1266414 (= lt!1520161 (lemmaContainsTupThenGetReturnValue!35 lt!1520159 (_1!26168 lt!1519981) (_2!26168 lt!1519981)))))

(declare-fun insertNoDuplicatedKeys!13 (List!48033 K!9004 V!9206) List!48033)

(assert (=> d!1266414 (= lt!1520159 (insertNoDuplicatedKeys!13 (toList!2171 lt!1519984) (_1!26168 lt!1519981) (_2!26168 lt!1519981)))))

(assert (=> d!1266414 (= (+!151 lt!1519984 lt!1519981) lt!1520160)))

(declare-fun b!4298465 () Bool)

(declare-fun res!1761764 () Bool)

(assert (=> b!4298465 (=> (not res!1761764) (not e!2671619))))

(assert (=> b!4298465 (= res!1761764 (= (getValueByKey!204 (toList!2171 lt!1520160) (_1!26168 lt!1519981)) (Some!10154 (_2!26168 lt!1519981))))))

(declare-fun b!4298466 () Bool)

(declare-fun contains!9829 (List!48033 tuple2!45778) Bool)

(assert (=> b!4298466 (= e!2671619 (contains!9829 (toList!2171 lt!1520160) lt!1519981))))

(assert (= (and d!1266414 res!1761765) b!4298465))

(assert (= (and b!4298465 res!1761764) b!4298466))

(declare-fun m!4890595 () Bool)

(assert (=> d!1266414 m!4890595))

(declare-fun m!4890597 () Bool)

(assert (=> d!1266414 m!4890597))

(declare-fun m!4890599 () Bool)

(assert (=> d!1266414 m!4890599))

(declare-fun m!4890601 () Bool)

(assert (=> d!1266414 m!4890601))

(declare-fun m!4890603 () Bool)

(assert (=> b!4298465 m!4890603))

(declare-fun m!4890605 () Bool)

(assert (=> b!4298466 m!4890605))

(assert (=> b!4298394 d!1266414))

(declare-fun d!1266416 () Bool)

(declare-fun res!1761770 () Bool)

(declare-fun e!2671624 () Bool)

(assert (=> d!1266416 (=> res!1761770 e!2671624)))

(assert (=> d!1266416 (= res!1761770 ((_ is Nil!47909) (toList!2171 lt!1519984)))))

(assert (=> d!1266416 (= (forall!8609 (toList!2171 lt!1519984) p!6034) e!2671624)))

(declare-fun b!4298471 () Bool)

(declare-fun e!2671625 () Bool)

(assert (=> b!4298471 (= e!2671624 e!2671625)))

(declare-fun res!1761771 () Bool)

(assert (=> b!4298471 (=> (not res!1761771) (not e!2671625))))

(assert (=> b!4298471 (= res!1761771 (dynLambda!20346 p!6034 (h!53329 (toList!2171 lt!1519984))))))

(declare-fun b!4298472 () Bool)

(assert (=> b!4298472 (= e!2671625 (forall!8609 (t!354688 (toList!2171 lt!1519984)) p!6034))))

(assert (= (and d!1266416 (not res!1761770)) b!4298471))

(assert (= (and b!4298471 res!1761771) b!4298472))

(declare-fun b_lambda!126219 () Bool)

(assert (=> (not b_lambda!126219) (not b!4298471)))

(declare-fun t!354690 () Bool)

(declare-fun tb!257141 () Bool)

(assert (=> (and start!412688 (= p!6034 p!6034) t!354690) tb!257141))

(declare-fun result!314390 () Bool)

(assert (=> tb!257141 (= result!314390 true)))

(assert (=> b!4298471 t!354690))

(declare-fun b_and!339187 () Bool)

(assert (= b_and!339185 (and (=> t!354690 result!314390) b_and!339187)))

(declare-fun m!4890607 () Bool)

(assert (=> b!4298471 m!4890607))

(declare-fun m!4890609 () Bool)

(assert (=> b!4298472 m!4890609))

(assert (=> b!4298395 d!1266416))

(declare-fun d!1266418 () Bool)

(declare-fun lt!1520165 () ListMap!1447)

(declare-fun invariantList!532 (List!48033) Bool)

(assert (=> d!1266418 (invariantList!532 (toList!2171 lt!1520165))))

(assert (=> d!1266418 (= lt!1520165 (extractMap!263 (toList!2172 (map!9868 (v!41854 (underlying!9236 hm!64))))))))

(assert (=> d!1266418 (valid!3481 hm!64)))

(assert (=> d!1266418 (= (map!9867 hm!64) lt!1520165)))

(declare-fun bs!603894 () Bool)

(assert (= bs!603894 d!1266418))

(declare-fun m!4890611 () Bool)

(assert (=> bs!603894 m!4890611))

(assert (=> bs!603894 m!4890563))

(declare-fun m!4890613 () Bool)

(assert (=> bs!603894 m!4890613))

(assert (=> bs!603894 m!4890491))

(assert (=> b!4298395 d!1266418))

(declare-fun d!1266420 () Bool)

(assert (=> d!1266420 (= (array_inv!5153 (_keys!4803 (v!41853 (underlying!9235 (v!41854 (underlying!9236 hm!64)))))) (bvsge (size!35230 (_keys!4803 (v!41853 (underlying!9235 (v!41854 (underlying!9236 hm!64)))))) #b00000000000000000000000000000000))))

(assert (=> b!4298399 d!1266420))

(declare-fun d!1266422 () Bool)

(assert (=> d!1266422 (= (array_inv!5154 (_values!4784 (v!41853 (underlying!9235 (v!41854 (underlying!9236 hm!64)))))) (bvsge (size!35231 (_values!4784 (v!41853 (underlying!9235 (v!41854 (underlying!9236 hm!64)))))) #b00000000000000000000000000000000))))

(assert (=> b!4298399 d!1266422))

(declare-fun bs!603895 () Bool)

(declare-fun b!4298477 () Bool)

(assert (= bs!603895 (and b!4298477 b!4298450)))

(declare-fun lambda!131870 () Int)

(assert (=> bs!603895 (= lambda!131870 lambda!131866)))

(declare-fun bs!603896 () Bool)

(assert (= bs!603896 (and b!4298477 b!4298446)))

(assert (=> bs!603896 (= lambda!131870 lambda!131867)))

(declare-fun d!1266424 () Bool)

(declare-fun res!1761776 () Bool)

(declare-fun e!2671628 () Bool)

(assert (=> d!1266424 (=> (not res!1761776) (not e!2671628))))

(declare-fun valid!3482 (MutLongMap!4503) Bool)

(assert (=> d!1266424 (= res!1761776 (valid!3482 (v!41854 (underlying!9236 hm!64))))))

(assert (=> d!1266424 (= (valid!3481 hm!64) e!2671628)))

(declare-fun res!1761777 () Bool)

(assert (=> b!4298477 (=> (not res!1761777) (not e!2671628))))

(assert (=> b!4298477 (= res!1761777 (forall!8610 (toList!2172 (map!9868 (v!41854 (underlying!9236 hm!64)))) lambda!131870))))

(declare-fun b!4298478 () Bool)

(assert (=> b!4298478 (= e!2671628 (allKeysSameHashInMap!263 (map!9868 (v!41854 (underlying!9236 hm!64))) (hashF!6451 hm!64)))))

(assert (= (and d!1266424 res!1761776) b!4298477))

(assert (= (and b!4298477 res!1761777) b!4298478))

(declare-fun m!4890615 () Bool)

(assert (=> d!1266424 m!4890615))

(assert (=> b!4298477 m!4890563))

(declare-fun m!4890617 () Bool)

(assert (=> b!4298477 m!4890617))

(assert (=> b!4298478 m!4890563))

(assert (=> b!4298478 m!4890563))

(declare-fun m!4890619 () Bool)

(assert (=> b!4298478 m!4890619))

(assert (=> b!4298402 d!1266424))

(declare-fun mapNonEmpty!20232 () Bool)

(declare-fun mapRes!20232 () Bool)

(declare-fun tp!1320538 () Bool)

(declare-fun e!2671633 () Bool)

(assert (=> mapNonEmpty!20232 (= mapRes!20232 (and tp!1320538 e!2671633))))

(declare-fun mapValue!20232 () List!48033)

(declare-fun mapRest!20232 () (Array (_ BitVec 32) List!48033))

(declare-fun mapKey!20232 () (_ BitVec 32))

(assert (=> mapNonEmpty!20232 (= mapRest!20229 (store mapRest!20232 mapKey!20232 mapValue!20232))))

(declare-fun mapIsEmpty!20232 () Bool)

(assert (=> mapIsEmpty!20232 mapRes!20232))

(declare-fun condMapEmpty!20232 () Bool)

(declare-fun mapDefault!20232 () List!48033)

(assert (=> mapNonEmpty!20229 (= condMapEmpty!20232 (= mapRest!20229 ((as const (Array (_ BitVec 32) List!48033)) mapDefault!20232)))))

(declare-fun e!2671634 () Bool)

(assert (=> mapNonEmpty!20229 (= tp!1320522 (and e!2671634 mapRes!20232))))

(declare-fun tp!1320536 () Bool)

(declare-fun b!4298486 () Bool)

(assert (=> b!4298486 (= e!2671634 (and tp_is_empty!23185 tp_is_empty!23187 tp!1320536))))

(declare-fun tp!1320537 () Bool)

(declare-fun b!4298485 () Bool)

(assert (=> b!4298485 (= e!2671633 (and tp_is_empty!23185 tp_is_empty!23187 tp!1320537))))

(assert (= (and mapNonEmpty!20229 condMapEmpty!20232) mapIsEmpty!20232))

(assert (= (and mapNonEmpty!20229 (not condMapEmpty!20232)) mapNonEmpty!20232))

(assert (= (and mapNonEmpty!20232 ((_ is Cons!47909) mapValue!20232)) b!4298485))

(assert (= (and mapNonEmpty!20229 ((_ is Cons!47909) mapDefault!20232)) b!4298486))

(declare-fun m!4890621 () Bool)

(assert (=> mapNonEmpty!20232 m!4890621))

(declare-fun tp!1320541 () Bool)

(declare-fun e!2671637 () Bool)

(declare-fun b!4298491 () Bool)

(assert (=> b!4298491 (= e!2671637 (and tp_is_empty!23185 tp_is_empty!23187 tp!1320541))))

(assert (=> mapNonEmpty!20229 (= tp!1320527 e!2671637)))

(assert (= (and mapNonEmpty!20229 ((_ is Cons!47909) mapValue!20229)) b!4298491))

(declare-fun e!2671638 () Bool)

(declare-fun tp!1320542 () Bool)

(declare-fun b!4298492 () Bool)

(assert (=> b!4298492 (= e!2671638 (and tp_is_empty!23185 tp_is_empty!23187 tp!1320542))))

(assert (=> b!4298403 (= tp!1320526 e!2671638)))

(assert (= (and b!4298403 ((_ is Cons!47909) mapDefault!20229)) b!4298492))

(declare-fun e!2671639 () Bool)

(declare-fun tp!1320543 () Bool)

(declare-fun b!4298493 () Bool)

(assert (=> b!4298493 (= e!2671639 (and tp_is_empty!23185 tp_is_empty!23187 tp!1320543))))

(assert (=> b!4298399 (= tp!1320523 e!2671639)))

(assert (= (and b!4298399 ((_ is Cons!47909) (zeroValue!4762 (v!41853 (underlying!9235 (v!41854 (underlying!9236 hm!64))))))) b!4298493))

(declare-fun tp!1320544 () Bool)

(declare-fun e!2671640 () Bool)

(declare-fun b!4298494 () Bool)

(assert (=> b!4298494 (= e!2671640 (and tp_is_empty!23185 tp_is_empty!23187 tp!1320544))))

(assert (=> b!4298399 (= tp!1320524 e!2671640)))

(assert (= (and b!4298399 ((_ is Cons!47909) (minValue!4762 (v!41853 (underlying!9235 (v!41854 (underlying!9236 hm!64))))))) b!4298494))

(declare-fun b_lambda!126221 () Bool)

(assert (= b_lambda!126219 (or (and start!412688 b_free!127917) b_lambda!126221)))

(check-sat (not bm!295372) (not b_lambda!126221) (not bm!295373) (not b!4298472) tp_is_empty!23187 (not b!4298491) (not bm!295383) (not b!4298478) (not bm!295371) (not b!4298492) (not bm!295358) (not bm!295366) (not b!4298485) (not bm!295361) b_and!339181 tp_is_empty!23185 (not bm!295378) (not bm!295365) (not d!1266412) (not b!4298466) (not b!4298493) b_and!339183 (not d!1266418) (not b!4298453) (not bm!295382) (not bm!295376) (not bm!295386) (not mapNonEmpty!20232) (not bm!295374) (not bm!295359) (not bm!295363) (not bm!295385) (not bm!295367) (not bm!295362) (not b_next!128625) (not b!4298465) (not b!4298450) (not bm!295370) (not b!4298447) (not b!4298448) (not b_lambda!126217) (not bm!295375) (not bm!295384) (not d!1266424) (not b_next!128621) (not bm!295381) b_and!339187 (not b_next!128623) (not b!4298449) (not b!4298446) (not bm!295380) (not bm!295369) (not b!4298494) (not bm!295379) (not bm!295357) (not bm!295377) (not d!1266414) (not bm!295360) (not b!4298486) (not bm!295364) (not b!4298477))
(check-sat b_and!339181 b_and!339183 (not b_next!128625) (not b_next!128623) (not b_next!128621) b_and!339187)
