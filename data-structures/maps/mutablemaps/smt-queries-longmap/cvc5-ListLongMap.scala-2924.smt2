; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41722 () Bool)

(assert start!41722)

(declare-fun b_free!11353 () Bool)

(declare-fun b_next!11353 () Bool)

(assert (=> start!41722 (= b_free!11353 (not b_next!11353))))

(declare-fun tp!40062 () Bool)

(declare-fun b_and!19727 () Bool)

(assert (=> start!41722 (= tp!40062 b_and!19727)))

(declare-fun b!465575 () Bool)

(declare-fun res!278373 () Bool)

(declare-fun e!272146 () Bool)

(assert (=> b!465575 (=> (not res!278373) (not e!272146))))

(declare-datatypes ((array!29299 0))(
  ( (array!29300 (arr!14076 (Array (_ BitVec 32) (_ BitVec 64))) (size!14428 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29299)

(declare-datatypes ((List!8538 0))(
  ( (Nil!8535) (Cons!8534 (h!9390 (_ BitVec 64)) (t!14496 List!8538)) )
))
(declare-fun arrayNoDuplicates!0 (array!29299 (_ BitVec 32) List!8538) Bool)

(assert (=> b!465575 (= res!278373 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8535))))

(declare-fun mapIsEmpty!20854 () Bool)

(declare-fun mapRes!20854 () Bool)

(assert (=> mapIsEmpty!20854 mapRes!20854))

(declare-fun b!465576 () Bool)

(declare-fun e!272148 () Bool)

(declare-fun tp_is_empty!12781 () Bool)

(assert (=> b!465576 (= e!272148 tp_is_empty!12781)))

(declare-fun b!465577 () Bool)

(declare-fun e!272143 () Bool)

(assert (=> b!465577 (= e!272143 tp_is_empty!12781)))

(declare-fun b!465578 () Bool)

(declare-fun e!272147 () Bool)

(assert (=> b!465578 (= e!272146 (not e!272147))))

(declare-fun res!278376 () Bool)

(assert (=> b!465578 (=> res!278376 e!272147)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!465578 (= res!278376 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!18147 0))(
  ( (V!18148 (val!6435 Int)) )
))
(declare-datatypes ((tuple2!8414 0))(
  ( (tuple2!8415 (_1!4217 (_ BitVec 64)) (_2!4217 V!18147)) )
))
(declare-datatypes ((List!8539 0))(
  ( (Nil!8536) (Cons!8535 (h!9391 tuple2!8414) (t!14497 List!8539)) )
))
(declare-datatypes ((ListLongMap!7341 0))(
  ( (ListLongMap!7342 (toList!3686 List!8539)) )
))
(declare-fun lt!210330 () ListLongMap!7341)

(declare-fun lt!210328 () ListLongMap!7341)

(assert (=> b!465578 (= lt!210330 lt!210328)))

(declare-fun zeroValue!794 () V!18147)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueBefore!38 () V!18147)

(declare-datatypes ((ValueCell!6047 0))(
  ( (ValueCellFull!6047 (v!8718 V!18147)) (EmptyCell!6047) )
))
(declare-datatypes ((array!29301 0))(
  ( (array!29302 (arr!14077 (Array (_ BitVec 32) ValueCell!6047)) (size!14429 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29301)

(declare-fun minValueAfter!38 () V!18147)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((Unit!13491 0))(
  ( (Unit!13492) )
))
(declare-fun lt!210329 () Unit!13491)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!48 (array!29299 array!29301 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18147 V!18147 V!18147 V!18147 (_ BitVec 32) Int) Unit!13491)

(assert (=> b!465578 (= lt!210329 (lemmaNoChangeToArrayThenSameMapNoExtras!48 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1853 (array!29299 array!29301 (_ BitVec 32) (_ BitVec 32) V!18147 V!18147 (_ BitVec 32) Int) ListLongMap!7341)

(assert (=> b!465578 (= lt!210328 (getCurrentListMapNoExtraKeys!1853 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!465578 (= lt!210330 (getCurrentListMapNoExtraKeys!1853 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!465579 () Bool)

(declare-fun res!278375 () Bool)

(assert (=> b!465579 (=> (not res!278375) (not e!272146))))

(assert (=> b!465579 (= res!278375 (and (= (size!14429 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14428 _keys!1025) (size!14429 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!20854 () Bool)

(declare-fun tp!40063 () Bool)

(assert (=> mapNonEmpty!20854 (= mapRes!20854 (and tp!40063 e!272148))))

(declare-fun mapKey!20854 () (_ BitVec 32))

(declare-fun mapRest!20854 () (Array (_ BitVec 32) ValueCell!6047))

(declare-fun mapValue!20854 () ValueCell!6047)

(assert (=> mapNonEmpty!20854 (= (arr!14077 _values!833) (store mapRest!20854 mapKey!20854 mapValue!20854))))

(declare-fun b!465580 () Bool)

(declare-fun e!272145 () Bool)

(assert (=> b!465580 (= e!272145 (and e!272143 mapRes!20854))))

(declare-fun condMapEmpty!20854 () Bool)

(declare-fun mapDefault!20854 () ValueCell!6047)

