; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41792 () Bool)

(assert start!41792)

(declare-fun b_free!11405 () Bool)

(declare-fun b_next!11405 () Bool)

(assert (=> start!41792 (= b_free!11405 (not b_next!11405))))

(declare-fun tp!40222 () Bool)

(declare-fun b_and!19791 () Bool)

(assert (=> start!41792 (= tp!40222 b_and!19791)))

(declare-fun mapNonEmpty!20935 () Bool)

(declare-fun mapRes!20935 () Bool)

(declare-fun tp!40221 () Bool)

(declare-fun e!272724 () Bool)

(assert (=> mapNonEmpty!20935 (= mapRes!20935 (and tp!40221 e!272724))))

(declare-datatypes ((V!18215 0))(
  ( (V!18216 (val!6461 Int)) )
))
(declare-datatypes ((ValueCell!6073 0))(
  ( (ValueCellFull!6073 (v!8745 V!18215)) (EmptyCell!6073) )
))
(declare-fun mapValue!20935 () ValueCell!6073)

(declare-datatypes ((array!29401 0))(
  ( (array!29402 (arr!14126 (Array (_ BitVec 32) ValueCell!6073)) (size!14478 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29401)

(declare-fun mapKey!20935 () (_ BitVec 32))

(declare-fun mapRest!20935 () (Array (_ BitVec 32) ValueCell!6073))

(assert (=> mapNonEmpty!20935 (= (arr!14126 _values!833) (store mapRest!20935 mapKey!20935 mapValue!20935))))

(declare-fun mapIsEmpty!20935 () Bool)

(assert (=> mapIsEmpty!20935 mapRes!20935))

(declare-fun b!466383 () Bool)

(declare-fun res!278846 () Bool)

(declare-fun e!272723 () Bool)

(assert (=> b!466383 (=> (not res!278846) (not e!272723))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29403 0))(
  ( (array!29404 (arr!14127 (Array (_ BitVec 32) (_ BitVec 64))) (size!14479 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29403)

(assert (=> b!466383 (= res!278846 (and (= (size!14478 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14479 _keys!1025) (size!14478 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!466385 () Bool)

(declare-fun tp_is_empty!12833 () Bool)

(assert (=> b!466385 (= e!272724 tp_is_empty!12833)))

(declare-fun b!466386 () Bool)

(declare-fun e!272722 () Bool)

(assert (=> b!466386 (= e!272723 (not e!272722))))

(declare-fun res!278847 () Bool)

(assert (=> b!466386 (=> res!278847 e!272722)))

(assert (=> b!466386 (= res!278847 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!8456 0))(
  ( (tuple2!8457 (_1!4238 (_ BitVec 64)) (_2!4238 V!18215)) )
))
(declare-datatypes ((List!8576 0))(
  ( (Nil!8573) (Cons!8572 (h!9428 tuple2!8456) (t!14536 List!8576)) )
))
(declare-datatypes ((ListLongMap!7383 0))(
  ( (ListLongMap!7384 (toList!3707 List!8576)) )
))
(declare-fun lt!210841 () ListLongMap!7383)

(declare-fun lt!210840 () ListLongMap!7383)

(assert (=> b!466386 (= lt!210841 lt!210840)))

(declare-datatypes ((Unit!13533 0))(
  ( (Unit!13534) )
))
(declare-fun lt!210842 () Unit!13533)

(declare-fun minValueBefore!38 () V!18215)

(declare-fun zeroValue!794 () V!18215)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18215)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!68 (array!29403 array!29401 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18215 V!18215 V!18215 V!18215 (_ BitVec 32) Int) Unit!13533)

(assert (=> b!466386 (= lt!210842 (lemmaNoChangeToArrayThenSameMapNoExtras!68 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1873 (array!29403 array!29401 (_ BitVec 32) (_ BitVec 32) V!18215 V!18215 (_ BitVec 32) Int) ListLongMap!7383)

(assert (=> b!466386 (= lt!210840 (getCurrentListMapNoExtraKeys!1873 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!466386 (= lt!210841 (getCurrentListMapNoExtraKeys!1873 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!466387 () Bool)

(declare-fun e!272725 () Bool)

(declare-fun e!272721 () Bool)

(assert (=> b!466387 (= e!272725 (and e!272721 mapRes!20935))))

(declare-fun condMapEmpty!20935 () Bool)

(declare-fun mapDefault!20935 () ValueCell!6073)

