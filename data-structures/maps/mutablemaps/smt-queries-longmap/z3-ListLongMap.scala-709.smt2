; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16772 () Bool)

(assert start!16772)

(declare-fun b!168537 () Bool)

(declare-fun b_free!4065 () Bool)

(declare-fun b_next!4065 () Bool)

(assert (=> b!168537 (= b_free!4065 (not b_next!4065))))

(declare-fun tp!14796 () Bool)

(declare-fun b_and!10497 () Bool)

(assert (=> b!168537 (= tp!14796 b_and!10497)))

(declare-fun res!80253 () Bool)

(declare-fun e!110822 () Bool)

(assert (=> start!16772 (=> (not res!80253) (not e!110822))))

(declare-datatypes ((V!4803 0))(
  ( (V!4804 (val!1978 Int)) )
))
(declare-datatypes ((ValueCell!1590 0))(
  ( (ValueCellFull!1590 (v!3839 V!4803)) (EmptyCell!1590) )
))
(declare-datatypes ((array!6830 0))(
  ( (array!6831 (arr!3250 (Array (_ BitVec 32) (_ BitVec 64))) (size!3538 (_ BitVec 32))) )
))
(declare-datatypes ((array!6832 0))(
  ( (array!6833 (arr!3251 (Array (_ BitVec 32) ValueCell!1590)) (size!3539 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2088 0))(
  ( (LongMapFixedSize!2089 (defaultEntry!3486 Int) (mask!8253 (_ BitVec 32)) (extraKeys!3227 (_ BitVec 32)) (zeroValue!3329 V!4803) (minValue!3329 V!4803) (_size!1093 (_ BitVec 32)) (_keys!5311 array!6830) (_values!3469 array!6832) (_vacant!1093 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2088)

(declare-fun valid!896 (LongMapFixedSize!2088) Bool)

(assert (=> start!16772 (= res!80253 (valid!896 thiss!1248))))

(assert (=> start!16772 e!110822))

(declare-fun e!110827 () Bool)

(assert (=> start!16772 e!110827))

(assert (=> start!16772 true))

(declare-fun tp_is_empty!3867 () Bool)

(assert (=> start!16772 tp_is_empty!3867))

(declare-fun b!168535 () Bool)

(declare-fun e!110830 () Bool)

(assert (=> b!168535 (= e!110830 tp_is_empty!3867)))

(declare-fun b!168536 () Bool)

(declare-datatypes ((Unit!5191 0))(
  ( (Unit!5192) )
))
(declare-fun e!110826 () Unit!5191)

(declare-fun lt!84325 () Unit!5191)

(assert (=> b!168536 (= e!110826 lt!84325)))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!125 (array!6830 array!6832 (_ BitVec 32) (_ BitVec 32) V!4803 V!4803 (_ BitVec 64) Int) Unit!5191)

(assert (=> b!168536 (= lt!84325 (lemmaInListMapThenSeekEntryOrOpenFindsIt!125 (_keys!5311 thiss!1248) (_values!3469 thiss!1248) (mask!8253 thiss!1248) (extraKeys!3227 thiss!1248) (zeroValue!3329 thiss!1248) (minValue!3329 thiss!1248) key!828 (defaultEntry!3486 thiss!1248)))))

(declare-fun res!80247 () Bool)

(declare-datatypes ((SeekEntryResult!514 0))(
  ( (MissingZero!514 (index!4224 (_ BitVec 32))) (Found!514 (index!4225 (_ BitVec 32))) (Intermediate!514 (undefined!1326 Bool) (index!4226 (_ BitVec 32)) (x!18638 (_ BitVec 32))) (Undefined!514) (MissingVacant!514 (index!4227 (_ BitVec 32))) )
))
(declare-fun lt!84329 () SeekEntryResult!514)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!168536 (= res!80247 (inRange!0 (index!4225 lt!84329) (mask!8253 thiss!1248)))))

(declare-fun e!110823 () Bool)

(assert (=> b!168536 (=> (not res!80247) (not e!110823))))

(assert (=> b!168536 e!110823))

(declare-fun e!110828 () Bool)

(declare-fun array_inv!2083 (array!6830) Bool)

(declare-fun array_inv!2084 (array!6832) Bool)

(assert (=> b!168537 (= e!110827 (and tp!14796 tp_is_empty!3867 (array_inv!2083 (_keys!5311 thiss!1248)) (array_inv!2084 (_values!3469 thiss!1248)) e!110828))))

(declare-fun b!168538 () Bool)

(declare-fun Unit!5193 () Unit!5191)

(assert (=> b!168538 (= e!110826 Unit!5193)))

(declare-fun lt!84326 () Unit!5191)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!125 (array!6830 array!6832 (_ BitVec 32) (_ BitVec 32) V!4803 V!4803 (_ BitVec 64) Int) Unit!5191)

(assert (=> b!168538 (= lt!84326 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!125 (_keys!5311 thiss!1248) (_values!3469 thiss!1248) (mask!8253 thiss!1248) (extraKeys!3227 thiss!1248) (zeroValue!3329 thiss!1248) (minValue!3329 thiss!1248) key!828 (defaultEntry!3486 thiss!1248)))))

(assert (=> b!168538 false))

(declare-fun b!168539 () Bool)

(declare-fun e!110824 () Bool)

(declare-fun e!110825 () Bool)

(assert (=> b!168539 (= e!110824 (not e!110825))))

(declare-fun res!80251 () Bool)

(assert (=> b!168539 (=> res!80251 e!110825)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!168539 (= res!80251 (not (validMask!0 (mask!8253 thiss!1248))))))

(declare-datatypes ((tuple2!3168 0))(
  ( (tuple2!3169 (_1!1594 (_ BitVec 64)) (_2!1594 V!4803)) )
))
(declare-datatypes ((List!2185 0))(
  ( (Nil!2182) (Cons!2181 (h!2798 tuple2!3168) (t!6995 List!2185)) )
))
(declare-datatypes ((ListLongMap!2137 0))(
  ( (ListLongMap!2138 (toList!1084 List!2185)) )
))
(declare-fun lt!84328 () ListLongMap!2137)

(declare-fun v!309 () V!4803)

(declare-fun +!226 (ListLongMap!2137 tuple2!3168) ListLongMap!2137)

(declare-fun getCurrentListMap!737 (array!6830 array!6832 (_ BitVec 32) (_ BitVec 32) V!4803 V!4803 (_ BitVec 32) Int) ListLongMap!2137)

(assert (=> b!168539 (= (+!226 lt!84328 (tuple2!3169 key!828 v!309)) (getCurrentListMap!737 (_keys!5311 thiss!1248) (array!6833 (store (arr!3251 (_values!3469 thiss!1248)) (index!4225 lt!84329) (ValueCellFull!1590 v!309)) (size!3539 (_values!3469 thiss!1248))) (mask!8253 thiss!1248) (extraKeys!3227 thiss!1248) (zeroValue!3329 thiss!1248) (minValue!3329 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3486 thiss!1248)))))

(declare-fun lt!84327 () Unit!5191)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!86 (array!6830 array!6832 (_ BitVec 32) (_ BitVec 32) V!4803 V!4803 (_ BitVec 32) (_ BitVec 64) V!4803 Int) Unit!5191)

(assert (=> b!168539 (= lt!84327 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!86 (_keys!5311 thiss!1248) (_values!3469 thiss!1248) (mask!8253 thiss!1248) (extraKeys!3227 thiss!1248) (zeroValue!3329 thiss!1248) (minValue!3329 thiss!1248) (index!4225 lt!84329) key!828 v!309 (defaultEntry!3486 thiss!1248)))))

(declare-fun lt!84323 () Unit!5191)

(assert (=> b!168539 (= lt!84323 e!110826)))

(declare-fun c!30360 () Bool)

(declare-fun contains!1120 (ListLongMap!2137 (_ BitVec 64)) Bool)

(assert (=> b!168539 (= c!30360 (contains!1120 lt!84328 key!828))))

(assert (=> b!168539 (= lt!84328 (getCurrentListMap!737 (_keys!5311 thiss!1248) (_values!3469 thiss!1248) (mask!8253 thiss!1248) (extraKeys!3227 thiss!1248) (zeroValue!3329 thiss!1248) (minValue!3329 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3486 thiss!1248)))))

(declare-fun mapIsEmpty!6519 () Bool)

(declare-fun mapRes!6519 () Bool)

(assert (=> mapIsEmpty!6519 mapRes!6519))

(declare-fun mapNonEmpty!6519 () Bool)

(declare-fun tp!14795 () Bool)

(declare-fun e!110821 () Bool)

(assert (=> mapNonEmpty!6519 (= mapRes!6519 (and tp!14795 e!110821))))

(declare-fun mapValue!6519 () ValueCell!1590)

(declare-fun mapKey!6519 () (_ BitVec 32))

(declare-fun mapRest!6519 () (Array (_ BitVec 32) ValueCell!1590))

(assert (=> mapNonEmpty!6519 (= (arr!3251 (_values!3469 thiss!1248)) (store mapRest!6519 mapKey!6519 mapValue!6519))))

(declare-fun b!168540 () Bool)

(assert (=> b!168540 (= e!110821 tp_is_empty!3867)))

(declare-fun b!168541 () Bool)

(assert (=> b!168541 (= e!110823 (= (select (arr!3250 (_keys!5311 thiss!1248)) (index!4225 lt!84329)) key!828))))

(declare-fun b!168542 () Bool)

(declare-fun res!80249 () Bool)

(assert (=> b!168542 (=> res!80249 e!110825)))

(assert (=> b!168542 (= res!80249 (or (not (= (size!3539 (_values!3469 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8253 thiss!1248)))) (not (= (size!3538 (_keys!5311 thiss!1248)) (size!3539 (_values!3469 thiss!1248)))) (bvslt (mask!8253 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3227 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3227 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!168543 () Bool)

(assert (=> b!168543 (= e!110828 (and e!110830 mapRes!6519))))

(declare-fun condMapEmpty!6519 () Bool)

(declare-fun mapDefault!6519 () ValueCell!1590)

(assert (=> b!168543 (= condMapEmpty!6519 (= (arr!3251 (_values!3469 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1590)) mapDefault!6519)))))

(declare-fun b!168544 () Bool)

(declare-fun res!80248 () Bool)

(assert (=> b!168544 (=> res!80248 e!110825)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6830 (_ BitVec 32)) Bool)

(assert (=> b!168544 (= res!80248 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5311 thiss!1248) (mask!8253 thiss!1248))))))

(declare-fun b!168545 () Bool)

(assert (=> b!168545 (= e!110825 true)))

(declare-fun lt!84324 () Bool)

(declare-datatypes ((List!2186 0))(
  ( (Nil!2183) (Cons!2182 (h!2799 (_ BitVec 64)) (t!6996 List!2186)) )
))
(declare-fun arrayNoDuplicates!0 (array!6830 (_ BitVec 32) List!2186) Bool)

(assert (=> b!168545 (= lt!84324 (arrayNoDuplicates!0 (_keys!5311 thiss!1248) #b00000000000000000000000000000000 Nil!2183))))

(declare-fun b!168546 () Bool)

(assert (=> b!168546 (= e!110822 e!110824)))

(declare-fun res!80252 () Bool)

(assert (=> b!168546 (=> (not res!80252) (not e!110824))))

(get-info :version)

(assert (=> b!168546 (= res!80252 (and (not ((_ is Undefined!514) lt!84329)) (not ((_ is MissingVacant!514) lt!84329)) (not ((_ is MissingZero!514) lt!84329)) ((_ is Found!514) lt!84329)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6830 (_ BitVec 32)) SeekEntryResult!514)

(assert (=> b!168546 (= lt!84329 (seekEntryOrOpen!0 key!828 (_keys!5311 thiss!1248) (mask!8253 thiss!1248)))))

(declare-fun b!168547 () Bool)

(declare-fun res!80250 () Bool)

(assert (=> b!168547 (=> (not res!80250) (not e!110822))))

(assert (=> b!168547 (= res!80250 (not (= key!828 (bvneg key!828))))))

(assert (= (and start!16772 res!80253) b!168547))

(assert (= (and b!168547 res!80250) b!168546))

(assert (= (and b!168546 res!80252) b!168539))

(assert (= (and b!168539 c!30360) b!168536))

(assert (= (and b!168539 (not c!30360)) b!168538))

(assert (= (and b!168536 res!80247) b!168541))

(assert (= (and b!168539 (not res!80251)) b!168542))

(assert (= (and b!168542 (not res!80249)) b!168544))

(assert (= (and b!168544 (not res!80248)) b!168545))

(assert (= (and b!168543 condMapEmpty!6519) mapIsEmpty!6519))

(assert (= (and b!168543 (not condMapEmpty!6519)) mapNonEmpty!6519))

(assert (= (and mapNonEmpty!6519 ((_ is ValueCellFull!1590) mapValue!6519)) b!168540))

(assert (= (and b!168543 ((_ is ValueCellFull!1590) mapDefault!6519)) b!168535))

(assert (= b!168537 b!168543))

(assert (= start!16772 b!168537))

(declare-fun m!197621 () Bool)

(assert (=> start!16772 m!197621))

(declare-fun m!197623 () Bool)

(assert (=> b!168544 m!197623))

(declare-fun m!197625 () Bool)

(assert (=> mapNonEmpty!6519 m!197625))

(declare-fun m!197627 () Bool)

(assert (=> b!168536 m!197627))

(declare-fun m!197629 () Bool)

(assert (=> b!168536 m!197629))

(declare-fun m!197631 () Bool)

(assert (=> b!168539 m!197631))

(declare-fun m!197633 () Bool)

(assert (=> b!168539 m!197633))

(declare-fun m!197635 () Bool)

(assert (=> b!168539 m!197635))

(declare-fun m!197637 () Bool)

(assert (=> b!168539 m!197637))

(declare-fun m!197639 () Bool)

(assert (=> b!168539 m!197639))

(declare-fun m!197641 () Bool)

(assert (=> b!168539 m!197641))

(declare-fun m!197643 () Bool)

(assert (=> b!168539 m!197643))

(declare-fun m!197645 () Bool)

(assert (=> b!168537 m!197645))

(declare-fun m!197647 () Bool)

(assert (=> b!168537 m!197647))

(declare-fun m!197649 () Bool)

(assert (=> b!168545 m!197649))

(declare-fun m!197651 () Bool)

(assert (=> b!168546 m!197651))

(declare-fun m!197653 () Bool)

(assert (=> b!168541 m!197653))

(declare-fun m!197655 () Bool)

(assert (=> b!168538 m!197655))

(check-sat (not b!168538) (not b!168545) (not b_next!4065) (not b!168539) tp_is_empty!3867 b_and!10497 (not mapNonEmpty!6519) (not b!168546) (not b!168537) (not b!168536) (not b!168544) (not start!16772))
(check-sat b_and!10497 (not b_next!4065))
