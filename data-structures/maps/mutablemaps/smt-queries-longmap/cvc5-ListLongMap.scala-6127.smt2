; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78898 () Bool)

(assert start!78898)

(declare-fun b_free!17083 () Bool)

(declare-fun b_next!17083 () Bool)

(assert (=> start!78898 (= b_free!17083 (not b_next!17083))))

(declare-fun tp!59691 () Bool)

(declare-fun b_and!27921 () Bool)

(assert (=> start!78898 (= tp!59691 b_and!27921)))

(declare-fun mapIsEmpty!31143 () Bool)

(declare-fun mapRes!31143 () Bool)

(assert (=> mapIsEmpty!31143 mapRes!31143))

(declare-fun b!921501 () Bool)

(declare-fun res!621551 () Bool)

(declare-fun e!517133 () Bool)

(assert (=> b!921501 (=> (not res!621551) (not e!517133))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!921501 (= res!621551 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!921502 () Bool)

(declare-fun e!517130 () Bool)

(declare-fun tp_is_empty!19591 () Bool)

(assert (=> b!921502 (= e!517130 tp_is_empty!19591)))

(declare-fun b!921503 () Bool)

(declare-fun e!517129 () Bool)

(declare-fun e!517134 () Bool)

(assert (=> b!921503 (= e!517129 (not e!517134))))

(declare-fun res!621553 () Bool)

(assert (=> b!921503 (=> res!621553 e!517134)))

(declare-datatypes ((array!55170 0))(
  ( (array!55171 (arr!26526 (Array (_ BitVec 32) (_ BitVec 64))) (size!26986 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55170)

(assert (=> b!921503 (= res!621553 (or (bvsge (size!26986 _keys!1487) #b01111111111111111111111111111111) (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!26986 _keys!1487))))))

(declare-fun e!517127 () Bool)

(assert (=> b!921503 e!517127))

(declare-fun c!96044 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(assert (=> b!921503 (= c!96044 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31087 0))(
  ( (V!31088 (val!9846 Int)) )
))
(declare-datatypes ((ValueCell!9314 0))(
  ( (ValueCellFull!9314 (v!12364 V!31087)) (EmptyCell!9314) )
))
(declare-datatypes ((array!55172 0))(
  ( (array!55173 (arr!26527 (Array (_ BitVec 32) ValueCell!9314)) (size!26987 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55172)

(declare-fun defaultEntry!1235 () Int)

(declare-datatypes ((Unit!31083 0))(
  ( (Unit!31084) )
))
(declare-fun lt!413744 () Unit!31083)

(declare-fun zeroValue!1173 () V!31087)

(declare-fun minValue!1173 () V!31087)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!184 (array!55170 array!55172 (_ BitVec 32) (_ BitVec 32) V!31087 V!31087 (_ BitVec 64) (_ BitVec 32) Int) Unit!31083)

(assert (=> b!921503 (= lt!413744 (lemmaListMapContainsThenArrayContainsFrom!184 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-datatypes ((List!18743 0))(
  ( (Nil!18740) (Cons!18739 (h!19885 (_ BitVec 64)) (t!26564 List!18743)) )
))
(declare-fun arrayNoDuplicates!0 (array!55170 (_ BitVec 32) List!18743) Bool)

(assert (=> b!921503 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18740)))

(declare-fun lt!413746 () Unit!31083)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55170 (_ BitVec 32) (_ BitVec 32)) Unit!31083)

(assert (=> b!921503 (= lt!413746 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((tuple2!12902 0))(
  ( (tuple2!12903 (_1!6461 (_ BitVec 64)) (_2!6461 V!31087)) )
))
(declare-datatypes ((List!18744 0))(
  ( (Nil!18741) (Cons!18740 (h!19886 tuple2!12902) (t!26565 List!18744)) )
))
(declare-datatypes ((ListLongMap!11613 0))(
  ( (ListLongMap!11614 (toList!5822 List!18744)) )
))
(declare-fun lt!413743 () ListLongMap!11613)

(declare-fun lt!413740 () tuple2!12902)

(declare-fun contains!4849 (ListLongMap!11613 (_ BitVec 64)) Bool)

(declare-fun +!2638 (ListLongMap!11613 tuple2!12902) ListLongMap!11613)

(assert (=> b!921503 (contains!4849 (+!2638 lt!413743 lt!413740) k!1099)))

(declare-fun lt!413747 () V!31087)

(declare-fun lt!413748 () Unit!31083)

(declare-fun lt!413741 () (_ BitVec 64))

(declare-fun addStillContains!400 (ListLongMap!11613 (_ BitVec 64) V!31087 (_ BitVec 64)) Unit!31083)

(assert (=> b!921503 (= lt!413748 (addStillContains!400 lt!413743 lt!413741 lt!413747 k!1099))))

(declare-fun getCurrentListMap!3044 (array!55170 array!55172 (_ BitVec 32) (_ BitVec 32) V!31087 V!31087 (_ BitVec 32) Int) ListLongMap!11613)

(assert (=> b!921503 (= (getCurrentListMap!3044 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2638 (getCurrentListMap!3044 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!413740))))

(assert (=> b!921503 (= lt!413740 (tuple2!12903 lt!413741 lt!413747))))

(declare-fun get!13945 (ValueCell!9314 V!31087) V!31087)

(declare-fun dynLambda!1477 (Int (_ BitVec 64)) V!31087)

(assert (=> b!921503 (= lt!413747 (get!13945 (select (arr!26527 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1477 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!413745 () Unit!31083)

(declare-fun lemmaListMapRecursiveValidKeyArray!73 (array!55170 array!55172 (_ BitVec 32) (_ BitVec 32) V!31087 V!31087 (_ BitVec 32) Int) Unit!31083)

(assert (=> b!921503 (= lt!413745 (lemmaListMapRecursiveValidKeyArray!73 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!921504 () Bool)

(declare-fun res!621547 () Bool)

(assert (=> b!921504 (=> res!621547 e!517134)))

(declare-fun noDuplicate!1349 (List!18743) Bool)

(assert (=> b!921504 (= res!621547 (not (noDuplicate!1349 Nil!18740)))))

(declare-fun b!921505 () Bool)

(declare-fun arrayContainsKey!0 (array!55170 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!921505 (= e!517127 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!921506 () Bool)

(declare-fun e!517128 () Bool)

(declare-fun e!517131 () Bool)

(assert (=> b!921506 (= e!517128 (and e!517131 mapRes!31143))))

(declare-fun condMapEmpty!31143 () Bool)

(declare-fun mapDefault!31143 () ValueCell!9314)

