; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110786 () Bool)

(assert start!110786)

(declare-fun b_free!29585 () Bool)

(declare-fun b_next!29585 () Bool)

(assert (=> start!110786 (= b_free!29585 (not b_next!29585))))

(declare-fun tp!104078 () Bool)

(declare-fun b_and!47803 () Bool)

(assert (=> start!110786 (= tp!104078 b_and!47803)))

(declare-fun b!1310706 () Bool)

(declare-fun e!747724 () Bool)

(declare-fun tp_is_empty!35315 () Bool)

(assert (=> b!1310706 (= e!747724 tp_is_empty!35315)))

(declare-fun b!1310707 () Bool)

(declare-fun res!870240 () Bool)

(declare-fun e!747721 () Bool)

(assert (=> b!1310707 (=> (not res!870240) (not e!747721))))

(declare-datatypes ((array!87583 0))(
  ( (array!87584 (arr!42267 (Array (_ BitVec 32) (_ BitVec 64))) (size!42818 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87583)

(declare-datatypes ((List!30180 0))(
  ( (Nil!30177) (Cons!30176 (h!31385 (_ BitVec 64)) (t!43793 List!30180)) )
))
(declare-fun arrayNoDuplicates!0 (array!87583 (_ BitVec 32) List!30180) Bool)

(assert (=> b!1310707 (= res!870240 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30177))))

(declare-fun mapIsEmpty!54601 () Bool)

(declare-fun mapRes!54601 () Bool)

(assert (=> mapIsEmpty!54601 mapRes!54601))

(declare-fun mapNonEmpty!54601 () Bool)

(declare-fun tp!104077 () Bool)

(assert (=> mapNonEmpty!54601 (= mapRes!54601 (and tp!104077 e!747724))))

(declare-datatypes ((V!52189 0))(
  ( (V!52190 (val!17732 Int)) )
))
(declare-datatypes ((ValueCell!16759 0))(
  ( (ValueCellFull!16759 (v!20357 V!52189)) (EmptyCell!16759) )
))
(declare-fun mapValue!54601 () ValueCell!16759)

(declare-datatypes ((array!87585 0))(
  ( (array!87586 (arr!42268 (Array (_ BitVec 32) ValueCell!16759)) (size!42819 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87585)

(declare-fun mapKey!54601 () (_ BitVec 32))

(declare-fun mapRest!54601 () (Array (_ BitVec 32) ValueCell!16759))

(assert (=> mapNonEmpty!54601 (= (arr!42268 _values!1354) (store mapRest!54601 mapKey!54601 mapValue!54601))))

(declare-fun b!1310708 () Bool)

(declare-fun e!747725 () Bool)

(declare-fun e!747723 () Bool)

(assert (=> b!1310708 (= e!747725 (and e!747723 mapRes!54601))))

(declare-fun condMapEmpty!54601 () Bool)

(declare-fun mapDefault!54601 () ValueCell!16759)

