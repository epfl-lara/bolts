; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19520 () Bool)

(assert start!19520)

(declare-fun b!191529 () Bool)

(declare-fun b_free!4685 () Bool)

(declare-fun b_next!4685 () Bool)

(assert (=> b!191529 (= b_free!4685 (not b_next!4685))))

(declare-fun tp!16905 () Bool)

(declare-fun b_and!11377 () Bool)

(assert (=> b!191529 (= tp!16905 b_and!11377)))

(declare-fun b!191527 () Bool)

(declare-fun e!126064 () Bool)

(declare-fun e!126066 () Bool)

(assert (=> b!191527 (= e!126064 (not e!126066))))

(declare-fun res!90531 () Bool)

(assert (=> b!191527 (=> res!90531 e!126066)))

(declare-datatypes ((V!5589 0))(
  ( (V!5590 (val!2273 Int)) )
))
(declare-datatypes ((ValueCell!1885 0))(
  ( (ValueCellFull!1885 (v!4209 V!5589)) (EmptyCell!1885) )
))
(declare-datatypes ((array!8152 0))(
  ( (array!8153 (arr!3840 (Array (_ BitVec 32) (_ BitVec 64))) (size!4162 (_ BitVec 32))) )
))
(declare-datatypes ((array!8154 0))(
  ( (array!8155 (arr!3841 (Array (_ BitVec 32) ValueCell!1885)) (size!4163 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2678 0))(
  ( (LongMapFixedSize!2679 (defaultEntry!3911 Int) (mask!9132 (_ BitVec 32)) (extraKeys!3648 (_ BitVec 32)) (zeroValue!3752 V!5589) (minValue!3752 V!5589) (_size!1388 (_ BitVec 32)) (_keys!5889 array!8152) (_values!3894 array!8154) (_vacant!1388 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2678)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!191527 (= res!90531 (not (validMask!0 (mask!9132 thiss!1248))))))

(declare-datatypes ((tuple2!3530 0))(
  ( (tuple2!3531 (_1!1775 (_ BitVec 64)) (_2!1775 V!5589)) )
))
(declare-datatypes ((List!2446 0))(
  ( (Nil!2443) (Cons!2442 (h!3081 tuple2!3530) (t!7368 List!2446)) )
))
(declare-datatypes ((ListLongMap!2461 0))(
  ( (ListLongMap!2462 (toList!1246 List!2446)) )
))
(declare-fun lt!95148 () ListLongMap!2461)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!690 0))(
  ( (MissingZero!690 (index!4930 (_ BitVec 32))) (Found!690 (index!4931 (_ BitVec 32))) (Intermediate!690 (undefined!1502 Bool) (index!4932 (_ BitVec 32)) (x!20562 (_ BitVec 32))) (Undefined!690) (MissingVacant!690 (index!4933 (_ BitVec 32))) )
))
(declare-fun lt!95147 () SeekEntryResult!690)

(declare-fun v!309 () V!5589)

(declare-fun +!304 (ListLongMap!2461 tuple2!3530) ListLongMap!2461)

(declare-fun getCurrentListMap!889 (array!8152 array!8154 (_ BitVec 32) (_ BitVec 32) V!5589 V!5589 (_ BitVec 32) Int) ListLongMap!2461)

(assert (=> b!191527 (= (+!304 lt!95148 (tuple2!3531 key!828 v!309)) (getCurrentListMap!889 (_keys!5889 thiss!1248) (array!8155 (store (arr!3841 (_values!3894 thiss!1248)) (index!4931 lt!95147) (ValueCellFull!1885 v!309)) (size!4163 (_values!3894 thiss!1248))) (mask!9132 thiss!1248) (extraKeys!3648 thiss!1248) (zeroValue!3752 thiss!1248) (minValue!3752 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3911 thiss!1248)))))

(declare-datatypes ((Unit!5793 0))(
  ( (Unit!5794) )
))
(declare-fun lt!95150 () Unit!5793)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!110 (array!8152 array!8154 (_ BitVec 32) (_ BitVec 32) V!5589 V!5589 (_ BitVec 32) (_ BitVec 64) V!5589 Int) Unit!5793)

(assert (=> b!191527 (= lt!95150 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!110 (_keys!5889 thiss!1248) (_values!3894 thiss!1248) (mask!9132 thiss!1248) (extraKeys!3648 thiss!1248) (zeroValue!3752 thiss!1248) (minValue!3752 thiss!1248) (index!4931 lt!95147) key!828 v!309 (defaultEntry!3911 thiss!1248)))))

(declare-fun lt!95151 () Unit!5793)

(declare-fun e!126062 () Unit!5793)

(assert (=> b!191527 (= lt!95151 e!126062)))

(declare-fun c!34465 () Bool)

(declare-fun contains!1354 (ListLongMap!2461 (_ BitVec 64)) Bool)

(assert (=> b!191527 (= c!34465 (contains!1354 lt!95148 key!828))))

(assert (=> b!191527 (= lt!95148 (getCurrentListMap!889 (_keys!5889 thiss!1248) (_values!3894 thiss!1248) (mask!9132 thiss!1248) (extraKeys!3648 thiss!1248) (zeroValue!3752 thiss!1248) (minValue!3752 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3911 thiss!1248)))))

(declare-fun res!90533 () Bool)

(declare-fun e!126069 () Bool)

(assert (=> start!19520 (=> (not res!90533) (not e!126069))))

(declare-fun valid!1091 (LongMapFixedSize!2678) Bool)

(assert (=> start!19520 (= res!90533 (valid!1091 thiss!1248))))

(assert (=> start!19520 e!126069))

(declare-fun e!126070 () Bool)

(assert (=> start!19520 e!126070))

(assert (=> start!19520 true))

(declare-fun tp_is_empty!4457 () Bool)

(assert (=> start!19520 tp_is_empty!4457))

(declare-fun b!191528 () Bool)

(declare-fun lt!95146 () Unit!5793)

(assert (=> b!191528 (= e!126062 lt!95146)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!176 (array!8152 array!8154 (_ BitVec 32) (_ BitVec 32) V!5589 V!5589 (_ BitVec 64) Int) Unit!5793)

(assert (=> b!191528 (= lt!95146 (lemmaInListMapThenSeekEntryOrOpenFindsIt!176 (_keys!5889 thiss!1248) (_values!3894 thiss!1248) (mask!9132 thiss!1248) (extraKeys!3648 thiss!1248) (zeroValue!3752 thiss!1248) (minValue!3752 thiss!1248) key!828 (defaultEntry!3911 thiss!1248)))))

(declare-fun res!90532 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!191528 (= res!90532 (inRange!0 (index!4931 lt!95147) (mask!9132 thiss!1248)))))

(declare-fun e!126067 () Bool)

(assert (=> b!191528 (=> (not res!90532) (not e!126067))))

(assert (=> b!191528 e!126067))

(declare-fun e!126065 () Bool)

(declare-fun array_inv!2481 (array!8152) Bool)

(declare-fun array_inv!2482 (array!8154) Bool)

(assert (=> b!191529 (= e!126070 (and tp!16905 tp_is_empty!4457 (array_inv!2481 (_keys!5889 thiss!1248)) (array_inv!2482 (_values!3894 thiss!1248)) e!126065))))

(declare-fun mapNonEmpty!7698 () Bool)

(declare-fun mapRes!7698 () Bool)

(declare-fun tp!16904 () Bool)

(declare-fun e!126071 () Bool)

(assert (=> mapNonEmpty!7698 (= mapRes!7698 (and tp!16904 e!126071))))

(declare-fun mapKey!7698 () (_ BitVec 32))

(declare-fun mapValue!7698 () ValueCell!1885)

(declare-fun mapRest!7698 () (Array (_ BitVec 32) ValueCell!1885))

(assert (=> mapNonEmpty!7698 (= (arr!3841 (_values!3894 thiss!1248)) (store mapRest!7698 mapKey!7698 mapValue!7698))))

(declare-fun b!191530 () Bool)

(assert (=> b!191530 (= e!126071 tp_is_empty!4457)))

(declare-fun mapIsEmpty!7698 () Bool)

(assert (=> mapIsEmpty!7698 mapRes!7698))

(declare-fun b!191531 () Bool)

(assert (=> b!191531 (= e!126067 (= (select (arr!3840 (_keys!5889 thiss!1248)) (index!4931 lt!95147)) key!828))))

(declare-fun b!191532 () Bool)

(assert (=> b!191532 (= e!126069 e!126064)))

(declare-fun res!90534 () Bool)

(assert (=> b!191532 (=> (not res!90534) (not e!126064))))

(assert (=> b!191532 (= res!90534 (and (not (is-Undefined!690 lt!95147)) (not (is-MissingVacant!690 lt!95147)) (not (is-MissingZero!690 lt!95147)) (is-Found!690 lt!95147)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8152 (_ BitVec 32)) SeekEntryResult!690)

(assert (=> b!191532 (= lt!95147 (seekEntryOrOpen!0 key!828 (_keys!5889 thiss!1248) (mask!9132 thiss!1248)))))

(declare-fun b!191533 () Bool)

(declare-fun Unit!5795 () Unit!5793)

(assert (=> b!191533 (= e!126062 Unit!5795)))

(declare-fun lt!95149 () Unit!5793)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!180 (array!8152 array!8154 (_ BitVec 32) (_ BitVec 32) V!5589 V!5589 (_ BitVec 64) Int) Unit!5793)

(assert (=> b!191533 (= lt!95149 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!180 (_keys!5889 thiss!1248) (_values!3894 thiss!1248) (mask!9132 thiss!1248) (extraKeys!3648 thiss!1248) (zeroValue!3752 thiss!1248) (minValue!3752 thiss!1248) key!828 (defaultEntry!3911 thiss!1248)))))

(assert (=> b!191533 false))

(declare-fun b!191534 () Bool)

(declare-fun res!90535 () Bool)

(assert (=> b!191534 (=> (not res!90535) (not e!126069))))

(assert (=> b!191534 (= res!90535 (not (= key!828 (bvneg key!828))))))

(declare-fun b!191535 () Bool)

(declare-fun e!126063 () Bool)

(assert (=> b!191535 (= e!126065 (and e!126063 mapRes!7698))))

(declare-fun condMapEmpty!7698 () Bool)

(declare-fun mapDefault!7698 () ValueCell!1885)

