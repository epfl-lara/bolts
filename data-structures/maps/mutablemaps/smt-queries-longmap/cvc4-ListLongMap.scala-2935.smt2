; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41810 () Bool)

(assert start!41810)

(declare-fun b_free!11423 () Bool)

(declare-fun b_next!11423 () Bool)

(assert (=> start!41810 (= b_free!11423 (not b_next!11423))))

(declare-fun tp!40276 () Bool)

(declare-fun b_and!19809 () Bool)

(assert (=> start!41810 (= tp!40276 b_and!19809)))

(declare-fun b!466599 () Bool)

(declare-fun res!278984 () Bool)

(declare-fun e!272888 () Bool)

(assert (=> b!466599 (=> (not res!278984) (not e!272888))))

(declare-datatypes ((array!29437 0))(
  ( (array!29438 (arr!14144 (Array (_ BitVec 32) (_ BitVec 64))) (size!14496 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29437)

(declare-datatypes ((List!8591 0))(
  ( (Nil!8588) (Cons!8587 (h!9443 (_ BitVec 64)) (t!14551 List!8591)) )
))
(declare-fun arrayNoDuplicates!0 (array!29437 (_ BitVec 32) List!8591) Bool)

(assert (=> b!466599 (= res!278984 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8588))))

(declare-fun b!466600 () Bool)

(declare-fun e!272886 () Bool)

(assert (=> b!466600 (= e!272886 true)))

(declare-datatypes ((V!18239 0))(
  ( (V!18240 (val!6470 Int)) )
))
(declare-fun zeroValue!794 () V!18239)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((tuple2!8474 0))(
  ( (tuple2!8475 (_1!4247 (_ BitVec 64)) (_2!4247 V!18239)) )
))
(declare-datatypes ((List!8592 0))(
  ( (Nil!8589) (Cons!8588 (h!9444 tuple2!8474) (t!14552 List!8592)) )
))
(declare-datatypes ((ListLongMap!7401 0))(
  ( (ListLongMap!7402 (toList!3716 List!8592)) )
))
(declare-fun lt!210977 () ListLongMap!7401)

(declare-datatypes ((ValueCell!6082 0))(
  ( (ValueCellFull!6082 (v!8754 V!18239)) (EmptyCell!6082) )
))
(declare-datatypes ((array!29439 0))(
  ( (array!29440 (arr!14145 (Array (_ BitVec 32) ValueCell!6082)) (size!14497 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29439)

(declare-fun minValueAfter!38 () V!18239)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMap!2153 (array!29437 array!29439 (_ BitVec 32) (_ BitVec 32) V!18239 V!18239 (_ BitVec 32) Int) ListLongMap!7401)

(assert (=> b!466600 (= lt!210977 (getCurrentListMap!2153 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!210976 () ListLongMap!7401)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun minValueBefore!38 () V!18239)

(declare-fun +!1644 (ListLongMap!7401 tuple2!8474) ListLongMap!7401)

(assert (=> b!466600 (= lt!210976 (+!1644 (getCurrentListMap!2153 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8475 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun b!466602 () Bool)

(declare-fun e!272883 () Bool)

(declare-fun tp_is_empty!12851 () Bool)

(assert (=> b!466602 (= e!272883 tp_is_empty!12851)))

(declare-fun b!466603 () Bool)

(assert (=> b!466603 (= e!272888 (not e!272886))))

(declare-fun res!278982 () Bool)

(assert (=> b!466603 (=> res!278982 e!272886)))

(assert (=> b!466603 (= res!278982 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!210978 () ListLongMap!7401)

(declare-fun lt!210975 () ListLongMap!7401)

(assert (=> b!466603 (= lt!210978 lt!210975)))

(declare-datatypes ((Unit!13551 0))(
  ( (Unit!13552) )
))
(declare-fun lt!210979 () Unit!13551)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!77 (array!29437 array!29439 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18239 V!18239 V!18239 V!18239 (_ BitVec 32) Int) Unit!13551)

(assert (=> b!466603 (= lt!210979 (lemmaNoChangeToArrayThenSameMapNoExtras!77 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1882 (array!29437 array!29439 (_ BitVec 32) (_ BitVec 32) V!18239 V!18239 (_ BitVec 32) Int) ListLongMap!7401)

(assert (=> b!466603 (= lt!210975 (getCurrentListMapNoExtraKeys!1882 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!466603 (= lt!210978 (getCurrentListMapNoExtraKeys!1882 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!466604 () Bool)

(declare-fun res!278981 () Bool)

(assert (=> b!466604 (=> (not res!278981) (not e!272888))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29437 (_ BitVec 32)) Bool)

(assert (=> b!466604 (= res!278981 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!466605 () Bool)

(declare-fun e!272885 () Bool)

(assert (=> b!466605 (= e!272885 tp_is_empty!12851)))

(declare-fun b!466606 () Bool)

(declare-fun res!278983 () Bool)

(assert (=> b!466606 (=> (not res!278983) (not e!272888))))

(assert (=> b!466606 (= res!278983 (and (= (size!14497 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14496 _keys!1025) (size!14497 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!20962 () Bool)

(declare-fun mapRes!20962 () Bool)

(declare-fun tp!40275 () Bool)

(assert (=> mapNonEmpty!20962 (= mapRes!20962 (and tp!40275 e!272883))))

(declare-fun mapRest!20962 () (Array (_ BitVec 32) ValueCell!6082))

(declare-fun mapValue!20962 () ValueCell!6082)

(declare-fun mapKey!20962 () (_ BitVec 32))

(assert (=> mapNonEmpty!20962 (= (arr!14145 _values!833) (store mapRest!20962 mapKey!20962 mapValue!20962))))

(declare-fun mapIsEmpty!20962 () Bool)

(assert (=> mapIsEmpty!20962 mapRes!20962))

(declare-fun b!466601 () Bool)

(declare-fun e!272884 () Bool)

(assert (=> b!466601 (= e!272884 (and e!272885 mapRes!20962))))

(declare-fun condMapEmpty!20962 () Bool)

(declare-fun mapDefault!20962 () ValueCell!6082)

