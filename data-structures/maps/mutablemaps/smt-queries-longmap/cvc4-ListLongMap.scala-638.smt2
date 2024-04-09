; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16192 () Bool)

(assert start!16192)

(declare-fun b!161300 () Bool)

(declare-fun b_free!3641 () Bool)

(declare-fun b_next!3641 () Bool)

(assert (=> b!161300 (= b_free!3641 (not b_next!3641))))

(declare-fun tp!13492 () Bool)

(declare-fun b_and!10073 () Bool)

(assert (=> b!161300 (= tp!13492 b_and!10073)))

(declare-fun b!161298 () Bool)

(declare-datatypes ((Unit!5006 0))(
  ( (Unit!5007) )
))
(declare-fun e!105415 () Unit!5006)

(declare-datatypes ((V!4237 0))(
  ( (V!4238 (val!1766 Int)) )
))
(declare-datatypes ((ValueCell!1378 0))(
  ( (ValueCellFull!1378 (v!3627 V!4237)) (EmptyCell!1378) )
))
(declare-datatypes ((array!5964 0))(
  ( (array!5965 (arr!2826 (Array (_ BitVec 32) (_ BitVec 64))) (size!3110 (_ BitVec 32))) )
))
(declare-datatypes ((array!5966 0))(
  ( (array!5967 (arr!2827 (Array (_ BitVec 32) ValueCell!1378)) (size!3111 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1664 0))(
  ( (LongMapFixedSize!1665 (defaultEntry!3274 Int) (mask!7862 (_ BitVec 32)) (extraKeys!3015 (_ BitVec 32)) (zeroValue!3117 V!4237) (minValue!3117 V!4237) (_size!881 (_ BitVec 32)) (_keys!5075 array!5964) (_values!3257 array!5966) (_vacant!881 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1664)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!74 (array!5964 array!5966 (_ BitVec 32) (_ BitVec 32) V!4237 V!4237 (_ BitVec 64) Int) Unit!5006)

(assert (=> b!161298 (= e!105415 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!74 (_keys!5075 thiss!1248) (_values!3257 thiss!1248) (mask!7862 thiss!1248) (extraKeys!3015 thiss!1248) (zeroValue!3117 thiss!1248) (minValue!3117 thiss!1248) key!828 (defaultEntry!3274 thiss!1248)))))

(declare-fun b!161299 () Bool)

(declare-fun res!76488 () Bool)

(declare-fun e!105417 () Bool)

(assert (=> b!161299 (=> (not res!76488) (not e!105417))))

(declare-datatypes ((SeekEntryResult!358 0))(
  ( (MissingZero!358 (index!3600 (_ BitVec 32))) (Found!358 (index!3601 (_ BitVec 32))) (Intermediate!358 (undefined!1170 Bool) (index!3602 (_ BitVec 32)) (x!17806 (_ BitVec 32))) (Undefined!358) (MissingVacant!358 (index!3603 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5964 (_ BitVec 32)) SeekEntryResult!358)

(assert (=> b!161299 (= res!76488 (is-Undefined!358 (seekEntryOrOpen!0 key!828 (_keys!5075 thiss!1248) (mask!7862 thiss!1248))))))

(declare-fun e!105413 () Bool)

(declare-fun tp_is_empty!3443 () Bool)

(declare-fun e!105418 () Bool)

(declare-fun array_inv!1793 (array!5964) Bool)

(declare-fun array_inv!1794 (array!5966) Bool)

(assert (=> b!161300 (= e!105418 (and tp!13492 tp_is_empty!3443 (array_inv!1793 (_keys!5075 thiss!1248)) (array_inv!1794 (_values!3257 thiss!1248)) e!105413))))

(declare-fun b!161301 () Bool)

(declare-fun e!105416 () Bool)

(assert (=> b!161301 (= e!105416 tp_is_empty!3443)))

(declare-fun b!161302 () Bool)

(declare-fun res!76489 () Bool)

(assert (=> b!161302 (=> (not res!76489) (not e!105417))))

(assert (=> b!161302 (= res!76489 (not (= key!828 (bvneg key!828))))))

(declare-fun b!161303 () Bool)

(declare-fun e!105414 () Bool)

(assert (=> b!161303 (= e!105414 tp_is_empty!3443)))

(declare-fun mapIsEmpty!5852 () Bool)

(declare-fun mapRes!5852 () Bool)

(assert (=> mapIsEmpty!5852 mapRes!5852))

(declare-fun b!161304 () Bool)

(declare-fun Unit!5008 () Unit!5006)

(assert (=> b!161304 (= e!105415 Unit!5008)))

(declare-fun lt!82213 () Unit!5006)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!76 (array!5964 array!5966 (_ BitVec 32) (_ BitVec 32) V!4237 V!4237 (_ BitVec 64) Int) Unit!5006)

(assert (=> b!161304 (= lt!82213 (lemmaInListMapThenSeekEntryOrOpenFindsIt!76 (_keys!5075 thiss!1248) (_values!3257 thiss!1248) (mask!7862 thiss!1248) (extraKeys!3015 thiss!1248) (zeroValue!3117 thiss!1248) (minValue!3117 thiss!1248) key!828 (defaultEntry!3274 thiss!1248)))))

(assert (=> b!161304 false))

(declare-fun res!76490 () Bool)

(assert (=> start!16192 (=> (not res!76490) (not e!105417))))

(declare-fun valid!756 (LongMapFixedSize!1664) Bool)

(assert (=> start!16192 (= res!76490 (valid!756 thiss!1248))))

(assert (=> start!16192 e!105417))

(assert (=> start!16192 e!105418))

(assert (=> start!16192 true))

(declare-fun mapNonEmpty!5852 () Bool)

(declare-fun tp!13493 () Bool)

(assert (=> mapNonEmpty!5852 (= mapRes!5852 (and tp!13493 e!105416))))

(declare-fun mapValue!5852 () ValueCell!1378)

(declare-fun mapRest!5852 () (Array (_ BitVec 32) ValueCell!1378))

(declare-fun mapKey!5852 () (_ BitVec 32))

(assert (=> mapNonEmpty!5852 (= (arr!2827 (_values!3257 thiss!1248)) (store mapRest!5852 mapKey!5852 mapValue!5852))))

(declare-fun b!161305 () Bool)

(assert (=> b!161305 (= e!105413 (and e!105414 mapRes!5852))))

(declare-fun condMapEmpty!5852 () Bool)

(declare-fun mapDefault!5852 () ValueCell!1378)

