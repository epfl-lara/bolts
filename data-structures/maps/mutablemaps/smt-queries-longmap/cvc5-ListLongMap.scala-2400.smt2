; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38004 () Bool)

(assert start!38004)

(declare-fun b_free!8965 () Bool)

(declare-fun b_next!8965 () Bool)

(assert (=> start!38004 (= b_free!8965 (not b_next!8965))))

(declare-fun tp!31664 () Bool)

(declare-fun b_and!16297 () Bool)

(assert (=> start!38004 (= tp!31664 b_and!16297)))

(declare-fun b!390713 () Bool)

(declare-fun res!223654 () Bool)

(declare-fun e!236680 () Bool)

(assert (=> b!390713 (=> (not res!223654) (not e!236680))))

(declare-datatypes ((array!23151 0))(
  ( (array!23152 (arr!11035 (Array (_ BitVec 32) (_ BitVec 64))) (size!11387 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23151)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23151 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!390713 (= res!223654 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!390714 () Bool)

(declare-fun res!223655 () Bool)

(assert (=> b!390714 (=> (not res!223655) (not e!236680))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23151 (_ BitVec 32)) Bool)

(assert (=> b!390714 (= res!223655 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!390715 () Bool)

(declare-fun res!223647 () Bool)

(assert (=> b!390715 (=> (not res!223647) (not e!236680))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!390715 (= res!223647 (or (= (select (arr!11035 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11035 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!390716 () Bool)

(declare-fun e!236683 () Bool)

(declare-fun e!236681 () Bool)

(assert (=> b!390716 (= e!236683 (not e!236681))))

(declare-fun res!223653 () Bool)

(assert (=> b!390716 (=> res!223653 e!236681)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!390716 (= res!223653 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!13955 0))(
  ( (V!13956 (val!4863 Int)) )
))
(declare-datatypes ((tuple2!6488 0))(
  ( (tuple2!6489 (_1!3254 (_ BitVec 64)) (_2!3254 V!13955)) )
))
(declare-datatypes ((List!6370 0))(
  ( (Nil!6367) (Cons!6366 (h!7222 tuple2!6488) (t!11540 List!6370)) )
))
(declare-datatypes ((ListLongMap!5415 0))(
  ( (ListLongMap!5416 (toList!2723 List!6370)) )
))
(declare-fun lt!184311 () ListLongMap!5415)

(declare-datatypes ((ValueCell!4475 0))(
  ( (ValueCellFull!4475 (v!7080 V!13955)) (EmptyCell!4475) )
))
(declare-datatypes ((array!23153 0))(
  ( (array!23154 (arr!11036 (Array (_ BitVec 32) ValueCell!4475)) (size!11388 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23153)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13955)

(declare-fun minValue!472 () V!13955)

(declare-fun getCurrentListMap!2090 (array!23151 array!23153 (_ BitVec 32) (_ BitVec 32) V!13955 V!13955 (_ BitVec 32) Int) ListLongMap!5415)

(assert (=> b!390716 (= lt!184311 (getCurrentListMap!2090 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184309 () ListLongMap!5415)

(declare-fun lt!184312 () array!23151)

(declare-fun lt!184307 () array!23153)

(assert (=> b!390716 (= lt!184309 (getCurrentListMap!2090 lt!184312 lt!184307 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184308 () ListLongMap!5415)

(declare-fun lt!184305 () ListLongMap!5415)

(assert (=> b!390716 (and (= lt!184308 lt!184305) (= lt!184305 lt!184308))))

(declare-fun v!373 () V!13955)

(declare-fun lt!184313 () ListLongMap!5415)

(declare-fun +!1021 (ListLongMap!5415 tuple2!6488) ListLongMap!5415)

(assert (=> b!390716 (= lt!184305 (+!1021 lt!184313 (tuple2!6489 k!778 v!373)))))

(declare-datatypes ((Unit!11935 0))(
  ( (Unit!11936) )
))
(declare-fun lt!184310 () Unit!11935)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!247 (array!23151 array!23153 (_ BitVec 32) (_ BitVec 32) V!13955 V!13955 (_ BitVec 32) (_ BitVec 64) V!13955 (_ BitVec 32) Int) Unit!11935)

(assert (=> b!390716 (= lt!184310 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!247 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!952 (array!23151 array!23153 (_ BitVec 32) (_ BitVec 32) V!13955 V!13955 (_ BitVec 32) Int) ListLongMap!5415)

(assert (=> b!390716 (= lt!184308 (getCurrentListMapNoExtraKeys!952 lt!184312 lt!184307 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!390716 (= lt!184307 (array!23154 (store (arr!11036 _values!506) i!548 (ValueCellFull!4475 v!373)) (size!11388 _values!506)))))

(assert (=> b!390716 (= lt!184313 (getCurrentListMapNoExtraKeys!952 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!390717 () Bool)

(declare-fun res!223646 () Bool)

(assert (=> b!390717 (=> (not res!223646) (not e!236680))))

(declare-datatypes ((List!6371 0))(
  ( (Nil!6368) (Cons!6367 (h!7223 (_ BitVec 64)) (t!11541 List!6371)) )
))
(declare-fun arrayNoDuplicates!0 (array!23151 (_ BitVec 32) List!6371) Bool)

(assert (=> b!390717 (= res!223646 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6368))))

(declare-fun e!236682 () Bool)

(declare-fun lt!184306 () tuple2!6488)

(declare-fun b!390718 () Bool)

(assert (=> b!390718 (= e!236682 (= lt!184311 (+!1021 lt!184313 lt!184306)))))

(declare-fun b!390719 () Bool)

(declare-fun res!223648 () Bool)

(assert (=> b!390719 (=> (not res!223648) (not e!236683))))

(assert (=> b!390719 (= res!223648 (arrayNoDuplicates!0 lt!184312 #b00000000000000000000000000000000 Nil!6368))))

(declare-fun b!390720 () Bool)

(assert (=> b!390720 (= e!236681 (= lt!184309 (+!1021 lt!184305 lt!184306)))))

(assert (=> b!390720 e!236682))

(declare-fun res!223650 () Bool)

(assert (=> b!390720 (=> (not res!223650) (not e!236682))))

(assert (=> b!390720 (= res!223650 (= lt!184309 (+!1021 lt!184308 lt!184306)))))

(assert (=> b!390720 (= lt!184306 (tuple2!6489 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!390721 () Bool)

(assert (=> b!390721 (= e!236680 e!236683)))

(declare-fun res!223656 () Bool)

(assert (=> b!390721 (=> (not res!223656) (not e!236683))))

(assert (=> b!390721 (= res!223656 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!184312 mask!970))))

(assert (=> b!390721 (= lt!184312 (array!23152 (store (arr!11035 _keys!658) i!548 k!778) (size!11387 _keys!658)))))

(declare-fun mapIsEmpty!16038 () Bool)

(declare-fun mapRes!16038 () Bool)

(assert (=> mapIsEmpty!16038 mapRes!16038))

(declare-fun res!223651 () Bool)

(assert (=> start!38004 (=> (not res!223651) (not e!236680))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!38004 (= res!223651 (validMask!0 mask!970))))

(assert (=> start!38004 e!236680))

(declare-fun e!236686 () Bool)

(declare-fun array_inv!8090 (array!23153) Bool)

(assert (=> start!38004 (and (array_inv!8090 _values!506) e!236686)))

(assert (=> start!38004 tp!31664))

(assert (=> start!38004 true))

(declare-fun tp_is_empty!9637 () Bool)

(assert (=> start!38004 tp_is_empty!9637))

(declare-fun array_inv!8091 (array!23151) Bool)

(assert (=> start!38004 (array_inv!8091 _keys!658)))

(declare-fun b!390722 () Bool)

(declare-fun e!236679 () Bool)

(assert (=> b!390722 (= e!236679 tp_is_empty!9637)))

(declare-fun b!390723 () Bool)

(declare-fun res!223652 () Bool)

(assert (=> b!390723 (=> (not res!223652) (not e!236680))))

(assert (=> b!390723 (= res!223652 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11387 _keys!658))))))

(declare-fun b!390724 () Bool)

(declare-fun res!223657 () Bool)

(assert (=> b!390724 (=> (not res!223657) (not e!236680))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!390724 (= res!223657 (validKeyInArray!0 k!778))))

(declare-fun b!390725 () Bool)

(assert (=> b!390725 (= e!236686 (and e!236679 mapRes!16038))))

(declare-fun condMapEmpty!16038 () Bool)

(declare-fun mapDefault!16038 () ValueCell!4475)

