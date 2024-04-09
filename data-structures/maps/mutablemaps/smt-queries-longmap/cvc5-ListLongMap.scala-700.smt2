; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16716 () Bool)

(assert start!16716)

(declare-fun b!167451 () Bool)

(declare-fun b_free!4009 () Bool)

(declare-fun b_next!4009 () Bool)

(assert (=> b!167451 (= b_free!4009 (not b_next!4009))))

(declare-fun tp!14628 () Bool)

(declare-fun b_and!10441 () Bool)

(assert (=> b!167451 (= tp!14628 b_and!10441)))

(declare-fun b!167443 () Bool)

(declare-datatypes ((Unit!5128 0))(
  ( (Unit!5129) )
))
(declare-fun e!109986 () Unit!5128)

(declare-fun Unit!5130 () Unit!5128)

(assert (=> b!167443 (= e!109986 Unit!5130)))

(declare-fun lt!83736 () Unit!5128)

(declare-datatypes ((V!4729 0))(
  ( (V!4730 (val!1950 Int)) )
))
(declare-datatypes ((ValueCell!1562 0))(
  ( (ValueCellFull!1562 (v!3811 V!4729)) (EmptyCell!1562) )
))
(declare-datatypes ((array!6718 0))(
  ( (array!6719 (arr!3194 (Array (_ BitVec 32) (_ BitVec 64))) (size!3482 (_ BitVec 32))) )
))
(declare-datatypes ((array!6720 0))(
  ( (array!6721 (arr!3195 (Array (_ BitVec 32) ValueCell!1562)) (size!3483 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2032 0))(
  ( (LongMapFixedSize!2033 (defaultEntry!3458 Int) (mask!8207 (_ BitVec 32)) (extraKeys!3199 (_ BitVec 32)) (zeroValue!3301 V!4729) (minValue!3301 V!4729) (_size!1065 (_ BitVec 32)) (_keys!5283 array!6718) (_values!3441 array!6720) (_vacant!1065 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2032)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!106 (array!6718 array!6720 (_ BitVec 32) (_ BitVec 32) V!4729 V!4729 (_ BitVec 64) Int) Unit!5128)

(assert (=> b!167443 (= lt!83736 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!106 (_keys!5283 thiss!1248) (_values!3441 thiss!1248) (mask!8207 thiss!1248) (extraKeys!3199 thiss!1248) (zeroValue!3301 thiss!1248) (minValue!3301 thiss!1248) key!828 (defaultEntry!3458 thiss!1248)))))

(assert (=> b!167443 false))

(declare-fun b!167444 () Bool)

(declare-fun res!79665 () Bool)

(declare-fun e!109988 () Bool)

(assert (=> b!167444 (=> res!79665 e!109988)))

(assert (=> b!167444 (= res!79665 (or (not (= (size!3483 (_values!3441 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8207 thiss!1248)))) (not (= (size!3482 (_keys!5283 thiss!1248)) (size!3483 (_values!3441 thiss!1248)))) (bvslt (mask!8207 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3199 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3199 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!167445 () Bool)

(declare-fun e!109982 () Bool)

(declare-fun e!109989 () Bool)

(assert (=> b!167445 (= e!109982 e!109989)))

(declare-fun res!79660 () Bool)

(assert (=> b!167445 (=> (not res!79660) (not e!109989))))

(declare-datatypes ((SeekEntryResult!491 0))(
  ( (MissingZero!491 (index!4132 (_ BitVec 32))) (Found!491 (index!4133 (_ BitVec 32))) (Intermediate!491 (undefined!1303 Bool) (index!4134 (_ BitVec 32)) (x!18543 (_ BitVec 32))) (Undefined!491) (MissingVacant!491 (index!4135 (_ BitVec 32))) )
))
(declare-fun lt!83740 () SeekEntryResult!491)

(assert (=> b!167445 (= res!79660 (and (not (is-Undefined!491 lt!83740)) (not (is-MissingVacant!491 lt!83740)) (not (is-MissingZero!491 lt!83740)) (is-Found!491 lt!83740)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6718 (_ BitVec 32)) SeekEntryResult!491)

(assert (=> b!167445 (= lt!83740 (seekEntryOrOpen!0 key!828 (_keys!5283 thiss!1248) (mask!8207 thiss!1248)))))

(declare-fun b!167446 () Bool)

(declare-fun res!79659 () Bool)

(assert (=> b!167446 (=> (not res!79659) (not e!109982))))

(assert (=> b!167446 (= res!79659 (not (= key!828 (bvneg key!828))))))

(declare-fun b!167447 () Bool)

(assert (=> b!167447 (= e!109989 (not e!109988))))

(declare-fun res!79661 () Bool)

(assert (=> b!167447 (=> res!79661 e!109988)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!167447 (= res!79661 (not (validMask!0 (mask!8207 thiss!1248))))))

(declare-fun v!309 () V!4729)

(declare-datatypes ((tuple2!3140 0))(
  ( (tuple2!3141 (_1!1580 (_ BitVec 64)) (_2!1580 V!4729)) )
))
(declare-datatypes ((List!2152 0))(
  ( (Nil!2149) (Cons!2148 (h!2765 tuple2!3140) (t!6962 List!2152)) )
))
(declare-datatypes ((ListLongMap!2109 0))(
  ( (ListLongMap!2110 (toList!1070 List!2152)) )
))
(declare-fun lt!83735 () ListLongMap!2109)

(declare-fun +!212 (ListLongMap!2109 tuple2!3140) ListLongMap!2109)

(declare-fun getCurrentListMap!723 (array!6718 array!6720 (_ BitVec 32) (_ BitVec 32) V!4729 V!4729 (_ BitVec 32) Int) ListLongMap!2109)

(assert (=> b!167447 (= (+!212 lt!83735 (tuple2!3141 key!828 v!309)) (getCurrentListMap!723 (_keys!5283 thiss!1248) (array!6721 (store (arr!3195 (_values!3441 thiss!1248)) (index!4133 lt!83740) (ValueCellFull!1562 v!309)) (size!3483 (_values!3441 thiss!1248))) (mask!8207 thiss!1248) (extraKeys!3199 thiss!1248) (zeroValue!3301 thiss!1248) (minValue!3301 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3458 thiss!1248)))))

(declare-fun lt!83738 () Unit!5128)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!72 (array!6718 array!6720 (_ BitVec 32) (_ BitVec 32) V!4729 V!4729 (_ BitVec 32) (_ BitVec 64) V!4729 Int) Unit!5128)

(assert (=> b!167447 (= lt!83738 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!72 (_keys!5283 thiss!1248) (_values!3441 thiss!1248) (mask!8207 thiss!1248) (extraKeys!3199 thiss!1248) (zeroValue!3301 thiss!1248) (minValue!3301 thiss!1248) (index!4133 lt!83740) key!828 v!309 (defaultEntry!3458 thiss!1248)))))

(declare-fun lt!83741 () Unit!5128)

(assert (=> b!167447 (= lt!83741 e!109986)))

(declare-fun c!30276 () Bool)

(declare-fun contains!1106 (ListLongMap!2109 (_ BitVec 64)) Bool)

(assert (=> b!167447 (= c!30276 (contains!1106 lt!83735 key!828))))

(assert (=> b!167447 (= lt!83735 (getCurrentListMap!723 (_keys!5283 thiss!1248) (_values!3441 thiss!1248) (mask!8207 thiss!1248) (extraKeys!3199 thiss!1248) (zeroValue!3301 thiss!1248) (minValue!3301 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3458 thiss!1248)))))

(declare-fun b!167448 () Bool)

(declare-fun e!109987 () Bool)

(declare-fun e!109981 () Bool)

(declare-fun mapRes!6435 () Bool)

(assert (=> b!167448 (= e!109987 (and e!109981 mapRes!6435))))

(declare-fun condMapEmpty!6435 () Bool)

(declare-fun mapDefault!6435 () ValueCell!1562)

