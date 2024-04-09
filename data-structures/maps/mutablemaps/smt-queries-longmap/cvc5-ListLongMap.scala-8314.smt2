; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101268 () Bool)

(assert start!101268)

(declare-fun b_free!26155 () Bool)

(declare-fun b_next!26155 () Bool)

(assert (=> start!101268 (= b_free!26155 (not b_next!26155))))

(declare-fun tp!91488 () Bool)

(declare-fun b_and!43437 () Bool)

(assert (=> start!101268 (= tp!91488 b_and!43437)))

(declare-fun b!1215609 () Bool)

(declare-fun e!690258 () Bool)

(declare-fun e!690259 () Bool)

(assert (=> b!1215609 (= e!690258 e!690259)))

(declare-fun res!807236 () Bool)

(assert (=> b!1215609 (=> (not res!807236) (not e!690259))))

(declare-datatypes ((array!78470 0))(
  ( (array!78471 (arr!37866 (Array (_ BitVec 32) (_ BitVec 64))) (size!38403 (_ BitVec 32))) )
))
(declare-fun lt!552623 () array!78470)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78470 (_ BitVec 32)) Bool)

(assert (=> b!1215609 (= res!807236 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552623 mask!1564))))

(declare-fun _keys!1208 () array!78470)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1215609 (= lt!552623 (array!78471 (store (arr!37866 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38403 _keys!1208)))))

(declare-fun mapNonEmpty!48163 () Bool)

(declare-fun mapRes!48163 () Bool)

(declare-fun tp!91487 () Bool)

(declare-fun e!690261 () Bool)

(assert (=> mapNonEmpty!48163 (= mapRes!48163 (and tp!91487 e!690261))))

(declare-datatypes ((V!46273 0))(
  ( (V!46274 (val!15486 Int)) )
))
(declare-datatypes ((ValueCell!14720 0))(
  ( (ValueCellFull!14720 (v!18140 V!46273)) (EmptyCell!14720) )
))
(declare-fun mapRest!48163 () (Array (_ BitVec 32) ValueCell!14720))

(declare-fun mapKey!48163 () (_ BitVec 32))

(declare-fun mapValue!48163 () ValueCell!14720)

(declare-datatypes ((array!78472 0))(
  ( (array!78473 (arr!37867 (Array (_ BitVec 32) ValueCell!14720)) (size!38404 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78472)

(assert (=> mapNonEmpty!48163 (= (arr!37867 _values!996) (store mapRest!48163 mapKey!48163 mapValue!48163))))

(declare-fun b!1215610 () Bool)

(declare-fun res!807234 () Bool)

(assert (=> b!1215610 (=> (not res!807234) (not e!690258))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1215610 (= res!807234 (validMask!0 mask!1564))))

(declare-fun b!1215611 () Bool)

(declare-fun res!807231 () Bool)

(assert (=> b!1215611 (=> (not res!807231) (not e!690258))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1215611 (= res!807231 (= (select (arr!37866 _keys!1208) i!673) k!934))))

(declare-fun b!1215612 () Bool)

(declare-fun res!807229 () Bool)

(assert (=> b!1215612 (=> (not res!807229) (not e!690259))))

(declare-datatypes ((List!26867 0))(
  ( (Nil!26864) (Cons!26863 (h!28072 (_ BitVec 64)) (t!40009 List!26867)) )
))
(declare-fun arrayNoDuplicates!0 (array!78470 (_ BitVec 32) List!26867) Bool)

(assert (=> b!1215612 (= res!807229 (arrayNoDuplicates!0 lt!552623 #b00000000000000000000000000000000 Nil!26864))))

(declare-fun b!1215613 () Bool)

(declare-fun res!807230 () Bool)

(assert (=> b!1215613 (=> (not res!807230) (not e!690258))))

(assert (=> b!1215613 (= res!807230 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26864))))

(declare-fun b!1215614 () Bool)

(declare-fun res!807232 () Bool)

(assert (=> b!1215614 (=> (not res!807232) (not e!690258))))

(assert (=> b!1215614 (= res!807232 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38403 _keys!1208))))))

(declare-fun mapIsEmpty!48163 () Bool)

(assert (=> mapIsEmpty!48163 mapRes!48163))

(declare-fun b!1215615 () Bool)

(declare-fun res!807228 () Bool)

(assert (=> b!1215615 (=> (not res!807228) (not e!690258))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1215615 (= res!807228 (validKeyInArray!0 k!934))))

(declare-fun b!1215616 () Bool)

(declare-fun res!807235 () Bool)

(assert (=> b!1215616 (=> (not res!807235) (not e!690258))))

(assert (=> b!1215616 (= res!807235 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1215617 () Bool)

(declare-fun e!690260 () Bool)

(assert (=> b!1215617 (= e!690259 (not e!690260))))

(declare-fun res!807233 () Bool)

(assert (=> b!1215617 (=> res!807233 e!690260)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1215617 (= res!807233 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78470 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1215617 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40244 0))(
  ( (Unit!40245) )
))
(declare-fun lt!552620 () Unit!40244)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78470 (_ BitVec 64) (_ BitVec 32)) Unit!40244)

(assert (=> b!1215617 (= lt!552620 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1215618 () Bool)

(assert (=> b!1215618 (= e!690260 true)))

(declare-fun zeroValue!944 () V!46273)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46273)

(declare-datatypes ((tuple2!20048 0))(
  ( (tuple2!20049 (_1!10034 (_ BitVec 64)) (_2!10034 V!46273)) )
))
(declare-datatypes ((List!26868 0))(
  ( (Nil!26865) (Cons!26864 (h!28073 tuple2!20048) (t!40010 List!26868)) )
))
(declare-datatypes ((ListLongMap!18029 0))(
  ( (ListLongMap!18030 (toList!9030 List!26868)) )
))
(declare-fun lt!552622 () ListLongMap!18029)

(declare-fun getCurrentListMapNoExtraKeys!5435 (array!78470 array!78472 (_ BitVec 32) (_ BitVec 32) V!46273 V!46273 (_ BitVec 32) Int) ListLongMap!18029)

(declare-fun dynLambda!3344 (Int (_ BitVec 64)) V!46273)

(assert (=> b!1215618 (= lt!552622 (getCurrentListMapNoExtraKeys!5435 lt!552623 (array!78473 (store (arr!37867 _values!996) i!673 (ValueCellFull!14720 (dynLambda!3344 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38404 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!552621 () ListLongMap!18029)

(assert (=> b!1215618 (= lt!552621 (getCurrentListMapNoExtraKeys!5435 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1215619 () Bool)

(declare-fun e!690256 () Bool)

(declare-fun e!690255 () Bool)

(assert (=> b!1215619 (= e!690256 (and e!690255 mapRes!48163))))

(declare-fun condMapEmpty!48163 () Bool)

(declare-fun mapDefault!48163 () ValueCell!14720)

