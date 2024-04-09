; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77626 () Bool)

(assert start!77626)

(declare-fun b_free!16183 () Bool)

(declare-fun b_next!16183 () Bool)

(assert (=> start!77626 (= b_free!16183 (not b_next!16183))))

(declare-fun tp!56812 () Bool)

(declare-fun b_and!26567 () Bool)

(assert (=> start!77626 (= tp!56812 b_and!26567)))

(declare-fun mapIsEmpty!29614 () Bool)

(declare-fun mapRes!29614 () Bool)

(assert (=> mapIsEmpty!29614 mapRes!29614))

(declare-fun b!904185 () Bool)

(declare-fun e!506682 () Bool)

(declare-fun tp_is_empty!18601 () Bool)

(assert (=> b!904185 (= e!506682 tp_is_empty!18601)))

(declare-fun b!904186 () Bool)

(declare-fun res!610186 () Bool)

(declare-fun e!506683 () Bool)

(assert (=> b!904186 (=> (not res!610186) (not e!506683))))

(declare-datatypes ((array!53232 0))(
  ( (array!53233 (arr!25571 (Array (_ BitVec 32) (_ BitVec 64))) (size!26031 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53232)

(declare-datatypes ((List!18041 0))(
  ( (Nil!18038) (Cons!18037 (h!19183 (_ BitVec 64)) (t!25432 List!18041)) )
))
(declare-fun arrayNoDuplicates!0 (array!53232 (_ BitVec 32) List!18041) Bool)

(assert (=> b!904186 (= res!610186 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18038))))

(declare-fun b!904187 () Bool)

(declare-fun res!610190 () Bool)

(assert (=> b!904187 (=> (not res!610190) (not e!506683))))

(declare-datatypes ((V!29767 0))(
  ( (V!29768 (val!9351 Int)) )
))
(declare-datatypes ((ValueCell!8819 0))(
  ( (ValueCellFull!8819 (v!11856 V!29767)) (EmptyCell!8819) )
))
(declare-datatypes ((array!53234 0))(
  ( (array!53235 (arr!25572 (Array (_ BitVec 32) ValueCell!8819)) (size!26032 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53234)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(assert (=> b!904187 (= res!610190 (and (= (size!26032 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26031 _keys!1386) (size!26032 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!904188 () Bool)

(declare-fun e!506681 () Bool)

(assert (=> b!904188 (= e!506683 (not e!506681))))

(declare-fun res!610189 () Bool)

(assert (=> b!904188 (=> res!610189 e!506681)))

(declare-fun i!717 () (_ BitVec 32))

(assert (=> b!904188 (= res!610189 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26031 _keys!1386))))))

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!53232 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!904188 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun defaultEntry!1160 () Int)

(declare-datatypes ((Unit!30639 0))(
  ( (Unit!30640) )
))
(declare-fun lt!408154 () Unit!30639)

(declare-fun zeroValue!1094 () V!29767)

(declare-fun minValue!1094 () V!29767)

(declare-fun lemmaKeyInListMapIsInArray!182 (array!53232 array!53234 (_ BitVec 32) (_ BitVec 32) V!29767 V!29767 (_ BitVec 64) Int) Unit!30639)

(assert (=> b!904188 (= lt!408154 (lemmaKeyInListMapIsInArray!182 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!904189 () Bool)

(declare-fun res!610193 () Bool)

(assert (=> b!904189 (=> (not res!610193) (not e!506683))))

(assert (=> b!904189 (= res!610193 (and (= (select (arr!25571 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!904190 () Bool)

(declare-fun e!506684 () Bool)

(assert (=> b!904190 (= e!506681 e!506684)))

(declare-fun res!610188 () Bool)

(assert (=> b!904190 (=> res!610188 e!506684)))

(declare-datatypes ((tuple2!12166 0))(
  ( (tuple2!12167 (_1!6093 (_ BitVec 64)) (_2!6093 V!29767)) )
))
(declare-datatypes ((List!18042 0))(
  ( (Nil!18039) (Cons!18038 (h!19184 tuple2!12166) (t!25433 List!18042)) )
))
(declare-datatypes ((ListLongMap!10877 0))(
  ( (ListLongMap!10878 (toList!5454 List!18042)) )
))
(declare-fun lt!408153 () ListLongMap!10877)

(declare-fun contains!4467 (ListLongMap!10877 (_ BitVec 64)) Bool)

(assert (=> b!904190 (= res!610188 (not (contains!4467 lt!408153 k!1033)))))

(declare-fun getCurrentListMap!2691 (array!53232 array!53234 (_ BitVec 32) (_ BitVec 32) V!29767 V!29767 (_ BitVec 32) Int) ListLongMap!10877)

(assert (=> b!904190 (= lt!408153 (getCurrentListMap!2691 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!904191 () Bool)

(declare-fun e!506686 () Bool)

(assert (=> b!904191 (= e!506686 (and e!506682 mapRes!29614))))

(declare-fun condMapEmpty!29614 () Bool)

(declare-fun mapDefault!29614 () ValueCell!8819)

