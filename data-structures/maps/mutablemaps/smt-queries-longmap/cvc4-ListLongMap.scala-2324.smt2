; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37418 () Bool)

(assert start!37418)

(declare-fun b_free!8537 () Bool)

(declare-fun b_next!8537 () Bool)

(assert (=> start!37418 (= b_free!8537 (not b_next!8537))))

(declare-fun tp!30326 () Bool)

(declare-fun b_and!15797 () Bool)

(assert (=> start!37418 (= tp!30326 b_and!15797)))

(declare-fun b!380340 () Bool)

(declare-fun e!231337 () Bool)

(declare-fun e!231333 () Bool)

(assert (=> b!380340 (= e!231337 e!231333)))

(declare-fun res!215990 () Bool)

(assert (=> b!380340 (=> (not res!215990) (not e!231333))))

(declare-datatypes ((array!22267 0))(
  ( (array!22268 (arr!10599 (Array (_ BitVec 32) (_ BitVec 64))) (size!10951 (_ BitVec 32))) )
))
(declare-fun lt!178097 () array!22267)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22267 (_ BitVec 32)) Bool)

(assert (=> b!380340 (= res!215990 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!178097 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!22267)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!380340 (= lt!178097 (array!22268 (store (arr!10599 _keys!658) i!548 k!778) (size!10951 _keys!658)))))

(declare-fun b!380341 () Bool)

(declare-fun res!215981 () Bool)

(assert (=> b!380341 (=> (not res!215981) (not e!231337))))

(assert (=> b!380341 (= res!215981 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!380342 () Bool)

(declare-fun e!231335 () Bool)

(declare-fun tp_is_empty!9185 () Bool)

(assert (=> b!380342 (= e!231335 tp_is_empty!9185)))

(declare-fun b!380343 () Bool)

(declare-fun e!231336 () Bool)

(declare-fun mapRes!15342 () Bool)

(assert (=> b!380343 (= e!231336 (and e!231335 mapRes!15342))))

(declare-fun condMapEmpty!15342 () Bool)

(declare-datatypes ((V!13351 0))(
  ( (V!13352 (val!4637 Int)) )
))
(declare-datatypes ((ValueCell!4249 0))(
  ( (ValueCellFull!4249 (v!6830 V!13351)) (EmptyCell!4249) )
))
(declare-datatypes ((array!22269 0))(
  ( (array!22270 (arr!10600 (Array (_ BitVec 32) ValueCell!4249)) (size!10952 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22269)

(declare-fun mapDefault!15342 () ValueCell!4249)

