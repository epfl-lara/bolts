; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73478 () Bool)

(assert start!73478)

(declare-fun b_free!14365 () Bool)

(declare-fun b_next!14365 () Bool)

(assert (=> start!73478 (= b_free!14365 (not b_next!14365))))

(declare-fun tp!50599 () Bool)

(declare-fun b_and!23739 () Bool)

(assert (=> start!73478 (= tp!50599 b_and!23739)))

(declare-fun b!857544 () Bool)

(declare-fun e!477974 () Bool)

(declare-fun e!477975 () Bool)

(declare-fun mapRes!26351 () Bool)

(assert (=> b!857544 (= e!477974 (and e!477975 mapRes!26351))))

(declare-fun condMapEmpty!26351 () Bool)

(declare-datatypes ((V!27049 0))(
  ( (V!27050 (val!8298 Int)) )
))
(declare-datatypes ((ValueCell!7811 0))(
  ( (ValueCellFull!7811 (v!10719 V!27049)) (EmptyCell!7811) )
))
(declare-datatypes ((array!49166 0))(
  ( (array!49167 (arr!23610 (Array (_ BitVec 32) ValueCell!7811)) (size!24051 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49166)

(declare-fun mapDefault!26351 () ValueCell!7811)

