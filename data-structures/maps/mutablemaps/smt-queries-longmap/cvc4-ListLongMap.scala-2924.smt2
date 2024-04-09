; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41726 () Bool)

(assert start!41726)

(declare-fun b_free!11357 () Bool)

(declare-fun b_next!11357 () Bool)

(assert (=> start!41726 (= b_free!11357 (not b_next!11357))))

(declare-fun tp!40075 () Bool)

(declare-fun b_and!19731 () Bool)

(assert (=> start!41726 (= tp!40075 b_and!19731)))

(declare-fun b!465623 () Bool)

(declare-fun e!272182 () Bool)

(declare-fun e!272181 () Bool)

(assert (=> b!465623 (= e!272182 (not e!272181))))

(declare-fun res!278403 () Bool)

(assert (=> b!465623 (=> res!278403 e!272181)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!465623 (= res!278403 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!18151 0))(
  ( (V!18152 (val!6437 Int)) )
))
(declare-datatypes ((tuple2!8418 0))(
  ( (tuple2!8419 (_1!4219 (_ BitVec 64)) (_2!4219 V!18151)) )
))
(declare-datatypes ((List!8542 0))(
  ( (Nil!8539) (Cons!8538 (h!9394 tuple2!8418) (t!14500 List!8542)) )
))
(declare-datatypes ((ListLongMap!7345 0))(
  ( (ListLongMap!7346 (toList!3688 List!8542)) )
))
(declare-fun lt!210359 () ListLongMap!7345)

(declare-fun lt!210361 () ListLongMap!7345)

(assert (=> b!465623 (= lt!210359 lt!210361)))

(declare-fun minValueBefore!38 () V!18151)

(declare-datatypes ((Unit!13495 0))(
  ( (Unit!13496) )
))
(declare-fun lt!210358 () Unit!13495)

(declare-fun zeroValue!794 () V!18151)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29307 0))(
  ( (array!29308 (arr!14080 (Array (_ BitVec 32) (_ BitVec 64))) (size!14432 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29307)

(declare-datatypes ((ValueCell!6049 0))(
  ( (ValueCellFull!6049 (v!8720 V!18151)) (EmptyCell!6049) )
))
(declare-datatypes ((array!29309 0))(
  ( (array!29310 (arr!14081 (Array (_ BitVec 32) ValueCell!6049)) (size!14433 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29309)

(declare-fun minValueAfter!38 () V!18151)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!50 (array!29307 array!29309 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18151 V!18151 V!18151 V!18151 (_ BitVec 32) Int) Unit!13495)

(assert (=> b!465623 (= lt!210358 (lemmaNoChangeToArrayThenSameMapNoExtras!50 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1855 (array!29307 array!29309 (_ BitVec 32) (_ BitVec 32) V!18151 V!18151 (_ BitVec 32) Int) ListLongMap!7345)

(assert (=> b!465623 (= lt!210361 (getCurrentListMapNoExtraKeys!1855 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!465623 (= lt!210359 (getCurrentListMapNoExtraKeys!1855 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!465624 () Bool)

(declare-fun e!272184 () Bool)

(declare-fun e!272183 () Bool)

(declare-fun mapRes!20860 () Bool)

(assert (=> b!465624 (= e!272184 (and e!272183 mapRes!20860))))

(declare-fun condMapEmpty!20860 () Bool)

(declare-fun mapDefault!20860 () ValueCell!6049)

