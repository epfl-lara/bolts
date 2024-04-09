; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42236 () Bool)

(assert start!42236)

(declare-fun b_free!11747 () Bool)

(declare-fun b_next!11747 () Bool)

(assert (=> start!42236 (= b_free!11747 (not b_next!11747))))

(declare-fun tp!41265 () Bool)

(declare-fun b_and!20195 () Bool)

(assert (=> start!42236 (= tp!41265 b_and!20195)))

(declare-fun mapNonEmpty!21466 () Bool)

(declare-fun mapRes!21466 () Bool)

(declare-fun tp!41266 () Bool)

(declare-fun e!276107 () Bool)

(assert (=> mapNonEmpty!21466 (= mapRes!21466 (and tp!41266 e!276107))))

(declare-fun mapKey!21466 () (_ BitVec 32))

(declare-datatypes ((V!18671 0))(
  ( (V!18672 (val!6632 Int)) )
))
(declare-datatypes ((ValueCell!6244 0))(
  ( (ValueCellFull!6244 (v!8919 V!18671)) (EmptyCell!6244) )
))
(declare-fun mapValue!21466 () ValueCell!6244)

(declare-fun mapRest!21466 () (Array (_ BitVec 32) ValueCell!6244))

(declare-datatypes ((array!30077 0))(
  ( (array!30078 (arr!14458 (Array (_ BitVec 32) ValueCell!6244)) (size!14810 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30077)

(assert (=> mapNonEmpty!21466 (= (arr!14458 _values!833) (store mapRest!21466 mapKey!21466 mapValue!21466))))

(declare-fun mapIsEmpty!21466 () Bool)

(assert (=> mapIsEmpty!21466 mapRes!21466))

(declare-fun b!471114 () Bool)

(declare-fun res!281535 () Bool)

(declare-fun e!276106 () Bool)

(assert (=> b!471114 (=> (not res!281535) (not e!276106))))

(declare-datatypes ((array!30079 0))(
  ( (array!30080 (arr!14459 (Array (_ BitVec 32) (_ BitVec 64))) (size!14811 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30079)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30079 (_ BitVec 32)) Bool)

(assert (=> b!471114 (= res!281535 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!471115 () Bool)

(declare-fun e!276108 () Bool)

(declare-fun tp_is_empty!13175 () Bool)

(assert (=> b!471115 (= e!276108 tp_is_empty!13175)))

(declare-fun b!471116 () Bool)

(declare-fun res!281533 () Bool)

(assert (=> b!471116 (=> (not res!281533) (not e!276106))))

(declare-datatypes ((List!8826 0))(
  ( (Nil!8823) (Cons!8822 (h!9678 (_ BitVec 64)) (t!14798 List!8826)) )
))
(declare-fun arrayNoDuplicates!0 (array!30079 (_ BitVec 32) List!8826) Bool)

(assert (=> b!471116 (= res!281533 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8823))))

(declare-fun b!471117 () Bool)

(declare-fun res!281536 () Bool)

(assert (=> b!471117 (=> (not res!281536) (not e!276106))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!471117 (= res!281536 (and (= (size!14810 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14811 _keys!1025) (size!14810 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!471118 () Bool)

(assert (=> b!471118 (= e!276106 (not true))))

(declare-datatypes ((tuple2!8706 0))(
  ( (tuple2!8707 (_1!4363 (_ BitVec 64)) (_2!4363 V!18671)) )
))
(declare-datatypes ((List!8827 0))(
  ( (Nil!8824) (Cons!8823 (h!9679 tuple2!8706) (t!14799 List!8827)) )
))
(declare-datatypes ((ListLongMap!7633 0))(
  ( (ListLongMap!7634 (toList!3832 List!8827)) )
))
(declare-fun lt!213793 () ListLongMap!7633)

(declare-fun lt!213792 () ListLongMap!7633)

(assert (=> b!471118 (= lt!213793 lt!213792)))

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueBefore!38 () V!18671)

(declare-fun zeroValue!794 () V!18671)

(declare-datatypes ((Unit!13790 0))(
  ( (Unit!13791) )
))
(declare-fun lt!213794 () Unit!13790)

(declare-fun minValueAfter!38 () V!18671)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!189 (array!30079 array!30077 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18671 V!18671 V!18671 V!18671 (_ BitVec 32) Int) Unit!13790)

(assert (=> b!471118 (= lt!213794 (lemmaNoChangeToArrayThenSameMapNoExtras!189 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1994 (array!30079 array!30077 (_ BitVec 32) (_ BitVec 32) V!18671 V!18671 (_ BitVec 32) Int) ListLongMap!7633)

(assert (=> b!471118 (= lt!213792 (getCurrentListMapNoExtraKeys!1994 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!471118 (= lt!213793 (getCurrentListMapNoExtraKeys!1994 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!471120 () Bool)

(declare-fun e!276105 () Bool)

(assert (=> b!471120 (= e!276105 (and e!276108 mapRes!21466))))

(declare-fun condMapEmpty!21466 () Bool)

(declare-fun mapDefault!21466 () ValueCell!6244)

