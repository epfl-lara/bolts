; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108536 () Bool)

(assert start!108536)

(declare-fun b_free!28047 () Bool)

(declare-fun b_next!28047 () Bool)

(assert (=> start!108536 (= b_free!28047 (not b_next!28047))))

(declare-fun tp!99251 () Bool)

(declare-fun b_and!46117 () Bool)

(assert (=> start!108536 (= tp!99251 b_and!46117)))

(declare-fun b!1280507 () Bool)

(declare-fun res!850671 () Bool)

(declare-fun e!731693 () Bool)

(assert (=> b!1280507 (=> (not res!850671) (not e!731693))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50019 0))(
  ( (V!50020 (val!16918 Int)) )
))
(declare-datatypes ((ValueCell!15945 0))(
  ( (ValueCellFull!15945 (v!19516 V!50019)) (EmptyCell!15945) )
))
(declare-datatypes ((array!84403 0))(
  ( (array!84404 (arr!40701 (Array (_ BitVec 32) ValueCell!15945)) (size!41252 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84403)

(declare-datatypes ((array!84405 0))(
  ( (array!84406 (arr!40702 (Array (_ BitVec 32) (_ BitVec 64))) (size!41253 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84405)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1280507 (= res!850671 (and (= (size!41252 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41253 _keys!1741) (size!41252 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1280508 () Bool)

(declare-fun res!850673 () Bool)

(assert (=> b!1280508 (=> (not res!850673) (not e!731693))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1280508 (= res!850673 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41253 _keys!1741))))))

(declare-fun b!1280509 () Bool)

(declare-fun e!731695 () Bool)

(declare-fun tp_is_empty!33687 () Bool)

(assert (=> b!1280509 (= e!731695 tp_is_empty!33687)))

(declare-fun b!1280510 () Bool)

(assert (=> b!1280510 (= e!731693 (not true))))

(declare-fun minValue!1387 () V!50019)

(declare-fun zeroValue!1387 () V!50019)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21802 0))(
  ( (tuple2!21803 (_1!10911 (_ BitVec 64)) (_2!10911 V!50019)) )
))
(declare-datatypes ((List!29012 0))(
  ( (Nil!29009) (Cons!29008 (h!30217 tuple2!21802) (t!42559 List!29012)) )
))
(declare-datatypes ((ListLongMap!19471 0))(
  ( (ListLongMap!19472 (toList!9751 List!29012)) )
))
(declare-fun contains!7804 (ListLongMap!19471 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4771 (array!84405 array!84403 (_ BitVec 32) (_ BitVec 32) V!50019 V!50019 (_ BitVec 32) Int) ListLongMap!19471)

(assert (=> b!1280510 (contains!7804 (getCurrentListMap!4771 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k0!1205)))

(declare-datatypes ((Unit!42345 0))(
  ( (Unit!42346) )
))
(declare-fun lt!576079 () Unit!42345)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!5 (array!84405 array!84403 (_ BitVec 32) (_ BitVec 32) V!50019 V!50019 (_ BitVec 64) (_ BitVec 32) Int) Unit!42345)

(assert (=> b!1280510 (= lt!576079 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!5 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k0!1205 from!2144 defaultEntry!1448))))

(declare-fun mapIsEmpty!52082 () Bool)

(declare-fun mapRes!52082 () Bool)

(assert (=> mapIsEmpty!52082 mapRes!52082))

(declare-fun b!1280511 () Bool)

(declare-fun res!850676 () Bool)

(assert (=> b!1280511 (=> (not res!850676) (not e!731693))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84405 (_ BitVec 32)) Bool)

(assert (=> b!1280511 (= res!850676 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1280512 () Bool)

(declare-fun res!850675 () Bool)

(assert (=> b!1280512 (=> (not res!850675) (not e!731693))))

(assert (=> b!1280512 (= res!850675 (contains!7804 (getCurrentListMap!4771 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1280513 () Bool)

(declare-fun e!731694 () Bool)

(assert (=> b!1280513 (= e!731694 tp_is_empty!33687)))

(declare-fun b!1280514 () Bool)

(declare-fun e!731692 () Bool)

(assert (=> b!1280514 (= e!731692 (and e!731695 mapRes!52082))))

(declare-fun condMapEmpty!52082 () Bool)

(declare-fun mapDefault!52082 () ValueCell!15945)

(assert (=> b!1280514 (= condMapEmpty!52082 (= (arr!40701 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15945)) mapDefault!52082)))))

(declare-fun b!1280515 () Bool)

(declare-fun res!850670 () Bool)

(assert (=> b!1280515 (=> (not res!850670) (not e!731693))))

(declare-datatypes ((List!29013 0))(
  ( (Nil!29010) (Cons!29009 (h!30218 (_ BitVec 64)) (t!42560 List!29013)) )
))
(declare-fun arrayNoDuplicates!0 (array!84405 (_ BitVec 32) List!29013) Bool)

(assert (=> b!1280515 (= res!850670 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29010))))

(declare-fun b!1280516 () Bool)

(declare-fun res!850672 () Bool)

(assert (=> b!1280516 (=> (not res!850672) (not e!731693))))

(assert (=> b!1280516 (= res!850672 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!41253 _keys!1741)) (not (= (select (arr!40702 _keys!1741) from!2144) k0!1205))))))

(declare-fun mapNonEmpty!52082 () Bool)

(declare-fun tp!99252 () Bool)

(assert (=> mapNonEmpty!52082 (= mapRes!52082 (and tp!99252 e!731694))))

(declare-fun mapValue!52082 () ValueCell!15945)

(declare-fun mapKey!52082 () (_ BitVec 32))

(declare-fun mapRest!52082 () (Array (_ BitVec 32) ValueCell!15945))

(assert (=> mapNonEmpty!52082 (= (arr!40701 _values!1445) (store mapRest!52082 mapKey!52082 mapValue!52082))))

(declare-fun res!850674 () Bool)

(assert (=> start!108536 (=> (not res!850674) (not e!731693))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108536 (= res!850674 (validMask!0 mask!2175))))

(assert (=> start!108536 e!731693))

(assert (=> start!108536 tp_is_empty!33687))

(assert (=> start!108536 true))

(declare-fun array_inv!30877 (array!84403) Bool)

(assert (=> start!108536 (and (array_inv!30877 _values!1445) e!731692)))

(declare-fun array_inv!30878 (array!84405) Bool)

(assert (=> start!108536 (array_inv!30878 _keys!1741)))

(assert (=> start!108536 tp!99251))

(assert (= (and start!108536 res!850674) b!1280507))

(assert (= (and b!1280507 res!850671) b!1280511))

(assert (= (and b!1280511 res!850676) b!1280515))

(assert (= (and b!1280515 res!850670) b!1280508))

(assert (= (and b!1280508 res!850673) b!1280512))

(assert (= (and b!1280512 res!850675) b!1280516))

(assert (= (and b!1280516 res!850672) b!1280510))

(assert (= (and b!1280514 condMapEmpty!52082) mapIsEmpty!52082))

(assert (= (and b!1280514 (not condMapEmpty!52082)) mapNonEmpty!52082))

(get-info :version)

(assert (= (and mapNonEmpty!52082 ((_ is ValueCellFull!15945) mapValue!52082)) b!1280513))

(assert (= (and b!1280514 ((_ is ValueCellFull!15945) mapDefault!52082)) b!1280509))

(assert (= start!108536 b!1280514))

(declare-fun m!1175135 () Bool)

(assert (=> b!1280512 m!1175135))

(assert (=> b!1280512 m!1175135))

(declare-fun m!1175137 () Bool)

(assert (=> b!1280512 m!1175137))

(declare-fun m!1175139 () Bool)

(assert (=> mapNonEmpty!52082 m!1175139))

(declare-fun m!1175141 () Bool)

(assert (=> b!1280510 m!1175141))

(assert (=> b!1280510 m!1175141))

(declare-fun m!1175143 () Bool)

(assert (=> b!1280510 m!1175143))

(declare-fun m!1175145 () Bool)

(assert (=> b!1280510 m!1175145))

(declare-fun m!1175147 () Bool)

(assert (=> b!1280511 m!1175147))

(declare-fun m!1175149 () Bool)

(assert (=> b!1280516 m!1175149))

(declare-fun m!1175151 () Bool)

(assert (=> b!1280515 m!1175151))

(declare-fun m!1175153 () Bool)

(assert (=> start!108536 m!1175153))

(declare-fun m!1175155 () Bool)

(assert (=> start!108536 m!1175155))

(declare-fun m!1175157 () Bool)

(assert (=> start!108536 m!1175157))

(check-sat tp_is_empty!33687 (not b!1280515) (not start!108536) b_and!46117 (not b!1280512) (not b!1280510) (not b!1280511) (not b_next!28047) (not mapNonEmpty!52082))
(check-sat b_and!46117 (not b_next!28047))
