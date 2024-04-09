; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73260 () Bool)

(assert start!73260)

(declare-fun b_free!14147 () Bool)

(declare-fun b_next!14147 () Bool)

(assert (=> start!73260 (= b_free!14147 (not b_next!14147))))

(declare-fun tp!49946 () Bool)

(declare-fun b_and!23471 () Bool)

(assert (=> start!73260 (= tp!49946 b_and!23471)))

(declare-fun b!853459 () Bool)

(declare-fun e!475977 () Bool)

(declare-fun e!475978 () Bool)

(declare-fun mapRes!26024 () Bool)

(assert (=> b!853459 (= e!475977 (and e!475978 mapRes!26024))))

(declare-fun condMapEmpty!26024 () Bool)

(declare-datatypes ((V!26757 0))(
  ( (V!26758 (val!8189 Int)) )
))
(declare-datatypes ((ValueCell!7702 0))(
  ( (ValueCellFull!7702 (v!10610 V!26757)) (EmptyCell!7702) )
))
(declare-datatypes ((array!48750 0))(
  ( (array!48751 (arr!23402 (Array (_ BitVec 32) ValueCell!7702)) (size!23843 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48750)

(declare-fun mapDefault!26024 () ValueCell!7702)

