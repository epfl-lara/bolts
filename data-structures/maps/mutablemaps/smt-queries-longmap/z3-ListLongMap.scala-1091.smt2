; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22306 () Bool)

(assert start!22306)

(declare-fun b!233682 () Bool)

(declare-fun b_free!6297 () Bool)

(declare-fun b_next!6297 () Bool)

(assert (=> b!233682 (= b_free!6297 (not b_next!6297))))

(declare-fun tp!22039 () Bool)

(declare-fun b_and!13221 () Bool)

(assert (=> b!233682 (= tp!22039 b_and!13221)))

(declare-fun b!233679 () Bool)

(declare-fun e!151804 () Bool)

(declare-fun tp_is_empty!6159 () Bool)

(assert (=> b!233679 (= e!151804 tp_is_empty!6159)))

(declare-fun b!233680 () Bool)

(declare-fun res!114681 () Bool)

(declare-fun e!151808 () Bool)

(assert (=> b!233680 (=> (not res!114681) (not e!151808))))

(declare-datatypes ((V!7859 0))(
  ( (V!7860 (val!3124 Int)) )
))
(declare-datatypes ((ValueCell!2736 0))(
  ( (ValueCellFull!2736 (v!5142 V!7859)) (EmptyCell!2736) )
))
(declare-datatypes ((array!11564 0))(
  ( (array!11565 (arr!5499 (Array (_ BitVec 32) ValueCell!2736)) (size!5833 (_ BitVec 32))) )
))
(declare-datatypes ((array!11566 0))(
  ( (array!11567 (arr!5500 (Array (_ BitVec 32) (_ BitVec 64))) (size!5834 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3372 0))(
  ( (LongMapFixedSize!3373 (defaultEntry!4348 Int) (mask!10282 (_ BitVec 32)) (extraKeys!4085 (_ BitVec 32)) (zeroValue!4189 V!7859) (minValue!4189 V!7859) (_size!1735 (_ BitVec 32)) (_keys!6407 array!11566) (_values!4331 array!11564) (_vacant!1735 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3372)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!233680 (= res!114681 (validMask!0 (mask!10282 thiss!1504)))))

(declare-fun b!233681 () Bool)

(declare-fun e!151807 () Bool)

(declare-fun e!151803 () Bool)

(declare-fun mapRes!10415 () Bool)

(assert (=> b!233681 (= e!151807 (and e!151803 mapRes!10415))))

(declare-fun condMapEmpty!10415 () Bool)

(declare-fun mapDefault!10415 () ValueCell!2736)

(assert (=> b!233681 (= condMapEmpty!10415 (= (arr!5499 (_values!4331 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2736)) mapDefault!10415)))))

(declare-fun e!151805 () Bool)

(declare-fun array_inv!3615 (array!11566) Bool)

(declare-fun array_inv!3616 (array!11564) Bool)

(assert (=> b!233682 (= e!151805 (and tp!22039 tp_is_empty!6159 (array_inv!3615 (_keys!6407 thiss!1504)) (array_inv!3616 (_values!4331 thiss!1504)) e!151807))))

(declare-fun res!114684 () Bool)

(declare-fun e!151806 () Bool)

(assert (=> start!22306 (=> (not res!114684) (not e!151806))))

(declare-fun valid!1323 (LongMapFixedSize!3372) Bool)

(assert (=> start!22306 (= res!114684 (valid!1323 thiss!1504))))

(assert (=> start!22306 e!151806))

(assert (=> start!22306 e!151805))

(assert (=> start!22306 true))

(declare-fun mapNonEmpty!10415 () Bool)

(declare-fun tp!22040 () Bool)

(assert (=> mapNonEmpty!10415 (= mapRes!10415 (and tp!22040 e!151804))))

(declare-fun mapRest!10415 () (Array (_ BitVec 32) ValueCell!2736))

(declare-fun mapKey!10415 () (_ BitVec 32))

(declare-fun mapValue!10415 () ValueCell!2736)

(assert (=> mapNonEmpty!10415 (= (arr!5499 (_values!4331 thiss!1504)) (store mapRest!10415 mapKey!10415 mapValue!10415))))

(declare-fun mapIsEmpty!10415 () Bool)

(assert (=> mapIsEmpty!10415 mapRes!10415))

(declare-fun b!233683 () Bool)

(declare-fun res!114682 () Bool)

(assert (=> b!233683 (=> (not res!114682) (not e!151808))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4604 0))(
  ( (tuple2!4605 (_1!2312 (_ BitVec 64)) (_2!2312 V!7859)) )
))
(declare-datatypes ((List!3539 0))(
  ( (Nil!3536) (Cons!3535 (h!4184 tuple2!4604) (t!8510 List!3539)) )
))
(declare-datatypes ((ListLongMap!3531 0))(
  ( (ListLongMap!3532 (toList!1781 List!3539)) )
))
(declare-fun contains!1645 (ListLongMap!3531 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1304 (array!11566 array!11564 (_ BitVec 32) (_ BitVec 32) V!7859 V!7859 (_ BitVec 32) Int) ListLongMap!3531)

(assert (=> b!233683 (= res!114682 (contains!1645 (getCurrentListMap!1304 (_keys!6407 thiss!1504) (_values!4331 thiss!1504) (mask!10282 thiss!1504) (extraKeys!4085 thiss!1504) (zeroValue!4189 thiss!1504) (minValue!4189 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4348 thiss!1504)) key!932))))

(declare-fun b!233684 () Bool)

(declare-fun res!114683 () Bool)

(assert (=> b!233684 (=> (not res!114683) (not e!151806))))

(assert (=> b!233684 (= res!114683 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!233685 () Bool)

(assert (=> b!233685 (= e!151808 (and (= (size!5833 (_values!4331 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10282 thiss!1504))) (not (= (size!5834 (_keys!6407 thiss!1504)) (size!5833 (_values!4331 thiss!1504))))))))

(declare-fun b!233686 () Bool)

(assert (=> b!233686 (= e!151803 tp_is_empty!6159)))

(declare-fun b!233687 () Bool)

(assert (=> b!233687 (= e!151806 e!151808)))

(declare-fun res!114680 () Bool)

(assert (=> b!233687 (=> (not res!114680) (not e!151808))))

(declare-datatypes ((SeekEntryResult!987 0))(
  ( (MissingZero!987 (index!6118 (_ BitVec 32))) (Found!987 (index!6119 (_ BitVec 32))) (Intermediate!987 (undefined!1799 Bool) (index!6120 (_ BitVec 32)) (x!23659 (_ BitVec 32))) (Undefined!987) (MissingVacant!987 (index!6121 (_ BitVec 32))) )
))
(declare-fun lt!118235 () SeekEntryResult!987)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!233687 (= res!114680 (or (= lt!118235 (MissingZero!987 index!297)) (= lt!118235 (MissingVacant!987 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11566 (_ BitVec 32)) SeekEntryResult!987)

(assert (=> b!233687 (= lt!118235 (seekEntryOrOpen!0 key!932 (_keys!6407 thiss!1504) (mask!10282 thiss!1504)))))

(assert (= (and start!22306 res!114684) b!233684))

(assert (= (and b!233684 res!114683) b!233687))

(assert (= (and b!233687 res!114680) b!233683))

(assert (= (and b!233683 res!114682) b!233680))

(assert (= (and b!233680 res!114681) b!233685))

(assert (= (and b!233681 condMapEmpty!10415) mapIsEmpty!10415))

(assert (= (and b!233681 (not condMapEmpty!10415)) mapNonEmpty!10415))

(get-info :version)

(assert (= (and mapNonEmpty!10415 ((_ is ValueCellFull!2736) mapValue!10415)) b!233679))

(assert (= (and b!233681 ((_ is ValueCellFull!2736) mapDefault!10415)) b!233686))

(assert (= b!233682 b!233681))

(assert (= start!22306 b!233682))

(declare-fun m!255073 () Bool)

(assert (=> b!233687 m!255073))

(declare-fun m!255075 () Bool)

(assert (=> mapNonEmpty!10415 m!255075))

(declare-fun m!255077 () Bool)

(assert (=> b!233680 m!255077))

(declare-fun m!255079 () Bool)

(assert (=> start!22306 m!255079))

(declare-fun m!255081 () Bool)

(assert (=> b!233682 m!255081))

(declare-fun m!255083 () Bool)

(assert (=> b!233682 m!255083))

(declare-fun m!255085 () Bool)

(assert (=> b!233683 m!255085))

(assert (=> b!233683 m!255085))

(declare-fun m!255087 () Bool)

(assert (=> b!233683 m!255087))

(check-sat (not b!233687) (not start!22306) (not b!233683) (not mapNonEmpty!10415) (not b!233682) (not b_next!6297) (not b!233680) tp_is_empty!6159 b_and!13221)
(check-sat b_and!13221 (not b_next!6297))
(get-model)

(declare-fun d!58885 () Bool)

(assert (=> d!58885 (= (array_inv!3615 (_keys!6407 thiss!1504)) (bvsge (size!5834 (_keys!6407 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!233682 d!58885))

(declare-fun d!58887 () Bool)

(assert (=> d!58887 (= (array_inv!3616 (_values!4331 thiss!1504)) (bvsge (size!5833 (_values!4331 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!233682 d!58887))

(declare-fun d!58889 () Bool)

(declare-fun res!114706 () Bool)

(declare-fun e!151833 () Bool)

(assert (=> d!58889 (=> (not res!114706) (not e!151833))))

(declare-fun simpleValid!227 (LongMapFixedSize!3372) Bool)

(assert (=> d!58889 (= res!114706 (simpleValid!227 thiss!1504))))

(assert (=> d!58889 (= (valid!1323 thiss!1504) e!151833)))

(declare-fun b!233721 () Bool)

(declare-fun res!114707 () Bool)

(assert (=> b!233721 (=> (not res!114707) (not e!151833))))

(declare-fun arrayCountValidKeys!0 (array!11566 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!233721 (= res!114707 (= (arrayCountValidKeys!0 (_keys!6407 thiss!1504) #b00000000000000000000000000000000 (size!5834 (_keys!6407 thiss!1504))) (_size!1735 thiss!1504)))))

(declare-fun b!233722 () Bool)

(declare-fun res!114708 () Bool)

(assert (=> b!233722 (=> (not res!114708) (not e!151833))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11566 (_ BitVec 32)) Bool)

(assert (=> b!233722 (= res!114708 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6407 thiss!1504) (mask!10282 thiss!1504)))))

(declare-fun b!233723 () Bool)

(declare-datatypes ((List!3540 0))(
  ( (Nil!3537) (Cons!3536 (h!4185 (_ BitVec 64)) (t!8513 List!3540)) )
))
(declare-fun arrayNoDuplicates!0 (array!11566 (_ BitVec 32) List!3540) Bool)

(assert (=> b!233723 (= e!151833 (arrayNoDuplicates!0 (_keys!6407 thiss!1504) #b00000000000000000000000000000000 Nil!3537))))

(assert (= (and d!58889 res!114706) b!233721))

(assert (= (and b!233721 res!114707) b!233722))

(assert (= (and b!233722 res!114708) b!233723))

(declare-fun m!255105 () Bool)

(assert (=> d!58889 m!255105))

(declare-fun m!255107 () Bool)

(assert (=> b!233721 m!255107))

(declare-fun m!255109 () Bool)

(assert (=> b!233722 m!255109))

(declare-fun m!255111 () Bool)

(assert (=> b!233723 m!255111))

(assert (=> start!22306 d!58889))

(declare-fun d!58891 () Bool)

(declare-fun e!151838 () Bool)

(assert (=> d!58891 e!151838))

(declare-fun res!114711 () Bool)

(assert (=> d!58891 (=> res!114711 e!151838)))

(declare-fun lt!118250 () Bool)

(assert (=> d!58891 (= res!114711 (not lt!118250))))

(declare-fun lt!118248 () Bool)

(assert (=> d!58891 (= lt!118250 lt!118248)))

(declare-datatypes ((Unit!7219 0))(
  ( (Unit!7220) )
))
(declare-fun lt!118247 () Unit!7219)

(declare-fun e!151839 () Unit!7219)

(assert (=> d!58891 (= lt!118247 e!151839)))

(declare-fun c!38874 () Bool)

(assert (=> d!58891 (= c!38874 lt!118248)))

(declare-fun containsKey!254 (List!3539 (_ BitVec 64)) Bool)

(assert (=> d!58891 (= lt!118248 (containsKey!254 (toList!1781 (getCurrentListMap!1304 (_keys!6407 thiss!1504) (_values!4331 thiss!1504) (mask!10282 thiss!1504) (extraKeys!4085 thiss!1504) (zeroValue!4189 thiss!1504) (minValue!4189 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4348 thiss!1504))) key!932))))

(assert (=> d!58891 (= (contains!1645 (getCurrentListMap!1304 (_keys!6407 thiss!1504) (_values!4331 thiss!1504) (mask!10282 thiss!1504) (extraKeys!4085 thiss!1504) (zeroValue!4189 thiss!1504) (minValue!4189 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4348 thiss!1504)) key!932) lt!118250)))

(declare-fun b!233730 () Bool)

(declare-fun lt!118249 () Unit!7219)

(assert (=> b!233730 (= e!151839 lt!118249)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!203 (List!3539 (_ BitVec 64)) Unit!7219)

(assert (=> b!233730 (= lt!118249 (lemmaContainsKeyImpliesGetValueByKeyDefined!203 (toList!1781 (getCurrentListMap!1304 (_keys!6407 thiss!1504) (_values!4331 thiss!1504) (mask!10282 thiss!1504) (extraKeys!4085 thiss!1504) (zeroValue!4189 thiss!1504) (minValue!4189 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4348 thiss!1504))) key!932))))

(declare-datatypes ((Option!268 0))(
  ( (Some!267 (v!5144 V!7859)) (None!266) )
))
(declare-fun isDefined!204 (Option!268) Bool)

(declare-fun getValueByKey!262 (List!3539 (_ BitVec 64)) Option!268)

(assert (=> b!233730 (isDefined!204 (getValueByKey!262 (toList!1781 (getCurrentListMap!1304 (_keys!6407 thiss!1504) (_values!4331 thiss!1504) (mask!10282 thiss!1504) (extraKeys!4085 thiss!1504) (zeroValue!4189 thiss!1504) (minValue!4189 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4348 thiss!1504))) key!932))))

(declare-fun b!233731 () Bool)

(declare-fun Unit!7221 () Unit!7219)

(assert (=> b!233731 (= e!151839 Unit!7221)))

(declare-fun b!233732 () Bool)

(assert (=> b!233732 (= e!151838 (isDefined!204 (getValueByKey!262 (toList!1781 (getCurrentListMap!1304 (_keys!6407 thiss!1504) (_values!4331 thiss!1504) (mask!10282 thiss!1504) (extraKeys!4085 thiss!1504) (zeroValue!4189 thiss!1504) (minValue!4189 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4348 thiss!1504))) key!932)))))

(assert (= (and d!58891 c!38874) b!233730))

(assert (= (and d!58891 (not c!38874)) b!233731))

(assert (= (and d!58891 (not res!114711)) b!233732))

(declare-fun m!255113 () Bool)

(assert (=> d!58891 m!255113))

(declare-fun m!255115 () Bool)

(assert (=> b!233730 m!255115))

(declare-fun m!255117 () Bool)

(assert (=> b!233730 m!255117))

(assert (=> b!233730 m!255117))

(declare-fun m!255119 () Bool)

(assert (=> b!233730 m!255119))

(assert (=> b!233732 m!255117))

(assert (=> b!233732 m!255117))

(assert (=> b!233732 m!255119))

(assert (=> b!233683 d!58891))

(declare-fun b!233775 () Bool)

(declare-fun res!114737 () Bool)

(declare-fun e!151870 () Bool)

(assert (=> b!233775 (=> (not res!114737) (not e!151870))))

(declare-fun e!151876 () Bool)

(assert (=> b!233775 (= res!114737 e!151876)))

(declare-fun c!38890 () Bool)

(assert (=> b!233775 (= c!38890 (not (= (bvand (extraKeys!4085 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!233776 () Bool)

(declare-fun call!21746 () Bool)

(assert (=> b!233776 (= e!151876 (not call!21746))))

(declare-fun call!21750 () ListLongMap!3531)

(declare-fun c!38891 () Bool)

(declare-fun bm!21742 () Bool)

(declare-fun call!21749 () ListLongMap!3531)

(declare-fun call!21751 () ListLongMap!3531)

(declare-fun call!21745 () ListLongMap!3531)

(declare-fun c!38892 () Bool)

(declare-fun +!627 (ListLongMap!3531 tuple2!4604) ListLongMap!3531)

(assert (=> bm!21742 (= call!21749 (+!627 (ite c!38892 call!21745 (ite c!38891 call!21750 call!21751)) (ite (or c!38892 c!38891) (tuple2!4605 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4189 thiss!1504)) (tuple2!4605 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4189 thiss!1504)))))))

(declare-fun b!233777 () Bool)

(declare-fun e!151867 () Bool)

(declare-fun lt!118311 () ListLongMap!3531)

(declare-fun apply!205 (ListLongMap!3531 (_ BitVec 64)) V!7859)

(assert (=> b!233777 (= e!151867 (= (apply!205 lt!118311 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4189 thiss!1504)))))

(declare-fun b!233778 () Bool)

(declare-fun e!151878 () Bool)

(assert (=> b!233778 (= e!151876 e!151878)))

(declare-fun res!114733 () Bool)

(assert (=> b!233778 (= res!114733 call!21746)))

(assert (=> b!233778 (=> (not res!114733) (not e!151878))))

(declare-fun b!233779 () Bool)

(declare-fun e!151877 () Unit!7219)

(declare-fun Unit!7222 () Unit!7219)

(assert (=> b!233779 (= e!151877 Unit!7222)))

(declare-fun bm!21743 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!524 (array!11566 array!11564 (_ BitVec 32) (_ BitVec 32) V!7859 V!7859 (_ BitVec 32) Int) ListLongMap!3531)

(assert (=> bm!21743 (= call!21745 (getCurrentListMapNoExtraKeys!524 (_keys!6407 thiss!1504) (_values!4331 thiss!1504) (mask!10282 thiss!1504) (extraKeys!4085 thiss!1504) (zeroValue!4189 thiss!1504) (minValue!4189 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4348 thiss!1504)))))

(declare-fun b!233780 () Bool)

(declare-fun lt!118308 () Unit!7219)

(assert (=> b!233780 (= e!151877 lt!118308)))

(declare-fun lt!118302 () ListLongMap!3531)

(assert (=> b!233780 (= lt!118302 (getCurrentListMapNoExtraKeys!524 (_keys!6407 thiss!1504) (_values!4331 thiss!1504) (mask!10282 thiss!1504) (extraKeys!4085 thiss!1504) (zeroValue!4189 thiss!1504) (minValue!4189 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4348 thiss!1504)))))

(declare-fun lt!118313 () (_ BitVec 64))

(assert (=> b!233780 (= lt!118313 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!118315 () (_ BitVec 64))

(assert (=> b!233780 (= lt!118315 (select (arr!5500 (_keys!6407 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!118309 () Unit!7219)

(declare-fun addStillContains!181 (ListLongMap!3531 (_ BitVec 64) V!7859 (_ BitVec 64)) Unit!7219)

(assert (=> b!233780 (= lt!118309 (addStillContains!181 lt!118302 lt!118313 (zeroValue!4189 thiss!1504) lt!118315))))

(assert (=> b!233780 (contains!1645 (+!627 lt!118302 (tuple2!4605 lt!118313 (zeroValue!4189 thiss!1504))) lt!118315)))

(declare-fun lt!118295 () Unit!7219)

(assert (=> b!233780 (= lt!118295 lt!118309)))

(declare-fun lt!118301 () ListLongMap!3531)

(assert (=> b!233780 (= lt!118301 (getCurrentListMapNoExtraKeys!524 (_keys!6407 thiss!1504) (_values!4331 thiss!1504) (mask!10282 thiss!1504) (extraKeys!4085 thiss!1504) (zeroValue!4189 thiss!1504) (minValue!4189 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4348 thiss!1504)))))

(declare-fun lt!118316 () (_ BitVec 64))

(assert (=> b!233780 (= lt!118316 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!118303 () (_ BitVec 64))

(assert (=> b!233780 (= lt!118303 (select (arr!5500 (_keys!6407 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!118298 () Unit!7219)

(declare-fun addApplyDifferent!181 (ListLongMap!3531 (_ BitVec 64) V!7859 (_ BitVec 64)) Unit!7219)

(assert (=> b!233780 (= lt!118298 (addApplyDifferent!181 lt!118301 lt!118316 (minValue!4189 thiss!1504) lt!118303))))

(assert (=> b!233780 (= (apply!205 (+!627 lt!118301 (tuple2!4605 lt!118316 (minValue!4189 thiss!1504))) lt!118303) (apply!205 lt!118301 lt!118303))))

(declare-fun lt!118296 () Unit!7219)

(assert (=> b!233780 (= lt!118296 lt!118298)))

(declare-fun lt!118304 () ListLongMap!3531)

(assert (=> b!233780 (= lt!118304 (getCurrentListMapNoExtraKeys!524 (_keys!6407 thiss!1504) (_values!4331 thiss!1504) (mask!10282 thiss!1504) (extraKeys!4085 thiss!1504) (zeroValue!4189 thiss!1504) (minValue!4189 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4348 thiss!1504)))))

(declare-fun lt!118305 () (_ BitVec 64))

(assert (=> b!233780 (= lt!118305 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!118299 () (_ BitVec 64))

(assert (=> b!233780 (= lt!118299 (select (arr!5500 (_keys!6407 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!118307 () Unit!7219)

(assert (=> b!233780 (= lt!118307 (addApplyDifferent!181 lt!118304 lt!118305 (zeroValue!4189 thiss!1504) lt!118299))))

(assert (=> b!233780 (= (apply!205 (+!627 lt!118304 (tuple2!4605 lt!118305 (zeroValue!4189 thiss!1504))) lt!118299) (apply!205 lt!118304 lt!118299))))

(declare-fun lt!118297 () Unit!7219)

(assert (=> b!233780 (= lt!118297 lt!118307)))

(declare-fun lt!118312 () ListLongMap!3531)

(assert (=> b!233780 (= lt!118312 (getCurrentListMapNoExtraKeys!524 (_keys!6407 thiss!1504) (_values!4331 thiss!1504) (mask!10282 thiss!1504) (extraKeys!4085 thiss!1504) (zeroValue!4189 thiss!1504) (minValue!4189 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4348 thiss!1504)))))

(declare-fun lt!118310 () (_ BitVec 64))

(assert (=> b!233780 (= lt!118310 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!118300 () (_ BitVec 64))

(assert (=> b!233780 (= lt!118300 (select (arr!5500 (_keys!6407 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!233780 (= lt!118308 (addApplyDifferent!181 lt!118312 lt!118310 (minValue!4189 thiss!1504) lt!118300))))

(assert (=> b!233780 (= (apply!205 (+!627 lt!118312 (tuple2!4605 lt!118310 (minValue!4189 thiss!1504))) lt!118300) (apply!205 lt!118312 lt!118300))))

(declare-fun b!233781 () Bool)

(declare-fun c!38887 () Bool)

(assert (=> b!233781 (= c!38887 (and (not (= (bvand (extraKeys!4085 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4085 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!151869 () ListLongMap!3531)

(declare-fun e!151866 () ListLongMap!3531)

(assert (=> b!233781 (= e!151869 e!151866)))

(declare-fun b!233782 () Bool)

(declare-fun call!21747 () ListLongMap!3531)

(assert (=> b!233782 (= e!151866 call!21747)))

(declare-fun b!233783 () Bool)

(assert (=> b!233783 (= e!151869 call!21747)))

(declare-fun bm!21744 () Bool)

(assert (=> bm!21744 (= call!21750 call!21745)))

(declare-fun b!233784 () Bool)

(declare-fun e!151875 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!233784 (= e!151875 (validKeyInArray!0 (select (arr!5500 (_keys!6407 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!233785 () Bool)

(declare-fun e!151874 () Bool)

(assert (=> b!233785 (= e!151870 e!151874)))

(declare-fun c!38888 () Bool)

(assert (=> b!233785 (= c!38888 (not (= (bvand (extraKeys!4085 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!21745 () Bool)

(declare-fun call!21748 () Bool)

(assert (=> bm!21745 (= call!21748 (contains!1645 lt!118311 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!233786 () Bool)

(assert (=> b!233786 (= e!151866 call!21751)))

(declare-fun d!58893 () Bool)

(assert (=> d!58893 e!151870))

(declare-fun res!114735 () Bool)

(assert (=> d!58893 (=> (not res!114735) (not e!151870))))

(assert (=> d!58893 (= res!114735 (or (bvsge #b00000000000000000000000000000000 (size!5834 (_keys!6407 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5834 (_keys!6407 thiss!1504))))))))

(declare-fun lt!118314 () ListLongMap!3531)

(assert (=> d!58893 (= lt!118311 lt!118314)))

(declare-fun lt!118306 () Unit!7219)

(assert (=> d!58893 (= lt!118306 e!151877)))

(declare-fun c!38889 () Bool)

(assert (=> d!58893 (= c!38889 e!151875)))

(declare-fun res!114734 () Bool)

(assert (=> d!58893 (=> (not res!114734) (not e!151875))))

(assert (=> d!58893 (= res!114734 (bvslt #b00000000000000000000000000000000 (size!5834 (_keys!6407 thiss!1504))))))

(declare-fun e!151868 () ListLongMap!3531)

(assert (=> d!58893 (= lt!118314 e!151868)))

(assert (=> d!58893 (= c!38892 (and (not (= (bvand (extraKeys!4085 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4085 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!58893 (validMask!0 (mask!10282 thiss!1504))))

(assert (=> d!58893 (= (getCurrentListMap!1304 (_keys!6407 thiss!1504) (_values!4331 thiss!1504) (mask!10282 thiss!1504) (extraKeys!4085 thiss!1504) (zeroValue!4189 thiss!1504) (minValue!4189 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4348 thiss!1504)) lt!118311)))

(declare-fun b!233787 () Bool)

(declare-fun res!114731 () Bool)

(assert (=> b!233787 (=> (not res!114731) (not e!151870))))

(declare-fun e!151872 () Bool)

(assert (=> b!233787 (= res!114731 e!151872)))

(declare-fun res!114730 () Bool)

(assert (=> b!233787 (=> res!114730 e!151872)))

(declare-fun e!151871 () Bool)

(assert (=> b!233787 (= res!114730 (not e!151871))))

(declare-fun res!114738 () Bool)

(assert (=> b!233787 (=> (not res!114738) (not e!151871))))

(assert (=> b!233787 (= res!114738 (bvslt #b00000000000000000000000000000000 (size!5834 (_keys!6407 thiss!1504))))))

(declare-fun b!233788 () Bool)

(declare-fun e!151873 () Bool)

(assert (=> b!233788 (= e!151872 e!151873)))

(declare-fun res!114732 () Bool)

(assert (=> b!233788 (=> (not res!114732) (not e!151873))))

(assert (=> b!233788 (= res!114732 (contains!1645 lt!118311 (select (arr!5500 (_keys!6407 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!233788 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5834 (_keys!6407 thiss!1504))))))

(declare-fun b!233789 () Bool)

(assert (=> b!233789 (= e!151874 e!151867)))

(declare-fun res!114736 () Bool)

(assert (=> b!233789 (= res!114736 call!21748)))

(assert (=> b!233789 (=> (not res!114736) (not e!151867))))

(declare-fun b!233790 () Bool)

(assert (=> b!233790 (= e!151871 (validKeyInArray!0 (select (arr!5500 (_keys!6407 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!21746 () Bool)

(assert (=> bm!21746 (= call!21747 call!21749)))

(declare-fun b!233791 () Bool)

(assert (=> b!233791 (= e!151874 (not call!21748))))

(declare-fun b!233792 () Bool)

(declare-fun get!2820 (ValueCell!2736 V!7859) V!7859)

(declare-fun dynLambda!543 (Int (_ BitVec 64)) V!7859)

(assert (=> b!233792 (= e!151873 (= (apply!205 lt!118311 (select (arr!5500 (_keys!6407 thiss!1504)) #b00000000000000000000000000000000)) (get!2820 (select (arr!5499 (_values!4331 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!543 (defaultEntry!4348 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!233792 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5833 (_values!4331 thiss!1504))))))

(assert (=> b!233792 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5834 (_keys!6407 thiss!1504))))))

(declare-fun b!233793 () Bool)

(assert (=> b!233793 (= e!151878 (= (apply!205 lt!118311 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4189 thiss!1504)))))

(declare-fun bm!21747 () Bool)

(assert (=> bm!21747 (= call!21746 (contains!1645 lt!118311 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!233794 () Bool)

(assert (=> b!233794 (= e!151868 (+!627 call!21749 (tuple2!4605 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4189 thiss!1504))))))

(declare-fun bm!21748 () Bool)

(assert (=> bm!21748 (= call!21751 call!21750)))

(declare-fun b!233795 () Bool)

(assert (=> b!233795 (= e!151868 e!151869)))

(assert (=> b!233795 (= c!38891 (and (not (= (bvand (extraKeys!4085 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4085 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!58893 c!38892) b!233794))

(assert (= (and d!58893 (not c!38892)) b!233795))

(assert (= (and b!233795 c!38891) b!233783))

(assert (= (and b!233795 (not c!38891)) b!233781))

(assert (= (and b!233781 c!38887) b!233782))

(assert (= (and b!233781 (not c!38887)) b!233786))

(assert (= (or b!233782 b!233786) bm!21748))

(assert (= (or b!233783 bm!21748) bm!21744))

(assert (= (or b!233783 b!233782) bm!21746))

(assert (= (or b!233794 bm!21744) bm!21743))

(assert (= (or b!233794 bm!21746) bm!21742))

(assert (= (and d!58893 res!114734) b!233784))

(assert (= (and d!58893 c!38889) b!233780))

(assert (= (and d!58893 (not c!38889)) b!233779))

(assert (= (and d!58893 res!114735) b!233787))

(assert (= (and b!233787 res!114738) b!233790))

(assert (= (and b!233787 (not res!114730)) b!233788))

(assert (= (and b!233788 res!114732) b!233792))

(assert (= (and b!233787 res!114731) b!233775))

(assert (= (and b!233775 c!38890) b!233778))

(assert (= (and b!233775 (not c!38890)) b!233776))

(assert (= (and b!233778 res!114733) b!233793))

(assert (= (or b!233778 b!233776) bm!21747))

(assert (= (and b!233775 res!114737) b!233785))

(assert (= (and b!233785 c!38888) b!233789))

(assert (= (and b!233785 (not c!38888)) b!233791))

(assert (= (and b!233789 res!114736) b!233777))

(assert (= (or b!233789 b!233791) bm!21745))

(declare-fun b_lambda!7889 () Bool)

(assert (=> (not b_lambda!7889) (not b!233792)))

(declare-fun t!8512 () Bool)

(declare-fun tb!2931 () Bool)

(assert (=> (and b!233682 (= (defaultEntry!4348 thiss!1504) (defaultEntry!4348 thiss!1504)) t!8512) tb!2931))

(declare-fun result!5099 () Bool)

(assert (=> tb!2931 (= result!5099 tp_is_empty!6159)))

(assert (=> b!233792 t!8512))

(declare-fun b_and!13225 () Bool)

(assert (= b_and!13221 (and (=> t!8512 result!5099) b_and!13225)))

(declare-fun m!255121 () Bool)

(assert (=> bm!21742 m!255121))

(declare-fun m!255123 () Bool)

(assert (=> b!233792 m!255123))

(declare-fun m!255125 () Bool)

(assert (=> b!233792 m!255125))

(declare-fun m!255127 () Bool)

(assert (=> b!233792 m!255127))

(declare-fun m!255129 () Bool)

(assert (=> b!233792 m!255129))

(assert (=> b!233792 m!255127))

(declare-fun m!255131 () Bool)

(assert (=> b!233792 m!255131))

(assert (=> b!233792 m!255129))

(assert (=> b!233792 m!255123))

(declare-fun m!255133 () Bool)

(assert (=> bm!21747 m!255133))

(assert (=> b!233788 m!255123))

(assert (=> b!233788 m!255123))

(declare-fun m!255135 () Bool)

(assert (=> b!233788 m!255135))

(assert (=> b!233790 m!255123))

(assert (=> b!233790 m!255123))

(declare-fun m!255137 () Bool)

(assert (=> b!233790 m!255137))

(declare-fun m!255139 () Bool)

(assert (=> b!233780 m!255139))

(declare-fun m!255141 () Bool)

(assert (=> b!233780 m!255141))

(declare-fun m!255143 () Bool)

(assert (=> b!233780 m!255143))

(declare-fun m!255145 () Bool)

(assert (=> b!233780 m!255145))

(declare-fun m!255147 () Bool)

(assert (=> b!233780 m!255147))

(assert (=> b!233780 m!255145))

(declare-fun m!255149 () Bool)

(assert (=> b!233780 m!255149))

(assert (=> b!233780 m!255147))

(declare-fun m!255151 () Bool)

(assert (=> b!233780 m!255151))

(declare-fun m!255153 () Bool)

(assert (=> b!233780 m!255153))

(assert (=> b!233780 m!255141))

(declare-fun m!255155 () Bool)

(assert (=> b!233780 m!255155))

(declare-fun m!255157 () Bool)

(assert (=> b!233780 m!255157))

(declare-fun m!255159 () Bool)

(assert (=> b!233780 m!255159))

(declare-fun m!255161 () Bool)

(assert (=> b!233780 m!255161))

(declare-fun m!255163 () Bool)

(assert (=> b!233780 m!255163))

(declare-fun m!255165 () Bool)

(assert (=> b!233780 m!255165))

(declare-fun m!255167 () Bool)

(assert (=> b!233780 m!255167))

(declare-fun m!255169 () Bool)

(assert (=> b!233780 m!255169))

(assert (=> b!233780 m!255157))

(assert (=> b!233780 m!255123))

(assert (=> b!233784 m!255123))

(assert (=> b!233784 m!255123))

(assert (=> b!233784 m!255137))

(assert (=> bm!21743 m!255167))

(declare-fun m!255171 () Bool)

(assert (=> b!233777 m!255171))

(assert (=> d!58893 m!255077))

(declare-fun m!255173 () Bool)

(assert (=> b!233794 m!255173))

(declare-fun m!255175 () Bool)

(assert (=> bm!21745 m!255175))

(declare-fun m!255177 () Bool)

(assert (=> b!233793 m!255177))

(assert (=> b!233683 d!58893))

(declare-fun d!58895 () Bool)

(assert (=> d!58895 (= (validMask!0 (mask!10282 thiss!1504)) (and (or (= (mask!10282 thiss!1504) #b00000000000000000000000000000111) (= (mask!10282 thiss!1504) #b00000000000000000000000000001111) (= (mask!10282 thiss!1504) #b00000000000000000000000000011111) (= (mask!10282 thiss!1504) #b00000000000000000000000000111111) (= (mask!10282 thiss!1504) #b00000000000000000000000001111111) (= (mask!10282 thiss!1504) #b00000000000000000000000011111111) (= (mask!10282 thiss!1504) #b00000000000000000000000111111111) (= (mask!10282 thiss!1504) #b00000000000000000000001111111111) (= (mask!10282 thiss!1504) #b00000000000000000000011111111111) (= (mask!10282 thiss!1504) #b00000000000000000000111111111111) (= (mask!10282 thiss!1504) #b00000000000000000001111111111111) (= (mask!10282 thiss!1504) #b00000000000000000011111111111111) (= (mask!10282 thiss!1504) #b00000000000000000111111111111111) (= (mask!10282 thiss!1504) #b00000000000000001111111111111111) (= (mask!10282 thiss!1504) #b00000000000000011111111111111111) (= (mask!10282 thiss!1504) #b00000000000000111111111111111111) (= (mask!10282 thiss!1504) #b00000000000001111111111111111111) (= (mask!10282 thiss!1504) #b00000000000011111111111111111111) (= (mask!10282 thiss!1504) #b00000000000111111111111111111111) (= (mask!10282 thiss!1504) #b00000000001111111111111111111111) (= (mask!10282 thiss!1504) #b00000000011111111111111111111111) (= (mask!10282 thiss!1504) #b00000000111111111111111111111111) (= (mask!10282 thiss!1504) #b00000001111111111111111111111111) (= (mask!10282 thiss!1504) #b00000011111111111111111111111111) (= (mask!10282 thiss!1504) #b00000111111111111111111111111111) (= (mask!10282 thiss!1504) #b00001111111111111111111111111111) (= (mask!10282 thiss!1504) #b00011111111111111111111111111111) (= (mask!10282 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!10282 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!233680 d!58895))

(declare-fun d!58897 () Bool)

(declare-fun lt!118323 () SeekEntryResult!987)

(assert (=> d!58897 (and (or ((_ is Undefined!987) lt!118323) (not ((_ is Found!987) lt!118323)) (and (bvsge (index!6119 lt!118323) #b00000000000000000000000000000000) (bvslt (index!6119 lt!118323) (size!5834 (_keys!6407 thiss!1504))))) (or ((_ is Undefined!987) lt!118323) ((_ is Found!987) lt!118323) (not ((_ is MissingZero!987) lt!118323)) (and (bvsge (index!6118 lt!118323) #b00000000000000000000000000000000) (bvslt (index!6118 lt!118323) (size!5834 (_keys!6407 thiss!1504))))) (or ((_ is Undefined!987) lt!118323) ((_ is Found!987) lt!118323) ((_ is MissingZero!987) lt!118323) (not ((_ is MissingVacant!987) lt!118323)) (and (bvsge (index!6121 lt!118323) #b00000000000000000000000000000000) (bvslt (index!6121 lt!118323) (size!5834 (_keys!6407 thiss!1504))))) (or ((_ is Undefined!987) lt!118323) (ite ((_ is Found!987) lt!118323) (= (select (arr!5500 (_keys!6407 thiss!1504)) (index!6119 lt!118323)) key!932) (ite ((_ is MissingZero!987) lt!118323) (= (select (arr!5500 (_keys!6407 thiss!1504)) (index!6118 lt!118323)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!987) lt!118323) (= (select (arr!5500 (_keys!6407 thiss!1504)) (index!6121 lt!118323)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!151887 () SeekEntryResult!987)

(assert (=> d!58897 (= lt!118323 e!151887)))

(declare-fun c!38899 () Bool)

(declare-fun lt!118325 () SeekEntryResult!987)

(assert (=> d!58897 (= c!38899 (and ((_ is Intermediate!987) lt!118325) (undefined!1799 lt!118325)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11566 (_ BitVec 32)) SeekEntryResult!987)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!58897 (= lt!118325 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10282 thiss!1504)) key!932 (_keys!6407 thiss!1504) (mask!10282 thiss!1504)))))

(assert (=> d!58897 (validMask!0 (mask!10282 thiss!1504))))

(assert (=> d!58897 (= (seekEntryOrOpen!0 key!932 (_keys!6407 thiss!1504) (mask!10282 thiss!1504)) lt!118323)))

(declare-fun b!233810 () Bool)

(declare-fun c!38901 () Bool)

(declare-fun lt!118324 () (_ BitVec 64))

(assert (=> b!233810 (= c!38901 (= lt!118324 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!151886 () SeekEntryResult!987)

(declare-fun e!151885 () SeekEntryResult!987)

(assert (=> b!233810 (= e!151886 e!151885)))

(declare-fun b!233811 () Bool)

(assert (=> b!233811 (= e!151885 (MissingZero!987 (index!6120 lt!118325)))))

(declare-fun b!233812 () Bool)

(assert (=> b!233812 (= e!151886 (Found!987 (index!6120 lt!118325)))))

(declare-fun b!233813 () Bool)

(assert (=> b!233813 (= e!151887 Undefined!987)))

(declare-fun b!233814 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11566 (_ BitVec 32)) SeekEntryResult!987)

(assert (=> b!233814 (= e!151885 (seekKeyOrZeroReturnVacant!0 (x!23659 lt!118325) (index!6120 lt!118325) (index!6120 lt!118325) key!932 (_keys!6407 thiss!1504) (mask!10282 thiss!1504)))))

(declare-fun b!233815 () Bool)

(assert (=> b!233815 (= e!151887 e!151886)))

(assert (=> b!233815 (= lt!118324 (select (arr!5500 (_keys!6407 thiss!1504)) (index!6120 lt!118325)))))

(declare-fun c!38900 () Bool)

(assert (=> b!233815 (= c!38900 (= lt!118324 key!932))))

(assert (= (and d!58897 c!38899) b!233813))

(assert (= (and d!58897 (not c!38899)) b!233815))

(assert (= (and b!233815 c!38900) b!233812))

(assert (= (and b!233815 (not c!38900)) b!233810))

(assert (= (and b!233810 c!38901) b!233811))

(assert (= (and b!233810 (not c!38901)) b!233814))

(assert (=> d!58897 m!255077))

(declare-fun m!255179 () Bool)

(assert (=> d!58897 m!255179))

(declare-fun m!255181 () Bool)

(assert (=> d!58897 m!255181))

(declare-fun m!255183 () Bool)

(assert (=> d!58897 m!255183))

(assert (=> d!58897 m!255183))

(declare-fun m!255185 () Bool)

(assert (=> d!58897 m!255185))

(declare-fun m!255187 () Bool)

(assert (=> d!58897 m!255187))

(declare-fun m!255189 () Bool)

(assert (=> b!233814 m!255189))

(declare-fun m!255191 () Bool)

(assert (=> b!233815 m!255191))

(assert (=> b!233687 d!58897))

(declare-fun b!233823 () Bool)

(declare-fun e!151892 () Bool)

(assert (=> b!233823 (= e!151892 tp_is_empty!6159)))

(declare-fun mapIsEmpty!10421 () Bool)

(declare-fun mapRes!10421 () Bool)

(assert (=> mapIsEmpty!10421 mapRes!10421))

(declare-fun condMapEmpty!10421 () Bool)

(declare-fun mapDefault!10421 () ValueCell!2736)

(assert (=> mapNonEmpty!10415 (= condMapEmpty!10421 (= mapRest!10415 ((as const (Array (_ BitVec 32) ValueCell!2736)) mapDefault!10421)))))

(assert (=> mapNonEmpty!10415 (= tp!22040 (and e!151892 mapRes!10421))))

(declare-fun b!233822 () Bool)

(declare-fun e!151893 () Bool)

(assert (=> b!233822 (= e!151893 tp_is_empty!6159)))

(declare-fun mapNonEmpty!10421 () Bool)

(declare-fun tp!22049 () Bool)

(assert (=> mapNonEmpty!10421 (= mapRes!10421 (and tp!22049 e!151893))))

(declare-fun mapKey!10421 () (_ BitVec 32))

(declare-fun mapValue!10421 () ValueCell!2736)

(declare-fun mapRest!10421 () (Array (_ BitVec 32) ValueCell!2736))

(assert (=> mapNonEmpty!10421 (= mapRest!10415 (store mapRest!10421 mapKey!10421 mapValue!10421))))

(assert (= (and mapNonEmpty!10415 condMapEmpty!10421) mapIsEmpty!10421))

(assert (= (and mapNonEmpty!10415 (not condMapEmpty!10421)) mapNonEmpty!10421))

(assert (= (and mapNonEmpty!10421 ((_ is ValueCellFull!2736) mapValue!10421)) b!233822))

(assert (= (and mapNonEmpty!10415 ((_ is ValueCellFull!2736) mapDefault!10421)) b!233823))

(declare-fun m!255193 () Bool)

(assert (=> mapNonEmpty!10421 m!255193))

(declare-fun b_lambda!7891 () Bool)

(assert (= b_lambda!7889 (or (and b!233682 b_free!6297) b_lambda!7891)))

(check-sat (not d!58897) (not bm!21742) (not b!233723) (not b!233788) (not b_lambda!7891) tp_is_empty!6159 (not bm!21745) (not b!233722) (not d!58893) (not b!233721) (not bm!21747) (not bm!21743) (not b!233730) (not d!58891) (not b!233794) (not b!233790) (not b!233793) b_and!13225 (not b!233792) (not mapNonEmpty!10421) (not b!233732) (not b!233814) (not b!233780) (not b!233777) (not b!233784) (not b_next!6297) (not d!58889))
(check-sat b_and!13225 (not b_next!6297))
(get-model)

(declare-fun d!58899 () Bool)

(declare-fun get!2821 (Option!268) V!7859)

(assert (=> d!58899 (= (apply!205 lt!118311 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2821 (getValueByKey!262 (toList!1781 lt!118311) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!8665 () Bool)

(assert (= bs!8665 d!58899))

(declare-fun m!255195 () Bool)

(assert (=> bs!8665 m!255195))

(assert (=> bs!8665 m!255195))

(declare-fun m!255197 () Bool)

(assert (=> bs!8665 m!255197))

(assert (=> b!233777 d!58899))

(declare-fun d!58901 () Bool)

(declare-fun res!114743 () Bool)

(declare-fun e!151898 () Bool)

(assert (=> d!58901 (=> res!114743 e!151898)))

(assert (=> d!58901 (= res!114743 (and ((_ is Cons!3535) (toList!1781 (getCurrentListMap!1304 (_keys!6407 thiss!1504) (_values!4331 thiss!1504) (mask!10282 thiss!1504) (extraKeys!4085 thiss!1504) (zeroValue!4189 thiss!1504) (minValue!4189 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4348 thiss!1504)))) (= (_1!2312 (h!4184 (toList!1781 (getCurrentListMap!1304 (_keys!6407 thiss!1504) (_values!4331 thiss!1504) (mask!10282 thiss!1504) (extraKeys!4085 thiss!1504) (zeroValue!4189 thiss!1504) (minValue!4189 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4348 thiss!1504))))) key!932)))))

(assert (=> d!58901 (= (containsKey!254 (toList!1781 (getCurrentListMap!1304 (_keys!6407 thiss!1504) (_values!4331 thiss!1504) (mask!10282 thiss!1504) (extraKeys!4085 thiss!1504) (zeroValue!4189 thiss!1504) (minValue!4189 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4348 thiss!1504))) key!932) e!151898)))

(declare-fun b!233828 () Bool)

(declare-fun e!151899 () Bool)

(assert (=> b!233828 (= e!151898 e!151899)))

(declare-fun res!114744 () Bool)

(assert (=> b!233828 (=> (not res!114744) (not e!151899))))

(assert (=> b!233828 (= res!114744 (and (or (not ((_ is Cons!3535) (toList!1781 (getCurrentListMap!1304 (_keys!6407 thiss!1504) (_values!4331 thiss!1504) (mask!10282 thiss!1504) (extraKeys!4085 thiss!1504) (zeroValue!4189 thiss!1504) (minValue!4189 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4348 thiss!1504))))) (bvsle (_1!2312 (h!4184 (toList!1781 (getCurrentListMap!1304 (_keys!6407 thiss!1504) (_values!4331 thiss!1504) (mask!10282 thiss!1504) (extraKeys!4085 thiss!1504) (zeroValue!4189 thiss!1504) (minValue!4189 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4348 thiss!1504))))) key!932)) ((_ is Cons!3535) (toList!1781 (getCurrentListMap!1304 (_keys!6407 thiss!1504) (_values!4331 thiss!1504) (mask!10282 thiss!1504) (extraKeys!4085 thiss!1504) (zeroValue!4189 thiss!1504) (minValue!4189 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4348 thiss!1504)))) (bvslt (_1!2312 (h!4184 (toList!1781 (getCurrentListMap!1304 (_keys!6407 thiss!1504) (_values!4331 thiss!1504) (mask!10282 thiss!1504) (extraKeys!4085 thiss!1504) (zeroValue!4189 thiss!1504) (minValue!4189 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4348 thiss!1504))))) key!932)))))

(declare-fun b!233829 () Bool)

(assert (=> b!233829 (= e!151899 (containsKey!254 (t!8510 (toList!1781 (getCurrentListMap!1304 (_keys!6407 thiss!1504) (_values!4331 thiss!1504) (mask!10282 thiss!1504) (extraKeys!4085 thiss!1504) (zeroValue!4189 thiss!1504) (minValue!4189 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4348 thiss!1504)))) key!932))))

(assert (= (and d!58901 (not res!114743)) b!233828))

(assert (= (and b!233828 res!114744) b!233829))

(declare-fun m!255199 () Bool)

(assert (=> b!233829 m!255199))

(assert (=> d!58891 d!58901))

(declare-fun d!58903 () Bool)

(declare-fun e!151900 () Bool)

(assert (=> d!58903 e!151900))

(declare-fun res!114745 () Bool)

(assert (=> d!58903 (=> res!114745 e!151900)))

(declare-fun lt!118329 () Bool)

(assert (=> d!58903 (= res!114745 (not lt!118329))))

(declare-fun lt!118327 () Bool)

(assert (=> d!58903 (= lt!118329 lt!118327)))

(declare-fun lt!118326 () Unit!7219)

(declare-fun e!151901 () Unit!7219)

(assert (=> d!58903 (= lt!118326 e!151901)))

(declare-fun c!38902 () Bool)

(assert (=> d!58903 (= c!38902 lt!118327)))

(assert (=> d!58903 (= lt!118327 (containsKey!254 (toList!1781 lt!118311) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!58903 (= (contains!1645 lt!118311 #b1000000000000000000000000000000000000000000000000000000000000000) lt!118329)))

(declare-fun b!233830 () Bool)

(declare-fun lt!118328 () Unit!7219)

(assert (=> b!233830 (= e!151901 lt!118328)))

(assert (=> b!233830 (= lt!118328 (lemmaContainsKeyImpliesGetValueByKeyDefined!203 (toList!1781 lt!118311) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!233830 (isDefined!204 (getValueByKey!262 (toList!1781 lt!118311) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!233831 () Bool)

(declare-fun Unit!7223 () Unit!7219)

(assert (=> b!233831 (= e!151901 Unit!7223)))

(declare-fun b!233832 () Bool)

(assert (=> b!233832 (= e!151900 (isDefined!204 (getValueByKey!262 (toList!1781 lt!118311) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!58903 c!38902) b!233830))

(assert (= (and d!58903 (not c!38902)) b!233831))

(assert (= (and d!58903 (not res!114745)) b!233832))

(declare-fun m!255201 () Bool)

(assert (=> d!58903 m!255201))

(declare-fun m!255203 () Bool)

(assert (=> b!233830 m!255203))

(assert (=> b!233830 m!255195))

(assert (=> b!233830 m!255195))

(declare-fun m!255205 () Bool)

(assert (=> b!233830 m!255205))

(assert (=> b!233832 m!255195))

(assert (=> b!233832 m!255195))

(assert (=> b!233832 m!255205))

(assert (=> bm!21745 d!58903))

(declare-fun d!58905 () Bool)

(declare-fun e!151904 () Bool)

(assert (=> d!58905 e!151904))

(declare-fun res!114750 () Bool)

(assert (=> d!58905 (=> (not res!114750) (not e!151904))))

(declare-fun lt!118340 () ListLongMap!3531)

(assert (=> d!58905 (= res!114750 (contains!1645 lt!118340 (_1!2312 (tuple2!4605 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4189 thiss!1504)))))))

(declare-fun lt!118338 () List!3539)

(assert (=> d!58905 (= lt!118340 (ListLongMap!3532 lt!118338))))

(declare-fun lt!118341 () Unit!7219)

(declare-fun lt!118339 () Unit!7219)

(assert (=> d!58905 (= lt!118341 lt!118339)))

(assert (=> d!58905 (= (getValueByKey!262 lt!118338 (_1!2312 (tuple2!4605 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4189 thiss!1504)))) (Some!267 (_2!2312 (tuple2!4605 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4189 thiss!1504)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!149 (List!3539 (_ BitVec 64) V!7859) Unit!7219)

(assert (=> d!58905 (= lt!118339 (lemmaContainsTupThenGetReturnValue!149 lt!118338 (_1!2312 (tuple2!4605 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4189 thiss!1504))) (_2!2312 (tuple2!4605 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4189 thiss!1504)))))))

(declare-fun insertStrictlySorted!151 (List!3539 (_ BitVec 64) V!7859) List!3539)

(assert (=> d!58905 (= lt!118338 (insertStrictlySorted!151 (toList!1781 call!21749) (_1!2312 (tuple2!4605 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4189 thiss!1504))) (_2!2312 (tuple2!4605 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4189 thiss!1504)))))))

(assert (=> d!58905 (= (+!627 call!21749 (tuple2!4605 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4189 thiss!1504))) lt!118340)))

(declare-fun b!233837 () Bool)

(declare-fun res!114751 () Bool)

(assert (=> b!233837 (=> (not res!114751) (not e!151904))))

(assert (=> b!233837 (= res!114751 (= (getValueByKey!262 (toList!1781 lt!118340) (_1!2312 (tuple2!4605 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4189 thiss!1504)))) (Some!267 (_2!2312 (tuple2!4605 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4189 thiss!1504))))))))

(declare-fun b!233838 () Bool)

(declare-fun contains!1646 (List!3539 tuple2!4604) Bool)

(assert (=> b!233838 (= e!151904 (contains!1646 (toList!1781 lt!118340) (tuple2!4605 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4189 thiss!1504))))))

(assert (= (and d!58905 res!114750) b!233837))

(assert (= (and b!233837 res!114751) b!233838))

(declare-fun m!255207 () Bool)

(assert (=> d!58905 m!255207))

(declare-fun m!255209 () Bool)

(assert (=> d!58905 m!255209))

(declare-fun m!255211 () Bool)

(assert (=> d!58905 m!255211))

(declare-fun m!255213 () Bool)

(assert (=> d!58905 m!255213))

(declare-fun m!255215 () Bool)

(assert (=> b!233837 m!255215))

(declare-fun m!255217 () Bool)

(assert (=> b!233838 m!255217))

(assert (=> b!233794 d!58905))

(declare-fun bm!21751 () Bool)

(declare-fun call!21754 () Bool)

(declare-fun c!38905 () Bool)

(assert (=> bm!21751 (= call!21754 (arrayNoDuplicates!0 (_keys!6407 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!38905 (Cons!3536 (select (arr!5500 (_keys!6407 thiss!1504)) #b00000000000000000000000000000000) Nil!3537) Nil!3537)))))

(declare-fun b!233849 () Bool)

(declare-fun e!151914 () Bool)

(declare-fun e!151916 () Bool)

(assert (=> b!233849 (= e!151914 e!151916)))

(assert (=> b!233849 (= c!38905 (validKeyInArray!0 (select (arr!5500 (_keys!6407 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!233850 () Bool)

(declare-fun e!151915 () Bool)

(assert (=> b!233850 (= e!151915 e!151914)))

(declare-fun res!114759 () Bool)

(assert (=> b!233850 (=> (not res!114759) (not e!151914))))

(declare-fun e!151913 () Bool)

(assert (=> b!233850 (= res!114759 (not e!151913))))

(declare-fun res!114760 () Bool)

(assert (=> b!233850 (=> (not res!114760) (not e!151913))))

(assert (=> b!233850 (= res!114760 (validKeyInArray!0 (select (arr!5500 (_keys!6407 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!233851 () Bool)

(assert (=> b!233851 (= e!151916 call!21754)))

(declare-fun b!233852 () Bool)

(assert (=> b!233852 (= e!151916 call!21754)))

(declare-fun d!58907 () Bool)

(declare-fun res!114758 () Bool)

(assert (=> d!58907 (=> res!114758 e!151915)))

(assert (=> d!58907 (= res!114758 (bvsge #b00000000000000000000000000000000 (size!5834 (_keys!6407 thiss!1504))))))

(assert (=> d!58907 (= (arrayNoDuplicates!0 (_keys!6407 thiss!1504) #b00000000000000000000000000000000 Nil!3537) e!151915)))

(declare-fun b!233853 () Bool)

(declare-fun contains!1647 (List!3540 (_ BitVec 64)) Bool)

(assert (=> b!233853 (= e!151913 (contains!1647 Nil!3537 (select (arr!5500 (_keys!6407 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!58907 (not res!114758)) b!233850))

(assert (= (and b!233850 res!114760) b!233853))

(assert (= (and b!233850 res!114759) b!233849))

(assert (= (and b!233849 c!38905) b!233852))

(assert (= (and b!233849 (not c!38905)) b!233851))

(assert (= (or b!233852 b!233851) bm!21751))

(assert (=> bm!21751 m!255123))

(declare-fun m!255219 () Bool)

(assert (=> bm!21751 m!255219))

(assert (=> b!233849 m!255123))

(assert (=> b!233849 m!255123))

(assert (=> b!233849 m!255137))

(assert (=> b!233850 m!255123))

(assert (=> b!233850 m!255123))

(assert (=> b!233850 m!255137))

(assert (=> b!233853 m!255123))

(assert (=> b!233853 m!255123))

(declare-fun m!255221 () Bool)

(assert (=> b!233853 m!255221))

(assert (=> b!233723 d!58907))

(declare-fun d!58909 () Bool)

(assert (=> d!58909 (= (apply!205 lt!118311 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2821 (getValueByKey!262 (toList!1781 lt!118311) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!8666 () Bool)

(assert (= bs!8666 d!58909))

(declare-fun m!255223 () Bool)

(assert (=> bs!8666 m!255223))

(assert (=> bs!8666 m!255223))

(declare-fun m!255225 () Bool)

(assert (=> bs!8666 m!255225))

(assert (=> b!233793 d!58909))

(declare-fun b!233862 () Bool)

(declare-fun e!151922 () (_ BitVec 32))

(declare-fun e!151921 () (_ BitVec 32))

(assert (=> b!233862 (= e!151922 e!151921)))

(declare-fun c!38910 () Bool)

(assert (=> b!233862 (= c!38910 (validKeyInArray!0 (select (arr!5500 (_keys!6407 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!58911 () Bool)

(declare-fun lt!118344 () (_ BitVec 32))

(assert (=> d!58911 (and (bvsge lt!118344 #b00000000000000000000000000000000) (bvsle lt!118344 (bvsub (size!5834 (_keys!6407 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!58911 (= lt!118344 e!151922)))

(declare-fun c!38911 () Bool)

(assert (=> d!58911 (= c!38911 (bvsge #b00000000000000000000000000000000 (size!5834 (_keys!6407 thiss!1504))))))

(assert (=> d!58911 (and (bvsle #b00000000000000000000000000000000 (size!5834 (_keys!6407 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!5834 (_keys!6407 thiss!1504)) (size!5834 (_keys!6407 thiss!1504))))))

(assert (=> d!58911 (= (arrayCountValidKeys!0 (_keys!6407 thiss!1504) #b00000000000000000000000000000000 (size!5834 (_keys!6407 thiss!1504))) lt!118344)))

(declare-fun b!233863 () Bool)

(assert (=> b!233863 (= e!151922 #b00000000000000000000000000000000)))

(declare-fun bm!21754 () Bool)

(declare-fun call!21757 () (_ BitVec 32))

(assert (=> bm!21754 (= call!21757 (arrayCountValidKeys!0 (_keys!6407 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!5834 (_keys!6407 thiss!1504))))))

(declare-fun b!233864 () Bool)

(assert (=> b!233864 (= e!151921 call!21757)))

(declare-fun b!233865 () Bool)

(assert (=> b!233865 (= e!151921 (bvadd #b00000000000000000000000000000001 call!21757))))

(assert (= (and d!58911 c!38911) b!233863))

(assert (= (and d!58911 (not c!38911)) b!233862))

(assert (= (and b!233862 c!38910) b!233865))

(assert (= (and b!233862 (not c!38910)) b!233864))

(assert (= (or b!233865 b!233864) bm!21754))

(assert (=> b!233862 m!255123))

(assert (=> b!233862 m!255123))

(assert (=> b!233862 m!255137))

(declare-fun m!255227 () Bool)

(assert (=> bm!21754 m!255227))

(assert (=> b!233721 d!58911))

(declare-fun d!58913 () Bool)

(declare-fun e!151923 () Bool)

(assert (=> d!58913 e!151923))

(declare-fun res!114761 () Bool)

(assert (=> d!58913 (=> (not res!114761) (not e!151923))))

(declare-fun lt!118347 () ListLongMap!3531)

(assert (=> d!58913 (= res!114761 (contains!1645 lt!118347 (_1!2312 (ite (or c!38892 c!38891) (tuple2!4605 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4189 thiss!1504)) (tuple2!4605 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4189 thiss!1504))))))))

(declare-fun lt!118345 () List!3539)

(assert (=> d!58913 (= lt!118347 (ListLongMap!3532 lt!118345))))

(declare-fun lt!118348 () Unit!7219)

(declare-fun lt!118346 () Unit!7219)

(assert (=> d!58913 (= lt!118348 lt!118346)))

(assert (=> d!58913 (= (getValueByKey!262 lt!118345 (_1!2312 (ite (or c!38892 c!38891) (tuple2!4605 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4189 thiss!1504)) (tuple2!4605 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4189 thiss!1504))))) (Some!267 (_2!2312 (ite (or c!38892 c!38891) (tuple2!4605 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4189 thiss!1504)) (tuple2!4605 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4189 thiss!1504))))))))

(assert (=> d!58913 (= lt!118346 (lemmaContainsTupThenGetReturnValue!149 lt!118345 (_1!2312 (ite (or c!38892 c!38891) (tuple2!4605 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4189 thiss!1504)) (tuple2!4605 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4189 thiss!1504)))) (_2!2312 (ite (or c!38892 c!38891) (tuple2!4605 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4189 thiss!1504)) (tuple2!4605 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4189 thiss!1504))))))))

(assert (=> d!58913 (= lt!118345 (insertStrictlySorted!151 (toList!1781 (ite c!38892 call!21745 (ite c!38891 call!21750 call!21751))) (_1!2312 (ite (or c!38892 c!38891) (tuple2!4605 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4189 thiss!1504)) (tuple2!4605 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4189 thiss!1504)))) (_2!2312 (ite (or c!38892 c!38891) (tuple2!4605 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4189 thiss!1504)) (tuple2!4605 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4189 thiss!1504))))))))

(assert (=> d!58913 (= (+!627 (ite c!38892 call!21745 (ite c!38891 call!21750 call!21751)) (ite (or c!38892 c!38891) (tuple2!4605 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4189 thiss!1504)) (tuple2!4605 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4189 thiss!1504)))) lt!118347)))

(declare-fun b!233866 () Bool)

(declare-fun res!114762 () Bool)

(assert (=> b!233866 (=> (not res!114762) (not e!151923))))

(assert (=> b!233866 (= res!114762 (= (getValueByKey!262 (toList!1781 lt!118347) (_1!2312 (ite (or c!38892 c!38891) (tuple2!4605 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4189 thiss!1504)) (tuple2!4605 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4189 thiss!1504))))) (Some!267 (_2!2312 (ite (or c!38892 c!38891) (tuple2!4605 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4189 thiss!1504)) (tuple2!4605 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4189 thiss!1504)))))))))

(declare-fun b!233867 () Bool)

(assert (=> b!233867 (= e!151923 (contains!1646 (toList!1781 lt!118347) (ite (or c!38892 c!38891) (tuple2!4605 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4189 thiss!1504)) (tuple2!4605 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4189 thiss!1504)))))))

(assert (= (and d!58913 res!114761) b!233866))

(assert (= (and b!233866 res!114762) b!233867))

(declare-fun m!255229 () Bool)

(assert (=> d!58913 m!255229))

(declare-fun m!255231 () Bool)

(assert (=> d!58913 m!255231))

(declare-fun m!255233 () Bool)

(assert (=> d!58913 m!255233))

(declare-fun m!255235 () Bool)

(assert (=> d!58913 m!255235))

(declare-fun m!255237 () Bool)

(assert (=> b!233866 m!255237))

(declare-fun m!255239 () Bool)

(assert (=> b!233867 m!255239))

(assert (=> bm!21742 d!58913))

(declare-fun b!233876 () Bool)

(declare-fun e!151931 () Bool)

(declare-fun call!21760 () Bool)

(assert (=> b!233876 (= e!151931 call!21760)))

(declare-fun b!233877 () Bool)

(declare-fun e!151932 () Bool)

(assert (=> b!233877 (= e!151932 call!21760)))

(declare-fun bm!21757 () Bool)

(assert (=> bm!21757 (= call!21760 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6407 thiss!1504) (mask!10282 thiss!1504)))))

(declare-fun b!233879 () Bool)

(assert (=> b!233879 (= e!151932 e!151931)))

(declare-fun lt!118357 () (_ BitVec 64))

(assert (=> b!233879 (= lt!118357 (select (arr!5500 (_keys!6407 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!118355 () Unit!7219)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11566 (_ BitVec 64) (_ BitVec 32)) Unit!7219)

(assert (=> b!233879 (= lt!118355 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6407 thiss!1504) lt!118357 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!11566 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!233879 (arrayContainsKey!0 (_keys!6407 thiss!1504) lt!118357 #b00000000000000000000000000000000)))

(declare-fun lt!118356 () Unit!7219)

(assert (=> b!233879 (= lt!118356 lt!118355)))

(declare-fun res!114768 () Bool)

(assert (=> b!233879 (= res!114768 (= (seekEntryOrOpen!0 (select (arr!5500 (_keys!6407 thiss!1504)) #b00000000000000000000000000000000) (_keys!6407 thiss!1504) (mask!10282 thiss!1504)) (Found!987 #b00000000000000000000000000000000)))))

(assert (=> b!233879 (=> (not res!114768) (not e!151931))))

(declare-fun d!58915 () Bool)

(declare-fun res!114767 () Bool)

(declare-fun e!151930 () Bool)

(assert (=> d!58915 (=> res!114767 e!151930)))

(assert (=> d!58915 (= res!114767 (bvsge #b00000000000000000000000000000000 (size!5834 (_keys!6407 thiss!1504))))))

(assert (=> d!58915 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6407 thiss!1504) (mask!10282 thiss!1504)) e!151930)))

(declare-fun b!233878 () Bool)

(assert (=> b!233878 (= e!151930 e!151932)))

(declare-fun c!38914 () Bool)

(assert (=> b!233878 (= c!38914 (validKeyInArray!0 (select (arr!5500 (_keys!6407 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!58915 (not res!114767)) b!233878))

(assert (= (and b!233878 c!38914) b!233879))

(assert (= (and b!233878 (not c!38914)) b!233877))

(assert (= (and b!233879 res!114768) b!233876))

(assert (= (or b!233876 b!233877) bm!21757))

(declare-fun m!255241 () Bool)

(assert (=> bm!21757 m!255241))

(assert (=> b!233879 m!255123))

(declare-fun m!255243 () Bool)

(assert (=> b!233879 m!255243))

(declare-fun m!255245 () Bool)

(assert (=> b!233879 m!255245))

(assert (=> b!233879 m!255123))

(declare-fun m!255247 () Bool)

(assert (=> b!233879 m!255247))

(assert (=> b!233878 m!255123))

(assert (=> b!233878 m!255123))

(assert (=> b!233878 m!255137))

(assert (=> b!233722 d!58915))

(declare-fun d!58917 () Bool)

(declare-fun e!151933 () Bool)

(assert (=> d!58917 e!151933))

(declare-fun res!114769 () Bool)

(assert (=> d!58917 (=> res!114769 e!151933)))

(declare-fun lt!118361 () Bool)

(assert (=> d!58917 (= res!114769 (not lt!118361))))

(declare-fun lt!118359 () Bool)

(assert (=> d!58917 (= lt!118361 lt!118359)))

(declare-fun lt!118358 () Unit!7219)

(declare-fun e!151934 () Unit!7219)

(assert (=> d!58917 (= lt!118358 e!151934)))

(declare-fun c!38915 () Bool)

(assert (=> d!58917 (= c!38915 lt!118359)))

(assert (=> d!58917 (= lt!118359 (containsKey!254 (toList!1781 lt!118311) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!58917 (= (contains!1645 lt!118311 #b0000000000000000000000000000000000000000000000000000000000000000) lt!118361)))

(declare-fun b!233880 () Bool)

(declare-fun lt!118360 () Unit!7219)

(assert (=> b!233880 (= e!151934 lt!118360)))

(assert (=> b!233880 (= lt!118360 (lemmaContainsKeyImpliesGetValueByKeyDefined!203 (toList!1781 lt!118311) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!233880 (isDefined!204 (getValueByKey!262 (toList!1781 lt!118311) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!233881 () Bool)

(declare-fun Unit!7224 () Unit!7219)

(assert (=> b!233881 (= e!151934 Unit!7224)))

(declare-fun b!233882 () Bool)

(assert (=> b!233882 (= e!151933 (isDefined!204 (getValueByKey!262 (toList!1781 lt!118311) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!58917 c!38915) b!233880))

(assert (= (and d!58917 (not c!38915)) b!233881))

(assert (= (and d!58917 (not res!114769)) b!233882))

(declare-fun m!255249 () Bool)

(assert (=> d!58917 m!255249))

(declare-fun m!255251 () Bool)

(assert (=> b!233880 m!255251))

(assert (=> b!233880 m!255223))

(assert (=> b!233880 m!255223))

(declare-fun m!255253 () Bool)

(assert (=> b!233880 m!255253))

(assert (=> b!233882 m!255223))

(assert (=> b!233882 m!255223))

(assert (=> b!233882 m!255253))

(assert (=> bm!21747 d!58917))

(declare-fun d!58919 () Bool)

(assert (=> d!58919 (= (apply!205 lt!118311 (select (arr!5500 (_keys!6407 thiss!1504)) #b00000000000000000000000000000000)) (get!2821 (getValueByKey!262 (toList!1781 lt!118311) (select (arr!5500 (_keys!6407 thiss!1504)) #b00000000000000000000000000000000))))))

(declare-fun bs!8667 () Bool)

(assert (= bs!8667 d!58919))

(assert (=> bs!8667 m!255123))

(declare-fun m!255255 () Bool)

(assert (=> bs!8667 m!255255))

(assert (=> bs!8667 m!255255))

(declare-fun m!255257 () Bool)

(assert (=> bs!8667 m!255257))

(assert (=> b!233792 d!58919))

(declare-fun d!58921 () Bool)

(declare-fun c!38918 () Bool)

(assert (=> d!58921 (= c!38918 ((_ is ValueCellFull!2736) (select (arr!5499 (_values!4331 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!151937 () V!7859)

(assert (=> d!58921 (= (get!2820 (select (arr!5499 (_values!4331 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!543 (defaultEntry!4348 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)) e!151937)))

(declare-fun b!233887 () Bool)

(declare-fun get!2822 (ValueCell!2736 V!7859) V!7859)

(assert (=> b!233887 (= e!151937 (get!2822 (select (arr!5499 (_values!4331 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!543 (defaultEntry!4348 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!233888 () Bool)

(declare-fun get!2823 (ValueCell!2736 V!7859) V!7859)

(assert (=> b!233888 (= e!151937 (get!2823 (select (arr!5499 (_values!4331 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!543 (defaultEntry!4348 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!58921 c!38918) b!233887))

(assert (= (and d!58921 (not c!38918)) b!233888))

(assert (=> b!233887 m!255129))

(assert (=> b!233887 m!255127))

(declare-fun m!255259 () Bool)

(assert (=> b!233887 m!255259))

(assert (=> b!233888 m!255129))

(assert (=> b!233888 m!255127))

(declare-fun m!255261 () Bool)

(assert (=> b!233888 m!255261))

(assert (=> b!233792 d!58921))

(declare-fun b!233898 () Bool)

(declare-fun res!114778 () Bool)

(declare-fun e!151940 () Bool)

(assert (=> b!233898 (=> (not res!114778) (not e!151940))))

(declare-fun size!5837 (LongMapFixedSize!3372) (_ BitVec 32))

(assert (=> b!233898 (= res!114778 (bvsge (size!5837 thiss!1504) (_size!1735 thiss!1504)))))

(declare-fun b!233899 () Bool)

(declare-fun res!114780 () Bool)

(assert (=> b!233899 (=> (not res!114780) (not e!151940))))

(assert (=> b!233899 (= res!114780 (= (size!5837 thiss!1504) (bvadd (_size!1735 thiss!1504) (bvsdiv (bvadd (extraKeys!4085 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!233897 () Bool)

(declare-fun res!114781 () Bool)

(assert (=> b!233897 (=> (not res!114781) (not e!151940))))

(assert (=> b!233897 (= res!114781 (and (= (size!5833 (_values!4331 thiss!1504)) (bvadd (mask!10282 thiss!1504) #b00000000000000000000000000000001)) (= (size!5834 (_keys!6407 thiss!1504)) (size!5833 (_values!4331 thiss!1504))) (bvsge (_size!1735 thiss!1504) #b00000000000000000000000000000000) (bvsle (_size!1735 thiss!1504) (bvadd (mask!10282 thiss!1504) #b00000000000000000000000000000001))))))

(declare-fun b!233900 () Bool)

(assert (=> b!233900 (= e!151940 (and (bvsge (extraKeys!4085 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4085 thiss!1504) #b00000000000000000000000000000011) (bvsge (_vacant!1735 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun d!58923 () Bool)

(declare-fun res!114779 () Bool)

(assert (=> d!58923 (=> (not res!114779) (not e!151940))))

(assert (=> d!58923 (= res!114779 (validMask!0 (mask!10282 thiss!1504)))))

(assert (=> d!58923 (= (simpleValid!227 thiss!1504) e!151940)))

(assert (= (and d!58923 res!114779) b!233897))

(assert (= (and b!233897 res!114781) b!233898))

(assert (= (and b!233898 res!114778) b!233899))

(assert (= (and b!233899 res!114780) b!233900))

(declare-fun m!255263 () Bool)

(assert (=> b!233898 m!255263))

(assert (=> b!233899 m!255263))

(assert (=> d!58923 m!255077))

(assert (=> d!58889 d!58923))

(declare-fun b!233919 () Bool)

(declare-fun e!151952 () SeekEntryResult!987)

(assert (=> b!233919 (= e!151952 (Intermediate!987 false (toIndex!0 key!932 (mask!10282 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!233920 () Bool)

(declare-fun e!151953 () Bool)

(declare-fun e!151954 () Bool)

(assert (=> b!233920 (= e!151953 e!151954)))

(declare-fun res!114789 () Bool)

(declare-fun lt!118367 () SeekEntryResult!987)

(assert (=> b!233920 (= res!114789 (and ((_ is Intermediate!987) lt!118367) (not (undefined!1799 lt!118367)) (bvslt (x!23659 lt!118367) #b01111111111111111111111111111110) (bvsge (x!23659 lt!118367) #b00000000000000000000000000000000) (bvsge (x!23659 lt!118367) #b00000000000000000000000000000000)))))

(assert (=> b!233920 (=> (not res!114789) (not e!151954))))

(declare-fun b!233921 () Bool)

(assert (=> b!233921 (and (bvsge (index!6120 lt!118367) #b00000000000000000000000000000000) (bvslt (index!6120 lt!118367) (size!5834 (_keys!6407 thiss!1504))))))

(declare-fun res!114788 () Bool)

(assert (=> b!233921 (= res!114788 (= (select (arr!5500 (_keys!6407 thiss!1504)) (index!6120 lt!118367)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!151951 () Bool)

(assert (=> b!233921 (=> res!114788 e!151951)))

(declare-fun d!58925 () Bool)

(assert (=> d!58925 e!151953))

(declare-fun c!38927 () Bool)

(assert (=> d!58925 (= c!38927 (and ((_ is Intermediate!987) lt!118367) (undefined!1799 lt!118367)))))

(declare-fun e!151955 () SeekEntryResult!987)

(assert (=> d!58925 (= lt!118367 e!151955)))

(declare-fun c!38926 () Bool)

(assert (=> d!58925 (= c!38926 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!118366 () (_ BitVec 64))

(assert (=> d!58925 (= lt!118366 (select (arr!5500 (_keys!6407 thiss!1504)) (toIndex!0 key!932 (mask!10282 thiss!1504))))))

(assert (=> d!58925 (validMask!0 (mask!10282 thiss!1504))))

(assert (=> d!58925 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10282 thiss!1504)) key!932 (_keys!6407 thiss!1504) (mask!10282 thiss!1504)) lt!118367)))

(declare-fun b!233922 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!233922 (= e!151952 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!932 (mask!10282 thiss!1504)) #b00000000000000000000000000000000 (mask!10282 thiss!1504)) key!932 (_keys!6407 thiss!1504) (mask!10282 thiss!1504)))))

(declare-fun b!233923 () Bool)

(assert (=> b!233923 (= e!151955 (Intermediate!987 true (toIndex!0 key!932 (mask!10282 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!233924 () Bool)

(assert (=> b!233924 (and (bvsge (index!6120 lt!118367) #b00000000000000000000000000000000) (bvslt (index!6120 lt!118367) (size!5834 (_keys!6407 thiss!1504))))))

(assert (=> b!233924 (= e!151951 (= (select (arr!5500 (_keys!6407 thiss!1504)) (index!6120 lt!118367)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!233925 () Bool)

(assert (=> b!233925 (and (bvsge (index!6120 lt!118367) #b00000000000000000000000000000000) (bvslt (index!6120 lt!118367) (size!5834 (_keys!6407 thiss!1504))))))

(declare-fun res!114790 () Bool)

(assert (=> b!233925 (= res!114790 (= (select (arr!5500 (_keys!6407 thiss!1504)) (index!6120 lt!118367)) key!932))))

(assert (=> b!233925 (=> res!114790 e!151951)))

(assert (=> b!233925 (= e!151954 e!151951)))

(declare-fun b!233926 () Bool)

(assert (=> b!233926 (= e!151953 (bvsge (x!23659 lt!118367) #b01111111111111111111111111111110))))

(declare-fun b!233927 () Bool)

(assert (=> b!233927 (= e!151955 e!151952)))

(declare-fun c!38925 () Bool)

(assert (=> b!233927 (= c!38925 (or (= lt!118366 key!932) (= (bvadd lt!118366 lt!118366) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!58925 c!38926) b!233923))

(assert (= (and d!58925 (not c!38926)) b!233927))

(assert (= (and b!233927 c!38925) b!233919))

(assert (= (and b!233927 (not c!38925)) b!233922))

(assert (= (and d!58925 c!38927) b!233926))

(assert (= (and d!58925 (not c!38927)) b!233920))

(assert (= (and b!233920 res!114789) b!233925))

(assert (= (and b!233925 (not res!114790)) b!233921))

(assert (= (and b!233921 (not res!114788)) b!233924))

(declare-fun m!255265 () Bool)

(assert (=> b!233925 m!255265))

(assert (=> d!58925 m!255183))

(declare-fun m!255267 () Bool)

(assert (=> d!58925 m!255267))

(assert (=> d!58925 m!255077))

(assert (=> b!233922 m!255183))

(declare-fun m!255269 () Bool)

(assert (=> b!233922 m!255269))

(assert (=> b!233922 m!255269))

(declare-fun m!255271 () Bool)

(assert (=> b!233922 m!255271))

(assert (=> b!233921 m!255265))

(assert (=> b!233924 m!255265))

(assert (=> d!58897 d!58925))

(declare-fun d!58927 () Bool)

(declare-fun lt!118373 () (_ BitVec 32))

(declare-fun lt!118372 () (_ BitVec 32))

(assert (=> d!58927 (= lt!118373 (bvmul (bvxor lt!118372 (bvlshr lt!118372 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!58927 (= lt!118372 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!58927 (and (bvsge (mask!10282 thiss!1504) #b00000000000000000000000000000000) (let ((res!114791 (let ((h!4186 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!23675 (bvmul (bvxor h!4186 (bvlshr h!4186 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!23675 (bvlshr x!23675 #b00000000000000000000000000001101)) (mask!10282 thiss!1504)))))) (and (bvslt res!114791 (bvadd (mask!10282 thiss!1504) #b00000000000000000000000000000001)) (bvsge res!114791 #b00000000000000000000000000000000))))))

(assert (=> d!58927 (= (toIndex!0 key!932 (mask!10282 thiss!1504)) (bvand (bvxor lt!118373 (bvlshr lt!118373 #b00000000000000000000000000001101)) (mask!10282 thiss!1504)))))

(assert (=> d!58897 d!58927))

(assert (=> d!58897 d!58895))

(declare-fun d!58929 () Bool)

(assert (=> d!58929 (= (validKeyInArray!0 (select (arr!5500 (_keys!6407 thiss!1504)) #b00000000000000000000000000000000)) (and (not (= (select (arr!5500 (_keys!6407 thiss!1504)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5500 (_keys!6407 thiss!1504)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!233784 d!58929))

(declare-fun e!151963 () SeekEntryResult!987)

(declare-fun b!233940 () Bool)

(assert (=> b!233940 (= e!151963 (seekKeyOrZeroReturnVacant!0 (bvadd (x!23659 lt!118325) #b00000000000000000000000000000001) (nextIndex!0 (index!6120 lt!118325) (x!23659 lt!118325) (mask!10282 thiss!1504)) (index!6120 lt!118325) key!932 (_keys!6407 thiss!1504) (mask!10282 thiss!1504)))))

(declare-fun b!233941 () Bool)

(declare-fun e!151964 () SeekEntryResult!987)

(declare-fun e!151962 () SeekEntryResult!987)

(assert (=> b!233941 (= e!151964 e!151962)))

(declare-fun c!38936 () Bool)

(declare-fun lt!118378 () (_ BitVec 64))

(assert (=> b!233941 (= c!38936 (= lt!118378 key!932))))

(declare-fun b!233942 () Bool)

(assert (=> b!233942 (= e!151962 (Found!987 (index!6120 lt!118325)))))

(declare-fun d!58931 () Bool)

(declare-fun lt!118379 () SeekEntryResult!987)

(assert (=> d!58931 (and (or ((_ is Undefined!987) lt!118379) (not ((_ is Found!987) lt!118379)) (and (bvsge (index!6119 lt!118379) #b00000000000000000000000000000000) (bvslt (index!6119 lt!118379) (size!5834 (_keys!6407 thiss!1504))))) (or ((_ is Undefined!987) lt!118379) ((_ is Found!987) lt!118379) (not ((_ is MissingVacant!987) lt!118379)) (not (= (index!6121 lt!118379) (index!6120 lt!118325))) (and (bvsge (index!6121 lt!118379) #b00000000000000000000000000000000) (bvslt (index!6121 lt!118379) (size!5834 (_keys!6407 thiss!1504))))) (or ((_ is Undefined!987) lt!118379) (ite ((_ is Found!987) lt!118379) (= (select (arr!5500 (_keys!6407 thiss!1504)) (index!6119 lt!118379)) key!932) (and ((_ is MissingVacant!987) lt!118379) (= (index!6121 lt!118379) (index!6120 lt!118325)) (= (select (arr!5500 (_keys!6407 thiss!1504)) (index!6121 lt!118379)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!58931 (= lt!118379 e!151964)))

(declare-fun c!38934 () Bool)

(assert (=> d!58931 (= c!38934 (bvsge (x!23659 lt!118325) #b01111111111111111111111111111110))))

(assert (=> d!58931 (= lt!118378 (select (arr!5500 (_keys!6407 thiss!1504)) (index!6120 lt!118325)))))

(assert (=> d!58931 (validMask!0 (mask!10282 thiss!1504))))

(assert (=> d!58931 (= (seekKeyOrZeroReturnVacant!0 (x!23659 lt!118325) (index!6120 lt!118325) (index!6120 lt!118325) key!932 (_keys!6407 thiss!1504) (mask!10282 thiss!1504)) lt!118379)))

(declare-fun b!233943 () Bool)

(declare-fun c!38935 () Bool)

(assert (=> b!233943 (= c!38935 (= lt!118378 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!233943 (= e!151962 e!151963)))

(declare-fun b!233944 () Bool)

(assert (=> b!233944 (= e!151964 Undefined!987)))

(declare-fun b!233945 () Bool)

(assert (=> b!233945 (= e!151963 (MissingVacant!987 (index!6120 lt!118325)))))

(assert (= (and d!58931 c!38934) b!233944))

(assert (= (and d!58931 (not c!38934)) b!233941))

(assert (= (and b!233941 c!38936) b!233942))

(assert (= (and b!233941 (not c!38936)) b!233943))

(assert (= (and b!233943 c!38935) b!233945))

(assert (= (and b!233943 (not c!38935)) b!233940))

(declare-fun m!255273 () Bool)

(assert (=> b!233940 m!255273))

(assert (=> b!233940 m!255273))

(declare-fun m!255275 () Bool)

(assert (=> b!233940 m!255275))

(declare-fun m!255277 () Bool)

(assert (=> d!58931 m!255277))

(declare-fun m!255279 () Bool)

(assert (=> d!58931 m!255279))

(assert (=> d!58931 m!255191))

(assert (=> d!58931 m!255077))

(assert (=> b!233814 d!58931))

(assert (=> b!233790 d!58929))

(assert (=> d!58893 d!58895))

(declare-fun d!58933 () Bool)

(assert (=> d!58933 (contains!1645 (+!627 lt!118302 (tuple2!4605 lt!118313 (zeroValue!4189 thiss!1504))) lt!118315)))

(declare-fun lt!118382 () Unit!7219)

(declare-fun choose!1103 (ListLongMap!3531 (_ BitVec 64) V!7859 (_ BitVec 64)) Unit!7219)

(assert (=> d!58933 (= lt!118382 (choose!1103 lt!118302 lt!118313 (zeroValue!4189 thiss!1504) lt!118315))))

(assert (=> d!58933 (contains!1645 lt!118302 lt!118315)))

(assert (=> d!58933 (= (addStillContains!181 lt!118302 lt!118313 (zeroValue!4189 thiss!1504) lt!118315) lt!118382)))

(declare-fun bs!8668 () Bool)

(assert (= bs!8668 d!58933))

(assert (=> bs!8668 m!255147))

(assert (=> bs!8668 m!255147))

(assert (=> bs!8668 m!255151))

(declare-fun m!255281 () Bool)

(assert (=> bs!8668 m!255281))

(declare-fun m!255283 () Bool)

(assert (=> bs!8668 m!255283))

(assert (=> b!233780 d!58933))

(declare-fun d!58935 () Bool)

(declare-fun e!151965 () Bool)

(assert (=> d!58935 e!151965))

(declare-fun res!114792 () Bool)

(assert (=> d!58935 (=> (not res!114792) (not e!151965))))

(declare-fun lt!118385 () ListLongMap!3531)

(assert (=> d!58935 (= res!114792 (contains!1645 lt!118385 (_1!2312 (tuple2!4605 lt!118305 (zeroValue!4189 thiss!1504)))))))

(declare-fun lt!118383 () List!3539)

(assert (=> d!58935 (= lt!118385 (ListLongMap!3532 lt!118383))))

(declare-fun lt!118386 () Unit!7219)

(declare-fun lt!118384 () Unit!7219)

(assert (=> d!58935 (= lt!118386 lt!118384)))

(assert (=> d!58935 (= (getValueByKey!262 lt!118383 (_1!2312 (tuple2!4605 lt!118305 (zeroValue!4189 thiss!1504)))) (Some!267 (_2!2312 (tuple2!4605 lt!118305 (zeroValue!4189 thiss!1504)))))))

(assert (=> d!58935 (= lt!118384 (lemmaContainsTupThenGetReturnValue!149 lt!118383 (_1!2312 (tuple2!4605 lt!118305 (zeroValue!4189 thiss!1504))) (_2!2312 (tuple2!4605 lt!118305 (zeroValue!4189 thiss!1504)))))))

(assert (=> d!58935 (= lt!118383 (insertStrictlySorted!151 (toList!1781 lt!118304) (_1!2312 (tuple2!4605 lt!118305 (zeroValue!4189 thiss!1504))) (_2!2312 (tuple2!4605 lt!118305 (zeroValue!4189 thiss!1504)))))))

(assert (=> d!58935 (= (+!627 lt!118304 (tuple2!4605 lt!118305 (zeroValue!4189 thiss!1504))) lt!118385)))

(declare-fun b!233947 () Bool)

(declare-fun res!114793 () Bool)

(assert (=> b!233947 (=> (not res!114793) (not e!151965))))

(assert (=> b!233947 (= res!114793 (= (getValueByKey!262 (toList!1781 lt!118385) (_1!2312 (tuple2!4605 lt!118305 (zeroValue!4189 thiss!1504)))) (Some!267 (_2!2312 (tuple2!4605 lt!118305 (zeroValue!4189 thiss!1504))))))))

(declare-fun b!233948 () Bool)

(assert (=> b!233948 (= e!151965 (contains!1646 (toList!1781 lt!118385) (tuple2!4605 lt!118305 (zeroValue!4189 thiss!1504))))))

(assert (= (and d!58935 res!114792) b!233947))

(assert (= (and b!233947 res!114793) b!233948))

(declare-fun m!255285 () Bool)

(assert (=> d!58935 m!255285))

(declare-fun m!255287 () Bool)

(assert (=> d!58935 m!255287))

(declare-fun m!255289 () Bool)

(assert (=> d!58935 m!255289))

(declare-fun m!255291 () Bool)

(assert (=> d!58935 m!255291))

(declare-fun m!255293 () Bool)

(assert (=> b!233947 m!255293))

(declare-fun m!255295 () Bool)

(assert (=> b!233948 m!255295))

(assert (=> b!233780 d!58935))

(declare-fun d!58937 () Bool)

(declare-fun e!151966 () Bool)

(assert (=> d!58937 e!151966))

(declare-fun res!114794 () Bool)

(assert (=> d!58937 (=> (not res!114794) (not e!151966))))

(declare-fun lt!118389 () ListLongMap!3531)

(assert (=> d!58937 (= res!114794 (contains!1645 lt!118389 (_1!2312 (tuple2!4605 lt!118313 (zeroValue!4189 thiss!1504)))))))

(declare-fun lt!118387 () List!3539)

(assert (=> d!58937 (= lt!118389 (ListLongMap!3532 lt!118387))))

(declare-fun lt!118390 () Unit!7219)

(declare-fun lt!118388 () Unit!7219)

(assert (=> d!58937 (= lt!118390 lt!118388)))

(assert (=> d!58937 (= (getValueByKey!262 lt!118387 (_1!2312 (tuple2!4605 lt!118313 (zeroValue!4189 thiss!1504)))) (Some!267 (_2!2312 (tuple2!4605 lt!118313 (zeroValue!4189 thiss!1504)))))))

(assert (=> d!58937 (= lt!118388 (lemmaContainsTupThenGetReturnValue!149 lt!118387 (_1!2312 (tuple2!4605 lt!118313 (zeroValue!4189 thiss!1504))) (_2!2312 (tuple2!4605 lt!118313 (zeroValue!4189 thiss!1504)))))))

(assert (=> d!58937 (= lt!118387 (insertStrictlySorted!151 (toList!1781 lt!118302) (_1!2312 (tuple2!4605 lt!118313 (zeroValue!4189 thiss!1504))) (_2!2312 (tuple2!4605 lt!118313 (zeroValue!4189 thiss!1504)))))))

(assert (=> d!58937 (= (+!627 lt!118302 (tuple2!4605 lt!118313 (zeroValue!4189 thiss!1504))) lt!118389)))

(declare-fun b!233949 () Bool)

(declare-fun res!114795 () Bool)

(assert (=> b!233949 (=> (not res!114795) (not e!151966))))

(assert (=> b!233949 (= res!114795 (= (getValueByKey!262 (toList!1781 lt!118389) (_1!2312 (tuple2!4605 lt!118313 (zeroValue!4189 thiss!1504)))) (Some!267 (_2!2312 (tuple2!4605 lt!118313 (zeroValue!4189 thiss!1504))))))))

(declare-fun b!233950 () Bool)

(assert (=> b!233950 (= e!151966 (contains!1646 (toList!1781 lt!118389) (tuple2!4605 lt!118313 (zeroValue!4189 thiss!1504))))))

(assert (= (and d!58937 res!114794) b!233949))

(assert (= (and b!233949 res!114795) b!233950))

(declare-fun m!255297 () Bool)

(assert (=> d!58937 m!255297))

(declare-fun m!255299 () Bool)

(assert (=> d!58937 m!255299))

(declare-fun m!255301 () Bool)

(assert (=> d!58937 m!255301))

(declare-fun m!255303 () Bool)

(assert (=> d!58937 m!255303))

(declare-fun m!255305 () Bool)

(assert (=> b!233949 m!255305))

(declare-fun m!255307 () Bool)

(assert (=> b!233950 m!255307))

(assert (=> b!233780 d!58937))

(declare-fun d!58939 () Bool)

(assert (=> d!58939 (= (apply!205 lt!118312 lt!118300) (get!2821 (getValueByKey!262 (toList!1781 lt!118312) lt!118300)))))

(declare-fun bs!8669 () Bool)

(assert (= bs!8669 d!58939))

(declare-fun m!255309 () Bool)

(assert (=> bs!8669 m!255309))

(assert (=> bs!8669 m!255309))

(declare-fun m!255311 () Bool)

(assert (=> bs!8669 m!255311))

(assert (=> b!233780 d!58939))

(declare-fun d!58941 () Bool)

(assert (=> d!58941 (= (apply!205 (+!627 lt!118312 (tuple2!4605 lt!118310 (minValue!4189 thiss!1504))) lt!118300) (apply!205 lt!118312 lt!118300))))

(declare-fun lt!118393 () Unit!7219)

(declare-fun choose!1104 (ListLongMap!3531 (_ BitVec 64) V!7859 (_ BitVec 64)) Unit!7219)

(assert (=> d!58941 (= lt!118393 (choose!1104 lt!118312 lt!118310 (minValue!4189 thiss!1504) lt!118300))))

(declare-fun e!151969 () Bool)

(assert (=> d!58941 e!151969))

(declare-fun res!114798 () Bool)

(assert (=> d!58941 (=> (not res!114798) (not e!151969))))

(assert (=> d!58941 (= res!114798 (contains!1645 lt!118312 lt!118300))))

(assert (=> d!58941 (= (addApplyDifferent!181 lt!118312 lt!118310 (minValue!4189 thiss!1504) lt!118300) lt!118393)))

(declare-fun b!233954 () Bool)

(assert (=> b!233954 (= e!151969 (not (= lt!118300 lt!118310)))))

(assert (= (and d!58941 res!114798) b!233954))

(assert (=> d!58941 m!255157))

(assert (=> d!58941 m!255159))

(assert (=> d!58941 m!255139))

(assert (=> d!58941 m!255157))

(declare-fun m!255313 () Bool)

(assert (=> d!58941 m!255313))

(declare-fun m!255315 () Bool)

(assert (=> d!58941 m!255315))

(assert (=> b!233780 d!58941))

(declare-fun b!233979 () Bool)

(assert (=> b!233979 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5834 (_keys!6407 thiss!1504))))))

(assert (=> b!233979 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5833 (_values!4331 thiss!1504))))))

(declare-fun e!151987 () Bool)

(declare-fun lt!118409 () ListLongMap!3531)

(assert (=> b!233979 (= e!151987 (= (apply!205 lt!118409 (select (arr!5500 (_keys!6407 thiss!1504)) #b00000000000000000000000000000000)) (get!2820 (select (arr!5499 (_values!4331 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!543 (defaultEntry!4348 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!233980 () Bool)

(declare-fun res!114807 () Bool)

(declare-fun e!151989 () Bool)

(assert (=> b!233980 (=> (not res!114807) (not e!151989))))

(assert (=> b!233980 (= res!114807 (not (contains!1645 lt!118409 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!58943 () Bool)

(assert (=> d!58943 e!151989))

(declare-fun res!114809 () Bool)

(assert (=> d!58943 (=> (not res!114809) (not e!151989))))

(assert (=> d!58943 (= res!114809 (not (contains!1645 lt!118409 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!151986 () ListLongMap!3531)

(assert (=> d!58943 (= lt!118409 e!151986)))

(declare-fun c!38947 () Bool)

(assert (=> d!58943 (= c!38947 (bvsge #b00000000000000000000000000000000 (size!5834 (_keys!6407 thiss!1504))))))

(assert (=> d!58943 (validMask!0 (mask!10282 thiss!1504))))

(assert (=> d!58943 (= (getCurrentListMapNoExtraKeys!524 (_keys!6407 thiss!1504) (_values!4331 thiss!1504) (mask!10282 thiss!1504) (extraKeys!4085 thiss!1504) (zeroValue!4189 thiss!1504) (minValue!4189 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4348 thiss!1504)) lt!118409)))

(declare-fun b!233981 () Bool)

(declare-fun e!151984 () Bool)

(declare-fun isEmpty!511 (ListLongMap!3531) Bool)

(assert (=> b!233981 (= e!151984 (isEmpty!511 lt!118409))))

(declare-fun b!233982 () Bool)

(declare-fun e!151985 () ListLongMap!3531)

(declare-fun call!21763 () ListLongMap!3531)

(assert (=> b!233982 (= e!151985 call!21763)))

(declare-fun bm!21760 () Bool)

(assert (=> bm!21760 (= call!21763 (getCurrentListMapNoExtraKeys!524 (_keys!6407 thiss!1504) (_values!4331 thiss!1504) (mask!10282 thiss!1504) (extraKeys!4085 thiss!1504) (zeroValue!4189 thiss!1504) (minValue!4189 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4348 thiss!1504)))))

(declare-fun b!233983 () Bool)

(declare-fun e!151990 () Bool)

(assert (=> b!233983 (= e!151990 e!151987)))

(assert (=> b!233983 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5834 (_keys!6407 thiss!1504))))))

(declare-fun res!114810 () Bool)

(assert (=> b!233983 (= res!114810 (contains!1645 lt!118409 (select (arr!5500 (_keys!6407 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!233983 (=> (not res!114810) (not e!151987))))

(declare-fun b!233984 () Bool)

(assert (=> b!233984 (= e!151984 (= lt!118409 (getCurrentListMapNoExtraKeys!524 (_keys!6407 thiss!1504) (_values!4331 thiss!1504) (mask!10282 thiss!1504) (extraKeys!4085 thiss!1504) (zeroValue!4189 thiss!1504) (minValue!4189 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4348 thiss!1504))))))

(declare-fun b!233985 () Bool)

(assert (=> b!233985 (= e!151986 e!151985)))

(declare-fun c!38948 () Bool)

(assert (=> b!233985 (= c!38948 (validKeyInArray!0 (select (arr!5500 (_keys!6407 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!233986 () Bool)

(assert (=> b!233986 (= e!151986 (ListLongMap!3532 Nil!3536))))

(declare-fun b!233987 () Bool)

(assert (=> b!233987 (= e!151989 e!151990)))

(declare-fun c!38945 () Bool)

(declare-fun e!151988 () Bool)

(assert (=> b!233987 (= c!38945 e!151988)))

(declare-fun res!114808 () Bool)

(assert (=> b!233987 (=> (not res!114808) (not e!151988))))

(assert (=> b!233987 (= res!114808 (bvslt #b00000000000000000000000000000000 (size!5834 (_keys!6407 thiss!1504))))))

(declare-fun b!233988 () Bool)

(declare-fun lt!118408 () Unit!7219)

(declare-fun lt!118410 () Unit!7219)

(assert (=> b!233988 (= lt!118408 lt!118410)))

(declare-fun lt!118411 () V!7859)

(declare-fun lt!118414 () (_ BitVec 64))

(declare-fun lt!118412 () ListLongMap!3531)

(declare-fun lt!118413 () (_ BitVec 64))

(assert (=> b!233988 (not (contains!1645 (+!627 lt!118412 (tuple2!4605 lt!118414 lt!118411)) lt!118413))))

(declare-fun addStillNotContains!114 (ListLongMap!3531 (_ BitVec 64) V!7859 (_ BitVec 64)) Unit!7219)

(assert (=> b!233988 (= lt!118410 (addStillNotContains!114 lt!118412 lt!118414 lt!118411 lt!118413))))

(assert (=> b!233988 (= lt!118413 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!233988 (= lt!118411 (get!2820 (select (arr!5499 (_values!4331 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!543 (defaultEntry!4348 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!233988 (= lt!118414 (select (arr!5500 (_keys!6407 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!233988 (= lt!118412 call!21763)))

(assert (=> b!233988 (= e!151985 (+!627 call!21763 (tuple2!4605 (select (arr!5500 (_keys!6407 thiss!1504)) #b00000000000000000000000000000000) (get!2820 (select (arr!5499 (_values!4331 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!543 (defaultEntry!4348 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!233989 () Bool)

(assert (=> b!233989 (= e!151988 (validKeyInArray!0 (select (arr!5500 (_keys!6407 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!233989 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!233990 () Bool)

(assert (=> b!233990 (= e!151990 e!151984)))

(declare-fun c!38946 () Bool)

(assert (=> b!233990 (= c!38946 (bvslt #b00000000000000000000000000000000 (size!5834 (_keys!6407 thiss!1504))))))

(assert (= (and d!58943 c!38947) b!233986))

(assert (= (and d!58943 (not c!38947)) b!233985))

(assert (= (and b!233985 c!38948) b!233988))

(assert (= (and b!233985 (not c!38948)) b!233982))

(assert (= (or b!233988 b!233982) bm!21760))

(assert (= (and d!58943 res!114809) b!233980))

(assert (= (and b!233980 res!114807) b!233987))

(assert (= (and b!233987 res!114808) b!233989))

(assert (= (and b!233987 c!38945) b!233983))

(assert (= (and b!233987 (not c!38945)) b!233990))

(assert (= (and b!233983 res!114810) b!233979))

(assert (= (and b!233990 c!38946) b!233984))

(assert (= (and b!233990 (not c!38946)) b!233981))

(declare-fun b_lambda!7893 () Bool)

(assert (=> (not b_lambda!7893) (not b!233979)))

(assert (=> b!233979 t!8512))

(declare-fun b_and!13227 () Bool)

(assert (= b_and!13225 (and (=> t!8512 result!5099) b_and!13227)))

(declare-fun b_lambda!7895 () Bool)

(assert (=> (not b_lambda!7895) (not b!233988)))

(assert (=> b!233988 t!8512))

(declare-fun b_and!13229 () Bool)

(assert (= b_and!13227 (and (=> t!8512 result!5099) b_and!13229)))

(assert (=> b!233979 m!255123))

(assert (=> b!233979 m!255129))

(assert (=> b!233979 m!255123))

(declare-fun m!255317 () Bool)

(assert (=> b!233979 m!255317))

(assert (=> b!233979 m!255129))

(assert (=> b!233979 m!255127))

(assert (=> b!233979 m!255131))

(assert (=> b!233979 m!255127))

(declare-fun m!255319 () Bool)

(assert (=> b!233981 m!255319))

(declare-fun m!255321 () Bool)

(assert (=> bm!21760 m!255321))

(assert (=> b!233985 m!255123))

(assert (=> b!233985 m!255123))

(assert (=> b!233985 m!255137))

(declare-fun m!255323 () Bool)

(assert (=> b!233980 m!255323))

(declare-fun m!255325 () Bool)

(assert (=> d!58943 m!255325))

(assert (=> d!58943 m!255077))

(assert (=> b!233983 m!255123))

(assert (=> b!233983 m!255123))

(declare-fun m!255327 () Bool)

(assert (=> b!233983 m!255327))

(assert (=> b!233988 m!255123))

(declare-fun m!255329 () Bool)

(assert (=> b!233988 m!255329))

(assert (=> b!233988 m!255129))

(assert (=> b!233988 m!255127))

(assert (=> b!233988 m!255131))

(declare-fun m!255331 () Bool)

(assert (=> b!233988 m!255331))

(assert (=> b!233988 m!255127))

(declare-fun m!255333 () Bool)

(assert (=> b!233988 m!255333))

(declare-fun m!255335 () Bool)

(assert (=> b!233988 m!255335))

(assert (=> b!233988 m!255129))

(assert (=> b!233988 m!255333))

(assert (=> b!233989 m!255123))

(assert (=> b!233989 m!255123))

(assert (=> b!233989 m!255137))

(assert (=> b!233984 m!255321))

(assert (=> b!233780 d!58943))

(declare-fun d!58945 () Bool)

(declare-fun e!151991 () Bool)

(assert (=> d!58945 e!151991))

(declare-fun res!114811 () Bool)

(assert (=> d!58945 (=> (not res!114811) (not e!151991))))

(declare-fun lt!118417 () ListLongMap!3531)

(assert (=> d!58945 (= res!114811 (contains!1645 lt!118417 (_1!2312 (tuple2!4605 lt!118316 (minValue!4189 thiss!1504)))))))

(declare-fun lt!118415 () List!3539)

(assert (=> d!58945 (= lt!118417 (ListLongMap!3532 lt!118415))))

(declare-fun lt!118418 () Unit!7219)

(declare-fun lt!118416 () Unit!7219)

(assert (=> d!58945 (= lt!118418 lt!118416)))

(assert (=> d!58945 (= (getValueByKey!262 lt!118415 (_1!2312 (tuple2!4605 lt!118316 (minValue!4189 thiss!1504)))) (Some!267 (_2!2312 (tuple2!4605 lt!118316 (minValue!4189 thiss!1504)))))))

(assert (=> d!58945 (= lt!118416 (lemmaContainsTupThenGetReturnValue!149 lt!118415 (_1!2312 (tuple2!4605 lt!118316 (minValue!4189 thiss!1504))) (_2!2312 (tuple2!4605 lt!118316 (minValue!4189 thiss!1504)))))))

(assert (=> d!58945 (= lt!118415 (insertStrictlySorted!151 (toList!1781 lt!118301) (_1!2312 (tuple2!4605 lt!118316 (minValue!4189 thiss!1504))) (_2!2312 (tuple2!4605 lt!118316 (minValue!4189 thiss!1504)))))))

(assert (=> d!58945 (= (+!627 lt!118301 (tuple2!4605 lt!118316 (minValue!4189 thiss!1504))) lt!118417)))

(declare-fun b!233991 () Bool)

(declare-fun res!114812 () Bool)

(assert (=> b!233991 (=> (not res!114812) (not e!151991))))

(assert (=> b!233991 (= res!114812 (= (getValueByKey!262 (toList!1781 lt!118417) (_1!2312 (tuple2!4605 lt!118316 (minValue!4189 thiss!1504)))) (Some!267 (_2!2312 (tuple2!4605 lt!118316 (minValue!4189 thiss!1504))))))))

(declare-fun b!233992 () Bool)

(assert (=> b!233992 (= e!151991 (contains!1646 (toList!1781 lt!118417) (tuple2!4605 lt!118316 (minValue!4189 thiss!1504))))))

(assert (= (and d!58945 res!114811) b!233991))

(assert (= (and b!233991 res!114812) b!233992))

(declare-fun m!255337 () Bool)

(assert (=> d!58945 m!255337))

(declare-fun m!255339 () Bool)

(assert (=> d!58945 m!255339))

(declare-fun m!255341 () Bool)

(assert (=> d!58945 m!255341))

(declare-fun m!255343 () Bool)

(assert (=> d!58945 m!255343))

(declare-fun m!255345 () Bool)

(assert (=> b!233991 m!255345))

(declare-fun m!255347 () Bool)

(assert (=> b!233992 m!255347))

(assert (=> b!233780 d!58945))

(declare-fun d!58947 () Bool)

(declare-fun e!151992 () Bool)

(assert (=> d!58947 e!151992))

(declare-fun res!114813 () Bool)

(assert (=> d!58947 (=> (not res!114813) (not e!151992))))

(declare-fun lt!118421 () ListLongMap!3531)

(assert (=> d!58947 (= res!114813 (contains!1645 lt!118421 (_1!2312 (tuple2!4605 lt!118310 (minValue!4189 thiss!1504)))))))

(declare-fun lt!118419 () List!3539)

(assert (=> d!58947 (= lt!118421 (ListLongMap!3532 lt!118419))))

(declare-fun lt!118422 () Unit!7219)

(declare-fun lt!118420 () Unit!7219)

(assert (=> d!58947 (= lt!118422 lt!118420)))

(assert (=> d!58947 (= (getValueByKey!262 lt!118419 (_1!2312 (tuple2!4605 lt!118310 (minValue!4189 thiss!1504)))) (Some!267 (_2!2312 (tuple2!4605 lt!118310 (minValue!4189 thiss!1504)))))))

(assert (=> d!58947 (= lt!118420 (lemmaContainsTupThenGetReturnValue!149 lt!118419 (_1!2312 (tuple2!4605 lt!118310 (minValue!4189 thiss!1504))) (_2!2312 (tuple2!4605 lt!118310 (minValue!4189 thiss!1504)))))))

(assert (=> d!58947 (= lt!118419 (insertStrictlySorted!151 (toList!1781 lt!118312) (_1!2312 (tuple2!4605 lt!118310 (minValue!4189 thiss!1504))) (_2!2312 (tuple2!4605 lt!118310 (minValue!4189 thiss!1504)))))))

(assert (=> d!58947 (= (+!627 lt!118312 (tuple2!4605 lt!118310 (minValue!4189 thiss!1504))) lt!118421)))

(declare-fun b!233993 () Bool)

(declare-fun res!114814 () Bool)

(assert (=> b!233993 (=> (not res!114814) (not e!151992))))

(assert (=> b!233993 (= res!114814 (= (getValueByKey!262 (toList!1781 lt!118421) (_1!2312 (tuple2!4605 lt!118310 (minValue!4189 thiss!1504)))) (Some!267 (_2!2312 (tuple2!4605 lt!118310 (minValue!4189 thiss!1504))))))))

(declare-fun b!233994 () Bool)

(assert (=> b!233994 (= e!151992 (contains!1646 (toList!1781 lt!118421) (tuple2!4605 lt!118310 (minValue!4189 thiss!1504))))))

(assert (= (and d!58947 res!114813) b!233993))

(assert (= (and b!233993 res!114814) b!233994))

(declare-fun m!255349 () Bool)

(assert (=> d!58947 m!255349))

(declare-fun m!255351 () Bool)

(assert (=> d!58947 m!255351))

(declare-fun m!255353 () Bool)

(assert (=> d!58947 m!255353))

(declare-fun m!255355 () Bool)

(assert (=> d!58947 m!255355))

(declare-fun m!255357 () Bool)

(assert (=> b!233993 m!255357))

(declare-fun m!255359 () Bool)

(assert (=> b!233994 m!255359))

(assert (=> b!233780 d!58947))

(declare-fun d!58949 () Bool)

(assert (=> d!58949 (= (apply!205 (+!627 lt!118304 (tuple2!4605 lt!118305 (zeroValue!4189 thiss!1504))) lt!118299) (get!2821 (getValueByKey!262 (toList!1781 (+!627 lt!118304 (tuple2!4605 lt!118305 (zeroValue!4189 thiss!1504)))) lt!118299)))))

(declare-fun bs!8670 () Bool)

(assert (= bs!8670 d!58949))

(declare-fun m!255361 () Bool)

(assert (=> bs!8670 m!255361))

(assert (=> bs!8670 m!255361))

(declare-fun m!255363 () Bool)

(assert (=> bs!8670 m!255363))

(assert (=> b!233780 d!58949))

(declare-fun d!58951 () Bool)

(assert (=> d!58951 (= (apply!205 (+!627 lt!118312 (tuple2!4605 lt!118310 (minValue!4189 thiss!1504))) lt!118300) (get!2821 (getValueByKey!262 (toList!1781 (+!627 lt!118312 (tuple2!4605 lt!118310 (minValue!4189 thiss!1504)))) lt!118300)))))

(declare-fun bs!8671 () Bool)

(assert (= bs!8671 d!58951))

(declare-fun m!255365 () Bool)

(assert (=> bs!8671 m!255365))

(assert (=> bs!8671 m!255365))

(declare-fun m!255367 () Bool)

(assert (=> bs!8671 m!255367))

(assert (=> b!233780 d!58951))

(declare-fun d!58953 () Bool)

(assert (=> d!58953 (= (apply!205 (+!627 lt!118301 (tuple2!4605 lt!118316 (minValue!4189 thiss!1504))) lt!118303) (apply!205 lt!118301 lt!118303))))

(declare-fun lt!118423 () Unit!7219)

(assert (=> d!58953 (= lt!118423 (choose!1104 lt!118301 lt!118316 (minValue!4189 thiss!1504) lt!118303))))

(declare-fun e!151993 () Bool)

(assert (=> d!58953 e!151993))

(declare-fun res!114815 () Bool)

(assert (=> d!58953 (=> (not res!114815) (not e!151993))))

(assert (=> d!58953 (= res!114815 (contains!1645 lt!118301 lt!118303))))

(assert (=> d!58953 (= (addApplyDifferent!181 lt!118301 lt!118316 (minValue!4189 thiss!1504) lt!118303) lt!118423)))

(declare-fun b!233995 () Bool)

(assert (=> b!233995 (= e!151993 (not (= lt!118303 lt!118316)))))

(assert (= (and d!58953 res!114815) b!233995))

(assert (=> d!58953 m!255141))

(assert (=> d!58953 m!255155))

(assert (=> d!58953 m!255169))

(assert (=> d!58953 m!255141))

(declare-fun m!255369 () Bool)

(assert (=> d!58953 m!255369))

(declare-fun m!255371 () Bool)

(assert (=> d!58953 m!255371))

(assert (=> b!233780 d!58953))

(declare-fun d!58955 () Bool)

(assert (=> d!58955 (= (apply!205 lt!118304 lt!118299) (get!2821 (getValueByKey!262 (toList!1781 lt!118304) lt!118299)))))

(declare-fun bs!8672 () Bool)

(assert (= bs!8672 d!58955))

(declare-fun m!255373 () Bool)

(assert (=> bs!8672 m!255373))

(assert (=> bs!8672 m!255373))

(declare-fun m!255375 () Bool)

(assert (=> bs!8672 m!255375))

(assert (=> b!233780 d!58955))

(declare-fun d!58957 () Bool)

(assert (=> d!58957 (= (apply!205 lt!118301 lt!118303) (get!2821 (getValueByKey!262 (toList!1781 lt!118301) lt!118303)))))

(declare-fun bs!8673 () Bool)

(assert (= bs!8673 d!58957))

(declare-fun m!255377 () Bool)

(assert (=> bs!8673 m!255377))

(assert (=> bs!8673 m!255377))

(declare-fun m!255379 () Bool)

(assert (=> bs!8673 m!255379))

(assert (=> b!233780 d!58957))

(declare-fun d!58959 () Bool)

(assert (=> d!58959 (= (apply!205 (+!627 lt!118301 (tuple2!4605 lt!118316 (minValue!4189 thiss!1504))) lt!118303) (get!2821 (getValueByKey!262 (toList!1781 (+!627 lt!118301 (tuple2!4605 lt!118316 (minValue!4189 thiss!1504)))) lt!118303)))))

(declare-fun bs!8674 () Bool)

(assert (= bs!8674 d!58959))

(declare-fun m!255381 () Bool)

(assert (=> bs!8674 m!255381))

(assert (=> bs!8674 m!255381))

(declare-fun m!255383 () Bool)

(assert (=> bs!8674 m!255383))

(assert (=> b!233780 d!58959))

(declare-fun d!58961 () Bool)

(assert (=> d!58961 (= (apply!205 (+!627 lt!118304 (tuple2!4605 lt!118305 (zeroValue!4189 thiss!1504))) lt!118299) (apply!205 lt!118304 lt!118299))))

(declare-fun lt!118424 () Unit!7219)

(assert (=> d!58961 (= lt!118424 (choose!1104 lt!118304 lt!118305 (zeroValue!4189 thiss!1504) lt!118299))))

(declare-fun e!151994 () Bool)

(assert (=> d!58961 e!151994))

(declare-fun res!114816 () Bool)

(assert (=> d!58961 (=> (not res!114816) (not e!151994))))

(assert (=> d!58961 (= res!114816 (contains!1645 lt!118304 lt!118299))))

(assert (=> d!58961 (= (addApplyDifferent!181 lt!118304 lt!118305 (zeroValue!4189 thiss!1504) lt!118299) lt!118424)))

(declare-fun b!233996 () Bool)

(assert (=> b!233996 (= e!151994 (not (= lt!118299 lt!118305)))))

(assert (= (and d!58961 res!114816) b!233996))

(assert (=> d!58961 m!255145))

(assert (=> d!58961 m!255149))

(assert (=> d!58961 m!255163))

(assert (=> d!58961 m!255145))

(declare-fun m!255385 () Bool)

(assert (=> d!58961 m!255385))

(declare-fun m!255387 () Bool)

(assert (=> d!58961 m!255387))

(assert (=> b!233780 d!58961))

(declare-fun d!58963 () Bool)

(declare-fun e!151995 () Bool)

(assert (=> d!58963 e!151995))

(declare-fun res!114817 () Bool)

(assert (=> d!58963 (=> res!114817 e!151995)))

(declare-fun lt!118428 () Bool)

(assert (=> d!58963 (= res!114817 (not lt!118428))))

(declare-fun lt!118426 () Bool)

(assert (=> d!58963 (= lt!118428 lt!118426)))

(declare-fun lt!118425 () Unit!7219)

(declare-fun e!151996 () Unit!7219)

(assert (=> d!58963 (= lt!118425 e!151996)))

(declare-fun c!38949 () Bool)

(assert (=> d!58963 (= c!38949 lt!118426)))

(assert (=> d!58963 (= lt!118426 (containsKey!254 (toList!1781 (+!627 lt!118302 (tuple2!4605 lt!118313 (zeroValue!4189 thiss!1504)))) lt!118315))))

(assert (=> d!58963 (= (contains!1645 (+!627 lt!118302 (tuple2!4605 lt!118313 (zeroValue!4189 thiss!1504))) lt!118315) lt!118428)))

(declare-fun b!233997 () Bool)

(declare-fun lt!118427 () Unit!7219)

(assert (=> b!233997 (= e!151996 lt!118427)))

(assert (=> b!233997 (= lt!118427 (lemmaContainsKeyImpliesGetValueByKeyDefined!203 (toList!1781 (+!627 lt!118302 (tuple2!4605 lt!118313 (zeroValue!4189 thiss!1504)))) lt!118315))))

(assert (=> b!233997 (isDefined!204 (getValueByKey!262 (toList!1781 (+!627 lt!118302 (tuple2!4605 lt!118313 (zeroValue!4189 thiss!1504)))) lt!118315))))

(declare-fun b!233998 () Bool)

(declare-fun Unit!7225 () Unit!7219)

(assert (=> b!233998 (= e!151996 Unit!7225)))

(declare-fun b!233999 () Bool)

(assert (=> b!233999 (= e!151995 (isDefined!204 (getValueByKey!262 (toList!1781 (+!627 lt!118302 (tuple2!4605 lt!118313 (zeroValue!4189 thiss!1504)))) lt!118315)))))

(assert (= (and d!58963 c!38949) b!233997))

(assert (= (and d!58963 (not c!38949)) b!233998))

(assert (= (and d!58963 (not res!114817)) b!233999))

(declare-fun m!255389 () Bool)

(assert (=> d!58963 m!255389))

(declare-fun m!255391 () Bool)

(assert (=> b!233997 m!255391))

(declare-fun m!255393 () Bool)

(assert (=> b!233997 m!255393))

(assert (=> b!233997 m!255393))

(declare-fun m!255395 () Bool)

(assert (=> b!233997 m!255395))

(assert (=> b!233999 m!255393))

(assert (=> b!233999 m!255393))

(assert (=> b!233999 m!255395))

(assert (=> b!233780 d!58963))

(declare-fun d!58965 () Bool)

(declare-fun isEmpty!512 (Option!268) Bool)

(assert (=> d!58965 (= (isDefined!204 (getValueByKey!262 (toList!1781 (getCurrentListMap!1304 (_keys!6407 thiss!1504) (_values!4331 thiss!1504) (mask!10282 thiss!1504) (extraKeys!4085 thiss!1504) (zeroValue!4189 thiss!1504) (minValue!4189 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4348 thiss!1504))) key!932)) (not (isEmpty!512 (getValueByKey!262 (toList!1781 (getCurrentListMap!1304 (_keys!6407 thiss!1504) (_values!4331 thiss!1504) (mask!10282 thiss!1504) (extraKeys!4085 thiss!1504) (zeroValue!4189 thiss!1504) (minValue!4189 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4348 thiss!1504))) key!932))))))

(declare-fun bs!8675 () Bool)

(assert (= bs!8675 d!58965))

(assert (=> bs!8675 m!255117))

(declare-fun m!255397 () Bool)

(assert (=> bs!8675 m!255397))

(assert (=> b!233732 d!58965))

(declare-fun b!234010 () Bool)

(declare-fun e!152002 () Option!268)

(assert (=> b!234010 (= e!152002 (getValueByKey!262 (t!8510 (toList!1781 (getCurrentListMap!1304 (_keys!6407 thiss!1504) (_values!4331 thiss!1504) (mask!10282 thiss!1504) (extraKeys!4085 thiss!1504) (zeroValue!4189 thiss!1504) (minValue!4189 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4348 thiss!1504)))) key!932))))

(declare-fun b!234011 () Bool)

(assert (=> b!234011 (= e!152002 None!266)))

(declare-fun b!234009 () Bool)

(declare-fun e!152001 () Option!268)

(assert (=> b!234009 (= e!152001 e!152002)))

(declare-fun c!38955 () Bool)

(assert (=> b!234009 (= c!38955 (and ((_ is Cons!3535) (toList!1781 (getCurrentListMap!1304 (_keys!6407 thiss!1504) (_values!4331 thiss!1504) (mask!10282 thiss!1504) (extraKeys!4085 thiss!1504) (zeroValue!4189 thiss!1504) (minValue!4189 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4348 thiss!1504)))) (not (= (_1!2312 (h!4184 (toList!1781 (getCurrentListMap!1304 (_keys!6407 thiss!1504) (_values!4331 thiss!1504) (mask!10282 thiss!1504) (extraKeys!4085 thiss!1504) (zeroValue!4189 thiss!1504) (minValue!4189 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4348 thiss!1504))))) key!932))))))

(declare-fun d!58967 () Bool)

(declare-fun c!38954 () Bool)

(assert (=> d!58967 (= c!38954 (and ((_ is Cons!3535) (toList!1781 (getCurrentListMap!1304 (_keys!6407 thiss!1504) (_values!4331 thiss!1504) (mask!10282 thiss!1504) (extraKeys!4085 thiss!1504) (zeroValue!4189 thiss!1504) (minValue!4189 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4348 thiss!1504)))) (= (_1!2312 (h!4184 (toList!1781 (getCurrentListMap!1304 (_keys!6407 thiss!1504) (_values!4331 thiss!1504) (mask!10282 thiss!1504) (extraKeys!4085 thiss!1504) (zeroValue!4189 thiss!1504) (minValue!4189 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4348 thiss!1504))))) key!932)))))

(assert (=> d!58967 (= (getValueByKey!262 (toList!1781 (getCurrentListMap!1304 (_keys!6407 thiss!1504) (_values!4331 thiss!1504) (mask!10282 thiss!1504) (extraKeys!4085 thiss!1504) (zeroValue!4189 thiss!1504) (minValue!4189 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4348 thiss!1504))) key!932) e!152001)))

(declare-fun b!234008 () Bool)

(assert (=> b!234008 (= e!152001 (Some!267 (_2!2312 (h!4184 (toList!1781 (getCurrentListMap!1304 (_keys!6407 thiss!1504) (_values!4331 thiss!1504) (mask!10282 thiss!1504) (extraKeys!4085 thiss!1504) (zeroValue!4189 thiss!1504) (minValue!4189 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4348 thiss!1504)))))))))

(assert (= (and d!58967 c!38954) b!234008))

(assert (= (and d!58967 (not c!38954)) b!234009))

(assert (= (and b!234009 c!38955) b!234010))

(assert (= (and b!234009 (not c!38955)) b!234011))

(declare-fun m!255399 () Bool)

(assert (=> b!234010 m!255399))

(assert (=> b!233732 d!58967))

(declare-fun d!58969 () Bool)

(assert (=> d!58969 (isDefined!204 (getValueByKey!262 (toList!1781 (getCurrentListMap!1304 (_keys!6407 thiss!1504) (_values!4331 thiss!1504) (mask!10282 thiss!1504) (extraKeys!4085 thiss!1504) (zeroValue!4189 thiss!1504) (minValue!4189 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4348 thiss!1504))) key!932))))

(declare-fun lt!118431 () Unit!7219)

(declare-fun choose!1105 (List!3539 (_ BitVec 64)) Unit!7219)

(assert (=> d!58969 (= lt!118431 (choose!1105 (toList!1781 (getCurrentListMap!1304 (_keys!6407 thiss!1504) (_values!4331 thiss!1504) (mask!10282 thiss!1504) (extraKeys!4085 thiss!1504) (zeroValue!4189 thiss!1504) (minValue!4189 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4348 thiss!1504))) key!932))))

(declare-fun e!152005 () Bool)

(assert (=> d!58969 e!152005))

(declare-fun res!114820 () Bool)

(assert (=> d!58969 (=> (not res!114820) (not e!152005))))

(declare-fun isStrictlySorted!355 (List!3539) Bool)

(assert (=> d!58969 (= res!114820 (isStrictlySorted!355 (toList!1781 (getCurrentListMap!1304 (_keys!6407 thiss!1504) (_values!4331 thiss!1504) (mask!10282 thiss!1504) (extraKeys!4085 thiss!1504) (zeroValue!4189 thiss!1504) (minValue!4189 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4348 thiss!1504)))))))

(assert (=> d!58969 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!203 (toList!1781 (getCurrentListMap!1304 (_keys!6407 thiss!1504) (_values!4331 thiss!1504) (mask!10282 thiss!1504) (extraKeys!4085 thiss!1504) (zeroValue!4189 thiss!1504) (minValue!4189 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4348 thiss!1504))) key!932) lt!118431)))

(declare-fun b!234014 () Bool)

(assert (=> b!234014 (= e!152005 (containsKey!254 (toList!1781 (getCurrentListMap!1304 (_keys!6407 thiss!1504) (_values!4331 thiss!1504) (mask!10282 thiss!1504) (extraKeys!4085 thiss!1504) (zeroValue!4189 thiss!1504) (minValue!4189 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4348 thiss!1504))) key!932))))

(assert (= (and d!58969 res!114820) b!234014))

(assert (=> d!58969 m!255117))

(assert (=> d!58969 m!255117))

(assert (=> d!58969 m!255119))

(declare-fun m!255401 () Bool)

(assert (=> d!58969 m!255401))

(declare-fun m!255403 () Bool)

(assert (=> d!58969 m!255403))

(assert (=> b!234014 m!255113))

(assert (=> b!233730 d!58969))

(assert (=> b!233730 d!58965))

(assert (=> b!233730 d!58967))

(assert (=> bm!21743 d!58943))

(declare-fun d!58971 () Bool)

(declare-fun e!152006 () Bool)

(assert (=> d!58971 e!152006))

(declare-fun res!114821 () Bool)

(assert (=> d!58971 (=> res!114821 e!152006)))

(declare-fun lt!118435 () Bool)

(assert (=> d!58971 (= res!114821 (not lt!118435))))

(declare-fun lt!118433 () Bool)

(assert (=> d!58971 (= lt!118435 lt!118433)))

(declare-fun lt!118432 () Unit!7219)

(declare-fun e!152007 () Unit!7219)

(assert (=> d!58971 (= lt!118432 e!152007)))

(declare-fun c!38956 () Bool)

(assert (=> d!58971 (= c!38956 lt!118433)))

(assert (=> d!58971 (= lt!118433 (containsKey!254 (toList!1781 lt!118311) (select (arr!5500 (_keys!6407 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!58971 (= (contains!1645 lt!118311 (select (arr!5500 (_keys!6407 thiss!1504)) #b00000000000000000000000000000000)) lt!118435)))

(declare-fun b!234015 () Bool)

(declare-fun lt!118434 () Unit!7219)

(assert (=> b!234015 (= e!152007 lt!118434)))

(assert (=> b!234015 (= lt!118434 (lemmaContainsKeyImpliesGetValueByKeyDefined!203 (toList!1781 lt!118311) (select (arr!5500 (_keys!6407 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!234015 (isDefined!204 (getValueByKey!262 (toList!1781 lt!118311) (select (arr!5500 (_keys!6407 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!234016 () Bool)

(declare-fun Unit!7226 () Unit!7219)

(assert (=> b!234016 (= e!152007 Unit!7226)))

(declare-fun b!234017 () Bool)

(assert (=> b!234017 (= e!152006 (isDefined!204 (getValueByKey!262 (toList!1781 lt!118311) (select (arr!5500 (_keys!6407 thiss!1504)) #b00000000000000000000000000000000))))))

(assert (= (and d!58971 c!38956) b!234015))

(assert (= (and d!58971 (not c!38956)) b!234016))

(assert (= (and d!58971 (not res!114821)) b!234017))

(assert (=> d!58971 m!255123))

(declare-fun m!255405 () Bool)

(assert (=> d!58971 m!255405))

(assert (=> b!234015 m!255123))

(declare-fun m!255407 () Bool)

(assert (=> b!234015 m!255407))

(assert (=> b!234015 m!255123))

(assert (=> b!234015 m!255255))

(assert (=> b!234015 m!255255))

(declare-fun m!255409 () Bool)

(assert (=> b!234015 m!255409))

(assert (=> b!234017 m!255123))

(assert (=> b!234017 m!255255))

(assert (=> b!234017 m!255255))

(assert (=> b!234017 m!255409))

(assert (=> b!233788 d!58971))

(declare-fun b!234019 () Bool)

(declare-fun e!152008 () Bool)

(assert (=> b!234019 (= e!152008 tp_is_empty!6159)))

(declare-fun mapIsEmpty!10422 () Bool)

(declare-fun mapRes!10422 () Bool)

(assert (=> mapIsEmpty!10422 mapRes!10422))

(declare-fun condMapEmpty!10422 () Bool)

(declare-fun mapDefault!10422 () ValueCell!2736)

(assert (=> mapNonEmpty!10421 (= condMapEmpty!10422 (= mapRest!10421 ((as const (Array (_ BitVec 32) ValueCell!2736)) mapDefault!10422)))))

(assert (=> mapNonEmpty!10421 (= tp!22049 (and e!152008 mapRes!10422))))

(declare-fun b!234018 () Bool)

(declare-fun e!152009 () Bool)

(assert (=> b!234018 (= e!152009 tp_is_empty!6159)))

(declare-fun mapNonEmpty!10422 () Bool)

(declare-fun tp!22050 () Bool)

(assert (=> mapNonEmpty!10422 (= mapRes!10422 (and tp!22050 e!152009))))

(declare-fun mapValue!10422 () ValueCell!2736)

(declare-fun mapRest!10422 () (Array (_ BitVec 32) ValueCell!2736))

(declare-fun mapKey!10422 () (_ BitVec 32))

(assert (=> mapNonEmpty!10422 (= mapRest!10421 (store mapRest!10422 mapKey!10422 mapValue!10422))))

(assert (= (and mapNonEmpty!10421 condMapEmpty!10422) mapIsEmpty!10422))

(assert (= (and mapNonEmpty!10421 (not condMapEmpty!10422)) mapNonEmpty!10422))

(assert (= (and mapNonEmpty!10422 ((_ is ValueCellFull!2736) mapValue!10422)) b!234018))

(assert (= (and mapNonEmpty!10421 ((_ is ValueCellFull!2736) mapDefault!10422)) b!234019))

(declare-fun m!255411 () Bool)

(assert (=> mapNonEmpty!10422 m!255411))

(declare-fun b_lambda!7897 () Bool)

(assert (= b_lambda!7893 (or (and b!233682 b_free!6297) b_lambda!7897)))

(declare-fun b_lambda!7899 () Bool)

(assert (= b_lambda!7895 (or (and b!233682 b_free!6297) b_lambda!7899)))

(check-sat (not b!233988) (not b!233882) (not b!233866) (not d!58953) b_and!13229 (not d!58931) (not b!233940) (not b!234010) (not d!58945) (not d!58971) (not d!58919) (not b!233867) (not b!233832) (not b!233853) (not b!233838) (not b!233922) (not bm!21757) (not b!233948) (not b!233985) (not bm!21754) (not b!233989) (not b!233898) (not b!233991) (not b!233829) (not d!58969) (not b!233997) (not b!233887) (not d!58905) (not b_lambda!7899) (not b!233849) (not d!58917) (not d!58899) (not b!233837) (not d!58963) (not d!58955) (not b!233878) (not d!58937) (not d!58965) (not b!233862) (not d!58935) (not b!233830) (not b!233949) (not d!58949) (not d!58943) (not d!58909) (not d!58903) (not b!234015) (not d!58951) (not b!233992) (not b!233950) (not d!58939) (not b!233994) (not b_lambda!7891) (not d!58925) (not b!234017) tp_is_empty!6159 (not b!233984) (not d!58923) (not b!233981) (not b!233947) (not b!234014) (not b_lambda!7897) (not b!233999) (not d!58913) (not b!233980) (not d!58933) (not b!233899) (not d!58941) (not b_next!6297) (not d!58947) (not bm!21751) (not b!233880) (not mapNonEmpty!10422) (not bm!21760) (not b!233879) (not d!58957) (not d!58959) (not b!233983) (not d!58961) (not b!233888) (not b!233850) (not b!233993) (not b!233979))
(check-sat b_and!13229 (not b_next!6297))
