; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99746 () Bool)

(assert start!99746)

(declare-fun b_free!25289 () Bool)

(declare-fun b_next!25289 () Bool)

(assert (=> start!99746 (= b_free!25289 (not b_next!25289))))

(declare-fun tp!88581 () Bool)

(declare-fun b_and!41459 () Bool)

(assert (=> start!99746 (= tp!88581 b_and!41459)))

(declare-fun b!1183181 () Bool)

(declare-fun res!786463 () Bool)

(declare-fun e!672740 () Bool)

(assert (=> b!1183181 (=> (not res!786463) (not e!672740))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1183181 (= res!786463 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!46556 () Bool)

(declare-fun mapRes!46556 () Bool)

(declare-fun tp!88582 () Bool)

(declare-fun e!672739 () Bool)

(assert (=> mapNonEmpty!46556 (= mapRes!46556 (and tp!88582 e!672739))))

(declare-fun mapKey!46556 () (_ BitVec 32))

(declare-datatypes ((V!44885 0))(
  ( (V!44886 (val!14966 Int)) )
))
(declare-datatypes ((ValueCell!14200 0))(
  ( (ValueCellFull!14200 (v!17605 V!44885)) (EmptyCell!14200) )
))
(declare-fun mapValue!46556 () ValueCell!14200)

(declare-fun mapRest!46556 () (Array (_ BitVec 32) ValueCell!14200))

(declare-datatypes ((array!76406 0))(
  ( (array!76407 (arr!36849 (Array (_ BitVec 32) ValueCell!14200)) (size!37386 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76406)

(assert (=> mapNonEmpty!46556 (= (arr!36849 _values!996) (store mapRest!46556 mapKey!46556 mapValue!46556))))

(declare-fun b!1183182 () Bool)

(declare-fun e!672743 () Bool)

(declare-fun e!672741 () Bool)

(assert (=> b!1183182 (= e!672743 e!672741)))

(declare-fun res!786450 () Bool)

(assert (=> b!1183182 (=> res!786450 e!672741)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1183182 (= res!786450 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44885)

(declare-datatypes ((array!76408 0))(
  ( (array!76409 (arr!36850 (Array (_ BitVec 32) (_ BitVec 64))) (size!37387 (_ BitVec 32))) )
))
(declare-fun lt!535950 () array!76408)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19302 0))(
  ( (tuple2!19303 (_1!9661 (_ BitVec 64)) (_2!9661 V!44885)) )
))
(declare-datatypes ((List!26065 0))(
  ( (Nil!26062) (Cons!26061 (h!27270 tuple2!19302) (t!38353 List!26065)) )
))
(declare-datatypes ((ListLongMap!17283 0))(
  ( (ListLongMap!17284 (toList!8657 List!26065)) )
))
(declare-fun lt!535941 () ListLongMap!17283)

(declare-fun minValue!944 () V!44885)

(declare-fun lt!535949 () array!76406)

(declare-fun getCurrentListMapNoExtraKeys!5079 (array!76408 array!76406 (_ BitVec 32) (_ BitVec 32) V!44885 V!44885 (_ BitVec 32) Int) ListLongMap!17283)

(assert (=> b!1183182 (= lt!535941 (getCurrentListMapNoExtraKeys!5079 lt!535950 lt!535949 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!535944 () V!44885)

(assert (=> b!1183182 (= lt!535949 (array!76407 (store (arr!36849 _values!996) i!673 (ValueCellFull!14200 lt!535944)) (size!37386 _values!996)))))

(declare-fun dynLambda!3046 (Int (_ BitVec 64)) V!44885)

(assert (=> b!1183182 (= lt!535944 (dynLambda!3046 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!76408)

(declare-fun lt!535939 () ListLongMap!17283)

(assert (=> b!1183182 (= lt!535939 (getCurrentListMapNoExtraKeys!5079 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1183183 () Bool)

(declare-fun res!786456 () Bool)

(assert (=> b!1183183 (=> (not res!786456) (not e!672740))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1183183 (= res!786456 (= (select (arr!36850 _keys!1208) i!673) k!934))))

(declare-fun b!1183184 () Bool)

(declare-fun res!786451 () Bool)

(assert (=> b!1183184 (=> (not res!786451) (not e!672740))))

(declare-datatypes ((List!26066 0))(
  ( (Nil!26063) (Cons!26062 (h!27271 (_ BitVec 64)) (t!38354 List!26066)) )
))
(declare-fun arrayNoDuplicates!0 (array!76408 (_ BitVec 32) List!26066) Bool)

(assert (=> b!1183184 (= res!786451 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26063))))

(declare-fun b!1183185 () Bool)

(declare-fun tp_is_empty!29819 () Bool)

(assert (=> b!1183185 (= e!672739 tp_is_empty!29819)))

(declare-fun res!786455 () Bool)

(assert (=> start!99746 (=> (not res!786455) (not e!672740))))

(assert (=> start!99746 (= res!786455 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37387 _keys!1208))))))

(assert (=> start!99746 e!672740))

(assert (=> start!99746 tp_is_empty!29819))

(declare-fun array_inv!28008 (array!76408) Bool)

(assert (=> start!99746 (array_inv!28008 _keys!1208)))

(assert (=> start!99746 true))

(assert (=> start!99746 tp!88581))

(declare-fun e!672745 () Bool)

(declare-fun array_inv!28009 (array!76406) Bool)

(assert (=> start!99746 (and (array_inv!28009 _values!996) e!672745)))

(declare-fun b!1183186 () Bool)

(declare-fun e!672742 () Bool)

(assert (=> b!1183186 (= e!672742 tp_is_empty!29819)))

(declare-fun b!1183187 () Bool)

(declare-datatypes ((Unit!39083 0))(
  ( (Unit!39084) )
))
(declare-fun e!672734 () Unit!39083)

(declare-fun Unit!39085 () Unit!39083)

(assert (=> b!1183187 (= e!672734 Unit!39085)))

(declare-fun lt!535947 () Unit!39083)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76408 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39083)

(assert (=> b!1183187 (= lt!535947 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76408 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1183187 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!535935 () Unit!39083)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76408 (_ BitVec 32) (_ BitVec 32)) Unit!39083)

(assert (=> b!1183187 (= lt!535935 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1183187 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26063)))

(declare-fun lt!535952 () Unit!39083)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76408 (_ BitVec 64) (_ BitVec 32) List!26066) Unit!39083)

(assert (=> b!1183187 (= lt!535952 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26063))))

(assert (=> b!1183187 false))

(declare-fun b!1183188 () Bool)

(declare-fun e!672736 () Bool)

(assert (=> b!1183188 (= e!672736 true)))

(declare-fun lt!535936 () ListLongMap!17283)

(declare-fun lt!535951 () ListLongMap!17283)

(declare-fun -!1645 (ListLongMap!17283 (_ BitVec 64)) ListLongMap!17283)

(assert (=> b!1183188 (= (-!1645 lt!535936 k!934) lt!535951)))

(declare-fun lt!535953 () Unit!39083)

(declare-fun lt!535948 () V!44885)

(declare-fun lt!535938 () ListLongMap!17283)

(declare-fun addRemoveCommutativeForDiffKeys!163 (ListLongMap!17283 (_ BitVec 64) V!44885 (_ BitVec 64)) Unit!39083)

(assert (=> b!1183188 (= lt!535953 (addRemoveCommutativeForDiffKeys!163 lt!535938 (select (arr!36850 _keys!1208) from!1455) lt!535948 k!934))))

(declare-fun lt!535945 () ListLongMap!17283)

(declare-fun lt!535940 () ListLongMap!17283)

(assert (=> b!1183188 (and (= lt!535939 lt!535936) (= lt!535940 lt!535945))))

(declare-fun lt!535937 () tuple2!19302)

(declare-fun +!3873 (ListLongMap!17283 tuple2!19302) ListLongMap!17283)

(assert (=> b!1183188 (= lt!535936 (+!3873 lt!535938 lt!535937))))

(assert (=> b!1183188 (not (= (select (arr!36850 _keys!1208) from!1455) k!934))))

(declare-fun lt!535942 () Unit!39083)

(assert (=> b!1183188 (= lt!535942 e!672734)))

(declare-fun c!117005 () Bool)

(assert (=> b!1183188 (= c!117005 (= (select (arr!36850 _keys!1208) from!1455) k!934))))

(declare-fun e!672737 () Bool)

(assert (=> b!1183188 e!672737))

(declare-fun res!786449 () Bool)

(assert (=> b!1183188 (=> (not res!786449) (not e!672737))))

(assert (=> b!1183188 (= res!786449 (= lt!535941 lt!535951))))

(assert (=> b!1183188 (= lt!535951 (+!3873 lt!535940 lt!535937))))

(assert (=> b!1183188 (= lt!535937 (tuple2!19303 (select (arr!36850 _keys!1208) from!1455) lt!535948))))

(declare-fun get!18891 (ValueCell!14200 V!44885) V!44885)

(assert (=> b!1183188 (= lt!535948 (get!18891 (select (arr!36849 _values!996) from!1455) lt!535944))))

(declare-fun b!1183189 () Bool)

(declare-fun res!786458 () Bool)

(assert (=> b!1183189 (=> (not res!786458) (not e!672740))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1183189 (= res!786458 (validKeyInArray!0 k!934))))

(declare-fun b!1183190 () Bool)

(assert (=> b!1183190 (= e!672745 (and e!672742 mapRes!46556))))

(declare-fun condMapEmpty!46556 () Bool)

(declare-fun mapDefault!46556 () ValueCell!14200)

