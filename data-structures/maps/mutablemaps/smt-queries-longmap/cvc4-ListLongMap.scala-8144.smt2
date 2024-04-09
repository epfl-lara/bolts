; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99770 () Bool)

(assert start!99770)

(declare-fun b_free!25313 () Bool)

(declare-fun b_next!25313 () Bool)

(assert (=> start!99770 (= b_free!25313 (not b_next!25313))))

(declare-fun tp!88654 () Bool)

(declare-fun b_and!41507 () Bool)

(assert (=> start!99770 (= tp!88654 b_and!41507)))

(declare-fun mapIsEmpty!46592 () Bool)

(declare-fun mapRes!46592 () Bool)

(assert (=> mapIsEmpty!46592 mapRes!46592))

(declare-fun b!1183925 () Bool)

(declare-fun res!786989 () Bool)

(declare-fun e!673169 () Bool)

(assert (=> b!1183925 (=> (not res!786989) (not e!673169))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1183925 (= res!786989 (validMask!0 mask!1564))))

(declare-fun b!1183926 () Bool)

(declare-datatypes ((Unit!39120 0))(
  ( (Unit!39121) )
))
(declare-fun e!673177 () Unit!39120)

(declare-fun Unit!39122 () Unit!39120)

(assert (=> b!1183926 (= e!673177 Unit!39122)))

(declare-datatypes ((array!76454 0))(
  ( (array!76455 (arr!36873 (Array (_ BitVec 32) (_ BitVec 64))) (size!37410 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76454)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun lt!536626 () Unit!39120)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76454 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39120)

(assert (=> b!1183926 (= lt!536626 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76454 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1183926 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!536627 () Unit!39120)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76454 (_ BitVec 32) (_ BitVec 32)) Unit!39120)

(assert (=> b!1183926 (= lt!536627 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26087 0))(
  ( (Nil!26084) (Cons!26083 (h!27292 (_ BitVec 64)) (t!38399 List!26087)) )
))
(declare-fun arrayNoDuplicates!0 (array!76454 (_ BitVec 32) List!26087) Bool)

(assert (=> b!1183926 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26084)))

(declare-fun lt!536631 () Unit!39120)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76454 (_ BitVec 64) (_ BitVec 32) List!26087) Unit!39120)

(assert (=> b!1183926 (= lt!536631 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26084))))

(assert (=> b!1183926 false))

(declare-fun b!1183927 () Bool)

(declare-fun e!673175 () Bool)

(declare-fun e!673172 () Bool)

(assert (=> b!1183927 (= e!673175 (not e!673172))))

(declare-fun res!786998 () Bool)

(assert (=> b!1183927 (=> res!786998 e!673172)))

(assert (=> b!1183927 (= res!786998 (bvsgt from!1455 i!673))))

(assert (=> b!1183927 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!536622 () Unit!39120)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76454 (_ BitVec 64) (_ BitVec 32)) Unit!39120)

(assert (=> b!1183927 (= lt!536622 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1183928 () Bool)

(declare-fun e!673170 () Bool)

(declare-fun e!673174 () Bool)

(assert (=> b!1183928 (= e!673170 e!673174)))

(declare-fun res!787001 () Bool)

(assert (=> b!1183928 (=> res!787001 e!673174)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1183928 (= res!787001 (not (validKeyInArray!0 (select (arr!36873 _keys!1208) from!1455))))))

(declare-datatypes ((V!44917 0))(
  ( (V!44918 (val!14978 Int)) )
))
(declare-datatypes ((tuple2!19324 0))(
  ( (tuple2!19325 (_1!9672 (_ BitVec 64)) (_2!9672 V!44917)) )
))
(declare-datatypes ((List!26088 0))(
  ( (Nil!26085) (Cons!26084 (h!27293 tuple2!19324) (t!38400 List!26088)) )
))
(declare-datatypes ((ListLongMap!17305 0))(
  ( (ListLongMap!17306 (toList!8668 List!26088)) )
))
(declare-fun lt!536630 () ListLongMap!17305)

(declare-fun lt!536636 () ListLongMap!17305)

(assert (=> b!1183928 (= lt!536630 lt!536636)))

(declare-fun lt!536633 () ListLongMap!17305)

(declare-fun -!1656 (ListLongMap!17305 (_ BitVec 64)) ListLongMap!17305)

(assert (=> b!1183928 (= lt!536636 (-!1656 lt!536633 k!934))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14212 0))(
  ( (ValueCellFull!14212 (v!17617 V!44917)) (EmptyCell!14212) )
))
(declare-datatypes ((array!76456 0))(
  ( (array!76457 (arr!36874 (Array (_ BitVec 32) ValueCell!14212)) (size!37411 (_ BitVec 32))) )
))
(declare-fun lt!536637 () array!76456)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44917)

(declare-fun lt!536620 () array!76454)

(declare-fun zeroValue!944 () V!44917)

(declare-fun getCurrentListMapNoExtraKeys!5088 (array!76454 array!76456 (_ BitVec 32) (_ BitVec 32) V!44917 V!44917 (_ BitVec 32) Int) ListLongMap!17305)

(assert (=> b!1183928 (= lt!536630 (getCurrentListMapNoExtraKeys!5088 lt!536620 lt!536637 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!76456)

(assert (=> b!1183928 (= lt!536633 (getCurrentListMapNoExtraKeys!5088 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!536634 () Unit!39120)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!872 (array!76454 array!76456 (_ BitVec 32) (_ BitVec 32) V!44917 V!44917 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39120)

(assert (=> b!1183928 (= lt!536634 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!872 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1183929 () Bool)

(declare-fun res!786991 () Bool)

(assert (=> b!1183929 (=> (not res!786991) (not e!673175))))

(assert (=> b!1183929 (= res!786991 (arrayNoDuplicates!0 lt!536620 #b00000000000000000000000000000000 Nil!26084))))

(declare-fun b!1183930 () Bool)

(declare-fun res!786999 () Bool)

(assert (=> b!1183930 (=> (not res!786999) (not e!673169))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76454 (_ BitVec 32)) Bool)

(assert (=> b!1183930 (= res!786999 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1183931 () Bool)

(declare-fun res!787000 () Bool)

(assert (=> b!1183931 (=> (not res!787000) (not e!673169))))

(assert (=> b!1183931 (= res!787000 (validKeyInArray!0 k!934))))

(declare-fun b!1183932 () Bool)

(assert (=> b!1183932 (= e!673172 e!673170)))

(declare-fun res!787003 () Bool)

(assert (=> b!1183932 (=> res!787003 e!673170)))

(assert (=> b!1183932 (= res!787003 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!536623 () ListLongMap!17305)

(assert (=> b!1183932 (= lt!536623 (getCurrentListMapNoExtraKeys!5088 lt!536620 lt!536637 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!536635 () V!44917)

(assert (=> b!1183932 (= lt!536637 (array!76457 (store (arr!36874 _values!996) i!673 (ValueCellFull!14212 lt!536635)) (size!37411 _values!996)))))

(declare-fun dynLambda!3053 (Int (_ BitVec 64)) V!44917)

(assert (=> b!1183932 (= lt!536635 (dynLambda!3053 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!536629 () ListLongMap!17305)

(assert (=> b!1183932 (= lt!536629 (getCurrentListMapNoExtraKeys!5088 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1183933 () Bool)

(declare-fun e!673168 () Bool)

(declare-fun e!673171 () Bool)

(assert (=> b!1183933 (= e!673168 e!673171)))

(declare-fun res!786993 () Bool)

(assert (=> b!1183933 (=> res!786993 e!673171)))

(assert (=> b!1183933 (= res!786993 (not (= (select (arr!36873 _keys!1208) from!1455) k!934)))))

(declare-fun b!1183934 () Bool)

(assert (=> b!1183934 (= e!673169 e!673175)))

(declare-fun res!787002 () Bool)

(assert (=> b!1183934 (=> (not res!787002) (not e!673175))))

(assert (=> b!1183934 (= res!787002 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!536620 mask!1564))))

(assert (=> b!1183934 (= lt!536620 (array!76455 (store (arr!36873 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37410 _keys!1208)))))

(declare-fun b!1183935 () Bool)

(assert (=> b!1183935 (= e!673171 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1183937 () Bool)

(declare-fun Unit!39123 () Unit!39120)

(assert (=> b!1183937 (= e!673177 Unit!39123)))

(declare-fun b!1183938 () Bool)

(declare-fun e!673176 () Bool)

(declare-fun e!673173 () Bool)

(assert (=> b!1183938 (= e!673176 (and e!673173 mapRes!46592))))

(declare-fun condMapEmpty!46592 () Bool)

(declare-fun mapDefault!46592 () ValueCell!14212)

