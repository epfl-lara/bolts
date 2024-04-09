; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99944 () Bool)

(assert start!99944)

(declare-fun b_free!25487 () Bool)

(declare-fun b_next!25487 () Bool)

(assert (=> start!99944 (= b_free!25487 (not b_next!25487))))

(declare-fun tp!89175 () Bool)

(declare-fun b_and!41855 () Bool)

(assert (=> start!99944 (= tp!89175 b_and!41855)))

(declare-fun b!1189054 () Bool)

(declare-fun res!790747 () Bool)

(declare-fun e!676093 () Bool)

(assert (=> b!1189054 (=> (not res!790747) (not e!676093))))

(declare-datatypes ((array!76800 0))(
  ( (array!76801 (arr!37046 (Array (_ BitVec 32) (_ BitVec 64))) (size!37583 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76800)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1189054 (= res!790747 (= (select (arr!37046 _keys!1208) i!673) k!934))))

(declare-fun b!1189055 () Bool)

(declare-fun e!676087 () Bool)

(declare-fun tp_is_empty!30017 () Bool)

(assert (=> b!1189055 (= e!676087 tp_is_empty!30017)))

(declare-fun mapNonEmpty!46853 () Bool)

(declare-fun mapRes!46853 () Bool)

(declare-fun tp!89176 () Bool)

(declare-fun e!676089 () Bool)

(assert (=> mapNonEmpty!46853 (= mapRes!46853 (and tp!89176 e!676089))))

(declare-fun mapKey!46853 () (_ BitVec 32))

(declare-datatypes ((V!45149 0))(
  ( (V!45150 (val!15065 Int)) )
))
(declare-datatypes ((ValueCell!14299 0))(
  ( (ValueCellFull!14299 (v!17704 V!45149)) (EmptyCell!14299) )
))
(declare-fun mapRest!46853 () (Array (_ BitVec 32) ValueCell!14299))

(declare-fun mapValue!46853 () ValueCell!14299)

(declare-datatypes ((array!76802 0))(
  ( (array!76803 (arr!37047 (Array (_ BitVec 32) ValueCell!14299)) (size!37584 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76802)

(assert (=> mapNonEmpty!46853 (= (arr!37047 _values!996) (store mapRest!46853 mapKey!46853 mapValue!46853))))

(declare-fun mapIsEmpty!46853 () Bool)

(assert (=> mapIsEmpty!46853 mapRes!46853))

(declare-fun b!1189056 () Bool)

(declare-fun res!790752 () Bool)

(assert (=> b!1189056 (=> (not res!790752) (not e!676093))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1189056 (= res!790752 (and (= (size!37584 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37583 _keys!1208) (size!37584 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1189057 () Bool)

(declare-fun res!790751 () Bool)

(declare-fun e!676088 () Bool)

(assert (=> b!1189057 (=> (not res!790751) (not e!676088))))

(declare-fun lt!540894 () array!76800)

(declare-datatypes ((List!26236 0))(
  ( (Nil!26233) (Cons!26232 (h!27441 (_ BitVec 64)) (t!38722 List!26236)) )
))
(declare-fun arrayNoDuplicates!0 (array!76800 (_ BitVec 32) List!26236) Bool)

(assert (=> b!1189057 (= res!790751 (arrayNoDuplicates!0 lt!540894 #b00000000000000000000000000000000 Nil!26233))))

(declare-fun b!1189058 () Bool)

(declare-fun e!676092 () Bool)

(assert (=> b!1189058 (= e!676088 (not e!676092))))

(declare-fun res!790748 () Bool)

(assert (=> b!1189058 (=> res!790748 e!676092)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1189058 (= res!790748 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76800 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1189058 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39380 0))(
  ( (Unit!39381) )
))
(declare-fun lt!540893 () Unit!39380)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76800 (_ BitVec 64) (_ BitVec 32)) Unit!39380)

(assert (=> b!1189058 (= lt!540893 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1189059 () Bool)

(declare-fun res!790749 () Bool)

(assert (=> b!1189059 (=> (not res!790749) (not e!676093))))

(assert (=> b!1189059 (= res!790749 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37583 _keys!1208))))))

(declare-fun b!1189060 () Bool)

(assert (=> b!1189060 (= e!676093 e!676088)))

(declare-fun res!790753 () Bool)

(assert (=> b!1189060 (=> (not res!790753) (not e!676088))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76800 (_ BitVec 32)) Bool)

(assert (=> b!1189060 (= res!790753 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!540894 mask!1564))))

(assert (=> b!1189060 (= lt!540894 (array!76801 (store (arr!37046 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37583 _keys!1208)))))

(declare-fun b!1189061 () Bool)

(declare-fun e!676091 () Bool)

(assert (=> b!1189061 (= e!676091 (and e!676087 mapRes!46853))))

(declare-fun condMapEmpty!46853 () Bool)

(declare-fun mapDefault!46853 () ValueCell!14299)

