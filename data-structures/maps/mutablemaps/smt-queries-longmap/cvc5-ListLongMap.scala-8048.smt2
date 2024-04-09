; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99164 () Bool)

(assert start!99164)

(declare-fun b_free!24733 () Bool)

(declare-fun b_next!24733 () Bool)

(assert (=> start!99164 (= b_free!24733 (not b_next!24733))))

(declare-fun tp!86911 () Bool)

(declare-fun b_and!40329 () Bool)

(assert (=> start!99164 (= tp!86911 b_and!40329)))

(declare-fun b!1166215 () Bool)

(declare-fun e!662962 () Bool)

(declare-fun e!662964 () Bool)

(assert (=> b!1166215 (= e!662962 e!662964)))

(declare-fun res!773624 () Bool)

(assert (=> b!1166215 (=> (not res!773624) (not e!662964))))

(declare-datatypes ((array!75304 0))(
  ( (array!75305 (arr!36299 (Array (_ BitVec 32) (_ BitVec 64))) (size!36836 (_ BitVec 32))) )
))
(declare-fun lt!525141 () array!75304)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75304 (_ BitVec 32)) Bool)

(assert (=> b!1166215 (= res!773624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!525141 mask!1564))))

(declare-fun _keys!1208 () array!75304)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1166215 (= lt!525141 (array!75305 (store (arr!36299 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36836 _keys!1208)))))

(declare-fun b!1166216 () Bool)

(declare-fun e!662959 () Bool)

(declare-fun tp_is_empty!29263 () Bool)

(assert (=> b!1166216 (= e!662959 tp_is_empty!29263)))

(declare-fun b!1166217 () Bool)

(declare-fun res!773621 () Bool)

(assert (=> b!1166217 (=> (not res!773621) (not e!662964))))

(declare-datatypes ((List!25585 0))(
  ( (Nil!25582) (Cons!25581 (h!26790 (_ BitVec 64)) (t!37317 List!25585)) )
))
(declare-fun arrayNoDuplicates!0 (array!75304 (_ BitVec 32) List!25585) Bool)

(assert (=> b!1166217 (= res!773621 (arrayNoDuplicates!0 lt!525141 #b00000000000000000000000000000000 Nil!25582))))

(declare-fun mapIsEmpty!45719 () Bool)

(declare-fun mapRes!45719 () Bool)

(assert (=> mapIsEmpty!45719 mapRes!45719))

(declare-fun b!1166218 () Bool)

(declare-fun res!773622 () Bool)

(assert (=> b!1166218 (=> (not res!773622) (not e!662962))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!44145 0))(
  ( (V!44146 (val!14688 Int)) )
))
(declare-datatypes ((ValueCell!13922 0))(
  ( (ValueCellFull!13922 (v!17326 V!44145)) (EmptyCell!13922) )
))
(declare-datatypes ((array!75306 0))(
  ( (array!75307 (arr!36300 (Array (_ BitVec 32) ValueCell!13922)) (size!36837 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75306)

(assert (=> b!1166218 (= res!773622 (and (= (size!36837 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36836 _keys!1208) (size!36837 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1166219 () Bool)

(declare-fun res!773616 () Bool)

(assert (=> b!1166219 (=> (not res!773616) (not e!662962))))

(assert (=> b!1166219 (= res!773616 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1166220 () Bool)

(declare-fun res!773623 () Bool)

(assert (=> b!1166220 (=> (not res!773623) (not e!662962))))

(assert (=> b!1166220 (= res!773623 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25582))))

(declare-fun b!1166221 () Bool)

(declare-fun e!662963 () Bool)

(assert (=> b!1166221 (= e!662964 (not e!662963))))

(declare-fun res!773614 () Bool)

(assert (=> b!1166221 (=> res!773614 e!662963)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1166221 (= res!773614 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75304 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1166221 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38374 0))(
  ( (Unit!38375) )
))
(declare-fun lt!525139 () Unit!38374)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75304 (_ BitVec 64) (_ BitVec 32)) Unit!38374)

(assert (=> b!1166221 (= lt!525139 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1166222 () Bool)

(declare-fun res!773615 () Bool)

(assert (=> b!1166222 (=> (not res!773615) (not e!662962))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1166222 (= res!773615 (validMask!0 mask!1564))))

(declare-fun b!1166223 () Bool)

(declare-fun res!773619 () Bool)

(assert (=> b!1166223 (=> (not res!773619) (not e!662962))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1166223 (= res!773619 (validKeyInArray!0 k!934))))

(declare-fun res!773618 () Bool)

(assert (=> start!99164 (=> (not res!773618) (not e!662962))))

(assert (=> start!99164 (= res!773618 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36836 _keys!1208))))))

(assert (=> start!99164 e!662962))

(assert (=> start!99164 tp_is_empty!29263))

(declare-fun array_inv!27632 (array!75304) Bool)

(assert (=> start!99164 (array_inv!27632 _keys!1208)))

(assert (=> start!99164 true))

(assert (=> start!99164 tp!86911))

(declare-fun e!662961 () Bool)

(declare-fun array_inv!27633 (array!75306) Bool)

(assert (=> start!99164 (and (array_inv!27633 _values!996) e!662961)))

(declare-fun b!1166224 () Bool)

(declare-fun e!662960 () Bool)

(assert (=> b!1166224 (= e!662961 (and e!662960 mapRes!45719))))

(declare-fun condMapEmpty!45719 () Bool)

(declare-fun mapDefault!45719 () ValueCell!13922)

