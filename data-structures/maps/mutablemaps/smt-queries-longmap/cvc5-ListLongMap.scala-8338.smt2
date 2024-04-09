; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101518 () Bool)

(assert start!101518)

(declare-fun b_free!26299 () Bool)

(declare-fun b_next!26299 () Bool)

(assert (=> start!101518 (= b_free!26299 (not b_next!26299))))

(declare-fun tp!91931 () Bool)

(declare-fun b_and!43797 () Bool)

(assert (=> start!101518 (= tp!91931 b_and!43797)))

(declare-fun b!1219942 () Bool)

(declare-fun e!692741 () Bool)

(declare-fun tp_is_empty!31003 () Bool)

(assert (=> b!1219942 (= e!692741 tp_is_empty!31003)))

(declare-fun b!1219943 () Bool)

(declare-fun e!692739 () Bool)

(declare-fun e!692747 () Bool)

(assert (=> b!1219943 (= e!692739 (not e!692747))))

(declare-fun res!810446 () Bool)

(assert (=> b!1219943 (=> res!810446 e!692747)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1219943 (= res!810446 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!78758 0))(
  ( (array!78759 (arr!38006 (Array (_ BitVec 32) (_ BitVec 64))) (size!38543 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78758)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78758 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1219943 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40346 0))(
  ( (Unit!40347) )
))
(declare-fun lt!554702 () Unit!40346)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78758 (_ BitVec 64) (_ BitVec 32)) Unit!40346)

(assert (=> b!1219943 (= lt!554702 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun e!692746 () Bool)

(declare-fun b!1219944 () Bool)

(assert (=> b!1219944 (= e!692746 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1219945 () Bool)

(declare-fun res!810449 () Bool)

(declare-fun e!692748 () Bool)

(assert (=> b!1219945 (=> (not res!810449) (not e!692748))))

(declare-datatypes ((List!26979 0))(
  ( (Nil!26976) (Cons!26975 (h!28184 (_ BitVec 64)) (t!40265 List!26979)) )
))
(declare-fun arrayNoDuplicates!0 (array!78758 (_ BitVec 32) List!26979) Bool)

(assert (=> b!1219945 (= res!810449 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26976))))

(declare-fun res!810443 () Bool)

(assert (=> start!101518 (=> (not res!810443) (not e!692748))))

(assert (=> start!101518 (= res!810443 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38543 _keys!1208))))))

(assert (=> start!101518 e!692748))

(assert (=> start!101518 tp_is_empty!31003))

(declare-fun array_inv!28838 (array!78758) Bool)

(assert (=> start!101518 (array_inv!28838 _keys!1208)))

(assert (=> start!101518 true))

(assert (=> start!101518 tp!91931))

(declare-datatypes ((V!46465 0))(
  ( (V!46466 (val!15558 Int)) )
))
(declare-datatypes ((ValueCell!14792 0))(
  ( (ValueCellFull!14792 (v!18216 V!46465)) (EmptyCell!14792) )
))
(declare-datatypes ((array!78760 0))(
  ( (array!78761 (arr!38007 (Array (_ BitVec 32) ValueCell!14792)) (size!38544 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78760)

(declare-fun e!692738 () Bool)

(declare-fun array_inv!28839 (array!78760) Bool)

(assert (=> start!101518 (and (array_inv!28839 _values!996) e!692738)))

(declare-fun b!1219946 () Bool)

(declare-fun res!810444 () Bool)

(assert (=> b!1219946 (=> (not res!810444) (not e!692748))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1219946 (= res!810444 (validMask!0 mask!1564))))

(declare-fun b!1219947 () Bool)

(declare-fun res!810434 () Bool)

(assert (=> b!1219947 (=> (not res!810434) (not e!692748))))

(assert (=> b!1219947 (= res!810434 (= (select (arr!38006 _keys!1208) i!673) k!934))))

(declare-fun b!1219948 () Bool)

(assert (=> b!1219948 (= e!692748 e!692739)))

(declare-fun res!810445 () Bool)

(assert (=> b!1219948 (=> (not res!810445) (not e!692739))))

(declare-fun lt!554697 () array!78758)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78758 (_ BitVec 32)) Bool)

(assert (=> b!1219948 (= res!810445 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!554697 mask!1564))))

(assert (=> b!1219948 (= lt!554697 (array!78759 (store (arr!38006 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38543 _keys!1208)))))

(declare-fun b!1219949 () Bool)

(declare-fun res!810440 () Bool)

(assert (=> b!1219949 (=> (not res!810440) (not e!692748))))

(assert (=> b!1219949 (= res!810440 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1219950 () Bool)

(declare-fun e!692743 () Bool)

(assert (=> b!1219950 (= e!692743 tp_is_empty!31003)))

(declare-fun mapNonEmpty!48391 () Bool)

(declare-fun mapRes!48391 () Bool)

(declare-fun tp!91932 () Bool)

(assert (=> mapNonEmpty!48391 (= mapRes!48391 (and tp!91932 e!692741))))

(declare-fun mapKey!48391 () (_ BitVec 32))

(declare-fun mapValue!48391 () ValueCell!14792)

(declare-fun mapRest!48391 () (Array (_ BitVec 32) ValueCell!14792))

(assert (=> mapNonEmpty!48391 (= (arr!38007 _values!996) (store mapRest!48391 mapKey!48391 mapValue!48391))))

(declare-fun b!1219951 () Bool)

(declare-fun e!692740 () Bool)

(declare-fun e!692745 () Bool)

(assert (=> b!1219951 (= e!692740 e!692745)))

(declare-fun res!810442 () Bool)

(assert (=> b!1219951 (=> res!810442 e!692745)))

(assert (=> b!1219951 (= res!810442 (not (= (select (arr!38006 _keys!1208) from!1455) k!934)))))

(declare-fun e!692737 () Bool)

(assert (=> b!1219951 e!692737))

(declare-fun res!810435 () Bool)

(assert (=> b!1219951 (=> (not res!810435) (not e!692737))))

(declare-fun lt!554704 () V!46465)

(declare-datatypes ((tuple2!20160 0))(
  ( (tuple2!20161 (_1!10090 (_ BitVec 64)) (_2!10090 V!46465)) )
))
(declare-datatypes ((List!26980 0))(
  ( (Nil!26977) (Cons!26976 (h!28185 tuple2!20160) (t!40266 List!26980)) )
))
(declare-datatypes ((ListLongMap!18141 0))(
  ( (ListLongMap!18142 (toList!9086 List!26980)) )
))
(declare-fun lt!554701 () ListLongMap!18141)

(declare-fun lt!554699 () ListLongMap!18141)

(declare-fun +!4061 (ListLongMap!18141 tuple2!20160) ListLongMap!18141)

(declare-fun get!19427 (ValueCell!14792 V!46465) V!46465)

(assert (=> b!1219951 (= res!810435 (= lt!554701 (+!4061 lt!554699 (tuple2!20161 (select (arr!38006 _keys!1208) from!1455) (get!19427 (select (arr!38007 _values!996) from!1455) lt!554704)))))))

(declare-fun mapIsEmpty!48391 () Bool)

(assert (=> mapIsEmpty!48391 mapRes!48391))

(declare-fun b!1219952 () Bool)

(declare-fun res!810447 () Bool)

(assert (=> b!1219952 (=> (not res!810447) (not e!692748))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1219952 (= res!810447 (validKeyInArray!0 k!934))))

(declare-fun b!1219953 () Bool)

(assert (=> b!1219953 (= e!692737 e!692746)))

(declare-fun res!810439 () Bool)

(assert (=> b!1219953 (=> res!810439 e!692746)))

(assert (=> b!1219953 (= res!810439 (not (= (select (arr!38006 _keys!1208) from!1455) k!934)))))

(declare-fun b!1219954 () Bool)

(declare-fun res!810448 () Bool)

(assert (=> b!1219954 (=> (not res!810448) (not e!692748))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1219954 (= res!810448 (and (= (size!38544 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38543 _keys!1208) (size!38544 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1219955 () Bool)

(declare-fun e!692742 () Bool)

(assert (=> b!1219955 (= e!692747 e!692742)))

(declare-fun res!810436 () Bool)

(assert (=> b!1219955 (=> res!810436 e!692742)))

(assert (=> b!1219955 (= res!810436 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!554695 () array!78760)

(declare-fun minValue!944 () V!46465)

(declare-fun zeroValue!944 () V!46465)

(declare-fun getCurrentListMapNoExtraKeys!5485 (array!78758 array!78760 (_ BitVec 32) (_ BitVec 32) V!46465 V!46465 (_ BitVec 32) Int) ListLongMap!18141)

(assert (=> b!1219955 (= lt!554701 (getCurrentListMapNoExtraKeys!5485 lt!554697 lt!554695 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1219955 (= lt!554695 (array!78761 (store (arr!38007 _values!996) i!673 (ValueCellFull!14792 lt!554704)) (size!38544 _values!996)))))

(declare-fun dynLambda!3387 (Int (_ BitVec 64)) V!46465)

(assert (=> b!1219955 (= lt!554704 (dynLambda!3387 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!554696 () ListLongMap!18141)

(assert (=> b!1219955 (= lt!554696 (getCurrentListMapNoExtraKeys!5485 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1219956 () Bool)

(declare-fun res!810438 () Bool)

(assert (=> b!1219956 (=> (not res!810438) (not e!692739))))

(assert (=> b!1219956 (= res!810438 (arrayNoDuplicates!0 lt!554697 #b00000000000000000000000000000000 Nil!26976))))

(declare-fun b!1219957 () Bool)

(assert (=> b!1219957 (= e!692745 (bvslt (size!38543 _keys!1208) #b01111111111111111111111111111111))))

(assert (=> b!1219957 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26976)))

(declare-fun lt!554700 () Unit!40346)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78758 (_ BitVec 32) (_ BitVec 32)) Unit!40346)

(assert (=> b!1219957 (= lt!554700 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1219957 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!554694 () Unit!40346)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78758 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40346)

(assert (=> b!1219957 (= lt!554694 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1219958 () Bool)

(declare-fun res!810437 () Bool)

(assert (=> b!1219958 (=> (not res!810437) (not e!692748))))

(assert (=> b!1219958 (= res!810437 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38543 _keys!1208))))))

(declare-fun b!1219959 () Bool)

(assert (=> b!1219959 (= e!692738 (and e!692743 mapRes!48391))))

(declare-fun condMapEmpty!48391 () Bool)

(declare-fun mapDefault!48391 () ValueCell!14792)

