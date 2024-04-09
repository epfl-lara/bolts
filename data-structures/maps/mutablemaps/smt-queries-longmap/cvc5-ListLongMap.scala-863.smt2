; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20286 () Bool)

(assert start!20286)

(declare-fun b_free!4933 () Bool)

(declare-fun b_next!4933 () Bool)

(assert (=> start!20286 (= b_free!4933 (not b_next!4933))))

(declare-fun tp!17830 () Bool)

(declare-fun b_and!11697 () Bool)

(assert (=> start!20286 (= tp!17830 b_and!11697)))

(declare-fun b!199500 () Bool)

(declare-fun e!130960 () Bool)

(declare-fun e!130959 () Bool)

(declare-fun mapRes!8252 () Bool)

(assert (=> b!199500 (= e!130960 (and e!130959 mapRes!8252))))

(declare-fun condMapEmpty!8252 () Bool)

(declare-datatypes ((V!6033 0))(
  ( (V!6034 (val!2439 Int)) )
))
(declare-datatypes ((ValueCell!2051 0))(
  ( (ValueCellFull!2051 (v!4405 V!6033)) (EmptyCell!2051) )
))
(declare-datatypes ((array!8818 0))(
  ( (array!8819 (arr!4159 (Array (_ BitVec 32) ValueCell!2051)) (size!4484 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8818)

(declare-fun mapDefault!8252 () ValueCell!2051)

