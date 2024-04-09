; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11114 () Bool)

(assert start!11114)

(declare-fun b!90533 () Bool)

(declare-fun b_free!2297 () Bool)

(declare-fun b_next!2297 () Bool)

(assert (=> b!90533 (= b_free!2297 (not b_next!2297))))

(declare-fun tp!9140 () Bool)

(declare-fun b_and!5445 () Bool)

(assert (=> b!90533 (= tp!9140 b_and!5445)))

(declare-fun b!90534 () Bool)

(declare-fun b_free!2299 () Bool)

(declare-fun b_next!2299 () Bool)

(assert (=> b!90534 (= b_free!2299 (not b_next!2299))))

(declare-fun tp!9141 () Bool)

(declare-fun b_and!5447 () Bool)

(assert (=> b!90534 (= tp!9141 b_and!5447)))

(declare-fun b!90519 () Bool)

(declare-fun e!58982 () Bool)

(declare-fun tp_is_empty!2565 () Bool)

(assert (=> b!90519 (= e!58982 tp_is_empty!2565)))

(declare-fun b!90520 () Bool)

(declare-fun e!58974 () Bool)

(declare-fun e!58980 () Bool)

(assert (=> b!90520 (= e!58974 e!58980)))

(declare-fun res!46173 () Bool)

(assert (=> b!90520 (=> (not res!46173) (not e!58980))))

(declare-datatypes ((V!3067 0))(
  ( (V!3068 (val!1327 Int)) )
))
(declare-datatypes ((array!4096 0))(
  ( (array!4097 (arr!1948 (Array (_ BitVec 32) (_ BitVec 64))) (size!2195 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!939 0))(
  ( (ValueCellFull!939 (v!2701 V!3067)) (EmptyCell!939) )
))
(declare-datatypes ((array!4098 0))(
  ( (array!4099 (arr!1949 (Array (_ BitVec 32) ValueCell!939)) (size!2196 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!786 0))(
  ( (LongMapFixedSize!787 (defaultEntry!2394 Int) (mask!6448 (_ BitVec 32)) (extraKeys!2225 (_ BitVec 32)) (zeroValue!2282 V!3067) (minValue!2282 V!3067) (_size!442 (_ BitVec 32)) (_keys!4074 array!4096) (_values!2377 array!4098) (_vacant!442 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!2266 0))(
  ( (tuple2!2267 (_1!1143 Bool) (_2!1143 LongMapFixedSize!786)) )
))
(declare-fun lt!43770 () tuple2!2266)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!90520 (= res!46173 (and (_1!1143 lt!43770) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!2708 0))(
  ( (Unit!2709) )
))
(declare-fun lt!43773 () Unit!2708)

(declare-fun e!58979 () Unit!2708)

(assert (=> b!90520 (= lt!43773 e!58979)))

(declare-datatypes ((Cell!590 0))(
  ( (Cell!591 (v!2702 LongMapFixedSize!786)) )
))
(declare-datatypes ((LongMap!590 0))(
  ( (LongMap!591 (underlying!306 Cell!590)) )
))
(declare-fun thiss!992 () LongMap!590)

(declare-datatypes ((tuple2!2268 0))(
  ( (tuple2!2269 (_1!1144 (_ BitVec 64)) (_2!1144 V!3067)) )
))
(declare-datatypes ((List!1570 0))(
  ( (Nil!1567) (Cons!1566 (h!2158 tuple2!2268) (t!5372 List!1570)) )
))
(declare-datatypes ((ListLongMap!1505 0))(
  ( (ListLongMap!1506 (toList!768 List!1570)) )
))
(declare-fun lt!43776 () ListLongMap!1505)

(declare-fun c!15055 () Bool)

(declare-fun contains!777 (ListLongMap!1505 (_ BitVec 64)) Bool)

(assert (=> b!90520 (= c!15055 (contains!777 lt!43776 (select (arr!1948 (_keys!4074 (v!2702 (underlying!306 thiss!992)))) from!355)))))

(declare-fun lt!43763 () V!3067)

(declare-fun newMap!16 () LongMapFixedSize!786)

(declare-fun update!129 (LongMapFixedSize!786 (_ BitVec 64) V!3067) tuple2!2266)

(assert (=> b!90520 (= lt!43770 (update!129 newMap!16 (select (arr!1948 (_keys!4074 (v!2702 (underlying!306 thiss!992)))) from!355) lt!43763))))

(declare-fun res!46171 () Bool)

(declare-fun e!58971 () Bool)

(assert (=> start!11114 (=> (not res!46171) (not e!58971))))

(declare-fun valid!346 (LongMap!590) Bool)

(assert (=> start!11114 (= res!46171 (valid!346 thiss!992))))

(assert (=> start!11114 e!58971))

(declare-fun e!58977 () Bool)

(assert (=> start!11114 e!58977))

(assert (=> start!11114 true))

(declare-fun e!58981 () Bool)

(assert (=> start!11114 e!58981))

(declare-fun b!90521 () Bool)

(declare-fun res!46170 () Bool)

(assert (=> b!90521 (=> (not res!46170) (not e!58971))))

(declare-fun valid!347 (LongMapFixedSize!786) Bool)

(assert (=> b!90521 (= res!46170 (valid!347 newMap!16))))

(declare-fun mapNonEmpty!3513 () Bool)

(declare-fun mapRes!3514 () Bool)

(declare-fun tp!9142 () Bool)

(declare-fun e!58978 () Bool)

(assert (=> mapNonEmpty!3513 (= mapRes!3514 (and tp!9142 e!58978))))

(declare-fun mapRest!3513 () (Array (_ BitVec 32) ValueCell!939))

(declare-fun mapValue!3514 () ValueCell!939)

(declare-fun mapKey!3514 () (_ BitVec 32))

(assert (=> mapNonEmpty!3513 (= (arr!1949 (_values!2377 newMap!16)) (store mapRest!3513 mapKey!3514 mapValue!3514))))

(declare-fun b!90522 () Bool)

(declare-fun e!58972 () Bool)

(assert (=> b!90522 (= e!58972 tp_is_empty!2565)))

(declare-fun b!90523 () Bool)

(declare-fun Unit!2710 () Unit!2708)

(assert (=> b!90523 (= e!58979 Unit!2710)))

(declare-fun b!90524 () Bool)

(declare-fun e!58970 () Bool)

(assert (=> b!90524 (= e!58970 e!58974)))

(declare-fun res!46176 () Bool)

(assert (=> b!90524 (=> (not res!46176) (not e!58974))))

(assert (=> b!90524 (= res!46176 (and (not (= (select (arr!1948 (_keys!4074 (v!2702 (underlying!306 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1948 (_keys!4074 (v!2702 (underlying!306 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun get!1241 (ValueCell!939 V!3067) V!3067)

(declare-fun dynLambda!360 (Int (_ BitVec 64)) V!3067)

(assert (=> b!90524 (= lt!43763 (get!1241 (select (arr!1949 (_values!2377 (v!2702 (underlying!306 thiss!992)))) from!355) (dynLambda!360 (defaultEntry!2394 (v!2702 (underlying!306 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!3513 () Bool)

(assert (=> mapIsEmpty!3513 mapRes!3514))

(declare-fun b!90525 () Bool)

(assert (=> b!90525 (= e!58978 tp_is_empty!2565)))

(declare-fun b!90526 () Bool)

(declare-fun e!58984 () Bool)

(declare-fun mapRes!3513 () Bool)

(assert (=> b!90526 (= e!58984 (and e!58982 mapRes!3513))))

(declare-fun condMapEmpty!3514 () Bool)

(declare-fun mapDefault!3513 () ValueCell!939)

(assert (=> b!90526 (= condMapEmpty!3514 (= (arr!1949 (_values!2377 (v!2702 (underlying!306 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!939)) mapDefault!3513)))))

(declare-fun b!90527 () Bool)

(assert (=> b!90527 (= e!58980 (not true))))

(declare-fun lt!43764 () ListLongMap!1505)

(declare-fun map!1212 (LongMapFixedSize!786) ListLongMap!1505)

(assert (=> b!90527 (= lt!43764 (map!1212 (_2!1143 lt!43770)))))

(declare-fun lt!43772 () ListLongMap!1505)

(declare-fun getCurrentListMap!450 (array!4096 array!4098 (_ BitVec 32) (_ BitVec 32) V!3067 V!3067 (_ BitVec 32) Int) ListLongMap!1505)

(assert (=> b!90527 (= lt!43772 (getCurrentListMap!450 (_keys!4074 (v!2702 (underlying!306 thiss!992))) (_values!2377 (v!2702 (underlying!306 thiss!992))) (mask!6448 (v!2702 (underlying!306 thiss!992))) (extraKeys!2225 (v!2702 (underlying!306 thiss!992))) (zeroValue!2282 (v!2702 (underlying!306 thiss!992))) (minValue!2282 (v!2702 (underlying!306 thiss!992))) from!355 (defaultEntry!2394 (v!2702 (underlying!306 thiss!992)))))))

(declare-fun lt!43767 () ListLongMap!1505)

(declare-fun lt!43769 () ListLongMap!1505)

(declare-fun lt!43768 () tuple2!2268)

(declare-fun lt!43777 () tuple2!2268)

(declare-fun +!125 (ListLongMap!1505 tuple2!2268) ListLongMap!1505)

(assert (=> b!90527 (= (+!125 lt!43769 lt!43777) (+!125 (+!125 lt!43767 lt!43777) lt!43768))))

(assert (=> b!90527 (= lt!43777 (tuple2!2269 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2282 (v!2702 (underlying!306 thiss!992)))))))

(declare-fun lt!43775 () Unit!2708)

(declare-fun addCommutativeForDiffKeys!44 (ListLongMap!1505 (_ BitVec 64) V!3067 (_ BitVec 64) V!3067) Unit!2708)

(assert (=> b!90527 (= lt!43775 (addCommutativeForDiffKeys!44 lt!43767 (select (arr!1948 (_keys!4074 (v!2702 (underlying!306 thiss!992)))) from!355) lt!43763 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2282 (v!2702 (underlying!306 thiss!992)))))))

(declare-fun lt!43771 () ListLongMap!1505)

(assert (=> b!90527 (= lt!43771 lt!43769)))

(assert (=> b!90527 (= lt!43769 (+!125 lt!43767 lt!43768))))

(declare-fun lt!43760 () ListLongMap!1505)

(declare-fun lt!43762 () tuple2!2268)

(assert (=> b!90527 (= lt!43771 (+!125 lt!43760 lt!43762))))

(declare-fun lt!43759 () ListLongMap!1505)

(assert (=> b!90527 (= lt!43767 (+!125 lt!43759 lt!43762))))

(assert (=> b!90527 (= lt!43762 (tuple2!2269 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2282 (v!2702 (underlying!306 thiss!992)))))))

(assert (=> b!90527 (= lt!43760 (+!125 lt!43759 lt!43768))))

(assert (=> b!90527 (= lt!43768 (tuple2!2269 (select (arr!1948 (_keys!4074 (v!2702 (underlying!306 thiss!992)))) from!355) lt!43763))))

(declare-fun lt!43778 () Unit!2708)

(assert (=> b!90527 (= lt!43778 (addCommutativeForDiffKeys!44 lt!43759 (select (arr!1948 (_keys!4074 (v!2702 (underlying!306 thiss!992)))) from!355) lt!43763 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2282 (v!2702 (underlying!306 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!89 (array!4096 array!4098 (_ BitVec 32) (_ BitVec 32) V!3067 V!3067 (_ BitVec 32) Int) ListLongMap!1505)

(assert (=> b!90527 (= lt!43759 (getCurrentListMapNoExtraKeys!89 (_keys!4074 (v!2702 (underlying!306 thiss!992))) (_values!2377 (v!2702 (underlying!306 thiss!992))) (mask!6448 (v!2702 (underlying!306 thiss!992))) (extraKeys!2225 (v!2702 (underlying!306 thiss!992))) (zeroValue!2282 (v!2702 (underlying!306 thiss!992))) (minValue!2282 (v!2702 (underlying!306 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2394 (v!2702 (underlying!306 thiss!992)))))))

(declare-fun b!90528 () Bool)

(declare-fun Unit!2711 () Unit!2708)

(assert (=> b!90528 (= e!58979 Unit!2711)))

(declare-fun lt!43765 () Unit!2708)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!80 (array!4096 array!4098 (_ BitVec 32) (_ BitVec 32) V!3067 V!3067 (_ BitVec 64) (_ BitVec 32) Int) Unit!2708)

(assert (=> b!90528 (= lt!43765 (lemmaListMapContainsThenArrayContainsFrom!80 (_keys!4074 (v!2702 (underlying!306 thiss!992))) (_values!2377 (v!2702 (underlying!306 thiss!992))) (mask!6448 (v!2702 (underlying!306 thiss!992))) (extraKeys!2225 (v!2702 (underlying!306 thiss!992))) (zeroValue!2282 (v!2702 (underlying!306 thiss!992))) (minValue!2282 (v!2702 (underlying!306 thiss!992))) (select (arr!1948 (_keys!4074 (v!2702 (underlying!306 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2394 (v!2702 (underlying!306 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4096 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!90528 (arrayContainsKey!0 (_keys!4074 (v!2702 (underlying!306 thiss!992))) (select (arr!1948 (_keys!4074 (v!2702 (underlying!306 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!43766 () Unit!2708)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4096 (_ BitVec 32) (_ BitVec 32)) Unit!2708)

(assert (=> b!90528 (= lt!43766 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4074 (v!2702 (underlying!306 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1571 0))(
  ( (Nil!1568) (Cons!1567 (h!2159 (_ BitVec 64)) (t!5373 List!1571)) )
))
(declare-fun arrayNoDuplicates!0 (array!4096 (_ BitVec 32) List!1571) Bool)

(assert (=> b!90528 (arrayNoDuplicates!0 (_keys!4074 (v!2702 (underlying!306 thiss!992))) from!355 Nil!1568)))

(declare-fun lt!43774 () Unit!2708)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4096 (_ BitVec 32) (_ BitVec 64) List!1571) Unit!2708)

(assert (=> b!90528 (= lt!43774 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4074 (v!2702 (underlying!306 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1948 (_keys!4074 (v!2702 (underlying!306 thiss!992)))) from!355) (Cons!1567 (select (arr!1948 (_keys!4074 (v!2702 (underlying!306 thiss!992)))) from!355) Nil!1568)))))

(assert (=> b!90528 false))

(declare-fun b!90529 () Bool)

(declare-fun e!58985 () Bool)

(declare-fun e!58986 () Bool)

(assert (=> b!90529 (= e!58985 (and e!58986 mapRes!3514))))

(declare-fun condMapEmpty!3513 () Bool)

(declare-fun mapDefault!3514 () ValueCell!939)

(assert (=> b!90529 (= condMapEmpty!3513 (= (arr!1949 (_values!2377 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!939)) mapDefault!3514)))))

(declare-fun b!90530 () Bool)

(assert (=> b!90530 (= e!58971 e!58970)))

(declare-fun res!46172 () Bool)

(assert (=> b!90530 (=> (not res!46172) (not e!58970))))

(declare-fun lt!43761 () ListLongMap!1505)

(assert (=> b!90530 (= res!46172 (= lt!43761 lt!43776))))

(assert (=> b!90530 (= lt!43776 (map!1212 newMap!16))))

(assert (=> b!90530 (= lt!43761 (getCurrentListMap!450 (_keys!4074 (v!2702 (underlying!306 thiss!992))) (_values!2377 (v!2702 (underlying!306 thiss!992))) (mask!6448 (v!2702 (underlying!306 thiss!992))) (extraKeys!2225 (v!2702 (underlying!306 thiss!992))) (zeroValue!2282 (v!2702 (underlying!306 thiss!992))) (minValue!2282 (v!2702 (underlying!306 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2394 (v!2702 (underlying!306 thiss!992)))))))

(declare-fun b!90531 () Bool)

(declare-fun res!46174 () Bool)

(assert (=> b!90531 (=> (not res!46174) (not e!58971))))

(assert (=> b!90531 (= res!46174 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6448 newMap!16)) (_size!442 (v!2702 (underlying!306 thiss!992)))))))

(declare-fun b!90532 () Bool)

(declare-fun e!58975 () Bool)

(assert (=> b!90532 (= e!58977 e!58975)))

(declare-fun e!58983 () Bool)

(declare-fun array_inv!1169 (array!4096) Bool)

(declare-fun array_inv!1170 (array!4098) Bool)

(assert (=> b!90533 (= e!58983 (and tp!9140 tp_is_empty!2565 (array_inv!1169 (_keys!4074 (v!2702 (underlying!306 thiss!992)))) (array_inv!1170 (_values!2377 (v!2702 (underlying!306 thiss!992)))) e!58984))))

(declare-fun mapNonEmpty!3514 () Bool)

(declare-fun tp!9139 () Bool)

(assert (=> mapNonEmpty!3514 (= mapRes!3513 (and tp!9139 e!58972))))

(declare-fun mapValue!3513 () ValueCell!939)

(declare-fun mapKey!3513 () (_ BitVec 32))

(declare-fun mapRest!3514 () (Array (_ BitVec 32) ValueCell!939))

(assert (=> mapNonEmpty!3514 (= (arr!1949 (_values!2377 (v!2702 (underlying!306 thiss!992)))) (store mapRest!3514 mapKey!3513 mapValue!3513))))

(assert (=> b!90534 (= e!58981 (and tp!9141 tp_is_empty!2565 (array_inv!1169 (_keys!4074 newMap!16)) (array_inv!1170 (_values!2377 newMap!16)) e!58985))))

(declare-fun b!90535 () Bool)

(declare-fun res!46175 () Bool)

(assert (=> b!90535 (=> (not res!46175) (not e!58971))))

(assert (=> b!90535 (= res!46175 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2195 (_keys!4074 (v!2702 (underlying!306 thiss!992)))))))))

(declare-fun b!90536 () Bool)

(assert (=> b!90536 (= e!58986 tp_is_empty!2565)))

(declare-fun b!90537 () Bool)

(assert (=> b!90537 (= e!58975 e!58983)))

(declare-fun mapIsEmpty!3514 () Bool)

(assert (=> mapIsEmpty!3514 mapRes!3513))

(assert (= (and start!11114 res!46171) b!90535))

(assert (= (and b!90535 res!46175) b!90521))

(assert (= (and b!90521 res!46170) b!90531))

(assert (= (and b!90531 res!46174) b!90530))

(assert (= (and b!90530 res!46172) b!90524))

(assert (= (and b!90524 res!46176) b!90520))

(assert (= (and b!90520 c!15055) b!90528))

(assert (= (and b!90520 (not c!15055)) b!90523))

(assert (= (and b!90520 res!46173) b!90527))

(assert (= (and b!90526 condMapEmpty!3514) mapIsEmpty!3514))

(assert (= (and b!90526 (not condMapEmpty!3514)) mapNonEmpty!3514))

(get-info :version)

(assert (= (and mapNonEmpty!3514 ((_ is ValueCellFull!939) mapValue!3513)) b!90522))

(assert (= (and b!90526 ((_ is ValueCellFull!939) mapDefault!3513)) b!90519))

(assert (= b!90533 b!90526))

(assert (= b!90537 b!90533))

(assert (= b!90532 b!90537))

(assert (= start!11114 b!90532))

(assert (= (and b!90529 condMapEmpty!3513) mapIsEmpty!3513))

(assert (= (and b!90529 (not condMapEmpty!3513)) mapNonEmpty!3513))

(assert (= (and mapNonEmpty!3513 ((_ is ValueCellFull!939) mapValue!3514)) b!90525))

(assert (= (and b!90529 ((_ is ValueCellFull!939) mapDefault!3514)) b!90536))

(assert (= b!90534 b!90529))

(assert (= start!11114 b!90534))

(declare-fun b_lambda!3999 () Bool)

(assert (=> (not b_lambda!3999) (not b!90524)))

(declare-fun t!5369 () Bool)

(declare-fun tb!1769 () Bool)

(assert (=> (and b!90533 (= (defaultEntry!2394 (v!2702 (underlying!306 thiss!992))) (defaultEntry!2394 (v!2702 (underlying!306 thiss!992)))) t!5369) tb!1769))

(declare-fun result!3031 () Bool)

(assert (=> tb!1769 (= result!3031 tp_is_empty!2565)))

(assert (=> b!90524 t!5369))

(declare-fun b_and!5449 () Bool)

(assert (= b_and!5445 (and (=> t!5369 result!3031) b_and!5449)))

(declare-fun tb!1771 () Bool)

(declare-fun t!5371 () Bool)

(assert (=> (and b!90534 (= (defaultEntry!2394 newMap!16) (defaultEntry!2394 (v!2702 (underlying!306 thiss!992)))) t!5371) tb!1771))

(declare-fun result!3035 () Bool)

(assert (= result!3035 result!3031))

(assert (=> b!90524 t!5371))

(declare-fun b_and!5451 () Bool)

(assert (= b_and!5447 (and (=> t!5371 result!3035) b_and!5451)))

(declare-fun m!96973 () Bool)

(assert (=> mapNonEmpty!3514 m!96973))

(declare-fun m!96975 () Bool)

(assert (=> start!11114 m!96975))

(declare-fun m!96977 () Bool)

(assert (=> b!90528 m!96977))

(declare-fun m!96979 () Bool)

(assert (=> b!90528 m!96979))

(declare-fun m!96981 () Bool)

(assert (=> b!90528 m!96981))

(declare-fun m!96983 () Bool)

(assert (=> b!90528 m!96983))

(assert (=> b!90528 m!96981))

(assert (=> b!90528 m!96981))

(declare-fun m!96985 () Bool)

(assert (=> b!90528 m!96985))

(assert (=> b!90528 m!96981))

(declare-fun m!96987 () Bool)

(assert (=> b!90528 m!96987))

(declare-fun m!96989 () Bool)

(assert (=> b!90534 m!96989))

(declare-fun m!96991 () Bool)

(assert (=> b!90534 m!96991))

(declare-fun m!96993 () Bool)

(assert (=> mapNonEmpty!3513 m!96993))

(declare-fun m!96995 () Bool)

(assert (=> b!90527 m!96995))

(assert (=> b!90527 m!96981))

(declare-fun m!96997 () Bool)

(assert (=> b!90527 m!96997))

(assert (=> b!90527 m!96981))

(declare-fun m!96999 () Bool)

(assert (=> b!90527 m!96999))

(declare-fun m!97001 () Bool)

(assert (=> b!90527 m!97001))

(declare-fun m!97003 () Bool)

(assert (=> b!90527 m!97003))

(assert (=> b!90527 m!96981))

(declare-fun m!97005 () Bool)

(assert (=> b!90527 m!97005))

(declare-fun m!97007 () Bool)

(assert (=> b!90527 m!97007))

(declare-fun m!97009 () Bool)

(assert (=> b!90527 m!97009))

(declare-fun m!97011 () Bool)

(assert (=> b!90527 m!97011))

(declare-fun m!97013 () Bool)

(assert (=> b!90527 m!97013))

(declare-fun m!97015 () Bool)

(assert (=> b!90527 m!97015))

(assert (=> b!90527 m!97013))

(declare-fun m!97017 () Bool)

(assert (=> b!90527 m!97017))

(declare-fun m!97019 () Bool)

(assert (=> b!90521 m!97019))

(assert (=> b!90520 m!96981))

(assert (=> b!90520 m!96981))

(declare-fun m!97021 () Bool)

(assert (=> b!90520 m!97021))

(assert (=> b!90520 m!96981))

(declare-fun m!97023 () Bool)

(assert (=> b!90520 m!97023))

(declare-fun m!97025 () Bool)

(assert (=> b!90530 m!97025))

(declare-fun m!97027 () Bool)

(assert (=> b!90530 m!97027))

(declare-fun m!97029 () Bool)

(assert (=> b!90533 m!97029))

(declare-fun m!97031 () Bool)

(assert (=> b!90533 m!97031))

(assert (=> b!90524 m!96981))

(declare-fun m!97033 () Bool)

(assert (=> b!90524 m!97033))

(declare-fun m!97035 () Bool)

(assert (=> b!90524 m!97035))

(assert (=> b!90524 m!97033))

(assert (=> b!90524 m!97035))

(declare-fun m!97037 () Bool)

(assert (=> b!90524 m!97037))

(check-sat (not b_lambda!3999) b_and!5451 (not b!90528) (not b!90534) (not mapNonEmpty!3513) (not b_next!2299) tp_is_empty!2565 (not b!90521) b_and!5449 (not b!90533) (not b!90524) (not mapNonEmpty!3514) (not start!11114) (not b!90527) (not b!90530) (not b!90520) (not b_next!2297))
(check-sat b_and!5449 b_and!5451 (not b_next!2297) (not b_next!2299))
