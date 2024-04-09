; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77540 () Bool)

(assert start!77540)

(declare-fun b_free!16097 () Bool)

(declare-fun b_next!16097 () Bool)

(assert (=> start!77540 (= b_free!16097 (not b_next!16097))))

(declare-fun tp!56553 () Bool)

(declare-fun b_and!26481 () Bool)

(assert (=> start!77540 (= tp!56553 b_and!26481)))

(declare-fun b!903002 () Bool)

(declare-fun e!505924 () Bool)

(declare-fun tp_is_empty!18515 () Bool)

(assert (=> b!903002 (= e!505924 tp_is_empty!18515)))

(declare-fun b!903004 () Bool)

(declare-fun res!609390 () Bool)

(declare-fun e!505925 () Bool)

(assert (=> b!903004 (=> (not res!609390) (not e!505925))))

(declare-datatypes ((V!29651 0))(
  ( (V!29652 (val!9308 Int)) )
))
(declare-datatypes ((ValueCell!8776 0))(
  ( (ValueCellFull!8776 (v!11813 V!29651)) (EmptyCell!8776) )
))
(declare-datatypes ((array!53076 0))(
  ( (array!53077 (arr!25493 (Array (_ BitVec 32) ValueCell!8776)) (size!25953 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53076)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!53078 0))(
  ( (array!53079 (arr!25494 (Array (_ BitVec 32) (_ BitVec 64))) (size!25954 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53078)

(assert (=> b!903004 (= res!609390 (and (= (size!25953 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25954 _keys!1386) (size!25953 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!29485 () Bool)

(declare-fun mapRes!29485 () Bool)

(assert (=> mapIsEmpty!29485 mapRes!29485))

(declare-fun b!903005 () Bool)

(assert (=> b!903005 (= e!505925 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!407912 () Bool)

(declare-fun zeroValue!1094 () V!29651)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun minValue!1094 () V!29651)

(declare-datatypes ((tuple2!12108 0))(
  ( (tuple2!12109 (_1!6064 (_ BitVec 64)) (_2!6064 V!29651)) )
))
(declare-datatypes ((List!17986 0))(
  ( (Nil!17983) (Cons!17982 (h!19128 tuple2!12108) (t!25377 List!17986)) )
))
(declare-datatypes ((ListLongMap!10819 0))(
  ( (ListLongMap!10820 (toList!5425 List!17986)) )
))
(declare-fun contains!4438 (ListLongMap!10819 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2662 (array!53078 array!53076 (_ BitVec 32) (_ BitVec 32) V!29651 V!29651 (_ BitVec 32) Int) ListLongMap!10819)

(assert (=> b!903005 (= lt!407912 (contains!4438 (getCurrentListMap!2662 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!903006 () Bool)

(declare-fun e!505928 () Bool)

(assert (=> b!903006 (= e!505928 (and e!505924 mapRes!29485))))

(declare-fun condMapEmpty!29485 () Bool)

(declare-fun mapDefault!29485 () ValueCell!8776)

