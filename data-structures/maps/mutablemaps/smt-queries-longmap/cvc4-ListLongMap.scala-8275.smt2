; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100790 () Bool)

(assert start!100790)

(declare-fun b_free!25925 () Bool)

(declare-fun b_next!25925 () Bool)

(assert (=> start!100790 (= b_free!25925 (not b_next!25925))))

(declare-fun tp!90779 () Bool)

(declare-fun b_and!42847 () Bool)

(assert (=> start!100790 (= tp!90779 b_and!42847)))

(declare-fun b!1205285 () Bool)

(declare-fun res!801800 () Bool)

(declare-fun e!684513 () Bool)

(assert (=> b!1205285 (=> (not res!801800) (not e!684513))))

(declare-datatypes ((array!78016 0))(
  ( (array!78017 (arr!37645 (Array (_ BitVec 32) (_ BitVec 64))) (size!38182 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78016)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78016 (_ BitVec 32)) Bool)

(assert (=> b!1205285 (= res!801800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1205286 () Bool)

(declare-fun e!684520 () Bool)

(declare-fun e!684512 () Bool)

(assert (=> b!1205286 (= e!684520 e!684512)))

(declare-fun res!801795 () Bool)

(assert (=> b!1205286 (=> res!801795 e!684512)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1205286 (= res!801795 (not (= from!1455 i!673)))))

(declare-datatypes ((V!45965 0))(
  ( (V!45966 (val!15371 Int)) )
))
(declare-fun zeroValue!944 () V!45965)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!546644 () array!78016)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45965)

(declare-datatypes ((ValueCell!14605 0))(
  ( (ValueCellFull!14605 (v!18016 V!45965)) (EmptyCell!14605) )
))
(declare-datatypes ((array!78018 0))(
  ( (array!78019 (arr!37646 (Array (_ BitVec 32) ValueCell!14605)) (size!38183 (_ BitVec 32))) )
))
(declare-fun lt!546642 () array!78018)

(declare-datatypes ((tuple2!19848 0))(
  ( (tuple2!19849 (_1!9934 (_ BitVec 64)) (_2!9934 V!45965)) )
))
(declare-datatypes ((List!26676 0))(
  ( (Nil!26673) (Cons!26672 (h!27881 tuple2!19848) (t!39588 List!26676)) )
))
(declare-datatypes ((ListLongMap!17829 0))(
  ( (ListLongMap!17830 (toList!8930 List!26676)) )
))
(declare-fun lt!546649 () ListLongMap!17829)

(declare-fun getCurrentListMapNoExtraKeys!5339 (array!78016 array!78018 (_ BitVec 32) (_ BitVec 32) V!45965 V!45965 (_ BitVec 32) Int) ListLongMap!17829)

(assert (=> b!1205286 (= lt!546649 (getCurrentListMapNoExtraKeys!5339 lt!546644 lt!546642 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!78018)

(declare-fun dynLambda!3261 (Int (_ BitVec 64)) V!45965)

(assert (=> b!1205286 (= lt!546642 (array!78019 (store (arr!37646 _values!996) i!673 (ValueCellFull!14605 (dynLambda!3261 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38183 _values!996)))))

(declare-fun lt!546652 () ListLongMap!17829)

(assert (=> b!1205286 (= lt!546652 (getCurrentListMapNoExtraKeys!5339 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1205287 () Bool)

(declare-fun e!684510 () Bool)

(assert (=> b!1205287 (= e!684512 e!684510)))

(declare-fun res!801796 () Bool)

(assert (=> b!1205287 (=> res!801796 e!684510)))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1205287 (= res!801796 (not (= (select (arr!37645 _keys!1208) from!1455) k!934)))))

(declare-fun e!684508 () Bool)

(assert (=> b!1205287 e!684508))

(declare-fun c!118213 () Bool)

(assert (=> b!1205287 (= c!118213 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!39883 0))(
  ( (Unit!39884) )
))
(declare-fun lt!546653 () Unit!39883)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1049 (array!78016 array!78018 (_ BitVec 32) (_ BitVec 32) V!45965 V!45965 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39883)

(assert (=> b!1205287 (= lt!546653 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1049 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1205288 () Bool)

(declare-fun e!684514 () Unit!39883)

(declare-fun lt!546651 () Unit!39883)

(assert (=> b!1205288 (= e!684514 lt!546651)))

(declare-fun call!58433 () Unit!39883)

(assert (=> b!1205288 (= lt!546651 call!58433)))

(declare-fun call!58427 () Bool)

(assert (=> b!1205288 call!58427))

(declare-fun bm!58424 () Bool)

(declare-fun call!58429 () Unit!39883)

(assert (=> bm!58424 (= call!58433 call!58429)))

(declare-fun b!1205289 () Bool)

(declare-fun e!684521 () Bool)

(declare-fun tp_is_empty!30629 () Bool)

(assert (=> b!1205289 (= e!684521 tp_is_empty!30629)))

(declare-fun b!1205290 () Bool)

(declare-fun e!684519 () Bool)

(declare-fun mapRes!47799 () Bool)

(assert (=> b!1205290 (= e!684519 (and e!684521 mapRes!47799))))

(declare-fun condMapEmpty!47799 () Bool)

(declare-fun mapDefault!47799 () ValueCell!14605)

