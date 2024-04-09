; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97832 () Bool)

(assert start!97832)

(declare-fun b_free!23497 () Bool)

(declare-fun b_next!23497 () Bool)

(assert (=> start!97832 (= b_free!23497 (not b_next!23497))))

(declare-fun tp!83195 () Bool)

(declare-fun b_and!37799 () Bool)

(assert (=> start!97832 (= tp!83195 b_and!37799)))

(declare-fun b!1118832 () Bool)

(declare-fun res!747376 () Bool)

(declare-fun e!637281 () Bool)

(assert (=> b!1118832 (=> (not res!747376) (not e!637281))))

(declare-datatypes ((array!72882 0))(
  ( (array!72883 (arr!35090 (Array (_ BitVec 32) (_ BitVec 64))) (size!35627 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72882)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72882 (_ BitVec 32)) Bool)

(assert (=> b!1118832 (= res!747376 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1118833 () Bool)

(declare-fun res!747378 () Bool)

(assert (=> b!1118833 (=> (not res!747378) (not e!637281))))

(declare-datatypes ((List!24539 0))(
  ( (Nil!24536) (Cons!24535 (h!25744 (_ BitVec 64)) (t!35035 List!24539)) )
))
(declare-fun arrayNoDuplicates!0 (array!72882 (_ BitVec 32) List!24539) Bool)

(assert (=> b!1118833 (= res!747378 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24536))))

(declare-fun b!1118834 () Bool)

(declare-fun res!747374 () Bool)

(assert (=> b!1118834 (=> (not res!747374) (not e!637281))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1118834 (= res!747374 (= (select (arr!35090 _keys!1208) i!673) k!934))))

(declare-fun res!747381 () Bool)

(assert (=> start!97832 (=> (not res!747381) (not e!637281))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97832 (= res!747381 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35627 _keys!1208))))))

(assert (=> start!97832 e!637281))

(declare-fun tp_is_empty!28027 () Bool)

(assert (=> start!97832 tp_is_empty!28027))

(declare-fun array_inv!26824 (array!72882) Bool)

(assert (=> start!97832 (array_inv!26824 _keys!1208)))

(assert (=> start!97832 true))

(assert (=> start!97832 tp!83195))

(declare-datatypes ((V!42497 0))(
  ( (V!42498 (val!14070 Int)) )
))
(declare-datatypes ((ValueCell!13304 0))(
  ( (ValueCellFull!13304 (v!16704 V!42497)) (EmptyCell!13304) )
))
(declare-datatypes ((array!72884 0))(
  ( (array!72885 (arr!35091 (Array (_ BitVec 32) ValueCell!13304)) (size!35628 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72884)

(declare-fun e!637282 () Bool)

(declare-fun array_inv!26825 (array!72884) Bool)

(assert (=> start!97832 (and (array_inv!26825 _values!996) e!637282)))

(declare-fun b!1118835 () Bool)

(declare-fun res!747380 () Bool)

(assert (=> b!1118835 (=> (not res!747380) (not e!637281))))

(assert (=> b!1118835 (= res!747380 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35627 _keys!1208))))))

(declare-fun mapNonEmpty!43858 () Bool)

(declare-fun mapRes!43858 () Bool)

(declare-fun tp!83196 () Bool)

(declare-fun e!637286 () Bool)

(assert (=> mapNonEmpty!43858 (= mapRes!43858 (and tp!83196 e!637286))))

(declare-fun mapKey!43858 () (_ BitVec 32))

(declare-fun mapRest!43858 () (Array (_ BitVec 32) ValueCell!13304))

(declare-fun mapValue!43858 () ValueCell!13304)

(assert (=> mapNonEmpty!43858 (= (arr!35091 _values!996) (store mapRest!43858 mapKey!43858 mapValue!43858))))

(declare-fun b!1118836 () Bool)

(declare-fun e!637284 () Bool)

(declare-fun e!637280 () Bool)

(assert (=> b!1118836 (= e!637284 (not e!637280))))

(declare-fun res!747384 () Bool)

(assert (=> b!1118836 (=> res!747384 e!637280)))

(assert (=> b!1118836 (= res!747384 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!72882 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1118836 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36625 0))(
  ( (Unit!36626) )
))
(declare-fun lt!497574 () Unit!36625)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72882 (_ BitVec 64) (_ BitVec 32)) Unit!36625)

(assert (=> b!1118836 (= lt!497574 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1118837 () Bool)

(assert (=> b!1118837 (= e!637281 e!637284)))

(declare-fun res!747382 () Bool)

(assert (=> b!1118837 (=> (not res!747382) (not e!637284))))

(declare-fun lt!497572 () array!72882)

(assert (=> b!1118837 (= res!747382 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497572 mask!1564))))

(assert (=> b!1118837 (= lt!497572 (array!72883 (store (arr!35090 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35627 _keys!1208)))))

(declare-fun b!1118838 () Bool)

(declare-fun res!747379 () Bool)

(assert (=> b!1118838 (=> (not res!747379) (not e!637281))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1118838 (= res!747379 (validKeyInArray!0 k!934))))

(declare-fun b!1118839 () Bool)

(assert (=> b!1118839 (= e!637286 tp_is_empty!28027)))

(declare-fun b!1118840 () Bool)

(declare-fun e!637283 () Bool)

(assert (=> b!1118840 (= e!637283 tp_is_empty!28027)))

(declare-fun b!1118841 () Bool)

(assert (=> b!1118841 (= e!637282 (and e!637283 mapRes!43858))))

(declare-fun condMapEmpty!43858 () Bool)

(declare-fun mapDefault!43858 () ValueCell!13304)

