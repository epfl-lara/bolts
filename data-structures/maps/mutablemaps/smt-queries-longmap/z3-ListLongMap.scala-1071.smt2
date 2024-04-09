; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22122 () Bool)

(assert start!22122)

(declare-fun b!229939 () Bool)

(declare-fun b_free!6177 () Bool)

(declare-fun b_next!6177 () Bool)

(assert (=> b!229939 (= b_free!6177 (not b_next!6177))))

(declare-fun tp!21672 () Bool)

(declare-fun b_and!13093 () Bool)

(assert (=> b!229939 (= tp!21672 b_and!13093)))

(declare-fun b!229936 () Bool)

(declare-fun e!149209 () Bool)

(assert (=> b!229936 (= e!149209 (not true))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((array!11320 0))(
  ( (array!11321 (arr!5379 (Array (_ BitVec 32) (_ BitVec 64))) (size!5712 (_ BitVec 32))) )
))
(declare-fun lt!115730 () array!11320)

(declare-datatypes ((V!7699 0))(
  ( (V!7700 (val!3064 Int)) )
))
(declare-datatypes ((ValueCell!2676 0))(
  ( (ValueCellFull!2676 (v!5080 V!7699)) (EmptyCell!2676) )
))
(declare-datatypes ((array!11322 0))(
  ( (array!11323 (arr!5380 (Array (_ BitVec 32) ValueCell!2676)) (size!5713 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3252 0))(
  ( (LongMapFixedSize!3253 (defaultEntry!4285 Int) (mask!10171 (_ BitVec 32)) (extraKeys!4022 (_ BitVec 32)) (zeroValue!4126 V!7699) (minValue!4126 V!7699) (_size!1675 (_ BitVec 32)) (_keys!6339 array!11320) (_values!4268 array!11322) (_vacant!1675 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3252)

(declare-fun v!346 () V!7699)

(declare-datatypes ((tuple2!4516 0))(
  ( (tuple2!4517 (_1!2268 (_ BitVec 64)) (_2!2268 V!7699)) )
))
(declare-datatypes ((List!3464 0))(
  ( (Nil!3461) (Cons!3460 (h!4108 tuple2!4516) (t!8431 List!3464)) )
))
(declare-datatypes ((ListLongMap!3443 0))(
  ( (ListLongMap!3444 (toList!1737 List!3464)) )
))
(declare-fun lt!115731 () ListLongMap!3443)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun +!596 (ListLongMap!3443 tuple2!4516) ListLongMap!3443)

(declare-fun getCurrentListMap!1260 (array!11320 array!11322 (_ BitVec 32) (_ BitVec 32) V!7699 V!7699 (_ BitVec 32) Int) ListLongMap!3443)

(assert (=> b!229936 (= (+!596 lt!115731 (tuple2!4517 key!932 v!346)) (getCurrentListMap!1260 lt!115730 (array!11323 (store (arr!5380 (_values!4268 thiss!1504)) index!297 (ValueCellFull!2676 v!346)) (size!5713 (_values!4268 thiss!1504))) (mask!10171 thiss!1504) (extraKeys!4022 thiss!1504) (zeroValue!4126 thiss!1504) (minValue!4126 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4285 thiss!1504)))))

(declare-datatypes ((Unit!7025 0))(
  ( (Unit!7026) )
))
(declare-fun lt!115722 () Unit!7025)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!55 (array!11320 array!11322 (_ BitVec 32) (_ BitVec 32) V!7699 V!7699 (_ BitVec 32) (_ BitVec 64) V!7699 Int) Unit!7025)

(assert (=> b!229936 (= lt!115722 (lemmaAddValidKeyToArrayThenAddPairToListMap!55 (_keys!6339 thiss!1504) (_values!4268 thiss!1504) (mask!10171 thiss!1504) (extraKeys!4022 thiss!1504) (zeroValue!4126 thiss!1504) (minValue!4126 thiss!1504) index!297 key!932 v!346 (defaultEntry!4285 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11320 (_ BitVec 32)) Bool)

(assert (=> b!229936 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!115730 (mask!10171 thiss!1504))))

(declare-fun lt!115728 () Unit!7025)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11320 (_ BitVec 32) (_ BitVec 32)) Unit!7025)

(assert (=> b!229936 (= lt!115728 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6339 thiss!1504) index!297 (mask!10171 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11320 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!229936 (= (arrayCountValidKeys!0 lt!115730 #b00000000000000000000000000000000 (size!5712 (_keys!6339 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6339 thiss!1504) #b00000000000000000000000000000000 (size!5712 (_keys!6339 thiss!1504)))))))

(declare-fun lt!115724 () Unit!7025)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11320 (_ BitVec 32) (_ BitVec 64)) Unit!7025)

(assert (=> b!229936 (= lt!115724 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6339 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3465 0))(
  ( (Nil!3462) (Cons!3461 (h!4109 (_ BitVec 64)) (t!8432 List!3465)) )
))
(declare-fun arrayNoDuplicates!0 (array!11320 (_ BitVec 32) List!3465) Bool)

(assert (=> b!229936 (arrayNoDuplicates!0 lt!115730 #b00000000000000000000000000000000 Nil!3462)))

(assert (=> b!229936 (= lt!115730 (array!11321 (store (arr!5379 (_keys!6339 thiss!1504)) index!297 key!932) (size!5712 (_keys!6339 thiss!1504))))))

(declare-fun lt!115723 () Unit!7025)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11320 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3465) Unit!7025)

(assert (=> b!229936 (= lt!115723 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6339 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3462))))

(declare-fun lt!115727 () Unit!7025)

(declare-fun e!149205 () Unit!7025)

(assert (=> b!229936 (= lt!115727 e!149205)))

(declare-fun c!38139 () Bool)

(declare-fun arrayContainsKey!0 (array!11320 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!229936 (= c!38139 (arrayContainsKey!0 (_keys!6339 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!229937 () Bool)

(declare-fun res!113149 () Bool)

(declare-fun e!149204 () Bool)

(assert (=> b!229937 (=> (not res!113149) (not e!149204))))

(declare-datatypes ((SeekEntryResult!940 0))(
  ( (MissingZero!940 (index!5930 (_ BitVec 32))) (Found!940 (index!5931 (_ BitVec 32))) (Intermediate!940 (undefined!1752 Bool) (index!5932 (_ BitVec 32)) (x!23424 (_ BitVec 32))) (Undefined!940) (MissingVacant!940 (index!5933 (_ BitVec 32))) )
))
(declare-fun lt!115721 () SeekEntryResult!940)

(assert (=> b!229937 (= res!113149 (= (select (arr!5379 (_keys!6339 thiss!1504)) (index!5930 lt!115721)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!229938 () Bool)

(declare-fun res!113155 () Bool)

(declare-fun e!149213 () Bool)

(assert (=> b!229938 (=> (not res!113155) (not e!149213))))

(assert (=> b!229938 (= res!113155 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!149211 () Bool)

(declare-fun e!149208 () Bool)

(declare-fun tp_is_empty!6039 () Bool)

(declare-fun array_inv!3541 (array!11320) Bool)

(declare-fun array_inv!3542 (array!11322) Bool)

(assert (=> b!229939 (= e!149211 (and tp!21672 tp_is_empty!6039 (array_inv!3541 (_keys!6339 thiss!1504)) (array_inv!3542 (_values!4268 thiss!1504)) e!149208))))

(declare-fun b!229940 () Bool)

(declare-fun e!149215 () Bool)

(assert (=> b!229940 (= e!149215 tp_is_empty!6039)))

(declare-fun b!229941 () Bool)

(declare-fun c!38141 () Bool)

(get-info :version)

(assert (=> b!229941 (= c!38141 ((_ is MissingVacant!940) lt!115721))))

(declare-fun e!149212 () Bool)

(declare-fun e!149206 () Bool)

(assert (=> b!229941 (= e!149212 e!149206)))

(declare-fun b!229942 () Bool)

(declare-fun res!113154 () Bool)

(assert (=> b!229942 (= res!113154 (= (select (arr!5379 (_keys!6339 thiss!1504)) (index!5933 lt!115721)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!149214 () Bool)

(assert (=> b!229942 (=> (not res!113154) (not e!149214))))

(declare-fun res!113150 () Bool)

(assert (=> start!22122 (=> (not res!113150) (not e!149213))))

(declare-fun valid!1289 (LongMapFixedSize!3252) Bool)

(assert (=> start!22122 (= res!113150 (valid!1289 thiss!1504))))

(assert (=> start!22122 e!149213))

(assert (=> start!22122 e!149211))

(assert (=> start!22122 true))

(assert (=> start!22122 tp_is_empty!6039))

(declare-fun mapIsEmpty!10228 () Bool)

(declare-fun mapRes!10228 () Bool)

(assert (=> mapIsEmpty!10228 mapRes!10228))

(declare-fun b!229943 () Bool)

(declare-fun e!149207 () Bool)

(assert (=> b!229943 (= e!149207 e!149209)))

(declare-fun res!113148 () Bool)

(assert (=> b!229943 (=> (not res!113148) (not e!149209))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!229943 (= res!113148 (inRange!0 index!297 (mask!10171 thiss!1504)))))

(declare-fun lt!115725 () Unit!7025)

(declare-fun e!149203 () Unit!7025)

(assert (=> b!229943 (= lt!115725 e!149203)))

(declare-fun c!38140 () Bool)

(declare-fun contains!1604 (ListLongMap!3443 (_ BitVec 64)) Bool)

(assert (=> b!229943 (= c!38140 (contains!1604 lt!115731 key!932))))

(assert (=> b!229943 (= lt!115731 (getCurrentListMap!1260 (_keys!6339 thiss!1504) (_values!4268 thiss!1504) (mask!10171 thiss!1504) (extraKeys!4022 thiss!1504) (zeroValue!4126 thiss!1504) (minValue!4126 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4285 thiss!1504)))))

(declare-fun b!229944 () Bool)

(declare-fun call!21363 () Bool)

(assert (=> b!229944 (= e!149204 (not call!21363))))

(declare-fun b!229945 () Bool)

(declare-fun Unit!7027 () Unit!7025)

(assert (=> b!229945 (= e!149205 Unit!7027)))

(declare-fun b!229946 () Bool)

(declare-fun e!149210 () Bool)

(assert (=> b!229946 (= e!149210 tp_is_empty!6039)))

(declare-fun b!229947 () Bool)

(declare-fun Unit!7028 () Unit!7025)

(assert (=> b!229947 (= e!149205 Unit!7028)))

(declare-fun lt!115720 () Unit!7025)

(declare-fun lemmaArrayContainsKeyThenInListMap!120 (array!11320 array!11322 (_ BitVec 32) (_ BitVec 32) V!7699 V!7699 (_ BitVec 64) (_ BitVec 32) Int) Unit!7025)

(assert (=> b!229947 (= lt!115720 (lemmaArrayContainsKeyThenInListMap!120 (_keys!6339 thiss!1504) (_values!4268 thiss!1504) (mask!10171 thiss!1504) (extraKeys!4022 thiss!1504) (zeroValue!4126 thiss!1504) (minValue!4126 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4285 thiss!1504)))))

(assert (=> b!229947 false))

(declare-fun b!229948 () Bool)

(assert (=> b!229948 (= e!149206 e!149214)))

(declare-fun res!113151 () Bool)

(declare-fun call!21364 () Bool)

(assert (=> b!229948 (= res!113151 call!21364)))

(assert (=> b!229948 (=> (not res!113151) (not e!149214))))

(declare-fun b!229949 () Bool)

(assert (=> b!229949 (= e!149206 ((_ is Undefined!940) lt!115721))))

(declare-fun b!229950 () Bool)

(assert (=> b!229950 (= e!149208 (and e!149210 mapRes!10228))))

(declare-fun condMapEmpty!10228 () Bool)

(declare-fun mapDefault!10228 () ValueCell!2676)

(assert (=> b!229950 (= condMapEmpty!10228 (= (arr!5380 (_values!4268 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2676)) mapDefault!10228)))))

(declare-fun mapNonEmpty!10228 () Bool)

(declare-fun tp!21673 () Bool)

(assert (=> mapNonEmpty!10228 (= mapRes!10228 (and tp!21673 e!149215))))

(declare-fun mapValue!10228 () ValueCell!2676)

(declare-fun mapKey!10228 () (_ BitVec 32))

(declare-fun mapRest!10228 () (Array (_ BitVec 32) ValueCell!2676))

(assert (=> mapNonEmpty!10228 (= (arr!5380 (_values!4268 thiss!1504)) (store mapRest!10228 mapKey!10228 mapValue!10228))))

(declare-fun b!229951 () Bool)

(declare-fun res!113153 () Bool)

(assert (=> b!229951 (=> (not res!113153) (not e!149204))))

(assert (=> b!229951 (= res!113153 call!21364)))

(assert (=> b!229951 (= e!149212 e!149204)))

(declare-fun bm!21360 () Bool)

(assert (=> bm!21360 (= call!21363 (arrayContainsKey!0 (_keys!6339 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!229952 () Bool)

(assert (=> b!229952 (= e!149214 (not call!21363))))

(declare-fun b!229953 () Bool)

(declare-fun Unit!7029 () Unit!7025)

(assert (=> b!229953 (= e!149203 Unit!7029)))

(declare-fun lt!115729 () Unit!7025)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!287 (array!11320 array!11322 (_ BitVec 32) (_ BitVec 32) V!7699 V!7699 (_ BitVec 64) Int) Unit!7025)

(assert (=> b!229953 (= lt!115729 (lemmaInListMapThenSeekEntryOrOpenFindsIt!287 (_keys!6339 thiss!1504) (_values!4268 thiss!1504) (mask!10171 thiss!1504) (extraKeys!4022 thiss!1504) (zeroValue!4126 thiss!1504) (minValue!4126 thiss!1504) key!932 (defaultEntry!4285 thiss!1504)))))

(assert (=> b!229953 false))

(declare-fun bm!21361 () Bool)

(declare-fun c!38138 () Bool)

(assert (=> bm!21361 (= call!21364 (inRange!0 (ite c!38138 (index!5930 lt!115721) (index!5933 lt!115721)) (mask!10171 thiss!1504)))))

(declare-fun b!229954 () Bool)

(assert (=> b!229954 (= e!149213 e!149207)))

(declare-fun res!113152 () Bool)

(assert (=> b!229954 (=> (not res!113152) (not e!149207))))

(assert (=> b!229954 (= res!113152 (or (= lt!115721 (MissingZero!940 index!297)) (= lt!115721 (MissingVacant!940 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11320 (_ BitVec 32)) SeekEntryResult!940)

(assert (=> b!229954 (= lt!115721 (seekEntryOrOpen!0 key!932 (_keys!6339 thiss!1504) (mask!10171 thiss!1504)))))

(declare-fun b!229955 () Bool)

(declare-fun lt!115726 () Unit!7025)

(assert (=> b!229955 (= e!149203 lt!115726)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!301 (array!11320 array!11322 (_ BitVec 32) (_ BitVec 32) V!7699 V!7699 (_ BitVec 64) Int) Unit!7025)

(assert (=> b!229955 (= lt!115726 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!301 (_keys!6339 thiss!1504) (_values!4268 thiss!1504) (mask!10171 thiss!1504) (extraKeys!4022 thiss!1504) (zeroValue!4126 thiss!1504) (minValue!4126 thiss!1504) key!932 (defaultEntry!4285 thiss!1504)))))

(assert (=> b!229955 (= c!38138 ((_ is MissingZero!940) lt!115721))))

(assert (=> b!229955 e!149212))

(assert (= (and start!22122 res!113150) b!229938))

(assert (= (and b!229938 res!113155) b!229954))

(assert (= (and b!229954 res!113152) b!229943))

(assert (= (and b!229943 c!38140) b!229953))

(assert (= (and b!229943 (not c!38140)) b!229955))

(assert (= (and b!229955 c!38138) b!229951))

(assert (= (and b!229955 (not c!38138)) b!229941))

(assert (= (and b!229951 res!113153) b!229937))

(assert (= (and b!229937 res!113149) b!229944))

(assert (= (and b!229941 c!38141) b!229948))

(assert (= (and b!229941 (not c!38141)) b!229949))

(assert (= (and b!229948 res!113151) b!229942))

(assert (= (and b!229942 res!113154) b!229952))

(assert (= (or b!229951 b!229948) bm!21361))

(assert (= (or b!229944 b!229952) bm!21360))

(assert (= (and b!229943 res!113148) b!229936))

(assert (= (and b!229936 c!38139) b!229947))

(assert (= (and b!229936 (not c!38139)) b!229945))

(assert (= (and b!229950 condMapEmpty!10228) mapIsEmpty!10228))

(assert (= (and b!229950 (not condMapEmpty!10228)) mapNonEmpty!10228))

(assert (= (and mapNonEmpty!10228 ((_ is ValueCellFull!2676) mapValue!10228)) b!229940))

(assert (= (and b!229950 ((_ is ValueCellFull!2676) mapDefault!10228)) b!229946))

(assert (= b!229939 b!229950))

(assert (= start!22122 b!229939))

(declare-fun m!251377 () Bool)

(assert (=> b!229939 m!251377))

(declare-fun m!251379 () Bool)

(assert (=> b!229939 m!251379))

(declare-fun m!251381 () Bool)

(assert (=> mapNonEmpty!10228 m!251381))

(declare-fun m!251383 () Bool)

(assert (=> b!229955 m!251383))

(declare-fun m!251385 () Bool)

(assert (=> b!229937 m!251385))

(declare-fun m!251387 () Bool)

(assert (=> b!229953 m!251387))

(declare-fun m!251389 () Bool)

(assert (=> b!229936 m!251389))

(declare-fun m!251391 () Bool)

(assert (=> b!229936 m!251391))

(declare-fun m!251393 () Bool)

(assert (=> b!229936 m!251393))

(declare-fun m!251395 () Bool)

(assert (=> b!229936 m!251395))

(declare-fun m!251397 () Bool)

(assert (=> b!229936 m!251397))

(declare-fun m!251399 () Bool)

(assert (=> b!229936 m!251399))

(declare-fun m!251401 () Bool)

(assert (=> b!229936 m!251401))

(declare-fun m!251403 () Bool)

(assert (=> b!229936 m!251403))

(declare-fun m!251405 () Bool)

(assert (=> b!229936 m!251405))

(declare-fun m!251407 () Bool)

(assert (=> b!229936 m!251407))

(declare-fun m!251409 () Bool)

(assert (=> b!229936 m!251409))

(declare-fun m!251411 () Bool)

(assert (=> b!229936 m!251411))

(declare-fun m!251413 () Bool)

(assert (=> b!229936 m!251413))

(declare-fun m!251415 () Bool)

(assert (=> start!22122 m!251415))

(declare-fun m!251417 () Bool)

(assert (=> b!229947 m!251417))

(declare-fun m!251419 () Bool)

(assert (=> bm!21361 m!251419))

(declare-fun m!251421 () Bool)

(assert (=> b!229942 m!251421))

(declare-fun m!251423 () Bool)

(assert (=> b!229943 m!251423))

(declare-fun m!251425 () Bool)

(assert (=> b!229943 m!251425))

(declare-fun m!251427 () Bool)

(assert (=> b!229943 m!251427))

(declare-fun m!251429 () Bool)

(assert (=> b!229954 m!251429))

(assert (=> bm!21360 m!251389))

(check-sat (not bm!21361) (not b!229943) (not b!229953) (not bm!21360) b_and!13093 (not b!229954) (not b!229947) (not b_next!6177) tp_is_empty!6039 (not mapNonEmpty!10228) (not b!229936) (not b!229939) (not start!22122) (not b!229955))
(check-sat b_and!13093 (not b_next!6177))
