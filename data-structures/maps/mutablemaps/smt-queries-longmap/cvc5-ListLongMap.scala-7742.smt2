; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97232 () Bool)

(assert start!97232)

(declare-fun b!1105786 () Bool)

(declare-fun e!631115 () Bool)

(declare-fun tp_is_empty!27427 () Bool)

(assert (=> b!1105786 (= e!631115 tp_is_empty!27427)))

(declare-fun mapNonEmpty!42958 () Bool)

(declare-fun mapRes!42958 () Bool)

(declare-fun tp!81879 () Bool)

(declare-fun e!631112 () Bool)

(assert (=> mapNonEmpty!42958 (= mapRes!42958 (and tp!81879 e!631112))))

(declare-datatypes ((V!41697 0))(
  ( (V!41698 (val!13770 Int)) )
))
(declare-datatypes ((ValueCell!13004 0))(
  ( (ValueCellFull!13004 (v!16404 V!41697)) (EmptyCell!13004) )
))
(declare-fun mapRest!42958 () (Array (_ BitVec 32) ValueCell!13004))

(declare-fun mapKey!42958 () (_ BitVec 32))

(declare-fun mapValue!42958 () ValueCell!13004)

(declare-datatypes ((array!71726 0))(
  ( (array!71727 (arr!34512 (Array (_ BitVec 32) ValueCell!13004)) (size!35049 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71726)

(assert (=> mapNonEmpty!42958 (= (arr!34512 _values!996) (store mapRest!42958 mapKey!42958 mapValue!42958))))

(declare-fun b!1105787 () Bool)

(assert (=> b!1105787 (= e!631112 tp_is_empty!27427)))

(declare-fun b!1105788 () Bool)

(declare-fun res!737964 () Bool)

(declare-fun e!631113 () Bool)

(assert (=> b!1105788 (=> (not res!737964) (not e!631113))))

(declare-datatypes ((array!71728 0))(
  ( (array!71729 (arr!34513 (Array (_ BitVec 32) (_ BitVec 64))) (size!35050 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71728)

(declare-datatypes ((List!24201 0))(
  ( (Nil!24198) (Cons!24197 (h!25406 (_ BitVec 64)) (t!34473 List!24201)) )
))
(declare-fun arrayNoDuplicates!0 (array!71728 (_ BitVec 32) List!24201) Bool)

(assert (=> b!1105788 (= res!737964 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24198))))

(declare-fun mapIsEmpty!42958 () Bool)

(assert (=> mapIsEmpty!42958 mapRes!42958))

(declare-fun b!1105789 () Bool)

(declare-fun res!737960 () Bool)

(assert (=> b!1105789 (=> (not res!737960) (not e!631113))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1105789 (= res!737960 (validMask!0 mask!1564))))

(declare-fun b!1105791 () Bool)

(declare-fun e!631111 () Bool)

(assert (=> b!1105791 (= e!631113 e!631111)))

(declare-fun res!737958 () Bool)

(assert (=> b!1105791 (=> (not res!737958) (not e!631111))))

(declare-fun lt!495345 () array!71728)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71728 (_ BitVec 32)) Bool)

(assert (=> b!1105791 (= res!737958 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495345 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1105791 (= lt!495345 (array!71729 (store (arr!34513 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35050 _keys!1208)))))

(declare-fun b!1105792 () Bool)

(declare-fun res!737966 () Bool)

(assert (=> b!1105792 (=> (not res!737966) (not e!631111))))

(assert (=> b!1105792 (= res!737966 (arrayNoDuplicates!0 lt!495345 #b00000000000000000000000000000000 Nil!24198))))

(declare-fun b!1105793 () Bool)

(declare-fun res!737959 () Bool)

(assert (=> b!1105793 (=> (not res!737959) (not e!631113))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1105793 (= res!737959 (and (= (size!35049 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35050 _keys!1208) (size!35049 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1105794 () Bool)

(declare-fun res!737961 () Bool)

(assert (=> b!1105794 (=> (not res!737961) (not e!631113))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1105794 (= res!737961 (validKeyInArray!0 k!934))))

(declare-fun b!1105795 () Bool)

(declare-fun res!737963 () Bool)

(assert (=> b!1105795 (=> (not res!737963) (not e!631113))))

(assert (=> b!1105795 (= res!737963 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1105796 () Bool)

(declare-fun res!737967 () Bool)

(assert (=> b!1105796 (=> (not res!737967) (not e!631113))))

(assert (=> b!1105796 (= res!737967 (= (select (arr!34513 _keys!1208) i!673) k!934))))

(declare-fun b!1105797 () Bool)

(assert (=> b!1105797 (= e!631111 (not true))))

(declare-fun arrayContainsKey!0 (array!71728 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1105797 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36221 0))(
  ( (Unit!36222) )
))
(declare-fun lt!495344 () Unit!36221)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71728 (_ BitVec 64) (_ BitVec 32)) Unit!36221)

(assert (=> b!1105797 (= lt!495344 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1105798 () Bool)

(declare-fun res!737965 () Bool)

(assert (=> b!1105798 (=> (not res!737965) (not e!631113))))

(assert (=> b!1105798 (= res!737965 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35050 _keys!1208))))))

(declare-fun res!737962 () Bool)

(assert (=> start!97232 (=> (not res!737962) (not e!631113))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97232 (= res!737962 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35050 _keys!1208))))))

(assert (=> start!97232 e!631113))

(declare-fun array_inv!26422 (array!71728) Bool)

(assert (=> start!97232 (array_inv!26422 _keys!1208)))

(assert (=> start!97232 true))

(declare-fun e!631110 () Bool)

(declare-fun array_inv!26423 (array!71726) Bool)

(assert (=> start!97232 (and (array_inv!26423 _values!996) e!631110)))

(declare-fun b!1105790 () Bool)

(assert (=> b!1105790 (= e!631110 (and e!631115 mapRes!42958))))

(declare-fun condMapEmpty!42958 () Bool)

(declare-fun mapDefault!42958 () ValueCell!13004)

