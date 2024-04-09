; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42396 () Bool)

(assert start!42396)

(declare-fun b_free!11863 () Bool)

(declare-fun b_next!11863 () Bool)

(assert (=> start!42396 (= b_free!11863 (not b_next!11863))))

(declare-fun tp!41622 () Bool)

(declare-fun b_and!20337 () Bool)

(assert (=> start!42396 (= tp!41622 b_and!20337)))

(declare-fun mapIsEmpty!21649 () Bool)

(declare-fun mapRes!21649 () Bool)

(assert (=> mapIsEmpty!21649 mapRes!21649))

(declare-fun b!472733 () Bool)

(declare-fun e!277262 () Bool)

(assert (=> b!472733 (= e!277262 true)))

(declare-datatypes ((V!18827 0))(
  ( (V!18828 (val!6690 Int)) )
))
(declare-datatypes ((tuple2!8800 0))(
  ( (tuple2!8801 (_1!4410 (_ BitVec 64)) (_2!4410 V!18827)) )
))
(declare-datatypes ((List!8917 0))(
  ( (Nil!8914) (Cons!8913 (h!9769 tuple2!8800) (t!14895 List!8917)) )
))
(declare-datatypes ((ListLongMap!7727 0))(
  ( (ListLongMap!7728 (toList!3879 List!8917)) )
))
(declare-fun lt!214591 () ListLongMap!7727)

(declare-fun lt!214596 () tuple2!8800)

(declare-fun minValueBefore!38 () V!18827)

(declare-fun +!1689 (ListLongMap!7727 tuple2!8800) ListLongMap!7727)

(assert (=> b!472733 (= (+!1689 lt!214591 lt!214596) (+!1689 (+!1689 lt!214591 (tuple2!8801 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!214596))))

(declare-fun minValueAfter!38 () V!18827)

(assert (=> b!472733 (= lt!214596 (tuple2!8801 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13879 0))(
  ( (Unit!13880) )
))
(declare-fun lt!214593 () Unit!13879)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!126 (ListLongMap!7727 (_ BitVec 64) V!18827 V!18827) Unit!13879)

(assert (=> b!472733 (= lt!214593 (addSameAsAddTwiceSameKeyDiffValues!126 lt!214591 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!214595 () ListLongMap!7727)

(declare-fun zeroValue!794 () V!18827)

(assert (=> b!472733 (= lt!214591 (+!1689 lt!214595 (tuple2!8801 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun lt!214592 () ListLongMap!7727)

(declare-datatypes ((array!30305 0))(
  ( (array!30306 (arr!14569 (Array (_ BitVec 32) (_ BitVec 64))) (size!14921 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30305)

(declare-datatypes ((ValueCell!6302 0))(
  ( (ValueCellFull!6302 (v!8977 V!18827)) (EmptyCell!6302) )
))
(declare-datatypes ((array!30307 0))(
  ( (array!30308 (arr!14570 (Array (_ BitVec 32) ValueCell!6302)) (size!14922 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30307)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMap!2226 (array!30305 array!30307 (_ BitVec 32) (_ BitVec 32) V!18827 V!18827 (_ BitVec 32) Int) ListLongMap!7727)

(assert (=> b!472733 (= lt!214592 (getCurrentListMap!2226 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!214594 () ListLongMap!7727)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!472733 (= lt!214594 (getCurrentListMap!2226 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472734 () Bool)

(declare-fun e!277264 () Bool)

(assert (=> b!472734 (= e!277264 (not e!277262))))

(declare-fun res!282432 () Bool)

(assert (=> b!472734 (=> res!282432 e!277262)))

(assert (=> b!472734 (= res!282432 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!214598 () ListLongMap!7727)

(assert (=> b!472734 (= lt!214595 lt!214598)))

(declare-fun lt!214597 () Unit!13879)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!233 (array!30305 array!30307 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18827 V!18827 V!18827 V!18827 (_ BitVec 32) Int) Unit!13879)

(assert (=> b!472734 (= lt!214597 (lemmaNoChangeToArrayThenSameMapNoExtras!233 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2038 (array!30305 array!30307 (_ BitVec 32) (_ BitVec 32) V!18827 V!18827 (_ BitVec 32) Int) ListLongMap!7727)

(assert (=> b!472734 (= lt!214598 (getCurrentListMapNoExtraKeys!2038 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!472734 (= lt!214595 (getCurrentListMapNoExtraKeys!2038 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472735 () Bool)

(declare-fun res!282433 () Bool)

(assert (=> b!472735 (=> (not res!282433) (not e!277264))))

(declare-datatypes ((List!8918 0))(
  ( (Nil!8915) (Cons!8914 (h!9770 (_ BitVec 64)) (t!14896 List!8918)) )
))
(declare-fun arrayNoDuplicates!0 (array!30305 (_ BitVec 32) List!8918) Bool)

(assert (=> b!472735 (= res!282433 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8915))))

(declare-fun b!472736 () Bool)

(declare-fun res!282436 () Bool)

(assert (=> b!472736 (=> (not res!282436) (not e!277264))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30305 (_ BitVec 32)) Bool)

(assert (=> b!472736 (= res!282436 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!472737 () Bool)

(declare-fun e!277266 () Bool)

(declare-fun tp_is_empty!13291 () Bool)

(assert (=> b!472737 (= e!277266 tp_is_empty!13291)))

(declare-fun b!472739 () Bool)

(declare-fun e!277263 () Bool)

(assert (=> b!472739 (= e!277263 (and e!277266 mapRes!21649))))

(declare-fun condMapEmpty!21649 () Bool)

(declare-fun mapDefault!21649 () ValueCell!6302)

