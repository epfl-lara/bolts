; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41790 () Bool)

(assert start!41790)

(declare-fun b_free!11403 () Bool)

(declare-fun b_next!11403 () Bool)

(assert (=> start!41790 (= b_free!11403 (not b_next!11403))))

(declare-fun tp!40216 () Bool)

(declare-fun b_and!19789 () Bool)

(assert (=> start!41790 (= tp!40216 b_and!19789)))

(declare-fun b!466359 () Bool)

(declare-fun res!278831 () Bool)

(declare-fun e!272703 () Bool)

(assert (=> b!466359 (=> (not res!278831) (not e!272703))))

(declare-datatypes ((array!29397 0))(
  ( (array!29398 (arr!14124 (Array (_ BitVec 32) (_ BitVec 64))) (size!14476 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29397)

(declare-datatypes ((List!8574 0))(
  ( (Nil!8571) (Cons!8570 (h!9426 (_ BitVec 64)) (t!14534 List!8574)) )
))
(declare-fun arrayNoDuplicates!0 (array!29397 (_ BitVec 32) List!8574) Bool)

(assert (=> b!466359 (= res!278831 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8571))))

(declare-fun res!278834 () Bool)

(assert (=> start!41790 (=> (not res!278834) (not e!272703))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41790 (= res!278834 (validMask!0 mask!1365))))

(assert (=> start!41790 e!272703))

(declare-fun tp_is_empty!12831 () Bool)

(assert (=> start!41790 tp_is_empty!12831))

(assert (=> start!41790 tp!40216))

(assert (=> start!41790 true))

(declare-fun array_inv!10178 (array!29397) Bool)

(assert (=> start!41790 (array_inv!10178 _keys!1025)))

(declare-datatypes ((V!18213 0))(
  ( (V!18214 (val!6460 Int)) )
))
(declare-datatypes ((ValueCell!6072 0))(
  ( (ValueCellFull!6072 (v!8744 V!18213)) (EmptyCell!6072) )
))
(declare-datatypes ((array!29399 0))(
  ( (array!29400 (arr!14125 (Array (_ BitVec 32) ValueCell!6072)) (size!14477 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29399)

(declare-fun e!272704 () Bool)

(declare-fun array_inv!10179 (array!29399) Bool)

(assert (=> start!41790 (and (array_inv!10179 _values!833) e!272704)))

(declare-fun b!466360 () Bool)

(declare-fun e!272707 () Bool)

(assert (=> b!466360 (= e!272703 (not e!272707))))

(declare-fun res!278830 () Bool)

(assert (=> b!466360 (=> res!278830 e!272707)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!466360 (= res!278830 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!8454 0))(
  ( (tuple2!8455 (_1!4237 (_ BitVec 64)) (_2!4237 V!18213)) )
))
(declare-datatypes ((List!8575 0))(
  ( (Nil!8572) (Cons!8571 (h!9427 tuple2!8454) (t!14535 List!8575)) )
))
(declare-datatypes ((ListLongMap!7381 0))(
  ( (ListLongMap!7382 (toList!3706 List!8575)) )
))
(declare-fun lt!210828 () ListLongMap!7381)

(declare-fun lt!210826 () ListLongMap!7381)

(assert (=> b!466360 (= lt!210828 lt!210826)))

(declare-fun minValueBefore!38 () V!18213)

(declare-fun zeroValue!794 () V!18213)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13531 0))(
  ( (Unit!13532) )
))
(declare-fun lt!210829 () Unit!13531)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18213)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!67 (array!29397 array!29399 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18213 V!18213 V!18213 V!18213 (_ BitVec 32) Int) Unit!13531)

(assert (=> b!466360 (= lt!210829 (lemmaNoChangeToArrayThenSameMapNoExtras!67 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1872 (array!29397 array!29399 (_ BitVec 32) (_ BitVec 32) V!18213 V!18213 (_ BitVec 32) Int) ListLongMap!7381)

(assert (=> b!466360 (= lt!210826 (getCurrentListMapNoExtraKeys!1872 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!466360 (= lt!210828 (getCurrentListMapNoExtraKeys!1872 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!20932 () Bool)

(declare-fun mapRes!20932 () Bool)

(assert (=> mapIsEmpty!20932 mapRes!20932))

(declare-fun b!466361 () Bool)

(declare-fun e!272705 () Bool)

(assert (=> b!466361 (= e!272705 tp_is_empty!12831)))

(declare-fun b!466362 () Bool)

(declare-fun res!278833 () Bool)

(assert (=> b!466362 (=> (not res!278833) (not e!272703))))

(assert (=> b!466362 (= res!278833 (and (= (size!14477 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14476 _keys!1025) (size!14477 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!466363 () Bool)

(declare-fun e!272708 () Bool)

(assert (=> b!466363 (= e!272708 tp_is_empty!12831)))

(declare-fun b!466364 () Bool)

(assert (=> b!466364 (= e!272707 true)))

(declare-fun lt!210827 () ListLongMap!7381)

(declare-fun getCurrentListMap!2145 (array!29397 array!29399 (_ BitVec 32) (_ BitVec 32) V!18213 V!18213 (_ BitVec 32) Int) ListLongMap!7381)

(assert (=> b!466364 (= lt!210827 (getCurrentListMap!2145 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!210825 () ListLongMap!7381)

(declare-fun +!1636 (ListLongMap!7381 tuple2!8454) ListLongMap!7381)

(assert (=> b!466364 (= lt!210825 (+!1636 (getCurrentListMap!2145 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8455 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun b!466365 () Bool)

(assert (=> b!466365 (= e!272704 (and e!272708 mapRes!20932))))

(declare-fun condMapEmpty!20932 () Bool)

(declare-fun mapDefault!20932 () ValueCell!6072)

(assert (=> b!466365 (= condMapEmpty!20932 (= (arr!14125 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6072)) mapDefault!20932)))))

(declare-fun b!466366 () Bool)

(declare-fun res!278832 () Bool)

(assert (=> b!466366 (=> (not res!278832) (not e!272703))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29397 (_ BitVec 32)) Bool)

(assert (=> b!466366 (= res!278832 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!20932 () Bool)

(declare-fun tp!40215 () Bool)

(assert (=> mapNonEmpty!20932 (= mapRes!20932 (and tp!40215 e!272705))))

(declare-fun mapValue!20932 () ValueCell!6072)

(declare-fun mapKey!20932 () (_ BitVec 32))

(declare-fun mapRest!20932 () (Array (_ BitVec 32) ValueCell!6072))

(assert (=> mapNonEmpty!20932 (= (arr!14125 _values!833) (store mapRest!20932 mapKey!20932 mapValue!20932))))

(assert (= (and start!41790 res!278834) b!466362))

(assert (= (and b!466362 res!278833) b!466366))

(assert (= (and b!466366 res!278832) b!466359))

(assert (= (and b!466359 res!278831) b!466360))

(assert (= (and b!466360 (not res!278830)) b!466364))

(assert (= (and b!466365 condMapEmpty!20932) mapIsEmpty!20932))

(assert (= (and b!466365 (not condMapEmpty!20932)) mapNonEmpty!20932))

(get-info :version)

(assert (= (and mapNonEmpty!20932 ((_ is ValueCellFull!6072) mapValue!20932)) b!466361))

(assert (= (and b!466365 ((_ is ValueCellFull!6072) mapDefault!20932)) b!466363))

(assert (= start!41790 b!466365))

(declare-fun m!448611 () Bool)

(assert (=> b!466366 m!448611))

(declare-fun m!448613 () Bool)

(assert (=> b!466364 m!448613))

(declare-fun m!448615 () Bool)

(assert (=> b!466364 m!448615))

(assert (=> b!466364 m!448615))

(declare-fun m!448617 () Bool)

(assert (=> b!466364 m!448617))

(declare-fun m!448619 () Bool)

(assert (=> mapNonEmpty!20932 m!448619))

(declare-fun m!448621 () Bool)

(assert (=> start!41790 m!448621))

(declare-fun m!448623 () Bool)

(assert (=> start!41790 m!448623))

(declare-fun m!448625 () Bool)

(assert (=> start!41790 m!448625))

(declare-fun m!448627 () Bool)

(assert (=> b!466359 m!448627))

(declare-fun m!448629 () Bool)

(assert (=> b!466360 m!448629))

(declare-fun m!448631 () Bool)

(assert (=> b!466360 m!448631))

(declare-fun m!448633 () Bool)

(assert (=> b!466360 m!448633))

(check-sat (not b_next!11403) b_and!19789 tp_is_empty!12831 (not b!466360) (not b!466366) (not b!466359) (not mapNonEmpty!20932) (not start!41790) (not b!466364))
(check-sat b_and!19789 (not b_next!11403))
