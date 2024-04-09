; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41842 () Bool)

(assert start!41842)

(declare-fun b_free!11437 () Bool)

(declare-fun b_next!11437 () Bool)

(assert (=> start!41842 (= b_free!11437 (not b_next!11437))))

(declare-fun tp!40321 () Bool)

(declare-fun b_and!19835 () Bool)

(assert (=> start!41842 (= tp!40321 b_and!19835)))

(declare-fun b!466940 () Bool)

(declare-fun e!273110 () Bool)

(assert (=> b!466940 (= e!273110 (not true))))

(declare-datatypes ((V!18259 0))(
  ( (V!18260 (val!6477 Int)) )
))
(declare-datatypes ((tuple2!8488 0))(
  ( (tuple2!8489 (_1!4254 (_ BitVec 64)) (_2!4254 V!18259)) )
))
(declare-datatypes ((List!8605 0))(
  ( (Nil!8602) (Cons!8601 (h!9457 tuple2!8488) (t!14567 List!8605)) )
))
(declare-datatypes ((ListLongMap!7415 0))(
  ( (ListLongMap!7416 (toList!3723 List!8605)) )
))
(declare-fun lt!211181 () ListLongMap!7415)

(declare-fun lt!211180 () ListLongMap!7415)

(assert (=> b!466940 (= lt!211181 lt!211180)))

(declare-fun minValueBefore!38 () V!18259)

(declare-fun zeroValue!794 () V!18259)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((Unit!13567 0))(
  ( (Unit!13568) )
))
(declare-fun lt!211182 () Unit!13567)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29467 0))(
  ( (array!29468 (arr!14158 (Array (_ BitVec 32) (_ BitVec 64))) (size!14510 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29467)

(declare-datatypes ((ValueCell!6089 0))(
  ( (ValueCellFull!6089 (v!8762 V!18259)) (EmptyCell!6089) )
))
(declare-datatypes ((array!29469 0))(
  ( (array!29470 (arr!14159 (Array (_ BitVec 32) ValueCell!6089)) (size!14511 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29469)

(declare-fun minValueAfter!38 () V!18259)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!84 (array!29467 array!29469 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18259 V!18259 V!18259 V!18259 (_ BitVec 32) Int) Unit!13567)

(assert (=> b!466940 (= lt!211182 (lemmaNoChangeToArrayThenSameMapNoExtras!84 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1889 (array!29467 array!29469 (_ BitVec 32) (_ BitVec 32) V!18259 V!18259 (_ BitVec 32) Int) ListLongMap!7415)

(assert (=> b!466940 (= lt!211180 (getCurrentListMapNoExtraKeys!1889 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!466940 (= lt!211181 (getCurrentListMapNoExtraKeys!1889 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!466941 () Bool)

(declare-fun res!279156 () Bool)

(assert (=> b!466941 (=> (not res!279156) (not e!273110))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29467 (_ BitVec 32)) Bool)

(assert (=> b!466941 (= res!279156 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun res!279157 () Bool)

(assert (=> start!41842 (=> (not res!279157) (not e!273110))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41842 (= res!279157 (validMask!0 mask!1365))))

(assert (=> start!41842 e!273110))

(declare-fun tp_is_empty!12865 () Bool)

(assert (=> start!41842 tp_is_empty!12865))

(assert (=> start!41842 tp!40321))

(assert (=> start!41842 true))

(declare-fun array_inv!10206 (array!29467) Bool)

(assert (=> start!41842 (array_inv!10206 _keys!1025)))

(declare-fun e!273112 () Bool)

(declare-fun array_inv!10207 (array!29469) Bool)

(assert (=> start!41842 (and (array_inv!10207 _values!833) e!273112)))

(declare-fun mapNonEmpty!20986 () Bool)

(declare-fun mapRes!20986 () Bool)

(declare-fun tp!40320 () Bool)

(declare-fun e!273108 () Bool)

(assert (=> mapNonEmpty!20986 (= mapRes!20986 (and tp!40320 e!273108))))

(declare-fun mapValue!20986 () ValueCell!6089)

(declare-fun mapKey!20986 () (_ BitVec 32))

(declare-fun mapRest!20986 () (Array (_ BitVec 32) ValueCell!6089))

(assert (=> mapNonEmpty!20986 (= (arr!14159 _values!833) (store mapRest!20986 mapKey!20986 mapValue!20986))))

(declare-fun b!466942 () Bool)

(assert (=> b!466942 (= e!273108 tp_is_empty!12865)))

(declare-fun b!466943 () Bool)

(declare-fun res!279158 () Bool)

(assert (=> b!466943 (=> (not res!279158) (not e!273110))))

(declare-datatypes ((List!8606 0))(
  ( (Nil!8603) (Cons!8602 (h!9458 (_ BitVec 64)) (t!14568 List!8606)) )
))
(declare-fun arrayNoDuplicates!0 (array!29467 (_ BitVec 32) List!8606) Bool)

(assert (=> b!466943 (= res!279158 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8603))))

(declare-fun b!466944 () Bool)

(declare-fun e!273109 () Bool)

(assert (=> b!466944 (= e!273109 tp_is_empty!12865)))

(declare-fun b!466945 () Bool)

(assert (=> b!466945 (= e!273112 (and e!273109 mapRes!20986))))

(declare-fun condMapEmpty!20986 () Bool)

(declare-fun mapDefault!20986 () ValueCell!6089)

