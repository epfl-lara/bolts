; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!614 () Bool)

(assert start!614)

(declare-fun b_free!87 () Bool)

(declare-fun b_next!87 () Bool)

(assert (=> start!614 (= b_free!87 (not b_next!87))))

(declare-fun tp!478 () Bool)

(declare-fun b_and!225 () Bool)

(assert (=> start!614 (= tp!478 b_and!225)))

(declare-fun b!3847 () Bool)

(declare-fun res!5402 () Bool)

(declare-fun e!1952 () Bool)

(assert (=> b!3847 (=> (not res!5402) (not e!1952))))

(declare-datatypes ((array!263 0))(
  ( (array!264 (arr!124 (Array (_ BitVec 32) (_ BitVec 64))) (size!186 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!263)

(declare-datatypes ((List!75 0))(
  ( (Nil!72) (Cons!71 (h!637 (_ BitVec 64)) (t!2202 List!75)) )
))
(declare-fun arrayNoDuplicates!0 (array!263 (_ BitVec 32) List!75) Bool)

(assert (=> b!3847 (= res!5402 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!72))))

(declare-fun b!3848 () Bool)

(declare-fun res!5401 () Bool)

(assert (=> b!3848 (=> (not res!5401) (not e!1952))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!263 (_ BitVec 32)) Bool)

(assert (=> b!3848 (= res!5401 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun mapNonEmpty!206 () Bool)

(declare-fun mapRes!206 () Bool)

(declare-fun tp!479 () Bool)

(declare-fun e!1951 () Bool)

(assert (=> mapNonEmpty!206 (= mapRes!206 (and tp!479 e!1951))))

(declare-datatypes ((V!397 0))(
  ( (V!398 (val!88 Int)) )
))
(declare-datatypes ((ValueCell!66 0))(
  ( (ValueCellFull!66 (v!1175 V!397)) (EmptyCell!66) )
))
(declare-fun mapValue!206 () ValueCell!66)

(declare-datatypes ((array!265 0))(
  ( (array!266 (arr!125 (Array (_ BitVec 32) ValueCell!66)) (size!187 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!265)

(declare-fun mapKey!206 () (_ BitVec 32))

(declare-fun mapRest!206 () (Array (_ BitVec 32) ValueCell!66))

(assert (=> mapNonEmpty!206 (= (arr!125 _values!1492) (store mapRest!206 mapKey!206 mapValue!206))))

(declare-fun b!3849 () Bool)

(declare-fun res!5403 () Bool)

(assert (=> b!3849 (=> (not res!5403) (not e!1952))))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!3849 (= res!5403 (and (= (size!187 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!186 _keys!1806) (size!187 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!3850 () Bool)

(declare-fun tp_is_empty!165 () Bool)

(assert (=> b!3850 (= e!1951 tp_is_empty!165)))

(declare-fun res!5404 () Bool)

(assert (=> start!614 (=> (not res!5404) (not e!1952))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!614 (= res!5404 (validMask!0 mask!2250))))

(assert (=> start!614 e!1952))

(assert (=> start!614 tp!478))

(assert (=> start!614 true))

(declare-fun e!1954 () Bool)

(declare-fun array_inv!87 (array!265) Bool)

(assert (=> start!614 (and (array_inv!87 _values!1492) e!1954)))

(assert (=> start!614 tp_is_empty!165))

(declare-fun array_inv!88 (array!263) Bool)

(assert (=> start!614 (array_inv!88 _keys!1806)))

(declare-fun b!3851 () Bool)

(assert (=> b!3851 (= e!1952 false)))

(declare-fun defaultEntry!1495 () Int)

(declare-fun minValue!1434 () V!397)

(declare-fun lt!531 () Bool)

(declare-fun k0!1278 () (_ BitVec 64))

(declare-fun zeroValue!1434 () V!397)

(declare-datatypes ((tuple2!70 0))(
  ( (tuple2!71 (_1!35 (_ BitVec 64)) (_2!35 V!397)) )
))
(declare-datatypes ((List!76 0))(
  ( (Nil!73) (Cons!72 (h!638 tuple2!70) (t!2203 List!76)) )
))
(declare-datatypes ((ListLongMap!75 0))(
  ( (ListLongMap!76 (toList!53 List!76)) )
))
(declare-fun contains!23 (ListLongMap!75 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!12 (array!263 array!265 (_ BitVec 32) (_ BitVec 32) V!397 V!397 (_ BitVec 32) Int) ListLongMap!75)

(assert (=> b!3851 (= lt!531 (contains!23 (getCurrentListMap!12 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(declare-fun b!3852 () Bool)

(declare-fun e!1955 () Bool)

(assert (=> b!3852 (= e!1955 tp_is_empty!165)))

(declare-fun b!3853 () Bool)

(assert (=> b!3853 (= e!1954 (and e!1955 mapRes!206))))

(declare-fun condMapEmpty!206 () Bool)

(declare-fun mapDefault!206 () ValueCell!66)

(assert (=> b!3853 (= condMapEmpty!206 (= (arr!125 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!66)) mapDefault!206)))))

(declare-fun mapIsEmpty!206 () Bool)

(assert (=> mapIsEmpty!206 mapRes!206))

(assert (= (and start!614 res!5404) b!3849))

(assert (= (and b!3849 res!5403) b!3848))

(assert (= (and b!3848 res!5401) b!3847))

(assert (= (and b!3847 res!5402) b!3851))

(assert (= (and b!3853 condMapEmpty!206) mapIsEmpty!206))

(assert (= (and b!3853 (not condMapEmpty!206)) mapNonEmpty!206))

(get-info :version)

(assert (= (and mapNonEmpty!206 ((_ is ValueCellFull!66) mapValue!206)) b!3850))

(assert (= (and b!3853 ((_ is ValueCellFull!66) mapDefault!206)) b!3852))

(assert (= start!614 b!3853))

(declare-fun m!1935 () Bool)

(assert (=> start!614 m!1935))

(declare-fun m!1937 () Bool)

(assert (=> start!614 m!1937))

(declare-fun m!1939 () Bool)

(assert (=> start!614 m!1939))

(declare-fun m!1941 () Bool)

(assert (=> b!3847 m!1941))

(declare-fun m!1943 () Bool)

(assert (=> mapNonEmpty!206 m!1943))

(declare-fun m!1945 () Bool)

(assert (=> b!3848 m!1945))

(declare-fun m!1947 () Bool)

(assert (=> b!3851 m!1947))

(assert (=> b!3851 m!1947))

(declare-fun m!1949 () Bool)

(assert (=> b!3851 m!1949))

(check-sat (not mapNonEmpty!206) tp_is_empty!165 (not start!614) (not b_next!87) (not b!3848) (not b!3851) (not b!3847) b_and!225)
(check-sat b_and!225 (not b_next!87))
