; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42566 () Bool)

(assert start!42566)

(declare-fun b_free!11993 () Bool)

(declare-fun b_next!11993 () Bool)

(assert (=> start!42566 (= b_free!11993 (not b_next!11993))))

(declare-fun tp!42018 () Bool)

(declare-fun b_and!20491 () Bool)

(assert (=> start!42566 (= tp!42018 b_and!20491)))

(declare-fun mapIsEmpty!21850 () Bool)

(declare-fun mapRes!21850 () Bool)

(assert (=> mapIsEmpty!21850 mapRes!21850))

(declare-fun b!474620 () Bool)

(declare-fun e!278625 () Bool)

(assert (=> b!474620 (= e!278625 false)))

(declare-datatypes ((V!18999 0))(
  ( (V!19000 (val!6755 Int)) )
))
(declare-fun zeroValue!794 () V!18999)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8904 0))(
  ( (tuple2!8905 (_1!4462 (_ BitVec 64)) (_2!4462 V!18999)) )
))
(declare-datatypes ((List!9017 0))(
  ( (Nil!9014) (Cons!9013 (h!9869 tuple2!8904) (t!14999 List!9017)) )
))
(declare-datatypes ((ListLongMap!7831 0))(
  ( (ListLongMap!7832 (toList!3931 List!9017)) )
))
(declare-fun lt!216260 () ListLongMap!7831)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30561 0))(
  ( (array!30562 (arr!14695 (Array (_ BitVec 32) (_ BitVec 64))) (size!15047 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30561)

(declare-datatypes ((ValueCell!6367 0))(
  ( (ValueCellFull!6367 (v!9044 V!18999)) (EmptyCell!6367) )
))
(declare-datatypes ((array!30563 0))(
  ( (array!30564 (arr!14696 (Array (_ BitVec 32) ValueCell!6367)) (size!15048 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30563)

(declare-fun minValueAfter!38 () V!18999)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!2085 (array!30561 array!30563 (_ BitVec 32) (_ BitVec 32) V!18999 V!18999 (_ BitVec 32) Int) ListLongMap!7831)

(assert (=> b!474620 (= lt!216260 (getCurrentListMapNoExtraKeys!2085 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!18999)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun lt!216261 () ListLongMap!7831)

(assert (=> b!474620 (= lt!216261 (getCurrentListMapNoExtraKeys!2085 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!474621 () Bool)

(declare-fun res!283531 () Bool)

(assert (=> b!474621 (=> (not res!283531) (not e!278625))))

(declare-datatypes ((List!9018 0))(
  ( (Nil!9015) (Cons!9014 (h!9870 (_ BitVec 64)) (t!15000 List!9018)) )
))
(declare-fun arrayNoDuplicates!0 (array!30561 (_ BitVec 32) List!9018) Bool)

(assert (=> b!474621 (= res!283531 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!9015))))

(declare-fun b!474622 () Bool)

(declare-fun e!278626 () Bool)

(declare-fun tp_is_empty!13421 () Bool)

(assert (=> b!474622 (= e!278626 tp_is_empty!13421)))

(declare-fun b!474623 () Bool)

(declare-fun res!283530 () Bool)

(assert (=> b!474623 (=> (not res!283530) (not e!278625))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30561 (_ BitVec 32)) Bool)

(assert (=> b!474623 (= res!283530 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!474624 () Bool)

(declare-fun res!283533 () Bool)

(assert (=> b!474624 (=> (not res!283533) (not e!278625))))

(assert (=> b!474624 (= res!283533 (and (= (size!15048 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15047 _keys!1025) (size!15048 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!21850 () Bool)

(declare-fun tp!42019 () Bool)

(assert (=> mapNonEmpty!21850 (= mapRes!21850 (and tp!42019 e!278626))))

(declare-fun mapRest!21850 () (Array (_ BitVec 32) ValueCell!6367))

(declare-fun mapKey!21850 () (_ BitVec 32))

(declare-fun mapValue!21850 () ValueCell!6367)

(assert (=> mapNonEmpty!21850 (= (arr!14696 _values!833) (store mapRest!21850 mapKey!21850 mapValue!21850))))

(declare-fun b!474625 () Bool)

(declare-fun e!278622 () Bool)

(declare-fun e!278624 () Bool)

(assert (=> b!474625 (= e!278622 (and e!278624 mapRes!21850))))

(declare-fun condMapEmpty!21850 () Bool)

(declare-fun mapDefault!21850 () ValueCell!6367)

