; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77962 () Bool)

(assert start!77962)

(declare-fun b_free!16477 () Bool)

(declare-fun b_next!16477 () Bool)

(assert (=> start!77962 (= b_free!16477 (not b_next!16477))))

(declare-fun tp!57699 () Bool)

(declare-fun b_and!27065 () Bool)

(assert (=> start!77962 (= tp!57699 b_and!27065)))

(declare-fun res!614077 () Bool)

(declare-fun e!510037 () Bool)

(assert (=> start!77962 (=> (not res!614077) (not e!510037))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77962 (= res!614077 (validMask!0 mask!1756))))

(assert (=> start!77962 e!510037))

(declare-datatypes ((V!30159 0))(
  ( (V!30160 (val!9498 Int)) )
))
(declare-datatypes ((ValueCell!8966 0))(
  ( (ValueCellFull!8966 (v!12006 V!30159)) (EmptyCell!8966) )
))
(declare-datatypes ((array!53808 0))(
  ( (array!53809 (arr!25857 (Array (_ BitVec 32) ValueCell!8966)) (size!26317 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53808)

(declare-fun e!510039 () Bool)

(declare-fun array_inv!20202 (array!53808) Bool)

(assert (=> start!77962 (and (array_inv!20202 _values!1152) e!510039)))

(assert (=> start!77962 tp!57699))

(assert (=> start!77962 true))

(declare-fun tp_is_empty!18895 () Bool)

(assert (=> start!77962 tp_is_empty!18895))

(declare-datatypes ((array!53810 0))(
  ( (array!53811 (arr!25858 (Array (_ BitVec 32) (_ BitVec 64))) (size!26318 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53810)

(declare-fun array_inv!20203 (array!53810) Bool)

(assert (=> start!77962 (array_inv!20203 _keys!1386)))

(declare-fun b!909746 () Bool)

(assert (=> b!909746 (= e!510037 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30159)

(declare-fun lt!410065 () Bool)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30159)

(declare-datatypes ((tuple2!12410 0))(
  ( (tuple2!12411 (_1!6215 (_ BitVec 64)) (_2!6215 V!30159)) )
))
(declare-datatypes ((List!18264 0))(
  ( (Nil!18261) (Cons!18260 (h!19406 tuple2!12410) (t!25855 List!18264)) )
))
(declare-datatypes ((ListLongMap!11121 0))(
  ( (ListLongMap!11122 (toList!5576 List!18264)) )
))
(declare-fun contains!4584 (ListLongMap!11121 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2806 (array!53810 array!53808 (_ BitVec 32) (_ BitVec 32) V!30159 V!30159 (_ BitVec 32) Int) ListLongMap!11121)

(assert (=> b!909746 (= lt!410065 (contains!4584 (getCurrentListMap!2806 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!909747 () Bool)

(declare-fun res!614076 () Bool)

(assert (=> b!909747 (=> (not res!614076) (not e!510037))))

(declare-datatypes ((List!18265 0))(
  ( (Nil!18262) (Cons!18261 (h!19407 (_ BitVec 64)) (t!25856 List!18265)) )
))
(declare-fun arrayNoDuplicates!0 (array!53810 (_ BitVec 32) List!18265) Bool)

(assert (=> b!909747 (= res!614076 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18262))))

(declare-fun b!909748 () Bool)

(declare-fun res!614075 () Bool)

(assert (=> b!909748 (=> (not res!614075) (not e!510037))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53810 (_ BitVec 32)) Bool)

(assert (=> b!909748 (= res!614075 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapIsEmpty!30061 () Bool)

(declare-fun mapRes!30061 () Bool)

(assert (=> mapIsEmpty!30061 mapRes!30061))

(declare-fun b!909749 () Bool)

(declare-fun e!510041 () Bool)

(assert (=> b!909749 (= e!510041 tp_is_empty!18895)))

(declare-fun b!909750 () Bool)

(declare-fun e!510038 () Bool)

(assert (=> b!909750 (= e!510039 (and e!510038 mapRes!30061))))

(declare-fun condMapEmpty!30061 () Bool)

(declare-fun mapDefault!30061 () ValueCell!8966)

