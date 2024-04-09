; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77506 () Bool)

(assert start!77506)

(declare-fun b!902734 () Bool)

(declare-fun res!609250 () Bool)

(declare-fun e!505718 () Bool)

(assert (=> b!902734 (=> (not res!609250) (not e!505718))))

(declare-datatypes ((array!53030 0))(
  ( (array!53031 (arr!25471 (Array (_ BitVec 32) (_ BitVec 64))) (size!25931 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53030)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53030 (_ BitVec 32)) Bool)

(assert (=> b!902734 (= res!609250 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!902735 () Bool)

(assert (=> b!902735 (= e!505718 false)))

(declare-fun lt!407876 () Bool)

(declare-datatypes ((List!17976 0))(
  ( (Nil!17973) (Cons!17972 (h!19118 (_ BitVec 64)) (t!25367 List!17976)) )
))
(declare-fun arrayNoDuplicates!0 (array!53030 (_ BitVec 32) List!17976) Bool)

(assert (=> b!902735 (= lt!407876 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!17973))))

(declare-fun b!902736 () Bool)

(declare-fun e!505717 () Bool)

(declare-fun tp_is_empty!18491 () Bool)

(assert (=> b!902736 (= e!505717 tp_is_empty!18491)))

(declare-fun mapIsEmpty!29446 () Bool)

(declare-fun mapRes!29446 () Bool)

(assert (=> mapIsEmpty!29446 mapRes!29446))

(declare-fun b!902737 () Bool)

(declare-fun e!505719 () Bool)

(assert (=> b!902737 (= e!505719 tp_is_empty!18491)))

(declare-fun b!902738 () Bool)

(declare-fun e!505721 () Bool)

(assert (=> b!902738 (= e!505721 (and e!505717 mapRes!29446))))

(declare-fun condMapEmpty!29446 () Bool)

(declare-datatypes ((V!29619 0))(
  ( (V!29620 (val!9296 Int)) )
))
(declare-datatypes ((ValueCell!8764 0))(
  ( (ValueCellFull!8764 (v!11801 V!29619)) (EmptyCell!8764) )
))
(declare-datatypes ((array!53032 0))(
  ( (array!53033 (arr!25472 (Array (_ BitVec 32) ValueCell!8764)) (size!25932 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53032)

(declare-fun mapDefault!29446 () ValueCell!8764)

