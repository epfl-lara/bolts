; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39552 () Bool)

(assert start!39552)

(declare-fun b_free!9811 () Bool)

(declare-fun b_next!9811 () Bool)

(assert (=> start!39552 (= b_free!9811 (not b_next!9811))))

(declare-fun tp!34961 () Bool)

(declare-fun b_and!17485 () Bool)

(assert (=> start!39552 (= tp!34961 b_and!17485)))

(declare-fun b!422799 () Bool)

(declare-fun res!247079 () Bool)

(declare-fun e!251452 () Bool)

(assert (=> b!422799 (=> (not res!247079) (not e!251452))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!25753 0))(
  ( (array!25754 (arr!12323 (Array (_ BitVec 32) (_ BitVec 64))) (size!12675 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25753)

(assert (=> b!422799 (= res!247079 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12675 _keys!709))))))

(declare-fun b!422800 () Bool)

(declare-fun e!251455 () Bool)

(assert (=> b!422800 (= e!251455 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((V!15723 0))(
  ( (V!15724 (val!5526 Int)) )
))
(declare-fun minValue!515 () V!15723)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!7184 0))(
  ( (tuple2!7185 (_1!3602 (_ BitVec 64)) (_2!3602 V!15723)) )
))
(declare-datatypes ((List!7229 0))(
  ( (Nil!7226) (Cons!7225 (h!8081 tuple2!7184) (t!12681 List!7229)) )
))
(declare-datatypes ((ListLongMap!6111 0))(
  ( (ListLongMap!6112 (toList!3071 List!7229)) )
))
(declare-fun lt!194043 () ListLongMap!6111)

(declare-datatypes ((ValueCell!5138 0))(
  ( (ValueCellFull!5138 (v!7769 V!15723)) (EmptyCell!5138) )
))
(declare-datatypes ((array!25755 0))(
  ( (array!25756 (arr!12324 (Array (_ BitVec 32) ValueCell!5138)) (size!12676 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25755)

(declare-fun zeroValue!515 () V!15723)

(declare-fun lt!194041 () array!25753)

(declare-fun v!412 () V!15723)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1272 (array!25753 array!25755 (_ BitVec 32) (_ BitVec 32) V!15723 V!15723 (_ BitVec 32) Int) ListLongMap!6111)

(assert (=> b!422800 (= lt!194043 (getCurrentListMapNoExtraKeys!1272 lt!194041 (array!25756 (store (arr!12324 _values!549) i!563 (ValueCellFull!5138 v!412)) (size!12676 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!194042 () ListLongMap!6111)

(assert (=> b!422800 (= lt!194042 (getCurrentListMapNoExtraKeys!1272 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!422801 () Bool)

(declare-fun res!247078 () Bool)

(assert (=> b!422801 (=> (not res!247078) (not e!251452))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!422801 (= res!247078 (validKeyInArray!0 k!794))))

(declare-fun b!422802 () Bool)

(declare-fun res!247081 () Bool)

(assert (=> b!422802 (=> (not res!247081) (not e!251455))))

(assert (=> b!422802 (= res!247081 (bvsle from!863 i!563))))

(declare-fun b!422803 () Bool)

(declare-fun res!247084 () Bool)

(assert (=> b!422803 (=> (not res!247084) (not e!251452))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25753 (_ BitVec 32)) Bool)

(assert (=> b!422803 (= res!247084 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!422805 () Bool)

(declare-fun res!247075 () Bool)

(assert (=> b!422805 (=> (not res!247075) (not e!251452))))

(assert (=> b!422805 (= res!247075 (or (= (select (arr!12323 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12323 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!422806 () Bool)

(declare-fun e!251451 () Bool)

(declare-fun e!251453 () Bool)

(declare-fun mapRes!18066 () Bool)

(assert (=> b!422806 (= e!251451 (and e!251453 mapRes!18066))))

(declare-fun condMapEmpty!18066 () Bool)

(declare-fun mapDefault!18066 () ValueCell!5138)

