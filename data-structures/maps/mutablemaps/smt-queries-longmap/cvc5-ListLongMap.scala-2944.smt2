; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41878 () Bool)

(assert start!41878)

(declare-fun b_free!11473 () Bool)

(declare-fun b_next!11473 () Bool)

(assert (=> start!41878 (= b_free!11473 (not b_next!11473))))

(declare-fun tp!40428 () Bool)

(declare-fun b_and!19871 () Bool)

(assert (=> start!41878 (= tp!40428 b_and!19871)))

(declare-fun b!467318 () Bool)

(declare-fun e!273379 () Bool)

(declare-fun tp_is_empty!12901 () Bool)

(assert (=> b!467318 (= e!273379 tp_is_empty!12901)))

(declare-fun b!467319 () Bool)

(declare-fun res!279373 () Bool)

(declare-fun e!273382 () Bool)

(assert (=> b!467319 (=> (not res!279373) (not e!273382))))

(declare-datatypes ((array!29537 0))(
  ( (array!29538 (arr!14193 (Array (_ BitVec 32) (_ BitVec 64))) (size!14545 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29537)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29537 (_ BitVec 32)) Bool)

(assert (=> b!467319 (= res!279373 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!467320 () Bool)

(declare-fun res!279374 () Bool)

(assert (=> b!467320 (=> (not res!279374) (not e!273382))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((V!18307 0))(
  ( (V!18308 (val!6495 Int)) )
))
(declare-datatypes ((ValueCell!6107 0))(
  ( (ValueCellFull!6107 (v!8780 V!18307)) (EmptyCell!6107) )
))
(declare-datatypes ((array!29539 0))(
  ( (array!29540 (arr!14194 (Array (_ BitVec 32) ValueCell!6107)) (size!14546 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29539)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!467320 (= res!279374 (and (= (size!14546 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14545 _keys!1025) (size!14546 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!467321 () Bool)

(declare-fun res!279372 () Bool)

(assert (=> b!467321 (=> (not res!279372) (not e!273382))))

(declare-datatypes ((List!8629 0))(
  ( (Nil!8626) (Cons!8625 (h!9481 (_ BitVec 64)) (t!14591 List!8629)) )
))
(declare-fun arrayNoDuplicates!0 (array!29537 (_ BitVec 32) List!8629) Bool)

(assert (=> b!467321 (= res!279372 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8626))))

(declare-fun b!467322 () Bool)

(assert (=> b!467322 (= e!273382 (not true))))

(declare-datatypes ((tuple2!8514 0))(
  ( (tuple2!8515 (_1!4267 (_ BitVec 64)) (_2!4267 V!18307)) )
))
(declare-datatypes ((List!8630 0))(
  ( (Nil!8627) (Cons!8626 (h!9482 tuple2!8514) (t!14592 List!8630)) )
))
(declare-datatypes ((ListLongMap!7441 0))(
  ( (ListLongMap!7442 (toList!3736 List!8630)) )
))
(declare-fun lt!211344 () ListLongMap!7441)

(declare-fun lt!211342 () ListLongMap!7441)

(assert (=> b!467322 (= lt!211344 lt!211342)))

(declare-fun minValueBefore!38 () V!18307)

(declare-fun zeroValue!794 () V!18307)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18307)

(declare-datatypes ((Unit!13593 0))(
  ( (Unit!13594) )
))
(declare-fun lt!211343 () Unit!13593)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!97 (array!29537 array!29539 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18307 V!18307 V!18307 V!18307 (_ BitVec 32) Int) Unit!13593)

(assert (=> b!467322 (= lt!211343 (lemmaNoChangeToArrayThenSameMapNoExtras!97 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1902 (array!29537 array!29539 (_ BitVec 32) (_ BitVec 32) V!18307 V!18307 (_ BitVec 32) Int) ListLongMap!7441)

(assert (=> b!467322 (= lt!211342 (getCurrentListMapNoExtraKeys!1902 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!467322 (= lt!211344 (getCurrentListMapNoExtraKeys!1902 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!467323 () Bool)

(declare-fun e!273381 () Bool)

(declare-fun mapRes!21040 () Bool)

(assert (=> b!467323 (= e!273381 (and e!273379 mapRes!21040))))

(declare-fun condMapEmpty!21040 () Bool)

(declare-fun mapDefault!21040 () ValueCell!6107)

