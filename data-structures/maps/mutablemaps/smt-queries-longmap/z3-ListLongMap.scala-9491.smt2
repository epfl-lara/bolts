; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112592 () Bool)

(assert start!112592)

(declare-fun b_free!30951 () Bool)

(declare-fun b_next!30951 () Bool)

(assert (=> start!112592 (= b_free!30951 (not b_next!30951))))

(declare-fun tp!108490 () Bool)

(declare-fun b_and!49869 () Bool)

(assert (=> start!112592 (= tp!108490 b_and!49869)))

(declare-fun b!1335026 () Bool)

(declare-fun e!760387 () Bool)

(assert (=> b!1335026 (= e!760387 false)))

(declare-datatypes ((V!54251 0))(
  ( (V!54252 (val!18505 Int)) )
))
(declare-datatypes ((ValueCell!17532 0))(
  ( (ValueCellFull!17532 (v!21140 V!54251)) (EmptyCell!17532) )
))
(declare-datatypes ((array!90561 0))(
  ( (array!90562 (arr!43742 (Array (_ BitVec 32) ValueCell!17532)) (size!44293 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90561)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!54251)

(declare-fun zeroValue!1262 () V!54251)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun lt!592364 () Bool)

(declare-datatypes ((array!90563 0))(
  ( (array!90564 (arr!43743 (Array (_ BitVec 32) (_ BitVec 64))) (size!44294 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90563)

(declare-datatypes ((tuple2!24016 0))(
  ( (tuple2!24017 (_1!12018 (_ BitVec 64)) (_2!12018 V!54251)) )
))
(declare-datatypes ((List!31187 0))(
  ( (Nil!31184) (Cons!31183 (h!32392 tuple2!24016) (t!45458 List!31187)) )
))
(declare-datatypes ((ListLongMap!21685 0))(
  ( (ListLongMap!21686 (toList!10858 List!31187)) )
))
(declare-fun contains!8958 (ListLongMap!21685 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5769 (array!90563 array!90561 (_ BitVec 32) (_ BitVec 32) V!54251 V!54251 (_ BitVec 32) Int) ListLongMap!21685)

(assert (=> b!1335026 (= lt!592364 (contains!8958 (getCurrentListMap!5769 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1335027 () Bool)

(declare-fun res!886111 () Bool)

(assert (=> b!1335027 (=> (not res!886111) (not e!760387))))

(assert (=> b!1335027 (= res!886111 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44294 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!56965 () Bool)

(declare-fun mapRes!56965 () Bool)

(declare-fun tp!108491 () Bool)

(declare-fun e!760388 () Bool)

(assert (=> mapNonEmpty!56965 (= mapRes!56965 (and tp!108491 e!760388))))

(declare-fun mapValue!56965 () ValueCell!17532)

(declare-fun mapRest!56965 () (Array (_ BitVec 32) ValueCell!17532))

(declare-fun mapKey!56965 () (_ BitVec 32))

(assert (=> mapNonEmpty!56965 (= (arr!43742 _values!1320) (store mapRest!56965 mapKey!56965 mapValue!56965))))

(declare-fun b!1335028 () Bool)

(declare-fun e!760389 () Bool)

(declare-fun tp_is_empty!36861 () Bool)

(assert (=> b!1335028 (= e!760389 tp_is_empty!36861)))

(declare-fun b!1335029 () Bool)

(declare-fun res!886109 () Bool)

(assert (=> b!1335029 (=> (not res!886109) (not e!760387))))

(declare-datatypes ((List!31188 0))(
  ( (Nil!31185) (Cons!31184 (h!32393 (_ BitVec 64)) (t!45459 List!31188)) )
))
(declare-fun arrayNoDuplicates!0 (array!90563 (_ BitVec 32) List!31188) Bool)

(assert (=> b!1335029 (= res!886109 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31185))))

(declare-fun b!1335030 () Bool)

(declare-fun res!886112 () Bool)

(assert (=> b!1335030 (=> (not res!886112) (not e!760387))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90563 (_ BitVec 32)) Bool)

(assert (=> b!1335030 (= res!886112 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1335031 () Bool)

(declare-fun res!886108 () Bool)

(assert (=> b!1335031 (=> (not res!886108) (not e!760387))))

(assert (=> b!1335031 (= res!886108 (and (= (size!44293 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44294 _keys!1590) (size!44293 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun res!886110 () Bool)

(assert (=> start!112592 (=> (not res!886110) (not e!760387))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112592 (= res!886110 (validMask!0 mask!1998))))

(assert (=> start!112592 e!760387))

(declare-fun e!760390 () Bool)

(declare-fun array_inv!32925 (array!90561) Bool)

(assert (=> start!112592 (and (array_inv!32925 _values!1320) e!760390)))

(assert (=> start!112592 true))

(declare-fun array_inv!32926 (array!90563) Bool)

(assert (=> start!112592 (array_inv!32926 _keys!1590)))

(assert (=> start!112592 tp!108490))

(assert (=> start!112592 tp_is_empty!36861))

(declare-fun b!1335025 () Bool)

(assert (=> b!1335025 (= e!760388 tp_is_empty!36861)))

(declare-fun b!1335032 () Bool)

(assert (=> b!1335032 (= e!760390 (and e!760389 mapRes!56965))))

(declare-fun condMapEmpty!56965 () Bool)

(declare-fun mapDefault!56965 () ValueCell!17532)

(assert (=> b!1335032 (= condMapEmpty!56965 (= (arr!43742 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17532)) mapDefault!56965)))))

(declare-fun mapIsEmpty!56965 () Bool)

(assert (=> mapIsEmpty!56965 mapRes!56965))

(assert (= (and start!112592 res!886110) b!1335031))

(assert (= (and b!1335031 res!886108) b!1335030))

(assert (= (and b!1335030 res!886112) b!1335029))

(assert (= (and b!1335029 res!886109) b!1335027))

(assert (= (and b!1335027 res!886111) b!1335026))

(assert (= (and b!1335032 condMapEmpty!56965) mapIsEmpty!56965))

(assert (= (and b!1335032 (not condMapEmpty!56965)) mapNonEmpty!56965))

(get-info :version)

(assert (= (and mapNonEmpty!56965 ((_ is ValueCellFull!17532) mapValue!56965)) b!1335025))

(assert (= (and b!1335032 ((_ is ValueCellFull!17532) mapDefault!56965)) b!1335028))

(assert (= start!112592 b!1335032))

(declare-fun m!1223239 () Bool)

(assert (=> mapNonEmpty!56965 m!1223239))

(declare-fun m!1223241 () Bool)

(assert (=> b!1335030 m!1223241))

(declare-fun m!1223243 () Bool)

(assert (=> b!1335026 m!1223243))

(assert (=> b!1335026 m!1223243))

(declare-fun m!1223245 () Bool)

(assert (=> b!1335026 m!1223245))

(declare-fun m!1223247 () Bool)

(assert (=> b!1335029 m!1223247))

(declare-fun m!1223249 () Bool)

(assert (=> start!112592 m!1223249))

(declare-fun m!1223251 () Bool)

(assert (=> start!112592 m!1223251))

(declare-fun m!1223253 () Bool)

(assert (=> start!112592 m!1223253))

(check-sat (not b!1335030) (not b!1335026) (not mapNonEmpty!56965) (not start!112592) (not b_next!30951) b_and!49869 (not b!1335029) tp_is_empty!36861)
(check-sat b_and!49869 (not b_next!30951))
