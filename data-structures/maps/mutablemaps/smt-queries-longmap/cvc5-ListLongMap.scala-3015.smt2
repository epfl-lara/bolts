; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42432 () Bool)

(assert start!42432)

(declare-fun b_free!11899 () Bool)

(declare-fun b_next!11899 () Bool)

(assert (=> start!42432 (= b_free!11899 (not b_next!11899))))

(declare-fun tp!41731 () Bool)

(declare-fun b_and!20373 () Bool)

(assert (=> start!42432 (= tp!41731 b_and!20373)))

(declare-fun b!473165 () Bool)

(declare-fun e!277587 () Bool)

(assert (=> b!473165 (= e!277587 true)))

(declare-datatypes ((V!18875 0))(
  ( (V!18876 (val!6708 Int)) )
))
(declare-datatypes ((tuple2!8834 0))(
  ( (tuple2!8835 (_1!4427 (_ BitVec 64)) (_2!4427 V!18875)) )
))
(declare-datatypes ((List!8946 0))(
  ( (Nil!8943) (Cons!8942 (h!9798 tuple2!8834) (t!14924 List!8946)) )
))
(declare-datatypes ((ListLongMap!7761 0))(
  ( (ListLongMap!7762 (toList!3896 List!8946)) )
))
(declare-fun lt!215023 () ListLongMap!7761)

(declare-fun lt!215028 () tuple2!8834)

(declare-fun minValueBefore!38 () V!18875)

(declare-fun +!1703 (ListLongMap!7761 tuple2!8834) ListLongMap!7761)

(assert (=> b!473165 (= (+!1703 lt!215023 lt!215028) (+!1703 (+!1703 lt!215023 (tuple2!8835 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!215028))))

(declare-fun minValueAfter!38 () V!18875)

(assert (=> b!473165 (= lt!215028 (tuple2!8835 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13913 0))(
  ( (Unit!13914) )
))
(declare-fun lt!215030 () Unit!13913)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!140 (ListLongMap!7761 (_ BitVec 64) V!18875 V!18875) Unit!13913)

(assert (=> b!473165 (= lt!215030 (addSameAsAddTwiceSameKeyDiffValues!140 lt!215023 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!215027 () ListLongMap!7761)

(declare-fun zeroValue!794 () V!18875)

(assert (=> b!473165 (= lt!215023 (+!1703 lt!215027 (tuple2!8835 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun lt!215029 () ListLongMap!7761)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30375 0))(
  ( (array!30376 (arr!14604 (Array (_ BitVec 32) (_ BitVec 64))) (size!14956 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30375)

(declare-datatypes ((ValueCell!6320 0))(
  ( (ValueCellFull!6320 (v!8995 V!18875)) (EmptyCell!6320) )
))
(declare-datatypes ((array!30377 0))(
  ( (array!30378 (arr!14605 (Array (_ BitVec 32) ValueCell!6320)) (size!14957 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30377)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMap!2240 (array!30375 array!30377 (_ BitVec 32) (_ BitVec 32) V!18875 V!18875 (_ BitVec 32) Int) ListLongMap!7761)

(assert (=> b!473165 (= lt!215029 (getCurrentListMap!2240 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun lt!215024 () ListLongMap!7761)

(assert (=> b!473165 (= lt!215024 (getCurrentListMap!2240 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!473166 () Bool)

(declare-fun res!282706 () Bool)

(declare-fun e!277586 () Bool)

(assert (=> b!473166 (=> (not res!282706) (not e!277586))))

(declare-datatypes ((List!8947 0))(
  ( (Nil!8944) (Cons!8943 (h!9799 (_ BitVec 64)) (t!14925 List!8947)) )
))
(declare-fun arrayNoDuplicates!0 (array!30375 (_ BitVec 32) List!8947) Bool)

(assert (=> b!473166 (= res!282706 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8944))))

(declare-fun b!473167 () Bool)

(declare-fun e!277585 () Bool)

(declare-fun e!277588 () Bool)

(declare-fun mapRes!21703 () Bool)

(assert (=> b!473167 (= e!277585 (and e!277588 mapRes!21703))))

(declare-fun condMapEmpty!21703 () Bool)

(declare-fun mapDefault!21703 () ValueCell!6320)

