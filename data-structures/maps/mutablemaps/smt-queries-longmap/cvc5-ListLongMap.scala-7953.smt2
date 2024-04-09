; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98594 () Bool)

(assert start!98594)

(declare-fun b_free!24163 () Bool)

(declare-fun b_next!24163 () Bool)

(assert (=> start!98594 (= b_free!24163 (not b_next!24163))))

(declare-fun tp!85201 () Bool)

(declare-fun b_and!39189 () Bool)

(assert (=> start!98594 (= tp!85201 b_and!39189)))

(declare-fun b!1142498 () Bool)

(declare-fun res!761438 () Bool)

(declare-fun e!650001 () Bool)

(assert (=> b!1142498 (=> (not res!761438) (not e!650001))))

(declare-datatypes ((array!74196 0))(
  ( (array!74197 (arr!35745 (Array (_ BitVec 32) (_ BitVec 64))) (size!36282 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74196)

(declare-datatypes ((List!25111 0))(
  ( (Nil!25108) (Cons!25107 (h!26316 (_ BitVec 64)) (t!36273 List!25111)) )
))
(declare-fun arrayNoDuplicates!0 (array!74196 (_ BitVec 32) List!25111) Bool)

(assert (=> b!1142498 (= res!761438 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25108))))

(declare-fun b!1142499 () Bool)

(declare-fun e!650002 () Bool)

(declare-fun tp_is_empty!28693 () Bool)

(assert (=> b!1142499 (= e!650002 tp_is_empty!28693)))

(declare-fun b!1142500 () Bool)

(declare-datatypes ((Unit!37407 0))(
  ( (Unit!37408) )
))
(declare-fun e!650007 () Unit!37407)

(declare-fun lt!509289 () Unit!37407)

(assert (=> b!1142500 (= e!650007 lt!509289)))

(declare-fun call!51499 () Unit!37407)

(assert (=> b!1142500 (= lt!509289 call!51499)))

(declare-fun call!51504 () Bool)

(assert (=> b!1142500 call!51504))

(declare-fun b!1142501 () Bool)

(assert (=> b!1142501 call!51504))

(declare-fun lt!509290 () Unit!37407)

(assert (=> b!1142501 (= lt!509290 call!51499)))

(declare-fun e!650003 () Unit!37407)

(assert (=> b!1142501 (= e!650003 lt!509290)))

(declare-fun b!1142502 () Bool)

(declare-fun res!761441 () Bool)

(assert (=> b!1142502 (=> (not res!761441) (not e!650001))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1142502 (= res!761441 (= (select (arr!35745 _keys!1208) i!673) k!934))))

(declare-fun b!1142504 () Bool)

(declare-fun e!650009 () Bool)

(declare-fun e!650010 () Bool)

(assert (=> b!1142504 (= e!650009 e!650010)))

(declare-fun res!761432 () Bool)

(assert (=> b!1142504 (=> res!761432 e!650010)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1142504 (= res!761432 (not (= from!1455 i!673)))))

(declare-datatypes ((V!43385 0))(
  ( (V!43386 (val!14403 Int)) )
))
(declare-fun zeroValue!944 () V!43385)

(declare-datatypes ((tuple2!18312 0))(
  ( (tuple2!18313 (_1!9166 (_ BitVec 64)) (_2!9166 V!43385)) )
))
(declare-datatypes ((List!25112 0))(
  ( (Nil!25109) (Cons!25108 (h!26317 tuple2!18312) (t!36274 List!25112)) )
))
(declare-datatypes ((ListLongMap!16293 0))(
  ( (ListLongMap!16294 (toList!8162 List!25112)) )
))
(declare-fun lt!509283 () ListLongMap!16293)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!509291 () array!74196)

(declare-datatypes ((ValueCell!13637 0))(
  ( (ValueCellFull!13637 (v!17041 V!43385)) (EmptyCell!13637) )
))
(declare-datatypes ((array!74198 0))(
  ( (array!74199 (arr!35746 (Array (_ BitVec 32) ValueCell!13637)) (size!36283 (_ BitVec 32))) )
))
(declare-fun lt!509279 () array!74198)

(declare-fun minValue!944 () V!43385)

(declare-fun getCurrentListMapNoExtraKeys!4605 (array!74196 array!74198 (_ BitVec 32) (_ BitVec 32) V!43385 V!43385 (_ BitVec 32) Int) ListLongMap!16293)

(assert (=> b!1142504 (= lt!509283 (getCurrentListMapNoExtraKeys!4605 lt!509291 lt!509279 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!509280 () V!43385)

(declare-fun _values!996 () array!74198)

(assert (=> b!1142504 (= lt!509279 (array!74199 (store (arr!35746 _values!996) i!673 (ValueCellFull!13637 lt!509280)) (size!36283 _values!996)))))

(declare-fun dynLambda!2654 (Int (_ BitVec 64)) V!43385)

(assert (=> b!1142504 (= lt!509280 (dynLambda!2654 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!509284 () ListLongMap!16293)

(assert (=> b!1142504 (= lt!509284 (getCurrentListMapNoExtraKeys!4605 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1142505 () Bool)

(declare-fun e!650000 () Bool)

(assert (=> b!1142505 (= e!650010 e!650000)))

(declare-fun res!761443 () Bool)

(assert (=> b!1142505 (=> res!761443 e!650000)))

(assert (=> b!1142505 (= res!761443 (not (= (select (arr!35745 _keys!1208) from!1455) k!934)))))

(declare-fun e!649995 () Bool)

(assert (=> b!1142505 e!649995))

(declare-fun c!112274 () Bool)

(assert (=> b!1142505 (= c!112274 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!509281 () Unit!37407)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!511 (array!74196 array!74198 (_ BitVec 32) (_ BitVec 32) V!43385 V!43385 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37407)

(assert (=> b!1142505 (= lt!509281 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!511 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!51494 () Bool)

(declare-fun call!51497 () Unit!37407)

(assert (=> bm!51494 (= call!51499 call!51497)))

(declare-fun c!112273 () Bool)

(declare-fun call!51501 () ListLongMap!16293)

(declare-fun c!112276 () Bool)

(declare-fun lt!509272 () ListLongMap!16293)

(declare-fun bm!51495 () Bool)

(declare-fun +!3506 (ListLongMap!16293 tuple2!18312) ListLongMap!16293)

(assert (=> bm!51495 (= call!51501 (+!3506 lt!509272 (ite (or c!112276 c!112273) (tuple2!18313 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18313 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1142506 () Bool)

(declare-fun lt!509288 () ListLongMap!16293)

(declare-fun contains!6665 (ListLongMap!16293 (_ BitVec 64)) Bool)

(assert (=> b!1142506 (contains!6665 (+!3506 lt!509288 (tuple2!18313 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!509277 () Unit!37407)

(declare-fun addStillContains!804 (ListLongMap!16293 (_ BitVec 64) V!43385 (_ BitVec 64)) Unit!37407)

(assert (=> b!1142506 (= lt!509277 (addStillContains!804 lt!509288 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!51498 () Bool)

(assert (=> b!1142506 call!51498))

(assert (=> b!1142506 (= lt!509288 call!51501)))

(declare-fun lt!509278 () Unit!37407)

(assert (=> b!1142506 (= lt!509278 call!51497)))

(declare-fun e!650005 () Unit!37407)

(assert (=> b!1142506 (= e!650005 lt!509277)))

(declare-fun b!1142507 () Bool)

(assert (=> b!1142507 (= e!650000 true)))

(declare-fun lt!509292 () V!43385)

(declare-fun -!1256 (ListLongMap!16293 (_ BitVec 64)) ListLongMap!16293)

(assert (=> b!1142507 (= (-!1256 (+!3506 lt!509272 (tuple2!18313 (select (arr!35745 _keys!1208) from!1455) lt!509292)) (select (arr!35745 _keys!1208) from!1455)) lt!509272)))

(declare-fun lt!509286 () Unit!37407)

(declare-fun addThenRemoveForNewKeyIsSame!111 (ListLongMap!16293 (_ BitVec 64) V!43385) Unit!37407)

(assert (=> b!1142507 (= lt!509286 (addThenRemoveForNewKeyIsSame!111 lt!509272 (select (arr!35745 _keys!1208) from!1455) lt!509292))))

(declare-fun get!18187 (ValueCell!13637 V!43385) V!43385)

(assert (=> b!1142507 (= lt!509292 (get!18187 (select (arr!35746 _values!996) from!1455) lt!509280))))

(declare-fun lt!509274 () Unit!37407)

(declare-fun e!649999 () Unit!37407)

(assert (=> b!1142507 (= lt!509274 e!649999)))

(declare-fun c!112278 () Bool)

(assert (=> b!1142507 (= c!112278 (contains!6665 lt!509272 k!934))))

(assert (=> b!1142507 (= lt!509272 (getCurrentListMapNoExtraKeys!4605 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1142508 () Bool)

(declare-fun e!649998 () Bool)

(declare-fun e!649997 () Bool)

(declare-fun mapRes!44864 () Bool)

(assert (=> b!1142508 (= e!649998 (and e!649997 mapRes!44864))))

(declare-fun condMapEmpty!44864 () Bool)

(declare-fun mapDefault!44864 () ValueCell!13637)

