; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100016 () Bool)

(assert start!100016)

(declare-fun b_free!25559 () Bool)

(declare-fun b_next!25559 () Bool)

(assert (=> start!100016 (= b_free!25559 (not b_next!25559))))

(declare-fun tp!89392 () Bool)

(declare-fun b_and!41999 () Bool)

(assert (=> start!100016 (= tp!89392 b_and!41999)))

(declare-fun res!792048 () Bool)

(declare-fun e!676950 () Bool)

(assert (=> start!100016 (=> (not res!792048) (not e!676950))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!76944 0))(
  ( (array!76945 (arr!37118 (Array (_ BitVec 32) (_ BitVec 64))) (size!37655 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76944)

(assert (=> start!100016 (= res!792048 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37655 _keys!1208))))))

(assert (=> start!100016 e!676950))

(declare-fun tp_is_empty!30089 () Bool)

(assert (=> start!100016 tp_is_empty!30089))

(declare-fun array_inv!28206 (array!76944) Bool)

(assert (=> start!100016 (array_inv!28206 _keys!1208)))

(assert (=> start!100016 true))

(assert (=> start!100016 tp!89392))

(declare-datatypes ((V!45245 0))(
  ( (V!45246 (val!15101 Int)) )
))
(declare-datatypes ((ValueCell!14335 0))(
  ( (ValueCellFull!14335 (v!17740 V!45245)) (EmptyCell!14335) )
))
(declare-datatypes ((array!76946 0))(
  ( (array!76947 (arr!37119 (Array (_ BitVec 32) ValueCell!14335)) (size!37656 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76946)

(declare-fun e!676951 () Bool)

(declare-fun array_inv!28207 (array!76946) Bool)

(assert (=> start!100016 (and (array_inv!28207 _values!996) e!676951)))

(declare-fun b!1190746 () Bool)

(declare-fun res!792050 () Bool)

(assert (=> b!1190746 (=> (not res!792050) (not e!676950))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1190746 (= res!792050 (validMask!0 mask!1564))))

(declare-fun b!1190747 () Bool)

(declare-fun e!676955 () Bool)

(assert (=> b!1190747 (= e!676955 true)))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!541540 () array!76946)

(declare-fun lt!541538 () array!76944)

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun minValue!944 () V!45245)

(declare-fun zeroValue!944 () V!45245)

(declare-datatypes ((tuple2!19542 0))(
  ( (tuple2!19543 (_1!9781 (_ BitVec 64)) (_2!9781 V!45245)) )
))
(declare-datatypes ((List!26303 0))(
  ( (Nil!26300) (Cons!26299 (h!27508 tuple2!19542) (t!38861 List!26303)) )
))
(declare-datatypes ((ListLongMap!17523 0))(
  ( (ListLongMap!17524 (toList!8777 List!26303)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5191 (array!76944 array!76946 (_ BitVec 32) (_ BitVec 32) V!45245 V!45245 (_ BitVec 32) Int) ListLongMap!17523)

(declare-fun -!1759 (ListLongMap!17523 (_ BitVec 64)) ListLongMap!17523)

(assert (=> b!1190747 (= (getCurrentListMapNoExtraKeys!5191 lt!541538 lt!541540 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1759 (getCurrentListMapNoExtraKeys!5191 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39446 0))(
  ( (Unit!39447) )
))
(declare-fun lt!541537 () Unit!39446)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!965 (array!76944 array!76946 (_ BitVec 32) (_ BitVec 32) V!45245 V!45245 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39446)

(assert (=> b!1190747 (= lt!541537 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!965 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!46961 () Bool)

(declare-fun mapRes!46961 () Bool)

(declare-fun tp!89391 () Bool)

(declare-fun e!676957 () Bool)

(assert (=> mapNonEmpty!46961 (= mapRes!46961 (and tp!89391 e!676957))))

(declare-fun mapRest!46961 () (Array (_ BitVec 32) ValueCell!14335))

(declare-fun mapValue!46961 () ValueCell!14335)

(declare-fun mapKey!46961 () (_ BitVec 32))

(assert (=> mapNonEmpty!46961 (= (arr!37119 _values!996) (store mapRest!46961 mapKey!46961 mapValue!46961))))

(declare-fun b!1190748 () Bool)

(declare-fun res!792052 () Bool)

(declare-fun e!676956 () Bool)

(assert (=> b!1190748 (=> (not res!792052) (not e!676956))))

(declare-datatypes ((List!26304 0))(
  ( (Nil!26301) (Cons!26300 (h!27509 (_ BitVec 64)) (t!38862 List!26304)) )
))
(declare-fun arrayNoDuplicates!0 (array!76944 (_ BitVec 32) List!26304) Bool)

(assert (=> b!1190748 (= res!792052 (arrayNoDuplicates!0 lt!541538 #b00000000000000000000000000000000 Nil!26301))))

(declare-fun b!1190749 () Bool)

(declare-fun e!676952 () Bool)

(assert (=> b!1190749 (= e!676952 tp_is_empty!30089)))

(declare-fun b!1190750 () Bool)

(assert (=> b!1190750 (= e!676951 (and e!676952 mapRes!46961))))

(declare-fun condMapEmpty!46961 () Bool)

(declare-fun mapDefault!46961 () ValueCell!14335)

