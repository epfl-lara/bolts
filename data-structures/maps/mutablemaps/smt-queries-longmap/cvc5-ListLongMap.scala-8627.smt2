; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105086 () Bool)

(assert start!105086)

(declare-fun b_free!26797 () Bool)

(declare-fun b_next!26797 () Bool)

(assert (=> start!105086 (= b_free!26797 (not b_next!26797))))

(declare-fun tp!93890 () Bool)

(declare-fun b_and!44603 () Bool)

(assert (=> start!105086 (= tp!93890 b_and!44603)))

(declare-fun b!1251892 () Bool)

(declare-fun res!835012 () Bool)

(declare-fun e!710997 () Bool)

(assert (=> b!1251892 (=> (not res!835012) (not e!710997))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81041 0))(
  ( (array!81042 (arr!39080 (Array (_ BitVec 32) (_ BitVec 64))) (size!39617 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81041)

(declare-datatypes ((V!47631 0))(
  ( (V!47632 (val!15912 Int)) )
))
(declare-datatypes ((ValueCell!15086 0))(
  ( (ValueCellFull!15086 (v!18610 V!47631)) (EmptyCell!15086) )
))
(declare-datatypes ((array!81043 0))(
  ( (array!81044 (arr!39081 (Array (_ BitVec 32) ValueCell!15086)) (size!39618 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81043)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1251892 (= res!835012 (and (= (size!39618 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39617 _keys!1118) (size!39618 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1251893 () Bool)

(declare-fun e!710999 () Bool)

(declare-fun tp_is_empty!31699 () Bool)

(assert (=> b!1251893 (= e!710999 tp_is_empty!31699)))

(declare-fun b!1251894 () Bool)

(declare-fun res!835013 () Bool)

(assert (=> b!1251894 (=> (not res!835013) (not e!710997))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81041 (_ BitVec 32)) Bool)

(assert (=> b!1251894 (= res!835013 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1251895 () Bool)

(declare-fun e!711000 () Bool)

(declare-fun mapRes!49318 () Bool)

(assert (=> b!1251895 (= e!711000 (and e!710999 mapRes!49318))))

(declare-fun condMapEmpty!49318 () Bool)

(declare-fun mapDefault!49318 () ValueCell!15086)

