; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41636 () Bool)

(assert start!41636)

(declare-fun b_free!11281 () Bool)

(declare-fun b_next!11281 () Bool)

(assert (=> start!41636 (= b_free!11281 (not b_next!11281))))

(declare-fun tp!39844 () Bool)

(declare-fun b_and!19647 () Bool)

(assert (=> start!41636 (= tp!39844 b_and!19647)))

(declare-fun res!277863 () Bool)

(declare-fun e!271505 () Bool)

(assert (=> start!41636 (=> (not res!277863) (not e!271505))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41636 (= res!277863 (validMask!0 mask!1365))))

(assert (=> start!41636 e!271505))

(declare-fun tp_is_empty!12709 () Bool)

(assert (=> start!41636 tp_is_empty!12709))

(assert (=> start!41636 tp!39844))

(assert (=> start!41636 true))

(declare-datatypes ((array!29165 0))(
  ( (array!29166 (arr!14010 (Array (_ BitVec 32) (_ BitVec 64))) (size!14362 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29165)

(declare-fun array_inv!10098 (array!29165) Bool)

(assert (=> start!41636 (array_inv!10098 _keys!1025)))

(declare-datatypes ((V!18051 0))(
  ( (V!18052 (val!6399 Int)) )
))
(declare-datatypes ((ValueCell!6011 0))(
  ( (ValueCellFull!6011 (v!8682 V!18051)) (EmptyCell!6011) )
))
(declare-datatypes ((array!29167 0))(
  ( (array!29168 (arr!14011 (Array (_ BitVec 32) ValueCell!6011)) (size!14363 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29167)

(declare-fun e!271502 () Bool)

(declare-fun array_inv!10099 (array!29167) Bool)

(assert (=> start!41636 (and (array_inv!10099 _values!833) e!271502)))

(declare-fun b!464687 () Bool)

(declare-fun res!277866 () Bool)

(assert (=> b!464687 (=> (not res!277866) (not e!271505))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!464687 (= res!277866 (and (= (size!14363 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14362 _keys!1025) (size!14363 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!464688 () Bool)

(assert (=> b!464688 (= e!271505 (not true))))

(declare-datatypes ((tuple2!8362 0))(
  ( (tuple2!8363 (_1!4191 (_ BitVec 64)) (_2!4191 V!18051)) )
))
(declare-datatypes ((List!8490 0))(
  ( (Nil!8487) (Cons!8486 (h!9342 tuple2!8362) (t!14446 List!8490)) )
))
(declare-datatypes ((ListLongMap!7289 0))(
  ( (ListLongMap!7290 (toList!3660 List!8490)) )
))
(declare-fun lt!209871 () ListLongMap!7289)

(declare-fun lt!209870 () ListLongMap!7289)

(assert (=> b!464688 (= lt!209871 lt!209870)))

(declare-fun minValueBefore!38 () V!18051)

(declare-fun zeroValue!794 () V!18051)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13441 0))(
  ( (Unit!13442) )
))
(declare-fun lt!209872 () Unit!13441)

(declare-fun minValueAfter!38 () V!18051)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!23 (array!29165 array!29167 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18051 V!18051 V!18051 V!18051 (_ BitVec 32) Int) Unit!13441)

(assert (=> b!464688 (= lt!209872 (lemmaNoChangeToArrayThenSameMapNoExtras!23 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1828 (array!29165 array!29167 (_ BitVec 32) (_ BitVec 32) V!18051 V!18051 (_ BitVec 32) Int) ListLongMap!7289)

(assert (=> b!464688 (= lt!209870 (getCurrentListMapNoExtraKeys!1828 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!464688 (= lt!209871 (getCurrentListMapNoExtraKeys!1828 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!464689 () Bool)

(declare-fun res!277865 () Bool)

(assert (=> b!464689 (=> (not res!277865) (not e!271505))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29165 (_ BitVec 32)) Bool)

(assert (=> b!464689 (= res!277865 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!464690 () Bool)

(declare-fun e!271504 () Bool)

(declare-fun mapRes!20743 () Bool)

(assert (=> b!464690 (= e!271502 (and e!271504 mapRes!20743))))

(declare-fun condMapEmpty!20743 () Bool)

(declare-fun mapDefault!20743 () ValueCell!6011)

