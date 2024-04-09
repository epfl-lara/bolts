; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!76978 () Bool)

(assert start!76978)

(declare-fun b!899118 () Bool)

(declare-fun b_free!16029 () Bool)

(declare-fun b_next!16029 () Bool)

(assert (=> b!899118 (= b_free!16029 (not b_next!16029))))

(declare-fun tp!56164 () Bool)

(declare-fun b_and!26353 () Bool)

(assert (=> b!899118 (= tp!56164 b_and!26353)))

(declare-fun b!899115 () Bool)

(declare-fun e!503103 () Bool)

(declare-fun tp_is_empty!18357 () Bool)

(assert (=> b!899115 (= e!503103 tp_is_empty!18357)))

(declare-fun b!899116 () Bool)

(declare-fun e!503102 () Bool)

(declare-fun mapRes!29198 () Bool)

(assert (=> b!899116 (= e!503102 (and e!503103 mapRes!29198))))

(declare-fun condMapEmpty!29198 () Bool)

(declare-datatypes ((array!52742 0))(
  ( (array!52743 (arr!25342 (Array (_ BitVec 32) (_ BitVec 64))) (size!25800 (_ BitVec 32))) )
))
(declare-datatypes ((V!29441 0))(
  ( (V!29442 (val!9229 Int)) )
))
(declare-datatypes ((ValueCell!8697 0))(
  ( (ValueCellFull!8697 (v!11719 V!29441)) (EmptyCell!8697) )
))
(declare-datatypes ((array!52744 0))(
  ( (array!52745 (arr!25343 (Array (_ BitVec 32) ValueCell!8697)) (size!25801 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4410 0))(
  ( (LongMapFixedSize!4411 (defaultEntry!5427 Int) (mask!26172 (_ BitVec 32)) (extraKeys!5147 (_ BitVec 32)) (zeroValue!5251 V!29441) (minValue!5251 V!29441) (_size!2260 (_ BitVec 32)) (_keys!10210 array!52742) (_values!5438 array!52744) (_vacant!2260 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4410)

(declare-fun mapDefault!29198 () ValueCell!8697)

(assert (=> b!899116 (= condMapEmpty!29198 (= (arr!25343 (_values!5438 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8697)) mapDefault!29198)))))

(declare-fun mapNonEmpty!29198 () Bool)

(declare-fun tp!56165 () Bool)

(declare-fun e!503098 () Bool)

(assert (=> mapNonEmpty!29198 (= mapRes!29198 (and tp!56165 e!503098))))

(declare-fun mapRest!29198 () (Array (_ BitVec 32) ValueCell!8697))

(declare-fun mapKey!29198 () (_ BitVec 32))

(declare-fun mapValue!29198 () ValueCell!8697)

(assert (=> mapNonEmpty!29198 (= (arr!25343 (_values!5438 thiss!1181)) (store mapRest!29198 mapKey!29198 mapValue!29198))))

(declare-fun mapIsEmpty!29198 () Bool)

(assert (=> mapIsEmpty!29198 mapRes!29198))

(declare-fun b!899117 () Bool)

(declare-fun e!503095 () Bool)

(declare-fun e!503099 () Bool)

(assert (=> b!899117 (= e!503095 (not e!503099))))

(declare-fun res!607547 () Bool)

(assert (=> b!899117 (=> res!607547 e!503099)))

(declare-datatypes ((SeekEntryResult!8918 0))(
  ( (MissingZero!8918 (index!38042 (_ BitVec 32))) (Found!8918 (index!38043 (_ BitVec 32))) (Intermediate!8918 (undefined!9730 Bool) (index!38044 (_ BitVec 32)) (x!76610 (_ BitVec 32))) (Undefined!8918) (MissingVacant!8918 (index!38045 (_ BitVec 32))) )
))
(declare-fun lt!406054 () SeekEntryResult!8918)

(get-info :version)

(assert (=> b!899117 (= res!607547 (not ((_ is Found!8918) lt!406054)))))

(declare-fun e!503100 () Bool)

(assert (=> b!899117 e!503100))

(declare-fun res!607545 () Bool)

(assert (=> b!899117 (=> res!607545 e!503100)))

(assert (=> b!899117 (= res!607545 (not ((_ is Found!8918) lt!406054)))))

(declare-datatypes ((Unit!30527 0))(
  ( (Unit!30528) )
))
(declare-fun lt!406052 () Unit!30527)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!100 (array!52742 array!52744 (_ BitVec 32) (_ BitVec 32) V!29441 V!29441 (_ BitVec 64)) Unit!30527)

(assert (=> b!899117 (= lt!406052 (lemmaSeekEntryGivesInRangeIndex!100 (_keys!10210 thiss!1181) (_values!5438 thiss!1181) (mask!26172 thiss!1181) (extraKeys!5147 thiss!1181) (zeroValue!5251 thiss!1181) (minValue!5251 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52742 (_ BitVec 32)) SeekEntryResult!8918)

(assert (=> b!899117 (= lt!406054 (seekEntry!0 key!785 (_keys!10210 thiss!1181) (mask!26172 thiss!1181)))))

(declare-fun e!503101 () Bool)

(declare-fun array_inv!19862 (array!52742) Bool)

(declare-fun array_inv!19863 (array!52744) Bool)

(assert (=> b!899118 (= e!503101 (and tp!56164 tp_is_empty!18357 (array_inv!19862 (_keys!10210 thiss!1181)) (array_inv!19863 (_values!5438 thiss!1181)) e!503102))))

(declare-fun b!899119 () Bool)

(declare-fun e!503096 () Bool)

(assert (=> b!899119 (= e!503096 (or (not (= (size!25801 (_values!5438 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!26172 thiss!1181)))) (not (= (size!25800 (_keys!10210 thiss!1181)) (size!25801 (_values!5438 thiss!1181)))) (bvsge (mask!26172 thiss!1181) #b00000000000000000000000000000000)))))

(declare-fun b!899120 () Bool)

(declare-fun res!607546 () Bool)

(assert (=> b!899120 (=> (not res!607546) (not e!503095))))

(assert (=> b!899120 (= res!607546 (not (= key!785 (bvneg key!785))))))

(declare-fun res!607544 () Bool)

(assert (=> start!76978 (=> (not res!607544) (not e!503095))))

(declare-fun valid!1681 (LongMapFixedSize!4410) Bool)

(assert (=> start!76978 (= res!607544 (valid!1681 thiss!1181))))

(assert (=> start!76978 e!503095))

(assert (=> start!76978 e!503101))

(assert (=> start!76978 true))

(declare-fun b!899121 () Bool)

(assert (=> b!899121 (= e!503099 e!503096)))

(declare-fun res!607548 () Bool)

(assert (=> b!899121 (=> res!607548 e!503096)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!899121 (= res!607548 (not (validMask!0 (mask!26172 thiss!1181))))))

(declare-datatypes ((tuple2!12062 0))(
  ( (tuple2!12063 (_1!6041 (_ BitVec 64)) (_2!6041 V!29441)) )
))
(declare-datatypes ((List!17922 0))(
  ( (Nil!17919) (Cons!17918 (h!19062 tuple2!12062) (t!25275 List!17922)) )
))
(declare-datatypes ((ListLongMap!10773 0))(
  ( (ListLongMap!10774 (toList!5402 List!17922)) )
))
(declare-fun contains!4405 (ListLongMap!10773 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2645 (array!52742 array!52744 (_ BitVec 32) (_ BitVec 32) V!29441 V!29441 (_ BitVec 32) Int) ListLongMap!10773)

(assert (=> b!899121 (contains!4405 (getCurrentListMap!2645 (_keys!10210 thiss!1181) (_values!5438 thiss!1181) (mask!26172 thiss!1181) (extraKeys!5147 thiss!1181) (zeroValue!5251 thiss!1181) (minValue!5251 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5427 thiss!1181)) (select (arr!25342 (_keys!10210 thiss!1181)) (index!38043 lt!406054)))))

(declare-fun lt!406051 () Unit!30527)

(declare-fun lemmaValidKeyInArrayIsInListMap!238 (array!52742 array!52744 (_ BitVec 32) (_ BitVec 32) V!29441 V!29441 (_ BitVec 32) Int) Unit!30527)

(assert (=> b!899121 (= lt!406051 (lemmaValidKeyInArrayIsInListMap!238 (_keys!10210 thiss!1181) (_values!5438 thiss!1181) (mask!26172 thiss!1181) (extraKeys!5147 thiss!1181) (zeroValue!5251 thiss!1181) (minValue!5251 thiss!1181) (index!38043 lt!406054) (defaultEntry!5427 thiss!1181)))))

(declare-fun arrayContainsKey!0 (array!52742 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!899121 (arrayContainsKey!0 (_keys!10210 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!406053 () Unit!30527)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52742 (_ BitVec 64) (_ BitVec 32)) Unit!30527)

(assert (=> b!899121 (= lt!406053 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10210 thiss!1181) key!785 (index!38043 lt!406054)))))

(declare-fun b!899122 () Bool)

(assert (=> b!899122 (= e!503098 tp_is_empty!18357)))

(declare-fun b!899123 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!899123 (= e!503100 (inRange!0 (index!38043 lt!406054) (mask!26172 thiss!1181)))))

(assert (= (and start!76978 res!607544) b!899120))

(assert (= (and b!899120 res!607546) b!899117))

(assert (= (and b!899117 (not res!607545)) b!899123))

(assert (= (and b!899117 (not res!607547)) b!899121))

(assert (= (and b!899121 (not res!607548)) b!899119))

(assert (= (and b!899116 condMapEmpty!29198) mapIsEmpty!29198))

(assert (= (and b!899116 (not condMapEmpty!29198)) mapNonEmpty!29198))

(assert (= (and mapNonEmpty!29198 ((_ is ValueCellFull!8697) mapValue!29198)) b!899122))

(assert (= (and b!899116 ((_ is ValueCellFull!8697) mapDefault!29198)) b!899115))

(assert (= b!899118 b!899116))

(assert (= start!76978 b!899118))

(declare-fun m!835721 () Bool)

(assert (=> b!899117 m!835721))

(declare-fun m!835723 () Bool)

(assert (=> b!899117 m!835723))

(declare-fun m!835725 () Bool)

(assert (=> mapNonEmpty!29198 m!835725))

(declare-fun m!835727 () Bool)

(assert (=> b!899121 m!835727))

(declare-fun m!835729 () Bool)

(assert (=> b!899121 m!835729))

(declare-fun m!835731 () Bool)

(assert (=> b!899121 m!835731))

(declare-fun m!835733 () Bool)

(assert (=> b!899121 m!835733))

(declare-fun m!835735 () Bool)

(assert (=> b!899121 m!835735))

(declare-fun m!835737 () Bool)

(assert (=> b!899121 m!835737))

(assert (=> b!899121 m!835729))

(declare-fun m!835739 () Bool)

(assert (=> b!899121 m!835739))

(assert (=> b!899121 m!835737))

(declare-fun m!835741 () Bool)

(assert (=> b!899118 m!835741))

(declare-fun m!835743 () Bool)

(assert (=> b!899118 m!835743))

(declare-fun m!835745 () Bool)

(assert (=> b!899123 m!835745))

(declare-fun m!835747 () Bool)

(assert (=> start!76978 m!835747))

(check-sat b_and!26353 (not b!899117) (not b_next!16029) (not start!76978) tp_is_empty!18357 (not mapNonEmpty!29198) (not b!899121) (not b!899123) (not b!899118))
(check-sat b_and!26353 (not b_next!16029))
(get-model)

(declare-fun d!111381 () Bool)

(assert (=> d!111381 (= (inRange!0 (index!38043 lt!406054) (mask!26172 thiss!1181)) (and (bvsge (index!38043 lt!406054) #b00000000000000000000000000000000) (bvslt (index!38043 lt!406054) (bvadd (mask!26172 thiss!1181) #b00000000000000000000000000000001))))))

(assert (=> b!899123 d!111381))

(declare-fun d!111383 () Bool)

(assert (=> d!111383 (= (array_inv!19862 (_keys!10210 thiss!1181)) (bvsge (size!25800 (_keys!10210 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!899118 d!111383))

(declare-fun d!111385 () Bool)

(assert (=> d!111385 (= (array_inv!19863 (_values!5438 thiss!1181)) (bvsge (size!25801 (_values!5438 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!899118 d!111385))

(declare-fun d!111387 () Bool)

(declare-fun e!503133 () Bool)

(assert (=> d!111387 e!503133))

(declare-fun res!607566 () Bool)

(assert (=> d!111387 (=> res!607566 e!503133)))

(declare-fun lt!406072 () SeekEntryResult!8918)

(assert (=> d!111387 (= res!607566 (not ((_ is Found!8918) lt!406072)))))

(assert (=> d!111387 (= lt!406072 (seekEntry!0 key!785 (_keys!10210 thiss!1181) (mask!26172 thiss!1181)))))

(declare-fun lt!406071 () Unit!30527)

(declare-fun choose!1508 (array!52742 array!52744 (_ BitVec 32) (_ BitVec 32) V!29441 V!29441 (_ BitVec 64)) Unit!30527)

(assert (=> d!111387 (= lt!406071 (choose!1508 (_keys!10210 thiss!1181) (_values!5438 thiss!1181) (mask!26172 thiss!1181) (extraKeys!5147 thiss!1181) (zeroValue!5251 thiss!1181) (minValue!5251 thiss!1181) key!785))))

(assert (=> d!111387 (validMask!0 (mask!26172 thiss!1181))))

(assert (=> d!111387 (= (lemmaSeekEntryGivesInRangeIndex!100 (_keys!10210 thiss!1181) (_values!5438 thiss!1181) (mask!26172 thiss!1181) (extraKeys!5147 thiss!1181) (zeroValue!5251 thiss!1181) (minValue!5251 thiss!1181) key!785) lt!406071)))

(declare-fun b!899153 () Bool)

(assert (=> b!899153 (= e!503133 (inRange!0 (index!38043 lt!406072) (mask!26172 thiss!1181)))))

(assert (= (and d!111387 (not res!607566)) b!899153))

(assert (=> d!111387 m!835723))

(declare-fun m!835777 () Bool)

(assert (=> d!111387 m!835777))

(assert (=> d!111387 m!835735))

(declare-fun m!835779 () Bool)

(assert (=> b!899153 m!835779))

(assert (=> b!899117 d!111387))

(declare-fun b!899166 () Bool)

(declare-fun e!503142 () SeekEntryResult!8918)

(declare-fun lt!406082 () SeekEntryResult!8918)

(assert (=> b!899166 (= e!503142 (Found!8918 (index!38044 lt!406082)))))

(declare-fun b!899167 () Bool)

(declare-fun e!503141 () SeekEntryResult!8918)

(assert (=> b!899167 (= e!503141 (MissingZero!8918 (index!38044 lt!406082)))))

(declare-fun b!899168 () Bool)

(declare-fun e!503140 () SeekEntryResult!8918)

(assert (=> b!899168 (= e!503140 Undefined!8918)))

(declare-fun d!111389 () Bool)

(declare-fun lt!406084 () SeekEntryResult!8918)

(assert (=> d!111389 (and (or ((_ is MissingVacant!8918) lt!406084) (not ((_ is Found!8918) lt!406084)) (and (bvsge (index!38043 lt!406084) #b00000000000000000000000000000000) (bvslt (index!38043 lt!406084) (size!25800 (_keys!10210 thiss!1181))))) (not ((_ is MissingVacant!8918) lt!406084)) (or (not ((_ is Found!8918) lt!406084)) (= (select (arr!25342 (_keys!10210 thiss!1181)) (index!38043 lt!406084)) key!785)))))

(assert (=> d!111389 (= lt!406084 e!503140)))

(declare-fun c!95040 () Bool)

(assert (=> d!111389 (= c!95040 (and ((_ is Intermediate!8918) lt!406082) (undefined!9730 lt!406082)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52742 (_ BitVec 32)) SeekEntryResult!8918)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!111389 (= lt!406082 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!26172 thiss!1181)) key!785 (_keys!10210 thiss!1181) (mask!26172 thiss!1181)))))

(assert (=> d!111389 (validMask!0 (mask!26172 thiss!1181))))

(assert (=> d!111389 (= (seekEntry!0 key!785 (_keys!10210 thiss!1181) (mask!26172 thiss!1181)) lt!406084)))

(declare-fun b!899169 () Bool)

(assert (=> b!899169 (= e!503140 e!503142)))

(declare-fun lt!406081 () (_ BitVec 64))

(assert (=> b!899169 (= lt!406081 (select (arr!25342 (_keys!10210 thiss!1181)) (index!38044 lt!406082)))))

(declare-fun c!95038 () Bool)

(assert (=> b!899169 (= c!95038 (= lt!406081 key!785))))

(declare-fun b!899170 () Bool)

(declare-fun c!95039 () Bool)

(assert (=> b!899170 (= c!95039 (= lt!406081 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!899170 (= e!503142 e!503141)))

(declare-fun b!899171 () Bool)

(declare-fun lt!406083 () SeekEntryResult!8918)

(assert (=> b!899171 (= e!503141 (ite ((_ is MissingVacant!8918) lt!406083) (MissingZero!8918 (index!38045 lt!406083)) lt!406083))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52742 (_ BitVec 32)) SeekEntryResult!8918)

(assert (=> b!899171 (= lt!406083 (seekKeyOrZeroReturnVacant!0 (x!76610 lt!406082) (index!38044 lt!406082) (index!38044 lt!406082) key!785 (_keys!10210 thiss!1181) (mask!26172 thiss!1181)))))

(assert (= (and d!111389 c!95040) b!899168))

(assert (= (and d!111389 (not c!95040)) b!899169))

(assert (= (and b!899169 c!95038) b!899166))

(assert (= (and b!899169 (not c!95038)) b!899170))

(assert (= (and b!899170 c!95039) b!899167))

(assert (= (and b!899170 (not c!95039)) b!899171))

(declare-fun m!835781 () Bool)

(assert (=> d!111389 m!835781))

(declare-fun m!835783 () Bool)

(assert (=> d!111389 m!835783))

(assert (=> d!111389 m!835783))

(declare-fun m!835785 () Bool)

(assert (=> d!111389 m!835785))

(assert (=> d!111389 m!835735))

(declare-fun m!835787 () Bool)

(assert (=> b!899169 m!835787))

(declare-fun m!835789 () Bool)

(assert (=> b!899171 m!835789))

(assert (=> b!899117 d!111389))

(declare-fun d!111391 () Bool)

(declare-fun res!607573 () Bool)

(declare-fun e!503145 () Bool)

(assert (=> d!111391 (=> (not res!607573) (not e!503145))))

(declare-fun simpleValid!325 (LongMapFixedSize!4410) Bool)

(assert (=> d!111391 (= res!607573 (simpleValid!325 thiss!1181))))

(assert (=> d!111391 (= (valid!1681 thiss!1181) e!503145)))

(declare-fun b!899178 () Bool)

(declare-fun res!607574 () Bool)

(assert (=> b!899178 (=> (not res!607574) (not e!503145))))

(declare-fun arrayCountValidKeys!0 (array!52742 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!899178 (= res!607574 (= (arrayCountValidKeys!0 (_keys!10210 thiss!1181) #b00000000000000000000000000000000 (size!25800 (_keys!10210 thiss!1181))) (_size!2260 thiss!1181)))))

(declare-fun b!899179 () Bool)

(declare-fun res!607575 () Bool)

(assert (=> b!899179 (=> (not res!607575) (not e!503145))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52742 (_ BitVec 32)) Bool)

(assert (=> b!899179 (= res!607575 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10210 thiss!1181) (mask!26172 thiss!1181)))))

(declare-fun b!899180 () Bool)

(declare-datatypes ((List!17924 0))(
  ( (Nil!17921) (Cons!17920 (h!19064 (_ BitVec 64)) (t!25279 List!17924)) )
))
(declare-fun arrayNoDuplicates!0 (array!52742 (_ BitVec 32) List!17924) Bool)

(assert (=> b!899180 (= e!503145 (arrayNoDuplicates!0 (_keys!10210 thiss!1181) #b00000000000000000000000000000000 Nil!17921))))

(assert (= (and d!111391 res!607573) b!899178))

(assert (= (and b!899178 res!607574) b!899179))

(assert (= (and b!899179 res!607575) b!899180))

(declare-fun m!835791 () Bool)

(assert (=> d!111391 m!835791))

(declare-fun m!835793 () Bool)

(assert (=> b!899178 m!835793))

(declare-fun m!835795 () Bool)

(assert (=> b!899179 m!835795))

(declare-fun m!835797 () Bool)

(assert (=> b!899180 m!835797))

(assert (=> start!76978 d!111391))

(declare-fun d!111393 () Bool)

(assert (=> d!111393 (arrayContainsKey!0 (_keys!10210 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!406087 () Unit!30527)

(declare-fun choose!13 (array!52742 (_ BitVec 64) (_ BitVec 32)) Unit!30527)

(assert (=> d!111393 (= lt!406087 (choose!13 (_keys!10210 thiss!1181) key!785 (index!38043 lt!406054)))))

(assert (=> d!111393 (bvsge (index!38043 lt!406054) #b00000000000000000000000000000000)))

(assert (=> d!111393 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10210 thiss!1181) key!785 (index!38043 lt!406054)) lt!406087)))

(declare-fun bs!25240 () Bool)

(assert (= bs!25240 d!111393))

(assert (=> bs!25240 m!835733))

(declare-fun m!835799 () Bool)

(assert (=> bs!25240 m!835799))

(assert (=> b!899121 d!111393))

(declare-fun d!111395 () Bool)

(declare-fun e!503148 () Bool)

(assert (=> d!111395 e!503148))

(declare-fun res!607578 () Bool)

(assert (=> d!111395 (=> (not res!607578) (not e!503148))))

(assert (=> d!111395 (= res!607578 (and (bvsge (index!38043 lt!406054) #b00000000000000000000000000000000) (bvslt (index!38043 lt!406054) (size!25800 (_keys!10210 thiss!1181)))))))

(declare-fun lt!406090 () Unit!30527)

(declare-fun choose!1509 (array!52742 array!52744 (_ BitVec 32) (_ BitVec 32) V!29441 V!29441 (_ BitVec 32) Int) Unit!30527)

(assert (=> d!111395 (= lt!406090 (choose!1509 (_keys!10210 thiss!1181) (_values!5438 thiss!1181) (mask!26172 thiss!1181) (extraKeys!5147 thiss!1181) (zeroValue!5251 thiss!1181) (minValue!5251 thiss!1181) (index!38043 lt!406054) (defaultEntry!5427 thiss!1181)))))

(assert (=> d!111395 (validMask!0 (mask!26172 thiss!1181))))

(assert (=> d!111395 (= (lemmaValidKeyInArrayIsInListMap!238 (_keys!10210 thiss!1181) (_values!5438 thiss!1181) (mask!26172 thiss!1181) (extraKeys!5147 thiss!1181) (zeroValue!5251 thiss!1181) (minValue!5251 thiss!1181) (index!38043 lt!406054) (defaultEntry!5427 thiss!1181)) lt!406090)))

(declare-fun b!899183 () Bool)

(assert (=> b!899183 (= e!503148 (contains!4405 (getCurrentListMap!2645 (_keys!10210 thiss!1181) (_values!5438 thiss!1181) (mask!26172 thiss!1181) (extraKeys!5147 thiss!1181) (zeroValue!5251 thiss!1181) (minValue!5251 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5427 thiss!1181)) (select (arr!25342 (_keys!10210 thiss!1181)) (index!38043 lt!406054))))))

(assert (= (and d!111395 res!607578) b!899183))

(declare-fun m!835801 () Bool)

(assert (=> d!111395 m!835801))

(assert (=> d!111395 m!835735))

(assert (=> b!899183 m!835737))

(assert (=> b!899183 m!835729))

(assert (=> b!899183 m!835737))

(assert (=> b!899183 m!835729))

(assert (=> b!899183 m!835739))

(assert (=> b!899121 d!111395))

(declare-fun d!111397 () Bool)

(assert (=> d!111397 (= (validMask!0 (mask!26172 thiss!1181)) (and (or (= (mask!26172 thiss!1181) #b00000000000000000000000000000111) (= (mask!26172 thiss!1181) #b00000000000000000000000000001111) (= (mask!26172 thiss!1181) #b00000000000000000000000000011111) (= (mask!26172 thiss!1181) #b00000000000000000000000000111111) (= (mask!26172 thiss!1181) #b00000000000000000000000001111111) (= (mask!26172 thiss!1181) #b00000000000000000000000011111111) (= (mask!26172 thiss!1181) #b00000000000000000000000111111111) (= (mask!26172 thiss!1181) #b00000000000000000000001111111111) (= (mask!26172 thiss!1181) #b00000000000000000000011111111111) (= (mask!26172 thiss!1181) #b00000000000000000000111111111111) (= (mask!26172 thiss!1181) #b00000000000000000001111111111111) (= (mask!26172 thiss!1181) #b00000000000000000011111111111111) (= (mask!26172 thiss!1181) #b00000000000000000111111111111111) (= (mask!26172 thiss!1181) #b00000000000000001111111111111111) (= (mask!26172 thiss!1181) #b00000000000000011111111111111111) (= (mask!26172 thiss!1181) #b00000000000000111111111111111111) (= (mask!26172 thiss!1181) #b00000000000001111111111111111111) (= (mask!26172 thiss!1181) #b00000000000011111111111111111111) (= (mask!26172 thiss!1181) #b00000000000111111111111111111111) (= (mask!26172 thiss!1181) #b00000000001111111111111111111111) (= (mask!26172 thiss!1181) #b00000000011111111111111111111111) (= (mask!26172 thiss!1181) #b00000000111111111111111111111111) (= (mask!26172 thiss!1181) #b00000001111111111111111111111111) (= (mask!26172 thiss!1181) #b00000011111111111111111111111111) (= (mask!26172 thiss!1181) #b00000111111111111111111111111111) (= (mask!26172 thiss!1181) #b00001111111111111111111111111111) (= (mask!26172 thiss!1181) #b00011111111111111111111111111111) (= (mask!26172 thiss!1181) #b00111111111111111111111111111111)) (bvsle (mask!26172 thiss!1181) #b00111111111111111111111111111111)))))

(assert (=> b!899121 d!111397))

(declare-fun d!111399 () Bool)

(declare-fun res!607583 () Bool)

(declare-fun e!503153 () Bool)

(assert (=> d!111399 (=> res!607583 e!503153)))

(assert (=> d!111399 (= res!607583 (= (select (arr!25342 (_keys!10210 thiss!1181)) #b00000000000000000000000000000000) key!785))))

(assert (=> d!111399 (= (arrayContainsKey!0 (_keys!10210 thiss!1181) key!785 #b00000000000000000000000000000000) e!503153)))

(declare-fun b!899188 () Bool)

(declare-fun e!503154 () Bool)

(assert (=> b!899188 (= e!503153 e!503154)))

(declare-fun res!607584 () Bool)

(assert (=> b!899188 (=> (not res!607584) (not e!503154))))

(assert (=> b!899188 (= res!607584 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25800 (_keys!10210 thiss!1181))))))

(declare-fun b!899189 () Bool)

(assert (=> b!899189 (= e!503154 (arrayContainsKey!0 (_keys!10210 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!111399 (not res!607583)) b!899188))

(assert (= (and b!899188 res!607584) b!899189))

(declare-fun m!835803 () Bool)

(assert (=> d!111399 m!835803))

(declare-fun m!835805 () Bool)

(assert (=> b!899189 m!835805))

(assert (=> b!899121 d!111399))

(declare-fun b!899232 () Bool)

(declare-fun e!503184 () Bool)

(declare-fun call!39941 () Bool)

(assert (=> b!899232 (= e!503184 (not call!39941))))

(declare-fun b!899233 () Bool)

(declare-fun e!503192 () Bool)

(declare-fun lt!406144 () ListLongMap!10773)

(declare-fun apply!412 (ListLongMap!10773 (_ BitVec 64)) V!29441)

(assert (=> b!899233 (= e!503192 (= (apply!412 lt!406144 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5251 thiss!1181)))))

(declare-fun bm!39934 () Bool)

(declare-fun call!39938 () ListLongMap!10773)

(declare-fun getCurrentListMapNoExtraKeys!3296 (array!52742 array!52744 (_ BitVec 32) (_ BitVec 32) V!29441 V!29441 (_ BitVec 32) Int) ListLongMap!10773)

(assert (=> bm!39934 (= call!39938 (getCurrentListMapNoExtraKeys!3296 (_keys!10210 thiss!1181) (_values!5438 thiss!1181) (mask!26172 thiss!1181) (extraKeys!5147 thiss!1181) (zeroValue!5251 thiss!1181) (minValue!5251 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5427 thiss!1181)))))

(declare-fun b!899234 () Bool)

(declare-fun e!503186 () ListLongMap!10773)

(declare-fun call!39940 () ListLongMap!10773)

(assert (=> b!899234 (= e!503186 call!39940)))

(declare-fun b!899235 () Bool)

(declare-fun e!503187 () Bool)

(assert (=> b!899235 (= e!503187 (= (apply!412 lt!406144 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5251 thiss!1181)))))

(declare-fun bm!39935 () Bool)

(declare-fun call!39937 () ListLongMap!10773)

(assert (=> bm!39935 (= call!39937 call!39938)))

(declare-fun b!899236 () Bool)

(declare-fun call!39942 () ListLongMap!10773)

(assert (=> b!899236 (= e!503186 call!39942)))

(declare-fun bm!39936 () Bool)

(declare-fun call!39939 () Bool)

(assert (=> bm!39936 (= call!39939 (contains!4405 lt!406144 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!899237 () Bool)

(declare-fun e!503190 () Bool)

(assert (=> b!899237 (= e!503190 (not call!39939))))

(declare-fun b!899238 () Bool)

(declare-fun e!503193 () Unit!30527)

(declare-fun lt!406140 () Unit!30527)

(assert (=> b!899238 (= e!503193 lt!406140)))

(declare-fun lt!406138 () ListLongMap!10773)

(assert (=> b!899238 (= lt!406138 (getCurrentListMapNoExtraKeys!3296 (_keys!10210 thiss!1181) (_values!5438 thiss!1181) (mask!26172 thiss!1181) (extraKeys!5147 thiss!1181) (zeroValue!5251 thiss!1181) (minValue!5251 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5427 thiss!1181)))))

(declare-fun lt!406150 () (_ BitVec 64))

(assert (=> b!899238 (= lt!406150 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!406139 () (_ BitVec 64))

(assert (=> b!899238 (= lt!406139 (select (arr!25342 (_keys!10210 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!406145 () Unit!30527)

(declare-fun addStillContains!334 (ListLongMap!10773 (_ BitVec 64) V!29441 (_ BitVec 64)) Unit!30527)

(assert (=> b!899238 (= lt!406145 (addStillContains!334 lt!406138 lt!406150 (zeroValue!5251 thiss!1181) lt!406139))))

(declare-fun +!2548 (ListLongMap!10773 tuple2!12062) ListLongMap!10773)

(assert (=> b!899238 (contains!4405 (+!2548 lt!406138 (tuple2!12063 lt!406150 (zeroValue!5251 thiss!1181))) lt!406139)))

(declare-fun lt!406141 () Unit!30527)

(assert (=> b!899238 (= lt!406141 lt!406145)))

(declare-fun lt!406151 () ListLongMap!10773)

(assert (=> b!899238 (= lt!406151 (getCurrentListMapNoExtraKeys!3296 (_keys!10210 thiss!1181) (_values!5438 thiss!1181) (mask!26172 thiss!1181) (extraKeys!5147 thiss!1181) (zeroValue!5251 thiss!1181) (minValue!5251 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5427 thiss!1181)))))

(declare-fun lt!406143 () (_ BitVec 64))

(assert (=> b!899238 (= lt!406143 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!406148 () (_ BitVec 64))

(assert (=> b!899238 (= lt!406148 (select (arr!25342 (_keys!10210 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!406147 () Unit!30527)

(declare-fun addApplyDifferent!334 (ListLongMap!10773 (_ BitVec 64) V!29441 (_ BitVec 64)) Unit!30527)

(assert (=> b!899238 (= lt!406147 (addApplyDifferent!334 lt!406151 lt!406143 (minValue!5251 thiss!1181) lt!406148))))

(assert (=> b!899238 (= (apply!412 (+!2548 lt!406151 (tuple2!12063 lt!406143 (minValue!5251 thiss!1181))) lt!406148) (apply!412 lt!406151 lt!406148))))

(declare-fun lt!406136 () Unit!30527)

(assert (=> b!899238 (= lt!406136 lt!406147)))

(declare-fun lt!406146 () ListLongMap!10773)

(assert (=> b!899238 (= lt!406146 (getCurrentListMapNoExtraKeys!3296 (_keys!10210 thiss!1181) (_values!5438 thiss!1181) (mask!26172 thiss!1181) (extraKeys!5147 thiss!1181) (zeroValue!5251 thiss!1181) (minValue!5251 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5427 thiss!1181)))))

(declare-fun lt!406156 () (_ BitVec 64))

(assert (=> b!899238 (= lt!406156 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!406154 () (_ BitVec 64))

(assert (=> b!899238 (= lt!406154 (select (arr!25342 (_keys!10210 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!406149 () Unit!30527)

(assert (=> b!899238 (= lt!406149 (addApplyDifferent!334 lt!406146 lt!406156 (zeroValue!5251 thiss!1181) lt!406154))))

(assert (=> b!899238 (= (apply!412 (+!2548 lt!406146 (tuple2!12063 lt!406156 (zeroValue!5251 thiss!1181))) lt!406154) (apply!412 lt!406146 lt!406154))))

(declare-fun lt!406153 () Unit!30527)

(assert (=> b!899238 (= lt!406153 lt!406149)))

(declare-fun lt!406135 () ListLongMap!10773)

(assert (=> b!899238 (= lt!406135 (getCurrentListMapNoExtraKeys!3296 (_keys!10210 thiss!1181) (_values!5438 thiss!1181) (mask!26172 thiss!1181) (extraKeys!5147 thiss!1181) (zeroValue!5251 thiss!1181) (minValue!5251 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5427 thiss!1181)))))

(declare-fun lt!406142 () (_ BitVec 64))

(assert (=> b!899238 (= lt!406142 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!406152 () (_ BitVec 64))

(assert (=> b!899238 (= lt!406152 (select (arr!25342 (_keys!10210 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!899238 (= lt!406140 (addApplyDifferent!334 lt!406135 lt!406142 (minValue!5251 thiss!1181) lt!406152))))

(assert (=> b!899238 (= (apply!412 (+!2548 lt!406135 (tuple2!12063 lt!406142 (minValue!5251 thiss!1181))) lt!406152) (apply!412 lt!406135 lt!406152))))

(declare-fun b!899239 () Bool)

(declare-fun e!503181 () ListLongMap!10773)

(assert (=> b!899239 (= e!503181 call!39942)))

(declare-fun b!899240 () Bool)

(assert (=> b!899240 (= e!503190 e!503192)))

(declare-fun res!607610 () Bool)

(assert (=> b!899240 (= res!607610 call!39939)))

(assert (=> b!899240 (=> (not res!607610) (not e!503192))))

(declare-fun b!899241 () Bool)

(declare-fun e!503185 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!899241 (= e!503185 (validKeyInArray!0 (select (arr!25342 (_keys!10210 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!899242 () Bool)

(declare-fun e!503188 () Bool)

(assert (=> b!899242 (= e!503188 e!503184)))

(declare-fun c!95058 () Bool)

(assert (=> b!899242 (= c!95058 (not (= (bvand (extraKeys!5147 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!899243 () Bool)

(declare-fun Unit!30531 () Unit!30527)

(assert (=> b!899243 (= e!503193 Unit!30531)))

(declare-fun b!899244 () Bool)

(declare-fun res!607607 () Bool)

(assert (=> b!899244 (=> (not res!607607) (not e!503188))))

(assert (=> b!899244 (= res!607607 e!503190)))

(declare-fun c!95054 () Bool)

(assert (=> b!899244 (= c!95054 (not (= (bvand (extraKeys!5147 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!899245 () Bool)

(declare-fun e!503183 () Bool)

(assert (=> b!899245 (= e!503183 (validKeyInArray!0 (select (arr!25342 (_keys!10210 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!899246 () Bool)

(declare-fun res!607611 () Bool)

(assert (=> b!899246 (=> (not res!607611) (not e!503188))))

(declare-fun e!503191 () Bool)

(assert (=> b!899246 (= res!607611 e!503191)))

(declare-fun res!607608 () Bool)

(assert (=> b!899246 (=> res!607608 e!503191)))

(assert (=> b!899246 (= res!607608 (not e!503185))))

(declare-fun res!607604 () Bool)

(assert (=> b!899246 (=> (not res!607604) (not e!503185))))

(assert (=> b!899246 (= res!607604 (bvslt #b00000000000000000000000000000000 (size!25800 (_keys!10210 thiss!1181))))))

(declare-fun b!899247 () Bool)

(assert (=> b!899247 (= e!503184 e!503187)))

(declare-fun res!607603 () Bool)

(assert (=> b!899247 (= res!607603 call!39941)))

(assert (=> b!899247 (=> (not res!607603) (not e!503187))))

(declare-fun d!111401 () Bool)

(assert (=> d!111401 e!503188))

(declare-fun res!607605 () Bool)

(assert (=> d!111401 (=> (not res!607605) (not e!503188))))

(assert (=> d!111401 (= res!607605 (or (bvsge #b00000000000000000000000000000000 (size!25800 (_keys!10210 thiss!1181))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25800 (_keys!10210 thiss!1181))))))))

(declare-fun lt!406155 () ListLongMap!10773)

(assert (=> d!111401 (= lt!406144 lt!406155)))

(declare-fun lt!406137 () Unit!30527)

(assert (=> d!111401 (= lt!406137 e!503193)))

(declare-fun c!95055 () Bool)

(assert (=> d!111401 (= c!95055 e!503183)))

(declare-fun res!607606 () Bool)

(assert (=> d!111401 (=> (not res!607606) (not e!503183))))

(assert (=> d!111401 (= res!607606 (bvslt #b00000000000000000000000000000000 (size!25800 (_keys!10210 thiss!1181))))))

(declare-fun e!503182 () ListLongMap!10773)

(assert (=> d!111401 (= lt!406155 e!503182)))

(declare-fun c!95053 () Bool)

(assert (=> d!111401 (= c!95053 (and (not (= (bvand (extraKeys!5147 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5147 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!111401 (validMask!0 (mask!26172 thiss!1181))))

(assert (=> d!111401 (= (getCurrentListMap!2645 (_keys!10210 thiss!1181) (_values!5438 thiss!1181) (mask!26172 thiss!1181) (extraKeys!5147 thiss!1181) (zeroValue!5251 thiss!1181) (minValue!5251 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5427 thiss!1181)) lt!406144)))

(declare-fun b!899248 () Bool)

(assert (=> b!899248 (= e!503182 e!503181)))

(declare-fun c!95057 () Bool)

(assert (=> b!899248 (= c!95057 (and (not (= (bvand (extraKeys!5147 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5147 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!39937 () Bool)

(assert (=> bm!39937 (= call!39941 (contains!4405 lt!406144 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!899249 () Bool)

(declare-fun e!503189 () Bool)

(assert (=> b!899249 (= e!503191 e!503189)))

(declare-fun res!607609 () Bool)

(assert (=> b!899249 (=> (not res!607609) (not e!503189))))

(assert (=> b!899249 (= res!607609 (contains!4405 lt!406144 (select (arr!25342 (_keys!10210 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> b!899249 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25800 (_keys!10210 thiss!1181))))))

(declare-fun bm!39938 () Bool)

(declare-fun call!39943 () ListLongMap!10773)

(assert (=> bm!39938 (= call!39943 (+!2548 (ite c!95053 call!39938 (ite c!95057 call!39937 call!39940)) (ite (or c!95053 c!95057) (tuple2!12063 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5251 thiss!1181)) (tuple2!12063 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5251 thiss!1181)))))))

(declare-fun bm!39939 () Bool)

(assert (=> bm!39939 (= call!39940 call!39937)))

(declare-fun b!899250 () Bool)

(declare-fun c!95056 () Bool)

(assert (=> b!899250 (= c!95056 (and (not (= (bvand (extraKeys!5147 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5147 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!899250 (= e!503181 e!503186)))

(declare-fun bm!39940 () Bool)

(assert (=> bm!39940 (= call!39942 call!39943)))

(declare-fun b!899251 () Bool)

(assert (=> b!899251 (= e!503182 (+!2548 call!39943 (tuple2!12063 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5251 thiss!1181))))))

(declare-fun b!899252 () Bool)

(declare-fun get!13339 (ValueCell!8697 V!29441) V!29441)

(declare-fun dynLambda!1307 (Int (_ BitVec 64)) V!29441)

(assert (=> b!899252 (= e!503189 (= (apply!412 lt!406144 (select (arr!25342 (_keys!10210 thiss!1181)) #b00000000000000000000000000000000)) (get!13339 (select (arr!25343 (_values!5438 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1307 (defaultEntry!5427 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!899252 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25801 (_values!5438 thiss!1181))))))

(assert (=> b!899252 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25800 (_keys!10210 thiss!1181))))))

(assert (= (and d!111401 c!95053) b!899251))

(assert (= (and d!111401 (not c!95053)) b!899248))

(assert (= (and b!899248 c!95057) b!899239))

(assert (= (and b!899248 (not c!95057)) b!899250))

(assert (= (and b!899250 c!95056) b!899236))

(assert (= (and b!899250 (not c!95056)) b!899234))

(assert (= (or b!899236 b!899234) bm!39939))

(assert (= (or b!899239 bm!39939) bm!39935))

(assert (= (or b!899239 b!899236) bm!39940))

(assert (= (or b!899251 bm!39935) bm!39934))

(assert (= (or b!899251 bm!39940) bm!39938))

(assert (= (and d!111401 res!607606) b!899245))

(assert (= (and d!111401 c!95055) b!899238))

(assert (= (and d!111401 (not c!95055)) b!899243))

(assert (= (and d!111401 res!607605) b!899246))

(assert (= (and b!899246 res!607604) b!899241))

(assert (= (and b!899246 (not res!607608)) b!899249))

(assert (= (and b!899249 res!607609) b!899252))

(assert (= (and b!899246 res!607611) b!899244))

(assert (= (and b!899244 c!95054) b!899240))

(assert (= (and b!899244 (not c!95054)) b!899237))

(assert (= (and b!899240 res!607610) b!899233))

(assert (= (or b!899240 b!899237) bm!39936))

(assert (= (and b!899244 res!607607) b!899242))

(assert (= (and b!899242 c!95058) b!899247))

(assert (= (and b!899242 (not c!95058)) b!899232))

(assert (= (and b!899247 res!607603) b!899235))

(assert (= (or b!899247 b!899232) bm!39937))

(declare-fun b_lambda!13017 () Bool)

(assert (=> (not b_lambda!13017) (not b!899252)))

(declare-fun t!25278 () Bool)

(declare-fun tb!5205 () Bool)

(assert (=> (and b!899118 (= (defaultEntry!5427 thiss!1181) (defaultEntry!5427 thiss!1181)) t!25278) tb!5205))

(declare-fun result!10171 () Bool)

(assert (=> tb!5205 (= result!10171 tp_is_empty!18357)))

(assert (=> b!899252 t!25278))

(declare-fun b_and!26357 () Bool)

(assert (= b_and!26353 (and (=> t!25278 result!10171) b_and!26357)))

(declare-fun m!835807 () Bool)

(assert (=> b!899252 m!835807))

(declare-fun m!835809 () Bool)

(assert (=> b!899252 m!835809))

(assert (=> b!899252 m!835807))

(declare-fun m!835811 () Bool)

(assert (=> b!899252 m!835811))

(assert (=> b!899252 m!835809))

(assert (=> b!899252 m!835803))

(declare-fun m!835813 () Bool)

(assert (=> b!899252 m!835813))

(assert (=> b!899252 m!835803))

(declare-fun m!835815 () Bool)

(assert (=> b!899235 m!835815))

(assert (=> b!899249 m!835803))

(assert (=> b!899249 m!835803))

(declare-fun m!835817 () Bool)

(assert (=> b!899249 m!835817))

(assert (=> b!899241 m!835803))

(assert (=> b!899241 m!835803))

(declare-fun m!835819 () Bool)

(assert (=> b!899241 m!835819))

(assert (=> b!899245 m!835803))

(assert (=> b!899245 m!835803))

(assert (=> b!899245 m!835819))

(declare-fun m!835821 () Bool)

(assert (=> bm!39936 m!835821))

(declare-fun m!835823 () Bool)

(assert (=> b!899233 m!835823))

(declare-fun m!835825 () Bool)

(assert (=> b!899251 m!835825))

(assert (=> d!111401 m!835735))

(declare-fun m!835827 () Bool)

(assert (=> bm!39934 m!835827))

(declare-fun m!835829 () Bool)

(assert (=> bm!39937 m!835829))

(declare-fun m!835831 () Bool)

(assert (=> b!899238 m!835831))

(declare-fun m!835833 () Bool)

(assert (=> b!899238 m!835833))

(declare-fun m!835835 () Bool)

(assert (=> b!899238 m!835835))

(assert (=> b!899238 m!835803))

(declare-fun m!835837 () Bool)

(assert (=> b!899238 m!835837))

(declare-fun m!835839 () Bool)

(assert (=> b!899238 m!835839))

(assert (=> b!899238 m!835833))

(declare-fun m!835841 () Bool)

(assert (=> b!899238 m!835841))

(declare-fun m!835843 () Bool)

(assert (=> b!899238 m!835843))

(declare-fun m!835845 () Bool)

(assert (=> b!899238 m!835845))

(declare-fun m!835847 () Bool)

(assert (=> b!899238 m!835847))

(declare-fun m!835849 () Bool)

(assert (=> b!899238 m!835849))

(assert (=> b!899238 m!835827))

(declare-fun m!835851 () Bool)

(assert (=> b!899238 m!835851))

(declare-fun m!835853 () Bool)

(assert (=> b!899238 m!835853))

(declare-fun m!835855 () Bool)

(assert (=> b!899238 m!835855))

(assert (=> b!899238 m!835843))

(assert (=> b!899238 m!835839))

(declare-fun m!835857 () Bool)

(assert (=> b!899238 m!835857))

(assert (=> b!899238 m!835851))

(declare-fun m!835859 () Bool)

(assert (=> b!899238 m!835859))

(declare-fun m!835861 () Bool)

(assert (=> bm!39938 m!835861))

(assert (=> b!899121 d!111401))

(declare-fun d!111403 () Bool)

(declare-fun e!503198 () Bool)

(assert (=> d!111403 e!503198))

(declare-fun res!607614 () Bool)

(assert (=> d!111403 (=> res!607614 e!503198)))

(declare-fun lt!406165 () Bool)

(assert (=> d!111403 (= res!607614 (not lt!406165))))

(declare-fun lt!406168 () Bool)

(assert (=> d!111403 (= lt!406165 lt!406168)))

(declare-fun lt!406166 () Unit!30527)

(declare-fun e!503199 () Unit!30527)

(assert (=> d!111403 (= lt!406166 e!503199)))

(declare-fun c!95061 () Bool)

(assert (=> d!111403 (= c!95061 lt!406168)))

(declare-fun containsKey!428 (List!17922 (_ BitVec 64)) Bool)

(assert (=> d!111403 (= lt!406168 (containsKey!428 (toList!5402 (getCurrentListMap!2645 (_keys!10210 thiss!1181) (_values!5438 thiss!1181) (mask!26172 thiss!1181) (extraKeys!5147 thiss!1181) (zeroValue!5251 thiss!1181) (minValue!5251 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5427 thiss!1181))) (select (arr!25342 (_keys!10210 thiss!1181)) (index!38043 lt!406054))))))

(assert (=> d!111403 (= (contains!4405 (getCurrentListMap!2645 (_keys!10210 thiss!1181) (_values!5438 thiss!1181) (mask!26172 thiss!1181) (extraKeys!5147 thiss!1181) (zeroValue!5251 thiss!1181) (minValue!5251 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5427 thiss!1181)) (select (arr!25342 (_keys!10210 thiss!1181)) (index!38043 lt!406054))) lt!406165)))

(declare-fun b!899261 () Bool)

(declare-fun lt!406167 () Unit!30527)

(assert (=> b!899261 (= e!503199 lt!406167)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!323 (List!17922 (_ BitVec 64)) Unit!30527)

(assert (=> b!899261 (= lt!406167 (lemmaContainsKeyImpliesGetValueByKeyDefined!323 (toList!5402 (getCurrentListMap!2645 (_keys!10210 thiss!1181) (_values!5438 thiss!1181) (mask!26172 thiss!1181) (extraKeys!5147 thiss!1181) (zeroValue!5251 thiss!1181) (minValue!5251 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5427 thiss!1181))) (select (arr!25342 (_keys!10210 thiss!1181)) (index!38043 lt!406054))))))

(declare-datatypes ((Option!464 0))(
  ( (Some!463 (v!11721 V!29441)) (None!462) )
))
(declare-fun isDefined!333 (Option!464) Bool)

(declare-fun getValueByKey!458 (List!17922 (_ BitVec 64)) Option!464)

(assert (=> b!899261 (isDefined!333 (getValueByKey!458 (toList!5402 (getCurrentListMap!2645 (_keys!10210 thiss!1181) (_values!5438 thiss!1181) (mask!26172 thiss!1181) (extraKeys!5147 thiss!1181) (zeroValue!5251 thiss!1181) (minValue!5251 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5427 thiss!1181))) (select (arr!25342 (_keys!10210 thiss!1181)) (index!38043 lt!406054))))))

(declare-fun b!899262 () Bool)

(declare-fun Unit!30532 () Unit!30527)

(assert (=> b!899262 (= e!503199 Unit!30532)))

(declare-fun b!899263 () Bool)

(assert (=> b!899263 (= e!503198 (isDefined!333 (getValueByKey!458 (toList!5402 (getCurrentListMap!2645 (_keys!10210 thiss!1181) (_values!5438 thiss!1181) (mask!26172 thiss!1181) (extraKeys!5147 thiss!1181) (zeroValue!5251 thiss!1181) (minValue!5251 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5427 thiss!1181))) (select (arr!25342 (_keys!10210 thiss!1181)) (index!38043 lt!406054)))))))

(assert (= (and d!111403 c!95061) b!899261))

(assert (= (and d!111403 (not c!95061)) b!899262))

(assert (= (and d!111403 (not res!607614)) b!899263))

(assert (=> d!111403 m!835729))

(declare-fun m!835863 () Bool)

(assert (=> d!111403 m!835863))

(assert (=> b!899261 m!835729))

(declare-fun m!835865 () Bool)

(assert (=> b!899261 m!835865))

(assert (=> b!899261 m!835729))

(declare-fun m!835867 () Bool)

(assert (=> b!899261 m!835867))

(assert (=> b!899261 m!835867))

(declare-fun m!835869 () Bool)

(assert (=> b!899261 m!835869))

(assert (=> b!899263 m!835729))

(assert (=> b!899263 m!835867))

(assert (=> b!899263 m!835867))

(assert (=> b!899263 m!835869))

(assert (=> b!899121 d!111403))

(declare-fun mapIsEmpty!29204 () Bool)

(declare-fun mapRes!29204 () Bool)

(assert (=> mapIsEmpty!29204 mapRes!29204))

(declare-fun mapNonEmpty!29204 () Bool)

(declare-fun tp!56174 () Bool)

(declare-fun e!503204 () Bool)

(assert (=> mapNonEmpty!29204 (= mapRes!29204 (and tp!56174 e!503204))))

(declare-fun mapValue!29204 () ValueCell!8697)

(declare-fun mapRest!29204 () (Array (_ BitVec 32) ValueCell!8697))

(declare-fun mapKey!29204 () (_ BitVec 32))

(assert (=> mapNonEmpty!29204 (= mapRest!29198 (store mapRest!29204 mapKey!29204 mapValue!29204))))

(declare-fun b!899271 () Bool)

(declare-fun e!503205 () Bool)

(assert (=> b!899271 (= e!503205 tp_is_empty!18357)))

(declare-fun b!899270 () Bool)

(assert (=> b!899270 (= e!503204 tp_is_empty!18357)))

(declare-fun condMapEmpty!29204 () Bool)

(declare-fun mapDefault!29204 () ValueCell!8697)

(assert (=> mapNonEmpty!29198 (= condMapEmpty!29204 (= mapRest!29198 ((as const (Array (_ BitVec 32) ValueCell!8697)) mapDefault!29204)))))

(assert (=> mapNonEmpty!29198 (= tp!56165 (and e!503205 mapRes!29204))))

(assert (= (and mapNonEmpty!29198 condMapEmpty!29204) mapIsEmpty!29204))

(assert (= (and mapNonEmpty!29198 (not condMapEmpty!29204)) mapNonEmpty!29204))

(assert (= (and mapNonEmpty!29204 ((_ is ValueCellFull!8697) mapValue!29204)) b!899270))

(assert (= (and mapNonEmpty!29198 ((_ is ValueCellFull!8697) mapDefault!29204)) b!899271))

(declare-fun m!835871 () Bool)

(assert (=> mapNonEmpty!29204 m!835871))

(declare-fun b_lambda!13019 () Bool)

(assert (= b_lambda!13017 (or (and b!899118 b_free!16029) b_lambda!13019)))

(check-sat b_and!26357 (not d!111389) (not b!899153) (not d!111401) (not b!899183) (not d!111393) (not b!899179) (not b!899233) (not b!899261) (not b_next!16029) (not bm!39934) tp_is_empty!18357 (not b!899238) (not b_lambda!13019) (not b!899251) (not d!111387) (not mapNonEmpty!29204) (not d!111395) (not b!899241) (not b!899263) (not b!899178) (not bm!39936) (not bm!39937) (not d!111391) (not b!899189) (not b!899245) (not b!899249) (not b!899180) (not bm!39938) (not d!111403) (not b!899171) (not b!899252) (not b!899235))
(check-sat b_and!26357 (not b_next!16029))
