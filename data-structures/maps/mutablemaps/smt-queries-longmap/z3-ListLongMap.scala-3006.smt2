; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42364 () Bool)

(assert start!42364)

(declare-fun b_free!11847 () Bool)

(declare-fun b_next!11847 () Bool)

(assert (=> start!42364 (= b_free!11847 (not b_next!11847))))

(declare-fun tp!41572 () Bool)

(declare-fun b_and!20311 () Bool)

(assert (=> start!42364 (= tp!41572 b_and!20311)))

(declare-fun b!472393 () Bool)

(declare-fun e!277027 () Bool)

(declare-fun tp_is_empty!13275 () Bool)

(assert (=> b!472393 (= e!277027 tp_is_empty!13275)))

(declare-fun b!472394 () Bool)

(declare-fun e!277023 () Bool)

(declare-fun e!277024 () Bool)

(assert (=> b!472394 (= e!277023 (not e!277024))))

(declare-fun res!282258 () Bool)

(assert (=> b!472394 (=> res!282258 e!277024)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!472394 (= res!282258 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!18805 0))(
  ( (V!18806 (val!6682 Int)) )
))
(declare-datatypes ((tuple2!8790 0))(
  ( (tuple2!8791 (_1!4405 (_ BitVec 64)) (_2!4405 V!18805)) )
))
(declare-datatypes ((List!8905 0))(
  ( (Nil!8902) (Cons!8901 (h!9757 tuple2!8790) (t!14881 List!8905)) )
))
(declare-datatypes ((ListLongMap!7717 0))(
  ( (ListLongMap!7718 (toList!3874 List!8905)) )
))
(declare-fun lt!214382 () ListLongMap!7717)

(declare-fun lt!214384 () ListLongMap!7717)

(assert (=> b!472394 (= lt!214382 lt!214384)))

(declare-fun minValueBefore!38 () V!18805)

(declare-fun zeroValue!794 () V!18805)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((Unit!13868 0))(
  ( (Unit!13869) )
))
(declare-fun lt!214381 () Unit!13868)

(declare-datatypes ((array!30271 0))(
  ( (array!30272 (arr!14553 (Array (_ BitVec 32) (_ BitVec 64))) (size!14905 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30271)

(declare-datatypes ((ValueCell!6294 0))(
  ( (ValueCellFull!6294 (v!8969 V!18805)) (EmptyCell!6294) )
))
(declare-datatypes ((array!30273 0))(
  ( (array!30274 (arr!14554 (Array (_ BitVec 32) ValueCell!6294)) (size!14906 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30273)

(declare-fun minValueAfter!38 () V!18805)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!228 (array!30271 array!30273 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18805 V!18805 V!18805 V!18805 (_ BitVec 32) Int) Unit!13868)

(assert (=> b!472394 (= lt!214381 (lemmaNoChangeToArrayThenSameMapNoExtras!228 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2033 (array!30271 array!30273 (_ BitVec 32) (_ BitVec 32) V!18805 V!18805 (_ BitVec 32) Int) ListLongMap!7717)

(assert (=> b!472394 (= lt!214384 (getCurrentListMapNoExtraKeys!2033 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!472394 (= lt!214382 (getCurrentListMapNoExtraKeys!2033 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472395 () Bool)

(declare-fun res!282256 () Bool)

(assert (=> b!472395 (=> (not res!282256) (not e!277023))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30271 (_ BitVec 32)) Bool)

(assert (=> b!472395 (= res!282256 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!472396 () Bool)

(declare-fun res!282255 () Bool)

(assert (=> b!472396 (=> (not res!282255) (not e!277023))))

(declare-datatypes ((List!8906 0))(
  ( (Nil!8903) (Cons!8902 (h!9758 (_ BitVec 64)) (t!14882 List!8906)) )
))
(declare-fun arrayNoDuplicates!0 (array!30271 (_ BitVec 32) List!8906) Bool)

(assert (=> b!472396 (= res!282255 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8903))))

(declare-fun b!472397 () Bool)

(declare-fun e!277028 () Bool)

(assert (=> b!472397 (= e!277028 tp_is_empty!13275)))

(declare-fun res!282254 () Bool)

(assert (=> start!42364 (=> (not res!282254) (not e!277023))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42364 (= res!282254 (validMask!0 mask!1365))))

(assert (=> start!42364 e!277023))

(assert (=> start!42364 tp_is_empty!13275))

(assert (=> start!42364 tp!41572))

(assert (=> start!42364 true))

(declare-fun array_inv!10498 (array!30271) Bool)

(assert (=> start!42364 (array_inv!10498 _keys!1025)))

(declare-fun e!277026 () Bool)

(declare-fun array_inv!10499 (array!30273) Bool)

(assert (=> start!42364 (and (array_inv!10499 _values!833) e!277026)))

(declare-fun mapIsEmpty!21622 () Bool)

(declare-fun mapRes!21622 () Bool)

(assert (=> mapIsEmpty!21622 mapRes!21622))

(declare-fun b!472398 () Bool)

(assert (=> b!472398 (= e!277024 true)))

(declare-fun lt!214383 () ListLongMap!7717)

(declare-fun getCurrentListMap!2221 (array!30271 array!30273 (_ BitVec 32) (_ BitVec 32) V!18805 V!18805 (_ BitVec 32) Int) ListLongMap!7717)

(assert (=> b!472398 (= lt!214383 (getCurrentListMap!2221 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472399 () Bool)

(assert (=> b!472399 (= e!277026 (and e!277027 mapRes!21622))))

(declare-fun condMapEmpty!21622 () Bool)

(declare-fun mapDefault!21622 () ValueCell!6294)

(assert (=> b!472399 (= condMapEmpty!21622 (= (arr!14554 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6294)) mapDefault!21622)))))

(declare-fun b!472400 () Bool)

(declare-fun res!282257 () Bool)

(assert (=> b!472400 (=> (not res!282257) (not e!277023))))

(assert (=> b!472400 (= res!282257 (and (= (size!14906 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14905 _keys!1025) (size!14906 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!21622 () Bool)

(declare-fun tp!41571 () Bool)

(assert (=> mapNonEmpty!21622 (= mapRes!21622 (and tp!41571 e!277028))))

(declare-fun mapKey!21622 () (_ BitVec 32))

(declare-fun mapValue!21622 () ValueCell!6294)

(declare-fun mapRest!21622 () (Array (_ BitVec 32) ValueCell!6294))

(assert (=> mapNonEmpty!21622 (= (arr!14554 _values!833) (store mapRest!21622 mapKey!21622 mapValue!21622))))

(assert (= (and start!42364 res!282254) b!472400))

(assert (= (and b!472400 res!282257) b!472395))

(assert (= (and b!472395 res!282256) b!472396))

(assert (= (and b!472396 res!282255) b!472394))

(assert (= (and b!472394 (not res!282258)) b!472398))

(assert (= (and b!472399 condMapEmpty!21622) mapIsEmpty!21622))

(assert (= (and b!472399 (not condMapEmpty!21622)) mapNonEmpty!21622))

(get-info :version)

(assert (= (and mapNonEmpty!21622 ((_ is ValueCellFull!6294) mapValue!21622)) b!472397))

(assert (= (and b!472399 ((_ is ValueCellFull!6294) mapDefault!21622)) b!472393))

(assert (= start!42364 b!472399))

(declare-fun m!454377 () Bool)

(assert (=> b!472398 m!454377))

(declare-fun m!454379 () Bool)

(assert (=> b!472396 m!454379))

(declare-fun m!454381 () Bool)

(assert (=> b!472395 m!454381))

(declare-fun m!454383 () Bool)

(assert (=> mapNonEmpty!21622 m!454383))

(declare-fun m!454385 () Bool)

(assert (=> start!42364 m!454385))

(declare-fun m!454387 () Bool)

(assert (=> start!42364 m!454387))

(declare-fun m!454389 () Bool)

(assert (=> start!42364 m!454389))

(declare-fun m!454391 () Bool)

(assert (=> b!472394 m!454391))

(declare-fun m!454393 () Bool)

(assert (=> b!472394 m!454393))

(declare-fun m!454395 () Bool)

(assert (=> b!472394 m!454395))

(check-sat tp_is_empty!13275 (not b!472394) (not b!472395) b_and!20311 (not b_next!11847) (not mapNonEmpty!21622) (not start!42364) (not b!472398) (not b!472396))
(check-sat b_and!20311 (not b_next!11847))
