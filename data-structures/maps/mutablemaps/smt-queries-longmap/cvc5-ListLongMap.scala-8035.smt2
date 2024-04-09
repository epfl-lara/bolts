; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99086 () Bool)

(assert start!99086)

(declare-fun b_free!24655 () Bool)

(declare-fun b_next!24655 () Bool)

(assert (=> start!99086 (= b_free!24655 (not b_next!24655))))

(declare-fun tp!86676 () Bool)

(declare-fun b_and!40173 () Bool)

(assert (=> start!99086 (= tp!86676 b_and!40173)))

(declare-fun b!1164470 () Bool)

(declare-fun e!662112 () Bool)

(assert (=> b!1164470 (= e!662112 true)))

(declare-datatypes ((V!44041 0))(
  ( (V!44042 (val!14649 Int)) )
))
(declare-fun zeroValue!944 () V!44041)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!18756 0))(
  ( (tuple2!18757 (_1!9388 (_ BitVec 64)) (_2!9388 V!44041)) )
))
(declare-datatypes ((List!25531 0))(
  ( (Nil!25528) (Cons!25527 (h!26736 tuple2!18756) (t!37185 List!25531)) )
))
(declare-datatypes ((ListLongMap!16737 0))(
  ( (ListLongMap!16738 (toList!8384 List!25531)) )
))
(declare-fun lt!524612 () ListLongMap!16737)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13883 0))(
  ( (ValueCellFull!13883 (v!17287 V!44041)) (EmptyCell!13883) )
))
(declare-datatypes ((array!75154 0))(
  ( (array!75155 (arr!36224 (Array (_ BitVec 32) ValueCell!13883)) (size!36761 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75154)

(declare-fun minValue!944 () V!44041)

(declare-datatypes ((array!75156 0))(
  ( (array!75157 (arr!36225 (Array (_ BitVec 32) (_ BitVec 64))) (size!36762 (_ BitVec 32))) )
))
(declare-fun lt!524613 () array!75156)

(declare-fun getCurrentListMapNoExtraKeys!4817 (array!75156 array!75154 (_ BitVec 32) (_ BitVec 32) V!44041 V!44041 (_ BitVec 32) Int) ListLongMap!16737)

(declare-fun dynLambda!2814 (Int (_ BitVec 64)) V!44041)

(assert (=> b!1164470 (= lt!524612 (getCurrentListMapNoExtraKeys!4817 lt!524613 (array!75155 (store (arr!36224 _values!996) i!673 (ValueCellFull!13883 (dynLambda!2814 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36761 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _keys!1208 () array!75156)

(declare-fun lt!524610 () ListLongMap!16737)

(assert (=> b!1164470 (= lt!524610 (getCurrentListMapNoExtraKeys!4817 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1164471 () Bool)

(declare-fun res!772299 () Bool)

(declare-fun e!662111 () Bool)

(assert (=> b!1164471 (=> (not res!772299) (not e!662111))))

(assert (=> b!1164471 (= res!772299 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36762 _keys!1208))))))

(declare-fun res!772305 () Bool)

(assert (=> start!99086 (=> (not res!772305) (not e!662111))))

(assert (=> start!99086 (= res!772305 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36762 _keys!1208))))))

(assert (=> start!99086 e!662111))

(declare-fun tp_is_empty!29185 () Bool)

(assert (=> start!99086 tp_is_empty!29185))

(declare-fun array_inv!27582 (array!75156) Bool)

(assert (=> start!99086 (array_inv!27582 _keys!1208)))

(assert (=> start!99086 true))

(assert (=> start!99086 tp!86676))

(declare-fun e!662113 () Bool)

(declare-fun array_inv!27583 (array!75154) Bool)

(assert (=> start!99086 (and (array_inv!27583 _values!996) e!662113)))

(declare-fun b!1164472 () Bool)

(declare-fun res!772303 () Bool)

(assert (=> b!1164472 (=> (not res!772303) (not e!662111))))

(declare-datatypes ((List!25532 0))(
  ( (Nil!25529) (Cons!25528 (h!26737 (_ BitVec 64)) (t!37186 List!25532)) )
))
(declare-fun arrayNoDuplicates!0 (array!75156 (_ BitVec 32) List!25532) Bool)

(assert (=> b!1164472 (= res!772303 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25529))))

(declare-fun b!1164473 () Bool)

(declare-fun res!772297 () Bool)

(assert (=> b!1164473 (=> (not res!772297) (not e!662111))))

(assert (=> b!1164473 (= res!772297 (and (= (size!36761 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36762 _keys!1208) (size!36761 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1164474 () Bool)

(declare-fun res!772304 () Bool)

(declare-fun e!662110 () Bool)

(assert (=> b!1164474 (=> (not res!772304) (not e!662110))))

(assert (=> b!1164474 (= res!772304 (arrayNoDuplicates!0 lt!524613 #b00000000000000000000000000000000 Nil!25529))))

(declare-fun b!1164475 () Bool)

(declare-fun res!772300 () Bool)

(assert (=> b!1164475 (=> (not res!772300) (not e!662111))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1164475 (= res!772300 (validKeyInArray!0 k!934))))

(declare-fun b!1164476 () Bool)

(declare-fun e!662109 () Bool)

(assert (=> b!1164476 (= e!662109 tp_is_empty!29185)))

(declare-fun mapIsEmpty!45602 () Bool)

(declare-fun mapRes!45602 () Bool)

(assert (=> mapIsEmpty!45602 mapRes!45602))

(declare-fun mapNonEmpty!45602 () Bool)

(declare-fun tp!86677 () Bool)

(declare-fun e!662115 () Bool)

(assert (=> mapNonEmpty!45602 (= mapRes!45602 (and tp!86677 e!662115))))

(declare-fun mapKey!45602 () (_ BitVec 32))

(declare-fun mapValue!45602 () ValueCell!13883)

(declare-fun mapRest!45602 () (Array (_ BitVec 32) ValueCell!13883))

(assert (=> mapNonEmpty!45602 (= (arr!36224 _values!996) (store mapRest!45602 mapKey!45602 mapValue!45602))))

(declare-fun b!1164477 () Bool)

(assert (=> b!1164477 (= e!662113 (and e!662109 mapRes!45602))))

(declare-fun condMapEmpty!45602 () Bool)

(declare-fun mapDefault!45602 () ValueCell!13883)

