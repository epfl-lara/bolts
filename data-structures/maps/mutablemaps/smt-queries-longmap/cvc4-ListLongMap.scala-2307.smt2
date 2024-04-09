; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37316 () Bool)

(assert start!37316)

(declare-fun b_free!8435 () Bool)

(declare-fun b_next!8435 () Bool)

(assert (=> start!37316 (= b_free!8435 (not b_next!8435))))

(declare-fun tp!30020 () Bool)

(declare-fun b_and!15695 () Bool)

(assert (=> start!37316 (= tp!30020 b_and!15695)))

(declare-fun b!378036 () Bool)

(declare-fun e!230115 () Bool)

(declare-fun e!230114 () Bool)

(declare-fun mapRes!15189 () Bool)

(assert (=> b!378036 (= e!230115 (and e!230114 mapRes!15189))))

(declare-fun condMapEmpty!15189 () Bool)

(declare-datatypes ((V!13215 0))(
  ( (V!13216 (val!4586 Int)) )
))
(declare-datatypes ((ValueCell!4198 0))(
  ( (ValueCellFull!4198 (v!6779 V!13215)) (EmptyCell!4198) )
))
(declare-datatypes ((array!22065 0))(
  ( (array!22066 (arr!10498 (Array (_ BitVec 32) ValueCell!4198)) (size!10850 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22065)

(declare-fun mapDefault!15189 () ValueCell!4198)

