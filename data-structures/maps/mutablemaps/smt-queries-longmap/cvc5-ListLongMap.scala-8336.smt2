; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101506 () Bool)

(assert start!101506)

(declare-fun b_free!26287 () Bool)

(declare-fun b_next!26287 () Bool)

(assert (=> start!101506 (= b_free!26287 (not b_next!26287))))

(declare-fun tp!91895 () Bool)

(declare-fun b_and!43773 () Bool)

(assert (=> start!101506 (= tp!91895 b_and!43773)))

(declare-fun b!1219588 () Bool)

(declare-fun res!810146 () Bool)

(declare-fun e!692525 () Bool)

(assert (=> b!1219588 (=> (not res!810146) (not e!692525))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1219588 (= res!810146 (validMask!0 mask!1564))))

(declare-fun b!1219589 () Bool)

(declare-fun e!692523 () Bool)

(declare-fun e!692522 () Bool)

(assert (=> b!1219589 (= e!692523 (not e!692522))))

(declare-fun res!810153 () Bool)

(assert (=> b!1219589 (=> res!810153 e!692522)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1219589 (= res!810153 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!78734 0))(
  ( (array!78735 (arr!37994 (Array (_ BitVec 32) (_ BitVec 64))) (size!38531 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78734)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78734 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1219589 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40334 0))(
  ( (Unit!40335) )
))
(declare-fun lt!554504 () Unit!40334)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78734 (_ BitVec 64) (_ BitVec 32)) Unit!40334)

(assert (=> b!1219589 (= lt!554504 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1219590 () Bool)

(declare-fun res!810158 () Bool)

(assert (=> b!1219590 (=> (not res!810158) (not e!692525))))

(assert (=> b!1219590 (= res!810158 (= (select (arr!37994 _keys!1208) i!673) k!934))))

(declare-fun b!1219591 () Bool)

(declare-fun e!692526 () Bool)

(declare-fun tp_is_empty!30991 () Bool)

(assert (=> b!1219591 (= e!692526 tp_is_empty!30991)))

(declare-fun b!1219592 () Bool)

(declare-fun e!692524 () Bool)

(assert (=> b!1219592 (= e!692524 tp_is_empty!30991)))

(declare-fun b!1219594 () Bool)

(declare-fun e!692527 () Bool)

(declare-fun e!692531 () Bool)

(assert (=> b!1219594 (= e!692527 e!692531)))

(declare-fun res!810147 () Bool)

(assert (=> b!1219594 (=> res!810147 e!692531)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1219594 (= res!810147 (not (validKeyInArray!0 (select (arr!37994 _keys!1208) from!1455))))))

(declare-datatypes ((V!46449 0))(
  ( (V!46450 (val!15552 Int)) )
))
(declare-datatypes ((tuple2!20148 0))(
  ( (tuple2!20149 (_1!10084 (_ BitVec 64)) (_2!10084 V!46449)) )
))
(declare-datatypes ((List!26967 0))(
  ( (Nil!26964) (Cons!26963 (h!28172 tuple2!20148) (t!40241 List!26967)) )
))
(declare-datatypes ((ListLongMap!18129 0))(
  ( (ListLongMap!18130 (toList!9080 List!26967)) )
))
(declare-fun lt!554494 () ListLongMap!18129)

(declare-fun lt!554495 () ListLongMap!18129)

(assert (=> b!1219594 (= lt!554494 lt!554495)))

(declare-fun lt!554501 () ListLongMap!18129)

(declare-fun -!1933 (ListLongMap!18129 (_ BitVec 64)) ListLongMap!18129)

(assert (=> b!1219594 (= lt!554495 (-!1933 lt!554501 k!934))))

(declare-fun zeroValue!944 () V!46449)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46449)

(declare-fun lt!554503 () array!78734)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14786 0))(
  ( (ValueCellFull!14786 (v!18210 V!46449)) (EmptyCell!14786) )
))
(declare-datatypes ((array!78736 0))(
  ( (array!78737 (arr!37995 (Array (_ BitVec 32) ValueCell!14786)) (size!38532 (_ BitVec 32))) )
))
(declare-fun lt!554499 () array!78736)

(declare-fun getCurrentListMapNoExtraKeys!5480 (array!78734 array!78736 (_ BitVec 32) (_ BitVec 32) V!46449 V!46449 (_ BitVec 32) Int) ListLongMap!18129)

(assert (=> b!1219594 (= lt!554494 (getCurrentListMapNoExtraKeys!5480 lt!554503 lt!554499 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!78736)

(assert (=> b!1219594 (= lt!554501 (getCurrentListMapNoExtraKeys!5480 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!554497 () Unit!40334)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1135 (array!78734 array!78736 (_ BitVec 32) (_ BitVec 32) V!46449 V!46449 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40334)

(assert (=> b!1219594 (= lt!554497 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1135 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1219595 () Bool)

(declare-fun res!810151 () Bool)

(assert (=> b!1219595 (=> (not res!810151) (not e!692525))))

(assert (=> b!1219595 (= res!810151 (and (= (size!38532 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38531 _keys!1208) (size!38532 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1219596 () Bool)

(declare-fun res!810161 () Bool)

(assert (=> b!1219596 (=> (not res!810161) (not e!692525))))

(declare-datatypes ((List!26968 0))(
  ( (Nil!26965) (Cons!26964 (h!28173 (_ BitVec 64)) (t!40242 List!26968)) )
))
(declare-fun arrayNoDuplicates!0 (array!78734 (_ BitVec 32) List!26968) Bool)

(assert (=> b!1219596 (= res!810161 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26965))))

(declare-fun e!692521 () Bool)

(declare-fun b!1219597 () Bool)

(assert (=> b!1219597 (= e!692521 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1219598 () Bool)

(declare-fun e!692528 () Bool)

(declare-fun mapRes!48373 () Bool)

(assert (=> b!1219598 (= e!692528 (and e!692524 mapRes!48373))))

(declare-fun condMapEmpty!48373 () Bool)

(declare-fun mapDefault!48373 () ValueCell!14786)

