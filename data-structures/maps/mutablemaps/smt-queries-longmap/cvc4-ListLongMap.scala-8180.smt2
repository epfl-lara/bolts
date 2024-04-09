; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99986 () Bool)

(assert start!99986)

(declare-fun b_free!25529 () Bool)

(declare-fun b_next!25529 () Bool)

(assert (=> start!99986 (= b_free!25529 (not b_next!25529))))

(declare-fun tp!89302 () Bool)

(declare-fun b_and!41939 () Bool)

(assert (=> start!99986 (= tp!89302 b_and!41939)))

(declare-fun b!1190041 () Bool)

(declare-fun res!791504 () Bool)

(declare-fun e!676597 () Bool)

(assert (=> b!1190041 (=> (not res!791504) (not e!676597))))

(declare-datatypes ((array!76884 0))(
  ( (array!76885 (arr!37088 (Array (_ BitVec 32) (_ BitVec 64))) (size!37625 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76884)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45205 0))(
  ( (V!45206 (val!15086 Int)) )
))
(declare-datatypes ((ValueCell!14320 0))(
  ( (ValueCellFull!14320 (v!17725 V!45205)) (EmptyCell!14320) )
))
(declare-datatypes ((array!76886 0))(
  ( (array!76887 (arr!37089 (Array (_ BitVec 32) ValueCell!14320)) (size!37626 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76886)

(assert (=> b!1190041 (= res!791504 (and (= (size!37626 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37625 _keys!1208) (size!37626 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1190042 () Bool)

(declare-fun res!791507 () Bool)

(declare-fun e!676595 () Bool)

(assert (=> b!1190042 (=> (not res!791507) (not e!676595))))

(declare-fun lt!541272 () array!76884)

(declare-datatypes ((List!26275 0))(
  ( (Nil!26272) (Cons!26271 (h!27480 (_ BitVec 64)) (t!38803 List!26275)) )
))
(declare-fun arrayNoDuplicates!0 (array!76884 (_ BitVec 32) List!26275) Bool)

(assert (=> b!1190042 (= res!791507 (arrayNoDuplicates!0 lt!541272 #b00000000000000000000000000000000 Nil!26272))))

(declare-fun b!1190043 () Bool)

(declare-fun e!676596 () Bool)

(declare-fun e!676594 () Bool)

(assert (=> b!1190043 (= e!676596 e!676594)))

(declare-fun res!791501 () Bool)

(assert (=> b!1190043 (=> res!791501 e!676594)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1190043 (= res!791501 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!45205)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19516 0))(
  ( (tuple2!19517 (_1!9768 (_ BitVec 64)) (_2!9768 V!45205)) )
))
(declare-datatypes ((List!26276 0))(
  ( (Nil!26273) (Cons!26272 (h!27481 tuple2!19516) (t!38804 List!26276)) )
))
(declare-datatypes ((ListLongMap!17497 0))(
  ( (ListLongMap!17498 (toList!8764 List!26276)) )
))
(declare-fun lt!541271 () ListLongMap!17497)

(declare-fun lt!541269 () array!76886)

(declare-fun minValue!944 () V!45205)

(declare-fun getCurrentListMapNoExtraKeys!5178 (array!76884 array!76886 (_ BitVec 32) (_ BitVec 32) V!45205 V!45205 (_ BitVec 32) Int) ListLongMap!17497)

(assert (=> b!1190043 (= lt!541271 (getCurrentListMapNoExtraKeys!5178 lt!541272 lt!541269 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3128 (Int (_ BitVec 64)) V!45205)

(assert (=> b!1190043 (= lt!541269 (array!76887 (store (arr!37089 _values!996) i!673 (ValueCellFull!14320 (dynLambda!3128 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37626 _values!996)))))

(declare-fun lt!541270 () ListLongMap!17497)

(assert (=> b!1190043 (= lt!541270 (getCurrentListMapNoExtraKeys!5178 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1190044 () Bool)

(declare-fun res!791503 () Bool)

(assert (=> b!1190044 (=> (not res!791503) (not e!676597))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76884 (_ BitVec 32)) Bool)

(assert (=> b!1190044 (= res!791503 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1190045 () Bool)

(declare-fun res!791512 () Bool)

(assert (=> b!1190045 (=> (not res!791512) (not e!676597))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1190045 (= res!791512 (validMask!0 mask!1564))))

(declare-fun b!1190046 () Bool)

(assert (=> b!1190046 (= e!676595 (not e!676596))))

(declare-fun res!791505 () Bool)

(assert (=> b!1190046 (=> res!791505 e!676596)))

(assert (=> b!1190046 (= res!791505 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!76884 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1190046 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39420 0))(
  ( (Unit!39421) )
))
(declare-fun lt!541267 () Unit!39420)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76884 (_ BitVec 64) (_ BitVec 32)) Unit!39420)

(assert (=> b!1190046 (= lt!541267 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1190047 () Bool)

(assert (=> b!1190047 (= e!676597 e!676595)))

(declare-fun res!791508 () Bool)

(assert (=> b!1190047 (=> (not res!791508) (not e!676595))))

(assert (=> b!1190047 (= res!791508 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541272 mask!1564))))

(assert (=> b!1190047 (= lt!541272 (array!76885 (store (arr!37088 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37625 _keys!1208)))))

(declare-fun b!1190048 () Bool)

(declare-fun e!676593 () Bool)

(declare-fun tp_is_empty!30059 () Bool)

(assert (=> b!1190048 (= e!676593 tp_is_empty!30059)))

(declare-fun b!1190049 () Bool)

(declare-fun res!791506 () Bool)

(assert (=> b!1190049 (=> (not res!791506) (not e!676597))))

(assert (=> b!1190049 (= res!791506 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37625 _keys!1208))))))

(declare-fun b!1190050 () Bool)

(declare-fun e!676590 () Bool)

(assert (=> b!1190050 (= e!676590 tp_is_empty!30059)))

(declare-fun mapIsEmpty!46916 () Bool)

(declare-fun mapRes!46916 () Bool)

(assert (=> mapIsEmpty!46916 mapRes!46916))

(declare-fun b!1190051 () Bool)

(declare-fun res!791510 () Bool)

(assert (=> b!1190051 (=> (not res!791510) (not e!676597))))

(assert (=> b!1190051 (= res!791510 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26272))))

(declare-fun res!791509 () Bool)

(assert (=> start!99986 (=> (not res!791509) (not e!676597))))

(assert (=> start!99986 (= res!791509 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37625 _keys!1208))))))

(assert (=> start!99986 e!676597))

(assert (=> start!99986 tp_is_empty!30059))

(declare-fun array_inv!28182 (array!76884) Bool)

(assert (=> start!99986 (array_inv!28182 _keys!1208)))

(assert (=> start!99986 true))

(assert (=> start!99986 tp!89302))

(declare-fun e!676591 () Bool)

(declare-fun array_inv!28183 (array!76886) Bool)

(assert (=> start!99986 (and (array_inv!28183 _values!996) e!676591)))

(declare-fun mapNonEmpty!46916 () Bool)

(declare-fun tp!89301 () Bool)

(assert (=> mapNonEmpty!46916 (= mapRes!46916 (and tp!89301 e!676590))))

(declare-fun mapKey!46916 () (_ BitVec 32))

(declare-fun mapValue!46916 () ValueCell!14320)

(declare-fun mapRest!46916 () (Array (_ BitVec 32) ValueCell!14320))

(assert (=> mapNonEmpty!46916 (= (arr!37089 _values!996) (store mapRest!46916 mapKey!46916 mapValue!46916))))

(declare-fun b!1190052 () Bool)

(assert (=> b!1190052 (= e!676594 true)))

(declare-fun -!1746 (ListLongMap!17497 (_ BitVec 64)) ListLongMap!17497)

(assert (=> b!1190052 (= (getCurrentListMapNoExtraKeys!5178 lt!541272 lt!541269 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1746 (getCurrentListMapNoExtraKeys!5178 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun lt!541268 () Unit!39420)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!952 (array!76884 array!76886 (_ BitVec 32) (_ BitVec 32) V!45205 V!45205 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39420)

(assert (=> b!1190052 (= lt!541268 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!952 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1190053 () Bool)

(assert (=> b!1190053 (= e!676591 (and e!676593 mapRes!46916))))

(declare-fun condMapEmpty!46916 () Bool)

(declare-fun mapDefault!46916 () ValueCell!14320)

