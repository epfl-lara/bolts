; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37612 () Bool)

(assert start!37612)

(declare-fun b_free!8731 () Bool)

(declare-fun b_next!8731 () Bool)

(assert (=> start!37612 (= b_free!8731 (not b_next!8731))))

(declare-fun tp!30909 () Bool)

(declare-fun b_and!15991 () Bool)

(assert (=> start!37612 (= tp!30909 b_and!15991)))

(declare-fun res!219215 () Bool)

(declare-fun e!233402 () Bool)

(assert (=> start!37612 (=> (not res!219215) (not e!233402))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37612 (= res!219215 (validMask!0 mask!970))))

(assert (=> start!37612 e!233402))

(declare-datatypes ((V!13611 0))(
  ( (V!13612 (val!4734 Int)) )
))
(declare-datatypes ((ValueCell!4346 0))(
  ( (ValueCellFull!4346 (v!6927 V!13611)) (EmptyCell!4346) )
))
(declare-datatypes ((array!22645 0))(
  ( (array!22646 (arr!10788 (Array (_ BitVec 32) ValueCell!4346)) (size!11140 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22645)

(declare-fun e!233397 () Bool)

(declare-fun array_inv!7924 (array!22645) Bool)

(assert (=> start!37612 (and (array_inv!7924 _values!506) e!233397)))

(assert (=> start!37612 tp!30909))

(assert (=> start!37612 true))

(declare-fun tp_is_empty!9379 () Bool)

(assert (=> start!37612 tp_is_empty!9379))

(declare-datatypes ((array!22647 0))(
  ( (array!22648 (arr!10789 (Array (_ BitVec 32) (_ BitVec 64))) (size!11141 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22647)

(declare-fun array_inv!7925 (array!22647) Bool)

(assert (=> start!37612 (array_inv!7925 _keys!658)))

(declare-fun b!384442 () Bool)

(declare-fun res!219212 () Bool)

(assert (=> b!384442 (=> (not res!219212) (not e!233402))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!384442 (= res!219212 (validKeyInArray!0 k!778))))

(declare-fun b!384443 () Bool)

(declare-fun res!219218 () Bool)

(assert (=> b!384443 (=> (not res!219218) (not e!233402))))

(declare-datatypes ((List!6195 0))(
  ( (Nil!6192) (Cons!6191 (h!7047 (_ BitVec 64)) (t!11353 List!6195)) )
))
(declare-fun arrayNoDuplicates!0 (array!22647 (_ BitVec 32) List!6195) Bool)

(assert (=> b!384443 (= res!219218 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6192))))

(declare-fun b!384444 () Bool)

(declare-fun res!219210 () Bool)

(assert (=> b!384444 (=> (not res!219210) (not e!233402))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!384444 (= res!219210 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11141 _keys!658))))))

(declare-fun b!384445 () Bool)

(declare-fun e!233403 () Bool)

(declare-fun mapRes!15633 () Bool)

(assert (=> b!384445 (= e!233397 (and e!233403 mapRes!15633))))

(declare-fun condMapEmpty!15633 () Bool)

(declare-fun mapDefault!15633 () ValueCell!4346)

