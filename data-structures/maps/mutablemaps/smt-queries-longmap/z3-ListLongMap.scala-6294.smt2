; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80472 () Bool)

(assert start!80472)

(declare-fun b!944896 () Bool)

(declare-fun b_free!18087 () Bool)

(declare-fun b_next!18087 () Bool)

(assert (=> b!944896 (= b_free!18087 (not b_next!18087))))

(declare-fun tp!62771 () Bool)

(declare-fun b_and!29523 () Bool)

(assert (=> b!944896 (= tp!62771 b_and!29523)))

(declare-fun mapIsEmpty!32718 () Bool)

(declare-fun mapRes!32718 () Bool)

(assert (=> mapIsEmpty!32718 mapRes!32718))

(declare-fun e!531438 () Bool)

(declare-datatypes ((V!32425 0))(
  ( (V!32426 (val!10348 Int)) )
))
(declare-datatypes ((ValueCell!9816 0))(
  ( (ValueCellFull!9816 (v!12880 V!32425)) (EmptyCell!9816) )
))
(declare-datatypes ((array!57180 0))(
  ( (array!57181 (arr!27511 (Array (_ BitVec 32) ValueCell!9816)) (size!27978 (_ BitVec 32))) )
))
(declare-datatypes ((array!57182 0))(
  ( (array!57183 (arr!27512 (Array (_ BitVec 32) (_ BitVec 64))) (size!27979 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4782 0))(
  ( (LongMapFixedSize!4783 (defaultEntry!5686 Int) (mask!27341 (_ BitVec 32)) (extraKeys!5418 (_ BitVec 32)) (zeroValue!5522 V!32425) (minValue!5522 V!32425) (_size!2446 (_ BitVec 32)) (_keys!10560 array!57182) (_values!5709 array!57180) (_vacant!2446 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4782)

(declare-fun tp_is_empty!20595 () Bool)

(declare-fun e!531433 () Bool)

(declare-fun array_inv!21318 (array!57182) Bool)

(declare-fun array_inv!21319 (array!57180) Bool)

(assert (=> b!944896 (= e!531438 (and tp!62771 tp_is_empty!20595 (array_inv!21318 (_keys!10560 thiss!1141)) (array_inv!21319 (_values!5709 thiss!1141)) e!531433))))

(declare-fun b!944898 () Bool)

(declare-fun res!634830 () Bool)

(declare-fun e!531434 () Bool)

(assert (=> b!944898 (=> (not res!634830) (not e!531434))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!944898 (= res!634830 (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!944899 () Bool)

(declare-fun e!531437 () Bool)

(assert (=> b!944899 (= e!531433 (and e!531437 mapRes!32718))))

(declare-fun condMapEmpty!32718 () Bool)

(declare-fun mapDefault!32718 () ValueCell!9816)

(assert (=> b!944899 (= condMapEmpty!32718 (= (arr!27511 (_values!5709 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9816)) mapDefault!32718)))))

(declare-fun b!944900 () Bool)

(assert (=> b!944900 (= e!531437 tp_is_empty!20595)))

(declare-fun b!944901 () Bool)

(declare-fun e!531436 () Bool)

(assert (=> b!944901 (= e!531436 tp_is_empty!20595)))

(declare-fun mapNonEmpty!32718 () Bool)

(declare-fun tp!62772 () Bool)

(assert (=> mapNonEmpty!32718 (= mapRes!32718 (and tp!62772 e!531436))))

(declare-fun mapRest!32718 () (Array (_ BitVec 32) ValueCell!9816))

(declare-fun mapKey!32718 () (_ BitVec 32))

(declare-fun mapValue!32718 () ValueCell!9816)

(assert (=> mapNonEmpty!32718 (= (arr!27511 (_values!5709 thiss!1141)) (store mapRest!32718 mapKey!32718 mapValue!32718))))

(declare-fun res!634831 () Bool)

(assert (=> start!80472 (=> (not res!634831) (not e!531434))))

(declare-fun valid!1804 (LongMapFixedSize!4782) Bool)

(assert (=> start!80472 (= res!634831 (valid!1804 thiss!1141))))

(assert (=> start!80472 e!531434))

(assert (=> start!80472 e!531438))

(assert (=> start!80472 true))

(declare-fun b!944897 () Bool)

(declare-datatypes ((tuple2!13600 0))(
  ( (tuple2!13601 (_1!6810 (_ BitVec 64)) (_2!6810 V!32425)) )
))
(declare-datatypes ((List!19414 0))(
  ( (Nil!19411) (Cons!19410 (h!20561 tuple2!13600) (t!27739 List!19414)) )
))
(declare-datatypes ((ListLongMap!12311 0))(
  ( (ListLongMap!12312 (toList!6171 List!19414)) )
))
(declare-fun contains!5194 (ListLongMap!12311 (_ BitVec 64)) Bool)

(declare-fun map!13033 (LongMapFixedSize!4782) ListLongMap!12311)

(assert (=> b!944897 (= e!531434 (not (= (not (= (bvand (extraKeys!5418 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (contains!5194 (map!13033 thiss!1141) key!756))))))

(assert (= (and start!80472 res!634831) b!944898))

(assert (= (and b!944898 res!634830) b!944897))

(assert (= (and b!944899 condMapEmpty!32718) mapIsEmpty!32718))

(assert (= (and b!944899 (not condMapEmpty!32718)) mapNonEmpty!32718))

(get-info :version)

(assert (= (and mapNonEmpty!32718 ((_ is ValueCellFull!9816) mapValue!32718)) b!944901))

(assert (= (and b!944899 ((_ is ValueCellFull!9816) mapDefault!32718)) b!944900))

(assert (= b!944896 b!944899))

(assert (= start!80472 b!944896))

(declare-fun m!878947 () Bool)

(assert (=> b!944896 m!878947))

(declare-fun m!878949 () Bool)

(assert (=> b!944896 m!878949))

(declare-fun m!878951 () Bool)

(assert (=> mapNonEmpty!32718 m!878951))

(declare-fun m!878953 () Bool)

(assert (=> start!80472 m!878953))

(declare-fun m!878955 () Bool)

(assert (=> b!944897 m!878955))

(assert (=> b!944897 m!878955))

(declare-fun m!878957 () Bool)

(assert (=> b!944897 m!878957))

(check-sat (not start!80472) b_and!29523 (not b!944896) tp_is_empty!20595 (not mapNonEmpty!32718) (not b_next!18087) (not b!944897))
(check-sat b_and!29523 (not b_next!18087))
(get-model)

(declare-fun d!114267 () Bool)

(assert (=> d!114267 (= (array_inv!21318 (_keys!10560 thiss!1141)) (bvsge (size!27979 (_keys!10560 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!944896 d!114267))

(declare-fun d!114269 () Bool)

(assert (=> d!114269 (= (array_inv!21319 (_values!5709 thiss!1141)) (bvsge (size!27978 (_values!5709 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!944896 d!114269))

(declare-fun d!114271 () Bool)

(declare-fun res!634844 () Bool)

(declare-fun e!531459 () Bool)

(assert (=> d!114271 (=> (not res!634844) (not e!531459))))

(declare-fun simpleValid!348 (LongMapFixedSize!4782) Bool)

(assert (=> d!114271 (= res!634844 (simpleValid!348 thiss!1141))))

(assert (=> d!114271 (= (valid!1804 thiss!1141) e!531459)))

(declare-fun b!944926 () Bool)

(declare-fun res!634845 () Bool)

(assert (=> b!944926 (=> (not res!634845) (not e!531459))))

(declare-fun arrayCountValidKeys!0 (array!57182 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!944926 (= res!634845 (= (arrayCountValidKeys!0 (_keys!10560 thiss!1141) #b00000000000000000000000000000000 (size!27979 (_keys!10560 thiss!1141))) (_size!2446 thiss!1141)))))

(declare-fun b!944927 () Bool)

(declare-fun res!634846 () Bool)

(assert (=> b!944927 (=> (not res!634846) (not e!531459))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57182 (_ BitVec 32)) Bool)

(assert (=> b!944927 (= res!634846 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10560 thiss!1141) (mask!27341 thiss!1141)))))

(declare-fun b!944928 () Bool)

(declare-datatypes ((List!19416 0))(
  ( (Nil!19413) (Cons!19412 (h!20563 (_ BitVec 64)) (t!27741 List!19416)) )
))
(declare-fun arrayNoDuplicates!0 (array!57182 (_ BitVec 32) List!19416) Bool)

(assert (=> b!944928 (= e!531459 (arrayNoDuplicates!0 (_keys!10560 thiss!1141) #b00000000000000000000000000000000 Nil!19413))))

(assert (= (and d!114271 res!634844) b!944926))

(assert (= (and b!944926 res!634845) b!944927))

(assert (= (and b!944927 res!634846) b!944928))

(declare-fun m!878971 () Bool)

(assert (=> d!114271 m!878971))

(declare-fun m!878973 () Bool)

(assert (=> b!944926 m!878973))

(declare-fun m!878975 () Bool)

(assert (=> b!944927 m!878975))

(declare-fun m!878977 () Bool)

(assert (=> b!944928 m!878977))

(assert (=> start!80472 d!114271))

(declare-fun d!114273 () Bool)

(declare-fun e!531464 () Bool)

(assert (=> d!114273 e!531464))

(declare-fun res!634849 () Bool)

(assert (=> d!114273 (=> res!634849 e!531464)))

(declare-fun lt!425794 () Bool)

(assert (=> d!114273 (= res!634849 (not lt!425794))))

(declare-fun lt!425792 () Bool)

(assert (=> d!114273 (= lt!425794 lt!425792)))

(declare-datatypes ((Unit!31881 0))(
  ( (Unit!31882) )
))
(declare-fun lt!425793 () Unit!31881)

(declare-fun e!531465 () Unit!31881)

(assert (=> d!114273 (= lt!425793 e!531465)))

(declare-fun c!98263 () Bool)

(assert (=> d!114273 (= c!98263 lt!425792)))

(declare-fun containsKey!454 (List!19414 (_ BitVec 64)) Bool)

(assert (=> d!114273 (= lt!425792 (containsKey!454 (toList!6171 (map!13033 thiss!1141)) key!756))))

(assert (=> d!114273 (= (contains!5194 (map!13033 thiss!1141) key!756) lt!425794)))

(declare-fun b!944935 () Bool)

(declare-fun lt!425795 () Unit!31881)

(assert (=> b!944935 (= e!531465 lt!425795)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!349 (List!19414 (_ BitVec 64)) Unit!31881)

(assert (=> b!944935 (= lt!425795 (lemmaContainsKeyImpliesGetValueByKeyDefined!349 (toList!6171 (map!13033 thiss!1141)) key!756))))

(declare-datatypes ((Option!495 0))(
  ( (Some!494 (v!12882 V!32425)) (None!493) )
))
(declare-fun isDefined!359 (Option!495) Bool)

(declare-fun getValueByKey!489 (List!19414 (_ BitVec 64)) Option!495)

(assert (=> b!944935 (isDefined!359 (getValueByKey!489 (toList!6171 (map!13033 thiss!1141)) key!756))))

(declare-fun b!944936 () Bool)

(declare-fun Unit!31883 () Unit!31881)

(assert (=> b!944936 (= e!531465 Unit!31883)))

(declare-fun b!944937 () Bool)

(assert (=> b!944937 (= e!531464 (isDefined!359 (getValueByKey!489 (toList!6171 (map!13033 thiss!1141)) key!756)))))

(assert (= (and d!114273 c!98263) b!944935))

(assert (= (and d!114273 (not c!98263)) b!944936))

(assert (= (and d!114273 (not res!634849)) b!944937))

(declare-fun m!878979 () Bool)

(assert (=> d!114273 m!878979))

(declare-fun m!878981 () Bool)

(assert (=> b!944935 m!878981))

(declare-fun m!878983 () Bool)

(assert (=> b!944935 m!878983))

(assert (=> b!944935 m!878983))

(declare-fun m!878985 () Bool)

(assert (=> b!944935 m!878985))

(assert (=> b!944937 m!878983))

(assert (=> b!944937 m!878983))

(assert (=> b!944937 m!878985))

(assert (=> b!944897 d!114273))

(declare-fun d!114275 () Bool)

(declare-fun getCurrentListMap!3358 (array!57182 array!57180 (_ BitVec 32) (_ BitVec 32) V!32425 V!32425 (_ BitVec 32) Int) ListLongMap!12311)

(assert (=> d!114275 (= (map!13033 thiss!1141) (getCurrentListMap!3358 (_keys!10560 thiss!1141) (_values!5709 thiss!1141) (mask!27341 thiss!1141) (extraKeys!5418 thiss!1141) (zeroValue!5522 thiss!1141) (minValue!5522 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5686 thiss!1141)))))

(declare-fun bs!26562 () Bool)

(assert (= bs!26562 d!114275))

(declare-fun m!878987 () Bool)

(assert (=> bs!26562 m!878987))

(assert (=> b!944897 d!114275))

(declare-fun condMapEmpty!32724 () Bool)

(declare-fun mapDefault!32724 () ValueCell!9816)

(assert (=> mapNonEmpty!32718 (= condMapEmpty!32724 (= mapRest!32718 ((as const (Array (_ BitVec 32) ValueCell!9816)) mapDefault!32724)))))

(declare-fun e!531471 () Bool)

(declare-fun mapRes!32724 () Bool)

(assert (=> mapNonEmpty!32718 (= tp!62772 (and e!531471 mapRes!32724))))

(declare-fun mapNonEmpty!32724 () Bool)

(declare-fun tp!62781 () Bool)

(declare-fun e!531470 () Bool)

(assert (=> mapNonEmpty!32724 (= mapRes!32724 (and tp!62781 e!531470))))

(declare-fun mapKey!32724 () (_ BitVec 32))

(declare-fun mapValue!32724 () ValueCell!9816)

(declare-fun mapRest!32724 () (Array (_ BitVec 32) ValueCell!9816))

(assert (=> mapNonEmpty!32724 (= mapRest!32718 (store mapRest!32724 mapKey!32724 mapValue!32724))))

(declare-fun mapIsEmpty!32724 () Bool)

(assert (=> mapIsEmpty!32724 mapRes!32724))

(declare-fun b!944944 () Bool)

(assert (=> b!944944 (= e!531470 tp_is_empty!20595)))

(declare-fun b!944945 () Bool)

(assert (=> b!944945 (= e!531471 tp_is_empty!20595)))

(assert (= (and mapNonEmpty!32718 condMapEmpty!32724) mapIsEmpty!32724))

(assert (= (and mapNonEmpty!32718 (not condMapEmpty!32724)) mapNonEmpty!32724))

(assert (= (and mapNonEmpty!32724 ((_ is ValueCellFull!9816) mapValue!32724)) b!944944))

(assert (= (and mapNonEmpty!32718 ((_ is ValueCellFull!9816) mapDefault!32724)) b!944945))

(declare-fun m!878989 () Bool)

(assert (=> mapNonEmpty!32724 m!878989))

(check-sat (not d!114275) (not b!944926) (not b!944935) (not d!114271) b_and!29523 (not d!114273) tp_is_empty!20595 (not b!944937) (not b_next!18087) (not b!944927) (not mapNonEmpty!32724) (not b!944928))
(check-sat b_and!29523 (not b_next!18087))
(get-model)

(declare-fun d!114277 () Bool)

(declare-fun lt!425798 () (_ BitVec 32))

(assert (=> d!114277 (and (bvsge lt!425798 #b00000000000000000000000000000000) (bvsle lt!425798 (bvsub (size!27979 (_keys!10560 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun e!531476 () (_ BitVec 32))

(assert (=> d!114277 (= lt!425798 e!531476)))

(declare-fun c!98268 () Bool)

(assert (=> d!114277 (= c!98268 (bvsge #b00000000000000000000000000000000 (size!27979 (_keys!10560 thiss!1141))))))

(assert (=> d!114277 (and (bvsle #b00000000000000000000000000000000 (size!27979 (_keys!10560 thiss!1141))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!27979 (_keys!10560 thiss!1141)) (size!27979 (_keys!10560 thiss!1141))))))

(assert (=> d!114277 (= (arrayCountValidKeys!0 (_keys!10560 thiss!1141) #b00000000000000000000000000000000 (size!27979 (_keys!10560 thiss!1141))) lt!425798)))

(declare-fun bm!40998 () Bool)

(declare-fun call!41001 () (_ BitVec 32))

(assert (=> bm!40998 (= call!41001 (arrayCountValidKeys!0 (_keys!10560 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!27979 (_keys!10560 thiss!1141))))))

(declare-fun b!944954 () Bool)

(assert (=> b!944954 (= e!531476 #b00000000000000000000000000000000)))

(declare-fun b!944955 () Bool)

(declare-fun e!531477 () (_ BitVec 32))

(assert (=> b!944955 (= e!531477 (bvadd #b00000000000000000000000000000001 call!41001))))

(declare-fun b!944956 () Bool)

(assert (=> b!944956 (= e!531477 call!41001)))

(declare-fun b!944957 () Bool)

(assert (=> b!944957 (= e!531476 e!531477)))

(declare-fun c!98269 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!944957 (= c!98269 (validKeyInArray!0 (select (arr!27512 (_keys!10560 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (= (and d!114277 c!98268) b!944954))

(assert (= (and d!114277 (not c!98268)) b!944957))

(assert (= (and b!944957 c!98269) b!944955))

(assert (= (and b!944957 (not c!98269)) b!944956))

(assert (= (or b!944955 b!944956) bm!40998))

(declare-fun m!878991 () Bool)

(assert (=> bm!40998 m!878991))

(declare-fun m!878993 () Bool)

(assert (=> b!944957 m!878993))

(assert (=> b!944957 m!878993))

(declare-fun m!878995 () Bool)

(assert (=> b!944957 m!878995))

(assert (=> b!944926 d!114277))

(declare-fun bm!41013 () Bool)

(declare-fun call!41021 () ListLongMap!12311)

(declare-fun call!41022 () ListLongMap!12311)

(assert (=> bm!41013 (= call!41021 call!41022)))

(declare-fun b!945001 () Bool)

(declare-fun res!634869 () Bool)

(declare-fun e!531506 () Bool)

(assert (=> b!945001 (=> (not res!634869) (not e!531506))))

(declare-fun e!531505 () Bool)

(assert (=> b!945001 (= res!634869 e!531505)))

(declare-fun res!634875 () Bool)

(assert (=> b!945001 (=> res!634875 e!531505)))

(declare-fun e!531514 () Bool)

(assert (=> b!945001 (= res!634875 (not e!531514))))

(declare-fun res!634871 () Bool)

(assert (=> b!945001 (=> (not res!634871) (not e!531514))))

(assert (=> b!945001 (= res!634871 (bvslt #b00000000000000000000000000000000 (size!27979 (_keys!10560 thiss!1141))))))

(declare-fun b!945002 () Bool)

(declare-fun e!531504 () Bool)

(assert (=> b!945002 (= e!531504 (validKeyInArray!0 (select (arr!27512 (_keys!10560 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!945003 () Bool)

(declare-fun e!531511 () ListLongMap!12311)

(declare-fun e!531509 () ListLongMap!12311)

(assert (=> b!945003 (= e!531511 e!531509)))

(declare-fun c!98287 () Bool)

(assert (=> b!945003 (= c!98287 (and (not (= (bvand (extraKeys!5418 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5418 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!41014 () Bool)

(declare-fun call!41016 () ListLongMap!12311)

(declare-fun c!98286 () Bool)

(declare-fun call!41019 () ListLongMap!12311)

(declare-fun +!2816 (ListLongMap!12311 tuple2!13600) ListLongMap!12311)

(assert (=> bm!41014 (= call!41016 (+!2816 (ite c!98286 call!41019 (ite c!98287 call!41022 call!41021)) (ite (or c!98286 c!98287) (tuple2!13601 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5522 thiss!1141)) (tuple2!13601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5522 thiss!1141)))))))

(declare-fun bm!41015 () Bool)

(declare-fun call!41018 () ListLongMap!12311)

(assert (=> bm!41015 (= call!41018 call!41016)))

(declare-fun b!945004 () Bool)

(declare-fun e!531507 () Bool)

(declare-fun lt!425860 () ListLongMap!12311)

(declare-fun apply!902 (ListLongMap!12311 (_ BitVec 64)) V!32425)

(assert (=> b!945004 (= e!531507 (= (apply!902 lt!425860 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5522 thiss!1141)))))

(declare-fun b!945005 () Bool)

(declare-fun e!531512 () Unit!31881)

(declare-fun lt!425850 () Unit!31881)

(assert (=> b!945005 (= e!531512 lt!425850)))

(declare-fun lt!425843 () ListLongMap!12311)

(declare-fun getCurrentListMapNoExtraKeys!3322 (array!57182 array!57180 (_ BitVec 32) (_ BitVec 32) V!32425 V!32425 (_ BitVec 32) Int) ListLongMap!12311)

(assert (=> b!945005 (= lt!425843 (getCurrentListMapNoExtraKeys!3322 (_keys!10560 thiss!1141) (_values!5709 thiss!1141) (mask!27341 thiss!1141) (extraKeys!5418 thiss!1141) (zeroValue!5522 thiss!1141) (minValue!5522 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5686 thiss!1141)))))

(declare-fun lt!425852 () (_ BitVec 64))

(assert (=> b!945005 (= lt!425852 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!425856 () (_ BitVec 64))

(assert (=> b!945005 (= lt!425856 (select (arr!27512 (_keys!10560 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!425848 () Unit!31881)

(declare-fun addStillContains!572 (ListLongMap!12311 (_ BitVec 64) V!32425 (_ BitVec 64)) Unit!31881)

(assert (=> b!945005 (= lt!425848 (addStillContains!572 lt!425843 lt!425852 (zeroValue!5522 thiss!1141) lt!425856))))

(assert (=> b!945005 (contains!5194 (+!2816 lt!425843 (tuple2!13601 lt!425852 (zeroValue!5522 thiss!1141))) lt!425856)))

(declare-fun lt!425855 () Unit!31881)

(assert (=> b!945005 (= lt!425855 lt!425848)))

(declare-fun lt!425864 () ListLongMap!12311)

(assert (=> b!945005 (= lt!425864 (getCurrentListMapNoExtraKeys!3322 (_keys!10560 thiss!1141) (_values!5709 thiss!1141) (mask!27341 thiss!1141) (extraKeys!5418 thiss!1141) (zeroValue!5522 thiss!1141) (minValue!5522 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5686 thiss!1141)))))

(declare-fun lt!425845 () (_ BitVec 64))

(assert (=> b!945005 (= lt!425845 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!425847 () (_ BitVec 64))

(assert (=> b!945005 (= lt!425847 (select (arr!27512 (_keys!10560 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!425862 () Unit!31881)

(declare-fun addApplyDifferent!446 (ListLongMap!12311 (_ BitVec 64) V!32425 (_ BitVec 64)) Unit!31881)

(assert (=> b!945005 (= lt!425862 (addApplyDifferent!446 lt!425864 lt!425845 (minValue!5522 thiss!1141) lt!425847))))

(assert (=> b!945005 (= (apply!902 (+!2816 lt!425864 (tuple2!13601 lt!425845 (minValue!5522 thiss!1141))) lt!425847) (apply!902 lt!425864 lt!425847))))

(declare-fun lt!425846 () Unit!31881)

(assert (=> b!945005 (= lt!425846 lt!425862)))

(declare-fun lt!425858 () ListLongMap!12311)

(assert (=> b!945005 (= lt!425858 (getCurrentListMapNoExtraKeys!3322 (_keys!10560 thiss!1141) (_values!5709 thiss!1141) (mask!27341 thiss!1141) (extraKeys!5418 thiss!1141) (zeroValue!5522 thiss!1141) (minValue!5522 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5686 thiss!1141)))))

(declare-fun lt!425853 () (_ BitVec 64))

(assert (=> b!945005 (= lt!425853 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!425849 () (_ BitVec 64))

(assert (=> b!945005 (= lt!425849 (select (arr!27512 (_keys!10560 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!425863 () Unit!31881)

(assert (=> b!945005 (= lt!425863 (addApplyDifferent!446 lt!425858 lt!425853 (zeroValue!5522 thiss!1141) lt!425849))))

(assert (=> b!945005 (= (apply!902 (+!2816 lt!425858 (tuple2!13601 lt!425853 (zeroValue!5522 thiss!1141))) lt!425849) (apply!902 lt!425858 lt!425849))))

(declare-fun lt!425861 () Unit!31881)

(assert (=> b!945005 (= lt!425861 lt!425863)))

(declare-fun lt!425859 () ListLongMap!12311)

(assert (=> b!945005 (= lt!425859 (getCurrentListMapNoExtraKeys!3322 (_keys!10560 thiss!1141) (_values!5709 thiss!1141) (mask!27341 thiss!1141) (extraKeys!5418 thiss!1141) (zeroValue!5522 thiss!1141) (minValue!5522 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5686 thiss!1141)))))

(declare-fun lt!425854 () (_ BitVec 64))

(assert (=> b!945005 (= lt!425854 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!425851 () (_ BitVec 64))

(assert (=> b!945005 (= lt!425851 (select (arr!27512 (_keys!10560 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!945005 (= lt!425850 (addApplyDifferent!446 lt!425859 lt!425854 (minValue!5522 thiss!1141) lt!425851))))

(assert (=> b!945005 (= (apply!902 (+!2816 lt!425859 (tuple2!13601 lt!425854 (minValue!5522 thiss!1141))) lt!425851) (apply!902 lt!425859 lt!425851))))

(declare-fun b!945006 () Bool)

(declare-fun e!531515 () Bool)

(assert (=> b!945006 (= e!531506 e!531515)))

(declare-fun c!98282 () Bool)

(assert (=> b!945006 (= c!98282 (not (= (bvand (extraKeys!5418 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!945007 () Bool)

(declare-fun Unit!31884 () Unit!31881)

(assert (=> b!945007 (= e!531512 Unit!31884)))

(declare-fun b!945008 () Bool)

(declare-fun e!531508 () Bool)

(declare-fun call!41020 () Bool)

(assert (=> b!945008 (= e!531508 (not call!41020))))

(declare-fun b!945009 () Bool)

(declare-fun e!531516 () Bool)

(declare-fun get!14481 (ValueCell!9816 V!32425) V!32425)

(declare-fun dynLambda!1655 (Int (_ BitVec 64)) V!32425)

(assert (=> b!945009 (= e!531516 (= (apply!902 lt!425860 (select (arr!27512 (_keys!10560 thiss!1141)) #b00000000000000000000000000000000)) (get!14481 (select (arr!27511 (_values!5709 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1655 (defaultEntry!5686 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!945009 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!27978 (_values!5709 thiss!1141))))))

(assert (=> b!945009 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!27979 (_keys!10560 thiss!1141))))))

(declare-fun b!945010 () Bool)

(declare-fun e!531510 () ListLongMap!12311)

(assert (=> b!945010 (= e!531510 call!41018)))

(declare-fun b!945011 () Bool)

(assert (=> b!945011 (= e!531509 call!41018)))

(declare-fun bm!41016 () Bool)

(assert (=> bm!41016 (= call!41022 call!41019)))

(declare-fun b!945012 () Bool)

(assert (=> b!945012 (= e!531511 (+!2816 call!41016 (tuple2!13601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5522 thiss!1141))))))

(declare-fun b!945013 () Bool)

(assert (=> b!945013 (= e!531510 call!41021)))

(declare-fun d!114279 () Bool)

(assert (=> d!114279 e!531506))

(declare-fun res!634873 () Bool)

(assert (=> d!114279 (=> (not res!634873) (not e!531506))))

(assert (=> d!114279 (= res!634873 (or (bvsge #b00000000000000000000000000000000 (size!27979 (_keys!10560 thiss!1141))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!27979 (_keys!10560 thiss!1141))))))))

(declare-fun lt!425844 () ListLongMap!12311)

(assert (=> d!114279 (= lt!425860 lt!425844)))

(declare-fun lt!425857 () Unit!31881)

(assert (=> d!114279 (= lt!425857 e!531512)))

(declare-fun c!98283 () Bool)

(assert (=> d!114279 (= c!98283 e!531504)))

(declare-fun res!634872 () Bool)

(assert (=> d!114279 (=> (not res!634872) (not e!531504))))

(assert (=> d!114279 (= res!634872 (bvslt #b00000000000000000000000000000000 (size!27979 (_keys!10560 thiss!1141))))))

(assert (=> d!114279 (= lt!425844 e!531511)))

(assert (=> d!114279 (= c!98286 (and (not (= (bvand (extraKeys!5418 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5418 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!114279 (validMask!0 (mask!27341 thiss!1141))))

(assert (=> d!114279 (= (getCurrentListMap!3358 (_keys!10560 thiss!1141) (_values!5709 thiss!1141) (mask!27341 thiss!1141) (extraKeys!5418 thiss!1141) (zeroValue!5522 thiss!1141) (minValue!5522 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5686 thiss!1141)) lt!425860)))

(declare-fun b!945000 () Bool)

(assert (=> b!945000 (= e!531508 e!531507)))

(declare-fun res!634876 () Bool)

(assert (=> b!945000 (= res!634876 call!41020)))

(assert (=> b!945000 (=> (not res!634876) (not e!531507))))

(declare-fun b!945014 () Bool)

(declare-fun e!531513 () Bool)

(assert (=> b!945014 (= e!531513 (= (apply!902 lt!425860 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5522 thiss!1141)))))

(declare-fun bm!41017 () Bool)

(assert (=> bm!41017 (= call!41020 (contains!5194 lt!425860 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!945015 () Bool)

(declare-fun c!98284 () Bool)

(assert (=> b!945015 (= c!98284 (and (not (= (bvand (extraKeys!5418 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5418 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!945015 (= e!531509 e!531510)))

(declare-fun b!945016 () Bool)

(assert (=> b!945016 (= e!531514 (validKeyInArray!0 (select (arr!27512 (_keys!10560 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!945017 () Bool)

(assert (=> b!945017 (= e!531515 e!531513)))

(declare-fun res!634868 () Bool)

(declare-fun call!41017 () Bool)

(assert (=> b!945017 (= res!634868 call!41017)))

(assert (=> b!945017 (=> (not res!634868) (not e!531513))))

(declare-fun bm!41018 () Bool)

(assert (=> bm!41018 (= call!41019 (getCurrentListMapNoExtraKeys!3322 (_keys!10560 thiss!1141) (_values!5709 thiss!1141) (mask!27341 thiss!1141) (extraKeys!5418 thiss!1141) (zeroValue!5522 thiss!1141) (minValue!5522 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5686 thiss!1141)))))

(declare-fun b!945018 () Bool)

(assert (=> b!945018 (= e!531515 (not call!41017))))

(declare-fun b!945019 () Bool)

(declare-fun res!634870 () Bool)

(assert (=> b!945019 (=> (not res!634870) (not e!531506))))

(assert (=> b!945019 (= res!634870 e!531508)))

(declare-fun c!98285 () Bool)

(assert (=> b!945019 (= c!98285 (not (= (bvand (extraKeys!5418 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!41019 () Bool)

(assert (=> bm!41019 (= call!41017 (contains!5194 lt!425860 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!945020 () Bool)

(assert (=> b!945020 (= e!531505 e!531516)))

(declare-fun res!634874 () Bool)

(assert (=> b!945020 (=> (not res!634874) (not e!531516))))

(assert (=> b!945020 (= res!634874 (contains!5194 lt!425860 (select (arr!27512 (_keys!10560 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!945020 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!27979 (_keys!10560 thiss!1141))))))

(assert (= (and d!114279 c!98286) b!945012))

(assert (= (and d!114279 (not c!98286)) b!945003))

(assert (= (and b!945003 c!98287) b!945011))

(assert (= (and b!945003 (not c!98287)) b!945015))

(assert (= (and b!945015 c!98284) b!945010))

(assert (= (and b!945015 (not c!98284)) b!945013))

(assert (= (or b!945010 b!945013) bm!41013))

(assert (= (or b!945011 bm!41013) bm!41016))

(assert (= (or b!945011 b!945010) bm!41015))

(assert (= (or b!945012 bm!41016) bm!41018))

(assert (= (or b!945012 bm!41015) bm!41014))

(assert (= (and d!114279 res!634872) b!945002))

(assert (= (and d!114279 c!98283) b!945005))

(assert (= (and d!114279 (not c!98283)) b!945007))

(assert (= (and d!114279 res!634873) b!945001))

(assert (= (and b!945001 res!634871) b!945016))

(assert (= (and b!945001 (not res!634875)) b!945020))

(assert (= (and b!945020 res!634874) b!945009))

(assert (= (and b!945001 res!634869) b!945019))

(assert (= (and b!945019 c!98285) b!945000))

(assert (= (and b!945019 (not c!98285)) b!945008))

(assert (= (and b!945000 res!634876) b!945004))

(assert (= (or b!945000 b!945008) bm!41017))

(assert (= (and b!945019 res!634870) b!945006))

(assert (= (and b!945006 c!98282) b!945017))

(assert (= (and b!945006 (not c!98282)) b!945018))

(assert (= (and b!945017 res!634868) b!945014))

(assert (= (or b!945017 b!945018) bm!41019))

(declare-fun b_lambda!14321 () Bool)

(assert (=> (not b_lambda!14321) (not b!945009)))

(declare-fun t!27743 () Bool)

(declare-fun tb!6177 () Bool)

(assert (=> (and b!944896 (= (defaultEntry!5686 thiss!1141) (defaultEntry!5686 thiss!1141)) t!27743) tb!6177))

(declare-fun result!12211 () Bool)

(assert (=> tb!6177 (= result!12211 tp_is_empty!20595)))

(assert (=> b!945009 t!27743))

(declare-fun b_and!29527 () Bool)

(assert (= b_and!29523 (and (=> t!27743 result!12211) b_and!29527)))

(declare-fun m!878997 () Bool)

(assert (=> d!114279 m!878997))

(declare-fun m!878999 () Bool)

(assert (=> bm!41018 m!878999))

(declare-fun m!879001 () Bool)

(assert (=> bm!41019 m!879001))

(declare-fun m!879003 () Bool)

(assert (=> b!945012 m!879003))

(declare-fun m!879005 () Bool)

(assert (=> bm!41017 m!879005))

(declare-fun m!879007 () Bool)

(assert (=> b!945005 m!879007))

(declare-fun m!879009 () Bool)

(assert (=> b!945005 m!879009))

(assert (=> b!945005 m!878993))

(declare-fun m!879011 () Bool)

(assert (=> b!945005 m!879011))

(declare-fun m!879013 () Bool)

(assert (=> b!945005 m!879013))

(declare-fun m!879015 () Bool)

(assert (=> b!945005 m!879015))

(declare-fun m!879017 () Bool)

(assert (=> b!945005 m!879017))

(assert (=> b!945005 m!879011))

(declare-fun m!879019 () Bool)

(assert (=> b!945005 m!879019))

(declare-fun m!879021 () Bool)

(assert (=> b!945005 m!879021))

(declare-fun m!879023 () Bool)

(assert (=> b!945005 m!879023))

(declare-fun m!879025 () Bool)

(assert (=> b!945005 m!879025))

(assert (=> b!945005 m!879023))

(declare-fun m!879027 () Bool)

(assert (=> b!945005 m!879027))

(assert (=> b!945005 m!879021))

(declare-fun m!879029 () Bool)

(assert (=> b!945005 m!879029))

(declare-fun m!879031 () Bool)

(assert (=> b!945005 m!879031))

(assert (=> b!945005 m!879007))

(declare-fun m!879033 () Bool)

(assert (=> b!945005 m!879033))

(declare-fun m!879035 () Bool)

(assert (=> b!945005 m!879035))

(assert (=> b!945005 m!878999))

(assert (=> b!945020 m!878993))

(assert (=> b!945020 m!878993))

(declare-fun m!879037 () Bool)

(assert (=> b!945020 m!879037))

(declare-fun m!879039 () Bool)

(assert (=> b!945009 m!879039))

(assert (=> b!945009 m!878993))

(declare-fun m!879041 () Bool)

(assert (=> b!945009 m!879041))

(declare-fun m!879043 () Bool)

(assert (=> b!945009 m!879043))

(assert (=> b!945009 m!879039))

(assert (=> b!945009 m!879043))

(declare-fun m!879045 () Bool)

(assert (=> b!945009 m!879045))

(assert (=> b!945009 m!878993))

(declare-fun m!879047 () Bool)

(assert (=> b!945004 m!879047))

(declare-fun m!879049 () Bool)

(assert (=> b!945014 m!879049))

(assert (=> b!945016 m!878993))

(assert (=> b!945016 m!878993))

(assert (=> b!945016 m!878995))

(declare-fun m!879051 () Bool)

(assert (=> bm!41014 m!879051))

(assert (=> b!945002 m!878993))

(assert (=> b!945002 m!878993))

(assert (=> b!945002 m!878995))

(assert (=> d!114275 d!114279))

(declare-fun bm!41022 () Bool)

(declare-fun call!41025 () Bool)

(assert (=> bm!41022 (= call!41025 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10560 thiss!1141) (mask!27341 thiss!1141)))))

(declare-fun d!114281 () Bool)

(declare-fun res!634881 () Bool)

(declare-fun e!531523 () Bool)

(assert (=> d!114281 (=> res!634881 e!531523)))

(assert (=> d!114281 (= res!634881 (bvsge #b00000000000000000000000000000000 (size!27979 (_keys!10560 thiss!1141))))))

(assert (=> d!114281 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10560 thiss!1141) (mask!27341 thiss!1141)) e!531523)))

(declare-fun b!945031 () Bool)

(declare-fun e!531524 () Bool)

(assert (=> b!945031 (= e!531523 e!531524)))

(declare-fun c!98290 () Bool)

(assert (=> b!945031 (= c!98290 (validKeyInArray!0 (select (arr!27512 (_keys!10560 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!945032 () Bool)

(declare-fun e!531525 () Bool)

(assert (=> b!945032 (= e!531525 call!41025)))

(declare-fun b!945033 () Bool)

(assert (=> b!945033 (= e!531524 e!531525)))

(declare-fun lt!425872 () (_ BitVec 64))

(assert (=> b!945033 (= lt!425872 (select (arr!27512 (_keys!10560 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!425871 () Unit!31881)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57182 (_ BitVec 64) (_ BitVec 32)) Unit!31881)

(assert (=> b!945033 (= lt!425871 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10560 thiss!1141) lt!425872 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57182 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!945033 (arrayContainsKey!0 (_keys!10560 thiss!1141) lt!425872 #b00000000000000000000000000000000)))

(declare-fun lt!425873 () Unit!31881)

(assert (=> b!945033 (= lt!425873 lt!425871)))

(declare-fun res!634882 () Bool)

(declare-datatypes ((SeekEntryResult!9075 0))(
  ( (MissingZero!9075 (index!38670 (_ BitVec 32))) (Found!9075 (index!38671 (_ BitVec 32))) (Intermediate!9075 (undefined!9887 Bool) (index!38672 (_ BitVec 32)) (x!81183 (_ BitVec 32))) (Undefined!9075) (MissingVacant!9075 (index!38673 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57182 (_ BitVec 32)) SeekEntryResult!9075)

(assert (=> b!945033 (= res!634882 (= (seekEntryOrOpen!0 (select (arr!27512 (_keys!10560 thiss!1141)) #b00000000000000000000000000000000) (_keys!10560 thiss!1141) (mask!27341 thiss!1141)) (Found!9075 #b00000000000000000000000000000000)))))

(assert (=> b!945033 (=> (not res!634882) (not e!531525))))

(declare-fun b!945034 () Bool)

(assert (=> b!945034 (= e!531524 call!41025)))

(assert (= (and d!114281 (not res!634881)) b!945031))

(assert (= (and b!945031 c!98290) b!945033))

(assert (= (and b!945031 (not c!98290)) b!945034))

(assert (= (and b!945033 res!634882) b!945032))

(assert (= (or b!945032 b!945034) bm!41022))

(declare-fun m!879053 () Bool)

(assert (=> bm!41022 m!879053))

(assert (=> b!945031 m!878993))

(assert (=> b!945031 m!878993))

(assert (=> b!945031 m!878995))

(assert (=> b!945033 m!878993))

(declare-fun m!879055 () Bool)

(assert (=> b!945033 m!879055))

(declare-fun m!879057 () Bool)

(assert (=> b!945033 m!879057))

(assert (=> b!945033 m!878993))

(declare-fun m!879059 () Bool)

(assert (=> b!945033 m!879059))

(assert (=> b!944927 d!114281))

(declare-fun d!114283 () Bool)

(declare-fun isEmpty!707 (Option!495) Bool)

(assert (=> d!114283 (= (isDefined!359 (getValueByKey!489 (toList!6171 (map!13033 thiss!1141)) key!756)) (not (isEmpty!707 (getValueByKey!489 (toList!6171 (map!13033 thiss!1141)) key!756))))))

(declare-fun bs!26563 () Bool)

(assert (= bs!26563 d!114283))

(assert (=> bs!26563 m!878983))

(declare-fun m!879061 () Bool)

(assert (=> bs!26563 m!879061))

(assert (=> b!944937 d!114283))

(declare-fun b!945046 () Bool)

(declare-fun e!531531 () Option!495)

(assert (=> b!945046 (= e!531531 None!493)))

(declare-fun d!114285 () Bool)

(declare-fun c!98295 () Bool)

(assert (=> d!114285 (= c!98295 (and ((_ is Cons!19410) (toList!6171 (map!13033 thiss!1141))) (= (_1!6810 (h!20561 (toList!6171 (map!13033 thiss!1141)))) key!756)))))

(declare-fun e!531530 () Option!495)

(assert (=> d!114285 (= (getValueByKey!489 (toList!6171 (map!13033 thiss!1141)) key!756) e!531530)))

(declare-fun b!945045 () Bool)

(assert (=> b!945045 (= e!531531 (getValueByKey!489 (t!27739 (toList!6171 (map!13033 thiss!1141))) key!756))))

(declare-fun b!945043 () Bool)

(assert (=> b!945043 (= e!531530 (Some!494 (_2!6810 (h!20561 (toList!6171 (map!13033 thiss!1141))))))))

(declare-fun b!945044 () Bool)

(assert (=> b!945044 (= e!531530 e!531531)))

(declare-fun c!98296 () Bool)

(assert (=> b!945044 (= c!98296 (and ((_ is Cons!19410) (toList!6171 (map!13033 thiss!1141))) (not (= (_1!6810 (h!20561 (toList!6171 (map!13033 thiss!1141)))) key!756))))))

(assert (= (and d!114285 c!98295) b!945043))

(assert (= (and d!114285 (not c!98295)) b!945044))

(assert (= (and b!945044 c!98296) b!945045))

(assert (= (and b!945044 (not c!98296)) b!945046))

(declare-fun m!879063 () Bool)

(assert (=> b!945045 m!879063))

(assert (=> b!944937 d!114285))

(declare-fun d!114287 () Bool)

(declare-fun res!634887 () Bool)

(declare-fun e!531536 () Bool)

(assert (=> d!114287 (=> res!634887 e!531536)))

(assert (=> d!114287 (= res!634887 (and ((_ is Cons!19410) (toList!6171 (map!13033 thiss!1141))) (= (_1!6810 (h!20561 (toList!6171 (map!13033 thiss!1141)))) key!756)))))

(assert (=> d!114287 (= (containsKey!454 (toList!6171 (map!13033 thiss!1141)) key!756) e!531536)))

(declare-fun b!945051 () Bool)

(declare-fun e!531537 () Bool)

(assert (=> b!945051 (= e!531536 e!531537)))

(declare-fun res!634888 () Bool)

(assert (=> b!945051 (=> (not res!634888) (not e!531537))))

(assert (=> b!945051 (= res!634888 (and (or (not ((_ is Cons!19410) (toList!6171 (map!13033 thiss!1141)))) (bvsle (_1!6810 (h!20561 (toList!6171 (map!13033 thiss!1141)))) key!756)) ((_ is Cons!19410) (toList!6171 (map!13033 thiss!1141))) (bvslt (_1!6810 (h!20561 (toList!6171 (map!13033 thiss!1141)))) key!756)))))

(declare-fun b!945052 () Bool)

(assert (=> b!945052 (= e!531537 (containsKey!454 (t!27739 (toList!6171 (map!13033 thiss!1141))) key!756))))

(assert (= (and d!114287 (not res!634887)) b!945051))

(assert (= (and b!945051 res!634888) b!945052))

(declare-fun m!879065 () Bool)

(assert (=> b!945052 m!879065))

(assert (=> d!114273 d!114287))

(declare-fun b!945063 () Bool)

(declare-fun e!531549 () Bool)

(declare-fun contains!5196 (List!19416 (_ BitVec 64)) Bool)

(assert (=> b!945063 (= e!531549 (contains!5196 Nil!19413 (select (arr!27512 (_keys!10560 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!945064 () Bool)

(declare-fun e!531548 () Bool)

(declare-fun call!41028 () Bool)

(assert (=> b!945064 (= e!531548 call!41028)))

(declare-fun d!114289 () Bool)

(declare-fun res!634895 () Bool)

(declare-fun e!531546 () Bool)

(assert (=> d!114289 (=> res!634895 e!531546)))

(assert (=> d!114289 (= res!634895 (bvsge #b00000000000000000000000000000000 (size!27979 (_keys!10560 thiss!1141))))))

(assert (=> d!114289 (= (arrayNoDuplicates!0 (_keys!10560 thiss!1141) #b00000000000000000000000000000000 Nil!19413) e!531546)))

(declare-fun b!945065 () Bool)

(declare-fun e!531547 () Bool)

(assert (=> b!945065 (= e!531546 e!531547)))

(declare-fun res!634897 () Bool)

(assert (=> b!945065 (=> (not res!634897) (not e!531547))))

(assert (=> b!945065 (= res!634897 (not e!531549))))

(declare-fun res!634896 () Bool)

(assert (=> b!945065 (=> (not res!634896) (not e!531549))))

(assert (=> b!945065 (= res!634896 (validKeyInArray!0 (select (arr!27512 (_keys!10560 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun bm!41025 () Bool)

(declare-fun c!98299 () Bool)

(assert (=> bm!41025 (= call!41028 (arrayNoDuplicates!0 (_keys!10560 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!98299 (Cons!19412 (select (arr!27512 (_keys!10560 thiss!1141)) #b00000000000000000000000000000000) Nil!19413) Nil!19413)))))

(declare-fun b!945066 () Bool)

(assert (=> b!945066 (= e!531548 call!41028)))

(declare-fun b!945067 () Bool)

(assert (=> b!945067 (= e!531547 e!531548)))

(assert (=> b!945067 (= c!98299 (validKeyInArray!0 (select (arr!27512 (_keys!10560 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (= (and d!114289 (not res!634895)) b!945065))

(assert (= (and b!945065 res!634896) b!945063))

(assert (= (and b!945065 res!634897) b!945067))

(assert (= (and b!945067 c!98299) b!945064))

(assert (= (and b!945067 (not c!98299)) b!945066))

(assert (= (or b!945064 b!945066) bm!41025))

(assert (=> b!945063 m!878993))

(assert (=> b!945063 m!878993))

(declare-fun m!879067 () Bool)

(assert (=> b!945063 m!879067))

(assert (=> b!945065 m!878993))

(assert (=> b!945065 m!878993))

(assert (=> b!945065 m!878995))

(assert (=> bm!41025 m!878993))

(declare-fun m!879069 () Bool)

(assert (=> bm!41025 m!879069))

(assert (=> b!945067 m!878993))

(assert (=> b!945067 m!878993))

(assert (=> b!945067 m!878995))

(assert (=> b!944928 d!114289))

(declare-fun d!114291 () Bool)

(assert (=> d!114291 (isDefined!359 (getValueByKey!489 (toList!6171 (map!13033 thiss!1141)) key!756))))

(declare-fun lt!425876 () Unit!31881)

(declare-fun choose!1577 (List!19414 (_ BitVec 64)) Unit!31881)

(assert (=> d!114291 (= lt!425876 (choose!1577 (toList!6171 (map!13033 thiss!1141)) key!756))))

(declare-fun e!531552 () Bool)

(assert (=> d!114291 e!531552))

(declare-fun res!634900 () Bool)

(assert (=> d!114291 (=> (not res!634900) (not e!531552))))

(declare-fun isStrictlySorted!502 (List!19414) Bool)

(assert (=> d!114291 (= res!634900 (isStrictlySorted!502 (toList!6171 (map!13033 thiss!1141))))))

(assert (=> d!114291 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!349 (toList!6171 (map!13033 thiss!1141)) key!756) lt!425876)))

(declare-fun b!945070 () Bool)

(assert (=> b!945070 (= e!531552 (containsKey!454 (toList!6171 (map!13033 thiss!1141)) key!756))))

(assert (= (and d!114291 res!634900) b!945070))

(assert (=> d!114291 m!878983))

(assert (=> d!114291 m!878983))

(assert (=> d!114291 m!878985))

(declare-fun m!879071 () Bool)

(assert (=> d!114291 m!879071))

(declare-fun m!879073 () Bool)

(assert (=> d!114291 m!879073))

(assert (=> b!945070 m!878979))

(assert (=> b!944935 d!114291))

(assert (=> b!944935 d!114283))

(assert (=> b!944935 d!114285))

(declare-fun b!945080 () Bool)

(declare-fun res!634910 () Bool)

(declare-fun e!531555 () Bool)

(assert (=> b!945080 (=> (not res!634910) (not e!531555))))

(declare-fun size!27982 (LongMapFixedSize!4782) (_ BitVec 32))

(assert (=> b!945080 (= res!634910 (bvsge (size!27982 thiss!1141) (_size!2446 thiss!1141)))))

(declare-fun d!114293 () Bool)

(declare-fun res!634912 () Bool)

(assert (=> d!114293 (=> (not res!634912) (not e!531555))))

(assert (=> d!114293 (= res!634912 (validMask!0 (mask!27341 thiss!1141)))))

(assert (=> d!114293 (= (simpleValid!348 thiss!1141) e!531555)))

(declare-fun b!945079 () Bool)

(declare-fun res!634911 () Bool)

(assert (=> b!945079 (=> (not res!634911) (not e!531555))))

(assert (=> b!945079 (= res!634911 (and (= (size!27978 (_values!5709 thiss!1141)) (bvadd (mask!27341 thiss!1141) #b00000000000000000000000000000001)) (= (size!27979 (_keys!10560 thiss!1141)) (size!27978 (_values!5709 thiss!1141))) (bvsge (_size!2446 thiss!1141) #b00000000000000000000000000000000) (bvsle (_size!2446 thiss!1141) (bvadd (mask!27341 thiss!1141) #b00000000000000000000000000000001))))))

(declare-fun b!945081 () Bool)

(declare-fun res!634909 () Bool)

(assert (=> b!945081 (=> (not res!634909) (not e!531555))))

(assert (=> b!945081 (= res!634909 (= (size!27982 thiss!1141) (bvadd (_size!2446 thiss!1141) (bvsdiv (bvadd (extraKeys!5418 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!945082 () Bool)

(assert (=> b!945082 (= e!531555 (and (bvsge (extraKeys!5418 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5418 thiss!1141) #b00000000000000000000000000000011) (bvsge (_vacant!2446 thiss!1141) #b00000000000000000000000000000000)))))

(assert (= (and d!114293 res!634912) b!945079))

(assert (= (and b!945079 res!634911) b!945080))

(assert (= (and b!945080 res!634910) b!945081))

(assert (= (and b!945081 res!634909) b!945082))

(declare-fun m!879075 () Bool)

(assert (=> b!945080 m!879075))

(assert (=> d!114293 m!878997))

(assert (=> b!945081 m!879075))

(assert (=> d!114271 d!114293))

(declare-fun condMapEmpty!32725 () Bool)

(declare-fun mapDefault!32725 () ValueCell!9816)

(assert (=> mapNonEmpty!32724 (= condMapEmpty!32725 (= mapRest!32724 ((as const (Array (_ BitVec 32) ValueCell!9816)) mapDefault!32725)))))

(declare-fun e!531557 () Bool)

(declare-fun mapRes!32725 () Bool)

(assert (=> mapNonEmpty!32724 (= tp!62781 (and e!531557 mapRes!32725))))

(declare-fun mapNonEmpty!32725 () Bool)

(declare-fun tp!62782 () Bool)

(declare-fun e!531556 () Bool)

(assert (=> mapNonEmpty!32725 (= mapRes!32725 (and tp!62782 e!531556))))

(declare-fun mapRest!32725 () (Array (_ BitVec 32) ValueCell!9816))

(declare-fun mapKey!32725 () (_ BitVec 32))

(declare-fun mapValue!32725 () ValueCell!9816)

(assert (=> mapNonEmpty!32725 (= mapRest!32724 (store mapRest!32725 mapKey!32725 mapValue!32725))))

(declare-fun mapIsEmpty!32725 () Bool)

(assert (=> mapIsEmpty!32725 mapRes!32725))

(declare-fun b!945083 () Bool)

(assert (=> b!945083 (= e!531556 tp_is_empty!20595)))

(declare-fun b!945084 () Bool)

(assert (=> b!945084 (= e!531557 tp_is_empty!20595)))

(assert (= (and mapNonEmpty!32724 condMapEmpty!32725) mapIsEmpty!32725))

(assert (= (and mapNonEmpty!32724 (not condMapEmpty!32725)) mapNonEmpty!32725))

(assert (= (and mapNonEmpty!32725 ((_ is ValueCellFull!9816) mapValue!32725)) b!945083))

(assert (= (and mapNonEmpty!32724 ((_ is ValueCellFull!9816) mapDefault!32725)) b!945084))

(declare-fun m!879077 () Bool)

(assert (=> mapNonEmpty!32725 m!879077))

(declare-fun b_lambda!14323 () Bool)

(assert (= b_lambda!14321 (or (and b!944896 b_free!18087) b_lambda!14323)))

(check-sat (not bm!41014) (not b!945016) (not bm!40998) (not bm!41022) (not bm!41017) tp_is_empty!20595 (not b!945081) (not b!945012) (not b!945004) (not mapNonEmpty!32725) (not b!945067) (not b!945080) (not b!945002) (not b!945052) (not bm!41025) (not b_lambda!14323) (not d!114279) (not b!945045) (not bm!41019) (not d!114293) (not b!945014) (not b!945065) (not b!945033) b_and!29527 (not d!114291) (not b!944957) (not b!945020) (not b!945031) (not b_next!18087) (not b!945070) (not bm!41018) (not d!114283) (not b!945063) (not b!945005) (not b!945009))
(check-sat b_and!29527 (not b_next!18087))
