; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101662 () Bool)

(assert start!101662)

(declare-fun b_free!26347 () Bool)

(declare-fun b_next!26347 () Bool)

(assert (=> start!101662 (= b_free!26347 (not b_next!26347))))

(declare-fun tp!92084 () Bool)

(declare-fun b_and!43947 () Bool)

(assert (=> start!101662 (= tp!92084 b_and!43947)))

(declare-fun b!1221904 () Bool)

(declare-fun e!693972 () Bool)

(declare-fun e!693973 () Bool)

(assert (=> b!1221904 (= e!693972 e!693973)))

(declare-fun res!811874 () Bool)

(assert (=> b!1221904 (=> res!811874 e!693973)))

(declare-datatypes ((array!78860 0))(
  ( (array!78861 (arr!38054 (Array (_ BitVec 32) (_ BitVec 64))) (size!38591 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78860)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1221904 (= res!811874 (not (validKeyInArray!0 (select (arr!38054 _keys!1208) from!1455))))))

(declare-datatypes ((V!46529 0))(
  ( (V!46530 (val!15582 Int)) )
))
(declare-datatypes ((tuple2!20204 0))(
  ( (tuple2!20205 (_1!10112 (_ BitVec 64)) (_2!10112 V!46529)) )
))
(declare-datatypes ((List!27019 0))(
  ( (Nil!27016) (Cons!27015 (h!28224 tuple2!20204) (t!40353 List!27019)) )
))
(declare-datatypes ((ListLongMap!18185 0))(
  ( (ListLongMap!18186 (toList!9108 List!27019)) )
))
(declare-fun lt!555823 () ListLongMap!18185)

(declare-fun lt!555828 () ListLongMap!18185)

(assert (=> b!1221904 (= lt!555823 lt!555828)))

(declare-fun lt!555821 () ListLongMap!18185)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1952 (ListLongMap!18185 (_ BitVec 64)) ListLongMap!18185)

(assert (=> b!1221904 (= lt!555828 (-!1952 lt!555821 k!934))))

(declare-fun zeroValue!944 () V!46529)

(declare-datatypes ((ValueCell!14816 0))(
  ( (ValueCellFull!14816 (v!18244 V!46529)) (EmptyCell!14816) )
))
(declare-datatypes ((array!78862 0))(
  ( (array!78863 (arr!38055 (Array (_ BitVec 32) ValueCell!14816)) (size!38592 (_ BitVec 32))) )
))
(declare-fun lt!555816 () array!78862)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46529)

(declare-fun lt!555825 () array!78860)

(declare-fun getCurrentListMapNoExtraKeys!5506 (array!78860 array!78862 (_ BitVec 32) (_ BitVec 32) V!46529 V!46529 (_ BitVec 32) Int) ListLongMap!18185)

(assert (=> b!1221904 (= lt!555823 (getCurrentListMapNoExtraKeys!5506 lt!555825 lt!555816 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!78862)

(assert (=> b!1221904 (= lt!555821 (getCurrentListMapNoExtraKeys!5506 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!40386 0))(
  ( (Unit!40387) )
))
(declare-fun lt!555826 () Unit!40386)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1154 (array!78860 array!78862 (_ BitVec 32) (_ BitVec 32) V!46529 V!46529 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40386)

(assert (=> b!1221904 (= lt!555826 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1154 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1221905 () Bool)

(declare-fun e!693974 () Bool)

(declare-fun e!693977 () Bool)

(assert (=> b!1221905 (= e!693974 e!693977)))

(declare-fun res!811875 () Bool)

(assert (=> b!1221905 (=> res!811875 e!693977)))

(assert (=> b!1221905 (= res!811875 (or (bvsge (size!38591 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38591 _keys!1208)) (bvsge from!1455 (size!38591 _keys!1208))))))

(declare-datatypes ((List!27020 0))(
  ( (Nil!27017) (Cons!27016 (h!28225 (_ BitVec 64)) (t!40354 List!27020)) )
))
(declare-fun arrayNoDuplicates!0 (array!78860 (_ BitVec 32) List!27020) Bool)

(assert (=> b!1221905 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27017)))

(declare-fun lt!555827 () Unit!40386)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78860 (_ BitVec 32) (_ BitVec 32)) Unit!40386)

(assert (=> b!1221905 (= lt!555827 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun arrayContainsKey!0 (array!78860 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1221905 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!555824 () Unit!40386)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78860 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40386)

(assert (=> b!1221905 (= lt!555824 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1221906 () Bool)

(declare-fun e!693970 () Bool)

(declare-fun tp_is_empty!31051 () Bool)

(assert (=> b!1221906 (= e!693970 tp_is_empty!31051)))

(declare-fun b!1221907 () Bool)

(declare-fun res!811883 () Bool)

(declare-fun e!693975 () Bool)

(assert (=> b!1221907 (=> (not res!811883) (not e!693975))))

(assert (=> b!1221907 (= res!811883 (arrayNoDuplicates!0 lt!555825 #b00000000000000000000000000000000 Nil!27017))))

(declare-fun mapNonEmpty!48472 () Bool)

(declare-fun mapRes!48472 () Bool)

(declare-fun tp!92085 () Bool)

(declare-fun e!693968 () Bool)

(assert (=> mapNonEmpty!48472 (= mapRes!48472 (and tp!92085 e!693968))))

(declare-fun mapRest!48472 () (Array (_ BitVec 32) ValueCell!14816))

(declare-fun mapValue!48472 () ValueCell!14816)

(declare-fun mapKey!48472 () (_ BitVec 32))

(assert (=> mapNonEmpty!48472 (= (arr!38055 _values!996) (store mapRest!48472 mapKey!48472 mapValue!48472))))

(declare-fun b!1221908 () Bool)

(declare-fun res!811891 () Bool)

(declare-fun e!693965 () Bool)

(assert (=> b!1221908 (=> (not res!811891) (not e!693965))))

(assert (=> b!1221908 (= res!811891 (= (select (arr!38054 _keys!1208) i!673) k!934))))

(declare-fun b!1221909 () Bool)

(declare-fun e!693967 () Bool)

(declare-fun e!693976 () Bool)

(assert (=> b!1221909 (= e!693967 e!693976)))

(declare-fun res!811882 () Bool)

(assert (=> b!1221909 (=> res!811882 e!693976)))

(assert (=> b!1221909 (= res!811882 (not (= (select (arr!38054 _keys!1208) from!1455) k!934)))))

(declare-fun b!1221910 () Bool)

(assert (=> b!1221910 (= e!693965 e!693975)))

(declare-fun res!811879 () Bool)

(assert (=> b!1221910 (=> (not res!811879) (not e!693975))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78860 (_ BitVec 32)) Bool)

(assert (=> b!1221910 (= res!811879 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!555825 mask!1564))))

(assert (=> b!1221910 (= lt!555825 (array!78861 (store (arr!38054 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38591 _keys!1208)))))

(declare-fun b!1221911 () Bool)

(assert (=> b!1221911 (= e!693968 tp_is_empty!31051)))

(declare-fun b!1221912 () Bool)

(declare-fun e!693971 () Bool)

(assert (=> b!1221912 (= e!693971 e!693972)))

(declare-fun res!811878 () Bool)

(assert (=> b!1221912 (=> res!811878 e!693972)))

(assert (=> b!1221912 (= res!811878 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!555819 () ListLongMap!18185)

(assert (=> b!1221912 (= lt!555819 (getCurrentListMapNoExtraKeys!5506 lt!555825 lt!555816 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!555817 () V!46529)

(assert (=> b!1221912 (= lt!555816 (array!78863 (store (arr!38055 _values!996) i!673 (ValueCellFull!14816 lt!555817)) (size!38592 _values!996)))))

(declare-fun dynLambda!3405 (Int (_ BitVec 64)) V!46529)

(assert (=> b!1221912 (= lt!555817 (dynLambda!3405 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!555822 () ListLongMap!18185)

(assert (=> b!1221912 (= lt!555822 (getCurrentListMapNoExtraKeys!5506 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1221913 () Bool)

(assert (=> b!1221913 (= e!693973 e!693974)))

(declare-fun res!811888 () Bool)

(assert (=> b!1221913 (=> res!811888 e!693974)))

(assert (=> b!1221913 (= res!811888 (not (= (select (arr!38054 _keys!1208) from!1455) k!934)))))

(assert (=> b!1221913 e!693967))

(declare-fun res!811884 () Bool)

(assert (=> b!1221913 (=> (not res!811884) (not e!693967))))

(declare-fun +!4077 (ListLongMap!18185 tuple2!20204) ListLongMap!18185)

(declare-fun get!19465 (ValueCell!14816 V!46529) V!46529)

(assert (=> b!1221913 (= res!811884 (= lt!555819 (+!4077 lt!555828 (tuple2!20205 (select (arr!38054 _keys!1208) from!1455) (get!19465 (select (arr!38055 _values!996) from!1455) lt!555817)))))))

(declare-fun b!1221914 () Bool)

(declare-fun res!811873 () Bool)

(assert (=> b!1221914 (=> (not res!811873) (not e!693965))))

(assert (=> b!1221914 (= res!811873 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38591 _keys!1208))))))

(declare-fun b!1221915 () Bool)

(declare-fun res!811885 () Bool)

(assert (=> b!1221915 (=> (not res!811885) (not e!693965))))

(assert (=> b!1221915 (= res!811885 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1221916 () Bool)

(declare-fun res!811877 () Bool)

(assert (=> b!1221916 (=> res!811877 e!693977)))

(declare-fun contains!7048 (List!27020 (_ BitVec 64)) Bool)

(assert (=> b!1221916 (= res!811877 (contains!7048 Nil!27017 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1221903 () Bool)

(declare-fun res!811886 () Bool)

(assert (=> b!1221903 (=> (not res!811886) (not e!693965))))

(assert (=> b!1221903 (= res!811886 (validKeyInArray!0 k!934))))

(declare-fun res!811889 () Bool)

(assert (=> start!101662 (=> (not res!811889) (not e!693965))))

(assert (=> start!101662 (= res!811889 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38591 _keys!1208))))))

(assert (=> start!101662 e!693965))

(assert (=> start!101662 tp_is_empty!31051))

(declare-fun array_inv!28870 (array!78860) Bool)

(assert (=> start!101662 (array_inv!28870 _keys!1208)))

(assert (=> start!101662 true))

(assert (=> start!101662 tp!92084))

(declare-fun e!693966 () Bool)

(declare-fun array_inv!28871 (array!78862) Bool)

(assert (=> start!101662 (and (array_inv!28871 _values!996) e!693966)))

(declare-fun b!1221917 () Bool)

(assert (=> b!1221917 (= e!693977 true)))

(declare-fun lt!555820 () Bool)

(assert (=> b!1221917 (= lt!555820 (contains!7048 Nil!27017 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1221918 () Bool)

(declare-fun res!811890 () Bool)

(assert (=> b!1221918 (=> res!811890 e!693977)))

(declare-fun noDuplicate!1660 (List!27020) Bool)

(assert (=> b!1221918 (= res!811890 (not (noDuplicate!1660 Nil!27017)))))

(declare-fun mapIsEmpty!48472 () Bool)

(assert (=> mapIsEmpty!48472 mapRes!48472))

(declare-fun b!1221919 () Bool)

(assert (=> b!1221919 (= e!693976 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1221920 () Bool)

(assert (=> b!1221920 (= e!693975 (not e!693971))))

(declare-fun res!811881 () Bool)

(assert (=> b!1221920 (=> res!811881 e!693971)))

(assert (=> b!1221920 (= res!811881 (bvsgt from!1455 i!673))))

(assert (=> b!1221920 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!555818 () Unit!40386)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78860 (_ BitVec 64) (_ BitVec 32)) Unit!40386)

(assert (=> b!1221920 (= lt!555818 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1221921 () Bool)

(assert (=> b!1221921 (= e!693966 (and e!693970 mapRes!48472))))

(declare-fun condMapEmpty!48472 () Bool)

(declare-fun mapDefault!48472 () ValueCell!14816)

