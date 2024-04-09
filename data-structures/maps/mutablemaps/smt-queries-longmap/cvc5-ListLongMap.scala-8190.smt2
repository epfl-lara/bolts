; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100042 () Bool)

(assert start!100042)

(declare-fun b_free!25585 () Bool)

(declare-fun b_next!25585 () Bool)

(assert (=> start!100042 (= b_free!25585 (not b_next!25585))))

(declare-fun tp!89469 () Bool)

(declare-fun b_and!42051 () Bool)

(assert (=> start!100042 (= tp!89469 b_and!42051)))

(declare-fun b!1191357 () Bool)

(declare-fun e!677269 () Bool)

(declare-fun e!677268 () Bool)

(assert (=> b!1191357 (= e!677269 e!677268)))

(declare-fun res!792517 () Bool)

(assert (=> b!1191357 (=> (not res!792517) (not e!677268))))

(declare-datatypes ((array!76996 0))(
  ( (array!76997 (arr!37144 (Array (_ BitVec 32) (_ BitVec 64))) (size!37681 (_ BitVec 32))) )
))
(declare-fun lt!541772 () array!76996)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76996 (_ BitVec 32)) Bool)

(assert (=> b!1191357 (= res!792517 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541772 mask!1564))))

(declare-fun _keys!1208 () array!76996)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1191357 (= lt!541772 (array!76997 (store (arr!37144 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37681 _keys!1208)))))

(declare-fun mapIsEmpty!47000 () Bool)

(declare-fun mapRes!47000 () Bool)

(assert (=> mapIsEmpty!47000 mapRes!47000))

(declare-fun b!1191358 () Bool)

(declare-fun res!792514 () Bool)

(assert (=> b!1191358 (=> (not res!792514) (not e!677269))))

(declare-datatypes ((List!26323 0))(
  ( (Nil!26320) (Cons!26319 (h!27528 (_ BitVec 64)) (t!38907 List!26323)) )
))
(declare-fun arrayNoDuplicates!0 (array!76996 (_ BitVec 32) List!26323) Bool)

(assert (=> b!1191358 (= res!792514 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26320))))

(declare-fun b!1191359 () Bool)

(declare-fun res!792509 () Bool)

(assert (=> b!1191359 (=> (not res!792509) (not e!677269))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1191359 (= res!792509 (validKeyInArray!0 k!934))))

(declare-fun b!1191360 () Bool)

(declare-fun e!677265 () Bool)

(assert (=> b!1191360 (= e!677265 true)))

(declare-datatypes ((V!45281 0))(
  ( (V!45282 (val!15114 Int)) )
))
(declare-fun zeroValue!944 () V!45281)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14348 0))(
  ( (ValueCellFull!14348 (v!17753 V!45281)) (EmptyCell!14348) )
))
(declare-datatypes ((array!76998 0))(
  ( (array!76999 (arr!37145 (Array (_ BitVec 32) ValueCell!14348)) (size!37682 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76998)

(declare-fun lt!541771 () array!76998)

(declare-fun minValue!944 () V!45281)

(declare-datatypes ((tuple2!19562 0))(
  ( (tuple2!19563 (_1!9791 (_ BitVec 64)) (_2!9791 V!45281)) )
))
(declare-datatypes ((List!26324 0))(
  ( (Nil!26321) (Cons!26320 (h!27529 tuple2!19562) (t!38908 List!26324)) )
))
(declare-datatypes ((ListLongMap!17543 0))(
  ( (ListLongMap!17544 (toList!8787 List!26324)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5201 (array!76996 array!76998 (_ BitVec 32) (_ BitVec 32) V!45281 V!45281 (_ BitVec 32) Int) ListLongMap!17543)

(declare-fun -!1767 (ListLongMap!17543 (_ BitVec 64)) ListLongMap!17543)

(assert (=> b!1191360 (= (getCurrentListMapNoExtraKeys!5201 lt!541772 lt!541771 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1767 (getCurrentListMapNoExtraKeys!5201 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-datatypes ((Unit!39468 0))(
  ( (Unit!39469) )
))
(declare-fun lt!541774 () Unit!39468)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!973 (array!76996 array!76998 (_ BitVec 32) (_ BitVec 32) V!45281 V!45281 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39468)

(assert (=> b!1191360 (= lt!541774 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!973 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!792519 () Bool)

(assert (=> start!100042 (=> (not res!792519) (not e!677269))))

(assert (=> start!100042 (= res!792519 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37681 _keys!1208))))))

(assert (=> start!100042 e!677269))

(declare-fun tp_is_empty!30115 () Bool)

(assert (=> start!100042 tp_is_empty!30115))

(declare-fun array_inv!28226 (array!76996) Bool)

(assert (=> start!100042 (array_inv!28226 _keys!1208)))

(assert (=> start!100042 true))

(assert (=> start!100042 tp!89469))

(declare-fun e!677264 () Bool)

(declare-fun array_inv!28227 (array!76998) Bool)

(assert (=> start!100042 (and (array_inv!28227 _values!996) e!677264)))

(declare-fun b!1191361 () Bool)

(declare-fun e!677267 () Bool)

(assert (=> b!1191361 (= e!677267 e!677265)))

(declare-fun res!792513 () Bool)

(assert (=> b!1191361 (=> res!792513 e!677265)))

(assert (=> b!1191361 (= res!792513 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!541776 () ListLongMap!17543)

(assert (=> b!1191361 (= lt!541776 (getCurrentListMapNoExtraKeys!5201 lt!541772 lt!541771 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3146 (Int (_ BitVec 64)) V!45281)

(assert (=> b!1191361 (= lt!541771 (array!76999 (store (arr!37145 _values!996) i!673 (ValueCellFull!14348 (dynLambda!3146 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37682 _values!996)))))

(declare-fun lt!541773 () ListLongMap!17543)

(assert (=> b!1191361 (= lt!541773 (getCurrentListMapNoExtraKeys!5201 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1191362 () Bool)

(declare-fun e!677263 () Bool)

(assert (=> b!1191362 (= e!677263 tp_is_empty!30115)))

(declare-fun b!1191363 () Bool)

(declare-fun res!792515 () Bool)

(assert (=> b!1191363 (=> (not res!792515) (not e!677269))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1191363 (= res!792515 (validMask!0 mask!1564))))

(declare-fun b!1191364 () Bool)

(declare-fun res!792512 () Bool)

(assert (=> b!1191364 (=> (not res!792512) (not e!677268))))

(assert (=> b!1191364 (= res!792512 (arrayNoDuplicates!0 lt!541772 #b00000000000000000000000000000000 Nil!26320))))

(declare-fun b!1191365 () Bool)

(assert (=> b!1191365 (= e!677268 (not e!677267))))

(declare-fun res!792520 () Bool)

(assert (=> b!1191365 (=> res!792520 e!677267)))

(assert (=> b!1191365 (= res!792520 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76996 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1191365 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!541775 () Unit!39468)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76996 (_ BitVec 64) (_ BitVec 32)) Unit!39468)

(assert (=> b!1191365 (= lt!541775 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1191366 () Bool)

(declare-fun e!677266 () Bool)

(assert (=> b!1191366 (= e!677266 tp_is_empty!30115)))

(declare-fun b!1191367 () Bool)

(declare-fun res!792516 () Bool)

(assert (=> b!1191367 (=> (not res!792516) (not e!677269))))

(assert (=> b!1191367 (= res!792516 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37681 _keys!1208))))))

(declare-fun b!1191368 () Bool)

(assert (=> b!1191368 (= e!677264 (and e!677266 mapRes!47000))))

(declare-fun condMapEmpty!47000 () Bool)

(declare-fun mapDefault!47000 () ValueCell!14348)

