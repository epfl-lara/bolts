; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22990 () Bool)

(assert start!22990)

(declare-fun b!240856 () Bool)

(declare-fun b_free!6481 () Bool)

(declare-fun b_next!6481 () Bool)

(assert (=> b!240856 (= b_free!6481 (not b_next!6481))))

(declare-fun tp!22647 () Bool)

(declare-fun b_and!13465 () Bool)

(assert (=> b!240856 (= tp!22647 b_and!13465)))

(declare-fun b!240855 () Bool)

(declare-fun e!156340 () Bool)

(declare-datatypes ((V!8105 0))(
  ( (V!8106 (val!3216 Int)) )
))
(declare-datatypes ((ValueCell!2828 0))(
  ( (ValueCellFull!2828 (v!5250 V!8105)) (EmptyCell!2828) )
))
(declare-datatypes ((array!11964 0))(
  ( (array!11965 (arr!5683 (Array (_ BitVec 32) ValueCell!2828)) (size!6024 (_ BitVec 32))) )
))
(declare-datatypes ((array!11966 0))(
  ( (array!11967 (arr!5684 (Array (_ BitVec 32) (_ BitVec 64))) (size!6025 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3556 0))(
  ( (LongMapFixedSize!3557 (defaultEntry!4463 Int) (mask!10525 (_ BitVec 32)) (extraKeys!4200 (_ BitVec 32)) (zeroValue!4304 V!8105) (minValue!4304 V!8105) (_size!1827 (_ BitVec 32)) (_keys!6565 array!11966) (_values!4446 array!11964) (_vacant!1827 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3556)

(assert (=> b!240855 (= e!156340 (bvsge (size!6025 (_keys!6565 thiss!1504)) #b01111111111111111111111111111111))))

(declare-datatypes ((Unit!7412 0))(
  ( (Unit!7413) )
))
(declare-fun lt!121115 () Unit!7412)

(declare-fun e!156333 () Unit!7412)

(assert (=> b!240855 (= lt!121115 e!156333)))

(declare-fun c!40102 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!11966 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!240855 (= c!40102 (arrayContainsKey!0 (_keys!6565 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun bm!22398 () Bool)

(declare-fun c!40099 () Bool)

(declare-fun call!22402 () Bool)

(declare-datatypes ((SeekEntryResult!1062 0))(
  ( (MissingZero!1062 (index!6418 (_ BitVec 32))) (Found!1062 (index!6419 (_ BitVec 32))) (Intermediate!1062 (undefined!1874 Bool) (index!6420 (_ BitVec 32)) (x!24198 (_ BitVec 32))) (Undefined!1062) (MissingVacant!1062 (index!6421 (_ BitVec 32))) )
))
(declare-fun lt!121117 () SeekEntryResult!1062)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!22398 (= call!22402 (inRange!0 (ite c!40099 (index!6418 lt!121117) (index!6421 lt!121117)) (mask!10525 thiss!1504)))))

(declare-fun e!156337 () Bool)

(declare-fun tp_is_empty!6343 () Bool)

(declare-fun e!156335 () Bool)

(declare-fun array_inv!3751 (array!11966) Bool)

(declare-fun array_inv!3752 (array!11964) Bool)

(assert (=> b!240856 (= e!156337 (and tp!22647 tp_is_empty!6343 (array_inv!3751 (_keys!6565 thiss!1504)) (array_inv!3752 (_values!4446 thiss!1504)) e!156335))))

(declare-fun b!240857 () Bool)

(declare-fun e!156334 () Bool)

(declare-fun e!156331 () Bool)

(assert (=> b!240857 (= e!156334 e!156331)))

(declare-fun res!118123 () Bool)

(assert (=> b!240857 (= res!118123 call!22402)))

(assert (=> b!240857 (=> (not res!118123) (not e!156331))))

(declare-fun b!240858 () Bool)

(declare-fun e!156328 () Bool)

(declare-fun mapRes!10746 () Bool)

(assert (=> b!240858 (= e!156335 (and e!156328 mapRes!10746))))

(declare-fun condMapEmpty!10746 () Bool)

(declare-fun mapDefault!10746 () ValueCell!2828)

