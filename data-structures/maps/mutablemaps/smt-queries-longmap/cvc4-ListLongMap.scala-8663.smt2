; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105380 () Bool)

(assert start!105380)

(declare-fun b_free!27017 () Bool)

(declare-fun b_next!27017 () Bool)

(assert (=> start!105380 (= b_free!27017 (not b_next!27017))))

(declare-fun tp!94563 () Bool)

(declare-fun b_and!44865 () Bool)

(assert (=> start!105380 (= tp!94563 b_and!44865)))

(declare-fun res!836846 () Bool)

(declare-fun e!713296 () Bool)

(assert (=> start!105380 (=> (not res!836846) (not e!713296))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105380 (= res!836846 (validMask!0 mask!1466))))

(assert (=> start!105380 e!713296))

(assert (=> start!105380 true))

(assert (=> start!105380 tp!94563))

(declare-fun tp_is_empty!31919 () Bool)

(assert (=> start!105380 tp_is_empty!31919))

(declare-datatypes ((array!81473 0))(
  ( (array!81474 (arr!39292 (Array (_ BitVec 32) (_ BitVec 64))) (size!39829 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81473)

(declare-fun array_inv!29885 (array!81473) Bool)

(assert (=> start!105380 (array_inv!29885 _keys!1118)))

(declare-datatypes ((V!47923 0))(
  ( (V!47924 (val!16022 Int)) )
))
(declare-datatypes ((ValueCell!15196 0))(
  ( (ValueCellFull!15196 (v!18722 V!47923)) (EmptyCell!15196) )
))
(declare-datatypes ((array!81475 0))(
  ( (array!81476 (arr!39293 (Array (_ BitVec 32) ValueCell!15196)) (size!39830 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81475)

(declare-fun e!713295 () Bool)

(declare-fun array_inv!29886 (array!81475) Bool)

(assert (=> start!105380 (and (array_inv!29886 _values!914) e!713295)))

(declare-fun b!1255064 () Bool)

(declare-fun e!713297 () Bool)

(declare-fun mapRes!49660 () Bool)

(assert (=> b!1255064 (= e!713295 (and e!713297 mapRes!49660))))

(declare-fun condMapEmpty!49660 () Bool)

(declare-fun mapDefault!49660 () ValueCell!15196)

