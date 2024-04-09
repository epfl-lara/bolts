; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39370 () Bool)

(assert start!39370)

(declare-fun b_free!9629 () Bool)

(declare-fun b_next!9629 () Bool)

(assert (=> start!39370 (= b_free!9629 (not b_next!9629))))

(declare-fun tp!34415 () Bool)

(declare-fun b_and!17151 () Bool)

(assert (=> start!39370 (= tp!34415 b_and!17151)))

(declare-fun b!417648 () Bool)

(declare-fun e!249137 () Bool)

(declare-fun e!249135 () Bool)

(assert (=> b!417648 (= e!249137 e!249135)))

(declare-fun res!243355 () Bool)

(assert (=> b!417648 (=> (not res!243355) (not e!249135))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!417648 (= res!243355 (= from!863 i!563))))

(declare-datatypes ((V!15479 0))(
  ( (V!15480 (val!5435 Int)) )
))
(declare-datatypes ((ValueCell!5047 0))(
  ( (ValueCellFull!5047 (v!7678 V!15479)) (EmptyCell!5047) )
))
(declare-datatypes ((array!25397 0))(
  ( (array!25398 (arr!12145 (Array (_ BitVec 32) ValueCell!5047)) (size!12497 (_ BitVec 32))) )
))
(declare-fun lt!191420 () array!25397)

(declare-fun minValue!515 () V!15479)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((array!25399 0))(
  ( (array!25400 (arr!12146 (Array (_ BitVec 32) (_ BitVec 64))) (size!12498 (_ BitVec 32))) )
))
(declare-fun lt!191419 () array!25399)

(declare-fun zeroValue!515 () V!15479)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((tuple2!7028 0))(
  ( (tuple2!7029 (_1!3524 (_ BitVec 64)) (_2!3524 V!15479)) )
))
(declare-datatypes ((List!7080 0))(
  ( (Nil!7077) (Cons!7076 (h!7932 tuple2!7028) (t!12382 List!7080)) )
))
(declare-datatypes ((ListLongMap!5955 0))(
  ( (ListLongMap!5956 (toList!2993 List!7080)) )
))
(declare-fun lt!191416 () ListLongMap!5955)

(declare-fun getCurrentListMapNoExtraKeys!1196 (array!25399 array!25397 (_ BitVec 32) (_ BitVec 32) V!15479 V!15479 (_ BitVec 32) Int) ListLongMap!5955)

(assert (=> b!417648 (= lt!191416 (getCurrentListMapNoExtraKeys!1196 lt!191419 lt!191420 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!25397)

(declare-fun v!412 () V!15479)

(assert (=> b!417648 (= lt!191420 (array!25398 (store (arr!12145 _values!549) i!563 (ValueCellFull!5047 v!412)) (size!12497 _values!549)))))

(declare-fun lt!191424 () ListLongMap!5955)

(declare-fun _keys!709 () array!25399)

(assert (=> b!417648 (= lt!191424 (getCurrentListMapNoExtraKeys!1196 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!417649 () Bool)

(declare-fun res!243358 () Bool)

(declare-fun e!249138 () Bool)

(assert (=> b!417649 (=> (not res!243358) (not e!249138))))

(assert (=> b!417649 (= res!243358 (and (= (size!12497 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12498 _keys!709) (size!12497 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!17793 () Bool)

(declare-fun mapRes!17793 () Bool)

(assert (=> mapIsEmpty!17793 mapRes!17793))

(declare-fun b!417650 () Bool)

(declare-fun e!249141 () Bool)

(declare-fun tp_is_empty!10781 () Bool)

(assert (=> b!417650 (= e!249141 tp_is_empty!10781)))

(declare-fun b!417651 () Bool)

(declare-fun res!243351 () Bool)

(assert (=> b!417651 (=> (not res!243351) (not e!249138))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25399 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!417651 (= res!243351 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!417652 () Bool)

(declare-fun res!243360 () Bool)

(assert (=> b!417652 (=> (not res!243360) (not e!249137))))

(declare-datatypes ((List!7081 0))(
  ( (Nil!7078) (Cons!7077 (h!7933 (_ BitVec 64)) (t!12383 List!7081)) )
))
(declare-fun arrayNoDuplicates!0 (array!25399 (_ BitVec 32) List!7081) Bool)

(assert (=> b!417652 (= res!243360 (arrayNoDuplicates!0 lt!191419 #b00000000000000000000000000000000 Nil!7078))))

(declare-fun b!417653 () Bool)

(declare-fun res!243350 () Bool)

(assert (=> b!417653 (=> (not res!243350) (not e!249137))))

(assert (=> b!417653 (= res!243350 (bvsle from!863 i!563))))

(declare-fun b!417654 () Bool)

(declare-fun e!249136 () Bool)

(declare-fun e!249142 () Bool)

(assert (=> b!417654 (= e!249136 (and e!249142 mapRes!17793))))

(declare-fun condMapEmpty!17793 () Bool)

(declare-fun mapDefault!17793 () ValueCell!5047)

