; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40078 () Bool)

(assert start!40078)

(declare-fun b_free!10337 () Bool)

(declare-fun b_next!10337 () Bool)

(assert (=> start!40078 (= b_free!10337 (not b_next!10337))))

(declare-fun tp!36539 () Bool)

(declare-fun b_and!18323 () Bool)

(assert (=> start!40078 (= tp!36539 b_and!18323)))

(declare-fun b!437249 () Bool)

(declare-fun e!258074 () Bool)

(declare-fun e!258076 () Bool)

(declare-fun mapRes!18855 () Bool)

(assert (=> b!437249 (= e!258074 (and e!258076 mapRes!18855))))

(declare-fun condMapEmpty!18855 () Bool)

(declare-datatypes ((V!16423 0))(
  ( (V!16424 (val!5789 Int)) )
))
(declare-datatypes ((ValueCell!5401 0))(
  ( (ValueCellFull!5401 (v!8032 V!16423)) (EmptyCell!5401) )
))
(declare-datatypes ((array!26777 0))(
  ( (array!26778 (arr!12835 (Array (_ BitVec 32) ValueCell!5401)) (size!13187 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26777)

(declare-fun mapDefault!18855 () ValueCell!5401)

