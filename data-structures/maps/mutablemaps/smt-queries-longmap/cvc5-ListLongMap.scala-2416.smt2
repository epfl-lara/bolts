; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38232 () Bool)

(assert start!38232)

(declare-fun b_free!9061 () Bool)

(declare-fun b_next!9061 () Bool)

(assert (=> start!38232 (= b_free!9061 (not b_next!9061))))

(declare-fun tp!31970 () Bool)

(declare-fun b_and!16465 () Bool)

(assert (=> start!38232 (= tp!31970 b_and!16465)))

(declare-fun b!394042 () Bool)

(declare-fun res!225871 () Bool)

(declare-fun e!238552 () Bool)

(assert (=> b!394042 (=> (not res!225871) (not e!238552))))

(declare-datatypes ((array!23351 0))(
  ( (array!23352 (arr!11129 (Array (_ BitVec 32) (_ BitVec 64))) (size!11481 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23351)

(declare-datatypes ((List!6445 0))(
  ( (Nil!6442) (Cons!6441 (h!7297 (_ BitVec 64)) (t!11627 List!6445)) )
))
(declare-fun arrayNoDuplicates!0 (array!23351 (_ BitVec 32) List!6445) Bool)

(assert (=> b!394042 (= res!225871 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6442))))

(declare-fun b!394043 () Bool)

(declare-fun res!225873 () Bool)

(declare-fun e!238555 () Bool)

(assert (=> b!394043 (=> (not res!225873) (not e!238555))))

(declare-fun lt!186724 () array!23351)

(assert (=> b!394043 (= res!225873 (arrayNoDuplicates!0 lt!186724 #b00000000000000000000000000000000 Nil!6442))))

(declare-fun b!394044 () Bool)

(declare-fun res!225874 () Bool)

(assert (=> b!394044 (=> (not res!225874) (not e!238552))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!394044 (= res!225874 (or (= (select (arr!11129 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11129 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!394046 () Bool)

(declare-fun e!238551 () Bool)

(declare-fun e!238554 () Bool)

(declare-fun mapRes!16200 () Bool)

(assert (=> b!394046 (= e!238551 (and e!238554 mapRes!16200))))

(declare-fun condMapEmpty!16200 () Bool)

(declare-datatypes ((V!14083 0))(
  ( (V!14084 (val!4911 Int)) )
))
(declare-datatypes ((ValueCell!4523 0))(
  ( (ValueCellFull!4523 (v!7152 V!14083)) (EmptyCell!4523) )
))
(declare-datatypes ((array!23353 0))(
  ( (array!23354 (arr!11130 (Array (_ BitVec 32) ValueCell!4523)) (size!11482 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23353)

(declare-fun mapDefault!16200 () ValueCell!4523)

