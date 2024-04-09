; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19412 () Bool)

(assert start!19412)

(declare-fun b!190676 () Bool)

(declare-fun b_free!4673 () Bool)

(declare-fun b_next!4673 () Bool)

(assert (=> b!190676 (= b_free!4673 (not b_next!4673))))

(declare-fun tp!16862 () Bool)

(declare-fun b_and!11349 () Bool)

(assert (=> b!190676 (= tp!16862 b_and!11349)))

(declare-fun b!190667 () Bool)

(declare-fun e!125506 () Bool)

(declare-datatypes ((V!5573 0))(
  ( (V!5574 (val!2267 Int)) )
))
(declare-datatypes ((ValueCell!1879 0))(
  ( (ValueCellFull!1879 (v!4195 V!5573)) (EmptyCell!1879) )
))
(declare-datatypes ((array!8124 0))(
  ( (array!8125 (arr!3828 (Array (_ BitVec 32) (_ BitVec 64))) (size!4149 (_ BitVec 32))) )
))
(declare-datatypes ((array!8126 0))(
  ( (array!8127 (arr!3829 (Array (_ BitVec 32) ValueCell!1879)) (size!4150 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2666 0))(
  ( (LongMapFixedSize!2667 (defaultEntry!3893 Int) (mask!9100 (_ BitVec 32)) (extraKeys!3630 (_ BitVec 32)) (zeroValue!3734 V!5573) (minValue!3734 V!5573) (_size!1382 (_ BitVec 32)) (_keys!5866 array!8124) (_values!3876 array!8126) (_vacant!1382 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2666)

(assert (=> b!190667 (= e!125506 (or (not (= (size!4150 (_values!3876 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!9100 thiss!1248)))) (= (size!4149 (_keys!5866 thiss!1248)) (size!4150 (_values!3876 thiss!1248)))))))

(declare-fun b!190668 () Bool)

(declare-fun e!125497 () Bool)

(declare-fun tp_is_empty!4445 () Bool)

(assert (=> b!190668 (= e!125497 tp_is_empty!4445)))

(declare-fun b!190669 () Bool)

(declare-fun res!90146 () Bool)

(declare-fun e!125500 () Bool)

(assert (=> b!190669 (=> (not res!90146) (not e!125500))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!190669 (= res!90146 (not (= key!828 (bvneg key!828))))))

(declare-fun b!190670 () Bool)

(declare-fun e!125498 () Bool)

(assert (=> b!190670 (= e!125498 (not e!125506))))

(declare-fun res!90144 () Bool)

(assert (=> b!190670 (=> res!90144 e!125506)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!190670 (= res!90144 (not (validMask!0 (mask!9100 thiss!1248))))))

(declare-datatypes ((tuple2!3520 0))(
  ( (tuple2!3521 (_1!1770 (_ BitVec 64)) (_2!1770 V!5573)) )
))
(declare-datatypes ((List!2439 0))(
  ( (Nil!2436) (Cons!2435 (h!3073 tuple2!3520) (t!7357 List!2439)) )
))
(declare-datatypes ((ListLongMap!2451 0))(
  ( (ListLongMap!2452 (toList!1241 List!2439)) )
))
(declare-fun lt!94595 () ListLongMap!2451)

(declare-fun v!309 () V!5573)

(declare-datatypes ((SeekEntryResult!685 0))(
  ( (MissingZero!685 (index!4910 (_ BitVec 32))) (Found!685 (index!4911 (_ BitVec 32))) (Intermediate!685 (undefined!1497 Bool) (index!4912 (_ BitVec 32)) (x!20513 (_ BitVec 32))) (Undefined!685) (MissingVacant!685 (index!4913 (_ BitVec 32))) )
))
(declare-fun lt!94590 () SeekEntryResult!685)

(declare-fun +!299 (ListLongMap!2451 tuple2!3520) ListLongMap!2451)

(declare-fun getCurrentListMap!884 (array!8124 array!8126 (_ BitVec 32) (_ BitVec 32) V!5573 V!5573 (_ BitVec 32) Int) ListLongMap!2451)

(assert (=> b!190670 (= (+!299 lt!94595 (tuple2!3521 key!828 v!309)) (getCurrentListMap!884 (_keys!5866 thiss!1248) (array!8127 (store (arr!3829 (_values!3876 thiss!1248)) (index!4911 lt!94590) (ValueCellFull!1879 v!309)) (size!4150 (_values!3876 thiss!1248))) (mask!9100 thiss!1248) (extraKeys!3630 thiss!1248) (zeroValue!3734 thiss!1248) (minValue!3734 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3893 thiss!1248)))))

(declare-datatypes ((Unit!5764 0))(
  ( (Unit!5765) )
))
(declare-fun lt!94591 () Unit!5764)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!105 (array!8124 array!8126 (_ BitVec 32) (_ BitVec 32) V!5573 V!5573 (_ BitVec 32) (_ BitVec 64) V!5573 Int) Unit!5764)

(assert (=> b!190670 (= lt!94591 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!105 (_keys!5866 thiss!1248) (_values!3876 thiss!1248) (mask!9100 thiss!1248) (extraKeys!3630 thiss!1248) (zeroValue!3734 thiss!1248) (minValue!3734 thiss!1248) (index!4911 lt!94590) key!828 v!309 (defaultEntry!3893 thiss!1248)))))

(declare-fun lt!94594 () Unit!5764)

(declare-fun e!125503 () Unit!5764)

(assert (=> b!190670 (= lt!94594 e!125503)))

(declare-fun c!34276 () Bool)

(declare-fun contains!1346 (ListLongMap!2451 (_ BitVec 64)) Bool)

(assert (=> b!190670 (= c!34276 (contains!1346 lt!94595 key!828))))

(assert (=> b!190670 (= lt!94595 (getCurrentListMap!884 (_keys!5866 thiss!1248) (_values!3876 thiss!1248) (mask!9100 thiss!1248) (extraKeys!3630 thiss!1248) (zeroValue!3734 thiss!1248) (minValue!3734 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3893 thiss!1248)))))

(declare-fun b!190671 () Bool)

(declare-fun Unit!5766 () Unit!5764)

(assert (=> b!190671 (= e!125503 Unit!5766)))

(declare-fun lt!94593 () Unit!5764)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!176 (array!8124 array!8126 (_ BitVec 32) (_ BitVec 32) V!5573 V!5573 (_ BitVec 64) Int) Unit!5764)

(assert (=> b!190671 (= lt!94593 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!176 (_keys!5866 thiss!1248) (_values!3876 thiss!1248) (mask!9100 thiss!1248) (extraKeys!3630 thiss!1248) (zeroValue!3734 thiss!1248) (minValue!3734 thiss!1248) key!828 (defaultEntry!3893 thiss!1248)))))

(assert (=> b!190671 false))

(declare-fun e!125502 () Bool)

(declare-fun b!190672 () Bool)

(assert (=> b!190672 (= e!125502 (= (select (arr!3828 (_keys!5866 thiss!1248)) (index!4911 lt!94590)) key!828))))

(declare-fun b!190673 () Bool)

(declare-fun e!125504 () Bool)

(assert (=> b!190673 (= e!125504 tp_is_empty!4445)))

(declare-fun mapNonEmpty!7673 () Bool)

(declare-fun mapRes!7673 () Bool)

(declare-fun tp!16861 () Bool)

(assert (=> mapNonEmpty!7673 (= mapRes!7673 (and tp!16861 e!125497))))

(declare-fun mapKey!7673 () (_ BitVec 32))

(declare-fun mapRest!7673 () (Array (_ BitVec 32) ValueCell!1879))

(declare-fun mapValue!7673 () ValueCell!1879)

(assert (=> mapNonEmpty!7673 (= (arr!3829 (_values!3876 thiss!1248)) (store mapRest!7673 mapKey!7673 mapValue!7673))))

(declare-fun b!190674 () Bool)

(declare-fun e!125499 () Bool)

(assert (=> b!190674 (= e!125499 (and e!125504 mapRes!7673))))

(declare-fun condMapEmpty!7673 () Bool)

(declare-fun mapDefault!7673 () ValueCell!1879)

