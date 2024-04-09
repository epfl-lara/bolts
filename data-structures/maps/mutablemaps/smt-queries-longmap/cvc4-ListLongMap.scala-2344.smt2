; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37538 () Bool)

(assert start!37538)

(declare-fun b_free!8657 () Bool)

(declare-fun b_next!8657 () Bool)

(assert (=> start!37538 (= b_free!8657 (not b_next!8657))))

(declare-fun tp!30687 () Bool)

(declare-fun b_and!15917 () Bool)

(assert (=> start!37538 (= tp!30687 b_and!15917)))

(declare-fun b!382879 () Bool)

(declare-fun e!232613 () Bool)

(declare-fun e!232617 () Bool)

(assert (=> b!382879 (= e!232613 e!232617)))

(declare-fun res!217979 () Bool)

(assert (=> b!382879 (=> (not res!217979) (not e!232617))))

(declare-datatypes ((array!22501 0))(
  ( (array!22502 (arr!10716 (Array (_ BitVec 32) (_ BitVec 64))) (size!11068 (_ BitVec 32))) )
))
(declare-fun lt!179792 () array!22501)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22501 (_ BitVec 32)) Bool)

(assert (=> b!382879 (= res!217979 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!179792 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!22501)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!382879 (= lt!179792 (array!22502 (store (arr!10716 _keys!658) i!548 k!778) (size!11068 _keys!658)))))

(declare-fun b!382880 () Bool)

(declare-fun res!217983 () Bool)

(assert (=> b!382880 (=> (not res!217983) (not e!232613))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!382880 (= res!217983 (validKeyInArray!0 k!778))))

(declare-fun b!382881 () Bool)

(declare-fun e!232612 () Bool)

(declare-fun e!232616 () Bool)

(declare-fun mapRes!15522 () Bool)

(assert (=> b!382881 (= e!232612 (and e!232616 mapRes!15522))))

(declare-fun condMapEmpty!15522 () Bool)

(declare-datatypes ((V!13511 0))(
  ( (V!13512 (val!4697 Int)) )
))
(declare-datatypes ((ValueCell!4309 0))(
  ( (ValueCellFull!4309 (v!6890 V!13511)) (EmptyCell!4309) )
))
(declare-datatypes ((array!22503 0))(
  ( (array!22504 (arr!10717 (Array (_ BitVec 32) ValueCell!4309)) (size!11069 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22503)

(declare-fun mapDefault!15522 () ValueCell!4309)

