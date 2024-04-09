; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24108 () Bool)

(assert start!24108)

(declare-fun b!251954 () Bool)

(declare-fun b_free!6643 () Bool)

(declare-fun b_next!6643 () Bool)

(assert (=> b!251954 (= b_free!6643 (not b_next!6643))))

(declare-fun tp!23204 () Bool)

(declare-fun b_and!13695 () Bool)

(assert (=> b!251954 (= tp!23204 b_and!13695)))

(declare-fun b!251941 () Bool)

(declare-fun e!163395 () Bool)

(declare-datatypes ((V!8321 0))(
  ( (V!8322 (val!3297 Int)) )
))
(declare-datatypes ((ValueCell!2909 0))(
  ( (ValueCellFull!2909 (v!5363 V!8321)) (EmptyCell!2909) )
))
(declare-datatypes ((array!12332 0))(
  ( (array!12333 (arr!5845 (Array (_ BitVec 32) ValueCell!2909)) (size!6192 (_ BitVec 32))) )
))
(declare-datatypes ((array!12334 0))(
  ( (array!12335 (arr!5846 (Array (_ BitVec 32) (_ BitVec 64))) (size!6193 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3718 0))(
  ( (LongMapFixedSize!3719 (defaultEntry!4656 Int) (mask!10868 (_ BitVec 32)) (extraKeys!4393 (_ BitVec 32)) (zeroValue!4497 V!8321) (minValue!4497 V!8321) (_size!1908 (_ BitVec 32)) (_keys!6802 array!12334) (_values!4639 array!12332) (_vacant!1908 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3718)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12334 (_ BitVec 32)) Bool)

(assert (=> b!251941 (= e!163395 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6802 thiss!1504) (mask!10868 thiss!1504)))))

(declare-fun b!251943 () Bool)

(declare-datatypes ((Unit!7793 0))(
  ( (Unit!7794) )
))
(declare-fun e!163396 () Unit!7793)

(declare-fun lt!126324 () Unit!7793)

(assert (=> b!251943 (= e!163396 lt!126324)))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!405 (array!12334 array!12332 (_ BitVec 32) (_ BitVec 32) V!8321 V!8321 (_ BitVec 64) Int) Unit!7793)

(assert (=> b!251943 (= lt!126324 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!405 (_keys!6802 thiss!1504) (_values!4639 thiss!1504) (mask!10868 thiss!1504) (extraKeys!4393 thiss!1504) (zeroValue!4497 thiss!1504) (minValue!4497 thiss!1504) key!932 (defaultEntry!4656 thiss!1504)))))

(declare-fun c!42422 () Bool)

(declare-datatypes ((SeekEntryResult!1139 0))(
  ( (MissingZero!1139 (index!6726 (_ BitVec 32))) (Found!1139 (index!6727 (_ BitVec 32))) (Intermediate!1139 (undefined!1951 Bool) (index!6728 (_ BitVec 32)) (x!24759 (_ BitVec 32))) (Undefined!1139) (MissingVacant!1139 (index!6729 (_ BitVec 32))) )
))
(declare-fun lt!126322 () SeekEntryResult!1139)

(assert (=> b!251943 (= c!42422 (is-MissingZero!1139 lt!126322))))

(declare-fun e!163393 () Bool)

(assert (=> b!251943 e!163393))

(declare-fun b!251944 () Bool)

(declare-fun res!123353 () Bool)

(declare-fun e!163394 () Bool)

(assert (=> b!251944 (=> (not res!123353) (not e!163394))))

(assert (=> b!251944 (= res!123353 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!251945 () Bool)

(declare-fun e!163389 () Bool)

(declare-fun e!163397 () Bool)

(assert (=> b!251945 (= e!163389 e!163397)))

(declare-fun res!123356 () Bool)

(declare-fun call!23717 () Bool)

(assert (=> b!251945 (= res!123356 call!23717)))

(assert (=> b!251945 (=> (not res!123356) (not e!163397))))

(declare-fun b!251946 () Bool)

(declare-fun res!123352 () Bool)

(assert (=> b!251946 (=> res!123352 e!163395)))

(assert (=> b!251946 (= res!123352 (or (not (= (size!6192 (_values!4639 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10868 thiss!1504)))) (not (= (size!6193 (_keys!6802 thiss!1504)) (size!6192 (_values!4639 thiss!1504)))) (bvslt (mask!10868 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4393 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!4393 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!251947 () Bool)

(declare-fun e!163385 () Bool)

(declare-fun tp_is_empty!6505 () Bool)

(assert (=> b!251947 (= e!163385 tp_is_empty!6505)))

(declare-fun b!251948 () Bool)

(declare-fun res!123357 () Bool)

(assert (=> b!251948 (= res!123357 (= (select (arr!5846 (_keys!6802 thiss!1504)) (index!6729 lt!126322)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!251948 (=> (not res!123357) (not e!163397))))

(declare-fun b!251949 () Bool)

(assert (=> b!251949 (= e!163389 (is-Undefined!1139 lt!126322))))

(declare-fun b!251950 () Bool)

(declare-fun e!163399 () Unit!7793)

(declare-fun Unit!7795 () Unit!7793)

(assert (=> b!251950 (= e!163399 Unit!7795)))

(declare-fun lt!126326 () Unit!7793)

(declare-fun lemmaArrayContainsKeyThenInListMap!207 (array!12334 array!12332 (_ BitVec 32) (_ BitVec 32) V!8321 V!8321 (_ BitVec 64) (_ BitVec 32) Int) Unit!7793)

(assert (=> b!251950 (= lt!126326 (lemmaArrayContainsKeyThenInListMap!207 (_keys!6802 thiss!1504) (_values!4639 thiss!1504) (mask!10868 thiss!1504) (extraKeys!4393 thiss!1504) (zeroValue!4497 thiss!1504) (minValue!4497 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4656 thiss!1504)))))

(assert (=> b!251950 false))

(declare-fun b!251951 () Bool)

(declare-fun c!42423 () Bool)

(assert (=> b!251951 (= c!42423 (is-MissingVacant!1139 lt!126322))))

(assert (=> b!251951 (= e!163393 e!163389)))

(declare-fun b!251952 () Bool)

(declare-fun e!163398 () Bool)

(declare-fun call!23718 () Bool)

(assert (=> b!251952 (= e!163398 (not call!23718))))

(declare-fun res!123358 () Bool)

(assert (=> start!24108 (=> (not res!123358) (not e!163394))))

(declare-fun valid!1446 (LongMapFixedSize!3718) Bool)

(assert (=> start!24108 (= res!123358 (valid!1446 thiss!1504))))

(assert (=> start!24108 e!163394))

(declare-fun e!163391 () Bool)

(assert (=> start!24108 e!163391))

(assert (=> start!24108 true))

(declare-fun b!251942 () Bool)

(assert (=> b!251942 (= e!163397 (not call!23718))))

(declare-fun b!251953 () Bool)

(declare-fun res!123351 () Bool)

(assert (=> b!251953 (=> (not res!123351) (not e!163398))))

(assert (=> b!251953 (= res!123351 call!23717)))

(assert (=> b!251953 (= e!163393 e!163398)))

(declare-fun mapNonEmpty!11061 () Bool)

(declare-fun mapRes!11061 () Bool)

(declare-fun tp!23205 () Bool)

(declare-fun e!163392 () Bool)

(assert (=> mapNonEmpty!11061 (= mapRes!11061 (and tp!23205 e!163392))))

(declare-fun mapRest!11061 () (Array (_ BitVec 32) ValueCell!2909))

(declare-fun mapKey!11061 () (_ BitVec 32))

(declare-fun mapValue!11061 () ValueCell!2909)

(assert (=> mapNonEmpty!11061 (= (arr!5845 (_values!4639 thiss!1504)) (store mapRest!11061 mapKey!11061 mapValue!11061))))

(declare-fun e!163387 () Bool)

(declare-fun array_inv!3853 (array!12334) Bool)

(declare-fun array_inv!3854 (array!12332) Bool)

(assert (=> b!251954 (= e!163391 (and tp!23204 tp_is_empty!6505 (array_inv!3853 (_keys!6802 thiss!1504)) (array_inv!3854 (_values!4639 thiss!1504)) e!163387))))

(declare-fun b!251955 () Bool)

(assert (=> b!251955 (= e!163387 (and e!163385 mapRes!11061))))

(declare-fun condMapEmpty!11061 () Bool)

(declare-fun mapDefault!11061 () ValueCell!2909)

