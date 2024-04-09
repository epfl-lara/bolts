; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111634 () Bool)

(assert start!111634)

(declare-fun b_free!30255 () Bool)

(declare-fun b_next!30255 () Bool)

(assert (=> start!111634 (= b_free!30255 (not b_next!30255))))

(declare-fun tp!106241 () Bool)

(declare-fun b_and!48679 () Bool)

(assert (=> start!111634 (= tp!106241 b_and!48679)))

(declare-fun b!1321579 () Bool)

(declare-fun e!753725 () Bool)

(declare-fun tp_is_empty!36075 () Bool)

(assert (=> b!1321579 (= e!753725 tp_is_empty!36075)))

(declare-fun b!1321580 () Bool)

(declare-fun res!877263 () Bool)

(declare-fun e!753724 () Bool)

(assert (=> b!1321580 (=> (not res!877263) (not e!753724))))

(declare-datatypes ((array!89035 0))(
  ( (array!89036 (arr!42987 (Array (_ BitVec 32) (_ BitVec 64))) (size!43538 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89035)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1321580 (= res!877263 (not (= (select (arr!42987 _keys!1609) from!2000) k0!1164)))))

(declare-fun mapIsEmpty!55760 () Bool)

(declare-fun mapRes!55760 () Bool)

(assert (=> mapIsEmpty!55760 mapRes!55760))

(declare-fun res!877259 () Bool)

(assert (=> start!111634 (=> (not res!877259) (not e!753724))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111634 (= res!877259 (validMask!0 mask!2019))))

(assert (=> start!111634 e!753724))

(declare-fun array_inv!32411 (array!89035) Bool)

(assert (=> start!111634 (array_inv!32411 _keys!1609)))

(assert (=> start!111634 true))

(assert (=> start!111634 tp_is_empty!36075))

(declare-datatypes ((V!53203 0))(
  ( (V!53204 (val!18112 Int)) )
))
(declare-datatypes ((ValueCell!17139 0))(
  ( (ValueCellFull!17139 (v!20740 V!53203)) (EmptyCell!17139) )
))
(declare-datatypes ((array!89037 0))(
  ( (array!89038 (arr!42988 (Array (_ BitVec 32) ValueCell!17139)) (size!43539 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89037)

(declare-fun e!753727 () Bool)

(declare-fun array_inv!32412 (array!89037) Bool)

(assert (=> start!111634 (and (array_inv!32412 _values!1337) e!753727)))

(assert (=> start!111634 tp!106241))

(declare-fun b!1321581 () Bool)

(declare-fun e!753723 () Bool)

(assert (=> b!1321581 (= e!753723 tp_is_empty!36075)))

(declare-fun b!1321582 () Bool)

(declare-fun res!877264 () Bool)

(assert (=> b!1321582 (=> (not res!877264) (not e!753724))))

(declare-datatypes ((List!30668 0))(
  ( (Nil!30665) (Cons!30664 (h!31873 (_ BitVec 64)) (t!44479 List!30668)) )
))
(declare-fun arrayNoDuplicates!0 (array!89035 (_ BitVec 32) List!30668) Bool)

(assert (=> b!1321582 (= res!877264 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30665))))

(declare-fun mapNonEmpty!55760 () Bool)

(declare-fun tp!106242 () Bool)

(assert (=> mapNonEmpty!55760 (= mapRes!55760 (and tp!106242 e!753723))))

(declare-fun mapValue!55760 () ValueCell!17139)

(declare-fun mapKey!55760 () (_ BitVec 32))

(declare-fun mapRest!55760 () (Array (_ BitVec 32) ValueCell!17139))

(assert (=> mapNonEmpty!55760 (= (arr!42988 _values!1337) (store mapRest!55760 mapKey!55760 mapValue!55760))))

(declare-fun b!1321583 () Bool)

(declare-fun res!877260 () Bool)

(assert (=> b!1321583 (=> (not res!877260) (not e!753724))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(assert (=> b!1321583 (= res!877260 (and (= (size!43539 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43538 _keys!1609) (size!43539 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1321584 () Bool)

(assert (=> b!1321584 (= e!753727 (and e!753725 mapRes!55760))))

(declare-fun condMapEmpty!55760 () Bool)

(declare-fun mapDefault!55760 () ValueCell!17139)

(assert (=> b!1321584 (= condMapEmpty!55760 (= (arr!42988 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17139)) mapDefault!55760)))))

(declare-fun b!1321585 () Bool)

(declare-fun res!877258 () Bool)

(assert (=> b!1321585 (=> (not res!877258) (not e!753724))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1321585 (= res!877258 (validKeyInArray!0 (select (arr!42987 _keys!1609) from!2000)))))

(declare-fun b!1321586 () Bool)

(declare-fun res!877257 () Bool)

(assert (=> b!1321586 (=> (not res!877257) (not e!753724))))

(assert (=> b!1321586 (= res!877257 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43538 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1321587 () Bool)

(declare-fun res!877262 () Bool)

(assert (=> b!1321587 (=> (not res!877262) (not e!753724))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89035 (_ BitVec 32)) Bool)

(assert (=> b!1321587 (= res!877262 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1321588 () Bool)

(declare-fun res!877261 () Bool)

(assert (=> b!1321588 (=> (not res!877261) (not e!753724))))

(declare-fun zeroValue!1279 () V!53203)

(declare-fun minValue!1279 () V!53203)

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23490 0))(
  ( (tuple2!23491 (_1!11755 (_ BitVec 64)) (_2!11755 V!53203)) )
))
(declare-datatypes ((List!30669 0))(
  ( (Nil!30666) (Cons!30665 (h!31874 tuple2!23490) (t!44480 List!30669)) )
))
(declare-datatypes ((ListLongMap!21159 0))(
  ( (ListLongMap!21160 (toList!10595 List!30669)) )
))
(declare-fun contains!8686 (ListLongMap!21159 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5535 (array!89035 array!89037 (_ BitVec 32) (_ BitVec 32) V!53203 V!53203 (_ BitVec 32) Int) ListLongMap!21159)

(assert (=> b!1321588 (= res!877261 (contains!8686 (getCurrentListMap!5535 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1321589 () Bool)

(assert (=> b!1321589 (= e!753724 (not (bvsge (bvadd #b00000000000000000000000000000001 from!2000) #b00000000000000000000000000000000)))))

(declare-fun lt!587543 () ListLongMap!21159)

(assert (=> b!1321589 (contains!8686 lt!587543 k0!1164)))

(declare-fun lt!587540 () V!53203)

(declare-datatypes ((Unit!43496 0))(
  ( (Unit!43497) )
))
(declare-fun lt!587545 () Unit!43496)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!163 ((_ BitVec 64) (_ BitVec 64) V!53203 ListLongMap!21159) Unit!43496)

(assert (=> b!1321589 (= lt!587545 (lemmaInListMapAfterAddingDiffThenInBefore!163 k0!1164 (select (arr!42987 _keys!1609) from!2000) lt!587540 lt!587543))))

(declare-fun lt!587542 () ListLongMap!21159)

(assert (=> b!1321589 (contains!8686 lt!587542 k0!1164)))

(declare-fun lt!587544 () Unit!43496)

(assert (=> b!1321589 (= lt!587544 (lemmaInListMapAfterAddingDiffThenInBefore!163 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!587542))))

(declare-fun lt!587539 () ListLongMap!21159)

(assert (=> b!1321589 (contains!8686 lt!587539 k0!1164)))

(declare-fun lt!587541 () Unit!43496)

(assert (=> b!1321589 (= lt!587541 (lemmaInListMapAfterAddingDiffThenInBefore!163 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!587539))))

(declare-fun +!4548 (ListLongMap!21159 tuple2!23490) ListLongMap!21159)

(assert (=> b!1321589 (= lt!587539 (+!4548 lt!587542 (tuple2!23491 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(assert (=> b!1321589 (= lt!587542 (+!4548 lt!587543 (tuple2!23491 (select (arr!42987 _keys!1609) from!2000) lt!587540)))))

(declare-fun get!21680 (ValueCell!17139 V!53203) V!53203)

(declare-fun dynLambda!3585 (Int (_ BitVec 64)) V!53203)

(assert (=> b!1321589 (= lt!587540 (get!21680 (select (arr!42988 _values!1337) from!2000) (dynLambda!3585 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6263 (array!89035 array!89037 (_ BitVec 32) (_ BitVec 32) V!53203 V!53203 (_ BitVec 32) Int) ListLongMap!21159)

(assert (=> b!1321589 (= lt!587543 (getCurrentListMapNoExtraKeys!6263 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(assert (= (and start!111634 res!877259) b!1321583))

(assert (= (and b!1321583 res!877260) b!1321587))

(assert (= (and b!1321587 res!877262) b!1321582))

(assert (= (and b!1321582 res!877264) b!1321586))

(assert (= (and b!1321586 res!877257) b!1321588))

(assert (= (and b!1321588 res!877261) b!1321580))

(assert (= (and b!1321580 res!877263) b!1321585))

(assert (= (and b!1321585 res!877258) b!1321589))

(assert (= (and b!1321584 condMapEmpty!55760) mapIsEmpty!55760))

(assert (= (and b!1321584 (not condMapEmpty!55760)) mapNonEmpty!55760))

(get-info :version)

(assert (= (and mapNonEmpty!55760 ((_ is ValueCellFull!17139) mapValue!55760)) b!1321581))

(assert (= (and b!1321584 ((_ is ValueCellFull!17139) mapDefault!55760)) b!1321579))

(assert (= start!111634 b!1321584))

(declare-fun b_lambda!23591 () Bool)

(assert (=> (not b_lambda!23591) (not b!1321589)))

(declare-fun t!44478 () Bool)

(declare-fun tb!11615 () Bool)

(assert (=> (and start!111634 (= defaultEntry!1340 defaultEntry!1340) t!44478) tb!11615))

(declare-fun result!24277 () Bool)

(assert (=> tb!11615 (= result!24277 tp_is_empty!36075)))

(assert (=> b!1321589 t!44478))

(declare-fun b_and!48681 () Bool)

(assert (= b_and!48679 (and (=> t!44478 result!24277) b_and!48681)))

(declare-fun m!1209611 () Bool)

(assert (=> b!1321580 m!1209611))

(declare-fun m!1209613 () Bool)

(assert (=> b!1321588 m!1209613))

(assert (=> b!1321588 m!1209613))

(declare-fun m!1209615 () Bool)

(assert (=> b!1321588 m!1209615))

(declare-fun m!1209617 () Bool)

(assert (=> start!111634 m!1209617))

(declare-fun m!1209619 () Bool)

(assert (=> start!111634 m!1209619))

(declare-fun m!1209621 () Bool)

(assert (=> start!111634 m!1209621))

(assert (=> b!1321585 m!1209611))

(assert (=> b!1321585 m!1209611))

(declare-fun m!1209623 () Bool)

(assert (=> b!1321585 m!1209623))

(declare-fun m!1209625 () Bool)

(assert (=> b!1321587 m!1209625))

(declare-fun m!1209627 () Bool)

(assert (=> b!1321589 m!1209627))

(declare-fun m!1209629 () Bool)

(assert (=> b!1321589 m!1209629))

(declare-fun m!1209631 () Bool)

(assert (=> b!1321589 m!1209631))

(declare-fun m!1209633 () Bool)

(assert (=> b!1321589 m!1209633))

(declare-fun m!1209635 () Bool)

(assert (=> b!1321589 m!1209635))

(declare-fun m!1209637 () Bool)

(assert (=> b!1321589 m!1209637))

(assert (=> b!1321589 m!1209637))

(assert (=> b!1321589 m!1209629))

(declare-fun m!1209639 () Bool)

(assert (=> b!1321589 m!1209639))

(declare-fun m!1209641 () Bool)

(assert (=> b!1321589 m!1209641))

(declare-fun m!1209643 () Bool)

(assert (=> b!1321589 m!1209643))

(declare-fun m!1209645 () Bool)

(assert (=> b!1321589 m!1209645))

(assert (=> b!1321589 m!1209611))

(declare-fun m!1209647 () Bool)

(assert (=> b!1321589 m!1209647))

(declare-fun m!1209649 () Bool)

(assert (=> b!1321589 m!1209649))

(assert (=> b!1321589 m!1209611))

(declare-fun m!1209651 () Bool)

(assert (=> b!1321582 m!1209651))

(declare-fun m!1209653 () Bool)

(assert (=> mapNonEmpty!55760 m!1209653))

(check-sat (not start!111634) (not b_lambda!23591) (not b_next!30255) tp_is_empty!36075 (not b!1321585) (not mapNonEmpty!55760) (not b!1321589) (not b!1321587) (not b!1321582) b_and!48681 (not b!1321588))
(check-sat b_and!48681 (not b_next!30255))
