; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77608 () Bool)

(assert start!77608)

(declare-fun b_free!16165 () Bool)

(declare-fun b_next!16165 () Bool)

(assert (=> start!77608 (= b_free!16165 (not b_next!16165))))

(declare-fun tp!56758 () Bool)

(declare-fun b_and!26549 () Bool)

(assert (=> start!77608 (= tp!56758 b_and!26549)))

(declare-fun b!903861 () Bool)

(declare-fun res!609945 () Bool)

(declare-fun e!506497 () Bool)

(assert (=> b!903861 (=> (not res!609945) (not e!506497))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!903861 (= res!609945 (inRange!0 i!717 mask!1756))))

(declare-fun b!903862 () Bool)

(declare-fun e!506496 () Bool)

(declare-fun tp_is_empty!18583 () Bool)

(assert (=> b!903862 (= e!506496 tp_is_empty!18583)))

(declare-fun res!609951 () Bool)

(assert (=> start!77608 (=> (not res!609951) (not e!506497))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77608 (= res!609951 (validMask!0 mask!1756))))

(assert (=> start!77608 e!506497))

(declare-datatypes ((V!29743 0))(
  ( (V!29744 (val!9342 Int)) )
))
(declare-datatypes ((ValueCell!8810 0))(
  ( (ValueCellFull!8810 (v!11847 V!29743)) (EmptyCell!8810) )
))
(declare-datatypes ((array!53198 0))(
  ( (array!53199 (arr!25554 (Array (_ BitVec 32) ValueCell!8810)) (size!26014 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53198)

(declare-fun e!506492 () Bool)

(declare-fun array_inv!20000 (array!53198) Bool)

(assert (=> start!77608 (and (array_inv!20000 _values!1152) e!506492)))

(assert (=> start!77608 tp!56758))

(assert (=> start!77608 true))

(assert (=> start!77608 tp_is_empty!18583))

(declare-datatypes ((array!53200 0))(
  ( (array!53201 (arr!25555 (Array (_ BitVec 32) (_ BitVec 64))) (size!26015 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53200)

(declare-fun array_inv!20001 (array!53200) Bool)

(assert (=> start!77608 (array_inv!20001 _keys!1386)))

(declare-fun mapIsEmpty!29587 () Bool)

(declare-fun mapRes!29587 () Bool)

(assert (=> mapIsEmpty!29587 mapRes!29587))

(declare-fun b!903863 () Bool)

(declare-fun e!506495 () Bool)

(assert (=> b!903863 (= e!506495 tp_is_empty!18583)))

(declare-fun b!903864 () Bool)

(declare-fun e!506493 () Bool)

(declare-fun e!506494 () Bool)

(assert (=> b!903864 (= e!506493 e!506494)))

(declare-fun res!609943 () Bool)

(assert (=> b!903864 (=> res!609943 e!506494)))

(declare-datatypes ((tuple2!12150 0))(
  ( (tuple2!12151 (_1!6085 (_ BitVec 64)) (_2!6085 V!29743)) )
))
(declare-datatypes ((List!18025 0))(
  ( (Nil!18022) (Cons!18021 (h!19167 tuple2!12150) (t!25416 List!18025)) )
))
(declare-datatypes ((ListLongMap!10861 0))(
  ( (ListLongMap!10862 (toList!5446 List!18025)) )
))
(declare-fun lt!408072 () ListLongMap!10861)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun contains!4459 (ListLongMap!10861 (_ BitVec 64)) Bool)

(assert (=> b!903864 (= res!609943 (not (contains!4459 lt!408072 k!1033)))))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!29743)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29743)

(declare-fun getCurrentListMap!2683 (array!53200 array!53198 (_ BitVec 32) (_ BitVec 32) V!29743 V!29743 (_ BitVec 32) Int) ListLongMap!10861)

(assert (=> b!903864 (= lt!408072 (getCurrentListMap!2683 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!903865 () Bool)

(assert (=> b!903865 (= e!506497 (not e!506493))))

(declare-fun res!609947 () Bool)

(assert (=> b!903865 (=> res!609947 e!506493)))

(assert (=> b!903865 (= res!609947 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26015 _keys!1386))))))

(declare-fun arrayContainsKey!0 (array!53200 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!903865 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30623 0))(
  ( (Unit!30624) )
))
(declare-fun lt!408074 () Unit!30623)

(declare-fun lemmaKeyInListMapIsInArray!174 (array!53200 array!53198 (_ BitVec 32) (_ BitVec 32) V!29743 V!29743 (_ BitVec 64) Int) Unit!30623)

(assert (=> b!903865 (= lt!408074 (lemmaKeyInListMapIsInArray!174 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!903866 () Bool)

(declare-fun res!609949 () Bool)

(assert (=> b!903866 (=> (not res!609949) (not e!506497))))

(assert (=> b!903866 (= res!609949 (and (= (select (arr!25555 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!903867 () Bool)

(declare-fun res!609948 () Bool)

(assert (=> b!903867 (=> (not res!609948) (not e!506497))))

(declare-datatypes ((List!18026 0))(
  ( (Nil!18023) (Cons!18022 (h!19168 (_ BitVec 64)) (t!25417 List!18026)) )
))
(declare-fun arrayNoDuplicates!0 (array!53200 (_ BitVec 32) List!18026) Bool)

(assert (=> b!903867 (= res!609948 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18023))))

(declare-fun b!903868 () Bool)

(declare-fun res!609950 () Bool)

(assert (=> b!903868 (=> (not res!609950) (not e!506497))))

(assert (=> b!903868 (= res!609950 (contains!4459 (getCurrentListMap!2683 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!903869 () Bool)

(declare-fun res!609946 () Bool)

(assert (=> b!903869 (=> (not res!609946) (not e!506497))))

(assert (=> b!903869 (= res!609946 (and (= (size!26014 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26015 _keys!1386) (size!26014 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!903870 () Bool)

(assert (=> b!903870 (= e!506494 true)))

(declare-fun lt!408073 () V!29743)

(declare-fun apply!429 (ListLongMap!10861 (_ BitVec 64)) V!29743)

(assert (=> b!903870 (= lt!408073 (apply!429 lt!408072 k!1033))))

(declare-fun b!903871 () Bool)

(assert (=> b!903871 (= e!506492 (and e!506496 mapRes!29587))))

(declare-fun condMapEmpty!29587 () Bool)

(declare-fun mapDefault!29587 () ValueCell!8810)

