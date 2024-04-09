; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105364 () Bool)

(assert start!105364)

(declare-fun b_free!27001 () Bool)

(declare-fun b_next!27001 () Bool)

(assert (=> start!105364 (= b_free!27001 (not b_next!27001))))

(declare-fun tp!94514 () Bool)

(declare-fun b_and!44849 () Bool)

(assert (=> start!105364 (= tp!94514 b_and!44849)))

(declare-fun b!1254896 () Bool)

(declare-fun res!836752 () Bool)

(declare-fun e!713174 () Bool)

(assert (=> b!1254896 (=> (not res!836752) (not e!713174))))

(declare-datatypes ((array!81441 0))(
  ( (array!81442 (arr!39276 (Array (_ BitVec 32) (_ BitVec 64))) (size!39813 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81441)

(declare-datatypes ((List!28061 0))(
  ( (Nil!28058) (Cons!28057 (h!29266 (_ BitVec 64)) (t!41553 List!28061)) )
))
(declare-fun arrayNoDuplicates!0 (array!81441 (_ BitVec 32) List!28061) Bool)

(assert (=> b!1254896 (= res!836752 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28058))))

(declare-fun b!1254897 () Bool)

(declare-fun e!713175 () Bool)

(declare-fun tp_is_empty!31903 () Bool)

(assert (=> b!1254897 (= e!713175 tp_is_empty!31903)))

(declare-fun mapNonEmpty!49636 () Bool)

(declare-fun mapRes!49636 () Bool)

(declare-fun tp!94515 () Bool)

(assert (=> mapNonEmpty!49636 (= mapRes!49636 (and tp!94515 e!713175))))

(declare-datatypes ((V!47903 0))(
  ( (V!47904 (val!16014 Int)) )
))
(declare-datatypes ((ValueCell!15188 0))(
  ( (ValueCellFull!15188 (v!18714 V!47903)) (EmptyCell!15188) )
))
(declare-fun mapRest!49636 () (Array (_ BitVec 32) ValueCell!15188))

(declare-fun mapValue!49636 () ValueCell!15188)

(declare-datatypes ((array!81443 0))(
  ( (array!81444 (arr!39277 (Array (_ BitVec 32) ValueCell!15188)) (size!39814 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81443)

(declare-fun mapKey!49636 () (_ BitVec 32))

(assert (=> mapNonEmpty!49636 (= (arr!39277 _values!914) (store mapRest!49636 mapKey!49636 mapValue!49636))))

(declare-fun b!1254898 () Bool)

(declare-fun e!713178 () Bool)

(declare-fun e!713176 () Bool)

(assert (=> b!1254898 (= e!713178 (and e!713176 mapRes!49636))))

(declare-fun condMapEmpty!49636 () Bool)

(declare-fun mapDefault!49636 () ValueCell!15188)

