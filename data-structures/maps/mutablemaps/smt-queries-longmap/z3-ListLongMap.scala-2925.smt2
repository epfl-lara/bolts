; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41730 () Bool)

(assert start!41730)

(declare-fun b_free!11361 () Bool)

(declare-fun b_next!11361 () Bool)

(assert (=> start!41730 (= b_free!11361 (not b_next!11361))))

(declare-fun tp!40087 () Bool)

(declare-fun b_and!19735 () Bool)

(assert (=> start!41730 (= tp!40087 b_and!19735)))

(declare-fun b!465671 () Bool)

(declare-fun e!272216 () Bool)

(assert (=> b!465671 (= e!272216 true)))

(declare-datatypes ((V!18157 0))(
  ( (V!18158 (val!6439 Int)) )
))
(declare-datatypes ((tuple2!8420 0))(
  ( (tuple2!8421 (_1!4220 (_ BitVec 64)) (_2!4220 V!18157)) )
))
(declare-datatypes ((List!8543 0))(
  ( (Nil!8540) (Cons!8539 (h!9395 tuple2!8420) (t!14501 List!8543)) )
))
(declare-datatypes ((ListLongMap!7347 0))(
  ( (ListLongMap!7348 (toList!3689 List!8543)) )
))
(declare-fun lt!210388 () ListLongMap!7347)

(declare-fun zeroValue!794 () V!18157)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29315 0))(
  ( (array!29316 (arr!14084 (Array (_ BitVec 32) (_ BitVec 64))) (size!14436 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29315)

(declare-datatypes ((ValueCell!6051 0))(
  ( (ValueCellFull!6051 (v!8722 V!18157)) (EmptyCell!6051) )
))
(declare-datatypes ((array!29317 0))(
  ( (array!29318 (arr!14085 (Array (_ BitVec 32) ValueCell!6051)) (size!14437 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29317)

(declare-fun minValueAfter!38 () V!18157)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMap!2133 (array!29315 array!29317 (_ BitVec 32) (_ BitVec 32) V!18157 V!18157 (_ BitVec 32) Int) ListLongMap!7347)

(assert (=> b!465671 (= lt!210388 (getCurrentListMap!2133 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!18157)

(declare-fun lt!210390 () ListLongMap!7347)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun +!1624 (ListLongMap!7347 tuple2!8420) ListLongMap!7347)

(assert (=> b!465671 (= lt!210390 (+!1624 (getCurrentListMap!2133 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8421 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun b!465672 () Bool)

(declare-fun e!272215 () Bool)

(declare-fun tp_is_empty!12789 () Bool)

(assert (=> b!465672 (= e!272215 tp_is_empty!12789)))

(declare-fun mapNonEmpty!20866 () Bool)

(declare-fun mapRes!20866 () Bool)

(declare-fun tp!40086 () Bool)

(assert (=> mapNonEmpty!20866 (= mapRes!20866 (and tp!40086 e!272215))))

(declare-fun mapKey!20866 () (_ BitVec 32))

(declare-fun mapRest!20866 () (Array (_ BitVec 32) ValueCell!6051))

(declare-fun mapValue!20866 () ValueCell!6051)

(assert (=> mapNonEmpty!20866 (= (arr!14085 _values!833) (store mapRest!20866 mapKey!20866 mapValue!20866))))

(declare-fun b!465673 () Bool)

(declare-fun e!272220 () Bool)

(assert (=> b!465673 (= e!272220 tp_is_empty!12789)))

(declare-fun b!465674 () Bool)

(declare-fun e!272219 () Bool)

(assert (=> b!465674 (= e!272219 (and e!272220 mapRes!20866))))

(declare-fun condMapEmpty!20866 () Bool)

(declare-fun mapDefault!20866 () ValueCell!6051)

(assert (=> b!465674 (= condMapEmpty!20866 (= (arr!14085 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6051)) mapDefault!20866)))))

(declare-fun b!465675 () Bool)

(declare-fun res!278434 () Bool)

(declare-fun e!272218 () Bool)

(assert (=> b!465675 (=> (not res!278434) (not e!272218))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29315 (_ BitVec 32)) Bool)

(assert (=> b!465675 (= res!278434 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!465676 () Bool)

(assert (=> b!465676 (= e!272218 (not e!272216))))

(declare-fun res!278433 () Bool)

(assert (=> b!465676 (=> res!278433 e!272216)))

(assert (=> b!465676 (= res!278433 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!210389 () ListLongMap!7347)

(declare-fun lt!210392 () ListLongMap!7347)

(assert (=> b!465676 (= lt!210389 lt!210392)))

(declare-datatypes ((Unit!13497 0))(
  ( (Unit!13498) )
))
(declare-fun lt!210391 () Unit!13497)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!51 (array!29315 array!29317 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18157 V!18157 V!18157 V!18157 (_ BitVec 32) Int) Unit!13497)

(assert (=> b!465676 (= lt!210391 (lemmaNoChangeToArrayThenSameMapNoExtras!51 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1856 (array!29315 array!29317 (_ BitVec 32) (_ BitVec 32) V!18157 V!18157 (_ BitVec 32) Int) ListLongMap!7347)

(assert (=> b!465676 (= lt!210392 (getCurrentListMapNoExtraKeys!1856 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!465676 (= lt!210389 (getCurrentListMapNoExtraKeys!1856 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!20866 () Bool)

(assert (=> mapIsEmpty!20866 mapRes!20866))

(declare-fun res!278436 () Bool)

(assert (=> start!41730 (=> (not res!278436) (not e!272218))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41730 (= res!278436 (validMask!0 mask!1365))))

(assert (=> start!41730 e!272218))

(assert (=> start!41730 tp_is_empty!12789))

(assert (=> start!41730 tp!40087))

(assert (=> start!41730 true))

(declare-fun array_inv!10152 (array!29315) Bool)

(assert (=> start!41730 (array_inv!10152 _keys!1025)))

(declare-fun array_inv!10153 (array!29317) Bool)

(assert (=> start!41730 (and (array_inv!10153 _values!833) e!272219)))

(declare-fun b!465677 () Bool)

(declare-fun res!278437 () Bool)

(assert (=> b!465677 (=> (not res!278437) (not e!272218))))

(declare-datatypes ((List!8544 0))(
  ( (Nil!8541) (Cons!8540 (h!9396 (_ BitVec 64)) (t!14502 List!8544)) )
))
(declare-fun arrayNoDuplicates!0 (array!29315 (_ BitVec 32) List!8544) Bool)

(assert (=> b!465677 (= res!278437 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8541))))

(declare-fun b!465678 () Bool)

(declare-fun res!278435 () Bool)

(assert (=> b!465678 (=> (not res!278435) (not e!272218))))

(assert (=> b!465678 (= res!278435 (and (= (size!14437 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14436 _keys!1025) (size!14437 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and start!41730 res!278436) b!465678))

(assert (= (and b!465678 res!278435) b!465675))

(assert (= (and b!465675 res!278434) b!465677))

(assert (= (and b!465677 res!278437) b!465676))

(assert (= (and b!465676 (not res!278433)) b!465671))

(assert (= (and b!465674 condMapEmpty!20866) mapIsEmpty!20866))

(assert (= (and b!465674 (not condMapEmpty!20866)) mapNonEmpty!20866))

(get-info :version)

(assert (= (and mapNonEmpty!20866 ((_ is ValueCellFull!6051) mapValue!20866)) b!465672))

(assert (= (and b!465674 ((_ is ValueCellFull!6051) mapDefault!20866)) b!465673))

(assert (= start!41730 b!465674))

(declare-fun m!447937 () Bool)

(assert (=> b!465675 m!447937))

(declare-fun m!447939 () Bool)

(assert (=> b!465676 m!447939))

(declare-fun m!447941 () Bool)

(assert (=> b!465676 m!447941))

(declare-fun m!447943 () Bool)

(assert (=> b!465676 m!447943))

(declare-fun m!447945 () Bool)

(assert (=> b!465677 m!447945))

(declare-fun m!447947 () Bool)

(assert (=> b!465671 m!447947))

(declare-fun m!447949 () Bool)

(assert (=> b!465671 m!447949))

(assert (=> b!465671 m!447949))

(declare-fun m!447951 () Bool)

(assert (=> b!465671 m!447951))

(declare-fun m!447953 () Bool)

(assert (=> start!41730 m!447953))

(declare-fun m!447955 () Bool)

(assert (=> start!41730 m!447955))

(declare-fun m!447957 () Bool)

(assert (=> start!41730 m!447957))

(declare-fun m!447959 () Bool)

(assert (=> mapNonEmpty!20866 m!447959))

(check-sat (not b!465675) (not b!465671) (not b!465676) tp_is_empty!12789 (not b_next!11361) (not mapNonEmpty!20866) (not start!41730) (not b!465677) b_and!19735)
(check-sat b_and!19735 (not b_next!11361))
