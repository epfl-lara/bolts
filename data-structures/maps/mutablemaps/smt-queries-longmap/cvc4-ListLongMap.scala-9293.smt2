; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111146 () Bool)

(assert start!111146)

(declare-fun b_free!29945 () Bool)

(declare-fun b_next!29945 () Bool)

(assert (=> start!111146 (= b_free!29945 (not b_next!29945))))

(declare-fun tp!105158 () Bool)

(declare-fun b_and!48163 () Bool)

(assert (=> start!111146 (= tp!105158 b_and!48163)))

(declare-fun b!1315449 () Bool)

(declare-fun res!873365 () Bool)

(declare-fun e!750421 () Bool)

(assert (=> b!1315449 (=> (not res!873365) (not e!750421))))

(declare-datatypes ((array!88273 0))(
  ( (array!88274 (arr!42612 (Array (_ BitVec 32) (_ BitVec 64))) (size!43163 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88273)

(declare-datatypes ((V!52669 0))(
  ( (V!52670 (val!17912 Int)) )
))
(declare-datatypes ((ValueCell!16939 0))(
  ( (ValueCellFull!16939 (v!20537 V!52669)) (EmptyCell!16939) )
))
(declare-datatypes ((array!88275 0))(
  ( (array!88276 (arr!42613 (Array (_ BitVec 32) ValueCell!16939)) (size!43164 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88275)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun mask!2040 () (_ BitVec 32))

(assert (=> b!1315449 (= res!873365 (and (= (size!43164 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43163 _keys!1628) (size!43164 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!55141 () Bool)

(declare-fun mapRes!55141 () Bool)

(assert (=> mapIsEmpty!55141 mapRes!55141))

(declare-fun b!1315450 () Bool)

(declare-fun res!873363 () Bool)

(assert (=> b!1315450 (=> (not res!873363) (not e!750421))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88273 (_ BitVec 32)) Bool)

(assert (=> b!1315450 (= res!873363 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapNonEmpty!55141 () Bool)

(declare-fun tp!105157 () Bool)

(declare-fun e!750424 () Bool)

(assert (=> mapNonEmpty!55141 (= mapRes!55141 (and tp!105157 e!750424))))

(declare-fun mapRest!55141 () (Array (_ BitVec 32) ValueCell!16939))

(declare-fun mapValue!55141 () ValueCell!16939)

(declare-fun mapKey!55141 () (_ BitVec 32))

(assert (=> mapNonEmpty!55141 (= (arr!42613 _values!1354) (store mapRest!55141 mapKey!55141 mapValue!55141))))

(declare-fun res!873361 () Bool)

(assert (=> start!111146 (=> (not res!873361) (not e!750421))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111146 (= res!873361 (validMask!0 mask!2040))))

(assert (=> start!111146 e!750421))

(assert (=> start!111146 tp!105158))

(declare-fun array_inv!32155 (array!88273) Bool)

(assert (=> start!111146 (array_inv!32155 _keys!1628)))

(assert (=> start!111146 true))

(declare-fun tp_is_empty!35675 () Bool)

(assert (=> start!111146 tp_is_empty!35675))

(declare-fun e!750422 () Bool)

(declare-fun array_inv!32156 (array!88275) Bool)

(assert (=> start!111146 (and (array_inv!32156 _values!1354) e!750422)))

(declare-fun b!1315451 () Bool)

(assert (=> b!1315451 (= e!750424 tp_is_empty!35675)))

(declare-fun b!1315452 () Bool)

(declare-fun e!750423 () Bool)

(assert (=> b!1315452 (= e!750422 (and e!750423 mapRes!55141))))

(declare-fun condMapEmpty!55141 () Bool)

(declare-fun mapDefault!55141 () ValueCell!16939)

