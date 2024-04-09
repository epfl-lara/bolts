; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104962 () Bool)

(assert start!104962)

(declare-fun b_free!26717 () Bool)

(declare-fun b_next!26717 () Bool)

(assert (=> start!104962 (= b_free!26717 (not b_next!26717))))

(declare-fun tp!93645 () Bool)

(declare-fun b_and!44503 () Bool)

(assert (=> start!104962 (= tp!93645 b_and!44503)))

(declare-fun b!1250574 () Bool)

(declare-fun e!710034 () Bool)

(declare-fun e!710035 () Bool)

(declare-fun mapRes!49192 () Bool)

(assert (=> b!1250574 (= e!710034 (and e!710035 mapRes!49192))))

(declare-fun condMapEmpty!49192 () Bool)

(declare-datatypes ((V!47523 0))(
  ( (V!47524 (val!15872 Int)) )
))
(declare-datatypes ((ValueCell!15046 0))(
  ( (ValueCellFull!15046 (v!18568 V!47523)) (EmptyCell!15046) )
))
(declare-datatypes ((array!80887 0))(
  ( (array!80888 (arr!39005 (Array (_ BitVec 32) ValueCell!15046)) (size!39542 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80887)

(declare-fun mapDefault!49192 () ValueCell!15046)

