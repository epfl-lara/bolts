; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!8326 () Bool)

(assert start!8326)

(declare-fun b!54628 () Bool)

(declare-fun b_free!1793 () Bool)

(declare-fun b_next!1793 () Bool)

(assert (=> b!54628 (= b_free!1793 (not b_next!1793))))

(declare-fun tp!7482 () Bool)

(declare-fun b_and!3137 () Bool)

(assert (=> b!54628 (= tp!7482 b_and!3137)))

(declare-fun b!54621 () Bool)

(declare-fun b_free!1795 () Bool)

(declare-fun b_next!1795 () Bool)

(assert (=> b!54621 (= b_free!1795 (not b_next!1795))))

(declare-fun tp!7480 () Bool)

(declare-fun b_and!3139 () Bool)

(assert (=> b!54621 (= tp!7480 b_and!3139)))

(declare-fun b!54613 () Bool)

(declare-fun e!35691 () Bool)

(declare-fun e!35694 () Bool)

(assert (=> b!54613 (= e!35691 e!35694)))

(declare-fun res!30877 () Bool)

(assert (=> b!54613 (=> (not res!30877) (not e!35694))))

(declare-datatypes ((V!2731 0))(
  ( (V!2732 (val!1201 Int)) )
))
(declare-datatypes ((array!3548 0))(
  ( (array!3549 (arr!1696 (Array (_ BitVec 32) (_ BitVec 64))) (size!1925 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!813 0))(
  ( (ValueCellFull!813 (v!2284 V!2731)) (EmptyCell!813) )
))
(declare-datatypes ((array!3550 0))(
  ( (array!3551 (arr!1697 (Array (_ BitVec 32) ValueCell!813)) (size!1926 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!534 0))(
  ( (LongMapFixedSize!535 (defaultEntry!1981 Int) (mask!5828 (_ BitVec 32)) (extraKeys!1872 (_ BitVec 32)) (zeroValue!1899 V!2731) (minValue!1899 V!2731) (_size!316 (_ BitVec 32)) (_keys!3601 array!3548) (_values!1964 array!3550) (_vacant!316 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!344 0))(
  ( (Cell!345 (v!2285 LongMapFixedSize!534)) )
))
(declare-datatypes ((LongMap!344 0))(
  ( (LongMap!345 (underlying!183 Cell!344)) )
))
(declare-fun thiss!992 () LongMap!344)

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((tuple2!1940 0))(
  ( (tuple2!1941 (_1!980 (_ BitVec 64)) (_2!980 V!2731)) )
))
(declare-datatypes ((List!1397 0))(
  ( (Nil!1394) (Cons!1393 (h!1973 tuple2!1940) (t!4567 List!1397)) )
))
(declare-datatypes ((ListLongMap!1321 0))(
  ( (ListLongMap!1322 (toList!676 List!1397)) )
))
(declare-fun lt!21694 () ListLongMap!1321)

(declare-fun contains!647 (ListLongMap!1321 (_ BitVec 64)) Bool)

(assert (=> b!54613 (= res!30877 (contains!647 lt!21694 (select (arr!1696 (_keys!3601 (v!2285 (underlying!183 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!1942 0))(
  ( (tuple2!1943 (_1!981 Bool) (_2!981 LongMapFixedSize!534)) )
))
(declare-fun lt!21693 () tuple2!1942)

(declare-fun newMap!16 () LongMapFixedSize!534)

(declare-fun update!59 (LongMapFixedSize!534 (_ BitVec 64) V!2731) tuple2!1942)

(declare-fun get!1022 (ValueCell!813 V!2731) V!2731)

(declare-fun dynLambda!287 (Int (_ BitVec 64)) V!2731)

(assert (=> b!54613 (= lt!21693 (update!59 newMap!16 (select (arr!1696 (_keys!3601 (v!2285 (underlying!183 thiss!992)))) from!355) (get!1022 (select (arr!1697 (_values!1964 (v!2285 (underlying!183 thiss!992)))) from!355) (dynLambda!287 (defaultEntry!1981 (v!2285 (underlying!183 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!2609 () Bool)

(declare-fun mapRes!2610 () Bool)

(declare-fun tp!7481 () Bool)

(declare-fun e!35697 () Bool)

(assert (=> mapNonEmpty!2609 (= mapRes!2610 (and tp!7481 e!35697))))

(declare-fun mapKey!2609 () (_ BitVec 32))

(declare-fun mapValue!2610 () ValueCell!813)

(declare-fun mapRest!2610 () (Array (_ BitVec 32) ValueCell!813))

(assert (=> mapNonEmpty!2609 (= (arr!1697 (_values!1964 newMap!16)) (store mapRest!2610 mapKey!2609 mapValue!2610))))

(declare-fun b!54614 () Bool)

(declare-fun res!30876 () Bool)

(declare-fun e!35690 () Bool)

(assert (=> b!54614 (=> (not res!30876) (not e!35690))))

(assert (=> b!54614 (= res!30876 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5828 newMap!16)) (_size!316 (v!2285 (underlying!183 thiss!992)))))))

(declare-fun b!54615 () Bool)

(declare-fun e!35692 () Bool)

(assert (=> b!54615 (= e!35694 (not e!35692))))

(declare-fun res!30882 () Bool)

(assert (=> b!54615 (=> res!30882 e!35692)))

(assert (=> b!54615 (= res!30882 (or (bvsge (size!1925 (_keys!3601 (v!2285 (underlying!183 thiss!992)))) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (size!1925 (_keys!3601 (v!2285 (underlying!183 thiss!992))))) (bvsgt from!355 (size!1925 (_keys!3601 (v!2285 (underlying!183 thiss!992)))))))))

(declare-fun arrayContainsKey!0 (array!3548 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!54615 (arrayContainsKey!0 (_keys!3601 (v!2285 (underlying!183 thiss!992))) (select (arr!1696 (_keys!3601 (v!2285 (underlying!183 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-datatypes ((Unit!1432 0))(
  ( (Unit!1433) )
))
(declare-fun lt!21696 () Unit!1432)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!5 (array!3548 array!3550 (_ BitVec 32) (_ BitVec 32) V!2731 V!2731 (_ BitVec 64) (_ BitVec 32) Int) Unit!1432)

(assert (=> b!54615 (= lt!21696 (lemmaListMapContainsThenArrayContainsFrom!5 (_keys!3601 (v!2285 (underlying!183 thiss!992))) (_values!1964 (v!2285 (underlying!183 thiss!992))) (mask!5828 (v!2285 (underlying!183 thiss!992))) (extraKeys!1872 (v!2285 (underlying!183 thiss!992))) (zeroValue!1899 (v!2285 (underlying!183 thiss!992))) (minValue!1899 (v!2285 (underlying!183 thiss!992))) (select (arr!1696 (_keys!3601 (v!2285 (underlying!183 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1981 (v!2285 (underlying!183 thiss!992)))))))

(declare-fun mapIsEmpty!2609 () Bool)

(assert (=> mapIsEmpty!2609 mapRes!2610))

(declare-fun res!30879 () Bool)

(assert (=> start!8326 (=> (not res!30879) (not e!35690))))

(declare-fun valid!207 (LongMap!344) Bool)

(assert (=> start!8326 (= res!30879 (valid!207 thiss!992))))

(assert (=> start!8326 e!35690))

(declare-fun e!35693 () Bool)

(assert (=> start!8326 e!35693))

(assert (=> start!8326 true))

(declare-fun e!35699 () Bool)

(assert (=> start!8326 e!35699))

(declare-fun b!54616 () Bool)

(declare-fun e!35702 () Bool)

(declare-fun tp_is_empty!2313 () Bool)

(assert (=> b!54616 (= e!35702 tp_is_empty!2313)))

(declare-fun b!54617 () Bool)

(declare-fun res!30880 () Bool)

(assert (=> b!54617 (=> (not res!30880) (not e!35690))))

(declare-fun valid!208 (LongMapFixedSize!534) Bool)

(assert (=> b!54617 (= res!30880 (valid!208 newMap!16))))

(declare-fun b!54618 () Bool)

(declare-fun e!35704 () Bool)

(assert (=> b!54618 (= e!35704 (and e!35702 mapRes!2610))))

(declare-fun condMapEmpty!2609 () Bool)

(declare-fun mapDefault!2610 () ValueCell!813)

(assert (=> b!54618 (= condMapEmpty!2609 (= (arr!1697 (_values!1964 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!813)) mapDefault!2610)))))

(declare-fun b!54619 () Bool)

(assert (=> b!54619 (= e!35692 true)))

(declare-fun lt!21695 () Bool)

(declare-datatypes ((List!1398 0))(
  ( (Nil!1395) (Cons!1394 (h!1974 (_ BitVec 64)) (t!4568 List!1398)) )
))
(declare-fun arrayNoDuplicates!0 (array!3548 (_ BitVec 32) List!1398) Bool)

(assert (=> b!54619 (= lt!21695 (arrayNoDuplicates!0 (_keys!3601 (v!2285 (underlying!183 thiss!992))) #b00000000000000000000000000000000 Nil!1395))))

(declare-fun b!54620 () Bool)

(declare-fun res!30881 () Bool)

(assert (=> b!54620 (=> (not res!30881) (not e!35690))))

(assert (=> b!54620 (= res!30881 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1925 (_keys!3601 (v!2285 (underlying!183 thiss!992)))))))))

(declare-fun array_inv!997 (array!3548) Bool)

(declare-fun array_inv!998 (array!3550) Bool)

(assert (=> b!54621 (= e!35699 (and tp!7480 tp_is_empty!2313 (array_inv!997 (_keys!3601 newMap!16)) (array_inv!998 (_values!1964 newMap!16)) e!35704))))

(declare-fun b!54622 () Bool)

(declare-fun e!35701 () Bool)

(assert (=> b!54622 (= e!35701 tp_is_empty!2313)))

(declare-fun mapIsEmpty!2610 () Bool)

(declare-fun mapRes!2609 () Bool)

(assert (=> mapIsEmpty!2610 mapRes!2609))

(declare-fun mapNonEmpty!2610 () Bool)

(declare-fun tp!7479 () Bool)

(assert (=> mapNonEmpty!2610 (= mapRes!2609 (and tp!7479 e!35701))))

(declare-fun mapValue!2609 () ValueCell!813)

(declare-fun mapRest!2609 () (Array (_ BitVec 32) ValueCell!813))

(declare-fun mapKey!2610 () (_ BitVec 32))

(assert (=> mapNonEmpty!2610 (= (arr!1697 (_values!1964 (v!2285 (underlying!183 thiss!992)))) (store mapRest!2609 mapKey!2610 mapValue!2609))))

(declare-fun b!54623 () Bool)

(declare-fun e!35703 () Bool)

(declare-fun e!35700 () Bool)

(assert (=> b!54623 (= e!35703 e!35700)))

(declare-fun b!54624 () Bool)

(assert (=> b!54624 (= e!35693 e!35703)))

(declare-fun b!54625 () Bool)

(declare-fun e!35698 () Bool)

(assert (=> b!54625 (= e!35698 tp_is_empty!2313)))

(declare-fun b!54626 () Bool)

(assert (=> b!54626 (= e!35690 e!35691)))

(declare-fun res!30878 () Bool)

(assert (=> b!54626 (=> (not res!30878) (not e!35691))))

(declare-fun lt!21697 () ListLongMap!1321)

(assert (=> b!54626 (= res!30878 (and (= lt!21697 lt!21694) (not (= (select (arr!1696 (_keys!3601 (v!2285 (underlying!183 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1696 (_keys!3601 (v!2285 (underlying!183 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1058 (LongMapFixedSize!534) ListLongMap!1321)

(assert (=> b!54626 (= lt!21694 (map!1058 newMap!16))))

(declare-fun getCurrentListMap!380 (array!3548 array!3550 (_ BitVec 32) (_ BitVec 32) V!2731 V!2731 (_ BitVec 32) Int) ListLongMap!1321)

(assert (=> b!54626 (= lt!21697 (getCurrentListMap!380 (_keys!3601 (v!2285 (underlying!183 thiss!992))) (_values!1964 (v!2285 (underlying!183 thiss!992))) (mask!5828 (v!2285 (underlying!183 thiss!992))) (extraKeys!1872 (v!2285 (underlying!183 thiss!992))) (zeroValue!1899 (v!2285 (underlying!183 thiss!992))) (minValue!1899 (v!2285 (underlying!183 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1981 (v!2285 (underlying!183 thiss!992)))))))

(declare-fun b!54627 () Bool)

(assert (=> b!54627 (= e!35697 tp_is_empty!2313)))

(declare-fun e!35695 () Bool)

(assert (=> b!54628 (= e!35700 (and tp!7482 tp_is_empty!2313 (array_inv!997 (_keys!3601 (v!2285 (underlying!183 thiss!992)))) (array_inv!998 (_values!1964 (v!2285 (underlying!183 thiss!992)))) e!35695))))

(declare-fun b!54629 () Bool)

(assert (=> b!54629 (= e!35695 (and e!35698 mapRes!2609))))

(declare-fun condMapEmpty!2610 () Bool)

(declare-fun mapDefault!2609 () ValueCell!813)

(assert (=> b!54629 (= condMapEmpty!2610 (= (arr!1697 (_values!1964 (v!2285 (underlying!183 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!813)) mapDefault!2609)))))

(assert (= (and start!8326 res!30879) b!54620))

(assert (= (and b!54620 res!30881) b!54617))

(assert (= (and b!54617 res!30880) b!54614))

(assert (= (and b!54614 res!30876) b!54626))

(assert (= (and b!54626 res!30878) b!54613))

(assert (= (and b!54613 res!30877) b!54615))

(assert (= (and b!54615 (not res!30882)) b!54619))

(assert (= (and b!54629 condMapEmpty!2610) mapIsEmpty!2610))

(assert (= (and b!54629 (not condMapEmpty!2610)) mapNonEmpty!2610))

(get-info :version)

(assert (= (and mapNonEmpty!2610 ((_ is ValueCellFull!813) mapValue!2609)) b!54622))

(assert (= (and b!54629 ((_ is ValueCellFull!813) mapDefault!2609)) b!54625))

(assert (= b!54628 b!54629))

(assert (= b!54623 b!54628))

(assert (= b!54624 b!54623))

(assert (= start!8326 b!54624))

(assert (= (and b!54618 condMapEmpty!2609) mapIsEmpty!2609))

(assert (= (and b!54618 (not condMapEmpty!2609)) mapNonEmpty!2609))

(assert (= (and mapNonEmpty!2609 ((_ is ValueCellFull!813) mapValue!2610)) b!54627))

(assert (= (and b!54618 ((_ is ValueCellFull!813) mapDefault!2610)) b!54616))

(assert (= b!54621 b!54618))

(assert (= start!8326 b!54621))

(declare-fun b_lambda!2427 () Bool)

(assert (=> (not b_lambda!2427) (not b!54613)))

(declare-fun t!4564 () Bool)

(declare-fun tb!1145 () Bool)

(assert (=> (and b!54628 (= (defaultEntry!1981 (v!2285 (underlying!183 thiss!992))) (defaultEntry!1981 (v!2285 (underlying!183 thiss!992)))) t!4564) tb!1145))

(declare-fun result!2111 () Bool)

(assert (=> tb!1145 (= result!2111 tp_is_empty!2313)))

(assert (=> b!54613 t!4564))

(declare-fun b_and!3141 () Bool)

(assert (= b_and!3137 (and (=> t!4564 result!2111) b_and!3141)))

(declare-fun t!4566 () Bool)

(declare-fun tb!1147 () Bool)

(assert (=> (and b!54621 (= (defaultEntry!1981 newMap!16) (defaultEntry!1981 (v!2285 (underlying!183 thiss!992)))) t!4566) tb!1147))

(declare-fun result!2115 () Bool)

(assert (= result!2115 result!2111))

(assert (=> b!54613 t!4566))

(declare-fun b_and!3143 () Bool)

(assert (= b_and!3139 (and (=> t!4566 result!2115) b_and!3143)))

(declare-fun m!46189 () Bool)

(assert (=> mapNonEmpty!2609 m!46189))

(declare-fun m!46191 () Bool)

(assert (=> b!54621 m!46191))

(declare-fun m!46193 () Bool)

(assert (=> b!54621 m!46193))

(declare-fun m!46195 () Bool)

(assert (=> mapNonEmpty!2610 m!46195))

(declare-fun m!46197 () Bool)

(assert (=> b!54613 m!46197))

(declare-fun m!46199 () Bool)

(assert (=> b!54613 m!46199))

(declare-fun m!46201 () Bool)

(assert (=> b!54613 m!46201))

(declare-fun m!46203 () Bool)

(assert (=> b!54613 m!46203))

(assert (=> b!54613 m!46203))

(declare-fun m!46205 () Bool)

(assert (=> b!54613 m!46205))

(assert (=> b!54613 m!46199))

(assert (=> b!54613 m!46203))

(assert (=> b!54613 m!46201))

(declare-fun m!46207 () Bool)

(assert (=> b!54613 m!46207))

(assert (=> b!54613 m!46197))

(declare-fun m!46209 () Bool)

(assert (=> b!54617 m!46209))

(declare-fun m!46211 () Bool)

(assert (=> b!54619 m!46211))

(assert (=> b!54626 m!46203))

(declare-fun m!46213 () Bool)

(assert (=> b!54626 m!46213))

(declare-fun m!46215 () Bool)

(assert (=> b!54626 m!46215))

(declare-fun m!46217 () Bool)

(assert (=> start!8326 m!46217))

(declare-fun m!46219 () Bool)

(assert (=> b!54628 m!46219))

(declare-fun m!46221 () Bool)

(assert (=> b!54628 m!46221))

(assert (=> b!54615 m!46203))

(assert (=> b!54615 m!46203))

(declare-fun m!46223 () Bool)

(assert (=> b!54615 m!46223))

(assert (=> b!54615 m!46203))

(declare-fun m!46225 () Bool)

(assert (=> b!54615 m!46225))

(check-sat (not mapNonEmpty!2609) (not b_next!1793) (not b!54619) (not b_next!1795) b_and!3143 (not b!54613) (not b!54626) b_and!3141 (not b!54615) (not start!8326) (not mapNonEmpty!2610) (not b!54621) tp_is_empty!2313 (not b!54628) (not b_lambda!2427) (not b!54617))
(check-sat b_and!3141 b_and!3143 (not b_next!1793) (not b_next!1795))
