; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!76476 () Bool)

(assert start!76476)

(declare-fun b!896282 () Bool)

(declare-fun b_free!15951 () Bool)

(declare-fun b_next!15951 () Bool)

(assert (=> b!896282 (= b_free!15951 (not b_next!15951))))

(declare-fun tp!55885 () Bool)

(declare-fun b_and!26261 () Bool)

(assert (=> b!896282 (= tp!55885 b_and!26261)))

(declare-fun b!896276 () Bool)

(declare-fun e!501004 () Bool)

(declare-datatypes ((array!52560 0))(
  ( (array!52561 (arr!25264 (Array (_ BitVec 32) (_ BitVec 64))) (size!25716 (_ BitVec 32))) )
))
(declare-datatypes ((V!29337 0))(
  ( (V!29338 (val!9190 Int)) )
))
(declare-datatypes ((ValueCell!8658 0))(
  ( (ValueCellFull!8658 (v!11677 V!29337)) (EmptyCell!8658) )
))
(declare-datatypes ((array!52562 0))(
  ( (array!52563 (arr!25265 (Array (_ BitVec 32) ValueCell!8658)) (size!25717 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4332 0))(
  ( (LongMapFixedSize!4333 (defaultEntry!5378 Int) (mask!26011 (_ BitVec 32)) (extraKeys!5079 (_ BitVec 32)) (zeroValue!5183 V!29337) (minValue!5183 V!29337) (_size!2221 (_ BitVec 32)) (_keys!10107 array!52560) (_values!5370 array!52562) (_vacant!2221 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4332)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!896276 (= e!501004 (validMask!0 (mask!26011 thiss!1181)))))

(declare-fun key!785 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!52560 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!896276 (arrayContainsKey!0 (_keys!10107 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30453 0))(
  ( (Unit!30454) )
))
(declare-fun lt!404760 () Unit!30453)

(declare-datatypes ((SeekEntryResult!8885 0))(
  ( (MissingZero!8885 (index!37910 (_ BitVec 32))) (Found!8885 (index!37911 (_ BitVec 32))) (Intermediate!8885 (undefined!9697 Bool) (index!37912 (_ BitVec 32)) (x!76311 (_ BitVec 32))) (Undefined!8885) (MissingVacant!8885 (index!37913 (_ BitVec 32))) )
))
(declare-fun lt!404759 () SeekEntryResult!8885)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52560 (_ BitVec 64) (_ BitVec 32)) Unit!30453)

(assert (=> b!896276 (= lt!404760 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10107 thiss!1181) key!785 (index!37911 lt!404759)))))

(declare-fun b!896277 () Bool)

(declare-fun e!501003 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!896277 (= e!501003 (inRange!0 (index!37911 lt!404759) (mask!26011 thiss!1181)))))

(declare-fun b!896278 () Bool)

(declare-fun e!501009 () Bool)

(declare-fun tp_is_empty!18279 () Bool)

(assert (=> b!896278 (= e!501009 tp_is_empty!18279)))

(declare-fun mapNonEmpty!29036 () Bool)

(declare-fun mapRes!29036 () Bool)

(declare-fun tp!55886 () Bool)

(declare-fun e!501008 () Bool)

(assert (=> mapNonEmpty!29036 (= mapRes!29036 (and tp!55886 e!501008))))

(declare-fun mapRest!29036 () (Array (_ BitVec 32) ValueCell!8658))

(declare-fun mapKey!29036 () (_ BitVec 32))

(declare-fun mapValue!29036 () ValueCell!8658)

(assert (=> mapNonEmpty!29036 (= (arr!25265 (_values!5370 thiss!1181)) (store mapRest!29036 mapKey!29036 mapValue!29036))))

(declare-fun b!896279 () Bool)

(declare-fun e!501006 () Bool)

(assert (=> b!896279 (= e!501006 (not e!501004))))

(declare-fun res!606156 () Bool)

(assert (=> b!896279 (=> res!606156 e!501004)))

(get-info :version)

(assert (=> b!896279 (= res!606156 (not ((_ is Found!8885) lt!404759)))))

(assert (=> b!896279 e!501003))

(declare-fun res!606155 () Bool)

(assert (=> b!896279 (=> res!606155 e!501003)))

(assert (=> b!896279 (= res!606155 (not ((_ is Found!8885) lt!404759)))))

(declare-fun lt!404758 () Unit!30453)

(declare-fun lemmaSeekEntryGivesInRangeIndex!76 (array!52560 array!52562 (_ BitVec 32) (_ BitVec 32) V!29337 V!29337 (_ BitVec 64)) Unit!30453)

(assert (=> b!896279 (= lt!404758 (lemmaSeekEntryGivesInRangeIndex!76 (_keys!10107 thiss!1181) (_values!5370 thiss!1181) (mask!26011 thiss!1181) (extraKeys!5079 thiss!1181) (zeroValue!5183 thiss!1181) (minValue!5183 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52560 (_ BitVec 32)) SeekEntryResult!8885)

(assert (=> b!896279 (= lt!404759 (seekEntry!0 key!785 (_keys!10107 thiss!1181) (mask!26011 thiss!1181)))))

(declare-fun b!896275 () Bool)

(declare-fun e!501005 () Bool)

(assert (=> b!896275 (= e!501005 (and e!501009 mapRes!29036))))

(declare-fun condMapEmpty!29036 () Bool)

(declare-fun mapDefault!29036 () ValueCell!8658)

(assert (=> b!896275 (= condMapEmpty!29036 (= (arr!25265 (_values!5370 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8658)) mapDefault!29036)))))

(declare-fun res!606154 () Bool)

(assert (=> start!76476 (=> (not res!606154) (not e!501006))))

(declare-fun valid!1659 (LongMapFixedSize!4332) Bool)

(assert (=> start!76476 (= res!606154 (valid!1659 thiss!1181))))

(assert (=> start!76476 e!501006))

(declare-fun e!501007 () Bool)

(assert (=> start!76476 e!501007))

(assert (=> start!76476 true))

(declare-fun b!896280 () Bool)

(assert (=> b!896280 (= e!501008 tp_is_empty!18279)))

(declare-fun b!896281 () Bool)

(declare-fun res!606157 () Bool)

(assert (=> b!896281 (=> (not res!606157) (not e!501006))))

(assert (=> b!896281 (= res!606157 (not (= key!785 (bvneg key!785))))))

(declare-fun array_inv!19804 (array!52560) Bool)

(declare-fun array_inv!19805 (array!52562) Bool)

(assert (=> b!896282 (= e!501007 (and tp!55885 tp_is_empty!18279 (array_inv!19804 (_keys!10107 thiss!1181)) (array_inv!19805 (_values!5370 thiss!1181)) e!501005))))

(declare-fun mapIsEmpty!29036 () Bool)

(assert (=> mapIsEmpty!29036 mapRes!29036))

(assert (= (and start!76476 res!606154) b!896281))

(assert (= (and b!896281 res!606157) b!896279))

(assert (= (and b!896279 (not res!606155)) b!896277))

(assert (= (and b!896279 (not res!606156)) b!896276))

(assert (= (and b!896275 condMapEmpty!29036) mapIsEmpty!29036))

(assert (= (and b!896275 (not condMapEmpty!29036)) mapNonEmpty!29036))

(assert (= (and mapNonEmpty!29036 ((_ is ValueCellFull!8658) mapValue!29036)) b!896280))

(assert (= (and b!896275 ((_ is ValueCellFull!8658) mapDefault!29036)) b!896278))

(assert (= b!896282 b!896275))

(assert (= start!76476 b!896282))

(declare-fun m!833565 () Bool)

(assert (=> b!896282 m!833565))

(declare-fun m!833567 () Bool)

(assert (=> b!896282 m!833567))

(declare-fun m!833569 () Bool)

(assert (=> b!896279 m!833569))

(declare-fun m!833571 () Bool)

(assert (=> b!896279 m!833571))

(declare-fun m!833573 () Bool)

(assert (=> start!76476 m!833573))

(declare-fun m!833575 () Bool)

(assert (=> mapNonEmpty!29036 m!833575))

(declare-fun m!833577 () Bool)

(assert (=> b!896277 m!833577))

(declare-fun m!833579 () Bool)

(assert (=> b!896276 m!833579))

(declare-fun m!833581 () Bool)

(assert (=> b!896276 m!833581))

(declare-fun m!833583 () Bool)

(assert (=> b!896276 m!833583))

(check-sat (not b!896276) (not b!896282) (not mapNonEmpty!29036) tp_is_empty!18279 (not start!76476) (not b_next!15951) (not b!896277) (not b!896279) b_and!26261)
(check-sat b_and!26261 (not b_next!15951))
(get-model)

(declare-fun d!110831 () Bool)

(assert (=> d!110831 (= (validMask!0 (mask!26011 thiss!1181)) (and (or (= (mask!26011 thiss!1181) #b00000000000000000000000000000111) (= (mask!26011 thiss!1181) #b00000000000000000000000000001111) (= (mask!26011 thiss!1181) #b00000000000000000000000000011111) (= (mask!26011 thiss!1181) #b00000000000000000000000000111111) (= (mask!26011 thiss!1181) #b00000000000000000000000001111111) (= (mask!26011 thiss!1181) #b00000000000000000000000011111111) (= (mask!26011 thiss!1181) #b00000000000000000000000111111111) (= (mask!26011 thiss!1181) #b00000000000000000000001111111111) (= (mask!26011 thiss!1181) #b00000000000000000000011111111111) (= (mask!26011 thiss!1181) #b00000000000000000000111111111111) (= (mask!26011 thiss!1181) #b00000000000000000001111111111111) (= (mask!26011 thiss!1181) #b00000000000000000011111111111111) (= (mask!26011 thiss!1181) #b00000000000000000111111111111111) (= (mask!26011 thiss!1181) #b00000000000000001111111111111111) (= (mask!26011 thiss!1181) #b00000000000000011111111111111111) (= (mask!26011 thiss!1181) #b00000000000000111111111111111111) (= (mask!26011 thiss!1181) #b00000000000001111111111111111111) (= (mask!26011 thiss!1181) #b00000000000011111111111111111111) (= (mask!26011 thiss!1181) #b00000000000111111111111111111111) (= (mask!26011 thiss!1181) #b00000000001111111111111111111111) (= (mask!26011 thiss!1181) #b00000000011111111111111111111111) (= (mask!26011 thiss!1181) #b00000000111111111111111111111111) (= (mask!26011 thiss!1181) #b00000001111111111111111111111111) (= (mask!26011 thiss!1181) #b00000011111111111111111111111111) (= (mask!26011 thiss!1181) #b00000111111111111111111111111111) (= (mask!26011 thiss!1181) #b00001111111111111111111111111111) (= (mask!26011 thiss!1181) #b00011111111111111111111111111111) (= (mask!26011 thiss!1181) #b00111111111111111111111111111111)) (bvsle (mask!26011 thiss!1181) #b00111111111111111111111111111111)))))

(assert (=> b!896276 d!110831))

(declare-fun d!110833 () Bool)

(declare-fun res!606174 () Bool)

(declare-fun e!501038 () Bool)

(assert (=> d!110833 (=> res!606174 e!501038)))

(assert (=> d!110833 (= res!606174 (= (select (arr!25264 (_keys!10107 thiss!1181)) #b00000000000000000000000000000000) key!785))))

(assert (=> d!110833 (= (arrayContainsKey!0 (_keys!10107 thiss!1181) key!785 #b00000000000000000000000000000000) e!501038)))

(declare-fun b!896311 () Bool)

(declare-fun e!501039 () Bool)

(assert (=> b!896311 (= e!501038 e!501039)))

(declare-fun res!606175 () Bool)

(assert (=> b!896311 (=> (not res!606175) (not e!501039))))

(assert (=> b!896311 (= res!606175 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25716 (_keys!10107 thiss!1181))))))

(declare-fun b!896312 () Bool)

(assert (=> b!896312 (= e!501039 (arrayContainsKey!0 (_keys!10107 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!110833 (not res!606174)) b!896311))

(assert (= (and b!896311 res!606175) b!896312))

(declare-fun m!833605 () Bool)

(assert (=> d!110833 m!833605))

(declare-fun m!833607 () Bool)

(assert (=> b!896312 m!833607))

(assert (=> b!896276 d!110833))

(declare-fun d!110835 () Bool)

(assert (=> d!110835 (arrayContainsKey!0 (_keys!10107 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!404772 () Unit!30453)

(declare-fun choose!13 (array!52560 (_ BitVec 64) (_ BitVec 32)) Unit!30453)

(assert (=> d!110835 (= lt!404772 (choose!13 (_keys!10107 thiss!1181) key!785 (index!37911 lt!404759)))))

(assert (=> d!110835 (bvsge (index!37911 lt!404759) #b00000000000000000000000000000000)))

(assert (=> d!110835 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10107 thiss!1181) key!785 (index!37911 lt!404759)) lt!404772)))

(declare-fun bs!25158 () Bool)

(assert (= bs!25158 d!110835))

(assert (=> bs!25158 m!833581))

(declare-fun m!833609 () Bool)

(assert (=> bs!25158 m!833609))

(assert (=> b!896276 d!110835))

(declare-fun d!110837 () Bool)

(declare-fun e!501042 () Bool)

(assert (=> d!110837 e!501042))

(declare-fun res!606178 () Bool)

(assert (=> d!110837 (=> res!606178 e!501042)))

(declare-fun lt!404778 () SeekEntryResult!8885)

(assert (=> d!110837 (= res!606178 (not ((_ is Found!8885) lt!404778)))))

(assert (=> d!110837 (= lt!404778 (seekEntry!0 key!785 (_keys!10107 thiss!1181) (mask!26011 thiss!1181)))))

(declare-fun lt!404777 () Unit!30453)

(declare-fun choose!1486 (array!52560 array!52562 (_ BitVec 32) (_ BitVec 32) V!29337 V!29337 (_ BitVec 64)) Unit!30453)

(assert (=> d!110837 (= lt!404777 (choose!1486 (_keys!10107 thiss!1181) (_values!5370 thiss!1181) (mask!26011 thiss!1181) (extraKeys!5079 thiss!1181) (zeroValue!5183 thiss!1181) (minValue!5183 thiss!1181) key!785))))

(assert (=> d!110837 (validMask!0 (mask!26011 thiss!1181))))

(assert (=> d!110837 (= (lemmaSeekEntryGivesInRangeIndex!76 (_keys!10107 thiss!1181) (_values!5370 thiss!1181) (mask!26011 thiss!1181) (extraKeys!5079 thiss!1181) (zeroValue!5183 thiss!1181) (minValue!5183 thiss!1181) key!785) lt!404777)))

(declare-fun b!896315 () Bool)

(assert (=> b!896315 (= e!501042 (inRange!0 (index!37911 lt!404778) (mask!26011 thiss!1181)))))

(assert (= (and d!110837 (not res!606178)) b!896315))

(assert (=> d!110837 m!833571))

(declare-fun m!833611 () Bool)

(assert (=> d!110837 m!833611))

(assert (=> d!110837 m!833579))

(declare-fun m!833613 () Bool)

(assert (=> b!896315 m!833613))

(assert (=> b!896279 d!110837))

(declare-fun b!896328 () Bool)

(declare-fun e!501051 () SeekEntryResult!8885)

(declare-fun e!501050 () SeekEntryResult!8885)

(assert (=> b!896328 (= e!501051 e!501050)))

(declare-fun lt!404789 () (_ BitVec 64))

(declare-fun lt!404788 () SeekEntryResult!8885)

(assert (=> b!896328 (= lt!404789 (select (arr!25264 (_keys!10107 thiss!1181)) (index!37912 lt!404788)))))

(declare-fun c!94609 () Bool)

(assert (=> b!896328 (= c!94609 (= lt!404789 key!785))))

(declare-fun b!896329 () Bool)

(assert (=> b!896329 (= e!501051 Undefined!8885)))

(declare-fun b!896331 () Bool)

(assert (=> b!896331 (= e!501050 (Found!8885 (index!37912 lt!404788)))))

(declare-fun b!896332 () Bool)

(declare-fun c!94607 () Bool)

(assert (=> b!896332 (= c!94607 (= lt!404789 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!501049 () SeekEntryResult!8885)

(assert (=> b!896332 (= e!501050 e!501049)))

(declare-fun b!896333 () Bool)

(declare-fun lt!404787 () SeekEntryResult!8885)

(assert (=> b!896333 (= e!501049 (ite ((_ is MissingVacant!8885) lt!404787) (MissingZero!8885 (index!37913 lt!404787)) lt!404787))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52560 (_ BitVec 32)) SeekEntryResult!8885)

(assert (=> b!896333 (= lt!404787 (seekKeyOrZeroReturnVacant!0 (x!76311 lt!404788) (index!37912 lt!404788) (index!37912 lt!404788) key!785 (_keys!10107 thiss!1181) (mask!26011 thiss!1181)))))

(declare-fun d!110839 () Bool)

(declare-fun lt!404790 () SeekEntryResult!8885)

(assert (=> d!110839 (and (or ((_ is MissingVacant!8885) lt!404790) (not ((_ is Found!8885) lt!404790)) (and (bvsge (index!37911 lt!404790) #b00000000000000000000000000000000) (bvslt (index!37911 lt!404790) (size!25716 (_keys!10107 thiss!1181))))) (not ((_ is MissingVacant!8885) lt!404790)) (or (not ((_ is Found!8885) lt!404790)) (= (select (arr!25264 (_keys!10107 thiss!1181)) (index!37911 lt!404790)) key!785)))))

(assert (=> d!110839 (= lt!404790 e!501051)))

(declare-fun c!94608 () Bool)

(assert (=> d!110839 (= c!94608 (and ((_ is Intermediate!8885) lt!404788) (undefined!9697 lt!404788)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52560 (_ BitVec 32)) SeekEntryResult!8885)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!110839 (= lt!404788 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!26011 thiss!1181)) key!785 (_keys!10107 thiss!1181) (mask!26011 thiss!1181)))))

(assert (=> d!110839 (validMask!0 (mask!26011 thiss!1181))))

(assert (=> d!110839 (= (seekEntry!0 key!785 (_keys!10107 thiss!1181) (mask!26011 thiss!1181)) lt!404790)))

(declare-fun b!896330 () Bool)

(assert (=> b!896330 (= e!501049 (MissingZero!8885 (index!37912 lt!404788)))))

(assert (= (and d!110839 c!94608) b!896329))

(assert (= (and d!110839 (not c!94608)) b!896328))

(assert (= (and b!896328 c!94609) b!896331))

(assert (= (and b!896328 (not c!94609)) b!896332))

(assert (= (and b!896332 c!94607) b!896330))

(assert (= (and b!896332 (not c!94607)) b!896333))

(declare-fun m!833615 () Bool)

(assert (=> b!896328 m!833615))

(declare-fun m!833617 () Bool)

(assert (=> b!896333 m!833617))

(declare-fun m!833619 () Bool)

(assert (=> d!110839 m!833619))

(declare-fun m!833621 () Bool)

(assert (=> d!110839 m!833621))

(assert (=> d!110839 m!833621))

(declare-fun m!833623 () Bool)

(assert (=> d!110839 m!833623))

(assert (=> d!110839 m!833579))

(assert (=> b!896279 d!110839))

(declare-fun d!110841 () Bool)

(declare-fun res!606185 () Bool)

(declare-fun e!501054 () Bool)

(assert (=> d!110841 (=> (not res!606185) (not e!501054))))

(declare-fun simpleValid!312 (LongMapFixedSize!4332) Bool)

(assert (=> d!110841 (= res!606185 (simpleValid!312 thiss!1181))))

(assert (=> d!110841 (= (valid!1659 thiss!1181) e!501054)))

(declare-fun b!896340 () Bool)

(declare-fun res!606186 () Bool)

(assert (=> b!896340 (=> (not res!606186) (not e!501054))))

(declare-fun arrayCountValidKeys!0 (array!52560 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!896340 (= res!606186 (= (arrayCountValidKeys!0 (_keys!10107 thiss!1181) #b00000000000000000000000000000000 (size!25716 (_keys!10107 thiss!1181))) (_size!2221 thiss!1181)))))

(declare-fun b!896341 () Bool)

(declare-fun res!606187 () Bool)

(assert (=> b!896341 (=> (not res!606187) (not e!501054))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52560 (_ BitVec 32)) Bool)

(assert (=> b!896341 (= res!606187 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10107 thiss!1181) (mask!26011 thiss!1181)))))

(declare-fun b!896342 () Bool)

(declare-datatypes ((List!17900 0))(
  ( (Nil!17897) (Cons!17896 (h!19034 (_ BitVec 64)) (t!25247 List!17900)) )
))
(declare-fun arrayNoDuplicates!0 (array!52560 (_ BitVec 32) List!17900) Bool)

(assert (=> b!896342 (= e!501054 (arrayNoDuplicates!0 (_keys!10107 thiss!1181) #b00000000000000000000000000000000 Nil!17897))))

(assert (= (and d!110841 res!606185) b!896340))

(assert (= (and b!896340 res!606186) b!896341))

(assert (= (and b!896341 res!606187) b!896342))

(declare-fun m!833625 () Bool)

(assert (=> d!110841 m!833625))

(declare-fun m!833627 () Bool)

(assert (=> b!896340 m!833627))

(declare-fun m!833629 () Bool)

(assert (=> b!896341 m!833629))

(declare-fun m!833631 () Bool)

(assert (=> b!896342 m!833631))

(assert (=> start!76476 d!110841))

(declare-fun d!110843 () Bool)

(assert (=> d!110843 (= (array_inv!19804 (_keys!10107 thiss!1181)) (bvsge (size!25716 (_keys!10107 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!896282 d!110843))

(declare-fun d!110845 () Bool)

(assert (=> d!110845 (= (array_inv!19805 (_values!5370 thiss!1181)) (bvsge (size!25717 (_values!5370 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!896282 d!110845))

(declare-fun d!110847 () Bool)

(assert (=> d!110847 (= (inRange!0 (index!37911 lt!404759) (mask!26011 thiss!1181)) (and (bvsge (index!37911 lt!404759) #b00000000000000000000000000000000) (bvslt (index!37911 lt!404759) (bvadd (mask!26011 thiss!1181) #b00000000000000000000000000000001))))))

(assert (=> b!896277 d!110847))

(declare-fun b!896350 () Bool)

(declare-fun e!501059 () Bool)

(assert (=> b!896350 (= e!501059 tp_is_empty!18279)))

(declare-fun b!896349 () Bool)

(declare-fun e!501060 () Bool)

(assert (=> b!896349 (= e!501060 tp_is_empty!18279)))

(declare-fun mapIsEmpty!29042 () Bool)

(declare-fun mapRes!29042 () Bool)

(assert (=> mapIsEmpty!29042 mapRes!29042))

(declare-fun condMapEmpty!29042 () Bool)

(declare-fun mapDefault!29042 () ValueCell!8658)

(assert (=> mapNonEmpty!29036 (= condMapEmpty!29042 (= mapRest!29036 ((as const (Array (_ BitVec 32) ValueCell!8658)) mapDefault!29042)))))

(assert (=> mapNonEmpty!29036 (= tp!55886 (and e!501059 mapRes!29042))))

(declare-fun mapNonEmpty!29042 () Bool)

(declare-fun tp!55895 () Bool)

(assert (=> mapNonEmpty!29042 (= mapRes!29042 (and tp!55895 e!501060))))

(declare-fun mapValue!29042 () ValueCell!8658)

(declare-fun mapRest!29042 () (Array (_ BitVec 32) ValueCell!8658))

(declare-fun mapKey!29042 () (_ BitVec 32))

(assert (=> mapNonEmpty!29042 (= mapRest!29036 (store mapRest!29042 mapKey!29042 mapValue!29042))))

(assert (= (and mapNonEmpty!29036 condMapEmpty!29042) mapIsEmpty!29042))

(assert (= (and mapNonEmpty!29036 (not condMapEmpty!29042)) mapNonEmpty!29042))

(assert (= (and mapNonEmpty!29042 ((_ is ValueCellFull!8658) mapValue!29042)) b!896349))

(assert (= (and mapNonEmpty!29036 ((_ is ValueCellFull!8658) mapDefault!29042)) b!896350))

(declare-fun m!833633 () Bool)

(assert (=> mapNonEmpty!29042 m!833633))

(check-sat (not b!896315) (not d!110837) (not b!896333) (not b!896312) (not d!110839) tp_is_empty!18279 (not mapNonEmpty!29042) (not b_next!15951) (not b!896341) b_and!26261 (not b!896340) (not d!110835) (not b!896342) (not d!110841))
(check-sat b_and!26261 (not b_next!15951))
