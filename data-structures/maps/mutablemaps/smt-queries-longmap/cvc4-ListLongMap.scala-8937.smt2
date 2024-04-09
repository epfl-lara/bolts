; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108388 () Bool)

(assert start!108388)

(declare-fun b!1278741 () Bool)

(declare-fun e!730585 () Bool)

(assert (=> b!1278741 (= e!730585 false)))

(declare-fun lt!575875 () Bool)

(declare-datatypes ((array!84117 0))(
  ( (array!84118 (arr!40558 (Array (_ BitVec 32) (_ BitVec 64))) (size!41109 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84117)

(declare-datatypes ((List!28915 0))(
  ( (Nil!28912) (Cons!28911 (h!30120 (_ BitVec 64)) (t!42462 List!28915)) )
))
(declare-fun arrayNoDuplicates!0 (array!84117 (_ BitVec 32) List!28915) Bool)

(assert (=> b!1278741 (= lt!575875 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28912))))

(declare-fun b!1278742 () Bool)

(declare-fun e!730583 () Bool)

(declare-fun tp_is_empty!33539 () Bool)

(assert (=> b!1278742 (= e!730583 tp_is_empty!33539)))

(declare-fun b!1278743 () Bool)

(declare-fun e!730584 () Bool)

(declare-fun mapRes!51860 () Bool)

(assert (=> b!1278743 (= e!730584 (and e!730583 mapRes!51860))))

(declare-fun condMapEmpty!51860 () Bool)

(declare-datatypes ((V!49821 0))(
  ( (V!49822 (val!16844 Int)) )
))
(declare-datatypes ((ValueCell!15871 0))(
  ( (ValueCellFull!15871 (v!19442 V!49821)) (EmptyCell!15871) )
))
(declare-datatypes ((array!84119 0))(
  ( (array!84120 (arr!40559 (Array (_ BitVec 32) ValueCell!15871)) (size!41110 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84119)

(declare-fun mapDefault!51860 () ValueCell!15871)

