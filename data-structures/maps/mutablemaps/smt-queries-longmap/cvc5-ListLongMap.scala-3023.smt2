; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42500 () Bool)

(assert start!42500)

(declare-fun b_free!11947 () Bool)

(declare-fun b_next!11947 () Bool)

(assert (=> start!42500 (= b_free!11947 (not b_next!11947))))

(declare-fun tp!41877 () Bool)

(declare-fun b_and!20433 () Bool)

(assert (=> start!42500 (= tp!41877 b_and!20433)))

(declare-fun b!473922 () Bool)

(declare-fun res!283143 () Bool)

(declare-fun e!278132 () Bool)

(assert (=> b!473922 (=> (not res!283143) (not e!278132))))

(declare-datatypes ((array!30467 0))(
  ( (array!30468 (arr!14649 (Array (_ BitVec 32) (_ BitVec 64))) (size!15001 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30467)

(declare-datatypes ((List!8978 0))(
  ( (Nil!8975) (Cons!8974 (h!9830 (_ BitVec 64)) (t!14958 List!8978)) )
))
(declare-fun arrayNoDuplicates!0 (array!30467 (_ BitVec 32) List!8978) Bool)

(assert (=> b!473922 (= res!283143 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8975))))

(declare-fun b!473923 () Bool)

(declare-fun e!278135 () Bool)

(assert (=> b!473923 (= e!278135 true)))

(declare-datatypes ((V!18939 0))(
  ( (V!18940 (val!6732 Int)) )
))
(declare-datatypes ((tuple2!8870 0))(
  ( (tuple2!8871 (_1!4445 (_ BitVec 64)) (_2!4445 V!18939)) )
))
(declare-datatypes ((List!8979 0))(
  ( (Nil!8976) (Cons!8975 (h!9831 tuple2!8870) (t!14959 List!8979)) )
))
(declare-datatypes ((ListLongMap!7797 0))(
  ( (ListLongMap!7798 (toList!3914 List!8979)) )
))
(declare-fun lt!215761 () ListLongMap!7797)

(declare-fun lt!215756 () tuple2!8870)

(declare-fun minValueBefore!38 () V!18939)

(declare-fun +!1720 (ListLongMap!7797 tuple2!8870) ListLongMap!7797)

(assert (=> b!473923 (= (+!1720 lt!215761 lt!215756) (+!1720 (+!1720 lt!215761 (tuple2!8871 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!215756))))

(declare-fun minValueAfter!38 () V!18939)

(assert (=> b!473923 (= lt!215756 (tuple2!8871 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13951 0))(
  ( (Unit!13952) )
))
(declare-fun lt!215759 () Unit!13951)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!157 (ListLongMap!7797 (_ BitVec 64) V!18939 V!18939) Unit!13951)

(assert (=> b!473923 (= lt!215759 (addSameAsAddTwiceSameKeyDiffValues!157 lt!215761 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!215760 () ListLongMap!7797)

(declare-fun zeroValue!794 () V!18939)

(assert (=> b!473923 (= lt!215761 (+!1720 lt!215760 (tuple2!8871 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun lt!215757 () ListLongMap!7797)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((ValueCell!6344 0))(
  ( (ValueCellFull!6344 (v!9020 V!18939)) (EmptyCell!6344) )
))
(declare-datatypes ((array!30469 0))(
  ( (array!30470 (arr!14650 (Array (_ BitVec 32) ValueCell!6344)) (size!15002 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30469)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMap!2257 (array!30467 array!30469 (_ BitVec 32) (_ BitVec 32) V!18939 V!18939 (_ BitVec 32) Int) ListLongMap!7797)

(assert (=> b!473923 (= lt!215757 (getCurrentListMap!2257 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!215758 () ListLongMap!7797)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!473923 (= lt!215758 (getCurrentListMap!2257 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!283145 () Bool)

(assert (=> start!42500 (=> (not res!283145) (not e!278132))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42500 (= res!283145 (validMask!0 mask!1365))))

(assert (=> start!42500 e!278132))

(declare-fun tp_is_empty!13375 () Bool)

(assert (=> start!42500 tp_is_empty!13375))

(assert (=> start!42500 tp!41877))

(assert (=> start!42500 true))

(declare-fun array_inv!10558 (array!30467) Bool)

(assert (=> start!42500 (array_inv!10558 _keys!1025)))

(declare-fun e!278130 () Bool)

(declare-fun array_inv!10559 (array!30469) Bool)

(assert (=> start!42500 (and (array_inv!10559 _values!833) e!278130)))

(declare-fun b!473924 () Bool)

(assert (=> b!473924 (= e!278132 (not e!278135))))

(declare-fun res!283142 () Bool)

(assert (=> b!473924 (=> res!283142 e!278135)))

(assert (=> b!473924 (= res!283142 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!215754 () ListLongMap!7797)

(assert (=> b!473924 (= lt!215760 lt!215754)))

(declare-fun lt!215755 () Unit!13951)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!264 (array!30467 array!30469 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18939 V!18939 V!18939 V!18939 (_ BitVec 32) Int) Unit!13951)

(assert (=> b!473924 (= lt!215755 (lemmaNoChangeToArrayThenSameMapNoExtras!264 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2069 (array!30467 array!30469 (_ BitVec 32) (_ BitVec 32) V!18939 V!18939 (_ BitVec 32) Int) ListLongMap!7797)

(assert (=> b!473924 (= lt!215754 (getCurrentListMapNoExtraKeys!2069 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!473924 (= lt!215760 (getCurrentListMapNoExtraKeys!2069 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!473925 () Bool)

(declare-fun e!278131 () Bool)

(assert (=> b!473925 (= e!278131 tp_is_empty!13375)))

(declare-fun b!473926 () Bool)

(declare-fun e!278133 () Bool)

(assert (=> b!473926 (= e!278133 tp_is_empty!13375)))

(declare-fun mapIsEmpty!21778 () Bool)

(declare-fun mapRes!21778 () Bool)

(assert (=> mapIsEmpty!21778 mapRes!21778))

(declare-fun b!473927 () Bool)

(declare-fun res!283141 () Bool)

(assert (=> b!473927 (=> (not res!283141) (not e!278132))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30467 (_ BitVec 32)) Bool)

(assert (=> b!473927 (= res!283141 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!473928 () Bool)

(assert (=> b!473928 (= e!278130 (and e!278133 mapRes!21778))))

(declare-fun condMapEmpty!21778 () Bool)

(declare-fun mapDefault!21778 () ValueCell!6344)

