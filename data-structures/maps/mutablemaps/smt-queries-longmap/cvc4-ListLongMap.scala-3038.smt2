; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42614 () Bool)

(assert start!42614)

(declare-fun b_free!12041 () Bool)

(declare-fun b_next!12041 () Bool)

(assert (=> start!42614 (= b_free!12041 (not b_next!12041))))

(declare-fun tp!42162 () Bool)

(declare-fun b_and!20539 () Bool)

(assert (=> start!42614 (= tp!42162 b_and!20539)))

(declare-fun b!475124 () Bool)

(declare-fun res!283818 () Bool)

(declare-fun e!278983 () Bool)

(assert (=> b!475124 (=> (not res!283818) (not e!278983))))

(declare-datatypes ((array!30647 0))(
  ( (array!30648 (arr!14738 (Array (_ BitVec 32) (_ BitVec 64))) (size!15090 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30647)

(declare-datatypes ((List!9049 0))(
  ( (Nil!9046) (Cons!9045 (h!9901 (_ BitVec 64)) (t!15031 List!9049)) )
))
(declare-fun arrayNoDuplicates!0 (array!30647 (_ BitVec 32) List!9049) Bool)

(assert (=> b!475124 (= res!283818 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!9046))))

(declare-fun mapNonEmpty!21922 () Bool)

(declare-fun mapRes!21922 () Bool)

(declare-fun tp!42163 () Bool)

(declare-fun e!278985 () Bool)

(assert (=> mapNonEmpty!21922 (= mapRes!21922 (and tp!42163 e!278985))))

(declare-datatypes ((V!19063 0))(
  ( (V!19064 (val!6779 Int)) )
))
(declare-datatypes ((ValueCell!6391 0))(
  ( (ValueCellFull!6391 (v!9068 V!19063)) (EmptyCell!6391) )
))
(declare-datatypes ((array!30649 0))(
  ( (array!30650 (arr!14739 (Array (_ BitVec 32) ValueCell!6391)) (size!15091 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30649)

(declare-fun mapValue!21922 () ValueCell!6391)

(declare-fun mapRest!21922 () (Array (_ BitVec 32) ValueCell!6391))

(declare-fun mapKey!21922 () (_ BitVec 32))

(assert (=> mapNonEmpty!21922 (= (arr!14739 _values!833) (store mapRest!21922 mapKey!21922 mapValue!21922))))

(declare-fun b!475125 () Bool)

(declare-fun res!283821 () Bool)

(assert (=> b!475125 (=> (not res!283821) (not e!278983))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!475125 (= res!283821 (and (= (size!15091 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15090 _keys!1025) (size!15091 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!475126 () Bool)

(declare-fun tp_is_empty!13469 () Bool)

(assert (=> b!475126 (= e!278985 tp_is_empty!13469)))

(declare-fun b!475127 () Bool)

(declare-fun e!278982 () Bool)

(assert (=> b!475127 (= e!278982 tp_is_empty!13469)))

(declare-fun b!475128 () Bool)

(assert (=> b!475128 (= e!278983 (bvsgt #b00000000000000000000000000000000 (size!15090 _keys!1025)))))

(declare-fun zeroValue!794 () V!19063)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8938 0))(
  ( (tuple2!8939 (_1!4479 (_ BitVec 64)) (_2!4479 V!19063)) )
))
(declare-datatypes ((List!9050 0))(
  ( (Nil!9047) (Cons!9046 (h!9902 tuple2!8938) (t!15032 List!9050)) )
))
(declare-datatypes ((ListLongMap!7865 0))(
  ( (ListLongMap!7866 (toList!3948 List!9050)) )
))
(declare-fun lt!216404 () ListLongMap!7865)

(declare-fun minValueAfter!38 () V!19063)

(declare-fun getCurrentListMapNoExtraKeys!2102 (array!30647 array!30649 (_ BitVec 32) (_ BitVec 32) V!19063 V!19063 (_ BitVec 32) Int) ListLongMap!7865)

(assert (=> b!475128 (= lt!216404 (getCurrentListMapNoExtraKeys!2102 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!19063)

(declare-fun lt!216405 () ListLongMap!7865)

(assert (=> b!475128 (= lt!216405 (getCurrentListMapNoExtraKeys!2102 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!283819 () Bool)

(assert (=> start!42614 (=> (not res!283819) (not e!278983))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42614 (= res!283819 (validMask!0 mask!1365))))

(assert (=> start!42614 e!278983))

(assert (=> start!42614 tp_is_empty!13469))

(assert (=> start!42614 tp!42162))

(assert (=> start!42614 true))

(declare-fun array_inv!10622 (array!30647) Bool)

(assert (=> start!42614 (array_inv!10622 _keys!1025)))

(declare-fun e!278986 () Bool)

(declare-fun array_inv!10623 (array!30649) Bool)

(assert (=> start!42614 (and (array_inv!10623 _values!833) e!278986)))

(declare-fun b!475129 () Bool)

(assert (=> b!475129 (= e!278986 (and e!278982 mapRes!21922))))

(declare-fun condMapEmpty!21922 () Bool)

(declare-fun mapDefault!21922 () ValueCell!6391)

