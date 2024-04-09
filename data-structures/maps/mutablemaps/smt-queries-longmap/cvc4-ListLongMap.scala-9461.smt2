; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112414 () Bool)

(assert start!112414)

(declare-fun b_free!30773 () Bool)

(declare-fun b_next!30773 () Bool)

(assert (=> start!112414 (= b_free!30773 (not b_next!30773))))

(declare-fun tp!107956 () Bool)

(declare-fun b_and!49611 () Bool)

(assert (=> start!112414 (= tp!107956 b_and!49611)))

(declare-fun b!1332148 () Bool)

(declare-fun res!884118 () Bool)

(declare-fun e!758973 () Bool)

(assert (=> b!1332148 (=> (not res!884118) (not e!758973))))

(declare-datatypes ((array!90215 0))(
  ( (array!90216 (arr!43569 (Array (_ BitVec 32) (_ BitVec 64))) (size!44120 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90215)

(declare-datatypes ((List!31059 0))(
  ( (Nil!31056) (Cons!31055 (h!32264 (_ BitVec 64)) (t!45252 List!31059)) )
))
(declare-fun arrayNoDuplicates!0 (array!90215 (_ BitVec 32) List!31059) Bool)

(assert (=> b!1332148 (= res!884118 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31056))))

(declare-fun b!1332149 () Bool)

(declare-fun res!884114 () Bool)

(assert (=> b!1332149 (=> (not res!884114) (not e!758973))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1332149 (= res!884114 (validKeyInArray!0 (select (arr!43569 _keys!1590) from!1980)))))

(declare-fun b!1332150 () Bool)

(declare-fun res!884116 () Bool)

(assert (=> b!1332150 (=> (not res!884116) (not e!758973))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90215 (_ BitVec 32)) Bool)

(assert (=> b!1332150 (= res!884116 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1332151 () Bool)

(declare-fun res!884113 () Bool)

(assert (=> b!1332151 (=> (not res!884113) (not e!758973))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1332151 (= res!884113 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1332152 () Bool)

(assert (=> b!1332152 (= e!758973 (not true))))

(declare-datatypes ((V!54013 0))(
  ( (V!54014 (val!18416 Int)) )
))
(declare-datatypes ((tuple2!23880 0))(
  ( (tuple2!23881 (_1!11950 (_ BitVec 64)) (_2!11950 V!54013)) )
))
(declare-datatypes ((List!31060 0))(
  ( (Nil!31057) (Cons!31056 (h!32265 tuple2!23880) (t!45253 List!31060)) )
))
(declare-datatypes ((ListLongMap!21549 0))(
  ( (ListLongMap!21550 (toList!10790 List!31060)) )
))
(declare-fun lt!591849 () ListLongMap!21549)

(declare-fun minValue!1262 () V!54013)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun contains!8890 (ListLongMap!21549 (_ BitVec 64)) Bool)

(declare-fun +!4678 (ListLongMap!21549 tuple2!23880) ListLongMap!21549)

(assert (=> b!1332152 (contains!8890 (+!4678 lt!591849 (tuple2!23881 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) k!1153)))

(declare-datatypes ((Unit!43783 0))(
  ( (Unit!43784) )
))
(declare-fun lt!591851 () Unit!43783)

(declare-fun addStillContains!1188 (ListLongMap!21549 (_ BitVec 64) V!54013 (_ BitVec 64)) Unit!43783)

(assert (=> b!1332152 (= lt!591851 (addStillContains!1188 lt!591849 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 k!1153))))

(assert (=> b!1332152 (contains!8890 lt!591849 k!1153)))

(declare-fun lt!591854 () V!54013)

(declare-fun lt!591852 () Unit!43783)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!283 ((_ BitVec 64) (_ BitVec 64) V!54013 ListLongMap!21549) Unit!43783)

(assert (=> b!1332152 (= lt!591852 (lemmaInListMapAfterAddingDiffThenInBefore!283 k!1153 (select (arr!43569 _keys!1590) from!1980) lt!591854 lt!591849))))

(declare-fun lt!591853 () ListLongMap!21549)

(assert (=> b!1332152 (contains!8890 lt!591853 k!1153)))

(declare-fun lt!591850 () Unit!43783)

(assert (=> b!1332152 (= lt!591850 (lemmaInListMapAfterAddingDiffThenInBefore!283 k!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591853))))

(assert (=> b!1332152 (= lt!591853 (+!4678 lt!591849 (tuple2!23881 (select (arr!43569 _keys!1590) from!1980) lt!591854)))))

(declare-datatypes ((ValueCell!17443 0))(
  ( (ValueCellFull!17443 (v!21051 V!54013)) (EmptyCell!17443) )
))
(declare-datatypes ((array!90217 0))(
  ( (array!90218 (arr!43570 (Array (_ BitVec 32) ValueCell!17443)) (size!44121 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90217)

(declare-fun defaultEntry!1323 () Int)

(declare-fun get!22020 (ValueCell!17443 V!54013) V!54013)

(declare-fun dynLambda!3715 (Int (_ BitVec 64)) V!54013)

(assert (=> b!1332152 (= lt!591854 (get!22020 (select (arr!43570 _values!1320) from!1980) (dynLambda!3715 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1262 () V!54013)

(declare-fun getCurrentListMapNoExtraKeys!6396 (array!90215 array!90217 (_ BitVec 32) (_ BitVec 32) V!54013 V!54013 (_ BitVec 32) Int) ListLongMap!21549)

(assert (=> b!1332152 (= lt!591849 (getCurrentListMapNoExtraKeys!6396 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1332153 () Bool)

(declare-fun res!884115 () Bool)

(assert (=> b!1332153 (=> (not res!884115) (not e!758973))))

(assert (=> b!1332153 (= res!884115 (and (= (size!44121 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44120 _keys!1590) (size!44121 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1332154 () Bool)

(declare-fun res!884120 () Bool)

(assert (=> b!1332154 (=> (not res!884120) (not e!758973))))

(assert (=> b!1332154 (= res!884120 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44120 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!56698 () Bool)

(declare-fun mapRes!56698 () Bool)

(assert (=> mapIsEmpty!56698 mapRes!56698))

(declare-fun b!1332155 () Bool)

(declare-fun e!758974 () Bool)

(declare-fun e!758972 () Bool)

(assert (=> b!1332155 (= e!758974 (and e!758972 mapRes!56698))))

(declare-fun condMapEmpty!56698 () Bool)

(declare-fun mapDefault!56698 () ValueCell!17443)

