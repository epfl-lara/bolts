; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101246 () Bool)

(assert start!101246)

(declare-fun b_free!26133 () Bool)

(declare-fun b_next!26133 () Bool)

(assert (=> start!101246 (= b_free!26133 (not b_next!26133))))

(declare-fun tp!91421 () Bool)

(declare-fun b_and!43393 () Bool)

(assert (=> start!101246 (= tp!91421 b_and!43393)))

(declare-fun b!1215124 () Bool)

(declare-fun res!806875 () Bool)

(declare-fun e!690028 () Bool)

(assert (=> b!1215124 (=> (not res!806875) (not e!690028))))

(declare-datatypes ((array!78428 0))(
  ( (array!78429 (arr!37845 (Array (_ BitVec 32) (_ BitVec 64))) (size!38382 (_ BitVec 32))) )
))
(declare-fun lt!552488 () array!78428)

(declare-datatypes ((List!26849 0))(
  ( (Nil!26846) (Cons!26845 (h!28054 (_ BitVec 64)) (t!39969 List!26849)) )
))
(declare-fun arrayNoDuplicates!0 (array!78428 (_ BitVec 32) List!26849) Bool)

(assert (=> b!1215124 (= res!806875 (arrayNoDuplicates!0 lt!552488 #b00000000000000000000000000000000 Nil!26846))))

(declare-fun b!1215126 () Bool)

(declare-fun res!806870 () Bool)

(declare-fun e!690029 () Bool)

(assert (=> b!1215126 (=> (not res!806870) (not e!690029))))

(declare-fun _keys!1208 () array!78428)

(assert (=> b!1215126 (= res!806870 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26846))))

(declare-fun b!1215127 () Bool)

(declare-fun res!806869 () Bool)

(assert (=> b!1215127 (=> (not res!806869) (not e!690029))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1215127 (= res!806869 (validKeyInArray!0 k0!934))))

(declare-fun b!1215128 () Bool)

(declare-fun e!690030 () Bool)

(assert (=> b!1215128 (= e!690030 true)))

(declare-datatypes ((V!46243 0))(
  ( (V!46244 (val!15475 Int)) )
))
(declare-fun zeroValue!944 () V!46243)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14709 0))(
  ( (ValueCellFull!14709 (v!18129 V!46243)) (EmptyCell!14709) )
))
(declare-datatypes ((array!78430 0))(
  ( (array!78431 (arr!37846 (Array (_ BitVec 32) ValueCell!14709)) (size!38383 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78430)

(declare-datatypes ((tuple2!20032 0))(
  ( (tuple2!20033 (_1!10026 (_ BitVec 64)) (_2!10026 V!46243)) )
))
(declare-datatypes ((List!26850 0))(
  ( (Nil!26847) (Cons!26846 (h!28055 tuple2!20032) (t!39970 List!26850)) )
))
(declare-datatypes ((ListLongMap!18013 0))(
  ( (ListLongMap!18014 (toList!9022 List!26850)) )
))
(declare-fun lt!552491 () ListLongMap!18013)

(declare-fun minValue!944 () V!46243)

(declare-fun getCurrentListMapNoExtraKeys!5427 (array!78428 array!78430 (_ BitVec 32) (_ BitVec 32) V!46243 V!46243 (_ BitVec 32) Int) ListLongMap!18013)

(declare-fun dynLambda!3336 (Int (_ BitVec 64)) V!46243)

(assert (=> b!1215128 (= lt!552491 (getCurrentListMapNoExtraKeys!5427 lt!552488 (array!78431 (store (arr!37846 _values!996) i!673 (ValueCellFull!14709 (dynLambda!3336 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38383 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!552489 () ListLongMap!18013)

(assert (=> b!1215128 (= lt!552489 (getCurrentListMapNoExtraKeys!5427 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1215129 () Bool)

(declare-fun e!690025 () Bool)

(declare-fun e!690024 () Bool)

(declare-fun mapRes!48130 () Bool)

(assert (=> b!1215129 (= e!690025 (and e!690024 mapRes!48130))))

(declare-fun condMapEmpty!48130 () Bool)

(declare-fun mapDefault!48130 () ValueCell!14709)

(assert (=> b!1215129 (= condMapEmpty!48130 (= (arr!37846 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14709)) mapDefault!48130)))))

(declare-fun b!1215130 () Bool)

(declare-fun res!806866 () Bool)

(assert (=> b!1215130 (=> (not res!806866) (not e!690029))))

(assert (=> b!1215130 (= res!806866 (and (= (size!38383 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38382 _keys!1208) (size!38383 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1215131 () Bool)

(declare-fun res!806867 () Bool)

(assert (=> b!1215131 (=> (not res!806867) (not e!690029))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1215131 (= res!806867 (validMask!0 mask!1564))))

(declare-fun b!1215132 () Bool)

(declare-fun res!806865 () Bool)

(assert (=> b!1215132 (=> (not res!806865) (not e!690029))))

(assert (=> b!1215132 (= res!806865 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38382 _keys!1208))))))

(declare-fun b!1215133 () Bool)

(declare-fun e!690026 () Bool)

(declare-fun tp_is_empty!30837 () Bool)

(assert (=> b!1215133 (= e!690026 tp_is_empty!30837)))

(declare-fun b!1215134 () Bool)

(assert (=> b!1215134 (= e!690024 tp_is_empty!30837)))

(declare-fun mapIsEmpty!48130 () Bool)

(assert (=> mapIsEmpty!48130 mapRes!48130))

(declare-fun b!1215135 () Bool)

(declare-fun res!806872 () Bool)

(assert (=> b!1215135 (=> (not res!806872) (not e!690029))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78428 (_ BitVec 32)) Bool)

(assert (=> b!1215135 (= res!806872 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1215125 () Bool)

(assert (=> b!1215125 (= e!690028 (not e!690030))))

(declare-fun res!806873 () Bool)

(assert (=> b!1215125 (=> res!806873 e!690030)))

(assert (=> b!1215125 (= res!806873 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78428 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1215125 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40226 0))(
  ( (Unit!40227) )
))
(declare-fun lt!552490 () Unit!40226)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78428 (_ BitVec 64) (_ BitVec 32)) Unit!40226)

(assert (=> b!1215125 (= lt!552490 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun res!806868 () Bool)

(assert (=> start!101246 (=> (not res!806868) (not e!690029))))

(assert (=> start!101246 (= res!806868 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38382 _keys!1208))))))

(assert (=> start!101246 e!690029))

(assert (=> start!101246 tp_is_empty!30837))

(declare-fun array_inv!28718 (array!78428) Bool)

(assert (=> start!101246 (array_inv!28718 _keys!1208)))

(assert (=> start!101246 true))

(assert (=> start!101246 tp!91421))

(declare-fun array_inv!28719 (array!78430) Bool)

(assert (=> start!101246 (and (array_inv!28719 _values!996) e!690025)))

(declare-fun b!1215136 () Bool)

(assert (=> b!1215136 (= e!690029 e!690028)))

(declare-fun res!806874 () Bool)

(assert (=> b!1215136 (=> (not res!806874) (not e!690028))))

(assert (=> b!1215136 (= res!806874 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552488 mask!1564))))

(assert (=> b!1215136 (= lt!552488 (array!78429 (store (arr!37845 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38382 _keys!1208)))))

(declare-fun mapNonEmpty!48130 () Bool)

(declare-fun tp!91422 () Bool)

(assert (=> mapNonEmpty!48130 (= mapRes!48130 (and tp!91422 e!690026))))

(declare-fun mapRest!48130 () (Array (_ BitVec 32) ValueCell!14709))

(declare-fun mapValue!48130 () ValueCell!14709)

(declare-fun mapKey!48130 () (_ BitVec 32))

(assert (=> mapNonEmpty!48130 (= (arr!37846 _values!996) (store mapRest!48130 mapKey!48130 mapValue!48130))))

(declare-fun b!1215137 () Bool)

(declare-fun res!806871 () Bool)

(assert (=> b!1215137 (=> (not res!806871) (not e!690029))))

(assert (=> b!1215137 (= res!806871 (= (select (arr!37845 _keys!1208) i!673) k0!934))))

(assert (= (and start!101246 res!806868) b!1215131))

(assert (= (and b!1215131 res!806867) b!1215130))

(assert (= (and b!1215130 res!806866) b!1215135))

(assert (= (and b!1215135 res!806872) b!1215126))

(assert (= (and b!1215126 res!806870) b!1215132))

(assert (= (and b!1215132 res!806865) b!1215127))

(assert (= (and b!1215127 res!806869) b!1215137))

(assert (= (and b!1215137 res!806871) b!1215136))

(assert (= (and b!1215136 res!806874) b!1215124))

(assert (= (and b!1215124 res!806875) b!1215125))

(assert (= (and b!1215125 (not res!806873)) b!1215128))

(assert (= (and b!1215129 condMapEmpty!48130) mapIsEmpty!48130))

(assert (= (and b!1215129 (not condMapEmpty!48130)) mapNonEmpty!48130))

(get-info :version)

(assert (= (and mapNonEmpty!48130 ((_ is ValueCellFull!14709) mapValue!48130)) b!1215133))

(assert (= (and b!1215129 ((_ is ValueCellFull!14709) mapDefault!48130)) b!1215134))

(assert (= start!101246 b!1215129))

(declare-fun b_lambda!21819 () Bool)

(assert (=> (not b_lambda!21819) (not b!1215128)))

(declare-fun t!39968 () Bool)

(declare-fun tb!10941 () Bool)

(assert (=> (and start!101246 (= defaultEntry!1004 defaultEntry!1004) t!39968) tb!10941))

(declare-fun result!22471 () Bool)

(assert (=> tb!10941 (= result!22471 tp_is_empty!30837)))

(assert (=> b!1215128 t!39968))

(declare-fun b_and!43395 () Bool)

(assert (= b_and!43393 (and (=> t!39968 result!22471) b_and!43395)))

(declare-fun m!1120191 () Bool)

(assert (=> b!1215135 m!1120191))

(declare-fun m!1120193 () Bool)

(assert (=> b!1215127 m!1120193))

(declare-fun m!1120195 () Bool)

(assert (=> b!1215136 m!1120195))

(declare-fun m!1120197 () Bool)

(assert (=> b!1215136 m!1120197))

(declare-fun m!1120199 () Bool)

(assert (=> start!101246 m!1120199))

(declare-fun m!1120201 () Bool)

(assert (=> start!101246 m!1120201))

(declare-fun m!1120203 () Bool)

(assert (=> b!1215126 m!1120203))

(declare-fun m!1120205 () Bool)

(assert (=> b!1215124 m!1120205))

(declare-fun m!1120207 () Bool)

(assert (=> b!1215131 m!1120207))

(declare-fun m!1120209 () Bool)

(assert (=> b!1215125 m!1120209))

(declare-fun m!1120211 () Bool)

(assert (=> b!1215125 m!1120211))

(declare-fun m!1120213 () Bool)

(assert (=> b!1215137 m!1120213))

(declare-fun m!1120215 () Bool)

(assert (=> mapNonEmpty!48130 m!1120215))

(declare-fun m!1120217 () Bool)

(assert (=> b!1215128 m!1120217))

(declare-fun m!1120219 () Bool)

(assert (=> b!1215128 m!1120219))

(declare-fun m!1120221 () Bool)

(assert (=> b!1215128 m!1120221))

(declare-fun m!1120223 () Bool)

(assert (=> b!1215128 m!1120223))

(check-sat (not b!1215126) b_and!43395 (not b_next!26133) tp_is_empty!30837 (not b!1215125) (not b!1215135) (not b!1215124) (not mapNonEmpty!48130) (not b!1215128) (not start!101246) (not b!1215136) (not b!1215131) (not b_lambda!21819) (not b!1215127))
(check-sat b_and!43395 (not b_next!26133))
