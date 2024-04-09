; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110624 () Bool)

(assert start!110624)

(declare-fun b_free!29423 () Bool)

(declare-fun b_next!29423 () Bool)

(assert (=> start!110624 (= b_free!29423 (not b_next!29423))))

(declare-fun tp!103591 () Bool)

(declare-fun b_and!47641 () Bool)

(assert (=> start!110624 (= tp!103591 b_and!47641)))

(declare-fun res!868556 () Bool)

(declare-fun e!746508 () Bool)

(assert (=> start!110624 (=> (not res!868556) (not e!746508))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110624 (= res!868556 (validMask!0 mask!2040))))

(assert (=> start!110624 e!746508))

(assert (=> start!110624 tp!103591))

(declare-datatypes ((array!87273 0))(
  ( (array!87274 (arr!42112 (Array (_ BitVec 32) (_ BitVec 64))) (size!42663 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87273)

(declare-fun array_inv!31829 (array!87273) Bool)

(assert (=> start!110624 (array_inv!31829 _keys!1628)))

(assert (=> start!110624 true))

(declare-fun tp_is_empty!35153 () Bool)

(assert (=> start!110624 tp_is_empty!35153))

(declare-datatypes ((V!51973 0))(
  ( (V!51974 (val!17651 Int)) )
))
(declare-datatypes ((ValueCell!16678 0))(
  ( (ValueCellFull!16678 (v!20276 V!51973)) (EmptyCell!16678) )
))
(declare-datatypes ((array!87275 0))(
  ( (array!87276 (arr!42113 (Array (_ BitVec 32) ValueCell!16678)) (size!42664 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87275)

(declare-fun e!746509 () Bool)

(declare-fun array_inv!31830 (array!87275) Bool)

(assert (=> start!110624 (and (array_inv!31830 _values!1354) e!746509)))

(declare-fun b!1308290 () Bool)

(declare-fun res!868558 () Bool)

(assert (=> b!1308290 (=> (not res!868558) (not e!746508))))

(declare-datatypes ((List!30064 0))(
  ( (Nil!30061) (Cons!30060 (h!31269 (_ BitVec 64)) (t!43677 List!30064)) )
))
(declare-fun arrayNoDuplicates!0 (array!87273 (_ BitVec 32) List!30064) Bool)

(assert (=> b!1308290 (= res!868558 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30061))))

(declare-fun b!1308291 () Bool)

(declare-fun res!868553 () Bool)

(assert (=> b!1308291 (=> (not res!868553) (not e!746508))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87273 (_ BitVec 32)) Bool)

(assert (=> b!1308291 (= res!868553 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1308292 () Bool)

(declare-fun res!868551 () Bool)

(assert (=> b!1308292 (=> (not res!868551) (not e!746508))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1308292 (= res!868551 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42663 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1308293 () Bool)

(declare-fun res!868557 () Bool)

(assert (=> b!1308293 (=> (not res!868557) (not e!746508))))

(assert (=> b!1308293 (= res!868557 (not (= (select (arr!42112 _keys!1628) from!2020) k!1175)))))

(declare-fun mapIsEmpty!54358 () Bool)

(declare-fun mapRes!54358 () Bool)

(assert (=> mapIsEmpty!54358 mapRes!54358))

(declare-fun mapNonEmpty!54358 () Bool)

(declare-fun tp!103592 () Bool)

(declare-fun e!746507 () Bool)

(assert (=> mapNonEmpty!54358 (= mapRes!54358 (and tp!103592 e!746507))))

(declare-fun mapValue!54358 () ValueCell!16678)

(declare-fun mapKey!54358 () (_ BitVec 32))

(declare-fun mapRest!54358 () (Array (_ BitVec 32) ValueCell!16678))

(assert (=> mapNonEmpty!54358 (= (arr!42113 _values!1354) (store mapRest!54358 mapKey!54358 mapValue!54358))))

(declare-fun b!1308294 () Bool)

(declare-fun res!868554 () Bool)

(assert (=> b!1308294 (=> (not res!868554) (not e!746508))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1308294 (= res!868554 (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1308295 () Bool)

(declare-fun e!746506 () Bool)

(assert (=> b!1308295 (= e!746509 (and e!746506 mapRes!54358))))

(declare-fun condMapEmpty!54358 () Bool)

(declare-fun mapDefault!54358 () ValueCell!16678)

