; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16704 () Bool)

(assert start!16704)

(declare-fun b!167209 () Bool)

(declare-fun b_free!3997 () Bool)

(declare-fun b_next!3997 () Bool)

(assert (=> b!167209 (= b_free!3997 (not b_next!3997))))

(declare-fun tp!14591 () Bool)

(declare-fun b_and!10429 () Bool)

(assert (=> b!167209 (= tp!14591 b_and!10429)))

(declare-fun e!109801 () Bool)

(declare-fun e!109805 () Bool)

(declare-datatypes ((V!4713 0))(
  ( (V!4714 (val!1944 Int)) )
))
(declare-datatypes ((ValueCell!1556 0))(
  ( (ValueCellFull!1556 (v!3805 V!4713)) (EmptyCell!1556) )
))
(declare-datatypes ((array!6694 0))(
  ( (array!6695 (arr!3182 (Array (_ BitVec 32) (_ BitVec 64))) (size!3470 (_ BitVec 32))) )
))
(declare-datatypes ((array!6696 0))(
  ( (array!6697 (arr!3183 (Array (_ BitVec 32) ValueCell!1556)) (size!3471 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2020 0))(
  ( (LongMapFixedSize!2021 (defaultEntry!3452 Int) (mask!8197 (_ BitVec 32)) (extraKeys!3193 (_ BitVec 32)) (zeroValue!3295 V!4713) (minValue!3295 V!4713) (_size!1059 (_ BitVec 32)) (_keys!5277 array!6694) (_values!3435 array!6696) (_vacant!1059 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2020)

(declare-fun tp_is_empty!3799 () Bool)

(declare-fun array_inv!2039 (array!6694) Bool)

(declare-fun array_inv!2040 (array!6696) Bool)

(assert (=> b!167209 (= e!109805 (and tp!14591 tp_is_empty!3799 (array_inv!2039 (_keys!5277 thiss!1248)) (array_inv!2040 (_values!3435 thiss!1248)) e!109801))))

(declare-fun b!167210 () Bool)

(declare-fun e!109803 () Bool)

(declare-fun e!109809 () Bool)

(assert (=> b!167210 (= e!109803 e!109809)))

(declare-fun res!79537 () Bool)

(assert (=> b!167210 (=> (not res!79537) (not e!109809))))

(declare-datatypes ((SeekEntryResult!485 0))(
  ( (MissingZero!485 (index!4108 (_ BitVec 32))) (Found!485 (index!4109 (_ BitVec 32))) (Intermediate!485 (undefined!1297 Bool) (index!4110 (_ BitVec 32)) (x!18521 (_ BitVec 32))) (Undefined!485) (MissingVacant!485 (index!4111 (_ BitVec 32))) )
))
(declare-fun lt!83641 () SeekEntryResult!485)

(assert (=> b!167210 (= res!79537 (and (not (is-Undefined!485 lt!83641)) (not (is-MissingVacant!485 lt!83641)) (not (is-MissingZero!485 lt!83641)) (is-Found!485 lt!83641)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6694 (_ BitVec 32)) SeekEntryResult!485)

(assert (=> b!167210 (= lt!83641 (seekEntryOrOpen!0 key!828 (_keys!5277 thiss!1248) (mask!8197 thiss!1248)))))

(declare-fun mapIsEmpty!6417 () Bool)

(declare-fun mapRes!6417 () Bool)

(assert (=> mapIsEmpty!6417 mapRes!6417))

(declare-fun b!167211 () Bool)

(declare-fun res!79538 () Bool)

(assert (=> b!167211 (=> (not res!79538) (not e!109803))))

(assert (=> b!167211 (= res!79538 (not (= key!828 (bvneg key!828))))))

(declare-fun b!167212 () Bool)

(declare-fun e!109807 () Bool)

(assert (=> b!167212 (= e!109807 false)))

(declare-fun lt!83644 () Bool)

(declare-datatypes ((List!2142 0))(
  ( (Nil!2139) (Cons!2138 (h!2755 (_ BitVec 64)) (t!6952 List!2142)) )
))
(declare-fun arrayNoDuplicates!0 (array!6694 (_ BitVec 32) List!2142) Bool)

(assert (=> b!167212 (= lt!83644 (arrayNoDuplicates!0 (_keys!5277 thiss!1248) #b00000000000000000000000000000000 Nil!2139))))

(declare-fun b!167213 () Bool)

(declare-datatypes ((Unit!5112 0))(
  ( (Unit!5113) )
))
(declare-fun e!109810 () Unit!5112)

(declare-fun lt!83643 () Unit!5112)

(assert (=> b!167213 (= e!109810 lt!83643)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!103 (array!6694 array!6696 (_ BitVec 32) (_ BitVec 32) V!4713 V!4713 (_ BitVec 64) Int) Unit!5112)

(assert (=> b!167213 (= lt!83643 (lemmaInListMapThenSeekEntryOrOpenFindsIt!103 (_keys!5277 thiss!1248) (_values!3435 thiss!1248) (mask!8197 thiss!1248) (extraKeys!3193 thiss!1248) (zeroValue!3295 thiss!1248) (minValue!3295 thiss!1248) key!828 (defaultEntry!3452 thiss!1248)))))

(declare-fun res!79534 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!167213 (= res!79534 (inRange!0 (index!4109 lt!83641) (mask!8197 thiss!1248)))))

(declare-fun e!109806 () Bool)

(assert (=> b!167213 (=> (not res!79534) (not e!109806))))

(assert (=> b!167213 e!109806))

(declare-fun b!167214 () Bool)

(declare-fun e!109802 () Bool)

(assert (=> b!167214 (= e!109801 (and e!109802 mapRes!6417))))

(declare-fun condMapEmpty!6417 () Bool)

(declare-fun mapDefault!6417 () ValueCell!1556)

