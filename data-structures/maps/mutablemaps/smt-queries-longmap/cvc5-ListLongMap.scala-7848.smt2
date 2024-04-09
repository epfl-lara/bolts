; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97868 () Bool)

(assert start!97868)

(declare-fun b_free!23533 () Bool)

(declare-fun b_next!23533 () Bool)

(assert (=> start!97868 (= b_free!23533 (not b_next!23533))))

(declare-fun tp!83303 () Bool)

(declare-fun b_and!37871 () Bool)

(assert (=> start!97868 (= tp!83303 b_and!37871)))

(declare-fun res!747970 () Bool)

(declare-fun e!637659 () Bool)

(assert (=> start!97868 (=> (not res!747970) (not e!637659))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!72952 0))(
  ( (array!72953 (arr!35125 (Array (_ BitVec 32) (_ BitVec 64))) (size!35662 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72952)

(assert (=> start!97868 (= res!747970 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35662 _keys!1208))))))

(assert (=> start!97868 e!637659))

(declare-fun tp_is_empty!28063 () Bool)

(assert (=> start!97868 tp_is_empty!28063))

(declare-fun array_inv!26848 (array!72952) Bool)

(assert (=> start!97868 (array_inv!26848 _keys!1208)))

(assert (=> start!97868 true))

(assert (=> start!97868 tp!83303))

(declare-datatypes ((V!42545 0))(
  ( (V!42546 (val!14088 Int)) )
))
(declare-datatypes ((ValueCell!13322 0))(
  ( (ValueCellFull!13322 (v!16722 V!42545)) (EmptyCell!13322) )
))
(declare-datatypes ((array!72954 0))(
  ( (array!72955 (arr!35126 (Array (_ BitVec 32) ValueCell!13322)) (size!35663 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72954)

(declare-fun e!637663 () Bool)

(declare-fun array_inv!26849 (array!72954) Bool)

(assert (=> start!97868 (and (array_inv!26849 _values!996) e!637663)))

(declare-fun b!1119624 () Bool)

(declare-fun res!747975 () Bool)

(assert (=> b!1119624 (=> (not res!747975) (not e!637659))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1119624 (= res!747975 (and (= (size!35663 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35662 _keys!1208) (size!35663 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1119625 () Bool)

(declare-fun e!637660 () Bool)

(assert (=> b!1119625 (= e!637660 true)))

(declare-fun zeroValue!944 () V!42545)

(declare-datatypes ((tuple2!17730 0))(
  ( (tuple2!17731 (_1!8875 (_ BitVec 64)) (_2!8875 V!42545)) )
))
(declare-datatypes ((List!24566 0))(
  ( (Nil!24563) (Cons!24562 (h!25771 tuple2!17730) (t!35098 List!24566)) )
))
(declare-datatypes ((ListLongMap!15711 0))(
  ( (ListLongMap!15712 (toList!7871 List!24566)) )
))
(declare-fun lt!497789 () ListLongMap!15711)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!497790 () array!72952)

(declare-fun minValue!944 () V!42545)

(declare-fun getCurrentListMapNoExtraKeys!4332 (array!72952 array!72954 (_ BitVec 32) (_ BitVec 32) V!42545 V!42545 (_ BitVec 32) Int) ListLongMap!15711)

(declare-fun dynLambda!2434 (Int (_ BitVec 64)) V!42545)

(assert (=> b!1119625 (= lt!497789 (getCurrentListMapNoExtraKeys!4332 lt!497790 (array!72955 (store (arr!35126 _values!996) i!673 (ValueCellFull!13322 (dynLambda!2434 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35663 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!497787 () ListLongMap!15711)

(assert (=> b!1119625 (= lt!497787 (getCurrentListMapNoExtraKeys!4332 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!43912 () Bool)

(declare-fun mapRes!43912 () Bool)

(declare-fun tp!83304 () Bool)

(declare-fun e!637658 () Bool)

(assert (=> mapNonEmpty!43912 (= mapRes!43912 (and tp!83304 e!637658))))

(declare-fun mapValue!43912 () ValueCell!13322)

(declare-fun mapKey!43912 () (_ BitVec 32))

(declare-fun mapRest!43912 () (Array (_ BitVec 32) ValueCell!13322))

(assert (=> mapNonEmpty!43912 (= (arr!35126 _values!996) (store mapRest!43912 mapKey!43912 mapValue!43912))))

(declare-fun b!1119626 () Bool)

(assert (=> b!1119626 (= e!637658 tp_is_empty!28063)))

(declare-fun b!1119627 () Bool)

(declare-fun res!747978 () Bool)

(assert (=> b!1119627 (=> (not res!747978) (not e!637659))))

(declare-datatypes ((List!24567 0))(
  ( (Nil!24564) (Cons!24563 (h!25772 (_ BitVec 64)) (t!35099 List!24567)) )
))
(declare-fun arrayNoDuplicates!0 (array!72952 (_ BitVec 32) List!24567) Bool)

(assert (=> b!1119627 (= res!747978 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24564))))

(declare-fun b!1119628 () Bool)

(declare-fun res!747976 () Bool)

(assert (=> b!1119628 (=> (not res!747976) (not e!637659))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1119628 (= res!747976 (= (select (arr!35125 _keys!1208) i!673) k!934))))

(declare-fun b!1119629 () Bool)

(declare-fun res!747974 () Bool)

(assert (=> b!1119629 (=> (not res!747974) (not e!637659))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1119629 (= res!747974 (validKeyInArray!0 k!934))))

(declare-fun b!1119630 () Bool)

(declare-fun e!637664 () Bool)

(assert (=> b!1119630 (= e!637663 (and e!637664 mapRes!43912))))

(declare-fun condMapEmpty!43912 () Bool)

(declare-fun mapDefault!43912 () ValueCell!13322)

