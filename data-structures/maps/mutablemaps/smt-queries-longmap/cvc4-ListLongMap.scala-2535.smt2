; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39040 () Bool)

(assert start!39040)

(declare-fun b_free!9299 () Bool)

(declare-fun b_next!9299 () Bool)

(assert (=> start!39040 (= b_free!9299 (not b_next!9299))))

(declare-fun tp!33426 () Bool)

(declare-fun b_and!16703 () Bool)

(assert (=> start!39040 (= tp!33426 b_and!16703)))

(declare-fun b!409137 () Bool)

(declare-fun res!236968 () Bool)

(declare-fun e!245456 () Bool)

(assert (=> b!409137 (=> (not res!236968) (not e!245456))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!24755 0))(
  ( (array!24756 (arr!11824 (Array (_ BitVec 32) (_ BitVec 64))) (size!12176 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24755)

(assert (=> b!409137 (= res!236968 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12176 _keys!709))))))

(declare-fun b!409138 () Bool)

(declare-fun res!236960 () Bool)

(assert (=> b!409138 (=> (not res!236960) (not e!245456))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15039 0))(
  ( (V!15040 (val!5270 Int)) )
))
(declare-datatypes ((ValueCell!4882 0))(
  ( (ValueCellFull!4882 (v!7513 V!15039)) (EmptyCell!4882) )
))
(declare-datatypes ((array!24757 0))(
  ( (array!24758 (arr!11825 (Array (_ BitVec 32) ValueCell!4882)) (size!12177 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24757)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!409138 (= res!236960 (and (= (size!12177 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12176 _keys!709) (size!12177 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!409139 () Bool)

(declare-fun e!245458 () Bool)

(assert (=> b!409139 (= e!245458 false)))

(declare-fun minValue!515 () V!15039)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!6778 0))(
  ( (tuple2!6779 (_1!3399 (_ BitVec 64)) (_2!3399 V!15039)) )
))
(declare-datatypes ((List!6826 0))(
  ( (Nil!6823) (Cons!6822 (h!7678 tuple2!6778) (t!12008 List!6826)) )
))
(declare-datatypes ((ListLongMap!5705 0))(
  ( (ListLongMap!5706 (toList!2868 List!6826)) )
))
(declare-fun lt!188895 () ListLongMap!5705)

(declare-fun zeroValue!515 () V!15039)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1078 (array!24755 array!24757 (_ BitVec 32) (_ BitVec 32) V!15039 V!15039 (_ BitVec 32) Int) ListLongMap!5705)

(assert (=> b!409139 (= lt!188895 (getCurrentListMapNoExtraKeys!1078 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!409140 () Bool)

(declare-fun res!236965 () Bool)

(assert (=> b!409140 (=> (not res!236965) (not e!245456))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!409140 (= res!236965 (validKeyInArray!0 k!794))))

(declare-fun b!409141 () Bool)

(declare-fun res!236963 () Bool)

(assert (=> b!409141 (=> (not res!236963) (not e!245456))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!409141 (= res!236963 (validMask!0 mask!1025))))

(declare-fun b!409142 () Bool)

(declare-fun e!245461 () Bool)

(declare-fun e!245460 () Bool)

(declare-fun mapRes!17298 () Bool)

(assert (=> b!409142 (= e!245461 (and e!245460 mapRes!17298))))

(declare-fun condMapEmpty!17298 () Bool)

(declare-fun mapDefault!17298 () ValueCell!4882)

