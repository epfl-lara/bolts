; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98660 () Bool)

(assert start!98660)

(declare-fun b_free!24229 () Bool)

(declare-fun b_next!24229 () Bool)

(assert (=> start!98660 (= b_free!24229 (not b_next!24229))))

(declare-fun tp!85398 () Bool)

(declare-fun b_and!39321 () Bool)

(assert (=> start!98660 (= tp!85398 b_and!39321)))

(declare-fun bm!52286 () Bool)

(declare-datatypes ((Unit!37535 0))(
  ( (Unit!37536) )
))
(declare-fun call!52289 () Unit!37535)

(declare-fun call!52291 () Unit!37535)

(assert (=> bm!52286 (= call!52289 call!52291)))

(declare-fun bm!52287 () Bool)

(declare-datatypes ((V!43473 0))(
  ( (V!43474 (val!14436 Int)) )
))
(declare-datatypes ((tuple2!18366 0))(
  ( (tuple2!18367 (_1!9193 (_ BitVec 64)) (_2!9193 V!43473)) )
))
(declare-datatypes ((List!25165 0))(
  ( (Nil!25162) (Cons!25161 (h!26370 tuple2!18366) (t!36393 List!25165)) )
))
(declare-datatypes ((ListLongMap!16347 0))(
  ( (ListLongMap!16348 (toList!8189 List!25165)) )
))
(declare-fun call!52292 () ListLongMap!16347)

(declare-fun call!52295 () ListLongMap!16347)

(assert (=> bm!52287 (= call!52292 call!52295)))

(declare-fun c!112867 () Bool)

(declare-fun bm!52288 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun minValue!944 () V!43473)

(declare-fun lt!511362 () ListLongMap!16347)

(declare-fun zeroValue!944 () V!43473)

(declare-fun c!112871 () Bool)

(declare-fun lt!511364 () ListLongMap!16347)

(declare-fun addStillContains!830 (ListLongMap!16347 (_ BitVec 64) V!43473 (_ BitVec 64)) Unit!37535)

(assert (=> bm!52288 (= call!52291 (addStillContains!830 (ite c!112867 lt!511364 lt!511362) (ite c!112867 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!112871 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!112867 minValue!944 (ite c!112871 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1145482 () Bool)

(declare-fun res!762871 () Bool)

(declare-fun e!651642 () Bool)

(assert (=> b!1145482 (=> (not res!762871) (not e!651642))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1145482 (= res!762871 (validKeyInArray!0 k!934))))

(declare-fun b!1145483 () Bool)

(declare-datatypes ((array!74324 0))(
  ( (array!74325 (arr!35809 (Array (_ BitVec 32) (_ BitVec 64))) (size!36346 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74324)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun e!651633 () Bool)

(declare-fun arrayContainsKey!0 (array!74324 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1145483 (= e!651633 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1145484 () Bool)

(declare-fun e!651628 () Bool)

(declare-fun call!52294 () ListLongMap!16347)

(declare-fun call!52290 () ListLongMap!16347)

(assert (=> b!1145484 (= e!651628 (= call!52294 call!52290))))

(declare-fun b!1145485 () Bool)

(declare-fun contains!6690 (ListLongMap!16347 (_ BitVec 64)) Bool)

(assert (=> b!1145485 (contains!6690 call!52295 k!934)))

(declare-fun lt!511353 () Unit!37535)

(assert (=> b!1145485 (= lt!511353 call!52291)))

(declare-fun call!52293 () Bool)

(assert (=> b!1145485 call!52293))

(declare-fun +!3532 (ListLongMap!16347 tuple2!18366) ListLongMap!16347)

(assert (=> b!1145485 (= lt!511364 (+!3532 lt!511362 (tuple2!18367 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!511355 () Unit!37535)

(assert (=> b!1145485 (= lt!511355 (addStillContains!830 lt!511362 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun e!651640 () Unit!37535)

(assert (=> b!1145485 (= e!651640 lt!511353)))

(declare-fun b!1145486 () Bool)

(declare-fun -!1281 (ListLongMap!16347 (_ BitVec 64)) ListLongMap!16347)

(assert (=> b!1145486 (= e!651628 (= call!52294 (-!1281 call!52290 k!934)))))

(declare-fun b!1145487 () Bool)

(declare-fun e!651639 () Bool)

(declare-fun tp_is_empty!28759 () Bool)

(assert (=> b!1145487 (= e!651639 tp_is_empty!28759)))

(declare-fun bm!52289 () Bool)

(assert (=> bm!52289 (= call!52293 (contains!6690 (ite c!112867 lt!511364 call!52292) k!934))))

(declare-fun b!1145489 () Bool)

(declare-fun call!52296 () Bool)

(assert (=> b!1145489 call!52296))

(declare-fun lt!511351 () Unit!37535)

(assert (=> b!1145489 (= lt!511351 call!52289)))

(declare-fun e!651635 () Unit!37535)

(assert (=> b!1145489 (= e!651635 lt!511351)))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun bm!52290 () Bool)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13670 0))(
  ( (ValueCellFull!13670 (v!17074 V!43473)) (EmptyCell!13670) )
))
(declare-datatypes ((array!74326 0))(
  ( (array!74327 (arr!35810 (Array (_ BitVec 32) ValueCell!13670)) (size!36347 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74326)

(declare-fun getCurrentListMapNoExtraKeys!4631 (array!74324 array!74326 (_ BitVec 32) (_ BitVec 32) V!43473 V!43473 (_ BitVec 32) Int) ListLongMap!16347)

(assert (=> bm!52290 (= call!52290 (getCurrentListMapNoExtraKeys!4631 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1145490 () Bool)

(declare-fun e!651636 () Unit!37535)

(assert (=> b!1145490 (= e!651636 e!651635)))

(declare-fun c!112870 () Bool)

(declare-fun lt!511367 () Bool)

(assert (=> b!1145490 (= c!112870 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!511367))))

(declare-fun mapIsEmpty!44963 () Bool)

(declare-fun mapRes!44963 () Bool)

(assert (=> mapIsEmpty!44963 mapRes!44963))

(declare-fun e!651638 () Bool)

(declare-fun b!1145491 () Bool)

(declare-fun lt!511358 () ListLongMap!16347)

(assert (=> b!1145491 (= e!651638 (= (-!1281 lt!511358 k!934) lt!511362))))

(declare-fun b!1145492 () Bool)

(declare-fun e!651629 () Bool)

(declare-fun e!651641 () Bool)

(assert (=> b!1145492 (= e!651629 e!651641)))

(declare-fun res!762878 () Bool)

(assert (=> b!1145492 (=> res!762878 e!651641)))

(assert (=> b!1145492 (= res!762878 (not (= (select (arr!35809 _keys!1208) from!1455) k!934)))))

(assert (=> b!1145492 e!651628))

(declare-fun c!112868 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1145492 (= c!112868 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!511366 () Unit!37535)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!534 (array!74324 array!74326 (_ BitVec 32) (_ BitVec 32) V!43473 V!43473 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37535)

(assert (=> b!1145492 (= lt!511366 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!534 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1145493 () Bool)

(declare-fun res!762875 () Bool)

(assert (=> b!1145493 (=> (not res!762875) (not e!651642))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1145493 (= res!762875 (validMask!0 mask!1564))))

(declare-fun b!1145494 () Bool)

(declare-fun e!651637 () Bool)

(assert (=> b!1145494 (= e!651637 (and e!651639 mapRes!44963))))

(declare-fun condMapEmpty!44963 () Bool)

(declare-fun mapDefault!44963 () ValueCell!13670)

