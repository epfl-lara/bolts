; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41808 () Bool)

(assert start!41808)

(declare-fun b_free!11421 () Bool)

(declare-fun b_next!11421 () Bool)

(assert (=> start!41808 (= b_free!11421 (not b_next!11421))))

(declare-fun tp!40269 () Bool)

(declare-fun b_and!19807 () Bool)

(assert (=> start!41808 (= tp!40269 b_and!19807)))

(declare-fun res!278968 () Bool)

(declare-fun e!272868 () Bool)

(assert (=> start!41808 (=> (not res!278968) (not e!272868))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41808 (= res!278968 (validMask!0 mask!1365))))

(assert (=> start!41808 e!272868))

(declare-fun tp_is_empty!12849 () Bool)

(assert (=> start!41808 tp_is_empty!12849))

(assert (=> start!41808 tp!40269))

(assert (=> start!41808 true))

(declare-datatypes ((array!29433 0))(
  ( (array!29434 (arr!14142 (Array (_ BitVec 32) (_ BitVec 64))) (size!14494 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29433)

(declare-fun array_inv!10192 (array!29433) Bool)

(assert (=> start!41808 (array_inv!10192 _keys!1025)))

(declare-datatypes ((V!18237 0))(
  ( (V!18238 (val!6469 Int)) )
))
(declare-datatypes ((ValueCell!6081 0))(
  ( (ValueCellFull!6081 (v!8753 V!18237)) (EmptyCell!6081) )
))
(declare-datatypes ((array!29435 0))(
  ( (array!29436 (arr!14143 (Array (_ BitVec 32) ValueCell!6081)) (size!14495 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29435)

(declare-fun e!272867 () Bool)

(declare-fun array_inv!10193 (array!29435) Bool)

(assert (=> start!41808 (and (array_inv!10193 _values!833) e!272867)))

(declare-fun b!466575 () Bool)

(declare-fun res!278965 () Bool)

(assert (=> b!466575 (=> (not res!278965) (not e!272868))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!466575 (= res!278965 (and (= (size!14495 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14494 _keys!1025) (size!14495 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!466576 () Bool)

(declare-fun e!272866 () Bool)

(assert (=> b!466576 (= e!272868 (not e!272866))))

(declare-fun res!278967 () Bool)

(assert (=> b!466576 (=> res!278967 e!272866)))

(assert (=> b!466576 (= res!278967 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!8472 0))(
  ( (tuple2!8473 (_1!4246 (_ BitVec 64)) (_2!4246 V!18237)) )
))
(declare-datatypes ((List!8589 0))(
  ( (Nil!8586) (Cons!8585 (h!9441 tuple2!8472) (t!14549 List!8589)) )
))
(declare-datatypes ((ListLongMap!7399 0))(
  ( (ListLongMap!7400 (toList!3715 List!8589)) )
))
(declare-fun lt!210960 () ListLongMap!7399)

(declare-fun lt!210963 () ListLongMap!7399)

(assert (=> b!466576 (= lt!210960 lt!210963)))

(declare-datatypes ((Unit!13549 0))(
  ( (Unit!13550) )
))
(declare-fun lt!210961 () Unit!13549)

(declare-fun minValueBefore!38 () V!18237)

(declare-fun zeroValue!794 () V!18237)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18237)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!76 (array!29433 array!29435 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18237 V!18237 V!18237 V!18237 (_ BitVec 32) Int) Unit!13549)

(assert (=> b!466576 (= lt!210961 (lemmaNoChangeToArrayThenSameMapNoExtras!76 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1881 (array!29433 array!29435 (_ BitVec 32) (_ BitVec 32) V!18237 V!18237 (_ BitVec 32) Int) ListLongMap!7399)

(assert (=> b!466576 (= lt!210963 (getCurrentListMapNoExtraKeys!1881 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!466576 (= lt!210960 (getCurrentListMapNoExtraKeys!1881 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!20959 () Bool)

(declare-fun mapRes!20959 () Bool)

(declare-fun tp!40270 () Bool)

(declare-fun e!272869 () Bool)

(assert (=> mapNonEmpty!20959 (= mapRes!20959 (and tp!40270 e!272869))))

(declare-fun mapValue!20959 () ValueCell!6081)

(declare-fun mapRest!20959 () (Array (_ BitVec 32) ValueCell!6081))

(declare-fun mapKey!20959 () (_ BitVec 32))

(assert (=> mapNonEmpty!20959 (= (arr!14143 _values!833) (store mapRest!20959 mapKey!20959 mapValue!20959))))

(declare-fun b!466577 () Bool)

(assert (=> b!466577 (= e!272866 true)))

(declare-fun lt!210962 () ListLongMap!7399)

(declare-fun getCurrentListMap!2152 (array!29433 array!29435 (_ BitVec 32) (_ BitVec 32) V!18237 V!18237 (_ BitVec 32) Int) ListLongMap!7399)

(assert (=> b!466577 (= lt!210962 (getCurrentListMap!2152 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!210964 () ListLongMap!7399)

(declare-fun +!1643 (ListLongMap!7399 tuple2!8472) ListLongMap!7399)

(assert (=> b!466577 (= lt!210964 (+!1643 (getCurrentListMap!2152 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8473 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun b!466578 () Bool)

(assert (=> b!466578 (= e!272869 tp_is_empty!12849)))

(declare-fun b!466579 () Bool)

(declare-fun e!272870 () Bool)

(assert (=> b!466579 (= e!272867 (and e!272870 mapRes!20959))))

(declare-fun condMapEmpty!20959 () Bool)

(declare-fun mapDefault!20959 () ValueCell!6081)

(assert (=> b!466579 (= condMapEmpty!20959 (= (arr!14143 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6081)) mapDefault!20959)))))

(declare-fun b!466580 () Bool)

(declare-fun res!278969 () Bool)

(assert (=> b!466580 (=> (not res!278969) (not e!272868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29433 (_ BitVec 32)) Bool)

(assert (=> b!466580 (= res!278969 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapIsEmpty!20959 () Bool)

(assert (=> mapIsEmpty!20959 mapRes!20959))

(declare-fun b!466581 () Bool)

(assert (=> b!466581 (= e!272870 tp_is_empty!12849)))

(declare-fun b!466582 () Bool)

(declare-fun res!278966 () Bool)

(assert (=> b!466582 (=> (not res!278966) (not e!272868))))

(declare-datatypes ((List!8590 0))(
  ( (Nil!8587) (Cons!8586 (h!9442 (_ BitVec 64)) (t!14550 List!8590)) )
))
(declare-fun arrayNoDuplicates!0 (array!29433 (_ BitVec 32) List!8590) Bool)

(assert (=> b!466582 (= res!278966 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8587))))

(assert (= (and start!41808 res!278968) b!466575))

(assert (= (and b!466575 res!278965) b!466580))

(assert (= (and b!466580 res!278969) b!466582))

(assert (= (and b!466582 res!278966) b!466576))

(assert (= (and b!466576 (not res!278967)) b!466577))

(assert (= (and b!466579 condMapEmpty!20959) mapIsEmpty!20959))

(assert (= (and b!466579 (not condMapEmpty!20959)) mapNonEmpty!20959))

(get-info :version)

(assert (= (and mapNonEmpty!20959 ((_ is ValueCellFull!6081) mapValue!20959)) b!466578))

(assert (= (and b!466579 ((_ is ValueCellFull!6081) mapDefault!20959)) b!466581))

(assert (= start!41808 b!466579))

(declare-fun m!448827 () Bool)

(assert (=> mapNonEmpty!20959 m!448827))

(declare-fun m!448829 () Bool)

(assert (=> b!466580 m!448829))

(declare-fun m!448831 () Bool)

(assert (=> start!41808 m!448831))

(declare-fun m!448833 () Bool)

(assert (=> start!41808 m!448833))

(declare-fun m!448835 () Bool)

(assert (=> start!41808 m!448835))

(declare-fun m!448837 () Bool)

(assert (=> b!466576 m!448837))

(declare-fun m!448839 () Bool)

(assert (=> b!466576 m!448839))

(declare-fun m!448841 () Bool)

(assert (=> b!466576 m!448841))

(declare-fun m!448843 () Bool)

(assert (=> b!466582 m!448843))

(declare-fun m!448845 () Bool)

(assert (=> b!466577 m!448845))

(declare-fun m!448847 () Bool)

(assert (=> b!466577 m!448847))

(assert (=> b!466577 m!448847))

(declare-fun m!448849 () Bool)

(assert (=> b!466577 m!448849))

(check-sat (not b!466576) b_and!19807 (not b!466577) (not b!466582) tp_is_empty!12849 (not mapNonEmpty!20959) (not b_next!11421) (not b!466580) (not start!41808))
(check-sat b_and!19807 (not b_next!11421))
