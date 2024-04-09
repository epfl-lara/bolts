; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41952 () Bool)

(assert start!41952)

(declare-fun b_free!11533 () Bool)

(declare-fun b_next!11533 () Bool)

(assert (=> start!41952 (= b_free!11533 (not b_next!11533))))

(declare-fun tp!40612 () Bool)

(declare-fun b_and!19939 () Bool)

(assert (=> start!41952 (= tp!40612 b_and!19939)))

(declare-fun b!468108 () Bool)

(declare-fun e!273961 () Bool)

(declare-fun e!273960 () Bool)

(assert (=> b!468108 (= e!273961 (not e!273960))))

(declare-fun res!279838 () Bool)

(assert (=> b!468108 (=> res!279838 e!273960)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!468108 (= res!279838 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!18387 0))(
  ( (V!18388 (val!6525 Int)) )
))
(declare-datatypes ((tuple2!8554 0))(
  ( (tuple2!8555 (_1!4287 (_ BitVec 64)) (_2!4287 V!18387)) )
))
(declare-datatypes ((List!8673 0))(
  ( (Nil!8670) (Cons!8669 (h!9525 tuple2!8554) (t!14637 List!8673)) )
))
(declare-datatypes ((ListLongMap!7481 0))(
  ( (ListLongMap!7482 (toList!3756 List!8673)) )
))
(declare-fun lt!211727 () ListLongMap!7481)

(declare-fun lt!211729 () ListLongMap!7481)

(assert (=> b!468108 (= lt!211727 lt!211729)))

(declare-datatypes ((Unit!13633 0))(
  ( (Unit!13634) )
))
(declare-fun lt!211726 () Unit!13633)

(declare-fun minValueBefore!38 () V!18387)

(declare-fun zeroValue!794 () V!18387)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29653 0))(
  ( (array!29654 (arr!14250 (Array (_ BitVec 32) (_ BitVec 64))) (size!14602 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29653)

(declare-datatypes ((ValueCell!6137 0))(
  ( (ValueCellFull!6137 (v!8810 V!18387)) (EmptyCell!6137) )
))
(declare-datatypes ((array!29655 0))(
  ( (array!29656 (arr!14251 (Array (_ BitVec 32) ValueCell!6137)) (size!14603 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29655)

(declare-fun minValueAfter!38 () V!18387)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!117 (array!29653 array!29655 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18387 V!18387 V!18387 V!18387 (_ BitVec 32) Int) Unit!13633)

(assert (=> b!468108 (= lt!211726 (lemmaNoChangeToArrayThenSameMapNoExtras!117 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1922 (array!29653 array!29655 (_ BitVec 32) (_ BitVec 32) V!18387 V!18387 (_ BitVec 32) Int) ListLongMap!7481)

(assert (=> b!468108 (= lt!211729 (getCurrentListMapNoExtraKeys!1922 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!468108 (= lt!211727 (getCurrentListMapNoExtraKeys!1922 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!468109 () Bool)

(declare-fun e!273958 () Bool)

(declare-fun tp_is_empty!12961 () Bool)

(assert (=> b!468109 (= e!273958 tp_is_empty!12961)))

(declare-fun b!468110 () Bool)

(declare-fun res!279839 () Bool)

(assert (=> b!468110 (=> (not res!279839) (not e!273961))))

(declare-datatypes ((List!8674 0))(
  ( (Nil!8671) (Cons!8670 (h!9526 (_ BitVec 64)) (t!14638 List!8674)) )
))
(declare-fun arrayNoDuplicates!0 (array!29653 (_ BitVec 32) List!8674) Bool)

(assert (=> b!468110 (= res!279839 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8671))))

(declare-fun b!468111 () Bool)

(declare-fun e!273957 () Bool)

(declare-fun e!273959 () Bool)

(declare-fun mapRes!21133 () Bool)

(assert (=> b!468111 (= e!273957 (and e!273959 mapRes!21133))))

(declare-fun condMapEmpty!21133 () Bool)

(declare-fun mapDefault!21133 () ValueCell!6137)

