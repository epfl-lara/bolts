; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41692 () Bool)

(assert start!41692)

(declare-fun b_free!11323 () Bool)

(declare-fun b_next!11323 () Bool)

(assert (=> start!41692 (= b_free!11323 (not b_next!11323))))

(declare-fun tp!39972 () Bool)

(declare-fun b_and!19697 () Bool)

(assert (=> start!41692 (= tp!39972 b_and!19697)))

(declare-fun b!465215 () Bool)

(declare-fun e!271877 () Bool)

(declare-fun e!271878 () Bool)

(assert (=> b!465215 (= e!271877 (not e!271878))))

(declare-fun res!278150 () Bool)

(assert (=> b!465215 (=> res!278150 e!271878)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!465215 (= res!278150 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!18107 0))(
  ( (V!18108 (val!6420 Int)) )
))
(declare-datatypes ((tuple2!8394 0))(
  ( (tuple2!8395 (_1!4207 (_ BitVec 64)) (_2!4207 V!18107)) )
))
(declare-datatypes ((List!8518 0))(
  ( (Nil!8515) (Cons!8514 (h!9370 tuple2!8394) (t!14476 List!8518)) )
))
(declare-datatypes ((ListLongMap!7321 0))(
  ( (ListLongMap!7322 (toList!3676 List!8518)) )
))
(declare-fun lt!210106 () ListLongMap!7321)

(declare-fun lt!210105 () ListLongMap!7321)

(assert (=> b!465215 (= lt!210106 lt!210105)))

(declare-fun minValueBefore!38 () V!18107)

(declare-fun zeroValue!794 () V!18107)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13473 0))(
  ( (Unit!13474) )
))
(declare-fun lt!210104 () Unit!13473)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29243 0))(
  ( (array!29244 (arr!14048 (Array (_ BitVec 32) (_ BitVec 64))) (size!14400 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29243)

(declare-datatypes ((ValueCell!6032 0))(
  ( (ValueCellFull!6032 (v!8703 V!18107)) (EmptyCell!6032) )
))
(declare-datatypes ((array!29245 0))(
  ( (array!29246 (arr!14049 (Array (_ BitVec 32) ValueCell!6032)) (size!14401 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29245)

(declare-fun minValueAfter!38 () V!18107)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!39 (array!29243 array!29245 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18107 V!18107 V!18107 V!18107 (_ BitVec 32) Int) Unit!13473)

(assert (=> b!465215 (= lt!210104 (lemmaNoChangeToArrayThenSameMapNoExtras!39 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1844 (array!29243 array!29245 (_ BitVec 32) (_ BitVec 32) V!18107 V!18107 (_ BitVec 32) Int) ListLongMap!7321)

(assert (=> b!465215 (= lt!210105 (getCurrentListMapNoExtraKeys!1844 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!465215 (= lt!210106 (getCurrentListMapNoExtraKeys!1844 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!465216 () Bool)

(declare-fun res!278151 () Bool)

(assert (=> b!465216 (=> (not res!278151) (not e!271877))))

(declare-datatypes ((List!8519 0))(
  ( (Nil!8516) (Cons!8515 (h!9371 (_ BitVec 64)) (t!14477 List!8519)) )
))
(declare-fun arrayNoDuplicates!0 (array!29243 (_ BitVec 32) List!8519) Bool)

(assert (=> b!465216 (= res!278151 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8516))))

(declare-fun res!278149 () Bool)

(assert (=> start!41692 (=> (not res!278149) (not e!271877))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41692 (= res!278149 (validMask!0 mask!1365))))

(assert (=> start!41692 e!271877))

(declare-fun tp_is_empty!12751 () Bool)

(assert (=> start!41692 tp_is_empty!12751))

(assert (=> start!41692 tp!39972))

(assert (=> start!41692 true))

(declare-fun array_inv!10130 (array!29243) Bool)

(assert (=> start!41692 (array_inv!10130 _keys!1025)))

(declare-fun e!271873 () Bool)

(declare-fun array_inv!10131 (array!29245) Bool)

(assert (=> start!41692 (and (array_inv!10131 _values!833) e!271873)))

(declare-fun b!465217 () Bool)

(declare-fun e!271876 () Bool)

(assert (=> b!465217 (= e!271876 tp_is_empty!12751)))

(declare-fun b!465218 () Bool)

(assert (=> b!465218 (= e!271878 true)))

(declare-fun lt!210107 () ListLongMap!7321)

(declare-fun getCurrentListMap!2123 (array!29243 array!29245 (_ BitVec 32) (_ BitVec 32) V!18107 V!18107 (_ BitVec 32) Int) ListLongMap!7321)

(assert (=> b!465218 (= lt!210107 (getCurrentListMap!2123 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!210103 () ListLongMap!7321)

(declare-fun +!1614 (ListLongMap!7321 tuple2!8394) ListLongMap!7321)

(assert (=> b!465218 (= lt!210103 (+!1614 (getCurrentListMap!2123 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8395 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun b!465219 () Bool)

(declare-fun res!278152 () Bool)

(assert (=> b!465219 (=> (not res!278152) (not e!271877))))

(assert (=> b!465219 (= res!278152 (and (= (size!14401 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14400 _keys!1025) (size!14401 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!465220 () Bool)

(declare-fun e!271874 () Bool)

(declare-fun mapRes!20809 () Bool)

(assert (=> b!465220 (= e!271873 (and e!271874 mapRes!20809))))

(declare-fun condMapEmpty!20809 () Bool)

(declare-fun mapDefault!20809 () ValueCell!6032)

