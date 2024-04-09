; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111920 () Bool)

(assert start!111920)

(declare-fun b_free!30483 () Bool)

(declare-fun b_next!30483 () Bool)

(assert (=> start!111920 (= b_free!30483 (not b_next!30483))))

(declare-fun tp!106930 () Bool)

(declare-fun b_and!49071 () Bool)

(assert (=> start!111920 (= tp!106930 b_and!49071)))

(declare-fun b!1325632 () Bool)

(declare-fun e!755694 () Bool)

(declare-fun tp_is_empty!36303 () Bool)

(assert (=> b!1325632 (= e!755694 tp_is_empty!36303)))

(declare-fun b!1325633 () Bool)

(declare-fun res!879894 () Bool)

(declare-fun e!755695 () Bool)

(assert (=> b!1325633 (=> (not res!879894) (not e!755695))))

(declare-datatypes ((array!89475 0))(
  ( (array!89476 (arr!43206 (Array (_ BitVec 32) (_ BitVec 64))) (size!43757 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89475)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!53507 0))(
  ( (V!53508 (val!18226 Int)) )
))
(declare-fun zeroValue!1279 () V!53507)

(declare-datatypes ((ValueCell!17253 0))(
  ( (ValueCellFull!17253 (v!20857 V!53507)) (EmptyCell!17253) )
))
(declare-datatypes ((array!89477 0))(
  ( (array!89478 (arr!43207 (Array (_ BitVec 32) ValueCell!17253)) (size!43758 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89477)

(declare-fun minValue!1279 () V!53507)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23660 0))(
  ( (tuple2!23661 (_1!11840 (_ BitVec 64)) (_2!11840 V!53507)) )
))
(declare-datatypes ((List!30828 0))(
  ( (Nil!30825) (Cons!30824 (h!32033 tuple2!23660) (t!44789 List!30828)) )
))
(declare-datatypes ((ListLongMap!21329 0))(
  ( (ListLongMap!21330 (toList!10680 List!30828)) )
))
(declare-fun contains!8773 (ListLongMap!21329 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5614 (array!89475 array!89477 (_ BitVec 32) (_ BitVec 32) V!53507 V!53507 (_ BitVec 32) Int) ListLongMap!21329)

(assert (=> b!1325633 (= res!879894 (contains!8773 (getCurrentListMap!5614 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1325634 () Bool)

(assert (=> b!1325634 (= e!755695 (not true))))

(declare-fun lt!589764 () ListLongMap!21329)

(assert (=> b!1325634 (contains!8773 lt!589764 k0!1164)))

(declare-datatypes ((Unit!43596 0))(
  ( (Unit!43597) )
))
(declare-fun lt!589765 () Unit!43596)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!205 ((_ BitVec 64) (_ BitVec 64) V!53507 ListLongMap!21329) Unit!43596)

(assert (=> b!1325634 (= lt!589765 (lemmaInListMapAfterAddingDiffThenInBefore!205 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!589764))))

(declare-fun +!4595 (ListLongMap!21329 tuple2!23660) ListLongMap!21329)

(declare-fun getCurrentListMapNoExtraKeys!6313 (array!89475 array!89477 (_ BitVec 32) (_ BitVec 32) V!53507 V!53507 (_ BitVec 32) Int) ListLongMap!21329)

(declare-fun get!21806 (ValueCell!17253 V!53507) V!53507)

(declare-fun dynLambda!3632 (Int (_ BitVec 64)) V!53507)

(assert (=> b!1325634 (= lt!589764 (+!4595 (+!4595 (getCurrentListMapNoExtraKeys!6313 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23661 (select (arr!43206 _keys!1609) from!2000) (get!21806 (select (arr!43207 _values!1337) from!2000) (dynLambda!3632 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23661 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun b!1325635 () Bool)

(declare-fun e!755691 () Bool)

(assert (=> b!1325635 (= e!755691 tp_is_empty!36303)))

(declare-fun b!1325636 () Bool)

(declare-fun res!879893 () Bool)

(assert (=> b!1325636 (=> (not res!879893) (not e!755695))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1325636 (= res!879893 (validKeyInArray!0 (select (arr!43206 _keys!1609) from!2000)))))

(declare-fun b!1325637 () Bool)

(declare-fun res!879896 () Bool)

(assert (=> b!1325637 (=> (not res!879896) (not e!755695))))

(assert (=> b!1325637 (= res!879896 (and (= (size!43758 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43757 _keys!1609) (size!43758 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1325638 () Bool)

(declare-fun e!755692 () Bool)

(declare-fun mapRes!56106 () Bool)

(assert (=> b!1325638 (= e!755692 (and e!755694 mapRes!56106))))

(declare-fun condMapEmpty!56106 () Bool)

(declare-fun mapDefault!56106 () ValueCell!17253)

(assert (=> b!1325638 (= condMapEmpty!56106 (= (arr!43207 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17253)) mapDefault!56106)))))

(declare-fun b!1325639 () Bool)

(declare-fun res!879899 () Bool)

(assert (=> b!1325639 (=> (not res!879899) (not e!755695))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89475 (_ BitVec 32)) Bool)

(assert (=> b!1325639 (= res!879899 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun mapIsEmpty!56106 () Bool)

(assert (=> mapIsEmpty!56106 mapRes!56106))

(declare-fun res!879897 () Bool)

(assert (=> start!111920 (=> (not res!879897) (not e!755695))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111920 (= res!879897 (validMask!0 mask!2019))))

(assert (=> start!111920 e!755695))

(declare-fun array_inv!32555 (array!89475) Bool)

(assert (=> start!111920 (array_inv!32555 _keys!1609)))

(assert (=> start!111920 true))

(assert (=> start!111920 tp_is_empty!36303))

(declare-fun array_inv!32556 (array!89477) Bool)

(assert (=> start!111920 (and (array_inv!32556 _values!1337) e!755692)))

(assert (=> start!111920 tp!106930))

(declare-fun b!1325640 () Bool)

(declare-fun res!879898 () Bool)

(assert (=> b!1325640 (=> (not res!879898) (not e!755695))))

(assert (=> b!1325640 (= res!879898 (not (= (select (arr!43206 _keys!1609) from!2000) k0!1164)))))

(declare-fun mapNonEmpty!56106 () Bool)

(declare-fun tp!106929 () Bool)

(assert (=> mapNonEmpty!56106 (= mapRes!56106 (and tp!106929 e!755691))))

(declare-fun mapKey!56106 () (_ BitVec 32))

(declare-fun mapValue!56106 () ValueCell!17253)

(declare-fun mapRest!56106 () (Array (_ BitVec 32) ValueCell!17253))

(assert (=> mapNonEmpty!56106 (= (arr!43207 _values!1337) (store mapRest!56106 mapKey!56106 mapValue!56106))))

(declare-fun b!1325641 () Bool)

(declare-fun res!879895 () Bool)

(assert (=> b!1325641 (=> (not res!879895) (not e!755695))))

(declare-datatypes ((List!30829 0))(
  ( (Nil!30826) (Cons!30825 (h!32034 (_ BitVec 64)) (t!44790 List!30829)) )
))
(declare-fun arrayNoDuplicates!0 (array!89475 (_ BitVec 32) List!30829) Bool)

(assert (=> b!1325641 (= res!879895 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30826))))

(declare-fun b!1325642 () Bool)

(declare-fun res!879900 () Bool)

(assert (=> b!1325642 (=> (not res!879900) (not e!755695))))

(assert (=> b!1325642 (= res!879900 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43757 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!111920 res!879897) b!1325637))

(assert (= (and b!1325637 res!879896) b!1325639))

(assert (= (and b!1325639 res!879899) b!1325641))

(assert (= (and b!1325641 res!879895) b!1325642))

(assert (= (and b!1325642 res!879900) b!1325633))

(assert (= (and b!1325633 res!879894) b!1325640))

(assert (= (and b!1325640 res!879898) b!1325636))

(assert (= (and b!1325636 res!879893) b!1325634))

(assert (= (and b!1325638 condMapEmpty!56106) mapIsEmpty!56106))

(assert (= (and b!1325638 (not condMapEmpty!56106)) mapNonEmpty!56106))

(get-info :version)

(assert (= (and mapNonEmpty!56106 ((_ is ValueCellFull!17253) mapValue!56106)) b!1325635))

(assert (= (and b!1325638 ((_ is ValueCellFull!17253) mapDefault!56106)) b!1325632))

(assert (= start!111920 b!1325638))

(declare-fun b_lambda!23771 () Bool)

(assert (=> (not b_lambda!23771) (not b!1325634)))

(declare-fun t!44788 () Bool)

(declare-fun tb!11765 () Bool)

(assert (=> (and start!111920 (= defaultEntry!1340 defaultEntry!1340) t!44788) tb!11765))

(declare-fun result!24579 () Bool)

(assert (=> tb!11765 (= result!24579 tp_is_empty!36303)))

(assert (=> b!1325634 t!44788))

(declare-fun b_and!49073 () Bool)

(assert (= b_and!49071 (and (=> t!44788 result!24579) b_and!49073)))

(declare-fun m!1214569 () Bool)

(assert (=> b!1325640 m!1214569))

(assert (=> b!1325636 m!1214569))

(assert (=> b!1325636 m!1214569))

(declare-fun m!1214571 () Bool)

(assert (=> b!1325636 m!1214571))

(declare-fun m!1214573 () Bool)

(assert (=> b!1325641 m!1214573))

(declare-fun m!1214575 () Bool)

(assert (=> mapNonEmpty!56106 m!1214575))

(declare-fun m!1214577 () Bool)

(assert (=> b!1325639 m!1214577))

(declare-fun m!1214579 () Bool)

(assert (=> b!1325633 m!1214579))

(assert (=> b!1325633 m!1214579))

(declare-fun m!1214581 () Bool)

(assert (=> b!1325633 m!1214581))

(declare-fun m!1214583 () Bool)

(assert (=> b!1325634 m!1214583))

(declare-fun m!1214585 () Bool)

(assert (=> b!1325634 m!1214585))

(declare-fun m!1214587 () Bool)

(assert (=> b!1325634 m!1214587))

(assert (=> b!1325634 m!1214585))

(declare-fun m!1214589 () Bool)

(assert (=> b!1325634 m!1214589))

(declare-fun m!1214591 () Bool)

(assert (=> b!1325634 m!1214591))

(declare-fun m!1214593 () Bool)

(assert (=> b!1325634 m!1214593))

(assert (=> b!1325634 m!1214589))

(declare-fun m!1214595 () Bool)

(assert (=> b!1325634 m!1214595))

(assert (=> b!1325634 m!1214593))

(assert (=> b!1325634 m!1214587))

(declare-fun m!1214597 () Bool)

(assert (=> b!1325634 m!1214597))

(assert (=> b!1325634 m!1214569))

(declare-fun m!1214599 () Bool)

(assert (=> start!111920 m!1214599))

(declare-fun m!1214601 () Bool)

(assert (=> start!111920 m!1214601))

(declare-fun m!1214603 () Bool)

(assert (=> start!111920 m!1214603))

(check-sat (not b_next!30483) (not b!1325633) (not b!1325641) (not mapNonEmpty!56106) (not b!1325639) (not b_lambda!23771) (not b!1325636) (not b!1325634) tp_is_empty!36303 b_and!49073 (not start!111920))
(check-sat b_and!49073 (not b_next!30483))
