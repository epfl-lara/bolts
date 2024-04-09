; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77758 () Bool)

(assert start!77758)

(declare-fun b_free!16315 () Bool)

(declare-fun b_next!16315 () Bool)

(assert (=> start!77758 (= b_free!16315 (not b_next!16315))))

(declare-fun tp!57208 () Bool)

(declare-fun b_and!26801 () Bool)

(assert (=> start!77758 (= tp!57208 b_and!26801)))

(declare-fun b!906818 () Bool)

(declare-fun e!508222 () Bool)

(assert (=> b!906818 (= e!508222 true)))

(declare-datatypes ((V!29943 0))(
  ( (V!29944 (val!9417 Int)) )
))
(declare-datatypes ((tuple2!12280 0))(
  ( (tuple2!12281 (_1!6150 (_ BitVec 64)) (_2!6150 V!29943)) )
))
(declare-datatypes ((List!18142 0))(
  ( (Nil!18139) (Cons!18138 (h!19284 tuple2!12280) (t!25637 List!18142)) )
))
(declare-datatypes ((ListLongMap!10991 0))(
  ( (ListLongMap!10992 (toList!5511 List!18142)) )
))
(declare-fun lt!409057 () ListLongMap!10991)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun lt!409061 () V!29943)

(declare-fun apply!487 (ListLongMap!10991 (_ BitVec 64)) V!29943)

(assert (=> b!906818 (= (apply!487 lt!409057 k!1033) lt!409061)))

(declare-datatypes ((ValueCell!8885 0))(
  ( (ValueCellFull!8885 (v!11922 V!29943)) (EmptyCell!8885) )
))
(declare-datatypes ((array!53492 0))(
  ( (array!53493 (arr!25701 (Array (_ BitVec 32) ValueCell!8885)) (size!26161 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53492)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29943)

(declare-datatypes ((array!53494 0))(
  ( (array!53495 (arr!25702 (Array (_ BitVec 32) (_ BitVec 64))) (size!26162 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53494)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29943)

(declare-datatypes ((Unit!30747 0))(
  ( (Unit!30748) )
))
(declare-fun lt!409059 () Unit!30747)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!34 (array!53494 array!53492 (_ BitVec 32) (_ BitVec 32) V!29943 V!29943 (_ BitVec 64) V!29943 (_ BitVec 32) Int) Unit!30747)

(assert (=> b!906818 (= lt!409059 (lemmaListMapApplyFromThenApplyFromZero!34 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 lt!409061 i!717 defaultEntry!1160))))

(declare-fun b!906819 () Bool)

(declare-fun res!612127 () Bool)

(declare-fun e!508226 () Bool)

(assert (=> b!906819 (=> (not res!612127) (not e!508226))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!906819 (= res!612127 (inRange!0 i!717 mask!1756))))

(declare-fun b!906820 () Bool)

(declare-fun e!508223 () Bool)

(assert (=> b!906820 (= e!508226 (not e!508223))))

(declare-fun res!612123 () Bool)

(assert (=> b!906820 (=> res!612123 e!508223)))

(assert (=> b!906820 (= res!612123 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26162 _keys!1386))))))

(declare-fun get!13531 (ValueCell!8885 V!29943) V!29943)

(declare-fun dynLambda!1359 (Int (_ BitVec 64)) V!29943)

(assert (=> b!906820 (= lt!409061 (get!13531 (select (arr!25701 _values!1152) i!717) (dynLambda!1359 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53494 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!906820 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun lt!409058 () Unit!30747)

(declare-fun lemmaKeyInListMapIsInArray!232 (array!53494 array!53492 (_ BitVec 32) (_ BitVec 32) V!29943 V!29943 (_ BitVec 64) Int) Unit!30747)

(assert (=> b!906820 (= lt!409058 (lemmaKeyInListMapIsInArray!232 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!906821 () Bool)

(declare-fun res!612124 () Bool)

(assert (=> b!906821 (=> (not res!612124) (not e!508226))))

(assert (=> b!906821 (= res!612124 (and (= (select (arr!25702 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!612130 () Bool)

(declare-fun e!508228 () Bool)

(assert (=> start!77758 (=> (not res!612130) (not e!508228))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77758 (= res!612130 (validMask!0 mask!1756))))

(assert (=> start!77758 e!508228))

(declare-fun e!508225 () Bool)

(declare-fun array_inv!20100 (array!53492) Bool)

(assert (=> start!77758 (and (array_inv!20100 _values!1152) e!508225)))

(assert (=> start!77758 tp!57208))

(assert (=> start!77758 true))

(declare-fun tp_is_empty!18733 () Bool)

(assert (=> start!77758 tp_is_empty!18733))

(declare-fun array_inv!20101 (array!53494) Bool)

(assert (=> start!77758 (array_inv!20101 _keys!1386)))

(declare-fun b!906822 () Bool)

(declare-fun res!612131 () Bool)

(assert (=> b!906822 (=> (not res!612131) (not e!508228))))

(assert (=> b!906822 (= res!612131 (and (= (size!26161 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26162 _keys!1386) (size!26161 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!906823 () Bool)

(declare-fun res!612132 () Bool)

(assert (=> b!906823 (=> (not res!612132) (not e!508228))))

(declare-datatypes ((List!18143 0))(
  ( (Nil!18140) (Cons!18139 (h!19285 (_ BitVec 64)) (t!25638 List!18143)) )
))
(declare-fun arrayNoDuplicates!0 (array!53494 (_ BitVec 32) List!18143) Bool)

(assert (=> b!906823 (= res!612132 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18140))))

(declare-fun b!906824 () Bool)

(assert (=> b!906824 (= e!508223 e!508222)))

(declare-fun res!612128 () Bool)

(assert (=> b!906824 (=> res!612128 e!508222)))

(declare-fun lt!409060 () ListLongMap!10991)

(declare-fun contains!4521 (ListLongMap!10991 (_ BitVec 64)) Bool)

(assert (=> b!906824 (= res!612128 (not (contains!4521 lt!409060 k!1033)))))

(declare-fun getCurrentListMap!2745 (array!53494 array!53492 (_ BitVec 32) (_ BitVec 32) V!29943 V!29943 (_ BitVec 32) Int) ListLongMap!10991)

(assert (=> b!906824 (= lt!409060 (getCurrentListMap!2745 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!906825 () Bool)

(declare-fun res!612129 () Bool)

(assert (=> b!906825 (=> res!612129 e!508222)))

(assert (=> b!906825 (= res!612129 (not (= (apply!487 lt!409060 k!1033) lt!409061)))))

(declare-fun mapNonEmpty!29812 () Bool)

(declare-fun mapRes!29812 () Bool)

(declare-fun tp!57207 () Bool)

(declare-fun e!508224 () Bool)

(assert (=> mapNonEmpty!29812 (= mapRes!29812 (and tp!57207 e!508224))))

(declare-fun mapKey!29812 () (_ BitVec 32))

(declare-fun mapRest!29812 () (Array (_ BitVec 32) ValueCell!8885))

(declare-fun mapValue!29812 () ValueCell!8885)

(assert (=> mapNonEmpty!29812 (= (arr!25701 _values!1152) (store mapRest!29812 mapKey!29812 mapValue!29812))))

(declare-fun mapIsEmpty!29812 () Bool)

(assert (=> mapIsEmpty!29812 mapRes!29812))

(declare-fun b!906826 () Bool)

(assert (=> b!906826 (= e!508224 tp_is_empty!18733)))

(declare-fun b!906827 () Bool)

(declare-fun res!612125 () Bool)

(assert (=> b!906827 (=> (not res!612125) (not e!508228))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53494 (_ BitVec 32)) Bool)

(assert (=> b!906827 (= res!612125 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!906828 () Bool)

(assert (=> b!906828 (= e!508228 e!508226)))

(declare-fun res!612126 () Bool)

(assert (=> b!906828 (=> (not res!612126) (not e!508226))))

(assert (=> b!906828 (= res!612126 (contains!4521 lt!409057 k!1033))))

(assert (=> b!906828 (= lt!409057 (getCurrentListMap!2745 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!906829 () Bool)

(declare-fun e!508229 () Bool)

(assert (=> b!906829 (= e!508229 tp_is_empty!18733)))

(declare-fun b!906830 () Bool)

(assert (=> b!906830 (= e!508225 (and e!508229 mapRes!29812))))

(declare-fun condMapEmpty!29812 () Bool)

(declare-fun mapDefault!29812 () ValueCell!8885)

