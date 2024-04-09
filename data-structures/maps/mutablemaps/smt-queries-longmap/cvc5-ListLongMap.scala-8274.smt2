; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100750 () Bool)

(assert start!100750)

(declare-fun b_free!25915 () Bool)

(declare-fun b_next!25915 () Bool)

(assert (=> start!100750 (= b_free!25915 (not b_next!25915))))

(declare-fun tp!90746 () Bool)

(declare-fun b_and!42809 () Bool)

(assert (=> start!100750 (= tp!90746 b_and!42809)))

(declare-fun b!1204692 () Bool)

(declare-fun e!684173 () Bool)

(declare-fun e!684169 () Bool)

(assert (=> b!1204692 (= e!684173 (not e!684169))))

(declare-fun res!801498 () Bool)

(assert (=> b!1204692 (=> res!801498 e!684169)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1204692 (= res!801498 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!77994 0))(
  ( (array!77995 (arr!37635 (Array (_ BitVec 32) (_ BitVec 64))) (size!38172 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77994)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77994 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1204692 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39867 0))(
  ( (Unit!39868) )
))
(declare-fun lt!546314 () Unit!39867)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77994 (_ BitVec 64) (_ BitVec 32)) Unit!39867)

(assert (=> b!1204692 (= lt!546314 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1204694 () Bool)

(declare-fun e!684164 () Unit!39867)

(declare-fun e!684170 () Unit!39867)

(assert (=> b!1204694 (= e!684164 e!684170)))

(declare-fun c!118095 () Bool)

(declare-fun lt!546323 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1204694 (= c!118095 (and (not lt!546323) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1204695 () Bool)

(declare-fun e!684167 () Bool)

(assert (=> b!1204695 (= e!684167 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!546323) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!45953 0))(
  ( (V!45954 (val!15366 Int)) )
))
(declare-fun zeroValue!944 () V!45953)

(declare-fun c!118099 () Bool)

(declare-datatypes ((tuple2!19840 0))(
  ( (tuple2!19841 (_1!9930 (_ BitVec 64)) (_2!9930 V!45953)) )
))
(declare-datatypes ((List!26667 0))(
  ( (Nil!26664) (Cons!26663 (h!27872 tuple2!19840) (t!39569 List!26667)) )
))
(declare-datatypes ((ListLongMap!17821 0))(
  ( (ListLongMap!17822 (toList!8926 List!26667)) )
))
(declare-fun lt!546321 () ListLongMap!17821)

(declare-fun bm!58284 () Bool)

(declare-fun minValue!944 () V!45953)

(declare-fun lt!546310 () ListLongMap!17821)

(declare-fun call!58294 () Unit!39867)

(declare-fun addStillContains!1024 (ListLongMap!17821 (_ BitVec 64) V!45953 (_ BitVec 64)) Unit!39867)

(assert (=> bm!58284 (= call!58294 (addStillContains!1024 (ite c!118099 lt!546321 lt!546310) (ite c!118099 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!118095 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!118099 minValue!944 (ite c!118095 zeroValue!944 minValue!944)) k!934))))

(declare-fun bm!58285 () Bool)

(declare-fun call!58290 () Bool)

(declare-fun call!58287 () ListLongMap!17821)

(declare-fun contains!6930 (ListLongMap!17821 (_ BitVec 64)) Bool)

(assert (=> bm!58285 (= call!58290 (contains!6930 (ite c!118099 lt!546321 call!58287) k!934))))

(declare-fun lt!546320 () array!77994)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!58286 () Bool)

(declare-fun call!58293 () ListLongMap!17821)

(declare-datatypes ((ValueCell!14600 0))(
  ( (ValueCellFull!14600 (v!18010 V!45953)) (EmptyCell!14600) )
))
(declare-datatypes ((array!77996 0))(
  ( (array!77997 (arr!37636 (Array (_ BitVec 32) ValueCell!14600)) (size!38173 (_ BitVec 32))) )
))
(declare-fun lt!546312 () array!77996)

(declare-fun getCurrentListMapNoExtraKeys!5335 (array!77994 array!77996 (_ BitVec 32) (_ BitVec 32) V!45953 V!45953 (_ BitVec 32) Int) ListLongMap!17821)

(assert (=> bm!58286 (= call!58293 (getCurrentListMapNoExtraKeys!5335 lt!546320 lt!546312 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1204696 () Bool)

(declare-fun e!684168 () Bool)

(assert (=> b!1204696 (= e!684168 e!684173)))

(declare-fun res!801495 () Bool)

(assert (=> b!1204696 (=> (not res!801495) (not e!684173))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77994 (_ BitVec 32)) Bool)

(assert (=> b!1204696 (= res!801495 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!546320 mask!1564))))

(assert (=> b!1204696 (= lt!546320 (array!77995 (store (arr!37635 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38172 _keys!1208)))))

(declare-fun b!1204697 () Bool)

(declare-fun call!58289 () Bool)

(assert (=> b!1204697 call!58289))

(declare-fun lt!546319 () Unit!39867)

(declare-fun call!58288 () Unit!39867)

(assert (=> b!1204697 (= lt!546319 call!58288)))

(assert (=> b!1204697 (= e!684170 lt!546319)))

(declare-fun b!1204698 () Bool)

(assert (=> b!1204698 (= e!684167 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun _values!996 () array!77996)

(declare-fun call!58292 () ListLongMap!17821)

(declare-fun bm!58287 () Bool)

(assert (=> bm!58287 (= call!58292 (getCurrentListMapNoExtraKeys!5335 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1204699 () Bool)

(declare-fun res!801501 () Bool)

(assert (=> b!1204699 (=> (not res!801501) (not e!684168))))

(assert (=> b!1204699 (= res!801501 (= (select (arr!37635 _keys!1208) i!673) k!934))))

(declare-fun b!1204700 () Bool)

(declare-fun lt!546322 () Unit!39867)

(assert (=> b!1204700 (= e!684164 lt!546322)))

(declare-fun lt!546315 () Unit!39867)

(assert (=> b!1204700 (= lt!546315 (addStillContains!1024 lt!546310 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun +!3960 (ListLongMap!17821 tuple2!19840) ListLongMap!17821)

(assert (=> b!1204700 (= lt!546321 (+!3960 lt!546310 (tuple2!19841 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(assert (=> b!1204700 call!58290))

(assert (=> b!1204700 (= lt!546322 call!58294)))

(declare-fun call!58291 () ListLongMap!17821)

(assert (=> b!1204700 (contains!6930 call!58291 k!934)))

(declare-fun b!1204701 () Bool)

(declare-fun e!684162 () Bool)

(declare-fun -!1841 (ListLongMap!17821 (_ BitVec 64)) ListLongMap!17821)

(assert (=> b!1204701 (= e!684162 (= call!58293 (-!1841 call!58292 k!934)))))

(declare-fun b!1204702 () Bool)

(declare-fun res!801499 () Bool)

(assert (=> b!1204702 (=> (not res!801499) (not e!684168))))

(assert (=> b!1204702 (= res!801499 (and (= (size!38173 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38172 _keys!1208) (size!38173 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1204703 () Bool)

(declare-fun e!684171 () Unit!39867)

(declare-fun lt!546311 () Unit!39867)

(assert (=> b!1204703 (= e!684171 lt!546311)))

(assert (=> b!1204703 (= lt!546311 call!58288)))

(assert (=> b!1204703 call!58289))

(declare-fun res!801496 () Bool)

(assert (=> start!100750 (=> (not res!801496) (not e!684168))))

(assert (=> start!100750 (= res!801496 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38172 _keys!1208))))))

(assert (=> start!100750 e!684168))

(declare-fun tp_is_empty!30619 () Bool)

(assert (=> start!100750 tp_is_empty!30619))

(declare-fun array_inv!28576 (array!77994) Bool)

(assert (=> start!100750 (array_inv!28576 _keys!1208)))

(assert (=> start!100750 true))

(assert (=> start!100750 tp!90746))

(declare-fun e!684160 () Bool)

(declare-fun array_inv!28577 (array!77996) Bool)

(assert (=> start!100750 (and (array_inv!28577 _values!996) e!684160)))

(declare-fun b!1204693 () Bool)

(declare-fun e!684163 () Bool)

(assert (=> b!1204693 (= e!684163 tp_is_empty!30619)))

(declare-fun b!1204704 () Bool)

(declare-fun Unit!39869 () Unit!39867)

(assert (=> b!1204704 (= e!684171 Unit!39869)))

(declare-fun b!1204705 () Bool)

(declare-fun e!684165 () Bool)

(declare-fun e!684174 () Bool)

(assert (=> b!1204705 (= e!684165 e!684174)))

(declare-fun res!801507 () Bool)

(assert (=> b!1204705 (=> res!801507 e!684174)))

(assert (=> b!1204705 (= res!801507 (not (contains!6930 lt!546310 k!934)))))

(assert (=> b!1204705 (= lt!546310 (getCurrentListMapNoExtraKeys!5335 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1204706 () Bool)

(declare-fun res!801503 () Bool)

(assert (=> b!1204706 (=> (not res!801503) (not e!684168))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1204706 (= res!801503 (validKeyInArray!0 k!934))))

(declare-fun b!1204707 () Bool)

(declare-fun res!801497 () Bool)

(assert (=> b!1204707 (=> (not res!801497) (not e!684168))))

(assert (=> b!1204707 (= res!801497 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38172 _keys!1208))))))

(declare-fun b!1204708 () Bool)

(declare-fun e!684159 () Bool)

(assert (=> b!1204708 (= e!684169 e!684159)))

(declare-fun res!801509 () Bool)

(assert (=> b!1204708 (=> res!801509 e!684159)))

(assert (=> b!1204708 (= res!801509 (not (= from!1455 i!673)))))

(declare-fun lt!546313 () ListLongMap!17821)

(assert (=> b!1204708 (= lt!546313 (getCurrentListMapNoExtraKeys!5335 lt!546320 lt!546312 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3257 (Int (_ BitVec 64)) V!45953)

(assert (=> b!1204708 (= lt!546312 (array!77997 (store (arr!37636 _values!996) i!673 (ValueCellFull!14600 (dynLambda!3257 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38173 _values!996)))))

(declare-fun lt!546318 () ListLongMap!17821)

(assert (=> b!1204708 (= lt!546318 (getCurrentListMapNoExtraKeys!5335 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1204709 () Bool)

(assert (=> b!1204709 (= e!684159 e!684165)))

(declare-fun res!801504 () Bool)

(assert (=> b!1204709 (=> res!801504 e!684165)))

(assert (=> b!1204709 (= res!801504 (not (= (select (arr!37635 _keys!1208) from!1455) k!934)))))

(assert (=> b!1204709 e!684162))

(declare-fun c!118097 () Bool)

(assert (=> b!1204709 (= c!118097 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!546324 () Unit!39867)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1045 (array!77994 array!77996 (_ BitVec 32) (_ BitVec 32) V!45953 V!45953 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39867)

(assert (=> b!1204709 (= lt!546324 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1045 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1204710 () Bool)

(declare-fun res!801502 () Bool)

(assert (=> b!1204710 (=> (not res!801502) (not e!684168))))

(declare-datatypes ((List!26668 0))(
  ( (Nil!26665) (Cons!26664 (h!27873 (_ BitVec 64)) (t!39570 List!26668)) )
))
(declare-fun arrayNoDuplicates!0 (array!77994 (_ BitVec 32) List!26668) Bool)

(assert (=> b!1204710 (= res!801502 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26665))))

(declare-fun b!1204711 () Bool)

(declare-fun e!684166 () Bool)

(assert (=> b!1204711 (= e!684166 tp_is_empty!30619)))

(declare-fun b!1204712 () Bool)

(declare-fun mapRes!47781 () Bool)

(assert (=> b!1204712 (= e!684160 (and e!684163 mapRes!47781))))

(declare-fun condMapEmpty!47781 () Bool)

(declare-fun mapDefault!47781 () ValueCell!14600)

