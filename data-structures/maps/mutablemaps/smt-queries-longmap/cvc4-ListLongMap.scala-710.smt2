; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16780 () Bool)

(assert start!16780)

(declare-fun b!168667 () Bool)

(declare-fun b_free!4073 () Bool)

(declare-fun b_next!4073 () Bool)

(assert (=> b!168667 (= b_free!4073 (not b_next!4073))))

(declare-fun tp!14819 () Bool)

(declare-fun b_and!10505 () Bool)

(assert (=> b!168667 (= tp!14819 b_and!10505)))

(declare-datatypes ((V!4813 0))(
  ( (V!4814 (val!1982 Int)) )
))
(declare-datatypes ((ValueCell!1594 0))(
  ( (ValueCellFull!1594 (v!3843 V!4813)) (EmptyCell!1594) )
))
(declare-datatypes ((array!6846 0))(
  ( (array!6847 (arr!3258 (Array (_ BitVec 32) (_ BitVec 64))) (size!3546 (_ BitVec 32))) )
))
(declare-datatypes ((array!6848 0))(
  ( (array!6849 (arr!3259 (Array (_ BitVec 32) ValueCell!1594)) (size!3547 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2096 0))(
  ( (LongMapFixedSize!2097 (defaultEntry!3490 Int) (mask!8259 (_ BitVec 32)) (extraKeys!3231 (_ BitVec 32)) (zeroValue!3333 V!4813) (minValue!3333 V!4813) (_size!1097 (_ BitVec 32)) (_keys!5315 array!6846) (_values!3473 array!6848) (_vacant!1097 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2096)

(declare-fun e!110936 () Bool)

(declare-fun e!110941 () Bool)

(declare-fun tp_is_empty!3875 () Bool)

(declare-fun array_inv!2087 (array!6846) Bool)

(declare-fun array_inv!2088 (array!6848) Bool)

(assert (=> b!168667 (= e!110941 (and tp!14819 tp_is_empty!3875 (array_inv!2087 (_keys!5315 thiss!1248)) (array_inv!2088 (_values!3473 thiss!1248)) e!110936))))

(declare-fun b!168668 () Bool)

(declare-fun e!110934 () Bool)

(assert (=> b!168668 (= e!110934 (not true))))

(declare-fun lt!84449 () Bool)

(declare-fun lt!84443 () array!6848)

(declare-fun valid!899 (LongMapFixedSize!2096) Bool)

(assert (=> b!168668 (= lt!84449 (valid!899 (LongMapFixedSize!2097 (defaultEntry!3490 thiss!1248) (mask!8259 thiss!1248) (extraKeys!3231 thiss!1248) (zeroValue!3333 thiss!1248) (minValue!3333 thiss!1248) (_size!1097 thiss!1248) (_keys!5315 thiss!1248) lt!84443 (_vacant!1097 thiss!1248))))))

(declare-datatypes ((tuple2!3172 0))(
  ( (tuple2!3173 (_1!1596 (_ BitVec 64)) (_2!1596 V!4813)) )
))
(declare-datatypes ((List!2189 0))(
  ( (Nil!2186) (Cons!2185 (h!2802 tuple2!3172) (t!6999 List!2189)) )
))
(declare-datatypes ((ListLongMap!2141 0))(
  ( (ListLongMap!2142 (toList!1086 List!2189)) )
))
(declare-fun lt!84444 () ListLongMap!2141)

(declare-datatypes ((SeekEntryResult!517 0))(
  ( (MissingZero!517 (index!4236 (_ BitVec 32))) (Found!517 (index!4237 (_ BitVec 32))) (Intermediate!517 (undefined!1329 Bool) (index!4238 (_ BitVec 32)) (x!18649 (_ BitVec 32))) (Undefined!517) (MissingVacant!517 (index!4239 (_ BitVec 32))) )
))
(declare-fun lt!84445 () SeekEntryResult!517)

(declare-fun contains!1122 (ListLongMap!2141 (_ BitVec 64)) Bool)

(assert (=> b!168668 (contains!1122 lt!84444 (select (arr!3258 (_keys!5315 thiss!1248)) (index!4237 lt!84445)))))

(declare-datatypes ((Unit!5199 0))(
  ( (Unit!5200) )
))
(declare-fun lt!84448 () Unit!5199)

(declare-fun lemmaValidKeyInArrayIsInListMap!131 (array!6846 array!6848 (_ BitVec 32) (_ BitVec 32) V!4813 V!4813 (_ BitVec 32) Int) Unit!5199)

(assert (=> b!168668 (= lt!84448 (lemmaValidKeyInArrayIsInListMap!131 (_keys!5315 thiss!1248) lt!84443 (mask!8259 thiss!1248) (extraKeys!3231 thiss!1248) (zeroValue!3333 thiss!1248) (minValue!3333 thiss!1248) (index!4237 lt!84445) (defaultEntry!3490 thiss!1248)))))

(declare-fun lt!84447 () ListLongMap!2141)

(assert (=> b!168668 (= lt!84447 lt!84444)))

(declare-fun getCurrentListMap!739 (array!6846 array!6848 (_ BitVec 32) (_ BitVec 32) V!4813 V!4813 (_ BitVec 32) Int) ListLongMap!2141)

(assert (=> b!168668 (= lt!84444 (getCurrentListMap!739 (_keys!5315 thiss!1248) lt!84443 (mask!8259 thiss!1248) (extraKeys!3231 thiss!1248) (zeroValue!3333 thiss!1248) (minValue!3333 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3490 thiss!1248)))))

(declare-fun lt!84446 () ListLongMap!2141)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun v!309 () V!4813)

(declare-fun +!228 (ListLongMap!2141 tuple2!3172) ListLongMap!2141)

(assert (=> b!168668 (= lt!84447 (+!228 lt!84446 (tuple2!3173 key!828 v!309)))))

(assert (=> b!168668 (= lt!84443 (array!6849 (store (arr!3259 (_values!3473 thiss!1248)) (index!4237 lt!84445) (ValueCellFull!1594 v!309)) (size!3547 (_values!3473 thiss!1248))))))

(declare-fun lt!84441 () Unit!5199)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!88 (array!6846 array!6848 (_ BitVec 32) (_ BitVec 32) V!4813 V!4813 (_ BitVec 32) (_ BitVec 64) V!4813 Int) Unit!5199)

(assert (=> b!168668 (= lt!84441 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!88 (_keys!5315 thiss!1248) (_values!3473 thiss!1248) (mask!8259 thiss!1248) (extraKeys!3231 thiss!1248) (zeroValue!3333 thiss!1248) (minValue!3333 thiss!1248) (index!4237 lt!84445) key!828 v!309 (defaultEntry!3490 thiss!1248)))))

(declare-fun lt!84442 () Unit!5199)

(declare-fun e!110938 () Unit!5199)

(assert (=> b!168668 (= lt!84442 e!110938)))

(declare-fun c!30372 () Bool)

(assert (=> b!168668 (= c!30372 (contains!1122 lt!84446 key!828))))

(assert (=> b!168668 (= lt!84446 (getCurrentListMap!739 (_keys!5315 thiss!1248) (_values!3473 thiss!1248) (mask!8259 thiss!1248) (extraKeys!3231 thiss!1248) (zeroValue!3333 thiss!1248) (minValue!3333 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3490 thiss!1248)))))

(declare-fun b!168669 () Bool)

(declare-fun e!110935 () Bool)

(assert (=> b!168669 (= e!110935 tp_is_empty!3875)))

(declare-fun b!168670 () Bool)

(declare-fun e!110933 () Bool)

(assert (=> b!168670 (= e!110933 e!110934)))

(declare-fun res!80310 () Bool)

(assert (=> b!168670 (=> (not res!80310) (not e!110934))))

(assert (=> b!168670 (= res!80310 (and (not (is-Undefined!517 lt!84445)) (not (is-MissingVacant!517 lt!84445)) (not (is-MissingZero!517 lt!84445)) (is-Found!517 lt!84445)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6846 (_ BitVec 32)) SeekEntryResult!517)

(assert (=> b!168670 (= lt!84445 (seekEntryOrOpen!0 key!828 (_keys!5315 thiss!1248) (mask!8259 thiss!1248)))))

(declare-fun mapIsEmpty!6531 () Bool)

(declare-fun mapRes!6531 () Bool)

(assert (=> mapIsEmpty!6531 mapRes!6531))

(declare-fun b!168671 () Bool)

(declare-fun lt!84439 () Unit!5199)

(assert (=> b!168671 (= e!110938 lt!84439)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!128 (array!6846 array!6848 (_ BitVec 32) (_ BitVec 32) V!4813 V!4813 (_ BitVec 64) Int) Unit!5199)

(assert (=> b!168671 (= lt!84439 (lemmaInListMapThenSeekEntryOrOpenFindsIt!128 (_keys!5315 thiss!1248) (_values!3473 thiss!1248) (mask!8259 thiss!1248) (extraKeys!3231 thiss!1248) (zeroValue!3333 thiss!1248) (minValue!3333 thiss!1248) key!828 (defaultEntry!3490 thiss!1248)))))

(declare-fun res!80307 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!168671 (= res!80307 (inRange!0 (index!4237 lt!84445) (mask!8259 thiss!1248)))))

(declare-fun e!110937 () Bool)

(assert (=> b!168671 (=> (not res!80307) (not e!110937))))

(assert (=> b!168671 e!110937))

(declare-fun mapNonEmpty!6531 () Bool)

(declare-fun tp!14820 () Bool)

(declare-fun e!110940 () Bool)

(assert (=> mapNonEmpty!6531 (= mapRes!6531 (and tp!14820 e!110940))))

(declare-fun mapRest!6531 () (Array (_ BitVec 32) ValueCell!1594))

(declare-fun mapValue!6531 () ValueCell!1594)

(declare-fun mapKey!6531 () (_ BitVec 32))

(assert (=> mapNonEmpty!6531 (= (arr!3259 (_values!3473 thiss!1248)) (store mapRest!6531 mapKey!6531 mapValue!6531))))

(declare-fun b!168672 () Bool)

(assert (=> b!168672 (= e!110936 (and e!110935 mapRes!6531))))

(declare-fun condMapEmpty!6531 () Bool)

(declare-fun mapDefault!6531 () ValueCell!1594)

