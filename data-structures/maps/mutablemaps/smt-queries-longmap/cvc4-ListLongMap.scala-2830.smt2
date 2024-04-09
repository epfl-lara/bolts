; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40956 () Bool)

(assert start!40956)

(declare-fun b_free!10883 () Bool)

(declare-fun b_next!10883 () Bool)

(assert (=> start!40956 (= b_free!10883 (not b_next!10883))))

(declare-fun tp!38476 () Bool)

(declare-fun b_and!19043 () Bool)

(assert (=> start!40956 (= tp!38476 b_and!19043)))

(declare-fun b!455297 () Bool)

(declare-fun res!271567 () Bool)

(declare-fun e!266194 () Bool)

(assert (=> b!455297 (=> (not res!271567) (not e!266194))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!455297 (= res!271567 (validMask!0 mask!1025))))

(declare-fun b!455298 () Bool)

(declare-fun e!266193 () Bool)

(assert (=> b!455298 (= e!266193 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((V!17399 0))(
  ( (V!17400 (val!6155 Int)) )
))
(declare-fun minValue!515 () V!17399)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5767 0))(
  ( (ValueCellFull!5767 (v!8417 V!17399)) (EmptyCell!5767) )
))
(declare-datatypes ((array!28211 0))(
  ( (array!28212 (arr!13546 (Array (_ BitVec 32) ValueCell!5767)) (size!13898 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28211)

(declare-fun zeroValue!515 () V!17399)

(declare-datatypes ((tuple2!8054 0))(
  ( (tuple2!8055 (_1!4037 (_ BitVec 64)) (_2!4037 V!17399)) )
))
(declare-datatypes ((List!8162 0))(
  ( (Nil!8159) (Cons!8158 (h!9014 tuple2!8054) (t!13998 List!8162)) )
))
(declare-datatypes ((ListLongMap!6981 0))(
  ( (ListLongMap!6982 (toList!3506 List!8162)) )
))
(declare-fun lt!206309 () ListLongMap!6981)

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!28213 0))(
  ( (array!28214 (arr!13547 (Array (_ BitVec 32) (_ BitVec 64))) (size!13899 (_ BitVec 32))) )
))
(declare-fun lt!206308 () array!28213)

(declare-fun v!412 () V!17399)

(declare-fun getCurrentListMapNoExtraKeys!1682 (array!28213 array!28211 (_ BitVec 32) (_ BitVec 32) V!17399 V!17399 (_ BitVec 32) Int) ListLongMap!6981)

(assert (=> b!455298 (= lt!206309 (getCurrentListMapNoExtraKeys!1682 lt!206308 (array!28212 (store (arr!13546 _values!549) i!563 (ValueCellFull!5767 v!412)) (size!13898 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!206310 () ListLongMap!6981)

(declare-fun _keys!709 () array!28213)

(assert (=> b!455298 (= lt!206310 (getCurrentListMapNoExtraKeys!1682 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!455299 () Bool)

(declare-fun e!266196 () Bool)

(declare-fun e!266197 () Bool)

(declare-fun mapRes!19972 () Bool)

(assert (=> b!455299 (= e!266196 (and e!266197 mapRes!19972))))

(declare-fun condMapEmpty!19972 () Bool)

(declare-fun mapDefault!19972 () ValueCell!5767)

