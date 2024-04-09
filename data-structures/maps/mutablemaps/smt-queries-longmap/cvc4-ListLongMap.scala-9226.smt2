; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110744 () Bool)

(assert start!110744)

(declare-fun b_free!29543 () Bool)

(declare-fun b_next!29543 () Bool)

(assert (=> start!110744 (= b_free!29543 (not b_next!29543))))

(declare-fun tp!103952 () Bool)

(declare-fun b_and!47761 () Bool)

(assert (=> start!110744 (= tp!103952 b_and!47761)))

(declare-fun b!1310018 () Bool)

(declare-fun e!747407 () Bool)

(assert (=> b!1310018 (= e!747407 (not true))))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87501 0))(
  ( (array!87502 (arr!42226 (Array (_ BitVec 32) (_ BitVec 64))) (size!42777 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87501)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!52133 0))(
  ( (V!52134 (val!17711 Int)) )
))
(declare-fun minValue!1296 () V!52133)

(declare-datatypes ((ValueCell!16738 0))(
  ( (ValueCellFull!16738 (v!20336 V!52133)) (EmptyCell!16738) )
))
(declare-datatypes ((array!87503 0))(
  ( (array!87504 (arr!42227 (Array (_ BitVec 32) ValueCell!16738)) (size!42778 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87503)

(declare-fun zeroValue!1296 () V!52133)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!22984 0))(
  ( (tuple2!22985 (_1!11502 (_ BitVec 64)) (_2!11502 V!52133)) )
))
(declare-datatypes ((List!30150 0))(
  ( (Nil!30147) (Cons!30146 (h!31355 tuple2!22984) (t!43763 List!30150)) )
))
(declare-datatypes ((ListLongMap!20653 0))(
  ( (ListLongMap!20654 (toList!10342 List!30150)) )
))
(declare-fun contains!8428 (ListLongMap!20653 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5298 (array!87501 array!87503 (_ BitVec 32) (_ BitVec 32) V!52133 V!52133 (_ BitVec 32) Int) ListLongMap!20653)

(assert (=> b!1310018 (contains!8428 (getCurrentListMap!5298 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k!1175)))

(declare-datatypes ((Unit!43274 0))(
  ( (Unit!43275) )
))
(declare-fun lt!585265 () Unit!43274)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!11 (array!87501 array!87503 (_ BitVec 32) (_ BitVec 32) V!52133 V!52133 (_ BitVec 64) (_ BitVec 32) Int) Unit!43274)

(assert (=> b!1310018 (= lt!585265 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!11 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k!1175 from!2020 defaultEntry!1357))))

(declare-fun mapIsEmpty!54538 () Bool)

(declare-fun mapRes!54538 () Bool)

(assert (=> mapIsEmpty!54538 mapRes!54538))

(declare-fun b!1310019 () Bool)

(declare-fun res!869744 () Bool)

(assert (=> b!1310019 (=> (not res!869744) (not e!747407))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1310019 (= res!869744 (validKeyInArray!0 (select (arr!42226 _keys!1628) from!2020)))))

(declare-fun b!1310020 () Bool)

(declare-fun res!869740 () Bool)

(assert (=> b!1310020 (=> (not res!869740) (not e!747407))))

(assert (=> b!1310020 (= res!869740 (contains!8428 (getCurrentListMap!5298 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun mapNonEmpty!54538 () Bool)

(declare-fun tp!103951 () Bool)

(declare-fun e!747409 () Bool)

(assert (=> mapNonEmpty!54538 (= mapRes!54538 (and tp!103951 e!747409))))

(declare-fun mapRest!54538 () (Array (_ BitVec 32) ValueCell!16738))

(declare-fun mapKey!54538 () (_ BitVec 32))

(declare-fun mapValue!54538 () ValueCell!16738)

(assert (=> mapNonEmpty!54538 (= (arr!42227 _values!1354) (store mapRest!54538 mapKey!54538 mapValue!54538))))

(declare-fun b!1310021 () Bool)

(declare-fun tp_is_empty!35273 () Bool)

(assert (=> b!1310021 (= e!747409 tp_is_empty!35273)))

(declare-fun b!1310022 () Bool)

(declare-fun res!869745 () Bool)

(assert (=> b!1310022 (=> (not res!869745) (not e!747407))))

(declare-datatypes ((List!30151 0))(
  ( (Nil!30148) (Cons!30147 (h!31356 (_ BitVec 64)) (t!43764 List!30151)) )
))
(declare-fun arrayNoDuplicates!0 (array!87501 (_ BitVec 32) List!30151) Bool)

(assert (=> b!1310022 (= res!869745 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30148))))

(declare-fun b!1310023 () Bool)

(declare-fun res!869742 () Bool)

(assert (=> b!1310023 (=> (not res!869742) (not e!747407))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87501 (_ BitVec 32)) Bool)

(assert (=> b!1310023 (= res!869742 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1310024 () Bool)

(declare-fun res!869743 () Bool)

(assert (=> b!1310024 (=> (not res!869743) (not e!747407))))

(assert (=> b!1310024 (= res!869743 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42777 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1310025 () Bool)

(declare-fun e!747410 () Bool)

(declare-fun e!747408 () Bool)

(assert (=> b!1310025 (= e!747410 (and e!747408 mapRes!54538))))

(declare-fun condMapEmpty!54538 () Bool)

(declare-fun mapDefault!54538 () ValueCell!16738)

