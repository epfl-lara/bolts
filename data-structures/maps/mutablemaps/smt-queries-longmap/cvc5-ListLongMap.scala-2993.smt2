; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42270 () Bool)

(assert start!42270)

(declare-fun b_free!11767 () Bool)

(declare-fun b_next!11767 () Bool)

(assert (=> start!42270 (= b_free!11767 (not b_next!11767))))

(declare-fun tp!41329 () Bool)

(declare-fun b_and!20223 () Bool)

(assert (=> start!42270 (= tp!41329 b_and!20223)))

(declare-fun mapIsEmpty!21499 () Bool)

(declare-fun mapRes!21499 () Bool)

(assert (=> mapIsEmpty!21499 mapRes!21499))

(declare-fun b!471409 () Bool)

(declare-fun res!281687 () Bool)

(declare-fun e!276309 () Bool)

(assert (=> b!471409 (=> (not res!281687) (not e!276309))))

(declare-datatypes ((array!30117 0))(
  ( (array!30118 (arr!14477 (Array (_ BitVec 32) (_ BitVec 64))) (size!14829 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30117)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30117 (_ BitVec 32)) Bool)

(assert (=> b!471409 (= res!281687 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!471410 () Bool)

(declare-fun e!276310 () Bool)

(declare-fun tp_is_empty!13195 () Bool)

(assert (=> b!471410 (= e!276310 tp_is_empty!13195)))

(declare-fun b!471411 () Bool)

(declare-fun e!276312 () Bool)

(assert (=> b!471411 (= e!276312 tp_is_empty!13195)))

(declare-fun b!471412 () Bool)

(declare-fun res!281686 () Bool)

(assert (=> b!471412 (=> (not res!281686) (not e!276309))))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((V!18699 0))(
  ( (V!18700 (val!6642 Int)) )
))
(declare-datatypes ((ValueCell!6254 0))(
  ( (ValueCellFull!6254 (v!8929 V!18699)) (EmptyCell!6254) )
))
(declare-datatypes ((array!30119 0))(
  ( (array!30120 (arr!14478 (Array (_ BitVec 32) ValueCell!6254)) (size!14830 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30119)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!471412 (= res!281686 (and (= (size!14830 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14829 _keys!1025) (size!14830 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!471413 () Bool)

(assert (=> b!471413 (= e!276309 (not true))))

(declare-datatypes ((tuple2!8724 0))(
  ( (tuple2!8725 (_1!4372 (_ BitVec 64)) (_2!4372 V!18699)) )
))
(declare-datatypes ((List!8843 0))(
  ( (Nil!8840) (Cons!8839 (h!9695 tuple2!8724) (t!14817 List!8843)) )
))
(declare-datatypes ((ListLongMap!7651 0))(
  ( (ListLongMap!7652 (toList!3841 List!8843)) )
))
(declare-fun lt!213924 () ListLongMap!7651)

(declare-fun lt!213922 () ListLongMap!7651)

(assert (=> b!471413 (= lt!213924 lt!213922)))

(declare-fun minValueBefore!38 () V!18699)

(declare-fun zeroValue!794 () V!18699)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13808 0))(
  ( (Unit!13809) )
))
(declare-fun lt!213923 () Unit!13808)

(declare-fun minValueAfter!38 () V!18699)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!198 (array!30117 array!30119 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18699 V!18699 V!18699 V!18699 (_ BitVec 32) Int) Unit!13808)

(assert (=> b!471413 (= lt!213923 (lemmaNoChangeToArrayThenSameMapNoExtras!198 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2003 (array!30117 array!30119 (_ BitVec 32) (_ BitVec 32) V!18699 V!18699 (_ BitVec 32) Int) ListLongMap!7651)

(assert (=> b!471413 (= lt!213922 (getCurrentListMapNoExtraKeys!2003 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!471413 (= lt!213924 (getCurrentListMapNoExtraKeys!2003 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!281684 () Bool)

(assert (=> start!42270 (=> (not res!281684) (not e!276309))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42270 (= res!281684 (validMask!0 mask!1365))))

(assert (=> start!42270 e!276309))

(assert (=> start!42270 tp_is_empty!13195))

(assert (=> start!42270 tp!41329))

(assert (=> start!42270 true))

(declare-fun array_inv!10444 (array!30117) Bool)

(assert (=> start!42270 (array_inv!10444 _keys!1025)))

(declare-fun e!276311 () Bool)

(declare-fun array_inv!10445 (array!30119) Bool)

(assert (=> start!42270 (and (array_inv!10445 _values!833) e!276311)))

(declare-fun b!471414 () Bool)

(declare-fun res!281685 () Bool)

(assert (=> b!471414 (=> (not res!281685) (not e!276309))))

(declare-datatypes ((List!8844 0))(
  ( (Nil!8841) (Cons!8840 (h!9696 (_ BitVec 64)) (t!14818 List!8844)) )
))
(declare-fun arrayNoDuplicates!0 (array!30117 (_ BitVec 32) List!8844) Bool)

(assert (=> b!471414 (= res!281685 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8841))))

(declare-fun b!471415 () Bool)

(assert (=> b!471415 (= e!276311 (and e!276312 mapRes!21499))))

(declare-fun condMapEmpty!21499 () Bool)

(declare-fun mapDefault!21499 () ValueCell!6254)

