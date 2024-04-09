; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41714 () Bool)

(assert start!41714)

(declare-fun b_free!11345 () Bool)

(declare-fun b_next!11345 () Bool)

(assert (=> start!41714 (= b_free!11345 (not b_next!11345))))

(declare-fun tp!40039 () Bool)

(declare-fun b_and!19719 () Bool)

(assert (=> start!41714 (= tp!40039 b_and!19719)))

(declare-fun b!465479 () Bool)

(declare-fun e!272075 () Bool)

(assert (=> b!465479 (= e!272075 true)))

(declare-datatypes ((V!18135 0))(
  ( (V!18136 (val!6431 Int)) )
))
(declare-fun zeroValue!794 () V!18135)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29283 0))(
  ( (array!29284 (arr!14068 (Array (_ BitVec 32) (_ BitVec 64))) (size!14420 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29283)

(declare-datatypes ((ValueCell!6043 0))(
  ( (ValueCellFull!6043 (v!8714 V!18135)) (EmptyCell!6043) )
))
(declare-datatypes ((array!29285 0))(
  ( (array!29286 (arr!14069 (Array (_ BitVec 32) ValueCell!6043)) (size!14421 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29285)

(declare-datatypes ((tuple2!8408 0))(
  ( (tuple2!8409 (_1!4214 (_ BitVec 64)) (_2!4214 V!18135)) )
))
(declare-datatypes ((List!8531 0))(
  ( (Nil!8528) (Cons!8527 (h!9383 tuple2!8408) (t!14489 List!8531)) )
))
(declare-datatypes ((ListLongMap!7335 0))(
  ( (ListLongMap!7336 (toList!3683 List!8531)) )
))
(declare-fun lt!210271 () ListLongMap!7335)

(declare-fun minValueAfter!38 () V!18135)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMap!2129 (array!29283 array!29285 (_ BitVec 32) (_ BitVec 32) V!18135 V!18135 (_ BitVec 32) Int) ListLongMap!7335)

(assert (=> b!465479 (= lt!210271 (getCurrentListMap!2129 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!18135)

(declare-fun lt!210268 () ListLongMap!7335)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun +!1620 (ListLongMap!7335 tuple2!8408) ListLongMap!7335)

(assert (=> b!465479 (= lt!210268 (+!1620 (getCurrentListMap!2129 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8409 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun mapIsEmpty!20842 () Bool)

(declare-fun mapRes!20842 () Bool)

(assert (=> mapIsEmpty!20842 mapRes!20842))

(declare-fun b!465480 () Bool)

(declare-fun res!278315 () Bool)

(declare-fun e!272072 () Bool)

(assert (=> b!465480 (=> (not res!278315) (not e!272072))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29283 (_ BitVec 32)) Bool)

(assert (=> b!465480 (= res!278315 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!465481 () Bool)

(declare-fun res!278314 () Bool)

(assert (=> b!465481 (=> (not res!278314) (not e!272072))))

(declare-datatypes ((List!8532 0))(
  ( (Nil!8529) (Cons!8528 (h!9384 (_ BitVec 64)) (t!14490 List!8532)) )
))
(declare-fun arrayNoDuplicates!0 (array!29283 (_ BitVec 32) List!8532) Bool)

(assert (=> b!465481 (= res!278314 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8529))))

(declare-fun res!278316 () Bool)

(assert (=> start!41714 (=> (not res!278316) (not e!272072))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41714 (= res!278316 (validMask!0 mask!1365))))

(assert (=> start!41714 e!272072))

(declare-fun tp_is_empty!12773 () Bool)

(assert (=> start!41714 tp_is_empty!12773))

(assert (=> start!41714 tp!40039))

(assert (=> start!41714 true))

(declare-fun array_inv!10142 (array!29283) Bool)

(assert (=> start!41714 (array_inv!10142 _keys!1025)))

(declare-fun e!272074 () Bool)

(declare-fun array_inv!10143 (array!29285) Bool)

(assert (=> start!41714 (and (array_inv!10143 _values!833) e!272074)))

(declare-fun b!465482 () Bool)

(declare-fun e!272073 () Bool)

(assert (=> b!465482 (= e!272073 tp_is_empty!12773)))

(declare-fun b!465483 () Bool)

(declare-fun res!278313 () Bool)

(assert (=> b!465483 (=> (not res!278313) (not e!272072))))

(assert (=> b!465483 (= res!278313 (and (= (size!14421 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14420 _keys!1025) (size!14421 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!465484 () Bool)

(declare-fun e!272076 () Bool)

(assert (=> b!465484 (= e!272076 tp_is_empty!12773)))

(declare-fun mapNonEmpty!20842 () Bool)

(declare-fun tp!40038 () Bool)

(assert (=> mapNonEmpty!20842 (= mapRes!20842 (and tp!40038 e!272076))))

(declare-fun mapKey!20842 () (_ BitVec 32))

(declare-fun mapRest!20842 () (Array (_ BitVec 32) ValueCell!6043))

(declare-fun mapValue!20842 () ValueCell!6043)

(assert (=> mapNonEmpty!20842 (= (arr!14069 _values!833) (store mapRest!20842 mapKey!20842 mapValue!20842))))

(declare-fun b!465485 () Bool)

(assert (=> b!465485 (= e!272074 (and e!272073 mapRes!20842))))

(declare-fun condMapEmpty!20842 () Bool)

(declare-fun mapDefault!20842 () ValueCell!6043)

