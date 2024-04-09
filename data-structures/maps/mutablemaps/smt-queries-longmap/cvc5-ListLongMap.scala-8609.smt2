; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104934 () Bool)

(assert start!104934)

(declare-fun b_free!26689 () Bool)

(declare-fun b_next!26689 () Bool)

(assert (=> start!104934 (= b_free!26689 (not b_next!26689))))

(declare-fun tp!93560 () Bool)

(declare-fun b_and!44475 () Bool)

(assert (=> start!104934 (= tp!93560 b_and!44475)))

(declare-fun b!1250196 () Bool)

(declare-fun e!709743 () Bool)

(declare-fun e!709740 () Bool)

(assert (=> b!1250196 (= e!709743 e!709740)))

(declare-fun res!833997 () Bool)

(assert (=> b!1250196 (=> res!833997 e!709740)))

(declare-datatypes ((V!47487 0))(
  ( (V!47488 (val!15858 Int)) )
))
(declare-datatypes ((tuple2!20576 0))(
  ( (tuple2!20577 (_1!10298 (_ BitVec 64)) (_2!10298 V!47487)) )
))
(declare-datatypes ((List!27834 0))(
  ( (Nil!27831) (Cons!27830 (h!29039 tuple2!20576) (t!41314 List!27834)) )
))
(declare-datatypes ((ListLongMap!18461 0))(
  ( (ListLongMap!18462 (toList!9246 List!27834)) )
))
(declare-fun lt!564088 () ListLongMap!18461)

(declare-fun contains!7500 (ListLongMap!18461 (_ BitVec 64)) Bool)

(assert (=> b!1250196 (= res!833997 (contains!7500 lt!564088 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47487)

(declare-datatypes ((array!80833 0))(
  ( (array!80834 (arr!38978 (Array (_ BitVec 32) (_ BitVec 64))) (size!39515 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80833)

(declare-datatypes ((ValueCell!15032 0))(
  ( (ValueCellFull!15032 (v!18554 V!47487)) (EmptyCell!15032) )
))
(declare-datatypes ((array!80835 0))(
  ( (array!80836 (arr!38979 (Array (_ BitVec 32) ValueCell!15032)) (size!39516 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80835)

(declare-fun minValueBefore!43 () V!47487)

(declare-fun getCurrentListMap!4466 (array!80833 array!80835 (_ BitVec 32) (_ BitVec 32) V!47487 V!47487 (_ BitVec 32) Int) ListLongMap!18461)

(assert (=> b!1250196 (= lt!564088 (getCurrentListMap!4466 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!49150 () Bool)

(declare-fun mapRes!49150 () Bool)

(declare-fun tp!93561 () Bool)

(declare-fun e!709744 () Bool)

(assert (=> mapNonEmpty!49150 (= mapRes!49150 (and tp!93561 e!709744))))

(declare-fun mapRest!49150 () (Array (_ BitVec 32) ValueCell!15032))

(declare-fun mapValue!49150 () ValueCell!15032)

(declare-fun mapKey!49150 () (_ BitVec 32))

(assert (=> mapNonEmpty!49150 (= (arr!38979 _values!914) (store mapRest!49150 mapKey!49150 mapValue!49150))))

(declare-fun mapIsEmpty!49150 () Bool)

(assert (=> mapIsEmpty!49150 mapRes!49150))

(declare-fun b!1250197 () Bool)

(declare-fun tp_is_empty!31591 () Bool)

(assert (=> b!1250197 (= e!709744 tp_is_empty!31591)))

(declare-fun res!833998 () Bool)

(declare-fun e!709739 () Bool)

(assert (=> start!104934 (=> (not res!833998) (not e!709739))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104934 (= res!833998 (validMask!0 mask!1466))))

(assert (=> start!104934 e!709739))

(assert (=> start!104934 true))

(assert (=> start!104934 tp!93560))

(assert (=> start!104934 tp_is_empty!31591))

(declare-fun array_inv!29667 (array!80833) Bool)

(assert (=> start!104934 (array_inv!29667 _keys!1118)))

(declare-fun e!709741 () Bool)

(declare-fun array_inv!29668 (array!80835) Bool)

(assert (=> start!104934 (and (array_inv!29668 _values!914) e!709741)))

(declare-fun b!1250198 () Bool)

(declare-fun res!833994 () Bool)

(assert (=> b!1250198 (=> (not res!833994) (not e!709739))))

(declare-datatypes ((List!27835 0))(
  ( (Nil!27832) (Cons!27831 (h!29040 (_ BitVec 64)) (t!41315 List!27835)) )
))
(declare-fun arrayNoDuplicates!0 (array!80833 (_ BitVec 32) List!27835) Bool)

(assert (=> b!1250198 (= res!833994 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27832))))

(declare-fun b!1250199 () Bool)

(assert (=> b!1250199 (= e!709739 (not e!709743))))

(declare-fun res!833995 () Bool)

(assert (=> b!1250199 (=> res!833995 e!709743)))

(assert (=> b!1250199 (= res!833995 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!564087 () ListLongMap!18461)

(declare-fun lt!564086 () ListLongMap!18461)

(assert (=> b!1250199 (= lt!564087 lt!564086)))

(declare-datatypes ((Unit!41473 0))(
  ( (Unit!41474) )
))
(declare-fun lt!564084 () Unit!41473)

(declare-fun minValueAfter!43 () V!47487)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!945 (array!80833 array!80835 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47487 V!47487 V!47487 V!47487 (_ BitVec 32) Int) Unit!41473)

(assert (=> b!1250199 (= lt!564084 (lemmaNoChangeToArrayThenSameMapNoExtras!945 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5627 (array!80833 array!80835 (_ BitVec 32) (_ BitVec 32) V!47487 V!47487 (_ BitVec 32) Int) ListLongMap!18461)

(assert (=> b!1250199 (= lt!564086 (getCurrentListMapNoExtraKeys!5627 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1250199 (= lt!564087 (getCurrentListMapNoExtraKeys!5627 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1250200 () Bool)

(declare-fun e!709738 () Bool)

(assert (=> b!1250200 (= e!709738 tp_is_empty!31591)))

(declare-fun b!1250201 () Bool)

(declare-fun res!833996 () Bool)

(assert (=> b!1250201 (=> (not res!833996) (not e!709739))))

(assert (=> b!1250201 (= res!833996 (and (= (size!39516 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39515 _keys!1118) (size!39516 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1250202 () Bool)

(assert (=> b!1250202 (= e!709741 (and e!709738 mapRes!49150))))

(declare-fun condMapEmpty!49150 () Bool)

(declare-fun mapDefault!49150 () ValueCell!15032)

