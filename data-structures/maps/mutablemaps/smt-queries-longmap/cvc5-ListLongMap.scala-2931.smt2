; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41782 () Bool)

(assert start!41782)

(declare-fun b_free!11395 () Bool)

(declare-fun b_next!11395 () Bool)

(assert (=> start!41782 (= b_free!11395 (not b_next!11395))))

(declare-fun tp!40192 () Bool)

(declare-fun b_and!19781 () Bool)

(assert (=> start!41782 (= tp!40192 b_and!19781)))

(declare-fun b!466263 () Bool)

(declare-fun res!278771 () Bool)

(declare-fun e!272635 () Bool)

(assert (=> b!466263 (=> (not res!278771) (not e!272635))))

(declare-datatypes ((array!29383 0))(
  ( (array!29384 (arr!14117 (Array (_ BitVec 32) (_ BitVec 64))) (size!14469 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29383)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29383 (_ BitVec 32)) Bool)

(assert (=> b!466263 (= res!278771 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!20920 () Bool)

(declare-fun mapRes!20920 () Bool)

(declare-fun tp!40191 () Bool)

(declare-fun e!272632 () Bool)

(assert (=> mapNonEmpty!20920 (= mapRes!20920 (and tp!40191 e!272632))))

(declare-datatypes ((V!18203 0))(
  ( (V!18204 (val!6456 Int)) )
))
(declare-datatypes ((ValueCell!6068 0))(
  ( (ValueCellFull!6068 (v!8740 V!18203)) (EmptyCell!6068) )
))
(declare-fun mapValue!20920 () ValueCell!6068)

(declare-datatypes ((array!29385 0))(
  ( (array!29386 (arr!14118 (Array (_ BitVec 32) ValueCell!6068)) (size!14470 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29385)

(declare-fun mapRest!20920 () (Array (_ BitVec 32) ValueCell!6068))

(declare-fun mapKey!20920 () (_ BitVec 32))

(assert (=> mapNonEmpty!20920 (= (arr!14118 _values!833) (store mapRest!20920 mapKey!20920 mapValue!20920))))

(declare-fun b!466264 () Bool)

(declare-fun e!272636 () Bool)

(assert (=> b!466264 (= e!272635 (not e!272636))))

(declare-fun res!278773 () Bool)

(assert (=> b!466264 (=> res!278773 e!272636)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!466264 (= res!278773 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!8448 0))(
  ( (tuple2!8449 (_1!4234 (_ BitVec 64)) (_2!4234 V!18203)) )
))
(declare-datatypes ((List!8568 0))(
  ( (Nil!8565) (Cons!8564 (h!9420 tuple2!8448) (t!14528 List!8568)) )
))
(declare-datatypes ((ListLongMap!7375 0))(
  ( (ListLongMap!7376 (toList!3703 List!8568)) )
))
(declare-fun lt!210767 () ListLongMap!7375)

(declare-fun lt!210766 () ListLongMap!7375)

(assert (=> b!466264 (= lt!210767 lt!210766)))

(declare-fun minValueBefore!38 () V!18203)

(declare-fun zeroValue!794 () V!18203)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((Unit!13525 0))(
  ( (Unit!13526) )
))
(declare-fun lt!210768 () Unit!13525)

(declare-fun minValueAfter!38 () V!18203)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!64 (array!29383 array!29385 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18203 V!18203 V!18203 V!18203 (_ BitVec 32) Int) Unit!13525)

(assert (=> b!466264 (= lt!210768 (lemmaNoChangeToArrayThenSameMapNoExtras!64 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1869 (array!29383 array!29385 (_ BitVec 32) (_ BitVec 32) V!18203 V!18203 (_ BitVec 32) Int) ListLongMap!7375)

(assert (=> b!466264 (= lt!210766 (getCurrentListMapNoExtraKeys!1869 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!466264 (= lt!210767 (getCurrentListMapNoExtraKeys!1869 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!466265 () Bool)

(declare-fun res!278774 () Bool)

(assert (=> b!466265 (=> (not res!278774) (not e!272635))))

(declare-datatypes ((List!8569 0))(
  ( (Nil!8566) (Cons!8565 (h!9421 (_ BitVec 64)) (t!14529 List!8569)) )
))
(declare-fun arrayNoDuplicates!0 (array!29383 (_ BitVec 32) List!8569) Bool)

(assert (=> b!466265 (= res!278774 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8566))))

(declare-fun b!466266 () Bool)

(declare-fun res!278772 () Bool)

(assert (=> b!466266 (=> (not res!278772) (not e!272635))))

(assert (=> b!466266 (= res!278772 (and (= (size!14470 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14469 _keys!1025) (size!14470 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!278770 () Bool)

(assert (=> start!41782 (=> (not res!278770) (not e!272635))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41782 (= res!278770 (validMask!0 mask!1365))))

(assert (=> start!41782 e!272635))

(declare-fun tp_is_empty!12823 () Bool)

(assert (=> start!41782 tp_is_empty!12823))

(assert (=> start!41782 tp!40192))

(assert (=> start!41782 true))

(declare-fun array_inv!10172 (array!29383) Bool)

(assert (=> start!41782 (array_inv!10172 _keys!1025)))

(declare-fun e!272631 () Bool)

(declare-fun array_inv!10173 (array!29385) Bool)

(assert (=> start!41782 (and (array_inv!10173 _values!833) e!272631)))

(declare-fun b!466267 () Bool)

(declare-fun e!272634 () Bool)

(assert (=> b!466267 (= e!272631 (and e!272634 mapRes!20920))))

(declare-fun condMapEmpty!20920 () Bool)

(declare-fun mapDefault!20920 () ValueCell!6068)

