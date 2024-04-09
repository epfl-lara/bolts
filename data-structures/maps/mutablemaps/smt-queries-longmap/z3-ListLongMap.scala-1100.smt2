; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22578 () Bool)

(assert start!22578)

(declare-fun b!235906 () Bool)

(declare-fun b_free!6351 () Bool)

(declare-fun b_next!6351 () Bool)

(assert (=> b!235906 (= b_free!6351 (not b_next!6351))))

(declare-fun tp!22225 () Bool)

(declare-fun b_and!13301 () Bool)

(assert (=> b!235906 (= tp!22225 b_and!13301)))

(declare-fun mapNonEmpty!10520 () Bool)

(declare-fun mapRes!10520 () Bool)

(declare-fun tp!22226 () Bool)

(declare-fun e!153225 () Bool)

(assert (=> mapNonEmpty!10520 (= mapRes!10520 (and tp!22226 e!153225))))

(declare-datatypes ((V!7931 0))(
  ( (V!7932 (val!3151 Int)) )
))
(declare-datatypes ((ValueCell!2763 0))(
  ( (ValueCellFull!2763 (v!5176 V!7931)) (EmptyCell!2763) )
))
(declare-fun mapRest!10520 () (Array (_ BitVec 32) ValueCell!2763))

(declare-fun mapValue!10520 () ValueCell!2763)

(declare-datatypes ((array!11686 0))(
  ( (array!11687 (arr!5553 (Array (_ BitVec 32) ValueCell!2763)) (size!5890 (_ BitVec 32))) )
))
(declare-datatypes ((array!11688 0))(
  ( (array!11689 (arr!5554 (Array (_ BitVec 32) (_ BitVec 64))) (size!5891 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3426 0))(
  ( (LongMapFixedSize!3427 (defaultEntry!4385 Int) (mask!10366 (_ BitVec 32)) (extraKeys!4122 (_ BitVec 32)) (zeroValue!4226 V!7931) (minValue!4226 V!7931) (_size!1762 (_ BitVec 32)) (_keys!6463 array!11688) (_values!4368 array!11686) (_vacant!1762 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3426)

(declare-fun mapKey!10520 () (_ BitVec 32))

(assert (=> mapNonEmpty!10520 (= (arr!5553 (_values!4368 thiss!1504)) (store mapRest!10520 mapKey!10520 mapValue!10520))))

(declare-fun b!235901 () Bool)

(declare-fun res!115719 () Bool)

(declare-fun e!153224 () Bool)

(assert (=> b!235901 (=> (not res!115719) (not e!153224))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4640 0))(
  ( (tuple2!4641 (_1!2330 (_ BitVec 64)) (_2!2330 V!7931)) )
))
(declare-datatypes ((List!3570 0))(
  ( (Nil!3567) (Cons!3566 (h!4218 tuple2!4640) (t!8555 List!3570)) )
))
(declare-datatypes ((ListLongMap!3567 0))(
  ( (ListLongMap!3568 (toList!1799 List!3570)) )
))
(declare-fun contains!1671 (ListLongMap!3567 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1322 (array!11688 array!11686 (_ BitVec 32) (_ BitVec 32) V!7931 V!7931 (_ BitVec 32) Int) ListLongMap!3567)

(assert (=> b!235901 (= res!115719 (not (contains!1671 (getCurrentListMap!1322 (_keys!6463 thiss!1504) (_values!4368 thiss!1504) (mask!10366 thiss!1504) (extraKeys!4122 thiss!1504) (zeroValue!4226 thiss!1504) (minValue!4226 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4385 thiss!1504)) key!932)))))

(declare-fun b!235902 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!235902 (= e!153224 (not (validMask!0 (mask!10366 thiss!1504))))))

(declare-fun b!235903 () Bool)

(declare-fun e!153223 () Bool)

(declare-fun tp_is_empty!6213 () Bool)

(assert (=> b!235903 (= e!153223 tp_is_empty!6213)))

(declare-fun b!235904 () Bool)

(declare-fun e!153222 () Bool)

(assert (=> b!235904 (= e!153222 (and e!153223 mapRes!10520))))

(declare-fun condMapEmpty!10520 () Bool)

(declare-fun mapDefault!10520 () ValueCell!2763)

(assert (=> b!235904 (= condMapEmpty!10520 (= (arr!5553 (_values!4368 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2763)) mapDefault!10520)))))

(declare-fun b!235905 () Bool)

(assert (=> b!235905 (= e!153225 tp_is_empty!6213)))

(declare-fun res!115722 () Bool)

(declare-fun e!153221 () Bool)

(assert (=> start!22578 (=> (not res!115722) (not e!153221))))

(declare-fun valid!1346 (LongMapFixedSize!3426) Bool)

(assert (=> start!22578 (= res!115722 (valid!1346 thiss!1504))))

(assert (=> start!22578 e!153221))

(declare-fun e!153219 () Bool)

(assert (=> start!22578 e!153219))

(assert (=> start!22578 true))

(declare-fun array_inv!3655 (array!11688) Bool)

(declare-fun array_inv!3656 (array!11686) Bool)

(assert (=> b!235906 (= e!153219 (and tp!22225 tp_is_empty!6213 (array_inv!3655 (_keys!6463 thiss!1504)) (array_inv!3656 (_values!4368 thiss!1504)) e!153222))))

(declare-fun mapIsEmpty!10520 () Bool)

(assert (=> mapIsEmpty!10520 mapRes!10520))

(declare-fun b!235907 () Bool)

(assert (=> b!235907 (= e!153221 e!153224)))

(declare-fun res!115721 () Bool)

(assert (=> b!235907 (=> (not res!115721) (not e!153224))))

(declare-datatypes ((SeekEntryResult!1008 0))(
  ( (MissingZero!1008 (index!6202 (_ BitVec 32))) (Found!1008 (index!6203 (_ BitVec 32))) (Intermediate!1008 (undefined!1820 Bool) (index!6204 (_ BitVec 32)) (x!23846 (_ BitVec 32))) (Undefined!1008) (MissingVacant!1008 (index!6205 (_ BitVec 32))) )
))
(declare-fun lt!119300 () SeekEntryResult!1008)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!235907 (= res!115721 (or (= lt!119300 (MissingZero!1008 index!297)) (= lt!119300 (MissingVacant!1008 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11688 (_ BitVec 32)) SeekEntryResult!1008)

(assert (=> b!235907 (= lt!119300 (seekEntryOrOpen!0 key!932 (_keys!6463 thiss!1504) (mask!10366 thiss!1504)))))

(declare-fun b!235908 () Bool)

(declare-fun res!115720 () Bool)

(assert (=> b!235908 (=> (not res!115720) (not e!153221))))

(assert (=> b!235908 (= res!115720 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!22578 res!115722) b!235908))

(assert (= (and b!235908 res!115720) b!235907))

(assert (= (and b!235907 res!115721) b!235901))

(assert (= (and b!235901 res!115719) b!235902))

(assert (= (and b!235904 condMapEmpty!10520) mapIsEmpty!10520))

(assert (= (and b!235904 (not condMapEmpty!10520)) mapNonEmpty!10520))

(get-info :version)

(assert (= (and mapNonEmpty!10520 ((_ is ValueCellFull!2763) mapValue!10520)) b!235905))

(assert (= (and b!235904 ((_ is ValueCellFull!2763) mapDefault!10520)) b!235903))

(assert (= b!235906 b!235904))

(assert (= start!22578 b!235906))

(declare-fun m!256871 () Bool)

(assert (=> start!22578 m!256871))

(declare-fun m!256873 () Bool)

(assert (=> b!235902 m!256873))

(declare-fun m!256875 () Bool)

(assert (=> b!235901 m!256875))

(assert (=> b!235901 m!256875))

(declare-fun m!256877 () Bool)

(assert (=> b!235901 m!256877))

(declare-fun m!256879 () Bool)

(assert (=> b!235907 m!256879))

(declare-fun m!256881 () Bool)

(assert (=> b!235906 m!256881))

(declare-fun m!256883 () Bool)

(assert (=> b!235906 m!256883))

(declare-fun m!256885 () Bool)

(assert (=> mapNonEmpty!10520 m!256885))

(check-sat (not b!235901) (not b_next!6351) (not start!22578) tp_is_empty!6213 (not b!235907) b_and!13301 (not b!235906) (not b!235902) (not mapNonEmpty!10520))
(check-sat b_and!13301 (not b_next!6351))
(get-model)

(declare-fun d!59235 () Bool)

(declare-fun res!115741 () Bool)

(declare-fun e!153249 () Bool)

(assert (=> d!59235 (=> (not res!115741) (not e!153249))))

(declare-fun simpleValid!234 (LongMapFixedSize!3426) Bool)

(assert (=> d!59235 (= res!115741 (simpleValid!234 thiss!1504))))

(assert (=> d!59235 (= (valid!1346 thiss!1504) e!153249)))

(declare-fun b!235939 () Bool)

(declare-fun res!115742 () Bool)

(assert (=> b!235939 (=> (not res!115742) (not e!153249))))

(declare-fun arrayCountValidKeys!0 (array!11688 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!235939 (= res!115742 (= (arrayCountValidKeys!0 (_keys!6463 thiss!1504) #b00000000000000000000000000000000 (size!5891 (_keys!6463 thiss!1504))) (_size!1762 thiss!1504)))))

(declare-fun b!235940 () Bool)

(declare-fun res!115743 () Bool)

(assert (=> b!235940 (=> (not res!115743) (not e!153249))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11688 (_ BitVec 32)) Bool)

(assert (=> b!235940 (= res!115743 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6463 thiss!1504) (mask!10366 thiss!1504)))))

(declare-fun b!235941 () Bool)

(declare-datatypes ((List!3572 0))(
  ( (Nil!3569) (Cons!3568 (h!4220 (_ BitVec 64)) (t!8559 List!3572)) )
))
(declare-fun arrayNoDuplicates!0 (array!11688 (_ BitVec 32) List!3572) Bool)

(assert (=> b!235941 (= e!153249 (arrayNoDuplicates!0 (_keys!6463 thiss!1504) #b00000000000000000000000000000000 Nil!3569))))

(assert (= (and d!59235 res!115741) b!235939))

(assert (= (and b!235939 res!115742) b!235940))

(assert (= (and b!235940 res!115743) b!235941))

(declare-fun m!256903 () Bool)

(assert (=> d!59235 m!256903))

(declare-fun m!256905 () Bool)

(assert (=> b!235939 m!256905))

(declare-fun m!256907 () Bool)

(assert (=> b!235940 m!256907))

(declare-fun m!256909 () Bool)

(assert (=> b!235941 m!256909))

(assert (=> start!22578 d!59235))

(declare-fun b!235954 () Bool)

(declare-fun c!39269 () Bool)

(declare-fun lt!119312 () (_ BitVec 64))

(assert (=> b!235954 (= c!39269 (= lt!119312 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!153258 () SeekEntryResult!1008)

(declare-fun e!153257 () SeekEntryResult!1008)

(assert (=> b!235954 (= e!153258 e!153257)))

(declare-fun b!235955 () Bool)

(declare-fun lt!119311 () SeekEntryResult!1008)

(assert (=> b!235955 (= e!153258 (Found!1008 (index!6204 lt!119311)))))

(declare-fun d!59237 () Bool)

(declare-fun lt!119310 () SeekEntryResult!1008)

(assert (=> d!59237 (and (or ((_ is Undefined!1008) lt!119310) (not ((_ is Found!1008) lt!119310)) (and (bvsge (index!6203 lt!119310) #b00000000000000000000000000000000) (bvslt (index!6203 lt!119310) (size!5891 (_keys!6463 thiss!1504))))) (or ((_ is Undefined!1008) lt!119310) ((_ is Found!1008) lt!119310) (not ((_ is MissingZero!1008) lt!119310)) (and (bvsge (index!6202 lt!119310) #b00000000000000000000000000000000) (bvslt (index!6202 lt!119310) (size!5891 (_keys!6463 thiss!1504))))) (or ((_ is Undefined!1008) lt!119310) ((_ is Found!1008) lt!119310) ((_ is MissingZero!1008) lt!119310) (not ((_ is MissingVacant!1008) lt!119310)) (and (bvsge (index!6205 lt!119310) #b00000000000000000000000000000000) (bvslt (index!6205 lt!119310) (size!5891 (_keys!6463 thiss!1504))))) (or ((_ is Undefined!1008) lt!119310) (ite ((_ is Found!1008) lt!119310) (= (select (arr!5554 (_keys!6463 thiss!1504)) (index!6203 lt!119310)) key!932) (ite ((_ is MissingZero!1008) lt!119310) (= (select (arr!5554 (_keys!6463 thiss!1504)) (index!6202 lt!119310)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1008) lt!119310) (= (select (arr!5554 (_keys!6463 thiss!1504)) (index!6205 lt!119310)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!153256 () SeekEntryResult!1008)

(assert (=> d!59237 (= lt!119310 e!153256)))

(declare-fun c!39270 () Bool)

(assert (=> d!59237 (= c!39270 (and ((_ is Intermediate!1008) lt!119311) (undefined!1820 lt!119311)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11688 (_ BitVec 32)) SeekEntryResult!1008)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!59237 (= lt!119311 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10366 thiss!1504)) key!932 (_keys!6463 thiss!1504) (mask!10366 thiss!1504)))))

(assert (=> d!59237 (validMask!0 (mask!10366 thiss!1504))))

(assert (=> d!59237 (= (seekEntryOrOpen!0 key!932 (_keys!6463 thiss!1504) (mask!10366 thiss!1504)) lt!119310)))

(declare-fun b!235956 () Bool)

(assert (=> b!235956 (= e!153256 e!153258)))

(assert (=> b!235956 (= lt!119312 (select (arr!5554 (_keys!6463 thiss!1504)) (index!6204 lt!119311)))))

(declare-fun c!39268 () Bool)

(assert (=> b!235956 (= c!39268 (= lt!119312 key!932))))

(declare-fun b!235957 () Bool)

(assert (=> b!235957 (= e!153257 (MissingZero!1008 (index!6204 lt!119311)))))

(declare-fun b!235958 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11688 (_ BitVec 32)) SeekEntryResult!1008)

(assert (=> b!235958 (= e!153257 (seekKeyOrZeroReturnVacant!0 (x!23846 lt!119311) (index!6204 lt!119311) (index!6204 lt!119311) key!932 (_keys!6463 thiss!1504) (mask!10366 thiss!1504)))))

(declare-fun b!235959 () Bool)

(assert (=> b!235959 (= e!153256 Undefined!1008)))

(assert (= (and d!59237 c!39270) b!235959))

(assert (= (and d!59237 (not c!39270)) b!235956))

(assert (= (and b!235956 c!39268) b!235955))

(assert (= (and b!235956 (not c!39268)) b!235954))

(assert (= (and b!235954 c!39269) b!235957))

(assert (= (and b!235954 (not c!39269)) b!235958))

(declare-fun m!256911 () Bool)

(assert (=> d!59237 m!256911))

(assert (=> d!59237 m!256911))

(declare-fun m!256913 () Bool)

(assert (=> d!59237 m!256913))

(declare-fun m!256915 () Bool)

(assert (=> d!59237 m!256915))

(declare-fun m!256917 () Bool)

(assert (=> d!59237 m!256917))

(declare-fun m!256919 () Bool)

(assert (=> d!59237 m!256919))

(assert (=> d!59237 m!256873))

(declare-fun m!256921 () Bool)

(assert (=> b!235956 m!256921))

(declare-fun m!256923 () Bool)

(assert (=> b!235958 m!256923))

(assert (=> b!235907 d!59237))

(declare-fun d!59239 () Bool)

(assert (=> d!59239 (= (array_inv!3655 (_keys!6463 thiss!1504)) (bvsge (size!5891 (_keys!6463 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!235906 d!59239))

(declare-fun d!59241 () Bool)

(assert (=> d!59241 (= (array_inv!3656 (_values!4368 thiss!1504)) (bvsge (size!5890 (_values!4368 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!235906 d!59241))

(declare-fun d!59243 () Bool)

(declare-fun e!153264 () Bool)

(assert (=> d!59243 e!153264))

(declare-fun res!115746 () Bool)

(assert (=> d!59243 (=> res!115746 e!153264)))

(declare-fun lt!119323 () Bool)

(assert (=> d!59243 (= res!115746 (not lt!119323))))

(declare-fun lt!119324 () Bool)

(assert (=> d!59243 (= lt!119323 lt!119324)))

(declare-datatypes ((Unit!7265 0))(
  ( (Unit!7266) )
))
(declare-fun lt!119321 () Unit!7265)

(declare-fun e!153263 () Unit!7265)

(assert (=> d!59243 (= lt!119321 e!153263)))

(declare-fun c!39273 () Bool)

(assert (=> d!59243 (= c!39273 lt!119324)))

(declare-fun containsKey!261 (List!3570 (_ BitVec 64)) Bool)

(assert (=> d!59243 (= lt!119324 (containsKey!261 (toList!1799 (getCurrentListMap!1322 (_keys!6463 thiss!1504) (_values!4368 thiss!1504) (mask!10366 thiss!1504) (extraKeys!4122 thiss!1504) (zeroValue!4226 thiss!1504) (minValue!4226 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4385 thiss!1504))) key!932))))

(assert (=> d!59243 (= (contains!1671 (getCurrentListMap!1322 (_keys!6463 thiss!1504) (_values!4368 thiss!1504) (mask!10366 thiss!1504) (extraKeys!4122 thiss!1504) (zeroValue!4226 thiss!1504) (minValue!4226 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4385 thiss!1504)) key!932) lt!119323)))

(declare-fun b!235966 () Bool)

(declare-fun lt!119322 () Unit!7265)

(assert (=> b!235966 (= e!153263 lt!119322)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!210 (List!3570 (_ BitVec 64)) Unit!7265)

(assert (=> b!235966 (= lt!119322 (lemmaContainsKeyImpliesGetValueByKeyDefined!210 (toList!1799 (getCurrentListMap!1322 (_keys!6463 thiss!1504) (_values!4368 thiss!1504) (mask!10366 thiss!1504) (extraKeys!4122 thiss!1504) (zeroValue!4226 thiss!1504) (minValue!4226 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4385 thiss!1504))) key!932))))

(declare-datatypes ((Option!275 0))(
  ( (Some!274 (v!5178 V!7931)) (None!273) )
))
(declare-fun isDefined!211 (Option!275) Bool)

(declare-fun getValueByKey!269 (List!3570 (_ BitVec 64)) Option!275)

(assert (=> b!235966 (isDefined!211 (getValueByKey!269 (toList!1799 (getCurrentListMap!1322 (_keys!6463 thiss!1504) (_values!4368 thiss!1504) (mask!10366 thiss!1504) (extraKeys!4122 thiss!1504) (zeroValue!4226 thiss!1504) (minValue!4226 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4385 thiss!1504))) key!932))))

(declare-fun b!235967 () Bool)

(declare-fun Unit!7267 () Unit!7265)

(assert (=> b!235967 (= e!153263 Unit!7267)))

(declare-fun b!235968 () Bool)

(assert (=> b!235968 (= e!153264 (isDefined!211 (getValueByKey!269 (toList!1799 (getCurrentListMap!1322 (_keys!6463 thiss!1504) (_values!4368 thiss!1504) (mask!10366 thiss!1504) (extraKeys!4122 thiss!1504) (zeroValue!4226 thiss!1504) (minValue!4226 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4385 thiss!1504))) key!932)))))

(assert (= (and d!59243 c!39273) b!235966))

(assert (= (and d!59243 (not c!39273)) b!235967))

(assert (= (and d!59243 (not res!115746)) b!235968))

(declare-fun m!256925 () Bool)

(assert (=> d!59243 m!256925))

(declare-fun m!256927 () Bool)

(assert (=> b!235966 m!256927))

(declare-fun m!256929 () Bool)

(assert (=> b!235966 m!256929))

(assert (=> b!235966 m!256929))

(declare-fun m!256931 () Bool)

(assert (=> b!235966 m!256931))

(assert (=> b!235968 m!256929))

(assert (=> b!235968 m!256929))

(assert (=> b!235968 m!256931))

(assert (=> b!235901 d!59243))

(declare-fun b!236011 () Bool)

(declare-fun e!153302 () Bool)

(declare-fun lt!119378 () ListLongMap!3567)

(declare-fun apply!212 (ListLongMap!3567 (_ BitVec 64)) V!7931)

(assert (=> b!236011 (= e!153302 (= (apply!212 lt!119378 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4226 thiss!1504)))))

(declare-fun b!236012 () Bool)

(declare-fun res!115765 () Bool)

(declare-fun e!153295 () Bool)

(assert (=> b!236012 (=> (not res!115765) (not e!153295))))

(declare-fun e!153291 () Bool)

(assert (=> b!236012 (= res!115765 e!153291)))

(declare-fun res!115773 () Bool)

(assert (=> b!236012 (=> res!115773 e!153291)))

(declare-fun e!153299 () Bool)

(assert (=> b!236012 (= res!115773 (not e!153299))))

(declare-fun res!115772 () Bool)

(assert (=> b!236012 (=> (not res!115772) (not e!153299))))

(assert (=> b!236012 (= res!115772 (bvslt #b00000000000000000000000000000000 (size!5891 (_keys!6463 thiss!1504))))))

(declare-fun bm!21940 () Bool)

(declare-fun call!21948 () ListLongMap!3567)

(declare-fun getCurrentListMapNoExtraKeys!531 (array!11688 array!11686 (_ BitVec 32) (_ BitVec 32) V!7931 V!7931 (_ BitVec 32) Int) ListLongMap!3567)

(assert (=> bm!21940 (= call!21948 (getCurrentListMapNoExtraKeys!531 (_keys!6463 thiss!1504) (_values!4368 thiss!1504) (mask!10366 thiss!1504) (extraKeys!4122 thiss!1504) (zeroValue!4226 thiss!1504) (minValue!4226 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4385 thiss!1504)))))

(declare-fun b!236013 () Bool)

(declare-fun e!153296 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!236013 (= e!153296 (validKeyInArray!0 (select (arr!5554 (_keys!6463 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!236014 () Bool)

(declare-fun e!153294 () ListLongMap!3567)

(declare-fun call!21949 () ListLongMap!3567)

(declare-fun +!634 (ListLongMap!3567 tuple2!4640) ListLongMap!3567)

(assert (=> b!236014 (= e!153294 (+!634 call!21949 (tuple2!4641 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4226 thiss!1504))))))

(declare-fun b!236015 () Bool)

(declare-fun e!153292 () ListLongMap!3567)

(assert (=> b!236015 (= e!153294 e!153292)))

(declare-fun c!39286 () Bool)

(assert (=> b!236015 (= c!39286 (and (not (= (bvand (extraKeys!4122 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4122 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!236016 () Bool)

(declare-fun res!115767 () Bool)

(assert (=> b!236016 (=> (not res!115767) (not e!153295))))

(declare-fun e!153301 () Bool)

(assert (=> b!236016 (= res!115767 e!153301)))

(declare-fun c!39288 () Bool)

(assert (=> b!236016 (= c!39288 (not (= (bvand (extraKeys!4122 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!236017 () Bool)

(assert (=> b!236017 (= e!153299 (validKeyInArray!0 (select (arr!5554 (_keys!6463 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!236018 () Bool)

(declare-fun e!153297 () Unit!7265)

(declare-fun lt!119382 () Unit!7265)

(assert (=> b!236018 (= e!153297 lt!119382)))

(declare-fun lt!119384 () ListLongMap!3567)

(assert (=> b!236018 (= lt!119384 (getCurrentListMapNoExtraKeys!531 (_keys!6463 thiss!1504) (_values!4368 thiss!1504) (mask!10366 thiss!1504) (extraKeys!4122 thiss!1504) (zeroValue!4226 thiss!1504) (minValue!4226 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4385 thiss!1504)))))

(declare-fun lt!119383 () (_ BitVec 64))

(assert (=> b!236018 (= lt!119383 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!119377 () (_ BitVec 64))

(assert (=> b!236018 (= lt!119377 (select (arr!5554 (_keys!6463 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!119375 () Unit!7265)

(declare-fun addStillContains!188 (ListLongMap!3567 (_ BitVec 64) V!7931 (_ BitVec 64)) Unit!7265)

(assert (=> b!236018 (= lt!119375 (addStillContains!188 lt!119384 lt!119383 (zeroValue!4226 thiss!1504) lt!119377))))

(assert (=> b!236018 (contains!1671 (+!634 lt!119384 (tuple2!4641 lt!119383 (zeroValue!4226 thiss!1504))) lt!119377)))

(declare-fun lt!119390 () Unit!7265)

(assert (=> b!236018 (= lt!119390 lt!119375)))

(declare-fun lt!119389 () ListLongMap!3567)

(assert (=> b!236018 (= lt!119389 (getCurrentListMapNoExtraKeys!531 (_keys!6463 thiss!1504) (_values!4368 thiss!1504) (mask!10366 thiss!1504) (extraKeys!4122 thiss!1504) (zeroValue!4226 thiss!1504) (minValue!4226 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4385 thiss!1504)))))

(declare-fun lt!119387 () (_ BitVec 64))

(assert (=> b!236018 (= lt!119387 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!119371 () (_ BitVec 64))

(assert (=> b!236018 (= lt!119371 (select (arr!5554 (_keys!6463 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!119372 () Unit!7265)

(declare-fun addApplyDifferent!188 (ListLongMap!3567 (_ BitVec 64) V!7931 (_ BitVec 64)) Unit!7265)

(assert (=> b!236018 (= lt!119372 (addApplyDifferent!188 lt!119389 lt!119387 (minValue!4226 thiss!1504) lt!119371))))

(assert (=> b!236018 (= (apply!212 (+!634 lt!119389 (tuple2!4641 lt!119387 (minValue!4226 thiss!1504))) lt!119371) (apply!212 lt!119389 lt!119371))))

(declare-fun lt!119374 () Unit!7265)

(assert (=> b!236018 (= lt!119374 lt!119372)))

(declare-fun lt!119369 () ListLongMap!3567)

(assert (=> b!236018 (= lt!119369 (getCurrentListMapNoExtraKeys!531 (_keys!6463 thiss!1504) (_values!4368 thiss!1504) (mask!10366 thiss!1504) (extraKeys!4122 thiss!1504) (zeroValue!4226 thiss!1504) (minValue!4226 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4385 thiss!1504)))))

(declare-fun lt!119376 () (_ BitVec 64))

(assert (=> b!236018 (= lt!119376 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!119373 () (_ BitVec 64))

(assert (=> b!236018 (= lt!119373 (select (arr!5554 (_keys!6463 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!119385 () Unit!7265)

(assert (=> b!236018 (= lt!119385 (addApplyDifferent!188 lt!119369 lt!119376 (zeroValue!4226 thiss!1504) lt!119373))))

(assert (=> b!236018 (= (apply!212 (+!634 lt!119369 (tuple2!4641 lt!119376 (zeroValue!4226 thiss!1504))) lt!119373) (apply!212 lt!119369 lt!119373))))

(declare-fun lt!119386 () Unit!7265)

(assert (=> b!236018 (= lt!119386 lt!119385)))

(declare-fun lt!119380 () ListLongMap!3567)

(assert (=> b!236018 (= lt!119380 (getCurrentListMapNoExtraKeys!531 (_keys!6463 thiss!1504) (_values!4368 thiss!1504) (mask!10366 thiss!1504) (extraKeys!4122 thiss!1504) (zeroValue!4226 thiss!1504) (minValue!4226 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4385 thiss!1504)))))

(declare-fun lt!119379 () (_ BitVec 64))

(assert (=> b!236018 (= lt!119379 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!119388 () (_ BitVec 64))

(assert (=> b!236018 (= lt!119388 (select (arr!5554 (_keys!6463 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!236018 (= lt!119382 (addApplyDifferent!188 lt!119380 lt!119379 (minValue!4226 thiss!1504) lt!119388))))

(assert (=> b!236018 (= (apply!212 (+!634 lt!119380 (tuple2!4641 lt!119379 (minValue!4226 thiss!1504))) lt!119388) (apply!212 lt!119380 lt!119388))))

(declare-fun b!236019 () Bool)

(declare-fun Unit!7268 () Unit!7265)

(assert (=> b!236019 (= e!153297 Unit!7268)))

(declare-fun bm!21941 () Bool)

(declare-fun call!21946 () Bool)

(assert (=> bm!21941 (= call!21946 (contains!1671 lt!119378 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun c!39290 () Bool)

(declare-fun call!21943 () ListLongMap!3567)

(declare-fun call!21947 () ListLongMap!3567)

(declare-fun bm!21942 () Bool)

(assert (=> bm!21942 (= call!21949 (+!634 (ite c!39290 call!21948 (ite c!39286 call!21943 call!21947)) (ite (or c!39290 c!39286) (tuple2!4641 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4226 thiss!1504)) (tuple2!4641 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4226 thiss!1504)))))))

(declare-fun bm!21943 () Bool)

(assert (=> bm!21943 (= call!21947 call!21943)))

(declare-fun bm!21944 () Bool)

(declare-fun call!21944 () ListLongMap!3567)

(assert (=> bm!21944 (= call!21944 call!21949)))

(declare-fun b!236020 () Bool)

(declare-fun e!153298 () ListLongMap!3567)

(assert (=> b!236020 (= e!153298 call!21944)))

(declare-fun b!236021 () Bool)

(declare-fun e!153300 () Bool)

(assert (=> b!236021 (= e!153300 (not call!21946))))

(declare-fun b!236022 () Bool)

(assert (=> b!236022 (= e!153295 e!153300)))

(declare-fun c!39291 () Bool)

(assert (=> b!236022 (= c!39291 (not (= (bvand (extraKeys!4122 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!236023 () Bool)

(declare-fun e!153303 () Bool)

(assert (=> b!236023 (= e!153300 e!153303)))

(declare-fun res!115768 () Bool)

(assert (=> b!236023 (= res!115768 call!21946)))

(assert (=> b!236023 (=> (not res!115768) (not e!153303))))

(declare-fun b!236024 () Bool)

(declare-fun e!153293 () Bool)

(declare-fun get!2854 (ValueCell!2763 V!7931) V!7931)

(declare-fun dynLambda!550 (Int (_ BitVec 64)) V!7931)

(assert (=> b!236024 (= e!153293 (= (apply!212 lt!119378 (select (arr!5554 (_keys!6463 thiss!1504)) #b00000000000000000000000000000000)) (get!2854 (select (arr!5553 (_values!4368 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!550 (defaultEntry!4385 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!236024 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5890 (_values!4368 thiss!1504))))))

(assert (=> b!236024 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5891 (_keys!6463 thiss!1504))))))

(declare-fun b!236025 () Bool)

(assert (=> b!236025 (= e!153291 e!153293)))

(declare-fun res!115770 () Bool)

(assert (=> b!236025 (=> (not res!115770) (not e!153293))))

(assert (=> b!236025 (= res!115770 (contains!1671 lt!119378 (select (arr!5554 (_keys!6463 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!236025 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5891 (_keys!6463 thiss!1504))))))

(declare-fun d!59245 () Bool)

(assert (=> d!59245 e!153295))

(declare-fun res!115766 () Bool)

(assert (=> d!59245 (=> (not res!115766) (not e!153295))))

(assert (=> d!59245 (= res!115766 (or (bvsge #b00000000000000000000000000000000 (size!5891 (_keys!6463 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5891 (_keys!6463 thiss!1504))))))))

(declare-fun lt!119381 () ListLongMap!3567)

(assert (=> d!59245 (= lt!119378 lt!119381)))

(declare-fun lt!119370 () Unit!7265)

(assert (=> d!59245 (= lt!119370 e!153297)))

(declare-fun c!39289 () Bool)

(assert (=> d!59245 (= c!39289 e!153296)))

(declare-fun res!115769 () Bool)

(assert (=> d!59245 (=> (not res!115769) (not e!153296))))

(assert (=> d!59245 (= res!115769 (bvslt #b00000000000000000000000000000000 (size!5891 (_keys!6463 thiss!1504))))))

(assert (=> d!59245 (= lt!119381 e!153294)))

(assert (=> d!59245 (= c!39290 (and (not (= (bvand (extraKeys!4122 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4122 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!59245 (validMask!0 (mask!10366 thiss!1504))))

(assert (=> d!59245 (= (getCurrentListMap!1322 (_keys!6463 thiss!1504) (_values!4368 thiss!1504) (mask!10366 thiss!1504) (extraKeys!4122 thiss!1504) (zeroValue!4226 thiss!1504) (minValue!4226 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4385 thiss!1504)) lt!119378)))

(declare-fun bm!21945 () Bool)

(assert (=> bm!21945 (= call!21943 call!21948)))

(declare-fun b!236026 () Bool)

(assert (=> b!236026 (= e!153303 (= (apply!212 lt!119378 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4226 thiss!1504)))))

(declare-fun b!236027 () Bool)

(assert (=> b!236027 (= e!153301 e!153302)))

(declare-fun res!115771 () Bool)

(declare-fun call!21945 () Bool)

(assert (=> b!236027 (= res!115771 call!21945)))

(assert (=> b!236027 (=> (not res!115771) (not e!153302))))

(declare-fun b!236028 () Bool)

(assert (=> b!236028 (= e!153292 call!21944)))

(declare-fun b!236029 () Bool)

(assert (=> b!236029 (= e!153298 call!21947)))

(declare-fun b!236030 () Bool)

(declare-fun c!39287 () Bool)

(assert (=> b!236030 (= c!39287 (and (not (= (bvand (extraKeys!4122 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4122 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!236030 (= e!153292 e!153298)))

(declare-fun b!236031 () Bool)

(assert (=> b!236031 (= e!153301 (not call!21945))))

(declare-fun bm!21946 () Bool)

(assert (=> bm!21946 (= call!21945 (contains!1671 lt!119378 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!59245 c!39290) b!236014))

(assert (= (and d!59245 (not c!39290)) b!236015))

(assert (= (and b!236015 c!39286) b!236028))

(assert (= (and b!236015 (not c!39286)) b!236030))

(assert (= (and b!236030 c!39287) b!236020))

(assert (= (and b!236030 (not c!39287)) b!236029))

(assert (= (or b!236020 b!236029) bm!21943))

(assert (= (or b!236028 bm!21943) bm!21945))

(assert (= (or b!236028 b!236020) bm!21944))

(assert (= (or b!236014 bm!21945) bm!21940))

(assert (= (or b!236014 bm!21944) bm!21942))

(assert (= (and d!59245 res!115769) b!236013))

(assert (= (and d!59245 c!39289) b!236018))

(assert (= (and d!59245 (not c!39289)) b!236019))

(assert (= (and d!59245 res!115766) b!236012))

(assert (= (and b!236012 res!115772) b!236017))

(assert (= (and b!236012 (not res!115773)) b!236025))

(assert (= (and b!236025 res!115770) b!236024))

(assert (= (and b!236012 res!115765) b!236016))

(assert (= (and b!236016 c!39288) b!236027))

(assert (= (and b!236016 (not c!39288)) b!236031))

(assert (= (and b!236027 res!115771) b!236011))

(assert (= (or b!236027 b!236031) bm!21946))

(assert (= (and b!236016 res!115767) b!236022))

(assert (= (and b!236022 c!39291) b!236023))

(assert (= (and b!236022 (not c!39291)) b!236021))

(assert (= (and b!236023 res!115768) b!236026))

(assert (= (or b!236023 b!236021) bm!21941))

(declare-fun b_lambda!7941 () Bool)

(assert (=> (not b_lambda!7941) (not b!236024)))

(declare-fun t!8558 () Bool)

(declare-fun tb!2945 () Bool)

(assert (=> (and b!235906 (= (defaultEntry!4385 thiss!1504) (defaultEntry!4385 thiss!1504)) t!8558) tb!2945))

(declare-fun result!5141 () Bool)

(assert (=> tb!2945 (= result!5141 tp_is_empty!6213)))

(assert (=> b!236024 t!8558))

(declare-fun b_and!13305 () Bool)

(assert (= b_and!13301 (and (=> t!8558 result!5141) b_and!13305)))

(declare-fun m!256933 () Bool)

(assert (=> bm!21941 m!256933))

(declare-fun m!256935 () Bool)

(assert (=> bm!21940 m!256935))

(declare-fun m!256937 () Bool)

(assert (=> bm!21946 m!256937))

(declare-fun m!256939 () Bool)

(assert (=> b!236026 m!256939))

(declare-fun m!256941 () Bool)

(assert (=> b!236018 m!256941))

(declare-fun m!256943 () Bool)

(assert (=> b!236018 m!256943))

(declare-fun m!256945 () Bool)

(assert (=> b!236018 m!256945))

(assert (=> b!236018 m!256935))

(declare-fun m!256947 () Bool)

(assert (=> b!236018 m!256947))

(assert (=> b!236018 m!256941))

(declare-fun m!256949 () Bool)

(assert (=> b!236018 m!256949))

(declare-fun m!256951 () Bool)

(assert (=> b!236018 m!256951))

(declare-fun m!256953 () Bool)

(assert (=> b!236018 m!256953))

(declare-fun m!256955 () Bool)

(assert (=> b!236018 m!256955))

(declare-fun m!256957 () Bool)

(assert (=> b!236018 m!256957))

(declare-fun m!256959 () Bool)

(assert (=> b!236018 m!256959))

(assert (=> b!236018 m!256957))

(declare-fun m!256961 () Bool)

(assert (=> b!236018 m!256961))

(declare-fun m!256963 () Bool)

(assert (=> b!236018 m!256963))

(assert (=> b!236018 m!256951))

(declare-fun m!256965 () Bool)

(assert (=> b!236018 m!256965))

(declare-fun m!256967 () Bool)

(assert (=> b!236018 m!256967))

(assert (=> b!236018 m!256965))

(declare-fun m!256969 () Bool)

(assert (=> b!236018 m!256969))

(declare-fun m!256971 () Bool)

(assert (=> b!236018 m!256971))

(assert (=> d!59245 m!256873))

(declare-fun m!256973 () Bool)

(assert (=> bm!21942 m!256973))

(declare-fun m!256975 () Bool)

(assert (=> b!236024 m!256975))

(declare-fun m!256977 () Bool)

(assert (=> b!236024 m!256977))

(declare-fun m!256979 () Bool)

(assert (=> b!236024 m!256979))

(assert (=> b!236024 m!256975))

(assert (=> b!236024 m!256961))

(assert (=> b!236024 m!256977))

(assert (=> b!236024 m!256961))

(declare-fun m!256981 () Bool)

(assert (=> b!236024 m!256981))

(assert (=> b!236013 m!256961))

(assert (=> b!236013 m!256961))

(declare-fun m!256983 () Bool)

(assert (=> b!236013 m!256983))

(declare-fun m!256985 () Bool)

(assert (=> b!236011 m!256985))

(assert (=> b!236025 m!256961))

(assert (=> b!236025 m!256961))

(declare-fun m!256987 () Bool)

(assert (=> b!236025 m!256987))

(assert (=> b!236017 m!256961))

(assert (=> b!236017 m!256961))

(assert (=> b!236017 m!256983))

(declare-fun m!256989 () Bool)

(assert (=> b!236014 m!256989))

(assert (=> b!235901 d!59245))

(declare-fun d!59247 () Bool)

(assert (=> d!59247 (= (validMask!0 (mask!10366 thiss!1504)) (and (or (= (mask!10366 thiss!1504) #b00000000000000000000000000000111) (= (mask!10366 thiss!1504) #b00000000000000000000000000001111) (= (mask!10366 thiss!1504) #b00000000000000000000000000011111) (= (mask!10366 thiss!1504) #b00000000000000000000000000111111) (= (mask!10366 thiss!1504) #b00000000000000000000000001111111) (= (mask!10366 thiss!1504) #b00000000000000000000000011111111) (= (mask!10366 thiss!1504) #b00000000000000000000000111111111) (= (mask!10366 thiss!1504) #b00000000000000000000001111111111) (= (mask!10366 thiss!1504) #b00000000000000000000011111111111) (= (mask!10366 thiss!1504) #b00000000000000000000111111111111) (= (mask!10366 thiss!1504) #b00000000000000000001111111111111) (= (mask!10366 thiss!1504) #b00000000000000000011111111111111) (= (mask!10366 thiss!1504) #b00000000000000000111111111111111) (= (mask!10366 thiss!1504) #b00000000000000001111111111111111) (= (mask!10366 thiss!1504) #b00000000000000011111111111111111) (= (mask!10366 thiss!1504) #b00000000000000111111111111111111) (= (mask!10366 thiss!1504) #b00000000000001111111111111111111) (= (mask!10366 thiss!1504) #b00000000000011111111111111111111) (= (mask!10366 thiss!1504) #b00000000000111111111111111111111) (= (mask!10366 thiss!1504) #b00000000001111111111111111111111) (= (mask!10366 thiss!1504) #b00000000011111111111111111111111) (= (mask!10366 thiss!1504) #b00000000111111111111111111111111) (= (mask!10366 thiss!1504) #b00000001111111111111111111111111) (= (mask!10366 thiss!1504) #b00000011111111111111111111111111) (= (mask!10366 thiss!1504) #b00000111111111111111111111111111) (= (mask!10366 thiss!1504) #b00001111111111111111111111111111) (= (mask!10366 thiss!1504) #b00011111111111111111111111111111) (= (mask!10366 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!10366 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!235902 d!59247))

(declare-fun mapNonEmpty!10526 () Bool)

(declare-fun mapRes!10526 () Bool)

(declare-fun tp!22235 () Bool)

(declare-fun e!153308 () Bool)

(assert (=> mapNonEmpty!10526 (= mapRes!10526 (and tp!22235 e!153308))))

(declare-fun mapRest!10526 () (Array (_ BitVec 32) ValueCell!2763))

(declare-fun mapKey!10526 () (_ BitVec 32))

(declare-fun mapValue!10526 () ValueCell!2763)

(assert (=> mapNonEmpty!10526 (= mapRest!10520 (store mapRest!10526 mapKey!10526 mapValue!10526))))

(declare-fun mapIsEmpty!10526 () Bool)

(assert (=> mapIsEmpty!10526 mapRes!10526))

(declare-fun condMapEmpty!10526 () Bool)

(declare-fun mapDefault!10526 () ValueCell!2763)

(assert (=> mapNonEmpty!10520 (= condMapEmpty!10526 (= mapRest!10520 ((as const (Array (_ BitVec 32) ValueCell!2763)) mapDefault!10526)))))

(declare-fun e!153309 () Bool)

(assert (=> mapNonEmpty!10520 (= tp!22226 (and e!153309 mapRes!10526))))

(declare-fun b!236040 () Bool)

(assert (=> b!236040 (= e!153308 tp_is_empty!6213)))

(declare-fun b!236041 () Bool)

(assert (=> b!236041 (= e!153309 tp_is_empty!6213)))

(assert (= (and mapNonEmpty!10520 condMapEmpty!10526) mapIsEmpty!10526))

(assert (= (and mapNonEmpty!10520 (not condMapEmpty!10526)) mapNonEmpty!10526))

(assert (= (and mapNonEmpty!10526 ((_ is ValueCellFull!2763) mapValue!10526)) b!236040))

(assert (= (and mapNonEmpty!10520 ((_ is ValueCellFull!2763) mapDefault!10526)) b!236041))

(declare-fun m!256991 () Bool)

(assert (=> mapNonEmpty!10526 m!256991))

(declare-fun b_lambda!7943 () Bool)

(assert (= b_lambda!7941 (or (and b!235906 b_free!6351) b_lambda!7943)))

(check-sat (not d!59245) (not d!59237) (not b_next!6351) (not b!236017) tp_is_empty!6213 (not b!235968) (not bm!21941) (not bm!21946) (not d!59235) (not b!236018) (not b!236024) (not b!236026) (not b_lambda!7943) (not bm!21940) (not b!236013) b_and!13305 (not b!235958) (not b!236025) (not b!235939) (not b!236014) (not b!235941) (not b!235940) (not b!236011) (not bm!21942) (not mapNonEmpty!10526) (not d!59243) (not b!235966))
(check-sat b_and!13305 (not b_next!6351))
