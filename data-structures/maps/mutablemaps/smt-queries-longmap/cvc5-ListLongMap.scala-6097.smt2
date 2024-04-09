; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78718 () Bool)

(assert start!78718)

(declare-fun b_free!16903 () Bool)

(declare-fun b_next!16903 () Bool)

(assert (=> start!78718 (= b_free!16903 (not b_next!16903))))

(declare-fun tp!59151 () Bool)

(declare-fun b_and!27561 () Bool)

(assert (=> start!78718 (= tp!59151 b_and!27561)))

(declare-fun mapIsEmpty!30873 () Bool)

(declare-fun mapRes!30873 () Bool)

(assert (=> mapIsEmpty!30873 mapRes!30873))

(declare-fun mapNonEmpty!30873 () Bool)

(declare-fun tp!59150 () Bool)

(declare-fun e!515090 () Bool)

(assert (=> mapNonEmpty!30873 (= mapRes!30873 (and tp!59150 e!515090))))

(declare-datatypes ((V!30847 0))(
  ( (V!30848 (val!9756 Int)) )
))
(declare-datatypes ((ValueCell!9224 0))(
  ( (ValueCellFull!9224 (v!12274 V!30847)) (EmptyCell!9224) )
))
(declare-fun mapValue!30873 () ValueCell!9224)

(declare-fun mapKey!30873 () (_ BitVec 32))

(declare-fun mapRest!30873 () (Array (_ BitVec 32) ValueCell!9224))

(declare-datatypes ((array!54814 0))(
  ( (array!54815 (arr!26348 (Array (_ BitVec 32) ValueCell!9224)) (size!26808 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54814)

(assert (=> mapNonEmpty!30873 (= (arr!26348 _values!1231) (store mapRest!30873 mapKey!30873 mapValue!30873))))

(declare-fun b!917441 () Bool)

(declare-fun e!515088 () Bool)

(declare-fun e!515089 () Bool)

(assert (=> b!917441 (= e!515088 e!515089)))

(declare-fun res!618628 () Bool)

(assert (=> b!917441 (=> (not res!618628) (not e!515089))))

(declare-fun lt!411991 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!917441 (= res!618628 (validKeyInArray!0 lt!411991))))

(declare-datatypes ((array!54816 0))(
  ( (array!54817 (arr!26349 (Array (_ BitVec 32) (_ BitVec 64))) (size!26809 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54816)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!917441 (= lt!411991 (select (arr!26349 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!917442 () Bool)

(declare-fun e!515094 () Bool)

(assert (=> b!917442 (= e!515094 e!515088)))

(declare-fun res!618631 () Bool)

(assert (=> b!917442 (=> (not res!618631) (not e!515088))))

(declare-datatypes ((tuple2!12742 0))(
  ( (tuple2!12743 (_1!6381 (_ BitVec 64)) (_2!6381 V!30847)) )
))
(declare-datatypes ((List!18593 0))(
  ( (Nil!18590) (Cons!18589 (h!19735 tuple2!12742) (t!26234 List!18593)) )
))
(declare-datatypes ((ListLongMap!11453 0))(
  ( (ListLongMap!11454 (toList!5742 List!18593)) )
))
(declare-fun lt!411993 () ListLongMap!11453)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4757 (ListLongMap!11453 (_ BitVec 64)) Bool)

(assert (=> b!917442 (= res!618631 (contains!4757 lt!411993 k!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30847)

(declare-fun minValue!1173 () V!30847)

(declare-fun getCurrentListMap!2968 (array!54816 array!54814 (_ BitVec 32) (_ BitVec 32) V!30847 V!30847 (_ BitVec 32) Int) ListLongMap!11453)

(assert (=> b!917442 (= lt!411993 (getCurrentListMap!2968 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!917443 () Bool)

(declare-fun tp_is_empty!19411 () Bool)

(assert (=> b!917443 (= e!515090 tp_is_empty!19411)))

(declare-fun b!917444 () Bool)

(declare-fun e!515092 () Bool)

(assert (=> b!917444 (= e!515092 tp_is_empty!19411)))

(declare-fun b!917445 () Bool)

(declare-fun res!618627 () Bool)

(assert (=> b!917445 (=> (not res!618627) (not e!515088))))

(declare-fun v!791 () V!30847)

(declare-fun apply!566 (ListLongMap!11453 (_ BitVec 64)) V!30847)

(assert (=> b!917445 (= res!618627 (= (apply!566 lt!411993 k!1099) v!791))))

(declare-fun b!917447 () Bool)

(declare-fun res!618626 () Bool)

(assert (=> b!917447 (=> (not res!618626) (not e!515094))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54816 (_ BitVec 32)) Bool)

(assert (=> b!917447 (= res!618626 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!917448 () Bool)

(declare-fun res!618623 () Bool)

(assert (=> b!917448 (=> (not res!618623) (not e!515094))))

(assert (=> b!917448 (= res!618623 (and (= (size!26808 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26809 _keys!1487) (size!26808 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!917449 () Bool)

(assert (=> b!917449 (= e!515089 (not true))))

(declare-fun +!2574 (ListLongMap!11453 tuple2!12742) ListLongMap!11453)

(declare-fun get!13821 (ValueCell!9224 V!30847) V!30847)

(declare-fun dynLambda!1413 (Int (_ BitVec 64)) V!30847)

(assert (=> b!917449 (= (getCurrentListMap!2968 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2574 (getCurrentListMap!2968 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) (tuple2!12743 lt!411991 (get!13821 (select (arr!26348 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1413 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!30955 0))(
  ( (Unit!30956) )
))
(declare-fun lt!411992 () Unit!30955)

(declare-fun lemmaListMapRecursiveValidKeyArray!9 (array!54816 array!54814 (_ BitVec 32) (_ BitVec 32) V!30847 V!30847 (_ BitVec 32) Int) Unit!30955)

(assert (=> b!917449 (= lt!411992 (lemmaListMapRecursiveValidKeyArray!9 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!917450 () Bool)

(declare-fun res!618629 () Bool)

(assert (=> b!917450 (=> (not res!618629) (not e!515088))))

(assert (=> b!917450 (= res!618629 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!917451 () Bool)

(declare-fun res!618624 () Bool)

(assert (=> b!917451 (=> (not res!618624) (not e!515094))))

(declare-datatypes ((List!18594 0))(
  ( (Nil!18591) (Cons!18590 (h!19736 (_ BitVec 64)) (t!26235 List!18594)) )
))
(declare-fun arrayNoDuplicates!0 (array!54816 (_ BitVec 32) List!18594) Bool)

(assert (=> b!917451 (= res!618624 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18591))))

(declare-fun b!917452 () Bool)

(declare-fun res!618630 () Bool)

(assert (=> b!917452 (=> (not res!618630) (not e!515088))))

(assert (=> b!917452 (= res!618630 (validKeyInArray!0 k!1099))))

(declare-fun b!917453 () Bool)

(declare-fun e!515093 () Bool)

(assert (=> b!917453 (= e!515093 (and e!515092 mapRes!30873))))

(declare-fun condMapEmpty!30873 () Bool)

(declare-fun mapDefault!30873 () ValueCell!9224)

