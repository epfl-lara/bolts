; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4062 () Bool)

(assert start!4062)

(declare-fun b_free!969 () Bool)

(declare-fun b_next!969 () Bool)

(assert (=> start!4062 (= b_free!969 (not b_next!969))))

(declare-fun tp!4327 () Bool)

(declare-fun b_and!1781 () Bool)

(assert (=> start!4062 (= tp!4327 b_and!1781)))

(declare-fun b!29954 () Bool)

(declare-fun res!17984 () Bool)

(declare-fun e!19297 () Bool)

(assert (=> b!29954 (=> (not res!17984) (not e!19297))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!29954 (= res!17984 (validKeyInArray!0 k0!1304))))

(declare-fun b!29955 () Bool)

(declare-fun res!17983 () Bool)

(assert (=> b!29955 (=> (not res!17983) (not e!19297))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((V!1589 0))(
  ( (V!1590 (val!688 Int)) )
))
(declare-datatypes ((ValueCell!462 0))(
  ( (ValueCellFull!462 (v!1777 V!1589)) (EmptyCell!462) )
))
(declare-datatypes ((array!1867 0))(
  ( (array!1868 (arr!887 (Array (_ BitVec 32) ValueCell!462)) (size!988 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1867)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1869 0))(
  ( (array!1870 (arr!888 (Array (_ BitVec 32) (_ BitVec 64))) (size!989 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1869)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1589)

(declare-fun minValue!1443 () V!1589)

(declare-datatypes ((tuple2!1126 0))(
  ( (tuple2!1127 (_1!573 (_ BitVec 64)) (_2!573 V!1589)) )
))
(declare-datatypes ((List!730 0))(
  ( (Nil!727) (Cons!726 (h!1293 tuple2!1126) (t!3425 List!730)) )
))
(declare-datatypes ((ListLongMap!707 0))(
  ( (ListLongMap!708 (toList!369 List!730)) )
))
(declare-fun contains!306 (ListLongMap!707 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!196 (array!1869 array!1867 (_ BitVec 32) (_ BitVec 32) V!1589 V!1589 (_ BitVec 32) Int) ListLongMap!707)

(assert (=> b!29955 (= res!17983 (not (contains!306 (getCurrentListMap!196 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun b!29956 () Bool)

(assert (=> b!29956 (= e!19297 false)))

(declare-datatypes ((SeekEntryResult!98 0))(
  ( (MissingZero!98 (index!2514 (_ BitVec 32))) (Found!98 (index!2515 (_ BitVec 32))) (Intermediate!98 (undefined!910 Bool) (index!2516 (_ BitVec 32)) (x!6480 (_ BitVec 32))) (Undefined!98) (MissingVacant!98 (index!2517 (_ BitVec 32))) )
))
(declare-fun lt!11379 () SeekEntryResult!98)

(declare-fun seekEntry!0 ((_ BitVec 64) array!1869 (_ BitVec 32)) SeekEntryResult!98)

(assert (=> b!29956 (= lt!11379 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-fun b!29957 () Bool)

(declare-fun res!17987 () Bool)

(assert (=> b!29957 (=> (not res!17987) (not e!19297))))

(declare-datatypes ((List!731 0))(
  ( (Nil!728) (Cons!727 (h!1294 (_ BitVec 64)) (t!3426 List!731)) )
))
(declare-fun arrayNoDuplicates!0 (array!1869 (_ BitVec 32) List!731) Bool)

(assert (=> b!29957 (= res!17987 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!728))))

(declare-fun b!29958 () Bool)

(declare-fun e!19294 () Bool)

(declare-fun tp_is_empty!1323 () Bool)

(assert (=> b!29958 (= e!19294 tp_is_empty!1323)))

(declare-fun mapNonEmpty!1513 () Bool)

(declare-fun mapRes!1513 () Bool)

(declare-fun tp!4326 () Bool)

(assert (=> mapNonEmpty!1513 (= mapRes!1513 (and tp!4326 e!19294))))

(declare-fun mapKey!1513 () (_ BitVec 32))

(declare-fun mapValue!1513 () ValueCell!462)

(declare-fun mapRest!1513 () (Array (_ BitVec 32) ValueCell!462))

(assert (=> mapNonEmpty!1513 (= (arr!887 _values!1501) (store mapRest!1513 mapKey!1513 mapValue!1513))))

(declare-fun b!29959 () Bool)

(declare-fun res!17989 () Bool)

(assert (=> b!29959 (=> (not res!17989) (not e!19297))))

(assert (=> b!29959 (= res!17989 (and (= (size!988 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!989 _keys!1833) (size!988 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun res!17985 () Bool)

(assert (=> start!4062 (=> (not res!17985) (not e!19297))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4062 (= res!17985 (validMask!0 mask!2294))))

(assert (=> start!4062 e!19297))

(assert (=> start!4062 true))

(assert (=> start!4062 tp!4327))

(declare-fun e!19293 () Bool)

(declare-fun array_inv!597 (array!1867) Bool)

(assert (=> start!4062 (and (array_inv!597 _values!1501) e!19293)))

(declare-fun array_inv!598 (array!1869) Bool)

(assert (=> start!4062 (array_inv!598 _keys!1833)))

(assert (=> start!4062 tp_is_empty!1323))

(declare-fun mapIsEmpty!1513 () Bool)

(assert (=> mapIsEmpty!1513 mapRes!1513))

(declare-fun b!29960 () Bool)

(declare-fun res!17988 () Bool)

(assert (=> b!29960 (=> (not res!17988) (not e!19297))))

(declare-fun arrayContainsKey!0 (array!1869 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!29960 (= res!17988 (not (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000)))))

(declare-fun b!29961 () Bool)

(declare-fun res!17986 () Bool)

(assert (=> b!29961 (=> (not res!17986) (not e!19297))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1869 (_ BitVec 32)) Bool)

(assert (=> b!29961 (= res!17986 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!29962 () Bool)

(declare-fun e!19296 () Bool)

(assert (=> b!29962 (= e!19296 tp_is_empty!1323)))

(declare-fun b!29963 () Bool)

(assert (=> b!29963 (= e!19293 (and e!19296 mapRes!1513))))

(declare-fun condMapEmpty!1513 () Bool)

(declare-fun mapDefault!1513 () ValueCell!462)

(assert (=> b!29963 (= condMapEmpty!1513 (= (arr!887 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!462)) mapDefault!1513)))))

(assert (= (and start!4062 res!17985) b!29959))

(assert (= (and b!29959 res!17989) b!29961))

(assert (= (and b!29961 res!17986) b!29957))

(assert (= (and b!29957 res!17987) b!29954))

(assert (= (and b!29954 res!17984) b!29955))

(assert (= (and b!29955 res!17983) b!29960))

(assert (= (and b!29960 res!17988) b!29956))

(assert (= (and b!29963 condMapEmpty!1513) mapIsEmpty!1513))

(assert (= (and b!29963 (not condMapEmpty!1513)) mapNonEmpty!1513))

(get-info :version)

(assert (= (and mapNonEmpty!1513 ((_ is ValueCellFull!462) mapValue!1513)) b!29958))

(assert (= (and b!29963 ((_ is ValueCellFull!462) mapDefault!1513)) b!29962))

(assert (= start!4062 b!29963))

(declare-fun m!24109 () Bool)

(assert (=> b!29961 m!24109))

(declare-fun m!24111 () Bool)

(assert (=> start!4062 m!24111))

(declare-fun m!24113 () Bool)

(assert (=> start!4062 m!24113))

(declare-fun m!24115 () Bool)

(assert (=> start!4062 m!24115))

(declare-fun m!24117 () Bool)

(assert (=> b!29957 m!24117))

(declare-fun m!24119 () Bool)

(assert (=> b!29954 m!24119))

(declare-fun m!24121 () Bool)

(assert (=> b!29955 m!24121))

(assert (=> b!29955 m!24121))

(declare-fun m!24123 () Bool)

(assert (=> b!29955 m!24123))

(declare-fun m!24125 () Bool)

(assert (=> b!29960 m!24125))

(declare-fun m!24127 () Bool)

(assert (=> mapNonEmpty!1513 m!24127))

(declare-fun m!24129 () Bool)

(assert (=> b!29956 m!24129))

(check-sat (not b!29957) (not start!4062) tp_is_empty!1323 (not b!29956) (not mapNonEmpty!1513) b_and!1781 (not b!29954) (not b!29961) (not b!29960) (not b!29955) (not b_next!969))
(check-sat b_and!1781 (not b_next!969))
