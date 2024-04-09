; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104882 () Bool)

(assert start!104882)

(declare-fun b_free!26651 () Bool)

(declare-fun b_next!26651 () Bool)

(assert (=> start!104882 (= b_free!26651 (not b_next!26651))))

(declare-fun tp!93444 () Bool)

(declare-fun b_and!44429 () Bool)

(assert (=> start!104882 (= tp!93444 b_and!44429)))

(declare-fun b!1249627 () Bool)

(declare-fun e!709315 () Bool)

(declare-fun tp_is_empty!31553 () Bool)

(assert (=> b!1249627 (= e!709315 tp_is_empty!31553)))

(declare-fun mapIsEmpty!49090 () Bool)

(declare-fun mapRes!49090 () Bool)

(assert (=> mapIsEmpty!49090 mapRes!49090))

(declare-fun mapNonEmpty!49090 () Bool)

(declare-fun tp!93443 () Bool)

(assert (=> mapNonEmpty!49090 (= mapRes!49090 (and tp!93443 e!709315))))

(declare-fun mapKey!49090 () (_ BitVec 32))

(declare-datatypes ((V!47435 0))(
  ( (V!47436 (val!15839 Int)) )
))
(declare-datatypes ((ValueCell!15013 0))(
  ( (ValueCellFull!15013 (v!18535 V!47435)) (EmptyCell!15013) )
))
(declare-fun mapValue!49090 () ValueCell!15013)

(declare-fun mapRest!49090 () (Array (_ BitVec 32) ValueCell!15013))

(declare-datatypes ((array!80759 0))(
  ( (array!80760 (arr!38942 (Array (_ BitVec 32) ValueCell!15013)) (size!39479 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80759)

(assert (=> mapNonEmpty!49090 (= (arr!38942 _values!914) (store mapRest!49090 mapKey!49090 mapValue!49090))))

(declare-fun b!1249628 () Bool)

(declare-fun res!833652 () Bool)

(declare-fun e!709314 () Bool)

(assert (=> b!1249628 (=> (not res!833652) (not e!709314))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!80761 0))(
  ( (array!80762 (arr!38943 (Array (_ BitVec 32) (_ BitVec 64))) (size!39480 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80761)

(assert (=> b!1249628 (= res!833652 (and (= (size!39479 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39480 _keys!1118) (size!39479 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1249629 () Bool)

(declare-fun e!709316 () Bool)

(declare-fun e!709317 () Bool)

(assert (=> b!1249629 (= e!709316 (and e!709317 mapRes!49090))))

(declare-fun condMapEmpty!49090 () Bool)

(declare-fun mapDefault!49090 () ValueCell!15013)

