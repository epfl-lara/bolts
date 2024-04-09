; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40176 () Bool)

(assert start!40176)

(declare-fun b_free!10435 () Bool)

(declare-fun b_next!10435 () Bool)

(assert (=> start!40176 (= b_free!10435 (not b_next!10435))))

(declare-fun tp!36833 () Bool)

(declare-fun b_and!18421 () Bool)

(assert (=> start!40176 (= tp!36833 b_and!18421)))

(declare-fun b!439601 () Bool)

(declare-fun res!259929 () Bool)

(declare-fun e!259108 () Bool)

(assert (=> b!439601 (=> (not res!259929) (not e!259108))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!439601 (= res!259929 (bvsle from!863 i!563))))

(declare-fun b!439602 () Bool)

(declare-fun e!259106 () Bool)

(assert (=> b!439602 (= e!259108 e!259106)))

(declare-fun res!259941 () Bool)

(assert (=> b!439602 (=> (not res!259941) (not e!259106))))

(assert (=> b!439602 (= res!259941 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!16555 0))(
  ( (V!16556 (val!5838 Int)) )
))
(declare-datatypes ((ValueCell!5450 0))(
  ( (ValueCellFull!5450 (v!8081 V!16555)) (EmptyCell!5450) )
))
(declare-datatypes ((array!26965 0))(
  ( (array!26966 (arr!12929 (Array (_ BitVec 32) ValueCell!5450)) (size!13281 (_ BitVec 32))) )
))
(declare-fun lt!202346 () array!26965)

(declare-fun minValue!515 () V!16555)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!7676 0))(
  ( (tuple2!7677 (_1!3848 (_ BitVec 64)) (_2!3848 V!16555)) )
))
(declare-datatypes ((List!7719 0))(
  ( (Nil!7716) (Cons!7715 (h!8571 tuple2!7676) (t!13483 List!7719)) )
))
(declare-datatypes ((ListLongMap!6603 0))(
  ( (ListLongMap!6604 (toList!3317 List!7719)) )
))
(declare-fun lt!202345 () ListLongMap!6603)

(declare-fun zeroValue!515 () V!16555)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((array!26967 0))(
  ( (array!26968 (arr!12930 (Array (_ BitVec 32) (_ BitVec 64))) (size!13282 (_ BitVec 32))) )
))
(declare-fun lt!202343 () array!26967)

(declare-fun getCurrentListMapNoExtraKeys!1499 (array!26967 array!26965 (_ BitVec 32) (_ BitVec 32) V!16555 V!16555 (_ BitVec 32) Int) ListLongMap!6603)

(assert (=> b!439602 (= lt!202345 (getCurrentListMapNoExtraKeys!1499 lt!202343 lt!202346 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!26965)

(declare-fun v!412 () V!16555)

(assert (=> b!439602 (= lt!202346 (array!26966 (store (arr!12929 _values!549) i!563 (ValueCellFull!5450 v!412)) (size!13281 _values!549)))))

(declare-fun lt!202347 () ListLongMap!6603)

(declare-fun _keys!709 () array!26967)

(assert (=> b!439602 (= lt!202347 (getCurrentListMapNoExtraKeys!1499 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun res!259939 () Bool)

(declare-fun e!259105 () Bool)

(assert (=> start!40176 (=> (not res!259939) (not e!259105))))

(assert (=> start!40176 (= res!259939 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13282 _keys!709))))))

(assert (=> start!40176 e!259105))

(declare-fun tp_is_empty!11587 () Bool)

(assert (=> start!40176 tp_is_empty!11587))

(assert (=> start!40176 tp!36833))

(assert (=> start!40176 true))

(declare-fun e!259107 () Bool)

(declare-fun array_inv!9378 (array!26965) Bool)

(assert (=> start!40176 (and (array_inv!9378 _values!549) e!259107)))

(declare-fun array_inv!9379 (array!26967) Bool)

(assert (=> start!40176 (array_inv!9379 _keys!709)))

(declare-fun b!439603 () Bool)

(declare-fun res!259931 () Bool)

(assert (=> b!439603 (=> (not res!259931) (not e!259105))))

(assert (=> b!439603 (= res!259931 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13282 _keys!709))))))

(declare-fun b!439604 () Bool)

(assert (=> b!439604 (= e!259106 (not true))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun +!1456 (ListLongMap!6603 tuple2!7676) ListLongMap!6603)

(assert (=> b!439604 (= (getCurrentListMapNoExtraKeys!1499 lt!202343 lt!202346 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1456 (getCurrentListMapNoExtraKeys!1499 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7677 k!794 v!412)))))

(declare-datatypes ((Unit!13027 0))(
  ( (Unit!13028) )
))
(declare-fun lt!202344 () Unit!13027)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!634 (array!26967 array!26965 (_ BitVec 32) (_ BitVec 32) V!16555 V!16555 (_ BitVec 32) (_ BitVec 64) V!16555 (_ BitVec 32) Int) Unit!13027)

(assert (=> b!439604 (= lt!202344 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!634 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!439605 () Bool)

(declare-fun e!259104 () Bool)

(assert (=> b!439605 (= e!259104 tp_is_empty!11587)))

(declare-fun b!439606 () Bool)

(declare-fun e!259102 () Bool)

(declare-fun mapRes!19002 () Bool)

(assert (=> b!439606 (= e!259107 (and e!259102 mapRes!19002))))

(declare-fun condMapEmpty!19002 () Bool)

(declare-fun mapDefault!19002 () ValueCell!5450)

