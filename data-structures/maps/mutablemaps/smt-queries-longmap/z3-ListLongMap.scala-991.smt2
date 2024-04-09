; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21392 () Bool)

(assert start!21392)

(declare-fun b!214869 () Bool)

(declare-fun b_free!5697 () Bool)

(declare-fun b_next!5697 () Bool)

(assert (=> b!214869 (= b_free!5697 (not b_next!5697))))

(declare-fun tp!20191 () Bool)

(declare-fun b_and!12605 () Bool)

(assert (=> b!214869 (= tp!20191 b_and!12605)))

(declare-fun b!214867 () Bool)

(declare-fun res!105173 () Bool)

(declare-fun e!139760 () Bool)

(assert (=> b!214867 (=> (not res!105173) (not e!139760))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((V!7059 0))(
  ( (V!7060 (val!2824 Int)) )
))
(declare-datatypes ((ValueCell!2436 0))(
  ( (ValueCellFull!2436 (v!4838 V!7059)) (EmptyCell!2436) )
))
(declare-datatypes ((array!10336 0))(
  ( (array!10337 (arr!4899 (Array (_ BitVec 32) ValueCell!2436)) (size!5227 (_ BitVec 32))) )
))
(declare-datatypes ((array!10338 0))(
  ( (array!10339 (arr!4900 (Array (_ BitVec 32) (_ BitVec 64))) (size!5228 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2772 0))(
  ( (LongMapFixedSize!2773 (defaultEntry!4036 Int) (mask!9714 (_ BitVec 32)) (extraKeys!3773 (_ BitVec 32)) (zeroValue!3877 V!7059) (minValue!3877 V!7059) (_size!1435 (_ BitVec 32)) (_keys!6060 array!10338) (_values!4019 array!10336) (_vacant!1435 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2772)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!735 0))(
  ( (MissingZero!735 (index!5110 (_ BitVec 32))) (Found!735 (index!5111 (_ BitVec 32))) (Intermediate!735 (undefined!1547 Bool) (index!5112 (_ BitVec 32)) (x!22435 (_ BitVec 32))) (Undefined!735) (MissingVacant!735 (index!5113 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10338 (_ BitVec 32)) SeekEntryResult!735)

(assert (=> b!214867 (= res!105173 (not (= (seekEntryOrOpen!0 key!932 (_keys!6060 thiss!1504) (mask!9714 thiss!1504)) (MissingZero!735 index!297))))))

(declare-fun b!214868 () Bool)

(declare-fun e!139758 () Bool)

(declare-fun tp_is_empty!5559 () Bool)

(assert (=> b!214868 (= e!139758 tp_is_empty!5559)))

(declare-fun e!139761 () Bool)

(declare-fun e!139759 () Bool)

(declare-fun array_inv!3233 (array!10338) Bool)

(declare-fun array_inv!3234 (array!10336) Bool)

(assert (=> b!214869 (= e!139759 (and tp!20191 tp_is_empty!5559 (array_inv!3233 (_keys!6060 thiss!1504)) (array_inv!3234 (_values!4019 thiss!1504)) e!139761))))

(declare-fun b!214870 () Bool)

(declare-fun res!105170 () Bool)

(assert (=> b!214870 (=> (not res!105170) (not e!139760))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!214870 (= res!105170 (validMask!0 (mask!9714 thiss!1504)))))

(declare-fun b!214871 () Bool)

(declare-fun res!105171 () Bool)

(assert (=> b!214871 (=> (not res!105171) (not e!139760))))

(assert (=> b!214871 (= res!105171 (and (bvsge (mask!9714 thiss!1504) #b00000000000000000000000000000000) (= (size!5228 (_keys!6060 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9714 thiss!1504)))))))

(declare-fun mapIsEmpty!9467 () Bool)

(declare-fun mapRes!9467 () Bool)

(assert (=> mapIsEmpty!9467 mapRes!9467))

(declare-fun mapNonEmpty!9467 () Bool)

(declare-fun tp!20192 () Bool)

(assert (=> mapNonEmpty!9467 (= mapRes!9467 (and tp!20192 e!139758))))

(declare-fun mapKey!9467 () (_ BitVec 32))

(declare-fun mapRest!9467 () (Array (_ BitVec 32) ValueCell!2436))

(declare-fun mapValue!9467 () ValueCell!2436)

(assert (=> mapNonEmpty!9467 (= (arr!4899 (_values!4019 thiss!1504)) (store mapRest!9467 mapKey!9467 mapValue!9467))))

(declare-fun b!214872 () Bool)

(declare-fun res!105172 () Bool)

(assert (=> b!214872 (=> (not res!105172) (not e!139760))))

(assert (=> b!214872 (= res!105172 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!214866 () Bool)

(declare-fun e!139762 () Bool)

(assert (=> b!214866 (= e!139762 tp_is_empty!5559)))

(declare-fun res!105169 () Bool)

(assert (=> start!21392 (=> (not res!105169) (not e!139760))))

(declare-fun valid!1125 (LongMapFixedSize!2772) Bool)

(assert (=> start!21392 (= res!105169 (valid!1125 thiss!1504))))

(assert (=> start!21392 e!139760))

(assert (=> start!21392 e!139759))

(assert (=> start!21392 true))

(declare-fun b!214873 () Bool)

(assert (=> b!214873 (= e!139761 (and e!139762 mapRes!9467))))

(declare-fun condMapEmpty!9467 () Bool)

(declare-fun mapDefault!9467 () ValueCell!2436)

(assert (=> b!214873 (= condMapEmpty!9467 (= (arr!4899 (_values!4019 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2436)) mapDefault!9467)))))

(declare-fun b!214874 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!214874 (= e!139760 (not (validKeyInArray!0 key!932)))))

(assert (= (and start!21392 res!105169) b!214872))

(assert (= (and b!214872 res!105172) b!214867))

(assert (= (and b!214867 res!105173) b!214870))

(assert (= (and b!214870 res!105170) b!214871))

(assert (= (and b!214871 res!105171) b!214874))

(assert (= (and b!214873 condMapEmpty!9467) mapIsEmpty!9467))

(assert (= (and b!214873 (not condMapEmpty!9467)) mapNonEmpty!9467))

(get-info :version)

(assert (= (and mapNonEmpty!9467 ((_ is ValueCellFull!2436) mapValue!9467)) b!214868))

(assert (= (and b!214873 ((_ is ValueCellFull!2436) mapDefault!9467)) b!214866))

(assert (= b!214869 b!214873))

(assert (= start!21392 b!214869))

(declare-fun m!242339 () Bool)

(assert (=> mapNonEmpty!9467 m!242339))

(declare-fun m!242341 () Bool)

(assert (=> b!214870 m!242341))

(declare-fun m!242343 () Bool)

(assert (=> b!214867 m!242343))

(declare-fun m!242345 () Bool)

(assert (=> b!214869 m!242345))

(declare-fun m!242347 () Bool)

(assert (=> b!214869 m!242347))

(declare-fun m!242349 () Bool)

(assert (=> start!21392 m!242349))

(declare-fun m!242351 () Bool)

(assert (=> b!214874 m!242351))

(check-sat (not b_next!5697) (not b!214874) (not start!21392) b_and!12605 (not mapNonEmpty!9467) tp_is_empty!5559 (not b!214869) (not b!214867) (not b!214870))
(check-sat b_and!12605 (not b_next!5697))
(get-model)

(declare-fun b!214914 () Bool)

(declare-fun e!139787 () SeekEntryResult!735)

(declare-fun e!139789 () SeekEntryResult!735)

(assert (=> b!214914 (= e!139787 e!139789)))

(declare-fun lt!110878 () (_ BitVec 64))

(declare-fun lt!110876 () SeekEntryResult!735)

(assert (=> b!214914 (= lt!110878 (select (arr!4900 (_keys!6060 thiss!1504)) (index!5112 lt!110876)))))

(declare-fun c!36093 () Bool)

(assert (=> b!214914 (= c!36093 (= lt!110878 key!932))))

(declare-fun b!214915 () Bool)

(declare-fun c!36092 () Bool)

(assert (=> b!214915 (= c!36092 (= lt!110878 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!139788 () SeekEntryResult!735)

(assert (=> b!214915 (= e!139789 e!139788)))

(declare-fun b!214916 () Bool)

(assert (=> b!214916 (= e!139787 Undefined!735)))

(declare-fun b!214918 () Bool)

(assert (=> b!214918 (= e!139789 (Found!735 (index!5112 lt!110876)))))

(declare-fun b!214919 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!10338 (_ BitVec 32)) SeekEntryResult!735)

(assert (=> b!214919 (= e!139788 (seekKeyOrZeroReturnVacant!0 (x!22435 lt!110876) (index!5112 lt!110876) (index!5112 lt!110876) key!932 (_keys!6060 thiss!1504) (mask!9714 thiss!1504)))))

(declare-fun b!214917 () Bool)

(assert (=> b!214917 (= e!139788 (MissingZero!735 (index!5112 lt!110876)))))

(declare-fun d!58285 () Bool)

(declare-fun lt!110877 () SeekEntryResult!735)

(assert (=> d!58285 (and (or ((_ is Undefined!735) lt!110877) (not ((_ is Found!735) lt!110877)) (and (bvsge (index!5111 lt!110877) #b00000000000000000000000000000000) (bvslt (index!5111 lt!110877) (size!5228 (_keys!6060 thiss!1504))))) (or ((_ is Undefined!735) lt!110877) ((_ is Found!735) lt!110877) (not ((_ is MissingZero!735) lt!110877)) (and (bvsge (index!5110 lt!110877) #b00000000000000000000000000000000) (bvslt (index!5110 lt!110877) (size!5228 (_keys!6060 thiss!1504))))) (or ((_ is Undefined!735) lt!110877) ((_ is Found!735) lt!110877) ((_ is MissingZero!735) lt!110877) (not ((_ is MissingVacant!735) lt!110877)) (and (bvsge (index!5113 lt!110877) #b00000000000000000000000000000000) (bvslt (index!5113 lt!110877) (size!5228 (_keys!6060 thiss!1504))))) (or ((_ is Undefined!735) lt!110877) (ite ((_ is Found!735) lt!110877) (= (select (arr!4900 (_keys!6060 thiss!1504)) (index!5111 lt!110877)) key!932) (ite ((_ is MissingZero!735) lt!110877) (= (select (arr!4900 (_keys!6060 thiss!1504)) (index!5110 lt!110877)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!735) lt!110877) (= (select (arr!4900 (_keys!6060 thiss!1504)) (index!5113 lt!110877)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!58285 (= lt!110877 e!139787)))

(declare-fun c!36094 () Bool)

(assert (=> d!58285 (= c!36094 (and ((_ is Intermediate!735) lt!110876) (undefined!1547 lt!110876)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!10338 (_ BitVec 32)) SeekEntryResult!735)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!58285 (= lt!110876 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!9714 thiss!1504)) key!932 (_keys!6060 thiss!1504) (mask!9714 thiss!1504)))))

(assert (=> d!58285 (validMask!0 (mask!9714 thiss!1504))))

(assert (=> d!58285 (= (seekEntryOrOpen!0 key!932 (_keys!6060 thiss!1504) (mask!9714 thiss!1504)) lt!110877)))

(assert (= (and d!58285 c!36094) b!214916))

(assert (= (and d!58285 (not c!36094)) b!214914))

(assert (= (and b!214914 c!36093) b!214918))

(assert (= (and b!214914 (not c!36093)) b!214915))

(assert (= (and b!214915 c!36092) b!214917))

(assert (= (and b!214915 (not c!36092)) b!214919))

(declare-fun m!242367 () Bool)

(assert (=> b!214914 m!242367))

(declare-fun m!242369 () Bool)

(assert (=> b!214919 m!242369))

(declare-fun m!242371 () Bool)

(assert (=> d!58285 m!242371))

(declare-fun m!242373 () Bool)

(assert (=> d!58285 m!242373))

(assert (=> d!58285 m!242341))

(declare-fun m!242375 () Bool)

(assert (=> d!58285 m!242375))

(assert (=> d!58285 m!242375))

(declare-fun m!242377 () Bool)

(assert (=> d!58285 m!242377))

(declare-fun m!242379 () Bool)

(assert (=> d!58285 m!242379))

(assert (=> b!214867 d!58285))

(declare-fun d!58287 () Bool)

(assert (=> d!58287 (= (validMask!0 (mask!9714 thiss!1504)) (and (or (= (mask!9714 thiss!1504) #b00000000000000000000000000000111) (= (mask!9714 thiss!1504) #b00000000000000000000000000001111) (= (mask!9714 thiss!1504) #b00000000000000000000000000011111) (= (mask!9714 thiss!1504) #b00000000000000000000000000111111) (= (mask!9714 thiss!1504) #b00000000000000000000000001111111) (= (mask!9714 thiss!1504) #b00000000000000000000000011111111) (= (mask!9714 thiss!1504) #b00000000000000000000000111111111) (= (mask!9714 thiss!1504) #b00000000000000000000001111111111) (= (mask!9714 thiss!1504) #b00000000000000000000011111111111) (= (mask!9714 thiss!1504) #b00000000000000000000111111111111) (= (mask!9714 thiss!1504) #b00000000000000000001111111111111) (= (mask!9714 thiss!1504) #b00000000000000000011111111111111) (= (mask!9714 thiss!1504) #b00000000000000000111111111111111) (= (mask!9714 thiss!1504) #b00000000000000001111111111111111) (= (mask!9714 thiss!1504) #b00000000000000011111111111111111) (= (mask!9714 thiss!1504) #b00000000000000111111111111111111) (= (mask!9714 thiss!1504) #b00000000000001111111111111111111) (= (mask!9714 thiss!1504) #b00000000000011111111111111111111) (= (mask!9714 thiss!1504) #b00000000000111111111111111111111) (= (mask!9714 thiss!1504) #b00000000001111111111111111111111) (= (mask!9714 thiss!1504) #b00000000011111111111111111111111) (= (mask!9714 thiss!1504) #b00000000111111111111111111111111) (= (mask!9714 thiss!1504) #b00000001111111111111111111111111) (= (mask!9714 thiss!1504) #b00000011111111111111111111111111) (= (mask!9714 thiss!1504) #b00000111111111111111111111111111) (= (mask!9714 thiss!1504) #b00001111111111111111111111111111) (= (mask!9714 thiss!1504) #b00011111111111111111111111111111) (= (mask!9714 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!9714 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!214870 d!58287))

(declare-fun d!58289 () Bool)

(assert (=> d!58289 (= (validKeyInArray!0 key!932) (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!214874 d!58289))

(declare-fun d!58291 () Bool)

(declare-fun res!105195 () Bool)

(declare-fun e!139792 () Bool)

(assert (=> d!58291 (=> (not res!105195) (not e!139792))))

(declare-fun simpleValid!213 (LongMapFixedSize!2772) Bool)

(assert (=> d!58291 (= res!105195 (simpleValid!213 thiss!1504))))

(assert (=> d!58291 (= (valid!1125 thiss!1504) e!139792)))

(declare-fun b!214926 () Bool)

(declare-fun res!105196 () Bool)

(assert (=> b!214926 (=> (not res!105196) (not e!139792))))

(declare-fun arrayCountValidKeys!0 (array!10338 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!214926 (= res!105196 (= (arrayCountValidKeys!0 (_keys!6060 thiss!1504) #b00000000000000000000000000000000 (size!5228 (_keys!6060 thiss!1504))) (_size!1435 thiss!1504)))))

(declare-fun b!214927 () Bool)

(declare-fun res!105197 () Bool)

(assert (=> b!214927 (=> (not res!105197) (not e!139792))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10338 (_ BitVec 32)) Bool)

(assert (=> b!214927 (= res!105197 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6060 thiss!1504) (mask!9714 thiss!1504)))))

(declare-fun b!214928 () Bool)

(declare-datatypes ((List!3153 0))(
  ( (Nil!3150) (Cons!3149 (h!3792 (_ BitVec 64)) (t!8116 List!3153)) )
))
(declare-fun arrayNoDuplicates!0 (array!10338 (_ BitVec 32) List!3153) Bool)

(assert (=> b!214928 (= e!139792 (arrayNoDuplicates!0 (_keys!6060 thiss!1504) #b00000000000000000000000000000000 Nil!3150))))

(assert (= (and d!58291 res!105195) b!214926))

(assert (= (and b!214926 res!105196) b!214927))

(assert (= (and b!214927 res!105197) b!214928))

(declare-fun m!242381 () Bool)

(assert (=> d!58291 m!242381))

(declare-fun m!242383 () Bool)

(assert (=> b!214926 m!242383))

(declare-fun m!242385 () Bool)

(assert (=> b!214927 m!242385))

(declare-fun m!242387 () Bool)

(assert (=> b!214928 m!242387))

(assert (=> start!21392 d!58291))

(declare-fun d!58293 () Bool)

(assert (=> d!58293 (= (array_inv!3233 (_keys!6060 thiss!1504)) (bvsge (size!5228 (_keys!6060 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!214869 d!58293))

(declare-fun d!58295 () Bool)

(assert (=> d!58295 (= (array_inv!3234 (_values!4019 thiss!1504)) (bvsge (size!5227 (_values!4019 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!214869 d!58295))

(declare-fun mapIsEmpty!9473 () Bool)

(declare-fun mapRes!9473 () Bool)

(assert (=> mapIsEmpty!9473 mapRes!9473))

(declare-fun b!214936 () Bool)

(declare-fun e!139797 () Bool)

(assert (=> b!214936 (= e!139797 tp_is_empty!5559)))

(declare-fun condMapEmpty!9473 () Bool)

(declare-fun mapDefault!9473 () ValueCell!2436)

(assert (=> mapNonEmpty!9467 (= condMapEmpty!9473 (= mapRest!9467 ((as const (Array (_ BitVec 32) ValueCell!2436)) mapDefault!9473)))))

(assert (=> mapNonEmpty!9467 (= tp!20192 (and e!139797 mapRes!9473))))

(declare-fun mapNonEmpty!9473 () Bool)

(declare-fun tp!20201 () Bool)

(declare-fun e!139798 () Bool)

(assert (=> mapNonEmpty!9473 (= mapRes!9473 (and tp!20201 e!139798))))

(declare-fun mapRest!9473 () (Array (_ BitVec 32) ValueCell!2436))

(declare-fun mapValue!9473 () ValueCell!2436)

(declare-fun mapKey!9473 () (_ BitVec 32))

(assert (=> mapNonEmpty!9473 (= mapRest!9467 (store mapRest!9473 mapKey!9473 mapValue!9473))))

(declare-fun b!214935 () Bool)

(assert (=> b!214935 (= e!139798 tp_is_empty!5559)))

(assert (= (and mapNonEmpty!9467 condMapEmpty!9473) mapIsEmpty!9473))

(assert (= (and mapNonEmpty!9467 (not condMapEmpty!9473)) mapNonEmpty!9473))

(assert (= (and mapNonEmpty!9473 ((_ is ValueCellFull!2436) mapValue!9473)) b!214935))

(assert (= (and mapNonEmpty!9467 ((_ is ValueCellFull!2436) mapDefault!9473)) b!214936))

(declare-fun m!242389 () Bool)

(assert (=> mapNonEmpty!9473 m!242389))

(check-sat (not b!214919) (not b!214926) b_and!12605 (not b!214927) (not b!214928) (not d!58285) tp_is_empty!5559 (not d!58291) (not mapNonEmpty!9473) (not b_next!5697))
(check-sat b_and!12605 (not b_next!5697))
