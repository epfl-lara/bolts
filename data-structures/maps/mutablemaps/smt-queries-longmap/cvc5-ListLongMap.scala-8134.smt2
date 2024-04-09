; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99706 () Bool)

(assert start!99706)

(declare-fun b_free!25249 () Bool)

(declare-fun b_next!25249 () Bool)

(assert (=> start!99706 (= b_free!25249 (not b_next!25249))))

(declare-fun tp!88461 () Bool)

(declare-fun b_and!41379 () Bool)

(assert (=> start!99706 (= tp!88461 b_and!41379)))

(declare-fun b!1181941 () Bool)

(declare-fun res!785549 () Bool)

(declare-fun e!672022 () Bool)

(assert (=> b!1181941 (=> (not res!785549) (not e!672022))))

(declare-datatypes ((array!76326 0))(
  ( (array!76327 (arr!36809 (Array (_ BitVec 32) (_ BitVec 64))) (size!37346 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76326)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76326 (_ BitVec 32)) Bool)

(assert (=> b!1181941 (= res!785549 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1181942 () Bool)

(declare-fun e!672021 () Bool)

(declare-fun e!672023 () Bool)

(assert (=> b!1181942 (= e!672021 e!672023)))

(declare-fun res!785560 () Bool)

(assert (=> b!1181942 (=> res!785560 e!672023)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1181942 (= res!785560 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44833 0))(
  ( (V!44834 (val!14946 Int)) )
))
(declare-fun zeroValue!944 () V!44833)

(declare-datatypes ((ValueCell!14180 0))(
  ( (ValueCellFull!14180 (v!17585 V!44833)) (EmptyCell!14180) )
))
(declare-datatypes ((array!76328 0))(
  ( (array!76329 (arr!36810 (Array (_ BitVec 32) ValueCell!14180)) (size!37347 (_ BitVec 32))) )
))
(declare-fun lt!534805 () array!76328)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!19270 0))(
  ( (tuple2!19271 (_1!9645 (_ BitVec 64)) (_2!9645 V!44833)) )
))
(declare-datatypes ((List!26032 0))(
  ( (Nil!26029) (Cons!26028 (h!27237 tuple2!19270) (t!38280 List!26032)) )
))
(declare-datatypes ((ListLongMap!17251 0))(
  ( (ListLongMap!17252 (toList!8641 List!26032)) )
))
(declare-fun lt!534811 () ListLongMap!17251)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!534799 () array!76326)

(declare-fun minValue!944 () V!44833)

(declare-fun getCurrentListMapNoExtraKeys!5064 (array!76326 array!76328 (_ BitVec 32) (_ BitVec 32) V!44833 V!44833 (_ BitVec 32) Int) ListLongMap!17251)

(assert (=> b!1181942 (= lt!534811 (getCurrentListMapNoExtraKeys!5064 lt!534799 lt!534805 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!534803 () V!44833)

(declare-fun _values!996 () array!76328)

(assert (=> b!1181942 (= lt!534805 (array!76329 (store (arr!36810 _values!996) i!673 (ValueCellFull!14180 lt!534803)) (size!37347 _values!996)))))

(declare-fun dynLambda!3032 (Int (_ BitVec 64)) V!44833)

(assert (=> b!1181942 (= lt!534803 (dynLambda!3032 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!534813 () ListLongMap!17251)

(assert (=> b!1181942 (= lt!534813 (getCurrentListMapNoExtraKeys!5064 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1181943 () Bool)

(declare-fun res!785563 () Bool)

(assert (=> b!1181943 (=> (not res!785563) (not e!672022))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1181943 (= res!785563 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!46496 () Bool)

(declare-fun mapRes!46496 () Bool)

(assert (=> mapIsEmpty!46496 mapRes!46496))

(declare-fun b!1181944 () Bool)

(declare-fun e!672025 () Bool)

(declare-fun tp_is_empty!29779 () Bool)

(assert (=> b!1181944 (= e!672025 tp_is_empty!29779)))

(declare-fun b!1181945 () Bool)

(declare-fun res!785561 () Bool)

(assert (=> b!1181945 (=> (not res!785561) (not e!672022))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1181945 (= res!785561 (validKeyInArray!0 k!934))))

(declare-fun b!1181946 () Bool)

(declare-fun e!672024 () Bool)

(assert (=> b!1181946 (= e!672024 true)))

(declare-fun lt!534806 () ListLongMap!17251)

(declare-fun lt!534812 () ListLongMap!17251)

(declare-fun -!1630 (ListLongMap!17251 (_ BitVec 64)) ListLongMap!17251)

(assert (=> b!1181946 (= (-!1630 lt!534806 k!934) lt!534812)))

(declare-fun lt!534808 () ListLongMap!17251)

(declare-datatypes ((Unit!39021 0))(
  ( (Unit!39022) )
))
(declare-fun lt!534809 () Unit!39021)

(declare-fun lt!534810 () V!44833)

(declare-fun addRemoveCommutativeForDiffKeys!149 (ListLongMap!17251 (_ BitVec 64) V!44833 (_ BitVec 64)) Unit!39021)

(assert (=> b!1181946 (= lt!534809 (addRemoveCommutativeForDiffKeys!149 lt!534808 (select (arr!36809 _keys!1208) from!1455) lt!534810 k!934))))

(declare-fun lt!534802 () ListLongMap!17251)

(declare-fun lt!534804 () ListLongMap!17251)

(assert (=> b!1181946 (and (= lt!534813 lt!534806) (= lt!534802 lt!534804))))

(declare-fun lt!534798 () tuple2!19270)

(declare-fun +!3859 (ListLongMap!17251 tuple2!19270) ListLongMap!17251)

(assert (=> b!1181946 (= lt!534806 (+!3859 lt!534808 lt!534798))))

(assert (=> b!1181946 (not (= (select (arr!36809 _keys!1208) from!1455) k!934))))

(declare-fun lt!534797 () Unit!39021)

(declare-fun e!672015 () Unit!39021)

(assert (=> b!1181946 (= lt!534797 e!672015)))

(declare-fun c!116945 () Bool)

(assert (=> b!1181946 (= c!116945 (= (select (arr!36809 _keys!1208) from!1455) k!934))))

(declare-fun e!672018 () Bool)

(assert (=> b!1181946 e!672018))

(declare-fun res!785562 () Bool)

(assert (=> b!1181946 (=> (not res!785562) (not e!672018))))

(assert (=> b!1181946 (= res!785562 (= lt!534811 lt!534812))))

(assert (=> b!1181946 (= lt!534812 (+!3859 lt!534802 lt!534798))))

(assert (=> b!1181946 (= lt!534798 (tuple2!19271 (select (arr!36809 _keys!1208) from!1455) lt!534810))))

(declare-fun get!18865 (ValueCell!14180 V!44833) V!44833)

(assert (=> b!1181946 (= lt!534810 (get!18865 (select (arr!36810 _values!996) from!1455) lt!534803))))

(declare-fun b!1181947 () Bool)

(declare-fun e!672017 () Bool)

(assert (=> b!1181947 (= e!672017 tp_is_empty!29779)))

(declare-fun b!1181948 () Bool)

(declare-fun e!672019 () Bool)

(assert (=> b!1181948 (= e!672018 e!672019)))

(declare-fun res!785551 () Bool)

(assert (=> b!1181948 (=> res!785551 e!672019)))

(assert (=> b!1181948 (= res!785551 (not (= (select (arr!36809 _keys!1208) from!1455) k!934)))))

(declare-fun b!1181949 () Bool)

(declare-fun res!785550 () Bool)

(declare-fun e!672014 () Bool)

(assert (=> b!1181949 (=> (not res!785550) (not e!672014))))

(declare-datatypes ((List!26033 0))(
  ( (Nil!26030) (Cons!26029 (h!27238 (_ BitVec 64)) (t!38281 List!26033)) )
))
(declare-fun arrayNoDuplicates!0 (array!76326 (_ BitVec 32) List!26033) Bool)

(assert (=> b!1181949 (= res!785550 (arrayNoDuplicates!0 lt!534799 #b00000000000000000000000000000000 Nil!26030))))

(declare-fun b!1181950 () Bool)

(declare-fun Unit!39023 () Unit!39021)

(assert (=> b!1181950 (= e!672015 Unit!39023)))

(declare-fun lt!534796 () Unit!39021)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76326 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39021)

(assert (=> b!1181950 (= lt!534796 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76326 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1181950 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!534795 () Unit!39021)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76326 (_ BitVec 32) (_ BitVec 32)) Unit!39021)

(assert (=> b!1181950 (= lt!534795 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1181950 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26030)))

(declare-fun lt!534807 () Unit!39021)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76326 (_ BitVec 64) (_ BitVec 32) List!26033) Unit!39021)

(assert (=> b!1181950 (= lt!534807 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26030))))

(assert (=> b!1181950 false))

(declare-fun b!1181951 () Bool)

(declare-fun res!785559 () Bool)

(assert (=> b!1181951 (=> (not res!785559) (not e!672022))))

(assert (=> b!1181951 (= res!785559 (= (select (arr!36809 _keys!1208) i!673) k!934))))

(declare-fun b!1181952 () Bool)

(assert (=> b!1181952 (= e!672023 e!672024)))

(declare-fun res!785556 () Bool)

(assert (=> b!1181952 (=> res!785556 e!672024)))

(assert (=> b!1181952 (= res!785556 (not (validKeyInArray!0 (select (arr!36809 _keys!1208) from!1455))))))

(assert (=> b!1181952 (= lt!534804 lt!534802)))

(assert (=> b!1181952 (= lt!534802 (-!1630 lt!534808 k!934))))

(assert (=> b!1181952 (= lt!534804 (getCurrentListMapNoExtraKeys!5064 lt!534799 lt!534805 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1181952 (= lt!534808 (getCurrentListMapNoExtraKeys!5064 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!534801 () Unit!39021)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!852 (array!76326 array!76328 (_ BitVec 32) (_ BitVec 32) V!44833 V!44833 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39021)

(assert (=> b!1181952 (= lt!534801 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!852 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1181953 () Bool)

(assert (=> b!1181953 (= e!672022 e!672014)))

(declare-fun res!785554 () Bool)

(assert (=> b!1181953 (=> (not res!785554) (not e!672014))))

(assert (=> b!1181953 (= res!785554 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!534799 mask!1564))))

(assert (=> b!1181953 (= lt!534799 (array!76327 (store (arr!36809 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37346 _keys!1208)))))

(declare-fun b!1181954 () Bool)

(assert (=> b!1181954 (= e!672019 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1181955 () Bool)

(declare-fun res!785557 () Bool)

(assert (=> b!1181955 (=> (not res!785557) (not e!672022))))

(assert (=> b!1181955 (= res!785557 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37346 _keys!1208))))))

(declare-fun res!785558 () Bool)

(assert (=> start!99706 (=> (not res!785558) (not e!672022))))

(assert (=> start!99706 (= res!785558 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37346 _keys!1208))))))

(assert (=> start!99706 e!672022))

(assert (=> start!99706 tp_is_empty!29779))

(declare-fun array_inv!27982 (array!76326) Bool)

(assert (=> start!99706 (array_inv!27982 _keys!1208)))

(assert (=> start!99706 true))

(assert (=> start!99706 tp!88461))

(declare-fun e!672016 () Bool)

(declare-fun array_inv!27983 (array!76328) Bool)

(assert (=> start!99706 (and (array_inv!27983 _values!996) e!672016)))

(declare-fun b!1181956 () Bool)

(declare-fun res!785553 () Bool)

(assert (=> b!1181956 (=> (not res!785553) (not e!672022))))

(assert (=> b!1181956 (= res!785553 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26030))))

(declare-fun b!1181957 () Bool)

(assert (=> b!1181957 (= e!672016 (and e!672017 mapRes!46496))))

(declare-fun condMapEmpty!46496 () Bool)

(declare-fun mapDefault!46496 () ValueCell!14180)

