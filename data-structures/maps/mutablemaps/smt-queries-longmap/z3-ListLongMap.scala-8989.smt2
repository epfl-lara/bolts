; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108732 () Bool)

(assert start!108732)

(declare-fun b_free!28209 () Bool)

(declare-fun b_next!28209 () Bool)

(assert (=> start!108732 (= b_free!28209 (not b_next!28209))))

(declare-fun tp!99743 () Bool)

(declare-fun b_and!46285 () Bool)

(assert (=> start!108732 (= tp!99743 b_and!46285)))

(declare-fun b!1283102 () Bool)

(declare-fun e!733103 () Bool)

(declare-fun tp_is_empty!33849 () Bool)

(assert (=> b!1283102 (= e!733103 tp_is_empty!33849)))

(declare-fun b!1283103 () Bool)

(declare-fun res!852391 () Bool)

(declare-fun e!733101 () Bool)

(assert (=> b!1283103 (=> (not res!852391) (not e!733101))))

(declare-datatypes ((V!50235 0))(
  ( (V!50236 (val!16999 Int)) )
))
(declare-fun minValue!1387 () V!50235)

(declare-fun zeroValue!1387 () V!50235)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16026 0))(
  ( (ValueCellFull!16026 (v!19599 V!50235)) (EmptyCell!16026) )
))
(declare-datatypes ((array!84717 0))(
  ( (array!84718 (arr!40856 (Array (_ BitVec 32) ValueCell!16026)) (size!41407 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84717)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84719 0))(
  ( (array!84720 (arr!40857 (Array (_ BitVec 32) (_ BitVec 64))) (size!41408 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84719)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21912 0))(
  ( (tuple2!21913 (_1!10966 (_ BitVec 64)) (_2!10966 V!50235)) )
))
(declare-datatypes ((List!29122 0))(
  ( (Nil!29119) (Cons!29118 (h!30327 tuple2!21912) (t!42673 List!29122)) )
))
(declare-datatypes ((ListLongMap!19581 0))(
  ( (ListLongMap!19582 (toList!9806 List!29122)) )
))
(declare-fun contains!7861 (ListLongMap!19581 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4825 (array!84719 array!84717 (_ BitVec 32) (_ BitVec 32) V!50235 V!50235 (_ BitVec 32) Int) ListLongMap!19581)

(assert (=> b!1283103 (= res!852391 (contains!7861 (getCurrentListMap!4825 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun res!852390 () Bool)

(assert (=> start!108732 (=> (not res!852390) (not e!733101))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108732 (= res!852390 (validMask!0 mask!2175))))

(assert (=> start!108732 e!733101))

(assert (=> start!108732 tp_is_empty!33849))

(assert (=> start!108732 true))

(declare-fun e!733102 () Bool)

(declare-fun array_inv!30975 (array!84717) Bool)

(assert (=> start!108732 (and (array_inv!30975 _values!1445) e!733102)))

(declare-fun array_inv!30976 (array!84719) Bool)

(assert (=> start!108732 (array_inv!30976 _keys!1741)))

(assert (=> start!108732 tp!99743))

(declare-fun b!1283104 () Bool)

(declare-fun e!733104 () Bool)

(declare-fun mapRes!52331 () Bool)

(assert (=> b!1283104 (= e!733102 (and e!733104 mapRes!52331))))

(declare-fun condMapEmpty!52331 () Bool)

(declare-fun mapDefault!52331 () ValueCell!16026)

(assert (=> b!1283104 (= condMapEmpty!52331 (= (arr!40856 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16026)) mapDefault!52331)))))

(declare-fun b!1283105 () Bool)

(declare-fun res!852395 () Bool)

(assert (=> b!1283105 (=> (not res!852395) (not e!733101))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84719 (_ BitVec 32)) Bool)

(assert (=> b!1283105 (= res!852395 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapNonEmpty!52331 () Bool)

(declare-fun tp!99744 () Bool)

(assert (=> mapNonEmpty!52331 (= mapRes!52331 (and tp!99744 e!733103))))

(declare-fun mapRest!52331 () (Array (_ BitVec 32) ValueCell!16026))

(declare-fun mapKey!52331 () (_ BitVec 32))

(declare-fun mapValue!52331 () ValueCell!16026)

(assert (=> mapNonEmpty!52331 (= (arr!40856 _values!1445) (store mapRest!52331 mapKey!52331 mapValue!52331))))

(declare-fun b!1283106 () Bool)

(declare-fun res!852388 () Bool)

(assert (=> b!1283106 (=> (not res!852388) (not e!733101))))

(assert (=> b!1283106 (= res!852388 (and (= (size!41407 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41408 _keys!1741) (size!41407 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1283107 () Bool)

(declare-fun res!852389 () Bool)

(assert (=> b!1283107 (=> (not res!852389) (not e!733101))))

(assert (=> b!1283107 (= res!852389 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41408 _keys!1741))))))

(declare-fun b!1283108 () Bool)

(declare-fun res!852394 () Bool)

(assert (=> b!1283108 (=> (not res!852394) (not e!733101))))

(assert (=> b!1283108 (= res!852394 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1283109 () Bool)

(assert (=> b!1283109 (= e!733104 tp_is_empty!33849)))

(declare-fun mapIsEmpty!52331 () Bool)

(assert (=> mapIsEmpty!52331 mapRes!52331))

(declare-fun b!1283110 () Bool)

(declare-fun res!852396 () Bool)

(assert (=> b!1283110 (=> (not res!852396) (not e!733101))))

(assert (=> b!1283110 (= res!852396 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41408 _keys!1741))))))

(declare-fun b!1283111 () Bool)

(assert (=> b!1283111 (= e!733101 (not true))))

(declare-fun lt!576552 () ListLongMap!19581)

(assert (=> b!1283111 (contains!7861 lt!576552 k0!1205)))

(declare-datatypes ((Unit!42403 0))(
  ( (Unit!42404) )
))
(declare-fun lt!576551 () Unit!42403)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!3 ((_ BitVec 64) (_ BitVec 64) V!50235 ListLongMap!19581) Unit!42403)

(assert (=> b!1283111 (= lt!576551 (lemmaInListMapAfterAddingDiffThenInBefore!3 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!576552))))

(declare-fun +!4254 (ListLongMap!19581 tuple2!21912) ListLongMap!19581)

(declare-fun getCurrentListMapNoExtraKeys!5965 (array!84719 array!84717 (_ BitVec 32) (_ BitVec 32) V!50235 V!50235 (_ BitVec 32) Int) ListLongMap!19581)

(assert (=> b!1283111 (= lt!576552 (+!4254 (getCurrentListMapNoExtraKeys!5965 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!21913 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun b!1283112 () Bool)

(declare-fun res!852393 () Bool)

(assert (=> b!1283112 (=> (not res!852393) (not e!733101))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1283112 (= res!852393 (validKeyInArray!0 (select (arr!40857 _keys!1741) from!2144)))))

(declare-fun b!1283113 () Bool)

(declare-fun res!852392 () Bool)

(assert (=> b!1283113 (=> (not res!852392) (not e!733101))))

(declare-datatypes ((List!29123 0))(
  ( (Nil!29120) (Cons!29119 (h!30328 (_ BitVec 64)) (t!42674 List!29123)) )
))
(declare-fun arrayNoDuplicates!0 (array!84719 (_ BitVec 32) List!29123) Bool)

(assert (=> b!1283113 (= res!852392 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29120))))

(assert (= (and start!108732 res!852390) b!1283106))

(assert (= (and b!1283106 res!852388) b!1283105))

(assert (= (and b!1283105 res!852395) b!1283113))

(assert (= (and b!1283113 res!852392) b!1283110))

(assert (= (and b!1283110 res!852396) b!1283103))

(assert (= (and b!1283103 res!852391) b!1283107))

(assert (= (and b!1283107 res!852389) b!1283112))

(assert (= (and b!1283112 res!852393) b!1283108))

(assert (= (and b!1283108 res!852394) b!1283111))

(assert (= (and b!1283104 condMapEmpty!52331) mapIsEmpty!52331))

(assert (= (and b!1283104 (not condMapEmpty!52331)) mapNonEmpty!52331))

(get-info :version)

(assert (= (and mapNonEmpty!52331 ((_ is ValueCellFull!16026) mapValue!52331)) b!1283102))

(assert (= (and b!1283104 ((_ is ValueCellFull!16026) mapDefault!52331)) b!1283109))

(assert (= start!108732 b!1283104))

(declare-fun m!1177123 () Bool)

(assert (=> mapNonEmpty!52331 m!1177123))

(declare-fun m!1177125 () Bool)

(assert (=> b!1283111 m!1177125))

(declare-fun m!1177127 () Bool)

(assert (=> b!1283111 m!1177127))

(declare-fun m!1177129 () Bool)

(assert (=> b!1283111 m!1177129))

(assert (=> b!1283111 m!1177129))

(declare-fun m!1177131 () Bool)

(assert (=> b!1283111 m!1177131))

(declare-fun m!1177133 () Bool)

(assert (=> b!1283113 m!1177133))

(declare-fun m!1177135 () Bool)

(assert (=> start!108732 m!1177135))

(declare-fun m!1177137 () Bool)

(assert (=> start!108732 m!1177137))

(declare-fun m!1177139 () Bool)

(assert (=> start!108732 m!1177139))

(declare-fun m!1177141 () Bool)

(assert (=> b!1283112 m!1177141))

(assert (=> b!1283112 m!1177141))

(declare-fun m!1177143 () Bool)

(assert (=> b!1283112 m!1177143))

(declare-fun m!1177145 () Bool)

(assert (=> b!1283103 m!1177145))

(assert (=> b!1283103 m!1177145))

(declare-fun m!1177147 () Bool)

(assert (=> b!1283103 m!1177147))

(declare-fun m!1177149 () Bool)

(assert (=> b!1283105 m!1177149))

(check-sat (not b!1283105) tp_is_empty!33849 (not mapNonEmpty!52331) (not b!1283111) (not b!1283113) b_and!46285 (not b!1283103) (not start!108732) (not b_next!28209) (not b!1283112))
(check-sat b_and!46285 (not b_next!28209))
