; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100030 () Bool)

(assert start!100030)

(declare-fun b_free!25573 () Bool)

(declare-fun b_next!25573 () Bool)

(assert (=> start!100030 (= b_free!25573 (not b_next!25573))))

(declare-fun tp!89434 () Bool)

(declare-fun b_and!42027 () Bool)

(assert (=> start!100030 (= tp!89434 b_and!42027)))

(declare-fun res!792301 () Bool)

(declare-fun e!677125 () Bool)

(assert (=> start!100030 (=> (not res!792301) (not e!677125))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!76972 0))(
  ( (array!76973 (arr!37132 (Array (_ BitVec 32) (_ BitVec 64))) (size!37669 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76972)

(assert (=> start!100030 (= res!792301 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37669 _keys!1208))))))

(assert (=> start!100030 e!677125))

(declare-fun tp_is_empty!30103 () Bool)

(assert (=> start!100030 tp_is_empty!30103))

(declare-fun array_inv!28216 (array!76972) Bool)

(assert (=> start!100030 (array_inv!28216 _keys!1208)))

(assert (=> start!100030 true))

(assert (=> start!100030 tp!89434))

(declare-datatypes ((V!45265 0))(
  ( (V!45266 (val!15108 Int)) )
))
(declare-datatypes ((ValueCell!14342 0))(
  ( (ValueCellFull!14342 (v!17747 V!45265)) (EmptyCell!14342) )
))
(declare-datatypes ((array!76974 0))(
  ( (array!76975 (arr!37133 (Array (_ BitVec 32) ValueCell!14342)) (size!37670 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76974)

(declare-fun e!677124 () Bool)

(declare-fun array_inv!28217 (array!76974) Bool)

(assert (=> start!100030 (and (array_inv!28217 _values!996) e!677124)))

(declare-fun b!1191075 () Bool)

(declare-fun e!677120 () Bool)

(assert (=> b!1191075 (= e!677125 e!677120)))

(declare-fun res!792298 () Bool)

(assert (=> b!1191075 (=> (not res!792298) (not e!677120))))

(declare-fun lt!541666 () array!76972)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76972 (_ BitVec 32)) Bool)

(assert (=> b!1191075 (= res!792298 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541666 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1191075 (= lt!541666 (array!76973 (store (arr!37132 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37669 _keys!1208)))))

(declare-fun b!1191076 () Bool)

(declare-fun e!677122 () Bool)

(assert (=> b!1191076 (= e!677122 tp_is_empty!30103)))

(declare-fun b!1191077 () Bool)

(declare-fun res!792297 () Bool)

(assert (=> b!1191077 (=> (not res!792297) (not e!677125))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1191077 (= res!792297 (validMask!0 mask!1564))))

(declare-fun b!1191078 () Bool)

(declare-fun e!677121 () Bool)

(assert (=> b!1191078 (= e!677121 tp_is_empty!30103)))

(declare-fun b!1191079 () Bool)

(declare-fun res!792294 () Bool)

(assert (=> b!1191079 (=> (not res!792294) (not e!677125))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1191079 (= res!792294 (validKeyInArray!0 k!934))))

(declare-fun b!1191080 () Bool)

(declare-fun res!792293 () Bool)

(assert (=> b!1191080 (=> (not res!792293) (not e!677125))))

(assert (=> b!1191080 (= res!792293 (= (select (arr!37132 _keys!1208) i!673) k!934))))

(declare-fun b!1191081 () Bool)

(declare-fun e!677118 () Bool)

(declare-fun e!677119 () Bool)

(assert (=> b!1191081 (= e!677118 e!677119)))

(declare-fun res!792296 () Bool)

(assert (=> b!1191081 (=> res!792296 e!677119)))

(assert (=> b!1191081 (= res!792296 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!45265)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!541667 () array!76974)

(declare-datatypes ((tuple2!19552 0))(
  ( (tuple2!19553 (_1!9786 (_ BitVec 64)) (_2!9786 V!45265)) )
))
(declare-datatypes ((List!26313 0))(
  ( (Nil!26310) (Cons!26309 (h!27518 tuple2!19552) (t!38885 List!26313)) )
))
(declare-datatypes ((ListLongMap!17533 0))(
  ( (ListLongMap!17534 (toList!8782 List!26313)) )
))
(declare-fun lt!541668 () ListLongMap!17533)

(declare-fun minValue!944 () V!45265)

(declare-fun getCurrentListMapNoExtraKeys!5196 (array!76972 array!76974 (_ BitVec 32) (_ BitVec 32) V!45265 V!45265 (_ BitVec 32) Int) ListLongMap!17533)

(assert (=> b!1191081 (= lt!541668 (getCurrentListMapNoExtraKeys!5196 lt!541666 lt!541667 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3141 (Int (_ BitVec 64)) V!45265)

(assert (=> b!1191081 (= lt!541667 (array!76975 (store (arr!37133 _values!996) i!673 (ValueCellFull!14342 (dynLambda!3141 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37670 _values!996)))))

(declare-fun lt!541663 () ListLongMap!17533)

(assert (=> b!1191081 (= lt!541663 (getCurrentListMapNoExtraKeys!5196 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1191082 () Bool)

(declare-fun res!792303 () Bool)

(assert (=> b!1191082 (=> (not res!792303) (not e!677125))))

(assert (=> b!1191082 (= res!792303 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37669 _keys!1208))))))

(declare-fun mapNonEmpty!46982 () Bool)

(declare-fun mapRes!46982 () Bool)

(declare-fun tp!89433 () Bool)

(assert (=> mapNonEmpty!46982 (= mapRes!46982 (and tp!89433 e!677122))))

(declare-fun mapKey!46982 () (_ BitVec 32))

(declare-fun mapValue!46982 () ValueCell!14342)

(declare-fun mapRest!46982 () (Array (_ BitVec 32) ValueCell!14342))

(assert (=> mapNonEmpty!46982 (= (arr!37133 _values!996) (store mapRest!46982 mapKey!46982 mapValue!46982))))

(declare-fun b!1191083 () Bool)

(assert (=> b!1191083 (= e!677119 true)))

(declare-fun -!1763 (ListLongMap!17533 (_ BitVec 64)) ListLongMap!17533)

(assert (=> b!1191083 (= (getCurrentListMapNoExtraKeys!5196 lt!541666 lt!541667 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1763 (getCurrentListMapNoExtraKeys!5196 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-datatypes ((Unit!39458 0))(
  ( (Unit!39459) )
))
(declare-fun lt!541665 () Unit!39458)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!969 (array!76972 array!76974 (_ BitVec 32) (_ BitVec 32) V!45265 V!45265 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39458)

(assert (=> b!1191083 (= lt!541665 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!969 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!46982 () Bool)

(assert (=> mapIsEmpty!46982 mapRes!46982))

(declare-fun b!1191084 () Bool)

(declare-fun res!792299 () Bool)

(assert (=> b!1191084 (=> (not res!792299) (not e!677125))))

(declare-datatypes ((List!26314 0))(
  ( (Nil!26311) (Cons!26310 (h!27519 (_ BitVec 64)) (t!38886 List!26314)) )
))
(declare-fun arrayNoDuplicates!0 (array!76972 (_ BitVec 32) List!26314) Bool)

(assert (=> b!1191084 (= res!792299 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26311))))

(declare-fun b!1191085 () Bool)

(assert (=> b!1191085 (= e!677124 (and e!677121 mapRes!46982))))

(declare-fun condMapEmpty!46982 () Bool)

(declare-fun mapDefault!46982 () ValueCell!14342)

