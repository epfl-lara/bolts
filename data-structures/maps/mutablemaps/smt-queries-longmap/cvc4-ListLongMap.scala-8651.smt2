; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105286 () Bool)

(assert start!105286)

(declare-fun b_free!26945 () Bool)

(declare-fun b_next!26945 () Bool)

(assert (=> start!105286 (= b_free!26945 (not b_next!26945))))

(declare-fun tp!94343 () Bool)

(declare-fun b_and!44781 () Bool)

(assert (=> start!105286 (= tp!94343 b_and!44781)))

(declare-fun b!1254051 () Bool)

(declare-fun res!836260 () Bool)

(declare-fun e!712567 () Bool)

(assert (=> b!1254051 (=> (not res!836260) (not e!712567))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81331 0))(
  ( (array!81332 (arr!39222 (Array (_ BitVec 32) (_ BitVec 64))) (size!39759 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81331)

(declare-datatypes ((V!47827 0))(
  ( (V!47828 (val!15986 Int)) )
))
(declare-datatypes ((ValueCell!15160 0))(
  ( (ValueCellFull!15160 (v!18685 V!47827)) (EmptyCell!15160) )
))
(declare-datatypes ((array!81333 0))(
  ( (array!81334 (arr!39223 (Array (_ BitVec 32) ValueCell!15160)) (size!39760 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81333)

(assert (=> b!1254051 (= res!836260 (and (= (size!39760 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39759 _keys!1118) (size!39760 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1254052 () Bool)

(declare-fun e!712565 () Bool)

(declare-fun e!712563 () Bool)

(declare-fun mapRes!49549 () Bool)

(assert (=> b!1254052 (= e!712565 (and e!712563 mapRes!49549))))

(declare-fun condMapEmpty!49549 () Bool)

(declare-fun mapDefault!49549 () ValueCell!15160)

