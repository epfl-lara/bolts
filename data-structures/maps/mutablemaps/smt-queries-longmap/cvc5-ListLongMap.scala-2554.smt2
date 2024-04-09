; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39150 () Bool)

(assert start!39150)

(declare-fun b_free!9409 () Bool)

(declare-fun b_next!9409 () Bool)

(assert (=> start!39150 (= b_free!9409 (not b_next!9409))))

(declare-fun tp!33756 () Bool)

(declare-fun b_and!16813 () Bool)

(assert (=> start!39150 (= tp!33756 b_and!16813)))

(declare-fun b!411612 () Bool)

(declare-fun res!238943 () Bool)

(declare-fun e!246447 () Bool)

(assert (=> b!411612 (=> (not res!238943) (not e!246447))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!24965 0))(
  ( (array!24966 (arr!11929 (Array (_ BitVec 32) (_ BitVec 64))) (size!12281 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24965)

(assert (=> b!411612 (= res!238943 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12281 _keys!709))))))

(declare-fun mapIsEmpty!17463 () Bool)

(declare-fun mapRes!17463 () Bool)

(assert (=> mapIsEmpty!17463 mapRes!17463))

(declare-fun b!411613 () Bool)

(declare-fun e!246446 () Bool)

(assert (=> b!411613 (= e!246446 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((V!15187 0))(
  ( (V!15188 (val!5325 Int)) )
))
(declare-fun minValue!515 () V!15187)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!6836 0))(
  ( (tuple2!6837 (_1!3428 (_ BitVec 64)) (_2!3428 V!15187)) )
))
(declare-datatypes ((List!6893 0))(
  ( (Nil!6890) (Cons!6889 (h!7745 tuple2!6836) (t!12075 List!6893)) )
))
(declare-datatypes ((ListLongMap!5763 0))(
  ( (ListLongMap!5764 (toList!2897 List!6893)) )
))
(declare-fun lt!189318 () ListLongMap!5763)

(declare-datatypes ((ValueCell!4937 0))(
  ( (ValueCellFull!4937 (v!7568 V!15187)) (EmptyCell!4937) )
))
(declare-datatypes ((array!24967 0))(
  ( (array!24968 (arr!11930 (Array (_ BitVec 32) ValueCell!4937)) (size!12282 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24967)

(declare-fun zeroValue!515 () V!15187)

(declare-fun lt!189316 () array!24965)

(declare-fun v!412 () V!15187)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1107 (array!24965 array!24967 (_ BitVec 32) (_ BitVec 32) V!15187 V!15187 (_ BitVec 32) Int) ListLongMap!5763)

(assert (=> b!411613 (= lt!189318 (getCurrentListMapNoExtraKeys!1107 lt!189316 (array!24968 (store (arr!11930 _values!549) i!563 (ValueCellFull!4937 v!412)) (size!12282 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!189317 () ListLongMap!5763)

(assert (=> b!411613 (= lt!189317 (getCurrentListMapNoExtraKeys!1107 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!411614 () Bool)

(declare-fun res!238948 () Bool)

(assert (=> b!411614 (=> (not res!238948) (not e!246447))))

(assert (=> b!411614 (= res!238948 (and (= (size!12282 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12281 _keys!709) (size!12282 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!411615 () Bool)

(declare-fun res!238941 () Bool)

(assert (=> b!411615 (=> (not res!238941) (not e!246447))))

(assert (=> b!411615 (= res!238941 (or (= (select (arr!11929 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11929 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!411616 () Bool)

(declare-fun res!238947 () Bool)

(assert (=> b!411616 (=> (not res!238947) (not e!246447))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!411616 (= res!238947 (validMask!0 mask!1025))))

(declare-fun b!411617 () Bool)

(declare-fun res!238945 () Bool)

(assert (=> b!411617 (=> (not res!238945) (not e!246447))))

(declare-datatypes ((List!6894 0))(
  ( (Nil!6891) (Cons!6890 (h!7746 (_ BitVec 64)) (t!12076 List!6894)) )
))
(declare-fun arrayNoDuplicates!0 (array!24965 (_ BitVec 32) List!6894) Bool)

(assert (=> b!411617 (= res!238945 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6891))))

(declare-fun b!411618 () Bool)

(declare-fun e!246450 () Bool)

(declare-fun e!246448 () Bool)

(assert (=> b!411618 (= e!246450 (and e!246448 mapRes!17463))))

(declare-fun condMapEmpty!17463 () Bool)

(declare-fun mapDefault!17463 () ValueCell!4937)

