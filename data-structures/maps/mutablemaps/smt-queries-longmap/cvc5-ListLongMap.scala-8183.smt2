; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100000 () Bool)

(assert start!100000)

(declare-fun b_free!25543 () Bool)

(declare-fun b_next!25543 () Bool)

(assert (=> start!100000 (= b_free!25543 (not b_next!25543))))

(declare-fun tp!89343 () Bool)

(declare-fun b_and!41967 () Bool)

(assert (=> start!100000 (= tp!89343 b_and!41967)))

(declare-fun b!1190370 () Bool)

(declare-fun e!676765 () Bool)

(declare-fun e!676762 () Bool)

(assert (=> b!1190370 (= e!676765 e!676762)))

(declare-fun res!791759 () Bool)

(assert (=> b!1190370 (=> res!791759 e!676762)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1190370 (= res!791759 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!45225 0))(
  ( (V!45226 (val!15093 Int)) )
))
(declare-fun zeroValue!944 () V!45225)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14327 0))(
  ( (ValueCellFull!14327 (v!17732 V!45225)) (EmptyCell!14327) )
))
(declare-datatypes ((array!76912 0))(
  ( (array!76913 (arr!37102 (Array (_ BitVec 32) ValueCell!14327)) (size!37639 (_ BitVec 32))) )
))
(declare-fun lt!541394 () array!76912)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45225)

(declare-datatypes ((tuple2!19528 0))(
  ( (tuple2!19529 (_1!9774 (_ BitVec 64)) (_2!9774 V!45225)) )
))
(declare-datatypes ((List!26288 0))(
  ( (Nil!26285) (Cons!26284 (h!27493 tuple2!19528) (t!38830 List!26288)) )
))
(declare-datatypes ((ListLongMap!17509 0))(
  ( (ListLongMap!17510 (toList!8770 List!26288)) )
))
(declare-fun lt!541396 () ListLongMap!17509)

(declare-datatypes ((array!76914 0))(
  ( (array!76915 (arr!37103 (Array (_ BitVec 32) (_ BitVec 64))) (size!37640 (_ BitVec 32))) )
))
(declare-fun lt!541395 () array!76914)

(declare-fun getCurrentListMapNoExtraKeys!5184 (array!76914 array!76912 (_ BitVec 32) (_ BitVec 32) V!45225 V!45225 (_ BitVec 32) Int) ListLongMap!17509)

(assert (=> b!1190370 (= lt!541396 (getCurrentListMapNoExtraKeys!5184 lt!541395 lt!541394 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!76912)

(declare-fun dynLambda!3132 (Int (_ BitVec 64)) V!45225)

(assert (=> b!1190370 (= lt!541394 (array!76913 (store (arr!37102 _values!996) i!673 (ValueCellFull!14327 (dynLambda!3132 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37639 _values!996)))))

(declare-fun _keys!1208 () array!76914)

(declare-fun lt!541393 () ListLongMap!17509)

(assert (=> b!1190370 (= lt!541393 (getCurrentListMapNoExtraKeys!5184 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapIsEmpty!46937 () Bool)

(declare-fun mapRes!46937 () Bool)

(assert (=> mapIsEmpty!46937 mapRes!46937))

(declare-fun b!1190371 () Bool)

(declare-fun e!676759 () Bool)

(declare-fun tp_is_empty!30073 () Bool)

(assert (=> b!1190371 (= e!676759 tp_is_empty!30073)))

(declare-fun b!1190372 () Bool)

(declare-fun res!791761 () Bool)

(declare-fun e!676760 () Bool)

(assert (=> b!1190372 (=> (not res!791761) (not e!676760))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1190372 (= res!791761 (validMask!0 mask!1564))))

(declare-fun b!1190373 () Bool)

(assert (=> b!1190373 (= e!676762 true)))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1752 (ListLongMap!17509 (_ BitVec 64)) ListLongMap!17509)

(assert (=> b!1190373 (= (getCurrentListMapNoExtraKeys!5184 lt!541395 lt!541394 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1752 (getCurrentListMapNoExtraKeys!5184 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-datatypes ((Unit!39432 0))(
  ( (Unit!39433) )
))
(declare-fun lt!541397 () Unit!39432)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!958 (array!76914 array!76912 (_ BitVec 32) (_ BitVec 32) V!45225 V!45225 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39432)

(assert (=> b!1190373 (= lt!541397 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!958 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1190374 () Bool)

(declare-fun res!791756 () Bool)

(assert (=> b!1190374 (=> (not res!791756) (not e!676760))))

(assert (=> b!1190374 (= res!791756 (= (select (arr!37103 _keys!1208) i!673) k!934))))

(declare-fun b!1190375 () Bool)

(declare-fun res!791763 () Bool)

(assert (=> b!1190375 (=> (not res!791763) (not e!676760))))

(declare-datatypes ((List!26289 0))(
  ( (Nil!26286) (Cons!26285 (h!27494 (_ BitVec 64)) (t!38831 List!26289)) )
))
(declare-fun arrayNoDuplicates!0 (array!76914 (_ BitVec 32) List!26289) Bool)

(assert (=> b!1190375 (= res!791763 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26286))))

(declare-fun b!1190376 () Bool)

(declare-fun e!676763 () Bool)

(assert (=> b!1190376 (= e!676763 tp_is_empty!30073)))

(declare-fun b!1190377 () Bool)

(declare-fun res!791755 () Bool)

(declare-fun e!676764 () Bool)

(assert (=> b!1190377 (=> (not res!791755) (not e!676764))))

(assert (=> b!1190377 (= res!791755 (arrayNoDuplicates!0 lt!541395 #b00000000000000000000000000000000 Nil!26286))))

(declare-fun b!1190378 () Bool)

(declare-fun res!791753 () Bool)

(assert (=> b!1190378 (=> (not res!791753) (not e!676760))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76914 (_ BitVec 32)) Bool)

(assert (=> b!1190378 (= res!791753 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!791754 () Bool)

(assert (=> start!100000 (=> (not res!791754) (not e!676760))))

(assert (=> start!100000 (= res!791754 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37640 _keys!1208))))))

(assert (=> start!100000 e!676760))

(assert (=> start!100000 tp_is_empty!30073))

(declare-fun array_inv!28192 (array!76914) Bool)

(assert (=> start!100000 (array_inv!28192 _keys!1208)))

(assert (=> start!100000 true))

(assert (=> start!100000 tp!89343))

(declare-fun e!676758 () Bool)

(declare-fun array_inv!28193 (array!76912) Bool)

(assert (=> start!100000 (and (array_inv!28193 _values!996) e!676758)))

(declare-fun b!1190379 () Bool)

(declare-fun res!791757 () Bool)

(assert (=> b!1190379 (=> (not res!791757) (not e!676760))))

(assert (=> b!1190379 (= res!791757 (and (= (size!37639 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37640 _keys!1208) (size!37639 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1190380 () Bool)

(assert (=> b!1190380 (= e!676764 (not e!676765))))

(declare-fun res!791764 () Bool)

(assert (=> b!1190380 (=> res!791764 e!676765)))

(assert (=> b!1190380 (= res!791764 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76914 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1190380 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!541398 () Unit!39432)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76914 (_ BitVec 64) (_ BitVec 32)) Unit!39432)

(assert (=> b!1190380 (= lt!541398 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1190381 () Bool)

(declare-fun res!791762 () Bool)

(assert (=> b!1190381 (=> (not res!791762) (not e!676760))))

(assert (=> b!1190381 (= res!791762 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37640 _keys!1208))))))

(declare-fun b!1190382 () Bool)

(assert (=> b!1190382 (= e!676760 e!676764)))

(declare-fun res!791760 () Bool)

(assert (=> b!1190382 (=> (not res!791760) (not e!676764))))

(assert (=> b!1190382 (= res!791760 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541395 mask!1564))))

(assert (=> b!1190382 (= lt!541395 (array!76915 (store (arr!37103 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37640 _keys!1208)))))

(declare-fun b!1190383 () Bool)

(declare-fun res!791758 () Bool)

(assert (=> b!1190383 (=> (not res!791758) (not e!676760))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1190383 (= res!791758 (validKeyInArray!0 k!934))))

(declare-fun b!1190384 () Bool)

(assert (=> b!1190384 (= e!676758 (and e!676763 mapRes!46937))))

(declare-fun condMapEmpty!46937 () Bool)

(declare-fun mapDefault!46937 () ValueCell!14327)

