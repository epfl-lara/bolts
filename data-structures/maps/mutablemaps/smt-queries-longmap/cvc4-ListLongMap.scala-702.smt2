; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16732 () Bool)

(assert start!16732)

(declare-fun b!167761 () Bool)

(declare-fun b_free!4025 () Bool)

(declare-fun b_next!4025 () Bool)

(assert (=> b!167761 (= b_free!4025 (not b_next!4025))))

(declare-fun tp!14675 () Bool)

(declare-fun b_and!10457 () Bool)

(assert (=> b!167761 (= tp!14675 b_and!10457)))

(declare-fun b!167755 () Bool)

(declare-datatypes ((SeekEntryResult!497 0))(
  ( (MissingZero!497 (index!4156 (_ BitVec 32))) (Found!497 (index!4157 (_ BitVec 32))) (Intermediate!497 (undefined!1309 Bool) (index!4158 (_ BitVec 32)) (x!18565 (_ BitVec 32))) (Undefined!497) (MissingVacant!497 (index!4159 (_ BitVec 32))) )
))
(declare-fun lt!83903 () SeekEntryResult!497)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!4749 0))(
  ( (V!4750 (val!1958 Int)) )
))
(declare-datatypes ((ValueCell!1570 0))(
  ( (ValueCellFull!1570 (v!3819 V!4749)) (EmptyCell!1570) )
))
(declare-datatypes ((array!6750 0))(
  ( (array!6751 (arr!3210 (Array (_ BitVec 32) (_ BitVec 64))) (size!3498 (_ BitVec 32))) )
))
(declare-datatypes ((array!6752 0))(
  ( (array!6753 (arr!3211 (Array (_ BitVec 32) ValueCell!1570)) (size!3499 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2048 0))(
  ( (LongMapFixedSize!2049 (defaultEntry!3466 Int) (mask!8219 (_ BitVec 32)) (extraKeys!3207 (_ BitVec 32)) (zeroValue!3309 V!4749) (minValue!3309 V!4749) (_size!1073 (_ BitVec 32)) (_keys!5291 array!6750) (_values!3449 array!6752) (_vacant!1073 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2048)

(declare-fun e!110228 () Bool)

(assert (=> b!167755 (= e!110228 (= (select (arr!3210 (_keys!5291 thiss!1248)) (index!4157 lt!83903)) key!828))))

(declare-fun b!167756 () Bool)

(declare-fun res!79831 () Bool)

(declare-fun e!110221 () Bool)

(assert (=> b!167756 (=> (not res!79831) (not e!110221))))

(assert (=> b!167756 (= res!79831 (not (= key!828 (bvneg key!828))))))

(declare-fun b!167757 () Bool)

(declare-fun res!79829 () Bool)

(declare-fun e!110230 () Bool)

(assert (=> b!167757 (=> res!79829 e!110230)))

(assert (=> b!167757 (= res!79829 (or (not (= (size!3499 (_values!3449 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8219 thiss!1248)))) (not (= (size!3498 (_keys!5291 thiss!1248)) (size!3499 (_values!3449 thiss!1248)))) (bvslt (mask!8219 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3207 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3207 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!167758 () Bool)

(declare-fun e!110226 () Bool)

(declare-fun e!110223 () Bool)

(declare-fun mapRes!6459 () Bool)

(assert (=> b!167758 (= e!110226 (and e!110223 mapRes!6459))))

(declare-fun condMapEmpty!6459 () Bool)

(declare-fun mapDefault!6459 () ValueCell!1570)

