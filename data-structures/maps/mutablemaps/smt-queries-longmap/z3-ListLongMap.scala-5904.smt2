; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!76384 () Bool)

(assert start!76384)

(declare-fun b!895756 () Bool)

(declare-fun b_free!15927 () Bool)

(declare-fun b_next!15927 () Bool)

(assert (=> b!895756 (= b_free!15927 (not b_next!15927))))

(declare-fun tp!55800 () Bool)

(declare-fun b_and!26237 () Bool)

(assert (=> b!895756 (= tp!55800 b_and!26237)))

(declare-fun b!895750 () Bool)

(declare-fun e!500589 () Bool)

(declare-datatypes ((SeekEntryResult!8877 0))(
  ( (MissingZero!8877 (index!37878 (_ BitVec 32))) (Found!8877 (index!37879 (_ BitVec 32))) (Intermediate!8877 (undefined!9689 Bool) (index!37880 (_ BitVec 32)) (x!76230 (_ BitVec 32))) (Undefined!8877) (MissingVacant!8877 (index!37881 (_ BitVec 32))) )
))
(declare-fun lt!404577 () SeekEntryResult!8877)

(declare-datatypes ((array!52504 0))(
  ( (array!52505 (arr!25240 (Array (_ BitVec 32) (_ BitVec 64))) (size!25691 (_ BitVec 32))) )
))
(declare-datatypes ((V!29305 0))(
  ( (V!29306 (val!9178 Int)) )
))
(declare-datatypes ((ValueCell!8646 0))(
  ( (ValueCellFull!8646 (v!11665 V!29305)) (EmptyCell!8646) )
))
(declare-datatypes ((array!52506 0))(
  ( (array!52507 (arr!25241 (Array (_ BitVec 32) ValueCell!8646)) (size!25692 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4308 0))(
  ( (LongMapFixedSize!4309 (defaultEntry!5366 Int) (mask!25973 (_ BitVec 32)) (extraKeys!5062 (_ BitVec 32)) (zeroValue!5166 V!29305) (minValue!5166 V!29305) (_size!2209 (_ BitVec 32)) (_keys!10083 array!52504) (_values!5353 array!52506) (_vacant!2209 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4308)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!895750 (= e!500589 (inRange!0 (index!37879 lt!404577) (mask!25973 thiss!1181)))))

(declare-fun mapNonEmpty!28987 () Bool)

(declare-fun mapRes!28987 () Bool)

(declare-fun tp!55801 () Bool)

(declare-fun e!500588 () Bool)

(assert (=> mapNonEmpty!28987 (= mapRes!28987 (and tp!55801 e!500588))))

(declare-fun mapRest!28987 () (Array (_ BitVec 32) ValueCell!8646))

(declare-fun mapValue!28987 () ValueCell!8646)

(declare-fun mapKey!28987 () (_ BitVec 32))

(assert (=> mapNonEmpty!28987 (= (arr!25241 (_values!5353 thiss!1181)) (store mapRest!28987 mapKey!28987 mapValue!28987))))

(declare-fun b!895751 () Bool)

(declare-fun tp_is_empty!18255 () Bool)

(assert (=> b!895751 (= e!500588 tp_is_empty!18255)))

(declare-fun b!895752 () Bool)

(declare-fun res!605939 () Bool)

(declare-fun e!500590 () Bool)

(assert (=> b!895752 (=> (not res!605939) (not e!500590))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!895752 (= res!605939 (not (= key!785 (bvneg key!785))))))

(declare-fun b!895753 () Bool)

(get-info :version)

(assert (=> b!895753 (= e!500590 (not (or (not ((_ is Found!8877) lt!404577)) (bvsge (index!37879 lt!404577) #b00000000000000000000000000000000))))))

(assert (=> b!895753 e!500589))

(declare-fun res!605940 () Bool)

(assert (=> b!895753 (=> res!605940 e!500589)))

(assert (=> b!895753 (= res!605940 (not ((_ is Found!8877) lt!404577)))))

(declare-datatypes ((Unit!30441 0))(
  ( (Unit!30442) )
))
(declare-fun lt!404576 () Unit!30441)

(declare-fun lemmaSeekEntryGivesInRangeIndex!70 (array!52504 array!52506 (_ BitVec 32) (_ BitVec 32) V!29305 V!29305 (_ BitVec 64)) Unit!30441)

(assert (=> b!895753 (= lt!404576 (lemmaSeekEntryGivesInRangeIndex!70 (_keys!10083 thiss!1181) (_values!5353 thiss!1181) (mask!25973 thiss!1181) (extraKeys!5062 thiss!1181) (zeroValue!5166 thiss!1181) (minValue!5166 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52504 (_ BitVec 32)) SeekEntryResult!8877)

(assert (=> b!895753 (= lt!404577 (seekEntry!0 key!785 (_keys!10083 thiss!1181) (mask!25973 thiss!1181)))))

(declare-fun mapIsEmpty!28987 () Bool)

(assert (=> mapIsEmpty!28987 mapRes!28987))

(declare-fun res!605938 () Bool)

(assert (=> start!76384 (=> (not res!605938) (not e!500590))))

(declare-fun valid!1653 (LongMapFixedSize!4308) Bool)

(assert (=> start!76384 (= res!605938 (valid!1653 thiss!1181))))

(assert (=> start!76384 e!500590))

(declare-fun e!500593 () Bool)

(assert (=> start!76384 e!500593))

(assert (=> start!76384 true))

(declare-fun b!895754 () Bool)

(declare-fun e!500591 () Bool)

(declare-fun e!500587 () Bool)

(assert (=> b!895754 (= e!500591 (and e!500587 mapRes!28987))))

(declare-fun condMapEmpty!28987 () Bool)

(declare-fun mapDefault!28987 () ValueCell!8646)

(assert (=> b!895754 (= condMapEmpty!28987 (= (arr!25241 (_values!5353 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8646)) mapDefault!28987)))))

(declare-fun b!895755 () Bool)

(assert (=> b!895755 (= e!500587 tp_is_empty!18255)))

(declare-fun array_inv!19790 (array!52504) Bool)

(declare-fun array_inv!19791 (array!52506) Bool)

(assert (=> b!895756 (= e!500593 (and tp!55800 tp_is_empty!18255 (array_inv!19790 (_keys!10083 thiss!1181)) (array_inv!19791 (_values!5353 thiss!1181)) e!500591))))

(assert (= (and start!76384 res!605938) b!895752))

(assert (= (and b!895752 res!605939) b!895753))

(assert (= (and b!895753 (not res!605940)) b!895750))

(assert (= (and b!895754 condMapEmpty!28987) mapIsEmpty!28987))

(assert (= (and b!895754 (not condMapEmpty!28987)) mapNonEmpty!28987))

(assert (= (and mapNonEmpty!28987 ((_ is ValueCellFull!8646) mapValue!28987)) b!895751))

(assert (= (and b!895754 ((_ is ValueCellFull!8646) mapDefault!28987)) b!895755))

(assert (= b!895756 b!895754))

(assert (= start!76384 b!895756))

(declare-fun m!833237 () Bool)

(assert (=> b!895753 m!833237))

(declare-fun m!833239 () Bool)

(assert (=> b!895753 m!833239))

(declare-fun m!833241 () Bool)

(assert (=> b!895750 m!833241))

(declare-fun m!833243 () Bool)

(assert (=> mapNonEmpty!28987 m!833243))

(declare-fun m!833245 () Bool)

(assert (=> b!895756 m!833245))

(declare-fun m!833247 () Bool)

(assert (=> b!895756 m!833247))

(declare-fun m!833249 () Bool)

(assert (=> start!76384 m!833249))

(check-sat (not b!895750) (not mapNonEmpty!28987) (not b!895753) tp_is_empty!18255 b_and!26237 (not b_next!15927) (not b!895756) (not start!76384))
(check-sat b_and!26237 (not b_next!15927))
(get-model)

(declare-fun d!110753 () Bool)

(assert (=> d!110753 (= (array_inv!19790 (_keys!10083 thiss!1181)) (bvsge (size!25691 (_keys!10083 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!895756 d!110753))

(declare-fun d!110755 () Bool)

(assert (=> d!110755 (= (array_inv!19791 (_values!5353 thiss!1181)) (bvsge (size!25692 (_values!5353 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!895756 d!110755))

(declare-fun d!110757 () Bool)

(declare-fun res!605956 () Bool)

(declare-fun e!500617 () Bool)

(assert (=> d!110757 (=> (not res!605956) (not e!500617))))

(declare-fun simpleValid!308 (LongMapFixedSize!4308) Bool)

(assert (=> d!110757 (= res!605956 (simpleValid!308 thiss!1181))))

(assert (=> d!110757 (= (valid!1653 thiss!1181) e!500617)))

(declare-fun b!895784 () Bool)

(declare-fun res!605957 () Bool)

(assert (=> b!895784 (=> (not res!605957) (not e!500617))))

(declare-fun arrayCountValidKeys!0 (array!52504 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!895784 (= res!605957 (= (arrayCountValidKeys!0 (_keys!10083 thiss!1181) #b00000000000000000000000000000000 (size!25691 (_keys!10083 thiss!1181))) (_size!2209 thiss!1181)))))

(declare-fun b!895785 () Bool)

(declare-fun res!605958 () Bool)

(assert (=> b!895785 (=> (not res!605958) (not e!500617))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52504 (_ BitVec 32)) Bool)

(assert (=> b!895785 (= res!605958 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10083 thiss!1181) (mask!25973 thiss!1181)))))

(declare-fun b!895786 () Bool)

(declare-datatypes ((List!17896 0))(
  ( (Nil!17893) (Cons!17892 (h!19029 (_ BitVec 64)) (t!25243 List!17896)) )
))
(declare-fun arrayNoDuplicates!0 (array!52504 (_ BitVec 32) List!17896) Bool)

(assert (=> b!895786 (= e!500617 (arrayNoDuplicates!0 (_keys!10083 thiss!1181) #b00000000000000000000000000000000 Nil!17893))))

(assert (= (and d!110757 res!605956) b!895784))

(assert (= (and b!895784 res!605957) b!895785))

(assert (= (and b!895785 res!605958) b!895786))

(declare-fun m!833265 () Bool)

(assert (=> d!110757 m!833265))

(declare-fun m!833267 () Bool)

(assert (=> b!895784 m!833267))

(declare-fun m!833269 () Bool)

(assert (=> b!895785 m!833269))

(declare-fun m!833271 () Bool)

(assert (=> b!895786 m!833271))

(assert (=> start!76384 d!110757))

(declare-fun d!110759 () Bool)

(declare-fun e!500620 () Bool)

(assert (=> d!110759 e!500620))

(declare-fun res!605961 () Bool)

(assert (=> d!110759 (=> res!605961 e!500620)))

(declare-fun lt!404589 () SeekEntryResult!8877)

(assert (=> d!110759 (= res!605961 (not ((_ is Found!8877) lt!404589)))))

(assert (=> d!110759 (= lt!404589 (seekEntry!0 key!785 (_keys!10083 thiss!1181) (mask!25973 thiss!1181)))))

(declare-fun lt!404588 () Unit!30441)

(declare-fun choose!1482 (array!52504 array!52506 (_ BitVec 32) (_ BitVec 32) V!29305 V!29305 (_ BitVec 64)) Unit!30441)

(assert (=> d!110759 (= lt!404588 (choose!1482 (_keys!10083 thiss!1181) (_values!5353 thiss!1181) (mask!25973 thiss!1181) (extraKeys!5062 thiss!1181) (zeroValue!5166 thiss!1181) (minValue!5166 thiss!1181) key!785))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!110759 (validMask!0 (mask!25973 thiss!1181))))

(assert (=> d!110759 (= (lemmaSeekEntryGivesInRangeIndex!70 (_keys!10083 thiss!1181) (_values!5353 thiss!1181) (mask!25973 thiss!1181) (extraKeys!5062 thiss!1181) (zeroValue!5166 thiss!1181) (minValue!5166 thiss!1181) key!785) lt!404588)))

(declare-fun b!895789 () Bool)

(assert (=> b!895789 (= e!500620 (inRange!0 (index!37879 lt!404589) (mask!25973 thiss!1181)))))

(assert (= (and d!110759 (not res!605961)) b!895789))

(assert (=> d!110759 m!833239))

(declare-fun m!833273 () Bool)

(assert (=> d!110759 m!833273))

(declare-fun m!833275 () Bool)

(assert (=> d!110759 m!833275))

(declare-fun m!833277 () Bool)

(assert (=> b!895789 m!833277))

(assert (=> b!895753 d!110759))

(declare-fun d!110761 () Bool)

(declare-fun lt!404598 () SeekEntryResult!8877)

(assert (=> d!110761 (and (or ((_ is MissingVacant!8877) lt!404598) (not ((_ is Found!8877) lt!404598)) (and (bvsge (index!37879 lt!404598) #b00000000000000000000000000000000) (bvslt (index!37879 lt!404598) (size!25691 (_keys!10083 thiss!1181))))) (not ((_ is MissingVacant!8877) lt!404598)) (or (not ((_ is Found!8877) lt!404598)) (= (select (arr!25240 (_keys!10083 thiss!1181)) (index!37879 lt!404598)) key!785)))))

(declare-fun e!500629 () SeekEntryResult!8877)

(assert (=> d!110761 (= lt!404598 e!500629)))

(declare-fun c!94542 () Bool)

(declare-fun lt!404599 () SeekEntryResult!8877)

(assert (=> d!110761 (= c!94542 (and ((_ is Intermediate!8877) lt!404599) (undefined!9689 lt!404599)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52504 (_ BitVec 32)) SeekEntryResult!8877)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!110761 (= lt!404599 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!25973 thiss!1181)) key!785 (_keys!10083 thiss!1181) (mask!25973 thiss!1181)))))

(assert (=> d!110761 (validMask!0 (mask!25973 thiss!1181))))

(assert (=> d!110761 (= (seekEntry!0 key!785 (_keys!10083 thiss!1181) (mask!25973 thiss!1181)) lt!404598)))

(declare-fun b!895802 () Bool)

(declare-fun e!500628 () SeekEntryResult!8877)

(declare-fun lt!404600 () SeekEntryResult!8877)

(assert (=> b!895802 (= e!500628 (ite ((_ is MissingVacant!8877) lt!404600) (MissingZero!8877 (index!37881 lt!404600)) lt!404600))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52504 (_ BitVec 32)) SeekEntryResult!8877)

(assert (=> b!895802 (= lt!404600 (seekKeyOrZeroReturnVacant!0 (x!76230 lt!404599) (index!37880 lt!404599) (index!37880 lt!404599) key!785 (_keys!10083 thiss!1181) (mask!25973 thiss!1181)))))

(declare-fun b!895803 () Bool)

(assert (=> b!895803 (= e!500629 Undefined!8877)))

(declare-fun b!895804 () Bool)

(declare-fun e!500627 () SeekEntryResult!8877)

(assert (=> b!895804 (= e!500629 e!500627)))

(declare-fun lt!404601 () (_ BitVec 64))

(assert (=> b!895804 (= lt!404601 (select (arr!25240 (_keys!10083 thiss!1181)) (index!37880 lt!404599)))))

(declare-fun c!94541 () Bool)

(assert (=> b!895804 (= c!94541 (= lt!404601 key!785))))

(declare-fun b!895805 () Bool)

(assert (=> b!895805 (= e!500627 (Found!8877 (index!37880 lt!404599)))))

(declare-fun b!895806 () Bool)

(assert (=> b!895806 (= e!500628 (MissingZero!8877 (index!37880 lt!404599)))))

(declare-fun b!895807 () Bool)

(declare-fun c!94543 () Bool)

(assert (=> b!895807 (= c!94543 (= lt!404601 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!895807 (= e!500627 e!500628)))

(assert (= (and d!110761 c!94542) b!895803))

(assert (= (and d!110761 (not c!94542)) b!895804))

(assert (= (and b!895804 c!94541) b!895805))

(assert (= (and b!895804 (not c!94541)) b!895807))

(assert (= (and b!895807 c!94543) b!895806))

(assert (= (and b!895807 (not c!94543)) b!895802))

(declare-fun m!833279 () Bool)

(assert (=> d!110761 m!833279))

(declare-fun m!833281 () Bool)

(assert (=> d!110761 m!833281))

(assert (=> d!110761 m!833281))

(declare-fun m!833283 () Bool)

(assert (=> d!110761 m!833283))

(assert (=> d!110761 m!833275))

(declare-fun m!833285 () Bool)

(assert (=> b!895802 m!833285))

(declare-fun m!833287 () Bool)

(assert (=> b!895804 m!833287))

(assert (=> b!895753 d!110761))

(declare-fun d!110763 () Bool)

(assert (=> d!110763 (= (inRange!0 (index!37879 lt!404577) (mask!25973 thiss!1181)) (and (bvsge (index!37879 lt!404577) #b00000000000000000000000000000000) (bvslt (index!37879 lt!404577) (bvadd (mask!25973 thiss!1181) #b00000000000000000000000000000001))))))

(assert (=> b!895750 d!110763))

(declare-fun b!895815 () Bool)

(declare-fun e!500635 () Bool)

(assert (=> b!895815 (= e!500635 tp_is_empty!18255)))

(declare-fun b!895814 () Bool)

(declare-fun e!500634 () Bool)

(assert (=> b!895814 (= e!500634 tp_is_empty!18255)))

(declare-fun mapIsEmpty!28993 () Bool)

(declare-fun mapRes!28993 () Bool)

(assert (=> mapIsEmpty!28993 mapRes!28993))

(declare-fun condMapEmpty!28993 () Bool)

(declare-fun mapDefault!28993 () ValueCell!8646)

(assert (=> mapNonEmpty!28987 (= condMapEmpty!28993 (= mapRest!28987 ((as const (Array (_ BitVec 32) ValueCell!8646)) mapDefault!28993)))))

(assert (=> mapNonEmpty!28987 (= tp!55801 (and e!500635 mapRes!28993))))

(declare-fun mapNonEmpty!28993 () Bool)

(declare-fun tp!55810 () Bool)

(assert (=> mapNonEmpty!28993 (= mapRes!28993 (and tp!55810 e!500634))))

(declare-fun mapRest!28993 () (Array (_ BitVec 32) ValueCell!8646))

(declare-fun mapKey!28993 () (_ BitVec 32))

(declare-fun mapValue!28993 () ValueCell!8646)

(assert (=> mapNonEmpty!28993 (= mapRest!28987 (store mapRest!28993 mapKey!28993 mapValue!28993))))

(assert (= (and mapNonEmpty!28987 condMapEmpty!28993) mapIsEmpty!28993))

(assert (= (and mapNonEmpty!28987 (not condMapEmpty!28993)) mapNonEmpty!28993))

(assert (= (and mapNonEmpty!28993 ((_ is ValueCellFull!8646) mapValue!28993)) b!895814))

(assert (= (and mapNonEmpty!28987 ((_ is ValueCellFull!8646) mapDefault!28993)) b!895815))

(declare-fun m!833289 () Bool)

(assert (=> mapNonEmpty!28993 m!833289))

(check-sat (not b!895785) (not d!110757) (not b!895786) (not mapNonEmpty!28993) tp_is_empty!18255 (not d!110761) (not d!110759) b_and!26237 (not b_next!15927) (not b!895789) (not b!895802) (not b!895784))
(check-sat b_and!26237 (not b_next!15927))
