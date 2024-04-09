; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41852 () Bool)

(assert start!41852)

(declare-fun b_free!11447 () Bool)

(declare-fun b_next!11447 () Bool)

(assert (=> start!41852 (= b_free!11447 (not b_next!11447))))

(declare-fun tp!40350 () Bool)

(declare-fun b_and!19845 () Bool)

(assert (=> start!41852 (= tp!40350 b_and!19845)))

(declare-fun b!467045 () Bool)

(declare-fun e!273183 () Bool)

(assert (=> b!467045 (= e!273183 (not true))))

(declare-datatypes ((V!18271 0))(
  ( (V!18272 (val!6482 Int)) )
))
(declare-datatypes ((tuple2!8496 0))(
  ( (tuple2!8497 (_1!4258 (_ BitVec 64)) (_2!4258 V!18271)) )
))
(declare-datatypes ((List!8613 0))(
  ( (Nil!8610) (Cons!8609 (h!9465 tuple2!8496) (t!14575 List!8613)) )
))
(declare-datatypes ((ListLongMap!7423 0))(
  ( (ListLongMap!7424 (toList!3727 List!8613)) )
))
(declare-fun lt!211225 () ListLongMap!7423)

(declare-fun lt!211227 () ListLongMap!7423)

(assert (=> b!467045 (= lt!211225 lt!211227)))

(declare-fun minValueBefore!38 () V!18271)

(declare-fun zeroValue!794 () V!18271)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((Unit!13575 0))(
  ( (Unit!13576) )
))
(declare-fun lt!211226 () Unit!13575)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29485 0))(
  ( (array!29486 (arr!14167 (Array (_ BitVec 32) (_ BitVec 64))) (size!14519 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29485)

(declare-datatypes ((ValueCell!6094 0))(
  ( (ValueCellFull!6094 (v!8767 V!18271)) (EmptyCell!6094) )
))
(declare-datatypes ((array!29487 0))(
  ( (array!29488 (arr!14168 (Array (_ BitVec 32) ValueCell!6094)) (size!14520 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29487)

(declare-fun minValueAfter!38 () V!18271)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!88 (array!29485 array!29487 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18271 V!18271 V!18271 V!18271 (_ BitVec 32) Int) Unit!13575)

(assert (=> b!467045 (= lt!211226 (lemmaNoChangeToArrayThenSameMapNoExtras!88 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1893 (array!29485 array!29487 (_ BitVec 32) (_ BitVec 32) V!18271 V!18271 (_ BitVec 32) Int) ListLongMap!7423)

(assert (=> b!467045 (= lt!211227 (getCurrentListMapNoExtraKeys!1893 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!467045 (= lt!211225 (getCurrentListMapNoExtraKeys!1893 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!467046 () Bool)

(declare-fun e!273186 () Bool)

(declare-fun e!273184 () Bool)

(declare-fun mapRes!21001 () Bool)

(assert (=> b!467046 (= e!273186 (and e!273184 mapRes!21001))))

(declare-fun condMapEmpty!21001 () Bool)

(declare-fun mapDefault!21001 () ValueCell!6094)

