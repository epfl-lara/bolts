; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105376 () Bool)

(assert start!105376)

(declare-fun b_free!27013 () Bool)

(declare-fun b_next!27013 () Bool)

(assert (=> start!105376 (= b_free!27013 (not b_next!27013))))

(declare-fun tp!94550 () Bool)

(declare-fun b_and!44861 () Bool)

(assert (=> start!105376 (= tp!94550 b_and!44861)))

(declare-fun mapIsEmpty!49654 () Bool)

(declare-fun mapRes!49654 () Bool)

(assert (=> mapIsEmpty!49654 mapRes!49654))

(declare-fun b!1255022 () Bool)

(declare-fun res!836822 () Bool)

(declare-fun e!713264 () Bool)

(assert (=> b!1255022 (=> (not res!836822) (not e!713264))))

(declare-datatypes ((array!81465 0))(
  ( (array!81466 (arr!39288 (Array (_ BitVec 32) (_ BitVec 64))) (size!39825 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81465)

(declare-datatypes ((List!28069 0))(
  ( (Nil!28066) (Cons!28065 (h!29274 (_ BitVec 64)) (t!41561 List!28069)) )
))
(declare-fun arrayNoDuplicates!0 (array!81465 (_ BitVec 32) List!28069) Bool)

(assert (=> b!1255022 (= res!836822 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28066))))

(declare-fun res!836821 () Bool)

(assert (=> start!105376 (=> (not res!836821) (not e!713264))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105376 (= res!836821 (validMask!0 mask!1466))))

(assert (=> start!105376 e!713264))

(assert (=> start!105376 true))

(assert (=> start!105376 tp!94550))

(declare-fun tp_is_empty!31915 () Bool)

(assert (=> start!105376 tp_is_empty!31915))

(declare-fun array_inv!29881 (array!81465) Bool)

(assert (=> start!105376 (array_inv!29881 _keys!1118)))

(declare-datatypes ((V!47919 0))(
  ( (V!47920 (val!16020 Int)) )
))
(declare-datatypes ((ValueCell!15194 0))(
  ( (ValueCellFull!15194 (v!18720 V!47919)) (EmptyCell!15194) )
))
(declare-datatypes ((array!81467 0))(
  ( (array!81468 (arr!39289 (Array (_ BitVec 32) ValueCell!15194)) (size!39826 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81467)

(declare-fun e!713266 () Bool)

(declare-fun array_inv!29882 (array!81467) Bool)

(assert (=> start!105376 (and (array_inv!29882 _values!914) e!713266)))

(declare-fun b!1255023 () Bool)

(declare-fun res!836824 () Bool)

(assert (=> b!1255023 (=> (not res!836824) (not e!713264))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1255023 (= res!836824 (and (= (size!39826 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39825 _keys!1118) (size!39826 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1255024 () Bool)

(declare-fun e!713267 () Bool)

(assert (=> b!1255024 (= e!713266 (and e!713267 mapRes!49654))))

(declare-fun condMapEmpty!49654 () Bool)

(declare-fun mapDefault!49654 () ValueCell!15194)

