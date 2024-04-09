; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111640 () Bool)

(assert start!111640)

(declare-fun b_free!30261 () Bool)

(declare-fun b_next!30261 () Bool)

(assert (=> start!111640 (= b_free!30261 (not b_next!30261))))

(declare-fun tp!106259 () Bool)

(declare-fun b_and!48691 () Bool)

(assert (=> start!111640 (= tp!106259 b_and!48691)))

(declare-fun res!877331 () Bool)

(declare-fun e!753771 () Bool)

(assert (=> start!111640 (=> (not res!877331) (not e!753771))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111640 (= res!877331 (validMask!0 mask!2019))))

(assert (=> start!111640 e!753771))

(declare-datatypes ((array!89045 0))(
  ( (array!89046 (arr!42992 (Array (_ BitVec 32) (_ BitVec 64))) (size!43543 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89045)

(declare-fun array_inv!32415 (array!89045) Bool)

(assert (=> start!111640 (array_inv!32415 _keys!1609)))

(assert (=> start!111640 true))

(declare-fun tp_is_empty!36081 () Bool)

(assert (=> start!111640 tp_is_empty!36081))

(declare-datatypes ((V!53211 0))(
  ( (V!53212 (val!18115 Int)) )
))
(declare-datatypes ((ValueCell!17142 0))(
  ( (ValueCellFull!17142 (v!20743 V!53211)) (EmptyCell!17142) )
))
(declare-datatypes ((array!89047 0))(
  ( (array!89048 (arr!42993 (Array (_ BitVec 32) ValueCell!17142)) (size!43544 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89047)

(declare-fun e!753769 () Bool)

(declare-fun array_inv!32416 (array!89047) Bool)

(assert (=> start!111640 (and (array_inv!32416 _values!1337) e!753769)))

(assert (=> start!111640 tp!106259))

(declare-fun b!1321684 () Bool)

(assert (=> b!1321684 (= e!753771 (not true))))

(declare-datatypes ((tuple2!23494 0))(
  ( (tuple2!23495 (_1!11757 (_ BitVec 64)) (_2!11757 V!53211)) )
))
(declare-datatypes ((List!30672 0))(
  ( (Nil!30669) (Cons!30668 (h!31877 tuple2!23494) (t!44489 List!30672)) )
))
(declare-datatypes ((ListLongMap!21163 0))(
  ( (ListLongMap!21164 (toList!10597 List!30672)) )
))
(declare-fun lt!587603 () ListLongMap!21163)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun contains!8688 (ListLongMap!21163 (_ BitVec 64)) Bool)

(assert (=> b!1321684 (contains!8688 lt!587603 k0!1164)))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun lt!587607 () V!53211)

(declare-datatypes ((Unit!43500 0))(
  ( (Unit!43501) )
))
(declare-fun lt!587608 () Unit!43500)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!165 ((_ BitVec 64) (_ BitVec 64) V!53211 ListLongMap!21163) Unit!43500)

(assert (=> b!1321684 (= lt!587608 (lemmaInListMapAfterAddingDiffThenInBefore!165 k0!1164 (select (arr!42992 _keys!1609) from!2000) lt!587607 lt!587603))))

(declare-fun lt!587602 () ListLongMap!21163)

(assert (=> b!1321684 (contains!8688 lt!587602 k0!1164)))

(declare-fun zeroValue!1279 () V!53211)

(declare-fun lt!587605 () Unit!43500)

(assert (=> b!1321684 (= lt!587605 (lemmaInListMapAfterAddingDiffThenInBefore!165 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!587602))))

(declare-fun lt!587604 () ListLongMap!21163)

(assert (=> b!1321684 (contains!8688 lt!587604 k0!1164)))

(declare-fun lt!587606 () Unit!43500)

(declare-fun minValue!1279 () V!53211)

(assert (=> b!1321684 (= lt!587606 (lemmaInListMapAfterAddingDiffThenInBefore!165 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!587604))))

(declare-fun +!4550 (ListLongMap!21163 tuple2!23494) ListLongMap!21163)

(assert (=> b!1321684 (= lt!587604 (+!4550 lt!587602 (tuple2!23495 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(assert (=> b!1321684 (= lt!587602 (+!4550 lt!587603 (tuple2!23495 (select (arr!42992 _keys!1609) from!2000) lt!587607)))))

(declare-fun defaultEntry!1340 () Int)

(declare-fun get!21684 (ValueCell!17142 V!53211) V!53211)

(declare-fun dynLambda!3587 (Int (_ BitVec 64)) V!53211)

(assert (=> b!1321684 (= lt!587607 (get!21684 (select (arr!42993 _values!1337) from!2000) (dynLambda!3587 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6265 (array!89045 array!89047 (_ BitVec 32) (_ BitVec 32) V!53211 V!53211 (_ BitVec 32) Int) ListLongMap!21163)

(assert (=> b!1321684 (= lt!587603 (getCurrentListMapNoExtraKeys!6265 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1321685 () Bool)

(declare-fun e!753770 () Bool)

(declare-fun mapRes!55769 () Bool)

(assert (=> b!1321685 (= e!753769 (and e!753770 mapRes!55769))))

(declare-fun condMapEmpty!55769 () Bool)

(declare-fun mapDefault!55769 () ValueCell!17142)

(assert (=> b!1321685 (= condMapEmpty!55769 (= (arr!42993 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17142)) mapDefault!55769)))))

(declare-fun b!1321686 () Bool)

(declare-fun res!877333 () Bool)

(assert (=> b!1321686 (=> (not res!877333) (not e!753771))))

(assert (=> b!1321686 (= res!877333 (not (= (select (arr!42992 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1321687 () Bool)

(declare-fun res!877334 () Bool)

(assert (=> b!1321687 (=> (not res!877334) (not e!753771))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89045 (_ BitVec 32)) Bool)

(assert (=> b!1321687 (= res!877334 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1321688 () Bool)

(assert (=> b!1321688 (= e!753770 tp_is_empty!36081)))

(declare-fun b!1321689 () Bool)

(declare-fun res!877332 () Bool)

(assert (=> b!1321689 (=> (not res!877332) (not e!753771))))

(declare-fun getCurrentListMap!5537 (array!89045 array!89047 (_ BitVec 32) (_ BitVec 32) V!53211 V!53211 (_ BitVec 32) Int) ListLongMap!21163)

(assert (=> b!1321689 (= res!877332 (contains!8688 (getCurrentListMap!5537 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1321690 () Bool)

(declare-fun e!753768 () Bool)

(assert (=> b!1321690 (= e!753768 tp_is_empty!36081)))

(declare-fun b!1321691 () Bool)

(declare-fun res!877335 () Bool)

(assert (=> b!1321691 (=> (not res!877335) (not e!753771))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1321691 (= res!877335 (validKeyInArray!0 (select (arr!42992 _keys!1609) from!2000)))))

(declare-fun b!1321692 () Bool)

(declare-fun res!877336 () Bool)

(assert (=> b!1321692 (=> (not res!877336) (not e!753771))))

(assert (=> b!1321692 (= res!877336 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43543 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1321693 () Bool)

(declare-fun res!877329 () Bool)

(assert (=> b!1321693 (=> (not res!877329) (not e!753771))))

(assert (=> b!1321693 (= res!877329 (and (= (size!43544 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43543 _keys!1609) (size!43544 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!55769 () Bool)

(declare-fun tp!106260 () Bool)

(assert (=> mapNonEmpty!55769 (= mapRes!55769 (and tp!106260 e!753768))))

(declare-fun mapRest!55769 () (Array (_ BitVec 32) ValueCell!17142))

(declare-fun mapKey!55769 () (_ BitVec 32))

(declare-fun mapValue!55769 () ValueCell!17142)

(assert (=> mapNonEmpty!55769 (= (arr!42993 _values!1337) (store mapRest!55769 mapKey!55769 mapValue!55769))))

(declare-fun b!1321694 () Bool)

(declare-fun res!877330 () Bool)

(assert (=> b!1321694 (=> (not res!877330) (not e!753771))))

(declare-datatypes ((List!30673 0))(
  ( (Nil!30670) (Cons!30669 (h!31878 (_ BitVec 64)) (t!44490 List!30673)) )
))
(declare-fun arrayNoDuplicates!0 (array!89045 (_ BitVec 32) List!30673) Bool)

(assert (=> b!1321694 (= res!877330 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30670))))

(declare-fun mapIsEmpty!55769 () Bool)

(assert (=> mapIsEmpty!55769 mapRes!55769))

(assert (= (and start!111640 res!877331) b!1321693))

(assert (= (and b!1321693 res!877329) b!1321687))

(assert (= (and b!1321687 res!877334) b!1321694))

(assert (= (and b!1321694 res!877330) b!1321692))

(assert (= (and b!1321692 res!877336) b!1321689))

(assert (= (and b!1321689 res!877332) b!1321686))

(assert (= (and b!1321686 res!877333) b!1321691))

(assert (= (and b!1321691 res!877335) b!1321684))

(assert (= (and b!1321685 condMapEmpty!55769) mapIsEmpty!55769))

(assert (= (and b!1321685 (not condMapEmpty!55769)) mapNonEmpty!55769))

(get-info :version)

(assert (= (and mapNonEmpty!55769 ((_ is ValueCellFull!17142) mapValue!55769)) b!1321690))

(assert (= (and b!1321685 ((_ is ValueCellFull!17142) mapDefault!55769)) b!1321688))

(assert (= start!111640 b!1321685))

(declare-fun b_lambda!23597 () Bool)

(assert (=> (not b_lambda!23597) (not b!1321684)))

(declare-fun t!44488 () Bool)

(declare-fun tb!11621 () Bool)

(assert (=> (and start!111640 (= defaultEntry!1340 defaultEntry!1340) t!44488) tb!11621))

(declare-fun result!24289 () Bool)

(assert (=> tb!11621 (= result!24289 tp_is_empty!36081)))

(assert (=> b!1321684 t!44488))

(declare-fun b_and!48693 () Bool)

(assert (= b_and!48691 (and (=> t!44488 result!24289) b_and!48693)))

(declare-fun m!1209743 () Bool)

(assert (=> b!1321687 m!1209743))

(declare-fun m!1209745 () Bool)

(assert (=> b!1321689 m!1209745))

(assert (=> b!1321689 m!1209745))

(declare-fun m!1209747 () Bool)

(assert (=> b!1321689 m!1209747))

(declare-fun m!1209749 () Bool)

(assert (=> b!1321684 m!1209749))

(declare-fun m!1209751 () Bool)

(assert (=> b!1321684 m!1209751))

(declare-fun m!1209753 () Bool)

(assert (=> b!1321684 m!1209753))

(declare-fun m!1209755 () Bool)

(assert (=> b!1321684 m!1209755))

(declare-fun m!1209757 () Bool)

(assert (=> b!1321684 m!1209757))

(declare-fun m!1209759 () Bool)

(assert (=> b!1321684 m!1209759))

(declare-fun m!1209761 () Bool)

(assert (=> b!1321684 m!1209761))

(declare-fun m!1209763 () Bool)

(assert (=> b!1321684 m!1209763))

(declare-fun m!1209765 () Bool)

(assert (=> b!1321684 m!1209765))

(assert (=> b!1321684 m!1209759))

(declare-fun m!1209767 () Bool)

(assert (=> b!1321684 m!1209767))

(declare-fun m!1209769 () Bool)

(assert (=> b!1321684 m!1209769))

(assert (=> b!1321684 m!1209755))

(declare-fun m!1209771 () Bool)

(assert (=> b!1321684 m!1209771))

(assert (=> b!1321684 m!1209765))

(declare-fun m!1209773 () Bool)

(assert (=> b!1321684 m!1209773))

(declare-fun m!1209775 () Bool)

(assert (=> start!111640 m!1209775))

(declare-fun m!1209777 () Bool)

(assert (=> start!111640 m!1209777))

(declare-fun m!1209779 () Bool)

(assert (=> start!111640 m!1209779))

(declare-fun m!1209781 () Bool)

(assert (=> mapNonEmpty!55769 m!1209781))

(assert (=> b!1321691 m!1209755))

(assert (=> b!1321691 m!1209755))

(declare-fun m!1209783 () Bool)

(assert (=> b!1321691 m!1209783))

(assert (=> b!1321686 m!1209755))

(declare-fun m!1209785 () Bool)

(assert (=> b!1321694 m!1209785))

(check-sat (not b!1321691) (not start!111640) (not b!1321694) (not b_next!30261) (not b_lambda!23597) tp_is_empty!36081 (not b!1321684) (not b!1321689) b_and!48693 (not b!1321687) (not mapNonEmpty!55769))
(check-sat b_and!48693 (not b_next!30261))
