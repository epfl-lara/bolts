; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105752 () Bool)

(assert start!105752)

(declare-fun b_free!27301 () Bool)

(declare-fun b_next!27301 () Bool)

(assert (=> start!105752 (= b_free!27301 (not b_next!27301))))

(declare-fun tp!95429 () Bool)

(declare-fun b_and!45195 () Bool)

(assert (=> start!105752 (= tp!95429 b_and!45195)))

(declare-fun b!1259186 () Bool)

(declare-fun res!839303 () Bool)

(declare-fun e!716336 () Bool)

(assert (=> b!1259186 (=> (not res!839303) (not e!716336))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!82019 0))(
  ( (array!82020 (arr!39560 (Array (_ BitVec 32) (_ BitVec 64))) (size!40097 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82019)

(declare-datatypes ((V!48303 0))(
  ( (V!48304 (val!16164 Int)) )
))
(declare-datatypes ((ValueCell!15338 0))(
  ( (ValueCellFull!15338 (v!18866 V!48303)) (EmptyCell!15338) )
))
(declare-datatypes ((array!82021 0))(
  ( (array!82022 (arr!39561 (Array (_ BitVec 32) ValueCell!15338)) (size!40098 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82021)

(assert (=> b!1259186 (= res!839303 (and (= (size!40098 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40097 _keys!1118) (size!40098 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1259187 () Bool)

(declare-fun e!716341 () Bool)

(declare-fun e!716339 () Bool)

(declare-fun mapRes!50101 () Bool)

(assert (=> b!1259187 (= e!716341 (and e!716339 mapRes!50101))))

(declare-fun condMapEmpty!50101 () Bool)

(declare-fun mapDefault!50101 () ValueCell!15338)

