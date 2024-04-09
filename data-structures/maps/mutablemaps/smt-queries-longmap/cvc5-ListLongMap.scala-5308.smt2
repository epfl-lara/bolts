; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71092 () Bool)

(assert start!71092)

(declare-fun b_free!13255 () Bool)

(declare-fun b_next!13255 () Bool)

(assert (=> start!71092 (= b_free!13255 (not b_next!13255))))

(declare-fun tp!46522 () Bool)

(declare-fun b_and!22187 () Bool)

(assert (=> start!71092 (= tp!46522 b_and!22187)))

(declare-fun b!825129 () Bool)

(declare-fun e!459257 () Bool)

(declare-fun e!459261 () Bool)

(declare-fun mapRes!24070 () Bool)

(assert (=> b!825129 (= e!459257 (and e!459261 mapRes!24070))))

(declare-fun condMapEmpty!24070 () Bool)

(declare-datatypes ((V!24955 0))(
  ( (V!24956 (val!7530 Int)) )
))
(declare-datatypes ((ValueCell!7067 0))(
  ( (ValueCellFull!7067 (v!9959 V!24955)) (EmptyCell!7067) )
))
(declare-datatypes ((array!46076 0))(
  ( (array!46077 (arr!22080 (Array (_ BitVec 32) ValueCell!7067)) (size!22501 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46076)

(declare-fun mapDefault!24070 () ValueCell!7067)

