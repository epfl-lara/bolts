; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105964 () Bool)

(assert start!105964)

(declare-fun b_free!27457 () Bool)

(declare-fun b_next!27457 () Bool)

(assert (=> start!105964 (= b_free!27457 (not b_next!27457))))

(declare-fun tp!95906 () Bool)

(declare-fun b_and!45383 () Bool)

(assert (=> start!105964 (= tp!95906 b_and!45383)))

(declare-fun b!1261535 () Bool)

(declare-fun e!718055 () Bool)

(declare-fun e!718058 () Bool)

(assert (=> b!1261535 (= e!718055 (not e!718058))))

(declare-fun res!840691 () Bool)

(assert (=> b!1261535 (=> res!840691 e!718058)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1261535 (= res!840691 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!48511 0))(
  ( (V!48512 (val!16242 Int)) )
))
(declare-datatypes ((tuple2!21164 0))(
  ( (tuple2!21165 (_1!10592 (_ BitVec 64)) (_2!10592 V!48511)) )
))
(declare-datatypes ((List!28385 0))(
  ( (Nil!28382) (Cons!28381 (h!29590 tuple2!21164) (t!41893 List!28385)) )
))
(declare-datatypes ((ListLongMap!19049 0))(
  ( (ListLongMap!19050 (toList!9540 List!28385)) )
))
(declare-fun lt!571633 () ListLongMap!19049)

(declare-fun lt!571635 () ListLongMap!19049)

(assert (=> b!1261535 (= lt!571633 lt!571635)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!42007 0))(
  ( (Unit!42008) )
))
(declare-fun lt!571634 () Unit!42007)

(declare-fun minValueAfter!43 () V!48511)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48511)

(declare-datatypes ((array!82317 0))(
  ( (array!82318 (arr!39706 (Array (_ BitVec 32) (_ BitVec 64))) (size!40243 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82317)

(declare-datatypes ((ValueCell!15416 0))(
  ( (ValueCellFull!15416 (v!18946 V!48511)) (EmptyCell!15416) )
))
(declare-datatypes ((array!82319 0))(
  ( (array!82320 (arr!39707 (Array (_ BitVec 32) ValueCell!15416)) (size!40244 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82319)

(declare-fun minValueBefore!43 () V!48511)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1177 (array!82317 array!82319 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48511 V!48511 V!48511 V!48511 (_ BitVec 32) Int) Unit!42007)

(assert (=> b!1261535 (= lt!571634 (lemmaNoChangeToArrayThenSameMapNoExtras!1177 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5881 (array!82317 array!82319 (_ BitVec 32) (_ BitVec 32) V!48511 V!48511 (_ BitVec 32) Int) ListLongMap!19049)

(assert (=> b!1261535 (= lt!571635 (getCurrentListMapNoExtraKeys!5881 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1261535 (= lt!571633 (getCurrentListMapNoExtraKeys!5881 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1261536 () Bool)

(declare-fun res!840690 () Bool)

(assert (=> b!1261536 (=> (not res!840690) (not e!718055))))

(assert (=> b!1261536 (= res!840690 (and (= (size!40244 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40243 _keys!1118) (size!40244 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1261537 () Bool)

(declare-fun contains!7604 (ListLongMap!19049 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4646 (array!82317 array!82319 (_ BitVec 32) (_ BitVec 32) V!48511 V!48511 (_ BitVec 32) Int) ListLongMap!19049)

(assert (=> b!1261537 (= e!718058 (not (contains!7604 (getCurrentListMap!4646 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!50344 () Bool)

(declare-fun mapRes!50344 () Bool)

(declare-fun tp!95907 () Bool)

(declare-fun e!718057 () Bool)

(assert (=> mapNonEmpty!50344 (= mapRes!50344 (and tp!95907 e!718057))))

(declare-fun mapKey!50344 () (_ BitVec 32))

(declare-fun mapValue!50344 () ValueCell!15416)

(declare-fun mapRest!50344 () (Array (_ BitVec 32) ValueCell!15416))

(assert (=> mapNonEmpty!50344 (= (arr!39707 _values!914) (store mapRest!50344 mapKey!50344 mapValue!50344))))

(declare-fun b!1261538 () Bool)

(declare-fun res!840692 () Bool)

(assert (=> b!1261538 (=> (not res!840692) (not e!718055))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82317 (_ BitVec 32)) Bool)

(assert (=> b!1261538 (= res!840692 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun res!840688 () Bool)

(assert (=> start!105964 (=> (not res!840688) (not e!718055))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105964 (= res!840688 (validMask!0 mask!1466))))

(assert (=> start!105964 e!718055))

(assert (=> start!105964 true))

(assert (=> start!105964 tp!95906))

(declare-fun tp_is_empty!32359 () Bool)

(assert (=> start!105964 tp_is_empty!32359))

(declare-fun array_inv!30177 (array!82317) Bool)

(assert (=> start!105964 (array_inv!30177 _keys!1118)))

(declare-fun e!718053 () Bool)

(declare-fun array_inv!30178 (array!82319) Bool)

(assert (=> start!105964 (and (array_inv!30178 _values!914) e!718053)))

(declare-fun b!1261539 () Bool)

(declare-fun res!840689 () Bool)

(assert (=> b!1261539 (=> (not res!840689) (not e!718055))))

(declare-datatypes ((List!28386 0))(
  ( (Nil!28383) (Cons!28382 (h!29591 (_ BitVec 64)) (t!41894 List!28386)) )
))
(declare-fun arrayNoDuplicates!0 (array!82317 (_ BitVec 32) List!28386) Bool)

(assert (=> b!1261539 (= res!840689 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28383))))

(declare-fun b!1261540 () Bool)

(assert (=> b!1261540 (= e!718057 tp_is_empty!32359)))

(declare-fun b!1261541 () Bool)

(declare-fun e!718054 () Bool)

(assert (=> b!1261541 (= e!718053 (and e!718054 mapRes!50344))))

(declare-fun condMapEmpty!50344 () Bool)

(declare-fun mapDefault!50344 () ValueCell!15416)

