; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42288 () Bool)

(assert start!42288)

(declare-fun b_free!11785 () Bool)

(declare-fun b_next!11785 () Bool)

(assert (=> start!42288 (= b_free!11785 (not b_next!11785))))

(declare-fun tp!41383 () Bool)

(declare-fun b_and!20241 () Bool)

(assert (=> start!42288 (= tp!41383 b_and!20241)))

(declare-fun b!471598 () Bool)

(declare-fun e!276448 () Bool)

(declare-fun tp_is_empty!13213 () Bool)

(assert (=> b!471598 (= e!276448 tp_is_empty!13213)))

(declare-fun mapIsEmpty!21526 () Bool)

(declare-fun mapRes!21526 () Bool)

(assert (=> mapIsEmpty!21526 mapRes!21526))

(declare-fun b!471599 () Bool)

(declare-fun res!281792 () Bool)

(declare-fun e!276447 () Bool)

(assert (=> b!471599 (=> (not res!281792) (not e!276447))))

(declare-datatypes ((array!30153 0))(
  ( (array!30154 (arr!14495 (Array (_ BitVec 32) (_ BitVec 64))) (size!14847 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30153)

(declare-datatypes ((List!8856 0))(
  ( (Nil!8853) (Cons!8852 (h!9708 (_ BitVec 64)) (t!14830 List!8856)) )
))
(declare-fun arrayNoDuplicates!0 (array!30153 (_ BitVec 32) List!8856) Bool)

(assert (=> b!471599 (= res!281792 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8853))))

(declare-fun b!471600 () Bool)

(declare-fun res!281793 () Bool)

(assert (=> b!471600 (=> (not res!281793) (not e!276447))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((V!18723 0))(
  ( (V!18724 (val!6651 Int)) )
))
(declare-datatypes ((ValueCell!6263 0))(
  ( (ValueCellFull!6263 (v!8938 V!18723)) (EmptyCell!6263) )
))
(declare-datatypes ((array!30155 0))(
  ( (array!30156 (arr!14496 (Array (_ BitVec 32) ValueCell!6263)) (size!14848 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30155)

(assert (=> b!471600 (= res!281793 (and (= (size!14848 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14847 _keys!1025) (size!14848 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!21526 () Bool)

(declare-fun tp!41382 () Bool)

(assert (=> mapNonEmpty!21526 (= mapRes!21526 (and tp!41382 e!276448))))

(declare-fun mapKey!21526 () (_ BitVec 32))

(declare-fun mapRest!21526 () (Array (_ BitVec 32) ValueCell!6263))

(declare-fun mapValue!21526 () ValueCell!6263)

(assert (=> mapNonEmpty!21526 (= (arr!14496 _values!833) (store mapRest!21526 mapKey!21526 mapValue!21526))))

(declare-fun res!281794 () Bool)

(assert (=> start!42288 (=> (not res!281794) (not e!276447))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42288 (= res!281794 (validMask!0 mask!1365))))

(assert (=> start!42288 e!276447))

(assert (=> start!42288 tp_is_empty!13213))

(assert (=> start!42288 tp!41383))

(assert (=> start!42288 true))

(declare-fun array_inv!10458 (array!30153) Bool)

(assert (=> start!42288 (array_inv!10458 _keys!1025)))

(declare-fun e!276446 () Bool)

(declare-fun array_inv!10459 (array!30155) Bool)

(assert (=> start!42288 (and (array_inv!10459 _values!833) e!276446)))

(declare-fun b!471601 () Bool)

(assert (=> b!471601 (= e!276447 (not true))))

(declare-datatypes ((tuple2!8740 0))(
  ( (tuple2!8741 (_1!4380 (_ BitVec 64)) (_2!4380 V!18723)) )
))
(declare-datatypes ((List!8857 0))(
  ( (Nil!8854) (Cons!8853 (h!9709 tuple2!8740) (t!14831 List!8857)) )
))
(declare-datatypes ((ListLongMap!7667 0))(
  ( (ListLongMap!7668 (toList!3849 List!8857)) )
))
(declare-fun lt!214005 () ListLongMap!7667)

(declare-fun lt!214004 () ListLongMap!7667)

(assert (=> b!471601 (= lt!214005 lt!214004)))

(declare-fun minValueBefore!38 () V!18723)

(declare-datatypes ((Unit!13824 0))(
  ( (Unit!13825) )
))
(declare-fun lt!214003 () Unit!13824)

(declare-fun zeroValue!794 () V!18723)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18723)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!206 (array!30153 array!30155 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18723 V!18723 V!18723 V!18723 (_ BitVec 32) Int) Unit!13824)

(assert (=> b!471601 (= lt!214003 (lemmaNoChangeToArrayThenSameMapNoExtras!206 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2011 (array!30153 array!30155 (_ BitVec 32) (_ BitVec 32) V!18723 V!18723 (_ BitVec 32) Int) ListLongMap!7667)

(assert (=> b!471601 (= lt!214004 (getCurrentListMapNoExtraKeys!2011 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!471601 (= lt!214005 (getCurrentListMapNoExtraKeys!2011 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!471602 () Bool)

(declare-fun res!281795 () Bool)

(assert (=> b!471602 (=> (not res!281795) (not e!276447))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30153 (_ BitVec 32)) Bool)

(assert (=> b!471602 (= res!281795 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!471603 () Bool)

(declare-fun e!276444 () Bool)

(assert (=> b!471603 (= e!276446 (and e!276444 mapRes!21526))))

(declare-fun condMapEmpty!21526 () Bool)

(declare-fun mapDefault!21526 () ValueCell!6263)

