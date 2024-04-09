; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!8338 () Bool)

(assert start!8338)

(declare-fun b!54935 () Bool)

(declare-fun b_free!1817 () Bool)

(declare-fun b_next!1817 () Bool)

(assert (=> b!54935 (= b_free!1817 (not b_next!1817))))

(declare-fun tp!7552 () Bool)

(declare-fun b_and!3185 () Bool)

(assert (=> b!54935 (= tp!7552 b_and!3185)))

(declare-fun b!54931 () Bool)

(declare-fun b_free!1819 () Bool)

(declare-fun b_next!1819 () Bool)

(assert (=> b!54931 (= b_free!1819 (not b_next!1819))))

(declare-fun tp!7553 () Bool)

(declare-fun b_and!3187 () Bool)

(assert (=> b!54931 (= tp!7553 b_and!3187)))

(declare-fun tp_is_empty!2325 () Bool)

(declare-fun e!35986 () Bool)

(declare-fun e!35988 () Bool)

(declare-datatypes ((V!2747 0))(
  ( (V!2748 (val!1207 Int)) )
))
(declare-datatypes ((array!3572 0))(
  ( (array!3573 (arr!1708 (Array (_ BitVec 32) (_ BitVec 64))) (size!1937 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!819 0))(
  ( (ValueCellFull!819 (v!2296 V!2747)) (EmptyCell!819) )
))
(declare-datatypes ((array!3574 0))(
  ( (array!3575 (arr!1709 (Array (_ BitVec 32) ValueCell!819)) (size!1938 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!546 0))(
  ( (LongMapFixedSize!547 (defaultEntry!1987 Int) (mask!5838 (_ BitVec 32)) (extraKeys!1878 (_ BitVec 32)) (zeroValue!1905 V!2747) (minValue!1905 V!2747) (_size!322 (_ BitVec 32)) (_keys!3607 array!3572) (_values!1970 array!3574) (_vacant!322 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!546)

(declare-fun array_inv!1001 (array!3572) Bool)

(declare-fun array_inv!1002 (array!3574) Bool)

(assert (=> b!54931 (= e!35986 (and tp!7553 tp_is_empty!2325 (array_inv!1001 (_keys!3607 newMap!16)) (array_inv!1002 (_values!1970 newMap!16)) e!35988))))

(declare-fun b!54932 () Bool)

(declare-fun e!35984 () Bool)

(declare-fun e!35981 () Bool)

(assert (=> b!54932 (= e!35984 e!35981)))

(declare-fun b!54933 () Bool)

(declare-fun e!35990 () Bool)

(assert (=> b!54933 (= e!35990 true)))

(declare-fun lt!21787 () Bool)

(declare-datatypes ((Cell!356 0))(
  ( (Cell!357 (v!2297 LongMapFixedSize!546)) )
))
(declare-datatypes ((LongMap!356 0))(
  ( (LongMap!357 (underlying!189 Cell!356)) )
))
(declare-fun thiss!992 () LongMap!356)

(declare-datatypes ((List!1405 0))(
  ( (Nil!1402) (Cons!1401 (h!1981 (_ BitVec 64)) (t!4599 List!1405)) )
))
(declare-fun arrayNoDuplicates!0 (array!3572 (_ BitVec 32) List!1405) Bool)

(assert (=> b!54933 (= lt!21787 (arrayNoDuplicates!0 (_keys!3607 (v!2297 (underlying!189 thiss!992))) #b00000000000000000000000000000000 Nil!1402))))

(declare-fun mapIsEmpty!2645 () Bool)

(declare-fun mapRes!2646 () Bool)

(assert (=> mapIsEmpty!2645 mapRes!2646))

(declare-fun mapNonEmpty!2645 () Bool)

(declare-fun mapRes!2645 () Bool)

(declare-fun tp!7551 () Bool)

(declare-fun e!35992 () Bool)

(assert (=> mapNonEmpty!2645 (= mapRes!2645 (and tp!7551 e!35992))))

(declare-fun mapValue!2646 () ValueCell!819)

(declare-fun mapRest!2646 () (Array (_ BitVec 32) ValueCell!819))

(declare-fun mapKey!2646 () (_ BitVec 32))

(assert (=> mapNonEmpty!2645 (= (arr!1709 (_values!1970 (v!2297 (underlying!189 thiss!992)))) (store mapRest!2646 mapKey!2646 mapValue!2646))))

(declare-fun b!54934 () Bool)

(declare-fun res!31006 () Bool)

(declare-fun e!35979 () Bool)

(assert (=> b!54934 (=> (not res!31006) (not e!35979))))

(declare-fun valid!212 (LongMapFixedSize!546) Bool)

(assert (=> b!54934 (= res!31006 (valid!212 newMap!16))))

(declare-fun e!35987 () Bool)

(declare-fun e!35989 () Bool)

(assert (=> b!54935 (= e!35987 (and tp!7552 tp_is_empty!2325 (array_inv!1001 (_keys!3607 (v!2297 (underlying!189 thiss!992)))) (array_inv!1002 (_values!1970 (v!2297 (underlying!189 thiss!992)))) e!35989))))

(declare-fun res!31005 () Bool)

(assert (=> start!8338 (=> (not res!31005) (not e!35979))))

(declare-fun valid!213 (LongMap!356) Bool)

(assert (=> start!8338 (= res!31005 (valid!213 thiss!992))))

(assert (=> start!8338 e!35979))

(assert (=> start!8338 e!35984))

(assert (=> start!8338 true))

(assert (=> start!8338 e!35986))

(declare-fun b!54936 () Bool)

(declare-fun e!35982 () Bool)

(declare-fun e!35991 () Bool)

(assert (=> b!54936 (= e!35982 e!35991)))

(declare-fun res!31002 () Bool)

(assert (=> b!54936 (=> (not res!31002) (not e!35991))))

(declare-datatypes ((tuple2!1958 0))(
  ( (tuple2!1959 (_1!989 (_ BitVec 64)) (_2!989 V!2747)) )
))
(declare-datatypes ((List!1406 0))(
  ( (Nil!1403) (Cons!1402 (h!1982 tuple2!1958) (t!4600 List!1406)) )
))
(declare-datatypes ((ListLongMap!1331 0))(
  ( (ListLongMap!1332 (toList!681 List!1406)) )
))
(declare-fun lt!21783 () ListLongMap!1331)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun contains!651 (ListLongMap!1331 (_ BitVec 64)) Bool)

(assert (=> b!54936 (= res!31002 (contains!651 lt!21783 (select (arr!1708 (_keys!3607 (v!2297 (underlying!189 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!1960 0))(
  ( (tuple2!1961 (_1!990 Bool) (_2!990 LongMapFixedSize!546)) )
))
(declare-fun lt!21785 () tuple2!1960)

(declare-fun update!63 (LongMapFixedSize!546 (_ BitVec 64) V!2747) tuple2!1960)

(declare-fun get!1030 (ValueCell!819 V!2747) V!2747)

(declare-fun dynLambda!291 (Int (_ BitVec 64)) V!2747)

(assert (=> b!54936 (= lt!21785 (update!63 newMap!16 (select (arr!1708 (_keys!3607 (v!2297 (underlying!189 thiss!992)))) from!355) (get!1030 (select (arr!1709 (_values!1970 (v!2297 (underlying!189 thiss!992)))) from!355) (dynLambda!291 (defaultEntry!1987 (v!2297 (underlying!189 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!54937 () Bool)

(declare-fun e!35983 () Bool)

(assert (=> b!54937 (= e!35989 (and e!35983 mapRes!2645))))

(declare-fun condMapEmpty!2645 () Bool)

(declare-fun mapDefault!2645 () ValueCell!819)

(assert (=> b!54937 (= condMapEmpty!2645 (= (arr!1709 (_values!1970 (v!2297 (underlying!189 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!819)) mapDefault!2645)))))

(declare-fun b!54938 () Bool)

(assert (=> b!54938 (= e!35991 (not e!35990))))

(declare-fun res!31008 () Bool)

(assert (=> b!54938 (=> res!31008 e!35990)))

(assert (=> b!54938 (= res!31008 (or (bvsge (size!1937 (_keys!3607 (v!2297 (underlying!189 thiss!992)))) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (size!1937 (_keys!3607 (v!2297 (underlying!189 thiss!992))))) (bvsgt from!355 (size!1937 (_keys!3607 (v!2297 (underlying!189 thiss!992)))))))))

(declare-fun arrayContainsKey!0 (array!3572 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!54938 (arrayContainsKey!0 (_keys!3607 (v!2297 (underlying!189 thiss!992))) (select (arr!1708 (_keys!3607 (v!2297 (underlying!189 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-datatypes ((Unit!1438 0))(
  ( (Unit!1439) )
))
(declare-fun lt!21786 () Unit!1438)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!8 (array!3572 array!3574 (_ BitVec 32) (_ BitVec 32) V!2747 V!2747 (_ BitVec 64) (_ BitVec 32) Int) Unit!1438)

(assert (=> b!54938 (= lt!21786 (lemmaListMapContainsThenArrayContainsFrom!8 (_keys!3607 (v!2297 (underlying!189 thiss!992))) (_values!1970 (v!2297 (underlying!189 thiss!992))) (mask!5838 (v!2297 (underlying!189 thiss!992))) (extraKeys!1878 (v!2297 (underlying!189 thiss!992))) (zeroValue!1905 (v!2297 (underlying!189 thiss!992))) (minValue!1905 (v!2297 (underlying!189 thiss!992))) (select (arr!1708 (_keys!3607 (v!2297 (underlying!189 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1987 (v!2297 (underlying!189 thiss!992)))))))

(declare-fun mapIsEmpty!2646 () Bool)

(assert (=> mapIsEmpty!2646 mapRes!2645))

(declare-fun b!54939 () Bool)

(declare-fun e!35978 () Bool)

(assert (=> b!54939 (= e!35978 tp_is_empty!2325)))

(declare-fun b!54940 () Bool)

(declare-fun res!31003 () Bool)

(assert (=> b!54940 (=> (not res!31003) (not e!35979))))

(assert (=> b!54940 (= res!31003 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1937 (_keys!3607 (v!2297 (underlying!189 thiss!992)))))))))

(declare-fun b!54941 () Bool)

(declare-fun e!35985 () Bool)

(assert (=> b!54941 (= e!35988 (and e!35985 mapRes!2646))))

(declare-fun condMapEmpty!2646 () Bool)

(declare-fun mapDefault!2646 () ValueCell!819)

(assert (=> b!54941 (= condMapEmpty!2646 (= (arr!1709 (_values!1970 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!819)) mapDefault!2646)))))

(declare-fun b!54942 () Bool)

(declare-fun res!31004 () Bool)

(assert (=> b!54942 (=> (not res!31004) (not e!35979))))

(assert (=> b!54942 (= res!31004 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5838 newMap!16)) (_size!322 (v!2297 (underlying!189 thiss!992)))))))

(declare-fun b!54943 () Bool)

(assert (=> b!54943 (= e!35985 tp_is_empty!2325)))

(declare-fun b!54944 () Bool)

(assert (=> b!54944 (= e!35983 tp_is_empty!2325)))

(declare-fun b!54945 () Bool)

(assert (=> b!54945 (= e!35979 e!35982)))

(declare-fun res!31007 () Bool)

(assert (=> b!54945 (=> (not res!31007) (not e!35982))))

(declare-fun lt!21784 () ListLongMap!1331)

(assert (=> b!54945 (= res!31007 (and (= lt!21784 lt!21783) (not (= (select (arr!1708 (_keys!3607 (v!2297 (underlying!189 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1708 (_keys!3607 (v!2297 (underlying!189 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1066 (LongMapFixedSize!546) ListLongMap!1331)

(assert (=> b!54945 (= lt!21783 (map!1066 newMap!16))))

(declare-fun getCurrentListMap!384 (array!3572 array!3574 (_ BitVec 32) (_ BitVec 32) V!2747 V!2747 (_ BitVec 32) Int) ListLongMap!1331)

(assert (=> b!54945 (= lt!21784 (getCurrentListMap!384 (_keys!3607 (v!2297 (underlying!189 thiss!992))) (_values!1970 (v!2297 (underlying!189 thiss!992))) (mask!5838 (v!2297 (underlying!189 thiss!992))) (extraKeys!1878 (v!2297 (underlying!189 thiss!992))) (zeroValue!1905 (v!2297 (underlying!189 thiss!992))) (minValue!1905 (v!2297 (underlying!189 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1987 (v!2297 (underlying!189 thiss!992)))))))

(declare-fun b!54946 () Bool)

(assert (=> b!54946 (= e!35992 tp_is_empty!2325)))

(declare-fun mapNonEmpty!2646 () Bool)

(declare-fun tp!7554 () Bool)

(assert (=> mapNonEmpty!2646 (= mapRes!2646 (and tp!7554 e!35978))))

(declare-fun mapKey!2645 () (_ BitVec 32))

(declare-fun mapRest!2645 () (Array (_ BitVec 32) ValueCell!819))

(declare-fun mapValue!2645 () ValueCell!819)

(assert (=> mapNonEmpty!2646 (= (arr!1709 (_values!1970 newMap!16)) (store mapRest!2645 mapKey!2645 mapValue!2645))))

(declare-fun b!54947 () Bool)

(assert (=> b!54947 (= e!35981 e!35987)))

(assert (= (and start!8338 res!31005) b!54940))

(assert (= (and b!54940 res!31003) b!54934))

(assert (= (and b!54934 res!31006) b!54942))

(assert (= (and b!54942 res!31004) b!54945))

(assert (= (and b!54945 res!31007) b!54936))

(assert (= (and b!54936 res!31002) b!54938))

(assert (= (and b!54938 (not res!31008)) b!54933))

(assert (= (and b!54937 condMapEmpty!2645) mapIsEmpty!2646))

(assert (= (and b!54937 (not condMapEmpty!2645)) mapNonEmpty!2645))

(get-info :version)

(assert (= (and mapNonEmpty!2645 ((_ is ValueCellFull!819) mapValue!2646)) b!54946))

(assert (= (and b!54937 ((_ is ValueCellFull!819) mapDefault!2645)) b!54944))

(assert (= b!54935 b!54937))

(assert (= b!54947 b!54935))

(assert (= b!54932 b!54947))

(assert (= start!8338 b!54932))

(assert (= (and b!54941 condMapEmpty!2646) mapIsEmpty!2645))

(assert (= (and b!54941 (not condMapEmpty!2646)) mapNonEmpty!2646))

(assert (= (and mapNonEmpty!2646 ((_ is ValueCellFull!819) mapValue!2645)) b!54939))

(assert (= (and b!54941 ((_ is ValueCellFull!819) mapDefault!2646)) b!54943))

(assert (= b!54931 b!54941))

(assert (= start!8338 b!54931))

(declare-fun b_lambda!2439 () Bool)

(assert (=> (not b_lambda!2439) (not b!54936)))

(declare-fun t!4596 () Bool)

(declare-fun tb!1169 () Bool)

(assert (=> (and b!54935 (= (defaultEntry!1987 (v!2297 (underlying!189 thiss!992))) (defaultEntry!1987 (v!2297 (underlying!189 thiss!992)))) t!4596) tb!1169))

(declare-fun result!2147 () Bool)

(assert (=> tb!1169 (= result!2147 tp_is_empty!2325)))

(assert (=> b!54936 t!4596))

(declare-fun b_and!3189 () Bool)

(assert (= b_and!3185 (and (=> t!4596 result!2147) b_and!3189)))

(declare-fun t!4598 () Bool)

(declare-fun tb!1171 () Bool)

(assert (=> (and b!54931 (= (defaultEntry!1987 newMap!16) (defaultEntry!1987 (v!2297 (underlying!189 thiss!992)))) t!4598) tb!1171))

(declare-fun result!2151 () Bool)

(assert (= result!2151 result!2147))

(assert (=> b!54936 t!4598))

(declare-fun b_and!3191 () Bool)

(assert (= b_and!3187 (and (=> t!4598 result!2151) b_and!3191)))

(declare-fun m!46417 () Bool)

(assert (=> start!8338 m!46417))

(declare-fun m!46419 () Bool)

(assert (=> b!54938 m!46419))

(assert (=> b!54938 m!46419))

(declare-fun m!46421 () Bool)

(assert (=> b!54938 m!46421))

(assert (=> b!54938 m!46419))

(declare-fun m!46423 () Bool)

(assert (=> b!54938 m!46423))

(declare-fun m!46425 () Bool)

(assert (=> b!54933 m!46425))

(declare-fun m!46427 () Bool)

(assert (=> b!54936 m!46427))

(declare-fun m!46429 () Bool)

(assert (=> b!54936 m!46429))

(declare-fun m!46431 () Bool)

(assert (=> b!54936 m!46431))

(assert (=> b!54936 m!46419))

(assert (=> b!54936 m!46419))

(declare-fun m!46433 () Bool)

(assert (=> b!54936 m!46433))

(assert (=> b!54936 m!46429))

(assert (=> b!54936 m!46419))

(assert (=> b!54936 m!46431))

(declare-fun m!46435 () Bool)

(assert (=> b!54936 m!46435))

(assert (=> b!54936 m!46427))

(declare-fun m!46437 () Bool)

(assert (=> b!54931 m!46437))

(declare-fun m!46439 () Bool)

(assert (=> b!54931 m!46439))

(assert (=> b!54945 m!46419))

(declare-fun m!46441 () Bool)

(assert (=> b!54945 m!46441))

(declare-fun m!46443 () Bool)

(assert (=> b!54945 m!46443))

(declare-fun m!46445 () Bool)

(assert (=> mapNonEmpty!2645 m!46445))

(declare-fun m!46447 () Bool)

(assert (=> mapNonEmpty!2646 m!46447))

(declare-fun m!46449 () Bool)

(assert (=> b!54935 m!46449))

(declare-fun m!46451 () Bool)

(assert (=> b!54935 m!46451))

(declare-fun m!46453 () Bool)

(assert (=> b!54934 m!46453))

(check-sat (not b!54935) (not b!54933) (not mapNonEmpty!2646) b_and!3189 (not mapNonEmpty!2645) (not b!54931) tp_is_empty!2325 (not start!8338) (not b!54938) (not b!54945) b_and!3191 (not b_lambda!2439) (not b_next!1819) (not b_next!1817) (not b!54936) (not b!54934))
(check-sat b_and!3189 b_and!3191 (not b_next!1817) (not b_next!1819))
