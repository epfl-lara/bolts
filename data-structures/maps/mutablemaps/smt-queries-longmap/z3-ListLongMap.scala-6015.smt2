; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77988 () Bool)

(assert start!77988)

(declare-fun b_free!16503 () Bool)

(declare-fun b_next!16503 () Bool)

(assert (=> start!77988 (= b_free!16503 (not b_next!16503))))

(declare-fun tp!57777 () Bool)

(declare-fun b_and!27091 () Bool)

(assert (=> start!77988 (= tp!57777 b_and!27091)))

(declare-fun res!614233 () Bool)

(declare-fun e!510236 () Bool)

(assert (=> start!77988 (=> (not res!614233) (not e!510236))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77988 (= res!614233 (validMask!0 mask!1756))))

(assert (=> start!77988 e!510236))

(declare-datatypes ((V!30193 0))(
  ( (V!30194 (val!9511 Int)) )
))
(declare-datatypes ((ValueCell!8979 0))(
  ( (ValueCellFull!8979 (v!12019 V!30193)) (EmptyCell!8979) )
))
(declare-datatypes ((array!53856 0))(
  ( (array!53857 (arr!25881 (Array (_ BitVec 32) ValueCell!8979)) (size!26341 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53856)

(declare-fun e!510235 () Bool)

(declare-fun array_inv!20220 (array!53856) Bool)

(assert (=> start!77988 (and (array_inv!20220 _values!1152) e!510235)))

(assert (=> start!77988 tp!57777))

(assert (=> start!77988 true))

(declare-fun tp_is_empty!18921 () Bool)

(assert (=> start!77988 tp_is_empty!18921))

(declare-datatypes ((array!53858 0))(
  ( (array!53859 (arr!25882 (Array (_ BitVec 32) (_ BitVec 64))) (size!26342 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53858)

(declare-fun array_inv!20221 (array!53858) Bool)

(assert (=> start!77988 (array_inv!20221 _keys!1386)))

(declare-fun b!910019 () Bool)

(declare-fun e!510232 () Bool)

(assert (=> b!910019 (= e!510232 tp_is_empty!18921)))

(declare-fun mapNonEmpty!30100 () Bool)

(declare-fun mapRes!30100 () Bool)

(declare-fun tp!57778 () Bool)

(assert (=> mapNonEmpty!30100 (= mapRes!30100 (and tp!57778 e!510232))))

(declare-fun mapKey!30100 () (_ BitVec 32))

(declare-fun mapValue!30100 () ValueCell!8979)

(declare-fun mapRest!30100 () (Array (_ BitVec 32) ValueCell!8979))

(assert (=> mapNonEmpty!30100 (= (arr!25881 _values!1152) (store mapRest!30100 mapKey!30100 mapValue!30100))))

(declare-fun mapIsEmpty!30100 () Bool)

(assert (=> mapIsEmpty!30100 mapRes!30100))

(declare-fun b!910020 () Bool)

(declare-fun e!510233 () Bool)

(assert (=> b!910020 (= e!510233 tp_is_empty!18921)))

(declare-fun b!910021 () Bool)

(assert (=> b!910021 (= e!510235 (and e!510233 mapRes!30100))))

(declare-fun condMapEmpty!30100 () Bool)

(declare-fun mapDefault!30100 () ValueCell!8979)

(assert (=> b!910021 (= condMapEmpty!30100 (= (arr!25881 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8979)) mapDefault!30100)))))

(declare-fun b!910022 () Bool)

(declare-fun res!614232 () Bool)

(assert (=> b!910022 (=> (not res!614232) (not e!510236))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!910022 (= res!614232 (and (= (size!26341 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26342 _keys!1386) (size!26341 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!910023 () Bool)

(declare-fun res!614230 () Bool)

(assert (=> b!910023 (=> (not res!614230) (not e!510236))))

(declare-datatypes ((List!18283 0))(
  ( (Nil!18280) (Cons!18279 (h!19425 (_ BitVec 64)) (t!25874 List!18283)) )
))
(declare-fun arrayNoDuplicates!0 (array!53858 (_ BitVec 32) List!18283) Bool)

(assert (=> b!910023 (= res!614230 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18280))))

(declare-fun b!910024 () Bool)

(assert (=> b!910024 (= e!510236 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!410104 () Bool)

(declare-fun zeroValue!1094 () V!30193)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun minValue!1094 () V!30193)

(declare-datatypes ((tuple2!12432 0))(
  ( (tuple2!12433 (_1!6226 (_ BitVec 64)) (_2!6226 V!30193)) )
))
(declare-datatypes ((List!18284 0))(
  ( (Nil!18281) (Cons!18280 (h!19426 tuple2!12432) (t!25875 List!18284)) )
))
(declare-datatypes ((ListLongMap!11143 0))(
  ( (ListLongMap!11144 (toList!5587 List!18284)) )
))
(declare-fun contains!4595 (ListLongMap!11143 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2817 (array!53858 array!53856 (_ BitVec 32) (_ BitVec 32) V!30193 V!30193 (_ BitVec 32) Int) ListLongMap!11143)

(assert (=> b!910024 (= lt!410104 (contains!4595 (getCurrentListMap!2817 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!910025 () Bool)

(declare-fun res!614231 () Bool)

(assert (=> b!910025 (=> (not res!614231) (not e!510236))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53858 (_ BitVec 32)) Bool)

(assert (=> b!910025 (= res!614231 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(assert (= (and start!77988 res!614233) b!910022))

(assert (= (and b!910022 res!614232) b!910025))

(assert (= (and b!910025 res!614231) b!910023))

(assert (= (and b!910023 res!614230) b!910024))

(assert (= (and b!910021 condMapEmpty!30100) mapIsEmpty!30100))

(assert (= (and b!910021 (not condMapEmpty!30100)) mapNonEmpty!30100))

(get-info :version)

(assert (= (and mapNonEmpty!30100 ((_ is ValueCellFull!8979) mapValue!30100)) b!910019))

(assert (= (and b!910021 ((_ is ValueCellFull!8979) mapDefault!30100)) b!910020))

(assert (= start!77988 b!910021))

(declare-fun m!845193 () Bool)

(assert (=> start!77988 m!845193))

(declare-fun m!845195 () Bool)

(assert (=> start!77988 m!845195))

(declare-fun m!845197 () Bool)

(assert (=> start!77988 m!845197))

(declare-fun m!845199 () Bool)

(assert (=> b!910024 m!845199))

(assert (=> b!910024 m!845199))

(declare-fun m!845201 () Bool)

(assert (=> b!910024 m!845201))

(declare-fun m!845203 () Bool)

(assert (=> b!910023 m!845203))

(declare-fun m!845205 () Bool)

(assert (=> mapNonEmpty!30100 m!845205))

(declare-fun m!845207 () Bool)

(assert (=> b!910025 m!845207))

(check-sat (not b!910025) (not start!77988) (not b!910023) (not mapNonEmpty!30100) b_and!27091 (not b_next!16503) (not b!910024) tp_is_empty!18921)
(check-sat b_and!27091 (not b_next!16503))
