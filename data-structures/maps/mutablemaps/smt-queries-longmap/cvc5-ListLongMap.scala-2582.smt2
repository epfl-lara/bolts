; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39318 () Bool)

(assert start!39318)

(declare-fun b_free!9577 () Bool)

(declare-fun b_next!9577 () Bool)

(assert (=> start!39318 (= b_free!9577 (not b_next!9577))))

(declare-fun tp!34260 () Bool)

(declare-fun b_and!17047 () Bool)

(assert (=> start!39318 (= tp!34260 b_and!17047)))

(declare-fun res!242255 () Bool)

(declare-fun e!248433 () Bool)

(assert (=> start!39318 (=> (not res!242255) (not e!248433))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!25293 0))(
  ( (array!25294 (arr!12093 (Array (_ BitVec 32) (_ BitVec 64))) (size!12445 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25293)

(assert (=> start!39318 (= res!242255 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12445 _keys!709))))))

(assert (=> start!39318 e!248433))

(declare-fun tp_is_empty!10729 () Bool)

(assert (=> start!39318 tp_is_empty!10729))

(assert (=> start!39318 tp!34260))

(assert (=> start!39318 true))

(declare-datatypes ((V!15411 0))(
  ( (V!15412 (val!5409 Int)) )
))
(declare-datatypes ((ValueCell!5021 0))(
  ( (ValueCellFull!5021 (v!7652 V!15411)) (EmptyCell!5021) )
))
(declare-datatypes ((array!25295 0))(
  ( (array!25296 (arr!12094 (Array (_ BitVec 32) ValueCell!5021)) (size!12446 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25295)

(declare-fun e!248435 () Bool)

(declare-fun array_inv!8820 (array!25295) Bool)

(assert (=> start!39318 (and (array_inv!8820 _values!549) e!248435)))

(declare-fun array_inv!8821 (array!25293) Bool)

(assert (=> start!39318 (array_inv!8821 _keys!709)))

(declare-datatypes ((tuple2!6978 0))(
  ( (tuple2!6979 (_1!3499 (_ BitVec 64)) (_2!3499 V!15411)) )
))
(declare-datatypes ((List!7033 0))(
  ( (Nil!7030) (Cons!7029 (h!7885 tuple2!6978) (t!12283 List!7033)) )
))
(declare-datatypes ((ListLongMap!5905 0))(
  ( (ListLongMap!5906 (toList!2968 List!7033)) )
))
(declare-fun call!28906 () ListLongMap!5905)

(declare-fun e!248432 () Bool)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!15411)

(declare-fun call!28907 () ListLongMap!5905)

(declare-fun b!416114 () Bool)

(declare-fun +!1180 (ListLongMap!5905 tuple2!6978) ListLongMap!5905)

(assert (=> b!416114 (= e!248432 (= call!28906 (+!1180 call!28907 (tuple2!6979 k!794 v!412))))))

(declare-fun b!416115 () Bool)

(declare-fun res!242265 () Bool)

(assert (=> b!416115 (=> (not res!242265) (not e!248433))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!416115 (= res!242265 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12445 _keys!709))))))

(declare-fun b!416116 () Bool)

(declare-fun res!242262 () Bool)

(declare-fun e!248437 () Bool)

(assert (=> b!416116 (=> (not res!242262) (not e!248437))))

(assert (=> b!416116 (= res!242262 (bvsle from!863 i!563))))

(declare-fun b!416117 () Bool)

(declare-fun e!248440 () Bool)

(assert (=> b!416117 (= e!248440 true)))

(declare-fun lt!190563 () V!15411)

(declare-fun lt!190564 () tuple2!6978)

(declare-fun lt!190559 () ListLongMap!5905)

(assert (=> b!416117 (= (+!1180 lt!190559 lt!190564) (+!1180 (+!1180 lt!190559 (tuple2!6979 k!794 lt!190563)) lt!190564))))

(declare-fun lt!190562 () V!15411)

(assert (=> b!416117 (= lt!190564 (tuple2!6979 k!794 lt!190562))))

(declare-datatypes ((Unit!12259 0))(
  ( (Unit!12260) )
))
(declare-fun lt!190558 () Unit!12259)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!4 (ListLongMap!5905 (_ BitVec 64) V!15411 V!15411) Unit!12259)

(assert (=> b!416117 (= lt!190558 (addSameAsAddTwiceSameKeyDiffValues!4 lt!190559 k!794 lt!190563 lt!190562))))

(declare-fun lt!190565 () V!15411)

(declare-fun get!5979 (ValueCell!5021 V!15411) V!15411)

(assert (=> b!416117 (= lt!190563 (get!5979 (select (arr!12094 _values!549) from!863) lt!190565))))

(declare-fun lt!190560 () ListLongMap!5905)

(declare-fun lt!190557 () array!25293)

(assert (=> b!416117 (= lt!190560 (+!1180 lt!190559 (tuple2!6979 (select (arr!12093 lt!190557) from!863) lt!190562)))))

(assert (=> b!416117 (= lt!190562 (get!5979 (select (store (arr!12094 _values!549) i!563 (ValueCellFull!5021 v!412)) from!863) lt!190565))))

(declare-fun defaultEntry!557 () Int)

(declare-fun dynLambda!666 (Int (_ BitVec 64)) V!15411)

(assert (=> b!416117 (= lt!190565 (dynLambda!666 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun minValue!515 () V!15411)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!190561 () array!25295)

(declare-fun zeroValue!515 () V!15411)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1172 (array!25293 array!25295 (_ BitVec 32) (_ BitVec 32) V!15411 V!15411 (_ BitVec 32) Int) ListLongMap!5905)

(assert (=> b!416117 (= lt!190559 (getCurrentListMapNoExtraKeys!1172 lt!190557 lt!190561 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!28903 () Bool)

(assert (=> bm!28903 (= call!28907 (getCurrentListMapNoExtraKeys!1172 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416118 () Bool)

(declare-fun res!242256 () Bool)

(assert (=> b!416118 (=> (not res!242256) (not e!248433))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!416118 (= res!242256 (validKeyInArray!0 k!794))))

(declare-fun mapIsEmpty!17715 () Bool)

(declare-fun mapRes!17715 () Bool)

(assert (=> mapIsEmpty!17715 mapRes!17715))

(declare-fun b!416119 () Bool)

(declare-fun res!242260 () Bool)

(assert (=> b!416119 (=> (not res!242260) (not e!248433))))

(declare-datatypes ((List!7034 0))(
  ( (Nil!7031) (Cons!7030 (h!7886 (_ BitVec 64)) (t!12284 List!7034)) )
))
(declare-fun arrayNoDuplicates!0 (array!25293 (_ BitVec 32) List!7034) Bool)

(assert (=> b!416119 (= res!242260 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7031))))

(declare-fun b!416120 () Bool)

(assert (=> b!416120 (= e!248433 e!248437)))

(declare-fun res!242266 () Bool)

(assert (=> b!416120 (=> (not res!242266) (not e!248437))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25293 (_ BitVec 32)) Bool)

(assert (=> b!416120 (= res!242266 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!190557 mask!1025))))

(assert (=> b!416120 (= lt!190557 (array!25294 (store (arr!12093 _keys!709) i!563 k!794) (size!12445 _keys!709)))))

(declare-fun b!416121 () Bool)

(declare-fun res!242268 () Bool)

(assert (=> b!416121 (=> (not res!242268) (not e!248433))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!416121 (= res!242268 (validMask!0 mask!1025))))

(declare-fun b!416122 () Bool)

(declare-fun res!242257 () Bool)

(assert (=> b!416122 (=> (not res!242257) (not e!248437))))

(assert (=> b!416122 (= res!242257 (arrayNoDuplicates!0 lt!190557 #b00000000000000000000000000000000 Nil!7031))))

(declare-fun mapNonEmpty!17715 () Bool)

(declare-fun tp!34259 () Bool)

(declare-fun e!248439 () Bool)

(assert (=> mapNonEmpty!17715 (= mapRes!17715 (and tp!34259 e!248439))))

(declare-fun mapValue!17715 () ValueCell!5021)

(declare-fun mapRest!17715 () (Array (_ BitVec 32) ValueCell!5021))

(declare-fun mapKey!17715 () (_ BitVec 32))

(assert (=> mapNonEmpty!17715 (= (arr!12094 _values!549) (store mapRest!17715 mapKey!17715 mapValue!17715))))

(declare-fun b!416123 () Bool)

(assert (=> b!416123 (= e!248432 (= call!28906 call!28907))))

(declare-fun b!416124 () Bool)

(declare-fun res!242264 () Bool)

(assert (=> b!416124 (=> (not res!242264) (not e!248433))))

(declare-fun arrayContainsKey!0 (array!25293 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!416124 (= res!242264 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!416125 () Bool)

(declare-fun e!248438 () Bool)

(assert (=> b!416125 (= e!248437 e!248438)))

(declare-fun res!242261 () Bool)

(assert (=> b!416125 (=> (not res!242261) (not e!248438))))

(assert (=> b!416125 (= res!242261 (= from!863 i!563))))

(assert (=> b!416125 (= lt!190560 (getCurrentListMapNoExtraKeys!1172 lt!190557 lt!190561 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!416125 (= lt!190561 (array!25296 (store (arr!12094 _values!549) i!563 (ValueCellFull!5021 v!412)) (size!12446 _values!549)))))

(declare-fun lt!190566 () ListLongMap!5905)

(assert (=> b!416125 (= lt!190566 (getCurrentListMapNoExtraKeys!1172 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!416126 () Bool)

(assert (=> b!416126 (= e!248438 (not e!248440))))

(declare-fun res!242263 () Bool)

(assert (=> b!416126 (=> res!242263 e!248440)))

(assert (=> b!416126 (= res!242263 (validKeyInArray!0 (select (arr!12093 _keys!709) from!863)))))

(assert (=> b!416126 e!248432))

(declare-fun c!55004 () Bool)

(assert (=> b!416126 (= c!55004 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!190556 () Unit!12259)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!392 (array!25293 array!25295 (_ BitVec 32) (_ BitVec 32) V!15411 V!15411 (_ BitVec 32) (_ BitVec 64) V!15411 (_ BitVec 32) Int) Unit!12259)

(assert (=> b!416126 (= lt!190556 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!392 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416127 () Bool)

(declare-fun res!242267 () Bool)

(assert (=> b!416127 (=> (not res!242267) (not e!248433))))

(assert (=> b!416127 (= res!242267 (and (= (size!12446 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12445 _keys!709) (size!12446 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun bm!28904 () Bool)

(assert (=> bm!28904 (= call!28906 (getCurrentListMapNoExtraKeys!1172 lt!190557 lt!190561 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416128 () Bool)

(declare-fun res!242258 () Bool)

(assert (=> b!416128 (=> (not res!242258) (not e!248433))))

(assert (=> b!416128 (= res!242258 (or (= (select (arr!12093 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12093 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!416129 () Bool)

(assert (=> b!416129 (= e!248439 tp_is_empty!10729)))

(declare-fun b!416130 () Bool)

(declare-fun e!248436 () Bool)

(assert (=> b!416130 (= e!248435 (and e!248436 mapRes!17715))))

(declare-fun condMapEmpty!17715 () Bool)

(declare-fun mapDefault!17715 () ValueCell!5021)

