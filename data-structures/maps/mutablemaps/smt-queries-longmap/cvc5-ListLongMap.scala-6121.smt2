; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78862 () Bool)

(assert start!78862)

(declare-fun b_free!17047 () Bool)

(declare-fun b_next!17047 () Bool)

(assert (=> start!78862 (= b_free!17047 (not b_next!17047))))

(declare-fun tp!59582 () Bool)

(declare-fun b_and!27849 () Bool)

(assert (=> start!78862 (= tp!59582 b_and!27849)))

(declare-fun b!920493 () Bool)

(declare-fun res!620847 () Bool)

(declare-fun e!516643 () Bool)

(assert (=> b!920493 (=> (not res!620847) (not e!516643))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((V!31039 0))(
  ( (V!31040 (val!9828 Int)) )
))
(declare-fun v!791 () V!31039)

(declare-datatypes ((tuple2!12872 0))(
  ( (tuple2!12873 (_1!6446 (_ BitVec 64)) (_2!6446 V!31039)) )
))
(declare-datatypes ((List!18714 0))(
  ( (Nil!18711) (Cons!18710 (h!19856 tuple2!12872) (t!26499 List!18714)) )
))
(declare-datatypes ((ListLongMap!11583 0))(
  ( (ListLongMap!11584 (toList!5807 List!18714)) )
))
(declare-fun lt!413261 () ListLongMap!11583)

(declare-fun apply!618 (ListLongMap!11583 (_ BitVec 64)) V!31039)

(assert (=> b!920493 (= res!620847 (= (apply!618 lt!413261 k!1099) v!791))))

(declare-fun b!920494 () Bool)

(declare-fun res!620852 () Bool)

(assert (=> b!920494 (=> (not res!620852) (not e!516643))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!920494 (= res!620852 (validKeyInArray!0 k!1099))))

(declare-fun b!920495 () Bool)

(declare-fun res!620849 () Bool)

(declare-fun e!516647 () Bool)

(assert (=> b!920495 (=> (not res!620849) (not e!516647))))

(declare-datatypes ((array!55102 0))(
  ( (array!55103 (arr!26492 (Array (_ BitVec 32) (_ BitVec 64))) (size!26952 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55102)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55102 (_ BitVec 32)) Bool)

(assert (=> b!920495 (= res!620849 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!920496 () Bool)

(declare-fun e!516645 () Bool)

(assert (=> b!920496 (= e!516645 true)))

(declare-fun lt!413256 () Bool)

(declare-datatypes ((List!18715 0))(
  ( (Nil!18712) (Cons!18711 (h!19857 (_ BitVec 64)) (t!26500 List!18715)) )
))
(declare-fun contains!4822 (List!18715 (_ BitVec 64)) Bool)

(assert (=> b!920496 (= lt!413256 (contains!4822 Nil!18712 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!920497 () Bool)

(declare-fun e!516641 () Bool)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!920497 (= e!516641 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!31089 () Bool)

(declare-fun mapRes!31089 () Bool)

(declare-fun tp!59583 () Bool)

(declare-fun e!516642 () Bool)

(assert (=> mapNonEmpty!31089 (= mapRes!31089 (and tp!59583 e!516642))))

(declare-datatypes ((ValueCell!9296 0))(
  ( (ValueCellFull!9296 (v!12346 V!31039)) (EmptyCell!9296) )
))
(declare-fun mapValue!31089 () ValueCell!9296)

(declare-datatypes ((array!55104 0))(
  ( (array!55105 (arr!26493 (Array (_ BitVec 32) ValueCell!9296)) (size!26953 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55104)

(declare-fun mapRest!31089 () (Array (_ BitVec 32) ValueCell!9296))

(declare-fun mapKey!31089 () (_ BitVec 32))

(assert (=> mapNonEmpty!31089 (= (arr!26493 _values!1231) (store mapRest!31089 mapKey!31089 mapValue!31089))))

(declare-fun b!920498 () Bool)

(declare-fun res!620846 () Bool)

(assert (=> b!920498 (=> (not res!620846) (not e!516647))))

(declare-fun arrayNoDuplicates!0 (array!55102 (_ BitVec 32) List!18715) Bool)

(assert (=> b!920498 (= res!620846 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18712))))

(declare-fun b!920499 () Bool)

(declare-fun res!620850 () Bool)

(assert (=> b!920499 (=> res!620850 e!516645)))

(assert (=> b!920499 (= res!620850 (contains!4822 Nil!18712 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!920500 () Bool)

(declare-fun e!516640 () Bool)

(assert (=> b!920500 (= e!516640 (not e!516645))))

(declare-fun res!620848 () Bool)

(assert (=> b!920500 (=> res!620848 e!516645)))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!920500 (= res!620848 (or (bvsge (size!26952 _keys!1487) #b01111111111111111111111111111111) (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!26952 _keys!1487))))))

(assert (=> b!920500 e!516641))

(declare-fun c!95990 () Bool)

(assert (=> b!920500 (= c!95990 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!31059 0))(
  ( (Unit!31060) )
))
(declare-fun lt!413258 () Unit!31059)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31039)

(declare-fun minValue!1173 () V!31039)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!172 (array!55102 array!55104 (_ BitVec 32) (_ BitVec 32) V!31039 V!31039 (_ BitVec 64) (_ BitVec 32) Int) Unit!31059)

(assert (=> b!920500 (= lt!413258 (lemmaListMapContainsThenArrayContainsFrom!172 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(assert (=> b!920500 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18712)))

(declare-fun lt!413254 () Unit!31059)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55102 (_ BitVec 32) (_ BitVec 32)) Unit!31059)

(assert (=> b!920500 (= lt!413254 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!413262 () tuple2!12872)

(declare-fun contains!4823 (ListLongMap!11583 (_ BitVec 64)) Bool)

(declare-fun +!2626 (ListLongMap!11583 tuple2!12872) ListLongMap!11583)

(assert (=> b!920500 (contains!4823 (+!2626 lt!413261 lt!413262) k!1099)))

(declare-fun lt!413259 () (_ BitVec 64))

(declare-fun lt!413255 () Unit!31059)

(declare-fun lt!413260 () V!31039)

(declare-fun addStillContains!388 (ListLongMap!11583 (_ BitVec 64) V!31039 (_ BitVec 64)) Unit!31059)

(assert (=> b!920500 (= lt!413255 (addStillContains!388 lt!413261 lt!413259 lt!413260 k!1099))))

(declare-fun getCurrentListMap!3029 (array!55102 array!55104 (_ BitVec 32) (_ BitVec 32) V!31039 V!31039 (_ BitVec 32) Int) ListLongMap!11583)

(assert (=> b!920500 (= (getCurrentListMap!3029 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2626 (getCurrentListMap!3029 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!413262))))

(assert (=> b!920500 (= lt!413262 (tuple2!12873 lt!413259 lt!413260))))

(declare-fun get!13921 (ValueCell!9296 V!31039) V!31039)

(declare-fun dynLambda!1465 (Int (_ BitVec 64)) V!31039)

(assert (=> b!920500 (= lt!413260 (get!13921 (select (arr!26493 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1465 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!413257 () Unit!31059)

(declare-fun lemmaListMapRecursiveValidKeyArray!61 (array!55102 array!55104 (_ BitVec 32) (_ BitVec 32) V!31039 V!31039 (_ BitVec 32) Int) Unit!31059)

(assert (=> b!920500 (= lt!413257 (lemmaListMapRecursiveValidKeyArray!61 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!920501 () Bool)

(declare-fun res!620843 () Bool)

(assert (=> b!920501 (=> (not res!620843) (not e!516643))))

(assert (=> b!920501 (= res!620843 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!31089 () Bool)

(assert (=> mapIsEmpty!31089 mapRes!31089))

(declare-fun b!920502 () Bool)

(declare-fun arrayContainsKey!0 (array!55102 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!920502 (= e!516641 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!920503 () Bool)

(declare-fun res!620855 () Bool)

(assert (=> b!920503 (=> res!620855 e!516645)))

(declare-fun noDuplicate!1339 (List!18715) Bool)

(assert (=> b!920503 (= res!620855 (not (noDuplicate!1339 Nil!18712)))))

(declare-fun b!920504 () Bool)

(declare-fun e!516644 () Bool)

(declare-fun tp_is_empty!19555 () Bool)

(assert (=> b!920504 (= e!516644 tp_is_empty!19555)))

(declare-fun b!920505 () Bool)

(assert (=> b!920505 (= e!516647 e!516643)))

(declare-fun res!620853 () Bool)

(assert (=> b!920505 (=> (not res!620853) (not e!516643))))

(assert (=> b!920505 (= res!620853 (contains!4823 lt!413261 k!1099))))

(assert (=> b!920505 (= lt!413261 (getCurrentListMap!3029 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!920507 () Bool)

(declare-fun e!516646 () Bool)

(assert (=> b!920507 (= e!516646 (and e!516644 mapRes!31089))))

(declare-fun condMapEmpty!31089 () Bool)

(declare-fun mapDefault!31089 () ValueCell!9296)

