; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39430 () Bool)

(assert start!39430)

(declare-fun b_free!9689 () Bool)

(declare-fun b_next!9689 () Bool)

(assert (=> start!39430 (= b_free!9689 (not b_next!9689))))

(declare-fun tp!34595 () Bool)

(declare-fun b_and!17271 () Bool)

(assert (=> start!39430 (= tp!34595 b_and!17271)))

(declare-fun b!419419 () Bool)

(declare-fun e!249950 () Bool)

(declare-fun e!249949 () Bool)

(assert (=> b!419419 (= e!249950 (not e!249949))))

(declare-fun res!244619 () Bool)

(assert (=> b!419419 (=> res!244619 e!249949)))

(declare-datatypes ((array!25513 0))(
  ( (array!25514 (arr!12203 (Array (_ BitVec 32) (_ BitVec 64))) (size!12555 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25513)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!419419 (= res!244619 (validKeyInArray!0 (select (arr!12203 _keys!709) from!863)))))

(declare-fun e!249944 () Bool)

(assert (=> b!419419 e!249944))

(declare-fun c!55172 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!419419 (= c!55172 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((V!15559 0))(
  ( (V!15560 (val!5465 Int)) )
))
(declare-fun minValue!515 () V!15559)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!5077 0))(
  ( (ValueCellFull!5077 (v!7708 V!15559)) (EmptyCell!5077) )
))
(declare-datatypes ((array!25515 0))(
  ( (array!25516 (arr!12204 (Array (_ BitVec 32) ValueCell!5077)) (size!12556 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25515)

(declare-fun zeroValue!515 () V!15559)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!15559)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((Unit!12351 0))(
  ( (Unit!12352) )
))
(declare-fun lt!192414 () Unit!12351)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!431 (array!25513 array!25515 (_ BitVec 32) (_ BitVec 32) V!15559 V!15559 (_ BitVec 32) (_ BitVec 64) V!15559 (_ BitVec 32) Int) Unit!12351)

(assert (=> b!419419 (= lt!192414 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!431 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!419420 () Bool)

(declare-fun res!244618 () Bool)

(declare-fun e!249948 () Bool)

(assert (=> b!419420 (=> (not res!244618) (not e!249948))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25513 (_ BitVec 32)) Bool)

(assert (=> b!419420 (= res!244618 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!419421 () Bool)

(declare-datatypes ((tuple2!7084 0))(
  ( (tuple2!7085 (_1!3552 (_ BitVec 64)) (_2!3552 V!15559)) )
))
(declare-datatypes ((List!7129 0))(
  ( (Nil!7126) (Cons!7125 (h!7981 tuple2!7084) (t!12491 List!7129)) )
))
(declare-datatypes ((ListLongMap!6011 0))(
  ( (ListLongMap!6012 (toList!3021 List!7129)) )
))
(declare-fun call!29243 () ListLongMap!6011)

(declare-fun call!29242 () ListLongMap!6011)

(assert (=> b!419421 (= e!249944 (= call!29243 call!29242))))

(declare-fun b!419422 () Bool)

(declare-fun e!249945 () Bool)

(assert (=> b!419422 (= e!249948 e!249945)))

(declare-fun res!244609 () Bool)

(assert (=> b!419422 (=> (not res!244609) (not e!249945))))

(declare-fun lt!192412 () array!25513)

(assert (=> b!419422 (= res!244609 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!192412 mask!1025))))

(assert (=> b!419422 (= lt!192412 (array!25514 (store (arr!12203 _keys!709) i!563 k!794) (size!12555 _keys!709)))))

(declare-fun b!419423 () Bool)

(declare-fun res!244617 () Bool)

(assert (=> b!419423 (=> (not res!244617) (not e!249948))))

(assert (=> b!419423 (= res!244617 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12555 _keys!709))))))

(declare-fun b!419424 () Bool)

(declare-fun +!1226 (ListLongMap!6011 tuple2!7084) ListLongMap!6011)

(assert (=> b!419424 (= e!249944 (= call!29242 (+!1226 call!29243 (tuple2!7085 k!794 v!412))))))

(declare-fun b!419425 () Bool)

(declare-fun res!244620 () Bool)

(assert (=> b!419425 (=> (not res!244620) (not e!249948))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!419425 (= res!244620 (validMask!0 mask!1025))))

(declare-fun b!419426 () Bool)

(declare-fun res!244607 () Bool)

(assert (=> b!419426 (=> (not res!244607) (not e!249948))))

(declare-datatypes ((List!7130 0))(
  ( (Nil!7127) (Cons!7126 (h!7982 (_ BitVec 64)) (t!12492 List!7130)) )
))
(declare-fun arrayNoDuplicates!0 (array!25513 (_ BitVec 32) List!7130) Bool)

(assert (=> b!419426 (= res!244607 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7127))))

(declare-fun mapNonEmpty!17883 () Bool)

(declare-fun mapRes!17883 () Bool)

(declare-fun tp!34596 () Bool)

(declare-fun e!249947 () Bool)

(assert (=> mapNonEmpty!17883 (= mapRes!17883 (and tp!34596 e!249947))))

(declare-fun mapKey!17883 () (_ BitVec 32))

(declare-fun mapRest!17883 () (Array (_ BitVec 32) ValueCell!5077))

(declare-fun mapValue!17883 () ValueCell!5077)

(assert (=> mapNonEmpty!17883 (= (arr!12204 _values!549) (store mapRest!17883 mapKey!17883 mapValue!17883))))

(declare-fun b!419427 () Bool)

(declare-fun res!244616 () Bool)

(assert (=> b!419427 (=> (not res!244616) (not e!249948))))

(assert (=> b!419427 (= res!244616 (or (= (select (arr!12203 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12203 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!419428 () Bool)

(assert (=> b!419428 (= e!249945 e!249950)))

(declare-fun res!244613 () Bool)

(assert (=> b!419428 (=> (not res!244613) (not e!249950))))

(assert (=> b!419428 (= res!244613 (= from!863 i!563))))

(declare-fun lt!192404 () ListLongMap!6011)

(declare-fun lt!192407 () array!25515)

(declare-fun getCurrentListMapNoExtraKeys!1222 (array!25513 array!25515 (_ BitVec 32) (_ BitVec 32) V!15559 V!15559 (_ BitVec 32) Int) ListLongMap!6011)

(assert (=> b!419428 (= lt!192404 (getCurrentListMapNoExtraKeys!1222 lt!192412 lt!192407 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!419428 (= lt!192407 (array!25516 (store (arr!12204 _values!549) i!563 (ValueCellFull!5077 v!412)) (size!12556 _values!549)))))

(declare-fun lt!192410 () ListLongMap!6011)

(assert (=> b!419428 (= lt!192410 (getCurrentListMapNoExtraKeys!1222 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!419429 () Bool)

(assert (=> b!419429 (= e!249949 true)))

(declare-fun lt!192411 () tuple2!7084)

(declare-fun lt!192409 () ListLongMap!6011)

(declare-fun lt!192408 () V!15559)

(assert (=> b!419429 (= (+!1226 lt!192409 lt!192411) (+!1226 (+!1226 lt!192409 (tuple2!7085 k!794 lt!192408)) lt!192411))))

(declare-fun lt!192405 () V!15559)

(assert (=> b!419429 (= lt!192411 (tuple2!7085 k!794 lt!192405))))

(declare-fun lt!192406 () Unit!12351)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!45 (ListLongMap!6011 (_ BitVec 64) V!15559 V!15559) Unit!12351)

(assert (=> b!419429 (= lt!192406 (addSameAsAddTwiceSameKeyDiffValues!45 lt!192409 k!794 lt!192408 lt!192405))))

(declare-fun lt!192413 () V!15559)

(declare-fun get!6056 (ValueCell!5077 V!15559) V!15559)

(assert (=> b!419429 (= lt!192408 (get!6056 (select (arr!12204 _values!549) from!863) lt!192413))))

(assert (=> b!419429 (= lt!192404 (+!1226 lt!192409 (tuple2!7085 (select (arr!12203 lt!192412) from!863) lt!192405)))))

(assert (=> b!419429 (= lt!192405 (get!6056 (select (store (arr!12204 _values!549) i!563 (ValueCellFull!5077 v!412)) from!863) lt!192413))))

(declare-fun dynLambda!707 (Int (_ BitVec 64)) V!15559)

(assert (=> b!419429 (= lt!192413 (dynLambda!707 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!419429 (= lt!192409 (getCurrentListMapNoExtraKeys!1222 lt!192412 lt!192407 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!17883 () Bool)

(assert (=> mapIsEmpty!17883 mapRes!17883))

(declare-fun b!419430 () Bool)

(declare-fun tp_is_empty!10841 () Bool)

(assert (=> b!419430 (= e!249947 tp_is_empty!10841)))

(declare-fun bm!29239 () Bool)

(assert (=> bm!29239 (= call!29243 (getCurrentListMapNoExtraKeys!1222 (ite c!55172 _keys!709 lt!192412) (ite c!55172 _values!549 lt!192407) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!419418 () Bool)

(declare-fun res!244608 () Bool)

(assert (=> b!419418 (=> (not res!244608) (not e!249948))))

(assert (=> b!419418 (= res!244608 (validKeyInArray!0 k!794))))

(declare-fun res!244610 () Bool)

(assert (=> start!39430 (=> (not res!244610) (not e!249948))))

(assert (=> start!39430 (= res!244610 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12555 _keys!709))))))

(assert (=> start!39430 e!249948))

(assert (=> start!39430 tp_is_empty!10841))

(assert (=> start!39430 tp!34595))

(assert (=> start!39430 true))

(declare-fun e!249946 () Bool)

(declare-fun array_inv!8892 (array!25515) Bool)

(assert (=> start!39430 (and (array_inv!8892 _values!549) e!249946)))

(declare-fun array_inv!8893 (array!25513) Bool)

(assert (=> start!39430 (array_inv!8893 _keys!709)))

(declare-fun b!419431 () Bool)

(declare-fun res!244612 () Bool)

(assert (=> b!419431 (=> (not res!244612) (not e!249948))))

(declare-fun arrayContainsKey!0 (array!25513 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!419431 (= res!244612 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!419432 () Bool)

(declare-fun e!249951 () Bool)

(assert (=> b!419432 (= e!249951 tp_is_empty!10841)))

(declare-fun b!419433 () Bool)

(declare-fun res!244614 () Bool)

(assert (=> b!419433 (=> (not res!244614) (not e!249948))))

(assert (=> b!419433 (= res!244614 (and (= (size!12556 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12555 _keys!709) (size!12556 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun bm!29240 () Bool)

(assert (=> bm!29240 (= call!29242 (getCurrentListMapNoExtraKeys!1222 (ite c!55172 lt!192412 _keys!709) (ite c!55172 lt!192407 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!419434 () Bool)

(declare-fun res!244611 () Bool)

(assert (=> b!419434 (=> (not res!244611) (not e!249945))))

(assert (=> b!419434 (= res!244611 (bvsle from!863 i!563))))

(declare-fun b!419435 () Bool)

(declare-fun res!244615 () Bool)

(assert (=> b!419435 (=> (not res!244615) (not e!249945))))

(assert (=> b!419435 (= res!244615 (arrayNoDuplicates!0 lt!192412 #b00000000000000000000000000000000 Nil!7127))))

(declare-fun b!419436 () Bool)

(assert (=> b!419436 (= e!249946 (and e!249951 mapRes!17883))))

(declare-fun condMapEmpty!17883 () Bool)

(declare-fun mapDefault!17883 () ValueCell!5077)

