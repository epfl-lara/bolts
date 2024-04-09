; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77746 () Bool)

(assert start!77746)

(declare-fun b_free!16303 () Bool)

(declare-fun b_next!16303 () Bool)

(assert (=> start!77746 (= b_free!16303 (not b_next!16303))))

(declare-fun tp!57171 () Bool)

(declare-fun b_and!26777 () Bool)

(assert (=> start!77746 (= tp!57171 b_and!26777)))

(declare-fun b!906572 () Bool)

(declare-fun e!508078 () Bool)

(declare-fun e!508081 () Bool)

(assert (=> b!906572 (= e!508078 e!508081)))

(declare-fun res!611946 () Bool)

(assert (=> b!906572 (=> (not res!611946) (not e!508081))))

(declare-datatypes ((V!29927 0))(
  ( (V!29928 (val!9411 Int)) )
))
(declare-datatypes ((tuple2!12272 0))(
  ( (tuple2!12273 (_1!6146 (_ BitVec 64)) (_2!6146 V!29927)) )
))
(declare-datatypes ((List!18134 0))(
  ( (Nil!18131) (Cons!18130 (h!19276 tuple2!12272) (t!25617 List!18134)) )
))
(declare-datatypes ((ListLongMap!10983 0))(
  ( (ListLongMap!10984 (toList!5507 List!18134)) )
))
(declare-fun lt!408969 () ListLongMap!10983)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun contains!4517 (ListLongMap!10983 (_ BitVec 64)) Bool)

(assert (=> b!906572 (= res!611946 (contains!4517 lt!408969 k!1033))))

(declare-datatypes ((ValueCell!8879 0))(
  ( (ValueCellFull!8879 (v!11916 V!29927)) (EmptyCell!8879) )
))
(declare-datatypes ((array!53468 0))(
  ( (array!53469 (arr!25689 (Array (_ BitVec 32) ValueCell!8879)) (size!26149 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53468)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29927)

(declare-datatypes ((array!53470 0))(
  ( (array!53471 (arr!25690 (Array (_ BitVec 32) (_ BitVec 64))) (size!26150 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53470)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29927)

(declare-fun getCurrentListMap!2741 (array!53470 array!53468 (_ BitVec 32) (_ BitVec 32) V!29927 V!29927 (_ BitVec 32) Int) ListLongMap!10983)

(assert (=> b!906572 (= lt!408969 (getCurrentListMap!2741 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!906573 () Bool)

(declare-fun e!508082 () Bool)

(assert (=> b!906573 (= e!508082 true)))

(declare-fun lt!408970 () V!29927)

(declare-fun apply!483 (ListLongMap!10983 (_ BitVec 64)) V!29927)

(assert (=> b!906573 (= (apply!483 lt!408969 k!1033) lt!408970)))

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((Unit!30741 0))(
  ( (Unit!30742) )
))
(declare-fun lt!408968 () Unit!30741)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!31 (array!53470 array!53468 (_ BitVec 32) (_ BitVec 32) V!29927 V!29927 (_ BitVec 64) V!29927 (_ BitVec 32) Int) Unit!30741)

(assert (=> b!906573 (= lt!408968 (lemmaListMapApplyFromThenApplyFromZero!31 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 lt!408970 i!717 defaultEntry!1160))))

(declare-fun mapIsEmpty!29794 () Bool)

(declare-fun mapRes!29794 () Bool)

(assert (=> mapIsEmpty!29794 mapRes!29794))

(declare-fun b!906574 () Bool)

(declare-fun res!611945 () Bool)

(assert (=> b!906574 (=> (not res!611945) (not e!508078))))

(assert (=> b!906574 (= res!611945 (and (= (size!26149 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26150 _keys!1386) (size!26149 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!906575 () Bool)

(declare-fun res!611947 () Bool)

(assert (=> b!906575 (=> res!611947 e!508082)))

(declare-fun lt!408971 () ListLongMap!10983)

(assert (=> b!906575 (= res!611947 (not (= (apply!483 lt!408971 k!1033) lt!408970)))))

(declare-fun b!906576 () Bool)

(declare-fun e!508083 () Bool)

(declare-fun tp_is_empty!18721 () Bool)

(assert (=> b!906576 (= e!508083 tp_is_empty!18721)))

(declare-fun b!906577 () Bool)

(declare-fun e!508084 () Bool)

(assert (=> b!906577 (= e!508084 (and e!508083 mapRes!29794))))

(declare-fun condMapEmpty!29794 () Bool)

(declare-fun mapDefault!29794 () ValueCell!8879)

