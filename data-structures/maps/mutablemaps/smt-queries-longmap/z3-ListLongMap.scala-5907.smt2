; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!76456 () Bool)

(assert start!76456)

(declare-fun b!896161 () Bool)

(declare-fun b_free!15945 () Bool)

(declare-fun b_next!15945 () Bool)

(assert (=> b!896161 (= b_free!15945 (not b_next!15945))))

(declare-fun tp!55865 () Bool)

(declare-fun b_and!26255 () Bool)

(assert (=> b!896161 (= tp!55865 b_and!26255)))

(declare-fun b!896159 () Bool)

(declare-fun e!500907 () Bool)

(declare-fun tp_is_empty!18273 () Bool)

(assert (=> b!896159 (= e!500907 tp_is_empty!18273)))

(declare-fun b!896160 () Bool)

(declare-datatypes ((array!52546 0))(
  ( (array!52547 (arr!25258 (Array (_ BitVec 32) (_ BitVec 64))) (size!25710 (_ BitVec 32))) )
))
(declare-datatypes ((V!29329 0))(
  ( (V!29330 (val!9187 Int)) )
))
(declare-datatypes ((ValueCell!8655 0))(
  ( (ValueCellFull!8655 (v!11674 V!29329)) (EmptyCell!8655) )
))
(declare-datatypes ((array!52548 0))(
  ( (array!52549 (arr!25259 (Array (_ BitVec 32) ValueCell!8655)) (size!25711 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4326 0))(
  ( (LongMapFixedSize!4327 (defaultEntry!5375 Int) (mask!26003 (_ BitVec 32)) (extraKeys!5075 (_ BitVec 32)) (zeroValue!5179 V!29329) (minValue!5179 V!29329) (_size!2218 (_ BitVec 32)) (_keys!10102 array!52546) (_values!5366 array!52548) (_vacant!2218 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4326)

(declare-fun e!500903 () Bool)

(declare-datatypes ((SeekEntryResult!8882 0))(
  ( (MissingZero!8882 (index!37898 (_ BitVec 32))) (Found!8882 (index!37899 (_ BitVec 32))) (Intermediate!8882 (undefined!9694 Bool) (index!37900 (_ BitVec 32)) (x!76292 (_ BitVec 32))) (Undefined!8882) (MissingVacant!8882 (index!37901 (_ BitVec 32))) )
))
(declare-fun lt!404717 () SeekEntryResult!8882)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!52546 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!896160 (= e!500903 (arrayContainsKey!0 (_keys!10102 thiss!1181) key!785 (index!37899 lt!404717)))))

(declare-fun e!500906 () Bool)

(declare-fun e!500905 () Bool)

(declare-fun array_inv!19802 (array!52546) Bool)

(declare-fun array_inv!19803 (array!52548) Bool)

(assert (=> b!896161 (= e!500905 (and tp!55865 tp_is_empty!18273 (array_inv!19802 (_keys!10102 thiss!1181)) (array_inv!19803 (_values!5366 thiss!1181)) e!500906))))

(declare-fun b!896162 () Bool)

(declare-fun res!606101 () Bool)

(declare-fun e!500910 () Bool)

(assert (=> b!896162 (=> (not res!606101) (not e!500910))))

(assert (=> b!896162 (= res!606101 (not (= key!785 (bvneg key!785))))))

(declare-fun b!896163 () Bool)

(declare-fun e!500908 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!896163 (= e!500908 (inRange!0 (index!37899 lt!404717) (mask!26003 thiss!1181)))))

(declare-fun b!896164 () Bool)

(assert (=> b!896164 (= e!500910 (not e!500903))))

(declare-fun res!606102 () Bool)

(assert (=> b!896164 (=> res!606102 e!500903)))

(get-info :version)

(assert (=> b!896164 (= res!606102 (or (not ((_ is Found!8882) lt!404717)) (bvslt (index!37899 lt!404717) #b00000000000000000000000000000000) (bvsge (index!37899 lt!404717) (size!25710 (_keys!10102 thiss!1181))) (bvsge (size!25710 (_keys!10102 thiss!1181)) #b01111111111111111111111111111111)))))

(assert (=> b!896164 e!500908))

(declare-fun res!606100 () Bool)

(assert (=> b!896164 (=> res!606100 e!500908)))

(assert (=> b!896164 (= res!606100 (not ((_ is Found!8882) lt!404717)))))

(declare-datatypes ((Unit!30449 0))(
  ( (Unit!30450) )
))
(declare-fun lt!404718 () Unit!30449)

(declare-fun lemmaSeekEntryGivesInRangeIndex!74 (array!52546 array!52548 (_ BitVec 32) (_ BitVec 32) V!29329 V!29329 (_ BitVec 64)) Unit!30449)

(assert (=> b!896164 (= lt!404718 (lemmaSeekEntryGivesInRangeIndex!74 (_keys!10102 thiss!1181) (_values!5366 thiss!1181) (mask!26003 thiss!1181) (extraKeys!5075 thiss!1181) (zeroValue!5179 thiss!1181) (minValue!5179 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52546 (_ BitVec 32)) SeekEntryResult!8882)

(assert (=> b!896164 (= lt!404717 (seekEntry!0 key!785 (_keys!10102 thiss!1181) (mask!26003 thiss!1181)))))

(declare-fun b!896165 () Bool)

(declare-fun e!500909 () Bool)

(declare-fun mapRes!29024 () Bool)

(assert (=> b!896165 (= e!500906 (and e!500909 mapRes!29024))))

(declare-fun condMapEmpty!29024 () Bool)

(declare-fun mapDefault!29024 () ValueCell!8655)

(assert (=> b!896165 (= condMapEmpty!29024 (= (arr!25259 (_values!5366 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8655)) mapDefault!29024)))))

(declare-fun res!606103 () Bool)

(assert (=> start!76456 (=> (not res!606103) (not e!500910))))

(declare-fun valid!1658 (LongMapFixedSize!4326) Bool)

(assert (=> start!76456 (= res!606103 (valid!1658 thiss!1181))))

(assert (=> start!76456 e!500910))

(assert (=> start!76456 e!500905))

(assert (=> start!76456 true))

(declare-fun mapIsEmpty!29024 () Bool)

(assert (=> mapIsEmpty!29024 mapRes!29024))

(declare-fun b!896166 () Bool)

(assert (=> b!896166 (= e!500909 tp_is_empty!18273)))

(declare-fun mapNonEmpty!29024 () Bool)

(declare-fun tp!55864 () Bool)

(assert (=> mapNonEmpty!29024 (= mapRes!29024 (and tp!55864 e!500907))))

(declare-fun mapKey!29024 () (_ BitVec 32))

(declare-fun mapRest!29024 () (Array (_ BitVec 32) ValueCell!8655))

(declare-fun mapValue!29024 () ValueCell!8655)

(assert (=> mapNonEmpty!29024 (= (arr!25259 (_values!5366 thiss!1181)) (store mapRest!29024 mapKey!29024 mapValue!29024))))

(assert (= (and start!76456 res!606103) b!896162))

(assert (= (and b!896162 res!606101) b!896164))

(assert (= (and b!896164 (not res!606100)) b!896163))

(assert (= (and b!896164 (not res!606102)) b!896160))

(assert (= (and b!896165 condMapEmpty!29024) mapIsEmpty!29024))

(assert (= (and b!896165 (not condMapEmpty!29024)) mapNonEmpty!29024))

(assert (= (and mapNonEmpty!29024 ((_ is ValueCellFull!8655) mapValue!29024)) b!896159))

(assert (= (and b!896165 ((_ is ValueCellFull!8655) mapDefault!29024)) b!896166))

(assert (= b!896161 b!896165))

(assert (= start!76456 b!896161))

(declare-fun m!833483 () Bool)

(assert (=> mapNonEmpty!29024 m!833483))

(declare-fun m!833485 () Bool)

(assert (=> start!76456 m!833485))

(declare-fun m!833487 () Bool)

(assert (=> b!896161 m!833487))

(declare-fun m!833489 () Bool)

(assert (=> b!896161 m!833489))

(declare-fun m!833491 () Bool)

(assert (=> b!896164 m!833491))

(declare-fun m!833493 () Bool)

(assert (=> b!896164 m!833493))

(declare-fun m!833495 () Bool)

(assert (=> b!896163 m!833495))

(declare-fun m!833497 () Bool)

(assert (=> b!896160 m!833497))

(check-sat tp_is_empty!18273 (not start!76456) (not mapNonEmpty!29024) (not b!896161) (not b!896164) (not b_next!15945) (not b!896160) (not b!896163) b_and!26255)
(check-sat b_and!26255 (not b_next!15945))
(get-model)

(declare-fun d!110815 () Bool)

(assert (=> d!110815 (= (inRange!0 (index!37899 lt!404717) (mask!26003 thiss!1181)) (and (bvsge (index!37899 lt!404717) #b00000000000000000000000000000000) (bvslt (index!37899 lt!404717) (bvadd (mask!26003 thiss!1181) #b00000000000000000000000000000001))))))

(assert (=> b!896163 d!110815))

(declare-fun d!110817 () Bool)

(assert (=> d!110817 (= (array_inv!19802 (_keys!10102 thiss!1181)) (bvsge (size!25710 (_keys!10102 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!896161 d!110817))

(declare-fun d!110819 () Bool)

(assert (=> d!110819 (= (array_inv!19803 (_values!5366 thiss!1181)) (bvsge (size!25711 (_values!5366 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!896161 d!110819))

(declare-fun d!110821 () Bool)

(declare-fun res!606122 () Bool)

(declare-fun e!500937 () Bool)

(assert (=> d!110821 (=> (not res!606122) (not e!500937))))

(declare-fun simpleValid!311 (LongMapFixedSize!4326) Bool)

(assert (=> d!110821 (= res!606122 (simpleValid!311 thiss!1181))))

(assert (=> d!110821 (= (valid!1658 thiss!1181) e!500937)))

(declare-fun b!896197 () Bool)

(declare-fun res!606123 () Bool)

(assert (=> b!896197 (=> (not res!606123) (not e!500937))))

(declare-fun arrayCountValidKeys!0 (array!52546 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!896197 (= res!606123 (= (arrayCountValidKeys!0 (_keys!10102 thiss!1181) #b00000000000000000000000000000000 (size!25710 (_keys!10102 thiss!1181))) (_size!2218 thiss!1181)))))

(declare-fun b!896198 () Bool)

(declare-fun res!606124 () Bool)

(assert (=> b!896198 (=> (not res!606124) (not e!500937))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52546 (_ BitVec 32)) Bool)

(assert (=> b!896198 (= res!606124 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10102 thiss!1181) (mask!26003 thiss!1181)))))

(declare-fun b!896199 () Bool)

(declare-datatypes ((List!17899 0))(
  ( (Nil!17896) (Cons!17895 (h!19033 (_ BitVec 64)) (t!25246 List!17899)) )
))
(declare-fun arrayNoDuplicates!0 (array!52546 (_ BitVec 32) List!17899) Bool)

(assert (=> b!896199 (= e!500937 (arrayNoDuplicates!0 (_keys!10102 thiss!1181) #b00000000000000000000000000000000 Nil!17896))))

(assert (= (and d!110821 res!606122) b!896197))

(assert (= (and b!896197 res!606123) b!896198))

(assert (= (and b!896198 res!606124) b!896199))

(declare-fun m!833515 () Bool)

(assert (=> d!110821 m!833515))

(declare-fun m!833517 () Bool)

(assert (=> b!896197 m!833517))

(declare-fun m!833519 () Bool)

(assert (=> b!896198 m!833519))

(declare-fun m!833521 () Bool)

(assert (=> b!896199 m!833521))

(assert (=> start!76456 d!110821))

(declare-fun d!110823 () Bool)

(declare-fun res!606129 () Bool)

(declare-fun e!500942 () Bool)

(assert (=> d!110823 (=> res!606129 e!500942)))

(assert (=> d!110823 (= res!606129 (= (select (arr!25258 (_keys!10102 thiss!1181)) (index!37899 lt!404717)) key!785))))

(assert (=> d!110823 (= (arrayContainsKey!0 (_keys!10102 thiss!1181) key!785 (index!37899 lt!404717)) e!500942)))

(declare-fun b!896204 () Bool)

(declare-fun e!500943 () Bool)

(assert (=> b!896204 (= e!500942 e!500943)))

(declare-fun res!606130 () Bool)

(assert (=> b!896204 (=> (not res!606130) (not e!500943))))

(assert (=> b!896204 (= res!606130 (bvslt (bvadd (index!37899 lt!404717) #b00000000000000000000000000000001) (size!25710 (_keys!10102 thiss!1181))))))

(declare-fun b!896205 () Bool)

(assert (=> b!896205 (= e!500943 (arrayContainsKey!0 (_keys!10102 thiss!1181) key!785 (bvadd (index!37899 lt!404717) #b00000000000000000000000000000001)))))

(assert (= (and d!110823 (not res!606129)) b!896204))

(assert (= (and b!896204 res!606130) b!896205))

(declare-fun m!833523 () Bool)

(assert (=> d!110823 m!833523))

(declare-fun m!833525 () Bool)

(assert (=> b!896205 m!833525))

(assert (=> b!896160 d!110823))

(declare-fun d!110825 () Bool)

(declare-fun e!500946 () Bool)

(assert (=> d!110825 e!500946))

(declare-fun res!606133 () Bool)

(assert (=> d!110825 (=> res!606133 e!500946)))

(declare-fun lt!404730 () SeekEntryResult!8882)

(assert (=> d!110825 (= res!606133 (not ((_ is Found!8882) lt!404730)))))

(assert (=> d!110825 (= lt!404730 (seekEntry!0 key!785 (_keys!10102 thiss!1181) (mask!26003 thiss!1181)))))

(declare-fun lt!404729 () Unit!30449)

(declare-fun choose!1485 (array!52546 array!52548 (_ BitVec 32) (_ BitVec 32) V!29329 V!29329 (_ BitVec 64)) Unit!30449)

(assert (=> d!110825 (= lt!404729 (choose!1485 (_keys!10102 thiss!1181) (_values!5366 thiss!1181) (mask!26003 thiss!1181) (extraKeys!5075 thiss!1181) (zeroValue!5179 thiss!1181) (minValue!5179 thiss!1181) key!785))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!110825 (validMask!0 (mask!26003 thiss!1181))))

(assert (=> d!110825 (= (lemmaSeekEntryGivesInRangeIndex!74 (_keys!10102 thiss!1181) (_values!5366 thiss!1181) (mask!26003 thiss!1181) (extraKeys!5075 thiss!1181) (zeroValue!5179 thiss!1181) (minValue!5179 thiss!1181) key!785) lt!404729)))

(declare-fun b!896208 () Bool)

(assert (=> b!896208 (= e!500946 (inRange!0 (index!37899 lt!404730) (mask!26003 thiss!1181)))))

(assert (= (and d!110825 (not res!606133)) b!896208))

(assert (=> d!110825 m!833493))

(declare-fun m!833527 () Bool)

(assert (=> d!110825 m!833527))

(declare-fun m!833529 () Bool)

(assert (=> d!110825 m!833529))

(declare-fun m!833531 () Bool)

(assert (=> b!896208 m!833531))

(assert (=> b!896164 d!110825))

(declare-fun b!896221 () Bool)

(declare-fun c!94599 () Bool)

(declare-fun lt!404739 () (_ BitVec 64))

(assert (=> b!896221 (= c!94599 (= lt!404739 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!500955 () SeekEntryResult!8882)

(declare-fun e!500953 () SeekEntryResult!8882)

(assert (=> b!896221 (= e!500955 e!500953)))

(declare-fun b!896222 () Bool)

(declare-fun lt!404741 () SeekEntryResult!8882)

(assert (=> b!896222 (= e!500953 (MissingZero!8882 (index!37900 lt!404741)))))

(declare-fun b!896223 () Bool)

(declare-fun e!500954 () SeekEntryResult!8882)

(assert (=> b!896223 (= e!500954 e!500955)))

(assert (=> b!896223 (= lt!404739 (select (arr!25258 (_keys!10102 thiss!1181)) (index!37900 lt!404741)))))

(declare-fun c!94598 () Bool)

(assert (=> b!896223 (= c!94598 (= lt!404739 key!785))))

(declare-fun d!110827 () Bool)

(declare-fun lt!404740 () SeekEntryResult!8882)

(assert (=> d!110827 (and (or ((_ is MissingVacant!8882) lt!404740) (not ((_ is Found!8882) lt!404740)) (and (bvsge (index!37899 lt!404740) #b00000000000000000000000000000000) (bvslt (index!37899 lt!404740) (size!25710 (_keys!10102 thiss!1181))))) (not ((_ is MissingVacant!8882) lt!404740)) (or (not ((_ is Found!8882) lt!404740)) (= (select (arr!25258 (_keys!10102 thiss!1181)) (index!37899 lt!404740)) key!785)))))

(assert (=> d!110827 (= lt!404740 e!500954)))

(declare-fun c!94600 () Bool)

(assert (=> d!110827 (= c!94600 (and ((_ is Intermediate!8882) lt!404741) (undefined!9694 lt!404741)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52546 (_ BitVec 32)) SeekEntryResult!8882)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!110827 (= lt!404741 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!26003 thiss!1181)) key!785 (_keys!10102 thiss!1181) (mask!26003 thiss!1181)))))

(assert (=> d!110827 (validMask!0 (mask!26003 thiss!1181))))

(assert (=> d!110827 (= (seekEntry!0 key!785 (_keys!10102 thiss!1181) (mask!26003 thiss!1181)) lt!404740)))

(declare-fun b!896224 () Bool)

(assert (=> b!896224 (= e!500955 (Found!8882 (index!37900 lt!404741)))))

(declare-fun b!896225 () Bool)

(assert (=> b!896225 (= e!500954 Undefined!8882)))

(declare-fun b!896226 () Bool)

(declare-fun lt!404742 () SeekEntryResult!8882)

(assert (=> b!896226 (= e!500953 (ite ((_ is MissingVacant!8882) lt!404742) (MissingZero!8882 (index!37901 lt!404742)) lt!404742))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52546 (_ BitVec 32)) SeekEntryResult!8882)

(assert (=> b!896226 (= lt!404742 (seekKeyOrZeroReturnVacant!0 (x!76292 lt!404741) (index!37900 lt!404741) (index!37900 lt!404741) key!785 (_keys!10102 thiss!1181) (mask!26003 thiss!1181)))))

(assert (= (and d!110827 c!94600) b!896225))

(assert (= (and d!110827 (not c!94600)) b!896223))

(assert (= (and b!896223 c!94598) b!896224))

(assert (= (and b!896223 (not c!94598)) b!896221))

(assert (= (and b!896221 c!94599) b!896222))

(assert (= (and b!896221 (not c!94599)) b!896226))

(declare-fun m!833533 () Bool)

(assert (=> b!896223 m!833533))

(declare-fun m!833535 () Bool)

(assert (=> d!110827 m!833535))

(declare-fun m!833537 () Bool)

(assert (=> d!110827 m!833537))

(assert (=> d!110827 m!833537))

(declare-fun m!833539 () Bool)

(assert (=> d!110827 m!833539))

(assert (=> d!110827 m!833529))

(declare-fun m!833541 () Bool)

(assert (=> b!896226 m!833541))

(assert (=> b!896164 d!110827))

(declare-fun b!896233 () Bool)

(declare-fun e!500961 () Bool)

(assert (=> b!896233 (= e!500961 tp_is_empty!18273)))

(declare-fun mapIsEmpty!29030 () Bool)

(declare-fun mapRes!29030 () Bool)

(assert (=> mapIsEmpty!29030 mapRes!29030))

(declare-fun b!896234 () Bool)

(declare-fun e!500960 () Bool)

(assert (=> b!896234 (= e!500960 tp_is_empty!18273)))

(declare-fun condMapEmpty!29030 () Bool)

(declare-fun mapDefault!29030 () ValueCell!8655)

(assert (=> mapNonEmpty!29024 (= condMapEmpty!29030 (= mapRest!29024 ((as const (Array (_ BitVec 32) ValueCell!8655)) mapDefault!29030)))))

(assert (=> mapNonEmpty!29024 (= tp!55864 (and e!500960 mapRes!29030))))

(declare-fun mapNonEmpty!29030 () Bool)

(declare-fun tp!55874 () Bool)

(assert (=> mapNonEmpty!29030 (= mapRes!29030 (and tp!55874 e!500961))))

(declare-fun mapRest!29030 () (Array (_ BitVec 32) ValueCell!8655))

(declare-fun mapValue!29030 () ValueCell!8655)

(declare-fun mapKey!29030 () (_ BitVec 32))

(assert (=> mapNonEmpty!29030 (= mapRest!29024 (store mapRest!29030 mapKey!29030 mapValue!29030))))

(assert (= (and mapNonEmpty!29024 condMapEmpty!29030) mapIsEmpty!29030))

(assert (= (and mapNonEmpty!29024 (not condMapEmpty!29030)) mapNonEmpty!29030))

(assert (= (and mapNonEmpty!29030 ((_ is ValueCellFull!8655) mapValue!29030)) b!896233))

(assert (= (and mapNonEmpty!29024 ((_ is ValueCellFull!8655) mapDefault!29030)) b!896234))

(declare-fun m!833543 () Bool)

(assert (=> mapNonEmpty!29030 m!833543))

(check-sat tp_is_empty!18273 (not b!896197) (not b!896226) (not d!110825) (not d!110821) b_and!26255 (not b!896208) (not mapNonEmpty!29030) (not b!896205) (not d!110827) (not b_next!15945) (not b!896198) (not b!896199))
(check-sat b_and!26255 (not b_next!15945))
