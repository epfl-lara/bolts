; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39232 () Bool)

(assert start!39232)

(declare-fun b_free!9491 () Bool)

(declare-fun b_next!9491 () Bool)

(assert (=> start!39232 (= b_free!9491 (not b_next!9491))))

(declare-fun tp!34002 () Bool)

(declare-fun b_and!16895 () Bool)

(assert (=> start!39232 (= tp!34002 b_and!16895)))

(declare-fun b!413616 () Bool)

(declare-fun e!247295 () Bool)

(declare-datatypes ((V!15295 0))(
  ( (V!15296 (val!5366 Int)) )
))
(declare-datatypes ((tuple2!6900 0))(
  ( (tuple2!6901 (_1!3460 (_ BitVec 64)) (_2!3460 V!15295)) )
))
(declare-datatypes ((List!6961 0))(
  ( (Nil!6958) (Cons!6957 (h!7813 tuple2!6900) (t!12143 List!6961)) )
))
(declare-datatypes ((ListLongMap!5827 0))(
  ( (ListLongMap!5828 (toList!2929 List!6961)) )
))
(declare-fun call!28648 () ListLongMap!5827)

(declare-fun call!28649 () ListLongMap!5827)

(assert (=> b!413616 (= e!247295 (= call!28648 call!28649))))

(declare-fun b!413618 () Bool)

(declare-fun res!240479 () Bool)

(declare-fun e!247291 () Bool)

(assert (=> b!413618 (=> (not res!240479) (not e!247291))))

(declare-datatypes ((array!25125 0))(
  ( (array!25126 (arr!12009 (Array (_ BitVec 32) (_ BitVec 64))) (size!12361 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25125)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!413618 (= res!240479 (or (= (select (arr!12009 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12009 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!413619 () Bool)

(declare-fun res!240468 () Bool)

(assert (=> b!413619 (=> (not res!240468) (not e!247291))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25125 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!413619 (= res!240468 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!413620 () Bool)

(declare-fun res!240477 () Bool)

(assert (=> b!413620 (=> (not res!240477) (not e!247291))))

(declare-datatypes ((List!6962 0))(
  ( (Nil!6959) (Cons!6958 (h!7814 (_ BitVec 64)) (t!12144 List!6962)) )
))
(declare-fun arrayNoDuplicates!0 (array!25125 (_ BitVec 32) List!6962) Bool)

(assert (=> b!413620 (= res!240477 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6959))))

(declare-fun b!413621 () Bool)

(declare-fun res!240470 () Bool)

(assert (=> b!413621 (=> (not res!240470) (not e!247291))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!413621 (= res!240470 (validMask!0 mask!1025))))

(declare-fun b!413622 () Bool)

(declare-fun e!247293 () Bool)

(assert (=> b!413622 (= e!247293 (not true))))

(assert (=> b!413622 e!247295))

(declare-fun c!54875 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!413622 (= c!54875 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12197 0))(
  ( (Unit!12198) )
))
(declare-fun lt!189791 () Unit!12197)

(declare-fun minValue!515 () V!15295)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4978 0))(
  ( (ValueCellFull!4978 (v!7609 V!15295)) (EmptyCell!4978) )
))
(declare-datatypes ((array!25127 0))(
  ( (array!25128 (arr!12010 (Array (_ BitVec 32) ValueCell!4978)) (size!12362 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25127)

(declare-fun zeroValue!515 () V!15295)

(declare-fun v!412 () V!15295)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!361 (array!25125 array!25127 (_ BitVec 32) (_ BitVec 32) V!15295 V!15295 (_ BitVec 32) (_ BitVec 64) V!15295 (_ BitVec 32) Int) Unit!12197)

(assert (=> b!413622 (= lt!189791 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!361 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!413623 () Bool)

(declare-fun e!247292 () Bool)

(declare-fun tp_is_empty!10643 () Bool)

(assert (=> b!413623 (= e!247292 tp_is_empty!10643)))

(declare-fun b!413624 () Bool)

(declare-fun res!240472 () Bool)

(assert (=> b!413624 (=> (not res!240472) (not e!247291))))

(assert (=> b!413624 (= res!240472 (and (= (size!12362 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12361 _keys!709) (size!12362 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!413625 () Bool)

(declare-fun res!240474 () Bool)

(declare-fun e!247297 () Bool)

(assert (=> b!413625 (=> (not res!240474) (not e!247297))))

(declare-fun lt!189795 () array!25125)

(assert (=> b!413625 (= res!240474 (arrayNoDuplicates!0 lt!189795 #b00000000000000000000000000000000 Nil!6959))))

(declare-fun mapNonEmpty!17586 () Bool)

(declare-fun mapRes!17586 () Bool)

(declare-fun tp!34001 () Bool)

(declare-fun e!247290 () Bool)

(assert (=> mapNonEmpty!17586 (= mapRes!17586 (and tp!34001 e!247290))))

(declare-fun mapValue!17586 () ValueCell!4978)

(declare-fun mapKey!17586 () (_ BitVec 32))

(declare-fun mapRest!17586 () (Array (_ BitVec 32) ValueCell!4978))

(assert (=> mapNonEmpty!17586 (= (arr!12010 _values!549) (store mapRest!17586 mapKey!17586 mapValue!17586))))

(declare-fun b!413626 () Bool)

(assert (=> b!413626 (= e!247297 e!247293)))

(declare-fun res!240480 () Bool)

(assert (=> b!413626 (=> (not res!240480) (not e!247293))))

(assert (=> b!413626 (= res!240480 (= from!863 i!563))))

(declare-fun lt!189792 () ListLongMap!5827)

(declare-fun lt!189794 () array!25127)

(declare-fun getCurrentListMapNoExtraKeys!1137 (array!25125 array!25127 (_ BitVec 32) (_ BitVec 32) V!15295 V!15295 (_ BitVec 32) Int) ListLongMap!5827)

(assert (=> b!413626 (= lt!189792 (getCurrentListMapNoExtraKeys!1137 lt!189795 lt!189794 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!413626 (= lt!189794 (array!25128 (store (arr!12010 _values!549) i!563 (ValueCellFull!4978 v!412)) (size!12362 _values!549)))))

(declare-fun lt!189793 () ListLongMap!5827)

(assert (=> b!413626 (= lt!189793 (getCurrentListMapNoExtraKeys!1137 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun bm!28645 () Bool)

(assert (=> bm!28645 (= call!28649 (getCurrentListMapNoExtraKeys!1137 (ite c!54875 lt!189795 _keys!709) (ite c!54875 lt!189794 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!17586 () Bool)

(assert (=> mapIsEmpty!17586 mapRes!17586))

(declare-fun res!240478 () Bool)

(assert (=> start!39232 (=> (not res!240478) (not e!247291))))

(assert (=> start!39232 (= res!240478 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12361 _keys!709))))))

(assert (=> start!39232 e!247291))

(assert (=> start!39232 tp_is_empty!10643))

(assert (=> start!39232 tp!34002))

(assert (=> start!39232 true))

(declare-fun e!247294 () Bool)

(declare-fun array_inv!8760 (array!25127) Bool)

(assert (=> start!39232 (and (array_inv!8760 _values!549) e!247294)))

(declare-fun array_inv!8761 (array!25125) Bool)

(assert (=> start!39232 (array_inv!8761 _keys!709)))

(declare-fun b!413617 () Bool)

(declare-fun res!240469 () Bool)

(assert (=> b!413617 (=> (not res!240469) (not e!247291))))

(assert (=> b!413617 (= res!240469 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12361 _keys!709))))))

(declare-fun bm!28646 () Bool)

(assert (=> bm!28646 (= call!28648 (getCurrentListMapNoExtraKeys!1137 (ite c!54875 _keys!709 lt!189795) (ite c!54875 _values!549 lt!189794) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!413627 () Bool)

(assert (=> b!413627 (= e!247294 (and e!247292 mapRes!17586))))

(declare-fun condMapEmpty!17586 () Bool)

(declare-fun mapDefault!17586 () ValueCell!4978)

