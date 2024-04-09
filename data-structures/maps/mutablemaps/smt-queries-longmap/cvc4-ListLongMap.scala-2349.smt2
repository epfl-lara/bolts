; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37568 () Bool)

(assert start!37568)

(declare-fun b_free!8687 () Bool)

(declare-fun b_next!8687 () Bool)

(assert (=> start!37568 (= b_free!8687 (not b_next!8687))))

(declare-fun tp!30776 () Bool)

(declare-fun b_and!15947 () Bool)

(assert (=> start!37568 (= tp!30776 b_and!15947)))

(declare-fun mapIsEmpty!15567 () Bool)

(declare-fun mapRes!15567 () Bool)

(assert (=> mapIsEmpty!15567 mapRes!15567))

(declare-fun b!383509 () Bool)

(declare-fun res!218483 () Bool)

(declare-fun e!232926 () Bool)

(assert (=> b!383509 (=> (not res!218483) (not e!232926))))

(declare-datatypes ((array!22561 0))(
  ( (array!22562 (arr!10746 (Array (_ BitVec 32) (_ BitVec 64))) (size!11098 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22561)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22561 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!383509 (= res!218483 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!383510 () Bool)

(declare-fun e!232932 () Bool)

(declare-fun e!232930 () Bool)

(assert (=> b!383510 (= e!232932 (not e!232930))))

(declare-fun res!218482 () Bool)

(assert (=> b!383510 (=> res!218482 e!232930)))

(declare-fun lt!180285 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!383510 (= res!218482 (or (and (not lt!180285) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!180285) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!180285)))))

(assert (=> b!383510 (= lt!180285 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-datatypes ((V!13551 0))(
  ( (V!13552 (val!4712 Int)) )
))
(declare-datatypes ((tuple2!6296 0))(
  ( (tuple2!6297 (_1!3158 (_ BitVec 64)) (_2!3158 V!13551)) )
))
(declare-datatypes ((List!6164 0))(
  ( (Nil!6161) (Cons!6160 (h!7016 tuple2!6296) (t!11322 List!6164)) )
))
(declare-datatypes ((ListLongMap!5223 0))(
  ( (ListLongMap!5224 (toList!2627 List!6164)) )
))
(declare-fun lt!180295 () ListLongMap!5223)

(declare-datatypes ((ValueCell!4324 0))(
  ( (ValueCellFull!4324 (v!6905 V!13551)) (EmptyCell!4324) )
))
(declare-datatypes ((array!22563 0))(
  ( (array!22564 (arr!10747 (Array (_ BitVec 32) ValueCell!4324)) (size!11099 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22563)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13551)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13551)

(declare-fun getCurrentListMap!2044 (array!22561 array!22563 (_ BitVec 32) (_ BitVec 32) V!13551 V!13551 (_ BitVec 32) Int) ListLongMap!5223)

(assert (=> b!383510 (= lt!180295 (getCurrentListMap!2044 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180290 () array!22561)

(declare-fun lt!180286 () array!22563)

(declare-fun lt!180294 () ListLongMap!5223)

(assert (=> b!383510 (= lt!180294 (getCurrentListMap!2044 lt!180290 lt!180286 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180287 () ListLongMap!5223)

(declare-fun lt!180289 () ListLongMap!5223)

(assert (=> b!383510 (and (= lt!180287 lt!180289) (= lt!180289 lt!180287))))

(declare-fun lt!180293 () ListLongMap!5223)

(declare-fun lt!180288 () tuple2!6296)

(declare-fun +!963 (ListLongMap!5223 tuple2!6296) ListLongMap!5223)

(assert (=> b!383510 (= lt!180289 (+!963 lt!180293 lt!180288))))

(declare-fun v!373 () V!13551)

(assert (=> b!383510 (= lt!180288 (tuple2!6297 k!778 v!373))))

(declare-datatypes ((Unit!11817 0))(
  ( (Unit!11818) )
))
(declare-fun lt!180292 () Unit!11817)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!195 (array!22561 array!22563 (_ BitVec 32) (_ BitVec 32) V!13551 V!13551 (_ BitVec 32) (_ BitVec 64) V!13551 (_ BitVec 32) Int) Unit!11817)

(assert (=> b!383510 (= lt!180292 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!195 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!862 (array!22561 array!22563 (_ BitVec 32) (_ BitVec 32) V!13551 V!13551 (_ BitVec 32) Int) ListLongMap!5223)

(assert (=> b!383510 (= lt!180287 (getCurrentListMapNoExtraKeys!862 lt!180290 lt!180286 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!383510 (= lt!180286 (array!22564 (store (arr!10747 _values!506) i!548 (ValueCellFull!4324 v!373)) (size!11099 _values!506)))))

(assert (=> b!383510 (= lt!180293 (getCurrentListMapNoExtraKeys!862 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun res!218476 () Bool)

(assert (=> start!37568 (=> (not res!218476) (not e!232926))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37568 (= res!218476 (validMask!0 mask!970))))

(assert (=> start!37568 e!232926))

(declare-fun e!232928 () Bool)

(declare-fun array_inv!7894 (array!22563) Bool)

(assert (=> start!37568 (and (array_inv!7894 _values!506) e!232928)))

(assert (=> start!37568 tp!30776))

(assert (=> start!37568 true))

(declare-fun tp_is_empty!9335 () Bool)

(assert (=> start!37568 tp_is_empty!9335))

(declare-fun array_inv!7895 (array!22561) Bool)

(assert (=> start!37568 (array_inv!7895 _keys!658)))

(declare-fun b!383511 () Bool)

(declare-fun res!218477 () Bool)

(assert (=> b!383511 (=> (not res!218477) (not e!232926))))

(assert (=> b!383511 (= res!218477 (and (= (size!11099 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11098 _keys!658) (size!11099 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!15567 () Bool)

(declare-fun tp!30777 () Bool)

(declare-fun e!232927 () Bool)

(assert (=> mapNonEmpty!15567 (= mapRes!15567 (and tp!30777 e!232927))))

(declare-fun mapKey!15567 () (_ BitVec 32))

(declare-fun mapValue!15567 () ValueCell!4324)

(declare-fun mapRest!15567 () (Array (_ BitVec 32) ValueCell!4324))

(assert (=> mapNonEmpty!15567 (= (arr!10747 _values!506) (store mapRest!15567 mapKey!15567 mapValue!15567))))

(declare-fun b!383512 () Bool)

(declare-fun res!218481 () Bool)

(assert (=> b!383512 (=> (not res!218481) (not e!232926))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22561 (_ BitVec 32)) Bool)

(assert (=> b!383512 (= res!218481 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!383513 () Bool)

(declare-fun res!218480 () Bool)

(assert (=> b!383513 (=> (not res!218480) (not e!232926))))

(assert (=> b!383513 (= res!218480 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11098 _keys!658))))))

(declare-fun b!383514 () Bool)

(assert (=> b!383514 (= e!232927 tp_is_empty!9335)))

(declare-fun b!383515 () Bool)

(assert (=> b!383515 (= e!232930 true)))

(declare-fun lt!180291 () ListLongMap!5223)

(assert (=> b!383515 (= lt!180291 (+!963 lt!180295 lt!180288))))

(assert (=> b!383515 (= lt!180294 lt!180287)))

(declare-fun b!383516 () Bool)

(declare-fun e!232929 () Bool)

(assert (=> b!383516 (= e!232929 tp_is_empty!9335)))

(declare-fun b!383517 () Bool)

(declare-fun res!218478 () Bool)

(assert (=> b!383517 (=> (not res!218478) (not e!232926))))

(assert (=> b!383517 (= res!218478 (or (= (select (arr!10746 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10746 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!383518 () Bool)

(declare-fun res!218475 () Bool)

(assert (=> b!383518 (=> (not res!218475) (not e!232932))))

(declare-datatypes ((List!6165 0))(
  ( (Nil!6162) (Cons!6161 (h!7017 (_ BitVec 64)) (t!11323 List!6165)) )
))
(declare-fun arrayNoDuplicates!0 (array!22561 (_ BitVec 32) List!6165) Bool)

(assert (=> b!383518 (= res!218475 (arrayNoDuplicates!0 lt!180290 #b00000000000000000000000000000000 Nil!6162))))

(declare-fun b!383519 () Bool)

(declare-fun res!218474 () Bool)

(assert (=> b!383519 (=> (not res!218474) (not e!232926))))

(assert (=> b!383519 (= res!218474 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6162))))

(declare-fun b!383520 () Bool)

(assert (=> b!383520 (= e!232928 (and e!232929 mapRes!15567))))

(declare-fun condMapEmpty!15567 () Bool)

(declare-fun mapDefault!15567 () ValueCell!4324)

