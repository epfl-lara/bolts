; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21330 () Bool)

(assert start!21330)

(declare-fun b!214448 () Bool)

(declare-fun b_free!5679 () Bool)

(declare-fun b_next!5679 () Bool)

(assert (=> b!214448 (= b_free!5679 (not b_next!5679))))

(declare-fun tp!20127 () Bool)

(declare-fun b_and!12587 () Bool)

(assert (=> b!214448 (= tp!20127 b_and!12587)))

(declare-fun b!214446 () Bool)

(declare-fun e!139488 () Bool)

(declare-fun tp_is_empty!5541 () Bool)

(assert (=> b!214446 (= e!139488 tp_is_empty!5541)))

(declare-fun b!214447 () Bool)

(declare-fun res!104996 () Bool)

(declare-fun e!139487 () Bool)

(assert (=> b!214447 (=> (not res!104996) (not e!139487))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!214447 (= res!104996 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!104998 () Bool)

(assert (=> start!21330 (=> (not res!104998) (not e!139487))))

(declare-datatypes ((V!7035 0))(
  ( (V!7036 (val!2815 Int)) )
))
(declare-datatypes ((ValueCell!2427 0))(
  ( (ValueCellFull!2427 (v!4829 V!7035)) (EmptyCell!2427) )
))
(declare-datatypes ((array!10294 0))(
  ( (array!10295 (arr!4881 (Array (_ BitVec 32) ValueCell!2427)) (size!5208 (_ BitVec 32))) )
))
(declare-datatypes ((array!10296 0))(
  ( (array!10297 (arr!4882 (Array (_ BitVec 32) (_ BitVec 64))) (size!5209 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2754 0))(
  ( (LongMapFixedSize!2755 (defaultEntry!4027 Int) (mask!9689 (_ BitVec 32)) (extraKeys!3764 (_ BitVec 32)) (zeroValue!3868 V!7035) (minValue!3868 V!7035) (_size!1426 (_ BitVec 32)) (_keys!6045 array!10296) (_values!4010 array!10294) (_vacant!1426 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2754)

(declare-fun valid!1119 (LongMapFixedSize!2754) Bool)

(assert (=> start!21330 (= res!104998 (valid!1119 thiss!1504))))

(assert (=> start!21330 e!139487))

(declare-fun e!139490 () Bool)

(assert (=> start!21330 e!139490))

(assert (=> start!21330 true))

(declare-fun e!139489 () Bool)

(declare-fun array_inv!3217 (array!10296) Bool)

(declare-fun array_inv!3218 (array!10294) Bool)

(assert (=> b!214448 (= e!139490 (and tp!20127 tp_is_empty!5541 (array_inv!3217 (_keys!6045 thiss!1504)) (array_inv!3218 (_values!4010 thiss!1504)) e!139489))))

(declare-fun b!214449 () Bool)

(declare-fun e!139485 () Bool)

(assert (=> b!214449 (= e!139485 tp_is_empty!5541)))

(declare-fun mapNonEmpty!9430 () Bool)

(declare-fun mapRes!9430 () Bool)

(declare-fun tp!20128 () Bool)

(assert (=> mapNonEmpty!9430 (= mapRes!9430 (and tp!20128 e!139485))))

(declare-fun mapKey!9430 () (_ BitVec 32))

(declare-fun mapRest!9430 () (Array (_ BitVec 32) ValueCell!2427))

(declare-fun mapValue!9430 () ValueCell!2427)

(assert (=> mapNonEmpty!9430 (= (arr!4881 (_values!4010 thiss!1504)) (store mapRest!9430 mapKey!9430 mapValue!9430))))

(declare-fun mapIsEmpty!9430 () Bool)

(assert (=> mapIsEmpty!9430 mapRes!9430))

(declare-fun b!214450 () Bool)

(assert (=> b!214450 (= e!139489 (and e!139488 mapRes!9430))))

(declare-fun condMapEmpty!9430 () Bool)

(declare-fun mapDefault!9430 () ValueCell!2427)

(assert (=> b!214450 (= condMapEmpty!9430 (= (arr!4881 (_values!4010 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2427)) mapDefault!9430)))))

(declare-fun b!214451 () Bool)

(declare-fun res!104997 () Bool)

(assert (=> b!214451 (=> (not res!104997) (not e!139487))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!728 0))(
  ( (MissingZero!728 (index!5082 (_ BitVec 32))) (Found!728 (index!5083 (_ BitVec 32))) (Intermediate!728 (undefined!1540 Bool) (index!5084 (_ BitVec 32)) (x!22371 (_ BitVec 32))) (Undefined!728) (MissingVacant!728 (index!5085 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10296 (_ BitVec 32)) SeekEntryResult!728)

(assert (=> b!214451 (= res!104997 (not (= (seekEntryOrOpen!0 key!932 (_keys!6045 thiss!1504) (mask!9689 thiss!1504)) (MissingZero!728 index!297))))))

(declare-fun b!214452 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!214452 (= e!139487 (not (validMask!0 (mask!9689 thiss!1504))))))

(assert (= (and start!21330 res!104998) b!214447))

(assert (= (and b!214447 res!104996) b!214451))

(assert (= (and b!214451 res!104997) b!214452))

(assert (= (and b!214450 condMapEmpty!9430) mapIsEmpty!9430))

(assert (= (and b!214450 (not condMapEmpty!9430)) mapNonEmpty!9430))

(get-info :version)

(assert (= (and mapNonEmpty!9430 ((_ is ValueCellFull!2427) mapValue!9430)) b!214449))

(assert (= (and b!214450 ((_ is ValueCellFull!2427) mapDefault!9430)) b!214446))

(assert (= b!214448 b!214450))

(assert (= start!21330 b!214448))

(declare-fun m!242119 () Bool)

(assert (=> start!21330 m!242119))

(declare-fun m!242121 () Bool)

(assert (=> mapNonEmpty!9430 m!242121))

(declare-fun m!242123 () Bool)

(assert (=> b!214451 m!242123))

(declare-fun m!242125 () Bool)

(assert (=> b!214448 m!242125))

(declare-fun m!242127 () Bool)

(assert (=> b!214448 m!242127))

(declare-fun m!242129 () Bool)

(assert (=> b!214452 m!242129))

(check-sat tp_is_empty!5541 b_and!12587 (not b_next!5679) (not start!21330) (not b!214448) (not b!214451) (not b!214452) (not mapNonEmpty!9430))
(check-sat b_and!12587 (not b_next!5679))
(get-model)

(declare-fun d!58235 () Bool)

(assert (=> d!58235 (= (validMask!0 (mask!9689 thiss!1504)) (and (or (= (mask!9689 thiss!1504) #b00000000000000000000000000000111) (= (mask!9689 thiss!1504) #b00000000000000000000000000001111) (= (mask!9689 thiss!1504) #b00000000000000000000000000011111) (= (mask!9689 thiss!1504) #b00000000000000000000000000111111) (= (mask!9689 thiss!1504) #b00000000000000000000000001111111) (= (mask!9689 thiss!1504) #b00000000000000000000000011111111) (= (mask!9689 thiss!1504) #b00000000000000000000000111111111) (= (mask!9689 thiss!1504) #b00000000000000000000001111111111) (= (mask!9689 thiss!1504) #b00000000000000000000011111111111) (= (mask!9689 thiss!1504) #b00000000000000000000111111111111) (= (mask!9689 thiss!1504) #b00000000000000000001111111111111) (= (mask!9689 thiss!1504) #b00000000000000000011111111111111) (= (mask!9689 thiss!1504) #b00000000000000000111111111111111) (= (mask!9689 thiss!1504) #b00000000000000001111111111111111) (= (mask!9689 thiss!1504) #b00000000000000011111111111111111) (= (mask!9689 thiss!1504) #b00000000000000111111111111111111) (= (mask!9689 thiss!1504) #b00000000000001111111111111111111) (= (mask!9689 thiss!1504) #b00000000000011111111111111111111) (= (mask!9689 thiss!1504) #b00000000000111111111111111111111) (= (mask!9689 thiss!1504) #b00000000001111111111111111111111) (= (mask!9689 thiss!1504) #b00000000011111111111111111111111) (= (mask!9689 thiss!1504) #b00000000111111111111111111111111) (= (mask!9689 thiss!1504) #b00000001111111111111111111111111) (= (mask!9689 thiss!1504) #b00000011111111111111111111111111) (= (mask!9689 thiss!1504) #b00000111111111111111111111111111) (= (mask!9689 thiss!1504) #b00001111111111111111111111111111) (= (mask!9689 thiss!1504) #b00011111111111111111111111111111) (= (mask!9689 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!9689 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!214452 d!58235))

(declare-fun d!58237 () Bool)

(declare-fun res!105014 () Bool)

(declare-fun e!139511 () Bool)

(assert (=> d!58237 (=> (not res!105014) (not e!139511))))

(declare-fun simpleValid!210 (LongMapFixedSize!2754) Bool)

(assert (=> d!58237 (= res!105014 (simpleValid!210 thiss!1504))))

(assert (=> d!58237 (= (valid!1119 thiss!1504) e!139511)))

(declare-fun b!214480 () Bool)

(declare-fun res!105015 () Bool)

(assert (=> b!214480 (=> (not res!105015) (not e!139511))))

(declare-fun arrayCountValidKeys!0 (array!10296 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!214480 (= res!105015 (= (arrayCountValidKeys!0 (_keys!6045 thiss!1504) #b00000000000000000000000000000000 (size!5209 (_keys!6045 thiss!1504))) (_size!1426 thiss!1504)))))

(declare-fun b!214481 () Bool)

(declare-fun res!105016 () Bool)

(assert (=> b!214481 (=> (not res!105016) (not e!139511))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10296 (_ BitVec 32)) Bool)

(assert (=> b!214481 (= res!105016 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6045 thiss!1504) (mask!9689 thiss!1504)))))

(declare-fun b!214482 () Bool)

(declare-datatypes ((List!3150 0))(
  ( (Nil!3147) (Cons!3146 (h!3788 (_ BitVec 64)) (t!8113 List!3150)) )
))
(declare-fun arrayNoDuplicates!0 (array!10296 (_ BitVec 32) List!3150) Bool)

(assert (=> b!214482 (= e!139511 (arrayNoDuplicates!0 (_keys!6045 thiss!1504) #b00000000000000000000000000000000 Nil!3147))))

(assert (= (and d!58237 res!105014) b!214480))

(assert (= (and b!214480 res!105015) b!214481))

(assert (= (and b!214481 res!105016) b!214482))

(declare-fun m!242143 () Bool)

(assert (=> d!58237 m!242143))

(declare-fun m!242145 () Bool)

(assert (=> b!214480 m!242145))

(declare-fun m!242147 () Bool)

(assert (=> b!214481 m!242147))

(declare-fun m!242149 () Bool)

(assert (=> b!214482 m!242149))

(assert (=> start!21330 d!58237))

(declare-fun d!58239 () Bool)

(assert (=> d!58239 (= (array_inv!3217 (_keys!6045 thiss!1504)) (bvsge (size!5209 (_keys!6045 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!214448 d!58239))

(declare-fun d!58241 () Bool)

(assert (=> d!58241 (= (array_inv!3218 (_values!4010 thiss!1504)) (bvsge (size!5208 (_values!4010 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!214448 d!58241))

(declare-fun b!214495 () Bool)

(declare-fun c!36035 () Bool)

(declare-fun lt!110821 () (_ BitVec 64))

(assert (=> b!214495 (= c!36035 (= lt!110821 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!139518 () SeekEntryResult!728)

(declare-fun e!139519 () SeekEntryResult!728)

(assert (=> b!214495 (= e!139518 e!139519)))

(declare-fun b!214496 () Bool)

(declare-fun lt!110820 () SeekEntryResult!728)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!10296 (_ BitVec 32)) SeekEntryResult!728)

(assert (=> b!214496 (= e!139519 (seekKeyOrZeroReturnVacant!0 (x!22371 lt!110820) (index!5084 lt!110820) (index!5084 lt!110820) key!932 (_keys!6045 thiss!1504) (mask!9689 thiss!1504)))))

(declare-fun b!214497 () Bool)

(assert (=> b!214497 (= e!139519 (MissingZero!728 (index!5084 lt!110820)))))

(declare-fun b!214498 () Bool)

(assert (=> b!214498 (= e!139518 (Found!728 (index!5084 lt!110820)))))

(declare-fun b!214499 () Bool)

(declare-fun e!139520 () SeekEntryResult!728)

(assert (=> b!214499 (= e!139520 e!139518)))

(assert (=> b!214499 (= lt!110821 (select (arr!4882 (_keys!6045 thiss!1504)) (index!5084 lt!110820)))))

(declare-fun c!36037 () Bool)

(assert (=> b!214499 (= c!36037 (= lt!110821 key!932))))

(declare-fun b!214500 () Bool)

(assert (=> b!214500 (= e!139520 Undefined!728)))

(declare-fun d!58243 () Bool)

(declare-fun lt!110819 () SeekEntryResult!728)

(assert (=> d!58243 (and (or ((_ is Undefined!728) lt!110819) (not ((_ is Found!728) lt!110819)) (and (bvsge (index!5083 lt!110819) #b00000000000000000000000000000000) (bvslt (index!5083 lt!110819) (size!5209 (_keys!6045 thiss!1504))))) (or ((_ is Undefined!728) lt!110819) ((_ is Found!728) lt!110819) (not ((_ is MissingZero!728) lt!110819)) (and (bvsge (index!5082 lt!110819) #b00000000000000000000000000000000) (bvslt (index!5082 lt!110819) (size!5209 (_keys!6045 thiss!1504))))) (or ((_ is Undefined!728) lt!110819) ((_ is Found!728) lt!110819) ((_ is MissingZero!728) lt!110819) (not ((_ is MissingVacant!728) lt!110819)) (and (bvsge (index!5085 lt!110819) #b00000000000000000000000000000000) (bvslt (index!5085 lt!110819) (size!5209 (_keys!6045 thiss!1504))))) (or ((_ is Undefined!728) lt!110819) (ite ((_ is Found!728) lt!110819) (= (select (arr!4882 (_keys!6045 thiss!1504)) (index!5083 lt!110819)) key!932) (ite ((_ is MissingZero!728) lt!110819) (= (select (arr!4882 (_keys!6045 thiss!1504)) (index!5082 lt!110819)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!728) lt!110819) (= (select (arr!4882 (_keys!6045 thiss!1504)) (index!5085 lt!110819)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!58243 (= lt!110819 e!139520)))

(declare-fun c!36036 () Bool)

(assert (=> d!58243 (= c!36036 (and ((_ is Intermediate!728) lt!110820) (undefined!1540 lt!110820)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!10296 (_ BitVec 32)) SeekEntryResult!728)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!58243 (= lt!110820 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!9689 thiss!1504)) key!932 (_keys!6045 thiss!1504) (mask!9689 thiss!1504)))))

(assert (=> d!58243 (validMask!0 (mask!9689 thiss!1504))))

(assert (=> d!58243 (= (seekEntryOrOpen!0 key!932 (_keys!6045 thiss!1504) (mask!9689 thiss!1504)) lt!110819)))

(assert (= (and d!58243 c!36036) b!214500))

(assert (= (and d!58243 (not c!36036)) b!214499))

(assert (= (and b!214499 c!36037) b!214498))

(assert (= (and b!214499 (not c!36037)) b!214495))

(assert (= (and b!214495 c!36035) b!214497))

(assert (= (and b!214495 (not c!36035)) b!214496))

(declare-fun m!242151 () Bool)

(assert (=> b!214496 m!242151))

(declare-fun m!242153 () Bool)

(assert (=> b!214499 m!242153))

(declare-fun m!242155 () Bool)

(assert (=> d!58243 m!242155))

(declare-fun m!242157 () Bool)

(assert (=> d!58243 m!242157))

(declare-fun m!242159 () Bool)

(assert (=> d!58243 m!242159))

(declare-fun m!242161 () Bool)

(assert (=> d!58243 m!242161))

(assert (=> d!58243 m!242129))

(assert (=> d!58243 m!242159))

(declare-fun m!242163 () Bool)

(assert (=> d!58243 m!242163))

(assert (=> b!214451 d!58243))

(declare-fun b!214508 () Bool)

(declare-fun e!139526 () Bool)

(assert (=> b!214508 (= e!139526 tp_is_empty!5541)))

(declare-fun mapNonEmpty!9436 () Bool)

(declare-fun mapRes!9436 () Bool)

(declare-fun tp!20137 () Bool)

(declare-fun e!139525 () Bool)

(assert (=> mapNonEmpty!9436 (= mapRes!9436 (and tp!20137 e!139525))))

(declare-fun mapKey!9436 () (_ BitVec 32))

(declare-fun mapValue!9436 () ValueCell!2427)

(declare-fun mapRest!9436 () (Array (_ BitVec 32) ValueCell!2427))

(assert (=> mapNonEmpty!9436 (= mapRest!9430 (store mapRest!9436 mapKey!9436 mapValue!9436))))

(declare-fun b!214507 () Bool)

(assert (=> b!214507 (= e!139525 tp_is_empty!5541)))

(declare-fun mapIsEmpty!9436 () Bool)

(assert (=> mapIsEmpty!9436 mapRes!9436))

(declare-fun condMapEmpty!9436 () Bool)

(declare-fun mapDefault!9436 () ValueCell!2427)

(assert (=> mapNonEmpty!9430 (= condMapEmpty!9436 (= mapRest!9430 ((as const (Array (_ BitVec 32) ValueCell!2427)) mapDefault!9436)))))

(assert (=> mapNonEmpty!9430 (= tp!20128 (and e!139526 mapRes!9436))))

(assert (= (and mapNonEmpty!9430 condMapEmpty!9436) mapIsEmpty!9436))

(assert (= (and mapNonEmpty!9430 (not condMapEmpty!9436)) mapNonEmpty!9436))

(assert (= (and mapNonEmpty!9436 ((_ is ValueCellFull!2427) mapValue!9436)) b!214507))

(assert (= (and mapNonEmpty!9430 ((_ is ValueCellFull!2427) mapDefault!9436)) b!214508))

(declare-fun m!242165 () Bool)

(assert (=> mapNonEmpty!9436 m!242165))

(check-sat (not b!214480) tp_is_empty!5541 (not b!214481) (not mapNonEmpty!9436) b_and!12587 (not b!214496) (not b_next!5679) (not b!214482) (not d!58237) (not d!58243))
(check-sat b_and!12587 (not b_next!5679))
