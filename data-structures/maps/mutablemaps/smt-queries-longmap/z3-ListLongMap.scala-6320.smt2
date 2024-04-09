; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81236 () Bool)

(assert start!81236)

(declare-fun b!950164 () Bool)

(declare-fun b_free!18243 () Bool)

(declare-fun b_next!18243 () Bool)

(assert (=> b!950164 (= b_free!18243 (not b_next!18243))))

(declare-fun tp!63325 () Bool)

(declare-fun b_and!29717 () Bool)

(assert (=> b!950164 (= tp!63325 b_and!29717)))

(declare-fun b!950161 () Bool)

(declare-fun res!637169 () Bool)

(declare-fun e!534983 () Bool)

(assert (=> b!950161 (=> (not res!637169) (not e!534983))))

(declare-datatypes ((V!32633 0))(
  ( (V!32634 (val!10426 Int)) )
))
(declare-datatypes ((ValueCell!9894 0))(
  ( (ValueCellFull!9894 (v!12969 V!32633)) (EmptyCell!9894) )
))
(declare-datatypes ((array!57542 0))(
  ( (array!57543 (arr!27667 (Array (_ BitVec 32) ValueCell!9894)) (size!28145 (_ BitVec 32))) )
))
(declare-datatypes ((array!57544 0))(
  ( (array!57545 (arr!27668 (Array (_ BitVec 32) (_ BitVec 64))) (size!28146 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4938 0))(
  ( (LongMapFixedSize!4939 (defaultEntry!5780 Int) (mask!27573 (_ BitVec 32)) (extraKeys!5512 (_ BitVec 32)) (zeroValue!5616 V!32633) (minValue!5616 V!32633) (_size!2524 (_ BitVec 32)) (_keys!10712 array!57544) (_values!5803 array!57542) (_vacant!2524 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4938)

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((tuple2!13644 0))(
  ( (tuple2!13645 (_1!6832 (_ BitVec 64)) (_2!6832 V!32633)) )
))
(declare-datatypes ((List!19470 0))(
  ( (Nil!19467) (Cons!19466 (h!20626 tuple2!13644) (t!27817 List!19470)) )
))
(declare-datatypes ((ListLongMap!12355 0))(
  ( (ListLongMap!12356 (toList!6193 List!19470)) )
))
(declare-fun contains!5235 (ListLongMap!12355 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3378 (array!57544 array!57542 (_ BitVec 32) (_ BitVec 32) V!32633 V!32633 (_ BitVec 32) Int) ListLongMap!12355)

(assert (=> b!950161 (= res!637169 (contains!5235 (getCurrentListMap!3378 (_keys!10712 thiss!1141) (_values!5803 thiss!1141) (mask!27573 thiss!1141) (extraKeys!5512 thiss!1141) (zeroValue!5616 thiss!1141) (minValue!5616 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5780 thiss!1141)) key!756))))

(declare-fun b!950162 () Bool)

(declare-fun e!534982 () Bool)

(declare-fun e!534980 () Bool)

(declare-fun mapRes!33038 () Bool)

(assert (=> b!950162 (= e!534982 (and e!534980 mapRes!33038))))

(declare-fun condMapEmpty!33038 () Bool)

(declare-fun mapDefault!33038 () ValueCell!9894)

(assert (=> b!950162 (= condMapEmpty!33038 (= (arr!27667 (_values!5803 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9894)) mapDefault!33038)))))

(declare-fun res!637168 () Bool)

(assert (=> start!81236 (=> (not res!637168) (not e!534983))))

(declare-fun valid!1852 (LongMapFixedSize!4938) Bool)

(assert (=> start!81236 (= res!637168 (valid!1852 thiss!1141))))

(assert (=> start!81236 e!534983))

(declare-fun e!534978 () Bool)

(assert (=> start!81236 e!534978))

(assert (=> start!81236 true))

(declare-fun mapIsEmpty!33038 () Bool)

(assert (=> mapIsEmpty!33038 mapRes!33038))

(declare-fun b!950163 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!950163 (= e!534983 (not (validMask!0 (mask!27573 thiss!1141))))))

(declare-fun lt!427894 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!57544 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!950163 (= lt!427894 (arrayScanForKey!0 (_keys!10712 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57544 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!950163 (arrayContainsKey!0 (_keys!10712 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31982 0))(
  ( (Unit!31983) )
))
(declare-fun lt!427895 () Unit!31982)

(declare-fun lemmaKeyInListMapIsInArray!322 (array!57544 array!57542 (_ BitVec 32) (_ BitVec 32) V!32633 V!32633 (_ BitVec 64) Int) Unit!31982)

(assert (=> b!950163 (= lt!427895 (lemmaKeyInListMapIsInArray!322 (_keys!10712 thiss!1141) (_values!5803 thiss!1141) (mask!27573 thiss!1141) (extraKeys!5512 thiss!1141) (zeroValue!5616 thiss!1141) (minValue!5616 thiss!1141) key!756 (defaultEntry!5780 thiss!1141)))))

(declare-fun tp_is_empty!20751 () Bool)

(declare-fun array_inv!21418 (array!57544) Bool)

(declare-fun array_inv!21419 (array!57542) Bool)

(assert (=> b!950164 (= e!534978 (and tp!63325 tp_is_empty!20751 (array_inv!21418 (_keys!10712 thiss!1141)) (array_inv!21419 (_values!5803 thiss!1141)) e!534982))))

(declare-fun b!950165 () Bool)

(declare-fun res!637166 () Bool)

(assert (=> b!950165 (=> (not res!637166) (not e!534983))))

(assert (=> b!950165 (= res!637166 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!950166 () Bool)

(declare-fun res!637167 () Bool)

(assert (=> b!950166 (=> (not res!637167) (not e!534983))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9130 0))(
  ( (MissingZero!9130 (index!38890 (_ BitVec 32))) (Found!9130 (index!38891 (_ BitVec 32))) (Intermediate!9130 (undefined!9942 Bool) (index!38892 (_ BitVec 32)) (x!81741 (_ BitVec 32))) (Undefined!9130) (MissingVacant!9130 (index!38893 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57544 (_ BitVec 32)) SeekEntryResult!9130)

(assert (=> b!950166 (= res!637167 (not ((_ is Found!9130) (seekEntry!0 key!756 (_keys!10712 thiss!1141) (mask!27573 thiss!1141)))))))

(declare-fun b!950167 () Bool)

(assert (=> b!950167 (= e!534980 tp_is_empty!20751)))

(declare-fun mapNonEmpty!33038 () Bool)

(declare-fun tp!63326 () Bool)

(declare-fun e!534979 () Bool)

(assert (=> mapNonEmpty!33038 (= mapRes!33038 (and tp!63326 e!534979))))

(declare-fun mapRest!33038 () (Array (_ BitVec 32) ValueCell!9894))

(declare-fun mapKey!33038 () (_ BitVec 32))

(declare-fun mapValue!33038 () ValueCell!9894)

(assert (=> mapNonEmpty!33038 (= (arr!27667 (_values!5803 thiss!1141)) (store mapRest!33038 mapKey!33038 mapValue!33038))))

(declare-fun b!950168 () Bool)

(assert (=> b!950168 (= e!534979 tp_is_empty!20751)))

(assert (= (and start!81236 res!637168) b!950165))

(assert (= (and b!950165 res!637166) b!950166))

(assert (= (and b!950166 res!637167) b!950161))

(assert (= (and b!950161 res!637169) b!950163))

(assert (= (and b!950162 condMapEmpty!33038) mapIsEmpty!33038))

(assert (= (and b!950162 (not condMapEmpty!33038)) mapNonEmpty!33038))

(assert (= (and mapNonEmpty!33038 ((_ is ValueCellFull!9894) mapValue!33038)) b!950168))

(assert (= (and b!950162 ((_ is ValueCellFull!9894) mapDefault!33038)) b!950167))

(assert (= b!950164 b!950162))

(assert (= start!81236 b!950164))

(declare-fun m!882709 () Bool)

(assert (=> b!950161 m!882709))

(assert (=> b!950161 m!882709))

(declare-fun m!882711 () Bool)

(assert (=> b!950161 m!882711))

(declare-fun m!882713 () Bool)

(assert (=> b!950164 m!882713))

(declare-fun m!882715 () Bool)

(assert (=> b!950164 m!882715))

(declare-fun m!882717 () Bool)

(assert (=> start!81236 m!882717))

(declare-fun m!882719 () Bool)

(assert (=> b!950163 m!882719))

(declare-fun m!882721 () Bool)

(assert (=> b!950163 m!882721))

(declare-fun m!882723 () Bool)

(assert (=> b!950163 m!882723))

(declare-fun m!882725 () Bool)

(assert (=> b!950163 m!882725))

(declare-fun m!882727 () Bool)

(assert (=> mapNonEmpty!33038 m!882727))

(declare-fun m!882729 () Bool)

(assert (=> b!950166 m!882729))

(check-sat (not start!81236) (not b!950164) (not b!950166) (not b!950161) (not mapNonEmpty!33038) (not b_next!18243) tp_is_empty!20751 (not b!950163) b_and!29717)
(check-sat b_and!29717 (not b_next!18243))
(get-model)

(declare-fun d!115089 () Bool)

(declare-fun e!535007 () Bool)

(assert (=> d!115089 e!535007))

(declare-fun res!637184 () Bool)

(assert (=> d!115089 (=> res!637184 e!535007)))

(declare-fun lt!427910 () Bool)

(assert (=> d!115089 (= res!637184 (not lt!427910))))

(declare-fun lt!427911 () Bool)

(assert (=> d!115089 (= lt!427910 lt!427911)))

(declare-fun lt!427913 () Unit!31982)

(declare-fun e!535006 () Unit!31982)

(assert (=> d!115089 (= lt!427913 e!535006)))

(declare-fun c!99138 () Bool)

(assert (=> d!115089 (= c!99138 lt!427911)))

(declare-fun containsKey!465 (List!19470 (_ BitVec 64)) Bool)

(assert (=> d!115089 (= lt!427911 (containsKey!465 (toList!6193 (getCurrentListMap!3378 (_keys!10712 thiss!1141) (_values!5803 thiss!1141) (mask!27573 thiss!1141) (extraKeys!5512 thiss!1141) (zeroValue!5616 thiss!1141) (minValue!5616 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5780 thiss!1141))) key!756))))

(assert (=> d!115089 (= (contains!5235 (getCurrentListMap!3378 (_keys!10712 thiss!1141) (_values!5803 thiss!1141) (mask!27573 thiss!1141) (extraKeys!5512 thiss!1141) (zeroValue!5616 thiss!1141) (minValue!5616 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5780 thiss!1141)) key!756) lt!427910)))

(declare-fun b!950199 () Bool)

(declare-fun lt!427912 () Unit!31982)

(assert (=> b!950199 (= e!535006 lt!427912)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!360 (List!19470 (_ BitVec 64)) Unit!31982)

(assert (=> b!950199 (= lt!427912 (lemmaContainsKeyImpliesGetValueByKeyDefined!360 (toList!6193 (getCurrentListMap!3378 (_keys!10712 thiss!1141) (_values!5803 thiss!1141) (mask!27573 thiss!1141) (extraKeys!5512 thiss!1141) (zeroValue!5616 thiss!1141) (minValue!5616 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5780 thiss!1141))) key!756))))

(declare-datatypes ((Option!506 0))(
  ( (Some!505 (v!12971 V!32633)) (None!504) )
))
(declare-fun isDefined!370 (Option!506) Bool)

(declare-fun getValueByKey!500 (List!19470 (_ BitVec 64)) Option!506)

(assert (=> b!950199 (isDefined!370 (getValueByKey!500 (toList!6193 (getCurrentListMap!3378 (_keys!10712 thiss!1141) (_values!5803 thiss!1141) (mask!27573 thiss!1141) (extraKeys!5512 thiss!1141) (zeroValue!5616 thiss!1141) (minValue!5616 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5780 thiss!1141))) key!756))))

(declare-fun b!950200 () Bool)

(declare-fun Unit!31984 () Unit!31982)

(assert (=> b!950200 (= e!535006 Unit!31984)))

(declare-fun b!950201 () Bool)

(assert (=> b!950201 (= e!535007 (isDefined!370 (getValueByKey!500 (toList!6193 (getCurrentListMap!3378 (_keys!10712 thiss!1141) (_values!5803 thiss!1141) (mask!27573 thiss!1141) (extraKeys!5512 thiss!1141) (zeroValue!5616 thiss!1141) (minValue!5616 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5780 thiss!1141))) key!756)))))

(assert (= (and d!115089 c!99138) b!950199))

(assert (= (and d!115089 (not c!99138)) b!950200))

(assert (= (and d!115089 (not res!637184)) b!950201))

(declare-fun m!882753 () Bool)

(assert (=> d!115089 m!882753))

(declare-fun m!882755 () Bool)

(assert (=> b!950199 m!882755))

(declare-fun m!882757 () Bool)

(assert (=> b!950199 m!882757))

(assert (=> b!950199 m!882757))

(declare-fun m!882759 () Bool)

(assert (=> b!950199 m!882759))

(assert (=> b!950201 m!882757))

(assert (=> b!950201 m!882757))

(assert (=> b!950201 m!882759))

(assert (=> b!950161 d!115089))

(declare-fun b!950244 () Bool)

(declare-fun e!535046 () Bool)

(declare-fun lt!427963 () ListLongMap!12355)

(declare-fun apply!913 (ListLongMap!12355 (_ BitVec 64)) V!32633)

(assert (=> b!950244 (= e!535046 (= (apply!913 lt!427963 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5616 thiss!1141)))))

(declare-fun b!950245 () Bool)

(declare-fun c!99151 () Bool)

(assert (=> b!950245 (= c!99151 (and (not (= (bvand (extraKeys!5512 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5512 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!535036 () ListLongMap!12355)

(declare-fun e!535037 () ListLongMap!12355)

(assert (=> b!950245 (= e!535036 e!535037)))

(declare-fun b!950246 () Bool)

(declare-fun call!41385 () ListLongMap!12355)

(assert (=> b!950246 (= e!535037 call!41385)))

(declare-fun bm!41382 () Bool)

(declare-fun c!99153 () Bool)

(declare-fun call!41388 () ListLongMap!12355)

(declare-fun call!41391 () ListLongMap!12355)

(declare-fun call!41387 () ListLongMap!12355)

(declare-fun call!41386 () ListLongMap!12355)

(declare-fun c!99154 () Bool)

(declare-fun +!2827 (ListLongMap!12355 tuple2!13644) ListLongMap!12355)

(assert (=> bm!41382 (= call!41391 (+!2827 (ite c!99153 call!41387 (ite c!99154 call!41386 call!41388)) (ite (or c!99153 c!99154) (tuple2!13645 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5616 thiss!1141)) (tuple2!13645 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5616 thiss!1141)))))))

(declare-fun b!950248 () Bool)

(declare-fun e!535042 () Bool)

(declare-fun call!41389 () Bool)

(assert (=> b!950248 (= e!535042 (not call!41389))))

(declare-fun b!950249 () Bool)

(declare-fun e!535040 () Bool)

(assert (=> b!950249 (= e!535040 (= (apply!913 lt!427963 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5616 thiss!1141)))))

(declare-fun bm!41383 () Bool)

(assert (=> bm!41383 (= call!41389 (contains!5235 lt!427963 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!950250 () Bool)

(declare-fun e!535045 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!950250 (= e!535045 (validKeyInArray!0 (select (arr!27668 (_keys!10712 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun bm!41384 () Bool)

(assert (=> bm!41384 (= call!41388 call!41386)))

(declare-fun bm!41385 () Bool)

(declare-fun call!41390 () Bool)

(assert (=> bm!41385 (= call!41390 (contains!5235 lt!427963 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!950251 () Bool)

(declare-fun e!535043 () Bool)

(declare-fun e!535044 () Bool)

(assert (=> b!950251 (= e!535043 e!535044)))

(declare-fun res!637205 () Bool)

(assert (=> b!950251 (=> (not res!637205) (not e!535044))))

(assert (=> b!950251 (= res!637205 (contains!5235 lt!427963 (select (arr!27668 (_keys!10712 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!950251 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28146 (_keys!10712 thiss!1141))))))

(declare-fun b!950252 () Bool)

(declare-fun e!535041 () Unit!31982)

(declare-fun lt!427971 () Unit!31982)

(assert (=> b!950252 (= e!535041 lt!427971)))

(declare-fun lt!427958 () ListLongMap!12355)

(declare-fun getCurrentListMapNoExtraKeys!3333 (array!57544 array!57542 (_ BitVec 32) (_ BitVec 32) V!32633 V!32633 (_ BitVec 32) Int) ListLongMap!12355)

(assert (=> b!950252 (= lt!427958 (getCurrentListMapNoExtraKeys!3333 (_keys!10712 thiss!1141) (_values!5803 thiss!1141) (mask!27573 thiss!1141) (extraKeys!5512 thiss!1141) (zeroValue!5616 thiss!1141) (minValue!5616 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5780 thiss!1141)))))

(declare-fun lt!427974 () (_ BitVec 64))

(assert (=> b!950252 (= lt!427974 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!427964 () (_ BitVec 64))

(assert (=> b!950252 (= lt!427964 (select (arr!27668 (_keys!10712 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!427973 () Unit!31982)

(declare-fun addStillContains!583 (ListLongMap!12355 (_ BitVec 64) V!32633 (_ BitVec 64)) Unit!31982)

(assert (=> b!950252 (= lt!427973 (addStillContains!583 lt!427958 lt!427974 (zeroValue!5616 thiss!1141) lt!427964))))

(assert (=> b!950252 (contains!5235 (+!2827 lt!427958 (tuple2!13645 lt!427974 (zeroValue!5616 thiss!1141))) lt!427964)))

(declare-fun lt!427961 () Unit!31982)

(assert (=> b!950252 (= lt!427961 lt!427973)))

(declare-fun lt!427962 () ListLongMap!12355)

(assert (=> b!950252 (= lt!427962 (getCurrentListMapNoExtraKeys!3333 (_keys!10712 thiss!1141) (_values!5803 thiss!1141) (mask!27573 thiss!1141) (extraKeys!5512 thiss!1141) (zeroValue!5616 thiss!1141) (minValue!5616 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5780 thiss!1141)))))

(declare-fun lt!427970 () (_ BitVec 64))

(assert (=> b!950252 (= lt!427970 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!427972 () (_ BitVec 64))

(assert (=> b!950252 (= lt!427972 (select (arr!27668 (_keys!10712 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!427975 () Unit!31982)

(declare-fun addApplyDifferent!457 (ListLongMap!12355 (_ BitVec 64) V!32633 (_ BitVec 64)) Unit!31982)

(assert (=> b!950252 (= lt!427975 (addApplyDifferent!457 lt!427962 lt!427970 (minValue!5616 thiss!1141) lt!427972))))

(assert (=> b!950252 (= (apply!913 (+!2827 lt!427962 (tuple2!13645 lt!427970 (minValue!5616 thiss!1141))) lt!427972) (apply!913 lt!427962 lt!427972))))

(declare-fun lt!427969 () Unit!31982)

(assert (=> b!950252 (= lt!427969 lt!427975)))

(declare-fun lt!427968 () ListLongMap!12355)

(assert (=> b!950252 (= lt!427968 (getCurrentListMapNoExtraKeys!3333 (_keys!10712 thiss!1141) (_values!5803 thiss!1141) (mask!27573 thiss!1141) (extraKeys!5512 thiss!1141) (zeroValue!5616 thiss!1141) (minValue!5616 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5780 thiss!1141)))))

(declare-fun lt!427967 () (_ BitVec 64))

(assert (=> b!950252 (= lt!427967 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!427978 () (_ BitVec 64))

(assert (=> b!950252 (= lt!427978 (select (arr!27668 (_keys!10712 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!427965 () Unit!31982)

(assert (=> b!950252 (= lt!427965 (addApplyDifferent!457 lt!427968 lt!427967 (zeroValue!5616 thiss!1141) lt!427978))))

(assert (=> b!950252 (= (apply!913 (+!2827 lt!427968 (tuple2!13645 lt!427967 (zeroValue!5616 thiss!1141))) lt!427978) (apply!913 lt!427968 lt!427978))))

(declare-fun lt!427976 () Unit!31982)

(assert (=> b!950252 (= lt!427976 lt!427965)))

(declare-fun lt!427960 () ListLongMap!12355)

(assert (=> b!950252 (= lt!427960 (getCurrentListMapNoExtraKeys!3333 (_keys!10712 thiss!1141) (_values!5803 thiss!1141) (mask!27573 thiss!1141) (extraKeys!5512 thiss!1141) (zeroValue!5616 thiss!1141) (minValue!5616 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5780 thiss!1141)))))

(declare-fun lt!427979 () (_ BitVec 64))

(assert (=> b!950252 (= lt!427979 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!427977 () (_ BitVec 64))

(assert (=> b!950252 (= lt!427977 (select (arr!27668 (_keys!10712 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!950252 (= lt!427971 (addApplyDifferent!457 lt!427960 lt!427979 (minValue!5616 thiss!1141) lt!427977))))

(assert (=> b!950252 (= (apply!913 (+!2827 lt!427960 (tuple2!13645 lt!427979 (minValue!5616 thiss!1141))) lt!427977) (apply!913 lt!427960 lt!427977))))

(declare-fun b!950253 () Bool)

(declare-fun e!535039 () Bool)

(assert (=> b!950253 (= e!535039 e!535042)))

(declare-fun c!99156 () Bool)

(assert (=> b!950253 (= c!99156 (not (= (bvand (extraKeys!5512 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!950254 () Bool)

(declare-fun Unit!31985 () Unit!31982)

(assert (=> b!950254 (= e!535041 Unit!31985)))

(declare-fun b!950255 () Bool)

(assert (=> b!950255 (= e!535042 e!535040)))

(declare-fun res!637206 () Bool)

(assert (=> b!950255 (= res!637206 call!41389)))

(assert (=> b!950255 (=> (not res!637206) (not e!535040))))

(declare-fun b!950256 () Bool)

(declare-fun res!637208 () Bool)

(assert (=> b!950256 (=> (not res!637208) (not e!535039))))

(assert (=> b!950256 (= res!637208 e!535043)))

(declare-fun res!637204 () Bool)

(assert (=> b!950256 (=> res!637204 e!535043)))

(assert (=> b!950256 (= res!637204 (not e!535045))))

(declare-fun res!637210 () Bool)

(assert (=> b!950256 (=> (not res!637210) (not e!535045))))

(assert (=> b!950256 (= res!637210 (bvslt #b00000000000000000000000000000000 (size!28146 (_keys!10712 thiss!1141))))))

(declare-fun bm!41386 () Bool)

(assert (=> bm!41386 (= call!41385 call!41391)))

(declare-fun b!950257 () Bool)

(assert (=> b!950257 (= e!535037 call!41388)))

(declare-fun bm!41387 () Bool)

(assert (=> bm!41387 (= call!41386 call!41387)))

(declare-fun d!115091 () Bool)

(assert (=> d!115091 e!535039))

(declare-fun res!637203 () Bool)

(assert (=> d!115091 (=> (not res!637203) (not e!535039))))

(assert (=> d!115091 (= res!637203 (or (bvsge #b00000000000000000000000000000000 (size!28146 (_keys!10712 thiss!1141))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28146 (_keys!10712 thiss!1141))))))))

(declare-fun lt!427959 () ListLongMap!12355)

(assert (=> d!115091 (= lt!427963 lt!427959)))

(declare-fun lt!427966 () Unit!31982)

(assert (=> d!115091 (= lt!427966 e!535041)))

(declare-fun c!99155 () Bool)

(declare-fun e!535035 () Bool)

(assert (=> d!115091 (= c!99155 e!535035)))

(declare-fun res!637209 () Bool)

(assert (=> d!115091 (=> (not res!637209) (not e!535035))))

(assert (=> d!115091 (= res!637209 (bvslt #b00000000000000000000000000000000 (size!28146 (_keys!10712 thiss!1141))))))

(declare-fun e!535034 () ListLongMap!12355)

(assert (=> d!115091 (= lt!427959 e!535034)))

(assert (=> d!115091 (= c!99153 (and (not (= (bvand (extraKeys!5512 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5512 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!115091 (validMask!0 (mask!27573 thiss!1141))))

(assert (=> d!115091 (= (getCurrentListMap!3378 (_keys!10712 thiss!1141) (_values!5803 thiss!1141) (mask!27573 thiss!1141) (extraKeys!5512 thiss!1141) (zeroValue!5616 thiss!1141) (minValue!5616 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5780 thiss!1141)) lt!427963)))

(declare-fun b!950247 () Bool)

(declare-fun e!535038 () Bool)

(assert (=> b!950247 (= e!535038 (not call!41390))))

(declare-fun b!950258 () Bool)

(assert (=> b!950258 (= e!535034 (+!2827 call!41391 (tuple2!13645 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5616 thiss!1141))))))

(declare-fun bm!41388 () Bool)

(assert (=> bm!41388 (= call!41387 (getCurrentListMapNoExtraKeys!3333 (_keys!10712 thiss!1141) (_values!5803 thiss!1141) (mask!27573 thiss!1141) (extraKeys!5512 thiss!1141) (zeroValue!5616 thiss!1141) (minValue!5616 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5780 thiss!1141)))))

(declare-fun b!950259 () Bool)

(assert (=> b!950259 (= e!535034 e!535036)))

(assert (=> b!950259 (= c!99154 (and (not (= (bvand (extraKeys!5512 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5512 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!950260 () Bool)

(assert (=> b!950260 (= e!535035 (validKeyInArray!0 (select (arr!27668 (_keys!10712 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!950261 () Bool)

(declare-fun get!14556 (ValueCell!9894 V!32633) V!32633)

(declare-fun dynLambda!1666 (Int (_ BitVec 64)) V!32633)

(assert (=> b!950261 (= e!535044 (= (apply!913 lt!427963 (select (arr!27668 (_keys!10712 thiss!1141)) #b00000000000000000000000000000000)) (get!14556 (select (arr!27667 (_values!5803 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1666 (defaultEntry!5780 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!950261 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28145 (_values!5803 thiss!1141))))))

(assert (=> b!950261 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28146 (_keys!10712 thiss!1141))))))

(declare-fun b!950262 () Bool)

(assert (=> b!950262 (= e!535038 e!535046)))

(declare-fun res!637207 () Bool)

(assert (=> b!950262 (= res!637207 call!41390)))

(assert (=> b!950262 (=> (not res!637207) (not e!535046))))

(declare-fun b!950263 () Bool)

(declare-fun res!637211 () Bool)

(assert (=> b!950263 (=> (not res!637211) (not e!535039))))

(assert (=> b!950263 (= res!637211 e!535038)))

(declare-fun c!99152 () Bool)

(assert (=> b!950263 (= c!99152 (not (= (bvand (extraKeys!5512 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!950264 () Bool)

(assert (=> b!950264 (= e!535036 call!41385)))

(assert (= (and d!115091 c!99153) b!950258))

(assert (= (and d!115091 (not c!99153)) b!950259))

(assert (= (and b!950259 c!99154) b!950264))

(assert (= (and b!950259 (not c!99154)) b!950245))

(assert (= (and b!950245 c!99151) b!950246))

(assert (= (and b!950245 (not c!99151)) b!950257))

(assert (= (or b!950246 b!950257) bm!41384))

(assert (= (or b!950264 bm!41384) bm!41387))

(assert (= (or b!950264 b!950246) bm!41386))

(assert (= (or b!950258 bm!41387) bm!41388))

(assert (= (or b!950258 bm!41386) bm!41382))

(assert (= (and d!115091 res!637209) b!950260))

(assert (= (and d!115091 c!99155) b!950252))

(assert (= (and d!115091 (not c!99155)) b!950254))

(assert (= (and d!115091 res!637203) b!950256))

(assert (= (and b!950256 res!637210) b!950250))

(assert (= (and b!950256 (not res!637204)) b!950251))

(assert (= (and b!950251 res!637205) b!950261))

(assert (= (and b!950256 res!637208) b!950263))

(assert (= (and b!950263 c!99152) b!950262))

(assert (= (and b!950263 (not c!99152)) b!950247))

(assert (= (and b!950262 res!637207) b!950244))

(assert (= (or b!950262 b!950247) bm!41385))

(assert (= (and b!950263 res!637211) b!950253))

(assert (= (and b!950253 c!99156) b!950255))

(assert (= (and b!950253 (not c!99156)) b!950248))

(assert (= (and b!950255 res!637206) b!950249))

(assert (= (or b!950255 b!950248) bm!41383))

(declare-fun b_lambda!14397 () Bool)

(assert (=> (not b_lambda!14397) (not b!950261)))

(declare-fun t!27819 () Bool)

(declare-fun tb!6199 () Bool)

(assert (=> (and b!950164 (= (defaultEntry!5780 thiss!1141) (defaultEntry!5780 thiss!1141)) t!27819) tb!6199))

(declare-fun result!12303 () Bool)

(assert (=> tb!6199 (= result!12303 tp_is_empty!20751)))

(assert (=> b!950261 t!27819))

(declare-fun b_and!29721 () Bool)

(assert (= b_and!29717 (and (=> t!27819 result!12303) b_and!29721)))

(assert (=> d!115091 m!882719))

(declare-fun m!882761 () Bool)

(assert (=> bm!41382 m!882761))

(declare-fun m!882763 () Bool)

(assert (=> b!950258 m!882763))

(declare-fun m!882765 () Bool)

(assert (=> b!950249 m!882765))

(declare-fun m!882767 () Bool)

(assert (=> b!950261 m!882767))

(assert (=> b!950261 m!882767))

(declare-fun m!882769 () Bool)

(assert (=> b!950261 m!882769))

(declare-fun m!882771 () Bool)

(assert (=> b!950261 m!882771))

(declare-fun m!882773 () Bool)

(assert (=> b!950261 m!882773))

(declare-fun m!882775 () Bool)

(assert (=> b!950261 m!882775))

(assert (=> b!950261 m!882769))

(assert (=> b!950261 m!882773))

(assert (=> b!950260 m!882773))

(assert (=> b!950260 m!882773))

(declare-fun m!882777 () Bool)

(assert (=> b!950260 m!882777))

(declare-fun m!882779 () Bool)

(assert (=> bm!41388 m!882779))

(declare-fun m!882781 () Bool)

(assert (=> bm!41383 m!882781))

(assert (=> b!950250 m!882773))

(assert (=> b!950250 m!882773))

(assert (=> b!950250 m!882777))

(declare-fun m!882783 () Bool)

(assert (=> bm!41385 m!882783))

(declare-fun m!882785 () Bool)

(assert (=> b!950252 m!882785))

(assert (=> b!950252 m!882779))

(declare-fun m!882787 () Bool)

(assert (=> b!950252 m!882787))

(declare-fun m!882789 () Bool)

(assert (=> b!950252 m!882789))

(declare-fun m!882791 () Bool)

(assert (=> b!950252 m!882791))

(declare-fun m!882793 () Bool)

(assert (=> b!950252 m!882793))

(declare-fun m!882795 () Bool)

(assert (=> b!950252 m!882795))

(declare-fun m!882797 () Bool)

(assert (=> b!950252 m!882797))

(declare-fun m!882799 () Bool)

(assert (=> b!950252 m!882799))

(declare-fun m!882801 () Bool)

(assert (=> b!950252 m!882801))

(declare-fun m!882803 () Bool)

(assert (=> b!950252 m!882803))

(declare-fun m!882805 () Bool)

(assert (=> b!950252 m!882805))

(declare-fun m!882807 () Bool)

(assert (=> b!950252 m!882807))

(declare-fun m!882809 () Bool)

(assert (=> b!950252 m!882809))

(assert (=> b!950252 m!882797))

(assert (=> b!950252 m!882785))

(declare-fun m!882811 () Bool)

(assert (=> b!950252 m!882811))

(assert (=> b!950252 m!882801))

(assert (=> b!950252 m!882805))

(assert (=> b!950252 m!882773))

(declare-fun m!882813 () Bool)

(assert (=> b!950252 m!882813))

(assert (=> b!950251 m!882773))

(assert (=> b!950251 m!882773))

(declare-fun m!882815 () Bool)

(assert (=> b!950251 m!882815))

(declare-fun m!882817 () Bool)

(assert (=> b!950244 m!882817))

(assert (=> b!950161 d!115091))

(declare-fun d!115093 () Bool)

(declare-fun lt!427989 () SeekEntryResult!9130)

(assert (=> d!115093 (and (or ((_ is MissingVacant!9130) lt!427989) (not ((_ is Found!9130) lt!427989)) (and (bvsge (index!38891 lt!427989) #b00000000000000000000000000000000) (bvslt (index!38891 lt!427989) (size!28146 (_keys!10712 thiss!1141))))) (not ((_ is MissingVacant!9130) lt!427989)) (or (not ((_ is Found!9130) lt!427989)) (= (select (arr!27668 (_keys!10712 thiss!1141)) (index!38891 lt!427989)) key!756)))))

(declare-fun e!535053 () SeekEntryResult!9130)

(assert (=> d!115093 (= lt!427989 e!535053)))

(declare-fun c!99165 () Bool)

(declare-fun lt!427990 () SeekEntryResult!9130)

(assert (=> d!115093 (= c!99165 (and ((_ is Intermediate!9130) lt!427990) (undefined!9942 lt!427990)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57544 (_ BitVec 32)) SeekEntryResult!9130)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!115093 (= lt!427990 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27573 thiss!1141)) key!756 (_keys!10712 thiss!1141) (mask!27573 thiss!1141)))))

(assert (=> d!115093 (validMask!0 (mask!27573 thiss!1141))))

(assert (=> d!115093 (= (seekEntry!0 key!756 (_keys!10712 thiss!1141) (mask!27573 thiss!1141)) lt!427989)))

(declare-fun b!950279 () Bool)

(declare-fun e!535054 () SeekEntryResult!9130)

(declare-fun lt!427988 () SeekEntryResult!9130)

(assert (=> b!950279 (= e!535054 (ite ((_ is MissingVacant!9130) lt!427988) (MissingZero!9130 (index!38893 lt!427988)) lt!427988))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57544 (_ BitVec 32)) SeekEntryResult!9130)

(assert (=> b!950279 (= lt!427988 (seekKeyOrZeroReturnVacant!0 (x!81741 lt!427990) (index!38892 lt!427990) (index!38892 lt!427990) key!756 (_keys!10712 thiss!1141) (mask!27573 thiss!1141)))))

(declare-fun b!950280 () Bool)

(declare-fun e!535055 () SeekEntryResult!9130)

(assert (=> b!950280 (= e!535055 (Found!9130 (index!38892 lt!427990)))))

(declare-fun b!950281 () Bool)

(assert (=> b!950281 (= e!535053 e!535055)))

(declare-fun lt!427991 () (_ BitVec 64))

(assert (=> b!950281 (= lt!427991 (select (arr!27668 (_keys!10712 thiss!1141)) (index!38892 lt!427990)))))

(declare-fun c!99163 () Bool)

(assert (=> b!950281 (= c!99163 (= lt!427991 key!756))))

(declare-fun b!950282 () Bool)

(assert (=> b!950282 (= e!535053 Undefined!9130)))

(declare-fun b!950283 () Bool)

(declare-fun c!99164 () Bool)

(assert (=> b!950283 (= c!99164 (= lt!427991 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!950283 (= e!535055 e!535054)))

(declare-fun b!950284 () Bool)

(assert (=> b!950284 (= e!535054 (MissingZero!9130 (index!38892 lt!427990)))))

(assert (= (and d!115093 c!99165) b!950282))

(assert (= (and d!115093 (not c!99165)) b!950281))

(assert (= (and b!950281 c!99163) b!950280))

(assert (= (and b!950281 (not c!99163)) b!950283))

(assert (= (and b!950283 c!99164) b!950284))

(assert (= (and b!950283 (not c!99164)) b!950279))

(declare-fun m!882819 () Bool)

(assert (=> d!115093 m!882819))

(declare-fun m!882821 () Bool)

(assert (=> d!115093 m!882821))

(assert (=> d!115093 m!882821))

(declare-fun m!882823 () Bool)

(assert (=> d!115093 m!882823))

(assert (=> d!115093 m!882719))

(declare-fun m!882825 () Bool)

(assert (=> b!950279 m!882825))

(declare-fun m!882827 () Bool)

(assert (=> b!950281 m!882827))

(assert (=> b!950166 d!115093))

(declare-fun d!115095 () Bool)

(assert (=> d!115095 (= (validMask!0 (mask!27573 thiss!1141)) (and (or (= (mask!27573 thiss!1141) #b00000000000000000000000000000111) (= (mask!27573 thiss!1141) #b00000000000000000000000000001111) (= (mask!27573 thiss!1141) #b00000000000000000000000000011111) (= (mask!27573 thiss!1141) #b00000000000000000000000000111111) (= (mask!27573 thiss!1141) #b00000000000000000000000001111111) (= (mask!27573 thiss!1141) #b00000000000000000000000011111111) (= (mask!27573 thiss!1141) #b00000000000000000000000111111111) (= (mask!27573 thiss!1141) #b00000000000000000000001111111111) (= (mask!27573 thiss!1141) #b00000000000000000000011111111111) (= (mask!27573 thiss!1141) #b00000000000000000000111111111111) (= (mask!27573 thiss!1141) #b00000000000000000001111111111111) (= (mask!27573 thiss!1141) #b00000000000000000011111111111111) (= (mask!27573 thiss!1141) #b00000000000000000111111111111111) (= (mask!27573 thiss!1141) #b00000000000000001111111111111111) (= (mask!27573 thiss!1141) #b00000000000000011111111111111111) (= (mask!27573 thiss!1141) #b00000000000000111111111111111111) (= (mask!27573 thiss!1141) #b00000000000001111111111111111111) (= (mask!27573 thiss!1141) #b00000000000011111111111111111111) (= (mask!27573 thiss!1141) #b00000000000111111111111111111111) (= (mask!27573 thiss!1141) #b00000000001111111111111111111111) (= (mask!27573 thiss!1141) #b00000000011111111111111111111111) (= (mask!27573 thiss!1141) #b00000000111111111111111111111111) (= (mask!27573 thiss!1141) #b00000001111111111111111111111111) (= (mask!27573 thiss!1141) #b00000011111111111111111111111111) (= (mask!27573 thiss!1141) #b00000111111111111111111111111111) (= (mask!27573 thiss!1141) #b00001111111111111111111111111111) (= (mask!27573 thiss!1141) #b00011111111111111111111111111111) (= (mask!27573 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27573 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!950163 d!115095))

(declare-fun d!115097 () Bool)

(declare-fun lt!427994 () (_ BitVec 32))

(assert (=> d!115097 (and (or (bvslt lt!427994 #b00000000000000000000000000000000) (bvsge lt!427994 (size!28146 (_keys!10712 thiss!1141))) (and (bvsge lt!427994 #b00000000000000000000000000000000) (bvslt lt!427994 (size!28146 (_keys!10712 thiss!1141))))) (bvsge lt!427994 #b00000000000000000000000000000000) (bvslt lt!427994 (size!28146 (_keys!10712 thiss!1141))) (= (select (arr!27668 (_keys!10712 thiss!1141)) lt!427994) key!756))))

(declare-fun e!535058 () (_ BitVec 32))

(assert (=> d!115097 (= lt!427994 e!535058)))

(declare-fun c!99168 () Bool)

(assert (=> d!115097 (= c!99168 (= (select (arr!27668 (_keys!10712 thiss!1141)) #b00000000000000000000000000000000) key!756))))

(assert (=> d!115097 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28146 (_keys!10712 thiss!1141))) (bvslt (size!28146 (_keys!10712 thiss!1141)) #b01111111111111111111111111111111))))

(assert (=> d!115097 (= (arrayScanForKey!0 (_keys!10712 thiss!1141) key!756 #b00000000000000000000000000000000) lt!427994)))

(declare-fun b!950289 () Bool)

(assert (=> b!950289 (= e!535058 #b00000000000000000000000000000000)))

(declare-fun b!950290 () Bool)

(assert (=> b!950290 (= e!535058 (arrayScanForKey!0 (_keys!10712 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!115097 c!99168) b!950289))

(assert (= (and d!115097 (not c!99168)) b!950290))

(declare-fun m!882829 () Bool)

(assert (=> d!115097 m!882829))

(assert (=> d!115097 m!882773))

(declare-fun m!882831 () Bool)

(assert (=> b!950290 m!882831))

(assert (=> b!950163 d!115097))

(declare-fun d!115099 () Bool)

(declare-fun res!637216 () Bool)

(declare-fun e!535063 () Bool)

(assert (=> d!115099 (=> res!637216 e!535063)))

(assert (=> d!115099 (= res!637216 (= (select (arr!27668 (_keys!10712 thiss!1141)) #b00000000000000000000000000000000) key!756))))

(assert (=> d!115099 (= (arrayContainsKey!0 (_keys!10712 thiss!1141) key!756 #b00000000000000000000000000000000) e!535063)))

(declare-fun b!950295 () Bool)

(declare-fun e!535064 () Bool)

(assert (=> b!950295 (= e!535063 e!535064)))

(declare-fun res!637217 () Bool)

(assert (=> b!950295 (=> (not res!637217) (not e!535064))))

(assert (=> b!950295 (= res!637217 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!28146 (_keys!10712 thiss!1141))))))

(declare-fun b!950296 () Bool)

(assert (=> b!950296 (= e!535064 (arrayContainsKey!0 (_keys!10712 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!115099 (not res!637216)) b!950295))

(assert (= (and b!950295 res!637217) b!950296))

(assert (=> d!115099 m!882773))

(declare-fun m!882833 () Bool)

(assert (=> b!950296 m!882833))

(assert (=> b!950163 d!115099))

(declare-fun d!115101 () Bool)

(declare-fun e!535067 () Bool)

(assert (=> d!115101 e!535067))

(declare-fun c!99171 () Bool)

(assert (=> d!115101 (= c!99171 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!427997 () Unit!31982)

(declare-fun choose!1592 (array!57544 array!57542 (_ BitVec 32) (_ BitVec 32) V!32633 V!32633 (_ BitVec 64) Int) Unit!31982)

(assert (=> d!115101 (= lt!427997 (choose!1592 (_keys!10712 thiss!1141) (_values!5803 thiss!1141) (mask!27573 thiss!1141) (extraKeys!5512 thiss!1141) (zeroValue!5616 thiss!1141) (minValue!5616 thiss!1141) key!756 (defaultEntry!5780 thiss!1141)))))

(assert (=> d!115101 (validMask!0 (mask!27573 thiss!1141))))

(assert (=> d!115101 (= (lemmaKeyInListMapIsInArray!322 (_keys!10712 thiss!1141) (_values!5803 thiss!1141) (mask!27573 thiss!1141) (extraKeys!5512 thiss!1141) (zeroValue!5616 thiss!1141) (minValue!5616 thiss!1141) key!756 (defaultEntry!5780 thiss!1141)) lt!427997)))

(declare-fun b!950301 () Bool)

(assert (=> b!950301 (= e!535067 (arrayContainsKey!0 (_keys!10712 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun b!950302 () Bool)

(assert (=> b!950302 (= e!535067 (ite (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5512 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5512 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!115101 c!99171) b!950301))

(assert (= (and d!115101 (not c!99171)) b!950302))

(declare-fun m!882835 () Bool)

(assert (=> d!115101 m!882835))

(assert (=> d!115101 m!882719))

(assert (=> b!950301 m!882723))

(assert (=> b!950163 d!115101))

(declare-fun d!115103 () Bool)

(declare-fun res!637224 () Bool)

(declare-fun e!535070 () Bool)

(assert (=> d!115103 (=> (not res!637224) (not e!535070))))

(declare-fun simpleValid!373 (LongMapFixedSize!4938) Bool)

(assert (=> d!115103 (= res!637224 (simpleValid!373 thiss!1141))))

(assert (=> d!115103 (= (valid!1852 thiss!1141) e!535070)))

(declare-fun b!950309 () Bool)

(declare-fun res!637225 () Bool)

(assert (=> b!950309 (=> (not res!637225) (not e!535070))))

(declare-fun arrayCountValidKeys!0 (array!57544 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!950309 (= res!637225 (= (arrayCountValidKeys!0 (_keys!10712 thiss!1141) #b00000000000000000000000000000000 (size!28146 (_keys!10712 thiss!1141))) (_size!2524 thiss!1141)))))

(declare-fun b!950310 () Bool)

(declare-fun res!637226 () Bool)

(assert (=> b!950310 (=> (not res!637226) (not e!535070))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57544 (_ BitVec 32)) Bool)

(assert (=> b!950310 (= res!637226 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10712 thiss!1141) (mask!27573 thiss!1141)))))

(declare-fun b!950311 () Bool)

(declare-datatypes ((List!19471 0))(
  ( (Nil!19468) (Cons!19467 (h!20627 (_ BitVec 64)) (t!27820 List!19471)) )
))
(declare-fun arrayNoDuplicates!0 (array!57544 (_ BitVec 32) List!19471) Bool)

(assert (=> b!950311 (= e!535070 (arrayNoDuplicates!0 (_keys!10712 thiss!1141) #b00000000000000000000000000000000 Nil!19468))))

(assert (= (and d!115103 res!637224) b!950309))

(assert (= (and b!950309 res!637225) b!950310))

(assert (= (and b!950310 res!637226) b!950311))

(declare-fun m!882837 () Bool)

(assert (=> d!115103 m!882837))

(declare-fun m!882839 () Bool)

(assert (=> b!950309 m!882839))

(declare-fun m!882841 () Bool)

(assert (=> b!950310 m!882841))

(declare-fun m!882843 () Bool)

(assert (=> b!950311 m!882843))

(assert (=> start!81236 d!115103))

(declare-fun d!115105 () Bool)

(assert (=> d!115105 (= (array_inv!21418 (_keys!10712 thiss!1141)) (bvsge (size!28146 (_keys!10712 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!950164 d!115105))

(declare-fun d!115107 () Bool)

(assert (=> d!115107 (= (array_inv!21419 (_values!5803 thiss!1141)) (bvsge (size!28145 (_values!5803 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!950164 d!115107))

(declare-fun b!950318 () Bool)

(declare-fun e!535075 () Bool)

(assert (=> b!950318 (= e!535075 tp_is_empty!20751)))

(declare-fun condMapEmpty!33044 () Bool)

(declare-fun mapDefault!33044 () ValueCell!9894)

(assert (=> mapNonEmpty!33038 (= condMapEmpty!33044 (= mapRest!33038 ((as const (Array (_ BitVec 32) ValueCell!9894)) mapDefault!33044)))))

(declare-fun e!535076 () Bool)

(declare-fun mapRes!33044 () Bool)

(assert (=> mapNonEmpty!33038 (= tp!63326 (and e!535076 mapRes!33044))))

(declare-fun mapNonEmpty!33044 () Bool)

(declare-fun tp!63335 () Bool)

(assert (=> mapNonEmpty!33044 (= mapRes!33044 (and tp!63335 e!535075))))

(declare-fun mapKey!33044 () (_ BitVec 32))

(declare-fun mapValue!33044 () ValueCell!9894)

(declare-fun mapRest!33044 () (Array (_ BitVec 32) ValueCell!9894))

(assert (=> mapNonEmpty!33044 (= mapRest!33038 (store mapRest!33044 mapKey!33044 mapValue!33044))))

(declare-fun mapIsEmpty!33044 () Bool)

(assert (=> mapIsEmpty!33044 mapRes!33044))

(declare-fun b!950319 () Bool)

(assert (=> b!950319 (= e!535076 tp_is_empty!20751)))

(assert (= (and mapNonEmpty!33038 condMapEmpty!33044) mapIsEmpty!33044))

(assert (= (and mapNonEmpty!33038 (not condMapEmpty!33044)) mapNonEmpty!33044))

(assert (= (and mapNonEmpty!33044 ((_ is ValueCellFull!9894) mapValue!33044)) b!950318))

(assert (= (and mapNonEmpty!33038 ((_ is ValueCellFull!9894) mapDefault!33044)) b!950319))

(declare-fun m!882845 () Bool)

(assert (=> mapNonEmpty!33044 m!882845))

(declare-fun b_lambda!14399 () Bool)

(assert (= b_lambda!14397 (or (and b!950164 b_free!18243) b_lambda!14399)))

(check-sat (not d!115089) (not b!950309) (not b!950301) (not bm!41382) (not b!950201) (not b!950296) (not d!115101) (not b!950311) (not b!950252) (not d!115093) (not b!950261) (not b!950279) (not d!115103) (not b!950260) (not b!950249) (not bm!41383) (not mapNonEmpty!33044) b_and!29721 (not b!950251) (not b!950250) (not bm!41385) (not b_next!18243) (not b!950244) tp_is_empty!20751 (not b!950199) (not b_lambda!14399) (not bm!41388) (not d!115091) (not b!950310) (not b!950290) (not b!950258))
(check-sat b_and!29721 (not b_next!18243))
