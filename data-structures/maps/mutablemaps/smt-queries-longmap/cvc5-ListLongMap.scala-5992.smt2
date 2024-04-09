; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77832 () Bool)

(assert start!77832)

(declare-fun b_free!16363 () Bool)

(declare-fun b_next!16363 () Bool)

(assert (=> start!77832 (= b_free!16363 (not b_next!16363))))

(declare-fun tp!57354 () Bool)

(declare-fun b_and!26901 () Bool)

(assert (=> start!77832 (= tp!57354 b_and!26901)))

(declare-fun b!907954 () Bool)

(declare-fun e!508901 () Bool)

(declare-fun e!508902 () Bool)

(assert (=> b!907954 (= e!508901 (not e!508902))))

(declare-fun res!612913 () Bool)

(assert (=> b!907954 (=> res!612913 e!508902)))

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((array!53588 0))(
  ( (array!53589 (arr!25748 (Array (_ BitVec 32) (_ BitVec 64))) (size!26208 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53588)

(assert (=> b!907954 (= res!612913 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26208 _keys!1386))))))

(declare-datatypes ((V!30007 0))(
  ( (V!30008 (val!9441 Int)) )
))
(declare-datatypes ((ValueCell!8909 0))(
  ( (ValueCellFull!8909 (v!11948 V!30007)) (EmptyCell!8909) )
))
(declare-datatypes ((array!53590 0))(
  ( (array!53591 (arr!25749 (Array (_ BitVec 32) ValueCell!8909)) (size!26209 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53590)

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!409538 () V!30007)

(declare-fun get!13568 (ValueCell!8909 V!30007) V!30007)

(declare-fun dynLambda!1377 (Int (_ BitVec 64)) V!30007)

(assert (=> b!907954 (= lt!409538 (get!13568 (select (arr!25749 _values!1152) i!717) (dynLambda!1377 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!53588 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!907954 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30007)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-datatypes ((Unit!30795 0))(
  ( (Unit!30796) )
))
(declare-fun lt!409537 () Unit!30795)

(declare-fun minValue!1094 () V!30007)

(declare-fun lemmaKeyInListMapIsInArray!250 (array!53588 array!53590 (_ BitVec 32) (_ BitVec 32) V!30007 V!30007 (_ BitVec 64) Int) Unit!30795)

(assert (=> b!907954 (= lt!409537 (lemmaKeyInListMapIsInArray!250 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!907955 () Bool)

(declare-fun e!508904 () Bool)

(declare-fun tp_is_empty!18781 () Bool)

(assert (=> b!907955 (= e!508904 tp_is_empty!18781)))

(declare-fun b!907956 () Bool)

(declare-fun res!612911 () Bool)

(assert (=> b!907956 (=> (not res!612911) (not e!508901))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!907956 (= res!612911 (inRange!0 i!717 mask!1756))))

(declare-fun b!907957 () Bool)

(declare-fun res!612908 () Bool)

(declare-fun e!508907 () Bool)

(assert (=> b!907957 (=> res!612908 e!508907)))

(declare-datatypes ((tuple2!12324 0))(
  ( (tuple2!12325 (_1!6172 (_ BitVec 64)) (_2!6172 V!30007)) )
))
(declare-datatypes ((List!18181 0))(
  ( (Nil!18178) (Cons!18177 (h!19323 tuple2!12324) (t!25724 List!18181)) )
))
(declare-datatypes ((ListLongMap!11035 0))(
  ( (ListLongMap!11036 (toList!5533 List!18181)) )
))
(declare-fun lt!409536 () ListLongMap!11035)

(declare-fun apply!508 (ListLongMap!11035 (_ BitVec 64)) V!30007)

(assert (=> b!907957 (= res!612908 (not (= (apply!508 lt!409536 k!1033) lt!409538)))))

(declare-fun b!907958 () Bool)

(assert (=> b!907958 (= e!508907 true)))

(declare-fun lt!409540 () ListLongMap!11035)

(assert (=> b!907958 (= (apply!508 lt!409540 k!1033) lt!409538)))

(declare-fun lt!409539 () Unit!30795)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!54 (array!53588 array!53590 (_ BitVec 32) (_ BitVec 32) V!30007 V!30007 (_ BitVec 64) V!30007 (_ BitVec 32) Int) Unit!30795)

(assert (=> b!907958 (= lt!409539 (lemmaListMapApplyFromThenApplyFromZero!54 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 lt!409538 i!717 defaultEntry!1160))))

(declare-fun b!907959 () Bool)

(declare-fun e!508903 () Bool)

(assert (=> b!907959 (= e!508903 tp_is_empty!18781)))

(declare-fun b!907960 () Bool)

(declare-fun e!508906 () Bool)

(assert (=> b!907960 (= e!508906 e!508901)))

(declare-fun res!612916 () Bool)

(assert (=> b!907960 (=> (not res!612916) (not e!508901))))

(declare-fun contains!4542 (ListLongMap!11035 (_ BitVec 64)) Bool)

(assert (=> b!907960 (= res!612916 (contains!4542 lt!409540 k!1033))))

(declare-fun getCurrentListMap!2765 (array!53588 array!53590 (_ BitVec 32) (_ BitVec 32) V!30007 V!30007 (_ BitVec 32) Int) ListLongMap!11035)

(assert (=> b!907960 (= lt!409540 (getCurrentListMap!2765 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!907961 () Bool)

(assert (=> b!907961 (= e!508902 e!508907)))

(declare-fun res!612909 () Bool)

(assert (=> b!907961 (=> res!612909 e!508907)))

(assert (=> b!907961 (= res!612909 (not (contains!4542 lt!409536 k!1033)))))

(assert (=> b!907961 (= lt!409536 (getCurrentListMap!2765 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!907962 () Bool)

(declare-fun res!612915 () Bool)

(assert (=> b!907962 (=> (not res!612915) (not e!508901))))

(assert (=> b!907962 (= res!612915 (and (= (select (arr!25748 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!907963 () Bool)

(declare-fun res!612912 () Bool)

(assert (=> b!907963 (=> (not res!612912) (not e!508906))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53588 (_ BitVec 32)) Bool)

(assert (=> b!907963 (= res!612912 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapNonEmpty!29887 () Bool)

(declare-fun mapRes!29887 () Bool)

(declare-fun tp!57355 () Bool)

(assert (=> mapNonEmpty!29887 (= mapRes!29887 (and tp!57355 e!508903))))

(declare-fun mapRest!29887 () (Array (_ BitVec 32) ValueCell!8909))

(declare-fun mapKey!29887 () (_ BitVec 32))

(declare-fun mapValue!29887 () ValueCell!8909)

(assert (=> mapNonEmpty!29887 (= (arr!25749 _values!1152) (store mapRest!29887 mapKey!29887 mapValue!29887))))

(declare-fun b!907964 () Bool)

(declare-fun res!612907 () Bool)

(assert (=> b!907964 (=> (not res!612907) (not e!508906))))

(assert (=> b!907964 (= res!612907 (and (= (size!26209 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26208 _keys!1386) (size!26209 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!29887 () Bool)

(assert (=> mapIsEmpty!29887 mapRes!29887))

(declare-fun res!612910 () Bool)

(assert (=> start!77832 (=> (not res!612910) (not e!508906))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77832 (= res!612910 (validMask!0 mask!1756))))

(assert (=> start!77832 e!508906))

(declare-fun e!508905 () Bool)

(declare-fun array_inv!20134 (array!53590) Bool)

(assert (=> start!77832 (and (array_inv!20134 _values!1152) e!508905)))

(assert (=> start!77832 tp!57354))

(assert (=> start!77832 true))

(assert (=> start!77832 tp_is_empty!18781))

(declare-fun array_inv!20135 (array!53588) Bool)

(assert (=> start!77832 (array_inv!20135 _keys!1386)))

(declare-fun b!907965 () Bool)

(declare-fun res!612914 () Bool)

(assert (=> b!907965 (=> (not res!612914) (not e!508906))))

(declare-datatypes ((List!18182 0))(
  ( (Nil!18179) (Cons!18178 (h!19324 (_ BitVec 64)) (t!25725 List!18182)) )
))
(declare-fun arrayNoDuplicates!0 (array!53588 (_ BitVec 32) List!18182) Bool)

(assert (=> b!907965 (= res!612914 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18179))))

(declare-fun b!907966 () Bool)

(assert (=> b!907966 (= e!508905 (and e!508904 mapRes!29887))))

(declare-fun condMapEmpty!29887 () Bool)

(declare-fun mapDefault!29887 () ValueCell!8909)

