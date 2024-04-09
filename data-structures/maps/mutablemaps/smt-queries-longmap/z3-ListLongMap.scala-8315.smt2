; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101276 () Bool)

(assert start!101276)

(declare-fun b_free!26163 () Bool)

(declare-fun b_next!26163 () Bool)

(assert (=> start!101276 (= b_free!26163 (not b_next!26163))))

(declare-fun tp!91512 () Bool)

(declare-fun b_and!43453 () Bool)

(assert (=> start!101276 (= tp!91512 b_and!43453)))

(declare-fun b!1215784 () Bool)

(declare-fun res!807369 () Bool)

(declare-fun e!690344 () Bool)

(assert (=> b!1215784 (=> (not res!807369) (not e!690344))))

(declare-datatypes ((array!78484 0))(
  ( (array!78485 (arr!37873 (Array (_ BitVec 32) (_ BitVec 64))) (size!38410 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78484)

(declare-datatypes ((List!26873 0))(
  ( (Nil!26870) (Cons!26869 (h!28078 (_ BitVec 64)) (t!40023 List!26873)) )
))
(declare-fun arrayNoDuplicates!0 (array!78484 (_ BitVec 32) List!26873) Bool)

(assert (=> b!1215784 (= res!807369 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26870))))

(declare-fun b!1215785 () Bool)

(declare-fun e!690342 () Bool)

(assert (=> b!1215785 (= e!690344 e!690342)))

(declare-fun res!807364 () Bool)

(assert (=> b!1215785 (=> (not res!807364) (not e!690342))))

(declare-fun lt!552670 () array!78484)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78484 (_ BitVec 32)) Bool)

(assert (=> b!1215785 (= res!807364 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552670 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1215785 (= lt!552670 (array!78485 (store (arr!37873 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38410 _keys!1208)))))

(declare-fun b!1215786 () Bool)

(declare-fun e!690345 () Bool)

(declare-fun tp_is_empty!30867 () Bool)

(assert (=> b!1215786 (= e!690345 tp_is_empty!30867)))

(declare-fun b!1215787 () Bool)

(declare-fun res!807362 () Bool)

(assert (=> b!1215787 (=> (not res!807362) (not e!690344))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1215787 (= res!807362 (validKeyInArray!0 k0!934))))

(declare-fun mapNonEmpty!48175 () Bool)

(declare-fun mapRes!48175 () Bool)

(declare-fun tp!91511 () Bool)

(declare-fun e!690340 () Bool)

(assert (=> mapNonEmpty!48175 (= mapRes!48175 (and tp!91511 e!690340))))

(declare-datatypes ((V!46283 0))(
  ( (V!46284 (val!15490 Int)) )
))
(declare-datatypes ((ValueCell!14724 0))(
  ( (ValueCellFull!14724 (v!18144 V!46283)) (EmptyCell!14724) )
))
(declare-fun mapRest!48175 () (Array (_ BitVec 32) ValueCell!14724))

(declare-fun mapValue!48175 () ValueCell!14724)

(declare-fun mapKey!48175 () (_ BitVec 32))

(declare-datatypes ((array!78486 0))(
  ( (array!78487 (arr!37874 (Array (_ BitVec 32) ValueCell!14724)) (size!38411 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78486)

(assert (=> mapNonEmpty!48175 (= (arr!37874 _values!996) (store mapRest!48175 mapKey!48175 mapValue!48175))))

(declare-fun b!1215788 () Bool)

(assert (=> b!1215788 (= e!690340 tp_is_empty!30867)))

(declare-fun res!807365 () Bool)

(assert (=> start!101276 (=> (not res!807365) (not e!690344))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!101276 (= res!807365 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38410 _keys!1208))))))

(assert (=> start!101276 e!690344))

(assert (=> start!101276 tp_is_empty!30867))

(declare-fun array_inv!28740 (array!78484) Bool)

(assert (=> start!101276 (array_inv!28740 _keys!1208)))

(assert (=> start!101276 true))

(assert (=> start!101276 tp!91512))

(declare-fun e!690341 () Bool)

(declare-fun array_inv!28741 (array!78486) Bool)

(assert (=> start!101276 (and (array_inv!28741 _values!996) e!690341)))

(declare-fun b!1215789 () Bool)

(assert (=> b!1215789 (= e!690341 (and e!690345 mapRes!48175))))

(declare-fun condMapEmpty!48175 () Bool)

(declare-fun mapDefault!48175 () ValueCell!14724)

(assert (=> b!1215789 (= condMapEmpty!48175 (= (arr!37874 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14724)) mapDefault!48175)))))

(declare-fun b!1215790 () Bool)

(declare-fun res!807367 () Bool)

(assert (=> b!1215790 (=> (not res!807367) (not e!690344))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1215790 (= res!807367 (and (= (size!38411 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38410 _keys!1208) (size!38411 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1215791 () Bool)

(declare-fun e!690343 () Bool)

(assert (=> b!1215791 (= e!690343 true)))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46283)

(declare-datatypes ((tuple2!20054 0))(
  ( (tuple2!20055 (_1!10037 (_ BitVec 64)) (_2!10037 V!46283)) )
))
(declare-datatypes ((List!26874 0))(
  ( (Nil!26871) (Cons!26870 (h!28079 tuple2!20054) (t!40024 List!26874)) )
))
(declare-datatypes ((ListLongMap!18035 0))(
  ( (ListLongMap!18036 (toList!9033 List!26874)) )
))
(declare-fun lt!552669 () ListLongMap!18035)

(declare-fun zeroValue!944 () V!46283)

(declare-fun getCurrentListMapNoExtraKeys!5438 (array!78484 array!78486 (_ BitVec 32) (_ BitVec 32) V!46283 V!46283 (_ BitVec 32) Int) ListLongMap!18035)

(declare-fun dynLambda!3347 (Int (_ BitVec 64)) V!46283)

(assert (=> b!1215791 (= lt!552669 (getCurrentListMapNoExtraKeys!5438 lt!552670 (array!78487 (store (arr!37874 _values!996) i!673 (ValueCellFull!14724 (dynLambda!3347 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38411 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!552668 () ListLongMap!18035)

(assert (=> b!1215791 (= lt!552668 (getCurrentListMapNoExtraKeys!5438 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1215792 () Bool)

(declare-fun res!807363 () Bool)

(assert (=> b!1215792 (=> (not res!807363) (not e!690344))))

(assert (=> b!1215792 (= res!807363 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1215793 () Bool)

(declare-fun res!807366 () Bool)

(assert (=> b!1215793 (=> (not res!807366) (not e!690344))))

(assert (=> b!1215793 (= res!807366 (= (select (arr!37873 _keys!1208) i!673) k0!934))))

(declare-fun b!1215794 () Bool)

(assert (=> b!1215794 (= e!690342 (not e!690343))))

(declare-fun res!807361 () Bool)

(assert (=> b!1215794 (=> res!807361 e!690343)))

(assert (=> b!1215794 (= res!807361 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78484 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1215794 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40248 0))(
  ( (Unit!40249) )
))
(declare-fun lt!552671 () Unit!40248)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78484 (_ BitVec 64) (_ BitVec 32)) Unit!40248)

(assert (=> b!1215794 (= lt!552671 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1215795 () Bool)

(declare-fun res!807360 () Bool)

(assert (=> b!1215795 (=> (not res!807360) (not e!690344))))

(assert (=> b!1215795 (= res!807360 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38410 _keys!1208))))))

(declare-fun b!1215796 () Bool)

(declare-fun res!807368 () Bool)

(assert (=> b!1215796 (=> (not res!807368) (not e!690342))))

(assert (=> b!1215796 (= res!807368 (arrayNoDuplicates!0 lt!552670 #b00000000000000000000000000000000 Nil!26870))))

(declare-fun mapIsEmpty!48175 () Bool)

(assert (=> mapIsEmpty!48175 mapRes!48175))

(declare-fun b!1215797 () Bool)

(declare-fun res!807370 () Bool)

(assert (=> b!1215797 (=> (not res!807370) (not e!690344))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1215797 (= res!807370 (validMask!0 mask!1564))))

(assert (= (and start!101276 res!807365) b!1215797))

(assert (= (and b!1215797 res!807370) b!1215790))

(assert (= (and b!1215790 res!807367) b!1215792))

(assert (= (and b!1215792 res!807363) b!1215784))

(assert (= (and b!1215784 res!807369) b!1215795))

(assert (= (and b!1215795 res!807360) b!1215787))

(assert (= (and b!1215787 res!807362) b!1215793))

(assert (= (and b!1215793 res!807366) b!1215785))

(assert (= (and b!1215785 res!807364) b!1215796))

(assert (= (and b!1215796 res!807368) b!1215794))

(assert (= (and b!1215794 (not res!807361)) b!1215791))

(assert (= (and b!1215789 condMapEmpty!48175) mapIsEmpty!48175))

(assert (= (and b!1215789 (not condMapEmpty!48175)) mapNonEmpty!48175))

(get-info :version)

(assert (= (and mapNonEmpty!48175 ((_ is ValueCellFull!14724) mapValue!48175)) b!1215788))

(assert (= (and b!1215789 ((_ is ValueCellFull!14724) mapDefault!48175)) b!1215786))

(assert (= start!101276 b!1215789))

(declare-fun b_lambda!21849 () Bool)

(assert (=> (not b_lambda!21849) (not b!1215791)))

(declare-fun t!40022 () Bool)

(declare-fun tb!10971 () Bool)

(assert (=> (and start!101276 (= defaultEntry!1004 defaultEntry!1004) t!40022) tb!10971))

(declare-fun result!22531 () Bool)

(assert (=> tb!10971 (= result!22531 tp_is_empty!30867)))

(assert (=> b!1215791 t!40022))

(declare-fun b_and!43455 () Bool)

(assert (= b_and!43453 (and (=> t!40022 result!22531) b_and!43455)))

(declare-fun m!1120701 () Bool)

(assert (=> b!1215793 m!1120701))

(declare-fun m!1120703 () Bool)

(assert (=> b!1215792 m!1120703))

(declare-fun m!1120705 () Bool)

(assert (=> b!1215785 m!1120705))

(declare-fun m!1120707 () Bool)

(assert (=> b!1215785 m!1120707))

(declare-fun m!1120709 () Bool)

(assert (=> b!1215796 m!1120709))

(declare-fun m!1120711 () Bool)

(assert (=> b!1215791 m!1120711))

(declare-fun m!1120713 () Bool)

(assert (=> b!1215791 m!1120713))

(declare-fun m!1120715 () Bool)

(assert (=> b!1215791 m!1120715))

(declare-fun m!1120717 () Bool)

(assert (=> b!1215791 m!1120717))

(declare-fun m!1120719 () Bool)

(assert (=> b!1215787 m!1120719))

(declare-fun m!1120721 () Bool)

(assert (=> start!101276 m!1120721))

(declare-fun m!1120723 () Bool)

(assert (=> start!101276 m!1120723))

(declare-fun m!1120725 () Bool)

(assert (=> b!1215794 m!1120725))

(declare-fun m!1120727 () Bool)

(assert (=> b!1215794 m!1120727))

(declare-fun m!1120729 () Bool)

(assert (=> mapNonEmpty!48175 m!1120729))

(declare-fun m!1120731 () Bool)

(assert (=> b!1215784 m!1120731))

(declare-fun m!1120733 () Bool)

(assert (=> b!1215797 m!1120733))

(check-sat (not b!1215794) (not b!1215792) b_and!43455 (not mapNonEmpty!48175) (not b!1215796) (not b_next!26163) (not b!1215785) (not b!1215787) (not b!1215797) (not start!101276) tp_is_empty!30867 (not b!1215791) (not b!1215784) (not b_lambda!21849))
(check-sat b_and!43455 (not b_next!26163))
