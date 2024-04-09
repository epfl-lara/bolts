; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19334 () Bool)

(assert start!19334)

(declare-fun b!190080 () Bool)

(declare-fun b_free!4667 () Bool)

(declare-fun b_next!4667 () Bool)

(assert (=> b!190080 (= b_free!4667 (not b_next!4667))))

(declare-fun tp!16839 () Bool)

(declare-fun b_and!11331 () Bool)

(assert (=> b!190080 (= tp!16839 b_and!11331)))

(declare-fun b!190075 () Bool)

(declare-fun e!125127 () Bool)

(declare-fun tp_is_empty!4439 () Bool)

(assert (=> b!190075 (= e!125127 tp_is_empty!4439)))

(declare-fun b!190076 () Bool)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun e!125124 () Bool)

(declare-datatypes ((V!5565 0))(
  ( (V!5566 (val!2264 Int)) )
))
(declare-datatypes ((ValueCell!1876 0))(
  ( (ValueCellFull!1876 (v!4187 V!5565)) (EmptyCell!1876) )
))
(declare-datatypes ((array!8110 0))(
  ( (array!8111 (arr!3822 (Array (_ BitVec 32) (_ BitVec 64))) (size!4142 (_ BitVec 32))) )
))
(declare-datatypes ((array!8112 0))(
  ( (array!8113 (arr!3823 (Array (_ BitVec 32) ValueCell!1876)) (size!4143 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2660 0))(
  ( (LongMapFixedSize!2661 (defaultEntry!3882 Int) (mask!9080 (_ BitVec 32)) (extraKeys!3619 (_ BitVec 32)) (zeroValue!3723 V!5565) (minValue!3723 V!5565) (_size!1379 (_ BitVec 32)) (_keys!5851 array!8110) (_values!3865 array!8112) (_vacant!1379 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2660)

(declare-datatypes ((SeekEntryResult!683 0))(
  ( (MissingZero!683 (index!4902 (_ BitVec 32))) (Found!683 (index!4903 (_ BitVec 32))) (Intermediate!683 (undefined!1495 Bool) (index!4904 (_ BitVec 32)) (x!20485 (_ BitVec 32))) (Undefined!683) (MissingVacant!683 (index!4905 (_ BitVec 32))) )
))
(declare-fun lt!94224 () SeekEntryResult!683)

(assert (=> b!190076 (= e!125124 (= (select (arr!3822 (_keys!5851 thiss!1248)) (index!4903 lt!94224)) key!828))))

(declare-fun b!190077 () Bool)

(declare-fun e!125120 () Bool)

(declare-fun e!125125 () Bool)

(assert (=> b!190077 (= e!125120 e!125125)))

(declare-fun res!89878 () Bool)

(assert (=> b!190077 (=> (not res!89878) (not e!125125))))

(assert (=> b!190077 (= res!89878 (and (not (is-Undefined!683 lt!94224)) (not (is-MissingVacant!683 lt!94224)) (not (is-MissingZero!683 lt!94224)) (is-Found!683 lt!94224)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8110 (_ BitVec 32)) SeekEntryResult!683)

(assert (=> b!190077 (= lt!94224 (seekEntryOrOpen!0 key!828 (_keys!5851 thiss!1248) (mask!9080 thiss!1248)))))

(declare-fun b!190078 () Bool)

(declare-fun e!125126 () Bool)

(assert (=> b!190078 (= e!125126 tp_is_empty!4439)))

(declare-fun mapNonEmpty!7660 () Bool)

(declare-fun mapRes!7660 () Bool)

(declare-fun tp!16840 () Bool)

(assert (=> mapNonEmpty!7660 (= mapRes!7660 (and tp!16840 e!125127))))

(declare-fun mapKey!7660 () (_ BitVec 32))

(declare-fun mapRest!7660 () (Array (_ BitVec 32) ValueCell!1876))

(declare-fun mapValue!7660 () ValueCell!1876)

(assert (=> mapNonEmpty!7660 (= (arr!3823 (_values!3865 thiss!1248)) (store mapRest!7660 mapKey!7660 mapValue!7660))))

(declare-fun e!125128 () Bool)

(declare-fun e!125121 () Bool)

(declare-fun array_inv!2469 (array!8110) Bool)

(declare-fun array_inv!2470 (array!8112) Bool)

(assert (=> b!190080 (= e!125128 (and tp!16839 tp_is_empty!4439 (array_inv!2469 (_keys!5851 thiss!1248)) (array_inv!2470 (_values!3865 thiss!1248)) e!125121))))

(declare-fun b!190081 () Bool)

(declare-fun e!125123 () Bool)

(assert (=> b!190081 (= e!125125 (not e!125123))))

(declare-fun res!89880 () Bool)

(assert (=> b!190081 (=> res!89880 e!125123)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!190081 (= res!89880 (not (validMask!0 (mask!9080 thiss!1248))))))

(declare-datatypes ((tuple2!3516 0))(
  ( (tuple2!3517 (_1!1768 (_ BitVec 64)) (_2!1768 V!5565)) )
))
(declare-datatypes ((List!2436 0))(
  ( (Nil!2433) (Cons!2432 (h!3069 tuple2!3516) (t!7352 List!2436)) )
))
(declare-datatypes ((ListLongMap!2447 0))(
  ( (ListLongMap!2448 (toList!1239 List!2436)) )
))
(declare-fun lt!94227 () ListLongMap!2447)

(declare-fun v!309 () V!5565)

(declare-fun +!297 (ListLongMap!2447 tuple2!3516) ListLongMap!2447)

(declare-fun getCurrentListMap!882 (array!8110 array!8112 (_ BitVec 32) (_ BitVec 32) V!5565 V!5565 (_ BitVec 32) Int) ListLongMap!2447)

(assert (=> b!190081 (= (+!297 lt!94227 (tuple2!3517 key!828 v!309)) (getCurrentListMap!882 (_keys!5851 thiss!1248) (array!8113 (store (arr!3823 (_values!3865 thiss!1248)) (index!4903 lt!94224) (ValueCellFull!1876 v!309)) (size!4143 (_values!3865 thiss!1248))) (mask!9080 thiss!1248) (extraKeys!3619 thiss!1248) (zeroValue!3723 thiss!1248) (minValue!3723 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3882 thiss!1248)))))

(declare-datatypes ((Unit!5743 0))(
  ( (Unit!5744) )
))
(declare-fun lt!94229 () Unit!5743)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!103 (array!8110 array!8112 (_ BitVec 32) (_ BitVec 32) V!5565 V!5565 (_ BitVec 32) (_ BitVec 64) V!5565 Int) Unit!5743)

(assert (=> b!190081 (= lt!94229 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!103 (_keys!5851 thiss!1248) (_values!3865 thiss!1248) (mask!9080 thiss!1248) (extraKeys!3619 thiss!1248) (zeroValue!3723 thiss!1248) (minValue!3723 thiss!1248) (index!4903 lt!94224) key!828 v!309 (defaultEntry!3882 thiss!1248)))))

(declare-fun lt!94225 () Unit!5743)

(declare-fun e!125122 () Unit!5743)

(assert (=> b!190081 (= lt!94225 e!125122)))

(declare-fun c!34138 () Bool)

(declare-fun contains!1342 (ListLongMap!2447 (_ BitVec 64)) Bool)

(assert (=> b!190081 (= c!34138 (contains!1342 lt!94227 key!828))))

(assert (=> b!190081 (= lt!94227 (getCurrentListMap!882 (_keys!5851 thiss!1248) (_values!3865 thiss!1248) (mask!9080 thiss!1248) (extraKeys!3619 thiss!1248) (zeroValue!3723 thiss!1248) (minValue!3723 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3882 thiss!1248)))))

(declare-fun mapIsEmpty!7660 () Bool)

(assert (=> mapIsEmpty!7660 mapRes!7660))

(declare-fun b!190082 () Bool)

(declare-fun Unit!5745 () Unit!5743)

(assert (=> b!190082 (= e!125122 Unit!5745)))

(declare-fun lt!94228 () Unit!5743)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!173 (array!8110 array!8112 (_ BitVec 32) (_ BitVec 32) V!5565 V!5565 (_ BitVec 64) Int) Unit!5743)

(assert (=> b!190082 (= lt!94228 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!173 (_keys!5851 thiss!1248) (_values!3865 thiss!1248) (mask!9080 thiss!1248) (extraKeys!3619 thiss!1248) (zeroValue!3723 thiss!1248) (minValue!3723 thiss!1248) key!828 (defaultEntry!3882 thiss!1248)))))

(assert (=> b!190082 false))

(declare-fun b!190083 () Bool)

(assert (=> b!190083 (= e!125123 (= (size!4143 (_values!3865 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!9080 thiss!1248))))))

(declare-fun b!190084 () Bool)

(assert (=> b!190084 (= e!125121 (and e!125126 mapRes!7660))))

(declare-fun condMapEmpty!7660 () Bool)

(declare-fun mapDefault!7660 () ValueCell!1876)

