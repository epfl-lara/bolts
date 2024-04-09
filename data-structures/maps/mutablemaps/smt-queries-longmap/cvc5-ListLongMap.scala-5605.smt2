; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73442 () Bool)

(assert start!73442)

(declare-fun b_free!14329 () Bool)

(declare-fun b_next!14329 () Bool)

(assert (=> start!73442 (= b_free!14329 (not b_next!14329))))

(declare-fun tp!50492 () Bool)

(declare-fun b_and!23703 () Bool)

(assert (=> start!73442 (= tp!50492 b_and!23703)))

(declare-fun b!856896 () Bool)

(declare-fun e!477650 () Bool)

(declare-fun e!477652 () Bool)

(declare-fun mapRes!26297 () Bool)

(assert (=> b!856896 (= e!477650 (and e!477652 mapRes!26297))))

(declare-fun condMapEmpty!26297 () Bool)

(declare-datatypes ((V!27001 0))(
  ( (V!27002 (val!8280 Int)) )
))
(declare-datatypes ((ValueCell!7793 0))(
  ( (ValueCellFull!7793 (v!10701 V!27001)) (EmptyCell!7793) )
))
(declare-datatypes ((array!49098 0))(
  ( (array!49099 (arr!23576 (Array (_ BitVec 32) ValueCell!7793)) (size!24017 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49098)

(declare-fun mapDefault!26297 () ValueCell!7793)

