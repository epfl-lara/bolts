; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74332 () Bool)

(assert start!74332)

(declare-fun b_free!15067 () Bool)

(declare-fun b_next!15067 () Bool)

(assert (=> start!74332 (= b_free!15067 (not b_next!15067))))

(declare-fun tp!52877 () Bool)

(declare-fun b_and!24861 () Bool)

(assert (=> start!74332 (= tp!52877 b_and!24861)))

(declare-fun mapIsEmpty!27575 () Bool)

(declare-fun mapRes!27575 () Bool)

(assert (=> mapIsEmpty!27575 mapRes!27575))

(declare-fun b!874130 () Bool)

(declare-fun res!594150 () Bool)

(declare-fun e!486748 () Bool)

(assert (=> b!874130 (=> (not res!594150) (not e!486748))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!874130 (= res!594150 (validKeyInArray!0 k!854))))

(declare-fun b!874131 () Bool)

(declare-fun e!486747 () Bool)

(declare-fun e!486746 () Bool)

(assert (=> b!874131 (= e!486747 (and e!486746 mapRes!27575))))

(declare-fun condMapEmpty!27575 () Bool)

(declare-datatypes ((V!28129 0))(
  ( (V!28130 (val!8703 Int)) )
))
(declare-datatypes ((ValueCell!8216 0))(
  ( (ValueCellFull!8216 (v!11128 V!28129)) (EmptyCell!8216) )
))
(declare-datatypes ((array!50736 0))(
  ( (array!50737 (arr!24392 (Array (_ BitVec 32) ValueCell!8216)) (size!24833 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50736)

(declare-fun mapDefault!27575 () ValueCell!8216)

