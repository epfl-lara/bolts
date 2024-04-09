; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111026 () Bool)

(assert start!111026)

(declare-fun b_free!29825 () Bool)

(declare-fun b_next!29825 () Bool)

(assert (=> start!111026 (= b_free!29825 (not b_next!29825))))

(declare-fun tp!104797 () Bool)

(declare-fun b_and!48043 () Bool)

(assert (=> start!111026 (= tp!104797 b_and!48043)))

(declare-fun b!1313937 () Bool)

(declare-fun e!749523 () Bool)

(declare-fun e!749522 () Bool)

(declare-fun mapRes!54961 () Bool)

(assert (=> b!1313937 (= e!749523 (and e!749522 mapRes!54961))))

(declare-fun condMapEmpty!54961 () Bool)

(declare-datatypes ((V!52509 0))(
  ( (V!52510 (val!17852 Int)) )
))
(declare-datatypes ((ValueCell!16879 0))(
  ( (ValueCellFull!16879 (v!20477 V!52509)) (EmptyCell!16879) )
))
(declare-datatypes ((array!88049 0))(
  ( (array!88050 (arr!42500 (Array (_ BitVec 32) ValueCell!16879)) (size!43051 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88049)

(declare-fun mapDefault!54961 () ValueCell!16879)

