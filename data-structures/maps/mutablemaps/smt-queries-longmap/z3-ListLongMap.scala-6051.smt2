; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78256 () Bool)

(assert start!78256)

(declare-fun b_free!16719 () Bool)

(declare-fun b_next!16719 () Bool)

(assert (=> start!78256 (= b_free!16719 (not b_next!16719))))

(declare-fun tp!58434 () Bool)

(declare-fun b_and!27313 () Bool)

(assert (=> start!78256 (= tp!58434 b_and!27313)))

(declare-fun b!912893 () Bool)

(declare-fun e!512079 () Bool)

(declare-fun tp_is_empty!19137 () Bool)

(assert (=> b!912893 (= e!512079 tp_is_empty!19137)))

(declare-fun b!912894 () Bool)

(declare-fun res!615935 () Bool)

(declare-fun e!512077 () Bool)

(assert (=> b!912894 (=> (not res!615935) (not e!512077))))

(declare-datatypes ((V!30481 0))(
  ( (V!30482 (val!9619 Int)) )
))
(declare-datatypes ((ValueCell!9087 0))(
  ( (ValueCellFull!9087 (v!12130 V!30481)) (EmptyCell!9087) )
))
(declare-datatypes ((array!54276 0))(
  ( (array!54277 (arr!26088 (Array (_ BitVec 32) ValueCell!9087)) (size!26548 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54276)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30481)

(declare-datatypes ((array!54278 0))(
  ( (array!54279 (arr!26089 (Array (_ BitVec 32) (_ BitVec 64))) (size!26549 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54278)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30481)

(declare-fun defaultEntry!1160 () Int)

(declare-datatypes ((tuple2!12592 0))(
  ( (tuple2!12593 (_1!6306 (_ BitVec 64)) (_2!6306 V!30481)) )
))
(declare-datatypes ((List!18432 0))(
  ( (Nil!18429) (Cons!18428 (h!19574 tuple2!12592) (t!26029 List!18432)) )
))
(declare-datatypes ((ListLongMap!11303 0))(
  ( (ListLongMap!11304 (toList!5667 List!18432)) )
))
(declare-fun contains!4678 (ListLongMap!11303 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2897 (array!54278 array!54276 (_ BitVec 32) (_ BitVec 32) V!30481 V!30481 (_ BitVec 32) Int) ListLongMap!11303)

(assert (=> b!912894 (= res!615935 (contains!4678 (getCurrentListMap!2897 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun res!615938 () Bool)

(assert (=> start!78256 (=> (not res!615938) (not e!512077))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78256 (= res!615938 (validMask!0 mask!1756))))

(assert (=> start!78256 e!512077))

(declare-fun e!512078 () Bool)

(declare-fun array_inv!20368 (array!54276) Bool)

(assert (=> start!78256 (and (array_inv!20368 _values!1152) e!512078)))

(assert (=> start!78256 tp!58434))

(assert (=> start!78256 true))

(assert (=> start!78256 tp_is_empty!19137))

(declare-fun array_inv!20369 (array!54278) Bool)

(assert (=> start!78256 (array_inv!20369 _keys!1386)))

(declare-fun b!912895 () Bool)

(declare-fun res!615934 () Bool)

(assert (=> b!912895 (=> (not res!615934) (not e!512077))))

(assert (=> b!912895 (= res!615934 (and (= (size!26548 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26549 _keys!1386) (size!26548 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!912896 () Bool)

(declare-fun mapRes!30433 () Bool)

(assert (=> b!912896 (= e!512078 (and e!512079 mapRes!30433))))

(declare-fun condMapEmpty!30433 () Bool)

(declare-fun mapDefault!30433 () ValueCell!9087)

(assert (=> b!912896 (= condMapEmpty!30433 (= (arr!26088 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!9087)) mapDefault!30433)))))

(declare-fun mapIsEmpty!30433 () Bool)

(assert (=> mapIsEmpty!30433 mapRes!30433))

(declare-fun b!912897 () Bool)

(declare-fun res!615939 () Bool)

(assert (=> b!912897 (=> (not res!615939) (not e!512077))))

(declare-fun i!717 () (_ BitVec 32))

(assert (=> b!912897 (= res!615939 (and (= (select (arr!26089 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!912898 () Bool)

(declare-fun res!615937 () Bool)

(assert (=> b!912898 (=> (not res!615937) (not e!512077))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54278 (_ BitVec 32)) Bool)

(assert (=> b!912898 (= res!615937 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapNonEmpty!30433 () Bool)

(declare-fun tp!58435 () Bool)

(declare-fun e!512081 () Bool)

(assert (=> mapNonEmpty!30433 (= mapRes!30433 (and tp!58435 e!512081))))

(declare-fun mapKey!30433 () (_ BitVec 32))

(declare-fun mapValue!30433 () ValueCell!9087)

(declare-fun mapRest!30433 () (Array (_ BitVec 32) ValueCell!9087))

(assert (=> mapNonEmpty!30433 (= (arr!26088 _values!1152) (store mapRest!30433 mapKey!30433 mapValue!30433))))

(declare-fun b!912899 () Bool)

(declare-fun res!615940 () Bool)

(assert (=> b!912899 (=> (not res!615940) (not e!512077))))

(declare-datatypes ((List!18433 0))(
  ( (Nil!18430) (Cons!18429 (h!19575 (_ BitVec 64)) (t!26030 List!18433)) )
))
(declare-fun arrayNoDuplicates!0 (array!54278 (_ BitVec 32) List!18433) Bool)

(assert (=> b!912899 (= res!615940 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18430))))

(declare-fun b!912900 () Bool)

(assert (=> b!912900 (= e!512077 (not true))))

(declare-fun arrayContainsKey!0 (array!54278 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!912900 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30879 0))(
  ( (Unit!30880) )
))
(declare-fun lt!410674 () Unit!30879)

(declare-fun lemmaKeyInListMapIsInArray!285 (array!54278 array!54276 (_ BitVec 32) (_ BitVec 32) V!30481 V!30481 (_ BitVec 64) Int) Unit!30879)

(assert (=> b!912900 (= lt!410674 (lemmaKeyInListMapIsInArray!285 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!912901 () Bool)

(declare-fun res!615936 () Bool)

(assert (=> b!912901 (=> (not res!615936) (not e!512077))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!912901 (= res!615936 (inRange!0 i!717 mask!1756))))

(declare-fun b!912902 () Bool)

(assert (=> b!912902 (= e!512081 tp_is_empty!19137)))

(assert (= (and start!78256 res!615938) b!912895))

(assert (= (and b!912895 res!615934) b!912898))

(assert (= (and b!912898 res!615937) b!912899))

(assert (= (and b!912899 res!615940) b!912894))

(assert (= (and b!912894 res!615935) b!912901))

(assert (= (and b!912901 res!615936) b!912897))

(assert (= (and b!912897 res!615939) b!912900))

(assert (= (and b!912896 condMapEmpty!30433) mapIsEmpty!30433))

(assert (= (and b!912896 (not condMapEmpty!30433)) mapNonEmpty!30433))

(get-info :version)

(assert (= (and mapNonEmpty!30433 ((_ is ValueCellFull!9087) mapValue!30433)) b!912902))

(assert (= (and b!912896 ((_ is ValueCellFull!9087) mapDefault!30433)) b!912893))

(assert (= start!78256 b!912896))

(declare-fun m!847383 () Bool)

(assert (=> mapNonEmpty!30433 m!847383))

(declare-fun m!847385 () Bool)

(assert (=> b!912897 m!847385))

(declare-fun m!847387 () Bool)

(assert (=> b!912901 m!847387))

(declare-fun m!847389 () Bool)

(assert (=> b!912899 m!847389))

(declare-fun m!847391 () Bool)

(assert (=> start!78256 m!847391))

(declare-fun m!847393 () Bool)

(assert (=> start!78256 m!847393))

(declare-fun m!847395 () Bool)

(assert (=> start!78256 m!847395))

(declare-fun m!847397 () Bool)

(assert (=> b!912894 m!847397))

(assert (=> b!912894 m!847397))

(declare-fun m!847399 () Bool)

(assert (=> b!912894 m!847399))

(declare-fun m!847401 () Bool)

(assert (=> b!912898 m!847401))

(declare-fun m!847403 () Bool)

(assert (=> b!912900 m!847403))

(declare-fun m!847405 () Bool)

(assert (=> b!912900 m!847405))

(check-sat (not b!912898) (not b_next!16719) (not b!912899) tp_is_empty!19137 (not b!912894) (not mapNonEmpty!30433) (not start!78256) (not b!912901) (not b!912900) b_and!27313)
(check-sat b_and!27313 (not b_next!16719))
