; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42238 () Bool)

(assert start!42238)

(declare-fun b_free!11749 () Bool)

(declare-fun b_next!11749 () Bool)

(assert (=> start!42238 (= b_free!11749 (not b_next!11749))))

(declare-fun tp!41272 () Bool)

(declare-fun b_and!20197 () Bool)

(assert (=> start!42238 (= tp!41272 b_and!20197)))

(declare-fun mapNonEmpty!21469 () Bool)

(declare-fun mapRes!21469 () Bool)

(declare-fun tp!41271 () Bool)

(declare-fun e!276120 () Bool)

(assert (=> mapNonEmpty!21469 (= mapRes!21469 (and tp!41271 e!276120))))

(declare-datatypes ((V!18675 0))(
  ( (V!18676 (val!6633 Int)) )
))
(declare-datatypes ((ValueCell!6245 0))(
  ( (ValueCellFull!6245 (v!8920 V!18675)) (EmptyCell!6245) )
))
(declare-fun mapValue!21469 () ValueCell!6245)

(declare-datatypes ((array!30081 0))(
  ( (array!30082 (arr!14460 (Array (_ BitVec 32) ValueCell!6245)) (size!14812 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30081)

(declare-fun mapKey!21469 () (_ BitVec 32))

(declare-fun mapRest!21469 () (Array (_ BitVec 32) ValueCell!6245))

(assert (=> mapNonEmpty!21469 (= (arr!14460 _values!833) (store mapRest!21469 mapKey!21469 mapValue!21469))))

(declare-fun b!471136 () Bool)

(declare-fun res!281545 () Bool)

(declare-fun e!276121 () Bool)

(assert (=> b!471136 (=> (not res!281545) (not e!276121))))

(declare-datatypes ((array!30083 0))(
  ( (array!30084 (arr!14461 (Array (_ BitVec 32) (_ BitVec 64))) (size!14813 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30083)

(declare-datatypes ((List!8828 0))(
  ( (Nil!8825) (Cons!8824 (h!9680 (_ BitVec 64)) (t!14800 List!8828)) )
))
(declare-fun arrayNoDuplicates!0 (array!30083 (_ BitVec 32) List!8828) Bool)

(assert (=> b!471136 (= res!281545 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8825))))

(declare-fun b!471137 () Bool)

(declare-fun res!281548 () Bool)

(assert (=> b!471137 (=> (not res!281548) (not e!276121))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30083 (_ BitVec 32)) Bool)

(assert (=> b!471137 (= res!281548 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!471138 () Bool)

(declare-fun tp_is_empty!13177 () Bool)

(assert (=> b!471138 (= e!276120 tp_is_empty!13177)))

(declare-fun b!471139 () Bool)

(declare-fun res!281546 () Bool)

(assert (=> b!471139 (=> (not res!281546) (not e!276121))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!471139 (= res!281546 (and (= (size!14812 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14813 _keys!1025) (size!14812 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!471140 () Bool)

(assert (=> b!471140 (= e!276121 (not (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsle #b00000000000000000000000000000000 (size!14813 _keys!1025)))))))

(declare-datatypes ((tuple2!8708 0))(
  ( (tuple2!8709 (_1!4364 (_ BitVec 64)) (_2!4364 V!18675)) )
))
(declare-datatypes ((List!8829 0))(
  ( (Nil!8826) (Cons!8825 (h!9681 tuple2!8708) (t!14801 List!8829)) )
))
(declare-datatypes ((ListLongMap!7635 0))(
  ( (ListLongMap!7636 (toList!3833 List!8829)) )
))
(declare-fun lt!213803 () ListLongMap!7635)

(declare-fun lt!213802 () ListLongMap!7635)

(assert (=> b!471140 (= lt!213803 lt!213802)))

(declare-fun minValueBefore!38 () V!18675)

(declare-fun zeroValue!794 () V!18675)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18675)

(declare-datatypes ((Unit!13792 0))(
  ( (Unit!13793) )
))
(declare-fun lt!213801 () Unit!13792)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!190 (array!30083 array!30081 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18675 V!18675 V!18675 V!18675 (_ BitVec 32) Int) Unit!13792)

(assert (=> b!471140 (= lt!213801 (lemmaNoChangeToArrayThenSameMapNoExtras!190 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1995 (array!30083 array!30081 (_ BitVec 32) (_ BitVec 32) V!18675 V!18675 (_ BitVec 32) Int) ListLongMap!7635)

(assert (=> b!471140 (= lt!213802 (getCurrentListMapNoExtraKeys!1995 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!471140 (= lt!213803 (getCurrentListMapNoExtraKeys!1995 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!471141 () Bool)

(declare-fun e!276122 () Bool)

(declare-fun e!276123 () Bool)

(assert (=> b!471141 (= e!276122 (and e!276123 mapRes!21469))))

(declare-fun condMapEmpty!21469 () Bool)

(declare-fun mapDefault!21469 () ValueCell!6245)

