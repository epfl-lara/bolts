; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105142 () Bool)

(assert start!105142)

(declare-fun b_free!26839 () Bool)

(declare-fun b_next!26839 () Bool)

(assert (=> start!105142 (= b_free!26839 (not b_next!26839))))

(declare-fun tp!94019 () Bool)

(declare-fun b_and!44653 () Bool)

(assert (=> start!105142 (= tp!94019 b_and!44653)))

(declare-fun b!1252438 () Bool)

(declare-fun e!711386 () Bool)

(declare-fun tp_is_empty!31741 () Bool)

(assert (=> b!1252438 (= e!711386 tp_is_empty!31741)))

(declare-fun res!835315 () Bool)

(declare-fun e!711389 () Bool)

(assert (=> start!105142 (=> (not res!835315) (not e!711389))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105142 (= res!835315 (validMask!0 mask!1466))))

(assert (=> start!105142 e!711389))

(assert (=> start!105142 true))

(assert (=> start!105142 tp!94019))

(assert (=> start!105142 tp_is_empty!31741))

(declare-datatypes ((array!81123 0))(
  ( (array!81124 (arr!39120 (Array (_ BitVec 32) (_ BitVec 64))) (size!39657 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81123)

(declare-fun array_inv!29769 (array!81123) Bool)

(assert (=> start!105142 (array_inv!29769 _keys!1118)))

(declare-datatypes ((V!47687 0))(
  ( (V!47688 (val!15933 Int)) )
))
(declare-datatypes ((ValueCell!15107 0))(
  ( (ValueCellFull!15107 (v!18631 V!47687)) (EmptyCell!15107) )
))
(declare-datatypes ((array!81125 0))(
  ( (array!81126 (arr!39121 (Array (_ BitVec 32) ValueCell!15107)) (size!39658 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81125)

(declare-fun e!711387 () Bool)

(declare-fun array_inv!29770 (array!81125) Bool)

(assert (=> start!105142 (and (array_inv!29770 _values!914) e!711387)))

(declare-fun b!1252439 () Bool)

(declare-fun res!835318 () Bool)

(assert (=> b!1252439 (=> (not res!835318) (not e!711389))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81123 (_ BitVec 32)) Bool)

(assert (=> b!1252439 (= res!835318 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1252440 () Bool)

(declare-fun res!835317 () Bool)

(assert (=> b!1252440 (=> (not res!835317) (not e!711389))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1252440 (= res!835317 (and (= (size!39658 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39657 _keys!1118) (size!39658 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1252441 () Bool)

(declare-fun e!711388 () Bool)

(declare-fun mapRes!49384 () Bool)

(assert (=> b!1252441 (= e!711387 (and e!711388 mapRes!49384))))

(declare-fun condMapEmpty!49384 () Bool)

(declare-fun mapDefault!49384 () ValueCell!15107)

