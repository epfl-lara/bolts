; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112556 () Bool)

(assert start!112556)

(declare-fun b_free!30915 () Bool)

(declare-fun b_next!30915 () Bool)

(assert (=> start!112556 (= b_free!30915 (not b_next!30915))))

(declare-fun tp!108383 () Bool)

(declare-fun b_and!49833 () Bool)

(assert (=> start!112556 (= tp!108383 b_and!49833)))

(declare-fun res!885838 () Bool)

(declare-fun e!760116 () Bool)

(assert (=> start!112556 (=> (not res!885838) (not e!760116))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112556 (= res!885838 (validMask!0 mask!1998))))

(assert (=> start!112556 e!760116))

(declare-datatypes ((V!54203 0))(
  ( (V!54204 (val!18487 Int)) )
))
(declare-datatypes ((ValueCell!17514 0))(
  ( (ValueCellFull!17514 (v!21122 V!54203)) (EmptyCell!17514) )
))
(declare-datatypes ((array!90491 0))(
  ( (array!90492 (arr!43707 (Array (_ BitVec 32) ValueCell!17514)) (size!44258 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90491)

(declare-fun e!760118 () Bool)

(declare-fun array_inv!32897 (array!90491) Bool)

(assert (=> start!112556 (and (array_inv!32897 _values!1320) e!760118)))

(assert (=> start!112556 true))

(declare-datatypes ((array!90493 0))(
  ( (array!90494 (arr!43708 (Array (_ BitVec 32) (_ BitVec 64))) (size!44259 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90493)

(declare-fun array_inv!32898 (array!90493) Bool)

(assert (=> start!112556 (array_inv!32898 _keys!1590)))

(assert (=> start!112556 tp!108383))

(declare-fun tp_is_empty!36825 () Bool)

(assert (=> start!112556 tp_is_empty!36825))

(declare-fun b!1334593 () Bool)

(assert (=> b!1334593 (= e!760116 false)))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun lt!592310 () Bool)

(declare-fun minValue!1262 () V!54203)

(declare-fun zeroValue!1262 () V!54203)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!23996 0))(
  ( (tuple2!23997 (_1!12008 (_ BitVec 64)) (_2!12008 V!54203)) )
))
(declare-datatypes ((List!31166 0))(
  ( (Nil!31163) (Cons!31162 (h!32371 tuple2!23996) (t!45437 List!31166)) )
))
(declare-datatypes ((ListLongMap!21665 0))(
  ( (ListLongMap!21666 (toList!10848 List!31166)) )
))
(declare-fun contains!8948 (ListLongMap!21665 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5759 (array!90493 array!90491 (_ BitVec 32) (_ BitVec 32) V!54203 V!54203 (_ BitVec 32) Int) ListLongMap!21665)

(assert (=> b!1334593 (= lt!592310 (contains!8948 (getCurrentListMap!5759 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun mapIsEmpty!56911 () Bool)

(declare-fun mapRes!56911 () Bool)

(assert (=> mapIsEmpty!56911 mapRes!56911))

(declare-fun b!1334594 () Bool)

(declare-fun e!760120 () Bool)

(assert (=> b!1334594 (= e!760120 tp_is_empty!36825)))

(declare-fun b!1334595 () Bool)

(declare-fun e!760117 () Bool)

(assert (=> b!1334595 (= e!760117 tp_is_empty!36825)))

(declare-fun b!1334596 () Bool)

(declare-fun res!885842 () Bool)

(assert (=> b!1334596 (=> (not res!885842) (not e!760116))))

(assert (=> b!1334596 (= res!885842 (and (= (size!44258 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44259 _keys!1590) (size!44258 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1334597 () Bool)

(declare-fun res!885839 () Bool)

(assert (=> b!1334597 (=> (not res!885839) (not e!760116))))

(assert (=> b!1334597 (= res!885839 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44259 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1334598 () Bool)

(declare-fun res!885840 () Bool)

(assert (=> b!1334598 (=> (not res!885840) (not e!760116))))

(declare-datatypes ((List!31167 0))(
  ( (Nil!31164) (Cons!31163 (h!32372 (_ BitVec 64)) (t!45438 List!31167)) )
))
(declare-fun arrayNoDuplicates!0 (array!90493 (_ BitVec 32) List!31167) Bool)

(assert (=> b!1334598 (= res!885840 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31164))))

(declare-fun b!1334599 () Bool)

(declare-fun res!885841 () Bool)

(assert (=> b!1334599 (=> (not res!885841) (not e!760116))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90493 (_ BitVec 32)) Bool)

(assert (=> b!1334599 (= res!885841 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun mapNonEmpty!56911 () Bool)

(declare-fun tp!108382 () Bool)

(assert (=> mapNonEmpty!56911 (= mapRes!56911 (and tp!108382 e!760117))))

(declare-fun mapKey!56911 () (_ BitVec 32))

(declare-fun mapValue!56911 () ValueCell!17514)

(declare-fun mapRest!56911 () (Array (_ BitVec 32) ValueCell!17514))

(assert (=> mapNonEmpty!56911 (= (arr!43707 _values!1320) (store mapRest!56911 mapKey!56911 mapValue!56911))))

(declare-fun b!1334600 () Bool)

(assert (=> b!1334600 (= e!760118 (and e!760120 mapRes!56911))))

(declare-fun condMapEmpty!56911 () Bool)

(declare-fun mapDefault!56911 () ValueCell!17514)

(assert (=> b!1334600 (= condMapEmpty!56911 (= (arr!43707 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17514)) mapDefault!56911)))))

(assert (= (and start!112556 res!885838) b!1334596))

(assert (= (and b!1334596 res!885842) b!1334599))

(assert (= (and b!1334599 res!885841) b!1334598))

(assert (= (and b!1334598 res!885840) b!1334597))

(assert (= (and b!1334597 res!885839) b!1334593))

(assert (= (and b!1334600 condMapEmpty!56911) mapIsEmpty!56911))

(assert (= (and b!1334600 (not condMapEmpty!56911)) mapNonEmpty!56911))

(get-info :version)

(assert (= (and mapNonEmpty!56911 ((_ is ValueCellFull!17514) mapValue!56911)) b!1334595))

(assert (= (and b!1334600 ((_ is ValueCellFull!17514) mapDefault!56911)) b!1334594))

(assert (= start!112556 b!1334600))

(declare-fun m!1222951 () Bool)

(assert (=> b!1334593 m!1222951))

(assert (=> b!1334593 m!1222951))

(declare-fun m!1222953 () Bool)

(assert (=> b!1334593 m!1222953))

(declare-fun m!1222955 () Bool)

(assert (=> start!112556 m!1222955))

(declare-fun m!1222957 () Bool)

(assert (=> start!112556 m!1222957))

(declare-fun m!1222959 () Bool)

(assert (=> start!112556 m!1222959))

(declare-fun m!1222961 () Bool)

(assert (=> b!1334598 m!1222961))

(declare-fun m!1222963 () Bool)

(assert (=> mapNonEmpty!56911 m!1222963))

(declare-fun m!1222965 () Bool)

(assert (=> b!1334599 m!1222965))

(check-sat (not b!1334599) (not b!1334598) (not mapNonEmpty!56911) (not start!112556) tp_is_empty!36825 b_and!49833 (not b_next!30915) (not b!1334593))
(check-sat b_and!49833 (not b_next!30915))
