; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41788 () Bool)

(assert start!41788)

(declare-fun b_free!11401 () Bool)

(declare-fun b_next!11401 () Bool)

(assert (=> start!41788 (= b_free!11401 (not b_next!11401))))

(declare-fun tp!40209 () Bool)

(declare-fun b_and!19787 () Bool)

(assert (=> start!41788 (= tp!40209 b_and!19787)))

(declare-fun b!466335 () Bool)

(declare-fun res!278816 () Bool)

(declare-fun e!272688 () Bool)

(assert (=> b!466335 (=> (not res!278816) (not e!272688))))

(declare-datatypes ((array!29393 0))(
  ( (array!29394 (arr!14122 (Array (_ BitVec 32) (_ BitVec 64))) (size!14474 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29393)

(declare-datatypes ((List!8572 0))(
  ( (Nil!8569) (Cons!8568 (h!9424 (_ BitVec 64)) (t!14532 List!8572)) )
))
(declare-fun arrayNoDuplicates!0 (array!29393 (_ BitVec 32) List!8572) Bool)

(assert (=> b!466335 (= res!278816 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8569))))

(declare-fun res!278819 () Bool)

(assert (=> start!41788 (=> (not res!278819) (not e!272688))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41788 (= res!278819 (validMask!0 mask!1365))))

(assert (=> start!41788 e!272688))

(declare-fun tp_is_empty!12829 () Bool)

(assert (=> start!41788 tp_is_empty!12829))

(assert (=> start!41788 tp!40209))

(assert (=> start!41788 true))

(declare-fun array_inv!10176 (array!29393) Bool)

(assert (=> start!41788 (array_inv!10176 _keys!1025)))

(declare-datatypes ((V!18211 0))(
  ( (V!18212 (val!6459 Int)) )
))
(declare-datatypes ((ValueCell!6071 0))(
  ( (ValueCellFull!6071 (v!8743 V!18211)) (EmptyCell!6071) )
))
(declare-datatypes ((array!29395 0))(
  ( (array!29396 (arr!14123 (Array (_ BitVec 32) ValueCell!6071)) (size!14475 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29395)

(declare-fun e!272690 () Bool)

(declare-fun array_inv!10177 (array!29395) Bool)

(assert (=> start!41788 (and (array_inv!10177 _values!833) e!272690)))

(declare-fun b!466336 () Bool)

(declare-fun e!272685 () Bool)

(assert (=> b!466336 (= e!272685 tp_is_empty!12829)))

(declare-fun b!466337 () Bool)

(declare-fun e!272686 () Bool)

(assert (=> b!466337 (= e!272688 (not e!272686))))

(declare-fun res!278818 () Bool)

(assert (=> b!466337 (=> res!278818 e!272686)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!466337 (= res!278818 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!8452 0))(
  ( (tuple2!8453 (_1!4236 (_ BitVec 64)) (_2!4236 V!18211)) )
))
(declare-datatypes ((List!8573 0))(
  ( (Nil!8570) (Cons!8569 (h!9425 tuple2!8452) (t!14533 List!8573)) )
))
(declare-datatypes ((ListLongMap!7379 0))(
  ( (ListLongMap!7380 (toList!3705 List!8573)) )
))
(declare-fun lt!210810 () ListLongMap!7379)

(declare-fun lt!210811 () ListLongMap!7379)

(assert (=> b!466337 (= lt!210810 lt!210811)))

(declare-fun minValueBefore!38 () V!18211)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun zeroValue!794 () V!18211)

(declare-datatypes ((Unit!13529 0))(
  ( (Unit!13530) )
))
(declare-fun lt!210814 () Unit!13529)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18211)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!66 (array!29393 array!29395 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18211 V!18211 V!18211 V!18211 (_ BitVec 32) Int) Unit!13529)

(assert (=> b!466337 (= lt!210814 (lemmaNoChangeToArrayThenSameMapNoExtras!66 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1871 (array!29393 array!29395 (_ BitVec 32) (_ BitVec 32) V!18211 V!18211 (_ BitVec 32) Int) ListLongMap!7379)

(assert (=> b!466337 (= lt!210811 (getCurrentListMapNoExtraKeys!1871 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!466337 (= lt!210810 (getCurrentListMapNoExtraKeys!1871 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!20929 () Bool)

(declare-fun mapRes!20929 () Bool)

(assert (=> mapIsEmpty!20929 mapRes!20929))

(declare-fun mapNonEmpty!20929 () Bool)

(declare-fun tp!40210 () Bool)

(declare-fun e!272689 () Bool)

(assert (=> mapNonEmpty!20929 (= mapRes!20929 (and tp!40210 e!272689))))

(declare-fun mapKey!20929 () (_ BitVec 32))

(declare-fun mapRest!20929 () (Array (_ BitVec 32) ValueCell!6071))

(declare-fun mapValue!20929 () ValueCell!6071)

(assert (=> mapNonEmpty!20929 (= (arr!14123 _values!833) (store mapRest!20929 mapKey!20929 mapValue!20929))))

(declare-fun b!466338 () Bool)

(declare-fun res!278815 () Bool)

(assert (=> b!466338 (=> (not res!278815) (not e!272688))))

(assert (=> b!466338 (= res!278815 (and (= (size!14475 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14474 _keys!1025) (size!14475 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!466339 () Bool)

(declare-fun res!278817 () Bool)

(assert (=> b!466339 (=> (not res!278817) (not e!272688))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29393 (_ BitVec 32)) Bool)

(assert (=> b!466339 (= res!278817 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!466340 () Bool)

(assert (=> b!466340 (= e!272686 true)))

(declare-fun lt!210812 () ListLongMap!7379)

(declare-fun getCurrentListMap!2144 (array!29393 array!29395 (_ BitVec 32) (_ BitVec 32) V!18211 V!18211 (_ BitVec 32) Int) ListLongMap!7379)

(assert (=> b!466340 (= lt!210812 (getCurrentListMap!2144 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!210813 () ListLongMap!7379)

(declare-fun +!1635 (ListLongMap!7379 tuple2!8452) ListLongMap!7379)

(assert (=> b!466340 (= lt!210813 (+!1635 (getCurrentListMap!2144 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8453 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun b!466341 () Bool)

(assert (=> b!466341 (= e!272690 (and e!272685 mapRes!20929))))

(declare-fun condMapEmpty!20929 () Bool)

(declare-fun mapDefault!20929 () ValueCell!6071)

