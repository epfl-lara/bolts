; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!8368 () Bool)

(assert start!8368)

(declare-fun b!55830 () Bool)

(declare-fun b_free!1877 () Bool)

(declare-fun b_next!1877 () Bool)

(assert (=> b!55830 (= b_free!1877 (not b_next!1877))))

(declare-fun tp!7732 () Bool)

(declare-fun b_and!3305 () Bool)

(assert (=> b!55830 (= tp!7732 b_and!3305)))

(declare-fun b!55834 () Bool)

(declare-fun b_free!1879 () Bool)

(declare-fun b_next!1879 () Bool)

(assert (=> b!55834 (= b_free!1879 (not b_next!1879))))

(declare-fun tp!7733 () Bool)

(declare-fun b_and!3307 () Bool)

(assert (=> b!55834 (= tp!7733 b_and!3307)))

(declare-fun b!55818 () Bool)

(declare-fun e!36713 () Bool)

(declare-fun tp_is_empty!2355 () Bool)

(assert (=> b!55818 (= e!36713 tp_is_empty!2355)))

(declare-fun b!55819 () Bool)

(declare-fun e!36702 () Bool)

(assert (=> b!55819 (= e!36702 tp_is_empty!2355)))

(declare-fun b!55820 () Bool)

(declare-fun res!31418 () Bool)

(declare-fun e!36701 () Bool)

(assert (=> b!55820 (=> res!31418 e!36701)))

(declare-datatypes ((List!1423 0))(
  ( (Nil!1420) (Cons!1419 (h!1999 (_ BitVec 64)) (t!4677 List!1423)) )
))
(declare-fun lt!22057 () List!1423)

(declare-fun contains!665 (List!1423 (_ BitVec 64)) Bool)

(assert (=> b!55820 (= res!31418 (contains!665 lt!22057 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!55821 () Bool)

(declare-fun e!36708 () Bool)

(declare-fun e!36707 () Bool)

(assert (=> b!55821 (= e!36708 e!36707)))

(declare-fun res!31417 () Bool)

(assert (=> b!55821 (=> (not res!31417) (not e!36707))))

(declare-datatypes ((V!2787 0))(
  ( (V!2788 (val!1222 Int)) )
))
(declare-datatypes ((array!3632 0))(
  ( (array!3633 (arr!1738 (Array (_ BitVec 32) (_ BitVec 64))) (size!1967 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!834 0))(
  ( (ValueCellFull!834 (v!2326 V!2787)) (EmptyCell!834) )
))
(declare-datatypes ((array!3634 0))(
  ( (array!3635 (arr!1739 (Array (_ BitVec 32) ValueCell!834)) (size!1968 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!576 0))(
  ( (LongMapFixedSize!577 (defaultEntry!2002 Int) (mask!5863 (_ BitVec 32)) (extraKeys!1893 (_ BitVec 32)) (zeroValue!1920 V!2787) (minValue!1920 V!2787) (_size!337 (_ BitVec 32)) (_keys!3622 array!3632) (_values!1985 array!3634) (_vacant!337 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!386 0))(
  ( (Cell!387 (v!2327 LongMapFixedSize!576)) )
))
(declare-datatypes ((LongMap!386 0))(
  ( (LongMap!387 (underlying!204 Cell!386)) )
))
(declare-fun thiss!992 () LongMap!386)

(declare-datatypes ((tuple2!1990 0))(
  ( (tuple2!1991 (_1!1005 (_ BitVec 64)) (_2!1005 V!2787)) )
))
(declare-datatypes ((List!1424 0))(
  ( (Nil!1421) (Cons!1420 (h!2000 tuple2!1990) (t!4678 List!1424)) )
))
(declare-datatypes ((ListLongMap!1347 0))(
  ( (ListLongMap!1348 (toList!689 List!1424)) )
))
(declare-fun lt!22055 () ListLongMap!1347)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun contains!666 (ListLongMap!1347 (_ BitVec 64)) Bool)

(assert (=> b!55821 (= res!31417 (contains!666 lt!22055 (select (arr!1738 (_keys!3622 (v!2327 (underlying!204 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!1992 0))(
  ( (tuple2!1993 (_1!1006 Bool) (_2!1006 LongMapFixedSize!576)) )
))
(declare-fun lt!22060 () tuple2!1992)

(declare-fun newMap!16 () LongMapFixedSize!576)

(declare-fun update!71 (LongMapFixedSize!576 (_ BitVec 64) V!2787) tuple2!1992)

(declare-fun get!1048 (ValueCell!834 V!2787) V!2787)

(declare-fun dynLambda!299 (Int (_ BitVec 64)) V!2787)

(assert (=> b!55821 (= lt!22060 (update!71 newMap!16 (select (arr!1738 (_keys!3622 (v!2327 (underlying!204 thiss!992)))) from!355) (get!1048 (select (arr!1739 (_values!1985 (v!2327 (underlying!204 thiss!992)))) from!355) (dynLambda!299 (defaultEntry!2002 (v!2327 (underlying!204 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!55822 () Bool)

(declare-fun e!36700 () Bool)

(declare-fun e!36704 () Bool)

(declare-fun mapRes!2735 () Bool)

(assert (=> b!55822 (= e!36700 (and e!36704 mapRes!2735))))

(declare-fun condMapEmpty!2736 () Bool)

(declare-fun mapDefault!2735 () ValueCell!834)

(assert (=> b!55822 (= condMapEmpty!2736 (= (arr!1739 (_values!1985 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!834)) mapDefault!2735)))))

(declare-fun b!55823 () Bool)

(declare-fun res!31410 () Bool)

(assert (=> b!55823 (=> res!31410 e!36701)))

(declare-fun arrayNoDuplicates!0 (array!3632 (_ BitVec 32) List!1423) Bool)

(assert (=> b!55823 (= res!31410 (not (arrayNoDuplicates!0 (_keys!3622 (v!2327 (underlying!204 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) lt!22057)))))

(declare-fun b!55824 () Bool)

(declare-fun res!31419 () Bool)

(assert (=> b!55824 (=> res!31419 e!36701)))

(assert (=> b!55824 (= res!31419 (contains!665 lt!22057 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!55825 () Bool)

(declare-fun res!31416 () Bool)

(declare-fun e!36712 () Bool)

(assert (=> b!55825 (=> (not res!31416) (not e!36712))))

(assert (=> b!55825 (= res!31416 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5863 newMap!16)) (_size!337 (v!2327 (underlying!204 thiss!992)))))))

(declare-fun mapIsEmpty!2735 () Bool)

(declare-fun mapRes!2736 () Bool)

(assert (=> mapIsEmpty!2735 mapRes!2736))

(declare-fun mapIsEmpty!2736 () Bool)

(assert (=> mapIsEmpty!2736 mapRes!2735))

(declare-fun b!55826 () Bool)

(assert (=> b!55826 (= e!36712 e!36708)))

(declare-fun res!31411 () Bool)

(assert (=> b!55826 (=> (not res!31411) (not e!36708))))

(declare-fun lt!22058 () ListLongMap!1347)

(assert (=> b!55826 (= res!31411 (and (= lt!22058 lt!22055) (not (= (select (arr!1738 (_keys!3622 (v!2327 (underlying!204 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1738 (_keys!3622 (v!2327 (underlying!204 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1081 (LongMapFixedSize!576) ListLongMap!1347)

(assert (=> b!55826 (= lt!22055 (map!1081 newMap!16))))

(declare-fun getCurrentListMap!389 (array!3632 array!3634 (_ BitVec 32) (_ BitVec 32) V!2787 V!2787 (_ BitVec 32) Int) ListLongMap!1347)

(assert (=> b!55826 (= lt!22058 (getCurrentListMap!389 (_keys!3622 (v!2327 (underlying!204 thiss!992))) (_values!1985 (v!2327 (underlying!204 thiss!992))) (mask!5863 (v!2327 (underlying!204 thiss!992))) (extraKeys!1893 (v!2327 (underlying!204 thiss!992))) (zeroValue!1920 (v!2327 (underlying!204 thiss!992))) (minValue!1920 (v!2327 (underlying!204 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2002 (v!2327 (underlying!204 thiss!992)))))))

(declare-fun mapNonEmpty!2735 () Bool)

(declare-fun tp!7734 () Bool)

(declare-fun e!36709 () Bool)

(assert (=> mapNonEmpty!2735 (= mapRes!2736 (and tp!7734 e!36709))))

(declare-fun mapKey!2736 () (_ BitVec 32))

(declare-fun mapRest!2736 () (Array (_ BitVec 32) ValueCell!834))

(declare-fun mapValue!2736 () ValueCell!834)

(assert (=> mapNonEmpty!2735 (= (arr!1739 (_values!1985 (v!2327 (underlying!204 thiss!992)))) (store mapRest!2736 mapKey!2736 mapValue!2736))))

(declare-fun b!55827 () Bool)

(declare-fun res!31412 () Bool)

(assert (=> b!55827 (=> res!31412 e!36701)))

(declare-fun noDuplicate!41 (List!1423) Bool)

(assert (=> b!55827 (= res!31412 (not (noDuplicate!41 lt!22057)))))

(declare-fun res!31413 () Bool)

(assert (=> start!8368 (=> (not res!31413) (not e!36712))))

(declare-fun valid!227 (LongMap!386) Bool)

(assert (=> start!8368 (= res!31413 (valid!227 thiss!992))))

(assert (=> start!8368 e!36712))

(declare-fun e!36699 () Bool)

(assert (=> start!8368 e!36699))

(assert (=> start!8368 true))

(declare-fun e!36706 () Bool)

(assert (=> start!8368 e!36706))

(declare-fun b!55828 () Bool)

(assert (=> b!55828 (= e!36707 (not e!36701))))

(declare-fun res!31415 () Bool)

(assert (=> b!55828 (=> res!31415 e!36701)))

(assert (=> b!55828 (= res!31415 (or (bvsge (size!1967 (_keys!3622 (v!2327 (underlying!204 thiss!992)))) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!1967 (_keys!3622 (v!2327 (underlying!204 thiss!992)))))))))

(assert (=> b!55828 (= lt!22057 (Cons!1419 (select (arr!1738 (_keys!3622 (v!2327 (underlying!204 thiss!992)))) from!355) Nil!1420))))

(assert (=> b!55828 (arrayNoDuplicates!0 (_keys!3622 (v!2327 (underlying!204 thiss!992))) from!355 Nil!1420)))

(declare-datatypes ((Unit!1454 0))(
  ( (Unit!1455) )
))
(declare-fun lt!22059 () Unit!1454)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3632 (_ BitVec 32) (_ BitVec 32)) Unit!1454)

(assert (=> b!55828 (= lt!22059 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3622 (v!2327 (underlying!204 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-fun arrayContainsKey!0 (array!3632 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!55828 (arrayContainsKey!0 (_keys!3622 (v!2327 (underlying!204 thiss!992))) (select (arr!1738 (_keys!3622 (v!2327 (underlying!204 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!22056 () Unit!1454)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!16 (array!3632 array!3634 (_ BitVec 32) (_ BitVec 32) V!2787 V!2787 (_ BitVec 64) (_ BitVec 32) Int) Unit!1454)

(assert (=> b!55828 (= lt!22056 (lemmaListMapContainsThenArrayContainsFrom!16 (_keys!3622 (v!2327 (underlying!204 thiss!992))) (_values!1985 (v!2327 (underlying!204 thiss!992))) (mask!5863 (v!2327 (underlying!204 thiss!992))) (extraKeys!1893 (v!2327 (underlying!204 thiss!992))) (zeroValue!1920 (v!2327 (underlying!204 thiss!992))) (minValue!1920 (v!2327 (underlying!204 thiss!992))) (select (arr!1738 (_keys!3622 (v!2327 (underlying!204 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2002 (v!2327 (underlying!204 thiss!992)))))))

(declare-fun b!55829 () Bool)

(assert (=> b!55829 (= e!36701 true)))

(declare-fun lt!22054 () Bool)

(assert (=> b!55829 (= lt!22054 (contains!665 lt!22057 (select (arr!1738 (_keys!3622 (v!2327 (underlying!204 thiss!992)))) from!355)))))

(declare-fun e!36711 () Bool)

(declare-fun e!36703 () Bool)

(declare-fun array_inv!1019 (array!3632) Bool)

(declare-fun array_inv!1020 (array!3634) Bool)

(assert (=> b!55830 (= e!36703 (and tp!7732 tp_is_empty!2355 (array_inv!1019 (_keys!3622 (v!2327 (underlying!204 thiss!992)))) (array_inv!1020 (_values!1985 (v!2327 (underlying!204 thiss!992)))) e!36711))))

(declare-fun mapNonEmpty!2736 () Bool)

(declare-fun tp!7731 () Bool)

(assert (=> mapNonEmpty!2736 (= mapRes!2735 (and tp!7731 e!36702))))

(declare-fun mapRest!2735 () (Array (_ BitVec 32) ValueCell!834))

(declare-fun mapKey!2735 () (_ BitVec 32))

(declare-fun mapValue!2735 () ValueCell!834)

(assert (=> mapNonEmpty!2736 (= (arr!1739 (_values!1985 newMap!16)) (store mapRest!2735 mapKey!2735 mapValue!2735))))

(declare-fun b!55831 () Bool)

(assert (=> b!55831 (= e!36709 tp_is_empty!2355)))

(declare-fun b!55832 () Bool)

(declare-fun e!36698 () Bool)

(assert (=> b!55832 (= e!36698 e!36703)))

(declare-fun b!55833 () Bool)

(declare-fun res!31414 () Bool)

(assert (=> b!55833 (=> (not res!31414) (not e!36712))))

(assert (=> b!55833 (= res!31414 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1967 (_keys!3622 (v!2327 (underlying!204 thiss!992)))))))))

(assert (=> b!55834 (= e!36706 (and tp!7733 tp_is_empty!2355 (array_inv!1019 (_keys!3622 newMap!16)) (array_inv!1020 (_values!1985 newMap!16)) e!36700))))

(declare-fun b!55835 () Bool)

(assert (=> b!55835 (= e!36699 e!36698)))

(declare-fun b!55836 () Bool)

(assert (=> b!55836 (= e!36711 (and e!36713 mapRes!2736))))

(declare-fun condMapEmpty!2735 () Bool)

(declare-fun mapDefault!2736 () ValueCell!834)

(assert (=> b!55836 (= condMapEmpty!2735 (= (arr!1739 (_values!1985 (v!2327 (underlying!204 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!834)) mapDefault!2736)))))

(declare-fun b!55837 () Bool)

(assert (=> b!55837 (= e!36704 tp_is_empty!2355)))

(declare-fun b!55838 () Bool)

(declare-fun res!31409 () Bool)

(assert (=> b!55838 (=> (not res!31409) (not e!36712))))

(declare-fun valid!228 (LongMapFixedSize!576) Bool)

(assert (=> b!55838 (= res!31409 (valid!228 newMap!16))))

(assert (= (and start!8368 res!31413) b!55833))

(assert (= (and b!55833 res!31414) b!55838))

(assert (= (and b!55838 res!31409) b!55825))

(assert (= (and b!55825 res!31416) b!55826))

(assert (= (and b!55826 res!31411) b!55821))

(assert (= (and b!55821 res!31417) b!55828))

(assert (= (and b!55828 (not res!31415)) b!55827))

(assert (= (and b!55827 (not res!31412)) b!55824))

(assert (= (and b!55824 (not res!31419)) b!55820))

(assert (= (and b!55820 (not res!31418)) b!55823))

(assert (= (and b!55823 (not res!31410)) b!55829))

(assert (= (and b!55836 condMapEmpty!2735) mapIsEmpty!2735))

(assert (= (and b!55836 (not condMapEmpty!2735)) mapNonEmpty!2735))

(get-info :version)

(assert (= (and mapNonEmpty!2735 ((_ is ValueCellFull!834) mapValue!2736)) b!55831))

(assert (= (and b!55836 ((_ is ValueCellFull!834) mapDefault!2736)) b!55818))

(assert (= b!55830 b!55836))

(assert (= b!55832 b!55830))

(assert (= b!55835 b!55832))

(assert (= start!8368 b!55835))

(assert (= (and b!55822 condMapEmpty!2736) mapIsEmpty!2736))

(assert (= (and b!55822 (not condMapEmpty!2736)) mapNonEmpty!2736))

(assert (= (and mapNonEmpty!2736 ((_ is ValueCellFull!834) mapValue!2735)) b!55819))

(assert (= (and b!55822 ((_ is ValueCellFull!834) mapDefault!2735)) b!55837))

(assert (= b!55834 b!55822))

(assert (= start!8368 b!55834))

(declare-fun b_lambda!2469 () Bool)

(assert (=> (not b_lambda!2469) (not b!55821)))

(declare-fun t!4674 () Bool)

(declare-fun tb!1229 () Bool)

(assert (=> (and b!55830 (= (defaultEntry!2002 (v!2327 (underlying!204 thiss!992))) (defaultEntry!2002 (v!2327 (underlying!204 thiss!992)))) t!4674) tb!1229))

(declare-fun result!2237 () Bool)

(assert (=> tb!1229 (= result!2237 tp_is_empty!2355)))

(assert (=> b!55821 t!4674))

(declare-fun b_and!3309 () Bool)

(assert (= b_and!3305 (and (=> t!4674 result!2237) b_and!3309)))

(declare-fun tb!1231 () Bool)

(declare-fun t!4676 () Bool)

(assert (=> (and b!55834 (= (defaultEntry!2002 newMap!16) (defaultEntry!2002 (v!2327 (underlying!204 thiss!992)))) t!4676) tb!1231))

(declare-fun result!2241 () Bool)

(assert (= result!2241 result!2237))

(assert (=> b!55821 t!4676))

(declare-fun b_and!3311 () Bool)

(assert (= b_and!3307 (and (=> t!4676 result!2241) b_and!3311)))

(declare-fun m!47071 () Bool)

(assert (=> b!55830 m!47071))

(declare-fun m!47073 () Bool)

(assert (=> b!55830 m!47073))

(declare-fun m!47075 () Bool)

(assert (=> b!55826 m!47075))

(declare-fun m!47077 () Bool)

(assert (=> b!55826 m!47077))

(declare-fun m!47079 () Bool)

(assert (=> b!55826 m!47079))

(declare-fun m!47081 () Bool)

(assert (=> b!55823 m!47081))

(declare-fun m!47083 () Bool)

(assert (=> mapNonEmpty!2735 m!47083))

(declare-fun m!47085 () Bool)

(assert (=> b!55824 m!47085))

(declare-fun m!47087 () Bool)

(assert (=> b!55827 m!47087))

(declare-fun m!47089 () Bool)

(assert (=> b!55838 m!47089))

(declare-fun m!47091 () Bool)

(assert (=> start!8368 m!47091))

(declare-fun m!47093 () Bool)

(assert (=> b!55820 m!47093))

(assert (=> b!55829 m!47075))

(assert (=> b!55829 m!47075))

(declare-fun m!47095 () Bool)

(assert (=> b!55829 m!47095))

(declare-fun m!47097 () Bool)

(assert (=> mapNonEmpty!2736 m!47097))

(declare-fun m!47099 () Bool)

(assert (=> b!55828 m!47099))

(declare-fun m!47101 () Bool)

(assert (=> b!55828 m!47101))

(assert (=> b!55828 m!47075))

(declare-fun m!47103 () Bool)

(assert (=> b!55828 m!47103))

(assert (=> b!55828 m!47075))

(assert (=> b!55828 m!47075))

(declare-fun m!47105 () Bool)

(assert (=> b!55828 m!47105))

(declare-fun m!47107 () Bool)

(assert (=> b!55821 m!47107))

(declare-fun m!47109 () Bool)

(assert (=> b!55821 m!47109))

(declare-fun m!47111 () Bool)

(assert (=> b!55821 m!47111))

(assert (=> b!55821 m!47075))

(assert (=> b!55821 m!47075))

(declare-fun m!47113 () Bool)

(assert (=> b!55821 m!47113))

(assert (=> b!55821 m!47109))

(assert (=> b!55821 m!47075))

(assert (=> b!55821 m!47111))

(declare-fun m!47115 () Bool)

(assert (=> b!55821 m!47115))

(assert (=> b!55821 m!47107))

(declare-fun m!47117 () Bool)

(assert (=> b!55834 m!47117))

(declare-fun m!47119 () Bool)

(assert (=> b!55834 m!47119))

(check-sat (not b!55827) (not b!55838) (not b!55823) (not b!55824) tp_is_empty!2355 b_and!3309 (not mapNonEmpty!2736) (not b!55826) (not start!8368) (not b!55830) (not b!55820) (not b_next!1877) (not b!55828) (not b!55821) (not b_next!1879) (not b_lambda!2469) (not b!55834) (not b!55829) (not mapNonEmpty!2735) b_and!3311)
(check-sat b_and!3309 b_and!3311 (not b_next!1877) (not b_next!1879))
