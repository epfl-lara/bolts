; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100066 () Bool)

(assert start!100066)

(declare-fun b_free!25609 () Bool)

(declare-fun b_next!25609 () Bool)

(assert (=> start!100066 (= b_free!25609 (not b_next!25609))))

(declare-fun tp!89541 () Bool)

(declare-fun b_and!42099 () Bool)

(assert (=> start!100066 (= tp!89541 b_and!42099)))

(declare-fun b!1191921 () Bool)

(declare-fun res!792949 () Bool)

(declare-fun e!677555 () Bool)

(assert (=> b!1191921 (=> (not res!792949) (not e!677555))))

(declare-datatypes ((array!77042 0))(
  ( (array!77043 (arr!37167 (Array (_ BitVec 32) (_ BitVec 64))) (size!37704 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77042)

(declare-datatypes ((List!26343 0))(
  ( (Nil!26340) (Cons!26339 (h!27548 (_ BitVec 64)) (t!38951 List!26343)) )
))
(declare-fun arrayNoDuplicates!0 (array!77042 (_ BitVec 32) List!26343) Bool)

(assert (=> b!1191921 (= res!792949 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26340))))

(declare-fun b!1191922 () Bool)

(declare-fun res!792951 () Bool)

(assert (=> b!1191922 (=> (not res!792951) (not e!677555))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1191922 (= res!792951 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37704 _keys!1208))))))

(declare-fun mapIsEmpty!47036 () Bool)

(declare-fun mapRes!47036 () Bool)

(assert (=> mapIsEmpty!47036 mapRes!47036))

(declare-fun res!792944 () Bool)

(assert (=> start!100066 (=> (not res!792944) (not e!677555))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100066 (= res!792944 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37704 _keys!1208))))))

(assert (=> start!100066 e!677555))

(declare-fun tp_is_empty!30139 () Bool)

(assert (=> start!100066 tp_is_empty!30139))

(declare-fun array_inv!28242 (array!77042) Bool)

(assert (=> start!100066 (array_inv!28242 _keys!1208)))

(assert (=> start!100066 true))

(assert (=> start!100066 tp!89541))

(declare-datatypes ((V!45313 0))(
  ( (V!45314 (val!15126 Int)) )
))
(declare-datatypes ((ValueCell!14360 0))(
  ( (ValueCellFull!14360 (v!17765 V!45313)) (EmptyCell!14360) )
))
(declare-datatypes ((array!77044 0))(
  ( (array!77045 (arr!37168 (Array (_ BitVec 32) ValueCell!14360)) (size!37705 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77044)

(declare-fun e!677556 () Bool)

(declare-fun array_inv!28243 (array!77044) Bool)

(assert (=> start!100066 (and (array_inv!28243 _values!996) e!677556)))

(declare-fun b!1191923 () Bool)

(declare-fun e!677553 () Bool)

(assert (=> b!1191923 (= e!677553 true)))

(declare-fun zeroValue!944 () V!45313)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!541989 () array!77042)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun minValue!944 () V!45313)

(declare-fun lt!541987 () array!77044)

(declare-datatypes ((tuple2!19580 0))(
  ( (tuple2!19581 (_1!9800 (_ BitVec 64)) (_2!9800 V!45313)) )
))
(declare-datatypes ((List!26344 0))(
  ( (Nil!26341) (Cons!26340 (h!27549 tuple2!19580) (t!38952 List!26344)) )
))
(declare-datatypes ((ListLongMap!17561 0))(
  ( (ListLongMap!17562 (toList!8796 List!26344)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5210 (array!77042 array!77044 (_ BitVec 32) (_ BitVec 32) V!45313 V!45313 (_ BitVec 32) Int) ListLongMap!17561)

(declare-fun -!1775 (ListLongMap!17561 (_ BitVec 64)) ListLongMap!17561)

(assert (=> b!1191923 (= (getCurrentListMapNoExtraKeys!5210 lt!541989 lt!541987 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1775 (getCurrentListMapNoExtraKeys!5210 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-datatypes ((Unit!39484 0))(
  ( (Unit!39485) )
))
(declare-fun lt!541988 () Unit!39484)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!981 (array!77042 array!77044 (_ BitVec 32) (_ BitVec 32) V!45313 V!45313 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39484)

(assert (=> b!1191923 (= lt!541988 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!981 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1191924 () Bool)

(declare-fun e!677557 () Bool)

(assert (=> b!1191924 (= e!677557 tp_is_empty!30139)))

(declare-fun b!1191925 () Bool)

(declare-fun res!792942 () Bool)

(assert (=> b!1191925 (=> (not res!792942) (not e!677555))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1191925 (= res!792942 (validMask!0 mask!1564))))

(declare-fun b!1191926 () Bool)

(declare-fun res!792948 () Bool)

(assert (=> b!1191926 (=> (not res!792948) (not e!677555))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77042 (_ BitVec 32)) Bool)

(assert (=> b!1191926 (= res!792948 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1191927 () Bool)

(declare-fun res!792950 () Bool)

(assert (=> b!1191927 (=> (not res!792950) (not e!677555))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1191927 (= res!792950 (validKeyInArray!0 k!934))))

(declare-fun b!1191928 () Bool)

(declare-fun res!792945 () Bool)

(declare-fun e!677550 () Bool)

(assert (=> b!1191928 (=> (not res!792945) (not e!677550))))

(assert (=> b!1191928 (= res!792945 (arrayNoDuplicates!0 lt!541989 #b00000000000000000000000000000000 Nil!26340))))

(declare-fun b!1191929 () Bool)

(declare-fun res!792941 () Bool)

(assert (=> b!1191929 (=> (not res!792941) (not e!677555))))

(assert (=> b!1191929 (= res!792941 (= (select (arr!37167 _keys!1208) i!673) k!934))))

(declare-fun b!1191930 () Bool)

(declare-fun res!792943 () Bool)

(assert (=> b!1191930 (=> (not res!792943) (not e!677555))))

(assert (=> b!1191930 (= res!792943 (and (= (size!37705 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37704 _keys!1208) (size!37705 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1191931 () Bool)

(declare-fun e!677551 () Bool)

(assert (=> b!1191931 (= e!677551 e!677553)))

(declare-fun res!792952 () Bool)

(assert (=> b!1191931 (=> res!792952 e!677553)))

(assert (=> b!1191931 (= res!792952 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!541990 () ListLongMap!17561)

(assert (=> b!1191931 (= lt!541990 (getCurrentListMapNoExtraKeys!5210 lt!541989 lt!541987 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3153 (Int (_ BitVec 64)) V!45313)

(assert (=> b!1191931 (= lt!541987 (array!77045 (store (arr!37168 _values!996) i!673 (ValueCellFull!14360 (dynLambda!3153 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37705 _values!996)))))

(declare-fun lt!541992 () ListLongMap!17561)

(assert (=> b!1191931 (= lt!541992 (getCurrentListMapNoExtraKeys!5210 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1191932 () Bool)

(assert (=> b!1191932 (= e!677555 e!677550)))

(declare-fun res!792947 () Bool)

(assert (=> b!1191932 (=> (not res!792947) (not e!677550))))

(assert (=> b!1191932 (= res!792947 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541989 mask!1564))))

(assert (=> b!1191932 (= lt!541989 (array!77043 (store (arr!37167 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37704 _keys!1208)))))

(declare-fun mapNonEmpty!47036 () Bool)

(declare-fun tp!89542 () Bool)

(declare-fun e!677554 () Bool)

(assert (=> mapNonEmpty!47036 (= mapRes!47036 (and tp!89542 e!677554))))

(declare-fun mapRest!47036 () (Array (_ BitVec 32) ValueCell!14360))

(declare-fun mapValue!47036 () ValueCell!14360)

(declare-fun mapKey!47036 () (_ BitVec 32))

(assert (=> mapNonEmpty!47036 (= (arr!37168 _values!996) (store mapRest!47036 mapKey!47036 mapValue!47036))))

(declare-fun b!1191933 () Bool)

(assert (=> b!1191933 (= e!677554 tp_is_empty!30139)))

(declare-fun b!1191934 () Bool)

(assert (=> b!1191934 (= e!677556 (and e!677557 mapRes!47036))))

(declare-fun condMapEmpty!47036 () Bool)

(declare-fun mapDefault!47036 () ValueCell!14360)

