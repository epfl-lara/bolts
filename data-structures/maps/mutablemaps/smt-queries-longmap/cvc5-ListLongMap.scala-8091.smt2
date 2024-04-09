; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99448 () Bool)

(assert start!99448)

(declare-fun b_free!24991 () Bool)

(declare-fun b_next!24991 () Bool)

(assert (=> start!99448 (= b_free!24991 (not b_next!24991))))

(declare-fun tp!87687 () Bool)

(declare-fun b_and!40863 () Bool)

(assert (=> start!99448 (= tp!87687 b_and!40863)))

(declare-fun b!1173601 () Bool)

(declare-fun res!779416 () Bool)

(declare-fun e!667129 () Bool)

(assert (=> b!1173601 (=> (not res!779416) (not e!667129))))

(declare-datatypes ((array!75818 0))(
  ( (array!75819 (arr!36555 (Array (_ BitVec 32) (_ BitVec 64))) (size!37092 (_ BitVec 32))) )
))
(declare-fun lt!529026 () array!75818)

(declare-datatypes ((List!25809 0))(
  ( (Nil!25806) (Cons!25805 (h!27014 (_ BitVec 64)) (t!37799 List!25809)) )
))
(declare-fun arrayNoDuplicates!0 (array!75818 (_ BitVec 32) List!25809) Bool)

(assert (=> b!1173601 (= res!779416 (arrayNoDuplicates!0 lt!529026 #b00000000000000000000000000000000 Nil!25806))))

(declare-fun e!667119 () Bool)

(declare-fun _keys!1208 () array!75818)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun b!1173602 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75818 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1173602 (= e!667119 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1173603 () Bool)

(declare-fun e!667124 () Bool)

(assert (=> b!1173603 (= e!667124 true)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1173603 (not (= (select (arr!36555 _keys!1208) from!1455) k!934))))

(declare-datatypes ((Unit!38615 0))(
  ( (Unit!38616) )
))
(declare-fun lt!529030 () Unit!38615)

(declare-fun e!667118 () Unit!38615)

(assert (=> b!1173603 (= lt!529030 e!667118)))

(declare-fun c!116558 () Bool)

(assert (=> b!1173603 (= c!116558 (= (select (arr!36555 _keys!1208) from!1455) k!934))))

(declare-fun e!667121 () Bool)

(assert (=> b!1173603 e!667121))

(declare-fun res!779403 () Bool)

(assert (=> b!1173603 (=> (not res!779403) (not e!667121))))

(declare-datatypes ((V!44489 0))(
  ( (V!44490 (val!14817 Int)) )
))
(declare-datatypes ((tuple2!19036 0))(
  ( (tuple2!19037 (_1!9528 (_ BitVec 64)) (_2!9528 V!44489)) )
))
(declare-datatypes ((List!25810 0))(
  ( (Nil!25807) (Cons!25806 (h!27015 tuple2!19036) (t!37800 List!25810)) )
))
(declare-datatypes ((ListLongMap!17017 0))(
  ( (ListLongMap!17018 (toList!8524 List!25810)) )
))
(declare-fun lt!529028 () ListLongMap!17017)

(declare-fun lt!529036 () V!44489)

(declare-datatypes ((ValueCell!14051 0))(
  ( (ValueCellFull!14051 (v!17456 V!44489)) (EmptyCell!14051) )
))
(declare-datatypes ((array!75820 0))(
  ( (array!75821 (arr!36556 (Array (_ BitVec 32) ValueCell!14051)) (size!37093 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75820)

(declare-fun lt!529029 () ListLongMap!17017)

(declare-fun +!3758 (ListLongMap!17017 tuple2!19036) ListLongMap!17017)

(declare-fun get!18689 (ValueCell!14051 V!44489) V!44489)

(assert (=> b!1173603 (= res!779403 (= lt!529028 (+!3758 lt!529029 (tuple2!19037 (select (arr!36555 _keys!1208) from!1455) (get!18689 (select (arr!36556 _values!996) from!1455) lt!529036)))))))

(declare-fun b!1173604 () Bool)

(declare-fun e!667128 () Bool)

(declare-fun e!667120 () Bool)

(assert (=> b!1173604 (= e!667128 e!667120)))

(declare-fun res!779411 () Bool)

(assert (=> b!1173604 (=> res!779411 e!667120)))

(assert (=> b!1173604 (= res!779411 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44489)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun minValue!944 () V!44489)

(declare-fun lt!529034 () array!75820)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4956 (array!75818 array!75820 (_ BitVec 32) (_ BitVec 32) V!44489 V!44489 (_ BitVec 32) Int) ListLongMap!17017)

(assert (=> b!1173604 (= lt!529028 (getCurrentListMapNoExtraKeys!4956 lt!529026 lt!529034 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1173604 (= lt!529034 (array!75821 (store (arr!36556 _values!996) i!673 (ValueCellFull!14051 lt!529036)) (size!37093 _values!996)))))

(declare-fun dynLambda!2940 (Int (_ BitVec 64)) V!44489)

(assert (=> b!1173604 (= lt!529036 (dynLambda!2940 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!529031 () ListLongMap!17017)

(assert (=> b!1173604 (= lt!529031 (getCurrentListMapNoExtraKeys!4956 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1173605 () Bool)

(declare-fun Unit!38617 () Unit!38615)

(assert (=> b!1173605 (= e!667118 Unit!38617)))

(declare-fun res!779404 () Bool)

(declare-fun e!667123 () Bool)

(assert (=> start!99448 (=> (not res!779404) (not e!667123))))

(assert (=> start!99448 (= res!779404 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37092 _keys!1208))))))

(assert (=> start!99448 e!667123))

(declare-fun tp_is_empty!29521 () Bool)

(assert (=> start!99448 tp_is_empty!29521))

(declare-fun array_inv!27816 (array!75818) Bool)

(assert (=> start!99448 (array_inv!27816 _keys!1208)))

(assert (=> start!99448 true))

(assert (=> start!99448 tp!87687))

(declare-fun e!667126 () Bool)

(declare-fun array_inv!27817 (array!75820) Bool)

(assert (=> start!99448 (and (array_inv!27817 _values!996) e!667126)))

(declare-fun mapIsEmpty!46109 () Bool)

(declare-fun mapRes!46109 () Bool)

(assert (=> mapIsEmpty!46109 mapRes!46109))

(declare-fun mapNonEmpty!46109 () Bool)

(declare-fun tp!87688 () Bool)

(declare-fun e!667125 () Bool)

(assert (=> mapNonEmpty!46109 (= mapRes!46109 (and tp!87688 e!667125))))

(declare-fun mapKey!46109 () (_ BitVec 32))

(declare-fun mapRest!46109 () (Array (_ BitVec 32) ValueCell!14051))

(declare-fun mapValue!46109 () ValueCell!14051)

(assert (=> mapNonEmpty!46109 (= (arr!36556 _values!996) (store mapRest!46109 mapKey!46109 mapValue!46109))))

(declare-fun b!1173606 () Bool)

(assert (=> b!1173606 (= e!667123 e!667129)))

(declare-fun res!779414 () Bool)

(assert (=> b!1173606 (=> (not res!779414) (not e!667129))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75818 (_ BitVec 32)) Bool)

(assert (=> b!1173606 (= res!779414 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!529026 mask!1564))))

(assert (=> b!1173606 (= lt!529026 (array!75819 (store (arr!36555 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37092 _keys!1208)))))

(declare-fun b!1173607 () Bool)

(declare-fun res!779408 () Bool)

(assert (=> b!1173607 (=> (not res!779408) (not e!667123))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1173607 (= res!779408 (validKeyInArray!0 k!934))))

(declare-fun b!1173608 () Bool)

(assert (=> b!1173608 (= e!667129 (not e!667128))))

(declare-fun res!779409 () Bool)

(assert (=> b!1173608 (=> res!779409 e!667128)))

(assert (=> b!1173608 (= res!779409 (bvsgt from!1455 i!673))))

(assert (=> b!1173608 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!529032 () Unit!38615)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75818 (_ BitVec 64) (_ BitVec 32)) Unit!38615)

(assert (=> b!1173608 (= lt!529032 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1173609 () Bool)

(assert (=> b!1173609 (= e!667121 e!667119)))

(declare-fun res!779413 () Bool)

(assert (=> b!1173609 (=> res!779413 e!667119)))

(assert (=> b!1173609 (= res!779413 (not (= (select (arr!36555 _keys!1208) from!1455) k!934)))))

(declare-fun b!1173610 () Bool)

(declare-fun res!779406 () Bool)

(assert (=> b!1173610 (=> (not res!779406) (not e!667123))))

(assert (=> b!1173610 (= res!779406 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25806))))

(declare-fun b!1173611 () Bool)

(declare-fun e!667127 () Bool)

(assert (=> b!1173611 (= e!667127 tp_is_empty!29521)))

(declare-fun b!1173612 () Bool)

(assert (=> b!1173612 (= e!667120 e!667124)))

(declare-fun res!779402 () Bool)

(assert (=> b!1173612 (=> res!779402 e!667124)))

(assert (=> b!1173612 (= res!779402 (not (validKeyInArray!0 (select (arr!36555 _keys!1208) from!1455))))))

(declare-fun lt!529037 () ListLongMap!17017)

(assert (=> b!1173612 (= lt!529037 lt!529029)))

(declare-fun lt!529027 () ListLongMap!17017)

(declare-fun -!1536 (ListLongMap!17017 (_ BitVec 64)) ListLongMap!17017)

(assert (=> b!1173612 (= lt!529029 (-!1536 lt!529027 k!934))))

(assert (=> b!1173612 (= lt!529037 (getCurrentListMapNoExtraKeys!4956 lt!529026 lt!529034 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1173612 (= lt!529027 (getCurrentListMapNoExtraKeys!4956 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!529035 () Unit!38615)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!760 (array!75818 array!75820 (_ BitVec 32) (_ BitVec 32) V!44489 V!44489 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38615)

(assert (=> b!1173612 (= lt!529035 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!760 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1173613 () Bool)

(declare-fun res!779405 () Bool)

(assert (=> b!1173613 (=> (not res!779405) (not e!667123))))

(assert (=> b!1173613 (= res!779405 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37092 _keys!1208))))))

(declare-fun b!1173614 () Bool)

(declare-fun Unit!38618 () Unit!38615)

(assert (=> b!1173614 (= e!667118 Unit!38618)))

(declare-fun lt!529033 () Unit!38615)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75818 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38615)

(assert (=> b!1173614 (= lt!529033 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1173614 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!529038 () Unit!38615)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75818 (_ BitVec 32) (_ BitVec 32)) Unit!38615)

(assert (=> b!1173614 (= lt!529038 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1173614 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25806)))

(declare-fun lt!529025 () Unit!38615)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75818 (_ BitVec 64) (_ BitVec 32) List!25809) Unit!38615)

(assert (=> b!1173614 (= lt!529025 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25806))))

(assert (=> b!1173614 false))

(declare-fun b!1173615 () Bool)

(declare-fun res!779412 () Bool)

(assert (=> b!1173615 (=> (not res!779412) (not e!667123))))

(assert (=> b!1173615 (= res!779412 (= (select (arr!36555 _keys!1208) i!673) k!934))))

(declare-fun b!1173616 () Bool)

(declare-fun res!779407 () Bool)

(assert (=> b!1173616 (=> (not res!779407) (not e!667123))))

(assert (=> b!1173616 (= res!779407 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1173617 () Bool)

(assert (=> b!1173617 (= e!667125 tp_is_empty!29521)))

(declare-fun b!1173618 () Bool)

(declare-fun res!779415 () Bool)

(assert (=> b!1173618 (=> (not res!779415) (not e!667123))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1173618 (= res!779415 (validMask!0 mask!1564))))

(declare-fun b!1173619 () Bool)

(declare-fun res!779410 () Bool)

(assert (=> b!1173619 (=> (not res!779410) (not e!667123))))

(assert (=> b!1173619 (= res!779410 (and (= (size!37093 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37092 _keys!1208) (size!37093 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1173620 () Bool)

(assert (=> b!1173620 (= e!667126 (and e!667127 mapRes!46109))))

(declare-fun condMapEmpty!46109 () Bool)

(declare-fun mapDefault!46109 () ValueCell!14051)

