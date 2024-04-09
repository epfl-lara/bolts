; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108400 () Bool)

(assert start!108400)

(declare-fun b!1278849 () Bool)

(declare-fun e!730672 () Bool)

(declare-fun tp_is_empty!33551 () Bool)

(assert (=> b!1278849 (= e!730672 tp_is_empty!33551)))

(declare-fun b!1278850 () Bool)

(declare-fun e!730671 () Bool)

(declare-fun e!730675 () Bool)

(declare-fun mapRes!51878 () Bool)

(assert (=> b!1278850 (= e!730671 (and e!730675 mapRes!51878))))

(declare-fun condMapEmpty!51878 () Bool)

(declare-datatypes ((V!49837 0))(
  ( (V!49838 (val!16850 Int)) )
))
(declare-datatypes ((ValueCell!15877 0))(
  ( (ValueCellFull!15877 (v!19448 V!49837)) (EmptyCell!15877) )
))
(declare-datatypes ((array!84141 0))(
  ( (array!84142 (arr!40570 (Array (_ BitVec 32) ValueCell!15877)) (size!41121 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84141)

(declare-fun mapDefault!51878 () ValueCell!15877)

