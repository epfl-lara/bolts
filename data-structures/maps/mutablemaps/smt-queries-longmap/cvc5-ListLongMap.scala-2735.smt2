; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40236 () Bool)

(assert start!40236)

(declare-fun b_free!10495 () Bool)

(declare-fun b_next!10495 () Bool)

(assert (=> start!40236 (= b_free!10495 (not b_next!10495))))

(declare-fun tp!37014 () Bool)

(declare-fun b_and!18481 () Bool)

(assert (=> start!40236 (= tp!37014 b_and!18481)))

(declare-fun b!441041 () Bool)

(declare-fun res!261111 () Bool)

(declare-fun e!259736 () Bool)

(assert (=> b!441041 (=> (not res!261111) (not e!259736))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!441041 (= res!261111 (validKeyInArray!0 k!794))))

(declare-fun b!441042 () Bool)

(declare-fun e!259737 () Bool)

(assert (=> b!441042 (= e!259736 e!259737)))

(declare-fun res!261105 () Bool)

(assert (=> b!441042 (=> (not res!261105) (not e!259737))))

(declare-datatypes ((array!27081 0))(
  ( (array!27082 (arr!12987 (Array (_ BitVec 32) (_ BitVec 64))) (size!13339 (_ BitVec 32))) )
))
(declare-fun lt!202793 () array!27081)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27081 (_ BitVec 32)) Bool)

(assert (=> b!441042 (= res!261105 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202793 mask!1025))))

(declare-fun _keys!709 () array!27081)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!441042 (= lt!202793 (array!27082 (store (arr!12987 _keys!709) i!563 k!794) (size!13339 _keys!709)))))

(declare-fun b!441043 () Bool)

(declare-fun e!259734 () Bool)

(declare-fun tp_is_empty!11647 () Bool)

(assert (=> b!441043 (= e!259734 tp_is_empty!11647)))

(declare-fun b!441044 () Bool)

(declare-fun e!259738 () Bool)

(assert (=> b!441044 (= e!259738 tp_is_empty!11647)))

(declare-fun b!441045 () Bool)

(declare-fun e!259733 () Bool)

(assert (=> b!441045 (= e!259737 e!259733)))

(declare-fun res!261110 () Bool)

(assert (=> b!441045 (=> (not res!261110) (not e!259733))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!441045 (= res!261110 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!16635 0))(
  ( (V!16636 (val!5868 Int)) )
))
(declare-datatypes ((ValueCell!5480 0))(
  ( (ValueCellFull!5480 (v!8111 V!16635)) (EmptyCell!5480) )
))
(declare-datatypes ((array!27083 0))(
  ( (array!27084 (arr!12988 (Array (_ BitVec 32) ValueCell!5480)) (size!13340 (_ BitVec 32))) )
))
(declare-fun lt!202794 () array!27083)

(declare-fun minValue!515 () V!16635)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16635)

(declare-datatypes ((tuple2!7726 0))(
  ( (tuple2!7727 (_1!3873 (_ BitVec 64)) (_2!3873 V!16635)) )
))
(declare-datatypes ((List!7769 0))(
  ( (Nil!7766) (Cons!7765 (h!8621 tuple2!7726) (t!13533 List!7769)) )
))
(declare-datatypes ((ListLongMap!6653 0))(
  ( (ListLongMap!6654 (toList!3342 List!7769)) )
))
(declare-fun lt!202795 () ListLongMap!6653)

(declare-fun getCurrentListMapNoExtraKeys!1524 (array!27081 array!27083 (_ BitVec 32) (_ BitVec 32) V!16635 V!16635 (_ BitVec 32) Int) ListLongMap!6653)

(assert (=> b!441045 (= lt!202795 (getCurrentListMapNoExtraKeys!1524 lt!202793 lt!202794 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!27083)

(declare-fun v!412 () V!16635)

(assert (=> b!441045 (= lt!202794 (array!27084 (store (arr!12988 _values!549) i!563 (ValueCellFull!5480 v!412)) (size!13340 _values!549)))))

(declare-fun lt!202797 () ListLongMap!6653)

(assert (=> b!441045 (= lt!202797 (getCurrentListMapNoExtraKeys!1524 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!441046 () Bool)

(declare-fun res!261104 () Bool)

(assert (=> b!441046 (=> (not res!261104) (not e!259736))))

(assert (=> b!441046 (= res!261104 (and (= (size!13340 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13339 _keys!709) (size!13340 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!19092 () Bool)

(declare-fun mapRes!19092 () Bool)

(assert (=> mapIsEmpty!19092 mapRes!19092))

(declare-fun b!441047 () Bool)

(declare-fun res!261101 () Bool)

(assert (=> b!441047 (=> (not res!261101) (not e!259736))))

(assert (=> b!441047 (= res!261101 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13339 _keys!709))))))

(declare-fun b!441048 () Bool)

(declare-fun res!261102 () Bool)

(assert (=> b!441048 (=> (not res!261102) (not e!259736))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!441048 (= res!261102 (validMask!0 mask!1025))))

(declare-fun b!441049 () Bool)

(declare-fun res!261103 () Bool)

(assert (=> b!441049 (=> (not res!261103) (not e!259736))))

(assert (=> b!441049 (= res!261103 (or (= (select (arr!12987 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12987 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!261109 () Bool)

(assert (=> start!40236 (=> (not res!261109) (not e!259736))))

(assert (=> start!40236 (= res!261109 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13339 _keys!709))))))

(assert (=> start!40236 e!259736))

(assert (=> start!40236 tp_is_empty!11647))

(assert (=> start!40236 tp!37014))

(assert (=> start!40236 true))

(declare-fun e!259735 () Bool)

(declare-fun array_inv!9416 (array!27083) Bool)

(assert (=> start!40236 (and (array_inv!9416 _values!549) e!259735)))

(declare-fun array_inv!9417 (array!27081) Bool)

(assert (=> start!40236 (array_inv!9417 _keys!709)))

(declare-fun b!441050 () Bool)

(assert (=> b!441050 (= e!259733 (not true))))

(declare-fun +!1477 (ListLongMap!6653 tuple2!7726) ListLongMap!6653)

(assert (=> b!441050 (= (getCurrentListMapNoExtraKeys!1524 lt!202793 lt!202794 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1477 (getCurrentListMapNoExtraKeys!1524 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7727 k!794 v!412)))))

(declare-datatypes ((Unit!13069 0))(
  ( (Unit!13070) )
))
(declare-fun lt!202796 () Unit!13069)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!655 (array!27081 array!27083 (_ BitVec 32) (_ BitVec 32) V!16635 V!16635 (_ BitVec 32) (_ BitVec 64) V!16635 (_ BitVec 32) Int) Unit!13069)

(assert (=> b!441050 (= lt!202796 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!655 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!441051 () Bool)

(assert (=> b!441051 (= e!259735 (and e!259734 mapRes!19092))))

(declare-fun condMapEmpty!19092 () Bool)

(declare-fun mapDefault!19092 () ValueCell!5480)

