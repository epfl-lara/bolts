; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105246 () Bool)

(assert start!105246)

(declare-fun b_free!26927 () Bool)

(declare-fun b_next!26927 () Bool)

(assert (=> start!105246 (= b_free!26927 (not b_next!26927))))

(declare-fun tp!94286 () Bool)

(declare-fun b_and!44751 () Bool)

(assert (=> start!105246 (= tp!94286 b_and!44751)))

(declare-fun b!1253652 () Bool)

(declare-fun res!836042 () Bool)

(declare-fun e!712284 () Bool)

(assert (=> b!1253652 (=> (not res!836042) (not e!712284))))

(declare-datatypes ((array!81297 0))(
  ( (array!81298 (arr!39206 (Array (_ BitVec 32) (_ BitVec 64))) (size!39743 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81297)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81297 (_ BitVec 32)) Bool)

(assert (=> b!1253652 (= res!836042 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!49519 () Bool)

(declare-fun mapRes!49519 () Bool)

(assert (=> mapIsEmpty!49519 mapRes!49519))

(declare-fun mapNonEmpty!49519 () Bool)

(declare-fun tp!94287 () Bool)

(declare-fun e!712283 () Bool)

(assert (=> mapNonEmpty!49519 (= mapRes!49519 (and tp!94287 e!712283))))

(declare-datatypes ((V!47803 0))(
  ( (V!47804 (val!15977 Int)) )
))
(declare-datatypes ((ValueCell!15151 0))(
  ( (ValueCellFull!15151 (v!18675 V!47803)) (EmptyCell!15151) )
))
(declare-fun mapRest!49519 () (Array (_ BitVec 32) ValueCell!15151))

(declare-datatypes ((array!81299 0))(
  ( (array!81300 (arr!39207 (Array (_ BitVec 32) ValueCell!15151)) (size!39744 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81299)

(declare-fun mapKey!49519 () (_ BitVec 32))

(declare-fun mapValue!49519 () ValueCell!15151)

(assert (=> mapNonEmpty!49519 (= (arr!39207 _values!914) (store mapRest!49519 mapKey!49519 mapValue!49519))))

(declare-fun b!1253653 () Bool)

(declare-fun res!836043 () Bool)

(assert (=> b!1253653 (=> (not res!836043) (not e!712284))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1253653 (= res!836043 (and (= (size!39744 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39743 _keys!1118) (size!39744 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1253654 () Bool)

(declare-fun e!712286 () Bool)

(declare-fun e!712281 () Bool)

(assert (=> b!1253654 (= e!712286 (and e!712281 mapRes!49519))))

(declare-fun condMapEmpty!49519 () Bool)

(declare-fun mapDefault!49519 () ValueCell!15151)

