; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111654 () Bool)

(assert start!111654)

(declare-fun b_free!30275 () Bool)

(declare-fun b_next!30275 () Bool)

(assert (=> start!111654 (= b_free!30275 (not b_next!30275))))

(declare-fun tp!106301 () Bool)

(declare-fun b_and!48719 () Bool)

(assert (=> start!111654 (= tp!106301 b_and!48719)))

(declare-fun mapIsEmpty!55790 () Bool)

(declare-fun mapRes!55790 () Bool)

(assert (=> mapIsEmpty!55790 mapRes!55790))

(declare-fun b!1321929 () Bool)

(declare-fun e!753875 () Bool)

(declare-fun tp_is_empty!36095 () Bool)

(assert (=> b!1321929 (= e!753875 tp_is_empty!36095)))

(declare-fun b!1321930 () Bool)

(declare-fun e!753877 () Bool)

(assert (=> b!1321930 (= e!753877 tp_is_empty!36095)))

(declare-fun b!1321931 () Bool)

(declare-fun res!877499 () Bool)

(declare-fun e!753873 () Bool)

(assert (=> b!1321931 (=> (not res!877499) (not e!753873))))

(declare-datatypes ((array!89073 0))(
  ( (array!89074 (arr!43006 (Array (_ BitVec 32) (_ BitVec 64))) (size!43557 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89073)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53229 0))(
  ( (V!53230 (val!18122 Int)) )
))
(declare-datatypes ((ValueCell!17149 0))(
  ( (ValueCellFull!17149 (v!20750 V!53229)) (EmptyCell!17149) )
))
(declare-datatypes ((array!89075 0))(
  ( (array!89076 (arr!43007 (Array (_ BitVec 32) ValueCell!17149)) (size!43558 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89075)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1321931 (= res!877499 (and (= (size!43558 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43557 _keys!1609) (size!43558 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1321932 () Bool)

(assert (=> b!1321932 (= e!753873 (not true))))

(declare-datatypes ((tuple2!23506 0))(
  ( (tuple2!23507 (_1!11763 (_ BitVec 64)) (_2!11763 V!53229)) )
))
(declare-datatypes ((List!30683 0))(
  ( (Nil!30680) (Cons!30679 (h!31888 tuple2!23506) (t!44514 List!30683)) )
))
(declare-datatypes ((ListLongMap!21175 0))(
  ( (ListLongMap!21176 (toList!10603 List!30683)) )
))
(declare-fun lt!587783 () ListLongMap!21175)

(declare-fun lt!587784 () tuple2!23506)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun contains!8694 (ListLongMap!21175 (_ BitVec 64)) Bool)

(declare-fun +!4556 (ListLongMap!21175 tuple2!23506) ListLongMap!21175)

(assert (=> b!1321932 (contains!8694 (+!4556 lt!587783 lt!587784) k!1164)))

(declare-fun zeroValue!1279 () V!53229)

(declare-datatypes ((Unit!43512 0))(
  ( (Unit!43513) )
))
(declare-fun lt!587790 () Unit!43512)

(declare-fun addStillContains!1137 (ListLongMap!21175 (_ BitVec 64) V!53229 (_ BitVec 64)) Unit!43512)

(assert (=> b!1321932 (= lt!587790 (addStillContains!1137 lt!587783 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k!1164))))

(assert (=> b!1321932 (contains!8694 lt!587783 k!1164)))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun lt!587789 () Unit!43512)

(declare-fun lt!587791 () V!53229)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!171 ((_ BitVec 64) (_ BitVec 64) V!53229 ListLongMap!21175) Unit!43512)

(assert (=> b!1321932 (= lt!587789 (lemmaInListMapAfterAddingDiffThenInBefore!171 k!1164 (select (arr!43006 _keys!1609) from!2000) lt!587791 lt!587783))))

(declare-fun lt!587785 () ListLongMap!21175)

(assert (=> b!1321932 (contains!8694 lt!587785 k!1164)))

(declare-fun lt!587786 () Unit!43512)

(assert (=> b!1321932 (= lt!587786 (lemmaInListMapAfterAddingDiffThenInBefore!171 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!587785))))

(declare-fun lt!587787 () ListLongMap!21175)

(assert (=> b!1321932 (contains!8694 lt!587787 k!1164)))

(declare-fun minValue!1279 () V!53229)

(declare-fun lt!587788 () Unit!43512)

(assert (=> b!1321932 (= lt!587788 (lemmaInListMapAfterAddingDiffThenInBefore!171 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!587787))))

(assert (=> b!1321932 (= lt!587787 (+!4556 lt!587785 lt!587784))))

(assert (=> b!1321932 (= lt!587784 (tuple2!23507 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1321932 (= lt!587785 (+!4556 lt!587783 (tuple2!23507 (select (arr!43006 _keys!1609) from!2000) lt!587791)))))

(declare-fun defaultEntry!1340 () Int)

(declare-fun get!21694 (ValueCell!17149 V!53229) V!53229)

(declare-fun dynLambda!3593 (Int (_ BitVec 64)) V!53229)

(assert (=> b!1321932 (= lt!587791 (get!21694 (select (arr!43007 _values!1337) from!2000) (dynLambda!3593 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6271 (array!89073 array!89075 (_ BitVec 32) (_ BitVec 32) V!53229 V!53229 (_ BitVec 32) Int) ListLongMap!21175)

(assert (=> b!1321932 (= lt!587783 (getCurrentListMapNoExtraKeys!6271 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1321933 () Bool)

(declare-fun res!877500 () Bool)

(assert (=> b!1321933 (=> (not res!877500) (not e!753873))))

(assert (=> b!1321933 (= res!877500 (not (= (select (arr!43006 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1321934 () Bool)

(declare-fun res!877498 () Bool)

(assert (=> b!1321934 (=> (not res!877498) (not e!753873))))

(declare-fun getCurrentListMap!5543 (array!89073 array!89075 (_ BitVec 32) (_ BitVec 32) V!53229 V!53229 (_ BitVec 32) Int) ListLongMap!21175)

(assert (=> b!1321934 (= res!877498 (contains!8694 (getCurrentListMap!5543 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1321935 () Bool)

(declare-fun res!877497 () Bool)

(assert (=> b!1321935 (=> (not res!877497) (not e!753873))))

(declare-datatypes ((List!30684 0))(
  ( (Nil!30681) (Cons!30680 (h!31889 (_ BitVec 64)) (t!44515 List!30684)) )
))
(declare-fun arrayNoDuplicates!0 (array!89073 (_ BitVec 32) List!30684) Bool)

(assert (=> b!1321935 (= res!877497 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30681))))

(declare-fun b!1321936 () Bool)

(declare-fun res!877503 () Bool)

(assert (=> b!1321936 (=> (not res!877503) (not e!753873))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1321936 (= res!877503 (validKeyInArray!0 (select (arr!43006 _keys!1609) from!2000)))))

(declare-fun b!1321937 () Bool)

(declare-fun e!753874 () Bool)

(assert (=> b!1321937 (= e!753874 (and e!753877 mapRes!55790))))

(declare-fun condMapEmpty!55790 () Bool)

(declare-fun mapDefault!55790 () ValueCell!17149)

