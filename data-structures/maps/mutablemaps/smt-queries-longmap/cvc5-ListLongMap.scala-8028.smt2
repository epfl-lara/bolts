; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99044 () Bool)

(assert start!99044)

(declare-fun b_free!24613 () Bool)

(declare-fun b_next!24613 () Bool)

(assert (=> start!99044 (= b_free!24613 (not b_next!24613))))

(declare-fun tp!86551 () Bool)

(declare-fun b_and!40089 () Bool)

(assert (=> start!99044 (= tp!86551 b_and!40089)))

(declare-fun mapIsEmpty!45539 () Bool)

(declare-fun mapRes!45539 () Bool)

(assert (=> mapIsEmpty!45539 mapRes!45539))

(declare-datatypes ((array!75076 0))(
  ( (array!75077 (arr!36185 (Array (_ BitVec 32) (_ BitVec 64))) (size!36722 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75076)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1163146 () Bool)

(declare-fun e!661421 () Bool)

(declare-fun arrayContainsKey!0 (array!75076 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1163146 (= e!661421 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1163147 () Bool)

(declare-fun e!661431 () Bool)

(declare-fun tp_is_empty!29143 () Bool)

(assert (=> b!1163147 (= e!661431 tp_is_empty!29143)))

(declare-fun b!1163148 () Bool)

(declare-fun e!661419 () Bool)

(declare-fun e!661418 () Bool)

(assert (=> b!1163148 (= e!661419 e!661418)))

(declare-fun res!771516 () Bool)

(assert (=> b!1163148 (=> res!771516 e!661418)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1163148 (= res!771516 (not (= from!1455 i!673)))))

(declare-datatypes ((V!43985 0))(
  ( (V!43986 (val!14628 Int)) )
))
(declare-fun zeroValue!944 () V!43985)

(declare-fun lt!523921 () array!75076)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13862 0))(
  ( (ValueCellFull!13862 (v!17266 V!43985)) (EmptyCell!13862) )
))
(declare-datatypes ((array!75078 0))(
  ( (array!75079 (arr!36186 (Array (_ BitVec 32) ValueCell!13862)) (size!36723 (_ BitVec 32))) )
))
(declare-fun lt!523910 () array!75078)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43985)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!18726 0))(
  ( (tuple2!18727 (_1!9373 (_ BitVec 64)) (_2!9373 V!43985)) )
))
(declare-datatypes ((List!25502 0))(
  ( (Nil!25499) (Cons!25498 (h!26707 tuple2!18726) (t!37114 List!25502)) )
))
(declare-datatypes ((ListLongMap!16707 0))(
  ( (ListLongMap!16708 (toList!8369 List!25502)) )
))
(declare-fun lt!523928 () ListLongMap!16707)

(declare-fun getCurrentListMapNoExtraKeys!4803 (array!75076 array!75078 (_ BitVec 32) (_ BitVec 32) V!43985 V!43985 (_ BitVec 32) Int) ListLongMap!16707)

(assert (=> b!1163148 (= lt!523928 (getCurrentListMapNoExtraKeys!4803 lt!523921 lt!523910 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!523909 () V!43985)

(declare-fun _values!996 () array!75078)

(assert (=> b!1163148 (= lt!523910 (array!75079 (store (arr!36186 _values!996) i!673 (ValueCellFull!13862 lt!523909)) (size!36723 _values!996)))))

(declare-fun dynLambda!2800 (Int (_ BitVec 64)) V!43985)

(assert (=> b!1163148 (= lt!523909 (dynLambda!2800 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!523922 () ListLongMap!16707)

(assert (=> b!1163148 (= lt!523922 (getCurrentListMapNoExtraKeys!4803 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!56894 () Bool)

(declare-fun c!116323 () Bool)

(declare-datatypes ((Unit!38280 0))(
  ( (Unit!38281) )
))
(declare-fun call!56900 () Unit!38280)

(declare-fun lt!523927 () ListLongMap!16707)

(declare-fun c!116324 () Bool)

(declare-fun addStillContains!988 (ListLongMap!16707 (_ BitVec 64) V!43985 (_ BitVec 64)) Unit!38280)

(assert (=> bm!56894 (= call!56900 (addStillContains!988 lt!523927 (ite (or c!116324 c!116323) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!116324 c!116323) zeroValue!944 minValue!944) k!934))))

(declare-fun bm!56895 () Bool)

(declare-fun call!56904 () ListLongMap!16707)

(declare-fun +!3690 (ListLongMap!16707 tuple2!18726) ListLongMap!16707)

(assert (=> bm!56895 (= call!56904 (+!3690 lt!523927 (ite (or c!116324 c!116323) (tuple2!18727 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18727 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun call!56903 () Bool)

(declare-fun bm!56896 () Bool)

(declare-fun call!56901 () ListLongMap!16707)

(declare-fun lt!523915 () ListLongMap!16707)

(declare-fun contains!6847 (ListLongMap!16707 (_ BitVec 64)) Bool)

(assert (=> bm!56896 (= call!56903 (contains!6847 (ite c!116324 lt!523915 call!56901) k!934))))

(declare-fun bm!56897 () Bool)

(declare-fun call!56898 () ListLongMap!16707)

(declare-fun c!116325 () Bool)

(assert (=> bm!56897 (= call!56898 (getCurrentListMapNoExtraKeys!4803 (ite c!116325 lt!523921 _keys!1208) (ite c!116325 lt!523910 _values!996) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1163150 () Bool)

(declare-fun e!661429 () Bool)

(declare-fun e!661420 () Bool)

(assert (=> b!1163150 (= e!661429 e!661420)))

(declare-fun res!771509 () Bool)

(assert (=> b!1163150 (=> (not res!771509) (not e!661420))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75076 (_ BitVec 32)) Bool)

(assert (=> b!1163150 (= res!771509 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!523921 mask!1564))))

(assert (=> b!1163150 (= lt!523921 (array!75077 (store (arr!36185 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36722 _keys!1208)))))

(declare-fun b!1163151 () Bool)

(declare-fun res!771512 () Bool)

(assert (=> b!1163151 (=> (not res!771512) (not e!661429))))

(assert (=> b!1163151 (= res!771512 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1163152 () Bool)

(declare-fun res!771515 () Bool)

(assert (=> b!1163152 (=> (not res!771515) (not e!661429))))

(assert (=> b!1163152 (= res!771515 (and (= (size!36723 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36722 _keys!1208) (size!36723 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1163153 () Bool)

(declare-fun e!661422 () Unit!38280)

(declare-fun lt!523923 () Unit!38280)

(assert (=> b!1163153 (= e!661422 lt!523923)))

(declare-fun call!56897 () Unit!38280)

(assert (=> b!1163153 (= lt!523923 call!56897)))

(declare-fun call!56902 () Bool)

(assert (=> b!1163153 call!56902))

(declare-fun b!1163154 () Bool)

(declare-fun res!771514 () Bool)

(assert (=> b!1163154 (=> (not res!771514) (not e!661429))))

(assert (=> b!1163154 (= res!771514 (= (select (arr!36185 _keys!1208) i!673) k!934))))

(declare-fun b!1163155 () Bool)

(declare-fun e!661424 () Bool)

(assert (=> b!1163155 (= e!661418 e!661424)))

(declare-fun res!771504 () Bool)

(assert (=> b!1163155 (=> res!771504 e!661424)))

(assert (=> b!1163155 (= res!771504 (not (= (select (arr!36185 _keys!1208) from!1455) k!934)))))

(declare-fun e!661426 () Bool)

(assert (=> b!1163155 e!661426))

(assert (=> b!1163155 (= c!116325 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!523916 () Unit!38280)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!659 (array!75076 array!75078 (_ BitVec 32) (_ BitVec 32) V!43985 V!43985 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38280)

(assert (=> b!1163155 (= lt!523916 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!659 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1163156 () Bool)

(declare-fun e!661428 () Unit!38280)

(assert (=> b!1163156 (= e!661422 e!661428)))

(declare-fun c!116328 () Bool)

(declare-fun lt!523926 () Bool)

(assert (=> b!1163156 (= c!116328 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!523926))))

(declare-fun b!1163157 () Bool)

(declare-fun e!661425 () Bool)

(declare-fun e!661434 () Bool)

(assert (=> b!1163157 (= e!661425 (and e!661434 mapRes!45539))))

(declare-fun condMapEmpty!45539 () Bool)

(declare-fun mapDefault!45539 () ValueCell!13862)

