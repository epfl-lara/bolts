; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99694 () Bool)

(assert start!99694)

(declare-fun b_free!25237 () Bool)

(declare-fun b_next!25237 () Bool)

(assert (=> start!99694 (= b_free!25237 (not b_next!25237))))

(declare-fun tp!88425 () Bool)

(declare-fun b_and!41355 () Bool)

(assert (=> start!99694 (= tp!88425 b_and!41355)))

(declare-fun res!785287 () Bool)

(declare-fun e!671805 () Bool)

(assert (=> start!99694 (=> (not res!785287) (not e!671805))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!76302 0))(
  ( (array!76303 (arr!36797 (Array (_ BitVec 32) (_ BitVec 64))) (size!37334 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76302)

(assert (=> start!99694 (= res!785287 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37334 _keys!1208))))))

(assert (=> start!99694 e!671805))

(declare-fun tp_is_empty!29767 () Bool)

(assert (=> start!99694 tp_is_empty!29767))

(declare-fun array_inv!27976 (array!76302) Bool)

(assert (=> start!99694 (array_inv!27976 _keys!1208)))

(assert (=> start!99694 true))

(assert (=> start!99694 tp!88425))

(declare-datatypes ((V!44817 0))(
  ( (V!44818 (val!14940 Int)) )
))
(declare-datatypes ((ValueCell!14174 0))(
  ( (ValueCellFull!14174 (v!17579 V!44817)) (EmptyCell!14174) )
))
(declare-datatypes ((array!76304 0))(
  ( (array!76305 (arr!36798 (Array (_ BitVec 32) ValueCell!14174)) (size!37335 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76304)

(declare-fun e!671802 () Bool)

(declare-fun array_inv!27977 (array!76304) Bool)

(assert (=> start!99694 (and (array_inv!27977 _values!996) e!671802)))

(declare-fun b!1181569 () Bool)

(declare-fun e!671808 () Bool)

(assert (=> b!1181569 (= e!671808 true)))

(declare-datatypes ((tuple2!19262 0))(
  ( (tuple2!19263 (_1!9641 (_ BitVec 64)) (_2!9641 V!44817)) )
))
(declare-datatypes ((List!26022 0))(
  ( (Nil!26019) (Cons!26018 (h!27227 tuple2!19262) (t!38258 List!26022)) )
))
(declare-datatypes ((ListLongMap!17243 0))(
  ( (ListLongMap!17244 (toList!8637 List!26022)) )
))
(declare-fun lt!534457 () ListLongMap!17243)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun lt!534469 () ListLongMap!17243)

(declare-fun -!1626 (ListLongMap!17243 (_ BitVec 64)) ListLongMap!17243)

(assert (=> b!1181569 (= (-!1626 lt!534457 k!934) lt!534469)))

(declare-datatypes ((Unit!39002 0))(
  ( (Unit!39003) )
))
(declare-fun lt!534462 () Unit!39002)

(declare-fun lt!534459 () ListLongMap!17243)

(declare-fun lt!534470 () V!44817)

(declare-fun addRemoveCommutativeForDiffKeys!145 (ListLongMap!17243 (_ BitVec 64) V!44817 (_ BitVec 64)) Unit!39002)

(assert (=> b!1181569 (= lt!534462 (addRemoveCommutativeForDiffKeys!145 lt!534459 (select (arr!36797 _keys!1208) from!1455) lt!534470 k!934))))

(declare-fun lt!534460 () ListLongMap!17243)

(declare-fun lt!534461 () ListLongMap!17243)

(declare-fun lt!534467 () ListLongMap!17243)

(assert (=> b!1181569 (and (= lt!534461 lt!534457) (= lt!534460 lt!534467))))

(declare-fun lt!534466 () tuple2!19262)

(declare-fun +!3855 (ListLongMap!17243 tuple2!19262) ListLongMap!17243)

(assert (=> b!1181569 (= lt!534457 (+!3855 lt!534459 lt!534466))))

(assert (=> b!1181569 (not (= (select (arr!36797 _keys!1208) from!1455) k!934))))

(declare-fun lt!534464 () Unit!39002)

(declare-fun e!671801 () Unit!39002)

(assert (=> b!1181569 (= lt!534464 e!671801)))

(declare-fun c!116927 () Bool)

(assert (=> b!1181569 (= c!116927 (= (select (arr!36797 _keys!1208) from!1455) k!934))))

(declare-fun e!671800 () Bool)

(assert (=> b!1181569 e!671800))

(declare-fun res!785288 () Bool)

(assert (=> b!1181569 (=> (not res!785288) (not e!671800))))

(declare-fun lt!534454 () ListLongMap!17243)

(assert (=> b!1181569 (= res!785288 (= lt!534454 lt!534469))))

(assert (=> b!1181569 (= lt!534469 (+!3855 lt!534460 lt!534466))))

(assert (=> b!1181569 (= lt!534466 (tuple2!19263 (select (arr!36797 _keys!1208) from!1455) lt!534470))))

(declare-fun lt!534456 () V!44817)

(declare-fun get!18857 (ValueCell!14174 V!44817) V!44817)

(assert (=> b!1181569 (= lt!534470 (get!18857 (select (arr!36798 _values!996) from!1455) lt!534456))))

(declare-fun b!1181570 () Bool)

(declare-fun Unit!39004 () Unit!39002)

(assert (=> b!1181570 (= e!671801 Unit!39004)))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lt!534458 () Unit!39002)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76302 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39002)

(assert (=> b!1181570 (= lt!534458 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76302 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1181570 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!534465 () Unit!39002)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76302 (_ BitVec 32) (_ BitVec 32)) Unit!39002)

(assert (=> b!1181570 (= lt!534465 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26023 0))(
  ( (Nil!26020) (Cons!26019 (h!27228 (_ BitVec 64)) (t!38259 List!26023)) )
))
(declare-fun arrayNoDuplicates!0 (array!76302 (_ BitVec 32) List!26023) Bool)

(assert (=> b!1181570 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26020)))

(declare-fun lt!534468 () Unit!39002)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76302 (_ BitVec 64) (_ BitVec 32) List!26023) Unit!39002)

(assert (=> b!1181570 (= lt!534468 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26020))))

(assert (=> b!1181570 false))

(declare-fun b!1181571 () Bool)

(declare-fun res!785284 () Bool)

(assert (=> b!1181571 (=> (not res!785284) (not e!671805))))

(assert (=> b!1181571 (= res!785284 (= (select (arr!36797 _keys!1208) i!673) k!934))))

(declare-fun b!1181572 () Bool)

(declare-fun res!785289 () Bool)

(assert (=> b!1181572 (=> (not res!785289) (not e!671805))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1181572 (= res!785289 (validKeyInArray!0 k!934))))

(declare-fun b!1181573 () Bool)

(declare-fun e!671806 () Bool)

(declare-fun mapRes!46478 () Bool)

(assert (=> b!1181573 (= e!671802 (and e!671806 mapRes!46478))))

(declare-fun condMapEmpty!46478 () Bool)

(declare-fun mapDefault!46478 () ValueCell!14174)

