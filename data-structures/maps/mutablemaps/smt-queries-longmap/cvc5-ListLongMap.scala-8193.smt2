; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100060 () Bool)

(assert start!100060)

(declare-fun b_free!25603 () Bool)

(declare-fun b_next!25603 () Bool)

(assert (=> start!100060 (= b_free!25603 (not b_next!25603))))

(declare-fun tp!89524 () Bool)

(declare-fun b_and!42087 () Bool)

(assert (=> start!100060 (= tp!89524 b_and!42087)))

(declare-fun mapNonEmpty!47027 () Bool)

(declare-fun mapRes!47027 () Bool)

(declare-fun tp!89523 () Bool)

(declare-fun e!677485 () Bool)

(assert (=> mapNonEmpty!47027 (= mapRes!47027 (and tp!89523 e!677485))))

(declare-datatypes ((V!45305 0))(
  ( (V!45306 (val!15123 Int)) )
))
(declare-datatypes ((ValueCell!14357 0))(
  ( (ValueCellFull!14357 (v!17762 V!45305)) (EmptyCell!14357) )
))
(declare-fun mapRest!47027 () (Array (_ BitVec 32) ValueCell!14357))

(declare-fun mapKey!47027 () (_ BitVec 32))

(declare-fun mapValue!47027 () ValueCell!14357)

(declare-datatypes ((array!77030 0))(
  ( (array!77031 (arr!37161 (Array (_ BitVec 32) ValueCell!14357)) (size!37698 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77030)

(assert (=> mapNonEmpty!47027 (= (arr!37161 _values!996) (store mapRest!47027 mapKey!47027 mapValue!47027))))

(declare-fun b!1191780 () Bool)

(declare-fun res!792836 () Bool)

(declare-fun e!677479 () Bool)

(assert (=> b!1191780 (=> (not res!792836) (not e!677479))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1191780 (= res!792836 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!47027 () Bool)

(assert (=> mapIsEmpty!47027 mapRes!47027))

(declare-fun b!1191781 () Bool)

(declare-fun e!677478 () Bool)

(assert (=> b!1191781 (= e!677479 e!677478)))

(declare-fun res!792839 () Bool)

(assert (=> b!1191781 (=> (not res!792839) (not e!677478))))

(declare-datatypes ((array!77032 0))(
  ( (array!77033 (arr!37162 (Array (_ BitVec 32) (_ BitVec 64))) (size!37699 (_ BitVec 32))) )
))
(declare-fun lt!541934 () array!77032)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77032 (_ BitVec 32)) Bool)

(assert (=> b!1191781 (= res!792839 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541934 mask!1564))))

(declare-fun _keys!1208 () array!77032)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1191781 (= lt!541934 (array!77033 (store (arr!37162 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37699 _keys!1208)))))

(declare-fun b!1191782 () Bool)

(declare-fun res!792834 () Bool)

(assert (=> b!1191782 (=> (not res!792834) (not e!677479))))

(assert (=> b!1191782 (= res!792834 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37699 _keys!1208))))))

(declare-fun b!1191783 () Bool)

(declare-fun e!677483 () Bool)

(assert (=> b!1191783 (= e!677483 true)))

(declare-fun zeroValue!944 () V!45305)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!541937 () array!77030)

(declare-fun minValue!944 () V!45305)

(declare-datatypes ((tuple2!19576 0))(
  ( (tuple2!19577 (_1!9798 (_ BitVec 64)) (_2!9798 V!45305)) )
))
(declare-datatypes ((List!26338 0))(
  ( (Nil!26335) (Cons!26334 (h!27543 tuple2!19576) (t!38940 List!26338)) )
))
(declare-datatypes ((ListLongMap!17557 0))(
  ( (ListLongMap!17558 (toList!8794 List!26338)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5208 (array!77032 array!77030 (_ BitVec 32) (_ BitVec 32) V!45305 V!45305 (_ BitVec 32) Int) ListLongMap!17557)

(declare-fun -!1773 (ListLongMap!17557 (_ BitVec 64)) ListLongMap!17557)

(assert (=> b!1191783 (= (getCurrentListMapNoExtraKeys!5208 lt!541934 lt!541937 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1773 (getCurrentListMapNoExtraKeys!5208 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-datatypes ((Unit!39480 0))(
  ( (Unit!39481) )
))
(declare-fun lt!541938 () Unit!39480)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!979 (array!77032 array!77030 (_ BitVec 32) (_ BitVec 32) V!45305 V!45305 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39480)

(assert (=> b!1191783 (= lt!541938 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!979 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1191784 () Bool)

(declare-fun tp_is_empty!30133 () Bool)

(assert (=> b!1191784 (= e!677485 tp_is_empty!30133)))

(declare-fun b!1191785 () Bool)

(declare-fun res!792838 () Bool)

(assert (=> b!1191785 (=> (not res!792838) (not e!677479))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1191785 (= res!792838 (validKeyInArray!0 k!934))))

(declare-fun res!792837 () Bool)

(assert (=> start!100060 (=> (not res!792837) (not e!677479))))

(assert (=> start!100060 (= res!792837 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37699 _keys!1208))))))

(assert (=> start!100060 e!677479))

(assert (=> start!100060 tp_is_empty!30133))

(declare-fun array_inv!28238 (array!77032) Bool)

(assert (=> start!100060 (array_inv!28238 _keys!1208)))

(assert (=> start!100060 true))

(assert (=> start!100060 tp!89524))

(declare-fun e!677482 () Bool)

(declare-fun array_inv!28239 (array!77030) Bool)

(assert (=> start!100060 (and (array_inv!28239 _values!996) e!677482)))

(declare-fun b!1191786 () Bool)

(declare-fun res!792844 () Bool)

(assert (=> b!1191786 (=> (not res!792844) (not e!677479))))

(declare-datatypes ((List!26339 0))(
  ( (Nil!26336) (Cons!26335 (h!27544 (_ BitVec 64)) (t!38941 List!26339)) )
))
(declare-fun arrayNoDuplicates!0 (array!77032 (_ BitVec 32) List!26339) Bool)

(assert (=> b!1191786 (= res!792844 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26336))))

(declare-fun b!1191787 () Bool)

(declare-fun res!792840 () Bool)

(assert (=> b!1191787 (=> (not res!792840) (not e!677479))))

(assert (=> b!1191787 (= res!792840 (and (= (size!37698 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37699 _keys!1208) (size!37698 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1191788 () Bool)

(declare-fun res!792842 () Bool)

(assert (=> b!1191788 (=> (not res!792842) (not e!677479))))

(assert (=> b!1191788 (= res!792842 (= (select (arr!37162 _keys!1208) i!673) k!934))))

(declare-fun b!1191789 () Bool)

(declare-fun res!792843 () Bool)

(assert (=> b!1191789 (=> (not res!792843) (not e!677478))))

(assert (=> b!1191789 (= res!792843 (arrayNoDuplicates!0 lt!541934 #b00000000000000000000000000000000 Nil!26336))))

(declare-fun b!1191790 () Bool)

(declare-fun e!677481 () Bool)

(assert (=> b!1191790 (= e!677482 (and e!677481 mapRes!47027))))

(declare-fun condMapEmpty!47027 () Bool)

(declare-fun mapDefault!47027 () ValueCell!14357)

