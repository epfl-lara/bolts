; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39388 () Bool)

(assert start!39388)

(declare-fun b_free!9647 () Bool)

(declare-fun b_next!9647 () Bool)

(assert (=> start!39388 (= b_free!9647 (not b_next!9647))))

(declare-fun tp!34470 () Bool)

(declare-fun b_and!17187 () Bool)

(assert (=> start!39388 (= tp!34470 b_and!17187)))

(declare-fun b!418179 () Bool)

(declare-fun e!249381 () Bool)

(assert (=> b!418179 (= e!249381 true)))

(declare-datatypes ((V!15503 0))(
  ( (V!15504 (val!5444 Int)) )
))
(declare-datatypes ((tuple2!7046 0))(
  ( (tuple2!7047 (_1!3533 (_ BitVec 64)) (_2!3533 V!15503)) )
))
(declare-fun lt!191715 () tuple2!7046)

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((List!7097 0))(
  ( (Nil!7094) (Cons!7093 (h!7949 tuple2!7046) (t!12417 List!7097)) )
))
(declare-datatypes ((ListLongMap!5973 0))(
  ( (ListLongMap!5974 (toList!3002 List!7097)) )
))
(declare-fun lt!191716 () ListLongMap!5973)

(declare-fun lt!191718 () V!15503)

(declare-fun +!1211 (ListLongMap!5973 tuple2!7046) ListLongMap!5973)

(assert (=> b!418179 (= (+!1211 lt!191716 lt!191715) (+!1211 (+!1211 lt!191716 (tuple2!7047 k!794 lt!191718)) lt!191715))))

(declare-fun lt!191720 () V!15503)

(assert (=> b!418179 (= lt!191715 (tuple2!7047 k!794 lt!191720))))

(declare-datatypes ((Unit!12323 0))(
  ( (Unit!12324) )
))
(declare-fun lt!191721 () Unit!12323)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!34 (ListLongMap!5973 (_ BitVec 64) V!15503 V!15503) Unit!12323)

(assert (=> b!418179 (= lt!191721 (addSameAsAddTwiceSameKeyDiffValues!34 lt!191716 k!794 lt!191718 lt!191720))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5056 0))(
  ( (ValueCellFull!5056 (v!7687 V!15503)) (EmptyCell!5056) )
))
(declare-datatypes ((array!25433 0))(
  ( (array!25434 (arr!12163 (Array (_ BitVec 32) ValueCell!5056)) (size!12515 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25433)

(declare-fun lt!191714 () V!15503)

(declare-fun get!6031 (ValueCell!5056 V!15503) V!15503)

(assert (=> b!418179 (= lt!191718 (get!6031 (select (arr!12163 _values!549) from!863) lt!191714))))

(declare-datatypes ((array!25435 0))(
  ( (array!25436 (arr!12164 (Array (_ BitVec 32) (_ BitVec 64))) (size!12516 (_ BitVec 32))) )
))
(declare-fun lt!191719 () array!25435)

(declare-fun lt!191713 () ListLongMap!5973)

(assert (=> b!418179 (= lt!191713 (+!1211 lt!191716 (tuple2!7047 (select (arr!12164 lt!191719) from!863) lt!191720)))))

(declare-fun v!412 () V!15503)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!418179 (= lt!191720 (get!6031 (select (store (arr!12163 _values!549) i!563 (ValueCellFull!5056 v!412)) from!863) lt!191714))))

(declare-fun defaultEntry!557 () Int)

(declare-fun dynLambda!696 (Int (_ BitVec 64)) V!15503)

(assert (=> b!418179 (= lt!191714 (dynLambda!696 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun minValue!515 () V!15503)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15503)

(declare-fun lt!191717 () array!25433)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1205 (array!25435 array!25433 (_ BitVec 32) (_ BitVec 32) V!15503 V!15503 (_ BitVec 32) Int) ListLongMap!5973)

(assert (=> b!418179 (= lt!191716 (getCurrentListMapNoExtraKeys!1205 lt!191719 lt!191717 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!418180 () Bool)

(declare-fun res!243734 () Bool)

(declare-fun e!249384 () Bool)

(assert (=> b!418180 (=> (not res!243734) (not e!249384))))

(assert (=> b!418180 (= res!243734 (bvsle from!863 i!563))))

(declare-fun b!418181 () Bool)

(declare-fun res!243725 () Bool)

(declare-fun e!249382 () Bool)

(assert (=> b!418181 (=> (not res!243725) (not e!249382))))

(declare-fun _keys!709 () array!25435)

(declare-datatypes ((List!7098 0))(
  ( (Nil!7095) (Cons!7094 (h!7950 (_ BitVec 64)) (t!12418 List!7098)) )
))
(declare-fun arrayNoDuplicates!0 (array!25435 (_ BitVec 32) List!7098) Bool)

(assert (=> b!418181 (= res!243725 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7095))))

(declare-fun b!418182 () Bool)

(declare-fun res!243735 () Bool)

(assert (=> b!418182 (=> (not res!243735) (not e!249382))))

(assert (=> b!418182 (= res!243735 (or (= (select (arr!12164 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12164 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!418183 () Bool)

(declare-fun res!243726 () Bool)

(assert (=> b!418183 (=> (not res!243726) (not e!249382))))

(declare-fun arrayContainsKey!0 (array!25435 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!418183 (= res!243726 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!418184 () Bool)

(assert (=> b!418184 (= e!249382 e!249384)))

(declare-fun res!243737 () Bool)

(assert (=> b!418184 (=> (not res!243737) (not e!249384))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25435 (_ BitVec 32)) Bool)

(assert (=> b!418184 (= res!243737 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!191719 mask!1025))))

(assert (=> b!418184 (= lt!191719 (array!25436 (store (arr!12164 _keys!709) i!563 k!794) (size!12516 _keys!709)))))

(declare-fun c!55109 () Bool)

(declare-fun bm!29113 () Bool)

(declare-fun call!29117 () ListLongMap!5973)

(assert (=> bm!29113 (= call!29117 (getCurrentListMapNoExtraKeys!1205 (ite c!55109 _keys!709 lt!191719) (ite c!55109 _values!549 lt!191717) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!418185 () Bool)

(declare-fun res!243730 () Bool)

(assert (=> b!418185 (=> (not res!243730) (not e!249382))))

(assert (=> b!418185 (= res!243730 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!418186 () Bool)

(declare-fun e!249385 () Bool)

(declare-fun call!29116 () ListLongMap!5973)

(assert (=> b!418186 (= e!249385 (= call!29116 (+!1211 call!29117 (tuple2!7047 k!794 v!412))))))

(declare-fun mapNonEmpty!17820 () Bool)

(declare-fun mapRes!17820 () Bool)

(declare-fun tp!34469 () Bool)

(declare-fun e!249377 () Bool)

(assert (=> mapNonEmpty!17820 (= mapRes!17820 (and tp!34469 e!249377))))

(declare-fun mapValue!17820 () ValueCell!5056)

(declare-fun mapKey!17820 () (_ BitVec 32))

(declare-fun mapRest!17820 () (Array (_ BitVec 32) ValueCell!5056))

(assert (=> mapNonEmpty!17820 (= (arr!12163 _values!549) (store mapRest!17820 mapKey!17820 mapValue!17820))))

(declare-fun b!418187 () Bool)

(declare-fun res!243738 () Bool)

(assert (=> b!418187 (=> (not res!243738) (not e!249382))))

(assert (=> b!418187 (= res!243738 (and (= (size!12515 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12516 _keys!709) (size!12515 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!17820 () Bool)

(assert (=> mapIsEmpty!17820 mapRes!17820))

(declare-fun b!418188 () Bool)

(declare-fun e!249378 () Bool)

(assert (=> b!418188 (= e!249378 (not e!249381))))

(declare-fun res!243736 () Bool)

(assert (=> b!418188 (=> res!243736 e!249381)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!418188 (= res!243736 (validKeyInArray!0 (select (arr!12164 _keys!709) from!863)))))

(assert (=> b!418188 e!249385))

(assert (=> b!418188 (= c!55109 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!191712 () Unit!12323)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!419 (array!25435 array!25433 (_ BitVec 32) (_ BitVec 32) V!15503 V!15503 (_ BitVec 32) (_ BitVec 64) V!15503 (_ BitVec 32) Int) Unit!12323)

(assert (=> b!418188 (= lt!191712 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!419 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!418189 () Bool)

(declare-fun res!243729 () Bool)

(assert (=> b!418189 (=> (not res!243729) (not e!249384))))

(assert (=> b!418189 (= res!243729 (arrayNoDuplicates!0 lt!191719 #b00000000000000000000000000000000 Nil!7095))))

(declare-fun b!418190 () Bool)

(declare-fun e!249379 () Bool)

(declare-fun tp_is_empty!10799 () Bool)

(assert (=> b!418190 (= e!249379 tp_is_empty!10799)))

(declare-fun bm!29114 () Bool)

(assert (=> bm!29114 (= call!29116 (getCurrentListMapNoExtraKeys!1205 (ite c!55109 lt!191719 _keys!709) (ite c!55109 lt!191717 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!418191 () Bool)

(declare-fun res!243732 () Bool)

(assert (=> b!418191 (=> (not res!243732) (not e!249382))))

(assert (=> b!418191 (= res!243732 (validKeyInArray!0 k!794))))

(declare-fun b!418192 () Bool)

(declare-fun res!243733 () Bool)

(assert (=> b!418192 (=> (not res!243733) (not e!249382))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!418192 (= res!243733 (validMask!0 mask!1025))))

(declare-fun b!418193 () Bool)

(assert (=> b!418193 (= e!249385 (= call!29117 call!29116))))

(declare-fun b!418194 () Bool)

(assert (=> b!418194 (= e!249377 tp_is_empty!10799)))

(declare-fun b!418195 () Bool)

(assert (=> b!418195 (= e!249384 e!249378)))

(declare-fun res!243727 () Bool)

(assert (=> b!418195 (=> (not res!243727) (not e!249378))))

(assert (=> b!418195 (= res!243727 (= from!863 i!563))))

(assert (=> b!418195 (= lt!191713 (getCurrentListMapNoExtraKeys!1205 lt!191719 lt!191717 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!418195 (= lt!191717 (array!25434 (store (arr!12163 _values!549) i!563 (ValueCellFull!5056 v!412)) (size!12515 _values!549)))))

(declare-fun lt!191711 () ListLongMap!5973)

(assert (=> b!418195 (= lt!191711 (getCurrentListMapNoExtraKeys!1205 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!418197 () Bool)

(declare-fun e!249383 () Bool)

(assert (=> b!418197 (= e!249383 (and e!249379 mapRes!17820))))

(declare-fun condMapEmpty!17820 () Bool)

(declare-fun mapDefault!17820 () ValueCell!5056)

