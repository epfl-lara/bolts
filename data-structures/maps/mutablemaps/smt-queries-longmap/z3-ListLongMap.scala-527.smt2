; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13166 () Bool)

(assert start!13166)

(declare-fun b!115801 () Bool)

(declare-fun b_free!2717 () Bool)

(declare-fun b_next!2717 () Bool)

(assert (=> b!115801 (= b_free!2717 (not b_next!2717))))

(declare-fun tp!10514 () Bool)

(declare-fun b_and!7209 () Bool)

(assert (=> b!115801 (= tp!10514 b_and!7209)))

(declare-fun b!115805 () Bool)

(declare-fun b_free!2719 () Bool)

(declare-fun b_next!2719 () Bool)

(assert (=> b!115805 (= b_free!2719 (not b_next!2719))))

(declare-fun tp!10513 () Bool)

(declare-fun b_and!7211 () Bool)

(assert (=> b!115805 (= tp!10513 b_and!7211)))

(declare-fun mapIsEmpty!4257 () Bool)

(declare-fun mapRes!4258 () Bool)

(assert (=> mapIsEmpty!4257 mapRes!4258))

(declare-fun b!115792 () Bool)

(declare-fun e!75576 () Bool)

(declare-fun e!75575 () Bool)

(assert (=> b!115792 (= e!75576 e!75575)))

(declare-fun b!115793 () Bool)

(declare-fun res!56768 () Bool)

(declare-fun e!75570 () Bool)

(assert (=> b!115793 (=> (not res!56768) (not e!75570))))

(declare-datatypes ((V!3347 0))(
  ( (V!3348 (val!1432 Int)) )
))
(declare-datatypes ((array!4552 0))(
  ( (array!4553 (arr!2158 (Array (_ BitVec 32) (_ BitVec 64))) (size!2418 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1044 0))(
  ( (ValueCellFull!1044 (v!3029 V!3347)) (EmptyCell!1044) )
))
(declare-datatypes ((array!4554 0))(
  ( (array!4555 (arr!2159 (Array (_ BitVec 32) ValueCell!1044)) (size!2419 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!996 0))(
  ( (LongMapFixedSize!997 (defaultEntry!2707 Int) (mask!6917 (_ BitVec 32)) (extraKeys!2496 (_ BitVec 32)) (zeroValue!2574 V!3347) (minValue!2574 V!3347) (_size!547 (_ BitVec 32)) (_keys!4429 array!4552) (_values!2690 array!4554) (_vacant!547 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!996)

(declare-fun valid!464 (LongMapFixedSize!996) Bool)

(assert (=> b!115793 (= res!56768 (valid!464 newMap!16))))

(declare-fun res!56769 () Bool)

(assert (=> start!13166 (=> (not res!56769) (not e!75570))))

(declare-datatypes ((Cell!790 0))(
  ( (Cell!791 (v!3030 LongMapFixedSize!996)) )
))
(declare-datatypes ((LongMap!790 0))(
  ( (LongMap!791 (underlying!406 Cell!790)) )
))
(declare-fun thiss!992 () LongMap!790)

(declare-fun valid!465 (LongMap!790) Bool)

(assert (=> start!13166 (= res!56769 (valid!465 thiss!992))))

(assert (=> start!13166 e!75570))

(assert (=> start!13166 e!75576))

(assert (=> start!13166 true))

(declare-fun e!75574 () Bool)

(assert (=> start!13166 e!75574))

(declare-datatypes ((tuple2!2504 0))(
  ( (tuple2!2505 (_1!1262 (_ BitVec 64)) (_2!1262 V!3347)) )
))
(declare-datatypes ((List!1691 0))(
  ( (Nil!1688) (Cons!1687 (h!2287 tuple2!2504) (t!5957 List!1691)) )
))
(declare-datatypes ((ListLongMap!1643 0))(
  ( (ListLongMap!1644 (toList!837 List!1691)) )
))
(declare-fun lt!60110 () ListLongMap!1643)

(declare-fun e!75573 () Bool)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun b!115794 () Bool)

(declare-fun getCurrentListMap!510 (array!4552 array!4554 (_ BitVec 32) (_ BitVec 32) V!3347 V!3347 (_ BitVec 32) Int) ListLongMap!1643)

(assert (=> b!115794 (= e!75573 (not (= (getCurrentListMap!510 (_keys!4429 (v!3030 (underlying!406 thiss!992))) (_values!2690 (v!3030 (underlying!406 thiss!992))) (mask!6917 (v!3030 (underlying!406 thiss!992))) (extraKeys!2496 (v!3030 (underlying!406 thiss!992))) (zeroValue!2574 (v!3030 (underlying!406 thiss!992))) (minValue!2574 (v!3030 (underlying!406 thiss!992))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)) (defaultEntry!2707 (v!3030 (underlying!406 thiss!992)))) lt!60110)))))

(declare-fun b!115795 () Bool)

(declare-fun res!56766 () Bool)

(assert (=> b!115795 (=> (not res!56766) (not e!75570))))

(assert (=> b!115795 (= res!56766 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2418 (_keys!4429 (v!3030 (underlying!406 thiss!992)))))))))

(declare-fun b!115796 () Bool)

(declare-fun e!75572 () Bool)

(declare-fun tp_is_empty!2775 () Bool)

(assert (=> b!115796 (= e!75572 tp_is_empty!2775)))

(declare-fun b!115797 () Bool)

(declare-fun e!75578 () Bool)

(declare-fun e!75567 () Bool)

(assert (=> b!115797 (= e!75578 (and e!75567 mapRes!4258))))

(declare-fun condMapEmpty!4257 () Bool)

(declare-fun mapDefault!4258 () ValueCell!1044)

(assert (=> b!115797 (= condMapEmpty!4257 (= (arr!2159 (_values!2690 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1044)) mapDefault!4258)))))

(declare-fun b!115798 () Bool)

(declare-fun e!75571 () Bool)

(assert (=> b!115798 (= e!75575 e!75571)))

(declare-fun mapNonEmpty!4257 () Bool)

(declare-fun mapRes!4257 () Bool)

(declare-fun tp!10515 () Bool)

(assert (=> mapNonEmpty!4257 (= mapRes!4257 (and tp!10515 e!75572))))

(declare-fun mapValue!4257 () ValueCell!1044)

(declare-fun mapKey!4257 () (_ BitVec 32))

(declare-fun mapRest!4257 () (Array (_ BitVec 32) ValueCell!1044))

(assert (=> mapNonEmpty!4257 (= (arr!2159 (_values!2690 (v!3030 (underlying!406 thiss!992)))) (store mapRest!4257 mapKey!4257 mapValue!4257))))

(declare-fun b!115799 () Bool)

(declare-fun e!75579 () Bool)

(assert (=> b!115799 (= e!75579 tp_is_empty!2775)))

(declare-fun b!115800 () Bool)

(assert (=> b!115800 (= e!75570 e!75573)))

(declare-fun res!56770 () Bool)

(assert (=> b!115800 (=> (not res!56770) (not e!75573))))

(declare-fun lt!60111 () ListLongMap!1643)

(assert (=> b!115800 (= res!56770 (and (= lt!60111 lt!60110) (or (= (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsgt from!355 #b00000000000000000000000000000000) (bvslt (bvsub from!355 #b00000000000000000000000000000001) (size!2418 (_keys!4429 (v!3030 (underlying!406 thiss!992)))))))))

(declare-fun map!1341 (LongMapFixedSize!996) ListLongMap!1643)

(assert (=> b!115800 (= lt!60110 (map!1341 newMap!16))))

(assert (=> b!115800 (= lt!60111 (getCurrentListMap!510 (_keys!4429 (v!3030 (underlying!406 thiss!992))) (_values!2690 (v!3030 (underlying!406 thiss!992))) (mask!6917 (v!3030 (underlying!406 thiss!992))) (extraKeys!2496 (v!3030 (underlying!406 thiss!992))) (zeroValue!2574 (v!3030 (underlying!406 thiss!992))) (minValue!2574 (v!3030 (underlying!406 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2707 (v!3030 (underlying!406 thiss!992)))))))

(declare-fun e!75568 () Bool)

(declare-fun array_inv!1305 (array!4552) Bool)

(declare-fun array_inv!1306 (array!4554) Bool)

(assert (=> b!115801 (= e!75571 (and tp!10514 tp_is_empty!2775 (array_inv!1305 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (array_inv!1306 (_values!2690 (v!3030 (underlying!406 thiss!992)))) e!75568))))

(declare-fun b!115802 () Bool)

(assert (=> b!115802 (= e!75567 tp_is_empty!2775)))

(declare-fun mapIsEmpty!4258 () Bool)

(assert (=> mapIsEmpty!4258 mapRes!4257))

(declare-fun b!115803 () Bool)

(declare-fun e!75569 () Bool)

(assert (=> b!115803 (= e!75569 tp_is_empty!2775)))

(declare-fun b!115804 () Bool)

(assert (=> b!115804 (= e!75568 (and e!75579 mapRes!4257))))

(declare-fun condMapEmpty!4258 () Bool)

(declare-fun mapDefault!4257 () ValueCell!1044)

(assert (=> b!115804 (= condMapEmpty!4258 (= (arr!2159 (_values!2690 (v!3030 (underlying!406 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1044)) mapDefault!4257)))))

(assert (=> b!115805 (= e!75574 (and tp!10513 tp_is_empty!2775 (array_inv!1305 (_keys!4429 newMap!16)) (array_inv!1306 (_values!2690 newMap!16)) e!75578))))

(declare-fun b!115806 () Bool)

(declare-fun res!56767 () Bool)

(assert (=> b!115806 (=> (not res!56767) (not e!75570))))

(assert (=> b!115806 (= res!56767 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6917 newMap!16)) (_size!547 (v!3030 (underlying!406 thiss!992)))))))

(declare-fun mapNonEmpty!4258 () Bool)

(declare-fun tp!10516 () Bool)

(assert (=> mapNonEmpty!4258 (= mapRes!4258 (and tp!10516 e!75569))))

(declare-fun mapKey!4258 () (_ BitVec 32))

(declare-fun mapRest!4258 () (Array (_ BitVec 32) ValueCell!1044))

(declare-fun mapValue!4258 () ValueCell!1044)

(assert (=> mapNonEmpty!4258 (= (arr!2159 (_values!2690 newMap!16)) (store mapRest!4258 mapKey!4258 mapValue!4258))))

(assert (= (and start!13166 res!56769) b!115795))

(assert (= (and b!115795 res!56766) b!115793))

(assert (= (and b!115793 res!56768) b!115806))

(assert (= (and b!115806 res!56767) b!115800))

(assert (= (and b!115800 res!56770) b!115794))

(assert (= (and b!115804 condMapEmpty!4258) mapIsEmpty!4258))

(assert (= (and b!115804 (not condMapEmpty!4258)) mapNonEmpty!4257))

(get-info :version)

(assert (= (and mapNonEmpty!4257 ((_ is ValueCellFull!1044) mapValue!4257)) b!115796))

(assert (= (and b!115804 ((_ is ValueCellFull!1044) mapDefault!4257)) b!115799))

(assert (= b!115801 b!115804))

(assert (= b!115798 b!115801))

(assert (= b!115792 b!115798))

(assert (= start!13166 b!115792))

(assert (= (and b!115797 condMapEmpty!4257) mapIsEmpty!4257))

(assert (= (and b!115797 (not condMapEmpty!4257)) mapNonEmpty!4258))

(assert (= (and mapNonEmpty!4258 ((_ is ValueCellFull!1044) mapValue!4258)) b!115803))

(assert (= (and b!115797 ((_ is ValueCellFull!1044) mapDefault!4258)) b!115802))

(assert (= b!115805 b!115797))

(assert (= start!13166 b!115805))

(declare-fun m!131925 () Bool)

(assert (=> b!115801 m!131925))

(declare-fun m!131927 () Bool)

(assert (=> b!115801 m!131927))

(declare-fun m!131929 () Bool)

(assert (=> b!115805 m!131929))

(declare-fun m!131931 () Bool)

(assert (=> b!115805 m!131931))

(declare-fun m!131933 () Bool)

(assert (=> b!115793 m!131933))

(declare-fun m!131935 () Bool)

(assert (=> mapNonEmpty!4257 m!131935))

(declare-fun m!131937 () Bool)

(assert (=> b!115794 m!131937))

(declare-fun m!131939 () Bool)

(assert (=> b!115800 m!131939))

(declare-fun m!131941 () Bool)

(assert (=> b!115800 m!131941))

(declare-fun m!131943 () Bool)

(assert (=> b!115800 m!131943))

(declare-fun m!131945 () Bool)

(assert (=> mapNonEmpty!4258 m!131945))

(declare-fun m!131947 () Bool)

(assert (=> start!13166 m!131947))

(check-sat b_and!7211 (not b_next!2719) (not mapNonEmpty!4258) b_and!7209 (not b!115805) (not b!115800) (not start!13166) (not mapNonEmpty!4257) tp_is_empty!2775 (not b!115793) (not b_next!2717) (not b!115794) (not b!115801))
(check-sat b_and!7209 b_and!7211 (not b_next!2717) (not b_next!2719))
(get-model)

(declare-fun d!32497 () Bool)

(assert (=> d!32497 (= (map!1341 newMap!16) (getCurrentListMap!510 (_keys!4429 newMap!16) (_values!2690 newMap!16) (mask!6917 newMap!16) (extraKeys!2496 newMap!16) (zeroValue!2574 newMap!16) (minValue!2574 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2707 newMap!16)))))

(declare-fun bs!4708 () Bool)

(assert (= bs!4708 d!32497))

(declare-fun m!131973 () Bool)

(assert (=> bs!4708 m!131973))

(assert (=> b!115800 d!32497))

(declare-fun bm!12405 () Bool)

(declare-fun call!12412 () ListLongMap!1643)

(declare-fun call!12411 () ListLongMap!1643)

(assert (=> bm!12405 (= call!12412 call!12411)))

(declare-fun b!115894 () Bool)

(declare-fun e!75652 () ListLongMap!1643)

(declare-fun e!75655 () ListLongMap!1643)

(assert (=> b!115894 (= e!75652 e!75655)))

(declare-fun c!20587 () Bool)

(assert (=> b!115894 (= c!20587 (and (not (= (bvand (extraKeys!2496 (v!3030 (underlying!406 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2496 (v!3030 (underlying!406 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!12406 () Bool)

(declare-fun call!12409 () Bool)

(declare-fun lt!60171 () ListLongMap!1643)

(declare-fun contains!859 (ListLongMap!1643 (_ BitVec 64)) Bool)

(assert (=> bm!12406 (= call!12409 (contains!859 lt!60171 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!115895 () Bool)

(declare-datatypes ((Unit!3613 0))(
  ( (Unit!3614) )
))
(declare-fun e!75657 () Unit!3613)

(declare-fun lt!60168 () Unit!3613)

(assert (=> b!115895 (= e!75657 lt!60168)))

(declare-fun lt!60177 () ListLongMap!1643)

(declare-fun getCurrentListMapNoExtraKeys!125 (array!4552 array!4554 (_ BitVec 32) (_ BitVec 32) V!3347 V!3347 (_ BitVec 32) Int) ListLongMap!1643)

(assert (=> b!115895 (= lt!60177 (getCurrentListMapNoExtraKeys!125 (_keys!4429 (v!3030 (underlying!406 thiss!992))) (_values!2690 (v!3030 (underlying!406 thiss!992))) (mask!6917 (v!3030 (underlying!406 thiss!992))) (extraKeys!2496 (v!3030 (underlying!406 thiss!992))) (zeroValue!2574 (v!3030 (underlying!406 thiss!992))) (minValue!2574 (v!3030 (underlying!406 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2707 (v!3030 (underlying!406 thiss!992)))))))

(declare-fun lt!60167 () (_ BitVec 64))

(assert (=> b!115895 (= lt!60167 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!60174 () (_ BitVec 64))

(assert (=> b!115895 (= lt!60174 (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!60162 () Unit!3613)

(declare-fun addStillContains!80 (ListLongMap!1643 (_ BitVec 64) V!3347 (_ BitVec 64)) Unit!3613)

(assert (=> b!115895 (= lt!60162 (addStillContains!80 lt!60177 lt!60167 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))) lt!60174))))

(declare-fun +!158 (ListLongMap!1643 tuple2!2504) ListLongMap!1643)

(assert (=> b!115895 (contains!859 (+!158 lt!60177 (tuple2!2505 lt!60167 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))))) lt!60174)))

(declare-fun lt!60180 () Unit!3613)

(assert (=> b!115895 (= lt!60180 lt!60162)))

(declare-fun lt!60164 () ListLongMap!1643)

(assert (=> b!115895 (= lt!60164 (getCurrentListMapNoExtraKeys!125 (_keys!4429 (v!3030 (underlying!406 thiss!992))) (_values!2690 (v!3030 (underlying!406 thiss!992))) (mask!6917 (v!3030 (underlying!406 thiss!992))) (extraKeys!2496 (v!3030 (underlying!406 thiss!992))) (zeroValue!2574 (v!3030 (underlying!406 thiss!992))) (minValue!2574 (v!3030 (underlying!406 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2707 (v!3030 (underlying!406 thiss!992)))))))

(declare-fun lt!60181 () (_ BitVec 64))

(assert (=> b!115895 (= lt!60181 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!60183 () (_ BitVec 64))

(assert (=> b!115895 (= lt!60183 (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!60176 () Unit!3613)

(declare-fun addApplyDifferent!80 (ListLongMap!1643 (_ BitVec 64) V!3347 (_ BitVec 64)) Unit!3613)

(assert (=> b!115895 (= lt!60176 (addApplyDifferent!80 lt!60164 lt!60181 (minValue!2574 (v!3030 (underlying!406 thiss!992))) lt!60183))))

(declare-fun apply!104 (ListLongMap!1643 (_ BitVec 64)) V!3347)

(assert (=> b!115895 (= (apply!104 (+!158 lt!60164 (tuple2!2505 lt!60181 (minValue!2574 (v!3030 (underlying!406 thiss!992))))) lt!60183) (apply!104 lt!60164 lt!60183))))

(declare-fun lt!60166 () Unit!3613)

(assert (=> b!115895 (= lt!60166 lt!60176)))

(declare-fun lt!60163 () ListLongMap!1643)

(assert (=> b!115895 (= lt!60163 (getCurrentListMapNoExtraKeys!125 (_keys!4429 (v!3030 (underlying!406 thiss!992))) (_values!2690 (v!3030 (underlying!406 thiss!992))) (mask!6917 (v!3030 (underlying!406 thiss!992))) (extraKeys!2496 (v!3030 (underlying!406 thiss!992))) (zeroValue!2574 (v!3030 (underlying!406 thiss!992))) (minValue!2574 (v!3030 (underlying!406 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2707 (v!3030 (underlying!406 thiss!992)))))))

(declare-fun lt!60178 () (_ BitVec 64))

(assert (=> b!115895 (= lt!60178 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!60173 () (_ BitVec 64))

(assert (=> b!115895 (= lt!60173 (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!60165 () Unit!3613)

(assert (=> b!115895 (= lt!60165 (addApplyDifferent!80 lt!60163 lt!60178 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))) lt!60173))))

(assert (=> b!115895 (= (apply!104 (+!158 lt!60163 (tuple2!2505 lt!60178 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))))) lt!60173) (apply!104 lt!60163 lt!60173))))

(declare-fun lt!60169 () Unit!3613)

(assert (=> b!115895 (= lt!60169 lt!60165)))

(declare-fun lt!60179 () ListLongMap!1643)

(assert (=> b!115895 (= lt!60179 (getCurrentListMapNoExtraKeys!125 (_keys!4429 (v!3030 (underlying!406 thiss!992))) (_values!2690 (v!3030 (underlying!406 thiss!992))) (mask!6917 (v!3030 (underlying!406 thiss!992))) (extraKeys!2496 (v!3030 (underlying!406 thiss!992))) (zeroValue!2574 (v!3030 (underlying!406 thiss!992))) (minValue!2574 (v!3030 (underlying!406 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2707 (v!3030 (underlying!406 thiss!992)))))))

(declare-fun lt!60170 () (_ BitVec 64))

(assert (=> b!115895 (= lt!60170 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!60175 () (_ BitVec 64))

(assert (=> b!115895 (= lt!60175 (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!115895 (= lt!60168 (addApplyDifferent!80 lt!60179 lt!60170 (minValue!2574 (v!3030 (underlying!406 thiss!992))) lt!60175))))

(assert (=> b!115895 (= (apply!104 (+!158 lt!60179 (tuple2!2505 lt!60170 (minValue!2574 (v!3030 (underlying!406 thiss!992))))) lt!60175) (apply!104 lt!60179 lt!60175))))

(declare-fun b!115896 () Bool)

(declare-fun e!75654 () Bool)

(declare-fun e!75649 () Bool)

(assert (=> b!115896 (= e!75654 e!75649)))

(declare-fun res!56812 () Bool)

(assert (=> b!115896 (=> (not res!56812) (not e!75649))))

(assert (=> b!115896 (= res!56812 (contains!859 lt!60171 (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!115896 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2418 (_keys!4429 (v!3030 (underlying!406 thiss!992))))))))

(declare-fun b!115897 () Bool)

(declare-fun Unit!3615 () Unit!3613)

(assert (=> b!115897 (= e!75657 Unit!3615)))

(declare-fun b!115898 () Bool)

(declare-fun e!75659 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!115898 (= e!75659 (validKeyInArray!0 (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!115899 () Bool)

(declare-fun res!56810 () Bool)

(declare-fun e!75661 () Bool)

(assert (=> b!115899 (=> (not res!56810) (not e!75661))))

(assert (=> b!115899 (= res!56810 e!75654)))

(declare-fun res!56807 () Bool)

(assert (=> b!115899 (=> res!56807 e!75654)))

(assert (=> b!115899 (= res!56807 (not e!75659))))

(declare-fun res!56804 () Bool)

(assert (=> b!115899 (=> (not res!56804) (not e!75659))))

(assert (=> b!115899 (= res!56804 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2418 (_keys!4429 (v!3030 (underlying!406 thiss!992))))))))

(declare-fun b!115901 () Bool)

(declare-fun e!75660 () Bool)

(assert (=> b!115901 (= e!75661 e!75660)))

(declare-fun c!20584 () Bool)

(assert (=> b!115901 (= c!20584 (not (= (bvand (extraKeys!2496 (v!3030 (underlying!406 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!12407 () Bool)

(declare-fun call!12408 () ListLongMap!1643)

(declare-fun call!12410 () ListLongMap!1643)

(assert (=> bm!12407 (= call!12408 call!12410)))

(declare-fun b!115902 () Bool)

(declare-fun get!1407 (ValueCell!1044 V!3347) V!3347)

(declare-fun dynLambda!407 (Int (_ BitVec 64)) V!3347)

(assert (=> b!115902 (= e!75649 (= (apply!104 lt!60171 (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1407 (select (arr!2159 (_values!2690 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!407 (defaultEntry!2707 (v!3030 (underlying!406 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!115902 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2419 (_values!2690 (v!3030 (underlying!406 thiss!992))))))))

(assert (=> b!115902 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2418 (_keys!4429 (v!3030 (underlying!406 thiss!992))))))))

(declare-fun b!115903 () Bool)

(declare-fun e!75658 () ListLongMap!1643)

(assert (=> b!115903 (= e!75658 call!12408)))

(declare-fun b!115904 () Bool)

(declare-fun e!75650 () Bool)

(declare-fun e!75656 () Bool)

(assert (=> b!115904 (= e!75650 e!75656)))

(declare-fun res!56806 () Bool)

(declare-fun call!12413 () Bool)

(assert (=> b!115904 (= res!56806 call!12413)))

(assert (=> b!115904 (=> (not res!56806) (not e!75656))))

(declare-fun c!20585 () Bool)

(declare-fun bm!12408 () Bool)

(declare-fun call!12414 () ListLongMap!1643)

(assert (=> bm!12408 (= call!12410 (+!158 (ite c!20585 call!12414 (ite c!20587 call!12411 call!12412)) (ite (or c!20585 c!20587) (tuple2!2505 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))) (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(declare-fun bm!12409 () Bool)

(assert (=> bm!12409 (= call!12411 call!12414)))

(declare-fun b!115905 () Bool)

(assert (=> b!115905 (= e!75658 call!12412)))

(declare-fun b!115906 () Bool)

(assert (=> b!115906 (= e!75656 (= (apply!104 lt!60171 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))))))

(declare-fun b!115907 () Bool)

(declare-fun res!56805 () Bool)

(assert (=> b!115907 (=> (not res!56805) (not e!75661))))

(assert (=> b!115907 (= res!56805 e!75650)))

(declare-fun c!20583 () Bool)

(assert (=> b!115907 (= c!20583 (not (= (bvand (extraKeys!2496 (v!3030 (underlying!406 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!115908 () Bool)

(declare-fun e!75651 () Bool)

(assert (=> b!115908 (= e!75651 (validKeyInArray!0 (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!115909 () Bool)

(declare-fun c!20586 () Bool)

(assert (=> b!115909 (= c!20586 (and (not (= (bvand (extraKeys!2496 (v!3030 (underlying!406 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2496 (v!3030 (underlying!406 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!115909 (= e!75655 e!75658)))

(declare-fun b!115910 () Bool)

(assert (=> b!115910 (= e!75655 call!12408)))

(declare-fun bm!12410 () Bool)

(assert (=> bm!12410 (= call!12414 (getCurrentListMapNoExtraKeys!125 (_keys!4429 (v!3030 (underlying!406 thiss!992))) (_values!2690 (v!3030 (underlying!406 thiss!992))) (mask!6917 (v!3030 (underlying!406 thiss!992))) (extraKeys!2496 (v!3030 (underlying!406 thiss!992))) (zeroValue!2574 (v!3030 (underlying!406 thiss!992))) (minValue!2574 (v!3030 (underlying!406 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2707 (v!3030 (underlying!406 thiss!992)))))))

(declare-fun bm!12411 () Bool)

(assert (=> bm!12411 (= call!12413 (contains!859 lt!60171 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!115911 () Bool)

(declare-fun e!75653 () Bool)

(assert (=> b!115911 (= e!75660 e!75653)))

(declare-fun res!56809 () Bool)

(assert (=> b!115911 (= res!56809 call!12409)))

(assert (=> b!115911 (=> (not res!56809) (not e!75653))))

(declare-fun b!115900 () Bool)

(assert (=> b!115900 (= e!75653 (= (apply!104 lt!60171 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2574 (v!3030 (underlying!406 thiss!992)))))))

(declare-fun d!32499 () Bool)

(assert (=> d!32499 e!75661))

(declare-fun res!56808 () Bool)

(assert (=> d!32499 (=> (not res!56808) (not e!75661))))

(assert (=> d!32499 (= res!56808 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2418 (_keys!4429 (v!3030 (underlying!406 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2418 (_keys!4429 (v!3030 (underlying!406 thiss!992))))))))))

(declare-fun lt!60182 () ListLongMap!1643)

(assert (=> d!32499 (= lt!60171 lt!60182)))

(declare-fun lt!60172 () Unit!3613)

(assert (=> d!32499 (= lt!60172 e!75657)))

(declare-fun c!20582 () Bool)

(assert (=> d!32499 (= c!20582 e!75651)))

(declare-fun res!56811 () Bool)

(assert (=> d!32499 (=> (not res!56811) (not e!75651))))

(assert (=> d!32499 (= res!56811 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2418 (_keys!4429 (v!3030 (underlying!406 thiss!992))))))))

(assert (=> d!32499 (= lt!60182 e!75652)))

(assert (=> d!32499 (= c!20585 (and (not (= (bvand (extraKeys!2496 (v!3030 (underlying!406 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2496 (v!3030 (underlying!406 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!32499 (validMask!0 (mask!6917 (v!3030 (underlying!406 thiss!992))))))

(assert (=> d!32499 (= (getCurrentListMap!510 (_keys!4429 (v!3030 (underlying!406 thiss!992))) (_values!2690 (v!3030 (underlying!406 thiss!992))) (mask!6917 (v!3030 (underlying!406 thiss!992))) (extraKeys!2496 (v!3030 (underlying!406 thiss!992))) (zeroValue!2574 (v!3030 (underlying!406 thiss!992))) (minValue!2574 (v!3030 (underlying!406 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2707 (v!3030 (underlying!406 thiss!992)))) lt!60171)))

(declare-fun b!115912 () Bool)

(assert (=> b!115912 (= e!75652 (+!158 call!12410 (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992))))))))

(declare-fun b!115913 () Bool)

(assert (=> b!115913 (= e!75650 (not call!12413))))

(declare-fun b!115914 () Bool)

(assert (=> b!115914 (= e!75660 (not call!12409))))

(assert (= (and d!32499 c!20585) b!115912))

(assert (= (and d!32499 (not c!20585)) b!115894))

(assert (= (and b!115894 c!20587) b!115910))

(assert (= (and b!115894 (not c!20587)) b!115909))

(assert (= (and b!115909 c!20586) b!115903))

(assert (= (and b!115909 (not c!20586)) b!115905))

(assert (= (or b!115903 b!115905) bm!12405))

(assert (= (or b!115910 bm!12405) bm!12409))

(assert (= (or b!115910 b!115903) bm!12407))

(assert (= (or b!115912 bm!12409) bm!12410))

(assert (= (or b!115912 bm!12407) bm!12408))

(assert (= (and d!32499 res!56811) b!115908))

(assert (= (and d!32499 c!20582) b!115895))

(assert (= (and d!32499 (not c!20582)) b!115897))

(assert (= (and d!32499 res!56808) b!115899))

(assert (= (and b!115899 res!56804) b!115898))

(assert (= (and b!115899 (not res!56807)) b!115896))

(assert (= (and b!115896 res!56812) b!115902))

(assert (= (and b!115899 res!56810) b!115907))

(assert (= (and b!115907 c!20583) b!115904))

(assert (= (and b!115907 (not c!20583)) b!115913))

(assert (= (and b!115904 res!56806) b!115906))

(assert (= (or b!115904 b!115913) bm!12411))

(assert (= (and b!115907 res!56805) b!115901))

(assert (= (and b!115901 c!20584) b!115911))

(assert (= (and b!115901 (not c!20584)) b!115914))

(assert (= (and b!115911 res!56809) b!115900))

(assert (= (or b!115911 b!115914) bm!12406))

(declare-fun b_lambda!5173 () Bool)

(assert (=> (not b_lambda!5173) (not b!115902)))

(declare-fun t!5960 () Bool)

(declare-fun tb!2233 () Bool)

(assert (=> (and b!115801 (= (defaultEntry!2707 (v!3030 (underlying!406 thiss!992))) (defaultEntry!2707 (v!3030 (underlying!406 thiss!992)))) t!5960) tb!2233))

(declare-fun result!3715 () Bool)

(assert (=> tb!2233 (= result!3715 tp_is_empty!2775)))

(assert (=> b!115902 t!5960))

(declare-fun b_and!7217 () Bool)

(assert (= b_and!7209 (and (=> t!5960 result!3715) b_and!7217)))

(declare-fun t!5962 () Bool)

(declare-fun tb!2235 () Bool)

(assert (=> (and b!115805 (= (defaultEntry!2707 newMap!16) (defaultEntry!2707 (v!3030 (underlying!406 thiss!992)))) t!5962) tb!2235))

(declare-fun result!3719 () Bool)

(assert (= result!3719 result!3715))

(assert (=> b!115902 t!5962))

(declare-fun b_and!7219 () Bool)

(assert (= b_and!7211 (and (=> t!5962 result!3719) b_and!7219)))

(declare-fun m!131975 () Bool)

(assert (=> d!32499 m!131975))

(declare-fun m!131977 () Bool)

(assert (=> b!115900 m!131977))

(declare-fun m!131979 () Bool)

(assert (=> b!115896 m!131979))

(assert (=> b!115896 m!131979))

(declare-fun m!131981 () Bool)

(assert (=> b!115896 m!131981))

(declare-fun m!131983 () Bool)

(assert (=> b!115912 m!131983))

(assert (=> b!115898 m!131979))

(assert (=> b!115898 m!131979))

(declare-fun m!131985 () Bool)

(assert (=> b!115898 m!131985))

(declare-fun m!131987 () Bool)

(assert (=> bm!12406 m!131987))

(declare-fun m!131989 () Bool)

(assert (=> bm!12411 m!131989))

(declare-fun m!131991 () Bool)

(assert (=> bm!12410 m!131991))

(assert (=> b!115908 m!131979))

(assert (=> b!115908 m!131979))

(assert (=> b!115908 m!131985))

(assert (=> b!115902 m!131979))

(declare-fun m!131993 () Bool)

(assert (=> b!115902 m!131993))

(assert (=> b!115902 m!131993))

(declare-fun m!131995 () Bool)

(assert (=> b!115902 m!131995))

(declare-fun m!131997 () Bool)

(assert (=> b!115902 m!131997))

(assert (=> b!115902 m!131979))

(declare-fun m!131999 () Bool)

(assert (=> b!115902 m!131999))

(assert (=> b!115902 m!131995))

(declare-fun m!132001 () Bool)

(assert (=> bm!12408 m!132001))

(declare-fun m!132003 () Bool)

(assert (=> b!115895 m!132003))

(declare-fun m!132005 () Bool)

(assert (=> b!115895 m!132005))

(assert (=> b!115895 m!131991))

(declare-fun m!132007 () Bool)

(assert (=> b!115895 m!132007))

(assert (=> b!115895 m!132003))

(declare-fun m!132009 () Bool)

(assert (=> b!115895 m!132009))

(declare-fun m!132011 () Bool)

(assert (=> b!115895 m!132011))

(declare-fun m!132013 () Bool)

(assert (=> b!115895 m!132013))

(declare-fun m!132015 () Bool)

(assert (=> b!115895 m!132015))

(assert (=> b!115895 m!131979))

(declare-fun m!132017 () Bool)

(assert (=> b!115895 m!132017))

(declare-fun m!132019 () Bool)

(assert (=> b!115895 m!132019))

(assert (=> b!115895 m!132019))

(declare-fun m!132021 () Bool)

(assert (=> b!115895 m!132021))

(declare-fun m!132023 () Bool)

(assert (=> b!115895 m!132023))

(declare-fun m!132025 () Bool)

(assert (=> b!115895 m!132025))

(declare-fun m!132027 () Bool)

(assert (=> b!115895 m!132027))

(assert (=> b!115895 m!132025))

(declare-fun m!132029 () Bool)

(assert (=> b!115895 m!132029))

(assert (=> b!115895 m!132011))

(declare-fun m!132031 () Bool)

(assert (=> b!115895 m!132031))

(declare-fun m!132033 () Bool)

(assert (=> b!115906 m!132033))

(assert (=> b!115800 d!32499))

(declare-fun d!32501 () Bool)

(assert (=> d!32501 (= (valid!465 thiss!992) (valid!464 (v!3030 (underlying!406 thiss!992))))))

(declare-fun bs!4709 () Bool)

(assert (= bs!4709 d!32501))

(declare-fun m!132035 () Bool)

(assert (=> bs!4709 m!132035))

(assert (=> start!13166 d!32501))

(declare-fun bm!12412 () Bool)

(declare-fun call!12419 () ListLongMap!1643)

(declare-fun call!12418 () ListLongMap!1643)

(assert (=> bm!12412 (= call!12419 call!12418)))

(declare-fun b!115917 () Bool)

(declare-fun e!75665 () ListLongMap!1643)

(declare-fun e!75668 () ListLongMap!1643)

(assert (=> b!115917 (= e!75665 e!75668)))

(declare-fun c!20593 () Bool)

(assert (=> b!115917 (= c!20593 (and (not (= (bvand (extraKeys!2496 (v!3030 (underlying!406 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2496 (v!3030 (underlying!406 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!12413 () Bool)

(declare-fun call!12416 () Bool)

(declare-fun lt!60193 () ListLongMap!1643)

(assert (=> bm!12413 (= call!12416 (contains!859 lt!60193 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!115918 () Bool)

(declare-fun e!75670 () Unit!3613)

(declare-fun lt!60190 () Unit!3613)

(assert (=> b!115918 (= e!75670 lt!60190)))

(declare-fun lt!60199 () ListLongMap!1643)

(assert (=> b!115918 (= lt!60199 (getCurrentListMapNoExtraKeys!125 (_keys!4429 (v!3030 (underlying!406 thiss!992))) (_values!2690 (v!3030 (underlying!406 thiss!992))) (mask!6917 (v!3030 (underlying!406 thiss!992))) (extraKeys!2496 (v!3030 (underlying!406 thiss!992))) (zeroValue!2574 (v!3030 (underlying!406 thiss!992))) (minValue!2574 (v!3030 (underlying!406 thiss!992))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)) (defaultEntry!2707 (v!3030 (underlying!406 thiss!992)))))))

(declare-fun lt!60189 () (_ BitVec 64))

(assert (=> b!115918 (= lt!60189 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!60196 () (_ BitVec 64))

(assert (=> b!115918 (= lt!60196 (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001))))))

(declare-fun lt!60184 () Unit!3613)

(assert (=> b!115918 (= lt!60184 (addStillContains!80 lt!60199 lt!60189 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))) lt!60196))))

(assert (=> b!115918 (contains!859 (+!158 lt!60199 (tuple2!2505 lt!60189 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))))) lt!60196)))

(declare-fun lt!60202 () Unit!3613)

(assert (=> b!115918 (= lt!60202 lt!60184)))

(declare-fun lt!60186 () ListLongMap!1643)

(assert (=> b!115918 (= lt!60186 (getCurrentListMapNoExtraKeys!125 (_keys!4429 (v!3030 (underlying!406 thiss!992))) (_values!2690 (v!3030 (underlying!406 thiss!992))) (mask!6917 (v!3030 (underlying!406 thiss!992))) (extraKeys!2496 (v!3030 (underlying!406 thiss!992))) (zeroValue!2574 (v!3030 (underlying!406 thiss!992))) (minValue!2574 (v!3030 (underlying!406 thiss!992))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)) (defaultEntry!2707 (v!3030 (underlying!406 thiss!992)))))))

(declare-fun lt!60203 () (_ BitVec 64))

(assert (=> b!115918 (= lt!60203 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!60205 () (_ BitVec 64))

(assert (=> b!115918 (= lt!60205 (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001))))))

(declare-fun lt!60198 () Unit!3613)

(assert (=> b!115918 (= lt!60198 (addApplyDifferent!80 lt!60186 lt!60203 (minValue!2574 (v!3030 (underlying!406 thiss!992))) lt!60205))))

(assert (=> b!115918 (= (apply!104 (+!158 lt!60186 (tuple2!2505 lt!60203 (minValue!2574 (v!3030 (underlying!406 thiss!992))))) lt!60205) (apply!104 lt!60186 lt!60205))))

(declare-fun lt!60188 () Unit!3613)

(assert (=> b!115918 (= lt!60188 lt!60198)))

(declare-fun lt!60185 () ListLongMap!1643)

(assert (=> b!115918 (= lt!60185 (getCurrentListMapNoExtraKeys!125 (_keys!4429 (v!3030 (underlying!406 thiss!992))) (_values!2690 (v!3030 (underlying!406 thiss!992))) (mask!6917 (v!3030 (underlying!406 thiss!992))) (extraKeys!2496 (v!3030 (underlying!406 thiss!992))) (zeroValue!2574 (v!3030 (underlying!406 thiss!992))) (minValue!2574 (v!3030 (underlying!406 thiss!992))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)) (defaultEntry!2707 (v!3030 (underlying!406 thiss!992)))))))

(declare-fun lt!60200 () (_ BitVec 64))

(assert (=> b!115918 (= lt!60200 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!60195 () (_ BitVec 64))

(assert (=> b!115918 (= lt!60195 (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001))))))

(declare-fun lt!60187 () Unit!3613)

(assert (=> b!115918 (= lt!60187 (addApplyDifferent!80 lt!60185 lt!60200 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))) lt!60195))))

(assert (=> b!115918 (= (apply!104 (+!158 lt!60185 (tuple2!2505 lt!60200 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))))) lt!60195) (apply!104 lt!60185 lt!60195))))

(declare-fun lt!60191 () Unit!3613)

(assert (=> b!115918 (= lt!60191 lt!60187)))

(declare-fun lt!60201 () ListLongMap!1643)

(assert (=> b!115918 (= lt!60201 (getCurrentListMapNoExtraKeys!125 (_keys!4429 (v!3030 (underlying!406 thiss!992))) (_values!2690 (v!3030 (underlying!406 thiss!992))) (mask!6917 (v!3030 (underlying!406 thiss!992))) (extraKeys!2496 (v!3030 (underlying!406 thiss!992))) (zeroValue!2574 (v!3030 (underlying!406 thiss!992))) (minValue!2574 (v!3030 (underlying!406 thiss!992))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)) (defaultEntry!2707 (v!3030 (underlying!406 thiss!992)))))))

(declare-fun lt!60192 () (_ BitVec 64))

(assert (=> b!115918 (= lt!60192 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!60197 () (_ BitVec 64))

(assert (=> b!115918 (= lt!60197 (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001))))))

(assert (=> b!115918 (= lt!60190 (addApplyDifferent!80 lt!60201 lt!60192 (minValue!2574 (v!3030 (underlying!406 thiss!992))) lt!60197))))

(assert (=> b!115918 (= (apply!104 (+!158 lt!60201 (tuple2!2505 lt!60192 (minValue!2574 (v!3030 (underlying!406 thiss!992))))) lt!60197) (apply!104 lt!60201 lt!60197))))

(declare-fun b!115919 () Bool)

(declare-fun e!75667 () Bool)

(declare-fun e!75662 () Bool)

(assert (=> b!115919 (= e!75667 e!75662)))

(declare-fun res!56821 () Bool)

(assert (=> b!115919 (=> (not res!56821) (not e!75662))))

(assert (=> b!115919 (= res!56821 (contains!859 lt!60193 (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)))))))

(assert (=> b!115919 (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)) (size!2418 (_keys!4429 (v!3030 (underlying!406 thiss!992))))))))

(declare-fun b!115920 () Bool)

(declare-fun Unit!3616 () Unit!3613)

(assert (=> b!115920 (= e!75670 Unit!3616)))

(declare-fun b!115921 () Bool)

(declare-fun e!75672 () Bool)

(assert (=> b!115921 (= e!75672 (validKeyInArray!0 (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)))))))

(declare-fun b!115922 () Bool)

(declare-fun res!56819 () Bool)

(declare-fun e!75674 () Bool)

(assert (=> b!115922 (=> (not res!56819) (not e!75674))))

(assert (=> b!115922 (= res!56819 e!75667)))

(declare-fun res!56816 () Bool)

(assert (=> b!115922 (=> res!56816 e!75667)))

(assert (=> b!115922 (= res!56816 (not e!75672))))

(declare-fun res!56813 () Bool)

(assert (=> b!115922 (=> (not res!56813) (not e!75672))))

(assert (=> b!115922 (= res!56813 (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)) (size!2418 (_keys!4429 (v!3030 (underlying!406 thiss!992))))))))

(declare-fun b!115924 () Bool)

(declare-fun e!75673 () Bool)

(assert (=> b!115924 (= e!75674 e!75673)))

(declare-fun c!20590 () Bool)

(assert (=> b!115924 (= c!20590 (not (= (bvand (extraKeys!2496 (v!3030 (underlying!406 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!12414 () Bool)

(declare-fun call!12415 () ListLongMap!1643)

(declare-fun call!12417 () ListLongMap!1643)

(assert (=> bm!12414 (= call!12415 call!12417)))

(declare-fun b!115925 () Bool)

(assert (=> b!115925 (= e!75662 (= (apply!104 lt!60193 (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)))) (get!1407 (select (arr!2159 (_values!2690 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001))) (dynLambda!407 (defaultEntry!2707 (v!3030 (underlying!406 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!115925 (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)) (size!2419 (_values!2690 (v!3030 (underlying!406 thiss!992))))))))

(assert (=> b!115925 (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)) (size!2418 (_keys!4429 (v!3030 (underlying!406 thiss!992))))))))

(declare-fun b!115926 () Bool)

(declare-fun e!75671 () ListLongMap!1643)

(assert (=> b!115926 (= e!75671 call!12415)))

(declare-fun b!115927 () Bool)

(declare-fun e!75663 () Bool)

(declare-fun e!75669 () Bool)

(assert (=> b!115927 (= e!75663 e!75669)))

(declare-fun res!56815 () Bool)

(declare-fun call!12420 () Bool)

(assert (=> b!115927 (= res!56815 call!12420)))

(assert (=> b!115927 (=> (not res!56815) (not e!75669))))

(declare-fun c!20591 () Bool)

(declare-fun bm!12415 () Bool)

(declare-fun call!12421 () ListLongMap!1643)

(assert (=> bm!12415 (= call!12417 (+!158 (ite c!20591 call!12421 (ite c!20593 call!12418 call!12419)) (ite (or c!20591 c!20593) (tuple2!2505 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))) (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(declare-fun bm!12416 () Bool)

(assert (=> bm!12416 (= call!12418 call!12421)))

(declare-fun b!115928 () Bool)

(assert (=> b!115928 (= e!75671 call!12419)))

(declare-fun b!115929 () Bool)

(assert (=> b!115929 (= e!75669 (= (apply!104 lt!60193 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))))))

(declare-fun b!115930 () Bool)

(declare-fun res!56814 () Bool)

(assert (=> b!115930 (=> (not res!56814) (not e!75674))))

(assert (=> b!115930 (= res!56814 e!75663)))

(declare-fun c!20589 () Bool)

(assert (=> b!115930 (= c!20589 (not (= (bvand (extraKeys!2496 (v!3030 (underlying!406 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!115931 () Bool)

(declare-fun e!75664 () Bool)

(assert (=> b!115931 (= e!75664 (validKeyInArray!0 (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)))))))

(declare-fun b!115932 () Bool)

(declare-fun c!20592 () Bool)

(assert (=> b!115932 (= c!20592 (and (not (= (bvand (extraKeys!2496 (v!3030 (underlying!406 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2496 (v!3030 (underlying!406 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!115932 (= e!75668 e!75671)))

(declare-fun b!115933 () Bool)

(assert (=> b!115933 (= e!75668 call!12415)))

(declare-fun bm!12417 () Bool)

(assert (=> bm!12417 (= call!12421 (getCurrentListMapNoExtraKeys!125 (_keys!4429 (v!3030 (underlying!406 thiss!992))) (_values!2690 (v!3030 (underlying!406 thiss!992))) (mask!6917 (v!3030 (underlying!406 thiss!992))) (extraKeys!2496 (v!3030 (underlying!406 thiss!992))) (zeroValue!2574 (v!3030 (underlying!406 thiss!992))) (minValue!2574 (v!3030 (underlying!406 thiss!992))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)) (defaultEntry!2707 (v!3030 (underlying!406 thiss!992)))))))

(declare-fun bm!12418 () Bool)

(assert (=> bm!12418 (= call!12420 (contains!859 lt!60193 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!115934 () Bool)

(declare-fun e!75666 () Bool)

(assert (=> b!115934 (= e!75673 e!75666)))

(declare-fun res!56818 () Bool)

(assert (=> b!115934 (= res!56818 call!12416)))

(assert (=> b!115934 (=> (not res!56818) (not e!75666))))

(declare-fun b!115923 () Bool)

(assert (=> b!115923 (= e!75666 (= (apply!104 lt!60193 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2574 (v!3030 (underlying!406 thiss!992)))))))

(declare-fun d!32503 () Bool)

(assert (=> d!32503 e!75674))

(declare-fun res!56817 () Bool)

(assert (=> d!32503 (=> (not res!56817) (not e!75674))))

(assert (=> d!32503 (= res!56817 (or (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)) (size!2418 (_keys!4429 (v!3030 (underlying!406 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)) (size!2418 (_keys!4429 (v!3030 (underlying!406 thiss!992))))))))))

(declare-fun lt!60204 () ListLongMap!1643)

(assert (=> d!32503 (= lt!60193 lt!60204)))

(declare-fun lt!60194 () Unit!3613)

(assert (=> d!32503 (= lt!60194 e!75670)))

(declare-fun c!20588 () Bool)

(assert (=> d!32503 (= c!20588 e!75664)))

(declare-fun res!56820 () Bool)

(assert (=> d!32503 (=> (not res!56820) (not e!75664))))

(assert (=> d!32503 (= res!56820 (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)) (size!2418 (_keys!4429 (v!3030 (underlying!406 thiss!992))))))))

(assert (=> d!32503 (= lt!60204 e!75665)))

(assert (=> d!32503 (= c!20591 (and (not (= (bvand (extraKeys!2496 (v!3030 (underlying!406 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2496 (v!3030 (underlying!406 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!32503 (validMask!0 (mask!6917 (v!3030 (underlying!406 thiss!992))))))

(assert (=> d!32503 (= (getCurrentListMap!510 (_keys!4429 (v!3030 (underlying!406 thiss!992))) (_values!2690 (v!3030 (underlying!406 thiss!992))) (mask!6917 (v!3030 (underlying!406 thiss!992))) (extraKeys!2496 (v!3030 (underlying!406 thiss!992))) (zeroValue!2574 (v!3030 (underlying!406 thiss!992))) (minValue!2574 (v!3030 (underlying!406 thiss!992))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)) (defaultEntry!2707 (v!3030 (underlying!406 thiss!992)))) lt!60193)))

(declare-fun b!115935 () Bool)

(assert (=> b!115935 (= e!75665 (+!158 call!12417 (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992))))))))

(declare-fun b!115936 () Bool)

(assert (=> b!115936 (= e!75663 (not call!12420))))

(declare-fun b!115937 () Bool)

(assert (=> b!115937 (= e!75673 (not call!12416))))

(assert (= (and d!32503 c!20591) b!115935))

(assert (= (and d!32503 (not c!20591)) b!115917))

(assert (= (and b!115917 c!20593) b!115933))

(assert (= (and b!115917 (not c!20593)) b!115932))

(assert (= (and b!115932 c!20592) b!115926))

(assert (= (and b!115932 (not c!20592)) b!115928))

(assert (= (or b!115926 b!115928) bm!12412))

(assert (= (or b!115933 bm!12412) bm!12416))

(assert (= (or b!115933 b!115926) bm!12414))

(assert (= (or b!115935 bm!12416) bm!12417))

(assert (= (or b!115935 bm!12414) bm!12415))

(assert (= (and d!32503 res!56820) b!115931))

(assert (= (and d!32503 c!20588) b!115918))

(assert (= (and d!32503 (not c!20588)) b!115920))

(assert (= (and d!32503 res!56817) b!115922))

(assert (= (and b!115922 res!56813) b!115921))

(assert (= (and b!115922 (not res!56816)) b!115919))

(assert (= (and b!115919 res!56821) b!115925))

(assert (= (and b!115922 res!56819) b!115930))

(assert (= (and b!115930 c!20589) b!115927))

(assert (= (and b!115930 (not c!20589)) b!115936))

(assert (= (and b!115927 res!56815) b!115929))

(assert (= (or b!115927 b!115936) bm!12418))

(assert (= (and b!115930 res!56814) b!115924))

(assert (= (and b!115924 c!20590) b!115934))

(assert (= (and b!115924 (not c!20590)) b!115937))

(assert (= (and b!115934 res!56818) b!115923))

(assert (= (or b!115934 b!115937) bm!12413))

(declare-fun b_lambda!5175 () Bool)

(assert (=> (not b_lambda!5175) (not b!115925)))

(assert (=> b!115925 t!5960))

(declare-fun b_and!7221 () Bool)

(assert (= b_and!7217 (and (=> t!5960 result!3715) b_and!7221)))

(assert (=> b!115925 t!5962))

(declare-fun b_and!7223 () Bool)

(assert (= b_and!7219 (and (=> t!5962 result!3719) b_and!7223)))

(assert (=> d!32503 m!131975))

(declare-fun m!132037 () Bool)

(assert (=> b!115923 m!132037))

(declare-fun m!132039 () Bool)

(assert (=> b!115919 m!132039))

(assert (=> b!115919 m!132039))

(declare-fun m!132041 () Bool)

(assert (=> b!115919 m!132041))

(declare-fun m!132043 () Bool)

(assert (=> b!115935 m!132043))

(assert (=> b!115921 m!132039))

(assert (=> b!115921 m!132039))

(declare-fun m!132045 () Bool)

(assert (=> b!115921 m!132045))

(declare-fun m!132047 () Bool)

(assert (=> bm!12413 m!132047))

(declare-fun m!132049 () Bool)

(assert (=> bm!12418 m!132049))

(declare-fun m!132051 () Bool)

(assert (=> bm!12417 m!132051))

(assert (=> b!115931 m!132039))

(assert (=> b!115931 m!132039))

(assert (=> b!115931 m!132045))

(assert (=> b!115925 m!132039))

(declare-fun m!132053 () Bool)

(assert (=> b!115925 m!132053))

(assert (=> b!115925 m!132053))

(assert (=> b!115925 m!131995))

(declare-fun m!132055 () Bool)

(assert (=> b!115925 m!132055))

(assert (=> b!115925 m!132039))

(declare-fun m!132057 () Bool)

(assert (=> b!115925 m!132057))

(assert (=> b!115925 m!131995))

(declare-fun m!132059 () Bool)

(assert (=> bm!12415 m!132059))

(declare-fun m!132061 () Bool)

(assert (=> b!115918 m!132061))

(declare-fun m!132063 () Bool)

(assert (=> b!115918 m!132063))

(assert (=> b!115918 m!132051))

(declare-fun m!132065 () Bool)

(assert (=> b!115918 m!132065))

(assert (=> b!115918 m!132061))

(declare-fun m!132067 () Bool)

(assert (=> b!115918 m!132067))

(declare-fun m!132069 () Bool)

(assert (=> b!115918 m!132069))

(declare-fun m!132071 () Bool)

(assert (=> b!115918 m!132071))

(declare-fun m!132073 () Bool)

(assert (=> b!115918 m!132073))

(assert (=> b!115918 m!132039))

(declare-fun m!132075 () Bool)

(assert (=> b!115918 m!132075))

(declare-fun m!132077 () Bool)

(assert (=> b!115918 m!132077))

(assert (=> b!115918 m!132077))

(declare-fun m!132079 () Bool)

(assert (=> b!115918 m!132079))

(declare-fun m!132081 () Bool)

(assert (=> b!115918 m!132081))

(declare-fun m!132083 () Bool)

(assert (=> b!115918 m!132083))

(declare-fun m!132085 () Bool)

(assert (=> b!115918 m!132085))

(assert (=> b!115918 m!132083))

(declare-fun m!132087 () Bool)

(assert (=> b!115918 m!132087))

(assert (=> b!115918 m!132069))

(declare-fun m!132089 () Bool)

(assert (=> b!115918 m!132089))

(declare-fun m!132091 () Bool)

(assert (=> b!115929 m!132091))

(assert (=> b!115794 d!32503))

(declare-fun d!32505 () Bool)

(declare-fun res!56828 () Bool)

(declare-fun e!75677 () Bool)

(assert (=> d!32505 (=> (not res!56828) (not e!75677))))

(declare-fun simpleValid!79 (LongMapFixedSize!996) Bool)

(assert (=> d!32505 (= res!56828 (simpleValid!79 newMap!16))))

(assert (=> d!32505 (= (valid!464 newMap!16) e!75677)))

(declare-fun b!115944 () Bool)

(declare-fun res!56829 () Bool)

(assert (=> b!115944 (=> (not res!56829) (not e!75677))))

(declare-fun arrayCountValidKeys!0 (array!4552 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!115944 (= res!56829 (= (arrayCountValidKeys!0 (_keys!4429 newMap!16) #b00000000000000000000000000000000 (size!2418 (_keys!4429 newMap!16))) (_size!547 newMap!16)))))

(declare-fun b!115945 () Bool)

(declare-fun res!56830 () Bool)

(assert (=> b!115945 (=> (not res!56830) (not e!75677))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4552 (_ BitVec 32)) Bool)

(assert (=> b!115945 (= res!56830 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4429 newMap!16) (mask!6917 newMap!16)))))

(declare-fun b!115946 () Bool)

(declare-datatypes ((List!1693 0))(
  ( (Nil!1690) (Cons!1689 (h!2289 (_ BitVec 64)) (t!5963 List!1693)) )
))
(declare-fun arrayNoDuplicates!0 (array!4552 (_ BitVec 32) List!1693) Bool)

(assert (=> b!115946 (= e!75677 (arrayNoDuplicates!0 (_keys!4429 newMap!16) #b00000000000000000000000000000000 Nil!1690))))

(assert (= (and d!32505 res!56828) b!115944))

(assert (= (and b!115944 res!56829) b!115945))

(assert (= (and b!115945 res!56830) b!115946))

(declare-fun m!132093 () Bool)

(assert (=> d!32505 m!132093))

(declare-fun m!132095 () Bool)

(assert (=> b!115944 m!132095))

(declare-fun m!132097 () Bool)

(assert (=> b!115945 m!132097))

(declare-fun m!132099 () Bool)

(assert (=> b!115946 m!132099))

(assert (=> b!115793 d!32505))

(declare-fun d!32507 () Bool)

(assert (=> d!32507 (= (array_inv!1305 (_keys!4429 newMap!16)) (bvsge (size!2418 (_keys!4429 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!115805 d!32507))

(declare-fun d!32509 () Bool)

(assert (=> d!32509 (= (array_inv!1306 (_values!2690 newMap!16)) (bvsge (size!2419 (_values!2690 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!115805 d!32509))

(declare-fun d!32511 () Bool)

(assert (=> d!32511 (= (array_inv!1305 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvsge (size!2418 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!115801 d!32511))

(declare-fun d!32513 () Bool)

(assert (=> d!32513 (= (array_inv!1306 (_values!2690 (v!3030 (underlying!406 thiss!992)))) (bvsge (size!2419 (_values!2690 (v!3030 (underlying!406 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!115801 d!32513))

(declare-fun b!115953 () Bool)

(declare-fun e!75683 () Bool)

(assert (=> b!115953 (= e!75683 tp_is_empty!2775)))

(declare-fun mapIsEmpty!4267 () Bool)

(declare-fun mapRes!4267 () Bool)

(assert (=> mapIsEmpty!4267 mapRes!4267))

(declare-fun mapNonEmpty!4267 () Bool)

(declare-fun tp!10531 () Bool)

(assert (=> mapNonEmpty!4267 (= mapRes!4267 (and tp!10531 e!75683))))

(declare-fun mapKey!4267 () (_ BitVec 32))

(declare-fun mapRest!4267 () (Array (_ BitVec 32) ValueCell!1044))

(declare-fun mapValue!4267 () ValueCell!1044)

(assert (=> mapNonEmpty!4267 (= mapRest!4257 (store mapRest!4267 mapKey!4267 mapValue!4267))))

(declare-fun b!115954 () Bool)

(declare-fun e!75682 () Bool)

(assert (=> b!115954 (= e!75682 tp_is_empty!2775)))

(declare-fun condMapEmpty!4267 () Bool)

(declare-fun mapDefault!4267 () ValueCell!1044)

(assert (=> mapNonEmpty!4257 (= condMapEmpty!4267 (= mapRest!4257 ((as const (Array (_ BitVec 32) ValueCell!1044)) mapDefault!4267)))))

(assert (=> mapNonEmpty!4257 (= tp!10515 (and e!75682 mapRes!4267))))

(assert (= (and mapNonEmpty!4257 condMapEmpty!4267) mapIsEmpty!4267))

(assert (= (and mapNonEmpty!4257 (not condMapEmpty!4267)) mapNonEmpty!4267))

(assert (= (and mapNonEmpty!4267 ((_ is ValueCellFull!1044) mapValue!4267)) b!115953))

(assert (= (and mapNonEmpty!4257 ((_ is ValueCellFull!1044) mapDefault!4267)) b!115954))

(declare-fun m!132101 () Bool)

(assert (=> mapNonEmpty!4267 m!132101))

(declare-fun b!115955 () Bool)

(declare-fun e!75685 () Bool)

(assert (=> b!115955 (= e!75685 tp_is_empty!2775)))

(declare-fun mapIsEmpty!4268 () Bool)

(declare-fun mapRes!4268 () Bool)

(assert (=> mapIsEmpty!4268 mapRes!4268))

(declare-fun mapNonEmpty!4268 () Bool)

(declare-fun tp!10532 () Bool)

(assert (=> mapNonEmpty!4268 (= mapRes!4268 (and tp!10532 e!75685))))

(declare-fun mapValue!4268 () ValueCell!1044)

(declare-fun mapKey!4268 () (_ BitVec 32))

(declare-fun mapRest!4268 () (Array (_ BitVec 32) ValueCell!1044))

(assert (=> mapNonEmpty!4268 (= mapRest!4258 (store mapRest!4268 mapKey!4268 mapValue!4268))))

(declare-fun b!115956 () Bool)

(declare-fun e!75684 () Bool)

(assert (=> b!115956 (= e!75684 tp_is_empty!2775)))

(declare-fun condMapEmpty!4268 () Bool)

(declare-fun mapDefault!4268 () ValueCell!1044)

(assert (=> mapNonEmpty!4258 (= condMapEmpty!4268 (= mapRest!4258 ((as const (Array (_ BitVec 32) ValueCell!1044)) mapDefault!4268)))))

(assert (=> mapNonEmpty!4258 (= tp!10516 (and e!75684 mapRes!4268))))

(assert (= (and mapNonEmpty!4258 condMapEmpty!4268) mapIsEmpty!4268))

(assert (= (and mapNonEmpty!4258 (not condMapEmpty!4268)) mapNonEmpty!4268))

(assert (= (and mapNonEmpty!4268 ((_ is ValueCellFull!1044) mapValue!4268)) b!115955))

(assert (= (and mapNonEmpty!4258 ((_ is ValueCellFull!1044) mapDefault!4268)) b!115956))

(declare-fun m!132103 () Bool)

(assert (=> mapNonEmpty!4268 m!132103))

(declare-fun b_lambda!5177 () Bool)

(assert (= b_lambda!5173 (or (and b!115801 b_free!2717) (and b!115805 b_free!2719 (= (defaultEntry!2707 newMap!16) (defaultEntry!2707 (v!3030 (underlying!406 thiss!992))))) b_lambda!5177)))

(declare-fun b_lambda!5179 () Bool)

(assert (= b_lambda!5175 (or (and b!115801 b_free!2717) (and b!115805 b_free!2719 (= (defaultEntry!2707 newMap!16) (defaultEntry!2707 (v!3030 (underlying!406 thiss!992))))) b_lambda!5179)))

(check-sat (not b!115929) (not b!115944) (not b!115900) (not b!115945) (not mapNonEmpty!4267) (not bm!12406) b_and!7221 (not bm!12413) (not d!32497) tp_is_empty!2775 (not b!115902) (not bm!12417) (not b!115925) (not b!115946) (not b!115923) (not b_next!2719) (not d!32499) (not bm!12408) (not mapNonEmpty!4268) (not bm!12411) (not b!115931) (not b_lambda!5177) (not b!115898) (not b!115921) (not b!115896) (not bm!12410) (not d!32501) (not b_next!2717) (not b!115908) (not d!32505) (not b!115918) (not b!115919) (not d!32503) (not bm!12418) (not bm!12415) (not b!115895) (not b!115935) (not b_lambda!5179) (not b!115912) b_and!7223 (not b!115906))
(check-sat b_and!7221 b_and!7223 (not b_next!2717) (not b_next!2719))
(get-model)

(declare-fun d!32515 () Bool)

(assert (=> d!32515 (= (validKeyInArray!0 (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (and (not (= (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!115908 d!32515))

(declare-fun d!32517 () Bool)

(declare-datatypes ((Option!167 0))(
  ( (Some!166 (v!3033 V!3347)) (None!165) )
))
(declare-fun get!1408 (Option!167) V!3347)

(declare-fun getValueByKey!161 (List!1691 (_ BitVec 64)) Option!167)

(assert (=> d!32517 (= (apply!104 lt!60193 (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)))) (get!1408 (getValueByKey!161 (toList!837 lt!60193) (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001))))))))

(declare-fun bs!4710 () Bool)

(assert (= bs!4710 d!32517))

(assert (=> bs!4710 m!132039))

(declare-fun m!132105 () Bool)

(assert (=> bs!4710 m!132105))

(assert (=> bs!4710 m!132105))

(declare-fun m!132107 () Bool)

(assert (=> bs!4710 m!132107))

(assert (=> b!115925 d!32517))

(declare-fun d!32519 () Bool)

(declare-fun c!20596 () Bool)

(assert (=> d!32519 (= c!20596 ((_ is ValueCellFull!1044) (select (arr!2159 (_values!2690 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)))))))

(declare-fun e!75688 () V!3347)

(assert (=> d!32519 (= (get!1407 (select (arr!2159 (_values!2690 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001))) (dynLambda!407 (defaultEntry!2707 (v!3030 (underlying!406 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!75688)))

(declare-fun b!115961 () Bool)

(declare-fun get!1409 (ValueCell!1044 V!3347) V!3347)

(assert (=> b!115961 (= e!75688 (get!1409 (select (arr!2159 (_values!2690 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001))) (dynLambda!407 (defaultEntry!2707 (v!3030 (underlying!406 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!115962 () Bool)

(declare-fun get!1410 (ValueCell!1044 V!3347) V!3347)

(assert (=> b!115962 (= e!75688 (get!1410 (select (arr!2159 (_values!2690 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001))) (dynLambda!407 (defaultEntry!2707 (v!3030 (underlying!406 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!32519 c!20596) b!115961))

(assert (= (and d!32519 (not c!20596)) b!115962))

(assert (=> b!115961 m!132053))

(assert (=> b!115961 m!131995))

(declare-fun m!132109 () Bool)

(assert (=> b!115961 m!132109))

(assert (=> b!115962 m!132053))

(assert (=> b!115962 m!131995))

(declare-fun m!132111 () Bool)

(assert (=> b!115962 m!132111))

(assert (=> b!115925 d!32519))

(declare-fun d!32521 () Bool)

(declare-fun e!75693 () Bool)

(assert (=> d!32521 e!75693))

(declare-fun res!56833 () Bool)

(assert (=> d!32521 (=> res!56833 e!75693)))

(declare-fun lt!60217 () Bool)

(assert (=> d!32521 (= res!56833 (not lt!60217))))

(declare-fun lt!60215 () Bool)

(assert (=> d!32521 (= lt!60217 lt!60215)))

(declare-fun lt!60214 () Unit!3613)

(declare-fun e!75694 () Unit!3613)

(assert (=> d!32521 (= lt!60214 e!75694)))

(declare-fun c!20599 () Bool)

(assert (=> d!32521 (= c!20599 lt!60215)))

(declare-fun containsKey!165 (List!1691 (_ BitVec 64)) Bool)

(assert (=> d!32521 (= lt!60215 (containsKey!165 (toList!837 lt!60171) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!32521 (= (contains!859 lt!60171 #b0000000000000000000000000000000000000000000000000000000000000000) lt!60217)))

(declare-fun b!115969 () Bool)

(declare-fun lt!60216 () Unit!3613)

(assert (=> b!115969 (= e!75694 lt!60216)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!114 (List!1691 (_ BitVec 64)) Unit!3613)

(assert (=> b!115969 (= lt!60216 (lemmaContainsKeyImpliesGetValueByKeyDefined!114 (toList!837 lt!60171) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun isDefined!115 (Option!167) Bool)

(assert (=> b!115969 (isDefined!115 (getValueByKey!161 (toList!837 lt!60171) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!115970 () Bool)

(declare-fun Unit!3617 () Unit!3613)

(assert (=> b!115970 (= e!75694 Unit!3617)))

(declare-fun b!115971 () Bool)

(assert (=> b!115971 (= e!75693 (isDefined!115 (getValueByKey!161 (toList!837 lt!60171) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!32521 c!20599) b!115969))

(assert (= (and d!32521 (not c!20599)) b!115970))

(assert (= (and d!32521 (not res!56833)) b!115971))

(declare-fun m!132113 () Bool)

(assert (=> d!32521 m!132113))

(declare-fun m!132115 () Bool)

(assert (=> b!115969 m!132115))

(declare-fun m!132117 () Bool)

(assert (=> b!115969 m!132117))

(assert (=> b!115969 m!132117))

(declare-fun m!132119 () Bool)

(assert (=> b!115969 m!132119))

(assert (=> b!115971 m!132117))

(assert (=> b!115971 m!132117))

(assert (=> b!115971 m!132119))

(assert (=> bm!12411 d!32521))

(declare-fun d!32523 () Bool)

(declare-fun e!75695 () Bool)

(assert (=> d!32523 e!75695))

(declare-fun res!56834 () Bool)

(assert (=> d!32523 (=> res!56834 e!75695)))

(declare-fun lt!60221 () Bool)

(assert (=> d!32523 (= res!56834 (not lt!60221))))

(declare-fun lt!60219 () Bool)

(assert (=> d!32523 (= lt!60221 lt!60219)))

(declare-fun lt!60218 () Unit!3613)

(declare-fun e!75696 () Unit!3613)

(assert (=> d!32523 (= lt!60218 e!75696)))

(declare-fun c!20600 () Bool)

(assert (=> d!32523 (= c!20600 lt!60219)))

(assert (=> d!32523 (= lt!60219 (containsKey!165 (toList!837 lt!60171) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!32523 (= (contains!859 lt!60171 #b1000000000000000000000000000000000000000000000000000000000000000) lt!60221)))

(declare-fun b!115972 () Bool)

(declare-fun lt!60220 () Unit!3613)

(assert (=> b!115972 (= e!75696 lt!60220)))

(assert (=> b!115972 (= lt!60220 (lemmaContainsKeyImpliesGetValueByKeyDefined!114 (toList!837 lt!60171) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!115972 (isDefined!115 (getValueByKey!161 (toList!837 lt!60171) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!115973 () Bool)

(declare-fun Unit!3618 () Unit!3613)

(assert (=> b!115973 (= e!75696 Unit!3618)))

(declare-fun b!115974 () Bool)

(assert (=> b!115974 (= e!75695 (isDefined!115 (getValueByKey!161 (toList!837 lt!60171) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!32523 c!20600) b!115972))

(assert (= (and d!32523 (not c!20600)) b!115973))

(assert (= (and d!32523 (not res!56834)) b!115974))

(declare-fun m!132121 () Bool)

(assert (=> d!32523 m!132121))

(declare-fun m!132123 () Bool)

(assert (=> b!115972 m!132123))

(declare-fun m!132125 () Bool)

(assert (=> b!115972 m!132125))

(assert (=> b!115972 m!132125))

(declare-fun m!132127 () Bool)

(assert (=> b!115972 m!132127))

(assert (=> b!115974 m!132125))

(assert (=> b!115974 m!132125))

(assert (=> b!115974 m!132127))

(assert (=> bm!12406 d!32523))

(declare-fun b!115999 () Bool)

(declare-fun e!75711 () ListLongMap!1643)

(declare-fun call!12424 () ListLongMap!1643)

(assert (=> b!115999 (= e!75711 call!12424)))

(declare-fun bm!12421 () Bool)

(assert (=> bm!12421 (= call!12424 (getCurrentListMapNoExtraKeys!125 (_keys!4429 (v!3030 (underlying!406 thiss!992))) (_values!2690 (v!3030 (underlying!406 thiss!992))) (mask!6917 (v!3030 (underlying!406 thiss!992))) (extraKeys!2496 (v!3030 (underlying!406 thiss!992))) (zeroValue!2574 (v!3030 (underlying!406 thiss!992))) (minValue!2574 (v!3030 (underlying!406 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2707 (v!3030 (underlying!406 thiss!992)))))))

(declare-fun b!116000 () Bool)

(declare-fun e!75715 () Bool)

(assert (=> b!116000 (= e!75715 (validKeyInArray!0 (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!116000 (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000)))

(declare-fun lt!60242 () ListLongMap!1643)

(declare-fun e!75717 () Bool)

(declare-fun b!116001 () Bool)

(assert (=> b!116001 (= e!75717 (= lt!60242 (getCurrentListMapNoExtraKeys!125 (_keys!4429 (v!3030 (underlying!406 thiss!992))) (_values!2690 (v!3030 (underlying!406 thiss!992))) (mask!6917 (v!3030 (underlying!406 thiss!992))) (extraKeys!2496 (v!3030 (underlying!406 thiss!992))) (zeroValue!2574 (v!3030 (underlying!406 thiss!992))) (minValue!2574 (v!3030 (underlying!406 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2707 (v!3030 (underlying!406 thiss!992))))))))

(declare-fun b!116002 () Bool)

(declare-fun res!56846 () Bool)

(declare-fun e!75714 () Bool)

(assert (=> b!116002 (=> (not res!56846) (not e!75714))))

(assert (=> b!116002 (= res!56846 (not (contains!859 lt!60242 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!116003 () Bool)

(declare-fun e!75716 () ListLongMap!1643)

(assert (=> b!116003 (= e!75716 e!75711)))

(declare-fun c!20611 () Bool)

(assert (=> b!116003 (= c!20611 (validKeyInArray!0 (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun d!32525 () Bool)

(assert (=> d!32525 e!75714))

(declare-fun res!56843 () Bool)

(assert (=> d!32525 (=> (not res!56843) (not e!75714))))

(assert (=> d!32525 (= res!56843 (not (contains!859 lt!60242 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!32525 (= lt!60242 e!75716)))

(declare-fun c!20610 () Bool)

(assert (=> d!32525 (= c!20610 (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2418 (_keys!4429 (v!3030 (underlying!406 thiss!992))))))))

(assert (=> d!32525 (validMask!0 (mask!6917 (v!3030 (underlying!406 thiss!992))))))

(assert (=> d!32525 (= (getCurrentListMapNoExtraKeys!125 (_keys!4429 (v!3030 (underlying!406 thiss!992))) (_values!2690 (v!3030 (underlying!406 thiss!992))) (mask!6917 (v!3030 (underlying!406 thiss!992))) (extraKeys!2496 (v!3030 (underlying!406 thiss!992))) (zeroValue!2574 (v!3030 (underlying!406 thiss!992))) (minValue!2574 (v!3030 (underlying!406 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2707 (v!3030 (underlying!406 thiss!992)))) lt!60242)))

(declare-fun b!116004 () Bool)

(assert (=> b!116004 (= e!75716 (ListLongMap!1644 Nil!1688))))

(declare-fun b!116005 () Bool)

(declare-fun e!75713 () Bool)

(assert (=> b!116005 (= e!75713 e!75717)))

(declare-fun c!20612 () Bool)

(assert (=> b!116005 (= c!20612 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2418 (_keys!4429 (v!3030 (underlying!406 thiss!992))))))))

(declare-fun b!116006 () Bool)

(declare-fun isEmpty!391 (ListLongMap!1643) Bool)

(assert (=> b!116006 (= e!75717 (isEmpty!391 lt!60242))))

(declare-fun b!116007 () Bool)

(declare-fun e!75712 () Bool)

(assert (=> b!116007 (= e!75713 e!75712)))

(assert (=> b!116007 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2418 (_keys!4429 (v!3030 (underlying!406 thiss!992))))))))

(declare-fun res!56844 () Bool)

(assert (=> b!116007 (= res!56844 (contains!859 lt!60242 (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!116007 (=> (not res!56844) (not e!75712))))

(declare-fun b!116008 () Bool)

(assert (=> b!116008 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2418 (_keys!4429 (v!3030 (underlying!406 thiss!992))))))))

(assert (=> b!116008 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2419 (_values!2690 (v!3030 (underlying!406 thiss!992))))))))

(assert (=> b!116008 (= e!75712 (= (apply!104 lt!60242 (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1407 (select (arr!2159 (_values!2690 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!407 (defaultEntry!2707 (v!3030 (underlying!406 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!116009 () Bool)

(declare-fun lt!60238 () Unit!3613)

(declare-fun lt!60237 () Unit!3613)

(assert (=> b!116009 (= lt!60238 lt!60237)))

(declare-fun lt!60239 () (_ BitVec 64))

(declare-fun lt!60240 () ListLongMap!1643)

(declare-fun lt!60236 () (_ BitVec 64))

(declare-fun lt!60241 () V!3347)

(assert (=> b!116009 (not (contains!859 (+!158 lt!60240 (tuple2!2505 lt!60236 lt!60241)) lt!60239))))

(declare-fun addStillNotContains!54 (ListLongMap!1643 (_ BitVec 64) V!3347 (_ BitVec 64)) Unit!3613)

(assert (=> b!116009 (= lt!60237 (addStillNotContains!54 lt!60240 lt!60236 lt!60241 lt!60239))))

(assert (=> b!116009 (= lt!60239 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!116009 (= lt!60241 (get!1407 (select (arr!2159 (_values!2690 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!407 (defaultEntry!2707 (v!3030 (underlying!406 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!116009 (= lt!60236 (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!116009 (= lt!60240 call!12424)))

(assert (=> b!116009 (= e!75711 (+!158 call!12424 (tuple2!2505 (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1407 (select (arr!2159 (_values!2690 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!407 (defaultEntry!2707 (v!3030 (underlying!406 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!116010 () Bool)

(assert (=> b!116010 (= e!75714 e!75713)))

(declare-fun c!20609 () Bool)

(assert (=> b!116010 (= c!20609 e!75715)))

(declare-fun res!56845 () Bool)

(assert (=> b!116010 (=> (not res!56845) (not e!75715))))

(assert (=> b!116010 (= res!56845 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2418 (_keys!4429 (v!3030 (underlying!406 thiss!992))))))))

(assert (= (and d!32525 c!20610) b!116004))

(assert (= (and d!32525 (not c!20610)) b!116003))

(assert (= (and b!116003 c!20611) b!116009))

(assert (= (and b!116003 (not c!20611)) b!115999))

(assert (= (or b!116009 b!115999) bm!12421))

(assert (= (and d!32525 res!56843) b!116002))

(assert (= (and b!116002 res!56846) b!116010))

(assert (= (and b!116010 res!56845) b!116000))

(assert (= (and b!116010 c!20609) b!116007))

(assert (= (and b!116010 (not c!20609)) b!116005))

(assert (= (and b!116007 res!56844) b!116008))

(assert (= (and b!116005 c!20612) b!116001))

(assert (= (and b!116005 (not c!20612)) b!116006))

(declare-fun b_lambda!5181 () Bool)

(assert (=> (not b_lambda!5181) (not b!116008)))

(assert (=> b!116008 t!5960))

(declare-fun b_and!7225 () Bool)

(assert (= b_and!7221 (and (=> t!5960 result!3715) b_and!7225)))

(assert (=> b!116008 t!5962))

(declare-fun b_and!7227 () Bool)

(assert (= b_and!7223 (and (=> t!5962 result!3719) b_and!7227)))

(declare-fun b_lambda!5183 () Bool)

(assert (=> (not b_lambda!5183) (not b!116009)))

(assert (=> b!116009 t!5960))

(declare-fun b_and!7229 () Bool)

(assert (= b_and!7225 (and (=> t!5960 result!3715) b_and!7229)))

(assert (=> b!116009 t!5962))

(declare-fun b_and!7231 () Bool)

(assert (= b_and!7227 (and (=> t!5962 result!3719) b_and!7231)))

(assert (=> b!116009 m!131995))

(declare-fun m!132129 () Bool)

(assert (=> b!116009 m!132129))

(assert (=> b!116009 m!131993))

(declare-fun m!132131 () Bool)

(assert (=> b!116009 m!132131))

(declare-fun m!132133 () Bool)

(assert (=> b!116009 m!132133))

(assert (=> b!116009 m!131979))

(assert (=> b!116009 m!132133))

(declare-fun m!132135 () Bool)

(assert (=> b!116009 m!132135))

(assert (=> b!116009 m!131993))

(assert (=> b!116009 m!131995))

(assert (=> b!116009 m!131997))

(assert (=> b!116003 m!131979))

(assert (=> b!116003 m!131979))

(assert (=> b!116003 m!131985))

(declare-fun m!132137 () Bool)

(assert (=> bm!12421 m!132137))

(declare-fun m!132139 () Bool)

(assert (=> b!116006 m!132139))

(assert (=> b!116000 m!131979))

(assert (=> b!116000 m!131979))

(assert (=> b!116000 m!131985))

(assert (=> b!116001 m!132137))

(assert (=> b!116008 m!131995))

(assert (=> b!116008 m!131979))

(assert (=> b!116008 m!131993))

(assert (=> b!116008 m!131995))

(assert (=> b!116008 m!131997))

(assert (=> b!116008 m!131993))

(assert (=> b!116008 m!131979))

(declare-fun m!132141 () Bool)

(assert (=> b!116008 m!132141))

(declare-fun m!132143 () Bool)

(assert (=> d!32525 m!132143))

(assert (=> d!32525 m!131975))

(assert (=> b!116007 m!131979))

(assert (=> b!116007 m!131979))

(declare-fun m!132145 () Bool)

(assert (=> b!116007 m!132145))

(declare-fun m!132147 () Bool)

(assert (=> b!116002 m!132147))

(assert (=> bm!12410 d!32525))

(declare-fun d!32527 () Bool)

(declare-fun e!75720 () Bool)

(assert (=> d!32527 e!75720))

(declare-fun res!56852 () Bool)

(assert (=> d!32527 (=> (not res!56852) (not e!75720))))

(declare-fun lt!60251 () ListLongMap!1643)

(assert (=> d!32527 (= res!56852 (contains!859 lt!60251 (_1!1262 (ite (or c!20591 c!20593) (tuple2!2505 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))) (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992))))))))))

(declare-fun lt!60254 () List!1691)

(assert (=> d!32527 (= lt!60251 (ListLongMap!1644 lt!60254))))

(declare-fun lt!60252 () Unit!3613)

(declare-fun lt!60253 () Unit!3613)

(assert (=> d!32527 (= lt!60252 lt!60253)))

(assert (=> d!32527 (= (getValueByKey!161 lt!60254 (_1!1262 (ite (or c!20591 c!20593) (tuple2!2505 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))) (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992))))))) (Some!166 (_2!1262 (ite (or c!20591 c!20593) (tuple2!2505 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))) (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992))))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!79 (List!1691 (_ BitVec 64) V!3347) Unit!3613)

(assert (=> d!32527 (= lt!60253 (lemmaContainsTupThenGetReturnValue!79 lt!60254 (_1!1262 (ite (or c!20591 c!20593) (tuple2!2505 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))) (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))) (_2!1262 (ite (or c!20591 c!20593) (tuple2!2505 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))) (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992))))))))))

(declare-fun insertStrictlySorted!81 (List!1691 (_ BitVec 64) V!3347) List!1691)

(assert (=> d!32527 (= lt!60254 (insertStrictlySorted!81 (toList!837 (ite c!20591 call!12421 (ite c!20593 call!12418 call!12419))) (_1!1262 (ite (or c!20591 c!20593) (tuple2!2505 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))) (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))) (_2!1262 (ite (or c!20591 c!20593) (tuple2!2505 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))) (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992))))))))))

(assert (=> d!32527 (= (+!158 (ite c!20591 call!12421 (ite c!20593 call!12418 call!12419)) (ite (or c!20591 c!20593) (tuple2!2505 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))) (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))) lt!60251)))

(declare-fun b!116015 () Bool)

(declare-fun res!56851 () Bool)

(assert (=> b!116015 (=> (not res!56851) (not e!75720))))

(assert (=> b!116015 (= res!56851 (= (getValueByKey!161 (toList!837 lt!60251) (_1!1262 (ite (or c!20591 c!20593) (tuple2!2505 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))) (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992))))))) (Some!166 (_2!1262 (ite (or c!20591 c!20593) (tuple2!2505 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))) (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))))))))

(declare-fun b!116016 () Bool)

(declare-fun contains!860 (List!1691 tuple2!2504) Bool)

(assert (=> b!116016 (= e!75720 (contains!860 (toList!837 lt!60251) (ite (or c!20591 c!20593) (tuple2!2505 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))) (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(assert (= (and d!32527 res!56852) b!116015))

(assert (= (and b!116015 res!56851) b!116016))

(declare-fun m!132149 () Bool)

(assert (=> d!32527 m!132149))

(declare-fun m!132151 () Bool)

(assert (=> d!32527 m!132151))

(declare-fun m!132153 () Bool)

(assert (=> d!32527 m!132153))

(declare-fun m!132155 () Bool)

(assert (=> d!32527 m!132155))

(declare-fun m!132157 () Bool)

(assert (=> b!116015 m!132157))

(declare-fun m!132159 () Bool)

(assert (=> b!116016 m!132159))

(assert (=> bm!12415 d!32527))

(declare-fun b!116025 () Bool)

(declare-fun e!75725 () (_ BitVec 32))

(assert (=> b!116025 (= e!75725 #b00000000000000000000000000000000)))

(declare-fun b!116026 () Bool)

(declare-fun e!75726 () (_ BitVec 32))

(assert (=> b!116026 (= e!75725 e!75726)))

(declare-fun c!20617 () Bool)

(assert (=> b!116026 (= c!20617 (validKeyInArray!0 (select (arr!2158 (_keys!4429 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!12424 () Bool)

(declare-fun call!12427 () (_ BitVec 32))

(assert (=> bm!12424 (= call!12427 (arrayCountValidKeys!0 (_keys!4429 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2418 (_keys!4429 newMap!16))))))

(declare-fun b!116027 () Bool)

(assert (=> b!116027 (= e!75726 (bvadd #b00000000000000000000000000000001 call!12427))))

(declare-fun d!32529 () Bool)

(declare-fun lt!60257 () (_ BitVec 32))

(assert (=> d!32529 (and (bvsge lt!60257 #b00000000000000000000000000000000) (bvsle lt!60257 (bvsub (size!2418 (_keys!4429 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> d!32529 (= lt!60257 e!75725)))

(declare-fun c!20618 () Bool)

(assert (=> d!32529 (= c!20618 (bvsge #b00000000000000000000000000000000 (size!2418 (_keys!4429 newMap!16))))))

(assert (=> d!32529 (and (bvsle #b00000000000000000000000000000000 (size!2418 (_keys!4429 newMap!16))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2418 (_keys!4429 newMap!16)) (size!2418 (_keys!4429 newMap!16))))))

(assert (=> d!32529 (= (arrayCountValidKeys!0 (_keys!4429 newMap!16) #b00000000000000000000000000000000 (size!2418 (_keys!4429 newMap!16))) lt!60257)))

(declare-fun b!116028 () Bool)

(assert (=> b!116028 (= e!75726 call!12427)))

(assert (= (and d!32529 c!20618) b!116025))

(assert (= (and d!32529 (not c!20618)) b!116026))

(assert (= (and b!116026 c!20617) b!116027))

(assert (= (and b!116026 (not c!20617)) b!116028))

(assert (= (or b!116027 b!116028) bm!12424))

(declare-fun m!132161 () Bool)

(assert (=> b!116026 m!132161))

(assert (=> b!116026 m!132161))

(declare-fun m!132163 () Bool)

(assert (=> b!116026 m!132163))

(declare-fun m!132165 () Bool)

(assert (=> bm!12424 m!132165))

(assert (=> b!115944 d!32529))

(declare-fun b!116037 () Bool)

(declare-fun e!75733 () Bool)

(declare-fun e!75735 () Bool)

(assert (=> b!116037 (= e!75733 e!75735)))

(declare-fun c!20621 () Bool)

(assert (=> b!116037 (= c!20621 (validKeyInArray!0 (select (arr!2158 (_keys!4429 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!116038 () Bool)

(declare-fun e!75734 () Bool)

(declare-fun call!12430 () Bool)

(assert (=> b!116038 (= e!75734 call!12430)))

(declare-fun b!116039 () Bool)

(assert (=> b!116039 (= e!75735 call!12430)))

(declare-fun b!116040 () Bool)

(assert (=> b!116040 (= e!75735 e!75734)))

(declare-fun lt!60266 () (_ BitVec 64))

(assert (=> b!116040 (= lt!60266 (select (arr!2158 (_keys!4429 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!60264 () Unit!3613)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!4552 (_ BitVec 64) (_ BitVec 32)) Unit!3613)

(assert (=> b!116040 (= lt!60264 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4429 newMap!16) lt!60266 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!4552 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!116040 (arrayContainsKey!0 (_keys!4429 newMap!16) lt!60266 #b00000000000000000000000000000000)))

(declare-fun lt!60265 () Unit!3613)

(assert (=> b!116040 (= lt!60265 lt!60264)))

(declare-fun res!56858 () Bool)

(declare-datatypes ((SeekEntryResult!275 0))(
  ( (MissingZero!275 (index!3253 (_ BitVec 32))) (Found!275 (index!3254 (_ BitVec 32))) (Intermediate!275 (undefined!1087 Bool) (index!3255 (_ BitVec 32)) (x!14420 (_ BitVec 32))) (Undefined!275) (MissingVacant!275 (index!3256 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!4552 (_ BitVec 32)) SeekEntryResult!275)

(assert (=> b!116040 (= res!56858 (= (seekEntryOrOpen!0 (select (arr!2158 (_keys!4429 newMap!16)) #b00000000000000000000000000000000) (_keys!4429 newMap!16) (mask!6917 newMap!16)) (Found!275 #b00000000000000000000000000000000)))))

(assert (=> b!116040 (=> (not res!56858) (not e!75734))))

(declare-fun d!32531 () Bool)

(declare-fun res!56857 () Bool)

(assert (=> d!32531 (=> res!56857 e!75733)))

(assert (=> d!32531 (= res!56857 (bvsge #b00000000000000000000000000000000 (size!2418 (_keys!4429 newMap!16))))))

(assert (=> d!32531 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4429 newMap!16) (mask!6917 newMap!16)) e!75733)))

(declare-fun bm!12427 () Bool)

(assert (=> bm!12427 (= call!12430 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4429 newMap!16) (mask!6917 newMap!16)))))

(assert (= (and d!32531 (not res!56857)) b!116037))

(assert (= (and b!116037 c!20621) b!116040))

(assert (= (and b!116037 (not c!20621)) b!116039))

(assert (= (and b!116040 res!56858) b!116038))

(assert (= (or b!116038 b!116039) bm!12427))

(assert (=> b!116037 m!132161))

(assert (=> b!116037 m!132161))

(assert (=> b!116037 m!132163))

(assert (=> b!116040 m!132161))

(declare-fun m!132167 () Bool)

(assert (=> b!116040 m!132167))

(declare-fun m!132169 () Bool)

(assert (=> b!116040 m!132169))

(assert (=> b!116040 m!132161))

(declare-fun m!132171 () Bool)

(assert (=> b!116040 m!132171))

(declare-fun m!132173 () Bool)

(assert (=> bm!12427 m!132173))

(assert (=> b!115945 d!32531))

(declare-fun b!116049 () Bool)

(declare-fun res!56870 () Bool)

(declare-fun e!75738 () Bool)

(assert (=> b!116049 (=> (not res!56870) (not e!75738))))

(assert (=> b!116049 (= res!56870 (and (= (size!2419 (_values!2690 newMap!16)) (bvadd (mask!6917 newMap!16) #b00000000000000000000000000000001)) (= (size!2418 (_keys!4429 newMap!16)) (size!2419 (_values!2690 newMap!16))) (bvsge (_size!547 newMap!16) #b00000000000000000000000000000000) (bvsle (_size!547 newMap!16) (bvadd (mask!6917 newMap!16) #b00000000000000000000000000000001))))))

(declare-fun b!116050 () Bool)

(declare-fun res!56868 () Bool)

(assert (=> b!116050 (=> (not res!56868) (not e!75738))))

(declare-fun size!2422 (LongMapFixedSize!996) (_ BitVec 32))

(assert (=> b!116050 (= res!56868 (bvsge (size!2422 newMap!16) (_size!547 newMap!16)))))

(declare-fun b!116051 () Bool)

(declare-fun res!56869 () Bool)

(assert (=> b!116051 (=> (not res!56869) (not e!75738))))

(assert (=> b!116051 (= res!56869 (= (size!2422 newMap!16) (bvadd (_size!547 newMap!16) (bvsdiv (bvadd (extraKeys!2496 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!32533 () Bool)

(declare-fun res!56867 () Bool)

(assert (=> d!32533 (=> (not res!56867) (not e!75738))))

(assert (=> d!32533 (= res!56867 (validMask!0 (mask!6917 newMap!16)))))

(assert (=> d!32533 (= (simpleValid!79 newMap!16) e!75738)))

(declare-fun b!116052 () Bool)

(assert (=> b!116052 (= e!75738 (and (bvsge (extraKeys!2496 newMap!16) #b00000000000000000000000000000000) (bvsle (extraKeys!2496 newMap!16) #b00000000000000000000000000000011) (bvsge (_vacant!547 newMap!16) #b00000000000000000000000000000000)))))

(assert (= (and d!32533 res!56867) b!116049))

(assert (= (and b!116049 res!56870) b!116050))

(assert (= (and b!116050 res!56868) b!116051))

(assert (= (and b!116051 res!56869) b!116052))

(declare-fun m!132175 () Bool)

(assert (=> b!116050 m!132175))

(assert (=> b!116051 m!132175))

(declare-fun m!132177 () Bool)

(assert (=> d!32533 m!132177))

(assert (=> d!32505 d!32533))

(declare-fun d!32535 () Bool)

(declare-fun e!75739 () Bool)

(assert (=> d!32535 e!75739))

(declare-fun res!56872 () Bool)

(assert (=> d!32535 (=> (not res!56872) (not e!75739))))

(declare-fun lt!60267 () ListLongMap!1643)

(assert (=> d!32535 (= res!56872 (contains!859 lt!60267 (_1!1262 (ite (or c!20585 c!20587) (tuple2!2505 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))) (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992))))))))))

(declare-fun lt!60270 () List!1691)

(assert (=> d!32535 (= lt!60267 (ListLongMap!1644 lt!60270))))

(declare-fun lt!60268 () Unit!3613)

(declare-fun lt!60269 () Unit!3613)

(assert (=> d!32535 (= lt!60268 lt!60269)))

(assert (=> d!32535 (= (getValueByKey!161 lt!60270 (_1!1262 (ite (or c!20585 c!20587) (tuple2!2505 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))) (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992))))))) (Some!166 (_2!1262 (ite (or c!20585 c!20587) (tuple2!2505 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))) (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992))))))))))

(assert (=> d!32535 (= lt!60269 (lemmaContainsTupThenGetReturnValue!79 lt!60270 (_1!1262 (ite (or c!20585 c!20587) (tuple2!2505 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))) (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))) (_2!1262 (ite (or c!20585 c!20587) (tuple2!2505 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))) (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992))))))))))

(assert (=> d!32535 (= lt!60270 (insertStrictlySorted!81 (toList!837 (ite c!20585 call!12414 (ite c!20587 call!12411 call!12412))) (_1!1262 (ite (or c!20585 c!20587) (tuple2!2505 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))) (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))) (_2!1262 (ite (or c!20585 c!20587) (tuple2!2505 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))) (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992))))))))))

(assert (=> d!32535 (= (+!158 (ite c!20585 call!12414 (ite c!20587 call!12411 call!12412)) (ite (or c!20585 c!20587) (tuple2!2505 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))) (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))) lt!60267)))

(declare-fun b!116053 () Bool)

(declare-fun res!56871 () Bool)

(assert (=> b!116053 (=> (not res!56871) (not e!75739))))

(assert (=> b!116053 (= res!56871 (= (getValueByKey!161 (toList!837 lt!60267) (_1!1262 (ite (or c!20585 c!20587) (tuple2!2505 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))) (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992))))))) (Some!166 (_2!1262 (ite (or c!20585 c!20587) (tuple2!2505 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))) (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))))))))

(declare-fun b!116054 () Bool)

(assert (=> b!116054 (= e!75739 (contains!860 (toList!837 lt!60267) (ite (or c!20585 c!20587) (tuple2!2505 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))) (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(assert (= (and d!32535 res!56872) b!116053))

(assert (= (and b!116053 res!56871) b!116054))

(declare-fun m!132179 () Bool)

(assert (=> d!32535 m!132179))

(declare-fun m!132181 () Bool)

(assert (=> d!32535 m!132181))

(declare-fun m!132183 () Bool)

(assert (=> d!32535 m!132183))

(declare-fun m!132185 () Bool)

(assert (=> d!32535 m!132185))

(declare-fun m!132187 () Bool)

(assert (=> b!116053 m!132187))

(declare-fun m!132189 () Bool)

(assert (=> b!116054 m!132189))

(assert (=> bm!12408 d!32535))

(declare-fun d!32537 () Bool)

(assert (=> d!32537 (= (validKeyInArray!0 (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)))) (and (not (= (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001))) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001))) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!115921 d!32537))

(declare-fun d!32539 () Bool)

(assert (=> d!32539 (= (validMask!0 (mask!6917 (v!3030 (underlying!406 thiss!992)))) (and (or (= (mask!6917 (v!3030 (underlying!406 thiss!992))) #b00000000000000000000000000000111) (= (mask!6917 (v!3030 (underlying!406 thiss!992))) #b00000000000000000000000000001111) (= (mask!6917 (v!3030 (underlying!406 thiss!992))) #b00000000000000000000000000011111) (= (mask!6917 (v!3030 (underlying!406 thiss!992))) #b00000000000000000000000000111111) (= (mask!6917 (v!3030 (underlying!406 thiss!992))) #b00000000000000000000000001111111) (= (mask!6917 (v!3030 (underlying!406 thiss!992))) #b00000000000000000000000011111111) (= (mask!6917 (v!3030 (underlying!406 thiss!992))) #b00000000000000000000000111111111) (= (mask!6917 (v!3030 (underlying!406 thiss!992))) #b00000000000000000000001111111111) (= (mask!6917 (v!3030 (underlying!406 thiss!992))) #b00000000000000000000011111111111) (= (mask!6917 (v!3030 (underlying!406 thiss!992))) #b00000000000000000000111111111111) (= (mask!6917 (v!3030 (underlying!406 thiss!992))) #b00000000000000000001111111111111) (= (mask!6917 (v!3030 (underlying!406 thiss!992))) #b00000000000000000011111111111111) (= (mask!6917 (v!3030 (underlying!406 thiss!992))) #b00000000000000000111111111111111) (= (mask!6917 (v!3030 (underlying!406 thiss!992))) #b00000000000000001111111111111111) (= (mask!6917 (v!3030 (underlying!406 thiss!992))) #b00000000000000011111111111111111) (= (mask!6917 (v!3030 (underlying!406 thiss!992))) #b00000000000000111111111111111111) (= (mask!6917 (v!3030 (underlying!406 thiss!992))) #b00000000000001111111111111111111) (= (mask!6917 (v!3030 (underlying!406 thiss!992))) #b00000000000011111111111111111111) (= (mask!6917 (v!3030 (underlying!406 thiss!992))) #b00000000000111111111111111111111) (= (mask!6917 (v!3030 (underlying!406 thiss!992))) #b00000000001111111111111111111111) (= (mask!6917 (v!3030 (underlying!406 thiss!992))) #b00000000011111111111111111111111) (= (mask!6917 (v!3030 (underlying!406 thiss!992))) #b00000000111111111111111111111111) (= (mask!6917 (v!3030 (underlying!406 thiss!992))) #b00000001111111111111111111111111) (= (mask!6917 (v!3030 (underlying!406 thiss!992))) #b00000011111111111111111111111111) (= (mask!6917 (v!3030 (underlying!406 thiss!992))) #b00000111111111111111111111111111) (= (mask!6917 (v!3030 (underlying!406 thiss!992))) #b00001111111111111111111111111111) (= (mask!6917 (v!3030 (underlying!406 thiss!992))) #b00011111111111111111111111111111) (= (mask!6917 (v!3030 (underlying!406 thiss!992))) #b00111111111111111111111111111111)) (bvsle (mask!6917 (v!3030 (underlying!406 thiss!992))) #b00111111111111111111111111111111)))))

(assert (=> d!32503 d!32539))

(declare-fun b!116065 () Bool)

(declare-fun e!75751 () Bool)

(declare-fun call!12433 () Bool)

(assert (=> b!116065 (= e!75751 call!12433)))

(declare-fun b!116066 () Bool)

(declare-fun e!75749 () Bool)

(declare-fun contains!861 (List!1693 (_ BitVec 64)) Bool)

(assert (=> b!116066 (= e!75749 (contains!861 Nil!1690 (select (arr!2158 (_keys!4429 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!116067 () Bool)

(declare-fun e!75748 () Bool)

(assert (=> b!116067 (= e!75748 e!75751)))

(declare-fun c!20624 () Bool)

(assert (=> b!116067 (= c!20624 (validKeyInArray!0 (select (arr!2158 (_keys!4429 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!12430 () Bool)

(assert (=> bm!12430 (= call!12433 (arrayNoDuplicates!0 (_keys!4429 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!20624 (Cons!1689 (select (arr!2158 (_keys!4429 newMap!16)) #b00000000000000000000000000000000) Nil!1690) Nil!1690)))))

(declare-fun b!116068 () Bool)

(assert (=> b!116068 (= e!75751 call!12433)))

(declare-fun d!32541 () Bool)

(declare-fun res!56879 () Bool)

(declare-fun e!75750 () Bool)

(assert (=> d!32541 (=> res!56879 e!75750)))

(assert (=> d!32541 (= res!56879 (bvsge #b00000000000000000000000000000000 (size!2418 (_keys!4429 newMap!16))))))

(assert (=> d!32541 (= (arrayNoDuplicates!0 (_keys!4429 newMap!16) #b00000000000000000000000000000000 Nil!1690) e!75750)))

(declare-fun b!116069 () Bool)

(assert (=> b!116069 (= e!75750 e!75748)))

(declare-fun res!56881 () Bool)

(assert (=> b!116069 (=> (not res!56881) (not e!75748))))

(assert (=> b!116069 (= res!56881 (not e!75749))))

(declare-fun res!56880 () Bool)

(assert (=> b!116069 (=> (not res!56880) (not e!75749))))

(assert (=> b!116069 (= res!56880 (validKeyInArray!0 (select (arr!2158 (_keys!4429 newMap!16)) #b00000000000000000000000000000000)))))

(assert (= (and d!32541 (not res!56879)) b!116069))

(assert (= (and b!116069 res!56880) b!116066))

(assert (= (and b!116069 res!56881) b!116067))

(assert (= (and b!116067 c!20624) b!116065))

(assert (= (and b!116067 (not c!20624)) b!116068))

(assert (= (or b!116065 b!116068) bm!12430))

(assert (=> b!116066 m!132161))

(assert (=> b!116066 m!132161))

(declare-fun m!132191 () Bool)

(assert (=> b!116066 m!132191))

(assert (=> b!116067 m!132161))

(assert (=> b!116067 m!132161))

(assert (=> b!116067 m!132163))

(assert (=> bm!12430 m!132161))

(declare-fun m!132193 () Bool)

(assert (=> bm!12430 m!132193))

(assert (=> b!116069 m!132161))

(assert (=> b!116069 m!132161))

(assert (=> b!116069 m!132163))

(assert (=> b!115946 d!32541))

(assert (=> d!32499 d!32539))

(declare-fun d!32543 () Bool)

(assert (=> d!32543 (= (apply!104 lt!60193 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1408 (getValueByKey!161 (toList!837 lt!60193) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!4711 () Bool)

(assert (= bs!4711 d!32543))

(declare-fun m!132195 () Bool)

(assert (=> bs!4711 m!132195))

(assert (=> bs!4711 m!132195))

(declare-fun m!132197 () Bool)

(assert (=> bs!4711 m!132197))

(assert (=> b!115923 d!32543))

(declare-fun d!32545 () Bool)

(assert (=> d!32545 (= (apply!104 lt!60171 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1408 (getValueByKey!161 (toList!837 lt!60171) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!4712 () Bool)

(assert (= bs!4712 d!32545))

(assert (=> bs!4712 m!132117))

(assert (=> bs!4712 m!132117))

(declare-fun m!132199 () Bool)

(assert (=> bs!4712 m!132199))

(assert (=> b!115906 d!32545))

(declare-fun d!32547 () Bool)

(declare-fun e!75752 () Bool)

(assert (=> d!32547 e!75752))

(declare-fun res!56882 () Bool)

(assert (=> d!32547 (=> res!56882 e!75752)))

(declare-fun lt!60274 () Bool)

(assert (=> d!32547 (= res!56882 (not lt!60274))))

(declare-fun lt!60272 () Bool)

(assert (=> d!32547 (= lt!60274 lt!60272)))

(declare-fun lt!60271 () Unit!3613)

(declare-fun e!75753 () Unit!3613)

(assert (=> d!32547 (= lt!60271 e!75753)))

(declare-fun c!20625 () Bool)

(assert (=> d!32547 (= c!20625 lt!60272)))

(assert (=> d!32547 (= lt!60272 (containsKey!165 (toList!837 lt!60193) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!32547 (= (contains!859 lt!60193 #b0000000000000000000000000000000000000000000000000000000000000000) lt!60274)))

(declare-fun b!116070 () Bool)

(declare-fun lt!60273 () Unit!3613)

(assert (=> b!116070 (= e!75753 lt!60273)))

(assert (=> b!116070 (= lt!60273 (lemmaContainsKeyImpliesGetValueByKeyDefined!114 (toList!837 lt!60193) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!116070 (isDefined!115 (getValueByKey!161 (toList!837 lt!60193) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!116071 () Bool)

(declare-fun Unit!3619 () Unit!3613)

(assert (=> b!116071 (= e!75753 Unit!3619)))

(declare-fun b!116072 () Bool)

(assert (=> b!116072 (= e!75752 (isDefined!115 (getValueByKey!161 (toList!837 lt!60193) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!32547 c!20625) b!116070))

(assert (= (and d!32547 (not c!20625)) b!116071))

(assert (= (and d!32547 (not res!56882)) b!116072))

(declare-fun m!132201 () Bool)

(assert (=> d!32547 m!132201))

(declare-fun m!132203 () Bool)

(assert (=> b!116070 m!132203))

(declare-fun m!132205 () Bool)

(assert (=> b!116070 m!132205))

(assert (=> b!116070 m!132205))

(declare-fun m!132207 () Bool)

(assert (=> b!116070 m!132207))

(assert (=> b!116072 m!132205))

(assert (=> b!116072 m!132205))

(assert (=> b!116072 m!132207))

(assert (=> bm!12418 d!32547))

(declare-fun bm!12431 () Bool)

(declare-fun call!12438 () ListLongMap!1643)

(declare-fun call!12437 () ListLongMap!1643)

(assert (=> bm!12431 (= call!12438 call!12437)))

(declare-fun b!116073 () Bool)

(declare-fun e!75757 () ListLongMap!1643)

(declare-fun e!75760 () ListLongMap!1643)

(assert (=> b!116073 (= e!75757 e!75760)))

(declare-fun c!20631 () Bool)

(assert (=> b!116073 (= c!20631 (and (not (= (bvand (extraKeys!2496 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2496 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!12432 () Bool)

(declare-fun call!12435 () Bool)

(declare-fun lt!60284 () ListLongMap!1643)

(assert (=> bm!12432 (= call!12435 (contains!859 lt!60284 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!116074 () Bool)

(declare-fun e!75762 () Unit!3613)

(declare-fun lt!60281 () Unit!3613)

(assert (=> b!116074 (= e!75762 lt!60281)))

(declare-fun lt!60290 () ListLongMap!1643)

(assert (=> b!116074 (= lt!60290 (getCurrentListMapNoExtraKeys!125 (_keys!4429 newMap!16) (_values!2690 newMap!16) (mask!6917 newMap!16) (extraKeys!2496 newMap!16) (zeroValue!2574 newMap!16) (minValue!2574 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2707 newMap!16)))))

(declare-fun lt!60280 () (_ BitVec 64))

(assert (=> b!116074 (= lt!60280 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!60287 () (_ BitVec 64))

(assert (=> b!116074 (= lt!60287 (select (arr!2158 (_keys!4429 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!60275 () Unit!3613)

(assert (=> b!116074 (= lt!60275 (addStillContains!80 lt!60290 lt!60280 (zeroValue!2574 newMap!16) lt!60287))))

(assert (=> b!116074 (contains!859 (+!158 lt!60290 (tuple2!2505 lt!60280 (zeroValue!2574 newMap!16))) lt!60287)))

(declare-fun lt!60293 () Unit!3613)

(assert (=> b!116074 (= lt!60293 lt!60275)))

(declare-fun lt!60277 () ListLongMap!1643)

(assert (=> b!116074 (= lt!60277 (getCurrentListMapNoExtraKeys!125 (_keys!4429 newMap!16) (_values!2690 newMap!16) (mask!6917 newMap!16) (extraKeys!2496 newMap!16) (zeroValue!2574 newMap!16) (minValue!2574 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2707 newMap!16)))))

(declare-fun lt!60294 () (_ BitVec 64))

(assert (=> b!116074 (= lt!60294 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!60296 () (_ BitVec 64))

(assert (=> b!116074 (= lt!60296 (select (arr!2158 (_keys!4429 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!60289 () Unit!3613)

(assert (=> b!116074 (= lt!60289 (addApplyDifferent!80 lt!60277 lt!60294 (minValue!2574 newMap!16) lt!60296))))

(assert (=> b!116074 (= (apply!104 (+!158 lt!60277 (tuple2!2505 lt!60294 (minValue!2574 newMap!16))) lt!60296) (apply!104 lt!60277 lt!60296))))

(declare-fun lt!60279 () Unit!3613)

(assert (=> b!116074 (= lt!60279 lt!60289)))

(declare-fun lt!60276 () ListLongMap!1643)

(assert (=> b!116074 (= lt!60276 (getCurrentListMapNoExtraKeys!125 (_keys!4429 newMap!16) (_values!2690 newMap!16) (mask!6917 newMap!16) (extraKeys!2496 newMap!16) (zeroValue!2574 newMap!16) (minValue!2574 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2707 newMap!16)))))

(declare-fun lt!60291 () (_ BitVec 64))

(assert (=> b!116074 (= lt!60291 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!60286 () (_ BitVec 64))

(assert (=> b!116074 (= lt!60286 (select (arr!2158 (_keys!4429 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!60278 () Unit!3613)

(assert (=> b!116074 (= lt!60278 (addApplyDifferent!80 lt!60276 lt!60291 (zeroValue!2574 newMap!16) lt!60286))))

(assert (=> b!116074 (= (apply!104 (+!158 lt!60276 (tuple2!2505 lt!60291 (zeroValue!2574 newMap!16))) lt!60286) (apply!104 lt!60276 lt!60286))))

(declare-fun lt!60282 () Unit!3613)

(assert (=> b!116074 (= lt!60282 lt!60278)))

(declare-fun lt!60292 () ListLongMap!1643)

(assert (=> b!116074 (= lt!60292 (getCurrentListMapNoExtraKeys!125 (_keys!4429 newMap!16) (_values!2690 newMap!16) (mask!6917 newMap!16) (extraKeys!2496 newMap!16) (zeroValue!2574 newMap!16) (minValue!2574 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2707 newMap!16)))))

(declare-fun lt!60283 () (_ BitVec 64))

(assert (=> b!116074 (= lt!60283 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!60288 () (_ BitVec 64))

(assert (=> b!116074 (= lt!60288 (select (arr!2158 (_keys!4429 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!116074 (= lt!60281 (addApplyDifferent!80 lt!60292 lt!60283 (minValue!2574 newMap!16) lt!60288))))

(assert (=> b!116074 (= (apply!104 (+!158 lt!60292 (tuple2!2505 lt!60283 (minValue!2574 newMap!16))) lt!60288) (apply!104 lt!60292 lt!60288))))

(declare-fun b!116075 () Bool)

(declare-fun e!75759 () Bool)

(declare-fun e!75754 () Bool)

(assert (=> b!116075 (= e!75759 e!75754)))

(declare-fun res!56891 () Bool)

(assert (=> b!116075 (=> (not res!56891) (not e!75754))))

(assert (=> b!116075 (= res!56891 (contains!859 lt!60284 (select (arr!2158 (_keys!4429 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!116075 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2418 (_keys!4429 newMap!16))))))

(declare-fun b!116076 () Bool)

(declare-fun Unit!3620 () Unit!3613)

(assert (=> b!116076 (= e!75762 Unit!3620)))

(declare-fun b!116077 () Bool)

(declare-fun e!75764 () Bool)

(assert (=> b!116077 (= e!75764 (validKeyInArray!0 (select (arr!2158 (_keys!4429 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!116078 () Bool)

(declare-fun res!56889 () Bool)

(declare-fun e!75766 () Bool)

(assert (=> b!116078 (=> (not res!56889) (not e!75766))))

(assert (=> b!116078 (= res!56889 e!75759)))

(declare-fun res!56886 () Bool)

(assert (=> b!116078 (=> res!56886 e!75759)))

(assert (=> b!116078 (= res!56886 (not e!75764))))

(declare-fun res!56883 () Bool)

(assert (=> b!116078 (=> (not res!56883) (not e!75764))))

(assert (=> b!116078 (= res!56883 (bvslt #b00000000000000000000000000000000 (size!2418 (_keys!4429 newMap!16))))))

(declare-fun b!116080 () Bool)

(declare-fun e!75765 () Bool)

(assert (=> b!116080 (= e!75766 e!75765)))

(declare-fun c!20628 () Bool)

(assert (=> b!116080 (= c!20628 (not (= (bvand (extraKeys!2496 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!12433 () Bool)

(declare-fun call!12434 () ListLongMap!1643)

(declare-fun call!12436 () ListLongMap!1643)

(assert (=> bm!12433 (= call!12434 call!12436)))

(declare-fun b!116081 () Bool)

(assert (=> b!116081 (= e!75754 (= (apply!104 lt!60284 (select (arr!2158 (_keys!4429 newMap!16)) #b00000000000000000000000000000000)) (get!1407 (select (arr!2159 (_values!2690 newMap!16)) #b00000000000000000000000000000000) (dynLambda!407 (defaultEntry!2707 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!116081 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2419 (_values!2690 newMap!16))))))

(assert (=> b!116081 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2418 (_keys!4429 newMap!16))))))

(declare-fun b!116082 () Bool)

(declare-fun e!75763 () ListLongMap!1643)

(assert (=> b!116082 (= e!75763 call!12434)))

(declare-fun b!116083 () Bool)

(declare-fun e!75755 () Bool)

(declare-fun e!75761 () Bool)

(assert (=> b!116083 (= e!75755 e!75761)))

(declare-fun res!56885 () Bool)

(declare-fun call!12439 () Bool)

(assert (=> b!116083 (= res!56885 call!12439)))

(assert (=> b!116083 (=> (not res!56885) (not e!75761))))

(declare-fun call!12440 () ListLongMap!1643)

(declare-fun c!20629 () Bool)

(declare-fun bm!12434 () Bool)

(assert (=> bm!12434 (= call!12436 (+!158 (ite c!20629 call!12440 (ite c!20631 call!12437 call!12438)) (ite (or c!20629 c!20631) (tuple2!2505 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2574 newMap!16)) (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 newMap!16)))))))

(declare-fun bm!12435 () Bool)

(assert (=> bm!12435 (= call!12437 call!12440)))

(declare-fun b!116084 () Bool)

(assert (=> b!116084 (= e!75763 call!12438)))

(declare-fun b!116085 () Bool)

(assert (=> b!116085 (= e!75761 (= (apply!104 lt!60284 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2574 newMap!16)))))

(declare-fun b!116086 () Bool)

(declare-fun res!56884 () Bool)

(assert (=> b!116086 (=> (not res!56884) (not e!75766))))

(assert (=> b!116086 (= res!56884 e!75755)))

(declare-fun c!20627 () Bool)

(assert (=> b!116086 (= c!20627 (not (= (bvand (extraKeys!2496 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!116087 () Bool)

(declare-fun e!75756 () Bool)

(assert (=> b!116087 (= e!75756 (validKeyInArray!0 (select (arr!2158 (_keys!4429 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!116088 () Bool)

(declare-fun c!20630 () Bool)

(assert (=> b!116088 (= c!20630 (and (not (= (bvand (extraKeys!2496 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2496 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!116088 (= e!75760 e!75763)))

(declare-fun b!116089 () Bool)

(assert (=> b!116089 (= e!75760 call!12434)))

(declare-fun bm!12436 () Bool)

(assert (=> bm!12436 (= call!12440 (getCurrentListMapNoExtraKeys!125 (_keys!4429 newMap!16) (_values!2690 newMap!16) (mask!6917 newMap!16) (extraKeys!2496 newMap!16) (zeroValue!2574 newMap!16) (minValue!2574 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2707 newMap!16)))))

(declare-fun bm!12437 () Bool)

(assert (=> bm!12437 (= call!12439 (contains!859 lt!60284 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!116090 () Bool)

(declare-fun e!75758 () Bool)

(assert (=> b!116090 (= e!75765 e!75758)))

(declare-fun res!56888 () Bool)

(assert (=> b!116090 (= res!56888 call!12435)))

(assert (=> b!116090 (=> (not res!56888) (not e!75758))))

(declare-fun b!116079 () Bool)

(assert (=> b!116079 (= e!75758 (= (apply!104 lt!60284 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2574 newMap!16)))))

(declare-fun d!32549 () Bool)

(assert (=> d!32549 e!75766))

(declare-fun res!56887 () Bool)

(assert (=> d!32549 (=> (not res!56887) (not e!75766))))

(assert (=> d!32549 (= res!56887 (or (bvsge #b00000000000000000000000000000000 (size!2418 (_keys!4429 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2418 (_keys!4429 newMap!16))))))))

(declare-fun lt!60295 () ListLongMap!1643)

(assert (=> d!32549 (= lt!60284 lt!60295)))

(declare-fun lt!60285 () Unit!3613)

(assert (=> d!32549 (= lt!60285 e!75762)))

(declare-fun c!20626 () Bool)

(assert (=> d!32549 (= c!20626 e!75756)))

(declare-fun res!56890 () Bool)

(assert (=> d!32549 (=> (not res!56890) (not e!75756))))

(assert (=> d!32549 (= res!56890 (bvslt #b00000000000000000000000000000000 (size!2418 (_keys!4429 newMap!16))))))

(assert (=> d!32549 (= lt!60295 e!75757)))

(assert (=> d!32549 (= c!20629 (and (not (= (bvand (extraKeys!2496 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2496 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!32549 (validMask!0 (mask!6917 newMap!16))))

(assert (=> d!32549 (= (getCurrentListMap!510 (_keys!4429 newMap!16) (_values!2690 newMap!16) (mask!6917 newMap!16) (extraKeys!2496 newMap!16) (zeroValue!2574 newMap!16) (minValue!2574 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2707 newMap!16)) lt!60284)))

(declare-fun b!116091 () Bool)

(assert (=> b!116091 (= e!75757 (+!158 call!12436 (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 newMap!16))))))

(declare-fun b!116092 () Bool)

(assert (=> b!116092 (= e!75755 (not call!12439))))

(declare-fun b!116093 () Bool)

(assert (=> b!116093 (= e!75765 (not call!12435))))

(assert (= (and d!32549 c!20629) b!116091))

(assert (= (and d!32549 (not c!20629)) b!116073))

(assert (= (and b!116073 c!20631) b!116089))

(assert (= (and b!116073 (not c!20631)) b!116088))

(assert (= (and b!116088 c!20630) b!116082))

(assert (= (and b!116088 (not c!20630)) b!116084))

(assert (= (or b!116082 b!116084) bm!12431))

(assert (= (or b!116089 bm!12431) bm!12435))

(assert (= (or b!116089 b!116082) bm!12433))

(assert (= (or b!116091 bm!12435) bm!12436))

(assert (= (or b!116091 bm!12433) bm!12434))

(assert (= (and d!32549 res!56890) b!116087))

(assert (= (and d!32549 c!20626) b!116074))

(assert (= (and d!32549 (not c!20626)) b!116076))

(assert (= (and d!32549 res!56887) b!116078))

(assert (= (and b!116078 res!56883) b!116077))

(assert (= (and b!116078 (not res!56886)) b!116075))

(assert (= (and b!116075 res!56891) b!116081))

(assert (= (and b!116078 res!56889) b!116086))

(assert (= (and b!116086 c!20627) b!116083))

(assert (= (and b!116086 (not c!20627)) b!116092))

(assert (= (and b!116083 res!56885) b!116085))

(assert (= (or b!116083 b!116092) bm!12437))

(assert (= (and b!116086 res!56884) b!116080))

(assert (= (and b!116080 c!20628) b!116090))

(assert (= (and b!116080 (not c!20628)) b!116093))

(assert (= (and b!116090 res!56888) b!116079))

(assert (= (or b!116090 b!116093) bm!12432))

(declare-fun b_lambda!5185 () Bool)

(assert (=> (not b_lambda!5185) (not b!116081)))

(declare-fun t!5965 () Bool)

(declare-fun tb!2237 () Bool)

(assert (=> (and b!115801 (= (defaultEntry!2707 (v!3030 (underlying!406 thiss!992))) (defaultEntry!2707 newMap!16)) t!5965) tb!2237))

(declare-fun result!3723 () Bool)

(assert (=> tb!2237 (= result!3723 tp_is_empty!2775)))

(assert (=> b!116081 t!5965))

(declare-fun b_and!7233 () Bool)

(assert (= b_and!7229 (and (=> t!5965 result!3723) b_and!7233)))

(declare-fun t!5967 () Bool)

(declare-fun tb!2239 () Bool)

(assert (=> (and b!115805 (= (defaultEntry!2707 newMap!16) (defaultEntry!2707 newMap!16)) t!5967) tb!2239))

(declare-fun result!3725 () Bool)

(assert (= result!3725 result!3723))

(assert (=> b!116081 t!5967))

(declare-fun b_and!7235 () Bool)

(assert (= b_and!7231 (and (=> t!5967 result!3725) b_and!7235)))

(assert (=> d!32549 m!132177))

(declare-fun m!132209 () Bool)

(assert (=> b!116079 m!132209))

(assert (=> b!116075 m!132161))

(assert (=> b!116075 m!132161))

(declare-fun m!132211 () Bool)

(assert (=> b!116075 m!132211))

(declare-fun m!132213 () Bool)

(assert (=> b!116091 m!132213))

(assert (=> b!116077 m!132161))

(assert (=> b!116077 m!132161))

(assert (=> b!116077 m!132163))

(declare-fun m!132215 () Bool)

(assert (=> bm!12432 m!132215))

(declare-fun m!132217 () Bool)

(assert (=> bm!12437 m!132217))

(declare-fun m!132219 () Bool)

(assert (=> bm!12436 m!132219))

(assert (=> b!116087 m!132161))

(assert (=> b!116087 m!132161))

(assert (=> b!116087 m!132163))

(assert (=> b!116081 m!132161))

(declare-fun m!132221 () Bool)

(assert (=> b!116081 m!132221))

(assert (=> b!116081 m!132221))

(declare-fun m!132223 () Bool)

(assert (=> b!116081 m!132223))

(declare-fun m!132225 () Bool)

(assert (=> b!116081 m!132225))

(assert (=> b!116081 m!132161))

(declare-fun m!132227 () Bool)

(assert (=> b!116081 m!132227))

(assert (=> b!116081 m!132223))

(declare-fun m!132229 () Bool)

(assert (=> bm!12434 m!132229))

(declare-fun m!132231 () Bool)

(assert (=> b!116074 m!132231))

(declare-fun m!132233 () Bool)

(assert (=> b!116074 m!132233))

(assert (=> b!116074 m!132219))

(declare-fun m!132235 () Bool)

(assert (=> b!116074 m!132235))

(assert (=> b!116074 m!132231))

(declare-fun m!132237 () Bool)

(assert (=> b!116074 m!132237))

(declare-fun m!132239 () Bool)

(assert (=> b!116074 m!132239))

(declare-fun m!132241 () Bool)

(assert (=> b!116074 m!132241))

(declare-fun m!132243 () Bool)

(assert (=> b!116074 m!132243))

(assert (=> b!116074 m!132161))

(declare-fun m!132245 () Bool)

(assert (=> b!116074 m!132245))

(declare-fun m!132247 () Bool)

(assert (=> b!116074 m!132247))

(assert (=> b!116074 m!132247))

(declare-fun m!132249 () Bool)

(assert (=> b!116074 m!132249))

(declare-fun m!132251 () Bool)

(assert (=> b!116074 m!132251))

(declare-fun m!132253 () Bool)

(assert (=> b!116074 m!132253))

(declare-fun m!132255 () Bool)

(assert (=> b!116074 m!132255))

(assert (=> b!116074 m!132253))

(declare-fun m!132257 () Bool)

(assert (=> b!116074 m!132257))

(assert (=> b!116074 m!132239))

(declare-fun m!132259 () Bool)

(assert (=> b!116074 m!132259))

(declare-fun m!132261 () Bool)

(assert (=> b!116085 m!132261))

(assert (=> d!32497 d!32549))

(declare-fun d!32551 () Bool)

(declare-fun e!75767 () Bool)

(assert (=> d!32551 e!75767))

(declare-fun res!56892 () Bool)

(assert (=> d!32551 (=> res!56892 e!75767)))

(declare-fun lt!60300 () Bool)

(assert (=> d!32551 (= res!56892 (not lt!60300))))

(declare-fun lt!60298 () Bool)

(assert (=> d!32551 (= lt!60300 lt!60298)))

(declare-fun lt!60297 () Unit!3613)

(declare-fun e!75768 () Unit!3613)

(assert (=> d!32551 (= lt!60297 e!75768)))

(declare-fun c!20632 () Bool)

(assert (=> d!32551 (= c!20632 lt!60298)))

(assert (=> d!32551 (= lt!60298 (containsKey!165 (toList!837 lt!60193) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!32551 (= (contains!859 lt!60193 #b1000000000000000000000000000000000000000000000000000000000000000) lt!60300)))

(declare-fun b!116094 () Bool)

(declare-fun lt!60299 () Unit!3613)

(assert (=> b!116094 (= e!75768 lt!60299)))

(assert (=> b!116094 (= lt!60299 (lemmaContainsKeyImpliesGetValueByKeyDefined!114 (toList!837 lt!60193) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!116094 (isDefined!115 (getValueByKey!161 (toList!837 lt!60193) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!116095 () Bool)

(declare-fun Unit!3621 () Unit!3613)

(assert (=> b!116095 (= e!75768 Unit!3621)))

(declare-fun b!116096 () Bool)

(assert (=> b!116096 (= e!75767 (isDefined!115 (getValueByKey!161 (toList!837 lt!60193) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!32551 c!20632) b!116094))

(assert (= (and d!32551 (not c!20632)) b!116095))

(assert (= (and d!32551 (not res!56892)) b!116096))

(declare-fun m!132263 () Bool)

(assert (=> d!32551 m!132263))

(declare-fun m!132265 () Bool)

(assert (=> b!116094 m!132265))

(assert (=> b!116094 m!132195))

(assert (=> b!116094 m!132195))

(declare-fun m!132267 () Bool)

(assert (=> b!116094 m!132267))

(assert (=> b!116096 m!132195))

(assert (=> b!116096 m!132195))

(assert (=> b!116096 m!132267))

(assert (=> bm!12413 d!32551))

(declare-fun d!32553 () Bool)

(assert (=> d!32553 (= (apply!104 lt!60171 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1408 (getValueByKey!161 (toList!837 lt!60171) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!4713 () Bool)

(assert (= bs!4713 d!32553))

(assert (=> bs!4713 m!132125))

(assert (=> bs!4713 m!132125))

(declare-fun m!132269 () Bool)

(assert (=> bs!4713 m!132269))

(assert (=> b!115900 d!32553))

(declare-fun b!116097 () Bool)

(declare-fun e!75769 () ListLongMap!1643)

(declare-fun call!12441 () ListLongMap!1643)

(assert (=> b!116097 (= e!75769 call!12441)))

(declare-fun bm!12438 () Bool)

(assert (=> bm!12438 (= call!12441 (getCurrentListMapNoExtraKeys!125 (_keys!4429 (v!3030 (underlying!406 thiss!992))) (_values!2690 (v!3030 (underlying!406 thiss!992))) (mask!6917 (v!3030 (underlying!406 thiss!992))) (extraKeys!2496 (v!3030 (underlying!406 thiss!992))) (zeroValue!2574 (v!3030 (underlying!406 thiss!992))) (minValue!2574 (v!3030 (underlying!406 thiss!992))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (defaultEntry!2707 (v!3030 (underlying!406 thiss!992)))))))

(declare-fun b!116098 () Bool)

(declare-fun e!75773 () Bool)

(assert (=> b!116098 (= e!75773 (validKeyInArray!0 (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)))))))

(assert (=> b!116098 (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)) #b00000000000000000000000000000000)))

(declare-fun b!116099 () Bool)

(declare-fun lt!60307 () ListLongMap!1643)

(declare-fun e!75775 () Bool)

(assert (=> b!116099 (= e!75775 (= lt!60307 (getCurrentListMapNoExtraKeys!125 (_keys!4429 (v!3030 (underlying!406 thiss!992))) (_values!2690 (v!3030 (underlying!406 thiss!992))) (mask!6917 (v!3030 (underlying!406 thiss!992))) (extraKeys!2496 (v!3030 (underlying!406 thiss!992))) (zeroValue!2574 (v!3030 (underlying!406 thiss!992))) (minValue!2574 (v!3030 (underlying!406 thiss!992))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (defaultEntry!2707 (v!3030 (underlying!406 thiss!992))))))))

(declare-fun b!116100 () Bool)

(declare-fun res!56896 () Bool)

(declare-fun e!75772 () Bool)

(assert (=> b!116100 (=> (not res!56896) (not e!75772))))

(assert (=> b!116100 (= res!56896 (not (contains!859 lt!60307 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!116101 () Bool)

(declare-fun e!75774 () ListLongMap!1643)

(assert (=> b!116101 (= e!75774 e!75769)))

(declare-fun c!20635 () Bool)

(assert (=> b!116101 (= c!20635 (validKeyInArray!0 (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)))))))

(declare-fun d!32555 () Bool)

(assert (=> d!32555 e!75772))

(declare-fun res!56893 () Bool)

(assert (=> d!32555 (=> (not res!56893) (not e!75772))))

(assert (=> d!32555 (= res!56893 (not (contains!859 lt!60307 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!32555 (= lt!60307 e!75774)))

(declare-fun c!20634 () Bool)

(assert (=> d!32555 (= c!20634 (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)) (size!2418 (_keys!4429 (v!3030 (underlying!406 thiss!992))))))))

(assert (=> d!32555 (validMask!0 (mask!6917 (v!3030 (underlying!406 thiss!992))))))

(assert (=> d!32555 (= (getCurrentListMapNoExtraKeys!125 (_keys!4429 (v!3030 (underlying!406 thiss!992))) (_values!2690 (v!3030 (underlying!406 thiss!992))) (mask!6917 (v!3030 (underlying!406 thiss!992))) (extraKeys!2496 (v!3030 (underlying!406 thiss!992))) (zeroValue!2574 (v!3030 (underlying!406 thiss!992))) (minValue!2574 (v!3030 (underlying!406 thiss!992))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)) (defaultEntry!2707 (v!3030 (underlying!406 thiss!992)))) lt!60307)))

(declare-fun b!116102 () Bool)

(assert (=> b!116102 (= e!75774 (ListLongMap!1644 Nil!1688))))

(declare-fun b!116103 () Bool)

(declare-fun e!75771 () Bool)

(assert (=> b!116103 (= e!75771 e!75775)))

(declare-fun c!20636 () Bool)

(assert (=> b!116103 (= c!20636 (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)) (size!2418 (_keys!4429 (v!3030 (underlying!406 thiss!992))))))))

(declare-fun b!116104 () Bool)

(assert (=> b!116104 (= e!75775 (isEmpty!391 lt!60307))))

(declare-fun b!116105 () Bool)

(declare-fun e!75770 () Bool)

(assert (=> b!116105 (= e!75771 e!75770)))

(assert (=> b!116105 (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)) (size!2418 (_keys!4429 (v!3030 (underlying!406 thiss!992))))))))

(declare-fun res!56894 () Bool)

(assert (=> b!116105 (= res!56894 (contains!859 lt!60307 (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)))))))

(assert (=> b!116105 (=> (not res!56894) (not e!75770))))

(declare-fun b!116106 () Bool)

(assert (=> b!116106 (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)) (size!2418 (_keys!4429 (v!3030 (underlying!406 thiss!992))))))))

(assert (=> b!116106 (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)) (size!2419 (_values!2690 (v!3030 (underlying!406 thiss!992))))))))

(assert (=> b!116106 (= e!75770 (= (apply!104 lt!60307 (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)))) (get!1407 (select (arr!2159 (_values!2690 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001))) (dynLambda!407 (defaultEntry!2707 (v!3030 (underlying!406 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!116107 () Bool)

(declare-fun lt!60303 () Unit!3613)

(declare-fun lt!60302 () Unit!3613)

(assert (=> b!116107 (= lt!60303 lt!60302)))

(declare-fun lt!60301 () (_ BitVec 64))

(declare-fun lt!60304 () (_ BitVec 64))

(declare-fun lt!60306 () V!3347)

(declare-fun lt!60305 () ListLongMap!1643)

(assert (=> b!116107 (not (contains!859 (+!158 lt!60305 (tuple2!2505 lt!60301 lt!60306)) lt!60304))))

(assert (=> b!116107 (= lt!60302 (addStillNotContains!54 lt!60305 lt!60301 lt!60306 lt!60304))))

(assert (=> b!116107 (= lt!60304 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!116107 (= lt!60306 (get!1407 (select (arr!2159 (_values!2690 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001))) (dynLambda!407 (defaultEntry!2707 (v!3030 (underlying!406 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!116107 (= lt!60301 (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001))))))

(assert (=> b!116107 (= lt!60305 call!12441)))

(assert (=> b!116107 (= e!75769 (+!158 call!12441 (tuple2!2505 (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001))) (get!1407 (select (arr!2159 (_values!2690 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001))) (dynLambda!407 (defaultEntry!2707 (v!3030 (underlying!406 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!116108 () Bool)

(assert (=> b!116108 (= e!75772 e!75771)))

(declare-fun c!20633 () Bool)

(assert (=> b!116108 (= c!20633 e!75773)))

(declare-fun res!56895 () Bool)

(assert (=> b!116108 (=> (not res!56895) (not e!75773))))

(assert (=> b!116108 (= res!56895 (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)) (size!2418 (_keys!4429 (v!3030 (underlying!406 thiss!992))))))))

(assert (= (and d!32555 c!20634) b!116102))

(assert (= (and d!32555 (not c!20634)) b!116101))

(assert (= (and b!116101 c!20635) b!116107))

(assert (= (and b!116101 (not c!20635)) b!116097))

(assert (= (or b!116107 b!116097) bm!12438))

(assert (= (and d!32555 res!56893) b!116100))

(assert (= (and b!116100 res!56896) b!116108))

(assert (= (and b!116108 res!56895) b!116098))

(assert (= (and b!116108 c!20633) b!116105))

(assert (= (and b!116108 (not c!20633)) b!116103))

(assert (= (and b!116105 res!56894) b!116106))

(assert (= (and b!116103 c!20636) b!116099))

(assert (= (and b!116103 (not c!20636)) b!116104))

(declare-fun b_lambda!5187 () Bool)

(assert (=> (not b_lambda!5187) (not b!116106)))

(assert (=> b!116106 t!5960))

(declare-fun b_and!7237 () Bool)

(assert (= b_and!7233 (and (=> t!5960 result!3715) b_and!7237)))

(assert (=> b!116106 t!5962))

(declare-fun b_and!7239 () Bool)

(assert (= b_and!7235 (and (=> t!5962 result!3719) b_and!7239)))

(declare-fun b_lambda!5189 () Bool)

(assert (=> (not b_lambda!5189) (not b!116107)))

(assert (=> b!116107 t!5960))

(declare-fun b_and!7241 () Bool)

(assert (= b_and!7237 (and (=> t!5960 result!3715) b_and!7241)))

(assert (=> b!116107 t!5962))

(declare-fun b_and!7243 () Bool)

(assert (= b_and!7239 (and (=> t!5962 result!3719) b_and!7243)))

(assert (=> b!116107 m!131995))

(declare-fun m!132271 () Bool)

(assert (=> b!116107 m!132271))

(assert (=> b!116107 m!132053))

(declare-fun m!132273 () Bool)

(assert (=> b!116107 m!132273))

(declare-fun m!132275 () Bool)

(assert (=> b!116107 m!132275))

(assert (=> b!116107 m!132039))

(assert (=> b!116107 m!132275))

(declare-fun m!132277 () Bool)

(assert (=> b!116107 m!132277))

(assert (=> b!116107 m!132053))

(assert (=> b!116107 m!131995))

(assert (=> b!116107 m!132055))

(assert (=> b!116101 m!132039))

(assert (=> b!116101 m!132039))

(assert (=> b!116101 m!132045))

(declare-fun m!132279 () Bool)

(assert (=> bm!12438 m!132279))

(declare-fun m!132281 () Bool)

(assert (=> b!116104 m!132281))

(assert (=> b!116098 m!132039))

(assert (=> b!116098 m!132039))

(assert (=> b!116098 m!132045))

(assert (=> b!116099 m!132279))

(assert (=> b!116106 m!131995))

(assert (=> b!116106 m!132039))

(assert (=> b!116106 m!132053))

(assert (=> b!116106 m!131995))

(assert (=> b!116106 m!132055))

(assert (=> b!116106 m!132053))

(assert (=> b!116106 m!132039))

(declare-fun m!132283 () Bool)

(assert (=> b!116106 m!132283))

(declare-fun m!132285 () Bool)

(assert (=> d!32555 m!132285))

(assert (=> d!32555 m!131975))

(assert (=> b!116105 m!132039))

(assert (=> b!116105 m!132039))

(declare-fun m!132287 () Bool)

(assert (=> b!116105 m!132287))

(declare-fun m!132289 () Bool)

(assert (=> b!116100 m!132289))

(assert (=> bm!12417 d!32555))

(declare-fun d!32557 () Bool)

(declare-fun e!75776 () Bool)

(assert (=> d!32557 e!75776))

(declare-fun res!56898 () Bool)

(assert (=> d!32557 (=> (not res!56898) (not e!75776))))

(declare-fun lt!60308 () ListLongMap!1643)

(assert (=> d!32557 (= res!56898 (contains!859 lt!60308 (_1!1262 (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(declare-fun lt!60311 () List!1691)

(assert (=> d!32557 (= lt!60308 (ListLongMap!1644 lt!60311))))

(declare-fun lt!60309 () Unit!3613)

(declare-fun lt!60310 () Unit!3613)

(assert (=> d!32557 (= lt!60309 lt!60310)))

(assert (=> d!32557 (= (getValueByKey!161 lt!60311 (_1!1262 (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))) (Some!166 (_2!1262 (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(assert (=> d!32557 (= lt!60310 (lemmaContainsTupThenGetReturnValue!79 lt!60311 (_1!1262 (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992))))) (_2!1262 (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(assert (=> d!32557 (= lt!60311 (insertStrictlySorted!81 (toList!837 call!12417) (_1!1262 (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992))))) (_2!1262 (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(assert (=> d!32557 (= (+!158 call!12417 (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992))))) lt!60308)))

(declare-fun b!116109 () Bool)

(declare-fun res!56897 () Bool)

(assert (=> b!116109 (=> (not res!56897) (not e!75776))))

(assert (=> b!116109 (= res!56897 (= (getValueByKey!161 (toList!837 lt!60308) (_1!1262 (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))) (Some!166 (_2!1262 (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992))))))))))

(declare-fun b!116110 () Bool)

(assert (=> b!116110 (= e!75776 (contains!860 (toList!837 lt!60308) (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992))))))))

(assert (= (and d!32557 res!56898) b!116109))

(assert (= (and b!116109 res!56897) b!116110))

(declare-fun m!132291 () Bool)

(assert (=> d!32557 m!132291))

(declare-fun m!132293 () Bool)

(assert (=> d!32557 m!132293))

(declare-fun m!132295 () Bool)

(assert (=> d!32557 m!132295))

(declare-fun m!132297 () Bool)

(assert (=> d!32557 m!132297))

(declare-fun m!132299 () Bool)

(assert (=> b!116109 m!132299))

(declare-fun m!132301 () Bool)

(assert (=> b!116110 m!132301))

(assert (=> b!115935 d!32557))

(declare-fun d!32559 () Bool)

(declare-fun e!75777 () Bool)

(assert (=> d!32559 e!75777))

(declare-fun res!56899 () Bool)

(assert (=> d!32559 (=> res!56899 e!75777)))

(declare-fun lt!60315 () Bool)

(assert (=> d!32559 (= res!56899 (not lt!60315))))

(declare-fun lt!60313 () Bool)

(assert (=> d!32559 (= lt!60315 lt!60313)))

(declare-fun lt!60312 () Unit!3613)

(declare-fun e!75778 () Unit!3613)

(assert (=> d!32559 (= lt!60312 e!75778)))

(declare-fun c!20637 () Bool)

(assert (=> d!32559 (= c!20637 lt!60313)))

(assert (=> d!32559 (= lt!60313 (containsKey!165 (toList!837 lt!60193) (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)))))))

(assert (=> d!32559 (= (contains!859 lt!60193 (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)))) lt!60315)))

(declare-fun b!116111 () Bool)

(declare-fun lt!60314 () Unit!3613)

(assert (=> b!116111 (= e!75778 lt!60314)))

(assert (=> b!116111 (= lt!60314 (lemmaContainsKeyImpliesGetValueByKeyDefined!114 (toList!837 lt!60193) (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)))))))

(assert (=> b!116111 (isDefined!115 (getValueByKey!161 (toList!837 lt!60193) (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)))))))

(declare-fun b!116112 () Bool)

(declare-fun Unit!3622 () Unit!3613)

(assert (=> b!116112 (= e!75778 Unit!3622)))

(declare-fun b!116113 () Bool)

(assert (=> b!116113 (= e!75777 (isDefined!115 (getValueByKey!161 (toList!837 lt!60193) (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001))))))))

(assert (= (and d!32559 c!20637) b!116111))

(assert (= (and d!32559 (not c!20637)) b!116112))

(assert (= (and d!32559 (not res!56899)) b!116113))

(assert (=> d!32559 m!132039))

(declare-fun m!132303 () Bool)

(assert (=> d!32559 m!132303))

(assert (=> b!116111 m!132039))

(declare-fun m!132305 () Bool)

(assert (=> b!116111 m!132305))

(assert (=> b!116111 m!132039))

(assert (=> b!116111 m!132105))

(assert (=> b!116111 m!132105))

(declare-fun m!132307 () Bool)

(assert (=> b!116111 m!132307))

(assert (=> b!116113 m!132039))

(assert (=> b!116113 m!132105))

(assert (=> b!116113 m!132105))

(assert (=> b!116113 m!132307))

(assert (=> b!115919 d!32559))

(declare-fun d!32561 () Bool)

(assert (=> d!32561 (= (apply!104 lt!60171 (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1408 (getValueByKey!161 (toList!837 lt!60171) (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun bs!4714 () Bool)

(assert (= bs!4714 d!32561))

(assert (=> bs!4714 m!131979))

(declare-fun m!132309 () Bool)

(assert (=> bs!4714 m!132309))

(assert (=> bs!4714 m!132309))

(declare-fun m!132311 () Bool)

(assert (=> bs!4714 m!132311))

(assert (=> b!115902 d!32561))

(declare-fun d!32563 () Bool)

(declare-fun c!20638 () Bool)

(assert (=> d!32563 (= c!20638 ((_ is ValueCellFull!1044) (select (arr!2159 (_values!2690 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun e!75779 () V!3347)

(assert (=> d!32563 (= (get!1407 (select (arr!2159 (_values!2690 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!407 (defaultEntry!2707 (v!3030 (underlying!406 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!75779)))

(declare-fun b!116114 () Bool)

(assert (=> b!116114 (= e!75779 (get!1409 (select (arr!2159 (_values!2690 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!407 (defaultEntry!2707 (v!3030 (underlying!406 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!116115 () Bool)

(assert (=> b!116115 (= e!75779 (get!1410 (select (arr!2159 (_values!2690 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!407 (defaultEntry!2707 (v!3030 (underlying!406 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!32563 c!20638) b!116114))

(assert (= (and d!32563 (not c!20638)) b!116115))

(assert (=> b!116114 m!131993))

(assert (=> b!116114 m!131995))

(declare-fun m!132313 () Bool)

(assert (=> b!116114 m!132313))

(assert (=> b!116115 m!131993))

(assert (=> b!116115 m!131995))

(declare-fun m!132315 () Bool)

(assert (=> b!116115 m!132315))

(assert (=> b!115902 d!32563))

(declare-fun d!32565 () Bool)

(declare-fun e!75780 () Bool)

(assert (=> d!32565 e!75780))

(declare-fun res!56901 () Bool)

(assert (=> d!32565 (=> (not res!56901) (not e!75780))))

(declare-fun lt!60316 () ListLongMap!1643)

(assert (=> d!32565 (= res!56901 (contains!859 lt!60316 (_1!1262 (tuple2!2505 lt!60192 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(declare-fun lt!60319 () List!1691)

(assert (=> d!32565 (= lt!60316 (ListLongMap!1644 lt!60319))))

(declare-fun lt!60317 () Unit!3613)

(declare-fun lt!60318 () Unit!3613)

(assert (=> d!32565 (= lt!60317 lt!60318)))

(assert (=> d!32565 (= (getValueByKey!161 lt!60319 (_1!1262 (tuple2!2505 lt!60192 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))) (Some!166 (_2!1262 (tuple2!2505 lt!60192 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(assert (=> d!32565 (= lt!60318 (lemmaContainsTupThenGetReturnValue!79 lt!60319 (_1!1262 (tuple2!2505 lt!60192 (minValue!2574 (v!3030 (underlying!406 thiss!992))))) (_2!1262 (tuple2!2505 lt!60192 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(assert (=> d!32565 (= lt!60319 (insertStrictlySorted!81 (toList!837 lt!60201) (_1!1262 (tuple2!2505 lt!60192 (minValue!2574 (v!3030 (underlying!406 thiss!992))))) (_2!1262 (tuple2!2505 lt!60192 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(assert (=> d!32565 (= (+!158 lt!60201 (tuple2!2505 lt!60192 (minValue!2574 (v!3030 (underlying!406 thiss!992))))) lt!60316)))

(declare-fun b!116116 () Bool)

(declare-fun res!56900 () Bool)

(assert (=> b!116116 (=> (not res!56900) (not e!75780))))

(assert (=> b!116116 (= res!56900 (= (getValueByKey!161 (toList!837 lt!60316) (_1!1262 (tuple2!2505 lt!60192 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))) (Some!166 (_2!1262 (tuple2!2505 lt!60192 (minValue!2574 (v!3030 (underlying!406 thiss!992))))))))))

(declare-fun b!116117 () Bool)

(assert (=> b!116117 (= e!75780 (contains!860 (toList!837 lt!60316) (tuple2!2505 lt!60192 (minValue!2574 (v!3030 (underlying!406 thiss!992))))))))

(assert (= (and d!32565 res!56901) b!116116))

(assert (= (and b!116116 res!56900) b!116117))

(declare-fun m!132317 () Bool)

(assert (=> d!32565 m!132317))

(declare-fun m!132319 () Bool)

(assert (=> d!32565 m!132319))

(declare-fun m!132321 () Bool)

(assert (=> d!32565 m!132321))

(declare-fun m!132323 () Bool)

(assert (=> d!32565 m!132323))

(declare-fun m!132325 () Bool)

(assert (=> b!116116 m!132325))

(declare-fun m!132327 () Bool)

(assert (=> b!116117 m!132327))

(assert (=> b!115918 d!32565))

(declare-fun d!32567 () Bool)

(declare-fun e!75781 () Bool)

(assert (=> d!32567 e!75781))

(declare-fun res!56903 () Bool)

(assert (=> d!32567 (=> (not res!56903) (not e!75781))))

(declare-fun lt!60320 () ListLongMap!1643)

(assert (=> d!32567 (= res!56903 (contains!859 lt!60320 (_1!1262 (tuple2!2505 lt!60203 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(declare-fun lt!60323 () List!1691)

(assert (=> d!32567 (= lt!60320 (ListLongMap!1644 lt!60323))))

(declare-fun lt!60321 () Unit!3613)

(declare-fun lt!60322 () Unit!3613)

(assert (=> d!32567 (= lt!60321 lt!60322)))

(assert (=> d!32567 (= (getValueByKey!161 lt!60323 (_1!1262 (tuple2!2505 lt!60203 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))) (Some!166 (_2!1262 (tuple2!2505 lt!60203 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(assert (=> d!32567 (= lt!60322 (lemmaContainsTupThenGetReturnValue!79 lt!60323 (_1!1262 (tuple2!2505 lt!60203 (minValue!2574 (v!3030 (underlying!406 thiss!992))))) (_2!1262 (tuple2!2505 lt!60203 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(assert (=> d!32567 (= lt!60323 (insertStrictlySorted!81 (toList!837 lt!60186) (_1!1262 (tuple2!2505 lt!60203 (minValue!2574 (v!3030 (underlying!406 thiss!992))))) (_2!1262 (tuple2!2505 lt!60203 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(assert (=> d!32567 (= (+!158 lt!60186 (tuple2!2505 lt!60203 (minValue!2574 (v!3030 (underlying!406 thiss!992))))) lt!60320)))

(declare-fun b!116118 () Bool)

(declare-fun res!56902 () Bool)

(assert (=> b!116118 (=> (not res!56902) (not e!75781))))

(assert (=> b!116118 (= res!56902 (= (getValueByKey!161 (toList!837 lt!60320) (_1!1262 (tuple2!2505 lt!60203 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))) (Some!166 (_2!1262 (tuple2!2505 lt!60203 (minValue!2574 (v!3030 (underlying!406 thiss!992))))))))))

(declare-fun b!116119 () Bool)

(assert (=> b!116119 (= e!75781 (contains!860 (toList!837 lt!60320) (tuple2!2505 lt!60203 (minValue!2574 (v!3030 (underlying!406 thiss!992))))))))

(assert (= (and d!32567 res!56903) b!116118))

(assert (= (and b!116118 res!56902) b!116119))

(declare-fun m!132329 () Bool)

(assert (=> d!32567 m!132329))

(declare-fun m!132331 () Bool)

(assert (=> d!32567 m!132331))

(declare-fun m!132333 () Bool)

(assert (=> d!32567 m!132333))

(declare-fun m!132335 () Bool)

(assert (=> d!32567 m!132335))

(declare-fun m!132337 () Bool)

(assert (=> b!116118 m!132337))

(declare-fun m!132339 () Bool)

(assert (=> b!116119 m!132339))

(assert (=> b!115918 d!32567))

(declare-fun d!32569 () Bool)

(assert (=> d!32569 (= (apply!104 (+!158 lt!60201 (tuple2!2505 lt!60192 (minValue!2574 (v!3030 (underlying!406 thiss!992))))) lt!60197) (get!1408 (getValueByKey!161 (toList!837 (+!158 lt!60201 (tuple2!2505 lt!60192 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))) lt!60197)))))

(declare-fun bs!4715 () Bool)

(assert (= bs!4715 d!32569))

(declare-fun m!132341 () Bool)

(assert (=> bs!4715 m!132341))

(assert (=> bs!4715 m!132341))

(declare-fun m!132343 () Bool)

(assert (=> bs!4715 m!132343))

(assert (=> b!115918 d!32569))

(declare-fun d!32571 () Bool)

(assert (=> d!32571 (= (apply!104 (+!158 lt!60185 (tuple2!2505 lt!60200 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))))) lt!60195) (get!1408 (getValueByKey!161 (toList!837 (+!158 lt!60185 (tuple2!2505 lt!60200 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))))) lt!60195)))))

(declare-fun bs!4716 () Bool)

(assert (= bs!4716 d!32571))

(declare-fun m!132345 () Bool)

(assert (=> bs!4716 m!132345))

(assert (=> bs!4716 m!132345))

(declare-fun m!132347 () Bool)

(assert (=> bs!4716 m!132347))

(assert (=> b!115918 d!32571))

(declare-fun d!32573 () Bool)

(assert (=> d!32573 (= (apply!104 lt!60186 lt!60205) (get!1408 (getValueByKey!161 (toList!837 lt!60186) lt!60205)))))

(declare-fun bs!4717 () Bool)

(assert (= bs!4717 d!32573))

(declare-fun m!132349 () Bool)

(assert (=> bs!4717 m!132349))

(assert (=> bs!4717 m!132349))

(declare-fun m!132351 () Bool)

(assert (=> bs!4717 m!132351))

(assert (=> b!115918 d!32573))

(declare-fun d!32575 () Bool)

(assert (=> d!32575 (= (apply!104 lt!60185 lt!60195) (get!1408 (getValueByKey!161 (toList!837 lt!60185) lt!60195)))))

(declare-fun bs!4718 () Bool)

(assert (= bs!4718 d!32575))

(declare-fun m!132353 () Bool)

(assert (=> bs!4718 m!132353))

(assert (=> bs!4718 m!132353))

(declare-fun m!132355 () Bool)

(assert (=> bs!4718 m!132355))

(assert (=> b!115918 d!32575))

(declare-fun d!32577 () Bool)

(assert (=> d!32577 (= (apply!104 (+!158 lt!60186 (tuple2!2505 lt!60203 (minValue!2574 (v!3030 (underlying!406 thiss!992))))) lt!60205) (apply!104 lt!60186 lt!60205))))

(declare-fun lt!60326 () Unit!3613)

(declare-fun choose!733 (ListLongMap!1643 (_ BitVec 64) V!3347 (_ BitVec 64)) Unit!3613)

(assert (=> d!32577 (= lt!60326 (choose!733 lt!60186 lt!60203 (minValue!2574 (v!3030 (underlying!406 thiss!992))) lt!60205))))

(declare-fun e!75784 () Bool)

(assert (=> d!32577 e!75784))

(declare-fun res!56906 () Bool)

(assert (=> d!32577 (=> (not res!56906) (not e!75784))))

(assert (=> d!32577 (= res!56906 (contains!859 lt!60186 lt!60205))))

(assert (=> d!32577 (= (addApplyDifferent!80 lt!60186 lt!60203 (minValue!2574 (v!3030 (underlying!406 thiss!992))) lt!60205) lt!60326)))

(declare-fun b!116123 () Bool)

(assert (=> b!116123 (= e!75784 (not (= lt!60205 lt!60203)))))

(assert (= (and d!32577 res!56906) b!116123))

(assert (=> d!32577 m!132061))

(assert (=> d!32577 m!132061))

(assert (=> d!32577 m!132067))

(assert (=> d!32577 m!132063))

(declare-fun m!132357 () Bool)

(assert (=> d!32577 m!132357))

(declare-fun m!132359 () Bool)

(assert (=> d!32577 m!132359))

(assert (=> b!115918 d!32577))

(declare-fun d!32579 () Bool)

(assert (=> d!32579 (= (apply!104 (+!158 lt!60201 (tuple2!2505 lt!60192 (minValue!2574 (v!3030 (underlying!406 thiss!992))))) lt!60197) (apply!104 lt!60201 lt!60197))))

(declare-fun lt!60327 () Unit!3613)

(assert (=> d!32579 (= lt!60327 (choose!733 lt!60201 lt!60192 (minValue!2574 (v!3030 (underlying!406 thiss!992))) lt!60197))))

(declare-fun e!75785 () Bool)

(assert (=> d!32579 e!75785))

(declare-fun res!56907 () Bool)

(assert (=> d!32579 (=> (not res!56907) (not e!75785))))

(assert (=> d!32579 (= res!56907 (contains!859 lt!60201 lt!60197))))

(assert (=> d!32579 (= (addApplyDifferent!80 lt!60201 lt!60192 (minValue!2574 (v!3030 (underlying!406 thiss!992))) lt!60197) lt!60327)))

(declare-fun b!116124 () Bool)

(assert (=> b!116124 (= e!75785 (not (= lt!60197 lt!60192)))))

(assert (= (and d!32579 res!56907) b!116124))

(assert (=> d!32579 m!132077))

(assert (=> d!32579 m!132077))

(assert (=> d!32579 m!132079))

(assert (=> d!32579 m!132065))

(declare-fun m!132361 () Bool)

(assert (=> d!32579 m!132361))

(declare-fun m!132363 () Bool)

(assert (=> d!32579 m!132363))

(assert (=> b!115918 d!32579))

(declare-fun d!32581 () Bool)

(declare-fun e!75786 () Bool)

(assert (=> d!32581 e!75786))

(declare-fun res!56909 () Bool)

(assert (=> d!32581 (=> (not res!56909) (not e!75786))))

(declare-fun lt!60328 () ListLongMap!1643)

(assert (=> d!32581 (= res!56909 (contains!859 lt!60328 (_1!1262 (tuple2!2505 lt!60200 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(declare-fun lt!60331 () List!1691)

(assert (=> d!32581 (= lt!60328 (ListLongMap!1644 lt!60331))))

(declare-fun lt!60329 () Unit!3613)

(declare-fun lt!60330 () Unit!3613)

(assert (=> d!32581 (= lt!60329 lt!60330)))

(assert (=> d!32581 (= (getValueByKey!161 lt!60331 (_1!1262 (tuple2!2505 lt!60200 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))))) (Some!166 (_2!1262 (tuple2!2505 lt!60200 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(assert (=> d!32581 (= lt!60330 (lemmaContainsTupThenGetReturnValue!79 lt!60331 (_1!1262 (tuple2!2505 lt!60200 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))))) (_2!1262 (tuple2!2505 lt!60200 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(assert (=> d!32581 (= lt!60331 (insertStrictlySorted!81 (toList!837 lt!60185) (_1!1262 (tuple2!2505 lt!60200 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))))) (_2!1262 (tuple2!2505 lt!60200 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(assert (=> d!32581 (= (+!158 lt!60185 (tuple2!2505 lt!60200 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))))) lt!60328)))

(declare-fun b!116125 () Bool)

(declare-fun res!56908 () Bool)

(assert (=> b!116125 (=> (not res!56908) (not e!75786))))

(assert (=> b!116125 (= res!56908 (= (getValueByKey!161 (toList!837 lt!60328) (_1!1262 (tuple2!2505 lt!60200 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))))) (Some!166 (_2!1262 (tuple2!2505 lt!60200 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))))))))))

(declare-fun b!116126 () Bool)

(assert (=> b!116126 (= e!75786 (contains!860 (toList!837 lt!60328) (tuple2!2505 lt!60200 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))))))))

(assert (= (and d!32581 res!56909) b!116125))

(assert (= (and b!116125 res!56908) b!116126))

(declare-fun m!132365 () Bool)

(assert (=> d!32581 m!132365))

(declare-fun m!132367 () Bool)

(assert (=> d!32581 m!132367))

(declare-fun m!132369 () Bool)

(assert (=> d!32581 m!132369))

(declare-fun m!132371 () Bool)

(assert (=> d!32581 m!132371))

(declare-fun m!132373 () Bool)

(assert (=> b!116125 m!132373))

(declare-fun m!132375 () Bool)

(assert (=> b!116126 m!132375))

(assert (=> b!115918 d!32581))

(declare-fun d!32583 () Bool)

(assert (=> d!32583 (= (apply!104 lt!60201 lt!60197) (get!1408 (getValueByKey!161 (toList!837 lt!60201) lt!60197)))))

(declare-fun bs!4719 () Bool)

(assert (= bs!4719 d!32583))

(declare-fun m!132377 () Bool)

(assert (=> bs!4719 m!132377))

(assert (=> bs!4719 m!132377))

(declare-fun m!132379 () Bool)

(assert (=> bs!4719 m!132379))

(assert (=> b!115918 d!32583))

(declare-fun d!32585 () Bool)

(assert (=> d!32585 (= (apply!104 (+!158 lt!60186 (tuple2!2505 lt!60203 (minValue!2574 (v!3030 (underlying!406 thiss!992))))) lt!60205) (get!1408 (getValueByKey!161 (toList!837 (+!158 lt!60186 (tuple2!2505 lt!60203 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))) lt!60205)))))

(declare-fun bs!4720 () Bool)

(assert (= bs!4720 d!32585))

(declare-fun m!132381 () Bool)

(assert (=> bs!4720 m!132381))

(assert (=> bs!4720 m!132381))

(declare-fun m!132383 () Bool)

(assert (=> bs!4720 m!132383))

(assert (=> b!115918 d!32585))

(declare-fun d!32587 () Bool)

(assert (=> d!32587 (= (apply!104 (+!158 lt!60185 (tuple2!2505 lt!60200 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))))) lt!60195) (apply!104 lt!60185 lt!60195))))

(declare-fun lt!60332 () Unit!3613)

(assert (=> d!32587 (= lt!60332 (choose!733 lt!60185 lt!60200 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))) lt!60195))))

(declare-fun e!75787 () Bool)

(assert (=> d!32587 e!75787))

(declare-fun res!56910 () Bool)

(assert (=> d!32587 (=> (not res!56910) (not e!75787))))

(assert (=> d!32587 (= res!56910 (contains!859 lt!60185 lt!60195))))

(assert (=> d!32587 (= (addApplyDifferent!80 lt!60185 lt!60200 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))) lt!60195) lt!60332)))

(declare-fun b!116127 () Bool)

(assert (=> b!116127 (= e!75787 (not (= lt!60195 lt!60200)))))

(assert (= (and d!32587 res!56910) b!116127))

(assert (=> d!32587 m!132069))

(assert (=> d!32587 m!132069))

(assert (=> d!32587 m!132089))

(assert (=> d!32587 m!132075))

(declare-fun m!132385 () Bool)

(assert (=> d!32587 m!132385))

(declare-fun m!132387 () Bool)

(assert (=> d!32587 m!132387))

(assert (=> b!115918 d!32587))

(declare-fun d!32589 () Bool)

(declare-fun e!75788 () Bool)

(assert (=> d!32589 e!75788))

(declare-fun res!56912 () Bool)

(assert (=> d!32589 (=> (not res!56912) (not e!75788))))

(declare-fun lt!60333 () ListLongMap!1643)

(assert (=> d!32589 (= res!56912 (contains!859 lt!60333 (_1!1262 (tuple2!2505 lt!60189 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(declare-fun lt!60336 () List!1691)

(assert (=> d!32589 (= lt!60333 (ListLongMap!1644 lt!60336))))

(declare-fun lt!60334 () Unit!3613)

(declare-fun lt!60335 () Unit!3613)

(assert (=> d!32589 (= lt!60334 lt!60335)))

(assert (=> d!32589 (= (getValueByKey!161 lt!60336 (_1!1262 (tuple2!2505 lt!60189 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))))) (Some!166 (_2!1262 (tuple2!2505 lt!60189 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(assert (=> d!32589 (= lt!60335 (lemmaContainsTupThenGetReturnValue!79 lt!60336 (_1!1262 (tuple2!2505 lt!60189 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))))) (_2!1262 (tuple2!2505 lt!60189 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(assert (=> d!32589 (= lt!60336 (insertStrictlySorted!81 (toList!837 lt!60199) (_1!1262 (tuple2!2505 lt!60189 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))))) (_2!1262 (tuple2!2505 lt!60189 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(assert (=> d!32589 (= (+!158 lt!60199 (tuple2!2505 lt!60189 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))))) lt!60333)))

(declare-fun b!116128 () Bool)

(declare-fun res!56911 () Bool)

(assert (=> b!116128 (=> (not res!56911) (not e!75788))))

(assert (=> b!116128 (= res!56911 (= (getValueByKey!161 (toList!837 lt!60333) (_1!1262 (tuple2!2505 lt!60189 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))))) (Some!166 (_2!1262 (tuple2!2505 lt!60189 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))))))))))

(declare-fun b!116129 () Bool)

(assert (=> b!116129 (= e!75788 (contains!860 (toList!837 lt!60333) (tuple2!2505 lt!60189 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))))))))

(assert (= (and d!32589 res!56912) b!116128))

(assert (= (and b!116128 res!56911) b!116129))

(declare-fun m!132389 () Bool)

(assert (=> d!32589 m!132389))

(declare-fun m!132391 () Bool)

(assert (=> d!32589 m!132391))

(declare-fun m!132393 () Bool)

(assert (=> d!32589 m!132393))

(declare-fun m!132395 () Bool)

(assert (=> d!32589 m!132395))

(declare-fun m!132397 () Bool)

(assert (=> b!116128 m!132397))

(declare-fun m!132399 () Bool)

(assert (=> b!116129 m!132399))

(assert (=> b!115918 d!32589))

(declare-fun d!32591 () Bool)

(declare-fun e!75789 () Bool)

(assert (=> d!32591 e!75789))

(declare-fun res!56913 () Bool)

(assert (=> d!32591 (=> res!56913 e!75789)))

(declare-fun lt!60340 () Bool)

(assert (=> d!32591 (= res!56913 (not lt!60340))))

(declare-fun lt!60338 () Bool)

(assert (=> d!32591 (= lt!60340 lt!60338)))

(declare-fun lt!60337 () Unit!3613)

(declare-fun e!75790 () Unit!3613)

(assert (=> d!32591 (= lt!60337 e!75790)))

(declare-fun c!20639 () Bool)

(assert (=> d!32591 (= c!20639 lt!60338)))

(assert (=> d!32591 (= lt!60338 (containsKey!165 (toList!837 (+!158 lt!60199 (tuple2!2505 lt!60189 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))))) lt!60196))))

(assert (=> d!32591 (= (contains!859 (+!158 lt!60199 (tuple2!2505 lt!60189 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))))) lt!60196) lt!60340)))

(declare-fun b!116130 () Bool)

(declare-fun lt!60339 () Unit!3613)

(assert (=> b!116130 (= e!75790 lt!60339)))

(assert (=> b!116130 (= lt!60339 (lemmaContainsKeyImpliesGetValueByKeyDefined!114 (toList!837 (+!158 lt!60199 (tuple2!2505 lt!60189 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))))) lt!60196))))

(assert (=> b!116130 (isDefined!115 (getValueByKey!161 (toList!837 (+!158 lt!60199 (tuple2!2505 lt!60189 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))))) lt!60196))))

(declare-fun b!116131 () Bool)

(declare-fun Unit!3623 () Unit!3613)

(assert (=> b!116131 (= e!75790 Unit!3623)))

(declare-fun b!116132 () Bool)

(assert (=> b!116132 (= e!75789 (isDefined!115 (getValueByKey!161 (toList!837 (+!158 lt!60199 (tuple2!2505 lt!60189 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))))) lt!60196)))))

(assert (= (and d!32591 c!20639) b!116130))

(assert (= (and d!32591 (not c!20639)) b!116131))

(assert (= (and d!32591 (not res!56913)) b!116132))

(declare-fun m!132401 () Bool)

(assert (=> d!32591 m!132401))

(declare-fun m!132403 () Bool)

(assert (=> b!116130 m!132403))

(declare-fun m!132405 () Bool)

(assert (=> b!116130 m!132405))

(assert (=> b!116130 m!132405))

(declare-fun m!132407 () Bool)

(assert (=> b!116130 m!132407))

(assert (=> b!116132 m!132405))

(assert (=> b!116132 m!132405))

(assert (=> b!116132 m!132407))

(assert (=> b!115918 d!32591))

(declare-fun d!32593 () Bool)

(assert (=> d!32593 (contains!859 (+!158 lt!60199 (tuple2!2505 lt!60189 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))))) lt!60196)))

(declare-fun lt!60343 () Unit!3613)

(declare-fun choose!734 (ListLongMap!1643 (_ BitVec 64) V!3347 (_ BitVec 64)) Unit!3613)

(assert (=> d!32593 (= lt!60343 (choose!734 lt!60199 lt!60189 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))) lt!60196))))

(assert (=> d!32593 (contains!859 lt!60199 lt!60196)))

(assert (=> d!32593 (= (addStillContains!80 lt!60199 lt!60189 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))) lt!60196) lt!60343)))

(declare-fun bs!4721 () Bool)

(assert (= bs!4721 d!32593))

(assert (=> bs!4721 m!132083))

(assert (=> bs!4721 m!132083))

(assert (=> bs!4721 m!132085))

(declare-fun m!132409 () Bool)

(assert (=> bs!4721 m!132409))

(declare-fun m!132411 () Bool)

(assert (=> bs!4721 m!132411))

(assert (=> b!115918 d!32593))

(assert (=> b!115918 d!32555))

(declare-fun d!32595 () Bool)

(assert (=> d!32595 (= (apply!104 lt!60193 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1408 (getValueByKey!161 (toList!837 lt!60193) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!4722 () Bool)

(assert (= bs!4722 d!32595))

(assert (=> bs!4722 m!132205))

(assert (=> bs!4722 m!132205))

(declare-fun m!132413 () Bool)

(assert (=> bs!4722 m!132413))

(assert (=> b!115929 d!32595))

(declare-fun d!32597 () Bool)

(declare-fun e!75791 () Bool)

(assert (=> d!32597 e!75791))

(declare-fun res!56914 () Bool)

(assert (=> d!32597 (=> res!56914 e!75791)))

(declare-fun lt!60347 () Bool)

(assert (=> d!32597 (= res!56914 (not lt!60347))))

(declare-fun lt!60345 () Bool)

(assert (=> d!32597 (= lt!60347 lt!60345)))

(declare-fun lt!60344 () Unit!3613)

(declare-fun e!75792 () Unit!3613)

(assert (=> d!32597 (= lt!60344 e!75792)))

(declare-fun c!20640 () Bool)

(assert (=> d!32597 (= c!20640 lt!60345)))

(assert (=> d!32597 (= lt!60345 (containsKey!165 (toList!837 lt!60171) (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> d!32597 (= (contains!859 lt!60171 (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!60347)))

(declare-fun b!116134 () Bool)

(declare-fun lt!60346 () Unit!3613)

(assert (=> b!116134 (= e!75792 lt!60346)))

(assert (=> b!116134 (= lt!60346 (lemmaContainsKeyImpliesGetValueByKeyDefined!114 (toList!837 lt!60171) (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!116134 (isDefined!115 (getValueByKey!161 (toList!837 lt!60171) (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!116135 () Bool)

(declare-fun Unit!3624 () Unit!3613)

(assert (=> b!116135 (= e!75792 Unit!3624)))

(declare-fun b!116136 () Bool)

(assert (=> b!116136 (= e!75791 (isDefined!115 (getValueByKey!161 (toList!837 lt!60171) (select (arr!2158 (_keys!4429 (v!3030 (underlying!406 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (= (and d!32597 c!20640) b!116134))

(assert (= (and d!32597 (not c!20640)) b!116135))

(assert (= (and d!32597 (not res!56914)) b!116136))

(assert (=> d!32597 m!131979))

(declare-fun m!132415 () Bool)

(assert (=> d!32597 m!132415))

(assert (=> b!116134 m!131979))

(declare-fun m!132417 () Bool)

(assert (=> b!116134 m!132417))

(assert (=> b!116134 m!131979))

(assert (=> b!116134 m!132309))

(assert (=> b!116134 m!132309))

(declare-fun m!132419 () Bool)

(assert (=> b!116134 m!132419))

(assert (=> b!116136 m!131979))

(assert (=> b!116136 m!132309))

(assert (=> b!116136 m!132309))

(assert (=> b!116136 m!132419))

(assert (=> b!115896 d!32597))

(declare-fun d!32599 () Bool)

(assert (=> d!32599 (= (apply!104 lt!60164 lt!60183) (get!1408 (getValueByKey!161 (toList!837 lt!60164) lt!60183)))))

(declare-fun bs!4723 () Bool)

(assert (= bs!4723 d!32599))

(declare-fun m!132421 () Bool)

(assert (=> bs!4723 m!132421))

(assert (=> bs!4723 m!132421))

(declare-fun m!132423 () Bool)

(assert (=> bs!4723 m!132423))

(assert (=> b!115895 d!32599))

(declare-fun d!32601 () Bool)

(declare-fun e!75793 () Bool)

(assert (=> d!32601 e!75793))

(declare-fun res!56916 () Bool)

(assert (=> d!32601 (=> (not res!56916) (not e!75793))))

(declare-fun lt!60348 () ListLongMap!1643)

(assert (=> d!32601 (= res!56916 (contains!859 lt!60348 (_1!1262 (tuple2!2505 lt!60178 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(declare-fun lt!60351 () List!1691)

(assert (=> d!32601 (= lt!60348 (ListLongMap!1644 lt!60351))))

(declare-fun lt!60349 () Unit!3613)

(declare-fun lt!60350 () Unit!3613)

(assert (=> d!32601 (= lt!60349 lt!60350)))

(assert (=> d!32601 (= (getValueByKey!161 lt!60351 (_1!1262 (tuple2!2505 lt!60178 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))))) (Some!166 (_2!1262 (tuple2!2505 lt!60178 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(assert (=> d!32601 (= lt!60350 (lemmaContainsTupThenGetReturnValue!79 lt!60351 (_1!1262 (tuple2!2505 lt!60178 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))))) (_2!1262 (tuple2!2505 lt!60178 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(assert (=> d!32601 (= lt!60351 (insertStrictlySorted!81 (toList!837 lt!60163) (_1!1262 (tuple2!2505 lt!60178 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))))) (_2!1262 (tuple2!2505 lt!60178 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(assert (=> d!32601 (= (+!158 lt!60163 (tuple2!2505 lt!60178 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))))) lt!60348)))

(declare-fun b!116137 () Bool)

(declare-fun res!56915 () Bool)

(assert (=> b!116137 (=> (not res!56915) (not e!75793))))

(assert (=> b!116137 (= res!56915 (= (getValueByKey!161 (toList!837 lt!60348) (_1!1262 (tuple2!2505 lt!60178 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))))) (Some!166 (_2!1262 (tuple2!2505 lt!60178 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))))))))))

(declare-fun b!116138 () Bool)

(assert (=> b!116138 (= e!75793 (contains!860 (toList!837 lt!60348) (tuple2!2505 lt!60178 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))))))))

(assert (= (and d!32601 res!56916) b!116137))

(assert (= (and b!116137 res!56915) b!116138))

(declare-fun m!132425 () Bool)

(assert (=> d!32601 m!132425))

(declare-fun m!132427 () Bool)

(assert (=> d!32601 m!132427))

(declare-fun m!132429 () Bool)

(assert (=> d!32601 m!132429))

(declare-fun m!132431 () Bool)

(assert (=> d!32601 m!132431))

(declare-fun m!132433 () Bool)

(assert (=> b!116137 m!132433))

(declare-fun m!132435 () Bool)

(assert (=> b!116138 m!132435))

(assert (=> b!115895 d!32601))

(assert (=> b!115895 d!32525))

(declare-fun d!32603 () Bool)

(assert (=> d!32603 (= (apply!104 (+!158 lt!60163 (tuple2!2505 lt!60178 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))))) lt!60173) (get!1408 (getValueByKey!161 (toList!837 (+!158 lt!60163 (tuple2!2505 lt!60178 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))))) lt!60173)))))

(declare-fun bs!4724 () Bool)

(assert (= bs!4724 d!32603))

(declare-fun m!132437 () Bool)

(assert (=> bs!4724 m!132437))

(assert (=> bs!4724 m!132437))

(declare-fun m!132439 () Bool)

(assert (=> bs!4724 m!132439))

(assert (=> b!115895 d!32603))

(declare-fun d!32605 () Bool)

(assert (=> d!32605 (= (apply!104 (+!158 lt!60164 (tuple2!2505 lt!60181 (minValue!2574 (v!3030 (underlying!406 thiss!992))))) lt!60183) (get!1408 (getValueByKey!161 (toList!837 (+!158 lt!60164 (tuple2!2505 lt!60181 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))) lt!60183)))))

(declare-fun bs!4725 () Bool)

(assert (= bs!4725 d!32605))

(declare-fun m!132441 () Bool)

(assert (=> bs!4725 m!132441))

(assert (=> bs!4725 m!132441))

(declare-fun m!132443 () Bool)

(assert (=> bs!4725 m!132443))

(assert (=> b!115895 d!32605))

(declare-fun d!32607 () Bool)

(assert (=> d!32607 (= (apply!104 (+!158 lt!60179 (tuple2!2505 lt!60170 (minValue!2574 (v!3030 (underlying!406 thiss!992))))) lt!60175) (apply!104 lt!60179 lt!60175))))

(declare-fun lt!60352 () Unit!3613)

(assert (=> d!32607 (= lt!60352 (choose!733 lt!60179 lt!60170 (minValue!2574 (v!3030 (underlying!406 thiss!992))) lt!60175))))

(declare-fun e!75794 () Bool)

(assert (=> d!32607 e!75794))

(declare-fun res!56917 () Bool)

(assert (=> d!32607 (=> (not res!56917) (not e!75794))))

(assert (=> d!32607 (= res!56917 (contains!859 lt!60179 lt!60175))))

(assert (=> d!32607 (= (addApplyDifferent!80 lt!60179 lt!60170 (minValue!2574 (v!3030 (underlying!406 thiss!992))) lt!60175) lt!60352)))

(declare-fun b!116139 () Bool)

(assert (=> b!116139 (= e!75794 (not (= lt!60175 lt!60170)))))

(assert (= (and d!32607 res!56917) b!116139))

(assert (=> d!32607 m!132019))

(assert (=> d!32607 m!132019))

(assert (=> d!32607 m!132021))

(assert (=> d!32607 m!132007))

(declare-fun m!132445 () Bool)

(assert (=> d!32607 m!132445))

(declare-fun m!132447 () Bool)

(assert (=> d!32607 m!132447))

(assert (=> b!115895 d!32607))

(declare-fun d!32609 () Bool)

(declare-fun e!75795 () Bool)

(assert (=> d!32609 e!75795))

(declare-fun res!56918 () Bool)

(assert (=> d!32609 (=> res!56918 e!75795)))

(declare-fun lt!60356 () Bool)

(assert (=> d!32609 (= res!56918 (not lt!60356))))

(declare-fun lt!60354 () Bool)

(assert (=> d!32609 (= lt!60356 lt!60354)))

(declare-fun lt!60353 () Unit!3613)

(declare-fun e!75796 () Unit!3613)

(assert (=> d!32609 (= lt!60353 e!75796)))

(declare-fun c!20641 () Bool)

(assert (=> d!32609 (= c!20641 lt!60354)))

(assert (=> d!32609 (= lt!60354 (containsKey!165 (toList!837 (+!158 lt!60177 (tuple2!2505 lt!60167 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))))) lt!60174))))

(assert (=> d!32609 (= (contains!859 (+!158 lt!60177 (tuple2!2505 lt!60167 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))))) lt!60174) lt!60356)))

(declare-fun b!116140 () Bool)

(declare-fun lt!60355 () Unit!3613)

(assert (=> b!116140 (= e!75796 lt!60355)))

(assert (=> b!116140 (= lt!60355 (lemmaContainsKeyImpliesGetValueByKeyDefined!114 (toList!837 (+!158 lt!60177 (tuple2!2505 lt!60167 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))))) lt!60174))))

(assert (=> b!116140 (isDefined!115 (getValueByKey!161 (toList!837 (+!158 lt!60177 (tuple2!2505 lt!60167 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))))) lt!60174))))

(declare-fun b!116141 () Bool)

(declare-fun Unit!3625 () Unit!3613)

(assert (=> b!116141 (= e!75796 Unit!3625)))

(declare-fun b!116142 () Bool)

(assert (=> b!116142 (= e!75795 (isDefined!115 (getValueByKey!161 (toList!837 (+!158 lt!60177 (tuple2!2505 lt!60167 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))))) lt!60174)))))

(assert (= (and d!32609 c!20641) b!116140))

(assert (= (and d!32609 (not c!20641)) b!116141))

(assert (= (and d!32609 (not res!56918)) b!116142))

(declare-fun m!132449 () Bool)

(assert (=> d!32609 m!132449))

(declare-fun m!132451 () Bool)

(assert (=> b!116140 m!132451))

(declare-fun m!132453 () Bool)

(assert (=> b!116140 m!132453))

(assert (=> b!116140 m!132453))

(declare-fun m!132455 () Bool)

(assert (=> b!116140 m!132455))

(assert (=> b!116142 m!132453))

(assert (=> b!116142 m!132453))

(assert (=> b!116142 m!132455))

(assert (=> b!115895 d!32609))

(declare-fun d!32611 () Bool)

(assert (=> d!32611 (= (apply!104 lt!60179 lt!60175) (get!1408 (getValueByKey!161 (toList!837 lt!60179) lt!60175)))))

(declare-fun bs!4726 () Bool)

(assert (= bs!4726 d!32611))

(declare-fun m!132457 () Bool)

(assert (=> bs!4726 m!132457))

(assert (=> bs!4726 m!132457))

(declare-fun m!132459 () Bool)

(assert (=> bs!4726 m!132459))

(assert (=> b!115895 d!32611))

(declare-fun d!32613 () Bool)

(assert (=> d!32613 (contains!859 (+!158 lt!60177 (tuple2!2505 lt!60167 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))))) lt!60174)))

(declare-fun lt!60357 () Unit!3613)

(assert (=> d!32613 (= lt!60357 (choose!734 lt!60177 lt!60167 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))) lt!60174))))

(assert (=> d!32613 (contains!859 lt!60177 lt!60174)))

(assert (=> d!32613 (= (addStillContains!80 lt!60177 lt!60167 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))) lt!60174) lt!60357)))

(declare-fun bs!4727 () Bool)

(assert (= bs!4727 d!32613))

(assert (=> bs!4727 m!132025))

(assert (=> bs!4727 m!132025))

(assert (=> bs!4727 m!132027))

(declare-fun m!132461 () Bool)

(assert (=> bs!4727 m!132461))

(declare-fun m!132463 () Bool)

(assert (=> bs!4727 m!132463))

(assert (=> b!115895 d!32613))

(declare-fun d!32615 () Bool)

(declare-fun e!75797 () Bool)

(assert (=> d!32615 e!75797))

(declare-fun res!56920 () Bool)

(assert (=> d!32615 (=> (not res!56920) (not e!75797))))

(declare-fun lt!60358 () ListLongMap!1643)

(assert (=> d!32615 (= res!56920 (contains!859 lt!60358 (_1!1262 (tuple2!2505 lt!60167 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(declare-fun lt!60361 () List!1691)

(assert (=> d!32615 (= lt!60358 (ListLongMap!1644 lt!60361))))

(declare-fun lt!60359 () Unit!3613)

(declare-fun lt!60360 () Unit!3613)

(assert (=> d!32615 (= lt!60359 lt!60360)))

(assert (=> d!32615 (= (getValueByKey!161 lt!60361 (_1!1262 (tuple2!2505 lt!60167 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))))) (Some!166 (_2!1262 (tuple2!2505 lt!60167 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(assert (=> d!32615 (= lt!60360 (lemmaContainsTupThenGetReturnValue!79 lt!60361 (_1!1262 (tuple2!2505 lt!60167 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))))) (_2!1262 (tuple2!2505 lt!60167 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(assert (=> d!32615 (= lt!60361 (insertStrictlySorted!81 (toList!837 lt!60177) (_1!1262 (tuple2!2505 lt!60167 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))))) (_2!1262 (tuple2!2505 lt!60167 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(assert (=> d!32615 (= (+!158 lt!60177 (tuple2!2505 lt!60167 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))))) lt!60358)))

(declare-fun b!116143 () Bool)

(declare-fun res!56919 () Bool)

(assert (=> b!116143 (=> (not res!56919) (not e!75797))))

(assert (=> b!116143 (= res!56919 (= (getValueByKey!161 (toList!837 lt!60358) (_1!1262 (tuple2!2505 lt!60167 (zeroValue!2574 (v!3030 (underlying!406 thiss!992)))))) (Some!166 (_2!1262 (tuple2!2505 lt!60167 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))))))))))

(declare-fun b!116144 () Bool)

(assert (=> b!116144 (= e!75797 (contains!860 (toList!837 lt!60358) (tuple2!2505 lt!60167 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))))))))

(assert (= (and d!32615 res!56920) b!116143))

(assert (= (and b!116143 res!56919) b!116144))

(declare-fun m!132465 () Bool)

(assert (=> d!32615 m!132465))

(declare-fun m!132467 () Bool)

(assert (=> d!32615 m!132467))

(declare-fun m!132469 () Bool)

(assert (=> d!32615 m!132469))

(declare-fun m!132471 () Bool)

(assert (=> d!32615 m!132471))

(declare-fun m!132473 () Bool)

(assert (=> b!116143 m!132473))

(declare-fun m!132475 () Bool)

(assert (=> b!116144 m!132475))

(assert (=> b!115895 d!32615))

(declare-fun d!32617 () Bool)

(assert (=> d!32617 (= (apply!104 lt!60163 lt!60173) (get!1408 (getValueByKey!161 (toList!837 lt!60163) lt!60173)))))

(declare-fun bs!4728 () Bool)

(assert (= bs!4728 d!32617))

(declare-fun m!132477 () Bool)

(assert (=> bs!4728 m!132477))

(assert (=> bs!4728 m!132477))

(declare-fun m!132479 () Bool)

(assert (=> bs!4728 m!132479))

(assert (=> b!115895 d!32617))

(declare-fun d!32619 () Bool)

(assert (=> d!32619 (= (apply!104 (+!158 lt!60179 (tuple2!2505 lt!60170 (minValue!2574 (v!3030 (underlying!406 thiss!992))))) lt!60175) (get!1408 (getValueByKey!161 (toList!837 (+!158 lt!60179 (tuple2!2505 lt!60170 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))) lt!60175)))))

(declare-fun bs!4729 () Bool)

(assert (= bs!4729 d!32619))

(declare-fun m!132481 () Bool)

(assert (=> bs!4729 m!132481))

(assert (=> bs!4729 m!132481))

(declare-fun m!132483 () Bool)

(assert (=> bs!4729 m!132483))

(assert (=> b!115895 d!32619))

(declare-fun d!32621 () Bool)

(declare-fun e!75798 () Bool)

(assert (=> d!32621 e!75798))

(declare-fun res!56922 () Bool)

(assert (=> d!32621 (=> (not res!56922) (not e!75798))))

(declare-fun lt!60362 () ListLongMap!1643)

(assert (=> d!32621 (= res!56922 (contains!859 lt!60362 (_1!1262 (tuple2!2505 lt!60170 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(declare-fun lt!60365 () List!1691)

(assert (=> d!32621 (= lt!60362 (ListLongMap!1644 lt!60365))))

(declare-fun lt!60363 () Unit!3613)

(declare-fun lt!60364 () Unit!3613)

(assert (=> d!32621 (= lt!60363 lt!60364)))

(assert (=> d!32621 (= (getValueByKey!161 lt!60365 (_1!1262 (tuple2!2505 lt!60170 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))) (Some!166 (_2!1262 (tuple2!2505 lt!60170 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(assert (=> d!32621 (= lt!60364 (lemmaContainsTupThenGetReturnValue!79 lt!60365 (_1!1262 (tuple2!2505 lt!60170 (minValue!2574 (v!3030 (underlying!406 thiss!992))))) (_2!1262 (tuple2!2505 lt!60170 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(assert (=> d!32621 (= lt!60365 (insertStrictlySorted!81 (toList!837 lt!60179) (_1!1262 (tuple2!2505 lt!60170 (minValue!2574 (v!3030 (underlying!406 thiss!992))))) (_2!1262 (tuple2!2505 lt!60170 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(assert (=> d!32621 (= (+!158 lt!60179 (tuple2!2505 lt!60170 (minValue!2574 (v!3030 (underlying!406 thiss!992))))) lt!60362)))

(declare-fun b!116145 () Bool)

(declare-fun res!56921 () Bool)

(assert (=> b!116145 (=> (not res!56921) (not e!75798))))

(assert (=> b!116145 (= res!56921 (= (getValueByKey!161 (toList!837 lt!60362) (_1!1262 (tuple2!2505 lt!60170 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))) (Some!166 (_2!1262 (tuple2!2505 lt!60170 (minValue!2574 (v!3030 (underlying!406 thiss!992))))))))))

(declare-fun b!116146 () Bool)

(assert (=> b!116146 (= e!75798 (contains!860 (toList!837 lt!60362) (tuple2!2505 lt!60170 (minValue!2574 (v!3030 (underlying!406 thiss!992))))))))

(assert (= (and d!32621 res!56922) b!116145))

(assert (= (and b!116145 res!56921) b!116146))

(declare-fun m!132485 () Bool)

(assert (=> d!32621 m!132485))

(declare-fun m!132487 () Bool)

(assert (=> d!32621 m!132487))

(declare-fun m!132489 () Bool)

(assert (=> d!32621 m!132489))

(declare-fun m!132491 () Bool)

(assert (=> d!32621 m!132491))

(declare-fun m!132493 () Bool)

(assert (=> b!116145 m!132493))

(declare-fun m!132495 () Bool)

(assert (=> b!116146 m!132495))

(assert (=> b!115895 d!32621))

(declare-fun d!32623 () Bool)

(assert (=> d!32623 (= (apply!104 (+!158 lt!60164 (tuple2!2505 lt!60181 (minValue!2574 (v!3030 (underlying!406 thiss!992))))) lt!60183) (apply!104 lt!60164 lt!60183))))

(declare-fun lt!60366 () Unit!3613)

(assert (=> d!32623 (= lt!60366 (choose!733 lt!60164 lt!60181 (minValue!2574 (v!3030 (underlying!406 thiss!992))) lt!60183))))

(declare-fun e!75799 () Bool)

(assert (=> d!32623 e!75799))

(declare-fun res!56923 () Bool)

(assert (=> d!32623 (=> (not res!56923) (not e!75799))))

(assert (=> d!32623 (= res!56923 (contains!859 lt!60164 lt!60183))))

(assert (=> d!32623 (= (addApplyDifferent!80 lt!60164 lt!60181 (minValue!2574 (v!3030 (underlying!406 thiss!992))) lt!60183) lt!60366)))

(declare-fun b!116147 () Bool)

(assert (=> b!116147 (= e!75799 (not (= lt!60183 lt!60181)))))

(assert (= (and d!32623 res!56923) b!116147))

(assert (=> d!32623 m!132003))

(assert (=> d!32623 m!132003))

(assert (=> d!32623 m!132009))

(assert (=> d!32623 m!132005))

(declare-fun m!132497 () Bool)

(assert (=> d!32623 m!132497))

(declare-fun m!132499 () Bool)

(assert (=> d!32623 m!132499))

(assert (=> b!115895 d!32623))

(declare-fun d!32625 () Bool)

(declare-fun e!75800 () Bool)

(assert (=> d!32625 e!75800))

(declare-fun res!56925 () Bool)

(assert (=> d!32625 (=> (not res!56925) (not e!75800))))

(declare-fun lt!60367 () ListLongMap!1643)

(assert (=> d!32625 (= res!56925 (contains!859 lt!60367 (_1!1262 (tuple2!2505 lt!60181 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(declare-fun lt!60370 () List!1691)

(assert (=> d!32625 (= lt!60367 (ListLongMap!1644 lt!60370))))

(declare-fun lt!60368 () Unit!3613)

(declare-fun lt!60369 () Unit!3613)

(assert (=> d!32625 (= lt!60368 lt!60369)))

(assert (=> d!32625 (= (getValueByKey!161 lt!60370 (_1!1262 (tuple2!2505 lt!60181 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))) (Some!166 (_2!1262 (tuple2!2505 lt!60181 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(assert (=> d!32625 (= lt!60369 (lemmaContainsTupThenGetReturnValue!79 lt!60370 (_1!1262 (tuple2!2505 lt!60181 (minValue!2574 (v!3030 (underlying!406 thiss!992))))) (_2!1262 (tuple2!2505 lt!60181 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(assert (=> d!32625 (= lt!60370 (insertStrictlySorted!81 (toList!837 lt!60164) (_1!1262 (tuple2!2505 lt!60181 (minValue!2574 (v!3030 (underlying!406 thiss!992))))) (_2!1262 (tuple2!2505 lt!60181 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(assert (=> d!32625 (= (+!158 lt!60164 (tuple2!2505 lt!60181 (minValue!2574 (v!3030 (underlying!406 thiss!992))))) lt!60367)))

(declare-fun b!116148 () Bool)

(declare-fun res!56924 () Bool)

(assert (=> b!116148 (=> (not res!56924) (not e!75800))))

(assert (=> b!116148 (= res!56924 (= (getValueByKey!161 (toList!837 lt!60367) (_1!1262 (tuple2!2505 lt!60181 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))) (Some!166 (_2!1262 (tuple2!2505 lt!60181 (minValue!2574 (v!3030 (underlying!406 thiss!992))))))))))

(declare-fun b!116149 () Bool)

(assert (=> b!116149 (= e!75800 (contains!860 (toList!837 lt!60367) (tuple2!2505 lt!60181 (minValue!2574 (v!3030 (underlying!406 thiss!992))))))))

(assert (= (and d!32625 res!56925) b!116148))

(assert (= (and b!116148 res!56924) b!116149))

(declare-fun m!132501 () Bool)

(assert (=> d!32625 m!132501))

(declare-fun m!132503 () Bool)

(assert (=> d!32625 m!132503))

(declare-fun m!132505 () Bool)

(assert (=> d!32625 m!132505))

(declare-fun m!132507 () Bool)

(assert (=> d!32625 m!132507))

(declare-fun m!132509 () Bool)

(assert (=> b!116148 m!132509))

(declare-fun m!132511 () Bool)

(assert (=> b!116149 m!132511))

(assert (=> b!115895 d!32625))

(declare-fun d!32627 () Bool)

(assert (=> d!32627 (= (apply!104 (+!158 lt!60163 (tuple2!2505 lt!60178 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))))) lt!60173) (apply!104 lt!60163 lt!60173))))

(declare-fun lt!60371 () Unit!3613)

(assert (=> d!32627 (= lt!60371 (choose!733 lt!60163 lt!60178 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))) lt!60173))))

(declare-fun e!75801 () Bool)

(assert (=> d!32627 e!75801))

(declare-fun res!56926 () Bool)

(assert (=> d!32627 (=> (not res!56926) (not e!75801))))

(assert (=> d!32627 (= res!56926 (contains!859 lt!60163 lt!60173))))

(assert (=> d!32627 (= (addApplyDifferent!80 lt!60163 lt!60178 (zeroValue!2574 (v!3030 (underlying!406 thiss!992))) lt!60173) lt!60371)))

(declare-fun b!116150 () Bool)

(assert (=> b!116150 (= e!75801 (not (= lt!60173 lt!60178)))))

(assert (= (and d!32627 res!56926) b!116150))

(assert (=> d!32627 m!132011))

(assert (=> d!32627 m!132011))

(assert (=> d!32627 m!132031))

(assert (=> d!32627 m!132017))

(declare-fun m!132513 () Bool)

(assert (=> d!32627 m!132513))

(declare-fun m!132515 () Bool)

(assert (=> d!32627 m!132515))

(assert (=> b!115895 d!32627))

(declare-fun d!32629 () Bool)

(declare-fun e!75802 () Bool)

(assert (=> d!32629 e!75802))

(declare-fun res!56928 () Bool)

(assert (=> d!32629 (=> (not res!56928) (not e!75802))))

(declare-fun lt!60372 () ListLongMap!1643)

(assert (=> d!32629 (= res!56928 (contains!859 lt!60372 (_1!1262 (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(declare-fun lt!60375 () List!1691)

(assert (=> d!32629 (= lt!60372 (ListLongMap!1644 lt!60375))))

(declare-fun lt!60373 () Unit!3613)

(declare-fun lt!60374 () Unit!3613)

(assert (=> d!32629 (= lt!60373 lt!60374)))

(assert (=> d!32629 (= (getValueByKey!161 lt!60375 (_1!1262 (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))) (Some!166 (_2!1262 (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(assert (=> d!32629 (= lt!60374 (lemmaContainsTupThenGetReturnValue!79 lt!60375 (_1!1262 (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992))))) (_2!1262 (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(assert (=> d!32629 (= lt!60375 (insertStrictlySorted!81 (toList!837 call!12410) (_1!1262 (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992))))) (_2!1262 (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))))))

(assert (=> d!32629 (= (+!158 call!12410 (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992))))) lt!60372)))

(declare-fun b!116151 () Bool)

(declare-fun res!56927 () Bool)

(assert (=> b!116151 (=> (not res!56927) (not e!75802))))

(assert (=> b!116151 (= res!56927 (= (getValueByKey!161 (toList!837 lt!60372) (_1!1262 (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992)))))) (Some!166 (_2!1262 (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992))))))))))

(declare-fun b!116152 () Bool)

(assert (=> b!116152 (= e!75802 (contains!860 (toList!837 lt!60372) (tuple2!2505 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2574 (v!3030 (underlying!406 thiss!992))))))))

(assert (= (and d!32629 res!56928) b!116151))

(assert (= (and b!116151 res!56927) b!116152))

(declare-fun m!132517 () Bool)

(assert (=> d!32629 m!132517))

(declare-fun m!132519 () Bool)

(assert (=> d!32629 m!132519))

(declare-fun m!132521 () Bool)

(assert (=> d!32629 m!132521))

(declare-fun m!132523 () Bool)

(assert (=> d!32629 m!132523))

(declare-fun m!132525 () Bool)

(assert (=> b!116151 m!132525))

(declare-fun m!132527 () Bool)

(assert (=> b!116152 m!132527))

(assert (=> b!115912 d!32629))

(assert (=> b!115931 d!32537))

(assert (=> b!115898 d!32515))

(declare-fun d!32631 () Bool)

(declare-fun res!56929 () Bool)

(declare-fun e!75803 () Bool)

(assert (=> d!32631 (=> (not res!56929) (not e!75803))))

(assert (=> d!32631 (= res!56929 (simpleValid!79 (v!3030 (underlying!406 thiss!992))))))

(assert (=> d!32631 (= (valid!464 (v!3030 (underlying!406 thiss!992))) e!75803)))

(declare-fun b!116153 () Bool)

(declare-fun res!56930 () Bool)

(assert (=> b!116153 (=> (not res!56930) (not e!75803))))

(assert (=> b!116153 (= res!56930 (= (arrayCountValidKeys!0 (_keys!4429 (v!3030 (underlying!406 thiss!992))) #b00000000000000000000000000000000 (size!2418 (_keys!4429 (v!3030 (underlying!406 thiss!992))))) (_size!547 (v!3030 (underlying!406 thiss!992)))))))

(declare-fun b!116154 () Bool)

(declare-fun res!56931 () Bool)

(assert (=> b!116154 (=> (not res!56931) (not e!75803))))

(assert (=> b!116154 (= res!56931 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4429 (v!3030 (underlying!406 thiss!992))) (mask!6917 (v!3030 (underlying!406 thiss!992)))))))

(declare-fun b!116155 () Bool)

(assert (=> b!116155 (= e!75803 (arrayNoDuplicates!0 (_keys!4429 (v!3030 (underlying!406 thiss!992))) #b00000000000000000000000000000000 Nil!1690))))

(assert (= (and d!32631 res!56929) b!116153))

(assert (= (and b!116153 res!56930) b!116154))

(assert (= (and b!116154 res!56931) b!116155))

(declare-fun m!132529 () Bool)

(assert (=> d!32631 m!132529))

(declare-fun m!132531 () Bool)

(assert (=> b!116153 m!132531))

(declare-fun m!132533 () Bool)

(assert (=> b!116154 m!132533))

(declare-fun m!132535 () Bool)

(assert (=> b!116155 m!132535))

(assert (=> d!32501 d!32631))

(declare-fun b!116156 () Bool)

(declare-fun e!75805 () Bool)

(assert (=> b!116156 (= e!75805 tp_is_empty!2775)))

(declare-fun mapIsEmpty!4269 () Bool)

(declare-fun mapRes!4269 () Bool)

(assert (=> mapIsEmpty!4269 mapRes!4269))

(declare-fun mapNonEmpty!4269 () Bool)

(declare-fun tp!10533 () Bool)

(assert (=> mapNonEmpty!4269 (= mapRes!4269 (and tp!10533 e!75805))))

(declare-fun mapRest!4269 () (Array (_ BitVec 32) ValueCell!1044))

(declare-fun mapKey!4269 () (_ BitVec 32))

(declare-fun mapValue!4269 () ValueCell!1044)

(assert (=> mapNonEmpty!4269 (= mapRest!4268 (store mapRest!4269 mapKey!4269 mapValue!4269))))

(declare-fun b!116157 () Bool)

(declare-fun e!75804 () Bool)

(assert (=> b!116157 (= e!75804 tp_is_empty!2775)))

(declare-fun condMapEmpty!4269 () Bool)

(declare-fun mapDefault!4269 () ValueCell!1044)

(assert (=> mapNonEmpty!4268 (= condMapEmpty!4269 (= mapRest!4268 ((as const (Array (_ BitVec 32) ValueCell!1044)) mapDefault!4269)))))

(assert (=> mapNonEmpty!4268 (= tp!10532 (and e!75804 mapRes!4269))))

(assert (= (and mapNonEmpty!4268 condMapEmpty!4269) mapIsEmpty!4269))

(assert (= (and mapNonEmpty!4268 (not condMapEmpty!4269)) mapNonEmpty!4269))

(assert (= (and mapNonEmpty!4269 ((_ is ValueCellFull!1044) mapValue!4269)) b!116156))

(assert (= (and mapNonEmpty!4268 ((_ is ValueCellFull!1044) mapDefault!4269)) b!116157))

(declare-fun m!132537 () Bool)

(assert (=> mapNonEmpty!4269 m!132537))

(declare-fun b!116158 () Bool)

(declare-fun e!75807 () Bool)

(assert (=> b!116158 (= e!75807 tp_is_empty!2775)))

(declare-fun mapIsEmpty!4270 () Bool)

(declare-fun mapRes!4270 () Bool)

(assert (=> mapIsEmpty!4270 mapRes!4270))

(declare-fun mapNonEmpty!4270 () Bool)

(declare-fun tp!10534 () Bool)

(assert (=> mapNonEmpty!4270 (= mapRes!4270 (and tp!10534 e!75807))))

(declare-fun mapValue!4270 () ValueCell!1044)

(declare-fun mapKey!4270 () (_ BitVec 32))

(declare-fun mapRest!4270 () (Array (_ BitVec 32) ValueCell!1044))

(assert (=> mapNonEmpty!4270 (= mapRest!4267 (store mapRest!4270 mapKey!4270 mapValue!4270))))

(declare-fun b!116159 () Bool)

(declare-fun e!75806 () Bool)

(assert (=> b!116159 (= e!75806 tp_is_empty!2775)))

(declare-fun condMapEmpty!4270 () Bool)

(declare-fun mapDefault!4270 () ValueCell!1044)

(assert (=> mapNonEmpty!4267 (= condMapEmpty!4270 (= mapRest!4267 ((as const (Array (_ BitVec 32) ValueCell!1044)) mapDefault!4270)))))

(assert (=> mapNonEmpty!4267 (= tp!10531 (and e!75806 mapRes!4270))))

(assert (= (and mapNonEmpty!4267 condMapEmpty!4270) mapIsEmpty!4270))

(assert (= (and mapNonEmpty!4267 (not condMapEmpty!4270)) mapNonEmpty!4270))

(assert (= (and mapNonEmpty!4270 ((_ is ValueCellFull!1044) mapValue!4270)) b!116158))

(assert (= (and mapNonEmpty!4267 ((_ is ValueCellFull!1044) mapDefault!4270)) b!116159))

(declare-fun m!132539 () Bool)

(assert (=> mapNonEmpty!4270 m!132539))

(declare-fun b_lambda!5191 () Bool)

(assert (= b_lambda!5185 (or (and b!115801 b_free!2717 (= (defaultEntry!2707 (v!3030 (underlying!406 thiss!992))) (defaultEntry!2707 newMap!16))) (and b!115805 b_free!2719) b_lambda!5191)))

(declare-fun b_lambda!5193 () Bool)

(assert (= b_lambda!5183 (or (and b!115801 b_free!2717) (and b!115805 b_free!2719 (= (defaultEntry!2707 newMap!16) (defaultEntry!2707 (v!3030 (underlying!406 thiss!992))))) b_lambda!5193)))

(declare-fun b_lambda!5195 () Bool)

(assert (= b_lambda!5181 (or (and b!115801 b_free!2717) (and b!115805 b_free!2719 (= (defaultEntry!2707 newMap!16) (defaultEntry!2707 (v!3030 (underlying!406 thiss!992))))) b_lambda!5195)))

(declare-fun b_lambda!5197 () Bool)

(assert (= b_lambda!5187 (or (and b!115801 b_free!2717) (and b!115805 b_free!2719 (= (defaultEntry!2707 newMap!16) (defaultEntry!2707 (v!3030 (underlying!406 thiss!992))))) b_lambda!5197)))

(declare-fun b_lambda!5199 () Bool)

(assert (= b_lambda!5189 (or (and b!115801 b_free!2717) (and b!115805 b_free!2719 (= (defaultEntry!2707 newMap!16) (defaultEntry!2707 (v!3030 (underlying!406 thiss!992))))) b_lambda!5199)))

(check-sat (not bm!12432) (not d!32557) (not b!116117) (not b!116134) (not bm!12430) (not d!32589) (not b!116009) (not d!32575) (not d!32549) (not d!32595) (not d!32517) (not b!116153) (not b!116137) (not b_lambda!5195) (not b!116094) (not b!116091) (not d!32605) (not d!32525) (not d!32561) (not d!32599) (not mapNonEmpty!4269) (not b!116119) (not b!116081) (not b!116128) (not b!116070) (not d!32609) (not b!116085) (not b!116116) (not b!116145) (not b!116113) (not d!32623) (not d!32617) (not b!116096) (not b_next!2719) (not b!116100) (not b!116104) (not b!116087) (not b!116146) (not b_lambda!5193) (not b!116132) (not d!32613) (not d!32555) (not b!115971) (not b!115974) (not b!116051) (not b!116098) (not d!32545) (not b!116105) (not bm!12421) (not d!32597) (not b!116002) (not b!116151) (not d!32567) (not b!116037) (not b!116140) (not b!116007) (not d!32621) (not d!32565) (not d!32569) (not bm!12424) (not b!116072) (not bm!12434) (not d!32619) (not d!32547) (not d!32573) (not d!32551) (not d!32607) (not b!116040) (not b!116101) (not b!116115) (not b!116114) (not d!32583) (not b!116107) (not b!116099) (not b!116066) (not b!116075) (not d!32543) (not d!32631) (not b!116079) (not d!32629) (not d!32601) (not b_lambda!5177) (not b!116000) (not b!116130) (not d!32587) (not b!115969) (not b!116138) (not b!116154) (not b!116001) (not b!116136) (not b_next!2717) (not bm!12437) (not b!116144) (not d!32521) (not b!116053) (not d!32625) (not b!116155) (not d!32523) (not b!116111) (not d!32533) (not b!116016) (not mapNonEmpty!4270) (not b!116054) b_and!7243 (not b!116118) (not b!116149) (not d!32593) (not b!116003) (not b_lambda!5191) (not b!116148) (not bm!12438) (not b!115961) (not d!32581) (not b!116129) (not b!116110) (not d!32627) (not d!32611) (not b!116008) (not d!32577) (not b_lambda!5197) (not d!32603) (not d!32579) (not d!32585) (not d!32559) (not b!116026) (not d!32615) (not b!115962) (not b!116074) (not b_lambda!5179) (not b!116050) (not d!32535) (not b!116152) (not b!116143) (not b!116126) (not bm!12436) (not b!116106) (not b!115972) (not d!32571) (not b!116067) (not b_lambda!5199) (not b!116015) (not b!116125) (not b!116109) (not b!116006) (not b!116142) (not bm!12427) tp_is_empty!2775 (not d!32527) (not d!32553) b_and!7241 (not b!116069) (not d!32591) (not b!116077))
(check-sat b_and!7241 b_and!7243 (not b_next!2717) (not b_next!2719))
