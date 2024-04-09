; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1022 () Bool)

(assert start!1022)

(declare-fun b_free!351 () Bool)

(declare-fun b_next!351 () Bool)

(assert (=> start!1022 (= b_free!351 (not b_next!351))))

(declare-fun tp!1292 () Bool)

(declare-fun b_and!503 () Bool)

(assert (=> start!1022 (= tp!1292 b_and!503)))

(declare-fun mapNonEmpty!623 () Bool)

(declare-fun mapRes!623 () Bool)

(declare-fun tp!1291 () Bool)

(declare-fun e!5042 () Bool)

(assert (=> mapNonEmpty!623 (= mapRes!623 (and tp!1291 e!5042))))

(declare-datatypes ((V!749 0))(
  ( (V!750 (val!220 Int)) )
))
(declare-datatypes ((ValueCell!198 0))(
  ( (ValueCellFull!198 (v!1314 V!749)) (EmptyCell!198) )
))
(declare-fun mapRest!623 () (Array (_ BitVec 32) ValueCell!198))

(declare-datatypes ((array!781 0))(
  ( (array!782 (arr!376 (Array (_ BitVec 32) ValueCell!198)) (size!438 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!781)

(declare-fun mapValue!623 () ValueCell!198)

(declare-fun mapKey!623 () (_ BitVec 32))

(assert (=> mapNonEmpty!623 (= (arr!376 _values!1492) (store mapRest!623 mapKey!623 mapValue!623))))

(declare-fun b!8836 () Bool)

(declare-fun res!8170 () Bool)

(declare-fun e!5039 () Bool)

(assert (=> b!8836 (=> (not res!8170) (not e!5039))))

(declare-datatypes ((array!783 0))(
  ( (array!784 (arr!377 (Array (_ BitVec 32) (_ BitVec 64))) (size!439 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!783)

(declare-datatypes ((List!256 0))(
  ( (Nil!253) (Cons!252 (h!818 (_ BitVec 64)) (t!2397 List!256)) )
))
(declare-fun arrayNoDuplicates!0 (array!783 (_ BitVec 32) List!256) Bool)

(assert (=> b!8836 (= res!8170 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!253))))

(declare-fun b!8837 () Bool)

(declare-fun res!8169 () Bool)

(assert (=> b!8837 (=> (not res!8169) (not e!5039))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun minValue!1434 () V!749)

(declare-fun k0!1278 () (_ BitVec 64))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!749)

(declare-datatypes ((tuple2!232 0))(
  ( (tuple2!233 (_1!116 (_ BitVec 64)) (_2!116 V!749)) )
))
(declare-datatypes ((List!257 0))(
  ( (Nil!254) (Cons!253 (h!819 tuple2!232) (t!2398 List!257)) )
))
(declare-datatypes ((ListLongMap!237 0))(
  ( (ListLongMap!238 (toList!134 List!257)) )
))
(declare-fun contains!111 (ListLongMap!237 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!93 (array!783 array!781 (_ BitVec 32) (_ BitVec 32) V!749 V!749 (_ BitVec 32) Int) ListLongMap!237)

(assert (=> b!8837 (= res!8169 (contains!111 (getCurrentListMap!93 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(declare-fun b!8838 () Bool)

(declare-fun res!8173 () Bool)

(assert (=> b!8838 (=> (not res!8173) (not e!5039))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!783 (_ BitVec 32)) Bool)

(assert (=> b!8838 (= res!8173 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!8839 () Bool)

(declare-fun e!5037 () Bool)

(declare-fun arrayContainsKey!0 (array!783 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!8839 (= e!5037 (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!8840 () Bool)

(assert (=> b!8840 (= e!5037 (ite (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!8167 () Bool)

(assert (=> start!1022 (=> (not res!8167) (not e!5039))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!1022 (= res!8167 (validMask!0 mask!2250))))

(assert (=> start!1022 e!5039))

(assert (=> start!1022 tp!1292))

(assert (=> start!1022 true))

(declare-fun e!5038 () Bool)

(declare-fun array_inv!273 (array!781) Bool)

(assert (=> start!1022 (and (array_inv!273 _values!1492) e!5038)))

(declare-fun tp_is_empty!429 () Bool)

(assert (=> start!1022 tp_is_empty!429))

(declare-fun array_inv!274 (array!783) Bool)

(assert (=> start!1022 (array_inv!274 _keys!1806)))

(declare-fun b!8835 () Bool)

(declare-fun e!5036 () Bool)

(assert (=> b!8835 (= e!5036 true)))

(declare-fun lt!1906 () (_ BitVec 32))

(assert (=> b!8835 (arrayForallSeekEntryOrOpenFound!0 lt!1906 _keys!1806 mask!2250)))

(declare-datatypes ((Unit!169 0))(
  ( (Unit!170) )
))
(declare-fun lt!1907 () Unit!169)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!783 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!169)

(assert (=> b!8835 (= lt!1907 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1806 mask!2250 #b00000000000000000000000000000000 lt!1906))))

(declare-fun arrayScanForKey!0 (array!783 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!8835 (= lt!1906 (arrayScanForKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!8841 () Bool)

(declare-fun res!8171 () Bool)

(assert (=> b!8841 (=> (not res!8171) (not e!5039))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!8841 (= res!8171 (validKeyInArray!0 k0!1278))))

(declare-fun mapIsEmpty!623 () Bool)

(assert (=> mapIsEmpty!623 mapRes!623))

(declare-fun b!8842 () Bool)

(declare-fun e!5040 () Bool)

(assert (=> b!8842 (= e!5040 tp_is_empty!429)))

(declare-fun b!8843 () Bool)

(declare-fun res!8172 () Bool)

(assert (=> b!8843 (=> (not res!8172) (not e!5039))))

(assert (=> b!8843 (= res!8172 (and (= (size!438 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!439 _keys!1806) (size!438 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!8844 () Bool)

(assert (=> b!8844 (= e!5042 tp_is_empty!429)))

(declare-fun b!8845 () Bool)

(assert (=> b!8845 (= e!5039 (not e!5036))))

(declare-fun res!8168 () Bool)

(assert (=> b!8845 (=> res!8168 e!5036)))

(assert (=> b!8845 (= res!8168 (not (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000)))))

(assert (=> b!8845 e!5037))

(declare-fun c!674 () Bool)

(assert (=> b!8845 (= c!674 (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!1908 () Unit!169)

(declare-fun lemmaKeyInListMapIsInArray!63 (array!783 array!781 (_ BitVec 32) (_ BitVec 32) V!749 V!749 (_ BitVec 64) Int) Unit!169)

(assert (=> b!8845 (= lt!1908 (lemmaKeyInListMapIsInArray!63 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495))))

(declare-fun b!8846 () Bool)

(assert (=> b!8846 (= e!5038 (and e!5040 mapRes!623))))

(declare-fun condMapEmpty!623 () Bool)

(declare-fun mapDefault!623 () ValueCell!198)

(assert (=> b!8846 (= condMapEmpty!623 (= (arr!376 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!198)) mapDefault!623)))))

(assert (= (and start!1022 res!8167) b!8843))

(assert (= (and b!8843 res!8172) b!8838))

(assert (= (and b!8838 res!8173) b!8836))

(assert (= (and b!8836 res!8170) b!8837))

(assert (= (and b!8837 res!8169) b!8841))

(assert (= (and b!8841 res!8171) b!8845))

(assert (= (and b!8845 c!674) b!8839))

(assert (= (and b!8845 (not c!674)) b!8840))

(assert (= (and b!8845 (not res!8168)) b!8835))

(assert (= (and b!8846 condMapEmpty!623) mapIsEmpty!623))

(assert (= (and b!8846 (not condMapEmpty!623)) mapNonEmpty!623))

(get-info :version)

(assert (= (and mapNonEmpty!623 ((_ is ValueCellFull!198) mapValue!623)) b!8844))

(assert (= (and b!8846 ((_ is ValueCellFull!198) mapDefault!623)) b!8842))

(assert (= start!1022 b!8846))

(declare-fun m!5465 () Bool)

(assert (=> b!8839 m!5465))

(declare-fun m!5467 () Bool)

(assert (=> b!8836 m!5467))

(declare-fun m!5469 () Bool)

(assert (=> b!8838 m!5469))

(declare-fun m!5471 () Bool)

(assert (=> mapNonEmpty!623 m!5471))

(assert (=> b!8845 m!5465))

(declare-fun m!5473 () Bool)

(assert (=> b!8845 m!5473))

(declare-fun m!5475 () Bool)

(assert (=> start!1022 m!5475))

(declare-fun m!5477 () Bool)

(assert (=> start!1022 m!5477))

(declare-fun m!5479 () Bool)

(assert (=> start!1022 m!5479))

(declare-fun m!5481 () Bool)

(assert (=> b!8841 m!5481))

(declare-fun m!5483 () Bool)

(assert (=> b!8835 m!5483))

(declare-fun m!5485 () Bool)

(assert (=> b!8835 m!5485))

(declare-fun m!5487 () Bool)

(assert (=> b!8835 m!5487))

(declare-fun m!5489 () Bool)

(assert (=> b!8837 m!5489))

(assert (=> b!8837 m!5489))

(declare-fun m!5491 () Bool)

(assert (=> b!8837 m!5491))

(check-sat (not b!8837) b_and!503 (not b!8841) (not b_next!351) (not start!1022) (not b!8838) (not mapNonEmpty!623) (not b!8835) (not b!8845) (not b!8839) tp_is_empty!429 (not b!8836))
(check-sat b_and!503 (not b_next!351))
