; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37454 () Bool)

(assert start!37454)

(declare-fun b_free!8573 () Bool)

(declare-fun b_next!8573 () Bool)

(assert (=> start!37454 (= b_free!8573 (not b_next!8573))))

(declare-fun tp!30435 () Bool)

(declare-fun b_and!15833 () Bool)

(assert (=> start!37454 (= tp!30435 b_and!15833)))

(declare-fun b!381115 () Bool)

(declare-fun res!216600 () Bool)

(declare-fun e!231732 () Bool)

(assert (=> b!381115 (=> (not res!216600) (not e!231732))))

(declare-datatypes ((array!22335 0))(
  ( (array!22336 (arr!10633 (Array (_ BitVec 32) (_ BitVec 64))) (size!10985 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22335)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!381115 (= res!216600 (or (= (select (arr!10633 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10633 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!381116 () Bool)

(declare-fun e!231729 () Bool)

(declare-fun tp_is_empty!9221 () Bool)

(assert (=> b!381116 (= e!231729 tp_is_empty!9221)))

(declare-fun b!381117 () Bool)

(declare-fun e!231731 () Bool)

(declare-fun mapRes!15396 () Bool)

(assert (=> b!381117 (= e!231731 (and e!231729 mapRes!15396))))

(declare-fun condMapEmpty!15396 () Bool)

(declare-datatypes ((V!13399 0))(
  ( (V!13400 (val!4655 Int)) )
))
(declare-datatypes ((ValueCell!4267 0))(
  ( (ValueCellFull!4267 (v!6848 V!13399)) (EmptyCell!4267) )
))
(declare-datatypes ((array!22337 0))(
  ( (array!22338 (arr!10634 (Array (_ BitVec 32) ValueCell!4267)) (size!10986 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22337)

(declare-fun mapDefault!15396 () ValueCell!4267)

