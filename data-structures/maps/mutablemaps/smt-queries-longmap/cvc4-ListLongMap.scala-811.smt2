; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19742 () Bool)

(assert start!19742)

(declare-fun b!193350 () Bool)

(declare-fun b_free!4709 () Bool)

(declare-fun b_next!4709 () Bool)

(assert (=> b!193350 (= b_free!4709 (not b_next!4709))))

(declare-fun tp!16990 () Bool)

(declare-fun b_and!11433 () Bool)

(assert (=> b!193350 (= tp!16990 b_and!11433)))

(declare-fun b!193337 () Bool)

(declare-fun res!91378 () Bool)

(declare-fun e!127225 () Bool)

(assert (=> b!193337 (=> res!91378 e!127225)))

(declare-datatypes ((V!5621 0))(
  ( (V!5622 (val!2285 Int)) )
))
(declare-datatypes ((ValueCell!1897 0))(
  ( (ValueCellFull!1897 (v!4237 V!5621)) (EmptyCell!1897) )
))
(declare-datatypes ((array!8208 0))(
  ( (array!8209 (arr!3864 (Array (_ BitVec 32) (_ BitVec 64))) (size!4188 (_ BitVec 32))) )
))
(declare-datatypes ((array!8210 0))(
  ( (array!8211 (arr!3865 (Array (_ BitVec 32) ValueCell!1897)) (size!4189 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2702 0))(
  ( (LongMapFixedSize!2703 (defaultEntry!3947 Int) (mask!9198 (_ BitVec 32)) (extraKeys!3684 (_ BitVec 32)) (zeroValue!3788 V!5621) (minValue!3788 V!5621) (_size!1400 (_ BitVec 32)) (_keys!5937 array!8208) (_values!3930 array!8210) (_vacant!1400 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2702)

(assert (=> b!193337 (= res!91378 (or (not (= (size!4189 (_values!3930 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!9198 thiss!1248)))) (not (= (size!4188 (_keys!5937 thiss!1248)) (size!4189 (_values!3930 thiss!1248)))) (bvslt (mask!9198 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3684 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3684 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!193338 () Bool)

(declare-fun e!127228 () Bool)

(declare-fun e!127229 () Bool)

(assert (=> b!193338 (= e!127228 e!127229)))

(declare-fun res!91383 () Bool)

(assert (=> b!193338 (=> (not res!91383) (not e!127229))))

(declare-datatypes ((SeekEntryResult!699 0))(
  ( (MissingZero!699 (index!4966 (_ BitVec 32))) (Found!699 (index!4967 (_ BitVec 32))) (Intermediate!699 (undefined!1511 Bool) (index!4968 (_ BitVec 32)) (x!20659 (_ BitVec 32))) (Undefined!699) (MissingVacant!699 (index!4969 (_ BitVec 32))) )
))
(declare-fun lt!96278 () SeekEntryResult!699)

(assert (=> b!193338 (= res!91383 (and (not (is-Undefined!699 lt!96278)) (not (is-MissingVacant!699 lt!96278)) (not (is-MissingZero!699 lt!96278)) (is-Found!699 lt!96278)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8208 (_ BitVec 32)) SeekEntryResult!699)

(assert (=> b!193338 (= lt!96278 (seekEntryOrOpen!0 key!828 (_keys!5937 thiss!1248) (mask!9198 thiss!1248)))))

(declare-fun e!127224 () Bool)

(declare-fun b!193339 () Bool)

(assert (=> b!193339 (= e!127224 (= (select (arr!3864 (_keys!5937 thiss!1248)) (index!4967 lt!96278)) key!828))))

(declare-fun b!193340 () Bool)

(declare-fun res!91379 () Bool)

(assert (=> b!193340 (=> res!91379 e!127225)))

(declare-datatypes ((List!2461 0))(
  ( (Nil!2458) (Cons!2457 (h!3098 (_ BitVec 64)) (t!7391 List!2461)) )
))
(declare-fun arrayNoDuplicates!0 (array!8208 (_ BitVec 32) List!2461) Bool)

(assert (=> b!193340 (= res!91379 (not (arrayNoDuplicates!0 (_keys!5937 thiss!1248) #b00000000000000000000000000000000 Nil!2458)))))

(declare-fun b!193341 () Bool)

(declare-fun res!91381 () Bool)

(assert (=> b!193341 (=> res!91381 e!127225)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8208 (_ BitVec 32)) Bool)

(assert (=> b!193341 (= res!91381 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5937 thiss!1248) (mask!9198 thiss!1248))))))

(declare-fun b!193342 () Bool)

(declare-fun res!91382 () Bool)

(assert (=> b!193342 (=> (not res!91382) (not e!127228))))

(assert (=> b!193342 (= res!91382 (not (= key!828 (bvneg key!828))))))

(declare-fun mapIsEmpty!7748 () Bool)

(declare-fun mapRes!7748 () Bool)

(assert (=> mapIsEmpty!7748 mapRes!7748))

(declare-fun b!193344 () Bool)

(assert (=> b!193344 (= e!127229 (not e!127225))))

(declare-fun res!91384 () Bool)

(assert (=> b!193344 (=> res!91384 e!127225)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!193344 (= res!91384 (not (validMask!0 (mask!9198 thiss!1248))))))

(declare-fun v!309 () V!5621)

(declare-datatypes ((tuple2!3546 0))(
  ( (tuple2!3547 (_1!1783 (_ BitVec 64)) (_2!1783 V!5621)) )
))
(declare-datatypes ((List!2462 0))(
  ( (Nil!2459) (Cons!2458 (h!3099 tuple2!3546) (t!7392 List!2462)) )
))
(declare-datatypes ((ListLongMap!2477 0))(
  ( (ListLongMap!2478 (toList!1254 List!2462)) )
))
(declare-fun lt!96279 () ListLongMap!2477)

(declare-fun +!312 (ListLongMap!2477 tuple2!3546) ListLongMap!2477)

(declare-fun getCurrentListMap!897 (array!8208 array!8210 (_ BitVec 32) (_ BitVec 32) V!5621 V!5621 (_ BitVec 32) Int) ListLongMap!2477)

(assert (=> b!193344 (= (+!312 lt!96279 (tuple2!3547 key!828 v!309)) (getCurrentListMap!897 (_keys!5937 thiss!1248) (array!8211 (store (arr!3865 (_values!3930 thiss!1248)) (index!4967 lt!96278) (ValueCellFull!1897 v!309)) (size!4189 (_values!3930 thiss!1248))) (mask!9198 thiss!1248) (extraKeys!3684 thiss!1248) (zeroValue!3788 thiss!1248) (minValue!3788 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3947 thiss!1248)))))

(declare-datatypes ((Unit!5856 0))(
  ( (Unit!5857) )
))
(declare-fun lt!96277 () Unit!5856)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!118 (array!8208 array!8210 (_ BitVec 32) (_ BitVec 32) V!5621 V!5621 (_ BitVec 32) (_ BitVec 64) V!5621 Int) Unit!5856)

(assert (=> b!193344 (= lt!96277 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!118 (_keys!5937 thiss!1248) (_values!3930 thiss!1248) (mask!9198 thiss!1248) (extraKeys!3684 thiss!1248) (zeroValue!3788 thiss!1248) (minValue!3788 thiss!1248) (index!4967 lt!96278) key!828 v!309 (defaultEntry!3947 thiss!1248)))))

(declare-fun lt!96280 () Unit!5856)

(declare-fun e!127231 () Unit!5856)

(assert (=> b!193344 (= lt!96280 e!127231)))

(declare-fun c!34852 () Bool)

(declare-fun contains!1369 (ListLongMap!2477 (_ BitVec 64)) Bool)

(assert (=> b!193344 (= c!34852 (contains!1369 lt!96279 key!828))))

(assert (=> b!193344 (= lt!96279 (getCurrentListMap!897 (_keys!5937 thiss!1248) (_values!3930 thiss!1248) (mask!9198 thiss!1248) (extraKeys!3684 thiss!1248) (zeroValue!3788 thiss!1248) (minValue!3788 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3947 thiss!1248)))))

(declare-fun b!193345 () Bool)

(declare-fun e!127230 () Bool)

(declare-fun tp_is_empty!4481 () Bool)

(assert (=> b!193345 (= e!127230 tp_is_empty!4481)))

(declare-fun b!193346 () Bool)

(declare-fun lt!96281 () Unit!5856)

(assert (=> b!193346 (= e!127231 lt!96281)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!184 (array!8208 array!8210 (_ BitVec 32) (_ BitVec 32) V!5621 V!5621 (_ BitVec 64) Int) Unit!5856)

(assert (=> b!193346 (= lt!96281 (lemmaInListMapThenSeekEntryOrOpenFindsIt!184 (_keys!5937 thiss!1248) (_values!3930 thiss!1248) (mask!9198 thiss!1248) (extraKeys!3684 thiss!1248) (zeroValue!3788 thiss!1248) (minValue!3788 thiss!1248) key!828 (defaultEntry!3947 thiss!1248)))))

(declare-fun res!91377 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!193346 (= res!91377 (inRange!0 (index!4967 lt!96278) (mask!9198 thiss!1248)))))

(assert (=> b!193346 (=> (not res!91377) (not e!127224))))

(assert (=> b!193346 e!127224))

(declare-fun b!193347 () Bool)

(declare-fun e!127223 () Bool)

(assert (=> b!193347 (= e!127223 (and e!127230 mapRes!7748))))

(declare-fun condMapEmpty!7748 () Bool)

(declare-fun mapDefault!7748 () ValueCell!1897)

