; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112766 () Bool)

(assert start!112766)

(declare-fun b_free!31041 () Bool)

(declare-fun b_next!31041 () Bool)

(assert (=> start!112766 (= b_free!31041 (not b_next!31041))))

(declare-fun tp!108768 () Bool)

(declare-fun b_and!50029 () Bool)

(assert (=> start!112766 (= tp!108768 b_and!50029)))

(declare-fun b!1337130 () Bool)

(declare-fun res!887431 () Bool)

(declare-fun e!761427 () Bool)

(assert (=> b!1337130 (=> (not res!887431) (not e!761427))))

(declare-datatypes ((array!90733 0))(
  ( (array!90734 (arr!43826 (Array (_ BitVec 32) (_ BitVec 64))) (size!44377 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90733)

(declare-datatypes ((List!31242 0))(
  ( (Nil!31239) (Cons!31238 (h!32447 (_ BitVec 64)) (t!45561 List!31242)) )
))
(declare-fun arrayNoDuplicates!0 (array!90733 (_ BitVec 32) List!31242) Bool)

(assert (=> b!1337130 (= res!887431 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31239))))

(declare-fun b!1337131 () Bool)

(declare-fun e!761428 () Bool)

(declare-fun e!761426 () Bool)

(declare-fun mapRes!57107 () Bool)

(assert (=> b!1337131 (= e!761428 (and e!761426 mapRes!57107))))

(declare-fun condMapEmpty!57107 () Bool)

(declare-datatypes ((V!54371 0))(
  ( (V!54372 (val!18550 Int)) )
))
(declare-datatypes ((ValueCell!17577 0))(
  ( (ValueCellFull!17577 (v!21189 V!54371)) (EmptyCell!17577) )
))
(declare-datatypes ((array!90735 0))(
  ( (array!90736 (arr!43827 (Array (_ BitVec 32) ValueCell!17577)) (size!44378 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90735)

(declare-fun mapDefault!57107 () ValueCell!17577)

(assert (=> b!1337131 (= condMapEmpty!57107 (= (arr!43827 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17577)) mapDefault!57107)))))

(declare-fun b!1337132 () Bool)

(declare-fun res!887425 () Bool)

(assert (=> b!1337132 (=> (not res!887425) (not e!761427))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun k0!1153 () (_ BitVec 64))

(assert (=> b!1337132 (= res!887425 (not (= (select (arr!43826 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1337133 () Bool)

(declare-fun e!761425 () Bool)

(declare-fun tp_is_empty!36951 () Bool)

(assert (=> b!1337133 (= e!761425 tp_is_empty!36951)))

(declare-fun mapNonEmpty!57107 () Bool)

(declare-fun tp!108767 () Bool)

(assert (=> mapNonEmpty!57107 (= mapRes!57107 (and tp!108767 e!761425))))

(declare-fun mapRest!57107 () (Array (_ BitVec 32) ValueCell!17577))

(declare-fun mapKey!57107 () (_ BitVec 32))

(declare-fun mapValue!57107 () ValueCell!17577)

(assert (=> mapNonEmpty!57107 (= (arr!43827 _values!1320) (store mapRest!57107 mapKey!57107 mapValue!57107))))

(declare-fun res!887427 () Bool)

(assert (=> start!112766 (=> (not res!887427) (not e!761427))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112766 (= res!887427 (validMask!0 mask!1998))))

(assert (=> start!112766 e!761427))

(declare-fun array_inv!32977 (array!90735) Bool)

(assert (=> start!112766 (and (array_inv!32977 _values!1320) e!761428)))

(assert (=> start!112766 true))

(declare-fun array_inv!32978 (array!90733) Bool)

(assert (=> start!112766 (array_inv!32978 _keys!1590)))

(assert (=> start!112766 tp!108768))

(assert (=> start!112766 tp_is_empty!36951))

(declare-fun mapIsEmpty!57107 () Bool)

(assert (=> mapIsEmpty!57107 mapRes!57107))

(declare-fun b!1337134 () Bool)

(assert (=> b!1337134 (= e!761426 tp_is_empty!36951)))

(declare-fun b!1337135 () Bool)

(declare-fun res!887429 () Bool)

(assert (=> b!1337135 (=> (not res!887429) (not e!761427))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1337135 (= res!887429 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44377 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1337136 () Bool)

(declare-fun res!887430 () Bool)

(assert (=> b!1337136 (=> (not res!887430) (not e!761427))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1337136 (= res!887430 (validKeyInArray!0 (select (arr!43826 _keys!1590) from!1980)))))

(declare-fun b!1337137 () Bool)

(declare-fun res!887424 () Bool)

(assert (=> b!1337137 (=> (not res!887424) (not e!761427))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90733 (_ BitVec 32)) Bool)

(assert (=> b!1337137 (= res!887424 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1337138 () Bool)

(declare-fun res!887426 () Bool)

(assert (=> b!1337138 (=> (not res!887426) (not e!761427))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54371)

(declare-fun zeroValue!1262 () V!54371)

(declare-datatypes ((tuple2!24074 0))(
  ( (tuple2!24075 (_1!12047 (_ BitVec 64)) (_2!12047 V!54371)) )
))
(declare-datatypes ((List!31243 0))(
  ( (Nil!31240) (Cons!31239 (h!32448 tuple2!24074) (t!45562 List!31243)) )
))
(declare-datatypes ((ListLongMap!21743 0))(
  ( (ListLongMap!21744 (toList!10887 List!31243)) )
))
(declare-fun contains!8990 (ListLongMap!21743 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5793 (array!90733 array!90735 (_ BitVec 32) (_ BitVec 32) V!54371 V!54371 (_ BitVec 32) Int) ListLongMap!21743)

(assert (=> b!1337138 (= res!887426 (contains!8990 (getCurrentListMap!5793 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1337139 () Bool)

(assert (=> b!1337139 (= e!761427 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1980 (size!44378 _values!1320))))))

(declare-fun b!1337140 () Bool)

(declare-fun res!887428 () Bool)

(assert (=> b!1337140 (=> (not res!887428) (not e!761427))))

(assert (=> b!1337140 (= res!887428 (and (= (size!44378 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44377 _keys!1590) (size!44378 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(assert (= (and start!112766 res!887427) b!1337140))

(assert (= (and b!1337140 res!887428) b!1337137))

(assert (= (and b!1337137 res!887424) b!1337130))

(assert (= (and b!1337130 res!887431) b!1337135))

(assert (= (and b!1337135 res!887429) b!1337138))

(assert (= (and b!1337138 res!887426) b!1337132))

(assert (= (and b!1337132 res!887425) b!1337136))

(assert (= (and b!1337136 res!887430) b!1337139))

(assert (= (and b!1337131 condMapEmpty!57107) mapIsEmpty!57107))

(assert (= (and b!1337131 (not condMapEmpty!57107)) mapNonEmpty!57107))

(get-info :version)

(assert (= (and mapNonEmpty!57107 ((_ is ValueCellFull!17577) mapValue!57107)) b!1337133))

(assert (= (and b!1337131 ((_ is ValueCellFull!17577) mapDefault!57107)) b!1337134))

(assert (= start!112766 b!1337131))

(declare-fun m!1225255 () Bool)

(assert (=> b!1337137 m!1225255))

(declare-fun m!1225257 () Bool)

(assert (=> mapNonEmpty!57107 m!1225257))

(declare-fun m!1225259 () Bool)

(assert (=> b!1337132 m!1225259))

(declare-fun m!1225261 () Bool)

(assert (=> b!1337130 m!1225261))

(declare-fun m!1225263 () Bool)

(assert (=> b!1337138 m!1225263))

(assert (=> b!1337138 m!1225263))

(declare-fun m!1225265 () Bool)

(assert (=> b!1337138 m!1225265))

(assert (=> b!1337136 m!1225259))

(assert (=> b!1337136 m!1225259))

(declare-fun m!1225267 () Bool)

(assert (=> b!1337136 m!1225267))

(declare-fun m!1225269 () Bool)

(assert (=> start!112766 m!1225269))

(declare-fun m!1225271 () Bool)

(assert (=> start!112766 m!1225271))

(declare-fun m!1225273 () Bool)

(assert (=> start!112766 m!1225273))

(check-sat (not start!112766) (not b!1337130) (not b!1337136) (not b_next!31041) (not b!1337138) b_and!50029 (not b!1337137) tp_is_empty!36951 (not mapNonEmpty!57107))
(check-sat b_and!50029 (not b_next!31041))
