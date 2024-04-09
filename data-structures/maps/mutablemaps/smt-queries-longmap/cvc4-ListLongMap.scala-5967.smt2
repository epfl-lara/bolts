; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77660 () Bool)

(assert start!77660)

(declare-fun b_free!16217 () Bool)

(declare-fun b_next!16217 () Bool)

(assert (=> start!77660 (= b_free!16217 (not b_next!16217))))

(declare-fun tp!56913 () Bool)

(declare-fun b_and!26605 () Bool)

(assert (=> start!77660 (= tp!56913 b_and!26605)))

(declare-fun b!904809 () Bool)

(declare-fun e!507053 () Bool)

(declare-fun e!507050 () Bool)

(assert (=> b!904809 (= e!507053 e!507050)))

(declare-fun res!610662 () Bool)

(assert (=> b!904809 (=> (not res!610662) (not e!507050))))

(declare-datatypes ((V!29811 0))(
  ( (V!29812 (val!9368 Int)) )
))
(declare-datatypes ((tuple2!12198 0))(
  ( (tuple2!12199 (_1!6109 (_ BitVec 64)) (_2!6109 V!29811)) )
))
(declare-datatypes ((List!18069 0))(
  ( (Nil!18066) (Cons!18065 (h!19211 tuple2!12198) (t!25466 List!18069)) )
))
(declare-datatypes ((ListLongMap!10909 0))(
  ( (ListLongMap!10910 (toList!5470 List!18069)) )
))
(declare-fun lt!408322 () ListLongMap!10909)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun contains!4483 (ListLongMap!10909 (_ BitVec 64)) Bool)

(assert (=> b!904809 (= res!610662 (contains!4483 lt!408322 k!1033))))

(declare-datatypes ((ValueCell!8836 0))(
  ( (ValueCellFull!8836 (v!11873 V!29811)) (EmptyCell!8836) )
))
(declare-datatypes ((array!53300 0))(
  ( (array!53301 (arr!25605 (Array (_ BitVec 32) ValueCell!8836)) (size!26065 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53300)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29811)

(declare-datatypes ((array!53302 0))(
  ( (array!53303 (arr!25606 (Array (_ BitVec 32) (_ BitVec 64))) (size!26066 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53302)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29811)

(declare-fun getCurrentListMap!2707 (array!53302 array!53300 (_ BitVec 32) (_ BitVec 32) V!29811 V!29811 (_ BitVec 32) Int) ListLongMap!10909)

(assert (=> b!904809 (= lt!408322 (getCurrentListMap!2707 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun mapIsEmpty!29665 () Bool)

(declare-fun mapRes!29665 () Bool)

(assert (=> mapIsEmpty!29665 mapRes!29665))

(declare-fun b!904810 () Bool)

(declare-fun res!610660 () Bool)

(assert (=> b!904810 (=> (not res!610660) (not e!507053))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53302 (_ BitVec 32)) Bool)

(assert (=> b!904810 (= res!610660 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!904811 () Bool)

(declare-fun e!507047 () Bool)

(declare-fun tp_is_empty!18635 () Bool)

(assert (=> b!904811 (= e!507047 tp_is_empty!18635)))

(declare-fun mapNonEmpty!29665 () Bool)

(declare-fun tp!56914 () Bool)

(assert (=> mapNonEmpty!29665 (= mapRes!29665 (and tp!56914 e!507047))))

(declare-fun mapKey!29665 () (_ BitVec 32))

(declare-fun mapValue!29665 () ValueCell!8836)

(declare-fun mapRest!29665 () (Array (_ BitVec 32) ValueCell!8836))

(assert (=> mapNonEmpty!29665 (= (arr!25605 _values!1152) (store mapRest!29665 mapKey!29665 mapValue!29665))))

(declare-fun b!904812 () Bool)

(declare-fun e!507048 () Bool)

(declare-fun e!507051 () Bool)

(assert (=> b!904812 (= e!507048 e!507051)))

(declare-fun res!610653 () Bool)

(assert (=> b!904812 (=> res!610653 e!507051)))

(declare-fun lt!408326 () ListLongMap!10909)

(assert (=> b!904812 (= res!610653 (not (contains!4483 lt!408326 k!1033)))))

(declare-fun i!717 () (_ BitVec 32))

(assert (=> b!904812 (= lt!408326 (getCurrentListMap!2707 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!904813 () Bool)

(declare-fun e!507046 () Bool)

(assert (=> b!904813 (= e!507046 tp_is_empty!18635)))

(declare-fun b!904814 () Bool)

(declare-fun res!610656 () Bool)

(assert (=> b!904814 (=> (not res!610656) (not e!507050))))

(assert (=> b!904814 (= res!610656 (and (= (select (arr!25606 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!904815 () Bool)

(declare-fun res!610654 () Bool)

(assert (=> b!904815 (=> (not res!610654) (not e!507050))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!904815 (= res!610654 (inRange!0 i!717 mask!1756))))

(declare-fun b!904816 () Bool)

(declare-fun res!610655 () Bool)

(assert (=> b!904816 (=> (not res!610655) (not e!507053))))

(declare-datatypes ((List!18070 0))(
  ( (Nil!18067) (Cons!18066 (h!19212 (_ BitVec 64)) (t!25467 List!18070)) )
))
(declare-fun arrayNoDuplicates!0 (array!53302 (_ BitVec 32) List!18070) Bool)

(assert (=> b!904816 (= res!610655 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18067))))

(declare-fun res!610659 () Bool)

(assert (=> start!77660 (=> (not res!610659) (not e!507053))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77660 (= res!610659 (validMask!0 mask!1756))))

(assert (=> start!77660 e!507053))

(declare-fun e!507052 () Bool)

(declare-fun array_inv!20040 (array!53300) Bool)

(assert (=> start!77660 (and (array_inv!20040 _values!1152) e!507052)))

(assert (=> start!77660 tp!56913))

(assert (=> start!77660 true))

(assert (=> start!77660 tp_is_empty!18635))

(declare-fun array_inv!20041 (array!53302) Bool)

(assert (=> start!77660 (array_inv!20041 _keys!1386)))

(declare-fun b!904817 () Bool)

(declare-fun res!610657 () Bool)

(assert (=> b!904817 (=> (not res!610657) (not e!507053))))

(assert (=> b!904817 (= res!610657 (and (= (size!26065 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26066 _keys!1386) (size!26065 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!904818 () Bool)

(assert (=> b!904818 (= e!507050 (not e!507048))))

(declare-fun res!610658 () Bool)

(assert (=> b!904818 (=> res!610658 e!507048)))

(assert (=> b!904818 (= res!610658 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26066 _keys!1386))))))

(declare-fun lt!408323 () V!29811)

(declare-fun get!13462 (ValueCell!8836 V!29811) V!29811)

(declare-fun dynLambda!1324 (Int (_ BitVec 64)) V!29811)

(assert (=> b!904818 (= lt!408323 (get!13462 (select (arr!25605 _values!1152) i!717) (dynLambda!1324 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53302 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!904818 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30669 0))(
  ( (Unit!30670) )
))
(declare-fun lt!408324 () Unit!30669)

(declare-fun lemmaKeyInListMapIsInArray!197 (array!53302 array!53300 (_ BitVec 32) (_ BitVec 32) V!29811 V!29811 (_ BitVec 64) Int) Unit!30669)

(assert (=> b!904818 (= lt!408324 (lemmaKeyInListMapIsInArray!197 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!904819 () Bool)

(declare-fun res!610661 () Bool)

(assert (=> b!904819 (=> res!610661 e!507051)))

(declare-fun apply!448 (ListLongMap!10909 (_ BitVec 64)) V!29811)

(assert (=> b!904819 (= res!610661 (not (= (apply!448 lt!408326 k!1033) lt!408323)))))

(declare-fun b!904820 () Bool)

(assert (=> b!904820 (= e!507052 (and e!507046 mapRes!29665))))

(declare-fun condMapEmpty!29665 () Bool)

(declare-fun mapDefault!29665 () ValueCell!8836)

