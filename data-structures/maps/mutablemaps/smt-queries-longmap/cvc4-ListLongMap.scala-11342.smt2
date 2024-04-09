; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131992 () Bool)

(assert start!131992)

(declare-fun b_free!31673 () Bool)

(declare-fun b_next!31673 () Bool)

(assert (=> start!131992 (= b_free!31673 (not b_next!31673))))

(declare-fun tp!111272 () Bool)

(declare-fun b_and!51093 () Bool)

(assert (=> start!131992 (= tp!111272 b_and!51093)))

(declare-fun b!1545466 () Bool)

(declare-datatypes ((V!59041 0))(
  ( (V!59042 (val!19052 Int)) )
))
(declare-datatypes ((tuple2!24632 0))(
  ( (tuple2!24633 (_1!12326 (_ BitVec 64)) (_2!12326 V!59041)) )
))
(declare-datatypes ((List!36148 0))(
  ( (Nil!36145) (Cons!36144 (h!37590 tuple2!24632) (t!50849 List!36148)) )
))
(declare-datatypes ((ListLongMap!22253 0))(
  ( (ListLongMap!22254 (toList!11142 List!36148)) )
))
(declare-fun e!860268 () ListLongMap!22253)

(declare-fun e!860266 () ListLongMap!22253)

(assert (=> b!1545466 (= e!860268 e!860266)))

(declare-fun c!141591 () Bool)

(declare-fun lt!666278 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1545466 (= c!141591 (and (not lt!666278) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1545467 () Bool)

(declare-fun e!860263 () ListLongMap!22253)

(declare-fun call!69273 () ListLongMap!22253)

(assert (=> b!1545467 (= e!860263 call!69273)))

(declare-fun b!1545468 () Bool)

(declare-fun res!1059885 () Bool)

(declare-fun e!860267 () Bool)

(assert (=> b!1545468 (=> (not res!1059885) (not e!860267))))

(declare-datatypes ((array!103071 0))(
  ( (array!103072 (arr!49733 (Array (_ BitVec 32) (_ BitVec 64))) (size!50284 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103071)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103071 (_ BitVec 32)) Bool)

(assert (=> b!1545468 (= res!1059885 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun bm!69269 () Bool)

(declare-fun call!69276 () ListLongMap!22253)

(declare-fun call!69272 () ListLongMap!22253)

(assert (=> bm!69269 (= call!69276 call!69272)))

(declare-fun zeroValue!436 () V!59041)

(declare-fun defaultEntry!478 () Int)

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18064 0))(
  ( (ValueCellFull!18064 (v!21850 V!59041)) (EmptyCell!18064) )
))
(declare-datatypes ((array!103073 0))(
  ( (array!103074 (arr!49734 (Array (_ BitVec 32) ValueCell!18064)) (size!50285 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103073)

(declare-fun call!69275 () ListLongMap!22253)

(declare-fun minValue!436 () V!59041)

(declare-fun bm!69270 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6591 (array!103071 array!103073 (_ BitVec 32) (_ BitVec 32) V!59041 V!59041 (_ BitVec 32) Int) ListLongMap!22253)

(assert (=> bm!69270 (= call!69275 (getCurrentListMapNoExtraKeys!6591 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1545470 () Bool)

(declare-fun e!860269 () Bool)

(declare-fun tp_is_empty!37949 () Bool)

(assert (=> b!1545470 (= e!860269 tp_is_empty!37949)))

(declare-fun b!1545471 () Bool)

(declare-fun res!1059884 () Bool)

(declare-fun e!860265 () Bool)

(assert (=> b!1545471 (=> (not res!1059884) (not e!860265))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1545471 (= res!1059884 (validKeyInArray!0 (select (arr!49733 _keys!618) from!762)))))

(declare-fun b!1545472 () Bool)

(declare-fun res!1059889 () Bool)

(assert (=> b!1545472 (=> (not res!1059889) (not e!860267))))

(assert (=> b!1545472 (= res!1059889 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50284 _keys!618))))))

(declare-fun b!1545473 () Bool)

(declare-fun c!141592 () Bool)

(assert (=> b!1545473 (= c!141592 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666278))))

(assert (=> b!1545473 (= e!860266 e!860263)))

(declare-fun call!69274 () ListLongMap!22253)

(declare-fun bm!69271 () Bool)

(declare-fun c!141593 () Bool)

(declare-fun +!4872 (ListLongMap!22253 tuple2!24632) ListLongMap!22253)

(assert (=> bm!69271 (= call!69274 (+!4872 (ite c!141593 call!69275 (ite c!141591 call!69272 call!69276)) (ite (or c!141593 c!141591) (tuple2!24633 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24633 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1545474 () Bool)

(assert (=> b!1545474 (= e!860267 e!860265)))

(declare-fun res!1059890 () Bool)

(assert (=> b!1545474 (=> (not res!1059890) (not e!860265))))

(assert (=> b!1545474 (= res!1059890 (bvslt from!762 (size!50284 _keys!618)))))

(declare-fun lt!666275 () ListLongMap!22253)

(assert (=> b!1545474 (= lt!666275 e!860268)))

(assert (=> b!1545474 (= c!141593 (and (not lt!666278) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1545474 (= lt!666278 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!69272 () Bool)

(assert (=> bm!69272 (= call!69272 call!69275)))

(declare-fun bm!69273 () Bool)

(assert (=> bm!69273 (= call!69273 call!69274)))

(declare-fun res!1059888 () Bool)

(assert (=> start!131992 (=> (not res!1059888) (not e!860267))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131992 (= res!1059888 (validMask!0 mask!926))))

(assert (=> start!131992 e!860267))

(declare-fun array_inv!38603 (array!103071) Bool)

(assert (=> start!131992 (array_inv!38603 _keys!618)))

(assert (=> start!131992 tp_is_empty!37949))

(assert (=> start!131992 true))

(assert (=> start!131992 tp!111272))

(declare-fun e!860261 () Bool)

(declare-fun array_inv!38604 (array!103073) Bool)

(assert (=> start!131992 (and (array_inv!38604 _values!470) e!860261)))

(declare-fun b!1545469 () Bool)

(assert (=> b!1545469 (= e!860266 call!69273)))

(declare-fun b!1545475 () Bool)

(assert (=> b!1545475 (= e!860268 (+!4872 call!69274 (tuple2!24633 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1545476 () Bool)

(declare-fun mapRes!58627 () Bool)

(assert (=> b!1545476 (= e!860261 (and e!860269 mapRes!58627))))

(declare-fun condMapEmpty!58627 () Bool)

(declare-fun mapDefault!58627 () ValueCell!18064)

