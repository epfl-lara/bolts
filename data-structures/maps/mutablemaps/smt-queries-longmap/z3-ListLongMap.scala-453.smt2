; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!8344 () Bool)

(assert start!8344)

(declare-fun b!55101 () Bool)

(declare-fun b_free!1829 () Bool)

(declare-fun b_next!1829 () Bool)

(assert (=> b!55101 (= b_free!1829 (not b_next!1829))))

(declare-fun tp!7590 () Bool)

(declare-fun b_and!3209 () Bool)

(assert (=> b!55101 (= tp!7590 b_and!3209)))

(declare-fun b!55094 () Bool)

(declare-fun b_free!1831 () Bool)

(declare-fun b_next!1831 () Bool)

(assert (=> b!55094 (= b_free!1831 (not b_next!1831))))

(declare-fun tp!7589 () Bool)

(declare-fun b_and!3211 () Bool)

(assert (=> b!55094 (= tp!7589 b_and!3211)))

(declare-fun b!55090 () Bool)

(declare-fun e!36128 () Bool)

(assert (=> b!55090 (= e!36128 true)))

(declare-fun lt!21828 () Bool)

(declare-datatypes ((V!2755 0))(
  ( (V!2756 (val!1210 Int)) )
))
(declare-datatypes ((array!3584 0))(
  ( (array!3585 (arr!1714 (Array (_ BitVec 32) (_ BitVec 64))) (size!1943 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!822 0))(
  ( (ValueCellFull!822 (v!2302 V!2755)) (EmptyCell!822) )
))
(declare-datatypes ((array!3586 0))(
  ( (array!3587 (arr!1715 (Array (_ BitVec 32) ValueCell!822)) (size!1944 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!552 0))(
  ( (LongMapFixedSize!553 (defaultEntry!1990 Int) (mask!5843 (_ BitVec 32)) (extraKeys!1881 (_ BitVec 32)) (zeroValue!1908 V!2755) (minValue!1908 V!2755) (_size!325 (_ BitVec 32)) (_keys!3610 array!3584) (_values!1973 array!3586) (_vacant!325 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!362 0))(
  ( (Cell!363 (v!2303 LongMapFixedSize!552)) )
))
(declare-datatypes ((LongMap!362 0))(
  ( (LongMap!363 (underlying!192 Cell!362)) )
))
(declare-fun thiss!992 () LongMap!362)

(declare-datatypes ((List!1407 0))(
  ( (Nil!1404) (Cons!1403 (h!1983 (_ BitVec 64)) (t!4613 List!1407)) )
))
(declare-fun arrayNoDuplicates!0 (array!3584 (_ BitVec 32) List!1407) Bool)

(assert (=> b!55090 (= lt!21828 (arrayNoDuplicates!0 (_keys!3610 (v!2303 (underlying!192 thiss!992))) #b00000000000000000000000000000000 Nil!1404))))

(declare-fun b!55092 () Bool)

(declare-fun res!31071 () Bool)

(declare-fun e!36131 () Bool)

(assert (=> b!55092 (=> (not res!31071) (not e!36131))))

(declare-fun newMap!16 () LongMapFixedSize!552)

(declare-fun valid!214 (LongMapFixedSize!552) Bool)

(assert (=> b!55092 (= res!31071 (valid!214 newMap!16))))

(declare-fun b!55093 () Bool)

(declare-fun res!31070 () Bool)

(assert (=> b!55093 (=> (not res!31070) (not e!36131))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!55093 (= res!31070 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1943 (_keys!3610 (v!2303 (underlying!192 thiss!992)))))))))

(declare-fun tp_is_empty!2331 () Bool)

(declare-fun e!36136 () Bool)

(declare-fun e!36130 () Bool)

(declare-fun array_inv!1005 (array!3584) Bool)

(declare-fun array_inv!1006 (array!3586) Bool)

(assert (=> b!55094 (= e!36130 (and tp!7589 tp_is_empty!2331 (array_inv!1005 (_keys!3610 newMap!16)) (array_inv!1006 (_values!1973 newMap!16)) e!36136))))

(declare-fun b!55095 () Bool)

(declare-fun e!36134 () Bool)

(assert (=> b!55095 (= e!36134 tp_is_empty!2331)))

(declare-fun b!55096 () Bool)

(declare-fun e!36137 () Bool)

(assert (=> b!55096 (= e!36137 tp_is_empty!2331)))

(declare-fun mapIsEmpty!2663 () Bool)

(declare-fun mapRes!2663 () Bool)

(assert (=> mapIsEmpty!2663 mapRes!2663))

(declare-fun b!55097 () Bool)

(declare-fun e!36123 () Bool)

(declare-fun e!36124 () Bool)

(assert (=> b!55097 (= e!36123 e!36124)))

(declare-fun b!55098 () Bool)

(declare-fun e!36126 () Bool)

(assert (=> b!55098 (= e!36131 e!36126)))

(declare-fun res!31065 () Bool)

(assert (=> b!55098 (=> (not res!31065) (not e!36126))))

(declare-datatypes ((tuple2!1962 0))(
  ( (tuple2!1963 (_1!991 (_ BitVec 64)) (_2!991 V!2755)) )
))
(declare-datatypes ((List!1408 0))(
  ( (Nil!1405) (Cons!1404 (h!1984 tuple2!1962) (t!4614 List!1408)) )
))
(declare-datatypes ((ListLongMap!1333 0))(
  ( (ListLongMap!1334 (toList!682 List!1408)) )
))
(declare-fun lt!21830 () ListLongMap!1333)

(declare-fun lt!21832 () ListLongMap!1333)

(assert (=> b!55098 (= res!31065 (and (= lt!21830 lt!21832) (not (= (select (arr!1714 (_keys!3610 (v!2303 (underlying!192 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1714 (_keys!3610 (v!2303 (underlying!192 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1069 (LongMapFixedSize!552) ListLongMap!1333)

(assert (=> b!55098 (= lt!21832 (map!1069 newMap!16))))

(declare-fun getCurrentListMap!385 (array!3584 array!3586 (_ BitVec 32) (_ BitVec 32) V!2755 V!2755 (_ BitVec 32) Int) ListLongMap!1333)

(assert (=> b!55098 (= lt!21830 (getCurrentListMap!385 (_keys!3610 (v!2303 (underlying!192 thiss!992))) (_values!1973 (v!2303 (underlying!192 thiss!992))) (mask!5843 (v!2303 (underlying!192 thiss!992))) (extraKeys!1881 (v!2303 (underlying!192 thiss!992))) (zeroValue!1908 (v!2303 (underlying!192 thiss!992))) (minValue!1908 (v!2303 (underlying!192 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1990 (v!2303 (underlying!192 thiss!992)))))))

(declare-fun b!55099 () Bool)

(assert (=> b!55099 (= e!36136 (and e!36137 mapRes!2663))))

(declare-fun condMapEmpty!2663 () Bool)

(declare-fun mapDefault!2664 () ValueCell!822)

(assert (=> b!55099 (= condMapEmpty!2663 (= (arr!1715 (_values!1973 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!822)) mapDefault!2664)))))

(declare-fun b!55100 () Bool)

(declare-fun e!36125 () Bool)

(declare-fun e!36122 () Bool)

(declare-fun mapRes!2664 () Bool)

(assert (=> b!55100 (= e!36125 (and e!36122 mapRes!2664))))

(declare-fun condMapEmpty!2664 () Bool)

(declare-fun mapDefault!2663 () ValueCell!822)

(assert (=> b!55100 (= condMapEmpty!2664 (= (arr!1715 (_values!1973 (v!2303 (underlying!192 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!822)) mapDefault!2663)))))

(assert (=> b!55101 (= e!36124 (and tp!7590 tp_is_empty!2331 (array_inv!1005 (_keys!3610 (v!2303 (underlying!192 thiss!992)))) (array_inv!1006 (_values!1973 (v!2303 (underlying!192 thiss!992)))) e!36125))))

(declare-fun b!55102 () Bool)

(declare-fun res!31068 () Bool)

(assert (=> b!55102 (=> (not res!31068) (not e!36131))))

(assert (=> b!55102 (= res!31068 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5843 newMap!16)) (_size!325 (v!2303 (underlying!192 thiss!992)))))))

(declare-fun b!55103 () Bool)

(declare-fun e!36135 () Bool)

(assert (=> b!55103 (= e!36135 tp_is_empty!2331)))

(declare-fun b!55104 () Bool)

(assert (=> b!55104 (= e!36122 tp_is_empty!2331)))

(declare-fun mapNonEmpty!2663 () Bool)

(declare-fun tp!7588 () Bool)

(assert (=> mapNonEmpty!2663 (= mapRes!2663 (and tp!7588 e!36135))))

(declare-fun mapKey!2663 () (_ BitVec 32))

(declare-fun mapValue!2664 () ValueCell!822)

(declare-fun mapRest!2664 () (Array (_ BitVec 32) ValueCell!822))

(assert (=> mapNonEmpty!2663 (= (arr!1715 (_values!1973 newMap!16)) (store mapRest!2664 mapKey!2663 mapValue!2664))))

(declare-fun mapNonEmpty!2664 () Bool)

(declare-fun tp!7587 () Bool)

(assert (=> mapNonEmpty!2664 (= mapRes!2664 (and tp!7587 e!36134))))

(declare-fun mapValue!2663 () ValueCell!822)

(declare-fun mapKey!2664 () (_ BitVec 32))

(declare-fun mapRest!2663 () (Array (_ BitVec 32) ValueCell!822))

(assert (=> mapNonEmpty!2664 (= (arr!1715 (_values!1973 (v!2303 (underlying!192 thiss!992)))) (store mapRest!2663 mapKey!2664 mapValue!2663))))

(declare-fun res!31069 () Bool)

(assert (=> start!8344 (=> (not res!31069) (not e!36131))))

(declare-fun valid!215 (LongMap!362) Bool)

(assert (=> start!8344 (= res!31069 (valid!215 thiss!992))))

(assert (=> start!8344 e!36131))

(declare-fun e!36132 () Bool)

(assert (=> start!8344 e!36132))

(assert (=> start!8344 true))

(assert (=> start!8344 e!36130))

(declare-fun b!55091 () Bool)

(assert (=> b!55091 (= e!36132 e!36123)))

(declare-fun b!55105 () Bool)

(declare-fun e!36129 () Bool)

(assert (=> b!55105 (= e!36126 e!36129)))

(declare-fun res!31066 () Bool)

(assert (=> b!55105 (=> (not res!31066) (not e!36129))))

(declare-fun contains!652 (ListLongMap!1333 (_ BitVec 64)) Bool)

(assert (=> b!55105 (= res!31066 (contains!652 lt!21832 (select (arr!1714 (_keys!3610 (v!2303 (underlying!192 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!1964 0))(
  ( (tuple2!1965 (_1!992 Bool) (_2!992 LongMapFixedSize!552)) )
))
(declare-fun lt!21831 () tuple2!1964)

(declare-fun update!64 (LongMapFixedSize!552 (_ BitVec 64) V!2755) tuple2!1964)

(declare-fun get!1033 (ValueCell!822 V!2755) V!2755)

(declare-fun dynLambda!292 (Int (_ BitVec 64)) V!2755)

(assert (=> b!55105 (= lt!21831 (update!64 newMap!16 (select (arr!1714 (_keys!3610 (v!2303 (underlying!192 thiss!992)))) from!355) (get!1033 (select (arr!1715 (_values!1973 (v!2303 (underlying!192 thiss!992)))) from!355) (dynLambda!292 (defaultEntry!1990 (v!2303 (underlying!192 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!55106 () Bool)

(assert (=> b!55106 (= e!36129 (not e!36128))))

(declare-fun res!31067 () Bool)

(assert (=> b!55106 (=> res!31067 e!36128)))

(assert (=> b!55106 (= res!31067 (or (bvsge (size!1943 (_keys!3610 (v!2303 (underlying!192 thiss!992)))) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (size!1943 (_keys!3610 (v!2303 (underlying!192 thiss!992))))) (bvsgt from!355 (size!1943 (_keys!3610 (v!2303 (underlying!192 thiss!992)))))))))

(declare-fun arrayContainsKey!0 (array!3584 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!55106 (arrayContainsKey!0 (_keys!3610 (v!2303 (underlying!192 thiss!992))) (select (arr!1714 (_keys!3610 (v!2303 (underlying!192 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-datatypes ((Unit!1440 0))(
  ( (Unit!1441) )
))
(declare-fun lt!21829 () Unit!1440)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!9 (array!3584 array!3586 (_ BitVec 32) (_ BitVec 32) V!2755 V!2755 (_ BitVec 64) (_ BitVec 32) Int) Unit!1440)

(assert (=> b!55106 (= lt!21829 (lemmaListMapContainsThenArrayContainsFrom!9 (_keys!3610 (v!2303 (underlying!192 thiss!992))) (_values!1973 (v!2303 (underlying!192 thiss!992))) (mask!5843 (v!2303 (underlying!192 thiss!992))) (extraKeys!1881 (v!2303 (underlying!192 thiss!992))) (zeroValue!1908 (v!2303 (underlying!192 thiss!992))) (minValue!1908 (v!2303 (underlying!192 thiss!992))) (select (arr!1714 (_keys!3610 (v!2303 (underlying!192 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1990 (v!2303 (underlying!192 thiss!992)))))))

(declare-fun mapIsEmpty!2664 () Bool)

(assert (=> mapIsEmpty!2664 mapRes!2664))

(assert (= (and start!8344 res!31069) b!55093))

(assert (= (and b!55093 res!31070) b!55092))

(assert (= (and b!55092 res!31071) b!55102))

(assert (= (and b!55102 res!31068) b!55098))

(assert (= (and b!55098 res!31065) b!55105))

(assert (= (and b!55105 res!31066) b!55106))

(assert (= (and b!55106 (not res!31067)) b!55090))

(assert (= (and b!55100 condMapEmpty!2664) mapIsEmpty!2664))

(assert (= (and b!55100 (not condMapEmpty!2664)) mapNonEmpty!2664))

(get-info :version)

(assert (= (and mapNonEmpty!2664 ((_ is ValueCellFull!822) mapValue!2663)) b!55095))

(assert (= (and b!55100 ((_ is ValueCellFull!822) mapDefault!2663)) b!55104))

(assert (= b!55101 b!55100))

(assert (= b!55097 b!55101))

(assert (= b!55091 b!55097))

(assert (= start!8344 b!55091))

(assert (= (and b!55099 condMapEmpty!2663) mapIsEmpty!2663))

(assert (= (and b!55099 (not condMapEmpty!2663)) mapNonEmpty!2663))

(assert (= (and mapNonEmpty!2663 ((_ is ValueCellFull!822) mapValue!2664)) b!55103))

(assert (= (and b!55099 ((_ is ValueCellFull!822) mapDefault!2664)) b!55096))

(assert (= b!55094 b!55099))

(assert (= start!8344 b!55094))

(declare-fun b_lambda!2445 () Bool)

(assert (=> (not b_lambda!2445) (not b!55105)))

(declare-fun t!4610 () Bool)

(declare-fun tb!1181 () Bool)

(assert (=> (and b!55101 (= (defaultEntry!1990 (v!2303 (underlying!192 thiss!992))) (defaultEntry!1990 (v!2303 (underlying!192 thiss!992)))) t!4610) tb!1181))

(declare-fun result!2165 () Bool)

(assert (=> tb!1181 (= result!2165 tp_is_empty!2331)))

(assert (=> b!55105 t!4610))

(declare-fun b_and!3213 () Bool)

(assert (= b_and!3209 (and (=> t!4610 result!2165) b_and!3213)))

(declare-fun t!4612 () Bool)

(declare-fun tb!1183 () Bool)

(assert (=> (and b!55094 (= (defaultEntry!1990 newMap!16) (defaultEntry!1990 (v!2303 (underlying!192 thiss!992)))) t!4612) tb!1183))

(declare-fun result!2169 () Bool)

(assert (= result!2169 result!2165))

(assert (=> b!55105 t!4612))

(declare-fun b_and!3215 () Bool)

(assert (= b_and!3211 (and (=> t!4612 result!2169) b_and!3215)))

(declare-fun m!46531 () Bool)

(assert (=> mapNonEmpty!2664 m!46531))

(declare-fun m!46533 () Bool)

(assert (=> b!55106 m!46533))

(assert (=> b!55106 m!46533))

(declare-fun m!46535 () Bool)

(assert (=> b!55106 m!46535))

(assert (=> b!55106 m!46533))

(declare-fun m!46537 () Bool)

(assert (=> b!55106 m!46537))

(declare-fun m!46539 () Bool)

(assert (=> b!55105 m!46539))

(declare-fun m!46541 () Bool)

(assert (=> b!55105 m!46541))

(declare-fun m!46543 () Bool)

(assert (=> b!55105 m!46543))

(assert (=> b!55105 m!46533))

(assert (=> b!55105 m!46533))

(declare-fun m!46545 () Bool)

(assert (=> b!55105 m!46545))

(assert (=> b!55105 m!46541))

(assert (=> b!55105 m!46533))

(assert (=> b!55105 m!46543))

(declare-fun m!46547 () Bool)

(assert (=> b!55105 m!46547))

(assert (=> b!55105 m!46539))

(declare-fun m!46549 () Bool)

(assert (=> start!8344 m!46549))

(declare-fun m!46551 () Bool)

(assert (=> b!55094 m!46551))

(declare-fun m!46553 () Bool)

(assert (=> b!55094 m!46553))

(declare-fun m!46555 () Bool)

(assert (=> b!55101 m!46555))

(declare-fun m!46557 () Bool)

(assert (=> b!55101 m!46557))

(declare-fun m!46559 () Bool)

(assert (=> b!55092 m!46559))

(declare-fun m!46561 () Bool)

(assert (=> mapNonEmpty!2663 m!46561))

(assert (=> b!55098 m!46533))

(declare-fun m!46563 () Bool)

(assert (=> b!55098 m!46563))

(declare-fun m!46565 () Bool)

(assert (=> b!55098 m!46565))

(declare-fun m!46567 () Bool)

(assert (=> b!55090 m!46567))

(check-sat (not b!55101) (not b!55105) (not start!8344) (not b!55090) (not b_lambda!2445) (not b_next!1829) (not b_next!1831) b_and!3215 b_and!3213 tp_is_empty!2331 (not b!55098) (not mapNonEmpty!2664) (not b!55094) (not mapNonEmpty!2663) (not b!55092) (not b!55106))
(check-sat b_and!3213 b_and!3215 (not b_next!1829) (not b_next!1831))
