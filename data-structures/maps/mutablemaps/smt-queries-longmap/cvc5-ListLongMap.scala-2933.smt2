; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41794 () Bool)

(assert start!41794)

(declare-fun b_free!11407 () Bool)

(declare-fun b_next!11407 () Bool)

(assert (=> start!41794 (= b_free!11407 (not b_next!11407))))

(declare-fun tp!40227 () Bool)

(declare-fun b_and!19793 () Bool)

(assert (=> start!41794 (= tp!40227 b_and!19793)))

(declare-fun mapIsEmpty!20938 () Bool)

(declare-fun mapRes!20938 () Bool)

(assert (=> mapIsEmpty!20938 mapRes!20938))

(declare-fun b!466408 () Bool)

(declare-fun e!272740 () Bool)

(declare-fun e!272743 () Bool)

(assert (=> b!466408 (= e!272740 (not e!272743))))

(declare-fun res!278862 () Bool)

(assert (=> b!466408 (=> res!278862 e!272743)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!466408 (= res!278862 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!18219 0))(
  ( (V!18220 (val!6462 Int)) )
))
(declare-datatypes ((tuple2!8458 0))(
  ( (tuple2!8459 (_1!4239 (_ BitVec 64)) (_2!4239 V!18219)) )
))
(declare-datatypes ((List!8577 0))(
  ( (Nil!8574) (Cons!8573 (h!9429 tuple2!8458) (t!14537 List!8577)) )
))
(declare-datatypes ((ListLongMap!7385 0))(
  ( (ListLongMap!7386 (toList!3708 List!8577)) )
))
(declare-fun lt!210858 () ListLongMap!7385)

(declare-fun lt!210859 () ListLongMap!7385)

(assert (=> b!466408 (= lt!210858 lt!210859)))

(declare-fun minValueBefore!38 () V!18219)

(declare-fun zeroValue!794 () V!18219)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29405 0))(
  ( (array!29406 (arr!14128 (Array (_ BitVec 32) (_ BitVec 64))) (size!14480 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29405)

(declare-datatypes ((ValueCell!6074 0))(
  ( (ValueCellFull!6074 (v!8746 V!18219)) (EmptyCell!6074) )
))
(declare-datatypes ((array!29407 0))(
  ( (array!29408 (arr!14129 (Array (_ BitVec 32) ValueCell!6074)) (size!14481 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29407)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18219)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-datatypes ((Unit!13535 0))(
  ( (Unit!13536) )
))
(declare-fun lt!210857 () Unit!13535)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!69 (array!29405 array!29407 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18219 V!18219 V!18219 V!18219 (_ BitVec 32) Int) Unit!13535)

(assert (=> b!466408 (= lt!210857 (lemmaNoChangeToArrayThenSameMapNoExtras!69 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1874 (array!29405 array!29407 (_ BitVec 32) (_ BitVec 32) V!18219 V!18219 (_ BitVec 32) Int) ListLongMap!7385)

(assert (=> b!466408 (= lt!210859 (getCurrentListMapNoExtraKeys!1874 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!466408 (= lt!210858 (getCurrentListMapNoExtraKeys!1874 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!466409 () Bool)

(declare-fun e!272739 () Bool)

(declare-fun tp_is_empty!12835 () Bool)

(assert (=> b!466409 (= e!272739 tp_is_empty!12835)))

(declare-fun mapNonEmpty!20938 () Bool)

(declare-fun tp!40228 () Bool)

(assert (=> mapNonEmpty!20938 (= mapRes!20938 (and tp!40228 e!272739))))

(declare-fun mapValue!20938 () ValueCell!6074)

(declare-fun mapRest!20938 () (Array (_ BitVec 32) ValueCell!6074))

(declare-fun mapKey!20938 () (_ BitVec 32))

(assert (=> mapNonEmpty!20938 (= (arr!14129 _values!833) (store mapRest!20938 mapKey!20938 mapValue!20938))))

(declare-fun b!466410 () Bool)

(declare-fun e!272741 () Bool)

(declare-fun e!272744 () Bool)

(assert (=> b!466410 (= e!272741 (and e!272744 mapRes!20938))))

(declare-fun condMapEmpty!20938 () Bool)

(declare-fun mapDefault!20938 () ValueCell!6074)

