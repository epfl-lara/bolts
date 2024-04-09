; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108530 () Bool)

(assert start!108530)

(declare-fun b_free!28041 () Bool)

(declare-fun b_next!28041 () Bool)

(assert (=> start!108530 (= b_free!28041 (not b_next!28041))))

(declare-fun tp!99233 () Bool)

(declare-fun b_and!46111 () Bool)

(assert (=> start!108530 (= tp!99233 b_and!46111)))

(declare-fun b!1280417 () Bool)

(declare-fun res!850610 () Bool)

(declare-fun e!731648 () Bool)

(assert (=> b!1280417 (=> (not res!850610) (not e!731648))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!84391 0))(
  ( (array!84392 (arr!40695 (Array (_ BitVec 32) (_ BitVec 64))) (size!41246 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84391)

(assert (=> b!1280417 (= res!850610 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41246 _keys!1741))))))

(declare-fun b!1280418 () Bool)

(declare-fun res!850611 () Bool)

(assert (=> b!1280418 (=> (not res!850611) (not e!731648))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50011 0))(
  ( (V!50012 (val!16915 Int)) )
))
(declare-datatypes ((ValueCell!15942 0))(
  ( (ValueCellFull!15942 (v!19513 V!50011)) (EmptyCell!15942) )
))
(declare-datatypes ((array!84393 0))(
  ( (array!84394 (arr!40696 (Array (_ BitVec 32) ValueCell!15942)) (size!41247 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84393)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1280418 (= res!850611 (and (= (size!41247 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41246 _keys!1741) (size!41247 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1280419 () Bool)

(declare-fun res!850608 () Bool)

(assert (=> b!1280419 (=> (not res!850608) (not e!731648))))

(declare-datatypes ((List!29006 0))(
  ( (Nil!29003) (Cons!29002 (h!30211 (_ BitVec 64)) (t!42553 List!29006)) )
))
(declare-fun arrayNoDuplicates!0 (array!84391 (_ BitVec 32) List!29006) Bool)

(assert (=> b!1280419 (= res!850608 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29003))))

(declare-fun mapIsEmpty!52073 () Bool)

(declare-fun mapRes!52073 () Bool)

(assert (=> mapIsEmpty!52073 mapRes!52073))

(declare-fun b!1280420 () Bool)

(declare-fun res!850613 () Bool)

(assert (=> b!1280420 (=> (not res!850613) (not e!731648))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84391 (_ BitVec 32)) Bool)

(assert (=> b!1280420 (= res!850613 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1280421 () Bool)

(declare-fun res!850609 () Bool)

(assert (=> b!1280421 (=> (not res!850609) (not e!731648))))

(declare-fun minValue!1387 () V!50011)

(declare-fun zeroValue!1387 () V!50011)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21796 0))(
  ( (tuple2!21797 (_1!10908 (_ BitVec 64)) (_2!10908 V!50011)) )
))
(declare-datatypes ((List!29007 0))(
  ( (Nil!29004) (Cons!29003 (h!30212 tuple2!21796) (t!42554 List!29007)) )
))
(declare-datatypes ((ListLongMap!19465 0))(
  ( (ListLongMap!19466 (toList!9748 List!29007)) )
))
(declare-fun contains!7801 (ListLongMap!19465 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4768 (array!84391 array!84393 (_ BitVec 32) (_ BitVec 32) V!50011 V!50011 (_ BitVec 32) Int) ListLongMap!19465)

(assert (=> b!1280421 (= res!850609 (contains!7801 (getCurrentListMap!4768 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun mapNonEmpty!52073 () Bool)

(declare-fun tp!99234 () Bool)

(declare-fun e!731650 () Bool)

(assert (=> mapNonEmpty!52073 (= mapRes!52073 (and tp!99234 e!731650))))

(declare-fun mapKey!52073 () (_ BitVec 32))

(declare-fun mapValue!52073 () ValueCell!15942)

(declare-fun mapRest!52073 () (Array (_ BitVec 32) ValueCell!15942))

(assert (=> mapNonEmpty!52073 (= (arr!40696 _values!1445) (store mapRest!52073 mapKey!52073 mapValue!52073))))

(declare-fun b!1280422 () Bool)

(declare-fun e!731646 () Bool)

(declare-fun tp_is_empty!33681 () Bool)

(assert (=> b!1280422 (= e!731646 tp_is_empty!33681)))

(declare-fun res!850607 () Bool)

(assert (=> start!108530 (=> (not res!850607) (not e!731648))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108530 (= res!850607 (validMask!0 mask!2175))))

(assert (=> start!108530 e!731648))

(assert (=> start!108530 tp_is_empty!33681))

(assert (=> start!108530 true))

(declare-fun e!731647 () Bool)

(declare-fun array_inv!30873 (array!84393) Bool)

(assert (=> start!108530 (and (array_inv!30873 _values!1445) e!731647)))

(declare-fun array_inv!30874 (array!84391) Bool)

(assert (=> start!108530 (array_inv!30874 _keys!1741)))

(assert (=> start!108530 tp!99233))

(declare-fun b!1280423 () Bool)

(assert (=> b!1280423 (= e!731647 (and e!731646 mapRes!52073))))

(declare-fun condMapEmpty!52073 () Bool)

(declare-fun mapDefault!52073 () ValueCell!15942)

(assert (=> b!1280423 (= condMapEmpty!52073 (= (arr!40696 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15942)) mapDefault!52073)))))

(declare-fun b!1280424 () Bool)

(assert (=> b!1280424 (= e!731648 (not true))))

(assert (=> b!1280424 (contains!7801 (getCurrentListMap!4768 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k0!1205)))

(declare-datatypes ((Unit!42339 0))(
  ( (Unit!42340) )
))
(declare-fun lt!576070 () Unit!42339)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!2 (array!84391 array!84393 (_ BitVec 32) (_ BitVec 32) V!50011 V!50011 (_ BitVec 64) (_ BitVec 32) Int) Unit!42339)

(assert (=> b!1280424 (= lt!576070 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!2 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k0!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1280425 () Bool)

(declare-fun res!850612 () Bool)

(assert (=> b!1280425 (=> (not res!850612) (not e!731648))))

(assert (=> b!1280425 (= res!850612 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!41246 _keys!1741)) (not (= (select (arr!40695 _keys!1741) from!2144) k0!1205))))))

(declare-fun b!1280426 () Bool)

(assert (=> b!1280426 (= e!731650 tp_is_empty!33681)))

(assert (= (and start!108530 res!850607) b!1280418))

(assert (= (and b!1280418 res!850611) b!1280420))

(assert (= (and b!1280420 res!850613) b!1280419))

(assert (= (and b!1280419 res!850608) b!1280417))

(assert (= (and b!1280417 res!850610) b!1280421))

(assert (= (and b!1280421 res!850609) b!1280425))

(assert (= (and b!1280425 res!850612) b!1280424))

(assert (= (and b!1280423 condMapEmpty!52073) mapIsEmpty!52073))

(assert (= (and b!1280423 (not condMapEmpty!52073)) mapNonEmpty!52073))

(get-info :version)

(assert (= (and mapNonEmpty!52073 ((_ is ValueCellFull!15942) mapValue!52073)) b!1280426))

(assert (= (and b!1280423 ((_ is ValueCellFull!15942) mapDefault!52073)) b!1280422))

(assert (= start!108530 b!1280423))

(declare-fun m!1175063 () Bool)

(assert (=> mapNonEmpty!52073 m!1175063))

(declare-fun m!1175065 () Bool)

(assert (=> b!1280425 m!1175065))

(declare-fun m!1175067 () Bool)

(assert (=> b!1280420 m!1175067))

(declare-fun m!1175069 () Bool)

(assert (=> start!108530 m!1175069))

(declare-fun m!1175071 () Bool)

(assert (=> start!108530 m!1175071))

(declare-fun m!1175073 () Bool)

(assert (=> start!108530 m!1175073))

(declare-fun m!1175075 () Bool)

(assert (=> b!1280424 m!1175075))

(assert (=> b!1280424 m!1175075))

(declare-fun m!1175077 () Bool)

(assert (=> b!1280424 m!1175077))

(declare-fun m!1175079 () Bool)

(assert (=> b!1280424 m!1175079))

(declare-fun m!1175081 () Bool)

(assert (=> b!1280421 m!1175081))

(assert (=> b!1280421 m!1175081))

(declare-fun m!1175083 () Bool)

(assert (=> b!1280421 m!1175083))

(declare-fun m!1175085 () Bool)

(assert (=> b!1280419 m!1175085))

(check-sat (not mapNonEmpty!52073) (not b!1280419) b_and!46111 (not b!1280424) tp_is_empty!33681 (not start!108530) (not b_next!28041) (not b!1280421) (not b!1280420))
(check-sat b_and!46111 (not b_next!28041))
