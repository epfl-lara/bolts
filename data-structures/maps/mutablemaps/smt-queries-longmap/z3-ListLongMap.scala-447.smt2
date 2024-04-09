; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!8308 () Bool)

(assert start!8308)

(declare-fun b!54066 () Bool)

(declare-fun b_free!1757 () Bool)

(declare-fun b_next!1757 () Bool)

(assert (=> b!54066 (= b_free!1757 (not b_next!1757))))

(declare-fun tp!7372 () Bool)

(declare-fun b_and!3065 () Bool)

(assert (=> b!54066 (= tp!7372 b_and!3065)))

(declare-fun b!54061 () Bool)

(declare-fun b_free!1759 () Bool)

(declare-fun b_next!1759 () Bool)

(assert (=> b!54061 (= b_free!1759 (not b_next!1759))))

(declare-fun tp!7374 () Bool)

(declare-fun b_and!3067 () Bool)

(assert (=> b!54061 (= tp!7374 b_and!3067)))

(declare-fun b!54048 () Bool)

(declare-fun res!30602 () Bool)

(declare-fun e!35286 () Bool)

(assert (=> b!54048 (=> (not res!30602) (not e!35286))))

(declare-datatypes ((V!2707 0))(
  ( (V!2708 (val!1192 Int)) )
))
(declare-datatypes ((array!3512 0))(
  ( (array!3513 (arr!1678 (Array (_ BitVec 32) (_ BitVec 64))) (size!1907 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!804 0))(
  ( (ValueCellFull!804 (v!2267 V!2707)) (EmptyCell!804) )
))
(declare-datatypes ((array!3514 0))(
  ( (array!3515 (arr!1679 (Array (_ BitVec 32) ValueCell!804)) (size!1908 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!516 0))(
  ( (LongMapFixedSize!517 (defaultEntry!1972 Int) (mask!5813 (_ BitVec 32)) (extraKeys!1863 (_ BitVec 32)) (zeroValue!1890 V!2707) (minValue!1890 V!2707) (_size!307 (_ BitVec 32)) (_keys!3592 array!3512) (_values!1955 array!3514) (_vacant!307 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!328 0))(
  ( (Cell!329 (v!2268 LongMapFixedSize!516)) )
))
(declare-datatypes ((LongMap!328 0))(
  ( (LongMap!329 (underlying!175 Cell!328)) )
))
(declare-fun thiss!992 () LongMap!328)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3512 (_ BitVec 32)) Bool)

(assert (=> b!54048 (= res!30602 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3592 (v!2268 (underlying!175 thiss!992))) (mask!5813 (v!2268 (underlying!175 thiss!992)))))))

(declare-fun b!54049 () Bool)

(declare-fun res!30609 () Bool)

(declare-fun e!35289 () Bool)

(assert (=> b!54049 (=> (not res!30609) (not e!35289))))

(declare-fun newMap!16 () LongMapFixedSize!516)

(assert (=> b!54049 (= res!30609 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5813 newMap!16)) (_size!307 (v!2268 (underlying!175 thiss!992)))))))

(declare-fun b!54050 () Bool)

(declare-fun e!35280 () Bool)

(declare-fun e!35290 () Bool)

(declare-fun mapRes!2555 () Bool)

(assert (=> b!54050 (= e!35280 (and e!35290 mapRes!2555))))

(declare-fun condMapEmpty!2555 () Bool)

(declare-fun mapDefault!2556 () ValueCell!804)

(assert (=> b!54050 (= condMapEmpty!2555 (= (arr!1679 (_values!1955 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!804)) mapDefault!2556)))))

(declare-fun b!54051 () Bool)

(declare-fun e!35287 () Bool)

(declare-fun e!35288 () Bool)

(assert (=> b!54051 (= e!35287 e!35288)))

(declare-fun b!54052 () Bool)

(assert (=> b!54052 (= e!35286 false)))

(declare-fun lt!21581 () Bool)

(declare-datatypes ((tuple2!1914 0))(
  ( (tuple2!1915 (_1!967 (_ BitVec 64)) (_2!967 V!2707)) )
))
(declare-datatypes ((List!1387 0))(
  ( (Nil!1384) (Cons!1383 (h!1963 tuple2!1914) (t!4521 List!1387)) )
))
(declare-datatypes ((ListLongMap!1307 0))(
  ( (ListLongMap!1308 (toList!669 List!1387)) )
))
(declare-fun lt!21583 () ListLongMap!1307)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun contains!640 (ListLongMap!1307 (_ BitVec 64)) Bool)

(assert (=> b!54052 (= lt!21581 (contains!640 lt!21583 (select (arr!1678 (_keys!3592 (v!2268 (underlying!175 thiss!992)))) from!355)))))

(declare-fun b!54053 () Bool)

(declare-fun e!35284 () Bool)

(assert (=> b!54053 (= e!35284 e!35286)))

(declare-fun res!30603 () Bool)

(assert (=> b!54053 (=> (not res!30603) (not e!35286))))

(declare-fun lt!21582 () ListLongMap!1307)

(assert (=> b!54053 (= res!30603 (contains!640 lt!21582 (select (arr!1678 (_keys!3592 (v!2268 (underlying!175 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!1916 0))(
  ( (tuple2!1917 (_1!968 Bool) (_2!968 LongMapFixedSize!516)) )
))
(declare-fun lt!21580 () tuple2!1916)

(declare-fun update!53 (LongMapFixedSize!516 (_ BitVec 64) V!2707) tuple2!1916)

(declare-fun get!1010 (ValueCell!804 V!2707) V!2707)

(declare-fun dynLambda!281 (Int (_ BitVec 64)) V!2707)

(assert (=> b!54053 (= lt!21580 (update!53 newMap!16 (select (arr!1678 (_keys!3592 (v!2268 (underlying!175 thiss!992)))) from!355) (get!1010 (select (arr!1679 (_values!1955 (v!2268 (underlying!175 thiss!992)))) from!355) (dynLambda!281 (defaultEntry!1972 (v!2268 (underlying!175 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!54054 () Bool)

(declare-fun res!30607 () Bool)

(assert (=> b!54054 (=> (not res!30607) (not e!35286))))

(declare-datatypes ((List!1388 0))(
  ( (Nil!1385) (Cons!1384 (h!1964 (_ BitVec 64)) (t!4522 List!1388)) )
))
(declare-fun arrayNoDuplicates!0 (array!3512 (_ BitVec 32) List!1388) Bool)

(assert (=> b!54054 (= res!30607 (arrayNoDuplicates!0 (_keys!3592 (v!2268 (underlying!175 thiss!992))) #b00000000000000000000000000000000 Nil!1385))))

(declare-fun b!54055 () Bool)

(declare-fun res!30604 () Bool)

(assert (=> b!54055 (=> (not res!30604) (not e!35286))))

(assert (=> b!54055 (= res!30604 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!1907 (_keys!3592 (v!2268 (underlying!175 thiss!992)))))))))

(declare-fun res!30601 () Bool)

(assert (=> start!8308 (=> (not res!30601) (not e!35289))))

(declare-fun valid!196 (LongMap!328) Bool)

(assert (=> start!8308 (= res!30601 (valid!196 thiss!992))))

(assert (=> start!8308 e!35289))

(assert (=> start!8308 e!35287))

(assert (=> start!8308 true))

(declare-fun e!35291 () Bool)

(assert (=> start!8308 e!35291))

(declare-fun b!54056 () Bool)

(declare-fun res!30605 () Bool)

(assert (=> b!54056 (=> (not res!30605) (not e!35286))))

(assert (=> b!54056 (= res!30605 (and (= (size!1908 (_values!1955 (v!2268 (underlying!175 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!5813 (v!2268 (underlying!175 thiss!992))))) (= (size!1907 (_keys!3592 (v!2268 (underlying!175 thiss!992)))) (size!1908 (_values!1955 (v!2268 (underlying!175 thiss!992))))) (bvsge (mask!5813 (v!2268 (underlying!175 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!1863 (v!2268 (underlying!175 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!1863 (v!2268 (underlying!175 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun b!54057 () Bool)

(declare-fun e!35283 () Bool)

(declare-fun tp_is_empty!2295 () Bool)

(assert (=> b!54057 (= e!35283 tp_is_empty!2295)))

(declare-fun mapIsEmpty!2555 () Bool)

(declare-fun mapRes!2556 () Bool)

(assert (=> mapIsEmpty!2555 mapRes!2556))

(declare-fun b!54058 () Bool)

(declare-fun e!35285 () Bool)

(assert (=> b!54058 (= e!35285 (and e!35283 mapRes!2556))))

(declare-fun condMapEmpty!2556 () Bool)

(declare-fun mapDefault!2555 () ValueCell!804)

(assert (=> b!54058 (= condMapEmpty!2556 (= (arr!1679 (_values!1955 (v!2268 (underlying!175 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!804)) mapDefault!2555)))))

(declare-fun b!54059 () Bool)

(declare-fun res!30599 () Bool)

(assert (=> b!54059 (=> (not res!30599) (not e!35289))))

(declare-fun valid!197 (LongMapFixedSize!516) Bool)

(assert (=> b!54059 (= res!30599 (valid!197 newMap!16))))

(declare-fun b!54060 () Bool)

(declare-fun e!35294 () Bool)

(assert (=> b!54060 (= e!35294 tp_is_empty!2295)))

(declare-fun array_inv!987 (array!3512) Bool)

(declare-fun array_inv!988 (array!3514) Bool)

(assert (=> b!54061 (= e!35291 (and tp!7374 tp_is_empty!2295 (array_inv!987 (_keys!3592 newMap!16)) (array_inv!988 (_values!1955 newMap!16)) e!35280))))

(declare-fun mapNonEmpty!2555 () Bool)

(declare-fun tp!7373 () Bool)

(declare-fun e!35282 () Bool)

(assert (=> mapNonEmpty!2555 (= mapRes!2556 (and tp!7373 e!35282))))

(declare-fun mapValue!2555 () ValueCell!804)

(declare-fun mapRest!2556 () (Array (_ BitVec 32) ValueCell!804))

(declare-fun mapKey!2555 () (_ BitVec 32))

(assert (=> mapNonEmpty!2555 (= (arr!1679 (_values!1955 (v!2268 (underlying!175 thiss!992)))) (store mapRest!2556 mapKey!2555 mapValue!2555))))

(declare-fun b!54062 () Bool)

(assert (=> b!54062 (= e!35289 e!35284)))

(declare-fun res!30600 () Bool)

(assert (=> b!54062 (=> (not res!30600) (not e!35284))))

(assert (=> b!54062 (= res!30600 (and (= lt!21583 lt!21582) (not (= (select (arr!1678 (_keys!3592 (v!2268 (underlying!175 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1678 (_keys!3592 (v!2268 (underlying!175 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1048 (LongMapFixedSize!516) ListLongMap!1307)

(assert (=> b!54062 (= lt!21582 (map!1048 newMap!16))))

(declare-fun getCurrentListMap!376 (array!3512 array!3514 (_ BitVec 32) (_ BitVec 32) V!2707 V!2707 (_ BitVec 32) Int) ListLongMap!1307)

(assert (=> b!54062 (= lt!21583 (getCurrentListMap!376 (_keys!3592 (v!2268 (underlying!175 thiss!992))) (_values!1955 (v!2268 (underlying!175 thiss!992))) (mask!5813 (v!2268 (underlying!175 thiss!992))) (extraKeys!1863 (v!2268 (underlying!175 thiss!992))) (zeroValue!1890 (v!2268 (underlying!175 thiss!992))) (minValue!1890 (v!2268 (underlying!175 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1972 (v!2268 (underlying!175 thiss!992)))))))

(declare-fun b!54063 () Bool)

(assert (=> b!54063 (= e!35282 tp_is_empty!2295)))

(declare-fun b!54064 () Bool)

(declare-fun e!35281 () Bool)

(assert (=> b!54064 (= e!35288 e!35281)))

(declare-fun mapNonEmpty!2556 () Bool)

(declare-fun tp!7371 () Bool)

(assert (=> mapNonEmpty!2556 (= mapRes!2555 (and tp!7371 e!35294))))

(declare-fun mapKey!2556 () (_ BitVec 32))

(declare-fun mapRest!2555 () (Array (_ BitVec 32) ValueCell!804))

(declare-fun mapValue!2556 () ValueCell!804)

(assert (=> mapNonEmpty!2556 (= (arr!1679 (_values!1955 newMap!16)) (store mapRest!2555 mapKey!2556 mapValue!2556))))

(declare-fun b!54065 () Bool)

(declare-fun res!30608 () Bool)

(assert (=> b!54065 (=> (not res!30608) (not e!35289))))

(assert (=> b!54065 (= res!30608 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1907 (_keys!3592 (v!2268 (underlying!175 thiss!992)))))))))

(assert (=> b!54066 (= e!35281 (and tp!7372 tp_is_empty!2295 (array_inv!987 (_keys!3592 (v!2268 (underlying!175 thiss!992)))) (array_inv!988 (_values!1955 (v!2268 (underlying!175 thiss!992)))) e!35285))))

(declare-fun b!54067 () Bool)

(declare-fun res!30606 () Bool)

(assert (=> b!54067 (=> (not res!30606) (not e!35286))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!54067 (= res!30606 (validMask!0 (mask!5813 (v!2268 (underlying!175 thiss!992)))))))

(declare-fun mapIsEmpty!2556 () Bool)

(assert (=> mapIsEmpty!2556 mapRes!2555))

(declare-fun b!54068 () Bool)

(assert (=> b!54068 (= e!35290 tp_is_empty!2295)))

(assert (= (and start!8308 res!30601) b!54065))

(assert (= (and b!54065 res!30608) b!54059))

(assert (= (and b!54059 res!30599) b!54049))

(assert (= (and b!54049 res!30609) b!54062))

(assert (= (and b!54062 res!30600) b!54053))

(assert (= (and b!54053 res!30603) b!54067))

(assert (= (and b!54067 res!30606) b!54056))

(assert (= (and b!54056 res!30605) b!54048))

(assert (= (and b!54048 res!30602) b!54054))

(assert (= (and b!54054 res!30607) b!54055))

(assert (= (and b!54055 res!30604) b!54052))

(assert (= (and b!54058 condMapEmpty!2556) mapIsEmpty!2555))

(assert (= (and b!54058 (not condMapEmpty!2556)) mapNonEmpty!2555))

(get-info :version)

(assert (= (and mapNonEmpty!2555 ((_ is ValueCellFull!804) mapValue!2555)) b!54063))

(assert (= (and b!54058 ((_ is ValueCellFull!804) mapDefault!2555)) b!54057))

(assert (= b!54066 b!54058))

(assert (= b!54064 b!54066))

(assert (= b!54051 b!54064))

(assert (= start!8308 b!54051))

(assert (= (and b!54050 condMapEmpty!2555) mapIsEmpty!2556))

(assert (= (and b!54050 (not condMapEmpty!2555)) mapNonEmpty!2556))

(assert (= (and mapNonEmpty!2556 ((_ is ValueCellFull!804) mapValue!2556)) b!54060))

(assert (= (and b!54050 ((_ is ValueCellFull!804) mapDefault!2556)) b!54068))

(assert (= b!54061 b!54050))

(assert (= start!8308 b!54061))

(declare-fun b_lambda!2409 () Bool)

(assert (=> (not b_lambda!2409) (not b!54053)))

(declare-fun t!4518 () Bool)

(declare-fun tb!1109 () Bool)

(assert (=> (and b!54066 (= (defaultEntry!1972 (v!2268 (underlying!175 thiss!992))) (defaultEntry!1972 (v!2268 (underlying!175 thiss!992)))) t!4518) tb!1109))

(declare-fun result!2057 () Bool)

(assert (=> tb!1109 (= result!2057 tp_is_empty!2295)))

(assert (=> b!54053 t!4518))

(declare-fun b_and!3069 () Bool)

(assert (= b_and!3065 (and (=> t!4518 result!2057) b_and!3069)))

(declare-fun tb!1111 () Bool)

(declare-fun t!4520 () Bool)

(assert (=> (and b!54061 (= (defaultEntry!1972 newMap!16) (defaultEntry!1972 (v!2268 (underlying!175 thiss!992)))) t!4520) tb!1111))

(declare-fun result!2061 () Bool)

(assert (= result!2061 result!2057))

(assert (=> b!54053 t!4520))

(declare-fun b_and!3071 () Bool)

(assert (= b_and!3067 (and (=> t!4520 result!2061) b_and!3071)))

(declare-fun m!45831 () Bool)

(assert (=> b!54053 m!45831))

(declare-fun m!45833 () Bool)

(assert (=> b!54053 m!45833))

(declare-fun m!45835 () Bool)

(assert (=> b!54053 m!45835))

(assert (=> b!54053 m!45833))

(declare-fun m!45837 () Bool)

(assert (=> b!54053 m!45837))

(assert (=> b!54053 m!45835))

(declare-fun m!45839 () Bool)

(assert (=> b!54053 m!45839))

(assert (=> b!54053 m!45831))

(assert (=> b!54053 m!45837))

(assert (=> b!54053 m!45837))

(declare-fun m!45841 () Bool)

(assert (=> b!54053 m!45841))

(assert (=> b!54062 m!45837))

(declare-fun m!45843 () Bool)

(assert (=> b!54062 m!45843))

(declare-fun m!45845 () Bool)

(assert (=> b!54062 m!45845))

(declare-fun m!45847 () Bool)

(assert (=> b!54059 m!45847))

(declare-fun m!45849 () Bool)

(assert (=> mapNonEmpty!2555 m!45849))

(assert (=> b!54052 m!45837))

(assert (=> b!54052 m!45837))

(declare-fun m!45851 () Bool)

(assert (=> b!54052 m!45851))

(declare-fun m!45853 () Bool)

(assert (=> start!8308 m!45853))

(declare-fun m!45855 () Bool)

(assert (=> b!54067 m!45855))

(declare-fun m!45857 () Bool)

(assert (=> b!54054 m!45857))

(declare-fun m!45859 () Bool)

(assert (=> b!54066 m!45859))

(declare-fun m!45861 () Bool)

(assert (=> b!54066 m!45861))

(declare-fun m!45863 () Bool)

(assert (=> b!54061 m!45863))

(declare-fun m!45865 () Bool)

(assert (=> b!54061 m!45865))

(declare-fun m!45867 () Bool)

(assert (=> b!54048 m!45867))

(declare-fun m!45869 () Bool)

(assert (=> mapNonEmpty!2556 m!45869))

(check-sat (not start!8308) (not b!54054) (not mapNonEmpty!2556) (not mapNonEmpty!2555) tp_is_empty!2295 b_and!3071 (not b_next!1759) b_and!3069 (not b!54062) (not b_next!1757) (not b!54066) (not b!54048) (not b!54052) (not b!54061) (not b!54053) (not b!54067) (not b!54059) (not b_lambda!2409))
(check-sat b_and!3069 b_and!3071 (not b_next!1757) (not b_next!1759))
