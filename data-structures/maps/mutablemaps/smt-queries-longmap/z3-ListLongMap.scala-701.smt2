; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16724 () Bool)

(assert start!16724)

(declare-fun b!167607 () Bool)

(declare-fun b_free!4017 () Bool)

(declare-fun b_next!4017 () Bool)

(assert (=> b!167607 (= b_free!4017 (not b_next!4017))))

(declare-fun tp!14651 () Bool)

(declare-fun b_and!10449 () Bool)

(assert (=> b!167607 (= tp!14651 b_and!10449)))

(declare-fun res!79749 () Bool)

(declare-fun e!110103 () Bool)

(assert (=> start!16724 (=> (not res!79749) (not e!110103))))

(declare-datatypes ((V!4739 0))(
  ( (V!4740 (val!1954 Int)) )
))
(declare-datatypes ((ValueCell!1566 0))(
  ( (ValueCellFull!1566 (v!3815 V!4739)) (EmptyCell!1566) )
))
(declare-datatypes ((array!6734 0))(
  ( (array!6735 (arr!3202 (Array (_ BitVec 32) (_ BitVec 64))) (size!3490 (_ BitVec 32))) )
))
(declare-datatypes ((array!6736 0))(
  ( (array!6737 (arr!3203 (Array (_ BitVec 32) ValueCell!1566)) (size!3491 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2040 0))(
  ( (LongMapFixedSize!2041 (defaultEntry!3462 Int) (mask!8213 (_ BitVec 32)) (extraKeys!3203 (_ BitVec 32)) (zeroValue!3305 V!4739) (minValue!3305 V!4739) (_size!1069 (_ BitVec 32)) (_keys!5287 array!6734) (_values!3445 array!6736) (_vacant!1069 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2040)

(declare-fun valid!881 (LongMapFixedSize!2040) Bool)

(assert (=> start!16724 (= res!79749 (valid!881 thiss!1248))))

(assert (=> start!16724 e!110103))

(declare-fun e!110105 () Bool)

(assert (=> start!16724 e!110105))

(assert (=> start!16724 true))

(declare-fun tp_is_empty!3819 () Bool)

(assert (=> start!16724 tp_is_empty!3819))

(declare-fun b!167599 () Bool)

(declare-fun e!110107 () Bool)

(assert (=> b!167599 (= e!110107 tp_is_empty!3819)))

(declare-fun b!167600 () Bool)

(declare-fun res!79743 () Bool)

(declare-fun e!110110 () Bool)

(assert (=> b!167600 (=> res!79743 e!110110)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6734 (_ BitVec 32)) Bool)

(assert (=> b!167600 (= res!79743 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5287 thiss!1248) (mask!8213 thiss!1248))))))

(declare-fun mapNonEmpty!6447 () Bool)

(declare-fun mapRes!6447 () Bool)

(declare-fun tp!14652 () Bool)

(declare-fun e!110106 () Bool)

(assert (=> mapNonEmpty!6447 (= mapRes!6447 (and tp!14652 e!110106))))

(declare-fun mapRest!6447 () (Array (_ BitVec 32) ValueCell!1566))

(declare-fun mapValue!6447 () ValueCell!1566)

(declare-fun mapKey!6447 () (_ BitVec 32))

(assert (=> mapNonEmpty!6447 (= (arr!3203 (_values!3445 thiss!1248)) (store mapRest!6447 mapKey!6447 mapValue!6447))))

(declare-fun b!167601 () Bool)

(declare-fun e!110108 () Bool)

(assert (=> b!167601 (= e!110103 e!110108)))

(declare-fun res!79744 () Bool)

(assert (=> b!167601 (=> (not res!79744) (not e!110108))))

(declare-datatypes ((SeekEntryResult!493 0))(
  ( (MissingZero!493 (index!4140 (_ BitVec 32))) (Found!493 (index!4141 (_ BitVec 32))) (Intermediate!493 (undefined!1305 Bool) (index!4142 (_ BitVec 32)) (x!18553 (_ BitVec 32))) (Undefined!493) (MissingVacant!493 (index!4143 (_ BitVec 32))) )
))
(declare-fun lt!83819 () SeekEntryResult!493)

(get-info :version)

(assert (=> b!167601 (= res!79744 (and (not ((_ is Undefined!493) lt!83819)) (not ((_ is MissingVacant!493) lt!83819)) (not ((_ is MissingZero!493) lt!83819)) ((_ is Found!493) lt!83819)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6734 (_ BitVec 32)) SeekEntryResult!493)

(assert (=> b!167601 (= lt!83819 (seekEntryOrOpen!0 key!828 (_keys!5287 thiss!1248) (mask!8213 thiss!1248)))))

(declare-fun e!110101 () Bool)

(declare-fun b!167602 () Bool)

(assert (=> b!167602 (= e!110101 (= (select (arr!3202 (_keys!5287 thiss!1248)) (index!4141 lt!83819)) key!828))))

(declare-fun b!167603 () Bool)

(declare-fun res!79746 () Bool)

(assert (=> b!167603 (=> (not res!79746) (not e!110103))))

(assert (=> b!167603 (= res!79746 (not (= key!828 (bvneg key!828))))))

(declare-fun b!167604 () Bool)

(assert (=> b!167604 (= e!110108 (not e!110110))))

(declare-fun res!79745 () Bool)

(assert (=> b!167604 (=> res!79745 e!110110)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!167604 (= res!79745 (not (validMask!0 (mask!8213 thiss!1248))))))

(declare-datatypes ((tuple2!3144 0))(
  ( (tuple2!3145 (_1!1582 (_ BitVec 64)) (_2!1582 V!4739)) )
))
(declare-datatypes ((List!2156 0))(
  ( (Nil!2153) (Cons!2152 (h!2769 tuple2!3144) (t!6966 List!2156)) )
))
(declare-datatypes ((ListLongMap!2113 0))(
  ( (ListLongMap!2114 (toList!1072 List!2156)) )
))
(declare-fun lt!83821 () ListLongMap!2113)

(declare-fun v!309 () V!4739)

(declare-fun +!214 (ListLongMap!2113 tuple2!3144) ListLongMap!2113)

(declare-fun getCurrentListMap!725 (array!6734 array!6736 (_ BitVec 32) (_ BitVec 32) V!4739 V!4739 (_ BitVec 32) Int) ListLongMap!2113)

(assert (=> b!167604 (= (+!214 lt!83821 (tuple2!3145 key!828 v!309)) (getCurrentListMap!725 (_keys!5287 thiss!1248) (array!6737 (store (arr!3203 (_values!3445 thiss!1248)) (index!4141 lt!83819) (ValueCellFull!1566 v!309)) (size!3491 (_values!3445 thiss!1248))) (mask!8213 thiss!1248) (extraKeys!3203 thiss!1248) (zeroValue!3305 thiss!1248) (minValue!3305 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3462 thiss!1248)))))

(declare-datatypes ((Unit!5134 0))(
  ( (Unit!5135) )
))
(declare-fun lt!83820 () Unit!5134)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!74 (array!6734 array!6736 (_ BitVec 32) (_ BitVec 32) V!4739 V!4739 (_ BitVec 32) (_ BitVec 64) V!4739 Int) Unit!5134)

(assert (=> b!167604 (= lt!83820 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!74 (_keys!5287 thiss!1248) (_values!3445 thiss!1248) (mask!8213 thiss!1248) (extraKeys!3203 thiss!1248) (zeroValue!3305 thiss!1248) (minValue!3305 thiss!1248) (index!4141 lt!83819) key!828 v!309 (defaultEntry!3462 thiss!1248)))))

(declare-fun lt!83823 () Unit!5134)

(declare-fun e!110104 () Unit!5134)

(assert (=> b!167604 (= lt!83823 e!110104)))

(declare-fun c!30288 () Bool)

(declare-fun contains!1108 (ListLongMap!2113 (_ BitVec 64)) Bool)

(assert (=> b!167604 (= c!30288 (contains!1108 lt!83821 key!828))))

(assert (=> b!167604 (= lt!83821 (getCurrentListMap!725 (_keys!5287 thiss!1248) (_values!3445 thiss!1248) (mask!8213 thiss!1248) (extraKeys!3203 thiss!1248) (zeroValue!3305 thiss!1248) (minValue!3305 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3462 thiss!1248)))))

(declare-fun b!167605 () Bool)

(declare-fun e!110109 () Bool)

(assert (=> b!167605 (= e!110109 (and e!110107 mapRes!6447))))

(declare-fun condMapEmpty!6447 () Bool)

(declare-fun mapDefault!6447 () ValueCell!1566)

(assert (=> b!167605 (= condMapEmpty!6447 (= (arr!3203 (_values!3445 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1566)) mapDefault!6447)))))

(declare-fun b!167606 () Bool)

(declare-fun lt!83824 () Unit!5134)

(assert (=> b!167606 (= e!110104 lt!83824)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!110 (array!6734 array!6736 (_ BitVec 32) (_ BitVec 32) V!4739 V!4739 (_ BitVec 64) Int) Unit!5134)

(assert (=> b!167606 (= lt!83824 (lemmaInListMapThenSeekEntryOrOpenFindsIt!110 (_keys!5287 thiss!1248) (_values!3445 thiss!1248) (mask!8213 thiss!1248) (extraKeys!3203 thiss!1248) (zeroValue!3305 thiss!1248) (minValue!3305 thiss!1248) key!828 (defaultEntry!3462 thiss!1248)))))

(declare-fun res!79747 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!167606 (= res!79747 (inRange!0 (index!4141 lt!83819) (mask!8213 thiss!1248)))))

(assert (=> b!167606 (=> (not res!79747) (not e!110101))))

(assert (=> b!167606 e!110101))

(declare-fun array_inv!2053 (array!6734) Bool)

(declare-fun array_inv!2054 (array!6736) Bool)

(assert (=> b!167607 (= e!110105 (and tp!14651 tp_is_empty!3819 (array_inv!2053 (_keys!5287 thiss!1248)) (array_inv!2054 (_values!3445 thiss!1248)) e!110109))))

(declare-fun mapIsEmpty!6447 () Bool)

(assert (=> mapIsEmpty!6447 mapRes!6447))

(declare-fun b!167608 () Bool)

(declare-fun Unit!5136 () Unit!5134)

(assert (=> b!167608 (= e!110104 Unit!5136)))

(declare-fun lt!83825 () Unit!5134)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!108 (array!6734 array!6736 (_ BitVec 32) (_ BitVec 32) V!4739 V!4739 (_ BitVec 64) Int) Unit!5134)

(assert (=> b!167608 (= lt!83825 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!108 (_keys!5287 thiss!1248) (_values!3445 thiss!1248) (mask!8213 thiss!1248) (extraKeys!3203 thiss!1248) (zeroValue!3305 thiss!1248) (minValue!3305 thiss!1248) key!828 (defaultEntry!3462 thiss!1248)))))

(assert (=> b!167608 false))

(declare-fun b!167609 () Bool)

(assert (=> b!167609 (= e!110106 tp_is_empty!3819)))

(declare-fun b!167610 () Bool)

(declare-fun res!79748 () Bool)

(assert (=> b!167610 (=> res!79748 e!110110)))

(assert (=> b!167610 (= res!79748 (or (not (= (size!3491 (_values!3445 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8213 thiss!1248)))) (not (= (size!3490 (_keys!5287 thiss!1248)) (size!3491 (_values!3445 thiss!1248)))) (bvslt (mask!8213 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3203 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3203 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!167611 () Bool)

(assert (=> b!167611 (= e!110110 true)))

(declare-fun lt!83822 () Bool)

(declare-datatypes ((List!2157 0))(
  ( (Nil!2154) (Cons!2153 (h!2770 (_ BitVec 64)) (t!6967 List!2157)) )
))
(declare-fun arrayNoDuplicates!0 (array!6734 (_ BitVec 32) List!2157) Bool)

(assert (=> b!167611 (= lt!83822 (arrayNoDuplicates!0 (_keys!5287 thiss!1248) #b00000000000000000000000000000000 Nil!2154))))

(assert (= (and start!16724 res!79749) b!167603))

(assert (= (and b!167603 res!79746) b!167601))

(assert (= (and b!167601 res!79744) b!167604))

(assert (= (and b!167604 c!30288) b!167606))

(assert (= (and b!167604 (not c!30288)) b!167608))

(assert (= (and b!167606 res!79747) b!167602))

(assert (= (and b!167604 (not res!79745)) b!167610))

(assert (= (and b!167610 (not res!79748)) b!167600))

(assert (= (and b!167600 (not res!79743)) b!167611))

(assert (= (and b!167605 condMapEmpty!6447) mapIsEmpty!6447))

(assert (= (and b!167605 (not condMapEmpty!6447)) mapNonEmpty!6447))

(assert (= (and mapNonEmpty!6447 ((_ is ValueCellFull!1566) mapValue!6447)) b!167609))

(assert (= (and b!167605 ((_ is ValueCellFull!1566) mapDefault!6447)) b!167599))

(assert (= b!167607 b!167605))

(assert (= start!16724 b!167607))

(declare-fun m!196757 () Bool)

(assert (=> b!167607 m!196757))

(declare-fun m!196759 () Bool)

(assert (=> b!167607 m!196759))

(declare-fun m!196761 () Bool)

(assert (=> start!16724 m!196761))

(declare-fun m!196763 () Bool)

(assert (=> mapNonEmpty!6447 m!196763))

(declare-fun m!196765 () Bool)

(assert (=> b!167606 m!196765))

(declare-fun m!196767 () Bool)

(assert (=> b!167606 m!196767))

(declare-fun m!196769 () Bool)

(assert (=> b!167604 m!196769))

(declare-fun m!196771 () Bool)

(assert (=> b!167604 m!196771))

(declare-fun m!196773 () Bool)

(assert (=> b!167604 m!196773))

(declare-fun m!196775 () Bool)

(assert (=> b!167604 m!196775))

(declare-fun m!196777 () Bool)

(assert (=> b!167604 m!196777))

(declare-fun m!196779 () Bool)

(assert (=> b!167604 m!196779))

(declare-fun m!196781 () Bool)

(assert (=> b!167604 m!196781))

(declare-fun m!196783 () Bool)

(assert (=> b!167602 m!196783))

(declare-fun m!196785 () Bool)

(assert (=> b!167608 m!196785))

(declare-fun m!196787 () Bool)

(assert (=> b!167600 m!196787))

(declare-fun m!196789 () Bool)

(assert (=> b!167611 m!196789))

(declare-fun m!196791 () Bool)

(assert (=> b!167601 m!196791))

(check-sat (not mapNonEmpty!6447) (not b!167604) (not b!167611) (not b!167601) (not start!16724) (not b!167600) tp_is_empty!3819 (not b!167606) b_and!10449 (not b_next!4017) (not b!167608) (not b!167607))
(check-sat b_and!10449 (not b_next!4017))
