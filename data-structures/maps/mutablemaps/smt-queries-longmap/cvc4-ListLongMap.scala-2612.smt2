; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39502 () Bool)

(assert start!39502)

(declare-fun b_free!9761 () Bool)

(declare-fun b_next!9761 () Bool)

(assert (=> start!39502 (= b_free!9761 (not b_next!9761))))

(declare-fun tp!34812 () Bool)

(declare-fun b_and!17415 () Bool)

(assert (=> start!39502 (= tp!34812 b_and!17415)))

(declare-fun b!421542 () Bool)

(declare-fun e!250919 () Bool)

(declare-fun tp_is_empty!10913 () Bool)

(assert (=> b!421542 (= e!250919 tp_is_empty!10913)))

(declare-fun b!421543 () Bool)

(declare-fun res!246132 () Bool)

(declare-fun e!250921 () Bool)

(assert (=> b!421543 (=> (not res!246132) (not e!250921))))

(declare-datatypes ((array!25653 0))(
  ( (array!25654 (arr!12273 (Array (_ BitVec 32) (_ BitVec 64))) (size!12625 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25653)

(declare-datatypes ((List!7186 0))(
  ( (Nil!7183) (Cons!7182 (h!8038 (_ BitVec 64)) (t!12620 List!7186)) )
))
(declare-fun arrayNoDuplicates!0 (array!25653 (_ BitVec 32) List!7186) Bool)

(assert (=> b!421543 (= res!246132 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7183))))

(declare-fun lt!193601 () array!25653)

(declare-datatypes ((V!15655 0))(
  ( (V!15656 (val!5501 Int)) )
))
(declare-fun minValue!515 () V!15655)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!7144 0))(
  ( (tuple2!7145 (_1!3582 (_ BitVec 64)) (_2!3582 V!15655)) )
))
(declare-datatypes ((List!7187 0))(
  ( (Nil!7184) (Cons!7183 (h!8039 tuple2!7144) (t!12621 List!7187)) )
))
(declare-datatypes ((ListLongMap!6071 0))(
  ( (ListLongMap!6072 (toList!3051 List!7187)) )
))
(declare-fun call!29458 () ListLongMap!6071)

(declare-datatypes ((ValueCell!5113 0))(
  ( (ValueCellFull!5113 (v!7744 V!15655)) (EmptyCell!5113) )
))
(declare-datatypes ((array!25655 0))(
  ( (array!25656 (arr!12274 (Array (_ BitVec 32) ValueCell!5113)) (size!12626 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25655)

(declare-fun c!55280 () Bool)

(declare-fun zeroValue!515 () V!15655)

(declare-fun bm!29455 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lt!193594 () array!25655)

(declare-fun getCurrentListMapNoExtraKeys!1252 (array!25653 array!25655 (_ BitVec 32) (_ BitVec 32) V!15655 V!15655 (_ BitVec 32) Int) ListLongMap!6071)

(assert (=> bm!29455 (= call!29458 (getCurrentListMapNoExtraKeys!1252 (ite c!55280 _keys!709 lt!193601) (ite c!55280 _values!549 lt!193594) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!421544 () Bool)

(declare-fun e!250916 () Bool)

(declare-fun call!29459 () ListLongMap!6071)

(assert (=> b!421544 (= e!250916 (= call!29458 call!29459))))

(declare-fun b!421545 () Bool)

(declare-fun res!246130 () Bool)

(declare-fun e!250917 () Bool)

(assert (=> b!421545 (=> (not res!246130) (not e!250917))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!421545 (= res!246130 (bvsle from!863 i!563))))

(declare-fun bm!29456 () Bool)

(assert (=> bm!29456 (= call!29459 (getCurrentListMapNoExtraKeys!1252 (ite c!55280 lt!193601 _keys!709) (ite c!55280 lt!193594 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!421546 () Bool)

(declare-fun e!250922 () Bool)

(assert (=> b!421546 (= e!250922 true)))

(declare-fun lt!193592 () V!15655)

(declare-fun lt!193597 () tuple2!7144)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun lt!193598 () ListLongMap!6071)

(declare-fun +!1253 (ListLongMap!6071 tuple2!7144) ListLongMap!6071)

(assert (=> b!421546 (= (+!1253 lt!193598 lt!193597) (+!1253 (+!1253 lt!193598 (tuple2!7145 k!794 lt!193592)) lt!193597))))

(declare-fun lt!193595 () V!15655)

(assert (=> b!421546 (= lt!193597 (tuple2!7145 k!794 lt!193595))))

(declare-datatypes ((Unit!12409 0))(
  ( (Unit!12410) )
))
(declare-fun lt!193602 () Unit!12409)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!69 (ListLongMap!6071 (_ BitVec 64) V!15655 V!15655) Unit!12409)

(assert (=> b!421546 (= lt!193602 (addSameAsAddTwiceSameKeyDiffValues!69 lt!193598 k!794 lt!193592 lt!193595))))

(declare-fun lt!193596 () V!15655)

(declare-fun get!6104 (ValueCell!5113 V!15655) V!15655)

(assert (=> b!421546 (= lt!193592 (get!6104 (select (arr!12274 _values!549) from!863) lt!193596))))

(declare-fun lt!193600 () ListLongMap!6071)

(assert (=> b!421546 (= lt!193600 (+!1253 lt!193598 (tuple2!7145 (select (arr!12273 lt!193601) from!863) lt!193595)))))

(declare-fun v!412 () V!15655)

(assert (=> b!421546 (= lt!193595 (get!6104 (select (store (arr!12274 _values!549) i!563 (ValueCellFull!5113 v!412)) from!863) lt!193596))))

(declare-fun dynLambda!731 (Int (_ BitVec 64)) V!15655)

(assert (=> b!421546 (= lt!193596 (dynLambda!731 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!421546 (= lt!193598 (getCurrentListMapNoExtraKeys!1252 lt!193601 lt!193594 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!421547 () Bool)

(declare-fun e!250920 () Bool)

(declare-fun e!250923 () Bool)

(declare-fun mapRes!17991 () Bool)

(assert (=> b!421547 (= e!250920 (and e!250923 mapRes!17991))))

(declare-fun condMapEmpty!17991 () Bool)

(declare-fun mapDefault!17991 () ValueCell!5113)

