; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110824 () Bool)

(assert start!110824)

(declare-fun b_free!29623 () Bool)

(declare-fun b_next!29623 () Bool)

(assert (=> start!110824 (= b_free!29623 (not b_next!29623))))

(declare-fun tp!104191 () Bool)

(declare-fun b_and!47841 () Bool)

(assert (=> start!110824 (= tp!104191 b_and!47841)))

(declare-fun b!1311162 () Bool)

(declare-fun res!870527 () Bool)

(declare-fun e!748010 () Bool)

(assert (=> b!1311162 (=> (not res!870527) (not e!748010))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52241 0))(
  ( (V!52242 (val!17751 Int)) )
))
(declare-datatypes ((ValueCell!16778 0))(
  ( (ValueCellFull!16778 (v!20376 V!52241)) (EmptyCell!16778) )
))
(declare-datatypes ((array!87657 0))(
  ( (array!87658 (arr!42304 (Array (_ BitVec 32) ValueCell!16778)) (size!42855 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87657)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((array!87659 0))(
  ( (array!87660 (arr!42305 (Array (_ BitVec 32) (_ BitVec 64))) (size!42856 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87659)

(assert (=> b!1311162 (= res!870527 (and (= (size!42855 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42856 _keys!1628) (size!42855 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1311163 () Bool)

(declare-fun e!748009 () Bool)

(declare-fun e!748006 () Bool)

(declare-fun mapRes!54658 () Bool)

(assert (=> b!1311163 (= e!748009 (and e!748006 mapRes!54658))))

(declare-fun condMapEmpty!54658 () Bool)

(declare-fun mapDefault!54658 () ValueCell!16778)

