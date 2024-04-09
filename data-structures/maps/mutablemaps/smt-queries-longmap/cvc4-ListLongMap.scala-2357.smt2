; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37616 () Bool)

(assert start!37616)

(declare-fun b_free!8735 () Bool)

(declare-fun b_next!8735 () Bool)

(assert (=> start!37616 (= b_free!8735 (not b_next!8735))))

(declare-fun tp!30921 () Bool)

(declare-fun b_and!15995 () Bool)

(assert (=> start!37616 (= tp!30921 b_and!15995)))

(declare-fun b!384526 () Bool)

(declare-fun e!233443 () Bool)

(declare-fun e!233445 () Bool)

(declare-fun mapRes!15639 () Bool)

(assert (=> b!384526 (= e!233443 (and e!233445 mapRes!15639))))

(declare-fun condMapEmpty!15639 () Bool)

(declare-datatypes ((V!13615 0))(
  ( (V!13616 (val!4736 Int)) )
))
(declare-datatypes ((ValueCell!4348 0))(
  ( (ValueCellFull!4348 (v!6929 V!13615)) (EmptyCell!4348) )
))
(declare-datatypes ((array!22653 0))(
  ( (array!22654 (arr!10792 (Array (_ BitVec 32) ValueCell!4348)) (size!11144 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22653)

(declare-fun mapDefault!15639 () ValueCell!4348)

