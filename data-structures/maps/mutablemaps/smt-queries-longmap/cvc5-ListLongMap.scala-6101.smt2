; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78742 () Bool)

(assert start!78742)

(declare-fun b_free!16927 () Bool)

(declare-fun b_next!16927 () Bool)

(assert (=> start!78742 (= b_free!16927 (not b_next!16927))))

(declare-fun tp!59223 () Bool)

(declare-fun b_and!27609 () Bool)

(assert (=> start!78742 (= tp!59223 b_and!27609)))

(declare-fun mapIsEmpty!30909 () Bool)

(declare-fun mapRes!30909 () Bool)

(assert (=> mapIsEmpty!30909 mapRes!30909))

(declare-fun mapNonEmpty!30909 () Bool)

(declare-fun tp!59222 () Bool)

(declare-fun e!515342 () Bool)

(assert (=> mapNonEmpty!30909 (= mapRes!30909 (and tp!59222 e!515342))))

(declare-fun mapKey!30909 () (_ BitVec 32))

(declare-datatypes ((V!30879 0))(
  ( (V!30880 (val!9768 Int)) )
))
(declare-datatypes ((ValueCell!9236 0))(
  ( (ValueCellFull!9236 (v!12286 V!30879)) (EmptyCell!9236) )
))
(declare-fun mapValue!30909 () ValueCell!9236)

(declare-datatypes ((array!54862 0))(
  ( (array!54863 (arr!26372 (Array (_ BitVec 32) ValueCell!9236)) (size!26832 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54862)

(declare-fun mapRest!30909 () (Array (_ BitVec 32) ValueCell!9236))

(assert (=> mapNonEmpty!30909 (= (arr!26372 _values!1231) (store mapRest!30909 mapKey!30909 mapValue!30909))))

(declare-fun b!917933 () Bool)

(declare-fun res!618984 () Bool)

(declare-fun e!515344 () Bool)

(assert (=> b!917933 (=> (not res!618984) (not e!515344))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun v!791 () V!30879)

(declare-datatypes ((tuple2!12762 0))(
  ( (tuple2!12763 (_1!6391 (_ BitVec 64)) (_2!6391 V!30879)) )
))
(declare-datatypes ((List!18610 0))(
  ( (Nil!18607) (Cons!18606 (h!19752 tuple2!12762) (t!26275 List!18610)) )
))
(declare-datatypes ((ListLongMap!11473 0))(
  ( (ListLongMap!11474 (toList!5752 List!18610)) )
))
(declare-fun lt!412101 () ListLongMap!11473)

(declare-fun apply!574 (ListLongMap!11473 (_ BitVec 64)) V!30879)

(assert (=> b!917933 (= res!618984 (= (apply!574 lt!412101 k!1099) v!791))))

(declare-fun b!917934 () Bool)

(declare-fun e!515341 () Bool)

(assert (=> b!917934 (= e!515344 e!515341)))

(declare-fun res!618991 () Bool)

(assert (=> b!917934 (=> (not res!618991) (not e!515341))))

(declare-fun lt!412099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!917934 (= res!618991 (validKeyInArray!0 lt!412099))))

(declare-datatypes ((array!54864 0))(
  ( (array!54865 (arr!26373 (Array (_ BitVec 32) (_ BitVec 64))) (size!26833 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54864)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!917934 (= lt!412099 (select (arr!26373 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!917935 () Bool)

(declare-fun e!515343 () Bool)

(assert (=> b!917935 (= e!515343 e!515344)))

(declare-fun res!618983 () Bool)

(assert (=> b!917935 (=> (not res!618983) (not e!515344))))

(declare-fun contains!4766 (ListLongMap!11473 (_ BitVec 64)) Bool)

(assert (=> b!917935 (= res!618983 (contains!4766 lt!412101 k!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30879)

(declare-fun minValue!1173 () V!30879)

(declare-fun getCurrentListMap!2978 (array!54864 array!54862 (_ BitVec 32) (_ BitVec 32) V!30879 V!30879 (_ BitVec 32) Int) ListLongMap!11473)

(assert (=> b!917935 (= lt!412101 (getCurrentListMap!2978 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!917936 () Bool)

(declare-fun res!618986 () Bool)

(assert (=> b!917936 (=> (not res!618986) (not e!515343))))

(declare-datatypes ((List!18611 0))(
  ( (Nil!18608) (Cons!18607 (h!19753 (_ BitVec 64)) (t!26276 List!18611)) )
))
(declare-fun arrayNoDuplicates!0 (array!54864 (_ BitVec 32) List!18611) Bool)

(assert (=> b!917936 (= res!618986 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18608))))

(declare-fun b!917937 () Bool)

(declare-fun res!618988 () Bool)

(assert (=> b!917937 (=> (not res!618988) (not e!515343))))

(assert (=> b!917937 (= res!618988 (and (= (size!26832 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26833 _keys!1487) (size!26832 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!917938 () Bool)

(declare-fun res!618990 () Bool)

(assert (=> b!917938 (=> (not res!618990) (not e!515344))))

(assert (=> b!917938 (= res!618990 (validKeyInArray!0 k!1099))))

(declare-fun res!618985 () Bool)

(assert (=> start!78742 (=> (not res!618985) (not e!515343))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78742 (= res!618985 (validMask!0 mask!1881))))

(assert (=> start!78742 e!515343))

(assert (=> start!78742 true))

(declare-fun tp_is_empty!19435 () Bool)

(assert (=> start!78742 tp_is_empty!19435))

(declare-fun e!515345 () Bool)

(declare-fun array_inv!20550 (array!54862) Bool)

(assert (=> start!78742 (and (array_inv!20550 _values!1231) e!515345)))

(assert (=> start!78742 tp!59223))

(declare-fun array_inv!20551 (array!54864) Bool)

(assert (=> start!78742 (array_inv!20551 _keys!1487)))

(declare-fun b!917939 () Bool)

(declare-fun e!515340 () Bool)

(assert (=> b!917939 (= e!515340 tp_is_empty!19435)))

(declare-fun b!917940 () Bool)

(declare-fun res!618989 () Bool)

(assert (=> b!917940 (=> (not res!618989) (not e!515343))))

(assert (=> b!917940 (= res!618989 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26833 _keys!1487))))))

(declare-fun b!917941 () Bool)

(declare-fun res!618987 () Bool)

(assert (=> b!917941 (=> (not res!618987) (not e!515344))))

(assert (=> b!917941 (= res!618987 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!917942 () Bool)

(declare-fun res!618992 () Bool)

(assert (=> b!917942 (=> (not res!618992) (not e!515343))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54864 (_ BitVec 32)) Bool)

(assert (=> b!917942 (= res!618992 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!917943 () Bool)

(assert (=> b!917943 (= e!515342 tp_is_empty!19435)))

(declare-fun b!917944 () Bool)

(assert (=> b!917944 (= e!515341 (not true))))

(declare-fun +!2584 (ListLongMap!11473 tuple2!12762) ListLongMap!11473)

(declare-fun get!13839 (ValueCell!9236 V!30879) V!30879)

(declare-fun dynLambda!1423 (Int (_ BitVec 64)) V!30879)

(assert (=> b!917944 (= (getCurrentListMap!2978 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2584 (getCurrentListMap!2978 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) (tuple2!12763 lt!412099 (get!13839 (select (arr!26372 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1423 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!30975 0))(
  ( (Unit!30976) )
))
(declare-fun lt!412100 () Unit!30975)

(declare-fun lemmaListMapRecursiveValidKeyArray!19 (array!54864 array!54862 (_ BitVec 32) (_ BitVec 32) V!30879 V!30879 (_ BitVec 32) Int) Unit!30975)

(assert (=> b!917944 (= lt!412100 (lemmaListMapRecursiveValidKeyArray!19 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!917945 () Bool)

(assert (=> b!917945 (= e!515345 (and e!515340 mapRes!30909))))

(declare-fun condMapEmpty!30909 () Bool)

(declare-fun mapDefault!30909 () ValueCell!9236)

