; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16728 () Bool)

(assert start!16728)

(declare-fun b!167689 () Bool)

(declare-fun b_free!4021 () Bool)

(declare-fun b_next!4021 () Bool)

(assert (=> b!167689 (= b_free!4021 (not b_next!4021))))

(declare-fun tp!14664 () Bool)

(declare-fun b_and!10453 () Bool)

(assert (=> b!167689 (= tp!14664 b_and!10453)))

(declare-fun b!167677 () Bool)

(declare-fun res!79788 () Bool)

(declare-fun e!110169 () Bool)

(assert (=> b!167677 (=> (not res!79788) (not e!110169))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!167677 (= res!79788 (not (= key!828 (bvneg key!828))))))

(declare-fun b!167678 () Bool)

(declare-datatypes ((Unit!5139 0))(
  ( (Unit!5140) )
))
(declare-fun e!110168 () Unit!5139)

(declare-fun Unit!5141 () Unit!5139)

(assert (=> b!167678 (= e!110168 Unit!5141)))

(declare-fun lt!83867 () Unit!5139)

(declare-datatypes ((V!4745 0))(
  ( (V!4746 (val!1956 Int)) )
))
(declare-datatypes ((ValueCell!1568 0))(
  ( (ValueCellFull!1568 (v!3817 V!4745)) (EmptyCell!1568) )
))
(declare-datatypes ((array!6742 0))(
  ( (array!6743 (arr!3206 (Array (_ BitVec 32) (_ BitVec 64))) (size!3494 (_ BitVec 32))) )
))
(declare-datatypes ((array!6744 0))(
  ( (array!6745 (arr!3207 (Array (_ BitVec 32) ValueCell!1568)) (size!3495 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2044 0))(
  ( (LongMapFixedSize!2045 (defaultEntry!3464 Int) (mask!8217 (_ BitVec 32)) (extraKeys!3205 (_ BitVec 32)) (zeroValue!3307 V!4745) (minValue!3307 V!4745) (_size!1071 (_ BitVec 32)) (_keys!5289 array!6742) (_values!3447 array!6744) (_vacant!1071 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2044)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!109 (array!6742 array!6744 (_ BitVec 32) (_ BitVec 32) V!4745 V!4745 (_ BitVec 64) Int) Unit!5139)

(assert (=> b!167678 (= lt!83867 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!109 (_keys!5289 thiss!1248) (_values!3447 thiss!1248) (mask!8217 thiss!1248) (extraKeys!3205 thiss!1248) (zeroValue!3307 thiss!1248) (minValue!3307 thiss!1248) key!828 (defaultEntry!3464 thiss!1248)))))

(assert (=> b!167678 false))

(declare-fun b!167679 () Bool)

(declare-fun e!110166 () Bool)

(declare-fun tp_is_empty!3823 () Bool)

(assert (=> b!167679 (= e!110166 tp_is_empty!3823)))

(declare-fun e!110162 () Bool)

(declare-datatypes ((SeekEntryResult!495 0))(
  ( (MissingZero!495 (index!4148 (_ BitVec 32))) (Found!495 (index!4149 (_ BitVec 32))) (Intermediate!495 (undefined!1307 Bool) (index!4150 (_ BitVec 32)) (x!18563 (_ BitVec 32))) (Undefined!495) (MissingVacant!495 (index!4151 (_ BitVec 32))) )
))
(declare-fun lt!83862 () SeekEntryResult!495)

(declare-fun b!167680 () Bool)

(assert (=> b!167680 (= e!110162 (= (select (arr!3206 (_keys!5289 thiss!1248)) (index!4149 lt!83862)) key!828))))

(declare-fun b!167681 () Bool)

(declare-fun e!110161 () Bool)

(assert (=> b!167681 (= e!110169 e!110161)))

(declare-fun res!79791 () Bool)

(assert (=> b!167681 (=> (not res!79791) (not e!110161))))

(assert (=> b!167681 (= res!79791 (and (not (is-Undefined!495 lt!83862)) (not (is-MissingVacant!495 lt!83862)) (not (is-MissingZero!495 lt!83862)) (is-Found!495 lt!83862)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6742 (_ BitVec 32)) SeekEntryResult!495)

(assert (=> b!167681 (= lt!83862 (seekEntryOrOpen!0 key!828 (_keys!5289 thiss!1248) (mask!8217 thiss!1248)))))

(declare-fun b!167682 () Bool)

(declare-fun e!110167 () Bool)

(declare-fun e!110165 () Bool)

(declare-fun mapRes!6453 () Bool)

(assert (=> b!167682 (= e!110167 (and e!110165 mapRes!6453))))

(declare-fun condMapEmpty!6453 () Bool)

(declare-fun mapDefault!6453 () ValueCell!1568)

