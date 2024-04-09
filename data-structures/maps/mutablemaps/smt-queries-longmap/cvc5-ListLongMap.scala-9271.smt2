; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111010 () Bool)

(assert start!111010)

(declare-fun b_free!29809 () Bool)

(declare-fun b_next!29809 () Bool)

(assert (=> start!111010 (= b_free!29809 (not b_next!29809))))

(declare-fun tp!104750 () Bool)

(declare-fun b_and!48027 () Bool)

(assert (=> start!111010 (= tp!104750 b_and!48027)))

(declare-fun b!1313745 () Bool)

(declare-fun res!872270 () Bool)

(declare-fun e!749402 () Bool)

(assert (=> b!1313745 (=> (not res!872270) (not e!749402))))

(declare-datatypes ((array!88017 0))(
  ( (array!88018 (arr!42484 (Array (_ BitVec 32) (_ BitVec 64))) (size!43035 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88017)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88017 (_ BitVec 32)) Bool)

(assert (=> b!1313745 (= res!872270 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1313746 () Bool)

(declare-fun e!749403 () Bool)

(declare-fun e!749405 () Bool)

(declare-fun mapRes!54937 () Bool)

(assert (=> b!1313746 (= e!749403 (and e!749405 mapRes!54937))))

(declare-fun condMapEmpty!54937 () Bool)

(declare-datatypes ((V!52489 0))(
  ( (V!52490 (val!17844 Int)) )
))
(declare-datatypes ((ValueCell!16871 0))(
  ( (ValueCellFull!16871 (v!20469 V!52489)) (EmptyCell!16871) )
))
(declare-datatypes ((array!88019 0))(
  ( (array!88020 (arr!42485 (Array (_ BitVec 32) ValueCell!16871)) (size!43036 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88019)

(declare-fun mapDefault!54937 () ValueCell!16871)

