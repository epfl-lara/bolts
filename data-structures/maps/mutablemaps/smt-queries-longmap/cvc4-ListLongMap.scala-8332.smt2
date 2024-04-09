; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101458 () Bool)

(assert start!101458)

(declare-fun b_free!26267 () Bool)

(declare-fun b_next!26267 () Bool)

(assert (=> start!101458 (= b_free!26267 (not b_next!26267))))

(declare-fun tp!91833 () Bool)

(declare-fun b_and!43715 () Bool)

(assert (=> start!101458 (= tp!91833 b_and!43715)))

(declare-fun mapNonEmpty!48340 () Bool)

(declare-fun mapRes!48340 () Bool)

(declare-fun tp!91832 () Bool)

(declare-fun e!692069 () Bool)

(assert (=> mapNonEmpty!48340 (= mapRes!48340 (and tp!91832 e!692069))))

(declare-fun mapKey!48340 () (_ BitVec 32))

(declare-datatypes ((V!46421 0))(
  ( (V!46422 (val!15542 Int)) )
))
(declare-datatypes ((ValueCell!14776 0))(
  ( (ValueCellFull!14776 (v!18199 V!46421)) (EmptyCell!14776) )
))
(declare-fun mapValue!48340 () ValueCell!14776)

(declare-datatypes ((array!78692 0))(
  ( (array!78693 (arr!37974 (Array (_ BitVec 32) ValueCell!14776)) (size!38511 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78692)

(declare-fun mapRest!48340 () (Array (_ BitVec 32) ValueCell!14776))

(assert (=> mapNonEmpty!48340 (= (arr!37974 _values!996) (store mapRest!48340 mapKey!48340 mapValue!48340))))

(declare-fun mapIsEmpty!48340 () Bool)

(assert (=> mapIsEmpty!48340 mapRes!48340))

(declare-fun b!1218852 () Bool)

(declare-fun res!809616 () Bool)

(declare-fun e!692074 () Bool)

(assert (=> b!1218852 (=> (not res!809616) (not e!692074))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1218852 (= res!809616 (validMask!0 mask!1564))))

(declare-fun b!1218853 () Bool)

(declare-fun e!692067 () Bool)

(declare-fun tp_is_empty!30971 () Bool)

(assert (=> b!1218853 (= e!692067 tp_is_empty!30971)))

(declare-datatypes ((array!78694 0))(
  ( (array!78695 (arr!37975 (Array (_ BitVec 32) (_ BitVec 64))) (size!38512 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78694)

(declare-fun e!692064 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1218854 () Bool)

(declare-fun arrayContainsKey!0 (array!78694 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1218854 (= e!692064 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1218855 () Bool)

(declare-fun e!692072 () Bool)

(assert (=> b!1218855 (= e!692072 e!692064)))

(declare-fun res!809604 () Bool)

(assert (=> b!1218855 (=> res!809604 e!692064)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1218855 (= res!809604 (not (= (select (arr!37975 _keys!1208) from!1455) k!934)))))

(declare-fun b!1218856 () Bool)

(declare-fun res!809605 () Bool)

(assert (=> b!1218856 (=> (not res!809605) (not e!692074))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1218856 (= res!809605 (and (= (size!38511 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38512 _keys!1208) (size!38511 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1218857 () Bool)

(declare-fun e!692065 () Bool)

(assert (=> b!1218857 (= e!692074 e!692065)))

(declare-fun res!809617 () Bool)

(assert (=> b!1218857 (=> (not res!809617) (not e!692065))))

(declare-fun lt!554092 () array!78694)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78694 (_ BitVec 32)) Bool)

(assert (=> b!1218857 (= res!809617 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!554092 mask!1564))))

(assert (=> b!1218857 (= lt!554092 (array!78695 (store (arr!37975 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38512 _keys!1208)))))

(declare-fun res!809606 () Bool)

(assert (=> start!101458 (=> (not res!809606) (not e!692074))))

(assert (=> start!101458 (= res!809606 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38512 _keys!1208))))))

(assert (=> start!101458 e!692074))

(assert (=> start!101458 tp_is_empty!30971))

(declare-fun array_inv!28814 (array!78694) Bool)

(assert (=> start!101458 (array_inv!28814 _keys!1208)))

(assert (=> start!101458 true))

(assert (=> start!101458 tp!91833))

(declare-fun e!692068 () Bool)

(declare-fun array_inv!28815 (array!78692) Bool)

(assert (=> start!101458 (and (array_inv!28815 _values!996) e!692068)))

(declare-fun b!1218858 () Bool)

(declare-fun res!809609 () Bool)

(assert (=> b!1218858 (=> (not res!809609) (not e!692074))))

(assert (=> b!1218858 (= res!809609 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1218859 () Bool)

(declare-fun res!809608 () Bool)

(assert (=> b!1218859 (=> (not res!809608) (not e!692074))))

(assert (=> b!1218859 (= res!809608 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38512 _keys!1208))))))

(declare-fun b!1218860 () Bool)

(declare-fun e!692071 () Bool)

(declare-fun e!692070 () Bool)

(assert (=> b!1218860 (= e!692071 e!692070)))

(declare-fun res!809615 () Bool)

(assert (=> b!1218860 (=> res!809615 e!692070)))

(assert (=> b!1218860 (= res!809615 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((tuple2!20128 0))(
  ( (tuple2!20129 (_1!10074 (_ BitVec 64)) (_2!10074 V!46421)) )
))
(declare-datatypes ((List!26948 0))(
  ( (Nil!26945) (Cons!26944 (h!28153 tuple2!20128) (t!40202 List!26948)) )
))
(declare-datatypes ((ListLongMap!18109 0))(
  ( (ListLongMap!18110 (toList!9070 List!26948)) )
))
(declare-fun lt!554090 () ListLongMap!18109)

(declare-fun lt!554093 () array!78692)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46421)

(declare-fun zeroValue!944 () V!46421)

(declare-fun getCurrentListMapNoExtraKeys!5474 (array!78694 array!78692 (_ BitVec 32) (_ BitVec 32) V!46421 V!46421 (_ BitVec 32) Int) ListLongMap!18109)

(assert (=> b!1218860 (= lt!554090 (getCurrentListMapNoExtraKeys!5474 lt!554092 lt!554093 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!554089 () V!46421)

(assert (=> b!1218860 (= lt!554093 (array!78693 (store (arr!37974 _values!996) i!673 (ValueCellFull!14776 lt!554089)) (size!38511 _values!996)))))

(declare-fun dynLambda!3378 (Int (_ BitVec 64)) V!46421)

(assert (=> b!1218860 (= lt!554089 (dynLambda!3378 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!554091 () ListLongMap!18109)

(assert (=> b!1218860 (= lt!554091 (getCurrentListMapNoExtraKeys!5474 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1218861 () Bool)

(declare-fun e!692073 () Bool)

(assert (=> b!1218861 (= e!692070 e!692073)))

(declare-fun res!809612 () Bool)

(assert (=> b!1218861 (=> res!809612 e!692073)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1218861 (= res!809612 (not (validKeyInArray!0 (select (arr!37975 _keys!1208) from!1455))))))

(declare-fun lt!554094 () ListLongMap!18109)

(declare-fun lt!554088 () ListLongMap!18109)

(assert (=> b!1218861 (= lt!554094 lt!554088)))

(declare-fun lt!554096 () ListLongMap!18109)

(declare-fun -!1928 (ListLongMap!18109 (_ BitVec 64)) ListLongMap!18109)

(assert (=> b!1218861 (= lt!554088 (-!1928 lt!554096 k!934))))

(assert (=> b!1218861 (= lt!554094 (getCurrentListMapNoExtraKeys!5474 lt!554092 lt!554093 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1218861 (= lt!554096 (getCurrentListMapNoExtraKeys!5474 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!40322 0))(
  ( (Unit!40323) )
))
(declare-fun lt!554095 () Unit!40322)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1130 (array!78694 array!78692 (_ BitVec 32) (_ BitVec 32) V!46421 V!46421 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40322)

(assert (=> b!1218861 (= lt!554095 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1130 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1218862 () Bool)

(declare-fun res!809610 () Bool)

(assert (=> b!1218862 (=> (not res!809610) (not e!692065))))

(declare-datatypes ((List!26949 0))(
  ( (Nil!26946) (Cons!26945 (h!28154 (_ BitVec 64)) (t!40203 List!26949)) )
))
(declare-fun arrayNoDuplicates!0 (array!78694 (_ BitVec 32) List!26949) Bool)

(assert (=> b!1218862 (= res!809610 (arrayNoDuplicates!0 lt!554092 #b00000000000000000000000000000000 Nil!26946))))

(declare-fun b!1218863 () Bool)

(declare-fun res!809607 () Bool)

(assert (=> b!1218863 (=> (not res!809607) (not e!692074))))

(assert (=> b!1218863 (= res!809607 (= (select (arr!37975 _keys!1208) i!673) k!934))))

(declare-fun b!1218864 () Bool)

(assert (=> b!1218864 (= e!692069 tp_is_empty!30971)))

(declare-fun b!1218865 () Bool)

(declare-fun res!809618 () Bool)

(assert (=> b!1218865 (=> (not res!809618) (not e!692074))))

(assert (=> b!1218865 (= res!809618 (validKeyInArray!0 k!934))))

(declare-fun b!1218866 () Bool)

(declare-fun res!809611 () Bool)

(assert (=> b!1218866 (=> (not res!809611) (not e!692074))))

(assert (=> b!1218866 (= res!809611 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26946))))

(declare-fun b!1218867 () Bool)

(assert (=> b!1218867 (= e!692068 (and e!692067 mapRes!48340))))

(declare-fun condMapEmpty!48340 () Bool)

(declare-fun mapDefault!48340 () ValueCell!14776)

