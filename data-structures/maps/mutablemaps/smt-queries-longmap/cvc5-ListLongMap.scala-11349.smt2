; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132030 () Bool)

(assert start!132030)

(declare-fun b_free!31711 () Bool)

(declare-fun b_next!31711 () Bool)

(assert (=> start!132030 (= b_free!31711 (not b_next!31711))))

(declare-fun tp!111386 () Bool)

(declare-fun b_and!51131 () Bool)

(assert (=> start!132030 (= tp!111386 b_and!51131)))

(declare-fun b!1546378 () Bool)

(declare-fun res!1060286 () Bool)

(declare-fun e!860776 () Bool)

(assert (=> b!1546378 (=> (not res!1060286) (not e!860776))))

(declare-datatypes ((array!103141 0))(
  ( (array!103142 (arr!49768 (Array (_ BitVec 32) (_ BitVec 64))) (size!50319 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103141)

(declare-datatypes ((List!36178 0))(
  ( (Nil!36175) (Cons!36174 (h!37620 (_ BitVec 64)) (t!50879 List!36178)) )
))
(declare-fun arrayNoDuplicates!0 (array!103141 (_ BitVec 32) List!36178) Bool)

(assert (=> b!1546378 (= res!1060286 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36175))))

(declare-fun b!1546379 () Bool)

(declare-datatypes ((V!59093 0))(
  ( (V!59094 (val!19071 Int)) )
))
(declare-datatypes ((tuple2!24668 0))(
  ( (tuple2!24669 (_1!12344 (_ BitVec 64)) (_2!12344 V!59093)) )
))
(declare-datatypes ((List!36179 0))(
  ( (Nil!36176) (Cons!36175 (h!37621 tuple2!24668) (t!50880 List!36179)) )
))
(declare-datatypes ((ListLongMap!22289 0))(
  ( (ListLongMap!22290 (toList!11160 List!36179)) )
))
(declare-fun e!860780 () ListLongMap!22289)

(declare-fun call!69557 () ListLongMap!22289)

(assert (=> b!1546379 (= e!860780 call!69557)))

(declare-fun mapNonEmpty!58684 () Bool)

(declare-fun mapRes!58684 () Bool)

(declare-fun tp!111385 () Bool)

(declare-fun e!860781 () Bool)

(assert (=> mapNonEmpty!58684 (= mapRes!58684 (and tp!111385 e!860781))))

(declare-datatypes ((ValueCell!18083 0))(
  ( (ValueCellFull!18083 (v!21869 V!59093)) (EmptyCell!18083) )
))
(declare-fun mapValue!58684 () ValueCell!18083)

(declare-datatypes ((array!103143 0))(
  ( (array!103144 (arr!49769 (Array (_ BitVec 32) ValueCell!18083)) (size!50320 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103143)

(declare-fun mapKey!58684 () (_ BitVec 32))

(declare-fun mapRest!58684 () (Array (_ BitVec 32) ValueCell!18083))

(assert (=> mapNonEmpty!58684 (= (arr!49769 _values!470) (store mapRest!58684 mapKey!58684 mapValue!58684))))

(declare-fun b!1546380 () Bool)

(declare-fun res!1060287 () Bool)

(assert (=> b!1546380 (=> (not res!1060287) (not e!860776))))

(declare-fun from!762 () (_ BitVec 32))

(assert (=> b!1546380 (= res!1060287 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50319 _keys!618))))))

(declare-fun bm!69554 () Bool)

(declare-fun call!69561 () ListLongMap!22289)

(assert (=> bm!69554 (= call!69557 call!69561)))

(declare-fun b!1546381 () Bool)

(declare-fun res!1060289 () Bool)

(assert (=> b!1546381 (=> (not res!1060289) (not e!860776))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(assert (=> b!1546381 (= res!1060289 (and (= (size!50320 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50319 _keys!618) (size!50320 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1546382 () Bool)

(declare-fun res!1060285 () Bool)

(assert (=> b!1546382 (=> (not res!1060285) (not e!860776))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103141 (_ BitVec 32)) Bool)

(assert (=> b!1546382 (= res!1060285 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1546383 () Bool)

(declare-fun e!860778 () ListLongMap!22289)

(declare-fun call!69560 () ListLongMap!22289)

(assert (=> b!1546383 (= e!860778 call!69560)))

(declare-fun b!1546384 () Bool)

(declare-fun res!1060284 () Bool)

(declare-fun e!860782 () Bool)

(assert (=> b!1546384 (=> (not res!1060284) (not e!860782))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1546384 (= res!1060284 (validKeyInArray!0 (select (arr!49768 _keys!618) from!762)))))

(declare-fun b!1546385 () Bool)

(declare-fun e!860779 () ListLongMap!22289)

(assert (=> b!1546385 (= e!860779 e!860780)))

(declare-fun c!141762 () Bool)

(declare-fun lt!666505 () Bool)

(assert (=> b!1546385 (= c!141762 (and (not lt!666505) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun zeroValue!436 () V!59093)

(declare-fun call!69558 () ListLongMap!22289)

(declare-fun minValue!436 () V!59093)

(declare-fun call!69559 () ListLongMap!22289)

(declare-fun c!141764 () Bool)

(declare-fun bm!69555 () Bool)

(declare-fun +!4888 (ListLongMap!22289 tuple2!24668) ListLongMap!22289)

(assert (=> bm!69555 (= call!69561 (+!4888 (ite c!141764 call!69559 (ite c!141762 call!69558 call!69560)) (ite (or c!141764 c!141762) (tuple2!24669 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24669 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1546387 () Bool)

(assert (=> b!1546387 (= e!860778 call!69557)))

(declare-fun b!1546388 () Bool)

(declare-fun c!141763 () Bool)

(assert (=> b!1546388 (= c!141763 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666505))))

(assert (=> b!1546388 (= e!860780 e!860778)))

(declare-fun b!1546389 () Bool)

(assert (=> b!1546389 (= e!860782 (not true))))

(declare-fun lt!666506 () ListLongMap!22289)

(declare-fun lt!666509 () Bool)

(declare-fun contains!10059 (ListLongMap!22289 (_ BitVec 64)) Bool)

(assert (=> b!1546389 (= lt!666509 (contains!10059 lt!666506 (select (arr!49768 _keys!618) from!762)))))

(assert (=> b!1546389 (contains!10059 (+!4888 lt!666506 (tuple2!24669 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49768 _keys!618) from!762))))

(declare-datatypes ((Unit!51480 0))(
  ( (Unit!51481) )
))
(declare-fun lt!666507 () Unit!51480)

(declare-fun addStillContains!1241 (ListLongMap!22289 (_ BitVec 64) V!59093 (_ BitVec 64)) Unit!51480)

(assert (=> b!1546389 (= lt!666507 (addStillContains!1241 lt!666506 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49768 _keys!618) from!762)))))

(declare-fun defaultEntry!478 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6606 (array!103141 array!103143 (_ BitVec 32) (_ BitVec 32) V!59093 V!59093 (_ BitVec 32) Int) ListLongMap!22289)

(assert (=> b!1546389 (= lt!666506 (getCurrentListMapNoExtraKeys!6606 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun bm!69556 () Bool)

(assert (=> bm!69556 (= call!69560 call!69558)))

(declare-fun b!1546390 () Bool)

(assert (=> b!1546390 (= e!860779 (+!4888 call!69561 (tuple2!24669 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1546391 () Bool)

(assert (=> b!1546391 (= e!860776 e!860782)))

(declare-fun res!1060288 () Bool)

(assert (=> b!1546391 (=> (not res!1060288) (not e!860782))))

(assert (=> b!1546391 (= res!1060288 (bvslt from!762 (size!50319 _keys!618)))))

(declare-fun lt!666508 () ListLongMap!22289)

(assert (=> b!1546391 (= lt!666508 e!860779)))

(assert (=> b!1546391 (= c!141764 (and (not lt!666505) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1546391 (= lt!666505 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!69557 () Bool)

(assert (=> bm!69557 (= call!69558 call!69559)))

(declare-fun b!1546392 () Bool)

(declare-fun e!860775 () Bool)

(declare-fun e!860774 () Bool)

(assert (=> b!1546392 (= e!860775 (and e!860774 mapRes!58684))))

(declare-fun condMapEmpty!58684 () Bool)

(declare-fun mapDefault!58684 () ValueCell!18083)

