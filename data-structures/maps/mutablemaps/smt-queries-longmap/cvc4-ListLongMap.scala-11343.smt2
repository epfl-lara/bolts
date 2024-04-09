; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131998 () Bool)

(assert start!131998)

(declare-fun b_free!31679 () Bool)

(declare-fun b_next!31679 () Bool)

(assert (=> start!131998 (= b_free!31679 (not b_next!31679))))

(declare-fun tp!111289 () Bool)

(declare-fun b_and!51099 () Bool)

(assert (=> start!131998 (= tp!111289 b_and!51099)))

(declare-fun b!1545611 () Bool)

(declare-fun e!860345 () Bool)

(declare-fun tp_is_empty!37955 () Bool)

(assert (=> b!1545611 (= e!860345 tp_is_empty!37955)))

(declare-fun b!1545612 () Bool)

(declare-fun res!1059949 () Bool)

(declare-fun e!860350 () Bool)

(assert (=> b!1545612 (=> (not res!1059949) (not e!860350))))

(declare-datatypes ((array!103083 0))(
  ( (array!103084 (arr!49739 (Array (_ BitVec 32) (_ BitVec 64))) (size!50290 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103083)

(declare-datatypes ((List!36152 0))(
  ( (Nil!36149) (Cons!36148 (h!37594 (_ BitVec 64)) (t!50853 List!36152)) )
))
(declare-fun arrayNoDuplicates!0 (array!103083 (_ BitVec 32) List!36152) Bool)

(assert (=> b!1545612 (= res!1059949 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36149))))

(declare-fun mapNonEmpty!58636 () Bool)

(declare-fun mapRes!58636 () Bool)

(declare-fun tp!111290 () Bool)

(assert (=> mapNonEmpty!58636 (= mapRes!58636 (and tp!111290 e!860345))))

(declare-datatypes ((V!59049 0))(
  ( (V!59050 (val!19055 Int)) )
))
(declare-datatypes ((ValueCell!18067 0))(
  ( (ValueCellFull!18067 (v!21853 V!59049)) (EmptyCell!18067) )
))
(declare-fun mapRest!58636 () (Array (_ BitVec 32) ValueCell!18067))

(declare-fun mapValue!58636 () ValueCell!18067)

(declare-datatypes ((array!103085 0))(
  ( (array!103086 (arr!49740 (Array (_ BitVec 32) ValueCell!18067)) (size!50291 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103085)

(declare-fun mapKey!58636 () (_ BitVec 32))

(assert (=> mapNonEmpty!58636 (= (arr!49740 _values!470) (store mapRest!58636 mapKey!58636 mapValue!58636))))

(declare-fun b!1545613 () Bool)

(declare-fun e!860342 () Bool)

(assert (=> b!1545613 (= e!860350 e!860342)))

(declare-fun res!1059948 () Bool)

(assert (=> b!1545613 (=> (not res!1059948) (not e!860342))))

(declare-fun from!762 () (_ BitVec 32))

(assert (=> b!1545613 (= res!1059948 (bvslt from!762 (size!50290 _keys!618)))))

(declare-datatypes ((tuple2!24638 0))(
  ( (tuple2!24639 (_1!12329 (_ BitVec 64)) (_2!12329 V!59049)) )
))
(declare-datatypes ((List!36153 0))(
  ( (Nil!36150) (Cons!36149 (h!37595 tuple2!24638) (t!50854 List!36153)) )
))
(declare-datatypes ((ListLongMap!22259 0))(
  ( (ListLongMap!22260 (toList!11145 List!36153)) )
))
(declare-fun lt!666311 () ListLongMap!22259)

(declare-fun e!860347 () ListLongMap!22259)

(assert (=> b!1545613 (= lt!666311 e!860347)))

(declare-fun c!141619 () Bool)

(declare-fun lt!666314 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1545613 (= c!141619 (and (not lt!666314) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1545613 (= lt!666314 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1545614 () Bool)

(declare-fun e!860344 () ListLongMap!22259)

(declare-fun call!69320 () ListLongMap!22259)

(assert (=> b!1545614 (= e!860344 call!69320)))

(declare-fun bm!69314 () Bool)

(declare-fun call!69318 () ListLongMap!22259)

(assert (=> bm!69314 (= call!69320 call!69318)))

(declare-fun b!1545615 () Bool)

(declare-fun c!141620 () Bool)

(assert (=> b!1545615 (= c!141620 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666314))))

(declare-fun e!860343 () ListLongMap!22259)

(assert (=> b!1545615 (= e!860344 e!860343)))

(declare-fun bm!69315 () Bool)

(declare-fun call!69319 () ListLongMap!22259)

(declare-fun call!69321 () ListLongMap!22259)

(assert (=> bm!69315 (= call!69319 call!69321)))

(declare-fun zeroValue!436 () V!59049)

(declare-fun call!69317 () ListLongMap!22259)

(declare-fun minValue!436 () V!59049)

(declare-fun c!141618 () Bool)

(declare-fun bm!69316 () Bool)

(declare-fun +!4875 (ListLongMap!22259 tuple2!24638) ListLongMap!22259)

(assert (=> bm!69316 (= call!69318 (+!4875 (ite c!141619 call!69321 (ite c!141618 call!69319 call!69317)) (ite (or c!141619 c!141618) (tuple2!24639 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24639 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1545616 () Bool)

(assert (=> b!1545616 (= e!860347 e!860344)))

(assert (=> b!1545616 (= c!141618 (and (not lt!666314) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1545617 () Bool)

(assert (=> b!1545617 (= e!860343 call!69317)))

(declare-fun b!1545618 () Bool)

(declare-fun e!860349 () Bool)

(assert (=> b!1545618 (= e!860349 tp_is_empty!37955)))

(declare-fun b!1545619 () Bool)

(declare-fun res!1059951 () Bool)

(assert (=> b!1545619 (=> (not res!1059951) (not e!860350))))

(assert (=> b!1545619 (= res!1059951 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50290 _keys!618))))))

(declare-fun res!1059952 () Bool)

(assert (=> start!131998 (=> (not res!1059952) (not e!860350))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131998 (= res!1059952 (validMask!0 mask!926))))

(assert (=> start!131998 e!860350))

(declare-fun array_inv!38609 (array!103083) Bool)

(assert (=> start!131998 (array_inv!38609 _keys!618)))

(assert (=> start!131998 tp_is_empty!37955))

(assert (=> start!131998 true))

(assert (=> start!131998 tp!111289))

(declare-fun e!860346 () Bool)

(declare-fun array_inv!38610 (array!103085) Bool)

(assert (=> start!131998 (and (array_inv!38610 _values!470) e!860346)))

(declare-fun b!1545610 () Bool)

(assert (=> b!1545610 (= e!860347 (+!4875 call!69318 (tuple2!24639 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun mapIsEmpty!58636 () Bool)

(assert (=> mapIsEmpty!58636 mapRes!58636))

(declare-fun b!1545620 () Bool)

(declare-fun res!1059947 () Bool)

(assert (=> b!1545620 (=> (not res!1059947) (not e!860342))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1545620 (= res!1059947 (validKeyInArray!0 (select (arr!49739 _keys!618) from!762)))))

(declare-fun defaultEntry!478 () Int)

(declare-fun bm!69317 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6594 (array!103083 array!103085 (_ BitVec 32) (_ BitVec 32) V!59049 V!59049 (_ BitVec 32) Int) ListLongMap!22259)

(assert (=> bm!69317 (= call!69321 (getCurrentListMapNoExtraKeys!6594 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1545621 () Bool)

(declare-fun res!1059950 () Bool)

(assert (=> b!1545621 (=> (not res!1059950) (not e!860350))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103083 (_ BitVec 32)) Bool)

(assert (=> b!1545621 (= res!1059950 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1545622 () Bool)

(assert (=> b!1545622 (= e!860342 (not true))))

(declare-fun lt!666313 () ListLongMap!22259)

(declare-fun contains!10047 (ListLongMap!22259 (_ BitVec 64)) Bool)

(assert (=> b!1545622 (contains!10047 (+!4875 lt!666313 (tuple2!24639 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49739 _keys!618) from!762))))

(declare-datatypes ((Unit!51456 0))(
  ( (Unit!51457) )
))
(declare-fun lt!666312 () Unit!51456)

(declare-fun addStillContains!1229 (ListLongMap!22259 (_ BitVec 64) V!59049 (_ BitVec 64)) Unit!51456)

(assert (=> b!1545622 (= lt!666312 (addStillContains!1229 lt!666313 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49739 _keys!618) from!762)))))

(assert (=> b!1545622 (= lt!666313 (getCurrentListMapNoExtraKeys!6594 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1545623 () Bool)

(assert (=> b!1545623 (= e!860343 call!69320)))

(declare-fun bm!69318 () Bool)

(assert (=> bm!69318 (= call!69317 call!69319)))

(declare-fun b!1545624 () Bool)

(assert (=> b!1545624 (= e!860346 (and e!860349 mapRes!58636))))

(declare-fun condMapEmpty!58636 () Bool)

(declare-fun mapDefault!58636 () ValueCell!18067)

