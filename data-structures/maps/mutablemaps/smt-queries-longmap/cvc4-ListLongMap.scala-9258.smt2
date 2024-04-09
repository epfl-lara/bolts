; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110936 () Bool)

(assert start!110936)

(declare-fun b_free!29735 () Bool)

(declare-fun b_next!29735 () Bool)

(assert (=> start!110936 (= b_free!29735 (not b_next!29735))))

(declare-fun tp!104528 () Bool)

(declare-fun b_and!47953 () Bool)

(assert (=> start!110936 (= tp!104528 b_and!47953)))

(declare-fun res!871689 () Bool)

(declare-fun e!748849 () Bool)

(assert (=> start!110936 (=> (not res!871689) (not e!748849))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110936 (= res!871689 (validMask!0 mask!2040))))

(assert (=> start!110936 e!748849))

(assert (=> start!110936 tp!104528))

(declare-datatypes ((array!87879 0))(
  ( (array!87880 (arr!42415 (Array (_ BitVec 32) (_ BitVec 64))) (size!42966 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87879)

(declare-fun array_inv!32023 (array!87879) Bool)

(assert (=> start!110936 (array_inv!32023 _keys!1628)))

(assert (=> start!110936 true))

(declare-fun tp_is_empty!35465 () Bool)

(assert (=> start!110936 tp_is_empty!35465))

(declare-datatypes ((V!52389 0))(
  ( (V!52390 (val!17807 Int)) )
))
(declare-datatypes ((ValueCell!16834 0))(
  ( (ValueCellFull!16834 (v!20432 V!52389)) (EmptyCell!16834) )
))
(declare-datatypes ((array!87881 0))(
  ( (array!87882 (arr!42416 (Array (_ BitVec 32) ValueCell!16834)) (size!42967 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87881)

(declare-fun e!748847 () Bool)

(declare-fun array_inv!32024 (array!87881) Bool)

(assert (=> start!110936 (and (array_inv!32024 _values!1354) e!748847)))

(declare-fun mapIsEmpty!54826 () Bool)

(declare-fun mapRes!54826 () Bool)

(assert (=> mapIsEmpty!54826 mapRes!54826))

(declare-fun b!1312830 () Bool)

(declare-fun res!871688 () Bool)

(assert (=> b!1312830 (=> (not res!871688) (not e!748849))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87879 (_ BitVec 32)) Bool)

(assert (=> b!1312830 (= res!871688 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1312831 () Bool)

(declare-fun res!871687 () Bool)

(assert (=> b!1312831 (=> (not res!871687) (not e!748849))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1312831 (= res!871687 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42966 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1312832 () Bool)

(declare-fun e!748848 () Bool)

(assert (=> b!1312832 (= e!748848 tp_is_empty!35465)))

(declare-fun b!1312833 () Bool)

(declare-fun e!748850 () Bool)

(assert (=> b!1312833 (= e!748850 tp_is_empty!35465)))

(declare-fun b!1312834 () Bool)

(assert (=> b!1312834 (= e!748849 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun zeroValue!1296 () V!52389)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun minValue!1296 () V!52389)

(declare-fun lt!585553 () Bool)

(declare-datatypes ((tuple2!23132 0))(
  ( (tuple2!23133 (_1!11576 (_ BitVec 64)) (_2!11576 V!52389)) )
))
(declare-datatypes ((List!30292 0))(
  ( (Nil!30289) (Cons!30288 (h!31497 tuple2!23132) (t!43905 List!30292)) )
))
(declare-datatypes ((ListLongMap!20801 0))(
  ( (ListLongMap!20802 (toList!10416 List!30292)) )
))
(declare-fun contains!8502 (ListLongMap!20801 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5372 (array!87879 array!87881 (_ BitVec 32) (_ BitVec 32) V!52389 V!52389 (_ BitVec 32) Int) ListLongMap!20801)

(assert (=> b!1312834 (= lt!585553 (contains!8502 (getCurrentListMap!5372 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun mapNonEmpty!54826 () Bool)

(declare-fun tp!104527 () Bool)

(assert (=> mapNonEmpty!54826 (= mapRes!54826 (and tp!104527 e!748848))))

(declare-fun mapValue!54826 () ValueCell!16834)

(declare-fun mapRest!54826 () (Array (_ BitVec 32) ValueCell!16834))

(declare-fun mapKey!54826 () (_ BitVec 32))

(assert (=> mapNonEmpty!54826 (= (arr!42416 _values!1354) (store mapRest!54826 mapKey!54826 mapValue!54826))))

(declare-fun b!1312835 () Bool)

(declare-fun res!871691 () Bool)

(assert (=> b!1312835 (=> (not res!871691) (not e!748849))))

(declare-datatypes ((List!30293 0))(
  ( (Nil!30290) (Cons!30289 (h!31498 (_ BitVec 64)) (t!43906 List!30293)) )
))
(declare-fun arrayNoDuplicates!0 (array!87879 (_ BitVec 32) List!30293) Bool)

(assert (=> b!1312835 (= res!871691 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30290))))

(declare-fun b!1312836 () Bool)

(assert (=> b!1312836 (= e!748847 (and e!748850 mapRes!54826))))

(declare-fun condMapEmpty!54826 () Bool)

(declare-fun mapDefault!54826 () ValueCell!16834)

