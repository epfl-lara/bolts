; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77546 () Bool)

(assert start!77546)

(declare-fun b_free!16103 () Bool)

(declare-fun b_next!16103 () Bool)

(assert (=> start!77546 (= b_free!16103 (not b_next!16103))))

(declare-fun tp!56571 () Bool)

(declare-fun b_and!26487 () Bool)

(assert (=> start!77546 (= tp!56571 b_and!26487)))

(declare-fun mapIsEmpty!29494 () Bool)

(declare-fun mapRes!29494 () Bool)

(assert (=> mapIsEmpty!29494 mapRes!29494))

(declare-fun res!609427 () Bool)

(declare-fun e!505970 () Bool)

(assert (=> start!77546 (=> (not res!609427) (not e!505970))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77546 (= res!609427 (validMask!0 mask!1756))))

(assert (=> start!77546 e!505970))

(declare-datatypes ((V!29659 0))(
  ( (V!29660 (val!9311 Int)) )
))
(declare-datatypes ((ValueCell!8779 0))(
  ( (ValueCellFull!8779 (v!11816 V!29659)) (EmptyCell!8779) )
))
(declare-datatypes ((array!53088 0))(
  ( (array!53089 (arr!25499 (Array (_ BitVec 32) ValueCell!8779)) (size!25959 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53088)

(declare-fun e!505972 () Bool)

(declare-fun array_inv!19962 (array!53088) Bool)

(assert (=> start!77546 (and (array_inv!19962 _values!1152) e!505972)))

(assert (=> start!77546 tp!56571))

(assert (=> start!77546 true))

(declare-fun tp_is_empty!18521 () Bool)

(assert (=> start!77546 tp_is_empty!18521))

(declare-datatypes ((array!53090 0))(
  ( (array!53091 (arr!25500 (Array (_ BitVec 32) (_ BitVec 64))) (size!25960 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53090)

(declare-fun array_inv!19963 (array!53090) Bool)

(assert (=> start!77546 (array_inv!19963 _keys!1386)))

(declare-fun b!903065 () Bool)

(assert (=> b!903065 (= e!505970 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!29659)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun lt!407921 () Bool)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29659)

(declare-datatypes ((tuple2!12112 0))(
  ( (tuple2!12113 (_1!6066 (_ BitVec 64)) (_2!6066 V!29659)) )
))
(declare-datatypes ((List!17989 0))(
  ( (Nil!17986) (Cons!17985 (h!19131 tuple2!12112) (t!25380 List!17989)) )
))
(declare-datatypes ((ListLongMap!10823 0))(
  ( (ListLongMap!10824 (toList!5427 List!17989)) )
))
(declare-fun contains!4440 (ListLongMap!10823 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2664 (array!53090 array!53088 (_ BitVec 32) (_ BitVec 32) V!29659 V!29659 (_ BitVec 32) Int) ListLongMap!10823)

(assert (=> b!903065 (= lt!407921 (contains!4440 (getCurrentListMap!2664 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!903066 () Bool)

(declare-fun e!505971 () Bool)

(assert (=> b!903066 (= e!505971 tp_is_empty!18521)))

(declare-fun b!903067 () Bool)

(declare-fun res!609428 () Bool)

(assert (=> b!903067 (=> (not res!609428) (not e!505970))))

(assert (=> b!903067 (= res!609428 (and (= (size!25959 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25960 _keys!1386) (size!25959 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!903068 () Bool)

(declare-fun res!609429 () Bool)

(assert (=> b!903068 (=> (not res!609429) (not e!505970))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53090 (_ BitVec 32)) Bool)

(assert (=> b!903068 (= res!609429 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!903069 () Bool)

(assert (=> b!903069 (= e!505972 (and e!505971 mapRes!29494))))

(declare-fun condMapEmpty!29494 () Bool)

(declare-fun mapDefault!29494 () ValueCell!8779)

