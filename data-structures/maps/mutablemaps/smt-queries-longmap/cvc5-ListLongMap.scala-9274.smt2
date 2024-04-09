; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111028 () Bool)

(assert start!111028)

(declare-fun b_free!29827 () Bool)

(declare-fun b_next!29827 () Bool)

(assert (=> start!111028 (= b_free!29827 (not b_next!29827))))

(declare-fun tp!104803 () Bool)

(declare-fun b_and!48045 () Bool)

(assert (=> start!111028 (= tp!104803 b_and!48045)))

(declare-fun b!1313961 () Bool)

(declare-fun res!872407 () Bool)

(declare-fun e!749540 () Bool)

(assert (=> b!1313961 (=> (not res!872407) (not e!749540))))

(declare-datatypes ((array!88051 0))(
  ( (array!88052 (arr!42501 (Array (_ BitVec 32) (_ BitVec 64))) (size!43052 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88051)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52513 0))(
  ( (V!52514 (val!17853 Int)) )
))
(declare-datatypes ((ValueCell!16880 0))(
  ( (ValueCellFull!16880 (v!20478 V!52513)) (EmptyCell!16880) )
))
(declare-datatypes ((array!88053 0))(
  ( (array!88054 (arr!42502 (Array (_ BitVec 32) ValueCell!16880)) (size!43053 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88053)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1313961 (= res!872407 (and (= (size!43053 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43052 _keys!1628) (size!43053 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun res!872408 () Bool)

(assert (=> start!111028 (=> (not res!872408) (not e!749540))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111028 (= res!872408 (validMask!0 mask!2040))))

(assert (=> start!111028 e!749540))

(assert (=> start!111028 tp!104803))

(declare-fun array_inv!32079 (array!88051) Bool)

(assert (=> start!111028 (array_inv!32079 _keys!1628)))

(assert (=> start!111028 true))

(declare-fun tp_is_empty!35557 () Bool)

(assert (=> start!111028 tp_is_empty!35557))

(declare-fun e!749536 () Bool)

(declare-fun array_inv!32080 (array!88053) Bool)

(assert (=> start!111028 (and (array_inv!32080 _values!1354) e!749536)))

(declare-fun b!1313962 () Bool)

(declare-fun e!749537 () Bool)

(declare-fun mapRes!54964 () Bool)

(assert (=> b!1313962 (= e!749536 (and e!749537 mapRes!54964))))

(declare-fun condMapEmpty!54964 () Bool)

(declare-fun mapDefault!54964 () ValueCell!16880)

