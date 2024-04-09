; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99104 () Bool)

(assert start!99104)

(declare-fun b_free!24673 () Bool)

(declare-fun b_next!24673 () Bool)

(assert (=> start!99104 (= b_free!24673 (not b_next!24673))))

(declare-fun tp!86730 () Bool)

(declare-fun b_and!40209 () Bool)

(assert (=> start!99104 (= tp!86730 b_and!40209)))

(declare-fun b!1164866 () Bool)

(declare-fun res!772599 () Bool)

(declare-fun e!662298 () Bool)

(assert (=> b!1164866 (=> (not res!772599) (not e!662298))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1164866 (= res!772599 (validMask!0 mask!1564))))

(declare-fun b!1164867 () Bool)

(declare-fun res!772604 () Bool)

(assert (=> b!1164867 (=> (not res!772604) (not e!662298))))

(declare-datatypes ((array!75190 0))(
  ( (array!75191 (arr!36242 (Array (_ BitVec 32) (_ BitVec 64))) (size!36779 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75190)

(declare-datatypes ((V!44065 0))(
  ( (V!44066 (val!14658 Int)) )
))
(declare-datatypes ((ValueCell!13892 0))(
  ( (ValueCellFull!13892 (v!17296 V!44065)) (EmptyCell!13892) )
))
(declare-datatypes ((array!75192 0))(
  ( (array!75193 (arr!36243 (Array (_ BitVec 32) ValueCell!13892)) (size!36780 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75192)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1164867 (= res!772604 (and (= (size!36780 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36779 _keys!1208) (size!36780 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!45629 () Bool)

(declare-fun mapRes!45629 () Bool)

(declare-fun tp!86731 () Bool)

(declare-fun e!662302 () Bool)

(assert (=> mapNonEmpty!45629 (= mapRes!45629 (and tp!86731 e!662302))))

(declare-fun mapKey!45629 () (_ BitVec 32))

(declare-fun mapRest!45629 () (Array (_ BitVec 32) ValueCell!13892))

(declare-fun mapValue!45629 () ValueCell!13892)

(assert (=> mapNonEmpty!45629 (= (arr!36243 _values!996) (store mapRest!45629 mapKey!45629 mapValue!45629))))

(declare-fun b!1164868 () Bool)

(declare-fun tp_is_empty!29203 () Bool)

(assert (=> b!1164868 (= e!662302 tp_is_empty!29203)))

(declare-fun mapIsEmpty!45629 () Bool)

(assert (=> mapIsEmpty!45629 mapRes!45629))

(declare-fun b!1164870 () Bool)

(declare-fun res!772602 () Bool)

(assert (=> b!1164870 (=> (not res!772602) (not e!662298))))

(declare-datatypes ((List!25543 0))(
  ( (Nil!25540) (Cons!25539 (h!26748 (_ BitVec 64)) (t!37215 List!25543)) )
))
(declare-fun arrayNoDuplicates!0 (array!75190 (_ BitVec 32) List!25543) Bool)

(assert (=> b!1164870 (= res!772602 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25540))))

(declare-fun b!1164871 () Bool)

(declare-fun res!772600 () Bool)

(declare-fun e!662301 () Bool)

(assert (=> b!1164871 (=> (not res!772600) (not e!662301))))

(declare-fun lt!524720 () array!75190)

(assert (=> b!1164871 (= res!772600 (arrayNoDuplicates!0 lt!524720 #b00000000000000000000000000000000 Nil!25540))))

(declare-fun b!1164872 () Bool)

(declare-fun res!772596 () Bool)

(assert (=> b!1164872 (=> (not res!772596) (not e!662298))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75190 (_ BitVec 32)) Bool)

(assert (=> b!1164872 (= res!772596 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1164873 () Bool)

(declare-fun e!662304 () Bool)

(assert (=> b!1164873 (= e!662304 true)))

(declare-fun zeroValue!944 () V!44065)

(declare-datatypes ((tuple2!18766 0))(
  ( (tuple2!18767 (_1!9393 (_ BitVec 64)) (_2!9393 V!44065)) )
))
(declare-datatypes ((List!25544 0))(
  ( (Nil!25541) (Cons!25540 (h!26749 tuple2!18766) (t!37216 List!25544)) )
))
(declare-datatypes ((ListLongMap!16747 0))(
  ( (ListLongMap!16748 (toList!8389 List!25544)) )
))
(declare-fun lt!524719 () ListLongMap!16747)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44065)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4822 (array!75190 array!75192 (_ BitVec 32) (_ BitVec 32) V!44065 V!44065 (_ BitVec 32) Int) ListLongMap!16747)

(declare-fun dynLambda!2819 (Int (_ BitVec 64)) V!44065)

(assert (=> b!1164873 (= lt!524719 (getCurrentListMapNoExtraKeys!4822 lt!524720 (array!75193 (store (arr!36243 _values!996) i!673 (ValueCellFull!13892 (dynLambda!2819 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36780 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!524718 () ListLongMap!16747)

(assert (=> b!1164873 (= lt!524718 (getCurrentListMapNoExtraKeys!4822 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1164874 () Bool)

(declare-fun res!772601 () Bool)

(assert (=> b!1164874 (=> (not res!772601) (not e!662298))))

(assert (=> b!1164874 (= res!772601 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36779 _keys!1208))))))

(declare-fun b!1164875 () Bool)

(assert (=> b!1164875 (= e!662301 (not e!662304))))

(declare-fun res!772603 () Bool)

(assert (=> b!1164875 (=> res!772603 e!662304)))

(assert (=> b!1164875 (= res!772603 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75190 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1164875 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38336 0))(
  ( (Unit!38337) )
))
(declare-fun lt!524721 () Unit!38336)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75190 (_ BitVec 64) (_ BitVec 32)) Unit!38336)

(assert (=> b!1164875 (= lt!524721 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1164876 () Bool)

(declare-fun e!662300 () Bool)

(assert (=> b!1164876 (= e!662300 tp_is_empty!29203)))

(declare-fun b!1164877 () Bool)

(declare-fun e!662303 () Bool)

(assert (=> b!1164877 (= e!662303 (and e!662300 mapRes!45629))))

(declare-fun condMapEmpty!45629 () Bool)

(declare-fun mapDefault!45629 () ValueCell!13892)

