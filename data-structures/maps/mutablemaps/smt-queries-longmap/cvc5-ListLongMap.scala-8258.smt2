; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100532 () Bool)

(assert start!100532)

(declare-fun b_free!25819 () Bool)

(declare-fun b_next!25819 () Bool)

(assert (=> start!100532 (= b_free!25819 (not b_next!25819))))

(declare-fun tp!90448 () Bool)

(declare-fun b_and!42539 () Bool)

(assert (=> start!100532 (= tp!90448 b_and!42539)))

(declare-fun b!1200362 () Bool)

(declare-fun res!799146 () Bool)

(declare-fun e!681722 () Bool)

(assert (=> b!1200362 (=> (not res!799146) (not e!681722))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1200362 (= res!799146 (validMask!0 mask!1564))))

(declare-fun b!1200363 () Bool)

(declare-fun e!681725 () Bool)

(declare-fun tp_is_empty!30523 () Bool)

(assert (=> b!1200363 (= e!681725 tp_is_empty!30523)))

(declare-datatypes ((V!45825 0))(
  ( (V!45826 (val!15318 Int)) )
))
(declare-datatypes ((tuple2!19748 0))(
  ( (tuple2!19749 (_1!9884 (_ BitVec 64)) (_2!9884 V!45825)) )
))
(declare-datatypes ((List!26582 0))(
  ( (Nil!26579) (Cons!26578 (h!27787 tuple2!19748) (t!39388 List!26582)) )
))
(declare-datatypes ((ListLongMap!17729 0))(
  ( (ListLongMap!17730 (toList!8880 List!26582)) )
))
(declare-fun call!57286 () ListLongMap!17729)

(declare-fun b!1200364 () Bool)

(declare-fun call!57285 () ListLongMap!17729)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun e!681720 () Bool)

(declare-fun -!1807 (ListLongMap!17729 (_ BitVec 64)) ListLongMap!17729)

(assert (=> b!1200364 (= e!681720 (= call!57286 (-!1807 call!57285 k!934)))))

(declare-fun b!1200365 () Bool)

(declare-fun e!681726 () Bool)

(assert (=> b!1200365 (= e!681726 tp_is_empty!30523)))

(declare-fun zeroValue!944 () V!45825)

(declare-datatypes ((array!77800 0))(
  ( (array!77801 (arr!37541 (Array (_ BitVec 32) (_ BitVec 64))) (size!38078 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77800)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14552 0))(
  ( (ValueCellFull!14552 (v!17957 V!45825)) (EmptyCell!14552) )
))
(declare-datatypes ((array!77802 0))(
  ( (array!77803 (arr!37542 (Array (_ BitVec 32) ValueCell!14552)) (size!38079 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77802)

(declare-fun minValue!944 () V!45825)

(declare-fun bm!57282 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!5293 (array!77800 array!77802 (_ BitVec 32) (_ BitVec 32) V!45825 V!45825 (_ BitVec 32) Int) ListLongMap!17729)

(assert (=> bm!57282 (= call!57285 (getCurrentListMapNoExtraKeys!5293 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1200366 () Bool)

(declare-fun res!799139 () Bool)

(assert (=> b!1200366 (=> (not res!799139) (not e!681722))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77800 (_ BitVec 32)) Bool)

(assert (=> b!1200366 (= res!799139 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1200367 () Bool)

(declare-fun res!799138 () Bool)

(assert (=> b!1200367 (=> (not res!799138) (not e!681722))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1200367 (= res!799138 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38078 _keys!1208))))))

(declare-fun b!1200368 () Bool)

(declare-fun res!799148 () Bool)

(assert (=> b!1200368 (=> (not res!799148) (not e!681722))))

(assert (=> b!1200368 (= res!799148 (= (select (arr!37541 _keys!1208) i!673) k!934))))

(declare-fun b!1200369 () Bool)

(declare-fun e!681719 () Bool)

(assert (=> b!1200369 (= e!681722 e!681719)))

(declare-fun res!799142 () Bool)

(assert (=> b!1200369 (=> (not res!799142) (not e!681719))))

(declare-fun lt!543988 () array!77800)

(assert (=> b!1200369 (= res!799142 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543988 mask!1564))))

(assert (=> b!1200369 (= lt!543988 (array!77801 (store (arr!37541 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38078 _keys!1208)))))

(declare-fun b!1200370 () Bool)

(declare-fun res!799141 () Bool)

(assert (=> b!1200370 (=> (not res!799141) (not e!681722))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1200370 (= res!799141 (validKeyInArray!0 k!934))))

(declare-fun b!1200371 () Bool)

(declare-fun res!799140 () Bool)

(assert (=> b!1200371 (=> (not res!799140) (not e!681722))))

(assert (=> b!1200371 (= res!799140 (and (= (size!38079 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38078 _keys!1208) (size!38079 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1200372 () Bool)

(declare-fun res!799144 () Bool)

(assert (=> b!1200372 (=> (not res!799144) (not e!681722))))

(declare-datatypes ((List!26583 0))(
  ( (Nil!26580) (Cons!26579 (h!27788 (_ BitVec 64)) (t!39389 List!26583)) )
))
(declare-fun arrayNoDuplicates!0 (array!77800 (_ BitVec 32) List!26583) Bool)

(assert (=> b!1200372 (= res!799144 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26580))))

(declare-fun lt!543991 () array!77802)

(declare-fun bm!57283 () Bool)

(assert (=> bm!57283 (= call!57286 (getCurrentListMapNoExtraKeys!5293 lt!543988 lt!543991 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1200373 () Bool)

(declare-fun e!681724 () Bool)

(assert (=> b!1200373 (= e!681719 (not e!681724))))

(declare-fun res!799145 () Bool)

(assert (=> b!1200373 (=> res!799145 e!681724)))

(assert (=> b!1200373 (= res!799145 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77800 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1200373 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39726 0))(
  ( (Unit!39727) )
))
(declare-fun lt!543986 () Unit!39726)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77800 (_ BitVec 64) (_ BitVec 32)) Unit!39726)

(assert (=> b!1200373 (= lt!543986 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1200374 () Bool)

(declare-fun e!681723 () Bool)

(assert (=> b!1200374 (= e!681724 e!681723)))

(declare-fun res!799143 () Bool)

(assert (=> b!1200374 (=> res!799143 e!681723)))

(assert (=> b!1200374 (= res!799143 (not (= from!1455 i!673)))))

(declare-fun lt!543989 () ListLongMap!17729)

(assert (=> b!1200374 (= lt!543989 (getCurrentListMapNoExtraKeys!5293 lt!543988 lt!543991 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3224 (Int (_ BitVec 64)) V!45825)

(assert (=> b!1200374 (= lt!543991 (array!77803 (store (arr!37542 _values!996) i!673 (ValueCellFull!14552 (dynLambda!3224 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38079 _values!996)))))

(declare-fun lt!543987 () ListLongMap!17729)

(assert (=> b!1200374 (= lt!543987 (getCurrentListMapNoExtraKeys!5293 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapIsEmpty!47627 () Bool)

(declare-fun mapRes!47627 () Bool)

(assert (=> mapIsEmpty!47627 mapRes!47627))

(declare-fun b!1200375 () Bool)

(declare-fun res!799149 () Bool)

(assert (=> b!1200375 (=> (not res!799149) (not e!681719))))

(assert (=> b!1200375 (= res!799149 (arrayNoDuplicates!0 lt!543988 #b00000000000000000000000000000000 Nil!26580))))

(declare-fun b!1200376 () Bool)

(declare-fun e!681721 () Bool)

(assert (=> b!1200376 (= e!681721 (and e!681725 mapRes!47627))))

(declare-fun condMapEmpty!47627 () Bool)

(declare-fun mapDefault!47627 () ValueCell!14552)

