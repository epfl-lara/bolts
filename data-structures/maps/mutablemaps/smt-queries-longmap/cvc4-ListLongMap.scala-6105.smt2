; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78770 () Bool)

(assert start!78770)

(declare-fun b_free!16955 () Bool)

(declare-fun b_next!16955 () Bool)

(assert (=> start!78770 (= b_free!16955 (not b_next!16955))))

(declare-fun tp!59306 () Bool)

(declare-fun b_and!27665 () Bool)

(assert (=> start!78770 (= tp!59306 b_and!27665)))

(declare-fun mapNonEmpty!30951 () Bool)

(declare-fun mapRes!30951 () Bool)

(declare-fun tp!59307 () Bool)

(declare-fun e!515639 () Bool)

(assert (=> mapNonEmpty!30951 (= mapRes!30951 (and tp!59307 e!515639))))

(declare-datatypes ((V!30915 0))(
  ( (V!30916 (val!9782 Int)) )
))
(declare-datatypes ((ValueCell!9250 0))(
  ( (ValueCellFull!9250 (v!12300 V!30915)) (EmptyCell!9250) )
))
(declare-fun mapRest!30951 () (Array (_ BitVec 32) ValueCell!9250))

(declare-fun mapKey!30951 () (_ BitVec 32))

(declare-fun mapValue!30951 () ValueCell!9250)

(declare-datatypes ((array!54918 0))(
  ( (array!54919 (arr!26400 (Array (_ BitVec 32) ValueCell!9250)) (size!26860 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54918)

(assert (=> mapNonEmpty!30951 (= (arr!26400 _values!1231) (store mapRest!30951 mapKey!30951 mapValue!30951))))

(declare-fun b!918507 () Bool)

(declare-fun res!619406 () Bool)

(declare-fun e!515640 () Bool)

(assert (=> b!918507 (=> (not res!619406) (not e!515640))))

(declare-datatypes ((tuple2!12790 0))(
  ( (tuple2!12791 (_1!6405 (_ BitVec 64)) (_2!6405 V!30915)) )
))
(declare-datatypes ((List!18633 0))(
  ( (Nil!18630) (Cons!18629 (h!19775 tuple2!12790) (t!26326 List!18633)) )
))
(declare-datatypes ((ListLongMap!11501 0))(
  ( (ListLongMap!11502 (toList!5766 List!18633)) )
))
(declare-fun lt!412276 () ListLongMap!11501)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun v!791 () V!30915)

(declare-fun apply!586 (ListLongMap!11501 (_ BitVec 64)) V!30915)

(assert (=> b!918507 (= res!619406 (= (apply!586 lt!412276 k!1099) v!791))))

(declare-fun mapIsEmpty!30951 () Bool)

(assert (=> mapIsEmpty!30951 mapRes!30951))

(declare-fun b!918508 () Bool)

(declare-fun res!619411 () Bool)

(assert (=> b!918508 (=> (not res!619411) (not e!515640))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!918508 (= res!619411 (validKeyInArray!0 k!1099))))

(declare-fun b!918509 () Bool)

(declare-fun res!619405 () Bool)

(declare-fun e!515635 () Bool)

(assert (=> b!918509 (=> (not res!619405) (not e!515635))))

(declare-datatypes ((array!54920 0))(
  ( (array!54921 (arr!26401 (Array (_ BitVec 32) (_ BitVec 64))) (size!26861 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54920)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54920 (_ BitVec 32)) Bool)

(assert (=> b!918509 (= res!619405 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!918510 () Bool)

(declare-fun e!515636 () Bool)

(assert (=> b!918510 (= e!515636 (not true))))

(declare-fun lt!412279 () tuple2!12790)

(declare-fun contains!4779 (ListLongMap!11501 (_ BitVec 64)) Bool)

(declare-fun +!2594 (ListLongMap!11501 tuple2!12790) ListLongMap!11501)

(assert (=> b!918510 (contains!4779 (+!2594 lt!412276 lt!412279) k!1099)))

(declare-fun lt!412277 () (_ BitVec 64))

(declare-fun lt!412278 () V!30915)

(declare-datatypes ((Unit!30995 0))(
  ( (Unit!30996) )
))
(declare-fun lt!412281 () Unit!30995)

(declare-fun addStillContains!356 (ListLongMap!11501 (_ BitVec 64) V!30915 (_ BitVec 64)) Unit!30995)

(assert (=> b!918510 (= lt!412281 (addStillContains!356 lt!412276 lt!412277 lt!412278 k!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30915)

(declare-fun minValue!1173 () V!30915)

(declare-fun getCurrentListMap!2991 (array!54920 array!54918 (_ BitVec 32) (_ BitVec 32) V!30915 V!30915 (_ BitVec 32) Int) ListLongMap!11501)

(assert (=> b!918510 (= (getCurrentListMap!2991 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2594 (getCurrentListMap!2991 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!412279))))

(assert (=> b!918510 (= lt!412279 (tuple2!12791 lt!412277 lt!412278))))

(declare-fun get!13857 (ValueCell!9250 V!30915) V!30915)

(declare-fun dynLambda!1433 (Int (_ BitVec 64)) V!30915)

(assert (=> b!918510 (= lt!412278 (get!13857 (select (arr!26400 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1433 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!412280 () Unit!30995)

(declare-fun lemmaListMapRecursiveValidKeyArray!29 (array!54920 array!54918 (_ BitVec 32) (_ BitVec 32) V!30915 V!30915 (_ BitVec 32) Int) Unit!30995)

(assert (=> b!918510 (= lt!412280 (lemmaListMapRecursiveValidKeyArray!29 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!918511 () Bool)

(assert (=> b!918511 (= e!515635 e!515640)))

(declare-fun res!619409 () Bool)

(assert (=> b!918511 (=> (not res!619409) (not e!515640))))

(assert (=> b!918511 (= res!619409 (contains!4779 lt!412276 k!1099))))

(assert (=> b!918511 (= lt!412276 (getCurrentListMap!2991 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!918512 () Bool)

(declare-fun e!515634 () Bool)

(declare-fun e!515638 () Bool)

(assert (=> b!918512 (= e!515634 (and e!515638 mapRes!30951))))

(declare-fun condMapEmpty!30951 () Bool)

(declare-fun mapDefault!30951 () ValueCell!9250)

