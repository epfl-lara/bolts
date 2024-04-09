; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96454 () Bool)

(assert start!96454)

(declare-fun b_free!22997 () Bool)

(declare-fun b_next!22997 () Bool)

(assert (=> start!96454 (= b_free!22997 (not b_next!22997))))

(declare-fun tp!80918 () Bool)

(declare-fun b_and!36675 () Bool)

(assert (=> start!96454 (= tp!80918 b_and!36675)))

(declare-fun b!1095978 () Bool)

(declare-fun e!625678 () Bool)

(declare-fun e!625682 () Bool)

(declare-fun mapRes!42331 () Bool)

(assert (=> b!1095978 (= e!625678 (and e!625682 mapRes!42331))))

(declare-fun condMapEmpty!42331 () Bool)

(declare-datatypes ((V!41189 0))(
  ( (V!41190 (val!13580 Int)) )
))
(declare-datatypes ((ValueCell!12814 0))(
  ( (ValueCellFull!12814 (v!16202 V!41189)) (EmptyCell!12814) )
))
(declare-datatypes ((array!70958 0))(
  ( (array!70959 (arr!34147 (Array (_ BitVec 32) ValueCell!12814)) (size!34684 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70958)

(declare-fun mapDefault!42331 () ValueCell!12814)

