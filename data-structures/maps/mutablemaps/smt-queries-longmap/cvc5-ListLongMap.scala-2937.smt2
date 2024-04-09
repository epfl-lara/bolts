; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41836 () Bool)

(assert start!41836)

(declare-fun b_free!11431 () Bool)

(declare-fun b_next!11431 () Bool)

(assert (=> start!41836 (= b_free!11431 (not b_next!11431))))

(declare-fun tp!40302 () Bool)

(declare-fun b_and!19829 () Bool)

(assert (=> start!41836 (= tp!40302 b_and!19829)))

(declare-fun b!466877 () Bool)

(declare-fun e!273063 () Bool)

(assert (=> b!466877 (= e!273063 (not true))))

(declare-datatypes ((V!18251 0))(
  ( (V!18252 (val!6474 Int)) )
))
(declare-datatypes ((tuple2!8482 0))(
  ( (tuple2!8483 (_1!4251 (_ BitVec 64)) (_2!4251 V!18251)) )
))
(declare-datatypes ((List!8599 0))(
  ( (Nil!8596) (Cons!8595 (h!9451 tuple2!8482) (t!14561 List!8599)) )
))
(declare-datatypes ((ListLongMap!7409 0))(
  ( (ListLongMap!7410 (toList!3720 List!8599)) )
))
(declare-fun lt!211153 () ListLongMap!7409)

(declare-fun lt!211155 () ListLongMap!7409)

(assert (=> b!466877 (= lt!211153 lt!211155)))

(declare-fun zeroValue!794 () V!18251)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13561 0))(
  ( (Unit!13562) )
))
(declare-fun lt!211154 () Unit!13561)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueBefore!38 () V!18251)

(declare-datatypes ((array!29455 0))(
  ( (array!29456 (arr!14152 (Array (_ BitVec 32) (_ BitVec 64))) (size!14504 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29455)

(declare-datatypes ((ValueCell!6086 0))(
  ( (ValueCellFull!6086 (v!8759 V!18251)) (EmptyCell!6086) )
))
(declare-datatypes ((array!29457 0))(
  ( (array!29458 (arr!14153 (Array (_ BitVec 32) ValueCell!6086)) (size!14505 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29457)

(declare-fun minValueAfter!38 () V!18251)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!81 (array!29455 array!29457 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18251 V!18251 V!18251 V!18251 (_ BitVec 32) Int) Unit!13561)

(assert (=> b!466877 (= lt!211154 (lemmaNoChangeToArrayThenSameMapNoExtras!81 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1886 (array!29455 array!29457 (_ BitVec 32) (_ BitVec 32) V!18251 V!18251 (_ BitVec 32) Int) ListLongMap!7409)

(assert (=> b!466877 (= lt!211155 (getCurrentListMapNoExtraKeys!1886 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!466877 (= lt!211153 (getCurrentListMapNoExtraKeys!1886 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!20977 () Bool)

(declare-fun mapRes!20977 () Bool)

(declare-fun tp!40303 () Bool)

(declare-fun e!273066 () Bool)

(assert (=> mapNonEmpty!20977 (= mapRes!20977 (and tp!40303 e!273066))))

(declare-fun mapKey!20977 () (_ BitVec 32))

(declare-fun mapRest!20977 () (Array (_ BitVec 32) ValueCell!6086))

(declare-fun mapValue!20977 () ValueCell!6086)

(assert (=> mapNonEmpty!20977 (= (arr!14153 _values!833) (store mapRest!20977 mapKey!20977 mapValue!20977))))

(declare-fun res!279121 () Bool)

(assert (=> start!41836 (=> (not res!279121) (not e!273063))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41836 (= res!279121 (validMask!0 mask!1365))))

(assert (=> start!41836 e!273063))

(declare-fun tp_is_empty!12859 () Bool)

(assert (=> start!41836 tp_is_empty!12859))

(assert (=> start!41836 tp!40302))

(assert (=> start!41836 true))

(declare-fun array_inv!10200 (array!29455) Bool)

(assert (=> start!41836 (array_inv!10200 _keys!1025)))

(declare-fun e!273064 () Bool)

(declare-fun array_inv!10201 (array!29457) Bool)

(assert (=> start!41836 (and (array_inv!10201 _values!833) e!273064)))

(declare-fun b!466878 () Bool)

(assert (=> b!466878 (= e!273066 tp_is_empty!12859)))

(declare-fun mapIsEmpty!20977 () Bool)

(assert (=> mapIsEmpty!20977 mapRes!20977))

(declare-fun b!466879 () Bool)

(declare-fun e!273067 () Bool)

(assert (=> b!466879 (= e!273067 tp_is_empty!12859)))

(declare-fun b!466880 () Bool)

(declare-fun res!279120 () Bool)

(assert (=> b!466880 (=> (not res!279120) (not e!273063))))

(declare-datatypes ((List!8600 0))(
  ( (Nil!8597) (Cons!8596 (h!9452 (_ BitVec 64)) (t!14562 List!8600)) )
))
(declare-fun arrayNoDuplicates!0 (array!29455 (_ BitVec 32) List!8600) Bool)

(assert (=> b!466880 (= res!279120 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8597))))

(declare-fun b!466881 () Bool)

(declare-fun res!279122 () Bool)

(assert (=> b!466881 (=> (not res!279122) (not e!273063))))

(assert (=> b!466881 (= res!279122 (and (= (size!14505 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14504 _keys!1025) (size!14505 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!466882 () Bool)

(declare-fun res!279123 () Bool)

(assert (=> b!466882 (=> (not res!279123) (not e!273063))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29455 (_ BitVec 32)) Bool)

(assert (=> b!466882 (= res!279123 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!466883 () Bool)

(assert (=> b!466883 (= e!273064 (and e!273067 mapRes!20977))))

(declare-fun condMapEmpty!20977 () Bool)

(declare-fun mapDefault!20977 () ValueCell!6086)

