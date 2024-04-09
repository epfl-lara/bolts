; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99266 () Bool)

(assert start!99266)

(declare-fun b_free!24835 () Bool)

(declare-fun b_next!24835 () Bool)

(assert (=> start!99266 (= b_free!24835 (not b_next!24835))))

(declare-fun tp!87217 () Bool)

(declare-fun b_and!40533 () Bool)

(assert (=> start!99266 (= tp!87217 b_and!40533)))

(declare-fun mapIsEmpty!45872 () Bool)

(declare-fun mapRes!45872 () Bool)

(assert (=> mapIsEmpty!45872 mapRes!45872))

(declare-fun b!1168642 () Bool)

(declare-fun e!664218 () Bool)

(declare-fun tp_is_empty!29365 () Bool)

(assert (=> b!1168642 (= e!664218 tp_is_empty!29365)))

(declare-fun b!1168643 () Bool)

(declare-fun res!775487 () Bool)

(declare-fun e!664214 () Bool)

(assert (=> b!1168643 (=> (not res!775487) (not e!664214))))

(declare-datatypes ((array!75504 0))(
  ( (array!75505 (arr!36399 (Array (_ BitVec 32) (_ BitVec 64))) (size!36936 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75504)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75504 (_ BitVec 32)) Bool)

(assert (=> b!1168643 (= res!775487 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1168644 () Bool)

(declare-fun res!775486 () Bool)

(assert (=> b!1168644 (=> (not res!775486) (not e!664214))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!44281 0))(
  ( (V!44282 (val!14739 Int)) )
))
(declare-datatypes ((ValueCell!13973 0))(
  ( (ValueCellFull!13973 (v!17377 V!44281)) (EmptyCell!13973) )
))
(declare-datatypes ((array!75506 0))(
  ( (array!75507 (arr!36400 (Array (_ BitVec 32) ValueCell!13973)) (size!36937 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75506)

(assert (=> b!1168644 (= res!775486 (and (= (size!36937 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36936 _keys!1208) (size!36937 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1168645 () Bool)

(declare-fun e!664215 () Bool)

(declare-fun e!664212 () Bool)

(assert (=> b!1168645 (= e!664215 (not e!664212))))

(declare-fun res!775480 () Bool)

(assert (=> b!1168645 (=> res!775480 e!664212)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1168645 (= res!775480 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75504 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1168645 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38456 0))(
  ( (Unit!38457) )
))
(declare-fun lt!526137 () Unit!38456)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75504 (_ BitVec 64) (_ BitVec 32)) Unit!38456)

(assert (=> b!1168645 (= lt!526137 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1168646 () Bool)

(assert (=> b!1168646 (= e!664214 e!664215)))

(declare-fun res!775479 () Bool)

(assert (=> b!1168646 (=> (not res!775479) (not e!664215))))

(declare-fun lt!526134 () array!75504)

(assert (=> b!1168646 (= res!775479 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!526134 mask!1564))))

(assert (=> b!1168646 (= lt!526134 (array!75505 (store (arr!36399 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36936 _keys!1208)))))

(declare-fun mapNonEmpty!45872 () Bool)

(declare-fun tp!87216 () Bool)

(declare-fun e!664217 () Bool)

(assert (=> mapNonEmpty!45872 (= mapRes!45872 (and tp!87216 e!664217))))

(declare-fun mapValue!45872 () ValueCell!13973)

(declare-fun mapRest!45872 () (Array (_ BitVec 32) ValueCell!13973))

(declare-fun mapKey!45872 () (_ BitVec 32))

(assert (=> mapNonEmpty!45872 (= (arr!36400 _values!996) (store mapRest!45872 mapKey!45872 mapValue!45872))))

(declare-fun e!664211 () Bool)

(declare-fun b!1168647 () Bool)

(assert (=> b!1168647 (= e!664211 (or (not (= (select (arr!36399 _keys!1208) from!1455) k!934)) (bvslt (size!36936 _keys!1208) #b01111111111111111111111111111111)))))

(declare-datatypes ((tuple2!18896 0))(
  ( (tuple2!18897 (_1!9458 (_ BitVec 64)) (_2!9458 V!44281)) )
))
(declare-datatypes ((List!25668 0))(
  ( (Nil!25665) (Cons!25664 (h!26873 tuple2!18896) (t!37502 List!25668)) )
))
(declare-datatypes ((ListLongMap!16877 0))(
  ( (ListLongMap!16878 (toList!8454 List!25668)) )
))
(declare-fun lt!526143 () ListLongMap!16877)

(declare-fun lt!526138 () V!44281)

(declare-fun lt!526140 () ListLongMap!16877)

(declare-fun +!3704 (ListLongMap!16877 tuple2!18896) ListLongMap!16877)

(declare-fun get!18581 (ValueCell!13973 V!44281) V!44281)

(assert (=> b!1168647 (= lt!526140 (+!3704 lt!526143 (tuple2!18897 (select (arr!36399 _keys!1208) from!1455) (get!18581 (select (arr!36400 _values!996) from!1455) lt!526138))))))

(declare-fun b!1168648 () Bool)

(declare-fun e!664216 () Bool)

(assert (=> b!1168648 (= e!664212 e!664216)))

(declare-fun res!775489 () Bool)

(assert (=> b!1168648 (=> res!775489 e!664216)))

(assert (=> b!1168648 (= res!775489 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44281)

(declare-fun zeroValue!944 () V!44281)

(declare-fun lt!526141 () array!75506)

(declare-fun getCurrentListMapNoExtraKeys!4887 (array!75504 array!75506 (_ BitVec 32) (_ BitVec 32) V!44281 V!44281 (_ BitVec 32) Int) ListLongMap!16877)

(assert (=> b!1168648 (= lt!526140 (getCurrentListMapNoExtraKeys!4887 lt!526134 lt!526141 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1168648 (= lt!526141 (array!75507 (store (arr!36400 _values!996) i!673 (ValueCellFull!13973 lt!526138)) (size!36937 _values!996)))))

(declare-fun dynLambda!2879 (Int (_ BitVec 64)) V!44281)

(assert (=> b!1168648 (= lt!526138 (dynLambda!2879 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!526139 () ListLongMap!16877)

(assert (=> b!1168648 (= lt!526139 (getCurrentListMapNoExtraKeys!4887 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1168649 () Bool)

(declare-fun res!775483 () Bool)

(assert (=> b!1168649 (=> (not res!775483) (not e!664214))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1168649 (= res!775483 (validMask!0 mask!1564))))

(declare-fun b!1168650 () Bool)

(declare-fun res!775484 () Bool)

(assert (=> b!1168650 (=> (not res!775484) (not e!664214))))

(assert (=> b!1168650 (= res!775484 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36936 _keys!1208))))))

(declare-fun b!1168651 () Bool)

(declare-fun res!775481 () Bool)

(assert (=> b!1168651 (=> (not res!775481) (not e!664215))))

(declare-datatypes ((List!25669 0))(
  ( (Nil!25666) (Cons!25665 (h!26874 (_ BitVec 64)) (t!37503 List!25669)) )
))
(declare-fun arrayNoDuplicates!0 (array!75504 (_ BitVec 32) List!25669) Bool)

(assert (=> b!1168651 (= res!775481 (arrayNoDuplicates!0 lt!526134 #b00000000000000000000000000000000 Nil!25666))))

(declare-fun b!1168652 () Bool)

(declare-fun e!664213 () Bool)

(assert (=> b!1168652 (= e!664213 (and e!664218 mapRes!45872))))

(declare-fun condMapEmpty!45872 () Bool)

(declare-fun mapDefault!45872 () ValueCell!13973)

