; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41812 () Bool)

(assert start!41812)

(declare-fun b_free!11425 () Bool)

(declare-fun b_next!11425 () Bool)

(assert (=> start!41812 (= b_free!11425 (not b_next!11425))))

(declare-fun tp!40281 () Bool)

(declare-fun b_and!19811 () Bool)

(assert (=> start!41812 (= tp!40281 b_and!19811)))

(declare-fun b!466625 () Bool)

(declare-fun res!278997 () Bool)

(declare-fun e!272905 () Bool)

(assert (=> b!466625 (=> (not res!278997) (not e!272905))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29441 0))(
  ( (array!29442 (arr!14146 (Array (_ BitVec 32) (_ BitVec 64))) (size!14498 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29441)

(declare-datatypes ((V!18243 0))(
  ( (V!18244 (val!6471 Int)) )
))
(declare-datatypes ((ValueCell!6083 0))(
  ( (ValueCellFull!6083 (v!8755 V!18243)) (EmptyCell!6083) )
))
(declare-datatypes ((array!29443 0))(
  ( (array!29444 (arr!14147 (Array (_ BitVec 32) ValueCell!6083)) (size!14499 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29443)

(assert (=> b!466625 (= res!278997 (and (= (size!14499 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14498 _keys!1025) (size!14499 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!466626 () Bool)

(declare-fun res!279001 () Bool)

(assert (=> b!466626 (=> (not res!279001) (not e!272905))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29441 (_ BitVec 32)) Bool)

(assert (=> b!466626 (= res!279001 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!466627 () Bool)

(declare-fun e!272906 () Bool)

(assert (=> b!466627 (= e!272905 (not e!272906))))

(declare-fun res!278999 () Bool)

(assert (=> b!466627 (=> res!278999 e!272906)))

(assert (=> b!466627 (= res!278999 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!8476 0))(
  ( (tuple2!8477 (_1!4248 (_ BitVec 64)) (_2!4248 V!18243)) )
))
(declare-datatypes ((List!8593 0))(
  ( (Nil!8590) (Cons!8589 (h!9445 tuple2!8476) (t!14553 List!8593)) )
))
(declare-datatypes ((ListLongMap!7403 0))(
  ( (ListLongMap!7404 (toList!3717 List!8593)) )
))
(declare-fun lt!210988 () ListLongMap!7403)

(declare-fun lt!210986 () ListLongMap!7403)

(assert (=> b!466627 (= lt!210988 lt!210986)))

(declare-fun minValueBefore!38 () V!18243)

(declare-fun zeroValue!794 () V!18243)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18243)

(declare-datatypes ((Unit!13553 0))(
  ( (Unit!13554) )
))
(declare-fun lt!210987 () Unit!13553)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!78 (array!29441 array!29443 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18243 V!18243 V!18243 V!18243 (_ BitVec 32) Int) Unit!13553)

(assert (=> b!466627 (= lt!210987 (lemmaNoChangeToArrayThenSameMapNoExtras!78 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1883 (array!29441 array!29443 (_ BitVec 32) (_ BitVec 32) V!18243 V!18243 (_ BitVec 32) Int) ListLongMap!7403)

(assert (=> b!466627 (= lt!210986 (getCurrentListMapNoExtraKeys!1883 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!466627 (= lt!210988 (getCurrentListMapNoExtraKeys!1883 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!466628 () Bool)

(assert (=> b!466628 (= e!272906 (bvsle #b00000000000000000000000000000000 (size!14498 _keys!1025)))))

(declare-fun b!466629 () Bool)

(declare-fun e!272904 () Bool)

(declare-fun tp_is_empty!12853 () Bool)

(assert (=> b!466629 (= e!272904 tp_is_empty!12853)))

(declare-fun res!279002 () Bool)

(assert (=> start!41812 (=> (not res!279002) (not e!272905))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41812 (= res!279002 (validMask!0 mask!1365))))

(assert (=> start!41812 e!272905))

(assert (=> start!41812 tp_is_empty!12853))

(assert (=> start!41812 tp!40281))

(assert (=> start!41812 true))

(declare-fun array_inv!10194 (array!29441) Bool)

(assert (=> start!41812 (array_inv!10194 _keys!1025)))

(declare-fun e!272903 () Bool)

(declare-fun array_inv!10195 (array!29443) Bool)

(assert (=> start!41812 (and (array_inv!10195 _values!833) e!272903)))

(declare-fun b!466630 () Bool)

(declare-fun res!279000 () Bool)

(assert (=> b!466630 (=> res!279000 e!272906)))

(declare-fun +!1645 (ListLongMap!7403 tuple2!8476) ListLongMap!7403)

(declare-fun getCurrentListMap!2154 (array!29441 array!29443 (_ BitVec 32) (_ BitVec 32) V!18243 V!18243 (_ BitVec 32) Int) ListLongMap!7403)

(assert (=> b!466630 (= res!279000 (not (= (+!1645 (getCurrentListMap!2154 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8477 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)) (getCurrentListMap!2154 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))))

(declare-fun b!466631 () Bool)

(declare-fun res!278998 () Bool)

(assert (=> b!466631 (=> (not res!278998) (not e!272905))))

(declare-datatypes ((List!8594 0))(
  ( (Nil!8591) (Cons!8590 (h!9446 (_ BitVec 64)) (t!14554 List!8594)) )
))
(declare-fun arrayNoDuplicates!0 (array!29441 (_ BitVec 32) List!8594) Bool)

(assert (=> b!466631 (= res!278998 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8591))))

(declare-fun mapNonEmpty!20965 () Bool)

(declare-fun mapRes!20965 () Bool)

(declare-fun tp!40282 () Bool)

(assert (=> mapNonEmpty!20965 (= mapRes!20965 (and tp!40282 e!272904))))

(declare-fun mapKey!20965 () (_ BitVec 32))

(declare-fun mapValue!20965 () ValueCell!6083)

(declare-fun mapRest!20965 () (Array (_ BitVec 32) ValueCell!6083))

(assert (=> mapNonEmpty!20965 (= (arr!14147 _values!833) (store mapRest!20965 mapKey!20965 mapValue!20965))))

(declare-fun mapIsEmpty!20965 () Bool)

(assert (=> mapIsEmpty!20965 mapRes!20965))

(declare-fun b!466632 () Bool)

(declare-fun e!272902 () Bool)

(assert (=> b!466632 (= e!272902 tp_is_empty!12853)))

(declare-fun b!466633 () Bool)

(assert (=> b!466633 (= e!272903 (and e!272902 mapRes!20965))))

(declare-fun condMapEmpty!20965 () Bool)

(declare-fun mapDefault!20965 () ValueCell!6083)

