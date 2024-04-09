; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77568 () Bool)

(assert start!77568)

(declare-fun b_free!16125 () Bool)

(declare-fun b_next!16125 () Bool)

(assert (=> start!77568 (= b_free!16125 (not b_next!16125))))

(declare-fun tp!56638 () Bool)

(declare-fun b_and!26509 () Bool)

(assert (=> start!77568 (= tp!56638 b_and!26509)))

(declare-fun res!609560 () Bool)

(declare-fun e!506134 () Bool)

(assert (=> start!77568 (=> (not res!609560) (not e!506134))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77568 (= res!609560 (validMask!0 mask!1756))))

(assert (=> start!77568 e!506134))

(declare-datatypes ((V!29689 0))(
  ( (V!29690 (val!9322 Int)) )
))
(declare-datatypes ((ValueCell!8790 0))(
  ( (ValueCellFull!8790 (v!11827 V!29689)) (EmptyCell!8790) )
))
(declare-datatypes ((array!53128 0))(
  ( (array!53129 (arr!25519 (Array (_ BitVec 32) ValueCell!8790)) (size!25979 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53128)

(declare-fun e!506138 () Bool)

(declare-fun array_inv!19974 (array!53128) Bool)

(assert (=> start!77568 (and (array_inv!19974 _values!1152) e!506138)))

(assert (=> start!77568 tp!56638))

(assert (=> start!77568 true))

(declare-fun tp_is_empty!18543 () Bool)

(assert (=> start!77568 tp_is_empty!18543))

(declare-datatypes ((array!53130 0))(
  ( (array!53131 (arr!25520 (Array (_ BitVec 32) (_ BitVec 64))) (size!25980 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53130)

(declare-fun array_inv!19975 (array!53130) Bool)

(assert (=> start!77568 (array_inv!19975 _keys!1386)))

(declare-fun mapIsEmpty!29527 () Bool)

(declare-fun mapRes!29527 () Bool)

(assert (=> mapIsEmpty!29527 mapRes!29527))

(declare-fun b!903296 () Bool)

(assert (=> b!903296 (= e!506134 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!29689)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun lt!407954 () Bool)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29689)

(declare-datatypes ((tuple2!12126 0))(
  ( (tuple2!12127 (_1!6073 (_ BitVec 64)) (_2!6073 V!29689)) )
))
(declare-datatypes ((List!18003 0))(
  ( (Nil!18000) (Cons!17999 (h!19145 tuple2!12126) (t!25394 List!18003)) )
))
(declare-datatypes ((ListLongMap!10837 0))(
  ( (ListLongMap!10838 (toList!5434 List!18003)) )
))
(declare-fun contains!4447 (ListLongMap!10837 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2671 (array!53130 array!53128 (_ BitVec 32) (_ BitVec 32) V!29689 V!29689 (_ BitVec 32) Int) ListLongMap!10837)

(assert (=> b!903296 (= lt!407954 (contains!4447 (getCurrentListMap!2671 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!903297 () Bool)

(declare-fun e!506136 () Bool)

(assert (=> b!903297 (= e!506136 tp_is_empty!18543)))

(declare-fun b!903298 () Bool)

(declare-fun res!609559 () Bool)

(assert (=> b!903298 (=> (not res!609559) (not e!506134))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53130 (_ BitVec 32)) Bool)

(assert (=> b!903298 (= res!609559 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!903299 () Bool)

(declare-fun e!506135 () Bool)

(assert (=> b!903299 (= e!506138 (and e!506135 mapRes!29527))))

(declare-fun condMapEmpty!29527 () Bool)

(declare-fun mapDefault!29527 () ValueCell!8790)

(assert (=> b!903299 (= condMapEmpty!29527 (= (arr!25519 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8790)) mapDefault!29527)))))

(declare-fun b!903300 () Bool)

(declare-fun res!609558 () Bool)

(assert (=> b!903300 (=> (not res!609558) (not e!506134))))

(assert (=> b!903300 (= res!609558 (and (= (size!25979 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25980 _keys!1386) (size!25979 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!29527 () Bool)

(declare-fun tp!56637 () Bool)

(assert (=> mapNonEmpty!29527 (= mapRes!29527 (and tp!56637 e!506136))))

(declare-fun mapValue!29527 () ValueCell!8790)

(declare-fun mapRest!29527 () (Array (_ BitVec 32) ValueCell!8790))

(declare-fun mapKey!29527 () (_ BitVec 32))

(assert (=> mapNonEmpty!29527 (= (arr!25519 _values!1152) (store mapRest!29527 mapKey!29527 mapValue!29527))))

(declare-fun b!903301 () Bool)

(assert (=> b!903301 (= e!506135 tp_is_empty!18543)))

(declare-fun b!903302 () Bool)

(declare-fun res!609561 () Bool)

(assert (=> b!903302 (=> (not res!609561) (not e!506134))))

(declare-datatypes ((List!18004 0))(
  ( (Nil!18001) (Cons!18000 (h!19146 (_ BitVec 64)) (t!25395 List!18004)) )
))
(declare-fun arrayNoDuplicates!0 (array!53130 (_ BitVec 32) List!18004) Bool)

(assert (=> b!903302 (= res!609561 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18001))))

(assert (= (and start!77568 res!609560) b!903300))

(assert (= (and b!903300 res!609558) b!903298))

(assert (= (and b!903298 res!609559) b!903302))

(assert (= (and b!903302 res!609561) b!903296))

(assert (= (and b!903299 condMapEmpty!29527) mapIsEmpty!29527))

(assert (= (and b!903299 (not condMapEmpty!29527)) mapNonEmpty!29527))

(get-info :version)

(assert (= (and mapNonEmpty!29527 ((_ is ValueCellFull!8790) mapValue!29527)) b!903297))

(assert (= (and b!903299 ((_ is ValueCellFull!8790) mapDefault!29527)) b!903301))

(assert (= start!77568 b!903299))

(declare-fun m!839085 () Bool)

(assert (=> b!903298 m!839085))

(declare-fun m!839087 () Bool)

(assert (=> mapNonEmpty!29527 m!839087))

(declare-fun m!839089 () Bool)

(assert (=> b!903302 m!839089))

(declare-fun m!839091 () Bool)

(assert (=> start!77568 m!839091))

(declare-fun m!839093 () Bool)

(assert (=> start!77568 m!839093))

(declare-fun m!839095 () Bool)

(assert (=> start!77568 m!839095))

(declare-fun m!839097 () Bool)

(assert (=> b!903296 m!839097))

(assert (=> b!903296 m!839097))

(declare-fun m!839099 () Bool)

(assert (=> b!903296 m!839099))

(check-sat tp_is_empty!18543 (not start!77568) (not b_next!16125) (not b!903302) b_and!26509 (not b!903298) (not mapNonEmpty!29527) (not b!903296))
(check-sat b_and!26509 (not b_next!16125))
