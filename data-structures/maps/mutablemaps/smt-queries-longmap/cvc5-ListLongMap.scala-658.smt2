; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16308 () Bool)

(assert start!16308)

(declare-fun b!162576 () Bool)

(declare-fun b_free!3757 () Bool)

(declare-fun b_next!3757 () Bool)

(assert (=> b!162576 (= b_free!3757 (not b_next!3757))))

(declare-fun tp!13840 () Bool)

(declare-fun b_and!10189 () Bool)

(assert (=> b!162576 (= tp!13840 b_and!10189)))

(declare-fun b!162572 () Bool)

(declare-fun e!106599 () Bool)

(declare-fun e!106600 () Bool)

(assert (=> b!162572 (= e!106599 e!106600)))

(declare-fun res!77010 () Bool)

(assert (=> b!162572 (=> (not res!77010) (not e!106600))))

(declare-datatypes ((SeekEntryResult!396 0))(
  ( (MissingZero!396 (index!3752 (_ BitVec 32))) (Found!396 (index!3753 (_ BitVec 32))) (Intermediate!396 (undefined!1208 Bool) (index!3754 (_ BitVec 32)) (x!18004 (_ BitVec 32))) (Undefined!396) (MissingVacant!396 (index!3755 (_ BitVec 32))) )
))
(declare-fun lt!82525 () SeekEntryResult!396)

(assert (=> b!162572 (= res!77010 (and (not (is-Undefined!396 lt!82525)) (not (is-MissingVacant!396 lt!82525)) (is-MissingZero!396 lt!82525)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!4393 0))(
  ( (V!4394 (val!1824 Int)) )
))
(declare-datatypes ((ValueCell!1436 0))(
  ( (ValueCellFull!1436 (v!3685 V!4393)) (EmptyCell!1436) )
))
(declare-datatypes ((array!6196 0))(
  ( (array!6197 (arr!2942 (Array (_ BitVec 32) (_ BitVec 64))) (size!3226 (_ BitVec 32))) )
))
(declare-datatypes ((array!6198 0))(
  ( (array!6199 (arr!2943 (Array (_ BitVec 32) ValueCell!1436)) (size!3227 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1780 0))(
  ( (LongMapFixedSize!1781 (defaultEntry!3332 Int) (mask!7960 (_ BitVec 32)) (extraKeys!3073 (_ BitVec 32)) (zeroValue!3175 V!4393) (minValue!3175 V!4393) (_size!939 (_ BitVec 32)) (_keys!5133 array!6196) (_values!3315 array!6198) (_vacant!939 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1780)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6196 (_ BitVec 32)) SeekEntryResult!396)

(assert (=> b!162572 (= lt!82525 (seekEntryOrOpen!0 key!828 (_keys!5133 thiss!1248) (mask!7960 thiss!1248)))))

(declare-fun mapIsEmpty!6026 () Bool)

(declare-fun mapRes!6026 () Bool)

(assert (=> mapIsEmpty!6026 mapRes!6026))

(declare-fun b!162573 () Bool)

(declare-fun e!106597 () Bool)

(declare-fun e!106598 () Bool)

(assert (=> b!162573 (= e!106597 (and e!106598 mapRes!6026))))

(declare-fun condMapEmpty!6026 () Bool)

(declare-fun mapDefault!6026 () ValueCell!1436)

