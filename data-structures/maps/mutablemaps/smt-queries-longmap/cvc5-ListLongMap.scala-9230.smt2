; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110764 () Bool)

(assert start!110764)

(declare-fun b_free!29563 () Bool)

(declare-fun b_next!29563 () Bool)

(assert (=> start!110764 (= b_free!29563 (not b_next!29563))))

(declare-fun tp!104011 () Bool)

(declare-fun b_and!47781 () Bool)

(assert (=> start!110764 (= tp!104011 b_and!47781)))

(declare-fun b!1310378 () Bool)

(declare-fun res!870009 () Bool)

(declare-fun e!747557 () Bool)

(assert (=> b!1310378 (=> (not res!870009) (not e!747557))))

(declare-datatypes ((array!87541 0))(
  ( (array!87542 (arr!42246 (Array (_ BitVec 32) (_ BitVec 64))) (size!42797 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87541)

(declare-datatypes ((List!30164 0))(
  ( (Nil!30161) (Cons!30160 (h!31369 (_ BitVec 64)) (t!43777 List!30164)) )
))
(declare-fun arrayNoDuplicates!0 (array!87541 (_ BitVec 32) List!30164) Bool)

(assert (=> b!1310378 (= res!870009 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30161))))

(declare-fun b!1310379 () Bool)

(declare-fun res!870017 () Bool)

(assert (=> b!1310379 (=> (not res!870017) (not e!747557))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1310379 (= res!870017 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42797 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1310380 () Bool)

(declare-fun res!870012 () Bool)

(assert (=> b!1310380 (=> (not res!870012) (not e!747557))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52161 0))(
  ( (V!52162 (val!17721 Int)) )
))
(declare-datatypes ((ValueCell!16748 0))(
  ( (ValueCellFull!16748 (v!20346 V!52161)) (EmptyCell!16748) )
))
(declare-datatypes ((array!87543 0))(
  ( (array!87544 (arr!42247 (Array (_ BitVec 32) ValueCell!16748)) (size!42798 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87543)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1310380 (= res!870012 (and (= (size!42798 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42797 _keys!1628) (size!42798 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1310381 () Bool)

(declare-fun res!870011 () Bool)

(assert (=> b!1310381 (=> (not res!870011) (not e!747557))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87541 (_ BitVec 32)) Bool)

(assert (=> b!1310381 (= res!870011 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun res!870016 () Bool)

(assert (=> start!110764 (=> (not res!870016) (not e!747557))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110764 (= res!870016 (validMask!0 mask!2040))))

(assert (=> start!110764 e!747557))

(assert (=> start!110764 tp!104011))

(declare-fun array_inv!31915 (array!87541) Bool)

(assert (=> start!110764 (array_inv!31915 _keys!1628)))

(assert (=> start!110764 true))

(declare-fun tp_is_empty!35293 () Bool)

(assert (=> start!110764 tp_is_empty!35293))

(declare-fun e!747556 () Bool)

(declare-fun array_inv!31916 (array!87543) Bool)

(assert (=> start!110764 (and (array_inv!31916 _values!1354) e!747556)))

(declare-fun b!1310382 () Bool)

(assert (=> b!1310382 (= e!747557 (not true))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52161)

(declare-fun zeroValue!1296 () V!52161)

(declare-datatypes ((tuple2!23000 0))(
  ( (tuple2!23001 (_1!11510 (_ BitVec 64)) (_2!11510 V!52161)) )
))
(declare-datatypes ((List!30165 0))(
  ( (Nil!30162) (Cons!30161 (h!31370 tuple2!23000) (t!43778 List!30165)) )
))
(declare-datatypes ((ListLongMap!20669 0))(
  ( (ListLongMap!20670 (toList!10350 List!30165)) )
))
(declare-fun contains!8436 (ListLongMap!20669 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5306 (array!87541 array!87543 (_ BitVec 32) (_ BitVec 32) V!52161 V!52161 (_ BitVec 32) Int) ListLongMap!20669)

(assert (=> b!1310382 (contains!8436 (getCurrentListMap!5306 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k!1175)))

(declare-datatypes ((Unit!43286 0))(
  ( (Unit!43287) )
))
(declare-fun lt!585295 () Unit!43286)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!17 (array!87541 array!87543 (_ BitVec 32) (_ BitVec 32) V!52161 V!52161 (_ BitVec 64) (_ BitVec 32) Int) Unit!43286)

(assert (=> b!1310382 (= lt!585295 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!17 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1310383 () Bool)

(declare-fun e!747560 () Bool)

(declare-fun mapRes!54568 () Bool)

(assert (=> b!1310383 (= e!747556 (and e!747560 mapRes!54568))))

(declare-fun condMapEmpty!54568 () Bool)

(declare-fun mapDefault!54568 () ValueCell!16748)

