; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96988 () Bool)

(assert start!96988)

(declare-fun b!1102983 () Bool)

(declare-fun e!629600 () Bool)

(declare-fun e!629597 () Bool)

(declare-fun mapRes!42703 () Bool)

(assert (=> b!1102983 (= e!629600 (and e!629597 mapRes!42703))))

(declare-fun condMapEmpty!42703 () Bool)

(declare-datatypes ((V!41489 0))(
  ( (V!41490 (val!13692 Int)) )
))
(declare-datatypes ((ValueCell!12926 0))(
  ( (ValueCellFull!12926 (v!16324 V!41489)) (EmptyCell!12926) )
))
(declare-datatypes ((array!71420 0))(
  ( (array!71421 (arr!34366 (Array (_ BitVec 32) ValueCell!12926)) (size!34903 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71420)

(declare-fun mapDefault!42703 () ValueCell!12926)

