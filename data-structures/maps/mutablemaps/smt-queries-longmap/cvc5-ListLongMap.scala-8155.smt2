; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99832 () Bool)

(assert start!99832)

(declare-fun b_free!25375 () Bool)

(declare-fun b_next!25375 () Bool)

(assert (=> start!99832 (= b_free!25375 (not b_next!25375))))

(declare-fun tp!88839 () Bool)

(declare-fun b_and!41631 () Bool)

(assert (=> start!99832 (= tp!88839 b_and!41631)))

(declare-fun b!1185847 () Bool)

(declare-fun e!674286 () Bool)

(declare-fun e!674282 () Bool)

(assert (=> b!1185847 (= e!674286 e!674282)))

(declare-fun res!788398 () Bool)

(assert (=> b!1185847 (=> res!788398 e!674282)))

(declare-datatypes ((array!76578 0))(
  ( (array!76579 (arr!36935 (Array (_ BitVec 32) (_ BitVec 64))) (size!37472 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76578)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1185847 (= res!788398 (not (validKeyInArray!0 (select (arr!36935 _keys!1208) from!1455))))))

(declare-datatypes ((V!45001 0))(
  ( (V!45002 (val!15009 Int)) )
))
(declare-datatypes ((tuple2!19382 0))(
  ( (tuple2!19383 (_1!9701 (_ BitVec 64)) (_2!9701 V!45001)) )
))
(declare-datatypes ((List!26143 0))(
  ( (Nil!26140) (Cons!26139 (h!27348 tuple2!19382) (t!38517 List!26143)) )
))
(declare-datatypes ((ListLongMap!17363 0))(
  ( (ListLongMap!17364 (toList!8697 List!26143)) )
))
(declare-fun lt!538398 () ListLongMap!17363)

(declare-fun lt!538396 () ListLongMap!17363)

(assert (=> b!1185847 (= lt!538398 lt!538396)))

(declare-fun lt!538394 () ListLongMap!17363)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1682 (ListLongMap!17363 (_ BitVec 64)) ListLongMap!17363)

(assert (=> b!1185847 (= lt!538396 (-!1682 lt!538394 k!934))))

(declare-fun zeroValue!944 () V!45001)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14243 0))(
  ( (ValueCellFull!14243 (v!17648 V!45001)) (EmptyCell!14243) )
))
(declare-datatypes ((array!76580 0))(
  ( (array!76581 (arr!36936 (Array (_ BitVec 32) ValueCell!14243)) (size!37473 (_ BitVec 32))) )
))
(declare-fun lt!538390 () array!76580)

(declare-fun minValue!944 () V!45001)

(declare-fun lt!538400 () array!76578)

(declare-fun getCurrentListMapNoExtraKeys!5115 (array!76578 array!76580 (_ BitVec 32) (_ BitVec 32) V!45001 V!45001 (_ BitVec 32) Int) ListLongMap!17363)

(assert (=> b!1185847 (= lt!538398 (getCurrentListMapNoExtraKeys!5115 lt!538400 lt!538390 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!76580)

(assert (=> b!1185847 (= lt!538394 (getCurrentListMapNoExtraKeys!5115 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39219 0))(
  ( (Unit!39220) )
))
(declare-fun lt!538388 () Unit!39219)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!895 (array!76578 array!76580 (_ BitVec 32) (_ BitVec 32) V!45001 V!45001 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39219)

(assert (=> b!1185847 (= lt!538388 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!895 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1185848 () Bool)

(declare-fun res!788387 () Bool)

(declare-fun e!674285 () Bool)

(assert (=> b!1185848 (=> (not res!788387) (not e!674285))))

(assert (=> b!1185848 (= res!788387 (validKeyInArray!0 k!934))))

(declare-fun b!1185849 () Bool)

(declare-fun res!788386 () Bool)

(assert (=> b!1185849 (=> (not res!788386) (not e!674285))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1185849 (= res!788386 (validMask!0 mask!1564))))

(declare-fun b!1185850 () Bool)

(declare-fun res!788391 () Bool)

(assert (=> b!1185850 (=> (not res!788391) (not e!674285))))

(assert (=> b!1185850 (= res!788391 (= (select (arr!36935 _keys!1208) i!673) k!934))))

(declare-fun b!1185851 () Bool)

(declare-fun e!674283 () Bool)

(declare-fun e!674288 () Bool)

(assert (=> b!1185851 (= e!674283 e!674288)))

(declare-fun res!788396 () Bool)

(assert (=> b!1185851 (=> res!788396 e!674288)))

(assert (=> b!1185851 (= res!788396 (not (= (select (arr!36935 _keys!1208) from!1455) k!934)))))

(declare-fun mapIsEmpty!46685 () Bool)

(declare-fun mapRes!46685 () Bool)

(assert (=> mapIsEmpty!46685 mapRes!46685))

(declare-fun b!1185852 () Bool)

(declare-fun arrayContainsKey!0 (array!76578 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1185852 (= e!674288 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1185853 () Bool)

(declare-fun res!788392 () Bool)

(assert (=> b!1185853 (=> (not res!788392) (not e!674285))))

(assert (=> b!1185853 (= res!788392 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37472 _keys!1208))))))

(declare-fun b!1185854 () Bool)

(declare-fun e!674287 () Bool)

(declare-fun tp_is_empty!29905 () Bool)

(assert (=> b!1185854 (= e!674287 tp_is_empty!29905)))

(declare-fun b!1185855 () Bool)

(assert (=> b!1185855 (= e!674282 true)))

(declare-fun lt!538392 () ListLongMap!17363)

(declare-fun lt!538391 () ListLongMap!17363)

(assert (=> b!1185855 (= (-!1682 lt!538392 k!934) lt!538391)))

(declare-fun lt!538387 () Unit!39219)

(declare-fun lt!538397 () V!45001)

(declare-fun addRemoveCommutativeForDiffKeys!193 (ListLongMap!17363 (_ BitVec 64) V!45001 (_ BitVec 64)) Unit!39219)

(assert (=> b!1185855 (= lt!538387 (addRemoveCommutativeForDiffKeys!193 lt!538394 (select (arr!36935 _keys!1208) from!1455) lt!538397 k!934))))

(declare-fun lt!538404 () ListLongMap!17363)

(assert (=> b!1185855 (and (= lt!538404 lt!538392) (= lt!538396 lt!538398))))

(declare-fun lt!538403 () tuple2!19382)

(declare-fun +!3903 (ListLongMap!17363 tuple2!19382) ListLongMap!17363)

(assert (=> b!1185855 (= lt!538392 (+!3903 lt!538394 lt!538403))))

(assert (=> b!1185855 (not (= (select (arr!36935 _keys!1208) from!1455) k!934))))

(declare-fun lt!538402 () Unit!39219)

(declare-fun e!674289 () Unit!39219)

(assert (=> b!1185855 (= lt!538402 e!674289)))

(declare-fun c!117134 () Bool)

(assert (=> b!1185855 (= c!117134 (= (select (arr!36935 _keys!1208) from!1455) k!934))))

(assert (=> b!1185855 e!674283))

(declare-fun res!788388 () Bool)

(assert (=> b!1185855 (=> (not res!788388) (not e!674283))))

(declare-fun lt!538395 () ListLongMap!17363)

(assert (=> b!1185855 (= res!788388 (= lt!538395 lt!538391))))

(assert (=> b!1185855 (= lt!538391 (+!3903 lt!538396 lt!538403))))

(assert (=> b!1185855 (= lt!538403 (tuple2!19383 (select (arr!36935 _keys!1208) from!1455) lt!538397))))

(declare-fun lt!538386 () V!45001)

(declare-fun get!18951 (ValueCell!14243 V!45001) V!45001)

(assert (=> b!1185855 (= lt!538397 (get!18951 (select (arr!36936 _values!996) from!1455) lt!538386))))

(declare-fun b!1185856 () Bool)

(declare-fun Unit!39221 () Unit!39219)

(assert (=> b!1185856 (= e!674289 Unit!39221)))

(declare-fun res!788384 () Bool)

(assert (=> start!99832 (=> (not res!788384) (not e!674285))))

(assert (=> start!99832 (= res!788384 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37472 _keys!1208))))))

(assert (=> start!99832 e!674285))

(assert (=> start!99832 tp_is_empty!29905))

(declare-fun array_inv!28066 (array!76578) Bool)

(assert (=> start!99832 (array_inv!28066 _keys!1208)))

(assert (=> start!99832 true))

(assert (=> start!99832 tp!88839))

(declare-fun e!674284 () Bool)

(declare-fun array_inv!28067 (array!76580) Bool)

(assert (=> start!99832 (and (array_inv!28067 _values!996) e!674284)))

(declare-fun b!1185857 () Bool)

(declare-fun res!788394 () Bool)

(declare-fun e!674292 () Bool)

(assert (=> b!1185857 (=> (not res!788394) (not e!674292))))

(declare-datatypes ((List!26144 0))(
  ( (Nil!26141) (Cons!26140 (h!27349 (_ BitVec 64)) (t!38518 List!26144)) )
))
(declare-fun arrayNoDuplicates!0 (array!76578 (_ BitVec 32) List!26144) Bool)

(assert (=> b!1185857 (= res!788394 (arrayNoDuplicates!0 lt!538400 #b00000000000000000000000000000000 Nil!26141))))

(declare-fun b!1185858 () Bool)

(declare-fun e!674293 () Bool)

(assert (=> b!1185858 (= e!674293 e!674286)))

(declare-fun res!788393 () Bool)

(assert (=> b!1185858 (=> res!788393 e!674286)))

(assert (=> b!1185858 (= res!788393 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1185858 (= lt!538395 (getCurrentListMapNoExtraKeys!5115 lt!538400 lt!538390 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1185858 (= lt!538390 (array!76581 (store (arr!36936 _values!996) i!673 (ValueCellFull!14243 lt!538386)) (size!37473 _values!996)))))

(declare-fun dynLambda!3075 (Int (_ BitVec 64)) V!45001)

(assert (=> b!1185858 (= lt!538386 (dynLambda!3075 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1185858 (= lt!538404 (getCurrentListMapNoExtraKeys!5115 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1185859 () Bool)

(declare-fun Unit!39222 () Unit!39219)

(assert (=> b!1185859 (= e!674289 Unit!39222)))

(declare-fun lt!538401 () Unit!39219)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76578 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39219)

(assert (=> b!1185859 (= lt!538401 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1185859 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!538399 () Unit!39219)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76578 (_ BitVec 32) (_ BitVec 32)) Unit!39219)

(assert (=> b!1185859 (= lt!538399 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1185859 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26141)))

(declare-fun lt!538393 () Unit!39219)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76578 (_ BitVec 64) (_ BitVec 32) List!26144) Unit!39219)

(assert (=> b!1185859 (= lt!538393 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26141))))

(assert (=> b!1185859 false))

(declare-fun b!1185860 () Bool)

(declare-fun res!788397 () Bool)

(assert (=> b!1185860 (=> (not res!788397) (not e!674285))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76578 (_ BitVec 32)) Bool)

(assert (=> b!1185860 (= res!788397 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1185861 () Bool)

(assert (=> b!1185861 (= e!674285 e!674292)))

(declare-fun res!788385 () Bool)

(assert (=> b!1185861 (=> (not res!788385) (not e!674292))))

(assert (=> b!1185861 (= res!788385 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!538400 mask!1564))))

(assert (=> b!1185861 (= lt!538400 (array!76579 (store (arr!36935 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37472 _keys!1208)))))

(declare-fun b!1185862 () Bool)

(assert (=> b!1185862 (= e!674292 (not e!674293))))

(declare-fun res!788389 () Bool)

(assert (=> b!1185862 (=> res!788389 e!674293)))

(assert (=> b!1185862 (= res!788389 (bvsgt from!1455 i!673))))

(assert (=> b!1185862 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!538389 () Unit!39219)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76578 (_ BitVec 64) (_ BitVec 32)) Unit!39219)

(assert (=> b!1185862 (= lt!538389 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1185863 () Bool)

(assert (=> b!1185863 (= e!674284 (and e!674287 mapRes!46685))))

(declare-fun condMapEmpty!46685 () Bool)

(declare-fun mapDefault!46685 () ValueCell!14243)

