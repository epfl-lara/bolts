; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98766 () Bool)

(assert start!98766)

(declare-fun b_free!24335 () Bool)

(declare-fun b_next!24335 () Bool)

(assert (=> start!98766 (= b_free!24335 (not b_next!24335))))

(declare-fun tp!85716 () Bool)

(declare-fun b_and!39533 () Bool)

(assert (=> start!98766 (= tp!85716 b_and!39533)))

(declare-fun b!1150358 () Bool)

(declare-fun res!765255 () Bool)

(declare-fun e!654337 () Bool)

(assert (=> b!1150358 (=> (not res!765255) (not e!654337))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1150358 (= res!765255 (validKeyInArray!0 k!934))))

(declare-fun res!765259 () Bool)

(assert (=> start!98766 (=> (not res!765259) (not e!654337))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!74534 0))(
  ( (array!74535 (arr!35914 (Array (_ BitVec 32) (_ BitVec 64))) (size!36451 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74534)

(assert (=> start!98766 (= res!765259 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36451 _keys!1208))))))

(assert (=> start!98766 e!654337))

(declare-fun tp_is_empty!28865 () Bool)

(assert (=> start!98766 tp_is_empty!28865))

(declare-fun array_inv!27386 (array!74534) Bool)

(assert (=> start!98766 (array_inv!27386 _keys!1208)))

(assert (=> start!98766 true))

(assert (=> start!98766 tp!85716))

(declare-datatypes ((V!43613 0))(
  ( (V!43614 (val!14489 Int)) )
))
(declare-datatypes ((ValueCell!13723 0))(
  ( (ValueCellFull!13723 (v!17127 V!43613)) (EmptyCell!13723) )
))
(declare-datatypes ((array!74536 0))(
  ( (array!74537 (arr!35915 (Array (_ BitVec 32) ValueCell!13723)) (size!36452 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74536)

(declare-fun e!654343 () Bool)

(declare-fun array_inv!27387 (array!74536) Bool)

(assert (=> start!98766 (and (array_inv!27387 _values!996) e!654343)))

(declare-fun b!1150359 () Bool)

(declare-fun res!765260 () Bool)

(assert (=> b!1150359 (=> (not res!765260) (not e!654337))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1150359 (= res!765260 (validMask!0 mask!1564))))

(declare-fun b!1150360 () Bool)

(declare-datatypes ((tuple2!18468 0))(
  ( (tuple2!18469 (_1!9244 (_ BitVec 64)) (_2!9244 V!43613)) )
))
(declare-datatypes ((List!25260 0))(
  ( (Nil!25257) (Cons!25256 (h!26465 tuple2!18468) (t!36594 List!25260)) )
))
(declare-datatypes ((ListLongMap!16449 0))(
  ( (ListLongMap!16450 (toList!8240 List!25260)) )
))
(declare-fun call!53563 () ListLongMap!16449)

(declare-fun contains!6735 (ListLongMap!16449 (_ BitVec 64)) Bool)

(assert (=> b!1150360 (contains!6735 call!53563 k!934)))

(declare-fun lt!514738 () ListLongMap!16449)

(declare-datatypes ((Unit!37748 0))(
  ( (Unit!37749) )
))
(declare-fun lt!514736 () Unit!37748)

(declare-fun minValue!944 () V!43613)

(declare-fun addStillContains!877 (ListLongMap!16449 (_ BitVec 64) V!43613 (_ BitVec 64)) Unit!37748)

(assert (=> b!1150360 (= lt!514736 (addStillContains!877 lt!514738 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!53566 () Bool)

(assert (=> b!1150360 call!53566))

(declare-fun lt!514741 () ListLongMap!16449)

(declare-fun zeroValue!944 () V!43613)

(declare-fun +!3577 (ListLongMap!16449 tuple2!18468) ListLongMap!16449)

(assert (=> b!1150360 (= lt!514738 (+!3577 lt!514741 (tuple2!18469 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!514744 () Unit!37748)

(declare-fun call!53562 () Unit!37748)

(assert (=> b!1150360 (= lt!514744 call!53562)))

(declare-fun e!654334 () Unit!37748)

(assert (=> b!1150360 (= e!654334 lt!514736)))

(declare-fun mapNonEmpty!45122 () Bool)

(declare-fun mapRes!45122 () Bool)

(declare-fun tp!85717 () Bool)

(declare-fun e!654341 () Bool)

(assert (=> mapNonEmpty!45122 (= mapRes!45122 (and tp!85717 e!654341))))

(declare-fun mapRest!45122 () (Array (_ BitVec 32) ValueCell!13723))

(declare-fun mapKey!45122 () (_ BitVec 32))

(declare-fun mapValue!45122 () ValueCell!13723)

(assert (=> mapNonEmpty!45122 (= (arr!35915 _values!996) (store mapRest!45122 mapKey!45122 mapValue!45122))))

(declare-fun b!1150361 () Bool)

(declare-fun e!654339 () Unit!37748)

(declare-fun lt!514749 () Unit!37748)

(assert (=> b!1150361 (= e!654339 lt!514749)))

(declare-fun call!53561 () Unit!37748)

(assert (=> b!1150361 (= lt!514749 call!53561)))

(declare-fun call!53567 () Bool)

(assert (=> b!1150361 call!53567))

(declare-fun b!1150362 () Bool)

(declare-fun e!654344 () Bool)

(declare-fun e!654329 () Bool)

(assert (=> b!1150362 (= e!654344 e!654329)))

(declare-fun res!765252 () Bool)

(assert (=> b!1150362 (=> res!765252 e!654329)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1150362 (= res!765252 (not (= from!1455 i!673)))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!514745 () ListLongMap!16449)

(declare-fun lt!514746 () array!74534)

(declare-fun lt!514739 () array!74536)

(declare-fun getCurrentListMapNoExtraKeys!4681 (array!74534 array!74536 (_ BitVec 32) (_ BitVec 32) V!43613 V!43613 (_ BitVec 32) Int) ListLongMap!16449)

(assert (=> b!1150362 (= lt!514745 (getCurrentListMapNoExtraKeys!4681 lt!514746 lt!514739 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!514737 () V!43613)

(assert (=> b!1150362 (= lt!514739 (array!74537 (store (arr!35915 _values!996) i!673 (ValueCellFull!13723 lt!514737)) (size!36452 _values!996)))))

(declare-fun dynLambda!2710 (Int (_ BitVec 64)) V!43613)

(assert (=> b!1150362 (= lt!514737 (dynLambda!2710 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!514750 () ListLongMap!16449)

(assert (=> b!1150362 (= lt!514750 (getCurrentListMapNoExtraKeys!4681 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1150363 () Bool)

(declare-fun e!654338 () Bool)

(assert (=> b!1150363 (= e!654337 e!654338)))

(declare-fun res!765249 () Bool)

(assert (=> b!1150363 (=> (not res!765249) (not e!654338))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74534 (_ BitVec 32)) Bool)

(assert (=> b!1150363 (= res!765249 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!514746 mask!1564))))

(assert (=> b!1150363 (= lt!514746 (array!74535 (store (arr!35914 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36451 _keys!1208)))))

(declare-fun bm!53558 () Bool)

(declare-fun call!53568 () ListLongMap!16449)

(assert (=> bm!53558 (= call!53568 call!53563)))

(declare-fun call!53565 () ListLongMap!16449)

(declare-fun bm!53559 () Bool)

(assert (=> bm!53559 (= call!53565 (getCurrentListMapNoExtraKeys!4681 lt!514746 lt!514739 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!654330 () Bool)

(declare-fun b!1150364 () Bool)

(declare-fun lt!514747 () ListLongMap!16449)

(assert (=> b!1150364 (= e!654330 (= lt!514747 (getCurrentListMapNoExtraKeys!4681 lt!514746 lt!514739 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1150365 () Bool)

(declare-fun c!113822 () Bool)

(declare-fun lt!514752 () Bool)

(assert (=> b!1150365 (= c!113822 (and (not lt!514752) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1150365 (= e!654334 e!654339)))

(declare-fun e!654333 () Bool)

(declare-fun b!1150366 () Bool)

(declare-fun arrayContainsKey!0 (array!74534 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1150366 (= e!654333 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun c!113826 () Bool)

(declare-fun bm!53560 () Bool)

(assert (=> bm!53560 (= call!53566 (contains!6735 (ite c!113826 lt!514738 call!53568) k!934))))

(declare-fun b!1150367 () Bool)

(declare-fun e!654335 () Unit!37748)

(assert (=> b!1150367 (= e!654339 e!654335)))

(declare-fun c!113823 () Bool)

(assert (=> b!1150367 (= c!113823 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!514752))))

(declare-fun call!53564 () ListLongMap!16449)

(declare-fun bm!53561 () Bool)

(assert (=> bm!53561 (= call!53564 (getCurrentListMapNoExtraKeys!4681 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1150368 () Bool)

(declare-fun res!765258 () Bool)

(assert (=> b!1150368 (=> (not res!765258) (not e!654337))))

(assert (=> b!1150368 (= res!765258 (and (= (size!36452 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36451 _keys!1208) (size!36452 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1150369 () Bool)

(declare-fun Unit!37750 () Unit!37748)

(assert (=> b!1150369 (= e!654335 Unit!37750)))

(declare-fun b!1150370 () Bool)

(declare-fun e!654340 () Bool)

(assert (=> b!1150370 (= e!654343 (and e!654340 mapRes!45122))))

(declare-fun condMapEmpty!45122 () Bool)

(declare-fun mapDefault!45122 () ValueCell!13723)

