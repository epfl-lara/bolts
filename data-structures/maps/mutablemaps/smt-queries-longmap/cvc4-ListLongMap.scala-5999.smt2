; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77878 () Bool)

(assert start!77878)

(declare-fun b_free!16409 () Bool)

(declare-fun b_next!16409 () Bool)

(assert (=> start!77878 (= b_free!16409 (not b_next!16409))))

(declare-fun tp!57493 () Bool)

(declare-fun b_and!26993 () Bool)

(assert (=> start!77878 (= tp!57493 b_and!26993)))

(declare-fun b!908897 () Bool)

(declare-fun res!613604 () Bool)

(declare-fun e!509452 () Bool)

(assert (=> b!908897 (=> (not res!613604) (not e!509452))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!908897 (= res!613604 (inRange!0 i!717 mask!1756))))

(declare-fun b!908898 () Bool)

(declare-fun e!509456 () Bool)

(declare-fun e!509454 () Bool)

(assert (=> b!908898 (= e!509456 e!509454)))

(declare-fun res!613600 () Bool)

(assert (=> b!908898 (=> res!613600 e!509454)))

(declare-datatypes ((V!30067 0))(
  ( (V!30068 (val!9464 Int)) )
))
(declare-datatypes ((tuple2!12364 0))(
  ( (tuple2!12365 (_1!6192 (_ BitVec 64)) (_2!6192 V!30067)) )
))
(declare-datatypes ((List!18218 0))(
  ( (Nil!18215) (Cons!18214 (h!19360 tuple2!12364) (t!25807 List!18218)) )
))
(declare-datatypes ((ListLongMap!11075 0))(
  ( (ListLongMap!11076 (toList!5553 List!18218)) )
))
(declare-fun lt!409882 () ListLongMap!11075)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun contains!4560 (ListLongMap!11075 (_ BitVec 64)) Bool)

(assert (=> b!908898 (= res!613600 (not (contains!4560 lt!409882 k!1033)))))

(declare-datatypes ((ValueCell!8932 0))(
  ( (ValueCellFull!8932 (v!11971 V!30067)) (EmptyCell!8932) )
))
(declare-datatypes ((array!53676 0))(
  ( (array!53677 (arr!25792 (Array (_ BitVec 32) ValueCell!8932)) (size!26252 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53676)

(declare-fun zeroValue!1094 () V!30067)

(declare-datatypes ((array!53678 0))(
  ( (array!53679 (arr!25793 (Array (_ BitVec 32) (_ BitVec 64))) (size!26253 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53678)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30067)

(declare-fun defaultEntry!1160 () Int)

(declare-fun getCurrentListMap!2783 (array!53678 array!53676 (_ BitVec 32) (_ BitVec 32) V!30067 V!30067 (_ BitVec 32) Int) ListLongMap!11075)

(assert (=> b!908898 (= lt!409882 (getCurrentListMap!2783 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!908899 () Bool)

(declare-fun e!509455 () Bool)

(declare-fun tp_is_empty!18827 () Bool)

(assert (=> b!908899 (= e!509455 tp_is_empty!18827)))

(declare-fun b!908900 () Bool)

(declare-fun e!509459 () Bool)

(assert (=> b!908900 (= e!509459 e!509452)))

(declare-fun res!613606 () Bool)

(assert (=> b!908900 (=> (not res!613606) (not e!509452))))

(declare-fun lt!409885 () ListLongMap!11075)

(assert (=> b!908900 (= res!613606 (contains!4560 lt!409885 k!1033))))

(assert (=> b!908900 (= lt!409885 (getCurrentListMap!2783 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun mapIsEmpty!29956 () Bool)

(declare-fun mapRes!29956 () Bool)

(assert (=> mapIsEmpty!29956 mapRes!29956))

(declare-fun b!908901 () Bool)

(declare-fun res!613599 () Bool)

(assert (=> b!908901 (=> res!613599 e!509454)))

(declare-fun lt!409884 () V!30067)

(declare-fun apply!524 (ListLongMap!11075 (_ BitVec 64)) V!30067)

(assert (=> b!908901 (= res!613599 (not (= (apply!524 lt!409882 k!1033) lt!409884)))))

(declare-fun b!908902 () Bool)

(declare-fun res!613605 () Bool)

(assert (=> b!908902 (=> (not res!613605) (not e!509459))))

(assert (=> b!908902 (= res!613605 (and (= (size!26252 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26253 _keys!1386) (size!26252 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!908903 () Bool)

(declare-fun res!613601 () Bool)

(assert (=> b!908903 (=> (not res!613601) (not e!509459))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53678 (_ BitVec 32)) Bool)

(assert (=> b!908903 (= res!613601 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun res!613603 () Bool)

(assert (=> start!77878 (=> (not res!613603) (not e!509459))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77878 (= res!613603 (validMask!0 mask!1756))))

(assert (=> start!77878 e!509459))

(declare-fun e!509458 () Bool)

(declare-fun array_inv!20166 (array!53676) Bool)

(assert (=> start!77878 (and (array_inv!20166 _values!1152) e!509458)))

(assert (=> start!77878 tp!57493))

(assert (=> start!77878 true))

(assert (=> start!77878 tp_is_empty!18827))

(declare-fun array_inv!20167 (array!53678) Bool)

(assert (=> start!77878 (array_inv!20167 _keys!1386)))

(declare-fun b!908904 () Bool)

(declare-fun e!509453 () Bool)

(assert (=> b!908904 (= e!509453 tp_is_empty!18827)))

(declare-fun b!908905 () Bool)

(assert (=> b!908905 (= e!509452 (not e!509456))))

(declare-fun res!613597 () Bool)

(assert (=> b!908905 (=> res!613597 e!509456)))

(assert (=> b!908905 (= res!613597 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26253 _keys!1386))))))

(declare-fun get!13596 (ValueCell!8932 V!30067) V!30067)

(declare-fun dynLambda!1391 (Int (_ BitVec 64)) V!30067)

(assert (=> b!908905 (= lt!409884 (get!13596 (select (arr!25792 _values!1152) i!717) (dynLambda!1391 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53678 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!908905 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30823 0))(
  ( (Unit!30824) )
))
(declare-fun lt!409881 () Unit!30823)

(declare-fun lemmaKeyInListMapIsInArray!264 (array!53678 array!53676 (_ BitVec 32) (_ BitVec 32) V!30067 V!30067 (_ BitVec 64) Int) Unit!30823)

(assert (=> b!908905 (= lt!409881 (lemmaKeyInListMapIsInArray!264 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!908906 () Bool)

(declare-fun res!613598 () Bool)

(assert (=> b!908906 (=> (not res!613598) (not e!509459))))

(declare-datatypes ((List!18219 0))(
  ( (Nil!18216) (Cons!18215 (h!19361 (_ BitVec 64)) (t!25808 List!18219)) )
))
(declare-fun arrayNoDuplicates!0 (array!53678 (_ BitVec 32) List!18219) Bool)

(assert (=> b!908906 (= res!613598 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18216))))

(declare-fun mapNonEmpty!29956 () Bool)

(declare-fun tp!57492 () Bool)

(assert (=> mapNonEmpty!29956 (= mapRes!29956 (and tp!57492 e!509455))))

(declare-fun mapValue!29956 () ValueCell!8932)

(declare-fun mapRest!29956 () (Array (_ BitVec 32) ValueCell!8932))

(declare-fun mapKey!29956 () (_ BitVec 32))

(assert (=> mapNonEmpty!29956 (= (arr!25792 _values!1152) (store mapRest!29956 mapKey!29956 mapValue!29956))))

(declare-fun b!908907 () Bool)

(assert (=> b!908907 (= e!509454 true)))

(assert (=> b!908907 (= (apply!524 lt!409885 k!1033) lt!409884)))

(declare-fun lt!409883 () Unit!30823)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!66 (array!53678 array!53676 (_ BitVec 32) (_ BitVec 32) V!30067 V!30067 (_ BitVec 64) V!30067 (_ BitVec 32) Int) Unit!30823)

(assert (=> b!908907 (= lt!409883 (lemmaListMapApplyFromThenApplyFromZero!66 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 lt!409884 i!717 defaultEntry!1160))))

(declare-fun b!908908 () Bool)

(assert (=> b!908908 (= e!509458 (and e!509453 mapRes!29956))))

(declare-fun condMapEmpty!29956 () Bool)

(declare-fun mapDefault!29956 () ValueCell!8932)

