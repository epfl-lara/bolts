; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97682 () Bool)

(assert start!97682)

(declare-fun mapIsEmpty!43633 () Bool)

(declare-fun mapRes!43633 () Bool)

(assert (=> mapIsEmpty!43633 mapRes!43633))

(declare-fun b!1115809 () Bool)

(declare-fun res!745037 () Bool)

(declare-fun e!635843 () Bool)

(assert (=> b!1115809 (=> (not res!745037) (not e!635843))))

(declare-datatypes ((array!72594 0))(
  ( (array!72595 (arr!34946 (Array (_ BitVec 32) (_ BitVec 64))) (size!35483 (_ BitVec 32))) )
))
(declare-fun lt!497018 () array!72594)

(declare-datatypes ((List!24461 0))(
  ( (Nil!24458) (Cons!24457 (h!25666 (_ BitVec 64)) (t!34949 List!24461)) )
))
(declare-fun arrayNoDuplicates!0 (array!72594 (_ BitVec 32) List!24461) Bool)

(assert (=> b!1115809 (= res!745037 (arrayNoDuplicates!0 lt!497018 #b00000000000000000000000000000000 Nil!24458))))

(declare-fun b!1115810 () Bool)

(declare-fun e!635840 () Bool)

(declare-fun tp_is_empty!27877 () Bool)

(assert (=> b!1115810 (= e!635840 tp_is_empty!27877)))

(declare-fun res!745038 () Bool)

(declare-fun e!635841 () Bool)

(assert (=> start!97682 (=> (not res!745038) (not e!635841))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun _keys!1208 () array!72594)

(assert (=> start!97682 (= res!745038 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35483 _keys!1208))))))

(assert (=> start!97682 e!635841))

(declare-fun array_inv!26718 (array!72594) Bool)

(assert (=> start!97682 (array_inv!26718 _keys!1208)))

(assert (=> start!97682 true))

(declare-datatypes ((V!42297 0))(
  ( (V!42298 (val!13995 Int)) )
))
(declare-datatypes ((ValueCell!13229 0))(
  ( (ValueCellFull!13229 (v!16629 V!42297)) (EmptyCell!13229) )
))
(declare-datatypes ((array!72596 0))(
  ( (array!72597 (arr!34947 (Array (_ BitVec 32) ValueCell!13229)) (size!35484 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72596)

(declare-fun e!635842 () Bool)

(declare-fun array_inv!26719 (array!72596) Bool)

(assert (=> start!97682 (and (array_inv!26719 _values!996) e!635842)))

(declare-fun mapNonEmpty!43633 () Bool)

(declare-fun tp!82878 () Bool)

(assert (=> mapNonEmpty!43633 (= mapRes!43633 (and tp!82878 e!635840))))

(declare-fun mapValue!43633 () ValueCell!13229)

(declare-fun mapKey!43633 () (_ BitVec 32))

(declare-fun mapRest!43633 () (Array (_ BitVec 32) ValueCell!13229))

(assert (=> mapNonEmpty!43633 (= (arr!34947 _values!996) (store mapRest!43633 mapKey!43633 mapValue!43633))))

(declare-fun b!1115811 () Bool)

(declare-fun res!745035 () Bool)

(assert (=> b!1115811 (=> (not res!745035) (not e!635841))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1115811 (= res!745035 (validKeyInArray!0 k!934))))

(declare-fun b!1115812 () Bool)

(declare-fun res!745034 () Bool)

(assert (=> b!1115812 (=> (not res!745034) (not e!635841))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1115812 (= res!745034 (= (select (arr!34946 _keys!1208) i!673) k!934))))

(declare-fun b!1115813 () Bool)

(assert (=> b!1115813 (= e!635841 e!635843)))

(declare-fun res!745033 () Bool)

(assert (=> b!1115813 (=> (not res!745033) (not e!635843))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72594 (_ BitVec 32)) Bool)

(assert (=> b!1115813 (= res!745033 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497018 mask!1564))))

(assert (=> b!1115813 (= lt!497018 (array!72595 (store (arr!34946 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35483 _keys!1208)))))

(declare-fun b!1115814 () Bool)

(assert (=> b!1115814 (= e!635843 (not true))))

(declare-fun arrayContainsKey!0 (array!72594 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1115814 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36517 0))(
  ( (Unit!36518) )
))
(declare-fun lt!497019 () Unit!36517)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72594 (_ BitVec 64) (_ BitVec 32)) Unit!36517)

(assert (=> b!1115814 (= lt!497019 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1115815 () Bool)

(declare-fun e!635838 () Bool)

(assert (=> b!1115815 (= e!635838 tp_is_empty!27877)))

(declare-fun b!1115816 () Bool)

(declare-fun res!745039 () Bool)

(assert (=> b!1115816 (=> (not res!745039) (not e!635841))))

(assert (=> b!1115816 (= res!745039 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24458))))

(declare-fun b!1115817 () Bool)

(declare-fun res!745036 () Bool)

(assert (=> b!1115817 (=> (not res!745036) (not e!635841))))

(assert (=> b!1115817 (= res!745036 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1115818 () Bool)

(assert (=> b!1115818 (= e!635842 (and e!635838 mapRes!43633))))

(declare-fun condMapEmpty!43633 () Bool)

(declare-fun mapDefault!43633 () ValueCell!13229)

