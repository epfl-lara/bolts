; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99968 () Bool)

(assert start!99968)

(declare-fun b_free!25511 () Bool)

(declare-fun b_next!25511 () Bool)

(assert (=> start!99968 (= b_free!25511 (not b_next!25511))))

(declare-fun tp!89247 () Bool)

(declare-fun b_and!41903 () Bool)

(assert (=> start!99968 (= tp!89247 b_and!41903)))

(declare-fun b!1189618 () Bool)

(declare-fun res!791187 () Bool)

(declare-fun e!676376 () Bool)

(assert (=> b!1189618 (=> (not res!791187) (not e!676376))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1189618 (= res!791187 (validMask!0 mask!1564))))

(declare-fun b!1189619 () Bool)

(declare-fun e!676380 () Bool)

(assert (=> b!1189619 (= e!676376 e!676380)))

(declare-fun res!791185 () Bool)

(assert (=> b!1189619 (=> (not res!791185) (not e!676380))))

(declare-datatypes ((array!76848 0))(
  ( (array!76849 (arr!37070 (Array (_ BitVec 32) (_ BitVec 64))) (size!37607 (_ BitVec 32))) )
))
(declare-fun lt!541107 () array!76848)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76848 (_ BitVec 32)) Bool)

(assert (=> b!1189619 (= res!791185 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541107 mask!1564))))

(declare-fun _keys!1208 () array!76848)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1189619 (= lt!541107 (array!76849 (store (arr!37070 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37607 _keys!1208)))))

(declare-fun b!1189620 () Bool)

(declare-fun e!676378 () Bool)

(declare-fun e!676375 () Bool)

(assert (=> b!1189620 (= e!676378 e!676375)))

(declare-fun res!791184 () Bool)

(assert (=> b!1189620 (=> res!791184 e!676375)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1189620 (= res!791184 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!45181 0))(
  ( (V!45182 (val!15077 Int)) )
))
(declare-fun zeroValue!944 () V!45181)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19498 0))(
  ( (tuple2!19499 (_1!9759 (_ BitVec 64)) (_2!9759 V!45181)) )
))
(declare-datatypes ((List!26257 0))(
  ( (Nil!26254) (Cons!26253 (h!27462 tuple2!19498) (t!38767 List!26257)) )
))
(declare-datatypes ((ListLongMap!17479 0))(
  ( (ListLongMap!17480 (toList!8755 List!26257)) )
))
(declare-fun lt!541106 () ListLongMap!17479)

(declare-fun minValue!944 () V!45181)

(declare-datatypes ((ValueCell!14311 0))(
  ( (ValueCellFull!14311 (v!17716 V!45181)) (EmptyCell!14311) )
))
(declare-datatypes ((array!76850 0))(
  ( (array!76851 (arr!37071 (Array (_ BitVec 32) ValueCell!14311)) (size!37608 (_ BitVec 32))) )
))
(declare-fun lt!541105 () array!76850)

(declare-fun getCurrentListMapNoExtraKeys!5169 (array!76848 array!76850 (_ BitVec 32) (_ BitVec 32) V!45181 V!45181 (_ BitVec 32) Int) ListLongMap!17479)

(assert (=> b!1189620 (= lt!541106 (getCurrentListMapNoExtraKeys!5169 lt!541107 lt!541105 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!76850)

(declare-fun dynLambda!3121 (Int (_ BitVec 64)) V!45181)

(assert (=> b!1189620 (= lt!541105 (array!76851 (store (arr!37071 _values!996) i!673 (ValueCellFull!14311 (dynLambda!3121 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37608 _values!996)))))

(declare-fun lt!541109 () ListLongMap!17479)

(assert (=> b!1189620 (= lt!541109 (getCurrentListMapNoExtraKeys!5169 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1189621 () Bool)

(assert (=> b!1189621 (= e!676380 (not e!676378))))

(declare-fun res!791181 () Bool)

(assert (=> b!1189621 (=> res!791181 e!676378)))

(assert (=> b!1189621 (= res!791181 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!76848 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1189621 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39402 0))(
  ( (Unit!39403) )
))
(declare-fun lt!541110 () Unit!39402)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76848 (_ BitVec 64) (_ BitVec 32)) Unit!39402)

(assert (=> b!1189621 (= lt!541110 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1189623 () Bool)

(declare-fun res!791182 () Bool)

(assert (=> b!1189623 (=> (not res!791182) (not e!676376))))

(assert (=> b!1189623 (= res!791182 (and (= (size!37608 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37607 _keys!1208) (size!37608 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1189624 () Bool)

(declare-fun e!676374 () Bool)

(declare-fun tp_is_empty!30041 () Bool)

(assert (=> b!1189624 (= e!676374 tp_is_empty!30041)))

(declare-fun b!1189625 () Bool)

(declare-fun res!791186 () Bool)

(assert (=> b!1189625 (=> (not res!791186) (not e!676380))))

(declare-datatypes ((List!26258 0))(
  ( (Nil!26255) (Cons!26254 (h!27463 (_ BitVec 64)) (t!38768 List!26258)) )
))
(declare-fun arrayNoDuplicates!0 (array!76848 (_ BitVec 32) List!26258) Bool)

(assert (=> b!1189625 (= res!791186 (arrayNoDuplicates!0 lt!541107 #b00000000000000000000000000000000 Nil!26255))))

(declare-fun mapIsEmpty!46889 () Bool)

(declare-fun mapRes!46889 () Bool)

(assert (=> mapIsEmpty!46889 mapRes!46889))

(declare-fun b!1189626 () Bool)

(declare-fun res!791188 () Bool)

(assert (=> b!1189626 (=> (not res!791188) (not e!676376))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1189626 (= res!791188 (validKeyInArray!0 k!934))))

(declare-fun mapNonEmpty!46889 () Bool)

(declare-fun tp!89248 () Bool)

(assert (=> mapNonEmpty!46889 (= mapRes!46889 (and tp!89248 e!676374))))

(declare-fun mapValue!46889 () ValueCell!14311)

(declare-fun mapKey!46889 () (_ BitVec 32))

(declare-fun mapRest!46889 () (Array (_ BitVec 32) ValueCell!14311))

(assert (=> mapNonEmpty!46889 (= (arr!37071 _values!996) (store mapRest!46889 mapKey!46889 mapValue!46889))))

(declare-fun b!1189627 () Bool)

(declare-fun res!791180 () Bool)

(assert (=> b!1189627 (=> (not res!791180) (not e!676376))))

(assert (=> b!1189627 (= res!791180 (= (select (arr!37070 _keys!1208) i!673) k!934))))

(declare-fun b!1189628 () Bool)

(assert (=> b!1189628 (= e!676375 true)))

(declare-fun -!1737 (ListLongMap!17479 (_ BitVec 64)) ListLongMap!17479)

(assert (=> b!1189628 (= (getCurrentListMapNoExtraKeys!5169 lt!541107 lt!541105 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1737 (getCurrentListMapNoExtraKeys!5169 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun lt!541108 () Unit!39402)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!943 (array!76848 array!76850 (_ BitVec 32) (_ BitVec 32) V!45181 V!45181 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39402)

(assert (=> b!1189628 (= lt!541108 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!943 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1189629 () Bool)

(declare-fun e!676377 () Bool)

(assert (=> b!1189629 (= e!676377 tp_is_empty!30041)))

(declare-fun b!1189630 () Bool)

(declare-fun res!791179 () Bool)

(assert (=> b!1189630 (=> (not res!791179) (not e!676376))))

(assert (=> b!1189630 (= res!791179 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!791178 () Bool)

(assert (=> start!99968 (=> (not res!791178) (not e!676376))))

(assert (=> start!99968 (= res!791178 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37607 _keys!1208))))))

(assert (=> start!99968 e!676376))

(assert (=> start!99968 tp_is_empty!30041))

(declare-fun array_inv!28166 (array!76848) Bool)

(assert (=> start!99968 (array_inv!28166 _keys!1208)))

(assert (=> start!99968 true))

(assert (=> start!99968 tp!89247))

(declare-fun e!676381 () Bool)

(declare-fun array_inv!28167 (array!76850) Bool)

(assert (=> start!99968 (and (array_inv!28167 _values!996) e!676381)))

(declare-fun b!1189622 () Bool)

(declare-fun res!791183 () Bool)

(assert (=> b!1189622 (=> (not res!791183) (not e!676376))))

(assert (=> b!1189622 (= res!791183 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26255))))

(declare-fun b!1189631 () Bool)

(assert (=> b!1189631 (= e!676381 (and e!676377 mapRes!46889))))

(declare-fun condMapEmpty!46889 () Bool)

(declare-fun mapDefault!46889 () ValueCell!14311)

