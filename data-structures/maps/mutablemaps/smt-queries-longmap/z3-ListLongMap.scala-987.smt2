; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21314 () Bool)

(assert start!21314)

(declare-fun b!214363 () Bool)

(declare-fun b_free!5673 () Bool)

(declare-fun b_next!5673 () Bool)

(assert (=> b!214363 (= b_free!5673 (not b_next!5673))))

(declare-fun tp!20107 () Bool)

(declare-fun b_and!12581 () Bool)

(assert (=> b!214363 (= tp!20107 b_and!12581)))

(declare-fun mapIsEmpty!9418 () Bool)

(declare-fun mapRes!9418 () Bool)

(assert (=> mapIsEmpty!9418 mapRes!9418))

(declare-fun mapNonEmpty!9418 () Bool)

(declare-fun tp!20106 () Bool)

(declare-fun e!139424 () Bool)

(assert (=> mapNonEmpty!9418 (= mapRes!9418 (and tp!20106 e!139424))))

(declare-datatypes ((V!7027 0))(
  ( (V!7028 (val!2812 Int)) )
))
(declare-datatypes ((ValueCell!2424 0))(
  ( (ValueCellFull!2424 (v!4826 V!7027)) (EmptyCell!2424) )
))
(declare-fun mapRest!9418 () (Array (_ BitVec 32) ValueCell!2424))

(declare-fun mapValue!9418 () ValueCell!2424)

(declare-fun mapKey!9418 () (_ BitVec 32))

(declare-datatypes ((array!10280 0))(
  ( (array!10281 (arr!4875 (Array (_ BitVec 32) ValueCell!2424)) (size!5202 (_ BitVec 32))) )
))
(declare-datatypes ((array!10282 0))(
  ( (array!10283 (arr!4876 (Array (_ BitVec 32) (_ BitVec 64))) (size!5203 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2748 0))(
  ( (LongMapFixedSize!2749 (defaultEntry!4024 Int) (mask!9683 (_ BitVec 32)) (extraKeys!3761 (_ BitVec 32)) (zeroValue!3865 V!7027) (minValue!3865 V!7027) (_size!1423 (_ BitVec 32)) (_keys!6042 array!10282) (_values!4007 array!10280) (_vacant!1423 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2748)

(assert (=> mapNonEmpty!9418 (= (arr!4875 (_values!4007 thiss!1504)) (store mapRest!9418 mapKey!9418 mapValue!9418))))

(declare-fun b!214362 () Bool)

(declare-fun tp_is_empty!5535 () Bool)

(assert (=> b!214362 (= e!139424 tp_is_empty!5535)))

(declare-fun e!139426 () Bool)

(declare-fun e!139423 () Bool)

(declare-fun array_inv!3213 (array!10282) Bool)

(declare-fun array_inv!3214 (array!10280) Bool)

(assert (=> b!214363 (= e!139423 (and tp!20107 tp_is_empty!5535 (array_inv!3213 (_keys!6042 thiss!1504)) (array_inv!3214 (_values!4007 thiss!1504)) e!139426))))

(declare-fun b!214364 () Bool)

(declare-fun res!104959 () Bool)

(declare-fun e!139422 () Bool)

(assert (=> b!214364 (=> (not res!104959) (not e!139422))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!214364 (= res!104959 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!214365 () Bool)

(declare-fun e!139427 () Bool)

(assert (=> b!214365 (= e!139427 tp_is_empty!5535)))

(declare-fun b!214366 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!214366 (= e!139422 (not (validKeyInArray!0 key!932)))))

(declare-fun b!214368 () Bool)

(declare-fun res!104958 () Bool)

(assert (=> b!214368 (=> (not res!104958) (not e!139422))))

(assert (=> b!214368 (= res!104958 (and (bvsge (mask!9683 thiss!1504) #b00000000000000000000000000000000) (= (size!5203 (_keys!6042 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9683 thiss!1504)))))))

(declare-fun b!214369 () Bool)

(assert (=> b!214369 (= e!139426 (and e!139427 mapRes!9418))))

(declare-fun condMapEmpty!9418 () Bool)

(declare-fun mapDefault!9418 () ValueCell!2424)

(assert (=> b!214369 (= condMapEmpty!9418 (= (arr!4875 (_values!4007 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2424)) mapDefault!9418)))))

(declare-fun res!104957 () Bool)

(assert (=> start!21314 (=> (not res!104957) (not e!139422))))

(declare-fun valid!1118 (LongMapFixedSize!2748) Bool)

(assert (=> start!21314 (= res!104957 (valid!1118 thiss!1504))))

(assert (=> start!21314 e!139422))

(assert (=> start!21314 e!139423))

(assert (=> start!21314 true))

(declare-fun b!214367 () Bool)

(declare-fun res!104956 () Bool)

(assert (=> b!214367 (=> (not res!104956) (not e!139422))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!214367 (= res!104956 (validMask!0 (mask!9683 thiss!1504)))))

(assert (= (and start!21314 res!104957) b!214364))

(assert (= (and b!214364 res!104959) b!214367))

(assert (= (and b!214367 res!104956) b!214368))

(assert (= (and b!214368 res!104958) b!214366))

(assert (= (and b!214369 condMapEmpty!9418) mapIsEmpty!9418))

(assert (= (and b!214369 (not condMapEmpty!9418)) mapNonEmpty!9418))

(get-info :version)

(assert (= (and mapNonEmpty!9418 ((_ is ValueCellFull!2424) mapValue!9418)) b!214362))

(assert (= (and b!214369 ((_ is ValueCellFull!2424) mapDefault!9418)) b!214365))

(assert (= b!214363 b!214369))

(assert (= start!21314 b!214363))

(declare-fun m!242073 () Bool)

(assert (=> b!214363 m!242073))

(declare-fun m!242075 () Bool)

(assert (=> b!214363 m!242075))

(declare-fun m!242077 () Bool)

(assert (=> start!21314 m!242077))

(declare-fun m!242079 () Bool)

(assert (=> b!214366 m!242079))

(declare-fun m!242081 () Bool)

(assert (=> b!214367 m!242081))

(declare-fun m!242083 () Bool)

(assert (=> mapNonEmpty!9418 m!242083))

(check-sat (not b!214363) (not mapNonEmpty!9418) (not b_next!5673) (not start!21314) (not b!214367) b_and!12581 tp_is_empty!5535 (not b!214366))
(check-sat b_and!12581 (not b_next!5673))
(get-model)

(declare-fun d!58223 () Bool)

(assert (=> d!58223 (= (validKeyInArray!0 key!932) (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!214366 d!58223))

(declare-fun d!58225 () Bool)

(assert (=> d!58225 (= (validMask!0 (mask!9683 thiss!1504)) (and (or (= (mask!9683 thiss!1504) #b00000000000000000000000000000111) (= (mask!9683 thiss!1504) #b00000000000000000000000000001111) (= (mask!9683 thiss!1504) #b00000000000000000000000000011111) (= (mask!9683 thiss!1504) #b00000000000000000000000000111111) (= (mask!9683 thiss!1504) #b00000000000000000000000001111111) (= (mask!9683 thiss!1504) #b00000000000000000000000011111111) (= (mask!9683 thiss!1504) #b00000000000000000000000111111111) (= (mask!9683 thiss!1504) #b00000000000000000000001111111111) (= (mask!9683 thiss!1504) #b00000000000000000000011111111111) (= (mask!9683 thiss!1504) #b00000000000000000000111111111111) (= (mask!9683 thiss!1504) #b00000000000000000001111111111111) (= (mask!9683 thiss!1504) #b00000000000000000011111111111111) (= (mask!9683 thiss!1504) #b00000000000000000111111111111111) (= (mask!9683 thiss!1504) #b00000000000000001111111111111111) (= (mask!9683 thiss!1504) #b00000000000000011111111111111111) (= (mask!9683 thiss!1504) #b00000000000000111111111111111111) (= (mask!9683 thiss!1504) #b00000000000001111111111111111111) (= (mask!9683 thiss!1504) #b00000000000011111111111111111111) (= (mask!9683 thiss!1504) #b00000000000111111111111111111111) (= (mask!9683 thiss!1504) #b00000000001111111111111111111111) (= (mask!9683 thiss!1504) #b00000000011111111111111111111111) (= (mask!9683 thiss!1504) #b00000000111111111111111111111111) (= (mask!9683 thiss!1504) #b00000001111111111111111111111111) (= (mask!9683 thiss!1504) #b00000011111111111111111111111111) (= (mask!9683 thiss!1504) #b00000111111111111111111111111111) (= (mask!9683 thiss!1504) #b00001111111111111111111111111111) (= (mask!9683 thiss!1504) #b00011111111111111111111111111111) (= (mask!9683 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!9683 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!214367 d!58225))

(declare-fun d!58227 () Bool)

(declare-fun res!104978 () Bool)

(declare-fun e!139448 () Bool)

(assert (=> d!58227 (=> (not res!104978) (not e!139448))))

(declare-fun simpleValid!209 (LongMapFixedSize!2748) Bool)

(assert (=> d!58227 (= res!104978 (simpleValid!209 thiss!1504))))

(assert (=> d!58227 (= (valid!1118 thiss!1504) e!139448)))

(declare-fun b!214400 () Bool)

(declare-fun res!104979 () Bool)

(assert (=> b!214400 (=> (not res!104979) (not e!139448))))

(declare-fun arrayCountValidKeys!0 (array!10282 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!214400 (= res!104979 (= (arrayCountValidKeys!0 (_keys!6042 thiss!1504) #b00000000000000000000000000000000 (size!5203 (_keys!6042 thiss!1504))) (_size!1423 thiss!1504)))))

(declare-fun b!214401 () Bool)

(declare-fun res!104980 () Bool)

(assert (=> b!214401 (=> (not res!104980) (not e!139448))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10282 (_ BitVec 32)) Bool)

(assert (=> b!214401 (= res!104980 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6042 thiss!1504) (mask!9683 thiss!1504)))))

(declare-fun b!214402 () Bool)

(declare-datatypes ((List!3149 0))(
  ( (Nil!3146) (Cons!3145 (h!3787 (_ BitVec 64)) (t!8112 List!3149)) )
))
(declare-fun arrayNoDuplicates!0 (array!10282 (_ BitVec 32) List!3149) Bool)

(assert (=> b!214402 (= e!139448 (arrayNoDuplicates!0 (_keys!6042 thiss!1504) #b00000000000000000000000000000000 Nil!3146))))

(assert (= (and d!58227 res!104978) b!214400))

(assert (= (and b!214400 res!104979) b!214401))

(assert (= (and b!214401 res!104980) b!214402))

(declare-fun m!242097 () Bool)

(assert (=> d!58227 m!242097))

(declare-fun m!242099 () Bool)

(assert (=> b!214400 m!242099))

(declare-fun m!242101 () Bool)

(assert (=> b!214401 m!242101))

(declare-fun m!242103 () Bool)

(assert (=> b!214402 m!242103))

(assert (=> start!21314 d!58227))

(declare-fun d!58229 () Bool)

(assert (=> d!58229 (= (array_inv!3213 (_keys!6042 thiss!1504)) (bvsge (size!5203 (_keys!6042 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!214363 d!58229))

(declare-fun d!58231 () Bool)

(assert (=> d!58231 (= (array_inv!3214 (_values!4007 thiss!1504)) (bvsge (size!5202 (_values!4007 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!214363 d!58231))

(declare-fun b!214409 () Bool)

(declare-fun e!139453 () Bool)

(assert (=> b!214409 (= e!139453 tp_is_empty!5535)))

(declare-fun mapNonEmpty!9424 () Bool)

(declare-fun mapRes!9424 () Bool)

(declare-fun tp!20116 () Bool)

(assert (=> mapNonEmpty!9424 (= mapRes!9424 (and tp!20116 e!139453))))

(declare-fun mapRest!9424 () (Array (_ BitVec 32) ValueCell!2424))

(declare-fun mapKey!9424 () (_ BitVec 32))

(declare-fun mapValue!9424 () ValueCell!2424)

(assert (=> mapNonEmpty!9424 (= mapRest!9418 (store mapRest!9424 mapKey!9424 mapValue!9424))))

(declare-fun condMapEmpty!9424 () Bool)

(declare-fun mapDefault!9424 () ValueCell!2424)

(assert (=> mapNonEmpty!9418 (= condMapEmpty!9424 (= mapRest!9418 ((as const (Array (_ BitVec 32) ValueCell!2424)) mapDefault!9424)))))

(declare-fun e!139454 () Bool)

(assert (=> mapNonEmpty!9418 (= tp!20106 (and e!139454 mapRes!9424))))

(declare-fun mapIsEmpty!9424 () Bool)

(assert (=> mapIsEmpty!9424 mapRes!9424))

(declare-fun b!214410 () Bool)

(assert (=> b!214410 (= e!139454 tp_is_empty!5535)))

(assert (= (and mapNonEmpty!9418 condMapEmpty!9424) mapIsEmpty!9424))

(assert (= (and mapNonEmpty!9418 (not condMapEmpty!9424)) mapNonEmpty!9424))

(assert (= (and mapNonEmpty!9424 ((_ is ValueCellFull!2424) mapValue!9424)) b!214409))

(assert (= (and mapNonEmpty!9418 ((_ is ValueCellFull!2424) mapDefault!9424)) b!214410))

(declare-fun m!242105 () Bool)

(assert (=> mapNonEmpty!9424 m!242105))

(check-sat (not b!214401) (not d!58227) (not mapNonEmpty!9424) (not b_next!5673) tp_is_empty!5535 (not b!214402) (not b!214400) b_and!12581)
(check-sat b_and!12581 (not b_next!5673))
