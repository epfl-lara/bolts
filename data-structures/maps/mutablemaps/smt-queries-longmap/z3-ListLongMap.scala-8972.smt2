; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108596 () Bool)

(assert start!108596)

(declare-fun b_free!28107 () Bool)

(declare-fun b_next!28107 () Bool)

(assert (=> start!108596 (= b_free!28107 (not b_next!28107))))

(declare-fun tp!99432 () Bool)

(declare-fun b_and!46177 () Bool)

(assert (=> start!108596 (= tp!99432 b_and!46177)))

(declare-fun b!1281421 () Bool)

(declare-fun res!851319 () Bool)

(declare-fun e!732160 () Bool)

(assert (=> b!1281421 (=> (not res!851319) (not e!732160))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50099 0))(
  ( (V!50100 (val!16948 Int)) )
))
(declare-datatypes ((ValueCell!15975 0))(
  ( (ValueCellFull!15975 (v!19546 V!50099)) (EmptyCell!15975) )
))
(declare-datatypes ((array!84517 0))(
  ( (array!84518 (arr!40758 (Array (_ BitVec 32) ValueCell!15975)) (size!41309 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84517)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84519 0))(
  ( (array!84520 (arr!40759 (Array (_ BitVec 32) (_ BitVec 64))) (size!41310 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84519)

(assert (=> b!1281421 (= res!851319 (and (= (size!41309 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41310 _keys!1741) (size!41309 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun res!851317 () Bool)

(assert (=> start!108596 (=> (not res!851317) (not e!732160))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108596 (= res!851317 (validMask!0 mask!2175))))

(assert (=> start!108596 e!732160))

(declare-fun tp_is_empty!33747 () Bool)

(assert (=> start!108596 tp_is_empty!33747))

(assert (=> start!108596 true))

(declare-fun e!732158 () Bool)

(declare-fun array_inv!30911 (array!84517) Bool)

(assert (=> start!108596 (and (array_inv!30911 _values!1445) e!732158)))

(declare-fun array_inv!30912 (array!84519) Bool)

(assert (=> start!108596 (array_inv!30912 _keys!1741)))

(assert (=> start!108596 tp!99432))

(declare-fun mapNonEmpty!52172 () Bool)

(declare-fun mapRes!52172 () Bool)

(declare-fun tp!99431 () Bool)

(declare-fun e!732159 () Bool)

(assert (=> mapNonEmpty!52172 (= mapRes!52172 (and tp!99431 e!732159))))

(declare-fun mapValue!52172 () ValueCell!15975)

(declare-fun mapKey!52172 () (_ BitVec 32))

(declare-fun mapRest!52172 () (Array (_ BitVec 32) ValueCell!15975))

(assert (=> mapNonEmpty!52172 (= (arr!40758 _values!1445) (store mapRest!52172 mapKey!52172 mapValue!52172))))

(declare-fun b!1281422 () Bool)

(declare-fun res!851321 () Bool)

(assert (=> b!1281422 (=> (not res!851321) (not e!732160))))

(declare-datatypes ((List!29054 0))(
  ( (Nil!29051) (Cons!29050 (h!30259 (_ BitVec 64)) (t!42601 List!29054)) )
))
(declare-fun arrayNoDuplicates!0 (array!84519 (_ BitVec 32) List!29054) Bool)

(assert (=> b!1281422 (= res!851321 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29051))))

(declare-fun b!1281423 () Bool)

(declare-fun e!732157 () Bool)

(assert (=> b!1281423 (= e!732160 (not e!732157))))

(declare-fun res!851314 () Bool)

(assert (=> b!1281423 (=> res!851314 e!732157)))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1281423 (= res!851314 (bvslt (bvadd #b00000000000000000000000000000001 from!2144) #b00000000000000000000000000000000))))

(declare-fun minValue!1387 () V!50099)

(declare-fun zeroValue!1387 () V!50099)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21846 0))(
  ( (tuple2!21847 (_1!10933 (_ BitVec 64)) (_2!10933 V!50099)) )
))
(declare-datatypes ((List!29055 0))(
  ( (Nil!29052) (Cons!29051 (h!30260 tuple2!21846) (t!42602 List!29055)) )
))
(declare-datatypes ((ListLongMap!19515 0))(
  ( (ListLongMap!19516 (toList!9773 List!29055)) )
))
(declare-fun contains!7826 (ListLongMap!19515 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4793 (array!84519 array!84517 (_ BitVec 32) (_ BitVec 32) V!50099 V!50099 (_ BitVec 32) Int) ListLongMap!19515)

(assert (=> b!1281423 (contains!7826 (getCurrentListMap!4793 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k0!1205)))

(declare-datatypes ((Unit!42381 0))(
  ( (Unit!42382) )
))
(declare-fun lt!576183 () Unit!42381)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!22 (array!84519 array!84517 (_ BitVec 32) (_ BitVec 32) V!50099 V!50099 (_ BitVec 64) (_ BitVec 32) Int) Unit!42381)

(assert (=> b!1281423 (= lt!576183 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!22 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k0!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1281424 () Bool)

(assert (=> b!1281424 (= e!732159 tp_is_empty!33747)))

(declare-fun b!1281425 () Bool)

(declare-fun res!851315 () Bool)

(assert (=> b!1281425 (=> (not res!851315) (not e!732160))))

(assert (=> b!1281425 (= res!851315 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!41310 _keys!1741)) (not (= (select (arr!40759 _keys!1741) from!2144) k0!1205))))))

(declare-fun b!1281426 () Bool)

(declare-fun e!732155 () Bool)

(assert (=> b!1281426 (= e!732158 (and e!732155 mapRes!52172))))

(declare-fun condMapEmpty!52172 () Bool)

(declare-fun mapDefault!52172 () ValueCell!15975)

(assert (=> b!1281426 (= condMapEmpty!52172 (= (arr!40758 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15975)) mapDefault!52172)))))

(declare-fun mapIsEmpty!52172 () Bool)

(assert (=> mapIsEmpty!52172 mapRes!52172))

(declare-fun b!1281427 () Bool)

(assert (=> b!1281427 (= e!732155 tp_is_empty!33747)))

(declare-fun b!1281428 () Bool)

(declare-fun res!851320 () Bool)

(assert (=> b!1281428 (=> (not res!851320) (not e!732160))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84519 (_ BitVec 32)) Bool)

(assert (=> b!1281428 (= res!851320 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1281429 () Bool)

(assert (=> b!1281429 (= e!732157 true)))

(declare-fun arrayContainsKey!0 (array!84519 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1281429 (arrayContainsKey!0 _keys!1741 k0!1205 (bvadd #b00000000000000000000000000000001 from!2144))))

(declare-fun lt!576184 () Unit!42381)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!636 (array!84519 array!84517 (_ BitVec 32) (_ BitVec 32) V!50099 V!50099 (_ BitVec 64) (_ BitVec 32) Int) Unit!42381)

(assert (=> b!1281429 (= lt!576184 (lemmaListMapContainsThenArrayContainsFrom!636 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k0!1205 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448))))

(declare-fun b!1281430 () Bool)

(declare-fun res!851316 () Bool)

(assert (=> b!1281430 (=> (not res!851316) (not e!732160))))

(assert (=> b!1281430 (= res!851316 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41310 _keys!1741))))))

(declare-fun b!1281431 () Bool)

(declare-fun res!851318 () Bool)

(assert (=> b!1281431 (=> (not res!851318) (not e!732160))))

(assert (=> b!1281431 (= res!851318 (contains!7826 (getCurrentListMap!4793 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(assert (= (and start!108596 res!851317) b!1281421))

(assert (= (and b!1281421 res!851319) b!1281428))

(assert (= (and b!1281428 res!851320) b!1281422))

(assert (= (and b!1281422 res!851321) b!1281430))

(assert (= (and b!1281430 res!851316) b!1281431))

(assert (= (and b!1281431 res!851318) b!1281425))

(assert (= (and b!1281425 res!851315) b!1281423))

(assert (= (and b!1281423 (not res!851314)) b!1281429))

(assert (= (and b!1281426 condMapEmpty!52172) mapIsEmpty!52172))

(assert (= (and b!1281426 (not condMapEmpty!52172)) mapNonEmpty!52172))

(get-info :version)

(assert (= (and mapNonEmpty!52172 ((_ is ValueCellFull!15975) mapValue!52172)) b!1281424))

(assert (= (and b!1281426 ((_ is ValueCellFull!15975) mapDefault!52172)) b!1281427))

(assert (= start!108596 b!1281426))

(declare-fun m!1175871 () Bool)

(assert (=> b!1281422 m!1175871))

(declare-fun m!1175873 () Bool)

(assert (=> b!1281431 m!1175873))

(assert (=> b!1281431 m!1175873))

(declare-fun m!1175875 () Bool)

(assert (=> b!1281431 m!1175875))

(declare-fun m!1175877 () Bool)

(assert (=> b!1281429 m!1175877))

(declare-fun m!1175879 () Bool)

(assert (=> b!1281429 m!1175879))

(declare-fun m!1175881 () Bool)

(assert (=> b!1281428 m!1175881))

(declare-fun m!1175883 () Bool)

(assert (=> start!108596 m!1175883))

(declare-fun m!1175885 () Bool)

(assert (=> start!108596 m!1175885))

(declare-fun m!1175887 () Bool)

(assert (=> start!108596 m!1175887))

(declare-fun m!1175889 () Bool)

(assert (=> b!1281423 m!1175889))

(assert (=> b!1281423 m!1175889))

(declare-fun m!1175891 () Bool)

(assert (=> b!1281423 m!1175891))

(declare-fun m!1175893 () Bool)

(assert (=> b!1281423 m!1175893))

(declare-fun m!1175895 () Bool)

(assert (=> b!1281425 m!1175895))

(declare-fun m!1175897 () Bool)

(assert (=> mapNonEmpty!52172 m!1175897))

(check-sat (not b!1281423) (not b!1281428) (not mapNonEmpty!52172) (not start!108596) b_and!46177 (not b!1281429) (not b!1281431) (not b!1281422) tp_is_empty!33747 (not b_next!28107))
(check-sat b_and!46177 (not b_next!28107))
