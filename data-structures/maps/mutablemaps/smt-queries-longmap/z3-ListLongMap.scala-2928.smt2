; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41766 () Bool)

(assert start!41766)

(declare-fun b_free!11379 () Bool)

(declare-fun b_next!11379 () Bool)

(assert (=> start!41766 (= b_free!11379 (not b_next!11379))))

(declare-fun tp!40144 () Bool)

(declare-fun b_and!19765 () Bool)

(assert (=> start!41766 (= tp!40144 b_and!19765)))

(declare-fun mapNonEmpty!20896 () Bool)

(declare-fun mapRes!20896 () Bool)

(declare-fun tp!40143 () Bool)

(declare-fun e!272487 () Bool)

(assert (=> mapNonEmpty!20896 (= mapRes!20896 (and tp!40143 e!272487))))

(declare-datatypes ((V!18181 0))(
  ( (V!18182 (val!6448 Int)) )
))
(declare-datatypes ((ValueCell!6060 0))(
  ( (ValueCellFull!6060 (v!8732 V!18181)) (EmptyCell!6060) )
))
(declare-fun mapRest!20896 () (Array (_ BitVec 32) ValueCell!6060))

(declare-datatypes ((array!29353 0))(
  ( (array!29354 (arr!14102 (Array (_ BitVec 32) ValueCell!6060)) (size!14454 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29353)

(declare-fun mapValue!20896 () ValueCell!6060)

(declare-fun mapKey!20896 () (_ BitVec 32))

(assert (=> mapNonEmpty!20896 (= (arr!14102 _values!833) (store mapRest!20896 mapKey!20896 mapValue!20896))))

(declare-fun b!466071 () Bool)

(declare-fun res!278650 () Bool)

(declare-fun e!272492 () Bool)

(assert (=> b!466071 (=> (not res!278650) (not e!272492))))

(declare-datatypes ((array!29355 0))(
  ( (array!29356 (arr!14103 (Array (_ BitVec 32) (_ BitVec 64))) (size!14455 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29355)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29355 (_ BitVec 32)) Bool)

(assert (=> b!466071 (= res!278650 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!466072 () Bool)

(declare-fun res!278652 () Bool)

(assert (=> b!466072 (=> (not res!278652) (not e!272492))))

(declare-datatypes ((List!8555 0))(
  ( (Nil!8552) (Cons!8551 (h!9407 (_ BitVec 64)) (t!14515 List!8555)) )
))
(declare-fun arrayNoDuplicates!0 (array!29355 (_ BitVec 32) List!8555) Bool)

(assert (=> b!466072 (= res!278652 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8552))))

(declare-fun b!466073 () Bool)

(declare-fun e!272491 () Bool)

(declare-fun e!272489 () Bool)

(assert (=> b!466073 (= e!272491 (and e!272489 mapRes!20896))))

(declare-fun condMapEmpty!20896 () Bool)

(declare-fun mapDefault!20896 () ValueCell!6060)

(assert (=> b!466073 (= condMapEmpty!20896 (= (arr!14102 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6060)) mapDefault!20896)))))

(declare-fun res!278654 () Bool)

(assert (=> start!41766 (=> (not res!278654) (not e!272492))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41766 (= res!278654 (validMask!0 mask!1365))))

(assert (=> start!41766 e!272492))

(declare-fun tp_is_empty!12807 () Bool)

(assert (=> start!41766 tp_is_empty!12807))

(assert (=> start!41766 tp!40144))

(assert (=> start!41766 true))

(declare-fun array_inv!10162 (array!29355) Bool)

(assert (=> start!41766 (array_inv!10162 _keys!1025)))

(declare-fun array_inv!10163 (array!29353) Bool)

(assert (=> start!41766 (and (array_inv!10163 _values!833) e!272491)))

(declare-fun mapIsEmpty!20896 () Bool)

(assert (=> mapIsEmpty!20896 mapRes!20896))

(declare-fun b!466074 () Bool)

(declare-fun e!272490 () Bool)

(assert (=> b!466074 (= e!272490 true)))

(declare-fun zeroValue!794 () V!18181)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((tuple2!8436 0))(
  ( (tuple2!8437 (_1!4228 (_ BitVec 64)) (_2!4228 V!18181)) )
))
(declare-datatypes ((List!8556 0))(
  ( (Nil!8553) (Cons!8552 (h!9408 tuple2!8436) (t!14516 List!8556)) )
))
(declare-datatypes ((ListLongMap!7363 0))(
  ( (ListLongMap!7364 (toList!3697 List!8556)) )
))
(declare-fun lt!210647 () ListLongMap!7363)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18181)

(declare-fun getCurrentListMap!2138 (array!29355 array!29353 (_ BitVec 32) (_ BitVec 32) V!18181 V!18181 (_ BitVec 32) Int) ListLongMap!7363)

(assert (=> b!466074 (= lt!210647 (getCurrentListMap!2138 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!18181)

(declare-fun lt!210648 () ListLongMap!7363)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun +!1629 (ListLongMap!7363 tuple2!8436) ListLongMap!7363)

(assert (=> b!466074 (= lt!210648 (+!1629 (getCurrentListMap!2138 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8437 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun b!466075 () Bool)

(declare-fun res!278653 () Bool)

(assert (=> b!466075 (=> (not res!278653) (not e!272492))))

(assert (=> b!466075 (= res!278653 (and (= (size!14454 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14455 _keys!1025) (size!14454 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!466076 () Bool)

(assert (=> b!466076 (= e!272487 tp_is_empty!12807)))

(declare-fun b!466077 () Bool)

(assert (=> b!466077 (= e!272492 (not e!272490))))

(declare-fun res!278651 () Bool)

(assert (=> b!466077 (=> res!278651 e!272490)))

(assert (=> b!466077 (= res!278651 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!210645 () ListLongMap!7363)

(declare-fun lt!210649 () ListLongMap!7363)

(assert (=> b!466077 (= lt!210645 lt!210649)))

(declare-datatypes ((Unit!13513 0))(
  ( (Unit!13514) )
))
(declare-fun lt!210646 () Unit!13513)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!58 (array!29355 array!29353 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18181 V!18181 V!18181 V!18181 (_ BitVec 32) Int) Unit!13513)

(assert (=> b!466077 (= lt!210646 (lemmaNoChangeToArrayThenSameMapNoExtras!58 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1863 (array!29355 array!29353 (_ BitVec 32) (_ BitVec 32) V!18181 V!18181 (_ BitVec 32) Int) ListLongMap!7363)

(assert (=> b!466077 (= lt!210649 (getCurrentListMapNoExtraKeys!1863 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!466077 (= lt!210645 (getCurrentListMapNoExtraKeys!1863 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!466078 () Bool)

(assert (=> b!466078 (= e!272489 tp_is_empty!12807)))

(assert (= (and start!41766 res!278654) b!466075))

(assert (= (and b!466075 res!278653) b!466071))

(assert (= (and b!466071 res!278650) b!466072))

(assert (= (and b!466072 res!278652) b!466077))

(assert (= (and b!466077 (not res!278651)) b!466074))

(assert (= (and b!466073 condMapEmpty!20896) mapIsEmpty!20896))

(assert (= (and b!466073 (not condMapEmpty!20896)) mapNonEmpty!20896))

(get-info :version)

(assert (= (and mapNonEmpty!20896 ((_ is ValueCellFull!6060) mapValue!20896)) b!466076))

(assert (= (and b!466073 ((_ is ValueCellFull!6060) mapDefault!20896)) b!466078))

(assert (= start!41766 b!466073))

(declare-fun m!448323 () Bool)

(assert (=> b!466072 m!448323))

(declare-fun m!448325 () Bool)

(assert (=> b!466071 m!448325))

(declare-fun m!448327 () Bool)

(assert (=> mapNonEmpty!20896 m!448327))

(declare-fun m!448329 () Bool)

(assert (=> b!466074 m!448329))

(declare-fun m!448331 () Bool)

(assert (=> b!466074 m!448331))

(assert (=> b!466074 m!448331))

(declare-fun m!448333 () Bool)

(assert (=> b!466074 m!448333))

(declare-fun m!448335 () Bool)

(assert (=> b!466077 m!448335))

(declare-fun m!448337 () Bool)

(assert (=> b!466077 m!448337))

(declare-fun m!448339 () Bool)

(assert (=> b!466077 m!448339))

(declare-fun m!448341 () Bool)

(assert (=> start!41766 m!448341))

(declare-fun m!448343 () Bool)

(assert (=> start!41766 m!448343))

(declare-fun m!448345 () Bool)

(assert (=> start!41766 m!448345))

(check-sat (not b!466072) (not start!41766) (not b!466077) (not b!466071) b_and!19765 tp_is_empty!12807 (not b!466074) (not b_next!11379) (not mapNonEmpty!20896))
(check-sat b_and!19765 (not b_next!11379))
