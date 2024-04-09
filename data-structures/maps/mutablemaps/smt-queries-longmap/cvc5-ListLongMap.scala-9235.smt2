; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110794 () Bool)

(assert start!110794)

(declare-fun b_free!29593 () Bool)

(declare-fun b_next!29593 () Bool)

(assert (=> start!110794 (= b_free!29593 (not b_next!29593))))

(declare-fun tp!104102 () Bool)

(declare-fun b_and!47811 () Bool)

(assert (=> start!110794 (= tp!104102 b_and!47811)))

(declare-fun mapIsEmpty!54613 () Bool)

(declare-fun mapRes!54613 () Bool)

(assert (=> mapIsEmpty!54613 mapRes!54613))

(declare-fun b!1310802 () Bool)

(declare-fun res!870300 () Bool)

(declare-fun e!747782 () Bool)

(assert (=> b!1310802 (=> (not res!870300) (not e!747782))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52201 0))(
  ( (V!52202 (val!17736 Int)) )
))
(declare-datatypes ((ValueCell!16763 0))(
  ( (ValueCellFull!16763 (v!20361 V!52201)) (EmptyCell!16763) )
))
(declare-datatypes ((array!87597 0))(
  ( (array!87598 (arr!42274 (Array (_ BitVec 32) ValueCell!16763)) (size!42825 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87597)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((array!87599 0))(
  ( (array!87600 (arr!42275 (Array (_ BitVec 32) (_ BitVec 64))) (size!42826 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87599)

(assert (=> b!1310802 (= res!870300 (and (= (size!42825 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42826 _keys!1628) (size!42825 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1310803 () Bool)

(declare-fun res!870298 () Bool)

(assert (=> b!1310803 (=> (not res!870298) (not e!747782))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87599 (_ BitVec 32)) Bool)

(assert (=> b!1310803 (= res!870298 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1310804 () Bool)

(declare-fun e!747781 () Bool)

(declare-fun tp_is_empty!35323 () Bool)

(assert (=> b!1310804 (= e!747781 tp_is_empty!35323)))

(declare-fun b!1310805 () Bool)

(declare-fun res!870301 () Bool)

(assert (=> b!1310805 (=> (not res!870301) (not e!747782))))

(declare-datatypes ((List!30185 0))(
  ( (Nil!30182) (Cons!30181 (h!31390 (_ BitVec 64)) (t!43798 List!30185)) )
))
(declare-fun arrayNoDuplicates!0 (array!87599 (_ BitVec 32) List!30185) Bool)

(assert (=> b!1310805 (= res!870301 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30182))))

(declare-fun mapNonEmpty!54613 () Bool)

(declare-fun tp!104101 () Bool)

(declare-fun e!747784 () Bool)

(assert (=> mapNonEmpty!54613 (= mapRes!54613 (and tp!104101 e!747784))))

(declare-fun mapKey!54613 () (_ BitVec 32))

(declare-fun mapRest!54613 () (Array (_ BitVec 32) ValueCell!16763))

(declare-fun mapValue!54613 () ValueCell!16763)

(assert (=> mapNonEmpty!54613 (= (arr!42274 _values!1354) (store mapRest!54613 mapKey!54613 mapValue!54613))))

(declare-fun res!870302 () Bool)

(assert (=> start!110794 (=> (not res!870302) (not e!747782))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110794 (= res!870302 (validMask!0 mask!2040))))

(assert (=> start!110794 e!747782))

(assert (=> start!110794 tp!104102))

(declare-fun array_inv!31935 (array!87599) Bool)

(assert (=> start!110794 (array_inv!31935 _keys!1628)))

(assert (=> start!110794 true))

(assert (=> start!110794 tp_is_empty!35323))

(declare-fun e!747783 () Bool)

(declare-fun array_inv!31936 (array!87597) Bool)

(assert (=> start!110794 (and (array_inv!31936 _values!1354) e!747783)))

(declare-fun b!1310806 () Bool)

(assert (=> b!1310806 (= e!747783 (and e!747781 mapRes!54613))))

(declare-fun condMapEmpty!54613 () Bool)

(declare-fun mapDefault!54613 () ValueCell!16763)

