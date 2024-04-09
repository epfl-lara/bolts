; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37324 () Bool)

(assert start!37324)

(declare-fun b_free!8443 () Bool)

(declare-fun b_next!8443 () Bool)

(assert (=> start!37324 (= b_free!8443 (not b_next!8443))))

(declare-fun tp!30045 () Bool)

(declare-fun b_and!15703 () Bool)

(assert (=> start!37324 (= tp!30045 b_and!15703)))

(declare-fun b!378226 () Bool)

(declare-fun res!214291 () Bool)

(declare-fun e!230209 () Bool)

(assert (=> b!378226 (=> (not res!214291) (not e!230209))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13227 0))(
  ( (V!13228 (val!4590 Int)) )
))
(declare-datatypes ((ValueCell!4202 0))(
  ( (ValueCellFull!4202 (v!6783 V!13227)) (EmptyCell!4202) )
))
(declare-datatypes ((array!22079 0))(
  ( (array!22080 (arr!10505 (Array (_ BitVec 32) ValueCell!4202)) (size!10857 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22079)

(declare-datatypes ((array!22081 0))(
  ( (array!22082 (arr!10506 (Array (_ BitVec 32) (_ BitVec 64))) (size!10858 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22081)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!378226 (= res!214291 (and (= (size!10857 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10858 _keys!658) (size!10857 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!15201 () Bool)

(declare-fun mapRes!15201 () Bool)

(assert (=> mapIsEmpty!15201 mapRes!15201))

(declare-fun b!378227 () Bool)

(declare-fun e!230206 () Bool)

(declare-fun e!230205 () Bool)

(assert (=> b!378227 (= e!230206 (and e!230205 mapRes!15201))))

(declare-fun condMapEmpty!15201 () Bool)

(declare-fun mapDefault!15201 () ValueCell!4202)

