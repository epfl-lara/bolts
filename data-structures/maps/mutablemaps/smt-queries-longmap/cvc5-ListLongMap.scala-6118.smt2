; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78844 () Bool)

(assert start!78844)

(declare-fun b_free!17029 () Bool)

(declare-fun b_next!17029 () Bool)

(assert (=> start!78844 (= b_free!17029 (not b_next!17029))))

(declare-fun tp!59529 () Bool)

(declare-fun b_and!27813 () Bool)

(assert (=> start!78844 (= tp!59529 b_and!27813)))

(declare-fun mapNonEmpty!31062 () Bool)

(declare-fun mapRes!31062 () Bool)

(declare-fun tp!59528 () Bool)

(declare-fun e!516411 () Bool)

(assert (=> mapNonEmpty!31062 (= mapRes!31062 (and tp!59528 e!516411))))

(declare-datatypes ((V!31015 0))(
  ( (V!31016 (val!9819 Int)) )
))
(declare-datatypes ((ValueCell!9287 0))(
  ( (ValueCellFull!9287 (v!12337 V!31015)) (EmptyCell!9287) )
))
(declare-fun mapValue!31062 () ValueCell!9287)

(declare-fun mapRest!31062 () (Array (_ BitVec 32) ValueCell!9287))

(declare-datatypes ((array!55066 0))(
  ( (array!55067 (arr!26474 (Array (_ BitVec 32) ValueCell!9287)) (size!26934 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55066)

(declare-fun mapKey!31062 () (_ BitVec 32))

(assert (=> mapNonEmpty!31062 (= (arr!26474 _values!1231) (store mapRest!31062 mapKey!31062 mapValue!31062))))

(declare-fun b!920024 () Bool)

(declare-fun e!516417 () Bool)

(declare-fun e!516413 () Bool)

(assert (=> b!920024 (= e!516417 e!516413)))

(declare-fun res!620517 () Bool)

(assert (=> b!920024 (=> (not res!620517) (not e!516413))))

(declare-datatypes ((tuple2!12854 0))(
  ( (tuple2!12855 (_1!6437 (_ BitVec 64)) (_2!6437 V!31015)) )
))
(declare-datatypes ((List!18696 0))(
  ( (Nil!18693) (Cons!18692 (h!19838 tuple2!12854) (t!26463 List!18696)) )
))
(declare-datatypes ((ListLongMap!11565 0))(
  ( (ListLongMap!11566 (toList!5798 List!18696)) )
))
(declare-fun lt!413031 () ListLongMap!11565)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4808 (ListLongMap!11565 (_ BitVec 64)) Bool)

(assert (=> b!920024 (= res!620517 (contains!4808 lt!413031 k!1099))))

(declare-datatypes ((array!55068 0))(
  ( (array!55069 (arr!26475 (Array (_ BitVec 32) (_ BitVec 64))) (size!26935 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55068)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31015)

(declare-fun minValue!1173 () V!31015)

(declare-fun getCurrentListMap!3020 (array!55068 array!55066 (_ BitVec 32) (_ BitVec 32) V!31015 V!31015 (_ BitVec 32) Int) ListLongMap!11565)

(assert (=> b!920024 (= lt!413031 (getCurrentListMap!3020 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!920025 () Bool)

(declare-fun res!620521 () Bool)

(assert (=> b!920025 (=> (not res!620521) (not e!516413))))

(declare-fun v!791 () V!31015)

(declare-fun apply!611 (ListLongMap!11565 (_ BitVec 64)) V!31015)

(assert (=> b!920025 (= res!620521 (= (apply!611 lt!413031 k!1099) v!791))))

(declare-fun b!920026 () Bool)

(declare-fun e!516416 () Bool)

(assert (=> b!920026 (= e!516413 e!516416)))

(declare-fun res!620522 () Bool)

(assert (=> b!920026 (=> (not res!620522) (not e!516416))))

(declare-fun lt!413026 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!920026 (= res!620522 (validKeyInArray!0 lt!413026))))

(assert (=> b!920026 (= lt!413026 (select (arr!26475 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!920027 () Bool)

(assert (=> b!920027 (= e!516416 (not true))))

(declare-datatypes ((List!18697 0))(
  ( (Nil!18694) (Cons!18693 (h!19839 (_ BitVec 64)) (t!26464 List!18697)) )
))
(declare-fun arrayNoDuplicates!0 (array!55068 (_ BitVec 32) List!18697) Bool)

(assert (=> b!920027 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18694)))

(declare-datatypes ((Unit!31043 0))(
  ( (Unit!31044) )
))
(declare-fun lt!413030 () Unit!31043)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55068 (_ BitVec 32) (_ BitVec 32)) Unit!31043)

(assert (=> b!920027 (= lt!413030 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!413027 () tuple2!12854)

(declare-fun +!2618 (ListLongMap!11565 tuple2!12854) ListLongMap!11565)

(assert (=> b!920027 (contains!4808 (+!2618 lt!413031 lt!413027) k!1099)))

(declare-fun lt!413028 () Unit!31043)

(declare-fun lt!413025 () V!31015)

(declare-fun addStillContains!380 (ListLongMap!11565 (_ BitVec 64) V!31015 (_ BitVec 64)) Unit!31043)

(assert (=> b!920027 (= lt!413028 (addStillContains!380 lt!413031 lt!413026 lt!413025 k!1099))))

(assert (=> b!920027 (= (getCurrentListMap!3020 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2618 (getCurrentListMap!3020 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!413027))))

(assert (=> b!920027 (= lt!413027 (tuple2!12855 lt!413026 lt!413025))))

(declare-fun get!13907 (ValueCell!9287 V!31015) V!31015)

(declare-fun dynLambda!1457 (Int (_ BitVec 64)) V!31015)

(assert (=> b!920027 (= lt!413025 (get!13907 (select (arr!26474 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1457 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!413029 () Unit!31043)

(declare-fun lemmaListMapRecursiveValidKeyArray!53 (array!55068 array!55066 (_ BitVec 32) (_ BitVec 32) V!31015 V!31015 (_ BitVec 32) Int) Unit!31043)

(assert (=> b!920027 (= lt!413029 (lemmaListMapRecursiveValidKeyArray!53 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!920028 () Bool)

(declare-fun e!516412 () Bool)

(declare-fun tp_is_empty!19537 () Bool)

(assert (=> b!920028 (= e!516412 tp_is_empty!19537)))

(declare-fun b!920029 () Bool)

(declare-fun res!620514 () Bool)

(assert (=> b!920029 (=> (not res!620514) (not e!516413))))

(assert (=> b!920029 (= res!620514 (validKeyInArray!0 k!1099))))

(declare-fun b!920030 () Bool)

(declare-fun res!620513 () Bool)

(assert (=> b!920030 (=> (not res!620513) (not e!516417))))

(assert (=> b!920030 (= res!620513 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18694))))

(declare-fun b!920031 () Bool)

(declare-fun res!620516 () Bool)

(assert (=> b!920031 (=> (not res!620516) (not e!516417))))

(assert (=> b!920031 (= res!620516 (and (= (size!26934 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26935 _keys!1487) (size!26934 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!31062 () Bool)

(assert (=> mapIsEmpty!31062 mapRes!31062))

(declare-fun b!920033 () Bool)

(assert (=> b!920033 (= e!516411 tp_is_empty!19537)))

(declare-fun b!920034 () Bool)

(declare-fun res!620518 () Bool)

(assert (=> b!920034 (=> (not res!620518) (not e!516413))))

(assert (=> b!920034 (= res!620518 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun res!620519 () Bool)

(assert (=> start!78844 (=> (not res!620519) (not e!516417))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78844 (= res!620519 (validMask!0 mask!1881))))

(assert (=> start!78844 e!516417))

(assert (=> start!78844 true))

(assert (=> start!78844 tp_is_empty!19537))

(declare-fun e!516415 () Bool)

(declare-fun array_inv!20618 (array!55066) Bool)

(assert (=> start!78844 (and (array_inv!20618 _values!1231) e!516415)))

(assert (=> start!78844 tp!59529))

(declare-fun array_inv!20619 (array!55068) Bool)

(assert (=> start!78844 (array_inv!20619 _keys!1487)))

(declare-fun b!920032 () Bool)

(declare-fun res!620515 () Bool)

(assert (=> b!920032 (=> (not res!620515) (not e!516417))))

(assert (=> b!920032 (= res!620515 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26935 _keys!1487))))))

(declare-fun b!920035 () Bool)

(declare-fun res!620520 () Bool)

(assert (=> b!920035 (=> (not res!620520) (not e!516417))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55068 (_ BitVec 32)) Bool)

(assert (=> b!920035 (= res!620520 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!920036 () Bool)

(assert (=> b!920036 (= e!516415 (and e!516412 mapRes!31062))))

(declare-fun condMapEmpty!31062 () Bool)

(declare-fun mapDefault!31062 () ValueCell!9287)

