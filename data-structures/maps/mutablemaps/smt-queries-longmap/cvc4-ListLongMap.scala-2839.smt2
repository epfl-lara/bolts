; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41010 () Bool)

(assert start!41010)

(declare-fun b_free!10937 () Bool)

(declare-fun b_next!10937 () Bool)

(assert (=> start!41010 (= b_free!10937 (not b_next!10937))))

(declare-fun tp!38638 () Bool)

(declare-fun b_and!19097 () Bool)

(assert (=> start!41010 (= tp!38638 b_and!19097)))

(declare-fun b!456546 () Bool)

(declare-fun e!266714 () Bool)

(declare-fun tp_is_empty!12275 () Bool)

(assert (=> b!456546 (= e!266714 tp_is_empty!12275)))

(declare-fun b!456547 () Bool)

(declare-fun e!266717 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((V!17471 0))(
  ( (V!17472 (val!6182 Int)) )
))
(declare-datatypes ((ValueCell!5794 0))(
  ( (ValueCellFull!5794 (v!8444 V!17471)) (EmptyCell!5794) )
))
(declare-datatypes ((array!28317 0))(
  ( (array!28318 (arr!13599 (Array (_ BitVec 32) ValueCell!5794)) (size!13951 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28317)

(assert (=> b!456547 (= e!266717 (bvslt i!563 (size!13951 _values!549)))))

(declare-fun b!456548 () Bool)

(declare-fun res!272582 () Bool)

(declare-fun e!266718 () Bool)

(assert (=> b!456548 (=> (not res!272582) (not e!266718))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!456548 (= res!272582 (validKeyInArray!0 k!794))))

(declare-fun res!272575 () Bool)

(assert (=> start!41010 (=> (not res!272575) (not e!266718))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!28319 0))(
  ( (array!28320 (arr!13600 (Array (_ BitVec 32) (_ BitVec 64))) (size!13952 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28319)

(assert (=> start!41010 (= res!272575 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13952 _keys!709))))))

(assert (=> start!41010 e!266718))

(assert (=> start!41010 tp_is_empty!12275))

(assert (=> start!41010 tp!38638))

(assert (=> start!41010 true))

(declare-fun e!266719 () Bool)

(declare-fun array_inv!9840 (array!28317) Bool)

(assert (=> start!41010 (and (array_inv!9840 _values!549) e!266719)))

(declare-fun array_inv!9841 (array!28319) Bool)

(assert (=> start!41010 (array_inv!9841 _keys!709)))

(declare-fun b!456549 () Bool)

(declare-fun res!272572 () Bool)

(assert (=> b!456549 (=> (not res!272572) (not e!266718))))

(assert (=> b!456549 (= res!272572 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13952 _keys!709))))))

(declare-fun b!456550 () Bool)

(declare-fun e!266720 () Bool)

(declare-fun e!266713 () Bool)

(assert (=> b!456550 (= e!266720 e!266713)))

(declare-fun res!272581 () Bool)

(assert (=> b!456550 (=> (not res!272581) (not e!266713))))

(assert (=> b!456550 (= res!272581 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!17471)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!8104 0))(
  ( (tuple2!8105 (_1!4062 (_ BitVec 64)) (_2!4062 V!17471)) )
))
(declare-datatypes ((List!8210 0))(
  ( (Nil!8207) (Cons!8206 (h!9062 tuple2!8104) (t!14046 List!8210)) )
))
(declare-datatypes ((ListLongMap!7031 0))(
  ( (ListLongMap!7032 (toList!3531 List!8210)) )
))
(declare-fun lt!206604 () ListLongMap!7031)

(declare-fun zeroValue!515 () V!17471)

(declare-fun lt!206606 () array!28317)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lt!206605 () array!28319)

(declare-fun getCurrentListMapNoExtraKeys!1707 (array!28319 array!28317 (_ BitVec 32) (_ BitVec 32) V!17471 V!17471 (_ BitVec 32) Int) ListLongMap!7031)

(assert (=> b!456550 (= lt!206604 (getCurrentListMapNoExtraKeys!1707 lt!206605 lt!206606 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!17471)

(assert (=> b!456550 (= lt!206606 (array!28318 (store (arr!13599 _values!549) i!563 (ValueCellFull!5794 v!412)) (size!13951 _values!549)))))

(declare-fun lt!206603 () ListLongMap!7031)

(assert (=> b!456550 (= lt!206603 (getCurrentListMapNoExtraKeys!1707 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!456551 () Bool)

(declare-fun e!266715 () Bool)

(assert (=> b!456551 (= e!266715 tp_is_empty!12275)))

(declare-fun b!456552 () Bool)

(declare-fun res!272569 () Bool)

(assert (=> b!456552 (=> (not res!272569) (not e!266718))))

(declare-fun arrayContainsKey!0 (array!28319 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!456552 (= res!272569 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!456553 () Bool)

(assert (=> b!456553 (= e!266718 e!266720)))

(declare-fun res!272580 () Bool)

(assert (=> b!456553 (=> (not res!272580) (not e!266720))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28319 (_ BitVec 32)) Bool)

(assert (=> b!456553 (= res!272580 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206605 mask!1025))))

(assert (=> b!456553 (= lt!206605 (array!28320 (store (arr!13600 _keys!709) i!563 k!794) (size!13952 _keys!709)))))

(declare-fun b!456554 () Bool)

(declare-fun res!272570 () Bool)

(assert (=> b!456554 (=> (not res!272570) (not e!266718))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!456554 (= res!272570 (validMask!0 mask!1025))))

(declare-fun b!456555 () Bool)

(declare-fun mapRes!20053 () Bool)

(assert (=> b!456555 (= e!266719 (and e!266714 mapRes!20053))))

(declare-fun condMapEmpty!20053 () Bool)

(declare-fun mapDefault!20053 () ValueCell!5794)

