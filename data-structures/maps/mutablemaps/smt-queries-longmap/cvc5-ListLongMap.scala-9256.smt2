; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110920 () Bool)

(assert start!110920)

(declare-fun b_free!29719 () Bool)

(declare-fun b_next!29719 () Bool)

(assert (=> start!110920 (= b_free!29719 (not b_next!29719))))

(declare-fun tp!104480 () Bool)

(declare-fun b_and!47937 () Bool)

(assert (=> start!110920 (= tp!104480 b_and!47937)))

(declare-fun mapNonEmpty!54802 () Bool)

(declare-fun mapRes!54802 () Bool)

(declare-fun tp!104479 () Bool)

(declare-fun e!748730 () Bool)

(assert (=> mapNonEmpty!54802 (= mapRes!54802 (and tp!104479 e!748730))))

(declare-datatypes ((V!52369 0))(
  ( (V!52370 (val!17799 Int)) )
))
(declare-datatypes ((ValueCell!16826 0))(
  ( (ValueCellFull!16826 (v!20424 V!52369)) (EmptyCell!16826) )
))
(declare-fun mapRest!54802 () (Array (_ BitVec 32) ValueCell!16826))

(declare-fun mapValue!54802 () ValueCell!16826)

(declare-datatypes ((array!87847 0))(
  ( (array!87848 (arr!42399 (Array (_ BitVec 32) ValueCell!16826)) (size!42950 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87847)

(declare-fun mapKey!54802 () (_ BitVec 32))

(assert (=> mapNonEmpty!54802 (= (arr!42399 _values!1354) (store mapRest!54802 mapKey!54802 mapValue!54802))))

(declare-fun res!871570 () Bool)

(declare-fun e!748729 () Bool)

(assert (=> start!110920 (=> (not res!871570) (not e!748729))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110920 (= res!871570 (validMask!0 mask!2040))))

(assert (=> start!110920 e!748729))

(assert (=> start!110920 tp!104480))

(declare-datatypes ((array!87849 0))(
  ( (array!87850 (arr!42400 (Array (_ BitVec 32) (_ BitVec 64))) (size!42951 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87849)

(declare-fun array_inv!32013 (array!87849) Bool)

(assert (=> start!110920 (array_inv!32013 _keys!1628)))

(assert (=> start!110920 true))

(declare-fun tp_is_empty!35449 () Bool)

(assert (=> start!110920 tp_is_empty!35449))

(declare-fun e!748727 () Bool)

(declare-fun array_inv!32014 (array!87847) Bool)

(assert (=> start!110920 (and (array_inv!32014 _values!1354) e!748727)))

(declare-fun b!1312638 () Bool)

(declare-fun res!871567 () Bool)

(assert (=> b!1312638 (=> (not res!871567) (not e!748729))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87849 (_ BitVec 32)) Bool)

(assert (=> b!1312638 (= res!871567 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1312639 () Bool)

(declare-fun e!748726 () Bool)

(assert (=> b!1312639 (= e!748727 (and e!748726 mapRes!54802))))

(declare-fun condMapEmpty!54802 () Bool)

(declare-fun mapDefault!54802 () ValueCell!16826)

