; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77752 () Bool)

(assert start!77752)

(declare-fun b_free!16309 () Bool)

(declare-fun b_next!16309 () Bool)

(assert (=> start!77752 (= b_free!16309 (not b_next!16309))))

(declare-fun tp!57189 () Bool)

(declare-fun b_and!26789 () Bool)

(assert (=> start!77752 (= tp!57189 b_and!26789)))

(declare-fun b!906695 () Bool)

(declare-fun res!612034 () Bool)

(declare-fun e!508154 () Bool)

(assert (=> b!906695 (=> (not res!612034) (not e!508154))))

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((array!53480 0))(
  ( (array!53481 (arr!25695 (Array (_ BitVec 32) (_ BitVec 64))) (size!26155 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53480)

(declare-fun k!1033 () (_ BitVec 64))

(assert (=> b!906695 (= res!612034 (and (= (select (arr!25695 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!612042 () Bool)

(declare-fun e!508152 () Bool)

(assert (=> start!77752 (=> (not res!612042) (not e!508152))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77752 (= res!612042 (validMask!0 mask!1756))))

(assert (=> start!77752 e!508152))

(declare-datatypes ((V!29935 0))(
  ( (V!29936 (val!9414 Int)) )
))
(declare-datatypes ((ValueCell!8882 0))(
  ( (ValueCellFull!8882 (v!11919 V!29935)) (EmptyCell!8882) )
))
(declare-datatypes ((array!53482 0))(
  ( (array!53483 (arr!25696 (Array (_ BitVec 32) ValueCell!8882)) (size!26156 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53482)

(declare-fun e!508150 () Bool)

(declare-fun array_inv!20096 (array!53482) Bool)

(assert (=> start!77752 (and (array_inv!20096 _values!1152) e!508150)))

(assert (=> start!77752 tp!57189))

(assert (=> start!77752 true))

(declare-fun tp_is_empty!18727 () Bool)

(assert (=> start!77752 tp_is_empty!18727))

(declare-fun array_inv!20097 (array!53480) Bool)

(assert (=> start!77752 (array_inv!20097 _keys!1386)))

(declare-fun mapIsEmpty!29803 () Bool)

(declare-fun mapRes!29803 () Bool)

(assert (=> mapIsEmpty!29803 mapRes!29803))

(declare-fun b!906696 () Bool)

(declare-fun e!508155 () Bool)

(assert (=> b!906696 (= e!508155 tp_is_empty!18727)))

(declare-fun b!906697 () Bool)

(declare-fun res!612037 () Bool)

(assert (=> b!906697 (=> (not res!612037) (not e!508154))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!906697 (= res!612037 (inRange!0 i!717 mask!1756))))

(declare-fun b!906698 () Bool)

(declare-fun res!612041 () Bool)

(assert (=> b!906698 (=> (not res!612041) (not e!508152))))

(declare-datatypes ((List!18139 0))(
  ( (Nil!18136) (Cons!18135 (h!19281 (_ BitVec 64)) (t!25628 List!18139)) )
))
(declare-fun arrayNoDuplicates!0 (array!53480 (_ BitVec 32) List!18139) Bool)

(assert (=> b!906698 (= res!612041 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18136))))

(declare-fun b!906699 () Bool)

(declare-fun res!612033 () Bool)

(assert (=> b!906699 (=> (not res!612033) (not e!508152))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53480 (_ BitVec 32)) Bool)

(assert (=> b!906699 (= res!612033 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapNonEmpty!29803 () Bool)

(declare-fun tp!57190 () Bool)

(declare-fun e!508153 () Bool)

(assert (=> mapNonEmpty!29803 (= mapRes!29803 (and tp!57190 e!508153))))

(declare-fun mapRest!29803 () (Array (_ BitVec 32) ValueCell!8882))

(declare-fun mapKey!29803 () (_ BitVec 32))

(declare-fun mapValue!29803 () ValueCell!8882)

(assert (=> mapNonEmpty!29803 (= (arr!25696 _values!1152) (store mapRest!29803 mapKey!29803 mapValue!29803))))

(declare-fun b!906700 () Bool)

(assert (=> b!906700 (= e!508150 (and e!508155 mapRes!29803))))

(declare-fun condMapEmpty!29803 () Bool)

(declare-fun mapDefault!29803 () ValueCell!8882)

