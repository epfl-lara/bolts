; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77966 () Bool)

(assert start!77966)

(declare-fun b_free!16481 () Bool)

(declare-fun b_next!16481 () Bool)

(assert (=> start!77966 (= b_free!16481 (not b_next!16481))))

(declare-fun tp!57712 () Bool)

(declare-fun b_and!27069 () Bool)

(assert (=> start!77966 (= tp!57712 b_and!27069)))

(declare-fun b!909788 () Bool)

(declare-fun res!614101 () Bool)

(declare-fun e!510067 () Bool)

(assert (=> b!909788 (=> (not res!614101) (not e!510067))))

(declare-datatypes ((array!53816 0))(
  ( (array!53817 (arr!25861 (Array (_ BitVec 32) (_ BitVec 64))) (size!26321 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53816)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53816 (_ BitVec 32)) Bool)

(assert (=> b!909788 (= res!614101 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapIsEmpty!30067 () Bool)

(declare-fun mapRes!30067 () Bool)

(assert (=> mapIsEmpty!30067 mapRes!30067))

(declare-fun b!909789 () Bool)

(declare-fun res!614100 () Bool)

(assert (=> b!909789 (=> (not res!614100) (not e!510067))))

(declare-datatypes ((V!30163 0))(
  ( (V!30164 (val!9500 Int)) )
))
(declare-datatypes ((ValueCell!8968 0))(
  ( (ValueCellFull!8968 (v!12008 V!30163)) (EmptyCell!8968) )
))
(declare-datatypes ((array!53818 0))(
  ( (array!53819 (arr!25862 (Array (_ BitVec 32) ValueCell!8968)) (size!26322 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53818)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!909789 (= res!614100 (and (= (size!26322 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26321 _keys!1386) (size!26322 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun res!614098 () Bool)

(assert (=> start!77966 (=> (not res!614098) (not e!510067))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77966 (= res!614098 (validMask!0 mask!1756))))

(assert (=> start!77966 e!510067))

(declare-fun e!510070 () Bool)

(declare-fun array_inv!20206 (array!53818) Bool)

(assert (=> start!77966 (and (array_inv!20206 _values!1152) e!510070)))

(assert (=> start!77966 tp!57712))

(assert (=> start!77966 true))

(declare-fun tp_is_empty!18899 () Bool)

(assert (=> start!77966 tp_is_empty!18899))

(declare-fun array_inv!20207 (array!53816) Bool)

(assert (=> start!77966 (array_inv!20207 _keys!1386)))

(declare-fun b!909790 () Bool)

(declare-fun e!510069 () Bool)

(assert (=> b!909790 (= e!510069 tp_is_empty!18899)))

(declare-fun b!909791 () Bool)

(declare-fun e!510068 () Bool)

(assert (=> b!909791 (= e!510068 tp_is_empty!18899)))

(declare-fun mapNonEmpty!30067 () Bool)

(declare-fun tp!57711 () Bool)

(assert (=> mapNonEmpty!30067 (= mapRes!30067 (and tp!57711 e!510069))))

(declare-fun mapKey!30067 () (_ BitVec 32))

(declare-fun mapRest!30067 () (Array (_ BitVec 32) ValueCell!8968))

(declare-fun mapValue!30067 () ValueCell!8968)

(assert (=> mapNonEmpty!30067 (= (arr!25862 _values!1152) (store mapRest!30067 mapKey!30067 mapValue!30067))))

(declare-fun b!909792 () Bool)

(assert (=> b!909792 (= e!510067 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!410071 () Bool)

(declare-fun zeroValue!1094 () V!30163)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun minValue!1094 () V!30163)

(declare-datatypes ((tuple2!12414 0))(
  ( (tuple2!12415 (_1!6217 (_ BitVec 64)) (_2!6217 V!30163)) )
))
(declare-datatypes ((List!18268 0))(
  ( (Nil!18265) (Cons!18264 (h!19410 tuple2!12414) (t!25859 List!18268)) )
))
(declare-datatypes ((ListLongMap!11125 0))(
  ( (ListLongMap!11126 (toList!5578 List!18268)) )
))
(declare-fun contains!4586 (ListLongMap!11125 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2808 (array!53816 array!53818 (_ BitVec 32) (_ BitVec 32) V!30163 V!30163 (_ BitVec 32) Int) ListLongMap!11125)

(assert (=> b!909792 (= lt!410071 (contains!4586 (getCurrentListMap!2808 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!909793 () Bool)

(assert (=> b!909793 (= e!510070 (and e!510068 mapRes!30067))))

(declare-fun condMapEmpty!30067 () Bool)

(declare-fun mapDefault!30067 () ValueCell!8968)

