; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110498 () Bool)

(assert start!110498)

(declare-fun b!1306667 () Bool)

(declare-fun e!745564 () Bool)

(declare-fun e!745565 () Bool)

(declare-fun mapRes!54169 () Bool)

(assert (=> b!1306667 (= e!745564 (and e!745565 mapRes!54169))))

(declare-fun condMapEmpty!54169 () Bool)

(declare-datatypes ((V!51805 0))(
  ( (V!51806 (val!17588 Int)) )
))
(declare-datatypes ((ValueCell!16615 0))(
  ( (ValueCellFull!16615 (v!20213 V!51805)) (EmptyCell!16615) )
))
(declare-datatypes ((array!87041 0))(
  ( (array!87042 (arr!41996 (Array (_ BitVec 32) ValueCell!16615)) (size!42547 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87041)

(declare-fun mapDefault!54169 () ValueCell!16615)

