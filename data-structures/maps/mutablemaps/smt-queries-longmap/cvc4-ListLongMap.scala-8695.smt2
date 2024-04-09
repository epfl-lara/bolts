; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105630 () Bool)

(assert start!105630)

(declare-fun b_free!27209 () Bool)

(declare-fun b_next!27209 () Bool)

(assert (=> start!105630 (= b_free!27209 (not b_next!27209))))

(declare-fun tp!95147 () Bool)

(declare-fun b_and!45085 () Bool)

(assert (=> start!105630 (= tp!95147 b_and!45085)))

(declare-fun res!838484 () Bool)

(declare-fun e!715323 () Bool)

(assert (=> start!105630 (=> (not res!838484) (not e!715323))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105630 (= res!838484 (validMask!0 mask!1466))))

(assert (=> start!105630 e!715323))

(assert (=> start!105630 true))

(assert (=> start!105630 tp!95147))

(declare-fun tp_is_empty!32111 () Bool)

(assert (=> start!105630 tp_is_empty!32111))

(declare-datatypes ((array!81849 0))(
  ( (array!81850 (arr!39477 (Array (_ BitVec 32) (_ BitVec 64))) (size!40014 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81849)

(declare-fun array_inv!30019 (array!81849) Bool)

(assert (=> start!105630 (array_inv!30019 _keys!1118)))

(declare-datatypes ((V!48179 0))(
  ( (V!48180 (val!16118 Int)) )
))
(declare-datatypes ((ValueCell!15292 0))(
  ( (ValueCellFull!15292 (v!18820 V!48179)) (EmptyCell!15292) )
))
(declare-datatypes ((array!81851 0))(
  ( (array!81852 (arr!39478 (Array (_ BitVec 32) ValueCell!15292)) (size!40015 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81851)

(declare-fun e!715325 () Bool)

(declare-fun array_inv!30020 (array!81851) Bool)

(assert (=> start!105630 (and (array_inv!30020 _values!914) e!715325)))

(declare-fun b!1257812 () Bool)

(declare-fun res!838486 () Bool)

(assert (=> b!1257812 (=> (not res!838486) (not e!715323))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1257812 (= res!838486 (and (= (size!40015 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40014 _keys!1118) (size!40015 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1257813 () Bool)

(declare-fun e!715322 () Bool)

(assert (=> b!1257813 (= e!715322 tp_is_empty!32111)))

(declare-fun b!1257814 () Bool)

(declare-fun e!715326 () Bool)

(declare-fun mapRes!49957 () Bool)

(assert (=> b!1257814 (= e!715325 (and e!715326 mapRes!49957))))

(declare-fun condMapEmpty!49957 () Bool)

(declare-fun mapDefault!49957 () ValueCell!15292)

