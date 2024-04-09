; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111712 () Bool)

(assert start!111712)

(declare-fun b_free!30333 () Bool)

(declare-fun b_next!30333 () Bool)

(assert (=> start!111712 (= b_free!30333 (not b_next!30333))))

(declare-fun tp!106476 () Bool)

(declare-fun b_and!48835 () Bool)

(assert (=> start!111712 (= tp!106476 b_and!48835)))

(declare-fun mapNonEmpty!55877 () Bool)

(declare-fun mapRes!55877 () Bool)

(declare-fun tp!106475 () Bool)

(declare-fun e!754312 () Bool)

(assert (=> mapNonEmpty!55877 (= mapRes!55877 (and tp!106475 e!754312))))

(declare-datatypes ((V!53307 0))(
  ( (V!53308 (val!18151 Int)) )
))
(declare-datatypes ((ValueCell!17178 0))(
  ( (ValueCellFull!17178 (v!20779 V!53307)) (EmptyCell!17178) )
))
(declare-datatypes ((array!89181 0))(
  ( (array!89182 (arr!43060 (Array (_ BitVec 32) ValueCell!17178)) (size!43611 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89181)

(declare-fun mapValue!55877 () ValueCell!17178)

(declare-fun mapKey!55877 () (_ BitVec 32))

(declare-fun mapRest!55877 () (Array (_ BitVec 32) ValueCell!17178))

(assert (=> mapNonEmpty!55877 (= (arr!43060 _values!1337) (store mapRest!55877 mapKey!55877 mapValue!55877))))

(declare-fun b!1322944 () Bool)

(declare-fun e!754309 () Bool)

(declare-fun e!754311 () Bool)

(assert (=> b!1322944 (= e!754309 (and e!754311 mapRes!55877))))

(declare-fun condMapEmpty!55877 () Bool)

(declare-fun mapDefault!55877 () ValueCell!17178)

(assert (=> b!1322944 (= condMapEmpty!55877 (= (arr!43060 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17178)) mapDefault!55877)))))

(declare-fun b!1322945 () Bool)

(declare-fun e!754310 () Bool)

(assert (=> b!1322945 (= e!754310 (not true))))

(declare-datatypes ((tuple2!23550 0))(
  ( (tuple2!23551 (_1!11785 (_ BitVec 64)) (_2!11785 V!53307)) )
))
(declare-datatypes ((List!30723 0))(
  ( (Nil!30720) (Cons!30719 (h!31928 tuple2!23550) (t!44612 List!30723)) )
))
(declare-datatypes ((ListLongMap!21219 0))(
  ( (ListLongMap!21220 (toList!10625 List!30723)) )
))
(declare-fun lt!588596 () ListLongMap!21219)

(declare-fun minValue!1279 () V!53307)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun contains!8716 (ListLongMap!21219 (_ BitVec 64)) Bool)

(declare-fun +!4572 (ListLongMap!21219 tuple2!23550) ListLongMap!21219)

(assert (=> b!1322945 (contains!8716 (+!4572 lt!588596 (tuple2!23551 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) k0!1164)))

(declare-datatypes ((Unit!43544 0))(
  ( (Unit!43545) )
))
(declare-fun lt!588601 () Unit!43544)

(declare-fun addStillContains!1153 (ListLongMap!21219 (_ BitVec 64) V!53307 (_ BitVec 64)) Unit!43544)

(assert (=> b!1322945 (= lt!588601 (addStillContains!1153 lt!588596 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 k0!1164))))

(assert (=> b!1322945 (contains!8716 lt!588596 k0!1164)))

(declare-fun lt!588599 () ListLongMap!21219)

(declare-fun lt!588602 () tuple2!23550)

(assert (=> b!1322945 (= lt!588596 (+!4572 lt!588599 lt!588602))))

(declare-fun lt!588604 () Unit!43544)

(declare-fun zeroValue!1279 () V!53307)

(assert (=> b!1322945 (= lt!588604 (addStillContains!1153 lt!588599 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k0!1164))))

(assert (=> b!1322945 (contains!8716 lt!588599 k0!1164)))

(declare-datatypes ((array!89183 0))(
  ( (array!89184 (arr!43061 (Array (_ BitVec 32) (_ BitVec 64))) (size!43612 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89183)

(declare-fun lt!588600 () Unit!43544)

(declare-fun lt!588598 () V!53307)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!187 ((_ BitVec 64) (_ BitVec 64) V!53307 ListLongMap!21219) Unit!43544)

(assert (=> b!1322945 (= lt!588600 (lemmaInListMapAfterAddingDiffThenInBefore!187 k0!1164 (select (arr!43061 _keys!1609) from!2000) lt!588598 lt!588599))))

(declare-fun lt!588594 () ListLongMap!21219)

(assert (=> b!1322945 (contains!8716 lt!588594 k0!1164)))

(declare-fun lt!588597 () Unit!43544)

(assert (=> b!1322945 (= lt!588597 (lemmaInListMapAfterAddingDiffThenInBefore!187 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!588594))))

(declare-fun lt!588595 () ListLongMap!21219)

(assert (=> b!1322945 (contains!8716 lt!588595 k0!1164)))

(declare-fun lt!588603 () Unit!43544)

(assert (=> b!1322945 (= lt!588603 (lemmaInListMapAfterAddingDiffThenInBefore!187 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!588595))))

(assert (=> b!1322945 (= lt!588595 (+!4572 lt!588594 lt!588602))))

(assert (=> b!1322945 (= lt!588602 (tuple2!23551 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1322945 (= lt!588594 (+!4572 lt!588599 (tuple2!23551 (select (arr!43061 _keys!1609) from!2000) lt!588598)))))

(declare-fun defaultEntry!1340 () Int)

(declare-fun get!21730 (ValueCell!17178 V!53307) V!53307)

(declare-fun dynLambda!3609 (Int (_ BitVec 64)) V!53307)

(assert (=> b!1322945 (= lt!588598 (get!21730 (select (arr!43060 _values!1337) from!2000) (dynLambda!3609 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6287 (array!89183 array!89181 (_ BitVec 32) (_ BitVec 32) V!53307 V!53307 (_ BitVec 32) Int) ListLongMap!21219)

(assert (=> b!1322945 (= lt!588599 (getCurrentListMapNoExtraKeys!6287 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1322946 () Bool)

(declare-fun tp_is_empty!36153 () Bool)

(assert (=> b!1322946 (= e!754311 tp_is_empty!36153)))

(declare-fun res!878200 () Bool)

(assert (=> start!111712 (=> (not res!878200) (not e!754310))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111712 (= res!878200 (validMask!0 mask!2019))))

(assert (=> start!111712 e!754310))

(declare-fun array_inv!32463 (array!89183) Bool)

(assert (=> start!111712 (array_inv!32463 _keys!1609)))

(assert (=> start!111712 true))

(assert (=> start!111712 tp_is_empty!36153))

(declare-fun array_inv!32464 (array!89181) Bool)

(assert (=> start!111712 (and (array_inv!32464 _values!1337) e!754309)))

(assert (=> start!111712 tp!106476))

(declare-fun b!1322947 () Bool)

(declare-fun res!878198 () Bool)

(assert (=> b!1322947 (=> (not res!878198) (not e!754310))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1322947 (= res!878198 (validKeyInArray!0 (select (arr!43061 _keys!1609) from!2000)))))

(declare-fun b!1322948 () Bool)

(assert (=> b!1322948 (= e!754312 tp_is_empty!36153)))

(declare-fun b!1322949 () Bool)

(declare-fun res!878195 () Bool)

(assert (=> b!1322949 (=> (not res!878195) (not e!754310))))

(declare-fun getCurrentListMap!5565 (array!89183 array!89181 (_ BitVec 32) (_ BitVec 32) V!53307 V!53307 (_ BitVec 32) Int) ListLongMap!21219)

(assert (=> b!1322949 (= res!878195 (contains!8716 (getCurrentListMap!5565 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun mapIsEmpty!55877 () Bool)

(assert (=> mapIsEmpty!55877 mapRes!55877))

(declare-fun b!1322950 () Bool)

(declare-fun res!878194 () Bool)

(assert (=> b!1322950 (=> (not res!878194) (not e!754310))))

(declare-datatypes ((List!30724 0))(
  ( (Nil!30721) (Cons!30720 (h!31929 (_ BitVec 64)) (t!44613 List!30724)) )
))
(declare-fun arrayNoDuplicates!0 (array!89183 (_ BitVec 32) List!30724) Bool)

(assert (=> b!1322950 (= res!878194 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30721))))

(declare-fun b!1322951 () Bool)

(declare-fun res!878199 () Bool)

(assert (=> b!1322951 (=> (not res!878199) (not e!754310))))

(assert (=> b!1322951 (= res!878199 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43612 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1322952 () Bool)

(declare-fun res!878197 () Bool)

(assert (=> b!1322952 (=> (not res!878197) (not e!754310))))

(assert (=> b!1322952 (= res!878197 (not (= (select (arr!43061 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1322953 () Bool)

(declare-fun res!878193 () Bool)

(assert (=> b!1322953 (=> (not res!878193) (not e!754310))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89183 (_ BitVec 32)) Bool)

(assert (=> b!1322953 (= res!878193 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1322954 () Bool)

(declare-fun res!878196 () Bool)

(assert (=> b!1322954 (=> (not res!878196) (not e!754310))))

(assert (=> b!1322954 (= res!878196 (and (= (size!43611 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43612 _keys!1609) (size!43611 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(assert (= (and start!111712 res!878200) b!1322954))

(assert (= (and b!1322954 res!878196) b!1322953))

(assert (= (and b!1322953 res!878193) b!1322950))

(assert (= (and b!1322950 res!878194) b!1322951))

(assert (= (and b!1322951 res!878199) b!1322949))

(assert (= (and b!1322949 res!878195) b!1322952))

(assert (= (and b!1322952 res!878197) b!1322947))

(assert (= (and b!1322947 res!878198) b!1322945))

(assert (= (and b!1322944 condMapEmpty!55877) mapIsEmpty!55877))

(assert (= (and b!1322944 (not condMapEmpty!55877)) mapNonEmpty!55877))

(get-info :version)

(assert (= (and mapNonEmpty!55877 ((_ is ValueCellFull!17178) mapValue!55877)) b!1322948))

(assert (= (and b!1322944 ((_ is ValueCellFull!17178) mapDefault!55877)) b!1322946))

(assert (= start!111712 b!1322944))

(declare-fun b_lambda!23669 () Bool)

(assert (=> (not b_lambda!23669) (not b!1322945)))

(declare-fun t!44611 () Bool)

(declare-fun tb!11693 () Bool)

(assert (=> (and start!111712 (= defaultEntry!1340 defaultEntry!1340) t!44611) tb!11693))

(declare-fun result!24433 () Bool)

(assert (=> tb!11693 (= result!24433 tp_is_empty!36153)))

(assert (=> b!1322945 t!44611))

(declare-fun b_and!48837 () Bool)

(assert (= b_and!48835 (and (=> t!44611 result!24433) b_and!48837)))

(declare-fun m!1211555 () Bool)

(assert (=> b!1322953 m!1211555))

(declare-fun m!1211557 () Bool)

(assert (=> b!1322947 m!1211557))

(assert (=> b!1322947 m!1211557))

(declare-fun m!1211559 () Bool)

(assert (=> b!1322947 m!1211559))

(declare-fun m!1211561 () Bool)

(assert (=> start!111712 m!1211561))

(declare-fun m!1211563 () Bool)

(assert (=> start!111712 m!1211563))

(declare-fun m!1211565 () Bool)

(assert (=> start!111712 m!1211565))

(declare-fun m!1211567 () Bool)

(assert (=> b!1322945 m!1211567))

(declare-fun m!1211569 () Bool)

(assert (=> b!1322945 m!1211569))

(declare-fun m!1211571 () Bool)

(assert (=> b!1322945 m!1211571))

(declare-fun m!1211573 () Bool)

(assert (=> b!1322945 m!1211573))

(declare-fun m!1211575 () Bool)

(assert (=> b!1322945 m!1211575))

(declare-fun m!1211577 () Bool)

(assert (=> b!1322945 m!1211577))

(assert (=> b!1322945 m!1211557))

(declare-fun m!1211579 () Bool)

(assert (=> b!1322945 m!1211579))

(declare-fun m!1211581 () Bool)

(assert (=> b!1322945 m!1211581))

(declare-fun m!1211583 () Bool)

(assert (=> b!1322945 m!1211583))

(declare-fun m!1211585 () Bool)

(assert (=> b!1322945 m!1211585))

(assert (=> b!1322945 m!1211583))

(assert (=> b!1322945 m!1211575))

(declare-fun m!1211587 () Bool)

(assert (=> b!1322945 m!1211587))

(declare-fun m!1211589 () Bool)

(assert (=> b!1322945 m!1211589))

(declare-fun m!1211591 () Bool)

(assert (=> b!1322945 m!1211591))

(declare-fun m!1211593 () Bool)

(assert (=> b!1322945 m!1211593))

(declare-fun m!1211595 () Bool)

(assert (=> b!1322945 m!1211595))

(declare-fun m!1211597 () Bool)

(assert (=> b!1322945 m!1211597))

(declare-fun m!1211599 () Bool)

(assert (=> b!1322945 m!1211599))

(assert (=> b!1322945 m!1211591))

(assert (=> b!1322945 m!1211557))

(declare-fun m!1211601 () Bool)

(assert (=> b!1322945 m!1211601))

(declare-fun m!1211603 () Bool)

(assert (=> b!1322949 m!1211603))

(assert (=> b!1322949 m!1211603))

(declare-fun m!1211605 () Bool)

(assert (=> b!1322949 m!1211605))

(declare-fun m!1211607 () Bool)

(assert (=> mapNonEmpty!55877 m!1211607))

(assert (=> b!1322952 m!1211557))

(declare-fun m!1211609 () Bool)

(assert (=> b!1322950 m!1211609))

(check-sat (not b_next!30333) (not start!111712) b_and!48837 (not b!1322945) (not b_lambda!23669) (not b!1322953) tp_is_empty!36153 (not mapNonEmpty!55877) (not b!1322950) (not b!1322947) (not b!1322949))
(check-sat b_and!48837 (not b_next!30333))
