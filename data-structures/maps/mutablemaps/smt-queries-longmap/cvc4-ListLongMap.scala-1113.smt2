; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22940 () Bool)

(assert start!22940)

(declare-fun b!239268 () Bool)

(declare-fun b_free!6431 () Bool)

(declare-fun b_next!6431 () Bool)

(assert (=> b!239268 (= b_free!6431 (not b_next!6431))))

(declare-fun tp!22496 () Bool)

(declare-fun b_and!13415 () Bool)

(assert (=> b!239268 (= tp!22496 b_and!13415)))

(declare-fun b!239256 () Bool)

(declare-fun e!155356 () Bool)

(declare-fun e!155363 () Bool)

(assert (=> b!239256 (= e!155356 e!155363)))

(declare-fun res!117281 () Bool)

(declare-fun call!22251 () Bool)

(assert (=> b!239256 (= res!117281 call!22251)))

(assert (=> b!239256 (=> (not res!117281) (not e!155363))))

(declare-fun b!239257 () Bool)

(declare-fun res!117274 () Bool)

(declare-fun e!155361 () Bool)

(assert (=> b!239257 (=> (not res!117274) (not e!155361))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!239257 (= res!117274 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!239258 () Bool)

(declare-datatypes ((Unit!7344 0))(
  ( (Unit!7345) )
))
(declare-fun e!155353 () Unit!7344)

(declare-fun Unit!7346 () Unit!7344)

(assert (=> b!239258 (= e!155353 Unit!7346)))

(declare-fun lt!120786 () Unit!7344)

(declare-datatypes ((V!8037 0))(
  ( (V!8038 (val!3191 Int)) )
))
(declare-datatypes ((ValueCell!2803 0))(
  ( (ValueCellFull!2803 (v!5225 V!8037)) (EmptyCell!2803) )
))
(declare-datatypes ((array!11864 0))(
  ( (array!11865 (arr!5633 (Array (_ BitVec 32) ValueCell!2803)) (size!5974 (_ BitVec 32))) )
))
(declare-datatypes ((array!11866 0))(
  ( (array!11867 (arr!5634 (Array (_ BitVec 32) (_ BitVec 64))) (size!5975 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3506 0))(
  ( (LongMapFixedSize!3507 (defaultEntry!4438 Int) (mask!10482 (_ BitVec 32)) (extraKeys!4175 (_ BitVec 32)) (zeroValue!4279 V!8037) (minValue!4279 V!8037) (_size!1802 (_ BitVec 32)) (_keys!6540 array!11866) (_values!4421 array!11864) (_vacant!1802 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3506)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!326 (array!11866 array!11864 (_ BitVec 32) (_ BitVec 32) V!8037 V!8037 (_ BitVec 64) Int) Unit!7344)

(assert (=> b!239258 (= lt!120786 (lemmaInListMapThenSeekEntryOrOpenFindsIt!326 (_keys!6540 thiss!1504) (_values!4421 thiss!1504) (mask!10482 thiss!1504) (extraKeys!4175 thiss!1504) (zeroValue!4279 thiss!1504) (minValue!4279 thiss!1504) key!932 (defaultEntry!4438 thiss!1504)))))

(assert (=> b!239258 false))

(declare-fun b!239259 () Bool)

(declare-fun e!155357 () Bool)

(declare-fun e!155359 () Bool)

(declare-fun mapRes!10671 () Bool)

(assert (=> b!239259 (= e!155357 (and e!155359 mapRes!10671))))

(declare-fun condMapEmpty!10671 () Bool)

(declare-fun mapDefault!10671 () ValueCell!2803)

