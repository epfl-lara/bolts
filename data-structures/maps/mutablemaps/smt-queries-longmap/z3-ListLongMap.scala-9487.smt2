; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112568 () Bool)

(assert start!112568)

(declare-fun b_free!30927 () Bool)

(declare-fun b_next!30927 () Bool)

(assert (=> start!112568 (= b_free!30927 (not b_next!30927))))

(declare-fun tp!108419 () Bool)

(declare-fun b_and!49845 () Bool)

(assert (=> start!112568 (= tp!108419 b_and!49845)))

(declare-fun b!1334737 () Bool)

(declare-fun e!760209 () Bool)

(declare-fun tp_is_empty!36837 () Bool)

(assert (=> b!1334737 (= e!760209 tp_is_empty!36837)))

(declare-fun b!1334738 () Bool)

(declare-fun res!885931 () Bool)

(declare-fun e!760206 () Bool)

(assert (=> b!1334738 (=> (not res!885931) (not e!760206))))

(declare-datatypes ((array!90515 0))(
  ( (array!90516 (arr!43719 (Array (_ BitVec 32) (_ BitVec 64))) (size!44270 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90515)

(declare-datatypes ((List!31173 0))(
  ( (Nil!31170) (Cons!31169 (h!32378 (_ BitVec 64)) (t!45444 List!31173)) )
))
(declare-fun arrayNoDuplicates!0 (array!90515 (_ BitVec 32) List!31173) Bool)

(assert (=> b!1334738 (= res!885931 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31170))))

(declare-fun b!1334740 () Bool)

(assert (=> b!1334740 (= e!760206 false)))

(declare-datatypes ((V!54219 0))(
  ( (V!54220 (val!18493 Int)) )
))
(declare-datatypes ((ValueCell!17520 0))(
  ( (ValueCellFull!17520 (v!21128 V!54219)) (EmptyCell!17520) )
))
(declare-datatypes ((array!90517 0))(
  ( (array!90518 (arr!43720 (Array (_ BitVec 32) ValueCell!17520)) (size!44271 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90517)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun lt!592328 () Bool)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!54219)

(declare-fun zeroValue!1262 () V!54219)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!24002 0))(
  ( (tuple2!24003 (_1!12011 (_ BitVec 64)) (_2!12011 V!54219)) )
))
(declare-datatypes ((List!31174 0))(
  ( (Nil!31171) (Cons!31170 (h!32379 tuple2!24002) (t!45445 List!31174)) )
))
(declare-datatypes ((ListLongMap!21671 0))(
  ( (ListLongMap!21672 (toList!10851 List!31174)) )
))
(declare-fun contains!8951 (ListLongMap!21671 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5762 (array!90515 array!90517 (_ BitVec 32) (_ BitVec 32) V!54219 V!54219 (_ BitVec 32) Int) ListLongMap!21671)

(assert (=> b!1334740 (= lt!592328 (contains!8951 (getCurrentListMap!5762 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1334741 () Bool)

(declare-fun res!885930 () Bool)

(assert (=> b!1334741 (=> (not res!885930) (not e!760206))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90515 (_ BitVec 32)) Bool)

(assert (=> b!1334741 (= res!885930 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun mapNonEmpty!56929 () Bool)

(declare-fun mapRes!56929 () Bool)

(declare-fun tp!108418 () Bool)

(declare-fun e!760210 () Bool)

(assert (=> mapNonEmpty!56929 (= mapRes!56929 (and tp!108418 e!760210))))

(declare-fun mapRest!56929 () (Array (_ BitVec 32) ValueCell!17520))

(declare-fun mapKey!56929 () (_ BitVec 32))

(declare-fun mapValue!56929 () ValueCell!17520)

(assert (=> mapNonEmpty!56929 (= (arr!43720 _values!1320) (store mapRest!56929 mapKey!56929 mapValue!56929))))

(declare-fun b!1334742 () Bool)

(assert (=> b!1334742 (= e!760210 tp_is_empty!36837)))

(declare-fun b!1334743 () Bool)

(declare-fun res!885929 () Bool)

(assert (=> b!1334743 (=> (not res!885929) (not e!760206))))

(assert (=> b!1334743 (= res!885929 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44270 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!885928 () Bool)

(assert (=> start!112568 (=> (not res!885928) (not e!760206))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112568 (= res!885928 (validMask!0 mask!1998))))

(assert (=> start!112568 e!760206))

(declare-fun e!760207 () Bool)

(declare-fun array_inv!32905 (array!90517) Bool)

(assert (=> start!112568 (and (array_inv!32905 _values!1320) e!760207)))

(assert (=> start!112568 true))

(declare-fun array_inv!32906 (array!90515) Bool)

(assert (=> start!112568 (array_inv!32906 _keys!1590)))

(assert (=> start!112568 tp!108419))

(assert (=> start!112568 tp_is_empty!36837))

(declare-fun b!1334739 () Bool)

(assert (=> b!1334739 (= e!760207 (and e!760209 mapRes!56929))))

(declare-fun condMapEmpty!56929 () Bool)

(declare-fun mapDefault!56929 () ValueCell!17520)

(assert (=> b!1334739 (= condMapEmpty!56929 (= (arr!43720 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17520)) mapDefault!56929)))))

(declare-fun mapIsEmpty!56929 () Bool)

(assert (=> mapIsEmpty!56929 mapRes!56929))

(declare-fun b!1334744 () Bool)

(declare-fun res!885932 () Bool)

(assert (=> b!1334744 (=> (not res!885932) (not e!760206))))

(assert (=> b!1334744 (= res!885932 (and (= (size!44271 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44270 _keys!1590) (size!44271 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(assert (= (and start!112568 res!885928) b!1334744))

(assert (= (and b!1334744 res!885932) b!1334741))

(assert (= (and b!1334741 res!885930) b!1334738))

(assert (= (and b!1334738 res!885931) b!1334743))

(assert (= (and b!1334743 res!885929) b!1334740))

(assert (= (and b!1334739 condMapEmpty!56929) mapIsEmpty!56929))

(assert (= (and b!1334739 (not condMapEmpty!56929)) mapNonEmpty!56929))

(get-info :version)

(assert (= (and mapNonEmpty!56929 ((_ is ValueCellFull!17520) mapValue!56929)) b!1334742))

(assert (= (and b!1334739 ((_ is ValueCellFull!17520) mapDefault!56929)) b!1334737))

(assert (= start!112568 b!1334739))

(declare-fun m!1223047 () Bool)

(assert (=> start!112568 m!1223047))

(declare-fun m!1223049 () Bool)

(assert (=> start!112568 m!1223049))

(declare-fun m!1223051 () Bool)

(assert (=> start!112568 m!1223051))

(declare-fun m!1223053 () Bool)

(assert (=> b!1334740 m!1223053))

(assert (=> b!1334740 m!1223053))

(declare-fun m!1223055 () Bool)

(assert (=> b!1334740 m!1223055))

(declare-fun m!1223057 () Bool)

(assert (=> b!1334741 m!1223057))

(declare-fun m!1223059 () Bool)

(assert (=> mapNonEmpty!56929 m!1223059))

(declare-fun m!1223061 () Bool)

(assert (=> b!1334738 m!1223061))

(check-sat (not start!112568) (not mapNonEmpty!56929) (not b!1334741) (not b!1334740) tp_is_empty!36837 b_and!49845 (not b!1334738) (not b_next!30927))
(check-sat b_and!49845 (not b_next!30927))
