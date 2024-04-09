; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42310 () Bool)

(assert start!42310)

(declare-fun b_free!11807 () Bool)

(declare-fun b_next!11807 () Bool)

(assert (=> start!42310 (= b_free!11807 (not b_next!11807))))

(declare-fun tp!41449 () Bool)

(declare-fun b_and!20263 () Bool)

(assert (=> start!42310 (= tp!41449 b_and!20263)))

(declare-fun b!471829 () Bool)

(declare-fun e!276609 () Bool)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((array!30193 0))(
  ( (array!30194 (arr!14515 (Array (_ BitVec 32) (_ BitVec 64))) (size!14867 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30193)

(assert (=> b!471829 (= e!276609 (not (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!14867 _keys!1025)))))))

(declare-datatypes ((V!18751 0))(
  ( (V!18752 (val!6662 Int)) )
))
(declare-datatypes ((tuple2!8758 0))(
  ( (tuple2!8759 (_1!4389 (_ BitVec 64)) (_2!4389 V!18751)) )
))
(declare-datatypes ((List!8874 0))(
  ( (Nil!8871) (Cons!8870 (h!9726 tuple2!8758) (t!14848 List!8874)) )
))
(declare-datatypes ((ListLongMap!7685 0))(
  ( (ListLongMap!7686 (toList!3858 List!8874)) )
))
(declare-fun lt!214103 () ListLongMap!7685)

(declare-fun lt!214104 () ListLongMap!7685)

(assert (=> b!471829 (= lt!214103 lt!214104)))

(declare-fun minValueBefore!38 () V!18751)

(declare-fun zeroValue!794 () V!18751)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13842 0))(
  ( (Unit!13843) )
))
(declare-fun lt!214102 () Unit!13842)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((ValueCell!6274 0))(
  ( (ValueCellFull!6274 (v!8949 V!18751)) (EmptyCell!6274) )
))
(declare-datatypes ((array!30195 0))(
  ( (array!30196 (arr!14516 (Array (_ BitVec 32) ValueCell!6274)) (size!14868 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30195)

(declare-fun minValueAfter!38 () V!18751)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!215 (array!30193 array!30195 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18751 V!18751 V!18751 V!18751 (_ BitVec 32) Int) Unit!13842)

(assert (=> b!471829 (= lt!214102 (lemmaNoChangeToArrayThenSameMapNoExtras!215 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2020 (array!30193 array!30195 (_ BitVec 32) (_ BitVec 32) V!18751 V!18751 (_ BitVec 32) Int) ListLongMap!7685)

(assert (=> b!471829 (= lt!214104 (getCurrentListMapNoExtraKeys!2020 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!471829 (= lt!214103 (getCurrentListMapNoExtraKeys!2020 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!471830 () Bool)

(declare-fun res!281924 () Bool)

(assert (=> b!471830 (=> (not res!281924) (not e!276609))))

(declare-datatypes ((List!8875 0))(
  ( (Nil!8872) (Cons!8871 (h!9727 (_ BitVec 64)) (t!14849 List!8875)) )
))
(declare-fun arrayNoDuplicates!0 (array!30193 (_ BitVec 32) List!8875) Bool)

(assert (=> b!471830 (= res!281924 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8872))))

(declare-fun b!471831 () Bool)

(declare-fun res!281927 () Bool)

(assert (=> b!471831 (=> (not res!281927) (not e!276609))))

(assert (=> b!471831 (= res!281927 (and (= (size!14868 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14867 _keys!1025) (size!14868 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!471832 () Bool)

(declare-fun e!276613 () Bool)

(declare-fun tp_is_empty!13235 () Bool)

(assert (=> b!471832 (= e!276613 tp_is_empty!13235)))

(declare-fun b!471833 () Bool)

(declare-fun res!281925 () Bool)

(assert (=> b!471833 (=> (not res!281925) (not e!276609))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30193 (_ BitVec 32)) Bool)

(assert (=> b!471833 (= res!281925 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!471834 () Bool)

(declare-fun e!276611 () Bool)

(declare-fun mapRes!21559 () Bool)

(assert (=> b!471834 (= e!276611 (and e!276613 mapRes!21559))))

(declare-fun condMapEmpty!21559 () Bool)

(declare-fun mapDefault!21559 () ValueCell!6274)

