; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99728 () Bool)

(assert start!99728)

(declare-fun b_free!25271 () Bool)

(declare-fun b_next!25271 () Bool)

(assert (=> start!99728 (= b_free!25271 (not b_next!25271))))

(declare-fun tp!88528 () Bool)

(declare-fun b_and!41423 () Bool)

(assert (=> start!99728 (= tp!88528 b_and!41423)))

(declare-fun b!1182623 () Bool)

(declare-fun e!672418 () Bool)

(declare-fun tp_is_empty!29801 () Bool)

(assert (=> b!1182623 (= e!672418 tp_is_empty!29801)))

(declare-fun b!1182624 () Bool)

(declare-fun e!672414 () Bool)

(declare-fun e!672419 () Bool)

(assert (=> b!1182624 (= e!672414 e!672419)))

(declare-fun res!786051 () Bool)

(assert (=> b!1182624 (=> res!786051 e!672419)))

(declare-datatypes ((array!76370 0))(
  ( (array!76371 (arr!36831 (Array (_ BitVec 32) (_ BitVec 64))) (size!37368 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76370)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1182624 (= res!786051 (not (validKeyInArray!0 (select (arr!36831 _keys!1208) from!1455))))))

(declare-datatypes ((V!44861 0))(
  ( (V!44862 (val!14957 Int)) )
))
(declare-datatypes ((tuple2!19290 0))(
  ( (tuple2!19291 (_1!9655 (_ BitVec 64)) (_2!9655 V!44861)) )
))
(declare-datatypes ((List!26052 0))(
  ( (Nil!26049) (Cons!26048 (h!27257 tuple2!19290) (t!38322 List!26052)) )
))
(declare-datatypes ((ListLongMap!17271 0))(
  ( (ListLongMap!17272 (toList!8651 List!26052)) )
))
(declare-fun lt!535429 () ListLongMap!17271)

(declare-fun lt!535436 () ListLongMap!17271)

(assert (=> b!1182624 (= lt!535429 lt!535436)))

(declare-fun lt!535430 () ListLongMap!17271)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1640 (ListLongMap!17271 (_ BitVec 64)) ListLongMap!17271)

(assert (=> b!1182624 (= lt!535436 (-!1640 lt!535430 k!934))))

(declare-fun zeroValue!944 () V!44861)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14191 0))(
  ( (ValueCellFull!14191 (v!17596 V!44861)) (EmptyCell!14191) )
))
(declare-datatypes ((array!76372 0))(
  ( (array!76373 (arr!36832 (Array (_ BitVec 32) ValueCell!14191)) (size!37369 (_ BitVec 32))) )
))
(declare-fun lt!535438 () array!76372)

(declare-fun lt!535423 () array!76370)

(declare-fun minValue!944 () V!44861)

(declare-fun getCurrentListMapNoExtraKeys!5073 (array!76370 array!76372 (_ BitVec 32) (_ BitVec 32) V!44861 V!44861 (_ BitVec 32) Int) ListLongMap!17271)

(assert (=> b!1182624 (= lt!535429 (getCurrentListMapNoExtraKeys!5073 lt!535423 lt!535438 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!76372)

(assert (=> b!1182624 (= lt!535430 (getCurrentListMapNoExtraKeys!5073 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39059 0))(
  ( (Unit!39060) )
))
(declare-fun lt!535427 () Unit!39059)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!860 (array!76370 array!76372 (_ BitVec 32) (_ BitVec 32) V!44861 V!44861 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39059)

(assert (=> b!1182624 (= lt!535427 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!860 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1182625 () Bool)

(declare-fun e!672413 () Bool)

(declare-fun e!672411 () Bool)

(assert (=> b!1182625 (= e!672413 e!672411)))

(declare-fun res!786045 () Bool)

(assert (=> b!1182625 (=> res!786045 e!672411)))

(assert (=> b!1182625 (= res!786045 (not (= (select (arr!36831 _keys!1208) from!1455) k!934)))))

(declare-fun b!1182626 () Bool)

(declare-fun res!786049 () Bool)

(declare-fun e!672417 () Bool)

(assert (=> b!1182626 (=> (not res!786049) (not e!672417))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1182626 (= res!786049 (validMask!0 mask!1564))))

(declare-fun b!1182627 () Bool)

(declare-fun res!786057 () Bool)

(assert (=> b!1182627 (=> (not res!786057) (not e!672417))))

(assert (=> b!1182627 (= res!786057 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37368 _keys!1208))))))

(declare-fun b!1182628 () Bool)

(declare-fun e!672410 () Bool)

(declare-fun e!672420 () Bool)

(declare-fun mapRes!46529 () Bool)

(assert (=> b!1182628 (= e!672410 (and e!672420 mapRes!46529))))

(declare-fun condMapEmpty!46529 () Bool)

(declare-fun mapDefault!46529 () ValueCell!14191)

