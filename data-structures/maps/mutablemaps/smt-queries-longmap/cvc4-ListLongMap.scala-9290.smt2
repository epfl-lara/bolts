; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111128 () Bool)

(assert start!111128)

(declare-fun b_free!29927 () Bool)

(declare-fun b_next!29927 () Bool)

(assert (=> start!111128 (= b_free!29927 (not b_next!29927))))

(declare-fun tp!105103 () Bool)

(declare-fun b_and!48145 () Bool)

(assert (=> start!111128 (= tp!105103 b_and!48145)))

(declare-fun b!1315233 () Bool)

(declare-fun res!873230 () Bool)

(declare-fun e!750288 () Bool)

(assert (=> b!1315233 (=> (not res!873230) (not e!750288))))

(declare-datatypes ((array!88241 0))(
  ( (array!88242 (arr!42596 (Array (_ BitVec 32) (_ BitVec 64))) (size!43147 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88241)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52645 0))(
  ( (V!52646 (val!17903 Int)) )
))
(declare-datatypes ((ValueCell!16930 0))(
  ( (ValueCellFull!16930 (v!20528 V!52645)) (EmptyCell!16930) )
))
(declare-datatypes ((array!88243 0))(
  ( (array!88244 (arr!42597 (Array (_ BitVec 32) ValueCell!16930)) (size!43148 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88243)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1315233 (= res!873230 (and (= (size!43148 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43147 _keys!1628) (size!43148 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1315234 () Bool)

(declare-fun e!750289 () Bool)

(declare-fun e!750287 () Bool)

(declare-fun mapRes!55114 () Bool)

(assert (=> b!1315234 (= e!750289 (and e!750287 mapRes!55114))))

(declare-fun condMapEmpty!55114 () Bool)

(declare-fun mapDefault!55114 () ValueCell!16930)

