; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100542 () Bool)

(assert start!100542)

(declare-fun b_free!25829 () Bool)

(declare-fun b_next!25829 () Bool)

(assert (=> start!100542 (= b_free!25829 (not b_next!25829))))

(declare-fun tp!90478 () Bool)

(declare-fun b_and!42559 () Bool)

(assert (=> start!100542 (= tp!90478 b_and!42559)))

(declare-fun b!1200635 () Bool)

(declare-fun res!799334 () Bool)

(declare-fun e!681869 () Bool)

(assert (=> b!1200635 (=> (not res!799334) (not e!681869))))

(declare-datatypes ((array!77820 0))(
  ( (array!77821 (arr!37551 (Array (_ BitVec 32) (_ BitVec 64))) (size!38088 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77820)

(declare-datatypes ((List!26591 0))(
  ( (Nil!26588) (Cons!26587 (h!27796 (_ BitVec 64)) (t!39407 List!26591)) )
))
(declare-fun arrayNoDuplicates!0 (array!77820 (_ BitVec 32) List!26591) Bool)

(assert (=> b!1200635 (= res!799334 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26588))))

(declare-fun b!1200636 () Bool)

(declare-fun res!799327 () Bool)

(assert (=> b!1200636 (=> (not res!799327) (not e!681869))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1200636 (= res!799327 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38088 _keys!1208))))))

(declare-fun b!1200637 () Bool)

(declare-fun e!681870 () Bool)

(assert (=> b!1200637 (= e!681870 true)))

(declare-datatypes ((V!45837 0))(
  ( (V!45838 (val!15323 Int)) )
))
(declare-fun zeroValue!944 () V!45837)

(declare-fun lt!544084 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14557 0))(
  ( (ValueCellFull!14557 (v!17962 V!45837)) (EmptyCell!14557) )
))
(declare-datatypes ((array!77822 0))(
  ( (array!77823 (arr!37552 (Array (_ BitVec 32) ValueCell!14557)) (size!38089 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77822)

(declare-fun minValue!944 () V!45837)

(declare-datatypes ((tuple2!19758 0))(
  ( (tuple2!19759 (_1!9889 (_ BitVec 64)) (_2!9889 V!45837)) )
))
(declare-datatypes ((List!26592 0))(
  ( (Nil!26589) (Cons!26588 (h!27797 tuple2!19758) (t!39408 List!26592)) )
))
(declare-datatypes ((ListLongMap!17739 0))(
  ( (ListLongMap!17740 (toList!8885 List!26592)) )
))
(declare-fun contains!6888 (ListLongMap!17739 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMapNoExtraKeys!5298 (array!77820 array!77822 (_ BitVec 32) (_ BitVec 32) V!45837 V!45837 (_ BitVec 32) Int) ListLongMap!17739)

(assert (=> b!1200637 (= lt!544084 (contains!6888 (getCurrentListMapNoExtraKeys!5298 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun b!1200638 () Bool)

(declare-fun res!799328 () Bool)

(declare-fun e!681867 () Bool)

(assert (=> b!1200638 (=> (not res!799328) (not e!681867))))

(declare-fun lt!544089 () array!77820)

(assert (=> b!1200638 (= res!799328 (arrayNoDuplicates!0 lt!544089 #b00000000000000000000000000000000 Nil!26588))))

(declare-fun b!1200639 () Bool)

(declare-fun e!681866 () Bool)

(declare-fun e!681863 () Bool)

(assert (=> b!1200639 (= e!681866 e!681863)))

(declare-fun res!799336 () Bool)

(assert (=> b!1200639 (=> res!799336 e!681863)))

(assert (=> b!1200639 (= res!799336 (not (= from!1455 i!673)))))

(declare-fun lt!544090 () array!77822)

(declare-fun lt!544086 () ListLongMap!17739)

(assert (=> b!1200639 (= lt!544086 (getCurrentListMapNoExtraKeys!5298 lt!544089 lt!544090 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3228 (Int (_ BitVec 64)) V!45837)

(assert (=> b!1200639 (= lt!544090 (array!77823 (store (arr!37552 _values!996) i!673 (ValueCellFull!14557 (dynLambda!3228 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38089 _values!996)))))

(declare-fun lt!544088 () ListLongMap!17739)

(assert (=> b!1200639 (= lt!544088 (getCurrentListMapNoExtraKeys!5298 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1200640 () Bool)

(declare-fun res!799335 () Bool)

(assert (=> b!1200640 (=> (not res!799335) (not e!681869))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77820 (_ BitVec 32)) Bool)

(assert (=> b!1200640 (= res!799335 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1200641 () Bool)

(declare-fun res!799330 () Bool)

(assert (=> b!1200641 (=> (not res!799330) (not e!681869))))

(assert (=> b!1200641 (= res!799330 (and (= (size!38089 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38088 _keys!1208) (size!38089 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1200642 () Bool)

(declare-fun e!681865 () Bool)

(declare-fun call!57316 () ListLongMap!17739)

(declare-fun call!57315 () ListLongMap!17739)

(assert (=> b!1200642 (= e!681865 (= call!57316 call!57315))))

(declare-fun b!1200643 () Bool)

(assert (=> b!1200643 (= e!681867 (not e!681866))))

(declare-fun res!799331 () Bool)

(assert (=> b!1200643 (=> res!799331 e!681866)))

(assert (=> b!1200643 (= res!799331 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77820 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1200643 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39734 0))(
  ( (Unit!39735) )
))
(declare-fun lt!544087 () Unit!39734)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77820 (_ BitVec 64) (_ BitVec 32)) Unit!39734)

(assert (=> b!1200643 (= lt!544087 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1200644 () Bool)

(declare-fun e!681868 () Bool)

(declare-fun e!681871 () Bool)

(declare-fun mapRes!47642 () Bool)

(assert (=> b!1200644 (= e!681868 (and e!681871 mapRes!47642))))

(declare-fun condMapEmpty!47642 () Bool)

(declare-fun mapDefault!47642 () ValueCell!14557)

