; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!8350 () Bool)

(assert start!8350)

(declare-fun b!55252 () Bool)

(declare-fun b_free!1841 () Bool)

(declare-fun b_next!1841 () Bool)

(assert (=> b!55252 (= b_free!1841 (not b_next!1841))))

(declare-fun tp!7623 () Bool)

(declare-fun b_and!3233 () Bool)

(assert (=> b!55252 (= tp!7623 b_and!3233)))

(declare-fun b!55257 () Bool)

(declare-fun b_free!1843 () Bool)

(declare-fun b_next!1843 () Bool)

(assert (=> b!55257 (= b_free!1843 (not b_next!1843))))

(declare-fun tp!7625 () Bool)

(declare-fun b_and!3235 () Bool)

(assert (=> b!55257 (= tp!7625 b_and!3235)))

(declare-fun b!55249 () Bool)

(declare-fun res!31130 () Bool)

(declare-fun e!36275 () Bool)

(assert (=> b!55249 (=> (not res!31130) (not e!36275))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((V!2763 0))(
  ( (V!2764 (val!1213 Int)) )
))
(declare-datatypes ((array!3596 0))(
  ( (array!3597 (arr!1720 (Array (_ BitVec 32) (_ BitVec 64))) (size!1949 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!825 0))(
  ( (ValueCellFull!825 (v!2308 V!2763)) (EmptyCell!825) )
))
(declare-datatypes ((array!3598 0))(
  ( (array!3599 (arr!1721 (Array (_ BitVec 32) ValueCell!825)) (size!1950 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!558 0))(
  ( (LongMapFixedSize!559 (defaultEntry!1993 Int) (mask!5848 (_ BitVec 32)) (extraKeys!1884 (_ BitVec 32)) (zeroValue!1911 V!2763) (minValue!1911 V!2763) (_size!328 (_ BitVec 32)) (_keys!3613 array!3596) (_values!1976 array!3598) (_vacant!328 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!368 0))(
  ( (Cell!369 (v!2309 LongMapFixedSize!558)) )
))
(declare-datatypes ((LongMap!368 0))(
  ( (LongMap!369 (underlying!195 Cell!368)) )
))
(declare-fun thiss!992 () LongMap!368)

(assert (=> b!55249 (= res!31130 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1949 (_keys!3613 (v!2309 (underlying!195 thiss!992)))))))))

(declare-fun mapIsEmpty!2681 () Bool)

(declare-fun mapRes!2682 () Bool)

(assert (=> mapIsEmpty!2681 mapRes!2682))

(declare-fun b!55250 () Bool)

(declare-fun e!36281 () Bool)

(declare-fun e!36276 () Bool)

(declare-fun mapRes!2681 () Bool)

(assert (=> b!55250 (= e!36281 (and e!36276 mapRes!2681))))

(declare-fun condMapEmpty!2681 () Bool)

(declare-fun mapDefault!2681 () ValueCell!825)

(assert (=> b!55250 (= condMapEmpty!2681 (= (arr!1721 (_values!1976 (v!2309 (underlying!195 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!825)) mapDefault!2681)))))

(declare-fun b!55251 () Bool)

(declare-fun e!36268 () Bool)

(assert (=> b!55251 (= e!36268 true)))

(declare-fun lt!21874 () Bool)

(declare-datatypes ((List!1409 0))(
  ( (Nil!1406) (Cons!1405 (h!1985 (_ BitVec 64)) (t!4627 List!1409)) )
))
(declare-fun arrayNoDuplicates!0 (array!3596 (_ BitVec 32) List!1409) Bool)

(assert (=> b!55251 (= lt!21874 (arrayNoDuplicates!0 (_keys!3613 (v!2309 (underlying!195 thiss!992))) #b00000000000000000000000000000000 Nil!1406))))

(declare-fun res!31128 () Bool)

(assert (=> start!8350 (=> (not res!31128) (not e!36275))))

(declare-fun valid!217 (LongMap!368) Bool)

(assert (=> start!8350 (= res!31128 (valid!217 thiss!992))))

(assert (=> start!8350 e!36275))

(declare-fun e!36279 () Bool)

(assert (=> start!8350 e!36279))

(assert (=> start!8350 true))

(declare-fun e!36270 () Bool)

(assert (=> start!8350 e!36270))

(declare-fun mapNonEmpty!2681 () Bool)

(declare-fun tp!7626 () Bool)

(declare-fun e!36278 () Bool)

(assert (=> mapNonEmpty!2681 (= mapRes!2682 (and tp!7626 e!36278))))

(declare-fun mapRest!2681 () (Array (_ BitVec 32) ValueCell!825))

(declare-fun newMap!16 () LongMapFixedSize!558)

(declare-fun mapKey!2681 () (_ BitVec 32))

(declare-fun mapValue!2682 () ValueCell!825)

(assert (=> mapNonEmpty!2681 (= (arr!1721 (_values!1976 newMap!16)) (store mapRest!2681 mapKey!2681 mapValue!2682))))

(declare-fun tp_is_empty!2337 () Bool)

(declare-fun e!36277 () Bool)

(declare-fun array_inv!1007 (array!3596) Bool)

(declare-fun array_inv!1008 (array!3598) Bool)

(assert (=> b!55252 (= e!36277 (and tp!7623 tp_is_empty!2337 (array_inv!1007 (_keys!3613 (v!2309 (underlying!195 thiss!992)))) (array_inv!1008 (_values!1976 (v!2309 (underlying!195 thiss!992)))) e!36281))))

(declare-fun mapNonEmpty!2682 () Bool)

(declare-fun tp!7624 () Bool)

(declare-fun e!36269 () Bool)

(assert (=> mapNonEmpty!2682 (= mapRes!2681 (and tp!7624 e!36269))))

(declare-fun mapRest!2682 () (Array (_ BitVec 32) ValueCell!825))

(declare-fun mapValue!2681 () ValueCell!825)

(declare-fun mapKey!2682 () (_ BitVec 32))

(assert (=> mapNonEmpty!2682 (= (arr!1721 (_values!1976 (v!2309 (underlying!195 thiss!992)))) (store mapRest!2682 mapKey!2682 mapValue!2681))))

(declare-fun b!55253 () Bool)

(declare-fun res!31134 () Bool)

(assert (=> b!55253 (=> (not res!31134) (not e!36275))))

(declare-fun valid!218 (LongMapFixedSize!558) Bool)

(assert (=> b!55253 (= res!31134 (valid!218 newMap!16))))

(declare-fun b!55254 () Bool)

(declare-fun e!36267 () Bool)

(assert (=> b!55254 (= e!36275 e!36267)))

(declare-fun res!31131 () Bool)

(assert (=> b!55254 (=> (not res!31131) (not e!36267))))

(declare-datatypes ((tuple2!1966 0))(
  ( (tuple2!1967 (_1!993 (_ BitVec 64)) (_2!993 V!2763)) )
))
(declare-datatypes ((List!1410 0))(
  ( (Nil!1407) (Cons!1406 (h!1986 tuple2!1966) (t!4628 List!1410)) )
))
(declare-datatypes ((ListLongMap!1335 0))(
  ( (ListLongMap!1336 (toList!683 List!1410)) )
))
(declare-fun lt!21873 () ListLongMap!1335)

(declare-fun lt!21875 () ListLongMap!1335)

(assert (=> b!55254 (= res!31131 (and (= lt!21873 lt!21875) (not (= (select (arr!1720 (_keys!3613 (v!2309 (underlying!195 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1720 (_keys!3613 (v!2309 (underlying!195 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1072 (LongMapFixedSize!558) ListLongMap!1335)

(assert (=> b!55254 (= lt!21875 (map!1072 newMap!16))))

(declare-fun getCurrentListMap!386 (array!3596 array!3598 (_ BitVec 32) (_ BitVec 32) V!2763 V!2763 (_ BitVec 32) Int) ListLongMap!1335)

(assert (=> b!55254 (= lt!21873 (getCurrentListMap!386 (_keys!3613 (v!2309 (underlying!195 thiss!992))) (_values!1976 (v!2309 (underlying!195 thiss!992))) (mask!5848 (v!2309 (underlying!195 thiss!992))) (extraKeys!1884 (v!2309 (underlying!195 thiss!992))) (zeroValue!1911 (v!2309 (underlying!195 thiss!992))) (minValue!1911 (v!2309 (underlying!195 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1993 (v!2309 (underlying!195 thiss!992)))))))

(declare-fun mapIsEmpty!2682 () Bool)

(assert (=> mapIsEmpty!2682 mapRes!2681))

(declare-fun b!55255 () Bool)

(declare-fun e!36266 () Bool)

(declare-fun e!36272 () Bool)

(assert (=> b!55255 (= e!36266 (and e!36272 mapRes!2682))))

(declare-fun condMapEmpty!2682 () Bool)

(declare-fun mapDefault!2682 () ValueCell!825)

(assert (=> b!55255 (= condMapEmpty!2682 (= (arr!1721 (_values!1976 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!825)) mapDefault!2682)))))

(declare-fun b!55256 () Bool)

(declare-fun e!36280 () Bool)

(assert (=> b!55256 (= e!36279 e!36280)))

(assert (=> b!55257 (= e!36270 (and tp!7625 tp_is_empty!2337 (array_inv!1007 (_keys!3613 newMap!16)) (array_inv!1008 (_values!1976 newMap!16)) e!36266))))

(declare-fun b!55258 () Bool)

(assert (=> b!55258 (= e!36280 e!36277)))

(declare-fun b!55259 () Bool)

(assert (=> b!55259 (= e!36278 tp_is_empty!2337)))

(declare-fun b!55260 () Bool)

(declare-fun res!31132 () Bool)

(assert (=> b!55260 (=> (not res!31132) (not e!36275))))

(assert (=> b!55260 (= res!31132 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5848 newMap!16)) (_size!328 (v!2309 (underlying!195 thiss!992)))))))

(declare-fun b!55261 () Bool)

(declare-fun e!36271 () Bool)

(assert (=> b!55261 (= e!36267 e!36271)))

(declare-fun res!31133 () Bool)

(assert (=> b!55261 (=> (not res!31133) (not e!36271))))

(declare-fun contains!653 (ListLongMap!1335 (_ BitVec 64)) Bool)

(assert (=> b!55261 (= res!31133 (contains!653 lt!21875 (select (arr!1720 (_keys!3613 (v!2309 (underlying!195 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!1968 0))(
  ( (tuple2!1969 (_1!994 Bool) (_2!994 LongMapFixedSize!558)) )
))
(declare-fun lt!21876 () tuple2!1968)

(declare-fun update!65 (LongMapFixedSize!558 (_ BitVec 64) V!2763) tuple2!1968)

(declare-fun get!1036 (ValueCell!825 V!2763) V!2763)

(declare-fun dynLambda!293 (Int (_ BitVec 64)) V!2763)

(assert (=> b!55261 (= lt!21876 (update!65 newMap!16 (select (arr!1720 (_keys!3613 (v!2309 (underlying!195 thiss!992)))) from!355) (get!1036 (select (arr!1721 (_values!1976 (v!2309 (underlying!195 thiss!992)))) from!355) (dynLambda!293 (defaultEntry!1993 (v!2309 (underlying!195 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!55262 () Bool)

(assert (=> b!55262 (= e!36272 tp_is_empty!2337)))

(declare-fun b!55263 () Bool)

(assert (=> b!55263 (= e!36271 (not e!36268))))

(declare-fun res!31129 () Bool)

(assert (=> b!55263 (=> res!31129 e!36268)))

(assert (=> b!55263 (= res!31129 (or (bvsge (size!1949 (_keys!3613 (v!2309 (underlying!195 thiss!992)))) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (size!1949 (_keys!3613 (v!2309 (underlying!195 thiss!992))))) (bvsgt from!355 (size!1949 (_keys!3613 (v!2309 (underlying!195 thiss!992)))))))))

(declare-fun arrayContainsKey!0 (array!3596 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!55263 (arrayContainsKey!0 (_keys!3613 (v!2309 (underlying!195 thiss!992))) (select (arr!1720 (_keys!3613 (v!2309 (underlying!195 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-datatypes ((Unit!1444 0))(
  ( (Unit!1445) )
))
(declare-fun lt!21877 () Unit!1444)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!11 (array!3596 array!3598 (_ BitVec 32) (_ BitVec 32) V!2763 V!2763 (_ BitVec 64) (_ BitVec 32) Int) Unit!1444)

(assert (=> b!55263 (= lt!21877 (lemmaListMapContainsThenArrayContainsFrom!11 (_keys!3613 (v!2309 (underlying!195 thiss!992))) (_values!1976 (v!2309 (underlying!195 thiss!992))) (mask!5848 (v!2309 (underlying!195 thiss!992))) (extraKeys!1884 (v!2309 (underlying!195 thiss!992))) (zeroValue!1911 (v!2309 (underlying!195 thiss!992))) (minValue!1911 (v!2309 (underlying!195 thiss!992))) (select (arr!1720 (_keys!3613 (v!2309 (underlying!195 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1993 (v!2309 (underlying!195 thiss!992)))))))

(declare-fun b!55264 () Bool)

(assert (=> b!55264 (= e!36276 tp_is_empty!2337)))

(declare-fun b!55265 () Bool)

(assert (=> b!55265 (= e!36269 tp_is_empty!2337)))

(assert (= (and start!8350 res!31128) b!55249))

(assert (= (and b!55249 res!31130) b!55253))

(assert (= (and b!55253 res!31134) b!55260))

(assert (= (and b!55260 res!31132) b!55254))

(assert (= (and b!55254 res!31131) b!55261))

(assert (= (and b!55261 res!31133) b!55263))

(assert (= (and b!55263 (not res!31129)) b!55251))

(assert (= (and b!55250 condMapEmpty!2681) mapIsEmpty!2682))

(assert (= (and b!55250 (not condMapEmpty!2681)) mapNonEmpty!2682))

(get-info :version)

(assert (= (and mapNonEmpty!2682 ((_ is ValueCellFull!825) mapValue!2681)) b!55265))

(assert (= (and b!55250 ((_ is ValueCellFull!825) mapDefault!2681)) b!55264))

(assert (= b!55252 b!55250))

(assert (= b!55258 b!55252))

(assert (= b!55256 b!55258))

(assert (= start!8350 b!55256))

(assert (= (and b!55255 condMapEmpty!2682) mapIsEmpty!2681))

(assert (= (and b!55255 (not condMapEmpty!2682)) mapNonEmpty!2681))

(assert (= (and mapNonEmpty!2681 ((_ is ValueCellFull!825) mapValue!2682)) b!55259))

(assert (= (and b!55255 ((_ is ValueCellFull!825) mapDefault!2682)) b!55262))

(assert (= b!55257 b!55255))

(assert (= start!8350 b!55257))

(declare-fun b_lambda!2451 () Bool)

(assert (=> (not b_lambda!2451) (not b!55261)))

(declare-fun t!4624 () Bool)

(declare-fun tb!1193 () Bool)

(assert (=> (and b!55252 (= (defaultEntry!1993 (v!2309 (underlying!195 thiss!992))) (defaultEntry!1993 (v!2309 (underlying!195 thiss!992)))) t!4624) tb!1193))

(declare-fun result!2183 () Bool)

(assert (=> tb!1193 (= result!2183 tp_is_empty!2337)))

(assert (=> b!55261 t!4624))

(declare-fun b_and!3237 () Bool)

(assert (= b_and!3233 (and (=> t!4624 result!2183) b_and!3237)))

(declare-fun tb!1195 () Bool)

(declare-fun t!4626 () Bool)

(assert (=> (and b!55257 (= (defaultEntry!1993 newMap!16) (defaultEntry!1993 (v!2309 (underlying!195 thiss!992)))) t!4626) tb!1195))

(declare-fun result!2187 () Bool)

(assert (= result!2187 result!2183))

(assert (=> b!55261 t!4626))

(declare-fun b_and!3239 () Bool)

(assert (= b_and!3235 (and (=> t!4626 result!2187) b_and!3239)))

(declare-fun m!46645 () Bool)

(assert (=> b!55253 m!46645))

(declare-fun m!46647 () Bool)

(assert (=> b!55263 m!46647))

(assert (=> b!55263 m!46647))

(declare-fun m!46649 () Bool)

(assert (=> b!55263 m!46649))

(assert (=> b!55263 m!46647))

(declare-fun m!46651 () Bool)

(assert (=> b!55263 m!46651))

(declare-fun m!46653 () Bool)

(assert (=> b!55257 m!46653))

(declare-fun m!46655 () Bool)

(assert (=> b!55257 m!46655))

(declare-fun m!46657 () Bool)

(assert (=> b!55252 m!46657))

(declare-fun m!46659 () Bool)

(assert (=> b!55252 m!46659))

(declare-fun m!46661 () Bool)

(assert (=> b!55251 m!46661))

(declare-fun m!46663 () Bool)

(assert (=> mapNonEmpty!2682 m!46663))

(declare-fun m!46665 () Bool)

(assert (=> start!8350 m!46665))

(declare-fun m!46667 () Bool)

(assert (=> b!55261 m!46667))

(declare-fun m!46669 () Bool)

(assert (=> b!55261 m!46669))

(declare-fun m!46671 () Bool)

(assert (=> b!55261 m!46671))

(assert (=> b!55261 m!46647))

(assert (=> b!55261 m!46647))

(declare-fun m!46673 () Bool)

(assert (=> b!55261 m!46673))

(assert (=> b!55261 m!46669))

(assert (=> b!55261 m!46647))

(assert (=> b!55261 m!46671))

(declare-fun m!46675 () Bool)

(assert (=> b!55261 m!46675))

(assert (=> b!55261 m!46667))

(assert (=> b!55254 m!46647))

(declare-fun m!46677 () Bool)

(assert (=> b!55254 m!46677))

(declare-fun m!46679 () Bool)

(assert (=> b!55254 m!46679))

(declare-fun m!46681 () Bool)

(assert (=> mapNonEmpty!2681 m!46681))

(check-sat (not start!8350) tp_is_empty!2337 (not b!55261) b_and!3237 (not mapNonEmpty!2682) (not mapNonEmpty!2681) (not b!55253) (not b!55251) (not b!55252) (not b_next!1843) (not b_lambda!2451) (not b!55263) (not b!55257) (not b_next!1841) b_and!3239 (not b!55254))
(check-sat b_and!3237 b_and!3239 (not b_next!1841) (not b_next!1843))
