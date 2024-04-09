; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97848 () Bool)

(assert start!97848)

(declare-fun b_free!23513 () Bool)

(declare-fun b_next!23513 () Bool)

(assert (=> start!97848 (= b_free!23513 (not b_next!23513))))

(declare-fun tp!83244 () Bool)

(declare-fun b_and!37831 () Bool)

(assert (=> start!97848 (= tp!83244 b_and!37831)))

(declare-fun b!1119184 () Bool)

(declare-fun res!747638 () Bool)

(declare-fun e!637450 () Bool)

(assert (=> b!1119184 (=> (not res!747638) (not e!637450))))

(declare-datatypes ((array!72914 0))(
  ( (array!72915 (arr!35106 (Array (_ BitVec 32) (_ BitVec 64))) (size!35643 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72914)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72914 (_ BitVec 32)) Bool)

(assert (=> b!1119184 (= res!747638 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!747643 () Bool)

(assert (=> start!97848 (=> (not res!747643) (not e!637450))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97848 (= res!747643 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35643 _keys!1208))))))

(assert (=> start!97848 e!637450))

(declare-fun tp_is_empty!28043 () Bool)

(assert (=> start!97848 tp_is_empty!28043))

(declare-fun array_inv!26834 (array!72914) Bool)

(assert (=> start!97848 (array_inv!26834 _keys!1208)))

(assert (=> start!97848 true))

(assert (=> start!97848 tp!83244))

(declare-datatypes ((V!42517 0))(
  ( (V!42518 (val!14078 Int)) )
))
(declare-datatypes ((ValueCell!13312 0))(
  ( (ValueCellFull!13312 (v!16712 V!42517)) (EmptyCell!13312) )
))
(declare-datatypes ((array!72916 0))(
  ( (array!72917 (arr!35107 (Array (_ BitVec 32) ValueCell!13312)) (size!35644 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72916)

(declare-fun e!637454 () Bool)

(declare-fun array_inv!26835 (array!72916) Bool)

(assert (=> start!97848 (and (array_inv!26835 _values!996) e!637454)))

(declare-fun b!1119185 () Bool)

(declare-fun e!637449 () Bool)

(declare-fun e!637453 () Bool)

(assert (=> b!1119185 (= e!637449 (not e!637453))))

(declare-fun res!747642 () Bool)

(assert (=> b!1119185 (=> res!747642 e!637453)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1119185 (= res!747642 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72914 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1119185 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36641 0))(
  ( (Unit!36642) )
))
(declare-fun lt!497669 () Unit!36641)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72914 (_ BitVec 64) (_ BitVec 32)) Unit!36641)

(assert (=> b!1119185 (= lt!497669 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1119186 () Bool)

(declare-fun e!637448 () Bool)

(assert (=> b!1119186 (= e!637448 tp_is_empty!28043)))

(declare-fun b!1119187 () Bool)

(declare-fun res!747640 () Bool)

(assert (=> b!1119187 (=> (not res!747640) (not e!637449))))

(declare-fun lt!497668 () array!72914)

(declare-datatypes ((List!24551 0))(
  ( (Nil!24548) (Cons!24547 (h!25756 (_ BitVec 64)) (t!35063 List!24551)) )
))
(declare-fun arrayNoDuplicates!0 (array!72914 (_ BitVec 32) List!24551) Bool)

(assert (=> b!1119187 (= res!747640 (arrayNoDuplicates!0 lt!497668 #b00000000000000000000000000000000 Nil!24548))))

(declare-fun b!1119188 () Bool)

(declare-fun res!747644 () Bool)

(assert (=> b!1119188 (=> (not res!747644) (not e!637450))))

(assert (=> b!1119188 (= res!747644 (= (select (arr!35106 _keys!1208) i!673) k!934))))

(declare-fun b!1119189 () Bool)

(declare-fun res!747641 () Bool)

(assert (=> b!1119189 (=> (not res!747641) (not e!637450))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1119189 (= res!747641 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!43882 () Bool)

(declare-fun mapRes!43882 () Bool)

(assert (=> mapIsEmpty!43882 mapRes!43882))

(declare-fun b!1119190 () Bool)

(assert (=> b!1119190 (= e!637453 true)))

(declare-fun zeroValue!944 () V!42517)

(declare-datatypes ((tuple2!17714 0))(
  ( (tuple2!17715 (_1!8867 (_ BitVec 64)) (_2!8867 V!42517)) )
))
(declare-datatypes ((List!24552 0))(
  ( (Nil!24549) (Cons!24548 (h!25757 tuple2!17714) (t!35064 List!24552)) )
))
(declare-datatypes ((ListLongMap!15695 0))(
  ( (ListLongMap!15696 (toList!7863 List!24552)) )
))
(declare-fun lt!497667 () ListLongMap!15695)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun minValue!944 () V!42517)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4324 (array!72914 array!72916 (_ BitVec 32) (_ BitVec 32) V!42517 V!42517 (_ BitVec 32) Int) ListLongMap!15695)

(declare-fun dynLambda!2426 (Int (_ BitVec 64)) V!42517)

(assert (=> b!1119190 (= lt!497667 (getCurrentListMapNoExtraKeys!4324 lt!497668 (array!72917 (store (arr!35107 _values!996) i!673 (ValueCellFull!13312 (dynLambda!2426 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35644 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!497670 () ListLongMap!15695)

(assert (=> b!1119190 (= lt!497670 (getCurrentListMapNoExtraKeys!4324 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1119191 () Bool)

(assert (=> b!1119191 (= e!637450 e!637449)))

(declare-fun res!747646 () Bool)

(assert (=> b!1119191 (=> (not res!747646) (not e!637449))))

(assert (=> b!1119191 (= res!747646 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497668 mask!1564))))

(assert (=> b!1119191 (= lt!497668 (array!72915 (store (arr!35106 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35643 _keys!1208)))))

(declare-fun b!1119192 () Bool)

(declare-fun res!747639 () Bool)

(assert (=> b!1119192 (=> (not res!747639) (not e!637450))))

(assert (=> b!1119192 (= res!747639 (and (= (size!35644 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35643 _keys!1208) (size!35644 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1119193 () Bool)

(assert (=> b!1119193 (= e!637454 (and e!637448 mapRes!43882))))

(declare-fun condMapEmpty!43882 () Bool)

(declare-fun mapDefault!43882 () ValueCell!13312)

