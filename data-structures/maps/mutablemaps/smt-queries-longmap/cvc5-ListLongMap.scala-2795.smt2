; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40666 () Bool)

(assert start!40666)

(declare-fun b_free!10669 () Bool)

(declare-fun b_next!10669 () Bool)

(assert (=> start!40666 (= b_free!10669 (not b_next!10669))))

(declare-fun tp!37826 () Bool)

(declare-fun b_and!18695 () Bool)

(assert (=> start!40666 (= tp!37826 b_and!18695)))

(declare-fun b!449027 () Bool)

(declare-fun e!263332 () Bool)

(assert (=> b!449027 (= e!263332 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((V!17115 0))(
  ( (V!17116 (val!6048 Int)) )
))
(declare-datatypes ((tuple2!7874 0))(
  ( (tuple2!7875 (_1!3947 (_ BitVec 64)) (_2!3947 V!17115)) )
))
(declare-datatypes ((List!7985 0))(
  ( (Nil!7982) (Cons!7981 (h!8837 tuple2!7874) (t!13755 List!7985)) )
))
(declare-datatypes ((ListLongMap!6801 0))(
  ( (ListLongMap!6802 (toList!3416 List!7985)) )
))
(declare-fun lt!204285 () ListLongMap!6801)

(declare-datatypes ((array!27781 0))(
  ( (array!27782 (arr!13333 (Array (_ BitVec 32) (_ BitVec 64))) (size!13685 (_ BitVec 32))) )
))
(declare-fun lt!204284 () array!27781)

(declare-fun minValue!515 () V!17115)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5660 0))(
  ( (ValueCellFull!5660 (v!8299 V!17115)) (EmptyCell!5660) )
))
(declare-datatypes ((array!27783 0))(
  ( (array!27784 (arr!13334 (Array (_ BitVec 32) ValueCell!5660)) (size!13686 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27783)

(declare-fun zeroValue!515 () V!17115)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun v!412 () V!17115)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1596 (array!27781 array!27783 (_ BitVec 32) (_ BitVec 32) V!17115 V!17115 (_ BitVec 32) Int) ListLongMap!6801)

(assert (=> b!449027 (= lt!204285 (getCurrentListMapNoExtraKeys!1596 lt!204284 (array!27784 (store (arr!13334 _values!549) i!563 (ValueCellFull!5660 v!412)) (size!13686 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!204286 () ListLongMap!6801)

(declare-fun _keys!709 () array!27781)

(assert (=> b!449027 (= lt!204286 (getCurrentListMapNoExtraKeys!1596 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!449028 () Bool)

(declare-fun e!263334 () Bool)

(declare-fun e!263337 () Bool)

(declare-fun mapRes!19644 () Bool)

(assert (=> b!449028 (= e!263334 (and e!263337 mapRes!19644))))

(declare-fun condMapEmpty!19644 () Bool)

(declare-fun mapDefault!19644 () ValueCell!5660)

