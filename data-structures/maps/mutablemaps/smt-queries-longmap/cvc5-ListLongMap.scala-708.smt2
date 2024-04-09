; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16764 () Bool)

(assert start!16764)

(declare-fun b!168379 () Bool)

(declare-fun b_free!4057 () Bool)

(declare-fun b_next!4057 () Bool)

(assert (=> b!168379 (= b_free!4057 (not b_next!4057))))

(declare-fun tp!14771 () Bool)

(declare-fun b_and!10489 () Bool)

(assert (=> b!168379 (= tp!14771 b_and!10489)))

(declare-fun e!110703 () Bool)

(declare-datatypes ((V!4793 0))(
  ( (V!4794 (val!1974 Int)) )
))
(declare-datatypes ((ValueCell!1586 0))(
  ( (ValueCellFull!1586 (v!3835 V!4793)) (EmptyCell!1586) )
))
(declare-datatypes ((array!6814 0))(
  ( (array!6815 (arr!3242 (Array (_ BitVec 32) (_ BitVec 64))) (size!3530 (_ BitVec 32))) )
))
(declare-datatypes ((array!6816 0))(
  ( (array!6817 (arr!3243 (Array (_ BitVec 32) ValueCell!1586)) (size!3531 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2080 0))(
  ( (LongMapFixedSize!2081 (defaultEntry!3482 Int) (mask!8247 (_ BitVec 32)) (extraKeys!3223 (_ BitVec 32)) (zeroValue!3325 V!4793) (minValue!3325 V!4793) (_size!1089 (_ BitVec 32)) (_keys!5307 array!6814) (_values!3465 array!6816) (_vacant!1089 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2080)

(declare-fun e!110708 () Bool)

(declare-fun tp_is_empty!3859 () Bool)

(declare-fun array_inv!2077 (array!6814) Bool)

(declare-fun array_inv!2078 (array!6816) Bool)

(assert (=> b!168379 (= e!110708 (and tp!14771 tp_is_empty!3859 (array_inv!2077 (_keys!5307 thiss!1248)) (array_inv!2078 (_values!3465 thiss!1248)) e!110703))))

(declare-fun e!110702 () Bool)

(declare-datatypes ((SeekEntryResult!510 0))(
  ( (MissingZero!510 (index!4208 (_ BitVec 32))) (Found!510 (index!4209 (_ BitVec 32))) (Intermediate!510 (undefined!1322 Bool) (index!4210 (_ BitVec 32)) (x!18626 (_ BitVec 32))) (Undefined!510) (MissingVacant!510 (index!4211 (_ BitVec 32))) )
))
(declare-fun lt!84244 () SeekEntryResult!510)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun b!168380 () Bool)

(assert (=> b!168380 (= e!110702 (= (select (arr!3242 (_keys!5307 thiss!1248)) (index!4209 lt!84244)) key!828))))

(declare-fun b!168381 () Bool)

(declare-fun res!80169 () Bool)

(declare-fun e!110704 () Bool)

(assert (=> b!168381 (=> res!80169 e!110704)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6814 (_ BitVec 32)) Bool)

(assert (=> b!168381 (= res!80169 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5307 thiss!1248) (mask!8247 thiss!1248))))))

(declare-fun b!168382 () Bool)

(declare-datatypes ((Unit!5180 0))(
  ( (Unit!5181) )
))
(declare-fun e!110705 () Unit!5180)

(declare-fun Unit!5182 () Unit!5180)

(assert (=> b!168382 (= e!110705 Unit!5182)))

(declare-fun lt!84240 () Unit!5180)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!122 (array!6814 array!6816 (_ BitVec 32) (_ BitVec 32) V!4793 V!4793 (_ BitVec 64) Int) Unit!5180)

(assert (=> b!168382 (= lt!84240 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!122 (_keys!5307 thiss!1248) (_values!3465 thiss!1248) (mask!8247 thiss!1248) (extraKeys!3223 thiss!1248) (zeroValue!3325 thiss!1248) (minValue!3325 thiss!1248) key!828 (defaultEntry!3482 thiss!1248)))))

(assert (=> b!168382 false))

(declare-fun mapNonEmpty!6507 () Bool)

(declare-fun mapRes!6507 () Bool)

(declare-fun tp!14772 () Bool)

(declare-fun e!110709 () Bool)

(assert (=> mapNonEmpty!6507 (= mapRes!6507 (and tp!14772 e!110709))))

(declare-fun mapValue!6507 () ValueCell!1586)

(declare-fun mapKey!6507 () (_ BitVec 32))

(declare-fun mapRest!6507 () (Array (_ BitVec 32) ValueCell!1586))

(assert (=> mapNonEmpty!6507 (= (arr!3243 (_values!3465 thiss!1248)) (store mapRest!6507 mapKey!6507 mapValue!6507))))

(declare-fun res!80166 () Bool)

(declare-fun e!110706 () Bool)

(assert (=> start!16764 (=> (not res!80166) (not e!110706))))

(declare-fun valid!893 (LongMapFixedSize!2080) Bool)

(assert (=> start!16764 (= res!80166 (valid!893 thiss!1248))))

(assert (=> start!16764 e!110706))

(assert (=> start!16764 e!110708))

(assert (=> start!16764 true))

(assert (=> start!16764 tp_is_empty!3859))

(declare-fun b!168383 () Bool)

(declare-fun e!110701 () Bool)

(assert (=> b!168383 (= e!110703 (and e!110701 mapRes!6507))))

(declare-fun condMapEmpty!6507 () Bool)

(declare-fun mapDefault!6507 () ValueCell!1586)

