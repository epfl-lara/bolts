; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108280 () Bool)

(assert start!108280)

(declare-fun mapIsEmpty!51749 () Bool)

(declare-fun mapRes!51749 () Bool)

(assert (=> mapIsEmpty!51749 mapRes!51749))

(declare-fun b!1278035 () Bool)

(declare-fun e!730006 () Bool)

(declare-fun tp_is_empty!33475 () Bool)

(assert (=> b!1278035 (= e!730006 tp_is_empty!33475)))

(declare-fun b!1278036 () Bool)

(declare-fun e!730008 () Bool)

(assert (=> b!1278036 (= e!730008 (and e!730006 mapRes!51749))))

(declare-fun condMapEmpty!51749 () Bool)

(declare-datatypes ((V!49737 0))(
  ( (V!49738 (val!16812 Int)) )
))
(declare-datatypes ((ValueCell!15839 0))(
  ( (ValueCellFull!15839 (v!19409 V!49737)) (EmptyCell!15839) )
))
(declare-datatypes ((array!83985 0))(
  ( (array!83986 (arr!40497 (Array (_ BitVec 32) ValueCell!15839)) (size!41048 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!83985)

(declare-fun mapDefault!51749 () ValueCell!15839)

