; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110834 () Bool)

(assert start!110834)

(declare-fun b_free!29633 () Bool)

(declare-fun b_next!29633 () Bool)

(assert (=> start!110834 (= b_free!29633 (not b_next!29633))))

(declare-fun tp!104221 () Bool)

(declare-fun b_and!47851 () Bool)

(assert (=> start!110834 (= tp!104221 b_and!47851)))

(declare-fun b!1311282 () Bool)

(declare-fun res!870599 () Bool)

(declare-fun e!748082 () Bool)

(assert (=> b!1311282 (=> (not res!870599) (not e!748082))))

(declare-datatypes ((array!87677 0))(
  ( (array!87678 (arr!42314 (Array (_ BitVec 32) (_ BitVec 64))) (size!42865 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87677)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87677 (_ BitVec 32)) Bool)

(assert (=> b!1311282 (= res!870599 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1311283 () Bool)

(declare-fun e!748083 () Bool)

(declare-fun tp_is_empty!35363 () Bool)

(assert (=> b!1311283 (= e!748083 tp_is_empty!35363)))

(declare-fun b!1311284 () Bool)

(declare-fun e!748084 () Bool)

(assert (=> b!1311284 (= e!748084 tp_is_empty!35363)))

(declare-fun b!1311285 () Bool)

(declare-fun res!870602 () Bool)

(assert (=> b!1311285 (=> (not res!870602) (not e!748082))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((V!52253 0))(
  ( (V!52254 (val!17756 Int)) )
))
(declare-datatypes ((ValueCell!16783 0))(
  ( (ValueCellFull!16783 (v!20381 V!52253)) (EmptyCell!16783) )
))
(declare-datatypes ((array!87679 0))(
  ( (array!87680 (arr!42315 (Array (_ BitVec 32) ValueCell!16783)) (size!42866 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87679)

(assert (=> b!1311285 (= res!870602 (and (= (size!42866 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42865 _keys!1628) (size!42866 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1311286 () Bool)

(declare-fun e!748085 () Bool)

(declare-fun mapRes!54673 () Bool)

(assert (=> b!1311286 (= e!748085 (and e!748083 mapRes!54673))))

(declare-fun condMapEmpty!54673 () Bool)

(declare-fun mapDefault!54673 () ValueCell!16783)

