; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111490 () Bool)

(assert start!111490)

(declare-fun b_free!30111 () Bool)

(declare-fun b_next!30111 () Bool)

(assert (=> start!111490 (= b_free!30111 (not b_next!30111))))

(declare-fun tp!105809 () Bool)

(declare-fun b_and!48391 () Bool)

(assert (=> start!111490 (= tp!105809 b_and!48391)))

(declare-fun b!1319059 () Bool)

(declare-fun res!875529 () Bool)

(declare-fun e!752647 () Bool)

(assert (=> b!1319059 (=> (not res!875529) (not e!752647))))

(declare-datatypes ((array!88761 0))(
  ( (array!88762 (arr!42850 (Array (_ BitVec 32) (_ BitVec 64))) (size!43401 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88761)

(declare-datatypes ((List!30563 0))(
  ( (Nil!30560) (Cons!30559 (h!31768 (_ BitVec 64)) (t!44230 List!30563)) )
))
(declare-fun arrayNoDuplicates!0 (array!88761 (_ BitVec 32) List!30563) Bool)

(assert (=> b!1319059 (= res!875529 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30560))))

(declare-fun b!1319060 () Bool)

(declare-fun res!875532 () Bool)

(assert (=> b!1319060 (=> (not res!875532) (not e!752647))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88761 (_ BitVec 32)) Bool)

(assert (=> b!1319060 (= res!875532 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1319061 () Bool)

(declare-fun res!875530 () Bool)

(assert (=> b!1319061 (=> (not res!875530) (not e!752647))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!53011 0))(
  ( (V!53012 (val!18040 Int)) )
))
(declare-fun zeroValue!1279 () V!53011)

(declare-datatypes ((ValueCell!17067 0))(
  ( (ValueCellFull!17067 (v!20668 V!53011)) (EmptyCell!17067) )
))
(declare-datatypes ((array!88763 0))(
  ( (array!88764 (arr!42851 (Array (_ BitVec 32) ValueCell!17067)) (size!43402 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88763)

(declare-fun minValue!1279 () V!53011)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23374 0))(
  ( (tuple2!23375 (_1!11697 (_ BitVec 64)) (_2!11697 V!53011)) )
))
(declare-datatypes ((List!30564 0))(
  ( (Nil!30561) (Cons!30560 (h!31769 tuple2!23374) (t!44231 List!30564)) )
))
(declare-datatypes ((ListLongMap!21043 0))(
  ( (ListLongMap!21044 (toList!10537 List!30564)) )
))
(declare-fun contains!8628 (ListLongMap!21043 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5488 (array!88761 array!88763 (_ BitVec 32) (_ BitVec 32) V!53011 V!53011 (_ BitVec 32) Int) ListLongMap!21043)

(assert (=> b!1319061 (= res!875530 (contains!8628 (getCurrentListMap!5488 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun res!875535 () Bool)

(assert (=> start!111490 (=> (not res!875535) (not e!752647))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111490 (= res!875535 (validMask!0 mask!2019))))

(assert (=> start!111490 e!752647))

(declare-fun array_inv!32305 (array!88761) Bool)

(assert (=> start!111490 (array_inv!32305 _keys!1609)))

(assert (=> start!111490 true))

(declare-fun tp_is_empty!35931 () Bool)

(assert (=> start!111490 tp_is_empty!35931))

(declare-fun e!752644 () Bool)

(declare-fun array_inv!32306 (array!88763) Bool)

(assert (=> start!111490 (and (array_inv!32306 _values!1337) e!752644)))

(assert (=> start!111490 tp!105809))

(declare-fun b!1319062 () Bool)

(declare-fun res!875534 () Bool)

(assert (=> b!1319062 (=> (not res!875534) (not e!752647))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1319062 (= res!875534 (validKeyInArray!0 (select (arr!42850 _keys!1609) from!2000)))))

(declare-fun b!1319063 () Bool)

(declare-fun res!875536 () Bool)

(assert (=> b!1319063 (=> (not res!875536) (not e!752647))))

(assert (=> b!1319063 (= res!875536 (and (= (size!43402 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43401 _keys!1609) (size!43402 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1319064 () Bool)

(declare-fun e!752646 () Bool)

(assert (=> b!1319064 (= e!752646 tp_is_empty!35931)))

(declare-fun mapIsEmpty!55544 () Bool)

(declare-fun mapRes!55544 () Bool)

(assert (=> mapIsEmpty!55544 mapRes!55544))

(declare-fun b!1319065 () Bool)

(declare-fun res!875533 () Bool)

(assert (=> b!1319065 (=> (not res!875533) (not e!752647))))

(assert (=> b!1319065 (= res!875533 (not (= (select (arr!42850 _keys!1609) from!2000) k0!1164)))))

(declare-fun mapNonEmpty!55544 () Bool)

(declare-fun tp!105810 () Bool)

(declare-fun e!752643 () Bool)

(assert (=> mapNonEmpty!55544 (= mapRes!55544 (and tp!105810 e!752643))))

(declare-fun mapKey!55544 () (_ BitVec 32))

(declare-fun mapRest!55544 () (Array (_ BitVec 32) ValueCell!17067))

(declare-fun mapValue!55544 () ValueCell!17067)

(assert (=> mapNonEmpty!55544 (= (arr!42851 _values!1337) (store mapRest!55544 mapKey!55544 mapValue!55544))))

(declare-fun b!1319066 () Bool)

(assert (=> b!1319066 (= e!752644 (and e!752646 mapRes!55544))))

(declare-fun condMapEmpty!55544 () Bool)

(declare-fun mapDefault!55544 () ValueCell!17067)

(assert (=> b!1319066 (= condMapEmpty!55544 (= (arr!42851 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17067)) mapDefault!55544)))))

(declare-fun b!1319067 () Bool)

(declare-fun res!875531 () Bool)

(assert (=> b!1319067 (=> (not res!875531) (not e!752647))))

(assert (=> b!1319067 (= res!875531 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43401 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1319068 () Bool)

(assert (=> b!1319068 (= e!752643 tp_is_empty!35931)))

(declare-fun b!1319069 () Bool)

(assert (=> b!1319069 (= e!752647 (not true))))

(declare-fun lt!586524 () ListLongMap!21043)

(assert (=> b!1319069 (contains!8628 lt!586524 k0!1164)))

(declare-datatypes ((Unit!43390 0))(
  ( (Unit!43391) )
))
(declare-fun lt!586525 () Unit!43390)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!110 ((_ BitVec 64) (_ BitVec 64) V!53011 ListLongMap!21043) Unit!43390)

(assert (=> b!1319069 (= lt!586525 (lemmaInListMapAfterAddingDiffThenInBefore!110 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586524))))

(declare-fun +!4495 (ListLongMap!21043 tuple2!23374) ListLongMap!21043)

(declare-fun getCurrentListMapNoExtraKeys!6210 (array!88761 array!88763 (_ BitVec 32) (_ BitVec 32) V!53011 V!53011 (_ BitVec 32) Int) ListLongMap!21043)

(declare-fun get!21579 (ValueCell!17067 V!53011) V!53011)

(declare-fun dynLambda!3532 (Int (_ BitVec 64)) V!53011)

(assert (=> b!1319069 (= lt!586524 (+!4495 (+!4495 (getCurrentListMapNoExtraKeys!6210 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23375 (select (arr!42850 _keys!1609) from!2000) (get!21579 (select (arr!42851 _values!1337) from!2000) (dynLambda!3532 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23375 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(assert (= (and start!111490 res!875535) b!1319063))

(assert (= (and b!1319063 res!875536) b!1319060))

(assert (= (and b!1319060 res!875532) b!1319059))

(assert (= (and b!1319059 res!875529) b!1319067))

(assert (= (and b!1319067 res!875531) b!1319061))

(assert (= (and b!1319061 res!875530) b!1319065))

(assert (= (and b!1319065 res!875533) b!1319062))

(assert (= (and b!1319062 res!875534) b!1319069))

(assert (= (and b!1319066 condMapEmpty!55544) mapIsEmpty!55544))

(assert (= (and b!1319066 (not condMapEmpty!55544)) mapNonEmpty!55544))

(get-info :version)

(assert (= (and mapNonEmpty!55544 ((_ is ValueCellFull!17067) mapValue!55544)) b!1319068))

(assert (= (and b!1319066 ((_ is ValueCellFull!17067) mapDefault!55544)) b!1319064))

(assert (= start!111490 b!1319066))

(declare-fun b_lambda!23447 () Bool)

(assert (=> (not b_lambda!23447) (not b!1319069)))

(declare-fun t!44229 () Bool)

(declare-fun tb!11471 () Bool)

(assert (=> (and start!111490 (= defaultEntry!1340 defaultEntry!1340) t!44229) tb!11471))

(declare-fun result!23989 () Bool)

(assert (=> tb!11471 (= result!23989 tp_is_empty!35931)))

(assert (=> b!1319069 t!44229))

(declare-fun b_and!48393 () Bool)

(assert (= b_and!48391 (and (=> t!44229 result!23989) b_and!48393)))

(declare-fun m!1206687 () Bool)

(assert (=> b!1319062 m!1206687))

(assert (=> b!1319062 m!1206687))

(declare-fun m!1206689 () Bool)

(assert (=> b!1319062 m!1206689))

(declare-fun m!1206691 () Bool)

(assert (=> b!1319069 m!1206691))

(declare-fun m!1206693 () Bool)

(assert (=> b!1319069 m!1206693))

(declare-fun m!1206695 () Bool)

(assert (=> b!1319069 m!1206695))

(assert (=> b!1319069 m!1206693))

(declare-fun m!1206697 () Bool)

(assert (=> b!1319069 m!1206697))

(declare-fun m!1206699 () Bool)

(assert (=> b!1319069 m!1206699))

(assert (=> b!1319069 m!1206699))

(assert (=> b!1319069 m!1206695))

(declare-fun m!1206701 () Bool)

(assert (=> b!1319069 m!1206701))

(assert (=> b!1319069 m!1206687))

(declare-fun m!1206703 () Bool)

(assert (=> b!1319069 m!1206703))

(assert (=> b!1319069 m!1206697))

(declare-fun m!1206705 () Bool)

(assert (=> b!1319069 m!1206705))

(declare-fun m!1206707 () Bool)

(assert (=> b!1319059 m!1206707))

(declare-fun m!1206709 () Bool)

(assert (=> b!1319061 m!1206709))

(assert (=> b!1319061 m!1206709))

(declare-fun m!1206711 () Bool)

(assert (=> b!1319061 m!1206711))

(declare-fun m!1206713 () Bool)

(assert (=> mapNonEmpty!55544 m!1206713))

(declare-fun m!1206715 () Bool)

(assert (=> b!1319060 m!1206715))

(assert (=> b!1319065 m!1206687))

(declare-fun m!1206717 () Bool)

(assert (=> start!111490 m!1206717))

(declare-fun m!1206719 () Bool)

(assert (=> start!111490 m!1206719))

(declare-fun m!1206721 () Bool)

(assert (=> start!111490 m!1206721))

(check-sat (not mapNonEmpty!55544) (not b!1319060) b_and!48393 (not b!1319059) (not b_next!30111) tp_is_empty!35931 (not b!1319062) (not b_lambda!23447) (not b!1319061) (not start!111490) (not b!1319069))
(check-sat b_and!48393 (not b_next!30111))
