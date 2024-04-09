; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132278 () Bool)

(assert start!132278)

(declare-fun b_free!31897 () Bool)

(declare-fun b_next!31897 () Bool)

(assert (=> start!132278 (= b_free!31897 (not b_next!31897))))

(declare-fun tp!111953 () Bool)

(declare-fun b_and!51341 () Bool)

(assert (=> start!132278 (= tp!111953 b_and!51341)))

(declare-fun b!1551286 () Bool)

(declare-fun res!1062435 () Bool)

(declare-fun e!863593 () Bool)

(assert (=> b!1551286 (=> (not res!1062435) (not e!863593))))

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((array!103503 0))(
  ( (array!103504 (arr!49946 (Array (_ BitVec 32) (_ BitVec 64))) (size!50497 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103503)

(assert (=> b!1551286 (= res!1062435 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50497 _keys!618))))))

(declare-fun bm!70985 () Bool)

(declare-datatypes ((V!59341 0))(
  ( (V!59342 (val!19164 Int)) )
))
(declare-datatypes ((tuple2!24844 0))(
  ( (tuple2!24845 (_1!12432 (_ BitVec 64)) (_2!12432 V!59341)) )
))
(declare-datatypes ((List!36329 0))(
  ( (Nil!36326) (Cons!36325 (h!37771 tuple2!24844) (t!51048 List!36329)) )
))
(declare-datatypes ((ListLongMap!22465 0))(
  ( (ListLongMap!22466 (toList!11248 List!36329)) )
))
(declare-fun call!70989 () ListLongMap!22465)

(declare-fun call!70990 () ListLongMap!22465)

(assert (=> bm!70985 (= call!70989 call!70990)))

(declare-fun b!1551287 () Bool)

(declare-fun e!863594 () Bool)

(declare-fun tp_is_empty!38173 () Bool)

(assert (=> b!1551287 (= e!863594 tp_is_empty!38173)))

(declare-fun b!1551288 () Bool)

(declare-fun e!863587 () Bool)

(assert (=> b!1551288 (= e!863587 tp_is_empty!38173)))

(declare-fun b!1551289 () Bool)

(declare-fun e!863591 () ListLongMap!22465)

(declare-fun e!863588 () ListLongMap!22465)

(assert (=> b!1551289 (= e!863591 e!863588)))

(declare-fun c!142701 () Bool)

(declare-fun lt!668591 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1551289 (= c!142701 (and (not lt!668591) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1551290 () Bool)

(declare-fun e!863592 () ListLongMap!22465)

(declare-fun call!70992 () ListLongMap!22465)

(assert (=> b!1551290 (= e!863592 call!70992)))

(declare-fun b!1551291 () Bool)

(declare-fun call!70991 () ListLongMap!22465)

(declare-fun minValue!436 () V!59341)

(declare-fun +!4955 (ListLongMap!22465 tuple2!24844) ListLongMap!22465)

(assert (=> b!1551291 (= e!863591 (+!4955 call!70991 (tuple2!24845 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1551292 () Bool)

(declare-fun res!1062439 () Bool)

(assert (=> b!1551292 (=> (not res!1062439) (not e!863593))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103503 (_ BitVec 32)) Bool)

(assert (=> b!1551292 (= res!1062439 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1551293 () Bool)

(declare-fun res!1062436 () Bool)

(assert (=> b!1551293 (=> (not res!1062436) (not e!863593))))

(declare-datatypes ((List!36330 0))(
  ( (Nil!36327) (Cons!36326 (h!37772 (_ BitVec 64)) (t!51049 List!36330)) )
))
(declare-fun arrayNoDuplicates!0 (array!103503 (_ BitVec 32) List!36330) Bool)

(assert (=> b!1551293 (= res!1062436 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36327))))

(declare-fun b!1551294 () Bool)

(declare-fun e!863590 () Bool)

(assert (=> b!1551294 (= e!863590 (not true))))

(declare-fun lt!668590 () ListLongMap!22465)

(declare-fun lt!668589 () V!59341)

(declare-fun apply!1123 (ListLongMap!22465 (_ BitVec 64)) V!59341)

(assert (=> b!1551294 (= (apply!1123 lt!668590 (select (arr!49946 _keys!618) from!762)) lt!668589)))

(declare-fun zeroValue!436 () V!59341)

(declare-fun lt!668594 () ListLongMap!22465)

(declare-datatypes ((Unit!51597 0))(
  ( (Unit!51598) )
))
(declare-fun lt!668592 () Unit!51597)

(declare-fun addApplyDifferent!624 (ListLongMap!22465 (_ BitVec 64) V!59341 (_ BitVec 64)) Unit!51597)

(assert (=> b!1551294 (= lt!668592 (addApplyDifferent!624 lt!668594 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49946 _keys!618) from!762)))))

(declare-fun lt!668596 () V!59341)

(assert (=> b!1551294 (= lt!668596 lt!668589)))

(assert (=> b!1551294 (= lt!668589 (apply!1123 lt!668594 (select (arr!49946 _keys!618) from!762)))))

(assert (=> b!1551294 (= lt!668596 (apply!1123 (+!4955 lt!668594 (tuple2!24845 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49946 _keys!618) from!762)))))

(declare-fun lt!668593 () Unit!51597)

(assert (=> b!1551294 (= lt!668593 (addApplyDifferent!624 lt!668594 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49946 _keys!618) from!762)))))

(declare-fun contains!10118 (ListLongMap!22465 (_ BitVec 64)) Bool)

(assert (=> b!1551294 (contains!10118 lt!668590 (select (arr!49946 _keys!618) from!762))))

(assert (=> b!1551294 (= lt!668590 (+!4955 lt!668594 (tuple2!24845 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun lt!668595 () Unit!51597)

(declare-fun addStillContains!1291 (ListLongMap!22465 (_ BitVec 64) V!59341 (_ BitVec 64)) Unit!51597)

(assert (=> b!1551294 (= lt!668595 (addStillContains!1291 lt!668594 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49946 _keys!618) from!762)))))

(declare-fun defaultEntry!478 () Int)

(declare-datatypes ((ValueCell!18176 0))(
  ( (ValueCellFull!18176 (v!21965 V!59341)) (EmptyCell!18176) )
))
(declare-datatypes ((array!103505 0))(
  ( (array!103506 (arr!49947 (Array (_ BitVec 32) ValueCell!18176)) (size!50498 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103505)

(declare-fun getCurrentListMapNoExtraKeys!6673 (array!103503 array!103505 (_ BitVec 32) (_ BitVec 32) V!59341 V!59341 (_ BitVec 32) Int) ListLongMap!22465)

(assert (=> b!1551294 (= lt!668594 (getCurrentListMapNoExtraKeys!6673 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1551295 () Bool)

(declare-fun e!863589 () Bool)

(declare-fun mapRes!58972 () Bool)

(assert (=> b!1551295 (= e!863589 (and e!863594 mapRes!58972))))

(declare-fun condMapEmpty!58972 () Bool)

(declare-fun mapDefault!58972 () ValueCell!18176)

