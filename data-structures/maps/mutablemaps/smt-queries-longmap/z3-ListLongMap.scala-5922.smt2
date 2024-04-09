; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77008 () Bool)

(assert start!77008)

(declare-fun b!899323 () Bool)

(declare-fun b_free!16035 () Bool)

(declare-fun b_next!16035 () Bool)

(assert (=> b!899323 (= b_free!16035 (not b_next!16035))))

(declare-fun tp!56186 () Bool)

(declare-fun b_and!26361 () Bool)

(assert (=> b!899323 (= tp!56186 b_and!26361)))

(declare-fun mapIsEmpty!29210 () Bool)

(declare-fun mapRes!29210 () Bool)

(assert (=> mapIsEmpty!29210 mapRes!29210))

(declare-fun b!899317 () Bool)

(declare-fun e!503257 () Bool)

(declare-fun e!503258 () Bool)

(assert (=> b!899317 (= e!503257 e!503258)))

(declare-fun res!607640 () Bool)

(assert (=> b!899317 (=> res!607640 e!503258)))

(declare-datatypes ((array!52756 0))(
  ( (array!52757 (arr!25348 (Array (_ BitVec 32) (_ BitVec 64))) (size!25806 (_ BitVec 32))) )
))
(declare-datatypes ((V!29449 0))(
  ( (V!29450 (val!9232 Int)) )
))
(declare-datatypes ((ValueCell!8700 0))(
  ( (ValueCellFull!8700 (v!11723 V!29449)) (EmptyCell!8700) )
))
(declare-datatypes ((array!52758 0))(
  ( (array!52759 (arr!25349 (Array (_ BitVec 32) ValueCell!8700)) (size!25807 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4416 0))(
  ( (LongMapFixedSize!4417 (defaultEntry!5432 Int) (mask!26183 (_ BitVec 32)) (extraKeys!5153 (_ BitVec 32)) (zeroValue!5257 V!29449) (minValue!5257 V!29449) (_size!2263 (_ BitVec 32)) (_keys!10217 array!52756) (_values!5444 array!52758) (_vacant!2263 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4416)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!899317 (= res!607640 (not (validMask!0 (mask!26183 thiss!1181))))))

(declare-datatypes ((SeekEntryResult!8920 0))(
  ( (MissingZero!8920 (index!38050 (_ BitVec 32))) (Found!8920 (index!38051 (_ BitVec 32))) (Intermediate!8920 (undefined!9732 Bool) (index!38052 (_ BitVec 32)) (x!76630 (_ BitVec 32))) (Undefined!8920) (MissingVacant!8920 (index!38053 (_ BitVec 32))) )
))
(declare-fun lt!406192 () SeekEntryResult!8920)

(declare-datatypes ((tuple2!12066 0))(
  ( (tuple2!12067 (_1!6043 (_ BitVec 64)) (_2!6043 V!29449)) )
))
(declare-datatypes ((List!17925 0))(
  ( (Nil!17922) (Cons!17921 (h!19065 tuple2!12066) (t!25280 List!17925)) )
))
(declare-datatypes ((ListLongMap!10777 0))(
  ( (ListLongMap!10778 (toList!5404 List!17925)) )
))
(declare-fun contains!4407 (ListLongMap!10777 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2647 (array!52756 array!52758 (_ BitVec 32) (_ BitVec 32) V!29449 V!29449 (_ BitVec 32) Int) ListLongMap!10777)

(assert (=> b!899317 (contains!4407 (getCurrentListMap!2647 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5432 thiss!1181)) (select (arr!25348 (_keys!10217 thiss!1181)) (index!38051 lt!406192)))))

(declare-datatypes ((Unit!30533 0))(
  ( (Unit!30534) )
))
(declare-fun lt!406189 () Unit!30533)

(declare-fun lemmaValidKeyInArrayIsInListMap!240 (array!52756 array!52758 (_ BitVec 32) (_ BitVec 32) V!29449 V!29449 (_ BitVec 32) Int) Unit!30533)

(assert (=> b!899317 (= lt!406189 (lemmaValidKeyInArrayIsInListMap!240 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) (index!38051 lt!406192) (defaultEntry!5432 thiss!1181)))))

(declare-fun key!785 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!52756 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!899317 (arrayContainsKey!0 (_keys!10217 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!406191 () Unit!30533)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52756 (_ BitVec 64) (_ BitVec 32)) Unit!30533)

(assert (=> b!899317 (= lt!406191 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10217 thiss!1181) key!785 (index!38051 lt!406192)))))

(declare-fun b!899318 () Bool)

(declare-fun e!503255 () Bool)

(declare-fun tp_is_empty!18363 () Bool)

(assert (=> b!899318 (= e!503255 tp_is_empty!18363)))

(declare-fun b!899319 () Bool)

(declare-fun e!503254 () Bool)

(assert (=> b!899319 (= e!503254 tp_is_empty!18363)))

(declare-fun b!899320 () Bool)

(declare-fun e!503259 () Bool)

(assert (=> b!899320 (= e!503259 (and e!503255 mapRes!29210))))

(declare-fun condMapEmpty!29210 () Bool)

(declare-fun mapDefault!29210 () ValueCell!8700)

(assert (=> b!899320 (= condMapEmpty!29210 (= (arr!25349 (_values!5444 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8700)) mapDefault!29210)))))

(declare-fun mapNonEmpty!29210 () Bool)

(declare-fun tp!56185 () Bool)

(assert (=> mapNonEmpty!29210 (= mapRes!29210 (and tp!56185 e!503254))))

(declare-fun mapRest!29210 () (Array (_ BitVec 32) ValueCell!8700))

(declare-fun mapValue!29210 () ValueCell!8700)

(declare-fun mapKey!29210 () (_ BitVec 32))

(assert (=> mapNonEmpty!29210 (= (arr!25349 (_values!5444 thiss!1181)) (store mapRest!29210 mapKey!29210 mapValue!29210))))

(declare-fun res!607642 () Bool)

(declare-fun e!503251 () Bool)

(assert (=> start!77008 (=> (not res!607642) (not e!503251))))

(declare-fun valid!1683 (LongMapFixedSize!4416) Bool)

(assert (=> start!77008 (= res!607642 (valid!1683 thiss!1181))))

(assert (=> start!77008 e!503251))

(declare-fun e!503252 () Bool)

(assert (=> start!77008 e!503252))

(assert (=> start!77008 true))

(declare-fun b!899321 () Bool)

(assert (=> b!899321 (= e!503258 (or (not (= (size!25807 (_values!5444 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!26183 thiss!1181)))) (not (= (size!25806 (_keys!10217 thiss!1181)) (size!25807 (_values!5444 thiss!1181)))) (bvslt (mask!26183 thiss!1181) #b00000000000000000000000000000000) (bvsge (extraKeys!5153 thiss!1181) #b00000000000000000000000000000000)))))

(declare-fun b!899322 () Bool)

(declare-fun res!607643 () Bool)

(assert (=> b!899322 (=> (not res!607643) (not e!503251))))

(assert (=> b!899322 (= res!607643 (not (= key!785 (bvneg key!785))))))

(declare-fun array_inv!19866 (array!52756) Bool)

(declare-fun array_inv!19867 (array!52758) Bool)

(assert (=> b!899323 (= e!503252 (and tp!56186 tp_is_empty!18363 (array_inv!19866 (_keys!10217 thiss!1181)) (array_inv!19867 (_values!5444 thiss!1181)) e!503259))))

(declare-fun b!899324 () Bool)

(assert (=> b!899324 (= e!503251 (not e!503257))))

(declare-fun res!607641 () Bool)

(assert (=> b!899324 (=> res!607641 e!503257)))

(get-info :version)

(assert (=> b!899324 (= res!607641 (not ((_ is Found!8920) lt!406192)))))

(declare-fun e!503253 () Bool)

(assert (=> b!899324 e!503253))

(declare-fun res!607644 () Bool)

(assert (=> b!899324 (=> res!607644 e!503253)))

(assert (=> b!899324 (= res!607644 (not ((_ is Found!8920) lt!406192)))))

(declare-fun lt!406190 () Unit!30533)

(declare-fun lemmaSeekEntryGivesInRangeIndex!102 (array!52756 array!52758 (_ BitVec 32) (_ BitVec 32) V!29449 V!29449 (_ BitVec 64)) Unit!30533)

(assert (=> b!899324 (= lt!406190 (lemmaSeekEntryGivesInRangeIndex!102 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52756 (_ BitVec 32)) SeekEntryResult!8920)

(assert (=> b!899324 (= lt!406192 (seekEntry!0 key!785 (_keys!10217 thiss!1181) (mask!26183 thiss!1181)))))

(declare-fun b!899325 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!899325 (= e!503253 (inRange!0 (index!38051 lt!406192) (mask!26183 thiss!1181)))))

(assert (= (and start!77008 res!607642) b!899322))

(assert (= (and b!899322 res!607643) b!899324))

(assert (= (and b!899324 (not res!607644)) b!899325))

(assert (= (and b!899324 (not res!607641)) b!899317))

(assert (= (and b!899317 (not res!607640)) b!899321))

(assert (= (and b!899320 condMapEmpty!29210) mapIsEmpty!29210))

(assert (= (and b!899320 (not condMapEmpty!29210)) mapNonEmpty!29210))

(assert (= (and mapNonEmpty!29210 ((_ is ValueCellFull!8700) mapValue!29210)) b!899319))

(assert (= (and b!899320 ((_ is ValueCellFull!8700) mapDefault!29210)) b!899318))

(assert (= b!899323 b!899320))

(assert (= start!77008 b!899323))

(declare-fun m!835901 () Bool)

(assert (=> mapNonEmpty!29210 m!835901))

(declare-fun m!835903 () Bool)

(assert (=> b!899317 m!835903))

(declare-fun m!835905 () Bool)

(assert (=> b!899317 m!835905))

(declare-fun m!835907 () Bool)

(assert (=> b!899317 m!835907))

(declare-fun m!835909 () Bool)

(assert (=> b!899317 m!835909))

(declare-fun m!835911 () Bool)

(assert (=> b!899317 m!835911))

(declare-fun m!835913 () Bool)

(assert (=> b!899317 m!835913))

(declare-fun m!835915 () Bool)

(assert (=> b!899317 m!835915))

(assert (=> b!899317 m!835913))

(assert (=> b!899317 m!835911))

(declare-fun m!835917 () Bool)

(assert (=> b!899324 m!835917))

(declare-fun m!835919 () Bool)

(assert (=> b!899324 m!835919))

(declare-fun m!835921 () Bool)

(assert (=> start!77008 m!835921))

(declare-fun m!835923 () Bool)

(assert (=> b!899325 m!835923))

(declare-fun m!835925 () Bool)

(assert (=> b!899323 m!835925))

(declare-fun m!835927 () Bool)

(assert (=> b!899323 m!835927))

(check-sat (not start!77008) (not b!899324) (not b!899317) b_and!26361 (not b!899325) tp_is_empty!18363 (not mapNonEmpty!29210) (not b_next!16035) (not b!899323))
(check-sat b_and!26361 (not b_next!16035))
(get-model)

(declare-fun d!111407 () Bool)

(assert (=> d!111407 (= (inRange!0 (index!38051 lt!406192) (mask!26183 thiss!1181)) (and (bvsge (index!38051 lt!406192) #b00000000000000000000000000000000) (bvslt (index!38051 lt!406192) (bvadd (mask!26183 thiss!1181) #b00000000000000000000000000000001))))))

(assert (=> b!899325 d!111407))

(declare-fun d!111409 () Bool)

(declare-fun e!503289 () Bool)

(assert (=> d!111409 e!503289))

(declare-fun res!607662 () Bool)

(assert (=> d!111409 (=> res!607662 e!503289)))

(declare-fun lt!406210 () SeekEntryResult!8920)

(assert (=> d!111409 (= res!607662 (not ((_ is Found!8920) lt!406210)))))

(assert (=> d!111409 (= lt!406210 (seekEntry!0 key!785 (_keys!10217 thiss!1181) (mask!26183 thiss!1181)))))

(declare-fun lt!406209 () Unit!30533)

(declare-fun choose!1510 (array!52756 array!52758 (_ BitVec 32) (_ BitVec 32) V!29449 V!29449 (_ BitVec 64)) Unit!30533)

(assert (=> d!111409 (= lt!406209 (choose!1510 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) key!785))))

(assert (=> d!111409 (validMask!0 (mask!26183 thiss!1181))))

(assert (=> d!111409 (= (lemmaSeekEntryGivesInRangeIndex!102 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) key!785) lt!406209)))

(declare-fun b!899355 () Bool)

(assert (=> b!899355 (= e!503289 (inRange!0 (index!38051 lt!406210) (mask!26183 thiss!1181)))))

(assert (= (and d!111409 (not res!607662)) b!899355))

(assert (=> d!111409 m!835919))

(declare-fun m!835957 () Bool)

(assert (=> d!111409 m!835957))

(assert (=> d!111409 m!835909))

(declare-fun m!835959 () Bool)

(assert (=> b!899355 m!835959))

(assert (=> b!899324 d!111409))

(declare-fun b!899368 () Bool)

(declare-fun c!95069 () Bool)

(declare-fun lt!406222 () (_ BitVec 64))

(assert (=> b!899368 (= c!95069 (= lt!406222 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!503298 () SeekEntryResult!8920)

(declare-fun e!503297 () SeekEntryResult!8920)

(assert (=> b!899368 (= e!503298 e!503297)))

(declare-fun b!899369 () Bool)

(declare-fun e!503296 () SeekEntryResult!8920)

(assert (=> b!899369 (= e!503296 e!503298)))

(declare-fun lt!406221 () SeekEntryResult!8920)

(assert (=> b!899369 (= lt!406222 (select (arr!25348 (_keys!10217 thiss!1181)) (index!38052 lt!406221)))))

(declare-fun c!95070 () Bool)

(assert (=> b!899369 (= c!95070 (= lt!406222 key!785))))

(declare-fun b!899370 () Bool)

(declare-fun lt!406220 () SeekEntryResult!8920)

(assert (=> b!899370 (= e!503297 (ite ((_ is MissingVacant!8920) lt!406220) (MissingZero!8920 (index!38053 lt!406220)) lt!406220))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52756 (_ BitVec 32)) SeekEntryResult!8920)

(assert (=> b!899370 (= lt!406220 (seekKeyOrZeroReturnVacant!0 (x!76630 lt!406221) (index!38052 lt!406221) (index!38052 lt!406221) key!785 (_keys!10217 thiss!1181) (mask!26183 thiss!1181)))))

(declare-fun b!899371 () Bool)

(assert (=> b!899371 (= e!503296 Undefined!8920)))

(declare-fun d!111411 () Bool)

(declare-fun lt!406219 () SeekEntryResult!8920)

(assert (=> d!111411 (and (or ((_ is MissingVacant!8920) lt!406219) (not ((_ is Found!8920) lt!406219)) (and (bvsge (index!38051 lt!406219) #b00000000000000000000000000000000) (bvslt (index!38051 lt!406219) (size!25806 (_keys!10217 thiss!1181))))) (not ((_ is MissingVacant!8920) lt!406219)) (or (not ((_ is Found!8920) lt!406219)) (= (select (arr!25348 (_keys!10217 thiss!1181)) (index!38051 lt!406219)) key!785)))))

(assert (=> d!111411 (= lt!406219 e!503296)))

(declare-fun c!95068 () Bool)

(assert (=> d!111411 (= c!95068 (and ((_ is Intermediate!8920) lt!406221) (undefined!9732 lt!406221)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52756 (_ BitVec 32)) SeekEntryResult!8920)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!111411 (= lt!406221 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!26183 thiss!1181)) key!785 (_keys!10217 thiss!1181) (mask!26183 thiss!1181)))))

(assert (=> d!111411 (validMask!0 (mask!26183 thiss!1181))))

(assert (=> d!111411 (= (seekEntry!0 key!785 (_keys!10217 thiss!1181) (mask!26183 thiss!1181)) lt!406219)))

(declare-fun b!899372 () Bool)

(assert (=> b!899372 (= e!503297 (MissingZero!8920 (index!38052 lt!406221)))))

(declare-fun b!899373 () Bool)

(assert (=> b!899373 (= e!503298 (Found!8920 (index!38052 lt!406221)))))

(assert (= (and d!111411 c!95068) b!899371))

(assert (= (and d!111411 (not c!95068)) b!899369))

(assert (= (and b!899369 c!95070) b!899373))

(assert (= (and b!899369 (not c!95070)) b!899368))

(assert (= (and b!899368 c!95069) b!899372))

(assert (= (and b!899368 (not c!95069)) b!899370))

(declare-fun m!835961 () Bool)

(assert (=> b!899369 m!835961))

(declare-fun m!835963 () Bool)

(assert (=> b!899370 m!835963))

(declare-fun m!835965 () Bool)

(assert (=> d!111411 m!835965))

(declare-fun m!835967 () Bool)

(assert (=> d!111411 m!835967))

(assert (=> d!111411 m!835967))

(declare-fun m!835969 () Bool)

(assert (=> d!111411 m!835969))

(assert (=> d!111411 m!835909))

(assert (=> b!899324 d!111411))

(declare-fun d!111413 () Bool)

(declare-fun res!607669 () Bool)

(declare-fun e!503301 () Bool)

(assert (=> d!111413 (=> (not res!607669) (not e!503301))))

(declare-fun simpleValid!326 (LongMapFixedSize!4416) Bool)

(assert (=> d!111413 (= res!607669 (simpleValid!326 thiss!1181))))

(assert (=> d!111413 (= (valid!1683 thiss!1181) e!503301)))

(declare-fun b!899380 () Bool)

(declare-fun res!607670 () Bool)

(assert (=> b!899380 (=> (not res!607670) (not e!503301))))

(declare-fun arrayCountValidKeys!0 (array!52756 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!899380 (= res!607670 (= (arrayCountValidKeys!0 (_keys!10217 thiss!1181) #b00000000000000000000000000000000 (size!25806 (_keys!10217 thiss!1181))) (_size!2263 thiss!1181)))))

(declare-fun b!899381 () Bool)

(declare-fun res!607671 () Bool)

(assert (=> b!899381 (=> (not res!607671) (not e!503301))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52756 (_ BitVec 32)) Bool)

(assert (=> b!899381 (= res!607671 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10217 thiss!1181) (mask!26183 thiss!1181)))))

(declare-fun b!899382 () Bool)

(declare-datatypes ((List!17926 0))(
  ( (Nil!17923) (Cons!17922 (h!19066 (_ BitVec 64)) (t!25283 List!17926)) )
))
(declare-fun arrayNoDuplicates!0 (array!52756 (_ BitVec 32) List!17926) Bool)

(assert (=> b!899382 (= e!503301 (arrayNoDuplicates!0 (_keys!10217 thiss!1181) #b00000000000000000000000000000000 Nil!17923))))

(assert (= (and d!111413 res!607669) b!899380))

(assert (= (and b!899380 res!607670) b!899381))

(assert (= (and b!899381 res!607671) b!899382))

(declare-fun m!835971 () Bool)

(assert (=> d!111413 m!835971))

(declare-fun m!835973 () Bool)

(assert (=> b!899380 m!835973))

(declare-fun m!835975 () Bool)

(assert (=> b!899381 m!835975))

(declare-fun m!835977 () Bool)

(assert (=> b!899382 m!835977))

(assert (=> start!77008 d!111413))

(declare-fun d!111415 () Bool)

(assert (=> d!111415 (= (array_inv!19866 (_keys!10217 thiss!1181)) (bvsge (size!25806 (_keys!10217 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!899323 d!111415))

(declare-fun d!111417 () Bool)

(assert (=> d!111417 (= (array_inv!19867 (_values!5444 thiss!1181)) (bvsge (size!25807 (_values!5444 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!899323 d!111417))

(declare-fun d!111419 () Bool)

(assert (=> d!111419 (= (validMask!0 (mask!26183 thiss!1181)) (and (or (= (mask!26183 thiss!1181) #b00000000000000000000000000000111) (= (mask!26183 thiss!1181) #b00000000000000000000000000001111) (= (mask!26183 thiss!1181) #b00000000000000000000000000011111) (= (mask!26183 thiss!1181) #b00000000000000000000000000111111) (= (mask!26183 thiss!1181) #b00000000000000000000000001111111) (= (mask!26183 thiss!1181) #b00000000000000000000000011111111) (= (mask!26183 thiss!1181) #b00000000000000000000000111111111) (= (mask!26183 thiss!1181) #b00000000000000000000001111111111) (= (mask!26183 thiss!1181) #b00000000000000000000011111111111) (= (mask!26183 thiss!1181) #b00000000000000000000111111111111) (= (mask!26183 thiss!1181) #b00000000000000000001111111111111) (= (mask!26183 thiss!1181) #b00000000000000000011111111111111) (= (mask!26183 thiss!1181) #b00000000000000000111111111111111) (= (mask!26183 thiss!1181) #b00000000000000001111111111111111) (= (mask!26183 thiss!1181) #b00000000000000011111111111111111) (= (mask!26183 thiss!1181) #b00000000000000111111111111111111) (= (mask!26183 thiss!1181) #b00000000000001111111111111111111) (= (mask!26183 thiss!1181) #b00000000000011111111111111111111) (= (mask!26183 thiss!1181) #b00000000000111111111111111111111) (= (mask!26183 thiss!1181) #b00000000001111111111111111111111) (= (mask!26183 thiss!1181) #b00000000011111111111111111111111) (= (mask!26183 thiss!1181) #b00000000111111111111111111111111) (= (mask!26183 thiss!1181) #b00000001111111111111111111111111) (= (mask!26183 thiss!1181) #b00000011111111111111111111111111) (= (mask!26183 thiss!1181) #b00000111111111111111111111111111) (= (mask!26183 thiss!1181) #b00001111111111111111111111111111) (= (mask!26183 thiss!1181) #b00011111111111111111111111111111) (= (mask!26183 thiss!1181) #b00111111111111111111111111111111)) (bvsle (mask!26183 thiss!1181) #b00111111111111111111111111111111)))))

(assert (=> b!899317 d!111419))

(declare-fun d!111421 () Bool)

(declare-fun res!607676 () Bool)

(declare-fun e!503306 () Bool)

(assert (=> d!111421 (=> res!607676 e!503306)))

(assert (=> d!111421 (= res!607676 (= (select (arr!25348 (_keys!10217 thiss!1181)) #b00000000000000000000000000000000) key!785))))

(assert (=> d!111421 (= (arrayContainsKey!0 (_keys!10217 thiss!1181) key!785 #b00000000000000000000000000000000) e!503306)))

(declare-fun b!899387 () Bool)

(declare-fun e!503307 () Bool)

(assert (=> b!899387 (= e!503306 e!503307)))

(declare-fun res!607677 () Bool)

(assert (=> b!899387 (=> (not res!607677) (not e!503307))))

(assert (=> b!899387 (= res!607677 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25806 (_keys!10217 thiss!1181))))))

(declare-fun b!899388 () Bool)

(assert (=> b!899388 (= e!503307 (arrayContainsKey!0 (_keys!10217 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!111421 (not res!607676)) b!899387))

(assert (= (and b!899387 res!607677) b!899388))

(declare-fun m!835979 () Bool)

(assert (=> d!111421 m!835979))

(declare-fun m!835981 () Bool)

(assert (=> b!899388 m!835981))

(assert (=> b!899317 d!111421))

(declare-fun d!111423 () Bool)

(declare-fun e!503312 () Bool)

(assert (=> d!111423 e!503312))

(declare-fun res!607680 () Bool)

(assert (=> d!111423 (=> res!607680 e!503312)))

(declare-fun lt!406233 () Bool)

(assert (=> d!111423 (= res!607680 (not lt!406233))))

(declare-fun lt!406231 () Bool)

(assert (=> d!111423 (= lt!406233 lt!406231)))

(declare-fun lt!406232 () Unit!30533)

(declare-fun e!503313 () Unit!30533)

(assert (=> d!111423 (= lt!406232 e!503313)))

(declare-fun c!95073 () Bool)

(assert (=> d!111423 (= c!95073 lt!406231)))

(declare-fun containsKey!429 (List!17925 (_ BitVec 64)) Bool)

(assert (=> d!111423 (= lt!406231 (containsKey!429 (toList!5404 (getCurrentListMap!2647 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5432 thiss!1181))) (select (arr!25348 (_keys!10217 thiss!1181)) (index!38051 lt!406192))))))

(assert (=> d!111423 (= (contains!4407 (getCurrentListMap!2647 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5432 thiss!1181)) (select (arr!25348 (_keys!10217 thiss!1181)) (index!38051 lt!406192))) lt!406233)))

(declare-fun b!899395 () Bool)

(declare-fun lt!406234 () Unit!30533)

(assert (=> b!899395 (= e!503313 lt!406234)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!324 (List!17925 (_ BitVec 64)) Unit!30533)

(assert (=> b!899395 (= lt!406234 (lemmaContainsKeyImpliesGetValueByKeyDefined!324 (toList!5404 (getCurrentListMap!2647 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5432 thiss!1181))) (select (arr!25348 (_keys!10217 thiss!1181)) (index!38051 lt!406192))))))

(declare-datatypes ((Option!465 0))(
  ( (Some!464 (v!11725 V!29449)) (None!463) )
))
(declare-fun isDefined!334 (Option!465) Bool)

(declare-fun getValueByKey!459 (List!17925 (_ BitVec 64)) Option!465)

(assert (=> b!899395 (isDefined!334 (getValueByKey!459 (toList!5404 (getCurrentListMap!2647 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5432 thiss!1181))) (select (arr!25348 (_keys!10217 thiss!1181)) (index!38051 lt!406192))))))

(declare-fun b!899396 () Bool)

(declare-fun Unit!30537 () Unit!30533)

(assert (=> b!899396 (= e!503313 Unit!30537)))

(declare-fun b!899397 () Bool)

(assert (=> b!899397 (= e!503312 (isDefined!334 (getValueByKey!459 (toList!5404 (getCurrentListMap!2647 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5432 thiss!1181))) (select (arr!25348 (_keys!10217 thiss!1181)) (index!38051 lt!406192)))))))

(assert (= (and d!111423 c!95073) b!899395))

(assert (= (and d!111423 (not c!95073)) b!899396))

(assert (= (and d!111423 (not res!607680)) b!899397))

(assert (=> d!111423 m!835913))

(declare-fun m!835983 () Bool)

(assert (=> d!111423 m!835983))

(assert (=> b!899395 m!835913))

(declare-fun m!835985 () Bool)

(assert (=> b!899395 m!835985))

(assert (=> b!899395 m!835913))

(declare-fun m!835987 () Bool)

(assert (=> b!899395 m!835987))

(assert (=> b!899395 m!835987))

(declare-fun m!835989 () Bool)

(assert (=> b!899395 m!835989))

(assert (=> b!899397 m!835913))

(assert (=> b!899397 m!835987))

(assert (=> b!899397 m!835987))

(assert (=> b!899397 m!835989))

(assert (=> b!899317 d!111423))

(declare-fun d!111425 () Bool)

(assert (=> d!111425 (arrayContainsKey!0 (_keys!10217 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!406237 () Unit!30533)

(declare-fun choose!13 (array!52756 (_ BitVec 64) (_ BitVec 32)) Unit!30533)

(assert (=> d!111425 (= lt!406237 (choose!13 (_keys!10217 thiss!1181) key!785 (index!38051 lt!406192)))))

(assert (=> d!111425 (bvsge (index!38051 lt!406192) #b00000000000000000000000000000000)))

(assert (=> d!111425 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10217 thiss!1181) key!785 (index!38051 lt!406192)) lt!406237)))

(declare-fun bs!25244 () Bool)

(assert (= bs!25244 d!111425))

(assert (=> bs!25244 m!835907))

(declare-fun m!835991 () Bool)

(assert (=> bs!25244 m!835991))

(assert (=> b!899317 d!111425))

(declare-fun bm!39955 () Bool)

(declare-fun call!39961 () ListLongMap!10777)

(declare-fun call!39963 () ListLongMap!10777)

(assert (=> bm!39955 (= call!39961 call!39963)))

(declare-fun b!899440 () Bool)

(declare-fun res!607699 () Bool)

(declare-fun e!503344 () Bool)

(assert (=> b!899440 (=> (not res!607699) (not e!503344))))

(declare-fun e!503342 () Bool)

(assert (=> b!899440 (= res!607699 e!503342)))

(declare-fun c!95090 () Bool)

(assert (=> b!899440 (= c!95090 (not (= (bvand (extraKeys!5153 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!899441 () Bool)

(declare-fun e!503352 () ListLongMap!10777)

(declare-fun e!503348 () ListLongMap!10777)

(assert (=> b!899441 (= e!503352 e!503348)))

(declare-fun c!95087 () Bool)

(assert (=> b!899441 (= c!95087 (and (not (= (bvand (extraKeys!5153 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5153 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!899442 () Bool)

(declare-fun res!607705 () Bool)

(assert (=> b!899442 (=> (not res!607705) (not e!503344))))

(declare-fun e!503345 () Bool)

(assert (=> b!899442 (= res!607705 e!503345)))

(declare-fun res!607701 () Bool)

(assert (=> b!899442 (=> res!607701 e!503345)))

(declare-fun e!503349 () Bool)

(assert (=> b!899442 (= res!607701 (not e!503349))))

(declare-fun res!607700 () Bool)

(assert (=> b!899442 (=> (not res!607700) (not e!503349))))

(assert (=> b!899442 (= res!607700 (bvslt #b00000000000000000000000000000000 (size!25806 (_keys!10217 thiss!1181))))))

(declare-fun d!111427 () Bool)

(assert (=> d!111427 e!503344))

(declare-fun res!607704 () Bool)

(assert (=> d!111427 (=> (not res!607704) (not e!503344))))

(assert (=> d!111427 (= res!607704 (or (bvsge #b00000000000000000000000000000000 (size!25806 (_keys!10217 thiss!1181))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25806 (_keys!10217 thiss!1181))))))))

(declare-fun lt!406285 () ListLongMap!10777)

(declare-fun lt!406290 () ListLongMap!10777)

(assert (=> d!111427 (= lt!406285 lt!406290)))

(declare-fun lt!406302 () Unit!30533)

(declare-fun e!503347 () Unit!30533)

(assert (=> d!111427 (= lt!406302 e!503347)))

(declare-fun c!95086 () Bool)

(declare-fun e!503351 () Bool)

(assert (=> d!111427 (= c!95086 e!503351)))

(declare-fun res!607706 () Bool)

(assert (=> d!111427 (=> (not res!607706) (not e!503351))))

(assert (=> d!111427 (= res!607706 (bvslt #b00000000000000000000000000000000 (size!25806 (_keys!10217 thiss!1181))))))

(assert (=> d!111427 (= lt!406290 e!503352)))

(declare-fun c!95088 () Bool)

(assert (=> d!111427 (= c!95088 (and (not (= (bvand (extraKeys!5153 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5153 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!111427 (validMask!0 (mask!26183 thiss!1181))))

(assert (=> d!111427 (= (getCurrentListMap!2647 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5432 thiss!1181)) lt!406285)))

(declare-fun b!899443 () Bool)

(declare-fun lt!406288 () Unit!30533)

(assert (=> b!899443 (= e!503347 lt!406288)))

(declare-fun lt!406295 () ListLongMap!10777)

(declare-fun getCurrentListMapNoExtraKeys!3297 (array!52756 array!52758 (_ BitVec 32) (_ BitVec 32) V!29449 V!29449 (_ BitVec 32) Int) ListLongMap!10777)

(assert (=> b!899443 (= lt!406295 (getCurrentListMapNoExtraKeys!3297 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5432 thiss!1181)))))

(declare-fun lt!406298 () (_ BitVec 64))

(assert (=> b!899443 (= lt!406298 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!406292 () (_ BitVec 64))

(assert (=> b!899443 (= lt!406292 (select (arr!25348 (_keys!10217 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!406282 () Unit!30533)

(declare-fun addStillContains!335 (ListLongMap!10777 (_ BitVec 64) V!29449 (_ BitVec 64)) Unit!30533)

(assert (=> b!899443 (= lt!406282 (addStillContains!335 lt!406295 lt!406298 (zeroValue!5257 thiss!1181) lt!406292))))

(declare-fun +!2549 (ListLongMap!10777 tuple2!12066) ListLongMap!10777)

(assert (=> b!899443 (contains!4407 (+!2549 lt!406295 (tuple2!12067 lt!406298 (zeroValue!5257 thiss!1181))) lt!406292)))

(declare-fun lt!406299 () Unit!30533)

(assert (=> b!899443 (= lt!406299 lt!406282)))

(declare-fun lt!406289 () ListLongMap!10777)

(assert (=> b!899443 (= lt!406289 (getCurrentListMapNoExtraKeys!3297 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5432 thiss!1181)))))

(declare-fun lt!406300 () (_ BitVec 64))

(assert (=> b!899443 (= lt!406300 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!406297 () (_ BitVec 64))

(assert (=> b!899443 (= lt!406297 (select (arr!25348 (_keys!10217 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!406303 () Unit!30533)

(declare-fun addApplyDifferent!335 (ListLongMap!10777 (_ BitVec 64) V!29449 (_ BitVec 64)) Unit!30533)

(assert (=> b!899443 (= lt!406303 (addApplyDifferent!335 lt!406289 lt!406300 (minValue!5257 thiss!1181) lt!406297))))

(declare-fun apply!413 (ListLongMap!10777 (_ BitVec 64)) V!29449)

(assert (=> b!899443 (= (apply!413 (+!2549 lt!406289 (tuple2!12067 lt!406300 (minValue!5257 thiss!1181))) lt!406297) (apply!413 lt!406289 lt!406297))))

(declare-fun lt!406284 () Unit!30533)

(assert (=> b!899443 (= lt!406284 lt!406303)))

(declare-fun lt!406301 () ListLongMap!10777)

(assert (=> b!899443 (= lt!406301 (getCurrentListMapNoExtraKeys!3297 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5432 thiss!1181)))))

(declare-fun lt!406296 () (_ BitVec 64))

(assert (=> b!899443 (= lt!406296 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!406287 () (_ BitVec 64))

(assert (=> b!899443 (= lt!406287 (select (arr!25348 (_keys!10217 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!406293 () Unit!30533)

(assert (=> b!899443 (= lt!406293 (addApplyDifferent!335 lt!406301 lt!406296 (zeroValue!5257 thiss!1181) lt!406287))))

(assert (=> b!899443 (= (apply!413 (+!2549 lt!406301 (tuple2!12067 lt!406296 (zeroValue!5257 thiss!1181))) lt!406287) (apply!413 lt!406301 lt!406287))))

(declare-fun lt!406291 () Unit!30533)

(assert (=> b!899443 (= lt!406291 lt!406293)))

(declare-fun lt!406286 () ListLongMap!10777)

(assert (=> b!899443 (= lt!406286 (getCurrentListMapNoExtraKeys!3297 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5432 thiss!1181)))))

(declare-fun lt!406294 () (_ BitVec 64))

(assert (=> b!899443 (= lt!406294 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!406283 () (_ BitVec 64))

(assert (=> b!899443 (= lt!406283 (select (arr!25348 (_keys!10217 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!899443 (= lt!406288 (addApplyDifferent!335 lt!406286 lt!406294 (minValue!5257 thiss!1181) lt!406283))))

(assert (=> b!899443 (= (apply!413 (+!2549 lt!406286 (tuple2!12067 lt!406294 (minValue!5257 thiss!1181))) lt!406283) (apply!413 lt!406286 lt!406283))))

(declare-fun b!899444 () Bool)

(declare-fun e!503346 () Bool)

(declare-fun call!39962 () Bool)

(assert (=> b!899444 (= e!503346 (not call!39962))))

(declare-fun call!39958 () ListLongMap!10777)

(declare-fun call!39960 () ListLongMap!10777)

(declare-fun bm!39956 () Bool)

(assert (=> bm!39956 (= call!39958 (+!2549 (ite c!95088 call!39963 (ite c!95087 call!39961 call!39960)) (ite (or c!95088 c!95087) (tuple2!12067 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5257 thiss!1181)) (tuple2!12067 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5257 thiss!1181)))))))

(declare-fun bm!39957 () Bool)

(declare-fun call!39964 () Bool)

(assert (=> bm!39957 (= call!39964 (contains!4407 lt!406285 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!899445 () Bool)

(assert (=> b!899445 (= e!503352 (+!2549 call!39958 (tuple2!12067 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5257 thiss!1181))))))

(declare-fun b!899446 () Bool)

(declare-fun Unit!30538 () Unit!30533)

(assert (=> b!899446 (= e!503347 Unit!30538)))

(declare-fun b!899447 () Bool)

(declare-fun e!503340 () Bool)

(assert (=> b!899447 (= e!503340 (= (apply!413 lt!406285 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5257 thiss!1181)))))

(declare-fun b!899448 () Bool)

(assert (=> b!899448 (= e!503346 e!503340)))

(declare-fun res!607707 () Bool)

(assert (=> b!899448 (= res!607707 call!39962)))

(assert (=> b!899448 (=> (not res!607707) (not e!503340))))

(declare-fun b!899449 () Bool)

(declare-fun c!95089 () Bool)

(assert (=> b!899449 (= c!95089 (and (not (= (bvand (extraKeys!5153 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5153 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!503343 () ListLongMap!10777)

(assert (=> b!899449 (= e!503348 e!503343)))

(declare-fun bm!39958 () Bool)

(assert (=> bm!39958 (= call!39960 call!39961)))

(declare-fun b!899450 () Bool)

(declare-fun e!503341 () Bool)

(assert (=> b!899450 (= e!503342 e!503341)))

(declare-fun res!607703 () Bool)

(assert (=> b!899450 (= res!607703 call!39964)))

(assert (=> b!899450 (=> (not res!607703) (not e!503341))))

(declare-fun b!899451 () Bool)

(assert (=> b!899451 (= e!503344 e!503346)))

(declare-fun c!95091 () Bool)

(assert (=> b!899451 (= c!95091 (not (= (bvand (extraKeys!5153 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!899452 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!899452 (= e!503351 (validKeyInArray!0 (select (arr!25348 (_keys!10217 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!899453 () Bool)

(declare-fun e!503350 () Bool)

(assert (=> b!899453 (= e!503345 e!503350)))

(declare-fun res!607702 () Bool)

(assert (=> b!899453 (=> (not res!607702) (not e!503350))))

(assert (=> b!899453 (= res!607702 (contains!4407 lt!406285 (select (arr!25348 (_keys!10217 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> b!899453 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25806 (_keys!10217 thiss!1181))))))

(declare-fun b!899454 () Bool)

(assert (=> b!899454 (= e!503342 (not call!39964))))

(declare-fun bm!39959 () Bool)

(assert (=> bm!39959 (= call!39962 (contains!4407 lt!406285 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!899455 () Bool)

(assert (=> b!899455 (= e!503341 (= (apply!413 lt!406285 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5257 thiss!1181)))))

(declare-fun b!899456 () Bool)

(declare-fun get!13342 (ValueCell!8700 V!29449) V!29449)

(declare-fun dynLambda!1308 (Int (_ BitVec 64)) V!29449)

(assert (=> b!899456 (= e!503350 (= (apply!413 lt!406285 (select (arr!25348 (_keys!10217 thiss!1181)) #b00000000000000000000000000000000)) (get!13342 (select (arr!25349 (_values!5444 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1308 (defaultEntry!5432 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!899456 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25807 (_values!5444 thiss!1181))))))

(assert (=> b!899456 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25806 (_keys!10217 thiss!1181))))))

(declare-fun bm!39960 () Bool)

(assert (=> bm!39960 (= call!39963 (getCurrentListMapNoExtraKeys!3297 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5432 thiss!1181)))))

(declare-fun b!899457 () Bool)

(assert (=> b!899457 (= e!503343 call!39960)))

(declare-fun b!899458 () Bool)

(declare-fun call!39959 () ListLongMap!10777)

(assert (=> b!899458 (= e!503348 call!39959)))

(declare-fun b!899459 () Bool)

(assert (=> b!899459 (= e!503343 call!39959)))

(declare-fun b!899460 () Bool)

(assert (=> b!899460 (= e!503349 (validKeyInArray!0 (select (arr!25348 (_keys!10217 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun bm!39961 () Bool)

(assert (=> bm!39961 (= call!39959 call!39958)))

(assert (= (and d!111427 c!95088) b!899445))

(assert (= (and d!111427 (not c!95088)) b!899441))

(assert (= (and b!899441 c!95087) b!899458))

(assert (= (and b!899441 (not c!95087)) b!899449))

(assert (= (and b!899449 c!95089) b!899459))

(assert (= (and b!899449 (not c!95089)) b!899457))

(assert (= (or b!899459 b!899457) bm!39958))

(assert (= (or b!899458 bm!39958) bm!39955))

(assert (= (or b!899458 b!899459) bm!39961))

(assert (= (or b!899445 bm!39955) bm!39960))

(assert (= (or b!899445 bm!39961) bm!39956))

(assert (= (and d!111427 res!607706) b!899452))

(assert (= (and d!111427 c!95086) b!899443))

(assert (= (and d!111427 (not c!95086)) b!899446))

(assert (= (and d!111427 res!607704) b!899442))

(assert (= (and b!899442 res!607700) b!899460))

(assert (= (and b!899442 (not res!607701)) b!899453))

(assert (= (and b!899453 res!607702) b!899456))

(assert (= (and b!899442 res!607705) b!899440))

(assert (= (and b!899440 c!95090) b!899450))

(assert (= (and b!899440 (not c!95090)) b!899454))

(assert (= (and b!899450 res!607703) b!899455))

(assert (= (or b!899450 b!899454) bm!39957))

(assert (= (and b!899440 res!607699) b!899451))

(assert (= (and b!899451 c!95091) b!899448))

(assert (= (and b!899451 (not c!95091)) b!899444))

(assert (= (and b!899448 res!607707) b!899447))

(assert (= (or b!899448 b!899444) bm!39959))

(declare-fun b_lambda!13021 () Bool)

(assert (=> (not b_lambda!13021) (not b!899456)))

(declare-fun t!25282 () Bool)

(declare-fun tb!5207 () Bool)

(assert (=> (and b!899323 (= (defaultEntry!5432 thiss!1181) (defaultEntry!5432 thiss!1181)) t!25282) tb!5207))

(declare-fun result!10177 () Bool)

(assert (=> tb!5207 (= result!10177 tp_is_empty!18363)))

(assert (=> b!899456 t!25282))

(declare-fun b_and!26365 () Bool)

(assert (= b_and!26361 (and (=> t!25282 result!10177) b_and!26365)))

(declare-fun m!835993 () Bool)

(assert (=> b!899455 m!835993))

(declare-fun m!835995 () Bool)

(assert (=> bm!39956 m!835995))

(assert (=> b!899453 m!835979))

(assert (=> b!899453 m!835979))

(declare-fun m!835997 () Bool)

(assert (=> b!899453 m!835997))

(declare-fun m!835999 () Bool)

(assert (=> b!899447 m!835999))

(declare-fun m!836001 () Bool)

(assert (=> bm!39957 m!836001))

(declare-fun m!836003 () Bool)

(assert (=> bm!39959 m!836003))

(declare-fun m!836005 () Bool)

(assert (=> b!899443 m!836005))

(declare-fun m!836007 () Bool)

(assert (=> b!899443 m!836007))

(declare-fun m!836009 () Bool)

(assert (=> b!899443 m!836009))

(declare-fun m!836011 () Bool)

(assert (=> b!899443 m!836011))

(declare-fun m!836013 () Bool)

(assert (=> b!899443 m!836013))

(declare-fun m!836015 () Bool)

(assert (=> b!899443 m!836015))

(declare-fun m!836017 () Bool)

(assert (=> b!899443 m!836017))

(declare-fun m!836019 () Bool)

(assert (=> b!899443 m!836019))

(declare-fun m!836021 () Bool)

(assert (=> b!899443 m!836021))

(assert (=> b!899443 m!836019))

(declare-fun m!836023 () Bool)

(assert (=> b!899443 m!836023))

(assert (=> b!899443 m!836009))

(declare-fun m!836025 () Bool)

(assert (=> b!899443 m!836025))

(assert (=> b!899443 m!836017))

(declare-fun m!836027 () Bool)

(assert (=> b!899443 m!836027))

(declare-fun m!836029 () Bool)

(assert (=> b!899443 m!836029))

(declare-fun m!836031 () Bool)

(assert (=> b!899443 m!836031))

(assert (=> b!899443 m!835979))

(declare-fun m!836033 () Bool)

(assert (=> b!899443 m!836033))

(assert (=> b!899443 m!836005))

(declare-fun m!836035 () Bool)

(assert (=> b!899443 m!836035))

(declare-fun m!836037 () Bool)

(assert (=> b!899445 m!836037))

(assert (=> bm!39960 m!836029))

(assert (=> b!899460 m!835979))

(assert (=> b!899460 m!835979))

(declare-fun m!836039 () Bool)

(assert (=> b!899460 m!836039))

(declare-fun m!836041 () Bool)

(assert (=> b!899456 m!836041))

(declare-fun m!836043 () Bool)

(assert (=> b!899456 m!836043))

(declare-fun m!836045 () Bool)

(assert (=> b!899456 m!836045))

(assert (=> b!899456 m!836043))

(assert (=> b!899456 m!835979))

(declare-fun m!836047 () Bool)

(assert (=> b!899456 m!836047))

(assert (=> b!899456 m!835979))

(assert (=> b!899456 m!836041))

(assert (=> d!111427 m!835909))

(assert (=> b!899452 m!835979))

(assert (=> b!899452 m!835979))

(assert (=> b!899452 m!836039))

(assert (=> b!899317 d!111427))

(declare-fun d!111429 () Bool)

(declare-fun e!503355 () Bool)

(assert (=> d!111429 e!503355))

(declare-fun res!607710 () Bool)

(assert (=> d!111429 (=> (not res!607710) (not e!503355))))

(assert (=> d!111429 (= res!607710 (and (bvsge (index!38051 lt!406192) #b00000000000000000000000000000000) (bvslt (index!38051 lt!406192) (size!25806 (_keys!10217 thiss!1181)))))))

(declare-fun lt!406306 () Unit!30533)

(declare-fun choose!1511 (array!52756 array!52758 (_ BitVec 32) (_ BitVec 32) V!29449 V!29449 (_ BitVec 32) Int) Unit!30533)

(assert (=> d!111429 (= lt!406306 (choose!1511 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) (index!38051 lt!406192) (defaultEntry!5432 thiss!1181)))))

(assert (=> d!111429 (validMask!0 (mask!26183 thiss!1181))))

(assert (=> d!111429 (= (lemmaValidKeyInArrayIsInListMap!240 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) (index!38051 lt!406192) (defaultEntry!5432 thiss!1181)) lt!406306)))

(declare-fun b!899465 () Bool)

(assert (=> b!899465 (= e!503355 (contains!4407 (getCurrentListMap!2647 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5432 thiss!1181)) (select (arr!25348 (_keys!10217 thiss!1181)) (index!38051 lt!406192))))))

(assert (= (and d!111429 res!607710) b!899465))

(declare-fun m!836049 () Bool)

(assert (=> d!111429 m!836049))

(assert (=> d!111429 m!835909))

(assert (=> b!899465 m!835911))

(assert (=> b!899465 m!835913))

(assert (=> b!899465 m!835911))

(assert (=> b!899465 m!835913))

(assert (=> b!899465 m!835915))

(assert (=> b!899317 d!111429))

(declare-fun b!899473 () Bool)

(declare-fun e!503361 () Bool)

(assert (=> b!899473 (= e!503361 tp_is_empty!18363)))

(declare-fun mapIsEmpty!29216 () Bool)

(declare-fun mapRes!29216 () Bool)

(assert (=> mapIsEmpty!29216 mapRes!29216))

(declare-fun condMapEmpty!29216 () Bool)

(declare-fun mapDefault!29216 () ValueCell!8700)

(assert (=> mapNonEmpty!29210 (= condMapEmpty!29216 (= mapRest!29210 ((as const (Array (_ BitVec 32) ValueCell!8700)) mapDefault!29216)))))

(assert (=> mapNonEmpty!29210 (= tp!56185 (and e!503361 mapRes!29216))))

(declare-fun mapNonEmpty!29216 () Bool)

(declare-fun tp!56195 () Bool)

(declare-fun e!503360 () Bool)

(assert (=> mapNonEmpty!29216 (= mapRes!29216 (and tp!56195 e!503360))))

(declare-fun mapKey!29216 () (_ BitVec 32))

(declare-fun mapRest!29216 () (Array (_ BitVec 32) ValueCell!8700))

(declare-fun mapValue!29216 () ValueCell!8700)

(assert (=> mapNonEmpty!29216 (= mapRest!29210 (store mapRest!29216 mapKey!29216 mapValue!29216))))

(declare-fun b!899472 () Bool)

(assert (=> b!899472 (= e!503360 tp_is_empty!18363)))

(assert (= (and mapNonEmpty!29210 condMapEmpty!29216) mapIsEmpty!29216))

(assert (= (and mapNonEmpty!29210 (not condMapEmpty!29216)) mapNonEmpty!29216))

(assert (= (and mapNonEmpty!29216 ((_ is ValueCellFull!8700) mapValue!29216)) b!899472))

(assert (= (and mapNonEmpty!29210 ((_ is ValueCellFull!8700) mapDefault!29216)) b!899473))

(declare-fun m!836051 () Bool)

(assert (=> mapNonEmpty!29216 m!836051))

(declare-fun b_lambda!13023 () Bool)

(assert (= b_lambda!13021 (or (and b!899323 b_free!16035) b_lambda!13023)))

(check-sat (not bm!39957) (not b!899370) (not b!899460) (not bm!39956) (not b!899380) b_and!26365 tp_is_empty!18363 (not b!899452) (not b!899455) (not bm!39960) (not b!899447) (not b!899355) (not d!111425) (not bm!39959) (not b_lambda!13023) (not d!111423) (not b!899382) (not b!899397) (not b!899445) (not d!111413) (not d!111409) (not b_next!16035) (not b!899456) (not b!899395) (not b!899388) (not b!899465) (not b!899381) (not d!111427) (not d!111429) (not b!899453) (not b!899443) (not mapNonEmpty!29216) (not d!111411))
(check-sat b_and!26365 (not b_next!16035))
(get-model)

(declare-fun b!899484 () Bool)

(declare-fun e!503371 () Bool)

(declare-fun e!503372 () Bool)

(assert (=> b!899484 (= e!503371 e!503372)))

(declare-fun c!95094 () Bool)

(assert (=> b!899484 (= c!95094 (validKeyInArray!0 (select (arr!25348 (_keys!10217 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!899485 () Bool)

(declare-fun e!503370 () Bool)

(declare-fun contains!4408 (List!17926 (_ BitVec 64)) Bool)

(assert (=> b!899485 (= e!503370 (contains!4408 Nil!17923 (select (arr!25348 (_keys!10217 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!899486 () Bool)

(declare-fun call!39967 () Bool)

(assert (=> b!899486 (= e!503372 call!39967)))

(declare-fun b!899487 () Bool)

(assert (=> b!899487 (= e!503372 call!39967)))

(declare-fun b!899488 () Bool)

(declare-fun e!503373 () Bool)

(assert (=> b!899488 (= e!503373 e!503371)))

(declare-fun res!607717 () Bool)

(assert (=> b!899488 (=> (not res!607717) (not e!503371))))

(assert (=> b!899488 (= res!607717 (not e!503370))))

(declare-fun res!607718 () Bool)

(assert (=> b!899488 (=> (not res!607718) (not e!503370))))

(assert (=> b!899488 (= res!607718 (validKeyInArray!0 (select (arr!25348 (_keys!10217 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun bm!39964 () Bool)

(assert (=> bm!39964 (= call!39967 (arrayNoDuplicates!0 (_keys!10217 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!95094 (Cons!17922 (select (arr!25348 (_keys!10217 thiss!1181)) #b00000000000000000000000000000000) Nil!17923) Nil!17923)))))

(declare-fun d!111431 () Bool)

(declare-fun res!607719 () Bool)

(assert (=> d!111431 (=> res!607719 e!503373)))

(assert (=> d!111431 (= res!607719 (bvsge #b00000000000000000000000000000000 (size!25806 (_keys!10217 thiss!1181))))))

(assert (=> d!111431 (= (arrayNoDuplicates!0 (_keys!10217 thiss!1181) #b00000000000000000000000000000000 Nil!17923) e!503373)))

(assert (= (and d!111431 (not res!607719)) b!899488))

(assert (= (and b!899488 res!607718) b!899485))

(assert (= (and b!899488 res!607717) b!899484))

(assert (= (and b!899484 c!95094) b!899486))

(assert (= (and b!899484 (not c!95094)) b!899487))

(assert (= (or b!899486 b!899487) bm!39964))

(assert (=> b!899484 m!835979))

(assert (=> b!899484 m!835979))

(assert (=> b!899484 m!836039))

(assert (=> b!899485 m!835979))

(assert (=> b!899485 m!835979))

(declare-fun m!836053 () Bool)

(assert (=> b!899485 m!836053))

(assert (=> b!899488 m!835979))

(assert (=> b!899488 m!835979))

(assert (=> b!899488 m!836039))

(assert (=> bm!39964 m!835979))

(declare-fun m!836055 () Bool)

(assert (=> bm!39964 m!836055))

(assert (=> b!899382 d!111431))

(declare-fun b!899497 () Bool)

(declare-fun e!503379 () (_ BitVec 32))

(assert (=> b!899497 (= e!503379 #b00000000000000000000000000000000)))

(declare-fun bm!39967 () Bool)

(declare-fun call!39970 () (_ BitVec 32))

(assert (=> bm!39967 (= call!39970 (arrayCountValidKeys!0 (_keys!10217 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25806 (_keys!10217 thiss!1181))))))

(declare-fun d!111433 () Bool)

(declare-fun lt!406309 () (_ BitVec 32))

(assert (=> d!111433 (and (bvsge lt!406309 #b00000000000000000000000000000000) (bvsle lt!406309 (bvsub (size!25806 (_keys!10217 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> d!111433 (= lt!406309 e!503379)))

(declare-fun c!95100 () Bool)

(assert (=> d!111433 (= c!95100 (bvsge #b00000000000000000000000000000000 (size!25806 (_keys!10217 thiss!1181))))))

(assert (=> d!111433 (and (bvsle #b00000000000000000000000000000000 (size!25806 (_keys!10217 thiss!1181))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!25806 (_keys!10217 thiss!1181)) (size!25806 (_keys!10217 thiss!1181))))))

(assert (=> d!111433 (= (arrayCountValidKeys!0 (_keys!10217 thiss!1181) #b00000000000000000000000000000000 (size!25806 (_keys!10217 thiss!1181))) lt!406309)))

(declare-fun b!899498 () Bool)

(declare-fun e!503378 () (_ BitVec 32))

(assert (=> b!899498 (= e!503378 call!39970)))

(declare-fun b!899499 () Bool)

(assert (=> b!899499 (= e!503378 (bvadd #b00000000000000000000000000000001 call!39970))))

(declare-fun b!899500 () Bool)

(assert (=> b!899500 (= e!503379 e!503378)))

(declare-fun c!95099 () Bool)

(assert (=> b!899500 (= c!95099 (validKeyInArray!0 (select (arr!25348 (_keys!10217 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (= (and d!111433 c!95100) b!899497))

(assert (= (and d!111433 (not c!95100)) b!899500))

(assert (= (and b!899500 c!95099) b!899499))

(assert (= (and b!899500 (not c!95099)) b!899498))

(assert (= (or b!899499 b!899498) bm!39967))

(declare-fun m!836057 () Bool)

(assert (=> bm!39967 m!836057))

(assert (=> b!899500 m!835979))

(assert (=> b!899500 m!835979))

(assert (=> b!899500 m!836039))

(assert (=> b!899380 d!111433))

(declare-fun d!111435 () Bool)

(declare-fun e!503382 () Bool)

(assert (=> d!111435 e!503382))

(declare-fun res!607725 () Bool)

(assert (=> d!111435 (=> (not res!607725) (not e!503382))))

(declare-fun lt!406318 () ListLongMap!10777)

(assert (=> d!111435 (= res!607725 (contains!4407 lt!406318 (_1!6043 (tuple2!12067 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5257 thiss!1181)))))))

(declare-fun lt!406321 () List!17925)

(assert (=> d!111435 (= lt!406318 (ListLongMap!10778 lt!406321))))

(declare-fun lt!406319 () Unit!30533)

(declare-fun lt!406320 () Unit!30533)

(assert (=> d!111435 (= lt!406319 lt!406320)))

(assert (=> d!111435 (= (getValueByKey!459 lt!406321 (_1!6043 (tuple2!12067 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5257 thiss!1181)))) (Some!464 (_2!6043 (tuple2!12067 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5257 thiss!1181)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!251 (List!17925 (_ BitVec 64) V!29449) Unit!30533)

(assert (=> d!111435 (= lt!406320 (lemmaContainsTupThenGetReturnValue!251 lt!406321 (_1!6043 (tuple2!12067 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5257 thiss!1181))) (_2!6043 (tuple2!12067 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5257 thiss!1181)))))))

(declare-fun insertStrictlySorted!307 (List!17925 (_ BitVec 64) V!29449) List!17925)

(assert (=> d!111435 (= lt!406321 (insertStrictlySorted!307 (toList!5404 call!39958) (_1!6043 (tuple2!12067 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5257 thiss!1181))) (_2!6043 (tuple2!12067 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5257 thiss!1181)))))))

(assert (=> d!111435 (= (+!2549 call!39958 (tuple2!12067 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5257 thiss!1181))) lt!406318)))

(declare-fun b!899505 () Bool)

(declare-fun res!607724 () Bool)

(assert (=> b!899505 (=> (not res!607724) (not e!503382))))

(assert (=> b!899505 (= res!607724 (= (getValueByKey!459 (toList!5404 lt!406318) (_1!6043 (tuple2!12067 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5257 thiss!1181)))) (Some!464 (_2!6043 (tuple2!12067 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5257 thiss!1181))))))))

(declare-fun b!899506 () Bool)

(declare-fun contains!4409 (List!17925 tuple2!12066) Bool)

(assert (=> b!899506 (= e!503382 (contains!4409 (toList!5404 lt!406318) (tuple2!12067 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5257 thiss!1181))))))

(assert (= (and d!111435 res!607725) b!899505))

(assert (= (and b!899505 res!607724) b!899506))

(declare-fun m!836059 () Bool)

(assert (=> d!111435 m!836059))

(declare-fun m!836061 () Bool)

(assert (=> d!111435 m!836061))

(declare-fun m!836063 () Bool)

(assert (=> d!111435 m!836063))

(declare-fun m!836065 () Bool)

(assert (=> d!111435 m!836065))

(declare-fun m!836067 () Bool)

(assert (=> b!899505 m!836067))

(declare-fun m!836069 () Bool)

(assert (=> b!899506 m!836069))

(assert (=> b!899445 d!111435))

(declare-fun b!899516 () Bool)

(declare-fun res!607735 () Bool)

(declare-fun e!503385 () Bool)

(assert (=> b!899516 (=> (not res!607735) (not e!503385))))

(declare-fun size!25810 (LongMapFixedSize!4416) (_ BitVec 32))

(assert (=> b!899516 (= res!607735 (bvsge (size!25810 thiss!1181) (_size!2263 thiss!1181)))))

(declare-fun d!111437 () Bool)

(declare-fun res!607737 () Bool)

(assert (=> d!111437 (=> (not res!607737) (not e!503385))))

(assert (=> d!111437 (= res!607737 (validMask!0 (mask!26183 thiss!1181)))))

(assert (=> d!111437 (= (simpleValid!326 thiss!1181) e!503385)))

(declare-fun b!899515 () Bool)

(declare-fun res!607734 () Bool)

(assert (=> b!899515 (=> (not res!607734) (not e!503385))))

(assert (=> b!899515 (= res!607734 (and (= (size!25807 (_values!5444 thiss!1181)) (bvadd (mask!26183 thiss!1181) #b00000000000000000000000000000001)) (= (size!25806 (_keys!10217 thiss!1181)) (size!25807 (_values!5444 thiss!1181))) (bvsge (_size!2263 thiss!1181) #b00000000000000000000000000000000) (bvsle (_size!2263 thiss!1181) (bvadd (mask!26183 thiss!1181) #b00000000000000000000000000000001))))))

(declare-fun b!899517 () Bool)

(declare-fun res!607736 () Bool)

(assert (=> b!899517 (=> (not res!607736) (not e!503385))))

(assert (=> b!899517 (= res!607736 (= (size!25810 thiss!1181) (bvadd (_size!2263 thiss!1181) (bvsdiv (bvadd (extraKeys!5153 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!899518 () Bool)

(assert (=> b!899518 (= e!503385 (and (bvsge (extraKeys!5153 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!5153 thiss!1181) #b00000000000000000000000000000011) (bvsge (_vacant!2263 thiss!1181) #b00000000000000000000000000000000)))))

(assert (= (and d!111437 res!607737) b!899515))

(assert (= (and b!899515 res!607734) b!899516))

(assert (= (and b!899516 res!607735) b!899517))

(assert (= (and b!899517 res!607736) b!899518))

(declare-fun m!836071 () Bool)

(assert (=> b!899516 m!836071))

(assert (=> d!111437 m!835909))

(assert (=> b!899517 m!836071))

(assert (=> d!111413 d!111437))

(declare-fun d!111439 () Bool)

(declare-fun get!13343 (Option!465) V!29449)

(assert (=> d!111439 (= (apply!413 lt!406285 #b1000000000000000000000000000000000000000000000000000000000000000) (get!13343 (getValueByKey!459 (toList!5404 lt!406285) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!25245 () Bool)

(assert (= bs!25245 d!111439))

(declare-fun m!836073 () Bool)

(assert (=> bs!25245 m!836073))

(assert (=> bs!25245 m!836073))

(declare-fun m!836075 () Bool)

(assert (=> bs!25245 m!836075))

(assert (=> b!899447 d!111439))

(declare-fun bm!39970 () Bool)

(declare-fun call!39973 () Bool)

(assert (=> bm!39970 (= call!39973 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10217 thiss!1181) (mask!26183 thiss!1181)))))

(declare-fun d!111441 () Bool)

(declare-fun res!607743 () Bool)

(declare-fun e!503392 () Bool)

(assert (=> d!111441 (=> res!607743 e!503392)))

(assert (=> d!111441 (= res!607743 (bvsge #b00000000000000000000000000000000 (size!25806 (_keys!10217 thiss!1181))))))

(assert (=> d!111441 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10217 thiss!1181) (mask!26183 thiss!1181)) e!503392)))

(declare-fun b!899527 () Bool)

(declare-fun e!503394 () Bool)

(assert (=> b!899527 (= e!503392 e!503394)))

(declare-fun c!95103 () Bool)

(assert (=> b!899527 (= c!95103 (validKeyInArray!0 (select (arr!25348 (_keys!10217 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!899528 () Bool)

(declare-fun e!503393 () Bool)

(assert (=> b!899528 (= e!503393 call!39973)))

(declare-fun b!899529 () Bool)

(assert (=> b!899529 (= e!503394 call!39973)))

(declare-fun b!899530 () Bool)

(assert (=> b!899530 (= e!503394 e!503393)))

(declare-fun lt!406329 () (_ BitVec 64))

(assert (=> b!899530 (= lt!406329 (select (arr!25348 (_keys!10217 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!406328 () Unit!30533)

(assert (=> b!899530 (= lt!406328 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10217 thiss!1181) lt!406329 #b00000000000000000000000000000000))))

(assert (=> b!899530 (arrayContainsKey!0 (_keys!10217 thiss!1181) lt!406329 #b00000000000000000000000000000000)))

(declare-fun lt!406330 () Unit!30533)

(assert (=> b!899530 (= lt!406330 lt!406328)))

(declare-fun res!607742 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!52756 (_ BitVec 32)) SeekEntryResult!8920)

(assert (=> b!899530 (= res!607742 (= (seekEntryOrOpen!0 (select (arr!25348 (_keys!10217 thiss!1181)) #b00000000000000000000000000000000) (_keys!10217 thiss!1181) (mask!26183 thiss!1181)) (Found!8920 #b00000000000000000000000000000000)))))

(assert (=> b!899530 (=> (not res!607742) (not e!503393))))

(assert (= (and d!111441 (not res!607743)) b!899527))

(assert (= (and b!899527 c!95103) b!899530))

(assert (= (and b!899527 (not c!95103)) b!899529))

(assert (= (and b!899530 res!607742) b!899528))

(assert (= (or b!899528 b!899529) bm!39970))

(declare-fun m!836077 () Bool)

(assert (=> bm!39970 m!836077))

(assert (=> b!899527 m!835979))

(assert (=> b!899527 m!835979))

(assert (=> b!899527 m!836039))

(assert (=> b!899530 m!835979))

(declare-fun m!836079 () Bool)

(assert (=> b!899530 m!836079))

(declare-fun m!836081 () Bool)

(assert (=> b!899530 m!836081))

(assert (=> b!899530 m!835979))

(declare-fun m!836083 () Bool)

(assert (=> b!899530 m!836083))

(assert (=> b!899381 d!111441))

(declare-fun d!111443 () Bool)

(declare-fun e!503395 () Bool)

(assert (=> d!111443 e!503395))

(declare-fun res!607745 () Bool)

(assert (=> d!111443 (=> (not res!607745) (not e!503395))))

(declare-fun lt!406331 () ListLongMap!10777)

(assert (=> d!111443 (= res!607745 (contains!4407 lt!406331 (_1!6043 (ite (or c!95088 c!95087) (tuple2!12067 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5257 thiss!1181)) (tuple2!12067 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5257 thiss!1181))))))))

(declare-fun lt!406334 () List!17925)

(assert (=> d!111443 (= lt!406331 (ListLongMap!10778 lt!406334))))

(declare-fun lt!406332 () Unit!30533)

(declare-fun lt!406333 () Unit!30533)

(assert (=> d!111443 (= lt!406332 lt!406333)))

(assert (=> d!111443 (= (getValueByKey!459 lt!406334 (_1!6043 (ite (or c!95088 c!95087) (tuple2!12067 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5257 thiss!1181)) (tuple2!12067 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5257 thiss!1181))))) (Some!464 (_2!6043 (ite (or c!95088 c!95087) (tuple2!12067 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5257 thiss!1181)) (tuple2!12067 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5257 thiss!1181))))))))

(assert (=> d!111443 (= lt!406333 (lemmaContainsTupThenGetReturnValue!251 lt!406334 (_1!6043 (ite (or c!95088 c!95087) (tuple2!12067 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5257 thiss!1181)) (tuple2!12067 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5257 thiss!1181)))) (_2!6043 (ite (or c!95088 c!95087) (tuple2!12067 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5257 thiss!1181)) (tuple2!12067 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5257 thiss!1181))))))))

(assert (=> d!111443 (= lt!406334 (insertStrictlySorted!307 (toList!5404 (ite c!95088 call!39963 (ite c!95087 call!39961 call!39960))) (_1!6043 (ite (or c!95088 c!95087) (tuple2!12067 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5257 thiss!1181)) (tuple2!12067 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5257 thiss!1181)))) (_2!6043 (ite (or c!95088 c!95087) (tuple2!12067 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5257 thiss!1181)) (tuple2!12067 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5257 thiss!1181))))))))

(assert (=> d!111443 (= (+!2549 (ite c!95088 call!39963 (ite c!95087 call!39961 call!39960)) (ite (or c!95088 c!95087) (tuple2!12067 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5257 thiss!1181)) (tuple2!12067 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5257 thiss!1181)))) lt!406331)))

(declare-fun b!899531 () Bool)

(declare-fun res!607744 () Bool)

(assert (=> b!899531 (=> (not res!607744) (not e!503395))))

(assert (=> b!899531 (= res!607744 (= (getValueByKey!459 (toList!5404 lt!406331) (_1!6043 (ite (or c!95088 c!95087) (tuple2!12067 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5257 thiss!1181)) (tuple2!12067 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5257 thiss!1181))))) (Some!464 (_2!6043 (ite (or c!95088 c!95087) (tuple2!12067 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5257 thiss!1181)) (tuple2!12067 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5257 thiss!1181)))))))))

(declare-fun b!899532 () Bool)

(assert (=> b!899532 (= e!503395 (contains!4409 (toList!5404 lt!406331) (ite (or c!95088 c!95087) (tuple2!12067 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5257 thiss!1181)) (tuple2!12067 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5257 thiss!1181)))))))

(assert (= (and d!111443 res!607745) b!899531))

(assert (= (and b!899531 res!607744) b!899532))

(declare-fun m!836085 () Bool)

(assert (=> d!111443 m!836085))

(declare-fun m!836087 () Bool)

(assert (=> d!111443 m!836087))

(declare-fun m!836089 () Bool)

(assert (=> d!111443 m!836089))

(declare-fun m!836091 () Bool)

(assert (=> d!111443 m!836091))

(declare-fun m!836093 () Bool)

(assert (=> b!899531 m!836093))

(declare-fun m!836095 () Bool)

(assert (=> b!899532 m!836095))

(assert (=> bm!39956 d!111443))

(declare-fun b!899551 () Bool)

(declare-fun lt!406339 () SeekEntryResult!8920)

(assert (=> b!899551 (and (bvsge (index!38052 lt!406339) #b00000000000000000000000000000000) (bvslt (index!38052 lt!406339) (size!25806 (_keys!10217 thiss!1181))))))

(declare-fun res!607753 () Bool)

(assert (=> b!899551 (= res!607753 (= (select (arr!25348 (_keys!10217 thiss!1181)) (index!38052 lt!406339)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!503409 () Bool)

(assert (=> b!899551 (=> res!607753 e!503409)))

(declare-fun b!899552 () Bool)

(assert (=> b!899552 (and (bvsge (index!38052 lt!406339) #b00000000000000000000000000000000) (bvslt (index!38052 lt!406339) (size!25806 (_keys!10217 thiss!1181))))))

(declare-fun res!607752 () Bool)

(assert (=> b!899552 (= res!607752 (= (select (arr!25348 (_keys!10217 thiss!1181)) (index!38052 lt!406339)) key!785))))

(assert (=> b!899552 (=> res!607752 e!503409)))

(declare-fun e!503407 () Bool)

(assert (=> b!899552 (= e!503407 e!503409)))

(declare-fun b!899553 () Bool)

(assert (=> b!899553 (and (bvsge (index!38052 lt!406339) #b00000000000000000000000000000000) (bvslt (index!38052 lt!406339) (size!25806 (_keys!10217 thiss!1181))))))

(assert (=> b!899553 (= e!503409 (= (select (arr!25348 (_keys!10217 thiss!1181)) (index!38052 lt!406339)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!111445 () Bool)

(declare-fun e!503408 () Bool)

(assert (=> d!111445 e!503408))

(declare-fun c!95110 () Bool)

(assert (=> d!111445 (= c!95110 (and ((_ is Intermediate!8920) lt!406339) (undefined!9732 lt!406339)))))

(declare-fun e!503406 () SeekEntryResult!8920)

(assert (=> d!111445 (= lt!406339 e!503406)))

(declare-fun c!95112 () Bool)

(assert (=> d!111445 (= c!95112 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!406340 () (_ BitVec 64))

(assert (=> d!111445 (= lt!406340 (select (arr!25348 (_keys!10217 thiss!1181)) (toIndex!0 key!785 (mask!26183 thiss!1181))))))

(assert (=> d!111445 (validMask!0 (mask!26183 thiss!1181))))

(assert (=> d!111445 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!26183 thiss!1181)) key!785 (_keys!10217 thiss!1181) (mask!26183 thiss!1181)) lt!406339)))

(declare-fun b!899554 () Bool)

(assert (=> b!899554 (= e!503408 e!503407)))

(declare-fun res!607754 () Bool)

(assert (=> b!899554 (= res!607754 (and ((_ is Intermediate!8920) lt!406339) (not (undefined!9732 lt!406339)) (bvslt (x!76630 lt!406339) #b01111111111111111111111111111110) (bvsge (x!76630 lt!406339) #b00000000000000000000000000000000) (bvsge (x!76630 lt!406339) #b00000000000000000000000000000000)))))

(assert (=> b!899554 (=> (not res!607754) (not e!503407))))

(declare-fun b!899555 () Bool)

(declare-fun e!503410 () SeekEntryResult!8920)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!899555 (= e!503410 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!785 (mask!26183 thiss!1181)) #b00000000000000000000000000000000 (mask!26183 thiss!1181)) key!785 (_keys!10217 thiss!1181) (mask!26183 thiss!1181)))))

(declare-fun b!899556 () Bool)

(assert (=> b!899556 (= e!503406 (Intermediate!8920 true (toIndex!0 key!785 (mask!26183 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun b!899557 () Bool)

(assert (=> b!899557 (= e!503406 e!503410)))

(declare-fun c!95111 () Bool)

(assert (=> b!899557 (= c!95111 (or (= lt!406340 key!785) (= (bvadd lt!406340 lt!406340) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!899558 () Bool)

(assert (=> b!899558 (= e!503408 (bvsge (x!76630 lt!406339) #b01111111111111111111111111111110))))

(declare-fun b!899559 () Bool)

(assert (=> b!899559 (= e!503410 (Intermediate!8920 false (toIndex!0 key!785 (mask!26183 thiss!1181)) #b00000000000000000000000000000000))))

(assert (= (and d!111445 c!95112) b!899556))

(assert (= (and d!111445 (not c!95112)) b!899557))

(assert (= (and b!899557 c!95111) b!899559))

(assert (= (and b!899557 (not c!95111)) b!899555))

(assert (= (and d!111445 c!95110) b!899558))

(assert (= (and d!111445 (not c!95110)) b!899554))

(assert (= (and b!899554 res!607754) b!899552))

(assert (= (and b!899552 (not res!607752)) b!899551))

(assert (= (and b!899551 (not res!607753)) b!899553))

(assert (=> d!111445 m!835967))

(declare-fun m!836097 () Bool)

(assert (=> d!111445 m!836097))

(assert (=> d!111445 m!835909))

(assert (=> b!899555 m!835967))

(declare-fun m!836099 () Bool)

(assert (=> b!899555 m!836099))

(assert (=> b!899555 m!836099))

(declare-fun m!836101 () Bool)

(assert (=> b!899555 m!836101))

(declare-fun m!836103 () Bool)

(assert (=> b!899551 m!836103))

(assert (=> b!899553 m!836103))

(assert (=> b!899552 m!836103))

(assert (=> d!111411 d!111445))

(declare-fun d!111447 () Bool)

(declare-fun lt!406346 () (_ BitVec 32))

(declare-fun lt!406345 () (_ BitVec 32))

(assert (=> d!111447 (= lt!406346 (bvmul (bvxor lt!406345 (bvlshr lt!406345 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!111447 (= lt!406345 ((_ extract 31 0) (bvand (bvxor key!785 (bvlshr key!785 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!111447 (and (bvsge (mask!26183 thiss!1181) #b00000000000000000000000000000000) (let ((res!607755 (let ((h!19067 ((_ extract 31 0) (bvand (bvxor key!785 (bvlshr key!785 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!76647 (bvmul (bvxor h!19067 (bvlshr h!19067 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!76647 (bvlshr x!76647 #b00000000000000000000000000001101)) (mask!26183 thiss!1181)))))) (and (bvslt res!607755 (bvadd (mask!26183 thiss!1181) #b00000000000000000000000000000001)) (bvsge res!607755 #b00000000000000000000000000000000))))))

(assert (=> d!111447 (= (toIndex!0 key!785 (mask!26183 thiss!1181)) (bvand (bvxor lt!406346 (bvlshr lt!406346 #b00000000000000000000000000001101)) (mask!26183 thiss!1181)))))

(assert (=> d!111411 d!111447))

(assert (=> d!111411 d!111419))

(assert (=> d!111425 d!111421))

(declare-fun d!111449 () Bool)

(assert (=> d!111449 (arrayContainsKey!0 (_keys!10217 thiss!1181) key!785 #b00000000000000000000000000000000)))

(assert (=> d!111449 true))

(declare-fun _$60!424 () Unit!30533)

(assert (=> d!111449 (= (choose!13 (_keys!10217 thiss!1181) key!785 (index!38051 lt!406192)) _$60!424)))

(declare-fun bs!25246 () Bool)

(assert (= bs!25246 d!111449))

(assert (=> bs!25246 m!835907))

(assert (=> d!111425 d!111449))

(declare-fun d!111451 () Bool)

(declare-fun e!503411 () Bool)

(assert (=> d!111451 e!503411))

(declare-fun res!607756 () Bool)

(assert (=> d!111451 (=> res!607756 e!503411)))

(declare-fun lt!406349 () Bool)

(assert (=> d!111451 (= res!607756 (not lt!406349))))

(declare-fun lt!406347 () Bool)

(assert (=> d!111451 (= lt!406349 lt!406347)))

(declare-fun lt!406348 () Unit!30533)

(declare-fun e!503412 () Unit!30533)

(assert (=> d!111451 (= lt!406348 e!503412)))

(declare-fun c!95113 () Bool)

(assert (=> d!111451 (= c!95113 lt!406347)))

(assert (=> d!111451 (= lt!406347 (containsKey!429 (toList!5404 lt!406285) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!111451 (= (contains!4407 lt!406285 #b0000000000000000000000000000000000000000000000000000000000000000) lt!406349)))

(declare-fun b!899560 () Bool)

(declare-fun lt!406350 () Unit!30533)

(assert (=> b!899560 (= e!503412 lt!406350)))

(assert (=> b!899560 (= lt!406350 (lemmaContainsKeyImpliesGetValueByKeyDefined!324 (toList!5404 lt!406285) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!899560 (isDefined!334 (getValueByKey!459 (toList!5404 lt!406285) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!899561 () Bool)

(declare-fun Unit!30539 () Unit!30533)

(assert (=> b!899561 (= e!503412 Unit!30539)))

(declare-fun b!899562 () Bool)

(assert (=> b!899562 (= e!503411 (isDefined!334 (getValueByKey!459 (toList!5404 lt!406285) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!111451 c!95113) b!899560))

(assert (= (and d!111451 (not c!95113)) b!899561))

(assert (= (and d!111451 (not res!607756)) b!899562))

(declare-fun m!836105 () Bool)

(assert (=> d!111451 m!836105))

(declare-fun m!836107 () Bool)

(assert (=> b!899560 m!836107))

(declare-fun m!836109 () Bool)

(assert (=> b!899560 m!836109))

(assert (=> b!899560 m!836109))

(declare-fun m!836111 () Bool)

(assert (=> b!899560 m!836111))

(assert (=> b!899562 m!836109))

(assert (=> b!899562 m!836109))

(assert (=> b!899562 m!836111))

(assert (=> bm!39957 d!111451))

(declare-fun d!111453 () Bool)

(assert (=> d!111453 (= (validKeyInArray!0 (select (arr!25348 (_keys!10217 thiss!1181)) #b00000000000000000000000000000000)) (and (not (= (select (arr!25348 (_keys!10217 thiss!1181)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!25348 (_keys!10217 thiss!1181)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!899460 d!111453))

(declare-fun d!111455 () Bool)

(assert (=> d!111455 (= (apply!413 (+!2549 lt!406289 (tuple2!12067 lt!406300 (minValue!5257 thiss!1181))) lt!406297) (apply!413 lt!406289 lt!406297))))

(declare-fun lt!406353 () Unit!30533)

(declare-fun choose!1512 (ListLongMap!10777 (_ BitVec 64) V!29449 (_ BitVec 64)) Unit!30533)

(assert (=> d!111455 (= lt!406353 (choose!1512 lt!406289 lt!406300 (minValue!5257 thiss!1181) lt!406297))))

(declare-fun e!503415 () Bool)

(assert (=> d!111455 e!503415))

(declare-fun res!607759 () Bool)

(assert (=> d!111455 (=> (not res!607759) (not e!503415))))

(assert (=> d!111455 (= res!607759 (contains!4407 lt!406289 lt!406297))))

(assert (=> d!111455 (= (addApplyDifferent!335 lt!406289 lt!406300 (minValue!5257 thiss!1181) lt!406297) lt!406353)))

(declare-fun b!899566 () Bool)

(assert (=> b!899566 (= e!503415 (not (= lt!406297 lt!406300)))))

(assert (= (and d!111455 res!607759) b!899566))

(declare-fun m!836113 () Bool)

(assert (=> d!111455 m!836113))

(declare-fun m!836115 () Bool)

(assert (=> d!111455 m!836115))

(assert (=> d!111455 m!836009))

(assert (=> d!111455 m!836011))

(assert (=> d!111455 m!836013))

(assert (=> d!111455 m!836009))

(assert (=> b!899443 d!111455))

(declare-fun d!111457 () Bool)

(declare-fun e!503416 () Bool)

(assert (=> d!111457 e!503416))

(declare-fun res!607761 () Bool)

(assert (=> d!111457 (=> (not res!607761) (not e!503416))))

(declare-fun lt!406354 () ListLongMap!10777)

(assert (=> d!111457 (= res!607761 (contains!4407 lt!406354 (_1!6043 (tuple2!12067 lt!406298 (zeroValue!5257 thiss!1181)))))))

(declare-fun lt!406357 () List!17925)

(assert (=> d!111457 (= lt!406354 (ListLongMap!10778 lt!406357))))

(declare-fun lt!406355 () Unit!30533)

(declare-fun lt!406356 () Unit!30533)

(assert (=> d!111457 (= lt!406355 lt!406356)))

(assert (=> d!111457 (= (getValueByKey!459 lt!406357 (_1!6043 (tuple2!12067 lt!406298 (zeroValue!5257 thiss!1181)))) (Some!464 (_2!6043 (tuple2!12067 lt!406298 (zeroValue!5257 thiss!1181)))))))

(assert (=> d!111457 (= lt!406356 (lemmaContainsTupThenGetReturnValue!251 lt!406357 (_1!6043 (tuple2!12067 lt!406298 (zeroValue!5257 thiss!1181))) (_2!6043 (tuple2!12067 lt!406298 (zeroValue!5257 thiss!1181)))))))

(assert (=> d!111457 (= lt!406357 (insertStrictlySorted!307 (toList!5404 lt!406295) (_1!6043 (tuple2!12067 lt!406298 (zeroValue!5257 thiss!1181))) (_2!6043 (tuple2!12067 lt!406298 (zeroValue!5257 thiss!1181)))))))

(assert (=> d!111457 (= (+!2549 lt!406295 (tuple2!12067 lt!406298 (zeroValue!5257 thiss!1181))) lt!406354)))

(declare-fun b!899567 () Bool)

(declare-fun res!607760 () Bool)

(assert (=> b!899567 (=> (not res!607760) (not e!503416))))

(assert (=> b!899567 (= res!607760 (= (getValueByKey!459 (toList!5404 lt!406354) (_1!6043 (tuple2!12067 lt!406298 (zeroValue!5257 thiss!1181)))) (Some!464 (_2!6043 (tuple2!12067 lt!406298 (zeroValue!5257 thiss!1181))))))))

(declare-fun b!899568 () Bool)

(assert (=> b!899568 (= e!503416 (contains!4409 (toList!5404 lt!406354) (tuple2!12067 lt!406298 (zeroValue!5257 thiss!1181))))))

(assert (= (and d!111457 res!607761) b!899567))

(assert (= (and b!899567 res!607760) b!899568))

(declare-fun m!836117 () Bool)

(assert (=> d!111457 m!836117))

(declare-fun m!836119 () Bool)

(assert (=> d!111457 m!836119))

(declare-fun m!836121 () Bool)

(assert (=> d!111457 m!836121))

(declare-fun m!836123 () Bool)

(assert (=> d!111457 m!836123))

(declare-fun m!836125 () Bool)

(assert (=> b!899567 m!836125))

(declare-fun m!836127 () Bool)

(assert (=> b!899568 m!836127))

(assert (=> b!899443 d!111457))

(declare-fun d!111459 () Bool)

(assert (=> d!111459 (= (apply!413 lt!406286 lt!406283) (get!13343 (getValueByKey!459 (toList!5404 lt!406286) lt!406283)))))

(declare-fun bs!25247 () Bool)

(assert (= bs!25247 d!111459))

(declare-fun m!836129 () Bool)

(assert (=> bs!25247 m!836129))

(assert (=> bs!25247 m!836129))

(declare-fun m!836131 () Bool)

(assert (=> bs!25247 m!836131))

(assert (=> b!899443 d!111459))

(declare-fun d!111461 () Bool)

(assert (=> d!111461 (= (apply!413 lt!406301 lt!406287) (get!13343 (getValueByKey!459 (toList!5404 lt!406301) lt!406287)))))

(declare-fun bs!25248 () Bool)

(assert (= bs!25248 d!111461))

(declare-fun m!836133 () Bool)

(assert (=> bs!25248 m!836133))

(assert (=> bs!25248 m!836133))

(declare-fun m!836135 () Bool)

(assert (=> bs!25248 m!836135))

(assert (=> b!899443 d!111461))

(declare-fun d!111463 () Bool)

(assert (=> d!111463 (= (apply!413 (+!2549 lt!406286 (tuple2!12067 lt!406294 (minValue!5257 thiss!1181))) lt!406283) (apply!413 lt!406286 lt!406283))))

(declare-fun lt!406358 () Unit!30533)

(assert (=> d!111463 (= lt!406358 (choose!1512 lt!406286 lt!406294 (minValue!5257 thiss!1181) lt!406283))))

(declare-fun e!503417 () Bool)

(assert (=> d!111463 e!503417))

(declare-fun res!607762 () Bool)

(assert (=> d!111463 (=> (not res!607762) (not e!503417))))

(assert (=> d!111463 (= res!607762 (contains!4407 lt!406286 lt!406283))))

(assert (=> d!111463 (= (addApplyDifferent!335 lt!406286 lt!406294 (minValue!5257 thiss!1181) lt!406283) lt!406358)))

(declare-fun b!899569 () Bool)

(assert (=> b!899569 (= e!503417 (not (= lt!406283 lt!406294)))))

(assert (= (and d!111463 res!607762) b!899569))

(declare-fun m!836137 () Bool)

(assert (=> d!111463 m!836137))

(declare-fun m!836139 () Bool)

(assert (=> d!111463 m!836139))

(assert (=> d!111463 m!836005))

(assert (=> d!111463 m!836035))

(assert (=> d!111463 m!836031))

(assert (=> d!111463 m!836005))

(assert (=> b!899443 d!111463))

(declare-fun d!111465 () Bool)

(assert (=> d!111465 (= (apply!413 (+!2549 lt!406301 (tuple2!12067 lt!406296 (zeroValue!5257 thiss!1181))) lt!406287) (apply!413 lt!406301 lt!406287))))

(declare-fun lt!406359 () Unit!30533)

(assert (=> d!111465 (= lt!406359 (choose!1512 lt!406301 lt!406296 (zeroValue!5257 thiss!1181) lt!406287))))

(declare-fun e!503418 () Bool)

(assert (=> d!111465 e!503418))

(declare-fun res!607763 () Bool)

(assert (=> d!111465 (=> (not res!607763) (not e!503418))))

(assert (=> d!111465 (= res!607763 (contains!4407 lt!406301 lt!406287))))

(assert (=> d!111465 (= (addApplyDifferent!335 lt!406301 lt!406296 (zeroValue!5257 thiss!1181) lt!406287) lt!406359)))

(declare-fun b!899570 () Bool)

(assert (=> b!899570 (= e!503418 (not (= lt!406287 lt!406296)))))

(assert (= (and d!111465 res!607763) b!899570))

(declare-fun m!836141 () Bool)

(assert (=> d!111465 m!836141))

(declare-fun m!836143 () Bool)

(assert (=> d!111465 m!836143))

(assert (=> d!111465 m!836019))

(assert (=> d!111465 m!836021))

(assert (=> d!111465 m!836025))

(assert (=> d!111465 m!836019))

(assert (=> b!899443 d!111465))

(declare-fun d!111467 () Bool)

(assert (=> d!111467 (= (apply!413 (+!2549 lt!406289 (tuple2!12067 lt!406300 (minValue!5257 thiss!1181))) lt!406297) (get!13343 (getValueByKey!459 (toList!5404 (+!2549 lt!406289 (tuple2!12067 lt!406300 (minValue!5257 thiss!1181)))) lt!406297)))))

(declare-fun bs!25249 () Bool)

(assert (= bs!25249 d!111467))

(declare-fun m!836145 () Bool)

(assert (=> bs!25249 m!836145))

(assert (=> bs!25249 m!836145))

(declare-fun m!836147 () Bool)

(assert (=> bs!25249 m!836147))

(assert (=> b!899443 d!111467))

(declare-fun d!111469 () Bool)

(assert (=> d!111469 (= (apply!413 (+!2549 lt!406286 (tuple2!12067 lt!406294 (minValue!5257 thiss!1181))) lt!406283) (get!13343 (getValueByKey!459 (toList!5404 (+!2549 lt!406286 (tuple2!12067 lt!406294 (minValue!5257 thiss!1181)))) lt!406283)))))

(declare-fun bs!25250 () Bool)

(assert (= bs!25250 d!111469))

(declare-fun m!836149 () Bool)

(assert (=> bs!25250 m!836149))

(assert (=> bs!25250 m!836149))

(declare-fun m!836151 () Bool)

(assert (=> bs!25250 m!836151))

(assert (=> b!899443 d!111469))

(declare-fun d!111471 () Bool)

(assert (=> d!111471 (= (apply!413 lt!406289 lt!406297) (get!13343 (getValueByKey!459 (toList!5404 lt!406289) lt!406297)))))

(declare-fun bs!25251 () Bool)

(assert (= bs!25251 d!111471))

(declare-fun m!836153 () Bool)

(assert (=> bs!25251 m!836153))

(assert (=> bs!25251 m!836153))

(declare-fun m!836155 () Bool)

(assert (=> bs!25251 m!836155))

(assert (=> b!899443 d!111471))

(declare-fun d!111473 () Bool)

(assert (=> d!111473 (contains!4407 (+!2549 lt!406295 (tuple2!12067 lt!406298 (zeroValue!5257 thiss!1181))) lt!406292)))

(declare-fun lt!406362 () Unit!30533)

(declare-fun choose!1513 (ListLongMap!10777 (_ BitVec 64) V!29449 (_ BitVec 64)) Unit!30533)

(assert (=> d!111473 (= lt!406362 (choose!1513 lt!406295 lt!406298 (zeroValue!5257 thiss!1181) lt!406292))))

(assert (=> d!111473 (contains!4407 lt!406295 lt!406292)))

(assert (=> d!111473 (= (addStillContains!335 lt!406295 lt!406298 (zeroValue!5257 thiss!1181) lt!406292) lt!406362)))

(declare-fun bs!25252 () Bool)

(assert (= bs!25252 d!111473))

(assert (=> bs!25252 m!836017))

(assert (=> bs!25252 m!836017))

(assert (=> bs!25252 m!836027))

(declare-fun m!836157 () Bool)

(assert (=> bs!25252 m!836157))

(declare-fun m!836159 () Bool)

(assert (=> bs!25252 m!836159))

(assert (=> b!899443 d!111473))

(declare-fun d!111475 () Bool)

(declare-fun e!503419 () Bool)

(assert (=> d!111475 e!503419))

(declare-fun res!607764 () Bool)

(assert (=> d!111475 (=> res!607764 e!503419)))

(declare-fun lt!406365 () Bool)

(assert (=> d!111475 (= res!607764 (not lt!406365))))

(declare-fun lt!406363 () Bool)

(assert (=> d!111475 (= lt!406365 lt!406363)))

(declare-fun lt!406364 () Unit!30533)

(declare-fun e!503420 () Unit!30533)

(assert (=> d!111475 (= lt!406364 e!503420)))

(declare-fun c!95114 () Bool)

(assert (=> d!111475 (= c!95114 lt!406363)))

(assert (=> d!111475 (= lt!406363 (containsKey!429 (toList!5404 (+!2549 lt!406295 (tuple2!12067 lt!406298 (zeroValue!5257 thiss!1181)))) lt!406292))))

(assert (=> d!111475 (= (contains!4407 (+!2549 lt!406295 (tuple2!12067 lt!406298 (zeroValue!5257 thiss!1181))) lt!406292) lt!406365)))

(declare-fun b!899572 () Bool)

(declare-fun lt!406366 () Unit!30533)

(assert (=> b!899572 (= e!503420 lt!406366)))

(assert (=> b!899572 (= lt!406366 (lemmaContainsKeyImpliesGetValueByKeyDefined!324 (toList!5404 (+!2549 lt!406295 (tuple2!12067 lt!406298 (zeroValue!5257 thiss!1181)))) lt!406292))))

(assert (=> b!899572 (isDefined!334 (getValueByKey!459 (toList!5404 (+!2549 lt!406295 (tuple2!12067 lt!406298 (zeroValue!5257 thiss!1181)))) lt!406292))))

(declare-fun b!899573 () Bool)

(declare-fun Unit!30540 () Unit!30533)

(assert (=> b!899573 (= e!503420 Unit!30540)))

(declare-fun b!899574 () Bool)

(assert (=> b!899574 (= e!503419 (isDefined!334 (getValueByKey!459 (toList!5404 (+!2549 lt!406295 (tuple2!12067 lt!406298 (zeroValue!5257 thiss!1181)))) lt!406292)))))

(assert (= (and d!111475 c!95114) b!899572))

(assert (= (and d!111475 (not c!95114)) b!899573))

(assert (= (and d!111475 (not res!607764)) b!899574))

(declare-fun m!836161 () Bool)

(assert (=> d!111475 m!836161))

(declare-fun m!836163 () Bool)

(assert (=> b!899572 m!836163))

(declare-fun m!836165 () Bool)

(assert (=> b!899572 m!836165))

(assert (=> b!899572 m!836165))

(declare-fun m!836167 () Bool)

(assert (=> b!899572 m!836167))

(assert (=> b!899574 m!836165))

(assert (=> b!899574 m!836165))

(assert (=> b!899574 m!836167))

(assert (=> b!899443 d!111475))

(declare-fun d!111477 () Bool)

(declare-fun e!503421 () Bool)

(assert (=> d!111477 e!503421))

(declare-fun res!607766 () Bool)

(assert (=> d!111477 (=> (not res!607766) (not e!503421))))

(declare-fun lt!406367 () ListLongMap!10777)

(assert (=> d!111477 (= res!607766 (contains!4407 lt!406367 (_1!6043 (tuple2!12067 lt!406296 (zeroValue!5257 thiss!1181)))))))

(declare-fun lt!406370 () List!17925)

(assert (=> d!111477 (= lt!406367 (ListLongMap!10778 lt!406370))))

(declare-fun lt!406368 () Unit!30533)

(declare-fun lt!406369 () Unit!30533)

(assert (=> d!111477 (= lt!406368 lt!406369)))

(assert (=> d!111477 (= (getValueByKey!459 lt!406370 (_1!6043 (tuple2!12067 lt!406296 (zeroValue!5257 thiss!1181)))) (Some!464 (_2!6043 (tuple2!12067 lt!406296 (zeroValue!5257 thiss!1181)))))))

(assert (=> d!111477 (= lt!406369 (lemmaContainsTupThenGetReturnValue!251 lt!406370 (_1!6043 (tuple2!12067 lt!406296 (zeroValue!5257 thiss!1181))) (_2!6043 (tuple2!12067 lt!406296 (zeroValue!5257 thiss!1181)))))))

(assert (=> d!111477 (= lt!406370 (insertStrictlySorted!307 (toList!5404 lt!406301) (_1!6043 (tuple2!12067 lt!406296 (zeroValue!5257 thiss!1181))) (_2!6043 (tuple2!12067 lt!406296 (zeroValue!5257 thiss!1181)))))))

(assert (=> d!111477 (= (+!2549 lt!406301 (tuple2!12067 lt!406296 (zeroValue!5257 thiss!1181))) lt!406367)))

(declare-fun b!899575 () Bool)

(declare-fun res!607765 () Bool)

(assert (=> b!899575 (=> (not res!607765) (not e!503421))))

(assert (=> b!899575 (= res!607765 (= (getValueByKey!459 (toList!5404 lt!406367) (_1!6043 (tuple2!12067 lt!406296 (zeroValue!5257 thiss!1181)))) (Some!464 (_2!6043 (tuple2!12067 lt!406296 (zeroValue!5257 thiss!1181))))))))

(declare-fun b!899576 () Bool)

(assert (=> b!899576 (= e!503421 (contains!4409 (toList!5404 lt!406367) (tuple2!12067 lt!406296 (zeroValue!5257 thiss!1181))))))

(assert (= (and d!111477 res!607766) b!899575))

(assert (= (and b!899575 res!607765) b!899576))

(declare-fun m!836169 () Bool)

(assert (=> d!111477 m!836169))

(declare-fun m!836171 () Bool)

(assert (=> d!111477 m!836171))

(declare-fun m!836173 () Bool)

(assert (=> d!111477 m!836173))

(declare-fun m!836175 () Bool)

(assert (=> d!111477 m!836175))

(declare-fun m!836177 () Bool)

(assert (=> b!899575 m!836177))

(declare-fun m!836179 () Bool)

(assert (=> b!899576 m!836179))

(assert (=> b!899443 d!111477))

(declare-fun d!111479 () Bool)

(declare-fun e!503422 () Bool)

(assert (=> d!111479 e!503422))

(declare-fun res!607768 () Bool)

(assert (=> d!111479 (=> (not res!607768) (not e!503422))))

(declare-fun lt!406371 () ListLongMap!10777)

(assert (=> d!111479 (= res!607768 (contains!4407 lt!406371 (_1!6043 (tuple2!12067 lt!406300 (minValue!5257 thiss!1181)))))))

(declare-fun lt!406374 () List!17925)

(assert (=> d!111479 (= lt!406371 (ListLongMap!10778 lt!406374))))

(declare-fun lt!406372 () Unit!30533)

(declare-fun lt!406373 () Unit!30533)

(assert (=> d!111479 (= lt!406372 lt!406373)))

(assert (=> d!111479 (= (getValueByKey!459 lt!406374 (_1!6043 (tuple2!12067 lt!406300 (minValue!5257 thiss!1181)))) (Some!464 (_2!6043 (tuple2!12067 lt!406300 (minValue!5257 thiss!1181)))))))

(assert (=> d!111479 (= lt!406373 (lemmaContainsTupThenGetReturnValue!251 lt!406374 (_1!6043 (tuple2!12067 lt!406300 (minValue!5257 thiss!1181))) (_2!6043 (tuple2!12067 lt!406300 (minValue!5257 thiss!1181)))))))

(assert (=> d!111479 (= lt!406374 (insertStrictlySorted!307 (toList!5404 lt!406289) (_1!6043 (tuple2!12067 lt!406300 (minValue!5257 thiss!1181))) (_2!6043 (tuple2!12067 lt!406300 (minValue!5257 thiss!1181)))))))

(assert (=> d!111479 (= (+!2549 lt!406289 (tuple2!12067 lt!406300 (minValue!5257 thiss!1181))) lt!406371)))

(declare-fun b!899577 () Bool)

(declare-fun res!607767 () Bool)

(assert (=> b!899577 (=> (not res!607767) (not e!503422))))

(assert (=> b!899577 (= res!607767 (= (getValueByKey!459 (toList!5404 lt!406371) (_1!6043 (tuple2!12067 lt!406300 (minValue!5257 thiss!1181)))) (Some!464 (_2!6043 (tuple2!12067 lt!406300 (minValue!5257 thiss!1181))))))))

(declare-fun b!899578 () Bool)

(assert (=> b!899578 (= e!503422 (contains!4409 (toList!5404 lt!406371) (tuple2!12067 lt!406300 (minValue!5257 thiss!1181))))))

(assert (= (and d!111479 res!607768) b!899577))

(assert (= (and b!899577 res!607767) b!899578))

(declare-fun m!836181 () Bool)

(assert (=> d!111479 m!836181))

(declare-fun m!836183 () Bool)

(assert (=> d!111479 m!836183))

(declare-fun m!836185 () Bool)

(assert (=> d!111479 m!836185))

(declare-fun m!836187 () Bool)

(assert (=> d!111479 m!836187))

(declare-fun m!836189 () Bool)

(assert (=> b!899577 m!836189))

(declare-fun m!836191 () Bool)

(assert (=> b!899578 m!836191))

(assert (=> b!899443 d!111479))

(declare-fun d!111481 () Bool)

(assert (=> d!111481 (= (apply!413 (+!2549 lt!406301 (tuple2!12067 lt!406296 (zeroValue!5257 thiss!1181))) lt!406287) (get!13343 (getValueByKey!459 (toList!5404 (+!2549 lt!406301 (tuple2!12067 lt!406296 (zeroValue!5257 thiss!1181)))) lt!406287)))))

(declare-fun bs!25253 () Bool)

(assert (= bs!25253 d!111481))

(declare-fun m!836193 () Bool)

(assert (=> bs!25253 m!836193))

(assert (=> bs!25253 m!836193))

(declare-fun m!836195 () Bool)

(assert (=> bs!25253 m!836195))

(assert (=> b!899443 d!111481))

(declare-fun b!899603 () Bool)

(declare-fun e!503438 () Bool)

(declare-fun e!503437 () Bool)

(assert (=> b!899603 (= e!503438 e!503437)))

(declare-fun c!95123 () Bool)

(declare-fun e!503439 () Bool)

(assert (=> b!899603 (= c!95123 e!503439)))

(declare-fun res!607778 () Bool)

(assert (=> b!899603 (=> (not res!607778) (not e!503439))))

(assert (=> b!899603 (= res!607778 (bvslt #b00000000000000000000000000000000 (size!25806 (_keys!10217 thiss!1181))))))

(declare-fun b!899604 () Bool)

(declare-fun e!503440 () ListLongMap!10777)

(declare-fun e!503441 () ListLongMap!10777)

(assert (=> b!899604 (= e!503440 e!503441)))

(declare-fun c!95126 () Bool)

(assert (=> b!899604 (= c!95126 (validKeyInArray!0 (select (arr!25348 (_keys!10217 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!899605 () Bool)

(declare-fun e!503443 () Bool)

(assert (=> b!899605 (= e!503437 e!503443)))

(assert (=> b!899605 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25806 (_keys!10217 thiss!1181))))))

(declare-fun res!607779 () Bool)

(declare-fun lt!406393 () ListLongMap!10777)

(assert (=> b!899605 (= res!607779 (contains!4407 lt!406393 (select (arr!25348 (_keys!10217 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> b!899605 (=> (not res!607779) (not e!503443))))

(declare-fun b!899606 () Bool)

(declare-fun e!503442 () Bool)

(assert (=> b!899606 (= e!503442 (= lt!406393 (getCurrentListMapNoExtraKeys!3297 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!5432 thiss!1181))))))

(declare-fun b!899607 () Bool)

(assert (=> b!899607 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25806 (_keys!10217 thiss!1181))))))

(assert (=> b!899607 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25807 (_values!5444 thiss!1181))))))

(assert (=> b!899607 (= e!503443 (= (apply!413 lt!406393 (select (arr!25348 (_keys!10217 thiss!1181)) #b00000000000000000000000000000000)) (get!13342 (select (arr!25349 (_values!5444 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1308 (defaultEntry!5432 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!899608 () Bool)

(assert (=> b!899608 (= e!503440 (ListLongMap!10778 Nil!17922))))

(declare-fun b!899609 () Bool)

(declare-fun call!39976 () ListLongMap!10777)

(assert (=> b!899609 (= e!503441 call!39976)))

(declare-fun d!111483 () Bool)

(assert (=> d!111483 e!503438))

(declare-fun res!607780 () Bool)

(assert (=> d!111483 (=> (not res!607780) (not e!503438))))

(assert (=> d!111483 (= res!607780 (not (contains!4407 lt!406393 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!111483 (= lt!406393 e!503440)))

(declare-fun c!95124 () Bool)

(assert (=> d!111483 (= c!95124 (bvsge #b00000000000000000000000000000000 (size!25806 (_keys!10217 thiss!1181))))))

(assert (=> d!111483 (validMask!0 (mask!26183 thiss!1181))))

(assert (=> d!111483 (= (getCurrentListMapNoExtraKeys!3297 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5432 thiss!1181)) lt!406393)))

(declare-fun b!899610 () Bool)

(declare-fun isEmpty!693 (ListLongMap!10777) Bool)

(assert (=> b!899610 (= e!503442 (isEmpty!693 lt!406393))))

(declare-fun b!899611 () Bool)

(assert (=> b!899611 (= e!503439 (validKeyInArray!0 (select (arr!25348 (_keys!10217 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> b!899611 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!899612 () Bool)

(declare-fun lt!406389 () Unit!30533)

(declare-fun lt!406395 () Unit!30533)

(assert (=> b!899612 (= lt!406389 lt!406395)))

(declare-fun lt!406392 () (_ BitVec 64))

(declare-fun lt!406390 () ListLongMap!10777)

(declare-fun lt!406394 () V!29449)

(declare-fun lt!406391 () (_ BitVec 64))

(assert (=> b!899612 (not (contains!4407 (+!2549 lt!406390 (tuple2!12067 lt!406391 lt!406394)) lt!406392))))

(declare-fun addStillNotContains!218 (ListLongMap!10777 (_ BitVec 64) V!29449 (_ BitVec 64)) Unit!30533)

(assert (=> b!899612 (= lt!406395 (addStillNotContains!218 lt!406390 lt!406391 lt!406394 lt!406392))))

(assert (=> b!899612 (= lt!406392 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!899612 (= lt!406394 (get!13342 (select (arr!25349 (_values!5444 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1308 (defaultEntry!5432 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!899612 (= lt!406391 (select (arr!25348 (_keys!10217 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!899612 (= lt!406390 call!39976)))

(assert (=> b!899612 (= e!503441 (+!2549 call!39976 (tuple2!12067 (select (arr!25348 (_keys!10217 thiss!1181)) #b00000000000000000000000000000000) (get!13342 (select (arr!25349 (_values!5444 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1308 (defaultEntry!5432 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!39973 () Bool)

(assert (=> bm!39973 (= call!39976 (getCurrentListMapNoExtraKeys!3297 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!5432 thiss!1181)))))

(declare-fun b!899613 () Bool)

(declare-fun res!607777 () Bool)

(assert (=> b!899613 (=> (not res!607777) (not e!503438))))

(assert (=> b!899613 (= res!607777 (not (contains!4407 lt!406393 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!899614 () Bool)

(assert (=> b!899614 (= e!503437 e!503442)))

(declare-fun c!95125 () Bool)

(assert (=> b!899614 (= c!95125 (bvslt #b00000000000000000000000000000000 (size!25806 (_keys!10217 thiss!1181))))))

(assert (= (and d!111483 c!95124) b!899608))

(assert (= (and d!111483 (not c!95124)) b!899604))

(assert (= (and b!899604 c!95126) b!899612))

(assert (= (and b!899604 (not c!95126)) b!899609))

(assert (= (or b!899612 b!899609) bm!39973))

(assert (= (and d!111483 res!607780) b!899613))

(assert (= (and b!899613 res!607777) b!899603))

(assert (= (and b!899603 res!607778) b!899611))

(assert (= (and b!899603 c!95123) b!899605))

(assert (= (and b!899603 (not c!95123)) b!899614))

(assert (= (and b!899605 res!607779) b!899607))

(assert (= (and b!899614 c!95125) b!899606))

(assert (= (and b!899614 (not c!95125)) b!899610))

(declare-fun b_lambda!13025 () Bool)

(assert (=> (not b_lambda!13025) (not b!899607)))

(assert (=> b!899607 t!25282))

(declare-fun b_and!26367 () Bool)

(assert (= b_and!26365 (and (=> t!25282 result!10177) b_and!26367)))

(declare-fun b_lambda!13027 () Bool)

(assert (=> (not b_lambda!13027) (not b!899612)))

(assert (=> b!899612 t!25282))

(declare-fun b_and!26369 () Bool)

(assert (= b_and!26367 (and (=> t!25282 result!10177) b_and!26369)))

(declare-fun m!836197 () Bool)

(assert (=> b!899612 m!836197))

(declare-fun m!836199 () Bool)

(assert (=> b!899612 m!836199))

(declare-fun m!836201 () Bool)

(assert (=> b!899612 m!836201))

(declare-fun m!836203 () Bool)

(assert (=> b!899612 m!836203))

(assert (=> b!899612 m!836041))

(assert (=> b!899612 m!836043))

(assert (=> b!899612 m!836045))

(assert (=> b!899612 m!835979))

(assert (=> b!899612 m!836041))

(assert (=> b!899612 m!836199))

(assert (=> b!899612 m!836043))

(assert (=> b!899611 m!835979))

(assert (=> b!899611 m!835979))

(assert (=> b!899611 m!836039))

(assert (=> b!899607 m!836043))

(assert (=> b!899607 m!835979))

(declare-fun m!836205 () Bool)

(assert (=> b!899607 m!836205))

(assert (=> b!899607 m!836041))

(assert (=> b!899607 m!836043))

(assert (=> b!899607 m!836045))

(assert (=> b!899607 m!835979))

(assert (=> b!899607 m!836041))

(assert (=> b!899604 m!835979))

(assert (=> b!899604 m!835979))

(assert (=> b!899604 m!836039))

(assert (=> b!899605 m!835979))

(assert (=> b!899605 m!835979))

(declare-fun m!836207 () Bool)

(assert (=> b!899605 m!836207))

(declare-fun m!836209 () Bool)

(assert (=> bm!39973 m!836209))

(declare-fun m!836211 () Bool)

(assert (=> b!899613 m!836211))

(assert (=> b!899606 m!836209))

(declare-fun m!836213 () Bool)

(assert (=> d!111483 m!836213))

(assert (=> d!111483 m!835909))

(declare-fun m!836215 () Bool)

(assert (=> b!899610 m!836215))

(assert (=> b!899443 d!111483))

(declare-fun d!111485 () Bool)

(declare-fun e!503444 () Bool)

(assert (=> d!111485 e!503444))

(declare-fun res!607782 () Bool)

(assert (=> d!111485 (=> (not res!607782) (not e!503444))))

(declare-fun lt!406396 () ListLongMap!10777)

(assert (=> d!111485 (= res!607782 (contains!4407 lt!406396 (_1!6043 (tuple2!12067 lt!406294 (minValue!5257 thiss!1181)))))))

(declare-fun lt!406399 () List!17925)

(assert (=> d!111485 (= lt!406396 (ListLongMap!10778 lt!406399))))

(declare-fun lt!406397 () Unit!30533)

(declare-fun lt!406398 () Unit!30533)

(assert (=> d!111485 (= lt!406397 lt!406398)))

(assert (=> d!111485 (= (getValueByKey!459 lt!406399 (_1!6043 (tuple2!12067 lt!406294 (minValue!5257 thiss!1181)))) (Some!464 (_2!6043 (tuple2!12067 lt!406294 (minValue!5257 thiss!1181)))))))

(assert (=> d!111485 (= lt!406398 (lemmaContainsTupThenGetReturnValue!251 lt!406399 (_1!6043 (tuple2!12067 lt!406294 (minValue!5257 thiss!1181))) (_2!6043 (tuple2!12067 lt!406294 (minValue!5257 thiss!1181)))))))

(assert (=> d!111485 (= lt!406399 (insertStrictlySorted!307 (toList!5404 lt!406286) (_1!6043 (tuple2!12067 lt!406294 (minValue!5257 thiss!1181))) (_2!6043 (tuple2!12067 lt!406294 (minValue!5257 thiss!1181)))))))

(assert (=> d!111485 (= (+!2549 lt!406286 (tuple2!12067 lt!406294 (minValue!5257 thiss!1181))) lt!406396)))

(declare-fun b!899615 () Bool)

(declare-fun res!607781 () Bool)

(assert (=> b!899615 (=> (not res!607781) (not e!503444))))

(assert (=> b!899615 (= res!607781 (= (getValueByKey!459 (toList!5404 lt!406396) (_1!6043 (tuple2!12067 lt!406294 (minValue!5257 thiss!1181)))) (Some!464 (_2!6043 (tuple2!12067 lt!406294 (minValue!5257 thiss!1181))))))))

(declare-fun b!899616 () Bool)

(assert (=> b!899616 (= e!503444 (contains!4409 (toList!5404 lt!406396) (tuple2!12067 lt!406294 (minValue!5257 thiss!1181))))))

(assert (= (and d!111485 res!607782) b!899615))

(assert (= (and b!899615 res!607781) b!899616))

(declare-fun m!836217 () Bool)

(assert (=> d!111485 m!836217))

(declare-fun m!836219 () Bool)

(assert (=> d!111485 m!836219))

(declare-fun m!836221 () Bool)

(assert (=> d!111485 m!836221))

(declare-fun m!836223 () Bool)

(assert (=> d!111485 m!836223))

(declare-fun m!836225 () Bool)

(assert (=> b!899615 m!836225))

(declare-fun m!836227 () Bool)

(assert (=> b!899616 m!836227))

(assert (=> b!899443 d!111485))

(assert (=> bm!39960 d!111483))

(declare-fun d!111487 () Bool)

(declare-fun res!607787 () Bool)

(declare-fun e!503449 () Bool)

(assert (=> d!111487 (=> res!607787 e!503449)))

(assert (=> d!111487 (= res!607787 (and ((_ is Cons!17921) (toList!5404 (getCurrentListMap!2647 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5432 thiss!1181)))) (= (_1!6043 (h!19065 (toList!5404 (getCurrentListMap!2647 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5432 thiss!1181))))) (select (arr!25348 (_keys!10217 thiss!1181)) (index!38051 lt!406192)))))))

(assert (=> d!111487 (= (containsKey!429 (toList!5404 (getCurrentListMap!2647 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5432 thiss!1181))) (select (arr!25348 (_keys!10217 thiss!1181)) (index!38051 lt!406192))) e!503449)))

(declare-fun b!899621 () Bool)

(declare-fun e!503450 () Bool)

(assert (=> b!899621 (= e!503449 e!503450)))

(declare-fun res!607788 () Bool)

(assert (=> b!899621 (=> (not res!607788) (not e!503450))))

(assert (=> b!899621 (= res!607788 (and (or (not ((_ is Cons!17921) (toList!5404 (getCurrentListMap!2647 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5432 thiss!1181))))) (bvsle (_1!6043 (h!19065 (toList!5404 (getCurrentListMap!2647 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5432 thiss!1181))))) (select (arr!25348 (_keys!10217 thiss!1181)) (index!38051 lt!406192)))) ((_ is Cons!17921) (toList!5404 (getCurrentListMap!2647 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5432 thiss!1181)))) (bvslt (_1!6043 (h!19065 (toList!5404 (getCurrentListMap!2647 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5432 thiss!1181))))) (select (arr!25348 (_keys!10217 thiss!1181)) (index!38051 lt!406192)))))))

(declare-fun b!899622 () Bool)

(assert (=> b!899622 (= e!503450 (containsKey!429 (t!25280 (toList!5404 (getCurrentListMap!2647 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5432 thiss!1181)))) (select (arr!25348 (_keys!10217 thiss!1181)) (index!38051 lt!406192))))))

(assert (= (and d!111487 (not res!607787)) b!899621))

(assert (= (and b!899621 res!607788) b!899622))

(assert (=> b!899622 m!835913))

(declare-fun m!836229 () Bool)

(assert (=> b!899622 m!836229))

(assert (=> d!111423 d!111487))

(declare-fun d!111489 () Bool)

(assert (=> d!111489 (= (inRange!0 (index!38051 lt!406210) (mask!26183 thiss!1181)) (and (bvsge (index!38051 lt!406210) #b00000000000000000000000000000000) (bvslt (index!38051 lt!406210) (bvadd (mask!26183 thiss!1181) #b00000000000000000000000000000001))))))

(assert (=> b!899355 d!111489))

(declare-fun d!111491 () Bool)

(assert (=> d!111491 (= (apply!413 lt!406285 (select (arr!25348 (_keys!10217 thiss!1181)) #b00000000000000000000000000000000)) (get!13343 (getValueByKey!459 (toList!5404 lt!406285) (select (arr!25348 (_keys!10217 thiss!1181)) #b00000000000000000000000000000000))))))

(declare-fun bs!25254 () Bool)

(assert (= bs!25254 d!111491))

(assert (=> bs!25254 m!835979))

(declare-fun m!836231 () Bool)

(assert (=> bs!25254 m!836231))

(assert (=> bs!25254 m!836231))

(declare-fun m!836233 () Bool)

(assert (=> bs!25254 m!836233))

(assert (=> b!899456 d!111491))

(declare-fun d!111493 () Bool)

(declare-fun c!95129 () Bool)

(assert (=> d!111493 (= c!95129 ((_ is ValueCellFull!8700) (select (arr!25349 (_values!5444 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun e!503453 () V!29449)

(assert (=> d!111493 (= (get!13342 (select (arr!25349 (_values!5444 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1308 (defaultEntry!5432 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)) e!503453)))

(declare-fun b!899627 () Bool)

(declare-fun get!13344 (ValueCell!8700 V!29449) V!29449)

(assert (=> b!899627 (= e!503453 (get!13344 (select (arr!25349 (_values!5444 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1308 (defaultEntry!5432 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!899628 () Bool)

(declare-fun get!13345 (ValueCell!8700 V!29449) V!29449)

(assert (=> b!899628 (= e!503453 (get!13345 (select (arr!25349 (_values!5444 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1308 (defaultEntry!5432 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!111493 c!95129) b!899627))

(assert (= (and d!111493 (not c!95129)) b!899628))

(assert (=> b!899627 m!836041))

(assert (=> b!899627 m!836043))

(declare-fun m!836235 () Bool)

(assert (=> b!899627 m!836235))

(assert (=> b!899628 m!836041))

(assert (=> b!899628 m!836043))

(declare-fun m!836237 () Bool)

(assert (=> b!899628 m!836237))

(assert (=> b!899456 d!111493))

(declare-fun d!111495 () Bool)

(declare-fun e!503454 () Bool)

(assert (=> d!111495 e!503454))

(declare-fun res!607789 () Bool)

(assert (=> d!111495 (=> res!607789 e!503454)))

(declare-fun lt!406402 () Bool)

(assert (=> d!111495 (= res!607789 (not lt!406402))))

(declare-fun lt!406400 () Bool)

(assert (=> d!111495 (= lt!406402 lt!406400)))

(declare-fun lt!406401 () Unit!30533)

(declare-fun e!503455 () Unit!30533)

(assert (=> d!111495 (= lt!406401 e!503455)))

(declare-fun c!95130 () Bool)

(assert (=> d!111495 (= c!95130 lt!406400)))

(assert (=> d!111495 (= lt!406400 (containsKey!429 (toList!5404 lt!406285) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!111495 (= (contains!4407 lt!406285 #b1000000000000000000000000000000000000000000000000000000000000000) lt!406402)))

(declare-fun b!899629 () Bool)

(declare-fun lt!406403 () Unit!30533)

(assert (=> b!899629 (= e!503455 lt!406403)))

(assert (=> b!899629 (= lt!406403 (lemmaContainsKeyImpliesGetValueByKeyDefined!324 (toList!5404 lt!406285) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!899629 (isDefined!334 (getValueByKey!459 (toList!5404 lt!406285) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!899630 () Bool)

(declare-fun Unit!30541 () Unit!30533)

(assert (=> b!899630 (= e!503455 Unit!30541)))

(declare-fun b!899631 () Bool)

(assert (=> b!899631 (= e!503454 (isDefined!334 (getValueByKey!459 (toList!5404 lt!406285) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!111495 c!95130) b!899629))

(assert (= (and d!111495 (not c!95130)) b!899630))

(assert (= (and d!111495 (not res!607789)) b!899631))

(declare-fun m!836239 () Bool)

(assert (=> d!111495 m!836239))

(declare-fun m!836241 () Bool)

(assert (=> b!899629 m!836241))

(assert (=> b!899629 m!836073))

(assert (=> b!899629 m!836073))

(declare-fun m!836243 () Bool)

(assert (=> b!899629 m!836243))

(assert (=> b!899631 m!836073))

(assert (=> b!899631 m!836073))

(assert (=> b!899631 m!836243))

(assert (=> bm!39959 d!111495))

(assert (=> d!111409 d!111411))

(declare-fun d!111497 () Bool)

(declare-fun e!503458 () Bool)

(assert (=> d!111497 e!503458))

(declare-fun res!607792 () Bool)

(assert (=> d!111497 (=> res!607792 e!503458)))

(declare-fun lt!406406 () SeekEntryResult!8920)

(assert (=> d!111497 (= res!607792 (not ((_ is Found!8920) lt!406406)))))

(assert (=> d!111497 (= lt!406406 (seekEntry!0 key!785 (_keys!10217 thiss!1181) (mask!26183 thiss!1181)))))

(assert (=> d!111497 true))

(declare-fun _$36!372 () Unit!30533)

(assert (=> d!111497 (= (choose!1510 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) key!785) _$36!372)))

(declare-fun b!899634 () Bool)

(assert (=> b!899634 (= e!503458 (inRange!0 (index!38051 lt!406406) (mask!26183 thiss!1181)))))

(assert (= (and d!111497 (not res!607792)) b!899634))

(assert (=> d!111497 m!835919))

(declare-fun m!836245 () Bool)

(assert (=> b!899634 m!836245))

(assert (=> d!111409 d!111497))

(assert (=> d!111409 d!111419))

(declare-fun d!111499 () Bool)

(assert (=> d!111499 (= (apply!413 lt!406285 #b0000000000000000000000000000000000000000000000000000000000000000) (get!13343 (getValueByKey!459 (toList!5404 lt!406285) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!25255 () Bool)

(assert (= bs!25255 d!111499))

(assert (=> bs!25255 m!836109))

(assert (=> bs!25255 m!836109))

(declare-fun m!836247 () Bool)

(assert (=> bs!25255 m!836247))

(assert (=> b!899455 d!111499))

(assert (=> b!899465 d!111423))

(assert (=> b!899465 d!111427))

(declare-fun d!111501 () Bool)

(declare-fun isEmpty!694 (Option!465) Bool)

(assert (=> d!111501 (= (isDefined!334 (getValueByKey!459 (toList!5404 (getCurrentListMap!2647 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5432 thiss!1181))) (select (arr!25348 (_keys!10217 thiss!1181)) (index!38051 lt!406192)))) (not (isEmpty!694 (getValueByKey!459 (toList!5404 (getCurrentListMap!2647 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5432 thiss!1181))) (select (arr!25348 (_keys!10217 thiss!1181)) (index!38051 lt!406192))))))))

(declare-fun bs!25256 () Bool)

(assert (= bs!25256 d!111501))

(assert (=> bs!25256 m!835987))

(declare-fun m!836249 () Bool)

(assert (=> bs!25256 m!836249))

(assert (=> b!899397 d!111501))

(declare-fun b!899643 () Bool)

(declare-fun e!503463 () Option!465)

(assert (=> b!899643 (= e!503463 (Some!464 (_2!6043 (h!19065 (toList!5404 (getCurrentListMap!2647 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5432 thiss!1181)))))))))

(declare-fun b!899645 () Bool)

(declare-fun e!503464 () Option!465)

(assert (=> b!899645 (= e!503464 (getValueByKey!459 (t!25280 (toList!5404 (getCurrentListMap!2647 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5432 thiss!1181)))) (select (arr!25348 (_keys!10217 thiss!1181)) (index!38051 lt!406192))))))

(declare-fun d!111503 () Bool)

(declare-fun c!95135 () Bool)

(assert (=> d!111503 (= c!95135 (and ((_ is Cons!17921) (toList!5404 (getCurrentListMap!2647 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5432 thiss!1181)))) (= (_1!6043 (h!19065 (toList!5404 (getCurrentListMap!2647 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5432 thiss!1181))))) (select (arr!25348 (_keys!10217 thiss!1181)) (index!38051 lt!406192)))))))

(assert (=> d!111503 (= (getValueByKey!459 (toList!5404 (getCurrentListMap!2647 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5432 thiss!1181))) (select (arr!25348 (_keys!10217 thiss!1181)) (index!38051 lt!406192))) e!503463)))

(declare-fun b!899644 () Bool)

(assert (=> b!899644 (= e!503463 e!503464)))

(declare-fun c!95136 () Bool)

(assert (=> b!899644 (= c!95136 (and ((_ is Cons!17921) (toList!5404 (getCurrentListMap!2647 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5432 thiss!1181)))) (not (= (_1!6043 (h!19065 (toList!5404 (getCurrentListMap!2647 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5432 thiss!1181))))) (select (arr!25348 (_keys!10217 thiss!1181)) (index!38051 lt!406192))))))))

(declare-fun b!899646 () Bool)

(assert (=> b!899646 (= e!503464 None!463)))

(assert (= (and d!111503 c!95135) b!899643))

(assert (= (and d!111503 (not c!95135)) b!899644))

(assert (= (and b!899644 c!95136) b!899645))

(assert (= (and b!899644 (not c!95136)) b!899646))

(assert (=> b!899645 m!835913))

(declare-fun m!836251 () Bool)

(assert (=> b!899645 m!836251))

(assert (=> b!899397 d!111503))

(assert (=> b!899452 d!111453))

(declare-fun d!111505 () Bool)

(declare-fun res!607793 () Bool)

(declare-fun e!503465 () Bool)

(assert (=> d!111505 (=> res!607793 e!503465)))

(assert (=> d!111505 (= res!607793 (= (select (arr!25348 (_keys!10217 thiss!1181)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!785))))

(assert (=> d!111505 (= (arrayContainsKey!0 (_keys!10217 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!503465)))

(declare-fun b!899647 () Bool)

(declare-fun e!503466 () Bool)

(assert (=> b!899647 (= e!503465 e!503466)))

(declare-fun res!607794 () Bool)

(assert (=> b!899647 (=> (not res!607794) (not e!503466))))

(assert (=> b!899647 (= res!607794 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!25806 (_keys!10217 thiss!1181))))))

(declare-fun b!899648 () Bool)

(assert (=> b!899648 (= e!503466 (arrayContainsKey!0 (_keys!10217 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!111505 (not res!607793)) b!899647))

(assert (= (and b!899647 res!607794) b!899648))

(declare-fun m!836253 () Bool)

(assert (=> d!111505 m!836253))

(declare-fun m!836255 () Bool)

(assert (=> b!899648 m!836255))

(assert (=> b!899388 d!111505))

(declare-fun d!111507 () Bool)

(assert (=> d!111507 (contains!4407 (getCurrentListMap!2647 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5432 thiss!1181)) (select (arr!25348 (_keys!10217 thiss!1181)) (index!38051 lt!406192)))))

(assert (=> d!111507 true))

(declare-fun _$16!184 () Unit!30533)

(assert (=> d!111507 (= (choose!1511 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) (index!38051 lt!406192) (defaultEntry!5432 thiss!1181)) _$16!184)))

(declare-fun bs!25257 () Bool)

(assert (= bs!25257 d!111507))

(assert (=> bs!25257 m!835911))

(assert (=> bs!25257 m!835913))

(assert (=> bs!25257 m!835911))

(assert (=> bs!25257 m!835913))

(assert (=> bs!25257 m!835915))

(assert (=> d!111429 d!111507))

(assert (=> d!111429 d!111419))

(assert (=> d!111427 d!111419))

(declare-fun d!111509 () Bool)

(declare-fun e!503467 () Bool)

(assert (=> d!111509 e!503467))

(declare-fun res!607795 () Bool)

(assert (=> d!111509 (=> res!607795 e!503467)))

(declare-fun lt!406409 () Bool)

(assert (=> d!111509 (= res!607795 (not lt!406409))))

(declare-fun lt!406407 () Bool)

(assert (=> d!111509 (= lt!406409 lt!406407)))

(declare-fun lt!406408 () Unit!30533)

(declare-fun e!503468 () Unit!30533)

(assert (=> d!111509 (= lt!406408 e!503468)))

(declare-fun c!95137 () Bool)

(assert (=> d!111509 (= c!95137 lt!406407)))

(assert (=> d!111509 (= lt!406407 (containsKey!429 (toList!5404 lt!406285) (select (arr!25348 (_keys!10217 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> d!111509 (= (contains!4407 lt!406285 (select (arr!25348 (_keys!10217 thiss!1181)) #b00000000000000000000000000000000)) lt!406409)))

(declare-fun b!899649 () Bool)

(declare-fun lt!406410 () Unit!30533)

(assert (=> b!899649 (= e!503468 lt!406410)))

(assert (=> b!899649 (= lt!406410 (lemmaContainsKeyImpliesGetValueByKeyDefined!324 (toList!5404 lt!406285) (select (arr!25348 (_keys!10217 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> b!899649 (isDefined!334 (getValueByKey!459 (toList!5404 lt!406285) (select (arr!25348 (_keys!10217 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!899650 () Bool)

(declare-fun Unit!30542 () Unit!30533)

(assert (=> b!899650 (= e!503468 Unit!30542)))

(declare-fun b!899651 () Bool)

(assert (=> b!899651 (= e!503467 (isDefined!334 (getValueByKey!459 (toList!5404 lt!406285) (select (arr!25348 (_keys!10217 thiss!1181)) #b00000000000000000000000000000000))))))

(assert (= (and d!111509 c!95137) b!899649))

(assert (= (and d!111509 (not c!95137)) b!899650))

(assert (= (and d!111509 (not res!607795)) b!899651))

(assert (=> d!111509 m!835979))

(declare-fun m!836257 () Bool)

(assert (=> d!111509 m!836257))

(assert (=> b!899649 m!835979))

(declare-fun m!836259 () Bool)

(assert (=> b!899649 m!836259))

(assert (=> b!899649 m!835979))

(assert (=> b!899649 m!836231))

(assert (=> b!899649 m!836231))

(declare-fun m!836261 () Bool)

(assert (=> b!899649 m!836261))

(assert (=> b!899651 m!835979))

(assert (=> b!899651 m!836231))

(assert (=> b!899651 m!836231))

(assert (=> b!899651 m!836261))

(assert (=> b!899453 d!111509))

(declare-fun d!111511 () Bool)

(assert (=> d!111511 (isDefined!334 (getValueByKey!459 (toList!5404 (getCurrentListMap!2647 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5432 thiss!1181))) (select (arr!25348 (_keys!10217 thiss!1181)) (index!38051 lt!406192))))))

(declare-fun lt!406413 () Unit!30533)

(declare-fun choose!1514 (List!17925 (_ BitVec 64)) Unit!30533)

(assert (=> d!111511 (= lt!406413 (choose!1514 (toList!5404 (getCurrentListMap!2647 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5432 thiss!1181))) (select (arr!25348 (_keys!10217 thiss!1181)) (index!38051 lt!406192))))))

(declare-fun e!503471 () Bool)

(assert (=> d!111511 e!503471))

(declare-fun res!607798 () Bool)

(assert (=> d!111511 (=> (not res!607798) (not e!503471))))

(declare-fun isStrictlySorted!495 (List!17925) Bool)

(assert (=> d!111511 (= res!607798 (isStrictlySorted!495 (toList!5404 (getCurrentListMap!2647 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5432 thiss!1181)))))))

(assert (=> d!111511 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!324 (toList!5404 (getCurrentListMap!2647 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5432 thiss!1181))) (select (arr!25348 (_keys!10217 thiss!1181)) (index!38051 lt!406192))) lt!406413)))

(declare-fun b!899654 () Bool)

(assert (=> b!899654 (= e!503471 (containsKey!429 (toList!5404 (getCurrentListMap!2647 (_keys!10217 thiss!1181) (_values!5444 thiss!1181) (mask!26183 thiss!1181) (extraKeys!5153 thiss!1181) (zeroValue!5257 thiss!1181) (minValue!5257 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5432 thiss!1181))) (select (arr!25348 (_keys!10217 thiss!1181)) (index!38051 lt!406192))))))

(assert (= (and d!111511 res!607798) b!899654))

(assert (=> d!111511 m!835913))

(assert (=> d!111511 m!835987))

(assert (=> d!111511 m!835987))

(assert (=> d!111511 m!835989))

(assert (=> d!111511 m!835913))

(declare-fun m!836263 () Bool)

(assert (=> d!111511 m!836263))

(declare-fun m!836265 () Bool)

(assert (=> d!111511 m!836265))

(assert (=> b!899654 m!835913))

(assert (=> b!899654 m!835983))

(assert (=> b!899395 d!111511))

(assert (=> b!899395 d!111501))

(assert (=> b!899395 d!111503))

(declare-fun b!899667 () Bool)

(declare-fun e!503480 () SeekEntryResult!8920)

(assert (=> b!899667 (= e!503480 Undefined!8920)))

(declare-fun e!503479 () SeekEntryResult!8920)

(declare-fun b!899668 () Bool)

(assert (=> b!899668 (= e!503479 (seekKeyOrZeroReturnVacant!0 (bvadd (x!76630 lt!406221) #b00000000000000000000000000000001) (nextIndex!0 (index!38052 lt!406221) (x!76630 lt!406221) (mask!26183 thiss!1181)) (index!38052 lt!406221) key!785 (_keys!10217 thiss!1181) (mask!26183 thiss!1181)))))

(declare-fun b!899669 () Bool)

(declare-fun c!95145 () Bool)

(declare-fun lt!406419 () (_ BitVec 64))

(assert (=> b!899669 (= c!95145 (= lt!406419 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!503478 () SeekEntryResult!8920)

(assert (=> b!899669 (= e!503478 e!503479)))

(declare-fun b!899670 () Bool)

(assert (=> b!899670 (= e!503478 (Found!8920 (index!38052 lt!406221)))))

(declare-fun d!111513 () Bool)

(declare-fun lt!406418 () SeekEntryResult!8920)

(assert (=> d!111513 (and (or ((_ is Undefined!8920) lt!406418) (not ((_ is Found!8920) lt!406418)) (and (bvsge (index!38051 lt!406418) #b00000000000000000000000000000000) (bvslt (index!38051 lt!406418) (size!25806 (_keys!10217 thiss!1181))))) (or ((_ is Undefined!8920) lt!406418) ((_ is Found!8920) lt!406418) (not ((_ is MissingVacant!8920) lt!406418)) (not (= (index!38053 lt!406418) (index!38052 lt!406221))) (and (bvsge (index!38053 lt!406418) #b00000000000000000000000000000000) (bvslt (index!38053 lt!406418) (size!25806 (_keys!10217 thiss!1181))))) (or ((_ is Undefined!8920) lt!406418) (ite ((_ is Found!8920) lt!406418) (= (select (arr!25348 (_keys!10217 thiss!1181)) (index!38051 lt!406418)) key!785) (and ((_ is MissingVacant!8920) lt!406418) (= (index!38053 lt!406418) (index!38052 lt!406221)) (= (select (arr!25348 (_keys!10217 thiss!1181)) (index!38053 lt!406418)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!111513 (= lt!406418 e!503480)))

(declare-fun c!95144 () Bool)

(assert (=> d!111513 (= c!95144 (bvsge (x!76630 lt!406221) #b01111111111111111111111111111110))))

(assert (=> d!111513 (= lt!406419 (select (arr!25348 (_keys!10217 thiss!1181)) (index!38052 lt!406221)))))

(assert (=> d!111513 (validMask!0 (mask!26183 thiss!1181))))

(assert (=> d!111513 (= (seekKeyOrZeroReturnVacant!0 (x!76630 lt!406221) (index!38052 lt!406221) (index!38052 lt!406221) key!785 (_keys!10217 thiss!1181) (mask!26183 thiss!1181)) lt!406418)))

(declare-fun b!899671 () Bool)

(assert (=> b!899671 (= e!503479 (MissingVacant!8920 (index!38052 lt!406221)))))

(declare-fun b!899672 () Bool)

(assert (=> b!899672 (= e!503480 e!503478)))

(declare-fun c!95146 () Bool)

(assert (=> b!899672 (= c!95146 (= lt!406419 key!785))))

(assert (= (and d!111513 c!95144) b!899667))

(assert (= (and d!111513 (not c!95144)) b!899672))

(assert (= (and b!899672 c!95146) b!899670))

(assert (= (and b!899672 (not c!95146)) b!899669))

(assert (= (and b!899669 c!95145) b!899671))

(assert (= (and b!899669 (not c!95145)) b!899668))

(declare-fun m!836267 () Bool)

(assert (=> b!899668 m!836267))

(assert (=> b!899668 m!836267))

(declare-fun m!836269 () Bool)

(assert (=> b!899668 m!836269))

(declare-fun m!836271 () Bool)

(assert (=> d!111513 m!836271))

(declare-fun m!836273 () Bool)

(assert (=> d!111513 m!836273))

(assert (=> d!111513 m!835961))

(assert (=> d!111513 m!835909))

(assert (=> b!899370 d!111513))

(declare-fun b!899674 () Bool)

(declare-fun e!503482 () Bool)

(assert (=> b!899674 (= e!503482 tp_is_empty!18363)))

(declare-fun mapIsEmpty!29217 () Bool)

(declare-fun mapRes!29217 () Bool)

(assert (=> mapIsEmpty!29217 mapRes!29217))

(declare-fun condMapEmpty!29217 () Bool)

(declare-fun mapDefault!29217 () ValueCell!8700)

(assert (=> mapNonEmpty!29216 (= condMapEmpty!29217 (= mapRest!29216 ((as const (Array (_ BitVec 32) ValueCell!8700)) mapDefault!29217)))))

(assert (=> mapNonEmpty!29216 (= tp!56195 (and e!503482 mapRes!29217))))

(declare-fun mapNonEmpty!29217 () Bool)

(declare-fun tp!56196 () Bool)

(declare-fun e!503481 () Bool)

(assert (=> mapNonEmpty!29217 (= mapRes!29217 (and tp!56196 e!503481))))

(declare-fun mapValue!29217 () ValueCell!8700)

(declare-fun mapKey!29217 () (_ BitVec 32))

(declare-fun mapRest!29217 () (Array (_ BitVec 32) ValueCell!8700))

(assert (=> mapNonEmpty!29217 (= mapRest!29216 (store mapRest!29217 mapKey!29217 mapValue!29217))))

(declare-fun b!899673 () Bool)

(assert (=> b!899673 (= e!503481 tp_is_empty!18363)))

(assert (= (and mapNonEmpty!29216 condMapEmpty!29217) mapIsEmpty!29217))

(assert (= (and mapNonEmpty!29216 (not condMapEmpty!29217)) mapNonEmpty!29217))

(assert (= (and mapNonEmpty!29217 ((_ is ValueCellFull!8700) mapValue!29217)) b!899673))

(assert (= (and mapNonEmpty!29216 ((_ is ValueCellFull!8700) mapDefault!29217)) b!899674))

(declare-fun m!836275 () Bool)

(assert (=> mapNonEmpty!29217 m!836275))

(declare-fun b_lambda!13029 () Bool)

(assert (= b_lambda!13025 (or (and b!899323 b_free!16035) b_lambda!13029)))

(declare-fun b_lambda!13031 () Bool)

(assert (= b_lambda!13027 (or (and b!899323 b_free!16035) b_lambda!13031)))

(check-sat (not b!899532) (not d!111469) (not b!899651) (not b!899572) (not b!899517) (not b!899531) (not d!111439) (not b!899506) (not b!899613) (not b!899610) (not b!899578) (not d!111467) (not d!111473) (not d!111451) (not d!111491) (not d!111497) (not b!899530) (not d!111501) (not b!899605) (not d!111509) (not b_lambda!13023) (not b_lambda!13031) (not bm!39967) (not b!899488) (not bm!39964) (not b!899649) (not b!899500) (not b!899615) (not d!111499) (not b!899668) (not b_next!16035) (not mapNonEmpty!29217) (not d!111463) b_and!26369 (not d!111455) (not b!899484) (not b!899627) (not bm!39973) (not d!111477) (not b!899485) (not d!111495) (not d!111479) (not b!899567) (not d!111513) (not b!899555) (not d!111483) (not b!899562) (not b!899622) (not d!111457) (not b_lambda!13029) (not b!899527) (not b!899616) (not b!899607) tp_is_empty!18363 (not b!899645) (not d!111481) (not b!899604) (not b!899505) (not b!899631) (not d!111449) (not b!899634) (not b!899628) (not d!111461) (not b!899574) (not b!899654) (not d!111443) (not b!899611) (not d!111445) (not d!111511) (not d!111459) (not d!111507) (not bm!39970) (not b!899568) (not d!111475) (not b!899576) (not d!111485) (not b!899516) (not d!111465) (not b!899575) (not d!111437) (not b!899606) (not d!111435) (not b!899648) (not b!899612) (not b!899629) (not b!899560) (not b!899577) (not d!111471))
(check-sat b_and!26369 (not b_next!16035))
