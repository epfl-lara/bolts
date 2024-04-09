; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77586 () Bool)

(assert start!77586)

(declare-fun b_free!16143 () Bool)

(declare-fun b_next!16143 () Bool)

(assert (=> start!77586 (= b_free!16143 (not b_next!16143))))

(declare-fun tp!56692 () Bool)

(declare-fun b_and!26527 () Bool)

(assert (=> start!77586 (= tp!56692 b_and!26527)))

(declare-fun mapNonEmpty!29554 () Bool)

(declare-fun mapRes!29554 () Bool)

(declare-fun tp!56691 () Bool)

(declare-fun e!506269 () Bool)

(assert (=> mapNonEmpty!29554 (= mapRes!29554 (and tp!56691 e!506269))))

(declare-datatypes ((V!29713 0))(
  ( (V!29714 (val!9331 Int)) )
))
(declare-datatypes ((ValueCell!8799 0))(
  ( (ValueCellFull!8799 (v!11836 V!29713)) (EmptyCell!8799) )
))
(declare-datatypes ((array!53160 0))(
  ( (array!53161 (arr!25535 (Array (_ BitVec 32) ValueCell!8799)) (size!25995 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53160)

(declare-fun mapValue!29554 () ValueCell!8799)

(declare-fun mapRest!29554 () (Array (_ BitVec 32) ValueCell!8799))

(declare-fun mapKey!29554 () (_ BitVec 32))

(assert (=> mapNonEmpty!29554 (= (arr!25535 _values!1152) (store mapRest!29554 mapKey!29554 mapValue!29554))))

(declare-fun b!903485 () Bool)

(declare-fun e!506270 () Bool)

(assert (=> b!903485 (= e!506270 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29713)

(declare-datatypes ((array!53162 0))(
  ( (array!53163 (arr!25536 (Array (_ BitVec 32) (_ BitVec 64))) (size!25996 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53162)

(declare-fun lt!407981 () Bool)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29713)

(declare-datatypes ((tuple2!12136 0))(
  ( (tuple2!12137 (_1!6078 (_ BitVec 64)) (_2!6078 V!29713)) )
))
(declare-datatypes ((List!18012 0))(
  ( (Nil!18009) (Cons!18008 (h!19154 tuple2!12136) (t!25403 List!18012)) )
))
(declare-datatypes ((ListLongMap!10847 0))(
  ( (ListLongMap!10848 (toList!5439 List!18012)) )
))
(declare-fun contains!4452 (ListLongMap!10847 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2676 (array!53162 array!53160 (_ BitVec 32) (_ BitVec 32) V!29713 V!29713 (_ BitVec 32) Int) ListLongMap!10847)

(assert (=> b!903485 (= lt!407981 (contains!4452 (getCurrentListMap!2676 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!903486 () Bool)

(declare-fun e!506273 () Bool)

(declare-fun tp_is_empty!18561 () Bool)

(assert (=> b!903486 (= e!506273 tp_is_empty!18561)))

(declare-fun b!903487 () Bool)

(declare-fun res!609667 () Bool)

(assert (=> b!903487 (=> (not res!609667) (not e!506270))))

(declare-datatypes ((List!18013 0))(
  ( (Nil!18010) (Cons!18009 (h!19155 (_ BitVec 64)) (t!25404 List!18013)) )
))
(declare-fun arrayNoDuplicates!0 (array!53162 (_ BitVec 32) List!18013) Bool)

(assert (=> b!903487 (= res!609667 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18010))))

(declare-fun b!903488 () Bool)

(declare-fun res!609669 () Bool)

(assert (=> b!903488 (=> (not res!609669) (not e!506270))))

(assert (=> b!903488 (= res!609669 (and (= (size!25995 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25996 _keys!1386) (size!25995 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!903489 () Bool)

(declare-fun res!609666 () Bool)

(assert (=> b!903489 (=> (not res!609666) (not e!506270))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53162 (_ BitVec 32)) Bool)

(assert (=> b!903489 (= res!609666 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!903490 () Bool)

(assert (=> b!903490 (= e!506269 tp_is_empty!18561)))

(declare-fun b!903491 () Bool)

(declare-fun e!506271 () Bool)

(assert (=> b!903491 (= e!506271 (and e!506273 mapRes!29554))))

(declare-fun condMapEmpty!29554 () Bool)

(declare-fun mapDefault!29554 () ValueCell!8799)

(assert (=> b!903491 (= condMapEmpty!29554 (= (arr!25535 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8799)) mapDefault!29554)))))

(declare-fun res!609668 () Bool)

(assert (=> start!77586 (=> (not res!609668) (not e!506270))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77586 (= res!609668 (validMask!0 mask!1756))))

(assert (=> start!77586 e!506270))

(declare-fun array_inv!19986 (array!53160) Bool)

(assert (=> start!77586 (and (array_inv!19986 _values!1152) e!506271)))

(assert (=> start!77586 tp!56692))

(assert (=> start!77586 true))

(assert (=> start!77586 tp_is_empty!18561))

(declare-fun array_inv!19987 (array!53162) Bool)

(assert (=> start!77586 (array_inv!19987 _keys!1386)))

(declare-fun mapIsEmpty!29554 () Bool)

(assert (=> mapIsEmpty!29554 mapRes!29554))

(assert (= (and start!77586 res!609668) b!903488))

(assert (= (and b!903488 res!609669) b!903489))

(assert (= (and b!903489 res!609666) b!903487))

(assert (= (and b!903487 res!609667) b!903485))

(assert (= (and b!903491 condMapEmpty!29554) mapIsEmpty!29554))

(assert (= (and b!903491 (not condMapEmpty!29554)) mapNonEmpty!29554))

(get-info :version)

(assert (= (and mapNonEmpty!29554 ((_ is ValueCellFull!8799) mapValue!29554)) b!903490))

(assert (= (and b!903491 ((_ is ValueCellFull!8799) mapDefault!29554)) b!903486))

(assert (= start!77586 b!903491))

(declare-fun m!839229 () Bool)

(assert (=> mapNonEmpty!29554 m!839229))

(declare-fun m!839231 () Bool)

(assert (=> start!77586 m!839231))

(declare-fun m!839233 () Bool)

(assert (=> start!77586 m!839233))

(declare-fun m!839235 () Bool)

(assert (=> start!77586 m!839235))

(declare-fun m!839237 () Bool)

(assert (=> b!903485 m!839237))

(assert (=> b!903485 m!839237))

(declare-fun m!839239 () Bool)

(assert (=> b!903485 m!839239))

(declare-fun m!839241 () Bool)

(assert (=> b!903489 m!839241))

(declare-fun m!839243 () Bool)

(assert (=> b!903487 m!839243))

(check-sat (not mapNonEmpty!29554) (not b!903485) b_and!26527 tp_is_empty!18561 (not b!903489) (not start!77586) (not b_next!16143) (not b!903487))
(check-sat b_and!26527 (not b_next!16143))
