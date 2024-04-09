; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77598 () Bool)

(assert start!77598)

(declare-fun b_free!16155 () Bool)

(declare-fun b_next!16155 () Bool)

(assert (=> start!77598 (= b_free!16155 (not b_next!16155))))

(declare-fun tp!56728 () Bool)

(declare-fun b_and!26539 () Bool)

(assert (=> start!77598 (= tp!56728 b_and!26539)))

(declare-fun b!903681 () Bool)

(declare-fun e!506393 () Bool)

(declare-fun e!506392 () Bool)

(declare-fun mapRes!29572 () Bool)

(assert (=> b!903681 (= e!506393 (and e!506392 mapRes!29572))))

(declare-fun condMapEmpty!29572 () Bool)

(declare-datatypes ((V!29729 0))(
  ( (V!29730 (val!9337 Int)) )
))
(declare-datatypes ((ValueCell!8805 0))(
  ( (ValueCellFull!8805 (v!11842 V!29729)) (EmptyCell!8805) )
))
(declare-datatypes ((array!53178 0))(
  ( (array!53179 (arr!25544 (Array (_ BitVec 32) ValueCell!8805)) (size!26004 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53178)

(declare-fun mapDefault!29572 () ValueCell!8805)

(assert (=> b!903681 (= condMapEmpty!29572 (= (arr!25544 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8805)) mapDefault!29572)))))

(declare-fun b!903682 () Bool)

(declare-fun res!609812 () Bool)

(declare-fun e!506391 () Bool)

(assert (=> b!903682 (=> (not res!609812) (not e!506391))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!903682 (= res!609812 (inRange!0 i!717 mask!1756))))

(declare-fun b!903683 () Bool)

(declare-fun res!609808 () Bool)

(assert (=> b!903683 (=> (not res!609808) (not e!506391))))

(declare-datatypes ((array!53180 0))(
  ( (array!53181 (arr!25545 (Array (_ BitVec 32) (_ BitVec 64))) (size!26005 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53180)

(declare-datatypes ((List!18016 0))(
  ( (Nil!18013) (Cons!18012 (h!19158 (_ BitVec 64)) (t!25407 List!18016)) )
))
(declare-fun arrayNoDuplicates!0 (array!53180 (_ BitVec 32) List!18016) Bool)

(assert (=> b!903683 (= res!609808 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18013))))

(declare-fun b!903684 () Bool)

(declare-fun e!506387 () Bool)

(declare-fun e!506388 () Bool)

(assert (=> b!903684 (= e!506387 e!506388)))

(declare-fun res!609809 () Bool)

(assert (=> b!903684 (=> res!609809 e!506388)))

(declare-datatypes ((tuple2!12140 0))(
  ( (tuple2!12141 (_1!6080 (_ BitVec 64)) (_2!6080 V!29729)) )
))
(declare-datatypes ((List!18017 0))(
  ( (Nil!18014) (Cons!18013 (h!19159 tuple2!12140) (t!25408 List!18017)) )
))
(declare-datatypes ((ListLongMap!10851 0))(
  ( (ListLongMap!10852 (toList!5441 List!18017)) )
))
(declare-fun lt!408027 () ListLongMap!10851)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun contains!4454 (ListLongMap!10851 (_ BitVec 64)) Bool)

(assert (=> b!903684 (= res!609809 (not (contains!4454 lt!408027 k0!1033)))))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!29729)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29729)

(declare-fun getCurrentListMap!2678 (array!53180 array!53178 (_ BitVec 32) (_ BitVec 32) V!29729 V!29729 (_ BitVec 32) Int) ListLongMap!10851)

(assert (=> b!903684 (= lt!408027 (getCurrentListMap!2678 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun mapIsEmpty!29572 () Bool)

(assert (=> mapIsEmpty!29572 mapRes!29572))

(declare-fun res!609815 () Bool)

(assert (=> start!77598 (=> (not res!609815) (not e!506391))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77598 (= res!609815 (validMask!0 mask!1756))))

(assert (=> start!77598 e!506391))

(declare-fun array_inv!19990 (array!53178) Bool)

(assert (=> start!77598 (and (array_inv!19990 _values!1152) e!506393)))

(assert (=> start!77598 tp!56728))

(assert (=> start!77598 true))

(declare-fun tp_is_empty!18573 () Bool)

(assert (=> start!77598 tp_is_empty!18573))

(declare-fun array_inv!19991 (array!53180) Bool)

(assert (=> start!77598 (array_inv!19991 _keys!1386)))

(declare-fun mapNonEmpty!29572 () Bool)

(declare-fun tp!56727 () Bool)

(declare-fun e!506390 () Bool)

(assert (=> mapNonEmpty!29572 (= mapRes!29572 (and tp!56727 e!506390))))

(declare-fun mapKey!29572 () (_ BitVec 32))

(declare-fun mapValue!29572 () ValueCell!8805)

(declare-fun mapRest!29572 () (Array (_ BitVec 32) ValueCell!8805))

(assert (=> mapNonEmpty!29572 (= (arr!25544 _values!1152) (store mapRest!29572 mapKey!29572 mapValue!29572))))

(declare-fun b!903685 () Bool)

(declare-fun res!609810 () Bool)

(assert (=> b!903685 (=> (not res!609810) (not e!506391))))

(assert (=> b!903685 (= res!609810 (contains!4454 (getCurrentListMap!2678 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!903686 () Bool)

(assert (=> b!903686 (= e!506388 true)))

(declare-fun lt!408028 () V!29729)

(declare-fun apply!424 (ListLongMap!10851 (_ BitVec 64)) V!29729)

(assert (=> b!903686 (= lt!408028 (apply!424 lt!408027 k0!1033))))

(declare-fun b!903687 () Bool)

(declare-fun res!609816 () Bool)

(assert (=> b!903687 (=> (not res!609816) (not e!506391))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53180 (_ BitVec 32)) Bool)

(assert (=> b!903687 (= res!609816 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!903688 () Bool)

(assert (=> b!903688 (= e!506390 tp_is_empty!18573)))

(declare-fun b!903689 () Bool)

(assert (=> b!903689 (= e!506391 (not e!506387))))

(declare-fun res!609814 () Bool)

(assert (=> b!903689 (=> res!609814 e!506387)))

(assert (=> b!903689 (= res!609814 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26005 _keys!1386))))))

(declare-fun arrayContainsKey!0 (array!53180 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!903689 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30615 0))(
  ( (Unit!30616) )
))
(declare-fun lt!408029 () Unit!30615)

(declare-fun lemmaKeyInListMapIsInArray!170 (array!53180 array!53178 (_ BitVec 32) (_ BitVec 32) V!29729 V!29729 (_ BitVec 64) Int) Unit!30615)

(assert (=> b!903689 (= lt!408029 (lemmaKeyInListMapIsInArray!170 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!903690 () Bool)

(declare-fun res!609813 () Bool)

(assert (=> b!903690 (=> (not res!609813) (not e!506391))))

(assert (=> b!903690 (= res!609813 (and (= (select (arr!25545 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!903691 () Bool)

(declare-fun res!609811 () Bool)

(assert (=> b!903691 (=> (not res!609811) (not e!506391))))

(assert (=> b!903691 (= res!609811 (and (= (size!26004 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26005 _keys!1386) (size!26004 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!903692 () Bool)

(assert (=> b!903692 (= e!506392 tp_is_empty!18573)))

(assert (= (and start!77598 res!609815) b!903691))

(assert (= (and b!903691 res!609811) b!903687))

(assert (= (and b!903687 res!609816) b!903683))

(assert (= (and b!903683 res!609808) b!903685))

(assert (= (and b!903685 res!609810) b!903682))

(assert (= (and b!903682 res!609812) b!903690))

(assert (= (and b!903690 res!609813) b!903689))

(assert (= (and b!903689 (not res!609814)) b!903684))

(assert (= (and b!903684 (not res!609809)) b!903686))

(assert (= (and b!903681 condMapEmpty!29572) mapIsEmpty!29572))

(assert (= (and b!903681 (not condMapEmpty!29572)) mapNonEmpty!29572))

(get-info :version)

(assert (= (and mapNonEmpty!29572 ((_ is ValueCellFull!8805) mapValue!29572)) b!903688))

(assert (= (and b!903681 ((_ is ValueCellFull!8805) mapDefault!29572)) b!903692))

(assert (= start!77598 b!903681))

(declare-fun m!839381 () Bool)

(assert (=> b!903690 m!839381))

(declare-fun m!839383 () Bool)

(assert (=> mapNonEmpty!29572 m!839383))

(declare-fun m!839385 () Bool)

(assert (=> b!903684 m!839385))

(declare-fun m!839387 () Bool)

(assert (=> b!903684 m!839387))

(declare-fun m!839389 () Bool)

(assert (=> b!903685 m!839389))

(assert (=> b!903685 m!839389))

(declare-fun m!839391 () Bool)

(assert (=> b!903685 m!839391))

(declare-fun m!839393 () Bool)

(assert (=> start!77598 m!839393))

(declare-fun m!839395 () Bool)

(assert (=> start!77598 m!839395))

(declare-fun m!839397 () Bool)

(assert (=> start!77598 m!839397))

(declare-fun m!839399 () Bool)

(assert (=> b!903687 m!839399))

(declare-fun m!839401 () Bool)

(assert (=> b!903682 m!839401))

(declare-fun m!839403 () Bool)

(assert (=> b!903689 m!839403))

(declare-fun m!839405 () Bool)

(assert (=> b!903689 m!839405))

(declare-fun m!839407 () Bool)

(assert (=> b!903683 m!839407))

(declare-fun m!839409 () Bool)

(assert (=> b!903686 m!839409))

(check-sat (not mapNonEmpty!29572) (not b!903684) b_and!26539 (not b!903682) (not start!77598) (not b!903686) (not b!903685) (not b!903687) (not b!903689) tp_is_empty!18573 (not b_next!16155) (not b!903683))
(check-sat b_and!26539 (not b_next!16155))
