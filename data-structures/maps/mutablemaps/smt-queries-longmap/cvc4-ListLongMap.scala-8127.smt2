; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99668 () Bool)

(assert start!99668)

(declare-fun b_free!25211 () Bool)

(declare-fun b_next!25211 () Bool)

(assert (=> start!99668 (= b_free!25211 (not b_next!25211))))

(declare-fun tp!88348 () Bool)

(declare-fun b_and!41303 () Bool)

(assert (=> start!99668 (= tp!88348 b_and!41303)))

(declare-fun b!1180689 () Bool)

(declare-datatypes ((Unit!38958 0))(
  ( (Unit!38959) )
))
(declare-fun e!671293 () Unit!38958)

(declare-fun Unit!38960 () Unit!38958)

(assert (=> b!1180689 (= e!671293 Unit!38960)))

(declare-datatypes ((array!76250 0))(
  ( (array!76251 (arr!36771 (Array (_ BitVec 32) (_ BitVec 64))) (size!37308 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76250)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1180690 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun e!671305 () Bool)

(declare-fun arrayContainsKey!0 (array!76250 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1180690 (= e!671305 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1180691 () Bool)

(declare-fun res!784623 () Bool)

(declare-fun e!671302 () Bool)

(assert (=> b!1180691 (=> (not res!784623) (not e!671302))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44781 0))(
  ( (V!44782 (val!14927 Int)) )
))
(declare-datatypes ((ValueCell!14161 0))(
  ( (ValueCellFull!14161 (v!17566 V!44781)) (EmptyCell!14161) )
))
(declare-datatypes ((array!76252 0))(
  ( (array!76253 (arr!36772 (Array (_ BitVec 32) ValueCell!14161)) (size!37309 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76252)

(assert (=> b!1180691 (= res!784623 (and (= (size!37309 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37308 _keys!1208) (size!37309 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1180692 () Bool)

(declare-fun res!784631 () Bool)

(declare-fun e!671301 () Bool)

(assert (=> b!1180692 (=> (not res!784631) (not e!671301))))

(declare-fun lt!533862 () array!76250)

(declare-datatypes ((List!25999 0))(
  ( (Nil!25996) (Cons!25995 (h!27204 (_ BitVec 64)) (t!38209 List!25999)) )
))
(declare-fun arrayNoDuplicates!0 (array!76250 (_ BitVec 32) List!25999) Bool)

(assert (=> b!1180692 (= res!784631 (arrayNoDuplicates!0 lt!533862 #b00000000000000000000000000000000 Nil!25996))))

(declare-fun mapNonEmpty!46439 () Bool)

(declare-fun mapRes!46439 () Bool)

(declare-fun tp!88347 () Bool)

(declare-fun e!671298 () Bool)

(assert (=> mapNonEmpty!46439 (= mapRes!46439 (and tp!88347 e!671298))))

(declare-fun mapKey!46439 () (_ BitVec 32))

(declare-fun mapRest!46439 () (Array (_ BitVec 32) ValueCell!14161))

(declare-fun mapValue!46439 () ValueCell!14161)

(assert (=> mapNonEmpty!46439 (= (arr!36772 _values!996) (store mapRest!46439 mapKey!46439 mapValue!46439))))

(declare-fun mapIsEmpty!46439 () Bool)

(assert (=> mapIsEmpty!46439 mapRes!46439))

(declare-fun b!1180694 () Bool)

(declare-fun res!784635 () Bool)

(assert (=> b!1180694 (=> (not res!784635) (not e!671302))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1180694 (= res!784635 (validMask!0 mask!1564))))

(declare-fun b!1180695 () Bool)

(declare-fun Unit!38961 () Unit!38958)

(assert (=> b!1180695 (= e!671293 Unit!38961)))

(declare-fun lt!533868 () Unit!38958)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76250 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38958)

(assert (=> b!1180695 (= lt!533868 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1180695 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!533864 () Unit!38958)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76250 (_ BitVec 32) (_ BitVec 32)) Unit!38958)

(assert (=> b!1180695 (= lt!533864 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1180695 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25996)))

(declare-fun lt!533872 () Unit!38958)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76250 (_ BitVec 64) (_ BitVec 32) List!25999) Unit!38958)

(assert (=> b!1180695 (= lt!533872 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25996))))

(assert (=> b!1180695 false))

(declare-fun b!1180696 () Bool)

(declare-fun res!784633 () Bool)

(assert (=> b!1180696 (=> (not res!784633) (not e!671302))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1180696 (= res!784633 (validKeyInArray!0 k!934))))

(declare-fun b!1180697 () Bool)

(declare-fun res!784630 () Bool)

(assert (=> b!1180697 (=> (not res!784630) (not e!671302))))

(assert (=> b!1180697 (= res!784630 (= (select (arr!36771 _keys!1208) i!673) k!934))))

(declare-fun b!1180698 () Bool)

(declare-fun e!671299 () Bool)

(assert (=> b!1180698 (= e!671299 true)))

(declare-fun e!671303 () Bool)

(assert (=> b!1180698 e!671303))

(declare-fun res!784620 () Bool)

(assert (=> b!1180698 (=> (not res!784620) (not e!671303))))

(assert (=> b!1180698 (= res!784620 (not (= (select (arr!36771 _keys!1208) from!1455) k!934)))))

(declare-fun lt!533874 () Unit!38958)

(assert (=> b!1180698 (= lt!533874 e!671293)))

(declare-fun c!116888 () Bool)

(assert (=> b!1180698 (= c!116888 (= (select (arr!36771 _keys!1208) from!1455) k!934))))

(declare-fun e!671295 () Bool)

(assert (=> b!1180698 e!671295))

(declare-fun res!784628 () Bool)

(assert (=> b!1180698 (=> (not res!784628) (not e!671295))))

(declare-datatypes ((tuple2!19238 0))(
  ( (tuple2!19239 (_1!9629 (_ BitVec 64)) (_2!9629 V!44781)) )
))
(declare-datatypes ((List!26000 0))(
  ( (Nil!25997) (Cons!25996 (h!27205 tuple2!19238) (t!38210 List!26000)) )
))
(declare-datatypes ((ListLongMap!17219 0))(
  ( (ListLongMap!17220 (toList!8625 List!26000)) )
))
(declare-fun lt!533860 () ListLongMap!17219)

(declare-fun lt!533867 () ListLongMap!17219)

(declare-fun lt!533866 () tuple2!19238)

(declare-fun +!3844 (ListLongMap!17219 tuple2!19238) ListLongMap!17219)

(assert (=> b!1180698 (= res!784628 (= lt!533867 (+!3844 lt!533860 lt!533866)))))

(declare-fun lt!533871 () V!44781)

(declare-fun get!18838 (ValueCell!14161 V!44781) V!44781)

(assert (=> b!1180698 (= lt!533866 (tuple2!19239 (select (arr!36771 _keys!1208) from!1455) (get!18838 (select (arr!36772 _values!996) from!1455) lt!533871)))))

(declare-fun b!1180699 () Bool)

(declare-fun e!671297 () Bool)

(assert (=> b!1180699 (= e!671301 (not e!671297))))

(declare-fun res!784636 () Bool)

(assert (=> b!1180699 (=> res!784636 e!671297)))

(assert (=> b!1180699 (= res!784636 (bvsgt from!1455 i!673))))

(assert (=> b!1180699 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!533873 () Unit!38958)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76250 (_ BitVec 64) (_ BitVec 32)) Unit!38958)

(assert (=> b!1180699 (= lt!533873 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1180700 () Bool)

(declare-fun res!784621 () Bool)

(assert (=> b!1180700 (=> (not res!784621) (not e!671302))))

(assert (=> b!1180700 (= res!784621 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25996))))

(declare-fun res!784634 () Bool)

(assert (=> start!99668 (=> (not res!784634) (not e!671302))))

(assert (=> start!99668 (= res!784634 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37308 _keys!1208))))))

(assert (=> start!99668 e!671302))

(declare-fun tp_is_empty!29741 () Bool)

(assert (=> start!99668 tp_is_empty!29741))

(declare-fun array_inv!27956 (array!76250) Bool)

(assert (=> start!99668 (array_inv!27956 _keys!1208)))

(assert (=> start!99668 true))

(assert (=> start!99668 tp!88348))

(declare-fun e!671294 () Bool)

(declare-fun array_inv!27957 (array!76252) Bool)

(assert (=> start!99668 (and (array_inv!27957 _values!996) e!671294)))

(declare-fun b!1180693 () Bool)

(assert (=> b!1180693 (= e!671302 e!671301)))

(declare-fun res!784629 () Bool)

(assert (=> b!1180693 (=> (not res!784629) (not e!671301))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76250 (_ BitVec 32)) Bool)

(assert (=> b!1180693 (= res!784629 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!533862 mask!1564))))

(assert (=> b!1180693 (= lt!533862 (array!76251 (store (arr!36771 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37308 _keys!1208)))))

(declare-fun b!1180701 () Bool)

(declare-fun res!784627 () Bool)

(assert (=> b!1180701 (=> (not res!784627) (not e!671302))))

(assert (=> b!1180701 (= res!784627 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1180702 () Bool)

(declare-fun e!671300 () Bool)

(assert (=> b!1180702 (= e!671294 (and e!671300 mapRes!46439))))

(declare-fun condMapEmpty!46439 () Bool)

(declare-fun mapDefault!46439 () ValueCell!14161)

