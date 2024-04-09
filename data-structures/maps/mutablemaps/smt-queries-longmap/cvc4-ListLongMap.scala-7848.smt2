; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97872 () Bool)

(assert start!97872)

(declare-fun b_free!23537 () Bool)

(declare-fun b_next!23537 () Bool)

(assert (=> start!97872 (= b_free!23537 (not b_next!23537))))

(declare-fun tp!83315 () Bool)

(declare-fun b_and!37879 () Bool)

(assert (=> start!97872 (= tp!83315 b_and!37879)))

(declare-fun res!748044 () Bool)

(declare-fun e!637703 () Bool)

(assert (=> start!97872 (=> (not res!748044) (not e!637703))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!72960 0))(
  ( (array!72961 (arr!35129 (Array (_ BitVec 32) (_ BitVec 64))) (size!35666 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72960)

(assert (=> start!97872 (= res!748044 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35666 _keys!1208))))))

(assert (=> start!97872 e!637703))

(declare-fun tp_is_empty!28067 () Bool)

(assert (=> start!97872 tp_is_empty!28067))

(declare-fun array_inv!26852 (array!72960) Bool)

(assert (=> start!97872 (array_inv!26852 _keys!1208)))

(assert (=> start!97872 true))

(assert (=> start!97872 tp!83315))

(declare-datatypes ((V!42549 0))(
  ( (V!42550 (val!14090 Int)) )
))
(declare-datatypes ((ValueCell!13324 0))(
  ( (ValueCellFull!13324 (v!16724 V!42549)) (EmptyCell!13324) )
))
(declare-datatypes ((array!72962 0))(
  ( (array!72963 (arr!35130 (Array (_ BitVec 32) ValueCell!13324)) (size!35667 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72962)

(declare-fun e!637704 () Bool)

(declare-fun array_inv!26853 (array!72962) Bool)

(assert (=> start!97872 (and (array_inv!26853 _values!996) e!637704)))

(declare-fun mapIsEmpty!43918 () Bool)

(declare-fun mapRes!43918 () Bool)

(assert (=> mapIsEmpty!43918 mapRes!43918))

(declare-fun b!1119712 () Bool)

(declare-fun res!748041 () Bool)

(assert (=> b!1119712 (=> (not res!748041) (not e!637703))))

(declare-datatypes ((List!24570 0))(
  ( (Nil!24567) (Cons!24566 (h!25775 (_ BitVec 64)) (t!35106 List!24570)) )
))
(declare-fun arrayNoDuplicates!0 (array!72960 (_ BitVec 32) List!24570) Bool)

(assert (=> b!1119712 (= res!748041 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24567))))

(declare-fun b!1119713 () Bool)

(declare-fun e!637702 () Bool)

(assert (=> b!1119713 (= e!637702 true)))

(declare-fun zeroValue!944 () V!42549)

(declare-fun lt!497812 () array!72960)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!17734 0))(
  ( (tuple2!17735 (_1!8877 (_ BitVec 64)) (_2!8877 V!42549)) )
))
(declare-datatypes ((List!24571 0))(
  ( (Nil!24568) (Cons!24567 (h!25776 tuple2!17734) (t!35107 List!24571)) )
))
(declare-datatypes ((ListLongMap!15715 0))(
  ( (ListLongMap!15716 (toList!7873 List!24571)) )
))
(declare-fun lt!497813 () ListLongMap!15715)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42549)

(declare-fun getCurrentListMapNoExtraKeys!4334 (array!72960 array!72962 (_ BitVec 32) (_ BitVec 32) V!42549 V!42549 (_ BitVec 32) Int) ListLongMap!15715)

(declare-fun dynLambda!2436 (Int (_ BitVec 64)) V!42549)

(assert (=> b!1119713 (= lt!497813 (getCurrentListMapNoExtraKeys!4334 lt!497812 (array!72963 (store (arr!35130 _values!996) i!673 (ValueCellFull!13324 (dynLambda!2436 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35667 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!497811 () ListLongMap!15715)

(assert (=> b!1119713 (= lt!497811 (getCurrentListMapNoExtraKeys!4334 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1119714 () Bool)

(declare-fun e!637700 () Bool)

(assert (=> b!1119714 (= e!637703 e!637700)))

(declare-fun res!748040 () Bool)

(assert (=> b!1119714 (=> (not res!748040) (not e!637700))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72960 (_ BitVec 32)) Bool)

(assert (=> b!1119714 (= res!748040 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497812 mask!1564))))

(assert (=> b!1119714 (= lt!497812 (array!72961 (store (arr!35129 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35666 _keys!1208)))))

(declare-fun b!1119715 () Bool)

(declare-fun res!748035 () Bool)

(assert (=> b!1119715 (=> (not res!748035) (not e!637703))))

(assert (=> b!1119715 (= res!748035 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35666 _keys!1208))))))

(declare-fun b!1119716 () Bool)

(declare-fun e!637701 () Bool)

(assert (=> b!1119716 (= e!637701 tp_is_empty!28067)))

(declare-fun b!1119717 () Bool)

(declare-fun res!748034 () Bool)

(assert (=> b!1119717 (=> (not res!748034) (not e!637703))))

(assert (=> b!1119717 (= res!748034 (and (= (size!35667 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35666 _keys!1208) (size!35667 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1119718 () Bool)

(declare-fun res!748043 () Bool)

(assert (=> b!1119718 (=> (not res!748043) (not e!637700))))

(assert (=> b!1119718 (= res!748043 (arrayNoDuplicates!0 lt!497812 #b00000000000000000000000000000000 Nil!24567))))

(declare-fun b!1119719 () Bool)

(declare-fun res!748038 () Bool)

(assert (=> b!1119719 (=> (not res!748038) (not e!637703))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1119719 (= res!748038 (validKeyInArray!0 k!934))))

(declare-fun b!1119720 () Bool)

(declare-fun res!748042 () Bool)

(assert (=> b!1119720 (=> (not res!748042) (not e!637703))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1119720 (= res!748042 (validMask!0 mask!1564))))

(declare-fun b!1119721 () Bool)

(declare-fun res!748039 () Bool)

(assert (=> b!1119721 (=> (not res!748039) (not e!637703))))

(assert (=> b!1119721 (= res!748039 (= (select (arr!35129 _keys!1208) i!673) k!934))))

(declare-fun b!1119722 () Bool)

(assert (=> b!1119722 (= e!637700 (not e!637702))))

(declare-fun res!748036 () Bool)

(assert (=> b!1119722 (=> res!748036 e!637702)))

(assert (=> b!1119722 (= res!748036 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!72960 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1119722 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36659 0))(
  ( (Unit!36660) )
))
(declare-fun lt!497814 () Unit!36659)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72960 (_ BitVec 64) (_ BitVec 32)) Unit!36659)

(assert (=> b!1119722 (= lt!497814 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapNonEmpty!43918 () Bool)

(declare-fun tp!83316 () Bool)

(assert (=> mapNonEmpty!43918 (= mapRes!43918 (and tp!83316 e!637701))))

(declare-fun mapKey!43918 () (_ BitVec 32))

(declare-fun mapValue!43918 () ValueCell!13324)

(declare-fun mapRest!43918 () (Array (_ BitVec 32) ValueCell!13324))

(assert (=> mapNonEmpty!43918 (= (arr!35130 _values!996) (store mapRest!43918 mapKey!43918 mapValue!43918))))

(declare-fun b!1119723 () Bool)

(declare-fun e!637705 () Bool)

(assert (=> b!1119723 (= e!637704 (and e!637705 mapRes!43918))))

(declare-fun condMapEmpty!43918 () Bool)

(declare-fun mapDefault!43918 () ValueCell!13324)

