; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101256 () Bool)

(assert start!101256)

(declare-fun b_free!26143 () Bool)

(declare-fun b_next!26143 () Bool)

(assert (=> start!101256 (= b_free!26143 (not b_next!26143))))

(declare-fun tp!91451 () Bool)

(declare-fun b_and!43413 () Bool)

(assert (=> start!101256 (= tp!91451 b_and!43413)))

(declare-fun b!1215344 () Bool)

(declare-fun res!807030 () Bool)

(declare-fun e!690134 () Bool)

(assert (=> b!1215344 (=> (not res!807030) (not e!690134))))

(declare-datatypes ((array!78448 0))(
  ( (array!78449 (arr!37855 (Array (_ BitVec 32) (_ BitVec 64))) (size!38392 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78448)

(declare-datatypes ((List!26857 0))(
  ( (Nil!26854) (Cons!26853 (h!28062 (_ BitVec 64)) (t!39987 List!26857)) )
))
(declare-fun arrayNoDuplicates!0 (array!78448 (_ BitVec 32) List!26857) Bool)

(assert (=> b!1215344 (= res!807030 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26854))))

(declare-fun b!1215345 () Bool)

(declare-fun e!690131 () Bool)

(assert (=> b!1215345 (= e!690131 true)))

(declare-datatypes ((V!46257 0))(
  ( (V!46258 (val!15480 Int)) )
))
(declare-fun zeroValue!944 () V!46257)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!552548 () array!78448)

(declare-datatypes ((ValueCell!14714 0))(
  ( (ValueCellFull!14714 (v!18134 V!46257)) (EmptyCell!14714) )
))
(declare-datatypes ((array!78450 0))(
  ( (array!78451 (arr!37856 (Array (_ BitVec 32) ValueCell!14714)) (size!38393 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78450)

(declare-fun minValue!944 () V!46257)

(declare-datatypes ((tuple2!20038 0))(
  ( (tuple2!20039 (_1!10029 (_ BitVec 64)) (_2!10029 V!46257)) )
))
(declare-datatypes ((List!26858 0))(
  ( (Nil!26855) (Cons!26854 (h!28063 tuple2!20038) (t!39988 List!26858)) )
))
(declare-datatypes ((ListLongMap!18019 0))(
  ( (ListLongMap!18020 (toList!9025 List!26858)) )
))
(declare-fun lt!552551 () ListLongMap!18019)

(declare-fun getCurrentListMapNoExtraKeys!5430 (array!78448 array!78450 (_ BitVec 32) (_ BitVec 32) V!46257 V!46257 (_ BitVec 32) Int) ListLongMap!18019)

(declare-fun dynLambda!3339 (Int (_ BitVec 64)) V!46257)

(assert (=> b!1215345 (= lt!552551 (getCurrentListMapNoExtraKeys!5430 lt!552548 (array!78451 (store (arr!37856 _values!996) i!673 (ValueCellFull!14714 (dynLambda!3339 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38393 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!552549 () ListLongMap!18019)

(assert (=> b!1215345 (= lt!552549 (getCurrentListMapNoExtraKeys!5430 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1215346 () Bool)

(declare-fun e!690133 () Bool)

(assert (=> b!1215346 (= e!690134 e!690133)))

(declare-fun res!807036 () Bool)

(assert (=> b!1215346 (=> (not res!807036) (not e!690133))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78448 (_ BitVec 32)) Bool)

(assert (=> b!1215346 (= res!807036 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552548 mask!1564))))

(assert (=> b!1215346 (= lt!552548 (array!78449 (store (arr!37855 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38392 _keys!1208)))))

(declare-fun b!1215347 () Bool)

(declare-fun res!807033 () Bool)

(assert (=> b!1215347 (=> (not res!807033) (not e!690134))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1215347 (= res!807033 (= (select (arr!37855 _keys!1208) i!673) k!934))))

(declare-fun b!1215348 () Bool)

(declare-fun res!807032 () Bool)

(assert (=> b!1215348 (=> (not res!807032) (not e!690134))))

(assert (=> b!1215348 (= res!807032 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38392 _keys!1208))))))

(declare-fun b!1215349 () Bool)

(declare-fun res!807035 () Bool)

(assert (=> b!1215349 (=> (not res!807035) (not e!690134))))

(assert (=> b!1215349 (= res!807035 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!48145 () Bool)

(declare-fun mapRes!48145 () Bool)

(declare-fun tp!91452 () Bool)

(declare-fun e!690132 () Bool)

(assert (=> mapNonEmpty!48145 (= mapRes!48145 (and tp!91452 e!690132))))

(declare-fun mapValue!48145 () ValueCell!14714)

(declare-fun mapKey!48145 () (_ BitVec 32))

(declare-fun mapRest!48145 () (Array (_ BitVec 32) ValueCell!14714))

(assert (=> mapNonEmpty!48145 (= (arr!37856 _values!996) (store mapRest!48145 mapKey!48145 mapValue!48145))))

(declare-fun b!1215350 () Bool)

(assert (=> b!1215350 (= e!690133 (not e!690131))))

(declare-fun res!807038 () Bool)

(assert (=> b!1215350 (=> res!807038 e!690131)))

(assert (=> b!1215350 (= res!807038 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78448 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1215350 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40234 0))(
  ( (Unit!40235) )
))
(declare-fun lt!552550 () Unit!40234)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78448 (_ BitVec 64) (_ BitVec 32)) Unit!40234)

(assert (=> b!1215350 (= lt!552550 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1215351 () Bool)

(declare-fun res!807037 () Bool)

(assert (=> b!1215351 (=> (not res!807037) (not e!690133))))

(assert (=> b!1215351 (= res!807037 (arrayNoDuplicates!0 lt!552548 #b00000000000000000000000000000000 Nil!26854))))

(declare-fun b!1215352 () Bool)

(declare-fun res!807031 () Bool)

(assert (=> b!1215352 (=> (not res!807031) (not e!690134))))

(assert (=> b!1215352 (= res!807031 (and (= (size!38393 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38392 _keys!1208) (size!38393 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!807040 () Bool)

(assert (=> start!101256 (=> (not res!807040) (not e!690134))))

(assert (=> start!101256 (= res!807040 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38392 _keys!1208))))))

(assert (=> start!101256 e!690134))

(declare-fun tp_is_empty!30847 () Bool)

(assert (=> start!101256 tp_is_empty!30847))

(declare-fun array_inv!28728 (array!78448) Bool)

(assert (=> start!101256 (array_inv!28728 _keys!1208)))

(assert (=> start!101256 true))

(assert (=> start!101256 tp!91451))

(declare-fun e!690135 () Bool)

(declare-fun array_inv!28729 (array!78450) Bool)

(assert (=> start!101256 (and (array_inv!28729 _values!996) e!690135)))

(declare-fun b!1215353 () Bool)

(declare-fun res!807034 () Bool)

(assert (=> b!1215353 (=> (not res!807034) (not e!690134))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1215353 (= res!807034 (validKeyInArray!0 k!934))))

(declare-fun b!1215354 () Bool)

(declare-fun e!690130 () Bool)

(assert (=> b!1215354 (= e!690130 tp_is_empty!30847)))

(declare-fun mapIsEmpty!48145 () Bool)

(assert (=> mapIsEmpty!48145 mapRes!48145))

(declare-fun b!1215355 () Bool)

(declare-fun res!807039 () Bool)

(assert (=> b!1215355 (=> (not res!807039) (not e!690134))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1215355 (= res!807039 (validMask!0 mask!1564))))

(declare-fun b!1215356 () Bool)

(assert (=> b!1215356 (= e!690135 (and e!690130 mapRes!48145))))

(declare-fun condMapEmpty!48145 () Bool)

(declare-fun mapDefault!48145 () ValueCell!14714)

