; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104904 () Bool)

(assert start!104904)

(declare-fun b_free!26659 () Bool)

(declare-fun b_next!26659 () Bool)

(assert (=> start!104904 (= b_free!26659 (not b_next!26659))))

(declare-fun tp!93471 () Bool)

(declare-fun b_and!44445 () Bool)

(assert (=> start!104904 (= tp!93471 b_and!44445)))

(declare-fun b!1249798 () Bool)

(declare-fun res!833730 () Bool)

(declare-fun e!709432 () Bool)

(assert (=> b!1249798 (=> (not res!833730) (not e!709432))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((V!47447 0))(
  ( (V!47448 (val!15843 Int)) )
))
(declare-datatypes ((ValueCell!15017 0))(
  ( (ValueCellFull!15017 (v!18539 V!47447)) (EmptyCell!15017) )
))
(declare-datatypes ((array!80775 0))(
  ( (array!80776 (arr!38949 (Array (_ BitVec 32) ValueCell!15017)) (size!39486 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80775)

(declare-datatypes ((array!80777 0))(
  ( (array!80778 (arr!38950 (Array (_ BitVec 32) (_ BitVec 64))) (size!39487 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80777)

(assert (=> b!1249798 (= res!833730 (and (= (size!39486 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39487 _keys!1118) (size!39486 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1249799 () Bool)

(declare-fun e!709435 () Bool)

(declare-fun tp_is_empty!31561 () Bool)

(assert (=> b!1249799 (= e!709435 tp_is_empty!31561)))

(declare-fun mapNonEmpty!49105 () Bool)

(declare-fun mapRes!49105 () Bool)

(declare-fun tp!93470 () Bool)

(declare-fun e!709433 () Bool)

(assert (=> mapNonEmpty!49105 (= mapRes!49105 (and tp!93470 e!709433))))

(declare-fun mapKey!49105 () (_ BitVec 32))

(declare-fun mapValue!49105 () ValueCell!15017)

(declare-fun mapRest!49105 () (Array (_ BitVec 32) ValueCell!15017))

(assert (=> mapNonEmpty!49105 (= (arr!38949 _values!914) (store mapRest!49105 mapKey!49105 mapValue!49105))))

(declare-fun b!1249800 () Bool)

(declare-fun e!709434 () Bool)

(assert (=> b!1249800 (= e!709434 (and e!709435 mapRes!49105))))

(declare-fun condMapEmpty!49105 () Bool)

(declare-fun mapDefault!49105 () ValueCell!15017)

