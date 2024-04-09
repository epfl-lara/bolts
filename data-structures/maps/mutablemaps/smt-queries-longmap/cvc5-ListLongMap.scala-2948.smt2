; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41916 () Bool)

(assert start!41916)

(declare-fun b_free!11497 () Bool)

(declare-fun b_next!11497 () Bool)

(assert (=> start!41916 (= b_free!11497 (not b_next!11497))))

(declare-fun tp!40503 () Bool)

(declare-fun b_and!19903 () Bool)

(assert (=> start!41916 (= tp!40503 b_and!19903)))

(declare-fun b!467675 () Bool)

(declare-fun res!279568 () Bool)

(declare-fun e!273635 () Bool)

(assert (=> b!467675 (=> (not res!279568) (not e!273635))))

(declare-datatypes ((array!29585 0))(
  ( (array!29586 (arr!14216 (Array (_ BitVec 32) (_ BitVec 64))) (size!14568 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29585)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29585 (_ BitVec 32)) Bool)

(assert (=> b!467675 (= res!279568 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!467676 () Bool)

(declare-fun res!279570 () Bool)

(assert (=> b!467676 (=> (not res!279570) (not e!273635))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((V!18339 0))(
  ( (V!18340 (val!6507 Int)) )
))
(declare-datatypes ((ValueCell!6119 0))(
  ( (ValueCellFull!6119 (v!8792 V!18339)) (EmptyCell!6119) )
))
(declare-datatypes ((array!29587 0))(
  ( (array!29588 (arr!14217 (Array (_ BitVec 32) ValueCell!6119)) (size!14569 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29587)

(assert (=> b!467676 (= res!279570 (and (= (size!14569 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14568 _keys!1025) (size!14569 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!21079 () Bool)

(declare-fun mapRes!21079 () Bool)

(assert (=> mapIsEmpty!21079 mapRes!21079))

(declare-fun b!467677 () Bool)

(declare-fun res!279569 () Bool)

(assert (=> b!467677 (=> (not res!279569) (not e!273635))))

(declare-datatypes ((List!8645 0))(
  ( (Nil!8642) (Cons!8641 (h!9497 (_ BitVec 64)) (t!14609 List!8645)) )
))
(declare-fun arrayNoDuplicates!0 (array!29585 (_ BitVec 32) List!8645) Bool)

(assert (=> b!467677 (= res!279569 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8642))))

(declare-fun b!467678 () Bool)

(declare-fun e!273637 () Bool)

(assert (=> b!467678 (= e!273635 (not e!273637))))

(declare-fun res!279571 () Bool)

(assert (=> b!467678 (=> res!279571 e!273637)))

(assert (=> b!467678 (= res!279571 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!8526 0))(
  ( (tuple2!8527 (_1!4273 (_ BitVec 64)) (_2!4273 V!18339)) )
))
(declare-datatypes ((List!8646 0))(
  ( (Nil!8643) (Cons!8642 (h!9498 tuple2!8526) (t!14610 List!8646)) )
))
(declare-datatypes ((ListLongMap!7453 0))(
  ( (ListLongMap!7454 (toList!3742 List!8646)) )
))
(declare-fun lt!211511 () ListLongMap!7453)

(declare-fun lt!211512 () ListLongMap!7453)

(assert (=> b!467678 (= lt!211511 lt!211512)))

(declare-fun minValueBefore!38 () V!18339)

(declare-datatypes ((Unit!13605 0))(
  ( (Unit!13606) )
))
(declare-fun lt!211513 () Unit!13605)

(declare-fun zeroValue!794 () V!18339)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18339)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!103 (array!29585 array!29587 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18339 V!18339 V!18339 V!18339 (_ BitVec 32) Int) Unit!13605)

(assert (=> b!467678 (= lt!211513 (lemmaNoChangeToArrayThenSameMapNoExtras!103 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1908 (array!29585 array!29587 (_ BitVec 32) (_ BitVec 32) V!18339 V!18339 (_ BitVec 32) Int) ListLongMap!7453)

(assert (=> b!467678 (= lt!211512 (getCurrentListMapNoExtraKeys!1908 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!467678 (= lt!211511 (getCurrentListMapNoExtraKeys!1908 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!279567 () Bool)

(assert (=> start!41916 (=> (not res!279567) (not e!273635))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41916 (= res!279567 (validMask!0 mask!1365))))

(assert (=> start!41916 e!273635))

(declare-fun tp_is_empty!12925 () Bool)

(assert (=> start!41916 tp_is_empty!12925))

(assert (=> start!41916 tp!40503))

(assert (=> start!41916 true))

(declare-fun array_inv!10254 (array!29585) Bool)

(assert (=> start!41916 (array_inv!10254 _keys!1025)))

(declare-fun e!273633 () Bool)

(declare-fun array_inv!10255 (array!29587) Bool)

(assert (=> start!41916 (and (array_inv!10255 _values!833) e!273633)))

(declare-fun b!467679 () Bool)

(assert (=> b!467679 (= e!273637 true)))

(declare-fun lt!211510 () ListLongMap!7453)

(declare-fun getCurrentListMap!2160 (array!29585 array!29587 (_ BitVec 32) (_ BitVec 32) V!18339 V!18339 (_ BitVec 32) Int) ListLongMap!7453)

(assert (=> b!467679 (= lt!211510 (getCurrentListMap!2160 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!467680 () Bool)

(declare-fun e!273638 () Bool)

(assert (=> b!467680 (= e!273638 tp_is_empty!12925)))

(declare-fun b!467681 () Bool)

(declare-fun e!273634 () Bool)

(assert (=> b!467681 (= e!273633 (and e!273634 mapRes!21079))))

(declare-fun condMapEmpty!21079 () Bool)

(declare-fun mapDefault!21079 () ValueCell!6119)

