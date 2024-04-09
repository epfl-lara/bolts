; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42258 () Bool)

(assert start!42258)

(declare-fun b_free!11755 () Bool)

(declare-fun b_next!11755 () Bool)

(assert (=> start!42258 (= b_free!11755 (not b_next!11755))))

(declare-fun tp!41292 () Bool)

(declare-fun b_and!20211 () Bool)

(assert (=> start!42258 (= tp!41292 b_and!20211)))

(declare-fun b!471283 () Bool)

(declare-fun res!281612 () Bool)

(declare-fun e!276220 () Bool)

(assert (=> b!471283 (=> (not res!281612) (not e!276220))))

(declare-datatypes ((array!30095 0))(
  ( (array!30096 (arr!14466 (Array (_ BitVec 32) (_ BitVec 64))) (size!14818 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30095)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30095 (_ BitVec 32)) Bool)

(assert (=> b!471283 (= res!281612 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapIsEmpty!21481 () Bool)

(declare-fun mapRes!21481 () Bool)

(assert (=> mapIsEmpty!21481 mapRes!21481))

(declare-fun b!471284 () Bool)

(declare-fun e!276222 () Bool)

(declare-fun tp_is_empty!13183 () Bool)

(assert (=> b!471284 (= e!276222 tp_is_empty!13183)))

(declare-fun res!281615 () Bool)

(assert (=> start!42258 (=> (not res!281615) (not e!276220))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42258 (= res!281615 (validMask!0 mask!1365))))

(assert (=> start!42258 e!276220))

(assert (=> start!42258 tp_is_empty!13183))

(assert (=> start!42258 tp!41292))

(assert (=> start!42258 true))

(declare-fun array_inv!10436 (array!30095) Bool)

(assert (=> start!42258 (array_inv!10436 _keys!1025)))

(declare-datatypes ((V!18683 0))(
  ( (V!18684 (val!6636 Int)) )
))
(declare-datatypes ((ValueCell!6248 0))(
  ( (ValueCellFull!6248 (v!8923 V!18683)) (EmptyCell!6248) )
))
(declare-datatypes ((array!30097 0))(
  ( (array!30098 (arr!14467 (Array (_ BitVec 32) ValueCell!6248)) (size!14819 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30097)

(declare-fun e!276219 () Bool)

(declare-fun array_inv!10437 (array!30097) Bool)

(assert (=> start!42258 (and (array_inv!10437 _values!833) e!276219)))

(declare-fun b!471285 () Bool)

(declare-fun res!281613 () Bool)

(assert (=> b!471285 (=> (not res!281613) (not e!276220))))

(declare-datatypes ((List!8833 0))(
  ( (Nil!8830) (Cons!8829 (h!9685 (_ BitVec 64)) (t!14807 List!8833)) )
))
(declare-fun arrayNoDuplicates!0 (array!30095 (_ BitVec 32) List!8833) Bool)

(assert (=> b!471285 (= res!281613 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8830))))

(declare-fun mapNonEmpty!21481 () Bool)

(declare-fun tp!41293 () Bool)

(assert (=> mapNonEmpty!21481 (= mapRes!21481 (and tp!41293 e!276222))))

(declare-fun mapValue!21481 () ValueCell!6248)

(declare-fun mapKey!21481 () (_ BitVec 32))

(declare-fun mapRest!21481 () (Array (_ BitVec 32) ValueCell!6248))

(assert (=> mapNonEmpty!21481 (= (arr!14467 _values!833) (store mapRest!21481 mapKey!21481 mapValue!21481))))

(declare-fun b!471286 () Bool)

(declare-fun e!276223 () Bool)

(assert (=> b!471286 (= e!276223 tp_is_empty!13183)))

(declare-fun b!471287 () Bool)

(assert (=> b!471287 (= e!276220 (not true))))

(declare-datatypes ((tuple2!8714 0))(
  ( (tuple2!8715 (_1!4367 (_ BitVec 64)) (_2!4367 V!18683)) )
))
(declare-datatypes ((List!8834 0))(
  ( (Nil!8831) (Cons!8830 (h!9686 tuple2!8714) (t!14808 List!8834)) )
))
(declare-datatypes ((ListLongMap!7641 0))(
  ( (ListLongMap!7642 (toList!3836 List!8834)) )
))
(declare-fun lt!213869 () ListLongMap!7641)

(declare-fun lt!213870 () ListLongMap!7641)

(assert (=> b!471287 (= lt!213869 lt!213870)))

(declare-fun minValueBefore!38 () V!18683)

(declare-fun zeroValue!794 () V!18683)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13798 0))(
  ( (Unit!13799) )
))
(declare-fun lt!213868 () Unit!13798)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18683)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!193 (array!30095 array!30097 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18683 V!18683 V!18683 V!18683 (_ BitVec 32) Int) Unit!13798)

(assert (=> b!471287 (= lt!213868 (lemmaNoChangeToArrayThenSameMapNoExtras!193 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1998 (array!30095 array!30097 (_ BitVec 32) (_ BitVec 32) V!18683 V!18683 (_ BitVec 32) Int) ListLongMap!7641)

(assert (=> b!471287 (= lt!213870 (getCurrentListMapNoExtraKeys!1998 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!471287 (= lt!213869 (getCurrentListMapNoExtraKeys!1998 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!471288 () Bool)

(declare-fun res!281614 () Bool)

(assert (=> b!471288 (=> (not res!281614) (not e!276220))))

(assert (=> b!471288 (= res!281614 (and (= (size!14819 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14818 _keys!1025) (size!14819 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!471289 () Bool)

(assert (=> b!471289 (= e!276219 (and e!276223 mapRes!21481))))

(declare-fun condMapEmpty!21481 () Bool)

(declare-fun mapDefault!21481 () ValueCell!6248)

