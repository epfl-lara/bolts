; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108366 () Bool)

(assert start!108366)

(declare-fun b!1278543 () Bool)

(declare-fun e!730416 () Bool)

(declare-fun e!730420 () Bool)

(declare-fun mapRes!51827 () Bool)

(assert (=> b!1278543 (= e!730416 (and e!730420 mapRes!51827))))

(declare-fun condMapEmpty!51827 () Bool)

(declare-datatypes ((V!49793 0))(
  ( (V!49794 (val!16833 Int)) )
))
(declare-datatypes ((ValueCell!15860 0))(
  ( (ValueCellFull!15860 (v!19431 V!49793)) (EmptyCell!15860) )
))
(declare-datatypes ((array!84075 0))(
  ( (array!84076 (arr!40537 (Array (_ BitVec 32) ValueCell!15860)) (size!41088 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84075)

(declare-fun mapDefault!51827 () ValueCell!15860)

