; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16282 () Bool)

(assert start!16282)

(declare-fun b!162276 () Bool)

(declare-fun b_free!3731 () Bool)

(declare-fun b_next!3731 () Bool)

(assert (=> b!162276 (= b_free!3731 (not b_next!3731))))

(declare-fun tp!13763 () Bool)

(declare-fun b_and!10163 () Bool)

(assert (=> b!162276 (= tp!13763 b_and!10163)))

(declare-fun b!162274 () Bool)

(declare-fun e!106316 () Bool)

(declare-fun tp_is_empty!3533 () Bool)

(assert (=> b!162274 (= e!106316 tp_is_empty!3533)))

(declare-fun mapNonEmpty!5987 () Bool)

(declare-fun mapRes!5987 () Bool)

(declare-fun tp!13762 () Bool)

(declare-fun e!106314 () Bool)

(assert (=> mapNonEmpty!5987 (= mapRes!5987 (and tp!13762 e!106314))))

(declare-datatypes ((V!4357 0))(
  ( (V!4358 (val!1811 Int)) )
))
(declare-datatypes ((ValueCell!1423 0))(
  ( (ValueCellFull!1423 (v!3672 V!4357)) (EmptyCell!1423) )
))
(declare-fun mapValue!5987 () ValueCell!1423)

(declare-fun mapKey!5987 () (_ BitVec 32))

(declare-datatypes ((array!6144 0))(
  ( (array!6145 (arr!2916 (Array (_ BitVec 32) (_ BitVec 64))) (size!3200 (_ BitVec 32))) )
))
(declare-datatypes ((array!6146 0))(
  ( (array!6147 (arr!2917 (Array (_ BitVec 32) ValueCell!1423)) (size!3201 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1754 0))(
  ( (LongMapFixedSize!1755 (defaultEntry!3319 Int) (mask!7937 (_ BitVec 32)) (extraKeys!3060 (_ BitVec 32)) (zeroValue!3162 V!4357) (minValue!3162 V!4357) (_size!926 (_ BitVec 32)) (_keys!5120 array!6144) (_values!3302 array!6146) (_vacant!926 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1754)

(declare-fun mapRest!5987 () (Array (_ BitVec 32) ValueCell!1423))

(assert (=> mapNonEmpty!5987 (= (arr!2917 (_values!3302 thiss!1248)) (store mapRest!5987 mapKey!5987 mapValue!5987))))

(declare-fun b!162275 () Bool)

(declare-fun e!106317 () Bool)

(declare-datatypes ((SeekEntryResult!390 0))(
  ( (MissingZero!390 (index!3728 (_ BitVec 32))) (Found!390 (index!3729 (_ BitVec 32))) (Intermediate!390 (undefined!1202 Bool) (index!3730 (_ BitVec 32)) (x!17958 (_ BitVec 32))) (Undefined!390) (MissingVacant!390 (index!3731 (_ BitVec 32))) )
))
(declare-fun lt!82439 () SeekEntryResult!390)

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!162275 (= e!106317 (and (not (is-Undefined!390 lt!82439)) (not (is-MissingVacant!390 lt!82439)) (is-MissingZero!390 lt!82439) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)) (= key!828 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6144 (_ BitVec 32)) SeekEntryResult!390)

(assert (=> b!162275 (= lt!82439 (seekEntryOrOpen!0 key!828 (_keys!5120 thiss!1248) (mask!7937 thiss!1248)))))

(declare-fun e!106318 () Bool)

(declare-fun e!106319 () Bool)

(declare-fun array_inv!1857 (array!6144) Bool)

(declare-fun array_inv!1858 (array!6146) Bool)

(assert (=> b!162276 (= e!106319 (and tp!13763 tp_is_empty!3533 (array_inv!1857 (_keys!5120 thiss!1248)) (array_inv!1858 (_values!3302 thiss!1248)) e!106318))))

(declare-fun b!162277 () Bool)

(assert (=> b!162277 (= e!106318 (and e!106316 mapRes!5987))))

(declare-fun condMapEmpty!5987 () Bool)

(declare-fun mapDefault!5987 () ValueCell!1423)

