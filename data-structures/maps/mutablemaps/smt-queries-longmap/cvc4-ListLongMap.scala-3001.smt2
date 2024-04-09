; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42336 () Bool)

(assert start!42336)

(declare-fun b_free!11819 () Bool)

(declare-fun b_next!11819 () Bool)

(assert (=> start!42336 (= b_free!11819 (not b_next!11819))))

(declare-fun tp!41488 () Bool)

(declare-fun b_and!20283 () Bool)

(assert (=> start!42336 (= tp!41488 b_and!20283)))

(declare-fun b!472057 () Bool)

(declare-fun res!282044 () Bool)

(declare-fun e!276773 () Bool)

(assert (=> b!472057 (=> (not res!282044) (not e!276773))))

(declare-datatypes ((array!30219 0))(
  ( (array!30220 (arr!14527 (Array (_ BitVec 32) (_ BitVec 64))) (size!14879 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30219)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30219 (_ BitVec 32)) Bool)

(assert (=> b!472057 (= res!282044 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!472058 () Bool)

(declare-fun e!276771 () Bool)

(assert (=> b!472058 (= e!276773 (not e!276771))))

(declare-fun res!282045 () Bool)

(assert (=> b!472058 (=> res!282045 e!276771)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!472058 (= res!282045 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!18767 0))(
  ( (V!18768 (val!6668 Int)) )
))
(declare-datatypes ((tuple2!8768 0))(
  ( (tuple2!8769 (_1!4394 (_ BitVec 64)) (_2!4394 V!18767)) )
))
(declare-datatypes ((List!8884 0))(
  ( (Nil!8881) (Cons!8880 (h!9736 tuple2!8768) (t!14860 List!8884)) )
))
(declare-datatypes ((ListLongMap!7695 0))(
  ( (ListLongMap!7696 (toList!3863 List!8884)) )
))
(declare-fun lt!214213 () ListLongMap!7695)

(declare-fun lt!214214 () ListLongMap!7695)

(assert (=> b!472058 (= lt!214213 lt!214214)))

(declare-fun minValueBefore!38 () V!18767)

(declare-datatypes ((Unit!13850 0))(
  ( (Unit!13851) )
))
(declare-fun lt!214215 () Unit!13850)

(declare-fun zeroValue!794 () V!18767)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((ValueCell!6280 0))(
  ( (ValueCellFull!6280 (v!8955 V!18767)) (EmptyCell!6280) )
))
(declare-datatypes ((array!30221 0))(
  ( (array!30222 (arr!14528 (Array (_ BitVec 32) ValueCell!6280)) (size!14880 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30221)

(declare-fun minValueAfter!38 () V!18767)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!219 (array!30219 array!30221 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18767 V!18767 V!18767 V!18767 (_ BitVec 32) Int) Unit!13850)

(assert (=> b!472058 (= lt!214215 (lemmaNoChangeToArrayThenSameMapNoExtras!219 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2024 (array!30219 array!30221 (_ BitVec 32) (_ BitVec 32) V!18767 V!18767 (_ BitVec 32) Int) ListLongMap!7695)

(assert (=> b!472058 (= lt!214214 (getCurrentListMapNoExtraKeys!2024 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!472058 (= lt!214213 (getCurrentListMapNoExtraKeys!2024 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!282046 () Bool)

(assert (=> start!42336 (=> (not res!282046) (not e!276773))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42336 (= res!282046 (validMask!0 mask!1365))))

(assert (=> start!42336 e!276773))

(declare-fun tp_is_empty!13247 () Bool)

(assert (=> start!42336 tp_is_empty!13247))

(assert (=> start!42336 tp!41488))

(assert (=> start!42336 true))

(declare-fun array_inv!10480 (array!30219) Bool)

(assert (=> start!42336 (array_inv!10480 _keys!1025)))

(declare-fun e!276774 () Bool)

(declare-fun array_inv!10481 (array!30221) Bool)

(assert (=> start!42336 (and (array_inv!10481 _values!833) e!276774)))

(declare-fun b!472059 () Bool)

(assert (=> b!472059 (= e!276771 true)))

(declare-fun lt!214216 () ListLongMap!7695)

(declare-fun getCurrentListMap!2211 (array!30219 array!30221 (_ BitVec 32) (_ BitVec 32) V!18767 V!18767 (_ BitVec 32) Int) ListLongMap!7695)

(assert (=> b!472059 (= lt!214216 (getCurrentListMap!2211 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472060 () Bool)

(declare-fun res!282048 () Bool)

(assert (=> b!472060 (=> (not res!282048) (not e!276773))))

(assert (=> b!472060 (= res!282048 (and (= (size!14880 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14879 _keys!1025) (size!14880 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!472061 () Bool)

(declare-fun e!276772 () Bool)

(assert (=> b!472061 (= e!276772 tp_is_empty!13247)))

(declare-fun b!472062 () Bool)

(declare-fun e!276776 () Bool)

(declare-fun mapRes!21580 () Bool)

(assert (=> b!472062 (= e!276774 (and e!276776 mapRes!21580))))

(declare-fun condMapEmpty!21580 () Bool)

(declare-fun mapDefault!21580 () ValueCell!6280)

