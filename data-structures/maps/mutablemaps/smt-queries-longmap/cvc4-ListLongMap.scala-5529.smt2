; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72990 () Bool)

(assert start!72990)

(declare-fun b_free!13877 () Bool)

(declare-fun b_next!13877 () Bool)

(assert (=> start!72990 (= b_free!13877 (not b_next!13877))))

(declare-fun tp!49135 () Bool)

(declare-fun b_and!22981 () Bool)

(assert (=> start!72990 (= tp!49135 b_and!22981)))

(declare-fun b!847228 () Bool)

(declare-fun e!472798 () Bool)

(declare-fun e!472802 () Bool)

(declare-fun mapRes!25619 () Bool)

(assert (=> b!847228 (= e!472798 (and e!472802 mapRes!25619))))

(declare-fun condMapEmpty!25619 () Bool)

(declare-datatypes ((V!26397 0))(
  ( (V!26398 (val!8054 Int)) )
))
(declare-datatypes ((ValueCell!7567 0))(
  ( (ValueCellFull!7567 (v!10475 V!26397)) (EmptyCell!7567) )
))
(declare-datatypes ((array!48222 0))(
  ( (array!48223 (arr!23138 (Array (_ BitVec 32) ValueCell!7567)) (size!23579 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48222)

(declare-fun mapDefault!25619 () ValueCell!7567)

