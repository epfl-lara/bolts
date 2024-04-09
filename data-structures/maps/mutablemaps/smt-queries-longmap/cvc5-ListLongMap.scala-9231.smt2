; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110770 () Bool)

(assert start!110770)

(declare-fun b_free!29569 () Bool)

(declare-fun b_next!29569 () Bool)

(assert (=> start!110770 (= b_free!29569 (not b_next!29569))))

(declare-fun tp!104030 () Bool)

(declare-fun b_and!47787 () Bool)

(assert (=> start!110770 (= tp!104030 b_and!47787)))

(declare-fun res!870092 () Bool)

(declare-fun e!747604 () Bool)

(assert (=> start!110770 (=> (not res!870092) (not e!747604))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110770 (= res!870092 (validMask!0 mask!2040))))

(assert (=> start!110770 e!747604))

(assert (=> start!110770 tp!104030))

(declare-datatypes ((array!87553 0))(
  ( (array!87554 (arr!42252 (Array (_ BitVec 32) (_ BitVec 64))) (size!42803 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87553)

(declare-fun array_inv!31921 (array!87553) Bool)

(assert (=> start!110770 (array_inv!31921 _keys!1628)))

(assert (=> start!110770 true))

(declare-fun tp_is_empty!35299 () Bool)

(assert (=> start!110770 tp_is_empty!35299))

(declare-datatypes ((V!52169 0))(
  ( (V!52170 (val!17724 Int)) )
))
(declare-datatypes ((ValueCell!16751 0))(
  ( (ValueCellFull!16751 (v!20349 V!52169)) (EmptyCell!16751) )
))
(declare-datatypes ((array!87555 0))(
  ( (array!87556 (arr!42253 (Array (_ BitVec 32) ValueCell!16751)) (size!42804 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87555)

(declare-fun e!747602 () Bool)

(declare-fun array_inv!31922 (array!87555) Bool)

(assert (=> start!110770 (and (array_inv!31922 _values!1354) e!747602)))

(declare-fun b!1310486 () Bool)

(declare-fun res!870098 () Bool)

(assert (=> b!1310486 (=> (not res!870098) (not e!747604))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87553 (_ BitVec 32)) Bool)

(assert (=> b!1310486 (= res!870098 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1310487 () Bool)

(declare-fun res!870093 () Bool)

(assert (=> b!1310487 (=> (not res!870093) (not e!747604))))

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1310487 (= res!870093 (validKeyInArray!0 (select (arr!42252 _keys!1628) from!2020)))))

(declare-fun b!1310488 () Bool)

(declare-fun res!870091 () Bool)

(assert (=> b!1310488 (=> (not res!870091) (not e!747604))))

(declare-fun k!1175 () (_ BitVec 64))

(assert (=> b!1310488 (= res!870091 (not (= (select (arr!42252 _keys!1628) from!2020) k!1175)))))

(declare-fun b!1310489 () Bool)

(declare-fun res!870090 () Bool)

(assert (=> b!1310489 (=> (not res!870090) (not e!747604))))

(assert (=> b!1310489 (= res!870090 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42803 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!54577 () Bool)

(declare-fun mapRes!54577 () Bool)

(assert (=> mapIsEmpty!54577 mapRes!54577))

(declare-fun b!1310490 () Bool)

(declare-fun res!870097 () Bool)

(assert (=> b!1310490 (=> (not res!870097) (not e!747604))))

(declare-datatypes ((List!30168 0))(
  ( (Nil!30165) (Cons!30164 (h!31373 (_ BitVec 64)) (t!43781 List!30168)) )
))
(declare-fun arrayNoDuplicates!0 (array!87553 (_ BitVec 32) List!30168) Bool)

(assert (=> b!1310490 (= res!870097 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30165))))

(declare-fun b!1310491 () Bool)

(declare-fun res!870095 () Bool)

(assert (=> b!1310491 (=> (not res!870095) (not e!747604))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52169)

(declare-fun zeroValue!1296 () V!52169)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((tuple2!23004 0))(
  ( (tuple2!23005 (_1!11512 (_ BitVec 64)) (_2!11512 V!52169)) )
))
(declare-datatypes ((List!30169 0))(
  ( (Nil!30166) (Cons!30165 (h!31374 tuple2!23004) (t!43782 List!30169)) )
))
(declare-datatypes ((ListLongMap!20673 0))(
  ( (ListLongMap!20674 (toList!10352 List!30169)) )
))
(declare-fun contains!8438 (ListLongMap!20673 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5308 (array!87553 array!87555 (_ BitVec 32) (_ BitVec 32) V!52169 V!52169 (_ BitVec 32) Int) ListLongMap!20673)

(assert (=> b!1310491 (= res!870095 (contains!8438 (getCurrentListMap!5308 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1310492 () Bool)

(assert (=> b!1310492 (= e!747604 (not (bvsge (bvadd #b00000000000000000000000000000001 from!2020) #b00000000000000000000000000000000)))))

(assert (=> b!1310492 (contains!8438 (getCurrentListMap!5308 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k!1175)))

(declare-datatypes ((Unit!43290 0))(
  ( (Unit!43291) )
))
(declare-fun lt!585304 () Unit!43290)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!19 (array!87553 array!87555 (_ BitVec 32) (_ BitVec 32) V!52169 V!52169 (_ BitVec 64) (_ BitVec 32) Int) Unit!43290)

(assert (=> b!1310492 (= lt!585304 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!19 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1310493 () Bool)

(declare-fun res!870094 () Bool)

(assert (=> b!1310493 (=> (not res!870094) (not e!747604))))

(assert (=> b!1310493 (= res!870094 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1310494 () Bool)

(declare-fun e!747603 () Bool)

(assert (=> b!1310494 (= e!747602 (and e!747603 mapRes!54577))))

(declare-fun condMapEmpty!54577 () Bool)

(declare-fun mapDefault!54577 () ValueCell!16751)

