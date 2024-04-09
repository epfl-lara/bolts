; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41764 () Bool)

(assert start!41764)

(declare-fun b_free!11377 () Bool)

(declare-fun b_next!11377 () Bool)

(assert (=> start!41764 (= b_free!11377 (not b_next!11377))))

(declare-fun tp!40138 () Bool)

(declare-fun b_and!19763 () Bool)

(assert (=> start!41764 (= tp!40138 b_and!19763)))

(declare-fun b!466047 () Bool)

(declare-fun e!272473 () Bool)

(declare-fun e!272471 () Bool)

(assert (=> b!466047 (= e!272473 (not e!272471))))

(declare-fun res!278637 () Bool)

(assert (=> b!466047 (=> res!278637 e!272471)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!466047 (= res!278637 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!18179 0))(
  ( (V!18180 (val!6447 Int)) )
))
(declare-datatypes ((tuple2!8434 0))(
  ( (tuple2!8435 (_1!4227 (_ BitVec 64)) (_2!4227 V!18179)) )
))
(declare-datatypes ((List!8554 0))(
  ( (Nil!8551) (Cons!8550 (h!9406 tuple2!8434) (t!14514 List!8554)) )
))
(declare-datatypes ((ListLongMap!7361 0))(
  ( (ListLongMap!7362 (toList!3696 List!8554)) )
))
(declare-fun lt!210632 () ListLongMap!7361)

(declare-fun lt!210630 () ListLongMap!7361)

(assert (=> b!466047 (= lt!210632 lt!210630)))

(declare-fun minValueBefore!38 () V!18179)

(declare-fun zeroValue!794 () V!18179)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13511 0))(
  ( (Unit!13512) )
))
(declare-fun lt!210631 () Unit!13511)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29349 0))(
  ( (array!29350 (arr!14100 (Array (_ BitVec 32) (_ BitVec 64))) (size!14452 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29349)

(declare-datatypes ((ValueCell!6059 0))(
  ( (ValueCellFull!6059 (v!8731 V!18179)) (EmptyCell!6059) )
))
(declare-datatypes ((array!29351 0))(
  ( (array!29352 (arr!14101 (Array (_ BitVec 32) ValueCell!6059)) (size!14453 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29351)

(declare-fun minValueAfter!38 () V!18179)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!57 (array!29349 array!29351 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18179 V!18179 V!18179 V!18179 (_ BitVec 32) Int) Unit!13511)

(assert (=> b!466047 (= lt!210631 (lemmaNoChangeToArrayThenSameMapNoExtras!57 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1862 (array!29349 array!29351 (_ BitVec 32) (_ BitVec 32) V!18179 V!18179 (_ BitVec 32) Int) ListLongMap!7361)

(assert (=> b!466047 (= lt!210630 (getCurrentListMapNoExtraKeys!1862 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!466047 (= lt!210632 (getCurrentListMapNoExtraKeys!1862 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!466048 () Bool)

(declare-fun e!272474 () Bool)

(declare-fun e!272472 () Bool)

(declare-fun mapRes!20893 () Bool)

(assert (=> b!466048 (= e!272474 (and e!272472 mapRes!20893))))

(declare-fun condMapEmpty!20893 () Bool)

(declare-fun mapDefault!20893 () ValueCell!6059)

