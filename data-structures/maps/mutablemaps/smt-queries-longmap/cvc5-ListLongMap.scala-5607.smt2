; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73454 () Bool)

(assert start!73454)

(declare-fun b_free!14341 () Bool)

(declare-fun b_next!14341 () Bool)

(assert (=> start!73454 (= b_free!14341 (not b_next!14341))))

(declare-fun tp!50527 () Bool)

(declare-fun b_and!23715 () Bool)

(assert (=> start!73454 (= tp!50527 b_and!23715)))

(declare-fun b!857112 () Bool)

(declare-fun e!477762 () Bool)

(declare-fun tp_is_empty!16477 () Bool)

(assert (=> b!857112 (= e!477762 tp_is_empty!16477)))

(declare-fun b!857113 () Bool)

(declare-fun res!582331 () Bool)

(declare-fun e!477757 () Bool)

(assert (=> b!857113 (=> (not res!582331) (not e!477757))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!857113 (= res!582331 (validKeyInArray!0 k!854))))

(declare-fun b!857114 () Bool)

(declare-fun e!477759 () Bool)

(declare-fun mapRes!26315 () Bool)

(assert (=> b!857114 (= e!477759 (and e!477762 mapRes!26315))))

(declare-fun condMapEmpty!26315 () Bool)

(declare-datatypes ((V!27017 0))(
  ( (V!27018 (val!8286 Int)) )
))
(declare-datatypes ((ValueCell!7799 0))(
  ( (ValueCellFull!7799 (v!10707 V!27017)) (EmptyCell!7799) )
))
(declare-datatypes ((array!49120 0))(
  ( (array!49121 (arr!23587 (Array (_ BitVec 32) ValueCell!7799)) (size!24028 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49120)

(declare-fun mapDefault!26315 () ValueCell!7799)

