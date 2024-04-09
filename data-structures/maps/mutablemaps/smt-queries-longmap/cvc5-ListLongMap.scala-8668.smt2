; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105406 () Bool)

(assert start!105406)

(declare-fun b_free!27043 () Bool)

(declare-fun b_next!27043 () Bool)

(assert (=> start!105406 (= b_free!27043 (not b_next!27043))))

(declare-fun tp!94640 () Bool)

(declare-fun b_and!44891 () Bool)

(assert (=> start!105406 (= tp!94640 b_and!44891)))

(declare-fun b!1255337 () Bool)

(declare-fun e!713493 () Bool)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-datatypes ((array!81523 0))(
  ( (array!81524 (arr!39317 (Array (_ BitVec 32) (_ BitVec 64))) (size!39854 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81523)

(assert (=> b!1255337 (= e!713493 (not (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsle #b00000000000000000000000000000000 (size!39854 _keys!1118)))))))

(declare-datatypes ((V!47959 0))(
  ( (V!47960 (val!16035 Int)) )
))
(declare-datatypes ((tuple2!20850 0))(
  ( (tuple2!20851 (_1!10435 (_ BitVec 64)) (_2!10435 V!47959)) )
))
(declare-datatypes ((List!28090 0))(
  ( (Nil!28087) (Cons!28086 (h!29295 tuple2!20850) (t!41582 List!28090)) )
))
(declare-datatypes ((ListLongMap!18735 0))(
  ( (ListLongMap!18736 (toList!9383 List!28090)) )
))
(declare-fun lt!567513 () ListLongMap!18735)

(declare-fun lt!567515 () ListLongMap!18735)

(assert (=> b!1255337 (= lt!567513 lt!567515)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun minValueAfter!43 () V!47959)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47959)

(declare-datatypes ((ValueCell!15209 0))(
  ( (ValueCellFull!15209 (v!18735 V!47959)) (EmptyCell!15209) )
))
(declare-datatypes ((array!81525 0))(
  ( (array!81526 (arr!39318 (Array (_ BitVec 32) ValueCell!15209)) (size!39855 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81525)

(declare-fun minValueBefore!43 () V!47959)

(declare-datatypes ((Unit!41740 0))(
  ( (Unit!41741) )
))
(declare-fun lt!567514 () Unit!41740)

(declare-fun defaultEntry!922 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1062 (array!81523 array!81525 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47959 V!47959 V!47959 V!47959 (_ BitVec 32) Int) Unit!41740)

(assert (=> b!1255337 (= lt!567514 (lemmaNoChangeToArrayThenSameMapNoExtras!1062 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5744 (array!81523 array!81525 (_ BitVec 32) (_ BitVec 32) V!47959 V!47959 (_ BitVec 32) Int) ListLongMap!18735)

(assert (=> b!1255337 (= lt!567515 (getCurrentListMapNoExtraKeys!5744 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1255337 (= lt!567513 (getCurrentListMapNoExtraKeys!5744 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!837003 () Bool)

(assert (=> start!105406 (=> (not res!837003) (not e!713493))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105406 (= res!837003 (validMask!0 mask!1466))))

(assert (=> start!105406 e!713493))

(assert (=> start!105406 true))

(assert (=> start!105406 tp!94640))

(declare-fun tp_is_empty!31945 () Bool)

(assert (=> start!105406 tp_is_empty!31945))

(declare-fun array_inv!29905 (array!81523) Bool)

(assert (=> start!105406 (array_inv!29905 _keys!1118)))

(declare-fun e!713492 () Bool)

(declare-fun array_inv!29906 (array!81525) Bool)

(assert (=> start!105406 (and (array_inv!29906 _values!914) e!713492)))

(declare-fun b!1255338 () Bool)

(declare-fun e!713489 () Bool)

(assert (=> b!1255338 (= e!713489 tp_is_empty!31945)))

(declare-fun mapIsEmpty!49699 () Bool)

(declare-fun mapRes!49699 () Bool)

(assert (=> mapIsEmpty!49699 mapRes!49699))

(declare-fun b!1255339 () Bool)

(declare-fun e!713491 () Bool)

(assert (=> b!1255339 (= e!713491 tp_is_empty!31945)))

(declare-fun b!1255340 () Bool)

(declare-fun res!837001 () Bool)

(assert (=> b!1255340 (=> (not res!837001) (not e!713493))))

(assert (=> b!1255340 (= res!837001 (and (= (size!39855 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39854 _keys!1118) (size!39855 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!49699 () Bool)

(declare-fun tp!94641 () Bool)

(assert (=> mapNonEmpty!49699 (= mapRes!49699 (and tp!94641 e!713489))))

(declare-fun mapRest!49699 () (Array (_ BitVec 32) ValueCell!15209))

(declare-fun mapValue!49699 () ValueCell!15209)

(declare-fun mapKey!49699 () (_ BitVec 32))

(assert (=> mapNonEmpty!49699 (= (arr!39318 _values!914) (store mapRest!49699 mapKey!49699 mapValue!49699))))

(declare-fun b!1255341 () Bool)

(assert (=> b!1255341 (= e!713492 (and e!713491 mapRes!49699))))

(declare-fun condMapEmpty!49699 () Bool)

(declare-fun mapDefault!49699 () ValueCell!15209)

