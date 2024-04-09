; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78790 () Bool)

(assert start!78790)

(declare-fun b_free!16975 () Bool)

(declare-fun b_next!16975 () Bool)

(assert (=> start!78790 (= b_free!16975 (not b_next!16975))))

(declare-fun tp!59367 () Bool)

(declare-fun b_and!27705 () Bool)

(assert (=> start!78790 (= tp!59367 b_and!27705)))

(declare-fun b!918917 () Bool)

(declare-fun res!619707 () Bool)

(declare-fun e!515845 () Bool)

(assert (=> b!918917 (=> (not res!619707) (not e!515845))))

(declare-datatypes ((array!54958 0))(
  ( (array!54959 (arr!26420 (Array (_ BitVec 32) (_ BitVec 64))) (size!26880 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54958)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54958 (_ BitVec 32)) Bool)

(assert (=> b!918917 (= res!619707 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!918918 () Bool)

(declare-fun e!515850 () Bool)

(assert (=> b!918918 (= e!515845 e!515850)))

(declare-fun res!619712 () Bool)

(assert (=> b!918918 (=> (not res!619712) (not e!515850))))

(declare-datatypes ((V!30943 0))(
  ( (V!30944 (val!9792 Int)) )
))
(declare-datatypes ((tuple2!12806 0))(
  ( (tuple2!12807 (_1!6413 (_ BitVec 64)) (_2!6413 V!30943)) )
))
(declare-datatypes ((List!18648 0))(
  ( (Nil!18645) (Cons!18644 (h!19790 tuple2!12806) (t!26361 List!18648)) )
))
(declare-datatypes ((ListLongMap!11517 0))(
  ( (ListLongMap!11518 (toList!5774 List!18648)) )
))
(declare-fun lt!412463 () ListLongMap!11517)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4786 (ListLongMap!11517 (_ BitVec 64)) Bool)

(assert (=> b!918918 (= res!619712 (contains!4786 lt!412463 k!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9260 0))(
  ( (ValueCellFull!9260 (v!12310 V!30943)) (EmptyCell!9260) )
))
(declare-datatypes ((array!54960 0))(
  ( (array!54961 (arr!26421 (Array (_ BitVec 32) ValueCell!9260)) (size!26881 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54960)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30943)

(declare-fun minValue!1173 () V!30943)

(declare-fun getCurrentListMap!2998 (array!54958 array!54960 (_ BitVec 32) (_ BitVec 32) V!30943 V!30943 (_ BitVec 32) Int) ListLongMap!11517)

(assert (=> b!918918 (= lt!412463 (getCurrentListMap!2998 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!918919 () Bool)

(declare-fun res!619709 () Bool)

(assert (=> b!918919 (=> (not res!619709) (not e!515850))))

(assert (=> b!918919 (= res!619709 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!918920 () Bool)

(declare-fun e!515844 () Bool)

(assert (=> b!918920 (= e!515850 e!515844)))

(declare-fun res!619708 () Bool)

(assert (=> b!918920 (=> (not res!619708) (not e!515844))))

(declare-fun lt!412458 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!918920 (= res!619708 (validKeyInArray!0 lt!412458))))

(assert (=> b!918920 (= lt!412458 (select (arr!26420 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!918921 () Bool)

(declare-fun res!619704 () Bool)

(assert (=> b!918921 (=> (not res!619704) (not e!515845))))

(assert (=> b!918921 (= res!619704 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26880 _keys!1487))))))

(declare-fun b!918922 () Bool)

(declare-fun e!515846 () Bool)

(declare-fun tp_is_empty!19483 () Bool)

(assert (=> b!918922 (= e!515846 tp_is_empty!19483)))

(declare-fun b!918923 () Bool)

(assert (=> b!918923 (= e!515844 (not true))))

(declare-datatypes ((List!18649 0))(
  ( (Nil!18646) (Cons!18645 (h!19791 (_ BitVec 64)) (t!26362 List!18649)) )
))
(declare-fun arrayNoDuplicates!0 (array!54958 (_ BitVec 32) List!18649) Bool)

(assert (=> b!918923 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18646)))

(declare-datatypes ((Unit!31007 0))(
  ( (Unit!31008) )
))
(declare-fun lt!412461 () Unit!31007)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!54958 (_ BitVec 32) (_ BitVec 32)) Unit!31007)

(assert (=> b!918923 (= lt!412461 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!412464 () tuple2!12806)

(declare-fun +!2600 (ListLongMap!11517 tuple2!12806) ListLongMap!11517)

(assert (=> b!918923 (contains!4786 (+!2600 lt!412463 lt!412464) k!1099)))

(declare-fun lt!412460 () V!30943)

(declare-fun lt!412462 () Unit!31007)

(declare-fun addStillContains!362 (ListLongMap!11517 (_ BitVec 64) V!30943 (_ BitVec 64)) Unit!31007)

(assert (=> b!918923 (= lt!412462 (addStillContains!362 lt!412463 lt!412458 lt!412460 k!1099))))

(assert (=> b!918923 (= (getCurrentListMap!2998 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2600 (getCurrentListMap!2998 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!412464))))

(assert (=> b!918923 (= lt!412464 (tuple2!12807 lt!412458 lt!412460))))

(declare-fun get!13871 (ValueCell!9260 V!30943) V!30943)

(declare-fun dynLambda!1439 (Int (_ BitVec 64)) V!30943)

(assert (=> b!918923 (= lt!412460 (get!13871 (select (arr!26421 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1439 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!412459 () Unit!31007)

(declare-fun lemmaListMapRecursiveValidKeyArray!35 (array!54958 array!54960 (_ BitVec 32) (_ BitVec 32) V!30943 V!30943 (_ BitVec 32) Int) Unit!31007)

(assert (=> b!918923 (= lt!412459 (lemmaListMapRecursiveValidKeyArray!35 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!918925 () Bool)

(declare-fun res!619711 () Bool)

(assert (=> b!918925 (=> (not res!619711) (not e!515845))))

(assert (=> b!918925 (= res!619711 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18646))))

(declare-fun b!918926 () Bool)

(declare-fun e!515848 () Bool)

(declare-fun mapRes!30981 () Bool)

(assert (=> b!918926 (= e!515848 (and e!515846 mapRes!30981))))

(declare-fun condMapEmpty!30981 () Bool)

(declare-fun mapDefault!30981 () ValueCell!9260)

