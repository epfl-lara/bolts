; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78820 () Bool)

(assert start!78820)

(declare-fun b_free!17005 () Bool)

(declare-fun b_next!17005 () Bool)

(assert (=> start!78820 (= b_free!17005 (not b_next!17005))))

(declare-fun tp!59456 () Bool)

(declare-fun b_and!27765 () Bool)

(assert (=> start!78820 (= tp!59456 b_and!27765)))

(declare-fun b!919532 () Bool)

(declare-fun res!620157 () Bool)

(declare-fun e!516160 () Bool)

(assert (=> b!919532 (=> (not res!620157) (not e!516160))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!919532 (= res!620157 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!31026 () Bool)

(declare-fun mapRes!31026 () Bool)

(declare-fun tp!59457 () Bool)

(declare-fun e!516159 () Bool)

(assert (=> mapNonEmpty!31026 (= mapRes!31026 (and tp!59457 e!516159))))

(declare-datatypes ((V!30983 0))(
  ( (V!30984 (val!9807 Int)) )
))
(declare-datatypes ((ValueCell!9275 0))(
  ( (ValueCellFull!9275 (v!12325 V!30983)) (EmptyCell!9275) )
))
(declare-fun mapRest!31026 () (Array (_ BitVec 32) ValueCell!9275))

(declare-fun mapValue!31026 () ValueCell!9275)

(declare-fun mapKey!31026 () (_ BitVec 32))

(declare-datatypes ((array!55018 0))(
  ( (array!55019 (arr!26450 (Array (_ BitVec 32) ValueCell!9275)) (size!26910 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55018)

(assert (=> mapNonEmpty!31026 (= (arr!26450 _values!1231) (store mapRest!31026 mapKey!31026 mapValue!31026))))

(declare-fun b!919533 () Bool)

(declare-fun e!516165 () Bool)

(assert (=> b!919533 (= e!516165 (not true))))

(declare-datatypes ((array!55020 0))(
  ( (array!55021 (arr!26451 (Array (_ BitVec 32) (_ BitVec 64))) (size!26911 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55020)

(declare-datatypes ((List!18677 0))(
  ( (Nil!18674) (Cons!18673 (h!19819 (_ BitVec 64)) (t!26420 List!18677)) )
))
(declare-fun arrayNoDuplicates!0 (array!55020 (_ BitVec 32) List!18677) Bool)

(assert (=> b!919533 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18674)))

(declare-datatypes ((Unit!31031 0))(
  ( (Unit!31032) )
))
(declare-fun lt!412779 () Unit!31031)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55020 (_ BitVec 32) (_ BitVec 32)) Unit!31031)

(assert (=> b!919533 (= lt!412779 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((tuple2!12834 0))(
  ( (tuple2!12835 (_1!6427 (_ BitVec 64)) (_2!6427 V!30983)) )
))
(declare-datatypes ((List!18678 0))(
  ( (Nil!18675) (Cons!18674 (h!19820 tuple2!12834) (t!26421 List!18678)) )
))
(declare-datatypes ((ListLongMap!11545 0))(
  ( (ListLongMap!11546 (toList!5788 List!18678)) )
))
(declare-fun lt!412775 () ListLongMap!11545)

(declare-fun lt!412778 () tuple2!12834)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4799 (ListLongMap!11545 (_ BitVec 64)) Bool)

(declare-fun +!2612 (ListLongMap!11545 tuple2!12834) ListLongMap!11545)

(assert (=> b!919533 (contains!4799 (+!2612 lt!412775 lt!412778) k!1099)))

(declare-fun lt!412774 () V!30983)

(declare-fun lt!412773 () Unit!31031)

(declare-fun lt!412777 () (_ BitVec 64))

(declare-fun addStillContains!374 (ListLongMap!11545 (_ BitVec 64) V!30983 (_ BitVec 64)) Unit!31031)

(assert (=> b!919533 (= lt!412773 (addStillContains!374 lt!412775 lt!412777 lt!412774 k!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30983)

(declare-fun minValue!1173 () V!30983)

(declare-fun getCurrentListMap!3011 (array!55020 array!55018 (_ BitVec 32) (_ BitVec 32) V!30983 V!30983 (_ BitVec 32) Int) ListLongMap!11545)

(assert (=> b!919533 (= (getCurrentListMap!3011 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2612 (getCurrentListMap!3011 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!412778))))

(assert (=> b!919533 (= lt!412778 (tuple2!12835 lt!412777 lt!412774))))

(declare-fun get!13893 (ValueCell!9275 V!30983) V!30983)

(declare-fun dynLambda!1451 (Int (_ BitVec 64)) V!30983)

(assert (=> b!919533 (= lt!412774 (get!13893 (select (arr!26450 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1451 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!412776 () Unit!31031)

(declare-fun lemmaListMapRecursiveValidKeyArray!47 (array!55020 array!55018 (_ BitVec 32) (_ BitVec 32) V!30983 V!30983 (_ BitVec 32) Int) Unit!31031)

(assert (=> b!919533 (= lt!412776 (lemmaListMapRecursiveValidKeyArray!47 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!919534 () Bool)

(declare-fun res!620153 () Bool)

(declare-fun e!516164 () Bool)

(assert (=> b!919534 (=> (not res!620153) (not e!516164))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55020 (_ BitVec 32)) Bool)

(assert (=> b!919534 (= res!620153 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!919535 () Bool)

(declare-fun e!516163 () Bool)

(declare-fun tp_is_empty!19513 () Bool)

(assert (=> b!919535 (= e!516163 tp_is_empty!19513)))

(declare-fun b!919536 () Bool)

(assert (=> b!919536 (= e!516160 e!516165)))

(declare-fun res!620162 () Bool)

(assert (=> b!919536 (=> (not res!620162) (not e!516165))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!919536 (= res!620162 (validKeyInArray!0 lt!412777))))

(assert (=> b!919536 (= lt!412777 (select (arr!26451 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!919537 () Bool)

(declare-fun res!620159 () Bool)

(assert (=> b!919537 (=> (not res!620159) (not e!516160))))

(declare-fun v!791 () V!30983)

(declare-fun apply!602 (ListLongMap!11545 (_ BitVec 64)) V!30983)

(assert (=> b!919537 (= res!620159 (= (apply!602 lt!412775 k!1099) v!791))))

(declare-fun b!919538 () Bool)

(assert (=> b!919538 (= e!516164 e!516160)))

(declare-fun res!620161 () Bool)

(assert (=> b!919538 (=> (not res!620161) (not e!516160))))

(assert (=> b!919538 (= res!620161 (contains!4799 lt!412775 k!1099))))

(assert (=> b!919538 (= lt!412775 (getCurrentListMap!3011 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!919539 () Bool)

(declare-fun e!516161 () Bool)

(assert (=> b!919539 (= e!516161 (and e!516163 mapRes!31026))))

(declare-fun condMapEmpty!31026 () Bool)

(declare-fun mapDefault!31026 () ValueCell!9275)

