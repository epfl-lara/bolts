; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111002 () Bool)

(assert start!111002)

(declare-fun b_free!29801 () Bool)

(declare-fun b_next!29801 () Bool)

(assert (=> start!111002 (= b_free!29801 (not b_next!29801))))

(declare-fun tp!104726 () Bool)

(declare-fun b_and!48019 () Bool)

(assert (=> start!111002 (= tp!104726 b_and!48019)))

(declare-fun b!1313649 () Bool)

(declare-fun res!872210 () Bool)

(declare-fun e!749341 () Bool)

(assert (=> b!1313649 (=> (not res!872210) (not e!749341))))

(declare-datatypes ((array!88001 0))(
  ( (array!88002 (arr!42476 (Array (_ BitVec 32) (_ BitVec 64))) (size!43027 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88001)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88001 (_ BitVec 32)) Bool)

(assert (=> b!1313649 (= res!872210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapIsEmpty!54925 () Bool)

(declare-fun mapRes!54925 () Bool)

(assert (=> mapIsEmpty!54925 mapRes!54925))

(declare-fun res!872209 () Bool)

(assert (=> start!111002 (=> (not res!872209) (not e!749341))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111002 (= res!872209 (validMask!0 mask!2040))))

(assert (=> start!111002 e!749341))

(assert (=> start!111002 tp!104726))

(declare-fun array_inv!32065 (array!88001) Bool)

(assert (=> start!111002 (array_inv!32065 _keys!1628)))

(assert (=> start!111002 true))

(declare-fun tp_is_empty!35531 () Bool)

(assert (=> start!111002 tp_is_empty!35531))

(declare-datatypes ((V!52477 0))(
  ( (V!52478 (val!17840 Int)) )
))
(declare-datatypes ((ValueCell!16867 0))(
  ( (ValueCellFull!16867 (v!20465 V!52477)) (EmptyCell!16867) )
))
(declare-datatypes ((array!88003 0))(
  ( (array!88004 (arr!42477 (Array (_ BitVec 32) ValueCell!16867)) (size!43028 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88003)

(declare-fun e!749344 () Bool)

(declare-fun array_inv!32066 (array!88003) Bool)

(assert (=> start!111002 (and (array_inv!32066 _values!1354) e!749344)))

(declare-fun mapNonEmpty!54925 () Bool)

(declare-fun tp!104725 () Bool)

(declare-fun e!749343 () Bool)

(assert (=> mapNonEmpty!54925 (= mapRes!54925 (and tp!104725 e!749343))))

(declare-fun mapRest!54925 () (Array (_ BitVec 32) ValueCell!16867))

(declare-fun mapValue!54925 () ValueCell!16867)

(declare-fun mapKey!54925 () (_ BitVec 32))

(assert (=> mapNonEmpty!54925 (= (arr!42477 _values!1354) (store mapRest!54925 mapKey!54925 mapValue!54925))))

(declare-fun b!1313650 () Bool)

(assert (=> b!1313650 (= e!749343 tp_is_empty!35531)))

(declare-fun b!1313651 () Bool)

(declare-fun res!872211 () Bool)

(assert (=> b!1313651 (=> (not res!872211) (not e!749341))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1313651 (= res!872211 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43027 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1313652 () Bool)

(declare-fun res!872212 () Bool)

(assert (=> b!1313652 (=> (not res!872212) (not e!749341))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1313652 (= res!872212 (and (= (size!43028 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43027 _keys!1628) (size!43028 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1313653 () Bool)

(declare-fun res!872213 () Bool)

(assert (=> b!1313653 (=> (not res!872213) (not e!749341))))

(declare-datatypes ((List!30335 0))(
  ( (Nil!30332) (Cons!30331 (h!31540 (_ BitVec 64)) (t!43948 List!30335)) )
))
(declare-fun arrayNoDuplicates!0 (array!88001 (_ BitVec 32) List!30335) Bool)

(assert (=> b!1313653 (= res!872213 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30332))))

(declare-fun b!1313654 () Bool)

(assert (=> b!1313654 (= e!749341 false)))

(declare-fun lt!585643 () Bool)

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52477)

(declare-fun zeroValue!1296 () V!52477)

(declare-datatypes ((tuple2!23172 0))(
  ( (tuple2!23173 (_1!11596 (_ BitVec 64)) (_2!11596 V!52477)) )
))
(declare-datatypes ((List!30336 0))(
  ( (Nil!30333) (Cons!30332 (h!31541 tuple2!23172) (t!43949 List!30336)) )
))
(declare-datatypes ((ListLongMap!20841 0))(
  ( (ListLongMap!20842 (toList!10436 List!30336)) )
))
(declare-fun contains!8522 (ListLongMap!20841 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5392 (array!88001 array!88003 (_ BitVec 32) (_ BitVec 32) V!52477 V!52477 (_ BitVec 32) Int) ListLongMap!20841)

(assert (=> b!1313654 (= lt!585643 (contains!8522 (getCurrentListMap!5392 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1313655 () Bool)

(declare-fun e!749342 () Bool)

(assert (=> b!1313655 (= e!749342 tp_is_empty!35531)))

(declare-fun b!1313656 () Bool)

(assert (=> b!1313656 (= e!749344 (and e!749342 mapRes!54925))))

(declare-fun condMapEmpty!54925 () Bool)

(declare-fun mapDefault!54925 () ValueCell!16867)

