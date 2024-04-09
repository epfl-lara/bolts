; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41784 () Bool)

(assert start!41784)

(declare-fun b_free!11397 () Bool)

(declare-fun b_next!11397 () Bool)

(assert (=> start!41784 (= b_free!11397 (not b_next!11397))))

(declare-fun tp!40198 () Bool)

(declare-fun b_and!19783 () Bool)

(assert (=> start!41784 (= tp!40198 b_and!19783)))

(declare-fun mapNonEmpty!20923 () Bool)

(declare-fun mapRes!20923 () Bool)

(declare-fun tp!40197 () Bool)

(declare-fun e!272652 () Bool)

(assert (=> mapNonEmpty!20923 (= mapRes!20923 (and tp!40197 e!272652))))

(declare-datatypes ((V!18205 0))(
  ( (V!18206 (val!6457 Int)) )
))
(declare-datatypes ((ValueCell!6069 0))(
  ( (ValueCellFull!6069 (v!8741 V!18205)) (EmptyCell!6069) )
))
(declare-fun mapRest!20923 () (Array (_ BitVec 32) ValueCell!6069))

(declare-datatypes ((array!29387 0))(
  ( (array!29388 (arr!14119 (Array (_ BitVec 32) ValueCell!6069)) (size!14471 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29387)

(declare-fun mapValue!20923 () ValueCell!6069)

(declare-fun mapKey!20923 () (_ BitVec 32))

(assert (=> mapNonEmpty!20923 (= (arr!14119 _values!833) (store mapRest!20923 mapKey!20923 mapValue!20923))))

(declare-fun b!466287 () Bool)

(declare-fun e!272649 () Bool)

(assert (=> b!466287 (= e!272649 true)))

(declare-fun zeroValue!794 () V!18205)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29389 0))(
  ( (array!29390 (arr!14120 (Array (_ BitVec 32) (_ BitVec 64))) (size!14472 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29389)

(declare-datatypes ((tuple2!8450 0))(
  ( (tuple2!8451 (_1!4235 (_ BitVec 64)) (_2!4235 V!18205)) )
))
(declare-datatypes ((List!8570 0))(
  ( (Nil!8567) (Cons!8566 (h!9422 tuple2!8450) (t!14530 List!8570)) )
))
(declare-datatypes ((ListLongMap!7377 0))(
  ( (ListLongMap!7378 (toList!3704 List!8570)) )
))
(declare-fun lt!210782 () ListLongMap!7377)

(declare-fun minValueAfter!38 () V!18205)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMap!2143 (array!29389 array!29387 (_ BitVec 32) (_ BitVec 32) V!18205 V!18205 (_ BitVec 32) Int) ListLongMap!7377)

(assert (=> b!466287 (= lt!210782 (getCurrentListMap!2143 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!210781 () ListLongMap!7377)

(declare-fun minValueBefore!38 () V!18205)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun +!1634 (ListLongMap!7377 tuple2!8450) ListLongMap!7377)

(assert (=> b!466287 (= lt!210781 (+!1634 (getCurrentListMap!2143 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8451 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun b!466288 () Bool)

(declare-fun e!272650 () Bool)

(declare-fun e!272654 () Bool)

(assert (=> b!466288 (= e!272650 (and e!272654 mapRes!20923))))

(declare-fun condMapEmpty!20923 () Bool)

(declare-fun mapDefault!20923 () ValueCell!6069)

(assert (=> b!466288 (= condMapEmpty!20923 (= (arr!14119 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6069)) mapDefault!20923)))))

(declare-fun b!466289 () Bool)

(declare-fun res!278785 () Bool)

(declare-fun e!272653 () Bool)

(assert (=> b!466289 (=> (not res!278785) (not e!272653))))

(declare-datatypes ((List!8571 0))(
  ( (Nil!8568) (Cons!8567 (h!9423 (_ BitVec 64)) (t!14531 List!8571)) )
))
(declare-fun arrayNoDuplicates!0 (array!29389 (_ BitVec 32) List!8571) Bool)

(assert (=> b!466289 (= res!278785 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8568))))

(declare-fun b!466291 () Bool)

(declare-fun tp_is_empty!12825 () Bool)

(assert (=> b!466291 (= e!272654 tp_is_empty!12825)))

(declare-fun b!466292 () Bool)

(assert (=> b!466292 (= e!272652 tp_is_empty!12825)))

(declare-fun b!466293 () Bool)

(declare-fun res!278786 () Bool)

(assert (=> b!466293 (=> (not res!278786) (not e!272653))))

(assert (=> b!466293 (= res!278786 (and (= (size!14471 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14472 _keys!1025) (size!14471 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!466294 () Bool)

(assert (=> b!466294 (= e!272653 (not e!272649))))

(declare-fun res!278788 () Bool)

(assert (=> b!466294 (=> res!278788 e!272649)))

(assert (=> b!466294 (= res!278788 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!210780 () ListLongMap!7377)

(declare-fun lt!210783 () ListLongMap!7377)

(assert (=> b!466294 (= lt!210780 lt!210783)))

(declare-datatypes ((Unit!13527 0))(
  ( (Unit!13528) )
))
(declare-fun lt!210784 () Unit!13527)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!65 (array!29389 array!29387 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18205 V!18205 V!18205 V!18205 (_ BitVec 32) Int) Unit!13527)

(assert (=> b!466294 (= lt!210784 (lemmaNoChangeToArrayThenSameMapNoExtras!65 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1870 (array!29389 array!29387 (_ BitVec 32) (_ BitVec 32) V!18205 V!18205 (_ BitVec 32) Int) ListLongMap!7377)

(assert (=> b!466294 (= lt!210783 (getCurrentListMapNoExtraKeys!1870 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!466294 (= lt!210780 (getCurrentListMapNoExtraKeys!1870 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!20923 () Bool)

(assert (=> mapIsEmpty!20923 mapRes!20923))

(declare-fun res!278789 () Bool)

(assert (=> start!41784 (=> (not res!278789) (not e!272653))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41784 (= res!278789 (validMask!0 mask!1365))))

(assert (=> start!41784 e!272653))

(assert (=> start!41784 tp_is_empty!12825))

(assert (=> start!41784 tp!40198))

(assert (=> start!41784 true))

(declare-fun array_inv!10174 (array!29389) Bool)

(assert (=> start!41784 (array_inv!10174 _keys!1025)))

(declare-fun array_inv!10175 (array!29387) Bool)

(assert (=> start!41784 (and (array_inv!10175 _values!833) e!272650)))

(declare-fun b!466290 () Bool)

(declare-fun res!278787 () Bool)

(assert (=> b!466290 (=> (not res!278787) (not e!272653))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29389 (_ BitVec 32)) Bool)

(assert (=> b!466290 (= res!278787 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(assert (= (and start!41784 res!278789) b!466293))

(assert (= (and b!466293 res!278786) b!466290))

(assert (= (and b!466290 res!278787) b!466289))

(assert (= (and b!466289 res!278785) b!466294))

(assert (= (and b!466294 (not res!278788)) b!466287))

(assert (= (and b!466288 condMapEmpty!20923) mapIsEmpty!20923))

(assert (= (and b!466288 (not condMapEmpty!20923)) mapNonEmpty!20923))

(get-info :version)

(assert (= (and mapNonEmpty!20923 ((_ is ValueCellFull!6069) mapValue!20923)) b!466292))

(assert (= (and b!466288 ((_ is ValueCellFull!6069) mapDefault!20923)) b!466291))

(assert (= start!41784 b!466288))

(declare-fun m!448539 () Bool)

(assert (=> b!466289 m!448539))

(declare-fun m!448541 () Bool)

(assert (=> b!466290 m!448541))

(declare-fun m!448543 () Bool)

(assert (=> b!466287 m!448543))

(declare-fun m!448545 () Bool)

(assert (=> b!466287 m!448545))

(assert (=> b!466287 m!448545))

(declare-fun m!448547 () Bool)

(assert (=> b!466287 m!448547))

(declare-fun m!448549 () Bool)

(assert (=> b!466294 m!448549))

(declare-fun m!448551 () Bool)

(assert (=> b!466294 m!448551))

(declare-fun m!448553 () Bool)

(assert (=> b!466294 m!448553))

(declare-fun m!448555 () Bool)

(assert (=> start!41784 m!448555))

(declare-fun m!448557 () Bool)

(assert (=> start!41784 m!448557))

(declare-fun m!448559 () Bool)

(assert (=> start!41784 m!448559))

(declare-fun m!448561 () Bool)

(assert (=> mapNonEmpty!20923 m!448561))

(check-sat (not b!466294) (not b_next!11397) (not start!41784) (not b!466290) tp_is_empty!12825 b_and!19783 (not b!466287) (not b!466289) (not mapNonEmpty!20923))
(check-sat b_and!19783 (not b_next!11397))
