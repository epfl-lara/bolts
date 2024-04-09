; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41604 () Bool)

(assert start!41604)

(declare-fun b_free!11263 () Bool)

(declare-fun b_next!11263 () Bool)

(assert (=> start!41604 (= b_free!11263 (not b_next!11263))))

(declare-fun tp!39786 () Bool)

(declare-fun b_and!19621 () Bool)

(assert (=> start!41604 (= tp!39786 b_and!19621)))

(declare-fun b!464413 () Bool)

(declare-fun e!271311 () Bool)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((array!29129 0))(
  ( (array!29130 (arr!13993 (Array (_ BitVec 32) (_ BitVec 64))) (size!14345 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29129)

(assert (=> b!464413 (= e!271311 (not (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsle #b00000000000000000000000000000000 (size!14345 _keys!1025)))))))

(declare-datatypes ((V!18027 0))(
  ( (V!18028 (val!6390 Int)) )
))
(declare-datatypes ((tuple2!8348 0))(
  ( (tuple2!8349 (_1!4184 (_ BitVec 64)) (_2!4184 V!18027)) )
))
(declare-datatypes ((List!8477 0))(
  ( (Nil!8474) (Cons!8473 (h!9329 tuple2!8348) (t!14431 List!8477)) )
))
(declare-datatypes ((ListLongMap!7275 0))(
  ( (ListLongMap!7276 (toList!3653 List!8477)) )
))
(declare-fun lt!209751 () ListLongMap!7275)

(declare-fun lt!209749 () ListLongMap!7275)

(assert (=> b!464413 (= lt!209751 lt!209749)))

(declare-fun minValueBefore!38 () V!18027)

(declare-fun zeroValue!794 () V!18027)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((ValueCell!6002 0))(
  ( (ValueCellFull!6002 (v!8673 V!18027)) (EmptyCell!6002) )
))
(declare-datatypes ((array!29131 0))(
  ( (array!29132 (arr!13994 (Array (_ BitVec 32) ValueCell!6002)) (size!14346 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29131)

(declare-datatypes ((Unit!13427 0))(
  ( (Unit!13428) )
))
(declare-fun lt!209750 () Unit!13427)

(declare-fun minValueAfter!38 () V!18027)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!16 (array!29129 array!29131 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18027 V!18027 V!18027 V!18027 (_ BitVec 32) Int) Unit!13427)

(assert (=> b!464413 (= lt!209750 (lemmaNoChangeToArrayThenSameMapNoExtras!16 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1821 (array!29129 array!29131 (_ BitVec 32) (_ BitVec 32) V!18027 V!18027 (_ BitVec 32) Int) ListLongMap!7275)

(assert (=> b!464413 (= lt!209749 (getCurrentListMapNoExtraKeys!1821 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!464413 (= lt!209751 (getCurrentListMapNoExtraKeys!1821 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!20713 () Bool)

(declare-fun mapRes!20713 () Bool)

(assert (=> mapIsEmpty!20713 mapRes!20713))

(declare-fun b!464414 () Bool)

(declare-fun res!277725 () Bool)

(assert (=> b!464414 (=> (not res!277725) (not e!271311))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29129 (_ BitVec 32)) Bool)

(assert (=> b!464414 (= res!277725 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!464415 () Bool)

(declare-fun res!277724 () Bool)

(assert (=> b!464415 (=> (not res!277724) (not e!271311))))

(assert (=> b!464415 (= res!277724 (and (= (size!14346 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14345 _keys!1025) (size!14346 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!20713 () Bool)

(declare-fun tp!39787 () Bool)

(declare-fun e!271312 () Bool)

(assert (=> mapNonEmpty!20713 (= mapRes!20713 (and tp!39787 e!271312))))

(declare-fun mapRest!20713 () (Array (_ BitVec 32) ValueCell!6002))

(declare-fun mapKey!20713 () (_ BitVec 32))

(declare-fun mapValue!20713 () ValueCell!6002)

(assert (=> mapNonEmpty!20713 (= (arr!13994 _values!833) (store mapRest!20713 mapKey!20713 mapValue!20713))))

(declare-fun b!464416 () Bool)

(declare-fun e!271314 () Bool)

(declare-fun e!271315 () Bool)

(assert (=> b!464416 (= e!271314 (and e!271315 mapRes!20713))))

(declare-fun condMapEmpty!20713 () Bool)

(declare-fun mapDefault!20713 () ValueCell!6002)

