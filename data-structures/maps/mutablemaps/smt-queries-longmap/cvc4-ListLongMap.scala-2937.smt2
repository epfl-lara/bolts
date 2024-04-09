; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41840 () Bool)

(assert start!41840)

(declare-fun b_free!11435 () Bool)

(declare-fun b_next!11435 () Bool)

(assert (=> start!41840 (= b_free!11435 (not b_next!11435))))

(declare-fun tp!40314 () Bool)

(declare-fun b_and!19833 () Bool)

(assert (=> start!41840 (= tp!40314 b_and!19833)))

(declare-fun mapIsEmpty!20983 () Bool)

(declare-fun mapRes!20983 () Bool)

(assert (=> mapIsEmpty!20983 mapRes!20983))

(declare-fun b!466919 () Bool)

(declare-fun e!273097 () Bool)

(declare-fun tp_is_empty!12863 () Bool)

(assert (=> b!466919 (= e!273097 tp_is_empty!12863)))

(declare-fun b!466920 () Bool)

(declare-fun e!273094 () Bool)

(assert (=> b!466920 (= e!273094 (not true))))

(declare-datatypes ((V!18255 0))(
  ( (V!18256 (val!6476 Int)) )
))
(declare-datatypes ((tuple2!8486 0))(
  ( (tuple2!8487 (_1!4253 (_ BitVec 64)) (_2!4253 V!18255)) )
))
(declare-datatypes ((List!8603 0))(
  ( (Nil!8600) (Cons!8599 (h!9455 tuple2!8486) (t!14565 List!8603)) )
))
(declare-datatypes ((ListLongMap!7413 0))(
  ( (ListLongMap!7414 (toList!3722 List!8603)) )
))
(declare-fun lt!211173 () ListLongMap!7413)

(declare-fun lt!211171 () ListLongMap!7413)

(assert (=> b!466920 (= lt!211173 lt!211171)))

(declare-fun minValueBefore!38 () V!18255)

(declare-datatypes ((Unit!13565 0))(
  ( (Unit!13566) )
))
(declare-fun lt!211172 () Unit!13565)

(declare-fun zeroValue!794 () V!18255)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29463 0))(
  ( (array!29464 (arr!14156 (Array (_ BitVec 32) (_ BitVec 64))) (size!14508 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29463)

(declare-datatypes ((ValueCell!6088 0))(
  ( (ValueCellFull!6088 (v!8761 V!18255)) (EmptyCell!6088) )
))
(declare-datatypes ((array!29465 0))(
  ( (array!29466 (arr!14157 (Array (_ BitVec 32) ValueCell!6088)) (size!14509 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29465)

(declare-fun minValueAfter!38 () V!18255)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!83 (array!29463 array!29465 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18255 V!18255 V!18255 V!18255 (_ BitVec 32) Int) Unit!13565)

(assert (=> b!466920 (= lt!211172 (lemmaNoChangeToArrayThenSameMapNoExtras!83 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1888 (array!29463 array!29465 (_ BitVec 32) (_ BitVec 32) V!18255 V!18255 (_ BitVec 32) Int) ListLongMap!7413)

(assert (=> b!466920 (= lt!211171 (getCurrentListMapNoExtraKeys!1888 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!466920 (= lt!211173 (getCurrentListMapNoExtraKeys!1888 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!466921 () Bool)

(declare-fun res!279145 () Bool)

(assert (=> b!466921 (=> (not res!279145) (not e!273094))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29463 (_ BitVec 32)) Bool)

(assert (=> b!466921 (= res!279145 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!20983 () Bool)

(declare-fun tp!40315 () Bool)

(declare-fun e!273095 () Bool)

(assert (=> mapNonEmpty!20983 (= mapRes!20983 (and tp!40315 e!273095))))

(declare-fun mapRest!20983 () (Array (_ BitVec 32) ValueCell!6088))

(declare-fun mapKey!20983 () (_ BitVec 32))

(declare-fun mapValue!20983 () ValueCell!6088)

(assert (=> mapNonEmpty!20983 (= (arr!14157 _values!833) (store mapRest!20983 mapKey!20983 mapValue!20983))))

(declare-fun b!466922 () Bool)

(declare-fun res!279144 () Bool)

(assert (=> b!466922 (=> (not res!279144) (not e!273094))))

(assert (=> b!466922 (= res!279144 (and (= (size!14509 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14508 _keys!1025) (size!14509 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!279146 () Bool)

(assert (=> start!41840 (=> (not res!279146) (not e!273094))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41840 (= res!279146 (validMask!0 mask!1365))))

(assert (=> start!41840 e!273094))

(assert (=> start!41840 tp_is_empty!12863))

(assert (=> start!41840 tp!40314))

(assert (=> start!41840 true))

(declare-fun array_inv!10204 (array!29463) Bool)

(assert (=> start!41840 (array_inv!10204 _keys!1025)))

(declare-fun e!273096 () Bool)

(declare-fun array_inv!10205 (array!29465) Bool)

(assert (=> start!41840 (and (array_inv!10205 _values!833) e!273096)))

(declare-fun b!466923 () Bool)

(declare-fun res!279147 () Bool)

(assert (=> b!466923 (=> (not res!279147) (not e!273094))))

(declare-datatypes ((List!8604 0))(
  ( (Nil!8601) (Cons!8600 (h!9456 (_ BitVec 64)) (t!14566 List!8604)) )
))
(declare-fun arrayNoDuplicates!0 (array!29463 (_ BitVec 32) List!8604) Bool)

(assert (=> b!466923 (= res!279147 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8601))))

(declare-fun b!466924 () Bool)

(assert (=> b!466924 (= e!273096 (and e!273097 mapRes!20983))))

(declare-fun condMapEmpty!20983 () Bool)

(declare-fun mapDefault!20983 () ValueCell!6088)

