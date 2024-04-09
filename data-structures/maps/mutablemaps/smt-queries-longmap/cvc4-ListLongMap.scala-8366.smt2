; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101818 () Bool)

(assert start!101818)

(declare-fun b_free!26471 () Bool)

(declare-fun b_next!26471 () Bool)

(assert (=> start!101818 (= b_free!26471 (not b_next!26471))))

(declare-fun tp!92459 () Bool)

(declare-fun b_and!44213 () Bool)

(assert (=> start!101818 (= tp!92459 b_and!44213)))

(declare-fun b!1225866 () Bool)

(declare-fun e!696267 () Bool)

(declare-fun tp_is_empty!31175 () Bool)

(assert (=> b!1225866 (= e!696267 tp_is_empty!31175)))

(declare-fun mapNonEmpty!48661 () Bool)

(declare-fun mapRes!48661 () Bool)

(declare-fun tp!92460 () Bool)

(declare-fun e!696270 () Bool)

(assert (=> mapNonEmpty!48661 (= mapRes!48661 (and tp!92460 e!696270))))

(declare-datatypes ((V!46693 0))(
  ( (V!46694 (val!15644 Int)) )
))
(declare-datatypes ((ValueCell!14878 0))(
  ( (ValueCellFull!14878 (v!18307 V!46693)) (EmptyCell!14878) )
))
(declare-fun mapRest!48661 () (Array (_ BitVec 32) ValueCell!14878))

(declare-fun mapKey!48661 () (_ BitVec 32))

(declare-fun mapValue!48661 () ValueCell!14878)

(declare-datatypes ((array!79108 0))(
  ( (array!79109 (arr!38177 (Array (_ BitVec 32) ValueCell!14878)) (size!38714 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!79108)

(assert (=> mapNonEmpty!48661 (= (arr!38177 _values!996) (store mapRest!48661 mapKey!48661 mapValue!48661))))

(declare-fun mapIsEmpty!48661 () Bool)

(assert (=> mapIsEmpty!48661 mapRes!48661))

(declare-fun res!814786 () Bool)

(declare-fun e!696272 () Bool)

(assert (=> start!101818 (=> (not res!814786) (not e!696272))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!79110 0))(
  ( (array!79111 (arr!38178 (Array (_ BitVec 32) (_ BitVec 64))) (size!38715 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!79110)

(assert (=> start!101818 (= res!814786 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38715 _keys!1208))))))

(assert (=> start!101818 e!696272))

(assert (=> start!101818 tp_is_empty!31175))

(declare-fun array_inv!28954 (array!79110) Bool)

(assert (=> start!101818 (array_inv!28954 _keys!1208)))

(assert (=> start!101818 true))

(assert (=> start!101818 tp!92459))

(declare-fun e!696271 () Bool)

(declare-fun array_inv!28955 (array!79108) Bool)

(assert (=> start!101818 (and (array_inv!28955 _values!996) e!696271)))

(declare-fun b!1225867 () Bool)

(declare-fun res!814782 () Bool)

(assert (=> b!1225867 (=> (not res!814782) (not e!696272))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1225867 (= res!814782 (and (= (size!38714 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38715 _keys!1208) (size!38714 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1225868 () Bool)

(declare-fun res!814791 () Bool)

(assert (=> b!1225868 (=> (not res!814791) (not e!696272))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!79110 (_ BitVec 32)) Bool)

(assert (=> b!1225868 (= res!814791 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1225869 () Bool)

(declare-fun res!814784 () Bool)

(assert (=> b!1225869 (=> (not res!814784) (not e!696272))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1225869 (= res!814784 (validMask!0 mask!1564))))

(declare-fun b!1225870 () Bool)

(declare-fun res!814787 () Bool)

(declare-fun e!696266 () Bool)

(assert (=> b!1225870 (=> (not res!814787) (not e!696266))))

(declare-fun lt!558573 () array!79110)

(declare-datatypes ((List!27128 0))(
  ( (Nil!27125) (Cons!27124 (h!28333 (_ BitVec 64)) (t!40586 List!27128)) )
))
(declare-fun arrayNoDuplicates!0 (array!79110 (_ BitVec 32) List!27128) Bool)

(assert (=> b!1225870 (= res!814787 (arrayNoDuplicates!0 lt!558573 #b00000000000000000000000000000000 Nil!27125))))

(declare-fun b!1225871 () Bool)

(declare-fun e!696273 () Bool)

(declare-fun e!696268 () Bool)

(assert (=> b!1225871 (= e!696273 e!696268)))

(declare-fun res!814785 () Bool)

(assert (=> b!1225871 (=> res!814785 e!696268)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1225871 (= res!814785 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46693)

(declare-fun lt!558574 () array!79108)

(declare-datatypes ((tuple2!20316 0))(
  ( (tuple2!20317 (_1!10168 (_ BitVec 64)) (_2!10168 V!46693)) )
))
(declare-datatypes ((List!27129 0))(
  ( (Nil!27126) (Cons!27125 (h!28334 tuple2!20316) (t!40587 List!27129)) )
))
(declare-datatypes ((ListLongMap!18297 0))(
  ( (ListLongMap!18298 (toList!9164 List!27129)) )
))
(declare-fun lt!558575 () ListLongMap!18297)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46693)

(declare-fun getCurrentListMapNoExtraKeys!5560 (array!79110 array!79108 (_ BitVec 32) (_ BitVec 32) V!46693 V!46693 (_ BitVec 32) Int) ListLongMap!18297)

(assert (=> b!1225871 (= lt!558575 (getCurrentListMapNoExtraKeys!5560 lt!558573 lt!558574 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3453 (Int (_ BitVec 64)) V!46693)

(assert (=> b!1225871 (= lt!558574 (array!79109 (store (arr!38177 _values!996) i!673 (ValueCellFull!14878 (dynLambda!3453 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38714 _values!996)))))

(declare-fun lt!558577 () ListLongMap!18297)

(assert (=> b!1225871 (= lt!558577 (getCurrentListMapNoExtraKeys!5560 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1225872 () Bool)

(assert (=> b!1225872 (= e!696268 true)))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!2000 (ListLongMap!18297 (_ BitVec 64)) ListLongMap!18297)

(assert (=> b!1225872 (= (getCurrentListMapNoExtraKeys!5560 lt!558573 lt!558574 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!2000 (getCurrentListMapNoExtraKeys!5560 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-datatypes ((Unit!40574 0))(
  ( (Unit!40575) )
))
(declare-fun lt!558572 () Unit!40574)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1200 (array!79110 array!79108 (_ BitVec 32) (_ BitVec 32) V!46693 V!46693 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40574)

(assert (=> b!1225872 (= lt!558572 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1200 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1225873 () Bool)

(assert (=> b!1225873 (= e!696266 (not e!696273))))

(declare-fun res!814781 () Bool)

(assert (=> b!1225873 (=> res!814781 e!696273)))

(assert (=> b!1225873 (= res!814781 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!79110 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1225873 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!558576 () Unit!40574)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!79110 (_ BitVec 64) (_ BitVec 32)) Unit!40574)

(assert (=> b!1225873 (= lt!558576 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1225874 () Bool)

(declare-fun res!814780 () Bool)

(assert (=> b!1225874 (=> (not res!814780) (not e!696272))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1225874 (= res!814780 (validKeyInArray!0 k!934))))

(declare-fun b!1225875 () Bool)

(declare-fun res!814783 () Bool)

(assert (=> b!1225875 (=> (not res!814783) (not e!696272))))

(assert (=> b!1225875 (= res!814783 (= (select (arr!38178 _keys!1208) i!673) k!934))))

(declare-fun b!1225876 () Bool)

(assert (=> b!1225876 (= e!696270 tp_is_empty!31175)))

(declare-fun b!1225877 () Bool)

(assert (=> b!1225877 (= e!696271 (and e!696267 mapRes!48661))))

(declare-fun condMapEmpty!48661 () Bool)

(declare-fun mapDefault!48661 () ValueCell!14878)

