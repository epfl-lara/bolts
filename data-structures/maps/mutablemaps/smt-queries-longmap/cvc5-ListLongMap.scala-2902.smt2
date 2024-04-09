; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41562 () Bool)

(assert start!41562)

(declare-fun b_free!11221 () Bool)

(declare-fun b_next!11221 () Bool)

(assert (=> start!41562 (= b_free!11221 (not b_next!11221))))

(declare-fun tp!39660 () Bool)

(declare-fun b_and!19579 () Bool)

(assert (=> start!41562 (= tp!39660 b_and!19579)))

(declare-fun b!463972 () Bool)

(declare-fun res!277473 () Bool)

(declare-fun e!270999 () Bool)

(assert (=> b!463972 (=> (not res!277473) (not e!270999))))

(declare-datatypes ((array!29051 0))(
  ( (array!29052 (arr!13954 (Array (_ BitVec 32) (_ BitVec 64))) (size!14306 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29051)

(declare-datatypes ((List!8449 0))(
  ( (Nil!8446) (Cons!8445 (h!9301 (_ BitVec 64)) (t!14403 List!8449)) )
))
(declare-fun arrayNoDuplicates!0 (array!29051 (_ BitVec 32) List!8449) Bool)

(assert (=> b!463972 (= res!277473 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8446))))

(declare-fun mapIsEmpty!20650 () Bool)

(declare-fun mapRes!20650 () Bool)

(assert (=> mapIsEmpty!20650 mapRes!20650))

(declare-fun b!463973 () Bool)

(assert (=> b!463973 (= e!270999 (not true))))

(declare-datatypes ((V!17971 0))(
  ( (V!17972 (val!6369 Int)) )
))
(declare-datatypes ((tuple2!8322 0))(
  ( (tuple2!8323 (_1!4171 (_ BitVec 64)) (_2!4171 V!17971)) )
))
(declare-datatypes ((List!8450 0))(
  ( (Nil!8447) (Cons!8446 (h!9302 tuple2!8322) (t!14404 List!8450)) )
))
(declare-datatypes ((ListLongMap!7249 0))(
  ( (ListLongMap!7250 (toList!3640 List!8450)) )
))
(declare-fun lt!209560 () ListLongMap!7249)

(declare-fun lt!209562 () ListLongMap!7249)

(assert (=> b!463973 (= lt!209560 lt!209562)))

(declare-fun minValueBefore!38 () V!17971)

(declare-datatypes ((Unit!13401 0))(
  ( (Unit!13402) )
))
(declare-fun lt!209561 () Unit!13401)

(declare-fun zeroValue!794 () V!17971)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5981 0))(
  ( (ValueCellFull!5981 (v!8652 V!17971)) (EmptyCell!5981) )
))
(declare-datatypes ((array!29053 0))(
  ( (array!29054 (arr!13955 (Array (_ BitVec 32) ValueCell!5981)) (size!14307 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29053)

(declare-fun minValueAfter!38 () V!17971)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!3 (array!29051 array!29053 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!17971 V!17971 V!17971 V!17971 (_ BitVec 32) Int) Unit!13401)

(assert (=> b!463973 (= lt!209561 (lemmaNoChangeToArrayThenSameMapNoExtras!3 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1808 (array!29051 array!29053 (_ BitVec 32) (_ BitVec 32) V!17971 V!17971 (_ BitVec 32) Int) ListLongMap!7249)

(assert (=> b!463973 (= lt!209562 (getCurrentListMapNoExtraKeys!1808 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!463973 (= lt!209560 (getCurrentListMapNoExtraKeys!1808 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!463974 () Bool)

(declare-fun res!277475 () Bool)

(assert (=> b!463974 (=> (not res!277475) (not e!270999))))

(assert (=> b!463974 (= res!277475 (and (= (size!14307 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14306 _keys!1025) (size!14307 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!463975 () Bool)

(declare-fun res!277474 () Bool)

(assert (=> b!463975 (=> (not res!277474) (not e!270999))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29051 (_ BitVec 32)) Bool)

(assert (=> b!463975 (= res!277474 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!463976 () Bool)

(declare-fun e!270996 () Bool)

(declare-fun tp_is_empty!12649 () Bool)

(assert (=> b!463976 (= e!270996 tp_is_empty!12649)))

(declare-fun b!463977 () Bool)

(declare-fun e!271000 () Bool)

(assert (=> b!463977 (= e!271000 tp_is_empty!12649)))

(declare-fun res!277472 () Bool)

(assert (=> start!41562 (=> (not res!277472) (not e!270999))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41562 (= res!277472 (validMask!0 mask!1365))))

(assert (=> start!41562 e!270999))

(assert (=> start!41562 tp_is_empty!12649))

(assert (=> start!41562 tp!39660))

(assert (=> start!41562 true))

(declare-fun array_inv!10062 (array!29051) Bool)

(assert (=> start!41562 (array_inv!10062 _keys!1025)))

(declare-fun e!270998 () Bool)

(declare-fun array_inv!10063 (array!29053) Bool)

(assert (=> start!41562 (and (array_inv!10063 _values!833) e!270998)))

(declare-fun mapNonEmpty!20650 () Bool)

(declare-fun tp!39661 () Bool)

(assert (=> mapNonEmpty!20650 (= mapRes!20650 (and tp!39661 e!270996))))

(declare-fun mapKey!20650 () (_ BitVec 32))

(declare-fun mapValue!20650 () ValueCell!5981)

(declare-fun mapRest!20650 () (Array (_ BitVec 32) ValueCell!5981))

(assert (=> mapNonEmpty!20650 (= (arr!13955 _values!833) (store mapRest!20650 mapKey!20650 mapValue!20650))))

(declare-fun b!463978 () Bool)

(assert (=> b!463978 (= e!270998 (and e!271000 mapRes!20650))))

(declare-fun condMapEmpty!20650 () Bool)

(declare-fun mapDefault!20650 () ValueCell!5981)

