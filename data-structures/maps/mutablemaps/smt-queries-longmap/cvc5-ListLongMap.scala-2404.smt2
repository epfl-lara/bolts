; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38050 () Bool)

(assert start!38050)

(declare-fun b_free!8989 () Bool)

(declare-fun b_next!8989 () Bool)

(assert (=> start!38050 (= b_free!8989 (not b_next!8989))))

(declare-fun tp!31740 () Bool)

(declare-fun b_and!16333 () Bool)

(assert (=> start!38050 (= tp!31740 b_and!16333)))

(declare-fun b!391467 () Bool)

(declare-fun e!237103 () Bool)

(declare-fun tp_is_empty!9661 () Bool)

(assert (=> b!391467 (= e!237103 tp_is_empty!9661)))

(declare-fun res!224187 () Bool)

(declare-fun e!237099 () Bool)

(assert (=> start!38050 (=> (not res!224187) (not e!237099))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!38050 (= res!224187 (validMask!0 mask!970))))

(assert (=> start!38050 e!237099))

(declare-datatypes ((V!13987 0))(
  ( (V!13988 (val!4875 Int)) )
))
(declare-datatypes ((ValueCell!4487 0))(
  ( (ValueCellFull!4487 (v!7096 V!13987)) (EmptyCell!4487) )
))
(declare-datatypes ((array!23199 0))(
  ( (array!23200 (arr!11058 (Array (_ BitVec 32) ValueCell!4487)) (size!11410 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23199)

(declare-fun e!237106 () Bool)

(declare-fun array_inv!8106 (array!23199) Bool)

(assert (=> start!38050 (and (array_inv!8106 _values!506) e!237106)))

(assert (=> start!38050 tp!31740))

(assert (=> start!38050 true))

(assert (=> start!38050 tp_is_empty!9661))

(declare-datatypes ((array!23201 0))(
  ( (array!23202 (arr!11059 (Array (_ BitVec 32) (_ BitVec 64))) (size!11411 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23201)

(declare-fun array_inv!8107 (array!23201) Bool)

(assert (=> start!38050 (array_inv!8107 _keys!658)))

(declare-fun mapIsEmpty!16077 () Bool)

(declare-fun mapRes!16077 () Bool)

(assert (=> mapIsEmpty!16077 mapRes!16077))

(declare-fun b!391468 () Bool)

(declare-fun res!224184 () Bool)

(assert (=> b!391468 (=> (not res!224184) (not e!237099))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!391468 (= res!224184 (or (= (select (arr!11059 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11059 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!391469 () Bool)

(declare-fun res!224181 () Bool)

(assert (=> b!391469 (=> (not res!224181) (not e!237099))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23201 (_ BitVec 32)) Bool)

(assert (=> b!391469 (= res!224181 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!391470 () Bool)

(declare-fun res!224182 () Bool)

(assert (=> b!391470 (=> (not res!224182) (not e!237099))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!391470 (= res!224182 (validKeyInArray!0 k!778))))

(declare-fun b!391471 () Bool)

(declare-fun e!237105 () Bool)

(assert (=> b!391471 (= e!237105 tp_is_empty!9661)))

(declare-fun b!391472 () Bool)

(assert (=> b!391472 (= e!237106 (and e!237105 mapRes!16077))))

(declare-fun condMapEmpty!16077 () Bool)

(declare-fun mapDefault!16077 () ValueCell!4487)

