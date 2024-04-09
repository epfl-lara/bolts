; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97596 () Bool)

(assert start!97596)

(declare-fun b!1114132 () Bool)

(declare-fun e!635065 () Bool)

(declare-fun tp_is_empty!27791 () Bool)

(assert (=> b!1114132 (= e!635065 tp_is_empty!27791)))

(declare-fun b!1114133 () Bool)

(declare-fun res!743742 () Bool)

(declare-fun e!635066 () Bool)

(assert (=> b!1114133 (=> (not res!743742) (not e!635066))))

(declare-datatypes ((array!72430 0))(
  ( (array!72431 (arr!34864 (Array (_ BitVec 32) (_ BitVec 64))) (size!35401 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72430)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72430 (_ BitVec 32)) Bool)

(assert (=> b!1114133 (= res!743742 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1114135 () Bool)

(declare-fun e!635069 () Bool)

(assert (=> b!1114135 (= e!635066 e!635069)))

(declare-fun res!743751 () Bool)

(assert (=> b!1114135 (=> (not res!743751) (not e!635069))))

(declare-fun lt!496761 () array!72430)

(assert (=> b!1114135 (= res!743751 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496761 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1114135 (= lt!496761 (array!72431 (store (arr!34864 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35401 _keys!1208)))))

(declare-fun b!1114136 () Bool)

(declare-fun res!743743 () Bool)

(assert (=> b!1114136 (=> (not res!743743) (not e!635066))))

(declare-datatypes ((List!24430 0))(
  ( (Nil!24427) (Cons!24426 (h!25635 (_ BitVec 64)) (t!34918 List!24430)) )
))
(declare-fun arrayNoDuplicates!0 (array!72430 (_ BitVec 32) List!24430) Bool)

(assert (=> b!1114136 (= res!743743 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24427))))

(declare-fun mapIsEmpty!43504 () Bool)

(declare-fun mapRes!43504 () Bool)

(assert (=> mapIsEmpty!43504 mapRes!43504))

(declare-fun b!1114137 () Bool)

(declare-fun res!743747 () Bool)

(assert (=> b!1114137 (=> (not res!743747) (not e!635066))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1114137 (= res!743747 (= (select (arr!34864 _keys!1208) i!673) k!934))))

(declare-fun b!1114138 () Bool)

(declare-fun e!635067 () Bool)

(assert (=> b!1114138 (= e!635067 tp_is_empty!27791)))

(declare-fun b!1114139 () Bool)

(declare-fun res!743748 () Bool)

(assert (=> b!1114139 (=> (not res!743748) (not e!635066))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!42181 0))(
  ( (V!42182 (val!13952 Int)) )
))
(declare-datatypes ((ValueCell!13186 0))(
  ( (ValueCellFull!13186 (v!16586 V!42181)) (EmptyCell!13186) )
))
(declare-datatypes ((array!72432 0))(
  ( (array!72433 (arr!34865 (Array (_ BitVec 32) ValueCell!13186)) (size!35402 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72432)

(assert (=> b!1114139 (= res!743748 (and (= (size!35402 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35401 _keys!1208) (size!35402 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1114140 () Bool)

(assert (=> b!1114140 (= e!635069 (not true))))

(declare-fun arrayContainsKey!0 (array!72430 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1114140 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36473 0))(
  ( (Unit!36474) )
))
(declare-fun lt!496760 () Unit!36473)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72430 (_ BitVec 64) (_ BitVec 32)) Unit!36473)

(assert (=> b!1114140 (= lt!496760 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1114141 () Bool)

(declare-fun res!743749 () Bool)

(assert (=> b!1114141 (=> (not res!743749) (not e!635066))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1114141 (= res!743749 (validKeyInArray!0 k!934))))

(declare-fun b!1114134 () Bool)

(declare-fun res!743750 () Bool)

(assert (=> b!1114134 (=> (not res!743750) (not e!635066))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1114134 (= res!743750 (validMask!0 mask!1564))))

(declare-fun res!743746 () Bool)

(assert (=> start!97596 (=> (not res!743746) (not e!635066))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97596 (= res!743746 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35401 _keys!1208))))))

(assert (=> start!97596 e!635066))

(declare-fun array_inv!26670 (array!72430) Bool)

(assert (=> start!97596 (array_inv!26670 _keys!1208)))

(assert (=> start!97596 true))

(declare-fun e!635064 () Bool)

(declare-fun array_inv!26671 (array!72432) Bool)

(assert (=> start!97596 (and (array_inv!26671 _values!996) e!635064)))

(declare-fun mapNonEmpty!43504 () Bool)

(declare-fun tp!82749 () Bool)

(assert (=> mapNonEmpty!43504 (= mapRes!43504 (and tp!82749 e!635067))))

(declare-fun mapRest!43504 () (Array (_ BitVec 32) ValueCell!13186))

(declare-fun mapValue!43504 () ValueCell!13186)

(declare-fun mapKey!43504 () (_ BitVec 32))

(assert (=> mapNonEmpty!43504 (= (arr!34865 _values!996) (store mapRest!43504 mapKey!43504 mapValue!43504))))

(declare-fun b!1114142 () Bool)

(declare-fun res!743744 () Bool)

(assert (=> b!1114142 (=> (not res!743744) (not e!635066))))

(assert (=> b!1114142 (= res!743744 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35401 _keys!1208))))))

(declare-fun b!1114143 () Bool)

(assert (=> b!1114143 (= e!635064 (and e!635065 mapRes!43504))))

(declare-fun condMapEmpty!43504 () Bool)

(declare-fun mapDefault!43504 () ValueCell!13186)

