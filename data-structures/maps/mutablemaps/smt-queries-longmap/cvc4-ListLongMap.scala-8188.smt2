; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100034 () Bool)

(assert start!100034)

(declare-fun b_free!25577 () Bool)

(declare-fun b_next!25577 () Bool)

(assert (=> start!100034 (= b_free!25577 (not b_next!25577))))

(declare-fun tp!89446 () Bool)

(declare-fun b_and!42035 () Bool)

(assert (=> start!100034 (= tp!89446 b_and!42035)))

(declare-fun res!792376 () Bool)

(declare-fun e!677172 () Bool)

(assert (=> start!100034 (=> (not res!792376) (not e!677172))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!76980 0))(
  ( (array!76981 (arr!37136 (Array (_ BitVec 32) (_ BitVec 64))) (size!37673 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76980)

(assert (=> start!100034 (= res!792376 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37673 _keys!1208))))))

(assert (=> start!100034 e!677172))

(declare-fun tp_is_empty!30107 () Bool)

(assert (=> start!100034 tp_is_empty!30107))

(declare-fun array_inv!28220 (array!76980) Bool)

(assert (=> start!100034 (array_inv!28220 _keys!1208)))

(assert (=> start!100034 true))

(assert (=> start!100034 tp!89446))

(declare-datatypes ((V!45269 0))(
  ( (V!45270 (val!15110 Int)) )
))
(declare-datatypes ((ValueCell!14344 0))(
  ( (ValueCellFull!14344 (v!17749 V!45269)) (EmptyCell!14344) )
))
(declare-datatypes ((array!76982 0))(
  ( (array!76983 (arr!37137 (Array (_ BitVec 32) ValueCell!14344)) (size!37674 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76982)

(declare-fun e!677166 () Bool)

(declare-fun array_inv!28221 (array!76982) Bool)

(assert (=> start!100034 (and (array_inv!28221 _values!996) e!677166)))

(declare-fun b!1191169 () Bool)

(declare-fun res!792365 () Bool)

(assert (=> b!1191169 (=> (not res!792365) (not e!677172))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1191169 (= res!792365 (validKeyInArray!0 k!934))))

(declare-fun b!1191170 () Bool)

(declare-fun res!792366 () Bool)

(declare-fun e!677167 () Bool)

(assert (=> b!1191170 (=> (not res!792366) (not e!677167))))

(declare-fun lt!541704 () array!76980)

(declare-datatypes ((List!26317 0))(
  ( (Nil!26314) (Cons!26313 (h!27522 (_ BitVec 64)) (t!38893 List!26317)) )
))
(declare-fun arrayNoDuplicates!0 (array!76980 (_ BitVec 32) List!26317) Bool)

(assert (=> b!1191170 (= res!792366 (arrayNoDuplicates!0 lt!541704 #b00000000000000000000000000000000 Nil!26314))))

(declare-fun mapNonEmpty!46988 () Bool)

(declare-fun mapRes!46988 () Bool)

(declare-fun tp!89445 () Bool)

(declare-fun e!677168 () Bool)

(assert (=> mapNonEmpty!46988 (= mapRes!46988 (and tp!89445 e!677168))))

(declare-fun mapValue!46988 () ValueCell!14344)

(declare-fun mapRest!46988 () (Array (_ BitVec 32) ValueCell!14344))

(declare-fun mapKey!46988 () (_ BitVec 32))

(assert (=> mapNonEmpty!46988 (= (arr!37137 _values!996) (store mapRest!46988 mapKey!46988 mapValue!46988))))

(declare-fun b!1191171 () Bool)

(declare-fun res!792367 () Bool)

(assert (=> b!1191171 (=> (not res!792367) (not e!677172))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1191171 (= res!792367 (validMask!0 mask!1564))))

(declare-fun b!1191172 () Bool)

(declare-fun res!792370 () Bool)

(assert (=> b!1191172 (=> (not res!792370) (not e!677172))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1191172 (= res!792370 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37673 _keys!1208))))))

(declare-fun b!1191173 () Bool)

(declare-fun e!677171 () Bool)

(assert (=> b!1191173 (= e!677171 true)))

(declare-fun zeroValue!944 () V!45269)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45269)

(declare-fun lt!541702 () array!76982)

(declare-datatypes ((tuple2!19556 0))(
  ( (tuple2!19557 (_1!9788 (_ BitVec 64)) (_2!9788 V!45269)) )
))
(declare-datatypes ((List!26318 0))(
  ( (Nil!26315) (Cons!26314 (h!27523 tuple2!19556) (t!38894 List!26318)) )
))
(declare-datatypes ((ListLongMap!17537 0))(
  ( (ListLongMap!17538 (toList!8784 List!26318)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5198 (array!76980 array!76982 (_ BitVec 32) (_ BitVec 32) V!45269 V!45269 (_ BitVec 32) Int) ListLongMap!17537)

(declare-fun -!1765 (ListLongMap!17537 (_ BitVec 64)) ListLongMap!17537)

(assert (=> b!1191173 (= (getCurrentListMapNoExtraKeys!5198 lt!541704 lt!541702 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1765 (getCurrentListMapNoExtraKeys!5198 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-datatypes ((Unit!39462 0))(
  ( (Unit!39463) )
))
(declare-fun lt!541700 () Unit!39462)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!971 (array!76980 array!76982 (_ BitVec 32) (_ BitVec 32) V!45269 V!45269 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39462)

(assert (=> b!1191173 (= lt!541700 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!971 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!46988 () Bool)

(assert (=> mapIsEmpty!46988 mapRes!46988))

(declare-fun b!1191174 () Bool)

(declare-fun e!677170 () Bool)

(assert (=> b!1191174 (= e!677167 (not e!677170))))

(declare-fun res!792372 () Bool)

(assert (=> b!1191174 (=> res!792372 e!677170)))

(assert (=> b!1191174 (= res!792372 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76980 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1191174 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!541699 () Unit!39462)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76980 (_ BitVec 64) (_ BitVec 32)) Unit!39462)

(assert (=> b!1191174 (= lt!541699 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1191175 () Bool)

(assert (=> b!1191175 (= e!677172 e!677167)))

(declare-fun res!792373 () Bool)

(assert (=> b!1191175 (=> (not res!792373) (not e!677167))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76980 (_ BitVec 32)) Bool)

(assert (=> b!1191175 (= res!792373 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541704 mask!1564))))

(assert (=> b!1191175 (= lt!541704 (array!76981 (store (arr!37136 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37673 _keys!1208)))))

(declare-fun b!1191176 () Bool)

(declare-fun res!792374 () Bool)

(assert (=> b!1191176 (=> (not res!792374) (not e!677172))))

(assert (=> b!1191176 (= res!792374 (and (= (size!37674 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37673 _keys!1208) (size!37674 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1191177 () Bool)

(assert (=> b!1191177 (= e!677170 e!677171)))

(declare-fun res!792369 () Bool)

(assert (=> b!1191177 (=> res!792369 e!677171)))

(assert (=> b!1191177 (= res!792369 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!541703 () ListLongMap!17537)

(assert (=> b!1191177 (= lt!541703 (getCurrentListMapNoExtraKeys!5198 lt!541704 lt!541702 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3143 (Int (_ BitVec 64)) V!45269)

(assert (=> b!1191177 (= lt!541702 (array!76983 (store (arr!37137 _values!996) i!673 (ValueCellFull!14344 (dynLambda!3143 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37674 _values!996)))))

(declare-fun lt!541701 () ListLongMap!17537)

(assert (=> b!1191177 (= lt!541701 (getCurrentListMapNoExtraKeys!5198 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1191178 () Bool)

(declare-fun res!792371 () Bool)

(assert (=> b!1191178 (=> (not res!792371) (not e!677172))))

(assert (=> b!1191178 (= res!792371 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1191179 () Bool)

(declare-fun res!792368 () Bool)

(assert (=> b!1191179 (=> (not res!792368) (not e!677172))))

(assert (=> b!1191179 (= res!792368 (= (select (arr!37136 _keys!1208) i!673) k!934))))

(declare-fun b!1191180 () Bool)

(declare-fun e!677173 () Bool)

(assert (=> b!1191180 (= e!677173 tp_is_empty!30107)))

(declare-fun b!1191181 () Bool)

(assert (=> b!1191181 (= e!677166 (and e!677173 mapRes!46988))))

(declare-fun condMapEmpty!46988 () Bool)

(declare-fun mapDefault!46988 () ValueCell!14344)

