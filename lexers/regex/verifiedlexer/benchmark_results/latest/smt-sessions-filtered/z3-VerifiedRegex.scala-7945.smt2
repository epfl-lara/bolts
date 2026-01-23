; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413256 () Bool)

(assert start!413256)

(declare-fun b!4303149 () Bool)

(declare-fun b_free!128243 () Bool)

(declare-fun b_next!128947 () Bool)

(assert (=> b!4303149 (= b_free!128243 (not b_next!128947))))

(declare-fun tp!1322326 () Bool)

(declare-fun b_and!339631 () Bool)

(assert (=> b!4303149 (= tp!1322326 b_and!339631)))

(declare-fun b!4303152 () Bool)

(declare-fun b_free!128245 () Bool)

(declare-fun b_next!128949 () Bool)

(assert (=> b!4303152 (= b_free!128245 (not b_next!128949))))

(declare-fun tp!1322329 () Bool)

(declare-fun b_and!339633 () Bool)

(assert (=> b!4303152 (= tp!1322329 b_and!339633)))

(declare-fun b!4303140 () Bool)

(declare-fun e!2675250 () Bool)

(declare-fun e!2675249 () Bool)

(assert (=> b!4303140 (= e!2675250 e!2675249)))

(declare-fun b!4303141 () Bool)

(declare-fun e!2675248 () Bool)

(assert (=> b!4303141 (= e!2675248 e!2675250)))

(declare-fun mapIsEmpty!20491 () Bool)

(declare-fun mapRes!20491 () Bool)

(assert (=> mapIsEmpty!20491 mapRes!20491))

(declare-fun b!4303142 () Bool)

(declare-fun res!1763716 () Bool)

(declare-fun e!2675252 () Bool)

(assert (=> b!4303142 (=> (not res!1763716) (not e!2675252))))

(declare-datatypes ((K!9174 0))(
  ( (K!9175 (val!15597 Int)) )
))
(declare-datatypes ((V!9376 0))(
  ( (V!9377 (val!15598 Int)) )
))
(declare-datatypes ((tuple2!46140 0))(
  ( (tuple2!46141 (_1!26349 K!9174) (_2!26349 V!9376)) )
))
(declare-datatypes ((List!48150 0))(
  ( (Nil!48026) (Cons!48026 (h!53448 tuple2!46140) (t!354923 List!48150)) )
))
(declare-fun lt!1524704 () List!48150)

(declare-fun key!2048 () K!9174)

(declare-fun containsKey!261 (List!48150 K!9174) Bool)

(assert (=> b!4303142 (= res!1763716 (not (containsKey!261 lt!1524704 key!2048)))))

(declare-fun res!1763717 () Bool)

(declare-fun e!2675246 () Bool)

(assert (=> start!413256 (=> (not res!1763717) (not e!2675246))))

(declare-datatypes ((array!16410 0))(
  ( (array!16411 (arr!7327 (Array (_ BitVec 32) (_ BitVec 64))) (size!35366 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4487 0))(
  ( (HashableExt!4486 (__x!29738 Int)) )
))
(declare-datatypes ((array!16412 0))(
  ( (array!16413 (arr!7328 (Array (_ BitVec 32) List!48150)) (size!35367 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9142 0))(
  ( (LongMapFixedSize!9143 (defaultEntry!4956 Int) (mask!13085 (_ BitVec 32)) (extraKeys!4820 (_ BitVec 32)) (zeroValue!4830 List!48150) (minValue!4830 List!48150) (_size!9185 (_ BitVec 32)) (_keys!4871 array!16410) (_values!4852 array!16412) (_vacant!4632 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18093 0))(
  ( (Cell!18094 (v!42037 LongMapFixedSize!9142)) )
))
(declare-datatypes ((MutLongMap!4571 0))(
  ( (LongMap!4571 (underlying!9371 Cell!18093)) (MutLongMapExt!4570 (__x!29739 Int)) )
))
(declare-datatypes ((Cell!18095 0))(
  ( (Cell!18096 (v!42038 MutLongMap!4571)) )
))
(declare-datatypes ((MutableMap!4477 0))(
  ( (MutableMapExt!4476 (__x!29740 Int)) (HashMap!4477 (underlying!9372 Cell!18095) (hashF!6531 Hashable!4487) (_size!9186 (_ BitVec 32)) (defaultValue!4648 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4477)

(get-info :version)

(assert (=> start!413256 (= res!1763717 ((_ is HashMap!4477) thiss!42308))))

(assert (=> start!413256 e!2675246))

(declare-fun e!2675256 () Bool)

(assert (=> start!413256 e!2675256))

(declare-fun tp_is_empty!23423 () Bool)

(assert (=> start!413256 tp_is_empty!23423))

(declare-fun tp_is_empty!23425 () Bool)

(assert (=> start!413256 tp_is_empty!23425))

(declare-fun b!4303143 () Bool)

(declare-fun e!2675245 () Bool)

(declare-fun tp!1322328 () Bool)

(assert (=> b!4303143 (= e!2675245 (and tp!1322328 mapRes!20491))))

(declare-fun condMapEmpty!20491 () Bool)

(declare-fun mapDefault!20491 () List!48150)

(assert (=> b!4303143 (= condMapEmpty!20491 (= (arr!7328 (_values!4852 (v!42037 (underlying!9371 (v!42038 (underlying!9372 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48150)) mapDefault!20491)))))

(declare-fun b!4303144 () Bool)

(declare-fun e!2675251 () Bool)

(declare-datatypes ((tuple2!46142 0))(
  ( (tuple2!46143 (_1!26350 (_ BitVec 64)) (_2!26350 List!48150)) )
))
(declare-datatypes ((List!48151 0))(
  ( (Nil!48027) (Cons!48027 (h!53449 tuple2!46142) (t!354924 List!48151)) )
))
(declare-datatypes ((ListLongMap!871 0))(
  ( (ListLongMap!872 (toList!2263 List!48151)) )
))
(declare-fun lt!1524691 () ListLongMap!871)

(declare-fun allKeysSameHashInMap!292 (ListLongMap!871 Hashable!4487) Bool)

(assert (=> b!4303144 (= e!2675251 (allKeysSameHashInMap!292 lt!1524691 (hashF!6531 thiss!42308)))))

(declare-fun b!4303145 () Bool)

(declare-fun e!2675255 () Bool)

(assert (=> b!4303145 (= e!2675255 (not true))))

(declare-fun lt!1524701 () Bool)

(declare-datatypes ((tuple2!46144 0))(
  ( (tuple2!46145 (_1!26351 Bool) (_2!26351 MutLongMap!4571)) )
))
(declare-fun lt!1524702 () tuple2!46144)

(declare-fun lt!1524696 () tuple2!46140)

(declare-datatypes ((ListMap!1549 0))(
  ( (ListMap!1550 (toList!2264 List!48150)) )
))
(declare-fun lt!1524698 () ListMap!1549)

(declare-fun eq!112 (ListMap!1549 ListMap!1549) Bool)

(declare-fun map!9992 (MutableMap!4477) ListMap!1549)

(declare-fun +!201 (ListMap!1549 tuple2!46140) ListMap!1549)

(assert (=> b!4303145 (= lt!1524701 (eq!112 (map!9992 (HashMap!4477 (Cell!18096 (_2!26351 lt!1524702)) (hashF!6531 thiss!42308) (_size!9186 thiss!42308) (defaultValue!4648 thiss!42308))) (+!201 lt!1524698 lt!1524696)))))

(declare-fun lt!1524703 () ListLongMap!871)

(declare-fun extractMap!288 (List!48151) ListMap!1549)

(assert (=> b!4303145 (eq!112 (extractMap!288 (toList!2263 lt!1524691)) (+!201 (extractMap!288 (toList!2263 lt!1524703)) lt!1524696))))

(declare-fun lt!1524699 () List!48150)

(declare-fun lt!1524697 () (_ BitVec 64))

(declare-fun v!9179 () V!9376)

(declare-datatypes ((Unit!67012 0))(
  ( (Unit!67013) )
))
(declare-fun lt!1524693 () Unit!67012)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!44 (ListLongMap!871 (_ BitVec 64) List!48150 K!9174 V!9376 Hashable!4487) Unit!67012)

(assert (=> b!4303145 (= lt!1524693 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!44 lt!1524703 lt!1524697 lt!1524699 key!2048 v!9179 (hashF!6531 thiss!42308)))))

(assert (=> b!4303145 e!2675251))

(declare-fun res!1763714 () Bool)

(assert (=> b!4303145 (=> (not res!1763714) (not e!2675251))))

(declare-fun lambda!132208 () Int)

(declare-fun forall!8667 (List!48151 Int) Bool)

(assert (=> b!4303145 (= res!1763714 (forall!8667 (toList!2263 lt!1524691) lambda!132208))))

(declare-fun +!202 (ListLongMap!871 tuple2!46142) ListLongMap!871)

(assert (=> b!4303145 (= lt!1524691 (+!202 lt!1524703 (tuple2!46143 lt!1524697 lt!1524699)))))

(declare-fun lt!1524705 () Unit!67012)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!115 (ListLongMap!871 (_ BitVec 64) List!48150 Hashable!4487) Unit!67012)

(assert (=> b!4303145 (= lt!1524705 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!115 lt!1524703 lt!1524697 lt!1524699 (hashF!6531 thiss!42308)))))

(assert (=> b!4303145 e!2675252))

(declare-fun res!1763712 () Bool)

(assert (=> b!4303145 (=> (not res!1763712) (not e!2675252))))

(declare-fun noDuplicateKeys!174 (List!48150) Bool)

(assert (=> b!4303145 (= res!1763712 (noDuplicateKeys!174 lt!1524704))))

(declare-fun lt!1524694 () Unit!67012)

(declare-fun lt!1524692 () List!48150)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!147 (List!48150 K!9174) Unit!67012)

(assert (=> b!4303145 (= lt!1524694 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!147 lt!1524692 key!2048))))

(declare-fun allKeysSameHash!144 (List!48150 (_ BitVec 64) Hashable!4487) Bool)

(assert (=> b!4303145 (allKeysSameHash!144 lt!1524704 lt!1524697 (hashF!6531 thiss!42308))))

(declare-fun lt!1524695 () Unit!67012)

(declare-fun lemmaRemovePairForKeyPreservesHash!130 (List!48150 K!9174 (_ BitVec 64) Hashable!4487) Unit!67012)

(assert (=> b!4303145 (= lt!1524695 (lemmaRemovePairForKeyPreservesHash!130 lt!1524692 key!2048 lt!1524697 (hashF!6531 thiss!42308)))))

(assert (=> b!4303145 (allKeysSameHash!144 lt!1524692 lt!1524697 (hashF!6531 thiss!42308))))

(declare-fun lt!1524706 () Unit!67012)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!135 (List!48151 (_ BitVec 64) List!48150 Hashable!4487) Unit!67012)

(assert (=> b!4303145 (= lt!1524706 (lemmaInLongMapAllKeySameHashThenForTuple!135 (toList!2263 lt!1524703) lt!1524697 lt!1524692 (hashF!6531 thiss!42308)))))

(declare-fun b!4303146 () Bool)

(assert (=> b!4303146 (= e!2675252 (noDuplicateKeys!174 lt!1524699))))

(declare-fun b!4303147 () Bool)

(declare-fun res!1763718 () Bool)

(assert (=> b!4303147 (=> (not res!1763718) (not e!2675246))))

(declare-fun valid!3554 (MutableMap!4477) Bool)

(assert (=> b!4303147 (= res!1763718 (valid!3554 thiss!42308))))

(declare-fun mapNonEmpty!20491 () Bool)

(declare-fun tp!1322325 () Bool)

(declare-fun tp!1322324 () Bool)

(assert (=> mapNonEmpty!20491 (= mapRes!20491 (and tp!1322325 tp!1322324))))

(declare-fun mapKey!20491 () (_ BitVec 32))

(declare-fun mapRest!20491 () (Array (_ BitVec 32) List!48150))

(declare-fun mapValue!20491 () List!48150)

(assert (=> mapNonEmpty!20491 (= (arr!7328 (_values!4852 (v!42037 (underlying!9371 (v!42038 (underlying!9372 thiss!42308)))))) (store mapRest!20491 mapKey!20491 mapValue!20491))))

(declare-fun b!4303148 () Bool)

(declare-fun e!2675247 () Bool)

(assert (=> b!4303148 (= e!2675247 e!2675255)))

(declare-fun res!1763713 () Bool)

(assert (=> b!4303148 (=> (not res!1763713) (not e!2675255))))

(assert (=> b!4303148 (= res!1763713 (_1!26351 lt!1524702))))

(declare-fun update!367 (MutLongMap!4571 (_ BitVec 64) List!48150) tuple2!46144)

(assert (=> b!4303148 (= lt!1524702 (update!367 (v!42038 (underlying!9372 thiss!42308)) lt!1524697 lt!1524699))))

(assert (=> b!4303148 (= lt!1524699 (Cons!48026 lt!1524696 lt!1524704))))

(declare-fun removePairForKey!168 (List!48150 K!9174) List!48150)

(assert (=> b!4303148 (= lt!1524704 (removePairForKey!168 lt!1524692 key!2048))))

(assert (=> b!4303148 (= lt!1524696 (tuple2!46141 key!2048 v!9179))))

(declare-fun apply!10920 (MutLongMap!4571 (_ BitVec 64)) List!48150)

(assert (=> b!4303148 (= lt!1524692 (apply!10920 (v!42038 (underlying!9372 thiss!42308)) lt!1524697))))

(declare-fun hash!879 (Hashable!4487 K!9174) (_ BitVec 64))

(assert (=> b!4303148 (= lt!1524697 (hash!879 (hashF!6531 thiss!42308) key!2048))))

(declare-fun tp!1322327 () Bool)

(declare-fun tp!1322330 () Bool)

(declare-fun array_inv!5255 (array!16410) Bool)

(declare-fun array_inv!5256 (array!16412) Bool)

(assert (=> b!4303149 (= e!2675249 (and tp!1322326 tp!1322330 tp!1322327 (array_inv!5255 (_keys!4871 (v!42037 (underlying!9371 (v!42038 (underlying!9372 thiss!42308)))))) (array_inv!5256 (_values!4852 (v!42037 (underlying!9371 (v!42038 (underlying!9372 thiss!42308)))))) e!2675245))))

(declare-fun b!4303150 () Bool)

(assert (=> b!4303150 (= e!2675246 e!2675247)))

(declare-fun res!1763715 () Bool)

(assert (=> b!4303150 (=> (not res!1763715) (not e!2675247))))

(declare-fun contains!9949 (MutableMap!4477 K!9174) Bool)

(assert (=> b!4303150 (= res!1763715 (contains!9949 thiss!42308 key!2048))))

(declare-fun map!9993 (MutLongMap!4571) ListLongMap!871)

(assert (=> b!4303150 (= lt!1524703 (map!9993 (v!42038 (underlying!9372 thiss!42308))))))

(assert (=> b!4303150 (= lt!1524698 (map!9992 thiss!42308))))

(declare-fun b!4303151 () Bool)

(declare-fun e!2675254 () Bool)

(declare-fun lt!1524700 () MutLongMap!4571)

(assert (=> b!4303151 (= e!2675254 (and e!2675248 ((_ is LongMap!4571) lt!1524700)))))

(assert (=> b!4303151 (= lt!1524700 (v!42038 (underlying!9372 thiss!42308)))))

(assert (=> b!4303152 (= e!2675256 (and e!2675254 tp!1322329))))

(assert (= (and start!413256 res!1763717) b!4303147))

(assert (= (and b!4303147 res!1763718) b!4303150))

(assert (= (and b!4303150 res!1763715) b!4303148))

(assert (= (and b!4303148 res!1763713) b!4303145))

(assert (= (and b!4303145 res!1763712) b!4303142))

(assert (= (and b!4303142 res!1763716) b!4303146))

(assert (= (and b!4303145 res!1763714) b!4303144))

(assert (= (and b!4303143 condMapEmpty!20491) mapIsEmpty!20491))

(assert (= (and b!4303143 (not condMapEmpty!20491)) mapNonEmpty!20491))

(assert (= b!4303149 b!4303143))

(assert (= b!4303140 b!4303149))

(assert (= b!4303141 b!4303140))

(assert (= (and b!4303151 ((_ is LongMap!4571) (v!42038 (underlying!9372 thiss!42308)))) b!4303141))

(assert (= b!4303152 b!4303151))

(assert (= (and start!413256 ((_ is HashMap!4477) thiss!42308)) b!4303152))

(declare-fun m!4895429 () Bool)

(assert (=> mapNonEmpty!20491 m!4895429))

(declare-fun m!4895431 () Bool)

(assert (=> b!4303146 m!4895431))

(declare-fun m!4895433 () Bool)

(assert (=> b!4303142 m!4895433))

(declare-fun m!4895435 () Bool)

(assert (=> b!4303149 m!4895435))

(declare-fun m!4895437 () Bool)

(assert (=> b!4303149 m!4895437))

(declare-fun m!4895439 () Bool)

(assert (=> b!4303150 m!4895439))

(declare-fun m!4895441 () Bool)

(assert (=> b!4303150 m!4895441))

(declare-fun m!4895443 () Bool)

(assert (=> b!4303150 m!4895443))

(declare-fun m!4895445 () Bool)

(assert (=> b!4303148 m!4895445))

(declare-fun m!4895447 () Bool)

(assert (=> b!4303148 m!4895447))

(declare-fun m!4895449 () Bool)

(assert (=> b!4303148 m!4895449))

(declare-fun m!4895451 () Bool)

(assert (=> b!4303148 m!4895451))

(declare-fun m!4895453 () Bool)

(assert (=> b!4303147 m!4895453))

(declare-fun m!4895455 () Bool)

(assert (=> b!4303144 m!4895455))

(declare-fun m!4895457 () Bool)

(assert (=> b!4303145 m!4895457))

(declare-fun m!4895459 () Bool)

(assert (=> b!4303145 m!4895459))

(declare-fun m!4895461 () Bool)

(assert (=> b!4303145 m!4895461))

(declare-fun m!4895463 () Bool)

(assert (=> b!4303145 m!4895463))

(assert (=> b!4303145 m!4895457))

(declare-fun m!4895465 () Bool)

(assert (=> b!4303145 m!4895465))

(declare-fun m!4895467 () Bool)

(assert (=> b!4303145 m!4895467))

(declare-fun m!4895469 () Bool)

(assert (=> b!4303145 m!4895469))

(declare-fun m!4895471 () Bool)

(assert (=> b!4303145 m!4895471))

(declare-fun m!4895473 () Bool)

(assert (=> b!4303145 m!4895473))

(declare-fun m!4895475 () Bool)

(assert (=> b!4303145 m!4895475))

(assert (=> b!4303145 m!4895461))

(assert (=> b!4303145 m!4895465))

(declare-fun m!4895477 () Bool)

(assert (=> b!4303145 m!4895477))

(declare-fun m!4895479 () Bool)

(assert (=> b!4303145 m!4895479))

(declare-fun m!4895481 () Bool)

(assert (=> b!4303145 m!4895481))

(assert (=> b!4303145 m!4895473))

(declare-fun m!4895483 () Bool)

(assert (=> b!4303145 m!4895483))

(declare-fun m!4895485 () Bool)

(assert (=> b!4303145 m!4895485))

(declare-fun m!4895487 () Bool)

(assert (=> b!4303145 m!4895487))

(assert (=> b!4303145 m!4895483))

(declare-fun m!4895489 () Bool)

(assert (=> b!4303145 m!4895489))

(check-sat (not b!4303147) (not b!4303146) b_and!339631 tp_is_empty!23425 (not b!4303142) (not b!4303143) b_and!339633 tp_is_empty!23423 (not b_next!128949) (not b!4303144) (not mapNonEmpty!20491) (not b_next!128947) (not b!4303145) (not b!4303149) (not b!4303148) (not b!4303150))
(check-sat b_and!339631 b_and!339633 (not b_next!128949) (not b_next!128947))
