; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105524 () Bool)

(assert start!105524)

(declare-fun b_free!27125 () Bool)

(declare-fun b_next!27125 () Bool)

(assert (=> start!105524 (= b_free!27125 (not b_next!27125))))

(declare-fun tp!94893 () Bool)

(declare-fun b_and!44991 () Bool)

(assert (=> start!105524 (= tp!94893 b_and!44991)))

(declare-fun b!1256663 () Bool)

(declare-fun res!837811 () Bool)

(declare-fun e!714485 () Bool)

(assert (=> b!1256663 (=> (not res!837811) (not e!714485))))

(declare-datatypes ((array!81689 0))(
  ( (array!81690 (arr!39398 (Array (_ BitVec 32) (_ BitVec 64))) (size!39935 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81689)

(declare-datatypes ((List!28156 0))(
  ( (Nil!28153) (Cons!28152 (h!29361 (_ BitVec 64)) (t!41652 List!28156)) )
))
(declare-fun arrayNoDuplicates!0 (array!81689 (_ BitVec 32) List!28156) Bool)

(assert (=> b!1256663 (= res!837811 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28153))))

(declare-fun b!1256664 () Bool)

(declare-fun e!714483 () Bool)

(declare-fun tp_is_empty!32027 () Bool)

(assert (=> b!1256664 (= e!714483 tp_is_empty!32027)))

(declare-fun b!1256665 () Bool)

(declare-fun e!714484 () Bool)

(assert (=> b!1256665 (= e!714485 (not e!714484))))

(declare-fun res!837808 () Bool)

(assert (=> b!1256665 (=> res!837808 e!714484)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1256665 (= res!837808 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!48067 0))(
  ( (V!48068 (val!16076 Int)) )
))
(declare-datatypes ((tuple2!20922 0))(
  ( (tuple2!20923 (_1!10471 (_ BitVec 64)) (_2!10471 V!48067)) )
))
(declare-datatypes ((List!28157 0))(
  ( (Nil!28154) (Cons!28153 (h!29362 tuple2!20922) (t!41653 List!28157)) )
))
(declare-datatypes ((ListLongMap!18807 0))(
  ( (ListLongMap!18808 (toList!9419 List!28157)) )
))
(declare-fun lt!568269 () ListLongMap!18807)

(declare-fun lt!568272 () ListLongMap!18807)

(assert (=> b!1256665 (= lt!568269 lt!568272)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48067)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48067)

(declare-datatypes ((Unit!41810 0))(
  ( (Unit!41811) )
))
(declare-fun lt!568270 () Unit!41810)

(declare-datatypes ((ValueCell!15250 0))(
  ( (ValueCellFull!15250 (v!18777 V!48067)) (EmptyCell!15250) )
))
(declare-datatypes ((array!81691 0))(
  ( (array!81692 (arr!39399 (Array (_ BitVec 32) ValueCell!15250)) (size!39936 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81691)

(declare-fun minValueBefore!43 () V!48067)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1091 (array!81689 array!81691 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48067 V!48067 V!48067 V!48067 (_ BitVec 32) Int) Unit!41810)

(assert (=> b!1256665 (= lt!568270 (lemmaNoChangeToArrayThenSameMapNoExtras!1091 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5773 (array!81689 array!81691 (_ BitVec 32) (_ BitVec 32) V!48067 V!48067 (_ BitVec 32) Int) ListLongMap!18807)

(assert (=> b!1256665 (= lt!568272 (getCurrentListMapNoExtraKeys!5773 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1256665 (= lt!568269 (getCurrentListMapNoExtraKeys!5773 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1256666 () Bool)

(declare-fun res!837810 () Bool)

(assert (=> b!1256666 (=> (not res!837810) (not e!714485))))

(assert (=> b!1256666 (= res!837810 (and (= (size!39936 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39935 _keys!1118) (size!39936 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!49828 () Bool)

(declare-fun mapRes!49828 () Bool)

(declare-fun tp!94892 () Bool)

(assert (=> mapNonEmpty!49828 (= mapRes!49828 (and tp!94892 e!714483))))

(declare-fun mapValue!49828 () ValueCell!15250)

(declare-fun mapKey!49828 () (_ BitVec 32))

(declare-fun mapRest!49828 () (Array (_ BitVec 32) ValueCell!15250))

(assert (=> mapNonEmpty!49828 (= (arr!39399 _values!914) (store mapRest!49828 mapKey!49828 mapValue!49828))))

(declare-fun res!837809 () Bool)

(assert (=> start!105524 (=> (not res!837809) (not e!714485))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105524 (= res!837809 (validMask!0 mask!1466))))

(assert (=> start!105524 e!714485))

(assert (=> start!105524 true))

(assert (=> start!105524 tp!94893))

(assert (=> start!105524 tp_is_empty!32027))

(declare-fun array_inv!29961 (array!81689) Bool)

(assert (=> start!105524 (array_inv!29961 _keys!1118)))

(declare-fun e!714486 () Bool)

(declare-fun array_inv!29962 (array!81691) Bool)

(assert (=> start!105524 (and (array_inv!29962 _values!914) e!714486)))

(declare-fun b!1256667 () Bool)

(declare-fun e!714487 () Bool)

(assert (=> b!1256667 (= e!714484 e!714487)))

(declare-fun res!837812 () Bool)

(assert (=> b!1256667 (=> res!837812 e!714487)))

(declare-fun lt!568273 () ListLongMap!18807)

(declare-fun contains!7575 (ListLongMap!18807 (_ BitVec 64)) Bool)

(assert (=> b!1256667 (= res!837812 (contains!7575 lt!568273 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4579 (array!81689 array!81691 (_ BitVec 32) (_ BitVec 32) V!48067 V!48067 (_ BitVec 32) Int) ListLongMap!18807)

(assert (=> b!1256667 (= lt!568273 (getCurrentListMap!4579 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1256668 () Bool)

(declare-fun e!714482 () Bool)

(assert (=> b!1256668 (= e!714486 (and e!714482 mapRes!49828))))

(declare-fun condMapEmpty!49828 () Bool)

(declare-fun mapDefault!49828 () ValueCell!15250)

