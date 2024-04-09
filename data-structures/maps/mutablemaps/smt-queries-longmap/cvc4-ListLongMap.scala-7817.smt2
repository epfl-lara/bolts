; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97686 () Bool)

(assert start!97686)

(declare-fun mapIsEmpty!43639 () Bool)

(declare-fun mapRes!43639 () Bool)

(assert (=> mapIsEmpty!43639 mapRes!43639))

(declare-fun b!1115887 () Bool)

(declare-fun e!635878 () Bool)

(declare-fun tp_is_empty!27881 () Bool)

(assert (=> b!1115887 (= e!635878 tp_is_empty!27881)))

(declare-fun b!1115888 () Bool)

(declare-fun res!745092 () Bool)

(declare-fun e!635877 () Bool)

(assert (=> b!1115888 (=> (not res!745092) (not e!635877))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1115888 (= res!745092 (validMask!0 mask!1564))))

(declare-fun b!1115889 () Bool)

(declare-fun e!635875 () Bool)

(assert (=> b!1115889 (= e!635875 (not true))))

(declare-datatypes ((array!72602 0))(
  ( (array!72603 (arr!34950 (Array (_ BitVec 32) (_ BitVec 64))) (size!35487 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72602)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72602 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1115889 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!36521 0))(
  ( (Unit!36522) )
))
(declare-fun lt!497031 () Unit!36521)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72602 (_ BitVec 64) (_ BitVec 32)) Unit!36521)

(assert (=> b!1115889 (= lt!497031 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1115890 () Bool)

(declare-fun res!745097 () Bool)

(assert (=> b!1115890 (=> (not res!745097) (not e!635877))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72602 (_ BitVec 32)) Bool)

(assert (=> b!1115890 (= res!745097 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1115891 () Bool)

(declare-fun res!745098 () Bool)

(assert (=> b!1115891 (=> (not res!745098) (not e!635877))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1115891 (= res!745098 (validKeyInArray!0 k!934))))

(declare-fun b!1115892 () Bool)

(declare-fun res!745093 () Bool)

(assert (=> b!1115892 (=> (not res!745093) (not e!635877))))

(assert (=> b!1115892 (= res!745093 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35487 _keys!1208))))))

(declare-fun res!745095 () Bool)

(assert (=> start!97686 (=> (not res!745095) (not e!635877))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97686 (= res!745095 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35487 _keys!1208))))))

(assert (=> start!97686 e!635877))

(declare-fun array_inv!26722 (array!72602) Bool)

(assert (=> start!97686 (array_inv!26722 _keys!1208)))

(assert (=> start!97686 true))

(declare-datatypes ((V!42301 0))(
  ( (V!42302 (val!13997 Int)) )
))
(declare-datatypes ((ValueCell!13231 0))(
  ( (ValueCellFull!13231 (v!16631 V!42301)) (EmptyCell!13231) )
))
(declare-datatypes ((array!72604 0))(
  ( (array!72605 (arr!34951 (Array (_ BitVec 32) ValueCell!13231)) (size!35488 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72604)

(declare-fun e!635874 () Bool)

(declare-fun array_inv!26723 (array!72604) Bool)

(assert (=> start!97686 (and (array_inv!26723 _values!996) e!635874)))

(declare-fun b!1115893 () Bool)

(declare-fun res!745094 () Bool)

(assert (=> b!1115893 (=> (not res!745094) (not e!635877))))

(declare-datatypes ((List!24463 0))(
  ( (Nil!24460) (Cons!24459 (h!25668 (_ BitVec 64)) (t!34951 List!24463)) )
))
(declare-fun arrayNoDuplicates!0 (array!72602 (_ BitVec 32) List!24463) Bool)

(assert (=> b!1115893 (= res!745094 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24460))))

(declare-fun b!1115894 () Bool)

(declare-fun res!745099 () Bool)

(assert (=> b!1115894 (=> (not res!745099) (not e!635877))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1115894 (= res!745099 (and (= (size!35488 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35487 _keys!1208) (size!35488 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1115895 () Bool)

(declare-fun e!635879 () Bool)

(assert (=> b!1115895 (= e!635879 tp_is_empty!27881)))

(declare-fun b!1115896 () Bool)

(declare-fun res!745101 () Bool)

(assert (=> b!1115896 (=> (not res!745101) (not e!635875))))

(declare-fun lt!497030 () array!72602)

(assert (=> b!1115896 (= res!745101 (arrayNoDuplicates!0 lt!497030 #b00000000000000000000000000000000 Nil!24460))))

(declare-fun b!1115897 () Bool)

(declare-fun res!745100 () Bool)

(assert (=> b!1115897 (=> (not res!745100) (not e!635877))))

(assert (=> b!1115897 (= res!745100 (= (select (arr!34950 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!43639 () Bool)

(declare-fun tp!82884 () Bool)

(assert (=> mapNonEmpty!43639 (= mapRes!43639 (and tp!82884 e!635879))))

(declare-fun mapValue!43639 () ValueCell!13231)

(declare-fun mapKey!43639 () (_ BitVec 32))

(declare-fun mapRest!43639 () (Array (_ BitVec 32) ValueCell!13231))

(assert (=> mapNonEmpty!43639 (= (arr!34951 _values!996) (store mapRest!43639 mapKey!43639 mapValue!43639))))

(declare-fun b!1115898 () Bool)

(assert (=> b!1115898 (= e!635874 (and e!635878 mapRes!43639))))

(declare-fun condMapEmpty!43639 () Bool)

(declare-fun mapDefault!43639 () ValueCell!13231)

