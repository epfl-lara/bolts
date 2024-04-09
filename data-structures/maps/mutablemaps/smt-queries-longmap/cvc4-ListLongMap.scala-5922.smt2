; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77010 () Bool)

(assert start!77010)

(declare-fun b!899348 () Bool)

(declare-fun b_free!16037 () Bool)

(declare-fun b_next!16037 () Bool)

(assert (=> b!899348 (= b_free!16037 (not b_next!16037))))

(declare-fun tp!56191 () Bool)

(declare-fun b_and!26363 () Bool)

(assert (=> b!899348 (= tp!56191 b_and!26363)))

(declare-fun b!899344 () Bool)

(declare-fun e!503285 () Bool)

(declare-fun e!503282 () Bool)

(assert (=> b!899344 (= e!503285 (not e!503282))))

(declare-fun res!607657 () Bool)

(assert (=> b!899344 (=> res!607657 e!503282)))

(declare-datatypes ((SeekEntryResult!8921 0))(
  ( (MissingZero!8921 (index!38054 (_ BitVec 32))) (Found!8921 (index!38055 (_ BitVec 32))) (Intermediate!8921 (undefined!9733 Bool) (index!38056 (_ BitVec 32)) (x!76631 (_ BitVec 32))) (Undefined!8921) (MissingVacant!8921 (index!38057 (_ BitVec 32))) )
))
(declare-fun lt!406201 () SeekEntryResult!8921)

(assert (=> b!899344 (= res!607657 (not (is-Found!8921 lt!406201)))))

(declare-fun e!503281 () Bool)

(assert (=> b!899344 e!503281))

(declare-fun res!607655 () Bool)

(assert (=> b!899344 (=> res!607655 e!503281)))

(assert (=> b!899344 (= res!607655 (not (is-Found!8921 lt!406201)))))

(declare-datatypes ((Unit!30535 0))(
  ( (Unit!30536) )
))
(declare-fun lt!406204 () Unit!30535)

(declare-datatypes ((array!52760 0))(
  ( (array!52761 (arr!25350 (Array (_ BitVec 32) (_ BitVec 64))) (size!25808 (_ BitVec 32))) )
))
(declare-datatypes ((V!29451 0))(
  ( (V!29452 (val!9233 Int)) )
))
(declare-datatypes ((ValueCell!8701 0))(
  ( (ValueCellFull!8701 (v!11724 V!29451)) (EmptyCell!8701) )
))
(declare-datatypes ((array!52762 0))(
  ( (array!52763 (arr!25351 (Array (_ BitVec 32) ValueCell!8701)) (size!25809 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4418 0))(
  ( (LongMapFixedSize!4419 (defaultEntry!5433 Int) (mask!26184 (_ BitVec 32)) (extraKeys!5154 (_ BitVec 32)) (zeroValue!5258 V!29451) (minValue!5258 V!29451) (_size!2264 (_ BitVec 32)) (_keys!10218 array!52760) (_values!5445 array!52762) (_vacant!2264 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4418)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!103 (array!52760 array!52762 (_ BitVec 32) (_ BitVec 32) V!29451 V!29451 (_ BitVec 64)) Unit!30535)

(assert (=> b!899344 (= lt!406204 (lemmaSeekEntryGivesInRangeIndex!103 (_keys!10218 thiss!1181) (_values!5445 thiss!1181) (mask!26184 thiss!1181) (extraKeys!5154 thiss!1181) (zeroValue!5258 thiss!1181) (minValue!5258 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52760 (_ BitVec 32)) SeekEntryResult!8921)

(assert (=> b!899344 (= lt!406201 (seekEntry!0 key!785 (_keys!10218 thiss!1181) (mask!26184 thiss!1181)))))

(declare-fun mapIsEmpty!29213 () Bool)

(declare-fun mapRes!29213 () Bool)

(assert (=> mapIsEmpty!29213 mapRes!29213))

(declare-fun b!899345 () Bool)

(declare-fun e!503284 () Bool)

(declare-fun tp_is_empty!18365 () Bool)

(assert (=> b!899345 (= e!503284 tp_is_empty!18365)))

(declare-fun mapNonEmpty!29213 () Bool)

(declare-fun tp!56192 () Bool)

(declare-fun e!503278 () Bool)

(assert (=> mapNonEmpty!29213 (= mapRes!29213 (and tp!56192 e!503278))))

(declare-fun mapValue!29213 () ValueCell!8701)

(declare-fun mapRest!29213 () (Array (_ BitVec 32) ValueCell!8701))

(declare-fun mapKey!29213 () (_ BitVec 32))

(assert (=> mapNonEmpty!29213 (= (arr!25351 (_values!5445 thiss!1181)) (store mapRest!29213 mapKey!29213 mapValue!29213))))

(declare-fun b!899346 () Bool)

(declare-fun e!503283 () Bool)

(assert (=> b!899346 (= e!503283 (or (not (= (size!25809 (_values!5445 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!26184 thiss!1181)))) (not (= (size!25808 (_keys!10218 thiss!1181)) (size!25809 (_values!5445 thiss!1181)))) (bvslt (mask!26184 thiss!1181) #b00000000000000000000000000000000) (bvsge (extraKeys!5154 thiss!1181) #b00000000000000000000000000000000)))))

(declare-fun b!899347 () Bool)

(declare-fun e!503280 () Bool)

(assert (=> b!899347 (= e!503280 (and e!503284 mapRes!29213))))

(declare-fun condMapEmpty!29213 () Bool)

(declare-fun mapDefault!29213 () ValueCell!8701)

