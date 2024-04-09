; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18610 () Bool)

(assert start!18610)

(declare-fun b!184093 () Bool)

(declare-fun b_free!4541 () Bool)

(declare-fun b_next!4541 () Bool)

(assert (=> b!184093 (= b_free!4541 (not b_next!4541))))

(declare-fun tp!16401 () Bool)

(declare-fun b_and!11141 () Bool)

(assert (=> b!184093 (= tp!16401 b_and!11141)))

(declare-fun b!184092 () Bool)

(declare-fun e!121199 () Bool)

(declare-fun e!121198 () Bool)

(assert (=> b!184092 (= e!121199 e!121198)))

(declare-fun res!87129 () Bool)

(assert (=> b!184092 (=> (not res!87129) (not e!121198))))

(declare-datatypes ((SeekEntryResult!636 0))(
  ( (MissingZero!636 (index!4714 (_ BitVec 32))) (Found!636 (index!4715 (_ BitVec 32))) (Intermediate!636 (undefined!1448 Bool) (index!4716 (_ BitVec 32)) (x!20042 (_ BitVec 32))) (Undefined!636) (MissingVacant!636 (index!4717 (_ BitVec 32))) )
))
(declare-fun lt!91059 () SeekEntryResult!636)

(assert (=> b!184092 (= res!87129 (and (not (is-Undefined!636 lt!91059)) (not (is-MissingVacant!636 lt!91059)) (not (is-MissingZero!636 lt!91059)) (is-Found!636 lt!91059)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!5397 0))(
  ( (V!5398 (val!2201 Int)) )
))
(declare-datatypes ((ValueCell!1813 0))(
  ( (ValueCellFull!1813 (v!4102 V!5397)) (EmptyCell!1813) )
))
(declare-datatypes ((array!7822 0))(
  ( (array!7823 (arr!3696 (Array (_ BitVec 32) (_ BitVec 64))) (size!4010 (_ BitVec 32))) )
))
(declare-datatypes ((array!7824 0))(
  ( (array!7825 (arr!3697 (Array (_ BitVec 32) ValueCell!1813)) (size!4011 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2534 0))(
  ( (LongMapFixedSize!2535 (defaultEntry!3761 Int) (mask!8839 (_ BitVec 32)) (extraKeys!3498 (_ BitVec 32)) (zeroValue!3602 V!5397) (minValue!3602 V!5397) (_size!1316 (_ BitVec 32)) (_keys!5687 array!7822) (_values!3744 array!7824) (_vacant!1316 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2534)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7822 (_ BitVec 32)) SeekEntryResult!636)

(assert (=> b!184092 (= lt!91059 (seekEntryOrOpen!0 key!828 (_keys!5687 thiss!1248) (mask!8839 thiss!1248)))))

(declare-fun tp_is_empty!4313 () Bool)

(declare-fun e!121194 () Bool)

(declare-fun e!121195 () Bool)

(declare-fun array_inv!2383 (array!7822) Bool)

(declare-fun array_inv!2384 (array!7824) Bool)

(assert (=> b!184093 (= e!121195 (and tp!16401 tp_is_empty!4313 (array_inv!2383 (_keys!5687 thiss!1248)) (array_inv!2384 (_values!3744 thiss!1248)) e!121194))))

(declare-fun b!184094 () Bool)

(declare-fun res!87126 () Bool)

(assert (=> b!184094 (=> (not res!87126) (not e!121198))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!184094 (= res!87126 (validMask!0 (mask!8839 thiss!1248)))))

(declare-fun mapIsEmpty!7411 () Bool)

(declare-fun mapRes!7411 () Bool)

(assert (=> mapIsEmpty!7411 mapRes!7411))

(declare-fun b!184096 () Bool)

(declare-fun e!121197 () Bool)

(assert (=> b!184096 (= e!121194 (and e!121197 mapRes!7411))))

(declare-fun condMapEmpty!7411 () Bool)

(declare-fun mapDefault!7411 () ValueCell!1813)

