; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41708 () Bool)

(assert start!41708)

(declare-fun b_free!11339 () Bool)

(declare-fun b_next!11339 () Bool)

(assert (=> start!41708 (= b_free!11339 (not b_next!11339))))

(declare-fun tp!40021 () Bool)

(declare-fun b_and!19713 () Bool)

(assert (=> start!41708 (= tp!40021 b_and!19713)))

(declare-fun b!465407 () Bool)

(declare-fun res!278268 () Bool)

(declare-fun e!272022 () Bool)

(assert (=> b!465407 (=> (not res!278268) (not e!272022))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29273 0))(
  ( (array!29274 (arr!14063 (Array (_ BitVec 32) (_ BitVec 64))) (size!14415 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29273)

(declare-datatypes ((V!18127 0))(
  ( (V!18128 (val!6428 Int)) )
))
(declare-datatypes ((ValueCell!6040 0))(
  ( (ValueCellFull!6040 (v!8711 V!18127)) (EmptyCell!6040) )
))
(declare-datatypes ((array!29275 0))(
  ( (array!29276 (arr!14064 (Array (_ BitVec 32) ValueCell!6040)) (size!14416 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29275)

(assert (=> b!465407 (= res!278268 (and (= (size!14416 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14415 _keys!1025) (size!14416 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!278272 () Bool)

(assert (=> start!41708 (=> (not res!278272) (not e!272022))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41708 (= res!278272 (validMask!0 mask!1365))))

(assert (=> start!41708 e!272022))

(declare-fun tp_is_empty!12767 () Bool)

(assert (=> start!41708 tp_is_empty!12767))

(assert (=> start!41708 tp!40021))

(assert (=> start!41708 true))

(declare-fun array_inv!10138 (array!29273) Bool)

(assert (=> start!41708 (array_inv!10138 _keys!1025)))

(declare-fun e!272018 () Bool)

(declare-fun array_inv!10139 (array!29275) Bool)

(assert (=> start!41708 (and (array_inv!10139 _values!833) e!272018)))

(declare-fun mapIsEmpty!20833 () Bool)

(declare-fun mapRes!20833 () Bool)

(assert (=> mapIsEmpty!20833 mapRes!20833))

(declare-fun mapNonEmpty!20833 () Bool)

(declare-fun tp!40020 () Bool)

(declare-fun e!272020 () Bool)

(assert (=> mapNonEmpty!20833 (= mapRes!20833 (and tp!40020 e!272020))))

(declare-fun mapKey!20833 () (_ BitVec 32))

(declare-fun mapValue!20833 () ValueCell!6040)

(declare-fun mapRest!20833 () (Array (_ BitVec 32) ValueCell!6040))

(assert (=> mapNonEmpty!20833 (= (arr!14064 _values!833) (store mapRest!20833 mapKey!20833 mapValue!20833))))

(declare-fun b!465408 () Bool)

(declare-fun e!272017 () Bool)

(assert (=> b!465408 (= e!272022 (not e!272017))))

(declare-fun res!278271 () Bool)

(assert (=> b!465408 (=> res!278271 e!272017)))

(assert (=> b!465408 (= res!278271 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!8404 0))(
  ( (tuple2!8405 (_1!4212 (_ BitVec 64)) (_2!4212 V!18127)) )
))
(declare-datatypes ((List!8528 0))(
  ( (Nil!8525) (Cons!8524 (h!9380 tuple2!8404) (t!14486 List!8528)) )
))
(declare-datatypes ((ListLongMap!7331 0))(
  ( (ListLongMap!7332 (toList!3681 List!8528)) )
))
(declare-fun lt!210227 () ListLongMap!7331)

(declare-fun lt!210225 () ListLongMap!7331)

(assert (=> b!465408 (= lt!210227 lt!210225)))

(declare-fun minValueBefore!38 () V!18127)

(declare-fun zeroValue!794 () V!18127)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18127)

(declare-datatypes ((Unit!13483 0))(
  ( (Unit!13484) )
))
(declare-fun lt!210226 () Unit!13483)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!44 (array!29273 array!29275 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18127 V!18127 V!18127 V!18127 (_ BitVec 32) Int) Unit!13483)

(assert (=> b!465408 (= lt!210226 (lemmaNoChangeToArrayThenSameMapNoExtras!44 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1849 (array!29273 array!29275 (_ BitVec 32) (_ BitVec 32) V!18127 V!18127 (_ BitVec 32) Int) ListLongMap!7331)

(assert (=> b!465408 (= lt!210225 (getCurrentListMapNoExtraKeys!1849 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!465408 (= lt!210227 (getCurrentListMapNoExtraKeys!1849 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!465409 () Bool)

(assert (=> b!465409 (= e!272020 tp_is_empty!12767)))

(declare-fun b!465410 () Bool)

(assert (=> b!465410 (= e!272017 true)))

(declare-fun lt!210223 () ListLongMap!7331)

(declare-fun getCurrentListMap!2127 (array!29273 array!29275 (_ BitVec 32) (_ BitVec 32) V!18127 V!18127 (_ BitVec 32) Int) ListLongMap!7331)

(assert (=> b!465410 (= lt!210223 (getCurrentListMap!2127 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!210224 () ListLongMap!7331)

(declare-fun +!1618 (ListLongMap!7331 tuple2!8404) ListLongMap!7331)

(assert (=> b!465410 (= lt!210224 (+!1618 (getCurrentListMap!2127 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8405 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun b!465411 () Bool)

(declare-fun res!278269 () Bool)

(assert (=> b!465411 (=> (not res!278269) (not e!272022))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29273 (_ BitVec 32)) Bool)

(assert (=> b!465411 (= res!278269 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!465412 () Bool)

(declare-fun e!272021 () Bool)

(assert (=> b!465412 (= e!272018 (and e!272021 mapRes!20833))))

(declare-fun condMapEmpty!20833 () Bool)

(declare-fun mapDefault!20833 () ValueCell!6040)

