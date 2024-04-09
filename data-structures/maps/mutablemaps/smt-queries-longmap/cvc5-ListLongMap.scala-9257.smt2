; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110926 () Bool)

(assert start!110926)

(declare-fun b_free!29725 () Bool)

(declare-fun b_next!29725 () Bool)

(assert (=> start!110926 (= b_free!29725 (not b_next!29725))))

(declare-fun tp!104497 () Bool)

(declare-fun b_and!47943 () Bool)

(assert (=> start!110926 (= tp!104497 b_and!47943)))

(declare-fun mapIsEmpty!54811 () Bool)

(declare-fun mapRes!54811 () Bool)

(assert (=> mapIsEmpty!54811 mapRes!54811))

(declare-fun b!1312710 () Bool)

(declare-fun res!871616 () Bool)

(declare-fun e!748773 () Bool)

(assert (=> b!1312710 (=> (not res!871616) (not e!748773))))

(declare-datatypes ((array!87859 0))(
  ( (array!87860 (arr!42405 (Array (_ BitVec 32) (_ BitVec 64))) (size!42956 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87859)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87859 (_ BitVec 32)) Bool)

(assert (=> b!1312710 (= res!871616 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1312711 () Bool)

(declare-fun res!871615 () Bool)

(assert (=> b!1312711 (=> (not res!871615) (not e!748773))))

(declare-datatypes ((V!52377 0))(
  ( (V!52378 (val!17802 Int)) )
))
(declare-datatypes ((ValueCell!16829 0))(
  ( (ValueCellFull!16829 (v!20427 V!52377)) (EmptyCell!16829) )
))
(declare-datatypes ((array!87861 0))(
  ( (array!87862 (arr!42406 (Array (_ BitVec 32) ValueCell!16829)) (size!42957 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87861)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1312711 (= res!871615 (and (= (size!42957 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42956 _keys!1628) (size!42957 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1312712 () Bool)

(declare-fun e!748772 () Bool)

(declare-fun tp_is_empty!35455 () Bool)

(assert (=> b!1312712 (= e!748772 tp_is_empty!35455)))

(declare-fun mapNonEmpty!54811 () Bool)

(declare-fun tp!104498 () Bool)

(declare-fun e!748774 () Bool)

(assert (=> mapNonEmpty!54811 (= mapRes!54811 (and tp!104498 e!748774))))

(declare-fun mapKey!54811 () (_ BitVec 32))

(declare-fun mapValue!54811 () ValueCell!16829)

(declare-fun mapRest!54811 () (Array (_ BitVec 32) ValueCell!16829))

(assert (=> mapNonEmpty!54811 (= (arr!42406 _values!1354) (store mapRest!54811 mapKey!54811 mapValue!54811))))

(declare-fun b!1312714 () Bool)

(declare-fun e!748771 () Bool)

(assert (=> b!1312714 (= e!748771 (and e!748772 mapRes!54811))))

(declare-fun condMapEmpty!54811 () Bool)

(declare-fun mapDefault!54811 () ValueCell!16829)

