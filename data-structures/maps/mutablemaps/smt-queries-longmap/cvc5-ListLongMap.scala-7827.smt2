; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97742 () Bool)

(assert start!97742)

(declare-fun b!1116979 () Bool)

(declare-fun e!636383 () Bool)

(declare-fun tp_is_empty!27937 () Bool)

(assert (=> b!1116979 (= e!636383 tp_is_empty!27937)))

(declare-fun mapNonEmpty!43723 () Bool)

(declare-fun mapRes!43723 () Bool)

(declare-fun tp!82968 () Bool)

(declare-fun e!636379 () Bool)

(assert (=> mapNonEmpty!43723 (= mapRes!43723 (and tp!82968 e!636379))))

(declare-datatypes ((V!42377 0))(
  ( (V!42378 (val!14025 Int)) )
))
(declare-datatypes ((ValueCell!13259 0))(
  ( (ValueCellFull!13259 (v!16659 V!42377)) (EmptyCell!13259) )
))
(declare-fun mapRest!43723 () (Array (_ BitVec 32) ValueCell!13259))

(declare-fun mapValue!43723 () ValueCell!13259)

(declare-fun mapKey!43723 () (_ BitVec 32))

(declare-datatypes ((array!72710 0))(
  ( (array!72711 (arr!35004 (Array (_ BitVec 32) ValueCell!13259)) (size!35541 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72710)

(assert (=> mapNonEmpty!43723 (= (arr!35004 _values!996) (store mapRest!43723 mapKey!43723 mapValue!43723))))

(declare-fun b!1116980 () Bool)

(declare-fun e!636381 () Bool)

(declare-fun e!636382 () Bool)

(assert (=> b!1116980 (= e!636381 e!636382)))

(declare-fun res!745936 () Bool)

(assert (=> b!1116980 (=> (not res!745936) (not e!636382))))

(declare-datatypes ((array!72712 0))(
  ( (array!72713 (arr!35005 (Array (_ BitVec 32) (_ BitVec 64))) (size!35542 (_ BitVec 32))) )
))
(declare-fun lt!497199 () array!72712)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72712 (_ BitVec 32)) Bool)

(assert (=> b!1116980 (= res!745936 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497199 mask!1564))))

(declare-fun _keys!1208 () array!72712)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1116980 (= lt!497199 (array!72713 (store (arr!35005 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35542 _keys!1208)))))

(declare-fun b!1116981 () Bool)

(declare-fun res!745933 () Bool)

(assert (=> b!1116981 (=> (not res!745933) (not e!636382))))

(declare-datatypes ((List!24484 0))(
  ( (Nil!24481) (Cons!24480 (h!25689 (_ BitVec 64)) (t!34972 List!24484)) )
))
(declare-fun arrayNoDuplicates!0 (array!72712 (_ BitVec 32) List!24484) Bool)

(assert (=> b!1116981 (= res!745933 (arrayNoDuplicates!0 lt!497199 #b00000000000000000000000000000000 Nil!24481))))

(declare-fun b!1116982 () Bool)

(declare-fun res!745941 () Bool)

(assert (=> b!1116982 (=> (not res!745941) (not e!636381))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1116982 (= res!745941 (validKeyInArray!0 k!934))))

(declare-fun b!1116983 () Bool)

(declare-fun res!745932 () Bool)

(assert (=> b!1116983 (=> (not res!745932) (not e!636381))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1116983 (= res!745932 (and (= (size!35541 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35542 _keys!1208) (size!35541 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1116984 () Bool)

(declare-fun res!745940 () Bool)

(assert (=> b!1116984 (=> (not res!745940) (not e!636381))))

(assert (=> b!1116984 (= res!745940 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24481))))

(declare-fun b!1116985 () Bool)

(assert (=> b!1116985 (= e!636382 (not true))))

(declare-fun arrayContainsKey!0 (array!72712 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1116985 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36563 0))(
  ( (Unit!36564) )
))
(declare-fun lt!497198 () Unit!36563)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72712 (_ BitVec 64) (_ BitVec 32)) Unit!36563)

(assert (=> b!1116985 (= lt!497198 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1116986 () Bool)

(declare-fun res!745939 () Bool)

(assert (=> b!1116986 (=> (not res!745939) (not e!636381))))

(assert (=> b!1116986 (= res!745939 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35542 _keys!1208))))))

(declare-fun mapIsEmpty!43723 () Bool)

(assert (=> mapIsEmpty!43723 mapRes!43723))

(declare-fun b!1116987 () Bool)

(declare-fun res!745938 () Bool)

(assert (=> b!1116987 (=> (not res!745938) (not e!636381))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1116987 (= res!745938 (validMask!0 mask!1564))))

(declare-fun res!745935 () Bool)

(assert (=> start!97742 (=> (not res!745935) (not e!636381))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97742 (= res!745935 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35542 _keys!1208))))))

(assert (=> start!97742 e!636381))

(declare-fun array_inv!26762 (array!72712) Bool)

(assert (=> start!97742 (array_inv!26762 _keys!1208)))

(assert (=> start!97742 true))

(declare-fun e!636378 () Bool)

(declare-fun array_inv!26763 (array!72710) Bool)

(assert (=> start!97742 (and (array_inv!26763 _values!996) e!636378)))

(declare-fun b!1116988 () Bool)

(assert (=> b!1116988 (= e!636379 tp_is_empty!27937)))

(declare-fun b!1116989 () Bool)

(declare-fun res!745934 () Bool)

(assert (=> b!1116989 (=> (not res!745934) (not e!636381))))

(assert (=> b!1116989 (= res!745934 (= (select (arr!35005 _keys!1208) i!673) k!934))))

(declare-fun b!1116990 () Bool)

(assert (=> b!1116990 (= e!636378 (and e!636383 mapRes!43723))))

(declare-fun condMapEmpty!43723 () Bool)

(declare-fun mapDefault!43723 () ValueCell!13259)

