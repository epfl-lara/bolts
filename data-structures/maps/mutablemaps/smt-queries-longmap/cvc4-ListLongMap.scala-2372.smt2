; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37706 () Bool)

(assert start!37706)

(declare-fun b_free!8801 () Bool)

(declare-fun b_next!8801 () Bool)

(assert (=> start!37706 (= b_free!8801 (not b_next!8801))))

(declare-fun tp!31155 () Bool)

(declare-fun b_and!16061 () Bool)

(assert (=> start!37706 (= tp!31155 b_and!16061)))

(declare-fun mapIsEmpty!15774 () Bool)

(declare-fun mapRes!15774 () Bool)

(assert (=> mapIsEmpty!15774 mapRes!15774))

(declare-fun b!386129 () Bool)

(declare-fun res!220480 () Bool)

(declare-fun e!234268 () Bool)

(assert (=> b!386129 (=> (not res!220480) (not e!234268))))

(declare-datatypes ((array!22819 0))(
  ( (array!22820 (arr!10875 (Array (_ BitVec 32) (_ BitVec 64))) (size!11227 (_ BitVec 32))) )
))
(declare-fun lt!181742 () array!22819)

(declare-datatypes ((List!6252 0))(
  ( (Nil!6249) (Cons!6248 (h!7104 (_ BitVec 64)) (t!11410 List!6252)) )
))
(declare-fun arrayNoDuplicates!0 (array!22819 (_ BitVec 32) List!6252) Bool)

(assert (=> b!386129 (= res!220480 (arrayNoDuplicates!0 lt!181742 #b00000000000000000000000000000000 Nil!6249))))

(declare-fun b!386130 () Bool)

(declare-fun res!220481 () Bool)

(declare-fun e!234269 () Bool)

(assert (=> b!386130 (=> (not res!220481) (not e!234269))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!386130 (= res!220481 (validKeyInArray!0 k!778))))

(declare-fun b!386131 () Bool)

(declare-fun res!220474 () Bool)

(assert (=> b!386131 (=> (not res!220474) (not e!234269))))

(declare-fun _keys!658 () array!22819)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!386131 (= res!220474 (or (= (select (arr!10875 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10875 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!386132 () Bool)

(declare-fun res!220476 () Bool)

(assert (=> b!386132 (=> (not res!220476) (not e!234269))))

(assert (=> b!386132 (= res!220476 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6249))))

(declare-fun b!386133 () Bool)

(declare-fun e!234273 () Bool)

(declare-fun e!234272 () Bool)

(assert (=> b!386133 (= e!234273 (and e!234272 mapRes!15774))))

(declare-fun condMapEmpty!15774 () Bool)

(declare-datatypes ((V!13735 0))(
  ( (V!13736 (val!4781 Int)) )
))
(declare-datatypes ((ValueCell!4393 0))(
  ( (ValueCellFull!4393 (v!6974 V!13735)) (EmptyCell!4393) )
))
(declare-datatypes ((array!22821 0))(
  ( (array!22822 (arr!10876 (Array (_ BitVec 32) ValueCell!4393)) (size!11228 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22821)

(declare-fun mapDefault!15774 () ValueCell!4393)

