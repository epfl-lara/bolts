; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105068 () Bool)

(assert start!105068)

(declare-fun b_free!26779 () Bool)

(declare-fun b_next!26779 () Bool)

(assert (=> start!105068 (= b_free!26779 (not b_next!26779))))

(declare-fun tp!93837 () Bool)

(declare-fun b_and!44585 () Bool)

(assert (=> start!105068 (= tp!93837 b_and!44585)))

(declare-fun res!834906 () Bool)

(declare-fun e!710863 () Bool)

(assert (=> start!105068 (=> (not res!834906) (not e!710863))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105068 (= res!834906 (validMask!0 mask!1466))))

(assert (=> start!105068 e!710863))

(assert (=> start!105068 true))

(assert (=> start!105068 tp!93837))

(declare-fun tp_is_empty!31681 () Bool)

(assert (=> start!105068 tp_is_empty!31681))

(declare-datatypes ((array!81005 0))(
  ( (array!81006 (arr!39062 (Array (_ BitVec 32) (_ BitVec 64))) (size!39599 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81005)

(declare-fun array_inv!29727 (array!81005) Bool)

(assert (=> start!105068 (array_inv!29727 _keys!1118)))

(declare-datatypes ((V!47607 0))(
  ( (V!47608 (val!15903 Int)) )
))
(declare-datatypes ((ValueCell!15077 0))(
  ( (ValueCellFull!15077 (v!18601 V!47607)) (EmptyCell!15077) )
))
(declare-datatypes ((array!81007 0))(
  ( (array!81008 (arr!39063 (Array (_ BitVec 32) ValueCell!15077)) (size!39600 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81007)

(declare-fun e!710865 () Bool)

(declare-fun array_inv!29728 (array!81007) Bool)

(assert (=> start!105068 (and (array_inv!29728 _values!914) e!710865)))

(declare-fun mapNonEmpty!49291 () Bool)

(declare-fun mapRes!49291 () Bool)

(declare-fun tp!93836 () Bool)

(declare-fun e!710864 () Bool)

(assert (=> mapNonEmpty!49291 (= mapRes!49291 (and tp!93836 e!710864))))

(declare-fun mapKey!49291 () (_ BitVec 32))

(declare-fun mapRest!49291 () (Array (_ BitVec 32) ValueCell!15077))

(declare-fun mapValue!49291 () ValueCell!15077)

(assert (=> mapNonEmpty!49291 (= (arr!39063 _values!914) (store mapRest!49291 mapKey!49291 mapValue!49291))))

(declare-fun b!1251703 () Bool)

(declare-fun res!834905 () Bool)

(assert (=> b!1251703 (=> (not res!834905) (not e!710863))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1251703 (= res!834905 (and (= (size!39600 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39599 _keys!1118) (size!39600 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1251704 () Bool)

(declare-fun e!710861 () Bool)

(assert (=> b!1251704 (= e!710861 tp_is_empty!31681)))

(declare-fun b!1251705 () Bool)

(assert (=> b!1251705 (= e!710865 (and e!710861 mapRes!49291))))

(declare-fun condMapEmpty!49291 () Bool)

(declare-fun mapDefault!49291 () ValueCell!15077)

