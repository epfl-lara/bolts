; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104858 () Bool)

(assert start!104858)

(declare-fun b_free!26627 () Bool)

(declare-fun b_next!26627 () Bool)

(assert (=> start!104858 (= b_free!26627 (not b_next!26627))))

(declare-fun tp!93372 () Bool)

(declare-fun b_and!44405 () Bool)

(assert (=> start!104858 (= tp!93372 b_and!44405)))

(declare-fun b!1249375 () Bool)

(declare-fun e!709137 () Bool)

(declare-fun tp_is_empty!31529 () Bool)

(assert (=> b!1249375 (= e!709137 tp_is_empty!31529)))

(declare-fun b!1249376 () Bool)

(declare-fun res!833506 () Bool)

(declare-fun e!709136 () Bool)

(assert (=> b!1249376 (=> (not res!833506) (not e!709136))))

(declare-datatypes ((array!80715 0))(
  ( (array!80716 (arr!38920 (Array (_ BitVec 32) (_ BitVec 64))) (size!39457 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80715)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80715 (_ BitVec 32)) Bool)

(assert (=> b!1249376 (= res!833506 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1249378 () Bool)

(declare-fun e!709135 () Bool)

(assert (=> b!1249378 (= e!709135 tp_is_empty!31529)))

(declare-fun b!1249379 () Bool)

(declare-fun res!833508 () Bool)

(assert (=> b!1249379 (=> (not res!833508) (not e!709136))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((V!47403 0))(
  ( (V!47404 (val!15827 Int)) )
))
(declare-datatypes ((ValueCell!15001 0))(
  ( (ValueCellFull!15001 (v!18523 V!47403)) (EmptyCell!15001) )
))
(declare-datatypes ((array!80717 0))(
  ( (array!80718 (arr!38921 (Array (_ BitVec 32) ValueCell!15001)) (size!39458 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80717)

(assert (=> b!1249379 (= res!833508 (and (= (size!39458 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39457 _keys!1118) (size!39458 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!49054 () Bool)

(declare-fun mapRes!49054 () Bool)

(declare-fun tp!93371 () Bool)

(assert (=> mapNonEmpty!49054 (= mapRes!49054 (and tp!93371 e!709137))))

(declare-fun mapRest!49054 () (Array (_ BitVec 32) ValueCell!15001))

(declare-fun mapKey!49054 () (_ BitVec 32))

(declare-fun mapValue!49054 () ValueCell!15001)

(assert (=> mapNonEmpty!49054 (= (arr!38921 _values!914) (store mapRest!49054 mapKey!49054 mapValue!49054))))

(declare-fun mapIsEmpty!49054 () Bool)

(assert (=> mapIsEmpty!49054 mapRes!49054))

(declare-fun res!833505 () Bool)

(assert (=> start!104858 (=> (not res!833505) (not e!709136))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104858 (= res!833505 (validMask!0 mask!1466))))

(assert (=> start!104858 e!709136))

(assert (=> start!104858 true))

(assert (=> start!104858 tp!93372))

(assert (=> start!104858 tp_is_empty!31529))

(declare-fun array_inv!29631 (array!80715) Bool)

(assert (=> start!104858 (array_inv!29631 _keys!1118)))

(declare-fun e!709133 () Bool)

(declare-fun array_inv!29632 (array!80717) Bool)

(assert (=> start!104858 (and (array_inv!29632 _values!914) e!709133)))

(declare-fun b!1249377 () Bool)

(assert (=> b!1249377 (= e!709133 (and e!709135 mapRes!49054))))

(declare-fun condMapEmpty!49054 () Bool)

(declare-fun mapDefault!49054 () ValueCell!15001)

