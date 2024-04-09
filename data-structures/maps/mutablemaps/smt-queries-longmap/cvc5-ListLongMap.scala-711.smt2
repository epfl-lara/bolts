; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16782 () Bool)

(assert start!16782)

(declare-fun b!168700 () Bool)

(declare-fun b_free!4075 () Bool)

(declare-fun b_next!4075 () Bool)

(assert (=> b!168700 (= b_free!4075 (not b_next!4075))))

(declare-fun tp!14826 () Bool)

(declare-fun b_and!10507 () Bool)

(assert (=> b!168700 (= tp!14826 b_and!10507)))

(declare-fun mapIsEmpty!6534 () Bool)

(declare-fun mapRes!6534 () Bool)

(assert (=> mapIsEmpty!6534 mapRes!6534))

(declare-fun b!168699 () Bool)

(declare-fun e!110963 () Bool)

(declare-fun tp_is_empty!3877 () Bool)

(assert (=> b!168699 (= e!110963 tp_is_empty!3877)))

(declare-fun e!110964 () Bool)

(declare-fun e!110970 () Bool)

(declare-datatypes ((V!4817 0))(
  ( (V!4818 (val!1983 Int)) )
))
(declare-datatypes ((ValueCell!1595 0))(
  ( (ValueCellFull!1595 (v!3844 V!4817)) (EmptyCell!1595) )
))
(declare-datatypes ((array!6850 0))(
  ( (array!6851 (arr!3260 (Array (_ BitVec 32) (_ BitVec 64))) (size!3548 (_ BitVec 32))) )
))
(declare-datatypes ((array!6852 0))(
  ( (array!6853 (arr!3261 (Array (_ BitVec 32) ValueCell!1595)) (size!3549 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2098 0))(
  ( (LongMapFixedSize!2099 (defaultEntry!3491 Int) (mask!8262 (_ BitVec 32)) (extraKeys!3232 (_ BitVec 32)) (zeroValue!3334 V!4817) (minValue!3334 V!4817) (_size!1098 (_ BitVec 32)) (_keys!5316 array!6850) (_values!3474 array!6852) (_vacant!1098 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2098)

(declare-fun array_inv!2089 (array!6850) Bool)

(declare-fun array_inv!2090 (array!6852) Bool)

(assert (=> b!168700 (= e!110964 (and tp!14826 tp_is_empty!3877 (array_inv!2089 (_keys!5316 thiss!1248)) (array_inv!2090 (_values!3474 thiss!1248)) e!110970))))

(declare-fun b!168701 () Bool)

(declare-fun e!110969 () Bool)

(declare-fun e!110965 () Bool)

(assert (=> b!168701 (= e!110969 e!110965)))

(declare-fun res!80325 () Bool)

(assert (=> b!168701 (=> (not res!80325) (not e!110965))))

(declare-datatypes ((SeekEntryResult!518 0))(
  ( (MissingZero!518 (index!4240 (_ BitVec 32))) (Found!518 (index!4241 (_ BitVec 32))) (Intermediate!518 (undefined!1330 Bool) (index!4242 (_ BitVec 32)) (x!18658 (_ BitVec 32))) (Undefined!518) (MissingVacant!518 (index!4243 (_ BitVec 32))) )
))
(declare-fun lt!84478 () SeekEntryResult!518)

(assert (=> b!168701 (= res!80325 (and (not (is-Undefined!518 lt!84478)) (not (is-MissingVacant!518 lt!84478)) (not (is-MissingZero!518 lt!84478)) (is-Found!518 lt!84478)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6850 (_ BitVec 32)) SeekEntryResult!518)

(assert (=> b!168701 (= lt!84478 (seekEntryOrOpen!0 key!828 (_keys!5316 thiss!1248) (mask!8262 thiss!1248)))))

(declare-fun b!168702 () Bool)

(declare-fun e!110971 () Bool)

(assert (=> b!168702 (= e!110971 (= (select (arr!3260 (_keys!5316 thiss!1248)) (index!4241 lt!84478)) key!828))))

(declare-fun mapNonEmpty!6534 () Bool)

(declare-fun tp!14825 () Bool)

(assert (=> mapNonEmpty!6534 (= mapRes!6534 (and tp!14825 e!110963))))

(declare-fun mapValue!6534 () ValueCell!1595)

(declare-fun mapRest!6534 () (Array (_ BitVec 32) ValueCell!1595))

(declare-fun mapKey!6534 () (_ BitVec 32))

(assert (=> mapNonEmpty!6534 (= (arr!3261 (_values!3474 thiss!1248)) (store mapRest!6534 mapKey!6534 mapValue!6534))))

(declare-fun res!80322 () Bool)

(assert (=> start!16782 (=> (not res!80322) (not e!110969))))

(declare-fun valid!900 (LongMapFixedSize!2098) Bool)

(assert (=> start!16782 (= res!80322 (valid!900 thiss!1248))))

(assert (=> start!16782 e!110969))

(assert (=> start!16782 e!110964))

(assert (=> start!16782 true))

(assert (=> start!16782 tp_is_empty!3877))

(declare-fun b!168703 () Bool)

(declare-fun res!80321 () Bool)

(assert (=> b!168703 (=> (not res!80321) (not e!110969))))

(assert (=> b!168703 (= res!80321 (not (= key!828 (bvneg key!828))))))

(declare-fun b!168704 () Bool)

(declare-fun e!110962 () Bool)

(assert (=> b!168704 (= e!110965 (not e!110962))))

(declare-fun res!80323 () Bool)

(assert (=> b!168704 (=> res!80323 e!110962)))

(declare-fun lt!84479 () LongMapFixedSize!2098)

(assert (=> b!168704 (= res!80323 (not (valid!900 lt!84479)))))

(declare-datatypes ((tuple2!3174 0))(
  ( (tuple2!3175 (_1!1597 (_ BitVec 64)) (_2!1597 V!4817)) )
))
(declare-datatypes ((List!2190 0))(
  ( (Nil!2187) (Cons!2186 (h!2803 tuple2!3174) (t!7000 List!2190)) )
))
(declare-datatypes ((ListLongMap!2143 0))(
  ( (ListLongMap!2144 (toList!1087 List!2190)) )
))
(declare-fun lt!84474 () ListLongMap!2143)

(declare-fun contains!1123 (ListLongMap!2143 (_ BitVec 64)) Bool)

(assert (=> b!168704 (contains!1123 lt!84474 (select (arr!3260 (_keys!5316 thiss!1248)) (index!4241 lt!84478)))))

(declare-fun lt!84480 () array!6852)

(declare-datatypes ((Unit!5201 0))(
  ( (Unit!5202) )
))
(declare-fun lt!84483 () Unit!5201)

(declare-fun lemmaValidKeyInArrayIsInListMap!132 (array!6850 array!6852 (_ BitVec 32) (_ BitVec 32) V!4817 V!4817 (_ BitVec 32) Int) Unit!5201)

(assert (=> b!168704 (= lt!84483 (lemmaValidKeyInArrayIsInListMap!132 (_keys!5316 thiss!1248) lt!84480 (mask!8262 thiss!1248) (extraKeys!3232 thiss!1248) (zeroValue!3334 thiss!1248) (minValue!3334 thiss!1248) (index!4241 lt!84478) (defaultEntry!3491 thiss!1248)))))

(assert (=> b!168704 (= lt!84479 (LongMapFixedSize!2099 (defaultEntry!3491 thiss!1248) (mask!8262 thiss!1248) (extraKeys!3232 thiss!1248) (zeroValue!3334 thiss!1248) (minValue!3334 thiss!1248) (_size!1098 thiss!1248) (_keys!5316 thiss!1248) lt!84480 (_vacant!1098 thiss!1248)))))

(declare-fun lt!84485 () ListLongMap!2143)

(assert (=> b!168704 (= lt!84485 lt!84474)))

(declare-fun getCurrentListMap!740 (array!6850 array!6852 (_ BitVec 32) (_ BitVec 32) V!4817 V!4817 (_ BitVec 32) Int) ListLongMap!2143)

(assert (=> b!168704 (= lt!84474 (getCurrentListMap!740 (_keys!5316 thiss!1248) lt!84480 (mask!8262 thiss!1248) (extraKeys!3232 thiss!1248) (zeroValue!3334 thiss!1248) (minValue!3334 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3491 thiss!1248)))))

(declare-fun v!309 () V!4817)

(declare-fun lt!84482 () ListLongMap!2143)

(declare-fun +!229 (ListLongMap!2143 tuple2!3174) ListLongMap!2143)

(assert (=> b!168704 (= lt!84485 (+!229 lt!84482 (tuple2!3175 key!828 v!309)))))

(assert (=> b!168704 (= lt!84480 (array!6853 (store (arr!3261 (_values!3474 thiss!1248)) (index!4241 lt!84478) (ValueCellFull!1595 v!309)) (size!3549 (_values!3474 thiss!1248))))))

(declare-fun lt!84481 () Unit!5201)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!89 (array!6850 array!6852 (_ BitVec 32) (_ BitVec 32) V!4817 V!4817 (_ BitVec 32) (_ BitVec 64) V!4817 Int) Unit!5201)

(assert (=> b!168704 (= lt!84481 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!89 (_keys!5316 thiss!1248) (_values!3474 thiss!1248) (mask!8262 thiss!1248) (extraKeys!3232 thiss!1248) (zeroValue!3334 thiss!1248) (minValue!3334 thiss!1248) (index!4241 lt!84478) key!828 v!309 (defaultEntry!3491 thiss!1248)))))

(declare-fun lt!84484 () Unit!5201)

(declare-fun e!110968 () Unit!5201)

(assert (=> b!168704 (= lt!84484 e!110968)))

(declare-fun c!30375 () Bool)

(assert (=> b!168704 (= c!30375 (contains!1123 lt!84482 key!828))))

(assert (=> b!168704 (= lt!84482 (getCurrentListMap!740 (_keys!5316 thiss!1248) (_values!3474 thiss!1248) (mask!8262 thiss!1248) (extraKeys!3232 thiss!1248) (zeroValue!3334 thiss!1248) (minValue!3334 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3491 thiss!1248)))))

(declare-fun b!168705 () Bool)

(declare-fun Unit!5203 () Unit!5201)

(assert (=> b!168705 (= e!110968 Unit!5203)))

(declare-fun lt!84477 () Unit!5201)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!127 (array!6850 array!6852 (_ BitVec 32) (_ BitVec 32) V!4817 V!4817 (_ BitVec 64) Int) Unit!5201)

(assert (=> b!168705 (= lt!84477 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!127 (_keys!5316 thiss!1248) (_values!3474 thiss!1248) (mask!8262 thiss!1248) (extraKeys!3232 thiss!1248) (zeroValue!3334 thiss!1248) (minValue!3334 thiss!1248) key!828 (defaultEntry!3491 thiss!1248)))))

(assert (=> b!168705 false))

(declare-fun b!168706 () Bool)

(assert (=> b!168706 (= e!110962 true)))

(declare-fun lt!84476 () Bool)

(declare-fun map!1799 (LongMapFixedSize!2098) ListLongMap!2143)

(assert (=> b!168706 (= lt!84476 (contains!1123 (map!1799 lt!84479) key!828))))

(declare-fun b!168707 () Bool)

(declare-fun lt!84475 () Unit!5201)

(assert (=> b!168707 (= e!110968 lt!84475)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!129 (array!6850 array!6852 (_ BitVec 32) (_ BitVec 32) V!4817 V!4817 (_ BitVec 64) Int) Unit!5201)

(assert (=> b!168707 (= lt!84475 (lemmaInListMapThenSeekEntryOrOpenFindsIt!129 (_keys!5316 thiss!1248) (_values!3474 thiss!1248) (mask!8262 thiss!1248) (extraKeys!3232 thiss!1248) (zeroValue!3334 thiss!1248) (minValue!3334 thiss!1248) key!828 (defaultEntry!3491 thiss!1248)))))

(declare-fun res!80324 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!168707 (= res!80324 (inRange!0 (index!4241 lt!84478) (mask!8262 thiss!1248)))))

(assert (=> b!168707 (=> (not res!80324) (not e!110971))))

(assert (=> b!168707 e!110971))

(declare-fun b!168708 () Bool)

(declare-fun e!110967 () Bool)

(assert (=> b!168708 (= e!110967 tp_is_empty!3877)))

(declare-fun b!168709 () Bool)

(assert (=> b!168709 (= e!110970 (and e!110967 mapRes!6534))))

(declare-fun condMapEmpty!6534 () Bool)

(declare-fun mapDefault!6534 () ValueCell!1595)

