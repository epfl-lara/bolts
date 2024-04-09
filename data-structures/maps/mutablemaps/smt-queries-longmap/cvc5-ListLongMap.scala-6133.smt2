; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78934 () Bool)

(assert start!78934)

(declare-fun b_free!17119 () Bool)

(declare-fun b_next!17119 () Bool)

(assert (=> start!78934 (= b_free!17119 (not b_next!17119))))

(declare-fun tp!59798 () Bool)

(declare-fun b_and!27993 () Bool)

(assert (=> start!78934 (= tp!59798 b_and!27993)))

(declare-fun mapNonEmpty!31197 () Bool)

(declare-fun mapRes!31197 () Bool)

(declare-fun tp!59799 () Bool)

(declare-fun e!517565 () Bool)

(assert (=> mapNonEmpty!31197 (= mapRes!31197 (and tp!59799 e!517565))))

(declare-datatypes ((V!31135 0))(
  ( (V!31136 (val!9864 Int)) )
))
(declare-datatypes ((ValueCell!9332 0))(
  ( (ValueCellFull!9332 (v!12382 V!31135)) (EmptyCell!9332) )
))
(declare-fun mapValue!31197 () ValueCell!9332)

(declare-datatypes ((array!55240 0))(
  ( (array!55241 (arr!26561 (Array (_ BitVec 32) ValueCell!9332)) (size!27021 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55240)

(declare-fun mapKey!31197 () (_ BitVec 32))

(declare-fun mapRest!31197 () (Array (_ BitVec 32) ValueCell!9332))

(assert (=> mapNonEmpty!31197 (= (arr!26561 _values!1231) (store mapRest!31197 mapKey!31197 mapValue!31197))))

(declare-fun res!622109 () Bool)

(declare-fun e!517571 () Bool)

(assert (=> start!78934 (=> (not res!622109) (not e!517571))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78934 (= res!622109 (validMask!0 mask!1881))))

(assert (=> start!78934 e!517571))

(assert (=> start!78934 true))

(declare-fun tp_is_empty!19627 () Bool)

(assert (=> start!78934 tp_is_empty!19627))

(declare-fun e!517572 () Bool)

(declare-fun array_inv!20678 (array!55240) Bool)

(assert (=> start!78934 (and (array_inv!20678 _values!1231) e!517572)))

(assert (=> start!78934 tp!59798))

(declare-datatypes ((array!55242 0))(
  ( (array!55243 (arr!26562 (Array (_ BitVec 32) (_ BitVec 64))) (size!27022 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55242)

(declare-fun array_inv!20679 (array!55242) Bool)

(assert (=> start!78934 (array_inv!20679 _keys!1487)))

(declare-fun b!922368 () Bool)

(declare-fun e!517568 () Bool)

(declare-fun e!517569 () Bool)

(assert (=> b!922368 (= e!517568 e!517569)))

(declare-fun res!622110 () Bool)

(assert (=> b!922368 (=> (not res!622110) (not e!517569))))

(declare-fun lt!414231 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!922368 (= res!622110 (validKeyInArray!0 lt!414231))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!922368 (= lt!414231 (select (arr!26562 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!922369 () Bool)

(declare-fun e!517567 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!922369 (= e!517567 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!922370 () Bool)

(declare-fun res!622107 () Bool)

(assert (=> b!922370 (=> (not res!622107) (not e!517571))))

(declare-datatypes ((List!18773 0))(
  ( (Nil!18770) (Cons!18769 (h!19915 (_ BitVec 64)) (t!26630 List!18773)) )
))
(declare-fun arrayNoDuplicates!0 (array!55242 (_ BitVec 32) List!18773) Bool)

(assert (=> b!922370 (= res!622107 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18770))))

(declare-fun b!922371 () Bool)

(declare-fun res!622112 () Bool)

(assert (=> b!922371 (=> (not res!622112) (not e!517568))))

(declare-fun v!791 () V!31135)

(declare-datatypes ((tuple2!12936 0))(
  ( (tuple2!12937 (_1!6478 (_ BitVec 64)) (_2!6478 V!31135)) )
))
(declare-datatypes ((List!18774 0))(
  ( (Nil!18771) (Cons!18770 (h!19916 tuple2!12936) (t!26631 List!18774)) )
))
(declare-datatypes ((ListLongMap!11647 0))(
  ( (ListLongMap!11648 (toList!5839 List!18774)) )
))
(declare-fun lt!414229 () ListLongMap!11647)

(declare-fun apply!644 (ListLongMap!11647 (_ BitVec 64)) V!31135)

(assert (=> b!922371 (= res!622112 (= (apply!644 lt!414229 k!1099) v!791))))

(declare-fun b!922372 () Bool)

(declare-fun res!622111 () Bool)

(assert (=> b!922372 (=> (not res!622111) (not e!517571))))

(assert (=> b!922372 (= res!622111 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27022 _keys!1487))))))

(declare-fun b!922373 () Bool)

(declare-fun res!622115 () Bool)

(assert (=> b!922373 (=> (not res!622115) (not e!517568))))

(assert (=> b!922373 (= res!622115 (validKeyInArray!0 k!1099))))

(declare-fun b!922374 () Bool)

(assert (=> b!922374 (= e!517571 e!517568)))

(declare-fun res!622113 () Bool)

(assert (=> b!922374 (=> (not res!622113) (not e!517568))))

(declare-fun contains!4864 (ListLongMap!11647 (_ BitVec 64)) Bool)

(assert (=> b!922374 (= res!622113 (contains!4864 lt!414229 k!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31135)

(declare-fun minValue!1173 () V!31135)

(declare-fun getCurrentListMap!3058 (array!55242 array!55240 (_ BitVec 32) (_ BitVec 32) V!31135 V!31135 (_ BitVec 32) Int) ListLongMap!11647)

(assert (=> b!922374 (= lt!414229 (getCurrentListMap!3058 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!922375 () Bool)

(declare-fun res!622106 () Bool)

(assert (=> b!922375 (=> (not res!622106) (not e!517568))))

(assert (=> b!922375 (= res!622106 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!922376 () Bool)

(assert (=> b!922376 (= e!517569 (not true))))

(assert (=> b!922376 (not (= lt!414231 k!1099))))

(declare-datatypes ((Unit!31109 0))(
  ( (Unit!31110) )
))
(declare-fun lt!414226 () Unit!31109)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55242 (_ BitVec 64) (_ BitVec 32) List!18773) Unit!31109)

(assert (=> b!922376 (= lt!414226 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18770))))

(assert (=> b!922376 e!517567))

(declare-fun c!96098 () Bool)

(assert (=> b!922376 (= c!96098 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!414232 () Unit!31109)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!197 (array!55242 array!55240 (_ BitVec 32) (_ BitVec 32) V!31135 V!31135 (_ BitVec 64) (_ BitVec 32) Int) Unit!31109)

(assert (=> b!922376 (= lt!414232 (lemmaListMapContainsThenArrayContainsFrom!197 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(assert (=> b!922376 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18770)))

(declare-fun lt!414234 () Unit!31109)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55242 (_ BitVec 32) (_ BitVec 32)) Unit!31109)

(assert (=> b!922376 (= lt!414234 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!414227 () tuple2!12936)

(declare-fun +!2651 (ListLongMap!11647 tuple2!12936) ListLongMap!11647)

(assert (=> b!922376 (contains!4864 (+!2651 lt!414229 lt!414227) k!1099)))

(declare-fun lt!414228 () Unit!31109)

(declare-fun lt!414230 () V!31135)

(declare-fun addStillContains!413 (ListLongMap!11647 (_ BitVec 64) V!31135 (_ BitVec 64)) Unit!31109)

(assert (=> b!922376 (= lt!414228 (addStillContains!413 lt!414229 lt!414231 lt!414230 k!1099))))

(assert (=> b!922376 (= (getCurrentListMap!3058 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2651 (getCurrentListMap!3058 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!414227))))

(assert (=> b!922376 (= lt!414227 (tuple2!12937 lt!414231 lt!414230))))

(declare-fun get!13970 (ValueCell!9332 V!31135) V!31135)

(declare-fun dynLambda!1490 (Int (_ BitVec 64)) V!31135)

(assert (=> b!922376 (= lt!414230 (get!13970 (select (arr!26561 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1490 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!414233 () Unit!31109)

(declare-fun lemmaListMapRecursiveValidKeyArray!86 (array!55242 array!55240 (_ BitVec 32) (_ BitVec 32) V!31135 V!31135 (_ BitVec 32) Int) Unit!31109)

(assert (=> b!922376 (= lt!414233 (lemmaListMapRecursiveValidKeyArray!86 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!922377 () Bool)

(declare-fun arrayContainsKey!0 (array!55242 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!922377 (= e!517567 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!922378 () Bool)

(declare-fun res!622108 () Bool)

(assert (=> b!922378 (=> (not res!622108) (not e!517571))))

(assert (=> b!922378 (= res!622108 (and (= (size!27021 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27022 _keys!1487) (size!27021 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!922379 () Bool)

(declare-fun res!622114 () Bool)

(assert (=> b!922379 (=> (not res!622114) (not e!517571))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55242 (_ BitVec 32)) Bool)

(assert (=> b!922379 (= res!622114 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapIsEmpty!31197 () Bool)

(assert (=> mapIsEmpty!31197 mapRes!31197))

(declare-fun b!922380 () Bool)

(declare-fun e!517570 () Bool)

(assert (=> b!922380 (= e!517572 (and e!517570 mapRes!31197))))

(declare-fun condMapEmpty!31197 () Bool)

(declare-fun mapDefault!31197 () ValueCell!9332)

