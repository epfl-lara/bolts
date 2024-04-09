; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110540 () Bool)

(assert start!110540)

(declare-fun b_free!29339 () Bool)

(declare-fun b_next!29339 () Bool)

(assert (=> start!110540 (= b_free!29339 (not b_next!29339))))

(declare-fun tp!103339 () Bool)

(declare-fun b_and!47557 () Bool)

(assert (=> start!110540 (= tp!103339 b_and!47557)))

(declare-fun b!1307106 () Bool)

(declare-fun res!867747 () Bool)

(declare-fun e!745876 () Bool)

(assert (=> b!1307106 (=> (not res!867747) (not e!745876))))

(declare-datatypes ((array!87115 0))(
  ( (array!87116 (arr!42033 (Array (_ BitVec 32) (_ BitVec 64))) (size!42584 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87115)

(declare-datatypes ((List!30003 0))(
  ( (Nil!30000) (Cons!29999 (h!31208 (_ BitVec 64)) (t!43616 List!30003)) )
))
(declare-fun arrayNoDuplicates!0 (array!87115 (_ BitVec 32) List!30003) Bool)

(assert (=> b!1307106 (= res!867747 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30000))))

(declare-fun b!1307108 () Bool)

(declare-fun res!867745 () Bool)

(assert (=> b!1307108 (=> (not res!867745) (not e!745876))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((V!51861 0))(
  ( (V!51862 (val!17609 Int)) )
))
(declare-datatypes ((ValueCell!16636 0))(
  ( (ValueCellFull!16636 (v!20234 V!51861)) (EmptyCell!16636) )
))
(declare-datatypes ((array!87117 0))(
  ( (array!87118 (arr!42034 (Array (_ BitVec 32) ValueCell!16636)) (size!42585 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87117)

(assert (=> b!1307108 (= res!867745 (and (= (size!42585 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42584 _keys!1628) (size!42585 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1307109 () Bool)

(declare-fun res!867746 () Bool)

(assert (=> b!1307109 (=> (not res!867746) (not e!745876))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1307109 (= res!867746 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42584 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!54232 () Bool)

(declare-fun mapRes!54232 () Bool)

(declare-fun tp!103340 () Bool)

(declare-fun e!745879 () Bool)

(assert (=> mapNonEmpty!54232 (= mapRes!54232 (and tp!103340 e!745879))))

(declare-fun mapRest!54232 () (Array (_ BitVec 32) ValueCell!16636))

(declare-fun mapKey!54232 () (_ BitVec 32))

(declare-fun mapValue!54232 () ValueCell!16636)

(assert (=> mapNonEmpty!54232 (= (arr!42034 _values!1354) (store mapRest!54232 mapKey!54232 mapValue!54232))))

(declare-fun mapIsEmpty!54232 () Bool)

(assert (=> mapIsEmpty!54232 mapRes!54232))

(declare-fun b!1307110 () Bool)

(declare-fun tp_is_empty!35069 () Bool)

(assert (=> b!1307110 (= e!745879 tp_is_empty!35069)))

(declare-fun b!1307111 () Bool)

(assert (=> b!1307111 (= e!745876 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!51861)

(declare-fun zeroValue!1296 () V!51861)

(declare-fun lt!584959 () Bool)

(declare-datatypes ((tuple2!22832 0))(
  ( (tuple2!22833 (_1!11426 (_ BitVec 64)) (_2!11426 V!51861)) )
))
(declare-datatypes ((List!30004 0))(
  ( (Nil!30001) (Cons!30000 (h!31209 tuple2!22832) (t!43617 List!30004)) )
))
(declare-datatypes ((ListLongMap!20501 0))(
  ( (ListLongMap!20502 (toList!10266 List!30004)) )
))
(declare-fun contains!8352 (ListLongMap!20501 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5222 (array!87115 array!87117 (_ BitVec 32) (_ BitVec 32) V!51861 V!51861 (_ BitVec 32) Int) ListLongMap!20501)

(assert (=> b!1307111 (= lt!584959 (contains!8352 (getCurrentListMap!5222 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1307112 () Bool)

(declare-fun e!745880 () Bool)

(assert (=> b!1307112 (= e!745880 tp_is_empty!35069)))

(declare-fun b!1307113 () Bool)

(declare-fun res!867749 () Bool)

(assert (=> b!1307113 (=> (not res!867749) (not e!745876))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87115 (_ BitVec 32)) Bool)

(assert (=> b!1307113 (= res!867749 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1307107 () Bool)

(declare-fun e!745878 () Bool)

(assert (=> b!1307107 (= e!745878 (and e!745880 mapRes!54232))))

(declare-fun condMapEmpty!54232 () Bool)

(declare-fun mapDefault!54232 () ValueCell!16636)

