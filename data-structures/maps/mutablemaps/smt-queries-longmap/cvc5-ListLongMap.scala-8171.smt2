; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99928 () Bool)

(assert start!99928)

(declare-fun b_free!25471 () Bool)

(declare-fun b_next!25471 () Bool)

(assert (=> start!99928 (= b_free!25471 (not b_next!25471))))

(declare-fun tp!89127 () Bool)

(declare-fun b_and!41823 () Bool)

(assert (=> start!99928 (= tp!89127 b_and!41823)))

(declare-fun b!1188678 () Bool)

(declare-fun res!790459 () Bool)

(declare-fun e!675896 () Bool)

(assert (=> b!1188678 (=> (not res!790459) (not e!675896))))

(declare-datatypes ((array!76770 0))(
  ( (array!76771 (arr!37031 (Array (_ BitVec 32) (_ BitVec 64))) (size!37568 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76770)

(declare-datatypes ((List!26224 0))(
  ( (Nil!26221) (Cons!26220 (h!27429 (_ BitVec 64)) (t!38694 List!26224)) )
))
(declare-fun arrayNoDuplicates!0 (array!76770 (_ BitVec 32) List!26224) Bool)

(assert (=> b!1188678 (= res!790459 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26221))))

(declare-fun b!1188679 () Bool)

(declare-fun res!790458 () Bool)

(assert (=> b!1188679 (=> (not res!790458) (not e!675896))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1188679 (= res!790458 (= (select (arr!37031 _keys!1208) i!673) k!934))))

(declare-fun b!1188680 () Bool)

(declare-fun e!675899 () Bool)

(declare-fun tp_is_empty!30001 () Bool)

(assert (=> b!1188680 (= e!675899 tp_is_empty!30001)))

(declare-fun b!1188681 () Bool)

(declare-fun res!790467 () Bool)

(assert (=> b!1188681 (=> (not res!790467) (not e!675896))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1188681 (= res!790467 (validKeyInArray!0 k!934))))

(declare-fun b!1188682 () Bool)

(declare-fun e!675897 () Bool)

(assert (=> b!1188682 (= e!675897 true)))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!540749 () array!76770)

(declare-datatypes ((V!45129 0))(
  ( (V!45130 (val!15057 Int)) )
))
(declare-datatypes ((ValueCell!14291 0))(
  ( (ValueCellFull!14291 (v!17696 V!45129)) (EmptyCell!14291) )
))
(declare-datatypes ((array!76772 0))(
  ( (array!76773 (arr!37032 (Array (_ BitVec 32) ValueCell!14291)) (size!37569 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76772)

(declare-fun minValue!944 () V!45129)

(declare-fun lt!540748 () array!76772)

(declare-fun zeroValue!944 () V!45129)

(declare-datatypes ((tuple2!19464 0))(
  ( (tuple2!19465 (_1!9742 (_ BitVec 64)) (_2!9742 V!45129)) )
))
(declare-datatypes ((List!26225 0))(
  ( (Nil!26222) (Cons!26221 (h!27430 tuple2!19464) (t!38695 List!26225)) )
))
(declare-datatypes ((ListLongMap!17445 0))(
  ( (ListLongMap!17446 (toList!8738 List!26225)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5152 (array!76770 array!76772 (_ BitVec 32) (_ BitVec 32) V!45129 V!45129 (_ BitVec 32) Int) ListLongMap!17445)

(declare-fun -!1722 (ListLongMap!17445 (_ BitVec 64)) ListLongMap!17445)

(assert (=> b!1188682 (= (getCurrentListMapNoExtraKeys!5152 lt!540749 lt!540748 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1722 (getCurrentListMapNoExtraKeys!5152 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-datatypes ((Unit!39368 0))(
  ( (Unit!39369) )
))
(declare-fun lt!540750 () Unit!39368)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!928 (array!76770 array!76772 (_ BitVec 32) (_ BitVec 32) V!45129 V!45129 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39368)

(assert (=> b!1188682 (= lt!540750 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!928 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1188683 () Bool)

(declare-fun res!790461 () Bool)

(assert (=> b!1188683 (=> (not res!790461) (not e!675896))))

(assert (=> b!1188683 (= res!790461 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37568 _keys!1208))))))

(declare-fun b!1188684 () Bool)

(declare-fun e!675900 () Bool)

(declare-fun e!675894 () Bool)

(declare-fun mapRes!46829 () Bool)

(assert (=> b!1188684 (= e!675900 (and e!675894 mapRes!46829))))

(declare-fun condMapEmpty!46829 () Bool)

(declare-fun mapDefault!46829 () ValueCell!14291)

