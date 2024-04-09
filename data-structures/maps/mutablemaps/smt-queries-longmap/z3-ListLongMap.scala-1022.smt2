; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21746 () Bool)

(assert start!21746)

(declare-fun b!218638 () Bool)

(declare-fun b_free!5883 () Bool)

(declare-fun b_next!5883 () Bool)

(assert (=> b!218638 (= b_free!5883 (not b_next!5883))))

(declare-fun tp!20783 () Bool)

(declare-fun b_and!12791 () Bool)

(assert (=> b!218638 (= tp!20783 b_and!12791)))

(declare-fun b!218626 () Bool)

(declare-fun e!142248 () Bool)

(declare-fun e!142236 () Bool)

(declare-fun mapRes!9780 () Bool)

(assert (=> b!218626 (= e!142248 (and e!142236 mapRes!9780))))

(declare-fun condMapEmpty!9780 () Bool)

(declare-datatypes ((V!7307 0))(
  ( (V!7308 (val!2917 Int)) )
))
(declare-datatypes ((ValueCell!2529 0))(
  ( (ValueCellFull!2529 (v!4931 V!7307)) (EmptyCell!2529) )
))
(declare-datatypes ((array!10728 0))(
  ( (array!10729 (arr!5085 (Array (_ BitVec 32) ValueCell!2529)) (size!5417 (_ BitVec 32))) )
))
(declare-datatypes ((array!10730 0))(
  ( (array!10731 (arr!5086 (Array (_ BitVec 32) (_ BitVec 64))) (size!5418 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2958 0))(
  ( (LongMapFixedSize!2959 (defaultEntry!4129 Int) (mask!9908 (_ BitVec 32)) (extraKeys!3866 (_ BitVec 32)) (zeroValue!3970 V!7307) (minValue!3970 V!7307) (_size!1528 (_ BitVec 32)) (_keys!6178 array!10730) (_values!4112 array!10728) (_vacant!1528 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2958)

(declare-fun mapDefault!9780 () ValueCell!2529)

(assert (=> b!218626 (= condMapEmpty!9780 (= (arr!5085 (_values!4112 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2529)) mapDefault!9780)))))

(declare-fun b!218628 () Bool)

(declare-fun e!142239 () Bool)

(declare-fun e!142247 () Bool)

(assert (=> b!218628 (= e!142239 e!142247)))

(declare-fun res!107195 () Bool)

(assert (=> b!218628 (=> (not res!107195) (not e!142247))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!218628 (= res!107195 (inRange!0 index!297 (mask!9908 thiss!1504)))))

(declare-datatypes ((Unit!6515 0))(
  ( (Unit!6516) )
))
(declare-fun lt!111605 () Unit!6515)

(declare-fun e!142240 () Unit!6515)

(assert (=> b!218628 (= lt!111605 e!142240)))

(declare-fun c!36353 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4328 0))(
  ( (tuple2!4329 (_1!2174 (_ BitVec 64)) (_2!2174 V!7307)) )
))
(declare-datatypes ((List!3255 0))(
  ( (Nil!3252) (Cons!3251 (h!3898 tuple2!4328) (t!8218 List!3255)) )
))
(declare-datatypes ((ListLongMap!3255 0))(
  ( (ListLongMap!3256 (toList!1643 List!3255)) )
))
(declare-fun contains!1478 (ListLongMap!3255 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1166 (array!10730 array!10728 (_ BitVec 32) (_ BitVec 32) V!7307 V!7307 (_ BitVec 32) Int) ListLongMap!3255)

(assert (=> b!218628 (= c!36353 (contains!1478 (getCurrentListMap!1166 (_keys!6178 thiss!1504) (_values!4112 thiss!1504) (mask!9908 thiss!1504) (extraKeys!3866 thiss!1504) (zeroValue!3970 thiss!1504) (minValue!3970 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4129 thiss!1504)) key!932))))

(declare-fun b!218629 () Bool)

(declare-fun e!142243 () Bool)

(declare-datatypes ((SeekEntryResult!802 0))(
  ( (MissingZero!802 (index!5378 (_ BitVec 32))) (Found!802 (index!5379 (_ BitVec 32))) (Intermediate!802 (undefined!1614 Bool) (index!5380 (_ BitVec 32)) (x!22866 (_ BitVec 32))) (Undefined!802) (MissingVacant!802 (index!5381 (_ BitVec 32))) )
))
(declare-fun lt!111606 () SeekEntryResult!802)

(get-info :version)

(assert (=> b!218629 (= e!142243 ((_ is Undefined!802) lt!111606))))

(declare-fun c!36354 () Bool)

(declare-fun call!20410 () Bool)

(declare-fun bm!20406 () Bool)

(assert (=> bm!20406 (= call!20410 (inRange!0 (ite c!36354 (index!5378 lt!111606) (index!5381 lt!111606)) (mask!9908 thiss!1504)))))

(declare-fun b!218630 () Bool)

(declare-fun res!107198 () Bool)

(declare-fun e!142241 () Bool)

(assert (=> b!218630 (=> (not res!107198) (not e!142241))))

(assert (=> b!218630 (= res!107198 (= (select (arr!5086 (_keys!6178 thiss!1504)) (index!5378 lt!111606)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!218631 () Bool)

(declare-fun e!142245 () Bool)

(declare-fun call!20409 () Bool)

(assert (=> b!218631 (= e!142245 (not call!20409))))

(declare-fun b!218632 () Bool)

(declare-fun res!107200 () Bool)

(assert (=> b!218632 (=> (not res!107200) (not e!142241))))

(assert (=> b!218632 (= res!107200 call!20410)))

(declare-fun e!142246 () Bool)

(assert (=> b!218632 (= e!142246 e!142241)))

(declare-fun b!218633 () Bool)

(assert (=> b!218633 (= e!142247 (bvsge #b00000000000000000000000000000000 (size!5418 (_keys!6178 thiss!1504))))))

(declare-fun bm!20407 () Bool)

(declare-fun arrayContainsKey!0 (array!10730 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!20407 (= call!20409 (arrayContainsKey!0 (_keys!6178 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!218634 () Bool)

(declare-fun Unit!6517 () Unit!6515)

(assert (=> b!218634 (= e!142240 Unit!6517)))

(declare-fun lt!111607 () Unit!6515)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!190 (array!10730 array!10728 (_ BitVec 32) (_ BitVec 32) V!7307 V!7307 (_ BitVec 64) Int) Unit!6515)

(assert (=> b!218634 (= lt!111607 (lemmaInListMapThenSeekEntryOrOpenFindsIt!190 (_keys!6178 thiss!1504) (_values!4112 thiss!1504) (mask!9908 thiss!1504) (extraKeys!3866 thiss!1504) (zeroValue!3970 thiss!1504) (minValue!3970 thiss!1504) key!932 (defaultEntry!4129 thiss!1504)))))

(assert (=> b!218634 false))

(declare-fun b!218635 () Bool)

(declare-fun c!36355 () Bool)

(assert (=> b!218635 (= c!36355 ((_ is MissingVacant!802) lt!111606))))

(assert (=> b!218635 (= e!142246 e!142243)))

(declare-fun mapIsEmpty!9780 () Bool)

(assert (=> mapIsEmpty!9780 mapRes!9780))

(declare-fun b!218636 () Bool)

(declare-fun e!142244 () Bool)

(assert (=> b!218636 (= e!142244 e!142239)))

(declare-fun res!107199 () Bool)

(assert (=> b!218636 (=> (not res!107199) (not e!142239))))

(assert (=> b!218636 (= res!107199 (or (= lt!111606 (MissingZero!802 index!297)) (= lt!111606 (MissingVacant!802 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10730 (_ BitVec 32)) SeekEntryResult!802)

(assert (=> b!218636 (= lt!111606 (seekEntryOrOpen!0 key!932 (_keys!6178 thiss!1504) (mask!9908 thiss!1504)))))

(declare-fun b!218637 () Bool)

(declare-fun e!142242 () Bool)

(declare-fun tp_is_empty!5745 () Bool)

(assert (=> b!218637 (= e!142242 tp_is_empty!5745)))

(declare-fun e!142237 () Bool)

(declare-fun array_inv!3357 (array!10730) Bool)

(declare-fun array_inv!3358 (array!10728) Bool)

(assert (=> b!218638 (= e!142237 (and tp!20783 tp_is_empty!5745 (array_inv!3357 (_keys!6178 thiss!1504)) (array_inv!3358 (_values!4112 thiss!1504)) e!142248))))

(declare-fun res!107201 () Bool)

(assert (=> start!21746 (=> (not res!107201) (not e!142244))))

(declare-fun valid!1189 (LongMapFixedSize!2958) Bool)

(assert (=> start!21746 (= res!107201 (valid!1189 thiss!1504))))

(assert (=> start!21746 e!142244))

(assert (=> start!21746 e!142237))

(assert (=> start!21746 true))

(declare-fun b!218627 () Bool)

(assert (=> b!218627 (= e!142236 tp_is_empty!5745)))

(declare-fun mapNonEmpty!9780 () Bool)

(declare-fun tp!20784 () Bool)

(assert (=> mapNonEmpty!9780 (= mapRes!9780 (and tp!20784 e!142242))))

(declare-fun mapValue!9780 () ValueCell!2529)

(declare-fun mapRest!9780 () (Array (_ BitVec 32) ValueCell!2529))

(declare-fun mapKey!9780 () (_ BitVec 32))

(assert (=> mapNonEmpty!9780 (= (arr!5085 (_values!4112 thiss!1504)) (store mapRest!9780 mapKey!9780 mapValue!9780))))

(declare-fun b!218639 () Bool)

(declare-fun lt!111604 () Unit!6515)

(assert (=> b!218639 (= e!142240 lt!111604)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!200 (array!10730 array!10728 (_ BitVec 32) (_ BitVec 32) V!7307 V!7307 (_ BitVec 64) Int) Unit!6515)

(assert (=> b!218639 (= lt!111604 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!200 (_keys!6178 thiss!1504) (_values!4112 thiss!1504) (mask!9908 thiss!1504) (extraKeys!3866 thiss!1504) (zeroValue!3970 thiss!1504) (minValue!3970 thiss!1504) key!932 (defaultEntry!4129 thiss!1504)))))

(assert (=> b!218639 (= c!36354 ((_ is MissingZero!802) lt!111606))))

(assert (=> b!218639 e!142246))

(declare-fun b!218640 () Bool)

(declare-fun res!107197 () Bool)

(assert (=> b!218640 (= res!107197 (= (select (arr!5086 (_keys!6178 thiss!1504)) (index!5381 lt!111606)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!218640 (=> (not res!107197) (not e!142245))))

(declare-fun b!218641 () Bool)

(declare-fun res!107202 () Bool)

(assert (=> b!218641 (=> (not res!107202) (not e!142244))))

(assert (=> b!218641 (= res!107202 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!218642 () Bool)

(assert (=> b!218642 (= e!142241 (not call!20409))))

(declare-fun b!218643 () Bool)

(assert (=> b!218643 (= e!142243 e!142245)))

(declare-fun res!107196 () Bool)

(assert (=> b!218643 (= res!107196 call!20410)))

(assert (=> b!218643 (=> (not res!107196) (not e!142245))))

(assert (= (and start!21746 res!107201) b!218641))

(assert (= (and b!218641 res!107202) b!218636))

(assert (= (and b!218636 res!107199) b!218628))

(assert (= (and b!218628 c!36353) b!218634))

(assert (= (and b!218628 (not c!36353)) b!218639))

(assert (= (and b!218639 c!36354) b!218632))

(assert (= (and b!218639 (not c!36354)) b!218635))

(assert (= (and b!218632 res!107200) b!218630))

(assert (= (and b!218630 res!107198) b!218642))

(assert (= (and b!218635 c!36355) b!218643))

(assert (= (and b!218635 (not c!36355)) b!218629))

(assert (= (and b!218643 res!107196) b!218640))

(assert (= (and b!218640 res!107197) b!218631))

(assert (= (or b!218632 b!218643) bm!20406))

(assert (= (or b!218642 b!218631) bm!20407))

(assert (= (and b!218628 res!107195) b!218633))

(assert (= (and b!218626 condMapEmpty!9780) mapIsEmpty!9780))

(assert (= (and b!218626 (not condMapEmpty!9780)) mapNonEmpty!9780))

(assert (= (and mapNonEmpty!9780 ((_ is ValueCellFull!2529) mapValue!9780)) b!218637))

(assert (= (and b!218626 ((_ is ValueCellFull!2529) mapDefault!9780)) b!218627))

(assert (= b!218638 b!218626))

(assert (= start!21746 b!218638))

(declare-fun m!244453 () Bool)

(assert (=> b!218628 m!244453))

(declare-fun m!244455 () Bool)

(assert (=> b!218628 m!244455))

(assert (=> b!218628 m!244455))

(declare-fun m!244457 () Bool)

(assert (=> b!218628 m!244457))

(declare-fun m!244459 () Bool)

(assert (=> b!218640 m!244459))

(declare-fun m!244461 () Bool)

(assert (=> bm!20407 m!244461))

(declare-fun m!244463 () Bool)

(assert (=> b!218639 m!244463))

(declare-fun m!244465 () Bool)

(assert (=> b!218630 m!244465))

(declare-fun m!244467 () Bool)

(assert (=> b!218636 m!244467))

(declare-fun m!244469 () Bool)

(assert (=> start!21746 m!244469))

(declare-fun m!244471 () Bool)

(assert (=> mapNonEmpty!9780 m!244471))

(declare-fun m!244473 () Bool)

(assert (=> bm!20406 m!244473))

(declare-fun m!244475 () Bool)

(assert (=> b!218634 m!244475))

(declare-fun m!244477 () Bool)

(assert (=> b!218638 m!244477))

(declare-fun m!244479 () Bool)

(assert (=> b!218638 m!244479))

(check-sat (not b!218634) (not start!21746) (not b_next!5883) (not b!218636) (not b!218628) tp_is_empty!5745 (not bm!20406) (not b!218639) (not b!218638) b_and!12791 (not mapNonEmpty!9780) (not bm!20407))
(check-sat b_and!12791 (not b_next!5883))
(get-model)

(declare-fun lt!111626 () SeekEntryResult!802)

(declare-fun b!218710 () Bool)

(declare-fun e!142295 () SeekEntryResult!802)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!10730 (_ BitVec 32)) SeekEntryResult!802)

(assert (=> b!218710 (= e!142295 (seekKeyOrZeroReturnVacant!0 (x!22866 lt!111626) (index!5380 lt!111626) (index!5380 lt!111626) key!932 (_keys!6178 thiss!1504) (mask!9908 thiss!1504)))))

(declare-fun b!218711 () Bool)

(assert (=> b!218711 (= e!142295 (MissingZero!802 (index!5380 lt!111626)))))

(declare-fun d!58515 () Bool)

(declare-fun lt!111627 () SeekEntryResult!802)

(assert (=> d!58515 (and (or ((_ is Undefined!802) lt!111627) (not ((_ is Found!802) lt!111627)) (and (bvsge (index!5379 lt!111627) #b00000000000000000000000000000000) (bvslt (index!5379 lt!111627) (size!5418 (_keys!6178 thiss!1504))))) (or ((_ is Undefined!802) lt!111627) ((_ is Found!802) lt!111627) (not ((_ is MissingZero!802) lt!111627)) (and (bvsge (index!5378 lt!111627) #b00000000000000000000000000000000) (bvslt (index!5378 lt!111627) (size!5418 (_keys!6178 thiss!1504))))) (or ((_ is Undefined!802) lt!111627) ((_ is Found!802) lt!111627) ((_ is MissingZero!802) lt!111627) (not ((_ is MissingVacant!802) lt!111627)) (and (bvsge (index!5381 lt!111627) #b00000000000000000000000000000000) (bvslt (index!5381 lt!111627) (size!5418 (_keys!6178 thiss!1504))))) (or ((_ is Undefined!802) lt!111627) (ite ((_ is Found!802) lt!111627) (= (select (arr!5086 (_keys!6178 thiss!1504)) (index!5379 lt!111627)) key!932) (ite ((_ is MissingZero!802) lt!111627) (= (select (arr!5086 (_keys!6178 thiss!1504)) (index!5378 lt!111627)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!802) lt!111627) (= (select (arr!5086 (_keys!6178 thiss!1504)) (index!5381 lt!111627)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!142296 () SeekEntryResult!802)

(assert (=> d!58515 (= lt!111627 e!142296)))

(declare-fun c!36371 () Bool)

(assert (=> d!58515 (= c!36371 (and ((_ is Intermediate!802) lt!111626) (undefined!1614 lt!111626)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!10730 (_ BitVec 32)) SeekEntryResult!802)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!58515 (= lt!111626 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!9908 thiss!1504)) key!932 (_keys!6178 thiss!1504) (mask!9908 thiss!1504)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!58515 (validMask!0 (mask!9908 thiss!1504))))

(assert (=> d!58515 (= (seekEntryOrOpen!0 key!932 (_keys!6178 thiss!1504) (mask!9908 thiss!1504)) lt!111627)))

(declare-fun b!218712 () Bool)

(assert (=> b!218712 (= e!142296 Undefined!802)))

(declare-fun b!218713 () Bool)

(declare-fun e!142294 () SeekEntryResult!802)

(assert (=> b!218713 (= e!142294 (Found!802 (index!5380 lt!111626)))))

(declare-fun b!218714 () Bool)

(assert (=> b!218714 (= e!142296 e!142294)))

(declare-fun lt!111628 () (_ BitVec 64))

(assert (=> b!218714 (= lt!111628 (select (arr!5086 (_keys!6178 thiss!1504)) (index!5380 lt!111626)))))

(declare-fun c!36373 () Bool)

(assert (=> b!218714 (= c!36373 (= lt!111628 key!932))))

(declare-fun b!218715 () Bool)

(declare-fun c!36372 () Bool)

(assert (=> b!218715 (= c!36372 (= lt!111628 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!218715 (= e!142294 e!142295)))

(assert (= (and d!58515 c!36371) b!218712))

(assert (= (and d!58515 (not c!36371)) b!218714))

(assert (= (and b!218714 c!36373) b!218713))

(assert (= (and b!218714 (not c!36373)) b!218715))

(assert (= (and b!218715 c!36372) b!218711))

(assert (= (and b!218715 (not c!36372)) b!218710))

(declare-fun m!244509 () Bool)

(assert (=> b!218710 m!244509))

(declare-fun m!244511 () Bool)

(assert (=> d!58515 m!244511))

(declare-fun m!244513 () Bool)

(assert (=> d!58515 m!244513))

(declare-fun m!244515 () Bool)

(assert (=> d!58515 m!244515))

(declare-fun m!244517 () Bool)

(assert (=> d!58515 m!244517))

(assert (=> d!58515 m!244517))

(declare-fun m!244519 () Bool)

(assert (=> d!58515 m!244519))

(declare-fun m!244521 () Bool)

(assert (=> d!58515 m!244521))

(declare-fun m!244523 () Bool)

(assert (=> b!218714 m!244523))

(assert (=> b!218636 d!58515))

(declare-fun d!58517 () Bool)

(assert (=> d!58517 (= (inRange!0 index!297 (mask!9908 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!9908 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!218628 d!58517))

(declare-fun d!58519 () Bool)

(declare-fun e!142302 () Bool)

(assert (=> d!58519 e!142302))

(declare-fun res!107229 () Bool)

(assert (=> d!58519 (=> res!107229 e!142302)))

(declare-fun lt!111637 () Bool)

(assert (=> d!58519 (= res!107229 (not lt!111637))))

(declare-fun lt!111638 () Bool)

(assert (=> d!58519 (= lt!111637 lt!111638)))

(declare-fun lt!111639 () Unit!6515)

(declare-fun e!142301 () Unit!6515)

(assert (=> d!58519 (= lt!111639 e!142301)))

(declare-fun c!36376 () Bool)

(assert (=> d!58519 (= c!36376 lt!111638)))

(declare-fun containsKey!250 (List!3255 (_ BitVec 64)) Bool)

(assert (=> d!58519 (= lt!111638 (containsKey!250 (toList!1643 (getCurrentListMap!1166 (_keys!6178 thiss!1504) (_values!4112 thiss!1504) (mask!9908 thiss!1504) (extraKeys!3866 thiss!1504) (zeroValue!3970 thiss!1504) (minValue!3970 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4129 thiss!1504))) key!932))))

(assert (=> d!58519 (= (contains!1478 (getCurrentListMap!1166 (_keys!6178 thiss!1504) (_values!4112 thiss!1504) (mask!9908 thiss!1504) (extraKeys!3866 thiss!1504) (zeroValue!3970 thiss!1504) (minValue!3970 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4129 thiss!1504)) key!932) lt!111637)))

(declare-fun b!218722 () Bool)

(declare-fun lt!111640 () Unit!6515)

(assert (=> b!218722 (= e!142301 lt!111640)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!199 (List!3255 (_ BitVec 64)) Unit!6515)

(assert (=> b!218722 (= lt!111640 (lemmaContainsKeyImpliesGetValueByKeyDefined!199 (toList!1643 (getCurrentListMap!1166 (_keys!6178 thiss!1504) (_values!4112 thiss!1504) (mask!9908 thiss!1504) (extraKeys!3866 thiss!1504) (zeroValue!3970 thiss!1504) (minValue!3970 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4129 thiss!1504))) key!932))))

(declare-datatypes ((Option!264 0))(
  ( (Some!263 (v!4933 V!7307)) (None!262) )
))
(declare-fun isDefined!200 (Option!264) Bool)

(declare-fun getValueByKey!258 (List!3255 (_ BitVec 64)) Option!264)

(assert (=> b!218722 (isDefined!200 (getValueByKey!258 (toList!1643 (getCurrentListMap!1166 (_keys!6178 thiss!1504) (_values!4112 thiss!1504) (mask!9908 thiss!1504) (extraKeys!3866 thiss!1504) (zeroValue!3970 thiss!1504) (minValue!3970 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4129 thiss!1504))) key!932))))

(declare-fun b!218723 () Bool)

(declare-fun Unit!6521 () Unit!6515)

(assert (=> b!218723 (= e!142301 Unit!6521)))

(declare-fun b!218724 () Bool)

(assert (=> b!218724 (= e!142302 (isDefined!200 (getValueByKey!258 (toList!1643 (getCurrentListMap!1166 (_keys!6178 thiss!1504) (_values!4112 thiss!1504) (mask!9908 thiss!1504) (extraKeys!3866 thiss!1504) (zeroValue!3970 thiss!1504) (minValue!3970 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4129 thiss!1504))) key!932)))))

(assert (= (and d!58519 c!36376) b!218722))

(assert (= (and d!58519 (not c!36376)) b!218723))

(assert (= (and d!58519 (not res!107229)) b!218724))

(declare-fun m!244525 () Bool)

(assert (=> d!58519 m!244525))

(declare-fun m!244527 () Bool)

(assert (=> b!218722 m!244527))

(declare-fun m!244529 () Bool)

(assert (=> b!218722 m!244529))

(assert (=> b!218722 m!244529))

(declare-fun m!244531 () Bool)

(assert (=> b!218722 m!244531))

(assert (=> b!218724 m!244529))

(assert (=> b!218724 m!244529))

(assert (=> b!218724 m!244531))

(assert (=> b!218628 d!58519))

(declare-fun b!218767 () Bool)

(declare-fun e!142337 () ListLongMap!3255)

(declare-fun call!20436 () ListLongMap!3255)

(declare-fun +!591 (ListLongMap!3255 tuple2!4328) ListLongMap!3255)

(assert (=> b!218767 (= e!142337 (+!591 call!20436 (tuple2!4329 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3970 thiss!1504))))))

(declare-fun bm!20429 () Bool)

(declare-fun call!20433 () Bool)

(declare-fun lt!111699 () ListLongMap!3255)

(assert (=> bm!20429 (= call!20433 (contains!1478 lt!111699 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!218768 () Bool)

(declare-fun res!107252 () Bool)

(declare-fun e!142329 () Bool)

(assert (=> b!218768 (=> (not res!107252) (not e!142329))))

(declare-fun e!142333 () Bool)

(assert (=> b!218768 (= res!107252 e!142333)))

(declare-fun c!36394 () Bool)

(assert (=> b!218768 (= c!36394 (not (= (bvand (extraKeys!3866 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!218769 () Bool)

(declare-fun e!142335 () Bool)

(declare-fun apply!201 (ListLongMap!3255 (_ BitVec 64)) V!7307)

(assert (=> b!218769 (= e!142335 (= (apply!201 lt!111699 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3970 thiss!1504)))))

(declare-fun b!218770 () Bool)

(declare-fun e!142339 () ListLongMap!3255)

(declare-fun call!20431 () ListLongMap!3255)

(assert (=> b!218770 (= e!142339 call!20431)))

(declare-fun bm!20430 () Bool)

(declare-fun call!20434 () Bool)

(assert (=> bm!20430 (= call!20434 (contains!1478 lt!111699 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!218771 () Bool)

(declare-fun e!142334 () Bool)

(declare-fun e!142331 () Bool)

(assert (=> b!218771 (= e!142334 e!142331)))

(declare-fun res!107250 () Bool)

(assert (=> b!218771 (= res!107250 call!20434)))

(assert (=> b!218771 (=> (not res!107250) (not e!142331))))

(declare-fun b!218772 () Bool)

(declare-fun e!142336 () Bool)

(declare-fun get!2672 (ValueCell!2529 V!7307) V!7307)

(declare-fun dynLambda!539 (Int (_ BitVec 64)) V!7307)

(assert (=> b!218772 (= e!142336 (= (apply!201 lt!111699 (select (arr!5086 (_keys!6178 thiss!1504)) #b00000000000000000000000000000000)) (get!2672 (select (arr!5085 (_values!4112 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!539 (defaultEntry!4129 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!218772 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5417 (_values!4112 thiss!1504))))))

(assert (=> b!218772 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5418 (_keys!6178 thiss!1504))))))

(declare-fun b!218773 () Bool)

(assert (=> b!218773 (= e!142333 (not call!20433))))

(declare-fun bm!20428 () Bool)

(declare-fun call!20432 () ListLongMap!3255)

(assert (=> bm!20428 (= call!20432 call!20436)))

(declare-fun d!58521 () Bool)

(assert (=> d!58521 e!142329))

(declare-fun res!107248 () Bool)

(assert (=> d!58521 (=> (not res!107248) (not e!142329))))

(assert (=> d!58521 (= res!107248 (or (bvsge #b00000000000000000000000000000000 (size!5418 (_keys!6178 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5418 (_keys!6178 thiss!1504))))))))

(declare-fun lt!111689 () ListLongMap!3255)

(assert (=> d!58521 (= lt!111699 lt!111689)))

(declare-fun lt!111685 () Unit!6515)

(declare-fun e!142340 () Unit!6515)

(assert (=> d!58521 (= lt!111685 e!142340)))

(declare-fun c!36392 () Bool)

(declare-fun e!142338 () Bool)

(assert (=> d!58521 (= c!36392 e!142338)))

(declare-fun res!107254 () Bool)

(assert (=> d!58521 (=> (not res!107254) (not e!142338))))

(assert (=> d!58521 (= res!107254 (bvslt #b00000000000000000000000000000000 (size!5418 (_keys!6178 thiss!1504))))))

(assert (=> d!58521 (= lt!111689 e!142337)))

(declare-fun c!36391 () Bool)

(assert (=> d!58521 (= c!36391 (and (not (= (bvand (extraKeys!3866 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3866 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!58521 (validMask!0 (mask!9908 thiss!1504))))

(assert (=> d!58521 (= (getCurrentListMap!1166 (_keys!6178 thiss!1504) (_values!4112 thiss!1504) (mask!9908 thiss!1504) (extraKeys!3866 thiss!1504) (zeroValue!3970 thiss!1504) (minValue!3970 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4129 thiss!1504)) lt!111699)))

(declare-fun b!218774 () Bool)

(assert (=> b!218774 (= e!142329 e!142334)))

(declare-fun c!36389 () Bool)

(assert (=> b!218774 (= c!36389 (not (= (bvand (extraKeys!3866 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!218775 () Bool)

(declare-fun e!142341 () ListLongMap!3255)

(assert (=> b!218775 (= e!142341 call!20432)))

(declare-fun b!218776 () Bool)

(assert (=> b!218776 (= e!142334 (not call!20434))))

(declare-fun b!218777 () Bool)

(assert (=> b!218777 (= e!142337 e!142341)))

(declare-fun c!36393 () Bool)

(assert (=> b!218777 (= c!36393 (and (not (= (bvand (extraKeys!3866 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3866 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun call!20437 () ListLongMap!3255)

(declare-fun bm!20431 () Bool)

(declare-fun call!20435 () ListLongMap!3255)

(assert (=> bm!20431 (= call!20436 (+!591 (ite c!36391 call!20437 (ite c!36393 call!20435 call!20431)) (ite (or c!36391 c!36393) (tuple2!4329 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3970 thiss!1504)) (tuple2!4329 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3970 thiss!1504)))))))

(declare-fun b!218778 () Bool)

(declare-fun Unit!6522 () Unit!6515)

(assert (=> b!218778 (= e!142340 Unit!6522)))

(declare-fun bm!20432 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!520 (array!10730 array!10728 (_ BitVec 32) (_ BitVec 32) V!7307 V!7307 (_ BitVec 32) Int) ListLongMap!3255)

(assert (=> bm!20432 (= call!20437 (getCurrentListMapNoExtraKeys!520 (_keys!6178 thiss!1504) (_values!4112 thiss!1504) (mask!9908 thiss!1504) (extraKeys!3866 thiss!1504) (zeroValue!3970 thiss!1504) (minValue!3970 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4129 thiss!1504)))))

(declare-fun bm!20433 () Bool)

(assert (=> bm!20433 (= call!20435 call!20437)))

(declare-fun b!218779 () Bool)

(assert (=> b!218779 (= e!142331 (= (apply!201 lt!111699 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3970 thiss!1504)))))

(declare-fun b!218780 () Bool)

(assert (=> b!218780 (= e!142339 call!20432)))

(declare-fun b!218781 () Bool)

(assert (=> b!218781 (= e!142333 e!142335)))

(declare-fun res!107251 () Bool)

(assert (=> b!218781 (= res!107251 call!20433)))

(assert (=> b!218781 (=> (not res!107251) (not e!142335))))

(declare-fun b!218782 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!218782 (= e!142338 (validKeyInArray!0 (select (arr!5086 (_keys!6178 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!218783 () Bool)

(declare-fun res!107255 () Bool)

(assert (=> b!218783 (=> (not res!107255) (not e!142329))))

(declare-fun e!142332 () Bool)

(assert (=> b!218783 (= res!107255 e!142332)))

(declare-fun res!107249 () Bool)

(assert (=> b!218783 (=> res!107249 e!142332)))

(declare-fun e!142330 () Bool)

(assert (=> b!218783 (= res!107249 (not e!142330))))

(declare-fun res!107256 () Bool)

(assert (=> b!218783 (=> (not res!107256) (not e!142330))))

(assert (=> b!218783 (= res!107256 (bvslt #b00000000000000000000000000000000 (size!5418 (_keys!6178 thiss!1504))))))

(declare-fun bm!20434 () Bool)

(assert (=> bm!20434 (= call!20431 call!20435)))

(declare-fun b!218784 () Bool)

(declare-fun lt!111705 () Unit!6515)

(assert (=> b!218784 (= e!142340 lt!111705)))

(declare-fun lt!111702 () ListLongMap!3255)

(assert (=> b!218784 (= lt!111702 (getCurrentListMapNoExtraKeys!520 (_keys!6178 thiss!1504) (_values!4112 thiss!1504) (mask!9908 thiss!1504) (extraKeys!3866 thiss!1504) (zeroValue!3970 thiss!1504) (minValue!3970 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4129 thiss!1504)))))

(declare-fun lt!111703 () (_ BitVec 64))

(assert (=> b!218784 (= lt!111703 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!111700 () (_ BitVec 64))

(assert (=> b!218784 (= lt!111700 (select (arr!5086 (_keys!6178 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!111704 () Unit!6515)

(declare-fun addStillContains!177 (ListLongMap!3255 (_ BitVec 64) V!7307 (_ BitVec 64)) Unit!6515)

(assert (=> b!218784 (= lt!111704 (addStillContains!177 lt!111702 lt!111703 (zeroValue!3970 thiss!1504) lt!111700))))

(assert (=> b!218784 (contains!1478 (+!591 lt!111702 (tuple2!4329 lt!111703 (zeroValue!3970 thiss!1504))) lt!111700)))

(declare-fun lt!111690 () Unit!6515)

(assert (=> b!218784 (= lt!111690 lt!111704)))

(declare-fun lt!111687 () ListLongMap!3255)

(assert (=> b!218784 (= lt!111687 (getCurrentListMapNoExtraKeys!520 (_keys!6178 thiss!1504) (_values!4112 thiss!1504) (mask!9908 thiss!1504) (extraKeys!3866 thiss!1504) (zeroValue!3970 thiss!1504) (minValue!3970 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4129 thiss!1504)))))

(declare-fun lt!111695 () (_ BitVec 64))

(assert (=> b!218784 (= lt!111695 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!111691 () (_ BitVec 64))

(assert (=> b!218784 (= lt!111691 (select (arr!5086 (_keys!6178 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!111693 () Unit!6515)

(declare-fun addApplyDifferent!177 (ListLongMap!3255 (_ BitVec 64) V!7307 (_ BitVec 64)) Unit!6515)

(assert (=> b!218784 (= lt!111693 (addApplyDifferent!177 lt!111687 lt!111695 (minValue!3970 thiss!1504) lt!111691))))

(assert (=> b!218784 (= (apply!201 (+!591 lt!111687 (tuple2!4329 lt!111695 (minValue!3970 thiss!1504))) lt!111691) (apply!201 lt!111687 lt!111691))))

(declare-fun lt!111692 () Unit!6515)

(assert (=> b!218784 (= lt!111692 lt!111693)))

(declare-fun lt!111701 () ListLongMap!3255)

(assert (=> b!218784 (= lt!111701 (getCurrentListMapNoExtraKeys!520 (_keys!6178 thiss!1504) (_values!4112 thiss!1504) (mask!9908 thiss!1504) (extraKeys!3866 thiss!1504) (zeroValue!3970 thiss!1504) (minValue!3970 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4129 thiss!1504)))))

(declare-fun lt!111686 () (_ BitVec 64))

(assert (=> b!218784 (= lt!111686 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!111697 () (_ BitVec 64))

(assert (=> b!218784 (= lt!111697 (select (arr!5086 (_keys!6178 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!111696 () Unit!6515)

(assert (=> b!218784 (= lt!111696 (addApplyDifferent!177 lt!111701 lt!111686 (zeroValue!3970 thiss!1504) lt!111697))))

(assert (=> b!218784 (= (apply!201 (+!591 lt!111701 (tuple2!4329 lt!111686 (zeroValue!3970 thiss!1504))) lt!111697) (apply!201 lt!111701 lt!111697))))

(declare-fun lt!111698 () Unit!6515)

(assert (=> b!218784 (= lt!111698 lt!111696)))

(declare-fun lt!111694 () ListLongMap!3255)

(assert (=> b!218784 (= lt!111694 (getCurrentListMapNoExtraKeys!520 (_keys!6178 thiss!1504) (_values!4112 thiss!1504) (mask!9908 thiss!1504) (extraKeys!3866 thiss!1504) (zeroValue!3970 thiss!1504) (minValue!3970 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4129 thiss!1504)))))

(declare-fun lt!111706 () (_ BitVec 64))

(assert (=> b!218784 (= lt!111706 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!111688 () (_ BitVec 64))

(assert (=> b!218784 (= lt!111688 (select (arr!5086 (_keys!6178 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!218784 (= lt!111705 (addApplyDifferent!177 lt!111694 lt!111706 (minValue!3970 thiss!1504) lt!111688))))

(assert (=> b!218784 (= (apply!201 (+!591 lt!111694 (tuple2!4329 lt!111706 (minValue!3970 thiss!1504))) lt!111688) (apply!201 lt!111694 lt!111688))))

(declare-fun b!218785 () Bool)

(assert (=> b!218785 (= e!142332 e!142336)))

(declare-fun res!107253 () Bool)

(assert (=> b!218785 (=> (not res!107253) (not e!142336))))

(assert (=> b!218785 (= res!107253 (contains!1478 lt!111699 (select (arr!5086 (_keys!6178 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!218785 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5418 (_keys!6178 thiss!1504))))))

(declare-fun b!218786 () Bool)

(assert (=> b!218786 (= e!142330 (validKeyInArray!0 (select (arr!5086 (_keys!6178 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!218787 () Bool)

(declare-fun c!36390 () Bool)

(assert (=> b!218787 (= c!36390 (and (not (= (bvand (extraKeys!3866 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3866 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!218787 (= e!142341 e!142339)))

(assert (= (and d!58521 c!36391) b!218767))

(assert (= (and d!58521 (not c!36391)) b!218777))

(assert (= (and b!218777 c!36393) b!218775))

(assert (= (and b!218777 (not c!36393)) b!218787))

(assert (= (and b!218787 c!36390) b!218780))

(assert (= (and b!218787 (not c!36390)) b!218770))

(assert (= (or b!218780 b!218770) bm!20434))

(assert (= (or b!218775 bm!20434) bm!20433))

(assert (= (or b!218775 b!218780) bm!20428))

(assert (= (or b!218767 bm!20433) bm!20432))

(assert (= (or b!218767 bm!20428) bm!20431))

(assert (= (and d!58521 res!107254) b!218782))

(assert (= (and d!58521 c!36392) b!218784))

(assert (= (and d!58521 (not c!36392)) b!218778))

(assert (= (and d!58521 res!107248) b!218783))

(assert (= (and b!218783 res!107256) b!218786))

(assert (= (and b!218783 (not res!107249)) b!218785))

(assert (= (and b!218785 res!107253) b!218772))

(assert (= (and b!218783 res!107255) b!218768))

(assert (= (and b!218768 c!36394) b!218781))

(assert (= (and b!218768 (not c!36394)) b!218773))

(assert (= (and b!218781 res!107251) b!218769))

(assert (= (or b!218781 b!218773) bm!20429))

(assert (= (and b!218768 res!107252) b!218774))

(assert (= (and b!218774 c!36389) b!218771))

(assert (= (and b!218774 (not c!36389)) b!218776))

(assert (= (and b!218771 res!107250) b!218779))

(assert (= (or b!218771 b!218776) bm!20430))

(declare-fun b_lambda!7857 () Bool)

(assert (=> (not b_lambda!7857) (not b!218772)))

(declare-fun t!8220 () Bool)

(declare-fun tb!2923 () Bool)

(assert (=> (and b!218638 (= (defaultEntry!4129 thiss!1504) (defaultEntry!4129 thiss!1504)) t!8220) tb!2923))

(declare-fun result!5075 () Bool)

(assert (=> tb!2923 (= result!5075 tp_is_empty!5745)))

(assert (=> b!218772 t!8220))

(declare-fun b_and!12795 () Bool)

(assert (= b_and!12791 (and (=> t!8220 result!5075) b_and!12795)))

(declare-fun m!244533 () Bool)

(assert (=> b!218786 m!244533))

(assert (=> b!218786 m!244533))

(declare-fun m!244535 () Bool)

(assert (=> b!218786 m!244535))

(declare-fun m!244537 () Bool)

(assert (=> b!218784 m!244537))

(declare-fun m!244539 () Bool)

(assert (=> b!218784 m!244539))

(declare-fun m!244541 () Bool)

(assert (=> b!218784 m!244541))

(declare-fun m!244543 () Bool)

(assert (=> b!218784 m!244543))

(declare-fun m!244545 () Bool)

(assert (=> b!218784 m!244545))

(declare-fun m!244547 () Bool)

(assert (=> b!218784 m!244547))

(declare-fun m!244549 () Bool)

(assert (=> b!218784 m!244549))

(declare-fun m!244551 () Bool)

(assert (=> b!218784 m!244551))

(declare-fun m!244553 () Bool)

(assert (=> b!218784 m!244553))

(assert (=> b!218784 m!244547))

(declare-fun m!244555 () Bool)

(assert (=> b!218784 m!244555))

(assert (=> b!218784 m!244537))

(declare-fun m!244557 () Bool)

(assert (=> b!218784 m!244557))

(assert (=> b!218784 m!244533))

(declare-fun m!244559 () Bool)

(assert (=> b!218784 m!244559))

(assert (=> b!218784 m!244543))

(declare-fun m!244561 () Bool)

(assert (=> b!218784 m!244561))

(declare-fun m!244563 () Bool)

(assert (=> b!218784 m!244563))

(assert (=> b!218784 m!244539))

(declare-fun m!244565 () Bool)

(assert (=> b!218784 m!244565))

(declare-fun m!244567 () Bool)

(assert (=> b!218784 m!244567))

(declare-fun m!244569 () Bool)

(assert (=> b!218767 m!244569))

(declare-fun m!244571 () Bool)

(assert (=> b!218779 m!244571))

(declare-fun m!244573 () Bool)

(assert (=> b!218769 m!244573))

(declare-fun m!244575 () Bool)

(assert (=> bm!20430 m!244575))

(assert (=> d!58521 m!244515))

(assert (=> bm!20432 m!244541))

(assert (=> b!218782 m!244533))

(assert (=> b!218782 m!244533))

(assert (=> b!218782 m!244535))

(assert (=> b!218785 m!244533))

(assert (=> b!218785 m!244533))

(declare-fun m!244577 () Bool)

(assert (=> b!218785 m!244577))

(declare-fun m!244579 () Bool)

(assert (=> bm!20429 m!244579))

(declare-fun m!244581 () Bool)

(assert (=> bm!20431 m!244581))

(declare-fun m!244583 () Bool)

(assert (=> b!218772 m!244583))

(declare-fun m!244585 () Bool)

(assert (=> b!218772 m!244585))

(assert (=> b!218772 m!244583))

(declare-fun m!244587 () Bool)

(assert (=> b!218772 m!244587))

(assert (=> b!218772 m!244533))

(assert (=> b!218772 m!244533))

(declare-fun m!244589 () Bool)

(assert (=> b!218772 m!244589))

(assert (=> b!218772 m!244585))

(assert (=> b!218628 d!58521))

(declare-fun b!218806 () Bool)

(declare-fun e!142350 () Bool)

(declare-fun lt!111712 () SeekEntryResult!802)

(assert (=> b!218806 (= e!142350 ((_ is Undefined!802) lt!111712))))

(declare-fun b!218807 () Bool)

(declare-fun e!142353 () Bool)

(declare-fun e!142351 () Bool)

(assert (=> b!218807 (= e!142353 e!142351)))

(declare-fun res!107267 () Bool)

(declare-fun call!20442 () Bool)

(assert (=> b!218807 (= res!107267 call!20442)))

(assert (=> b!218807 (=> (not res!107267) (not e!142351))))

(declare-fun b!218808 () Bool)

(declare-fun e!142352 () Bool)

(declare-fun call!20443 () Bool)

(assert (=> b!218808 (= e!142352 (not call!20443))))

(declare-fun b!218809 () Bool)

(assert (=> b!218809 (and (bvsge (index!5378 lt!111712) #b00000000000000000000000000000000) (bvslt (index!5378 lt!111712) (size!5418 (_keys!6178 thiss!1504))))))

(declare-fun res!107266 () Bool)

(assert (=> b!218809 (= res!107266 (= (select (arr!5086 (_keys!6178 thiss!1504)) (index!5378 lt!111712)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!218809 (=> (not res!107266) (not e!142351))))

(declare-fun b!218810 () Bool)

(assert (=> b!218810 (= e!142351 (not call!20443))))

(declare-fun bm!20439 () Bool)

(assert (=> bm!20439 (= call!20443 (arrayContainsKey!0 (_keys!6178 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!218811 () Bool)

(declare-fun res!107265 () Bool)

(assert (=> b!218811 (=> (not res!107265) (not e!142352))))

(assert (=> b!218811 (= res!107265 call!20442)))

(assert (=> b!218811 (= e!142350 e!142352)))

(declare-fun b!218812 () Bool)

(assert (=> b!218812 (= e!142353 e!142350)))

(declare-fun c!36400 () Bool)

(assert (=> b!218812 (= c!36400 ((_ is MissingVacant!802) lt!111712))))

(declare-fun d!58523 () Bool)

(assert (=> d!58523 e!142353))

(declare-fun c!36399 () Bool)

(assert (=> d!58523 (= c!36399 ((_ is MissingZero!802) lt!111712))))

(assert (=> d!58523 (= lt!111712 (seekEntryOrOpen!0 key!932 (_keys!6178 thiss!1504) (mask!9908 thiss!1504)))))

(declare-fun lt!111711 () Unit!6515)

(declare-fun choose!1093 (array!10730 array!10728 (_ BitVec 32) (_ BitVec 32) V!7307 V!7307 (_ BitVec 64) Int) Unit!6515)

(assert (=> d!58523 (= lt!111711 (choose!1093 (_keys!6178 thiss!1504) (_values!4112 thiss!1504) (mask!9908 thiss!1504) (extraKeys!3866 thiss!1504) (zeroValue!3970 thiss!1504) (minValue!3970 thiss!1504) key!932 (defaultEntry!4129 thiss!1504)))))

(assert (=> d!58523 (validMask!0 (mask!9908 thiss!1504))))

(assert (=> d!58523 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!200 (_keys!6178 thiss!1504) (_values!4112 thiss!1504) (mask!9908 thiss!1504) (extraKeys!3866 thiss!1504) (zeroValue!3970 thiss!1504) (minValue!3970 thiss!1504) key!932 (defaultEntry!4129 thiss!1504)) lt!111711)))

(declare-fun b!218813 () Bool)

(declare-fun res!107268 () Bool)

(assert (=> b!218813 (=> (not res!107268) (not e!142352))))

(assert (=> b!218813 (= res!107268 (= (select (arr!5086 (_keys!6178 thiss!1504)) (index!5381 lt!111712)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!218813 (and (bvsge (index!5381 lt!111712) #b00000000000000000000000000000000) (bvslt (index!5381 lt!111712) (size!5418 (_keys!6178 thiss!1504))))))

(declare-fun bm!20440 () Bool)

(assert (=> bm!20440 (= call!20442 (inRange!0 (ite c!36399 (index!5378 lt!111712) (index!5381 lt!111712)) (mask!9908 thiss!1504)))))

(assert (= (and d!58523 c!36399) b!218807))

(assert (= (and d!58523 (not c!36399)) b!218812))

(assert (= (and b!218807 res!107267) b!218809))

(assert (= (and b!218809 res!107266) b!218810))

(assert (= (and b!218812 c!36400) b!218811))

(assert (= (and b!218812 (not c!36400)) b!218806))

(assert (= (and b!218811 res!107265) b!218813))

(assert (= (and b!218813 res!107268) b!218808))

(assert (= (or b!218807 b!218811) bm!20440))

(assert (= (or b!218810 b!218808) bm!20439))

(assert (=> d!58523 m!244467))

(declare-fun m!244591 () Bool)

(assert (=> d!58523 m!244591))

(assert (=> d!58523 m!244515))

(assert (=> bm!20439 m!244461))

(declare-fun m!244593 () Bool)

(assert (=> b!218809 m!244593))

(declare-fun m!244595 () Bool)

(assert (=> b!218813 m!244595))

(declare-fun m!244597 () Bool)

(assert (=> bm!20440 m!244597))

(assert (=> b!218639 d!58523))

(declare-fun d!58525 () Bool)

(assert (=> d!58525 (= (array_inv!3357 (_keys!6178 thiss!1504)) (bvsge (size!5418 (_keys!6178 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!218638 d!58525))

(declare-fun d!58527 () Bool)

(assert (=> d!58527 (= (array_inv!3358 (_values!4112 thiss!1504)) (bvsge (size!5417 (_values!4112 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!218638 d!58527))

(declare-fun d!58529 () Bool)

(assert (=> d!58529 (= (inRange!0 (ite c!36354 (index!5378 lt!111606) (index!5381 lt!111606)) (mask!9908 thiss!1504)) (and (bvsge (ite c!36354 (index!5378 lt!111606) (index!5381 lt!111606)) #b00000000000000000000000000000000) (bvslt (ite c!36354 (index!5378 lt!111606) (index!5381 lt!111606)) (bvadd (mask!9908 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!20406 d!58529))

(declare-fun d!58531 () Bool)

(declare-fun res!107275 () Bool)

(declare-fun e!142356 () Bool)

(assert (=> d!58531 (=> (not res!107275) (not e!142356))))

(declare-fun simpleValid!223 (LongMapFixedSize!2958) Bool)

(assert (=> d!58531 (= res!107275 (simpleValid!223 thiss!1504))))

(assert (=> d!58531 (= (valid!1189 thiss!1504) e!142356)))

(declare-fun b!218820 () Bool)

(declare-fun res!107276 () Bool)

(assert (=> b!218820 (=> (not res!107276) (not e!142356))))

(declare-fun arrayCountValidKeys!0 (array!10730 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!218820 (= res!107276 (= (arrayCountValidKeys!0 (_keys!6178 thiss!1504) #b00000000000000000000000000000000 (size!5418 (_keys!6178 thiss!1504))) (_size!1528 thiss!1504)))))

(declare-fun b!218821 () Bool)

(declare-fun res!107277 () Bool)

(assert (=> b!218821 (=> (not res!107277) (not e!142356))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10730 (_ BitVec 32)) Bool)

(assert (=> b!218821 (= res!107277 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6178 thiss!1504) (mask!9908 thiss!1504)))))

(declare-fun b!218822 () Bool)

(declare-datatypes ((List!3256 0))(
  ( (Nil!3253) (Cons!3252 (h!3899 (_ BitVec 64)) (t!8221 List!3256)) )
))
(declare-fun arrayNoDuplicates!0 (array!10730 (_ BitVec 32) List!3256) Bool)

(assert (=> b!218822 (= e!142356 (arrayNoDuplicates!0 (_keys!6178 thiss!1504) #b00000000000000000000000000000000 Nil!3253))))

(assert (= (and d!58531 res!107275) b!218820))

(assert (= (and b!218820 res!107276) b!218821))

(assert (= (and b!218821 res!107277) b!218822))

(declare-fun m!244599 () Bool)

(assert (=> d!58531 m!244599))

(declare-fun m!244601 () Bool)

(assert (=> b!218820 m!244601))

(declare-fun m!244603 () Bool)

(assert (=> b!218821 m!244603))

(declare-fun m!244605 () Bool)

(assert (=> b!218822 m!244605))

(assert (=> start!21746 d!58531))

(declare-fun d!58533 () Bool)

(declare-fun e!142359 () Bool)

(assert (=> d!58533 e!142359))

(declare-fun res!107283 () Bool)

(assert (=> d!58533 (=> (not res!107283) (not e!142359))))

(declare-fun lt!111718 () SeekEntryResult!802)

(assert (=> d!58533 (= res!107283 ((_ is Found!802) lt!111718))))

(assert (=> d!58533 (= lt!111718 (seekEntryOrOpen!0 key!932 (_keys!6178 thiss!1504) (mask!9908 thiss!1504)))))

(declare-fun lt!111717 () Unit!6515)

(declare-fun choose!1094 (array!10730 array!10728 (_ BitVec 32) (_ BitVec 32) V!7307 V!7307 (_ BitVec 64) Int) Unit!6515)

(assert (=> d!58533 (= lt!111717 (choose!1094 (_keys!6178 thiss!1504) (_values!4112 thiss!1504) (mask!9908 thiss!1504) (extraKeys!3866 thiss!1504) (zeroValue!3970 thiss!1504) (minValue!3970 thiss!1504) key!932 (defaultEntry!4129 thiss!1504)))))

(assert (=> d!58533 (validMask!0 (mask!9908 thiss!1504))))

(assert (=> d!58533 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!190 (_keys!6178 thiss!1504) (_values!4112 thiss!1504) (mask!9908 thiss!1504) (extraKeys!3866 thiss!1504) (zeroValue!3970 thiss!1504) (minValue!3970 thiss!1504) key!932 (defaultEntry!4129 thiss!1504)) lt!111717)))

(declare-fun b!218827 () Bool)

(declare-fun res!107282 () Bool)

(assert (=> b!218827 (=> (not res!107282) (not e!142359))))

(assert (=> b!218827 (= res!107282 (inRange!0 (index!5379 lt!111718) (mask!9908 thiss!1504)))))

(declare-fun b!218828 () Bool)

(assert (=> b!218828 (= e!142359 (= (select (arr!5086 (_keys!6178 thiss!1504)) (index!5379 lt!111718)) key!932))))

(assert (=> b!218828 (and (bvsge (index!5379 lt!111718) #b00000000000000000000000000000000) (bvslt (index!5379 lt!111718) (size!5418 (_keys!6178 thiss!1504))))))

(assert (= (and d!58533 res!107283) b!218827))

(assert (= (and b!218827 res!107282) b!218828))

(assert (=> d!58533 m!244467))

(declare-fun m!244607 () Bool)

(assert (=> d!58533 m!244607))

(assert (=> d!58533 m!244515))

(declare-fun m!244609 () Bool)

(assert (=> b!218827 m!244609))

(declare-fun m!244611 () Bool)

(assert (=> b!218828 m!244611))

(assert (=> b!218634 d!58533))

(declare-fun d!58535 () Bool)

(declare-fun res!107288 () Bool)

(declare-fun e!142364 () Bool)

(assert (=> d!58535 (=> res!107288 e!142364)))

(assert (=> d!58535 (= res!107288 (= (select (arr!5086 (_keys!6178 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!58535 (= (arrayContainsKey!0 (_keys!6178 thiss!1504) key!932 #b00000000000000000000000000000000) e!142364)))

(declare-fun b!218833 () Bool)

(declare-fun e!142365 () Bool)

(assert (=> b!218833 (= e!142364 e!142365)))

(declare-fun res!107289 () Bool)

(assert (=> b!218833 (=> (not res!107289) (not e!142365))))

(assert (=> b!218833 (= res!107289 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!5418 (_keys!6178 thiss!1504))))))

(declare-fun b!218834 () Bool)

(assert (=> b!218834 (= e!142365 (arrayContainsKey!0 (_keys!6178 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!58535 (not res!107288)) b!218833))

(assert (= (and b!218833 res!107289) b!218834))

(assert (=> d!58535 m!244533))

(declare-fun m!244613 () Bool)

(assert (=> b!218834 m!244613))

(assert (=> bm!20407 d!58535))

(declare-fun mapIsEmpty!9786 () Bool)

(declare-fun mapRes!9786 () Bool)

(assert (=> mapIsEmpty!9786 mapRes!9786))

(declare-fun b!218842 () Bool)

(declare-fun e!142370 () Bool)

(assert (=> b!218842 (= e!142370 tp_is_empty!5745)))

(declare-fun b!218841 () Bool)

(declare-fun e!142371 () Bool)

(assert (=> b!218841 (= e!142371 tp_is_empty!5745)))

(declare-fun mapNonEmpty!9786 () Bool)

(declare-fun tp!20793 () Bool)

(assert (=> mapNonEmpty!9786 (= mapRes!9786 (and tp!20793 e!142371))))

(declare-fun mapValue!9786 () ValueCell!2529)

(declare-fun mapKey!9786 () (_ BitVec 32))

(declare-fun mapRest!9786 () (Array (_ BitVec 32) ValueCell!2529))

(assert (=> mapNonEmpty!9786 (= mapRest!9780 (store mapRest!9786 mapKey!9786 mapValue!9786))))

(declare-fun condMapEmpty!9786 () Bool)

(declare-fun mapDefault!9786 () ValueCell!2529)

(assert (=> mapNonEmpty!9780 (= condMapEmpty!9786 (= mapRest!9780 ((as const (Array (_ BitVec 32) ValueCell!2529)) mapDefault!9786)))))

(assert (=> mapNonEmpty!9780 (= tp!20784 (and e!142370 mapRes!9786))))

(assert (= (and mapNonEmpty!9780 condMapEmpty!9786) mapIsEmpty!9786))

(assert (= (and mapNonEmpty!9780 (not condMapEmpty!9786)) mapNonEmpty!9786))

(assert (= (and mapNonEmpty!9786 ((_ is ValueCellFull!2529) mapValue!9786)) b!218841))

(assert (= (and mapNonEmpty!9780 ((_ is ValueCellFull!2529) mapDefault!9786)) b!218842))

(declare-fun m!244615 () Bool)

(assert (=> mapNonEmpty!9786 m!244615))

(declare-fun b_lambda!7859 () Bool)

(assert (= b_lambda!7857 (or (and b!218638 b_free!5883) b_lambda!7859)))

(check-sat (not b!218724) (not b!218821) (not b!218779) (not b_next!5883) (not b!218834) (not d!58519) (not b!218785) (not d!58531) (not b!218786) (not b!218820) (not mapNonEmpty!9786) (not bm!20439) b_and!12795 (not bm!20431) (not b!218710) (not b_lambda!7859) (not b!218822) (not b!218827) (not b!218772) (not b!218722) (not b!218784) (not d!58521) (not b!218782) (not bm!20432) (not b!218767) (not d!58523) tp_is_empty!5745 (not d!58533) (not bm!20430) (not d!58515) (not bm!20440) (not bm!20429) (not b!218769))
(check-sat b_and!12795 (not b_next!5883))
