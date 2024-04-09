; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96740 () Bool)

(assert start!96740)

(declare-fun b_free!23125 () Bool)

(declare-fun b_next!23125 () Bool)

(assert (=> start!96740 (= b_free!23125 (not b_next!23125))))

(declare-fun tp!81320 () Bool)

(declare-fun b_and!37015 () Bool)

(assert (=> start!96740 (= tp!81320 b_and!37015)))

(declare-fun b!1099770 () Bool)

(declare-fun e!627764 () Bool)

(declare-fun e!627765 () Bool)

(declare-fun mapRes!42541 () Bool)

(assert (=> b!1099770 (= e!627764 (and e!627765 mapRes!42541))))

(declare-fun condMapEmpty!42541 () Bool)

(declare-datatypes ((V!41361 0))(
  ( (V!41362 (val!13644 Int)) )
))
(declare-datatypes ((ValueCell!12878 0))(
  ( (ValueCellFull!12878 (v!16272 V!41361)) (EmptyCell!12878) )
))
(declare-datatypes ((array!71222 0))(
  ( (array!71223 (arr!34273 (Array (_ BitVec 32) ValueCell!12878)) (size!34810 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71222)

(declare-fun mapDefault!42541 () ValueCell!12878)

