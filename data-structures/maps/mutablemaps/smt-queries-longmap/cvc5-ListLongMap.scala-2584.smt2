; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39330 () Bool)

(assert start!39330)

(declare-fun b_free!9589 () Bool)

(declare-fun b_next!9589 () Bool)

(assert (=> start!39330 (= b_free!9589 (not b_next!9589))))

(declare-fun tp!34295 () Bool)

(declare-fun b_and!17071 () Bool)

(assert (=> start!39330 (= tp!34295 b_and!17071)))

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((V!15427 0))(
  ( (V!15428 (val!5415 Int)) )
))
(declare-datatypes ((tuple2!6990 0))(
  ( (tuple2!6991 (_1!3505 (_ BitVec 64)) (_2!3505 V!15427)) )
))
(declare-datatypes ((List!7043 0))(
  ( (Nil!7040) (Cons!7039 (h!7895 tuple2!6990) (t!12305 List!7043)) )
))
(declare-datatypes ((ListLongMap!5917 0))(
  ( (ListLongMap!5918 (toList!2974 List!7043)) )
))
(declare-fun call!28942 () ListLongMap!5917)

(declare-fun call!28943 () ListLongMap!5917)

(declare-fun e!248597 () Bool)

(declare-fun b!416468 () Bool)

(declare-fun v!412 () V!15427)

(declare-fun +!1186 (ListLongMap!5917 tuple2!6990) ListLongMap!5917)

(assert (=> b!416468 (= e!248597 (= call!28942 (+!1186 call!28943 (tuple2!6991 k!794 v!412))))))

(declare-fun b!416469 () Bool)

(declare-fun res!242507 () Bool)

(declare-fun e!248596 () Bool)

(assert (=> b!416469 (=> (not res!242507) (not e!248596))))

(declare-datatypes ((array!25317 0))(
  ( (array!25318 (arr!12105 (Array (_ BitVec 32) (_ BitVec 64))) (size!12457 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25317)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!416469 (= res!242507 (or (= (select (arr!12105 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12105 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!416470 () Bool)

(declare-fun res!242516 () Bool)

(assert (=> b!416470 (=> (not res!242516) (not e!248596))))

(assert (=> b!416470 (= res!242516 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12457 _keys!709))))))

(declare-fun b!416471 () Bool)

(declare-fun res!242515 () Bool)

(assert (=> b!416471 (=> (not res!242515) (not e!248596))))

(declare-datatypes ((List!7044 0))(
  ( (Nil!7041) (Cons!7040 (h!7896 (_ BitVec 64)) (t!12306 List!7044)) )
))
(declare-fun arrayNoDuplicates!0 (array!25317 (_ BitVec 32) List!7044) Bool)

(assert (=> b!416471 (= res!242515 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7041))))

(declare-fun b!416472 () Bool)

(declare-fun e!248595 () Bool)

(declare-fun e!248598 () Bool)

(assert (=> b!416472 (= e!248595 (not e!248598))))

(declare-fun res!242518 () Bool)

(assert (=> b!416472 (=> res!242518 e!248598)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!416472 (= res!242518 (validKeyInArray!0 (select (arr!12105 _keys!709) from!863)))))

(assert (=> b!416472 e!248597))

(declare-fun c!55022 () Bool)

(assert (=> b!416472 (= c!55022 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun minValue!515 () V!15427)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5027 0))(
  ( (ValueCellFull!5027 (v!7658 V!15427)) (EmptyCell!5027) )
))
(declare-datatypes ((array!25319 0))(
  ( (array!25320 (arr!12106 (Array (_ BitVec 32) ValueCell!5027)) (size!12458 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25319)

(declare-fun zeroValue!515 () V!15427)

(declare-datatypes ((Unit!12271 0))(
  ( (Unit!12272) )
))
(declare-fun lt!190755 () Unit!12271)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!397 (array!25317 array!25319 (_ BitVec 32) (_ BitVec 32) V!15427 V!15427 (_ BitVec 32) (_ BitVec 64) V!15427 (_ BitVec 32) Int) Unit!12271)

(assert (=> b!416472 (= lt!190755 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!397 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416473 () Bool)

(declare-fun e!248602 () Bool)

(declare-fun tp_is_empty!10741 () Bool)

(assert (=> b!416473 (= e!248602 tp_is_empty!10741)))

(declare-fun b!416474 () Bool)

(declare-fun e!248599 () Bool)

(assert (=> b!416474 (= e!248599 tp_is_empty!10741)))

(declare-fun mapNonEmpty!17733 () Bool)

(declare-fun mapRes!17733 () Bool)

(declare-fun tp!34296 () Bool)

(assert (=> mapNonEmpty!17733 (= mapRes!17733 (and tp!34296 e!248599))))

(declare-fun mapKey!17733 () (_ BitVec 32))

(declare-fun mapRest!17733 () (Array (_ BitVec 32) ValueCell!5027))

(declare-fun mapValue!17733 () ValueCell!5027)

(assert (=> mapNonEmpty!17733 (= (arr!12106 _values!549) (store mapRest!17733 mapKey!17733 mapValue!17733))))

(declare-fun b!416475 () Bool)

(declare-fun res!242519 () Bool)

(assert (=> b!416475 (=> (not res!242519) (not e!248596))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!416475 (= res!242519 (validMask!0 mask!1025))))

(declare-fun b!416476 () Bool)

(declare-fun e!248600 () Bool)

(assert (=> b!416476 (= e!248600 e!248595)))

(declare-fun res!242512 () Bool)

(assert (=> b!416476 (=> (not res!242512) (not e!248595))))

(assert (=> b!416476 (= res!242512 (= from!863 i!563))))

(declare-fun lt!190764 () ListLongMap!5917)

(declare-fun lt!190763 () array!25319)

(declare-fun lt!190760 () array!25317)

(declare-fun getCurrentListMapNoExtraKeys!1177 (array!25317 array!25319 (_ BitVec 32) (_ BitVec 32) V!15427 V!15427 (_ BitVec 32) Int) ListLongMap!5917)

(assert (=> b!416476 (= lt!190764 (getCurrentListMapNoExtraKeys!1177 lt!190760 lt!190763 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!416476 (= lt!190763 (array!25320 (store (arr!12106 _values!549) i!563 (ValueCellFull!5027 v!412)) (size!12458 _values!549)))))

(declare-fun lt!190757 () ListLongMap!5917)

(assert (=> b!416476 (= lt!190757 (getCurrentListMapNoExtraKeys!1177 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!416477 () Bool)

(assert (=> b!416477 (= e!248598 true)))

(declare-fun lt!190759 () tuple2!6990)

(declare-fun lt!190754 () ListLongMap!5917)

(declare-fun lt!190756 () V!15427)

(assert (=> b!416477 (= (+!1186 lt!190754 lt!190759) (+!1186 (+!1186 lt!190754 (tuple2!6991 k!794 lt!190756)) lt!190759))))

(declare-fun lt!190761 () V!15427)

(assert (=> b!416477 (= lt!190759 (tuple2!6991 k!794 lt!190761))))

(declare-fun lt!190762 () Unit!12271)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!9 (ListLongMap!5917 (_ BitVec 64) V!15427 V!15427) Unit!12271)

(assert (=> b!416477 (= lt!190762 (addSameAsAddTwiceSameKeyDiffValues!9 lt!190754 k!794 lt!190756 lt!190761))))

(declare-fun lt!190758 () V!15427)

(declare-fun get!5988 (ValueCell!5027 V!15427) V!15427)

(assert (=> b!416477 (= lt!190756 (get!5988 (select (arr!12106 _values!549) from!863) lt!190758))))

(assert (=> b!416477 (= lt!190764 (+!1186 lt!190754 (tuple2!6991 (select (arr!12105 lt!190760) from!863) lt!190761)))))

(assert (=> b!416477 (= lt!190761 (get!5988 (select (store (arr!12106 _values!549) i!563 (ValueCellFull!5027 v!412)) from!863) lt!190758))))

(declare-fun dynLambda!671 (Int (_ BitVec 64)) V!15427)

(assert (=> b!416477 (= lt!190758 (dynLambda!671 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!416477 (= lt!190754 (getCurrentListMapNoExtraKeys!1177 lt!190760 lt!190763 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416478 () Bool)

(assert (=> b!416478 (= e!248596 e!248600)))

(declare-fun res!242517 () Bool)

(assert (=> b!416478 (=> (not res!242517) (not e!248600))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25317 (_ BitVec 32)) Bool)

(assert (=> b!416478 (= res!242517 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!190760 mask!1025))))

(assert (=> b!416478 (= lt!190760 (array!25318 (store (arr!12105 _keys!709) i!563 k!794) (size!12457 _keys!709)))))

(declare-fun b!416479 () Bool)

(assert (=> b!416479 (= e!248597 (= call!28943 call!28942))))

(declare-fun b!416480 () Bool)

(declare-fun e!248594 () Bool)

(assert (=> b!416480 (= e!248594 (and e!248602 mapRes!17733))))

(declare-fun condMapEmpty!17733 () Bool)

(declare-fun mapDefault!17733 () ValueCell!5027)

