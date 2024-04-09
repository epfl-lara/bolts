; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110488 () Bool)

(assert start!110488)

(declare-fun b!1306577 () Bool)

(declare-fun e!745487 () Bool)

(declare-fun tp_is_empty!35017 () Bool)

(assert (=> b!1306577 (= e!745487 tp_is_empty!35017)))

(declare-fun b!1306578 () Bool)

(declare-fun e!745486 () Bool)

(declare-fun e!745488 () Bool)

(declare-fun mapRes!54154 () Bool)

(assert (=> b!1306578 (= e!745486 (and e!745488 mapRes!54154))))

(declare-fun condMapEmpty!54154 () Bool)

(declare-datatypes ((V!51793 0))(
  ( (V!51794 (val!17583 Int)) )
))
(declare-datatypes ((ValueCell!16610 0))(
  ( (ValueCellFull!16610 (v!20208 V!51793)) (EmptyCell!16610) )
))
(declare-datatypes ((array!87025 0))(
  ( (array!87026 (arr!41988 (Array (_ BitVec 32) ValueCell!16610)) (size!42539 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87025)

(declare-fun mapDefault!54154 () ValueCell!16610)

