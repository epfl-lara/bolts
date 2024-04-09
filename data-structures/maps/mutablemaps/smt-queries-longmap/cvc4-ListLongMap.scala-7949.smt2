; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98574 () Bool)

(assert start!98574)

(declare-fun b_free!24143 () Bool)

(declare-fun b_next!24143 () Bool)

(assert (=> start!98574 (= b_free!24143 (not b_next!24143))))

(declare-fun tp!85141 () Bool)

(declare-fun b_and!39149 () Bool)

(assert (=> start!98574 (= tp!85141 b_and!39149)))

(declare-fun b!1141608 () Bool)

(declare-fun res!761013 () Bool)

(declare-fun e!649526 () Bool)

(assert (=> b!1141608 (=> (not res!761013) (not e!649526))))

(declare-datatypes ((array!74156 0))(
  ( (array!74157 (arr!35725 (Array (_ BitVec 32) (_ BitVec 64))) (size!36262 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74156)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74156 (_ BitVec 32)) Bool)

(assert (=> b!1141608 (= res!761013 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1141609 () Bool)

(declare-datatypes ((V!43357 0))(
  ( (V!43358 (val!14393 Int)) )
))
(declare-datatypes ((tuple2!18292 0))(
  ( (tuple2!18293 (_1!9156 (_ BitVec 64)) (_2!9156 V!43357)) )
))
(declare-datatypes ((List!25093 0))(
  ( (Nil!25090) (Cons!25089 (h!26298 tuple2!18292) (t!36235 List!25093)) )
))
(declare-datatypes ((ListLongMap!16273 0))(
  ( (ListLongMap!16274 (toList!8152 List!25093)) )
))
(declare-fun call!51264 () ListLongMap!16273)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6657 (ListLongMap!16273 (_ BitVec 64)) Bool)

(assert (=> b!1141609 (contains!6657 call!51264 k!934)))

(declare-datatypes ((Unit!37373 0))(
  ( (Unit!37374) )
))
(declare-fun lt!508652 () Unit!37373)

(declare-fun call!51258 () Unit!37373)

(assert (=> b!1141609 (= lt!508652 call!51258)))

(declare-fun call!51257 () Bool)

(assert (=> b!1141609 call!51257))

(declare-fun lt!508647 () ListLongMap!16273)

(declare-fun lt!508646 () ListLongMap!16273)

(declare-fun zeroValue!944 () V!43357)

(declare-fun +!3497 (ListLongMap!16273 tuple2!18292) ListLongMap!16273)

(assert (=> b!1141609 (= lt!508647 (+!3497 lt!508646 (tuple2!18293 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!508660 () Unit!37373)

(declare-fun addStillContains!798 (ListLongMap!16273 (_ BitVec 64) V!43357 (_ BitVec 64)) Unit!37373)

(assert (=> b!1141609 (= lt!508660 (addStillContains!798 lt!508646 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun e!649518 () Unit!37373)

(assert (=> b!1141609 (= e!649518 lt!508652)))

(declare-fun mapNonEmpty!44834 () Bool)

(declare-fun mapRes!44834 () Bool)

(declare-fun tp!85140 () Bool)

(declare-fun e!649519 () Bool)

(assert (=> mapNonEmpty!44834 (= mapRes!44834 (and tp!85140 e!649519))))

(declare-datatypes ((ValueCell!13627 0))(
  ( (ValueCellFull!13627 (v!17031 V!43357)) (EmptyCell!13627) )
))
(declare-fun mapRest!44834 () (Array (_ BitVec 32) ValueCell!13627))

(declare-fun mapKey!44834 () (_ BitVec 32))

(declare-fun mapValue!44834 () ValueCell!13627)

(declare-datatypes ((array!74158 0))(
  ( (array!74159 (arr!35726 (Array (_ BitVec 32) ValueCell!13627)) (size!36263 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74158)

(assert (=> mapNonEmpty!44834 (= (arr!35726 _values!996) (store mapRest!44834 mapKey!44834 mapValue!44834))))

(declare-fun b!1141610 () Bool)

(declare-fun e!649525 () Bool)

(declare-fun e!649522 () Bool)

(assert (=> b!1141610 (= e!649525 e!649522)))

(declare-fun res!761015 () Bool)

(assert (=> b!1141610 (=> res!761015 e!649522)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1141610 (= res!761015 (not (= (select (arr!35725 _keys!1208) from!1455) k!934)))))

(declare-fun e!649524 () Bool)

(assert (=> b!1141610 e!649524))

(declare-fun c!112096 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1141610 (= c!112096 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43357)

(declare-fun lt!508648 () Unit!37373)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!505 (array!74156 array!74158 (_ BitVec 32) (_ BitVec 32) V!43357 V!43357 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37373)

(assert (=> b!1141610 (= lt!508648 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!505 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!649516 () Bool)

(declare-fun b!1141611 () Bool)

(declare-fun arrayContainsKey!0 (array!74156 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1141611 (= e!649516 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1141612 () Bool)

(declare-fun e!649520 () Bool)

(declare-fun tp_is_empty!28673 () Bool)

(assert (=> b!1141612 (= e!649520 tp_is_empty!28673)))

(declare-fun b!1141613 () Bool)

(declare-fun res!761017 () Bool)

(assert (=> b!1141613 (=> (not res!761017) (not e!649526))))

(assert (=> b!1141613 (= res!761017 (and (= (size!36263 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36262 _keys!1208) (size!36263 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!51254 () Bool)

(declare-fun call!51262 () Bool)

(assert (=> bm!51254 (= call!51262 call!51257)))

(declare-fun b!1141614 () Bool)

(declare-fun e!649521 () Unit!37373)

(declare-fun e!649517 () Unit!37373)

(assert (=> b!1141614 (= e!649521 e!649517)))

(declare-fun c!112095 () Bool)

(declare-fun lt!508643 () Bool)

(assert (=> b!1141614 (= c!112095 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!508643))))

(declare-fun b!1141615 () Bool)

(declare-fun e!649528 () Bool)

(assert (=> b!1141615 (= e!649528 (and e!649520 mapRes!44834))))

(declare-fun condMapEmpty!44834 () Bool)

(declare-fun mapDefault!44834 () ValueCell!13627)

