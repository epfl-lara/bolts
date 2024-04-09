; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!8290 () Bool)

(assert start!8290)

(declare-fun b!53464 () Bool)

(declare-fun b_free!1721 () Bool)

(declare-fun b_next!1721 () Bool)

(assert (=> b!53464 (= b_free!1721 (not b_next!1721))))

(declare-fun tp!7263 () Bool)

(declare-fun b_and!2993 () Bool)

(assert (=> b!53464 (= tp!7263 b_and!2993)))

(declare-fun b!53470 () Bool)

(declare-fun b_free!1723 () Bool)

(declare-fun b_next!1723 () Bool)

(assert (=> b!53470 (= b_free!1723 (not b_next!1723))))

(declare-fun tp!7266 () Bool)

(declare-fun b_and!2995 () Bool)

(assert (=> b!53470 (= tp!7266 b_and!2995)))

(declare-fun b!53463 () Bool)

(declare-fun res!30302 () Bool)

(declare-fun e!34889 () Bool)

(assert (=> b!53463 (=> (not res!30302) (not e!34889))))

(declare-datatypes ((V!2683 0))(
  ( (V!2684 (val!1183 Int)) )
))
(declare-datatypes ((array!3476 0))(
  ( (array!3477 (arr!1660 (Array (_ BitVec 32) (_ BitVec 64))) (size!1889 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!795 0))(
  ( (ValueCellFull!795 (v!2250 V!2683)) (EmptyCell!795) )
))
(declare-datatypes ((array!3478 0))(
  ( (array!3479 (arr!1661 (Array (_ BitVec 32) ValueCell!795)) (size!1890 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!498 0))(
  ( (LongMapFixedSize!499 (defaultEntry!1963 Int) (mask!5798 (_ BitVec 32)) (extraKeys!1854 (_ BitVec 32)) (zeroValue!1881 V!2683) (minValue!1881 V!2683) (_size!298 (_ BitVec 32)) (_keys!3583 array!3476) (_values!1946 array!3478) (_vacant!298 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!312 0))(
  ( (Cell!313 (v!2251 LongMapFixedSize!498)) )
))
(declare-datatypes ((LongMap!312 0))(
  ( (LongMap!313 (underlying!167 Cell!312)) )
))
(declare-fun thiss!992 () LongMap!312)

(assert (=> b!53463 (= res!30302 (and (= (size!1890 (_values!1946 (v!2251 (underlying!167 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!5798 (v!2251 (underlying!167 thiss!992))))) (= (size!1889 (_keys!3583 (v!2251 (underlying!167 thiss!992)))) (size!1890 (_values!1946 (v!2251 (underlying!167 thiss!992))))) (bvsge (mask!5798 (v!2251 (underlying!167 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!1854 (v!2251 (underlying!167 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!1854 (v!2251 (underlying!167 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun e!34875 () Bool)

(declare-fun tp_is_empty!2277 () Bool)

(declare-fun e!34887 () Bool)

(declare-fun array_inv!971 (array!3476) Bool)

(declare-fun array_inv!972 (array!3478) Bool)

(assert (=> b!53464 (= e!34875 (and tp!7263 tp_is_empty!2277 (array_inv!971 (_keys!3583 (v!2251 (underlying!167 thiss!992)))) (array_inv!972 (_values!1946 (v!2251 (underlying!167 thiss!992)))) e!34887))))

(declare-fun b!53465 () Bool)

(declare-fun e!34876 () Bool)

(assert (=> b!53465 (= e!34876 e!34875)))

(declare-fun b!53466 () Bool)

(declare-fun res!30311 () Bool)

(assert (=> b!53466 (=> (not res!30311) (not e!34889))))

(declare-datatypes ((List!1376 0))(
  ( (Nil!1373) (Cons!1372 (h!1952 (_ BitVec 64)) (t!4474 List!1376)) )
))
(declare-fun arrayNoDuplicates!0 (array!3476 (_ BitVec 32) List!1376) Bool)

(assert (=> b!53466 (= res!30311 (arrayNoDuplicates!0 (_keys!3583 (v!2251 (underlying!167 thiss!992))) #b00000000000000000000000000000000 Nil!1373))))

(declare-fun mapNonEmpty!2501 () Bool)

(declare-fun mapRes!2501 () Bool)

(declare-fun tp!7264 () Bool)

(declare-fun e!34878 () Bool)

(assert (=> mapNonEmpty!2501 (= mapRes!2501 (and tp!7264 e!34878))))

(declare-fun mapValue!2502 () ValueCell!795)

(declare-fun mapKey!2502 () (_ BitVec 32))

(declare-fun mapRest!2501 () (Array (_ BitVec 32) ValueCell!795))

(assert (=> mapNonEmpty!2501 (= (arr!1661 (_values!1946 (v!2251 (underlying!167 thiss!992)))) (store mapRest!2501 mapKey!2502 mapValue!2502))))

(declare-fun mapIsEmpty!2501 () Bool)

(assert (=> mapIsEmpty!2501 mapRes!2501))

(declare-fun b!53468 () Bool)

(declare-fun e!34880 () Bool)

(declare-fun e!34886 () Bool)

(declare-fun mapRes!2502 () Bool)

(assert (=> b!53468 (= e!34880 (and e!34886 mapRes!2502))))

(declare-fun condMapEmpty!2501 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!498)

(declare-fun mapDefault!2501 () ValueCell!795)

(assert (=> b!53468 (= condMapEmpty!2501 (= (arr!1661 (_values!1946 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!795)) mapDefault!2501)))))

(declare-fun b!53469 () Bool)

(assert (=> b!53469 (= e!34886 tp_is_empty!2277)))

(declare-fun e!34883 () Bool)

(assert (=> b!53470 (= e!34883 (and tp!7266 tp_is_empty!2277 (array_inv!971 (_keys!3583 newMap!16)) (array_inv!972 (_values!1946 newMap!16)) e!34880))))

(declare-fun b!53471 () Bool)

(declare-fun res!30309 () Bool)

(declare-fun e!34884 () Bool)

(assert (=> b!53471 (=> (not res!30309) (not e!34884))))

(assert (=> b!53471 (= res!30309 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5798 newMap!16)) (_size!298 (v!2251 (underlying!167 thiss!992)))))))

(declare-fun b!53472 () Bool)

(declare-fun res!30310 () Bool)

(assert (=> b!53472 (=> (not res!30310) (not e!34884))))

(declare-fun valid!184 (LongMapFixedSize!498) Bool)

(assert (=> b!53472 (= res!30310 (valid!184 newMap!16))))

(declare-fun mapNonEmpty!2502 () Bool)

(declare-fun tp!7265 () Bool)

(declare-fun e!34882 () Bool)

(assert (=> mapNonEmpty!2502 (= mapRes!2502 (and tp!7265 e!34882))))

(declare-fun mapRest!2502 () (Array (_ BitVec 32) ValueCell!795))

(declare-fun mapKey!2501 () (_ BitVec 32))

(declare-fun mapValue!2501 () ValueCell!795)

(assert (=> mapNonEmpty!2502 (= (arr!1661 (_values!1946 newMap!16)) (store mapRest!2502 mapKey!2501 mapValue!2501))))

(declare-fun b!53473 () Bool)

(assert (=> b!53473 (= e!34889 false)))

(declare-datatypes ((tuple2!1886 0))(
  ( (tuple2!1887 (_1!953 (_ BitVec 64)) (_2!953 V!2683)) )
))
(declare-datatypes ((List!1377 0))(
  ( (Nil!1374) (Cons!1373 (h!1953 tuple2!1886) (t!4475 List!1377)) )
))
(declare-datatypes ((ListLongMap!1293 0))(
  ( (ListLongMap!1294 (toList!662 List!1377)) )
))
(declare-fun lt!21473 () ListLongMap!1293)

(declare-fun lt!21474 () Bool)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun contains!633 (ListLongMap!1293 (_ BitVec 64)) Bool)

(assert (=> b!53473 (= lt!21474 (contains!633 lt!21473 (select (arr!1660 (_keys!3583 (v!2251 (underlying!167 thiss!992)))) from!355)))))

(declare-fun b!53474 () Bool)

(assert (=> b!53474 (= e!34878 tp_is_empty!2277)))

(declare-fun b!53467 () Bool)

(declare-fun e!34885 () Bool)

(assert (=> b!53467 (= e!34885 tp_is_empty!2277)))

(declare-fun res!30303 () Bool)

(assert (=> start!8290 (=> (not res!30303) (not e!34884))))

(declare-fun valid!185 (LongMap!312) Bool)

(assert (=> start!8290 (= res!30303 (valid!185 thiss!992))))

(assert (=> start!8290 e!34884))

(declare-fun e!34881 () Bool)

(assert (=> start!8290 e!34881))

(assert (=> start!8290 true))

(assert (=> start!8290 e!34883))

(declare-fun b!53475 () Bool)

(declare-fun res!30307 () Bool)

(assert (=> b!53475 (=> (not res!30307) (not e!34884))))

(assert (=> b!53475 (= res!30307 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1889 (_keys!3583 (v!2251 (underlying!167 thiss!992)))))))))

(declare-fun b!53476 () Bool)

(assert (=> b!53476 (= e!34882 tp_is_empty!2277)))

(declare-fun b!53477 () Bool)

(declare-fun e!34879 () Bool)

(assert (=> b!53477 (= e!34884 e!34879)))

(declare-fun res!30305 () Bool)

(assert (=> b!53477 (=> (not res!30305) (not e!34879))))

(declare-fun lt!21472 () ListLongMap!1293)

(assert (=> b!53477 (= res!30305 (and (= lt!21473 lt!21472) (not (= (select (arr!1660 (_keys!3583 (v!2251 (underlying!167 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1660 (_keys!3583 (v!2251 (underlying!167 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1035 (LongMapFixedSize!498) ListLongMap!1293)

(assert (=> b!53477 (= lt!21472 (map!1035 newMap!16))))

(declare-fun getCurrentListMap!369 (array!3476 array!3478 (_ BitVec 32) (_ BitVec 32) V!2683 V!2683 (_ BitVec 32) Int) ListLongMap!1293)

(assert (=> b!53477 (= lt!21473 (getCurrentListMap!369 (_keys!3583 (v!2251 (underlying!167 thiss!992))) (_values!1946 (v!2251 (underlying!167 thiss!992))) (mask!5798 (v!2251 (underlying!167 thiss!992))) (extraKeys!1854 (v!2251 (underlying!167 thiss!992))) (zeroValue!1881 (v!2251 (underlying!167 thiss!992))) (minValue!1881 (v!2251 (underlying!167 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1963 (v!2251 (underlying!167 thiss!992)))))))

(declare-fun b!53478 () Bool)

(assert (=> b!53478 (= e!34881 e!34876)))

(declare-fun b!53479 () Bool)

(declare-fun res!30306 () Bool)

(assert (=> b!53479 (=> (not res!30306) (not e!34889))))

(assert (=> b!53479 (= res!30306 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!1889 (_keys!3583 (v!2251 (underlying!167 thiss!992)))))))))

(declare-fun b!53480 () Bool)

(assert (=> b!53480 (= e!34887 (and e!34885 mapRes!2501))))

(declare-fun condMapEmpty!2502 () Bool)

(declare-fun mapDefault!2502 () ValueCell!795)

(assert (=> b!53480 (= condMapEmpty!2502 (= (arr!1661 (_values!1946 (v!2251 (underlying!167 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!795)) mapDefault!2502)))))

(declare-fun b!53481 () Bool)

(declare-fun res!30312 () Bool)

(assert (=> b!53481 (=> (not res!30312) (not e!34889))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3476 (_ BitVec 32)) Bool)

(assert (=> b!53481 (= res!30312 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3583 (v!2251 (underlying!167 thiss!992))) (mask!5798 (v!2251 (underlying!167 thiss!992)))))))

(declare-fun b!53482 () Bool)

(assert (=> b!53482 (= e!34879 e!34889)))

(declare-fun res!30304 () Bool)

(assert (=> b!53482 (=> (not res!30304) (not e!34889))))

(assert (=> b!53482 (= res!30304 (contains!633 lt!21472 (select (arr!1660 (_keys!3583 (v!2251 (underlying!167 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!1888 0))(
  ( (tuple2!1889 (_1!954 Bool) (_2!954 LongMapFixedSize!498)) )
))
(declare-fun lt!21475 () tuple2!1888)

(declare-fun update!46 (LongMapFixedSize!498 (_ BitVec 64) V!2683) tuple2!1888)

(declare-fun get!997 (ValueCell!795 V!2683) V!2683)

(declare-fun dynLambda!274 (Int (_ BitVec 64)) V!2683)

(assert (=> b!53482 (= lt!21475 (update!46 newMap!16 (select (arr!1660 (_keys!3583 (v!2251 (underlying!167 thiss!992)))) from!355) (get!997 (select (arr!1661 (_values!1946 (v!2251 (underlying!167 thiss!992)))) from!355) (dynLambda!274 (defaultEntry!1963 (v!2251 (underlying!167 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!53483 () Bool)

(declare-fun res!30308 () Bool)

(assert (=> b!53483 (=> (not res!30308) (not e!34889))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!53483 (= res!30308 (validMask!0 (mask!5798 (v!2251 (underlying!167 thiss!992)))))))

(declare-fun mapIsEmpty!2502 () Bool)

(assert (=> mapIsEmpty!2502 mapRes!2502))

(assert (= (and start!8290 res!30303) b!53475))

(assert (= (and b!53475 res!30307) b!53472))

(assert (= (and b!53472 res!30310) b!53471))

(assert (= (and b!53471 res!30309) b!53477))

(assert (= (and b!53477 res!30305) b!53482))

(assert (= (and b!53482 res!30304) b!53483))

(assert (= (and b!53483 res!30308) b!53463))

(assert (= (and b!53463 res!30302) b!53481))

(assert (= (and b!53481 res!30312) b!53466))

(assert (= (and b!53466 res!30311) b!53479))

(assert (= (and b!53479 res!30306) b!53473))

(assert (= (and b!53480 condMapEmpty!2502) mapIsEmpty!2501))

(assert (= (and b!53480 (not condMapEmpty!2502)) mapNonEmpty!2501))

(get-info :version)

(assert (= (and mapNonEmpty!2501 ((_ is ValueCellFull!795) mapValue!2502)) b!53474))

(assert (= (and b!53480 ((_ is ValueCellFull!795) mapDefault!2502)) b!53467))

(assert (= b!53464 b!53480))

(assert (= b!53465 b!53464))

(assert (= b!53478 b!53465))

(assert (= start!8290 b!53478))

(assert (= (and b!53468 condMapEmpty!2501) mapIsEmpty!2502))

(assert (= (and b!53468 (not condMapEmpty!2501)) mapNonEmpty!2502))

(assert (= (and mapNonEmpty!2502 ((_ is ValueCellFull!795) mapValue!2501)) b!53476))

(assert (= (and b!53468 ((_ is ValueCellFull!795) mapDefault!2501)) b!53469))

(assert (= b!53470 b!53468))

(assert (= start!8290 b!53470))

(declare-fun b_lambda!2391 () Bool)

(assert (=> (not b_lambda!2391) (not b!53482)))

(declare-fun t!4471 () Bool)

(declare-fun tb!1073 () Bool)

(assert (=> (and b!53464 (= (defaultEntry!1963 (v!2251 (underlying!167 thiss!992))) (defaultEntry!1963 (v!2251 (underlying!167 thiss!992)))) t!4471) tb!1073))

(declare-fun result!2003 () Bool)

(assert (=> tb!1073 (= result!2003 tp_is_empty!2277)))

(assert (=> b!53482 t!4471))

(declare-fun b_and!2997 () Bool)

(assert (= b_and!2993 (and (=> t!4471 result!2003) b_and!2997)))

(declare-fun tb!1075 () Bool)

(declare-fun t!4473 () Bool)

(assert (=> (and b!53470 (= (defaultEntry!1963 newMap!16) (defaultEntry!1963 (v!2251 (underlying!167 thiss!992)))) t!4473) tb!1075))

(declare-fun result!2007 () Bool)

(assert (= result!2007 result!2003))

(assert (=> b!53482 t!4473))

(declare-fun b_and!2999 () Bool)

(assert (= b_and!2995 (and (=> t!4473 result!2007) b_and!2999)))

(declare-fun m!45471 () Bool)

(assert (=> b!53477 m!45471))

(declare-fun m!45473 () Bool)

(assert (=> b!53477 m!45473))

(declare-fun m!45475 () Bool)

(assert (=> b!53477 m!45475))

(declare-fun m!45477 () Bool)

(assert (=> b!53470 m!45477))

(declare-fun m!45479 () Bool)

(assert (=> b!53470 m!45479))

(declare-fun m!45481 () Bool)

(assert (=> mapNonEmpty!2502 m!45481))

(declare-fun m!45483 () Bool)

(assert (=> b!53464 m!45483))

(declare-fun m!45485 () Bool)

(assert (=> b!53464 m!45485))

(declare-fun m!45487 () Bool)

(assert (=> b!53472 m!45487))

(declare-fun m!45489 () Bool)

(assert (=> b!53483 m!45489))

(declare-fun m!45491 () Bool)

(assert (=> b!53466 m!45491))

(assert (=> b!53473 m!45471))

(assert (=> b!53473 m!45471))

(declare-fun m!45493 () Bool)

(assert (=> b!53473 m!45493))

(declare-fun m!45495 () Bool)

(assert (=> b!53481 m!45495))

(declare-fun m!45497 () Bool)

(assert (=> start!8290 m!45497))

(assert (=> b!53482 m!45471))

(declare-fun m!45499 () Bool)

(assert (=> b!53482 m!45499))

(assert (=> b!53482 m!45471))

(declare-fun m!45501 () Bool)

(assert (=> b!53482 m!45501))

(declare-fun m!45503 () Bool)

(assert (=> b!53482 m!45503))

(declare-fun m!45505 () Bool)

(assert (=> b!53482 m!45505))

(assert (=> b!53482 m!45471))

(declare-fun m!45507 () Bool)

(assert (=> b!53482 m!45507))

(assert (=> b!53482 m!45505))

(assert (=> b!53482 m!45499))

(assert (=> b!53482 m!45501))

(declare-fun m!45509 () Bool)

(assert (=> mapNonEmpty!2501 m!45509))

(check-sat (not mapNonEmpty!2501) (not b_next!1721) (not b!53472) (not b_next!1723) (not b!53473) tp_is_empty!2277 (not mapNonEmpty!2502) (not start!8290) b_and!2999 (not b!53464) (not b!53477) (not b!53466) (not b!53482) b_and!2997 (not b_lambda!2391) (not b!53481) (not b!53470) (not b!53483))
(check-sat b_and!2997 b_and!2999 (not b_next!1721) (not b_next!1723))
