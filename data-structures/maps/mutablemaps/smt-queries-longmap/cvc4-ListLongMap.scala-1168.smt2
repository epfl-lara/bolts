; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24930 () Bool)

(assert start!24930)

(declare-fun b!260094 () Bool)

(declare-fun b_free!6761 () Bool)

(declare-fun b_next!6761 () Bool)

(assert (=> b!260094 (= b_free!6761 (not b_next!6761))))

(declare-fun tp!23606 () Bool)

(declare-fun b_and!13885 () Bool)

(assert (=> b!260094 (= tp!23606 b_and!13885)))

(declare-fun b!260078 () Bool)

(declare-fun res!127136 () Bool)

(declare-fun e!168576 () Bool)

(assert (=> b!260078 (=> (not res!127136) (not e!168576))))

(declare-fun call!24789 () Bool)

(assert (=> b!260078 (= res!127136 call!24789)))

(declare-fun e!168575 () Bool)

(assert (=> b!260078 (= e!168575 e!168576)))

(declare-fun b!260079 () Bool)

(declare-fun e!168577 () Bool)

(declare-fun call!24790 () Bool)

(assert (=> b!260079 (= e!168577 (not call!24790))))

(declare-fun b!260080 () Bool)

(assert (=> b!260080 (= e!168576 (not call!24790))))

(declare-fun b!260081 () Bool)

(declare-fun res!127138 () Bool)

(assert (=> b!260081 (=> (not res!127138) (not e!168576))))

(declare-datatypes ((V!8477 0))(
  ( (V!8478 (val!3356 Int)) )
))
(declare-datatypes ((ValueCell!2968 0))(
  ( (ValueCellFull!2968 (v!5465 V!8477)) (EmptyCell!2968) )
))
(declare-datatypes ((array!12598 0))(
  ( (array!12599 (arr!5963 (Array (_ BitVec 32) ValueCell!2968)) (size!6312 (_ BitVec 32))) )
))
(declare-datatypes ((array!12600 0))(
  ( (array!12601 (arr!5964 (Array (_ BitVec 32) (_ BitVec 64))) (size!6313 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3836 0))(
  ( (LongMapFixedSize!3837 (defaultEntry!4796 Int) (mask!11122 (_ BitVec 32)) (extraKeys!4533 (_ BitVec 32)) (zeroValue!4637 V!8477) (minValue!4637 V!8477) (_size!1967 (_ BitVec 32)) (_keys!6976 array!12600) (_values!4779 array!12598) (_vacant!1967 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3836)

(declare-datatypes ((SeekEntryResult!1194 0))(
  ( (MissingZero!1194 (index!6946 (_ BitVec 32))) (Found!1194 (index!6947 (_ BitVec 32))) (Intermediate!1194 (undefined!2006 Bool) (index!6948 (_ BitVec 32)) (x!25132 (_ BitVec 32))) (Undefined!1194) (MissingVacant!1194 (index!6949 (_ BitVec 32))) )
))
(declare-fun lt!131187 () SeekEntryResult!1194)

(assert (=> b!260081 (= res!127138 (= (select (arr!5964 (_keys!6976 thiss!1504)) (index!6946 lt!131187)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!24786 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12600 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!24786 (= call!24790 (arrayContainsKey!0 (_keys!6976 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!11285 () Bool)

(declare-fun mapRes!11285 () Bool)

(declare-fun tp!23605 () Bool)

(declare-fun e!168583 () Bool)

(assert (=> mapNonEmpty!11285 (= mapRes!11285 (and tp!23605 e!168583))))

(declare-fun mapKey!11285 () (_ BitVec 32))

(declare-fun mapRest!11285 () (Array (_ BitVec 32) ValueCell!2968))

(declare-fun mapValue!11285 () ValueCell!2968)

(assert (=> mapNonEmpty!11285 (= (arr!5963 (_values!4779 thiss!1504)) (store mapRest!11285 mapKey!11285 mapValue!11285))))

(declare-fun b!260083 () Bool)

(declare-fun e!168581 () Bool)

(declare-fun e!168573 () Bool)

(assert (=> b!260083 (= e!168581 (not e!168573))))

(declare-fun res!127141 () Bool)

(assert (=> b!260083 (=> res!127141 e!168573)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!260083 (= res!127141 (not (validMask!0 (mask!11122 thiss!1504))))))

(declare-fun lt!131189 () array!12600)

(declare-fun index!297 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!12600 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!260083 (= (arrayCountValidKeys!0 lt!131189 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-datatypes ((Unit!8089 0))(
  ( (Unit!8090) )
))
(declare-fun lt!131192 () Unit!8089)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!12600 (_ BitVec 32)) Unit!8089)

(assert (=> b!260083 (= lt!131192 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!131189 index!297))))

(assert (=> b!260083 (arrayContainsKey!0 lt!131189 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!131186 () Unit!8089)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12600 (_ BitVec 64) (_ BitVec 32)) Unit!8089)

(assert (=> b!260083 (= lt!131186 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!131189 key!932 index!297))))

(declare-datatypes ((tuple2!4946 0))(
  ( (tuple2!4947 (_1!2483 (_ BitVec 64)) (_2!2483 V!8477)) )
))
(declare-datatypes ((List!3848 0))(
  ( (Nil!3845) (Cons!3844 (h!4508 tuple2!4946) (t!8925 List!3848)) )
))
(declare-datatypes ((ListLongMap!3873 0))(
  ( (ListLongMap!3874 (toList!1952 List!3848)) )
))
(declare-fun lt!131196 () ListLongMap!3873)

(declare-fun v!346 () V!8477)

(declare-fun +!695 (ListLongMap!3873 tuple2!4946) ListLongMap!3873)

(declare-fun getCurrentListMap!1475 (array!12600 array!12598 (_ BitVec 32) (_ BitVec 32) V!8477 V!8477 (_ BitVec 32) Int) ListLongMap!3873)

(assert (=> b!260083 (= (+!695 lt!131196 (tuple2!4947 key!932 v!346)) (getCurrentListMap!1475 lt!131189 (array!12599 (store (arr!5963 (_values!4779 thiss!1504)) index!297 (ValueCellFull!2968 v!346)) (size!6312 (_values!4779 thiss!1504))) (mask!11122 thiss!1504) (extraKeys!4533 thiss!1504) (zeroValue!4637 thiss!1504) (minValue!4637 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4796 thiss!1504)))))

(declare-fun lt!131185 () Unit!8089)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!110 (array!12600 array!12598 (_ BitVec 32) (_ BitVec 32) V!8477 V!8477 (_ BitVec 32) (_ BitVec 64) V!8477 Int) Unit!8089)

(assert (=> b!260083 (= lt!131185 (lemmaAddValidKeyToArrayThenAddPairToListMap!110 (_keys!6976 thiss!1504) (_values!4779 thiss!1504) (mask!11122 thiss!1504) (extraKeys!4533 thiss!1504) (zeroValue!4637 thiss!1504) (minValue!4637 thiss!1504) index!297 key!932 v!346 (defaultEntry!4796 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12600 (_ BitVec 32)) Bool)

(assert (=> b!260083 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!131189 (mask!11122 thiss!1504))))

(declare-fun lt!131188 () Unit!8089)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12600 (_ BitVec 32) (_ BitVec 32)) Unit!8089)

(assert (=> b!260083 (= lt!131188 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6976 thiss!1504) index!297 (mask!11122 thiss!1504)))))

(assert (=> b!260083 (= (arrayCountValidKeys!0 lt!131189 #b00000000000000000000000000000000 (size!6313 (_keys!6976 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6976 thiss!1504) #b00000000000000000000000000000000 (size!6313 (_keys!6976 thiss!1504)))))))

(declare-fun lt!131194 () Unit!8089)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12600 (_ BitVec 32) (_ BitVec 64)) Unit!8089)

(assert (=> b!260083 (= lt!131194 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6976 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3849 0))(
  ( (Nil!3846) (Cons!3845 (h!4509 (_ BitVec 64)) (t!8926 List!3849)) )
))
(declare-fun arrayNoDuplicates!0 (array!12600 (_ BitVec 32) List!3849) Bool)

(assert (=> b!260083 (arrayNoDuplicates!0 lt!131189 #b00000000000000000000000000000000 Nil!3846)))

(assert (=> b!260083 (= lt!131189 (array!12601 (store (arr!5964 (_keys!6976 thiss!1504)) index!297 key!932) (size!6313 (_keys!6976 thiss!1504))))))

(declare-fun lt!131198 () Unit!8089)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12600 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3849) Unit!8089)

(assert (=> b!260083 (= lt!131198 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6976 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3846))))

(declare-fun lt!131191 () Unit!8089)

(declare-fun e!168578 () Unit!8089)

(assert (=> b!260083 (= lt!131191 e!168578)))

(declare-fun c!44164 () Bool)

(assert (=> b!260083 (= c!44164 (arrayContainsKey!0 (_keys!6976 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!260084 () Bool)

(declare-fun res!127139 () Bool)

(declare-fun e!168574 () Bool)

(assert (=> b!260084 (=> (not res!127139) (not e!168574))))

(assert (=> b!260084 (= res!127139 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!11285 () Bool)

(assert (=> mapIsEmpty!11285 mapRes!11285))

(declare-fun b!260085 () Bool)

(declare-fun e!168572 () Bool)

(assert (=> b!260085 (= e!168574 e!168572)))

(declare-fun res!127140 () Bool)

(assert (=> b!260085 (=> (not res!127140) (not e!168572))))

(assert (=> b!260085 (= res!127140 (or (= lt!131187 (MissingZero!1194 index!297)) (= lt!131187 (MissingVacant!1194 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12600 (_ BitVec 32)) SeekEntryResult!1194)

(assert (=> b!260085 (= lt!131187 (seekEntryOrOpen!0 key!932 (_keys!6976 thiss!1504) (mask!11122 thiss!1504)))))

(declare-fun bm!24787 () Bool)

(declare-fun c!44167 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!24787 (= call!24789 (inRange!0 (ite c!44167 (index!6946 lt!131187) (index!6949 lt!131187)) (mask!11122 thiss!1504)))))

(declare-fun b!260086 () Bool)

(declare-fun e!168584 () Unit!8089)

(declare-fun lt!131190 () Unit!8089)

(assert (=> b!260086 (= e!168584 lt!131190)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!444 (array!12600 array!12598 (_ BitVec 32) (_ BitVec 32) V!8477 V!8477 (_ BitVec 64) Int) Unit!8089)

(assert (=> b!260086 (= lt!131190 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!444 (_keys!6976 thiss!1504) (_values!4779 thiss!1504) (mask!11122 thiss!1504) (extraKeys!4533 thiss!1504) (zeroValue!4637 thiss!1504) (minValue!4637 thiss!1504) key!932 (defaultEntry!4796 thiss!1504)))))

(assert (=> b!260086 (= c!44167 (is-MissingZero!1194 lt!131187))))

(assert (=> b!260086 e!168575))

(declare-fun b!260087 () Bool)

(declare-fun c!44165 () Bool)

(assert (=> b!260087 (= c!44165 (is-MissingVacant!1194 lt!131187))))

(declare-fun e!168580 () Bool)

(assert (=> b!260087 (= e!168575 e!168580)))

(declare-fun b!260088 () Bool)

(declare-fun tp_is_empty!6623 () Bool)

(assert (=> b!260088 (= e!168583 tp_is_empty!6623)))

(declare-fun b!260089 () Bool)

(declare-fun e!168582 () Bool)

(declare-fun e!168585 () Bool)

(assert (=> b!260089 (= e!168582 (and e!168585 mapRes!11285))))

(declare-fun condMapEmpty!11285 () Bool)

(declare-fun mapDefault!11285 () ValueCell!2968)

