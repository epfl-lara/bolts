; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413180 () Bool)

(assert start!413180)

(declare-fun b!4302326 () Bool)

(declare-fun b_free!128187 () Bool)

(declare-fun b_next!128891 () Bool)

(assert (=> b!4302326 (= b_free!128187 (not b_next!128891))))

(declare-fun tp!1322021 () Bool)

(declare-fun b_and!339573 () Bool)

(assert (=> b!4302326 (= tp!1322021 b_and!339573)))

(declare-fun b!4302328 () Bool)

(declare-fun b_free!128189 () Bool)

(declare-fun b_next!128893 () Bool)

(assert (=> b!4302328 (= b_free!128189 (not b_next!128893))))

(declare-fun tp!1322015 () Bool)

(declare-fun b_and!339575 () Bool)

(assert (=> b!4302328 (= tp!1322015 b_and!339575)))

(declare-fun b!4302321 () Bool)

(declare-fun e!2674620 () Bool)

(declare-datatypes ((V!9341 0))(
  ( (V!9342 (val!15569 Int)) )
))
(declare-datatypes ((K!9139 0))(
  ( (K!9140 (val!15570 Int)) )
))
(declare-datatypes ((tuple2!46062 0))(
  ( (tuple2!46063 (_1!26310 K!9139) (_2!26310 V!9341)) )
))
(declare-datatypes ((List!48124 0))(
  ( (Nil!48000) (Cons!48000 (h!53421 tuple2!46062) (t!354895 List!48124)) )
))
(declare-datatypes ((tuple2!46064 0))(
  ( (tuple2!46065 (_1!26311 (_ BitVec 64)) (_2!26311 List!48124)) )
))
(declare-datatypes ((List!48125 0))(
  ( (Nil!48001) (Cons!48001 (h!53422 tuple2!46064) (t!354896 List!48125)) )
))
(declare-datatypes ((ListLongMap!847 0))(
  ( (ListLongMap!848 (toList!2239 List!48125)) )
))
(declare-fun lt!1523949 () ListLongMap!847)

(declare-fun lambda!132101 () Int)

(declare-fun forall!8654 (List!48125 Int) Bool)

(assert (=> b!4302321 (= e!2674620 (forall!8654 (toList!2239 lt!1523949) lambda!132101))))

(declare-fun b!4302322 () Bool)

(declare-fun e!2674614 () Bool)

(assert (=> b!4302322 (= e!2674614 (not e!2674620))))

(declare-fun res!1763243 () Bool)

(assert (=> b!4302322 (=> res!1763243 e!2674620)))

(assert (=> b!4302322 (= res!1763243 (not (forall!8654 (toList!2239 lt!1523949) lambda!132101)))))

(declare-fun e!2674612 () Bool)

(assert (=> b!4302322 e!2674612))

(declare-fun res!1763235 () Bool)

(assert (=> b!4302322 (=> (not res!1763235) (not e!2674612))))

(declare-fun lt!1523946 () List!48124)

(declare-fun noDuplicateKeys!162 (List!48124) Bool)

(assert (=> b!4302322 (= res!1763235 (noDuplicateKeys!162 lt!1523946))))

(declare-datatypes ((Unit!66983 0))(
  ( (Unit!66984) )
))
(declare-fun lt!1523953 () Unit!66983)

(declare-fun lt!1523952 () List!48124)

(declare-fun key!2048 () K!9139)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!135 (List!48124 K!9139) Unit!66983)

(assert (=> b!4302322 (= lt!1523953 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!135 lt!1523952 key!2048))))

(declare-fun lt!1523954 () (_ BitVec 64))

(declare-datatypes ((array!16352 0))(
  ( (array!16353 (arr!7299 (Array (_ BitVec 32) (_ BitVec 64))) (size!35338 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4473 0))(
  ( (HashableExt!4472 (__x!29696 Int)) )
))
(declare-datatypes ((array!16354 0))(
  ( (array!16355 (arr!7300 (Array (_ BitVec 32) List!48124)) (size!35339 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9114 0))(
  ( (LongMapFixedSize!9115 (defaultEntry!4942 Int) (mask!13064 (_ BitVec 32)) (extraKeys!4806 (_ BitVec 32)) (zeroValue!4816 List!48124) (minValue!4816 List!48124) (_size!9157 (_ BitVec 32)) (_keys!4857 array!16352) (_values!4838 array!16354) (_vacant!4618 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18037 0))(
  ( (Cell!18038 (v!42002 LongMapFixedSize!9114)) )
))
(declare-datatypes ((MutLongMap!4557 0))(
  ( (LongMap!4557 (underlying!9343 Cell!18037)) (MutLongMapExt!4556 (__x!29697 Int)) )
))
(declare-datatypes ((Cell!18039 0))(
  ( (Cell!18040 (v!42003 MutLongMap!4557)) )
))
(declare-datatypes ((MutableMap!4463 0))(
  ( (MutableMapExt!4462 (__x!29698 Int)) (HashMap!4463 (underlying!9344 Cell!18039) (hashF!6511 Hashable!4473) (_size!9158 (_ BitVec 32)) (defaultValue!4634 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4463)

(declare-fun allKeysSameHash!132 (List!48124 (_ BitVec 64) Hashable!4473) Bool)

(assert (=> b!4302322 (allKeysSameHash!132 lt!1523946 lt!1523954 (hashF!6511 thiss!42308))))

(declare-fun lt!1523955 () Unit!66983)

(declare-fun lemmaRemovePairForKeyPreservesHash!118 (List!48124 K!9139 (_ BitVec 64) Hashable!4473) Unit!66983)

(assert (=> b!4302322 (= lt!1523955 (lemmaRemovePairForKeyPreservesHash!118 lt!1523952 key!2048 lt!1523954 (hashF!6511 thiss!42308)))))

(assert (=> b!4302322 (allKeysSameHash!132 lt!1523952 lt!1523954 (hashF!6511 thiss!42308))))

(declare-fun lt!1523947 () Unit!66983)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!123 (List!48125 (_ BitVec 64) List!48124 Hashable!4473) Unit!66983)

(assert (=> b!4302322 (= lt!1523947 (lemmaInLongMapAllKeySameHashThenForTuple!123 (toList!2239 lt!1523949) lt!1523954 lt!1523952 (hashF!6511 thiss!42308)))))

(declare-fun b!4302323 () Bool)

(declare-fun e!2674613 () Bool)

(declare-fun e!2674616 () Bool)

(assert (=> b!4302323 (= e!2674613 e!2674616)))

(declare-fun res!1763240 () Bool)

(declare-fun e!2674617 () Bool)

(assert (=> start!413180 (=> (not res!1763240) (not e!2674617))))

(get-info :version)

(assert (=> start!413180 (= res!1763240 ((_ is HashMap!4463) thiss!42308))))

(assert (=> start!413180 e!2674617))

(declare-fun e!2674621 () Bool)

(assert (=> start!413180 e!2674621))

(declare-fun tp_is_empty!23367 () Bool)

(assert (=> start!413180 tp_is_empty!23367))

(declare-fun tp_is_empty!23369 () Bool)

(assert (=> start!413180 tp_is_empty!23369))

(declare-fun mapIsEmpty!20446 () Bool)

(declare-fun mapRes!20446 () Bool)

(assert (=> mapIsEmpty!20446 mapRes!20446))

(declare-fun b!4302324 () Bool)

(declare-fun res!1763242 () Bool)

(assert (=> b!4302324 (=> res!1763242 e!2674620)))

(declare-fun allKeysSameHashInMap!281 (ListLongMap!847 Hashable!4473) Bool)

(assert (=> b!4302324 (= res!1763242 (not (allKeysSameHashInMap!281 lt!1523949 (hashF!6511 thiss!42308))))))

(declare-fun mapNonEmpty!20446 () Bool)

(declare-fun tp!1322016 () Bool)

(declare-fun tp!1322020 () Bool)

(assert (=> mapNonEmpty!20446 (= mapRes!20446 (and tp!1322016 tp!1322020))))

(declare-fun mapRest!20446 () (Array (_ BitVec 32) List!48124))

(declare-fun mapKey!20446 () (_ BitVec 32))

(declare-fun mapValue!20446 () List!48124)

(assert (=> mapNonEmpty!20446 (= (arr!7300 (_values!4838 (v!42002 (underlying!9343 (v!42003 (underlying!9344 thiss!42308)))))) (store mapRest!20446 mapKey!20446 mapValue!20446))))

(declare-fun b!4302325 () Bool)

(declare-fun e!2674611 () Bool)

(assert (=> b!4302325 (= e!2674617 e!2674611)))

(declare-fun res!1763237 () Bool)

(assert (=> b!4302325 (=> (not res!1763237) (not e!2674611))))

(declare-fun contains!9920 (MutableMap!4463 K!9139) Bool)

(assert (=> b!4302325 (= res!1763237 (contains!9920 thiss!42308 key!2048))))

(declare-fun map!9961 (MutLongMap!4557) ListLongMap!847)

(assert (=> b!4302325 (= lt!1523949 (map!9961 (v!42003 (underlying!9344 thiss!42308))))))

(declare-datatypes ((ListMap!1525 0))(
  ( (ListMap!1526 (toList!2240 List!48124)) )
))
(declare-fun lt!1523950 () ListMap!1525)

(declare-fun map!9962 (MutableMap!4463) ListMap!1525)

(assert (=> b!4302325 (= lt!1523950 (map!9962 thiss!42308))))

(declare-fun tp!1322018 () Bool)

(declare-fun tp!1322017 () Bool)

(declare-fun e!2674618 () Bool)

(declare-fun array_inv!5233 (array!16352) Bool)

(declare-fun array_inv!5234 (array!16354) Bool)

(assert (=> b!4302326 (= e!2674616 (and tp!1322021 tp!1322017 tp!1322018 (array_inv!5233 (_keys!4857 (v!42002 (underlying!9343 (v!42003 (underlying!9344 thiss!42308)))))) (array_inv!5234 (_values!4838 (v!42002 (underlying!9343 (v!42003 (underlying!9344 thiss!42308)))))) e!2674618))))

(declare-fun b!4302327 () Bool)

(declare-fun res!1763238 () Bool)

(assert (=> b!4302327 (=> (not res!1763238) (not e!2674612))))

(declare-fun containsKey!250 (List!48124 K!9139) Bool)

(assert (=> b!4302327 (= res!1763238 (not (containsKey!250 lt!1523946 key!2048)))))

(declare-fun e!2674615 () Bool)

(assert (=> b!4302328 (= e!2674621 (and e!2674615 tp!1322015))))

(declare-fun b!4302329 () Bool)

(declare-fun lt!1523948 () List!48124)

(assert (=> b!4302329 (= e!2674612 (noDuplicateKeys!162 lt!1523948))))

(declare-fun b!4302330 () Bool)

(assert (=> b!4302330 (= e!2674611 e!2674614)))

(declare-fun res!1763236 () Bool)

(assert (=> b!4302330 (=> (not res!1763236) (not e!2674614))))

(declare-datatypes ((tuple2!46066 0))(
  ( (tuple2!46067 (_1!26312 Bool) (_2!26312 MutLongMap!4557)) )
))
(declare-fun update!354 (MutLongMap!4557 (_ BitVec 64) List!48124) tuple2!46066)

(assert (=> b!4302330 (= res!1763236 (_1!26312 (update!354 (v!42003 (underlying!9344 thiss!42308)) lt!1523954 lt!1523948)))))

(declare-fun v!9179 () V!9341)

(assert (=> b!4302330 (= lt!1523948 (Cons!48000 (tuple2!46063 key!2048 v!9179) lt!1523946))))

(declare-fun removePairForKey!156 (List!48124 K!9139) List!48124)

(assert (=> b!4302330 (= lt!1523946 (removePairForKey!156 lt!1523952 key!2048))))

(declare-fun apply!10901 (MutLongMap!4557 (_ BitVec 64)) List!48124)

(assert (=> b!4302330 (= lt!1523952 (apply!10901 (v!42003 (underlying!9344 thiss!42308)) lt!1523954))))

(declare-fun hash!862 (Hashable!4473 K!9139) (_ BitVec 64))

(assert (=> b!4302330 (= lt!1523954 (hash!862 (hashF!6511 thiss!42308) key!2048))))

(declare-fun b!4302331 () Bool)

(declare-fun res!1763241 () Bool)

(assert (=> b!4302331 (=> res!1763241 e!2674620)))

(assert (=> b!4302331 (= res!1763241 (not (allKeysSameHash!132 lt!1523948 lt!1523954 (hashF!6511 thiss!42308))))))

(declare-fun b!4302332 () Bool)

(declare-fun e!2674622 () Bool)

(assert (=> b!4302332 (= e!2674622 e!2674613)))

(declare-fun b!4302333 () Bool)

(declare-fun tp!1322019 () Bool)

(assert (=> b!4302333 (= e!2674618 (and tp!1322019 mapRes!20446))))

(declare-fun condMapEmpty!20446 () Bool)

(declare-fun mapDefault!20446 () List!48124)

(assert (=> b!4302333 (= condMapEmpty!20446 (= (arr!7300 (_values!4838 (v!42002 (underlying!9343 (v!42003 (underlying!9344 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48124)) mapDefault!20446)))))

(declare-fun b!4302334 () Bool)

(declare-fun lt!1523951 () MutLongMap!4557)

(assert (=> b!4302334 (= e!2674615 (and e!2674622 ((_ is LongMap!4557) lt!1523951)))))

(assert (=> b!4302334 (= lt!1523951 (v!42003 (underlying!9344 thiss!42308)))))

(declare-fun b!4302335 () Bool)

(declare-fun res!1763239 () Bool)

(assert (=> b!4302335 (=> (not res!1763239) (not e!2674617))))

(declare-fun valid!3541 (MutableMap!4463) Bool)

(assert (=> b!4302335 (= res!1763239 (valid!3541 thiss!42308))))

(assert (= (and start!413180 res!1763240) b!4302335))

(assert (= (and b!4302335 res!1763239) b!4302325))

(assert (= (and b!4302325 res!1763237) b!4302330))

(assert (= (and b!4302330 res!1763236) b!4302322))

(assert (= (and b!4302322 res!1763235) b!4302327))

(assert (= (and b!4302327 res!1763238) b!4302329))

(assert (= (and b!4302322 (not res!1763243)) b!4302324))

(assert (= (and b!4302324 (not res!1763242)) b!4302331))

(assert (= (and b!4302331 (not res!1763241)) b!4302321))

(assert (= (and b!4302333 condMapEmpty!20446) mapIsEmpty!20446))

(assert (= (and b!4302333 (not condMapEmpty!20446)) mapNonEmpty!20446))

(assert (= b!4302326 b!4302333))

(assert (= b!4302323 b!4302326))

(assert (= b!4302332 b!4302323))

(assert (= (and b!4302334 ((_ is LongMap!4557) (v!42003 (underlying!9344 thiss!42308)))) b!4302332))

(assert (= b!4302328 b!4302334))

(assert (= (and start!413180 ((_ is HashMap!4463) thiss!42308)) b!4302328))

(declare-fun m!4894407 () Bool)

(assert (=> mapNonEmpty!20446 m!4894407))

(declare-fun m!4894409 () Bool)

(assert (=> b!4302329 m!4894409))

(declare-fun m!4894411 () Bool)

(assert (=> b!4302326 m!4894411))

(declare-fun m!4894413 () Bool)

(assert (=> b!4302326 m!4894413))

(declare-fun m!4894415 () Bool)

(assert (=> b!4302335 m!4894415))

(declare-fun m!4894417 () Bool)

(assert (=> b!4302322 m!4894417))

(declare-fun m!4894419 () Bool)

(assert (=> b!4302322 m!4894419))

(declare-fun m!4894421 () Bool)

(assert (=> b!4302322 m!4894421))

(declare-fun m!4894423 () Bool)

(assert (=> b!4302322 m!4894423))

(declare-fun m!4894425 () Bool)

(assert (=> b!4302322 m!4894425))

(declare-fun m!4894427 () Bool)

(assert (=> b!4302322 m!4894427))

(declare-fun m!4894429 () Bool)

(assert (=> b!4302322 m!4894429))

(declare-fun m!4894431 () Bool)

(assert (=> b!4302331 m!4894431))

(declare-fun m!4894433 () Bool)

(assert (=> b!4302330 m!4894433))

(declare-fun m!4894435 () Bool)

(assert (=> b!4302330 m!4894435))

(declare-fun m!4894437 () Bool)

(assert (=> b!4302330 m!4894437))

(declare-fun m!4894439 () Bool)

(assert (=> b!4302330 m!4894439))

(declare-fun m!4894441 () Bool)

(assert (=> b!4302325 m!4894441))

(declare-fun m!4894443 () Bool)

(assert (=> b!4302325 m!4894443))

(declare-fun m!4894445 () Bool)

(assert (=> b!4302325 m!4894445))

(assert (=> b!4302321 m!4894425))

(declare-fun m!4894447 () Bool)

(assert (=> b!4302327 m!4894447))

(declare-fun m!4894449 () Bool)

(assert (=> b!4302324 m!4894449))

(check-sat (not b!4302325) (not mapNonEmpty!20446) (not b!4302331) (not b!4302326) tp_is_empty!23369 (not b!4302321) (not b_next!128893) (not b!4302335) (not b!4302333) (not b!4302324) (not b!4302329) b_and!339575 tp_is_empty!23367 (not b_next!128891) (not b!4302330) b_and!339573 (not b!4302327) (not b!4302322))
(check-sat b_and!339573 b_and!339575 (not b_next!128893) (not b_next!128891))
