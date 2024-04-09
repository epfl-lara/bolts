; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108080 () Bool)

(assert start!108080)

(declare-fun b!1275992 () Bool)

(declare-fun e!728606 () Bool)

(declare-fun e!728607 () Bool)

(declare-fun mapRes!51503 () Bool)

(assert (=> b!1275992 (= e!728606 (and e!728607 mapRes!51503))))

(declare-fun condMapEmpty!51503 () Bool)

(declare-datatypes ((V!49525 0))(
  ( (V!49526 (val!16733 Int)) )
))
(declare-datatypes ((ValueCell!15760 0))(
  ( (ValueCellFull!15760 (v!19328 V!49525)) (EmptyCell!15760) )
))
(declare-datatypes ((array!83685 0))(
  ( (array!83686 (arr!40350 (Array (_ BitVec 32) ValueCell!15760)) (size!40901 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83685)

(declare-fun mapDefault!51503 () ValueCell!15760)

