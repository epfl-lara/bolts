; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78788 () Bool)

(assert start!78788)

(declare-fun b_free!16973 () Bool)

(declare-fun b_next!16973 () Bool)

(assert (=> start!78788 (= b_free!16973 (not b_next!16973))))

(declare-fun tp!59360 () Bool)

(declare-fun b_and!27701 () Bool)

(assert (=> start!78788 (= tp!59360 b_and!27701)))

(declare-fun mapNonEmpty!30978 () Bool)

(declare-fun mapRes!30978 () Bool)

(declare-fun tp!59361 () Bool)

(declare-fun e!515824 () Bool)

(assert (=> mapNonEmpty!30978 (= mapRes!30978 (and tp!59361 e!515824))))

(declare-datatypes ((V!30939 0))(
  ( (V!30940 (val!9791 Int)) )
))
(declare-datatypes ((ValueCell!9259 0))(
  ( (ValueCellFull!9259 (v!12309 V!30939)) (EmptyCell!9259) )
))
(declare-fun mapRest!30978 () (Array (_ BitVec 32) ValueCell!9259))

(declare-fun mapValue!30978 () ValueCell!9259)

(declare-datatypes ((array!54954 0))(
  ( (array!54955 (arr!26418 (Array (_ BitVec 32) ValueCell!9259)) (size!26878 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54954)

(declare-fun mapKey!30978 () (_ BitVec 32))

(assert (=> mapNonEmpty!30978 (= (arr!26418 _values!1231) (store mapRest!30978 mapKey!30978 mapValue!30978))))

(declare-fun b!918876 () Bool)

(declare-fun res!619674 () Bool)

(declare-fun e!515823 () Bool)

(assert (=> b!918876 (=> (not res!619674) (not e!515823))))

(declare-datatypes ((array!54956 0))(
  ( (array!54957 (arr!26419 (Array (_ BitVec 32) (_ BitVec 64))) (size!26879 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54956)

(declare-datatypes ((List!18647 0))(
  ( (Nil!18644) (Cons!18643 (h!19789 (_ BitVec 64)) (t!26358 List!18647)) )
))
(declare-fun arrayNoDuplicates!0 (array!54956 (_ BitVec 32) List!18647) Bool)

(assert (=> b!918876 (= res!619674 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18644))))

(declare-fun b!918877 () Bool)

(declare-fun res!619676 () Bool)

(declare-fun e!515829 () Bool)

(assert (=> b!918877 (=> (not res!619676) (not e!515829))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!918877 (= res!619676 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!918878 () Bool)

(declare-fun e!515825 () Bool)

(assert (=> b!918878 (= e!515829 e!515825)))

(declare-fun res!619679 () Bool)

(assert (=> b!918878 (=> (not res!619679) (not e!515825))))

(declare-fun lt!412441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!918878 (= res!619679 (validKeyInArray!0 lt!412441))))

(assert (=> b!918878 (= lt!412441 (select (arr!26419 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun mapIsEmpty!30978 () Bool)

(assert (=> mapIsEmpty!30978 mapRes!30978))

(declare-fun b!918879 () Bool)

(declare-fun e!515828 () Bool)

(declare-fun e!515826 () Bool)

(assert (=> b!918879 (= e!515828 (and e!515826 mapRes!30978))))

(declare-fun condMapEmpty!30978 () Bool)

(declare-fun mapDefault!30978 () ValueCell!9259)

