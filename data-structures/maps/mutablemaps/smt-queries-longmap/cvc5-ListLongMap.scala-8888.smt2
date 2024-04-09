; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107960 () Bool)

(assert start!107960)

(declare-fun b!1275178 () Bool)

(declare-fun e!727942 () Bool)

(declare-fun tp_is_empty!33241 () Bool)

(assert (=> b!1275178 (= e!727942 tp_is_empty!33241)))

(declare-fun b!1275179 () Bool)

(declare-fun e!727940 () Bool)

(declare-fun mapRes!51374 () Bool)

(assert (=> b!1275179 (= e!727940 (and e!727942 mapRes!51374))))

(declare-fun condMapEmpty!51374 () Bool)

(declare-datatypes ((V!49425 0))(
  ( (V!49426 (val!16695 Int)) )
))
(declare-datatypes ((ValueCell!15722 0))(
  ( (ValueCellFull!15722 (v!19289 V!49425)) (EmptyCell!15722) )
))
(declare-datatypes ((array!83531 0))(
  ( (array!83532 (arr!40278 (Array (_ BitVec 32) ValueCell!15722)) (size!40829 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83531)

(declare-fun mapDefault!51374 () ValueCell!15722)

