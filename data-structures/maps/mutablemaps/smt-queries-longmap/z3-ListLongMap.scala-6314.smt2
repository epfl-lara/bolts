; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81052 () Bool)

(assert start!81052)

(declare-fun b!948662 () Bool)

(declare-fun b_free!18207 () Bool)

(declare-fun b_next!18207 () Bool)

(assert (=> b!948662 (= b_free!18207 (not b_next!18207))))

(declare-fun tp!63201 () Bool)

(declare-fun b_and!29663 () Bool)

(assert (=> b!948662 (= tp!63201 b_and!29663)))

(declare-fun b!948659 () Bool)

(declare-fun e!534081 () Bool)

(declare-fun tp_is_empty!20715 () Bool)

(assert (=> b!948659 (= e!534081 tp_is_empty!20715)))

(declare-fun b!948660 () Bool)

(declare-fun e!534080 () Bool)

(declare-fun mapRes!32967 () Bool)

(assert (=> b!948660 (= e!534080 (and e!534081 mapRes!32967))))

(declare-fun condMapEmpty!32967 () Bool)

(declare-datatypes ((V!32585 0))(
  ( (V!32586 (val!10408 Int)) )
))
(declare-datatypes ((ValueCell!9876 0))(
  ( (ValueCellFull!9876 (v!12946 V!32585)) (EmptyCell!9876) )
))
(declare-datatypes ((array!57460 0))(
  ( (array!57461 (arr!27631 (Array (_ BitVec 32) ValueCell!9876)) (size!28107 (_ BitVec 32))) )
))
(declare-datatypes ((array!57462 0))(
  ( (array!57463 (arr!27632 (Array (_ BitVec 32) (_ BitVec 64))) (size!28108 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4902 0))(
  ( (LongMapFixedSize!4903 (defaultEntry!5755 Int) (mask!27516 (_ BitVec 32)) (extraKeys!5487 (_ BitVec 32)) (zeroValue!5591 V!32585) (minValue!5591 V!32585) (_size!2506 (_ BitVec 32)) (_keys!10674 array!57462) (_values!5778 array!57460) (_vacant!2506 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4902)

(declare-fun mapDefault!32967 () ValueCell!9876)

(assert (=> b!948660 (= condMapEmpty!32967 (= (arr!27631 (_values!5778 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9876)) mapDefault!32967)))))

(declare-fun b!948661 () Bool)

(declare-fun res!636477 () Bool)

(declare-fun e!534079 () Bool)

(assert (=> b!948661 (=> (not res!636477) (not e!534079))))

(declare-fun key!756 () (_ BitVec 64))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9119 0))(
  ( (MissingZero!9119 (index!38846 (_ BitVec 32))) (Found!9119 (index!38847 (_ BitVec 32))) (Intermediate!9119 (undefined!9931 Bool) (index!38848 (_ BitVec 32)) (x!81616 (_ BitVec 32))) (Undefined!9119) (MissingVacant!9119 (index!38849 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57462 (_ BitVec 32)) SeekEntryResult!9119)

(assert (=> b!948661 (= res!636477 (not ((_ is Found!9119) (seekEntry!0 key!756 (_keys!10674 thiss!1141) (mask!27516 thiss!1141)))))))

(declare-fun e!534077 () Bool)

(declare-fun array_inv!21394 (array!57462) Bool)

(declare-fun array_inv!21395 (array!57460) Bool)

(assert (=> b!948662 (= e!534077 (and tp!63201 tp_is_empty!20715 (array_inv!21394 (_keys!10674 thiss!1141)) (array_inv!21395 (_values!5778 thiss!1141)) e!534080))))

(declare-fun b!948663 () Bool)

(declare-fun e!534082 () Bool)

(assert (=> b!948663 (= e!534082 tp_is_empty!20715)))

(declare-fun mapIsEmpty!32967 () Bool)

(assert (=> mapIsEmpty!32967 mapRes!32967))

(declare-fun res!636478 () Bool)

(assert (=> start!81052 (=> (not res!636478) (not e!534079))))

(declare-fun valid!1843 (LongMapFixedSize!4902) Bool)

(assert (=> start!81052 (= res!636478 (valid!1843 thiss!1141))))

(assert (=> start!81052 e!534079))

(assert (=> start!81052 e!534077))

(assert (=> start!81052 true))

(declare-fun b!948664 () Bool)

(declare-fun res!636475 () Bool)

(assert (=> b!948664 (=> (not res!636475) (not e!534079))))

(declare-datatypes ((tuple2!13624 0))(
  ( (tuple2!13625 (_1!6822 (_ BitVec 64)) (_2!6822 V!32585)) )
))
(declare-datatypes ((List!19451 0))(
  ( (Nil!19448) (Cons!19447 (h!20605 tuple2!13624) (t!27788 List!19451)) )
))
(declare-datatypes ((ListLongMap!12335 0))(
  ( (ListLongMap!12336 (toList!6183 List!19451)) )
))
(declare-fun contains!5220 (ListLongMap!12335 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3368 (array!57462 array!57460 (_ BitVec 32) (_ BitVec 32) V!32585 V!32585 (_ BitVec 32) Int) ListLongMap!12335)

(assert (=> b!948664 (= res!636475 (contains!5220 (getCurrentListMap!3368 (_keys!10674 thiss!1141) (_values!5778 thiss!1141) (mask!27516 thiss!1141) (extraKeys!5487 thiss!1141) (zeroValue!5591 thiss!1141) (minValue!5591 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5755 thiss!1141)) key!756))))

(declare-fun b!948665 () Bool)

(declare-fun res!636474 () Bool)

(assert (=> b!948665 (=> (not res!636474) (not e!534079))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!948665 (= res!636474 (validMask!0 (mask!27516 thiss!1141)))))

(declare-fun b!948666 () Bool)

(assert (=> b!948666 (= e!534079 (and (= (size!28107 (_values!5778 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27516 thiss!1141))) (= (size!28108 (_keys!10674 thiss!1141)) (size!28107 (_values!5778 thiss!1141))) (bvslt (mask!27516 thiss!1141) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!32967 () Bool)

(declare-fun tp!63200 () Bool)

(assert (=> mapNonEmpty!32967 (= mapRes!32967 (and tp!63200 e!534082))))

(declare-fun mapRest!32967 () (Array (_ BitVec 32) ValueCell!9876))

(declare-fun mapKey!32967 () (_ BitVec 32))

(declare-fun mapValue!32967 () ValueCell!9876)

(assert (=> mapNonEmpty!32967 (= (arr!27631 (_values!5778 thiss!1141)) (store mapRest!32967 mapKey!32967 mapValue!32967))))

(declare-fun b!948667 () Bool)

(declare-fun res!636476 () Bool)

(assert (=> b!948667 (=> (not res!636476) (not e!534079))))

(assert (=> b!948667 (= res!636476 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!81052 res!636478) b!948667))

(assert (= (and b!948667 res!636476) b!948661))

(assert (= (and b!948661 res!636477) b!948664))

(assert (= (and b!948664 res!636475) b!948665))

(assert (= (and b!948665 res!636474) b!948666))

(assert (= (and b!948660 condMapEmpty!32967) mapIsEmpty!32967))

(assert (= (and b!948660 (not condMapEmpty!32967)) mapNonEmpty!32967))

(assert (= (and mapNonEmpty!32967 ((_ is ValueCellFull!9876) mapValue!32967)) b!948663))

(assert (= (and b!948660 ((_ is ValueCellFull!9876) mapDefault!32967)) b!948659))

(assert (= b!948662 b!948660))

(assert (= start!81052 b!948662))

(declare-fun m!881505 () Bool)

(assert (=> b!948662 m!881505))

(declare-fun m!881507 () Bool)

(assert (=> b!948662 m!881507))

(declare-fun m!881509 () Bool)

(assert (=> mapNonEmpty!32967 m!881509))

(declare-fun m!881511 () Bool)

(assert (=> start!81052 m!881511))

(declare-fun m!881513 () Bool)

(assert (=> b!948661 m!881513))

(declare-fun m!881515 () Bool)

(assert (=> b!948664 m!881515))

(assert (=> b!948664 m!881515))

(declare-fun m!881517 () Bool)

(assert (=> b!948664 m!881517))

(declare-fun m!881519 () Bool)

(assert (=> b!948665 m!881519))

(check-sat (not start!81052) b_and!29663 (not mapNonEmpty!32967) (not b!948665) (not b!948662) (not b!948664) tp_is_empty!20715 (not b!948661) (not b_next!18207))
(check-sat b_and!29663 (not b_next!18207))
(get-model)

(declare-fun d!114853 () Bool)

(declare-fun res!636500 () Bool)

(declare-fun e!534103 () Bool)

(assert (=> d!114853 (=> (not res!636500) (not e!534103))))

(declare-fun simpleValid!368 (LongMapFixedSize!4902) Bool)

(assert (=> d!114853 (= res!636500 (simpleValid!368 thiss!1141))))

(assert (=> d!114853 (= (valid!1843 thiss!1141) e!534103)))

(declare-fun b!948701 () Bool)

(declare-fun res!636501 () Bool)

(assert (=> b!948701 (=> (not res!636501) (not e!534103))))

(declare-fun arrayCountValidKeys!0 (array!57462 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!948701 (= res!636501 (= (arrayCountValidKeys!0 (_keys!10674 thiss!1141) #b00000000000000000000000000000000 (size!28108 (_keys!10674 thiss!1141))) (_size!2506 thiss!1141)))))

(declare-fun b!948702 () Bool)

(declare-fun res!636502 () Bool)

(assert (=> b!948702 (=> (not res!636502) (not e!534103))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57462 (_ BitVec 32)) Bool)

(assert (=> b!948702 (= res!636502 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10674 thiss!1141) (mask!27516 thiss!1141)))))

(declare-fun b!948703 () Bool)

(declare-datatypes ((List!19453 0))(
  ( (Nil!19450) (Cons!19449 (h!20607 (_ BitVec 64)) (t!27792 List!19453)) )
))
(declare-fun arrayNoDuplicates!0 (array!57462 (_ BitVec 32) List!19453) Bool)

(assert (=> b!948703 (= e!534103 (arrayNoDuplicates!0 (_keys!10674 thiss!1141) #b00000000000000000000000000000000 Nil!19450))))

(assert (= (and d!114853 res!636500) b!948701))

(assert (= (and b!948701 res!636501) b!948702))

(assert (= (and b!948702 res!636502) b!948703))

(declare-fun m!881537 () Bool)

(assert (=> d!114853 m!881537))

(declare-fun m!881539 () Bool)

(assert (=> b!948701 m!881539))

(declare-fun m!881541 () Bool)

(assert (=> b!948702 m!881541))

(declare-fun m!881543 () Bool)

(assert (=> b!948703 m!881543))

(assert (=> start!81052 d!114853))

(declare-fun d!114855 () Bool)

(assert (=> d!114855 (= (array_inv!21394 (_keys!10674 thiss!1141)) (bvsge (size!28108 (_keys!10674 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!948662 d!114855))

(declare-fun d!114857 () Bool)

(assert (=> d!114857 (= (array_inv!21395 (_values!5778 thiss!1141)) (bvsge (size!28107 (_values!5778 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!948662 d!114857))

(declare-fun d!114859 () Bool)

(declare-fun e!534109 () Bool)

(assert (=> d!114859 e!534109))

(declare-fun res!636505 () Bool)

(assert (=> d!114859 (=> res!636505 e!534109)))

(declare-fun lt!427197 () Bool)

(assert (=> d!114859 (= res!636505 (not lt!427197))))

(declare-fun lt!427198 () Bool)

(assert (=> d!114859 (= lt!427197 lt!427198)))

(declare-datatypes ((Unit!31952 0))(
  ( (Unit!31953) )
))
(declare-fun lt!427196 () Unit!31952)

(declare-fun e!534108 () Unit!31952)

(assert (=> d!114859 (= lt!427196 e!534108)))

(declare-fun c!98869 () Bool)

(assert (=> d!114859 (= c!98869 lt!427198)))

(declare-fun containsKey!460 (List!19451 (_ BitVec 64)) Bool)

(assert (=> d!114859 (= lt!427198 (containsKey!460 (toList!6183 (getCurrentListMap!3368 (_keys!10674 thiss!1141) (_values!5778 thiss!1141) (mask!27516 thiss!1141) (extraKeys!5487 thiss!1141) (zeroValue!5591 thiss!1141) (minValue!5591 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5755 thiss!1141))) key!756))))

(assert (=> d!114859 (= (contains!5220 (getCurrentListMap!3368 (_keys!10674 thiss!1141) (_values!5778 thiss!1141) (mask!27516 thiss!1141) (extraKeys!5487 thiss!1141) (zeroValue!5591 thiss!1141) (minValue!5591 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5755 thiss!1141)) key!756) lt!427197)))

(declare-fun b!948710 () Bool)

(declare-fun lt!427195 () Unit!31952)

(assert (=> b!948710 (= e!534108 lt!427195)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!355 (List!19451 (_ BitVec 64)) Unit!31952)

(assert (=> b!948710 (= lt!427195 (lemmaContainsKeyImpliesGetValueByKeyDefined!355 (toList!6183 (getCurrentListMap!3368 (_keys!10674 thiss!1141) (_values!5778 thiss!1141) (mask!27516 thiss!1141) (extraKeys!5487 thiss!1141) (zeroValue!5591 thiss!1141) (minValue!5591 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5755 thiss!1141))) key!756))))

(declare-datatypes ((Option!501 0))(
  ( (Some!500 (v!12948 V!32585)) (None!499) )
))
(declare-fun isDefined!365 (Option!501) Bool)

(declare-fun getValueByKey!495 (List!19451 (_ BitVec 64)) Option!501)

(assert (=> b!948710 (isDefined!365 (getValueByKey!495 (toList!6183 (getCurrentListMap!3368 (_keys!10674 thiss!1141) (_values!5778 thiss!1141) (mask!27516 thiss!1141) (extraKeys!5487 thiss!1141) (zeroValue!5591 thiss!1141) (minValue!5591 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5755 thiss!1141))) key!756))))

(declare-fun b!948711 () Bool)

(declare-fun Unit!31954 () Unit!31952)

(assert (=> b!948711 (= e!534108 Unit!31954)))

(declare-fun b!948712 () Bool)

(assert (=> b!948712 (= e!534109 (isDefined!365 (getValueByKey!495 (toList!6183 (getCurrentListMap!3368 (_keys!10674 thiss!1141) (_values!5778 thiss!1141) (mask!27516 thiss!1141) (extraKeys!5487 thiss!1141) (zeroValue!5591 thiss!1141) (minValue!5591 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5755 thiss!1141))) key!756)))))

(assert (= (and d!114859 c!98869) b!948710))

(assert (= (and d!114859 (not c!98869)) b!948711))

(assert (= (and d!114859 (not res!636505)) b!948712))

(declare-fun m!881545 () Bool)

(assert (=> d!114859 m!881545))

(declare-fun m!881547 () Bool)

(assert (=> b!948710 m!881547))

(declare-fun m!881549 () Bool)

(assert (=> b!948710 m!881549))

(assert (=> b!948710 m!881549))

(declare-fun m!881551 () Bool)

(assert (=> b!948710 m!881551))

(assert (=> b!948712 m!881549))

(assert (=> b!948712 m!881549))

(assert (=> b!948712 m!881551))

(assert (=> b!948664 d!114859))

(declare-fun b!948755 () Bool)

(declare-fun e!534147 () Bool)

(declare-fun e!534143 () Bool)

(assert (=> b!948755 (= e!534147 e!534143)))

(declare-fun res!636530 () Bool)

(declare-fun call!41249 () Bool)

(assert (=> b!948755 (= res!636530 call!41249)))

(assert (=> b!948755 (=> (not res!636530) (not e!534143))))

(declare-fun call!41248 () ListLongMap!12335)

(declare-fun c!98884 () Bool)

(declare-fun call!41251 () ListLongMap!12335)

(declare-fun c!98886 () Bool)

(declare-fun bm!41244 () Bool)

(declare-fun call!41252 () ListLongMap!12335)

(declare-fun call!41250 () ListLongMap!12335)

(declare-fun +!2822 (ListLongMap!12335 tuple2!13624) ListLongMap!12335)

(assert (=> bm!41244 (= call!41251 (+!2822 (ite c!98886 call!41252 (ite c!98884 call!41250 call!41248)) (ite (or c!98886 c!98884) (tuple2!13625 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5591 thiss!1141)) (tuple2!13625 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5591 thiss!1141)))))))

(declare-fun b!948756 () Bool)

(declare-fun e!534148 () Bool)

(declare-fun call!41253 () Bool)

(assert (=> b!948756 (= e!534148 (not call!41253))))

(declare-fun b!948757 () Bool)

(declare-fun res!636529 () Bool)

(declare-fun e!534144 () Bool)

(assert (=> b!948757 (=> (not res!636529) (not e!534144))))

(assert (=> b!948757 (= res!636529 e!534148)))

(declare-fun c!98887 () Bool)

(assert (=> b!948757 (= c!98887 (not (= (bvand (extraKeys!5487 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!41245 () Bool)

(declare-fun call!41247 () ListLongMap!12335)

(assert (=> bm!41245 (= call!41247 call!41251)))

(declare-fun b!948758 () Bool)

(declare-fun e!534140 () Unit!31952)

(declare-fun lt!427252 () Unit!31952)

(assert (=> b!948758 (= e!534140 lt!427252)))

(declare-fun lt!427243 () ListLongMap!12335)

(declare-fun getCurrentListMapNoExtraKeys!3328 (array!57462 array!57460 (_ BitVec 32) (_ BitVec 32) V!32585 V!32585 (_ BitVec 32) Int) ListLongMap!12335)

(assert (=> b!948758 (= lt!427243 (getCurrentListMapNoExtraKeys!3328 (_keys!10674 thiss!1141) (_values!5778 thiss!1141) (mask!27516 thiss!1141) (extraKeys!5487 thiss!1141) (zeroValue!5591 thiss!1141) (minValue!5591 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5755 thiss!1141)))))

(declare-fun lt!427245 () (_ BitVec 64))

(assert (=> b!948758 (= lt!427245 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!427259 () (_ BitVec 64))

(assert (=> b!948758 (= lt!427259 (select (arr!27632 (_keys!10674 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!427250 () Unit!31952)

(declare-fun addStillContains!578 (ListLongMap!12335 (_ BitVec 64) V!32585 (_ BitVec 64)) Unit!31952)

(assert (=> b!948758 (= lt!427250 (addStillContains!578 lt!427243 lt!427245 (zeroValue!5591 thiss!1141) lt!427259))))

(assert (=> b!948758 (contains!5220 (+!2822 lt!427243 (tuple2!13625 lt!427245 (zeroValue!5591 thiss!1141))) lt!427259)))

(declare-fun lt!427256 () Unit!31952)

(assert (=> b!948758 (= lt!427256 lt!427250)))

(declare-fun lt!427255 () ListLongMap!12335)

(assert (=> b!948758 (= lt!427255 (getCurrentListMapNoExtraKeys!3328 (_keys!10674 thiss!1141) (_values!5778 thiss!1141) (mask!27516 thiss!1141) (extraKeys!5487 thiss!1141) (zeroValue!5591 thiss!1141) (minValue!5591 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5755 thiss!1141)))))

(declare-fun lt!427263 () (_ BitVec 64))

(assert (=> b!948758 (= lt!427263 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!427254 () (_ BitVec 64))

(assert (=> b!948758 (= lt!427254 (select (arr!27632 (_keys!10674 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!427261 () Unit!31952)

(declare-fun addApplyDifferent!452 (ListLongMap!12335 (_ BitVec 64) V!32585 (_ BitVec 64)) Unit!31952)

(assert (=> b!948758 (= lt!427261 (addApplyDifferent!452 lt!427255 lt!427263 (minValue!5591 thiss!1141) lt!427254))))

(declare-fun apply!908 (ListLongMap!12335 (_ BitVec 64)) V!32585)

(assert (=> b!948758 (= (apply!908 (+!2822 lt!427255 (tuple2!13625 lt!427263 (minValue!5591 thiss!1141))) lt!427254) (apply!908 lt!427255 lt!427254))))

(declare-fun lt!427249 () Unit!31952)

(assert (=> b!948758 (= lt!427249 lt!427261)))

(declare-fun lt!427246 () ListLongMap!12335)

(assert (=> b!948758 (= lt!427246 (getCurrentListMapNoExtraKeys!3328 (_keys!10674 thiss!1141) (_values!5778 thiss!1141) (mask!27516 thiss!1141) (extraKeys!5487 thiss!1141) (zeroValue!5591 thiss!1141) (minValue!5591 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5755 thiss!1141)))))

(declare-fun lt!427251 () (_ BitVec 64))

(assert (=> b!948758 (= lt!427251 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!427264 () (_ BitVec 64))

(assert (=> b!948758 (= lt!427264 (select (arr!27632 (_keys!10674 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!427253 () Unit!31952)

(assert (=> b!948758 (= lt!427253 (addApplyDifferent!452 lt!427246 lt!427251 (zeroValue!5591 thiss!1141) lt!427264))))

(assert (=> b!948758 (= (apply!908 (+!2822 lt!427246 (tuple2!13625 lt!427251 (zeroValue!5591 thiss!1141))) lt!427264) (apply!908 lt!427246 lt!427264))))

(declare-fun lt!427248 () Unit!31952)

(assert (=> b!948758 (= lt!427248 lt!427253)))

(declare-fun lt!427244 () ListLongMap!12335)

(assert (=> b!948758 (= lt!427244 (getCurrentListMapNoExtraKeys!3328 (_keys!10674 thiss!1141) (_values!5778 thiss!1141) (mask!27516 thiss!1141) (extraKeys!5487 thiss!1141) (zeroValue!5591 thiss!1141) (minValue!5591 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5755 thiss!1141)))))

(declare-fun lt!427247 () (_ BitVec 64))

(assert (=> b!948758 (= lt!427247 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!427258 () (_ BitVec 64))

(assert (=> b!948758 (= lt!427258 (select (arr!27632 (_keys!10674 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!948758 (= lt!427252 (addApplyDifferent!452 lt!427244 lt!427247 (minValue!5591 thiss!1141) lt!427258))))

(assert (=> b!948758 (= (apply!908 (+!2822 lt!427244 (tuple2!13625 lt!427247 (minValue!5591 thiss!1141))) lt!427258) (apply!908 lt!427244 lt!427258))))

(declare-fun b!948759 () Bool)

(declare-fun lt!427260 () ListLongMap!12335)

(assert (=> b!948759 (= e!534143 (= (apply!908 lt!427260 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5591 thiss!1141)))))

(declare-fun b!948760 () Bool)

(assert (=> b!948760 (= e!534147 (not call!41249))))

(declare-fun bm!41246 () Bool)

(assert (=> bm!41246 (= call!41253 (contains!5220 lt!427260 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!948761 () Bool)

(declare-fun e!534137 () ListLongMap!12335)

(declare-fun e!534138 () ListLongMap!12335)

(assert (=> b!948761 (= e!534137 e!534138)))

(assert (=> b!948761 (= c!98884 (and (not (= (bvand (extraKeys!5487 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5487 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!948762 () Bool)

(assert (=> b!948762 (= e!534137 (+!2822 call!41251 (tuple2!13625 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5591 thiss!1141))))))

(declare-fun b!948763 () Bool)

(declare-fun e!534146 () ListLongMap!12335)

(assert (=> b!948763 (= e!534146 call!41248)))

(declare-fun b!948764 () Bool)

(declare-fun c!98882 () Bool)

(assert (=> b!948764 (= c!98882 (and (not (= (bvand (extraKeys!5487 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5487 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!948764 (= e!534138 e!534146)))

(declare-fun b!948765 () Bool)

(declare-fun e!534141 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!948765 (= e!534141 (validKeyInArray!0 (select (arr!27632 (_keys!10674 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!948766 () Bool)

(assert (=> b!948766 (= e!534144 e!534147)))

(declare-fun c!98885 () Bool)

(assert (=> b!948766 (= c!98885 (not (= (bvand (extraKeys!5487 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!948767 () Bool)

(declare-fun e!534139 () Bool)

(assert (=> b!948767 (= e!534148 e!534139)))

(declare-fun res!636525 () Bool)

(assert (=> b!948767 (= res!636525 call!41253)))

(assert (=> b!948767 (=> (not res!636525) (not e!534139))))

(declare-fun b!948768 () Bool)

(assert (=> b!948768 (= e!534139 (= (apply!908 lt!427260 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5591 thiss!1141)))))

(declare-fun bm!41247 () Bool)

(assert (=> bm!41247 (= call!41248 call!41250)))

(declare-fun bm!41248 () Bool)

(assert (=> bm!41248 (= call!41252 (getCurrentListMapNoExtraKeys!3328 (_keys!10674 thiss!1141) (_values!5778 thiss!1141) (mask!27516 thiss!1141) (extraKeys!5487 thiss!1141) (zeroValue!5591 thiss!1141) (minValue!5591 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5755 thiss!1141)))))

(declare-fun d!114861 () Bool)

(assert (=> d!114861 e!534144))

(declare-fun res!636526 () Bool)

(assert (=> d!114861 (=> (not res!636526) (not e!534144))))

(assert (=> d!114861 (= res!636526 (or (bvsge #b00000000000000000000000000000000 (size!28108 (_keys!10674 thiss!1141))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28108 (_keys!10674 thiss!1141))))))))

(declare-fun lt!427262 () ListLongMap!12335)

(assert (=> d!114861 (= lt!427260 lt!427262)))

(declare-fun lt!427257 () Unit!31952)

(assert (=> d!114861 (= lt!427257 e!534140)))

(declare-fun c!98883 () Bool)

(assert (=> d!114861 (= c!98883 e!534141)))

(declare-fun res!636524 () Bool)

(assert (=> d!114861 (=> (not res!636524) (not e!534141))))

(assert (=> d!114861 (= res!636524 (bvslt #b00000000000000000000000000000000 (size!28108 (_keys!10674 thiss!1141))))))

(assert (=> d!114861 (= lt!427262 e!534137)))

(assert (=> d!114861 (= c!98886 (and (not (= (bvand (extraKeys!5487 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5487 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!114861 (validMask!0 (mask!27516 thiss!1141))))

(assert (=> d!114861 (= (getCurrentListMap!3368 (_keys!10674 thiss!1141) (_values!5778 thiss!1141) (mask!27516 thiss!1141) (extraKeys!5487 thiss!1141) (zeroValue!5591 thiss!1141) (minValue!5591 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5755 thiss!1141)) lt!427260)))

(declare-fun b!948769 () Bool)

(declare-fun res!636528 () Bool)

(assert (=> b!948769 (=> (not res!636528) (not e!534144))))

(declare-fun e!534136 () Bool)

(assert (=> b!948769 (= res!636528 e!534136)))

(declare-fun res!636527 () Bool)

(assert (=> b!948769 (=> res!636527 e!534136)))

(declare-fun e!534142 () Bool)

(assert (=> b!948769 (= res!636527 (not e!534142))))

(declare-fun res!636532 () Bool)

(assert (=> b!948769 (=> (not res!636532) (not e!534142))))

(assert (=> b!948769 (= res!636532 (bvslt #b00000000000000000000000000000000 (size!28108 (_keys!10674 thiss!1141))))))

(declare-fun b!948770 () Bool)

(assert (=> b!948770 (= e!534142 (validKeyInArray!0 (select (arr!27632 (_keys!10674 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!948771 () Bool)

(declare-fun e!534145 () Bool)

(assert (=> b!948771 (= e!534136 e!534145)))

(declare-fun res!636531 () Bool)

(assert (=> b!948771 (=> (not res!636531) (not e!534145))))

(assert (=> b!948771 (= res!636531 (contains!5220 lt!427260 (select (arr!27632 (_keys!10674 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!948771 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28108 (_keys!10674 thiss!1141))))))

(declare-fun b!948772 () Bool)

(assert (=> b!948772 (= e!534138 call!41247)))

(declare-fun b!948773 () Bool)

(declare-fun Unit!31955 () Unit!31952)

(assert (=> b!948773 (= e!534140 Unit!31955)))

(declare-fun bm!41249 () Bool)

(assert (=> bm!41249 (= call!41249 (contains!5220 lt!427260 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!948774 () Bool)

(assert (=> b!948774 (= e!534146 call!41247)))

(declare-fun b!948775 () Bool)

(declare-fun get!14533 (ValueCell!9876 V!32585) V!32585)

(declare-fun dynLambda!1661 (Int (_ BitVec 64)) V!32585)

(assert (=> b!948775 (= e!534145 (= (apply!908 lt!427260 (select (arr!27632 (_keys!10674 thiss!1141)) #b00000000000000000000000000000000)) (get!14533 (select (arr!27631 (_values!5778 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1661 (defaultEntry!5755 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!948775 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28107 (_values!5778 thiss!1141))))))

(assert (=> b!948775 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28108 (_keys!10674 thiss!1141))))))

(declare-fun bm!41250 () Bool)

(assert (=> bm!41250 (= call!41250 call!41252)))

(assert (= (and d!114861 c!98886) b!948762))

(assert (= (and d!114861 (not c!98886)) b!948761))

(assert (= (and b!948761 c!98884) b!948772))

(assert (= (and b!948761 (not c!98884)) b!948764))

(assert (= (and b!948764 c!98882) b!948774))

(assert (= (and b!948764 (not c!98882)) b!948763))

(assert (= (or b!948774 b!948763) bm!41247))

(assert (= (or b!948772 bm!41247) bm!41250))

(assert (= (or b!948772 b!948774) bm!41245))

(assert (= (or b!948762 bm!41250) bm!41248))

(assert (= (or b!948762 bm!41245) bm!41244))

(assert (= (and d!114861 res!636524) b!948765))

(assert (= (and d!114861 c!98883) b!948758))

(assert (= (and d!114861 (not c!98883)) b!948773))

(assert (= (and d!114861 res!636526) b!948769))

(assert (= (and b!948769 res!636532) b!948770))

(assert (= (and b!948769 (not res!636527)) b!948771))

(assert (= (and b!948771 res!636531) b!948775))

(assert (= (and b!948769 res!636528) b!948757))

(assert (= (and b!948757 c!98887) b!948767))

(assert (= (and b!948757 (not c!98887)) b!948756))

(assert (= (and b!948767 res!636525) b!948768))

(assert (= (or b!948767 b!948756) bm!41246))

(assert (= (and b!948757 res!636529) b!948766))

(assert (= (and b!948766 c!98885) b!948755))

(assert (= (and b!948766 (not c!98885)) b!948760))

(assert (= (and b!948755 res!636530) b!948759))

(assert (= (or b!948755 b!948760) bm!41249))

(declare-fun b_lambda!14361 () Bool)

(assert (=> (not b_lambda!14361) (not b!948775)))

(declare-fun t!27791 () Bool)

(declare-fun tb!6189 () Bool)

(assert (=> (and b!948662 (= (defaultEntry!5755 thiss!1141) (defaultEntry!5755 thiss!1141)) t!27791) tb!6189))

(declare-fun result!12273 () Bool)

(assert (=> tb!6189 (= result!12273 tp_is_empty!20715)))

(assert (=> b!948775 t!27791))

(declare-fun b_and!29667 () Bool)

(assert (= b_and!29663 (and (=> t!27791 result!12273) b_and!29667)))

(declare-fun m!881553 () Bool)

(assert (=> b!948771 m!881553))

(assert (=> b!948771 m!881553))

(declare-fun m!881555 () Bool)

(assert (=> b!948771 m!881555))

(assert (=> b!948765 m!881553))

(assert (=> b!948765 m!881553))

(declare-fun m!881557 () Bool)

(assert (=> b!948765 m!881557))

(declare-fun m!881559 () Bool)

(assert (=> b!948768 m!881559))

(declare-fun m!881561 () Bool)

(assert (=> b!948759 m!881561))

(declare-fun m!881563 () Bool)

(assert (=> bm!41248 m!881563))

(assert (=> b!948770 m!881553))

(assert (=> b!948770 m!881553))

(assert (=> b!948770 m!881557))

(assert (=> d!114861 m!881519))

(declare-fun m!881565 () Bool)

(assert (=> bm!41246 m!881565))

(declare-fun m!881567 () Bool)

(assert (=> bm!41249 m!881567))

(declare-fun m!881569 () Bool)

(assert (=> bm!41244 m!881569))

(declare-fun m!881571 () Bool)

(assert (=> b!948775 m!881571))

(assert (=> b!948775 m!881571))

(declare-fun m!881573 () Bool)

(assert (=> b!948775 m!881573))

(declare-fun m!881575 () Bool)

(assert (=> b!948775 m!881575))

(assert (=> b!948775 m!881553))

(assert (=> b!948775 m!881553))

(declare-fun m!881577 () Bool)

(assert (=> b!948775 m!881577))

(assert (=> b!948775 m!881573))

(declare-fun m!881579 () Bool)

(assert (=> b!948762 m!881579))

(declare-fun m!881581 () Bool)

(assert (=> b!948758 m!881581))

(declare-fun m!881583 () Bool)

(assert (=> b!948758 m!881583))

(assert (=> b!948758 m!881581))

(declare-fun m!881585 () Bool)

(assert (=> b!948758 m!881585))

(declare-fun m!881587 () Bool)

(assert (=> b!948758 m!881587))

(declare-fun m!881589 () Bool)

(assert (=> b!948758 m!881589))

(declare-fun m!881591 () Bool)

(assert (=> b!948758 m!881591))

(declare-fun m!881593 () Bool)

(assert (=> b!948758 m!881593))

(declare-fun m!881595 () Bool)

(assert (=> b!948758 m!881595))

(declare-fun m!881597 () Bool)

(assert (=> b!948758 m!881597))

(declare-fun m!881599 () Bool)

(assert (=> b!948758 m!881599))

(declare-fun m!881601 () Bool)

(assert (=> b!948758 m!881601))

(assert (=> b!948758 m!881595))

(assert (=> b!948758 m!881601))

(declare-fun m!881603 () Bool)

(assert (=> b!948758 m!881603))

(assert (=> b!948758 m!881563))

(declare-fun m!881605 () Bool)

(assert (=> b!948758 m!881605))

(declare-fun m!881607 () Bool)

(assert (=> b!948758 m!881607))

(declare-fun m!881609 () Bool)

(assert (=> b!948758 m!881609))

(assert (=> b!948758 m!881591))

(assert (=> b!948758 m!881553))

(assert (=> b!948664 d!114861))

(declare-fun d!114863 () Bool)

(declare-fun lt!427275 () SeekEntryResult!9119)

(assert (=> d!114863 (and (or ((_ is MissingVacant!9119) lt!427275) (not ((_ is Found!9119) lt!427275)) (and (bvsge (index!38847 lt!427275) #b00000000000000000000000000000000) (bvslt (index!38847 lt!427275) (size!28108 (_keys!10674 thiss!1141))))) (not ((_ is MissingVacant!9119) lt!427275)) (or (not ((_ is Found!9119) lt!427275)) (= (select (arr!27632 (_keys!10674 thiss!1141)) (index!38847 lt!427275)) key!756)))))

(declare-fun e!534156 () SeekEntryResult!9119)

(assert (=> d!114863 (= lt!427275 e!534156)))

(declare-fun c!98896 () Bool)

(declare-fun lt!427276 () SeekEntryResult!9119)

(assert (=> d!114863 (= c!98896 (and ((_ is Intermediate!9119) lt!427276) (undefined!9931 lt!427276)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57462 (_ BitVec 32)) SeekEntryResult!9119)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!114863 (= lt!427276 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27516 thiss!1141)) key!756 (_keys!10674 thiss!1141) (mask!27516 thiss!1141)))))

(assert (=> d!114863 (validMask!0 (mask!27516 thiss!1141))))

(assert (=> d!114863 (= (seekEntry!0 key!756 (_keys!10674 thiss!1141) (mask!27516 thiss!1141)) lt!427275)))

(declare-fun b!948790 () Bool)

(declare-fun c!98895 () Bool)

(declare-fun lt!427273 () (_ BitVec 64))

(assert (=> b!948790 (= c!98895 (= lt!427273 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!534157 () SeekEntryResult!9119)

(declare-fun e!534155 () SeekEntryResult!9119)

(assert (=> b!948790 (= e!534157 e!534155)))

(declare-fun b!948791 () Bool)

(assert (=> b!948791 (= e!534156 e!534157)))

(assert (=> b!948791 (= lt!427273 (select (arr!27632 (_keys!10674 thiss!1141)) (index!38848 lt!427276)))))

(declare-fun c!98894 () Bool)

(assert (=> b!948791 (= c!98894 (= lt!427273 key!756))))

(declare-fun b!948792 () Bool)

(assert (=> b!948792 (= e!534157 (Found!9119 (index!38848 lt!427276)))))

(declare-fun b!948793 () Bool)

(assert (=> b!948793 (= e!534155 (MissingZero!9119 (index!38848 lt!427276)))))

(declare-fun b!948794 () Bool)

(declare-fun lt!427274 () SeekEntryResult!9119)

(assert (=> b!948794 (= e!534155 (ite ((_ is MissingVacant!9119) lt!427274) (MissingZero!9119 (index!38849 lt!427274)) lt!427274))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57462 (_ BitVec 32)) SeekEntryResult!9119)

(assert (=> b!948794 (= lt!427274 (seekKeyOrZeroReturnVacant!0 (x!81616 lt!427276) (index!38848 lt!427276) (index!38848 lt!427276) key!756 (_keys!10674 thiss!1141) (mask!27516 thiss!1141)))))

(declare-fun b!948795 () Bool)

(assert (=> b!948795 (= e!534156 Undefined!9119)))

(assert (= (and d!114863 c!98896) b!948795))

(assert (= (and d!114863 (not c!98896)) b!948791))

(assert (= (and b!948791 c!98894) b!948792))

(assert (= (and b!948791 (not c!98894)) b!948790))

(assert (= (and b!948790 c!98895) b!948793))

(assert (= (and b!948790 (not c!98895)) b!948794))

(declare-fun m!881611 () Bool)

(assert (=> d!114863 m!881611))

(declare-fun m!881613 () Bool)

(assert (=> d!114863 m!881613))

(assert (=> d!114863 m!881613))

(declare-fun m!881615 () Bool)

(assert (=> d!114863 m!881615))

(assert (=> d!114863 m!881519))

(declare-fun m!881617 () Bool)

(assert (=> b!948791 m!881617))

(declare-fun m!881619 () Bool)

(assert (=> b!948794 m!881619))

(assert (=> b!948661 d!114863))

(declare-fun d!114865 () Bool)

(assert (=> d!114865 (= (validMask!0 (mask!27516 thiss!1141)) (and (or (= (mask!27516 thiss!1141) #b00000000000000000000000000000111) (= (mask!27516 thiss!1141) #b00000000000000000000000000001111) (= (mask!27516 thiss!1141) #b00000000000000000000000000011111) (= (mask!27516 thiss!1141) #b00000000000000000000000000111111) (= (mask!27516 thiss!1141) #b00000000000000000000000001111111) (= (mask!27516 thiss!1141) #b00000000000000000000000011111111) (= (mask!27516 thiss!1141) #b00000000000000000000000111111111) (= (mask!27516 thiss!1141) #b00000000000000000000001111111111) (= (mask!27516 thiss!1141) #b00000000000000000000011111111111) (= (mask!27516 thiss!1141) #b00000000000000000000111111111111) (= (mask!27516 thiss!1141) #b00000000000000000001111111111111) (= (mask!27516 thiss!1141) #b00000000000000000011111111111111) (= (mask!27516 thiss!1141) #b00000000000000000111111111111111) (= (mask!27516 thiss!1141) #b00000000000000001111111111111111) (= (mask!27516 thiss!1141) #b00000000000000011111111111111111) (= (mask!27516 thiss!1141) #b00000000000000111111111111111111) (= (mask!27516 thiss!1141) #b00000000000001111111111111111111) (= (mask!27516 thiss!1141) #b00000000000011111111111111111111) (= (mask!27516 thiss!1141) #b00000000000111111111111111111111) (= (mask!27516 thiss!1141) #b00000000001111111111111111111111) (= (mask!27516 thiss!1141) #b00000000011111111111111111111111) (= (mask!27516 thiss!1141) #b00000000111111111111111111111111) (= (mask!27516 thiss!1141) #b00000001111111111111111111111111) (= (mask!27516 thiss!1141) #b00000011111111111111111111111111) (= (mask!27516 thiss!1141) #b00000111111111111111111111111111) (= (mask!27516 thiss!1141) #b00001111111111111111111111111111) (= (mask!27516 thiss!1141) #b00011111111111111111111111111111) (= (mask!27516 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27516 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!948665 d!114865))

(declare-fun mapNonEmpty!32973 () Bool)

(declare-fun mapRes!32973 () Bool)

(declare-fun tp!63210 () Bool)

(declare-fun e!534162 () Bool)

(assert (=> mapNonEmpty!32973 (= mapRes!32973 (and tp!63210 e!534162))))

(declare-fun mapValue!32973 () ValueCell!9876)

(declare-fun mapKey!32973 () (_ BitVec 32))

(declare-fun mapRest!32973 () (Array (_ BitVec 32) ValueCell!9876))

(assert (=> mapNonEmpty!32973 (= mapRest!32967 (store mapRest!32973 mapKey!32973 mapValue!32973))))

(declare-fun b!948803 () Bool)

(declare-fun e!534163 () Bool)

(assert (=> b!948803 (= e!534163 tp_is_empty!20715)))

(declare-fun mapIsEmpty!32973 () Bool)

(assert (=> mapIsEmpty!32973 mapRes!32973))

(declare-fun condMapEmpty!32973 () Bool)

(declare-fun mapDefault!32973 () ValueCell!9876)

(assert (=> mapNonEmpty!32967 (= condMapEmpty!32973 (= mapRest!32967 ((as const (Array (_ BitVec 32) ValueCell!9876)) mapDefault!32973)))))

(assert (=> mapNonEmpty!32967 (= tp!63200 (and e!534163 mapRes!32973))))

(declare-fun b!948802 () Bool)

(assert (=> b!948802 (= e!534162 tp_is_empty!20715)))

(assert (= (and mapNonEmpty!32967 condMapEmpty!32973) mapIsEmpty!32973))

(assert (= (and mapNonEmpty!32967 (not condMapEmpty!32973)) mapNonEmpty!32973))

(assert (= (and mapNonEmpty!32973 ((_ is ValueCellFull!9876) mapValue!32973)) b!948802))

(assert (= (and mapNonEmpty!32967 ((_ is ValueCellFull!9876) mapDefault!32973)) b!948803))

(declare-fun m!881621 () Bool)

(assert (=> mapNonEmpty!32973 m!881621))

(declare-fun b_lambda!14363 () Bool)

(assert (= b_lambda!14361 (or (and b!948662 b_free!18207) b_lambda!14363)))

(check-sat (not b!948758) (not bm!41246) (not b!948759) (not d!114863) (not b_lambda!14363) (not d!114859) (not b!948794) (not b!948775) (not bm!41249) (not d!114861) (not d!114853) (not b!948710) (not bm!41248) (not b!948702) (not b!948762) (not mapNonEmpty!32973) (not b!948701) (not b!948765) (not b!948771) b_and!29667 tp_is_empty!20715 (not bm!41244) (not b!948770) (not b!948712) (not b!948703) (not b!948768) (not b_next!18207))
(check-sat b_and!29667 (not b_next!18207))
