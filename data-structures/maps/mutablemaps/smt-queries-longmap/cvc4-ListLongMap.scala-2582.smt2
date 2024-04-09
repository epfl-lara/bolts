; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39322 () Bool)

(assert start!39322)

(declare-fun b_free!9581 () Bool)

(declare-fun b_next!9581 () Bool)

(assert (=> start!39322 (= b_free!9581 (not b_next!9581))))

(declare-fun tp!34272 () Bool)

(declare-fun b_and!17055 () Bool)

(assert (=> start!39322 (= tp!34272 b_and!17055)))

(declare-fun b!416233 () Bool)

(declare-fun res!242347 () Bool)

(declare-fun e!248491 () Bool)

(assert (=> b!416233 (=> (not res!242347) (not e!248491))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!25301 0))(
  ( (array!25302 (arr!12097 (Array (_ BitVec 32) (_ BitVec 64))) (size!12449 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25301)

(assert (=> b!416233 (= res!242347 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12449 _keys!709))))))

(declare-datatypes ((V!15415 0))(
  ( (V!15416 (val!5411 Int)) )
))
(declare-fun minValue!515 () V!15415)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun c!55010 () Bool)

(declare-fun lt!190623 () array!25301)

(declare-datatypes ((ValueCell!5023 0))(
  ( (ValueCellFull!5023 (v!7654 V!15415)) (EmptyCell!5023) )
))
(declare-datatypes ((array!25303 0))(
  ( (array!25304 (arr!12098 (Array (_ BitVec 32) ValueCell!5023)) (size!12450 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25303)

(declare-datatypes ((tuple2!6982 0))(
  ( (tuple2!6983 (_1!3501 (_ BitVec 64)) (_2!3501 V!15415)) )
))
(declare-datatypes ((List!7037 0))(
  ( (Nil!7034) (Cons!7033 (h!7889 tuple2!6982) (t!12291 List!7037)) )
))
(declare-datatypes ((ListLongMap!5909 0))(
  ( (ListLongMap!5910 (toList!2970 List!7037)) )
))
(declare-fun call!28918 () ListLongMap!5909)

(declare-fun zeroValue!515 () V!15415)

(declare-fun lt!190629 () array!25303)

(declare-fun bm!28915 () Bool)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1174 (array!25301 array!25303 (_ BitVec 32) (_ BitVec 32) V!15415 V!15415 (_ BitVec 32) Int) ListLongMap!5909)

(assert (=> bm!28915 (= call!28918 (getCurrentListMapNoExtraKeys!1174 (ite c!55010 lt!190623 _keys!709) (ite c!55010 lt!190629 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416234 () Bool)

(declare-fun e!248486 () Bool)

(declare-fun e!248489 () Bool)

(assert (=> b!416234 (= e!248486 (not e!248489))))

(declare-fun res!242352 () Bool)

(assert (=> b!416234 (=> res!242352 e!248489)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!416234 (= res!242352 (validKeyInArray!0 (select (arr!12097 _keys!709) from!863)))))

(declare-fun e!248488 () Bool)

(assert (=> b!416234 e!248488))

(assert (=> b!416234 (= c!55010 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12263 0))(
  ( (Unit!12264) )
))
(declare-fun lt!190626 () Unit!12263)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!15415)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!394 (array!25301 array!25303 (_ BitVec 32) (_ BitVec 32) V!15415 V!15415 (_ BitVec 32) (_ BitVec 64) V!15415 (_ BitVec 32) Int) Unit!12263)

(assert (=> b!416234 (= lt!190626 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!394 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416235 () Bool)

(declare-fun e!248487 () Bool)

(assert (=> b!416235 (= e!248487 e!248486)))

(declare-fun res!242351 () Bool)

(assert (=> b!416235 (=> (not res!242351) (not e!248486))))

(assert (=> b!416235 (= res!242351 (= from!863 i!563))))

(declare-fun lt!190632 () ListLongMap!5909)

(assert (=> b!416235 (= lt!190632 (getCurrentListMapNoExtraKeys!1174 lt!190623 lt!190629 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!416235 (= lt!190629 (array!25304 (store (arr!12098 _values!549) i!563 (ValueCellFull!5023 v!412)) (size!12450 _values!549)))))

(declare-fun lt!190625 () ListLongMap!5909)

(assert (=> b!416235 (= lt!190625 (getCurrentListMapNoExtraKeys!1174 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!416236 () Bool)

(declare-fun res!242343 () Bool)

(assert (=> b!416236 (=> (not res!242343) (not e!248491))))

(assert (=> b!416236 (= res!242343 (validKeyInArray!0 k!794))))

(declare-fun mapIsEmpty!17721 () Bool)

(declare-fun mapRes!17721 () Bool)

(assert (=> mapIsEmpty!17721 mapRes!17721))

(declare-fun b!416237 () Bool)

(assert (=> b!416237 (= e!248489 true)))

(declare-fun lt!190630 () V!15415)

(declare-fun lt!190631 () ListLongMap!5909)

(declare-fun lt!190628 () tuple2!6982)

(declare-fun +!1182 (ListLongMap!5909 tuple2!6982) ListLongMap!5909)

(assert (=> b!416237 (= (+!1182 lt!190631 lt!190628) (+!1182 (+!1182 lt!190631 (tuple2!6983 k!794 lt!190630)) lt!190628))))

(declare-fun lt!190622 () V!15415)

(assert (=> b!416237 (= lt!190628 (tuple2!6983 k!794 lt!190622))))

(declare-fun lt!190627 () Unit!12263)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!6 (ListLongMap!5909 (_ BitVec 64) V!15415 V!15415) Unit!12263)

(assert (=> b!416237 (= lt!190627 (addSameAsAddTwiceSameKeyDiffValues!6 lt!190631 k!794 lt!190630 lt!190622))))

(declare-fun lt!190624 () V!15415)

(declare-fun get!5981 (ValueCell!5023 V!15415) V!15415)

(assert (=> b!416237 (= lt!190630 (get!5981 (select (arr!12098 _values!549) from!863) lt!190624))))

(assert (=> b!416237 (= lt!190632 (+!1182 lt!190631 (tuple2!6983 (select (arr!12097 lt!190623) from!863) lt!190622)))))

(assert (=> b!416237 (= lt!190622 (get!5981 (select (store (arr!12098 _values!549) i!563 (ValueCellFull!5023 v!412)) from!863) lt!190624))))

(declare-fun dynLambda!668 (Int (_ BitVec 64)) V!15415)

(assert (=> b!416237 (= lt!190624 (dynLambda!668 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!416237 (= lt!190631 (getCurrentListMapNoExtraKeys!1174 lt!190623 lt!190629 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416238 () Bool)

(declare-fun res!242346 () Bool)

(assert (=> b!416238 (=> (not res!242346) (not e!248491))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25301 (_ BitVec 32)) Bool)

(assert (=> b!416238 (= res!242346 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!242345 () Bool)

(assert (=> start!39322 (=> (not res!242345) (not e!248491))))

(assert (=> start!39322 (= res!242345 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12449 _keys!709))))))

(assert (=> start!39322 e!248491))

(declare-fun tp_is_empty!10733 () Bool)

(assert (=> start!39322 tp_is_empty!10733))

(assert (=> start!39322 tp!34272))

(assert (=> start!39322 true))

(declare-fun e!248492 () Bool)

(declare-fun array_inv!8824 (array!25303) Bool)

(assert (=> start!39322 (and (array_inv!8824 _values!549) e!248492)))

(declare-fun array_inv!8825 (array!25301) Bool)

(assert (=> start!39322 (array_inv!8825 _keys!709)))

(declare-fun b!416232 () Bool)

(declare-fun call!28919 () ListLongMap!5909)

(assert (=> b!416232 (= e!248488 (= call!28918 (+!1182 call!28919 (tuple2!6983 k!794 v!412))))))

(declare-fun b!416239 () Bool)

(declare-fun e!248494 () Bool)

(assert (=> b!416239 (= e!248492 (and e!248494 mapRes!17721))))

(declare-fun condMapEmpty!17721 () Bool)

(declare-fun mapDefault!17721 () ValueCell!5023)

