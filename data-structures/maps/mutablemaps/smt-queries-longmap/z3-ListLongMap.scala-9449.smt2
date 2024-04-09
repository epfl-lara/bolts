; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112340 () Bool)

(assert start!112340)

(declare-fun b_free!30699 () Bool)

(declare-fun b_next!30699 () Bool)

(assert (=> start!112340 (= b_free!30699 (not b_next!30699))))

(declare-fun tp!107735 () Bool)

(declare-fun b_and!49463 () Bool)

(assert (=> start!112340 (= tp!107735 b_and!49463)))

(declare-fun mapNonEmpty!56587 () Bool)

(declare-fun mapRes!56587 () Bool)

(declare-fun tp!107734 () Bool)

(declare-fun e!758418 () Bool)

(assert (=> mapNonEmpty!56587 (= mapRes!56587 (and tp!107734 e!758418))))

(declare-datatypes ((V!53915 0))(
  ( (V!53916 (val!18379 Int)) )
))
(declare-datatypes ((ValueCell!17406 0))(
  ( (ValueCellFull!17406 (v!21014 V!53915)) (EmptyCell!17406) )
))
(declare-fun mapValue!56587 () ValueCell!17406)

(declare-fun mapRest!56587 () (Array (_ BitVec 32) ValueCell!17406))

(declare-datatypes ((array!90071 0))(
  ( (array!90072 (arr!43497 (Array (_ BitVec 32) ValueCell!17406)) (size!44048 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90071)

(declare-fun mapKey!56587 () (_ BitVec 32))

(assert (=> mapNonEmpty!56587 (= (arr!43497 _values!1320) (store mapRest!56587 mapKey!56587 mapValue!56587))))

(declare-fun b!1330742 () Bool)

(declare-fun e!758415 () Bool)

(assert (=> b!1330742 (= e!758415 (not true))))

(declare-datatypes ((tuple2!23818 0))(
  ( (tuple2!23819 (_1!11919 (_ BitVec 64)) (_2!11919 V!53915)) )
))
(declare-datatypes ((List!31005 0))(
  ( (Nil!31002) (Cons!31001 (h!32210 tuple2!23818) (t!45124 List!31005)) )
))
(declare-datatypes ((ListLongMap!21487 0))(
  ( (ListLongMap!21488 (toList!10759 List!31005)) )
))
(declare-fun lt!591235 () ListLongMap!21487)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun contains!8859 (ListLongMap!21487 (_ BitVec 64)) Bool)

(assert (=> b!1330742 (contains!8859 lt!591235 k0!1153)))

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((array!90073 0))(
  ( (array!90074 (arr!43498 (Array (_ BitVec 32) (_ BitVec 64))) (size!44049 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90073)

(declare-fun lt!591233 () V!53915)

(declare-datatypes ((Unit!43727 0))(
  ( (Unit!43728) )
))
(declare-fun lt!591236 () Unit!43727)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!255 ((_ BitVec 64) (_ BitVec 64) V!53915 ListLongMap!21487) Unit!43727)

(assert (=> b!1330742 (= lt!591236 (lemmaInListMapAfterAddingDiffThenInBefore!255 k0!1153 (select (arr!43498 _keys!1590) from!1980) lt!591233 lt!591235))))

(declare-fun lt!591232 () ListLongMap!21487)

(assert (=> b!1330742 (contains!8859 lt!591232 k0!1153)))

(declare-fun lt!591234 () Unit!43727)

(declare-fun minValue!1262 () V!53915)

(assert (=> b!1330742 (= lt!591234 (lemmaInListMapAfterAddingDiffThenInBefore!255 k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591232))))

(declare-fun +!4650 (ListLongMap!21487 tuple2!23818) ListLongMap!21487)

(assert (=> b!1330742 (= lt!591232 (+!4650 lt!591235 (tuple2!23819 (select (arr!43498 _keys!1590) from!1980) lt!591233)))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun get!21968 (ValueCell!17406 V!53915) V!53915)

(declare-fun dynLambda!3687 (Int (_ BitVec 64)) V!53915)

(assert (=> b!1330742 (= lt!591233 (get!21968 (select (arr!43497 _values!1320) from!1980) (dynLambda!3687 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun zeroValue!1262 () V!53915)

(declare-fun getCurrentListMapNoExtraKeys!6368 (array!90073 array!90071 (_ BitVec 32) (_ BitVec 32) V!53915 V!53915 (_ BitVec 32) Int) ListLongMap!21487)

(assert (=> b!1330742 (= lt!591235 (getCurrentListMapNoExtraKeys!6368 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1330743 () Bool)

(declare-fun e!758416 () Bool)

(declare-fun tp_is_empty!36609 () Bool)

(assert (=> b!1330743 (= e!758416 tp_is_empty!36609)))

(declare-fun mapIsEmpty!56587 () Bool)

(assert (=> mapIsEmpty!56587 mapRes!56587))

(declare-fun b!1330744 () Bool)

(assert (=> b!1330744 (= e!758418 tp_is_empty!36609)))

(declare-fun b!1330745 () Bool)

(declare-fun res!883114 () Bool)

(assert (=> b!1330745 (=> (not res!883114) (not e!758415))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90073 (_ BitVec 32)) Bool)

(assert (=> b!1330745 (= res!883114 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun res!883116 () Bool)

(assert (=> start!112340 (=> (not res!883116) (not e!758415))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112340 (= res!883116 (validMask!0 mask!1998))))

(assert (=> start!112340 e!758415))

(declare-fun e!758417 () Bool)

(declare-fun array_inv!32763 (array!90071) Bool)

(assert (=> start!112340 (and (array_inv!32763 _values!1320) e!758417)))

(assert (=> start!112340 true))

(declare-fun array_inv!32764 (array!90073) Bool)

(assert (=> start!112340 (array_inv!32764 _keys!1590)))

(assert (=> start!112340 tp!107735))

(assert (=> start!112340 tp_is_empty!36609))

(declare-fun b!1330746 () Bool)

(declare-fun res!883121 () Bool)

(assert (=> b!1330746 (=> (not res!883121) (not e!758415))))

(declare-datatypes ((List!31006 0))(
  ( (Nil!31003) (Cons!31002 (h!32211 (_ BitVec 64)) (t!45125 List!31006)) )
))
(declare-fun arrayNoDuplicates!0 (array!90073 (_ BitVec 32) List!31006) Bool)

(assert (=> b!1330746 (= res!883121 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31003))))

(declare-fun b!1330747 () Bool)

(declare-fun res!883118 () Bool)

(assert (=> b!1330747 (=> (not res!883118) (not e!758415))))

(assert (=> b!1330747 (= res!883118 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44049 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1330748 () Bool)

(declare-fun res!883113 () Bool)

(assert (=> b!1330748 (=> (not res!883113) (not e!758415))))

(assert (=> b!1330748 (= res!883113 (not (= (select (arr!43498 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1330749 () Bool)

(declare-fun res!883120 () Bool)

(assert (=> b!1330749 (=> (not res!883120) (not e!758415))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1330749 (= res!883120 (validKeyInArray!0 (select (arr!43498 _keys!1590) from!1980)))))

(declare-fun b!1330750 () Bool)

(declare-fun res!883115 () Bool)

(assert (=> b!1330750 (=> (not res!883115) (not e!758415))))

(assert (=> b!1330750 (= res!883115 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1330751 () Bool)

(declare-fun res!883117 () Bool)

(assert (=> b!1330751 (=> (not res!883117) (not e!758415))))

(declare-fun getCurrentListMap!5685 (array!90073 array!90071 (_ BitVec 32) (_ BitVec 32) V!53915 V!53915 (_ BitVec 32) Int) ListLongMap!21487)

(assert (=> b!1330751 (= res!883117 (contains!8859 (getCurrentListMap!5685 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1330752 () Bool)

(assert (=> b!1330752 (= e!758417 (and e!758416 mapRes!56587))))

(declare-fun condMapEmpty!56587 () Bool)

(declare-fun mapDefault!56587 () ValueCell!17406)

(assert (=> b!1330752 (= condMapEmpty!56587 (= (arr!43497 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17406)) mapDefault!56587)))))

(declare-fun b!1330753 () Bool)

(declare-fun res!883119 () Bool)

(assert (=> b!1330753 (=> (not res!883119) (not e!758415))))

(assert (=> b!1330753 (= res!883119 (and (= (size!44048 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44049 _keys!1590) (size!44048 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(assert (= (and start!112340 res!883116) b!1330753))

(assert (= (and b!1330753 res!883119) b!1330745))

(assert (= (and b!1330745 res!883114) b!1330746))

(assert (= (and b!1330746 res!883121) b!1330747))

(assert (= (and b!1330747 res!883118) b!1330751))

(assert (= (and b!1330751 res!883117) b!1330748))

(assert (= (and b!1330748 res!883113) b!1330749))

(assert (= (and b!1330749 res!883120) b!1330750))

(assert (= (and b!1330750 res!883115) b!1330742))

(assert (= (and b!1330752 condMapEmpty!56587) mapIsEmpty!56587))

(assert (= (and b!1330752 (not condMapEmpty!56587)) mapNonEmpty!56587))

(get-info :version)

(assert (= (and mapNonEmpty!56587 ((_ is ValueCellFull!17406) mapValue!56587)) b!1330744))

(assert (= (and b!1330752 ((_ is ValueCellFull!17406) mapDefault!56587)) b!1330743))

(assert (= start!112340 b!1330752))

(declare-fun b_lambda!23969 () Bool)

(assert (=> (not b_lambda!23969) (not b!1330742)))

(declare-fun t!45123 () Bool)

(declare-fun tb!11923 () Bool)

(assert (=> (and start!112340 (= defaultEntry!1323 defaultEntry!1323) t!45123) tb!11923))

(declare-fun result!24909 () Bool)

(assert (=> tb!11923 (= result!24909 tp_is_empty!36609)))

(assert (=> b!1330742 t!45123))

(declare-fun b_and!49465 () Bool)

(assert (= b_and!49463 (and (=> t!45123 result!24909) b_and!49465)))

(declare-fun m!1219445 () Bool)

(assert (=> start!112340 m!1219445))

(declare-fun m!1219447 () Bool)

(assert (=> start!112340 m!1219447))

(declare-fun m!1219449 () Bool)

(assert (=> start!112340 m!1219449))

(declare-fun m!1219451 () Bool)

(assert (=> b!1330745 m!1219451))

(declare-fun m!1219453 () Bool)

(assert (=> b!1330749 m!1219453))

(assert (=> b!1330749 m!1219453))

(declare-fun m!1219455 () Bool)

(assert (=> b!1330749 m!1219455))

(assert (=> b!1330748 m!1219453))

(declare-fun m!1219457 () Bool)

(assert (=> b!1330742 m!1219457))

(declare-fun m!1219459 () Bool)

(assert (=> b!1330742 m!1219459))

(assert (=> b!1330742 m!1219457))

(declare-fun m!1219461 () Bool)

(assert (=> b!1330742 m!1219461))

(declare-fun m!1219463 () Bool)

(assert (=> b!1330742 m!1219463))

(declare-fun m!1219465 () Bool)

(assert (=> b!1330742 m!1219465))

(declare-fun m!1219467 () Bool)

(assert (=> b!1330742 m!1219467))

(declare-fun m!1219469 () Bool)

(assert (=> b!1330742 m!1219469))

(assert (=> b!1330742 m!1219459))

(assert (=> b!1330742 m!1219453))

(declare-fun m!1219471 () Bool)

(assert (=> b!1330742 m!1219471))

(declare-fun m!1219473 () Bool)

(assert (=> b!1330742 m!1219473))

(assert (=> b!1330742 m!1219453))

(declare-fun m!1219475 () Bool)

(assert (=> b!1330751 m!1219475))

(assert (=> b!1330751 m!1219475))

(declare-fun m!1219477 () Bool)

(assert (=> b!1330751 m!1219477))

(declare-fun m!1219479 () Bool)

(assert (=> b!1330746 m!1219479))

(declare-fun m!1219481 () Bool)

(assert (=> mapNonEmpty!56587 m!1219481))

(check-sat (not b!1330746) (not b!1330745) b_and!49465 (not start!112340) (not b!1330749) (not mapNonEmpty!56587) (not b!1330742) (not b_next!30699) tp_is_empty!36609 (not b!1330751) (not b_lambda!23969))
(check-sat b_and!49465 (not b_next!30699))
