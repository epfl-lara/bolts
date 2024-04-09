; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99998 () Bool)

(assert start!99998)

(declare-fun b_free!25541 () Bool)

(declare-fun b_next!25541 () Bool)

(assert (=> start!99998 (= b_free!25541 (not b_next!25541))))

(declare-fun tp!89338 () Bool)

(declare-fun b_and!41963 () Bool)

(assert (=> start!99998 (= tp!89338 b_and!41963)))

(declare-fun b!1190323 () Bool)

(declare-fun res!791727 () Bool)

(declare-fun e!676740 () Bool)

(assert (=> b!1190323 (=> (not res!791727) (not e!676740))))

(declare-datatypes ((array!76908 0))(
  ( (array!76909 (arr!37100 (Array (_ BitVec 32) (_ BitVec 64))) (size!37637 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76908)

(declare-datatypes ((List!26286 0))(
  ( (Nil!26283) (Cons!26282 (h!27491 (_ BitVec 64)) (t!38826 List!26286)) )
))
(declare-fun arrayNoDuplicates!0 (array!76908 (_ BitVec 32) List!26286) Bool)

(assert (=> b!1190323 (= res!791727 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26283))))

(declare-fun b!1190324 () Bool)

(declare-fun res!791724 () Bool)

(assert (=> b!1190324 (=> (not res!791724) (not e!676740))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1190324 (= res!791724 (validKeyInArray!0 k!934))))

(declare-fun b!1190325 () Bool)

(declare-fun e!676736 () Bool)

(assert (=> b!1190325 (= e!676736 true)))

(declare-datatypes ((V!45221 0))(
  ( (V!45222 (val!15092 Int)) )
))
(declare-fun zeroValue!944 () V!45221)

(declare-fun lt!541376 () array!76908)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14326 0))(
  ( (ValueCellFull!14326 (v!17731 V!45221)) (EmptyCell!14326) )
))
(declare-datatypes ((array!76910 0))(
  ( (array!76911 (arr!37101 (Array (_ BitVec 32) ValueCell!14326)) (size!37638 (_ BitVec 32))) )
))
(declare-fun lt!541377 () array!76910)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun _values!996 () array!76910)

(declare-fun minValue!944 () V!45221)

(declare-datatypes ((tuple2!19526 0))(
  ( (tuple2!19527 (_1!9773 (_ BitVec 64)) (_2!9773 V!45221)) )
))
(declare-datatypes ((List!26287 0))(
  ( (Nil!26284) (Cons!26283 (h!27492 tuple2!19526) (t!38827 List!26287)) )
))
(declare-datatypes ((ListLongMap!17507 0))(
  ( (ListLongMap!17508 (toList!8769 List!26287)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5183 (array!76908 array!76910 (_ BitVec 32) (_ BitVec 32) V!45221 V!45221 (_ BitVec 32) Int) ListLongMap!17507)

(declare-fun -!1751 (ListLongMap!17507 (_ BitVec 64)) ListLongMap!17507)

(assert (=> b!1190325 (= (getCurrentListMapNoExtraKeys!5183 lt!541376 lt!541377 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1751 (getCurrentListMapNoExtraKeys!5183 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39430 0))(
  ( (Unit!39431) )
))
(declare-fun lt!541378 () Unit!39430)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!957 (array!76908 array!76910 (_ BitVec 32) (_ BitVec 32) V!45221 V!45221 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39430)

(assert (=> b!1190325 (= lt!541378 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!957 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!46934 () Bool)

(declare-fun mapRes!46934 () Bool)

(assert (=> mapIsEmpty!46934 mapRes!46934))

(declare-fun b!1190327 () Bool)

(declare-fun res!791726 () Bool)

(assert (=> b!1190327 (=> (not res!791726) (not e!676740))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76908 (_ BitVec 32)) Bool)

(assert (=> b!1190327 (= res!791726 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1190328 () Bool)

(declare-fun e!676735 () Bool)

(assert (=> b!1190328 (= e!676740 e!676735)))

(declare-fun res!791720 () Bool)

(assert (=> b!1190328 (=> (not res!791720) (not e!676735))))

(assert (=> b!1190328 (= res!791720 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541376 mask!1564))))

(assert (=> b!1190328 (= lt!541376 (array!76909 (store (arr!37100 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37637 _keys!1208)))))

(declare-fun b!1190329 () Bool)

(declare-fun res!791725 () Bool)

(assert (=> b!1190329 (=> (not res!791725) (not e!676740))))

(assert (=> b!1190329 (= res!791725 (and (= (size!37638 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37637 _keys!1208) (size!37638 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1190330 () Bool)

(declare-fun res!791717 () Bool)

(assert (=> b!1190330 (=> (not res!791717) (not e!676740))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1190330 (= res!791717 (validMask!0 mask!1564))))

(declare-fun b!1190331 () Bool)

(declare-fun res!791718 () Bool)

(assert (=> b!1190331 (=> (not res!791718) (not e!676735))))

(assert (=> b!1190331 (= res!791718 (arrayNoDuplicates!0 lt!541376 #b00000000000000000000000000000000 Nil!26283))))

(declare-fun b!1190332 () Bool)

(declare-fun e!676737 () Bool)

(declare-fun tp_is_empty!30071 () Bool)

(assert (=> b!1190332 (= e!676737 tp_is_empty!30071)))

(declare-fun b!1190326 () Bool)

(declare-fun e!676741 () Bool)

(assert (=> b!1190326 (= e!676741 e!676736)))

(declare-fun res!791723 () Bool)

(assert (=> b!1190326 (=> res!791723 e!676736)))

(assert (=> b!1190326 (= res!791723 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!541380 () ListLongMap!17507)

(assert (=> b!1190326 (= lt!541380 (getCurrentListMapNoExtraKeys!5183 lt!541376 lt!541377 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3131 (Int (_ BitVec 64)) V!45221)

(assert (=> b!1190326 (= lt!541377 (array!76911 (store (arr!37101 _values!996) i!673 (ValueCellFull!14326 (dynLambda!3131 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37638 _values!996)))))

(declare-fun lt!541379 () ListLongMap!17507)

(assert (=> b!1190326 (= lt!541379 (getCurrentListMapNoExtraKeys!5183 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!791721 () Bool)

(assert (=> start!99998 (=> (not res!791721) (not e!676740))))

(assert (=> start!99998 (= res!791721 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37637 _keys!1208))))))

(assert (=> start!99998 e!676740))

(assert (=> start!99998 tp_is_empty!30071))

(declare-fun array_inv!28190 (array!76908) Bool)

(assert (=> start!99998 (array_inv!28190 _keys!1208)))

(assert (=> start!99998 true))

(assert (=> start!99998 tp!89338))

(declare-fun e!676738 () Bool)

(declare-fun array_inv!28191 (array!76910) Bool)

(assert (=> start!99998 (and (array_inv!28191 _values!996) e!676738)))

(declare-fun b!1190333 () Bool)

(declare-fun res!791722 () Bool)

(assert (=> b!1190333 (=> (not res!791722) (not e!676740))))

(assert (=> b!1190333 (= res!791722 (= (select (arr!37100 _keys!1208) i!673) k!934))))

(declare-fun b!1190334 () Bool)

(declare-fun res!791719 () Bool)

(assert (=> b!1190334 (=> (not res!791719) (not e!676740))))

(assert (=> b!1190334 (= res!791719 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37637 _keys!1208))))))

(declare-fun b!1190335 () Bool)

(declare-fun e!676734 () Bool)

(assert (=> b!1190335 (= e!676734 tp_is_empty!30071)))

(declare-fun b!1190336 () Bool)

(assert (=> b!1190336 (= e!676735 (not e!676741))))

(declare-fun res!791728 () Bool)

(assert (=> b!1190336 (=> res!791728 e!676741)))

(assert (=> b!1190336 (= res!791728 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76908 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1190336 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!541375 () Unit!39430)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76908 (_ BitVec 64) (_ BitVec 32)) Unit!39430)

(assert (=> b!1190336 (= lt!541375 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1190337 () Bool)

(assert (=> b!1190337 (= e!676738 (and e!676734 mapRes!46934))))

(declare-fun condMapEmpty!46934 () Bool)

(declare-fun mapDefault!46934 () ValueCell!14326)

