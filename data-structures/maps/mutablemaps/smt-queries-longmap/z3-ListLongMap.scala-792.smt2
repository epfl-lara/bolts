; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18850 () Bool)

(assert start!18850)

(declare-fun b!186136 () Bool)

(declare-fun b_free!4593 () Bool)

(declare-fun b_next!4593 () Bool)

(assert (=> b!186136 (= b_free!4593 (not b_next!4593))))

(declare-fun tp!16581 () Bool)

(declare-fun b_and!11215 () Bool)

(assert (=> b!186136 (= tp!16581 b_and!11215)))

(declare-fun b!186127 () Bool)

(declare-fun e!122519 () Bool)

(declare-fun e!122513 () Bool)

(assert (=> b!186127 (= e!122519 e!122513)))

(declare-fun res!88065 () Bool)

(assert (=> b!186127 (=> (not res!88065) (not e!122513))))

(declare-datatypes ((SeekEntryResult!652 0))(
  ( (MissingZero!652 (index!4778 (_ BitVec 32))) (Found!652 (index!4779 (_ BitVec 32))) (Intermediate!652 (undefined!1464 Bool) (index!4780 (_ BitVec 32)) (x!20216 (_ BitVec 32))) (Undefined!652) (MissingVacant!652 (index!4781 (_ BitVec 32))) )
))
(declare-fun lt!92068 () SeekEntryResult!652)

(get-info :version)

(assert (=> b!186127 (= res!88065 (and (not ((_ is Undefined!652) lt!92068)) (not ((_ is MissingVacant!652) lt!92068)) (not ((_ is MissingZero!652) lt!92068)) ((_ is Found!652) lt!92068)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!5467 0))(
  ( (V!5468 (val!2227 Int)) )
))
(declare-datatypes ((ValueCell!1839 0))(
  ( (ValueCellFull!1839 (v!4135 V!5467)) (EmptyCell!1839) )
))
(declare-datatypes ((array!7940 0))(
  ( (array!7941 (arr!3748 (Array (_ BitVec 32) (_ BitVec 64))) (size!4064 (_ BitVec 32))) )
))
(declare-datatypes ((array!7942 0))(
  ( (array!7943 (arr!3749 (Array (_ BitVec 32) ValueCell!1839)) (size!4065 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2586 0))(
  ( (LongMapFixedSize!2587 (defaultEntry!3798 Int) (mask!8920 (_ BitVec 32)) (extraKeys!3535 (_ BitVec 32)) (zeroValue!3639 V!5467) (minValue!3639 V!5467) (_size!1342 (_ BitVec 32)) (_keys!5740 array!7940) (_values!3781 array!7942) (_vacant!1342 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2586)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7940 (_ BitVec 32)) SeekEntryResult!652)

(assert (=> b!186127 (= lt!92068 (seekEntryOrOpen!0 key!828 (_keys!5740 thiss!1248) (mask!8920 thiss!1248)))))

(declare-fun b!186128 () Bool)

(declare-fun e!122520 () Bool)

(declare-fun tp_is_empty!4365 () Bool)

(assert (=> b!186128 (= e!122520 tp_is_empty!4365)))

(declare-fun b!186129 () Bool)

(declare-fun e!122516 () Bool)

(assert (=> b!186129 (= e!122516 tp_is_empty!4365)))

(declare-fun b!186130 () Bool)

(declare-fun e!122512 () Bool)

(declare-fun mapRes!7512 () Bool)

(assert (=> b!186130 (= e!122512 (and e!122516 mapRes!7512))))

(declare-fun condMapEmpty!7512 () Bool)

(declare-fun mapDefault!7512 () ValueCell!1839)

(assert (=> b!186130 (= condMapEmpty!7512 (= (arr!3749 (_values!3781 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1839)) mapDefault!7512)))))

(declare-fun b!186131 () Bool)

(declare-datatypes ((Unit!5607 0))(
  ( (Unit!5608) )
))
(declare-fun e!122515 () Unit!5607)

(declare-fun Unit!5609 () Unit!5607)

(assert (=> b!186131 (= e!122515 Unit!5609)))

(declare-fun lt!92065 () Unit!5607)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!145 (array!7940 array!7942 (_ BitVec 32) (_ BitVec 32) V!5467 V!5467 (_ BitVec 64) Int) Unit!5607)

(assert (=> b!186131 (= lt!92065 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!145 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) key!828 (defaultEntry!3798 thiss!1248)))))

(assert (=> b!186131 false))

(declare-fun b!186132 () Bool)

(declare-fun e!122514 () Bool)

(assert (=> b!186132 (= e!122514 (not (= (size!4065 (_values!3781 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8920 thiss!1248)))))))

(declare-fun b!186133 () Bool)

(declare-fun lt!92066 () Unit!5607)

(assert (=> b!186133 (= e!122515 lt!92066)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!145 (array!7940 array!7942 (_ BitVec 32) (_ BitVec 32) V!5467 V!5467 (_ BitVec 64) Int) Unit!5607)

(assert (=> b!186133 (= lt!92066 (lemmaInListMapThenSeekEntryOrOpenFindsIt!145 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) key!828 (defaultEntry!3798 thiss!1248)))))

(declare-fun res!88063 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!186133 (= res!88063 (inRange!0 (index!4779 lt!92068) (mask!8920 thiss!1248)))))

(declare-fun e!122511 () Bool)

(assert (=> b!186133 (=> (not res!88063) (not e!122511))))

(assert (=> b!186133 e!122511))

(declare-fun mapIsEmpty!7512 () Bool)

(assert (=> mapIsEmpty!7512 mapRes!7512))

(declare-fun b!186134 () Bool)

(declare-fun res!88066 () Bool)

(assert (=> b!186134 (=> (not res!88066) (not e!122519))))

(assert (=> b!186134 (= res!88066 (not (= key!828 (bvneg key!828))))))

(declare-fun b!186135 () Bool)

(assert (=> b!186135 (= e!122513 e!122514)))

(declare-fun res!88064 () Bool)

(assert (=> b!186135 (=> (not res!88064) (not e!122514))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!186135 (= res!88064 (validMask!0 (mask!8920 thiss!1248)))))

(declare-fun lt!92067 () Unit!5607)

(assert (=> b!186135 (= lt!92067 e!122515)))

(declare-fun c!33354 () Bool)

(declare-datatypes ((tuple2!3464 0))(
  ( (tuple2!3465 (_1!1742 (_ BitVec 64)) (_2!1742 V!5467)) )
))
(declare-datatypes ((List!2394 0))(
  ( (Nil!2391) (Cons!2390 (h!3023 tuple2!3464) (t!7288 List!2394)) )
))
(declare-datatypes ((ListLongMap!2395 0))(
  ( (ListLongMap!2396 (toList!1213 List!2394)) )
))
(declare-fun contains!1303 (ListLongMap!2395 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!856 (array!7940 array!7942 (_ BitVec 32) (_ BitVec 32) V!5467 V!5467 (_ BitVec 32) Int) ListLongMap!2395)

(assert (=> b!186135 (= c!33354 (contains!1303 (getCurrentListMap!856 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3798 thiss!1248)) key!828))))

(declare-fun mapNonEmpty!7512 () Bool)

(declare-fun tp!16580 () Bool)

(assert (=> mapNonEmpty!7512 (= mapRes!7512 (and tp!16580 e!122520))))

(declare-fun mapKey!7512 () (_ BitVec 32))

(declare-fun mapValue!7512 () ValueCell!1839)

(declare-fun mapRest!7512 () (Array (_ BitVec 32) ValueCell!1839))

(assert (=> mapNonEmpty!7512 (= (arr!3749 (_values!3781 thiss!1248)) (store mapRest!7512 mapKey!7512 mapValue!7512))))

(declare-fun res!88067 () Bool)

(assert (=> start!18850 (=> (not res!88067) (not e!122519))))

(declare-fun valid!1058 (LongMapFixedSize!2586) Bool)

(assert (=> start!18850 (= res!88067 (valid!1058 thiss!1248))))

(assert (=> start!18850 e!122519))

(declare-fun e!122517 () Bool)

(assert (=> start!18850 e!122517))

(assert (=> start!18850 true))

(declare-fun array_inv!2415 (array!7940) Bool)

(declare-fun array_inv!2416 (array!7942) Bool)

(assert (=> b!186136 (= e!122517 (and tp!16581 tp_is_empty!4365 (array_inv!2415 (_keys!5740 thiss!1248)) (array_inv!2416 (_values!3781 thiss!1248)) e!122512))))

(declare-fun b!186137 () Bool)

(assert (=> b!186137 (= e!122511 (= (select (arr!3748 (_keys!5740 thiss!1248)) (index!4779 lt!92068)) key!828))))

(assert (= (and start!18850 res!88067) b!186134))

(assert (= (and b!186134 res!88066) b!186127))

(assert (= (and b!186127 res!88065) b!186135))

(assert (= (and b!186135 c!33354) b!186133))

(assert (= (and b!186135 (not c!33354)) b!186131))

(assert (= (and b!186133 res!88063) b!186137))

(assert (= (and b!186135 res!88064) b!186132))

(assert (= (and b!186130 condMapEmpty!7512) mapIsEmpty!7512))

(assert (= (and b!186130 (not condMapEmpty!7512)) mapNonEmpty!7512))

(assert (= (and mapNonEmpty!7512 ((_ is ValueCellFull!1839) mapValue!7512)) b!186128))

(assert (= (and b!186130 ((_ is ValueCellFull!1839) mapDefault!7512)) b!186129))

(assert (= b!186136 b!186130))

(assert (= start!18850 b!186136))

(declare-fun m!213153 () Bool)

(assert (=> b!186131 m!213153))

(declare-fun m!213155 () Bool)

(assert (=> b!186136 m!213155))

(declare-fun m!213157 () Bool)

(assert (=> b!186136 m!213157))

(declare-fun m!213159 () Bool)

(assert (=> b!186135 m!213159))

(declare-fun m!213161 () Bool)

(assert (=> b!186135 m!213161))

(assert (=> b!186135 m!213161))

(declare-fun m!213163 () Bool)

(assert (=> b!186135 m!213163))

(declare-fun m!213165 () Bool)

(assert (=> b!186127 m!213165))

(declare-fun m!213167 () Bool)

(assert (=> start!18850 m!213167))

(declare-fun m!213169 () Bool)

(assert (=> mapNonEmpty!7512 m!213169))

(declare-fun m!213171 () Bool)

(assert (=> b!186137 m!213171))

(declare-fun m!213173 () Bool)

(assert (=> b!186133 m!213173))

(declare-fun m!213175 () Bool)

(assert (=> b!186133 m!213175))

(check-sat (not b!186135) (not start!18850) (not b!186133) (not b!186131) b_and!11215 (not mapNonEmpty!7512) (not b!186127) tp_is_empty!4365 (not b_next!4593) (not b!186136))
(check-sat b_and!11215 (not b_next!4593))
(get-model)

(declare-fun b!186183 () Bool)

(declare-fun e!122559 () SeekEntryResult!652)

(declare-fun e!122557 () SeekEntryResult!652)

(assert (=> b!186183 (= e!122559 e!122557)))

(declare-fun lt!92088 () (_ BitVec 64))

(declare-fun lt!92089 () SeekEntryResult!652)

(assert (=> b!186183 (= lt!92088 (select (arr!3748 (_keys!5740 thiss!1248)) (index!4780 lt!92089)))))

(declare-fun c!33364 () Bool)

(assert (=> b!186183 (= c!33364 (= lt!92088 key!828))))

(declare-fun b!186184 () Bool)

(declare-fun e!122558 () SeekEntryResult!652)

(assert (=> b!186184 (= e!122558 (MissingZero!652 (index!4780 lt!92089)))))

(declare-fun b!186185 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7940 (_ BitVec 32)) SeekEntryResult!652)

(assert (=> b!186185 (= e!122558 (seekKeyOrZeroReturnVacant!0 (x!20216 lt!92089) (index!4780 lt!92089) (index!4780 lt!92089) key!828 (_keys!5740 thiss!1248) (mask!8920 thiss!1248)))))

(declare-fun b!186186 () Bool)

(assert (=> b!186186 (= e!122557 (Found!652 (index!4780 lt!92089)))))

(declare-fun d!55081 () Bool)

(declare-fun lt!92087 () SeekEntryResult!652)

(assert (=> d!55081 (and (or ((_ is Undefined!652) lt!92087) (not ((_ is Found!652) lt!92087)) (and (bvsge (index!4779 lt!92087) #b00000000000000000000000000000000) (bvslt (index!4779 lt!92087) (size!4064 (_keys!5740 thiss!1248))))) (or ((_ is Undefined!652) lt!92087) ((_ is Found!652) lt!92087) (not ((_ is MissingZero!652) lt!92087)) (and (bvsge (index!4778 lt!92087) #b00000000000000000000000000000000) (bvslt (index!4778 lt!92087) (size!4064 (_keys!5740 thiss!1248))))) (or ((_ is Undefined!652) lt!92087) ((_ is Found!652) lt!92087) ((_ is MissingZero!652) lt!92087) (not ((_ is MissingVacant!652) lt!92087)) (and (bvsge (index!4781 lt!92087) #b00000000000000000000000000000000) (bvslt (index!4781 lt!92087) (size!4064 (_keys!5740 thiss!1248))))) (or ((_ is Undefined!652) lt!92087) (ite ((_ is Found!652) lt!92087) (= (select (arr!3748 (_keys!5740 thiss!1248)) (index!4779 lt!92087)) key!828) (ite ((_ is MissingZero!652) lt!92087) (= (select (arr!3748 (_keys!5740 thiss!1248)) (index!4778 lt!92087)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!652) lt!92087) (= (select (arr!3748 (_keys!5740 thiss!1248)) (index!4781 lt!92087)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!55081 (= lt!92087 e!122559)))

(declare-fun c!33366 () Bool)

(assert (=> d!55081 (= c!33366 (and ((_ is Intermediate!652) lt!92089) (undefined!1464 lt!92089)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7940 (_ BitVec 32)) SeekEntryResult!652)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!55081 (= lt!92089 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8920 thiss!1248)) key!828 (_keys!5740 thiss!1248) (mask!8920 thiss!1248)))))

(assert (=> d!55081 (validMask!0 (mask!8920 thiss!1248))))

(assert (=> d!55081 (= (seekEntryOrOpen!0 key!828 (_keys!5740 thiss!1248) (mask!8920 thiss!1248)) lt!92087)))

(declare-fun b!186187 () Bool)

(assert (=> b!186187 (= e!122559 Undefined!652)))

(declare-fun b!186188 () Bool)

(declare-fun c!33365 () Bool)

(assert (=> b!186188 (= c!33365 (= lt!92088 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!186188 (= e!122557 e!122558)))

(assert (= (and d!55081 c!33366) b!186187))

(assert (= (and d!55081 (not c!33366)) b!186183))

(assert (= (and b!186183 c!33364) b!186186))

(assert (= (and b!186183 (not c!33364)) b!186188))

(assert (= (and b!186188 c!33365) b!186184))

(assert (= (and b!186188 (not c!33365)) b!186185))

(declare-fun m!213201 () Bool)

(assert (=> b!186183 m!213201))

(declare-fun m!213203 () Bool)

(assert (=> b!186185 m!213203))

(assert (=> d!55081 m!213159))

(declare-fun m!213205 () Bool)

(assert (=> d!55081 m!213205))

(declare-fun m!213207 () Bool)

(assert (=> d!55081 m!213207))

(declare-fun m!213209 () Bool)

(assert (=> d!55081 m!213209))

(declare-fun m!213211 () Bool)

(assert (=> d!55081 m!213211))

(declare-fun m!213213 () Bool)

(assert (=> d!55081 m!213213))

(assert (=> d!55081 m!213205))

(assert (=> b!186127 d!55081))

(declare-fun d!55083 () Bool)

(assert (=> d!55083 (= (array_inv!2415 (_keys!5740 thiss!1248)) (bvsge (size!4064 (_keys!5740 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!186136 d!55083))

(declare-fun d!55085 () Bool)

(assert (=> d!55085 (= (array_inv!2416 (_values!3781 thiss!1248)) (bvsge (size!4065 (_values!3781 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!186136 d!55085))

(declare-fun d!55087 () Bool)

(declare-fun e!122562 () Bool)

(assert (=> d!55087 e!122562))

(declare-fun res!88087 () Bool)

(assert (=> d!55087 (=> (not res!88087) (not e!122562))))

(declare-fun lt!92095 () SeekEntryResult!652)

(assert (=> d!55087 (= res!88087 ((_ is Found!652) lt!92095))))

(assert (=> d!55087 (= lt!92095 (seekEntryOrOpen!0 key!828 (_keys!5740 thiss!1248) (mask!8920 thiss!1248)))))

(declare-fun lt!92094 () Unit!5607)

(declare-fun choose!992 (array!7940 array!7942 (_ BitVec 32) (_ BitVec 32) V!5467 V!5467 (_ BitVec 64) Int) Unit!5607)

(assert (=> d!55087 (= lt!92094 (choose!992 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) key!828 (defaultEntry!3798 thiss!1248)))))

(assert (=> d!55087 (validMask!0 (mask!8920 thiss!1248))))

(assert (=> d!55087 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!145 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) key!828 (defaultEntry!3798 thiss!1248)) lt!92094)))

(declare-fun b!186193 () Bool)

(declare-fun res!88088 () Bool)

(assert (=> b!186193 (=> (not res!88088) (not e!122562))))

(assert (=> b!186193 (= res!88088 (inRange!0 (index!4779 lt!92095) (mask!8920 thiss!1248)))))

(declare-fun b!186194 () Bool)

(assert (=> b!186194 (= e!122562 (= (select (arr!3748 (_keys!5740 thiss!1248)) (index!4779 lt!92095)) key!828))))

(assert (=> b!186194 (and (bvsge (index!4779 lt!92095) #b00000000000000000000000000000000) (bvslt (index!4779 lt!92095) (size!4064 (_keys!5740 thiss!1248))))))

(assert (= (and d!55087 res!88087) b!186193))

(assert (= (and b!186193 res!88088) b!186194))

(assert (=> d!55087 m!213165))

(declare-fun m!213215 () Bool)

(assert (=> d!55087 m!213215))

(assert (=> d!55087 m!213159))

(declare-fun m!213217 () Bool)

(assert (=> b!186193 m!213217))

(declare-fun m!213219 () Bool)

(assert (=> b!186194 m!213219))

(assert (=> b!186133 d!55087))

(declare-fun d!55089 () Bool)

(assert (=> d!55089 (= (inRange!0 (index!4779 lt!92068) (mask!8920 thiss!1248)) (and (bvsge (index!4779 lt!92068) #b00000000000000000000000000000000) (bvslt (index!4779 lt!92068) (bvadd (mask!8920 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> b!186133 d!55089))

(declare-fun d!55091 () Bool)

(declare-fun res!88095 () Bool)

(declare-fun e!122565 () Bool)

(assert (=> d!55091 (=> (not res!88095) (not e!122565))))

(declare-fun simpleValid!183 (LongMapFixedSize!2586) Bool)

(assert (=> d!55091 (= res!88095 (simpleValid!183 thiss!1248))))

(assert (=> d!55091 (= (valid!1058 thiss!1248) e!122565)))

(declare-fun b!186201 () Bool)

(declare-fun res!88096 () Bool)

(assert (=> b!186201 (=> (not res!88096) (not e!122565))))

(declare-fun arrayCountValidKeys!0 (array!7940 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!186201 (= res!88096 (= (arrayCountValidKeys!0 (_keys!5740 thiss!1248) #b00000000000000000000000000000000 (size!4064 (_keys!5740 thiss!1248))) (_size!1342 thiss!1248)))))

(declare-fun b!186202 () Bool)

(declare-fun res!88097 () Bool)

(assert (=> b!186202 (=> (not res!88097) (not e!122565))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7940 (_ BitVec 32)) Bool)

(assert (=> b!186202 (= res!88097 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5740 thiss!1248) (mask!8920 thiss!1248)))))

(declare-fun b!186203 () Bool)

(declare-datatypes ((List!2395 0))(
  ( (Nil!2392) (Cons!2391 (h!3024 (_ BitVec 64)) (t!7291 List!2395)) )
))
(declare-fun arrayNoDuplicates!0 (array!7940 (_ BitVec 32) List!2395) Bool)

(assert (=> b!186203 (= e!122565 (arrayNoDuplicates!0 (_keys!5740 thiss!1248) #b00000000000000000000000000000000 Nil!2392))))

(assert (= (and d!55091 res!88095) b!186201))

(assert (= (and b!186201 res!88096) b!186202))

(assert (= (and b!186202 res!88097) b!186203))

(declare-fun m!213221 () Bool)

(assert (=> d!55091 m!213221))

(declare-fun m!213223 () Bool)

(assert (=> b!186201 m!213223))

(declare-fun m!213225 () Bool)

(assert (=> b!186202 m!213225))

(declare-fun m!213227 () Bool)

(assert (=> b!186203 m!213227))

(assert (=> start!18850 d!55091))

(declare-fun d!55093 () Bool)

(assert (=> d!55093 (= (validMask!0 (mask!8920 thiss!1248)) (and (or (= (mask!8920 thiss!1248) #b00000000000000000000000000000111) (= (mask!8920 thiss!1248) #b00000000000000000000000000001111) (= (mask!8920 thiss!1248) #b00000000000000000000000000011111) (= (mask!8920 thiss!1248) #b00000000000000000000000000111111) (= (mask!8920 thiss!1248) #b00000000000000000000000001111111) (= (mask!8920 thiss!1248) #b00000000000000000000000011111111) (= (mask!8920 thiss!1248) #b00000000000000000000000111111111) (= (mask!8920 thiss!1248) #b00000000000000000000001111111111) (= (mask!8920 thiss!1248) #b00000000000000000000011111111111) (= (mask!8920 thiss!1248) #b00000000000000000000111111111111) (= (mask!8920 thiss!1248) #b00000000000000000001111111111111) (= (mask!8920 thiss!1248) #b00000000000000000011111111111111) (= (mask!8920 thiss!1248) #b00000000000000000111111111111111) (= (mask!8920 thiss!1248) #b00000000000000001111111111111111) (= (mask!8920 thiss!1248) #b00000000000000011111111111111111) (= (mask!8920 thiss!1248) #b00000000000000111111111111111111) (= (mask!8920 thiss!1248) #b00000000000001111111111111111111) (= (mask!8920 thiss!1248) #b00000000000011111111111111111111) (= (mask!8920 thiss!1248) #b00000000000111111111111111111111) (= (mask!8920 thiss!1248) #b00000000001111111111111111111111) (= (mask!8920 thiss!1248) #b00000000011111111111111111111111) (= (mask!8920 thiss!1248) #b00000000111111111111111111111111) (= (mask!8920 thiss!1248) #b00000001111111111111111111111111) (= (mask!8920 thiss!1248) #b00000011111111111111111111111111) (= (mask!8920 thiss!1248) #b00000111111111111111111111111111) (= (mask!8920 thiss!1248) #b00001111111111111111111111111111) (= (mask!8920 thiss!1248) #b00011111111111111111111111111111) (= (mask!8920 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8920 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!186135 d!55093))

(declare-fun d!55095 () Bool)

(declare-fun e!122570 () Bool)

(assert (=> d!55095 e!122570))

(declare-fun res!88100 () Bool)

(assert (=> d!55095 (=> res!88100 e!122570)))

(declare-fun lt!92105 () Bool)

(assert (=> d!55095 (= res!88100 (not lt!92105))))

(declare-fun lt!92106 () Bool)

(assert (=> d!55095 (= lt!92105 lt!92106)))

(declare-fun lt!92107 () Unit!5607)

(declare-fun e!122571 () Unit!5607)

(assert (=> d!55095 (= lt!92107 e!122571)))

(declare-fun c!33369 () Bool)

(assert (=> d!55095 (= c!33369 lt!92106)))

(declare-fun containsKey!228 (List!2394 (_ BitVec 64)) Bool)

(assert (=> d!55095 (= lt!92106 (containsKey!228 (toList!1213 (getCurrentListMap!856 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3798 thiss!1248))) key!828))))

(assert (=> d!55095 (= (contains!1303 (getCurrentListMap!856 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3798 thiss!1248)) key!828) lt!92105)))

(declare-fun b!186210 () Bool)

(declare-fun lt!92104 () Unit!5607)

(assert (=> b!186210 (= e!122571 lt!92104)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!177 (List!2394 (_ BitVec 64)) Unit!5607)

(assert (=> b!186210 (= lt!92104 (lemmaContainsKeyImpliesGetValueByKeyDefined!177 (toList!1213 (getCurrentListMap!856 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3798 thiss!1248))) key!828))))

(declare-datatypes ((Option!230 0))(
  ( (Some!229 (v!4137 V!5467)) (None!228) )
))
(declare-fun isDefined!178 (Option!230) Bool)

(declare-fun getValueByKey!224 (List!2394 (_ BitVec 64)) Option!230)

(assert (=> b!186210 (isDefined!178 (getValueByKey!224 (toList!1213 (getCurrentListMap!856 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3798 thiss!1248))) key!828))))

(declare-fun b!186211 () Bool)

(declare-fun Unit!5612 () Unit!5607)

(assert (=> b!186211 (= e!122571 Unit!5612)))

(declare-fun b!186212 () Bool)

(assert (=> b!186212 (= e!122570 (isDefined!178 (getValueByKey!224 (toList!1213 (getCurrentListMap!856 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3798 thiss!1248))) key!828)))))

(assert (= (and d!55095 c!33369) b!186210))

(assert (= (and d!55095 (not c!33369)) b!186211))

(assert (= (and d!55095 (not res!88100)) b!186212))

(declare-fun m!213229 () Bool)

(assert (=> d!55095 m!213229))

(declare-fun m!213231 () Bool)

(assert (=> b!186210 m!213231))

(declare-fun m!213233 () Bool)

(assert (=> b!186210 m!213233))

(assert (=> b!186210 m!213233))

(declare-fun m!213235 () Bool)

(assert (=> b!186210 m!213235))

(assert (=> b!186212 m!213233))

(assert (=> b!186212 m!213233))

(assert (=> b!186212 m!213235))

(assert (=> b!186135 d!55095))

(declare-fun b!186255 () Bool)

(declare-fun e!122602 () Bool)

(declare-fun lt!92172 () ListLongMap!2395)

(declare-fun apply!168 (ListLongMap!2395 (_ BitVec 64)) V!5467)

(declare-fun get!2152 (ValueCell!1839 V!5467) V!5467)

(declare-fun dynLambda!506 (Int (_ BitVec 64)) V!5467)

(assert (=> b!186255 (= e!122602 (= (apply!168 lt!92172 (select (arr!3748 (_keys!5740 thiss!1248)) #b00000000000000000000000000000000)) (get!2152 (select (arr!3749 (_values!3781 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!506 (defaultEntry!3798 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!186255 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4065 (_values!3781 thiss!1248))))))

(assert (=> b!186255 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4064 (_keys!5740 thiss!1248))))))

(declare-fun b!186256 () Bool)

(declare-fun e!122610 () Bool)

(declare-fun e!122598 () Bool)

(assert (=> b!186256 (= e!122610 e!122598)))

(declare-fun res!88123 () Bool)

(declare-fun call!18780 () Bool)

(assert (=> b!186256 (= res!88123 call!18780)))

(assert (=> b!186256 (=> (not res!88123) (not e!122598))))

(declare-fun b!186258 () Bool)

(declare-fun e!122600 () Unit!5607)

(declare-fun lt!92157 () Unit!5607)

(assert (=> b!186258 (= e!122600 lt!92157)))

(declare-fun lt!92173 () ListLongMap!2395)

(declare-fun getCurrentListMapNoExtraKeys!198 (array!7940 array!7942 (_ BitVec 32) (_ BitVec 32) V!5467 V!5467 (_ BitVec 32) Int) ListLongMap!2395)

(assert (=> b!186258 (= lt!92173 (getCurrentListMapNoExtraKeys!198 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3798 thiss!1248)))))

(declare-fun lt!92170 () (_ BitVec 64))

(assert (=> b!186258 (= lt!92170 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!92164 () (_ BitVec 64))

(assert (=> b!186258 (= lt!92164 (select (arr!3748 (_keys!5740 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!92156 () Unit!5607)

(declare-fun addStillContains!144 (ListLongMap!2395 (_ BitVec 64) V!5467 (_ BitVec 64)) Unit!5607)

(assert (=> b!186258 (= lt!92156 (addStillContains!144 lt!92173 lt!92170 (zeroValue!3639 thiss!1248) lt!92164))))

(declare-fun +!283 (ListLongMap!2395 tuple2!3464) ListLongMap!2395)

(assert (=> b!186258 (contains!1303 (+!283 lt!92173 (tuple2!3465 lt!92170 (zeroValue!3639 thiss!1248))) lt!92164)))

(declare-fun lt!92168 () Unit!5607)

(assert (=> b!186258 (= lt!92168 lt!92156)))

(declare-fun lt!92161 () ListLongMap!2395)

(assert (=> b!186258 (= lt!92161 (getCurrentListMapNoExtraKeys!198 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3798 thiss!1248)))))

(declare-fun lt!92167 () (_ BitVec 64))

(assert (=> b!186258 (= lt!92167 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!92155 () (_ BitVec 64))

(assert (=> b!186258 (= lt!92155 (select (arr!3748 (_keys!5740 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!92162 () Unit!5607)

(declare-fun addApplyDifferent!144 (ListLongMap!2395 (_ BitVec 64) V!5467 (_ BitVec 64)) Unit!5607)

(assert (=> b!186258 (= lt!92162 (addApplyDifferent!144 lt!92161 lt!92167 (minValue!3639 thiss!1248) lt!92155))))

(assert (=> b!186258 (= (apply!168 (+!283 lt!92161 (tuple2!3465 lt!92167 (minValue!3639 thiss!1248))) lt!92155) (apply!168 lt!92161 lt!92155))))

(declare-fun lt!92159 () Unit!5607)

(assert (=> b!186258 (= lt!92159 lt!92162)))

(declare-fun lt!92171 () ListLongMap!2395)

(assert (=> b!186258 (= lt!92171 (getCurrentListMapNoExtraKeys!198 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3798 thiss!1248)))))

(declare-fun lt!92152 () (_ BitVec 64))

(assert (=> b!186258 (= lt!92152 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!92160 () (_ BitVec 64))

(assert (=> b!186258 (= lt!92160 (select (arr!3748 (_keys!5740 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!92153 () Unit!5607)

(assert (=> b!186258 (= lt!92153 (addApplyDifferent!144 lt!92171 lt!92152 (zeroValue!3639 thiss!1248) lt!92160))))

(assert (=> b!186258 (= (apply!168 (+!283 lt!92171 (tuple2!3465 lt!92152 (zeroValue!3639 thiss!1248))) lt!92160) (apply!168 lt!92171 lt!92160))))

(declare-fun lt!92165 () Unit!5607)

(assert (=> b!186258 (= lt!92165 lt!92153)))

(declare-fun lt!92158 () ListLongMap!2395)

(assert (=> b!186258 (= lt!92158 (getCurrentListMapNoExtraKeys!198 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3798 thiss!1248)))))

(declare-fun lt!92169 () (_ BitVec 64))

(assert (=> b!186258 (= lt!92169 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!92166 () (_ BitVec 64))

(assert (=> b!186258 (= lt!92166 (select (arr!3748 (_keys!5740 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!186258 (= lt!92157 (addApplyDifferent!144 lt!92158 lt!92169 (minValue!3639 thiss!1248) lt!92166))))

(assert (=> b!186258 (= (apply!168 (+!283 lt!92158 (tuple2!3465 lt!92169 (minValue!3639 thiss!1248))) lt!92166) (apply!168 lt!92158 lt!92166))))

(declare-fun b!186259 () Bool)

(declare-fun e!122603 () ListLongMap!2395)

(declare-fun call!18781 () ListLongMap!2395)

(assert (=> b!186259 (= e!122603 (+!283 call!18781 (tuple2!3465 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3639 thiss!1248))))))

(declare-fun bm!18776 () Bool)

(declare-fun call!18779 () ListLongMap!2395)

(declare-fun call!18785 () ListLongMap!2395)

(assert (=> bm!18776 (= call!18779 call!18785)))

(declare-fun b!186260 () Bool)

(declare-fun e!122601 () ListLongMap!2395)

(declare-fun call!18783 () ListLongMap!2395)

(assert (=> b!186260 (= e!122601 call!18783)))

(declare-fun bm!18777 () Bool)

(assert (=> bm!18777 (= call!18785 (getCurrentListMapNoExtraKeys!198 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3798 thiss!1248)))))

(declare-fun b!186261 () Bool)

(declare-fun e!122608 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!186261 (= e!122608 (validKeyInArray!0 (select (arr!3748 (_keys!5740 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!18778 () Bool)

(declare-fun call!18782 () Bool)

(assert (=> bm!18778 (= call!18782 (contains!1303 lt!92172 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!186262 () Bool)

(assert (=> b!186262 (= e!122610 (not call!18780))))

(declare-fun bm!18779 () Bool)

(declare-fun call!18784 () ListLongMap!2395)

(assert (=> bm!18779 (= call!18784 call!18781)))

(declare-fun b!186263 () Bool)

(declare-fun e!122609 () Bool)

(assert (=> b!186263 (= e!122609 (not call!18782))))

(declare-fun b!186264 () Bool)

(declare-fun e!122607 () Bool)

(assert (=> b!186264 (= e!122607 (validKeyInArray!0 (select (arr!3748 (_keys!5740 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!186257 () Bool)

(declare-fun e!122606 () Bool)

(assert (=> b!186257 (= e!122606 e!122610)))

(declare-fun c!33384 () Bool)

(assert (=> b!186257 (= c!33384 (not (= (bvand (extraKeys!3535 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!55097 () Bool)

(assert (=> d!55097 e!122606))

(declare-fun res!88121 () Bool)

(assert (=> d!55097 (=> (not res!88121) (not e!122606))))

(assert (=> d!55097 (= res!88121 (or (bvsge #b00000000000000000000000000000000 (size!4064 (_keys!5740 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4064 (_keys!5740 thiss!1248))))))))

(declare-fun lt!92163 () ListLongMap!2395)

(assert (=> d!55097 (= lt!92172 lt!92163)))

(declare-fun lt!92154 () Unit!5607)

(assert (=> d!55097 (= lt!92154 e!122600)))

(declare-fun c!33387 () Bool)

(assert (=> d!55097 (= c!33387 e!122608)))

(declare-fun res!88125 () Bool)

(assert (=> d!55097 (=> (not res!88125) (not e!122608))))

(assert (=> d!55097 (= res!88125 (bvslt #b00000000000000000000000000000000 (size!4064 (_keys!5740 thiss!1248))))))

(assert (=> d!55097 (= lt!92163 e!122603)))

(declare-fun c!33385 () Bool)

(assert (=> d!55097 (= c!33385 (and (not (= (bvand (extraKeys!3535 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3535 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!55097 (validMask!0 (mask!8920 thiss!1248))))

(assert (=> d!55097 (= (getCurrentListMap!856 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3798 thiss!1248)) lt!92172)))

(declare-fun b!186265 () Bool)

(assert (=> b!186265 (= e!122598 (= (apply!168 lt!92172 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3639 thiss!1248)))))

(declare-fun b!186266 () Bool)

(declare-fun c!33382 () Bool)

(assert (=> b!186266 (= c!33382 (and (not (= (bvand (extraKeys!3535 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3535 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!122604 () ListLongMap!2395)

(assert (=> b!186266 (= e!122604 e!122601)))

(declare-fun b!186267 () Bool)

(assert (=> b!186267 (= e!122601 call!18784)))

(declare-fun b!186268 () Bool)

(declare-fun e!122599 () Bool)

(assert (=> b!186268 (= e!122599 (= (apply!168 lt!92172 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3639 thiss!1248)))))

(declare-fun b!186269 () Bool)

(assert (=> b!186269 (= e!122603 e!122604)))

(declare-fun c!33383 () Bool)

(assert (=> b!186269 (= c!33383 (and (not (= (bvand (extraKeys!3535 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3535 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!18780 () Bool)

(assert (=> bm!18780 (= call!18780 (contains!1303 lt!92172 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!18781 () Bool)

(assert (=> bm!18781 (= call!18783 call!18779)))

(declare-fun b!186270 () Bool)

(declare-fun e!122605 () Bool)

(assert (=> b!186270 (= e!122605 e!122602)))

(declare-fun res!88122 () Bool)

(assert (=> b!186270 (=> (not res!88122) (not e!122602))))

(assert (=> b!186270 (= res!88122 (contains!1303 lt!92172 (select (arr!3748 (_keys!5740 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!186270 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4064 (_keys!5740 thiss!1248))))))

(declare-fun b!186271 () Bool)

(declare-fun res!88126 () Bool)

(assert (=> b!186271 (=> (not res!88126) (not e!122606))))

(assert (=> b!186271 (= res!88126 e!122605)))

(declare-fun res!88124 () Bool)

(assert (=> b!186271 (=> res!88124 e!122605)))

(assert (=> b!186271 (= res!88124 (not e!122607))))

(declare-fun res!88120 () Bool)

(assert (=> b!186271 (=> (not res!88120) (not e!122607))))

(assert (=> b!186271 (= res!88120 (bvslt #b00000000000000000000000000000000 (size!4064 (_keys!5740 thiss!1248))))))

(declare-fun b!186272 () Bool)

(assert (=> b!186272 (= e!122609 e!122599)))

(declare-fun res!88119 () Bool)

(assert (=> b!186272 (= res!88119 call!18782)))

(assert (=> b!186272 (=> (not res!88119) (not e!122599))))

(declare-fun b!186273 () Bool)

(declare-fun Unit!5613 () Unit!5607)

(assert (=> b!186273 (= e!122600 Unit!5613)))

(declare-fun b!186274 () Bool)

(declare-fun res!88127 () Bool)

(assert (=> b!186274 (=> (not res!88127) (not e!122606))))

(assert (=> b!186274 (= res!88127 e!122609)))

(declare-fun c!33386 () Bool)

(assert (=> b!186274 (= c!33386 (not (= (bvand (extraKeys!3535 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!186275 () Bool)

(assert (=> b!186275 (= e!122604 call!18784)))

(declare-fun bm!18782 () Bool)

(assert (=> bm!18782 (= call!18781 (+!283 (ite c!33385 call!18785 (ite c!33383 call!18779 call!18783)) (ite (or c!33385 c!33383) (tuple2!3465 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3639 thiss!1248)) (tuple2!3465 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3639 thiss!1248)))))))

(assert (= (and d!55097 c!33385) b!186259))

(assert (= (and d!55097 (not c!33385)) b!186269))

(assert (= (and b!186269 c!33383) b!186275))

(assert (= (and b!186269 (not c!33383)) b!186266))

(assert (= (and b!186266 c!33382) b!186267))

(assert (= (and b!186266 (not c!33382)) b!186260))

(assert (= (or b!186267 b!186260) bm!18781))

(assert (= (or b!186275 bm!18781) bm!18776))

(assert (= (or b!186275 b!186267) bm!18779))

(assert (= (or b!186259 bm!18776) bm!18777))

(assert (= (or b!186259 bm!18779) bm!18782))

(assert (= (and d!55097 res!88125) b!186261))

(assert (= (and d!55097 c!33387) b!186258))

(assert (= (and d!55097 (not c!33387)) b!186273))

(assert (= (and d!55097 res!88121) b!186271))

(assert (= (and b!186271 res!88120) b!186264))

(assert (= (and b!186271 (not res!88124)) b!186270))

(assert (= (and b!186270 res!88122) b!186255))

(assert (= (and b!186271 res!88126) b!186274))

(assert (= (and b!186274 c!33386) b!186272))

(assert (= (and b!186274 (not c!33386)) b!186263))

(assert (= (and b!186272 res!88119) b!186268))

(assert (= (or b!186272 b!186263) bm!18778))

(assert (= (and b!186274 res!88127) b!186257))

(assert (= (and b!186257 c!33384) b!186256))

(assert (= (and b!186257 (not c!33384)) b!186262))

(assert (= (and b!186256 res!88123) b!186265))

(assert (= (or b!186256 b!186262) bm!18780))

(declare-fun b_lambda!7289 () Bool)

(assert (=> (not b_lambda!7289) (not b!186255)))

(declare-fun t!7290 () Bool)

(declare-fun tb!2855 () Bool)

(assert (=> (and b!186136 (= (defaultEntry!3798 thiss!1248) (defaultEntry!3798 thiss!1248)) t!7290) tb!2855))

(declare-fun result!4827 () Bool)

(assert (=> tb!2855 (= result!4827 tp_is_empty!4365)))

(assert (=> b!186255 t!7290))

(declare-fun b_and!11219 () Bool)

(assert (= b_and!11215 (and (=> t!7290 result!4827) b_and!11219)))

(declare-fun m!213237 () Bool)

(assert (=> b!186265 m!213237))

(declare-fun m!213239 () Bool)

(assert (=> b!186268 m!213239))

(declare-fun m!213241 () Bool)

(assert (=> bm!18780 m!213241))

(declare-fun m!213243 () Bool)

(assert (=> b!186270 m!213243))

(assert (=> b!186270 m!213243))

(declare-fun m!213245 () Bool)

(assert (=> b!186270 m!213245))

(declare-fun m!213247 () Bool)

(assert (=> bm!18777 m!213247))

(declare-fun m!213249 () Bool)

(assert (=> bm!18778 m!213249))

(declare-fun m!213251 () Bool)

(assert (=> b!186258 m!213251))

(declare-fun m!213253 () Bool)

(assert (=> b!186258 m!213253))

(declare-fun m!213255 () Bool)

(assert (=> b!186258 m!213255))

(declare-fun m!213257 () Bool)

(assert (=> b!186258 m!213257))

(declare-fun m!213259 () Bool)

(assert (=> b!186258 m!213259))

(declare-fun m!213261 () Bool)

(assert (=> b!186258 m!213261))

(declare-fun m!213263 () Bool)

(assert (=> b!186258 m!213263))

(declare-fun m!213265 () Bool)

(assert (=> b!186258 m!213265))

(assert (=> b!186258 m!213265))

(declare-fun m!213267 () Bool)

(assert (=> b!186258 m!213267))

(assert (=> b!186258 m!213247))

(assert (=> b!186258 m!213255))

(assert (=> b!186258 m!213261))

(declare-fun m!213269 () Bool)

(assert (=> b!186258 m!213269))

(declare-fun m!213271 () Bool)

(assert (=> b!186258 m!213271))

(declare-fun m!213273 () Bool)

(assert (=> b!186258 m!213273))

(declare-fun m!213275 () Bool)

(assert (=> b!186258 m!213275))

(assert (=> b!186258 m!213243))

(declare-fun m!213277 () Bool)

(assert (=> b!186258 m!213277))

(assert (=> b!186258 m!213275))

(declare-fun m!213279 () Bool)

(assert (=> b!186258 m!213279))

(assert (=> d!55097 m!213159))

(declare-fun m!213281 () Bool)

(assert (=> b!186255 m!213281))

(assert (=> b!186255 m!213243))

(declare-fun m!213283 () Bool)

(assert (=> b!186255 m!213283))

(assert (=> b!186255 m!213281))

(declare-fun m!213285 () Bool)

(assert (=> b!186255 m!213285))

(assert (=> b!186255 m!213243))

(declare-fun m!213287 () Bool)

(assert (=> b!186255 m!213287))

(assert (=> b!186255 m!213283))

(assert (=> b!186261 m!213243))

(assert (=> b!186261 m!213243))

(declare-fun m!213289 () Bool)

(assert (=> b!186261 m!213289))

(declare-fun m!213291 () Bool)

(assert (=> bm!18782 m!213291))

(declare-fun m!213293 () Bool)

(assert (=> b!186259 m!213293))

(assert (=> b!186264 m!213243))

(assert (=> b!186264 m!213243))

(assert (=> b!186264 m!213289))

(assert (=> b!186135 d!55097))

(declare-fun b!186294 () Bool)

(declare-fun e!122622 () Bool)

(declare-fun e!122619 () Bool)

(assert (=> b!186294 (= e!122622 e!122619)))

(declare-fun res!88136 () Bool)

(declare-fun call!18790 () Bool)

(assert (=> b!186294 (= res!88136 call!18790)))

(assert (=> b!186294 (=> (not res!88136) (not e!122619))))

(declare-fun b!186295 () Bool)

(declare-fun res!88138 () Bool)

(declare-fun e!122620 () Bool)

(assert (=> b!186295 (=> (not res!88138) (not e!122620))))

(declare-fun lt!92178 () SeekEntryResult!652)

(assert (=> b!186295 (= res!88138 (= (select (arr!3748 (_keys!5740 thiss!1248)) (index!4781 lt!92178)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!186295 (and (bvsge (index!4781 lt!92178) #b00000000000000000000000000000000) (bvslt (index!4781 lt!92178) (size!4064 (_keys!5740 thiss!1248))))))

(declare-fun b!186296 () Bool)

(declare-fun e!122621 () Bool)

(assert (=> b!186296 (= e!122622 e!122621)))

(declare-fun c!33392 () Bool)

(assert (=> b!186296 (= c!33392 ((_ is MissingVacant!652) lt!92178))))

(declare-fun b!186297 () Bool)

(assert (=> b!186297 (and (bvsge (index!4778 lt!92178) #b00000000000000000000000000000000) (bvslt (index!4778 lt!92178) (size!4064 (_keys!5740 thiss!1248))))))

(declare-fun res!88139 () Bool)

(assert (=> b!186297 (= res!88139 (= (select (arr!3748 (_keys!5740 thiss!1248)) (index!4778 lt!92178)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!186297 (=> (not res!88139) (not e!122619))))

(declare-fun b!186298 () Bool)

(assert (=> b!186298 (= e!122621 ((_ is Undefined!652) lt!92178))))

(declare-fun bm!18787 () Bool)

(declare-fun call!18791 () Bool)

(declare-fun arrayContainsKey!0 (array!7940 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!18787 (= call!18791 (arrayContainsKey!0 (_keys!5740 thiss!1248) key!828 #b00000000000000000000000000000000))))

(declare-fun d!55099 () Bool)

(assert (=> d!55099 e!122622))

(declare-fun c!33393 () Bool)

(assert (=> d!55099 (= c!33393 ((_ is MissingZero!652) lt!92178))))

(assert (=> d!55099 (= lt!92178 (seekEntryOrOpen!0 key!828 (_keys!5740 thiss!1248) (mask!8920 thiss!1248)))))

(declare-fun lt!92179 () Unit!5607)

(declare-fun choose!993 (array!7940 array!7942 (_ BitVec 32) (_ BitVec 32) V!5467 V!5467 (_ BitVec 64) Int) Unit!5607)

(assert (=> d!55099 (= lt!92179 (choose!993 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) key!828 (defaultEntry!3798 thiss!1248)))))

(assert (=> d!55099 (validMask!0 (mask!8920 thiss!1248))))

(assert (=> d!55099 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!145 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) key!828 (defaultEntry!3798 thiss!1248)) lt!92179)))

(declare-fun b!186299 () Bool)

(assert (=> b!186299 (= e!122619 (not call!18791))))

(declare-fun bm!18788 () Bool)

(assert (=> bm!18788 (= call!18790 (inRange!0 (ite c!33393 (index!4778 lt!92178) (index!4781 lt!92178)) (mask!8920 thiss!1248)))))

(declare-fun b!186300 () Bool)

(assert (=> b!186300 (= e!122620 (not call!18791))))

(declare-fun b!186301 () Bool)

(declare-fun res!88137 () Bool)

(assert (=> b!186301 (=> (not res!88137) (not e!122620))))

(assert (=> b!186301 (= res!88137 call!18790)))

(assert (=> b!186301 (= e!122621 e!122620)))

(assert (= (and d!55099 c!33393) b!186294))

(assert (= (and d!55099 (not c!33393)) b!186296))

(assert (= (and b!186294 res!88136) b!186297))

(assert (= (and b!186297 res!88139) b!186299))

(assert (= (and b!186296 c!33392) b!186301))

(assert (= (and b!186296 (not c!33392)) b!186298))

(assert (= (and b!186301 res!88137) b!186295))

(assert (= (and b!186295 res!88138) b!186300))

(assert (= (or b!186294 b!186301) bm!18788))

(assert (= (or b!186299 b!186300) bm!18787))

(declare-fun m!213295 () Bool)

(assert (=> bm!18787 m!213295))

(declare-fun m!213297 () Bool)

(assert (=> b!186295 m!213297))

(declare-fun m!213299 () Bool)

(assert (=> b!186297 m!213299))

(declare-fun m!213301 () Bool)

(assert (=> bm!18788 m!213301))

(assert (=> d!55099 m!213165))

(declare-fun m!213303 () Bool)

(assert (=> d!55099 m!213303))

(assert (=> d!55099 m!213159))

(assert (=> b!186131 d!55099))

(declare-fun condMapEmpty!7518 () Bool)

(declare-fun mapDefault!7518 () ValueCell!1839)

(assert (=> mapNonEmpty!7512 (= condMapEmpty!7518 (= mapRest!7512 ((as const (Array (_ BitVec 32) ValueCell!1839)) mapDefault!7518)))))

(declare-fun e!122627 () Bool)

(declare-fun mapRes!7518 () Bool)

(assert (=> mapNonEmpty!7512 (= tp!16580 (and e!122627 mapRes!7518))))

(declare-fun b!186308 () Bool)

(declare-fun e!122628 () Bool)

(assert (=> b!186308 (= e!122628 tp_is_empty!4365)))

(declare-fun b!186309 () Bool)

(assert (=> b!186309 (= e!122627 tp_is_empty!4365)))

(declare-fun mapNonEmpty!7518 () Bool)

(declare-fun tp!16590 () Bool)

(assert (=> mapNonEmpty!7518 (= mapRes!7518 (and tp!16590 e!122628))))

(declare-fun mapKey!7518 () (_ BitVec 32))

(declare-fun mapValue!7518 () ValueCell!1839)

(declare-fun mapRest!7518 () (Array (_ BitVec 32) ValueCell!1839))

(assert (=> mapNonEmpty!7518 (= mapRest!7512 (store mapRest!7518 mapKey!7518 mapValue!7518))))

(declare-fun mapIsEmpty!7518 () Bool)

(assert (=> mapIsEmpty!7518 mapRes!7518))

(assert (= (and mapNonEmpty!7512 condMapEmpty!7518) mapIsEmpty!7518))

(assert (= (and mapNonEmpty!7512 (not condMapEmpty!7518)) mapNonEmpty!7518))

(assert (= (and mapNonEmpty!7518 ((_ is ValueCellFull!1839) mapValue!7518)) b!186308))

(assert (= (and mapNonEmpty!7512 ((_ is ValueCellFull!1839) mapDefault!7518)) b!186309))

(declare-fun m!213305 () Bool)

(assert (=> mapNonEmpty!7518 m!213305))

(declare-fun b_lambda!7291 () Bool)

(assert (= b_lambda!7289 (or (and b!186136 b_free!4593) b_lambda!7291)))

(check-sat (not d!55081) (not b!186212) (not b!186259) (not d!55095) (not b!186201) (not b!186185) (not mapNonEmpty!7518) (not d!55097) (not d!55087) (not bm!18782) (not b!186261) (not b!186255) (not b!186264) (not b_lambda!7291) (not d!55091) (not bm!18777) (not b!186202) (not b!186203) (not b!186210) (not bm!18778) (not b_next!4593) (not bm!18780) (not d!55099) (not b!186193) (not b!186268) (not bm!18787) (not b!186270) (not bm!18788) (not b!186258) (not b!186265) tp_is_empty!4365 b_and!11219)
(check-sat b_and!11219 (not b_next!4593))
(get-model)

(declare-fun d!55101 () Bool)

(declare-fun e!122629 () Bool)

(assert (=> d!55101 e!122629))

(declare-fun res!88140 () Bool)

(assert (=> d!55101 (=> res!88140 e!122629)))

(declare-fun lt!92181 () Bool)

(assert (=> d!55101 (= res!88140 (not lt!92181))))

(declare-fun lt!92182 () Bool)

(assert (=> d!55101 (= lt!92181 lt!92182)))

(declare-fun lt!92183 () Unit!5607)

(declare-fun e!122630 () Unit!5607)

(assert (=> d!55101 (= lt!92183 e!122630)))

(declare-fun c!33394 () Bool)

(assert (=> d!55101 (= c!33394 lt!92182)))

(assert (=> d!55101 (= lt!92182 (containsKey!228 (toList!1213 lt!92172) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!55101 (= (contains!1303 lt!92172 #b0000000000000000000000000000000000000000000000000000000000000000) lt!92181)))

(declare-fun b!186310 () Bool)

(declare-fun lt!92180 () Unit!5607)

(assert (=> b!186310 (= e!122630 lt!92180)))

(assert (=> b!186310 (= lt!92180 (lemmaContainsKeyImpliesGetValueByKeyDefined!177 (toList!1213 lt!92172) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!186310 (isDefined!178 (getValueByKey!224 (toList!1213 lt!92172) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!186311 () Bool)

(declare-fun Unit!5614 () Unit!5607)

(assert (=> b!186311 (= e!122630 Unit!5614)))

(declare-fun b!186312 () Bool)

(assert (=> b!186312 (= e!122629 (isDefined!178 (getValueByKey!224 (toList!1213 lt!92172) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!55101 c!33394) b!186310))

(assert (= (and d!55101 (not c!33394)) b!186311))

(assert (= (and d!55101 (not res!88140)) b!186312))

(declare-fun m!213307 () Bool)

(assert (=> d!55101 m!213307))

(declare-fun m!213309 () Bool)

(assert (=> b!186310 m!213309))

(declare-fun m!213311 () Bool)

(assert (=> b!186310 m!213311))

(assert (=> b!186310 m!213311))

(declare-fun m!213313 () Bool)

(assert (=> b!186310 m!213313))

(assert (=> b!186312 m!213311))

(assert (=> b!186312 m!213311))

(assert (=> b!186312 m!213313))

(assert (=> bm!18778 d!55101))

(declare-fun d!55103 () Bool)

(assert (=> d!55103 (= (validKeyInArray!0 (select (arr!3748 (_keys!5740 thiss!1248)) #b00000000000000000000000000000000)) (and (not (= (select (arr!3748 (_keys!5740 thiss!1248)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!3748 (_keys!5740 thiss!1248)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!186261 d!55103))

(declare-fun d!55105 () Bool)

(declare-fun isEmpty!476 (Option!230) Bool)

(assert (=> d!55105 (= (isDefined!178 (getValueByKey!224 (toList!1213 (getCurrentListMap!856 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3798 thiss!1248))) key!828)) (not (isEmpty!476 (getValueByKey!224 (toList!1213 (getCurrentListMap!856 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3798 thiss!1248))) key!828))))))

(declare-fun bs!7532 () Bool)

(assert (= bs!7532 d!55105))

(assert (=> bs!7532 m!213233))

(declare-fun m!213315 () Bool)

(assert (=> bs!7532 m!213315))

(assert (=> b!186212 d!55105))

(declare-fun b!186324 () Bool)

(declare-fun e!122636 () Option!230)

(assert (=> b!186324 (= e!122636 None!228)))

(declare-fun d!55107 () Bool)

(declare-fun c!33399 () Bool)

(assert (=> d!55107 (= c!33399 (and ((_ is Cons!2390) (toList!1213 (getCurrentListMap!856 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3798 thiss!1248)))) (= (_1!1742 (h!3023 (toList!1213 (getCurrentListMap!856 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3798 thiss!1248))))) key!828)))))

(declare-fun e!122635 () Option!230)

(assert (=> d!55107 (= (getValueByKey!224 (toList!1213 (getCurrentListMap!856 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3798 thiss!1248))) key!828) e!122635)))

(declare-fun b!186322 () Bool)

(assert (=> b!186322 (= e!122635 e!122636)))

(declare-fun c!33400 () Bool)

(assert (=> b!186322 (= c!33400 (and ((_ is Cons!2390) (toList!1213 (getCurrentListMap!856 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3798 thiss!1248)))) (not (= (_1!1742 (h!3023 (toList!1213 (getCurrentListMap!856 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3798 thiss!1248))))) key!828))))))

(declare-fun b!186323 () Bool)

(assert (=> b!186323 (= e!122636 (getValueByKey!224 (t!7288 (toList!1213 (getCurrentListMap!856 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3798 thiss!1248)))) key!828))))

(declare-fun b!186321 () Bool)

(assert (=> b!186321 (= e!122635 (Some!229 (_2!1742 (h!3023 (toList!1213 (getCurrentListMap!856 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3798 thiss!1248)))))))))

(assert (= (and d!55107 c!33399) b!186321))

(assert (= (and d!55107 (not c!33399)) b!186322))

(assert (= (and b!186322 c!33400) b!186323))

(assert (= (and b!186322 (not c!33400)) b!186324))

(declare-fun m!213317 () Bool)

(assert (=> b!186323 m!213317))

(assert (=> b!186212 d!55107))

(declare-fun b!186337 () Bool)

(declare-fun e!122645 () SeekEntryResult!652)

(assert (=> b!186337 (= e!122645 (MissingVacant!652 (index!4780 lt!92089)))))

(declare-fun b!186338 () Bool)

(declare-fun e!122643 () SeekEntryResult!652)

(declare-fun e!122644 () SeekEntryResult!652)

(assert (=> b!186338 (= e!122643 e!122644)))

(declare-fun c!33408 () Bool)

(declare-fun lt!92188 () (_ BitVec 64))

(assert (=> b!186338 (= c!33408 (= lt!92188 key!828))))

(declare-fun b!186339 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!186339 (= e!122645 (seekKeyOrZeroReturnVacant!0 (bvadd (x!20216 lt!92089) #b00000000000000000000000000000001) (nextIndex!0 (index!4780 lt!92089) (x!20216 lt!92089) (mask!8920 thiss!1248)) (index!4780 lt!92089) key!828 (_keys!5740 thiss!1248) (mask!8920 thiss!1248)))))

(declare-fun b!186340 () Bool)

(assert (=> b!186340 (= e!122644 (Found!652 (index!4780 lt!92089)))))

(declare-fun b!186341 () Bool)

(assert (=> b!186341 (= e!122643 Undefined!652)))

(declare-fun b!186342 () Bool)

(declare-fun c!33409 () Bool)

(assert (=> b!186342 (= c!33409 (= lt!92188 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!186342 (= e!122644 e!122645)))

(declare-fun d!55109 () Bool)

(declare-fun lt!92189 () SeekEntryResult!652)

(assert (=> d!55109 (and (or ((_ is Undefined!652) lt!92189) (not ((_ is Found!652) lt!92189)) (and (bvsge (index!4779 lt!92189) #b00000000000000000000000000000000) (bvslt (index!4779 lt!92189) (size!4064 (_keys!5740 thiss!1248))))) (or ((_ is Undefined!652) lt!92189) ((_ is Found!652) lt!92189) (not ((_ is MissingVacant!652) lt!92189)) (not (= (index!4781 lt!92189) (index!4780 lt!92089))) (and (bvsge (index!4781 lt!92189) #b00000000000000000000000000000000) (bvslt (index!4781 lt!92189) (size!4064 (_keys!5740 thiss!1248))))) (or ((_ is Undefined!652) lt!92189) (ite ((_ is Found!652) lt!92189) (= (select (arr!3748 (_keys!5740 thiss!1248)) (index!4779 lt!92189)) key!828) (and ((_ is MissingVacant!652) lt!92189) (= (index!4781 lt!92189) (index!4780 lt!92089)) (= (select (arr!3748 (_keys!5740 thiss!1248)) (index!4781 lt!92189)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!55109 (= lt!92189 e!122643)))

(declare-fun c!33407 () Bool)

(assert (=> d!55109 (= c!33407 (bvsge (x!20216 lt!92089) #b01111111111111111111111111111110))))

(assert (=> d!55109 (= lt!92188 (select (arr!3748 (_keys!5740 thiss!1248)) (index!4780 lt!92089)))))

(assert (=> d!55109 (validMask!0 (mask!8920 thiss!1248))))

(assert (=> d!55109 (= (seekKeyOrZeroReturnVacant!0 (x!20216 lt!92089) (index!4780 lt!92089) (index!4780 lt!92089) key!828 (_keys!5740 thiss!1248) (mask!8920 thiss!1248)) lt!92189)))

(assert (= (and d!55109 c!33407) b!186341))

(assert (= (and d!55109 (not c!33407)) b!186338))

(assert (= (and b!186338 c!33408) b!186340))

(assert (= (and b!186338 (not c!33408)) b!186342))

(assert (= (and b!186342 c!33409) b!186337))

(assert (= (and b!186342 (not c!33409)) b!186339))

(declare-fun m!213319 () Bool)

(assert (=> b!186339 m!213319))

(assert (=> b!186339 m!213319))

(declare-fun m!213321 () Bool)

(assert (=> b!186339 m!213321))

(declare-fun m!213323 () Bool)

(assert (=> d!55109 m!213323))

(declare-fun m!213325 () Bool)

(assert (=> d!55109 m!213325))

(assert (=> d!55109 m!213201))

(assert (=> d!55109 m!213159))

(assert (=> b!186185 d!55109))

(declare-fun b!186367 () Bool)

(declare-fun e!122664 () Bool)

(assert (=> b!186367 (= e!122664 (validKeyInArray!0 (select (arr!3748 (_keys!5740 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!186367 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!186368 () Bool)

(declare-fun e!122665 () Bool)

(declare-fun e!122663 () Bool)

(assert (=> b!186368 (= e!122665 e!122663)))

(declare-fun c!33421 () Bool)

(assert (=> b!186368 (= c!33421 e!122664)))

(declare-fun res!88149 () Bool)

(assert (=> b!186368 (=> (not res!88149) (not e!122664))))

(assert (=> b!186368 (= res!88149 (bvslt #b00000000000000000000000000000000 (size!4064 (_keys!5740 thiss!1248))))))

(declare-fun b!186369 () Bool)

(declare-fun e!122662 () ListLongMap!2395)

(assert (=> b!186369 (= e!122662 (ListLongMap!2396 Nil!2391))))

(declare-fun d!55111 () Bool)

(assert (=> d!55111 e!122665))

(declare-fun res!88151 () Bool)

(assert (=> d!55111 (=> (not res!88151) (not e!122665))))

(declare-fun lt!92204 () ListLongMap!2395)

(assert (=> d!55111 (= res!88151 (not (contains!1303 lt!92204 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!55111 (= lt!92204 e!122662)))

(declare-fun c!33419 () Bool)

(assert (=> d!55111 (= c!33419 (bvsge #b00000000000000000000000000000000 (size!4064 (_keys!5740 thiss!1248))))))

(assert (=> d!55111 (validMask!0 (mask!8920 thiss!1248))))

(assert (=> d!55111 (= (getCurrentListMapNoExtraKeys!198 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3798 thiss!1248)) lt!92204)))

(declare-fun b!186370 () Bool)

(declare-fun e!122661 () Bool)

(assert (=> b!186370 (= e!122663 e!122661)))

(assert (=> b!186370 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4064 (_keys!5740 thiss!1248))))))

(declare-fun res!88150 () Bool)

(assert (=> b!186370 (= res!88150 (contains!1303 lt!92204 (select (arr!3748 (_keys!5740 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!186370 (=> (not res!88150) (not e!122661))))

(declare-fun b!186371 () Bool)

(assert (=> b!186371 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4064 (_keys!5740 thiss!1248))))))

(assert (=> b!186371 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4065 (_values!3781 thiss!1248))))))

(assert (=> b!186371 (= e!122661 (= (apply!168 lt!92204 (select (arr!3748 (_keys!5740 thiss!1248)) #b00000000000000000000000000000000)) (get!2152 (select (arr!3749 (_values!3781 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!506 (defaultEntry!3798 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!186372 () Bool)

(declare-fun res!88152 () Bool)

(assert (=> b!186372 (=> (not res!88152) (not e!122665))))

(assert (=> b!186372 (= res!88152 (not (contains!1303 lt!92204 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!186373 () Bool)

(declare-fun e!122660 () Bool)

(declare-fun isEmpty!477 (ListLongMap!2395) Bool)

(assert (=> b!186373 (= e!122660 (isEmpty!477 lt!92204))))

(declare-fun b!186374 () Bool)

(declare-fun e!122666 () ListLongMap!2395)

(assert (=> b!186374 (= e!122662 e!122666)))

(declare-fun c!33418 () Bool)

(assert (=> b!186374 (= c!33418 (validKeyInArray!0 (select (arr!3748 (_keys!5740 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!186375 () Bool)

(assert (=> b!186375 (= e!122663 e!122660)))

(declare-fun c!33420 () Bool)

(assert (=> b!186375 (= c!33420 (bvslt #b00000000000000000000000000000000 (size!4064 (_keys!5740 thiss!1248))))))

(declare-fun bm!18791 () Bool)

(declare-fun call!18794 () ListLongMap!2395)

(assert (=> bm!18791 (= call!18794 (getCurrentListMapNoExtraKeys!198 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3798 thiss!1248)))))

(declare-fun b!186376 () Bool)

(assert (=> b!186376 (= e!122666 call!18794)))

(declare-fun b!186377 () Bool)

(assert (=> b!186377 (= e!122660 (= lt!92204 (getCurrentListMapNoExtraKeys!198 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3798 thiss!1248))))))

(declare-fun b!186378 () Bool)

(declare-fun lt!92207 () Unit!5607)

(declare-fun lt!92209 () Unit!5607)

(assert (=> b!186378 (= lt!92207 lt!92209)))

(declare-fun lt!92208 () ListLongMap!2395)

(declare-fun lt!92206 () V!5467)

(declare-fun lt!92210 () (_ BitVec 64))

(declare-fun lt!92205 () (_ BitVec 64))

(assert (=> b!186378 (not (contains!1303 (+!283 lt!92208 (tuple2!3465 lt!92205 lt!92206)) lt!92210))))

(declare-fun addStillNotContains!91 (ListLongMap!2395 (_ BitVec 64) V!5467 (_ BitVec 64)) Unit!5607)

(assert (=> b!186378 (= lt!92209 (addStillNotContains!91 lt!92208 lt!92205 lt!92206 lt!92210))))

(assert (=> b!186378 (= lt!92210 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!186378 (= lt!92206 (get!2152 (select (arr!3749 (_values!3781 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!506 (defaultEntry!3798 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!186378 (= lt!92205 (select (arr!3748 (_keys!5740 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!186378 (= lt!92208 call!18794)))

(assert (=> b!186378 (= e!122666 (+!283 call!18794 (tuple2!3465 (select (arr!3748 (_keys!5740 thiss!1248)) #b00000000000000000000000000000000) (get!2152 (select (arr!3749 (_values!3781 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!506 (defaultEntry!3798 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!55111 c!33419) b!186369))

(assert (= (and d!55111 (not c!33419)) b!186374))

(assert (= (and b!186374 c!33418) b!186378))

(assert (= (and b!186374 (not c!33418)) b!186376))

(assert (= (or b!186378 b!186376) bm!18791))

(assert (= (and d!55111 res!88151) b!186372))

(assert (= (and b!186372 res!88152) b!186368))

(assert (= (and b!186368 res!88149) b!186367))

(assert (= (and b!186368 c!33421) b!186370))

(assert (= (and b!186368 (not c!33421)) b!186375))

(assert (= (and b!186370 res!88150) b!186371))

(assert (= (and b!186375 c!33420) b!186377))

(assert (= (and b!186375 (not c!33420)) b!186373))

(declare-fun b_lambda!7293 () Bool)

(assert (=> (not b_lambda!7293) (not b!186371)))

(assert (=> b!186371 t!7290))

(declare-fun b_and!11221 () Bool)

(assert (= b_and!11219 (and (=> t!7290 result!4827) b_and!11221)))

(declare-fun b_lambda!7295 () Bool)

(assert (=> (not b_lambda!7295) (not b!186378)))

(assert (=> b!186378 t!7290))

(declare-fun b_and!11223 () Bool)

(assert (= b_and!11221 (and (=> t!7290 result!4827) b_and!11223)))

(declare-fun m!213327 () Bool)

(assert (=> b!186378 m!213327))

(assert (=> b!186378 m!213243))

(assert (=> b!186378 m!213283))

(declare-fun m!213329 () Bool)

(assert (=> b!186378 m!213329))

(declare-fun m!213331 () Bool)

(assert (=> b!186378 m!213331))

(assert (=> b!186378 m!213329))

(declare-fun m!213333 () Bool)

(assert (=> b!186378 m!213333))

(assert (=> b!186378 m!213281))

(assert (=> b!186378 m!213283))

(assert (=> b!186378 m!213281))

(assert (=> b!186378 m!213285))

(declare-fun m!213335 () Bool)

(assert (=> b!186373 m!213335))

(assert (=> b!186367 m!213243))

(assert (=> b!186367 m!213243))

(assert (=> b!186367 m!213289))

(declare-fun m!213337 () Bool)

(assert (=> b!186372 m!213337))

(declare-fun m!213339 () Bool)

(assert (=> bm!18791 m!213339))

(declare-fun m!213341 () Bool)

(assert (=> d!55111 m!213341))

(assert (=> d!55111 m!213159))

(assert (=> b!186371 m!213243))

(declare-fun m!213343 () Bool)

(assert (=> b!186371 m!213343))

(assert (=> b!186371 m!213243))

(assert (=> b!186371 m!213283))

(assert (=> b!186371 m!213281))

(assert (=> b!186371 m!213283))

(assert (=> b!186371 m!213281))

(assert (=> b!186371 m!213285))

(assert (=> b!186370 m!213243))

(assert (=> b!186370 m!213243))

(declare-fun m!213345 () Bool)

(assert (=> b!186370 m!213345))

(assert (=> b!186374 m!213243))

(assert (=> b!186374 m!213243))

(assert (=> b!186374 m!213289))

(assert (=> b!186377 m!213339))

(assert (=> bm!18777 d!55111))

(declare-fun d!55113 () Bool)

(assert (=> d!55113 (isDefined!178 (getValueByKey!224 (toList!1213 (getCurrentListMap!856 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3798 thiss!1248))) key!828))))

(declare-fun lt!92213 () Unit!5607)

(declare-fun choose!994 (List!2394 (_ BitVec 64)) Unit!5607)

(assert (=> d!55113 (= lt!92213 (choose!994 (toList!1213 (getCurrentListMap!856 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3798 thiss!1248))) key!828))))

(declare-fun e!122669 () Bool)

(assert (=> d!55113 e!122669))

(declare-fun res!88155 () Bool)

(assert (=> d!55113 (=> (not res!88155) (not e!122669))))

(declare-fun isStrictlySorted!344 (List!2394) Bool)

(assert (=> d!55113 (= res!88155 (isStrictlySorted!344 (toList!1213 (getCurrentListMap!856 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3798 thiss!1248)))))))

(assert (=> d!55113 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!177 (toList!1213 (getCurrentListMap!856 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3798 thiss!1248))) key!828) lt!92213)))

(declare-fun b!186381 () Bool)

(assert (=> b!186381 (= e!122669 (containsKey!228 (toList!1213 (getCurrentListMap!856 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3798 thiss!1248))) key!828))))

(assert (= (and d!55113 res!88155) b!186381))

(assert (=> d!55113 m!213233))

(assert (=> d!55113 m!213233))

(assert (=> d!55113 m!213235))

(declare-fun m!213347 () Bool)

(assert (=> d!55113 m!213347))

(declare-fun m!213349 () Bool)

(assert (=> d!55113 m!213349))

(assert (=> b!186381 m!213229))

(assert (=> b!186210 d!55113))

(assert (=> b!186210 d!55105))

(assert (=> b!186210 d!55107))

(declare-fun d!55115 () Bool)

(declare-fun e!122672 () Bool)

(assert (=> d!55115 e!122672))

(declare-fun res!88161 () Bool)

(assert (=> d!55115 (=> (not res!88161) (not e!122672))))

(declare-fun lt!92224 () ListLongMap!2395)

(assert (=> d!55115 (= res!88161 (contains!1303 lt!92224 (_1!1742 (ite (or c!33385 c!33383) (tuple2!3465 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3639 thiss!1248)) (tuple2!3465 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3639 thiss!1248))))))))

(declare-fun lt!92223 () List!2394)

(assert (=> d!55115 (= lt!92224 (ListLongMap!2396 lt!92223))))

(declare-fun lt!92225 () Unit!5607)

(declare-fun lt!92222 () Unit!5607)

(assert (=> d!55115 (= lt!92225 lt!92222)))

(assert (=> d!55115 (= (getValueByKey!224 lt!92223 (_1!1742 (ite (or c!33385 c!33383) (tuple2!3465 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3639 thiss!1248)) (tuple2!3465 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3639 thiss!1248))))) (Some!229 (_2!1742 (ite (or c!33385 c!33383) (tuple2!3465 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3639 thiss!1248)) (tuple2!3465 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3639 thiss!1248))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!118 (List!2394 (_ BitVec 64) V!5467) Unit!5607)

(assert (=> d!55115 (= lt!92222 (lemmaContainsTupThenGetReturnValue!118 lt!92223 (_1!1742 (ite (or c!33385 c!33383) (tuple2!3465 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3639 thiss!1248)) (tuple2!3465 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3639 thiss!1248)))) (_2!1742 (ite (or c!33385 c!33383) (tuple2!3465 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3639 thiss!1248)) (tuple2!3465 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3639 thiss!1248))))))))

(declare-fun insertStrictlySorted!120 (List!2394 (_ BitVec 64) V!5467) List!2394)

(assert (=> d!55115 (= lt!92223 (insertStrictlySorted!120 (toList!1213 (ite c!33385 call!18785 (ite c!33383 call!18779 call!18783))) (_1!1742 (ite (or c!33385 c!33383) (tuple2!3465 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3639 thiss!1248)) (tuple2!3465 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3639 thiss!1248)))) (_2!1742 (ite (or c!33385 c!33383) (tuple2!3465 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3639 thiss!1248)) (tuple2!3465 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3639 thiss!1248))))))))

(assert (=> d!55115 (= (+!283 (ite c!33385 call!18785 (ite c!33383 call!18779 call!18783)) (ite (or c!33385 c!33383) (tuple2!3465 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3639 thiss!1248)) (tuple2!3465 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3639 thiss!1248)))) lt!92224)))

(declare-fun b!186386 () Bool)

(declare-fun res!88160 () Bool)

(assert (=> b!186386 (=> (not res!88160) (not e!122672))))

(assert (=> b!186386 (= res!88160 (= (getValueByKey!224 (toList!1213 lt!92224) (_1!1742 (ite (or c!33385 c!33383) (tuple2!3465 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3639 thiss!1248)) (tuple2!3465 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3639 thiss!1248))))) (Some!229 (_2!1742 (ite (or c!33385 c!33383) (tuple2!3465 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3639 thiss!1248)) (tuple2!3465 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3639 thiss!1248)))))))))

(declare-fun b!186387 () Bool)

(declare-fun contains!1304 (List!2394 tuple2!3464) Bool)

(assert (=> b!186387 (= e!122672 (contains!1304 (toList!1213 lt!92224) (ite (or c!33385 c!33383) (tuple2!3465 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3639 thiss!1248)) (tuple2!3465 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3639 thiss!1248)))))))

(assert (= (and d!55115 res!88161) b!186386))

(assert (= (and b!186386 res!88160) b!186387))

(declare-fun m!213351 () Bool)

(assert (=> d!55115 m!213351))

(declare-fun m!213353 () Bool)

(assert (=> d!55115 m!213353))

(declare-fun m!213355 () Bool)

(assert (=> d!55115 m!213355))

(declare-fun m!213357 () Bool)

(assert (=> d!55115 m!213357))

(declare-fun m!213359 () Bool)

(assert (=> b!186386 m!213359))

(declare-fun m!213361 () Bool)

(assert (=> b!186387 m!213361))

(assert (=> bm!18782 d!55115))

(assert (=> d!55087 d!55081))

(declare-fun d!55117 () Bool)

(declare-fun e!122675 () Bool)

(assert (=> d!55117 e!122675))

(declare-fun res!88167 () Bool)

(assert (=> d!55117 (=> (not res!88167) (not e!122675))))

(declare-fun lt!92228 () SeekEntryResult!652)

(assert (=> d!55117 (= res!88167 ((_ is Found!652) lt!92228))))

(assert (=> d!55117 (= lt!92228 (seekEntryOrOpen!0 key!828 (_keys!5740 thiss!1248) (mask!8920 thiss!1248)))))

(assert (=> d!55117 true))

(declare-fun _$33!126 () Unit!5607)

(assert (=> d!55117 (= (choose!992 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) key!828 (defaultEntry!3798 thiss!1248)) _$33!126)))

(declare-fun b!186392 () Bool)

(declare-fun res!88166 () Bool)

(assert (=> b!186392 (=> (not res!88166) (not e!122675))))

(assert (=> b!186392 (= res!88166 (inRange!0 (index!4779 lt!92228) (mask!8920 thiss!1248)))))

(declare-fun b!186393 () Bool)

(assert (=> b!186393 (= e!122675 (= (select (arr!3748 (_keys!5740 thiss!1248)) (index!4779 lt!92228)) key!828))))

(assert (= (and d!55117 res!88167) b!186392))

(assert (= (and b!186392 res!88166) b!186393))

(assert (=> d!55117 m!213165))

(declare-fun m!213363 () Bool)

(assert (=> b!186392 m!213363))

(declare-fun m!213365 () Bool)

(assert (=> b!186393 m!213365))

(assert (=> d!55087 d!55117))

(assert (=> d!55087 d!55093))

(declare-fun d!55119 () Bool)

(declare-fun get!2153 (Option!230) V!5467)

(assert (=> d!55119 (= (apply!168 lt!92172 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2153 (getValueByKey!224 (toList!1213 lt!92172) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7533 () Bool)

(assert (= bs!7533 d!55119))

(declare-fun m!213367 () Bool)

(assert (=> bs!7533 m!213367))

(assert (=> bs!7533 m!213367))

(declare-fun m!213369 () Bool)

(assert (=> bs!7533 m!213369))

(assert (=> b!186265 d!55119))

(declare-fun d!55121 () Bool)

(declare-fun res!88172 () Bool)

(declare-fun e!122680 () Bool)

(assert (=> d!55121 (=> res!88172 e!122680)))

(assert (=> d!55121 (= res!88172 (and ((_ is Cons!2390) (toList!1213 (getCurrentListMap!856 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3798 thiss!1248)))) (= (_1!1742 (h!3023 (toList!1213 (getCurrentListMap!856 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3798 thiss!1248))))) key!828)))))

(assert (=> d!55121 (= (containsKey!228 (toList!1213 (getCurrentListMap!856 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3798 thiss!1248))) key!828) e!122680)))

(declare-fun b!186398 () Bool)

(declare-fun e!122681 () Bool)

(assert (=> b!186398 (= e!122680 e!122681)))

(declare-fun res!88173 () Bool)

(assert (=> b!186398 (=> (not res!88173) (not e!122681))))

(assert (=> b!186398 (= res!88173 (and (or (not ((_ is Cons!2390) (toList!1213 (getCurrentListMap!856 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3798 thiss!1248))))) (bvsle (_1!1742 (h!3023 (toList!1213 (getCurrentListMap!856 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3798 thiss!1248))))) key!828)) ((_ is Cons!2390) (toList!1213 (getCurrentListMap!856 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3798 thiss!1248)))) (bvslt (_1!1742 (h!3023 (toList!1213 (getCurrentListMap!856 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3798 thiss!1248))))) key!828)))))

(declare-fun b!186399 () Bool)

(assert (=> b!186399 (= e!122681 (containsKey!228 (t!7288 (toList!1213 (getCurrentListMap!856 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3798 thiss!1248)))) key!828))))

(assert (= (and d!55121 (not res!88172)) b!186398))

(assert (= (and b!186398 res!88173) b!186399))

(declare-fun m!213371 () Bool)

(assert (=> b!186399 m!213371))

(assert (=> d!55095 d!55121))

(assert (=> b!186264 d!55103))

(declare-fun d!55123 () Bool)

(assert (=> d!55123 (= (inRange!0 (ite c!33393 (index!4778 lt!92178) (index!4781 lt!92178)) (mask!8920 thiss!1248)) (and (bvsge (ite c!33393 (index!4778 lt!92178) (index!4781 lt!92178)) #b00000000000000000000000000000000) (bvslt (ite c!33393 (index!4778 lt!92178) (index!4781 lt!92178)) (bvadd (mask!8920 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> bm!18788 d!55123))

(declare-fun d!55125 () Bool)

(declare-fun res!88178 () Bool)

(declare-fun e!122686 () Bool)

(assert (=> d!55125 (=> res!88178 e!122686)))

(assert (=> d!55125 (= res!88178 (= (select (arr!3748 (_keys!5740 thiss!1248)) #b00000000000000000000000000000000) key!828))))

(assert (=> d!55125 (= (arrayContainsKey!0 (_keys!5740 thiss!1248) key!828 #b00000000000000000000000000000000) e!122686)))

(declare-fun b!186404 () Bool)

(declare-fun e!122687 () Bool)

(assert (=> b!186404 (= e!122686 e!122687)))

(declare-fun res!88179 () Bool)

(assert (=> b!186404 (=> (not res!88179) (not e!122687))))

(assert (=> b!186404 (= res!88179 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4064 (_keys!5740 thiss!1248))))))

(declare-fun b!186405 () Bool)

(assert (=> b!186405 (= e!122687 (arrayContainsKey!0 (_keys!5740 thiss!1248) key!828 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!55125 (not res!88178)) b!186404))

(assert (= (and b!186404 res!88179) b!186405))

(assert (=> d!55125 m!213243))

(declare-fun m!213373 () Bool)

(assert (=> b!186405 m!213373))

(assert (=> bm!18787 d!55125))

(declare-fun bm!18794 () Bool)

(declare-fun call!18797 () Bool)

(declare-fun c!33424 () Bool)

(assert (=> bm!18794 (= call!18797 (arrayNoDuplicates!0 (_keys!5740 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!33424 (Cons!2391 (select (arr!3748 (_keys!5740 thiss!1248)) #b00000000000000000000000000000000) Nil!2392) Nil!2392)))))

(declare-fun b!186416 () Bool)

(declare-fun e!122699 () Bool)

(declare-fun contains!1305 (List!2395 (_ BitVec 64)) Bool)

(assert (=> b!186416 (= e!122699 (contains!1305 Nil!2392 (select (arr!3748 (_keys!5740 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!186417 () Bool)

(declare-fun e!122697 () Bool)

(assert (=> b!186417 (= e!122697 call!18797)))

(declare-fun d!55127 () Bool)

(declare-fun res!88187 () Bool)

(declare-fun e!122696 () Bool)

(assert (=> d!55127 (=> res!88187 e!122696)))

(assert (=> d!55127 (= res!88187 (bvsge #b00000000000000000000000000000000 (size!4064 (_keys!5740 thiss!1248))))))

(assert (=> d!55127 (= (arrayNoDuplicates!0 (_keys!5740 thiss!1248) #b00000000000000000000000000000000 Nil!2392) e!122696)))

(declare-fun b!186418 () Bool)

(declare-fun e!122698 () Bool)

(assert (=> b!186418 (= e!122696 e!122698)))

(declare-fun res!88186 () Bool)

(assert (=> b!186418 (=> (not res!88186) (not e!122698))))

(assert (=> b!186418 (= res!88186 (not e!122699))))

(declare-fun res!88188 () Bool)

(assert (=> b!186418 (=> (not res!88188) (not e!122699))))

(assert (=> b!186418 (= res!88188 (validKeyInArray!0 (select (arr!3748 (_keys!5740 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!186419 () Bool)

(assert (=> b!186419 (= e!122697 call!18797)))

(declare-fun b!186420 () Bool)

(assert (=> b!186420 (= e!122698 e!122697)))

(assert (=> b!186420 (= c!33424 (validKeyInArray!0 (select (arr!3748 (_keys!5740 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!55127 (not res!88187)) b!186418))

(assert (= (and b!186418 res!88188) b!186416))

(assert (= (and b!186418 res!88186) b!186420))

(assert (= (and b!186420 c!33424) b!186417))

(assert (= (and b!186420 (not c!33424)) b!186419))

(assert (= (or b!186417 b!186419) bm!18794))

(assert (=> bm!18794 m!213243))

(declare-fun m!213375 () Bool)

(assert (=> bm!18794 m!213375))

(assert (=> b!186416 m!213243))

(assert (=> b!186416 m!213243))

(declare-fun m!213377 () Bool)

(assert (=> b!186416 m!213377))

(assert (=> b!186418 m!213243))

(assert (=> b!186418 m!213243))

(assert (=> b!186418 m!213289))

(assert (=> b!186420 m!213243))

(assert (=> b!186420 m!213243))

(assert (=> b!186420 m!213289))

(assert (=> b!186203 d!55127))

(declare-fun d!55129 () Bool)

(declare-fun e!122700 () Bool)

(assert (=> d!55129 e!122700))

(declare-fun res!88189 () Bool)

(assert (=> d!55129 (=> res!88189 e!122700)))

(declare-fun lt!92230 () Bool)

(assert (=> d!55129 (= res!88189 (not lt!92230))))

(declare-fun lt!92231 () Bool)

(assert (=> d!55129 (= lt!92230 lt!92231)))

(declare-fun lt!92232 () Unit!5607)

(declare-fun e!122701 () Unit!5607)

(assert (=> d!55129 (= lt!92232 e!122701)))

(declare-fun c!33425 () Bool)

(assert (=> d!55129 (= c!33425 lt!92231)))

(assert (=> d!55129 (= lt!92231 (containsKey!228 (toList!1213 lt!92172) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!55129 (= (contains!1303 lt!92172 #b1000000000000000000000000000000000000000000000000000000000000000) lt!92230)))

(declare-fun b!186421 () Bool)

(declare-fun lt!92229 () Unit!5607)

(assert (=> b!186421 (= e!122701 lt!92229)))

(assert (=> b!186421 (= lt!92229 (lemmaContainsKeyImpliesGetValueByKeyDefined!177 (toList!1213 lt!92172) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!186421 (isDefined!178 (getValueByKey!224 (toList!1213 lt!92172) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!186422 () Bool)

(declare-fun Unit!5615 () Unit!5607)

(assert (=> b!186422 (= e!122701 Unit!5615)))

(declare-fun b!186423 () Bool)

(assert (=> b!186423 (= e!122700 (isDefined!178 (getValueByKey!224 (toList!1213 lt!92172) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!55129 c!33425) b!186421))

(assert (= (and d!55129 (not c!33425)) b!186422))

(assert (= (and d!55129 (not res!88189)) b!186423))

(declare-fun m!213379 () Bool)

(assert (=> d!55129 m!213379))

(declare-fun m!213381 () Bool)

(assert (=> b!186421 m!213381))

(assert (=> b!186421 m!213367))

(assert (=> b!186421 m!213367))

(declare-fun m!213383 () Bool)

(assert (=> b!186421 m!213383))

(assert (=> b!186423 m!213367))

(assert (=> b!186423 m!213367))

(assert (=> b!186423 m!213383))

(assert (=> bm!18780 d!55129))

(declare-fun b!186432 () Bool)

(declare-fun e!122709 () Bool)

(declare-fun call!18800 () Bool)

(assert (=> b!186432 (= e!122709 call!18800)))

(declare-fun b!186433 () Bool)

(declare-fun e!122708 () Bool)

(assert (=> b!186433 (= e!122708 e!122709)))

(declare-fun lt!92240 () (_ BitVec 64))

(assert (=> b!186433 (= lt!92240 (select (arr!3748 (_keys!5740 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!92239 () Unit!5607)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7940 (_ BitVec 64) (_ BitVec 32)) Unit!5607)

(assert (=> b!186433 (= lt!92239 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5740 thiss!1248) lt!92240 #b00000000000000000000000000000000))))

(assert (=> b!186433 (arrayContainsKey!0 (_keys!5740 thiss!1248) lt!92240 #b00000000000000000000000000000000)))

(declare-fun lt!92241 () Unit!5607)

(assert (=> b!186433 (= lt!92241 lt!92239)))

(declare-fun res!88194 () Bool)

(assert (=> b!186433 (= res!88194 (= (seekEntryOrOpen!0 (select (arr!3748 (_keys!5740 thiss!1248)) #b00000000000000000000000000000000) (_keys!5740 thiss!1248) (mask!8920 thiss!1248)) (Found!652 #b00000000000000000000000000000000)))))

(assert (=> b!186433 (=> (not res!88194) (not e!122709))))

(declare-fun bm!18797 () Bool)

(assert (=> bm!18797 (= call!18800 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5740 thiss!1248) (mask!8920 thiss!1248)))))

(declare-fun b!186434 () Bool)

(assert (=> b!186434 (= e!122708 call!18800)))

(declare-fun b!186435 () Bool)

(declare-fun e!122710 () Bool)

(assert (=> b!186435 (= e!122710 e!122708)))

(declare-fun c!33428 () Bool)

(assert (=> b!186435 (= c!33428 (validKeyInArray!0 (select (arr!3748 (_keys!5740 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!55131 () Bool)

(declare-fun res!88195 () Bool)

(assert (=> d!55131 (=> res!88195 e!122710)))

(assert (=> d!55131 (= res!88195 (bvsge #b00000000000000000000000000000000 (size!4064 (_keys!5740 thiss!1248))))))

(assert (=> d!55131 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5740 thiss!1248) (mask!8920 thiss!1248)) e!122710)))

(assert (= (and d!55131 (not res!88195)) b!186435))

(assert (= (and b!186435 c!33428) b!186433))

(assert (= (and b!186435 (not c!33428)) b!186434))

(assert (= (and b!186433 res!88194) b!186432))

(assert (= (or b!186432 b!186434) bm!18797))

(assert (=> b!186433 m!213243))

(declare-fun m!213385 () Bool)

(assert (=> b!186433 m!213385))

(declare-fun m!213387 () Bool)

(assert (=> b!186433 m!213387))

(assert (=> b!186433 m!213243))

(declare-fun m!213389 () Bool)

(assert (=> b!186433 m!213389))

(declare-fun m!213391 () Bool)

(assert (=> bm!18797 m!213391))

(assert (=> b!186435 m!213243))

(assert (=> b!186435 m!213243))

(assert (=> b!186435 m!213289))

(assert (=> b!186202 d!55131))

(assert (=> d!55097 d!55093))

(declare-fun bm!18800 () Bool)

(declare-fun call!18803 () (_ BitVec 32))

(assert (=> bm!18800 (= call!18803 (arrayCountValidKeys!0 (_keys!5740 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4064 (_keys!5740 thiss!1248))))))

(declare-fun b!186444 () Bool)

(declare-fun e!122716 () (_ BitVec 32))

(declare-fun e!122715 () (_ BitVec 32))

(assert (=> b!186444 (= e!122716 e!122715)))

(declare-fun c!33434 () Bool)

(assert (=> b!186444 (= c!33434 (validKeyInArray!0 (select (arr!3748 (_keys!5740 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!186445 () Bool)

(assert (=> b!186445 (= e!122716 #b00000000000000000000000000000000)))

(declare-fun d!55133 () Bool)

(declare-fun lt!92244 () (_ BitVec 32))

(assert (=> d!55133 (and (bvsge lt!92244 #b00000000000000000000000000000000) (bvsle lt!92244 (bvsub (size!4064 (_keys!5740 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!55133 (= lt!92244 e!122716)))

(declare-fun c!33433 () Bool)

(assert (=> d!55133 (= c!33433 (bvsge #b00000000000000000000000000000000 (size!4064 (_keys!5740 thiss!1248))))))

(assert (=> d!55133 (and (bvsle #b00000000000000000000000000000000 (size!4064 (_keys!5740 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!4064 (_keys!5740 thiss!1248)) (size!4064 (_keys!5740 thiss!1248))))))

(assert (=> d!55133 (= (arrayCountValidKeys!0 (_keys!5740 thiss!1248) #b00000000000000000000000000000000 (size!4064 (_keys!5740 thiss!1248))) lt!92244)))

(declare-fun b!186446 () Bool)

(assert (=> b!186446 (= e!122715 call!18803)))

(declare-fun b!186447 () Bool)

(assert (=> b!186447 (= e!122715 (bvadd #b00000000000000000000000000000001 call!18803))))

(assert (= (and d!55133 c!33433) b!186445))

(assert (= (and d!55133 (not c!33433)) b!186444))

(assert (= (and b!186444 c!33434) b!186447))

(assert (= (and b!186444 (not c!33434)) b!186446))

(assert (= (or b!186447 b!186446) bm!18800))

(declare-fun m!213393 () Bool)

(assert (=> bm!18800 m!213393))

(assert (=> b!186444 m!213243))

(assert (=> b!186444 m!213243))

(assert (=> b!186444 m!213289))

(assert (=> b!186201 d!55133))

(assert (=> d!55099 d!55081))

(declare-fun bm!18805 () Bool)

(declare-fun call!18809 () Bool)

(assert (=> bm!18805 (= call!18809 (arrayContainsKey!0 (_keys!5740 thiss!1248) key!828 #b00000000000000000000000000000000))))

(declare-fun call!18808 () Bool)

(declare-fun lt!92247 () SeekEntryResult!652)

(declare-fun c!33440 () Bool)

(declare-fun bm!18806 () Bool)

(assert (=> bm!18806 (= call!18808 (inRange!0 (ite c!33440 (index!4778 lt!92247) (index!4781 lt!92247)) (mask!8920 thiss!1248)))))

(declare-fun d!55135 () Bool)

(declare-fun e!122727 () Bool)

(assert (=> d!55135 e!122727))

(assert (=> d!55135 (= c!33440 ((_ is MissingZero!652) lt!92247))))

(assert (=> d!55135 (= lt!92247 (seekEntryOrOpen!0 key!828 (_keys!5740 thiss!1248) (mask!8920 thiss!1248)))))

(assert (=> d!55135 true))

(declare-fun _$34!1060 () Unit!5607)

(assert (=> d!55135 (= (choose!993 (_keys!5740 thiss!1248) (_values!3781 thiss!1248) (mask!8920 thiss!1248) (extraKeys!3535 thiss!1248) (zeroValue!3639 thiss!1248) (minValue!3639 thiss!1248) key!828 (defaultEntry!3798 thiss!1248)) _$34!1060)))

(declare-fun b!186464 () Bool)

(declare-fun res!88207 () Bool)

(declare-fun e!122725 () Bool)

(assert (=> b!186464 (=> (not res!88207) (not e!122725))))

(assert (=> b!186464 (= res!88207 call!18808)))

(declare-fun e!122728 () Bool)

(assert (=> b!186464 (= e!122728 e!122725)))

(declare-fun b!186465 () Bool)

(assert (=> b!186465 (= e!122725 (not call!18809))))

(declare-fun b!186466 () Bool)

(declare-fun e!122726 () Bool)

(assert (=> b!186466 (= e!122727 e!122726)))

(declare-fun res!88205 () Bool)

(assert (=> b!186466 (= res!88205 call!18808)))

(assert (=> b!186466 (=> (not res!88205) (not e!122726))))

(declare-fun b!186467 () Bool)

(declare-fun res!88204 () Bool)

(assert (=> b!186467 (= res!88204 (= (select (arr!3748 (_keys!5740 thiss!1248)) (index!4778 lt!92247)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!186467 (=> (not res!88204) (not e!122726))))

(declare-fun b!186468 () Bool)

(declare-fun res!88206 () Bool)

(assert (=> b!186468 (=> (not res!88206) (not e!122725))))

(assert (=> b!186468 (= res!88206 (= (select (arr!3748 (_keys!5740 thiss!1248)) (index!4781 lt!92247)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!186469 () Bool)

(assert (=> b!186469 (= e!122726 (not call!18809))))

(declare-fun b!186470 () Bool)

(assert (=> b!186470 (= e!122728 ((_ is Undefined!652) lt!92247))))

(declare-fun b!186471 () Bool)

(assert (=> b!186471 (= e!122727 e!122728)))

(declare-fun c!33439 () Bool)

(assert (=> b!186471 (= c!33439 ((_ is MissingVacant!652) lt!92247))))

(assert (= (and d!55135 c!33440) b!186466))

(assert (= (and d!55135 (not c!33440)) b!186471))

(assert (= (and b!186466 res!88205) b!186467))

(assert (= (and b!186467 res!88204) b!186469))

(assert (= (and b!186471 c!33439) b!186464))

(assert (= (and b!186471 (not c!33439)) b!186470))

(assert (= (and b!186464 res!88207) b!186468))

(assert (= (and b!186468 res!88206) b!186465))

(assert (= (or b!186466 b!186464) bm!18806))

(assert (= (or b!186469 b!186465) bm!18805))

(assert (=> bm!18805 m!213295))

(declare-fun m!213395 () Bool)

(assert (=> bm!18806 m!213395))

(declare-fun m!213397 () Bool)

(assert (=> b!186467 m!213397))

(declare-fun m!213399 () Bool)

(assert (=> b!186468 m!213399))

(assert (=> d!55135 m!213165))

(assert (=> d!55099 d!55135))

(assert (=> d!55099 d!55093))

(declare-fun b!186483 () Bool)

(declare-fun e!122731 () Bool)

(assert (=> b!186483 (= e!122731 (and (bvsge (extraKeys!3535 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3535 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!1342 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!186480 () Bool)

(declare-fun res!88218 () Bool)

(assert (=> b!186480 (=> (not res!88218) (not e!122731))))

(assert (=> b!186480 (= res!88218 (and (= (size!4065 (_values!3781 thiss!1248)) (bvadd (mask!8920 thiss!1248) #b00000000000000000000000000000001)) (= (size!4064 (_keys!5740 thiss!1248)) (size!4065 (_values!3781 thiss!1248))) (bvsge (_size!1342 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!1342 thiss!1248) (bvadd (mask!8920 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun b!186481 () Bool)

(declare-fun res!88217 () Bool)

(assert (=> b!186481 (=> (not res!88217) (not e!122731))))

(declare-fun size!4068 (LongMapFixedSize!2586) (_ BitVec 32))

(assert (=> b!186481 (= res!88217 (bvsge (size!4068 thiss!1248) (_size!1342 thiss!1248)))))

(declare-fun b!186482 () Bool)

(declare-fun res!88216 () Bool)

(assert (=> b!186482 (=> (not res!88216) (not e!122731))))

(assert (=> b!186482 (= res!88216 (= (size!4068 thiss!1248) (bvadd (_size!1342 thiss!1248) (bvsdiv (bvadd (extraKeys!3535 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!55137 () Bool)

(declare-fun res!88219 () Bool)

(assert (=> d!55137 (=> (not res!88219) (not e!122731))))

(assert (=> d!55137 (= res!88219 (validMask!0 (mask!8920 thiss!1248)))))

(assert (=> d!55137 (= (simpleValid!183 thiss!1248) e!122731)))

(assert (= (and d!55137 res!88219) b!186480))

(assert (= (and b!186480 res!88218) b!186481))

(assert (= (and b!186481 res!88217) b!186482))

(assert (= (and b!186482 res!88216) b!186483))

(declare-fun m!213401 () Bool)

(assert (=> b!186481 m!213401))

(assert (=> b!186482 m!213401))

(assert (=> d!55137 m!213159))

(assert (=> d!55091 d!55137))

(declare-fun d!55139 () Bool)

(assert (=> d!55139 (= (apply!168 lt!92172 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2153 (getValueByKey!224 (toList!1213 lt!92172) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7534 () Bool)

(assert (= bs!7534 d!55139))

(assert (=> bs!7534 m!213311))

(assert (=> bs!7534 m!213311))

(declare-fun m!213403 () Bool)

(assert (=> bs!7534 m!213403))

(assert (=> b!186268 d!55139))

(declare-fun d!55141 () Bool)

(declare-fun e!122732 () Bool)

(assert (=> d!55141 e!122732))

(declare-fun res!88221 () Bool)

(assert (=> d!55141 (=> (not res!88221) (not e!122732))))

(declare-fun lt!92250 () ListLongMap!2395)

(assert (=> d!55141 (= res!88221 (contains!1303 lt!92250 (_1!1742 (tuple2!3465 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3639 thiss!1248)))))))

(declare-fun lt!92249 () List!2394)

(assert (=> d!55141 (= lt!92250 (ListLongMap!2396 lt!92249))))

(declare-fun lt!92251 () Unit!5607)

(declare-fun lt!92248 () Unit!5607)

(assert (=> d!55141 (= lt!92251 lt!92248)))

(assert (=> d!55141 (= (getValueByKey!224 lt!92249 (_1!1742 (tuple2!3465 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3639 thiss!1248)))) (Some!229 (_2!1742 (tuple2!3465 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3639 thiss!1248)))))))

(assert (=> d!55141 (= lt!92248 (lemmaContainsTupThenGetReturnValue!118 lt!92249 (_1!1742 (tuple2!3465 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3639 thiss!1248))) (_2!1742 (tuple2!3465 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3639 thiss!1248)))))))

(assert (=> d!55141 (= lt!92249 (insertStrictlySorted!120 (toList!1213 call!18781) (_1!1742 (tuple2!3465 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3639 thiss!1248))) (_2!1742 (tuple2!3465 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3639 thiss!1248)))))))

(assert (=> d!55141 (= (+!283 call!18781 (tuple2!3465 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3639 thiss!1248))) lt!92250)))

(declare-fun b!186484 () Bool)

(declare-fun res!88220 () Bool)

(assert (=> b!186484 (=> (not res!88220) (not e!122732))))

(assert (=> b!186484 (= res!88220 (= (getValueByKey!224 (toList!1213 lt!92250) (_1!1742 (tuple2!3465 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3639 thiss!1248)))) (Some!229 (_2!1742 (tuple2!3465 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3639 thiss!1248))))))))

(declare-fun b!186485 () Bool)

(assert (=> b!186485 (= e!122732 (contains!1304 (toList!1213 lt!92250) (tuple2!3465 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3639 thiss!1248))))))

(assert (= (and d!55141 res!88221) b!186484))

(assert (= (and b!186484 res!88220) b!186485))

(declare-fun m!213405 () Bool)

(assert (=> d!55141 m!213405))

(declare-fun m!213407 () Bool)

(assert (=> d!55141 m!213407))

(declare-fun m!213409 () Bool)

(assert (=> d!55141 m!213409))

(declare-fun m!213411 () Bool)

(assert (=> d!55141 m!213411))

(declare-fun m!213413 () Bool)

(assert (=> b!186484 m!213413))

(declare-fun m!213415 () Bool)

(assert (=> b!186485 m!213415))

(assert (=> b!186259 d!55141))

(declare-fun d!55143 () Bool)

(assert (=> d!55143 (= (apply!168 (+!283 lt!92161 (tuple2!3465 lt!92167 (minValue!3639 thiss!1248))) lt!92155) (apply!168 lt!92161 lt!92155))))

(declare-fun lt!92254 () Unit!5607)

(declare-fun choose!995 (ListLongMap!2395 (_ BitVec 64) V!5467 (_ BitVec 64)) Unit!5607)

(assert (=> d!55143 (= lt!92254 (choose!995 lt!92161 lt!92167 (minValue!3639 thiss!1248) lt!92155))))

(declare-fun e!122735 () Bool)

(assert (=> d!55143 e!122735))

(declare-fun res!88224 () Bool)

(assert (=> d!55143 (=> (not res!88224) (not e!122735))))

(assert (=> d!55143 (= res!88224 (contains!1303 lt!92161 lt!92155))))

(assert (=> d!55143 (= (addApplyDifferent!144 lt!92161 lt!92167 (minValue!3639 thiss!1248) lt!92155) lt!92254)))

(declare-fun b!186489 () Bool)

(assert (=> b!186489 (= e!122735 (not (= lt!92155 lt!92167)))))

(assert (= (and d!55143 res!88224) b!186489))

(declare-fun m!213417 () Bool)

(assert (=> d!55143 m!213417))

(assert (=> d!55143 m!213259))

(declare-fun m!213419 () Bool)

(assert (=> d!55143 m!213419))

(assert (=> d!55143 m!213255))

(assert (=> d!55143 m!213257))

(assert (=> d!55143 m!213255))

(assert (=> b!186258 d!55143))

(assert (=> b!186258 d!55111))

(declare-fun d!55145 () Bool)

(declare-fun e!122736 () Bool)

(assert (=> d!55145 e!122736))

(declare-fun res!88226 () Bool)

(assert (=> d!55145 (=> (not res!88226) (not e!122736))))

(declare-fun lt!92257 () ListLongMap!2395)

(assert (=> d!55145 (= res!88226 (contains!1303 lt!92257 (_1!1742 (tuple2!3465 lt!92167 (minValue!3639 thiss!1248)))))))

(declare-fun lt!92256 () List!2394)

(assert (=> d!55145 (= lt!92257 (ListLongMap!2396 lt!92256))))

(declare-fun lt!92258 () Unit!5607)

(declare-fun lt!92255 () Unit!5607)

(assert (=> d!55145 (= lt!92258 lt!92255)))

(assert (=> d!55145 (= (getValueByKey!224 lt!92256 (_1!1742 (tuple2!3465 lt!92167 (minValue!3639 thiss!1248)))) (Some!229 (_2!1742 (tuple2!3465 lt!92167 (minValue!3639 thiss!1248)))))))

(assert (=> d!55145 (= lt!92255 (lemmaContainsTupThenGetReturnValue!118 lt!92256 (_1!1742 (tuple2!3465 lt!92167 (minValue!3639 thiss!1248))) (_2!1742 (tuple2!3465 lt!92167 (minValue!3639 thiss!1248)))))))

(assert (=> d!55145 (= lt!92256 (insertStrictlySorted!120 (toList!1213 lt!92161) (_1!1742 (tuple2!3465 lt!92167 (minValue!3639 thiss!1248))) (_2!1742 (tuple2!3465 lt!92167 (minValue!3639 thiss!1248)))))))

(assert (=> d!55145 (= (+!283 lt!92161 (tuple2!3465 lt!92167 (minValue!3639 thiss!1248))) lt!92257)))

(declare-fun b!186490 () Bool)

(declare-fun res!88225 () Bool)

(assert (=> b!186490 (=> (not res!88225) (not e!122736))))

(assert (=> b!186490 (= res!88225 (= (getValueByKey!224 (toList!1213 lt!92257) (_1!1742 (tuple2!3465 lt!92167 (minValue!3639 thiss!1248)))) (Some!229 (_2!1742 (tuple2!3465 lt!92167 (minValue!3639 thiss!1248))))))))

(declare-fun b!186491 () Bool)

(assert (=> b!186491 (= e!122736 (contains!1304 (toList!1213 lt!92257) (tuple2!3465 lt!92167 (minValue!3639 thiss!1248))))))

(assert (= (and d!55145 res!88226) b!186490))

(assert (= (and b!186490 res!88225) b!186491))

(declare-fun m!213421 () Bool)

(assert (=> d!55145 m!213421))

(declare-fun m!213423 () Bool)

(assert (=> d!55145 m!213423))

(declare-fun m!213425 () Bool)

(assert (=> d!55145 m!213425))

(declare-fun m!213427 () Bool)

(assert (=> d!55145 m!213427))

(declare-fun m!213429 () Bool)

(assert (=> b!186490 m!213429))

(declare-fun m!213431 () Bool)

(assert (=> b!186491 m!213431))

(assert (=> b!186258 d!55145))

(declare-fun d!55147 () Bool)

(declare-fun e!122737 () Bool)

(assert (=> d!55147 e!122737))

(declare-fun res!88227 () Bool)

(assert (=> d!55147 (=> res!88227 e!122737)))

(declare-fun lt!92260 () Bool)

(assert (=> d!55147 (= res!88227 (not lt!92260))))

(declare-fun lt!92261 () Bool)

(assert (=> d!55147 (= lt!92260 lt!92261)))

(declare-fun lt!92262 () Unit!5607)

(declare-fun e!122738 () Unit!5607)

(assert (=> d!55147 (= lt!92262 e!122738)))

(declare-fun c!33441 () Bool)

(assert (=> d!55147 (= c!33441 lt!92261)))

(assert (=> d!55147 (= lt!92261 (containsKey!228 (toList!1213 (+!283 lt!92173 (tuple2!3465 lt!92170 (zeroValue!3639 thiss!1248)))) lt!92164))))

(assert (=> d!55147 (= (contains!1303 (+!283 lt!92173 (tuple2!3465 lt!92170 (zeroValue!3639 thiss!1248))) lt!92164) lt!92260)))

(declare-fun b!186492 () Bool)

(declare-fun lt!92259 () Unit!5607)

(assert (=> b!186492 (= e!122738 lt!92259)))

(assert (=> b!186492 (= lt!92259 (lemmaContainsKeyImpliesGetValueByKeyDefined!177 (toList!1213 (+!283 lt!92173 (tuple2!3465 lt!92170 (zeroValue!3639 thiss!1248)))) lt!92164))))

(assert (=> b!186492 (isDefined!178 (getValueByKey!224 (toList!1213 (+!283 lt!92173 (tuple2!3465 lt!92170 (zeroValue!3639 thiss!1248)))) lt!92164))))

(declare-fun b!186493 () Bool)

(declare-fun Unit!5616 () Unit!5607)

(assert (=> b!186493 (= e!122738 Unit!5616)))

(declare-fun b!186494 () Bool)

(assert (=> b!186494 (= e!122737 (isDefined!178 (getValueByKey!224 (toList!1213 (+!283 lt!92173 (tuple2!3465 lt!92170 (zeroValue!3639 thiss!1248)))) lt!92164)))))

(assert (= (and d!55147 c!33441) b!186492))

(assert (= (and d!55147 (not c!33441)) b!186493))

(assert (= (and d!55147 (not res!88227)) b!186494))

(declare-fun m!213433 () Bool)

(assert (=> d!55147 m!213433))

(declare-fun m!213435 () Bool)

(assert (=> b!186492 m!213435))

(declare-fun m!213437 () Bool)

(assert (=> b!186492 m!213437))

(assert (=> b!186492 m!213437))

(declare-fun m!213439 () Bool)

(assert (=> b!186492 m!213439))

(assert (=> b!186494 m!213437))

(assert (=> b!186494 m!213437))

(assert (=> b!186494 m!213439))

(assert (=> b!186258 d!55147))

(declare-fun d!55149 () Bool)

(declare-fun e!122739 () Bool)

(assert (=> d!55149 e!122739))

(declare-fun res!88229 () Bool)

(assert (=> d!55149 (=> (not res!88229) (not e!122739))))

(declare-fun lt!92265 () ListLongMap!2395)

(assert (=> d!55149 (= res!88229 (contains!1303 lt!92265 (_1!1742 (tuple2!3465 lt!92169 (minValue!3639 thiss!1248)))))))

(declare-fun lt!92264 () List!2394)

(assert (=> d!55149 (= lt!92265 (ListLongMap!2396 lt!92264))))

(declare-fun lt!92266 () Unit!5607)

(declare-fun lt!92263 () Unit!5607)

(assert (=> d!55149 (= lt!92266 lt!92263)))

(assert (=> d!55149 (= (getValueByKey!224 lt!92264 (_1!1742 (tuple2!3465 lt!92169 (minValue!3639 thiss!1248)))) (Some!229 (_2!1742 (tuple2!3465 lt!92169 (minValue!3639 thiss!1248)))))))

(assert (=> d!55149 (= lt!92263 (lemmaContainsTupThenGetReturnValue!118 lt!92264 (_1!1742 (tuple2!3465 lt!92169 (minValue!3639 thiss!1248))) (_2!1742 (tuple2!3465 lt!92169 (minValue!3639 thiss!1248)))))))

(assert (=> d!55149 (= lt!92264 (insertStrictlySorted!120 (toList!1213 lt!92158) (_1!1742 (tuple2!3465 lt!92169 (minValue!3639 thiss!1248))) (_2!1742 (tuple2!3465 lt!92169 (minValue!3639 thiss!1248)))))))

(assert (=> d!55149 (= (+!283 lt!92158 (tuple2!3465 lt!92169 (minValue!3639 thiss!1248))) lt!92265)))

(declare-fun b!186495 () Bool)

(declare-fun res!88228 () Bool)

(assert (=> b!186495 (=> (not res!88228) (not e!122739))))

(assert (=> b!186495 (= res!88228 (= (getValueByKey!224 (toList!1213 lt!92265) (_1!1742 (tuple2!3465 lt!92169 (minValue!3639 thiss!1248)))) (Some!229 (_2!1742 (tuple2!3465 lt!92169 (minValue!3639 thiss!1248))))))))

(declare-fun b!186496 () Bool)

(assert (=> b!186496 (= e!122739 (contains!1304 (toList!1213 lt!92265) (tuple2!3465 lt!92169 (minValue!3639 thiss!1248))))))

(assert (= (and d!55149 res!88229) b!186495))

(assert (= (and b!186495 res!88228) b!186496))

(declare-fun m!213441 () Bool)

(assert (=> d!55149 m!213441))

(declare-fun m!213443 () Bool)

(assert (=> d!55149 m!213443))

(declare-fun m!213445 () Bool)

(assert (=> d!55149 m!213445))

(declare-fun m!213447 () Bool)

(assert (=> d!55149 m!213447))

(declare-fun m!213449 () Bool)

(assert (=> b!186495 m!213449))

(declare-fun m!213451 () Bool)

(assert (=> b!186496 m!213451))

(assert (=> b!186258 d!55149))

(declare-fun d!55151 () Bool)

(declare-fun e!122740 () Bool)

(assert (=> d!55151 e!122740))

(declare-fun res!88231 () Bool)

(assert (=> d!55151 (=> (not res!88231) (not e!122740))))

(declare-fun lt!92269 () ListLongMap!2395)

(assert (=> d!55151 (= res!88231 (contains!1303 lt!92269 (_1!1742 (tuple2!3465 lt!92170 (zeroValue!3639 thiss!1248)))))))

(declare-fun lt!92268 () List!2394)

(assert (=> d!55151 (= lt!92269 (ListLongMap!2396 lt!92268))))

(declare-fun lt!92270 () Unit!5607)

(declare-fun lt!92267 () Unit!5607)

(assert (=> d!55151 (= lt!92270 lt!92267)))

(assert (=> d!55151 (= (getValueByKey!224 lt!92268 (_1!1742 (tuple2!3465 lt!92170 (zeroValue!3639 thiss!1248)))) (Some!229 (_2!1742 (tuple2!3465 lt!92170 (zeroValue!3639 thiss!1248)))))))

(assert (=> d!55151 (= lt!92267 (lemmaContainsTupThenGetReturnValue!118 lt!92268 (_1!1742 (tuple2!3465 lt!92170 (zeroValue!3639 thiss!1248))) (_2!1742 (tuple2!3465 lt!92170 (zeroValue!3639 thiss!1248)))))))

(assert (=> d!55151 (= lt!92268 (insertStrictlySorted!120 (toList!1213 lt!92173) (_1!1742 (tuple2!3465 lt!92170 (zeroValue!3639 thiss!1248))) (_2!1742 (tuple2!3465 lt!92170 (zeroValue!3639 thiss!1248)))))))

(assert (=> d!55151 (= (+!283 lt!92173 (tuple2!3465 lt!92170 (zeroValue!3639 thiss!1248))) lt!92269)))

(declare-fun b!186497 () Bool)

(declare-fun res!88230 () Bool)

(assert (=> b!186497 (=> (not res!88230) (not e!122740))))

(assert (=> b!186497 (= res!88230 (= (getValueByKey!224 (toList!1213 lt!92269) (_1!1742 (tuple2!3465 lt!92170 (zeroValue!3639 thiss!1248)))) (Some!229 (_2!1742 (tuple2!3465 lt!92170 (zeroValue!3639 thiss!1248))))))))

(declare-fun b!186498 () Bool)

(assert (=> b!186498 (= e!122740 (contains!1304 (toList!1213 lt!92269) (tuple2!3465 lt!92170 (zeroValue!3639 thiss!1248))))))

(assert (= (and d!55151 res!88231) b!186497))

(assert (= (and b!186497 res!88230) b!186498))

(declare-fun m!213453 () Bool)

(assert (=> d!55151 m!213453))

(declare-fun m!213455 () Bool)

(assert (=> d!55151 m!213455))

(declare-fun m!213457 () Bool)

(assert (=> d!55151 m!213457))

(declare-fun m!213459 () Bool)

(assert (=> d!55151 m!213459))

(declare-fun m!213461 () Bool)

(assert (=> b!186497 m!213461))

(declare-fun m!213463 () Bool)

(assert (=> b!186498 m!213463))

(assert (=> b!186258 d!55151))

(declare-fun d!55153 () Bool)

(assert (=> d!55153 (= (apply!168 lt!92171 lt!92160) (get!2153 (getValueByKey!224 (toList!1213 lt!92171) lt!92160)))))

(declare-fun bs!7535 () Bool)

(assert (= bs!7535 d!55153))

(declare-fun m!213465 () Bool)

(assert (=> bs!7535 m!213465))

(assert (=> bs!7535 m!213465))

(declare-fun m!213467 () Bool)

(assert (=> bs!7535 m!213467))

(assert (=> b!186258 d!55153))

(declare-fun d!55155 () Bool)

(assert (=> d!55155 (= (apply!168 (+!283 lt!92161 (tuple2!3465 lt!92167 (minValue!3639 thiss!1248))) lt!92155) (get!2153 (getValueByKey!224 (toList!1213 (+!283 lt!92161 (tuple2!3465 lt!92167 (minValue!3639 thiss!1248)))) lt!92155)))))

(declare-fun bs!7536 () Bool)

(assert (= bs!7536 d!55155))

(declare-fun m!213469 () Bool)

(assert (=> bs!7536 m!213469))

(assert (=> bs!7536 m!213469))

(declare-fun m!213471 () Bool)

(assert (=> bs!7536 m!213471))

(assert (=> b!186258 d!55155))

(declare-fun d!55157 () Bool)

(assert (=> d!55157 (= (apply!168 (+!283 lt!92171 (tuple2!3465 lt!92152 (zeroValue!3639 thiss!1248))) lt!92160) (apply!168 lt!92171 lt!92160))))

(declare-fun lt!92271 () Unit!5607)

(assert (=> d!55157 (= lt!92271 (choose!995 lt!92171 lt!92152 (zeroValue!3639 thiss!1248) lt!92160))))

(declare-fun e!122741 () Bool)

(assert (=> d!55157 e!122741))

(declare-fun res!88232 () Bool)

(assert (=> d!55157 (=> (not res!88232) (not e!122741))))

(assert (=> d!55157 (= res!88232 (contains!1303 lt!92171 lt!92160))))

(assert (=> d!55157 (= (addApplyDifferent!144 lt!92171 lt!92152 (zeroValue!3639 thiss!1248) lt!92160) lt!92271)))

(declare-fun b!186499 () Bool)

(assert (=> b!186499 (= e!122741 (not (= lt!92160 lt!92152)))))

(assert (= (and d!55157 res!88232) b!186499))

(declare-fun m!213473 () Bool)

(assert (=> d!55157 m!213473))

(assert (=> d!55157 m!213271))

(declare-fun m!213475 () Bool)

(assert (=> d!55157 m!213475))

(assert (=> d!55157 m!213265))

(assert (=> d!55157 m!213267))

(assert (=> d!55157 m!213265))

(assert (=> b!186258 d!55157))

(declare-fun d!55159 () Bool)

(assert (=> d!55159 (= (apply!168 (+!283 lt!92158 (tuple2!3465 lt!92169 (minValue!3639 thiss!1248))) lt!92166) (get!2153 (getValueByKey!224 (toList!1213 (+!283 lt!92158 (tuple2!3465 lt!92169 (minValue!3639 thiss!1248)))) lt!92166)))))

(declare-fun bs!7537 () Bool)

(assert (= bs!7537 d!55159))

(declare-fun m!213477 () Bool)

(assert (=> bs!7537 m!213477))

(assert (=> bs!7537 m!213477))

(declare-fun m!213479 () Bool)

(assert (=> bs!7537 m!213479))

(assert (=> b!186258 d!55159))

(declare-fun d!55161 () Bool)

(assert (=> d!55161 (= (apply!168 lt!92161 lt!92155) (get!2153 (getValueByKey!224 (toList!1213 lt!92161) lt!92155)))))

(declare-fun bs!7538 () Bool)

(assert (= bs!7538 d!55161))

(declare-fun m!213481 () Bool)

(assert (=> bs!7538 m!213481))

(assert (=> bs!7538 m!213481))

(declare-fun m!213483 () Bool)

(assert (=> bs!7538 m!213483))

(assert (=> b!186258 d!55161))

(declare-fun d!55163 () Bool)

(assert (=> d!55163 (= (apply!168 (+!283 lt!92158 (tuple2!3465 lt!92169 (minValue!3639 thiss!1248))) lt!92166) (apply!168 lt!92158 lt!92166))))

(declare-fun lt!92272 () Unit!5607)

(assert (=> d!55163 (= lt!92272 (choose!995 lt!92158 lt!92169 (minValue!3639 thiss!1248) lt!92166))))

(declare-fun e!122742 () Bool)

(assert (=> d!55163 e!122742))

(declare-fun res!88233 () Bool)

(assert (=> d!55163 (=> (not res!88233) (not e!122742))))

(assert (=> d!55163 (= res!88233 (contains!1303 lt!92158 lt!92166))))

(assert (=> d!55163 (= (addApplyDifferent!144 lt!92158 lt!92169 (minValue!3639 thiss!1248) lt!92166) lt!92272)))

(declare-fun b!186500 () Bool)

(assert (=> b!186500 (= e!122742 (not (= lt!92166 lt!92169)))))

(assert (= (and d!55163 res!88233) b!186500))

(declare-fun m!213485 () Bool)

(assert (=> d!55163 m!213485))

(assert (=> d!55163 m!213273))

(declare-fun m!213487 () Bool)

(assert (=> d!55163 m!213487))

(assert (=> d!55163 m!213261))

(assert (=> d!55163 m!213263))

(assert (=> d!55163 m!213261))

(assert (=> b!186258 d!55163))

(declare-fun d!55165 () Bool)

(declare-fun e!122743 () Bool)

(assert (=> d!55165 e!122743))

(declare-fun res!88235 () Bool)

(assert (=> d!55165 (=> (not res!88235) (not e!122743))))

(declare-fun lt!92275 () ListLongMap!2395)

(assert (=> d!55165 (= res!88235 (contains!1303 lt!92275 (_1!1742 (tuple2!3465 lt!92152 (zeroValue!3639 thiss!1248)))))))

(declare-fun lt!92274 () List!2394)

(assert (=> d!55165 (= lt!92275 (ListLongMap!2396 lt!92274))))

(declare-fun lt!92276 () Unit!5607)

(declare-fun lt!92273 () Unit!5607)

(assert (=> d!55165 (= lt!92276 lt!92273)))

(assert (=> d!55165 (= (getValueByKey!224 lt!92274 (_1!1742 (tuple2!3465 lt!92152 (zeroValue!3639 thiss!1248)))) (Some!229 (_2!1742 (tuple2!3465 lt!92152 (zeroValue!3639 thiss!1248)))))))

(assert (=> d!55165 (= lt!92273 (lemmaContainsTupThenGetReturnValue!118 lt!92274 (_1!1742 (tuple2!3465 lt!92152 (zeroValue!3639 thiss!1248))) (_2!1742 (tuple2!3465 lt!92152 (zeroValue!3639 thiss!1248)))))))

(assert (=> d!55165 (= lt!92274 (insertStrictlySorted!120 (toList!1213 lt!92171) (_1!1742 (tuple2!3465 lt!92152 (zeroValue!3639 thiss!1248))) (_2!1742 (tuple2!3465 lt!92152 (zeroValue!3639 thiss!1248)))))))

(assert (=> d!55165 (= (+!283 lt!92171 (tuple2!3465 lt!92152 (zeroValue!3639 thiss!1248))) lt!92275)))

(declare-fun b!186501 () Bool)

(declare-fun res!88234 () Bool)

(assert (=> b!186501 (=> (not res!88234) (not e!122743))))

(assert (=> b!186501 (= res!88234 (= (getValueByKey!224 (toList!1213 lt!92275) (_1!1742 (tuple2!3465 lt!92152 (zeroValue!3639 thiss!1248)))) (Some!229 (_2!1742 (tuple2!3465 lt!92152 (zeroValue!3639 thiss!1248))))))))

(declare-fun b!186502 () Bool)

(assert (=> b!186502 (= e!122743 (contains!1304 (toList!1213 lt!92275) (tuple2!3465 lt!92152 (zeroValue!3639 thiss!1248))))))

(assert (= (and d!55165 res!88235) b!186501))

(assert (= (and b!186501 res!88234) b!186502))

(declare-fun m!213489 () Bool)

(assert (=> d!55165 m!213489))

(declare-fun m!213491 () Bool)

(assert (=> d!55165 m!213491))

(declare-fun m!213493 () Bool)

(assert (=> d!55165 m!213493))

(declare-fun m!213495 () Bool)

(assert (=> d!55165 m!213495))

(declare-fun m!213497 () Bool)

(assert (=> b!186501 m!213497))

(declare-fun m!213499 () Bool)

(assert (=> b!186502 m!213499))

(assert (=> b!186258 d!55165))

(declare-fun d!55167 () Bool)

(assert (=> d!55167 (contains!1303 (+!283 lt!92173 (tuple2!3465 lt!92170 (zeroValue!3639 thiss!1248))) lt!92164)))

(declare-fun lt!92279 () Unit!5607)

(declare-fun choose!996 (ListLongMap!2395 (_ BitVec 64) V!5467 (_ BitVec 64)) Unit!5607)

(assert (=> d!55167 (= lt!92279 (choose!996 lt!92173 lt!92170 (zeroValue!3639 thiss!1248) lt!92164))))

(assert (=> d!55167 (contains!1303 lt!92173 lt!92164)))

(assert (=> d!55167 (= (addStillContains!144 lt!92173 lt!92170 (zeroValue!3639 thiss!1248) lt!92164) lt!92279)))

(declare-fun bs!7539 () Bool)

(assert (= bs!7539 d!55167))

(assert (=> bs!7539 m!213275))

(assert (=> bs!7539 m!213275))

(assert (=> bs!7539 m!213279))

(declare-fun m!213501 () Bool)

(assert (=> bs!7539 m!213501))

(declare-fun m!213503 () Bool)

(assert (=> bs!7539 m!213503))

(assert (=> b!186258 d!55167))

(declare-fun d!55169 () Bool)

(assert (=> d!55169 (= (apply!168 (+!283 lt!92171 (tuple2!3465 lt!92152 (zeroValue!3639 thiss!1248))) lt!92160) (get!2153 (getValueByKey!224 (toList!1213 (+!283 lt!92171 (tuple2!3465 lt!92152 (zeroValue!3639 thiss!1248)))) lt!92160)))))

(declare-fun bs!7540 () Bool)

(assert (= bs!7540 d!55169))

(declare-fun m!213505 () Bool)

(assert (=> bs!7540 m!213505))

(assert (=> bs!7540 m!213505))

(declare-fun m!213507 () Bool)

(assert (=> bs!7540 m!213507))

(assert (=> b!186258 d!55169))

(declare-fun d!55171 () Bool)

(assert (=> d!55171 (= (apply!168 lt!92158 lt!92166) (get!2153 (getValueByKey!224 (toList!1213 lt!92158) lt!92166)))))

(declare-fun bs!7541 () Bool)

(assert (= bs!7541 d!55171))

(declare-fun m!213509 () Bool)

(assert (=> bs!7541 m!213509))

(assert (=> bs!7541 m!213509))

(declare-fun m!213511 () Bool)

(assert (=> bs!7541 m!213511))

(assert (=> b!186258 d!55171))

(declare-fun d!55173 () Bool)

(assert (=> d!55173 (= (inRange!0 (index!4779 lt!92095) (mask!8920 thiss!1248)) (and (bvsge (index!4779 lt!92095) #b00000000000000000000000000000000) (bvslt (index!4779 lt!92095) (bvadd (mask!8920 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> b!186193 d!55173))

(declare-fun d!55175 () Bool)

(assert (=> d!55175 (= (apply!168 lt!92172 (select (arr!3748 (_keys!5740 thiss!1248)) #b00000000000000000000000000000000)) (get!2153 (getValueByKey!224 (toList!1213 lt!92172) (select (arr!3748 (_keys!5740 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7542 () Bool)

(assert (= bs!7542 d!55175))

(assert (=> bs!7542 m!213243))

(declare-fun m!213513 () Bool)

(assert (=> bs!7542 m!213513))

(assert (=> bs!7542 m!213513))

(declare-fun m!213515 () Bool)

(assert (=> bs!7542 m!213515))

(assert (=> b!186255 d!55175))

(declare-fun d!55177 () Bool)

(declare-fun c!33444 () Bool)

(assert (=> d!55177 (= c!33444 ((_ is ValueCellFull!1839) (select (arr!3749 (_values!3781 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!122746 () V!5467)

(assert (=> d!55177 (= (get!2152 (select (arr!3749 (_values!3781 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!506 (defaultEntry!3798 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) e!122746)))

(declare-fun b!186508 () Bool)

(declare-fun get!2154 (ValueCell!1839 V!5467) V!5467)

(assert (=> b!186508 (= e!122746 (get!2154 (select (arr!3749 (_values!3781 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!506 (defaultEntry!3798 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!186509 () Bool)

(declare-fun get!2155 (ValueCell!1839 V!5467) V!5467)

(assert (=> b!186509 (= e!122746 (get!2155 (select (arr!3749 (_values!3781 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!506 (defaultEntry!3798 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!55177 c!33444) b!186508))

(assert (= (and d!55177 (not c!33444)) b!186509))

(assert (=> b!186508 m!213283))

(assert (=> b!186508 m!213281))

(declare-fun m!213517 () Bool)

(assert (=> b!186508 m!213517))

(assert (=> b!186509 m!213283))

(assert (=> b!186509 m!213281))

(declare-fun m!213519 () Bool)

(assert (=> b!186509 m!213519))

(assert (=> b!186255 d!55177))

(declare-fun b!186528 () Bool)

(declare-fun e!122758 () Bool)

(declare-fun lt!92285 () SeekEntryResult!652)

(assert (=> b!186528 (= e!122758 (bvsge (x!20216 lt!92285) #b01111111111111111111111111111110))))

(declare-fun b!186529 () Bool)

(declare-fun e!122759 () SeekEntryResult!652)

(assert (=> b!186529 (= e!122759 (Intermediate!652 true (toIndex!0 key!828 (mask!8920 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!186530 () Bool)

(assert (=> b!186530 (and (bvsge (index!4780 lt!92285) #b00000000000000000000000000000000) (bvslt (index!4780 lt!92285) (size!4064 (_keys!5740 thiss!1248))))))

(declare-fun res!88243 () Bool)

(assert (=> b!186530 (= res!88243 (= (select (arr!3748 (_keys!5740 thiss!1248)) (index!4780 lt!92285)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!122757 () Bool)

(assert (=> b!186530 (=> res!88243 e!122757)))

(declare-fun b!186531 () Bool)

(assert (=> b!186531 (and (bvsge (index!4780 lt!92285) #b00000000000000000000000000000000) (bvslt (index!4780 lt!92285) (size!4064 (_keys!5740 thiss!1248))))))

(declare-fun res!88244 () Bool)

(assert (=> b!186531 (= res!88244 (= (select (arr!3748 (_keys!5740 thiss!1248)) (index!4780 lt!92285)) key!828))))

(assert (=> b!186531 (=> res!88244 e!122757)))

(declare-fun e!122761 () Bool)

(assert (=> b!186531 (= e!122761 e!122757)))

(declare-fun d!55179 () Bool)

(assert (=> d!55179 e!122758))

(declare-fun c!33452 () Bool)

(assert (=> d!55179 (= c!33452 (and ((_ is Intermediate!652) lt!92285) (undefined!1464 lt!92285)))))

(assert (=> d!55179 (= lt!92285 e!122759)))

(declare-fun c!33453 () Bool)

(assert (=> d!55179 (= c!33453 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!92284 () (_ BitVec 64))

(assert (=> d!55179 (= lt!92284 (select (arr!3748 (_keys!5740 thiss!1248)) (toIndex!0 key!828 (mask!8920 thiss!1248))))))

(assert (=> d!55179 (validMask!0 (mask!8920 thiss!1248))))

(assert (=> d!55179 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8920 thiss!1248)) key!828 (_keys!5740 thiss!1248) (mask!8920 thiss!1248)) lt!92285)))

(declare-fun b!186532 () Bool)

(declare-fun e!122760 () SeekEntryResult!652)

(assert (=> b!186532 (= e!122760 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!828 (mask!8920 thiss!1248)) #b00000000000000000000000000000000 (mask!8920 thiss!1248)) key!828 (_keys!5740 thiss!1248) (mask!8920 thiss!1248)))))

(declare-fun b!186533 () Bool)

(assert (=> b!186533 (= e!122760 (Intermediate!652 false (toIndex!0 key!828 (mask!8920 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!186534 () Bool)

(assert (=> b!186534 (and (bvsge (index!4780 lt!92285) #b00000000000000000000000000000000) (bvslt (index!4780 lt!92285) (size!4064 (_keys!5740 thiss!1248))))))

(assert (=> b!186534 (= e!122757 (= (select (arr!3748 (_keys!5740 thiss!1248)) (index!4780 lt!92285)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!186535 () Bool)

(assert (=> b!186535 (= e!122758 e!122761)))

(declare-fun res!88242 () Bool)

(assert (=> b!186535 (= res!88242 (and ((_ is Intermediate!652) lt!92285) (not (undefined!1464 lt!92285)) (bvslt (x!20216 lt!92285) #b01111111111111111111111111111110) (bvsge (x!20216 lt!92285) #b00000000000000000000000000000000) (bvsge (x!20216 lt!92285) #b00000000000000000000000000000000)))))

(assert (=> b!186535 (=> (not res!88242) (not e!122761))))

(declare-fun b!186536 () Bool)

(assert (=> b!186536 (= e!122759 e!122760)))

(declare-fun c!33451 () Bool)

(assert (=> b!186536 (= c!33451 (or (= lt!92284 key!828) (= (bvadd lt!92284 lt!92284) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!55179 c!33453) b!186529))

(assert (= (and d!55179 (not c!33453)) b!186536))

(assert (= (and b!186536 c!33451) b!186533))

(assert (= (and b!186536 (not c!33451)) b!186532))

(assert (= (and d!55179 c!33452) b!186528))

(assert (= (and d!55179 (not c!33452)) b!186535))

(assert (= (and b!186535 res!88242) b!186531))

(assert (= (and b!186531 (not res!88244)) b!186530))

(assert (= (and b!186530 (not res!88243)) b!186534))

(declare-fun m!213521 () Bool)

(assert (=> b!186531 m!213521))

(assert (=> b!186532 m!213205))

(declare-fun m!213523 () Bool)

(assert (=> b!186532 m!213523))

(assert (=> b!186532 m!213523))

(declare-fun m!213525 () Bool)

(assert (=> b!186532 m!213525))

(assert (=> d!55179 m!213205))

(declare-fun m!213527 () Bool)

(assert (=> d!55179 m!213527))

(assert (=> d!55179 m!213159))

(assert (=> b!186530 m!213521))

(assert (=> b!186534 m!213521))

(assert (=> d!55081 d!55179))

(declare-fun d!55181 () Bool)

(declare-fun lt!92291 () (_ BitVec 32))

(declare-fun lt!92290 () (_ BitVec 32))

(assert (=> d!55181 (= lt!92291 (bvmul (bvxor lt!92290 (bvlshr lt!92290 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!55181 (= lt!92290 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!55181 (and (bvsge (mask!8920 thiss!1248) #b00000000000000000000000000000000) (let ((res!88245 (let ((h!3025 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!20235 (bvmul (bvxor h!3025 (bvlshr h!3025 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!20235 (bvlshr x!20235 #b00000000000000000000000000001101)) (mask!8920 thiss!1248)))))) (and (bvslt res!88245 (bvadd (mask!8920 thiss!1248) #b00000000000000000000000000000001)) (bvsge res!88245 #b00000000000000000000000000000000))))))

(assert (=> d!55181 (= (toIndex!0 key!828 (mask!8920 thiss!1248)) (bvand (bvxor lt!92291 (bvlshr lt!92291 #b00000000000000000000000000001101)) (mask!8920 thiss!1248)))))

(assert (=> d!55081 d!55181))

(assert (=> d!55081 d!55093))

(declare-fun d!55183 () Bool)

(declare-fun e!122762 () Bool)

(assert (=> d!55183 e!122762))

(declare-fun res!88246 () Bool)

(assert (=> d!55183 (=> res!88246 e!122762)))

(declare-fun lt!92293 () Bool)

(assert (=> d!55183 (= res!88246 (not lt!92293))))

(declare-fun lt!92294 () Bool)

(assert (=> d!55183 (= lt!92293 lt!92294)))

(declare-fun lt!92295 () Unit!5607)

(declare-fun e!122763 () Unit!5607)

(assert (=> d!55183 (= lt!92295 e!122763)))

(declare-fun c!33454 () Bool)

(assert (=> d!55183 (= c!33454 lt!92294)))

(assert (=> d!55183 (= lt!92294 (containsKey!228 (toList!1213 lt!92172) (select (arr!3748 (_keys!5740 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!55183 (= (contains!1303 lt!92172 (select (arr!3748 (_keys!5740 thiss!1248)) #b00000000000000000000000000000000)) lt!92293)))

(declare-fun b!186537 () Bool)

(declare-fun lt!92292 () Unit!5607)

(assert (=> b!186537 (= e!122763 lt!92292)))

(assert (=> b!186537 (= lt!92292 (lemmaContainsKeyImpliesGetValueByKeyDefined!177 (toList!1213 lt!92172) (select (arr!3748 (_keys!5740 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!186537 (isDefined!178 (getValueByKey!224 (toList!1213 lt!92172) (select (arr!3748 (_keys!5740 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!186538 () Bool)

(declare-fun Unit!5617 () Unit!5607)

(assert (=> b!186538 (= e!122763 Unit!5617)))

(declare-fun b!186539 () Bool)

(assert (=> b!186539 (= e!122762 (isDefined!178 (getValueByKey!224 (toList!1213 lt!92172) (select (arr!3748 (_keys!5740 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!55183 c!33454) b!186537))

(assert (= (and d!55183 (not c!33454)) b!186538))

(assert (= (and d!55183 (not res!88246)) b!186539))

(assert (=> d!55183 m!213243))

(declare-fun m!213529 () Bool)

(assert (=> d!55183 m!213529))

(assert (=> b!186537 m!213243))

(declare-fun m!213531 () Bool)

(assert (=> b!186537 m!213531))

(assert (=> b!186537 m!213243))

(assert (=> b!186537 m!213513))

(assert (=> b!186537 m!213513))

(declare-fun m!213533 () Bool)

(assert (=> b!186537 m!213533))

(assert (=> b!186539 m!213243))

(assert (=> b!186539 m!213513))

(assert (=> b!186539 m!213513))

(assert (=> b!186539 m!213533))

(assert (=> b!186270 d!55183))

(declare-fun condMapEmpty!7519 () Bool)

(declare-fun mapDefault!7519 () ValueCell!1839)

(assert (=> mapNonEmpty!7518 (= condMapEmpty!7519 (= mapRest!7518 ((as const (Array (_ BitVec 32) ValueCell!1839)) mapDefault!7519)))))

(declare-fun e!122764 () Bool)

(declare-fun mapRes!7519 () Bool)

(assert (=> mapNonEmpty!7518 (= tp!16590 (and e!122764 mapRes!7519))))

(declare-fun b!186540 () Bool)

(declare-fun e!122765 () Bool)

(assert (=> b!186540 (= e!122765 tp_is_empty!4365)))

(declare-fun b!186541 () Bool)

(assert (=> b!186541 (= e!122764 tp_is_empty!4365)))

(declare-fun mapNonEmpty!7519 () Bool)

(declare-fun tp!16591 () Bool)

(assert (=> mapNonEmpty!7519 (= mapRes!7519 (and tp!16591 e!122765))))

(declare-fun mapRest!7519 () (Array (_ BitVec 32) ValueCell!1839))

(declare-fun mapKey!7519 () (_ BitVec 32))

(declare-fun mapValue!7519 () ValueCell!1839)

(assert (=> mapNonEmpty!7519 (= mapRest!7518 (store mapRest!7519 mapKey!7519 mapValue!7519))))

(declare-fun mapIsEmpty!7519 () Bool)

(assert (=> mapIsEmpty!7519 mapRes!7519))

(assert (= (and mapNonEmpty!7518 condMapEmpty!7519) mapIsEmpty!7519))

(assert (= (and mapNonEmpty!7518 (not condMapEmpty!7519)) mapNonEmpty!7519))

(assert (= (and mapNonEmpty!7519 ((_ is ValueCellFull!1839) mapValue!7519)) b!186540))

(assert (= (and mapNonEmpty!7518 ((_ is ValueCellFull!1839) mapDefault!7519)) b!186541))

(declare-fun m!213535 () Bool)

(assert (=> mapNonEmpty!7519 m!213535))

(declare-fun b_lambda!7297 () Bool)

(assert (= b_lambda!7293 (or (and b!186136 b_free!4593) b_lambda!7297)))

(declare-fun b_lambda!7299 () Bool)

(assert (= b_lambda!7295 (or (and b!186136 b_free!4593) b_lambda!7299)))

(check-sat (not d!55151) (not d!55137) (not b!186310) (not b!186372) (not b!186421) (not d!55179) (not d!55165) (not d!55159) (not b!186444) (not d!55149) (not b!186492) b_and!11223 (not bm!18806) (not b!186420) (not d!55161) (not d!55109) (not b_lambda!7291) (not b!186508) (not b!186418) (not b!186387) (not b!186532) (not d!55175) (not d!55141) (not b!186339) (not mapNonEmpty!7519) (not bm!18797) (not d!55183) (not b!186501) (not d!55153) (not b_next!4593) (not bm!18794) (not b!186484) (not b_lambda!7299) (not b!186497) (not bm!18800) (not b!186392) (not b!186386) (not b!186405) (not bm!18791) (not d!55119) (not b!186312) (not d!55111) (not d!55167) (not b!186494) (not d!55101) (not bm!18805) (not d!55129) (not b!186423) (not b!186433) (not b!186537) (not b!186495) (not d!55143) (not d!55171) (not b!186490) (not d!55169) (not b!186378) (not d!55115) (not d!55155) (not d!55135) (not d!55113) (not b!186502) (not b!186539) (not b!186496) (not b!186323) (not d!55117) (not d!55157) (not b!186485) (not b!186481) (not b_lambda!7297) (not b!186509) (not b!186367) (not d!55139) (not b!186370) (not b!186482) (not b!186435) (not d!55105) (not b!186399) (not b!186377) (not d!55145) (not b!186381) (not b!186491) (not b!186374) (not b!186371) (not b!186373) (not d!55163) (not b!186416) (not b!186498) (not d!55147) tp_is_empty!4365)
(check-sat b_and!11223 (not b_next!4593))
