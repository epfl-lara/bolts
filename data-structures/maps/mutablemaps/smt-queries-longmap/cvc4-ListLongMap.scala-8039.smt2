; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99114 () Bool)

(assert start!99114)

(declare-fun b_free!24683 () Bool)

(declare-fun b_next!24683 () Bool)

(assert (=> start!99114 (= b_free!24683 (not b_next!24683))))

(declare-fun tp!86761 () Bool)

(declare-fun b_and!40229 () Bool)

(assert (=> start!99114 (= tp!86761 b_and!40229)))

(declare-fun b!1165086 () Bool)

(declare-fun e!662409 () Bool)

(declare-fun tp_is_empty!29213 () Bool)

(assert (=> b!1165086 (= e!662409 tp_is_empty!29213)))

(declare-fun b!1165087 () Bool)

(declare-fun res!772763 () Bool)

(declare-fun e!662405 () Bool)

(assert (=> b!1165087 (=> (not res!772763) (not e!662405))))

(declare-datatypes ((array!75210 0))(
  ( (array!75211 (arr!36252 (Array (_ BitVec 32) (_ BitVec 64))) (size!36789 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75210)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75210 (_ BitVec 32)) Bool)

(assert (=> b!1165087 (= res!772763 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1165088 () Bool)

(declare-fun res!772766 () Bool)

(assert (=> b!1165088 (=> (not res!772766) (not e!662405))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1165088 (= res!772766 (validKeyInArray!0 k!934))))

(declare-fun b!1165089 () Bool)

(declare-fun res!772767 () Bool)

(assert (=> b!1165089 (=> (not res!772767) (not e!662405))))

(declare-datatypes ((List!25550 0))(
  ( (Nil!25547) (Cons!25546 (h!26755 (_ BitVec 64)) (t!37232 List!25550)) )
))
(declare-fun arrayNoDuplicates!0 (array!75210 (_ BitVec 32) List!25550) Bool)

(assert (=> b!1165089 (= res!772767 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25547))))

(declare-fun b!1165090 () Bool)

(declare-fun e!662407 () Bool)

(assert (=> b!1165090 (= e!662405 e!662407)))

(declare-fun res!772765 () Bool)

(assert (=> b!1165090 (=> (not res!772765) (not e!662407))))

(declare-fun lt!524781 () array!75210)

(assert (=> b!1165090 (= res!772765 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!524781 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1165090 (= lt!524781 (array!75211 (store (arr!36252 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36789 _keys!1208)))))

(declare-fun mapIsEmpty!45644 () Bool)

(declare-fun mapRes!45644 () Bool)

(assert (=> mapIsEmpty!45644 mapRes!45644))

(declare-fun b!1165091 () Bool)

(declare-fun res!772760 () Bool)

(assert (=> b!1165091 (=> (not res!772760) (not e!662405))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!44077 0))(
  ( (V!44078 (val!14663 Int)) )
))
(declare-datatypes ((ValueCell!13897 0))(
  ( (ValueCellFull!13897 (v!17301 V!44077)) (EmptyCell!13897) )
))
(declare-datatypes ((array!75212 0))(
  ( (array!75213 (arr!36253 (Array (_ BitVec 32) ValueCell!13897)) (size!36790 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75212)

(assert (=> b!1165091 (= res!772760 (and (= (size!36790 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36789 _keys!1208) (size!36790 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1165092 () Bool)

(declare-fun res!772759 () Bool)

(assert (=> b!1165092 (=> (not res!772759) (not e!662405))))

(assert (=> b!1165092 (= res!772759 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36789 _keys!1208))))))

(declare-fun b!1165093 () Bool)

(declare-fun e!662403 () Bool)

(assert (=> b!1165093 (= e!662403 tp_is_empty!29213)))

(declare-fun b!1165094 () Bool)

(declare-fun res!772764 () Bool)

(assert (=> b!1165094 (=> (not res!772764) (not e!662407))))

(assert (=> b!1165094 (= res!772764 (arrayNoDuplicates!0 lt!524781 #b00000000000000000000000000000000 Nil!25547))))

(declare-fun b!1165095 () Bool)

(declare-fun e!662404 () Bool)

(assert (=> b!1165095 (= e!662404 true)))

(declare-fun zeroValue!944 () V!44077)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((tuple2!18774 0))(
  ( (tuple2!18775 (_1!9397 (_ BitVec 64)) (_2!9397 V!44077)) )
))
(declare-datatypes ((List!25551 0))(
  ( (Nil!25548) (Cons!25547 (h!26756 tuple2!18774) (t!37233 List!25551)) )
))
(declare-datatypes ((ListLongMap!16755 0))(
  ( (ListLongMap!16756 (toList!8393 List!25551)) )
))
(declare-fun lt!524780 () ListLongMap!16755)

(declare-fun minValue!944 () V!44077)

(declare-fun getCurrentListMapNoExtraKeys!4826 (array!75210 array!75212 (_ BitVec 32) (_ BitVec 32) V!44077 V!44077 (_ BitVec 32) Int) ListLongMap!16755)

(declare-fun dynLambda!2823 (Int (_ BitVec 64)) V!44077)

(assert (=> b!1165095 (= lt!524780 (getCurrentListMapNoExtraKeys!4826 lt!524781 (array!75213 (store (arr!36253 _values!996) i!673 (ValueCellFull!13897 (dynLambda!2823 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36790 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!524779 () ListLongMap!16755)

(assert (=> b!1165095 (= lt!524779 (getCurrentListMapNoExtraKeys!4826 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1165096 () Bool)

(assert (=> b!1165096 (= e!662407 (not e!662404))))

(declare-fun res!772769 () Bool)

(assert (=> b!1165096 (=> res!772769 e!662404)))

(assert (=> b!1165096 (= res!772769 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75210 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1165096 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38342 0))(
  ( (Unit!38343) )
))
(declare-fun lt!524778 () Unit!38342)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75210 (_ BitVec 64) (_ BitVec 32)) Unit!38342)

(assert (=> b!1165096 (= lt!524778 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1165097 () Bool)

(declare-fun res!772761 () Bool)

(assert (=> b!1165097 (=> (not res!772761) (not e!662405))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1165097 (= res!772761 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!45644 () Bool)

(declare-fun tp!86760 () Bool)

(assert (=> mapNonEmpty!45644 (= mapRes!45644 (and tp!86760 e!662403))))

(declare-fun mapValue!45644 () ValueCell!13897)

(declare-fun mapRest!45644 () (Array (_ BitVec 32) ValueCell!13897))

(declare-fun mapKey!45644 () (_ BitVec 32))

(assert (=> mapNonEmpty!45644 (= (arr!36253 _values!996) (store mapRest!45644 mapKey!45644 mapValue!45644))))

(declare-fun res!772762 () Bool)

(assert (=> start!99114 (=> (not res!772762) (not e!662405))))

(assert (=> start!99114 (= res!772762 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36789 _keys!1208))))))

(assert (=> start!99114 e!662405))

(assert (=> start!99114 tp_is_empty!29213))

(declare-fun array_inv!27602 (array!75210) Bool)

(assert (=> start!99114 (array_inv!27602 _keys!1208)))

(assert (=> start!99114 true))

(assert (=> start!99114 tp!86761))

(declare-fun e!662408 () Bool)

(declare-fun array_inv!27603 (array!75212) Bool)

(assert (=> start!99114 (and (array_inv!27603 _values!996) e!662408)))

(declare-fun b!1165098 () Bool)

(assert (=> b!1165098 (= e!662408 (and e!662409 mapRes!45644))))

(declare-fun condMapEmpty!45644 () Bool)

(declare-fun mapDefault!45644 () ValueCell!13897)

