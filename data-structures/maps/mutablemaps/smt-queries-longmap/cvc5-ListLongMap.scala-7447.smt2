; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94612 () Bool)

(assert start!94612)

(declare-fun b_free!21859 () Bool)

(declare-fun b_next!21859 () Bool)

(assert (=> start!94612 (= b_free!21859 (not b_next!21859))))

(declare-fun tp!77030 () Bool)

(declare-fun b_and!34689 () Bool)

(assert (=> start!94612 (= tp!77030 b_and!34689)))

(declare-fun b!1069357 () Bool)

(declare-fun res!713592 () Bool)

(declare-fun e!610316 () Bool)

(assert (=> b!1069357 (=> (not res!713592) (not e!610316))))

(declare-datatypes ((array!68286 0))(
  ( (array!68287 (arr!32837 (Array (_ BitVec 32) (_ BitVec 64))) (size!33374 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68286)

(declare-datatypes ((List!23035 0))(
  ( (Nil!23032) (Cons!23031 (h!24240 (_ BitVec 64)) (t!32371 List!23035)) )
))
(declare-fun arrayNoDuplicates!0 (array!68286 (_ BitVec 32) List!23035) Bool)

(assert (=> b!1069357 (= res!713592 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23032))))

(declare-fun b!1069358 () Bool)

(declare-fun res!713591 () Bool)

(assert (=> b!1069358 (=> (not res!713591) (not e!610316))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39361 0))(
  ( (V!39362 (val!12885 Int)) )
))
(declare-datatypes ((ValueCell!12131 0))(
  ( (ValueCellFull!12131 (v!15502 V!39361)) (EmptyCell!12131) )
))
(declare-datatypes ((array!68288 0))(
  ( (array!68289 (arr!32838 (Array (_ BitVec 32) ValueCell!12131)) (size!33375 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68288)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1069358 (= res!713591 (and (= (size!33375 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33374 _keys!1163) (size!33375 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1069359 () Bool)

(declare-fun e!610312 () Bool)

(declare-fun e!610313 () Bool)

(declare-fun mapRes!40204 () Bool)

(assert (=> b!1069359 (= e!610312 (and e!610313 mapRes!40204))))

(declare-fun condMapEmpty!40204 () Bool)

(declare-fun mapDefault!40204 () ValueCell!12131)

