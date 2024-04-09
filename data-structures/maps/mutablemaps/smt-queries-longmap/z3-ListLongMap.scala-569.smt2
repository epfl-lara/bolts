; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15494 () Bool)

(assert start!15494)

(declare-fun b!153994 () Bool)

(declare-fun b_free!3221 () Bool)

(declare-fun b_next!3221 () Bool)

(assert (=> b!153994 (= b_free!3221 (not b_next!3221))))

(declare-fun tp!12184 () Bool)

(declare-fun b_and!9609 () Bool)

(assert (=> b!153994 (= tp!12184 b_and!9609)))

(declare-fun b!153997 () Bool)

(declare-fun b_free!3223 () Bool)

(declare-fun b_next!3223 () Bool)

(assert (=> b!153997 (= b_free!3223 (not b_next!3223))))

(declare-fun tp!12185 () Bool)

(declare-fun b_and!9611 () Bool)

(assert (=> b!153997 (= tp!12185 b_and!9611)))

(declare-fun b!153990 () Bool)

(declare-fun e!100630 () Bool)

(declare-fun e!100632 () Bool)

(declare-fun mapRes!5172 () Bool)

(assert (=> b!153990 (= e!100630 (and e!100632 mapRes!5172))))

(declare-fun condMapEmpty!5172 () Bool)

(declare-datatypes ((V!3683 0))(
  ( (V!3684 (val!1558 Int)) )
))
(declare-datatypes ((array!5104 0))(
  ( (array!5105 (arr!2410 (Array (_ BitVec 32) (_ BitVec 64))) (size!2687 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1170 0))(
  ( (ValueCellFull!1170 (v!3415 V!3683)) (EmptyCell!1170) )
))
(declare-datatypes ((array!5106 0))(
  ( (array!5107 (arr!2411 (Array (_ BitVec 32) ValueCell!1170)) (size!2688 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1248 0))(
  ( (LongMapFixedSize!1249 (defaultEntry!3064 Int) (mask!7468 (_ BitVec 32)) (extraKeys!2805 (_ BitVec 32)) (zeroValue!2907 V!3683) (minValue!2907 V!3683) (_size!673 (_ BitVec 32)) (_keys!4837 array!5104) (_values!3047 array!5106) (_vacant!673 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1248)

(declare-fun mapDefault!5171 () ValueCell!1170)

(assert (=> b!153990 (= condMapEmpty!5172 (= (arr!2411 (_values!3047 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1170)) mapDefault!5171)))))

(declare-fun mapNonEmpty!5171 () Bool)

(declare-fun tp!12186 () Bool)

(declare-fun e!100631 () Bool)

(assert (=> mapNonEmpty!5171 (= mapRes!5172 (and tp!12186 e!100631))))

(declare-fun mapKey!5172 () (_ BitVec 32))

(declare-fun mapRest!5172 () (Array (_ BitVec 32) ValueCell!1170))

(declare-fun mapValue!5172 () ValueCell!1170)

(assert (=> mapNonEmpty!5171 (= (arr!2411 (_values!3047 newMap!16)) (store mapRest!5172 mapKey!5172 mapValue!5172))))

(declare-fun mapIsEmpty!5171 () Bool)

(declare-fun mapRes!5171 () Bool)

(assert (=> mapIsEmpty!5171 mapRes!5171))

(declare-fun b!153991 () Bool)

(declare-fun e!100624 () Bool)

(declare-fun e!100636 () Bool)

(assert (=> b!153991 (= e!100624 e!100636)))

(declare-fun mapIsEmpty!5172 () Bool)

(assert (=> mapIsEmpty!5172 mapRes!5172))

(declare-fun b!153992 () Bool)

(declare-fun e!100629 () Bool)

(assert (=> b!153992 (= e!100636 e!100629)))

(declare-fun res!72746 () Bool)

(declare-fun e!100635 () Bool)

(assert (=> start!15494 (=> (not res!72746) (not e!100635))))

(declare-datatypes ((Cell!1026 0))(
  ( (Cell!1027 (v!3416 LongMapFixedSize!1248)) )
))
(declare-datatypes ((LongMap!1026 0))(
  ( (LongMap!1027 (underlying!524 Cell!1026)) )
))
(declare-fun thiss!992 () LongMap!1026)

(declare-fun valid!610 (LongMap!1026) Bool)

(assert (=> start!15494 (= res!72746 (valid!610 thiss!992))))

(assert (=> start!15494 e!100635))

(assert (=> start!15494 e!100624))

(assert (=> start!15494 true))

(declare-fun e!100627 () Bool)

(assert (=> start!15494 e!100627))

(declare-fun b!153993 () Bool)

(declare-fun e!100634 () Bool)

(declare-datatypes ((tuple2!2806 0))(
  ( (tuple2!2807 (_1!1413 (_ BitVec 64)) (_2!1413 V!3683)) )
))
(declare-datatypes ((List!1823 0))(
  ( (Nil!1820) (Cons!1819 (h!2428 tuple2!2806) (t!6625 List!1823)) )
))
(declare-datatypes ((ListLongMap!1815 0))(
  ( (ListLongMap!1816 (toList!923 List!1823)) )
))
(declare-fun lt!80872 () ListLongMap!1815)

(declare-fun map!1500 (LongMapFixedSize!1248) ListLongMap!1815)

(assert (=> b!153993 (= e!100634 (not (= lt!80872 (map!1500 (v!3416 (underlying!524 thiss!992))))))))

(declare-fun tp_is_empty!3027 () Bool)

(declare-fun e!100626 () Bool)

(declare-fun array_inv!1497 (array!5104) Bool)

(declare-fun array_inv!1498 (array!5106) Bool)

(assert (=> b!153994 (= e!100629 (and tp!12184 tp_is_empty!3027 (array_inv!1497 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (array_inv!1498 (_values!3047 (v!3416 (underlying!524 thiss!992)))) e!100626))))

(declare-fun b!153995 () Bool)

(declare-fun e!100623 () Bool)

(assert (=> b!153995 (= e!100626 (and e!100623 mapRes!5171))))

(declare-fun condMapEmpty!5171 () Bool)

(declare-fun mapDefault!5172 () ValueCell!1170)

(assert (=> b!153995 (= condMapEmpty!5171 (= (arr!2411 (_values!3047 (v!3416 (underlying!524 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1170)) mapDefault!5172)))))

(declare-fun b!153996 () Bool)

(assert (=> b!153996 (= e!100632 tp_is_empty!3027)))

(assert (=> b!153997 (= e!100627 (and tp!12185 tp_is_empty!3027 (array_inv!1497 (_keys!4837 newMap!16)) (array_inv!1498 (_values!3047 newMap!16)) e!100630))))

(declare-fun b!153998 () Bool)

(declare-fun res!72744 () Bool)

(assert (=> b!153998 (=> (not res!72744) (not e!100635))))

(declare-fun valid!611 (LongMapFixedSize!1248) Bool)

(assert (=> b!153998 (= res!72744 (valid!611 newMap!16))))

(declare-fun b!153999 () Bool)

(assert (=> b!153999 (= e!100635 e!100634)))

(declare-fun res!72743 () Bool)

(assert (=> b!153999 (=> (not res!72743) (not e!100634))))

(declare-fun lt!80871 () ListLongMap!1815)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!153999 (= res!72743 (and (= lt!80871 lt!80872) (or (= (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsle from!355 #b00000000000000000000000000000000)))))

(assert (=> b!153999 (= lt!80872 (map!1500 newMap!16))))

(declare-fun getCurrentListMap!584 (array!5104 array!5106 (_ BitVec 32) (_ BitVec 32) V!3683 V!3683 (_ BitVec 32) Int) ListLongMap!1815)

(assert (=> b!153999 (= lt!80871 (getCurrentListMap!584 (_keys!4837 (v!3416 (underlying!524 thiss!992))) (_values!3047 (v!3416 (underlying!524 thiss!992))) (mask!7468 (v!3416 (underlying!524 thiss!992))) (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) (zeroValue!2907 (v!3416 (underlying!524 thiss!992))) (minValue!2907 (v!3416 (underlying!524 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3064 (v!3416 (underlying!524 thiss!992)))))))

(declare-fun b!154000 () Bool)

(declare-fun res!72745 () Bool)

(assert (=> b!154000 (=> (not res!72745) (not e!100635))))

(assert (=> b!154000 (= res!72745 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun b!154001 () Bool)

(assert (=> b!154001 (= e!100631 tp_is_empty!3027)))

(declare-fun b!154002 () Bool)

(declare-fun e!100628 () Bool)

(assert (=> b!154002 (= e!100628 tp_is_empty!3027)))

(declare-fun mapNonEmpty!5172 () Bool)

(declare-fun tp!12183 () Bool)

(assert (=> mapNonEmpty!5172 (= mapRes!5171 (and tp!12183 e!100628))))

(declare-fun mapValue!5171 () ValueCell!1170)

(declare-fun mapKey!5171 () (_ BitVec 32))

(declare-fun mapRest!5171 () (Array (_ BitVec 32) ValueCell!1170))

(assert (=> mapNonEmpty!5172 (= (arr!2411 (_values!3047 (v!3416 (underlying!524 thiss!992)))) (store mapRest!5171 mapKey!5171 mapValue!5171))))

(declare-fun b!154003 () Bool)

(declare-fun res!72747 () Bool)

(assert (=> b!154003 (=> (not res!72747) (not e!100635))))

(assert (=> b!154003 (= res!72747 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7468 newMap!16)) (_size!673 (v!3416 (underlying!524 thiss!992)))))))

(declare-fun b!154004 () Bool)

(assert (=> b!154004 (= e!100623 tp_is_empty!3027)))

(assert (= (and start!15494 res!72746) b!154000))

(assert (= (and b!154000 res!72745) b!153998))

(assert (= (and b!153998 res!72744) b!154003))

(assert (= (and b!154003 res!72747) b!153999))

(assert (= (and b!153999 res!72743) b!153993))

(assert (= (and b!153995 condMapEmpty!5171) mapIsEmpty!5171))

(assert (= (and b!153995 (not condMapEmpty!5171)) mapNonEmpty!5172))

(get-info :version)

(assert (= (and mapNonEmpty!5172 ((_ is ValueCellFull!1170) mapValue!5171)) b!154002))

(assert (= (and b!153995 ((_ is ValueCellFull!1170) mapDefault!5172)) b!154004))

(assert (= b!153994 b!153995))

(assert (= b!153992 b!153994))

(assert (= b!153991 b!153992))

(assert (= start!15494 b!153991))

(assert (= (and b!153990 condMapEmpty!5172) mapIsEmpty!5172))

(assert (= (and b!153990 (not condMapEmpty!5172)) mapNonEmpty!5171))

(assert (= (and mapNonEmpty!5171 ((_ is ValueCellFull!1170) mapValue!5172)) b!154001))

(assert (= (and b!153990 ((_ is ValueCellFull!1170) mapDefault!5171)) b!153996))

(assert (= b!153997 b!153990))

(assert (= start!15494 b!153997))

(declare-fun m!187757 () Bool)

(assert (=> b!153993 m!187757))

(declare-fun m!187759 () Bool)

(assert (=> b!153997 m!187759))

(declare-fun m!187761 () Bool)

(assert (=> b!153997 m!187761))

(declare-fun m!187763 () Bool)

(assert (=> b!153999 m!187763))

(declare-fun m!187765 () Bool)

(assert (=> b!153999 m!187765))

(declare-fun m!187767 () Bool)

(assert (=> b!153999 m!187767))

(declare-fun m!187769 () Bool)

(assert (=> mapNonEmpty!5172 m!187769))

(declare-fun m!187771 () Bool)

(assert (=> b!153994 m!187771))

(declare-fun m!187773 () Bool)

(assert (=> b!153994 m!187773))

(declare-fun m!187775 () Bool)

(assert (=> start!15494 m!187775))

(declare-fun m!187777 () Bool)

(assert (=> b!153998 m!187777))

(declare-fun m!187779 () Bool)

(assert (=> mapNonEmpty!5171 m!187779))

(check-sat tp_is_empty!3027 (not b_next!3223) (not mapNonEmpty!5172) (not b_next!3221) (not b!153994) b_and!9609 (not start!15494) (not b!153999) (not b!153998) (not b!153997) (not b!153993) b_and!9611 (not mapNonEmpty!5171))
(check-sat b_and!9609 b_and!9611 (not b_next!3221) (not b_next!3223))
(get-model)

(declare-fun d!50495 () Bool)

(assert (=> d!50495 (= (array_inv!1497 (_keys!4837 newMap!16)) (bvsge (size!2687 (_keys!4837 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!153997 d!50495))

(declare-fun d!50497 () Bool)

(assert (=> d!50497 (= (array_inv!1498 (_values!3047 newMap!16)) (bvsge (size!2688 (_values!3047 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!153997 d!50497))

(declare-fun d!50499 () Bool)

(assert (=> d!50499 (= (map!1500 (v!3416 (underlying!524 thiss!992))) (getCurrentListMap!584 (_keys!4837 (v!3416 (underlying!524 thiss!992))) (_values!3047 (v!3416 (underlying!524 thiss!992))) (mask!7468 (v!3416 (underlying!524 thiss!992))) (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) (zeroValue!2907 (v!3416 (underlying!524 thiss!992))) (minValue!2907 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000000000 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992)))))))

(declare-fun bs!6515 () Bool)

(assert (= bs!6515 d!50499))

(declare-fun m!187805 () Bool)

(assert (=> bs!6515 m!187805))

(assert (=> b!153993 d!50499))

(declare-fun d!50501 () Bool)

(declare-fun res!72769 () Bool)

(declare-fun e!100681 () Bool)

(assert (=> d!50501 (=> (not res!72769) (not e!100681))))

(declare-fun simpleValid!103 (LongMapFixedSize!1248) Bool)

(assert (=> d!50501 (= res!72769 (simpleValid!103 newMap!16))))

(assert (=> d!50501 (= (valid!611 newMap!16) e!100681)))

(declare-fun b!154056 () Bool)

(declare-fun res!72770 () Bool)

(assert (=> b!154056 (=> (not res!72770) (not e!100681))))

(declare-fun arrayCountValidKeys!0 (array!5104 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!154056 (= res!72770 (= (arrayCountValidKeys!0 (_keys!4837 newMap!16) #b00000000000000000000000000000000 (size!2687 (_keys!4837 newMap!16))) (_size!673 newMap!16)))))

(declare-fun b!154057 () Bool)

(declare-fun res!72771 () Bool)

(assert (=> b!154057 (=> (not res!72771) (not e!100681))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5104 (_ BitVec 32)) Bool)

(assert (=> b!154057 (= res!72771 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4837 newMap!16) (mask!7468 newMap!16)))))

(declare-fun b!154058 () Bool)

(declare-datatypes ((List!1824 0))(
  ( (Nil!1821) (Cons!1820 (h!2429 (_ BitVec 64)) (t!6630 List!1824)) )
))
(declare-fun arrayNoDuplicates!0 (array!5104 (_ BitVec 32) List!1824) Bool)

(assert (=> b!154058 (= e!100681 (arrayNoDuplicates!0 (_keys!4837 newMap!16) #b00000000000000000000000000000000 Nil!1821))))

(assert (= (and d!50501 res!72769) b!154056))

(assert (= (and b!154056 res!72770) b!154057))

(assert (= (and b!154057 res!72771) b!154058))

(declare-fun m!187807 () Bool)

(assert (=> d!50501 m!187807))

(declare-fun m!187809 () Bool)

(assert (=> b!154056 m!187809))

(declare-fun m!187811 () Bool)

(assert (=> b!154057 m!187811))

(declare-fun m!187813 () Bool)

(assert (=> b!154058 m!187813))

(assert (=> b!153998 d!50501))

(declare-fun d!50503 () Bool)

(assert (=> d!50503 (= (map!1500 newMap!16) (getCurrentListMap!584 (_keys!4837 newMap!16) (_values!3047 newMap!16) (mask!7468 newMap!16) (extraKeys!2805 newMap!16) (zeroValue!2907 newMap!16) (minValue!2907 newMap!16) #b00000000000000000000000000000000 (defaultEntry!3064 newMap!16)))))

(declare-fun bs!6516 () Bool)

(assert (= bs!6516 d!50503))

(declare-fun m!187815 () Bool)

(assert (=> bs!6516 m!187815))

(assert (=> b!153999 d!50503))

(declare-fun bm!17145 () Bool)

(declare-fun call!17149 () ListLongMap!1815)

(declare-fun getCurrentListMapNoExtraKeys!158 (array!5104 array!5106 (_ BitVec 32) (_ BitVec 32) V!3683 V!3683 (_ BitVec 32) Int) ListLongMap!1815)

(assert (=> bm!17145 (= call!17149 (getCurrentListMapNoExtraKeys!158 (_keys!4837 (v!3416 (underlying!524 thiss!992))) (_values!3047 (v!3416 (underlying!524 thiss!992))) (mask!7468 (v!3416 (underlying!524 thiss!992))) (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) (zeroValue!2907 (v!3416 (underlying!524 thiss!992))) (minValue!2907 (v!3416 (underlying!524 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3064 (v!3416 (underlying!524 thiss!992)))))))

(declare-fun b!154101 () Bool)

(declare-fun e!100715 () Bool)

(declare-fun lt!80934 () ListLongMap!1815)

(declare-fun apply!128 (ListLongMap!1815 (_ BitVec 64)) V!3683)

(assert (=> b!154101 (= e!100715 (= (apply!128 lt!80934 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))

(declare-fun b!154102 () Bool)

(declare-fun e!100710 () Bool)

(assert (=> b!154102 (= e!100710 e!100715)))

(declare-fun res!72798 () Bool)

(declare-fun call!17152 () Bool)

(assert (=> b!154102 (= res!72798 call!17152)))

(assert (=> b!154102 (=> (not res!72798) (not e!100715))))

(declare-fun b!154103 () Bool)

(declare-fun res!72791 () Bool)

(declare-fun e!100717 () Bool)

(assert (=> b!154103 (=> (not res!72791) (not e!100717))))

(assert (=> b!154103 (= res!72791 e!100710)))

(declare-fun c!29490 () Bool)

(assert (=> b!154103 (= c!29490 (not (= (bvand (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun d!50505 () Bool)

(assert (=> d!50505 e!100717))

(declare-fun res!72797 () Bool)

(assert (=> d!50505 (=> (not res!72797) (not e!100717))))

(assert (=> d!50505 (= res!72797 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun lt!80938 () ListLongMap!1815)

(assert (=> d!50505 (= lt!80934 lt!80938)))

(declare-datatypes ((Unit!4897 0))(
  ( (Unit!4898) )
))
(declare-fun lt!80923 () Unit!4897)

(declare-fun e!100711 () Unit!4897)

(assert (=> d!50505 (= lt!80923 e!100711)))

(declare-fun c!29491 () Bool)

(declare-fun e!100719 () Bool)

(assert (=> d!50505 (= c!29491 e!100719)))

(declare-fun res!72795 () Bool)

(assert (=> d!50505 (=> (not res!72795) (not e!100719))))

(assert (=> d!50505 (= res!72795 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992))))))))

(declare-fun e!100714 () ListLongMap!1815)

(assert (=> d!50505 (= lt!80938 e!100714)))

(declare-fun c!29493 () Bool)

(assert (=> d!50505 (= c!29493 (and (not (= (bvand (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!50505 (validMask!0 (mask!7468 (v!3416 (underlying!524 thiss!992))))))

(assert (=> d!50505 (= (getCurrentListMap!584 (_keys!4837 (v!3416 (underlying!524 thiss!992))) (_values!3047 (v!3416 (underlying!524 thiss!992))) (mask!7468 (v!3416 (underlying!524 thiss!992))) (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) (zeroValue!2907 (v!3416 (underlying!524 thiss!992))) (minValue!2907 (v!3416 (underlying!524 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3064 (v!3416 (underlying!524 thiss!992)))) lt!80934)))

(declare-fun b!154104 () Bool)

(declare-fun e!100718 () Bool)

(declare-fun call!17150 () Bool)

(assert (=> b!154104 (= e!100718 (not call!17150))))

(declare-fun bm!17146 () Bool)

(declare-fun call!17148 () ListLongMap!1815)

(declare-fun call!17153 () ListLongMap!1815)

(assert (=> bm!17146 (= call!17148 call!17153)))

(declare-fun b!154105 () Bool)

(declare-fun e!100708 () Bool)

(assert (=> b!154105 (= e!100718 e!100708)))

(declare-fun res!72790 () Bool)

(assert (=> b!154105 (= res!72790 call!17150)))

(assert (=> b!154105 (=> (not res!72790) (not e!100708))))

(declare-fun b!154106 () Bool)

(declare-fun e!100716 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!154106 (= e!100716 (validKeyInArray!0 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!154107 () Bool)

(declare-fun lt!80939 () Unit!4897)

(assert (=> b!154107 (= e!100711 lt!80939)))

(declare-fun lt!80932 () ListLongMap!1815)

(assert (=> b!154107 (= lt!80932 (getCurrentListMapNoExtraKeys!158 (_keys!4837 (v!3416 (underlying!524 thiss!992))) (_values!3047 (v!3416 (underlying!524 thiss!992))) (mask!7468 (v!3416 (underlying!524 thiss!992))) (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) (zeroValue!2907 (v!3416 (underlying!524 thiss!992))) (minValue!2907 (v!3416 (underlying!524 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3064 (v!3416 (underlying!524 thiss!992)))))))

(declare-fun lt!80937 () (_ BitVec 64))

(assert (=> b!154107 (= lt!80937 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!80944 () (_ BitVec 64))

(assert (=> b!154107 (= lt!80944 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!80927 () Unit!4897)

(declare-fun addStillContains!104 (ListLongMap!1815 (_ BitVec 64) V!3683 (_ BitVec 64)) Unit!4897)

(assert (=> b!154107 (= lt!80927 (addStillContains!104 lt!80932 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))) lt!80944))))

(declare-fun contains!961 (ListLongMap!1815 (_ BitVec 64)) Bool)

(declare-fun +!187 (ListLongMap!1815 tuple2!2806) ListLongMap!1815)

(assert (=> b!154107 (contains!961 (+!187 lt!80932 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!80944)))

(declare-fun lt!80940 () Unit!4897)

(assert (=> b!154107 (= lt!80940 lt!80927)))

(declare-fun lt!80942 () ListLongMap!1815)

(assert (=> b!154107 (= lt!80942 (getCurrentListMapNoExtraKeys!158 (_keys!4837 (v!3416 (underlying!524 thiss!992))) (_values!3047 (v!3416 (underlying!524 thiss!992))) (mask!7468 (v!3416 (underlying!524 thiss!992))) (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) (zeroValue!2907 (v!3416 (underlying!524 thiss!992))) (minValue!2907 (v!3416 (underlying!524 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3064 (v!3416 (underlying!524 thiss!992)))))))

(declare-fun lt!80931 () (_ BitVec 64))

(assert (=> b!154107 (= lt!80931 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!80933 () (_ BitVec 64))

(assert (=> b!154107 (= lt!80933 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!80928 () Unit!4897)

(declare-fun addApplyDifferent!104 (ListLongMap!1815 (_ BitVec 64) V!3683 (_ BitVec 64)) Unit!4897)

(assert (=> b!154107 (= lt!80928 (addApplyDifferent!104 lt!80942 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992))) lt!80933))))

(assert (=> b!154107 (= (apply!128 (+!187 lt!80942 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!80933) (apply!128 lt!80942 lt!80933))))

(declare-fun lt!80930 () Unit!4897)

(assert (=> b!154107 (= lt!80930 lt!80928)))

(declare-fun lt!80924 () ListLongMap!1815)

(assert (=> b!154107 (= lt!80924 (getCurrentListMapNoExtraKeys!158 (_keys!4837 (v!3416 (underlying!524 thiss!992))) (_values!3047 (v!3416 (underlying!524 thiss!992))) (mask!7468 (v!3416 (underlying!524 thiss!992))) (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) (zeroValue!2907 (v!3416 (underlying!524 thiss!992))) (minValue!2907 (v!3416 (underlying!524 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3064 (v!3416 (underlying!524 thiss!992)))))))

(declare-fun lt!80935 () (_ BitVec 64))

(assert (=> b!154107 (= lt!80935 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!80929 () (_ BitVec 64))

(assert (=> b!154107 (= lt!80929 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!80943 () Unit!4897)

(assert (=> b!154107 (= lt!80943 (addApplyDifferent!104 lt!80924 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))) lt!80929))))

(assert (=> b!154107 (= (apply!128 (+!187 lt!80924 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!80929) (apply!128 lt!80924 lt!80929))))

(declare-fun lt!80925 () Unit!4897)

(assert (=> b!154107 (= lt!80925 lt!80943)))

(declare-fun lt!80936 () ListLongMap!1815)

(assert (=> b!154107 (= lt!80936 (getCurrentListMapNoExtraKeys!158 (_keys!4837 (v!3416 (underlying!524 thiss!992))) (_values!3047 (v!3416 (underlying!524 thiss!992))) (mask!7468 (v!3416 (underlying!524 thiss!992))) (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) (zeroValue!2907 (v!3416 (underlying!524 thiss!992))) (minValue!2907 (v!3416 (underlying!524 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3064 (v!3416 (underlying!524 thiss!992)))))))

(declare-fun lt!80926 () (_ BitVec 64))

(assert (=> b!154107 (= lt!80926 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!80941 () (_ BitVec 64))

(assert (=> b!154107 (= lt!80941 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!154107 (= lt!80939 (addApplyDifferent!104 lt!80936 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992))) lt!80941))))

(assert (=> b!154107 (= (apply!128 (+!187 lt!80936 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!80941) (apply!128 lt!80936 lt!80941))))

(declare-fun bm!17147 () Bool)

(assert (=> bm!17147 (= call!17153 call!17149)))

(declare-fun bm!17148 () Bool)

(assert (=> bm!17148 (= call!17152 (contains!961 lt!80934 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!154108 () Bool)

(declare-fun e!100709 () ListLongMap!1815)

(assert (=> b!154108 (= e!100709 call!17148)))

(declare-fun b!154109 () Bool)

(declare-fun e!100713 () Bool)

(declare-fun e!100712 () Bool)

(assert (=> b!154109 (= e!100713 e!100712)))

(declare-fun res!72793 () Bool)

(assert (=> b!154109 (=> (not res!72793) (not e!100712))))

(assert (=> b!154109 (= res!72793 (contains!961 lt!80934 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!154109 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992))))))))

(declare-fun b!154110 () Bool)

(declare-fun e!100720 () ListLongMap!1815)

(assert (=> b!154110 (= e!100714 e!100720)))

(declare-fun c!29494 () Bool)

(assert (=> b!154110 (= c!29494 (and (not (= (bvand (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!154111 () Bool)

(assert (=> b!154111 (= e!100708 (= (apply!128 lt!80934 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))

(declare-fun b!154112 () Bool)

(declare-fun call!17154 () ListLongMap!1815)

(assert (=> b!154112 (= e!100709 call!17154)))

(declare-fun b!154113 () Bool)

(assert (=> b!154113 (= e!100719 (validKeyInArray!0 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun bm!17149 () Bool)

(declare-fun call!17151 () ListLongMap!1815)

(assert (=> bm!17149 (= call!17151 (+!187 (ite c!29493 call!17149 (ite c!29494 call!17153 call!17148)) (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun b!154114 () Bool)

(assert (=> b!154114 (= e!100720 call!17154)))

(declare-fun bm!17150 () Bool)

(assert (=> bm!17150 (= call!17154 call!17151)))

(declare-fun b!154115 () Bool)

(declare-fun Unit!4899 () Unit!4897)

(assert (=> b!154115 (= e!100711 Unit!4899)))

(declare-fun b!154116 () Bool)

(declare-fun get!1609 (ValueCell!1170 V!3683) V!3683)

(declare-fun dynLambda!466 (Int (_ BitVec 64)) V!3683)

(assert (=> b!154116 (= e!100712 (= (apply!128 lt!80934 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1609 (select (arr!2411 (_values!3047 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!466 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!154116 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2688 (_values!3047 (v!3416 (underlying!524 thiss!992))))))))

(assert (=> b!154116 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992))))))))

(declare-fun b!154117 () Bool)

(declare-fun c!29495 () Bool)

(assert (=> b!154117 (= c!29495 (and (not (= (bvand (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!154117 (= e!100720 e!100709)))

(declare-fun b!154118 () Bool)

(declare-fun res!72796 () Bool)

(assert (=> b!154118 (=> (not res!72796) (not e!100717))))

(assert (=> b!154118 (= res!72796 e!100713)))

(declare-fun res!72794 () Bool)

(assert (=> b!154118 (=> res!72794 e!100713)))

(assert (=> b!154118 (= res!72794 (not e!100716))))

(declare-fun res!72792 () Bool)

(assert (=> b!154118 (=> (not res!72792) (not e!100716))))

(assert (=> b!154118 (= res!72792 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992))))))))

(declare-fun b!154119 () Bool)

(assert (=> b!154119 (= e!100717 e!100718)))

(declare-fun c!29492 () Bool)

(assert (=> b!154119 (= c!29492 (not (= (bvand (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!17151 () Bool)

(assert (=> bm!17151 (= call!17150 (contains!961 lt!80934 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!154120 () Bool)

(assert (=> b!154120 (= e!100714 (+!187 call!17151 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))

(declare-fun b!154121 () Bool)

(assert (=> b!154121 (= e!100710 (not call!17152))))

(assert (= (and d!50505 c!29493) b!154120))

(assert (= (and d!50505 (not c!29493)) b!154110))

(assert (= (and b!154110 c!29494) b!154114))

(assert (= (and b!154110 (not c!29494)) b!154117))

(assert (= (and b!154117 c!29495) b!154112))

(assert (= (and b!154117 (not c!29495)) b!154108))

(assert (= (or b!154112 b!154108) bm!17146))

(assert (= (or b!154114 bm!17146) bm!17147))

(assert (= (or b!154114 b!154112) bm!17150))

(assert (= (or b!154120 bm!17147) bm!17145))

(assert (= (or b!154120 bm!17150) bm!17149))

(assert (= (and d!50505 res!72795) b!154113))

(assert (= (and d!50505 c!29491) b!154107))

(assert (= (and d!50505 (not c!29491)) b!154115))

(assert (= (and d!50505 res!72797) b!154118))

(assert (= (and b!154118 res!72792) b!154106))

(assert (= (and b!154118 (not res!72794)) b!154109))

(assert (= (and b!154109 res!72793) b!154116))

(assert (= (and b!154118 res!72796) b!154103))

(assert (= (and b!154103 c!29490) b!154102))

(assert (= (and b!154103 (not c!29490)) b!154121))

(assert (= (and b!154102 res!72798) b!154101))

(assert (= (or b!154102 b!154121) bm!17148))

(assert (= (and b!154103 res!72791) b!154119))

(assert (= (and b!154119 c!29492) b!154105))

(assert (= (and b!154119 (not c!29492)) b!154104))

(assert (= (and b!154105 res!72790) b!154111))

(assert (= (or b!154105 b!154104) bm!17151))

(declare-fun b_lambda!6873 () Bool)

(assert (=> (not b_lambda!6873) (not b!154116)))

(declare-fun t!6627 () Bool)

(declare-fun tb!2765 () Bool)

(assert (=> (and b!153994 (= (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))) (defaultEntry!3064 (v!3416 (underlying!524 thiss!992)))) t!6627) tb!2765))

(declare-fun result!4497 () Bool)

(assert (=> tb!2765 (= result!4497 tp_is_empty!3027)))

(assert (=> b!154116 t!6627))

(declare-fun b_and!9617 () Bool)

(assert (= b_and!9609 (and (=> t!6627 result!4497) b_and!9617)))

(declare-fun t!6629 () Bool)

(declare-fun tb!2767 () Bool)

(assert (=> (and b!153997 (= (defaultEntry!3064 newMap!16) (defaultEntry!3064 (v!3416 (underlying!524 thiss!992)))) t!6629) tb!2767))

(declare-fun result!4501 () Bool)

(assert (= result!4501 result!4497))

(assert (=> b!154116 t!6629))

(declare-fun b_and!9619 () Bool)

(assert (= b_and!9611 (and (=> t!6629 result!4501) b_and!9619)))

(declare-fun m!187817 () Bool)

(assert (=> b!154116 m!187817))

(declare-fun m!187819 () Bool)

(assert (=> b!154116 m!187819))

(declare-fun m!187821 () Bool)

(assert (=> b!154116 m!187821))

(declare-fun m!187823 () Bool)

(assert (=> b!154116 m!187823))

(declare-fun m!187825 () Bool)

(assert (=> b!154116 m!187825))

(assert (=> b!154116 m!187817))

(assert (=> b!154116 m!187819))

(assert (=> b!154116 m!187823))

(declare-fun m!187827 () Bool)

(assert (=> bm!17145 m!187827))

(assert (=> b!154113 m!187823))

(assert (=> b!154113 m!187823))

(declare-fun m!187829 () Bool)

(assert (=> b!154113 m!187829))

(declare-fun m!187831 () Bool)

(assert (=> bm!17151 m!187831))

(declare-fun m!187833 () Bool)

(assert (=> bm!17149 m!187833))

(declare-fun m!187835 () Bool)

(assert (=> b!154101 m!187835))

(assert (=> b!154106 m!187823))

(assert (=> b!154106 m!187823))

(assert (=> b!154106 m!187829))

(declare-fun m!187837 () Bool)

(assert (=> b!154120 m!187837))

(declare-fun m!187839 () Bool)

(assert (=> bm!17148 m!187839))

(declare-fun m!187841 () Bool)

(assert (=> b!154111 m!187841))

(declare-fun m!187843 () Bool)

(assert (=> d!50505 m!187843))

(declare-fun m!187845 () Bool)

(assert (=> b!154107 m!187845))

(declare-fun m!187847 () Bool)

(assert (=> b!154107 m!187847))

(declare-fun m!187849 () Bool)

(assert (=> b!154107 m!187849))

(assert (=> b!154107 m!187823))

(declare-fun m!187851 () Bool)

(assert (=> b!154107 m!187851))

(assert (=> b!154107 m!187827))

(declare-fun m!187853 () Bool)

(assert (=> b!154107 m!187853))

(declare-fun m!187855 () Bool)

(assert (=> b!154107 m!187855))

(declare-fun m!187857 () Bool)

(assert (=> b!154107 m!187857))

(assert (=> b!154107 m!187845))

(declare-fun m!187859 () Bool)

(assert (=> b!154107 m!187859))

(declare-fun m!187861 () Bool)

(assert (=> b!154107 m!187861))

(assert (=> b!154107 m!187847))

(declare-fun m!187863 () Bool)

(assert (=> b!154107 m!187863))

(declare-fun m!187865 () Bool)

(assert (=> b!154107 m!187865))

(declare-fun m!187867 () Bool)

(assert (=> b!154107 m!187867))

(declare-fun m!187869 () Bool)

(assert (=> b!154107 m!187869))

(declare-fun m!187871 () Bool)

(assert (=> b!154107 m!187871))

(assert (=> b!154107 m!187863))

(declare-fun m!187873 () Bool)

(assert (=> b!154107 m!187873))

(assert (=> b!154107 m!187853))

(assert (=> b!154109 m!187823))

(assert (=> b!154109 m!187823))

(declare-fun m!187875 () Bool)

(assert (=> b!154109 m!187875))

(assert (=> b!153999 d!50505))

(declare-fun d!50507 () Bool)

(assert (=> d!50507 (= (valid!610 thiss!992) (valid!611 (v!3416 (underlying!524 thiss!992))))))

(declare-fun bs!6517 () Bool)

(assert (= bs!6517 d!50507))

(declare-fun m!187877 () Bool)

(assert (=> bs!6517 m!187877))

(assert (=> start!15494 d!50507))

(declare-fun d!50509 () Bool)

(assert (=> d!50509 (= (array_inv!1497 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvsge (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!153994 d!50509))

(declare-fun d!50511 () Bool)

(assert (=> d!50511 (= (array_inv!1498 (_values!3047 (v!3416 (underlying!524 thiss!992)))) (bvsge (size!2688 (_values!3047 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!153994 d!50511))

(declare-fun mapIsEmpty!5181 () Bool)

(declare-fun mapRes!5181 () Bool)

(assert (=> mapIsEmpty!5181 mapRes!5181))

(declare-fun b!154131 () Bool)

(declare-fun e!100726 () Bool)

(assert (=> b!154131 (= e!100726 tp_is_empty!3027)))

(declare-fun mapNonEmpty!5181 () Bool)

(declare-fun tp!12201 () Bool)

(declare-fun e!100725 () Bool)

(assert (=> mapNonEmpty!5181 (= mapRes!5181 (and tp!12201 e!100725))))

(declare-fun mapKey!5181 () (_ BitVec 32))

(declare-fun mapRest!5181 () (Array (_ BitVec 32) ValueCell!1170))

(declare-fun mapValue!5181 () ValueCell!1170)

(assert (=> mapNonEmpty!5181 (= mapRest!5171 (store mapRest!5181 mapKey!5181 mapValue!5181))))

(declare-fun b!154130 () Bool)

(assert (=> b!154130 (= e!100725 tp_is_empty!3027)))

(declare-fun condMapEmpty!5181 () Bool)

(declare-fun mapDefault!5181 () ValueCell!1170)

(assert (=> mapNonEmpty!5172 (= condMapEmpty!5181 (= mapRest!5171 ((as const (Array (_ BitVec 32) ValueCell!1170)) mapDefault!5181)))))

(assert (=> mapNonEmpty!5172 (= tp!12183 (and e!100726 mapRes!5181))))

(assert (= (and mapNonEmpty!5172 condMapEmpty!5181) mapIsEmpty!5181))

(assert (= (and mapNonEmpty!5172 (not condMapEmpty!5181)) mapNonEmpty!5181))

(assert (= (and mapNonEmpty!5181 ((_ is ValueCellFull!1170) mapValue!5181)) b!154130))

(assert (= (and mapNonEmpty!5172 ((_ is ValueCellFull!1170) mapDefault!5181)) b!154131))

(declare-fun m!187879 () Bool)

(assert (=> mapNonEmpty!5181 m!187879))

(declare-fun mapIsEmpty!5182 () Bool)

(declare-fun mapRes!5182 () Bool)

(assert (=> mapIsEmpty!5182 mapRes!5182))

(declare-fun b!154133 () Bool)

(declare-fun e!100728 () Bool)

(assert (=> b!154133 (= e!100728 tp_is_empty!3027)))

(declare-fun mapNonEmpty!5182 () Bool)

(declare-fun tp!12202 () Bool)

(declare-fun e!100727 () Bool)

(assert (=> mapNonEmpty!5182 (= mapRes!5182 (and tp!12202 e!100727))))

(declare-fun mapKey!5182 () (_ BitVec 32))

(declare-fun mapValue!5182 () ValueCell!1170)

(declare-fun mapRest!5182 () (Array (_ BitVec 32) ValueCell!1170))

(assert (=> mapNonEmpty!5182 (= mapRest!5172 (store mapRest!5182 mapKey!5182 mapValue!5182))))

(declare-fun b!154132 () Bool)

(assert (=> b!154132 (= e!100727 tp_is_empty!3027)))

(declare-fun condMapEmpty!5182 () Bool)

(declare-fun mapDefault!5182 () ValueCell!1170)

(assert (=> mapNonEmpty!5171 (= condMapEmpty!5182 (= mapRest!5172 ((as const (Array (_ BitVec 32) ValueCell!1170)) mapDefault!5182)))))

(assert (=> mapNonEmpty!5171 (= tp!12186 (and e!100728 mapRes!5182))))

(assert (= (and mapNonEmpty!5171 condMapEmpty!5182) mapIsEmpty!5182))

(assert (= (and mapNonEmpty!5171 (not condMapEmpty!5182)) mapNonEmpty!5182))

(assert (= (and mapNonEmpty!5182 ((_ is ValueCellFull!1170) mapValue!5182)) b!154132))

(assert (= (and mapNonEmpty!5171 ((_ is ValueCellFull!1170) mapDefault!5182)) b!154133))

(declare-fun m!187881 () Bool)

(assert (=> mapNonEmpty!5182 m!187881))

(declare-fun b_lambda!6875 () Bool)

(assert (= b_lambda!6873 (or (and b!153994 b_free!3221) (and b!153997 b_free!3223 (= (defaultEntry!3064 newMap!16) (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))))) b_lambda!6875)))

(check-sat tp_is_empty!3027 (not bm!17145) (not b_next!3223) (not b!154120) (not d!50499) b_and!9619 (not bm!17149) (not b!154056) (not d!50503) (not b!154106) (not b_lambda!6875) (not bm!17151) (not d!50507) (not d!50501) (not b!154111) b_and!9617 (not b!154101) (not b_next!3221) (not mapNonEmpty!5181) (not mapNonEmpty!5182) (not b!154057) (not b!154113) (not b!154109) (not b!154116) (not d!50505) (not b!154058) (not b!154107) (not bm!17148))
(check-sat b_and!9617 b_and!9619 (not b_next!3221) (not b_next!3223))
(get-model)

(declare-fun d!50513 () Bool)

(declare-datatypes ((Option!188 0))(
  ( (Some!187 (v!3418 V!3683)) (None!186) )
))
(declare-fun get!1610 (Option!188) V!3683)

(declare-fun getValueByKey!182 (List!1823 (_ BitVec 64)) Option!188)

(assert (=> d!50513 (= (apply!128 lt!80936 lt!80941) (get!1610 (getValueByKey!182 (toList!923 lt!80936) lt!80941)))))

(declare-fun bs!6518 () Bool)

(assert (= bs!6518 d!50513))

(declare-fun m!187883 () Bool)

(assert (=> bs!6518 m!187883))

(assert (=> bs!6518 m!187883))

(declare-fun m!187885 () Bool)

(assert (=> bs!6518 m!187885))

(assert (=> b!154107 d!50513))

(declare-fun d!50515 () Bool)

(assert (=> d!50515 (= (apply!128 (+!187 lt!80936 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!80941) (get!1610 (getValueByKey!182 (toList!923 (+!187 lt!80936 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!80941)))))

(declare-fun bs!6519 () Bool)

(assert (= bs!6519 d!50515))

(declare-fun m!187887 () Bool)

(assert (=> bs!6519 m!187887))

(assert (=> bs!6519 m!187887))

(declare-fun m!187889 () Bool)

(assert (=> bs!6519 m!187889))

(assert (=> b!154107 d!50515))

(declare-fun b!154158 () Bool)

(declare-fun lt!80964 () ListLongMap!1815)

(declare-fun e!100745 () Bool)

(assert (=> b!154158 (= e!100745 (= lt!80964 (getCurrentListMapNoExtraKeys!158 (_keys!4837 (v!3416 (underlying!524 thiss!992))) (_values!3047 (v!3416 (underlying!524 thiss!992))) (mask!7468 (v!3416 (underlying!524 thiss!992))) (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) (zeroValue!2907 (v!3416 (underlying!524 thiss!992))) (minValue!2907 (v!3416 (underlying!524 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))))))))

(declare-fun b!154159 () Bool)

(declare-fun e!100747 () Bool)

(assert (=> b!154159 (= e!100747 e!100745)))

(declare-fun c!29505 () Bool)

(assert (=> b!154159 (= c!29505 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992))))))))

(declare-fun b!154160 () Bool)

(declare-fun e!100744 () Bool)

(assert (=> b!154160 (= e!100744 e!100747)))

(declare-fun c!29504 () Bool)

(declare-fun e!100749 () Bool)

(assert (=> b!154160 (= c!29504 e!100749)))

(declare-fun res!72808 () Bool)

(assert (=> b!154160 (=> (not res!72808) (not e!100749))))

(assert (=> b!154160 (= res!72808 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992))))))))

(declare-fun b!154162 () Bool)

(declare-fun res!72807 () Bool)

(assert (=> b!154162 (=> (not res!72807) (not e!100744))))

(assert (=> b!154162 (= res!72807 (not (contains!961 lt!80964 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!154163 () Bool)

(declare-fun e!100743 () ListLongMap!1815)

(declare-fun e!100746 () ListLongMap!1815)

(assert (=> b!154163 (= e!100743 e!100746)))

(declare-fun c!29506 () Bool)

(assert (=> b!154163 (= c!29506 (validKeyInArray!0 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!154164 () Bool)

(declare-fun isEmpty!435 (ListLongMap!1815) Bool)

(assert (=> b!154164 (= e!100745 (isEmpty!435 lt!80964))))

(declare-fun bm!17154 () Bool)

(declare-fun call!17157 () ListLongMap!1815)

(assert (=> bm!17154 (= call!17157 (getCurrentListMapNoExtraKeys!158 (_keys!4837 (v!3416 (underlying!524 thiss!992))) (_values!3047 (v!3416 (underlying!524 thiss!992))) (mask!7468 (v!3416 (underlying!524 thiss!992))) (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) (zeroValue!2907 (v!3416 (underlying!524 thiss!992))) (minValue!2907 (v!3416 (underlying!524 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!3064 (v!3416 (underlying!524 thiss!992)))))))

(declare-fun b!154165 () Bool)

(assert (=> b!154165 (= e!100749 (validKeyInArray!0 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!154165 (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000)))

(declare-fun d!50517 () Bool)

(assert (=> d!50517 e!100744))

(declare-fun res!72809 () Bool)

(assert (=> d!50517 (=> (not res!72809) (not e!100744))))

(assert (=> d!50517 (= res!72809 (not (contains!961 lt!80964 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!50517 (= lt!80964 e!100743)))

(declare-fun c!29507 () Bool)

(assert (=> d!50517 (= c!29507 (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992))))))))

(assert (=> d!50517 (validMask!0 (mask!7468 (v!3416 (underlying!524 thiss!992))))))

(assert (=> d!50517 (= (getCurrentListMapNoExtraKeys!158 (_keys!4837 (v!3416 (underlying!524 thiss!992))) (_values!3047 (v!3416 (underlying!524 thiss!992))) (mask!7468 (v!3416 (underlying!524 thiss!992))) (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) (zeroValue!2907 (v!3416 (underlying!524 thiss!992))) (minValue!2907 (v!3416 (underlying!524 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3064 (v!3416 (underlying!524 thiss!992)))) lt!80964)))

(declare-fun b!154161 () Bool)

(assert (=> b!154161 (= e!100743 (ListLongMap!1816 Nil!1820))))

(declare-fun b!154166 () Bool)

(declare-fun lt!80962 () Unit!4897)

(declare-fun lt!80960 () Unit!4897)

(assert (=> b!154166 (= lt!80962 lt!80960)))

(declare-fun lt!80965 () V!3683)

(declare-fun lt!80963 () (_ BitVec 64))

(declare-fun lt!80959 () (_ BitVec 64))

(declare-fun lt!80961 () ListLongMap!1815)

(assert (=> b!154166 (not (contains!961 (+!187 lt!80961 (tuple2!2807 lt!80963 lt!80965)) lt!80959))))

(declare-fun addStillNotContains!72 (ListLongMap!1815 (_ BitVec 64) V!3683 (_ BitVec 64)) Unit!4897)

(assert (=> b!154166 (= lt!80960 (addStillNotContains!72 lt!80961 lt!80963 lt!80965 lt!80959))))

(assert (=> b!154166 (= lt!80959 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!154166 (= lt!80965 (get!1609 (select (arr!2411 (_values!3047 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!466 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!154166 (= lt!80963 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!154166 (= lt!80961 call!17157)))

(assert (=> b!154166 (= e!100746 (+!187 call!17157 (tuple2!2807 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1609 (select (arr!2411 (_values!3047 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!466 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!154167 () Bool)

(assert (=> b!154167 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992))))))))

(assert (=> b!154167 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2688 (_values!3047 (v!3416 (underlying!524 thiss!992))))))))

(declare-fun e!100748 () Bool)

(assert (=> b!154167 (= e!100748 (= (apply!128 lt!80964 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1609 (select (arr!2411 (_values!3047 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!466 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!154168 () Bool)

(assert (=> b!154168 (= e!100747 e!100748)))

(assert (=> b!154168 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992))))))))

(declare-fun res!72810 () Bool)

(assert (=> b!154168 (= res!72810 (contains!961 lt!80964 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!154168 (=> (not res!72810) (not e!100748))))

(declare-fun b!154169 () Bool)

(assert (=> b!154169 (= e!100746 call!17157)))

(assert (= (and d!50517 c!29507) b!154161))

(assert (= (and d!50517 (not c!29507)) b!154163))

(assert (= (and b!154163 c!29506) b!154166))

(assert (= (and b!154163 (not c!29506)) b!154169))

(assert (= (or b!154166 b!154169) bm!17154))

(assert (= (and d!50517 res!72809) b!154162))

(assert (= (and b!154162 res!72807) b!154160))

(assert (= (and b!154160 res!72808) b!154165))

(assert (= (and b!154160 c!29504) b!154168))

(assert (= (and b!154160 (not c!29504)) b!154159))

(assert (= (and b!154168 res!72810) b!154167))

(assert (= (and b!154159 c!29505) b!154158))

(assert (= (and b!154159 (not c!29505)) b!154164))

(declare-fun b_lambda!6877 () Bool)

(assert (=> (not b_lambda!6877) (not b!154166)))

(assert (=> b!154166 t!6627))

(declare-fun b_and!9621 () Bool)

(assert (= b_and!9617 (and (=> t!6627 result!4497) b_and!9621)))

(assert (=> b!154166 t!6629))

(declare-fun b_and!9623 () Bool)

(assert (= b_and!9619 (and (=> t!6629 result!4501) b_and!9623)))

(declare-fun b_lambda!6879 () Bool)

(assert (=> (not b_lambda!6879) (not b!154167)))

(assert (=> b!154167 t!6627))

(declare-fun b_and!9625 () Bool)

(assert (= b_and!9621 (and (=> t!6627 result!4497) b_and!9625)))

(assert (=> b!154167 t!6629))

(declare-fun b_and!9627 () Bool)

(assert (= b_and!9623 (and (=> t!6629 result!4501) b_and!9627)))

(assert (=> b!154167 m!187817))

(assert (=> b!154167 m!187817))

(assert (=> b!154167 m!187819))

(assert (=> b!154167 m!187821))

(assert (=> b!154167 m!187823))

(declare-fun m!187891 () Bool)

(assert (=> b!154167 m!187891))

(assert (=> b!154167 m!187823))

(assert (=> b!154167 m!187819))

(declare-fun m!187893 () Bool)

(assert (=> bm!17154 m!187893))

(declare-fun m!187895 () Bool)

(assert (=> b!154162 m!187895))

(assert (=> b!154165 m!187823))

(assert (=> b!154165 m!187823))

(assert (=> b!154165 m!187829))

(declare-fun m!187897 () Bool)

(assert (=> b!154164 m!187897))

(assert (=> b!154158 m!187893))

(assert (=> b!154163 m!187823))

(assert (=> b!154163 m!187823))

(assert (=> b!154163 m!187829))

(assert (=> b!154168 m!187823))

(assert (=> b!154168 m!187823))

(declare-fun m!187899 () Bool)

(assert (=> b!154168 m!187899))

(declare-fun m!187901 () Bool)

(assert (=> b!154166 m!187901))

(declare-fun m!187903 () Bool)

(assert (=> b!154166 m!187903))

(assert (=> b!154166 m!187817))

(assert (=> b!154166 m!187819))

(assert (=> b!154166 m!187821))

(declare-fun m!187905 () Bool)

(assert (=> b!154166 m!187905))

(assert (=> b!154166 m!187823))

(assert (=> b!154166 m!187901))

(assert (=> b!154166 m!187819))

(declare-fun m!187907 () Bool)

(assert (=> b!154166 m!187907))

(assert (=> b!154166 m!187817))

(declare-fun m!187909 () Bool)

(assert (=> d!50517 m!187909))

(assert (=> d!50517 m!187843))

(assert (=> b!154107 d!50517))

(declare-fun d!50519 () Bool)

(assert (=> d!50519 (= (apply!128 (+!187 lt!80936 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!80941) (apply!128 lt!80936 lt!80941))))

(declare-fun lt!80968 () Unit!4897)

(declare-fun choose!925 (ListLongMap!1815 (_ BitVec 64) V!3683 (_ BitVec 64)) Unit!4897)

(assert (=> d!50519 (= lt!80968 (choose!925 lt!80936 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992))) lt!80941))))

(declare-fun e!100752 () Bool)

(assert (=> d!50519 e!100752))

(declare-fun res!72813 () Bool)

(assert (=> d!50519 (=> (not res!72813) (not e!100752))))

(assert (=> d!50519 (= res!72813 (contains!961 lt!80936 lt!80941))))

(assert (=> d!50519 (= (addApplyDifferent!104 lt!80936 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992))) lt!80941) lt!80968)))

(declare-fun b!154173 () Bool)

(assert (=> b!154173 (= e!100752 (not (= lt!80941 lt!80926)))))

(assert (= (and d!50519 res!72813) b!154173))

(assert (=> d!50519 m!187863))

(assert (=> d!50519 m!187865))

(declare-fun m!187911 () Bool)

(assert (=> d!50519 m!187911))

(declare-fun m!187913 () Bool)

(assert (=> d!50519 m!187913))

(assert (=> d!50519 m!187863))

(assert (=> d!50519 m!187873))

(assert (=> b!154107 d!50519))

(declare-fun d!50521 () Bool)

(assert (=> d!50521 (= (apply!128 (+!187 lt!80942 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!80933) (apply!128 lt!80942 lt!80933))))

(declare-fun lt!80969 () Unit!4897)

(assert (=> d!50521 (= lt!80969 (choose!925 lt!80942 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992))) lt!80933))))

(declare-fun e!100753 () Bool)

(assert (=> d!50521 e!100753))

(declare-fun res!72814 () Bool)

(assert (=> d!50521 (=> (not res!72814) (not e!100753))))

(assert (=> d!50521 (= res!72814 (contains!961 lt!80942 lt!80933))))

(assert (=> d!50521 (= (addApplyDifferent!104 lt!80942 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992))) lt!80933) lt!80969)))

(declare-fun b!154174 () Bool)

(assert (=> b!154174 (= e!100753 (not (= lt!80933 lt!80931)))))

(assert (= (and d!50521 res!72814) b!154174))

(assert (=> d!50521 m!187847))

(assert (=> d!50521 m!187849))

(declare-fun m!187915 () Bool)

(assert (=> d!50521 m!187915))

(declare-fun m!187917 () Bool)

(assert (=> d!50521 m!187917))

(assert (=> d!50521 m!187847))

(assert (=> d!50521 m!187851))

(assert (=> b!154107 d!50521))

(declare-fun d!50523 () Bool)

(assert (=> d!50523 (= (apply!128 (+!187 lt!80924 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!80929) (apply!128 lt!80924 lt!80929))))

(declare-fun lt!80970 () Unit!4897)

(assert (=> d!50523 (= lt!80970 (choose!925 lt!80924 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))) lt!80929))))

(declare-fun e!100754 () Bool)

(assert (=> d!50523 e!100754))

(declare-fun res!72815 () Bool)

(assert (=> d!50523 (=> (not res!72815) (not e!100754))))

(assert (=> d!50523 (= res!72815 (contains!961 lt!80924 lt!80929))))

(assert (=> d!50523 (= (addApplyDifferent!104 lt!80924 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))) lt!80929) lt!80970)))

(declare-fun b!154175 () Bool)

(assert (=> b!154175 (= e!100754 (not (= lt!80929 lt!80935)))))

(assert (= (and d!50523 res!72815) b!154175))

(assert (=> d!50523 m!187853))

(assert (=> d!50523 m!187855))

(declare-fun m!187919 () Bool)

(assert (=> d!50523 m!187919))

(declare-fun m!187921 () Bool)

(assert (=> d!50523 m!187921))

(assert (=> d!50523 m!187853))

(assert (=> d!50523 m!187867))

(assert (=> b!154107 d!50523))

(declare-fun d!50525 () Bool)

(declare-fun e!100757 () Bool)

(assert (=> d!50525 e!100757))

(declare-fun res!72820 () Bool)

(assert (=> d!50525 (=> (not res!72820) (not e!100757))))

(declare-fun lt!80981 () ListLongMap!1815)

(assert (=> d!50525 (= res!72820 (contains!961 lt!80981 (_1!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun lt!80980 () List!1823)

(assert (=> d!50525 (= lt!80981 (ListLongMap!1816 lt!80980))))

(declare-fun lt!80982 () Unit!4897)

(declare-fun lt!80979 () Unit!4897)

(assert (=> d!50525 (= lt!80982 lt!80979)))

(assert (=> d!50525 (= (getValueByKey!182 lt!80980 (_1!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) (Some!187 (_2!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!97 (List!1823 (_ BitVec 64) V!3683) Unit!4897)

(assert (=> d!50525 (= lt!80979 (lemmaContainsTupThenGetReturnValue!97 lt!80980 (_1!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun insertStrictlySorted!99 (List!1823 (_ BitVec 64) V!3683) List!1823)

(assert (=> d!50525 (= lt!80980 (insertStrictlySorted!99 (toList!923 lt!80942) (_1!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (=> d!50525 (= (+!187 lt!80942 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!80981)))

(declare-fun b!154180 () Bool)

(declare-fun res!72821 () Bool)

(assert (=> b!154180 (=> (not res!72821) (not e!100757))))

(assert (=> b!154180 (= res!72821 (= (getValueByKey!182 (toList!923 lt!80981) (_1!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) (Some!187 (_2!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun b!154181 () Bool)

(declare-fun contains!962 (List!1823 tuple2!2806) Bool)

(assert (=> b!154181 (= e!100757 (contains!962 (toList!923 lt!80981) (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))

(assert (= (and d!50525 res!72820) b!154180))

(assert (= (and b!154180 res!72821) b!154181))

(declare-fun m!187923 () Bool)

(assert (=> d!50525 m!187923))

(declare-fun m!187925 () Bool)

(assert (=> d!50525 m!187925))

(declare-fun m!187927 () Bool)

(assert (=> d!50525 m!187927))

(declare-fun m!187929 () Bool)

(assert (=> d!50525 m!187929))

(declare-fun m!187931 () Bool)

(assert (=> b!154180 m!187931))

(declare-fun m!187933 () Bool)

(assert (=> b!154181 m!187933))

(assert (=> b!154107 d!50525))

(declare-fun d!50527 () Bool)

(assert (=> d!50527 (= (apply!128 lt!80942 lt!80933) (get!1610 (getValueByKey!182 (toList!923 lt!80942) lt!80933)))))

(declare-fun bs!6520 () Bool)

(assert (= bs!6520 d!50527))

(declare-fun m!187935 () Bool)

(assert (=> bs!6520 m!187935))

(assert (=> bs!6520 m!187935))

(declare-fun m!187937 () Bool)

(assert (=> bs!6520 m!187937))

(assert (=> b!154107 d!50527))

(declare-fun d!50529 () Bool)

(assert (=> d!50529 (= (apply!128 lt!80924 lt!80929) (get!1610 (getValueByKey!182 (toList!923 lt!80924) lt!80929)))))

(declare-fun bs!6521 () Bool)

(assert (= bs!6521 d!50529))

(declare-fun m!187939 () Bool)

(assert (=> bs!6521 m!187939))

(assert (=> bs!6521 m!187939))

(declare-fun m!187941 () Bool)

(assert (=> bs!6521 m!187941))

(assert (=> b!154107 d!50529))

(declare-fun d!50531 () Bool)

(declare-fun e!100758 () Bool)

(assert (=> d!50531 e!100758))

(declare-fun res!72822 () Bool)

(assert (=> d!50531 (=> (not res!72822) (not e!100758))))

(declare-fun lt!80985 () ListLongMap!1815)

(assert (=> d!50531 (= res!72822 (contains!961 lt!80985 (_1!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun lt!80984 () List!1823)

(assert (=> d!50531 (= lt!80985 (ListLongMap!1816 lt!80984))))

(declare-fun lt!80986 () Unit!4897)

(declare-fun lt!80983 () Unit!4897)

(assert (=> d!50531 (= lt!80986 lt!80983)))

(assert (=> d!50531 (= (getValueByKey!182 lt!80984 (_1!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) (Some!187 (_2!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (=> d!50531 (= lt!80983 (lemmaContainsTupThenGetReturnValue!97 lt!80984 (_1!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (=> d!50531 (= lt!80984 (insertStrictlySorted!99 (toList!923 lt!80932) (_1!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (=> d!50531 (= (+!187 lt!80932 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!80985)))

(declare-fun b!154182 () Bool)

(declare-fun res!72823 () Bool)

(assert (=> b!154182 (=> (not res!72823) (not e!100758))))

(assert (=> b!154182 (= res!72823 (= (getValueByKey!182 (toList!923 lt!80985) (_1!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) (Some!187 (_2!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun b!154183 () Bool)

(assert (=> b!154183 (= e!100758 (contains!962 (toList!923 lt!80985) (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))))

(assert (= (and d!50531 res!72822) b!154182))

(assert (= (and b!154182 res!72823) b!154183))

(declare-fun m!187943 () Bool)

(assert (=> d!50531 m!187943))

(declare-fun m!187945 () Bool)

(assert (=> d!50531 m!187945))

(declare-fun m!187947 () Bool)

(assert (=> d!50531 m!187947))

(declare-fun m!187949 () Bool)

(assert (=> d!50531 m!187949))

(declare-fun m!187951 () Bool)

(assert (=> b!154182 m!187951))

(declare-fun m!187953 () Bool)

(assert (=> b!154183 m!187953))

(assert (=> b!154107 d!50531))

(declare-fun d!50533 () Bool)

(declare-fun e!100763 () Bool)

(assert (=> d!50533 e!100763))

(declare-fun res!72826 () Bool)

(assert (=> d!50533 (=> res!72826 e!100763)))

(declare-fun lt!80996 () Bool)

(assert (=> d!50533 (= res!72826 (not lt!80996))))

(declare-fun lt!80995 () Bool)

(assert (=> d!50533 (= lt!80996 lt!80995)))

(declare-fun lt!80998 () Unit!4897)

(declare-fun e!100764 () Unit!4897)

(assert (=> d!50533 (= lt!80998 e!100764)))

(declare-fun c!29510 () Bool)

(assert (=> d!50533 (= c!29510 lt!80995)))

(declare-fun containsKey!186 (List!1823 (_ BitVec 64)) Bool)

(assert (=> d!50533 (= lt!80995 (containsKey!186 (toList!923 (+!187 lt!80932 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!80944))))

(assert (=> d!50533 (= (contains!961 (+!187 lt!80932 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!80944) lt!80996)))

(declare-fun b!154190 () Bool)

(declare-fun lt!80997 () Unit!4897)

(assert (=> b!154190 (= e!100764 lt!80997)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!135 (List!1823 (_ BitVec 64)) Unit!4897)

(assert (=> b!154190 (= lt!80997 (lemmaContainsKeyImpliesGetValueByKeyDefined!135 (toList!923 (+!187 lt!80932 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!80944))))

(declare-fun isDefined!136 (Option!188) Bool)

(assert (=> b!154190 (isDefined!136 (getValueByKey!182 (toList!923 (+!187 lt!80932 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!80944))))

(declare-fun b!154191 () Bool)

(declare-fun Unit!4900 () Unit!4897)

(assert (=> b!154191 (= e!100764 Unit!4900)))

(declare-fun b!154192 () Bool)

(assert (=> b!154192 (= e!100763 (isDefined!136 (getValueByKey!182 (toList!923 (+!187 lt!80932 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!80944)))))

(assert (= (and d!50533 c!29510) b!154190))

(assert (= (and d!50533 (not c!29510)) b!154191))

(assert (= (and d!50533 (not res!72826)) b!154192))

(declare-fun m!187955 () Bool)

(assert (=> d!50533 m!187955))

(declare-fun m!187957 () Bool)

(assert (=> b!154190 m!187957))

(declare-fun m!187959 () Bool)

(assert (=> b!154190 m!187959))

(assert (=> b!154190 m!187959))

(declare-fun m!187961 () Bool)

(assert (=> b!154190 m!187961))

(assert (=> b!154192 m!187959))

(assert (=> b!154192 m!187959))

(assert (=> b!154192 m!187961))

(assert (=> b!154107 d!50533))

(declare-fun d!50535 () Bool)

(assert (=> d!50535 (= (apply!128 (+!187 lt!80924 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!80929) (get!1610 (getValueByKey!182 (toList!923 (+!187 lt!80924 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!80929)))))

(declare-fun bs!6522 () Bool)

(assert (= bs!6522 d!50535))

(declare-fun m!187963 () Bool)

(assert (=> bs!6522 m!187963))

(assert (=> bs!6522 m!187963))

(declare-fun m!187965 () Bool)

(assert (=> bs!6522 m!187965))

(assert (=> b!154107 d!50535))

(declare-fun d!50537 () Bool)

(declare-fun e!100765 () Bool)

(assert (=> d!50537 e!100765))

(declare-fun res!72827 () Bool)

(assert (=> d!50537 (=> (not res!72827) (not e!100765))))

(declare-fun lt!81001 () ListLongMap!1815)

(assert (=> d!50537 (= res!72827 (contains!961 lt!81001 (_1!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun lt!81000 () List!1823)

(assert (=> d!50537 (= lt!81001 (ListLongMap!1816 lt!81000))))

(declare-fun lt!81002 () Unit!4897)

(declare-fun lt!80999 () Unit!4897)

(assert (=> d!50537 (= lt!81002 lt!80999)))

(assert (=> d!50537 (= (getValueByKey!182 lt!81000 (_1!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) (Some!187 (_2!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (=> d!50537 (= lt!80999 (lemmaContainsTupThenGetReturnValue!97 lt!81000 (_1!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (=> d!50537 (= lt!81000 (insertStrictlySorted!99 (toList!923 lt!80936) (_1!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (=> d!50537 (= (+!187 lt!80936 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!81001)))

(declare-fun b!154193 () Bool)

(declare-fun res!72828 () Bool)

(assert (=> b!154193 (=> (not res!72828) (not e!100765))))

(assert (=> b!154193 (= res!72828 (= (getValueByKey!182 (toList!923 lt!81001) (_1!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) (Some!187 (_2!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun b!154194 () Bool)

(assert (=> b!154194 (= e!100765 (contains!962 (toList!923 lt!81001) (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))

(assert (= (and d!50537 res!72827) b!154193))

(assert (= (and b!154193 res!72828) b!154194))

(declare-fun m!187967 () Bool)

(assert (=> d!50537 m!187967))

(declare-fun m!187969 () Bool)

(assert (=> d!50537 m!187969))

(declare-fun m!187971 () Bool)

(assert (=> d!50537 m!187971))

(declare-fun m!187973 () Bool)

(assert (=> d!50537 m!187973))

(declare-fun m!187975 () Bool)

(assert (=> b!154193 m!187975))

(declare-fun m!187977 () Bool)

(assert (=> b!154194 m!187977))

(assert (=> b!154107 d!50537))

(declare-fun d!50539 () Bool)

(declare-fun e!100766 () Bool)

(assert (=> d!50539 e!100766))

(declare-fun res!72829 () Bool)

(assert (=> d!50539 (=> (not res!72829) (not e!100766))))

(declare-fun lt!81005 () ListLongMap!1815)

(assert (=> d!50539 (= res!72829 (contains!961 lt!81005 (_1!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun lt!81004 () List!1823)

(assert (=> d!50539 (= lt!81005 (ListLongMap!1816 lt!81004))))

(declare-fun lt!81006 () Unit!4897)

(declare-fun lt!81003 () Unit!4897)

(assert (=> d!50539 (= lt!81006 lt!81003)))

(assert (=> d!50539 (= (getValueByKey!182 lt!81004 (_1!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) (Some!187 (_2!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (=> d!50539 (= lt!81003 (lemmaContainsTupThenGetReturnValue!97 lt!81004 (_1!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (=> d!50539 (= lt!81004 (insertStrictlySorted!99 (toList!923 lt!80924) (_1!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (=> d!50539 (= (+!187 lt!80924 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!81005)))

(declare-fun b!154195 () Bool)

(declare-fun res!72830 () Bool)

(assert (=> b!154195 (=> (not res!72830) (not e!100766))))

(assert (=> b!154195 (= res!72830 (= (getValueByKey!182 (toList!923 lt!81005) (_1!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) (Some!187 (_2!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun b!154196 () Bool)

(assert (=> b!154196 (= e!100766 (contains!962 (toList!923 lt!81005) (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))))

(assert (= (and d!50539 res!72829) b!154195))

(assert (= (and b!154195 res!72830) b!154196))

(declare-fun m!187979 () Bool)

(assert (=> d!50539 m!187979))

(declare-fun m!187981 () Bool)

(assert (=> d!50539 m!187981))

(declare-fun m!187983 () Bool)

(assert (=> d!50539 m!187983))

(declare-fun m!187985 () Bool)

(assert (=> d!50539 m!187985))

(declare-fun m!187987 () Bool)

(assert (=> b!154195 m!187987))

(declare-fun m!187989 () Bool)

(assert (=> b!154196 m!187989))

(assert (=> b!154107 d!50539))

(declare-fun d!50541 () Bool)

(assert (=> d!50541 (contains!961 (+!187 lt!80932 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!80944)))

(declare-fun lt!81009 () Unit!4897)

(declare-fun choose!926 (ListLongMap!1815 (_ BitVec 64) V!3683 (_ BitVec 64)) Unit!4897)

(assert (=> d!50541 (= lt!81009 (choose!926 lt!80932 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))) lt!80944))))

(assert (=> d!50541 (contains!961 lt!80932 lt!80944)))

(assert (=> d!50541 (= (addStillContains!104 lt!80932 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))) lt!80944) lt!81009)))

(declare-fun bs!6523 () Bool)

(assert (= bs!6523 d!50541))

(assert (=> bs!6523 m!187845))

(assert (=> bs!6523 m!187845))

(assert (=> bs!6523 m!187859))

(declare-fun m!187991 () Bool)

(assert (=> bs!6523 m!187991))

(declare-fun m!187993 () Bool)

(assert (=> bs!6523 m!187993))

(assert (=> b!154107 d!50541))

(declare-fun d!50543 () Bool)

(assert (=> d!50543 (= (apply!128 (+!187 lt!80942 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!80933) (get!1610 (getValueByKey!182 (toList!923 (+!187 lt!80942 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!80933)))))

(declare-fun bs!6524 () Bool)

(assert (= bs!6524 d!50543))

(declare-fun m!187995 () Bool)

(assert (=> bs!6524 m!187995))

(assert (=> bs!6524 m!187995))

(declare-fun m!187997 () Bool)

(assert (=> bs!6524 m!187997))

(assert (=> b!154107 d!50543))

(declare-fun d!50545 () Bool)

(assert (=> d!50545 (= (apply!128 lt!80934 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1610 (getValueByKey!182 (toList!923 lt!80934) (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun bs!6525 () Bool)

(assert (= bs!6525 d!50545))

(assert (=> bs!6525 m!187823))

(declare-fun m!187999 () Bool)

(assert (=> bs!6525 m!187999))

(assert (=> bs!6525 m!187999))

(declare-fun m!188001 () Bool)

(assert (=> bs!6525 m!188001))

(assert (=> b!154116 d!50545))

(declare-fun d!50547 () Bool)

(declare-fun c!29513 () Bool)

(assert (=> d!50547 (= c!29513 ((_ is ValueCellFull!1170) (select (arr!2411 (_values!3047 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun e!100769 () V!3683)

(assert (=> d!50547 (= (get!1609 (select (arr!2411 (_values!3047 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!466 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!100769)))

(declare-fun b!154202 () Bool)

(declare-fun get!1611 (ValueCell!1170 V!3683) V!3683)

(assert (=> b!154202 (= e!100769 (get!1611 (select (arr!2411 (_values!3047 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!466 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!154203 () Bool)

(declare-fun get!1612 (ValueCell!1170 V!3683) V!3683)

(assert (=> b!154203 (= e!100769 (get!1612 (select (arr!2411 (_values!3047 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!466 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!50547 c!29513) b!154202))

(assert (= (and d!50547 (not c!29513)) b!154203))

(assert (=> b!154202 m!187817))

(assert (=> b!154202 m!187819))

(declare-fun m!188003 () Bool)

(assert (=> b!154202 m!188003))

(assert (=> b!154203 m!187817))

(assert (=> b!154203 m!187819))

(declare-fun m!188005 () Bool)

(assert (=> b!154203 m!188005))

(assert (=> b!154116 d!50547))

(declare-fun d!50549 () Bool)

(declare-fun e!100770 () Bool)

(assert (=> d!50549 e!100770))

(declare-fun res!72831 () Bool)

(assert (=> d!50549 (=> res!72831 e!100770)))

(declare-fun lt!81011 () Bool)

(assert (=> d!50549 (= res!72831 (not lt!81011))))

(declare-fun lt!81010 () Bool)

(assert (=> d!50549 (= lt!81011 lt!81010)))

(declare-fun lt!81013 () Unit!4897)

(declare-fun e!100771 () Unit!4897)

(assert (=> d!50549 (= lt!81013 e!100771)))

(declare-fun c!29514 () Bool)

(assert (=> d!50549 (= c!29514 lt!81010)))

(assert (=> d!50549 (= lt!81010 (containsKey!186 (toList!923 lt!80934) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!50549 (= (contains!961 lt!80934 #b0000000000000000000000000000000000000000000000000000000000000000) lt!81011)))

(declare-fun b!154204 () Bool)

(declare-fun lt!81012 () Unit!4897)

(assert (=> b!154204 (= e!100771 lt!81012)))

(assert (=> b!154204 (= lt!81012 (lemmaContainsKeyImpliesGetValueByKeyDefined!135 (toList!923 lt!80934) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!154204 (isDefined!136 (getValueByKey!182 (toList!923 lt!80934) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!154205 () Bool)

(declare-fun Unit!4901 () Unit!4897)

(assert (=> b!154205 (= e!100771 Unit!4901)))

(declare-fun b!154206 () Bool)

(assert (=> b!154206 (= e!100770 (isDefined!136 (getValueByKey!182 (toList!923 lt!80934) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!50549 c!29514) b!154204))

(assert (= (and d!50549 (not c!29514)) b!154205))

(assert (= (and d!50549 (not res!72831)) b!154206))

(declare-fun m!188007 () Bool)

(assert (=> d!50549 m!188007))

(declare-fun m!188009 () Bool)

(assert (=> b!154204 m!188009))

(declare-fun m!188011 () Bool)

(assert (=> b!154204 m!188011))

(assert (=> b!154204 m!188011))

(declare-fun m!188013 () Bool)

(assert (=> b!154204 m!188013))

(assert (=> b!154206 m!188011))

(assert (=> b!154206 m!188011))

(assert (=> b!154206 m!188013))

(assert (=> bm!17148 d!50549))

(declare-fun d!50551 () Bool)

(assert (=> d!50551 (= (validKeyInArray!0 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (and (not (= (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!154113 d!50551))

(declare-fun d!50553 () Bool)

(declare-fun res!72832 () Bool)

(declare-fun e!100772 () Bool)

(assert (=> d!50553 (=> (not res!72832) (not e!100772))))

(assert (=> d!50553 (= res!72832 (simpleValid!103 (v!3416 (underlying!524 thiss!992))))))

(assert (=> d!50553 (= (valid!611 (v!3416 (underlying!524 thiss!992))) e!100772)))

(declare-fun b!154207 () Bool)

(declare-fun res!72833 () Bool)

(assert (=> b!154207 (=> (not res!72833) (not e!100772))))

(assert (=> b!154207 (= res!72833 (= (arrayCountValidKeys!0 (_keys!4837 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000000000 (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992))))) (_size!673 (v!3416 (underlying!524 thiss!992)))))))

(declare-fun b!154208 () Bool)

(declare-fun res!72834 () Bool)

(assert (=> b!154208 (=> (not res!72834) (not e!100772))))

(assert (=> b!154208 (= res!72834 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4837 (v!3416 (underlying!524 thiss!992))) (mask!7468 (v!3416 (underlying!524 thiss!992)))))))

(declare-fun b!154209 () Bool)

(assert (=> b!154209 (= e!100772 (arrayNoDuplicates!0 (_keys!4837 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000000000 Nil!1821))))

(assert (= (and d!50553 res!72832) b!154207))

(assert (= (and b!154207 res!72833) b!154208))

(assert (= (and b!154208 res!72834) b!154209))

(declare-fun m!188015 () Bool)

(assert (=> d!50553 m!188015))

(declare-fun m!188017 () Bool)

(assert (=> b!154207 m!188017))

(declare-fun m!188019 () Bool)

(assert (=> b!154208 m!188019))

(declare-fun m!188021 () Bool)

(assert (=> b!154209 m!188021))

(assert (=> d!50507 d!50553))

(declare-fun d!50555 () Bool)

(declare-fun e!100773 () Bool)

(assert (=> d!50555 e!100773))

(declare-fun res!72835 () Bool)

(assert (=> d!50555 (=> (not res!72835) (not e!100773))))

(declare-fun lt!81016 () ListLongMap!1815)

(assert (=> d!50555 (= res!72835 (contains!961 lt!81016 (_1!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun lt!81015 () List!1823)

(assert (=> d!50555 (= lt!81016 (ListLongMap!1816 lt!81015))))

(declare-fun lt!81017 () Unit!4897)

(declare-fun lt!81014 () Unit!4897)

(assert (=> d!50555 (= lt!81017 lt!81014)))

(assert (=> d!50555 (= (getValueByKey!182 lt!81015 (_1!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))) (Some!187 (_2!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(assert (=> d!50555 (= lt!81014 (lemmaContainsTupThenGetReturnValue!97 lt!81015 (_1!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) (_2!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(assert (=> d!50555 (= lt!81015 (insertStrictlySorted!99 (toList!923 (ite c!29493 call!17149 (ite c!29494 call!17153 call!17148))) (_1!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) (_2!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(assert (=> d!50555 (= (+!187 (ite c!29493 call!17149 (ite c!29494 call!17153 call!17148)) (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!81016)))

(declare-fun b!154210 () Bool)

(declare-fun res!72836 () Bool)

(assert (=> b!154210 (=> (not res!72836) (not e!100773))))

(assert (=> b!154210 (= res!72836 (= (getValueByKey!182 (toList!923 lt!81016) (_1!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))) (Some!187 (_2!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))))

(declare-fun b!154211 () Bool)

(assert (=> b!154211 (= e!100773 (contains!962 (toList!923 lt!81016) (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (= (and d!50555 res!72835) b!154210))

(assert (= (and b!154210 res!72836) b!154211))

(declare-fun m!188023 () Bool)

(assert (=> d!50555 m!188023))

(declare-fun m!188025 () Bool)

(assert (=> d!50555 m!188025))

(declare-fun m!188027 () Bool)

(assert (=> d!50555 m!188027))

(declare-fun m!188029 () Bool)

(assert (=> d!50555 m!188029))

(declare-fun m!188031 () Bool)

(assert (=> b!154210 m!188031))

(declare-fun m!188033 () Bool)

(assert (=> b!154211 m!188033))

(assert (=> bm!17149 d!50555))

(assert (=> b!154106 d!50551))

(declare-fun d!50557 () Bool)

(assert (=> d!50557 (= (validMask!0 (mask!7468 (v!3416 (underlying!524 thiss!992)))) (and (or (= (mask!7468 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000000111) (= (mask!7468 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000001111) (= (mask!7468 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000011111) (= (mask!7468 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000111111) (= (mask!7468 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000001111111) (= (mask!7468 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000011111111) (= (mask!7468 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000111111111) (= (mask!7468 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000001111111111) (= (mask!7468 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000011111111111) (= (mask!7468 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000111111111111) (= (mask!7468 (v!3416 (underlying!524 thiss!992))) #b00000000000000000001111111111111) (= (mask!7468 (v!3416 (underlying!524 thiss!992))) #b00000000000000000011111111111111) (= (mask!7468 (v!3416 (underlying!524 thiss!992))) #b00000000000000000111111111111111) (= (mask!7468 (v!3416 (underlying!524 thiss!992))) #b00000000000000001111111111111111) (= (mask!7468 (v!3416 (underlying!524 thiss!992))) #b00000000000000011111111111111111) (= (mask!7468 (v!3416 (underlying!524 thiss!992))) #b00000000000000111111111111111111) (= (mask!7468 (v!3416 (underlying!524 thiss!992))) #b00000000000001111111111111111111) (= (mask!7468 (v!3416 (underlying!524 thiss!992))) #b00000000000011111111111111111111) (= (mask!7468 (v!3416 (underlying!524 thiss!992))) #b00000000000111111111111111111111) (= (mask!7468 (v!3416 (underlying!524 thiss!992))) #b00000000001111111111111111111111) (= (mask!7468 (v!3416 (underlying!524 thiss!992))) #b00000000011111111111111111111111) (= (mask!7468 (v!3416 (underlying!524 thiss!992))) #b00000000111111111111111111111111) (= (mask!7468 (v!3416 (underlying!524 thiss!992))) #b00000001111111111111111111111111) (= (mask!7468 (v!3416 (underlying!524 thiss!992))) #b00000011111111111111111111111111) (= (mask!7468 (v!3416 (underlying!524 thiss!992))) #b00000111111111111111111111111111) (= (mask!7468 (v!3416 (underlying!524 thiss!992))) #b00001111111111111111111111111111) (= (mask!7468 (v!3416 (underlying!524 thiss!992))) #b00011111111111111111111111111111) (= (mask!7468 (v!3416 (underlying!524 thiss!992))) #b00111111111111111111111111111111)) (bvsle (mask!7468 (v!3416 (underlying!524 thiss!992))) #b00111111111111111111111111111111)))))

(assert (=> d!50505 d!50557))

(declare-fun b!154222 () Bool)

(declare-fun e!100783 () Bool)

(declare-fun call!17160 () Bool)

(assert (=> b!154222 (= e!100783 call!17160)))

(declare-fun b!154223 () Bool)

(declare-fun e!100784 () Bool)

(declare-fun contains!963 (List!1824 (_ BitVec 64)) Bool)

(assert (=> b!154223 (= e!100784 (contains!963 Nil!1821 (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!154224 () Bool)

(declare-fun e!100782 () Bool)

(assert (=> b!154224 (= e!100782 e!100783)))

(declare-fun c!29517 () Bool)

(assert (=> b!154224 (= c!29517 (validKeyInArray!0 (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!154225 () Bool)

(declare-fun e!100785 () Bool)

(assert (=> b!154225 (= e!100785 e!100782)))

(declare-fun res!72845 () Bool)

(assert (=> b!154225 (=> (not res!72845) (not e!100782))))

(assert (=> b!154225 (= res!72845 (not e!100784))))

(declare-fun res!72843 () Bool)

(assert (=> b!154225 (=> (not res!72843) (not e!100784))))

(assert (=> b!154225 (= res!72843 (validKeyInArray!0 (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun d!50559 () Bool)

(declare-fun res!72844 () Bool)

(assert (=> d!50559 (=> res!72844 e!100785)))

(assert (=> d!50559 (= res!72844 (bvsge #b00000000000000000000000000000000 (size!2687 (_keys!4837 newMap!16))))))

(assert (=> d!50559 (= (arrayNoDuplicates!0 (_keys!4837 newMap!16) #b00000000000000000000000000000000 Nil!1821) e!100785)))

(declare-fun bm!17157 () Bool)

(assert (=> bm!17157 (= call!17160 (arrayNoDuplicates!0 (_keys!4837 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!29517 (Cons!1820 (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000) Nil!1821) Nil!1821)))))

(declare-fun b!154226 () Bool)

(assert (=> b!154226 (= e!100783 call!17160)))

(assert (= (and d!50559 (not res!72844)) b!154225))

(assert (= (and b!154225 res!72843) b!154223))

(assert (= (and b!154225 res!72845) b!154224))

(assert (= (and b!154224 c!29517) b!154222))

(assert (= (and b!154224 (not c!29517)) b!154226))

(assert (= (or b!154222 b!154226) bm!17157))

(declare-fun m!188035 () Bool)

(assert (=> b!154223 m!188035))

(assert (=> b!154223 m!188035))

(declare-fun m!188037 () Bool)

(assert (=> b!154223 m!188037))

(assert (=> b!154224 m!188035))

(assert (=> b!154224 m!188035))

(declare-fun m!188039 () Bool)

(assert (=> b!154224 m!188039))

(assert (=> b!154225 m!188035))

(assert (=> b!154225 m!188035))

(assert (=> b!154225 m!188039))

(assert (=> bm!17157 m!188035))

(declare-fun m!188041 () Bool)

(assert (=> bm!17157 m!188041))

(assert (=> b!154058 d!50559))

(declare-fun bm!17158 () Bool)

(declare-fun call!17162 () ListLongMap!1815)

(assert (=> bm!17158 (= call!17162 (getCurrentListMapNoExtraKeys!158 (_keys!4837 (v!3416 (underlying!524 thiss!992))) (_values!3047 (v!3416 (underlying!524 thiss!992))) (mask!7468 (v!3416 (underlying!524 thiss!992))) (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) (zeroValue!2907 (v!3416 (underlying!524 thiss!992))) (minValue!2907 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000000000 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992)))))))

(declare-fun b!154227 () Bool)

(declare-fun e!100793 () Bool)

(declare-fun lt!81029 () ListLongMap!1815)

(assert (=> b!154227 (= e!100793 (= (apply!128 lt!81029 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))

(declare-fun b!154228 () Bool)

(declare-fun e!100788 () Bool)

(assert (=> b!154228 (= e!100788 e!100793)))

(declare-fun res!72854 () Bool)

(declare-fun call!17165 () Bool)

(assert (=> b!154228 (= res!72854 call!17165)))

(assert (=> b!154228 (=> (not res!72854) (not e!100793))))

(declare-fun b!154229 () Bool)

(declare-fun res!72847 () Bool)

(declare-fun e!100795 () Bool)

(assert (=> b!154229 (=> (not res!72847) (not e!100795))))

(assert (=> b!154229 (= res!72847 e!100788)))

(declare-fun c!29518 () Bool)

(assert (=> b!154229 (= c!29518 (not (= (bvand (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun d!50561 () Bool)

(assert (=> d!50561 e!100795))

(declare-fun res!72853 () Bool)

(assert (=> d!50561 (=> (not res!72853) (not e!100795))))

(assert (=> d!50561 (= res!72853 (or (bvsge #b00000000000000000000000000000000 (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992))))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun lt!81033 () ListLongMap!1815)

(assert (=> d!50561 (= lt!81029 lt!81033)))

(declare-fun lt!81018 () Unit!4897)

(declare-fun e!100789 () Unit!4897)

(assert (=> d!50561 (= lt!81018 e!100789)))

(declare-fun c!29519 () Bool)

(declare-fun e!100797 () Bool)

(assert (=> d!50561 (= c!29519 e!100797)))

(declare-fun res!72851 () Bool)

(assert (=> d!50561 (=> (not res!72851) (not e!100797))))

(assert (=> d!50561 (= res!72851 (bvslt #b00000000000000000000000000000000 (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992))))))))

(declare-fun e!100792 () ListLongMap!1815)

(assert (=> d!50561 (= lt!81033 e!100792)))

(declare-fun c!29521 () Bool)

(assert (=> d!50561 (= c!29521 (and (not (= (bvand (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!50561 (validMask!0 (mask!7468 (v!3416 (underlying!524 thiss!992))))))

(assert (=> d!50561 (= (getCurrentListMap!584 (_keys!4837 (v!3416 (underlying!524 thiss!992))) (_values!3047 (v!3416 (underlying!524 thiss!992))) (mask!7468 (v!3416 (underlying!524 thiss!992))) (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) (zeroValue!2907 (v!3416 (underlying!524 thiss!992))) (minValue!2907 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000000000 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992)))) lt!81029)))

(declare-fun b!154230 () Bool)

(declare-fun e!100796 () Bool)

(declare-fun call!17163 () Bool)

(assert (=> b!154230 (= e!100796 (not call!17163))))

(declare-fun bm!17159 () Bool)

(declare-fun call!17161 () ListLongMap!1815)

(declare-fun call!17166 () ListLongMap!1815)

(assert (=> bm!17159 (= call!17161 call!17166)))

(declare-fun b!154231 () Bool)

(declare-fun e!100786 () Bool)

(assert (=> b!154231 (= e!100796 e!100786)))

(declare-fun res!72846 () Bool)

(assert (=> b!154231 (= res!72846 call!17163)))

(assert (=> b!154231 (=> (not res!72846) (not e!100786))))

(declare-fun b!154232 () Bool)

(declare-fun e!100794 () Bool)

(assert (=> b!154232 (= e!100794 (validKeyInArray!0 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!154233 () Bool)

(declare-fun lt!81034 () Unit!4897)

(assert (=> b!154233 (= e!100789 lt!81034)))

(declare-fun lt!81027 () ListLongMap!1815)

(assert (=> b!154233 (= lt!81027 (getCurrentListMapNoExtraKeys!158 (_keys!4837 (v!3416 (underlying!524 thiss!992))) (_values!3047 (v!3416 (underlying!524 thiss!992))) (mask!7468 (v!3416 (underlying!524 thiss!992))) (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) (zeroValue!2907 (v!3416 (underlying!524 thiss!992))) (minValue!2907 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000000000 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992)))))))

(declare-fun lt!81032 () (_ BitVec 64))

(assert (=> b!154233 (= lt!81032 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!81039 () (_ BitVec 64))

(assert (=> b!154233 (= lt!81039 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000))))

(declare-fun lt!81022 () Unit!4897)

(assert (=> b!154233 (= lt!81022 (addStillContains!104 lt!81027 lt!81032 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))) lt!81039))))

(assert (=> b!154233 (contains!961 (+!187 lt!81027 (tuple2!2807 lt!81032 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!81039)))

(declare-fun lt!81035 () Unit!4897)

(assert (=> b!154233 (= lt!81035 lt!81022)))

(declare-fun lt!81037 () ListLongMap!1815)

(assert (=> b!154233 (= lt!81037 (getCurrentListMapNoExtraKeys!158 (_keys!4837 (v!3416 (underlying!524 thiss!992))) (_values!3047 (v!3416 (underlying!524 thiss!992))) (mask!7468 (v!3416 (underlying!524 thiss!992))) (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) (zeroValue!2907 (v!3416 (underlying!524 thiss!992))) (minValue!2907 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000000000 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992)))))))

(declare-fun lt!81026 () (_ BitVec 64))

(assert (=> b!154233 (= lt!81026 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!81028 () (_ BitVec 64))

(assert (=> b!154233 (= lt!81028 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000))))

(declare-fun lt!81023 () Unit!4897)

(assert (=> b!154233 (= lt!81023 (addApplyDifferent!104 lt!81037 lt!81026 (minValue!2907 (v!3416 (underlying!524 thiss!992))) lt!81028))))

(assert (=> b!154233 (= (apply!128 (+!187 lt!81037 (tuple2!2807 lt!81026 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!81028) (apply!128 lt!81037 lt!81028))))

(declare-fun lt!81025 () Unit!4897)

(assert (=> b!154233 (= lt!81025 lt!81023)))

(declare-fun lt!81019 () ListLongMap!1815)

(assert (=> b!154233 (= lt!81019 (getCurrentListMapNoExtraKeys!158 (_keys!4837 (v!3416 (underlying!524 thiss!992))) (_values!3047 (v!3416 (underlying!524 thiss!992))) (mask!7468 (v!3416 (underlying!524 thiss!992))) (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) (zeroValue!2907 (v!3416 (underlying!524 thiss!992))) (minValue!2907 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000000000 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992)))))))

(declare-fun lt!81030 () (_ BitVec 64))

(assert (=> b!154233 (= lt!81030 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!81024 () (_ BitVec 64))

(assert (=> b!154233 (= lt!81024 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000))))

(declare-fun lt!81038 () Unit!4897)

(assert (=> b!154233 (= lt!81038 (addApplyDifferent!104 lt!81019 lt!81030 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))) lt!81024))))

(assert (=> b!154233 (= (apply!128 (+!187 lt!81019 (tuple2!2807 lt!81030 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!81024) (apply!128 lt!81019 lt!81024))))

(declare-fun lt!81020 () Unit!4897)

(assert (=> b!154233 (= lt!81020 lt!81038)))

(declare-fun lt!81031 () ListLongMap!1815)

(assert (=> b!154233 (= lt!81031 (getCurrentListMapNoExtraKeys!158 (_keys!4837 (v!3416 (underlying!524 thiss!992))) (_values!3047 (v!3416 (underlying!524 thiss!992))) (mask!7468 (v!3416 (underlying!524 thiss!992))) (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) (zeroValue!2907 (v!3416 (underlying!524 thiss!992))) (minValue!2907 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000000000 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992)))))))

(declare-fun lt!81021 () (_ BitVec 64))

(assert (=> b!154233 (= lt!81021 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!81036 () (_ BitVec 64))

(assert (=> b!154233 (= lt!81036 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!154233 (= lt!81034 (addApplyDifferent!104 lt!81031 lt!81021 (minValue!2907 (v!3416 (underlying!524 thiss!992))) lt!81036))))

(assert (=> b!154233 (= (apply!128 (+!187 lt!81031 (tuple2!2807 lt!81021 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!81036) (apply!128 lt!81031 lt!81036))))

(declare-fun bm!17160 () Bool)

(assert (=> bm!17160 (= call!17166 call!17162)))

(declare-fun bm!17161 () Bool)

(assert (=> bm!17161 (= call!17165 (contains!961 lt!81029 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!154234 () Bool)

(declare-fun e!100787 () ListLongMap!1815)

(assert (=> b!154234 (= e!100787 call!17161)))

(declare-fun b!154235 () Bool)

(declare-fun e!100791 () Bool)

(declare-fun e!100790 () Bool)

(assert (=> b!154235 (= e!100791 e!100790)))

(declare-fun res!72849 () Bool)

(assert (=> b!154235 (=> (not res!72849) (not e!100790))))

(assert (=> b!154235 (= res!72849 (contains!961 lt!81029 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000)))))

(assert (=> b!154235 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992))))))))

(declare-fun b!154236 () Bool)

(declare-fun e!100798 () ListLongMap!1815)

(assert (=> b!154236 (= e!100792 e!100798)))

(declare-fun c!29522 () Bool)

(assert (=> b!154236 (= c!29522 (and (not (= (bvand (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!154237 () Bool)

(assert (=> b!154237 (= e!100786 (= (apply!128 lt!81029 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))

(declare-fun b!154238 () Bool)

(declare-fun call!17167 () ListLongMap!1815)

(assert (=> b!154238 (= e!100787 call!17167)))

(declare-fun b!154239 () Bool)

(assert (=> b!154239 (= e!100797 (validKeyInArray!0 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun call!17164 () ListLongMap!1815)

(declare-fun bm!17162 () Bool)

(assert (=> bm!17162 (= call!17164 (+!187 (ite c!29521 call!17162 (ite c!29522 call!17166 call!17161)) (ite (or c!29521 c!29522) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun b!154240 () Bool)

(assert (=> b!154240 (= e!100798 call!17167)))

(declare-fun bm!17163 () Bool)

(assert (=> bm!17163 (= call!17167 call!17164)))

(declare-fun b!154241 () Bool)

(declare-fun Unit!4902 () Unit!4897)

(assert (=> b!154241 (= e!100789 Unit!4902)))

(declare-fun b!154242 () Bool)

(assert (=> b!154242 (= e!100790 (= (apply!128 lt!81029 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000)) (get!1609 (select (arr!2411 (_values!3047 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000) (dynLambda!466 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!154242 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2688 (_values!3047 (v!3416 (underlying!524 thiss!992))))))))

(assert (=> b!154242 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992))))))))

(declare-fun b!154243 () Bool)

(declare-fun c!29523 () Bool)

(assert (=> b!154243 (= c!29523 (and (not (= (bvand (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!154243 (= e!100798 e!100787)))

(declare-fun b!154244 () Bool)

(declare-fun res!72852 () Bool)

(assert (=> b!154244 (=> (not res!72852) (not e!100795))))

(assert (=> b!154244 (= res!72852 e!100791)))

(declare-fun res!72850 () Bool)

(assert (=> b!154244 (=> res!72850 e!100791)))

(assert (=> b!154244 (= res!72850 (not e!100794))))

(declare-fun res!72848 () Bool)

(assert (=> b!154244 (=> (not res!72848) (not e!100794))))

(assert (=> b!154244 (= res!72848 (bvslt #b00000000000000000000000000000000 (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992))))))))

(declare-fun b!154245 () Bool)

(assert (=> b!154245 (= e!100795 e!100796)))

(declare-fun c!29520 () Bool)

(assert (=> b!154245 (= c!29520 (not (= (bvand (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!17164 () Bool)

(assert (=> bm!17164 (= call!17163 (contains!961 lt!81029 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!154246 () Bool)

(assert (=> b!154246 (= e!100792 (+!187 call!17164 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))

(declare-fun b!154247 () Bool)

(assert (=> b!154247 (= e!100788 (not call!17165))))

(assert (= (and d!50561 c!29521) b!154246))

(assert (= (and d!50561 (not c!29521)) b!154236))

(assert (= (and b!154236 c!29522) b!154240))

(assert (= (and b!154236 (not c!29522)) b!154243))

(assert (= (and b!154243 c!29523) b!154238))

(assert (= (and b!154243 (not c!29523)) b!154234))

(assert (= (or b!154238 b!154234) bm!17159))

(assert (= (or b!154240 bm!17159) bm!17160))

(assert (= (or b!154240 b!154238) bm!17163))

(assert (= (or b!154246 bm!17160) bm!17158))

(assert (= (or b!154246 bm!17163) bm!17162))

(assert (= (and d!50561 res!72851) b!154239))

(assert (= (and d!50561 c!29519) b!154233))

(assert (= (and d!50561 (not c!29519)) b!154241))

(assert (= (and d!50561 res!72853) b!154244))

(assert (= (and b!154244 res!72848) b!154232))

(assert (= (and b!154244 (not res!72850)) b!154235))

(assert (= (and b!154235 res!72849) b!154242))

(assert (= (and b!154244 res!72852) b!154229))

(assert (= (and b!154229 c!29518) b!154228))

(assert (= (and b!154229 (not c!29518)) b!154247))

(assert (= (and b!154228 res!72854) b!154227))

(assert (= (or b!154228 b!154247) bm!17161))

(assert (= (and b!154229 res!72847) b!154245))

(assert (= (and b!154245 c!29520) b!154231))

(assert (= (and b!154245 (not c!29520)) b!154230))

(assert (= (and b!154231 res!72846) b!154237))

(assert (= (or b!154231 b!154230) bm!17164))

(declare-fun b_lambda!6881 () Bool)

(assert (=> (not b_lambda!6881) (not b!154242)))

(assert (=> b!154242 t!6627))

(declare-fun b_and!9629 () Bool)

(assert (= b_and!9625 (and (=> t!6627 result!4497) b_and!9629)))

(assert (=> b!154242 t!6629))

(declare-fun b_and!9631 () Bool)

(assert (= b_and!9627 (and (=> t!6629 result!4501) b_and!9631)))

(declare-fun m!188043 () Bool)

(assert (=> b!154242 m!188043))

(assert (=> b!154242 m!187819))

(declare-fun m!188045 () Bool)

(assert (=> b!154242 m!188045))

(declare-fun m!188047 () Bool)

(assert (=> b!154242 m!188047))

(declare-fun m!188049 () Bool)

(assert (=> b!154242 m!188049))

(assert (=> b!154242 m!188043))

(assert (=> b!154242 m!187819))

(assert (=> b!154242 m!188047))

(declare-fun m!188051 () Bool)

(assert (=> bm!17158 m!188051))

(assert (=> b!154239 m!188047))

(assert (=> b!154239 m!188047))

(declare-fun m!188053 () Bool)

(assert (=> b!154239 m!188053))

(declare-fun m!188055 () Bool)

(assert (=> bm!17164 m!188055))

(declare-fun m!188057 () Bool)

(assert (=> bm!17162 m!188057))

(declare-fun m!188059 () Bool)

(assert (=> b!154227 m!188059))

(assert (=> b!154232 m!188047))

(assert (=> b!154232 m!188047))

(assert (=> b!154232 m!188053))

(declare-fun m!188061 () Bool)

(assert (=> b!154246 m!188061))

(declare-fun m!188063 () Bool)

(assert (=> bm!17161 m!188063))

(declare-fun m!188065 () Bool)

(assert (=> b!154237 m!188065))

(assert (=> d!50561 m!187843))

(declare-fun m!188067 () Bool)

(assert (=> b!154233 m!188067))

(declare-fun m!188069 () Bool)

(assert (=> b!154233 m!188069))

(declare-fun m!188071 () Bool)

(assert (=> b!154233 m!188071))

(assert (=> b!154233 m!188047))

(declare-fun m!188073 () Bool)

(assert (=> b!154233 m!188073))

(assert (=> b!154233 m!188051))

(declare-fun m!188075 () Bool)

(assert (=> b!154233 m!188075))

(declare-fun m!188077 () Bool)

(assert (=> b!154233 m!188077))

(declare-fun m!188079 () Bool)

(assert (=> b!154233 m!188079))

(assert (=> b!154233 m!188067))

(declare-fun m!188081 () Bool)

(assert (=> b!154233 m!188081))

(declare-fun m!188083 () Bool)

(assert (=> b!154233 m!188083))

(assert (=> b!154233 m!188069))

(declare-fun m!188085 () Bool)

(assert (=> b!154233 m!188085))

(declare-fun m!188087 () Bool)

(assert (=> b!154233 m!188087))

(declare-fun m!188089 () Bool)

(assert (=> b!154233 m!188089))

(declare-fun m!188091 () Bool)

(assert (=> b!154233 m!188091))

(declare-fun m!188093 () Bool)

(assert (=> b!154233 m!188093))

(assert (=> b!154233 m!188085))

(declare-fun m!188095 () Bool)

(assert (=> b!154233 m!188095))

(assert (=> b!154233 m!188075))

(assert (=> b!154235 m!188047))

(assert (=> b!154235 m!188047))

(declare-fun m!188097 () Bool)

(assert (=> b!154235 m!188097))

(assert (=> d!50499 d!50561))

(declare-fun d!50563 () Bool)

(declare-fun e!100799 () Bool)

(assert (=> d!50563 e!100799))

(declare-fun res!72855 () Bool)

(assert (=> d!50563 (=> res!72855 e!100799)))

(declare-fun lt!81041 () Bool)

(assert (=> d!50563 (= res!72855 (not lt!81041))))

(declare-fun lt!81040 () Bool)

(assert (=> d!50563 (= lt!81041 lt!81040)))

(declare-fun lt!81043 () Unit!4897)

(declare-fun e!100800 () Unit!4897)

(assert (=> d!50563 (= lt!81043 e!100800)))

(declare-fun c!29524 () Bool)

(assert (=> d!50563 (= c!29524 lt!81040)))

(assert (=> d!50563 (= lt!81040 (containsKey!186 (toList!923 lt!80934) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!50563 (= (contains!961 lt!80934 #b1000000000000000000000000000000000000000000000000000000000000000) lt!81041)))

(declare-fun b!154248 () Bool)

(declare-fun lt!81042 () Unit!4897)

(assert (=> b!154248 (= e!100800 lt!81042)))

(assert (=> b!154248 (= lt!81042 (lemmaContainsKeyImpliesGetValueByKeyDefined!135 (toList!923 lt!80934) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!154248 (isDefined!136 (getValueByKey!182 (toList!923 lt!80934) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!154249 () Bool)

(declare-fun Unit!4903 () Unit!4897)

(assert (=> b!154249 (= e!100800 Unit!4903)))

(declare-fun b!154250 () Bool)

(assert (=> b!154250 (= e!100799 (isDefined!136 (getValueByKey!182 (toList!923 lt!80934) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!50563 c!29524) b!154248))

(assert (= (and d!50563 (not c!29524)) b!154249))

(assert (= (and d!50563 (not res!72855)) b!154250))

(declare-fun m!188099 () Bool)

(assert (=> d!50563 m!188099))

(declare-fun m!188101 () Bool)

(assert (=> b!154248 m!188101))

(declare-fun m!188103 () Bool)

(assert (=> b!154248 m!188103))

(assert (=> b!154248 m!188103))

(declare-fun m!188105 () Bool)

(assert (=> b!154248 m!188105))

(assert (=> b!154250 m!188103))

(assert (=> b!154250 m!188103))

(assert (=> b!154250 m!188105))

(assert (=> bm!17151 d!50563))

(declare-fun d!50565 () Bool)

(assert (=> d!50565 (= (apply!128 lt!80934 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1610 (getValueByKey!182 (toList!923 lt!80934) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!6526 () Bool)

(assert (= bs!6526 d!50565))

(assert (=> bs!6526 m!188103))

(assert (=> bs!6526 m!188103))

(declare-fun m!188107 () Bool)

(assert (=> bs!6526 m!188107))

(assert (=> b!154111 d!50565))

(declare-fun d!50567 () Bool)

(declare-fun e!100801 () Bool)

(assert (=> d!50567 e!100801))

(declare-fun res!72856 () Bool)

(assert (=> d!50567 (=> (not res!72856) (not e!100801))))

(declare-fun lt!81046 () ListLongMap!1815)

(assert (=> d!50567 (= res!72856 (contains!961 lt!81046 (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun lt!81045 () List!1823)

(assert (=> d!50567 (= lt!81046 (ListLongMap!1816 lt!81045))))

(declare-fun lt!81047 () Unit!4897)

(declare-fun lt!81044 () Unit!4897)

(assert (=> d!50567 (= lt!81047 lt!81044)))

(assert (=> d!50567 (= (getValueByKey!182 lt!81045 (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) (Some!187 (_2!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (=> d!50567 (= lt!81044 (lemmaContainsTupThenGetReturnValue!97 lt!81045 (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (=> d!50567 (= lt!81045 (insertStrictlySorted!99 (toList!923 call!17151) (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (=> d!50567 (= (+!187 call!17151 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!81046)))

(declare-fun b!154251 () Bool)

(declare-fun res!72857 () Bool)

(assert (=> b!154251 (=> (not res!72857) (not e!100801))))

(assert (=> b!154251 (= res!72857 (= (getValueByKey!182 (toList!923 lt!81046) (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) (Some!187 (_2!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun b!154252 () Bool)

(assert (=> b!154252 (= e!100801 (contains!962 (toList!923 lt!81046) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))

(assert (= (and d!50567 res!72856) b!154251))

(assert (= (and b!154251 res!72857) b!154252))

(declare-fun m!188109 () Bool)

(assert (=> d!50567 m!188109))

(declare-fun m!188111 () Bool)

(assert (=> d!50567 m!188111))

(declare-fun m!188113 () Bool)

(assert (=> d!50567 m!188113))

(declare-fun m!188115 () Bool)

(assert (=> d!50567 m!188115))

(declare-fun m!188117 () Bool)

(assert (=> b!154251 m!188117))

(declare-fun m!188119 () Bool)

(assert (=> b!154252 m!188119))

(assert (=> b!154120 d!50567))

(declare-fun b!154261 () Bool)

(declare-fun res!72869 () Bool)

(declare-fun e!100804 () Bool)

(assert (=> b!154261 (=> (not res!72869) (not e!100804))))

(assert (=> b!154261 (= res!72869 (and (= (size!2688 (_values!3047 newMap!16)) (bvadd (mask!7468 newMap!16) #b00000000000000000000000000000001)) (= (size!2687 (_keys!4837 newMap!16)) (size!2688 (_values!3047 newMap!16))) (bvsge (_size!673 newMap!16) #b00000000000000000000000000000000) (bvsle (_size!673 newMap!16) (bvadd (mask!7468 newMap!16) #b00000000000000000000000000000001))))))

(declare-fun b!154263 () Bool)

(declare-fun res!72867 () Bool)

(assert (=> b!154263 (=> (not res!72867) (not e!100804))))

(declare-fun size!2691 (LongMapFixedSize!1248) (_ BitVec 32))

(assert (=> b!154263 (= res!72867 (= (size!2691 newMap!16) (bvadd (_size!673 newMap!16) (bvsdiv (bvadd (extraKeys!2805 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!50569 () Bool)

(declare-fun res!72868 () Bool)

(assert (=> d!50569 (=> (not res!72868) (not e!100804))))

(assert (=> d!50569 (= res!72868 (validMask!0 (mask!7468 newMap!16)))))

(assert (=> d!50569 (= (simpleValid!103 newMap!16) e!100804)))

(declare-fun b!154262 () Bool)

(declare-fun res!72866 () Bool)

(assert (=> b!154262 (=> (not res!72866) (not e!100804))))

(assert (=> b!154262 (= res!72866 (bvsge (size!2691 newMap!16) (_size!673 newMap!16)))))

(declare-fun b!154264 () Bool)

(assert (=> b!154264 (= e!100804 (and (bvsge (extraKeys!2805 newMap!16) #b00000000000000000000000000000000) (bvsle (extraKeys!2805 newMap!16) #b00000000000000000000000000000011) (bvsge (_vacant!673 newMap!16) #b00000000000000000000000000000000)))))

(assert (= (and d!50569 res!72868) b!154261))

(assert (= (and b!154261 res!72869) b!154262))

(assert (= (and b!154262 res!72866) b!154263))

(assert (= (and b!154263 res!72867) b!154264))

(declare-fun m!188121 () Bool)

(assert (=> b!154263 m!188121))

(declare-fun m!188123 () Bool)

(assert (=> d!50569 m!188123))

(assert (=> b!154262 m!188121))

(assert (=> d!50501 d!50569))

(assert (=> bm!17145 d!50517))

(declare-fun d!50571 () Bool)

(assert (=> d!50571 (= (apply!128 lt!80934 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1610 (getValueByKey!182 (toList!923 lt!80934) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!6527 () Bool)

(assert (= bs!6527 d!50571))

(assert (=> bs!6527 m!188011))

(assert (=> bs!6527 m!188011))

(declare-fun m!188125 () Bool)

(assert (=> bs!6527 m!188125))

(assert (=> b!154101 d!50571))

(declare-fun b!154273 () Bool)

(declare-fun e!100809 () (_ BitVec 32))

(declare-fun call!17170 () (_ BitVec 32))

(assert (=> b!154273 (= e!100809 (bvadd #b00000000000000000000000000000001 call!17170))))

(declare-fun b!154274 () Bool)

(declare-fun e!100810 () (_ BitVec 32))

(assert (=> b!154274 (= e!100810 e!100809)))

(declare-fun c!29530 () Bool)

(assert (=> b!154274 (= c!29530 (validKeyInArray!0 (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!154275 () Bool)

(assert (=> b!154275 (= e!100810 #b00000000000000000000000000000000)))

(declare-fun d!50573 () Bool)

(declare-fun lt!81050 () (_ BitVec 32))

(assert (=> d!50573 (and (bvsge lt!81050 #b00000000000000000000000000000000) (bvsle lt!81050 (bvsub (size!2687 (_keys!4837 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> d!50573 (= lt!81050 e!100810)))

(declare-fun c!29529 () Bool)

(assert (=> d!50573 (= c!29529 (bvsge #b00000000000000000000000000000000 (size!2687 (_keys!4837 newMap!16))))))

(assert (=> d!50573 (and (bvsle #b00000000000000000000000000000000 (size!2687 (_keys!4837 newMap!16))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2687 (_keys!4837 newMap!16)) (size!2687 (_keys!4837 newMap!16))))))

(assert (=> d!50573 (= (arrayCountValidKeys!0 (_keys!4837 newMap!16) #b00000000000000000000000000000000 (size!2687 (_keys!4837 newMap!16))) lt!81050)))

(declare-fun b!154276 () Bool)

(assert (=> b!154276 (= e!100809 call!17170)))

(declare-fun bm!17167 () Bool)

(assert (=> bm!17167 (= call!17170 (arrayCountValidKeys!0 (_keys!4837 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2687 (_keys!4837 newMap!16))))))

(assert (= (and d!50573 c!29529) b!154275))

(assert (= (and d!50573 (not c!29529)) b!154274))

(assert (= (and b!154274 c!29530) b!154273))

(assert (= (and b!154274 (not c!29530)) b!154276))

(assert (= (or b!154273 b!154276) bm!17167))

(assert (=> b!154274 m!188035))

(assert (=> b!154274 m!188035))

(assert (=> b!154274 m!188039))

(declare-fun m!188127 () Bool)

(assert (=> bm!17167 m!188127))

(assert (=> b!154056 d!50573))

(declare-fun d!50575 () Bool)

(declare-fun e!100811 () Bool)

(assert (=> d!50575 e!100811))

(declare-fun res!72870 () Bool)

(assert (=> d!50575 (=> res!72870 e!100811)))

(declare-fun lt!81052 () Bool)

(assert (=> d!50575 (= res!72870 (not lt!81052))))

(declare-fun lt!81051 () Bool)

(assert (=> d!50575 (= lt!81052 lt!81051)))

(declare-fun lt!81054 () Unit!4897)

(declare-fun e!100812 () Unit!4897)

(assert (=> d!50575 (= lt!81054 e!100812)))

(declare-fun c!29531 () Bool)

(assert (=> d!50575 (= c!29531 lt!81051)))

(assert (=> d!50575 (= lt!81051 (containsKey!186 (toList!923 lt!80934) (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> d!50575 (= (contains!961 lt!80934 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!81052)))

(declare-fun b!154277 () Bool)

(declare-fun lt!81053 () Unit!4897)

(assert (=> b!154277 (= e!100812 lt!81053)))

(assert (=> b!154277 (= lt!81053 (lemmaContainsKeyImpliesGetValueByKeyDefined!135 (toList!923 lt!80934) (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!154277 (isDefined!136 (getValueByKey!182 (toList!923 lt!80934) (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!154278 () Bool)

(declare-fun Unit!4904 () Unit!4897)

(assert (=> b!154278 (= e!100812 Unit!4904)))

(declare-fun b!154279 () Bool)

(assert (=> b!154279 (= e!100811 (isDefined!136 (getValueByKey!182 (toList!923 lt!80934) (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (= (and d!50575 c!29531) b!154277))

(assert (= (and d!50575 (not c!29531)) b!154278))

(assert (= (and d!50575 (not res!72870)) b!154279))

(assert (=> d!50575 m!187823))

(declare-fun m!188129 () Bool)

(assert (=> d!50575 m!188129))

(assert (=> b!154277 m!187823))

(declare-fun m!188131 () Bool)

(assert (=> b!154277 m!188131))

(assert (=> b!154277 m!187823))

(assert (=> b!154277 m!187999))

(assert (=> b!154277 m!187999))

(declare-fun m!188133 () Bool)

(assert (=> b!154277 m!188133))

(assert (=> b!154279 m!187823))

(assert (=> b!154279 m!187999))

(assert (=> b!154279 m!187999))

(assert (=> b!154279 m!188133))

(assert (=> b!154109 d!50575))

(declare-fun bm!17168 () Bool)

(declare-fun call!17172 () ListLongMap!1815)

(assert (=> bm!17168 (= call!17172 (getCurrentListMapNoExtraKeys!158 (_keys!4837 newMap!16) (_values!3047 newMap!16) (mask!7468 newMap!16) (extraKeys!2805 newMap!16) (zeroValue!2907 newMap!16) (minValue!2907 newMap!16) #b00000000000000000000000000000000 (defaultEntry!3064 newMap!16)))))

(declare-fun b!154280 () Bool)

(declare-fun e!100820 () Bool)

(declare-fun lt!81066 () ListLongMap!1815)

(assert (=> b!154280 (= e!100820 (= (apply!128 lt!81066 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2907 newMap!16)))))

(declare-fun b!154281 () Bool)

(declare-fun e!100815 () Bool)

(assert (=> b!154281 (= e!100815 e!100820)))

(declare-fun res!72879 () Bool)

(declare-fun call!17175 () Bool)

(assert (=> b!154281 (= res!72879 call!17175)))

(assert (=> b!154281 (=> (not res!72879) (not e!100820))))

(declare-fun b!154282 () Bool)

(declare-fun res!72872 () Bool)

(declare-fun e!100822 () Bool)

(assert (=> b!154282 (=> (not res!72872) (not e!100822))))

(assert (=> b!154282 (= res!72872 e!100815)))

(declare-fun c!29532 () Bool)

(assert (=> b!154282 (= c!29532 (not (= (bvand (extraKeys!2805 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun d!50577 () Bool)

(assert (=> d!50577 e!100822))

(declare-fun res!72878 () Bool)

(assert (=> d!50577 (=> (not res!72878) (not e!100822))))

(assert (=> d!50577 (= res!72878 (or (bvsge #b00000000000000000000000000000000 (size!2687 (_keys!4837 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2687 (_keys!4837 newMap!16))))))))

(declare-fun lt!81070 () ListLongMap!1815)

(assert (=> d!50577 (= lt!81066 lt!81070)))

(declare-fun lt!81055 () Unit!4897)

(declare-fun e!100816 () Unit!4897)

(assert (=> d!50577 (= lt!81055 e!100816)))

(declare-fun c!29533 () Bool)

(declare-fun e!100824 () Bool)

(assert (=> d!50577 (= c!29533 e!100824)))

(declare-fun res!72876 () Bool)

(assert (=> d!50577 (=> (not res!72876) (not e!100824))))

(assert (=> d!50577 (= res!72876 (bvslt #b00000000000000000000000000000000 (size!2687 (_keys!4837 newMap!16))))))

(declare-fun e!100819 () ListLongMap!1815)

(assert (=> d!50577 (= lt!81070 e!100819)))

(declare-fun c!29535 () Bool)

(assert (=> d!50577 (= c!29535 (and (not (= (bvand (extraKeys!2805 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2805 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!50577 (validMask!0 (mask!7468 newMap!16))))

(assert (=> d!50577 (= (getCurrentListMap!584 (_keys!4837 newMap!16) (_values!3047 newMap!16) (mask!7468 newMap!16) (extraKeys!2805 newMap!16) (zeroValue!2907 newMap!16) (minValue!2907 newMap!16) #b00000000000000000000000000000000 (defaultEntry!3064 newMap!16)) lt!81066)))

(declare-fun b!154283 () Bool)

(declare-fun e!100823 () Bool)

(declare-fun call!17173 () Bool)

(assert (=> b!154283 (= e!100823 (not call!17173))))

(declare-fun bm!17169 () Bool)

(declare-fun call!17171 () ListLongMap!1815)

(declare-fun call!17176 () ListLongMap!1815)

(assert (=> bm!17169 (= call!17171 call!17176)))

(declare-fun b!154284 () Bool)

(declare-fun e!100813 () Bool)

(assert (=> b!154284 (= e!100823 e!100813)))

(declare-fun res!72871 () Bool)

(assert (=> b!154284 (= res!72871 call!17173)))

(assert (=> b!154284 (=> (not res!72871) (not e!100813))))

(declare-fun b!154285 () Bool)

(declare-fun e!100821 () Bool)

(assert (=> b!154285 (= e!100821 (validKeyInArray!0 (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!154286 () Bool)

(declare-fun lt!81071 () Unit!4897)

(assert (=> b!154286 (= e!100816 lt!81071)))

(declare-fun lt!81064 () ListLongMap!1815)

(assert (=> b!154286 (= lt!81064 (getCurrentListMapNoExtraKeys!158 (_keys!4837 newMap!16) (_values!3047 newMap!16) (mask!7468 newMap!16) (extraKeys!2805 newMap!16) (zeroValue!2907 newMap!16) (minValue!2907 newMap!16) #b00000000000000000000000000000000 (defaultEntry!3064 newMap!16)))))

(declare-fun lt!81069 () (_ BitVec 64))

(assert (=> b!154286 (= lt!81069 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!81076 () (_ BitVec 64))

(assert (=> b!154286 (= lt!81076 (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!81059 () Unit!4897)

(assert (=> b!154286 (= lt!81059 (addStillContains!104 lt!81064 lt!81069 (zeroValue!2907 newMap!16) lt!81076))))

(assert (=> b!154286 (contains!961 (+!187 lt!81064 (tuple2!2807 lt!81069 (zeroValue!2907 newMap!16))) lt!81076)))

(declare-fun lt!81072 () Unit!4897)

(assert (=> b!154286 (= lt!81072 lt!81059)))

(declare-fun lt!81074 () ListLongMap!1815)

(assert (=> b!154286 (= lt!81074 (getCurrentListMapNoExtraKeys!158 (_keys!4837 newMap!16) (_values!3047 newMap!16) (mask!7468 newMap!16) (extraKeys!2805 newMap!16) (zeroValue!2907 newMap!16) (minValue!2907 newMap!16) #b00000000000000000000000000000000 (defaultEntry!3064 newMap!16)))))

(declare-fun lt!81063 () (_ BitVec 64))

(assert (=> b!154286 (= lt!81063 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!81065 () (_ BitVec 64))

(assert (=> b!154286 (= lt!81065 (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!81060 () Unit!4897)

(assert (=> b!154286 (= lt!81060 (addApplyDifferent!104 lt!81074 lt!81063 (minValue!2907 newMap!16) lt!81065))))

(assert (=> b!154286 (= (apply!128 (+!187 lt!81074 (tuple2!2807 lt!81063 (minValue!2907 newMap!16))) lt!81065) (apply!128 lt!81074 lt!81065))))

(declare-fun lt!81062 () Unit!4897)

(assert (=> b!154286 (= lt!81062 lt!81060)))

(declare-fun lt!81056 () ListLongMap!1815)

(assert (=> b!154286 (= lt!81056 (getCurrentListMapNoExtraKeys!158 (_keys!4837 newMap!16) (_values!3047 newMap!16) (mask!7468 newMap!16) (extraKeys!2805 newMap!16) (zeroValue!2907 newMap!16) (minValue!2907 newMap!16) #b00000000000000000000000000000000 (defaultEntry!3064 newMap!16)))))

(declare-fun lt!81067 () (_ BitVec 64))

(assert (=> b!154286 (= lt!81067 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!81061 () (_ BitVec 64))

(assert (=> b!154286 (= lt!81061 (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!81075 () Unit!4897)

(assert (=> b!154286 (= lt!81075 (addApplyDifferent!104 lt!81056 lt!81067 (zeroValue!2907 newMap!16) lt!81061))))

(assert (=> b!154286 (= (apply!128 (+!187 lt!81056 (tuple2!2807 lt!81067 (zeroValue!2907 newMap!16))) lt!81061) (apply!128 lt!81056 lt!81061))))

(declare-fun lt!81057 () Unit!4897)

(assert (=> b!154286 (= lt!81057 lt!81075)))

(declare-fun lt!81068 () ListLongMap!1815)

(assert (=> b!154286 (= lt!81068 (getCurrentListMapNoExtraKeys!158 (_keys!4837 newMap!16) (_values!3047 newMap!16) (mask!7468 newMap!16) (extraKeys!2805 newMap!16) (zeroValue!2907 newMap!16) (minValue!2907 newMap!16) #b00000000000000000000000000000000 (defaultEntry!3064 newMap!16)))))

(declare-fun lt!81058 () (_ BitVec 64))

(assert (=> b!154286 (= lt!81058 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!81073 () (_ BitVec 64))

(assert (=> b!154286 (= lt!81073 (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!154286 (= lt!81071 (addApplyDifferent!104 lt!81068 lt!81058 (minValue!2907 newMap!16) lt!81073))))

(assert (=> b!154286 (= (apply!128 (+!187 lt!81068 (tuple2!2807 lt!81058 (minValue!2907 newMap!16))) lt!81073) (apply!128 lt!81068 lt!81073))))

(declare-fun bm!17170 () Bool)

(assert (=> bm!17170 (= call!17176 call!17172)))

(declare-fun bm!17171 () Bool)

(assert (=> bm!17171 (= call!17175 (contains!961 lt!81066 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!154287 () Bool)

(declare-fun e!100814 () ListLongMap!1815)

(assert (=> b!154287 (= e!100814 call!17171)))

(declare-fun b!154288 () Bool)

(declare-fun e!100818 () Bool)

(declare-fun e!100817 () Bool)

(assert (=> b!154288 (= e!100818 e!100817)))

(declare-fun res!72874 () Bool)

(assert (=> b!154288 (=> (not res!72874) (not e!100817))))

(assert (=> b!154288 (= res!72874 (contains!961 lt!81066 (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!154288 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2687 (_keys!4837 newMap!16))))))

(declare-fun b!154289 () Bool)

(declare-fun e!100825 () ListLongMap!1815)

(assert (=> b!154289 (= e!100819 e!100825)))

(declare-fun c!29536 () Bool)

(assert (=> b!154289 (= c!29536 (and (not (= (bvand (extraKeys!2805 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2805 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!154290 () Bool)

(assert (=> b!154290 (= e!100813 (= (apply!128 lt!81066 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2907 newMap!16)))))

(declare-fun b!154291 () Bool)

(declare-fun call!17177 () ListLongMap!1815)

(assert (=> b!154291 (= e!100814 call!17177)))

(declare-fun b!154292 () Bool)

(assert (=> b!154292 (= e!100824 (validKeyInArray!0 (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!17172 () Bool)

(declare-fun call!17174 () ListLongMap!1815)

(assert (=> bm!17172 (= call!17174 (+!187 (ite c!29535 call!17172 (ite c!29536 call!17176 call!17171)) (ite (or c!29535 c!29536) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 newMap!16)) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 newMap!16)))))))

(declare-fun b!154293 () Bool)

(assert (=> b!154293 (= e!100825 call!17177)))

(declare-fun bm!17173 () Bool)

(assert (=> bm!17173 (= call!17177 call!17174)))

(declare-fun b!154294 () Bool)

(declare-fun Unit!4905 () Unit!4897)

(assert (=> b!154294 (= e!100816 Unit!4905)))

(declare-fun b!154295 () Bool)

(assert (=> b!154295 (= e!100817 (= (apply!128 lt!81066 (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000)) (get!1609 (select (arr!2411 (_values!3047 newMap!16)) #b00000000000000000000000000000000) (dynLambda!466 (defaultEntry!3064 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!154295 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2688 (_values!3047 newMap!16))))))

(assert (=> b!154295 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2687 (_keys!4837 newMap!16))))))

(declare-fun b!154296 () Bool)

(declare-fun c!29537 () Bool)

(assert (=> b!154296 (= c!29537 (and (not (= (bvand (extraKeys!2805 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2805 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!154296 (= e!100825 e!100814)))

(declare-fun b!154297 () Bool)

(declare-fun res!72877 () Bool)

(assert (=> b!154297 (=> (not res!72877) (not e!100822))))

(assert (=> b!154297 (= res!72877 e!100818)))

(declare-fun res!72875 () Bool)

(assert (=> b!154297 (=> res!72875 e!100818)))

(assert (=> b!154297 (= res!72875 (not e!100821))))

(declare-fun res!72873 () Bool)

(assert (=> b!154297 (=> (not res!72873) (not e!100821))))

(assert (=> b!154297 (= res!72873 (bvslt #b00000000000000000000000000000000 (size!2687 (_keys!4837 newMap!16))))))

(declare-fun b!154298 () Bool)

(assert (=> b!154298 (= e!100822 e!100823)))

(declare-fun c!29534 () Bool)

(assert (=> b!154298 (= c!29534 (not (= (bvand (extraKeys!2805 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!17174 () Bool)

(assert (=> bm!17174 (= call!17173 (contains!961 lt!81066 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!154299 () Bool)

(assert (=> b!154299 (= e!100819 (+!187 call!17174 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 newMap!16))))))

(declare-fun b!154300 () Bool)

(assert (=> b!154300 (= e!100815 (not call!17175))))

(assert (= (and d!50577 c!29535) b!154299))

(assert (= (and d!50577 (not c!29535)) b!154289))

(assert (= (and b!154289 c!29536) b!154293))

(assert (= (and b!154289 (not c!29536)) b!154296))

(assert (= (and b!154296 c!29537) b!154291))

(assert (= (and b!154296 (not c!29537)) b!154287))

(assert (= (or b!154291 b!154287) bm!17169))

(assert (= (or b!154293 bm!17169) bm!17170))

(assert (= (or b!154293 b!154291) bm!17173))

(assert (= (or b!154299 bm!17170) bm!17168))

(assert (= (or b!154299 bm!17173) bm!17172))

(assert (= (and d!50577 res!72876) b!154292))

(assert (= (and d!50577 c!29533) b!154286))

(assert (= (and d!50577 (not c!29533)) b!154294))

(assert (= (and d!50577 res!72878) b!154297))

(assert (= (and b!154297 res!72873) b!154285))

(assert (= (and b!154297 (not res!72875)) b!154288))

(assert (= (and b!154288 res!72874) b!154295))

(assert (= (and b!154297 res!72877) b!154282))

(assert (= (and b!154282 c!29532) b!154281))

(assert (= (and b!154282 (not c!29532)) b!154300))

(assert (= (and b!154281 res!72879) b!154280))

(assert (= (or b!154281 b!154300) bm!17171))

(assert (= (and b!154282 res!72872) b!154298))

(assert (= (and b!154298 c!29534) b!154284))

(assert (= (and b!154298 (not c!29534)) b!154283))

(assert (= (and b!154284 res!72871) b!154290))

(assert (= (or b!154284 b!154283) bm!17174))

(declare-fun b_lambda!6883 () Bool)

(assert (=> (not b_lambda!6883) (not b!154295)))

(declare-fun t!6632 () Bool)

(declare-fun tb!2769 () Bool)

(assert (=> (and b!153994 (= (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))) (defaultEntry!3064 newMap!16)) t!6632) tb!2769))

(declare-fun result!4505 () Bool)

(assert (=> tb!2769 (= result!4505 tp_is_empty!3027)))

(assert (=> b!154295 t!6632))

(declare-fun b_and!9633 () Bool)

(assert (= b_and!9629 (and (=> t!6632 result!4505) b_and!9633)))

(declare-fun t!6634 () Bool)

(declare-fun tb!2771 () Bool)

(assert (=> (and b!153997 (= (defaultEntry!3064 newMap!16) (defaultEntry!3064 newMap!16)) t!6634) tb!2771))

(declare-fun result!4507 () Bool)

(assert (= result!4507 result!4505))

(assert (=> b!154295 t!6634))

(declare-fun b_and!9635 () Bool)

(assert (= b_and!9631 (and (=> t!6634 result!4507) b_and!9635)))

(declare-fun m!188135 () Bool)

(assert (=> b!154295 m!188135))

(declare-fun m!188137 () Bool)

(assert (=> b!154295 m!188137))

(declare-fun m!188139 () Bool)

(assert (=> b!154295 m!188139))

(assert (=> b!154295 m!188035))

(declare-fun m!188141 () Bool)

(assert (=> b!154295 m!188141))

(assert (=> b!154295 m!188135))

(assert (=> b!154295 m!188137))

(assert (=> b!154295 m!188035))

(declare-fun m!188143 () Bool)

(assert (=> bm!17168 m!188143))

(assert (=> b!154292 m!188035))

(assert (=> b!154292 m!188035))

(assert (=> b!154292 m!188039))

(declare-fun m!188145 () Bool)

(assert (=> bm!17174 m!188145))

(declare-fun m!188147 () Bool)

(assert (=> bm!17172 m!188147))

(declare-fun m!188149 () Bool)

(assert (=> b!154280 m!188149))

(assert (=> b!154285 m!188035))

(assert (=> b!154285 m!188035))

(assert (=> b!154285 m!188039))

(declare-fun m!188151 () Bool)

(assert (=> b!154299 m!188151))

(declare-fun m!188153 () Bool)

(assert (=> bm!17171 m!188153))

(declare-fun m!188155 () Bool)

(assert (=> b!154290 m!188155))

(assert (=> d!50577 m!188123))

(declare-fun m!188157 () Bool)

(assert (=> b!154286 m!188157))

(declare-fun m!188159 () Bool)

(assert (=> b!154286 m!188159))

(declare-fun m!188161 () Bool)

(assert (=> b!154286 m!188161))

(assert (=> b!154286 m!188035))

(declare-fun m!188163 () Bool)

(assert (=> b!154286 m!188163))

(assert (=> b!154286 m!188143))

(declare-fun m!188165 () Bool)

(assert (=> b!154286 m!188165))

(declare-fun m!188167 () Bool)

(assert (=> b!154286 m!188167))

(declare-fun m!188169 () Bool)

(assert (=> b!154286 m!188169))

(assert (=> b!154286 m!188157))

(declare-fun m!188171 () Bool)

(assert (=> b!154286 m!188171))

(declare-fun m!188173 () Bool)

(assert (=> b!154286 m!188173))

(assert (=> b!154286 m!188159))

(declare-fun m!188175 () Bool)

(assert (=> b!154286 m!188175))

(declare-fun m!188177 () Bool)

(assert (=> b!154286 m!188177))

(declare-fun m!188179 () Bool)

(assert (=> b!154286 m!188179))

(declare-fun m!188181 () Bool)

(assert (=> b!154286 m!188181))

(declare-fun m!188183 () Bool)

(assert (=> b!154286 m!188183))

(assert (=> b!154286 m!188175))

(declare-fun m!188185 () Bool)

(assert (=> b!154286 m!188185))

(assert (=> b!154286 m!188165))

(assert (=> b!154288 m!188035))

(assert (=> b!154288 m!188035))

(declare-fun m!188187 () Bool)

(assert (=> b!154288 m!188187))

(assert (=> d!50503 d!50577))

(declare-fun b!154309 () Bool)

(declare-fun e!100833 () Bool)

(declare-fun call!17180 () Bool)

(assert (=> b!154309 (= e!100833 call!17180)))

(declare-fun b!154310 () Bool)

(declare-fun e!100834 () Bool)

(assert (=> b!154310 (= e!100834 e!100833)))

(declare-fun c!29540 () Bool)

(assert (=> b!154310 (= c!29540 (validKeyInArray!0 (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!154311 () Bool)

(declare-fun e!100832 () Bool)

(assert (=> b!154311 (= e!100833 e!100832)))

(declare-fun lt!81083 () (_ BitVec 64))

(assert (=> b!154311 (= lt!81083 (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!81085 () Unit!4897)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!5104 (_ BitVec 64) (_ BitVec 32)) Unit!4897)

(assert (=> b!154311 (= lt!81085 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4837 newMap!16) lt!81083 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!5104 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!154311 (arrayContainsKey!0 (_keys!4837 newMap!16) lt!81083 #b00000000000000000000000000000000)))

(declare-fun lt!81084 () Unit!4897)

(assert (=> b!154311 (= lt!81084 lt!81085)))

(declare-fun res!72885 () Bool)

(declare-datatypes ((SeekEntryResult!296 0))(
  ( (MissingZero!296 (index!3352 (_ BitVec 32))) (Found!296 (index!3353 (_ BitVec 32))) (Intermediate!296 (undefined!1108 Bool) (index!3354 (_ BitVec 32)) (x!17032 (_ BitVec 32))) (Undefined!296) (MissingVacant!296 (index!3355 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5104 (_ BitVec 32)) SeekEntryResult!296)

(assert (=> b!154311 (= res!72885 (= (seekEntryOrOpen!0 (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000) (_keys!4837 newMap!16) (mask!7468 newMap!16)) (Found!296 #b00000000000000000000000000000000)))))

(assert (=> b!154311 (=> (not res!72885) (not e!100832))))

(declare-fun b!154312 () Bool)

(assert (=> b!154312 (= e!100832 call!17180)))

(declare-fun d!50579 () Bool)

(declare-fun res!72884 () Bool)

(assert (=> d!50579 (=> res!72884 e!100834)))

(assert (=> d!50579 (= res!72884 (bvsge #b00000000000000000000000000000000 (size!2687 (_keys!4837 newMap!16))))))

(assert (=> d!50579 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4837 newMap!16) (mask!7468 newMap!16)) e!100834)))

(declare-fun bm!17177 () Bool)

(assert (=> bm!17177 (= call!17180 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4837 newMap!16) (mask!7468 newMap!16)))))

(assert (= (and d!50579 (not res!72884)) b!154310))

(assert (= (and b!154310 c!29540) b!154311))

(assert (= (and b!154310 (not c!29540)) b!154309))

(assert (= (and b!154311 res!72885) b!154312))

(assert (= (or b!154312 b!154309) bm!17177))

(assert (=> b!154310 m!188035))

(assert (=> b!154310 m!188035))

(assert (=> b!154310 m!188039))

(assert (=> b!154311 m!188035))

(declare-fun m!188189 () Bool)

(assert (=> b!154311 m!188189))

(declare-fun m!188191 () Bool)

(assert (=> b!154311 m!188191))

(assert (=> b!154311 m!188035))

(declare-fun m!188193 () Bool)

(assert (=> b!154311 m!188193))

(declare-fun m!188195 () Bool)

(assert (=> bm!17177 m!188195))

(assert (=> b!154057 d!50579))

(declare-fun mapIsEmpty!5183 () Bool)

(declare-fun mapRes!5183 () Bool)

(assert (=> mapIsEmpty!5183 mapRes!5183))

(declare-fun b!154314 () Bool)

(declare-fun e!100836 () Bool)

(assert (=> b!154314 (= e!100836 tp_is_empty!3027)))

(declare-fun mapNonEmpty!5183 () Bool)

(declare-fun tp!12203 () Bool)

(declare-fun e!100835 () Bool)

(assert (=> mapNonEmpty!5183 (= mapRes!5183 (and tp!12203 e!100835))))

(declare-fun mapValue!5183 () ValueCell!1170)

(declare-fun mapKey!5183 () (_ BitVec 32))

(declare-fun mapRest!5183 () (Array (_ BitVec 32) ValueCell!1170))

(assert (=> mapNonEmpty!5183 (= mapRest!5182 (store mapRest!5183 mapKey!5183 mapValue!5183))))

(declare-fun b!154313 () Bool)

(assert (=> b!154313 (= e!100835 tp_is_empty!3027)))

(declare-fun condMapEmpty!5183 () Bool)

(declare-fun mapDefault!5183 () ValueCell!1170)

(assert (=> mapNonEmpty!5182 (= condMapEmpty!5183 (= mapRest!5182 ((as const (Array (_ BitVec 32) ValueCell!1170)) mapDefault!5183)))))

(assert (=> mapNonEmpty!5182 (= tp!12202 (and e!100836 mapRes!5183))))

(assert (= (and mapNonEmpty!5182 condMapEmpty!5183) mapIsEmpty!5183))

(assert (= (and mapNonEmpty!5182 (not condMapEmpty!5183)) mapNonEmpty!5183))

(assert (= (and mapNonEmpty!5183 ((_ is ValueCellFull!1170) mapValue!5183)) b!154313))

(assert (= (and mapNonEmpty!5182 ((_ is ValueCellFull!1170) mapDefault!5183)) b!154314))

(declare-fun m!188197 () Bool)

(assert (=> mapNonEmpty!5183 m!188197))

(declare-fun mapIsEmpty!5184 () Bool)

(declare-fun mapRes!5184 () Bool)

(assert (=> mapIsEmpty!5184 mapRes!5184))

(declare-fun b!154316 () Bool)

(declare-fun e!100838 () Bool)

(assert (=> b!154316 (= e!100838 tp_is_empty!3027)))

(declare-fun mapNonEmpty!5184 () Bool)

(declare-fun tp!12204 () Bool)

(declare-fun e!100837 () Bool)

(assert (=> mapNonEmpty!5184 (= mapRes!5184 (and tp!12204 e!100837))))

(declare-fun mapRest!5184 () (Array (_ BitVec 32) ValueCell!1170))

(declare-fun mapKey!5184 () (_ BitVec 32))

(declare-fun mapValue!5184 () ValueCell!1170)

(assert (=> mapNonEmpty!5184 (= mapRest!5181 (store mapRest!5184 mapKey!5184 mapValue!5184))))

(declare-fun b!154315 () Bool)

(assert (=> b!154315 (= e!100837 tp_is_empty!3027)))

(declare-fun condMapEmpty!5184 () Bool)

(declare-fun mapDefault!5184 () ValueCell!1170)

(assert (=> mapNonEmpty!5181 (= condMapEmpty!5184 (= mapRest!5181 ((as const (Array (_ BitVec 32) ValueCell!1170)) mapDefault!5184)))))

(assert (=> mapNonEmpty!5181 (= tp!12201 (and e!100838 mapRes!5184))))

(assert (= (and mapNonEmpty!5181 condMapEmpty!5184) mapIsEmpty!5184))

(assert (= (and mapNonEmpty!5181 (not condMapEmpty!5184)) mapNonEmpty!5184))

(assert (= (and mapNonEmpty!5184 ((_ is ValueCellFull!1170) mapValue!5184)) b!154315))

(assert (= (and mapNonEmpty!5181 ((_ is ValueCellFull!1170) mapDefault!5184)) b!154316))

(declare-fun m!188199 () Bool)

(assert (=> mapNonEmpty!5184 m!188199))

(declare-fun b_lambda!6885 () Bool)

(assert (= b_lambda!6877 (or (and b!153994 b_free!3221) (and b!153997 b_free!3223 (= (defaultEntry!3064 newMap!16) (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))))) b_lambda!6885)))

(declare-fun b_lambda!6887 () Bool)

(assert (= b_lambda!6879 (or (and b!153994 b_free!3221) (and b!153997 b_free!3223 (= (defaultEntry!3064 newMap!16) (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))))) b_lambda!6887)))

(declare-fun b_lambda!6889 () Bool)

(assert (= b_lambda!6881 (or (and b!153994 b_free!3221) (and b!153997 b_free!3223 (= (defaultEntry!3064 newMap!16) (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))))) b_lambda!6889)))

(declare-fun b_lambda!6891 () Bool)

(assert (= b_lambda!6883 (or (and b!153994 b_free!3221 (= (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))) (defaultEntry!3064 newMap!16))) (and b!153997 b_free!3223) b_lambda!6891)))

(check-sat (not b!154288) (not b!154252) (not d!50565) (not b!154208) (not d!50519) tp_is_empty!3027 (not b!154235) (not b!154237) (not b_next!3223) (not b!154251) (not b!154262) (not b!154180) (not b!154192) (not d!50569) (not d!50533) (not b!154162) (not b_lambda!6885) (not d!50525) (not d!50541) (not mapNonEmpty!5184) (not b_lambda!6889) (not b!154292) (not d!50517) (not d!50575) (not bm!17157) (not b!154223) (not b!154168) (not d!50529) (not b_next!3221) (not d!50537) (not b!154210) (not b!154233) (not b!154209) (not b!154202) (not b!154182) (not b!154290) (not b!154263) (not mapNonEmpty!5183) (not d!50531) (not b!154224) (not d!50543) (not b!154158) (not d!50567) (not d!50521) (not b!154190) (not bm!17158) (not bm!17168) b_and!9635 (not b!154279) (not bm!17174) (not d!50561) (not d!50555) (not b!154195) (not d!50539) (not d!50513) (not b!154206) (not b!154203) (not b!154204) (not b!154280) (not b!154163) (not d!50527) (not b!154239) (not b!154194) (not b!154165) (not b!154299) (not d!50515) (not b!154232) (not b!154167) (not d!50523) (not b!154311) (not bm!17172) (not b!154227) (not d!50549) (not bm!17162) (not b!154274) (not b!154196) (not bm!17167) (not bm!17171) (not bm!17161) (not b!154248) (not b!154285) (not b_lambda!6891) (not b!154246) (not b_lambda!6887) (not b!154242) (not b!154250) (not b_lambda!6875) (not b!154277) (not d!50535) b_and!9633 (not d!50577) (not b!154207) (not b!154211) (not b!154181) (not b!154286) (not bm!17154) (not b!154183) (not b!154225) (not d!50571) (not bm!17177) (not b!154295) (not b!154310) (not d!50553) (not d!50563) (not b!154166) (not d!50545) (not bm!17164) (not b!154193) (not b!154164))
(check-sat b_and!9633 b_and!9635 (not b_next!3221) (not b_next!3223))
(get-model)

(declare-fun d!50581 () Bool)

(assert (=> d!50581 (= (apply!128 lt!81066 (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000)) (get!1610 (getValueByKey!182 (toList!923 lt!81066) (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000))))))

(declare-fun bs!6528 () Bool)

(assert (= bs!6528 d!50581))

(assert (=> bs!6528 m!188035))

(declare-fun m!188201 () Bool)

(assert (=> bs!6528 m!188201))

(assert (=> bs!6528 m!188201))

(declare-fun m!188203 () Bool)

(assert (=> bs!6528 m!188203))

(assert (=> b!154295 d!50581))

(declare-fun d!50583 () Bool)

(declare-fun c!29541 () Bool)

(assert (=> d!50583 (= c!29541 ((_ is ValueCellFull!1170) (select (arr!2411 (_values!3047 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun e!100839 () V!3683)

(assert (=> d!50583 (= (get!1609 (select (arr!2411 (_values!3047 newMap!16)) #b00000000000000000000000000000000) (dynLambda!466 (defaultEntry!3064 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)) e!100839)))

(declare-fun b!154317 () Bool)

(assert (=> b!154317 (= e!100839 (get!1611 (select (arr!2411 (_values!3047 newMap!16)) #b00000000000000000000000000000000) (dynLambda!466 (defaultEntry!3064 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!154318 () Bool)

(assert (=> b!154318 (= e!100839 (get!1612 (select (arr!2411 (_values!3047 newMap!16)) #b00000000000000000000000000000000) (dynLambda!466 (defaultEntry!3064 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!50583 c!29541) b!154317))

(assert (= (and d!50583 (not c!29541)) b!154318))

(assert (=> b!154317 m!188135))

(assert (=> b!154317 m!188137))

(declare-fun m!188205 () Bool)

(assert (=> b!154317 m!188205))

(assert (=> b!154318 m!188135))

(assert (=> b!154318 m!188137))

(declare-fun m!188207 () Bool)

(assert (=> b!154318 m!188207))

(assert (=> b!154295 d!50583))

(declare-fun b!154319 () Bool)

(declare-fun e!100842 () Bool)

(declare-fun lt!81091 () ListLongMap!1815)

(assert (=> b!154319 (= e!100842 (= lt!81091 (getCurrentListMapNoExtraKeys!158 (_keys!4837 newMap!16) (_values!3047 newMap!16) (mask!7468 newMap!16) (extraKeys!2805 newMap!16) (zeroValue!2907 newMap!16) (minValue!2907 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3064 newMap!16))))))

(declare-fun b!154320 () Bool)

(declare-fun e!100844 () Bool)

(assert (=> b!154320 (= e!100844 e!100842)))

(declare-fun c!29543 () Bool)

(assert (=> b!154320 (= c!29543 (bvslt #b00000000000000000000000000000000 (size!2687 (_keys!4837 newMap!16))))))

(declare-fun b!154321 () Bool)

(declare-fun e!100841 () Bool)

(assert (=> b!154321 (= e!100841 e!100844)))

(declare-fun c!29542 () Bool)

(declare-fun e!100846 () Bool)

(assert (=> b!154321 (= c!29542 e!100846)))

(declare-fun res!72887 () Bool)

(assert (=> b!154321 (=> (not res!72887) (not e!100846))))

(assert (=> b!154321 (= res!72887 (bvslt #b00000000000000000000000000000000 (size!2687 (_keys!4837 newMap!16))))))

(declare-fun b!154323 () Bool)

(declare-fun res!72886 () Bool)

(assert (=> b!154323 (=> (not res!72886) (not e!100841))))

(assert (=> b!154323 (= res!72886 (not (contains!961 lt!81091 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!154324 () Bool)

(declare-fun e!100840 () ListLongMap!1815)

(declare-fun e!100843 () ListLongMap!1815)

(assert (=> b!154324 (= e!100840 e!100843)))

(declare-fun c!29544 () Bool)

(assert (=> b!154324 (= c!29544 (validKeyInArray!0 (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!154325 () Bool)

(assert (=> b!154325 (= e!100842 (isEmpty!435 lt!81091))))

(declare-fun bm!17178 () Bool)

(declare-fun call!17181 () ListLongMap!1815)

(assert (=> bm!17178 (= call!17181 (getCurrentListMapNoExtraKeys!158 (_keys!4837 newMap!16) (_values!3047 newMap!16) (mask!7468 newMap!16) (extraKeys!2805 newMap!16) (zeroValue!2907 newMap!16) (minValue!2907 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3064 newMap!16)))))

(declare-fun b!154326 () Bool)

(assert (=> b!154326 (= e!100846 (validKeyInArray!0 (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!154326 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!50585 () Bool)

(assert (=> d!50585 e!100841))

(declare-fun res!72888 () Bool)

(assert (=> d!50585 (=> (not res!72888) (not e!100841))))

(assert (=> d!50585 (= res!72888 (not (contains!961 lt!81091 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!50585 (= lt!81091 e!100840)))

(declare-fun c!29545 () Bool)

(assert (=> d!50585 (= c!29545 (bvsge #b00000000000000000000000000000000 (size!2687 (_keys!4837 newMap!16))))))

(assert (=> d!50585 (validMask!0 (mask!7468 newMap!16))))

(assert (=> d!50585 (= (getCurrentListMapNoExtraKeys!158 (_keys!4837 newMap!16) (_values!3047 newMap!16) (mask!7468 newMap!16) (extraKeys!2805 newMap!16) (zeroValue!2907 newMap!16) (minValue!2907 newMap!16) #b00000000000000000000000000000000 (defaultEntry!3064 newMap!16)) lt!81091)))

(declare-fun b!154322 () Bool)

(assert (=> b!154322 (= e!100840 (ListLongMap!1816 Nil!1820))))

(declare-fun b!154327 () Bool)

(declare-fun lt!81089 () Unit!4897)

(declare-fun lt!81087 () Unit!4897)

(assert (=> b!154327 (= lt!81089 lt!81087)))

(declare-fun lt!81092 () V!3683)

(declare-fun lt!81090 () (_ BitVec 64))

(declare-fun lt!81086 () (_ BitVec 64))

(declare-fun lt!81088 () ListLongMap!1815)

(assert (=> b!154327 (not (contains!961 (+!187 lt!81088 (tuple2!2807 lt!81090 lt!81092)) lt!81086))))

(assert (=> b!154327 (= lt!81087 (addStillNotContains!72 lt!81088 lt!81090 lt!81092 lt!81086))))

(assert (=> b!154327 (= lt!81086 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!154327 (= lt!81092 (get!1609 (select (arr!2411 (_values!3047 newMap!16)) #b00000000000000000000000000000000) (dynLambda!466 (defaultEntry!3064 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!154327 (= lt!81090 (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!154327 (= lt!81088 call!17181)))

(assert (=> b!154327 (= e!100843 (+!187 call!17181 (tuple2!2807 (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000) (get!1609 (select (arr!2411 (_values!3047 newMap!16)) #b00000000000000000000000000000000) (dynLambda!466 (defaultEntry!3064 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!154328 () Bool)

(assert (=> b!154328 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2687 (_keys!4837 newMap!16))))))

(assert (=> b!154328 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2688 (_values!3047 newMap!16))))))

(declare-fun e!100845 () Bool)

(assert (=> b!154328 (= e!100845 (= (apply!128 lt!81091 (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000)) (get!1609 (select (arr!2411 (_values!3047 newMap!16)) #b00000000000000000000000000000000) (dynLambda!466 (defaultEntry!3064 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!154329 () Bool)

(assert (=> b!154329 (= e!100844 e!100845)))

(assert (=> b!154329 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2687 (_keys!4837 newMap!16))))))

(declare-fun res!72889 () Bool)

(assert (=> b!154329 (= res!72889 (contains!961 lt!81091 (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!154329 (=> (not res!72889) (not e!100845))))

(declare-fun b!154330 () Bool)

(assert (=> b!154330 (= e!100843 call!17181)))

(assert (= (and d!50585 c!29545) b!154322))

(assert (= (and d!50585 (not c!29545)) b!154324))

(assert (= (and b!154324 c!29544) b!154327))

(assert (= (and b!154324 (not c!29544)) b!154330))

(assert (= (or b!154327 b!154330) bm!17178))

(assert (= (and d!50585 res!72888) b!154323))

(assert (= (and b!154323 res!72886) b!154321))

(assert (= (and b!154321 res!72887) b!154326))

(assert (= (and b!154321 c!29542) b!154329))

(assert (= (and b!154321 (not c!29542)) b!154320))

(assert (= (and b!154329 res!72889) b!154328))

(assert (= (and b!154320 c!29543) b!154319))

(assert (= (and b!154320 (not c!29543)) b!154325))

(declare-fun b_lambda!6893 () Bool)

(assert (=> (not b_lambda!6893) (not b!154327)))

(assert (=> b!154327 t!6632))

(declare-fun b_and!9637 () Bool)

(assert (= b_and!9633 (and (=> t!6632 result!4505) b_and!9637)))

(assert (=> b!154327 t!6634))

(declare-fun b_and!9639 () Bool)

(assert (= b_and!9635 (and (=> t!6634 result!4507) b_and!9639)))

(declare-fun b_lambda!6895 () Bool)

(assert (=> (not b_lambda!6895) (not b!154328)))

(assert (=> b!154328 t!6632))

(declare-fun b_and!9641 () Bool)

(assert (= b_and!9637 (and (=> t!6632 result!4505) b_and!9641)))

(assert (=> b!154328 t!6634))

(declare-fun b_and!9643 () Bool)

(assert (= b_and!9639 (and (=> t!6634 result!4507) b_and!9643)))

(assert (=> b!154328 m!188135))

(assert (=> b!154328 m!188135))

(assert (=> b!154328 m!188137))

(assert (=> b!154328 m!188139))

(assert (=> b!154328 m!188035))

(declare-fun m!188209 () Bool)

(assert (=> b!154328 m!188209))

(assert (=> b!154328 m!188035))

(assert (=> b!154328 m!188137))

(declare-fun m!188211 () Bool)

(assert (=> bm!17178 m!188211))

(declare-fun m!188213 () Bool)

(assert (=> b!154323 m!188213))

(assert (=> b!154326 m!188035))

(assert (=> b!154326 m!188035))

(assert (=> b!154326 m!188039))

(declare-fun m!188215 () Bool)

(assert (=> b!154325 m!188215))

(assert (=> b!154319 m!188211))

(assert (=> b!154324 m!188035))

(assert (=> b!154324 m!188035))

(assert (=> b!154324 m!188039))

(assert (=> b!154329 m!188035))

(assert (=> b!154329 m!188035))

(declare-fun m!188217 () Bool)

(assert (=> b!154329 m!188217))

(declare-fun m!188219 () Bool)

(assert (=> b!154327 m!188219))

(declare-fun m!188221 () Bool)

(assert (=> b!154327 m!188221))

(assert (=> b!154327 m!188135))

(assert (=> b!154327 m!188137))

(assert (=> b!154327 m!188139))

(declare-fun m!188223 () Bool)

(assert (=> b!154327 m!188223))

(assert (=> b!154327 m!188035))

(assert (=> b!154327 m!188219))

(assert (=> b!154327 m!188137))

(declare-fun m!188225 () Bool)

(assert (=> b!154327 m!188225))

(assert (=> b!154327 m!188135))

(declare-fun m!188227 () Bool)

(assert (=> d!50585 m!188227))

(assert (=> d!50585 m!188123))

(assert (=> bm!17168 d!50585))

(declare-fun d!50587 () Bool)

(declare-fun e!100847 () Bool)

(assert (=> d!50587 e!100847))

(declare-fun res!72890 () Bool)

(assert (=> d!50587 (=> (not res!72890) (not e!100847))))

(declare-fun lt!81095 () ListLongMap!1815)

(assert (=> d!50587 (= res!72890 (contains!961 lt!81095 (_1!1413 (ite (or c!29535 c!29536) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 newMap!16)) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 newMap!16))))))))

(declare-fun lt!81094 () List!1823)

(assert (=> d!50587 (= lt!81095 (ListLongMap!1816 lt!81094))))

(declare-fun lt!81096 () Unit!4897)

(declare-fun lt!81093 () Unit!4897)

(assert (=> d!50587 (= lt!81096 lt!81093)))

(assert (=> d!50587 (= (getValueByKey!182 lt!81094 (_1!1413 (ite (or c!29535 c!29536) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 newMap!16)) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 newMap!16))))) (Some!187 (_2!1413 (ite (or c!29535 c!29536) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 newMap!16)) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 newMap!16))))))))

(assert (=> d!50587 (= lt!81093 (lemmaContainsTupThenGetReturnValue!97 lt!81094 (_1!1413 (ite (or c!29535 c!29536) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 newMap!16)) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 newMap!16)))) (_2!1413 (ite (or c!29535 c!29536) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 newMap!16)) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 newMap!16))))))))

(assert (=> d!50587 (= lt!81094 (insertStrictlySorted!99 (toList!923 (ite c!29535 call!17172 (ite c!29536 call!17176 call!17171))) (_1!1413 (ite (or c!29535 c!29536) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 newMap!16)) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 newMap!16)))) (_2!1413 (ite (or c!29535 c!29536) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 newMap!16)) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 newMap!16))))))))

(assert (=> d!50587 (= (+!187 (ite c!29535 call!17172 (ite c!29536 call!17176 call!17171)) (ite (or c!29535 c!29536) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 newMap!16)) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 newMap!16)))) lt!81095)))

(declare-fun b!154331 () Bool)

(declare-fun res!72891 () Bool)

(assert (=> b!154331 (=> (not res!72891) (not e!100847))))

(assert (=> b!154331 (= res!72891 (= (getValueByKey!182 (toList!923 lt!81095) (_1!1413 (ite (or c!29535 c!29536) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 newMap!16)) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 newMap!16))))) (Some!187 (_2!1413 (ite (or c!29535 c!29536) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 newMap!16)) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 newMap!16)))))))))

(declare-fun b!154332 () Bool)

(assert (=> b!154332 (= e!100847 (contains!962 (toList!923 lt!81095) (ite (or c!29535 c!29536) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 newMap!16)) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 newMap!16)))))))

(assert (= (and d!50587 res!72890) b!154331))

(assert (= (and b!154331 res!72891) b!154332))

(declare-fun m!188229 () Bool)

(assert (=> d!50587 m!188229))

(declare-fun m!188231 () Bool)

(assert (=> d!50587 m!188231))

(declare-fun m!188233 () Bool)

(assert (=> d!50587 m!188233))

(declare-fun m!188235 () Bool)

(assert (=> d!50587 m!188235))

(declare-fun m!188237 () Bool)

(assert (=> b!154331 m!188237))

(declare-fun m!188239 () Bool)

(assert (=> b!154332 m!188239))

(assert (=> bm!17172 d!50587))

(declare-fun d!50589 () Bool)

(assert (=> d!50589 (= (get!1612 (select (arr!2411 (_values!3047 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!466 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!466 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!154203 d!50589))

(declare-fun d!50591 () Bool)

(declare-fun c!29550 () Bool)

(assert (=> d!50591 (= c!29550 (and ((_ is Cons!1819) (toList!923 lt!81001)) (= (_1!1413 (h!2428 (toList!923 lt!81001))) (_1!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun e!100852 () Option!188)

(assert (=> d!50591 (= (getValueByKey!182 (toList!923 lt!81001) (_1!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) e!100852)))

(declare-fun b!154343 () Bool)

(declare-fun e!100853 () Option!188)

(assert (=> b!154343 (= e!100853 (getValueByKey!182 (t!6625 (toList!923 lt!81001)) (_1!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun b!154342 () Bool)

(assert (=> b!154342 (= e!100852 e!100853)))

(declare-fun c!29551 () Bool)

(assert (=> b!154342 (= c!29551 (and ((_ is Cons!1819) (toList!923 lt!81001)) (not (= (_1!1413 (h!2428 (toList!923 lt!81001))) (_1!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))))

(declare-fun b!154341 () Bool)

(assert (=> b!154341 (= e!100852 (Some!187 (_2!1413 (h!2428 (toList!923 lt!81001)))))))

(declare-fun b!154344 () Bool)

(assert (=> b!154344 (= e!100853 None!186)))

(assert (= (and d!50591 c!29550) b!154341))

(assert (= (and d!50591 (not c!29550)) b!154342))

(assert (= (and b!154342 c!29551) b!154343))

(assert (= (and b!154342 (not c!29551)) b!154344))

(declare-fun m!188241 () Bool)

(assert (=> b!154343 m!188241))

(assert (=> b!154193 d!50591))

(declare-fun d!50593 () Bool)

(declare-fun isEmpty!436 (Option!188) Bool)

(assert (=> d!50593 (= (isDefined!136 (getValueByKey!182 (toList!923 (+!187 lt!80932 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!80944)) (not (isEmpty!436 (getValueByKey!182 (toList!923 (+!187 lt!80932 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!80944))))))

(declare-fun bs!6529 () Bool)

(assert (= bs!6529 d!50593))

(assert (=> bs!6529 m!187959))

(declare-fun m!188243 () Bool)

(assert (=> bs!6529 m!188243))

(assert (=> b!154192 d!50593))

(declare-fun c!29552 () Bool)

(declare-fun d!50595 () Bool)

(assert (=> d!50595 (= c!29552 (and ((_ is Cons!1819) (toList!923 (+!187 lt!80932 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))) (= (_1!1413 (h!2428 (toList!923 (+!187 lt!80932 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))) lt!80944)))))

(declare-fun e!100854 () Option!188)

(assert (=> d!50595 (= (getValueByKey!182 (toList!923 (+!187 lt!80932 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!80944) e!100854)))

(declare-fun e!100855 () Option!188)

(declare-fun b!154347 () Bool)

(assert (=> b!154347 (= e!100855 (getValueByKey!182 (t!6625 (toList!923 (+!187 lt!80932 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))) lt!80944))))

(declare-fun b!154346 () Bool)

(assert (=> b!154346 (= e!100854 e!100855)))

(declare-fun c!29553 () Bool)

(assert (=> b!154346 (= c!29553 (and ((_ is Cons!1819) (toList!923 (+!187 lt!80932 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))) (not (= (_1!1413 (h!2428 (toList!923 (+!187 lt!80932 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))) lt!80944))))))

(declare-fun b!154345 () Bool)

(assert (=> b!154345 (= e!100854 (Some!187 (_2!1413 (h!2428 (toList!923 (+!187 lt!80932 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))))))))

(declare-fun b!154348 () Bool)

(assert (=> b!154348 (= e!100855 None!186)))

(assert (= (and d!50595 c!29552) b!154345))

(assert (= (and d!50595 (not c!29552)) b!154346))

(assert (= (and b!154346 c!29553) b!154347))

(assert (= (and b!154346 (not c!29553)) b!154348))

(declare-fun m!188245 () Bool)

(assert (=> b!154347 m!188245))

(assert (=> b!154192 d!50595))

(declare-fun b!154349 () Bool)

(declare-fun e!100857 () Bool)

(declare-fun call!17182 () Bool)

(assert (=> b!154349 (= e!100857 call!17182)))

(declare-fun b!154350 () Bool)

(declare-fun e!100858 () Bool)

(assert (=> b!154350 (= e!100858 (contains!963 (ite c!29517 (Cons!1820 (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000) Nil!1821) Nil!1821) (select (arr!2410 (_keys!4837 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!154351 () Bool)

(declare-fun e!100856 () Bool)

(assert (=> b!154351 (= e!100856 e!100857)))

(declare-fun c!29554 () Bool)

(assert (=> b!154351 (= c!29554 (validKeyInArray!0 (select (arr!2410 (_keys!4837 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!154352 () Bool)

(declare-fun e!100859 () Bool)

(assert (=> b!154352 (= e!100859 e!100856)))

(declare-fun res!72894 () Bool)

(assert (=> b!154352 (=> (not res!72894) (not e!100856))))

(assert (=> b!154352 (= res!72894 (not e!100858))))

(declare-fun res!72892 () Bool)

(assert (=> b!154352 (=> (not res!72892) (not e!100858))))

(assert (=> b!154352 (= res!72892 (validKeyInArray!0 (select (arr!2410 (_keys!4837 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!50597 () Bool)

(declare-fun res!72893 () Bool)

(assert (=> d!50597 (=> res!72893 e!100859)))

(assert (=> d!50597 (= res!72893 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2687 (_keys!4837 newMap!16))))))

(assert (=> d!50597 (= (arrayNoDuplicates!0 (_keys!4837 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!29517 (Cons!1820 (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000) Nil!1821) Nil!1821)) e!100859)))

(declare-fun bm!17179 () Bool)

(assert (=> bm!17179 (= call!17182 (arrayNoDuplicates!0 (_keys!4837 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!29554 (Cons!1820 (select (arr!2410 (_keys!4837 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!29517 (Cons!1820 (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000) Nil!1821) Nil!1821)) (ite c!29517 (Cons!1820 (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000) Nil!1821) Nil!1821))))))

(declare-fun b!154353 () Bool)

(assert (=> b!154353 (= e!100857 call!17182)))

(assert (= (and d!50597 (not res!72893)) b!154352))

(assert (= (and b!154352 res!72892) b!154350))

(assert (= (and b!154352 res!72894) b!154351))

(assert (= (and b!154351 c!29554) b!154349))

(assert (= (and b!154351 (not c!29554)) b!154353))

(assert (= (or b!154349 b!154353) bm!17179))

(declare-fun m!188247 () Bool)

(assert (=> b!154350 m!188247))

(assert (=> b!154350 m!188247))

(declare-fun m!188249 () Bool)

(assert (=> b!154350 m!188249))

(assert (=> b!154351 m!188247))

(assert (=> b!154351 m!188247))

(declare-fun m!188251 () Bool)

(assert (=> b!154351 m!188251))

(assert (=> b!154352 m!188247))

(assert (=> b!154352 m!188247))

(assert (=> b!154352 m!188251))

(assert (=> bm!17179 m!188247))

(declare-fun m!188253 () Bool)

(assert (=> bm!17179 m!188253))

(assert (=> bm!17157 d!50597))

(declare-fun d!50599 () Bool)

(assert (=> d!50599 (= (get!1610 (getValueByKey!182 (toList!923 (+!187 lt!80936 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!80941)) (v!3418 (getValueByKey!182 (toList!923 (+!187 lt!80936 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!80941)))))

(assert (=> d!50515 d!50599))

(declare-fun d!50601 () Bool)

(declare-fun c!29555 () Bool)

(assert (=> d!50601 (= c!29555 (and ((_ is Cons!1819) (toList!923 (+!187 lt!80936 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))) (= (_1!1413 (h!2428 (toList!923 (+!187 lt!80936 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))) lt!80941)))))

(declare-fun e!100860 () Option!188)

(assert (=> d!50601 (= (getValueByKey!182 (toList!923 (+!187 lt!80936 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!80941) e!100860)))

(declare-fun e!100861 () Option!188)

(declare-fun b!154356 () Bool)

(assert (=> b!154356 (= e!100861 (getValueByKey!182 (t!6625 (toList!923 (+!187 lt!80936 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))) lt!80941))))

(declare-fun b!154355 () Bool)

(assert (=> b!154355 (= e!100860 e!100861)))

(declare-fun c!29556 () Bool)

(assert (=> b!154355 (= c!29556 (and ((_ is Cons!1819) (toList!923 (+!187 lt!80936 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))) (not (= (_1!1413 (h!2428 (toList!923 (+!187 lt!80936 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))) lt!80941))))))

(declare-fun b!154354 () Bool)

(assert (=> b!154354 (= e!100860 (Some!187 (_2!1413 (h!2428 (toList!923 (+!187 lt!80936 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))))

(declare-fun b!154357 () Bool)

(assert (=> b!154357 (= e!100861 None!186)))

(assert (= (and d!50601 c!29555) b!154354))

(assert (= (and d!50601 (not c!29555)) b!154355))

(assert (= (and b!154355 c!29556) b!154356))

(assert (= (and b!154355 (not c!29556)) b!154357))

(declare-fun m!188255 () Bool)

(assert (=> b!154356 m!188255))

(assert (=> d!50515 d!50601))

(declare-fun d!50603 () Bool)

(assert (=> d!50603 (= (get!1610 (getValueByKey!182 (toList!923 lt!80924) lt!80929)) (v!3418 (getValueByKey!182 (toList!923 lt!80924) lt!80929)))))

(assert (=> d!50529 d!50603))

(declare-fun d!50605 () Bool)

(declare-fun c!29557 () Bool)

(assert (=> d!50605 (= c!29557 (and ((_ is Cons!1819) (toList!923 lt!80924)) (= (_1!1413 (h!2428 (toList!923 lt!80924))) lt!80929)))))

(declare-fun e!100862 () Option!188)

(assert (=> d!50605 (= (getValueByKey!182 (toList!923 lt!80924) lt!80929) e!100862)))

(declare-fun b!154360 () Bool)

(declare-fun e!100863 () Option!188)

(assert (=> b!154360 (= e!100863 (getValueByKey!182 (t!6625 (toList!923 lt!80924)) lt!80929))))

(declare-fun b!154359 () Bool)

(assert (=> b!154359 (= e!100862 e!100863)))

(declare-fun c!29558 () Bool)

(assert (=> b!154359 (= c!29558 (and ((_ is Cons!1819) (toList!923 lt!80924)) (not (= (_1!1413 (h!2428 (toList!923 lt!80924))) lt!80929))))))

(declare-fun b!154358 () Bool)

(assert (=> b!154358 (= e!100862 (Some!187 (_2!1413 (h!2428 (toList!923 lt!80924)))))))

(declare-fun b!154361 () Bool)

(assert (=> b!154361 (= e!100863 None!186)))

(assert (= (and d!50605 c!29557) b!154358))

(assert (= (and d!50605 (not c!29557)) b!154359))

(assert (= (and b!154359 c!29558) b!154360))

(assert (= (and b!154359 (not c!29558)) b!154361))

(declare-fun m!188257 () Bool)

(assert (=> b!154360 m!188257))

(assert (=> d!50529 d!50605))

(declare-fun lt!81099 () Bool)

(declare-fun d!50607 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!144 (List!1823) (InoxSet tuple2!2806))

(assert (=> d!50607 (= lt!81099 (select (content!144 (toList!923 lt!80981)) (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))

(declare-fun e!100869 () Bool)

(assert (=> d!50607 (= lt!81099 e!100869)))

(declare-fun res!72899 () Bool)

(assert (=> d!50607 (=> (not res!72899) (not e!100869))))

(assert (=> d!50607 (= res!72899 ((_ is Cons!1819) (toList!923 lt!80981)))))

(assert (=> d!50607 (= (contains!962 (toList!923 lt!80981) (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!81099)))

(declare-fun b!154366 () Bool)

(declare-fun e!100868 () Bool)

(assert (=> b!154366 (= e!100869 e!100868)))

(declare-fun res!72900 () Bool)

(assert (=> b!154366 (=> res!72900 e!100868)))

(assert (=> b!154366 (= res!72900 (= (h!2428 (toList!923 lt!80981)) (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))

(declare-fun b!154367 () Bool)

(assert (=> b!154367 (= e!100868 (contains!962 (t!6625 (toList!923 lt!80981)) (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))

(assert (= (and d!50607 res!72899) b!154366))

(assert (= (and b!154366 (not res!72900)) b!154367))

(declare-fun m!188259 () Bool)

(assert (=> d!50607 m!188259))

(declare-fun m!188261 () Bool)

(assert (=> d!50607 m!188261))

(declare-fun m!188263 () Bool)

(assert (=> b!154367 m!188263))

(assert (=> b!154181 d!50607))

(declare-fun b!154368 () Bool)

(declare-fun e!100871 () Bool)

(declare-fun call!17183 () Bool)

(assert (=> b!154368 (= e!100871 call!17183)))

(declare-fun b!154369 () Bool)

(declare-fun e!100872 () Bool)

(assert (=> b!154369 (= e!100872 e!100871)))

(declare-fun c!29559 () Bool)

(assert (=> b!154369 (= c!29559 (validKeyInArray!0 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!154370 () Bool)

(declare-fun e!100870 () Bool)

(assert (=> b!154370 (= e!100871 e!100870)))

(declare-fun lt!81100 () (_ BitVec 64))

(assert (=> b!154370 (= lt!81100 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000))))

(declare-fun lt!81102 () Unit!4897)

(assert (=> b!154370 (= lt!81102 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4837 (v!3416 (underlying!524 thiss!992))) lt!81100 #b00000000000000000000000000000000))))

(assert (=> b!154370 (arrayContainsKey!0 (_keys!4837 (v!3416 (underlying!524 thiss!992))) lt!81100 #b00000000000000000000000000000000)))

(declare-fun lt!81101 () Unit!4897)

(assert (=> b!154370 (= lt!81101 lt!81102)))

(declare-fun res!72902 () Bool)

(assert (=> b!154370 (= res!72902 (= (seekEntryOrOpen!0 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000) (_keys!4837 (v!3416 (underlying!524 thiss!992))) (mask!7468 (v!3416 (underlying!524 thiss!992)))) (Found!296 #b00000000000000000000000000000000)))))

(assert (=> b!154370 (=> (not res!72902) (not e!100870))))

(declare-fun b!154371 () Bool)

(assert (=> b!154371 (= e!100870 call!17183)))

(declare-fun d!50609 () Bool)

(declare-fun res!72901 () Bool)

(assert (=> d!50609 (=> res!72901 e!100872)))

(assert (=> d!50609 (= res!72901 (bvsge #b00000000000000000000000000000000 (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992))))))))

(assert (=> d!50609 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4837 (v!3416 (underlying!524 thiss!992))) (mask!7468 (v!3416 (underlying!524 thiss!992)))) e!100872)))

(declare-fun bm!17180 () Bool)

(assert (=> bm!17180 (= call!17183 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4837 (v!3416 (underlying!524 thiss!992))) (mask!7468 (v!3416 (underlying!524 thiss!992)))))))

(assert (= (and d!50609 (not res!72901)) b!154369))

(assert (= (and b!154369 c!29559) b!154370))

(assert (= (and b!154369 (not c!29559)) b!154368))

(assert (= (and b!154370 res!72902) b!154371))

(assert (= (or b!154371 b!154368) bm!17180))

(assert (=> b!154369 m!188047))

(assert (=> b!154369 m!188047))

(assert (=> b!154369 m!188053))

(assert (=> b!154370 m!188047))

(declare-fun m!188265 () Bool)

(assert (=> b!154370 m!188265))

(declare-fun m!188267 () Bool)

(assert (=> b!154370 m!188267))

(assert (=> b!154370 m!188047))

(declare-fun m!188269 () Bool)

(assert (=> b!154370 m!188269))

(declare-fun m!188271 () Bool)

(assert (=> bm!17180 m!188271))

(assert (=> b!154208 d!50609))

(declare-fun d!50611 () Bool)

(assert (=> d!50611 (= (isDefined!136 (getValueByKey!182 (toList!923 lt!80934) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!436 (getValueByKey!182 (toList!923 lt!80934) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!6530 () Bool)

(assert (= bs!6530 d!50611))

(assert (=> bs!6530 m!188011))

(declare-fun m!188273 () Bool)

(assert (=> bs!6530 m!188273))

(assert (=> b!154206 d!50611))

(declare-fun d!50613 () Bool)

(declare-fun c!29560 () Bool)

(assert (=> d!50613 (= c!29560 (and ((_ is Cons!1819) (toList!923 lt!80934)) (= (_1!1413 (h!2428 (toList!923 lt!80934))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!100873 () Option!188)

(assert (=> d!50613 (= (getValueByKey!182 (toList!923 lt!80934) #b0000000000000000000000000000000000000000000000000000000000000000) e!100873)))

(declare-fun b!154374 () Bool)

(declare-fun e!100874 () Option!188)

(assert (=> b!154374 (= e!100874 (getValueByKey!182 (t!6625 (toList!923 lt!80934)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!154373 () Bool)

(assert (=> b!154373 (= e!100873 e!100874)))

(declare-fun c!29561 () Bool)

(assert (=> b!154373 (= c!29561 (and ((_ is Cons!1819) (toList!923 lt!80934)) (not (= (_1!1413 (h!2428 (toList!923 lt!80934))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!154372 () Bool)

(assert (=> b!154372 (= e!100873 (Some!187 (_2!1413 (h!2428 (toList!923 lt!80934)))))))

(declare-fun b!154375 () Bool)

(assert (=> b!154375 (= e!100874 None!186)))

(assert (= (and d!50613 c!29560) b!154372))

(assert (= (and d!50613 (not c!29560)) b!154373))

(assert (= (and b!154373 c!29561) b!154374))

(assert (= (and b!154373 (not c!29561)) b!154375))

(declare-fun m!188275 () Bool)

(assert (=> b!154374 m!188275))

(assert (=> b!154206 d!50613))

(assert (=> d!50541 d!50533))

(assert (=> d!50541 d!50531))

(declare-fun d!50615 () Bool)

(assert (=> d!50615 (contains!961 (+!187 lt!80932 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!80944)))

(assert (=> d!50615 true))

(declare-fun _$35!404 () Unit!4897)

(assert (=> d!50615 (= (choose!926 lt!80932 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))) lt!80944) _$35!404)))

(declare-fun bs!6531 () Bool)

(assert (= bs!6531 d!50615))

(assert (=> bs!6531 m!187845))

(assert (=> bs!6531 m!187845))

(assert (=> bs!6531 m!187859))

(assert (=> d!50541 d!50615))

(declare-fun d!50617 () Bool)

(declare-fun e!100875 () Bool)

(assert (=> d!50617 e!100875))

(declare-fun res!72903 () Bool)

(assert (=> d!50617 (=> res!72903 e!100875)))

(declare-fun lt!81104 () Bool)

(assert (=> d!50617 (= res!72903 (not lt!81104))))

(declare-fun lt!81103 () Bool)

(assert (=> d!50617 (= lt!81104 lt!81103)))

(declare-fun lt!81106 () Unit!4897)

(declare-fun e!100876 () Unit!4897)

(assert (=> d!50617 (= lt!81106 e!100876)))

(declare-fun c!29562 () Bool)

(assert (=> d!50617 (= c!29562 lt!81103)))

(assert (=> d!50617 (= lt!81103 (containsKey!186 (toList!923 lt!80932) lt!80944))))

(assert (=> d!50617 (= (contains!961 lt!80932 lt!80944) lt!81104)))

(declare-fun b!154377 () Bool)

(declare-fun lt!81105 () Unit!4897)

(assert (=> b!154377 (= e!100876 lt!81105)))

(assert (=> b!154377 (= lt!81105 (lemmaContainsKeyImpliesGetValueByKeyDefined!135 (toList!923 lt!80932) lt!80944))))

(assert (=> b!154377 (isDefined!136 (getValueByKey!182 (toList!923 lt!80932) lt!80944))))

(declare-fun b!154378 () Bool)

(declare-fun Unit!4906 () Unit!4897)

(assert (=> b!154378 (= e!100876 Unit!4906)))

(declare-fun b!154379 () Bool)

(assert (=> b!154379 (= e!100875 (isDefined!136 (getValueByKey!182 (toList!923 lt!80932) lt!80944)))))

(assert (= (and d!50617 c!29562) b!154377))

(assert (= (and d!50617 (not c!29562)) b!154378))

(assert (= (and d!50617 (not res!72903)) b!154379))

(declare-fun m!188277 () Bool)

(assert (=> d!50617 m!188277))

(declare-fun m!188279 () Bool)

(assert (=> b!154377 m!188279))

(declare-fun m!188281 () Bool)

(assert (=> b!154377 m!188281))

(assert (=> b!154377 m!188281))

(declare-fun m!188283 () Bool)

(assert (=> b!154377 m!188283))

(assert (=> b!154379 m!188281))

(assert (=> b!154379 m!188281))

(assert (=> b!154379 m!188283))

(assert (=> d!50541 d!50617))

(declare-fun d!50619 () Bool)

(declare-fun e!100877 () Bool)

(assert (=> d!50619 e!100877))

(declare-fun res!72904 () Bool)

(assert (=> d!50619 (=> res!72904 e!100877)))

(declare-fun lt!81108 () Bool)

(assert (=> d!50619 (= res!72904 (not lt!81108))))

(declare-fun lt!81107 () Bool)

(assert (=> d!50619 (= lt!81108 lt!81107)))

(declare-fun lt!81110 () Unit!4897)

(declare-fun e!100878 () Unit!4897)

(assert (=> d!50619 (= lt!81110 e!100878)))

(declare-fun c!29563 () Bool)

(assert (=> d!50619 (= c!29563 lt!81107)))

(assert (=> d!50619 (= lt!81107 (containsKey!186 (toList!923 lt!81029) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!50619 (= (contains!961 lt!81029 #b0000000000000000000000000000000000000000000000000000000000000000) lt!81108)))

(declare-fun b!154380 () Bool)

(declare-fun lt!81109 () Unit!4897)

(assert (=> b!154380 (= e!100878 lt!81109)))

(assert (=> b!154380 (= lt!81109 (lemmaContainsKeyImpliesGetValueByKeyDefined!135 (toList!923 lt!81029) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!154380 (isDefined!136 (getValueByKey!182 (toList!923 lt!81029) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!154381 () Bool)

(declare-fun Unit!4907 () Unit!4897)

(assert (=> b!154381 (= e!100878 Unit!4907)))

(declare-fun b!154382 () Bool)

(assert (=> b!154382 (= e!100877 (isDefined!136 (getValueByKey!182 (toList!923 lt!81029) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!50619 c!29563) b!154380))

(assert (= (and d!50619 (not c!29563)) b!154381))

(assert (= (and d!50619 (not res!72904)) b!154382))

(declare-fun m!188285 () Bool)

(assert (=> d!50619 m!188285))

(declare-fun m!188287 () Bool)

(assert (=> b!154380 m!188287))

(declare-fun m!188289 () Bool)

(assert (=> b!154380 m!188289))

(assert (=> b!154380 m!188289))

(declare-fun m!188291 () Bool)

(assert (=> b!154380 m!188291))

(assert (=> b!154382 m!188289))

(assert (=> b!154382 m!188289))

(assert (=> b!154382 m!188291))

(assert (=> bm!17161 d!50619))

(declare-fun d!50621 () Bool)

(declare-fun e!100879 () Bool)

(assert (=> d!50621 e!100879))

(declare-fun res!72905 () Bool)

(assert (=> d!50621 (=> res!72905 e!100879)))

(declare-fun lt!81112 () Bool)

(assert (=> d!50621 (= res!72905 (not lt!81112))))

(declare-fun lt!81111 () Bool)

(assert (=> d!50621 (= lt!81112 lt!81111)))

(declare-fun lt!81114 () Unit!4897)

(declare-fun e!100880 () Unit!4897)

(assert (=> d!50621 (= lt!81114 e!100880)))

(declare-fun c!29564 () Bool)

(assert (=> d!50621 (= c!29564 lt!81111)))

(assert (=> d!50621 (= lt!81111 (containsKey!186 (toList!923 lt!80964) (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> d!50621 (= (contains!961 lt!80964 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!81112)))

(declare-fun b!154383 () Bool)

(declare-fun lt!81113 () Unit!4897)

(assert (=> b!154383 (= e!100880 lt!81113)))

(assert (=> b!154383 (= lt!81113 (lemmaContainsKeyImpliesGetValueByKeyDefined!135 (toList!923 lt!80964) (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!154383 (isDefined!136 (getValueByKey!182 (toList!923 lt!80964) (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!154384 () Bool)

(declare-fun Unit!4908 () Unit!4897)

(assert (=> b!154384 (= e!100880 Unit!4908)))

(declare-fun b!154385 () Bool)

(assert (=> b!154385 (= e!100879 (isDefined!136 (getValueByKey!182 (toList!923 lt!80964) (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (= (and d!50621 c!29564) b!154383))

(assert (= (and d!50621 (not c!29564)) b!154384))

(assert (= (and d!50621 (not res!72905)) b!154385))

(assert (=> d!50621 m!187823))

(declare-fun m!188293 () Bool)

(assert (=> d!50621 m!188293))

(assert (=> b!154383 m!187823))

(declare-fun m!188295 () Bool)

(assert (=> b!154383 m!188295))

(assert (=> b!154383 m!187823))

(declare-fun m!188297 () Bool)

(assert (=> b!154383 m!188297))

(assert (=> b!154383 m!188297))

(declare-fun m!188299 () Bool)

(assert (=> b!154383 m!188299))

(assert (=> b!154385 m!187823))

(assert (=> b!154385 m!188297))

(assert (=> b!154385 m!188297))

(assert (=> b!154385 m!188299))

(assert (=> b!154168 d!50621))

(declare-fun d!50623 () Bool)

(assert (=> d!50623 (= (validMask!0 (mask!7468 newMap!16)) (and (or (= (mask!7468 newMap!16) #b00000000000000000000000000000111) (= (mask!7468 newMap!16) #b00000000000000000000000000001111) (= (mask!7468 newMap!16) #b00000000000000000000000000011111) (= (mask!7468 newMap!16) #b00000000000000000000000000111111) (= (mask!7468 newMap!16) #b00000000000000000000000001111111) (= (mask!7468 newMap!16) #b00000000000000000000000011111111) (= (mask!7468 newMap!16) #b00000000000000000000000111111111) (= (mask!7468 newMap!16) #b00000000000000000000001111111111) (= (mask!7468 newMap!16) #b00000000000000000000011111111111) (= (mask!7468 newMap!16) #b00000000000000000000111111111111) (= (mask!7468 newMap!16) #b00000000000000000001111111111111) (= (mask!7468 newMap!16) #b00000000000000000011111111111111) (= (mask!7468 newMap!16) #b00000000000000000111111111111111) (= (mask!7468 newMap!16) #b00000000000000001111111111111111) (= (mask!7468 newMap!16) #b00000000000000011111111111111111) (= (mask!7468 newMap!16) #b00000000000000111111111111111111) (= (mask!7468 newMap!16) #b00000000000001111111111111111111) (= (mask!7468 newMap!16) #b00000000000011111111111111111111) (= (mask!7468 newMap!16) #b00000000000111111111111111111111) (= (mask!7468 newMap!16) #b00000000001111111111111111111111) (= (mask!7468 newMap!16) #b00000000011111111111111111111111) (= (mask!7468 newMap!16) #b00000000111111111111111111111111) (= (mask!7468 newMap!16) #b00000001111111111111111111111111) (= (mask!7468 newMap!16) #b00000011111111111111111111111111) (= (mask!7468 newMap!16) #b00000111111111111111111111111111) (= (mask!7468 newMap!16) #b00001111111111111111111111111111) (= (mask!7468 newMap!16) #b00011111111111111111111111111111) (= (mask!7468 newMap!16) #b00111111111111111111111111111111)) (bvsle (mask!7468 newMap!16) #b00111111111111111111111111111111)))))

(assert (=> d!50569 d!50623))

(declare-fun lt!81115 () Bool)

(declare-fun d!50625 () Bool)

(assert (=> d!50625 (= lt!81115 (select (content!144 (toList!923 lt!81016)) (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun e!100882 () Bool)

(assert (=> d!50625 (= lt!81115 e!100882)))

(declare-fun res!72906 () Bool)

(assert (=> d!50625 (=> (not res!72906) (not e!100882))))

(assert (=> d!50625 (= res!72906 ((_ is Cons!1819) (toList!923 lt!81016)))))

(assert (=> d!50625 (= (contains!962 (toList!923 lt!81016) (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!81115)))

(declare-fun b!154386 () Bool)

(declare-fun e!100881 () Bool)

(assert (=> b!154386 (= e!100882 e!100881)))

(declare-fun res!72907 () Bool)

(assert (=> b!154386 (=> res!72907 e!100881)))

(assert (=> b!154386 (= res!72907 (= (h!2428 (toList!923 lt!81016)) (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun b!154387 () Bool)

(assert (=> b!154387 (= e!100881 (contains!962 (t!6625 (toList!923 lt!81016)) (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (= (and d!50625 res!72906) b!154386))

(assert (= (and b!154386 (not res!72907)) b!154387))

(declare-fun m!188301 () Bool)

(assert (=> d!50625 m!188301))

(declare-fun m!188303 () Bool)

(assert (=> d!50625 m!188303))

(declare-fun m!188305 () Bool)

(assert (=> b!154387 m!188305))

(assert (=> b!154211 d!50625))

(declare-fun d!50627 () Bool)

(declare-fun c!29565 () Bool)

(assert (=> d!50627 (= c!29565 (and ((_ is Cons!1819) (toList!923 lt!80981)) (= (_1!1413 (h!2428 (toList!923 lt!80981))) (_1!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun e!100883 () Option!188)

(assert (=> d!50627 (= (getValueByKey!182 (toList!923 lt!80981) (_1!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) e!100883)))

(declare-fun b!154390 () Bool)

(declare-fun e!100884 () Option!188)

(assert (=> b!154390 (= e!100884 (getValueByKey!182 (t!6625 (toList!923 lt!80981)) (_1!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun b!154389 () Bool)

(assert (=> b!154389 (= e!100883 e!100884)))

(declare-fun c!29566 () Bool)

(assert (=> b!154389 (= c!29566 (and ((_ is Cons!1819) (toList!923 lt!80981)) (not (= (_1!1413 (h!2428 (toList!923 lt!80981))) (_1!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))))

(declare-fun b!154388 () Bool)

(assert (=> b!154388 (= e!100883 (Some!187 (_2!1413 (h!2428 (toList!923 lt!80981)))))))

(declare-fun b!154391 () Bool)

(assert (=> b!154391 (= e!100884 None!186)))

(assert (= (and d!50627 c!29565) b!154388))

(assert (= (and d!50627 (not c!29565)) b!154389))

(assert (= (and b!154389 c!29566) b!154390))

(assert (= (and b!154389 (not c!29566)) b!154391))

(declare-fun m!188307 () Bool)

(assert (=> b!154390 m!188307))

(assert (=> b!154180 d!50627))

(declare-fun lt!81116 () Bool)

(declare-fun d!50629 () Bool)

(assert (=> d!50629 (= lt!81116 (select (content!144 (toList!923 lt!80985)) (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))))

(declare-fun e!100886 () Bool)

(assert (=> d!50629 (= lt!81116 e!100886)))

(declare-fun res!72908 () Bool)

(assert (=> d!50629 (=> (not res!72908) (not e!100886))))

(assert (=> d!50629 (= res!72908 ((_ is Cons!1819) (toList!923 lt!80985)))))

(assert (=> d!50629 (= (contains!962 (toList!923 lt!80985) (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!81116)))

(declare-fun b!154392 () Bool)

(declare-fun e!100885 () Bool)

(assert (=> b!154392 (= e!100886 e!100885)))

(declare-fun res!72909 () Bool)

(assert (=> b!154392 (=> res!72909 e!100885)))

(assert (=> b!154392 (= res!72909 (= (h!2428 (toList!923 lt!80985)) (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))))

(declare-fun b!154393 () Bool)

(assert (=> b!154393 (= e!100885 (contains!962 (t!6625 (toList!923 lt!80985)) (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))))

(assert (= (and d!50629 res!72908) b!154392))

(assert (= (and b!154392 (not res!72909)) b!154393))

(declare-fun m!188309 () Bool)

(assert (=> d!50629 m!188309))

(declare-fun m!188311 () Bool)

(assert (=> d!50629 m!188311))

(declare-fun m!188313 () Bool)

(assert (=> b!154393 m!188313))

(assert (=> b!154183 d!50629))

(declare-fun d!50631 () Bool)

(declare-fun e!100887 () Bool)

(assert (=> d!50631 e!100887))

(declare-fun res!72910 () Bool)

(assert (=> d!50631 (=> (not res!72910) (not e!100887))))

(declare-fun lt!81119 () ListLongMap!1815)

(assert (=> d!50631 (= res!72910 (contains!961 lt!81119 (_1!1413 (tuple2!2807 lt!81067 (zeroValue!2907 newMap!16)))))))

(declare-fun lt!81118 () List!1823)

(assert (=> d!50631 (= lt!81119 (ListLongMap!1816 lt!81118))))

(declare-fun lt!81120 () Unit!4897)

(declare-fun lt!81117 () Unit!4897)

(assert (=> d!50631 (= lt!81120 lt!81117)))

(assert (=> d!50631 (= (getValueByKey!182 lt!81118 (_1!1413 (tuple2!2807 lt!81067 (zeroValue!2907 newMap!16)))) (Some!187 (_2!1413 (tuple2!2807 lt!81067 (zeroValue!2907 newMap!16)))))))

(assert (=> d!50631 (= lt!81117 (lemmaContainsTupThenGetReturnValue!97 lt!81118 (_1!1413 (tuple2!2807 lt!81067 (zeroValue!2907 newMap!16))) (_2!1413 (tuple2!2807 lt!81067 (zeroValue!2907 newMap!16)))))))

(assert (=> d!50631 (= lt!81118 (insertStrictlySorted!99 (toList!923 lt!81056) (_1!1413 (tuple2!2807 lt!81067 (zeroValue!2907 newMap!16))) (_2!1413 (tuple2!2807 lt!81067 (zeroValue!2907 newMap!16)))))))

(assert (=> d!50631 (= (+!187 lt!81056 (tuple2!2807 lt!81067 (zeroValue!2907 newMap!16))) lt!81119)))

(declare-fun b!154394 () Bool)

(declare-fun res!72911 () Bool)

(assert (=> b!154394 (=> (not res!72911) (not e!100887))))

(assert (=> b!154394 (= res!72911 (= (getValueByKey!182 (toList!923 lt!81119) (_1!1413 (tuple2!2807 lt!81067 (zeroValue!2907 newMap!16)))) (Some!187 (_2!1413 (tuple2!2807 lt!81067 (zeroValue!2907 newMap!16))))))))

(declare-fun b!154395 () Bool)

(assert (=> b!154395 (= e!100887 (contains!962 (toList!923 lt!81119) (tuple2!2807 lt!81067 (zeroValue!2907 newMap!16))))))

(assert (= (and d!50631 res!72910) b!154394))

(assert (= (and b!154394 res!72911) b!154395))

(declare-fun m!188315 () Bool)

(assert (=> d!50631 m!188315))

(declare-fun m!188317 () Bool)

(assert (=> d!50631 m!188317))

(declare-fun m!188319 () Bool)

(assert (=> d!50631 m!188319))

(declare-fun m!188321 () Bool)

(assert (=> d!50631 m!188321))

(declare-fun m!188323 () Bool)

(assert (=> b!154394 m!188323))

(declare-fun m!188325 () Bool)

(assert (=> b!154395 m!188325))

(assert (=> b!154286 d!50631))

(declare-fun d!50633 () Bool)

(assert (=> d!50633 (= (apply!128 (+!187 lt!81068 (tuple2!2807 lt!81058 (minValue!2907 newMap!16))) lt!81073) (get!1610 (getValueByKey!182 (toList!923 (+!187 lt!81068 (tuple2!2807 lt!81058 (minValue!2907 newMap!16)))) lt!81073)))))

(declare-fun bs!6532 () Bool)

(assert (= bs!6532 d!50633))

(declare-fun m!188327 () Bool)

(assert (=> bs!6532 m!188327))

(assert (=> bs!6532 m!188327))

(declare-fun m!188329 () Bool)

(assert (=> bs!6532 m!188329))

(assert (=> b!154286 d!50633))

(declare-fun d!50635 () Bool)

(assert (=> d!50635 (contains!961 (+!187 lt!81064 (tuple2!2807 lt!81069 (zeroValue!2907 newMap!16))) lt!81076)))

(declare-fun lt!81121 () Unit!4897)

(assert (=> d!50635 (= lt!81121 (choose!926 lt!81064 lt!81069 (zeroValue!2907 newMap!16) lt!81076))))

(assert (=> d!50635 (contains!961 lt!81064 lt!81076)))

(assert (=> d!50635 (= (addStillContains!104 lt!81064 lt!81069 (zeroValue!2907 newMap!16) lt!81076) lt!81121)))

(declare-fun bs!6533 () Bool)

(assert (= bs!6533 d!50635))

(assert (=> bs!6533 m!188157))

(assert (=> bs!6533 m!188157))

(assert (=> bs!6533 m!188171))

(declare-fun m!188331 () Bool)

(assert (=> bs!6533 m!188331))

(declare-fun m!188333 () Bool)

(assert (=> bs!6533 m!188333))

(assert (=> b!154286 d!50635))

(declare-fun d!50637 () Bool)

(assert (=> d!50637 (= (apply!128 lt!81068 lt!81073) (get!1610 (getValueByKey!182 (toList!923 lt!81068) lt!81073)))))

(declare-fun bs!6534 () Bool)

(assert (= bs!6534 d!50637))

(declare-fun m!188335 () Bool)

(assert (=> bs!6534 m!188335))

(assert (=> bs!6534 m!188335))

(declare-fun m!188337 () Bool)

(assert (=> bs!6534 m!188337))

(assert (=> b!154286 d!50637))

(declare-fun d!50639 () Bool)

(declare-fun e!100888 () Bool)

(assert (=> d!50639 e!100888))

(declare-fun res!72912 () Bool)

(assert (=> d!50639 (=> (not res!72912) (not e!100888))))

(declare-fun lt!81124 () ListLongMap!1815)

(assert (=> d!50639 (= res!72912 (contains!961 lt!81124 (_1!1413 (tuple2!2807 lt!81058 (minValue!2907 newMap!16)))))))

(declare-fun lt!81123 () List!1823)

(assert (=> d!50639 (= lt!81124 (ListLongMap!1816 lt!81123))))

(declare-fun lt!81125 () Unit!4897)

(declare-fun lt!81122 () Unit!4897)

(assert (=> d!50639 (= lt!81125 lt!81122)))

(assert (=> d!50639 (= (getValueByKey!182 lt!81123 (_1!1413 (tuple2!2807 lt!81058 (minValue!2907 newMap!16)))) (Some!187 (_2!1413 (tuple2!2807 lt!81058 (minValue!2907 newMap!16)))))))

(assert (=> d!50639 (= lt!81122 (lemmaContainsTupThenGetReturnValue!97 lt!81123 (_1!1413 (tuple2!2807 lt!81058 (minValue!2907 newMap!16))) (_2!1413 (tuple2!2807 lt!81058 (minValue!2907 newMap!16)))))))

(assert (=> d!50639 (= lt!81123 (insertStrictlySorted!99 (toList!923 lt!81068) (_1!1413 (tuple2!2807 lt!81058 (minValue!2907 newMap!16))) (_2!1413 (tuple2!2807 lt!81058 (minValue!2907 newMap!16)))))))

(assert (=> d!50639 (= (+!187 lt!81068 (tuple2!2807 lt!81058 (minValue!2907 newMap!16))) lt!81124)))

(declare-fun b!154396 () Bool)

(declare-fun res!72913 () Bool)

(assert (=> b!154396 (=> (not res!72913) (not e!100888))))

(assert (=> b!154396 (= res!72913 (= (getValueByKey!182 (toList!923 lt!81124) (_1!1413 (tuple2!2807 lt!81058 (minValue!2907 newMap!16)))) (Some!187 (_2!1413 (tuple2!2807 lt!81058 (minValue!2907 newMap!16))))))))

(declare-fun b!154397 () Bool)

(assert (=> b!154397 (= e!100888 (contains!962 (toList!923 lt!81124) (tuple2!2807 lt!81058 (minValue!2907 newMap!16))))))

(assert (= (and d!50639 res!72912) b!154396))

(assert (= (and b!154396 res!72913) b!154397))

(declare-fun m!188339 () Bool)

(assert (=> d!50639 m!188339))

(declare-fun m!188341 () Bool)

(assert (=> d!50639 m!188341))

(declare-fun m!188343 () Bool)

(assert (=> d!50639 m!188343))

(declare-fun m!188345 () Bool)

(assert (=> d!50639 m!188345))

(declare-fun m!188347 () Bool)

(assert (=> b!154396 m!188347))

(declare-fun m!188349 () Bool)

(assert (=> b!154397 m!188349))

(assert (=> b!154286 d!50639))

(declare-fun d!50641 () Bool)

(declare-fun e!100889 () Bool)

(assert (=> d!50641 e!100889))

(declare-fun res!72914 () Bool)

(assert (=> d!50641 (=> (not res!72914) (not e!100889))))

(declare-fun lt!81128 () ListLongMap!1815)

(assert (=> d!50641 (= res!72914 (contains!961 lt!81128 (_1!1413 (tuple2!2807 lt!81069 (zeroValue!2907 newMap!16)))))))

(declare-fun lt!81127 () List!1823)

(assert (=> d!50641 (= lt!81128 (ListLongMap!1816 lt!81127))))

(declare-fun lt!81129 () Unit!4897)

(declare-fun lt!81126 () Unit!4897)

(assert (=> d!50641 (= lt!81129 lt!81126)))

(assert (=> d!50641 (= (getValueByKey!182 lt!81127 (_1!1413 (tuple2!2807 lt!81069 (zeroValue!2907 newMap!16)))) (Some!187 (_2!1413 (tuple2!2807 lt!81069 (zeroValue!2907 newMap!16)))))))

(assert (=> d!50641 (= lt!81126 (lemmaContainsTupThenGetReturnValue!97 lt!81127 (_1!1413 (tuple2!2807 lt!81069 (zeroValue!2907 newMap!16))) (_2!1413 (tuple2!2807 lt!81069 (zeroValue!2907 newMap!16)))))))

(assert (=> d!50641 (= lt!81127 (insertStrictlySorted!99 (toList!923 lt!81064) (_1!1413 (tuple2!2807 lt!81069 (zeroValue!2907 newMap!16))) (_2!1413 (tuple2!2807 lt!81069 (zeroValue!2907 newMap!16)))))))

(assert (=> d!50641 (= (+!187 lt!81064 (tuple2!2807 lt!81069 (zeroValue!2907 newMap!16))) lt!81128)))

(declare-fun b!154398 () Bool)

(declare-fun res!72915 () Bool)

(assert (=> b!154398 (=> (not res!72915) (not e!100889))))

(assert (=> b!154398 (= res!72915 (= (getValueByKey!182 (toList!923 lt!81128) (_1!1413 (tuple2!2807 lt!81069 (zeroValue!2907 newMap!16)))) (Some!187 (_2!1413 (tuple2!2807 lt!81069 (zeroValue!2907 newMap!16))))))))

(declare-fun b!154399 () Bool)

(assert (=> b!154399 (= e!100889 (contains!962 (toList!923 lt!81128) (tuple2!2807 lt!81069 (zeroValue!2907 newMap!16))))))

(assert (= (and d!50641 res!72914) b!154398))

(assert (= (and b!154398 res!72915) b!154399))

(declare-fun m!188351 () Bool)

(assert (=> d!50641 m!188351))

(declare-fun m!188353 () Bool)

(assert (=> d!50641 m!188353))

(declare-fun m!188355 () Bool)

(assert (=> d!50641 m!188355))

(declare-fun m!188357 () Bool)

(assert (=> d!50641 m!188357))

(declare-fun m!188359 () Bool)

(assert (=> b!154398 m!188359))

(declare-fun m!188361 () Bool)

(assert (=> b!154399 m!188361))

(assert (=> b!154286 d!50641))

(declare-fun d!50643 () Bool)

(assert (=> d!50643 (= (apply!128 (+!187 lt!81056 (tuple2!2807 lt!81067 (zeroValue!2907 newMap!16))) lt!81061) (apply!128 lt!81056 lt!81061))))

(declare-fun lt!81130 () Unit!4897)

(assert (=> d!50643 (= lt!81130 (choose!925 lt!81056 lt!81067 (zeroValue!2907 newMap!16) lt!81061))))

(declare-fun e!100890 () Bool)

(assert (=> d!50643 e!100890))

(declare-fun res!72916 () Bool)

(assert (=> d!50643 (=> (not res!72916) (not e!100890))))

(assert (=> d!50643 (= res!72916 (contains!961 lt!81056 lt!81061))))

(assert (=> d!50643 (= (addApplyDifferent!104 lt!81056 lt!81067 (zeroValue!2907 newMap!16) lt!81061) lt!81130)))

(declare-fun b!154400 () Bool)

(assert (=> b!154400 (= e!100890 (not (= lt!81061 lt!81067)))))

(assert (= (and d!50643 res!72916) b!154400))

(assert (=> d!50643 m!188165))

(assert (=> d!50643 m!188167))

(declare-fun m!188363 () Bool)

(assert (=> d!50643 m!188363))

(declare-fun m!188365 () Bool)

(assert (=> d!50643 m!188365))

(assert (=> d!50643 m!188165))

(assert (=> d!50643 m!188179))

(assert (=> b!154286 d!50643))

(declare-fun d!50645 () Bool)

(declare-fun e!100891 () Bool)

(assert (=> d!50645 e!100891))

(declare-fun res!72917 () Bool)

(assert (=> d!50645 (=> (not res!72917) (not e!100891))))

(declare-fun lt!81133 () ListLongMap!1815)

(assert (=> d!50645 (= res!72917 (contains!961 lt!81133 (_1!1413 (tuple2!2807 lt!81063 (minValue!2907 newMap!16)))))))

(declare-fun lt!81132 () List!1823)

(assert (=> d!50645 (= lt!81133 (ListLongMap!1816 lt!81132))))

(declare-fun lt!81134 () Unit!4897)

(declare-fun lt!81131 () Unit!4897)

(assert (=> d!50645 (= lt!81134 lt!81131)))

(assert (=> d!50645 (= (getValueByKey!182 lt!81132 (_1!1413 (tuple2!2807 lt!81063 (minValue!2907 newMap!16)))) (Some!187 (_2!1413 (tuple2!2807 lt!81063 (minValue!2907 newMap!16)))))))

(assert (=> d!50645 (= lt!81131 (lemmaContainsTupThenGetReturnValue!97 lt!81132 (_1!1413 (tuple2!2807 lt!81063 (minValue!2907 newMap!16))) (_2!1413 (tuple2!2807 lt!81063 (minValue!2907 newMap!16)))))))

(assert (=> d!50645 (= lt!81132 (insertStrictlySorted!99 (toList!923 lt!81074) (_1!1413 (tuple2!2807 lt!81063 (minValue!2907 newMap!16))) (_2!1413 (tuple2!2807 lt!81063 (minValue!2907 newMap!16)))))))

(assert (=> d!50645 (= (+!187 lt!81074 (tuple2!2807 lt!81063 (minValue!2907 newMap!16))) lt!81133)))

(declare-fun b!154401 () Bool)

(declare-fun res!72918 () Bool)

(assert (=> b!154401 (=> (not res!72918) (not e!100891))))

(assert (=> b!154401 (= res!72918 (= (getValueByKey!182 (toList!923 lt!81133) (_1!1413 (tuple2!2807 lt!81063 (minValue!2907 newMap!16)))) (Some!187 (_2!1413 (tuple2!2807 lt!81063 (minValue!2907 newMap!16))))))))

(declare-fun b!154402 () Bool)

(assert (=> b!154402 (= e!100891 (contains!962 (toList!923 lt!81133) (tuple2!2807 lt!81063 (minValue!2907 newMap!16))))))

(assert (= (and d!50645 res!72917) b!154401))

(assert (= (and b!154401 res!72918) b!154402))

(declare-fun m!188367 () Bool)

(assert (=> d!50645 m!188367))

(declare-fun m!188369 () Bool)

(assert (=> d!50645 m!188369))

(declare-fun m!188371 () Bool)

(assert (=> d!50645 m!188371))

(declare-fun m!188373 () Bool)

(assert (=> d!50645 m!188373))

(declare-fun m!188375 () Bool)

(assert (=> b!154401 m!188375))

(declare-fun m!188377 () Bool)

(assert (=> b!154402 m!188377))

(assert (=> b!154286 d!50645))

(declare-fun d!50647 () Bool)

(assert (=> d!50647 (= (apply!128 lt!81074 lt!81065) (get!1610 (getValueByKey!182 (toList!923 lt!81074) lt!81065)))))

(declare-fun bs!6535 () Bool)

(assert (= bs!6535 d!50647))

(declare-fun m!188379 () Bool)

(assert (=> bs!6535 m!188379))

(assert (=> bs!6535 m!188379))

(declare-fun m!188381 () Bool)

(assert (=> bs!6535 m!188381))

(assert (=> b!154286 d!50647))

(declare-fun d!50649 () Bool)

(assert (=> d!50649 (= (apply!128 (+!187 lt!81056 (tuple2!2807 lt!81067 (zeroValue!2907 newMap!16))) lt!81061) (get!1610 (getValueByKey!182 (toList!923 (+!187 lt!81056 (tuple2!2807 lt!81067 (zeroValue!2907 newMap!16)))) lt!81061)))))

(declare-fun bs!6536 () Bool)

(assert (= bs!6536 d!50649))

(declare-fun m!188383 () Bool)

(assert (=> bs!6536 m!188383))

(assert (=> bs!6536 m!188383))

(declare-fun m!188385 () Bool)

(assert (=> bs!6536 m!188385))

(assert (=> b!154286 d!50649))

(declare-fun d!50651 () Bool)

(assert (=> d!50651 (= (apply!128 (+!187 lt!81074 (tuple2!2807 lt!81063 (minValue!2907 newMap!16))) lt!81065) (apply!128 lt!81074 lt!81065))))

(declare-fun lt!81135 () Unit!4897)

(assert (=> d!50651 (= lt!81135 (choose!925 lt!81074 lt!81063 (minValue!2907 newMap!16) lt!81065))))

(declare-fun e!100892 () Bool)

(assert (=> d!50651 e!100892))

(declare-fun res!72919 () Bool)

(assert (=> d!50651 (=> (not res!72919) (not e!100892))))

(assert (=> d!50651 (= res!72919 (contains!961 lt!81074 lt!81065))))

(assert (=> d!50651 (= (addApplyDifferent!104 lt!81074 lt!81063 (minValue!2907 newMap!16) lt!81065) lt!81135)))

(declare-fun b!154403 () Bool)

(assert (=> b!154403 (= e!100892 (not (= lt!81065 lt!81063)))))

(assert (= (and d!50651 res!72919) b!154403))

(assert (=> d!50651 m!188159))

(assert (=> d!50651 m!188161))

(declare-fun m!188387 () Bool)

(assert (=> d!50651 m!188387))

(declare-fun m!188389 () Bool)

(assert (=> d!50651 m!188389))

(assert (=> d!50651 m!188159))

(assert (=> d!50651 m!188163))

(assert (=> b!154286 d!50651))

(declare-fun d!50653 () Bool)

(assert (=> d!50653 (= (apply!128 (+!187 lt!81074 (tuple2!2807 lt!81063 (minValue!2907 newMap!16))) lt!81065) (get!1610 (getValueByKey!182 (toList!923 (+!187 lt!81074 (tuple2!2807 lt!81063 (minValue!2907 newMap!16)))) lt!81065)))))

(declare-fun bs!6537 () Bool)

(assert (= bs!6537 d!50653))

(declare-fun m!188391 () Bool)

(assert (=> bs!6537 m!188391))

(assert (=> bs!6537 m!188391))

(declare-fun m!188393 () Bool)

(assert (=> bs!6537 m!188393))

(assert (=> b!154286 d!50653))

(declare-fun d!50655 () Bool)

(assert (=> d!50655 (= (apply!128 lt!81056 lt!81061) (get!1610 (getValueByKey!182 (toList!923 lt!81056) lt!81061)))))

(declare-fun bs!6538 () Bool)

(assert (= bs!6538 d!50655))

(declare-fun m!188395 () Bool)

(assert (=> bs!6538 m!188395))

(assert (=> bs!6538 m!188395))

(declare-fun m!188397 () Bool)

(assert (=> bs!6538 m!188397))

(assert (=> b!154286 d!50655))

(declare-fun d!50657 () Bool)

(declare-fun e!100893 () Bool)

(assert (=> d!50657 e!100893))

(declare-fun res!72920 () Bool)

(assert (=> d!50657 (=> res!72920 e!100893)))

(declare-fun lt!81137 () Bool)

(assert (=> d!50657 (= res!72920 (not lt!81137))))

(declare-fun lt!81136 () Bool)

(assert (=> d!50657 (= lt!81137 lt!81136)))

(declare-fun lt!81139 () Unit!4897)

(declare-fun e!100894 () Unit!4897)

(assert (=> d!50657 (= lt!81139 e!100894)))

(declare-fun c!29567 () Bool)

(assert (=> d!50657 (= c!29567 lt!81136)))

(assert (=> d!50657 (= lt!81136 (containsKey!186 (toList!923 (+!187 lt!81064 (tuple2!2807 lt!81069 (zeroValue!2907 newMap!16)))) lt!81076))))

(assert (=> d!50657 (= (contains!961 (+!187 lt!81064 (tuple2!2807 lt!81069 (zeroValue!2907 newMap!16))) lt!81076) lt!81137)))

(declare-fun b!154404 () Bool)

(declare-fun lt!81138 () Unit!4897)

(assert (=> b!154404 (= e!100894 lt!81138)))

(assert (=> b!154404 (= lt!81138 (lemmaContainsKeyImpliesGetValueByKeyDefined!135 (toList!923 (+!187 lt!81064 (tuple2!2807 lt!81069 (zeroValue!2907 newMap!16)))) lt!81076))))

(assert (=> b!154404 (isDefined!136 (getValueByKey!182 (toList!923 (+!187 lt!81064 (tuple2!2807 lt!81069 (zeroValue!2907 newMap!16)))) lt!81076))))

(declare-fun b!154405 () Bool)

(declare-fun Unit!4909 () Unit!4897)

(assert (=> b!154405 (= e!100894 Unit!4909)))

(declare-fun b!154406 () Bool)

(assert (=> b!154406 (= e!100893 (isDefined!136 (getValueByKey!182 (toList!923 (+!187 lt!81064 (tuple2!2807 lt!81069 (zeroValue!2907 newMap!16)))) lt!81076)))))

(assert (= (and d!50657 c!29567) b!154404))

(assert (= (and d!50657 (not c!29567)) b!154405))

(assert (= (and d!50657 (not res!72920)) b!154406))

(declare-fun m!188399 () Bool)

(assert (=> d!50657 m!188399))

(declare-fun m!188401 () Bool)

(assert (=> b!154404 m!188401))

(declare-fun m!188403 () Bool)

(assert (=> b!154404 m!188403))

(assert (=> b!154404 m!188403))

(declare-fun m!188405 () Bool)

(assert (=> b!154404 m!188405))

(assert (=> b!154406 m!188403))

(assert (=> b!154406 m!188403))

(assert (=> b!154406 m!188405))

(assert (=> b!154286 d!50657))

(declare-fun d!50659 () Bool)

(assert (=> d!50659 (= (apply!128 (+!187 lt!81068 (tuple2!2807 lt!81058 (minValue!2907 newMap!16))) lt!81073) (apply!128 lt!81068 lt!81073))))

(declare-fun lt!81140 () Unit!4897)

(assert (=> d!50659 (= lt!81140 (choose!925 lt!81068 lt!81058 (minValue!2907 newMap!16) lt!81073))))

(declare-fun e!100895 () Bool)

(assert (=> d!50659 e!100895))

(declare-fun res!72921 () Bool)

(assert (=> d!50659 (=> (not res!72921) (not e!100895))))

(assert (=> d!50659 (= res!72921 (contains!961 lt!81068 lt!81073))))

(assert (=> d!50659 (= (addApplyDifferent!104 lt!81068 lt!81058 (minValue!2907 newMap!16) lt!81073) lt!81140)))

(declare-fun b!154407 () Bool)

(assert (=> b!154407 (= e!100895 (not (= lt!81073 lt!81058)))))

(assert (= (and d!50659 res!72921) b!154407))

(assert (=> d!50659 m!188175))

(assert (=> d!50659 m!188177))

(declare-fun m!188407 () Bool)

(assert (=> d!50659 m!188407))

(declare-fun m!188409 () Bool)

(assert (=> d!50659 m!188409))

(assert (=> d!50659 m!188175))

(assert (=> d!50659 m!188185))

(assert (=> b!154286 d!50659))

(assert (=> b!154286 d!50585))

(declare-fun d!50661 () Bool)

(assert (=> d!50661 (= (get!1610 (getValueByKey!182 (toList!923 (+!187 lt!80942 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!80933)) (v!3418 (getValueByKey!182 (toList!923 (+!187 lt!80942 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!80933)))))

(assert (=> d!50543 d!50661))

(declare-fun c!29568 () Bool)

(declare-fun d!50663 () Bool)

(assert (=> d!50663 (= c!29568 (and ((_ is Cons!1819) (toList!923 (+!187 lt!80942 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))) (= (_1!1413 (h!2428 (toList!923 (+!187 lt!80942 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))) lt!80933)))))

(declare-fun e!100896 () Option!188)

(assert (=> d!50663 (= (getValueByKey!182 (toList!923 (+!187 lt!80942 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!80933) e!100896)))

(declare-fun b!154410 () Bool)

(declare-fun e!100897 () Option!188)

(assert (=> b!154410 (= e!100897 (getValueByKey!182 (t!6625 (toList!923 (+!187 lt!80942 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))) lt!80933))))

(declare-fun b!154409 () Bool)

(assert (=> b!154409 (= e!100896 e!100897)))

(declare-fun c!29569 () Bool)

(assert (=> b!154409 (= c!29569 (and ((_ is Cons!1819) (toList!923 (+!187 lt!80942 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))) (not (= (_1!1413 (h!2428 (toList!923 (+!187 lt!80942 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))) lt!80933))))))

(declare-fun b!154408 () Bool)

(assert (=> b!154408 (= e!100896 (Some!187 (_2!1413 (h!2428 (toList!923 (+!187 lt!80942 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))))

(declare-fun b!154411 () Bool)

(assert (=> b!154411 (= e!100897 None!186)))

(assert (= (and d!50663 c!29568) b!154408))

(assert (= (and d!50663 (not c!29568)) b!154409))

(assert (= (and b!154409 c!29569) b!154410))

(assert (= (and b!154409 (not c!29569)) b!154411))

(declare-fun m!188411 () Bool)

(assert (=> b!154410 m!188411))

(assert (=> d!50543 d!50663))

(declare-fun d!50665 () Bool)

(declare-fun e!100898 () Bool)

(assert (=> d!50665 e!100898))

(declare-fun res!72922 () Bool)

(assert (=> d!50665 (=> res!72922 e!100898)))

(declare-fun lt!81142 () Bool)

(assert (=> d!50665 (= res!72922 (not lt!81142))))

(declare-fun lt!81141 () Bool)

(assert (=> d!50665 (= lt!81142 lt!81141)))

(declare-fun lt!81144 () Unit!4897)

(declare-fun e!100899 () Unit!4897)

(assert (=> d!50665 (= lt!81144 e!100899)))

(declare-fun c!29570 () Bool)

(assert (=> d!50665 (= c!29570 lt!81141)))

(assert (=> d!50665 (= lt!81141 (containsKey!186 (toList!923 lt!81066) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!50665 (= (contains!961 lt!81066 #b1000000000000000000000000000000000000000000000000000000000000000) lt!81142)))

(declare-fun b!154412 () Bool)

(declare-fun lt!81143 () Unit!4897)

(assert (=> b!154412 (= e!100899 lt!81143)))

(assert (=> b!154412 (= lt!81143 (lemmaContainsKeyImpliesGetValueByKeyDefined!135 (toList!923 lt!81066) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!154412 (isDefined!136 (getValueByKey!182 (toList!923 lt!81066) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!154413 () Bool)

(declare-fun Unit!4910 () Unit!4897)

(assert (=> b!154413 (= e!100899 Unit!4910)))

(declare-fun b!154414 () Bool)

(assert (=> b!154414 (= e!100898 (isDefined!136 (getValueByKey!182 (toList!923 lt!81066) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!50665 c!29570) b!154412))

(assert (= (and d!50665 (not c!29570)) b!154413))

(assert (= (and d!50665 (not res!72922)) b!154414))

(declare-fun m!188413 () Bool)

(assert (=> d!50665 m!188413))

(declare-fun m!188415 () Bool)

(assert (=> b!154412 m!188415))

(declare-fun m!188417 () Bool)

(assert (=> b!154412 m!188417))

(assert (=> b!154412 m!188417))

(declare-fun m!188419 () Bool)

(assert (=> b!154412 m!188419))

(assert (=> b!154414 m!188417))

(assert (=> b!154414 m!188417))

(assert (=> b!154414 m!188419))

(assert (=> bm!17174 d!50665))

(assert (=> d!50521 d!50543))

(assert (=> d!50521 d!50525))

(declare-fun d!50667 () Bool)

(declare-fun e!100900 () Bool)

(assert (=> d!50667 e!100900))

(declare-fun res!72923 () Bool)

(assert (=> d!50667 (=> res!72923 e!100900)))

(declare-fun lt!81146 () Bool)

(assert (=> d!50667 (= res!72923 (not lt!81146))))

(declare-fun lt!81145 () Bool)

(assert (=> d!50667 (= lt!81146 lt!81145)))

(declare-fun lt!81148 () Unit!4897)

(declare-fun e!100901 () Unit!4897)

(assert (=> d!50667 (= lt!81148 e!100901)))

(declare-fun c!29571 () Bool)

(assert (=> d!50667 (= c!29571 lt!81145)))

(assert (=> d!50667 (= lt!81145 (containsKey!186 (toList!923 lt!80942) lt!80933))))

(assert (=> d!50667 (= (contains!961 lt!80942 lt!80933) lt!81146)))

(declare-fun b!154415 () Bool)

(declare-fun lt!81147 () Unit!4897)

(assert (=> b!154415 (= e!100901 lt!81147)))

(assert (=> b!154415 (= lt!81147 (lemmaContainsKeyImpliesGetValueByKeyDefined!135 (toList!923 lt!80942) lt!80933))))

(assert (=> b!154415 (isDefined!136 (getValueByKey!182 (toList!923 lt!80942) lt!80933))))

(declare-fun b!154416 () Bool)

(declare-fun Unit!4911 () Unit!4897)

(assert (=> b!154416 (= e!100901 Unit!4911)))

(declare-fun b!154417 () Bool)

(assert (=> b!154417 (= e!100900 (isDefined!136 (getValueByKey!182 (toList!923 lt!80942) lt!80933)))))

(assert (= (and d!50667 c!29571) b!154415))

(assert (= (and d!50667 (not c!29571)) b!154416))

(assert (= (and d!50667 (not res!72923)) b!154417))

(declare-fun m!188421 () Bool)

(assert (=> d!50667 m!188421))

(declare-fun m!188423 () Bool)

(assert (=> b!154415 m!188423))

(assert (=> b!154415 m!187935))

(assert (=> b!154415 m!187935))

(declare-fun m!188425 () Bool)

(assert (=> b!154415 m!188425))

(assert (=> b!154417 m!187935))

(assert (=> b!154417 m!187935))

(assert (=> b!154417 m!188425))

(assert (=> d!50521 d!50667))

(assert (=> d!50521 d!50527))

(declare-fun d!50669 () Bool)

(assert (=> d!50669 (= (apply!128 (+!187 lt!80942 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!80933) (apply!128 lt!80942 lt!80933))))

(assert (=> d!50669 true))

(declare-fun _$34!1039 () Unit!4897)

(assert (=> d!50669 (= (choose!925 lt!80942 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992))) lt!80933) _$34!1039)))

(declare-fun bs!6539 () Bool)

(assert (= bs!6539 d!50669))

(assert (=> bs!6539 m!187847))

(assert (=> bs!6539 m!187847))

(assert (=> bs!6539 m!187849))

(assert (=> bs!6539 m!187851))

(assert (=> d!50521 d!50669))

(declare-fun b!154419 () Bool)

(declare-fun lt!81154 () ListLongMap!1815)

(declare-fun e!100904 () Bool)

(assert (=> b!154419 (= e!100904 (= lt!81154 (getCurrentListMapNoExtraKeys!158 (_keys!4837 (v!3416 (underlying!524 thiss!992))) (_values!3047 (v!3416 (underlying!524 thiss!992))) (mask!7468 (v!3416 (underlying!524 thiss!992))) (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) (zeroValue!2907 (v!3416 (underlying!524 thiss!992))) (minValue!2907 (v!3416 (underlying!524 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))))))))

(declare-fun b!154420 () Bool)

(declare-fun e!100906 () Bool)

(assert (=> b!154420 (= e!100906 e!100904)))

(declare-fun c!29573 () Bool)

(assert (=> b!154420 (= c!29573 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992))))))))

(declare-fun b!154421 () Bool)

(declare-fun e!100903 () Bool)

(assert (=> b!154421 (= e!100903 e!100906)))

(declare-fun c!29572 () Bool)

(declare-fun e!100908 () Bool)

(assert (=> b!154421 (= c!29572 e!100908)))

(declare-fun res!72925 () Bool)

(assert (=> b!154421 (=> (not res!72925) (not e!100908))))

(assert (=> b!154421 (= res!72925 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992))))))))

(declare-fun b!154423 () Bool)

(declare-fun res!72924 () Bool)

(assert (=> b!154423 (=> (not res!72924) (not e!100903))))

(assert (=> b!154423 (= res!72924 (not (contains!961 lt!81154 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!154424 () Bool)

(declare-fun e!100902 () ListLongMap!1815)

(declare-fun e!100905 () ListLongMap!1815)

(assert (=> b!154424 (= e!100902 e!100905)))

(declare-fun c!29574 () Bool)

(assert (=> b!154424 (= c!29574 (validKeyInArray!0 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(declare-fun b!154425 () Bool)

(assert (=> b!154425 (= e!100904 (isEmpty!435 lt!81154))))

(declare-fun bm!17181 () Bool)

(declare-fun call!17184 () ListLongMap!1815)

(assert (=> bm!17181 (= call!17184 (getCurrentListMapNoExtraKeys!158 (_keys!4837 (v!3416 (underlying!524 thiss!992))) (_values!3047 (v!3416 (underlying!524 thiss!992))) (mask!7468 (v!3416 (underlying!524 thiss!992))) (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) (zeroValue!2907 (v!3416 (underlying!524 thiss!992))) (minValue!2907 (v!3416 (underlying!524 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!3064 (v!3416 (underlying!524 thiss!992)))))))

(declare-fun b!154426 () Bool)

(assert (=> b!154426 (= e!100908 (validKeyInArray!0 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(assert (=> b!154426 (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun d!50671 () Bool)

(assert (=> d!50671 e!100903))

(declare-fun res!72926 () Bool)

(assert (=> d!50671 (=> (not res!72926) (not e!100903))))

(assert (=> d!50671 (= res!72926 (not (contains!961 lt!81154 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!50671 (= lt!81154 e!100902)))

(declare-fun c!29575 () Bool)

(assert (=> d!50671 (= c!29575 (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992))))))))

(assert (=> d!50671 (validMask!0 (mask!7468 (v!3416 (underlying!524 thiss!992))))))

(assert (=> d!50671 (= (getCurrentListMapNoExtraKeys!158 (_keys!4837 (v!3416 (underlying!524 thiss!992))) (_values!3047 (v!3416 (underlying!524 thiss!992))) (mask!7468 (v!3416 (underlying!524 thiss!992))) (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) (zeroValue!2907 (v!3416 (underlying!524 thiss!992))) (minValue!2907 (v!3416 (underlying!524 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!3064 (v!3416 (underlying!524 thiss!992)))) lt!81154)))

(declare-fun b!154422 () Bool)

(assert (=> b!154422 (= e!100902 (ListLongMap!1816 Nil!1820))))

(declare-fun b!154427 () Bool)

(declare-fun lt!81152 () Unit!4897)

(declare-fun lt!81150 () Unit!4897)

(assert (=> b!154427 (= lt!81152 lt!81150)))

(declare-fun lt!81149 () (_ BitVec 64))

(declare-fun lt!81151 () ListLongMap!1815)

(declare-fun lt!81153 () (_ BitVec 64))

(declare-fun lt!81155 () V!3683)

(assert (=> b!154427 (not (contains!961 (+!187 lt!81151 (tuple2!2807 lt!81153 lt!81155)) lt!81149))))

(assert (=> b!154427 (= lt!81150 (addStillNotContains!72 lt!81151 lt!81153 lt!81155 lt!81149))))

(assert (=> b!154427 (= lt!81149 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!154427 (= lt!81155 (get!1609 (select (arr!2411 (_values!3047 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (dynLambda!466 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!154427 (= lt!81153 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(assert (=> b!154427 (= lt!81151 call!17184)))

(assert (=> b!154427 (= e!100905 (+!187 call!17184 (tuple2!2807 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (get!1609 (select (arr!2411 (_values!3047 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (dynLambda!466 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!154428 () Bool)

(assert (=> b!154428 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992))))))))

(assert (=> b!154428 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2688 (_values!3047 (v!3416 (underlying!524 thiss!992))))))))

(declare-fun e!100907 () Bool)

(assert (=> b!154428 (= e!100907 (= (apply!128 lt!81154 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))) (get!1609 (select (arr!2411 (_values!3047 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (dynLambda!466 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!154429 () Bool)

(assert (=> b!154429 (= e!100906 e!100907)))

(assert (=> b!154429 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992))))))))

(declare-fun res!72927 () Bool)

(assert (=> b!154429 (= res!72927 (contains!961 lt!81154 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(assert (=> b!154429 (=> (not res!72927) (not e!100907))))

(declare-fun b!154430 () Bool)

(assert (=> b!154430 (= e!100905 call!17184)))

(assert (= (and d!50671 c!29575) b!154422))

(assert (= (and d!50671 (not c!29575)) b!154424))

(assert (= (and b!154424 c!29574) b!154427))

(assert (= (and b!154424 (not c!29574)) b!154430))

(assert (= (or b!154427 b!154430) bm!17181))

(assert (= (and d!50671 res!72926) b!154423))

(assert (= (and b!154423 res!72924) b!154421))

(assert (= (and b!154421 res!72925) b!154426))

(assert (= (and b!154421 c!29572) b!154429))

(assert (= (and b!154421 (not c!29572)) b!154420))

(assert (= (and b!154429 res!72927) b!154428))

(assert (= (and b!154420 c!29573) b!154419))

(assert (= (and b!154420 (not c!29573)) b!154425))

(declare-fun b_lambda!6897 () Bool)

(assert (=> (not b_lambda!6897) (not b!154427)))

(assert (=> b!154427 t!6627))

(declare-fun b_and!9645 () Bool)

(assert (= b_and!9641 (and (=> t!6627 result!4497) b_and!9645)))

(assert (=> b!154427 t!6629))

(declare-fun b_and!9647 () Bool)

(assert (= b_and!9643 (and (=> t!6629 result!4501) b_and!9647)))

(declare-fun b_lambda!6899 () Bool)

(assert (=> (not b_lambda!6899) (not b!154428)))

(assert (=> b!154428 t!6627))

(declare-fun b_and!9649 () Bool)

(assert (= b_and!9645 (and (=> t!6627 result!4497) b_and!9649)))

(assert (=> b!154428 t!6629))

(declare-fun b_and!9651 () Bool)

(assert (= b_and!9647 (and (=> t!6629 result!4501) b_and!9651)))

(declare-fun m!188427 () Bool)

(assert (=> b!154428 m!188427))

(assert (=> b!154428 m!188427))

(assert (=> b!154428 m!187819))

(declare-fun m!188429 () Bool)

(assert (=> b!154428 m!188429))

(declare-fun m!188431 () Bool)

(assert (=> b!154428 m!188431))

(declare-fun m!188433 () Bool)

(assert (=> b!154428 m!188433))

(assert (=> b!154428 m!188431))

(assert (=> b!154428 m!187819))

(declare-fun m!188435 () Bool)

(assert (=> bm!17181 m!188435))

(declare-fun m!188437 () Bool)

(assert (=> b!154423 m!188437))

(assert (=> b!154426 m!188431))

(assert (=> b!154426 m!188431))

(declare-fun m!188439 () Bool)

(assert (=> b!154426 m!188439))

(declare-fun m!188441 () Bool)

(assert (=> b!154425 m!188441))

(assert (=> b!154419 m!188435))

(assert (=> b!154424 m!188431))

(assert (=> b!154424 m!188431))

(assert (=> b!154424 m!188439))

(assert (=> b!154429 m!188431))

(assert (=> b!154429 m!188431))

(declare-fun m!188443 () Bool)

(assert (=> b!154429 m!188443))

(declare-fun m!188445 () Bool)

(assert (=> b!154427 m!188445))

(declare-fun m!188447 () Bool)

(assert (=> b!154427 m!188447))

(assert (=> b!154427 m!188427))

(assert (=> b!154427 m!187819))

(assert (=> b!154427 m!188429))

(declare-fun m!188449 () Bool)

(assert (=> b!154427 m!188449))

(assert (=> b!154427 m!188431))

(assert (=> b!154427 m!188445))

(assert (=> b!154427 m!187819))

(declare-fun m!188451 () Bool)

(assert (=> b!154427 m!188451))

(assert (=> b!154427 m!188427))

(declare-fun m!188453 () Bool)

(assert (=> d!50671 m!188453))

(assert (=> d!50671 m!187843))

(assert (=> bm!17154 d!50671))

(declare-fun d!50673 () Bool)

(assert (=> d!50673 (= (validKeyInArray!0 (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000)) (and (not (= (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!154274 d!50673))

(declare-fun b!154431 () Bool)

(declare-fun e!100910 () Bool)

(declare-fun call!17185 () Bool)

(assert (=> b!154431 (= e!100910 call!17185)))

(declare-fun b!154432 () Bool)

(declare-fun e!100911 () Bool)

(assert (=> b!154432 (= e!100911 e!100910)))

(declare-fun c!29576 () Bool)

(assert (=> b!154432 (= c!29576 (validKeyInArray!0 (select (arr!2410 (_keys!4837 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!154433 () Bool)

(declare-fun e!100909 () Bool)

(assert (=> b!154433 (= e!100910 e!100909)))

(declare-fun lt!81156 () (_ BitVec 64))

(assert (=> b!154433 (= lt!81156 (select (arr!2410 (_keys!4837 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!81158 () Unit!4897)

(assert (=> b!154433 (= lt!81158 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4837 newMap!16) lt!81156 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!154433 (arrayContainsKey!0 (_keys!4837 newMap!16) lt!81156 #b00000000000000000000000000000000)))

(declare-fun lt!81157 () Unit!4897)

(assert (=> b!154433 (= lt!81157 lt!81158)))

(declare-fun res!72929 () Bool)

(assert (=> b!154433 (= res!72929 (= (seekEntryOrOpen!0 (select (arr!2410 (_keys!4837 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!4837 newMap!16) (mask!7468 newMap!16)) (Found!296 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!154433 (=> (not res!72929) (not e!100909))))

(declare-fun b!154434 () Bool)

(assert (=> b!154434 (= e!100909 call!17185)))

(declare-fun d!50675 () Bool)

(declare-fun res!72928 () Bool)

(assert (=> d!50675 (=> res!72928 e!100911)))

(assert (=> d!50675 (= res!72928 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2687 (_keys!4837 newMap!16))))))

(assert (=> d!50675 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4837 newMap!16) (mask!7468 newMap!16)) e!100911)))

(declare-fun bm!17182 () Bool)

(assert (=> bm!17182 (= call!17185 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!4837 newMap!16) (mask!7468 newMap!16)))))

(assert (= (and d!50675 (not res!72928)) b!154432))

(assert (= (and b!154432 c!29576) b!154433))

(assert (= (and b!154432 (not c!29576)) b!154431))

(assert (= (and b!154433 res!72929) b!154434))

(assert (= (or b!154434 b!154431) bm!17182))

(assert (=> b!154432 m!188247))

(assert (=> b!154432 m!188247))

(assert (=> b!154432 m!188251))

(assert (=> b!154433 m!188247))

(declare-fun m!188455 () Bool)

(assert (=> b!154433 m!188455))

(declare-fun m!188457 () Bool)

(assert (=> b!154433 m!188457))

(assert (=> b!154433 m!188247))

(declare-fun m!188459 () Bool)

(assert (=> b!154433 m!188459))

(declare-fun m!188461 () Bool)

(assert (=> bm!17182 m!188461))

(assert (=> bm!17177 d!50675))

(declare-fun d!50677 () Bool)

(assert (=> d!50677 (= (apply!128 lt!81029 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1610 (getValueByKey!182 (toList!923 lt!81029) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!6540 () Bool)

(assert (= bs!6540 d!50677))

(assert (=> bs!6540 m!188289))

(assert (=> bs!6540 m!188289))

(declare-fun m!188463 () Bool)

(assert (=> bs!6540 m!188463))

(assert (=> b!154227 d!50677))

(declare-fun lt!81159 () Bool)

(declare-fun d!50679 () Bool)

(assert (=> d!50679 (= lt!81159 (select (content!144 (toList!923 lt!81005)) (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))))

(declare-fun e!100913 () Bool)

(assert (=> d!50679 (= lt!81159 e!100913)))

(declare-fun res!72930 () Bool)

(assert (=> d!50679 (=> (not res!72930) (not e!100913))))

(assert (=> d!50679 (= res!72930 ((_ is Cons!1819) (toList!923 lt!81005)))))

(assert (=> d!50679 (= (contains!962 (toList!923 lt!81005) (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!81159)))

(declare-fun b!154435 () Bool)

(declare-fun e!100912 () Bool)

(assert (=> b!154435 (= e!100913 e!100912)))

(declare-fun res!72931 () Bool)

(assert (=> b!154435 (=> res!72931 e!100912)))

(assert (=> b!154435 (= res!72931 (= (h!2428 (toList!923 lt!81005)) (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))))

(declare-fun b!154436 () Bool)

(assert (=> b!154436 (= e!100912 (contains!962 (t!6625 (toList!923 lt!81005)) (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))))

(assert (= (and d!50679 res!72930) b!154435))

(assert (= (and b!154435 (not res!72931)) b!154436))

(declare-fun m!188465 () Bool)

(assert (=> d!50679 m!188465))

(declare-fun m!188467 () Bool)

(assert (=> d!50679 m!188467))

(declare-fun m!188469 () Bool)

(assert (=> b!154436 m!188469))

(assert (=> b!154196 d!50679))

(declare-fun d!50681 () Bool)

(assert (=> d!50681 (isDefined!136 (getValueByKey!182 (toList!923 lt!80934) (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun lt!81162 () Unit!4897)

(declare-fun choose!927 (List!1823 (_ BitVec 64)) Unit!4897)

(assert (=> d!50681 (= lt!81162 (choose!927 (toList!923 lt!80934) (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun e!100916 () Bool)

(assert (=> d!50681 e!100916))

(declare-fun res!72934 () Bool)

(assert (=> d!50681 (=> (not res!72934) (not e!100916))))

(declare-fun isStrictlySorted!325 (List!1823) Bool)

(assert (=> d!50681 (= res!72934 (isStrictlySorted!325 (toList!923 lt!80934)))))

(assert (=> d!50681 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!135 (toList!923 lt!80934) (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!81162)))

(declare-fun b!154439 () Bool)

(assert (=> b!154439 (= e!100916 (containsKey!186 (toList!923 lt!80934) (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (= (and d!50681 res!72934) b!154439))

(assert (=> d!50681 m!187823))

(assert (=> d!50681 m!187999))

(assert (=> d!50681 m!187999))

(assert (=> d!50681 m!188133))

(assert (=> d!50681 m!187823))

(declare-fun m!188471 () Bool)

(assert (=> d!50681 m!188471))

(declare-fun m!188473 () Bool)

(assert (=> d!50681 m!188473))

(assert (=> b!154439 m!187823))

(assert (=> b!154439 m!188129))

(assert (=> b!154277 d!50681))

(declare-fun d!50683 () Bool)

(assert (=> d!50683 (= (isDefined!136 (getValueByKey!182 (toList!923 lt!80934) (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))) (not (isEmpty!436 (getValueByKey!182 (toList!923 lt!80934) (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))))

(declare-fun bs!6541 () Bool)

(assert (= bs!6541 d!50683))

(assert (=> bs!6541 m!187999))

(declare-fun m!188475 () Bool)

(assert (=> bs!6541 m!188475))

(assert (=> b!154277 d!50683))

(declare-fun c!29577 () Bool)

(declare-fun d!50685 () Bool)

(assert (=> d!50685 (= c!29577 (and ((_ is Cons!1819) (toList!923 lt!80934)) (= (_1!1413 (h!2428 (toList!923 lt!80934))) (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun e!100917 () Option!188)

(assert (=> d!50685 (= (getValueByKey!182 (toList!923 lt!80934) (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) e!100917)))

(declare-fun e!100918 () Option!188)

(declare-fun b!154442 () Bool)

(assert (=> b!154442 (= e!100918 (getValueByKey!182 (t!6625 (toList!923 lt!80934)) (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!154441 () Bool)

(assert (=> b!154441 (= e!100917 e!100918)))

(declare-fun c!29578 () Bool)

(assert (=> b!154441 (= c!29578 (and ((_ is Cons!1819) (toList!923 lt!80934)) (not (= (_1!1413 (h!2428 (toList!923 lt!80934))) (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))))

(declare-fun b!154440 () Bool)

(assert (=> b!154440 (= e!100917 (Some!187 (_2!1413 (h!2428 (toList!923 lt!80934)))))))

(declare-fun b!154443 () Bool)

(assert (=> b!154443 (= e!100918 None!186)))

(assert (= (and d!50685 c!29577) b!154440))

(assert (= (and d!50685 (not c!29577)) b!154441))

(assert (= (and b!154441 c!29578) b!154442))

(assert (= (and b!154441 (not c!29578)) b!154443))

(assert (=> b!154442 m!187823))

(declare-fun m!188477 () Bool)

(assert (=> b!154442 m!188477))

(assert (=> b!154277 d!50685))

(declare-fun d!50687 () Bool)

(assert (=> d!50687 (= (size!2691 newMap!16) (bvadd (_size!673 newMap!16) (bvsdiv (bvadd (extraKeys!2805 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> b!154263 d!50687))

(declare-fun d!50689 () Bool)

(declare-fun e!100919 () Bool)

(assert (=> d!50689 e!100919))

(declare-fun res!72935 () Bool)

(assert (=> d!50689 (=> res!72935 e!100919)))

(declare-fun lt!81164 () Bool)

(assert (=> d!50689 (= res!72935 (not lt!81164))))

(declare-fun lt!81163 () Bool)

(assert (=> d!50689 (= lt!81164 lt!81163)))

(declare-fun lt!81166 () Unit!4897)

(declare-fun e!100920 () Unit!4897)

(assert (=> d!50689 (= lt!81166 e!100920)))

(declare-fun c!29579 () Bool)

(assert (=> d!50689 (= c!29579 lt!81163)))

(assert (=> d!50689 (= lt!81163 (containsKey!186 (toList!923 lt!80985) (_1!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (=> d!50689 (= (contains!961 lt!80985 (_1!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!81164)))

(declare-fun b!154444 () Bool)

(declare-fun lt!81165 () Unit!4897)

(assert (=> b!154444 (= e!100920 lt!81165)))

(assert (=> b!154444 (= lt!81165 (lemmaContainsKeyImpliesGetValueByKeyDefined!135 (toList!923 lt!80985) (_1!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (=> b!154444 (isDefined!136 (getValueByKey!182 (toList!923 lt!80985) (_1!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun b!154445 () Bool)

(declare-fun Unit!4912 () Unit!4897)

(assert (=> b!154445 (= e!100920 Unit!4912)))

(declare-fun b!154446 () Bool)

(assert (=> b!154446 (= e!100919 (isDefined!136 (getValueByKey!182 (toList!923 lt!80985) (_1!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(assert (= (and d!50689 c!29579) b!154444))

(assert (= (and d!50689 (not c!29579)) b!154445))

(assert (= (and d!50689 (not res!72935)) b!154446))

(declare-fun m!188479 () Bool)

(assert (=> d!50689 m!188479))

(declare-fun m!188481 () Bool)

(assert (=> b!154444 m!188481))

(assert (=> b!154444 m!187951))

(assert (=> b!154444 m!187951))

(declare-fun m!188483 () Bool)

(assert (=> b!154444 m!188483))

(assert (=> b!154446 m!187951))

(assert (=> b!154446 m!187951))

(assert (=> b!154446 m!188483))

(assert (=> d!50531 d!50689))

(declare-fun d!50691 () Bool)

(declare-fun c!29580 () Bool)

(assert (=> d!50691 (= c!29580 (and ((_ is Cons!1819) lt!80984) (= (_1!1413 (h!2428 lt!80984)) (_1!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun e!100921 () Option!188)

(assert (=> d!50691 (= (getValueByKey!182 lt!80984 (_1!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) e!100921)))

(declare-fun e!100922 () Option!188)

(declare-fun b!154449 () Bool)

(assert (=> b!154449 (= e!100922 (getValueByKey!182 (t!6625 lt!80984) (_1!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun b!154448 () Bool)

(assert (=> b!154448 (= e!100921 e!100922)))

(declare-fun c!29581 () Bool)

(assert (=> b!154448 (= c!29581 (and ((_ is Cons!1819) lt!80984) (not (= (_1!1413 (h!2428 lt!80984)) (_1!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))))

(declare-fun b!154447 () Bool)

(assert (=> b!154447 (= e!100921 (Some!187 (_2!1413 (h!2428 lt!80984))))))

(declare-fun b!154450 () Bool)

(assert (=> b!154450 (= e!100922 None!186)))

(assert (= (and d!50691 c!29580) b!154447))

(assert (= (and d!50691 (not c!29580)) b!154448))

(assert (= (and b!154448 c!29581) b!154449))

(assert (= (and b!154448 (not c!29581)) b!154450))

(declare-fun m!188485 () Bool)

(assert (=> b!154449 m!188485))

(assert (=> d!50531 d!50691))

(declare-fun d!50693 () Bool)

(assert (=> d!50693 (= (getValueByKey!182 lt!80984 (_1!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) (Some!187 (_2!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun lt!81169 () Unit!4897)

(declare-fun choose!928 (List!1823 (_ BitVec 64) V!3683) Unit!4897)

(assert (=> d!50693 (= lt!81169 (choose!928 lt!80984 (_1!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun e!100925 () Bool)

(assert (=> d!50693 e!100925))

(declare-fun res!72940 () Bool)

(assert (=> d!50693 (=> (not res!72940) (not e!100925))))

(assert (=> d!50693 (= res!72940 (isStrictlySorted!325 lt!80984))))

(assert (=> d!50693 (= (lemmaContainsTupThenGetReturnValue!97 lt!80984 (_1!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!81169)))

(declare-fun b!154455 () Bool)

(declare-fun res!72941 () Bool)

(assert (=> b!154455 (=> (not res!72941) (not e!100925))))

(assert (=> b!154455 (= res!72941 (containsKey!186 lt!80984 (_1!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun b!154456 () Bool)

(assert (=> b!154456 (= e!100925 (contains!962 lt!80984 (tuple2!2807 (_1!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(assert (= (and d!50693 res!72940) b!154455))

(assert (= (and b!154455 res!72941) b!154456))

(assert (=> d!50693 m!187945))

(declare-fun m!188487 () Bool)

(assert (=> d!50693 m!188487))

(declare-fun m!188489 () Bool)

(assert (=> d!50693 m!188489))

(declare-fun m!188491 () Bool)

(assert (=> b!154455 m!188491))

(declare-fun m!188493 () Bool)

(assert (=> b!154456 m!188493))

(assert (=> d!50531 d!50693))

(declare-fun e!100938 () Bool)

(declare-fun b!154477 () Bool)

(declare-fun lt!81172 () List!1823)

(assert (=> b!154477 (= e!100938 (contains!962 lt!81172 (tuple2!2807 (_1!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun bm!17189 () Bool)

(declare-fun call!17193 () List!1823)

(declare-fun call!17194 () List!1823)

(assert (=> bm!17189 (= call!17193 call!17194)))

(declare-fun b!154478 () Bool)

(declare-fun e!100937 () List!1823)

(declare-fun call!17192 () List!1823)

(assert (=> b!154478 (= e!100937 call!17192)))

(declare-fun e!100940 () List!1823)

(declare-fun c!29593 () Bool)

(declare-fun c!29592 () Bool)

(declare-fun b!154479 () Bool)

(assert (=> b!154479 (= e!100940 (ite c!29592 (t!6625 (toList!923 lt!80932)) (ite c!29593 (Cons!1819 (h!2428 (toList!923 lt!80932)) (t!6625 (toList!923 lt!80932))) Nil!1820)))))

(declare-fun b!154480 () Bool)

(declare-fun e!100936 () List!1823)

(assert (=> b!154480 (= e!100936 call!17193)))

(declare-fun b!154481 () Bool)

(declare-fun e!100939 () List!1823)

(assert (=> b!154481 (= e!100939 call!17194)))

(declare-fun d!50695 () Bool)

(assert (=> d!50695 e!100938))

(declare-fun res!72946 () Bool)

(assert (=> d!50695 (=> (not res!72946) (not e!100938))))

(assert (=> d!50695 (= res!72946 (isStrictlySorted!325 lt!81172))))

(assert (=> d!50695 (= lt!81172 e!100937)))

(declare-fun c!29591 () Bool)

(assert (=> d!50695 (= c!29591 (and ((_ is Cons!1819) (toList!923 lt!80932)) (bvslt (_1!1413 (h!2428 (toList!923 lt!80932))) (_1!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(assert (=> d!50695 (isStrictlySorted!325 (toList!923 lt!80932))))

(assert (=> d!50695 (= (insertStrictlySorted!99 (toList!923 lt!80932) (_1!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!81172)))

(declare-fun b!154482 () Bool)

(assert (=> b!154482 (= c!29593 (and ((_ is Cons!1819) (toList!923 lt!80932)) (bvsgt (_1!1413 (h!2428 (toList!923 lt!80932))) (_1!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(assert (=> b!154482 (= e!100939 e!100936)))

(declare-fun b!154483 () Bool)

(assert (=> b!154483 (= e!100937 e!100939)))

(assert (=> b!154483 (= c!29592 (and ((_ is Cons!1819) (toList!923 lt!80932)) (= (_1!1413 (h!2428 (toList!923 lt!80932))) (_1!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun bm!17190 () Bool)

(assert (=> bm!17190 (= call!17194 call!17192)))

(declare-fun b!154484 () Bool)

(assert (=> b!154484 (= e!100940 (insertStrictlySorted!99 (t!6625 (toList!923 lt!80932)) (_1!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun b!154485 () Bool)

(assert (=> b!154485 (= e!100936 call!17193)))

(declare-fun b!154486 () Bool)

(declare-fun res!72947 () Bool)

(assert (=> b!154486 (=> (not res!72947) (not e!100938))))

(assert (=> b!154486 (= res!72947 (containsKey!186 lt!81172 (_1!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun bm!17191 () Bool)

(declare-fun $colon$colon!95 (List!1823 tuple2!2806) List!1823)

(assert (=> bm!17191 (= call!17192 ($colon$colon!95 e!100940 (ite c!29591 (h!2428 (toList!923 lt!80932)) (tuple2!2807 (_1!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))))

(declare-fun c!29590 () Bool)

(assert (=> bm!17191 (= c!29590 c!29591)))

(assert (= (and d!50695 c!29591) b!154478))

(assert (= (and d!50695 (not c!29591)) b!154483))

(assert (= (and b!154483 c!29592) b!154481))

(assert (= (and b!154483 (not c!29592)) b!154482))

(assert (= (and b!154482 c!29593) b!154480))

(assert (= (and b!154482 (not c!29593)) b!154485))

(assert (= (or b!154480 b!154485) bm!17189))

(assert (= (or b!154481 bm!17189) bm!17190))

(assert (= (or b!154478 bm!17190) bm!17191))

(assert (= (and bm!17191 c!29590) b!154484))

(assert (= (and bm!17191 (not c!29590)) b!154479))

(assert (= (and d!50695 res!72946) b!154486))

(assert (= (and b!154486 res!72947) b!154477))

(declare-fun m!188495 () Bool)

(assert (=> bm!17191 m!188495))

(declare-fun m!188497 () Bool)

(assert (=> b!154477 m!188497))

(declare-fun m!188499 () Bool)

(assert (=> d!50695 m!188499))

(declare-fun m!188501 () Bool)

(assert (=> d!50695 m!188501))

(declare-fun m!188503 () Bool)

(assert (=> b!154486 m!188503))

(declare-fun m!188505 () Bool)

(assert (=> b!154484 m!188505))

(assert (=> d!50531 d!50695))

(declare-fun d!50697 () Bool)

(declare-fun e!100941 () Bool)

(assert (=> d!50697 e!100941))

(declare-fun res!72948 () Bool)

(assert (=> d!50697 (=> res!72948 e!100941)))

(declare-fun lt!81174 () Bool)

(assert (=> d!50697 (= res!72948 (not lt!81174))))

(declare-fun lt!81173 () Bool)

(assert (=> d!50697 (= lt!81174 lt!81173)))

(declare-fun lt!81176 () Unit!4897)

(declare-fun e!100942 () Unit!4897)

(assert (=> d!50697 (= lt!81176 e!100942)))

(declare-fun c!29594 () Bool)

(assert (=> d!50697 (= c!29594 lt!81173)))

(assert (=> d!50697 (= lt!81173 (containsKey!186 (toList!923 lt!80964) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!50697 (= (contains!961 lt!80964 #b0000000000000000000000000000000000000000000000000000000000000000) lt!81174)))

(declare-fun b!154487 () Bool)

(declare-fun lt!81175 () Unit!4897)

(assert (=> b!154487 (= e!100942 lt!81175)))

(assert (=> b!154487 (= lt!81175 (lemmaContainsKeyImpliesGetValueByKeyDefined!135 (toList!923 lt!80964) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!154487 (isDefined!136 (getValueByKey!182 (toList!923 lt!80964) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!154488 () Bool)

(declare-fun Unit!4913 () Unit!4897)

(assert (=> b!154488 (= e!100942 Unit!4913)))

(declare-fun b!154489 () Bool)

(assert (=> b!154489 (= e!100941 (isDefined!136 (getValueByKey!182 (toList!923 lt!80964) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!50697 c!29594) b!154487))

(assert (= (and d!50697 (not c!29594)) b!154488))

(assert (= (and d!50697 (not res!72948)) b!154489))

(declare-fun m!188507 () Bool)

(assert (=> d!50697 m!188507))

(declare-fun m!188509 () Bool)

(assert (=> b!154487 m!188509))

(declare-fun m!188511 () Bool)

(assert (=> b!154487 m!188511))

(assert (=> b!154487 m!188511))

(declare-fun m!188513 () Bool)

(assert (=> b!154487 m!188513))

(assert (=> b!154489 m!188511))

(assert (=> b!154489 m!188511))

(assert (=> b!154489 m!188513))

(assert (=> d!50517 d!50697))

(assert (=> d!50517 d!50557))

(assert (=> b!154225 d!50673))

(declare-fun d!50699 () Bool)

(assert (=> d!50699 (= (isDefined!136 (getValueByKey!182 (toList!923 lt!80934) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!436 (getValueByKey!182 (toList!923 lt!80934) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!6542 () Bool)

(assert (= bs!6542 d!50699))

(assert (=> bs!6542 m!188103))

(declare-fun m!188515 () Bool)

(assert (=> bs!6542 m!188515))

(assert (=> b!154250 d!50699))

(declare-fun d!50701 () Bool)

(declare-fun c!29595 () Bool)

(assert (=> d!50701 (= c!29595 (and ((_ is Cons!1819) (toList!923 lt!80934)) (= (_1!1413 (h!2428 (toList!923 lt!80934))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!100943 () Option!188)

(assert (=> d!50701 (= (getValueByKey!182 (toList!923 lt!80934) #b1000000000000000000000000000000000000000000000000000000000000000) e!100943)))

(declare-fun b!154492 () Bool)

(declare-fun e!100944 () Option!188)

(assert (=> b!154492 (= e!100944 (getValueByKey!182 (t!6625 (toList!923 lt!80934)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!154491 () Bool)

(assert (=> b!154491 (= e!100943 e!100944)))

(declare-fun c!29596 () Bool)

(assert (=> b!154491 (= c!29596 (and ((_ is Cons!1819) (toList!923 lt!80934)) (not (= (_1!1413 (h!2428 (toList!923 lt!80934))) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!154490 () Bool)

(assert (=> b!154490 (= e!100943 (Some!187 (_2!1413 (h!2428 (toList!923 lt!80934)))))))

(declare-fun b!154493 () Bool)

(assert (=> b!154493 (= e!100944 None!186)))

(assert (= (and d!50701 c!29595) b!154490))

(assert (= (and d!50701 (not c!29595)) b!154491))

(assert (= (and b!154491 c!29596) b!154492))

(assert (= (and b!154491 (not c!29596)) b!154493))

(declare-fun m!188517 () Bool)

(assert (=> b!154492 m!188517))

(assert (=> b!154250 d!50701))

(assert (=> b!154292 d!50673))

(declare-fun d!50703 () Bool)

(assert (=> d!50703 (= (get!1611 (select (arr!2411 (_values!3047 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!466 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!3415 (select (arr!2411 (_values!3047 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!154202 d!50703))

(declare-fun b!154494 () Bool)

(declare-fun e!100945 () (_ BitVec 32))

(declare-fun call!17195 () (_ BitVec 32))

(assert (=> b!154494 (= e!100945 (bvadd #b00000000000000000000000000000001 call!17195))))

(declare-fun b!154495 () Bool)

(declare-fun e!100946 () (_ BitVec 32))

(assert (=> b!154495 (= e!100946 e!100945)))

(declare-fun c!29598 () Bool)

(assert (=> b!154495 (= c!29598 (validKeyInArray!0 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!154496 () Bool)

(assert (=> b!154496 (= e!100946 #b00000000000000000000000000000000)))

(declare-fun d!50705 () Bool)

(declare-fun lt!81177 () (_ BitVec 32))

(assert (=> d!50705 (and (bvsge lt!81177 #b00000000000000000000000000000000) (bvsle lt!81177 (bvsub (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000)))))

(assert (=> d!50705 (= lt!81177 e!100946)))

(declare-fun c!29597 () Bool)

(assert (=> d!50705 (= c!29597 (bvsge #b00000000000000000000000000000000 (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992))))))))

(assert (=> d!50705 (and (bvsle #b00000000000000000000000000000000 (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992))))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992))))))))

(assert (=> d!50705 (= (arrayCountValidKeys!0 (_keys!4837 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000000000 (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992))))) lt!81177)))

(declare-fun b!154497 () Bool)

(assert (=> b!154497 (= e!100945 call!17195)))

(declare-fun bm!17192 () Bool)

(assert (=> bm!17192 (= call!17195 (arrayCountValidKeys!0 (_keys!4837 (v!3416 (underlying!524 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992))))))))

(assert (= (and d!50705 c!29597) b!154496))

(assert (= (and d!50705 (not c!29597)) b!154495))

(assert (= (and b!154495 c!29598) b!154494))

(assert (= (and b!154495 (not c!29598)) b!154497))

(assert (= (or b!154494 b!154497) bm!17192))

(assert (=> b!154495 m!188047))

(assert (=> b!154495 m!188047))

(assert (=> b!154495 m!188053))

(declare-fun m!188519 () Bool)

(assert (=> bm!17192 m!188519))

(assert (=> b!154207 d!50705))

(declare-fun d!50707 () Bool)

(declare-fun e!100947 () Bool)

(assert (=> d!50707 e!100947))

(declare-fun res!72949 () Bool)

(assert (=> d!50707 (=> res!72949 e!100947)))

(declare-fun lt!81179 () Bool)

(assert (=> d!50707 (= res!72949 (not lt!81179))))

(declare-fun lt!81178 () Bool)

(assert (=> d!50707 (= lt!81179 lt!81178)))

(declare-fun lt!81181 () Unit!4897)

(declare-fun e!100948 () Unit!4897)

(assert (=> d!50707 (= lt!81181 e!100948)))

(declare-fun c!29599 () Bool)

(assert (=> d!50707 (= c!29599 lt!81178)))

(assert (=> d!50707 (= lt!81178 (containsKey!186 (toList!923 lt!81066) (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> d!50707 (= (contains!961 lt!81066 (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000)) lt!81179)))

(declare-fun b!154498 () Bool)

(declare-fun lt!81180 () Unit!4897)

(assert (=> b!154498 (= e!100948 lt!81180)))

(assert (=> b!154498 (= lt!81180 (lemmaContainsKeyImpliesGetValueByKeyDefined!135 (toList!923 lt!81066) (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!154498 (isDefined!136 (getValueByKey!182 (toList!923 lt!81066) (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!154499 () Bool)

(declare-fun Unit!4914 () Unit!4897)

(assert (=> b!154499 (= e!100948 Unit!4914)))

(declare-fun b!154500 () Bool)

(assert (=> b!154500 (= e!100947 (isDefined!136 (getValueByKey!182 (toList!923 lt!81066) (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000))))))

(assert (= (and d!50707 c!29599) b!154498))

(assert (= (and d!50707 (not c!29599)) b!154499))

(assert (= (and d!50707 (not res!72949)) b!154500))

(assert (=> d!50707 m!188035))

(declare-fun m!188521 () Bool)

(assert (=> d!50707 m!188521))

(assert (=> b!154498 m!188035))

(declare-fun m!188523 () Bool)

(assert (=> b!154498 m!188523))

(assert (=> b!154498 m!188035))

(assert (=> b!154498 m!188201))

(assert (=> b!154498 m!188201))

(declare-fun m!188525 () Bool)

(assert (=> b!154498 m!188525))

(assert (=> b!154500 m!188035))

(assert (=> b!154500 m!188201))

(assert (=> b!154500 m!188201))

(assert (=> b!154500 m!188525))

(assert (=> b!154288 d!50707))

(declare-fun d!50709 () Bool)

(assert (=> d!50709 (= (apply!128 lt!81029 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1610 (getValueByKey!182 (toList!923 lt!81029) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!6543 () Bool)

(assert (= bs!6543 d!50709))

(declare-fun m!188527 () Bool)

(assert (=> bs!6543 m!188527))

(assert (=> bs!6543 m!188527))

(declare-fun m!188529 () Bool)

(assert (=> bs!6543 m!188529))

(assert (=> b!154237 d!50709))

(declare-fun c!29600 () Bool)

(declare-fun d!50711 () Bool)

(assert (=> d!50711 (= c!29600 (and ((_ is Cons!1819) (toList!923 lt!81016)) (= (_1!1413 (h!2428 (toList!923 lt!81016))) (_1!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))))

(declare-fun e!100949 () Option!188)

(assert (=> d!50711 (= (getValueByKey!182 (toList!923 lt!81016) (_1!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))) e!100949)))

(declare-fun b!154503 () Bool)

(declare-fun e!100950 () Option!188)

(assert (=> b!154503 (= e!100950 (getValueByKey!182 (t!6625 (toList!923 lt!81016)) (_1!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun b!154502 () Bool)

(assert (=> b!154502 (= e!100949 e!100950)))

(declare-fun c!29601 () Bool)

(assert (=> b!154502 (= c!29601 (and ((_ is Cons!1819) (toList!923 lt!81016)) (not (= (_1!1413 (h!2428 (toList!923 lt!81016))) (_1!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))))

(declare-fun b!154501 () Bool)

(assert (=> b!154501 (= e!100949 (Some!187 (_2!1413 (h!2428 (toList!923 lt!81016)))))))

(declare-fun b!154504 () Bool)

(assert (=> b!154504 (= e!100950 None!186)))

(assert (= (and d!50711 c!29600) b!154501))

(assert (= (and d!50711 (not c!29600)) b!154502))

(assert (= (and b!154502 c!29601) b!154503))

(assert (= (and b!154502 (not c!29601)) b!154504))

(declare-fun m!188531 () Bool)

(assert (=> b!154503 m!188531))

(assert (=> b!154210 d!50711))

(declare-fun d!50713 () Bool)

(assert (=> d!50713 (isDefined!136 (getValueByKey!182 (toList!923 lt!80934) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!81182 () Unit!4897)

(assert (=> d!50713 (= lt!81182 (choose!927 (toList!923 lt!80934) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!100951 () Bool)

(assert (=> d!50713 e!100951))

(declare-fun res!72950 () Bool)

(assert (=> d!50713 (=> (not res!72950) (not e!100951))))

(assert (=> d!50713 (= res!72950 (isStrictlySorted!325 (toList!923 lt!80934)))))

(assert (=> d!50713 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!135 (toList!923 lt!80934) #b0000000000000000000000000000000000000000000000000000000000000000) lt!81182)))

(declare-fun b!154505 () Bool)

(assert (=> b!154505 (= e!100951 (containsKey!186 (toList!923 lt!80934) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!50713 res!72950) b!154505))

(assert (=> d!50713 m!188011))

(assert (=> d!50713 m!188011))

(assert (=> d!50713 m!188013))

(declare-fun m!188533 () Bool)

(assert (=> d!50713 m!188533))

(assert (=> d!50713 m!188473))

(assert (=> b!154505 m!188007))

(assert (=> b!154204 d!50713))

(assert (=> b!154204 d!50611))

(assert (=> b!154204 d!50613))

(declare-fun b!154506 () Bool)

(declare-fun res!72954 () Bool)

(declare-fun e!100952 () Bool)

(assert (=> b!154506 (=> (not res!72954) (not e!100952))))

(assert (=> b!154506 (= res!72954 (and (= (size!2688 (_values!3047 (v!3416 (underlying!524 thiss!992)))) (bvadd (mask!7468 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000000001)) (= (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (size!2688 (_values!3047 (v!3416 (underlying!524 thiss!992))))) (bvsge (_size!673 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000000000) (bvsle (_size!673 (v!3416 (underlying!524 thiss!992))) (bvadd (mask!7468 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000000001))))))

(declare-fun b!154508 () Bool)

(declare-fun res!72952 () Bool)

(assert (=> b!154508 (=> (not res!72952) (not e!100952))))

(assert (=> b!154508 (= res!72952 (= (size!2691 (v!3416 (underlying!524 thiss!992))) (bvadd (_size!673 (v!3416 (underlying!524 thiss!992))) (bvsdiv (bvadd (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!50715 () Bool)

(declare-fun res!72953 () Bool)

(assert (=> d!50715 (=> (not res!72953) (not e!100952))))

(assert (=> d!50715 (= res!72953 (validMask!0 (mask!7468 (v!3416 (underlying!524 thiss!992)))))))

(assert (=> d!50715 (= (simpleValid!103 (v!3416 (underlying!524 thiss!992))) e!100952)))

(declare-fun b!154507 () Bool)

(declare-fun res!72951 () Bool)

(assert (=> b!154507 (=> (not res!72951) (not e!100952))))

(assert (=> b!154507 (= res!72951 (bvsge (size!2691 (v!3416 (underlying!524 thiss!992))) (_size!673 (v!3416 (underlying!524 thiss!992)))))))

(declare-fun b!154509 () Bool)

(assert (=> b!154509 (= e!100952 (and (bvsge (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000000011) (bvsge (_vacant!673 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000000000)))))

(assert (= (and d!50715 res!72953) b!154506))

(assert (= (and b!154506 res!72954) b!154507))

(assert (= (and b!154507 res!72951) b!154508))

(assert (= (and b!154508 res!72952) b!154509))

(declare-fun m!188535 () Bool)

(assert (=> b!154508 m!188535))

(assert (=> d!50715 m!187843))

(assert (=> b!154507 m!188535))

(assert (=> d!50553 d!50715))

(assert (=> b!154285 d!50673))

(declare-fun d!50717 () Bool)

(assert (=> d!50717 (= (apply!128 lt!80964 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1610 (getValueByKey!182 (toList!923 lt!80964) (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun bs!6544 () Bool)

(assert (= bs!6544 d!50717))

(assert (=> bs!6544 m!187823))

(assert (=> bs!6544 m!188297))

(assert (=> bs!6544 m!188297))

(declare-fun m!188537 () Bool)

(assert (=> bs!6544 m!188537))

(assert (=> b!154167 d!50717))

(assert (=> b!154167 d!50547))

(declare-fun d!50719 () Bool)

(declare-fun res!72959 () Bool)

(declare-fun e!100957 () Bool)

(assert (=> d!50719 (=> res!72959 e!100957)))

(assert (=> d!50719 (= res!72959 (and ((_ is Cons!1819) (toList!923 lt!80934)) (= (_1!1413 (h!2428 (toList!923 lt!80934))) (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (=> d!50719 (= (containsKey!186 (toList!923 lt!80934) (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) e!100957)))

(declare-fun b!154514 () Bool)

(declare-fun e!100958 () Bool)

(assert (=> b!154514 (= e!100957 e!100958)))

(declare-fun res!72960 () Bool)

(assert (=> b!154514 (=> (not res!72960) (not e!100958))))

(assert (=> b!154514 (= res!72960 (and (or (not ((_ is Cons!1819) (toList!923 lt!80934))) (bvsle (_1!1413 (h!2428 (toList!923 lt!80934))) (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))) ((_ is Cons!1819) (toList!923 lt!80934)) (bvslt (_1!1413 (h!2428 (toList!923 lt!80934))) (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun b!154515 () Bool)

(assert (=> b!154515 (= e!100958 (containsKey!186 (t!6625 (toList!923 lt!80934)) (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (= (and d!50719 (not res!72959)) b!154514))

(assert (= (and b!154514 res!72960) b!154515))

(assert (=> b!154515 m!187823))

(declare-fun m!188539 () Bool)

(assert (=> b!154515 m!188539))

(assert (=> d!50575 d!50719))

(declare-fun d!50721 () Bool)

(declare-fun e!100959 () Bool)

(assert (=> d!50721 e!100959))

(declare-fun res!72961 () Bool)

(assert (=> d!50721 (=> (not res!72961) (not e!100959))))

(declare-fun lt!81185 () ListLongMap!1815)

(assert (=> d!50721 (= res!72961 (contains!961 lt!81185 (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun lt!81184 () List!1823)

(assert (=> d!50721 (= lt!81185 (ListLongMap!1816 lt!81184))))

(declare-fun lt!81186 () Unit!4897)

(declare-fun lt!81183 () Unit!4897)

(assert (=> d!50721 (= lt!81186 lt!81183)))

(assert (=> d!50721 (= (getValueByKey!182 lt!81184 (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) (Some!187 (_2!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (=> d!50721 (= lt!81183 (lemmaContainsTupThenGetReturnValue!97 lt!81184 (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (=> d!50721 (= lt!81184 (insertStrictlySorted!99 (toList!923 call!17164) (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (=> d!50721 (= (+!187 call!17164 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!81185)))

(declare-fun b!154516 () Bool)

(declare-fun res!72962 () Bool)

(assert (=> b!154516 (=> (not res!72962) (not e!100959))))

(assert (=> b!154516 (= res!72962 (= (getValueByKey!182 (toList!923 lt!81185) (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) (Some!187 (_2!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun b!154517 () Bool)

(assert (=> b!154517 (= e!100959 (contains!962 (toList!923 lt!81185) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))

(assert (= (and d!50721 res!72961) b!154516))

(assert (= (and b!154516 res!72962) b!154517))

(declare-fun m!188541 () Bool)

(assert (=> d!50721 m!188541))

(declare-fun m!188543 () Bool)

(assert (=> d!50721 m!188543))

(declare-fun m!188545 () Bool)

(assert (=> d!50721 m!188545))

(declare-fun m!188547 () Bool)

(assert (=> d!50721 m!188547))

(declare-fun m!188549 () Bool)

(assert (=> b!154516 m!188549))

(declare-fun m!188551 () Bool)

(assert (=> b!154517 m!188551))

(assert (=> b!154246 d!50721))

(declare-fun d!50723 () Bool)

(declare-fun isEmpty!437 (List!1823) Bool)

(assert (=> d!50723 (= (isEmpty!435 lt!80964) (isEmpty!437 (toList!923 lt!80964)))))

(declare-fun bs!6545 () Bool)

(assert (= bs!6545 d!50723))

(declare-fun m!188553 () Bool)

(assert (=> bs!6545 m!188553))

(assert (=> b!154164 d!50723))

(declare-fun b!154518 () Bool)

(declare-fun e!100960 () (_ BitVec 32))

(declare-fun call!17196 () (_ BitVec 32))

(assert (=> b!154518 (= e!100960 (bvadd #b00000000000000000000000000000001 call!17196))))

(declare-fun b!154519 () Bool)

(declare-fun e!100961 () (_ BitVec 32))

(assert (=> b!154519 (= e!100961 e!100960)))

(declare-fun c!29603 () Bool)

(assert (=> b!154519 (= c!29603 (validKeyInArray!0 (select (arr!2410 (_keys!4837 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!154520 () Bool)

(assert (=> b!154520 (= e!100961 #b00000000000000000000000000000000)))

(declare-fun d!50725 () Bool)

(declare-fun lt!81187 () (_ BitVec 32))

(assert (=> d!50725 (and (bvsge lt!81187 #b00000000000000000000000000000000) (bvsle lt!81187 (bvsub (size!2687 (_keys!4837 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!50725 (= lt!81187 e!100961)))

(declare-fun c!29602 () Bool)

(assert (=> d!50725 (= c!29602 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2687 (_keys!4837 newMap!16))))))

(assert (=> d!50725 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2687 (_keys!4837 newMap!16))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!2687 (_keys!4837 newMap!16)) (size!2687 (_keys!4837 newMap!16))))))

(assert (=> d!50725 (= (arrayCountValidKeys!0 (_keys!4837 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2687 (_keys!4837 newMap!16))) lt!81187)))

(declare-fun b!154521 () Bool)

(assert (=> b!154521 (= e!100960 call!17196)))

(declare-fun bm!17193 () Bool)

(assert (=> bm!17193 (= call!17196 (arrayCountValidKeys!0 (_keys!4837 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!2687 (_keys!4837 newMap!16))))))

(assert (= (and d!50725 c!29602) b!154520))

(assert (= (and d!50725 (not c!29602)) b!154519))

(assert (= (and b!154519 c!29603) b!154518))

(assert (= (and b!154519 (not c!29603)) b!154521))

(assert (= (or b!154518 b!154521) bm!17193))

(assert (=> b!154519 m!188247))

(assert (=> b!154519 m!188247))

(assert (=> b!154519 m!188251))

(declare-fun m!188555 () Bool)

(assert (=> bm!17193 m!188555))

(assert (=> bm!17167 d!50725))

(assert (=> d!50561 d!50557))

(declare-fun c!29604 () Bool)

(declare-fun d!50727 () Bool)

(assert (=> d!50727 (= c!29604 (and ((_ is Cons!1819) (toList!923 lt!80985)) (= (_1!1413 (h!2428 (toList!923 lt!80985))) (_1!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun e!100962 () Option!188)

(assert (=> d!50727 (= (getValueByKey!182 (toList!923 lt!80985) (_1!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) e!100962)))

(declare-fun e!100963 () Option!188)

(declare-fun b!154524 () Bool)

(assert (=> b!154524 (= e!100963 (getValueByKey!182 (t!6625 (toList!923 lt!80985)) (_1!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun b!154523 () Bool)

(assert (=> b!154523 (= e!100962 e!100963)))

(declare-fun c!29605 () Bool)

(assert (=> b!154523 (= c!29605 (and ((_ is Cons!1819) (toList!923 lt!80985)) (not (= (_1!1413 (h!2428 (toList!923 lt!80985))) (_1!1413 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))))

(declare-fun b!154522 () Bool)

(assert (=> b!154522 (= e!100962 (Some!187 (_2!1413 (h!2428 (toList!923 lt!80985)))))))

(declare-fun b!154525 () Bool)

(assert (=> b!154525 (= e!100963 None!186)))

(assert (= (and d!50727 c!29604) b!154522))

(assert (= (and d!50727 (not c!29604)) b!154523))

(assert (= (and b!154523 c!29605) b!154524))

(assert (= (and b!154523 (not c!29605)) b!154525))

(declare-fun m!188557 () Bool)

(assert (=> b!154524 m!188557))

(assert (=> b!154182 d!50727))

(declare-fun d!50729 () Bool)

(declare-fun e!100964 () Bool)

(assert (=> d!50729 e!100964))

(declare-fun res!72963 () Bool)

(assert (=> d!50729 (=> res!72963 e!100964)))

(declare-fun lt!81189 () Bool)

(assert (=> d!50729 (= res!72963 (not lt!81189))))

(declare-fun lt!81188 () Bool)

(assert (=> d!50729 (= lt!81189 lt!81188)))

(declare-fun lt!81191 () Unit!4897)

(declare-fun e!100965 () Unit!4897)

(assert (=> d!50729 (= lt!81191 e!100965)))

(declare-fun c!29606 () Bool)

(assert (=> d!50729 (= c!29606 lt!81188)))

(assert (=> d!50729 (= lt!81188 (containsKey!186 (toList!923 lt!81016) (_1!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(assert (=> d!50729 (= (contains!961 lt!81016 (_1!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))) lt!81189)))

(declare-fun b!154526 () Bool)

(declare-fun lt!81190 () Unit!4897)

(assert (=> b!154526 (= e!100965 lt!81190)))

(assert (=> b!154526 (= lt!81190 (lemmaContainsKeyImpliesGetValueByKeyDefined!135 (toList!923 lt!81016) (_1!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(assert (=> b!154526 (isDefined!136 (getValueByKey!182 (toList!923 lt!81016) (_1!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun b!154527 () Bool)

(declare-fun Unit!4915 () Unit!4897)

(assert (=> b!154527 (= e!100965 Unit!4915)))

(declare-fun b!154528 () Bool)

(assert (=> b!154528 (= e!100964 (isDefined!136 (getValueByKey!182 (toList!923 lt!81016) (_1!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))))

(assert (= (and d!50729 c!29606) b!154526))

(assert (= (and d!50729 (not c!29606)) b!154527))

(assert (= (and d!50729 (not res!72963)) b!154528))

(declare-fun m!188559 () Bool)

(assert (=> d!50729 m!188559))

(declare-fun m!188561 () Bool)

(assert (=> b!154526 m!188561))

(assert (=> b!154526 m!188031))

(assert (=> b!154526 m!188031))

(declare-fun m!188563 () Bool)

(assert (=> b!154526 m!188563))

(assert (=> b!154528 m!188031))

(assert (=> b!154528 m!188031))

(assert (=> b!154528 m!188563))

(assert (=> d!50555 d!50729))

(declare-fun d!50731 () Bool)

(declare-fun c!29607 () Bool)

(assert (=> d!50731 (= c!29607 (and ((_ is Cons!1819) lt!81015) (= (_1!1413 (h!2428 lt!81015)) (_1!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))))

(declare-fun e!100966 () Option!188)

(assert (=> d!50731 (= (getValueByKey!182 lt!81015 (_1!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))) e!100966)))

(declare-fun b!154531 () Bool)

(declare-fun e!100967 () Option!188)

(assert (=> b!154531 (= e!100967 (getValueByKey!182 (t!6625 lt!81015) (_1!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun b!154530 () Bool)

(assert (=> b!154530 (= e!100966 e!100967)))

(declare-fun c!29608 () Bool)

(assert (=> b!154530 (= c!29608 (and ((_ is Cons!1819) lt!81015) (not (= (_1!1413 (h!2428 lt!81015)) (_1!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))))

(declare-fun b!154529 () Bool)

(assert (=> b!154529 (= e!100966 (Some!187 (_2!1413 (h!2428 lt!81015))))))

(declare-fun b!154532 () Bool)

(assert (=> b!154532 (= e!100967 None!186)))

(assert (= (and d!50731 c!29607) b!154529))

(assert (= (and d!50731 (not c!29607)) b!154530))

(assert (= (and b!154530 c!29608) b!154531))

(assert (= (and b!154530 (not c!29608)) b!154532))

(declare-fun m!188565 () Bool)

(assert (=> b!154531 m!188565))

(assert (=> d!50555 d!50731))

(declare-fun d!50733 () Bool)

(assert (=> d!50733 (= (getValueByKey!182 lt!81015 (_1!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))) (Some!187 (_2!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun lt!81192 () Unit!4897)

(assert (=> d!50733 (= lt!81192 (choose!928 lt!81015 (_1!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) (_2!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun e!100968 () Bool)

(assert (=> d!50733 e!100968))

(declare-fun res!72964 () Bool)

(assert (=> d!50733 (=> (not res!72964) (not e!100968))))

(assert (=> d!50733 (= res!72964 (isStrictlySorted!325 lt!81015))))

(assert (=> d!50733 (= (lemmaContainsTupThenGetReturnValue!97 lt!81015 (_1!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) (_2!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))) lt!81192)))

(declare-fun b!154533 () Bool)

(declare-fun res!72965 () Bool)

(assert (=> b!154533 (=> (not res!72965) (not e!100968))))

(assert (=> b!154533 (= res!72965 (containsKey!186 lt!81015 (_1!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun b!154534 () Bool)

(assert (=> b!154534 (= e!100968 (contains!962 lt!81015 (tuple2!2807 (_1!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) (_2!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))))

(assert (= (and d!50733 res!72964) b!154533))

(assert (= (and b!154533 res!72965) b!154534))

(assert (=> d!50733 m!188025))

(declare-fun m!188567 () Bool)

(assert (=> d!50733 m!188567))

(declare-fun m!188569 () Bool)

(assert (=> d!50733 m!188569))

(declare-fun m!188571 () Bool)

(assert (=> b!154533 m!188571))

(declare-fun m!188573 () Bool)

(assert (=> b!154534 m!188573))

(assert (=> d!50555 d!50733))

(declare-fun lt!81193 () List!1823)

(declare-fun e!100971 () Bool)

(declare-fun b!154535 () Bool)

(assert (=> b!154535 (= e!100971 (contains!962 lt!81193 (tuple2!2807 (_1!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) (_2!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))))

(declare-fun bm!17194 () Bool)

(declare-fun call!17198 () List!1823)

(declare-fun call!17199 () List!1823)

(assert (=> bm!17194 (= call!17198 call!17199)))

(declare-fun b!154536 () Bool)

(declare-fun e!100970 () List!1823)

(declare-fun call!17197 () List!1823)

(assert (=> b!154536 (= e!100970 call!17197)))

(declare-fun c!29611 () Bool)

(declare-fun b!154537 () Bool)

(declare-fun e!100973 () List!1823)

(declare-fun c!29612 () Bool)

(assert (=> b!154537 (= e!100973 (ite c!29611 (t!6625 (toList!923 (ite c!29493 call!17149 (ite c!29494 call!17153 call!17148)))) (ite c!29612 (Cons!1819 (h!2428 (toList!923 (ite c!29493 call!17149 (ite c!29494 call!17153 call!17148)))) (t!6625 (toList!923 (ite c!29493 call!17149 (ite c!29494 call!17153 call!17148))))) Nil!1820)))))

(declare-fun b!154538 () Bool)

(declare-fun e!100969 () List!1823)

(assert (=> b!154538 (= e!100969 call!17198)))

(declare-fun b!154539 () Bool)

(declare-fun e!100972 () List!1823)

(assert (=> b!154539 (= e!100972 call!17199)))

(declare-fun d!50735 () Bool)

(assert (=> d!50735 e!100971))

(declare-fun res!72966 () Bool)

(assert (=> d!50735 (=> (not res!72966) (not e!100971))))

(assert (=> d!50735 (= res!72966 (isStrictlySorted!325 lt!81193))))

(assert (=> d!50735 (= lt!81193 e!100970)))

(declare-fun c!29610 () Bool)

(assert (=> d!50735 (= c!29610 (and ((_ is Cons!1819) (toList!923 (ite c!29493 call!17149 (ite c!29494 call!17153 call!17148)))) (bvslt (_1!1413 (h!2428 (toList!923 (ite c!29493 call!17149 (ite c!29494 call!17153 call!17148))))) (_1!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))))

(assert (=> d!50735 (isStrictlySorted!325 (toList!923 (ite c!29493 call!17149 (ite c!29494 call!17153 call!17148))))))

(assert (=> d!50735 (= (insertStrictlySorted!99 (toList!923 (ite c!29493 call!17149 (ite c!29494 call!17153 call!17148))) (_1!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) (_2!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))) lt!81193)))

(declare-fun b!154540 () Bool)

(assert (=> b!154540 (= c!29612 (and ((_ is Cons!1819) (toList!923 (ite c!29493 call!17149 (ite c!29494 call!17153 call!17148)))) (bvsgt (_1!1413 (h!2428 (toList!923 (ite c!29493 call!17149 (ite c!29494 call!17153 call!17148))))) (_1!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))))

(assert (=> b!154540 (= e!100972 e!100969)))

(declare-fun b!154541 () Bool)

(assert (=> b!154541 (= e!100970 e!100972)))

(assert (=> b!154541 (= c!29611 (and ((_ is Cons!1819) (toList!923 (ite c!29493 call!17149 (ite c!29494 call!17153 call!17148)))) (= (_1!1413 (h!2428 (toList!923 (ite c!29493 call!17149 (ite c!29494 call!17153 call!17148))))) (_1!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))))

(declare-fun bm!17195 () Bool)

(assert (=> bm!17195 (= call!17199 call!17197)))

(declare-fun b!154542 () Bool)

(assert (=> b!154542 (= e!100973 (insertStrictlySorted!99 (t!6625 (toList!923 (ite c!29493 call!17149 (ite c!29494 call!17153 call!17148)))) (_1!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) (_2!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun b!154543 () Bool)

(assert (=> b!154543 (= e!100969 call!17198)))

(declare-fun b!154544 () Bool)

(declare-fun res!72967 () Bool)

(assert (=> b!154544 (=> (not res!72967) (not e!100971))))

(assert (=> b!154544 (= res!72967 (containsKey!186 lt!81193 (_1!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun bm!17196 () Bool)

(assert (=> bm!17196 (= call!17197 ($colon$colon!95 e!100973 (ite c!29610 (h!2428 (toList!923 (ite c!29493 call!17149 (ite c!29494 call!17153 call!17148)))) (tuple2!2807 (_1!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) (_2!1413 (ite (or c!29493 c!29494) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))))

(declare-fun c!29609 () Bool)

(assert (=> bm!17196 (= c!29609 c!29610)))

(assert (= (and d!50735 c!29610) b!154536))

(assert (= (and d!50735 (not c!29610)) b!154541))

(assert (= (and b!154541 c!29611) b!154539))

(assert (= (and b!154541 (not c!29611)) b!154540))

(assert (= (and b!154540 c!29612) b!154538))

(assert (= (and b!154540 (not c!29612)) b!154543))

(assert (= (or b!154538 b!154543) bm!17194))

(assert (= (or b!154539 bm!17194) bm!17195))

(assert (= (or b!154536 bm!17195) bm!17196))

(assert (= (and bm!17196 c!29609) b!154542))

(assert (= (and bm!17196 (not c!29609)) b!154537))

(assert (= (and d!50735 res!72966) b!154544))

(assert (= (and b!154544 res!72967) b!154535))

(declare-fun m!188575 () Bool)

(assert (=> bm!17196 m!188575))

(declare-fun m!188577 () Bool)

(assert (=> b!154535 m!188577))

(declare-fun m!188579 () Bool)

(assert (=> d!50735 m!188579))

(declare-fun m!188581 () Bool)

(assert (=> d!50735 m!188581))

(declare-fun m!188583 () Bool)

(assert (=> b!154544 m!188583))

(declare-fun m!188585 () Bool)

(assert (=> b!154542 m!188585))

(assert (=> d!50555 d!50735))

(declare-fun d!50737 () Bool)

(declare-fun e!100974 () Bool)

(assert (=> d!50737 e!100974))

(declare-fun res!72968 () Bool)

(assert (=> d!50737 (=> res!72968 e!100974)))

(declare-fun lt!81195 () Bool)

(assert (=> d!50737 (= res!72968 (not lt!81195))))

(declare-fun lt!81194 () Bool)

(assert (=> d!50737 (= lt!81195 lt!81194)))

(declare-fun lt!81197 () Unit!4897)

(declare-fun e!100975 () Unit!4897)

(assert (=> d!50737 (= lt!81197 e!100975)))

(declare-fun c!29613 () Bool)

(assert (=> d!50737 (= c!29613 lt!81194)))

(assert (=> d!50737 (= lt!81194 (containsKey!186 (toList!923 lt!80981) (_1!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (=> d!50737 (= (contains!961 lt!80981 (_1!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!81195)))

(declare-fun b!154545 () Bool)

(declare-fun lt!81196 () Unit!4897)

(assert (=> b!154545 (= e!100975 lt!81196)))

(assert (=> b!154545 (= lt!81196 (lemmaContainsKeyImpliesGetValueByKeyDefined!135 (toList!923 lt!80981) (_1!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (=> b!154545 (isDefined!136 (getValueByKey!182 (toList!923 lt!80981) (_1!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun b!154546 () Bool)

(declare-fun Unit!4916 () Unit!4897)

(assert (=> b!154546 (= e!100975 Unit!4916)))

(declare-fun b!154547 () Bool)

(assert (=> b!154547 (= e!100974 (isDefined!136 (getValueByKey!182 (toList!923 lt!80981) (_1!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(assert (= (and d!50737 c!29613) b!154545))

(assert (= (and d!50737 (not c!29613)) b!154546))

(assert (= (and d!50737 (not res!72968)) b!154547))

(declare-fun m!188587 () Bool)

(assert (=> d!50737 m!188587))

(declare-fun m!188589 () Bool)

(assert (=> b!154545 m!188589))

(assert (=> b!154545 m!187931))

(assert (=> b!154545 m!187931))

(declare-fun m!188591 () Bool)

(assert (=> b!154545 m!188591))

(assert (=> b!154547 m!187931))

(assert (=> b!154547 m!187931))

(assert (=> b!154547 m!188591))

(assert (=> d!50525 d!50737))

(declare-fun c!29614 () Bool)

(declare-fun d!50739 () Bool)

(assert (=> d!50739 (= c!29614 (and ((_ is Cons!1819) lt!80980) (= (_1!1413 (h!2428 lt!80980)) (_1!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun e!100976 () Option!188)

(assert (=> d!50739 (= (getValueByKey!182 lt!80980 (_1!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) e!100976)))

(declare-fun e!100977 () Option!188)

(declare-fun b!154550 () Bool)

(assert (=> b!154550 (= e!100977 (getValueByKey!182 (t!6625 lt!80980) (_1!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun b!154549 () Bool)

(assert (=> b!154549 (= e!100976 e!100977)))

(declare-fun c!29615 () Bool)

(assert (=> b!154549 (= c!29615 (and ((_ is Cons!1819) lt!80980) (not (= (_1!1413 (h!2428 lt!80980)) (_1!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))))

(declare-fun b!154548 () Bool)

(assert (=> b!154548 (= e!100976 (Some!187 (_2!1413 (h!2428 lt!80980))))))

(declare-fun b!154551 () Bool)

(assert (=> b!154551 (= e!100977 None!186)))

(assert (= (and d!50739 c!29614) b!154548))

(assert (= (and d!50739 (not c!29614)) b!154549))

(assert (= (and b!154549 c!29615) b!154550))

(assert (= (and b!154549 (not c!29615)) b!154551))

(declare-fun m!188593 () Bool)

(assert (=> b!154550 m!188593))

(assert (=> d!50525 d!50739))

(declare-fun d!50741 () Bool)

(assert (=> d!50741 (= (getValueByKey!182 lt!80980 (_1!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) (Some!187 (_2!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun lt!81198 () Unit!4897)

(assert (=> d!50741 (= lt!81198 (choose!928 lt!80980 (_1!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun e!100978 () Bool)

(assert (=> d!50741 e!100978))

(declare-fun res!72969 () Bool)

(assert (=> d!50741 (=> (not res!72969) (not e!100978))))

(assert (=> d!50741 (= res!72969 (isStrictlySorted!325 lt!80980))))

(assert (=> d!50741 (= (lemmaContainsTupThenGetReturnValue!97 lt!80980 (_1!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!81198)))

(declare-fun b!154552 () Bool)

(declare-fun res!72970 () Bool)

(assert (=> b!154552 (=> (not res!72970) (not e!100978))))

(assert (=> b!154552 (= res!72970 (containsKey!186 lt!80980 (_1!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun b!154553 () Bool)

(assert (=> b!154553 (= e!100978 (contains!962 lt!80980 (tuple2!2807 (_1!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(assert (= (and d!50741 res!72969) b!154552))

(assert (= (and b!154552 res!72970) b!154553))

(assert (=> d!50741 m!187925))

(declare-fun m!188595 () Bool)

(assert (=> d!50741 m!188595))

(declare-fun m!188597 () Bool)

(assert (=> d!50741 m!188597))

(declare-fun m!188599 () Bool)

(assert (=> b!154552 m!188599))

(declare-fun m!188601 () Bool)

(assert (=> b!154553 m!188601))

(assert (=> d!50525 d!50741))

(declare-fun e!100981 () Bool)

(declare-fun lt!81199 () List!1823)

(declare-fun b!154554 () Bool)

(assert (=> b!154554 (= e!100981 (contains!962 lt!81199 (tuple2!2807 (_1!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun bm!17197 () Bool)

(declare-fun call!17201 () List!1823)

(declare-fun call!17202 () List!1823)

(assert (=> bm!17197 (= call!17201 call!17202)))

(declare-fun b!154555 () Bool)

(declare-fun e!100980 () List!1823)

(declare-fun call!17200 () List!1823)

(assert (=> b!154555 (= e!100980 call!17200)))

(declare-fun b!154556 () Bool)

(declare-fun c!29619 () Bool)

(declare-fun c!29618 () Bool)

(declare-fun e!100983 () List!1823)

(assert (=> b!154556 (= e!100983 (ite c!29618 (t!6625 (toList!923 lt!80942)) (ite c!29619 (Cons!1819 (h!2428 (toList!923 lt!80942)) (t!6625 (toList!923 lt!80942))) Nil!1820)))))

(declare-fun b!154557 () Bool)

(declare-fun e!100979 () List!1823)

(assert (=> b!154557 (= e!100979 call!17201)))

(declare-fun b!154558 () Bool)

(declare-fun e!100982 () List!1823)

(assert (=> b!154558 (= e!100982 call!17202)))

(declare-fun d!50743 () Bool)

(assert (=> d!50743 e!100981))

(declare-fun res!72971 () Bool)

(assert (=> d!50743 (=> (not res!72971) (not e!100981))))

(assert (=> d!50743 (= res!72971 (isStrictlySorted!325 lt!81199))))

(assert (=> d!50743 (= lt!81199 e!100980)))

(declare-fun c!29617 () Bool)

(assert (=> d!50743 (= c!29617 (and ((_ is Cons!1819) (toList!923 lt!80942)) (bvslt (_1!1413 (h!2428 (toList!923 lt!80942))) (_1!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(assert (=> d!50743 (isStrictlySorted!325 (toList!923 lt!80942))))

(assert (=> d!50743 (= (insertStrictlySorted!99 (toList!923 lt!80942) (_1!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!81199)))

(declare-fun b!154559 () Bool)

(assert (=> b!154559 (= c!29619 (and ((_ is Cons!1819) (toList!923 lt!80942)) (bvsgt (_1!1413 (h!2428 (toList!923 lt!80942))) (_1!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(assert (=> b!154559 (= e!100982 e!100979)))

(declare-fun b!154560 () Bool)

(assert (=> b!154560 (= e!100980 e!100982)))

(assert (=> b!154560 (= c!29618 (and ((_ is Cons!1819) (toList!923 lt!80942)) (= (_1!1413 (h!2428 (toList!923 lt!80942))) (_1!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun bm!17198 () Bool)

(assert (=> bm!17198 (= call!17202 call!17200)))

(declare-fun b!154561 () Bool)

(assert (=> b!154561 (= e!100983 (insertStrictlySorted!99 (t!6625 (toList!923 lt!80942)) (_1!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun b!154562 () Bool)

(assert (=> b!154562 (= e!100979 call!17201)))

(declare-fun b!154563 () Bool)

(declare-fun res!72972 () Bool)

(assert (=> b!154563 (=> (not res!72972) (not e!100981))))

(assert (=> b!154563 (= res!72972 (containsKey!186 lt!81199 (_1!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun bm!17199 () Bool)

(assert (=> bm!17199 (= call!17200 ($colon$colon!95 e!100983 (ite c!29617 (h!2428 (toList!923 lt!80942)) (tuple2!2807 (_1!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!80931 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))))

(declare-fun c!29616 () Bool)

(assert (=> bm!17199 (= c!29616 c!29617)))

(assert (= (and d!50743 c!29617) b!154555))

(assert (= (and d!50743 (not c!29617)) b!154560))

(assert (= (and b!154560 c!29618) b!154558))

(assert (= (and b!154560 (not c!29618)) b!154559))

(assert (= (and b!154559 c!29619) b!154557))

(assert (= (and b!154559 (not c!29619)) b!154562))

(assert (= (or b!154557 b!154562) bm!17197))

(assert (= (or b!154558 bm!17197) bm!17198))

(assert (= (or b!154555 bm!17198) bm!17199))

(assert (= (and bm!17199 c!29616) b!154561))

(assert (= (and bm!17199 (not c!29616)) b!154556))

(assert (= (and d!50743 res!72971) b!154563))

(assert (= (and b!154563 res!72972) b!154554))

(declare-fun m!188603 () Bool)

(assert (=> bm!17199 m!188603))

(declare-fun m!188605 () Bool)

(assert (=> b!154554 m!188605))

(declare-fun m!188607 () Bool)

(assert (=> d!50743 m!188607))

(declare-fun m!188609 () Bool)

(assert (=> d!50743 m!188609))

(declare-fun m!188611 () Bool)

(assert (=> b!154563 m!188611))

(declare-fun m!188613 () Bool)

(assert (=> b!154561 m!188613))

(assert (=> d!50525 d!50743))

(declare-fun d!50745 () Bool)

(assert (=> d!50745 (= (apply!128 lt!81029 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000)) (get!1610 (getValueByKey!182 (toList!923 lt!81029) (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000))))))

(declare-fun bs!6546 () Bool)

(assert (= bs!6546 d!50745))

(assert (=> bs!6546 m!188047))

(declare-fun m!188615 () Bool)

(assert (=> bs!6546 m!188615))

(assert (=> bs!6546 m!188615))

(declare-fun m!188617 () Bool)

(assert (=> bs!6546 m!188617))

(assert (=> b!154242 d!50745))

(declare-fun d!50747 () Bool)

(declare-fun c!29620 () Bool)

(assert (=> d!50747 (= c!29620 ((_ is ValueCellFull!1170) (select (arr!2411 (_values!3047 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun e!100984 () V!3683)

(assert (=> d!50747 (= (get!1609 (select (arr!2411 (_values!3047 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000) (dynLambda!466 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!100984)))

(declare-fun b!154564 () Bool)

(assert (=> b!154564 (= e!100984 (get!1611 (select (arr!2411 (_values!3047 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000) (dynLambda!466 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!154565 () Bool)

(assert (=> b!154565 (= e!100984 (get!1612 (select (arr!2411 (_values!3047 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000) (dynLambda!466 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!50747 c!29620) b!154564))

(assert (= (and d!50747 (not c!29620)) b!154565))

(assert (=> b!154564 m!188043))

(assert (=> b!154564 m!187819))

(declare-fun m!188619 () Bool)

(assert (=> b!154564 m!188619))

(assert (=> b!154565 m!188043))

(assert (=> b!154565 m!187819))

(declare-fun m!188621 () Bool)

(assert (=> b!154565 m!188621))

(assert (=> b!154242 d!50747))

(declare-fun b!154566 () Bool)

(declare-fun e!100987 () Bool)

(declare-fun lt!81205 () ListLongMap!1815)

(assert (=> b!154566 (= e!100987 (= lt!81205 (getCurrentListMapNoExtraKeys!158 (_keys!4837 (v!3416 (underlying!524 thiss!992))) (_values!3047 (v!3416 (underlying!524 thiss!992))) (mask!7468 (v!3416 (underlying!524 thiss!992))) (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) (zeroValue!2907 (v!3416 (underlying!524 thiss!992))) (minValue!2907 (v!3416 (underlying!524 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))))))))

(declare-fun b!154567 () Bool)

(declare-fun e!100989 () Bool)

(assert (=> b!154567 (= e!100989 e!100987)))

(declare-fun c!29622 () Bool)

(assert (=> b!154567 (= c!29622 (bvslt #b00000000000000000000000000000000 (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992))))))))

(declare-fun b!154568 () Bool)

(declare-fun e!100986 () Bool)

(assert (=> b!154568 (= e!100986 e!100989)))

(declare-fun c!29621 () Bool)

(declare-fun e!100991 () Bool)

(assert (=> b!154568 (= c!29621 e!100991)))

(declare-fun res!72974 () Bool)

(assert (=> b!154568 (=> (not res!72974) (not e!100991))))

(assert (=> b!154568 (= res!72974 (bvslt #b00000000000000000000000000000000 (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992))))))))

(declare-fun b!154570 () Bool)

(declare-fun res!72973 () Bool)

(assert (=> b!154570 (=> (not res!72973) (not e!100986))))

(assert (=> b!154570 (= res!72973 (not (contains!961 lt!81205 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!154571 () Bool)

(declare-fun e!100985 () ListLongMap!1815)

(declare-fun e!100988 () ListLongMap!1815)

(assert (=> b!154571 (= e!100985 e!100988)))

(declare-fun c!29623 () Bool)

(assert (=> b!154571 (= c!29623 (validKeyInArray!0 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!154572 () Bool)

(assert (=> b!154572 (= e!100987 (isEmpty!435 lt!81205))))

(declare-fun bm!17200 () Bool)

(declare-fun call!17203 () ListLongMap!1815)

(assert (=> bm!17200 (= call!17203 (getCurrentListMapNoExtraKeys!158 (_keys!4837 (v!3416 (underlying!524 thiss!992))) (_values!3047 (v!3416 (underlying!524 thiss!992))) (mask!7468 (v!3416 (underlying!524 thiss!992))) (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) (zeroValue!2907 (v!3416 (underlying!524 thiss!992))) (minValue!2907 (v!3416 (underlying!524 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3064 (v!3416 (underlying!524 thiss!992)))))))

(declare-fun b!154573 () Bool)

(assert (=> b!154573 (= e!100991 (validKeyInArray!0 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000)))))

(assert (=> b!154573 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!50749 () Bool)

(assert (=> d!50749 e!100986))

(declare-fun res!72975 () Bool)

(assert (=> d!50749 (=> (not res!72975) (not e!100986))))

(assert (=> d!50749 (= res!72975 (not (contains!961 lt!81205 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!50749 (= lt!81205 e!100985)))

(declare-fun c!29624 () Bool)

(assert (=> d!50749 (= c!29624 (bvsge #b00000000000000000000000000000000 (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992))))))))

(assert (=> d!50749 (validMask!0 (mask!7468 (v!3416 (underlying!524 thiss!992))))))

(assert (=> d!50749 (= (getCurrentListMapNoExtraKeys!158 (_keys!4837 (v!3416 (underlying!524 thiss!992))) (_values!3047 (v!3416 (underlying!524 thiss!992))) (mask!7468 (v!3416 (underlying!524 thiss!992))) (extraKeys!2805 (v!3416 (underlying!524 thiss!992))) (zeroValue!2907 (v!3416 (underlying!524 thiss!992))) (minValue!2907 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000000000 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992)))) lt!81205)))

(declare-fun b!154569 () Bool)

(assert (=> b!154569 (= e!100985 (ListLongMap!1816 Nil!1820))))

(declare-fun b!154574 () Bool)

(declare-fun lt!81203 () Unit!4897)

(declare-fun lt!81201 () Unit!4897)

(assert (=> b!154574 (= lt!81203 lt!81201)))

(declare-fun lt!81202 () ListLongMap!1815)

(declare-fun lt!81206 () V!3683)

(declare-fun lt!81204 () (_ BitVec 64))

(declare-fun lt!81200 () (_ BitVec 64))

(assert (=> b!154574 (not (contains!961 (+!187 lt!81202 (tuple2!2807 lt!81204 lt!81206)) lt!81200))))

(assert (=> b!154574 (= lt!81201 (addStillNotContains!72 lt!81202 lt!81204 lt!81206 lt!81200))))

(assert (=> b!154574 (= lt!81200 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!154574 (= lt!81206 (get!1609 (select (arr!2411 (_values!3047 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000) (dynLambda!466 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!154574 (= lt!81204 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!154574 (= lt!81202 call!17203)))

(assert (=> b!154574 (= e!100988 (+!187 call!17203 (tuple2!2807 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000) (get!1609 (select (arr!2411 (_values!3047 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000) (dynLambda!466 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!154575 () Bool)

(assert (=> b!154575 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992))))))))

(assert (=> b!154575 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2688 (_values!3047 (v!3416 (underlying!524 thiss!992))))))))

(declare-fun e!100990 () Bool)

(assert (=> b!154575 (= e!100990 (= (apply!128 lt!81205 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000)) (get!1609 (select (arr!2411 (_values!3047 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000) (dynLambda!466 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!154576 () Bool)

(assert (=> b!154576 (= e!100989 e!100990)))

(assert (=> b!154576 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992))))))))

(declare-fun res!72976 () Bool)

(assert (=> b!154576 (= res!72976 (contains!961 lt!81205 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000)))))

(assert (=> b!154576 (=> (not res!72976) (not e!100990))))

(declare-fun b!154577 () Bool)

(assert (=> b!154577 (= e!100988 call!17203)))

(assert (= (and d!50749 c!29624) b!154569))

(assert (= (and d!50749 (not c!29624)) b!154571))

(assert (= (and b!154571 c!29623) b!154574))

(assert (= (and b!154571 (not c!29623)) b!154577))

(assert (= (or b!154574 b!154577) bm!17200))

(assert (= (and d!50749 res!72975) b!154570))

(assert (= (and b!154570 res!72973) b!154568))

(assert (= (and b!154568 res!72974) b!154573))

(assert (= (and b!154568 c!29621) b!154576))

(assert (= (and b!154568 (not c!29621)) b!154567))

(assert (= (and b!154576 res!72976) b!154575))

(assert (= (and b!154567 c!29622) b!154566))

(assert (= (and b!154567 (not c!29622)) b!154572))

(declare-fun b_lambda!6901 () Bool)

(assert (=> (not b_lambda!6901) (not b!154574)))

(assert (=> b!154574 t!6627))

(declare-fun b_and!9653 () Bool)

(assert (= b_and!9649 (and (=> t!6627 result!4497) b_and!9653)))

(assert (=> b!154574 t!6629))

(declare-fun b_and!9655 () Bool)

(assert (= b_and!9651 (and (=> t!6629 result!4501) b_and!9655)))

(declare-fun b_lambda!6903 () Bool)

(assert (=> (not b_lambda!6903) (not b!154575)))

(assert (=> b!154575 t!6627))

(declare-fun b_and!9657 () Bool)

(assert (= b_and!9653 (and (=> t!6627 result!4497) b_and!9657)))

(assert (=> b!154575 t!6629))

(declare-fun b_and!9659 () Bool)

(assert (= b_and!9655 (and (=> t!6629 result!4501) b_and!9659)))

(assert (=> b!154575 m!188043))

(assert (=> b!154575 m!188043))

(assert (=> b!154575 m!187819))

(assert (=> b!154575 m!188045))

(assert (=> b!154575 m!188047))

(declare-fun m!188623 () Bool)

(assert (=> b!154575 m!188623))

(assert (=> b!154575 m!188047))

(assert (=> b!154575 m!187819))

(declare-fun m!188625 () Bool)

(assert (=> bm!17200 m!188625))

(declare-fun m!188627 () Bool)

(assert (=> b!154570 m!188627))

(assert (=> b!154573 m!188047))

(assert (=> b!154573 m!188047))

(assert (=> b!154573 m!188053))

(declare-fun m!188629 () Bool)

(assert (=> b!154572 m!188629))

(assert (=> b!154566 m!188625))

(assert (=> b!154571 m!188047))

(assert (=> b!154571 m!188047))

(assert (=> b!154571 m!188053))

(assert (=> b!154576 m!188047))

(assert (=> b!154576 m!188047))

(declare-fun m!188631 () Bool)

(assert (=> b!154576 m!188631))

(declare-fun m!188633 () Bool)

(assert (=> b!154574 m!188633))

(declare-fun m!188635 () Bool)

(assert (=> b!154574 m!188635))

(assert (=> b!154574 m!188043))

(assert (=> b!154574 m!187819))

(assert (=> b!154574 m!188045))

(declare-fun m!188637 () Bool)

(assert (=> b!154574 m!188637))

(assert (=> b!154574 m!188047))

(assert (=> b!154574 m!188633))

(assert (=> b!154574 m!187819))

(declare-fun m!188639 () Bool)

(assert (=> b!154574 m!188639))

(assert (=> b!154574 m!188043))

(declare-fun m!188641 () Bool)

(assert (=> d!50749 m!188641))

(assert (=> d!50749 m!187843))

(assert (=> bm!17158 d!50749))

(declare-fun c!29625 () Bool)

(declare-fun d!50751 () Bool)

(assert (=> d!50751 (= c!29625 (and ((_ is Cons!1819) (toList!923 lt!81005)) (= (_1!1413 (h!2428 (toList!923 lt!81005))) (_1!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun e!100992 () Option!188)

(assert (=> d!50751 (= (getValueByKey!182 (toList!923 lt!81005) (_1!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) e!100992)))

(declare-fun b!154580 () Bool)

(declare-fun e!100993 () Option!188)

(assert (=> b!154580 (= e!100993 (getValueByKey!182 (t!6625 (toList!923 lt!81005)) (_1!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun b!154579 () Bool)

(assert (=> b!154579 (= e!100992 e!100993)))

(declare-fun c!29626 () Bool)

(assert (=> b!154579 (= c!29626 (and ((_ is Cons!1819) (toList!923 lt!81005)) (not (= (_1!1413 (h!2428 (toList!923 lt!81005))) (_1!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))))

(declare-fun b!154578 () Bool)

(assert (=> b!154578 (= e!100992 (Some!187 (_2!1413 (h!2428 (toList!923 lt!81005)))))))

(declare-fun b!154581 () Bool)

(assert (=> b!154581 (= e!100993 None!186)))

(assert (= (and d!50751 c!29625) b!154578))

(assert (= (and d!50751 (not c!29625)) b!154579))

(assert (= (and b!154579 c!29626) b!154580))

(assert (= (and b!154579 (not c!29626)) b!154581))

(declare-fun m!188643 () Bool)

(assert (=> b!154580 m!188643))

(assert (=> b!154195 d!50751))

(declare-fun d!50753 () Bool)

(assert (=> d!50753 (arrayContainsKey!0 (_keys!4837 newMap!16) lt!81083 #b00000000000000000000000000000000)))

(declare-fun lt!81209 () Unit!4897)

(declare-fun choose!13 (array!5104 (_ BitVec 64) (_ BitVec 32)) Unit!4897)

(assert (=> d!50753 (= lt!81209 (choose!13 (_keys!4837 newMap!16) lt!81083 #b00000000000000000000000000000000))))

(assert (=> d!50753 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!50753 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4837 newMap!16) lt!81083 #b00000000000000000000000000000000) lt!81209)))

(declare-fun bs!6547 () Bool)

(assert (= bs!6547 d!50753))

(assert (=> bs!6547 m!188191))

(declare-fun m!188645 () Bool)

(assert (=> bs!6547 m!188645))

(assert (=> b!154311 d!50753))

(declare-fun d!50755 () Bool)

(declare-fun res!72981 () Bool)

(declare-fun e!100998 () Bool)

(assert (=> d!50755 (=> res!72981 e!100998)))

(assert (=> d!50755 (= res!72981 (= (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000) lt!81083))))

(assert (=> d!50755 (= (arrayContainsKey!0 (_keys!4837 newMap!16) lt!81083 #b00000000000000000000000000000000) e!100998)))

(declare-fun b!154586 () Bool)

(declare-fun e!100999 () Bool)

(assert (=> b!154586 (= e!100998 e!100999)))

(declare-fun res!72982 () Bool)

(assert (=> b!154586 (=> (not res!72982) (not e!100999))))

(assert (=> b!154586 (= res!72982 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2687 (_keys!4837 newMap!16))))))

(declare-fun b!154587 () Bool)

(assert (=> b!154587 (= e!100999 (arrayContainsKey!0 (_keys!4837 newMap!16) lt!81083 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!50755 (not res!72981)) b!154586))

(assert (= (and b!154586 res!72982) b!154587))

(assert (=> d!50755 m!188035))

(declare-fun m!188647 () Bool)

(assert (=> b!154587 m!188647))

(assert (=> b!154311 d!50755))

(declare-fun b!154600 () Bool)

(declare-fun e!101008 () SeekEntryResult!296)

(declare-fun lt!81218 () SeekEntryResult!296)

(assert (=> b!154600 (= e!101008 (Found!296 (index!3354 lt!81218)))))

(declare-fun b!154601 () Bool)

(declare-fun e!101006 () SeekEntryResult!296)

(assert (=> b!154601 (= e!101006 e!101008)))

(declare-fun lt!81217 () (_ BitVec 64))

(assert (=> b!154601 (= lt!81217 (select (arr!2410 (_keys!4837 newMap!16)) (index!3354 lt!81218)))))

(declare-fun c!29634 () Bool)

(assert (=> b!154601 (= c!29634 (= lt!81217 (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!154602 () Bool)

(declare-fun c!29633 () Bool)

(assert (=> b!154602 (= c!29633 (= lt!81217 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!101007 () SeekEntryResult!296)

(assert (=> b!154602 (= e!101008 e!101007)))

(declare-fun b!154604 () Bool)

(assert (=> b!154604 (= e!101006 Undefined!296)))

(declare-fun b!154605 () Bool)

(assert (=> b!154605 (= e!101007 (MissingZero!296 (index!3354 lt!81218)))))

(declare-fun d!50757 () Bool)

(declare-fun lt!81216 () SeekEntryResult!296)

(assert (=> d!50757 (and (or ((_ is Undefined!296) lt!81216) (not ((_ is Found!296) lt!81216)) (and (bvsge (index!3353 lt!81216) #b00000000000000000000000000000000) (bvslt (index!3353 lt!81216) (size!2687 (_keys!4837 newMap!16))))) (or ((_ is Undefined!296) lt!81216) ((_ is Found!296) lt!81216) (not ((_ is MissingZero!296) lt!81216)) (and (bvsge (index!3352 lt!81216) #b00000000000000000000000000000000) (bvslt (index!3352 lt!81216) (size!2687 (_keys!4837 newMap!16))))) (or ((_ is Undefined!296) lt!81216) ((_ is Found!296) lt!81216) ((_ is MissingZero!296) lt!81216) (not ((_ is MissingVacant!296) lt!81216)) (and (bvsge (index!3355 lt!81216) #b00000000000000000000000000000000) (bvslt (index!3355 lt!81216) (size!2687 (_keys!4837 newMap!16))))) (or ((_ is Undefined!296) lt!81216) (ite ((_ is Found!296) lt!81216) (= (select (arr!2410 (_keys!4837 newMap!16)) (index!3353 lt!81216)) (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!296) lt!81216) (= (select (arr!2410 (_keys!4837 newMap!16)) (index!3352 lt!81216)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!296) lt!81216) (= (select (arr!2410 (_keys!4837 newMap!16)) (index!3355 lt!81216)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!50757 (= lt!81216 e!101006)))

(declare-fun c!29635 () Bool)

(assert (=> d!50757 (= c!29635 (and ((_ is Intermediate!296) lt!81218) (undefined!1108 lt!81218)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!5104 (_ BitVec 32)) SeekEntryResult!296)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!50757 (= lt!81218 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000) (mask!7468 newMap!16)) (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000) (_keys!4837 newMap!16) (mask!7468 newMap!16)))))

(assert (=> d!50757 (validMask!0 (mask!7468 newMap!16))))

(assert (=> d!50757 (= (seekEntryOrOpen!0 (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000) (_keys!4837 newMap!16) (mask!7468 newMap!16)) lt!81216)))

(declare-fun b!154603 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!5104 (_ BitVec 32)) SeekEntryResult!296)

(assert (=> b!154603 (= e!101007 (seekKeyOrZeroReturnVacant!0 (x!17032 lt!81218) (index!3354 lt!81218) (index!3354 lt!81218) (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000) (_keys!4837 newMap!16) (mask!7468 newMap!16)))))

(assert (= (and d!50757 c!29635) b!154604))

(assert (= (and d!50757 (not c!29635)) b!154601))

(assert (= (and b!154601 c!29634) b!154600))

(assert (= (and b!154601 (not c!29634)) b!154602))

(assert (= (and b!154602 c!29633) b!154605))

(assert (= (and b!154602 (not c!29633)) b!154603))

(declare-fun m!188649 () Bool)

(assert (=> b!154601 m!188649))

(declare-fun m!188651 () Bool)

(assert (=> d!50757 m!188651))

(assert (=> d!50757 m!188123))

(assert (=> d!50757 m!188035))

(declare-fun m!188653 () Bool)

(assert (=> d!50757 m!188653))

(declare-fun m!188655 () Bool)

(assert (=> d!50757 m!188655))

(declare-fun m!188657 () Bool)

(assert (=> d!50757 m!188657))

(assert (=> d!50757 m!188653))

(assert (=> d!50757 m!188035))

(declare-fun m!188659 () Bool)

(assert (=> d!50757 m!188659))

(assert (=> b!154603 m!188035))

(declare-fun m!188661 () Bool)

(assert (=> b!154603 m!188661))

(assert (=> b!154311 d!50757))

(assert (=> b!154262 d!50687))

(declare-fun d!50759 () Bool)

(declare-fun lt!81219 () Bool)

(assert (=> d!50759 (= lt!81219 (select (content!144 (toList!923 lt!81046)) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))

(declare-fun e!101010 () Bool)

(assert (=> d!50759 (= lt!81219 e!101010)))

(declare-fun res!72983 () Bool)

(assert (=> d!50759 (=> (not res!72983) (not e!101010))))

(assert (=> d!50759 (= res!72983 ((_ is Cons!1819) (toList!923 lt!81046)))))

(assert (=> d!50759 (= (contains!962 (toList!923 lt!81046) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!81219)))

(declare-fun b!154606 () Bool)

(declare-fun e!101009 () Bool)

(assert (=> b!154606 (= e!101010 e!101009)))

(declare-fun res!72984 () Bool)

(assert (=> b!154606 (=> res!72984 e!101009)))

(assert (=> b!154606 (= res!72984 (= (h!2428 (toList!923 lt!81046)) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))

(declare-fun b!154607 () Bool)

(assert (=> b!154607 (= e!101009 (contains!962 (t!6625 (toList!923 lt!81046)) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))

(assert (= (and d!50759 res!72983) b!154606))

(assert (= (and b!154606 (not res!72984)) b!154607))

(declare-fun m!188663 () Bool)

(assert (=> d!50759 m!188663))

(declare-fun m!188665 () Bool)

(assert (=> d!50759 m!188665))

(declare-fun m!188667 () Bool)

(assert (=> b!154607 m!188667))

(assert (=> b!154252 d!50759))

(declare-fun d!50761 () Bool)

(assert (=> d!50761 (= (get!1610 (getValueByKey!182 (toList!923 lt!80934) (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))) (v!3418 (getValueByKey!182 (toList!923 lt!80934) (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (=> d!50545 d!50761))

(assert (=> d!50545 d!50685))

(declare-fun d!50763 () Bool)

(declare-fun e!101011 () Bool)

(assert (=> d!50763 e!101011))

(declare-fun res!72985 () Bool)

(assert (=> d!50763 (=> (not res!72985) (not e!101011))))

(declare-fun lt!81222 () ListLongMap!1815)

(assert (=> d!50763 (= res!72985 (contains!961 lt!81222 (_1!1413 (ite (or c!29521 c!29522) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun lt!81221 () List!1823)

(assert (=> d!50763 (= lt!81222 (ListLongMap!1816 lt!81221))))

(declare-fun lt!81223 () Unit!4897)

(declare-fun lt!81220 () Unit!4897)

(assert (=> d!50763 (= lt!81223 lt!81220)))

(assert (=> d!50763 (= (getValueByKey!182 lt!81221 (_1!1413 (ite (or c!29521 c!29522) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))) (Some!187 (_2!1413 (ite (or c!29521 c!29522) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(assert (=> d!50763 (= lt!81220 (lemmaContainsTupThenGetReturnValue!97 lt!81221 (_1!1413 (ite (or c!29521 c!29522) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) (_2!1413 (ite (or c!29521 c!29522) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(assert (=> d!50763 (= lt!81221 (insertStrictlySorted!99 (toList!923 (ite c!29521 call!17162 (ite c!29522 call!17166 call!17161))) (_1!1413 (ite (or c!29521 c!29522) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) (_2!1413 (ite (or c!29521 c!29522) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(assert (=> d!50763 (= (+!187 (ite c!29521 call!17162 (ite c!29522 call!17166 call!17161)) (ite (or c!29521 c!29522) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!81222)))

(declare-fun b!154608 () Bool)

(declare-fun res!72986 () Bool)

(assert (=> b!154608 (=> (not res!72986) (not e!101011))))

(assert (=> b!154608 (= res!72986 (= (getValueByKey!182 (toList!923 lt!81222) (_1!1413 (ite (or c!29521 c!29522) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))) (Some!187 (_2!1413 (ite (or c!29521 c!29522) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))))

(declare-fun b!154609 () Bool)

(assert (=> b!154609 (= e!101011 (contains!962 (toList!923 lt!81222) (ite (or c!29521 c!29522) (tuple2!2807 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (= (and d!50763 res!72985) b!154608))

(assert (= (and b!154608 res!72986) b!154609))

(declare-fun m!188669 () Bool)

(assert (=> d!50763 m!188669))

(declare-fun m!188671 () Bool)

(assert (=> d!50763 m!188671))

(declare-fun m!188673 () Bool)

(assert (=> d!50763 m!188673))

(declare-fun m!188675 () Bool)

(assert (=> d!50763 m!188675))

(declare-fun m!188677 () Bool)

(assert (=> b!154608 m!188677))

(declare-fun m!188679 () Bool)

(assert (=> b!154609 m!188679))

(assert (=> bm!17162 d!50763))

(declare-fun d!50765 () Bool)

(declare-fun e!101012 () Bool)

(assert (=> d!50765 e!101012))

(declare-fun res!72987 () Bool)

(assert (=> d!50765 (=> res!72987 e!101012)))

(declare-fun lt!81225 () Bool)

(assert (=> d!50765 (= res!72987 (not lt!81225))))

(declare-fun lt!81224 () Bool)

(assert (=> d!50765 (= lt!81225 lt!81224)))

(declare-fun lt!81227 () Unit!4897)

(declare-fun e!101013 () Unit!4897)

(assert (=> d!50765 (= lt!81227 e!101013)))

(declare-fun c!29636 () Bool)

(assert (=> d!50765 (= c!29636 lt!81224)))

(assert (=> d!50765 (= lt!81224 (containsKey!186 (toList!923 lt!81005) (_1!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (=> d!50765 (= (contains!961 lt!81005 (_1!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!81225)))

(declare-fun b!154610 () Bool)

(declare-fun lt!81226 () Unit!4897)

(assert (=> b!154610 (= e!101013 lt!81226)))

(assert (=> b!154610 (= lt!81226 (lemmaContainsKeyImpliesGetValueByKeyDefined!135 (toList!923 lt!81005) (_1!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (=> b!154610 (isDefined!136 (getValueByKey!182 (toList!923 lt!81005) (_1!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun b!154611 () Bool)

(declare-fun Unit!4917 () Unit!4897)

(assert (=> b!154611 (= e!101013 Unit!4917)))

(declare-fun b!154612 () Bool)

(assert (=> b!154612 (= e!101012 (isDefined!136 (getValueByKey!182 (toList!923 lt!81005) (_1!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(assert (= (and d!50765 c!29636) b!154610))

(assert (= (and d!50765 (not c!29636)) b!154611))

(assert (= (and d!50765 (not res!72987)) b!154612))

(declare-fun m!188681 () Bool)

(assert (=> d!50765 m!188681))

(declare-fun m!188683 () Bool)

(assert (=> b!154610 m!188683))

(assert (=> b!154610 m!187987))

(assert (=> b!154610 m!187987))

(declare-fun m!188685 () Bool)

(assert (=> b!154610 m!188685))

(assert (=> b!154612 m!187987))

(assert (=> b!154612 m!187987))

(assert (=> b!154612 m!188685))

(assert (=> d!50539 d!50765))

(declare-fun d!50767 () Bool)

(declare-fun c!29637 () Bool)

(assert (=> d!50767 (= c!29637 (and ((_ is Cons!1819) lt!81004) (= (_1!1413 (h!2428 lt!81004)) (_1!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun e!101014 () Option!188)

(assert (=> d!50767 (= (getValueByKey!182 lt!81004 (_1!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) e!101014)))

(declare-fun b!154615 () Bool)

(declare-fun e!101015 () Option!188)

(assert (=> b!154615 (= e!101015 (getValueByKey!182 (t!6625 lt!81004) (_1!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun b!154614 () Bool)

(assert (=> b!154614 (= e!101014 e!101015)))

(declare-fun c!29638 () Bool)

(assert (=> b!154614 (= c!29638 (and ((_ is Cons!1819) lt!81004) (not (= (_1!1413 (h!2428 lt!81004)) (_1!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))))

(declare-fun b!154613 () Bool)

(assert (=> b!154613 (= e!101014 (Some!187 (_2!1413 (h!2428 lt!81004))))))

(declare-fun b!154616 () Bool)

(assert (=> b!154616 (= e!101015 None!186)))

(assert (= (and d!50767 c!29637) b!154613))

(assert (= (and d!50767 (not c!29637)) b!154614))

(assert (= (and b!154614 c!29638) b!154615))

(assert (= (and b!154614 (not c!29638)) b!154616))

(declare-fun m!188687 () Bool)

(assert (=> b!154615 m!188687))

(assert (=> d!50539 d!50767))

(declare-fun d!50769 () Bool)

(assert (=> d!50769 (= (getValueByKey!182 lt!81004 (_1!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) (Some!187 (_2!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun lt!81228 () Unit!4897)

(assert (=> d!50769 (= lt!81228 (choose!928 lt!81004 (_1!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun e!101016 () Bool)

(assert (=> d!50769 e!101016))

(declare-fun res!72988 () Bool)

(assert (=> d!50769 (=> (not res!72988) (not e!101016))))

(assert (=> d!50769 (= res!72988 (isStrictlySorted!325 lt!81004))))

(assert (=> d!50769 (= (lemmaContainsTupThenGetReturnValue!97 lt!81004 (_1!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!81228)))

(declare-fun b!154617 () Bool)

(declare-fun res!72989 () Bool)

(assert (=> b!154617 (=> (not res!72989) (not e!101016))))

(assert (=> b!154617 (= res!72989 (containsKey!186 lt!81004 (_1!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun b!154618 () Bool)

(assert (=> b!154618 (= e!101016 (contains!962 lt!81004 (tuple2!2807 (_1!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(assert (= (and d!50769 res!72988) b!154617))

(assert (= (and b!154617 res!72989) b!154618))

(assert (=> d!50769 m!187981))

(declare-fun m!188689 () Bool)

(assert (=> d!50769 m!188689))

(declare-fun m!188691 () Bool)

(assert (=> d!50769 m!188691))

(declare-fun m!188693 () Bool)

(assert (=> b!154617 m!188693))

(declare-fun m!188695 () Bool)

(assert (=> b!154618 m!188695))

(assert (=> d!50539 d!50769))

(declare-fun e!101019 () Bool)

(declare-fun lt!81229 () List!1823)

(declare-fun b!154619 () Bool)

(assert (=> b!154619 (= e!101019 (contains!962 lt!81229 (tuple2!2807 (_1!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun bm!17201 () Bool)

(declare-fun call!17205 () List!1823)

(declare-fun call!17206 () List!1823)

(assert (=> bm!17201 (= call!17205 call!17206)))

(declare-fun b!154620 () Bool)

(declare-fun e!101018 () List!1823)

(declare-fun call!17204 () List!1823)

(assert (=> b!154620 (= e!101018 call!17204)))

(declare-fun b!154621 () Bool)

(declare-fun c!29642 () Bool)

(declare-fun e!101021 () List!1823)

(declare-fun c!29641 () Bool)

(assert (=> b!154621 (= e!101021 (ite c!29641 (t!6625 (toList!923 lt!80924)) (ite c!29642 (Cons!1819 (h!2428 (toList!923 lt!80924)) (t!6625 (toList!923 lt!80924))) Nil!1820)))))

(declare-fun b!154622 () Bool)

(declare-fun e!101017 () List!1823)

(assert (=> b!154622 (= e!101017 call!17205)))

(declare-fun b!154623 () Bool)

(declare-fun e!101020 () List!1823)

(assert (=> b!154623 (= e!101020 call!17206)))

(declare-fun d!50771 () Bool)

(assert (=> d!50771 e!101019))

(declare-fun res!72990 () Bool)

(assert (=> d!50771 (=> (not res!72990) (not e!101019))))

(assert (=> d!50771 (= res!72990 (isStrictlySorted!325 lt!81229))))

(assert (=> d!50771 (= lt!81229 e!101018)))

(declare-fun c!29640 () Bool)

(assert (=> d!50771 (= c!29640 (and ((_ is Cons!1819) (toList!923 lt!80924)) (bvslt (_1!1413 (h!2428 (toList!923 lt!80924))) (_1!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(assert (=> d!50771 (isStrictlySorted!325 (toList!923 lt!80924))))

(assert (=> d!50771 (= (insertStrictlySorted!99 (toList!923 lt!80924) (_1!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!81229)))

(declare-fun b!154624 () Bool)

(assert (=> b!154624 (= c!29642 (and ((_ is Cons!1819) (toList!923 lt!80924)) (bvsgt (_1!1413 (h!2428 (toList!923 lt!80924))) (_1!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(assert (=> b!154624 (= e!101020 e!101017)))

(declare-fun b!154625 () Bool)

(assert (=> b!154625 (= e!101018 e!101020)))

(assert (=> b!154625 (= c!29641 (and ((_ is Cons!1819) (toList!923 lt!80924)) (= (_1!1413 (h!2428 (toList!923 lt!80924))) (_1!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun bm!17202 () Bool)

(assert (=> bm!17202 (= call!17206 call!17204)))

(declare-fun b!154626 () Bool)

(assert (=> b!154626 (= e!101021 (insertStrictlySorted!99 (t!6625 (toList!923 lt!80924)) (_1!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun b!154627 () Bool)

(assert (=> b!154627 (= e!101017 call!17205)))

(declare-fun b!154628 () Bool)

(declare-fun res!72991 () Bool)

(assert (=> b!154628 (=> (not res!72991) (not e!101019))))

(assert (=> b!154628 (= res!72991 (containsKey!186 lt!81229 (_1!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun bm!17203 () Bool)

(assert (=> bm!17203 (= call!17204 ($colon$colon!95 e!101021 (ite c!29640 (h!2428 (toList!923 lt!80924)) (tuple2!2807 (_1!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))))

(declare-fun c!29639 () Bool)

(assert (=> bm!17203 (= c!29639 c!29640)))

(assert (= (and d!50771 c!29640) b!154620))

(assert (= (and d!50771 (not c!29640)) b!154625))

(assert (= (and b!154625 c!29641) b!154623))

(assert (= (and b!154625 (not c!29641)) b!154624))

(assert (= (and b!154624 c!29642) b!154622))

(assert (= (and b!154624 (not c!29642)) b!154627))

(assert (= (or b!154622 b!154627) bm!17201))

(assert (= (or b!154623 bm!17201) bm!17202))

(assert (= (or b!154620 bm!17202) bm!17203))

(assert (= (and bm!17203 c!29639) b!154626))

(assert (= (and bm!17203 (not c!29639)) b!154621))

(assert (= (and d!50771 res!72990) b!154628))

(assert (= (and b!154628 res!72991) b!154619))

(declare-fun m!188697 () Bool)

(assert (=> bm!17203 m!188697))

(declare-fun m!188699 () Bool)

(assert (=> b!154619 m!188699))

(declare-fun m!188701 () Bool)

(assert (=> d!50771 m!188701))

(declare-fun m!188703 () Bool)

(assert (=> d!50771 m!188703))

(declare-fun m!188705 () Bool)

(assert (=> b!154628 m!188705))

(declare-fun m!188707 () Bool)

(assert (=> b!154626 m!188707))

(assert (=> d!50539 d!50771))

(declare-fun d!50773 () Bool)

(assert (=> d!50773 (isDefined!136 (getValueByKey!182 (toList!923 (+!187 lt!80932 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!80944))))

(declare-fun lt!81230 () Unit!4897)

(assert (=> d!50773 (= lt!81230 (choose!927 (toList!923 (+!187 lt!80932 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!80944))))

(declare-fun e!101022 () Bool)

(assert (=> d!50773 e!101022))

(declare-fun res!72992 () Bool)

(assert (=> d!50773 (=> (not res!72992) (not e!101022))))

(assert (=> d!50773 (= res!72992 (isStrictlySorted!325 (toList!923 (+!187 lt!80932 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(assert (=> d!50773 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!135 (toList!923 (+!187 lt!80932 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!80944) lt!81230)))

(declare-fun b!154629 () Bool)

(assert (=> b!154629 (= e!101022 (containsKey!186 (toList!923 (+!187 lt!80932 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!80944))))

(assert (= (and d!50773 res!72992) b!154629))

(assert (=> d!50773 m!187959))

(assert (=> d!50773 m!187959))

(assert (=> d!50773 m!187961))

(declare-fun m!188709 () Bool)

(assert (=> d!50773 m!188709))

(declare-fun m!188711 () Bool)

(assert (=> d!50773 m!188711))

(assert (=> b!154629 m!187955))

(assert (=> b!154190 d!50773))

(assert (=> b!154190 d!50593))

(assert (=> b!154190 d!50595))

(assert (=> b!154224 d!50673))

(declare-fun d!50775 () Bool)

(declare-fun e!101023 () Bool)

(assert (=> d!50775 e!101023))

(declare-fun res!72993 () Bool)

(assert (=> d!50775 (=> res!72993 e!101023)))

(declare-fun lt!81232 () Bool)

(assert (=> d!50775 (= res!72993 (not lt!81232))))

(declare-fun lt!81231 () Bool)

(assert (=> d!50775 (= lt!81232 lt!81231)))

(declare-fun lt!81234 () Unit!4897)

(declare-fun e!101024 () Unit!4897)

(assert (=> d!50775 (= lt!81234 e!101024)))

(declare-fun c!29643 () Bool)

(assert (=> d!50775 (= c!29643 lt!81231)))

(assert (=> d!50775 (= lt!81231 (containsKey!186 (toList!923 lt!81046) (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (=> d!50775 (= (contains!961 lt!81046 (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!81232)))

(declare-fun b!154630 () Bool)

(declare-fun lt!81233 () Unit!4897)

(assert (=> b!154630 (= e!101024 lt!81233)))

(assert (=> b!154630 (= lt!81233 (lemmaContainsKeyImpliesGetValueByKeyDefined!135 (toList!923 lt!81046) (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (=> b!154630 (isDefined!136 (getValueByKey!182 (toList!923 lt!81046) (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun b!154631 () Bool)

(declare-fun Unit!4918 () Unit!4897)

(assert (=> b!154631 (= e!101024 Unit!4918)))

(declare-fun b!154632 () Bool)

(assert (=> b!154632 (= e!101023 (isDefined!136 (getValueByKey!182 (toList!923 lt!81046) (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(assert (= (and d!50775 c!29643) b!154630))

(assert (= (and d!50775 (not c!29643)) b!154631))

(assert (= (and d!50775 (not res!72993)) b!154632))

(declare-fun m!188713 () Bool)

(assert (=> d!50775 m!188713))

(declare-fun m!188715 () Bool)

(assert (=> b!154630 m!188715))

(assert (=> b!154630 m!188117))

(assert (=> b!154630 m!188117))

(declare-fun m!188717 () Bool)

(assert (=> b!154630 m!188717))

(assert (=> b!154632 m!188117))

(assert (=> b!154632 m!188117))

(assert (=> b!154632 m!188717))

(assert (=> d!50567 d!50775))

(declare-fun d!50777 () Bool)

(declare-fun c!29644 () Bool)

(assert (=> d!50777 (= c!29644 (and ((_ is Cons!1819) lt!81045) (= (_1!1413 (h!2428 lt!81045)) (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun e!101025 () Option!188)

(assert (=> d!50777 (= (getValueByKey!182 lt!81045 (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) e!101025)))

(declare-fun b!154635 () Bool)

(declare-fun e!101026 () Option!188)

(assert (=> b!154635 (= e!101026 (getValueByKey!182 (t!6625 lt!81045) (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun b!154634 () Bool)

(assert (=> b!154634 (= e!101025 e!101026)))

(declare-fun c!29645 () Bool)

(assert (=> b!154634 (= c!29645 (and ((_ is Cons!1819) lt!81045) (not (= (_1!1413 (h!2428 lt!81045)) (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))))

(declare-fun b!154633 () Bool)

(assert (=> b!154633 (= e!101025 (Some!187 (_2!1413 (h!2428 lt!81045))))))

(declare-fun b!154636 () Bool)

(assert (=> b!154636 (= e!101026 None!186)))

(assert (= (and d!50777 c!29644) b!154633))

(assert (= (and d!50777 (not c!29644)) b!154634))

(assert (= (and b!154634 c!29645) b!154635))

(assert (= (and b!154634 (not c!29645)) b!154636))

(declare-fun m!188719 () Bool)

(assert (=> b!154635 m!188719))

(assert (=> d!50567 d!50777))

(declare-fun d!50779 () Bool)

(assert (=> d!50779 (= (getValueByKey!182 lt!81045 (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) (Some!187 (_2!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun lt!81235 () Unit!4897)

(assert (=> d!50779 (= lt!81235 (choose!928 lt!81045 (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun e!101027 () Bool)

(assert (=> d!50779 e!101027))

(declare-fun res!72994 () Bool)

(assert (=> d!50779 (=> (not res!72994) (not e!101027))))

(assert (=> d!50779 (= res!72994 (isStrictlySorted!325 lt!81045))))

(assert (=> d!50779 (= (lemmaContainsTupThenGetReturnValue!97 lt!81045 (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!81235)))

(declare-fun b!154637 () Bool)

(declare-fun res!72995 () Bool)

(assert (=> b!154637 (=> (not res!72995) (not e!101027))))

(assert (=> b!154637 (= res!72995 (containsKey!186 lt!81045 (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun b!154638 () Bool)

(assert (=> b!154638 (= e!101027 (contains!962 lt!81045 (tuple2!2807 (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(assert (= (and d!50779 res!72994) b!154637))

(assert (= (and b!154637 res!72995) b!154638))

(assert (=> d!50779 m!188111))

(declare-fun m!188721 () Bool)

(assert (=> d!50779 m!188721))

(declare-fun m!188723 () Bool)

(assert (=> d!50779 m!188723))

(declare-fun m!188725 () Bool)

(assert (=> b!154637 m!188725))

(declare-fun m!188727 () Bool)

(assert (=> b!154638 m!188727))

(assert (=> d!50567 d!50779))

(declare-fun b!154639 () Bool)

(declare-fun e!101030 () Bool)

(declare-fun lt!81236 () List!1823)

(assert (=> b!154639 (= e!101030 (contains!962 lt!81236 (tuple2!2807 (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun bm!17204 () Bool)

(declare-fun call!17208 () List!1823)

(declare-fun call!17209 () List!1823)

(assert (=> bm!17204 (= call!17208 call!17209)))

(declare-fun b!154640 () Bool)

(declare-fun e!101029 () List!1823)

(declare-fun call!17207 () List!1823)

(assert (=> b!154640 (= e!101029 call!17207)))

(declare-fun e!101032 () List!1823)

(declare-fun c!29649 () Bool)

(declare-fun c!29648 () Bool)

(declare-fun b!154641 () Bool)

(assert (=> b!154641 (= e!101032 (ite c!29648 (t!6625 (toList!923 call!17151)) (ite c!29649 (Cons!1819 (h!2428 (toList!923 call!17151)) (t!6625 (toList!923 call!17151))) Nil!1820)))))

(declare-fun b!154642 () Bool)

(declare-fun e!101028 () List!1823)

(assert (=> b!154642 (= e!101028 call!17208)))

(declare-fun b!154643 () Bool)

(declare-fun e!101031 () List!1823)

(assert (=> b!154643 (= e!101031 call!17209)))

(declare-fun d!50781 () Bool)

(assert (=> d!50781 e!101030))

(declare-fun res!72996 () Bool)

(assert (=> d!50781 (=> (not res!72996) (not e!101030))))

(assert (=> d!50781 (= res!72996 (isStrictlySorted!325 lt!81236))))

(assert (=> d!50781 (= lt!81236 e!101029)))

(declare-fun c!29647 () Bool)

(assert (=> d!50781 (= c!29647 (and ((_ is Cons!1819) (toList!923 call!17151)) (bvslt (_1!1413 (h!2428 (toList!923 call!17151))) (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(assert (=> d!50781 (isStrictlySorted!325 (toList!923 call!17151))))

(assert (=> d!50781 (= (insertStrictlySorted!99 (toList!923 call!17151) (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!81236)))

(declare-fun b!154644 () Bool)

(assert (=> b!154644 (= c!29649 (and ((_ is Cons!1819) (toList!923 call!17151)) (bvsgt (_1!1413 (h!2428 (toList!923 call!17151))) (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(assert (=> b!154644 (= e!101031 e!101028)))

(declare-fun b!154645 () Bool)

(assert (=> b!154645 (= e!101029 e!101031)))

(assert (=> b!154645 (= c!29648 (and ((_ is Cons!1819) (toList!923 call!17151)) (= (_1!1413 (h!2428 (toList!923 call!17151))) (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun bm!17205 () Bool)

(assert (=> bm!17205 (= call!17209 call!17207)))

(declare-fun b!154646 () Bool)

(assert (=> b!154646 (= e!101032 (insertStrictlySorted!99 (t!6625 (toList!923 call!17151)) (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun b!154647 () Bool)

(assert (=> b!154647 (= e!101028 call!17208)))

(declare-fun b!154648 () Bool)

(declare-fun res!72997 () Bool)

(assert (=> b!154648 (=> (not res!72997) (not e!101030))))

(assert (=> b!154648 (= res!72997 (containsKey!186 lt!81236 (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun bm!17206 () Bool)

(assert (=> bm!17206 (= call!17207 ($colon$colon!95 e!101032 (ite c!29647 (h!2428 (toList!923 call!17151)) (tuple2!2807 (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))))

(declare-fun c!29646 () Bool)

(assert (=> bm!17206 (= c!29646 c!29647)))

(assert (= (and d!50781 c!29647) b!154640))

(assert (= (and d!50781 (not c!29647)) b!154645))

(assert (= (and b!154645 c!29648) b!154643))

(assert (= (and b!154645 (not c!29648)) b!154644))

(assert (= (and b!154644 c!29649) b!154642))

(assert (= (and b!154644 (not c!29649)) b!154647))

(assert (= (or b!154642 b!154647) bm!17204))

(assert (= (or b!154643 bm!17204) bm!17205))

(assert (= (or b!154640 bm!17205) bm!17206))

(assert (= (and bm!17206 c!29646) b!154646))

(assert (= (and bm!17206 (not c!29646)) b!154641))

(assert (= (and d!50781 res!72996) b!154648))

(assert (= (and b!154648 res!72997) b!154639))

(declare-fun m!188729 () Bool)

(assert (=> bm!17206 m!188729))

(declare-fun m!188731 () Bool)

(assert (=> b!154639 m!188731))

(declare-fun m!188733 () Bool)

(assert (=> d!50781 m!188733))

(declare-fun m!188735 () Bool)

(assert (=> d!50781 m!188735))

(declare-fun m!188737 () Bool)

(assert (=> b!154648 m!188737))

(declare-fun m!188739 () Bool)

(assert (=> b!154646 m!188739))

(assert (=> d!50567 d!50781))

(declare-fun d!50783 () Bool)

(declare-fun e!101033 () Bool)

(assert (=> d!50783 e!101033))

(declare-fun res!72998 () Bool)

(assert (=> d!50783 (=> res!72998 e!101033)))

(declare-fun lt!81238 () Bool)

(assert (=> d!50783 (= res!72998 (not lt!81238))))

(declare-fun lt!81237 () Bool)

(assert (=> d!50783 (= lt!81238 lt!81237)))

(declare-fun lt!81240 () Unit!4897)

(declare-fun e!101034 () Unit!4897)

(assert (=> d!50783 (= lt!81240 e!101034)))

(declare-fun c!29650 () Bool)

(assert (=> d!50783 (= c!29650 lt!81237)))

(assert (=> d!50783 (= lt!81237 (containsKey!186 (toList!923 lt!81066) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!50783 (= (contains!961 lt!81066 #b0000000000000000000000000000000000000000000000000000000000000000) lt!81238)))

(declare-fun b!154649 () Bool)

(declare-fun lt!81239 () Unit!4897)

(assert (=> b!154649 (= e!101034 lt!81239)))

(assert (=> b!154649 (= lt!81239 (lemmaContainsKeyImpliesGetValueByKeyDefined!135 (toList!923 lt!81066) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!154649 (isDefined!136 (getValueByKey!182 (toList!923 lt!81066) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!154650 () Bool)

(declare-fun Unit!4919 () Unit!4897)

(assert (=> b!154650 (= e!101034 Unit!4919)))

(declare-fun b!154651 () Bool)

(assert (=> b!154651 (= e!101033 (isDefined!136 (getValueByKey!182 (toList!923 lt!81066) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!50783 c!29650) b!154649))

(assert (= (and d!50783 (not c!29650)) b!154650))

(assert (= (and d!50783 (not res!72998)) b!154651))

(declare-fun m!188741 () Bool)

(assert (=> d!50783 m!188741))

(declare-fun m!188743 () Bool)

(assert (=> b!154649 m!188743))

(declare-fun m!188745 () Bool)

(assert (=> b!154649 m!188745))

(assert (=> b!154649 m!188745))

(declare-fun m!188747 () Bool)

(assert (=> b!154649 m!188747))

(assert (=> b!154651 m!188745))

(assert (=> b!154651 m!188745))

(assert (=> b!154651 m!188747))

(assert (=> bm!17171 d!50783))

(declare-fun d!50785 () Bool)

(declare-fun e!101035 () Bool)

(assert (=> d!50785 e!101035))

(declare-fun res!72999 () Bool)

(assert (=> d!50785 (=> res!72999 e!101035)))

(declare-fun lt!81242 () Bool)

(assert (=> d!50785 (= res!72999 (not lt!81242))))

(declare-fun lt!81241 () Bool)

(assert (=> d!50785 (= lt!81242 lt!81241)))

(declare-fun lt!81244 () Unit!4897)

(declare-fun e!101036 () Unit!4897)

(assert (=> d!50785 (= lt!81244 e!101036)))

(declare-fun c!29651 () Bool)

(assert (=> d!50785 (= c!29651 lt!81241)))

(assert (=> d!50785 (= lt!81241 (containsKey!186 (toList!923 lt!81029) (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000)))))

(assert (=> d!50785 (= (contains!961 lt!81029 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000)) lt!81242)))

(declare-fun b!154652 () Bool)

(declare-fun lt!81243 () Unit!4897)

(assert (=> b!154652 (= e!101036 lt!81243)))

(assert (=> b!154652 (= lt!81243 (lemmaContainsKeyImpliesGetValueByKeyDefined!135 (toList!923 lt!81029) (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000)))))

(assert (=> b!154652 (isDefined!136 (getValueByKey!182 (toList!923 lt!81029) (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!154653 () Bool)

(declare-fun Unit!4920 () Unit!4897)

(assert (=> b!154653 (= e!101036 Unit!4920)))

(declare-fun b!154654 () Bool)

(assert (=> b!154654 (= e!101035 (isDefined!136 (getValueByKey!182 (toList!923 lt!81029) (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000))))))

(assert (= (and d!50785 c!29651) b!154652))

(assert (= (and d!50785 (not c!29651)) b!154653))

(assert (= (and d!50785 (not res!72999)) b!154654))

(assert (=> d!50785 m!188047))

(declare-fun m!188749 () Bool)

(assert (=> d!50785 m!188749))

(assert (=> b!154652 m!188047))

(declare-fun m!188751 () Bool)

(assert (=> b!154652 m!188751))

(assert (=> b!154652 m!188047))

(assert (=> b!154652 m!188615))

(assert (=> b!154652 m!188615))

(declare-fun m!188753 () Bool)

(assert (=> b!154652 m!188753))

(assert (=> b!154654 m!188047))

(assert (=> b!154654 m!188615))

(assert (=> b!154654 m!188615))

(assert (=> b!154654 m!188753))

(assert (=> b!154235 d!50785))

(declare-fun d!50787 () Bool)

(declare-fun e!101037 () Bool)

(assert (=> d!50787 e!101037))

(declare-fun res!73000 () Bool)

(assert (=> d!50787 (=> (not res!73000) (not e!101037))))

(declare-fun lt!81247 () ListLongMap!1815)

(assert (=> d!50787 (= res!73000 (contains!961 lt!81247 (_1!1413 (tuple2!2807 lt!81030 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun lt!81246 () List!1823)

(assert (=> d!50787 (= lt!81247 (ListLongMap!1816 lt!81246))))

(declare-fun lt!81248 () Unit!4897)

(declare-fun lt!81245 () Unit!4897)

(assert (=> d!50787 (= lt!81248 lt!81245)))

(assert (=> d!50787 (= (getValueByKey!182 lt!81246 (_1!1413 (tuple2!2807 lt!81030 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) (Some!187 (_2!1413 (tuple2!2807 lt!81030 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (=> d!50787 (= lt!81245 (lemmaContainsTupThenGetReturnValue!97 lt!81246 (_1!1413 (tuple2!2807 lt!81030 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!81030 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (=> d!50787 (= lt!81246 (insertStrictlySorted!99 (toList!923 lt!81019) (_1!1413 (tuple2!2807 lt!81030 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!81030 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (=> d!50787 (= (+!187 lt!81019 (tuple2!2807 lt!81030 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!81247)))

(declare-fun b!154655 () Bool)

(declare-fun res!73001 () Bool)

(assert (=> b!154655 (=> (not res!73001) (not e!101037))))

(assert (=> b!154655 (= res!73001 (= (getValueByKey!182 (toList!923 lt!81247) (_1!1413 (tuple2!2807 lt!81030 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) (Some!187 (_2!1413 (tuple2!2807 lt!81030 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun b!154656 () Bool)

(assert (=> b!154656 (= e!101037 (contains!962 (toList!923 lt!81247) (tuple2!2807 lt!81030 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))))

(assert (= (and d!50787 res!73000) b!154655))

(assert (= (and b!154655 res!73001) b!154656))

(declare-fun m!188755 () Bool)

(assert (=> d!50787 m!188755))

(declare-fun m!188757 () Bool)

(assert (=> d!50787 m!188757))

(declare-fun m!188759 () Bool)

(assert (=> d!50787 m!188759))

(declare-fun m!188761 () Bool)

(assert (=> d!50787 m!188761))

(declare-fun m!188763 () Bool)

(assert (=> b!154655 m!188763))

(declare-fun m!188765 () Bool)

(assert (=> b!154656 m!188765))

(assert (=> b!154233 d!50787))

(declare-fun d!50789 () Bool)

(declare-fun e!101038 () Bool)

(assert (=> d!50789 e!101038))

(declare-fun res!73002 () Bool)

(assert (=> d!50789 (=> (not res!73002) (not e!101038))))

(declare-fun lt!81251 () ListLongMap!1815)

(assert (=> d!50789 (= res!73002 (contains!961 lt!81251 (_1!1413 (tuple2!2807 lt!81021 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun lt!81250 () List!1823)

(assert (=> d!50789 (= lt!81251 (ListLongMap!1816 lt!81250))))

(declare-fun lt!81252 () Unit!4897)

(declare-fun lt!81249 () Unit!4897)

(assert (=> d!50789 (= lt!81252 lt!81249)))

(assert (=> d!50789 (= (getValueByKey!182 lt!81250 (_1!1413 (tuple2!2807 lt!81021 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) (Some!187 (_2!1413 (tuple2!2807 lt!81021 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (=> d!50789 (= lt!81249 (lemmaContainsTupThenGetReturnValue!97 lt!81250 (_1!1413 (tuple2!2807 lt!81021 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!81021 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (=> d!50789 (= lt!81250 (insertStrictlySorted!99 (toList!923 lt!81031) (_1!1413 (tuple2!2807 lt!81021 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!81021 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (=> d!50789 (= (+!187 lt!81031 (tuple2!2807 lt!81021 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!81251)))

(declare-fun b!154657 () Bool)

(declare-fun res!73003 () Bool)

(assert (=> b!154657 (=> (not res!73003) (not e!101038))))

(assert (=> b!154657 (= res!73003 (= (getValueByKey!182 (toList!923 lt!81251) (_1!1413 (tuple2!2807 lt!81021 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) (Some!187 (_2!1413 (tuple2!2807 lt!81021 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun b!154658 () Bool)

(assert (=> b!154658 (= e!101038 (contains!962 (toList!923 lt!81251) (tuple2!2807 lt!81021 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))

(assert (= (and d!50789 res!73002) b!154657))

(assert (= (and b!154657 res!73003) b!154658))

(declare-fun m!188767 () Bool)

(assert (=> d!50789 m!188767))

(declare-fun m!188769 () Bool)

(assert (=> d!50789 m!188769))

(declare-fun m!188771 () Bool)

(assert (=> d!50789 m!188771))

(declare-fun m!188773 () Bool)

(assert (=> d!50789 m!188773))

(declare-fun m!188775 () Bool)

(assert (=> b!154657 m!188775))

(declare-fun m!188777 () Bool)

(assert (=> b!154658 m!188777))

(assert (=> b!154233 d!50789))

(declare-fun d!50791 () Bool)

(assert (=> d!50791 (= (apply!128 lt!81031 lt!81036) (get!1610 (getValueByKey!182 (toList!923 lt!81031) lt!81036)))))

(declare-fun bs!6548 () Bool)

(assert (= bs!6548 d!50791))

(declare-fun m!188779 () Bool)

(assert (=> bs!6548 m!188779))

(assert (=> bs!6548 m!188779))

(declare-fun m!188781 () Bool)

(assert (=> bs!6548 m!188781))

(assert (=> b!154233 d!50791))

(declare-fun d!50793 () Bool)

(assert (=> d!50793 (= (apply!128 (+!187 lt!81037 (tuple2!2807 lt!81026 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!81028) (get!1610 (getValueByKey!182 (toList!923 (+!187 lt!81037 (tuple2!2807 lt!81026 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!81028)))))

(declare-fun bs!6549 () Bool)

(assert (= bs!6549 d!50793))

(declare-fun m!188783 () Bool)

(assert (=> bs!6549 m!188783))

(assert (=> bs!6549 m!188783))

(declare-fun m!188785 () Bool)

(assert (=> bs!6549 m!188785))

(assert (=> b!154233 d!50793))

(declare-fun d!50795 () Bool)

(assert (=> d!50795 (= (apply!128 (+!187 lt!81019 (tuple2!2807 lt!81030 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!81024) (apply!128 lt!81019 lt!81024))))

(declare-fun lt!81253 () Unit!4897)

(assert (=> d!50795 (= lt!81253 (choose!925 lt!81019 lt!81030 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))) lt!81024))))

(declare-fun e!101039 () Bool)

(assert (=> d!50795 e!101039))

(declare-fun res!73004 () Bool)

(assert (=> d!50795 (=> (not res!73004) (not e!101039))))

(assert (=> d!50795 (= res!73004 (contains!961 lt!81019 lt!81024))))

(assert (=> d!50795 (= (addApplyDifferent!104 lt!81019 lt!81030 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))) lt!81024) lt!81253)))

(declare-fun b!154659 () Bool)

(assert (=> b!154659 (= e!101039 (not (= lt!81024 lt!81030)))))

(assert (= (and d!50795 res!73004) b!154659))

(assert (=> d!50795 m!188075))

(assert (=> d!50795 m!188077))

(declare-fun m!188787 () Bool)

(assert (=> d!50795 m!188787))

(declare-fun m!188789 () Bool)

(assert (=> d!50795 m!188789))

(assert (=> d!50795 m!188075))

(assert (=> d!50795 m!188089))

(assert (=> b!154233 d!50795))

(declare-fun d!50797 () Bool)

(declare-fun e!101040 () Bool)

(assert (=> d!50797 e!101040))

(declare-fun res!73005 () Bool)

(assert (=> d!50797 (=> (not res!73005) (not e!101040))))

(declare-fun lt!81256 () ListLongMap!1815)

(assert (=> d!50797 (= res!73005 (contains!961 lt!81256 (_1!1413 (tuple2!2807 lt!81026 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun lt!81255 () List!1823)

(assert (=> d!50797 (= lt!81256 (ListLongMap!1816 lt!81255))))

(declare-fun lt!81257 () Unit!4897)

(declare-fun lt!81254 () Unit!4897)

(assert (=> d!50797 (= lt!81257 lt!81254)))

(assert (=> d!50797 (= (getValueByKey!182 lt!81255 (_1!1413 (tuple2!2807 lt!81026 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) (Some!187 (_2!1413 (tuple2!2807 lt!81026 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (=> d!50797 (= lt!81254 (lemmaContainsTupThenGetReturnValue!97 lt!81255 (_1!1413 (tuple2!2807 lt!81026 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!81026 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (=> d!50797 (= lt!81255 (insertStrictlySorted!99 (toList!923 lt!81037) (_1!1413 (tuple2!2807 lt!81026 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!81026 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (=> d!50797 (= (+!187 lt!81037 (tuple2!2807 lt!81026 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!81256)))

(declare-fun b!154660 () Bool)

(declare-fun res!73006 () Bool)

(assert (=> b!154660 (=> (not res!73006) (not e!101040))))

(assert (=> b!154660 (= res!73006 (= (getValueByKey!182 (toList!923 lt!81256) (_1!1413 (tuple2!2807 lt!81026 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) (Some!187 (_2!1413 (tuple2!2807 lt!81026 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun b!154661 () Bool)

(assert (=> b!154661 (= e!101040 (contains!962 (toList!923 lt!81256) (tuple2!2807 lt!81026 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))

(assert (= (and d!50797 res!73005) b!154660))

(assert (= (and b!154660 res!73006) b!154661))

(declare-fun m!188791 () Bool)

(assert (=> d!50797 m!188791))

(declare-fun m!188793 () Bool)

(assert (=> d!50797 m!188793))

(declare-fun m!188795 () Bool)

(assert (=> d!50797 m!188795))

(declare-fun m!188797 () Bool)

(assert (=> d!50797 m!188797))

(declare-fun m!188799 () Bool)

(assert (=> b!154660 m!188799))

(declare-fun m!188801 () Bool)

(assert (=> b!154661 m!188801))

(assert (=> b!154233 d!50797))

(declare-fun d!50799 () Bool)

(assert (=> d!50799 (= (apply!128 (+!187 lt!81031 (tuple2!2807 lt!81021 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!81036) (apply!128 lt!81031 lt!81036))))

(declare-fun lt!81258 () Unit!4897)

(assert (=> d!50799 (= lt!81258 (choose!925 lt!81031 lt!81021 (minValue!2907 (v!3416 (underlying!524 thiss!992))) lt!81036))))

(declare-fun e!101041 () Bool)

(assert (=> d!50799 e!101041))

(declare-fun res!73007 () Bool)

(assert (=> d!50799 (=> (not res!73007) (not e!101041))))

(assert (=> d!50799 (= res!73007 (contains!961 lt!81031 lt!81036))))

(assert (=> d!50799 (= (addApplyDifferent!104 lt!81031 lt!81021 (minValue!2907 (v!3416 (underlying!524 thiss!992))) lt!81036) lt!81258)))

(declare-fun b!154662 () Bool)

(assert (=> b!154662 (= e!101041 (not (= lt!81036 lt!81021)))))

(assert (= (and d!50799 res!73007) b!154662))

(assert (=> d!50799 m!188085))

(assert (=> d!50799 m!188087))

(declare-fun m!188803 () Bool)

(assert (=> d!50799 m!188803))

(declare-fun m!188805 () Bool)

(assert (=> d!50799 m!188805))

(assert (=> d!50799 m!188085))

(assert (=> d!50799 m!188095))

(assert (=> b!154233 d!50799))

(declare-fun d!50801 () Bool)

(assert (=> d!50801 (contains!961 (+!187 lt!81027 (tuple2!2807 lt!81032 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!81039)))

(declare-fun lt!81259 () Unit!4897)

(assert (=> d!50801 (= lt!81259 (choose!926 lt!81027 lt!81032 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))) lt!81039))))

(assert (=> d!50801 (contains!961 lt!81027 lt!81039)))

(assert (=> d!50801 (= (addStillContains!104 lt!81027 lt!81032 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))) lt!81039) lt!81259)))

(declare-fun bs!6550 () Bool)

(assert (= bs!6550 d!50801))

(assert (=> bs!6550 m!188067))

(assert (=> bs!6550 m!188067))

(assert (=> bs!6550 m!188081))

(declare-fun m!188807 () Bool)

(assert (=> bs!6550 m!188807))

(declare-fun m!188809 () Bool)

(assert (=> bs!6550 m!188809))

(assert (=> b!154233 d!50801))

(declare-fun d!50803 () Bool)

(declare-fun e!101042 () Bool)

(assert (=> d!50803 e!101042))

(declare-fun res!73008 () Bool)

(assert (=> d!50803 (=> res!73008 e!101042)))

(declare-fun lt!81261 () Bool)

(assert (=> d!50803 (= res!73008 (not lt!81261))))

(declare-fun lt!81260 () Bool)

(assert (=> d!50803 (= lt!81261 lt!81260)))

(declare-fun lt!81263 () Unit!4897)

(declare-fun e!101043 () Unit!4897)

(assert (=> d!50803 (= lt!81263 e!101043)))

(declare-fun c!29652 () Bool)

(assert (=> d!50803 (= c!29652 lt!81260)))

(assert (=> d!50803 (= lt!81260 (containsKey!186 (toList!923 (+!187 lt!81027 (tuple2!2807 lt!81032 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!81039))))

(assert (=> d!50803 (= (contains!961 (+!187 lt!81027 (tuple2!2807 lt!81032 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!81039) lt!81261)))

(declare-fun b!154663 () Bool)

(declare-fun lt!81262 () Unit!4897)

(assert (=> b!154663 (= e!101043 lt!81262)))

(assert (=> b!154663 (= lt!81262 (lemmaContainsKeyImpliesGetValueByKeyDefined!135 (toList!923 (+!187 lt!81027 (tuple2!2807 lt!81032 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!81039))))

(assert (=> b!154663 (isDefined!136 (getValueByKey!182 (toList!923 (+!187 lt!81027 (tuple2!2807 lt!81032 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!81039))))

(declare-fun b!154664 () Bool)

(declare-fun Unit!4921 () Unit!4897)

(assert (=> b!154664 (= e!101043 Unit!4921)))

(declare-fun b!154665 () Bool)

(assert (=> b!154665 (= e!101042 (isDefined!136 (getValueByKey!182 (toList!923 (+!187 lt!81027 (tuple2!2807 lt!81032 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!81039)))))

(assert (= (and d!50803 c!29652) b!154663))

(assert (= (and d!50803 (not c!29652)) b!154664))

(assert (= (and d!50803 (not res!73008)) b!154665))

(declare-fun m!188811 () Bool)

(assert (=> d!50803 m!188811))

(declare-fun m!188813 () Bool)

(assert (=> b!154663 m!188813))

(declare-fun m!188815 () Bool)

(assert (=> b!154663 m!188815))

(assert (=> b!154663 m!188815))

(declare-fun m!188817 () Bool)

(assert (=> b!154663 m!188817))

(assert (=> b!154665 m!188815))

(assert (=> b!154665 m!188815))

(assert (=> b!154665 m!188817))

(assert (=> b!154233 d!50803))

(declare-fun d!50805 () Bool)

(declare-fun e!101044 () Bool)

(assert (=> d!50805 e!101044))

(declare-fun res!73009 () Bool)

(assert (=> d!50805 (=> (not res!73009) (not e!101044))))

(declare-fun lt!81266 () ListLongMap!1815)

(assert (=> d!50805 (= res!73009 (contains!961 lt!81266 (_1!1413 (tuple2!2807 lt!81032 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun lt!81265 () List!1823)

(assert (=> d!50805 (= lt!81266 (ListLongMap!1816 lt!81265))))

(declare-fun lt!81267 () Unit!4897)

(declare-fun lt!81264 () Unit!4897)

(assert (=> d!50805 (= lt!81267 lt!81264)))

(assert (=> d!50805 (= (getValueByKey!182 lt!81265 (_1!1413 (tuple2!2807 lt!81032 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) (Some!187 (_2!1413 (tuple2!2807 lt!81032 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (=> d!50805 (= lt!81264 (lemmaContainsTupThenGetReturnValue!97 lt!81265 (_1!1413 (tuple2!2807 lt!81032 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!81032 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (=> d!50805 (= lt!81265 (insertStrictlySorted!99 (toList!923 lt!81027) (_1!1413 (tuple2!2807 lt!81032 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!81032 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (=> d!50805 (= (+!187 lt!81027 (tuple2!2807 lt!81032 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!81266)))

(declare-fun b!154666 () Bool)

(declare-fun res!73010 () Bool)

(assert (=> b!154666 (=> (not res!73010) (not e!101044))))

(assert (=> b!154666 (= res!73010 (= (getValueByKey!182 (toList!923 lt!81266) (_1!1413 (tuple2!2807 lt!81032 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) (Some!187 (_2!1413 (tuple2!2807 lt!81032 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun b!154667 () Bool)

(assert (=> b!154667 (= e!101044 (contains!962 (toList!923 lt!81266) (tuple2!2807 lt!81032 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))))

(assert (= (and d!50805 res!73009) b!154666))

(assert (= (and b!154666 res!73010) b!154667))

(declare-fun m!188819 () Bool)

(assert (=> d!50805 m!188819))

(declare-fun m!188821 () Bool)

(assert (=> d!50805 m!188821))

(declare-fun m!188823 () Bool)

(assert (=> d!50805 m!188823))

(declare-fun m!188825 () Bool)

(assert (=> d!50805 m!188825))

(declare-fun m!188827 () Bool)

(assert (=> b!154666 m!188827))

(declare-fun m!188829 () Bool)

(assert (=> b!154667 m!188829))

(assert (=> b!154233 d!50805))

(declare-fun d!50807 () Bool)

(assert (=> d!50807 (= (apply!128 (+!187 lt!81037 (tuple2!2807 lt!81026 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!81028) (apply!128 lt!81037 lt!81028))))

(declare-fun lt!81268 () Unit!4897)

(assert (=> d!50807 (= lt!81268 (choose!925 lt!81037 lt!81026 (minValue!2907 (v!3416 (underlying!524 thiss!992))) lt!81028))))

(declare-fun e!101045 () Bool)

(assert (=> d!50807 e!101045))

(declare-fun res!73011 () Bool)

(assert (=> d!50807 (=> (not res!73011) (not e!101045))))

(assert (=> d!50807 (= res!73011 (contains!961 lt!81037 lt!81028))))

(assert (=> d!50807 (= (addApplyDifferent!104 lt!81037 lt!81026 (minValue!2907 (v!3416 (underlying!524 thiss!992))) lt!81028) lt!81268)))

(declare-fun b!154668 () Bool)

(assert (=> b!154668 (= e!101045 (not (= lt!81028 lt!81026)))))

(assert (= (and d!50807 res!73011) b!154668))

(assert (=> d!50807 m!188069))

(assert (=> d!50807 m!188071))

(declare-fun m!188831 () Bool)

(assert (=> d!50807 m!188831))

(declare-fun m!188833 () Bool)

(assert (=> d!50807 m!188833))

(assert (=> d!50807 m!188069))

(assert (=> d!50807 m!188073))

(assert (=> b!154233 d!50807))

(declare-fun d!50809 () Bool)

(assert (=> d!50809 (= (apply!128 (+!187 lt!81019 (tuple2!2807 lt!81030 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!81024) (get!1610 (getValueByKey!182 (toList!923 (+!187 lt!81019 (tuple2!2807 lt!81030 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!81024)))))

(declare-fun bs!6551 () Bool)

(assert (= bs!6551 d!50809))

(declare-fun m!188835 () Bool)

(assert (=> bs!6551 m!188835))

(assert (=> bs!6551 m!188835))

(declare-fun m!188837 () Bool)

(assert (=> bs!6551 m!188837))

(assert (=> b!154233 d!50809))

(declare-fun d!50811 () Bool)

(assert (=> d!50811 (= (apply!128 lt!81019 lt!81024) (get!1610 (getValueByKey!182 (toList!923 lt!81019) lt!81024)))))

(declare-fun bs!6552 () Bool)

(assert (= bs!6552 d!50811))

(declare-fun m!188839 () Bool)

(assert (=> bs!6552 m!188839))

(assert (=> bs!6552 m!188839))

(declare-fun m!188841 () Bool)

(assert (=> bs!6552 m!188841))

(assert (=> b!154233 d!50811))

(declare-fun d!50813 () Bool)

(assert (=> d!50813 (= (apply!128 (+!187 lt!81031 (tuple2!2807 lt!81021 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!81036) (get!1610 (getValueByKey!182 (toList!923 (+!187 lt!81031 (tuple2!2807 lt!81021 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!81036)))))

(declare-fun bs!6553 () Bool)

(assert (= bs!6553 d!50813))

(declare-fun m!188843 () Bool)

(assert (=> bs!6553 m!188843))

(assert (=> bs!6553 m!188843))

(declare-fun m!188845 () Bool)

(assert (=> bs!6553 m!188845))

(assert (=> b!154233 d!50813))

(declare-fun d!50815 () Bool)

(assert (=> d!50815 (= (apply!128 lt!81037 lt!81028) (get!1610 (getValueByKey!182 (toList!923 lt!81037) lt!81028)))))

(declare-fun bs!6554 () Bool)

(assert (= bs!6554 d!50815))

(declare-fun m!188847 () Bool)

(assert (=> bs!6554 m!188847))

(assert (=> bs!6554 m!188847))

(declare-fun m!188849 () Bool)

(assert (=> bs!6554 m!188849))

(assert (=> b!154233 d!50815))

(assert (=> b!154233 d!50749))

(assert (=> b!154166 d!50547))

(declare-fun d!50817 () Bool)

(declare-fun e!101046 () Bool)

(assert (=> d!50817 e!101046))

(declare-fun res!73012 () Bool)

(assert (=> d!50817 (=> (not res!73012) (not e!101046))))

(declare-fun lt!81271 () ListLongMap!1815)

(assert (=> d!50817 (= res!73012 (contains!961 lt!81271 (_1!1413 (tuple2!2807 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1609 (select (arr!2411 (_values!3047 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!466 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!81270 () List!1823)

(assert (=> d!50817 (= lt!81271 (ListLongMap!1816 lt!81270))))

(declare-fun lt!81272 () Unit!4897)

(declare-fun lt!81269 () Unit!4897)

(assert (=> d!50817 (= lt!81272 lt!81269)))

(assert (=> d!50817 (= (getValueByKey!182 lt!81270 (_1!1413 (tuple2!2807 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1609 (select (arr!2411 (_values!3047 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!466 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!187 (_2!1413 (tuple2!2807 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1609 (select (arr!2411 (_values!3047 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!466 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!50817 (= lt!81269 (lemmaContainsTupThenGetReturnValue!97 lt!81270 (_1!1413 (tuple2!2807 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1609 (select (arr!2411 (_values!3047 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!466 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1413 (tuple2!2807 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1609 (select (arr!2411 (_values!3047 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!466 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!50817 (= lt!81270 (insertStrictlySorted!99 (toList!923 call!17157) (_1!1413 (tuple2!2807 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1609 (select (arr!2411 (_values!3047 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!466 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1413 (tuple2!2807 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1609 (select (arr!2411 (_values!3047 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!466 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!50817 (= (+!187 call!17157 (tuple2!2807 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1609 (select (arr!2411 (_values!3047 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!466 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!81271)))

(declare-fun b!154669 () Bool)

(declare-fun res!73013 () Bool)

(assert (=> b!154669 (=> (not res!73013) (not e!101046))))

(assert (=> b!154669 (= res!73013 (= (getValueByKey!182 (toList!923 lt!81271) (_1!1413 (tuple2!2807 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1609 (select (arr!2411 (_values!3047 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!466 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!187 (_2!1413 (tuple2!2807 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1609 (select (arr!2411 (_values!3047 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!466 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!154670 () Bool)

(assert (=> b!154670 (= e!101046 (contains!962 (toList!923 lt!81271) (tuple2!2807 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1609 (select (arr!2411 (_values!3047 (v!3416 (underlying!524 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!466 (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!50817 res!73012) b!154669))

(assert (= (and b!154669 res!73013) b!154670))

(declare-fun m!188851 () Bool)

(assert (=> d!50817 m!188851))

(declare-fun m!188853 () Bool)

(assert (=> d!50817 m!188853))

(declare-fun m!188855 () Bool)

(assert (=> d!50817 m!188855))

(declare-fun m!188857 () Bool)

(assert (=> d!50817 m!188857))

(declare-fun m!188859 () Bool)

(assert (=> b!154669 m!188859))

(declare-fun m!188861 () Bool)

(assert (=> b!154670 m!188861))

(assert (=> b!154166 d!50817))

(declare-fun d!50819 () Bool)

(assert (=> d!50819 (not (contains!961 (+!187 lt!80961 (tuple2!2807 lt!80963 lt!80965)) lt!80959))))

(declare-fun lt!81275 () Unit!4897)

(declare-fun choose!929 (ListLongMap!1815 (_ BitVec 64) V!3683 (_ BitVec 64)) Unit!4897)

(assert (=> d!50819 (= lt!81275 (choose!929 lt!80961 lt!80963 lt!80965 lt!80959))))

(declare-fun e!101049 () Bool)

(assert (=> d!50819 e!101049))

(declare-fun res!73016 () Bool)

(assert (=> d!50819 (=> (not res!73016) (not e!101049))))

(assert (=> d!50819 (= res!73016 (not (contains!961 lt!80961 lt!80959)))))

(assert (=> d!50819 (= (addStillNotContains!72 lt!80961 lt!80963 lt!80965 lt!80959) lt!81275)))

(declare-fun b!154674 () Bool)

(assert (=> b!154674 (= e!101049 (not (= lt!80963 lt!80959)))))

(assert (= (and d!50819 res!73016) b!154674))

(assert (=> d!50819 m!187901))

(assert (=> d!50819 m!187901))

(assert (=> d!50819 m!187903))

(declare-fun m!188863 () Bool)

(assert (=> d!50819 m!188863))

(declare-fun m!188865 () Bool)

(assert (=> d!50819 m!188865))

(assert (=> b!154166 d!50819))

(declare-fun d!50821 () Bool)

(declare-fun e!101050 () Bool)

(assert (=> d!50821 e!101050))

(declare-fun res!73017 () Bool)

(assert (=> d!50821 (=> res!73017 e!101050)))

(declare-fun lt!81277 () Bool)

(assert (=> d!50821 (= res!73017 (not lt!81277))))

(declare-fun lt!81276 () Bool)

(assert (=> d!50821 (= lt!81277 lt!81276)))

(declare-fun lt!81279 () Unit!4897)

(declare-fun e!101051 () Unit!4897)

(assert (=> d!50821 (= lt!81279 e!101051)))

(declare-fun c!29653 () Bool)

(assert (=> d!50821 (= c!29653 lt!81276)))

(assert (=> d!50821 (= lt!81276 (containsKey!186 (toList!923 (+!187 lt!80961 (tuple2!2807 lt!80963 lt!80965))) lt!80959))))

(assert (=> d!50821 (= (contains!961 (+!187 lt!80961 (tuple2!2807 lt!80963 lt!80965)) lt!80959) lt!81277)))

(declare-fun b!154675 () Bool)

(declare-fun lt!81278 () Unit!4897)

(assert (=> b!154675 (= e!101051 lt!81278)))

(assert (=> b!154675 (= lt!81278 (lemmaContainsKeyImpliesGetValueByKeyDefined!135 (toList!923 (+!187 lt!80961 (tuple2!2807 lt!80963 lt!80965))) lt!80959))))

(assert (=> b!154675 (isDefined!136 (getValueByKey!182 (toList!923 (+!187 lt!80961 (tuple2!2807 lt!80963 lt!80965))) lt!80959))))

(declare-fun b!154676 () Bool)

(declare-fun Unit!4922 () Unit!4897)

(assert (=> b!154676 (= e!101051 Unit!4922)))

(declare-fun b!154677 () Bool)

(assert (=> b!154677 (= e!101050 (isDefined!136 (getValueByKey!182 (toList!923 (+!187 lt!80961 (tuple2!2807 lt!80963 lt!80965))) lt!80959)))))

(assert (= (and d!50821 c!29653) b!154675))

(assert (= (and d!50821 (not c!29653)) b!154676))

(assert (= (and d!50821 (not res!73017)) b!154677))

(declare-fun m!188867 () Bool)

(assert (=> d!50821 m!188867))

(declare-fun m!188869 () Bool)

(assert (=> b!154675 m!188869))

(declare-fun m!188871 () Bool)

(assert (=> b!154675 m!188871))

(assert (=> b!154675 m!188871))

(declare-fun m!188873 () Bool)

(assert (=> b!154675 m!188873))

(assert (=> b!154677 m!188871))

(assert (=> b!154677 m!188871))

(assert (=> b!154677 m!188873))

(assert (=> b!154166 d!50821))

(declare-fun d!50823 () Bool)

(declare-fun e!101052 () Bool)

(assert (=> d!50823 e!101052))

(declare-fun res!73018 () Bool)

(assert (=> d!50823 (=> (not res!73018) (not e!101052))))

(declare-fun lt!81282 () ListLongMap!1815)

(assert (=> d!50823 (= res!73018 (contains!961 lt!81282 (_1!1413 (tuple2!2807 lt!80963 lt!80965))))))

(declare-fun lt!81281 () List!1823)

(assert (=> d!50823 (= lt!81282 (ListLongMap!1816 lt!81281))))

(declare-fun lt!81283 () Unit!4897)

(declare-fun lt!81280 () Unit!4897)

(assert (=> d!50823 (= lt!81283 lt!81280)))

(assert (=> d!50823 (= (getValueByKey!182 lt!81281 (_1!1413 (tuple2!2807 lt!80963 lt!80965))) (Some!187 (_2!1413 (tuple2!2807 lt!80963 lt!80965))))))

(assert (=> d!50823 (= lt!81280 (lemmaContainsTupThenGetReturnValue!97 lt!81281 (_1!1413 (tuple2!2807 lt!80963 lt!80965)) (_2!1413 (tuple2!2807 lt!80963 lt!80965))))))

(assert (=> d!50823 (= lt!81281 (insertStrictlySorted!99 (toList!923 lt!80961) (_1!1413 (tuple2!2807 lt!80963 lt!80965)) (_2!1413 (tuple2!2807 lt!80963 lt!80965))))))

(assert (=> d!50823 (= (+!187 lt!80961 (tuple2!2807 lt!80963 lt!80965)) lt!81282)))

(declare-fun b!154678 () Bool)

(declare-fun res!73019 () Bool)

(assert (=> b!154678 (=> (not res!73019) (not e!101052))))

(assert (=> b!154678 (= res!73019 (= (getValueByKey!182 (toList!923 lt!81282) (_1!1413 (tuple2!2807 lt!80963 lt!80965))) (Some!187 (_2!1413 (tuple2!2807 lt!80963 lt!80965)))))))

(declare-fun b!154679 () Bool)

(assert (=> b!154679 (= e!101052 (contains!962 (toList!923 lt!81282) (tuple2!2807 lt!80963 lt!80965)))))

(assert (= (and d!50823 res!73018) b!154678))

(assert (= (and b!154678 res!73019) b!154679))

(declare-fun m!188875 () Bool)

(assert (=> d!50823 m!188875))

(declare-fun m!188877 () Bool)

(assert (=> d!50823 m!188877))

(declare-fun m!188879 () Bool)

(assert (=> d!50823 m!188879))

(declare-fun m!188881 () Bool)

(assert (=> d!50823 m!188881))

(declare-fun m!188883 () Bool)

(assert (=> b!154678 m!188883))

(declare-fun m!188885 () Bool)

(assert (=> b!154679 m!188885))

(assert (=> b!154166 d!50823))

(declare-fun d!50825 () Bool)

(assert (=> d!50825 (= (get!1610 (getValueByKey!182 (toList!923 (+!187 lt!80924 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!80929)) (v!3418 (getValueByKey!182 (toList!923 (+!187 lt!80924 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!80929)))))

(assert (=> d!50535 d!50825))

(declare-fun d!50827 () Bool)

(declare-fun c!29654 () Bool)

(assert (=> d!50827 (= c!29654 (and ((_ is Cons!1819) (toList!923 (+!187 lt!80924 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))) (= (_1!1413 (h!2428 (toList!923 (+!187 lt!80924 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))) lt!80929)))))

(declare-fun e!101053 () Option!188)

(assert (=> d!50827 (= (getValueByKey!182 (toList!923 (+!187 lt!80924 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!80929) e!101053)))

(declare-fun b!154682 () Bool)

(declare-fun e!101054 () Option!188)

(assert (=> b!154682 (= e!101054 (getValueByKey!182 (t!6625 (toList!923 (+!187 lt!80924 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))) lt!80929))))

(declare-fun b!154681 () Bool)

(assert (=> b!154681 (= e!101053 e!101054)))

(declare-fun c!29655 () Bool)

(assert (=> b!154681 (= c!29655 (and ((_ is Cons!1819) (toList!923 (+!187 lt!80924 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))) (not (= (_1!1413 (h!2428 (toList!923 (+!187 lt!80924 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))) lt!80929))))))

(declare-fun b!154680 () Bool)

(assert (=> b!154680 (= e!101053 (Some!187 (_2!1413 (h!2428 (toList!923 (+!187 lt!80924 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))))))))

(declare-fun b!154683 () Bool)

(assert (=> b!154683 (= e!101054 None!186)))

(assert (= (and d!50827 c!29654) b!154680))

(assert (= (and d!50827 (not c!29654)) b!154681))

(assert (= (and b!154681 c!29655) b!154682))

(assert (= (and b!154681 (not c!29655)) b!154683))

(declare-fun m!188887 () Bool)

(assert (=> b!154682 m!188887))

(assert (=> d!50535 d!50827))

(declare-fun d!50829 () Bool)

(assert (=> d!50829 (= (get!1610 (getValueByKey!182 (toList!923 lt!80934) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!3418 (getValueByKey!182 (toList!923 lt!80934) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!50571 d!50829))

(assert (=> d!50571 d!50613))

(declare-fun d!50831 () Bool)

(assert (=> d!50831 (= (get!1610 (getValueByKey!182 (toList!923 lt!80942) lt!80933)) (v!3418 (getValueByKey!182 (toList!923 lt!80942) lt!80933)))))

(assert (=> d!50527 d!50831))

(declare-fun d!50833 () Bool)

(declare-fun c!29656 () Bool)

(assert (=> d!50833 (= c!29656 (and ((_ is Cons!1819) (toList!923 lt!80942)) (= (_1!1413 (h!2428 (toList!923 lt!80942))) lt!80933)))))

(declare-fun e!101055 () Option!188)

(assert (=> d!50833 (= (getValueByKey!182 (toList!923 lt!80942) lt!80933) e!101055)))

(declare-fun b!154686 () Bool)

(declare-fun e!101056 () Option!188)

(assert (=> b!154686 (= e!101056 (getValueByKey!182 (t!6625 (toList!923 lt!80942)) lt!80933))))

(declare-fun b!154685 () Bool)

(assert (=> b!154685 (= e!101055 e!101056)))

(declare-fun c!29657 () Bool)

(assert (=> b!154685 (= c!29657 (and ((_ is Cons!1819) (toList!923 lt!80942)) (not (= (_1!1413 (h!2428 (toList!923 lt!80942))) lt!80933))))))

(declare-fun b!154684 () Bool)

(assert (=> b!154684 (= e!101055 (Some!187 (_2!1413 (h!2428 (toList!923 lt!80942)))))))

(declare-fun b!154687 () Bool)

(assert (=> b!154687 (= e!101056 None!186)))

(assert (= (and d!50833 c!29656) b!154684))

(assert (= (and d!50833 (not c!29656)) b!154685))

(assert (= (and b!154685 c!29657) b!154686))

(assert (= (and b!154685 (not c!29657)) b!154687))

(declare-fun m!188889 () Bool)

(assert (=> b!154686 m!188889))

(assert (=> d!50527 d!50833))

(declare-fun d!50835 () Bool)

(assert (=> d!50835 (= (get!1610 (getValueByKey!182 (toList!923 lt!80936) lt!80941)) (v!3418 (getValueByKey!182 (toList!923 lt!80936) lt!80941)))))

(assert (=> d!50513 d!50835))

(declare-fun d!50837 () Bool)

(declare-fun c!29658 () Bool)

(assert (=> d!50837 (= c!29658 (and ((_ is Cons!1819) (toList!923 lt!80936)) (= (_1!1413 (h!2428 (toList!923 lt!80936))) lt!80941)))))

(declare-fun e!101057 () Option!188)

(assert (=> d!50837 (= (getValueByKey!182 (toList!923 lt!80936) lt!80941) e!101057)))

(declare-fun b!154690 () Bool)

(declare-fun e!101058 () Option!188)

(assert (=> b!154690 (= e!101058 (getValueByKey!182 (t!6625 (toList!923 lt!80936)) lt!80941))))

(declare-fun b!154689 () Bool)

(assert (=> b!154689 (= e!101057 e!101058)))

(declare-fun c!29659 () Bool)

(assert (=> b!154689 (= c!29659 (and ((_ is Cons!1819) (toList!923 lt!80936)) (not (= (_1!1413 (h!2428 (toList!923 lt!80936))) lt!80941))))))

(declare-fun b!154688 () Bool)

(assert (=> b!154688 (= e!101057 (Some!187 (_2!1413 (h!2428 (toList!923 lt!80936)))))))

(declare-fun b!154691 () Bool)

(assert (=> b!154691 (= e!101058 None!186)))

(assert (= (and d!50837 c!29658) b!154688))

(assert (= (and d!50837 (not c!29658)) b!154689))

(assert (= (and b!154689 c!29659) b!154690))

(assert (= (and b!154689 (not c!29659)) b!154691))

(declare-fun m!188891 () Bool)

(assert (=> b!154690 m!188891))

(assert (=> d!50513 d!50837))

(declare-fun d!50839 () Bool)

(declare-fun res!73020 () Bool)

(declare-fun e!101059 () Bool)

(assert (=> d!50839 (=> res!73020 e!101059)))

(assert (=> d!50839 (= res!73020 (and ((_ is Cons!1819) (toList!923 lt!80934)) (= (_1!1413 (h!2428 (toList!923 lt!80934))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!50839 (= (containsKey!186 (toList!923 lt!80934) #b0000000000000000000000000000000000000000000000000000000000000000) e!101059)))

(declare-fun b!154692 () Bool)

(declare-fun e!101060 () Bool)

(assert (=> b!154692 (= e!101059 e!101060)))

(declare-fun res!73021 () Bool)

(assert (=> b!154692 (=> (not res!73021) (not e!101060))))

(assert (=> b!154692 (= res!73021 (and (or (not ((_ is Cons!1819) (toList!923 lt!80934))) (bvsle (_1!1413 (h!2428 (toList!923 lt!80934))) #b0000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!1819) (toList!923 lt!80934)) (bvslt (_1!1413 (h!2428 (toList!923 lt!80934))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!154693 () Bool)

(assert (=> b!154693 (= e!101060 (containsKey!186 (t!6625 (toList!923 lt!80934)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!50839 (not res!73020)) b!154692))

(assert (= (and b!154692 res!73021) b!154693))

(declare-fun m!188893 () Bool)

(assert (=> b!154693 m!188893))

(assert (=> d!50549 d!50839))

(declare-fun d!50841 () Bool)

(declare-fun e!101061 () Bool)

(assert (=> d!50841 e!101061))

(declare-fun res!73022 () Bool)

(assert (=> d!50841 (=> res!73022 e!101061)))

(declare-fun lt!81285 () Bool)

(assert (=> d!50841 (= res!73022 (not lt!81285))))

(declare-fun lt!81284 () Bool)

(assert (=> d!50841 (= lt!81285 lt!81284)))

(declare-fun lt!81287 () Unit!4897)

(declare-fun e!101062 () Unit!4897)

(assert (=> d!50841 (= lt!81287 e!101062)))

(declare-fun c!29660 () Bool)

(assert (=> d!50841 (= c!29660 lt!81284)))

(assert (=> d!50841 (= lt!81284 (containsKey!186 (toList!923 lt!81029) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!50841 (= (contains!961 lt!81029 #b1000000000000000000000000000000000000000000000000000000000000000) lt!81285)))

(declare-fun b!154694 () Bool)

(declare-fun lt!81286 () Unit!4897)

(assert (=> b!154694 (= e!101062 lt!81286)))

(assert (=> b!154694 (= lt!81286 (lemmaContainsKeyImpliesGetValueByKeyDefined!135 (toList!923 lt!81029) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!154694 (isDefined!136 (getValueByKey!182 (toList!923 lt!81029) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!154695 () Bool)

(declare-fun Unit!4923 () Unit!4897)

(assert (=> b!154695 (= e!101062 Unit!4923)))

(declare-fun b!154696 () Bool)

(assert (=> b!154696 (= e!101061 (isDefined!136 (getValueByKey!182 (toList!923 lt!81029) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!50841 c!29660) b!154694))

(assert (= (and d!50841 (not c!29660)) b!154695))

(assert (= (and d!50841 (not res!73022)) b!154696))

(declare-fun m!188895 () Bool)

(assert (=> d!50841 m!188895))

(declare-fun m!188897 () Bool)

(assert (=> b!154694 m!188897))

(assert (=> b!154694 m!188527))

(assert (=> b!154694 m!188527))

(declare-fun m!188899 () Bool)

(assert (=> b!154694 m!188899))

(assert (=> b!154696 m!188527))

(assert (=> b!154696 m!188527))

(assert (=> b!154696 m!188899))

(assert (=> bm!17164 d!50841))

(assert (=> b!154163 d!50551))

(assert (=> b!154279 d!50683))

(assert (=> b!154279 d!50685))

(declare-fun d!50843 () Bool)

(declare-fun lt!81288 () Bool)

(assert (=> d!50843 (= lt!81288 (select (content!144 (toList!923 lt!81001)) (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))

(declare-fun e!101064 () Bool)

(assert (=> d!50843 (= lt!81288 e!101064)))

(declare-fun res!73023 () Bool)

(assert (=> d!50843 (=> (not res!73023) (not e!101064))))

(assert (=> d!50843 (= res!73023 ((_ is Cons!1819) (toList!923 lt!81001)))))

(assert (=> d!50843 (= (contains!962 (toList!923 lt!81001) (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!81288)))

(declare-fun b!154697 () Bool)

(declare-fun e!101063 () Bool)

(assert (=> b!154697 (= e!101064 e!101063)))

(declare-fun res!73024 () Bool)

(assert (=> b!154697 (=> res!73024 e!101063)))

(assert (=> b!154697 (= res!73024 (= (h!2428 (toList!923 lt!81001)) (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))

(declare-fun b!154698 () Bool)

(assert (=> b!154698 (= e!101063 (contains!962 (t!6625 (toList!923 lt!81001)) (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))

(assert (= (and d!50843 res!73023) b!154697))

(assert (= (and b!154697 (not res!73024)) b!154698))

(declare-fun m!188901 () Bool)

(assert (=> d!50843 m!188901))

(declare-fun m!188903 () Bool)

(assert (=> d!50843 m!188903))

(declare-fun m!188905 () Bool)

(assert (=> b!154698 m!188905))

(assert (=> b!154194 d!50843))

(assert (=> b!154310 d!50673))

(declare-fun d!50845 () Bool)

(declare-fun res!73025 () Bool)

(declare-fun e!101065 () Bool)

(assert (=> d!50845 (=> res!73025 e!101065)))

(assert (=> d!50845 (= res!73025 (and ((_ is Cons!1819) (toList!923 (+!187 lt!80932 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))) (= (_1!1413 (h!2428 (toList!923 (+!187 lt!80932 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))) lt!80944)))))

(assert (=> d!50845 (= (containsKey!186 (toList!923 (+!187 lt!80932 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!80944) e!101065)))

(declare-fun b!154699 () Bool)

(declare-fun e!101066 () Bool)

(assert (=> b!154699 (= e!101065 e!101066)))

(declare-fun res!73026 () Bool)

(assert (=> b!154699 (=> (not res!73026) (not e!101066))))

(assert (=> b!154699 (= res!73026 (and (or (not ((_ is Cons!1819) (toList!923 (+!187 lt!80932 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))) (bvsle (_1!1413 (h!2428 (toList!923 (+!187 lt!80932 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))) lt!80944)) ((_ is Cons!1819) (toList!923 (+!187 lt!80932 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))) (bvslt (_1!1413 (h!2428 (toList!923 (+!187 lt!80932 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992)))))))) lt!80944)))))

(declare-fun b!154700 () Bool)

(assert (=> b!154700 (= e!101066 (containsKey!186 (t!6625 (toList!923 (+!187 lt!80932 (tuple2!2807 lt!80937 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))))) lt!80944))))

(assert (= (and d!50845 (not res!73025)) b!154699))

(assert (= (and b!154699 res!73026) b!154700))

(declare-fun m!188907 () Bool)

(assert (=> b!154700 m!188907))

(assert (=> d!50533 d!50845))

(declare-fun d!50847 () Bool)

(declare-fun c!29661 () Bool)

(assert (=> d!50847 (= c!29661 (and ((_ is Cons!1819) (toList!923 lt!81046)) (= (_1!1413 (h!2428 (toList!923 lt!81046))) (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun e!101067 () Option!188)

(assert (=> d!50847 (= (getValueByKey!182 (toList!923 lt!81046) (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) e!101067)))

(declare-fun b!154703 () Bool)

(declare-fun e!101068 () Option!188)

(assert (=> b!154703 (= e!101068 (getValueByKey!182 (t!6625 (toList!923 lt!81046)) (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun b!154702 () Bool)

(assert (=> b!154702 (= e!101067 e!101068)))

(declare-fun c!29662 () Bool)

(assert (=> b!154702 (= c!29662 (and ((_ is Cons!1819) (toList!923 lt!81046)) (not (= (_1!1413 (h!2428 (toList!923 lt!81046))) (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))))

(declare-fun b!154701 () Bool)

(assert (=> b!154701 (= e!101067 (Some!187 (_2!1413 (h!2428 (toList!923 lt!81046)))))))

(declare-fun b!154704 () Bool)

(assert (=> b!154704 (= e!101068 None!186)))

(assert (= (and d!50847 c!29661) b!154701))

(assert (= (and d!50847 (not c!29661)) b!154702))

(assert (= (and b!154702 c!29662) b!154703))

(assert (= (and b!154702 (not c!29662)) b!154704))

(declare-fun m!188909 () Bool)

(assert (=> b!154703 m!188909))

(assert (=> b!154251 d!50847))

(assert (=> b!154158 d!50671))

(declare-fun d!50849 () Bool)

(assert (=> d!50849 (= (apply!128 lt!81066 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1610 (getValueByKey!182 (toList!923 lt!81066) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!6555 () Bool)

(assert (= bs!6555 d!50849))

(assert (=> bs!6555 m!188417))

(assert (=> bs!6555 m!188417))

(declare-fun m!188911 () Bool)

(assert (=> bs!6555 m!188911))

(assert (=> b!154290 d!50849))

(declare-fun d!50851 () Bool)

(assert (=> d!50851 (= (validKeyInArray!0 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000)) (and (not (= (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!154239 d!50851))

(declare-fun d!50853 () Bool)

(declare-fun lt!81291 () Bool)

(declare-fun content!145 (List!1824) (InoxSet (_ BitVec 64)))

(assert (=> d!50853 (= lt!81291 (select (content!145 Nil!1821) (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun e!101073 () Bool)

(assert (=> d!50853 (= lt!81291 e!101073)))

(declare-fun res!73031 () Bool)

(assert (=> d!50853 (=> (not res!73031) (not e!101073))))

(assert (=> d!50853 (= res!73031 ((_ is Cons!1820) Nil!1821))))

(assert (=> d!50853 (= (contains!963 Nil!1821 (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000)) lt!81291)))

(declare-fun b!154709 () Bool)

(declare-fun e!101074 () Bool)

(assert (=> b!154709 (= e!101073 e!101074)))

(declare-fun res!73032 () Bool)

(assert (=> b!154709 (=> res!73032 e!101074)))

(assert (=> b!154709 (= res!73032 (= (h!2429 Nil!1821) (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!154710 () Bool)

(assert (=> b!154710 (= e!101074 (contains!963 (t!6630 Nil!1821) (select (arr!2410 (_keys!4837 newMap!16)) #b00000000000000000000000000000000)))))

(assert (= (and d!50853 res!73031) b!154709))

(assert (= (and b!154709 (not res!73032)) b!154710))

(declare-fun m!188913 () Bool)

(assert (=> d!50853 m!188913))

(assert (=> d!50853 m!188035))

(declare-fun m!188915 () Bool)

(assert (=> d!50853 m!188915))

(assert (=> b!154710 m!188035))

(declare-fun m!188917 () Bool)

(assert (=> b!154710 m!188917))

(assert (=> b!154223 d!50853))

(declare-fun d!50855 () Bool)

(assert (=> d!50855 (isDefined!136 (getValueByKey!182 (toList!923 lt!80934) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!81292 () Unit!4897)

(assert (=> d!50855 (= lt!81292 (choose!927 (toList!923 lt!80934) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!101075 () Bool)

(assert (=> d!50855 e!101075))

(declare-fun res!73033 () Bool)

(assert (=> d!50855 (=> (not res!73033) (not e!101075))))

(assert (=> d!50855 (= res!73033 (isStrictlySorted!325 (toList!923 lt!80934)))))

(assert (=> d!50855 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!135 (toList!923 lt!80934) #b1000000000000000000000000000000000000000000000000000000000000000) lt!81292)))

(declare-fun b!154711 () Bool)

(assert (=> b!154711 (= e!101075 (containsKey!186 (toList!923 lt!80934) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!50855 res!73033) b!154711))

(assert (=> d!50855 m!188103))

(assert (=> d!50855 m!188103))

(assert (=> d!50855 m!188105))

(declare-fun m!188919 () Bool)

(assert (=> d!50855 m!188919))

(assert (=> d!50855 m!188473))

(assert (=> b!154711 m!188099))

(assert (=> b!154248 d!50855))

(assert (=> b!154248 d!50699))

(assert (=> b!154248 d!50701))

(declare-fun b!154712 () Bool)

(declare-fun e!101077 () Bool)

(declare-fun call!17210 () Bool)

(assert (=> b!154712 (= e!101077 call!17210)))

(declare-fun b!154713 () Bool)

(declare-fun e!101078 () Bool)

(assert (=> b!154713 (= e!101078 (contains!963 Nil!1821 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!154714 () Bool)

(declare-fun e!101076 () Bool)

(assert (=> b!154714 (= e!101076 e!101077)))

(declare-fun c!29663 () Bool)

(assert (=> b!154714 (= c!29663 (validKeyInArray!0 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!154715 () Bool)

(declare-fun e!101079 () Bool)

(assert (=> b!154715 (= e!101079 e!101076)))

(declare-fun res!73036 () Bool)

(assert (=> b!154715 (=> (not res!73036) (not e!101076))))

(assert (=> b!154715 (= res!73036 (not e!101078))))

(declare-fun res!73034 () Bool)

(assert (=> b!154715 (=> (not res!73034) (not e!101078))))

(assert (=> b!154715 (= res!73034 (validKeyInArray!0 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun d!50857 () Bool)

(declare-fun res!73035 () Bool)

(assert (=> d!50857 (=> res!73035 e!101079)))

(assert (=> d!50857 (= res!73035 (bvsge #b00000000000000000000000000000000 (size!2687 (_keys!4837 (v!3416 (underlying!524 thiss!992))))))))

(assert (=> d!50857 (= (arrayNoDuplicates!0 (_keys!4837 (v!3416 (underlying!524 thiss!992))) #b00000000000000000000000000000000 Nil!1821) e!101079)))

(declare-fun bm!17207 () Bool)

(assert (=> bm!17207 (= call!17210 (arrayNoDuplicates!0 (_keys!4837 (v!3416 (underlying!524 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!29663 (Cons!1820 (select (arr!2410 (_keys!4837 (v!3416 (underlying!524 thiss!992)))) #b00000000000000000000000000000000) Nil!1821) Nil!1821)))))

(declare-fun b!154716 () Bool)

(assert (=> b!154716 (= e!101077 call!17210)))

(assert (= (and d!50857 (not res!73035)) b!154715))

(assert (= (and b!154715 res!73034) b!154713))

(assert (= (and b!154715 res!73036) b!154714))

(assert (= (and b!154714 c!29663) b!154712))

(assert (= (and b!154714 (not c!29663)) b!154716))

(assert (= (or b!154712 b!154716) bm!17207))

(assert (=> b!154713 m!188047))

(assert (=> b!154713 m!188047))

(declare-fun m!188921 () Bool)

(assert (=> b!154713 m!188921))

(assert (=> b!154714 m!188047))

(assert (=> b!154714 m!188047))

(assert (=> b!154714 m!188053))

(assert (=> b!154715 m!188047))

(assert (=> b!154715 m!188047))

(assert (=> b!154715 m!188053))

(assert (=> bm!17207 m!188047))

(declare-fun m!188923 () Bool)

(assert (=> bm!17207 m!188923))

(assert (=> b!154209 d!50857))

(declare-fun d!50859 () Bool)

(assert (=> d!50859 (= (apply!128 (+!187 lt!80924 (tuple2!2807 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!80929) (apply!128 lt!80924 lt!80929))))

(assert (=> d!50859 true))

(declare-fun _$34!1040 () Unit!4897)

(assert (=> d!50859 (= (choose!925 lt!80924 lt!80935 (zeroValue!2907 (v!3416 (underlying!524 thiss!992))) lt!80929) _$34!1040)))

(declare-fun bs!6556 () Bool)

(assert (= bs!6556 d!50859))

(assert (=> bs!6556 m!187853))

(assert (=> bs!6556 m!187853))

(assert (=> bs!6556 m!187855))

(assert (=> bs!6556 m!187867))

(assert (=> d!50523 d!50859))

(assert (=> d!50523 d!50539))

(declare-fun d!50861 () Bool)

(declare-fun e!101080 () Bool)

(assert (=> d!50861 e!101080))

(declare-fun res!73037 () Bool)

(assert (=> d!50861 (=> res!73037 e!101080)))

(declare-fun lt!81294 () Bool)

(assert (=> d!50861 (= res!73037 (not lt!81294))))

(declare-fun lt!81293 () Bool)

(assert (=> d!50861 (= lt!81294 lt!81293)))

(declare-fun lt!81296 () Unit!4897)

(declare-fun e!101081 () Unit!4897)

(assert (=> d!50861 (= lt!81296 e!101081)))

(declare-fun c!29664 () Bool)

(assert (=> d!50861 (= c!29664 lt!81293)))

(assert (=> d!50861 (= lt!81293 (containsKey!186 (toList!923 lt!80924) lt!80929))))

(assert (=> d!50861 (= (contains!961 lt!80924 lt!80929) lt!81294)))

(declare-fun b!154717 () Bool)

(declare-fun lt!81295 () Unit!4897)

(assert (=> b!154717 (= e!101081 lt!81295)))

(assert (=> b!154717 (= lt!81295 (lemmaContainsKeyImpliesGetValueByKeyDefined!135 (toList!923 lt!80924) lt!80929))))

(assert (=> b!154717 (isDefined!136 (getValueByKey!182 (toList!923 lt!80924) lt!80929))))

(declare-fun b!154718 () Bool)

(declare-fun Unit!4924 () Unit!4897)

(assert (=> b!154718 (= e!101081 Unit!4924)))

(declare-fun b!154719 () Bool)

(assert (=> b!154719 (= e!101080 (isDefined!136 (getValueByKey!182 (toList!923 lt!80924) lt!80929)))))

(assert (= (and d!50861 c!29664) b!154717))

(assert (= (and d!50861 (not c!29664)) b!154718))

(assert (= (and d!50861 (not res!73037)) b!154719))

(declare-fun m!188925 () Bool)

(assert (=> d!50861 m!188925))

(declare-fun m!188927 () Bool)

(assert (=> b!154717 m!188927))

(assert (=> b!154717 m!187939))

(assert (=> b!154717 m!187939))

(declare-fun m!188929 () Bool)

(assert (=> b!154717 m!188929))

(assert (=> b!154719 m!187939))

(assert (=> b!154719 m!187939))

(assert (=> b!154719 m!188929))

(assert (=> d!50523 d!50861))

(assert (=> d!50523 d!50529))

(assert (=> d!50523 d!50535))

(declare-fun d!50863 () Bool)

(declare-fun e!101082 () Bool)

(assert (=> d!50863 e!101082))

(declare-fun res!73038 () Bool)

(assert (=> d!50863 (=> res!73038 e!101082)))

(declare-fun lt!81298 () Bool)

(assert (=> d!50863 (= res!73038 (not lt!81298))))

(declare-fun lt!81297 () Bool)

(assert (=> d!50863 (= lt!81298 lt!81297)))

(declare-fun lt!81300 () Unit!4897)

(declare-fun e!101083 () Unit!4897)

(assert (=> d!50863 (= lt!81300 e!101083)))

(declare-fun c!29665 () Bool)

(assert (=> d!50863 (= c!29665 lt!81297)))

(assert (=> d!50863 (= lt!81297 (containsKey!186 (toList!923 lt!81001) (_1!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (=> d!50863 (= (contains!961 lt!81001 (_1!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!81298)))

(declare-fun b!154720 () Bool)

(declare-fun lt!81299 () Unit!4897)

(assert (=> b!154720 (= e!101083 lt!81299)))

(assert (=> b!154720 (= lt!81299 (lemmaContainsKeyImpliesGetValueByKeyDefined!135 (toList!923 lt!81001) (_1!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(assert (=> b!154720 (isDefined!136 (getValueByKey!182 (toList!923 lt!81001) (_1!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun b!154721 () Bool)

(declare-fun Unit!4925 () Unit!4897)

(assert (=> b!154721 (= e!101083 Unit!4925)))

(declare-fun b!154722 () Bool)

(assert (=> b!154722 (= e!101082 (isDefined!136 (getValueByKey!182 (toList!923 lt!81001) (_1!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(assert (= (and d!50863 c!29665) b!154720))

(assert (= (and d!50863 (not c!29665)) b!154721))

(assert (= (and d!50863 (not res!73038)) b!154722))

(declare-fun m!188931 () Bool)

(assert (=> d!50863 m!188931))

(declare-fun m!188933 () Bool)

(assert (=> b!154720 m!188933))

(assert (=> b!154720 m!187975))

(assert (=> b!154720 m!187975))

(declare-fun m!188935 () Bool)

(assert (=> b!154720 m!188935))

(assert (=> b!154722 m!187975))

(assert (=> b!154722 m!187975))

(assert (=> b!154722 m!188935))

(assert (=> d!50537 d!50863))

(declare-fun d!50865 () Bool)

(declare-fun c!29666 () Bool)

(assert (=> d!50865 (= c!29666 (and ((_ is Cons!1819) lt!81000) (= (_1!1413 (h!2428 lt!81000)) (_1!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun e!101084 () Option!188)

(assert (=> d!50865 (= (getValueByKey!182 lt!81000 (_1!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) e!101084)))

(declare-fun e!101085 () Option!188)

(declare-fun b!154725 () Bool)

(assert (=> b!154725 (= e!101085 (getValueByKey!182 (t!6625 lt!81000) (_1!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun b!154724 () Bool)

(assert (=> b!154724 (= e!101084 e!101085)))

(declare-fun c!29667 () Bool)

(assert (=> b!154724 (= c!29667 (and ((_ is Cons!1819) lt!81000) (not (= (_1!1413 (h!2428 lt!81000)) (_1!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))))

(declare-fun b!154723 () Bool)

(assert (=> b!154723 (= e!101084 (Some!187 (_2!1413 (h!2428 lt!81000))))))

(declare-fun b!154726 () Bool)

(assert (=> b!154726 (= e!101085 None!186)))

(assert (= (and d!50865 c!29666) b!154723))

(assert (= (and d!50865 (not c!29666)) b!154724))

(assert (= (and b!154724 c!29667) b!154725))

(assert (= (and b!154724 (not c!29667)) b!154726))

(declare-fun m!188937 () Bool)

(assert (=> b!154725 m!188937))

(assert (=> d!50537 d!50865))

(declare-fun d!50867 () Bool)

(assert (=> d!50867 (= (getValueByKey!182 lt!81000 (_1!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) (Some!187 (_2!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun lt!81301 () Unit!4897)

(assert (=> d!50867 (= lt!81301 (choose!928 lt!81000 (_1!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun e!101086 () Bool)

(assert (=> d!50867 e!101086))

(declare-fun res!73039 () Bool)

(assert (=> d!50867 (=> (not res!73039) (not e!101086))))

(assert (=> d!50867 (= res!73039 (isStrictlySorted!325 lt!81000))))

(assert (=> d!50867 (= (lemmaContainsTupThenGetReturnValue!97 lt!81000 (_1!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!81301)))

(declare-fun b!154727 () Bool)

(declare-fun res!73040 () Bool)

(assert (=> b!154727 (=> (not res!73040) (not e!101086))))

(assert (=> b!154727 (= res!73040 (containsKey!186 lt!81000 (_1!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun b!154728 () Bool)

(assert (=> b!154728 (= e!101086 (contains!962 lt!81000 (tuple2!2807 (_1!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(assert (= (and d!50867 res!73039) b!154727))

(assert (= (and b!154727 res!73040) b!154728))

(assert (=> d!50867 m!187969))

(declare-fun m!188939 () Bool)

(assert (=> d!50867 m!188939))

(declare-fun m!188941 () Bool)

(assert (=> d!50867 m!188941))

(declare-fun m!188943 () Bool)

(assert (=> b!154727 m!188943))

(declare-fun m!188945 () Bool)

(assert (=> b!154728 m!188945))

(assert (=> d!50537 d!50867))

(declare-fun e!101089 () Bool)

(declare-fun b!154729 () Bool)

(declare-fun lt!81302 () List!1823)

(assert (=> b!154729 (= e!101089 (contains!962 lt!81302 (tuple2!2807 (_1!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun bm!17208 () Bool)

(declare-fun call!17212 () List!1823)

(declare-fun call!17213 () List!1823)

(assert (=> bm!17208 (= call!17212 call!17213)))

(declare-fun b!154730 () Bool)

(declare-fun e!101088 () List!1823)

(declare-fun call!17211 () List!1823)

(assert (=> b!154730 (= e!101088 call!17211)))

(declare-fun c!29671 () Bool)

(declare-fun e!101091 () List!1823)

(declare-fun b!154731 () Bool)

(declare-fun c!29670 () Bool)

(assert (=> b!154731 (= e!101091 (ite c!29670 (t!6625 (toList!923 lt!80936)) (ite c!29671 (Cons!1819 (h!2428 (toList!923 lt!80936)) (t!6625 (toList!923 lt!80936))) Nil!1820)))))

(declare-fun b!154732 () Bool)

(declare-fun e!101087 () List!1823)

(assert (=> b!154732 (= e!101087 call!17212)))

(declare-fun b!154733 () Bool)

(declare-fun e!101090 () List!1823)

(assert (=> b!154733 (= e!101090 call!17213)))

(declare-fun d!50869 () Bool)

(assert (=> d!50869 e!101089))

(declare-fun res!73041 () Bool)

(assert (=> d!50869 (=> (not res!73041) (not e!101089))))

(assert (=> d!50869 (= res!73041 (isStrictlySorted!325 lt!81302))))

(assert (=> d!50869 (= lt!81302 e!101088)))

(declare-fun c!29669 () Bool)

(assert (=> d!50869 (= c!29669 (and ((_ is Cons!1819) (toList!923 lt!80936)) (bvslt (_1!1413 (h!2428 (toList!923 lt!80936))) (_1!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(assert (=> d!50869 (isStrictlySorted!325 (toList!923 lt!80936))))

(assert (=> d!50869 (= (insertStrictlySorted!99 (toList!923 lt!80936) (_1!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))) lt!81302)))

(declare-fun b!154734 () Bool)

(assert (=> b!154734 (= c!29671 (and ((_ is Cons!1819) (toList!923 lt!80936)) (bvsgt (_1!1413 (h!2428 (toList!923 lt!80936))) (_1!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(assert (=> b!154734 (= e!101090 e!101087)))

(declare-fun b!154735 () Bool)

(assert (=> b!154735 (= e!101088 e!101090)))

(assert (=> b!154735 (= c!29670 (and ((_ is Cons!1819) (toList!923 lt!80936)) (= (_1!1413 (h!2428 (toList!923 lt!80936))) (_1!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992))))))))))

(declare-fun bm!17209 () Bool)

(assert (=> bm!17209 (= call!17213 call!17211)))

(declare-fun b!154736 () Bool)

(assert (=> b!154736 (= e!101091 (insertStrictlySorted!99 (t!6625 (toList!923 lt!80936)) (_1!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun b!154737 () Bool)

(assert (=> b!154737 (= e!101087 call!17212)))

(declare-fun b!154738 () Bool)

(declare-fun res!73042 () Bool)

(assert (=> b!154738 (=> (not res!73042) (not e!101089))))

(assert (=> b!154738 (= res!73042 (containsKey!186 lt!81302 (_1!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))

(declare-fun bm!17210 () Bool)

(assert (=> bm!17210 (= call!17211 ($colon$colon!95 e!101091 (ite c!29669 (h!2428 (toList!923 lt!80936)) (tuple2!2807 (_1!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) (_2!1413 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992)))))))))))

(declare-fun c!29668 () Bool)

(assert (=> bm!17210 (= c!29668 c!29669)))

(assert (= (and d!50869 c!29669) b!154730))

(assert (= (and d!50869 (not c!29669)) b!154735))

(assert (= (and b!154735 c!29670) b!154733))

(assert (= (and b!154735 (not c!29670)) b!154734))

(assert (= (and b!154734 c!29671) b!154732))

(assert (= (and b!154734 (not c!29671)) b!154737))

(assert (= (or b!154732 b!154737) bm!17208))

(assert (= (or b!154733 bm!17208) bm!17209))

(assert (= (or b!154730 bm!17209) bm!17210))

(assert (= (and bm!17210 c!29668) b!154736))

(assert (= (and bm!17210 (not c!29668)) b!154731))

(assert (= (and d!50869 res!73041) b!154738))

(assert (= (and b!154738 res!73042) b!154729))

(declare-fun m!188947 () Bool)

(assert (=> bm!17210 m!188947))

(declare-fun m!188949 () Bool)

(assert (=> b!154729 m!188949))

(declare-fun m!188951 () Bool)

(assert (=> d!50869 m!188951))

(declare-fun m!188953 () Bool)

(assert (=> d!50869 m!188953))

(declare-fun m!188955 () Bool)

(assert (=> b!154738 m!188955))

(declare-fun m!188957 () Bool)

(assert (=> b!154736 m!188957))

(assert (=> d!50537 d!50869))

(assert (=> d!50577 d!50623))

(declare-fun d!50871 () Bool)

(assert (=> d!50871 (= (get!1610 (getValueByKey!182 (toList!923 lt!80934) #b1000000000000000000000000000000000000000000000000000000000000000)) (v!3418 (getValueByKey!182 (toList!923 lt!80934) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!50565 d!50871))

(assert (=> d!50565 d!50701))

(declare-fun d!50873 () Bool)

(declare-fun res!73043 () Bool)

(declare-fun e!101092 () Bool)

(assert (=> d!50873 (=> res!73043 e!101092)))

(assert (=> d!50873 (= res!73043 (and ((_ is Cons!1819) (toList!923 lt!80934)) (= (_1!1413 (h!2428 (toList!923 lt!80934))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!50873 (= (containsKey!186 (toList!923 lt!80934) #b1000000000000000000000000000000000000000000000000000000000000000) e!101092)))

(declare-fun b!154739 () Bool)

(declare-fun e!101093 () Bool)

(assert (=> b!154739 (= e!101092 e!101093)))

(declare-fun res!73044 () Bool)

(assert (=> b!154739 (=> (not res!73044) (not e!101093))))

(assert (=> b!154739 (= res!73044 (and (or (not ((_ is Cons!1819) (toList!923 lt!80934))) (bvsle (_1!1413 (h!2428 (toList!923 lt!80934))) #b1000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!1819) (toList!923 lt!80934)) (bvslt (_1!1413 (h!2428 (toList!923 lt!80934))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!154740 () Bool)

(assert (=> b!154740 (= e!101093 (containsKey!186 (t!6625 (toList!923 lt!80934)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!50873 (not res!73043)) b!154739))

(assert (= (and b!154739 res!73044) b!154740))

(declare-fun m!188959 () Bool)

(assert (=> b!154740 m!188959))

(assert (=> d!50563 d!50873))

(declare-fun d!50875 () Bool)

(declare-fun e!101094 () Bool)

(assert (=> d!50875 e!101094))

(declare-fun res!73045 () Bool)

(assert (=> d!50875 (=> (not res!73045) (not e!101094))))

(declare-fun lt!81305 () ListLongMap!1815)

(assert (=> d!50875 (= res!73045 (contains!961 lt!81305 (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 newMap!16)))))))

(declare-fun lt!81304 () List!1823)

(assert (=> d!50875 (= lt!81305 (ListLongMap!1816 lt!81304))))

(declare-fun lt!81306 () Unit!4897)

(declare-fun lt!81303 () Unit!4897)

(assert (=> d!50875 (= lt!81306 lt!81303)))

(assert (=> d!50875 (= (getValueByKey!182 lt!81304 (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 newMap!16)))) (Some!187 (_2!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 newMap!16)))))))

(assert (=> d!50875 (= lt!81303 (lemmaContainsTupThenGetReturnValue!97 lt!81304 (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 newMap!16))) (_2!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 newMap!16)))))))

(assert (=> d!50875 (= lt!81304 (insertStrictlySorted!99 (toList!923 call!17174) (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 newMap!16))) (_2!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 newMap!16)))))))

(assert (=> d!50875 (= (+!187 call!17174 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 newMap!16))) lt!81305)))

(declare-fun b!154741 () Bool)

(declare-fun res!73046 () Bool)

(assert (=> b!154741 (=> (not res!73046) (not e!101094))))

(assert (=> b!154741 (= res!73046 (= (getValueByKey!182 (toList!923 lt!81305) (_1!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 newMap!16)))) (Some!187 (_2!1413 (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 newMap!16))))))))

(declare-fun b!154742 () Bool)

(assert (=> b!154742 (= e!101094 (contains!962 (toList!923 lt!81305) (tuple2!2807 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2907 newMap!16))))))

(assert (= (and d!50875 res!73045) b!154741))

(assert (= (and b!154741 res!73046) b!154742))

(declare-fun m!188961 () Bool)

(assert (=> d!50875 m!188961))

(declare-fun m!188963 () Bool)

(assert (=> d!50875 m!188963))

(declare-fun m!188965 () Bool)

(assert (=> d!50875 m!188965))

(declare-fun m!188967 () Bool)

(assert (=> d!50875 m!188967))

(declare-fun m!188969 () Bool)

(assert (=> b!154741 m!188969))

(declare-fun m!188971 () Bool)

(assert (=> b!154742 m!188971))

(assert (=> b!154299 d!50875))

(assert (=> b!154232 d!50851))

(assert (=> b!154165 d!50551))

(declare-fun d!50877 () Bool)

(assert (=> d!50877 (= (apply!128 lt!81066 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1610 (getValueByKey!182 (toList!923 lt!81066) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!6557 () Bool)

(assert (= bs!6557 d!50877))

(assert (=> bs!6557 m!188745))

(assert (=> bs!6557 m!188745))

(declare-fun m!188973 () Bool)

(assert (=> bs!6557 m!188973))

(assert (=> b!154280 d!50877))

(assert (=> d!50519 d!50513))

(assert (=> d!50519 d!50537))

(assert (=> d!50519 d!50515))

(declare-fun d!50879 () Bool)

(declare-fun e!101095 () Bool)

(assert (=> d!50879 e!101095))

(declare-fun res!73047 () Bool)

(assert (=> d!50879 (=> res!73047 e!101095)))

(declare-fun lt!81308 () Bool)

(assert (=> d!50879 (= res!73047 (not lt!81308))))

(declare-fun lt!81307 () Bool)

(assert (=> d!50879 (= lt!81308 lt!81307)))

(declare-fun lt!81310 () Unit!4897)

(declare-fun e!101096 () Unit!4897)

(assert (=> d!50879 (= lt!81310 e!101096)))

(declare-fun c!29672 () Bool)

(assert (=> d!50879 (= c!29672 lt!81307)))

(assert (=> d!50879 (= lt!81307 (containsKey!186 (toList!923 lt!80936) lt!80941))))

(assert (=> d!50879 (= (contains!961 lt!80936 lt!80941) lt!81308)))

(declare-fun b!154743 () Bool)

(declare-fun lt!81309 () Unit!4897)

(assert (=> b!154743 (= e!101096 lt!81309)))

(assert (=> b!154743 (= lt!81309 (lemmaContainsKeyImpliesGetValueByKeyDefined!135 (toList!923 lt!80936) lt!80941))))

(assert (=> b!154743 (isDefined!136 (getValueByKey!182 (toList!923 lt!80936) lt!80941))))

(declare-fun b!154744 () Bool)

(declare-fun Unit!4926 () Unit!4897)

(assert (=> b!154744 (= e!101096 Unit!4926)))

(declare-fun b!154745 () Bool)

(assert (=> b!154745 (= e!101095 (isDefined!136 (getValueByKey!182 (toList!923 lt!80936) lt!80941)))))

(assert (= (and d!50879 c!29672) b!154743))

(assert (= (and d!50879 (not c!29672)) b!154744))

(assert (= (and d!50879 (not res!73047)) b!154745))

(declare-fun m!188975 () Bool)

(assert (=> d!50879 m!188975))

(declare-fun m!188977 () Bool)

(assert (=> b!154743 m!188977))

(assert (=> b!154743 m!187883))

(assert (=> b!154743 m!187883))

(declare-fun m!188979 () Bool)

(assert (=> b!154743 m!188979))

(assert (=> b!154745 m!187883))

(assert (=> b!154745 m!187883))

(assert (=> b!154745 m!188979))

(assert (=> d!50519 d!50879))

(declare-fun d!50881 () Bool)

(assert (=> d!50881 (= (apply!128 (+!187 lt!80936 (tuple2!2807 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992))))) lt!80941) (apply!128 lt!80936 lt!80941))))

(assert (=> d!50881 true))

(declare-fun _$34!1041 () Unit!4897)

(assert (=> d!50881 (= (choose!925 lt!80936 lt!80926 (minValue!2907 (v!3416 (underlying!524 thiss!992))) lt!80941) _$34!1041)))

(declare-fun bs!6558 () Bool)

(assert (= bs!6558 d!50881))

(assert (=> bs!6558 m!187863))

(assert (=> bs!6558 m!187863))

(assert (=> bs!6558 m!187865))

(assert (=> bs!6558 m!187873))

(assert (=> d!50519 d!50881))

(declare-fun d!50883 () Bool)

(declare-fun e!101097 () Bool)

(assert (=> d!50883 e!101097))

(declare-fun res!73048 () Bool)

(assert (=> d!50883 (=> res!73048 e!101097)))

(declare-fun lt!81312 () Bool)

(assert (=> d!50883 (= res!73048 (not lt!81312))))

(declare-fun lt!81311 () Bool)

(assert (=> d!50883 (= lt!81312 lt!81311)))

(declare-fun lt!81314 () Unit!4897)

(declare-fun e!101098 () Unit!4897)

(assert (=> d!50883 (= lt!81314 e!101098)))

(declare-fun c!29673 () Bool)

(assert (=> d!50883 (= c!29673 lt!81311)))

(assert (=> d!50883 (= lt!81311 (containsKey!186 (toList!923 lt!80964) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!50883 (= (contains!961 lt!80964 #b1000000000000000000000000000000000000000000000000000000000000000) lt!81312)))

(declare-fun b!154746 () Bool)

(declare-fun lt!81313 () Unit!4897)

(assert (=> b!154746 (= e!101098 lt!81313)))

(assert (=> b!154746 (= lt!81313 (lemmaContainsKeyImpliesGetValueByKeyDefined!135 (toList!923 lt!80964) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!154746 (isDefined!136 (getValueByKey!182 (toList!923 lt!80964) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!154747 () Bool)

(declare-fun Unit!4927 () Unit!4897)

(assert (=> b!154747 (= e!101098 Unit!4927)))

(declare-fun b!154748 () Bool)

(assert (=> b!154748 (= e!101097 (isDefined!136 (getValueByKey!182 (toList!923 lt!80964) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!50883 c!29673) b!154746))

(assert (= (and d!50883 (not c!29673)) b!154747))

(assert (= (and d!50883 (not res!73048)) b!154748))

(declare-fun m!188981 () Bool)

(assert (=> d!50883 m!188981))

(declare-fun m!188983 () Bool)

(assert (=> b!154746 m!188983))

(declare-fun m!188985 () Bool)

(assert (=> b!154746 m!188985))

(assert (=> b!154746 m!188985))

(declare-fun m!188987 () Bool)

(assert (=> b!154746 m!188987))

(assert (=> b!154748 m!188985))

(assert (=> b!154748 m!188985))

(assert (=> b!154748 m!188987))

(assert (=> b!154162 d!50883))

(declare-fun mapIsEmpty!5185 () Bool)

(declare-fun mapRes!5185 () Bool)

(assert (=> mapIsEmpty!5185 mapRes!5185))

(declare-fun b!154750 () Bool)

(declare-fun e!101100 () Bool)

(assert (=> b!154750 (= e!101100 tp_is_empty!3027)))

(declare-fun mapNonEmpty!5185 () Bool)

(declare-fun tp!12205 () Bool)

(declare-fun e!101099 () Bool)

(assert (=> mapNonEmpty!5185 (= mapRes!5185 (and tp!12205 e!101099))))

(declare-fun mapRest!5185 () (Array (_ BitVec 32) ValueCell!1170))

(declare-fun mapKey!5185 () (_ BitVec 32))

(declare-fun mapValue!5185 () ValueCell!1170)

(assert (=> mapNonEmpty!5185 (= mapRest!5184 (store mapRest!5185 mapKey!5185 mapValue!5185))))

(declare-fun b!154749 () Bool)

(assert (=> b!154749 (= e!101099 tp_is_empty!3027)))

(declare-fun condMapEmpty!5185 () Bool)

(declare-fun mapDefault!5185 () ValueCell!1170)

(assert (=> mapNonEmpty!5184 (= condMapEmpty!5185 (= mapRest!5184 ((as const (Array (_ BitVec 32) ValueCell!1170)) mapDefault!5185)))))

(assert (=> mapNonEmpty!5184 (= tp!12204 (and e!101100 mapRes!5185))))

(assert (= (and mapNonEmpty!5184 condMapEmpty!5185) mapIsEmpty!5185))

(assert (= (and mapNonEmpty!5184 (not condMapEmpty!5185)) mapNonEmpty!5185))

(assert (= (and mapNonEmpty!5185 ((_ is ValueCellFull!1170) mapValue!5185)) b!154749))

(assert (= (and mapNonEmpty!5184 ((_ is ValueCellFull!1170) mapDefault!5185)) b!154750))

(declare-fun m!188989 () Bool)

(assert (=> mapNonEmpty!5185 m!188989))

(declare-fun mapIsEmpty!5186 () Bool)

(declare-fun mapRes!5186 () Bool)

(assert (=> mapIsEmpty!5186 mapRes!5186))

(declare-fun b!154752 () Bool)

(declare-fun e!101102 () Bool)

(assert (=> b!154752 (= e!101102 tp_is_empty!3027)))

(declare-fun mapNonEmpty!5186 () Bool)

(declare-fun tp!12206 () Bool)

(declare-fun e!101101 () Bool)

(assert (=> mapNonEmpty!5186 (= mapRes!5186 (and tp!12206 e!101101))))

(declare-fun mapValue!5186 () ValueCell!1170)

(declare-fun mapRest!5186 () (Array (_ BitVec 32) ValueCell!1170))

(declare-fun mapKey!5186 () (_ BitVec 32))

(assert (=> mapNonEmpty!5186 (= mapRest!5183 (store mapRest!5186 mapKey!5186 mapValue!5186))))

(declare-fun b!154751 () Bool)

(assert (=> b!154751 (= e!101101 tp_is_empty!3027)))

(declare-fun condMapEmpty!5186 () Bool)

(declare-fun mapDefault!5186 () ValueCell!1170)

(assert (=> mapNonEmpty!5183 (= condMapEmpty!5186 (= mapRest!5183 ((as const (Array (_ BitVec 32) ValueCell!1170)) mapDefault!5186)))))

(assert (=> mapNonEmpty!5183 (= tp!12203 (and e!101102 mapRes!5186))))

(assert (= (and mapNonEmpty!5183 condMapEmpty!5186) mapIsEmpty!5186))

(assert (= (and mapNonEmpty!5183 (not condMapEmpty!5186)) mapNonEmpty!5186))

(assert (= (and mapNonEmpty!5186 ((_ is ValueCellFull!1170) mapValue!5186)) b!154751))

(assert (= (and mapNonEmpty!5183 ((_ is ValueCellFull!1170) mapDefault!5186)) b!154752))

(declare-fun m!188991 () Bool)

(assert (=> mapNonEmpty!5186 m!188991))

(declare-fun b_lambda!6905 () Bool)

(assert (= b_lambda!6903 (or (and b!153994 b_free!3221) (and b!153997 b_free!3223 (= (defaultEntry!3064 newMap!16) (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))))) b_lambda!6905)))

(declare-fun b_lambda!6907 () Bool)

(assert (= b_lambda!6893 (or (and b!153994 b_free!3221 (= (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))) (defaultEntry!3064 newMap!16))) (and b!153997 b_free!3223) b_lambda!6907)))

(declare-fun b_lambda!6909 () Bool)

(assert (= b_lambda!6897 (or (and b!153994 b_free!3221) (and b!153997 b_free!3223 (= (defaultEntry!3064 newMap!16) (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))))) b_lambda!6909)))

(declare-fun b_lambda!6911 () Bool)

(assert (= b_lambda!6895 (or (and b!153994 b_free!3221 (= (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))) (defaultEntry!3064 newMap!16))) (and b!153997 b_free!3223) b_lambda!6911)))

(declare-fun b_lambda!6913 () Bool)

(assert (= b_lambda!6899 (or (and b!153994 b_free!3221) (and b!153997 b_free!3223 (= (defaultEntry!3064 newMap!16) (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))))) b_lambda!6913)))

(declare-fun b_lambda!6915 () Bool)

(assert (= b_lambda!6901 (or (and b!153994 b_free!3221) (and b!153997 b_free!3223 (= (defaultEntry!3064 newMap!16) (defaultEntry!3064 (v!3416 (underlying!524 thiss!992))))) b_lambda!6915)))

(check-sat (not b!154442) (not bm!17203) (not b!154743) tp_is_empty!3027 (not d!50693) (not d!50659) (not b!154722) (not b!154736) (not b!154406) (not b!154727) (not b!154741) (not d!50593) (not b!154563) (not d!50793) (not b!154617) (not d!50773) (not b!154500) (not b!154517) (not b!154561) (not b_lambda!6915) (not b!154669) (not b!154690) (not b!154393) (not b!154693) (not d!50815) (not b!154429) (not d!50743) (not b!154682) (not d!50587) (not b!154417) (not d!50863) (not d!50633) (not b!154658) (not b!154449) (not d!50819) (not d!50859) (not d!50733) (not b!154710) (not b_lambda!6913) (not b!154351) (not b!154639) (not b!154383) (not b!154649) (not b!154412) (not d!50717) (not b!154503) (not d!50737) (not d!50803) (not b!154390) (not b_next!3223) (not b!154415) (not b!154553) (not b!154638) (not b!154610) (not b_lambda!6907) (not b!154526) (not b!154694) (not b!154350) (not b!154382) (not b_lambda!6885) (not b!154667) (not d!50805) (not b!154678) (not d!50763) (not b!154670) (not d!50883) (not d!50843) (not b!154661) (not d!50813) (not b!154657) (not b!154580) (not b!154427) (not b!154626) (not d!50697) (not d!50809) (not b!154728) (not d!50789) (not b!154397) (not b!154414) (not b!154379) (not bm!17210) (not b_lambda!6889) (not d!50721) (not b!154534) (not b!154486) (not d!50625) (not d!50629) (not d!50781) (not b!154607) (not d!50853) (not b!154356) (not b!154713) (not b!154603) (not b_lambda!6909) (not b!154656) (not d!50631) (not b!154327) (not b!154618) (not b!154436) (not b_next!3221) (not b!154374) (not bm!17199) (not b!154325) (not d!50801) (not b!154398) (not d!50867) (not d!50617) (not b!154570) (not b!154646) (not b!154319) (not b!154399) (not b!154717) (not b!154564) (not d!50655) (not b!154742) (not bm!17207) (not b!154554) (not d!50723) (not b!154677) (not b!154576) (not b!154686) (not bm!17179) (not b!154565) (not bm!17193) (not b!154573) (not d!50667) (not b!154666) (not d!50635) (not d!50785) (not d!50647) (not b!154352) (not d!50861) (not b!154619) (not d!50713) (not b!154484) (not d!50695) (not b!154720) (not b!154498) (not d!50649) (not d!50869) (not b!154367) (not b!154711) (not b!154380) (not b!154477) (not bm!17192) (not d!50709) (not b!154696) (not b!154410) (not bm!17181) (not d!50699) (not b!154635) (not d!50765) (not d!50821) (not d!50735) (not b!154489) (not bm!17180) (not bm!17178) (not b!154725) (not d!50639) (not bm!17191) (not b!154347) (not b!154648) (not d!50811) (not b!154395) (not b!154519) (not b!154675) (not b!154637) (not b!154651) (not b!154630) (not d!50669) (not bm!17200) (not mapNonEmpty!5185) (not b!154663) (not d!50653) (not b!154715) (not b!154714) (not b!154719) (not b!154612) (not b!154369) (not b!154535) (not b!154425) b_and!9657 (not d!50679) (not b!154652) (not b!154317) (not d!50841) (not bm!17206) (not d!50645) (not b_lambda!6911) (not b!154428) (not b!154740) (not d!50881) (not b!154326) (not d!50791) (not d!50875) (not d!50681) (not b!154332) (not d!50637) (not d!50787) b_and!9659 (not d!50621) (not bm!17196) (not b!154542) (not d!50651) (not b!154738) (not b!154524) (not b!154360) (not d!50581) (not b!154574) (not b!154487) (not b!154402) (not b!154698) (not b!154566) (not b!154550) (not b!154628) (not b!154533) (not d!50607) (not b!154396) (not b!154394) (not b!154748) (not d!50585) (not b!154343) (not d!50817) (not b!154426) (not d!50769) (not b!154404) (not d!50757) (not b!154507) (not b!154324) (not b!154456) (not b!154492) (not d!50797) (not b!154587) (not d!50753) (not b!154387) (not b!154318) (not d!50855) (not b!154531) (not d!50741) (not b!154370) (not b!154446) (not bm!17182) (not d!50877) (not d!50771) (not b!154419) (not d!50657) (not b!154544) (not b_lambda!6905) (not b_lambda!6887) (not b!154433) (not d!50643) (not b_lambda!6891) (not b!154545) (not d!50615) (not d!50665) (not b!154515) (not b!154703) (not d!50799) (not d!50759) (not b!154508) (not b_lambda!6875) (not b!154660) (not d!50671) (not d!50619) (not b!154323) (not b!154679) (not b!154609) (not b!154495) (not d!50729) (not d!50779) (not d!50823) (not b!154571) (not b!154432) (not b!154331) (not b!154729) (not b!154654) (not d!50715) (not b!154608) (not d!50749) (not b!154745) (not d!50683) (not b!154629) (not b!154385) (not mapNonEmpty!5186) (not d!50677) (not d!50775) (not b!154615) (not d!50689) (not d!50879) (not b!154700) (not d!50745) (not b!154575) (not d!50807) (not b!154547) (not b!154444) (not b!154655) (not b!154401) (not b!154516) (not b!154329) (not b!154552) (not b!154632) (not b!154455) (not d!50783) (not b!154746) (not b!154439) (not d!50795) (not d!50641) (not d!50707) (not b!154423) (not b!154665) (not b!154377) (not d!50611) (not b!154424) (not b!154328) (not b!154505) (not d!50849) (not b!154528) (not b!154572))
(check-sat b_and!9657 b_and!9659 (not b_next!3221) (not b_next!3223))
