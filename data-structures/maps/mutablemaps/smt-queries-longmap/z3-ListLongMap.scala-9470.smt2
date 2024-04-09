; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112466 () Bool)

(assert start!112466)

(declare-fun b_free!30825 () Bool)

(declare-fun b_next!30825 () Bool)

(assert (=> start!112466 (= b_free!30825 (not b_next!30825))))

(declare-fun tp!108112 () Bool)

(declare-fun b_and!49677 () Bool)

(assert (=> start!112466 (= tp!108112 b_and!49677)))

(declare-fun b!1332862 () Bool)

(declare-fun e!759361 () Bool)

(declare-fun tp_is_empty!36735 () Bool)

(assert (=> b!1332862 (= e!759361 tp_is_empty!36735)))

(declare-fun b!1332863 () Bool)

(declare-fun res!884581 () Bool)

(declare-fun e!759362 () Bool)

(assert (=> b!1332863 (=> (not res!884581) (not e!759362))))

(declare-datatypes ((array!90317 0))(
  ( (array!90318 (arr!43620 (Array (_ BitVec 32) (_ BitVec 64))) (size!44171 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90317)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90317 (_ BitVec 32)) Bool)

(assert (=> b!1332863 (= res!884581 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun mapIsEmpty!56776 () Bool)

(declare-fun mapRes!56776 () Bool)

(assert (=> mapIsEmpty!56776 mapRes!56776))

(declare-fun b!1332865 () Bool)

(declare-fun e!759360 () Bool)

(declare-fun e!759363 () Bool)

(assert (=> b!1332865 (= e!759360 (and e!759363 mapRes!56776))))

(declare-fun condMapEmpty!56776 () Bool)

(declare-datatypes ((V!54083 0))(
  ( (V!54084 (val!18442 Int)) )
))
(declare-datatypes ((ValueCell!17469 0))(
  ( (ValueCellFull!17469 (v!21077 V!54083)) (EmptyCell!17469) )
))
(declare-datatypes ((array!90319 0))(
  ( (array!90320 (arr!43621 (Array (_ BitVec 32) ValueCell!17469)) (size!44172 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90319)

(declare-fun mapDefault!56776 () ValueCell!17469)

(assert (=> b!1332865 (= condMapEmpty!56776 (= (arr!43621 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17469)) mapDefault!56776)))))

(declare-fun b!1332866 () Bool)

(assert (=> b!1332866 (= e!759363 tp_is_empty!36735)))

(declare-fun mapNonEmpty!56776 () Bool)

(declare-fun tp!108113 () Bool)

(assert (=> mapNonEmpty!56776 (= mapRes!56776 (and tp!108113 e!759361))))

(declare-fun mapRest!56776 () (Array (_ BitVec 32) ValueCell!17469))

(declare-fun mapKey!56776 () (_ BitVec 32))

(declare-fun mapValue!56776 () ValueCell!17469)

(assert (=> mapNonEmpty!56776 (= (arr!43621 _values!1320) (store mapRest!56776 mapKey!56776 mapValue!56776))))

(declare-fun b!1332867 () Bool)

(declare-fun res!884580 () Bool)

(assert (=> b!1332867 (=> (not res!884580) (not e!759362))))

(declare-datatypes ((List!31099 0))(
  ( (Nil!31096) (Cons!31095 (h!32304 (_ BitVec 64)) (t!45304 List!31099)) )
))
(declare-fun arrayNoDuplicates!0 (array!90317 (_ BitVec 32) List!31099) Bool)

(assert (=> b!1332867 (= res!884580 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31096))))

(declare-fun b!1332868 () Bool)

(assert (=> b!1332868 (= e!759362 false)))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun lt!592022 () Bool)

(declare-fun minValue!1262 () V!54083)

(declare-fun zeroValue!1262 () V!54083)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!23920 0))(
  ( (tuple2!23921 (_1!11970 (_ BitVec 64)) (_2!11970 V!54083)) )
))
(declare-datatypes ((List!31100 0))(
  ( (Nil!31097) (Cons!31096 (h!32305 tuple2!23920) (t!45305 List!31100)) )
))
(declare-datatypes ((ListLongMap!21589 0))(
  ( (ListLongMap!21590 (toList!10810 List!31100)) )
))
(declare-fun contains!8910 (ListLongMap!21589 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5731 (array!90317 array!90319 (_ BitVec 32) (_ BitVec 32) V!54083 V!54083 (_ BitVec 32) Int) ListLongMap!21589)

(assert (=> b!1332868 (= lt!592022 (contains!8910 (getCurrentListMap!5731 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1332869 () Bool)

(declare-fun res!884579 () Bool)

(assert (=> b!1332869 (=> (not res!884579) (not e!759362))))

(assert (=> b!1332869 (= res!884579 (and (= (size!44172 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44171 _keys!1590) (size!44172 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1332864 () Bool)

(declare-fun res!884578 () Bool)

(assert (=> b!1332864 (=> (not res!884578) (not e!759362))))

(assert (=> b!1332864 (= res!884578 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44171 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!884582 () Bool)

(assert (=> start!112466 (=> (not res!884582) (not e!759362))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112466 (= res!884582 (validMask!0 mask!1998))))

(assert (=> start!112466 e!759362))

(declare-fun array_inv!32845 (array!90319) Bool)

(assert (=> start!112466 (and (array_inv!32845 _values!1320) e!759360)))

(assert (=> start!112466 true))

(declare-fun array_inv!32846 (array!90317) Bool)

(assert (=> start!112466 (array_inv!32846 _keys!1590)))

(assert (=> start!112466 tp!108112))

(assert (=> start!112466 tp_is_empty!36735))

(assert (= (and start!112466 res!884582) b!1332869))

(assert (= (and b!1332869 res!884579) b!1332863))

(assert (= (and b!1332863 res!884581) b!1332867))

(assert (= (and b!1332867 res!884580) b!1332864))

(assert (= (and b!1332864 res!884578) b!1332868))

(assert (= (and b!1332865 condMapEmpty!56776) mapIsEmpty!56776))

(assert (= (and b!1332865 (not condMapEmpty!56776)) mapNonEmpty!56776))

(get-info :version)

(assert (= (and mapNonEmpty!56776 ((_ is ValueCellFull!17469) mapValue!56776)) b!1332862))

(assert (= (and b!1332865 ((_ is ValueCellFull!17469) mapDefault!56776)) b!1332866))

(assert (= start!112466 b!1332865))

(declare-fun m!1221583 () Bool)

(assert (=> mapNonEmpty!56776 m!1221583))

(declare-fun m!1221585 () Bool)

(assert (=> b!1332867 m!1221585))

(declare-fun m!1221587 () Bool)

(assert (=> b!1332863 m!1221587))

(declare-fun m!1221589 () Bool)

(assert (=> start!112466 m!1221589))

(declare-fun m!1221591 () Bool)

(assert (=> start!112466 m!1221591))

(declare-fun m!1221593 () Bool)

(assert (=> start!112466 m!1221593))

(declare-fun m!1221595 () Bool)

(assert (=> b!1332868 m!1221595))

(assert (=> b!1332868 m!1221595))

(declare-fun m!1221597 () Bool)

(assert (=> b!1332868 m!1221597))

(check-sat b_and!49677 tp_is_empty!36735 (not b!1332863) (not mapNonEmpty!56776) (not b!1332868) (not b_next!30825) (not start!112466) (not b!1332867))
(check-sat b_and!49677 (not b_next!30825))
