; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110518 () Bool)

(assert start!110518)

(declare-fun b!1306849 () Bool)

(declare-fun e!745711 () Bool)

(declare-fun e!745713 () Bool)

(declare-fun mapRes!54199 () Bool)

(assert (=> b!1306849 (= e!745711 (and e!745713 mapRes!54199))))

(declare-fun condMapEmpty!54199 () Bool)

(declare-datatypes ((V!51833 0))(
  ( (V!51834 (val!17598 Int)) )
))
(declare-datatypes ((ValueCell!16625 0))(
  ( (ValueCellFull!16625 (v!20223 V!51833)) (EmptyCell!16625) )
))
(declare-datatypes ((array!87079 0))(
  ( (array!87080 (arr!42015 (Array (_ BitVec 32) ValueCell!16625)) (size!42566 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87079)

(declare-fun mapDefault!54199 () ValueCell!16625)

