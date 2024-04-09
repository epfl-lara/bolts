; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20226 () Bool)

(assert start!20226)

(declare-fun b_free!4873 () Bool)

(declare-fun b_next!4873 () Bool)

(assert (=> start!20226 (= b_free!4873 (not b_next!4873))))

(declare-fun tp!17650 () Bool)

(declare-fun b_and!11637 () Bool)

(assert (=> start!20226 (= tp!17650 b_and!11637)))

(declare-fun b!198600 () Bool)

(declare-fun e!130507 () Bool)

(declare-fun e!130510 () Bool)

(declare-fun mapRes!8162 () Bool)

(assert (=> b!198600 (= e!130507 (and e!130510 mapRes!8162))))

(declare-fun condMapEmpty!8162 () Bool)

(declare-datatypes ((V!5953 0))(
  ( (V!5954 (val!2409 Int)) )
))
(declare-datatypes ((ValueCell!2021 0))(
  ( (ValueCellFull!2021 (v!4375 V!5953)) (EmptyCell!2021) )
))
(declare-datatypes ((array!8704 0))(
  ( (array!8705 (arr!4102 (Array (_ BitVec 32) ValueCell!2021)) (size!4427 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8704)

(declare-fun mapDefault!8162 () ValueCell!2021)

