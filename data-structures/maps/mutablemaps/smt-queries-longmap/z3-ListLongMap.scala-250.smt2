; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4182 () Bool)

(assert start!4182)

(declare-fun b_free!1089 () Bool)

(declare-fun b_next!1089 () Bool)

(assert (=> start!4182 (= b_free!1089 (not b_next!1089))))

(declare-fun tp!4687 () Bool)

(declare-fun b_and!1901 () Bool)

(assert (=> start!4182 (= tp!4687 b_and!1901)))

(declare-fun mapNonEmpty!1693 () Bool)

(declare-fun mapRes!1693 () Bool)

(declare-fun tp!4686 () Bool)

(declare-fun e!20248 () Bool)

(assert (=> mapNonEmpty!1693 (= mapRes!1693 (and tp!4686 e!20248))))

(declare-datatypes ((V!1749 0))(
  ( (V!1750 (val!748 Int)) )
))
(declare-datatypes ((ValueCell!522 0))(
  ( (ValueCellFull!522 (v!1837 V!1749)) (EmptyCell!522) )
))
(declare-datatypes ((array!2093 0))(
  ( (array!2094 (arr!1000 (Array (_ BitVec 32) ValueCell!522)) (size!1101 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2093)

(declare-fun mapValue!1693 () ValueCell!522)

(declare-fun mapRest!1693 () (Array (_ BitVec 32) ValueCell!522))

(declare-fun mapKey!1693 () (_ BitVec 32))

(assert (=> mapNonEmpty!1693 (= (arr!1000 _values!1501) (store mapRest!1693 mapKey!1693 mapValue!1693))))

(declare-fun b!31736 () Bool)

(declare-fun e!20250 () Bool)

(declare-fun e!20247 () Bool)

(assert (=> b!31736 (= e!20250 (and e!20247 mapRes!1693))))

(declare-fun condMapEmpty!1693 () Bool)

(declare-fun mapDefault!1693 () ValueCell!522)

(assert (=> b!31736 (= condMapEmpty!1693 (= (arr!1000 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!522)) mapDefault!1693)))))

(declare-fun b!31737 () Bool)

(declare-fun res!19230 () Bool)

(declare-fun e!20251 () Bool)

(assert (=> b!31737 (=> (not res!19230) (not e!20251))))

(declare-datatypes ((array!2095 0))(
  ( (array!2096 (arr!1001 (Array (_ BitVec 32) (_ BitVec 64))) (size!1102 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2095)

(declare-datatypes ((List!815 0))(
  ( (Nil!812) (Cons!811 (h!1378 (_ BitVec 64)) (t!3510 List!815)) )
))
(declare-fun arrayNoDuplicates!0 (array!2095 (_ BitVec 32) List!815) Bool)

(assert (=> b!31737 (= res!19230 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!812))))

(declare-fun b!31738 () Bool)

(declare-fun res!19227 () Bool)

(assert (=> b!31738 (=> (not res!19227) (not e!20251))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!31738 (= res!19227 (and (= (size!1101 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1102 _keys!1833) (size!1101 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!31740 () Bool)

(declare-fun res!19228 () Bool)

(assert (=> b!31740 (=> (not res!19228) (not e!20251))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!31740 (= res!19228 (validKeyInArray!0 k0!1304))))

(declare-fun b!31741 () Bool)

(declare-fun tp_is_empty!1443 () Bool)

(assert (=> b!31741 (= e!20247 tp_is_empty!1443)))

(declare-fun mapIsEmpty!1693 () Bool)

(assert (=> mapIsEmpty!1693 mapRes!1693))

(declare-fun b!31742 () Bool)

(assert (=> b!31742 (= e!20248 tp_is_empty!1443)))

(declare-fun b!31743 () Bool)

(declare-fun res!19229 () Bool)

(assert (=> b!31743 (=> (not res!19229) (not e!20251))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1749)

(declare-fun minValue!1443 () V!1749)

(declare-datatypes ((tuple2!1212 0))(
  ( (tuple2!1213 (_1!616 (_ BitVec 64)) (_2!616 V!1749)) )
))
(declare-datatypes ((List!816 0))(
  ( (Nil!813) (Cons!812 (h!1379 tuple2!1212) (t!3511 List!816)) )
))
(declare-datatypes ((ListLongMap!793 0))(
  ( (ListLongMap!794 (toList!412 List!816)) )
))
(declare-fun contains!349 (ListLongMap!793 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!237 (array!2095 array!2093 (_ BitVec 32) (_ BitVec 32) V!1749 V!1749 (_ BitVec 32) Int) ListLongMap!793)

(assert (=> b!31743 (= res!19229 (not (contains!349 (getCurrentListMap!237 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun res!19231 () Bool)

(assert (=> start!4182 (=> (not res!19231) (not e!20251))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4182 (= res!19231 (validMask!0 mask!2294))))

(assert (=> start!4182 e!20251))

(assert (=> start!4182 true))

(assert (=> start!4182 tp!4687))

(declare-fun array_inv!669 (array!2093) Bool)

(assert (=> start!4182 (and (array_inv!669 _values!1501) e!20250)))

(declare-fun array_inv!670 (array!2095) Bool)

(assert (=> start!4182 (array_inv!670 _keys!1833)))

(assert (=> start!4182 tp_is_empty!1443))

(declare-fun b!31739 () Bool)

(declare-fun res!19226 () Bool)

(assert (=> b!31739 (=> (not res!19226) (not e!20251))))

(declare-fun arrayContainsKey!0 (array!2095 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!31739 (= res!19226 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!31744 () Bool)

(declare-fun res!19225 () Bool)

(assert (=> b!31744 (=> (not res!19225) (not e!20251))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2095 (_ BitVec 32)) Bool)

(assert (=> b!31744 (= res!19225 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!31745 () Bool)

(assert (=> b!31745 (= e!20251 false)))

(declare-fun lt!11604 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!2095 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!31745 (= lt!11604 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(assert (= (and start!4182 res!19231) b!31738))

(assert (= (and b!31738 res!19227) b!31744))

(assert (= (and b!31744 res!19225) b!31737))

(assert (= (and b!31737 res!19230) b!31740))

(assert (= (and b!31740 res!19228) b!31743))

(assert (= (and b!31743 res!19229) b!31739))

(assert (= (and b!31739 res!19226) b!31745))

(assert (= (and b!31736 condMapEmpty!1693) mapIsEmpty!1693))

(assert (= (and b!31736 (not condMapEmpty!1693)) mapNonEmpty!1693))

(get-info :version)

(assert (= (and mapNonEmpty!1693 ((_ is ValueCellFull!522) mapValue!1693)) b!31742))

(assert (= (and b!31736 ((_ is ValueCellFull!522) mapDefault!1693)) b!31741))

(assert (= start!4182 b!31736))

(declare-fun m!25447 () Bool)

(assert (=> b!31745 m!25447))

(declare-fun m!25449 () Bool)

(assert (=> b!31744 m!25449))

(declare-fun m!25451 () Bool)

(assert (=> start!4182 m!25451))

(declare-fun m!25453 () Bool)

(assert (=> start!4182 m!25453))

(declare-fun m!25455 () Bool)

(assert (=> start!4182 m!25455))

(declare-fun m!25457 () Bool)

(assert (=> mapNonEmpty!1693 m!25457))

(declare-fun m!25459 () Bool)

(assert (=> b!31737 m!25459))

(declare-fun m!25461 () Bool)

(assert (=> b!31743 m!25461))

(assert (=> b!31743 m!25461))

(declare-fun m!25463 () Bool)

(assert (=> b!31743 m!25463))

(declare-fun m!25465 () Bool)

(assert (=> b!31740 m!25465))

(declare-fun m!25467 () Bool)

(assert (=> b!31739 m!25467))

(check-sat (not b_next!1089) (not mapNonEmpty!1693) (not b!31745) b_and!1901 (not b!31740) (not b!31737) tp_is_empty!1443 (not b!31739) (not b!31744) (not start!4182) (not b!31743))
(check-sat b_and!1901 (not b_next!1089))
