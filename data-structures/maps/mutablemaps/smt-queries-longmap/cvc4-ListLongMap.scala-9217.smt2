; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110690 () Bool)

(assert start!110690)

(declare-fun b_free!29489 () Bool)

(declare-fun b_next!29489 () Bool)

(assert (=> start!110690 (= b_free!29489 (not b_next!29489))))

(declare-fun tp!103789 () Bool)

(declare-fun b_and!47707 () Bool)

(assert (=> start!110690 (= tp!103789 b_and!47707)))

(declare-fun mapIsEmpty!54457 () Bool)

(declare-fun mapRes!54457 () Bool)

(assert (=> mapIsEmpty!54457 mapRes!54457))

(declare-fun b!1309230 () Bool)

(declare-fun e!747002 () Bool)

(declare-fun e!747004 () Bool)

(assert (=> b!1309230 (= e!747002 (and e!747004 mapRes!54457))))

(declare-fun condMapEmpty!54457 () Bool)

(declare-datatypes ((V!52061 0))(
  ( (V!52062 (val!17684 Int)) )
))
(declare-datatypes ((ValueCell!16711 0))(
  ( (ValueCellFull!16711 (v!20309 V!52061)) (EmptyCell!16711) )
))
(declare-datatypes ((array!87401 0))(
  ( (array!87402 (arr!42176 (Array (_ BitVec 32) ValueCell!16711)) (size!42727 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87401)

(declare-fun mapDefault!54457 () ValueCell!16711)

