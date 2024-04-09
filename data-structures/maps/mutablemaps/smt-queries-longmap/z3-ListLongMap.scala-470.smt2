; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!9220 () Bool)

(assert start!9220)

(declare-fun b!65491 () Bool)

(declare-fun b_free!2033 () Bool)

(declare-fun b_next!2033 () Bool)

(assert (=> b!65491 (= b_free!2033 (not b_next!2033))))

(declare-fun tp!8250 () Bool)

(declare-fun b_and!4009 () Bool)

(assert (=> b!65491 (= tp!8250 b_and!4009)))

(declare-fun b!65492 () Bool)

(declare-fun b_free!2035 () Bool)

(declare-fun b_next!2035 () Bool)

(assert (=> b!65492 (= b_free!2035 (not b_next!2035))))

(declare-fun tp!8247 () Bool)

(declare-fun b_and!4011 () Bool)

(assert (=> b!65492 (= tp!8247 b_and!4011)))

(declare-fun b!65486 () Bool)

(declare-fun res!35594 () Bool)

(declare-fun e!42906 () Bool)

(assert (=> b!65486 (=> (not res!35594) (not e!42906))))

(declare-datatypes ((V!2891 0))(
  ( (V!2892 (val!1261 Int)) )
))
(declare-datatypes ((array!3802 0))(
  ( (array!3803 (arr!1816 (Array (_ BitVec 32) (_ BitVec 64))) (size!2051 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!873 0))(
  ( (ValueCellFull!873 (v!2458 V!2891)) (EmptyCell!873) )
))
(declare-datatypes ((array!3804 0))(
  ( (array!3805 (arr!1817 (Array (_ BitVec 32) ValueCell!873)) (size!2052 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!654 0))(
  ( (LongMapFixedSize!655 (defaultEntry!2135 Int) (mask!6063 (_ BitVec 32)) (extraKeys!2006 (_ BitVec 32)) (zeroValue!2043 V!2891) (minValue!2043 V!2891) (_size!376 (_ BitVec 32)) (_keys!3775 array!3802) (_values!2118 array!3804) (_vacant!376 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!654)

(declare-fun valid!271 (LongMapFixedSize!654) Bool)

(assert (=> b!65486 (= res!35594 (valid!271 newMap!16))))

(declare-fun b!65487 () Bool)

(declare-fun e!42910 () Bool)

(assert (=> b!65487 (= e!42906 e!42910)))

(declare-fun res!35602 () Bool)

(assert (=> b!65487 (=> (not res!35602) (not e!42910))))

(declare-datatypes ((Cell!464 0))(
  ( (Cell!465 (v!2459 LongMapFixedSize!654)) )
))
(declare-datatypes ((LongMap!464 0))(
  ( (LongMap!465 (underlying!243 Cell!464)) )
))
(declare-fun thiss!992 () LongMap!464)

(declare-datatypes ((tuple2!2092 0))(
  ( (tuple2!2093 (_1!1056 (_ BitVec 64)) (_2!1056 V!2891)) )
))
(declare-datatypes ((List!1479 0))(
  ( (Nil!1476) (Cons!1475 (h!2059 tuple2!2092) (t!4929 List!1479)) )
))
(declare-datatypes ((ListLongMap!1405 0))(
  ( (ListLongMap!1406 (toList!718 List!1479)) )
))
(declare-fun lt!28021 () ListLongMap!1405)

(declare-fun lt!28016 () ListLongMap!1405)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!65487 (= res!35602 (and (= lt!28016 lt!28021) (not (= (select (arr!1816 (_keys!3775 (v!2459 (underlying!243 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1816 (_keys!3775 (v!2459 (underlying!243 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1132 (LongMapFixedSize!654) ListLongMap!1405)

(assert (=> b!65487 (= lt!28021 (map!1132 newMap!16))))

(declare-fun getCurrentListMap!414 (array!3802 array!3804 (_ BitVec 32) (_ BitVec 32) V!2891 V!2891 (_ BitVec 32) Int) ListLongMap!1405)

(assert (=> b!65487 (= lt!28016 (getCurrentListMap!414 (_keys!3775 (v!2459 (underlying!243 thiss!992))) (_values!2118 (v!2459 (underlying!243 thiss!992))) (mask!6063 (v!2459 (underlying!243 thiss!992))) (extraKeys!2006 (v!2459 (underlying!243 thiss!992))) (zeroValue!2043 (v!2459 (underlying!243 thiss!992))) (minValue!2043 (v!2459 (underlying!243 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2135 (v!2459 (underlying!243 thiss!992)))))))

(declare-fun b!65488 () Bool)

(declare-fun res!35600 () Bool)

(assert (=> b!65488 (=> (not res!35600) (not e!42906))))

(assert (=> b!65488 (= res!35600 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2051 (_keys!3775 (v!2459 (underlying!243 thiss!992)))))))))

(declare-fun b!65489 () Bool)

(declare-fun e!42905 () Bool)

(declare-fun e!42907 () Bool)

(assert (=> b!65489 (= e!42905 e!42907)))

(declare-fun b!65490 () Bool)

(declare-datatypes ((Unit!1809 0))(
  ( (Unit!1810) )
))
(declare-fun e!42898 () Unit!1809)

(declare-fun Unit!1811 () Unit!1809)

(assert (=> b!65490 (= e!42898 Unit!1811)))

(declare-fun lt!28018 () Unit!1809)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!40 (array!3802 array!3804 (_ BitVec 32) (_ BitVec 32) V!2891 V!2891 (_ BitVec 64) (_ BitVec 32) Int) Unit!1809)

(assert (=> b!65490 (= lt!28018 (lemmaListMapContainsThenArrayContainsFrom!40 (_keys!3775 (v!2459 (underlying!243 thiss!992))) (_values!2118 (v!2459 (underlying!243 thiss!992))) (mask!6063 (v!2459 (underlying!243 thiss!992))) (extraKeys!2006 (v!2459 (underlying!243 thiss!992))) (zeroValue!2043 (v!2459 (underlying!243 thiss!992))) (minValue!2043 (v!2459 (underlying!243 thiss!992))) (select (arr!1816 (_keys!3775 (v!2459 (underlying!243 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2135 (v!2459 (underlying!243 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!3802 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!65490 (arrayContainsKey!0 (_keys!3775 (v!2459 (underlying!243 thiss!992))) (select (arr!1816 (_keys!3775 (v!2459 (underlying!243 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!28019 () Unit!1809)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3802 (_ BitVec 32) (_ BitVec 32)) Unit!1809)

(assert (=> b!65490 (= lt!28019 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3775 (v!2459 (underlying!243 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1480 0))(
  ( (Nil!1477) (Cons!1476 (h!2060 (_ BitVec 64)) (t!4930 List!1480)) )
))
(declare-fun arrayNoDuplicates!0 (array!3802 (_ BitVec 32) List!1480) Bool)

(assert (=> b!65490 (arrayNoDuplicates!0 (_keys!3775 (v!2459 (underlying!243 thiss!992))) from!355 Nil!1477)))

(declare-fun lt!28020 () Unit!1809)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!3802 (_ BitVec 32) (_ BitVec 64) List!1480) Unit!1809)

(assert (=> b!65490 (= lt!28020 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3775 (v!2459 (underlying!243 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1816 (_keys!3775 (v!2459 (underlying!243 thiss!992)))) from!355) (Cons!1476 (select (arr!1816 (_keys!3775 (v!2459 (underlying!243 thiss!992)))) from!355) Nil!1477)))))

(assert (=> b!65490 false))

(declare-fun mapIsEmpty!3017 () Bool)

(declare-fun mapRes!3017 () Bool)

(assert (=> mapIsEmpty!3017 mapRes!3017))

(declare-fun tp_is_empty!2433 () Bool)

(declare-fun e!42902 () Bool)

(declare-fun e!42900 () Bool)

(declare-fun array_inv!1075 (array!3802) Bool)

(declare-fun array_inv!1076 (array!3804) Bool)

(assert (=> b!65492 (= e!42902 (and tp!8247 tp_is_empty!2433 (array_inv!1075 (_keys!3775 newMap!16)) (array_inv!1076 (_values!2118 newMap!16)) e!42900))))

(declare-fun b!65493 () Bool)

(declare-fun e!42911 () Bool)

(assert (=> b!65493 (= e!42911 tp_is_empty!2433)))

(declare-fun b!65494 () Bool)

(declare-fun Unit!1812 () Unit!1809)

(assert (=> b!65494 (= e!42898 Unit!1812)))

(declare-fun mapNonEmpty!3017 () Bool)

(declare-fun tp!8248 () Bool)

(declare-fun e!42909 () Bool)

(assert (=> mapNonEmpty!3017 (= mapRes!3017 (and tp!8248 e!42909))))

(declare-fun mapValue!3018 () ValueCell!873)

(declare-fun mapKey!3018 () (_ BitVec 32))

(declare-fun mapRest!3018 () (Array (_ BitVec 32) ValueCell!873))

(assert (=> mapNonEmpty!3017 (= (arr!1817 (_values!2118 (v!2459 (underlying!243 thiss!992)))) (store mapRest!3018 mapKey!3018 mapValue!3018))))

(declare-fun b!65495 () Bool)

(declare-fun res!35597 () Bool)

(declare-fun e!42903 () Bool)

(assert (=> b!65495 (=> (not res!35597) (not e!42903))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3802 (_ BitVec 32)) Bool)

(assert (=> b!65495 (= res!35597 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3775 (v!2459 (underlying!243 thiss!992))) (mask!6063 (v!2459 (underlying!243 thiss!992)))))))

(declare-fun mapIsEmpty!3018 () Bool)

(declare-fun mapRes!3018 () Bool)

(assert (=> mapIsEmpty!3018 mapRes!3018))

(declare-fun b!65496 () Bool)

(declare-fun res!35595 () Bool)

(assert (=> b!65496 (=> (not res!35595) (not e!42903))))

(assert (=> b!65496 (= res!35595 (arrayNoDuplicates!0 (_keys!3775 (v!2459 (underlying!243 thiss!992))) #b00000000000000000000000000000000 Nil!1477))))

(declare-fun b!65497 () Bool)

(declare-fun e!42904 () Bool)

(assert (=> b!65497 (= e!42904 tp_is_empty!2433)))

(declare-fun mapNonEmpty!3018 () Bool)

(declare-fun tp!8249 () Bool)

(declare-fun e!42908 () Bool)

(assert (=> mapNonEmpty!3018 (= mapRes!3018 (and tp!8249 e!42908))))

(declare-fun mapValue!3017 () ValueCell!873)

(declare-fun mapRest!3017 () (Array (_ BitVec 32) ValueCell!873))

(declare-fun mapKey!3017 () (_ BitVec 32))

(assert (=> mapNonEmpty!3018 (= (arr!1817 (_values!2118 newMap!16)) (store mapRest!3017 mapKey!3017 mapValue!3017))))

(declare-fun b!65498 () Bool)

(assert (=> b!65498 (= e!42908 tp_is_empty!2433)))

(declare-fun b!65499 () Bool)

(assert (=> b!65499 (= e!42909 tp_is_empty!2433)))

(declare-fun b!65500 () Bool)

(declare-fun e!42901 () Bool)

(assert (=> b!65500 (= e!42901 (and e!42911 mapRes!3017))))

(declare-fun condMapEmpty!3017 () Bool)

(declare-fun mapDefault!3018 () ValueCell!873)

(assert (=> b!65500 (= condMapEmpty!3017 (= (arr!1817 (_values!2118 (v!2459 (underlying!243 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!873)) mapDefault!3018)))))

(declare-fun b!65501 () Bool)

(assert (=> b!65501 (= e!42900 (and e!42904 mapRes!3018))))

(declare-fun condMapEmpty!3018 () Bool)

(declare-fun mapDefault!3017 () ValueCell!873)

(assert (=> b!65501 (= condMapEmpty!3018 (= (arr!1817 (_values!2118 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!873)) mapDefault!3017)))))

(assert (=> b!65491 (= e!42907 (and tp!8250 tp_is_empty!2433 (array_inv!1075 (_keys!3775 (v!2459 (underlying!243 thiss!992)))) (array_inv!1076 (_values!2118 (v!2459 (underlying!243 thiss!992)))) e!42901))))

(declare-fun res!35599 () Bool)

(assert (=> start!9220 (=> (not res!35599) (not e!42906))))

(declare-fun valid!272 (LongMap!464) Bool)

(assert (=> start!9220 (= res!35599 (valid!272 thiss!992))))

(assert (=> start!9220 e!42906))

(declare-fun e!42912 () Bool)

(assert (=> start!9220 e!42912))

(assert (=> start!9220 true))

(assert (=> start!9220 e!42902))

(declare-fun b!65502 () Bool)

(assert (=> b!65502 (= e!42910 e!42903)))

(declare-fun res!35598 () Bool)

(assert (=> b!65502 (=> (not res!35598) (not e!42903))))

(declare-datatypes ((tuple2!2094 0))(
  ( (tuple2!2095 (_1!1057 Bool) (_2!1057 LongMapFixedSize!654)) )
))
(declare-fun lt!28022 () tuple2!2094)

(assert (=> b!65502 (= res!35598 (and (_1!1057 lt!28022) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!28017 () Unit!1809)

(assert (=> b!65502 (= lt!28017 e!42898)))

(declare-fun c!9024 () Bool)

(declare-fun contains!711 (ListLongMap!1405 (_ BitVec 64)) Bool)

(assert (=> b!65502 (= c!9024 (contains!711 lt!28021 (select (arr!1816 (_keys!3775 (v!2459 (underlying!243 thiss!992)))) from!355)))))

(declare-fun update!93 (LongMapFixedSize!654 (_ BitVec 64) V!2891) tuple2!2094)

(declare-fun get!1116 (ValueCell!873 V!2891) V!2891)

(declare-fun dynLambda!321 (Int (_ BitVec 64)) V!2891)

(assert (=> b!65502 (= lt!28022 (update!93 newMap!16 (select (arr!1816 (_keys!3775 (v!2459 (underlying!243 thiss!992)))) from!355) (get!1116 (select (arr!1817 (_values!2118 (v!2459 (underlying!243 thiss!992)))) from!355) (dynLambda!321 (defaultEntry!2135 (v!2459 (underlying!243 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!65503 () Bool)

(assert (=> b!65503 (= e!42912 e!42905)))

(declare-fun b!65504 () Bool)

(declare-fun res!35593 () Bool)

(assert (=> b!65504 (=> (not res!35593) (not e!42906))))

(assert (=> b!65504 (= res!35593 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6063 newMap!16)) (_size!376 (v!2459 (underlying!243 thiss!992)))))))

(declare-fun b!65505 () Bool)

(assert (=> b!65505 (= e!42903 (bvslt (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000))))

(declare-fun b!65506 () Bool)

(declare-fun res!35596 () Bool)

(assert (=> b!65506 (=> (not res!35596) (not e!42903))))

(assert (=> b!65506 (= res!35596 (and (= (size!2052 (_values!2118 (v!2459 (underlying!243 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6063 (v!2459 (underlying!243 thiss!992))))) (= (size!2051 (_keys!3775 (v!2459 (underlying!243 thiss!992)))) (size!2052 (_values!2118 (v!2459 (underlying!243 thiss!992))))) (bvsge (mask!6063 (v!2459 (underlying!243 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!2006 (v!2459 (underlying!243 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!2006 (v!2459 (underlying!243 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun b!65507 () Bool)

(declare-fun res!35601 () Bool)

(assert (=> b!65507 (=> (not res!35601) (not e!42903))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!65507 (= res!35601 (validMask!0 (mask!6063 (v!2459 (underlying!243 thiss!992)))))))

(assert (= (and start!9220 res!35599) b!65488))

(assert (= (and b!65488 res!35600) b!65486))

(assert (= (and b!65486 res!35594) b!65504))

(assert (= (and b!65504 res!35593) b!65487))

(assert (= (and b!65487 res!35602) b!65502))

(assert (= (and b!65502 c!9024) b!65490))

(assert (= (and b!65502 (not c!9024)) b!65494))

(assert (= (and b!65502 res!35598) b!65507))

(assert (= (and b!65507 res!35601) b!65506))

(assert (= (and b!65506 res!35596) b!65495))

(assert (= (and b!65495 res!35597) b!65496))

(assert (= (and b!65496 res!35595) b!65505))

(assert (= (and b!65500 condMapEmpty!3017) mapIsEmpty!3017))

(assert (= (and b!65500 (not condMapEmpty!3017)) mapNonEmpty!3017))

(get-info :version)

(assert (= (and mapNonEmpty!3017 ((_ is ValueCellFull!873) mapValue!3018)) b!65499))

(assert (= (and b!65500 ((_ is ValueCellFull!873) mapDefault!3018)) b!65493))

(assert (= b!65491 b!65500))

(assert (= b!65489 b!65491))

(assert (= b!65503 b!65489))

(assert (= start!9220 b!65503))

(assert (= (and b!65501 condMapEmpty!3018) mapIsEmpty!3018))

(assert (= (and b!65501 (not condMapEmpty!3018)) mapNonEmpty!3018))

(assert (= (and mapNonEmpty!3018 ((_ is ValueCellFull!873) mapValue!3017)) b!65498))

(assert (= (and b!65501 ((_ is ValueCellFull!873) mapDefault!3017)) b!65497))

(assert (= b!65492 b!65501))

(assert (= start!9220 b!65492))

(declare-fun b_lambda!2945 () Bool)

(assert (=> (not b_lambda!2945) (not b!65502)))

(declare-fun t!4926 () Bool)

(declare-fun tb!1425 () Bool)

(assert (=> (and b!65491 (= (defaultEntry!2135 (v!2459 (underlying!243 thiss!992))) (defaultEntry!2135 (v!2459 (underlying!243 thiss!992)))) t!4926) tb!1425))

(declare-fun result!2525 () Bool)

(assert (=> tb!1425 (= result!2525 tp_is_empty!2433)))

(assert (=> b!65502 t!4926))

(declare-fun b_and!4013 () Bool)

(assert (= b_and!4009 (and (=> t!4926 result!2525) b_and!4013)))

(declare-fun tb!1427 () Bool)

(declare-fun t!4928 () Bool)

(assert (=> (and b!65492 (= (defaultEntry!2135 newMap!16) (defaultEntry!2135 (v!2459 (underlying!243 thiss!992)))) t!4928) tb!1427))

(declare-fun result!2529 () Bool)

(assert (= result!2529 result!2525))

(assert (=> b!65502 t!4928))

(declare-fun b_and!4015 () Bool)

(assert (= b_and!4011 (and (=> t!4928 result!2529) b_and!4015)))

(declare-fun m!60037 () Bool)

(assert (=> b!65502 m!60037))

(declare-fun m!60039 () Bool)

(assert (=> b!65502 m!60039))

(declare-fun m!60041 () Bool)

(assert (=> b!65502 m!60041))

(declare-fun m!60043 () Bool)

(assert (=> b!65502 m!60043))

(declare-fun m!60045 () Bool)

(assert (=> b!65502 m!60045))

(assert (=> b!65502 m!60037))

(assert (=> b!65502 m!60043))

(assert (=> b!65502 m!60037))

(assert (=> b!65502 m!60045))

(declare-fun m!60047 () Bool)

(assert (=> b!65502 m!60047))

(assert (=> b!65502 m!60041))

(declare-fun m!60049 () Bool)

(assert (=> b!65492 m!60049))

(declare-fun m!60051 () Bool)

(assert (=> b!65492 m!60051))

(declare-fun m!60053 () Bool)

(assert (=> mapNonEmpty!3018 m!60053))

(declare-fun m!60055 () Bool)

(assert (=> mapNonEmpty!3017 m!60055))

(assert (=> b!65487 m!60037))

(declare-fun m!60057 () Bool)

(assert (=> b!65487 m!60057))

(declare-fun m!60059 () Bool)

(assert (=> b!65487 m!60059))

(declare-fun m!60061 () Bool)

(assert (=> b!65495 m!60061))

(declare-fun m!60063 () Bool)

(assert (=> b!65490 m!60063))

(declare-fun m!60065 () Bool)

(assert (=> b!65490 m!60065))

(assert (=> b!65490 m!60037))

(declare-fun m!60067 () Bool)

(assert (=> b!65490 m!60067))

(assert (=> b!65490 m!60037))

(assert (=> b!65490 m!60037))

(declare-fun m!60069 () Bool)

(assert (=> b!65490 m!60069))

(assert (=> b!65490 m!60037))

(declare-fun m!60071 () Bool)

(assert (=> b!65490 m!60071))

(declare-fun m!60073 () Bool)

(assert (=> b!65491 m!60073))

(declare-fun m!60075 () Bool)

(assert (=> b!65491 m!60075))

(declare-fun m!60077 () Bool)

(assert (=> start!9220 m!60077))

(declare-fun m!60079 () Bool)

(assert (=> b!65486 m!60079))

(declare-fun m!60081 () Bool)

(assert (=> b!65496 m!60081))

(declare-fun m!60083 () Bool)

(assert (=> b!65507 m!60083))

(check-sat tp_is_empty!2433 b_and!4015 (not b_next!2033) (not b!65495) (not b!65487) (not b_lambda!2945) (not b!65491) (not b!65507) (not mapNonEmpty!3017) (not b!65492) b_and!4013 (not b!65486) (not b!65490) (not start!9220) (not b!65496) (not b!65502) (not mapNonEmpty!3018) (not b_next!2035))
(check-sat b_and!4013 b_and!4015 (not b_next!2033) (not b_next!2035))
