; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40624 () Bool)

(assert start!40624)

(declare-fun b_free!10627 () Bool)

(declare-fun b_next!10627 () Bool)

(assert (=> start!40624 (= b_free!10627 (not b_next!10627))))

(declare-fun tp!37701 () Bool)

(declare-fun b_and!18653 () Bool)

(assert (=> start!40624 (= tp!37701 b_and!18653)))

(declare-fun b!448082 () Bool)

(declare-fun e!262958 () Bool)

(assert (=> b!448082 (= e!262958 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((V!17059 0))(
  ( (V!17060 (val!6027 Int)) )
))
(declare-fun minValue!515 () V!17059)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5639 0))(
  ( (ValueCellFull!5639 (v!8278 V!17059)) (EmptyCell!5639) )
))
(declare-datatypes ((array!27697 0))(
  ( (array!27698 (arr!13291 (Array (_ BitVec 32) ValueCell!5639)) (size!13643 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27697)

(declare-fun zeroValue!515 () V!17059)

(declare-fun v!412 () V!17059)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!27699 0))(
  ( (array!27700 (arr!13292 (Array (_ BitVec 32) (_ BitVec 64))) (size!13644 (_ BitVec 32))) )
))
(declare-fun lt!204095 () array!27699)

(declare-fun defaultEntry!557 () Int)

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((tuple2!7838 0))(
  ( (tuple2!7839 (_1!3929 (_ BitVec 64)) (_2!3929 V!17059)) )
))
(declare-datatypes ((List!7948 0))(
  ( (Nil!7945) (Cons!7944 (h!8800 tuple2!7838) (t!13718 List!7948)) )
))
(declare-datatypes ((ListLongMap!6765 0))(
  ( (ListLongMap!6766 (toList!3398 List!7948)) )
))
(declare-fun lt!204097 () ListLongMap!6765)

(declare-fun getCurrentListMapNoExtraKeys!1578 (array!27699 array!27697 (_ BitVec 32) (_ BitVec 32) V!17059 V!17059 (_ BitVec 32) Int) ListLongMap!6765)

(assert (=> b!448082 (= lt!204097 (getCurrentListMapNoExtraKeys!1578 lt!204095 (array!27698 (store (arr!13291 _values!549) i!563 (ValueCellFull!5639 v!412)) (size!13643 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _keys!709 () array!27699)

(declare-fun lt!204096 () ListLongMap!6765)

(assert (=> b!448082 (= lt!204096 (getCurrentListMapNoExtraKeys!1578 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!448083 () Bool)

(declare-fun res!266365 () Bool)

(declare-fun e!262959 () Bool)

(assert (=> b!448083 (=> (not res!266365) (not e!262959))))

(declare-datatypes ((List!7949 0))(
  ( (Nil!7946) (Cons!7945 (h!8801 (_ BitVec 64)) (t!13719 List!7949)) )
))
(declare-fun arrayNoDuplicates!0 (array!27699 (_ BitVec 32) List!7949) Bool)

(assert (=> b!448083 (= res!266365 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7946))))

(declare-fun b!448084 () Bool)

(declare-fun e!262954 () Bool)

(declare-fun e!262957 () Bool)

(declare-fun mapRes!19581 () Bool)

(assert (=> b!448084 (= e!262954 (and e!262957 mapRes!19581))))

(declare-fun condMapEmpty!19581 () Bool)

(declare-fun mapDefault!19581 () ValueCell!5639)

