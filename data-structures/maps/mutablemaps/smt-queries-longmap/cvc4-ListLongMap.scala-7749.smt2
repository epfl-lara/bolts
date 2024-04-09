; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97278 () Bool)

(assert start!97278)

(declare-fun b!1106683 () Bool)

(declare-fun res!738657 () Bool)

(declare-fun e!631529 () Bool)

(assert (=> b!1106683 (=> (not res!738657) (not e!631529))))

(declare-datatypes ((array!71816 0))(
  ( (array!71817 (arr!34557 (Array (_ BitVec 32) (_ BitVec 64))) (size!35094 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71816)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!41757 0))(
  ( (V!41758 (val!13793 Int)) )
))
(declare-datatypes ((ValueCell!13027 0))(
  ( (ValueCellFull!13027 (v!16427 V!41757)) (EmptyCell!13027) )
))
(declare-datatypes ((array!71818 0))(
  ( (array!71819 (arr!34558 (Array (_ BitVec 32) ValueCell!13027)) (size!35095 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71818)

(assert (=> b!1106683 (= res!738657 (and (= (size!35095 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35094 _keys!1208) (size!35095 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!43027 () Bool)

(declare-fun mapRes!43027 () Bool)

(declare-fun tp!81948 () Bool)

(declare-fun e!631526 () Bool)

(assert (=> mapNonEmpty!43027 (= mapRes!43027 (and tp!81948 e!631526))))

(declare-fun mapValue!43027 () ValueCell!13027)

(declare-fun mapKey!43027 () (_ BitVec 32))

(declare-fun mapRest!43027 () (Array (_ BitVec 32) ValueCell!13027))

(assert (=> mapNonEmpty!43027 (= (arr!34558 _values!996) (store mapRest!43027 mapKey!43027 mapValue!43027))))

(declare-fun res!738652 () Bool)

(assert (=> start!97278 (=> (not res!738652) (not e!631529))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97278 (= res!738652 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35094 _keys!1208))))))

(assert (=> start!97278 e!631529))

(declare-fun array_inv!26458 (array!71816) Bool)

(assert (=> start!97278 (array_inv!26458 _keys!1208)))

(assert (=> start!97278 true))

(declare-fun e!631525 () Bool)

(declare-fun array_inv!26459 (array!71818) Bool)

(assert (=> start!97278 (and (array_inv!26459 _values!996) e!631525)))

(declare-fun b!1106684 () Bool)

(declare-fun res!738655 () Bool)

(assert (=> b!1106684 (=> (not res!738655) (not e!631529))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1106684 (= res!738655 (validMask!0 mask!1564))))

(declare-fun b!1106685 () Bool)

(declare-fun e!631528 () Bool)

(assert (=> b!1106685 (= e!631528 (not true))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!71816 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1106685 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36257 0))(
  ( (Unit!36258) )
))
(declare-fun lt!495483 () Unit!36257)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71816 (_ BitVec 64) (_ BitVec 32)) Unit!36257)

(assert (=> b!1106685 (= lt!495483 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1106686 () Bool)

(declare-fun res!738648 () Bool)

(assert (=> b!1106686 (=> (not res!738648) (not e!631528))))

(declare-fun lt!495482 () array!71816)

(declare-datatypes ((List!24222 0))(
  ( (Nil!24219) (Cons!24218 (h!25427 (_ BitVec 64)) (t!34494 List!24222)) )
))
(declare-fun arrayNoDuplicates!0 (array!71816 (_ BitVec 32) List!24222) Bool)

(assert (=> b!1106686 (= res!738648 (arrayNoDuplicates!0 lt!495482 #b00000000000000000000000000000000 Nil!24219))))

(declare-fun b!1106687 () Bool)

(declare-fun res!738649 () Bool)

(assert (=> b!1106687 (=> (not res!738649) (not e!631529))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71816 (_ BitVec 32)) Bool)

(assert (=> b!1106687 (= res!738649 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!43027 () Bool)

(assert (=> mapIsEmpty!43027 mapRes!43027))

(declare-fun b!1106688 () Bool)

(declare-fun e!631527 () Bool)

(declare-fun tp_is_empty!27473 () Bool)

(assert (=> b!1106688 (= e!631527 tp_is_empty!27473)))

(declare-fun b!1106689 () Bool)

(assert (=> b!1106689 (= e!631526 tp_is_empty!27473)))

(declare-fun b!1106690 () Bool)

(declare-fun res!738656 () Bool)

(assert (=> b!1106690 (=> (not res!738656) (not e!631529))))

(assert (=> b!1106690 (= res!738656 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35094 _keys!1208))))))

(declare-fun b!1106691 () Bool)

(assert (=> b!1106691 (= e!631525 (and e!631527 mapRes!43027))))

(declare-fun condMapEmpty!43027 () Bool)

(declare-fun mapDefault!43027 () ValueCell!13027)

