; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37516 () Bool)

(assert start!37516)

(declare-fun b_free!8635 () Bool)

(declare-fun b_next!8635 () Bool)

(assert (=> start!37516 (= b_free!8635 (not b_next!8635))))

(declare-fun tp!30620 () Bool)

(declare-fun b_and!15895 () Bool)

(assert (=> start!37516 (= tp!30620 b_and!15895)))

(declare-fun b!382417 () Bool)

(declare-fun res!217615 () Bool)

(declare-fun e!232382 () Bool)

(assert (=> b!382417 (=> (not res!217615) (not e!232382))))

(declare-datatypes ((array!22457 0))(
  ( (array!22458 (arr!10694 (Array (_ BitVec 32) (_ BitVec 64))) (size!11046 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22457)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22457 (_ BitVec 32)) Bool)

(assert (=> b!382417 (= res!217615 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!382418 () Bool)

(declare-fun res!217623 () Bool)

(assert (=> b!382418 (=> (not res!217623) (not e!232382))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22457 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!382418 (= res!217623 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!382419 () Bool)

(declare-fun e!232380 () Bool)

(declare-fun tp_is_empty!9283 () Bool)

(assert (=> b!382419 (= e!232380 tp_is_empty!9283)))

(declare-fun b!382420 () Bool)

(declare-fun e!232386 () Bool)

(declare-fun e!232385 () Bool)

(declare-fun mapRes!15489 () Bool)

(assert (=> b!382420 (= e!232386 (and e!232385 mapRes!15489))))

(declare-fun condMapEmpty!15489 () Bool)

(declare-datatypes ((V!13483 0))(
  ( (V!13484 (val!4686 Int)) )
))
(declare-datatypes ((ValueCell!4298 0))(
  ( (ValueCellFull!4298 (v!6879 V!13483)) (EmptyCell!4298) )
))
(declare-datatypes ((array!22459 0))(
  ( (array!22460 (arr!10695 (Array (_ BitVec 32) ValueCell!4298)) (size!11047 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22459)

(declare-fun mapDefault!15489 () ValueCell!4298)

