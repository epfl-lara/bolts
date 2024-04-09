; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!76834 () Bool)

(assert start!76834)

(declare-fun b!898311 () Bool)

(declare-fun b_free!16017 () Bool)

(declare-fun b_next!16017 () Bool)

(assert (=> b!898311 (= b_free!16017 (not b_next!16017))))

(declare-fun tp!56120 () Bool)

(declare-fun b_and!26329 () Bool)

(assert (=> b!898311 (= tp!56120 b_and!26329)))

(declare-fun b!898309 () Bool)

(declare-fun e!502542 () Bool)

(declare-fun e!502543 () Bool)

(declare-fun mapRes!29172 () Bool)

(assert (=> b!898309 (= e!502542 (and e!502543 mapRes!29172))))

(declare-fun condMapEmpty!29172 () Bool)

(declare-datatypes ((array!52714 0))(
  ( (array!52715 (arr!25330 (Array (_ BitVec 32) (_ BitVec 64))) (size!25786 (_ BitVec 32))) )
))
(declare-datatypes ((V!29425 0))(
  ( (V!29426 (val!9223 Int)) )
))
(declare-datatypes ((ValueCell!8691 0))(
  ( (ValueCellFull!8691 (v!11711 V!29425)) (EmptyCell!8691) )
))
(declare-datatypes ((array!52716 0))(
  ( (array!52717 (arr!25331 (Array (_ BitVec 32) ValueCell!8691)) (size!25787 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4398 0))(
  ( (LongMapFixedSize!4399 (defaultEntry!5413 Int) (mask!26136 (_ BitVec 32)) (extraKeys!5129 (_ BitVec 32)) (zeroValue!5233 V!29425) (minValue!5233 V!29425) (_size!2254 (_ BitVec 32)) (_keys!10184 array!52714) (_values!5420 array!52716) (_vacant!2254 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4398)

(declare-fun mapDefault!29172 () ValueCell!8691)

(assert (=> b!898309 (= condMapEmpty!29172 (= (arr!25331 (_values!5420 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8691)) mapDefault!29172)))))

(declare-fun b!898310 () Bool)

(declare-fun e!502541 () Bool)

(assert (=> b!898310 (= e!502541 (= (size!25787 (_values!5420 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!26136 thiss!1181))))))

(declare-fun e!502548 () Bool)

(declare-fun tp_is_empty!18345 () Bool)

(declare-fun array_inv!19852 (array!52714) Bool)

(declare-fun array_inv!19853 (array!52716) Bool)

(assert (=> b!898311 (= e!502548 (and tp!56120 tp_is_empty!18345 (array_inv!19852 (_keys!10184 thiss!1181)) (array_inv!19853 (_values!5420 thiss!1181)) e!502542))))

(declare-fun mapIsEmpty!29172 () Bool)

(assert (=> mapIsEmpty!29172 mapRes!29172))

(declare-fun mapNonEmpty!29172 () Bool)

(declare-fun tp!56121 () Bool)

(declare-fun e!502546 () Bool)

(assert (=> mapNonEmpty!29172 (= mapRes!29172 (and tp!56121 e!502546))))

(declare-fun mapKey!29172 () (_ BitVec 32))

(declare-fun mapValue!29172 () ValueCell!8691)

(declare-fun mapRest!29172 () (Array (_ BitVec 32) ValueCell!8691))

(assert (=> mapNonEmpty!29172 (= (arr!25331 (_values!5420 thiss!1181)) (store mapRest!29172 mapKey!29172 mapValue!29172))))

(declare-fun b!898313 () Bool)

(assert (=> b!898313 (= e!502546 tp_is_empty!18345)))

(declare-fun b!898314 () Bool)

(declare-fun res!607180 () Bool)

(declare-fun e!502549 () Bool)

(assert (=> b!898314 (=> (not res!607180) (not e!502549))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!898314 (= res!607180 (not (= key!785 (bvneg key!785))))))

(declare-fun b!898315 () Bool)

(declare-fun e!502544 () Bool)

(assert (=> b!898315 (= e!502544 e!502541)))

(declare-fun res!607179 () Bool)

(assert (=> b!898315 (=> res!607179 e!502541)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!898315 (= res!607179 (not (validMask!0 (mask!26136 thiss!1181))))))

(declare-datatypes ((SeekEntryResult!8913 0))(
  ( (MissingZero!8913 (index!38022 (_ BitVec 32))) (Found!8913 (index!38023 (_ BitVec 32))) (Intermediate!8913 (undefined!9725 Bool) (index!38024 (_ BitVec 32)) (x!76553 (_ BitVec 32))) (Undefined!8913) (MissingVacant!8913 (index!38025 (_ BitVec 32))) )
))
(declare-fun lt!405550 () SeekEntryResult!8913)

(declare-datatypes ((tuple2!12056 0))(
  ( (tuple2!12057 (_1!6038 (_ BitVec 64)) (_2!6038 V!29425)) )
))
(declare-datatypes ((List!17917 0))(
  ( (Nil!17914) (Cons!17913 (h!19055 tuple2!12056) (t!25266 List!17917)) )
))
(declare-datatypes ((ListLongMap!10767 0))(
  ( (ListLongMap!10768 (toList!5399 List!17917)) )
))
(declare-fun contains!4398 (ListLongMap!10767 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2642 (array!52714 array!52716 (_ BitVec 32) (_ BitVec 32) V!29425 V!29425 (_ BitVec 32) Int) ListLongMap!10767)

(assert (=> b!898315 (contains!4398 (getCurrentListMap!2642 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5413 thiss!1181)) (select (arr!25330 (_keys!10184 thiss!1181)) (index!38023 lt!405550)))))

(declare-datatypes ((Unit!30509 0))(
  ( (Unit!30510) )
))
(declare-fun lt!405549 () Unit!30509)

(declare-fun lemmaValidKeyInArrayIsInListMap!235 (array!52714 array!52716 (_ BitVec 32) (_ BitVec 32) V!29425 V!29425 (_ BitVec 32) Int) Unit!30509)

(assert (=> b!898315 (= lt!405549 (lemmaValidKeyInArrayIsInListMap!235 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) (index!38023 lt!405550) (defaultEntry!5413 thiss!1181)))))

(declare-fun arrayContainsKey!0 (array!52714 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!898315 (arrayContainsKey!0 (_keys!10184 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!405552 () Unit!30509)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52714 (_ BitVec 64) (_ BitVec 32)) Unit!30509)

(assert (=> b!898315 (= lt!405552 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10184 thiss!1181) key!785 (index!38023 lt!405550)))))

(declare-fun b!898312 () Bool)

(declare-fun e!502547 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!898312 (= e!502547 (inRange!0 (index!38023 lt!405550) (mask!26136 thiss!1181)))))

(declare-fun res!607177 () Bool)

(assert (=> start!76834 (=> (not res!607177) (not e!502549))))

(declare-fun valid!1677 (LongMapFixedSize!4398) Bool)

(assert (=> start!76834 (= res!607177 (valid!1677 thiss!1181))))

(assert (=> start!76834 e!502549))

(assert (=> start!76834 e!502548))

(assert (=> start!76834 true))

(declare-fun b!898316 () Bool)

(assert (=> b!898316 (= e!502549 (not e!502544))))

(declare-fun res!607176 () Bool)

(assert (=> b!898316 (=> res!607176 e!502544)))

(get-info :version)

(assert (=> b!898316 (= res!607176 (not ((_ is Found!8913) lt!405550)))))

(assert (=> b!898316 e!502547))

(declare-fun res!607178 () Bool)

(assert (=> b!898316 (=> res!607178 e!502547)))

(assert (=> b!898316 (= res!607178 (not ((_ is Found!8913) lt!405550)))))

(declare-fun lt!405551 () Unit!30509)

(declare-fun lemmaSeekEntryGivesInRangeIndex!97 (array!52714 array!52716 (_ BitVec 32) (_ BitVec 32) V!29425 V!29425 (_ BitVec 64)) Unit!30509)

(assert (=> b!898316 (= lt!405551 (lemmaSeekEntryGivesInRangeIndex!97 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52714 (_ BitVec 32)) SeekEntryResult!8913)

(assert (=> b!898316 (= lt!405550 (seekEntry!0 key!785 (_keys!10184 thiss!1181) (mask!26136 thiss!1181)))))

(declare-fun b!898317 () Bool)

(assert (=> b!898317 (= e!502543 tp_is_empty!18345)))

(assert (= (and start!76834 res!607177) b!898314))

(assert (= (and b!898314 res!607180) b!898316))

(assert (= (and b!898316 (not res!607178)) b!898312))

(assert (= (and b!898316 (not res!607176)) b!898315))

(assert (= (and b!898315 (not res!607179)) b!898310))

(assert (= (and b!898309 condMapEmpty!29172) mapIsEmpty!29172))

(assert (= (and b!898309 (not condMapEmpty!29172)) mapNonEmpty!29172))

(assert (= (and mapNonEmpty!29172 ((_ is ValueCellFull!8691) mapValue!29172)) b!898313))

(assert (= (and b!898309 ((_ is ValueCellFull!8691) mapDefault!29172)) b!898317))

(assert (= b!898311 b!898309))

(assert (= start!76834 b!898311))

(declare-fun m!834913 () Bool)

(assert (=> b!898315 m!834913))

(declare-fun m!834915 () Bool)

(assert (=> b!898315 m!834915))

(assert (=> b!898315 m!834913))

(declare-fun m!834917 () Bool)

(assert (=> b!898315 m!834917))

(declare-fun m!834919 () Bool)

(assert (=> b!898315 m!834919))

(declare-fun m!834921 () Bool)

(assert (=> b!898315 m!834921))

(declare-fun m!834923 () Bool)

(assert (=> b!898315 m!834923))

(assert (=> b!898315 m!834915))

(declare-fun m!834925 () Bool)

(assert (=> b!898315 m!834925))

(declare-fun m!834927 () Bool)

(assert (=> start!76834 m!834927))

(declare-fun m!834929 () Bool)

(assert (=> b!898312 m!834929))

(declare-fun m!834931 () Bool)

(assert (=> mapNonEmpty!29172 m!834931))

(declare-fun m!834933 () Bool)

(assert (=> b!898316 m!834933))

(declare-fun m!834935 () Bool)

(assert (=> b!898316 m!834935))

(declare-fun m!834937 () Bool)

(assert (=> b!898311 m!834937))

(declare-fun m!834939 () Bool)

(assert (=> b!898311 m!834939))

(check-sat (not b!898315) (not b!898316) tp_is_empty!18345 (not mapNonEmpty!29172) (not b!898311) (not b_next!16017) b_and!26329 (not start!76834) (not b!898312))
(check-sat b_and!26329 (not b_next!16017))
(get-model)

(declare-fun d!111161 () Bool)

(declare-fun e!502579 () Bool)

(assert (=> d!111161 e!502579))

(declare-fun res!607198 () Bool)

(assert (=> d!111161 (=> res!607198 e!502579)))

(declare-fun lt!405570 () SeekEntryResult!8913)

(assert (=> d!111161 (= res!607198 (not ((_ is Found!8913) lt!405570)))))

(assert (=> d!111161 (= lt!405570 (seekEntry!0 key!785 (_keys!10184 thiss!1181) (mask!26136 thiss!1181)))))

(declare-fun lt!405569 () Unit!30509)

(declare-fun choose!1498 (array!52714 array!52716 (_ BitVec 32) (_ BitVec 32) V!29425 V!29425 (_ BitVec 64)) Unit!30509)

(assert (=> d!111161 (= lt!405569 (choose!1498 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) key!785))))

(assert (=> d!111161 (validMask!0 (mask!26136 thiss!1181))))

(assert (=> d!111161 (= (lemmaSeekEntryGivesInRangeIndex!97 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) key!785) lt!405569)))

(declare-fun b!898347 () Bool)

(assert (=> b!898347 (= e!502579 (inRange!0 (index!38023 lt!405570) (mask!26136 thiss!1181)))))

(assert (= (and d!111161 (not res!607198)) b!898347))

(assert (=> d!111161 m!834935))

(declare-fun m!834969 () Bool)

(assert (=> d!111161 m!834969))

(assert (=> d!111161 m!834921))

(declare-fun m!834971 () Bool)

(assert (=> b!898347 m!834971))

(assert (=> b!898316 d!111161))

(declare-fun b!898360 () Bool)

(declare-fun e!502586 () SeekEntryResult!8913)

(declare-fun e!502587 () SeekEntryResult!8913)

(assert (=> b!898360 (= e!502586 e!502587)))

(declare-fun lt!405579 () (_ BitVec 64))

(declare-fun lt!405580 () SeekEntryResult!8913)

(assert (=> b!898360 (= lt!405579 (select (arr!25330 (_keys!10184 thiss!1181)) (index!38024 lt!405580)))))

(declare-fun c!94868 () Bool)

(assert (=> b!898360 (= c!94868 (= lt!405579 key!785))))

(declare-fun b!898361 () Bool)

(assert (=> b!898361 (= e!502587 (Found!8913 (index!38024 lt!405580)))))

(declare-fun b!898362 () Bool)

(declare-fun e!502588 () SeekEntryResult!8913)

(assert (=> b!898362 (= e!502588 (MissingZero!8913 (index!38024 lt!405580)))))

(declare-fun b!898363 () Bool)

(declare-fun lt!405581 () SeekEntryResult!8913)

(assert (=> b!898363 (= e!502588 (ite ((_ is MissingVacant!8913) lt!405581) (MissingZero!8913 (index!38025 lt!405581)) lt!405581))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52714 (_ BitVec 32)) SeekEntryResult!8913)

(assert (=> b!898363 (= lt!405581 (seekKeyOrZeroReturnVacant!0 (x!76553 lt!405580) (index!38024 lt!405580) (index!38024 lt!405580) key!785 (_keys!10184 thiss!1181) (mask!26136 thiss!1181)))))

(declare-fun b!898364 () Bool)

(assert (=> b!898364 (= e!502586 Undefined!8913)))

(declare-fun d!111163 () Bool)

(declare-fun lt!405582 () SeekEntryResult!8913)

(assert (=> d!111163 (and (or ((_ is MissingVacant!8913) lt!405582) (not ((_ is Found!8913) lt!405582)) (and (bvsge (index!38023 lt!405582) #b00000000000000000000000000000000) (bvslt (index!38023 lt!405582) (size!25786 (_keys!10184 thiss!1181))))) (not ((_ is MissingVacant!8913) lt!405582)) (or (not ((_ is Found!8913) lt!405582)) (= (select (arr!25330 (_keys!10184 thiss!1181)) (index!38023 lt!405582)) key!785)))))

(assert (=> d!111163 (= lt!405582 e!502586)))

(declare-fun c!94870 () Bool)

(assert (=> d!111163 (= c!94870 (and ((_ is Intermediate!8913) lt!405580) (undefined!9725 lt!405580)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52714 (_ BitVec 32)) SeekEntryResult!8913)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!111163 (= lt!405580 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!26136 thiss!1181)) key!785 (_keys!10184 thiss!1181) (mask!26136 thiss!1181)))))

(assert (=> d!111163 (validMask!0 (mask!26136 thiss!1181))))

(assert (=> d!111163 (= (seekEntry!0 key!785 (_keys!10184 thiss!1181) (mask!26136 thiss!1181)) lt!405582)))

(declare-fun b!898365 () Bool)

(declare-fun c!94869 () Bool)

(assert (=> b!898365 (= c!94869 (= lt!405579 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!898365 (= e!502587 e!502588)))

(assert (= (and d!111163 c!94870) b!898364))

(assert (= (and d!111163 (not c!94870)) b!898360))

(assert (= (and b!898360 c!94868) b!898361))

(assert (= (and b!898360 (not c!94868)) b!898365))

(assert (= (and b!898365 c!94869) b!898362))

(assert (= (and b!898365 (not c!94869)) b!898363))

(declare-fun m!834973 () Bool)

(assert (=> b!898360 m!834973))

(declare-fun m!834975 () Bool)

(assert (=> b!898363 m!834975))

(declare-fun m!834977 () Bool)

(assert (=> d!111163 m!834977))

(declare-fun m!834979 () Bool)

(assert (=> d!111163 m!834979))

(assert (=> d!111163 m!834979))

(declare-fun m!834981 () Bool)

(assert (=> d!111163 m!834981))

(assert (=> d!111163 m!834921))

(assert (=> b!898316 d!111163))

(declare-fun d!111165 () Bool)

(declare-fun res!607205 () Bool)

(declare-fun e!502591 () Bool)

(assert (=> d!111165 (=> (not res!607205) (not e!502591))))

(declare-fun simpleValid!323 (LongMapFixedSize!4398) Bool)

(assert (=> d!111165 (= res!607205 (simpleValid!323 thiss!1181))))

(assert (=> d!111165 (= (valid!1677 thiss!1181) e!502591)))

(declare-fun b!898372 () Bool)

(declare-fun res!607206 () Bool)

(assert (=> b!898372 (=> (not res!607206) (not e!502591))))

(declare-fun arrayCountValidKeys!0 (array!52714 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!898372 (= res!607206 (= (arrayCountValidKeys!0 (_keys!10184 thiss!1181) #b00000000000000000000000000000000 (size!25786 (_keys!10184 thiss!1181))) (_size!2254 thiss!1181)))))

(declare-fun b!898373 () Bool)

(declare-fun res!607207 () Bool)

(assert (=> b!898373 (=> (not res!607207) (not e!502591))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52714 (_ BitVec 32)) Bool)

(assert (=> b!898373 (= res!607207 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10184 thiss!1181) (mask!26136 thiss!1181)))))

(declare-fun b!898374 () Bool)

(declare-datatypes ((List!17918 0))(
  ( (Nil!17915) (Cons!17914 (h!19056 (_ BitVec 64)) (t!25269 List!17918)) )
))
(declare-fun arrayNoDuplicates!0 (array!52714 (_ BitVec 32) List!17918) Bool)

(assert (=> b!898374 (= e!502591 (arrayNoDuplicates!0 (_keys!10184 thiss!1181) #b00000000000000000000000000000000 Nil!17915))))

(assert (= (and d!111165 res!607205) b!898372))

(assert (= (and b!898372 res!607206) b!898373))

(assert (= (and b!898373 res!607207) b!898374))

(declare-fun m!834983 () Bool)

(assert (=> d!111165 m!834983))

(declare-fun m!834985 () Bool)

(assert (=> b!898372 m!834985))

(declare-fun m!834987 () Bool)

(assert (=> b!898373 m!834987))

(declare-fun m!834989 () Bool)

(assert (=> b!898374 m!834989))

(assert (=> start!76834 d!111165))

(declare-fun d!111167 () Bool)

(assert (=> d!111167 (= (array_inv!19852 (_keys!10184 thiss!1181)) (bvsge (size!25786 (_keys!10184 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!898311 d!111167))

(declare-fun d!111169 () Bool)

(assert (=> d!111169 (= (array_inv!19853 (_values!5420 thiss!1181)) (bvsge (size!25787 (_values!5420 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!898311 d!111169))

(declare-fun d!111171 () Bool)

(assert (=> d!111171 (= (inRange!0 (index!38023 lt!405550) (mask!26136 thiss!1181)) (and (bvsge (index!38023 lt!405550) #b00000000000000000000000000000000) (bvslt (index!38023 lt!405550) (bvadd (mask!26136 thiss!1181) #b00000000000000000000000000000001))))))

(assert (=> b!898312 d!111171))

(declare-fun d!111173 () Bool)

(declare-fun e!502594 () Bool)

(assert (=> d!111173 e!502594))

(declare-fun res!607210 () Bool)

(assert (=> d!111173 (=> (not res!607210) (not e!502594))))

(assert (=> d!111173 (= res!607210 (and (bvsge (index!38023 lt!405550) #b00000000000000000000000000000000) (bvslt (index!38023 lt!405550) (size!25786 (_keys!10184 thiss!1181)))))))

(declare-fun lt!405585 () Unit!30509)

(declare-fun choose!1499 (array!52714 array!52716 (_ BitVec 32) (_ BitVec 32) V!29425 V!29425 (_ BitVec 32) Int) Unit!30509)

(assert (=> d!111173 (= lt!405585 (choose!1499 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) (index!38023 lt!405550) (defaultEntry!5413 thiss!1181)))))

(assert (=> d!111173 (validMask!0 (mask!26136 thiss!1181))))

(assert (=> d!111173 (= (lemmaValidKeyInArrayIsInListMap!235 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) (index!38023 lt!405550) (defaultEntry!5413 thiss!1181)) lt!405585)))

(declare-fun b!898377 () Bool)

(assert (=> b!898377 (= e!502594 (contains!4398 (getCurrentListMap!2642 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5413 thiss!1181)) (select (arr!25330 (_keys!10184 thiss!1181)) (index!38023 lt!405550))))))

(assert (= (and d!111173 res!607210) b!898377))

(declare-fun m!834991 () Bool)

(assert (=> d!111173 m!834991))

(assert (=> d!111173 m!834921))

(assert (=> b!898377 m!834915))

(assert (=> b!898377 m!834913))

(assert (=> b!898377 m!834915))

(assert (=> b!898377 m!834913))

(assert (=> b!898377 m!834917))

(assert (=> b!898315 d!111173))

(declare-fun d!111175 () Bool)

(assert (=> d!111175 (arrayContainsKey!0 (_keys!10184 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!405588 () Unit!30509)

(declare-fun choose!13 (array!52714 (_ BitVec 64) (_ BitVec 32)) Unit!30509)

(assert (=> d!111175 (= lt!405588 (choose!13 (_keys!10184 thiss!1181) key!785 (index!38023 lt!405550)))))

(assert (=> d!111175 (bvsge (index!38023 lt!405550) #b00000000000000000000000000000000)))

(assert (=> d!111175 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10184 thiss!1181) key!785 (index!38023 lt!405550)) lt!405588)))

(declare-fun bs!25206 () Bool)

(assert (= bs!25206 d!111175))

(assert (=> bs!25206 m!834919))

(declare-fun m!834993 () Bool)

(assert (=> bs!25206 m!834993))

(assert (=> b!898315 d!111175))

(declare-fun d!111177 () Bool)

(declare-fun res!607215 () Bool)

(declare-fun e!502599 () Bool)

(assert (=> d!111177 (=> res!607215 e!502599)))

(assert (=> d!111177 (= res!607215 (= (select (arr!25330 (_keys!10184 thiss!1181)) #b00000000000000000000000000000000) key!785))))

(assert (=> d!111177 (= (arrayContainsKey!0 (_keys!10184 thiss!1181) key!785 #b00000000000000000000000000000000) e!502599)))

(declare-fun b!898382 () Bool)

(declare-fun e!502600 () Bool)

(assert (=> b!898382 (= e!502599 e!502600)))

(declare-fun res!607216 () Bool)

(assert (=> b!898382 (=> (not res!607216) (not e!502600))))

(assert (=> b!898382 (= res!607216 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25786 (_keys!10184 thiss!1181))))))

(declare-fun b!898383 () Bool)

(assert (=> b!898383 (= e!502600 (arrayContainsKey!0 (_keys!10184 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!111177 (not res!607215)) b!898382))

(assert (= (and b!898382 res!607216) b!898383))

(declare-fun m!834995 () Bool)

(assert (=> d!111177 m!834995))

(declare-fun m!834997 () Bool)

(assert (=> b!898383 m!834997))

(assert (=> b!898315 d!111177))

(declare-fun b!898426 () Bool)

(declare-fun e!502628 () ListLongMap!10767)

(declare-fun call!39872 () ListLongMap!10767)

(declare-fun +!2546 (ListLongMap!10767 tuple2!12056) ListLongMap!10767)

(assert (=> b!898426 (= e!502628 (+!2546 call!39872 (tuple2!12057 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5233 thiss!1181))))))

(declare-fun bm!39868 () Bool)

(declare-fun call!39876 () ListLongMap!10767)

(assert (=> bm!39868 (= call!39876 call!39872)))

(declare-fun b!898427 () Bool)

(declare-fun e!502638 () Bool)

(declare-fun e!502637 () Bool)

(assert (=> b!898427 (= e!502638 e!502637)))

(declare-fun res!607238 () Bool)

(assert (=> b!898427 (=> (not res!607238) (not e!502637))))

(declare-fun lt!405643 () ListLongMap!10767)

(assert (=> b!898427 (= res!607238 (contains!4398 lt!405643 (select (arr!25330 (_keys!10184 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> b!898427 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25786 (_keys!10184 thiss!1181))))))

(declare-fun b!898428 () Bool)

(declare-fun e!502639 () Bool)

(declare-fun call!39877 () Bool)

(assert (=> b!898428 (= e!502639 (not call!39877))))

(declare-fun bm!39869 () Bool)

(declare-fun call!39875 () ListLongMap!10767)

(declare-fun call!39873 () ListLongMap!10767)

(assert (=> bm!39869 (= call!39875 call!39873)))

(declare-fun bm!39870 () Bool)

(assert (=> bm!39870 (= call!39877 (contains!4398 lt!405643 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!898429 () Bool)

(declare-fun e!502636 () Bool)

(assert (=> b!898429 (= e!502639 e!502636)))

(declare-fun res!607237 () Bool)

(assert (=> b!898429 (= res!607237 call!39877)))

(assert (=> b!898429 (=> (not res!607237) (not e!502636))))

(declare-fun d!111179 () Bool)

(declare-fun e!502629 () Bool)

(assert (=> d!111179 e!502629))

(declare-fun res!607240 () Bool)

(assert (=> d!111179 (=> (not res!607240) (not e!502629))))

(assert (=> d!111179 (= res!607240 (or (bvsge #b00000000000000000000000000000000 (size!25786 (_keys!10184 thiss!1181))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25786 (_keys!10184 thiss!1181))))))))

(declare-fun lt!405653 () ListLongMap!10767)

(assert (=> d!111179 (= lt!405643 lt!405653)))

(declare-fun lt!405649 () Unit!30509)

(declare-fun e!502631 () Unit!30509)

(assert (=> d!111179 (= lt!405649 e!502631)))

(declare-fun c!94888 () Bool)

(declare-fun e!502630 () Bool)

(assert (=> d!111179 (= c!94888 e!502630)))

(declare-fun res!607242 () Bool)

(assert (=> d!111179 (=> (not res!607242) (not e!502630))))

(assert (=> d!111179 (= res!607242 (bvslt #b00000000000000000000000000000000 (size!25786 (_keys!10184 thiss!1181))))))

(assert (=> d!111179 (= lt!405653 e!502628)))

(declare-fun c!94886 () Bool)

(assert (=> d!111179 (= c!94886 (and (not (= (bvand (extraKeys!5129 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5129 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!111179 (validMask!0 (mask!26136 thiss!1181))))

(assert (=> d!111179 (= (getCurrentListMap!2642 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5413 thiss!1181)) lt!405643)))

(declare-fun b!898430 () Bool)

(declare-fun c!94885 () Bool)

(assert (=> b!898430 (= c!94885 (and (not (= (bvand (extraKeys!5129 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5129 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!502632 () ListLongMap!10767)

(declare-fun e!502633 () ListLongMap!10767)

(assert (=> b!898430 (= e!502632 e!502633)))

(declare-fun b!898431 () Bool)

(declare-fun call!39874 () ListLongMap!10767)

(assert (=> b!898431 (= e!502633 call!39874)))

(declare-fun b!898432 () Bool)

(assert (=> b!898432 (= e!502633 call!39876)))

(declare-fun b!898433 () Bool)

(declare-fun res!607236 () Bool)

(assert (=> b!898433 (=> (not res!607236) (not e!502629))))

(assert (=> b!898433 (= res!607236 e!502638)))

(declare-fun res!607235 () Bool)

(assert (=> b!898433 (=> res!607235 e!502638)))

(declare-fun e!502635 () Bool)

(assert (=> b!898433 (= res!607235 (not e!502635))))

(declare-fun res!607239 () Bool)

(assert (=> b!898433 (=> (not res!607239) (not e!502635))))

(assert (=> b!898433 (= res!607239 (bvslt #b00000000000000000000000000000000 (size!25786 (_keys!10184 thiss!1181))))))

(declare-fun bm!39871 () Bool)

(declare-fun call!39871 () Bool)

(assert (=> bm!39871 (= call!39871 (contains!4398 lt!405643 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!39872 () Bool)

(assert (=> bm!39872 (= call!39874 call!39875)))

(declare-fun b!898434 () Bool)

(assert (=> b!898434 (= e!502629 e!502639)))

(declare-fun c!94887 () Bool)

(assert (=> b!898434 (= c!94887 (not (= (bvand (extraKeys!5129 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!898435 () Bool)

(declare-fun apply!410 (ListLongMap!10767 (_ BitVec 64)) V!29425)

(assert (=> b!898435 (= e!502636 (= (apply!410 lt!405643 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5233 thiss!1181)))))

(declare-fun b!898436 () Bool)

(declare-fun e!502627 () Bool)

(assert (=> b!898436 (= e!502627 (= (apply!410 lt!405643 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5233 thiss!1181)))))

(declare-fun b!898437 () Bool)

(assert (=> b!898437 (= e!502632 call!39876)))

(declare-fun b!898438 () Bool)

(declare-fun e!502634 () Bool)

(assert (=> b!898438 (= e!502634 e!502627)))

(declare-fun res!607243 () Bool)

(assert (=> b!898438 (= res!607243 call!39871)))

(assert (=> b!898438 (=> (not res!607243) (not e!502627))))

(declare-fun b!898439 () Bool)

(assert (=> b!898439 (= e!502634 (not call!39871))))

(declare-fun b!898440 () Bool)

(declare-fun res!607241 () Bool)

(assert (=> b!898440 (=> (not res!607241) (not e!502629))))

(assert (=> b!898440 (= res!607241 e!502634)))

(declare-fun c!94883 () Bool)

(assert (=> b!898440 (= c!94883 (not (= (bvand (extraKeys!5129 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!898441 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!898441 (= e!502630 (validKeyInArray!0 (select (arr!25330 (_keys!10184 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!898442 () Bool)

(assert (=> b!898442 (= e!502635 (validKeyInArray!0 (select (arr!25330 (_keys!10184 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun bm!39873 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!3294 (array!52714 array!52716 (_ BitVec 32) (_ BitVec 32) V!29425 V!29425 (_ BitVec 32) Int) ListLongMap!10767)

(assert (=> bm!39873 (= call!39873 (getCurrentListMapNoExtraKeys!3294 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5413 thiss!1181)))))

(declare-fun b!898443 () Bool)

(declare-fun Unit!30511 () Unit!30509)

(assert (=> b!898443 (= e!502631 Unit!30511)))

(declare-fun b!898444 () Bool)

(declare-fun get!13327 (ValueCell!8691 V!29425) V!29425)

(declare-fun dynLambda!1305 (Int (_ BitVec 64)) V!29425)

(assert (=> b!898444 (= e!502637 (= (apply!410 lt!405643 (select (arr!25330 (_keys!10184 thiss!1181)) #b00000000000000000000000000000000)) (get!13327 (select (arr!25331 (_values!5420 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1305 (defaultEntry!5413 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!898444 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25787 (_values!5420 thiss!1181))))))

(assert (=> b!898444 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25786 (_keys!10184 thiss!1181))))))

(declare-fun c!94884 () Bool)

(declare-fun bm!39874 () Bool)

(assert (=> bm!39874 (= call!39872 (+!2546 (ite c!94886 call!39873 (ite c!94884 call!39875 call!39874)) (ite (or c!94886 c!94884) (tuple2!12057 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5233 thiss!1181)) (tuple2!12057 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5233 thiss!1181)))))))

(declare-fun b!898445 () Bool)

(declare-fun lt!405633 () Unit!30509)

(assert (=> b!898445 (= e!502631 lt!405633)))

(declare-fun lt!405637 () ListLongMap!10767)

(assert (=> b!898445 (= lt!405637 (getCurrentListMapNoExtraKeys!3294 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5413 thiss!1181)))))

(declare-fun lt!405640 () (_ BitVec 64))

(assert (=> b!898445 (= lt!405640 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!405634 () (_ BitVec 64))

(assert (=> b!898445 (= lt!405634 (select (arr!25330 (_keys!10184 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!405639 () Unit!30509)

(declare-fun addStillContains!332 (ListLongMap!10767 (_ BitVec 64) V!29425 (_ BitVec 64)) Unit!30509)

(assert (=> b!898445 (= lt!405639 (addStillContains!332 lt!405637 lt!405640 (zeroValue!5233 thiss!1181) lt!405634))))

(assert (=> b!898445 (contains!4398 (+!2546 lt!405637 (tuple2!12057 lt!405640 (zeroValue!5233 thiss!1181))) lt!405634)))

(declare-fun lt!405645 () Unit!30509)

(assert (=> b!898445 (= lt!405645 lt!405639)))

(declare-fun lt!405647 () ListLongMap!10767)

(assert (=> b!898445 (= lt!405647 (getCurrentListMapNoExtraKeys!3294 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5413 thiss!1181)))))

(declare-fun lt!405635 () (_ BitVec 64))

(assert (=> b!898445 (= lt!405635 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!405650 () (_ BitVec 64))

(assert (=> b!898445 (= lt!405650 (select (arr!25330 (_keys!10184 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!405641 () Unit!30509)

(declare-fun addApplyDifferent!332 (ListLongMap!10767 (_ BitVec 64) V!29425 (_ BitVec 64)) Unit!30509)

(assert (=> b!898445 (= lt!405641 (addApplyDifferent!332 lt!405647 lt!405635 (minValue!5233 thiss!1181) lt!405650))))

(assert (=> b!898445 (= (apply!410 (+!2546 lt!405647 (tuple2!12057 lt!405635 (minValue!5233 thiss!1181))) lt!405650) (apply!410 lt!405647 lt!405650))))

(declare-fun lt!405644 () Unit!30509)

(assert (=> b!898445 (= lt!405644 lt!405641)))

(declare-fun lt!405638 () ListLongMap!10767)

(assert (=> b!898445 (= lt!405638 (getCurrentListMapNoExtraKeys!3294 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5413 thiss!1181)))))

(declare-fun lt!405642 () (_ BitVec 64))

(assert (=> b!898445 (= lt!405642 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!405654 () (_ BitVec 64))

(assert (=> b!898445 (= lt!405654 (select (arr!25330 (_keys!10184 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!405648 () Unit!30509)

(assert (=> b!898445 (= lt!405648 (addApplyDifferent!332 lt!405638 lt!405642 (zeroValue!5233 thiss!1181) lt!405654))))

(assert (=> b!898445 (= (apply!410 (+!2546 lt!405638 (tuple2!12057 lt!405642 (zeroValue!5233 thiss!1181))) lt!405654) (apply!410 lt!405638 lt!405654))))

(declare-fun lt!405651 () Unit!30509)

(assert (=> b!898445 (= lt!405651 lt!405648)))

(declare-fun lt!405636 () ListLongMap!10767)

(assert (=> b!898445 (= lt!405636 (getCurrentListMapNoExtraKeys!3294 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5413 thiss!1181)))))

(declare-fun lt!405646 () (_ BitVec 64))

(assert (=> b!898445 (= lt!405646 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!405652 () (_ BitVec 64))

(assert (=> b!898445 (= lt!405652 (select (arr!25330 (_keys!10184 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!898445 (= lt!405633 (addApplyDifferent!332 lt!405636 lt!405646 (minValue!5233 thiss!1181) lt!405652))))

(assert (=> b!898445 (= (apply!410 (+!2546 lt!405636 (tuple2!12057 lt!405646 (minValue!5233 thiss!1181))) lt!405652) (apply!410 lt!405636 lt!405652))))

(declare-fun b!898446 () Bool)

(assert (=> b!898446 (= e!502628 e!502632)))

(assert (=> b!898446 (= c!94884 (and (not (= (bvand (extraKeys!5129 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5129 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!111179 c!94886) b!898426))

(assert (= (and d!111179 (not c!94886)) b!898446))

(assert (= (and b!898446 c!94884) b!898437))

(assert (= (and b!898446 (not c!94884)) b!898430))

(assert (= (and b!898430 c!94885) b!898432))

(assert (= (and b!898430 (not c!94885)) b!898431))

(assert (= (or b!898432 b!898431) bm!39872))

(assert (= (or b!898437 bm!39872) bm!39869))

(assert (= (or b!898437 b!898432) bm!39868))

(assert (= (or b!898426 bm!39869) bm!39873))

(assert (= (or b!898426 bm!39868) bm!39874))

(assert (= (and d!111179 res!607242) b!898441))

(assert (= (and d!111179 c!94888) b!898445))

(assert (= (and d!111179 (not c!94888)) b!898443))

(assert (= (and d!111179 res!607240) b!898433))

(assert (= (and b!898433 res!607239) b!898442))

(assert (= (and b!898433 (not res!607235)) b!898427))

(assert (= (and b!898427 res!607238) b!898444))

(assert (= (and b!898433 res!607236) b!898440))

(assert (= (and b!898440 c!94883) b!898438))

(assert (= (and b!898440 (not c!94883)) b!898439))

(assert (= (and b!898438 res!607243) b!898436))

(assert (= (or b!898438 b!898439) bm!39871))

(assert (= (and b!898440 res!607241) b!898434))

(assert (= (and b!898434 c!94887) b!898429))

(assert (= (and b!898434 (not c!94887)) b!898428))

(assert (= (and b!898429 res!607237) b!898435))

(assert (= (or b!898429 b!898428) bm!39870))

(declare-fun b_lambda!12993 () Bool)

(assert (=> (not b_lambda!12993) (not b!898444)))

(declare-fun t!25268 () Bool)

(declare-fun tb!5201 () Bool)

(assert (=> (and b!898311 (= (defaultEntry!5413 thiss!1181) (defaultEntry!5413 thiss!1181)) t!25268) tb!5201))

(declare-fun result!10159 () Bool)

(assert (=> tb!5201 (= result!10159 tp_is_empty!18345)))

(assert (=> b!898444 t!25268))

(declare-fun b_and!26333 () Bool)

(assert (= b_and!26329 (and (=> t!25268 result!10159) b_and!26333)))

(declare-fun m!834999 () Bool)

(assert (=> bm!39873 m!834999))

(assert (=> b!898427 m!834995))

(assert (=> b!898427 m!834995))

(declare-fun m!835001 () Bool)

(assert (=> b!898427 m!835001))

(declare-fun m!835003 () Bool)

(assert (=> b!898445 m!835003))

(declare-fun m!835005 () Bool)

(assert (=> b!898445 m!835005))

(declare-fun m!835007 () Bool)

(assert (=> b!898445 m!835007))

(declare-fun m!835009 () Bool)

(assert (=> b!898445 m!835009))

(declare-fun m!835011 () Bool)

(assert (=> b!898445 m!835011))

(assert (=> b!898445 m!835009))

(declare-fun m!835013 () Bool)

(assert (=> b!898445 m!835013))

(declare-fun m!835015 () Bool)

(assert (=> b!898445 m!835015))

(declare-fun m!835017 () Bool)

(assert (=> b!898445 m!835017))

(assert (=> b!898445 m!835007))

(declare-fun m!835019 () Bool)

(assert (=> b!898445 m!835019))

(declare-fun m!835021 () Bool)

(assert (=> b!898445 m!835021))

(declare-fun m!835023 () Bool)

(assert (=> b!898445 m!835023))

(declare-fun m!835025 () Bool)

(assert (=> b!898445 m!835025))

(assert (=> b!898445 m!835011))

(declare-fun m!835027 () Bool)

(assert (=> b!898445 m!835027))

(declare-fun m!835029 () Bool)

(assert (=> b!898445 m!835029))

(assert (=> b!898445 m!834999))

(declare-fun m!835031 () Bool)

(assert (=> b!898445 m!835031))

(assert (=> b!898445 m!834995))

(assert (=> b!898445 m!835015))

(assert (=> b!898444 m!834995))

(declare-fun m!835033 () Bool)

(assert (=> b!898444 m!835033))

(declare-fun m!835035 () Bool)

(assert (=> b!898444 m!835035))

(declare-fun m!835037 () Bool)

(assert (=> b!898444 m!835037))

(assert (=> b!898444 m!835033))

(assert (=> b!898444 m!834995))

(declare-fun m!835039 () Bool)

(assert (=> b!898444 m!835039))

(assert (=> b!898444 m!835035))

(declare-fun m!835041 () Bool)

(assert (=> bm!39871 m!835041))

(declare-fun m!835043 () Bool)

(assert (=> bm!39874 m!835043))

(declare-fun m!835045 () Bool)

(assert (=> b!898426 m!835045))

(assert (=> d!111179 m!834921))

(declare-fun m!835047 () Bool)

(assert (=> b!898435 m!835047))

(declare-fun m!835049 () Bool)

(assert (=> b!898436 m!835049))

(assert (=> b!898442 m!834995))

(assert (=> b!898442 m!834995))

(declare-fun m!835051 () Bool)

(assert (=> b!898442 m!835051))

(declare-fun m!835053 () Bool)

(assert (=> bm!39870 m!835053))

(assert (=> b!898441 m!834995))

(assert (=> b!898441 m!834995))

(assert (=> b!898441 m!835051))

(assert (=> b!898315 d!111179))

(declare-fun d!111181 () Bool)

(declare-fun e!502645 () Bool)

(assert (=> d!111181 e!502645))

(declare-fun res!607246 () Bool)

(assert (=> d!111181 (=> res!607246 e!502645)))

(declare-fun lt!405663 () Bool)

(assert (=> d!111181 (= res!607246 (not lt!405663))))

(declare-fun lt!405664 () Bool)

(assert (=> d!111181 (= lt!405663 lt!405664)))

(declare-fun lt!405665 () Unit!30509)

(declare-fun e!502644 () Unit!30509)

(assert (=> d!111181 (= lt!405665 e!502644)))

(declare-fun c!94891 () Bool)

(assert (=> d!111181 (= c!94891 lt!405664)))

(declare-fun containsKey!426 (List!17917 (_ BitVec 64)) Bool)

(assert (=> d!111181 (= lt!405664 (containsKey!426 (toList!5399 (getCurrentListMap!2642 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5413 thiss!1181))) (select (arr!25330 (_keys!10184 thiss!1181)) (index!38023 lt!405550))))))

(assert (=> d!111181 (= (contains!4398 (getCurrentListMap!2642 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5413 thiss!1181)) (select (arr!25330 (_keys!10184 thiss!1181)) (index!38023 lt!405550))) lt!405663)))

(declare-fun b!898455 () Bool)

(declare-fun lt!405666 () Unit!30509)

(assert (=> b!898455 (= e!502644 lt!405666)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!321 (List!17917 (_ BitVec 64)) Unit!30509)

(assert (=> b!898455 (= lt!405666 (lemmaContainsKeyImpliesGetValueByKeyDefined!321 (toList!5399 (getCurrentListMap!2642 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5413 thiss!1181))) (select (arr!25330 (_keys!10184 thiss!1181)) (index!38023 lt!405550))))))

(declare-datatypes ((Option!462 0))(
  ( (Some!461 (v!11713 V!29425)) (None!460) )
))
(declare-fun isDefined!331 (Option!462) Bool)

(declare-fun getValueByKey!456 (List!17917 (_ BitVec 64)) Option!462)

(assert (=> b!898455 (isDefined!331 (getValueByKey!456 (toList!5399 (getCurrentListMap!2642 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5413 thiss!1181))) (select (arr!25330 (_keys!10184 thiss!1181)) (index!38023 lt!405550))))))

(declare-fun b!898456 () Bool)

(declare-fun Unit!30512 () Unit!30509)

(assert (=> b!898456 (= e!502644 Unit!30512)))

(declare-fun b!898457 () Bool)

(assert (=> b!898457 (= e!502645 (isDefined!331 (getValueByKey!456 (toList!5399 (getCurrentListMap!2642 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5413 thiss!1181))) (select (arr!25330 (_keys!10184 thiss!1181)) (index!38023 lt!405550)))))))

(assert (= (and d!111181 c!94891) b!898455))

(assert (= (and d!111181 (not c!94891)) b!898456))

(assert (= (and d!111181 (not res!607246)) b!898457))

(assert (=> d!111181 m!834913))

(declare-fun m!835055 () Bool)

(assert (=> d!111181 m!835055))

(assert (=> b!898455 m!834913))

(declare-fun m!835057 () Bool)

(assert (=> b!898455 m!835057))

(assert (=> b!898455 m!834913))

(declare-fun m!835059 () Bool)

(assert (=> b!898455 m!835059))

(assert (=> b!898455 m!835059))

(declare-fun m!835061 () Bool)

(assert (=> b!898455 m!835061))

(assert (=> b!898457 m!834913))

(assert (=> b!898457 m!835059))

(assert (=> b!898457 m!835059))

(assert (=> b!898457 m!835061))

(assert (=> b!898315 d!111181))

(declare-fun d!111183 () Bool)

(assert (=> d!111183 (= (validMask!0 (mask!26136 thiss!1181)) (and (or (= (mask!26136 thiss!1181) #b00000000000000000000000000000111) (= (mask!26136 thiss!1181) #b00000000000000000000000000001111) (= (mask!26136 thiss!1181) #b00000000000000000000000000011111) (= (mask!26136 thiss!1181) #b00000000000000000000000000111111) (= (mask!26136 thiss!1181) #b00000000000000000000000001111111) (= (mask!26136 thiss!1181) #b00000000000000000000000011111111) (= (mask!26136 thiss!1181) #b00000000000000000000000111111111) (= (mask!26136 thiss!1181) #b00000000000000000000001111111111) (= (mask!26136 thiss!1181) #b00000000000000000000011111111111) (= (mask!26136 thiss!1181) #b00000000000000000000111111111111) (= (mask!26136 thiss!1181) #b00000000000000000001111111111111) (= (mask!26136 thiss!1181) #b00000000000000000011111111111111) (= (mask!26136 thiss!1181) #b00000000000000000111111111111111) (= (mask!26136 thiss!1181) #b00000000000000001111111111111111) (= (mask!26136 thiss!1181) #b00000000000000011111111111111111) (= (mask!26136 thiss!1181) #b00000000000000111111111111111111) (= (mask!26136 thiss!1181) #b00000000000001111111111111111111) (= (mask!26136 thiss!1181) #b00000000000011111111111111111111) (= (mask!26136 thiss!1181) #b00000000000111111111111111111111) (= (mask!26136 thiss!1181) #b00000000001111111111111111111111) (= (mask!26136 thiss!1181) #b00000000011111111111111111111111) (= (mask!26136 thiss!1181) #b00000000111111111111111111111111) (= (mask!26136 thiss!1181) #b00000001111111111111111111111111) (= (mask!26136 thiss!1181) #b00000011111111111111111111111111) (= (mask!26136 thiss!1181) #b00000111111111111111111111111111) (= (mask!26136 thiss!1181) #b00001111111111111111111111111111) (= (mask!26136 thiss!1181) #b00011111111111111111111111111111) (= (mask!26136 thiss!1181) #b00111111111111111111111111111111)) (bvsle (mask!26136 thiss!1181) #b00111111111111111111111111111111)))))

(assert (=> b!898315 d!111183))

(declare-fun b!898464 () Bool)

(declare-fun e!502650 () Bool)

(assert (=> b!898464 (= e!502650 tp_is_empty!18345)))

(declare-fun mapNonEmpty!29178 () Bool)

(declare-fun mapRes!29178 () Bool)

(declare-fun tp!56130 () Bool)

(assert (=> mapNonEmpty!29178 (= mapRes!29178 (and tp!56130 e!502650))))

(declare-fun mapKey!29178 () (_ BitVec 32))

(declare-fun mapRest!29178 () (Array (_ BitVec 32) ValueCell!8691))

(declare-fun mapValue!29178 () ValueCell!8691)

(assert (=> mapNonEmpty!29178 (= mapRest!29172 (store mapRest!29178 mapKey!29178 mapValue!29178))))

(declare-fun condMapEmpty!29178 () Bool)

(declare-fun mapDefault!29178 () ValueCell!8691)

(assert (=> mapNonEmpty!29172 (= condMapEmpty!29178 (= mapRest!29172 ((as const (Array (_ BitVec 32) ValueCell!8691)) mapDefault!29178)))))

(declare-fun e!502651 () Bool)

(assert (=> mapNonEmpty!29172 (= tp!56121 (and e!502651 mapRes!29178))))

(declare-fun mapIsEmpty!29178 () Bool)

(assert (=> mapIsEmpty!29178 mapRes!29178))

(declare-fun b!898465 () Bool)

(assert (=> b!898465 (= e!502651 tp_is_empty!18345)))

(assert (= (and mapNonEmpty!29172 condMapEmpty!29178) mapIsEmpty!29178))

(assert (= (and mapNonEmpty!29172 (not condMapEmpty!29178)) mapNonEmpty!29178))

(assert (= (and mapNonEmpty!29178 ((_ is ValueCellFull!8691) mapValue!29178)) b!898464))

(assert (= (and mapNonEmpty!29172 ((_ is ValueCellFull!8691) mapDefault!29178)) b!898465))

(declare-fun m!835063 () Bool)

(assert (=> mapNonEmpty!29178 m!835063))

(declare-fun b_lambda!12995 () Bool)

(assert (= b_lambda!12993 (or (and b!898311 b_free!16017) b_lambda!12995)))

(check-sat (not b!898436) (not b!898426) (not b!898372) (not b!898363) (not bm!39871) (not mapNonEmpty!29178) b_and!26333 (not bm!39870) (not d!111165) (not b!898427) (not b!898383) (not b!898441) (not b_lambda!12995) (not b!898457) (not d!111181) (not d!111173) (not b!898347) (not b!898373) (not b!898377) tp_is_empty!18345 (not b!898442) (not d!111179) (not b!898444) (not d!111175) (not b!898374) (not b!898435) (not d!111163) (not bm!39873) (not b_next!16017) (not b!898445) (not d!111161) (not b!898455) (not bm!39874))
(check-sat b_and!26333 (not b_next!16017))
(get-model)

(assert (=> d!111161 d!111163))

(declare-fun d!111185 () Bool)

(declare-fun e!502654 () Bool)

(assert (=> d!111185 e!502654))

(declare-fun res!607249 () Bool)

(assert (=> d!111185 (=> res!607249 e!502654)))

(declare-fun lt!405669 () SeekEntryResult!8913)

(assert (=> d!111185 (= res!607249 (not ((_ is Found!8913) lt!405669)))))

(assert (=> d!111185 (= lt!405669 (seekEntry!0 key!785 (_keys!10184 thiss!1181) (mask!26136 thiss!1181)))))

(assert (=> d!111185 true))

(declare-fun _$36!366 () Unit!30509)

(assert (=> d!111185 (= (choose!1498 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) key!785) _$36!366)))

(declare-fun b!898468 () Bool)

(assert (=> b!898468 (= e!502654 (inRange!0 (index!38023 lt!405669) (mask!26136 thiss!1181)))))

(assert (= (and d!111185 (not res!607249)) b!898468))

(assert (=> d!111185 m!834935))

(declare-fun m!835065 () Bool)

(assert (=> b!898468 m!835065))

(assert (=> d!111161 d!111185))

(assert (=> d!111161 d!111183))

(assert (=> d!111179 d!111183))

(assert (=> d!111175 d!111177))

(declare-fun d!111187 () Bool)

(assert (=> d!111187 (arrayContainsKey!0 (_keys!10184 thiss!1181) key!785 #b00000000000000000000000000000000)))

(assert (=> d!111187 true))

(declare-fun _$60!418 () Unit!30509)

(assert (=> d!111187 (= (choose!13 (_keys!10184 thiss!1181) key!785 (index!38023 lt!405550)) _$60!418)))

(declare-fun bs!25207 () Bool)

(assert (= bs!25207 d!111187))

(assert (=> bs!25207 m!834919))

(assert (=> d!111175 d!111187))

(declare-fun d!111189 () Bool)

(assert (=> d!111189 (= (validKeyInArray!0 (select (arr!25330 (_keys!10184 thiss!1181)) #b00000000000000000000000000000000)) (and (not (= (select (arr!25330 (_keys!10184 thiss!1181)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!25330 (_keys!10184 thiss!1181)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!898441 d!111189))

(declare-fun d!111191 () Bool)

(assert (=> d!111191 (= (inRange!0 (index!38023 lt!405570) (mask!26136 thiss!1181)) (and (bvsge (index!38023 lt!405570) #b00000000000000000000000000000000) (bvslt (index!38023 lt!405570) (bvadd (mask!26136 thiss!1181) #b00000000000000000000000000000001))))))

(assert (=> b!898347 d!111191))

(assert (=> b!898442 d!111189))

(declare-fun d!111193 () Bool)

(declare-fun e!502657 () Bool)

(assert (=> d!111193 e!502657))

(declare-fun res!607254 () Bool)

(assert (=> d!111193 (=> (not res!607254) (not e!502657))))

(declare-fun lt!405681 () ListLongMap!10767)

(assert (=> d!111193 (= res!607254 (contains!4398 lt!405681 (_1!6038 (tuple2!12057 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5233 thiss!1181)))))))

(declare-fun lt!405679 () List!17917)

(assert (=> d!111193 (= lt!405681 (ListLongMap!10768 lt!405679))))

(declare-fun lt!405680 () Unit!30509)

(declare-fun lt!405678 () Unit!30509)

(assert (=> d!111193 (= lt!405680 lt!405678)))

(assert (=> d!111193 (= (getValueByKey!456 lt!405679 (_1!6038 (tuple2!12057 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5233 thiss!1181)))) (Some!461 (_2!6038 (tuple2!12057 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5233 thiss!1181)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!249 (List!17917 (_ BitVec 64) V!29425) Unit!30509)

(assert (=> d!111193 (= lt!405678 (lemmaContainsTupThenGetReturnValue!249 lt!405679 (_1!6038 (tuple2!12057 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5233 thiss!1181))) (_2!6038 (tuple2!12057 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5233 thiss!1181)))))))

(declare-fun insertStrictlySorted!305 (List!17917 (_ BitVec 64) V!29425) List!17917)

(assert (=> d!111193 (= lt!405679 (insertStrictlySorted!305 (toList!5399 call!39872) (_1!6038 (tuple2!12057 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5233 thiss!1181))) (_2!6038 (tuple2!12057 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5233 thiss!1181)))))))

(assert (=> d!111193 (= (+!2546 call!39872 (tuple2!12057 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5233 thiss!1181))) lt!405681)))

(declare-fun b!898473 () Bool)

(declare-fun res!607255 () Bool)

(assert (=> b!898473 (=> (not res!607255) (not e!502657))))

(assert (=> b!898473 (= res!607255 (= (getValueByKey!456 (toList!5399 lt!405681) (_1!6038 (tuple2!12057 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5233 thiss!1181)))) (Some!461 (_2!6038 (tuple2!12057 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5233 thiss!1181))))))))

(declare-fun b!898474 () Bool)

(declare-fun contains!4399 (List!17917 tuple2!12056) Bool)

(assert (=> b!898474 (= e!502657 (contains!4399 (toList!5399 lt!405681) (tuple2!12057 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5233 thiss!1181))))))

(assert (= (and d!111193 res!607254) b!898473))

(assert (= (and b!898473 res!607255) b!898474))

(declare-fun m!835067 () Bool)

(assert (=> d!111193 m!835067))

(declare-fun m!835069 () Bool)

(assert (=> d!111193 m!835069))

(declare-fun m!835071 () Bool)

(assert (=> d!111193 m!835071))

(declare-fun m!835073 () Bool)

(assert (=> d!111193 m!835073))

(declare-fun m!835075 () Bool)

(assert (=> b!898473 m!835075))

(declare-fun m!835077 () Bool)

(assert (=> b!898474 m!835077))

(assert (=> b!898426 d!111193))

(declare-fun b!898499 () Bool)

(declare-fun lt!405701 () Unit!30509)

(declare-fun lt!405696 () Unit!30509)

(assert (=> b!898499 (= lt!405701 lt!405696)))

(declare-fun lt!405700 () (_ BitVec 64))

(declare-fun lt!405699 () ListLongMap!10767)

(declare-fun lt!405697 () (_ BitVec 64))

(declare-fun lt!405702 () V!29425)

(assert (=> b!898499 (not (contains!4398 (+!2546 lt!405699 (tuple2!12057 lt!405697 lt!405702)) lt!405700))))

(declare-fun addStillNotContains!216 (ListLongMap!10767 (_ BitVec 64) V!29425 (_ BitVec 64)) Unit!30509)

(assert (=> b!898499 (= lt!405696 (addStillNotContains!216 lt!405699 lt!405697 lt!405702 lt!405700))))

(assert (=> b!898499 (= lt!405700 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!898499 (= lt!405702 (get!13327 (select (arr!25331 (_values!5420 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1305 (defaultEntry!5413 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!898499 (= lt!405697 (select (arr!25330 (_keys!10184 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun call!39880 () ListLongMap!10767)

(assert (=> b!898499 (= lt!405699 call!39880)))

(declare-fun e!502673 () ListLongMap!10767)

(assert (=> b!898499 (= e!502673 (+!2546 call!39880 (tuple2!12057 (select (arr!25330 (_keys!10184 thiss!1181)) #b00000000000000000000000000000000) (get!13327 (select (arr!25331 (_values!5420 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1305 (defaultEntry!5413 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!898500 () Bool)

(declare-fun e!502676 () Bool)

(declare-fun e!502678 () Bool)

(assert (=> b!898500 (= e!502676 e!502678)))

(declare-fun c!94902 () Bool)

(declare-fun e!502675 () Bool)

(assert (=> b!898500 (= c!94902 e!502675)))

(declare-fun res!607264 () Bool)

(assert (=> b!898500 (=> (not res!607264) (not e!502675))))

(assert (=> b!898500 (= res!607264 (bvslt #b00000000000000000000000000000000 (size!25786 (_keys!10184 thiss!1181))))))

(declare-fun d!111195 () Bool)

(assert (=> d!111195 e!502676))

(declare-fun res!607266 () Bool)

(assert (=> d!111195 (=> (not res!607266) (not e!502676))))

(declare-fun lt!405698 () ListLongMap!10767)

(assert (=> d!111195 (= res!607266 (not (contains!4398 lt!405698 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!502672 () ListLongMap!10767)

(assert (=> d!111195 (= lt!405698 e!502672)))

(declare-fun c!94900 () Bool)

(assert (=> d!111195 (= c!94900 (bvsge #b00000000000000000000000000000000 (size!25786 (_keys!10184 thiss!1181))))))

(assert (=> d!111195 (validMask!0 (mask!26136 thiss!1181))))

(assert (=> d!111195 (= (getCurrentListMapNoExtraKeys!3294 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5413 thiss!1181)) lt!405698)))

(declare-fun b!898501 () Bool)

(declare-fun e!502677 () Bool)

(declare-fun isEmpty!689 (ListLongMap!10767) Bool)

(assert (=> b!898501 (= e!502677 (isEmpty!689 lt!405698))))

(declare-fun b!898502 () Bool)

(assert (=> b!898502 (= e!502672 e!502673)))

(declare-fun c!94903 () Bool)

(assert (=> b!898502 (= c!94903 (validKeyInArray!0 (select (arr!25330 (_keys!10184 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!898503 () Bool)

(assert (=> b!898503 (= e!502672 (ListLongMap!10768 Nil!17914))))

(declare-fun b!898504 () Bool)

(assert (=> b!898504 (= e!502675 (validKeyInArray!0 (select (arr!25330 (_keys!10184 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> b!898504 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!898505 () Bool)

(assert (=> b!898505 (= e!502678 e!502677)))

(declare-fun c!94901 () Bool)

(assert (=> b!898505 (= c!94901 (bvslt #b00000000000000000000000000000000 (size!25786 (_keys!10184 thiss!1181))))))

(declare-fun bm!39877 () Bool)

(assert (=> bm!39877 (= call!39880 (getCurrentListMapNoExtraKeys!3294 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!5413 thiss!1181)))))

(declare-fun b!898506 () Bool)

(assert (=> b!898506 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25786 (_keys!10184 thiss!1181))))))

(assert (=> b!898506 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25787 (_values!5420 thiss!1181))))))

(declare-fun e!502674 () Bool)

(assert (=> b!898506 (= e!502674 (= (apply!410 lt!405698 (select (arr!25330 (_keys!10184 thiss!1181)) #b00000000000000000000000000000000)) (get!13327 (select (arr!25331 (_values!5420 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1305 (defaultEntry!5413 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!898507 () Bool)

(declare-fun res!607265 () Bool)

(assert (=> b!898507 (=> (not res!607265) (not e!502676))))

(assert (=> b!898507 (= res!607265 (not (contains!4398 lt!405698 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!898508 () Bool)

(assert (=> b!898508 (= e!502678 e!502674)))

(assert (=> b!898508 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25786 (_keys!10184 thiss!1181))))))

(declare-fun res!607267 () Bool)

(assert (=> b!898508 (= res!607267 (contains!4398 lt!405698 (select (arr!25330 (_keys!10184 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> b!898508 (=> (not res!607267) (not e!502674))))

(declare-fun b!898509 () Bool)

(assert (=> b!898509 (= e!502673 call!39880)))

(declare-fun b!898510 () Bool)

(assert (=> b!898510 (= e!502677 (= lt!405698 (getCurrentListMapNoExtraKeys!3294 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!5413 thiss!1181))))))

(assert (= (and d!111195 c!94900) b!898503))

(assert (= (and d!111195 (not c!94900)) b!898502))

(assert (= (and b!898502 c!94903) b!898499))

(assert (= (and b!898502 (not c!94903)) b!898509))

(assert (= (or b!898499 b!898509) bm!39877))

(assert (= (and d!111195 res!607266) b!898507))

(assert (= (and b!898507 res!607265) b!898500))

(assert (= (and b!898500 res!607264) b!898504))

(assert (= (and b!898500 c!94902) b!898508))

(assert (= (and b!898500 (not c!94902)) b!898505))

(assert (= (and b!898508 res!607267) b!898506))

(assert (= (and b!898505 c!94901) b!898510))

(assert (= (and b!898505 (not c!94901)) b!898501))

(declare-fun b_lambda!12997 () Bool)

(assert (=> (not b_lambda!12997) (not b!898499)))

(assert (=> b!898499 t!25268))

(declare-fun b_and!26335 () Bool)

(assert (= b_and!26333 (and (=> t!25268 result!10159) b_and!26335)))

(declare-fun b_lambda!12999 () Bool)

(assert (=> (not b_lambda!12999) (not b!898506)))

(assert (=> b!898506 t!25268))

(declare-fun b_and!26337 () Bool)

(assert (= b_and!26335 (and (=> t!25268 result!10159) b_and!26337)))

(assert (=> b!898504 m!834995))

(assert (=> b!898504 m!834995))

(assert (=> b!898504 m!835051))

(declare-fun m!835079 () Bool)

(assert (=> b!898507 m!835079))

(declare-fun m!835081 () Bool)

(assert (=> d!111195 m!835081))

(assert (=> d!111195 m!834921))

(assert (=> b!898502 m!834995))

(assert (=> b!898502 m!834995))

(assert (=> b!898502 m!835051))

(declare-fun m!835083 () Bool)

(assert (=> b!898501 m!835083))

(assert (=> b!898508 m!834995))

(assert (=> b!898508 m!834995))

(declare-fun m!835085 () Bool)

(assert (=> b!898508 m!835085))

(assert (=> b!898506 m!834995))

(declare-fun m!835087 () Bool)

(assert (=> b!898506 m!835087))

(assert (=> b!898506 m!835033))

(assert (=> b!898506 m!835035))

(assert (=> b!898506 m!834995))

(assert (=> b!898506 m!835033))

(assert (=> b!898506 m!835035))

(assert (=> b!898506 m!835037))

(declare-fun m!835089 () Bool)

(assert (=> b!898510 m!835089))

(assert (=> bm!39877 m!835089))

(declare-fun m!835091 () Bool)

(assert (=> b!898499 m!835091))

(declare-fun m!835093 () Bool)

(assert (=> b!898499 m!835093))

(assert (=> b!898499 m!835033))

(assert (=> b!898499 m!835035))

(assert (=> b!898499 m!834995))

(assert (=> b!898499 m!835033))

(assert (=> b!898499 m!835035))

(assert (=> b!898499 m!835037))

(assert (=> b!898499 m!835093))

(declare-fun m!835095 () Bool)

(assert (=> b!898499 m!835095))

(declare-fun m!835097 () Bool)

(assert (=> b!898499 m!835097))

(assert (=> bm!39873 d!111195))

(declare-fun d!111197 () Bool)

(declare-fun e!502680 () Bool)

(assert (=> d!111197 e!502680))

(declare-fun res!607268 () Bool)

(assert (=> d!111197 (=> res!607268 e!502680)))

(declare-fun lt!405703 () Bool)

(assert (=> d!111197 (= res!607268 (not lt!405703))))

(declare-fun lt!405704 () Bool)

(assert (=> d!111197 (= lt!405703 lt!405704)))

(declare-fun lt!405705 () Unit!30509)

(declare-fun e!502679 () Unit!30509)

(assert (=> d!111197 (= lt!405705 e!502679)))

(declare-fun c!94904 () Bool)

(assert (=> d!111197 (= c!94904 lt!405704)))

(assert (=> d!111197 (= lt!405704 (containsKey!426 (toList!5399 lt!405643) (select (arr!25330 (_keys!10184 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> d!111197 (= (contains!4398 lt!405643 (select (arr!25330 (_keys!10184 thiss!1181)) #b00000000000000000000000000000000)) lt!405703)))

(declare-fun b!898511 () Bool)

(declare-fun lt!405706 () Unit!30509)

(assert (=> b!898511 (= e!502679 lt!405706)))

(assert (=> b!898511 (= lt!405706 (lemmaContainsKeyImpliesGetValueByKeyDefined!321 (toList!5399 lt!405643) (select (arr!25330 (_keys!10184 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> b!898511 (isDefined!331 (getValueByKey!456 (toList!5399 lt!405643) (select (arr!25330 (_keys!10184 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!898512 () Bool)

(declare-fun Unit!30513 () Unit!30509)

(assert (=> b!898512 (= e!502679 Unit!30513)))

(declare-fun b!898513 () Bool)

(assert (=> b!898513 (= e!502680 (isDefined!331 (getValueByKey!456 (toList!5399 lt!405643) (select (arr!25330 (_keys!10184 thiss!1181)) #b00000000000000000000000000000000))))))

(assert (= (and d!111197 c!94904) b!898511))

(assert (= (and d!111197 (not c!94904)) b!898512))

(assert (= (and d!111197 (not res!607268)) b!898513))

(assert (=> d!111197 m!834995))

(declare-fun m!835099 () Bool)

(assert (=> d!111197 m!835099))

(assert (=> b!898511 m!834995))

(declare-fun m!835101 () Bool)

(assert (=> b!898511 m!835101))

(assert (=> b!898511 m!834995))

(declare-fun m!835103 () Bool)

(assert (=> b!898511 m!835103))

(assert (=> b!898511 m!835103))

(declare-fun m!835105 () Bool)

(assert (=> b!898511 m!835105))

(assert (=> b!898513 m!834995))

(assert (=> b!898513 m!835103))

(assert (=> b!898513 m!835103))

(assert (=> b!898513 m!835105))

(assert (=> b!898427 d!111197))

(declare-fun d!111199 () Bool)

(declare-fun get!13328 (Option!462) V!29425)

(assert (=> d!111199 (= (apply!410 lt!405643 (select (arr!25330 (_keys!10184 thiss!1181)) #b00000000000000000000000000000000)) (get!13328 (getValueByKey!456 (toList!5399 lt!405643) (select (arr!25330 (_keys!10184 thiss!1181)) #b00000000000000000000000000000000))))))

(declare-fun bs!25208 () Bool)

(assert (= bs!25208 d!111199))

(assert (=> bs!25208 m!834995))

(assert (=> bs!25208 m!835103))

(assert (=> bs!25208 m!835103))

(declare-fun m!835107 () Bool)

(assert (=> bs!25208 m!835107))

(assert (=> b!898444 d!111199))

(declare-fun d!111201 () Bool)

(declare-fun c!94907 () Bool)

(assert (=> d!111201 (= c!94907 ((_ is ValueCellFull!8691) (select (arr!25331 (_values!5420 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun e!502683 () V!29425)

(assert (=> d!111201 (= (get!13327 (select (arr!25331 (_values!5420 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1305 (defaultEntry!5413 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)) e!502683)))

(declare-fun b!898518 () Bool)

(declare-fun get!13329 (ValueCell!8691 V!29425) V!29425)

(assert (=> b!898518 (= e!502683 (get!13329 (select (arr!25331 (_values!5420 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1305 (defaultEntry!5413 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!898519 () Bool)

(declare-fun get!13330 (ValueCell!8691 V!29425) V!29425)

(assert (=> b!898519 (= e!502683 (get!13330 (select (arr!25331 (_values!5420 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1305 (defaultEntry!5413 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!111201 c!94907) b!898518))

(assert (= (and d!111201 (not c!94907)) b!898519))

(assert (=> b!898518 m!835033))

(assert (=> b!898518 m!835035))

(declare-fun m!835109 () Bool)

(assert (=> b!898518 m!835109))

(assert (=> b!898519 m!835033))

(assert (=> b!898519 m!835035))

(declare-fun m!835111 () Bool)

(assert (=> b!898519 m!835111))

(assert (=> b!898444 d!111201))

(declare-fun d!111203 () Bool)

(declare-fun e!502684 () Bool)

(assert (=> d!111203 e!502684))

(declare-fun res!607269 () Bool)

(assert (=> d!111203 (=> (not res!607269) (not e!502684))))

(declare-fun lt!405710 () ListLongMap!10767)

(assert (=> d!111203 (= res!607269 (contains!4398 lt!405710 (_1!6038 (ite (or c!94886 c!94884) (tuple2!12057 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5233 thiss!1181)) (tuple2!12057 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5233 thiss!1181))))))))

(declare-fun lt!405708 () List!17917)

(assert (=> d!111203 (= lt!405710 (ListLongMap!10768 lt!405708))))

(declare-fun lt!405709 () Unit!30509)

(declare-fun lt!405707 () Unit!30509)

(assert (=> d!111203 (= lt!405709 lt!405707)))

(assert (=> d!111203 (= (getValueByKey!456 lt!405708 (_1!6038 (ite (or c!94886 c!94884) (tuple2!12057 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5233 thiss!1181)) (tuple2!12057 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5233 thiss!1181))))) (Some!461 (_2!6038 (ite (or c!94886 c!94884) (tuple2!12057 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5233 thiss!1181)) (tuple2!12057 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5233 thiss!1181))))))))

(assert (=> d!111203 (= lt!405707 (lemmaContainsTupThenGetReturnValue!249 lt!405708 (_1!6038 (ite (or c!94886 c!94884) (tuple2!12057 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5233 thiss!1181)) (tuple2!12057 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5233 thiss!1181)))) (_2!6038 (ite (or c!94886 c!94884) (tuple2!12057 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5233 thiss!1181)) (tuple2!12057 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5233 thiss!1181))))))))

(assert (=> d!111203 (= lt!405708 (insertStrictlySorted!305 (toList!5399 (ite c!94886 call!39873 (ite c!94884 call!39875 call!39874))) (_1!6038 (ite (or c!94886 c!94884) (tuple2!12057 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5233 thiss!1181)) (tuple2!12057 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5233 thiss!1181)))) (_2!6038 (ite (or c!94886 c!94884) (tuple2!12057 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5233 thiss!1181)) (tuple2!12057 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5233 thiss!1181))))))))

(assert (=> d!111203 (= (+!2546 (ite c!94886 call!39873 (ite c!94884 call!39875 call!39874)) (ite (or c!94886 c!94884) (tuple2!12057 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5233 thiss!1181)) (tuple2!12057 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5233 thiss!1181)))) lt!405710)))

(declare-fun b!898520 () Bool)

(declare-fun res!607270 () Bool)

(assert (=> b!898520 (=> (not res!607270) (not e!502684))))

(assert (=> b!898520 (= res!607270 (= (getValueByKey!456 (toList!5399 lt!405710) (_1!6038 (ite (or c!94886 c!94884) (tuple2!12057 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5233 thiss!1181)) (tuple2!12057 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5233 thiss!1181))))) (Some!461 (_2!6038 (ite (or c!94886 c!94884) (tuple2!12057 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5233 thiss!1181)) (tuple2!12057 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5233 thiss!1181)))))))))

(declare-fun b!898521 () Bool)

(assert (=> b!898521 (= e!502684 (contains!4399 (toList!5399 lt!405710) (ite (or c!94886 c!94884) (tuple2!12057 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5233 thiss!1181)) (tuple2!12057 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5233 thiss!1181)))))))

(assert (= (and d!111203 res!607269) b!898520))

(assert (= (and b!898520 res!607270) b!898521))

(declare-fun m!835113 () Bool)

(assert (=> d!111203 m!835113))

(declare-fun m!835115 () Bool)

(assert (=> d!111203 m!835115))

(declare-fun m!835117 () Bool)

(assert (=> d!111203 m!835117))

(declare-fun m!835119 () Bool)

(assert (=> d!111203 m!835119))

(declare-fun m!835121 () Bool)

(assert (=> b!898520 m!835121))

(declare-fun m!835123 () Bool)

(assert (=> b!898521 m!835123))

(assert (=> bm!39874 d!111203))

(declare-fun d!111205 () Bool)

(declare-fun e!502686 () Bool)

(assert (=> d!111205 e!502686))

(declare-fun res!607271 () Bool)

(assert (=> d!111205 (=> res!607271 e!502686)))

(declare-fun lt!405711 () Bool)

(assert (=> d!111205 (= res!607271 (not lt!405711))))

(declare-fun lt!405712 () Bool)

(assert (=> d!111205 (= lt!405711 lt!405712)))

(declare-fun lt!405713 () Unit!30509)

(declare-fun e!502685 () Unit!30509)

(assert (=> d!111205 (= lt!405713 e!502685)))

(declare-fun c!94908 () Bool)

(assert (=> d!111205 (= c!94908 lt!405712)))

(assert (=> d!111205 (= lt!405712 (containsKey!426 (toList!5399 lt!405643) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!111205 (= (contains!4398 lt!405643 #b1000000000000000000000000000000000000000000000000000000000000000) lt!405711)))

(declare-fun b!898522 () Bool)

(declare-fun lt!405714 () Unit!30509)

(assert (=> b!898522 (= e!502685 lt!405714)))

(assert (=> b!898522 (= lt!405714 (lemmaContainsKeyImpliesGetValueByKeyDefined!321 (toList!5399 lt!405643) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!898522 (isDefined!331 (getValueByKey!456 (toList!5399 lt!405643) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!898523 () Bool)

(declare-fun Unit!30514 () Unit!30509)

(assert (=> b!898523 (= e!502685 Unit!30514)))

(declare-fun b!898524 () Bool)

(assert (=> b!898524 (= e!502686 (isDefined!331 (getValueByKey!456 (toList!5399 lt!405643) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!111205 c!94908) b!898522))

(assert (= (and d!111205 (not c!94908)) b!898523))

(assert (= (and d!111205 (not res!607271)) b!898524))

(declare-fun m!835125 () Bool)

(assert (=> d!111205 m!835125))

(declare-fun m!835127 () Bool)

(assert (=> b!898522 m!835127))

(declare-fun m!835129 () Bool)

(assert (=> b!898522 m!835129))

(assert (=> b!898522 m!835129))

(declare-fun m!835131 () Bool)

(assert (=> b!898522 m!835131))

(assert (=> b!898524 m!835129))

(assert (=> b!898524 m!835129))

(assert (=> b!898524 m!835131))

(assert (=> bm!39870 d!111205))

(declare-fun d!111207 () Bool)

(assert (=> d!111207 (= (apply!410 lt!405636 lt!405652) (get!13328 (getValueByKey!456 (toList!5399 lt!405636) lt!405652)))))

(declare-fun bs!25209 () Bool)

(assert (= bs!25209 d!111207))

(declare-fun m!835133 () Bool)

(assert (=> bs!25209 m!835133))

(assert (=> bs!25209 m!835133))

(declare-fun m!835135 () Bool)

(assert (=> bs!25209 m!835135))

(assert (=> b!898445 d!111207))

(declare-fun d!111209 () Bool)

(assert (=> d!111209 (= (apply!410 (+!2546 lt!405647 (tuple2!12057 lt!405635 (minValue!5233 thiss!1181))) lt!405650) (apply!410 lt!405647 lt!405650))))

(declare-fun lt!405717 () Unit!30509)

(declare-fun choose!1500 (ListLongMap!10767 (_ BitVec 64) V!29425 (_ BitVec 64)) Unit!30509)

(assert (=> d!111209 (= lt!405717 (choose!1500 lt!405647 lt!405635 (minValue!5233 thiss!1181) lt!405650))))

(declare-fun e!502689 () Bool)

(assert (=> d!111209 e!502689))

(declare-fun res!607274 () Bool)

(assert (=> d!111209 (=> (not res!607274) (not e!502689))))

(assert (=> d!111209 (= res!607274 (contains!4398 lt!405647 lt!405650))))

(assert (=> d!111209 (= (addApplyDifferent!332 lt!405647 lt!405635 (minValue!5233 thiss!1181) lt!405650) lt!405717)))

(declare-fun b!898528 () Bool)

(assert (=> b!898528 (= e!502689 (not (= lt!405650 lt!405635)))))

(assert (= (and d!111209 res!607274) b!898528))

(assert (=> d!111209 m!835025))

(declare-fun m!835137 () Bool)

(assert (=> d!111209 m!835137))

(assert (=> d!111209 m!835007))

(assert (=> d!111209 m!835019))

(assert (=> d!111209 m!835007))

(declare-fun m!835139 () Bool)

(assert (=> d!111209 m!835139))

(assert (=> b!898445 d!111209))

(declare-fun d!111211 () Bool)

(declare-fun e!502691 () Bool)

(assert (=> d!111211 e!502691))

(declare-fun res!607275 () Bool)

(assert (=> d!111211 (=> res!607275 e!502691)))

(declare-fun lt!405718 () Bool)

(assert (=> d!111211 (= res!607275 (not lt!405718))))

(declare-fun lt!405719 () Bool)

(assert (=> d!111211 (= lt!405718 lt!405719)))

(declare-fun lt!405720 () Unit!30509)

(declare-fun e!502690 () Unit!30509)

(assert (=> d!111211 (= lt!405720 e!502690)))

(declare-fun c!94909 () Bool)

(assert (=> d!111211 (= c!94909 lt!405719)))

(assert (=> d!111211 (= lt!405719 (containsKey!426 (toList!5399 (+!2546 lt!405637 (tuple2!12057 lt!405640 (zeroValue!5233 thiss!1181)))) lt!405634))))

(assert (=> d!111211 (= (contains!4398 (+!2546 lt!405637 (tuple2!12057 lt!405640 (zeroValue!5233 thiss!1181))) lt!405634) lt!405718)))

(declare-fun b!898529 () Bool)

(declare-fun lt!405721 () Unit!30509)

(assert (=> b!898529 (= e!502690 lt!405721)))

(assert (=> b!898529 (= lt!405721 (lemmaContainsKeyImpliesGetValueByKeyDefined!321 (toList!5399 (+!2546 lt!405637 (tuple2!12057 lt!405640 (zeroValue!5233 thiss!1181)))) lt!405634))))

(assert (=> b!898529 (isDefined!331 (getValueByKey!456 (toList!5399 (+!2546 lt!405637 (tuple2!12057 lt!405640 (zeroValue!5233 thiss!1181)))) lt!405634))))

(declare-fun b!898530 () Bool)

(declare-fun Unit!30515 () Unit!30509)

(assert (=> b!898530 (= e!502690 Unit!30515)))

(declare-fun b!898531 () Bool)

(assert (=> b!898531 (= e!502691 (isDefined!331 (getValueByKey!456 (toList!5399 (+!2546 lt!405637 (tuple2!12057 lt!405640 (zeroValue!5233 thiss!1181)))) lt!405634)))))

(assert (= (and d!111211 c!94909) b!898529))

(assert (= (and d!111211 (not c!94909)) b!898530))

(assert (= (and d!111211 (not res!607275)) b!898531))

(declare-fun m!835141 () Bool)

(assert (=> d!111211 m!835141))

(declare-fun m!835143 () Bool)

(assert (=> b!898529 m!835143))

(declare-fun m!835145 () Bool)

(assert (=> b!898529 m!835145))

(assert (=> b!898529 m!835145))

(declare-fun m!835147 () Bool)

(assert (=> b!898529 m!835147))

(assert (=> b!898531 m!835145))

(assert (=> b!898531 m!835145))

(assert (=> b!898531 m!835147))

(assert (=> b!898445 d!111211))

(declare-fun d!111213 () Bool)

(declare-fun e!502692 () Bool)

(assert (=> d!111213 e!502692))

(declare-fun res!607276 () Bool)

(assert (=> d!111213 (=> (not res!607276) (not e!502692))))

(declare-fun lt!405725 () ListLongMap!10767)

(assert (=> d!111213 (= res!607276 (contains!4398 lt!405725 (_1!6038 (tuple2!12057 lt!405642 (zeroValue!5233 thiss!1181)))))))

(declare-fun lt!405723 () List!17917)

(assert (=> d!111213 (= lt!405725 (ListLongMap!10768 lt!405723))))

(declare-fun lt!405724 () Unit!30509)

(declare-fun lt!405722 () Unit!30509)

(assert (=> d!111213 (= lt!405724 lt!405722)))

(assert (=> d!111213 (= (getValueByKey!456 lt!405723 (_1!6038 (tuple2!12057 lt!405642 (zeroValue!5233 thiss!1181)))) (Some!461 (_2!6038 (tuple2!12057 lt!405642 (zeroValue!5233 thiss!1181)))))))

(assert (=> d!111213 (= lt!405722 (lemmaContainsTupThenGetReturnValue!249 lt!405723 (_1!6038 (tuple2!12057 lt!405642 (zeroValue!5233 thiss!1181))) (_2!6038 (tuple2!12057 lt!405642 (zeroValue!5233 thiss!1181)))))))

(assert (=> d!111213 (= lt!405723 (insertStrictlySorted!305 (toList!5399 lt!405638) (_1!6038 (tuple2!12057 lt!405642 (zeroValue!5233 thiss!1181))) (_2!6038 (tuple2!12057 lt!405642 (zeroValue!5233 thiss!1181)))))))

(assert (=> d!111213 (= (+!2546 lt!405638 (tuple2!12057 lt!405642 (zeroValue!5233 thiss!1181))) lt!405725)))

(declare-fun b!898532 () Bool)

(declare-fun res!607277 () Bool)

(assert (=> b!898532 (=> (not res!607277) (not e!502692))))

(assert (=> b!898532 (= res!607277 (= (getValueByKey!456 (toList!5399 lt!405725) (_1!6038 (tuple2!12057 lt!405642 (zeroValue!5233 thiss!1181)))) (Some!461 (_2!6038 (tuple2!12057 lt!405642 (zeroValue!5233 thiss!1181))))))))

(declare-fun b!898533 () Bool)

(assert (=> b!898533 (= e!502692 (contains!4399 (toList!5399 lt!405725) (tuple2!12057 lt!405642 (zeroValue!5233 thiss!1181))))))

(assert (= (and d!111213 res!607276) b!898532))

(assert (= (and b!898532 res!607277) b!898533))

(declare-fun m!835149 () Bool)

(assert (=> d!111213 m!835149))

(declare-fun m!835151 () Bool)

(assert (=> d!111213 m!835151))

(declare-fun m!835153 () Bool)

(assert (=> d!111213 m!835153))

(declare-fun m!835155 () Bool)

(assert (=> d!111213 m!835155))

(declare-fun m!835157 () Bool)

(assert (=> b!898532 m!835157))

(declare-fun m!835159 () Bool)

(assert (=> b!898533 m!835159))

(assert (=> b!898445 d!111213))

(declare-fun d!111215 () Bool)

(assert (=> d!111215 (= (apply!410 (+!2546 lt!405636 (tuple2!12057 lt!405646 (minValue!5233 thiss!1181))) lt!405652) (apply!410 lt!405636 lt!405652))))

(declare-fun lt!405726 () Unit!30509)

(assert (=> d!111215 (= lt!405726 (choose!1500 lt!405636 lt!405646 (minValue!5233 thiss!1181) lt!405652))))

(declare-fun e!502693 () Bool)

(assert (=> d!111215 e!502693))

(declare-fun res!607278 () Bool)

(assert (=> d!111215 (=> (not res!607278) (not e!502693))))

(assert (=> d!111215 (= res!607278 (contains!4398 lt!405636 lt!405652))))

(assert (=> d!111215 (= (addApplyDifferent!332 lt!405636 lt!405646 (minValue!5233 thiss!1181) lt!405652) lt!405726)))

(declare-fun b!898534 () Bool)

(assert (=> b!898534 (= e!502693 (not (= lt!405652 lt!405646)))))

(assert (= (and d!111215 res!607278) b!898534))

(assert (=> d!111215 m!835029))

(declare-fun m!835161 () Bool)

(assert (=> d!111215 m!835161))

(assert (=> d!111215 m!835015))

(assert (=> d!111215 m!835017))

(assert (=> d!111215 m!835015))

(declare-fun m!835163 () Bool)

(assert (=> d!111215 m!835163))

(assert (=> b!898445 d!111215))

(declare-fun d!111217 () Bool)

(assert (=> d!111217 (= (apply!410 (+!2546 lt!405638 (tuple2!12057 lt!405642 (zeroValue!5233 thiss!1181))) lt!405654) (get!13328 (getValueByKey!456 (toList!5399 (+!2546 lt!405638 (tuple2!12057 lt!405642 (zeroValue!5233 thiss!1181)))) lt!405654)))))

(declare-fun bs!25210 () Bool)

(assert (= bs!25210 d!111217))

(declare-fun m!835165 () Bool)

(assert (=> bs!25210 m!835165))

(assert (=> bs!25210 m!835165))

(declare-fun m!835167 () Bool)

(assert (=> bs!25210 m!835167))

(assert (=> b!898445 d!111217))

(declare-fun d!111219 () Bool)

(assert (=> d!111219 (= (apply!410 (+!2546 lt!405638 (tuple2!12057 lt!405642 (zeroValue!5233 thiss!1181))) lt!405654) (apply!410 lt!405638 lt!405654))))

(declare-fun lt!405727 () Unit!30509)

(assert (=> d!111219 (= lt!405727 (choose!1500 lt!405638 lt!405642 (zeroValue!5233 thiss!1181) lt!405654))))

(declare-fun e!502694 () Bool)

(assert (=> d!111219 e!502694))

(declare-fun res!607279 () Bool)

(assert (=> d!111219 (=> (not res!607279) (not e!502694))))

(assert (=> d!111219 (= res!607279 (contains!4398 lt!405638 lt!405654))))

(assert (=> d!111219 (= (addApplyDifferent!332 lt!405638 lt!405642 (zeroValue!5233 thiss!1181) lt!405654) lt!405727)))

(declare-fun b!898535 () Bool)

(assert (=> b!898535 (= e!502694 (not (= lt!405654 lt!405642)))))

(assert (= (and d!111219 res!607279) b!898535))

(assert (=> d!111219 m!835031))

(declare-fun m!835169 () Bool)

(assert (=> d!111219 m!835169))

(assert (=> d!111219 m!835011))

(assert (=> d!111219 m!835027))

(assert (=> d!111219 m!835011))

(declare-fun m!835171 () Bool)

(assert (=> d!111219 m!835171))

(assert (=> b!898445 d!111219))

(assert (=> b!898445 d!111195))

(declare-fun d!111221 () Bool)

(declare-fun e!502695 () Bool)

(assert (=> d!111221 e!502695))

(declare-fun res!607280 () Bool)

(assert (=> d!111221 (=> (not res!607280) (not e!502695))))

(declare-fun lt!405731 () ListLongMap!10767)

(assert (=> d!111221 (= res!607280 (contains!4398 lt!405731 (_1!6038 (tuple2!12057 lt!405646 (minValue!5233 thiss!1181)))))))

(declare-fun lt!405729 () List!17917)

(assert (=> d!111221 (= lt!405731 (ListLongMap!10768 lt!405729))))

(declare-fun lt!405730 () Unit!30509)

(declare-fun lt!405728 () Unit!30509)

(assert (=> d!111221 (= lt!405730 lt!405728)))

(assert (=> d!111221 (= (getValueByKey!456 lt!405729 (_1!6038 (tuple2!12057 lt!405646 (minValue!5233 thiss!1181)))) (Some!461 (_2!6038 (tuple2!12057 lt!405646 (minValue!5233 thiss!1181)))))))

(assert (=> d!111221 (= lt!405728 (lemmaContainsTupThenGetReturnValue!249 lt!405729 (_1!6038 (tuple2!12057 lt!405646 (minValue!5233 thiss!1181))) (_2!6038 (tuple2!12057 lt!405646 (minValue!5233 thiss!1181)))))))

(assert (=> d!111221 (= lt!405729 (insertStrictlySorted!305 (toList!5399 lt!405636) (_1!6038 (tuple2!12057 lt!405646 (minValue!5233 thiss!1181))) (_2!6038 (tuple2!12057 lt!405646 (minValue!5233 thiss!1181)))))))

(assert (=> d!111221 (= (+!2546 lt!405636 (tuple2!12057 lt!405646 (minValue!5233 thiss!1181))) lt!405731)))

(declare-fun b!898536 () Bool)

(declare-fun res!607281 () Bool)

(assert (=> b!898536 (=> (not res!607281) (not e!502695))))

(assert (=> b!898536 (= res!607281 (= (getValueByKey!456 (toList!5399 lt!405731) (_1!6038 (tuple2!12057 lt!405646 (minValue!5233 thiss!1181)))) (Some!461 (_2!6038 (tuple2!12057 lt!405646 (minValue!5233 thiss!1181))))))))

(declare-fun b!898537 () Bool)

(assert (=> b!898537 (= e!502695 (contains!4399 (toList!5399 lt!405731) (tuple2!12057 lt!405646 (minValue!5233 thiss!1181))))))

(assert (= (and d!111221 res!607280) b!898536))

(assert (= (and b!898536 res!607281) b!898537))

(declare-fun m!835173 () Bool)

(assert (=> d!111221 m!835173))

(declare-fun m!835175 () Bool)

(assert (=> d!111221 m!835175))

(declare-fun m!835177 () Bool)

(assert (=> d!111221 m!835177))

(declare-fun m!835179 () Bool)

(assert (=> d!111221 m!835179))

(declare-fun m!835181 () Bool)

(assert (=> b!898536 m!835181))

(declare-fun m!835183 () Bool)

(assert (=> b!898537 m!835183))

(assert (=> b!898445 d!111221))

(declare-fun d!111223 () Bool)

(assert (=> d!111223 (= (apply!410 (+!2546 lt!405647 (tuple2!12057 lt!405635 (minValue!5233 thiss!1181))) lt!405650) (get!13328 (getValueByKey!456 (toList!5399 (+!2546 lt!405647 (tuple2!12057 lt!405635 (minValue!5233 thiss!1181)))) lt!405650)))))

(declare-fun bs!25211 () Bool)

(assert (= bs!25211 d!111223))

(declare-fun m!835185 () Bool)

(assert (=> bs!25211 m!835185))

(assert (=> bs!25211 m!835185))

(declare-fun m!835187 () Bool)

(assert (=> bs!25211 m!835187))

(assert (=> b!898445 d!111223))

(declare-fun d!111225 () Bool)

(assert (=> d!111225 (= (apply!410 lt!405638 lt!405654) (get!13328 (getValueByKey!456 (toList!5399 lt!405638) lt!405654)))))

(declare-fun bs!25212 () Bool)

(assert (= bs!25212 d!111225))

(declare-fun m!835189 () Bool)

(assert (=> bs!25212 m!835189))

(assert (=> bs!25212 m!835189))

(declare-fun m!835191 () Bool)

(assert (=> bs!25212 m!835191))

(assert (=> b!898445 d!111225))

(declare-fun d!111227 () Bool)

(assert (=> d!111227 (contains!4398 (+!2546 lt!405637 (tuple2!12057 lt!405640 (zeroValue!5233 thiss!1181))) lt!405634)))

(declare-fun lt!405734 () Unit!30509)

(declare-fun choose!1501 (ListLongMap!10767 (_ BitVec 64) V!29425 (_ BitVec 64)) Unit!30509)

(assert (=> d!111227 (= lt!405734 (choose!1501 lt!405637 lt!405640 (zeroValue!5233 thiss!1181) lt!405634))))

(assert (=> d!111227 (contains!4398 lt!405637 lt!405634)))

(assert (=> d!111227 (= (addStillContains!332 lt!405637 lt!405640 (zeroValue!5233 thiss!1181) lt!405634) lt!405734)))

(declare-fun bs!25213 () Bool)

(assert (= bs!25213 d!111227))

(assert (=> bs!25213 m!835009))

(assert (=> bs!25213 m!835009))

(assert (=> bs!25213 m!835013))

(declare-fun m!835193 () Bool)

(assert (=> bs!25213 m!835193))

(declare-fun m!835195 () Bool)

(assert (=> bs!25213 m!835195))

(assert (=> b!898445 d!111227))

(declare-fun d!111229 () Bool)

(declare-fun e!502696 () Bool)

(assert (=> d!111229 e!502696))

(declare-fun res!607282 () Bool)

(assert (=> d!111229 (=> (not res!607282) (not e!502696))))

(declare-fun lt!405738 () ListLongMap!10767)

(assert (=> d!111229 (= res!607282 (contains!4398 lt!405738 (_1!6038 (tuple2!12057 lt!405635 (minValue!5233 thiss!1181)))))))

(declare-fun lt!405736 () List!17917)

(assert (=> d!111229 (= lt!405738 (ListLongMap!10768 lt!405736))))

(declare-fun lt!405737 () Unit!30509)

(declare-fun lt!405735 () Unit!30509)

(assert (=> d!111229 (= lt!405737 lt!405735)))

(assert (=> d!111229 (= (getValueByKey!456 lt!405736 (_1!6038 (tuple2!12057 lt!405635 (minValue!5233 thiss!1181)))) (Some!461 (_2!6038 (tuple2!12057 lt!405635 (minValue!5233 thiss!1181)))))))

(assert (=> d!111229 (= lt!405735 (lemmaContainsTupThenGetReturnValue!249 lt!405736 (_1!6038 (tuple2!12057 lt!405635 (minValue!5233 thiss!1181))) (_2!6038 (tuple2!12057 lt!405635 (minValue!5233 thiss!1181)))))))

(assert (=> d!111229 (= lt!405736 (insertStrictlySorted!305 (toList!5399 lt!405647) (_1!6038 (tuple2!12057 lt!405635 (minValue!5233 thiss!1181))) (_2!6038 (tuple2!12057 lt!405635 (minValue!5233 thiss!1181)))))))

(assert (=> d!111229 (= (+!2546 lt!405647 (tuple2!12057 lt!405635 (minValue!5233 thiss!1181))) lt!405738)))

(declare-fun b!898539 () Bool)

(declare-fun res!607283 () Bool)

(assert (=> b!898539 (=> (not res!607283) (not e!502696))))

(assert (=> b!898539 (= res!607283 (= (getValueByKey!456 (toList!5399 lt!405738) (_1!6038 (tuple2!12057 lt!405635 (minValue!5233 thiss!1181)))) (Some!461 (_2!6038 (tuple2!12057 lt!405635 (minValue!5233 thiss!1181))))))))

(declare-fun b!898540 () Bool)

(assert (=> b!898540 (= e!502696 (contains!4399 (toList!5399 lt!405738) (tuple2!12057 lt!405635 (minValue!5233 thiss!1181))))))

(assert (= (and d!111229 res!607282) b!898539))

(assert (= (and b!898539 res!607283) b!898540))

(declare-fun m!835197 () Bool)

(assert (=> d!111229 m!835197))

(declare-fun m!835199 () Bool)

(assert (=> d!111229 m!835199))

(declare-fun m!835201 () Bool)

(assert (=> d!111229 m!835201))

(declare-fun m!835203 () Bool)

(assert (=> d!111229 m!835203))

(declare-fun m!835205 () Bool)

(assert (=> b!898539 m!835205))

(declare-fun m!835207 () Bool)

(assert (=> b!898540 m!835207))

(assert (=> b!898445 d!111229))

(declare-fun d!111231 () Bool)

(declare-fun e!502697 () Bool)

(assert (=> d!111231 e!502697))

(declare-fun res!607284 () Bool)

(assert (=> d!111231 (=> (not res!607284) (not e!502697))))

(declare-fun lt!405742 () ListLongMap!10767)

(assert (=> d!111231 (= res!607284 (contains!4398 lt!405742 (_1!6038 (tuple2!12057 lt!405640 (zeroValue!5233 thiss!1181)))))))

(declare-fun lt!405740 () List!17917)

(assert (=> d!111231 (= lt!405742 (ListLongMap!10768 lt!405740))))

(declare-fun lt!405741 () Unit!30509)

(declare-fun lt!405739 () Unit!30509)

(assert (=> d!111231 (= lt!405741 lt!405739)))

(assert (=> d!111231 (= (getValueByKey!456 lt!405740 (_1!6038 (tuple2!12057 lt!405640 (zeroValue!5233 thiss!1181)))) (Some!461 (_2!6038 (tuple2!12057 lt!405640 (zeroValue!5233 thiss!1181)))))))

(assert (=> d!111231 (= lt!405739 (lemmaContainsTupThenGetReturnValue!249 lt!405740 (_1!6038 (tuple2!12057 lt!405640 (zeroValue!5233 thiss!1181))) (_2!6038 (tuple2!12057 lt!405640 (zeroValue!5233 thiss!1181)))))))

(assert (=> d!111231 (= lt!405740 (insertStrictlySorted!305 (toList!5399 lt!405637) (_1!6038 (tuple2!12057 lt!405640 (zeroValue!5233 thiss!1181))) (_2!6038 (tuple2!12057 lt!405640 (zeroValue!5233 thiss!1181)))))))

(assert (=> d!111231 (= (+!2546 lt!405637 (tuple2!12057 lt!405640 (zeroValue!5233 thiss!1181))) lt!405742)))

(declare-fun b!898541 () Bool)

(declare-fun res!607285 () Bool)

(assert (=> b!898541 (=> (not res!607285) (not e!502697))))

(assert (=> b!898541 (= res!607285 (= (getValueByKey!456 (toList!5399 lt!405742) (_1!6038 (tuple2!12057 lt!405640 (zeroValue!5233 thiss!1181)))) (Some!461 (_2!6038 (tuple2!12057 lt!405640 (zeroValue!5233 thiss!1181))))))))

(declare-fun b!898542 () Bool)

(assert (=> b!898542 (= e!502697 (contains!4399 (toList!5399 lt!405742) (tuple2!12057 lt!405640 (zeroValue!5233 thiss!1181))))))

(assert (= (and d!111231 res!607284) b!898541))

(assert (= (and b!898541 res!607285) b!898542))

(declare-fun m!835209 () Bool)

(assert (=> d!111231 m!835209))

(declare-fun m!835211 () Bool)

(assert (=> d!111231 m!835211))

(declare-fun m!835213 () Bool)

(assert (=> d!111231 m!835213))

(declare-fun m!835215 () Bool)

(assert (=> d!111231 m!835215))

(declare-fun m!835217 () Bool)

(assert (=> b!898541 m!835217))

(declare-fun m!835219 () Bool)

(assert (=> b!898542 m!835219))

(assert (=> b!898445 d!111231))

(declare-fun d!111233 () Bool)

(assert (=> d!111233 (= (apply!410 (+!2546 lt!405636 (tuple2!12057 lt!405646 (minValue!5233 thiss!1181))) lt!405652) (get!13328 (getValueByKey!456 (toList!5399 (+!2546 lt!405636 (tuple2!12057 lt!405646 (minValue!5233 thiss!1181)))) lt!405652)))))

(declare-fun bs!25214 () Bool)

(assert (= bs!25214 d!111233))

(declare-fun m!835221 () Bool)

(assert (=> bs!25214 m!835221))

(assert (=> bs!25214 m!835221))

(declare-fun m!835223 () Bool)

(assert (=> bs!25214 m!835223))

(assert (=> b!898445 d!111233))

(declare-fun d!111235 () Bool)

(assert (=> d!111235 (= (apply!410 lt!405647 lt!405650) (get!13328 (getValueByKey!456 (toList!5399 lt!405647) lt!405650)))))

(declare-fun bs!25215 () Bool)

(assert (= bs!25215 d!111235))

(declare-fun m!835225 () Bool)

(assert (=> bs!25215 m!835225))

(assert (=> bs!25215 m!835225))

(declare-fun m!835227 () Bool)

(assert (=> bs!25215 m!835227))

(assert (=> b!898445 d!111235))

(declare-fun b!898561 () Bool)

(declare-fun e!502710 () SeekEntryResult!8913)

(assert (=> b!898561 (= e!502710 (Intermediate!8913 true (toIndex!0 key!785 (mask!26136 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun b!898562 () Bool)

(declare-fun e!502711 () SeekEntryResult!8913)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!898562 (= e!502711 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!785 (mask!26136 thiss!1181)) #b00000000000000000000000000000000 (mask!26136 thiss!1181)) key!785 (_keys!10184 thiss!1181) (mask!26136 thiss!1181)))))

(declare-fun b!898563 () Bool)

(assert (=> b!898563 (= e!502711 (Intermediate!8913 false (toIndex!0 key!785 (mask!26136 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun b!898565 () Bool)

(declare-fun e!502712 () Bool)

(declare-fun lt!405748 () SeekEntryResult!8913)

(assert (=> b!898565 (= e!502712 (bvsge (x!76553 lt!405748) #b01111111111111111111111111111110))))

(declare-fun b!898566 () Bool)

(assert (=> b!898566 (and (bvsge (index!38024 lt!405748) #b00000000000000000000000000000000) (bvslt (index!38024 lt!405748) (size!25786 (_keys!10184 thiss!1181))))))

(declare-fun res!607292 () Bool)

(assert (=> b!898566 (= res!607292 (= (select (arr!25330 (_keys!10184 thiss!1181)) (index!38024 lt!405748)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!502708 () Bool)

(assert (=> b!898566 (=> res!607292 e!502708)))

(declare-fun b!898567 () Bool)

(assert (=> b!898567 (and (bvsge (index!38024 lt!405748) #b00000000000000000000000000000000) (bvslt (index!38024 lt!405748) (size!25786 (_keys!10184 thiss!1181))))))

(declare-fun res!607293 () Bool)

(assert (=> b!898567 (= res!607293 (= (select (arr!25330 (_keys!10184 thiss!1181)) (index!38024 lt!405748)) key!785))))

(assert (=> b!898567 (=> res!607293 e!502708)))

(declare-fun e!502709 () Bool)

(assert (=> b!898567 (= e!502709 e!502708)))

(declare-fun b!898568 () Bool)

(assert (=> b!898568 (= e!502710 e!502711)))

(declare-fun c!94918 () Bool)

(declare-fun lt!405747 () (_ BitVec 64))

(assert (=> b!898568 (= c!94918 (or (= lt!405747 key!785) (= (bvadd lt!405747 lt!405747) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!898569 () Bool)

(assert (=> b!898569 (and (bvsge (index!38024 lt!405748) #b00000000000000000000000000000000) (bvslt (index!38024 lt!405748) (size!25786 (_keys!10184 thiss!1181))))))

(assert (=> b!898569 (= e!502708 (= (select (arr!25330 (_keys!10184 thiss!1181)) (index!38024 lt!405748)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!111237 () Bool)

(assert (=> d!111237 e!502712))

(declare-fun c!94916 () Bool)

(assert (=> d!111237 (= c!94916 (and ((_ is Intermediate!8913) lt!405748) (undefined!9725 lt!405748)))))

(assert (=> d!111237 (= lt!405748 e!502710)))

(declare-fun c!94917 () Bool)

(assert (=> d!111237 (= c!94917 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!111237 (= lt!405747 (select (arr!25330 (_keys!10184 thiss!1181)) (toIndex!0 key!785 (mask!26136 thiss!1181))))))

(assert (=> d!111237 (validMask!0 (mask!26136 thiss!1181))))

(assert (=> d!111237 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!26136 thiss!1181)) key!785 (_keys!10184 thiss!1181) (mask!26136 thiss!1181)) lt!405748)))

(declare-fun b!898564 () Bool)

(assert (=> b!898564 (= e!502712 e!502709)))

(declare-fun res!607294 () Bool)

(assert (=> b!898564 (= res!607294 (and ((_ is Intermediate!8913) lt!405748) (not (undefined!9725 lt!405748)) (bvslt (x!76553 lt!405748) #b01111111111111111111111111111110) (bvsge (x!76553 lt!405748) #b00000000000000000000000000000000) (bvsge (x!76553 lt!405748) #b00000000000000000000000000000000)))))

(assert (=> b!898564 (=> (not res!607294) (not e!502709))))

(assert (= (and d!111237 c!94917) b!898561))

(assert (= (and d!111237 (not c!94917)) b!898568))

(assert (= (and b!898568 c!94918) b!898563))

(assert (= (and b!898568 (not c!94918)) b!898562))

(assert (= (and d!111237 c!94916) b!898565))

(assert (= (and d!111237 (not c!94916)) b!898564))

(assert (= (and b!898564 res!607294) b!898567))

(assert (= (and b!898567 (not res!607293)) b!898566))

(assert (= (and b!898566 (not res!607292)) b!898569))

(assert (=> b!898562 m!834979))

(declare-fun m!835229 () Bool)

(assert (=> b!898562 m!835229))

(assert (=> b!898562 m!835229))

(declare-fun m!835231 () Bool)

(assert (=> b!898562 m!835231))

(declare-fun m!835233 () Bool)

(assert (=> b!898567 m!835233))

(assert (=> d!111237 m!834979))

(declare-fun m!835235 () Bool)

(assert (=> d!111237 m!835235))

(assert (=> d!111237 m!834921))

(assert (=> b!898566 m!835233))

(assert (=> b!898569 m!835233))

(assert (=> d!111163 d!111237))

(declare-fun d!111239 () Bool)

(declare-fun lt!405754 () (_ BitVec 32))

(declare-fun lt!405753 () (_ BitVec 32))

(assert (=> d!111239 (= lt!405754 (bvmul (bvxor lt!405753 (bvlshr lt!405753 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!111239 (= lt!405753 ((_ extract 31 0) (bvand (bvxor key!785 (bvlshr key!785 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!111239 (and (bvsge (mask!26136 thiss!1181) #b00000000000000000000000000000000) (let ((res!607295 (let ((h!19057 ((_ extract 31 0) (bvand (bvxor key!785 (bvlshr key!785 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!76571 (bvmul (bvxor h!19057 (bvlshr h!19057 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!76571 (bvlshr x!76571 #b00000000000000000000000000001101)) (mask!26136 thiss!1181)))))) (and (bvslt res!607295 (bvadd (mask!26136 thiss!1181) #b00000000000000000000000000000001)) (bvsge res!607295 #b00000000000000000000000000000000))))))

(assert (=> d!111239 (= (toIndex!0 key!785 (mask!26136 thiss!1181)) (bvand (bvxor lt!405754 (bvlshr lt!405754 #b00000000000000000000000000001101)) (mask!26136 thiss!1181)))))

(assert (=> d!111163 d!111239))

(assert (=> d!111163 d!111183))

(declare-fun b!898578 () Bool)

(declare-fun res!607306 () Bool)

(declare-fun e!502715 () Bool)

(assert (=> b!898578 (=> (not res!607306) (not e!502715))))

(assert (=> b!898578 (= res!607306 (and (= (size!25787 (_values!5420 thiss!1181)) (bvadd (mask!26136 thiss!1181) #b00000000000000000000000000000001)) (= (size!25786 (_keys!10184 thiss!1181)) (size!25787 (_values!5420 thiss!1181))) (bvsge (_size!2254 thiss!1181) #b00000000000000000000000000000000) (bvsle (_size!2254 thiss!1181) (bvadd (mask!26136 thiss!1181) #b00000000000000000000000000000001))))))

(declare-fun d!111241 () Bool)

(declare-fun res!607304 () Bool)

(assert (=> d!111241 (=> (not res!607304) (not e!502715))))

(assert (=> d!111241 (= res!607304 (validMask!0 (mask!26136 thiss!1181)))))

(assert (=> d!111241 (= (simpleValid!323 thiss!1181) e!502715)))

(declare-fun b!898580 () Bool)

(declare-fun res!607305 () Bool)

(assert (=> b!898580 (=> (not res!607305) (not e!502715))))

(declare-fun size!25790 (LongMapFixedSize!4398) (_ BitVec 32))

(assert (=> b!898580 (= res!607305 (= (size!25790 thiss!1181) (bvadd (_size!2254 thiss!1181) (bvsdiv (bvadd (extraKeys!5129 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!898579 () Bool)

(declare-fun res!607307 () Bool)

(assert (=> b!898579 (=> (not res!607307) (not e!502715))))

(assert (=> b!898579 (= res!607307 (bvsge (size!25790 thiss!1181) (_size!2254 thiss!1181)))))

(declare-fun b!898581 () Bool)

(assert (=> b!898581 (= e!502715 (and (bvsge (extraKeys!5129 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!5129 thiss!1181) #b00000000000000000000000000000011) (bvsge (_vacant!2254 thiss!1181) #b00000000000000000000000000000000)))))

(assert (= (and d!111241 res!607304) b!898578))

(assert (= (and b!898578 res!607306) b!898579))

(assert (= (and b!898579 res!607307) b!898580))

(assert (= (and b!898580 res!607305) b!898581))

(assert (=> d!111241 m!834921))

(declare-fun m!835237 () Bool)

(assert (=> b!898580 m!835237))

(assert (=> b!898579 m!835237))

(assert (=> d!111165 d!111241))

(declare-fun b!898590 () Bool)

(declare-fun e!502721 () (_ BitVec 32))

(assert (=> b!898590 (= e!502721 #b00000000000000000000000000000000)))

(declare-fun b!898591 () Bool)

(declare-fun e!502720 () (_ BitVec 32))

(assert (=> b!898591 (= e!502721 e!502720)))

(declare-fun c!94923 () Bool)

(assert (=> b!898591 (= c!94923 (validKeyInArray!0 (select (arr!25330 (_keys!10184 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun d!111243 () Bool)

(declare-fun lt!405757 () (_ BitVec 32))

(assert (=> d!111243 (and (bvsge lt!405757 #b00000000000000000000000000000000) (bvsle lt!405757 (bvsub (size!25786 (_keys!10184 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> d!111243 (= lt!405757 e!502721)))

(declare-fun c!94924 () Bool)

(assert (=> d!111243 (= c!94924 (bvsge #b00000000000000000000000000000000 (size!25786 (_keys!10184 thiss!1181))))))

(assert (=> d!111243 (and (bvsle #b00000000000000000000000000000000 (size!25786 (_keys!10184 thiss!1181))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!25786 (_keys!10184 thiss!1181)) (size!25786 (_keys!10184 thiss!1181))))))

(assert (=> d!111243 (= (arrayCountValidKeys!0 (_keys!10184 thiss!1181) #b00000000000000000000000000000000 (size!25786 (_keys!10184 thiss!1181))) lt!405757)))

(declare-fun b!898592 () Bool)

(declare-fun call!39883 () (_ BitVec 32))

(assert (=> b!898592 (= e!502720 (bvadd #b00000000000000000000000000000001 call!39883))))

(declare-fun b!898593 () Bool)

(assert (=> b!898593 (= e!502720 call!39883)))

(declare-fun bm!39880 () Bool)

(assert (=> bm!39880 (= call!39883 (arrayCountValidKeys!0 (_keys!10184 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25786 (_keys!10184 thiss!1181))))))

(assert (= (and d!111243 c!94924) b!898590))

(assert (= (and d!111243 (not c!94924)) b!898591))

(assert (= (and b!898591 c!94923) b!898592))

(assert (= (and b!898591 (not c!94923)) b!898593))

(assert (= (or b!898592 b!898593) bm!39880))

(assert (=> b!898591 m!834995))

(assert (=> b!898591 m!834995))

(assert (=> b!898591 m!835051))

(declare-fun m!835239 () Bool)

(assert (=> bm!39880 m!835239))

(assert (=> b!898372 d!111243))

(declare-fun d!111245 () Bool)

(declare-fun res!607313 () Bool)

(declare-fun e!502730 () Bool)

(assert (=> d!111245 (=> res!607313 e!502730)))

(assert (=> d!111245 (= res!607313 (bvsge #b00000000000000000000000000000000 (size!25786 (_keys!10184 thiss!1181))))))

(assert (=> d!111245 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10184 thiss!1181) (mask!26136 thiss!1181)) e!502730)))

(declare-fun b!898602 () Bool)

(declare-fun e!502728 () Bool)

(declare-fun call!39886 () Bool)

(assert (=> b!898602 (= e!502728 call!39886)))

(declare-fun bm!39883 () Bool)

(assert (=> bm!39883 (= call!39886 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10184 thiss!1181) (mask!26136 thiss!1181)))))

(declare-fun b!898603 () Bool)

(declare-fun e!502729 () Bool)

(assert (=> b!898603 (= e!502729 call!39886)))

(declare-fun b!898604 () Bool)

(assert (=> b!898604 (= e!502728 e!502729)))

(declare-fun lt!405764 () (_ BitVec 64))

(assert (=> b!898604 (= lt!405764 (select (arr!25330 (_keys!10184 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!405766 () Unit!30509)

(assert (=> b!898604 (= lt!405766 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10184 thiss!1181) lt!405764 #b00000000000000000000000000000000))))

(assert (=> b!898604 (arrayContainsKey!0 (_keys!10184 thiss!1181) lt!405764 #b00000000000000000000000000000000)))

(declare-fun lt!405765 () Unit!30509)

(assert (=> b!898604 (= lt!405765 lt!405766)))

(declare-fun res!607312 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!52714 (_ BitVec 32)) SeekEntryResult!8913)

(assert (=> b!898604 (= res!607312 (= (seekEntryOrOpen!0 (select (arr!25330 (_keys!10184 thiss!1181)) #b00000000000000000000000000000000) (_keys!10184 thiss!1181) (mask!26136 thiss!1181)) (Found!8913 #b00000000000000000000000000000000)))))

(assert (=> b!898604 (=> (not res!607312) (not e!502729))))

(declare-fun b!898605 () Bool)

(assert (=> b!898605 (= e!502730 e!502728)))

(declare-fun c!94927 () Bool)

(assert (=> b!898605 (= c!94927 (validKeyInArray!0 (select (arr!25330 (_keys!10184 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (= (and d!111245 (not res!607313)) b!898605))

(assert (= (and b!898605 c!94927) b!898604))

(assert (= (and b!898605 (not c!94927)) b!898602))

(assert (= (and b!898604 res!607312) b!898603))

(assert (= (or b!898603 b!898602) bm!39883))

(declare-fun m!835241 () Bool)

(assert (=> bm!39883 m!835241))

(assert (=> b!898604 m!834995))

(declare-fun m!835243 () Bool)

(assert (=> b!898604 m!835243))

(declare-fun m!835245 () Bool)

(assert (=> b!898604 m!835245))

(assert (=> b!898604 m!834995))

(declare-fun m!835247 () Bool)

(assert (=> b!898604 m!835247))

(assert (=> b!898605 m!834995))

(assert (=> b!898605 m!834995))

(assert (=> b!898605 m!835051))

(assert (=> b!898373 d!111245))

(declare-fun d!111247 () Bool)

(assert (=> d!111247 (isDefined!331 (getValueByKey!456 (toList!5399 (getCurrentListMap!2642 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5413 thiss!1181))) (select (arr!25330 (_keys!10184 thiss!1181)) (index!38023 lt!405550))))))

(declare-fun lt!405769 () Unit!30509)

(declare-fun choose!1502 (List!17917 (_ BitVec 64)) Unit!30509)

(assert (=> d!111247 (= lt!405769 (choose!1502 (toList!5399 (getCurrentListMap!2642 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5413 thiss!1181))) (select (arr!25330 (_keys!10184 thiss!1181)) (index!38023 lt!405550))))))

(declare-fun e!502733 () Bool)

(assert (=> d!111247 e!502733))

(declare-fun res!607316 () Bool)

(assert (=> d!111247 (=> (not res!607316) (not e!502733))))

(declare-fun isStrictlySorted!493 (List!17917) Bool)

(assert (=> d!111247 (= res!607316 (isStrictlySorted!493 (toList!5399 (getCurrentListMap!2642 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5413 thiss!1181)))))))

(assert (=> d!111247 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!321 (toList!5399 (getCurrentListMap!2642 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5413 thiss!1181))) (select (arr!25330 (_keys!10184 thiss!1181)) (index!38023 lt!405550))) lt!405769)))

(declare-fun b!898608 () Bool)

(assert (=> b!898608 (= e!502733 (containsKey!426 (toList!5399 (getCurrentListMap!2642 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5413 thiss!1181))) (select (arr!25330 (_keys!10184 thiss!1181)) (index!38023 lt!405550))))))

(assert (= (and d!111247 res!607316) b!898608))

(assert (=> d!111247 m!834913))

(assert (=> d!111247 m!835059))

(assert (=> d!111247 m!835059))

(assert (=> d!111247 m!835061))

(assert (=> d!111247 m!834913))

(declare-fun m!835249 () Bool)

(assert (=> d!111247 m!835249))

(declare-fun m!835251 () Bool)

(assert (=> d!111247 m!835251))

(assert (=> b!898608 m!834913))

(assert (=> b!898608 m!835055))

(assert (=> b!898455 d!111247))

(declare-fun d!111249 () Bool)

(declare-fun isEmpty!690 (Option!462) Bool)

(assert (=> d!111249 (= (isDefined!331 (getValueByKey!456 (toList!5399 (getCurrentListMap!2642 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5413 thiss!1181))) (select (arr!25330 (_keys!10184 thiss!1181)) (index!38023 lt!405550)))) (not (isEmpty!690 (getValueByKey!456 (toList!5399 (getCurrentListMap!2642 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5413 thiss!1181))) (select (arr!25330 (_keys!10184 thiss!1181)) (index!38023 lt!405550))))))))

(declare-fun bs!25216 () Bool)

(assert (= bs!25216 d!111249))

(assert (=> bs!25216 m!835059))

(declare-fun m!835253 () Bool)

(assert (=> bs!25216 m!835253))

(assert (=> b!898455 d!111249))

(declare-fun d!111251 () Bool)

(declare-fun c!94932 () Bool)

(assert (=> d!111251 (= c!94932 (and ((_ is Cons!17913) (toList!5399 (getCurrentListMap!2642 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5413 thiss!1181)))) (= (_1!6038 (h!19055 (toList!5399 (getCurrentListMap!2642 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5413 thiss!1181))))) (select (arr!25330 (_keys!10184 thiss!1181)) (index!38023 lt!405550)))))))

(declare-fun e!502738 () Option!462)

(assert (=> d!111251 (= (getValueByKey!456 (toList!5399 (getCurrentListMap!2642 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5413 thiss!1181))) (select (arr!25330 (_keys!10184 thiss!1181)) (index!38023 lt!405550))) e!502738)))

(declare-fun b!898617 () Bool)

(assert (=> b!898617 (= e!502738 (Some!461 (_2!6038 (h!19055 (toList!5399 (getCurrentListMap!2642 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5413 thiss!1181)))))))))

(declare-fun b!898620 () Bool)

(declare-fun e!502739 () Option!462)

(assert (=> b!898620 (= e!502739 None!460)))

(declare-fun b!898618 () Bool)

(assert (=> b!898618 (= e!502738 e!502739)))

(declare-fun c!94933 () Bool)

(assert (=> b!898618 (= c!94933 (and ((_ is Cons!17913) (toList!5399 (getCurrentListMap!2642 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5413 thiss!1181)))) (not (= (_1!6038 (h!19055 (toList!5399 (getCurrentListMap!2642 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5413 thiss!1181))))) (select (arr!25330 (_keys!10184 thiss!1181)) (index!38023 lt!405550))))))))

(declare-fun b!898619 () Bool)

(assert (=> b!898619 (= e!502739 (getValueByKey!456 (t!25266 (toList!5399 (getCurrentListMap!2642 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5413 thiss!1181)))) (select (arr!25330 (_keys!10184 thiss!1181)) (index!38023 lt!405550))))))

(assert (= (and d!111251 c!94932) b!898617))

(assert (= (and d!111251 (not c!94932)) b!898618))

(assert (= (and b!898618 c!94933) b!898619))

(assert (= (and b!898618 (not c!94933)) b!898620))

(assert (=> b!898619 m!834913))

(declare-fun m!835255 () Bool)

(assert (=> b!898619 m!835255))

(assert (=> b!898455 d!111251))

(declare-fun b!898631 () Bool)

(declare-fun e!502749 () Bool)

(declare-fun contains!4400 (List!17918 (_ BitVec 64)) Bool)

(assert (=> b!898631 (= e!502749 (contains!4400 Nil!17915 (select (arr!25330 (_keys!10184 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun d!111253 () Bool)

(declare-fun res!607324 () Bool)

(declare-fun e!502751 () Bool)

(assert (=> d!111253 (=> res!607324 e!502751)))

(assert (=> d!111253 (= res!607324 (bvsge #b00000000000000000000000000000000 (size!25786 (_keys!10184 thiss!1181))))))

(assert (=> d!111253 (= (arrayNoDuplicates!0 (_keys!10184 thiss!1181) #b00000000000000000000000000000000 Nil!17915) e!502751)))

(declare-fun b!898632 () Bool)

(declare-fun e!502750 () Bool)

(declare-fun call!39889 () Bool)

(assert (=> b!898632 (= e!502750 call!39889)))

(declare-fun b!898633 () Bool)

(declare-fun e!502748 () Bool)

(assert (=> b!898633 (= e!502748 e!502750)))

(declare-fun c!94936 () Bool)

(assert (=> b!898633 (= c!94936 (validKeyInArray!0 (select (arr!25330 (_keys!10184 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!898634 () Bool)

(assert (=> b!898634 (= e!502750 call!39889)))

(declare-fun bm!39886 () Bool)

(assert (=> bm!39886 (= call!39889 (arrayNoDuplicates!0 (_keys!10184 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!94936 (Cons!17914 (select (arr!25330 (_keys!10184 thiss!1181)) #b00000000000000000000000000000000) Nil!17915) Nil!17915)))))

(declare-fun b!898635 () Bool)

(assert (=> b!898635 (= e!502751 e!502748)))

(declare-fun res!607323 () Bool)

(assert (=> b!898635 (=> (not res!607323) (not e!502748))))

(assert (=> b!898635 (= res!607323 (not e!502749))))

(declare-fun res!607325 () Bool)

(assert (=> b!898635 (=> (not res!607325) (not e!502749))))

(assert (=> b!898635 (= res!607325 (validKeyInArray!0 (select (arr!25330 (_keys!10184 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (= (and d!111253 (not res!607324)) b!898635))

(assert (= (and b!898635 res!607325) b!898631))

(assert (= (and b!898635 res!607323) b!898633))

(assert (= (and b!898633 c!94936) b!898634))

(assert (= (and b!898633 (not c!94936)) b!898632))

(assert (= (or b!898634 b!898632) bm!39886))

(assert (=> b!898631 m!834995))

(assert (=> b!898631 m!834995))

(declare-fun m!835257 () Bool)

(assert (=> b!898631 m!835257))

(assert (=> b!898633 m!834995))

(assert (=> b!898633 m!834995))

(assert (=> b!898633 m!835051))

(assert (=> bm!39886 m!834995))

(declare-fun m!835259 () Bool)

(assert (=> bm!39886 m!835259))

(assert (=> b!898635 m!834995))

(assert (=> b!898635 m!834995))

(assert (=> b!898635 m!835051))

(assert (=> b!898374 d!111253))

(assert (=> b!898457 d!111249))

(assert (=> b!898457 d!111251))

(declare-fun d!111255 () Bool)

(declare-fun e!502753 () Bool)

(assert (=> d!111255 e!502753))

(declare-fun res!607326 () Bool)

(assert (=> d!111255 (=> res!607326 e!502753)))

(declare-fun lt!405770 () Bool)

(assert (=> d!111255 (= res!607326 (not lt!405770))))

(declare-fun lt!405771 () Bool)

(assert (=> d!111255 (= lt!405770 lt!405771)))

(declare-fun lt!405772 () Unit!30509)

(declare-fun e!502752 () Unit!30509)

(assert (=> d!111255 (= lt!405772 e!502752)))

(declare-fun c!94937 () Bool)

(assert (=> d!111255 (= c!94937 lt!405771)))

(assert (=> d!111255 (= lt!405771 (containsKey!426 (toList!5399 lt!405643) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!111255 (= (contains!4398 lt!405643 #b0000000000000000000000000000000000000000000000000000000000000000) lt!405770)))

(declare-fun b!898636 () Bool)

(declare-fun lt!405773 () Unit!30509)

(assert (=> b!898636 (= e!502752 lt!405773)))

(assert (=> b!898636 (= lt!405773 (lemmaContainsKeyImpliesGetValueByKeyDefined!321 (toList!5399 lt!405643) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!898636 (isDefined!331 (getValueByKey!456 (toList!5399 lt!405643) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!898637 () Bool)

(declare-fun Unit!30516 () Unit!30509)

(assert (=> b!898637 (= e!502752 Unit!30516)))

(declare-fun b!898638 () Bool)

(assert (=> b!898638 (= e!502753 (isDefined!331 (getValueByKey!456 (toList!5399 lt!405643) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!111255 c!94937) b!898636))

(assert (= (and d!111255 (not c!94937)) b!898637))

(assert (= (and d!111255 (not res!607326)) b!898638))

(declare-fun m!835261 () Bool)

(assert (=> d!111255 m!835261))

(declare-fun m!835263 () Bool)

(assert (=> b!898636 m!835263))

(declare-fun m!835265 () Bool)

(assert (=> b!898636 m!835265))

(assert (=> b!898636 m!835265))

(declare-fun m!835267 () Bool)

(assert (=> b!898636 m!835267))

(assert (=> b!898638 m!835265))

(assert (=> b!898638 m!835265))

(assert (=> b!898638 m!835267))

(assert (=> bm!39871 d!111255))

(declare-fun d!111257 () Bool)

(declare-fun res!607327 () Bool)

(declare-fun e!502754 () Bool)

(assert (=> d!111257 (=> res!607327 e!502754)))

(assert (=> d!111257 (= res!607327 (= (select (arr!25330 (_keys!10184 thiss!1181)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!785))))

(assert (=> d!111257 (= (arrayContainsKey!0 (_keys!10184 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!502754)))

(declare-fun b!898639 () Bool)

(declare-fun e!502755 () Bool)

(assert (=> b!898639 (= e!502754 e!502755)))

(declare-fun res!607328 () Bool)

(assert (=> b!898639 (=> (not res!607328) (not e!502755))))

(assert (=> b!898639 (= res!607328 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!25786 (_keys!10184 thiss!1181))))))

(declare-fun b!898640 () Bool)

(assert (=> b!898640 (= e!502755 (arrayContainsKey!0 (_keys!10184 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!111257 (not res!607327)) b!898639))

(assert (= (and b!898639 res!607328) b!898640))

(declare-fun m!835269 () Bool)

(assert (=> d!111257 m!835269))

(declare-fun m!835271 () Bool)

(assert (=> b!898640 m!835271))

(assert (=> b!898383 d!111257))

(declare-fun d!111259 () Bool)

(assert (=> d!111259 (= (apply!410 lt!405643 #b1000000000000000000000000000000000000000000000000000000000000000) (get!13328 (getValueByKey!456 (toList!5399 lt!405643) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!25217 () Bool)

(assert (= bs!25217 d!111259))

(assert (=> bs!25217 m!835129))

(assert (=> bs!25217 m!835129))

(declare-fun m!835273 () Bool)

(assert (=> bs!25217 m!835273))

(assert (=> b!898435 d!111259))

(declare-fun d!111261 () Bool)

(assert (=> d!111261 (contains!4398 (getCurrentListMap!2642 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5413 thiss!1181)) (select (arr!25330 (_keys!10184 thiss!1181)) (index!38023 lt!405550)))))

(assert (=> d!111261 true))

(declare-fun _$16!178 () Unit!30509)

(assert (=> d!111261 (= (choose!1499 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) (index!38023 lt!405550) (defaultEntry!5413 thiss!1181)) _$16!178)))

(declare-fun bs!25218 () Bool)

(assert (= bs!25218 d!111261))

(assert (=> bs!25218 m!834915))

(assert (=> bs!25218 m!834913))

(assert (=> bs!25218 m!834915))

(assert (=> bs!25218 m!834913))

(assert (=> bs!25218 m!834917))

(assert (=> d!111173 d!111261))

(assert (=> d!111173 d!111183))

(declare-fun b!898653 () Bool)

(declare-fun e!502763 () SeekEntryResult!8913)

(assert (=> b!898653 (= e!502763 (MissingVacant!8913 (index!38024 lt!405580)))))

(declare-fun lt!405779 () SeekEntryResult!8913)

(declare-fun d!111263 () Bool)

(assert (=> d!111263 (and (or ((_ is Undefined!8913) lt!405779) (not ((_ is Found!8913) lt!405779)) (and (bvsge (index!38023 lt!405779) #b00000000000000000000000000000000) (bvslt (index!38023 lt!405779) (size!25786 (_keys!10184 thiss!1181))))) (or ((_ is Undefined!8913) lt!405779) ((_ is Found!8913) lt!405779) (not ((_ is MissingVacant!8913) lt!405779)) (not (= (index!38025 lt!405779) (index!38024 lt!405580))) (and (bvsge (index!38025 lt!405779) #b00000000000000000000000000000000) (bvslt (index!38025 lt!405779) (size!25786 (_keys!10184 thiss!1181))))) (or ((_ is Undefined!8913) lt!405779) (ite ((_ is Found!8913) lt!405779) (= (select (arr!25330 (_keys!10184 thiss!1181)) (index!38023 lt!405779)) key!785) (and ((_ is MissingVacant!8913) lt!405779) (= (index!38025 lt!405779) (index!38024 lt!405580)) (= (select (arr!25330 (_keys!10184 thiss!1181)) (index!38025 lt!405779)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!502764 () SeekEntryResult!8913)

(assert (=> d!111263 (= lt!405779 e!502764)))

(declare-fun c!94944 () Bool)

(assert (=> d!111263 (= c!94944 (bvsge (x!76553 lt!405580) #b01111111111111111111111111111110))))

(declare-fun lt!405778 () (_ BitVec 64))

(assert (=> d!111263 (= lt!405778 (select (arr!25330 (_keys!10184 thiss!1181)) (index!38024 lt!405580)))))

(assert (=> d!111263 (validMask!0 (mask!26136 thiss!1181))))

(assert (=> d!111263 (= (seekKeyOrZeroReturnVacant!0 (x!76553 lt!405580) (index!38024 lt!405580) (index!38024 lt!405580) key!785 (_keys!10184 thiss!1181) (mask!26136 thiss!1181)) lt!405779)))

(declare-fun b!898654 () Bool)

(declare-fun e!502762 () SeekEntryResult!8913)

(assert (=> b!898654 (= e!502764 e!502762)))

(declare-fun c!94946 () Bool)

(assert (=> b!898654 (= c!94946 (= lt!405778 key!785))))

(declare-fun b!898655 () Bool)

(assert (=> b!898655 (= e!502764 Undefined!8913)))

(declare-fun b!898656 () Bool)

(declare-fun c!94945 () Bool)

(assert (=> b!898656 (= c!94945 (= lt!405778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!898656 (= e!502762 e!502763)))

(declare-fun b!898657 () Bool)

(assert (=> b!898657 (= e!502762 (Found!8913 (index!38024 lt!405580)))))

(declare-fun b!898658 () Bool)

(assert (=> b!898658 (= e!502763 (seekKeyOrZeroReturnVacant!0 (bvadd (x!76553 lt!405580) #b00000000000000000000000000000001) (nextIndex!0 (index!38024 lt!405580) (x!76553 lt!405580) (mask!26136 thiss!1181)) (index!38024 lt!405580) key!785 (_keys!10184 thiss!1181) (mask!26136 thiss!1181)))))

(assert (= (and d!111263 c!94944) b!898655))

(assert (= (and d!111263 (not c!94944)) b!898654))

(assert (= (and b!898654 c!94946) b!898657))

(assert (= (and b!898654 (not c!94946)) b!898656))

(assert (= (and b!898656 c!94945) b!898653))

(assert (= (and b!898656 (not c!94945)) b!898658))

(declare-fun m!835275 () Bool)

(assert (=> d!111263 m!835275))

(declare-fun m!835277 () Bool)

(assert (=> d!111263 m!835277))

(assert (=> d!111263 m!834973))

(assert (=> d!111263 m!834921))

(declare-fun m!835279 () Bool)

(assert (=> b!898658 m!835279))

(assert (=> b!898658 m!835279))

(declare-fun m!835281 () Bool)

(assert (=> b!898658 m!835281))

(assert (=> b!898363 d!111263))

(declare-fun d!111265 () Bool)

(assert (=> d!111265 (= (apply!410 lt!405643 #b0000000000000000000000000000000000000000000000000000000000000000) (get!13328 (getValueByKey!456 (toList!5399 lt!405643) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!25219 () Bool)

(assert (= bs!25219 d!111265))

(assert (=> bs!25219 m!835265))

(assert (=> bs!25219 m!835265))

(declare-fun m!835283 () Bool)

(assert (=> bs!25219 m!835283))

(assert (=> b!898436 d!111265))

(assert (=> b!898377 d!111181))

(assert (=> b!898377 d!111179))

(declare-fun d!111267 () Bool)

(declare-fun res!607333 () Bool)

(declare-fun e!502769 () Bool)

(assert (=> d!111267 (=> res!607333 e!502769)))

(assert (=> d!111267 (= res!607333 (and ((_ is Cons!17913) (toList!5399 (getCurrentListMap!2642 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5413 thiss!1181)))) (= (_1!6038 (h!19055 (toList!5399 (getCurrentListMap!2642 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5413 thiss!1181))))) (select (arr!25330 (_keys!10184 thiss!1181)) (index!38023 lt!405550)))))))

(assert (=> d!111267 (= (containsKey!426 (toList!5399 (getCurrentListMap!2642 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5413 thiss!1181))) (select (arr!25330 (_keys!10184 thiss!1181)) (index!38023 lt!405550))) e!502769)))

(declare-fun b!898663 () Bool)

(declare-fun e!502770 () Bool)

(assert (=> b!898663 (= e!502769 e!502770)))

(declare-fun res!607334 () Bool)

(assert (=> b!898663 (=> (not res!607334) (not e!502770))))

(assert (=> b!898663 (= res!607334 (and (or (not ((_ is Cons!17913) (toList!5399 (getCurrentListMap!2642 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5413 thiss!1181))))) (bvsle (_1!6038 (h!19055 (toList!5399 (getCurrentListMap!2642 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5413 thiss!1181))))) (select (arr!25330 (_keys!10184 thiss!1181)) (index!38023 lt!405550)))) ((_ is Cons!17913) (toList!5399 (getCurrentListMap!2642 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5413 thiss!1181)))) (bvslt (_1!6038 (h!19055 (toList!5399 (getCurrentListMap!2642 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5413 thiss!1181))))) (select (arr!25330 (_keys!10184 thiss!1181)) (index!38023 lt!405550)))))))

(declare-fun b!898664 () Bool)

(assert (=> b!898664 (= e!502770 (containsKey!426 (t!25266 (toList!5399 (getCurrentListMap!2642 (_keys!10184 thiss!1181) (_values!5420 thiss!1181) (mask!26136 thiss!1181) (extraKeys!5129 thiss!1181) (zeroValue!5233 thiss!1181) (minValue!5233 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5413 thiss!1181)))) (select (arr!25330 (_keys!10184 thiss!1181)) (index!38023 lt!405550))))))

(assert (= (and d!111267 (not res!607333)) b!898663))

(assert (= (and b!898663 res!607334) b!898664))

(assert (=> b!898664 m!834913))

(declare-fun m!835285 () Bool)

(assert (=> b!898664 m!835285))

(assert (=> d!111181 d!111267))

(declare-fun b!898665 () Bool)

(declare-fun e!502771 () Bool)

(assert (=> b!898665 (= e!502771 tp_is_empty!18345)))

(declare-fun mapNonEmpty!29179 () Bool)

(declare-fun mapRes!29179 () Bool)

(declare-fun tp!56131 () Bool)

(assert (=> mapNonEmpty!29179 (= mapRes!29179 (and tp!56131 e!502771))))

(declare-fun mapKey!29179 () (_ BitVec 32))

(declare-fun mapValue!29179 () ValueCell!8691)

(declare-fun mapRest!29179 () (Array (_ BitVec 32) ValueCell!8691))

(assert (=> mapNonEmpty!29179 (= mapRest!29178 (store mapRest!29179 mapKey!29179 mapValue!29179))))

(declare-fun condMapEmpty!29179 () Bool)

(declare-fun mapDefault!29179 () ValueCell!8691)

(assert (=> mapNonEmpty!29178 (= condMapEmpty!29179 (= mapRest!29178 ((as const (Array (_ BitVec 32) ValueCell!8691)) mapDefault!29179)))))

(declare-fun e!502772 () Bool)

(assert (=> mapNonEmpty!29178 (= tp!56130 (and e!502772 mapRes!29179))))

(declare-fun mapIsEmpty!29179 () Bool)

(assert (=> mapIsEmpty!29179 mapRes!29179))

(declare-fun b!898666 () Bool)

(assert (=> b!898666 (= e!502772 tp_is_empty!18345)))

(assert (= (and mapNonEmpty!29178 condMapEmpty!29179) mapIsEmpty!29179))

(assert (= (and mapNonEmpty!29178 (not condMapEmpty!29179)) mapNonEmpty!29179))

(assert (= (and mapNonEmpty!29179 ((_ is ValueCellFull!8691) mapValue!29179)) b!898665))

(assert (= (and mapNonEmpty!29178 ((_ is ValueCellFull!8691) mapDefault!29179)) b!898666))

(declare-fun m!835287 () Bool)

(assert (=> mapNonEmpty!29179 m!835287))

(declare-fun b_lambda!13001 () Bool)

(assert (= b_lambda!12999 (or (and b!898311 b_free!16017) b_lambda!13001)))

(declare-fun b_lambda!13003 () Bool)

(assert (= b_lambda!12997 (or (and b!898311 b_free!16017) b_lambda!13003)))

(check-sat (not d!111207) (not d!111255) (not d!111209) (not d!111229) (not d!111235) (not d!111195) (not b!898508) (not mapNonEmpty!29179) (not b!898518) (not b!898468) (not b!898631) b_and!26337 (not b_lambda!13003) (not b!898536) (not b!898499) (not b!898539) (not d!111205) (not b!898591) (not d!111233) (not b!898664) (not b!898532) (not b!898562) (not b!898604) (not d!111227) (not d!111203) (not b!898541) (not b!898638) (not b!898506) (not b!898511) (not b!898658) (not b!898501) (not d!111213) (not d!111185) (not d!111199) tp_is_empty!18345 (not b!898640) (not d!111193) (not b!898531) (not d!111219) (not b!898608) (not b!898521) (not d!111237) (not b!898520) (not d!111215) (not d!111259) (not d!111265) (not d!111263) (not b!898635) (not b!898504) (not b!898522) (not b!898605) (not b!898474) (not bm!39877) (not d!111211) (not b!898542) (not b!898633) (not d!111231) (not bm!39880) (not d!111217) (not d!111247) (not d!111187) (not b!898619) (not bm!39883) (not d!111221) (not b!898513) (not bm!39886) (not d!111225) (not b_lambda!13001) (not b!898580) (not b_next!16017) (not b!898579) (not d!111241) (not b!898519) (not d!111223) (not b!898537) (not b!898473) (not b!898636) (not d!111249) (not b!898540) (not b!898529) (not d!111197) (not b!898502) (not b!898507) (not b!898510) (not b_lambda!12995) (not b!898524) (not d!111261) (not b!898533))
(check-sat b_and!26337 (not b_next!16017))
