; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41704 () Bool)

(assert start!41704)

(declare-fun b_free!11335 () Bool)

(declare-fun b_next!11335 () Bool)

(assert (=> start!41704 (= b_free!11335 (not b_next!11335))))

(declare-fun tp!40009 () Bool)

(declare-fun b_and!19709 () Bool)

(assert (=> start!41704 (= tp!40009 b_and!19709)))

(declare-fun b!465359 () Bool)

(declare-fun res!278239 () Bool)

(declare-fun e!271983 () Bool)

(assert (=> b!465359 (=> (not res!278239) (not e!271983))))

(declare-datatypes ((array!29265 0))(
  ( (array!29266 (arr!14059 (Array (_ BitVec 32) (_ BitVec 64))) (size!14411 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29265)

(declare-datatypes ((List!8524 0))(
  ( (Nil!8521) (Cons!8520 (h!9376 (_ BitVec 64)) (t!14482 List!8524)) )
))
(declare-fun arrayNoDuplicates!0 (array!29265 (_ BitVec 32) List!8524) Bool)

(assert (=> b!465359 (= res!278239 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8521))))

(declare-fun b!465361 () Bool)

(declare-fun e!271985 () Bool)

(assert (=> b!465361 (= e!271983 (not e!271985))))

(declare-fun res!278242 () Bool)

(assert (=> b!465361 (=> res!278242 e!271985)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!465361 (= res!278242 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!18123 0))(
  ( (V!18124 (val!6426 Int)) )
))
(declare-datatypes ((tuple2!8400 0))(
  ( (tuple2!8401 (_1!4210 (_ BitVec 64)) (_2!4210 V!18123)) )
))
(declare-datatypes ((List!8525 0))(
  ( (Nil!8522) (Cons!8521 (h!9377 tuple2!8400) (t!14483 List!8525)) )
))
(declare-datatypes ((ListLongMap!7327 0))(
  ( (ListLongMap!7328 (toList!3679 List!8525)) )
))
(declare-fun lt!210197 () ListLongMap!7327)

(declare-fun lt!210193 () ListLongMap!7327)

(assert (=> b!465361 (= lt!210197 lt!210193)))

(declare-fun minValueBefore!38 () V!18123)

(declare-fun zeroValue!794 () V!18123)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13479 0))(
  ( (Unit!13480) )
))
(declare-fun lt!210195 () Unit!13479)

(declare-datatypes ((ValueCell!6038 0))(
  ( (ValueCellFull!6038 (v!8709 V!18123)) (EmptyCell!6038) )
))
(declare-datatypes ((array!29267 0))(
  ( (array!29268 (arr!14060 (Array (_ BitVec 32) ValueCell!6038)) (size!14412 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29267)

(declare-fun minValueAfter!38 () V!18123)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!42 (array!29265 array!29267 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18123 V!18123 V!18123 V!18123 (_ BitVec 32) Int) Unit!13479)

(assert (=> b!465361 (= lt!210195 (lemmaNoChangeToArrayThenSameMapNoExtras!42 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1847 (array!29265 array!29267 (_ BitVec 32) (_ BitVec 32) V!18123 V!18123 (_ BitVec 32) Int) ListLongMap!7327)

(assert (=> b!465361 (= lt!210193 (getCurrentListMapNoExtraKeys!1847 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!465361 (= lt!210197 (getCurrentListMapNoExtraKeys!1847 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!465362 () Bool)

(declare-fun res!278241 () Bool)

(assert (=> b!465362 (=> (not res!278241) (not e!271983))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29265 (_ BitVec 32)) Bool)

(assert (=> b!465362 (= res!278241 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!465363 () Bool)

(declare-fun res!278238 () Bool)

(assert (=> b!465363 (=> (not res!278238) (not e!271983))))

(assert (=> b!465363 (= res!278238 (and (= (size!14412 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14411 _keys!1025) (size!14412 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!465364 () Bool)

(declare-fun e!271981 () Bool)

(declare-fun tp_is_empty!12763 () Bool)

(assert (=> b!465364 (= e!271981 tp_is_empty!12763)))

(declare-fun b!465365 () Bool)

(declare-fun e!271982 () Bool)

(assert (=> b!465365 (= e!271982 tp_is_empty!12763)))

(declare-fun mapNonEmpty!20827 () Bool)

(declare-fun mapRes!20827 () Bool)

(declare-fun tp!40008 () Bool)

(assert (=> mapNonEmpty!20827 (= mapRes!20827 (and tp!40008 e!271982))))

(declare-fun mapKey!20827 () (_ BitVec 32))

(declare-fun mapRest!20827 () (Array (_ BitVec 32) ValueCell!6038))

(declare-fun mapValue!20827 () ValueCell!6038)

(assert (=> mapNonEmpty!20827 (= (arr!14060 _values!833) (store mapRest!20827 mapKey!20827 mapValue!20827))))

(declare-fun b!465366 () Bool)

(declare-fun e!271986 () Bool)

(assert (=> b!465366 (= e!271986 (and e!271981 mapRes!20827))))

(declare-fun condMapEmpty!20827 () Bool)

(declare-fun mapDefault!20827 () ValueCell!6038)

