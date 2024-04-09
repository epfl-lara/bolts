; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37594 () Bool)

(assert start!37594)

(declare-fun b_free!8713 () Bool)

(declare-fun b_next!8713 () Bool)

(assert (=> start!37594 (= b_free!8713 (not b_next!8713))))

(declare-fun tp!30855 () Bool)

(declare-fun b_and!15973 () Bool)

(assert (=> start!37594 (= tp!30855 b_and!15973)))

(declare-fun b!384064 () Bool)

(declare-fun res!218918 () Bool)

(declare-fun e!233208 () Bool)

(assert (=> b!384064 (=> (not res!218918) (not e!233208))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!384064 (= res!218918 (validKeyInArray!0 k!778))))

(declare-fun b!384065 () Bool)

(declare-fun e!233210 () Bool)

(declare-fun e!233211 () Bool)

(assert (=> b!384065 (= e!233210 (not e!233211))))

(declare-fun res!218920 () Bool)

(assert (=> b!384065 (=> res!218920 e!233211)))

(declare-fun lt!180705 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!384065 (= res!218920 (or (and (not lt!180705) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!180705) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!180705)))))

(assert (=> b!384065 (= lt!180705 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-datatypes ((V!13587 0))(
  ( (V!13588 (val!4725 Int)) )
))
(declare-datatypes ((ValueCell!4337 0))(
  ( (ValueCellFull!4337 (v!6918 V!13587)) (EmptyCell!4337) )
))
(declare-datatypes ((array!22609 0))(
  ( (array!22610 (arr!10770 (Array (_ BitVec 32) ValueCell!4337)) (size!11122 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22609)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6314 0))(
  ( (tuple2!6315 (_1!3167 (_ BitVec 64)) (_2!3167 V!13587)) )
))
(declare-datatypes ((List!6182 0))(
  ( (Nil!6179) (Cons!6178 (h!7034 tuple2!6314) (t!11340 List!6182)) )
))
(declare-datatypes ((ListLongMap!5241 0))(
  ( (ListLongMap!5242 (toList!2636 List!6182)) )
))
(declare-fun lt!180709 () ListLongMap!5241)

(declare-datatypes ((array!22611 0))(
  ( (array!22612 (arr!10771 (Array (_ BitVec 32) (_ BitVec 64))) (size!11123 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22611)

(declare-fun zeroValue!472 () V!13587)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13587)

(declare-fun getCurrentListMap!2052 (array!22611 array!22609 (_ BitVec 32) (_ BitVec 32) V!13587 V!13587 (_ BitVec 32) Int) ListLongMap!5241)

(assert (=> b!384065 (= lt!180709 (getCurrentListMap!2052 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180711 () array!22611)

(declare-fun lt!180713 () ListLongMap!5241)

(declare-fun lt!180715 () array!22609)

(assert (=> b!384065 (= lt!180713 (getCurrentListMap!2052 lt!180711 lt!180715 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180714 () ListLongMap!5241)

(declare-fun lt!180706 () ListLongMap!5241)

(assert (=> b!384065 (and (= lt!180714 lt!180706) (= lt!180706 lt!180714))))

(declare-fun lt!180708 () ListLongMap!5241)

(declare-fun lt!180712 () tuple2!6314)

(declare-fun +!972 (ListLongMap!5241 tuple2!6314) ListLongMap!5241)

(assert (=> b!384065 (= lt!180706 (+!972 lt!180708 lt!180712))))

(declare-fun v!373 () V!13587)

(assert (=> b!384065 (= lt!180712 (tuple2!6315 k!778 v!373))))

(declare-datatypes ((Unit!11833 0))(
  ( (Unit!11834) )
))
(declare-fun lt!180707 () Unit!11833)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!203 (array!22611 array!22609 (_ BitVec 32) (_ BitVec 32) V!13587 V!13587 (_ BitVec 32) (_ BitVec 64) V!13587 (_ BitVec 32) Int) Unit!11833)

(assert (=> b!384065 (= lt!180707 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!203 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!870 (array!22611 array!22609 (_ BitVec 32) (_ BitVec 32) V!13587 V!13587 (_ BitVec 32) Int) ListLongMap!5241)

(assert (=> b!384065 (= lt!180714 (getCurrentListMapNoExtraKeys!870 lt!180711 lt!180715 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!384065 (= lt!180715 (array!22610 (store (arr!10770 _values!506) i!548 (ValueCellFull!4337 v!373)) (size!11122 _values!506)))))

(assert (=> b!384065 (= lt!180708 (getCurrentListMapNoExtraKeys!870 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!384066 () Bool)

(assert (=> b!384066 (= e!233211 true)))

(declare-fun lt!180710 () ListLongMap!5241)

(assert (=> b!384066 (= lt!180710 (+!972 lt!180709 lt!180712))))

(assert (=> b!384066 (= lt!180713 lt!180714)))

(declare-fun b!384067 () Bool)

(declare-fun res!218914 () Bool)

(assert (=> b!384067 (=> (not res!218914) (not e!233208))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22611 (_ BitVec 32)) Bool)

(assert (=> b!384067 (= res!218914 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!384068 () Bool)

(declare-fun res!218911 () Bool)

(assert (=> b!384068 (=> (not res!218911) (not e!233208))))

(assert (=> b!384068 (= res!218911 (and (= (size!11122 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11123 _keys!658) (size!11122 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!384069 () Bool)

(declare-fun e!233212 () Bool)

(declare-fun e!233213 () Bool)

(declare-fun mapRes!15606 () Bool)

(assert (=> b!384069 (= e!233212 (and e!233213 mapRes!15606))))

(declare-fun condMapEmpty!15606 () Bool)

(declare-fun mapDefault!15606 () ValueCell!4337)

