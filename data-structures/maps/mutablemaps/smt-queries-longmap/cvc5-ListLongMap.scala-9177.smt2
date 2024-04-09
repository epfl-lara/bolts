; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110408 () Bool)

(assert start!110408)

(declare-fun b!1306063 () Bool)

(declare-fun e!745086 () Bool)

(declare-fun e!745085 () Bool)

(declare-fun mapRes!54079 () Bool)

(assert (=> b!1306063 (= e!745086 (and e!745085 mapRes!54079))))

(declare-fun condMapEmpty!54079 () Bool)

(declare-datatypes ((V!51737 0))(
  ( (V!51738 (val!17562 Int)) )
))
(declare-datatypes ((ValueCell!16589 0))(
  ( (ValueCellFull!16589 (v!20186 V!51737)) (EmptyCell!16589) )
))
(declare-datatypes ((array!86937 0))(
  ( (array!86938 (arr!41948 (Array (_ BitVec 32) ValueCell!16589)) (size!42499 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!86937)

(declare-fun mapDefault!54079 () ValueCell!16589)

