; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37486 () Bool)

(assert start!37486)

(declare-fun b_free!8605 () Bool)

(declare-fun b_next!8605 () Bool)

(assert (=> start!37486 (= b_free!8605 (not b_next!8605))))

(declare-fun tp!30530 () Bool)

(declare-fun b_and!15865 () Bool)

(assert (=> start!37486 (= tp!30530 b_and!15865)))

(declare-fun b!381787 () Bool)

(declare-fun res!217121 () Bool)

(declare-fun e!232069 () Bool)

(assert (=> b!381787 (=> (not res!217121) (not e!232069))))

(declare-datatypes ((array!22397 0))(
  ( (array!22398 (arr!10664 (Array (_ BitVec 32) (_ BitVec 64))) (size!11016 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22397)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22397 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!381787 (= res!217121 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!381788 () Bool)

(declare-fun res!217120 () Bool)

(assert (=> b!381788 (=> (not res!217120) (not e!232069))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!381788 (= res!217120 (or (= (select (arr!10664 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10664 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!381789 () Bool)

(declare-fun e!232065 () Bool)

(declare-fun e!232067 () Bool)

(declare-fun mapRes!15444 () Bool)

(assert (=> b!381789 (= e!232065 (and e!232067 mapRes!15444))))

(declare-fun condMapEmpty!15444 () Bool)

(declare-datatypes ((V!13443 0))(
  ( (V!13444 (val!4671 Int)) )
))
(declare-datatypes ((ValueCell!4283 0))(
  ( (ValueCellFull!4283 (v!6864 V!13443)) (EmptyCell!4283) )
))
(declare-datatypes ((array!22399 0))(
  ( (array!22400 (arr!10665 (Array (_ BitVec 32) ValueCell!4283)) (size!11017 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22399)

(declare-fun mapDefault!15444 () ValueCell!4283)

