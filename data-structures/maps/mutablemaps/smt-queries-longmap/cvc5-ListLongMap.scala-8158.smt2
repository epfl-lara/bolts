; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99850 () Bool)

(assert start!99850)

(declare-fun b_free!25393 () Bool)

(declare-fun b_next!25393 () Bool)

(assert (=> start!99850 (= b_free!25393 (not b_next!25393))))

(declare-fun tp!88893 () Bool)

(declare-fun b_and!41667 () Bool)

(assert (=> start!99850 (= tp!88893 b_and!41667)))

(declare-fun b!1186405 () Bool)

(declare-fun e!674613 () Bool)

(assert (=> b!1186405 (= e!674613 true)))

(declare-datatypes ((V!45025 0))(
  ( (V!45026 (val!15018 Int)) )
))
(declare-datatypes ((tuple2!19400 0))(
  ( (tuple2!19401 (_1!9710 (_ BitVec 64)) (_2!9710 V!45025)) )
))
(declare-datatypes ((List!26160 0))(
  ( (Nil!26157) (Cons!26156 (h!27365 tuple2!19400) (t!38552 List!26160)) )
))
(declare-datatypes ((ListLongMap!17381 0))(
  ( (ListLongMap!17382 (toList!8706 List!26160)) )
))
(declare-fun lt!538913 () ListLongMap!17381)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun lt!538909 () ListLongMap!17381)

(declare-fun -!1691 (ListLongMap!17381 (_ BitVec 64)) ListLongMap!17381)

(assert (=> b!1186405 (= (-!1691 lt!538913 k!934) lt!538909)))

(declare-datatypes ((Unit!39250 0))(
  ( (Unit!39251) )
))
(declare-fun lt!538905 () Unit!39250)

(declare-datatypes ((array!76614 0))(
  ( (array!76615 (arr!36953 (Array (_ BitVec 32) (_ BitVec 64))) (size!37490 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76614)

(declare-fun lt!538899 () ListLongMap!17381)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!538906 () V!45025)

(declare-fun addRemoveCommutativeForDiffKeys!200 (ListLongMap!17381 (_ BitVec 64) V!45025 (_ BitVec 64)) Unit!39250)

(assert (=> b!1186405 (= lt!538905 (addRemoveCommutativeForDiffKeys!200 lt!538899 (select (arr!36953 _keys!1208) from!1455) lt!538906 k!934))))

(declare-fun lt!538900 () ListLongMap!17381)

(declare-fun lt!538912 () ListLongMap!17381)

(declare-fun lt!538917 () ListLongMap!17381)

(assert (=> b!1186405 (and (= lt!538917 lt!538913) (= lt!538912 lt!538900))))

(declare-fun lt!538910 () tuple2!19400)

(declare-fun +!3910 (ListLongMap!17381 tuple2!19400) ListLongMap!17381)

(assert (=> b!1186405 (= lt!538913 (+!3910 lt!538899 lt!538910))))

(assert (=> b!1186405 (not (= (select (arr!36953 _keys!1208) from!1455) k!934))))

(declare-fun lt!538911 () Unit!39250)

(declare-fun e!674612 () Unit!39250)

(assert (=> b!1186405 (= lt!538911 e!674612)))

(declare-fun c!117161 () Bool)

(assert (=> b!1186405 (= c!117161 (= (select (arr!36953 _keys!1208) from!1455) k!934))))

(declare-fun e!674616 () Bool)

(assert (=> b!1186405 e!674616))

(declare-fun res!788793 () Bool)

(assert (=> b!1186405 (=> (not res!788793) (not e!674616))))

(declare-fun lt!538907 () ListLongMap!17381)

(assert (=> b!1186405 (= res!788793 (= lt!538907 lt!538909))))

(assert (=> b!1186405 (= lt!538909 (+!3910 lt!538912 lt!538910))))

(assert (=> b!1186405 (= lt!538910 (tuple2!19401 (select (arr!36953 _keys!1208) from!1455) lt!538906))))

(declare-fun lt!538916 () V!45025)

(declare-datatypes ((ValueCell!14252 0))(
  ( (ValueCellFull!14252 (v!17657 V!45025)) (EmptyCell!14252) )
))
(declare-datatypes ((array!76616 0))(
  ( (array!76617 (arr!36954 (Array (_ BitVec 32) ValueCell!14252)) (size!37491 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76616)

(declare-fun get!18964 (ValueCell!14252 V!45025) V!45025)

(assert (=> b!1186405 (= lt!538906 (get!18964 (select (arr!36954 _values!996) from!1455) lt!538916))))

(declare-fun b!1186406 () Bool)

(declare-fun e!674609 () Bool)

(declare-fun tp_is_empty!29923 () Bool)

(assert (=> b!1186406 (= e!674609 tp_is_empty!29923)))

(declare-fun b!1186407 () Bool)

(declare-fun e!674614 () Bool)

(assert (=> b!1186407 (= e!674614 tp_is_empty!29923)))

(declare-fun b!1186408 () Bool)

(declare-fun res!788789 () Bool)

(declare-fun e!674607 () Bool)

(assert (=> b!1186408 (=> (not res!788789) (not e!674607))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76614 (_ BitVec 32)) Bool)

(assert (=> b!1186408 (= res!788789 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!788791 () Bool)

(assert (=> start!99850 (=> (not res!788791) (not e!674607))))

(assert (=> start!99850 (= res!788791 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37490 _keys!1208))))))

(assert (=> start!99850 e!674607))

(assert (=> start!99850 tp_is_empty!29923))

(declare-fun array_inv!28080 (array!76614) Bool)

(assert (=> start!99850 (array_inv!28080 _keys!1208)))

(assert (=> start!99850 true))

(assert (=> start!99850 tp!88893))

(declare-fun e!674615 () Bool)

(declare-fun array_inv!28081 (array!76616) Bool)

(assert (=> start!99850 (and (array_inv!28081 _values!996) e!674615)))

(declare-fun b!1186409 () Bool)

(declare-fun e!674617 () Bool)

(assert (=> b!1186409 (= e!674616 e!674617)))

(declare-fun res!788790 () Bool)

(assert (=> b!1186409 (=> res!788790 e!674617)))

(assert (=> b!1186409 (= res!788790 (not (= (select (arr!36953 _keys!1208) from!1455) k!934)))))

(declare-fun b!1186410 () Bool)

(declare-fun e!674608 () Bool)

(assert (=> b!1186410 (= e!674608 e!674613)))

(declare-fun res!788792 () Bool)

(assert (=> b!1186410 (=> res!788792 e!674613)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1186410 (= res!788792 (not (validKeyInArray!0 (select (arr!36953 _keys!1208) from!1455))))))

(assert (=> b!1186410 (= lt!538900 lt!538912)))

(assert (=> b!1186410 (= lt!538912 (-!1691 lt!538899 k!934))))

(declare-fun zeroValue!944 () V!45025)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!538915 () array!76616)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45025)

(declare-fun lt!538901 () array!76614)

(declare-fun getCurrentListMapNoExtraKeys!5123 (array!76614 array!76616 (_ BitVec 32) (_ BitVec 32) V!45025 V!45025 (_ BitVec 32) Int) ListLongMap!17381)

(assert (=> b!1186410 (= lt!538900 (getCurrentListMapNoExtraKeys!5123 lt!538901 lt!538915 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1186410 (= lt!538899 (getCurrentListMapNoExtraKeys!5123 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lt!538904 () Unit!39250)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!902 (array!76614 array!76616 (_ BitVec 32) (_ BitVec 32) V!45025 V!45025 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39250)

(assert (=> b!1186410 (= lt!538904 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!902 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!46712 () Bool)

(declare-fun mapRes!46712 () Bool)

(assert (=> mapIsEmpty!46712 mapRes!46712))

(declare-fun b!1186411 () Bool)

(declare-fun e!674606 () Bool)

(assert (=> b!1186411 (= e!674606 e!674608)))

(declare-fun res!788798 () Bool)

(assert (=> b!1186411 (=> res!788798 e!674608)))

(assert (=> b!1186411 (= res!788798 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1186411 (= lt!538907 (getCurrentListMapNoExtraKeys!5123 lt!538901 lt!538915 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1186411 (= lt!538915 (array!76617 (store (arr!36954 _values!996) i!673 (ValueCellFull!14252 lt!538916)) (size!37491 _values!996)))))

(declare-fun dynLambda!3082 (Int (_ BitVec 64)) V!45025)

(assert (=> b!1186411 (= lt!538916 (dynLambda!3082 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1186411 (= lt!538917 (getCurrentListMapNoExtraKeys!5123 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1186412 () Bool)

(declare-fun res!788794 () Bool)

(assert (=> b!1186412 (=> (not res!788794) (not e!674607))))

(assert (=> b!1186412 (= res!788794 (= (select (arr!36953 _keys!1208) i!673) k!934))))

(declare-fun b!1186413 () Bool)

(declare-fun Unit!39252 () Unit!39250)

(assert (=> b!1186413 (= e!674612 Unit!39252)))

(declare-fun b!1186414 () Bool)

(declare-fun res!788795 () Bool)

(assert (=> b!1186414 (=> (not res!788795) (not e!674607))))

(assert (=> b!1186414 (= res!788795 (and (= (size!37491 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37490 _keys!1208) (size!37491 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1186415 () Bool)

(declare-fun res!788803 () Bool)

(assert (=> b!1186415 (=> (not res!788803) (not e!674607))))

(assert (=> b!1186415 (= res!788803 (validKeyInArray!0 k!934))))

(declare-fun b!1186416 () Bool)

(declare-fun e!674610 () Bool)

(assert (=> b!1186416 (= e!674610 (not e!674606))))

(declare-fun res!788800 () Bool)

(assert (=> b!1186416 (=> res!788800 e!674606)))

(assert (=> b!1186416 (= res!788800 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76614 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1186416 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!538903 () Unit!39250)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76614 (_ BitVec 64) (_ BitVec 32)) Unit!39250)

(assert (=> b!1186416 (= lt!538903 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1186417 () Bool)

(declare-fun res!788802 () Bool)

(assert (=> b!1186417 (=> (not res!788802) (not e!674607))))

(declare-datatypes ((List!26161 0))(
  ( (Nil!26158) (Cons!26157 (h!27366 (_ BitVec 64)) (t!38553 List!26161)) )
))
(declare-fun arrayNoDuplicates!0 (array!76614 (_ BitVec 32) List!26161) Bool)

(assert (=> b!1186417 (= res!788802 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26158))))

(declare-fun b!1186418 () Bool)

(assert (=> b!1186418 (= e!674615 (and e!674609 mapRes!46712))))

(declare-fun condMapEmpty!46712 () Bool)

(declare-fun mapDefault!46712 () ValueCell!14252)

