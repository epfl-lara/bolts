; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97760 () Bool)

(assert start!97760)

(declare-fun b!1117330 () Bool)

(declare-fun res!746206 () Bool)

(declare-fun e!636543 () Bool)

(assert (=> b!1117330 (=> (not res!746206) (not e!636543))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!72744 0))(
  ( (array!72745 (arr!35021 (Array (_ BitVec 32) (_ BitVec 64))) (size!35558 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72744)

(assert (=> b!1117330 (= res!746206 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35558 _keys!1208))))))

(declare-fun res!746205 () Bool)

(assert (=> start!97760 (=> (not res!746205) (not e!636543))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97760 (= res!746205 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35558 _keys!1208))))))

(assert (=> start!97760 e!636543))

(declare-fun array_inv!26774 (array!72744) Bool)

(assert (=> start!97760 (array_inv!26774 _keys!1208)))

(assert (=> start!97760 true))

(declare-datatypes ((V!42401 0))(
  ( (V!42402 (val!14034 Int)) )
))
(declare-datatypes ((ValueCell!13268 0))(
  ( (ValueCellFull!13268 (v!16668 V!42401)) (EmptyCell!13268) )
))
(declare-datatypes ((array!72746 0))(
  ( (array!72747 (arr!35022 (Array (_ BitVec 32) ValueCell!13268)) (size!35559 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72746)

(declare-fun e!636542 () Bool)

(declare-fun array_inv!26775 (array!72746) Bool)

(assert (=> start!97760 (and (array_inv!26775 _values!996) e!636542)))

(declare-fun b!1117331 () Bool)

(declare-fun e!636541 () Bool)

(assert (=> b!1117331 (= e!636541 (not true))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72744 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1117331 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36577 0))(
  ( (Unit!36578) )
))
(declare-fun lt!497252 () Unit!36577)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72744 (_ BitVec 64) (_ BitVec 32)) Unit!36577)

(assert (=> b!1117331 (= lt!497252 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!43750 () Bool)

(declare-fun mapRes!43750 () Bool)

(assert (=> mapIsEmpty!43750 mapRes!43750))

(declare-fun b!1117332 () Bool)

(declare-fun res!746211 () Bool)

(assert (=> b!1117332 (=> (not res!746211) (not e!636543))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72744 (_ BitVec 32)) Bool)

(assert (=> b!1117332 (= res!746211 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1117333 () Bool)

(declare-fun e!636545 () Bool)

(declare-fun tp_is_empty!27955 () Bool)

(assert (=> b!1117333 (= e!636545 tp_is_empty!27955)))

(declare-fun b!1117334 () Bool)

(declare-fun res!746204 () Bool)

(assert (=> b!1117334 (=> (not res!746204) (not e!636543))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1117334 (= res!746204 (and (= (size!35559 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35558 _keys!1208) (size!35559 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1117335 () Bool)

(declare-fun res!746203 () Bool)

(assert (=> b!1117335 (=> (not res!746203) (not e!636543))))

(assert (=> b!1117335 (= res!746203 (= (select (arr!35021 _keys!1208) i!673) k!934))))

(declare-fun b!1117336 () Bool)

(declare-fun res!746208 () Bool)

(assert (=> b!1117336 (=> (not res!746208) (not e!636541))))

(declare-fun lt!497253 () array!72744)

(declare-datatypes ((List!24490 0))(
  ( (Nil!24487) (Cons!24486 (h!25695 (_ BitVec 64)) (t!34978 List!24490)) )
))
(declare-fun arrayNoDuplicates!0 (array!72744 (_ BitVec 32) List!24490) Bool)

(assert (=> b!1117336 (= res!746208 (arrayNoDuplicates!0 lt!497253 #b00000000000000000000000000000000 Nil!24487))))

(declare-fun b!1117337 () Bool)

(assert (=> b!1117337 (= e!636543 e!636541)))

(declare-fun res!746202 () Bool)

(assert (=> b!1117337 (=> (not res!746202) (not e!636541))))

(assert (=> b!1117337 (= res!746202 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497253 mask!1564))))

(assert (=> b!1117337 (= lt!497253 (array!72745 (store (arr!35021 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35558 _keys!1208)))))

(declare-fun b!1117338 () Bool)

(declare-fun res!746209 () Bool)

(assert (=> b!1117338 (=> (not res!746209) (not e!636543))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1117338 (= res!746209 (validKeyInArray!0 k!934))))

(declare-fun b!1117339 () Bool)

(declare-fun res!746210 () Bool)

(assert (=> b!1117339 (=> (not res!746210) (not e!636543))))

(assert (=> b!1117339 (= res!746210 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24487))))

(declare-fun b!1117340 () Bool)

(declare-fun e!636540 () Bool)

(assert (=> b!1117340 (= e!636540 tp_is_empty!27955)))

(declare-fun b!1117341 () Bool)

(assert (=> b!1117341 (= e!636542 (and e!636545 mapRes!43750))))

(declare-fun condMapEmpty!43750 () Bool)

(declare-fun mapDefault!43750 () ValueCell!13268)

