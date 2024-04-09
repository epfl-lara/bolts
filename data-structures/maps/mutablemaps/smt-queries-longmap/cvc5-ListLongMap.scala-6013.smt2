; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77974 () Bool)

(assert start!77974)

(declare-fun b_free!16489 () Bool)

(declare-fun b_next!16489 () Bool)

(assert (=> start!77974 (= b_free!16489 (not b_next!16489))))

(declare-fun tp!57735 () Bool)

(declare-fun b_and!27077 () Bool)

(assert (=> start!77974 (= tp!57735 b_and!27077)))

(declare-fun b!909872 () Bool)

(declare-fun e!510130 () Bool)

(assert (=> b!909872 (= e!510130 false)))

(declare-datatypes ((V!30175 0))(
  ( (V!30176 (val!9504 Int)) )
))
(declare-datatypes ((ValueCell!8972 0))(
  ( (ValueCellFull!8972 (v!12012 V!30175)) (EmptyCell!8972) )
))
(declare-datatypes ((array!53832 0))(
  ( (array!53833 (arr!25869 (Array (_ BitVec 32) ValueCell!8972)) (size!26329 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53832)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30175)

(declare-datatypes ((array!53834 0))(
  ( (array!53835 (arr!25870 (Array (_ BitVec 32) (_ BitVec 64))) (size!26330 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53834)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun lt!410083 () Bool)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30175)

(declare-datatypes ((tuple2!12422 0))(
  ( (tuple2!12423 (_1!6221 (_ BitVec 64)) (_2!6221 V!30175)) )
))
(declare-datatypes ((List!18274 0))(
  ( (Nil!18271) (Cons!18270 (h!19416 tuple2!12422) (t!25865 List!18274)) )
))
(declare-datatypes ((ListLongMap!11133 0))(
  ( (ListLongMap!11134 (toList!5582 List!18274)) )
))
(declare-fun contains!4590 (ListLongMap!11133 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2812 (array!53834 array!53832 (_ BitVec 32) (_ BitVec 32) V!30175 V!30175 (_ BitVec 32) Int) ListLongMap!11133)

(assert (=> b!909872 (= lt!410083 (contains!4590 (getCurrentListMap!2812 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun res!614148 () Bool)

(assert (=> start!77974 (=> (not res!614148) (not e!510130))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77974 (= res!614148 (validMask!0 mask!1756))))

(assert (=> start!77974 e!510130))

(declare-fun e!510127 () Bool)

(declare-fun array_inv!20212 (array!53832) Bool)

(assert (=> start!77974 (and (array_inv!20212 _values!1152) e!510127)))

(assert (=> start!77974 tp!57735))

(assert (=> start!77974 true))

(declare-fun tp_is_empty!18907 () Bool)

(assert (=> start!77974 tp_is_empty!18907))

(declare-fun array_inv!20213 (array!53834) Bool)

(assert (=> start!77974 (array_inv!20213 _keys!1386)))

(declare-fun b!909873 () Bool)

(declare-fun e!510129 () Bool)

(assert (=> b!909873 (= e!510129 tp_is_empty!18907)))

(declare-fun b!909874 () Bool)

(declare-fun res!614147 () Bool)

(assert (=> b!909874 (=> (not res!614147) (not e!510130))))

(assert (=> b!909874 (= res!614147 (and (= (size!26329 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26330 _keys!1386) (size!26329 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!909875 () Bool)

(declare-fun res!614149 () Bool)

(assert (=> b!909875 (=> (not res!614149) (not e!510130))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53834 (_ BitVec 32)) Bool)

(assert (=> b!909875 (= res!614149 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!909876 () Bool)

(declare-fun res!614146 () Bool)

(assert (=> b!909876 (=> (not res!614146) (not e!510130))))

(declare-datatypes ((List!18275 0))(
  ( (Nil!18272) (Cons!18271 (h!19417 (_ BitVec 64)) (t!25866 List!18275)) )
))
(declare-fun arrayNoDuplicates!0 (array!53834 (_ BitVec 32) List!18275) Bool)

(assert (=> b!909876 (= res!614146 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18272))))

(declare-fun b!909877 () Bool)

(declare-fun e!510128 () Bool)

(assert (=> b!909877 (= e!510128 tp_is_empty!18907)))

(declare-fun mapIsEmpty!30079 () Bool)

(declare-fun mapRes!30079 () Bool)

(assert (=> mapIsEmpty!30079 mapRes!30079))

(declare-fun mapNonEmpty!30079 () Bool)

(declare-fun tp!57736 () Bool)

(assert (=> mapNonEmpty!30079 (= mapRes!30079 (and tp!57736 e!510129))))

(declare-fun mapRest!30079 () (Array (_ BitVec 32) ValueCell!8972))

(declare-fun mapValue!30079 () ValueCell!8972)

(declare-fun mapKey!30079 () (_ BitVec 32))

(assert (=> mapNonEmpty!30079 (= (arr!25869 _values!1152) (store mapRest!30079 mapKey!30079 mapValue!30079))))

(declare-fun b!909878 () Bool)

(assert (=> b!909878 (= e!510127 (and e!510128 mapRes!30079))))

(declare-fun condMapEmpty!30079 () Bool)

(declare-fun mapDefault!30079 () ValueCell!8972)

