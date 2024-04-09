; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101516 () Bool)

(assert start!101516)

(declare-fun b_free!26297 () Bool)

(declare-fun b_next!26297 () Bool)

(assert (=> start!101516 (= b_free!26297 (not b_next!26297))))

(declare-fun tp!91926 () Bool)

(declare-fun b_and!43793 () Bool)

(assert (=> start!101516 (= tp!91926 b_and!43793)))

(declare-fun b!1219883 () Bool)

(declare-fun res!810393 () Bool)

(declare-fun e!692708 () Bool)

(assert (=> b!1219883 (=> (not res!810393) (not e!692708))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1219883 (= res!810393 (validKeyInArray!0 k!934))))

(declare-fun b!1219884 () Bool)

(declare-fun res!810390 () Bool)

(assert (=> b!1219884 (=> (not res!810390) (not e!692708))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1219884 (= res!810390 (validMask!0 mask!1564))))

(declare-fun b!1219885 () Bool)

(declare-fun e!692712 () Bool)

(declare-fun tp_is_empty!31001 () Bool)

(assert (=> b!1219885 (= e!692712 tp_is_empty!31001)))

(declare-fun b!1219886 () Bool)

(declare-fun res!810398 () Bool)

(assert (=> b!1219886 (=> (not res!810398) (not e!692708))))

(declare-datatypes ((array!78754 0))(
  ( (array!78755 (arr!38004 (Array (_ BitVec 32) (_ BitVec 64))) (size!38541 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78754)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78754 (_ BitVec 32)) Bool)

(assert (=> b!1219886 (= res!810398 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1219887 () Bool)

(declare-fun e!692703 () Bool)

(assert (=> b!1219887 (= e!692708 e!692703)))

(declare-fun res!810394 () Bool)

(assert (=> b!1219887 (=> (not res!810394) (not e!692703))))

(declare-fun lt!554664 () array!78754)

(assert (=> b!1219887 (= res!810394 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!554664 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1219887 (= lt!554664 (array!78755 (store (arr!38004 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38541 _keys!1208)))))

(declare-fun res!810401 () Bool)

(assert (=> start!101516 (=> (not res!810401) (not e!692708))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!101516 (= res!810401 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38541 _keys!1208))))))

(assert (=> start!101516 e!692708))

(assert (=> start!101516 tp_is_empty!31001))

(declare-fun array_inv!28836 (array!78754) Bool)

(assert (=> start!101516 (array_inv!28836 _keys!1208)))

(assert (=> start!101516 true))

(assert (=> start!101516 tp!91926))

(declare-datatypes ((V!46461 0))(
  ( (V!46462 (val!15557 Int)) )
))
(declare-datatypes ((ValueCell!14791 0))(
  ( (ValueCellFull!14791 (v!18215 V!46461)) (EmptyCell!14791) )
))
(declare-datatypes ((array!78756 0))(
  ( (array!78757 (arr!38005 (Array (_ BitVec 32) ValueCell!14791)) (size!38542 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78756)

(declare-fun e!692710 () Bool)

(declare-fun array_inv!28837 (array!78756) Bool)

(assert (=> start!101516 (and (array_inv!28837 _values!996) e!692710)))

(declare-fun mapNonEmpty!48388 () Bool)

(declare-fun mapRes!48388 () Bool)

(declare-fun tp!91925 () Bool)

(declare-fun e!692705 () Bool)

(assert (=> mapNonEmpty!48388 (= mapRes!48388 (and tp!91925 e!692705))))

(declare-fun mapRest!48388 () (Array (_ BitVec 32) ValueCell!14791))

(declare-fun mapKey!48388 () (_ BitVec 32))

(declare-fun mapValue!48388 () ValueCell!14791)

(assert (=> mapNonEmpty!48388 (= (arr!38005 _values!996) (store mapRest!48388 mapKey!48388 mapValue!48388))))

(declare-fun b!1219888 () Bool)

(declare-fun e!692706 () Bool)

(declare-fun e!692704 () Bool)

(assert (=> b!1219888 (= e!692706 e!692704)))

(declare-fun res!810391 () Bool)

(assert (=> b!1219888 (=> res!810391 e!692704)))

(assert (=> b!1219888 (= res!810391 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46461)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun minValue!944 () V!46461)

(declare-fun lt!554666 () array!78756)

(declare-datatypes ((tuple2!20158 0))(
  ( (tuple2!20159 (_1!10089 (_ BitVec 64)) (_2!10089 V!46461)) )
))
(declare-datatypes ((List!26977 0))(
  ( (Nil!26974) (Cons!26973 (h!28182 tuple2!20158) (t!40261 List!26977)) )
))
(declare-datatypes ((ListLongMap!18139 0))(
  ( (ListLongMap!18140 (toList!9085 List!26977)) )
))
(declare-fun lt!554665 () ListLongMap!18139)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5484 (array!78754 array!78756 (_ BitVec 32) (_ BitVec 32) V!46461 V!46461 (_ BitVec 32) Int) ListLongMap!18139)

(assert (=> b!1219888 (= lt!554665 (getCurrentListMapNoExtraKeys!5484 lt!554664 lt!554666 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!554659 () V!46461)

(assert (=> b!1219888 (= lt!554666 (array!78757 (store (arr!38005 _values!996) i!673 (ValueCellFull!14791 lt!554659)) (size!38542 _values!996)))))

(declare-fun dynLambda!3386 (Int (_ BitVec 64)) V!46461)

(assert (=> b!1219888 (= lt!554659 (dynLambda!3386 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!554660 () ListLongMap!18139)

(assert (=> b!1219888 (= lt!554660 (getCurrentListMapNoExtraKeys!5484 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun e!692702 () Bool)

(declare-fun b!1219889 () Bool)

(declare-fun arrayContainsKey!0 (array!78754 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1219889 (= e!692702 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!48388 () Bool)

(assert (=> mapIsEmpty!48388 mapRes!48388))

(declare-fun b!1219890 () Bool)

(declare-fun res!810399 () Bool)

(assert (=> b!1219890 (=> (not res!810399) (not e!692708))))

(assert (=> b!1219890 (= res!810399 (= (select (arr!38004 _keys!1208) i!673) k!934))))

(declare-fun b!1219891 () Bool)

(declare-fun e!692711 () Bool)

(assert (=> b!1219891 (= e!692704 e!692711)))

(declare-fun res!810386 () Bool)

(assert (=> b!1219891 (=> res!810386 e!692711)))

(assert (=> b!1219891 (= res!810386 (not (validKeyInArray!0 (select (arr!38004 _keys!1208) from!1455))))))

(declare-fun lt!554662 () ListLongMap!18139)

(declare-fun lt!554661 () ListLongMap!18139)

(assert (=> b!1219891 (= lt!554662 lt!554661)))

(declare-fun lt!554668 () ListLongMap!18139)

(declare-fun -!1936 (ListLongMap!18139 (_ BitVec 64)) ListLongMap!18139)

(assert (=> b!1219891 (= lt!554661 (-!1936 lt!554668 k!934))))

(assert (=> b!1219891 (= lt!554662 (getCurrentListMapNoExtraKeys!5484 lt!554664 lt!554666 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1219891 (= lt!554668 (getCurrentListMapNoExtraKeys!5484 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!40344 0))(
  ( (Unit!40345) )
))
(declare-fun lt!554667 () Unit!40344)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1138 (array!78754 array!78756 (_ BitVec 32) (_ BitVec 32) V!46461 V!46461 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40344)

(assert (=> b!1219891 (= lt!554667 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1138 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1219892 () Bool)

(assert (=> b!1219892 (= e!692703 (not e!692706))))

(declare-fun res!810388 () Bool)

(assert (=> b!1219892 (=> res!810388 e!692706)))

(assert (=> b!1219892 (= res!810388 (bvsgt from!1455 i!673))))

(assert (=> b!1219892 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!554663 () Unit!40344)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78754 (_ BitVec 64) (_ BitVec 32)) Unit!40344)

(assert (=> b!1219892 (= lt!554663 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1219893 () Bool)

(declare-fun res!810396 () Bool)

(assert (=> b!1219893 (=> (not res!810396) (not e!692708))))

(assert (=> b!1219893 (= res!810396 (and (= (size!38542 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38541 _keys!1208) (size!38542 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1219894 () Bool)

(declare-fun res!810392 () Bool)

(assert (=> b!1219894 (=> (not res!810392) (not e!692708))))

(assert (=> b!1219894 (= res!810392 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38541 _keys!1208))))))

(declare-fun b!1219895 () Bool)

(declare-fun e!692707 () Bool)

(assert (=> b!1219895 (= e!692711 e!692707)))

(declare-fun res!810389 () Bool)

(assert (=> b!1219895 (=> res!810389 e!692707)))

(assert (=> b!1219895 (= res!810389 (not (= (select (arr!38004 _keys!1208) from!1455) k!934)))))

(declare-fun e!692701 () Bool)

(assert (=> b!1219895 e!692701))

(declare-fun res!810395 () Bool)

(assert (=> b!1219895 (=> (not res!810395) (not e!692701))))

(declare-fun +!4060 (ListLongMap!18139 tuple2!20158) ListLongMap!18139)

(declare-fun get!19424 (ValueCell!14791 V!46461) V!46461)

(assert (=> b!1219895 (= res!810395 (= lt!554665 (+!4060 lt!554661 (tuple2!20159 (select (arr!38004 _keys!1208) from!1455) (get!19424 (select (arr!38005 _values!996) from!1455) lt!554659)))))))

(declare-fun b!1219896 () Bool)

(assert (=> b!1219896 (= e!692701 e!692702)))

(declare-fun res!810400 () Bool)

(assert (=> b!1219896 (=> res!810400 e!692702)))

(assert (=> b!1219896 (= res!810400 (not (= (select (arr!38004 _keys!1208) from!1455) k!934)))))

(declare-fun b!1219897 () Bool)

(declare-fun res!810397 () Bool)

(assert (=> b!1219897 (=> (not res!810397) (not e!692703))))

(declare-datatypes ((List!26978 0))(
  ( (Nil!26975) (Cons!26974 (h!28183 (_ BitVec 64)) (t!40262 List!26978)) )
))
(declare-fun arrayNoDuplicates!0 (array!78754 (_ BitVec 32) List!26978) Bool)

(assert (=> b!1219897 (= res!810397 (arrayNoDuplicates!0 lt!554664 #b00000000000000000000000000000000 Nil!26975))))

(declare-fun b!1219898 () Bool)

(assert (=> b!1219898 (= e!692710 (and e!692712 mapRes!48388))))

(declare-fun condMapEmpty!48388 () Bool)

(declare-fun mapDefault!48388 () ValueCell!14791)

