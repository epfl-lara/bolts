; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77838 () Bool)

(assert start!77838)

(declare-fun b_free!16369 () Bool)

(declare-fun b_next!16369 () Bool)

(assert (=> start!77838 (= b_free!16369 (not b_next!16369))))

(declare-fun tp!57373 () Bool)

(declare-fun b_and!26913 () Bool)

(assert (=> start!77838 (= tp!57373 b_and!26913)))

(declare-fun mapIsEmpty!29896 () Bool)

(declare-fun mapRes!29896 () Bool)

(assert (=> mapIsEmpty!29896 mapRes!29896))

(declare-fun b!908077 () Bool)

(declare-fun res!612997 () Bool)

(declare-fun e!508974 () Bool)

(assert (=> b!908077 (=> (not res!612997) (not e!508974))))

(declare-datatypes ((array!53600 0))(
  ( (array!53601 (arr!25754 (Array (_ BitVec 32) (_ BitVec 64))) (size!26214 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53600)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53600 (_ BitVec 32)) Bool)

(assert (=> b!908077 (= res!612997 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!908078 () Bool)

(declare-fun res!613001 () Bool)

(declare-fun e!508976 () Bool)

(assert (=> b!908078 (=> (not res!613001) (not e!508976))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun k!1033 () (_ BitVec 64))

(assert (=> b!908078 (= res!613001 (and (= (select (arr!25754 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!908079 () Bool)

(declare-fun e!508977 () Bool)

(declare-fun tp_is_empty!18787 () Bool)

(assert (=> b!908079 (= e!508977 tp_is_empty!18787)))

(declare-fun res!613000 () Bool)

(assert (=> start!77838 (=> (not res!613000) (not e!508974))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77838 (= res!613000 (validMask!0 mask!1756))))

(assert (=> start!77838 e!508974))

(declare-datatypes ((V!30015 0))(
  ( (V!30016 (val!9444 Int)) )
))
(declare-datatypes ((ValueCell!8912 0))(
  ( (ValueCellFull!8912 (v!11951 V!30015)) (EmptyCell!8912) )
))
(declare-datatypes ((array!53602 0))(
  ( (array!53603 (arr!25755 (Array (_ BitVec 32) ValueCell!8912)) (size!26215 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53602)

(declare-fun e!508978 () Bool)

(declare-fun array_inv!20138 (array!53602) Bool)

(assert (=> start!77838 (and (array_inv!20138 _values!1152) e!508978)))

(assert (=> start!77838 tp!57373))

(assert (=> start!77838 true))

(assert (=> start!77838 tp_is_empty!18787))

(declare-fun array_inv!20139 (array!53600) Bool)

(assert (=> start!77838 (array_inv!20139 _keys!1386)))

(declare-fun b!908080 () Bool)

(declare-fun res!613003 () Bool)

(assert (=> b!908080 (=> (not res!613003) (not e!508974))))

(declare-datatypes ((List!18186 0))(
  ( (Nil!18183) (Cons!18182 (h!19328 (_ BitVec 64)) (t!25735 List!18186)) )
))
(declare-fun arrayNoDuplicates!0 (array!53600 (_ BitVec 32) List!18186) Bool)

(assert (=> b!908080 (= res!613003 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18183))))

(declare-fun b!908081 () Bool)

(assert (=> b!908081 (= e!508974 e!508976)))

(declare-fun res!613005 () Bool)

(assert (=> b!908081 (=> (not res!613005) (not e!508976))))

(declare-datatypes ((tuple2!12330 0))(
  ( (tuple2!12331 (_1!6175 (_ BitVec 64)) (_2!6175 V!30015)) )
))
(declare-datatypes ((List!18187 0))(
  ( (Nil!18184) (Cons!18183 (h!19329 tuple2!12330) (t!25736 List!18187)) )
))
(declare-datatypes ((ListLongMap!11041 0))(
  ( (ListLongMap!11042 (toList!5536 List!18187)) )
))
(declare-fun lt!409583 () ListLongMap!11041)

(declare-fun contains!4545 (ListLongMap!11041 (_ BitVec 64)) Bool)

(assert (=> b!908081 (= res!613005 (contains!4545 lt!409583 k!1033))))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30015)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30015)

(declare-fun getCurrentListMap!2768 (array!53600 array!53602 (_ BitVec 32) (_ BitVec 32) V!30015 V!30015 (_ BitVec 32) Int) ListLongMap!11041)

(assert (=> b!908081 (= lt!409583 (getCurrentListMap!2768 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!908082 () Bool)

(declare-fun res!613004 () Bool)

(declare-fun e!508979 () Bool)

(assert (=> b!908082 (=> res!613004 e!508979)))

(declare-fun lt!409585 () ListLongMap!11041)

(declare-fun lt!409582 () V!30015)

(declare-fun apply!510 (ListLongMap!11041 (_ BitVec 64)) V!30015)

(assert (=> b!908082 (= res!613004 (not (= (apply!510 lt!409585 k!1033) lt!409582)))))

(declare-fun b!908083 () Bool)

(declare-fun e!508975 () Bool)

(assert (=> b!908083 (= e!508976 (not e!508975))))

(declare-fun res!613006 () Bool)

(assert (=> b!908083 (=> res!613006 e!508975)))

(assert (=> b!908083 (= res!613006 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26214 _keys!1386))))))

(declare-fun get!13572 (ValueCell!8912 V!30015) V!30015)

(declare-fun dynLambda!1379 (Int (_ BitVec 64)) V!30015)

(assert (=> b!908083 (= lt!409582 (get!13572 (select (arr!25755 _values!1152) i!717) (dynLambda!1379 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53600 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!908083 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30799 0))(
  ( (Unit!30800) )
))
(declare-fun lt!409581 () Unit!30799)

(declare-fun lemmaKeyInListMapIsInArray!252 (array!53600 array!53602 (_ BitVec 32) (_ BitVec 32) V!30015 V!30015 (_ BitVec 64) Int) Unit!30799)

(assert (=> b!908083 (= lt!409581 (lemmaKeyInListMapIsInArray!252 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!908084 () Bool)

(declare-fun res!612998 () Bool)

(assert (=> b!908084 (=> (not res!612998) (not e!508976))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!908084 (= res!612998 (inRange!0 i!717 mask!1756))))

(declare-fun b!908085 () Bool)

(declare-fun e!508973 () Bool)

(assert (=> b!908085 (= e!508978 (and e!508973 mapRes!29896))))

(declare-fun condMapEmpty!29896 () Bool)

(declare-fun mapDefault!29896 () ValueCell!8912)

