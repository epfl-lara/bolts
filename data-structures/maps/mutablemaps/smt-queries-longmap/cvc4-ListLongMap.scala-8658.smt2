; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105328 () Bool)

(assert start!105328)

(declare-fun b_free!26987 () Bool)

(declare-fun b_next!26987 () Bool)

(assert (=> start!105328 (= b_free!26987 (not b_next!26987))))

(declare-fun tp!94470 () Bool)

(declare-fun b_and!44823 () Bool)

(assert (=> start!105328 (= tp!94470 b_and!44823)))

(declare-fun b!1254555 () Bool)

(declare-fun res!836574 () Bool)

(declare-fun e!712941 () Bool)

(assert (=> b!1254555 (=> (not res!836574) (not e!712941))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81411 0))(
  ( (array!81412 (arr!39262 (Array (_ BitVec 32) (_ BitVec 64))) (size!39799 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81411)

(declare-datatypes ((V!47883 0))(
  ( (V!47884 (val!16007 Int)) )
))
(declare-datatypes ((ValueCell!15181 0))(
  ( (ValueCellFull!15181 (v!18706 V!47883)) (EmptyCell!15181) )
))
(declare-datatypes ((array!81413 0))(
  ( (array!81414 (arr!39263 (Array (_ BitVec 32) ValueCell!15181)) (size!39800 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81413)

(assert (=> b!1254555 (= res!836574 (and (= (size!39800 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39799 _keys!1118) (size!39800 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1254557 () Bool)

(declare-fun e!712945 () Bool)

(declare-fun tp_is_empty!31889 () Bool)

(assert (=> b!1254557 (= e!712945 tp_is_empty!31889)))

(declare-fun b!1254558 () Bool)

(declare-fun e!712940 () Bool)

(declare-fun mapRes!49612 () Bool)

(assert (=> b!1254558 (= e!712940 (and e!712945 mapRes!49612))))

(declare-fun condMapEmpty!49612 () Bool)

(declare-fun mapDefault!49612 () ValueCell!15181)

