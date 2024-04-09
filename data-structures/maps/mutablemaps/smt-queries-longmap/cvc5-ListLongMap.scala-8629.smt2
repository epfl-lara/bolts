; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105098 () Bool)

(assert start!105098)

(declare-fun b_free!26809 () Bool)

(declare-fun b_next!26809 () Bool)

(assert (=> start!105098 (= b_free!26809 (not b_next!26809))))

(declare-fun tp!93927 () Bool)

(declare-fun b_and!44615 () Bool)

(assert (=> start!105098 (= tp!93927 b_and!44615)))

(declare-fun b!1252018 () Bool)

(declare-fun res!835084 () Bool)

(declare-fun e!711090 () Bool)

(assert (=> b!1252018 (=> (not res!835084) (not e!711090))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81065 0))(
  ( (array!81066 (arr!39092 (Array (_ BitVec 32) (_ BitVec 64))) (size!39629 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81065)

(declare-datatypes ((V!47647 0))(
  ( (V!47648 (val!15918 Int)) )
))
(declare-datatypes ((ValueCell!15092 0))(
  ( (ValueCellFull!15092 (v!18616 V!47647)) (EmptyCell!15092) )
))
(declare-datatypes ((array!81067 0))(
  ( (array!81068 (arr!39093 (Array (_ BitVec 32) ValueCell!15092)) (size!39630 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81067)

(assert (=> b!1252018 (= res!835084 (and (= (size!39630 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39629 _keys!1118) (size!39630 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1252019 () Bool)

(declare-fun res!835086 () Bool)

(assert (=> b!1252019 (=> (not res!835086) (not e!711090))))

(declare-datatypes ((List!27923 0))(
  ( (Nil!27920) (Cons!27919 (h!29128 (_ BitVec 64)) (t!41407 List!27923)) )
))
(declare-fun arrayNoDuplicates!0 (array!81065 (_ BitVec 32) List!27923) Bool)

(assert (=> b!1252019 (= res!835086 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27920))))

(declare-fun b!1252020 () Bool)

(declare-fun e!711089 () Bool)

(declare-fun tp_is_empty!31711 () Bool)

(assert (=> b!1252020 (= e!711089 tp_is_empty!31711)))

(declare-fun b!1252021 () Bool)

(declare-fun e!711086 () Bool)

(declare-fun e!711088 () Bool)

(declare-fun mapRes!49336 () Bool)

(assert (=> b!1252021 (= e!711086 (and e!711088 mapRes!49336))))

(declare-fun condMapEmpty!49336 () Bool)

(declare-fun mapDefault!49336 () ValueCell!15092)

