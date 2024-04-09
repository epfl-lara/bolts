; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!12160 () Bool)

(assert start!12160)

(declare-fun b!102776 () Bool)

(declare-fun b_free!2501 () Bool)

(declare-fun b_next!2501 () Bool)

(assert (=> b!102776 (= b_free!2501 (not b_next!2501))))

(declare-fun tp!9813 () Bool)

(declare-fun b_and!6361 () Bool)

(assert (=> b!102776 (= tp!9813 b_and!6361)))

(declare-fun b!102769 () Bool)

(declare-fun b_free!2503 () Bool)

(declare-fun b_next!2503 () Bool)

(assert (=> b!102769 (= b_free!2503 (not b_next!2503))))

(declare-fun tp!9816 () Bool)

(declare-fun b_and!6363 () Bool)

(assert (=> b!102769 (= tp!9816 b_and!6363)))

(declare-fun b!102764 () Bool)

(declare-fun e!66946 () Bool)

(declare-fun e!66958 () Bool)

(declare-fun mapRes!3881 () Bool)

(assert (=> b!102764 (= e!66946 (and e!66958 mapRes!3881))))

(declare-fun condMapEmpty!3882 () Bool)

(declare-datatypes ((V!3203 0))(
  ( (V!3204 (val!1378 Int)) )
))
(declare-datatypes ((array!4320 0))(
  ( (array!4321 (arr!2050 (Array (_ BitVec 32) (_ BitVec 64))) (size!2304 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!990 0))(
  ( (ValueCellFull!990 (v!2867 V!3203)) (EmptyCell!990) )
))
(declare-datatypes ((array!4322 0))(
  ( (array!4323 (arr!2051 (Array (_ BitVec 32) ValueCell!990)) (size!2305 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!888 0))(
  ( (LongMapFixedSize!889 (defaultEntry!2555 Int) (mask!6688 (_ BitVec 32)) (extraKeys!2364 (_ BitVec 32)) (zeroValue!2432 V!3203) (minValue!2432 V!3203) (_size!493 (_ BitVec 32)) (_keys!4257 array!4320) (_values!2538 array!4322) (_vacant!493 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!690 0))(
  ( (Cell!691 (v!2868 LongMapFixedSize!888)) )
))
(declare-datatypes ((LongMap!690 0))(
  ( (LongMap!691 (underlying!356 Cell!690)) )
))
(declare-fun thiss!992 () LongMap!690)

(declare-fun mapDefault!3882 () ValueCell!990)

(assert (=> b!102764 (= condMapEmpty!3882 (= (arr!2051 (_values!2538 (v!2868 (underlying!356 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!990)) mapDefault!3882)))))

(declare-fun b!102765 () Bool)

(declare-fun e!66951 () Bool)

(declare-fun tp_is_empty!2667 () Bool)

(assert (=> b!102765 (= e!66951 tp_is_empty!2667)))

(declare-fun b!102766 () Bool)

(declare-fun e!66952 () Bool)

(assert (=> b!102766 (= e!66952 tp_is_empty!2667)))

(declare-fun b!102767 () Bool)

(declare-datatypes ((Unit!3158 0))(
  ( (Unit!3159) )
))
(declare-fun e!66960 () Unit!3158)

(declare-fun Unit!3160 () Unit!3158)

(assert (=> b!102767 (= e!66960 Unit!3160)))

(declare-fun lt!52220 () Unit!3158)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!108 (array!4320 array!4322 (_ BitVec 32) (_ BitVec 32) V!3203 V!3203 (_ BitVec 64) (_ BitVec 32) Int) Unit!3158)

(assert (=> b!102767 (= lt!52220 (lemmaListMapContainsThenArrayContainsFrom!108 (_keys!4257 (v!2868 (underlying!356 thiss!992))) (_values!2538 (v!2868 (underlying!356 thiss!992))) (mask!6688 (v!2868 (underlying!356 thiss!992))) (extraKeys!2364 (v!2868 (underlying!356 thiss!992))) (zeroValue!2432 (v!2868 (underlying!356 thiss!992))) (minValue!2432 (v!2868 (underlying!356 thiss!992))) (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2555 (v!2868 (underlying!356 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4320 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!102767 (arrayContainsKey!0 (_keys!4257 (v!2868 (underlying!356 thiss!992))) (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!52219 () Unit!3158)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4320 (_ BitVec 32) (_ BitVec 32)) Unit!3158)

(assert (=> b!102767 (= lt!52219 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4257 (v!2868 (underlying!356 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1632 0))(
  ( (Nil!1629) (Cons!1628 (h!2224 (_ BitVec 64)) (t!5694 List!1632)) )
))
(declare-fun arrayNoDuplicates!0 (array!4320 (_ BitVec 32) List!1632) Bool)

(assert (=> b!102767 (arrayNoDuplicates!0 (_keys!4257 (v!2868 (underlying!356 thiss!992))) from!355 Nil!1629)))

(declare-fun lt!52228 () Unit!3158)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4320 (_ BitVec 32) (_ BitVec 64) List!1632) Unit!3158)

(assert (=> b!102767 (= lt!52228 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4257 (v!2868 (underlying!356 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) (Cons!1628 (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) Nil!1629)))))

(assert (=> b!102767 false))

(declare-fun mapIsEmpty!3881 () Bool)

(assert (=> mapIsEmpty!3881 mapRes!3881))

(declare-fun b!102768 () Bool)

(declare-fun e!66947 () Bool)

(declare-fun e!66953 () Bool)

(assert (=> b!102768 (= e!66947 e!66953)))

(declare-fun e!66945 () Bool)

(declare-fun e!66957 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!888)

(declare-fun array_inv!1233 (array!4320) Bool)

(declare-fun array_inv!1234 (array!4322) Bool)

(assert (=> b!102769 (= e!66957 (and tp!9816 tp_is_empty!2667 (array_inv!1233 (_keys!4257 newMap!16)) (array_inv!1234 (_values!2538 newMap!16)) e!66945))))

(declare-fun mapNonEmpty!3881 () Bool)

(declare-fun mapRes!3882 () Bool)

(declare-fun tp!9814 () Bool)

(assert (=> mapNonEmpty!3881 (= mapRes!3882 (and tp!9814 e!66951))))

(declare-fun mapKey!3882 () (_ BitVec 32))

(declare-fun mapRest!3881 () (Array (_ BitVec 32) ValueCell!990))

(declare-fun mapValue!3881 () ValueCell!990)

(assert (=> mapNonEmpty!3881 (= (arr!2051 (_values!2538 newMap!16)) (store mapRest!3881 mapKey!3882 mapValue!3881))))

(declare-fun b!102770 () Bool)

(declare-fun e!66955 () Bool)

(declare-fun e!66948 () Bool)

(assert (=> b!102770 (= e!66955 e!66948)))

(declare-fun res!51371 () Bool)

(assert (=> b!102770 (=> (not res!51371) (not e!66948))))

(declare-datatypes ((tuple2!2390 0))(
  ( (tuple2!2391 (_1!1205 Bool) (_2!1205 LongMapFixedSize!888)) )
))
(declare-fun lt!52221 () tuple2!2390)

(assert (=> b!102770 (= res!51371 (and (_1!1205 lt!52221) (bvsle from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!52223 () Unit!3158)

(assert (=> b!102770 (= lt!52223 e!66960)))

(declare-datatypes ((tuple2!2392 0))(
  ( (tuple2!2393 (_1!1206 (_ BitVec 64)) (_2!1206 V!3203)) )
))
(declare-datatypes ((List!1633 0))(
  ( (Nil!1630) (Cons!1629 (h!2225 tuple2!2392) (t!5695 List!1633)) )
))
(declare-datatypes ((ListLongMap!1573 0))(
  ( (ListLongMap!1574 (toList!802 List!1633)) )
))
(declare-fun lt!52229 () ListLongMap!1573)

(declare-fun c!17678 () Bool)

(declare-fun contains!821 (ListLongMap!1573 (_ BitVec 64)) Bool)

(assert (=> b!102770 (= c!17678 (contains!821 lt!52229 (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355)))))

(declare-fun lt!52226 () V!3203)

(declare-fun update!154 (LongMapFixedSize!888 (_ BitVec 64) V!3203) tuple2!2390)

(assert (=> b!102770 (= lt!52221 (update!154 newMap!16 (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) lt!52226))))

(declare-fun b!102771 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!102771 (= e!66948 (not (validMask!0 (mask!6688 (v!2868 (underlying!356 thiss!992))))))))

(declare-fun lt!52225 () ListLongMap!1573)

(declare-fun lt!52222 () tuple2!2392)

(declare-fun lt!52218 () tuple2!2392)

(declare-fun +!142 (ListLongMap!1573 tuple2!2392) ListLongMap!1573)

(assert (=> b!102771 (= (+!142 (+!142 lt!52225 lt!52222) lt!52218) (+!142 (+!142 lt!52225 lt!52218) lt!52222))))

(assert (=> b!102771 (= lt!52218 (tuple2!2393 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2432 (v!2868 (underlying!356 thiss!992)))))))

(assert (=> b!102771 (= lt!52222 (tuple2!2393 (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) lt!52226))))

(declare-fun lt!52224 () Unit!3158)

(declare-fun addCommutativeForDiffKeys!54 (ListLongMap!1573 (_ BitVec 64) V!3203 (_ BitVec 64) V!3203) Unit!3158)

(assert (=> b!102771 (= lt!52224 (addCommutativeForDiffKeys!54 lt!52225 (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) lt!52226 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2432 (v!2868 (underlying!356 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!109 (array!4320 array!4322 (_ BitVec 32) (_ BitVec 32) V!3203 V!3203 (_ BitVec 32) Int) ListLongMap!1573)

(assert (=> b!102771 (= lt!52225 (getCurrentListMapNoExtraKeys!109 (_keys!4257 (v!2868 (underlying!356 thiss!992))) (_values!2538 (v!2868 (underlying!356 thiss!992))) (mask!6688 (v!2868 (underlying!356 thiss!992))) (extraKeys!2364 (v!2868 (underlying!356 thiss!992))) (zeroValue!2432 (v!2868 (underlying!356 thiss!992))) (minValue!2432 (v!2868 (underlying!356 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2555 (v!2868 (underlying!356 thiss!992)))))))

(declare-fun b!102772 () Bool)

(declare-fun e!66949 () Bool)

(assert (=> b!102772 (= e!66949 tp_is_empty!2667)))

(declare-fun b!102774 () Bool)

(assert (=> b!102774 (= e!66958 tp_is_empty!2667)))

(declare-fun b!102775 () Bool)

(declare-fun res!51373 () Bool)

(declare-fun e!66950 () Bool)

(assert (=> b!102775 (=> (not res!51373) (not e!66950))))

(assert (=> b!102775 (= res!51373 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6688 newMap!16)) (_size!493 (v!2868 (underlying!356 thiss!992)))))))

(declare-fun e!66944 () Bool)

(assert (=> b!102776 (= e!66944 (and tp!9813 tp_is_empty!2667 (array_inv!1233 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) (array_inv!1234 (_values!2538 (v!2868 (underlying!356 thiss!992)))) e!66946))))

(declare-fun mapIsEmpty!3882 () Bool)

(assert (=> mapIsEmpty!3882 mapRes!3882))

(declare-fun b!102777 () Bool)

(declare-fun res!51376 () Bool)

(assert (=> b!102777 (=> (not res!51376) (not e!66950))))

(assert (=> b!102777 (= res!51376 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2304 (_keys!4257 (v!2868 (underlying!356 thiss!992)))))))))

(declare-fun b!102778 () Bool)

(declare-fun e!66954 () Bool)

(assert (=> b!102778 (= e!66950 e!66954)))

(declare-fun res!51374 () Bool)

(assert (=> b!102778 (=> (not res!51374) (not e!66954))))

(declare-fun lt!52227 () ListLongMap!1573)

(assert (=> b!102778 (= res!51374 (= lt!52227 lt!52229))))

(declare-fun map!1275 (LongMapFixedSize!888) ListLongMap!1573)

(assert (=> b!102778 (= lt!52229 (map!1275 newMap!16))))

(declare-fun getCurrentListMap!480 (array!4320 array!4322 (_ BitVec 32) (_ BitVec 32) V!3203 V!3203 (_ BitVec 32) Int) ListLongMap!1573)

(assert (=> b!102778 (= lt!52227 (getCurrentListMap!480 (_keys!4257 (v!2868 (underlying!356 thiss!992))) (_values!2538 (v!2868 (underlying!356 thiss!992))) (mask!6688 (v!2868 (underlying!356 thiss!992))) (extraKeys!2364 (v!2868 (underlying!356 thiss!992))) (zeroValue!2432 (v!2868 (underlying!356 thiss!992))) (minValue!2432 (v!2868 (underlying!356 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2555 (v!2868 (underlying!356 thiss!992)))))))

(declare-fun b!102779 () Bool)

(assert (=> b!102779 (= e!66953 e!66944)))

(declare-fun b!102773 () Bool)

(assert (=> b!102773 (= e!66945 (and e!66949 mapRes!3882))))

(declare-fun condMapEmpty!3881 () Bool)

(declare-fun mapDefault!3881 () ValueCell!990)

(assert (=> b!102773 (= condMapEmpty!3881 (= (arr!2051 (_values!2538 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!990)) mapDefault!3881)))))

(declare-fun res!51370 () Bool)

(assert (=> start!12160 (=> (not res!51370) (not e!66950))))

(declare-fun valid!402 (LongMap!690) Bool)

(assert (=> start!12160 (= res!51370 (valid!402 thiss!992))))

(assert (=> start!12160 e!66950))

(assert (=> start!12160 e!66947))

(assert (=> start!12160 true))

(assert (=> start!12160 e!66957))

(declare-fun b!102780 () Bool)

(declare-fun res!51372 () Bool)

(assert (=> b!102780 (=> (not res!51372) (not e!66950))))

(declare-fun valid!403 (LongMapFixedSize!888) Bool)

(assert (=> b!102780 (= res!51372 (valid!403 newMap!16))))

(declare-fun b!102781 () Bool)

(declare-fun Unit!3161 () Unit!3158)

(assert (=> b!102781 (= e!66960 Unit!3161)))

(declare-fun mapNonEmpty!3882 () Bool)

(declare-fun tp!9815 () Bool)

(assert (=> mapNonEmpty!3882 (= mapRes!3881 (and tp!9815 e!66952))))

(declare-fun mapValue!3882 () ValueCell!990)

(declare-fun mapRest!3882 () (Array (_ BitVec 32) ValueCell!990))

(declare-fun mapKey!3881 () (_ BitVec 32))

(assert (=> mapNonEmpty!3882 (= (arr!2051 (_values!2538 (v!2868 (underlying!356 thiss!992)))) (store mapRest!3882 mapKey!3881 mapValue!3882))))

(declare-fun b!102782 () Bool)

(assert (=> b!102782 (= e!66954 e!66955)))

(declare-fun res!51375 () Bool)

(assert (=> b!102782 (=> (not res!51375) (not e!66955))))

(assert (=> b!102782 (= res!51375 (and (not (= (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun get!1328 (ValueCell!990 V!3203) V!3203)

(declare-fun dynLambda!386 (Int (_ BitVec 64)) V!3203)

(assert (=> b!102782 (= lt!52226 (get!1328 (select (arr!2051 (_values!2538 (v!2868 (underlying!356 thiss!992)))) from!355) (dynLambda!386 (defaultEntry!2555 (v!2868 (underlying!356 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!12160 res!51370) b!102777))

(assert (= (and b!102777 res!51376) b!102780))

(assert (= (and b!102780 res!51372) b!102775))

(assert (= (and b!102775 res!51373) b!102778))

(assert (= (and b!102778 res!51374) b!102782))

(assert (= (and b!102782 res!51375) b!102770))

(assert (= (and b!102770 c!17678) b!102767))

(assert (= (and b!102770 (not c!17678)) b!102781))

(assert (= (and b!102770 res!51371) b!102771))

(assert (= (and b!102764 condMapEmpty!3882) mapIsEmpty!3881))

(assert (= (and b!102764 (not condMapEmpty!3882)) mapNonEmpty!3882))

(get-info :version)

(assert (= (and mapNonEmpty!3882 ((_ is ValueCellFull!990) mapValue!3882)) b!102766))

(assert (= (and b!102764 ((_ is ValueCellFull!990) mapDefault!3882)) b!102774))

(assert (= b!102776 b!102764))

(assert (= b!102779 b!102776))

(assert (= b!102768 b!102779))

(assert (= start!12160 b!102768))

(assert (= (and b!102773 condMapEmpty!3881) mapIsEmpty!3882))

(assert (= (and b!102773 (not condMapEmpty!3881)) mapNonEmpty!3881))

(assert (= (and mapNonEmpty!3881 ((_ is ValueCellFull!990) mapValue!3881)) b!102765))

(assert (= (and b!102773 ((_ is ValueCellFull!990) mapDefault!3881)) b!102772))

(assert (= b!102769 b!102773))

(assert (= start!12160 b!102769))

(declare-fun b_lambda!4615 () Bool)

(assert (=> (not b_lambda!4615) (not b!102782)))

(declare-fun t!5691 () Bool)

(declare-fun tb!2029 () Bool)

(assert (=> (and b!102776 (= (defaultEntry!2555 (v!2868 (underlying!356 thiss!992))) (defaultEntry!2555 (v!2868 (underlying!356 thiss!992)))) t!5691) tb!2029))

(declare-fun result!3413 () Bool)

(assert (=> tb!2029 (= result!3413 tp_is_empty!2667)))

(assert (=> b!102782 t!5691))

(declare-fun b_and!6365 () Bool)

(assert (= b_and!6361 (and (=> t!5691 result!3413) b_and!6365)))

(declare-fun t!5693 () Bool)

(declare-fun tb!2031 () Bool)

(assert (=> (and b!102769 (= (defaultEntry!2555 newMap!16) (defaultEntry!2555 (v!2868 (underlying!356 thiss!992)))) t!5693) tb!2031))

(declare-fun result!3417 () Bool)

(assert (= result!3417 result!3413))

(assert (=> b!102782 t!5693))

(declare-fun b_and!6367 () Bool)

(assert (= b_and!6363 (and (=> t!5693 result!3417) b_and!6367)))

(declare-fun m!113779 () Bool)

(assert (=> mapNonEmpty!3882 m!113779))

(declare-fun m!113781 () Bool)

(assert (=> b!102770 m!113781))

(assert (=> b!102770 m!113781))

(declare-fun m!113783 () Bool)

(assert (=> b!102770 m!113783))

(assert (=> b!102770 m!113781))

(declare-fun m!113785 () Bool)

(assert (=> b!102770 m!113785))

(declare-fun m!113787 () Bool)

(assert (=> b!102780 m!113787))

(declare-fun m!113789 () Bool)

(assert (=> b!102769 m!113789))

(declare-fun m!113791 () Bool)

(assert (=> b!102769 m!113791))

(declare-fun m!113793 () Bool)

(assert (=> b!102778 m!113793))

(declare-fun m!113795 () Bool)

(assert (=> b!102778 m!113795))

(assert (=> b!102782 m!113781))

(declare-fun m!113797 () Bool)

(assert (=> b!102782 m!113797))

(declare-fun m!113799 () Bool)

(assert (=> b!102782 m!113799))

(assert (=> b!102782 m!113797))

(assert (=> b!102782 m!113799))

(declare-fun m!113801 () Bool)

(assert (=> b!102782 m!113801))

(declare-fun m!113803 () Bool)

(assert (=> start!12160 m!113803))

(declare-fun m!113805 () Bool)

(assert (=> b!102767 m!113805))

(declare-fun m!113807 () Bool)

(assert (=> b!102767 m!113807))

(assert (=> b!102767 m!113781))

(declare-fun m!113809 () Bool)

(assert (=> b!102767 m!113809))

(assert (=> b!102767 m!113781))

(assert (=> b!102767 m!113781))

(declare-fun m!113811 () Bool)

(assert (=> b!102767 m!113811))

(assert (=> b!102767 m!113781))

(declare-fun m!113813 () Bool)

(assert (=> b!102767 m!113813))

(declare-fun m!113815 () Bool)

(assert (=> b!102771 m!113815))

(declare-fun m!113817 () Bool)

(assert (=> b!102771 m!113817))

(assert (=> b!102771 m!113815))

(declare-fun m!113819 () Bool)

(assert (=> b!102771 m!113819))

(assert (=> b!102771 m!113781))

(declare-fun m!113821 () Bool)

(assert (=> b!102771 m!113821))

(declare-fun m!113823 () Bool)

(assert (=> b!102771 m!113823))

(assert (=> b!102771 m!113781))

(declare-fun m!113825 () Bool)

(assert (=> b!102771 m!113825))

(assert (=> b!102771 m!113821))

(declare-fun m!113827 () Bool)

(assert (=> b!102771 m!113827))

(declare-fun m!113829 () Bool)

(assert (=> b!102776 m!113829))

(declare-fun m!113831 () Bool)

(assert (=> b!102776 m!113831))

(declare-fun m!113833 () Bool)

(assert (=> mapNonEmpty!3881 m!113833))

(check-sat (not b!102780) (not b!102776) (not b_next!2501) (not b_next!2503) b_and!6365 (not mapNonEmpty!3881) (not b!102771) (not b!102782) (not b!102767) b_and!6367 (not b!102769) (not start!12160) (not mapNonEmpty!3882) (not b!102778) (not b!102770) tp_is_empty!2667 (not b_lambda!4615))
(check-sat b_and!6365 b_and!6367 (not b_next!2501) (not b_next!2503))
(get-model)

(declare-fun b_lambda!4619 () Bool)

(assert (= b_lambda!4615 (or (and b!102776 b_free!2501) (and b!102769 b_free!2503 (= (defaultEntry!2555 newMap!16) (defaultEntry!2555 (v!2868 (underlying!356 thiss!992))))) b_lambda!4619)))

(check-sat (not b!102780) (not b!102776) (not b_lambda!4619) (not b_next!2501) (not b_next!2503) b_and!6365 (not mapNonEmpty!3881) (not b!102771) (not b!102782) tp_is_empty!2667 (not b!102767) b_and!6367 (not b!102769) (not start!12160) (not mapNonEmpty!3882) (not b!102778) (not b!102770))
(check-sat b_and!6365 b_and!6367 (not b_next!2501) (not b_next!2503))
(get-model)

(declare-fun d!27715 () Bool)

(assert (=> d!27715 (= (valid!402 thiss!992) (valid!403 (v!2868 (underlying!356 thiss!992))))))

(declare-fun bs!4227 () Bool)

(assert (= bs!4227 d!27715))

(declare-fun m!113891 () Bool)

(assert (=> bs!4227 m!113891))

(assert (=> start!12160 d!27715))

(declare-fun d!27717 () Bool)

(declare-fun c!17684 () Bool)

(assert (=> d!27717 (= c!17684 ((_ is ValueCellFull!990) (select (arr!2051 (_values!2538 (v!2868 (underlying!356 thiss!992)))) from!355)))))

(declare-fun e!67014 () V!3203)

(assert (=> d!27717 (= (get!1328 (select (arr!2051 (_values!2538 (v!2868 (underlying!356 thiss!992)))) from!355) (dynLambda!386 (defaultEntry!2555 (v!2868 (underlying!356 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!67014)))

(declare-fun b!102848 () Bool)

(declare-fun get!1329 (ValueCell!990 V!3203) V!3203)

(assert (=> b!102848 (= e!67014 (get!1329 (select (arr!2051 (_values!2538 (v!2868 (underlying!356 thiss!992)))) from!355) (dynLambda!386 (defaultEntry!2555 (v!2868 (underlying!356 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!102849 () Bool)

(declare-fun get!1330 (ValueCell!990 V!3203) V!3203)

(assert (=> b!102849 (= e!67014 (get!1330 (select (arr!2051 (_values!2538 (v!2868 (underlying!356 thiss!992)))) from!355) (dynLambda!386 (defaultEntry!2555 (v!2868 (underlying!356 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!27717 c!17684) b!102848))

(assert (= (and d!27717 (not c!17684)) b!102849))

(assert (=> b!102848 m!113797))

(assert (=> b!102848 m!113799))

(declare-fun m!113893 () Bool)

(assert (=> b!102848 m!113893))

(assert (=> b!102849 m!113797))

(assert (=> b!102849 m!113799))

(declare-fun m!113895 () Bool)

(assert (=> b!102849 m!113895))

(assert (=> b!102782 d!27717))

(declare-fun d!27719 () Bool)

(assert (=> d!27719 (= (array_inv!1233 (_keys!4257 newMap!16)) (bvsge (size!2304 (_keys!4257 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!102769 d!27719))

(declare-fun d!27721 () Bool)

(assert (=> d!27721 (= (array_inv!1234 (_values!2538 newMap!16)) (bvsge (size!2305 (_values!2538 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!102769 d!27721))

(declare-fun d!27723 () Bool)

(assert (=> d!27723 (= (map!1275 newMap!16) (getCurrentListMap!480 (_keys!4257 newMap!16) (_values!2538 newMap!16) (mask!6688 newMap!16) (extraKeys!2364 newMap!16) (zeroValue!2432 newMap!16) (minValue!2432 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2555 newMap!16)))))

(declare-fun bs!4228 () Bool)

(assert (= bs!4228 d!27723))

(declare-fun m!113897 () Bool)

(assert (=> bs!4228 m!113897))

(assert (=> b!102778 d!27723))

(declare-fun b!102892 () Bool)

(declare-fun e!67042 () ListLongMap!1573)

(declare-fun call!10700 () ListLongMap!1573)

(assert (=> b!102892 (= e!67042 call!10700)))

(declare-fun b!102893 () Bool)

(declare-fun res!51421 () Bool)

(declare-fun e!67046 () Bool)

(assert (=> b!102893 (=> (not res!51421) (not e!67046))))

(declare-fun e!67041 () Bool)

(assert (=> b!102893 (= res!51421 e!67041)))

(declare-fun c!17698 () Bool)

(assert (=> b!102893 (= c!17698 (not (= (bvand (extraKeys!2364 (v!2868 (underlying!356 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!102894 () Bool)

(declare-fun e!67044 () Unit!3158)

(declare-fun Unit!3162 () Unit!3158)

(assert (=> b!102894 (= e!67044 Unit!3162)))

(declare-fun bm!10695 () Bool)

(declare-fun call!10699 () ListLongMap!1573)

(declare-fun call!10698 () ListLongMap!1573)

(declare-fun c!17702 () Bool)

(declare-fun c!17697 () Bool)

(declare-fun call!10702 () ListLongMap!1573)

(declare-fun call!10703 () ListLongMap!1573)

(assert (=> bm!10695 (= call!10702 (+!142 (ite c!17697 call!10699 (ite c!17702 call!10698 call!10703)) (ite (or c!17697 c!17702) (tuple2!2393 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2432 (v!2868 (underlying!356 thiss!992)))) (tuple2!2393 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2432 (v!2868 (underlying!356 thiss!992)))))))))

(declare-fun bm!10696 () Bool)

(assert (=> bm!10696 (= call!10703 call!10698)))

(declare-fun b!102895 () Bool)

(declare-fun e!67048 () Bool)

(declare-fun e!67045 () Bool)

(assert (=> b!102895 (= e!67048 e!67045)))

(declare-fun res!51422 () Bool)

(declare-fun call!10704 () Bool)

(assert (=> b!102895 (= res!51422 call!10704)))

(assert (=> b!102895 (=> (not res!51422) (not e!67045))))

(declare-fun b!102896 () Bool)

(declare-fun call!10701 () Bool)

(assert (=> b!102896 (= e!67041 (not call!10701))))

(declare-fun b!102897 () Bool)

(declare-fun e!67047 () Bool)

(declare-fun e!67049 () Bool)

(assert (=> b!102897 (= e!67047 e!67049)))

(declare-fun res!51418 () Bool)

(assert (=> b!102897 (=> (not res!51418) (not e!67049))))

(declare-fun lt!52327 () ListLongMap!1573)

(assert (=> b!102897 (= res!51418 (contains!821 lt!52327 (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!102897 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2304 (_keys!4257 (v!2868 (underlying!356 thiss!992))))))))

(declare-fun bm!10697 () Bool)

(assert (=> bm!10697 (= call!10704 (contains!821 lt!52327 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!102898 () Bool)

(declare-fun c!17699 () Bool)

(assert (=> b!102898 (= c!17699 (and (not (= (bvand (extraKeys!2364 (v!2868 (underlying!356 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2364 (v!2868 (underlying!356 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!67052 () ListLongMap!1573)

(assert (=> b!102898 (= e!67042 e!67052)))

(declare-fun b!102899 () Bool)

(declare-fun e!67043 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!102899 (= e!67043 (validKeyInArray!0 (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!102901 () Bool)

(assert (=> b!102901 (= e!67052 call!10700)))

(declare-fun b!102902 () Bool)

(declare-fun e!67053 () ListLongMap!1573)

(assert (=> b!102902 (= e!67053 (+!142 call!10702 (tuple2!2393 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2432 (v!2868 (underlying!356 thiss!992))))))))

(declare-fun bm!10698 () Bool)

(assert (=> bm!10698 (= call!10698 call!10699)))

(declare-fun b!102903 () Bool)

(declare-fun lt!52329 () Unit!3158)

(assert (=> b!102903 (= e!67044 lt!52329)))

(declare-fun lt!52320 () ListLongMap!1573)

(assert (=> b!102903 (= lt!52320 (getCurrentListMapNoExtraKeys!109 (_keys!4257 (v!2868 (underlying!356 thiss!992))) (_values!2538 (v!2868 (underlying!356 thiss!992))) (mask!6688 (v!2868 (underlying!356 thiss!992))) (extraKeys!2364 (v!2868 (underlying!356 thiss!992))) (zeroValue!2432 (v!2868 (underlying!356 thiss!992))) (minValue!2432 (v!2868 (underlying!356 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2555 (v!2868 (underlying!356 thiss!992)))))))

(declare-fun lt!52312 () (_ BitVec 64))

(assert (=> b!102903 (= lt!52312 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!52322 () (_ BitVec 64))

(assert (=> b!102903 (= lt!52322 (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!52323 () Unit!3158)

(declare-fun addStillContains!72 (ListLongMap!1573 (_ BitVec 64) V!3203 (_ BitVec 64)) Unit!3158)

(assert (=> b!102903 (= lt!52323 (addStillContains!72 lt!52320 lt!52312 (zeroValue!2432 (v!2868 (underlying!356 thiss!992))) lt!52322))))

(assert (=> b!102903 (contains!821 (+!142 lt!52320 (tuple2!2393 lt!52312 (zeroValue!2432 (v!2868 (underlying!356 thiss!992))))) lt!52322)))

(declare-fun lt!52328 () Unit!3158)

(assert (=> b!102903 (= lt!52328 lt!52323)))

(declare-fun lt!52318 () ListLongMap!1573)

(assert (=> b!102903 (= lt!52318 (getCurrentListMapNoExtraKeys!109 (_keys!4257 (v!2868 (underlying!356 thiss!992))) (_values!2538 (v!2868 (underlying!356 thiss!992))) (mask!6688 (v!2868 (underlying!356 thiss!992))) (extraKeys!2364 (v!2868 (underlying!356 thiss!992))) (zeroValue!2432 (v!2868 (underlying!356 thiss!992))) (minValue!2432 (v!2868 (underlying!356 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2555 (v!2868 (underlying!356 thiss!992)))))))

(declare-fun lt!52330 () (_ BitVec 64))

(assert (=> b!102903 (= lt!52330 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!52326 () (_ BitVec 64))

(assert (=> b!102903 (= lt!52326 (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!52313 () Unit!3158)

(declare-fun addApplyDifferent!72 (ListLongMap!1573 (_ BitVec 64) V!3203 (_ BitVec 64)) Unit!3158)

(assert (=> b!102903 (= lt!52313 (addApplyDifferent!72 lt!52318 lt!52330 (minValue!2432 (v!2868 (underlying!356 thiss!992))) lt!52326))))

(declare-fun apply!96 (ListLongMap!1573 (_ BitVec 64)) V!3203)

(assert (=> b!102903 (= (apply!96 (+!142 lt!52318 (tuple2!2393 lt!52330 (minValue!2432 (v!2868 (underlying!356 thiss!992))))) lt!52326) (apply!96 lt!52318 lt!52326))))

(declare-fun lt!52325 () Unit!3158)

(assert (=> b!102903 (= lt!52325 lt!52313)))

(declare-fun lt!52324 () ListLongMap!1573)

(assert (=> b!102903 (= lt!52324 (getCurrentListMapNoExtraKeys!109 (_keys!4257 (v!2868 (underlying!356 thiss!992))) (_values!2538 (v!2868 (underlying!356 thiss!992))) (mask!6688 (v!2868 (underlying!356 thiss!992))) (extraKeys!2364 (v!2868 (underlying!356 thiss!992))) (zeroValue!2432 (v!2868 (underlying!356 thiss!992))) (minValue!2432 (v!2868 (underlying!356 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2555 (v!2868 (underlying!356 thiss!992)))))))

(declare-fun lt!52321 () (_ BitVec 64))

(assert (=> b!102903 (= lt!52321 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!52310 () (_ BitVec 64))

(assert (=> b!102903 (= lt!52310 (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!52314 () Unit!3158)

(assert (=> b!102903 (= lt!52314 (addApplyDifferent!72 lt!52324 lt!52321 (zeroValue!2432 (v!2868 (underlying!356 thiss!992))) lt!52310))))

(assert (=> b!102903 (= (apply!96 (+!142 lt!52324 (tuple2!2393 lt!52321 (zeroValue!2432 (v!2868 (underlying!356 thiss!992))))) lt!52310) (apply!96 lt!52324 lt!52310))))

(declare-fun lt!52319 () Unit!3158)

(assert (=> b!102903 (= lt!52319 lt!52314)))

(declare-fun lt!52317 () ListLongMap!1573)

(assert (=> b!102903 (= lt!52317 (getCurrentListMapNoExtraKeys!109 (_keys!4257 (v!2868 (underlying!356 thiss!992))) (_values!2538 (v!2868 (underlying!356 thiss!992))) (mask!6688 (v!2868 (underlying!356 thiss!992))) (extraKeys!2364 (v!2868 (underlying!356 thiss!992))) (zeroValue!2432 (v!2868 (underlying!356 thiss!992))) (minValue!2432 (v!2868 (underlying!356 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2555 (v!2868 (underlying!356 thiss!992)))))))

(declare-fun lt!52311 () (_ BitVec 64))

(assert (=> b!102903 (= lt!52311 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!52315 () (_ BitVec 64))

(assert (=> b!102903 (= lt!52315 (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!102903 (= lt!52329 (addApplyDifferent!72 lt!52317 lt!52311 (minValue!2432 (v!2868 (underlying!356 thiss!992))) lt!52315))))

(assert (=> b!102903 (= (apply!96 (+!142 lt!52317 (tuple2!2393 lt!52311 (minValue!2432 (v!2868 (underlying!356 thiss!992))))) lt!52315) (apply!96 lt!52317 lt!52315))))

(declare-fun b!102904 () Bool)

(assert (=> b!102904 (= e!67048 (not call!10704))))

(declare-fun bm!10699 () Bool)

(assert (=> bm!10699 (= call!10701 (contains!821 lt!52327 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!102900 () Bool)

(assert (=> b!102900 (= e!67045 (= (apply!96 lt!52327 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2432 (v!2868 (underlying!356 thiss!992)))))))

(declare-fun d!27725 () Bool)

(assert (=> d!27725 e!67046))

(declare-fun res!51417 () Bool)

(assert (=> d!27725 (=> (not res!51417) (not e!67046))))

(assert (=> d!27725 (= res!51417 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2304 (_keys!4257 (v!2868 (underlying!356 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2304 (_keys!4257 (v!2868 (underlying!356 thiss!992))))))))))

(declare-fun lt!52316 () ListLongMap!1573)

(assert (=> d!27725 (= lt!52327 lt!52316)))

(declare-fun lt!52331 () Unit!3158)

(assert (=> d!27725 (= lt!52331 e!67044)))

(declare-fun c!17701 () Bool)

(declare-fun e!67051 () Bool)

(assert (=> d!27725 (= c!17701 e!67051)))

(declare-fun res!51420 () Bool)

(assert (=> d!27725 (=> (not res!51420) (not e!67051))))

(assert (=> d!27725 (= res!51420 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2304 (_keys!4257 (v!2868 (underlying!356 thiss!992))))))))

(assert (=> d!27725 (= lt!52316 e!67053)))

(assert (=> d!27725 (= c!17697 (and (not (= (bvand (extraKeys!2364 (v!2868 (underlying!356 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2364 (v!2868 (underlying!356 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!27725 (validMask!0 (mask!6688 (v!2868 (underlying!356 thiss!992))))))

(assert (=> d!27725 (= (getCurrentListMap!480 (_keys!4257 (v!2868 (underlying!356 thiss!992))) (_values!2538 (v!2868 (underlying!356 thiss!992))) (mask!6688 (v!2868 (underlying!356 thiss!992))) (extraKeys!2364 (v!2868 (underlying!356 thiss!992))) (zeroValue!2432 (v!2868 (underlying!356 thiss!992))) (minValue!2432 (v!2868 (underlying!356 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2555 (v!2868 (underlying!356 thiss!992)))) lt!52327)))

(declare-fun b!102905 () Bool)

(declare-fun e!67050 () Bool)

(assert (=> b!102905 (= e!67041 e!67050)))

(declare-fun res!51419 () Bool)

(assert (=> b!102905 (= res!51419 call!10701)))

(assert (=> b!102905 (=> (not res!51419) (not e!67050))))

(declare-fun b!102906 () Bool)

(declare-fun res!51416 () Bool)

(assert (=> b!102906 (=> (not res!51416) (not e!67046))))

(assert (=> b!102906 (= res!51416 e!67047)))

(declare-fun res!51423 () Bool)

(assert (=> b!102906 (=> res!51423 e!67047)))

(assert (=> b!102906 (= res!51423 (not e!67043))))

(declare-fun res!51424 () Bool)

(assert (=> b!102906 (=> (not res!51424) (not e!67043))))

(assert (=> b!102906 (= res!51424 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2304 (_keys!4257 (v!2868 (underlying!356 thiss!992))))))))

(declare-fun b!102907 () Bool)

(assert (=> b!102907 (= e!67051 (validKeyInArray!0 (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!102908 () Bool)

(assert (=> b!102908 (= e!67050 (= (apply!96 lt!52327 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2432 (v!2868 (underlying!356 thiss!992)))))))

(declare-fun b!102909 () Bool)

(assert (=> b!102909 (= e!67049 (= (apply!96 lt!52327 (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1328 (select (arr!2051 (_values!2538 (v!2868 (underlying!356 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!386 (defaultEntry!2555 (v!2868 (underlying!356 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!102909 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2305 (_values!2538 (v!2868 (underlying!356 thiss!992))))))))

(assert (=> b!102909 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2304 (_keys!4257 (v!2868 (underlying!356 thiss!992))))))))

(declare-fun b!102910 () Bool)

(assert (=> b!102910 (= e!67046 e!67048)))

(declare-fun c!17700 () Bool)

(assert (=> b!102910 (= c!17700 (not (= (bvand (extraKeys!2364 (v!2868 (underlying!356 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!102911 () Bool)

(assert (=> b!102911 (= e!67052 call!10703)))

(declare-fun bm!10700 () Bool)

(assert (=> bm!10700 (= call!10700 call!10702)))

(declare-fun b!102912 () Bool)

(assert (=> b!102912 (= e!67053 e!67042)))

(assert (=> b!102912 (= c!17702 (and (not (= (bvand (extraKeys!2364 (v!2868 (underlying!356 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2364 (v!2868 (underlying!356 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!10701 () Bool)

(assert (=> bm!10701 (= call!10699 (getCurrentListMapNoExtraKeys!109 (_keys!4257 (v!2868 (underlying!356 thiss!992))) (_values!2538 (v!2868 (underlying!356 thiss!992))) (mask!6688 (v!2868 (underlying!356 thiss!992))) (extraKeys!2364 (v!2868 (underlying!356 thiss!992))) (zeroValue!2432 (v!2868 (underlying!356 thiss!992))) (minValue!2432 (v!2868 (underlying!356 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2555 (v!2868 (underlying!356 thiss!992)))))))

(assert (= (and d!27725 c!17697) b!102902))

(assert (= (and d!27725 (not c!17697)) b!102912))

(assert (= (and b!102912 c!17702) b!102892))

(assert (= (and b!102912 (not c!17702)) b!102898))

(assert (= (and b!102898 c!17699) b!102901))

(assert (= (and b!102898 (not c!17699)) b!102911))

(assert (= (or b!102901 b!102911) bm!10696))

(assert (= (or b!102892 bm!10696) bm!10698))

(assert (= (or b!102892 b!102901) bm!10700))

(assert (= (or b!102902 bm!10698) bm!10701))

(assert (= (or b!102902 bm!10700) bm!10695))

(assert (= (and d!27725 res!51420) b!102907))

(assert (= (and d!27725 c!17701) b!102903))

(assert (= (and d!27725 (not c!17701)) b!102894))

(assert (= (and d!27725 res!51417) b!102906))

(assert (= (and b!102906 res!51424) b!102899))

(assert (= (and b!102906 (not res!51423)) b!102897))

(assert (= (and b!102897 res!51418) b!102909))

(assert (= (and b!102906 res!51416) b!102893))

(assert (= (and b!102893 c!17698) b!102905))

(assert (= (and b!102893 (not c!17698)) b!102896))

(assert (= (and b!102905 res!51419) b!102908))

(assert (= (or b!102905 b!102896) bm!10699))

(assert (= (and b!102893 res!51421) b!102910))

(assert (= (and b!102910 c!17700) b!102895))

(assert (= (and b!102910 (not c!17700)) b!102904))

(assert (= (and b!102895 res!51422) b!102900))

(assert (= (or b!102895 b!102904) bm!10697))

(declare-fun b_lambda!4621 () Bool)

(assert (=> (not b_lambda!4621) (not b!102909)))

(assert (=> b!102909 t!5691))

(declare-fun b_and!6377 () Bool)

(assert (= b_and!6365 (and (=> t!5691 result!3413) b_and!6377)))

(assert (=> b!102909 t!5693))

(declare-fun b_and!6379 () Bool)

(assert (= b_and!6367 (and (=> t!5693 result!3417) b_and!6379)))

(declare-fun m!113899 () Bool)

(assert (=> b!102908 m!113899))

(declare-fun m!113901 () Bool)

(assert (=> b!102897 m!113901))

(assert (=> b!102897 m!113901))

(declare-fun m!113903 () Bool)

(assert (=> b!102897 m!113903))

(assert (=> b!102899 m!113901))

(assert (=> b!102899 m!113901))

(declare-fun m!113905 () Bool)

(assert (=> b!102899 m!113905))

(assert (=> d!27725 m!113817))

(assert (=> b!102907 m!113901))

(assert (=> b!102907 m!113901))

(assert (=> b!102907 m!113905))

(declare-fun m!113907 () Bool)

(assert (=> b!102902 m!113907))

(declare-fun m!113909 () Bool)

(assert (=> b!102900 m!113909))

(declare-fun m!113911 () Bool)

(assert (=> b!102909 m!113911))

(assert (=> b!102909 m!113901))

(declare-fun m!113913 () Bool)

(assert (=> b!102909 m!113913))

(assert (=> b!102909 m!113901))

(assert (=> b!102909 m!113799))

(assert (=> b!102909 m!113911))

(assert (=> b!102909 m!113799))

(declare-fun m!113915 () Bool)

(assert (=> b!102909 m!113915))

(declare-fun m!113917 () Bool)

(assert (=> bm!10695 m!113917))

(assert (=> bm!10701 m!113827))

(assert (=> b!102903 m!113827))

(declare-fun m!113919 () Bool)

(assert (=> b!102903 m!113919))

(declare-fun m!113921 () Bool)

(assert (=> b!102903 m!113921))

(declare-fun m!113923 () Bool)

(assert (=> b!102903 m!113923))

(assert (=> b!102903 m!113921))

(assert (=> b!102903 m!113901))

(declare-fun m!113925 () Bool)

(assert (=> b!102903 m!113925))

(declare-fun m!113927 () Bool)

(assert (=> b!102903 m!113927))

(declare-fun m!113929 () Bool)

(assert (=> b!102903 m!113929))

(declare-fun m!113931 () Bool)

(assert (=> b!102903 m!113931))

(assert (=> b!102903 m!113931))

(declare-fun m!113933 () Bool)

(assert (=> b!102903 m!113933))

(declare-fun m!113935 () Bool)

(assert (=> b!102903 m!113935))

(declare-fun m!113937 () Bool)

(assert (=> b!102903 m!113937))

(declare-fun m!113939 () Bool)

(assert (=> b!102903 m!113939))

(assert (=> b!102903 m!113929))

(declare-fun m!113941 () Bool)

(assert (=> b!102903 m!113941))

(declare-fun m!113943 () Bool)

(assert (=> b!102903 m!113943))

(assert (=> b!102903 m!113925))

(declare-fun m!113945 () Bool)

(assert (=> b!102903 m!113945))

(declare-fun m!113947 () Bool)

(assert (=> b!102903 m!113947))

(declare-fun m!113949 () Bool)

(assert (=> bm!10699 m!113949))

(declare-fun m!113951 () Bool)

(assert (=> bm!10697 m!113951))

(assert (=> b!102778 d!27725))

(declare-fun d!27727 () Bool)

(declare-fun e!67059 () Bool)

(assert (=> d!27727 e!67059))

(declare-fun res!51427 () Bool)

(assert (=> d!27727 (=> res!51427 e!67059)))

(declare-fun lt!52343 () Bool)

(assert (=> d!27727 (= res!51427 (not lt!52343))))

(declare-fun lt!52340 () Bool)

(assert (=> d!27727 (= lt!52343 lt!52340)))

(declare-fun lt!52342 () Unit!3158)

(declare-fun e!67058 () Unit!3158)

(assert (=> d!27727 (= lt!52342 e!67058)))

(declare-fun c!17705 () Bool)

(assert (=> d!27727 (= c!17705 lt!52340)))

(declare-fun containsKey!157 (List!1633 (_ BitVec 64)) Bool)

(assert (=> d!27727 (= lt!52340 (containsKey!157 (toList!802 lt!52229) (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355)))))

(assert (=> d!27727 (= (contains!821 lt!52229 (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355)) lt!52343)))

(declare-fun b!102919 () Bool)

(declare-fun lt!52341 () Unit!3158)

(assert (=> b!102919 (= e!67058 lt!52341)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!106 (List!1633 (_ BitVec 64)) Unit!3158)

(assert (=> b!102919 (= lt!52341 (lemmaContainsKeyImpliesGetValueByKeyDefined!106 (toList!802 lt!52229) (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355)))))

(declare-datatypes ((Option!159 0))(
  ( (Some!158 (v!2872 V!3203)) (None!157) )
))
(declare-fun isDefined!107 (Option!159) Bool)

(declare-fun getValueByKey!153 (List!1633 (_ BitVec 64)) Option!159)

(assert (=> b!102919 (isDefined!107 (getValueByKey!153 (toList!802 lt!52229) (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355)))))

(declare-fun b!102920 () Bool)

(declare-fun Unit!3163 () Unit!3158)

(assert (=> b!102920 (= e!67058 Unit!3163)))

(declare-fun b!102921 () Bool)

(assert (=> b!102921 (= e!67059 (isDefined!107 (getValueByKey!153 (toList!802 lt!52229) (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355))))))

(assert (= (and d!27727 c!17705) b!102919))

(assert (= (and d!27727 (not c!17705)) b!102920))

(assert (= (and d!27727 (not res!51427)) b!102921))

(assert (=> d!27727 m!113781))

(declare-fun m!113953 () Bool)

(assert (=> d!27727 m!113953))

(assert (=> b!102919 m!113781))

(declare-fun m!113955 () Bool)

(assert (=> b!102919 m!113955))

(assert (=> b!102919 m!113781))

(declare-fun m!113957 () Bool)

(assert (=> b!102919 m!113957))

(assert (=> b!102919 m!113957))

(declare-fun m!113959 () Bool)

(assert (=> b!102919 m!113959))

(assert (=> b!102921 m!113781))

(assert (=> b!102921 m!113957))

(assert (=> b!102921 m!113957))

(assert (=> b!102921 m!113959))

(assert (=> b!102770 d!27727))

(declare-fun bm!10750 () Bool)

(declare-datatypes ((SeekEntryResult!267 0))(
  ( (MissingZero!267 (index!3215 (_ BitVec 32))) (Found!267 (index!3216 (_ BitVec 32))) (Intermediate!267 (undefined!1079 Bool) (index!3217 (_ BitVec 32)) (x!13468 (_ BitVec 32))) (Undefined!267) (MissingVacant!267 (index!3218 (_ BitVec 32))) )
))
(declare-fun call!10770 () SeekEntryResult!267)

(declare-fun call!10776 () SeekEntryResult!267)

(assert (=> bm!10750 (= call!10770 call!10776)))

(declare-fun b!103006 () Bool)

(declare-fun c!17746 () Bool)

(declare-fun lt!52402 () SeekEntryResult!267)

(assert (=> b!103006 (= c!17746 ((_ is MissingVacant!267) lt!52402))))

(declare-fun e!67116 () Bool)

(declare-fun e!67112 () Bool)

(assert (=> b!103006 (= e!67116 e!67112)))

(declare-fun b!103007 () Bool)

(declare-fun e!67121 () Bool)

(declare-fun call!10767 () Bool)

(assert (=> b!103007 (= e!67121 (not call!10767))))

(declare-fun b!103008 () Bool)

(declare-fun res!51456 () Bool)

(declare-fun lt!52404 () SeekEntryResult!267)

(assert (=> b!103008 (= res!51456 (= (select (arr!2050 (_keys!4257 newMap!16)) (index!3218 lt!52404)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!67124 () Bool)

(assert (=> b!103008 (=> (not res!51456) (not e!67124))))

(declare-fun b!103009 () Bool)

(declare-fun e!67108 () Unit!3158)

(declare-fun Unit!3164 () Unit!3158)

(assert (=> b!103009 (= e!67108 Unit!3164)))

(declare-fun lt!52399 () Unit!3158)

(declare-fun call!10769 () Unit!3158)

(assert (=> b!103009 (= lt!52399 call!10769)))

(declare-fun call!10771 () SeekEntryResult!267)

(assert (=> b!103009 (= lt!52404 call!10771)))

(declare-fun c!17739 () Bool)

(assert (=> b!103009 (= c!17739 ((_ is MissingZero!267) lt!52404))))

(declare-fun e!67113 () Bool)

(assert (=> b!103009 e!67113))

(declare-fun lt!52410 () Unit!3158)

(assert (=> b!103009 (= lt!52410 lt!52399)))

(assert (=> b!103009 false))

(declare-fun bm!10751 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!45 (array!4320 array!4322 (_ BitVec 32) (_ BitVec 32) V!3203 V!3203 (_ BitVec 64) Int) Unit!3158)

(assert (=> bm!10751 (= call!10769 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!45 (_keys!4257 newMap!16) (_values!2538 newMap!16) (mask!6688 newMap!16) (extraKeys!2364 newMap!16) (zeroValue!2432 newMap!16) (minValue!2432 newMap!16) (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) (defaultEntry!2555 newMap!16)))))

(declare-fun b!103010 () Bool)

(declare-fun e!67110 () tuple2!2390)

(declare-fun e!67119 () tuple2!2390)

(assert (=> b!103010 (= e!67110 e!67119)))

(declare-fun lt!52423 () SeekEntryResult!267)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!4320 (_ BitVec 32)) SeekEntryResult!267)

(assert (=> b!103010 (= lt!52423 (seekEntryOrOpen!0 (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) (_keys!4257 newMap!16) (mask!6688 newMap!16)))))

(declare-fun c!17737 () Bool)

(assert (=> b!103010 (= c!17737 ((_ is Undefined!267) lt!52423))))

(declare-fun b!103011 () Bool)

(declare-fun e!67114 () tuple2!2390)

(assert (=> b!103011 (= e!67110 e!67114)))

(declare-fun c!17736 () Bool)

(assert (=> b!103011 (= c!17736 (= (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!10752 () Bool)

(declare-fun call!10761 () ListLongMap!1573)

(declare-fun call!10760 () ListLongMap!1573)

(assert (=> bm!10752 (= call!10761 call!10760)))

(declare-fun bm!10753 () Bool)

(declare-fun call!10764 () Bool)

(declare-fun call!10763 () Bool)

(assert (=> bm!10753 (= call!10764 call!10763)))

(declare-fun b!103012 () Bool)

(declare-fun e!67105 () Bool)

(assert (=> b!103012 (= e!67112 e!67105)))

(declare-fun res!51460 () Bool)

(declare-fun call!10768 () Bool)

(assert (=> b!103012 (= res!51460 call!10768)))

(assert (=> b!103012 (=> (not res!51460) (not e!67105))))

(declare-fun b!103013 () Bool)

(declare-fun res!51461 () Bool)

(assert (=> b!103013 (= res!51461 (= (select (arr!2050 (_keys!4257 newMap!16)) (index!3218 lt!52402)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!103013 (=> (not res!51461) (not e!67105))))

(declare-fun bm!10754 () Bool)

(declare-fun call!10759 () ListLongMap!1573)

(declare-fun lt!52424 () tuple2!2390)

(assert (=> bm!10754 (= call!10759 (map!1275 (_2!1205 lt!52424)))))

(declare-fun call!10775 () ListLongMap!1573)

(declare-fun bm!10755 () Bool)

(declare-fun c!17734 () Bool)

(assert (=> bm!10755 (= call!10775 (getCurrentListMap!480 (_keys!4257 newMap!16) (ite c!17734 (_values!2538 newMap!16) (array!4323 (store (arr!2051 (_values!2538 newMap!16)) (index!3216 lt!52423) (ValueCellFull!990 lt!52226)) (size!2305 (_values!2538 newMap!16)))) (mask!6688 newMap!16) (extraKeys!2364 newMap!16) (zeroValue!2432 newMap!16) (minValue!2432 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2555 newMap!16)))))

(declare-fun b!103014 () Bool)

(declare-fun res!51464 () Bool)

(assert (=> b!103014 (= res!51464 call!10763)))

(declare-fun e!67106 () Bool)

(assert (=> b!103014 (=> (not res!51464) (not e!67106))))

(declare-fun b!103015 () Bool)

(assert (=> b!103015 (= e!67124 (not call!10767))))

(declare-fun b!103016 () Bool)

(declare-fun e!67111 () ListLongMap!1573)

(declare-fun call!10753 () ListLongMap!1573)

(assert (=> b!103016 (= e!67111 call!10753)))

(declare-fun b!103017 () Bool)

(assert (=> b!103017 (= e!67111 (getCurrentListMap!480 (_keys!4257 newMap!16) (_values!2538 newMap!16) (mask!6688 newMap!16) (extraKeys!2364 newMap!16) (zeroValue!2432 newMap!16) (minValue!2432 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2555 newMap!16)))))

(declare-fun b!103018 () Bool)

(declare-fun lt!52413 () Unit!3158)

(declare-fun e!67118 () Unit!3158)

(assert (=> b!103018 (= lt!52413 e!67118)))

(declare-fun c!17741 () Bool)

(declare-fun call!10754 () Bool)

(assert (=> b!103018 (= c!17741 call!10754)))

(assert (=> b!103018 (= e!67119 (tuple2!2391 false newMap!16))))

(declare-fun b!103019 () Bool)

(declare-fun e!67115 () Bool)

(assert (=> b!103019 (= e!67115 e!67124)))

(declare-fun res!51462 () Bool)

(assert (=> b!103019 (= res!51462 call!10764)))

(assert (=> b!103019 (=> (not res!51462) (not e!67124))))

(declare-fun b!103020 () Bool)

(declare-fun e!67104 () ListLongMap!1573)

(declare-fun call!10758 () ListLongMap!1573)

(assert (=> b!103020 (= e!67104 call!10758)))

(declare-fun bm!10756 () Bool)

(assert (=> bm!10756 (= call!10758 call!10775)))

(declare-fun b!103021 () Bool)

(declare-fun res!51463 () Bool)

(assert (=> b!103021 (=> (not res!51463) (not e!67121))))

(assert (=> b!103021 (= res!51463 (= (select (arr!2050 (_keys!4257 newMap!16)) (index!3215 lt!52404)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!103022 () Bool)

(declare-fun lt!52420 () SeekEntryResult!267)

(assert (=> b!103022 (= e!67106 (= (select (arr!2050 (_keys!4257 newMap!16)) (index!3216 lt!52420)) (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355)))))

(declare-fun b!103023 () Bool)

(declare-fun res!51457 () Bool)

(declare-fun call!10766 () Bool)

(assert (=> b!103023 (= res!51457 call!10766)))

(declare-fun e!67109 () Bool)

(assert (=> b!103023 (=> (not res!51457) (not e!67109))))

(declare-fun b!103024 () Bool)

(assert (=> b!103024 (= e!67115 ((_ is Undefined!267) lt!52404))))

(declare-fun bm!10757 () Bool)

(declare-fun c!17744 () Bool)

(assert (=> bm!10757 (= c!17744 c!17737)))

(assert (=> bm!10757 (= call!10754 (contains!821 e!67111 (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355)))))

(declare-fun bm!10758 () Bool)

(declare-fun call!10762 () ListLongMap!1573)

(declare-fun call!10772 () ListLongMap!1573)

(assert (=> bm!10758 (= call!10762 call!10772)))

(declare-fun b!103025 () Bool)

(declare-fun res!51467 () Bool)

(declare-fun e!67123 () Bool)

(assert (=> b!103025 (=> (not res!51467) (not e!67123))))

(assert (=> b!103025 (= res!51467 call!10768)))

(assert (=> b!103025 (= e!67116 e!67123)))

(declare-fun call!10774 () Bool)

(declare-fun bm!10759 () Bool)

(assert (=> bm!10759 (= call!10774 (arrayContainsKey!0 (_keys!4257 newMap!16) (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!103026 () Bool)

(declare-fun c!17747 () Bool)

(assert (=> b!103026 (= c!17747 ((_ is MissingVacant!267) lt!52404))))

(assert (=> b!103026 (= e!67113 e!67115)))

(declare-fun b!103027 () Bool)

(declare-fun lt!52407 () Unit!3158)

(declare-fun lt!52405 () Unit!3158)

(assert (=> b!103027 (= lt!52407 lt!52405)))

(assert (=> b!103027 (= call!10762 call!10761)))

(declare-fun lt!52403 () (_ BitVec 32))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!45 (array!4320 array!4322 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3203 V!3203 V!3203 Int) Unit!3158)

(assert (=> b!103027 (= lt!52405 (lemmaChangeZeroKeyThenAddPairToListMap!45 (_keys!4257 newMap!16) (_values!2538 newMap!16) (mask!6688 newMap!16) (extraKeys!2364 newMap!16) lt!52403 (zeroValue!2432 newMap!16) lt!52226 (minValue!2432 newMap!16) (defaultEntry!2555 newMap!16)))))

(assert (=> b!103027 (= lt!52403 (bvor (extraKeys!2364 newMap!16) #b00000000000000000000000000000001))))

(assert (=> b!103027 (= e!67114 (tuple2!2391 true (LongMapFixedSize!889 (defaultEntry!2555 newMap!16) (mask!6688 newMap!16) (bvor (extraKeys!2364 newMap!16) #b00000000000000000000000000000001) lt!52226 (minValue!2432 newMap!16) (_size!493 newMap!16) (_keys!4257 newMap!16) (_values!2538 newMap!16) (_vacant!493 newMap!16))))))

(declare-fun b!103028 () Bool)

(declare-fun res!51469 () Bool)

(assert (=> b!103028 (=> (not res!51469) (not e!67123))))

(assert (=> b!103028 (= res!51469 (= (select (arr!2050 (_keys!4257 newMap!16)) (index!3215 lt!52402)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!10760 () Bool)

(declare-fun c!17740 () Bool)

(declare-fun call!10755 () Bool)

(declare-fun lt!52401 () SeekEntryResult!267)

(declare-fun c!17745 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!10760 (= call!10755 (inRange!0 (ite c!17737 (ite c!17741 (index!3216 lt!52401) (ite c!17740 (index!3215 lt!52402) (index!3218 lt!52402))) (ite c!17745 (index!3216 lt!52420) (ite c!17739 (index!3215 lt!52404) (index!3218 lt!52404)))) (mask!6688 newMap!16)))))

(declare-fun b!103029 () Bool)

(declare-fun c!17735 () Bool)

(assert (=> b!103029 (= c!17735 ((_ is MissingVacant!267) lt!52423))))

(declare-fun e!67122 () tuple2!2390)

(assert (=> b!103029 (= e!67119 e!67122)))

(declare-fun b!103030 () Bool)

(declare-fun e!67117 () tuple2!2390)

(assert (=> b!103030 (= e!67122 e!67117)))

(declare-fun c!17742 () Bool)

(assert (=> b!103030 (= c!17742 ((_ is MissingZero!267) lt!52423))))

(declare-fun bm!10761 () Bool)

(declare-fun lt!52412 () array!4322)

(declare-fun lt!52422 () (_ BitVec 32))

(assert (=> bm!10761 (= call!10760 (getCurrentListMap!480 (_keys!4257 newMap!16) (ite (or c!17734 c!17737) (_values!2538 newMap!16) lt!52412) (mask!6688 newMap!16) (ite c!17734 (ite c!17736 lt!52403 lt!52422) (extraKeys!2364 newMap!16)) (ite (and c!17734 c!17736) lt!52226 (zeroValue!2432 newMap!16)) (ite c!17734 (ite c!17736 (minValue!2432 newMap!16) lt!52226) (minValue!2432 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2555 newMap!16)))))

(declare-fun b!103031 () Bool)

(declare-fun e!67125 () Bool)

(declare-fun call!10765 () ListLongMap!1573)

(assert (=> b!103031 (= e!67125 (= call!10759 call!10765))))

(declare-fun b!103032 () Bool)

(declare-fun Unit!3165 () Unit!3158)

(assert (=> b!103032 (= e!67118 Unit!3165)))

(declare-fun lt!52409 () Unit!3158)

(declare-fun call!10756 () Unit!3158)

(assert (=> b!103032 (= lt!52409 call!10756)))

(assert (=> b!103032 (= lt!52401 call!10770)))

(declare-fun res!51459 () Bool)

(assert (=> b!103032 (= res!51459 ((_ is Found!267) lt!52401))))

(assert (=> b!103032 (=> (not res!51459) (not e!67109))))

(assert (=> b!103032 e!67109))

(declare-fun lt!52400 () Unit!3158)

(assert (=> b!103032 (= lt!52400 lt!52409)))

(assert (=> b!103032 false))

(declare-fun b!103033 () Bool)

(assert (=> b!103033 (= e!67112 ((_ is Undefined!267) lt!52402))))

(declare-fun bm!10762 () Bool)

(declare-fun call!10757 () tuple2!2390)

(declare-fun updateHelperNewKey!45 (LongMapFixedSize!888 (_ BitVec 64) V!3203 (_ BitVec 32)) tuple2!2390)

(assert (=> bm!10762 (= call!10757 (updateHelperNewKey!45 newMap!16 (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) lt!52226 (ite c!17735 (index!3218 lt!52423) (index!3215 lt!52423))))))

(declare-fun b!103034 () Bool)

(declare-fun call!10773 () Bool)

(assert (=> b!103034 (= e!67123 (not call!10773))))

(declare-fun b!103035 () Bool)

(assert (=> b!103035 (= e!67105 (not call!10773))))

(declare-fun bm!10763 () Bool)

(assert (=> bm!10763 (= call!10765 (map!1275 newMap!16))))

(declare-fun b!103036 () Bool)

(declare-fun e!67107 () Bool)

(assert (=> b!103036 (= e!67107 e!67125)))

(declare-fun c!17738 () Bool)

(assert (=> b!103036 (= c!17738 (_1!1205 lt!52424))))

(declare-fun bm!10764 () Bool)

(assert (=> bm!10764 (= call!10768 call!10766)))

(declare-fun b!103037 () Bool)

(declare-fun lt!52411 () Unit!3158)

(assert (=> b!103037 (= e!67118 lt!52411)))

(assert (=> b!103037 (= lt!52411 call!10769)))

(assert (=> b!103037 (= lt!52402 call!10770)))

(assert (=> b!103037 (= c!17740 ((_ is MissingZero!267) lt!52402))))

(assert (=> b!103037 e!67116))

(declare-fun b!103038 () Bool)

(assert (=> b!103038 (= e!67104 (getCurrentListMap!480 (_keys!4257 newMap!16) (_values!2538 newMap!16) (mask!6688 newMap!16) (extraKeys!2364 newMap!16) (zeroValue!2432 newMap!16) (minValue!2432 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2555 newMap!16)))))

(declare-fun b!103039 () Bool)

(declare-fun lt!52418 () tuple2!2390)

(assert (=> b!103039 (= lt!52418 call!10757)))

(assert (=> b!103039 (= e!67117 (tuple2!2391 (_1!1205 lt!52418) (_2!1205 lt!52418)))))

(declare-fun d!27729 () Bool)

(assert (=> d!27729 e!67107))

(declare-fun res!51465 () Bool)

(assert (=> d!27729 (=> (not res!51465) (not e!67107))))

(assert (=> d!27729 (= res!51465 (valid!403 (_2!1205 lt!52424)))))

(assert (=> d!27729 (= lt!52424 e!67110)))

(assert (=> d!27729 (= c!17734 (= (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) (bvneg (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355))))))

(assert (=> d!27729 (valid!403 newMap!16)))

(assert (=> d!27729 (= (update!154 newMap!16 (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) lt!52226) lt!52424)))

(declare-fun b!103040 () Bool)

(declare-fun res!51458 () Bool)

(assert (=> b!103040 (=> (not res!51458) (not e!67121))))

(assert (=> b!103040 (= res!51458 call!10764)))

(assert (=> b!103040 (= e!67113 e!67121)))

(declare-fun b!103041 () Bool)

(declare-fun lt!52414 () Unit!3158)

(assert (=> b!103041 (= e!67108 lt!52414)))

(assert (=> b!103041 (= lt!52414 call!10756)))

(assert (=> b!103041 (= lt!52420 call!10771)))

(declare-fun res!51468 () Bool)

(assert (=> b!103041 (= res!51468 ((_ is Found!267) lt!52420))))

(assert (=> b!103041 (=> (not res!51468) (not e!67106))))

(assert (=> b!103041 e!67106))

(declare-fun bm!10765 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!45 (array!4320 array!4322 (_ BitVec 32) (_ BitVec 32) V!3203 V!3203 (_ BitVec 64) Int) Unit!3158)

(assert (=> bm!10765 (= call!10756 (lemmaInListMapThenSeekEntryOrOpenFindsIt!45 (_keys!4257 newMap!16) (_values!2538 newMap!16) (mask!6688 newMap!16) (extraKeys!2364 newMap!16) (zeroValue!2432 newMap!16) (minValue!2432 newMap!16) (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) (defaultEntry!2555 newMap!16)))))

(declare-fun b!103042 () Bool)

(declare-fun lt!52421 () tuple2!2390)

(assert (=> b!103042 (= e!67122 (tuple2!2391 (_1!1205 lt!52421) (_2!1205 lt!52421)))))

(assert (=> b!103042 (= lt!52421 call!10757)))

(declare-fun b!103043 () Bool)

(declare-fun lt!52419 () Unit!3158)

(declare-fun lt!52417 () Unit!3158)

(assert (=> b!103043 (= lt!52419 lt!52417)))

(assert (=> b!103043 (= call!10762 call!10761)))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!45 (array!4320 array!4322 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3203 V!3203 V!3203 Int) Unit!3158)

(assert (=> b!103043 (= lt!52417 (lemmaChangeLongMinValueKeyThenAddPairToListMap!45 (_keys!4257 newMap!16) (_values!2538 newMap!16) (mask!6688 newMap!16) (extraKeys!2364 newMap!16) lt!52422 (zeroValue!2432 newMap!16) (minValue!2432 newMap!16) lt!52226 (defaultEntry!2555 newMap!16)))))

(assert (=> b!103043 (= lt!52422 (bvor (extraKeys!2364 newMap!16) #b00000000000000000000000000000010))))

(assert (=> b!103043 (= e!67114 (tuple2!2391 true (LongMapFixedSize!889 (defaultEntry!2555 newMap!16) (mask!6688 newMap!16) (bvor (extraKeys!2364 newMap!16) #b00000000000000000000000000000010) (zeroValue!2432 newMap!16) lt!52226 (_size!493 newMap!16) (_keys!4257 newMap!16) (_values!2538 newMap!16) (_vacant!493 newMap!16))))))

(declare-fun b!103044 () Bool)

(declare-fun lt!52398 () Unit!3158)

(declare-fun lt!52416 () Unit!3158)

(assert (=> b!103044 (= lt!52398 lt!52416)))

(assert (=> b!103044 (contains!821 call!10753 (select (arr!2050 (_keys!4257 newMap!16)) (index!3216 lt!52423)))))

(declare-fun lemmaValidKeyInArrayIsInListMap!103 (array!4320 array!4322 (_ BitVec 32) (_ BitVec 32) V!3203 V!3203 (_ BitVec 32) Int) Unit!3158)

(assert (=> b!103044 (= lt!52416 (lemmaValidKeyInArrayIsInListMap!103 (_keys!4257 newMap!16) lt!52412 (mask!6688 newMap!16) (extraKeys!2364 newMap!16) (zeroValue!2432 newMap!16) (minValue!2432 newMap!16) (index!3216 lt!52423) (defaultEntry!2555 newMap!16)))))

(assert (=> b!103044 (= lt!52412 (array!4323 (store (arr!2051 (_values!2538 newMap!16)) (index!3216 lt!52423) (ValueCellFull!990 lt!52226)) (size!2305 (_values!2538 newMap!16))))))

(declare-fun lt!52408 () Unit!3158)

(declare-fun lt!52406 () Unit!3158)

(assert (=> b!103044 (= lt!52408 lt!52406)))

(assert (=> b!103044 (= call!10772 call!10775)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!45 (array!4320 array!4322 (_ BitVec 32) (_ BitVec 32) V!3203 V!3203 (_ BitVec 32) (_ BitVec 64) V!3203 Int) Unit!3158)

(assert (=> b!103044 (= lt!52406 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!45 (_keys!4257 newMap!16) (_values!2538 newMap!16) (mask!6688 newMap!16) (extraKeys!2364 newMap!16) (zeroValue!2432 newMap!16) (minValue!2432 newMap!16) (index!3216 lt!52423) (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) lt!52226 (defaultEntry!2555 newMap!16)))))

(declare-fun lt!52415 () Unit!3158)

(assert (=> b!103044 (= lt!52415 e!67108)))

(assert (=> b!103044 (= c!17745 call!10754)))

(assert (=> b!103044 (= e!67117 (tuple2!2391 true (LongMapFixedSize!889 (defaultEntry!2555 newMap!16) (mask!6688 newMap!16) (extraKeys!2364 newMap!16) (zeroValue!2432 newMap!16) (minValue!2432 newMap!16) (_size!493 newMap!16) (_keys!4257 newMap!16) (array!4323 (store (arr!2051 (_values!2538 newMap!16)) (index!3216 lt!52423) (ValueCellFull!990 lt!52226)) (size!2305 (_values!2538 newMap!16))) (_vacant!493 newMap!16))))))

(declare-fun b!103045 () Bool)

(assert (=> b!103045 (= e!67109 (= (select (arr!2050 (_keys!4257 newMap!16)) (index!3216 lt!52401)) (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355)))))

(declare-fun bm!10766 () Bool)

(assert (=> bm!10766 (= call!10763 call!10755)))

(declare-fun b!103046 () Bool)

(declare-fun e!67120 () Bool)

(assert (=> b!103046 (= e!67125 e!67120)))

(declare-fun res!51466 () Bool)

(assert (=> b!103046 (= res!51466 (contains!821 call!10759 (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355)))))

(assert (=> b!103046 (=> (not res!51466) (not e!67120))))

(declare-fun bm!10767 () Bool)

(assert (=> bm!10767 (= call!10766 call!10755)))

(declare-fun b!103047 () Bool)

(assert (=> b!103047 (= e!67120 (= call!10759 (+!142 call!10765 (tuple2!2393 (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) lt!52226))))))

(declare-fun bm!10768 () Bool)

(assert (=> bm!10768 (= call!10776 (seekEntryOrOpen!0 (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) (_keys!4257 newMap!16) (mask!6688 newMap!16)))))

(declare-fun bm!10769 () Bool)

(assert (=> bm!10769 (= call!10773 call!10774)))

(declare-fun bm!10770 () Bool)

(assert (=> bm!10770 (= call!10753 call!10760)))

(declare-fun bm!10771 () Bool)

(assert (=> bm!10771 (= call!10772 (+!142 e!67104 (ite c!17734 (ite c!17736 (tuple2!2393 #b0000000000000000000000000000000000000000000000000000000000000000 lt!52226) (tuple2!2393 #b1000000000000000000000000000000000000000000000000000000000000000 lt!52226)) (tuple2!2393 (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) lt!52226))))))

(declare-fun c!17743 () Bool)

(assert (=> bm!10771 (= c!17743 c!17734)))

(declare-fun bm!10772 () Bool)

(assert (=> bm!10772 (= call!10767 call!10774)))

(declare-fun bm!10773 () Bool)

(assert (=> bm!10773 (= call!10771 call!10776)))

(assert (= (and d!27729 c!17734) b!103011))

(assert (= (and d!27729 (not c!17734)) b!103010))

(assert (= (and b!103011 c!17736) b!103027))

(assert (= (and b!103011 (not c!17736)) b!103043))

(assert (= (or b!103027 b!103043) bm!10756))

(assert (= (or b!103027 b!103043) bm!10752))

(assert (= (or b!103027 b!103043) bm!10758))

(assert (= (and b!103010 c!17737) b!103018))

(assert (= (and b!103010 (not c!17737)) b!103029))

(assert (= (and b!103018 c!17741) b!103032))

(assert (= (and b!103018 (not c!17741)) b!103037))

(assert (= (and b!103032 res!51459) b!103023))

(assert (= (and b!103023 res!51457) b!103045))

(assert (= (and b!103037 c!17740) b!103025))

(assert (= (and b!103037 (not c!17740)) b!103006))

(assert (= (and b!103025 res!51467) b!103028))

(assert (= (and b!103028 res!51469) b!103034))

(assert (= (and b!103006 c!17746) b!103012))

(assert (= (and b!103006 (not c!17746)) b!103033))

(assert (= (and b!103012 res!51460) b!103013))

(assert (= (and b!103013 res!51461) b!103035))

(assert (= (or b!103025 b!103012) bm!10764))

(assert (= (or b!103034 b!103035) bm!10769))

(assert (= (or b!103023 bm!10764) bm!10767))

(assert (= (or b!103032 b!103037) bm!10750))

(assert (= (and b!103029 c!17735) b!103042))

(assert (= (and b!103029 (not c!17735)) b!103030))

(assert (= (and b!103030 c!17742) b!103039))

(assert (= (and b!103030 (not c!17742)) b!103044))

(assert (= (and b!103044 c!17745) b!103041))

(assert (= (and b!103044 (not c!17745)) b!103009))

(assert (= (and b!103041 res!51468) b!103014))

(assert (= (and b!103014 res!51464) b!103022))

(assert (= (and b!103009 c!17739) b!103040))

(assert (= (and b!103009 (not c!17739)) b!103026))

(assert (= (and b!103040 res!51458) b!103021))

(assert (= (and b!103021 res!51463) b!103007))

(assert (= (and b!103026 c!17747) b!103019))

(assert (= (and b!103026 (not c!17747)) b!103024))

(assert (= (and b!103019 res!51462) b!103008))

(assert (= (and b!103008 res!51456) b!103015))

(assert (= (or b!103040 b!103019) bm!10753))

(assert (= (or b!103007 b!103015) bm!10772))

(assert (= (or b!103014 bm!10753) bm!10766))

(assert (= (or b!103041 b!103009) bm!10773))

(assert (= (or b!103042 b!103039) bm!10762))

(assert (= (or b!103037 b!103009) bm!10751))

(assert (= (or bm!10767 bm!10766) bm!10760))

(assert (= (or bm!10769 bm!10772) bm!10759))

(assert (= (or bm!10750 bm!10773) bm!10768))

(assert (= (or b!103018 b!103044) bm!10770))

(assert (= (or b!103032 b!103041) bm!10765))

(assert (= (or b!103018 b!103044) bm!10757))

(assert (= (and bm!10757 c!17744) b!103016))

(assert (= (and bm!10757 (not c!17744)) b!103017))

(assert (= (or bm!10752 bm!10770) bm!10761))

(assert (= (or bm!10756 b!103044) bm!10755))

(assert (= (or bm!10758 b!103044) bm!10771))

(assert (= (and bm!10771 c!17743) b!103020))

(assert (= (and bm!10771 (not c!17743)) b!103038))

(assert (= (and d!27729 res!51465) b!103036))

(assert (= (and b!103036 c!17738) b!103046))

(assert (= (and b!103036 (not c!17738)) b!103031))

(assert (= (and b!103046 res!51466) b!103047))

(assert (= (or b!103046 b!103047 b!103031) bm!10754))

(assert (= (or b!103047 b!103031) bm!10763))

(assert (=> b!103017 m!113897))

(declare-fun m!113961 () Bool)

(assert (=> bm!10761 m!113961))

(declare-fun m!113963 () Bool)

(assert (=> b!103028 m!113963))

(assert (=> bm!10768 m!113781))

(declare-fun m!113965 () Bool)

(assert (=> bm!10768 m!113965))

(declare-fun m!113967 () Bool)

(assert (=> bm!10760 m!113967))

(declare-fun m!113969 () Bool)

(assert (=> b!103043 m!113969))

(assert (=> bm!10751 m!113781))

(declare-fun m!113971 () Bool)

(assert (=> bm!10751 m!113971))

(declare-fun m!113973 () Bool)

(assert (=> bm!10771 m!113973))

(declare-fun m!113975 () Bool)

(assert (=> bm!10754 m!113975))

(assert (=> b!103038 m!113897))

(assert (=> bm!10757 m!113781))

(declare-fun m!113977 () Bool)

(assert (=> bm!10757 m!113977))

(declare-fun m!113979 () Bool)

(assert (=> b!103022 m!113979))

(declare-fun m!113981 () Bool)

(assert (=> b!103027 m!113981))

(assert (=> bm!10759 m!113781))

(declare-fun m!113983 () Bool)

(assert (=> bm!10759 m!113983))

(declare-fun m!113985 () Bool)

(assert (=> b!103045 m!113985))

(declare-fun m!113987 () Bool)

(assert (=> b!103047 m!113987))

(assert (=> bm!10762 m!113781))

(declare-fun m!113989 () Bool)

(assert (=> bm!10762 m!113989))

(declare-fun m!113991 () Bool)

(assert (=> b!103008 m!113991))

(assert (=> b!103046 m!113781))

(declare-fun m!113993 () Bool)

(assert (=> b!103046 m!113993))

(declare-fun m!113995 () Bool)

(assert (=> b!103044 m!113995))

(assert (=> b!103044 m!113781))

(declare-fun m!113997 () Bool)

(assert (=> b!103044 m!113997))

(assert (=> b!103044 m!113995))

(declare-fun m!113999 () Bool)

(assert (=> b!103044 m!113999))

(declare-fun m!114001 () Bool)

(assert (=> b!103044 m!114001))

(declare-fun m!114003 () Bool)

(assert (=> b!103044 m!114003))

(declare-fun m!114005 () Bool)

(assert (=> b!103013 m!114005))

(declare-fun m!114007 () Bool)

(assert (=> d!27729 m!114007))

(assert (=> d!27729 m!113787))

(assert (=> bm!10763 m!113793))

(assert (=> bm!10755 m!114003))

(declare-fun m!114009 () Bool)

(assert (=> bm!10755 m!114009))

(assert (=> bm!10765 m!113781))

(declare-fun m!114011 () Bool)

(assert (=> bm!10765 m!114011))

(assert (=> b!103010 m!113781))

(assert (=> b!103010 m!113965))

(declare-fun m!114013 () Bool)

(assert (=> b!103021 m!114013))

(assert (=> b!102770 d!27729))

(declare-fun d!27731 () Bool)

(declare-fun res!51476 () Bool)

(declare-fun e!67128 () Bool)

(assert (=> d!27731 (=> (not res!51476) (not e!67128))))

(declare-fun simpleValid!71 (LongMapFixedSize!888) Bool)

(assert (=> d!27731 (= res!51476 (simpleValid!71 newMap!16))))

(assert (=> d!27731 (= (valid!403 newMap!16) e!67128)))

(declare-fun b!103054 () Bool)

(declare-fun res!51477 () Bool)

(assert (=> b!103054 (=> (not res!51477) (not e!67128))))

(declare-fun arrayCountValidKeys!0 (array!4320 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!103054 (= res!51477 (= (arrayCountValidKeys!0 (_keys!4257 newMap!16) #b00000000000000000000000000000000 (size!2304 (_keys!4257 newMap!16))) (_size!493 newMap!16)))))

(declare-fun b!103055 () Bool)

(declare-fun res!51478 () Bool)

(assert (=> b!103055 (=> (not res!51478) (not e!67128))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4320 (_ BitVec 32)) Bool)

(assert (=> b!103055 (= res!51478 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4257 newMap!16) (mask!6688 newMap!16)))))

(declare-fun b!103056 () Bool)

(assert (=> b!103056 (= e!67128 (arrayNoDuplicates!0 (_keys!4257 newMap!16) #b00000000000000000000000000000000 Nil!1629))))

(assert (= (and d!27731 res!51476) b!103054))

(assert (= (and b!103054 res!51477) b!103055))

(assert (= (and b!103055 res!51478) b!103056))

(declare-fun m!114015 () Bool)

(assert (=> d!27731 m!114015))

(declare-fun m!114017 () Bool)

(assert (=> b!103054 m!114017))

(declare-fun m!114019 () Bool)

(assert (=> b!103055 m!114019))

(declare-fun m!114021 () Bool)

(assert (=> b!103056 m!114021))

(assert (=> b!102780 d!27731))

(declare-fun d!27733 () Bool)

(assert (=> d!27733 (not (arrayContainsKey!0 (_keys!4257 (v!2868 (underlying!356 thiss!992))) (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!52427 () Unit!3158)

(declare-fun choose!68 (array!4320 (_ BitVec 32) (_ BitVec 64) List!1632) Unit!3158)

(assert (=> d!27733 (= lt!52427 (choose!68 (_keys!4257 (v!2868 (underlying!356 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) (Cons!1628 (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) Nil!1629)))))

(assert (=> d!27733 (bvslt (size!2304 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!27733 (= (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4257 (v!2868 (underlying!356 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) (Cons!1628 (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) Nil!1629)) lt!52427)))

(declare-fun bs!4229 () Bool)

(assert (= bs!4229 d!27733))

(assert (=> bs!4229 m!113781))

(assert (=> bs!4229 m!113811))

(assert (=> bs!4229 m!113781))

(declare-fun m!114023 () Bool)

(assert (=> bs!4229 m!114023))

(assert (=> b!102767 d!27733))

(declare-fun d!27735 () Bool)

(assert (=> d!27735 (arrayNoDuplicates!0 (_keys!4257 (v!2868 (underlying!356 thiss!992))) from!355 Nil!1629)))

(declare-fun lt!52430 () Unit!3158)

(declare-fun choose!39 (array!4320 (_ BitVec 32) (_ BitVec 32)) Unit!3158)

(assert (=> d!27735 (= lt!52430 (choose!39 (_keys!4257 (v!2868 (underlying!356 thiss!992))) #b00000000000000000000000000000000 from!355))))

(assert (=> d!27735 (bvslt (size!2304 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!27735 (= (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4257 (v!2868 (underlying!356 thiss!992))) #b00000000000000000000000000000000 from!355) lt!52430)))

(declare-fun bs!4230 () Bool)

(assert (= bs!4230 d!27735))

(assert (=> bs!4230 m!113807))

(declare-fun m!114025 () Bool)

(assert (=> bs!4230 m!114025))

(assert (=> b!102767 d!27735))

(declare-fun d!27737 () Bool)

(declare-fun res!51483 () Bool)

(declare-fun e!67133 () Bool)

(assert (=> d!27737 (=> res!51483 e!67133)))

(assert (=> d!27737 (= res!51483 (= (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355)))))

(assert (=> d!27737 (= (arrayContainsKey!0 (_keys!4257 (v!2868 (underlying!356 thiss!992))) (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)) e!67133)))

(declare-fun b!103061 () Bool)

(declare-fun e!67134 () Bool)

(assert (=> b!103061 (= e!67133 e!67134)))

(declare-fun res!51484 () Bool)

(assert (=> b!103061 (=> (not res!51484) (not e!67134))))

(assert (=> b!103061 (= res!51484 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2304 (_keys!4257 (v!2868 (underlying!356 thiss!992))))))))

(declare-fun b!103062 () Bool)

(assert (=> b!103062 (= e!67134 (arrayContainsKey!0 (_keys!4257 (v!2868 (underlying!356 thiss!992))) (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(assert (= (and d!27737 (not res!51483)) b!103061))

(assert (= (and b!103061 res!51484) b!103062))

(assert (=> d!27737 m!113901))

(assert (=> b!103062 m!113781))

(declare-fun m!114027 () Bool)

(assert (=> b!103062 m!114027))

(assert (=> b!102767 d!27737))

(declare-fun d!27739 () Bool)

(declare-fun e!67137 () Bool)

(assert (=> d!27739 e!67137))

(declare-fun c!17750 () Bool)

(assert (=> d!27739 (= c!17750 (and (not (= (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!52433 () Unit!3158)

(declare-fun choose!643 (array!4320 array!4322 (_ BitVec 32) (_ BitVec 32) V!3203 V!3203 (_ BitVec 64) (_ BitVec 32) Int) Unit!3158)

(assert (=> d!27739 (= lt!52433 (choose!643 (_keys!4257 (v!2868 (underlying!356 thiss!992))) (_values!2538 (v!2868 (underlying!356 thiss!992))) (mask!6688 (v!2868 (underlying!356 thiss!992))) (extraKeys!2364 (v!2868 (underlying!356 thiss!992))) (zeroValue!2432 (v!2868 (underlying!356 thiss!992))) (minValue!2432 (v!2868 (underlying!356 thiss!992))) (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2555 (v!2868 (underlying!356 thiss!992)))))))

(assert (=> d!27739 (validMask!0 (mask!6688 (v!2868 (underlying!356 thiss!992))))))

(assert (=> d!27739 (= (lemmaListMapContainsThenArrayContainsFrom!108 (_keys!4257 (v!2868 (underlying!356 thiss!992))) (_values!2538 (v!2868 (underlying!356 thiss!992))) (mask!6688 (v!2868 (underlying!356 thiss!992))) (extraKeys!2364 (v!2868 (underlying!356 thiss!992))) (zeroValue!2432 (v!2868 (underlying!356 thiss!992))) (minValue!2432 (v!2868 (underlying!356 thiss!992))) (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2555 (v!2868 (underlying!356 thiss!992)))) lt!52433)))

(declare-fun b!103067 () Bool)

(assert (=> b!103067 (= e!67137 (arrayContainsKey!0 (_keys!4257 (v!2868 (underlying!356 thiss!992))) (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!103068 () Bool)

(assert (=> b!103068 (= e!67137 (ite (= (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2364 (v!2868 (underlying!356 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2364 (v!2868 (underlying!356 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!27739 c!17750) b!103067))

(assert (= (and d!27739 (not c!17750)) b!103068))

(assert (=> d!27739 m!113781))

(declare-fun m!114029 () Bool)

(assert (=> d!27739 m!114029))

(assert (=> d!27739 m!113817))

(assert (=> b!103067 m!113781))

(assert (=> b!103067 m!113811))

(assert (=> b!102767 d!27739))

(declare-fun c!17753 () Bool)

(declare-fun bm!10776 () Bool)

(declare-fun call!10779 () Bool)

(assert (=> bm!10776 (= call!10779 (arrayNoDuplicates!0 (_keys!4257 (v!2868 (underlying!356 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!17753 (Cons!1628 (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) Nil!1629) Nil!1629)))))

(declare-fun b!103079 () Bool)

(declare-fun e!67149 () Bool)

(declare-fun e!67147 () Bool)

(assert (=> b!103079 (= e!67149 e!67147)))

(assert (=> b!103079 (= c!17753 (validKeyInArray!0 (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355)))))

(declare-fun d!27741 () Bool)

(declare-fun res!51493 () Bool)

(declare-fun e!67148 () Bool)

(assert (=> d!27741 (=> res!51493 e!67148)))

(assert (=> d!27741 (= res!51493 (bvsge from!355 (size!2304 (_keys!4257 (v!2868 (underlying!356 thiss!992))))))))

(assert (=> d!27741 (= (arrayNoDuplicates!0 (_keys!4257 (v!2868 (underlying!356 thiss!992))) from!355 Nil!1629) e!67148)))

(declare-fun b!103080 () Bool)

(declare-fun e!67146 () Bool)

(declare-fun contains!822 (List!1632 (_ BitVec 64)) Bool)

(assert (=> b!103080 (= e!67146 (contains!822 Nil!1629 (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355)))))

(declare-fun b!103081 () Bool)

(assert (=> b!103081 (= e!67147 call!10779)))

(declare-fun b!103082 () Bool)

(assert (=> b!103082 (= e!67148 e!67149)))

(declare-fun res!51491 () Bool)

(assert (=> b!103082 (=> (not res!51491) (not e!67149))))

(assert (=> b!103082 (= res!51491 (not e!67146))))

(declare-fun res!51492 () Bool)

(assert (=> b!103082 (=> (not res!51492) (not e!67146))))

(assert (=> b!103082 (= res!51492 (validKeyInArray!0 (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355)))))

(declare-fun b!103083 () Bool)

(assert (=> b!103083 (= e!67147 call!10779)))

(assert (= (and d!27741 (not res!51493)) b!103082))

(assert (= (and b!103082 res!51492) b!103080))

(assert (= (and b!103082 res!51491) b!103079))

(assert (= (and b!103079 c!17753) b!103081))

(assert (= (and b!103079 (not c!17753)) b!103083))

(assert (= (or b!103081 b!103083) bm!10776))

(assert (=> bm!10776 m!113781))

(declare-fun m!114031 () Bool)

(assert (=> bm!10776 m!114031))

(assert (=> b!103079 m!113781))

(assert (=> b!103079 m!113781))

(declare-fun m!114033 () Bool)

(assert (=> b!103079 m!114033))

(assert (=> b!103080 m!113781))

(assert (=> b!103080 m!113781))

(declare-fun m!114035 () Bool)

(assert (=> b!103080 m!114035))

(assert (=> b!103082 m!113781))

(assert (=> b!103082 m!113781))

(assert (=> b!103082 m!114033))

(assert (=> b!102767 d!27741))

(declare-fun d!27743 () Bool)

(assert (=> d!27743 (= (array_inv!1233 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) (bvsge (size!2304 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!102776 d!27743))

(declare-fun d!27745 () Bool)

(assert (=> d!27745 (= (array_inv!1234 (_values!2538 (v!2868 (underlying!356 thiss!992)))) (bvsge (size!2305 (_values!2538 (v!2868 (underlying!356 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!102776 d!27745))

(declare-fun d!27747 () Bool)

(declare-fun e!67166 () Bool)

(assert (=> d!27747 e!67166))

(declare-fun res!51504 () Bool)

(assert (=> d!27747 (=> (not res!51504) (not e!67166))))

(declare-fun lt!52450 () ListLongMap!1573)

(assert (=> d!27747 (= res!51504 (not (contains!821 lt!52450 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!67167 () ListLongMap!1573)

(assert (=> d!27747 (= lt!52450 e!67167)))

(declare-fun c!17764 () Bool)

(assert (=> d!27747 (= c!17764 (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2304 (_keys!4257 (v!2868 (underlying!356 thiss!992))))))))

(assert (=> d!27747 (validMask!0 (mask!6688 (v!2868 (underlying!356 thiss!992))))))

(assert (=> d!27747 (= (getCurrentListMapNoExtraKeys!109 (_keys!4257 (v!2868 (underlying!356 thiss!992))) (_values!2538 (v!2868 (underlying!356 thiss!992))) (mask!6688 (v!2868 (underlying!356 thiss!992))) (extraKeys!2364 (v!2868 (underlying!356 thiss!992))) (zeroValue!2432 (v!2868 (underlying!356 thiss!992))) (minValue!2432 (v!2868 (underlying!356 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2555 (v!2868 (underlying!356 thiss!992)))) lt!52450)))

(declare-fun b!103108 () Bool)

(declare-fun e!67169 () Bool)

(declare-fun e!67168 () Bool)

(assert (=> b!103108 (= e!67169 e!67168)))

(declare-fun c!17763 () Bool)

(assert (=> b!103108 (= c!17763 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2304 (_keys!4257 (v!2868 (underlying!356 thiss!992))))))))

(declare-fun b!103109 () Bool)

(declare-fun e!67165 () ListLongMap!1573)

(assert (=> b!103109 (= e!67167 e!67165)))

(declare-fun c!17765 () Bool)

(assert (=> b!103109 (= c!17765 (validKeyInArray!0 (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!103110 () Bool)

(declare-fun isEmpty!371 (ListLongMap!1573) Bool)

(assert (=> b!103110 (= e!67168 (isEmpty!371 lt!52450))))

(declare-fun b!103111 () Bool)

(declare-fun call!10782 () ListLongMap!1573)

(assert (=> b!103111 (= e!67165 call!10782)))

(declare-fun b!103112 () Bool)

(declare-fun lt!52449 () Unit!3158)

(declare-fun lt!52452 () Unit!3158)

(assert (=> b!103112 (= lt!52449 lt!52452)))

(declare-fun lt!52451 () (_ BitVec 64))

(declare-fun lt!52454 () V!3203)

(declare-fun lt!52453 () (_ BitVec 64))

(declare-fun lt!52448 () ListLongMap!1573)

(assert (=> b!103112 (not (contains!821 (+!142 lt!52448 (tuple2!2393 lt!52453 lt!52454)) lt!52451))))

(declare-fun addStillNotContains!46 (ListLongMap!1573 (_ BitVec 64) V!3203 (_ BitVec 64)) Unit!3158)

(assert (=> b!103112 (= lt!52452 (addStillNotContains!46 lt!52448 lt!52453 lt!52454 lt!52451))))

(assert (=> b!103112 (= lt!52451 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!103112 (= lt!52454 (get!1328 (select (arr!2051 (_values!2538 (v!2868 (underlying!356 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!386 (defaultEntry!2555 (v!2868 (underlying!356 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!103112 (= lt!52453 (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!103112 (= lt!52448 call!10782)))

(assert (=> b!103112 (= e!67165 (+!142 call!10782 (tuple2!2393 (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1328 (select (arr!2051 (_values!2538 (v!2868 (underlying!356 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!386 (defaultEntry!2555 (v!2868 (underlying!356 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!103113 () Bool)

(assert (=> b!103113 (= e!67167 (ListLongMap!1574 Nil!1630))))

(declare-fun b!103114 () Bool)

(declare-fun e!67170 () Bool)

(assert (=> b!103114 (= e!67170 (validKeyInArray!0 (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!103114 (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000)))

(declare-fun b!103115 () Bool)

(declare-fun res!51502 () Bool)

(assert (=> b!103115 (=> (not res!51502) (not e!67166))))

(assert (=> b!103115 (= res!51502 (not (contains!821 lt!52450 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!103116 () Bool)

(assert (=> b!103116 (= e!67168 (= lt!52450 (getCurrentListMapNoExtraKeys!109 (_keys!4257 (v!2868 (underlying!356 thiss!992))) (_values!2538 (v!2868 (underlying!356 thiss!992))) (mask!6688 (v!2868 (underlying!356 thiss!992))) (extraKeys!2364 (v!2868 (underlying!356 thiss!992))) (zeroValue!2432 (v!2868 (underlying!356 thiss!992))) (minValue!2432 (v!2868 (underlying!356 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2555 (v!2868 (underlying!356 thiss!992))))))))

(declare-fun b!103117 () Bool)

(assert (=> b!103117 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2304 (_keys!4257 (v!2868 (underlying!356 thiss!992))))))))

(assert (=> b!103117 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2305 (_values!2538 (v!2868 (underlying!356 thiss!992))))))))

(declare-fun e!67164 () Bool)

(assert (=> b!103117 (= e!67164 (= (apply!96 lt!52450 (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1328 (select (arr!2051 (_values!2538 (v!2868 (underlying!356 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!386 (defaultEntry!2555 (v!2868 (underlying!356 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!103118 () Bool)

(assert (=> b!103118 (= e!67166 e!67169)))

(declare-fun c!17762 () Bool)

(assert (=> b!103118 (= c!17762 e!67170)))

(declare-fun res!51503 () Bool)

(assert (=> b!103118 (=> (not res!51503) (not e!67170))))

(assert (=> b!103118 (= res!51503 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2304 (_keys!4257 (v!2868 (underlying!356 thiss!992))))))))

(declare-fun b!103119 () Bool)

(assert (=> b!103119 (= e!67169 e!67164)))

(assert (=> b!103119 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2304 (_keys!4257 (v!2868 (underlying!356 thiss!992))))))))

(declare-fun res!51505 () Bool)

(assert (=> b!103119 (= res!51505 (contains!821 lt!52450 (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!103119 (=> (not res!51505) (not e!67164))))

(declare-fun bm!10779 () Bool)

(assert (=> bm!10779 (= call!10782 (getCurrentListMapNoExtraKeys!109 (_keys!4257 (v!2868 (underlying!356 thiss!992))) (_values!2538 (v!2868 (underlying!356 thiss!992))) (mask!6688 (v!2868 (underlying!356 thiss!992))) (extraKeys!2364 (v!2868 (underlying!356 thiss!992))) (zeroValue!2432 (v!2868 (underlying!356 thiss!992))) (minValue!2432 (v!2868 (underlying!356 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2555 (v!2868 (underlying!356 thiss!992)))))))

(assert (= (and d!27747 c!17764) b!103113))

(assert (= (and d!27747 (not c!17764)) b!103109))

(assert (= (and b!103109 c!17765) b!103112))

(assert (= (and b!103109 (not c!17765)) b!103111))

(assert (= (or b!103112 b!103111) bm!10779))

(assert (= (and d!27747 res!51504) b!103115))

(assert (= (and b!103115 res!51502) b!103118))

(assert (= (and b!103118 res!51503) b!103114))

(assert (= (and b!103118 c!17762) b!103119))

(assert (= (and b!103118 (not c!17762)) b!103108))

(assert (= (and b!103119 res!51505) b!103117))

(assert (= (and b!103108 c!17763) b!103116))

(assert (= (and b!103108 (not c!17763)) b!103110))

(declare-fun b_lambda!4623 () Bool)

(assert (=> (not b_lambda!4623) (not b!103112)))

(assert (=> b!103112 t!5691))

(declare-fun b_and!6381 () Bool)

(assert (= b_and!6377 (and (=> t!5691 result!3413) b_and!6381)))

(assert (=> b!103112 t!5693))

(declare-fun b_and!6383 () Bool)

(assert (= b_and!6379 (and (=> t!5693 result!3417) b_and!6383)))

(declare-fun b_lambda!4625 () Bool)

(assert (=> (not b_lambda!4625) (not b!103117)))

(assert (=> b!103117 t!5691))

(declare-fun b_and!6385 () Bool)

(assert (= b_and!6381 (and (=> t!5691 result!3413) b_and!6385)))

(assert (=> b!103117 t!5693))

(declare-fun b_and!6387 () Bool)

(assert (= b_and!6383 (and (=> t!5693 result!3417) b_and!6387)))

(declare-fun m!114037 () Bool)

(assert (=> b!103115 m!114037))

(declare-fun m!114039 () Bool)

(assert (=> b!103116 m!114039))

(assert (=> b!103112 m!113911))

(declare-fun m!114041 () Bool)

(assert (=> b!103112 m!114041))

(assert (=> b!103112 m!113911))

(assert (=> b!103112 m!113799))

(assert (=> b!103112 m!113915))

(declare-fun m!114043 () Bool)

(assert (=> b!103112 m!114043))

(assert (=> b!103112 m!113901))

(assert (=> b!103112 m!114043))

(declare-fun m!114045 () Bool)

(assert (=> b!103112 m!114045))

(declare-fun m!114047 () Bool)

(assert (=> b!103112 m!114047))

(assert (=> b!103112 m!113799))

(assert (=> bm!10779 m!114039))

(declare-fun m!114049 () Bool)

(assert (=> b!103110 m!114049))

(assert (=> b!103109 m!113901))

(assert (=> b!103109 m!113901))

(assert (=> b!103109 m!113905))

(assert (=> b!103114 m!113901))

(assert (=> b!103114 m!113901))

(assert (=> b!103114 m!113905))

(assert (=> b!103119 m!113901))

(assert (=> b!103119 m!113901))

(declare-fun m!114051 () Bool)

(assert (=> b!103119 m!114051))

(assert (=> b!103117 m!113911))

(assert (=> b!103117 m!113911))

(assert (=> b!103117 m!113799))

(assert (=> b!103117 m!113915))

(assert (=> b!103117 m!113799))

(assert (=> b!103117 m!113901))

(declare-fun m!114053 () Bool)

(assert (=> b!103117 m!114053))

(assert (=> b!103117 m!113901))

(declare-fun m!114055 () Bool)

(assert (=> d!27747 m!114055))

(assert (=> d!27747 m!113817))

(assert (=> b!102771 d!27747))

(declare-fun d!27749 () Bool)

(declare-fun e!67173 () Bool)

(assert (=> d!27749 e!67173))

(declare-fun res!51511 () Bool)

(assert (=> d!27749 (=> (not res!51511) (not e!67173))))

(declare-fun lt!52466 () ListLongMap!1573)

(assert (=> d!27749 (= res!51511 (contains!821 lt!52466 (_1!1206 lt!52218)))))

(declare-fun lt!52465 () List!1633)

(assert (=> d!27749 (= lt!52466 (ListLongMap!1574 lt!52465))))

(declare-fun lt!52463 () Unit!3158)

(declare-fun lt!52464 () Unit!3158)

(assert (=> d!27749 (= lt!52463 lt!52464)))

(assert (=> d!27749 (= (getValueByKey!153 lt!52465 (_1!1206 lt!52218)) (Some!158 (_2!1206 lt!52218)))))

(declare-fun lemmaContainsTupThenGetReturnValue!71 (List!1633 (_ BitVec 64) V!3203) Unit!3158)

(assert (=> d!27749 (= lt!52464 (lemmaContainsTupThenGetReturnValue!71 lt!52465 (_1!1206 lt!52218) (_2!1206 lt!52218)))))

(declare-fun insertStrictlySorted!73 (List!1633 (_ BitVec 64) V!3203) List!1633)

(assert (=> d!27749 (= lt!52465 (insertStrictlySorted!73 (toList!802 (+!142 lt!52225 lt!52222)) (_1!1206 lt!52218) (_2!1206 lt!52218)))))

(assert (=> d!27749 (= (+!142 (+!142 lt!52225 lt!52222) lt!52218) lt!52466)))

(declare-fun b!103124 () Bool)

(declare-fun res!51510 () Bool)

(assert (=> b!103124 (=> (not res!51510) (not e!67173))))

(assert (=> b!103124 (= res!51510 (= (getValueByKey!153 (toList!802 lt!52466) (_1!1206 lt!52218)) (Some!158 (_2!1206 lt!52218))))))

(declare-fun b!103125 () Bool)

(declare-fun contains!823 (List!1633 tuple2!2392) Bool)

(assert (=> b!103125 (= e!67173 (contains!823 (toList!802 lt!52466) lt!52218))))

(assert (= (and d!27749 res!51511) b!103124))

(assert (= (and b!103124 res!51510) b!103125))

(declare-fun m!114057 () Bool)

(assert (=> d!27749 m!114057))

(declare-fun m!114059 () Bool)

(assert (=> d!27749 m!114059))

(declare-fun m!114061 () Bool)

(assert (=> d!27749 m!114061))

(declare-fun m!114063 () Bool)

(assert (=> d!27749 m!114063))

(declare-fun m!114065 () Bool)

(assert (=> b!103124 m!114065))

(declare-fun m!114067 () Bool)

(assert (=> b!103125 m!114067))

(assert (=> b!102771 d!27749))

(declare-fun d!27751 () Bool)

(declare-fun e!67174 () Bool)

(assert (=> d!27751 e!67174))

(declare-fun res!51513 () Bool)

(assert (=> d!27751 (=> (not res!51513) (not e!67174))))

(declare-fun lt!52470 () ListLongMap!1573)

(assert (=> d!27751 (= res!51513 (contains!821 lt!52470 (_1!1206 lt!52218)))))

(declare-fun lt!52469 () List!1633)

(assert (=> d!27751 (= lt!52470 (ListLongMap!1574 lt!52469))))

(declare-fun lt!52467 () Unit!3158)

(declare-fun lt!52468 () Unit!3158)

(assert (=> d!27751 (= lt!52467 lt!52468)))

(assert (=> d!27751 (= (getValueByKey!153 lt!52469 (_1!1206 lt!52218)) (Some!158 (_2!1206 lt!52218)))))

(assert (=> d!27751 (= lt!52468 (lemmaContainsTupThenGetReturnValue!71 lt!52469 (_1!1206 lt!52218) (_2!1206 lt!52218)))))

(assert (=> d!27751 (= lt!52469 (insertStrictlySorted!73 (toList!802 lt!52225) (_1!1206 lt!52218) (_2!1206 lt!52218)))))

(assert (=> d!27751 (= (+!142 lt!52225 lt!52218) lt!52470)))

(declare-fun b!103126 () Bool)

(declare-fun res!51512 () Bool)

(assert (=> b!103126 (=> (not res!51512) (not e!67174))))

(assert (=> b!103126 (= res!51512 (= (getValueByKey!153 (toList!802 lt!52470) (_1!1206 lt!52218)) (Some!158 (_2!1206 lt!52218))))))

(declare-fun b!103127 () Bool)

(assert (=> b!103127 (= e!67174 (contains!823 (toList!802 lt!52470) lt!52218))))

(assert (= (and d!27751 res!51513) b!103126))

(assert (= (and b!103126 res!51512) b!103127))

(declare-fun m!114069 () Bool)

(assert (=> d!27751 m!114069))

(declare-fun m!114071 () Bool)

(assert (=> d!27751 m!114071))

(declare-fun m!114073 () Bool)

(assert (=> d!27751 m!114073))

(declare-fun m!114075 () Bool)

(assert (=> d!27751 m!114075))

(declare-fun m!114077 () Bool)

(assert (=> b!103126 m!114077))

(declare-fun m!114079 () Bool)

(assert (=> b!103127 m!114079))

(assert (=> b!102771 d!27751))

(declare-fun d!27753 () Bool)

(declare-fun e!67175 () Bool)

(assert (=> d!27753 e!67175))

(declare-fun res!51515 () Bool)

(assert (=> d!27753 (=> (not res!51515) (not e!67175))))

(declare-fun lt!52474 () ListLongMap!1573)

(assert (=> d!27753 (= res!51515 (contains!821 lt!52474 (_1!1206 lt!52222)))))

(declare-fun lt!52473 () List!1633)

(assert (=> d!27753 (= lt!52474 (ListLongMap!1574 lt!52473))))

(declare-fun lt!52471 () Unit!3158)

(declare-fun lt!52472 () Unit!3158)

(assert (=> d!27753 (= lt!52471 lt!52472)))

(assert (=> d!27753 (= (getValueByKey!153 lt!52473 (_1!1206 lt!52222)) (Some!158 (_2!1206 lt!52222)))))

(assert (=> d!27753 (= lt!52472 (lemmaContainsTupThenGetReturnValue!71 lt!52473 (_1!1206 lt!52222) (_2!1206 lt!52222)))))

(assert (=> d!27753 (= lt!52473 (insertStrictlySorted!73 (toList!802 (+!142 lt!52225 lt!52218)) (_1!1206 lt!52222) (_2!1206 lt!52222)))))

(assert (=> d!27753 (= (+!142 (+!142 lt!52225 lt!52218) lt!52222) lt!52474)))

(declare-fun b!103128 () Bool)

(declare-fun res!51514 () Bool)

(assert (=> b!103128 (=> (not res!51514) (not e!67175))))

(assert (=> b!103128 (= res!51514 (= (getValueByKey!153 (toList!802 lt!52474) (_1!1206 lt!52222)) (Some!158 (_2!1206 lt!52222))))))

(declare-fun b!103129 () Bool)

(assert (=> b!103129 (= e!67175 (contains!823 (toList!802 lt!52474) lt!52222))))

(assert (= (and d!27753 res!51515) b!103128))

(assert (= (and b!103128 res!51514) b!103129))

(declare-fun m!114081 () Bool)

(assert (=> d!27753 m!114081))

(declare-fun m!114083 () Bool)

(assert (=> d!27753 m!114083))

(declare-fun m!114085 () Bool)

(assert (=> d!27753 m!114085))

(declare-fun m!114087 () Bool)

(assert (=> d!27753 m!114087))

(declare-fun m!114089 () Bool)

(assert (=> b!103128 m!114089))

(declare-fun m!114091 () Bool)

(assert (=> b!103129 m!114091))

(assert (=> b!102771 d!27753))

(declare-fun d!27755 () Bool)

(assert (=> d!27755 (= (validMask!0 (mask!6688 (v!2868 (underlying!356 thiss!992)))) (and (or (= (mask!6688 (v!2868 (underlying!356 thiss!992))) #b00000000000000000000000000000111) (= (mask!6688 (v!2868 (underlying!356 thiss!992))) #b00000000000000000000000000001111) (= (mask!6688 (v!2868 (underlying!356 thiss!992))) #b00000000000000000000000000011111) (= (mask!6688 (v!2868 (underlying!356 thiss!992))) #b00000000000000000000000000111111) (= (mask!6688 (v!2868 (underlying!356 thiss!992))) #b00000000000000000000000001111111) (= (mask!6688 (v!2868 (underlying!356 thiss!992))) #b00000000000000000000000011111111) (= (mask!6688 (v!2868 (underlying!356 thiss!992))) #b00000000000000000000000111111111) (= (mask!6688 (v!2868 (underlying!356 thiss!992))) #b00000000000000000000001111111111) (= (mask!6688 (v!2868 (underlying!356 thiss!992))) #b00000000000000000000011111111111) (= (mask!6688 (v!2868 (underlying!356 thiss!992))) #b00000000000000000000111111111111) (= (mask!6688 (v!2868 (underlying!356 thiss!992))) #b00000000000000000001111111111111) (= (mask!6688 (v!2868 (underlying!356 thiss!992))) #b00000000000000000011111111111111) (= (mask!6688 (v!2868 (underlying!356 thiss!992))) #b00000000000000000111111111111111) (= (mask!6688 (v!2868 (underlying!356 thiss!992))) #b00000000000000001111111111111111) (= (mask!6688 (v!2868 (underlying!356 thiss!992))) #b00000000000000011111111111111111) (= (mask!6688 (v!2868 (underlying!356 thiss!992))) #b00000000000000111111111111111111) (= (mask!6688 (v!2868 (underlying!356 thiss!992))) #b00000000000001111111111111111111) (= (mask!6688 (v!2868 (underlying!356 thiss!992))) #b00000000000011111111111111111111) (= (mask!6688 (v!2868 (underlying!356 thiss!992))) #b00000000000111111111111111111111) (= (mask!6688 (v!2868 (underlying!356 thiss!992))) #b00000000001111111111111111111111) (= (mask!6688 (v!2868 (underlying!356 thiss!992))) #b00000000011111111111111111111111) (= (mask!6688 (v!2868 (underlying!356 thiss!992))) #b00000000111111111111111111111111) (= (mask!6688 (v!2868 (underlying!356 thiss!992))) #b00000001111111111111111111111111) (= (mask!6688 (v!2868 (underlying!356 thiss!992))) #b00000011111111111111111111111111) (= (mask!6688 (v!2868 (underlying!356 thiss!992))) #b00000111111111111111111111111111) (= (mask!6688 (v!2868 (underlying!356 thiss!992))) #b00001111111111111111111111111111) (= (mask!6688 (v!2868 (underlying!356 thiss!992))) #b00011111111111111111111111111111) (= (mask!6688 (v!2868 (underlying!356 thiss!992))) #b00111111111111111111111111111111)) (bvsle (mask!6688 (v!2868 (underlying!356 thiss!992))) #b00111111111111111111111111111111)))))

(assert (=> b!102771 d!27755))

(declare-fun d!27757 () Bool)

(assert (=> d!27757 (= (+!142 (+!142 lt!52225 (tuple2!2393 (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) lt!52226)) (tuple2!2393 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2432 (v!2868 (underlying!356 thiss!992))))) (+!142 (+!142 lt!52225 (tuple2!2393 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2432 (v!2868 (underlying!356 thiss!992))))) (tuple2!2393 (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) lt!52226)))))

(declare-fun lt!52477 () Unit!3158)

(declare-fun choose!644 (ListLongMap!1573 (_ BitVec 64) V!3203 (_ BitVec 64) V!3203) Unit!3158)

(assert (=> d!27757 (= lt!52477 (choose!644 lt!52225 (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) lt!52226 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2432 (v!2868 (underlying!356 thiss!992)))))))

(assert (=> d!27757 (not (= (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!27757 (= (addCommutativeForDiffKeys!54 lt!52225 (select (arr!2050 (_keys!4257 (v!2868 (underlying!356 thiss!992)))) from!355) lt!52226 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2432 (v!2868 (underlying!356 thiss!992)))) lt!52477)))

(declare-fun bs!4231 () Bool)

(assert (= bs!4231 d!27757))

(assert (=> bs!4231 m!113781))

(declare-fun m!114093 () Bool)

(assert (=> bs!4231 m!114093))

(declare-fun m!114095 () Bool)

(assert (=> bs!4231 m!114095))

(declare-fun m!114097 () Bool)

(assert (=> bs!4231 m!114097))

(assert (=> bs!4231 m!114097))

(declare-fun m!114099 () Bool)

(assert (=> bs!4231 m!114099))

(assert (=> bs!4231 m!114095))

(declare-fun m!114101 () Bool)

(assert (=> bs!4231 m!114101))

(assert (=> b!102771 d!27757))

(declare-fun d!27759 () Bool)

(declare-fun e!67176 () Bool)

(assert (=> d!27759 e!67176))

(declare-fun res!51517 () Bool)

(assert (=> d!27759 (=> (not res!51517) (not e!67176))))

(declare-fun lt!52481 () ListLongMap!1573)

(assert (=> d!27759 (= res!51517 (contains!821 lt!52481 (_1!1206 lt!52222)))))

(declare-fun lt!52480 () List!1633)

(assert (=> d!27759 (= lt!52481 (ListLongMap!1574 lt!52480))))

(declare-fun lt!52478 () Unit!3158)

(declare-fun lt!52479 () Unit!3158)

(assert (=> d!27759 (= lt!52478 lt!52479)))

(assert (=> d!27759 (= (getValueByKey!153 lt!52480 (_1!1206 lt!52222)) (Some!158 (_2!1206 lt!52222)))))

(assert (=> d!27759 (= lt!52479 (lemmaContainsTupThenGetReturnValue!71 lt!52480 (_1!1206 lt!52222) (_2!1206 lt!52222)))))

(assert (=> d!27759 (= lt!52480 (insertStrictlySorted!73 (toList!802 lt!52225) (_1!1206 lt!52222) (_2!1206 lt!52222)))))

(assert (=> d!27759 (= (+!142 lt!52225 lt!52222) lt!52481)))

(declare-fun b!103130 () Bool)

(declare-fun res!51516 () Bool)

(assert (=> b!103130 (=> (not res!51516) (not e!67176))))

(assert (=> b!103130 (= res!51516 (= (getValueByKey!153 (toList!802 lt!52481) (_1!1206 lt!52222)) (Some!158 (_2!1206 lt!52222))))))

(declare-fun b!103131 () Bool)

(assert (=> b!103131 (= e!67176 (contains!823 (toList!802 lt!52481) lt!52222))))

(assert (= (and d!27759 res!51517) b!103130))

(assert (= (and b!103130 res!51516) b!103131))

(declare-fun m!114103 () Bool)

(assert (=> d!27759 m!114103))

(declare-fun m!114105 () Bool)

(assert (=> d!27759 m!114105))

(declare-fun m!114107 () Bool)

(assert (=> d!27759 m!114107))

(declare-fun m!114109 () Bool)

(assert (=> d!27759 m!114109))

(declare-fun m!114111 () Bool)

(assert (=> b!103130 m!114111))

(declare-fun m!114113 () Bool)

(assert (=> b!103131 m!114113))

(assert (=> b!102771 d!27759))

(declare-fun mapIsEmpty!3891 () Bool)

(declare-fun mapRes!3891 () Bool)

(assert (=> mapIsEmpty!3891 mapRes!3891))

(declare-fun mapNonEmpty!3891 () Bool)

(declare-fun tp!9831 () Bool)

(declare-fun e!67181 () Bool)

(assert (=> mapNonEmpty!3891 (= mapRes!3891 (and tp!9831 e!67181))))

(declare-fun mapRest!3891 () (Array (_ BitVec 32) ValueCell!990))

(declare-fun mapKey!3891 () (_ BitVec 32))

(declare-fun mapValue!3891 () ValueCell!990)

(assert (=> mapNonEmpty!3891 (= mapRest!3881 (store mapRest!3891 mapKey!3891 mapValue!3891))))

(declare-fun b!103139 () Bool)

(declare-fun e!67182 () Bool)

(assert (=> b!103139 (= e!67182 tp_is_empty!2667)))

(declare-fun condMapEmpty!3891 () Bool)

(declare-fun mapDefault!3891 () ValueCell!990)

(assert (=> mapNonEmpty!3881 (= condMapEmpty!3891 (= mapRest!3881 ((as const (Array (_ BitVec 32) ValueCell!990)) mapDefault!3891)))))

(assert (=> mapNonEmpty!3881 (= tp!9814 (and e!67182 mapRes!3891))))

(declare-fun b!103138 () Bool)

(assert (=> b!103138 (= e!67181 tp_is_empty!2667)))

(assert (= (and mapNonEmpty!3881 condMapEmpty!3891) mapIsEmpty!3891))

(assert (= (and mapNonEmpty!3881 (not condMapEmpty!3891)) mapNonEmpty!3891))

(assert (= (and mapNonEmpty!3891 ((_ is ValueCellFull!990) mapValue!3891)) b!103138))

(assert (= (and mapNonEmpty!3881 ((_ is ValueCellFull!990) mapDefault!3891)) b!103139))

(declare-fun m!114115 () Bool)

(assert (=> mapNonEmpty!3891 m!114115))

(declare-fun mapIsEmpty!3892 () Bool)

(declare-fun mapRes!3892 () Bool)

(assert (=> mapIsEmpty!3892 mapRes!3892))

(declare-fun mapNonEmpty!3892 () Bool)

(declare-fun tp!9832 () Bool)

(declare-fun e!67183 () Bool)

(assert (=> mapNonEmpty!3892 (= mapRes!3892 (and tp!9832 e!67183))))

(declare-fun mapRest!3892 () (Array (_ BitVec 32) ValueCell!990))

(declare-fun mapKey!3892 () (_ BitVec 32))

(declare-fun mapValue!3892 () ValueCell!990)

(assert (=> mapNonEmpty!3892 (= mapRest!3882 (store mapRest!3892 mapKey!3892 mapValue!3892))))

(declare-fun b!103141 () Bool)

(declare-fun e!67184 () Bool)

(assert (=> b!103141 (= e!67184 tp_is_empty!2667)))

(declare-fun condMapEmpty!3892 () Bool)

(declare-fun mapDefault!3892 () ValueCell!990)

(assert (=> mapNonEmpty!3882 (= condMapEmpty!3892 (= mapRest!3882 ((as const (Array (_ BitVec 32) ValueCell!990)) mapDefault!3892)))))

(assert (=> mapNonEmpty!3882 (= tp!9815 (and e!67184 mapRes!3892))))

(declare-fun b!103140 () Bool)

(assert (=> b!103140 (= e!67183 tp_is_empty!2667)))

(assert (= (and mapNonEmpty!3882 condMapEmpty!3892) mapIsEmpty!3892))

(assert (= (and mapNonEmpty!3882 (not condMapEmpty!3892)) mapNonEmpty!3892))

(assert (= (and mapNonEmpty!3892 ((_ is ValueCellFull!990) mapValue!3892)) b!103140))

(assert (= (and mapNonEmpty!3882 ((_ is ValueCellFull!990) mapDefault!3892)) b!103141))

(declare-fun m!114117 () Bool)

(assert (=> mapNonEmpty!3892 m!114117))

(declare-fun b_lambda!4627 () Bool)

(assert (= b_lambda!4625 (or (and b!102776 b_free!2501) (and b!102769 b_free!2503 (= (defaultEntry!2555 newMap!16) (defaultEntry!2555 (v!2868 (underlying!356 thiss!992))))) b_lambda!4627)))

(declare-fun b_lambda!4629 () Bool)

(assert (= b_lambda!4623 (or (and b!102776 b_free!2501) (and b!102769 b_free!2503 (= (defaultEntry!2555 newMap!16) (defaultEntry!2555 (v!2868 (underlying!356 thiss!992))))) b_lambda!4629)))

(declare-fun b_lambda!4631 () Bool)

(assert (= b_lambda!4621 (or (and b!102776 b_free!2501) (and b!102769 b_free!2503 (= (defaultEntry!2555 newMap!16) (defaultEntry!2555 (v!2868 (underlying!356 thiss!992))))) b_lambda!4631)))

(check-sat (not b!103117) (not d!27749) (not bm!10755) (not b!103109) (not b!103127) b_and!6387 (not b!103038) (not bm!10759) (not b!103128) (not b!103119) (not b!103044) (not bm!10768) (not b!102848) (not bm!10697) (not b_lambda!4619) (not b!103124) (not d!27725) (not b_next!2501) (not b!103056) (not b_lambda!4629) b_and!6385 (not b_next!2503) (not bm!10695) (not bm!10757) (not b!103010) (not bm!10754) (not b!102902) (not bm!10765) (not bm!10762) (not b!102919) (not b!103110) (not b!103046) (not b!103125) (not b!103126) (not d!27735) (not bm!10760) (not bm!10751) (not b!102897) (not b!102908) (not b!103130) (not d!27751) (not b!103131) (not bm!10699) (not b!102849) (not d!27759) (not d!27731) (not b!103112) (not b_lambda!4631) (not bm!10779) (not b!103054) (not b!103080) (not b!102909) (not b!103129) (not b!103027) (not b!103043) (not d!27739) (not d!27733) (not b!103115) (not bm!10701) (not mapNonEmpty!3892) (not b!103067) (not d!27747) (not bm!10763) (not b!103055) (not bm!10761) tp_is_empty!2667 (not d!27753) (not b!102903) (not b!103079) (not b_lambda!4627) (not b!102899) (not bm!10771) (not d!27757) (not b!103114) (not b!103017) (not b!103062) (not bm!10776) (not b!103082) (not mapNonEmpty!3891) (not b!102907) (not d!27723) (not b!103047) (not b!102921) (not b!103116) (not d!27715) (not b!102900) (not d!27729) (not d!27727))
(check-sat b_and!6385 b_and!6387 (not b_next!2501) (not b_next!2503))
