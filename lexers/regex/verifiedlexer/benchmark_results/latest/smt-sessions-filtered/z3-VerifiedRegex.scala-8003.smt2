; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!414588 () Bool)

(assert start!414588)

(declare-fun b!4312477 () Bool)

(declare-fun b_free!128707 () Bool)

(declare-fun b_next!129411 () Bool)

(assert (=> b!4312477 (= b_free!128707 (not b_next!129411))))

(declare-fun tp!1325173 () Bool)

(declare-fun b_and!340159 () Bool)

(assert (=> b!4312477 (= tp!1325173 b_and!340159)))

(declare-fun b!4312476 () Bool)

(declare-fun b_free!128709 () Bool)

(declare-fun b_next!129413 () Bool)

(assert (=> b!4312476 (= b_free!128709 (not b_next!129413))))

(declare-fun tp!1325175 () Bool)

(declare-fun b_and!340161 () Bool)

(assert (=> b!4312476 (= tp!1325175 b_and!340161)))

(declare-fun mapIsEmpty!20919 () Bool)

(declare-fun mapRes!20919 () Bool)

(assert (=> mapIsEmpty!20919 mapRes!20919))

(declare-fun b!4312475 () Bool)

(declare-fun res!1767432 () Bool)

(declare-fun e!2682286 () Bool)

(assert (=> b!4312475 (=> (not res!1767432) (not e!2682286))))

(declare-datatypes ((V!9666 0))(
  ( (V!9667 (val!15829 Int)) )
))
(declare-datatypes ((K!9464 0))(
  ( (K!9465 (val!15830 Int)) )
))
(declare-datatypes ((tuple2!46782 0))(
  ( (tuple2!46783 (_1!26672 K!9464) (_2!26672 V!9666)) )
))
(declare-datatypes ((List!48367 0))(
  ( (Nil!48243) (Cons!48243 (h!53686 tuple2!46782) (t!355192 List!48367)) )
))
(declare-datatypes ((array!16926 0))(
  ( (array!16927 (arr!7559 (Array (_ BitVec 32) (_ BitVec 64))) (size!35598 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4603 0))(
  ( (HashableExt!4602 (__x!30086 Int)) )
))
(declare-datatypes ((array!16928 0))(
  ( (array!16929 (arr!7560 (Array (_ BitVec 32) List!48367)) (size!35599 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9374 0))(
  ( (LongMapFixedSize!9375 (defaultEntry!5072 Int) (mask!13259 (_ BitVec 32)) (extraKeys!4936 (_ BitVec 32)) (zeroValue!4946 List!48367) (minValue!4946 List!48367) (_size!9417 (_ BitVec 32)) (_keys!4987 array!16926) (_values!4968 array!16928) (_vacant!4748 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18557 0))(
  ( (Cell!18558 (v!42444 LongMapFixedSize!9374)) )
))
(declare-datatypes ((MutLongMap!4687 0))(
  ( (LongMap!4687 (underlying!9603 Cell!18557)) (MutLongMapExt!4686 (__x!30087 Int)) )
))
(declare-datatypes ((Cell!18559 0))(
  ( (Cell!18560 (v!42445 MutLongMap!4687)) )
))
(declare-datatypes ((MutableMap!4593 0))(
  ( (MutableMapExt!4592 (__x!30088 Int)) (HashMap!4593 (underlying!9604 Cell!18559) (hashF!6754 Hashable!4603) (_size!9418 (_ BitVec 32)) (defaultValue!4764 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4593)

(declare-fun valid!3680 (MutableMap!4593) Bool)

(assert (=> b!4312475 (= res!1767432 (valid!3680 thiss!42308))))

(declare-fun e!2682291 () Bool)

(declare-fun e!2682283 () Bool)

(assert (=> b!4312476 (= e!2682291 (and e!2682283 tp!1325175))))

(declare-fun tp!1325174 () Bool)

(declare-fun e!2682282 () Bool)

(declare-fun e!2682290 () Bool)

(declare-fun tp!1325170 () Bool)

(declare-fun array_inv!5429 (array!16926) Bool)

(declare-fun array_inv!5430 (array!16928) Bool)

(assert (=> b!4312477 (= e!2682282 (and tp!1325173 tp!1325170 tp!1325174 (array_inv!5429 (_keys!4987 (v!42444 (underlying!9603 (v!42445 (underlying!9604 thiss!42308)))))) (array_inv!5430 (_values!4968 (v!42444 (underlying!9603 (v!42445 (underlying!9604 thiss!42308)))))) e!2682290))))

(declare-fun mapNonEmpty!20919 () Bool)

(declare-fun tp!1325171 () Bool)

(declare-fun tp!1325172 () Bool)

(assert (=> mapNonEmpty!20919 (= mapRes!20919 (and tp!1325171 tp!1325172))))

(declare-fun mapKey!20919 () (_ BitVec 32))

(declare-fun mapRest!20919 () (Array (_ BitVec 32) List!48367))

(declare-fun mapValue!20919 () List!48367)

(assert (=> mapNonEmpty!20919 (= (arr!7560 (_values!4968 (v!42444 (underlying!9603 (v!42445 (underlying!9604 thiss!42308)))))) (store mapRest!20919 mapKey!20919 mapValue!20919))))

(declare-fun b!4312478 () Bool)

(declare-fun res!1767431 () Bool)

(declare-fun e!2682293 () Bool)

(assert (=> b!4312478 (=> (not res!1767431) (not e!2682293))))

(declare-fun lt!1532478 () List!48367)

(declare-fun key!2048 () K!9464)

(declare-fun containsKey!336 (List!48367 K!9464) Bool)

(assert (=> b!4312478 (= res!1767431 (not (containsKey!336 lt!1532478 key!2048)))))

(declare-fun b!4312479 () Bool)

(declare-fun e!2682284 () Bool)

(declare-fun lt!1532488 () MutLongMap!4687)

(get-info :version)

(assert (=> b!4312479 (= e!2682283 (and e!2682284 ((_ is LongMap!4687) lt!1532488)))))

(assert (=> b!4312479 (= lt!1532488 (v!42445 (underlying!9604 thiss!42308)))))

(declare-fun b!4312480 () Bool)

(declare-fun e!2682288 () Bool)

(declare-datatypes ((tuple2!46784 0))(
  ( (tuple2!46785 (_1!26673 (_ BitVec 64)) (_2!26673 List!48367)) )
))
(declare-datatypes ((List!48368 0))(
  ( (Nil!48244) (Cons!48244 (h!53687 tuple2!46784) (t!355193 List!48368)) )
))
(declare-datatypes ((ListLongMap!1057 0))(
  ( (ListLongMap!1058 (toList!2444 List!48368)) )
))
(declare-fun lt!1532487 () ListLongMap!1057)

(declare-fun allKeysSameHashInMap!349 (ListLongMap!1057 Hashable!4603) Bool)

(assert (=> b!4312480 (= e!2682288 (allKeysSameHashInMap!349 lt!1532487 (hashF!6754 thiss!42308)))))

(declare-fun res!1767434 () Bool)

(assert (=> start!414588 (=> (not res!1767434) (not e!2682286))))

(assert (=> start!414588 (= res!1767434 ((_ is HashMap!4593) thiss!42308))))

(assert (=> start!414588 e!2682286))

(assert (=> start!414588 e!2682291))

(declare-fun tp_is_empty!23853 () Bool)

(assert (=> start!414588 tp_is_empty!23853))

(declare-fun tp_is_empty!23855 () Bool)

(assert (=> start!414588 tp_is_empty!23855))

(declare-fun b!4312481 () Bool)

(declare-fun e!2682285 () Bool)

(assert (=> b!4312481 (= e!2682285 e!2682282)))

(declare-fun b!4312482 () Bool)

(declare-fun e!2682287 () Bool)

(declare-fun e!2682289 () Bool)

(assert (=> b!4312482 (= e!2682287 (not e!2682289))))

(declare-fun res!1767433 () Bool)

(assert (=> b!4312482 (=> res!1767433 e!2682289)))

(declare-fun lt!1532482 () ListLongMap!1057)

(declare-fun lambda!133090 () Int)

(declare-fun forall!8752 (List!48368 Int) Bool)

(assert (=> b!4312482 (= res!1767433 (not (forall!8752 (toList!2444 lt!1532482) lambda!133090)))))

(assert (=> b!4312482 e!2682288))

(declare-fun res!1767435 () Bool)

(assert (=> b!4312482 (=> (not res!1767435) (not e!2682288))))

(assert (=> b!4312482 (= res!1767435 (forall!8752 (toList!2444 lt!1532487) lambda!133090))))

(declare-fun lt!1532479 () (_ BitVec 64))

(declare-fun lt!1532477 () List!48367)

(declare-fun +!280 (ListLongMap!1057 tuple2!46784) ListLongMap!1057)

(assert (=> b!4312482 (= lt!1532487 (+!280 lt!1532482 (tuple2!46785 lt!1532479 lt!1532477)))))

(declare-datatypes ((Unit!67400 0))(
  ( (Unit!67401) )
))
(declare-fun lt!1532483 () Unit!67400)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!152 (ListLongMap!1057 (_ BitVec 64) List!48367 Hashable!4603) Unit!67400)

(assert (=> b!4312482 (= lt!1532483 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!152 lt!1532482 lt!1532479 lt!1532477 (hashF!6754 thiss!42308)))))

(assert (=> b!4312482 e!2682293))

(declare-fun res!1767436 () Bool)

(assert (=> b!4312482 (=> (not res!1767436) (not e!2682293))))

(declare-fun noDuplicateKeys!230 (List!48367) Bool)

(assert (=> b!4312482 (= res!1767436 (noDuplicateKeys!230 lt!1532478))))

(declare-fun lt!1532485 () Unit!67400)

(declare-fun lt!1532484 () List!48367)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!178 (List!48367 K!9464) Unit!67400)

(assert (=> b!4312482 (= lt!1532485 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!178 lt!1532484 key!2048))))

(declare-fun allKeysSameHash!203 (List!48367 (_ BitVec 64) Hashable!4603) Bool)

(assert (=> b!4312482 (allKeysSameHash!203 lt!1532478 lt!1532479 (hashF!6754 thiss!42308))))

(declare-fun lt!1532486 () Unit!67400)

(declare-fun lemmaRemovePairForKeyPreservesHash!183 (List!48367 K!9464 (_ BitVec 64) Hashable!4603) Unit!67400)

(assert (=> b!4312482 (= lt!1532486 (lemmaRemovePairForKeyPreservesHash!183 lt!1532484 key!2048 lt!1532479 (hashF!6754 thiss!42308)))))

(assert (=> b!4312482 (allKeysSameHash!203 lt!1532484 lt!1532479 (hashF!6754 thiss!42308))))

(declare-fun lt!1532480 () Unit!67400)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!190 (List!48368 (_ BitVec 64) List!48367 Hashable!4603) Unit!67400)

(assert (=> b!4312482 (= lt!1532480 (lemmaInLongMapAllKeySameHashThenForTuple!190 (toList!2444 lt!1532482) lt!1532479 lt!1532484 (hashF!6754 thiss!42308)))))

(declare-fun b!4312483 () Bool)

(assert (=> b!4312483 (= e!2682289 (allKeysSameHashInMap!349 lt!1532482 (hashF!6754 thiss!42308)))))

(declare-fun b!4312484 () Bool)

(declare-fun tp!1325176 () Bool)

(assert (=> b!4312484 (= e!2682290 (and tp!1325176 mapRes!20919))))

(declare-fun condMapEmpty!20919 () Bool)

(declare-fun mapDefault!20919 () List!48367)

(assert (=> b!4312484 (= condMapEmpty!20919 (= (arr!7560 (_values!4968 (v!42444 (underlying!9603 (v!42445 (underlying!9604 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48367)) mapDefault!20919)))))

(declare-fun b!4312485 () Bool)

(declare-fun e!2682292 () Bool)

(assert (=> b!4312485 (= e!2682292 e!2682287)))

(declare-fun res!1767437 () Bool)

(assert (=> b!4312485 (=> (not res!1767437) (not e!2682287))))

(declare-datatypes ((tuple2!46786 0))(
  ( (tuple2!46787 (_1!26674 Bool) (_2!26674 MutLongMap!4687)) )
))
(declare-fun update!460 (MutLongMap!4687 (_ BitVec 64) List!48367) tuple2!46786)

(assert (=> b!4312485 (= res!1767437 (_1!26674 (update!460 (v!42445 (underlying!9604 thiss!42308)) lt!1532479 lt!1532477)))))

(declare-fun v!9179 () V!9666)

(assert (=> b!4312485 (= lt!1532477 (Cons!48243 (tuple2!46783 key!2048 v!9179) lt!1532478))))

(declare-fun removePairForKey!228 (List!48367 K!9464) List!48367)

(assert (=> b!4312485 (= lt!1532478 (removePairForKey!228 lt!1532484 key!2048))))

(declare-fun apply!11047 (MutLongMap!4687 (_ BitVec 64)) List!48367)

(assert (=> b!4312485 (= lt!1532484 (apply!11047 (v!42445 (underlying!9604 thiss!42308)) lt!1532479))))

(declare-fun hash!1048 (Hashable!4603 K!9464) (_ BitVec 64))

(assert (=> b!4312485 (= lt!1532479 (hash!1048 (hashF!6754 thiss!42308) key!2048))))

(declare-fun b!4312486 () Bool)

(assert (=> b!4312486 (= e!2682286 e!2682292)))

(declare-fun res!1767438 () Bool)

(assert (=> b!4312486 (=> (not res!1767438) (not e!2682292))))

(declare-fun contains!10226 (MutableMap!4593 K!9464) Bool)

(assert (=> b!4312486 (= res!1767438 (contains!10226 thiss!42308 key!2048))))

(declare-fun map!10247 (MutLongMap!4687) ListLongMap!1057)

(assert (=> b!4312486 (= lt!1532482 (map!10247 (v!42445 (underlying!9604 thiss!42308))))))

(declare-datatypes ((ListMap!1725 0))(
  ( (ListMap!1726 (toList!2445 List!48367)) )
))
(declare-fun lt!1532481 () ListMap!1725)

(declare-fun map!10248 (MutableMap!4593) ListMap!1725)

(assert (=> b!4312486 (= lt!1532481 (map!10248 thiss!42308))))

(declare-fun b!4312487 () Bool)

(assert (=> b!4312487 (= e!2682293 (noDuplicateKeys!230 lt!1532477))))

(declare-fun b!4312488 () Bool)

(assert (=> b!4312488 (= e!2682284 e!2682285)))

(assert (= (and start!414588 res!1767434) b!4312475))

(assert (= (and b!4312475 res!1767432) b!4312486))

(assert (= (and b!4312486 res!1767438) b!4312485))

(assert (= (and b!4312485 res!1767437) b!4312482))

(assert (= (and b!4312482 res!1767436) b!4312478))

(assert (= (and b!4312478 res!1767431) b!4312487))

(assert (= (and b!4312482 res!1767435) b!4312480))

(assert (= (and b!4312482 (not res!1767433)) b!4312483))

(assert (= (and b!4312484 condMapEmpty!20919) mapIsEmpty!20919))

(assert (= (and b!4312484 (not condMapEmpty!20919)) mapNonEmpty!20919))

(assert (= b!4312477 b!4312484))

(assert (= b!4312481 b!4312477))

(assert (= b!4312488 b!4312481))

(assert (= (and b!4312479 ((_ is LongMap!4687) (v!42445 (underlying!9604 thiss!42308)))) b!4312488))

(assert (= b!4312476 b!4312479))

(assert (= (and start!414588 ((_ is HashMap!4593) thiss!42308)) b!4312476))

(declare-fun m!4905489 () Bool)

(assert (=> b!4312478 m!4905489))

(declare-fun m!4905491 () Bool)

(assert (=> b!4312482 m!4905491))

(declare-fun m!4905493 () Bool)

(assert (=> b!4312482 m!4905493))

(declare-fun m!4905495 () Bool)

(assert (=> b!4312482 m!4905495))

(declare-fun m!4905497 () Bool)

(assert (=> b!4312482 m!4905497))

(declare-fun m!4905499 () Bool)

(assert (=> b!4312482 m!4905499))

(declare-fun m!4905501 () Bool)

(assert (=> b!4312482 m!4905501))

(declare-fun m!4905503 () Bool)

(assert (=> b!4312482 m!4905503))

(declare-fun m!4905505 () Bool)

(assert (=> b!4312482 m!4905505))

(declare-fun m!4905507 () Bool)

(assert (=> b!4312482 m!4905507))

(declare-fun m!4905509 () Bool)

(assert (=> b!4312482 m!4905509))

(declare-fun m!4905511 () Bool)

(assert (=> b!4312485 m!4905511))

(declare-fun m!4905513 () Bool)

(assert (=> b!4312485 m!4905513))

(declare-fun m!4905515 () Bool)

(assert (=> b!4312485 m!4905515))

(declare-fun m!4905517 () Bool)

(assert (=> b!4312485 m!4905517))

(declare-fun m!4905519 () Bool)

(assert (=> b!4312486 m!4905519))

(declare-fun m!4905521 () Bool)

(assert (=> b!4312486 m!4905521))

(declare-fun m!4905523 () Bool)

(assert (=> b!4312486 m!4905523))

(declare-fun m!4905525 () Bool)

(assert (=> b!4312487 m!4905525))

(declare-fun m!4905527 () Bool)

(assert (=> b!4312480 m!4905527))

(declare-fun m!4905529 () Bool)

(assert (=> b!4312475 m!4905529))

(declare-fun m!4905531 () Bool)

(assert (=> b!4312477 m!4905531))

(declare-fun m!4905533 () Bool)

(assert (=> b!4312477 m!4905533))

(declare-fun m!4905535 () Bool)

(assert (=> b!4312483 m!4905535))

(declare-fun m!4905537 () Bool)

(assert (=> mapNonEmpty!20919 m!4905537))

(check-sat (not b!4312477) (not b!4312482) b_and!340161 tp_is_empty!23853 (not b!4312484) (not b!4312485) (not b!4312480) (not b!4312483) (not b_next!129411) (not b!4312478) (not b!4312475) tp_is_empty!23855 (not b!4312487) (not b!4312486) b_and!340159 (not mapNonEmpty!20919) (not b_next!129413))
(check-sat b_and!340159 b_and!340161 (not b_next!129413) (not b_next!129411))
(get-model)

(declare-fun bs!605270 () Bool)

(declare-fun b!4312516 () Bool)

(assert (= bs!605270 (and b!4312516 b!4312482)))

(declare-fun lambda!133093 () Int)

(assert (=> bs!605270 (= lambda!133093 lambda!133090)))

(declare-fun b!4312512 () Bool)

(declare-fun e!2682314 () Unit!67400)

(declare-fun Unit!67402 () Unit!67400)

(assert (=> b!4312512 (= e!2682314 Unit!67402)))

(declare-fun b!4312513 () Bool)

(declare-fun e!2682311 () Unit!67400)

(declare-fun Unit!67403 () Unit!67400)

(assert (=> b!4312513 (= e!2682311 Unit!67403)))

(declare-fun bm!298223 () Bool)

(declare-datatypes ((Option!10246 0))(
  ( (None!10245) (Some!10245 (v!42450 tuple2!46782)) )
))
(declare-fun call!298228 () Option!10246)

(declare-fun call!298232 () List!48367)

(declare-fun getPair!141 (List!48367 K!9464) Option!10246)

(assert (=> bm!298223 (= call!298228 (getPair!141 call!298232 key!2048))))

(declare-fun b!4312514 () Bool)

(assert (=> b!4312514 false))

(declare-fun lt!1532541 () Unit!67400)

(declare-fun lt!1532533 () Unit!67400)

(assert (=> b!4312514 (= lt!1532541 lt!1532533)))

(declare-fun lt!1532546 () ListLongMap!1057)

(declare-fun contains!10227 (ListMap!1725 K!9464) Bool)

(declare-fun extractMap!336 (List!48368) ListMap!1725)

(assert (=> b!4312514 (contains!10227 (extractMap!336 (toList!2444 lt!1532546)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!141 (ListLongMap!1057 K!9464 Hashable!4603) Unit!67400)

(assert (=> b!4312514 (= lt!1532533 (lemmaInLongMapThenInGenericMap!141 lt!1532546 key!2048 (hashF!6754 thiss!42308)))))

(declare-fun call!298229 () ListLongMap!1057)

(assert (=> b!4312514 (= lt!1532546 call!298229)))

(declare-fun Unit!67404 () Unit!67400)

(assert (=> b!4312514 (= e!2682311 Unit!67404)))

(declare-fun b!4312515 () Bool)

(declare-fun e!2682309 () Unit!67400)

(assert (=> b!4312515 (= e!2682309 e!2682311)))

(declare-fun res!1767447 () Bool)

(declare-fun call!298231 () Bool)

(assert (=> b!4312515 (= res!1767447 call!298231)))

(declare-fun e!2682310 () Bool)

(assert (=> b!4312515 (=> (not res!1767447) (not e!2682310))))

(declare-fun c!733183 () Bool)

(assert (=> b!4312515 (= c!733183 e!2682310)))

(declare-fun bm!298224 () Bool)

(declare-fun c!733184 () Bool)

(declare-fun call!298230 () (_ BitVec 64))

(declare-fun lt!1532547 () ListLongMap!1057)

(declare-fun apply!11048 (ListLongMap!1057 (_ BitVec 64)) List!48367)

(assert (=> bm!298224 (= call!298232 (apply!11048 (ite c!733184 lt!1532547 call!298229) call!298230))))

(declare-fun lt!1532540 () (_ BitVec 64))

(declare-fun e!2682308 () Unit!67400)

(declare-fun forallContained!1508 (List!48368 Int tuple2!46784) Unit!67400)

(assert (=> b!4312516 (= e!2682308 (forallContained!1508 (toList!2444 (map!10247 (v!42445 (underlying!9604 thiss!42308)))) lambda!133093 (tuple2!46785 lt!1532540 (apply!11047 (v!42445 (underlying!9604 thiss!42308)) lt!1532540))))))

(declare-fun c!733185 () Bool)

(declare-fun contains!10228 (List!48368 tuple2!46784) Bool)

(assert (=> b!4312516 (= c!733185 (not (contains!10228 (toList!2444 (map!10247 (v!42445 (underlying!9604 thiss!42308)))) (tuple2!46785 lt!1532540 (apply!11047 (v!42445 (underlying!9604 thiss!42308)) lt!1532540)))))))

(declare-fun lt!1532530 () Unit!67400)

(assert (=> b!4312516 (= lt!1532530 e!2682314)))

(declare-fun bm!298225 () Bool)

(assert (=> bm!298225 (= call!298229 (map!10247 (v!42445 (underlying!9604 thiss!42308))))))

(declare-fun b!4312511 () Bool)

(declare-fun Unit!67405 () Unit!67400)

(assert (=> b!4312511 (= e!2682308 Unit!67405)))

(declare-fun d!1268478 () Bool)

(declare-fun lt!1532538 () Bool)

(assert (=> d!1268478 (= lt!1532538 (contains!10227 (map!10248 thiss!42308) key!2048))))

(declare-fun e!2682313 () Bool)

(assert (=> d!1268478 (= lt!1532538 e!2682313)))

(declare-fun res!1767445 () Bool)

(assert (=> d!1268478 (=> (not res!1767445) (not e!2682313))))

(declare-fun contains!10229 (MutLongMap!4687 (_ BitVec 64)) Bool)

(assert (=> d!1268478 (= res!1767445 (contains!10229 (v!42445 (underlying!9604 thiss!42308)) lt!1532540))))

(declare-fun lt!1532543 () Unit!67400)

(assert (=> d!1268478 (= lt!1532543 e!2682309)))

(assert (=> d!1268478 (= c!733184 (contains!10227 (extractMap!336 (toList!2444 (map!10247 (v!42445 (underlying!9604 thiss!42308))))) key!2048))))

(declare-fun lt!1532545 () Unit!67400)

(assert (=> d!1268478 (= lt!1532545 e!2682308)))

(declare-fun c!733182 () Bool)

(assert (=> d!1268478 (= c!733182 (contains!10229 (v!42445 (underlying!9604 thiss!42308)) lt!1532540))))

(assert (=> d!1268478 (= lt!1532540 (hash!1048 (hashF!6754 thiss!42308) key!2048))))

(assert (=> d!1268478 (valid!3680 thiss!42308)))

(assert (=> d!1268478 (= (contains!10226 thiss!42308 key!2048) lt!1532538)))

(declare-fun bm!298226 () Bool)

(declare-fun contains!10230 (ListLongMap!1057 (_ BitVec 64)) Bool)

(assert (=> bm!298226 (= call!298231 (contains!10230 (ite c!733184 lt!1532547 call!298229) call!298230))))

(declare-fun b!4312517 () Bool)

(declare-fun isDefined!7548 (Option!10246) Bool)

(assert (=> b!4312517 (= e!2682313 (isDefined!7548 (getPair!141 (apply!11047 (v!42445 (underlying!9604 thiss!42308)) lt!1532540) key!2048)))))

(declare-fun bm!298227 () Bool)

(declare-fun call!298233 () Bool)

(assert (=> bm!298227 (= call!298233 (isDefined!7548 call!298228))))

(declare-fun b!4312518 () Bool)

(assert (=> b!4312518 false))

(declare-fun lt!1532536 () Unit!67400)

(declare-fun lt!1532537 () Unit!67400)

(assert (=> b!4312518 (= lt!1532536 lt!1532537)))

(declare-fun lt!1532532 () List!48368)

(declare-fun lt!1532542 () List!48367)

(assert (=> b!4312518 (contains!10228 lt!1532532 (tuple2!46785 lt!1532540 lt!1532542))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!152 (List!48368 (_ BitVec 64) List!48367) Unit!67400)

(assert (=> b!4312518 (= lt!1532537 (lemmaGetValueByKeyImpliesContainsTuple!152 lt!1532532 lt!1532540 lt!1532542))))

(assert (=> b!4312518 (= lt!1532542 (apply!11047 (v!42445 (underlying!9604 thiss!42308)) lt!1532540))))

(assert (=> b!4312518 (= lt!1532532 (toList!2444 (map!10247 (v!42445 (underlying!9604 thiss!42308)))))))

(declare-fun lt!1532539 () Unit!67400)

(declare-fun lt!1532544 () Unit!67400)

(assert (=> b!4312518 (= lt!1532539 lt!1532544)))

(declare-fun lt!1532531 () List!48368)

(declare-datatypes ((Option!10247 0))(
  ( (None!10246) (Some!10246 (v!42451 List!48367)) )
))
(declare-fun isDefined!7549 (Option!10247) Bool)

(declare-fun getValueByKey!264 (List!48368 (_ BitVec 64)) Option!10247)

(assert (=> b!4312518 (isDefined!7549 (getValueByKey!264 lt!1532531 lt!1532540))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!184 (List!48368 (_ BitVec 64)) Unit!67400)

(assert (=> b!4312518 (= lt!1532544 (lemmaContainsKeyImpliesGetValueByKeyDefined!184 lt!1532531 lt!1532540))))

(assert (=> b!4312518 (= lt!1532531 (toList!2444 (map!10247 (v!42445 (underlying!9604 thiss!42308)))))))

(declare-fun lt!1532529 () Unit!67400)

(declare-fun lt!1532534 () Unit!67400)

(assert (=> b!4312518 (= lt!1532529 lt!1532534)))

(declare-fun lt!1532535 () List!48368)

(declare-fun containsKey!337 (List!48368 (_ BitVec 64)) Bool)

(assert (=> b!4312518 (containsKey!337 lt!1532535 lt!1532540)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!142 (List!48368 (_ BitVec 64)) Unit!67400)

(assert (=> b!4312518 (= lt!1532534 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!142 lt!1532535 lt!1532540))))

(assert (=> b!4312518 (= lt!1532535 (toList!2444 (map!10247 (v!42445 (underlying!9604 thiss!42308)))))))

(declare-fun Unit!67406 () Unit!67400)

(assert (=> b!4312518 (= e!2682314 Unit!67406)))

(declare-fun b!4312519 () Bool)

(declare-fun lt!1532548 () Unit!67400)

(assert (=> b!4312519 (= e!2682309 lt!1532548)))

(assert (=> b!4312519 (= lt!1532547 call!298229)))

(declare-fun lemmaInGenericMapThenInLongMap!141 (ListLongMap!1057 K!9464 Hashable!4603) Unit!67400)

(assert (=> b!4312519 (= lt!1532548 (lemmaInGenericMapThenInLongMap!141 lt!1532547 key!2048 (hashF!6754 thiss!42308)))))

(declare-fun res!1767446 () Bool)

(assert (=> b!4312519 (= res!1767446 call!298231)))

(declare-fun e!2682312 () Bool)

(assert (=> b!4312519 (=> (not res!1767446) (not e!2682312))))

(assert (=> b!4312519 e!2682312))

(declare-fun b!4312520 () Bool)

(assert (=> b!4312520 (= e!2682312 call!298233)))

(declare-fun bm!298228 () Bool)

(assert (=> bm!298228 (= call!298230 (hash!1048 (hashF!6754 thiss!42308) key!2048))))

(declare-fun b!4312521 () Bool)

(assert (=> b!4312521 (= e!2682310 call!298233)))

(assert (= (and d!1268478 c!733182) b!4312516))

(assert (= (and d!1268478 (not c!733182)) b!4312511))

(assert (= (and b!4312516 c!733185) b!4312518))

(assert (= (and b!4312516 (not c!733185)) b!4312512))

(assert (= (and d!1268478 c!733184) b!4312519))

(assert (= (and d!1268478 (not c!733184)) b!4312515))

(assert (= (and b!4312519 res!1767446) b!4312520))

(assert (= (and b!4312515 res!1767447) b!4312521))

(assert (= (and b!4312515 c!733183) b!4312514))

(assert (= (and b!4312515 (not c!733183)) b!4312513))

(assert (= (or b!4312519 b!4312520 b!4312515 b!4312521) bm!298228))

(assert (= (or b!4312519 b!4312515 b!4312521 b!4312514) bm!298225))

(assert (= (or b!4312519 b!4312515) bm!298226))

(assert (= (or b!4312520 b!4312521) bm!298224))

(assert (= (or b!4312520 b!4312521) bm!298223))

(assert (= (or b!4312520 b!4312521) bm!298227))

(assert (= (and d!1268478 res!1767445) b!4312517))

(declare-fun m!4905539 () Bool)

(assert (=> bm!298226 m!4905539))

(assert (=> bm!298228 m!4905517))

(assert (=> bm!298225 m!4905521))

(declare-fun m!4905541 () Bool)

(assert (=> bm!298224 m!4905541))

(declare-fun m!4905543 () Bool)

(assert (=> b!4312519 m!4905543))

(assert (=> b!4312516 m!4905521))

(declare-fun m!4905545 () Bool)

(assert (=> b!4312516 m!4905545))

(declare-fun m!4905547 () Bool)

(assert (=> b!4312516 m!4905547))

(declare-fun m!4905549 () Bool)

(assert (=> b!4312516 m!4905549))

(assert (=> b!4312517 m!4905545))

(assert (=> b!4312517 m!4905545))

(declare-fun m!4905551 () Bool)

(assert (=> b!4312517 m!4905551))

(assert (=> b!4312517 m!4905551))

(declare-fun m!4905553 () Bool)

(assert (=> b!4312517 m!4905553))

(assert (=> d!1268478 m!4905523))

(assert (=> d!1268478 m!4905517))

(assert (=> d!1268478 m!4905521))

(assert (=> d!1268478 m!4905529))

(assert (=> d!1268478 m!4905523))

(declare-fun m!4905555 () Bool)

(assert (=> d!1268478 m!4905555))

(declare-fun m!4905557 () Bool)

(assert (=> d!1268478 m!4905557))

(declare-fun m!4905559 () Bool)

(assert (=> d!1268478 m!4905559))

(declare-fun m!4905561 () Bool)

(assert (=> d!1268478 m!4905561))

(assert (=> d!1268478 m!4905557))

(declare-fun m!4905563 () Bool)

(assert (=> bm!298227 m!4905563))

(declare-fun m!4905565 () Bool)

(assert (=> b!4312518 m!4905565))

(assert (=> b!4312518 m!4905521))

(declare-fun m!4905567 () Bool)

(assert (=> b!4312518 m!4905567))

(assert (=> b!4312518 m!4905565))

(declare-fun m!4905569 () Bool)

(assert (=> b!4312518 m!4905569))

(declare-fun m!4905571 () Bool)

(assert (=> b!4312518 m!4905571))

(assert (=> b!4312518 m!4905545))

(declare-fun m!4905573 () Bool)

(assert (=> b!4312518 m!4905573))

(declare-fun m!4905575 () Bool)

(assert (=> b!4312518 m!4905575))

(declare-fun m!4905577 () Bool)

(assert (=> b!4312518 m!4905577))

(declare-fun m!4905579 () Bool)

(assert (=> bm!298223 m!4905579))

(declare-fun m!4905581 () Bool)

(assert (=> b!4312514 m!4905581))

(assert (=> b!4312514 m!4905581))

(declare-fun m!4905583 () Bool)

(assert (=> b!4312514 m!4905583))

(declare-fun m!4905585 () Bool)

(assert (=> b!4312514 m!4905585))

(assert (=> b!4312486 d!1268478))

(declare-fun d!1268480 () Bool)

(declare-fun map!10249 (LongMapFixedSize!9374) ListLongMap!1057)

(assert (=> d!1268480 (= (map!10247 (v!42445 (underlying!9604 thiss!42308))) (map!10249 (v!42444 (underlying!9603 (v!42445 (underlying!9604 thiss!42308))))))))

(declare-fun bs!605271 () Bool)

(assert (= bs!605271 d!1268480))

(declare-fun m!4905587 () Bool)

(assert (=> bs!605271 m!4905587))

(assert (=> b!4312486 d!1268480))

(declare-fun d!1268482 () Bool)

(declare-fun lt!1532551 () ListMap!1725)

(declare-fun invariantList!580 (List!48367) Bool)

(assert (=> d!1268482 (invariantList!580 (toList!2445 lt!1532551))))

(assert (=> d!1268482 (= lt!1532551 (extractMap!336 (toList!2444 (map!10247 (v!42445 (underlying!9604 thiss!42308))))))))

(assert (=> d!1268482 (valid!3680 thiss!42308)))

(assert (=> d!1268482 (= (map!10248 thiss!42308) lt!1532551)))

(declare-fun bs!605272 () Bool)

(assert (= bs!605272 d!1268482))

(declare-fun m!4905589 () Bool)

(assert (=> bs!605272 m!4905589))

(assert (=> bs!605272 m!4905521))

(assert (=> bs!605272 m!4905557))

(assert (=> bs!605272 m!4905529))

(assert (=> b!4312486 d!1268482))

(declare-fun bs!605273 () Bool)

(declare-fun d!1268484 () Bool)

(assert (= bs!605273 (and d!1268484 b!4312482)))

(declare-fun lambda!133096 () Int)

(assert (=> bs!605273 (not (= lambda!133096 lambda!133090))))

(declare-fun bs!605274 () Bool)

(assert (= bs!605274 (and d!1268484 b!4312516)))

(assert (=> bs!605274 (not (= lambda!133096 lambda!133093))))

(assert (=> d!1268484 true))

(assert (=> d!1268484 (= (allKeysSameHashInMap!349 lt!1532487 (hashF!6754 thiss!42308)) (forall!8752 (toList!2444 lt!1532487) lambda!133096))))

(declare-fun bs!605275 () Bool)

(assert (= bs!605275 d!1268484))

(declare-fun m!4905591 () Bool)

(assert (=> bs!605275 m!4905591))

(assert (=> b!4312480 d!1268484))

(declare-fun d!1268486 () Bool)

(assert (=> d!1268486 (noDuplicateKeys!230 (removePairForKey!228 lt!1532484 key!2048))))

(declare-fun lt!1532554 () Unit!67400)

(declare-fun choose!26284 (List!48367 K!9464) Unit!67400)

(assert (=> d!1268486 (= lt!1532554 (choose!26284 lt!1532484 key!2048))))

(assert (=> d!1268486 (noDuplicateKeys!230 lt!1532484)))

(assert (=> d!1268486 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!178 lt!1532484 key!2048) lt!1532554)))

(declare-fun bs!605276 () Bool)

(assert (= bs!605276 d!1268486))

(assert (=> bs!605276 m!4905513))

(assert (=> bs!605276 m!4905513))

(declare-fun m!4905593 () Bool)

(assert (=> bs!605276 m!4905593))

(declare-fun m!4905595 () Bool)

(assert (=> bs!605276 m!4905595))

(declare-fun m!4905597 () Bool)

(assert (=> bs!605276 m!4905597))

(assert (=> b!4312482 d!1268486))

(declare-fun d!1268488 () Bool)

(declare-fun res!1767452 () Bool)

(declare-fun e!2682319 () Bool)

(assert (=> d!1268488 (=> res!1767452 e!2682319)))

(assert (=> d!1268488 (= res!1767452 ((_ is Nil!48244) (toList!2444 lt!1532482)))))

(assert (=> d!1268488 (= (forall!8752 (toList!2444 lt!1532482) lambda!133090) e!2682319)))

(declare-fun b!4312528 () Bool)

(declare-fun e!2682320 () Bool)

(assert (=> b!4312528 (= e!2682319 e!2682320)))

(declare-fun res!1767453 () Bool)

(assert (=> b!4312528 (=> (not res!1767453) (not e!2682320))))

(declare-fun dynLambda!20451 (Int tuple2!46784) Bool)

(assert (=> b!4312528 (= res!1767453 (dynLambda!20451 lambda!133090 (h!53687 (toList!2444 lt!1532482))))))

(declare-fun b!4312529 () Bool)

(assert (=> b!4312529 (= e!2682320 (forall!8752 (t!355193 (toList!2444 lt!1532482)) lambda!133090))))

(assert (= (and d!1268488 (not res!1767452)) b!4312528))

(assert (= (and b!4312528 res!1767453) b!4312529))

(declare-fun b_lambda!126731 () Bool)

(assert (=> (not b_lambda!126731) (not b!4312528)))

(declare-fun m!4905599 () Bool)

(assert (=> b!4312528 m!4905599))

(declare-fun m!4905601 () Bool)

(assert (=> b!4312529 m!4905601))

(assert (=> b!4312482 d!1268488))

(declare-fun d!1268490 () Bool)

(declare-fun res!1767458 () Bool)

(declare-fun e!2682325 () Bool)

(assert (=> d!1268490 (=> res!1767458 e!2682325)))

(assert (=> d!1268490 (= res!1767458 (not ((_ is Cons!48243) lt!1532478)))))

(assert (=> d!1268490 (= (noDuplicateKeys!230 lt!1532478) e!2682325)))

(declare-fun b!4312534 () Bool)

(declare-fun e!2682326 () Bool)

(assert (=> b!4312534 (= e!2682325 e!2682326)))

(declare-fun res!1767459 () Bool)

(assert (=> b!4312534 (=> (not res!1767459) (not e!2682326))))

(assert (=> b!4312534 (= res!1767459 (not (containsKey!336 (t!355192 lt!1532478) (_1!26672 (h!53686 lt!1532478)))))))

(declare-fun b!4312535 () Bool)

(assert (=> b!4312535 (= e!2682326 (noDuplicateKeys!230 (t!355192 lt!1532478)))))

(assert (= (and d!1268490 (not res!1767458)) b!4312534))

(assert (= (and b!4312534 res!1767459) b!4312535))

(declare-fun m!4905603 () Bool)

(assert (=> b!4312534 m!4905603))

(declare-fun m!4905605 () Bool)

(assert (=> b!4312535 m!4905605))

(assert (=> b!4312482 d!1268490))

(declare-fun d!1268492 () Bool)

(assert (=> d!1268492 (allKeysSameHash!203 (removePairForKey!228 lt!1532484 key!2048) lt!1532479 (hashF!6754 thiss!42308))))

(declare-fun lt!1532557 () Unit!67400)

(declare-fun choose!26285 (List!48367 K!9464 (_ BitVec 64) Hashable!4603) Unit!67400)

(assert (=> d!1268492 (= lt!1532557 (choose!26285 lt!1532484 key!2048 lt!1532479 (hashF!6754 thiss!42308)))))

(assert (=> d!1268492 (noDuplicateKeys!230 lt!1532484)))

(assert (=> d!1268492 (= (lemmaRemovePairForKeyPreservesHash!183 lt!1532484 key!2048 lt!1532479 (hashF!6754 thiss!42308)) lt!1532557)))

(declare-fun bs!605277 () Bool)

(assert (= bs!605277 d!1268492))

(assert (=> bs!605277 m!4905513))

(assert (=> bs!605277 m!4905513))

(declare-fun m!4905607 () Bool)

(assert (=> bs!605277 m!4905607))

(declare-fun m!4905609 () Bool)

(assert (=> bs!605277 m!4905609))

(assert (=> bs!605277 m!4905597))

(assert (=> b!4312482 d!1268492))

(declare-fun bs!605278 () Bool)

(declare-fun d!1268494 () Bool)

(assert (= bs!605278 (and d!1268494 b!4312482)))

(declare-fun lambda!133101 () Int)

(assert (=> bs!605278 (= lambda!133101 lambda!133090)))

(declare-fun bs!605279 () Bool)

(assert (= bs!605279 (and d!1268494 b!4312516)))

(assert (=> bs!605279 (= lambda!133101 lambda!133093)))

(declare-fun bs!605280 () Bool)

(assert (= bs!605280 (and d!1268494 d!1268484)))

(assert (=> bs!605280 (not (= lambda!133101 lambda!133096))))

(declare-fun e!2682329 () Bool)

(assert (=> d!1268494 e!2682329))

(declare-fun res!1767462 () Bool)

(assert (=> d!1268494 (=> (not res!1767462) (not e!2682329))))

(declare-fun lt!1532563 () ListLongMap!1057)

(assert (=> d!1268494 (= res!1767462 (forall!8752 (toList!2444 lt!1532563) lambda!133101))))

(assert (=> d!1268494 (= lt!1532563 (+!280 lt!1532482 (tuple2!46785 lt!1532479 lt!1532477)))))

(declare-fun lt!1532562 () Unit!67400)

(declare-fun choose!26286 (ListLongMap!1057 (_ BitVec 64) List!48367 Hashable!4603) Unit!67400)

(assert (=> d!1268494 (= lt!1532562 (choose!26286 lt!1532482 lt!1532479 lt!1532477 (hashF!6754 thiss!42308)))))

(assert (=> d!1268494 (forall!8752 (toList!2444 lt!1532482) lambda!133101)))

(assert (=> d!1268494 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!152 lt!1532482 lt!1532479 lt!1532477 (hashF!6754 thiss!42308)) lt!1532562)))

(declare-fun b!4312538 () Bool)

(assert (=> b!4312538 (= e!2682329 (allKeysSameHashInMap!349 lt!1532563 (hashF!6754 thiss!42308)))))

(assert (= (and d!1268494 res!1767462) b!4312538))

(declare-fun m!4905611 () Bool)

(assert (=> d!1268494 m!4905611))

(assert (=> d!1268494 m!4905499))

(declare-fun m!4905613 () Bool)

(assert (=> d!1268494 m!4905613))

(declare-fun m!4905615 () Bool)

(assert (=> d!1268494 m!4905615))

(declare-fun m!4905617 () Bool)

(assert (=> b!4312538 m!4905617))

(assert (=> b!4312482 d!1268494))

(declare-fun d!1268496 () Bool)

(declare-fun e!2682332 () Bool)

(assert (=> d!1268496 e!2682332))

(declare-fun res!1767467 () Bool)

(assert (=> d!1268496 (=> (not res!1767467) (not e!2682332))))

(declare-fun lt!1532573 () ListLongMap!1057)

(assert (=> d!1268496 (= res!1767467 (contains!10230 lt!1532573 (_1!26673 (tuple2!46785 lt!1532479 lt!1532477))))))

(declare-fun lt!1532575 () List!48368)

(assert (=> d!1268496 (= lt!1532573 (ListLongMap!1058 lt!1532575))))

(declare-fun lt!1532574 () Unit!67400)

(declare-fun lt!1532572 () Unit!67400)

(assert (=> d!1268496 (= lt!1532574 lt!1532572)))

(assert (=> d!1268496 (= (getValueByKey!264 lt!1532575 (_1!26673 (tuple2!46785 lt!1532479 lt!1532477))) (Some!10246 (_2!26673 (tuple2!46785 lt!1532479 lt!1532477))))))

(declare-fun lemmaContainsTupThenGetReturnValue!77 (List!48368 (_ BitVec 64) List!48367) Unit!67400)

(assert (=> d!1268496 (= lt!1532572 (lemmaContainsTupThenGetReturnValue!77 lt!1532575 (_1!26673 (tuple2!46785 lt!1532479 lt!1532477)) (_2!26673 (tuple2!46785 lt!1532479 lt!1532477))))))

(declare-fun insertStrictlySorted!41 (List!48368 (_ BitVec 64) List!48367) List!48368)

(assert (=> d!1268496 (= lt!1532575 (insertStrictlySorted!41 (toList!2444 lt!1532482) (_1!26673 (tuple2!46785 lt!1532479 lt!1532477)) (_2!26673 (tuple2!46785 lt!1532479 lt!1532477))))))

(assert (=> d!1268496 (= (+!280 lt!1532482 (tuple2!46785 lt!1532479 lt!1532477)) lt!1532573)))

(declare-fun b!4312543 () Bool)

(declare-fun res!1767468 () Bool)

(assert (=> b!4312543 (=> (not res!1767468) (not e!2682332))))

(assert (=> b!4312543 (= res!1767468 (= (getValueByKey!264 (toList!2444 lt!1532573) (_1!26673 (tuple2!46785 lt!1532479 lt!1532477))) (Some!10246 (_2!26673 (tuple2!46785 lt!1532479 lt!1532477)))))))

(declare-fun b!4312544 () Bool)

(assert (=> b!4312544 (= e!2682332 (contains!10228 (toList!2444 lt!1532573) (tuple2!46785 lt!1532479 lt!1532477)))))

(assert (= (and d!1268496 res!1767467) b!4312543))

(assert (= (and b!4312543 res!1767468) b!4312544))

(declare-fun m!4905619 () Bool)

(assert (=> d!1268496 m!4905619))

(declare-fun m!4905621 () Bool)

(assert (=> d!1268496 m!4905621))

(declare-fun m!4905623 () Bool)

(assert (=> d!1268496 m!4905623))

(declare-fun m!4905625 () Bool)

(assert (=> d!1268496 m!4905625))

(declare-fun m!4905627 () Bool)

(assert (=> b!4312543 m!4905627))

(declare-fun m!4905629 () Bool)

(assert (=> b!4312544 m!4905629))

(assert (=> b!4312482 d!1268496))

(declare-fun bs!605281 () Bool)

(declare-fun d!1268498 () Bool)

(assert (= bs!605281 (and d!1268498 b!4312482)))

(declare-fun lambda!133104 () Int)

(assert (=> bs!605281 (not (= lambda!133104 lambda!133090))))

(declare-fun bs!605282 () Bool)

(assert (= bs!605282 (and d!1268498 b!4312516)))

(assert (=> bs!605282 (not (= lambda!133104 lambda!133093))))

(declare-fun bs!605283 () Bool)

(assert (= bs!605283 (and d!1268498 d!1268484)))

(assert (=> bs!605283 (= lambda!133104 lambda!133096)))

(declare-fun bs!605284 () Bool)

(assert (= bs!605284 (and d!1268498 d!1268494)))

(assert (=> bs!605284 (not (= lambda!133104 lambda!133101))))

(assert (=> d!1268498 true))

(assert (=> d!1268498 (allKeysSameHash!203 lt!1532484 lt!1532479 (hashF!6754 thiss!42308))))

(declare-fun lt!1532578 () Unit!67400)

(declare-fun choose!26287 (List!48368 (_ BitVec 64) List!48367 Hashable!4603) Unit!67400)

(assert (=> d!1268498 (= lt!1532578 (choose!26287 (toList!2444 lt!1532482) lt!1532479 lt!1532484 (hashF!6754 thiss!42308)))))

(assert (=> d!1268498 (forall!8752 (toList!2444 lt!1532482) lambda!133104)))

(assert (=> d!1268498 (= (lemmaInLongMapAllKeySameHashThenForTuple!190 (toList!2444 lt!1532482) lt!1532479 lt!1532484 (hashF!6754 thiss!42308)) lt!1532578)))

(declare-fun bs!605285 () Bool)

(assert (= bs!605285 d!1268498))

(assert (=> bs!605285 m!4905505))

(declare-fun m!4905631 () Bool)

(assert (=> bs!605285 m!4905631))

(declare-fun m!4905633 () Bool)

(assert (=> bs!605285 m!4905633))

(assert (=> b!4312482 d!1268498))

(declare-fun d!1268500 () Bool)

(assert (=> d!1268500 true))

(assert (=> d!1268500 true))

(declare-fun lambda!133107 () Int)

(declare-fun forall!8753 (List!48367 Int) Bool)

(assert (=> d!1268500 (= (allKeysSameHash!203 lt!1532478 lt!1532479 (hashF!6754 thiss!42308)) (forall!8753 lt!1532478 lambda!133107))))

(declare-fun bs!605286 () Bool)

(assert (= bs!605286 d!1268500))

(declare-fun m!4905635 () Bool)

(assert (=> bs!605286 m!4905635))

(assert (=> b!4312482 d!1268500))

(declare-fun d!1268502 () Bool)

(declare-fun res!1767469 () Bool)

(declare-fun e!2682333 () Bool)

(assert (=> d!1268502 (=> res!1767469 e!2682333)))

(assert (=> d!1268502 (= res!1767469 ((_ is Nil!48244) (toList!2444 lt!1532487)))))

(assert (=> d!1268502 (= (forall!8752 (toList!2444 lt!1532487) lambda!133090) e!2682333)))

(declare-fun b!4312549 () Bool)

(declare-fun e!2682334 () Bool)

(assert (=> b!4312549 (= e!2682333 e!2682334)))

(declare-fun res!1767470 () Bool)

(assert (=> b!4312549 (=> (not res!1767470) (not e!2682334))))

(assert (=> b!4312549 (= res!1767470 (dynLambda!20451 lambda!133090 (h!53687 (toList!2444 lt!1532487))))))

(declare-fun b!4312550 () Bool)

(assert (=> b!4312550 (= e!2682334 (forall!8752 (t!355193 (toList!2444 lt!1532487)) lambda!133090))))

(assert (= (and d!1268502 (not res!1767469)) b!4312549))

(assert (= (and b!4312549 res!1767470) b!4312550))

(declare-fun b_lambda!126733 () Bool)

(assert (=> (not b_lambda!126733) (not b!4312549)))

(declare-fun m!4905637 () Bool)

(assert (=> b!4312549 m!4905637))

(declare-fun m!4905639 () Bool)

(assert (=> b!4312550 m!4905639))

(assert (=> b!4312482 d!1268502))

(declare-fun bs!605287 () Bool)

(declare-fun d!1268504 () Bool)

(assert (= bs!605287 (and d!1268504 d!1268500)))

(declare-fun lambda!133108 () Int)

(assert (=> bs!605287 (= lambda!133108 lambda!133107)))

(assert (=> d!1268504 true))

(assert (=> d!1268504 true))

(assert (=> d!1268504 (= (allKeysSameHash!203 lt!1532484 lt!1532479 (hashF!6754 thiss!42308)) (forall!8753 lt!1532484 lambda!133108))))

(declare-fun bs!605288 () Bool)

(assert (= bs!605288 d!1268504))

(declare-fun m!4905641 () Bool)

(assert (=> bs!605288 m!4905641))

(assert (=> b!4312482 d!1268504))

(declare-fun d!1268506 () Bool)

(assert (=> d!1268506 (= (array_inv!5429 (_keys!4987 (v!42444 (underlying!9603 (v!42445 (underlying!9604 thiss!42308)))))) (bvsge (size!35598 (_keys!4987 (v!42444 (underlying!9603 (v!42445 (underlying!9604 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4312477 d!1268506))

(declare-fun d!1268508 () Bool)

(assert (=> d!1268508 (= (array_inv!5430 (_values!4968 (v!42444 (underlying!9603 (v!42445 (underlying!9604 thiss!42308)))))) (bvsge (size!35599 (_values!4968 (v!42444 (underlying!9603 (v!42445 (underlying!9604 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4312477 d!1268508))

(declare-fun d!1268510 () Bool)

(declare-fun res!1767471 () Bool)

(declare-fun e!2682335 () Bool)

(assert (=> d!1268510 (=> res!1767471 e!2682335)))

(assert (=> d!1268510 (= res!1767471 (not ((_ is Cons!48243) lt!1532477)))))

(assert (=> d!1268510 (= (noDuplicateKeys!230 lt!1532477) e!2682335)))

(declare-fun b!4312551 () Bool)

(declare-fun e!2682336 () Bool)

(assert (=> b!4312551 (= e!2682335 e!2682336)))

(declare-fun res!1767472 () Bool)

(assert (=> b!4312551 (=> (not res!1767472) (not e!2682336))))

(assert (=> b!4312551 (= res!1767472 (not (containsKey!336 (t!355192 lt!1532477) (_1!26672 (h!53686 lt!1532477)))))))

(declare-fun b!4312552 () Bool)

(assert (=> b!4312552 (= e!2682336 (noDuplicateKeys!230 (t!355192 lt!1532477)))))

(assert (= (and d!1268510 (not res!1767471)) b!4312551))

(assert (= (and b!4312551 res!1767472) b!4312552))

(declare-fun m!4905643 () Bool)

(assert (=> b!4312551 m!4905643))

(declare-fun m!4905645 () Bool)

(assert (=> b!4312552 m!4905645))

(assert (=> b!4312487 d!1268510))

(declare-fun d!1268512 () Bool)

(declare-fun res!1767477 () Bool)

(declare-fun e!2682341 () Bool)

(assert (=> d!1268512 (=> res!1767477 e!2682341)))

(assert (=> d!1268512 (= res!1767477 (and ((_ is Cons!48243) lt!1532478) (= (_1!26672 (h!53686 lt!1532478)) key!2048)))))

(assert (=> d!1268512 (= (containsKey!336 lt!1532478 key!2048) e!2682341)))

(declare-fun b!4312557 () Bool)

(declare-fun e!2682342 () Bool)

(assert (=> b!4312557 (= e!2682341 e!2682342)))

(declare-fun res!1767478 () Bool)

(assert (=> b!4312557 (=> (not res!1767478) (not e!2682342))))

(assert (=> b!4312557 (= res!1767478 ((_ is Cons!48243) lt!1532478))))

(declare-fun b!4312558 () Bool)

(assert (=> b!4312558 (= e!2682342 (containsKey!336 (t!355192 lt!1532478) key!2048))))

(assert (= (and d!1268512 (not res!1767477)) b!4312557))

(assert (= (and b!4312557 res!1767478) b!4312558))

(declare-fun m!4905647 () Bool)

(assert (=> b!4312558 m!4905647))

(assert (=> b!4312478 d!1268512))

(declare-fun bs!605289 () Bool)

(declare-fun d!1268514 () Bool)

(assert (= bs!605289 (and d!1268514 d!1268498)))

(declare-fun lambda!133109 () Int)

(assert (=> bs!605289 (= lambda!133109 lambda!133104)))

(declare-fun bs!605290 () Bool)

(assert (= bs!605290 (and d!1268514 b!4312516)))

(assert (=> bs!605290 (not (= lambda!133109 lambda!133093))))

(declare-fun bs!605291 () Bool)

(assert (= bs!605291 (and d!1268514 d!1268494)))

(assert (=> bs!605291 (not (= lambda!133109 lambda!133101))))

(declare-fun bs!605292 () Bool)

(assert (= bs!605292 (and d!1268514 b!4312482)))

(assert (=> bs!605292 (not (= lambda!133109 lambda!133090))))

(declare-fun bs!605293 () Bool)

(assert (= bs!605293 (and d!1268514 d!1268484)))

(assert (=> bs!605293 (= lambda!133109 lambda!133096)))

(assert (=> d!1268514 true))

(assert (=> d!1268514 (= (allKeysSameHashInMap!349 lt!1532482 (hashF!6754 thiss!42308)) (forall!8752 (toList!2444 lt!1532482) lambda!133109))))

(declare-fun bs!605294 () Bool)

(assert (= bs!605294 d!1268514))

(declare-fun m!4905649 () Bool)

(assert (=> bs!605294 m!4905649))

(assert (=> b!4312483 d!1268514))

(declare-fun bs!605295 () Bool)

(declare-fun b!4312563 () Bool)

(assert (= bs!605295 (and b!4312563 d!1268498)))

(declare-fun lambda!133112 () Int)

(assert (=> bs!605295 (not (= lambda!133112 lambda!133104))))

(declare-fun bs!605296 () Bool)

(assert (= bs!605296 (and b!4312563 b!4312516)))

(assert (=> bs!605296 (= lambda!133112 lambda!133093)))

(declare-fun bs!605297 () Bool)

(assert (= bs!605297 (and b!4312563 d!1268514)))

(assert (=> bs!605297 (not (= lambda!133112 lambda!133109))))

(declare-fun bs!605298 () Bool)

(assert (= bs!605298 (and b!4312563 d!1268494)))

(assert (=> bs!605298 (= lambda!133112 lambda!133101)))

(declare-fun bs!605299 () Bool)

(assert (= bs!605299 (and b!4312563 b!4312482)))

(assert (=> bs!605299 (= lambda!133112 lambda!133090)))

(declare-fun bs!605300 () Bool)

(assert (= bs!605300 (and b!4312563 d!1268484)))

(assert (=> bs!605300 (not (= lambda!133112 lambda!133096))))

(declare-fun d!1268516 () Bool)

(declare-fun res!1767483 () Bool)

(declare-fun e!2682345 () Bool)

(assert (=> d!1268516 (=> (not res!1767483) (not e!2682345))))

(declare-fun valid!3681 (MutLongMap!4687) Bool)

(assert (=> d!1268516 (= res!1767483 (valid!3681 (v!42445 (underlying!9604 thiss!42308))))))

(assert (=> d!1268516 (= (valid!3680 thiss!42308) e!2682345)))

(declare-fun res!1767484 () Bool)

(assert (=> b!4312563 (=> (not res!1767484) (not e!2682345))))

(assert (=> b!4312563 (= res!1767484 (forall!8752 (toList!2444 (map!10247 (v!42445 (underlying!9604 thiss!42308)))) lambda!133112))))

(declare-fun b!4312564 () Bool)

(assert (=> b!4312564 (= e!2682345 (allKeysSameHashInMap!349 (map!10247 (v!42445 (underlying!9604 thiss!42308))) (hashF!6754 thiss!42308)))))

(assert (= (and d!1268516 res!1767483) b!4312563))

(assert (= (and b!4312563 res!1767484) b!4312564))

(declare-fun m!4905651 () Bool)

(assert (=> d!1268516 m!4905651))

(assert (=> b!4312563 m!4905521))

(declare-fun m!4905653 () Bool)

(assert (=> b!4312563 m!4905653))

(assert (=> b!4312564 m!4905521))

(assert (=> b!4312564 m!4905521))

(declare-fun m!4905655 () Bool)

(assert (=> b!4312564 m!4905655))

(assert (=> b!4312475 d!1268516))

(declare-fun b!4312583 () Bool)

(declare-fun e!2682358 () Bool)

(declare-fun e!2682360 () Bool)

(assert (=> b!4312583 (= e!2682358 e!2682360)))

(declare-fun c!733193 () Bool)

(declare-fun lt!1532590 () tuple2!46786)

(assert (=> b!4312583 (= c!733193 (_1!26674 lt!1532590))))

(declare-fun b!4312584 () Bool)

(declare-fun e!2682357 () tuple2!46786)

(declare-datatypes ((tuple2!46788 0))(
  ( (tuple2!46789 (_1!26675 Bool) (_2!26675 LongMapFixedSize!9374)) )
))
(declare-fun lt!1532588 () tuple2!46788)

(assert (=> b!4312584 (= e!2682357 (tuple2!46787 (_1!26675 lt!1532588) (LongMap!4687 (Cell!18558 (_2!26675 lt!1532588)))))))

(declare-fun lt!1532589 () tuple2!46786)

(declare-fun update!461 (LongMapFixedSize!9374 (_ BitVec 64) List!48367) tuple2!46788)

(assert (=> b!4312584 (= lt!1532588 (update!461 (v!42444 (underlying!9603 (_2!26674 lt!1532589))) lt!1532479 lt!1532477))))

(declare-fun b!4312585 () Bool)

(declare-fun call!298238 () ListLongMap!1057)

(declare-fun call!298239 () ListLongMap!1057)

(assert (=> b!4312585 (= e!2682360 (= call!298238 call!298239))))

(declare-fun b!4312586 () Bool)

(declare-fun e!2682359 () tuple2!46786)

(assert (=> b!4312586 (= e!2682359 (tuple2!46787 true (v!42445 (underlying!9604 thiss!42308))))))

(declare-fun b!4312587 () Bool)

(declare-fun e!2682356 () Bool)

(assert (=> b!4312587 (= e!2682356 (= call!298238 (+!280 call!298239 (tuple2!46785 lt!1532479 lt!1532477))))))

(declare-fun bm!298233 () Bool)

(assert (=> bm!298233 (= call!298238 (map!10247 (_2!26674 lt!1532590)))))

(declare-fun d!1268518 () Bool)

(assert (=> d!1268518 e!2682358))

(declare-fun res!1767492 () Bool)

(assert (=> d!1268518 (=> (not res!1767492) (not e!2682358))))

(assert (=> d!1268518 (= res!1767492 ((_ is LongMap!4687) (_2!26674 lt!1532590)))))

(assert (=> d!1268518 (= lt!1532590 e!2682357)))

(declare-fun c!733194 () Bool)

(assert (=> d!1268518 (= c!733194 (_1!26674 lt!1532589))))

(assert (=> d!1268518 (= lt!1532589 e!2682359)))

(declare-fun c!733192 () Bool)

(declare-fun imbalanced!59 (MutLongMap!4687) Bool)

(assert (=> d!1268518 (= c!733192 (imbalanced!59 (v!42445 (underlying!9604 thiss!42308))))))

(assert (=> d!1268518 (valid!3681 (v!42445 (underlying!9604 thiss!42308)))))

(assert (=> d!1268518 (= (update!460 (v!42445 (underlying!9604 thiss!42308)) lt!1532479 lt!1532477) lt!1532590)))

(declare-fun b!4312588 () Bool)

(declare-fun lt!1532587 () tuple2!46786)

(assert (=> b!4312588 (= e!2682359 (tuple2!46787 (_1!26674 lt!1532587) (_2!26674 lt!1532587)))))

(declare-fun repack!63 (MutLongMap!4687) tuple2!46786)

(assert (=> b!4312588 (= lt!1532587 (repack!63 (v!42445 (underlying!9604 thiss!42308))))))

(declare-fun b!4312589 () Bool)

(assert (=> b!4312589 (= e!2682360 e!2682356)))

(declare-fun res!1767493 () Bool)

(assert (=> b!4312589 (= res!1767493 (contains!10230 call!298238 lt!1532479))))

(assert (=> b!4312589 (=> (not res!1767493) (not e!2682356))))

(declare-fun b!4312590 () Bool)

(declare-fun res!1767491 () Bool)

(assert (=> b!4312590 (=> (not res!1767491) (not e!2682358))))

(assert (=> b!4312590 (= res!1767491 (valid!3681 (_2!26674 lt!1532590)))))

(declare-fun bm!298234 () Bool)

(assert (=> bm!298234 (= call!298239 (map!10247 (v!42445 (underlying!9604 thiss!42308))))))

(declare-fun b!4312591 () Bool)

(assert (=> b!4312591 (= e!2682357 (tuple2!46787 false (_2!26674 lt!1532589)))))

(assert (= (and d!1268518 c!733192) b!4312588))

(assert (= (and d!1268518 (not c!733192)) b!4312586))

(assert (= (and d!1268518 c!733194) b!4312584))

(assert (= (and d!1268518 (not c!733194)) b!4312591))

(assert (= (and d!1268518 res!1767492) b!4312590))

(assert (= (and b!4312590 res!1767491) b!4312583))

(assert (= (and b!4312583 c!733193) b!4312589))

(assert (= (and b!4312583 (not c!733193)) b!4312585))

(assert (= (and b!4312589 res!1767493) b!4312587))

(assert (= (or b!4312587 b!4312585) bm!298234))

(assert (= (or b!4312589 b!4312587 b!4312585) bm!298233))

(declare-fun m!4905657 () Bool)

(assert (=> d!1268518 m!4905657))

(assert (=> d!1268518 m!4905651))

(assert (=> bm!298234 m!4905521))

(declare-fun m!4905659 () Bool)

(assert (=> b!4312588 m!4905659))

(declare-fun m!4905661 () Bool)

(assert (=> b!4312584 m!4905661))

(declare-fun m!4905663 () Bool)

(assert (=> b!4312589 m!4905663))

(declare-fun m!4905665 () Bool)

(assert (=> bm!298233 m!4905665))

(declare-fun m!4905667 () Bool)

(assert (=> b!4312590 m!4905667))

(declare-fun m!4905669 () Bool)

(assert (=> b!4312587 m!4905669))

(assert (=> b!4312485 d!1268518))

(declare-fun b!4312603 () Bool)

(declare-fun e!2682366 () List!48367)

(assert (=> b!4312603 (= e!2682366 Nil!48243)))

(declare-fun d!1268520 () Bool)

(declare-fun lt!1532593 () List!48367)

(assert (=> d!1268520 (not (containsKey!336 lt!1532593 key!2048))))

(declare-fun e!2682365 () List!48367)

(assert (=> d!1268520 (= lt!1532593 e!2682365)))

(declare-fun c!733199 () Bool)

(assert (=> d!1268520 (= c!733199 (and ((_ is Cons!48243) lt!1532484) (= (_1!26672 (h!53686 lt!1532484)) key!2048)))))

(assert (=> d!1268520 (noDuplicateKeys!230 lt!1532484)))

(assert (=> d!1268520 (= (removePairForKey!228 lt!1532484 key!2048) lt!1532593)))

(declare-fun b!4312600 () Bool)

(assert (=> b!4312600 (= e!2682365 (t!355192 lt!1532484))))

(declare-fun b!4312601 () Bool)

(assert (=> b!4312601 (= e!2682365 e!2682366)))

(declare-fun c!733200 () Bool)

(assert (=> b!4312601 (= c!733200 ((_ is Cons!48243) lt!1532484))))

(declare-fun b!4312602 () Bool)

(assert (=> b!4312602 (= e!2682366 (Cons!48243 (h!53686 lt!1532484) (removePairForKey!228 (t!355192 lt!1532484) key!2048)))))

(assert (= (and d!1268520 c!733199) b!4312600))

(assert (= (and d!1268520 (not c!733199)) b!4312601))

(assert (= (and b!4312601 c!733200) b!4312602))

(assert (= (and b!4312601 (not c!733200)) b!4312603))

(declare-fun m!4905671 () Bool)

(assert (=> d!1268520 m!4905671))

(assert (=> d!1268520 m!4905597))

(declare-fun m!4905673 () Bool)

(assert (=> b!4312602 m!4905673))

(assert (=> b!4312485 d!1268520))

(declare-fun d!1268522 () Bool)

(declare-fun e!2682369 () Bool)

(assert (=> d!1268522 e!2682369))

(declare-fun c!733203 () Bool)

(assert (=> d!1268522 (= c!733203 (contains!10229 (v!42445 (underlying!9604 thiss!42308)) lt!1532479))))

(declare-fun lt!1532596 () List!48367)

(declare-fun apply!11049 (LongMapFixedSize!9374 (_ BitVec 64)) List!48367)

(assert (=> d!1268522 (= lt!1532596 (apply!11049 (v!42444 (underlying!9603 (v!42445 (underlying!9604 thiss!42308)))) lt!1532479))))

(assert (=> d!1268522 (valid!3681 (v!42445 (underlying!9604 thiss!42308)))))

(assert (=> d!1268522 (= (apply!11047 (v!42445 (underlying!9604 thiss!42308)) lt!1532479) lt!1532596)))

(declare-fun b!4312608 () Bool)

(declare-fun get!15616 (Option!10247) List!48367)

(assert (=> b!4312608 (= e!2682369 (= lt!1532596 (get!15616 (getValueByKey!264 (toList!2444 (map!10247 (v!42445 (underlying!9604 thiss!42308)))) lt!1532479))))))

(declare-fun b!4312609 () Bool)

(declare-fun dynLambda!20452 (Int (_ BitVec 64)) List!48367)

(assert (=> b!4312609 (= e!2682369 (= lt!1532596 (dynLambda!20452 (defaultEntry!5072 (v!42444 (underlying!9603 (v!42445 (underlying!9604 thiss!42308))))) lt!1532479)))))

(assert (=> b!4312609 ((_ is LongMap!4687) (v!42445 (underlying!9604 thiss!42308)))))

(assert (= (and d!1268522 c!733203) b!4312608))

(assert (= (and d!1268522 (not c!733203)) b!4312609))

(declare-fun b_lambda!126735 () Bool)

(assert (=> (not b_lambda!126735) (not b!4312609)))

(declare-fun t!355195 () Bool)

(declare-fun tb!257311 () Bool)

(assert (=> (and b!4312477 (= (defaultEntry!5072 (v!42444 (underlying!9603 (v!42445 (underlying!9604 thiss!42308))))) (defaultEntry!5072 (v!42444 (underlying!9603 (v!42445 (underlying!9604 thiss!42308)))))) t!355195) tb!257311))

(assert (=> b!4312609 t!355195))

(declare-fun result!314740 () Bool)

(declare-fun b_and!340163 () Bool)

(assert (= b_and!340159 (and (=> t!355195 result!314740) b_and!340163)))

(declare-fun m!4905675 () Bool)

(assert (=> d!1268522 m!4905675))

(declare-fun m!4905677 () Bool)

(assert (=> d!1268522 m!4905677))

(assert (=> d!1268522 m!4905651))

(assert (=> b!4312608 m!4905521))

(declare-fun m!4905679 () Bool)

(assert (=> b!4312608 m!4905679))

(assert (=> b!4312608 m!4905679))

(declare-fun m!4905681 () Bool)

(assert (=> b!4312608 m!4905681))

(declare-fun m!4905683 () Bool)

(assert (=> b!4312609 m!4905683))

(assert (=> b!4312485 d!1268522))

(declare-fun d!1268524 () Bool)

(declare-fun hash!1052 (Hashable!4603 K!9464) (_ BitVec 64))

(assert (=> d!1268524 (= (hash!1048 (hashF!6754 thiss!42308) key!2048) (hash!1052 (hashF!6754 thiss!42308) key!2048))))

(declare-fun bs!605301 () Bool)

(assert (= bs!605301 d!1268524))

(declare-fun m!4905685 () Bool)

(assert (=> bs!605301 m!4905685))

(assert (=> b!4312485 d!1268524))

(declare-fun tp!1325185 () Bool)

(declare-fun e!2682374 () Bool)

(declare-fun b!4312617 () Bool)

(assert (=> b!4312617 (= e!2682374 (and tp_is_empty!23853 tp_is_empty!23855 tp!1325185))))

(declare-fun mapIsEmpty!20922 () Bool)

(declare-fun mapRes!20922 () Bool)

(assert (=> mapIsEmpty!20922 mapRes!20922))

(declare-fun condMapEmpty!20922 () Bool)

(declare-fun mapDefault!20922 () List!48367)

(assert (=> mapNonEmpty!20919 (= condMapEmpty!20922 (= mapRest!20919 ((as const (Array (_ BitVec 32) List!48367)) mapDefault!20922)))))

(assert (=> mapNonEmpty!20919 (= tp!1325171 (and e!2682374 mapRes!20922))))

(declare-fun e!2682375 () Bool)

(declare-fun b!4312616 () Bool)

(declare-fun tp!1325184 () Bool)

(assert (=> b!4312616 (= e!2682375 (and tp_is_empty!23853 tp_is_empty!23855 tp!1325184))))

(declare-fun mapNonEmpty!20922 () Bool)

(declare-fun tp!1325183 () Bool)

(assert (=> mapNonEmpty!20922 (= mapRes!20922 (and tp!1325183 e!2682375))))

(declare-fun mapRest!20922 () (Array (_ BitVec 32) List!48367))

(declare-fun mapValue!20922 () List!48367)

(declare-fun mapKey!20922 () (_ BitVec 32))

(assert (=> mapNonEmpty!20922 (= mapRest!20919 (store mapRest!20922 mapKey!20922 mapValue!20922))))

(assert (= (and mapNonEmpty!20919 condMapEmpty!20922) mapIsEmpty!20922))

(assert (= (and mapNonEmpty!20919 (not condMapEmpty!20922)) mapNonEmpty!20922))

(assert (= (and mapNonEmpty!20922 ((_ is Cons!48243) mapValue!20922)) b!4312616))

(assert (= (and mapNonEmpty!20919 ((_ is Cons!48243) mapDefault!20922)) b!4312617))

(declare-fun m!4905687 () Bool)

(assert (=> mapNonEmpty!20922 m!4905687))

(declare-fun b!4312622 () Bool)

(declare-fun tp!1325188 () Bool)

(declare-fun e!2682378 () Bool)

(assert (=> b!4312622 (= e!2682378 (and tp_is_empty!23853 tp_is_empty!23855 tp!1325188))))

(assert (=> mapNonEmpty!20919 (= tp!1325172 e!2682378)))

(assert (= (and mapNonEmpty!20919 ((_ is Cons!48243) mapValue!20919)) b!4312622))

(declare-fun e!2682379 () Bool)

(declare-fun b!4312623 () Bool)

(declare-fun tp!1325189 () Bool)

(assert (=> b!4312623 (= e!2682379 (and tp_is_empty!23853 tp_is_empty!23855 tp!1325189))))

(assert (=> b!4312477 (= tp!1325170 e!2682379)))

(assert (= (and b!4312477 ((_ is Cons!48243) (zeroValue!4946 (v!42444 (underlying!9603 (v!42445 (underlying!9604 thiss!42308))))))) b!4312623))

(declare-fun b!4312624 () Bool)

(declare-fun tp!1325190 () Bool)

(declare-fun e!2682380 () Bool)

(assert (=> b!4312624 (= e!2682380 (and tp_is_empty!23853 tp_is_empty!23855 tp!1325190))))

(assert (=> b!4312477 (= tp!1325174 e!2682380)))

(assert (= (and b!4312477 ((_ is Cons!48243) (minValue!4946 (v!42444 (underlying!9603 (v!42445 (underlying!9604 thiss!42308))))))) b!4312624))

(declare-fun e!2682381 () Bool)

(declare-fun b!4312625 () Bool)

(declare-fun tp!1325191 () Bool)

(assert (=> b!4312625 (= e!2682381 (and tp_is_empty!23853 tp_is_empty!23855 tp!1325191))))

(assert (=> b!4312484 (= tp!1325176 e!2682381)))

(assert (= (and b!4312484 ((_ is Cons!48243) mapDefault!20919)) b!4312625))

(declare-fun b_lambda!126737 () Bool)

(assert (= b_lambda!126733 (or b!4312482 b_lambda!126737)))

(declare-fun bs!605302 () Bool)

(declare-fun d!1268526 () Bool)

(assert (= bs!605302 (and d!1268526 b!4312482)))

(assert (=> bs!605302 (= (dynLambda!20451 lambda!133090 (h!53687 (toList!2444 lt!1532487))) (noDuplicateKeys!230 (_2!26673 (h!53687 (toList!2444 lt!1532487)))))))

(declare-fun m!4905689 () Bool)

(assert (=> bs!605302 m!4905689))

(assert (=> b!4312549 d!1268526))

(declare-fun b_lambda!126739 () Bool)

(assert (= b_lambda!126735 (or (and b!4312477 b_free!128707) b_lambda!126739)))

(declare-fun b_lambda!126741 () Bool)

(assert (= b_lambda!126731 (or b!4312482 b_lambda!126741)))

(declare-fun bs!605303 () Bool)

(declare-fun d!1268528 () Bool)

(assert (= bs!605303 (and d!1268528 b!4312482)))

(assert (=> bs!605303 (= (dynLambda!20451 lambda!133090 (h!53687 (toList!2444 lt!1532482))) (noDuplicateKeys!230 (_2!26673 (h!53687 (toList!2444 lt!1532482)))))))

(declare-fun m!4905691 () Bool)

(assert (=> bs!605303 m!4905691))

(assert (=> b!4312528 d!1268528))

(check-sat (not d!1268520) (not b_next!129413) (not b!4312587) (not d!1268496) (not d!1268492) (not mapNonEmpty!20922) (not b_next!129411) (not b!4312516) (not d!1268516) (not b!4312589) (not b!4312590) (not b!4312608) (not b!4312564) (not bm!298234) b_and!340161 (not bs!605303) (not b!4312538) tp_is_empty!23855 (not bs!605302) (not b!4312519) (not d!1268494) (not d!1268522) (not b!4312624) (not bm!298227) (not bm!298228) (not bm!298226) (not d!1268480) (not d!1268484) (not b!4312544) (not b!4312584) tp_is_empty!23853 b_and!340163 (not b!4312543) (not b!4312552) (not b!4312550) (not b_lambda!126739) (not d!1268518) (not b!4312535) (not b!4312558) (not b!4312625) (not b!4312563) (not d!1268524) (not d!1268498) (not b!4312529) (not b!4312518) (not bm!298225) (not tb!257311) (not b!4312534) (not d!1268514) (not b_lambda!126737) (not d!1268486) (not d!1268482) (not bm!298233) (not bm!298223) (not b!4312551) (not b_lambda!126741) (not d!1268500) (not b!4312617) (not d!1268504) (not b!4312616) (not b!4312517) (not d!1268478) (not b!4312623) (not b!4312514) (not b!4312602) (not b!4312622) (not bm!298224) (not b!4312588))
(check-sat b_and!340163 b_and!340161 (not b_next!129413) (not b_next!129411))
