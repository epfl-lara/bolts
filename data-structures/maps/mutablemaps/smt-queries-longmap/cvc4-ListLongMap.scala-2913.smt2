; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41646 () Bool)

(assert start!41646)

(declare-fun b_free!11291 () Bool)

(declare-fun b_next!11291 () Bool)

(assert (=> start!41646 (= b_free!11291 (not b_next!11291))))

(declare-fun tp!39873 () Bool)

(declare-fun b_and!19657 () Bool)

(assert (=> start!41646 (= tp!39873 b_and!19657)))

(declare-fun res!277923 () Bool)

(declare-fun e!271577 () Bool)

(assert (=> start!41646 (=> (not res!277923) (not e!271577))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41646 (= res!277923 (validMask!0 mask!1365))))

(assert (=> start!41646 e!271577))

(declare-fun tp_is_empty!12719 () Bool)

(assert (=> start!41646 tp_is_empty!12719))

(assert (=> start!41646 tp!39873))

(assert (=> start!41646 true))

(declare-datatypes ((array!29183 0))(
  ( (array!29184 (arr!14019 (Array (_ BitVec 32) (_ BitVec 64))) (size!14371 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29183)

(declare-fun array_inv!10106 (array!29183) Bool)

(assert (=> start!41646 (array_inv!10106 _keys!1025)))

(declare-datatypes ((V!18063 0))(
  ( (V!18064 (val!6404 Int)) )
))
(declare-datatypes ((ValueCell!6016 0))(
  ( (ValueCellFull!6016 (v!8687 V!18063)) (EmptyCell!6016) )
))
(declare-datatypes ((array!29185 0))(
  ( (array!29186 (arr!14020 (Array (_ BitVec 32) ValueCell!6016)) (size!14372 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29185)

(declare-fun e!271578 () Bool)

(declare-fun array_inv!10107 (array!29185) Bool)

(assert (=> start!41646 (and (array_inv!10107 _values!833) e!271578)))

(declare-fun b!464792 () Bool)

(assert (=> b!464792 (= e!271577 (not true))))

(declare-datatypes ((tuple2!8370 0))(
  ( (tuple2!8371 (_1!4195 (_ BitVec 64)) (_2!4195 V!18063)) )
))
(declare-datatypes ((List!8496 0))(
  ( (Nil!8493) (Cons!8492 (h!9348 tuple2!8370) (t!14452 List!8496)) )
))
(declare-datatypes ((ListLongMap!7297 0))(
  ( (ListLongMap!7298 (toList!3664 List!8496)) )
))
(declare-fun lt!209916 () ListLongMap!7297)

(declare-fun lt!209917 () ListLongMap!7297)

(assert (=> b!464792 (= lt!209916 lt!209917)))

(declare-datatypes ((Unit!13449 0))(
  ( (Unit!13450) )
))
(declare-fun lt!209915 () Unit!13449)

(declare-fun minValueBefore!38 () V!18063)

(declare-fun zeroValue!794 () V!18063)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18063)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!27 (array!29183 array!29185 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18063 V!18063 V!18063 V!18063 (_ BitVec 32) Int) Unit!13449)

(assert (=> b!464792 (= lt!209915 (lemmaNoChangeToArrayThenSameMapNoExtras!27 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1832 (array!29183 array!29185 (_ BitVec 32) (_ BitVec 32) V!18063 V!18063 (_ BitVec 32) Int) ListLongMap!7297)

(assert (=> b!464792 (= lt!209917 (getCurrentListMapNoExtraKeys!1832 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!464792 (= lt!209916 (getCurrentListMapNoExtraKeys!1832 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!464793 () Bool)

(declare-fun e!271576 () Bool)

(declare-fun mapRes!20758 () Bool)

(assert (=> b!464793 (= e!271578 (and e!271576 mapRes!20758))))

(declare-fun condMapEmpty!20758 () Bool)

(declare-fun mapDefault!20758 () ValueCell!6016)

