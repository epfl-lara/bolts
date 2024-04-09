; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111086 () Bool)

(assert start!111086)

(declare-fun b_free!29885 () Bool)

(declare-fun b_next!29885 () Bool)

(assert (=> start!111086 (= b_free!29885 (not b_next!29885))))

(declare-fun tp!104978 () Bool)

(declare-fun b_and!48103 () Bool)

(assert (=> start!111086 (= tp!104978 b_and!48103)))

(declare-fun b!1314693 () Bool)

(declare-fun res!872875 () Bool)

(declare-fun e!749975 () Bool)

(assert (=> b!1314693 (=> (not res!872875) (not e!749975))))

(declare-datatypes ((array!88163 0))(
  ( (array!88164 (arr!42557 (Array (_ BitVec 32) (_ BitVec 64))) (size!43108 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88163)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88163 (_ BitVec 32)) Bool)

(assert (=> b!1314693 (= res!872875 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1314694 () Bool)

(declare-fun res!872878 () Bool)

(assert (=> b!1314694 (=> (not res!872878) (not e!749975))))

(declare-datatypes ((V!52589 0))(
  ( (V!52590 (val!17882 Int)) )
))
(declare-datatypes ((ValueCell!16909 0))(
  ( (ValueCellFull!16909 (v!20507 V!52589)) (EmptyCell!16909) )
))
(declare-datatypes ((array!88165 0))(
  ( (array!88166 (arr!42558 (Array (_ BitVec 32) ValueCell!16909)) (size!43109 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88165)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1314694 (= res!872878 (and (= (size!43109 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43108 _keys!1628) (size!43109 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1314695 () Bool)

(declare-fun e!749971 () Bool)

(declare-fun e!749974 () Bool)

(declare-fun mapRes!55051 () Bool)

(assert (=> b!1314695 (= e!749971 (and e!749974 mapRes!55051))))

(declare-fun condMapEmpty!55051 () Bool)

(declare-fun mapDefault!55051 () ValueCell!16909)

