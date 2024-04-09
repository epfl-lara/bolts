; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101398 () Bool)

(assert start!101398)

(declare-fun b_free!26233 () Bool)

(declare-fun b_next!26233 () Bool)

(assert (=> start!101398 (= b_free!26233 (not b_next!26233))))

(declare-fun tp!91728 () Bool)

(declare-fun b_and!43629 () Bool)

(assert (=> start!101398 (= tp!91728 b_and!43629)))

(declare-fun b!1217755 () Bool)

(declare-fun res!808789 () Bool)

(declare-fun e!691413 () Bool)

(assert (=> b!1217755 (=> (not res!808789) (not e!691413))))

(declare-datatypes ((array!78624 0))(
  ( (array!78625 (arr!37941 (Array (_ BitVec 32) (_ BitVec 64))) (size!38478 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78624)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1217755 (= res!808789 (= (select (arr!37941 _keys!1208) i!673) k!934))))

(declare-fun b!1217756 () Bool)

(declare-fun e!691416 () Bool)

(declare-fun e!691407 () Bool)

(assert (=> b!1217756 (= e!691416 e!691407)))

(declare-fun res!808786 () Bool)

(assert (=> b!1217756 (=> res!808786 e!691407)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1217756 (= res!808786 (not (validKeyInArray!0 (select (arr!37941 _keys!1208) from!1455))))))

(declare-datatypes ((V!46377 0))(
  ( (V!46378 (val!15525 Int)) )
))
(declare-datatypes ((tuple2!20102 0))(
  ( (tuple2!20103 (_1!10061 (_ BitVec 64)) (_2!10061 V!46377)) )
))
(declare-datatypes ((List!26923 0))(
  ( (Nil!26920) (Cons!26919 (h!28128 tuple2!20102) (t!40143 List!26923)) )
))
(declare-datatypes ((ListLongMap!18083 0))(
  ( (ListLongMap!18084 (toList!9057 List!26923)) )
))
(declare-fun lt!553502 () ListLongMap!18083)

(declare-fun lt!553507 () ListLongMap!18083)

(assert (=> b!1217756 (= lt!553502 lt!553507)))

(declare-fun lt!553509 () ListLongMap!18083)

(declare-fun -!1918 (ListLongMap!18083 (_ BitVec 64)) ListLongMap!18083)

(assert (=> b!1217756 (= lt!553507 (-!1918 lt!553509 k!934))))

(declare-datatypes ((ValueCell!14759 0))(
  ( (ValueCellFull!14759 (v!18181 V!46377)) (EmptyCell!14759) )
))
(declare-datatypes ((array!78626 0))(
  ( (array!78627 (arr!37942 (Array (_ BitVec 32) ValueCell!14759)) (size!38479 (_ BitVec 32))) )
))
(declare-fun lt!553511 () array!78626)

(declare-fun lt!553503 () array!78624)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46377)

(declare-fun zeroValue!944 () V!46377)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!5461 (array!78624 array!78626 (_ BitVec 32) (_ BitVec 32) V!46377 V!46377 (_ BitVec 32) Int) ListLongMap!18083)

(assert (=> b!1217756 (= lt!553502 (getCurrentListMapNoExtraKeys!5461 lt!553503 lt!553511 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!78626)

(assert (=> b!1217756 (= lt!553509 (getCurrentListMapNoExtraKeys!5461 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!40300 0))(
  ( (Unit!40301) )
))
(declare-fun lt!553508 () Unit!40300)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1120 (array!78624 array!78626 (_ BitVec 32) (_ BitVec 32) V!46377 V!46377 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40300)

(assert (=> b!1217756 (= lt!553508 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1120 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1217757 () Bool)

(declare-fun e!691414 () Bool)

(declare-fun e!691411 () Bool)

(assert (=> b!1217757 (= e!691414 e!691411)))

(declare-fun res!808787 () Bool)

(assert (=> b!1217757 (=> res!808787 e!691411)))

(assert (=> b!1217757 (= res!808787 (not (= (select (arr!37941 _keys!1208) from!1455) k!934)))))

(declare-fun b!1217758 () Bool)

(declare-fun res!808784 () Bool)

(assert (=> b!1217758 (=> (not res!808784) (not e!691413))))

(assert (=> b!1217758 (= res!808784 (validKeyInArray!0 k!934))))

(declare-fun mapNonEmpty!48286 () Bool)

(declare-fun mapRes!48286 () Bool)

(declare-fun tp!91727 () Bool)

(declare-fun e!691415 () Bool)

(assert (=> mapNonEmpty!48286 (= mapRes!48286 (and tp!91727 e!691415))))

(declare-fun mapValue!48286 () ValueCell!14759)

(declare-fun mapKey!48286 () (_ BitVec 32))

(declare-fun mapRest!48286 () (Array (_ BitVec 32) ValueCell!14759))

(assert (=> mapNonEmpty!48286 (= (arr!37942 _values!996) (store mapRest!48286 mapKey!48286 mapValue!48286))))

(declare-fun b!1217760 () Bool)

(declare-fun res!808778 () Bool)

(declare-fun e!691409 () Bool)

(assert (=> b!1217760 (=> (not res!808778) (not e!691409))))

(declare-datatypes ((List!26924 0))(
  ( (Nil!26921) (Cons!26920 (h!28129 (_ BitVec 64)) (t!40144 List!26924)) )
))
(declare-fun arrayNoDuplicates!0 (array!78624 (_ BitVec 32) List!26924) Bool)

(assert (=> b!1217760 (= res!808778 (arrayNoDuplicates!0 lt!553503 #b00000000000000000000000000000000 Nil!26921))))

(declare-fun b!1217761 () Bool)

(declare-fun e!691417 () Bool)

(assert (=> b!1217761 (= e!691417 e!691416)))

(declare-fun res!808788 () Bool)

(assert (=> b!1217761 (=> res!808788 e!691416)))

(assert (=> b!1217761 (= res!808788 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!553504 () ListLongMap!18083)

(assert (=> b!1217761 (= lt!553504 (getCurrentListMapNoExtraKeys!5461 lt!553503 lt!553511 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!553510 () V!46377)

(assert (=> b!1217761 (= lt!553511 (array!78627 (store (arr!37942 _values!996) i!673 (ValueCellFull!14759 lt!553510)) (size!38479 _values!996)))))

(declare-fun dynLambda!3365 (Int (_ BitVec 64)) V!46377)

(assert (=> b!1217761 (= lt!553510 (dynLambda!3365 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!553506 () ListLongMap!18083)

(assert (=> b!1217761 (= lt!553506 (getCurrentListMapNoExtraKeys!5461 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1217762 () Bool)

(declare-fun tp_is_empty!30937 () Bool)

(assert (=> b!1217762 (= e!691415 tp_is_empty!30937)))

(declare-fun b!1217763 () Bool)

(assert (=> b!1217763 (= e!691413 e!691409)))

(declare-fun res!808791 () Bool)

(assert (=> b!1217763 (=> (not res!808791) (not e!691409))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78624 (_ BitVec 32)) Bool)

(assert (=> b!1217763 (= res!808791 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!553503 mask!1564))))

(assert (=> b!1217763 (= lt!553503 (array!78625 (store (arr!37941 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38478 _keys!1208)))))

(declare-fun b!1217764 () Bool)

(declare-fun res!808781 () Bool)

(assert (=> b!1217764 (=> (not res!808781) (not e!691413))))

(assert (=> b!1217764 (= res!808781 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38478 _keys!1208))))))

(declare-fun mapIsEmpty!48286 () Bool)

(assert (=> mapIsEmpty!48286 mapRes!48286))

(declare-fun b!1217765 () Bool)

(declare-fun res!808790 () Bool)

(assert (=> b!1217765 (=> (not res!808790) (not e!691413))))

(assert (=> b!1217765 (= res!808790 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1217766 () Bool)

(declare-fun res!808780 () Bool)

(assert (=> b!1217766 (=> (not res!808780) (not e!691413))))

(assert (=> b!1217766 (= res!808780 (and (= (size!38479 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38478 _keys!1208) (size!38479 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1217767 () Bool)

(declare-fun e!691408 () Bool)

(assert (=> b!1217767 (= e!691408 tp_is_empty!30937)))

(declare-fun b!1217768 () Bool)

(declare-fun e!691412 () Bool)

(assert (=> b!1217768 (= e!691412 (and e!691408 mapRes!48286))))

(declare-fun condMapEmpty!48286 () Bool)

(declare-fun mapDefault!48286 () ValueCell!14759)

