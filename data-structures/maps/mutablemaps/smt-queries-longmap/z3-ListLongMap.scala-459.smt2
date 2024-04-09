; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!8380 () Bool)

(assert start!8380)

(declare-fun b!56209 () Bool)

(declare-fun b_free!1901 () Bool)

(declare-fun b_next!1901 () Bool)

(assert (=> b!56209 (= b_free!1901 (not b_next!1901))))

(declare-fun tp!7803 () Bool)

(declare-fun b_and!3353 () Bool)

(assert (=> b!56209 (= tp!7803 b_and!3353)))

(declare-fun b!56212 () Bool)

(declare-fun b_free!1903 () Bool)

(declare-fun b_next!1903 () Bool)

(assert (=> b!56212 (= b_free!1903 (not b_next!1903))))

(declare-fun tp!7804 () Bool)

(declare-fun b_and!3355 () Bool)

(assert (=> b!56212 (= tp!7804 b_and!3355)))

(declare-fun b!56208 () Bool)

(declare-fun e!37001 () Bool)

(declare-fun tp_is_empty!2367 () Bool)

(assert (=> b!56208 (= e!37001 tp_is_empty!2367)))

(declare-fun e!36996 () Bool)

(declare-fun e!36993 () Bool)

(declare-datatypes ((V!2803 0))(
  ( (V!2804 (val!1228 Int)) )
))
(declare-datatypes ((array!3656 0))(
  ( (array!3657 (arr!1750 (Array (_ BitVec 32) (_ BitVec 64))) (size!1979 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!840 0))(
  ( (ValueCellFull!840 (v!2338 V!2803)) (EmptyCell!840) )
))
(declare-datatypes ((array!3658 0))(
  ( (array!3659 (arr!1751 (Array (_ BitVec 32) ValueCell!840)) (size!1980 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!588 0))(
  ( (LongMapFixedSize!589 (defaultEntry!2008 Int) (mask!5873 (_ BitVec 32)) (extraKeys!1899 (_ BitVec 32)) (zeroValue!1926 V!2803) (minValue!1926 V!2803) (_size!343 (_ BitVec 32)) (_keys!3628 array!3656) (_values!1991 array!3658) (_vacant!343 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!398 0))(
  ( (Cell!399 (v!2339 LongMapFixedSize!588)) )
))
(declare-datatypes ((LongMap!398 0))(
  ( (LongMap!399 (underlying!210 Cell!398)) )
))
(declare-fun thiss!992 () LongMap!398)

(declare-fun array_inv!1029 (array!3656) Bool)

(declare-fun array_inv!1030 (array!3658) Bool)

(assert (=> b!56209 (= e!36996 (and tp!7803 tp_is_empty!2367 (array_inv!1029 (_keys!3628 (v!2339 (underlying!210 thiss!992)))) (array_inv!1030 (_values!1991 (v!2339 (underlying!210 thiss!992)))) e!36993))))

(declare-fun b!56210 () Bool)

(declare-fun e!36989 () Bool)

(assert (=> b!56210 (= e!36989 tp_is_empty!2367)))

(declare-fun b!56211 () Bool)

(declare-fun e!36986 () Bool)

(assert (=> b!56211 (= e!36986 e!36996)))

(declare-fun e!36994 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!588)

(declare-fun e!36987 () Bool)

(assert (=> b!56212 (= e!36994 (and tp!7804 tp_is_empty!2367 (array_inv!1029 (_keys!3628 newMap!16)) (array_inv!1030 (_values!1991 newMap!16)) e!36987))))

(declare-fun b!56213 () Bool)

(declare-fun e!36988 () Bool)

(assert (=> b!56213 (= e!36988 e!36986)))

(declare-fun b!56214 () Bool)

(declare-fun res!31612 () Bool)

(declare-fun e!36997 () Bool)

(assert (=> b!56214 (=> res!31612 e!36997)))

(declare-datatypes ((List!1432 0))(
  ( (Nil!1429) (Cons!1428 (h!2008 (_ BitVec 64)) (t!4710 List!1432)) )
))
(declare-fun lt!22184 () List!1432)

(declare-fun contains!673 (List!1432 (_ BitVec 64)) Bool)

(assert (=> b!56214 (= res!31612 (contains!673 lt!22184 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!56216 () Bool)

(declare-fun e!36991 () Bool)

(declare-fun e!37000 () Bool)

(assert (=> b!56216 (= e!36991 e!37000)))

(declare-fun res!31616 () Bool)

(assert (=> b!56216 (=> (not res!31616) (not e!37000))))

(declare-datatypes ((tuple2!2006 0))(
  ( (tuple2!2007 (_1!1013 (_ BitVec 64)) (_2!1013 V!2803)) )
))
(declare-datatypes ((List!1433 0))(
  ( (Nil!1430) (Cons!1429 (h!2009 tuple2!2006) (t!4711 List!1433)) )
))
(declare-datatypes ((ListLongMap!1355 0))(
  ( (ListLongMap!1356 (toList!693 List!1433)) )
))
(declare-fun lt!22185 () ListLongMap!1355)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun contains!674 (ListLongMap!1355 (_ BitVec 64)) Bool)

(assert (=> b!56216 (= res!31616 (contains!674 lt!22185 (select (arr!1750 (_keys!3628 (v!2339 (underlying!210 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2008 0))(
  ( (tuple2!2009 (_1!1014 Bool) (_2!1014 LongMapFixedSize!588)) )
))
(declare-fun lt!22183 () tuple2!2008)

(declare-fun update!75 (LongMapFixedSize!588 (_ BitVec 64) V!2803) tuple2!2008)

(declare-fun get!1056 (ValueCell!840 V!2803) V!2803)

(declare-fun dynLambda!303 (Int (_ BitVec 64)) V!2803)

(assert (=> b!56216 (= lt!22183 (update!75 newMap!16 (select (arr!1750 (_keys!3628 (v!2339 (underlying!210 thiss!992)))) from!355) (get!1056 (select (arr!1751 (_values!1991 (v!2339 (underlying!210 thiss!992)))) from!355) (dynLambda!303 (defaultEntry!2008 (v!2339 (underlying!210 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!2771 () Bool)

(declare-fun mapRes!2772 () Bool)

(assert (=> mapIsEmpty!2771 mapRes!2772))

(declare-fun b!56217 () Bool)

(declare-fun res!31609 () Bool)

(declare-fun e!36990 () Bool)

(assert (=> b!56217 (=> (not res!31609) (not e!36990))))

(assert (=> b!56217 (= res!31609 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1979 (_keys!3628 (v!2339 (underlying!210 thiss!992)))))))))

(declare-fun b!56218 () Bool)

(declare-fun res!31611 () Bool)

(assert (=> b!56218 (=> res!31611 e!36997)))

(declare-fun noDuplicate!45 (List!1432) Bool)

(assert (=> b!56218 (= res!31611 (not (noDuplicate!45 lt!22184)))))

(declare-fun b!56219 () Bool)

(declare-fun e!36999 () Bool)

(assert (=> b!56219 (= e!36999 tp_is_empty!2367)))

(declare-fun mapIsEmpty!2772 () Bool)

(declare-fun mapRes!2771 () Bool)

(assert (=> mapIsEmpty!2772 mapRes!2771))

(declare-fun b!56220 () Bool)

(assert (=> b!56220 (= e!36997 true)))

(declare-fun lt!22182 () Bool)

(assert (=> b!56220 (= lt!22182 (contains!673 lt!22184 (select (arr!1750 (_keys!3628 (v!2339 (underlying!210 thiss!992)))) from!355)))))

(declare-fun b!56221 () Bool)

(declare-fun e!36995 () Bool)

(assert (=> b!56221 (= e!36993 (and e!36995 mapRes!2772))))

(declare-fun condMapEmpty!2771 () Bool)

(declare-fun mapDefault!2771 () ValueCell!840)

(assert (=> b!56221 (= condMapEmpty!2771 (= (arr!1751 (_values!1991 (v!2339 (underlying!210 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!840)) mapDefault!2771)))))

(declare-fun b!56222 () Bool)

(declare-fun res!31610 () Bool)

(assert (=> b!56222 (=> (not res!31610) (not e!36990))))

(assert (=> b!56222 (= res!31610 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5873 newMap!16)) (_size!343 (v!2339 (underlying!210 thiss!992)))))))

(declare-fun b!56223 () Bool)

(declare-fun res!31615 () Bool)

(assert (=> b!56223 (=> res!31615 e!36997)))

(assert (=> b!56223 (= res!31615 (contains!673 lt!22184 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!2771 () Bool)

(declare-fun tp!7806 () Bool)

(assert (=> mapNonEmpty!2771 (= mapRes!2771 (and tp!7806 e!36999))))

(declare-fun mapValue!2772 () ValueCell!840)

(declare-fun mapRest!2772 () (Array (_ BitVec 32) ValueCell!840))

(declare-fun mapKey!2772 () (_ BitVec 32))

(assert (=> mapNonEmpty!2771 (= (arr!1751 (_values!1991 newMap!16)) (store mapRest!2772 mapKey!2772 mapValue!2772))))

(declare-fun b!56224 () Bool)

(assert (=> b!56224 (= e!36990 e!36991)))

(declare-fun res!31617 () Bool)

(assert (=> b!56224 (=> (not res!31617) (not e!36991))))

(declare-fun lt!22181 () ListLongMap!1355)

(assert (=> b!56224 (= res!31617 (and (= lt!22181 lt!22185) (not (= (select (arr!1750 (_keys!3628 (v!2339 (underlying!210 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1750 (_keys!3628 (v!2339 (underlying!210 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1088 (LongMapFixedSize!588) ListLongMap!1355)

(assert (=> b!56224 (= lt!22185 (map!1088 newMap!16))))

(declare-fun getCurrentListMap!392 (array!3656 array!3658 (_ BitVec 32) (_ BitVec 32) V!2803 V!2803 (_ BitVec 32) Int) ListLongMap!1355)

(assert (=> b!56224 (= lt!22181 (getCurrentListMap!392 (_keys!3628 (v!2339 (underlying!210 thiss!992))) (_values!1991 (v!2339 (underlying!210 thiss!992))) (mask!5873 (v!2339 (underlying!210 thiss!992))) (extraKeys!1899 (v!2339 (underlying!210 thiss!992))) (zeroValue!1926 (v!2339 (underlying!210 thiss!992))) (minValue!1926 (v!2339 (underlying!210 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2008 (v!2339 (underlying!210 thiss!992)))))))

(declare-fun b!56225 () Bool)

(assert (=> b!56225 (= e!37000 (not e!36997))))

(declare-fun res!31613 () Bool)

(assert (=> b!56225 (=> res!31613 e!36997)))

(assert (=> b!56225 (= res!31613 (or (bvsge (size!1979 (_keys!3628 (v!2339 (underlying!210 thiss!992)))) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!1979 (_keys!3628 (v!2339 (underlying!210 thiss!992)))))))))

(assert (=> b!56225 (= lt!22184 (Cons!1428 (select (arr!1750 (_keys!3628 (v!2339 (underlying!210 thiss!992)))) from!355) Nil!1429))))

(declare-fun arrayNoDuplicates!0 (array!3656 (_ BitVec 32) List!1432) Bool)

(assert (=> b!56225 (arrayNoDuplicates!0 (_keys!3628 (v!2339 (underlying!210 thiss!992))) from!355 Nil!1429)))

(declare-datatypes ((Unit!1462 0))(
  ( (Unit!1463) )
))
(declare-fun lt!22186 () Unit!1462)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3656 (_ BitVec 32) (_ BitVec 32)) Unit!1462)

(assert (=> b!56225 (= lt!22186 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3628 (v!2339 (underlying!210 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-fun arrayContainsKey!0 (array!3656 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!56225 (arrayContainsKey!0 (_keys!3628 (v!2339 (underlying!210 thiss!992))) (select (arr!1750 (_keys!3628 (v!2339 (underlying!210 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!22180 () Unit!1462)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!20 (array!3656 array!3658 (_ BitVec 32) (_ BitVec 32) V!2803 V!2803 (_ BitVec 64) (_ BitVec 32) Int) Unit!1462)

(assert (=> b!56225 (= lt!22180 (lemmaListMapContainsThenArrayContainsFrom!20 (_keys!3628 (v!2339 (underlying!210 thiss!992))) (_values!1991 (v!2339 (underlying!210 thiss!992))) (mask!5873 (v!2339 (underlying!210 thiss!992))) (extraKeys!1899 (v!2339 (underlying!210 thiss!992))) (zeroValue!1926 (v!2339 (underlying!210 thiss!992))) (minValue!1926 (v!2339 (underlying!210 thiss!992))) (select (arr!1750 (_keys!3628 (v!2339 (underlying!210 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2008 (v!2339 (underlying!210 thiss!992)))))))

(declare-fun b!56226 () Bool)

(assert (=> b!56226 (= e!36995 tp_is_empty!2367)))

(declare-fun b!56227 () Bool)

(assert (=> b!56227 (= e!36987 (and e!36989 mapRes!2771))))

(declare-fun condMapEmpty!2772 () Bool)

(declare-fun mapDefault!2772 () ValueCell!840)

(assert (=> b!56227 (= condMapEmpty!2772 (= (arr!1751 (_values!1991 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!840)) mapDefault!2772)))))

(declare-fun b!56228 () Bool)

(declare-fun res!31607 () Bool)

(assert (=> b!56228 (=> (not res!31607) (not e!36990))))

(declare-fun valid!233 (LongMapFixedSize!588) Bool)

(assert (=> b!56228 (= res!31607 (valid!233 newMap!16))))

(declare-fun mapNonEmpty!2772 () Bool)

(declare-fun tp!7805 () Bool)

(assert (=> mapNonEmpty!2772 (= mapRes!2772 (and tp!7805 e!37001))))

(declare-fun mapKey!2771 () (_ BitVec 32))

(declare-fun mapValue!2771 () ValueCell!840)

(declare-fun mapRest!2771 () (Array (_ BitVec 32) ValueCell!840))

(assert (=> mapNonEmpty!2772 (= (arr!1751 (_values!1991 (v!2339 (underlying!210 thiss!992)))) (store mapRest!2771 mapKey!2771 mapValue!2771))))

(declare-fun b!56215 () Bool)

(declare-fun res!31608 () Bool)

(assert (=> b!56215 (=> res!31608 e!36997)))

(assert (=> b!56215 (= res!31608 (not (arrayNoDuplicates!0 (_keys!3628 (v!2339 (underlying!210 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) lt!22184)))))

(declare-fun res!31614 () Bool)

(assert (=> start!8380 (=> (not res!31614) (not e!36990))))

(declare-fun valid!234 (LongMap!398) Bool)

(assert (=> start!8380 (= res!31614 (valid!234 thiss!992))))

(assert (=> start!8380 e!36990))

(assert (=> start!8380 e!36988))

(assert (=> start!8380 true))

(assert (=> start!8380 e!36994))

(assert (= (and start!8380 res!31614) b!56217))

(assert (= (and b!56217 res!31609) b!56228))

(assert (= (and b!56228 res!31607) b!56222))

(assert (= (and b!56222 res!31610) b!56224))

(assert (= (and b!56224 res!31617) b!56216))

(assert (= (and b!56216 res!31616) b!56225))

(assert (= (and b!56225 (not res!31613)) b!56218))

(assert (= (and b!56218 (not res!31611)) b!56214))

(assert (= (and b!56214 (not res!31612)) b!56223))

(assert (= (and b!56223 (not res!31615)) b!56215))

(assert (= (and b!56215 (not res!31608)) b!56220))

(assert (= (and b!56221 condMapEmpty!2771) mapIsEmpty!2771))

(assert (= (and b!56221 (not condMapEmpty!2771)) mapNonEmpty!2772))

(get-info :version)

(assert (= (and mapNonEmpty!2772 ((_ is ValueCellFull!840) mapValue!2771)) b!56208))

(assert (= (and b!56221 ((_ is ValueCellFull!840) mapDefault!2771)) b!56226))

(assert (= b!56209 b!56221))

(assert (= b!56211 b!56209))

(assert (= b!56213 b!56211))

(assert (= start!8380 b!56213))

(assert (= (and b!56227 condMapEmpty!2772) mapIsEmpty!2772))

(assert (= (and b!56227 (not condMapEmpty!2772)) mapNonEmpty!2771))

(assert (= (and mapNonEmpty!2771 ((_ is ValueCellFull!840) mapValue!2772)) b!56219))

(assert (= (and b!56227 ((_ is ValueCellFull!840) mapDefault!2772)) b!56210))

(assert (= b!56212 b!56227))

(assert (= start!8380 b!56212))

(declare-fun b_lambda!2481 () Bool)

(assert (=> (not b_lambda!2481) (not b!56216)))

(declare-fun t!4707 () Bool)

(declare-fun tb!1253 () Bool)

(assert (=> (and b!56209 (= (defaultEntry!2008 (v!2339 (underlying!210 thiss!992))) (defaultEntry!2008 (v!2339 (underlying!210 thiss!992)))) t!4707) tb!1253))

(declare-fun result!2273 () Bool)

(assert (=> tb!1253 (= result!2273 tp_is_empty!2367)))

(assert (=> b!56216 t!4707))

(declare-fun b_and!3357 () Bool)

(assert (= b_and!3353 (and (=> t!4707 result!2273) b_and!3357)))

(declare-fun tb!1255 () Bool)

(declare-fun t!4709 () Bool)

(assert (=> (and b!56212 (= (defaultEntry!2008 newMap!16) (defaultEntry!2008 (v!2339 (underlying!210 thiss!992)))) t!4709) tb!1255))

(declare-fun result!2277 () Bool)

(assert (= result!2277 result!2273))

(assert (=> b!56216 t!4709))

(declare-fun b_and!3359 () Bool)

(assert (= b_and!3355 (and (=> t!4709 result!2277) b_and!3359)))

(declare-fun m!47371 () Bool)

(assert (=> b!56220 m!47371))

(assert (=> b!56220 m!47371))

(declare-fun m!47373 () Bool)

(assert (=> b!56220 m!47373))

(declare-fun m!47375 () Bool)

(assert (=> b!56215 m!47375))

(declare-fun m!47377 () Bool)

(assert (=> mapNonEmpty!2772 m!47377))

(declare-fun m!47379 () Bool)

(assert (=> mapNonEmpty!2771 m!47379))

(declare-fun m!47381 () Bool)

(assert (=> b!56223 m!47381))

(declare-fun m!47383 () Bool)

(assert (=> b!56216 m!47383))

(declare-fun m!47385 () Bool)

(assert (=> b!56216 m!47385))

(declare-fun m!47387 () Bool)

(assert (=> b!56216 m!47387))

(assert (=> b!56216 m!47371))

(declare-fun m!47389 () Bool)

(assert (=> b!56216 m!47389))

(assert (=> b!56216 m!47371))

(assert (=> b!56216 m!47385))

(assert (=> b!56216 m!47371))

(assert (=> b!56216 m!47387))

(declare-fun m!47391 () Bool)

(assert (=> b!56216 m!47391))

(assert (=> b!56216 m!47383))

(declare-fun m!47393 () Bool)

(assert (=> b!56218 m!47393))

(declare-fun m!47395 () Bool)

(assert (=> b!56212 m!47395))

(declare-fun m!47397 () Bool)

(assert (=> b!56212 m!47397))

(declare-fun m!47399 () Bool)

(assert (=> b!56228 m!47399))

(assert (=> b!56224 m!47371))

(declare-fun m!47401 () Bool)

(assert (=> b!56224 m!47401))

(declare-fun m!47403 () Bool)

(assert (=> b!56224 m!47403))

(declare-fun m!47405 () Bool)

(assert (=> start!8380 m!47405))

(declare-fun m!47407 () Bool)

(assert (=> b!56214 m!47407))

(declare-fun m!47409 () Bool)

(assert (=> b!56225 m!47409))

(declare-fun m!47411 () Bool)

(assert (=> b!56225 m!47411))

(assert (=> b!56225 m!47371))

(declare-fun m!47413 () Bool)

(assert (=> b!56225 m!47413))

(assert (=> b!56225 m!47371))

(assert (=> b!56225 m!47371))

(declare-fun m!47415 () Bool)

(assert (=> b!56225 m!47415))

(declare-fun m!47417 () Bool)

(assert (=> b!56209 m!47417))

(declare-fun m!47419 () Bool)

(assert (=> b!56209 m!47419))

(check-sat (not b!56225) (not b!56209) (not b_next!1901) b_and!3359 (not mapNonEmpty!2772) (not mapNonEmpty!2771) (not b!56212) (not b!56228) (not b!56218) (not b!56216) (not b_next!1903) (not b!56220) (not b!56215) (not start!8380) b_and!3357 (not b!56224) tp_is_empty!2367 (not b_lambda!2481) (not b!56214) (not b!56223))
(check-sat b_and!3357 b_and!3359 (not b_next!1901) (not b_next!1903))
