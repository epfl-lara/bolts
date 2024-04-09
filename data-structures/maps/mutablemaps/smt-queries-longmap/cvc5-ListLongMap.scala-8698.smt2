; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105658 () Bool)

(assert start!105658)

(declare-fun b_free!27223 () Bool)

(declare-fun b_next!27223 () Bool)

(assert (=> start!105658 (= b_free!27223 (not b_next!27223))))

(declare-fun tp!95192 () Bool)

(declare-fun b_and!45107 () Bool)

(assert (=> start!105658 (= tp!95192 b_and!45107)))

(declare-fun res!838611 () Bool)

(declare-fun e!715494 () Bool)

(assert (=> start!105658 (=> (not res!838611) (not e!715494))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105658 (= res!838611 (validMask!0 mask!1466))))

(assert (=> start!105658 e!715494))

(assert (=> start!105658 true))

(assert (=> start!105658 tp!95192))

(declare-fun tp_is_empty!32125 () Bool)

(assert (=> start!105658 tp_is_empty!32125))

(declare-datatypes ((array!81873 0))(
  ( (array!81874 (arr!39488 (Array (_ BitVec 32) (_ BitVec 64))) (size!40025 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81873)

(declare-fun array_inv!30027 (array!81873) Bool)

(assert (=> start!105658 (array_inv!30027 _keys!1118)))

(declare-datatypes ((V!48199 0))(
  ( (V!48200 (val!16125 Int)) )
))
(declare-datatypes ((ValueCell!15299 0))(
  ( (ValueCellFull!15299 (v!18827 V!48199)) (EmptyCell!15299) )
))
(declare-datatypes ((array!81875 0))(
  ( (array!81876 (arr!39489 (Array (_ BitVec 32) ValueCell!15299)) (size!40026 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81875)

(declare-fun e!715495 () Bool)

(declare-fun array_inv!30028 (array!81875) Bool)

(assert (=> start!105658 (and (array_inv!30028 _values!914) e!715495)))

(declare-fun b!1258055 () Bool)

(declare-fun res!838610 () Bool)

(assert (=> b!1258055 (=> (not res!838610) (not e!715494))))

(declare-datatypes ((List!28223 0))(
  ( (Nil!28220) (Cons!28219 (h!29428 (_ BitVec 64)) (t!41723 List!28223)) )
))
(declare-fun arrayNoDuplicates!0 (array!81873 (_ BitVec 32) List!28223) Bool)

(assert (=> b!1258055 (= res!838610 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28220))))

(declare-fun mapNonEmpty!49981 () Bool)

(declare-fun mapRes!49981 () Bool)

(declare-fun tp!95193 () Bool)

(declare-fun e!715496 () Bool)

(assert (=> mapNonEmpty!49981 (= mapRes!49981 (and tp!95193 e!715496))))

(declare-fun mapRest!49981 () (Array (_ BitVec 32) ValueCell!15299))

(declare-fun mapValue!49981 () ValueCell!15299)

(declare-fun mapKey!49981 () (_ BitVec 32))

(assert (=> mapNonEmpty!49981 (= (arr!39489 _values!914) (store mapRest!49981 mapKey!49981 mapValue!49981))))

(declare-fun b!1258056 () Bool)

(assert (=> b!1258056 (= e!715496 tp_is_empty!32125)))

(declare-fun b!1258057 () Bool)

(declare-fun e!715493 () Bool)

(assert (=> b!1258057 (= e!715495 (and e!715493 mapRes!49981))))

(declare-fun condMapEmpty!49981 () Bool)

(declare-fun mapDefault!49981 () ValueCell!15299)

