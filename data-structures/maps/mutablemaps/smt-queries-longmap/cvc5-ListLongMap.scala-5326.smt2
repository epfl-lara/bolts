; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71240 () Bool)

(assert start!71240)

(declare-fun b_free!13363 () Bool)

(declare-fun b_next!13363 () Bool)

(assert (=> start!71240 (= b_free!13363 (not b_next!13363))))

(declare-fun tp!46852 () Bool)

(declare-fun b_and!22319 () Bool)

(assert (=> start!71240 (= tp!46852 b_and!22319)))

(declare-fun mapIsEmpty!24238 () Bool)

(declare-fun mapRes!24238 () Bool)

(assert (=> mapIsEmpty!24238 mapRes!24238))

(declare-fun b!827101 () Bool)

(declare-fun e!460756 () Bool)

(declare-fun e!460755 () Bool)

(assert (=> b!827101 (= e!460756 (and e!460755 mapRes!24238))))

(declare-fun condMapEmpty!24238 () Bool)

(declare-datatypes ((V!25099 0))(
  ( (V!25100 (val!7584 Int)) )
))
(declare-datatypes ((ValueCell!7121 0))(
  ( (ValueCellFull!7121 (v!10015 V!25099)) (EmptyCell!7121) )
))
(declare-datatypes ((array!46282 0))(
  ( (array!46283 (arr!22181 (Array (_ BitVec 32) ValueCell!7121)) (size!22602 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46282)

(declare-fun mapDefault!24238 () ValueCell!7121)

