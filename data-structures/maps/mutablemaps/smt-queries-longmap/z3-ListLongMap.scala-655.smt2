; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16292 () Bool)

(assert start!16292)

(declare-fun b!162373 () Bool)

(declare-fun b_free!3741 () Bool)

(declare-fun b_next!3741 () Bool)

(assert (=> b!162373 (= b_free!3741 (not b_next!3741))))

(declare-fun tp!13793 () Bool)

(declare-fun b_and!10173 () Bool)

(assert (=> b!162373 (= tp!13793 b_and!10173)))

(declare-fun b!162369 () Bool)

(declare-fun res!76902 () Bool)

(declare-fun e!106411 () Bool)

(assert (=> b!162369 (=> (not res!76902) (not e!106411))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!162369 (= res!76902 (not (= key!828 (bvneg key!828))))))

(declare-fun b!162370 () Bool)

(declare-fun e!106409 () Bool)

(declare-fun tp_is_empty!3543 () Bool)

(assert (=> b!162370 (= e!106409 tp_is_empty!3543)))

(declare-fun mapNonEmpty!6002 () Bool)

(declare-fun mapRes!6002 () Bool)

(declare-fun tp!13792 () Bool)

(assert (=> mapNonEmpty!6002 (= mapRes!6002 (and tp!13792 e!106409))))

(declare-datatypes ((V!4371 0))(
  ( (V!4372 (val!1816 Int)) )
))
(declare-datatypes ((ValueCell!1428 0))(
  ( (ValueCellFull!1428 (v!3677 V!4371)) (EmptyCell!1428) )
))
(declare-fun mapRest!6002 () (Array (_ BitVec 32) ValueCell!1428))

(declare-fun mapKey!6002 () (_ BitVec 32))

(declare-datatypes ((array!6164 0))(
  ( (array!6165 (arr!2926 (Array (_ BitVec 32) (_ BitVec 64))) (size!3210 (_ BitVec 32))) )
))
(declare-datatypes ((array!6166 0))(
  ( (array!6167 (arr!2927 (Array (_ BitVec 32) ValueCell!1428)) (size!3211 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1764 0))(
  ( (LongMapFixedSize!1765 (defaultEntry!3324 Int) (mask!7946 (_ BitVec 32)) (extraKeys!3065 (_ BitVec 32)) (zeroValue!3167 V!4371) (minValue!3167 V!4371) (_size!931 (_ BitVec 32)) (_keys!5125 array!6164) (_values!3307 array!6166) (_vacant!931 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1764)

(declare-fun mapValue!6002 () ValueCell!1428)

(assert (=> mapNonEmpty!6002 (= (arr!2927 (_values!3307 thiss!1248)) (store mapRest!6002 mapKey!6002 mapValue!6002))))

(declare-fun b!162371 () Bool)

(declare-fun e!106415 () Bool)

(declare-fun e!106414 () Bool)

(assert (=> b!162371 (= e!106415 (and e!106414 mapRes!6002))))

(declare-fun condMapEmpty!6002 () Bool)

(declare-fun mapDefault!6002 () ValueCell!1428)

(assert (=> b!162371 (= condMapEmpty!6002 (= (arr!2927 (_values!3307 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1428)) mapDefault!6002)))))

(declare-fun b!162372 () Bool)

(declare-fun e!106413 () Bool)

(assert (=> b!162372 (= e!106411 e!106413)))

(declare-fun res!76903 () Bool)

(assert (=> b!162372 (=> (not res!76903) (not e!106413))))

(declare-datatypes ((SeekEntryResult!392 0))(
  ( (MissingZero!392 (index!3736 (_ BitVec 32))) (Found!392 (index!3737 (_ BitVec 32))) (Intermediate!392 (undefined!1204 Bool) (index!3738 (_ BitVec 32)) (x!17976 (_ BitVec 32))) (Undefined!392) (MissingVacant!392 (index!3739 (_ BitVec 32))) )
))
(declare-fun lt!82460 () SeekEntryResult!392)

(get-info :version)

(assert (=> b!162372 (= res!76903 (and (not ((_ is Undefined!392) lt!82460)) (not ((_ is MissingVacant!392) lt!82460)) ((_ is MissingZero!392) lt!82460)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6164 (_ BitVec 32)) SeekEntryResult!392)

(assert (=> b!162372 (= lt!82460 (seekEntryOrOpen!0 key!828 (_keys!5125 thiss!1248) (mask!7946 thiss!1248)))))

(declare-fun e!106412 () Bool)

(declare-fun array_inv!1863 (array!6164) Bool)

(declare-fun array_inv!1864 (array!6166) Bool)

(assert (=> b!162373 (= e!106412 (and tp!13793 tp_is_empty!3543 (array_inv!1863 (_keys!5125 thiss!1248)) (array_inv!1864 (_values!3307 thiss!1248)) e!106415))))

(declare-fun res!76904 () Bool)

(assert (=> start!16292 (=> (not res!76904) (not e!106411))))

(declare-fun valid!790 (LongMapFixedSize!1764) Bool)

(assert (=> start!16292 (= res!76904 (valid!790 thiss!1248))))

(assert (=> start!16292 e!106411))

(assert (=> start!16292 e!106412))

(assert (=> start!16292 true))

(assert (=> start!16292 tp_is_empty!3543))

(declare-fun b!162368 () Bool)

(assert (=> b!162368 (= e!106413 false)))

(declare-fun lt!82459 () Bool)

(declare-fun v!309 () V!4371)

(declare-datatypes ((tuple2!2988 0))(
  ( (tuple2!2989 (_1!1504 Bool) (_2!1504 LongMapFixedSize!1764)) )
))
(declare-fun updateHelperNewKey!82 (LongMapFixedSize!1764 (_ BitVec 64) V!4371 (_ BitVec 32)) tuple2!2988)

(assert (=> b!162368 (= lt!82459 (valid!790 (_2!1504 (updateHelperNewKey!82 thiss!1248 key!828 v!309 (index!3736 lt!82460)))))))

(declare-fun b!162374 () Bool)

(assert (=> b!162374 (= e!106414 tp_is_empty!3543)))

(declare-fun mapIsEmpty!6002 () Bool)

(assert (=> mapIsEmpty!6002 mapRes!6002))

(assert (= (and start!16292 res!76904) b!162369))

(assert (= (and b!162369 res!76902) b!162372))

(assert (= (and b!162372 res!76903) b!162368))

(assert (= (and b!162371 condMapEmpty!6002) mapIsEmpty!6002))

(assert (= (and b!162371 (not condMapEmpty!6002)) mapNonEmpty!6002))

(assert (= (and mapNonEmpty!6002 ((_ is ValueCellFull!1428) mapValue!6002)) b!162370))

(assert (= (and b!162371 ((_ is ValueCellFull!1428) mapDefault!6002)) b!162374))

(assert (= b!162373 b!162371))

(assert (= start!16292 b!162373))

(declare-fun m!193513 () Bool)

(assert (=> b!162368 m!193513))

(declare-fun m!193515 () Bool)

(assert (=> b!162368 m!193515))

(declare-fun m!193517 () Bool)

(assert (=> b!162372 m!193517))

(declare-fun m!193519 () Bool)

(assert (=> mapNonEmpty!6002 m!193519))

(declare-fun m!193521 () Bool)

(assert (=> start!16292 m!193521))

(declare-fun m!193523 () Bool)

(assert (=> b!162373 m!193523))

(declare-fun m!193525 () Bool)

(assert (=> b!162373 m!193525))

(check-sat (not b_next!3741) (not mapNonEmpty!6002) (not b!162372) b_and!10173 (not start!16292) (not b!162368) tp_is_empty!3543 (not b!162373))
(check-sat b_and!10173 (not b_next!3741))
