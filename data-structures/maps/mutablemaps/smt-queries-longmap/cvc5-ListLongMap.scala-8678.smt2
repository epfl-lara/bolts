; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105480 () Bool)

(assert start!105480)

(declare-fun b_free!27103 () Bool)

(declare-fun b_next!27103 () Bool)

(assert (=> start!105480 (= b_free!27103 (not b_next!27103))))

(declare-fun tp!94824 () Bool)

(declare-fun b_and!44959 () Bool)

(assert (=> start!105480 (= tp!94824 b_and!44959)))

(declare-fun res!837550 () Bool)

(declare-fun e!714157 () Bool)

(assert (=> start!105480 (=> (not res!837550) (not e!714157))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105480 (= res!837550 (validMask!0 mask!1466))))

(assert (=> start!105480 e!714157))

(assert (=> start!105480 true))

(assert (=> start!105480 tp!94824))

(declare-fun tp_is_empty!32005 () Bool)

(assert (=> start!105480 tp_is_empty!32005))

(declare-datatypes ((array!81643 0))(
  ( (array!81644 (arr!39376 (Array (_ BitVec 32) (_ BitVec 64))) (size!39913 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81643)

(declare-fun array_inv!29943 (array!81643) Bool)

(assert (=> start!105480 (array_inv!29943 _keys!1118)))

(declare-datatypes ((V!48039 0))(
  ( (V!48040 (val!16065 Int)) )
))
(declare-datatypes ((ValueCell!15239 0))(
  ( (ValueCellFull!15239 (v!18765 V!48039)) (EmptyCell!15239) )
))
(declare-datatypes ((array!81645 0))(
  ( (array!81646 (arr!39377 (Array (_ BitVec 32) ValueCell!15239)) (size!39914 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81645)

(declare-fun e!714155 () Bool)

(declare-fun array_inv!29944 (array!81645) Bool)

(assert (=> start!105480 (and (array_inv!29944 _values!914) e!714155)))

(declare-fun b!1256209 () Bool)

(declare-fun res!837551 () Bool)

(assert (=> b!1256209 (=> (not res!837551) (not e!714157))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1256209 (= res!837551 (and (= (size!39914 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39913 _keys!1118) (size!39914 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1256210 () Bool)

(declare-fun e!714154 () Bool)

(assert (=> b!1256210 (= e!714154 tp_is_empty!32005)))

(declare-fun b!1256211 () Bool)

(declare-fun e!714151 () Bool)

(declare-fun mapRes!49792 () Bool)

(assert (=> b!1256211 (= e!714155 (and e!714151 mapRes!49792))))

(declare-fun condMapEmpty!49792 () Bool)

(declare-fun mapDefault!49792 () ValueCell!15239)

