; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37600 () Bool)

(assert start!37600)

(declare-fun b_free!8719 () Bool)

(declare-fun b_next!8719 () Bool)

(assert (=> start!37600 (= b_free!8719 (not b_next!8719))))

(declare-fun tp!30873 () Bool)

(declare-fun b_and!15979 () Bool)

(assert (=> start!37600 (= tp!30873 b_and!15979)))

(declare-fun b!384190 () Bool)

(declare-fun res!219019 () Bool)

(declare-fun e!233273 () Bool)

(assert (=> b!384190 (=> (not res!219019) (not e!233273))))

(declare-datatypes ((array!22621 0))(
  ( (array!22622 (arr!10776 (Array (_ BitVec 32) (_ BitVec 64))) (size!11128 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22621)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22621 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!384190 (= res!219019 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!384192 () Bool)

(declare-fun res!219018 () Bool)

(assert (=> b!384192 (=> (not res!219018) (not e!233273))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22621 (_ BitVec 32)) Bool)

(assert (=> b!384192 (= res!219018 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!384193 () Bool)

(declare-fun e!233274 () Bool)

(declare-fun e!233276 () Bool)

(declare-fun mapRes!15615 () Bool)

(assert (=> b!384193 (= e!233274 (and e!233276 mapRes!15615))))

(declare-fun condMapEmpty!15615 () Bool)

(declare-datatypes ((V!13595 0))(
  ( (V!13596 (val!4728 Int)) )
))
(declare-datatypes ((ValueCell!4340 0))(
  ( (ValueCellFull!4340 (v!6921 V!13595)) (EmptyCell!4340) )
))
(declare-datatypes ((array!22623 0))(
  ( (array!22624 (arr!10777 (Array (_ BitVec 32) ValueCell!4340)) (size!11129 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22623)

(declare-fun mapDefault!15615 () ValueCell!4340)

