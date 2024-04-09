; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24290 () Bool)

(assert start!24290)

(declare-fun b!254121 () Bool)

(declare-fun b_free!6679 () Bool)

(declare-fun b_next!6679 () Bool)

(assert (=> b!254121 (= b_free!6679 (not b_next!6679))))

(declare-fun tp!23324 () Bool)

(declare-fun b_and!13739 () Bool)

(assert (=> b!254121 (= tp!23324 b_and!13739)))

(declare-fun b!254112 () Bool)

(declare-fun e!164730 () Bool)

(assert (=> b!254112 (= e!164730 true)))

(declare-fun lt!127379 () Bool)

(declare-datatypes ((V!8369 0))(
  ( (V!8370 (val!3315 Int)) )
))
(declare-datatypes ((ValueCell!2927 0))(
  ( (ValueCellFull!2927 (v!5385 V!8369)) (EmptyCell!2927) )
))
(declare-datatypes ((array!12412 0))(
  ( (array!12413 (arr!5881 (Array (_ BitVec 32) ValueCell!2927)) (size!6228 (_ BitVec 32))) )
))
(declare-datatypes ((array!12414 0))(
  ( (array!12415 (arr!5882 (Array (_ BitVec 32) (_ BitVec 64))) (size!6229 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3754 0))(
  ( (LongMapFixedSize!3755 (defaultEntry!4690 Int) (mask!10934 (_ BitVec 32)) (extraKeys!4427 (_ BitVec 32)) (zeroValue!4531 V!8369) (minValue!4531 V!8369) (_size!1926 (_ BitVec 32)) (_keys!6844 array!12414) (_values!4673 array!12412) (_vacant!1926 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3754)

(declare-datatypes ((List!3781 0))(
  ( (Nil!3778) (Cons!3777 (h!4439 (_ BitVec 64)) (t!8836 List!3781)) )
))
(declare-fun arrayNoDuplicates!0 (array!12414 (_ BitVec 32) List!3781) Bool)

(assert (=> b!254112 (= lt!127379 (arrayNoDuplicates!0 (_keys!6844 thiss!1504) #b00000000000000000000000000000000 Nil!3778))))

(declare-fun b!254113 () Bool)

(declare-datatypes ((Unit!7866 0))(
  ( (Unit!7867) )
))
(declare-fun e!164724 () Unit!7866)

(declare-fun Unit!7868 () Unit!7866)

(assert (=> b!254113 (= e!164724 Unit!7868)))

(declare-fun lt!127386 () Unit!7866)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!415 (array!12414 array!12412 (_ BitVec 32) (_ BitVec 32) V!8369 V!8369 (_ BitVec 64) Int) Unit!7866)

(assert (=> b!254113 (= lt!127386 (lemmaInListMapThenSeekEntryOrOpenFindsIt!415 (_keys!6844 thiss!1504) (_values!4673 thiss!1504) (mask!10934 thiss!1504) (extraKeys!4427 thiss!1504) (zeroValue!4531 thiss!1504) (minValue!4531 thiss!1504) key!932 (defaultEntry!4690 thiss!1504)))))

(assert (=> b!254113 false))

(declare-fun b!254114 () Bool)

(declare-fun res!124424 () Bool)

(declare-datatypes ((SeekEntryResult!1156 0))(
  ( (MissingZero!1156 (index!6794 (_ BitVec 32))) (Found!1156 (index!6795 (_ BitVec 32))) (Intermediate!1156 (undefined!1968 Bool) (index!6796 (_ BitVec 32)) (x!24864 (_ BitVec 32))) (Undefined!1156) (MissingVacant!1156 (index!6797 (_ BitVec 32))) )
))
(declare-fun lt!127380 () SeekEntryResult!1156)

(assert (=> b!254114 (= res!124424 (= (select (arr!5882 (_keys!6844 thiss!1504)) (index!6797 lt!127380)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!164728 () Bool)

(assert (=> b!254114 (=> (not res!124424) (not e!164728))))

(declare-fun b!254115 () Bool)

(declare-fun e!164719 () Bool)

(declare-fun e!164729 () Bool)

(assert (=> b!254115 (= e!164719 e!164729)))

(declare-fun res!124420 () Bool)

(assert (=> b!254115 (=> (not res!124420) (not e!164729))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!254115 (= res!124420 (or (= lt!127380 (MissingZero!1156 index!297)) (= lt!127380 (MissingVacant!1156 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12414 (_ BitVec 32)) SeekEntryResult!1156)

(assert (=> b!254115 (= lt!127380 (seekEntryOrOpen!0 key!932 (_keys!6844 thiss!1504) (mask!10934 thiss!1504)))))

(declare-fun b!254116 () Bool)

(declare-fun e!164731 () Bool)

(declare-fun tp_is_empty!6541 () Bool)

(assert (=> b!254116 (= e!164731 tp_is_empty!6541)))

(declare-fun b!254117 () Bool)

(declare-fun e!164727 () Bool)

(assert (=> b!254117 (= e!164729 e!164727)))

(declare-fun res!124419 () Bool)

(assert (=> b!254117 (=> (not res!124419) (not e!164727))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!254117 (= res!124419 (inRange!0 index!297 (mask!10934 thiss!1504)))))

(declare-fun lt!127387 () Unit!7866)

(assert (=> b!254117 (= lt!127387 e!164724)))

(declare-fun c!42844 () Bool)

(declare-datatypes ((tuple2!4876 0))(
  ( (tuple2!4877 (_1!2448 (_ BitVec 64)) (_2!2448 V!8369)) )
))
(declare-datatypes ((List!3782 0))(
  ( (Nil!3779) (Cons!3778 (h!4440 tuple2!4876) (t!8837 List!3782)) )
))
(declare-datatypes ((ListLongMap!3803 0))(
  ( (ListLongMap!3804 (toList!1917 List!3782)) )
))
(declare-fun contains!1841 (ListLongMap!3803 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1440 (array!12414 array!12412 (_ BitVec 32) (_ BitVec 32) V!8369 V!8369 (_ BitVec 32) Int) ListLongMap!3803)

(assert (=> b!254117 (= c!42844 (contains!1841 (getCurrentListMap!1440 (_keys!6844 thiss!1504) (_values!4673 thiss!1504) (mask!10934 thiss!1504) (extraKeys!4427 thiss!1504) (zeroValue!4531 thiss!1504) (minValue!4531 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4690 thiss!1504)) key!932))))

(declare-fun b!254118 () Bool)

(declare-fun e!164721 () Unit!7866)

(declare-fun Unit!7869 () Unit!7866)

(assert (=> b!254118 (= e!164721 Unit!7869)))

(declare-fun lt!127389 () Unit!7866)

(declare-fun lemmaArrayContainsKeyThenInListMap!220 (array!12414 array!12412 (_ BitVec 32) (_ BitVec 32) V!8369 V!8369 (_ BitVec 64) (_ BitVec 32) Int) Unit!7866)

(assert (=> b!254118 (= lt!127389 (lemmaArrayContainsKeyThenInListMap!220 (_keys!6844 thiss!1504) (_values!4673 thiss!1504) (mask!10934 thiss!1504) (extraKeys!4427 thiss!1504) (zeroValue!4531 thiss!1504) (minValue!4531 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4690 thiss!1504)))))

(assert (=> b!254118 false))

(declare-fun b!254119 () Bool)

(declare-fun res!124428 () Bool)

(declare-fun e!164722 () Bool)

(assert (=> b!254119 (=> (not res!124428) (not e!164722))))

(assert (=> b!254119 (= res!124428 (= (select (arr!5882 (_keys!6844 thiss!1504)) (index!6794 lt!127380)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!254120 () Bool)

(declare-fun e!164732 () Bool)

(assert (=> b!254120 (= e!164732 (is-Undefined!1156 lt!127380))))

(declare-fun e!164725 () Bool)

(declare-fun e!164723 () Bool)

(declare-fun array_inv!3879 (array!12414) Bool)

(declare-fun array_inv!3880 (array!12412) Bool)

(assert (=> b!254121 (= e!164723 (and tp!23324 tp_is_empty!6541 (array_inv!3879 (_keys!6844 thiss!1504)) (array_inv!3880 (_values!4673 thiss!1504)) e!164725))))

(declare-fun bm!23977 () Bool)

(declare-fun c!42846 () Bool)

(declare-fun call!23981 () Bool)

(assert (=> bm!23977 (= call!23981 (inRange!0 (ite c!42846 (index!6794 lt!127380) (index!6797 lt!127380)) (mask!10934 thiss!1504)))))

(declare-fun b!254122 () Bool)

(declare-fun e!164726 () Bool)

(assert (=> b!254122 (= e!164726 tp_is_empty!6541)))

(declare-fun res!124421 () Bool)

(assert (=> start!24290 (=> (not res!124421) (not e!164719))))

(declare-fun valid!1460 (LongMapFixedSize!3754) Bool)

(assert (=> start!24290 (= res!124421 (valid!1460 thiss!1504))))

(assert (=> start!24290 e!164719))

(assert (=> start!24290 e!164723))

(assert (=> start!24290 true))

(declare-fun b!254123 () Bool)

(assert (=> b!254123 (= e!164732 e!164728)))

(declare-fun res!124425 () Bool)

(assert (=> b!254123 (= res!124425 call!23981)))

(assert (=> b!254123 (=> (not res!124425) (not e!164728))))

(declare-fun b!254124 () Bool)

(declare-fun res!124423 () Bool)

(assert (=> b!254124 (=> (not res!124423) (not e!164722))))

(assert (=> b!254124 (= res!124423 call!23981)))

(declare-fun e!164720 () Bool)

(assert (=> b!254124 (= e!164720 e!164722)))

(declare-fun b!254125 () Bool)

(declare-fun mapRes!11127 () Bool)

(assert (=> b!254125 (= e!164725 (and e!164731 mapRes!11127))))

(declare-fun condMapEmpty!11127 () Bool)

(declare-fun mapDefault!11127 () ValueCell!2927)

