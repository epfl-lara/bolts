; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77602 () Bool)

(assert start!77602)

(declare-fun b_free!16159 () Bool)

(declare-fun b_next!16159 () Bool)

(assert (=> start!77602 (= b_free!16159 (not b_next!16159))))

(declare-fun tp!56740 () Bool)

(declare-fun b_and!26543 () Bool)

(assert (=> start!77602 (= tp!56740 b_and!26543)))

(declare-fun mapIsEmpty!29578 () Bool)

(declare-fun mapRes!29578 () Bool)

(assert (=> mapIsEmpty!29578 mapRes!29578))

(declare-fun b!903753 () Bool)

(declare-fun res!609870 () Bool)

(declare-fun e!506433 () Bool)

(assert (=> b!903753 (=> (not res!609870) (not e!506433))))

(declare-datatypes ((V!29735 0))(
  ( (V!29736 (val!9339 Int)) )
))
(declare-datatypes ((ValueCell!8807 0))(
  ( (ValueCellFull!8807 (v!11844 V!29735)) (EmptyCell!8807) )
))
(declare-datatypes ((array!53186 0))(
  ( (array!53187 (arr!25548 (Array (_ BitVec 32) ValueCell!8807)) (size!26008 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53186)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29735)

(declare-datatypes ((array!53188 0))(
  ( (array!53189 (arr!25549 (Array (_ BitVec 32) (_ BitVec 64))) (size!26009 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53188)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29735)

(declare-datatypes ((tuple2!12144 0))(
  ( (tuple2!12145 (_1!6082 (_ BitVec 64)) (_2!6082 V!29735)) )
))
(declare-datatypes ((List!18020 0))(
  ( (Nil!18017) (Cons!18016 (h!19162 tuple2!12144) (t!25411 List!18020)) )
))
(declare-datatypes ((ListLongMap!10855 0))(
  ( (ListLongMap!10856 (toList!5443 List!18020)) )
))
(declare-fun contains!4456 (ListLongMap!10855 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2680 (array!53188 array!53186 (_ BitVec 32) (_ BitVec 32) V!29735 V!29735 (_ BitVec 32) Int) ListLongMap!10855)

(assert (=> b!903753 (= res!609870 (contains!4456 (getCurrentListMap!2680 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun res!609863 () Bool)

(assert (=> start!77602 (=> (not res!609863) (not e!506433))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77602 (= res!609863 (validMask!0 mask!1756))))

(assert (=> start!77602 e!506433))

(declare-fun e!506434 () Bool)

(declare-fun array_inv!19994 (array!53186) Bool)

(assert (=> start!77602 (and (array_inv!19994 _values!1152) e!506434)))

(assert (=> start!77602 tp!56740))

(assert (=> start!77602 true))

(declare-fun tp_is_empty!18577 () Bool)

(assert (=> start!77602 tp_is_empty!18577))

(declare-fun array_inv!19995 (array!53188) Bool)

(assert (=> start!77602 (array_inv!19995 _keys!1386)))

(declare-fun b!903754 () Bool)

(declare-fun e!506429 () Bool)

(assert (=> b!903754 (= e!506429 true)))

(declare-fun lt!408047 () V!29735)

(declare-fun lt!408045 () ListLongMap!10855)

(declare-fun apply!426 (ListLongMap!10855 (_ BitVec 64)) V!29735)

(assert (=> b!903754 (= lt!408047 (apply!426 lt!408045 k!1033))))

(declare-fun b!903755 () Bool)

(declare-fun res!609864 () Bool)

(assert (=> b!903755 (=> (not res!609864) (not e!506433))))

(declare-fun i!717 () (_ BitVec 32))

(assert (=> b!903755 (= res!609864 (and (= (select (arr!25549 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!903756 () Bool)

(declare-fun e!506430 () Bool)

(assert (=> b!903756 (= e!506430 tp_is_empty!18577)))

(declare-fun b!903757 () Bool)

(declare-fun e!506431 () Bool)

(assert (=> b!903757 (= e!506431 e!506429)))

(declare-fun res!609867 () Bool)

(assert (=> b!903757 (=> res!609867 e!506429)))

(assert (=> b!903757 (= res!609867 (not (contains!4456 lt!408045 k!1033)))))

(assert (=> b!903757 (= lt!408045 (getCurrentListMap!2680 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!903758 () Bool)

(declare-fun res!609865 () Bool)

(assert (=> b!903758 (=> (not res!609865) (not e!506433))))

(assert (=> b!903758 (= res!609865 (and (= (size!26008 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26009 _keys!1386) (size!26008 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!903759 () Bool)

(assert (=> b!903759 (= e!506434 (and e!506430 mapRes!29578))))

(declare-fun condMapEmpty!29578 () Bool)

(declare-fun mapDefault!29578 () ValueCell!8807)

