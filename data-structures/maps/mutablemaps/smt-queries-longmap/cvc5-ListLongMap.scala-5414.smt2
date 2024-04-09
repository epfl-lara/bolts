; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72284 () Bool)

(assert start!72284)

(declare-fun b!837130 () Bool)

(declare-fun e!467217 () Bool)

(declare-fun e!467220 () Bool)

(declare-fun mapRes!24575 () Bool)

(assert (=> b!837130 (= e!467217 (and e!467220 mapRes!24575))))

(declare-fun condMapEmpty!24575 () Bool)

(declare-datatypes ((V!25473 0))(
  ( (V!25474 (val!7707 Int)) )
))
(declare-datatypes ((ValueCell!7220 0))(
  ( (ValueCellFull!7220 (v!10127 V!25473)) (EmptyCell!7220) )
))
(declare-datatypes ((array!46904 0))(
  ( (array!46905 (arr!22480 (Array (_ BitVec 32) ValueCell!7220)) (size!22921 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46904)

(declare-fun mapDefault!24575 () ValueCell!7220)

