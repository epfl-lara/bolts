; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22132 () Bool)

(assert start!22132)

(declare-fun b!230242 () Bool)

(declare-fun b_free!6187 () Bool)

(declare-fun b_next!6187 () Bool)

(assert (=> b!230242 (= b_free!6187 (not b_next!6187))))

(declare-fun tp!21703 () Bool)

(declare-fun b_and!13103 () Bool)

(assert (=> b!230242 (= tp!21703 b_and!13103)))

(declare-fun mapIsEmpty!10243 () Bool)

(declare-fun mapRes!10243 () Bool)

(assert (=> mapIsEmpty!10243 mapRes!10243))

(declare-fun b!230236 () Bool)

(declare-fun e!149419 () Bool)

(declare-fun tp_is_empty!6049 () Bool)

(assert (=> b!230236 (= e!149419 tp_is_empty!6049)))

(declare-fun b!230237 () Bool)

(declare-fun e!149424 () Bool)

(declare-fun e!149418 () Bool)

(assert (=> b!230237 (= e!149424 e!149418)))

(declare-fun res!113275 () Bool)

(assert (=> b!230237 (=> (not res!113275) (not e!149418))))

(declare-datatypes ((SeekEntryResult!945 0))(
  ( (MissingZero!945 (index!5950 (_ BitVec 32))) (Found!945 (index!5951 (_ BitVec 32))) (Intermediate!945 (undefined!1757 Bool) (index!5952 (_ BitVec 32)) (x!23445 (_ BitVec 32))) (Undefined!945) (MissingVacant!945 (index!5953 (_ BitVec 32))) )
))
(declare-fun lt!115900 () SeekEntryResult!945)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!230237 (= res!113275 (or (= lt!115900 (MissingZero!945 index!297)) (= lt!115900 (MissingVacant!945 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!7713 0))(
  ( (V!7714 (val!3069 Int)) )
))
(declare-datatypes ((ValueCell!2681 0))(
  ( (ValueCellFull!2681 (v!5085 V!7713)) (EmptyCell!2681) )
))
(declare-datatypes ((array!11340 0))(
  ( (array!11341 (arr!5389 (Array (_ BitVec 32) ValueCell!2681)) (size!5722 (_ BitVec 32))) )
))
(declare-datatypes ((array!11342 0))(
  ( (array!11343 (arr!5390 (Array (_ BitVec 32) (_ BitVec 64))) (size!5723 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3262 0))(
  ( (LongMapFixedSize!3263 (defaultEntry!4290 Int) (mask!10180 (_ BitVec 32)) (extraKeys!4027 (_ BitVec 32)) (zeroValue!4131 V!7713) (minValue!4131 V!7713) (_size!1680 (_ BitVec 32)) (_keys!6344 array!11342) (_values!4273 array!11340) (_vacant!1680 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3262)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11342 (_ BitVec 32)) SeekEntryResult!945)

(assert (=> b!230237 (= lt!115900 (seekEntryOrOpen!0 key!932 (_keys!6344 thiss!1504) (mask!10180 thiss!1504)))))

(declare-fun b!230238 () Bool)

(declare-fun e!149414 () Bool)

(declare-fun e!149422 () Bool)

(assert (=> b!230238 (= e!149414 (and e!149422 mapRes!10243))))

(declare-fun condMapEmpty!10243 () Bool)

(declare-fun mapDefault!10243 () ValueCell!2681)

