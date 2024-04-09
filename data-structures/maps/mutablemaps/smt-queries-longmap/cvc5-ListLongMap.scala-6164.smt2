; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79120 () Bool)

(assert start!79120)

(declare-fun b_free!17305 () Bool)

(declare-fun b_next!17305 () Bool)

(assert (=> start!79120 (= b_free!17305 (not b_next!17305))))

(declare-fun tp!60356 () Bool)

(declare-fun b_and!28365 () Bool)

(assert (=> start!79120 (= tp!60356 b_and!28365)))

(declare-fun mapNonEmpty!31476 () Bool)

(declare-fun mapRes!31476 () Bool)

(declare-fun tp!60357 () Bool)

(declare-fun e!520888 () Bool)

(assert (=> mapNonEmpty!31476 (= mapRes!31476 (and tp!60357 e!520888))))

(declare-fun mapKey!31476 () (_ BitVec 32))

(declare-datatypes ((V!31383 0))(
  ( (V!31384 (val!9957 Int)) )
))
(declare-datatypes ((ValueCell!9425 0))(
  ( (ValueCellFull!9425 (v!12475 V!31383)) (EmptyCell!9425) )
))
(declare-fun mapRest!31476 () (Array (_ BitVec 32) ValueCell!9425))

(declare-fun mapValue!31476 () ValueCell!9425)

(declare-datatypes ((array!55604 0))(
  ( (array!55605 (arr!26743 (Array (_ BitVec 32) ValueCell!9425)) (size!27203 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55604)

(assert (=> mapNonEmpty!31476 (= (arr!26743 _values!1231) (store mapRest!31476 mapKey!31476 mapValue!31476))))

(declare-fun mapIsEmpty!31476 () Bool)

(assert (=> mapIsEmpty!31476 mapRes!31476))

(declare-fun b!927721 () Bool)

(declare-datatypes ((tuple2!13110 0))(
  ( (tuple2!13111 (_1!6565 (_ BitVec 64)) (_2!6565 V!31383)) )
))
(declare-datatypes ((List!18936 0))(
  ( (Nil!18933) (Cons!18932 (h!20078 tuple2!13110) (t!26979 List!18936)) )
))
(declare-datatypes ((ListLongMap!11821 0))(
  ( (ListLongMap!11822 (toList!5926 List!18936)) )
))
(declare-fun lt!418299 () ListLongMap!11821)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun lt!418292 () V!31383)

(declare-fun apply!722 (ListLongMap!11821 (_ BitVec 64)) V!31383)

(assert (=> b!927721 (= (apply!722 lt!418299 k!1099) lt!418292)))

(declare-datatypes ((Unit!31389 0))(
  ( (Unit!31390) )
))
(declare-fun lt!418300 () Unit!31389)

(declare-fun lt!418297 () ListLongMap!11821)

(declare-fun lt!418295 () V!31383)

(declare-fun lt!418290 () (_ BitVec 64))

(declare-fun addApplyDifferent!402 (ListLongMap!11821 (_ BitVec 64) V!31383 (_ BitVec 64)) Unit!31389)

(assert (=> b!927721 (= lt!418300 (addApplyDifferent!402 lt!418297 lt!418290 lt!418295 k!1099))))

(assert (=> b!927721 (not (= lt!418290 k!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun lt!418304 () Unit!31389)

(declare-datatypes ((array!55606 0))(
  ( (array!55607 (arr!26744 (Array (_ BitVec 32) (_ BitVec 64))) (size!27204 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55606)

(declare-datatypes ((List!18937 0))(
  ( (Nil!18934) (Cons!18933 (h!20079 (_ BitVec 64)) (t!26980 List!18937)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55606 (_ BitVec 64) (_ BitVec 32) List!18937) Unit!31389)

(assert (=> b!927721 (= lt!418304 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18934))))

(declare-fun e!520880 () Bool)

(assert (=> b!927721 e!520880))

(declare-fun c!96849 () Bool)

(assert (=> b!927721 (= c!96849 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun lt!418293 () Unit!31389)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31383)

(declare-fun minValue!1173 () V!31383)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!262 (array!55606 array!55604 (_ BitVec 32) (_ BitVec 32) V!31383 V!31383 (_ BitVec 64) (_ BitVec 32) Int) Unit!31389)

(assert (=> b!927721 (= lt!418293 (lemmaListMapContainsThenArrayContainsFrom!262 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55606 (_ BitVec 32) List!18937) Bool)

(assert (=> b!927721 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18934)))

(declare-fun lt!418303 () Unit!31389)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55606 (_ BitVec 32) (_ BitVec 32)) Unit!31389)

(assert (=> b!927721 (= lt!418303 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun contains!4945 (ListLongMap!11821 (_ BitVec 64)) Bool)

(assert (=> b!927721 (contains!4945 lt!418299 k!1099)))

(declare-fun lt!418291 () tuple2!13110)

(declare-fun +!2716 (ListLongMap!11821 tuple2!13110) ListLongMap!11821)

(assert (=> b!927721 (= lt!418299 (+!2716 lt!418297 lt!418291))))

(declare-fun lt!418294 () Unit!31389)

(declare-fun addStillContains!478 (ListLongMap!11821 (_ BitVec 64) V!31383 (_ BitVec 64)) Unit!31389)

(assert (=> b!927721 (= lt!418294 (addStillContains!478 lt!418297 lt!418290 lt!418295 k!1099))))

(declare-fun getCurrentListMap!3139 (array!55606 array!55604 (_ BitVec 32) (_ BitVec 32) V!31383 V!31383 (_ BitVec 32) Int) ListLongMap!11821)

(assert (=> b!927721 (= (getCurrentListMap!3139 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2716 (getCurrentListMap!3139 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!418291))))

(assert (=> b!927721 (= lt!418291 (tuple2!13111 lt!418290 lt!418295))))

(declare-fun get!14097 (ValueCell!9425 V!31383) V!31383)

(declare-fun dynLambda!1555 (Int (_ BitVec 64)) V!31383)

(assert (=> b!927721 (= lt!418295 (get!14097 (select (arr!26743 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1555 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!418298 () Unit!31389)

(declare-fun lemmaListMapRecursiveValidKeyArray!151 (array!55606 array!55604 (_ BitVec 32) (_ BitVec 32) V!31383 V!31383 (_ BitVec 32) Int) Unit!31389)

(assert (=> b!927721 (= lt!418298 (lemmaListMapRecursiveValidKeyArray!151 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!520890 () Unit!31389)

(assert (=> b!927721 (= e!520890 lt!418300)))

(declare-fun b!927722 () Bool)

(declare-fun arrayContainsKey!0 (array!55606 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!927722 (= e!520880 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!927723 () Bool)

(declare-fun res!624944 () Bool)

(declare-fun e!520885 () Bool)

(assert (=> b!927723 (=> (not res!624944) (not e!520885))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55606 (_ BitVec 32)) Bool)

(assert (=> b!927723 (= res!624944 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!927724 () Bool)

(assert (=> b!927724 (= e!520880 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!927725 () Bool)

(declare-fun res!624938 () Bool)

(assert (=> b!927725 (=> (not res!624938) (not e!520885))))

(assert (=> b!927725 (= res!624938 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18934))))

(declare-fun b!927726 () Bool)

(declare-fun e!520889 () Bool)

(assert (=> b!927726 (= e!520889 (not true))))

(declare-fun e!520883 () Bool)

(assert (=> b!927726 e!520883))

(declare-fun res!624941 () Bool)

(assert (=> b!927726 (=> (not res!624941) (not e!520883))))

(declare-fun lt!418296 () ListLongMap!11821)

(assert (=> b!927726 (= res!624941 (contains!4945 lt!418296 k!1099))))

(assert (=> b!927726 (= lt!418296 (getCurrentListMap!3139 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun v!791 () V!31383)

(declare-fun lt!418302 () Unit!31389)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!102 (array!55606 array!55604 (_ BitVec 32) (_ BitVec 32) V!31383 V!31383 (_ BitVec 64) V!31383 (_ BitVec 32) Int) Unit!31389)

(assert (=> b!927726 (= lt!418302 (lemmaListMapApplyFromThenApplyFromZero!102 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!927727 () Bool)

(declare-fun res!624943 () Bool)

(assert (=> b!927727 (=> (not res!624943) (not e!520889))))

(declare-fun lt!418301 () ListLongMap!11821)

(assert (=> b!927727 (= res!624943 (= (apply!722 lt!418301 k!1099) v!791))))

(declare-fun res!624935 () Bool)

(assert (=> start!79120 (=> (not res!624935) (not e!520885))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79120 (= res!624935 (validMask!0 mask!1881))))

(assert (=> start!79120 e!520885))

(assert (=> start!79120 true))

(declare-fun tp_is_empty!19813 () Bool)

(assert (=> start!79120 tp_is_empty!19813))

(declare-fun e!520884 () Bool)

(declare-fun array_inv!20814 (array!55604) Bool)

(assert (=> start!79120 (and (array_inv!20814 _values!1231) e!520884)))

(assert (=> start!79120 tp!60356))

(declare-fun array_inv!20815 (array!55606) Bool)

(assert (=> start!79120 (array_inv!20815 _keys!1487)))

(declare-fun b!927728 () Bool)

(declare-fun e!520886 () Unit!31389)

(declare-fun Unit!31391 () Unit!31389)

(assert (=> b!927728 (= e!520886 Unit!31391)))

(declare-fun b!927729 () Bool)

(assert (=> b!927729 (= e!520888 tp_is_empty!19813)))

(declare-fun b!927730 () Bool)

(declare-fun res!624939 () Bool)

(assert (=> b!927730 (=> (not res!624939) (not e!520885))))

(assert (=> b!927730 (= res!624939 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27204 _keys!1487))))))

(declare-fun b!927731 () Bool)

(declare-fun e!520881 () Bool)

(assert (=> b!927731 (= e!520881 e!520889)))

(declare-fun res!624937 () Bool)

(assert (=> b!927731 (=> (not res!624937) (not e!520889))))

(assert (=> b!927731 (= res!624937 (contains!4945 lt!418301 k!1099))))

(assert (=> b!927731 (= lt!418301 (getCurrentListMap!3139 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!927732 () Bool)

(declare-fun e!520878 () Bool)

(declare-fun e!520879 () Bool)

(assert (=> b!927732 (= e!520878 e!520879)))

(declare-fun res!624942 () Bool)

(assert (=> b!927732 (=> (not res!624942) (not e!520879))))

(assert (=> b!927732 (= res!624942 (and (= lt!418292 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!927732 (= lt!418292 (apply!722 lt!418297 k!1099))))

(declare-fun b!927733 () Bool)

(assert (=> b!927733 (= e!520879 e!520881)))

(declare-fun res!624936 () Bool)

(assert (=> b!927733 (=> (not res!624936) (not e!520881))))

(assert (=> b!927733 (= res!624936 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27204 _keys!1487)))))

(declare-fun lt!418305 () Unit!31389)

(assert (=> b!927733 (= lt!418305 e!520886)))

(declare-fun c!96851 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!927733 (= c!96851 (validKeyInArray!0 k!1099))))

(declare-fun b!927734 () Bool)

(declare-fun Unit!31392 () Unit!31389)

(assert (=> b!927734 (= e!520890 Unit!31392)))

(declare-fun b!927735 () Bool)

(assert (=> b!927735 (= e!520886 e!520890)))

(assert (=> b!927735 (= lt!418290 (select (arr!26744 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96850 () Bool)

(assert (=> b!927735 (= c!96850 (validKeyInArray!0 lt!418290))))

(declare-fun b!927736 () Bool)

(declare-fun res!624934 () Bool)

(assert (=> b!927736 (=> (not res!624934) (not e!520885))))

(assert (=> b!927736 (= res!624934 (and (= (size!27203 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27204 _keys!1487) (size!27203 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!927737 () Bool)

(declare-fun e!520882 () Bool)

(assert (=> b!927737 (= e!520882 tp_is_empty!19813)))

(declare-fun b!927738 () Bool)

(assert (=> b!927738 (= e!520885 e!520878)))

(declare-fun res!624940 () Bool)

(assert (=> b!927738 (=> (not res!624940) (not e!520878))))

(assert (=> b!927738 (= res!624940 (contains!4945 lt!418297 k!1099))))

(assert (=> b!927738 (= lt!418297 (getCurrentListMap!3139 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!927739 () Bool)

(assert (=> b!927739 (= e!520884 (and e!520882 mapRes!31476))))

(declare-fun condMapEmpty!31476 () Bool)

(declare-fun mapDefault!31476 () ValueCell!9425)

