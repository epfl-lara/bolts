; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111080 () Bool)

(assert start!111080)

(declare-fun b_free!29879 () Bool)

(declare-fun b_next!29879 () Bool)

(assert (=> start!111080 (= b_free!29879 (not b_next!29879))))

(declare-fun tp!104959 () Bool)

(declare-fun b_and!48097 () Bool)

(assert (=> start!111080 (= tp!104959 b_and!48097)))

(declare-fun b!1314621 () Bool)

(declare-fun e!749928 () Bool)

(declare-fun tp_is_empty!35609 () Bool)

(assert (=> b!1314621 (= e!749928 tp_is_empty!35609)))

(declare-fun b!1314622 () Bool)

(declare-fun res!872830 () Bool)

(declare-fun e!749930 () Bool)

(assert (=> b!1314622 (=> (not res!872830) (not e!749930))))

(declare-datatypes ((array!88151 0))(
  ( (array!88152 (arr!42551 (Array (_ BitVec 32) (_ BitVec 64))) (size!43102 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88151)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52581 0))(
  ( (V!52582 (val!17879 Int)) )
))
(declare-datatypes ((ValueCell!16906 0))(
  ( (ValueCellFull!16906 (v!20504 V!52581)) (EmptyCell!16906) )
))
(declare-datatypes ((array!88153 0))(
  ( (array!88154 (arr!42552 (Array (_ BitVec 32) ValueCell!16906)) (size!43103 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88153)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1314622 (= res!872830 (and (= (size!43103 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43102 _keys!1628) (size!43103 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!55042 () Bool)

(declare-fun mapRes!55042 () Bool)

(declare-fun tp!104960 () Bool)

(assert (=> mapNonEmpty!55042 (= mapRes!55042 (and tp!104960 e!749928))))

(declare-fun mapRest!55042 () (Array (_ BitVec 32) ValueCell!16906))

(declare-fun mapKey!55042 () (_ BitVec 32))

(declare-fun mapValue!55042 () ValueCell!16906)

(assert (=> mapNonEmpty!55042 (= (arr!42552 _values!1354) (store mapRest!55042 mapKey!55042 mapValue!55042))))

(declare-fun b!1314623 () Bool)

(declare-fun res!872831 () Bool)

(assert (=> b!1314623 (=> (not res!872831) (not e!749930))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88151 (_ BitVec 32)) Bool)

(assert (=> b!1314623 (= res!872831 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1314624 () Bool)

(declare-fun e!749926 () Bool)

(assert (=> b!1314624 (= e!749926 tp_is_empty!35609)))

(declare-fun b!1314625 () Bool)

(declare-fun e!749929 () Bool)

(assert (=> b!1314625 (= e!749929 (and e!749926 mapRes!55042))))

(declare-fun condMapEmpty!55042 () Bool)

(declare-fun mapDefault!55042 () ValueCell!16906)

