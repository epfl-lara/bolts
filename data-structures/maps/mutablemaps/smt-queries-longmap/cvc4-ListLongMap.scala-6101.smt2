; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78746 () Bool)

(assert start!78746)

(declare-fun b_free!16931 () Bool)

(declare-fun b_next!16931 () Bool)

(assert (=> start!78746 (= b_free!16931 (not b_next!16931))))

(declare-fun tp!59235 () Bool)

(declare-fun b_and!27617 () Bool)

(assert (=> start!78746 (= tp!59235 b_and!27617)))

(declare-fun mapIsEmpty!30915 () Bool)

(declare-fun mapRes!30915 () Bool)

(assert (=> mapIsEmpty!30915 mapRes!30915))

(declare-fun b!918015 () Bool)

(declare-fun e!515387 () Bool)

(declare-fun e!515383 () Bool)

(assert (=> b!918015 (= e!515387 e!515383)))

(declare-fun res!619050 () Bool)

(assert (=> b!918015 (=> (not res!619050) (not e!515383))))

(declare-fun lt!412118 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!918015 (= res!619050 (validKeyInArray!0 lt!412118))))

(declare-datatypes ((array!54870 0))(
  ( (array!54871 (arr!26376 (Array (_ BitVec 32) (_ BitVec 64))) (size!26836 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54870)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!918015 (= lt!412118 (select (arr!26376 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!918016 () Bool)

(declare-fun e!515384 () Bool)

(assert (=> b!918016 (= e!515384 e!515387)))

(declare-fun res!619046 () Bool)

(assert (=> b!918016 (=> (not res!619046) (not e!515387))))

(declare-datatypes ((V!30883 0))(
  ( (V!30884 (val!9770 Int)) )
))
(declare-datatypes ((tuple2!12766 0))(
  ( (tuple2!12767 (_1!6393 (_ BitVec 64)) (_2!6393 V!30883)) )
))
(declare-datatypes ((List!18614 0))(
  ( (Nil!18611) (Cons!18610 (h!19756 tuple2!12766) (t!26283 List!18614)) )
))
(declare-datatypes ((ListLongMap!11477 0))(
  ( (ListLongMap!11478 (toList!5754 List!18614)) )
))
(declare-fun lt!412117 () ListLongMap!11477)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4768 (ListLongMap!11477 (_ BitVec 64)) Bool)

(assert (=> b!918016 (= res!619046 (contains!4768 lt!412117 k!1099))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9238 0))(
  ( (ValueCellFull!9238 (v!12288 V!30883)) (EmptyCell!9238) )
))
(declare-datatypes ((array!54872 0))(
  ( (array!54873 (arr!26377 (Array (_ BitVec 32) ValueCell!9238)) (size!26837 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54872)

(declare-fun defaultEntry!1235 () Int)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!30883)

(declare-fun minValue!1173 () V!30883)

(declare-fun getCurrentListMap!2980 (array!54870 array!54872 (_ BitVec 32) (_ BitVec 32) V!30883 V!30883 (_ BitVec 32) Int) ListLongMap!11477)

(assert (=> b!918016 (= lt!412117 (getCurrentListMap!2980 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!918017 () Bool)

(declare-fun e!515385 () Bool)

(declare-fun e!515382 () Bool)

(assert (=> b!918017 (= e!515385 (and e!515382 mapRes!30915))))

(declare-fun condMapEmpty!30915 () Bool)

(declare-fun mapDefault!30915 () ValueCell!9238)

