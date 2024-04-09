; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112562 () Bool)

(assert start!112562)

(declare-fun b_free!30921 () Bool)

(declare-fun b_next!30921 () Bool)

(assert (=> start!112562 (= b_free!30921 (not b_next!30921))))

(declare-fun tp!108400 () Bool)

(declare-fun b_and!49839 () Bool)

(assert (=> start!112562 (= tp!108400 b_and!49839)))

(declare-fun b!1334665 () Bool)

(declare-fun e!760165 () Bool)

(declare-fun tp_is_empty!36831 () Bool)

(assert (=> b!1334665 (= e!760165 tp_is_empty!36831)))

(declare-fun b!1334666 () Bool)

(declare-fun res!885884 () Bool)

(declare-fun e!760164 () Bool)

(assert (=> b!1334666 (=> (not res!885884) (not e!760164))))

(declare-datatypes ((V!54211 0))(
  ( (V!54212 (val!18490 Int)) )
))
(declare-datatypes ((ValueCell!17517 0))(
  ( (ValueCellFull!17517 (v!21125 V!54211)) (EmptyCell!17517) )
))
(declare-datatypes ((array!90503 0))(
  ( (array!90504 (arr!43713 (Array (_ BitVec 32) ValueCell!17517)) (size!44264 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90503)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90505 0))(
  ( (array!90506 (arr!43714 (Array (_ BitVec 32) (_ BitVec 64))) (size!44265 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90505)

(assert (=> b!1334666 (= res!885884 (and (= (size!44264 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44265 _keys!1590) (size!44264 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun res!885885 () Bool)

(assert (=> start!112562 (=> (not res!885885) (not e!760164))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112562 (= res!885885 (validMask!0 mask!1998))))

(assert (=> start!112562 e!760164))

(declare-fun e!760163 () Bool)

(declare-fun array_inv!32903 (array!90503) Bool)

(assert (=> start!112562 (and (array_inv!32903 _values!1320) e!760163)))

(assert (=> start!112562 true))

(declare-fun array_inv!32904 (array!90505) Bool)

(assert (=> start!112562 (array_inv!32904 _keys!1590)))

(assert (=> start!112562 tp!108400))

(assert (=> start!112562 tp_is_empty!36831))

(declare-fun b!1334667 () Bool)

(declare-fun res!885883 () Bool)

(assert (=> b!1334667 (=> (not res!885883) (not e!760164))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun k0!1153 () (_ BitVec 64))

(assert (=> b!1334667 (= res!885883 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44265 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1334668 () Bool)

(declare-fun res!885887 () Bool)

(assert (=> b!1334668 (=> (not res!885887) (not e!760164))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90505 (_ BitVec 32)) Bool)

(assert (=> b!1334668 (= res!885887 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1334669 () Bool)

(declare-fun res!885886 () Bool)

(assert (=> b!1334669 (=> (not res!885886) (not e!760164))))

(declare-datatypes ((List!31171 0))(
  ( (Nil!31168) (Cons!31167 (h!32376 (_ BitVec 64)) (t!45442 List!31171)) )
))
(declare-fun arrayNoDuplicates!0 (array!90505 (_ BitVec 32) List!31171) Bool)

(assert (=> b!1334669 (= res!885886 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31168))))

(declare-fun b!1334670 () Bool)

(declare-fun e!760162 () Bool)

(assert (=> b!1334670 (= e!760162 tp_is_empty!36831)))

(declare-fun b!1334671 () Bool)

(assert (=> b!1334671 (= e!760164 false)))

(declare-fun defaultEntry!1323 () Int)

(declare-fun lt!592319 () Bool)

(declare-fun minValue!1262 () V!54211)

(declare-fun zeroValue!1262 () V!54211)

(declare-datatypes ((tuple2!24000 0))(
  ( (tuple2!24001 (_1!12010 (_ BitVec 64)) (_2!12010 V!54211)) )
))
(declare-datatypes ((List!31172 0))(
  ( (Nil!31169) (Cons!31168 (h!32377 tuple2!24000) (t!45443 List!31172)) )
))
(declare-datatypes ((ListLongMap!21669 0))(
  ( (ListLongMap!21670 (toList!10850 List!31172)) )
))
(declare-fun contains!8950 (ListLongMap!21669 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5761 (array!90505 array!90503 (_ BitVec 32) (_ BitVec 32) V!54211 V!54211 (_ BitVec 32) Int) ListLongMap!21669)

(assert (=> b!1334671 (= lt!592319 (contains!8950 (getCurrentListMap!5761 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1334672 () Bool)

(declare-fun mapRes!56920 () Bool)

(assert (=> b!1334672 (= e!760163 (and e!760162 mapRes!56920))))

(declare-fun condMapEmpty!56920 () Bool)

(declare-fun mapDefault!56920 () ValueCell!17517)

(assert (=> b!1334672 (= condMapEmpty!56920 (= (arr!43713 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17517)) mapDefault!56920)))))

(declare-fun mapNonEmpty!56920 () Bool)

(declare-fun tp!108401 () Bool)

(assert (=> mapNonEmpty!56920 (= mapRes!56920 (and tp!108401 e!760165))))

(declare-fun mapKey!56920 () (_ BitVec 32))

(declare-fun mapRest!56920 () (Array (_ BitVec 32) ValueCell!17517))

(declare-fun mapValue!56920 () ValueCell!17517)

(assert (=> mapNonEmpty!56920 (= (arr!43713 _values!1320) (store mapRest!56920 mapKey!56920 mapValue!56920))))

(declare-fun mapIsEmpty!56920 () Bool)

(assert (=> mapIsEmpty!56920 mapRes!56920))

(assert (= (and start!112562 res!885885) b!1334666))

(assert (= (and b!1334666 res!885884) b!1334668))

(assert (= (and b!1334668 res!885887) b!1334669))

(assert (= (and b!1334669 res!885886) b!1334667))

(assert (= (and b!1334667 res!885883) b!1334671))

(assert (= (and b!1334672 condMapEmpty!56920) mapIsEmpty!56920))

(assert (= (and b!1334672 (not condMapEmpty!56920)) mapNonEmpty!56920))

(get-info :version)

(assert (= (and mapNonEmpty!56920 ((_ is ValueCellFull!17517) mapValue!56920)) b!1334665))

(assert (= (and b!1334672 ((_ is ValueCellFull!17517) mapDefault!56920)) b!1334670))

(assert (= start!112562 b!1334672))

(declare-fun m!1222999 () Bool)

(assert (=> start!112562 m!1222999))

(declare-fun m!1223001 () Bool)

(assert (=> start!112562 m!1223001))

(declare-fun m!1223003 () Bool)

(assert (=> start!112562 m!1223003))

(declare-fun m!1223005 () Bool)

(assert (=> mapNonEmpty!56920 m!1223005))

(declare-fun m!1223007 () Bool)

(assert (=> b!1334669 m!1223007))

(declare-fun m!1223009 () Bool)

(assert (=> b!1334671 m!1223009))

(assert (=> b!1334671 m!1223009))

(declare-fun m!1223011 () Bool)

(assert (=> b!1334671 m!1223011))

(declare-fun m!1223013 () Bool)

(assert (=> b!1334668 m!1223013))

(check-sat (not b_next!30921) tp_is_empty!36831 (not b!1334668) (not b!1334671) (not b!1334669) (not mapNonEmpty!56920) b_and!49839 (not start!112562))
(check-sat b_and!49839 (not b_next!30921))
