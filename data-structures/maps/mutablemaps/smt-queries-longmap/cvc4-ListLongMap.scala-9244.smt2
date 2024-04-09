; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110852 () Bool)

(assert start!110852)

(declare-fun b_free!29651 () Bool)

(declare-fun b_next!29651 () Bool)

(assert (=> start!110852 (= b_free!29651 (not b_next!29651))))

(declare-fun tp!104275 () Bool)

(declare-fun b_and!47869 () Bool)

(assert (=> start!110852 (= tp!104275 b_and!47869)))

(declare-fun b!1311530 () Bool)

(declare-fun e!748218 () Bool)

(assert (=> b!1311530 (= e!748218 (not true))))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87713 0))(
  ( (array!87714 (arr!42332 (Array (_ BitVec 32) (_ BitVec 64))) (size!42883 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87713)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!52277 0))(
  ( (V!52278 (val!17765 Int)) )
))
(declare-fun minValue!1296 () V!52277)

(declare-datatypes ((ValueCell!16792 0))(
  ( (ValueCellFull!16792 (v!20390 V!52277)) (EmptyCell!16792) )
))
(declare-datatypes ((array!87715 0))(
  ( (array!87716 (arr!42333 (Array (_ BitVec 32) ValueCell!16792)) (size!42884 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87715)

(declare-fun zeroValue!1296 () V!52277)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23066 0))(
  ( (tuple2!23067 (_1!11543 (_ BitVec 64)) (_2!11543 V!52277)) )
))
(declare-datatypes ((List!30230 0))(
  ( (Nil!30227) (Cons!30226 (h!31435 tuple2!23066) (t!43843 List!30230)) )
))
(declare-datatypes ((ListLongMap!20735 0))(
  ( (ListLongMap!20736 (toList!10383 List!30230)) )
))
(declare-fun contains!8469 (ListLongMap!20735 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5339 (array!87713 array!87715 (_ BitVec 32) (_ BitVec 32) V!52277 V!52277 (_ BitVec 32) Int) ListLongMap!20735)

(assert (=> b!1311530 (contains!8469 (getCurrentListMap!5339 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k!1175)))

(declare-datatypes ((Unit!43300 0))(
  ( (Unit!43301) )
))
(declare-fun lt!585427 () Unit!43300)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!3 (array!87713 array!87715 (_ BitVec 32) (_ BitVec 32) V!52277 V!52277 (_ BitVec 64) (_ BitVec 32) Int) Unit!43300)

(assert (=> b!1311530 (= lt!585427 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!3 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k!1175 from!2020 defaultEntry!1357))))

(declare-fun res!870769 () Bool)

(assert (=> start!110852 (=> (not res!870769) (not e!748218))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110852 (= res!870769 (validMask!0 mask!2040))))

(assert (=> start!110852 e!748218))

(assert (=> start!110852 tp!104275))

(declare-fun array_inv!31973 (array!87713) Bool)

(assert (=> start!110852 (array_inv!31973 _keys!1628)))

(assert (=> start!110852 true))

(declare-fun tp_is_empty!35381 () Bool)

(assert (=> start!110852 tp_is_empty!35381))

(declare-fun e!748216 () Bool)

(declare-fun array_inv!31974 (array!87715) Bool)

(assert (=> start!110852 (and (array_inv!31974 _values!1354) e!748216)))

(declare-fun b!1311531 () Bool)

(declare-fun res!870772 () Bool)

(assert (=> b!1311531 (=> (not res!870772) (not e!748218))))

(assert (=> b!1311531 (= res!870772 (contains!8469 (getCurrentListMap!5339 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1311532 () Bool)

(declare-fun e!748217 () Bool)

(assert (=> b!1311532 (= e!748217 tp_is_empty!35381)))

(declare-fun b!1311533 () Bool)

(declare-fun res!870766 () Bool)

(assert (=> b!1311533 (=> (not res!870766) (not e!748218))))

(declare-datatypes ((List!30231 0))(
  ( (Nil!30228) (Cons!30227 (h!31436 (_ BitVec 64)) (t!43844 List!30231)) )
))
(declare-fun arrayNoDuplicates!0 (array!87713 (_ BitVec 32) List!30231) Bool)

(assert (=> b!1311533 (= res!870766 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30228))))

(declare-fun mapIsEmpty!54700 () Bool)

(declare-fun mapRes!54700 () Bool)

(assert (=> mapIsEmpty!54700 mapRes!54700))

(declare-fun b!1311534 () Bool)

(declare-fun res!870770 () Bool)

(assert (=> b!1311534 (=> (not res!870770) (not e!748218))))

(assert (=> b!1311534 (= res!870770 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1311535 () Bool)

(declare-fun res!870765 () Bool)

(assert (=> b!1311535 (=> (not res!870765) (not e!748218))))

(assert (=> b!1311535 (= res!870765 (not (= (select (arr!42332 _keys!1628) from!2020) k!1175)))))

(declare-fun b!1311536 () Bool)

(declare-fun res!870773 () Bool)

(assert (=> b!1311536 (=> (not res!870773) (not e!748218))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1311536 (= res!870773 (validKeyInArray!0 (select (arr!42332 _keys!1628) from!2020)))))

(declare-fun b!1311537 () Bool)

(declare-fun e!748220 () Bool)

(assert (=> b!1311537 (= e!748220 tp_is_empty!35381)))

(declare-fun b!1311538 () Bool)

(assert (=> b!1311538 (= e!748216 (and e!748220 mapRes!54700))))

(declare-fun condMapEmpty!54700 () Bool)

(declare-fun mapDefault!54700 () ValueCell!16792)

