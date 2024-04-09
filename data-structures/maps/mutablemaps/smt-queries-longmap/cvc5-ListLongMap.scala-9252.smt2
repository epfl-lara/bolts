; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110896 () Bool)

(assert start!110896)

(declare-fun b_free!29695 () Bool)

(declare-fun b_next!29695 () Bool)

(assert (=> start!110896 (= b_free!29695 (not b_next!29695))))

(declare-fun tp!104407 () Bool)

(declare-fun b_and!47913 () Bool)

(assert (=> start!110896 (= tp!104407 b_and!47913)))

(declare-fun b!1312322 () Bool)

(declare-fun res!871362 () Bool)

(declare-fun e!748550 () Bool)

(assert (=> b!1312322 (=> (not res!871362) (not e!748550))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((array!87801 0))(
  ( (array!87802 (arr!42376 (Array (_ BitVec 32) (_ BitVec 64))) (size!42927 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87801)

(assert (=> b!1312322 (= res!871362 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42927 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1312323 () Bool)

(assert (=> b!1312323 (= e!748550 (not (bvsge (bvadd #b00000000000000000000000000000001 from!2020) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52337 0))(
  ( (V!52338 (val!17787 Int)) )
))
(declare-fun minValue!1296 () V!52337)

(declare-fun zeroValue!1296 () V!52337)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16814 0))(
  ( (ValueCellFull!16814 (v!20412 V!52337)) (EmptyCell!16814) )
))
(declare-datatypes ((array!87803 0))(
  ( (array!87804 (arr!42377 (Array (_ BitVec 32) ValueCell!16814)) (size!42928 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87803)

(declare-datatypes ((tuple2!23104 0))(
  ( (tuple2!23105 (_1!11562 (_ BitVec 64)) (_2!11562 V!52337)) )
))
(declare-datatypes ((List!30263 0))(
  ( (Nil!30260) (Cons!30259 (h!31468 tuple2!23104) (t!43876 List!30263)) )
))
(declare-datatypes ((ListLongMap!20773 0))(
  ( (ListLongMap!20774 (toList!10402 List!30263)) )
))
(declare-fun contains!8488 (ListLongMap!20773 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5358 (array!87801 array!87803 (_ BitVec 32) (_ BitVec 32) V!52337 V!52337 (_ BitVec 32) Int) ListLongMap!20773)

(assert (=> b!1312323 (contains!8488 (getCurrentListMap!5358 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k!1175)))

(declare-datatypes ((Unit!43326 0))(
  ( (Unit!43327) )
))
(declare-fun lt!585493 () Unit!43326)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!16 (array!87801 array!87803 (_ BitVec 32) (_ BitVec 32) V!52337 V!52337 (_ BitVec 64) (_ BitVec 32) Int) Unit!43326)

(assert (=> b!1312323 (= lt!585493 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!16 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1312324 () Bool)

(declare-fun res!871363 () Bool)

(assert (=> b!1312324 (=> (not res!871363) (not e!748550))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1312324 (= res!871363 (validKeyInArray!0 (select (arr!42376 _keys!1628) from!2020)))))

(declare-fun b!1312325 () Bool)

(declare-fun res!871366 () Bool)

(assert (=> b!1312325 (=> (not res!871366) (not e!748550))))

(declare-datatypes ((List!30264 0))(
  ( (Nil!30261) (Cons!30260 (h!31469 (_ BitVec 64)) (t!43877 List!30264)) )
))
(declare-fun arrayNoDuplicates!0 (array!87801 (_ BitVec 32) List!30264) Bool)

(assert (=> b!1312325 (= res!871366 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30261))))

(declare-fun mapIsEmpty!54766 () Bool)

(declare-fun mapRes!54766 () Bool)

(assert (=> mapIsEmpty!54766 mapRes!54766))

(declare-fun b!1312326 () Bool)

(declare-fun res!871359 () Bool)

(assert (=> b!1312326 (=> (not res!871359) (not e!748550))))

(assert (=> b!1312326 (= res!871359 (not (= (select (arr!42376 _keys!1628) from!2020) k!1175)))))

(declare-fun b!1312327 () Bool)

(declare-fun e!748548 () Bool)

(declare-fun e!748546 () Bool)

(assert (=> b!1312327 (= e!748548 (and e!748546 mapRes!54766))))

(declare-fun condMapEmpty!54766 () Bool)

(declare-fun mapDefault!54766 () ValueCell!16814)

