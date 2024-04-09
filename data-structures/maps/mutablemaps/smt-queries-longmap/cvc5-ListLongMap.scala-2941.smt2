; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41860 () Bool)

(assert start!41860)

(declare-fun b_free!11455 () Bool)

(declare-fun b_next!11455 () Bool)

(assert (=> start!41860 (= b_free!11455 (not b_next!11455))))

(declare-fun tp!40375 () Bool)

(declare-fun b_and!19853 () Bool)

(assert (=> start!41860 (= tp!40375 b_and!19853)))

(declare-fun b!467129 () Bool)

(declare-fun e!273243 () Bool)

(assert (=> b!467129 (= e!273243 (not true))))

(declare-datatypes ((V!18283 0))(
  ( (V!18284 (val!6486 Int)) )
))
(declare-datatypes ((tuple2!8502 0))(
  ( (tuple2!8503 (_1!4261 (_ BitVec 64)) (_2!4261 V!18283)) )
))
(declare-datatypes ((List!8617 0))(
  ( (Nil!8614) (Cons!8613 (h!9469 tuple2!8502) (t!14579 List!8617)) )
))
(declare-datatypes ((ListLongMap!7429 0))(
  ( (ListLongMap!7430 (toList!3730 List!8617)) )
))
(declare-fun lt!211263 () ListLongMap!7429)

(declare-fun lt!211261 () ListLongMap!7429)

(assert (=> b!467129 (= lt!211263 lt!211261)))

(declare-fun minValueBefore!38 () V!18283)

(declare-fun zeroValue!794 () V!18283)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13581 0))(
  ( (Unit!13582) )
))
(declare-fun lt!211262 () Unit!13581)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29501 0))(
  ( (array!29502 (arr!14175 (Array (_ BitVec 32) (_ BitVec 64))) (size!14527 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29501)

(declare-datatypes ((ValueCell!6098 0))(
  ( (ValueCellFull!6098 (v!8771 V!18283)) (EmptyCell!6098) )
))
(declare-datatypes ((array!29503 0))(
  ( (array!29504 (arr!14176 (Array (_ BitVec 32) ValueCell!6098)) (size!14528 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29503)

(declare-fun minValueAfter!38 () V!18283)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!91 (array!29501 array!29503 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18283 V!18283 V!18283 V!18283 (_ BitVec 32) Int) Unit!13581)

(assert (=> b!467129 (= lt!211262 (lemmaNoChangeToArrayThenSameMapNoExtras!91 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1896 (array!29501 array!29503 (_ BitVec 32) (_ BitVec 32) V!18283 V!18283 (_ BitVec 32) Int) ListLongMap!7429)

(assert (=> b!467129 (= lt!211261 (getCurrentListMapNoExtraKeys!1896 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!467129 (= lt!211263 (getCurrentListMapNoExtraKeys!1896 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!467130 () Bool)

(declare-fun res!279265 () Bool)

(assert (=> b!467130 (=> (not res!279265) (not e!273243))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29501 (_ BitVec 32)) Bool)

(assert (=> b!467130 (= res!279265 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!467131 () Bool)

(declare-fun e!273244 () Bool)

(declare-fun tp_is_empty!12883 () Bool)

(assert (=> b!467131 (= e!273244 tp_is_empty!12883)))

(declare-fun b!467132 () Bool)

(declare-fun res!279266 () Bool)

(assert (=> b!467132 (=> (not res!279266) (not e!273243))))

(assert (=> b!467132 (= res!279266 (and (= (size!14528 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14527 _keys!1025) (size!14528 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!21013 () Bool)

(declare-fun mapRes!21013 () Bool)

(assert (=> mapIsEmpty!21013 mapRes!21013))

(declare-fun b!467133 () Bool)

(declare-fun e!273247 () Bool)

(assert (=> b!467133 (= e!273247 tp_is_empty!12883)))

(declare-fun res!279264 () Bool)

(assert (=> start!41860 (=> (not res!279264) (not e!273243))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41860 (= res!279264 (validMask!0 mask!1365))))

(assert (=> start!41860 e!273243))

(assert (=> start!41860 tp_is_empty!12883))

(assert (=> start!41860 tp!40375))

(assert (=> start!41860 true))

(declare-fun array_inv!10220 (array!29501) Bool)

(assert (=> start!41860 (array_inv!10220 _keys!1025)))

(declare-fun e!273245 () Bool)

(declare-fun array_inv!10221 (array!29503) Bool)

(assert (=> start!41860 (and (array_inv!10221 _values!833) e!273245)))

(declare-fun b!467134 () Bool)

(assert (=> b!467134 (= e!273245 (and e!273244 mapRes!21013))))

(declare-fun condMapEmpty!21013 () Bool)

(declare-fun mapDefault!21013 () ValueCell!6098)

