; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37390 () Bool)

(assert start!37390)

(declare-fun b_free!8509 () Bool)

(declare-fun b_next!8509 () Bool)

(assert (=> start!37390 (= b_free!8509 (not b_next!8509))))

(declare-fun tp!30243 () Bool)

(declare-fun b_and!15769 () Bool)

(assert (=> start!37390 (= tp!30243 b_and!15769)))

(declare-fun res!215478 () Bool)

(declare-fun e!231003 () Bool)

(assert (=> start!37390 (=> (not res!215478) (not e!231003))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37390 (= res!215478 (validMask!0 mask!970))))

(assert (=> start!37390 e!231003))

(declare-datatypes ((V!13315 0))(
  ( (V!13316 (val!4623 Int)) )
))
(declare-datatypes ((ValueCell!4235 0))(
  ( (ValueCellFull!4235 (v!6816 V!13315)) (EmptyCell!4235) )
))
(declare-datatypes ((array!22211 0))(
  ( (array!22212 (arr!10571 (Array (_ BitVec 32) ValueCell!4235)) (size!10923 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22211)

(declare-fun e!230997 () Bool)

(declare-fun array_inv!7776 (array!22211) Bool)

(assert (=> start!37390 (and (array_inv!7776 _values!506) e!230997)))

(assert (=> start!37390 tp!30243))

(assert (=> start!37390 true))

(declare-fun tp_is_empty!9157 () Bool)

(assert (=> start!37390 tp_is_empty!9157))

(declare-datatypes ((array!22213 0))(
  ( (array!22214 (arr!10572 (Array (_ BitVec 32) (_ BitVec 64))) (size!10924 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22213)

(declare-fun array_inv!7777 (array!22213) Bool)

(assert (=> start!37390 (array_inv!7777 _keys!658)))

(declare-fun b!379710 () Bool)

(declare-fun res!215482 () Bool)

(assert (=> b!379710 (=> (not res!215482) (not e!231003))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!379710 (= res!215482 (and (= (size!10923 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10924 _keys!658) (size!10923 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!15300 () Bool)

(declare-fun mapRes!15300 () Bool)

(declare-fun tp!30242 () Bool)

(declare-fun e!231000 () Bool)

(assert (=> mapNonEmpty!15300 (= mapRes!15300 (and tp!30242 e!231000))))

(declare-fun mapKey!15300 () (_ BitVec 32))

(declare-fun mapRest!15300 () (Array (_ BitVec 32) ValueCell!4235))

(declare-fun mapValue!15300 () ValueCell!4235)

(assert (=> mapNonEmpty!15300 (= (arr!10571 _values!506) (store mapRest!15300 mapKey!15300 mapValue!15300))))

(declare-fun b!379711 () Bool)

(declare-fun e!231002 () Bool)

(assert (=> b!379711 (= e!231002 tp_is_empty!9157)))

(declare-fun b!379712 () Bool)

(declare-fun res!215476 () Bool)

(declare-fun e!230996 () Bool)

(assert (=> b!379712 (=> (not res!215476) (not e!230996))))

(declare-fun lt!177559 () array!22213)

(declare-datatypes ((List!6028 0))(
  ( (Nil!6025) (Cons!6024 (h!6880 (_ BitVec 64)) (t!11186 List!6028)) )
))
(declare-fun arrayNoDuplicates!0 (array!22213 (_ BitVec 32) List!6028) Bool)

(assert (=> b!379712 (= res!215476 (arrayNoDuplicates!0 lt!177559 #b00000000000000000000000000000000 Nil!6025))))

(declare-fun b!379713 () Bool)

(declare-fun e!231001 () Bool)

(assert (=> b!379713 (= e!231001 true)))

(declare-datatypes ((tuple2!6156 0))(
  ( (tuple2!6157 (_1!3088 (_ BitVec 64)) (_2!3088 V!13315)) )
))
(declare-datatypes ((List!6029 0))(
  ( (Nil!6026) (Cons!6025 (h!6881 tuple2!6156) (t!11187 List!6029)) )
))
(declare-datatypes ((ListLongMap!5083 0))(
  ( (ListLongMap!5084 (toList!2557 List!6029)) )
))
(declare-fun lt!177553 () ListLongMap!5083)

(declare-fun lt!177551 () ListLongMap!5083)

(declare-fun lt!177554 () tuple2!6156)

(declare-fun +!898 (ListLongMap!5083 tuple2!6156) ListLongMap!5083)

(assert (=> b!379713 (= lt!177553 (+!898 lt!177551 lt!177554))))

(declare-fun v!373 () V!13315)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun lt!177557 () ListLongMap!5083)

(declare-fun minValue!472 () V!13315)

(declare-datatypes ((Unit!11691 0))(
  ( (Unit!11692) )
))
(declare-fun lt!177552 () Unit!11691)

(declare-fun addCommutativeForDiffKeys!310 (ListLongMap!5083 (_ BitVec 64) V!13315 (_ BitVec 64) V!13315) Unit!11691)

(assert (=> b!379713 (= lt!177552 (addCommutativeForDiffKeys!310 lt!177557 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun mapIsEmpty!15300 () Bool)

(assert (=> mapIsEmpty!15300 mapRes!15300))

(declare-fun b!379714 () Bool)

(declare-fun res!215480 () Bool)

(assert (=> b!379714 (=> (not res!215480) (not e!231003))))

(assert (=> b!379714 (= res!215480 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6025))))

(declare-fun b!379715 () Bool)

(declare-fun e!230998 () Bool)

(assert (=> b!379715 (= e!230996 (not e!230998))))

(declare-fun res!215483 () Bool)

(assert (=> b!379715 (=> res!215483 e!230998)))

(assert (=> b!379715 (= res!215483 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun zeroValue!472 () V!13315)

(declare-fun lt!177555 () ListLongMap!5083)

(declare-fun defaultEntry!514 () Int)

(declare-fun getCurrentListMap!1982 (array!22213 array!22211 (_ BitVec 32) (_ BitVec 32) V!13315 V!13315 (_ BitVec 32) Int) ListLongMap!5083)

(assert (=> b!379715 (= lt!177555 (getCurrentListMap!1982 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!177556 () ListLongMap!5083)

(declare-fun lt!177550 () array!22211)

(assert (=> b!379715 (= lt!177556 (getCurrentListMap!1982 lt!177559 lt!177550 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!177558 () ListLongMap!5083)

(declare-fun lt!177562 () ListLongMap!5083)

(assert (=> b!379715 (and (= lt!177558 lt!177562) (= lt!177562 lt!177558))))

(assert (=> b!379715 (= lt!177562 (+!898 lt!177557 lt!177554))))

(assert (=> b!379715 (= lt!177554 (tuple2!6157 k!778 v!373))))

(declare-fun lt!177561 () Unit!11691)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!133 (array!22213 array!22211 (_ BitVec 32) (_ BitVec 32) V!13315 V!13315 (_ BitVec 32) (_ BitVec 64) V!13315 (_ BitVec 32) Int) Unit!11691)

(assert (=> b!379715 (= lt!177561 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!133 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!800 (array!22213 array!22211 (_ BitVec 32) (_ BitVec 32) V!13315 V!13315 (_ BitVec 32) Int) ListLongMap!5083)

(assert (=> b!379715 (= lt!177558 (getCurrentListMapNoExtraKeys!800 lt!177559 lt!177550 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!379715 (= lt!177550 (array!22212 (store (arr!10571 _values!506) i!548 (ValueCellFull!4235 v!373)) (size!10923 _values!506)))))

(assert (=> b!379715 (= lt!177557 (getCurrentListMapNoExtraKeys!800 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!379716 () Bool)

(assert (=> b!379716 (= e!231000 tp_is_empty!9157)))

(declare-fun b!379717 () Bool)

(declare-fun res!215486 () Bool)

(assert (=> b!379717 (=> (not res!215486) (not e!231003))))

(assert (=> b!379717 (= res!215486 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10924 _keys!658))))))

(declare-fun b!379718 () Bool)

(declare-fun res!215475 () Bool)

(assert (=> b!379718 (=> (not res!215475) (not e!231003))))

(declare-fun arrayContainsKey!0 (array!22213 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!379718 (= res!215475 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!379719 () Bool)

(declare-fun res!215477 () Bool)

(assert (=> b!379719 (=> (not res!215477) (not e!231003))))

(assert (=> b!379719 (= res!215477 (or (= (select (arr!10572 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10572 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!379720 () Bool)

(assert (=> b!379720 (= e!230997 (and e!231002 mapRes!15300))))

(declare-fun condMapEmpty!15300 () Bool)

(declare-fun mapDefault!15300 () ValueCell!4235)

