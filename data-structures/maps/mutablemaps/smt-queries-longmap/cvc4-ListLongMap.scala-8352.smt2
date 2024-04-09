; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101702 () Bool)

(assert start!101702)

(declare-fun b_free!26387 () Bool)

(declare-fun b_next!26387 () Bool)

(assert (=> start!101702 (= b_free!26387 (not b_next!26387))))

(declare-fun tp!92204 () Bool)

(declare-fun b_and!44027 () Bool)

(assert (=> start!101702 (= tp!92204 b_and!44027)))

(declare-fun b!1223148 () Bool)

(declare-datatypes ((Unit!40444 0))(
  ( (Unit!40445) )
))
(declare-fun e!694699 () Unit!40444)

(declare-fun Unit!40446 () Unit!40444)

(assert (=> b!1223148 (= e!694699 Unit!40446)))

(declare-datatypes ((array!78940 0))(
  ( (array!78941 (arr!38094 (Array (_ BitVec 32) (_ BitVec 64))) (size!38631 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78940)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lt!556660 () Unit!40444)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78940 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40444)

(assert (=> b!1223148 (= lt!556660 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!78940 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1223148 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!556662 () Unit!40444)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78940 (_ BitVec 32) (_ BitVec 32)) Unit!40444)

(assert (=> b!1223148 (= lt!556662 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!27056 0))(
  ( (Nil!27053) (Cons!27052 (h!28261 (_ BitVec 64)) (t!40430 List!27056)) )
))
(declare-fun arrayNoDuplicates!0 (array!78940 (_ BitVec 32) List!27056) Bool)

(assert (=> b!1223148 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27053)))

(declare-fun lt!556655 () Unit!40444)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78940 (_ BitVec 64) (_ BitVec 32) List!27056) Unit!40444)

(assert (=> b!1223148 (= lt!556655 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!27053))))

(assert (=> b!1223148 false))

(declare-fun b!1223149 () Bool)

(declare-fun res!812820 () Bool)

(declare-fun e!694692 () Bool)

(assert (=> b!1223149 (=> (not res!812820) (not e!694692))))

(assert (=> b!1223149 (= res!812820 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27053))))

(declare-fun b!1223150 () Bool)

(declare-fun res!812812 () Bool)

(assert (=> b!1223150 (=> (not res!812812) (not e!694692))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1223150 (= res!812812 (validKeyInArray!0 k!934))))

(declare-fun b!1223151 () Bool)

(declare-fun res!812818 () Bool)

(assert (=> b!1223151 (=> (not res!812818) (not e!694692))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1223151 (= res!812818 (validMask!0 mask!1564))))

(declare-fun b!1223152 () Bool)

(declare-fun res!812815 () Bool)

(assert (=> b!1223152 (=> (not res!812815) (not e!694692))))

(assert (=> b!1223152 (= res!812815 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38631 _keys!1208))))))

(declare-fun b!1223153 () Bool)

(declare-fun e!694698 () Bool)

(declare-fun e!694700 () Bool)

(assert (=> b!1223153 (= e!694698 e!694700)))

(declare-fun res!812817 () Bool)

(assert (=> b!1223153 (=> res!812817 e!694700)))

(assert (=> b!1223153 (= res!812817 (not (validKeyInArray!0 (select (arr!38094 _keys!1208) from!1455))))))

(declare-datatypes ((V!46581 0))(
  ( (V!46582 (val!15602 Int)) )
))
(declare-datatypes ((tuple2!20244 0))(
  ( (tuple2!20245 (_1!10132 (_ BitVec 64)) (_2!10132 V!46581)) )
))
(declare-datatypes ((List!27057 0))(
  ( (Nil!27054) (Cons!27053 (h!28262 tuple2!20244) (t!40431 List!27057)) )
))
(declare-datatypes ((ListLongMap!18225 0))(
  ( (ListLongMap!18226 (toList!9128 List!27057)) )
))
(declare-fun lt!556659 () ListLongMap!18225)

(declare-fun lt!556661 () ListLongMap!18225)

(assert (=> b!1223153 (= lt!556659 lt!556661)))

(declare-fun lt!556652 () ListLongMap!18225)

(declare-fun -!1969 (ListLongMap!18225 (_ BitVec 64)) ListLongMap!18225)

(assert (=> b!1223153 (= lt!556661 (-!1969 lt!556652 k!934))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!556651 () array!78940)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46581)

(declare-fun zeroValue!944 () V!46581)

(declare-datatypes ((ValueCell!14836 0))(
  ( (ValueCellFull!14836 (v!18264 V!46581)) (EmptyCell!14836) )
))
(declare-datatypes ((array!78942 0))(
  ( (array!78943 (arr!38095 (Array (_ BitVec 32) ValueCell!14836)) (size!38632 (_ BitVec 32))) )
))
(declare-fun lt!556658 () array!78942)

(declare-fun getCurrentListMapNoExtraKeys!5526 (array!78940 array!78942 (_ BitVec 32) (_ BitVec 32) V!46581 V!46581 (_ BitVec 32) Int) ListLongMap!18225)

(assert (=> b!1223153 (= lt!556659 (getCurrentListMapNoExtraKeys!5526 lt!556651 lt!556658 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!78942)

(assert (=> b!1223153 (= lt!556652 (getCurrentListMapNoExtraKeys!5526 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!556657 () Unit!40444)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1171 (array!78940 array!78942 (_ BitVec 32) (_ BitVec 32) V!46581 V!46581 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40444)

(assert (=> b!1223153 (= lt!556657 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1171 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1223154 () Bool)

(declare-fun lt!556649 () ListLongMap!18225)

(declare-fun lt!556653 () tuple2!20244)

(declare-fun +!4091 (ListLongMap!18225 tuple2!20244) ListLongMap!18225)

(assert (=> b!1223154 (= e!694700 (= lt!556649 (+!4091 lt!556652 lt!556653)))))

(assert (=> b!1223154 (not (= (select (arr!38094 _keys!1208) from!1455) k!934))))

(declare-fun lt!556648 () Unit!40444)

(assert (=> b!1223154 (= lt!556648 e!694699)))

(declare-fun c!120306 () Bool)

(assert (=> b!1223154 (= c!120306 (= (select (arr!38094 _keys!1208) from!1455) k!934))))

(declare-fun e!694694 () Bool)

(assert (=> b!1223154 e!694694))

(declare-fun res!812819 () Bool)

(assert (=> b!1223154 (=> (not res!812819) (not e!694694))))

(declare-fun lt!556656 () ListLongMap!18225)

(assert (=> b!1223154 (= res!812819 (= lt!556656 (+!4091 lt!556661 lt!556653)))))

(declare-fun lt!556650 () V!46581)

(declare-fun get!19491 (ValueCell!14836 V!46581) V!46581)

(assert (=> b!1223154 (= lt!556653 (tuple2!20245 (select (arr!38094 _keys!1208) from!1455) (get!19491 (select (arr!38095 _values!996) from!1455) lt!556650)))))

(declare-fun b!1223155 () Bool)

(declare-fun e!694695 () Bool)

(declare-fun tp_is_empty!31091 () Bool)

(assert (=> b!1223155 (= e!694695 tp_is_empty!31091)))

(declare-fun mapNonEmpty!48532 () Bool)

(declare-fun mapRes!48532 () Bool)

(declare-fun tp!92205 () Bool)

(declare-fun e!694703 () Bool)

(assert (=> mapNonEmpty!48532 (= mapRes!48532 (and tp!92205 e!694703))))

(declare-fun mapValue!48532 () ValueCell!14836)

(declare-fun mapKey!48532 () (_ BitVec 32))

(declare-fun mapRest!48532 () (Array (_ BitVec 32) ValueCell!14836))

(assert (=> mapNonEmpty!48532 (= (arr!38095 _values!996) (store mapRest!48532 mapKey!48532 mapValue!48532))))

(declare-fun mapIsEmpty!48532 () Bool)

(assert (=> mapIsEmpty!48532 mapRes!48532))

(declare-fun res!812822 () Bool)

(assert (=> start!101702 (=> (not res!812822) (not e!694692))))

(assert (=> start!101702 (= res!812822 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38631 _keys!1208))))))

(assert (=> start!101702 e!694692))

(assert (=> start!101702 tp_is_empty!31091))

(declare-fun array_inv!28898 (array!78940) Bool)

(assert (=> start!101702 (array_inv!28898 _keys!1208)))

(assert (=> start!101702 true))

(assert (=> start!101702 tp!92204))

(declare-fun e!694701 () Bool)

(declare-fun array_inv!28899 (array!78942) Bool)

(assert (=> start!101702 (and (array_inv!28899 _values!996) e!694701)))

(declare-fun b!1223156 () Bool)

(declare-fun e!694697 () Bool)

(assert (=> b!1223156 (= e!694697 e!694698)))

(declare-fun res!812816 () Bool)

(assert (=> b!1223156 (=> res!812816 e!694698)))

(assert (=> b!1223156 (= res!812816 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1223156 (= lt!556656 (getCurrentListMapNoExtraKeys!5526 lt!556651 lt!556658 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1223156 (= lt!556658 (array!78943 (store (arr!38095 _values!996) i!673 (ValueCellFull!14836 lt!556650)) (size!38632 _values!996)))))

(declare-fun dynLambda!3422 (Int (_ BitVec 64)) V!46581)

(assert (=> b!1223156 (= lt!556650 (dynLambda!3422 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1223156 (= lt!556649 (getCurrentListMapNoExtraKeys!5526 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1223157 () Bool)

(declare-fun e!694702 () Bool)

(assert (=> b!1223157 (= e!694702 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1223158 () Bool)

(assert (=> b!1223158 (= e!694701 (and e!694695 mapRes!48532))))

(declare-fun condMapEmpty!48532 () Bool)

(declare-fun mapDefault!48532 () ValueCell!14836)

