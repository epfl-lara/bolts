; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105090 () Bool)

(assert start!105090)

(declare-fun b_free!26801 () Bool)

(declare-fun b_next!26801 () Bool)

(assert (=> start!105090 (= b_free!26801 (not b_next!26801))))

(declare-fun tp!93902 () Bool)

(declare-fun b_and!44607 () Bool)

(assert (=> start!105090 (= tp!93902 b_and!44607)))

(declare-fun b!1251934 () Bool)

(declare-fun res!835038 () Bool)

(declare-fun e!711029 () Bool)

(assert (=> b!1251934 (=> (not res!835038) (not e!711029))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81049 0))(
  ( (array!81050 (arr!39084 (Array (_ BitVec 32) (_ BitVec 64))) (size!39621 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81049)

(declare-datatypes ((V!47635 0))(
  ( (V!47636 (val!15914 Int)) )
))
(declare-datatypes ((ValueCell!15088 0))(
  ( (ValueCellFull!15088 (v!18612 V!47635)) (EmptyCell!15088) )
))
(declare-datatypes ((array!81051 0))(
  ( (array!81052 (arr!39085 (Array (_ BitVec 32) ValueCell!15088)) (size!39622 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81051)

(assert (=> b!1251934 (= res!835038 (and (= (size!39622 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39621 _keys!1118) (size!39622 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1251935 () Bool)

(declare-fun e!711027 () Bool)

(declare-fun e!711028 () Bool)

(declare-fun mapRes!49324 () Bool)

(assert (=> b!1251935 (= e!711027 (and e!711028 mapRes!49324))))

(declare-fun condMapEmpty!49324 () Bool)

(declare-fun mapDefault!49324 () ValueCell!15088)

