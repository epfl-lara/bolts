; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78958 () Bool)

(assert start!78958)

(declare-fun b_free!17143 () Bool)

(declare-fun b_next!17143 () Bool)

(assert (=> start!78958 (= b_free!17143 (not b_next!17143))))

(declare-fun tp!59871 () Bool)

(declare-fun b_and!28041 () Bool)

(assert (=> start!78958 (= tp!59871 b_and!28041)))

(declare-fun b!922932 () Bool)

(declare-fun res!622467 () Bool)

(declare-fun e!517854 () Bool)

(assert (=> b!922932 (=> (not res!622467) (not e!517854))))

(declare-datatypes ((array!55288 0))(
  ( (array!55289 (arr!26585 (Array (_ BitVec 32) (_ BitVec 64))) (size!27045 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55288)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31167 0))(
  ( (V!31168 (val!9876 Int)) )
))
(declare-datatypes ((ValueCell!9344 0))(
  ( (ValueCellFull!9344 (v!12394 V!31167)) (EmptyCell!9344) )
))
(declare-datatypes ((array!55290 0))(
  ( (array!55291 (arr!26586 (Array (_ BitVec 32) ValueCell!9344)) (size!27046 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55290)

(assert (=> b!922932 (= res!622467 (and (= (size!27046 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27045 _keys!1487) (size!27046 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!922933 () Bool)

(declare-fun res!622469 () Bool)

(assert (=> b!922933 (=> (not res!622469) (not e!517854))))

(declare-datatypes ((List!18797 0))(
  ( (Nil!18794) (Cons!18793 (h!19939 (_ BitVec 64)) (t!26678 List!18797)) )
))
(declare-fun arrayNoDuplicates!0 (array!55288 (_ BitVec 32) List!18797) Bool)

(assert (=> b!922933 (= res!622469 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18794))))

(declare-fun b!922934 () Bool)

(declare-fun res!622470 () Bool)

(declare-fun e!517853 () Bool)

(assert (=> b!922934 (=> (not res!622470) (not e!517853))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!922934 (= res!622470 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!922935 () Bool)

(declare-fun e!517860 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!55288 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!922935 (= e!517860 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!922936 () Bool)

(declare-fun e!517856 () Bool)

(assert (=> b!922936 (= e!517853 e!517856)))

(declare-fun res!622472 () Bool)

(assert (=> b!922936 (=> (not res!622472) (not e!517856))))

(declare-fun lt!414553 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!922936 (= res!622472 (validKeyInArray!0 lt!414553))))

(assert (=> b!922936 (= lt!414553 (select (arr!26585 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun mapIsEmpty!31233 () Bool)

(declare-fun mapRes!31233 () Bool)

(assert (=> mapIsEmpty!31233 mapRes!31233))

(declare-fun b!922937 () Bool)

(declare-fun e!517859 () Bool)

(declare-fun tp_is_empty!19651 () Bool)

(assert (=> b!922937 (= e!517859 tp_is_empty!19651)))

(declare-fun b!922938 () Bool)

(declare-fun e!517855 () Bool)

(assert (=> b!922938 (= e!517855 tp_is_empty!19651)))

(declare-fun b!922939 () Bool)

(declare-fun res!622473 () Bool)

(assert (=> b!922939 (=> (not res!622473) (not e!517854))))

(assert (=> b!922939 (= res!622473 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27045 _keys!1487))))))

(declare-fun b!922940 () Bool)

(declare-fun res!622474 () Bool)

(assert (=> b!922940 (=> (not res!622474) (not e!517853))))

(assert (=> b!922940 (= res!622474 (validKeyInArray!0 k!1099))))

(declare-fun b!922941 () Bool)

(assert (=> b!922941 (= e!517860 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!922942 () Bool)

(declare-fun res!622466 () Bool)

(assert (=> b!922942 (=> (not res!622466) (not e!517853))))

(declare-datatypes ((tuple2!12960 0))(
  ( (tuple2!12961 (_1!6490 (_ BitVec 64)) (_2!6490 V!31167)) )
))
(declare-datatypes ((List!18798 0))(
  ( (Nil!18795) (Cons!18794 (h!19940 tuple2!12960) (t!26679 List!18798)) )
))
(declare-datatypes ((ListLongMap!11671 0))(
  ( (ListLongMap!11672 (toList!5851 List!18798)) )
))
(declare-fun lt!414557 () ListLongMap!11671)

(declare-fun v!791 () V!31167)

(declare-fun apply!656 (ListLongMap!11671 (_ BitVec 64)) V!31167)

(assert (=> b!922942 (= res!622466 (= (apply!656 lt!414557 k!1099) v!791))))

(declare-fun res!622471 () Bool)

(assert (=> start!78958 (=> (not res!622471) (not e!517854))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78958 (= res!622471 (validMask!0 mask!1881))))

(assert (=> start!78958 e!517854))

(assert (=> start!78958 true))

(assert (=> start!78958 tp_is_empty!19651))

(declare-fun e!517858 () Bool)

(declare-fun array_inv!20698 (array!55290) Bool)

(assert (=> start!78958 (and (array_inv!20698 _values!1231) e!517858)))

(assert (=> start!78958 tp!59871))

(declare-fun array_inv!20699 (array!55288) Bool)

(assert (=> start!78958 (array_inv!20699 _keys!1487)))

(declare-fun b!922943 () Bool)

(assert (=> b!922943 (= e!517856 (not true))))

(assert (=> b!922943 (not (= lt!414553 k!1099))))

(declare-datatypes ((Unit!31133 0))(
  ( (Unit!31134) )
))
(declare-fun lt!414554 () Unit!31133)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55288 (_ BitVec 64) (_ BitVec 32) List!18797) Unit!31133)

(assert (=> b!922943 (= lt!414554 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18794))))

(assert (=> b!922943 e!517860))

(declare-fun c!96134 () Bool)

(assert (=> b!922943 (= c!96134 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun zeroValue!1173 () V!31167)

(declare-fun minValue!1173 () V!31167)

(declare-fun lt!414558 () Unit!31133)

(declare-fun defaultEntry!1235 () Int)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!209 (array!55288 array!55290 (_ BitVec 32) (_ BitVec 32) V!31167 V!31167 (_ BitVec 64) (_ BitVec 32) Int) Unit!31133)

(assert (=> b!922943 (= lt!414558 (lemmaListMapContainsThenArrayContainsFrom!209 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(assert (=> b!922943 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18794)))

(declare-fun lt!414556 () Unit!31133)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55288 (_ BitVec 32) (_ BitVec 32)) Unit!31133)

(assert (=> b!922943 (= lt!414556 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!414551 () tuple2!12960)

(declare-fun contains!4876 (ListLongMap!11671 (_ BitVec 64)) Bool)

(declare-fun +!2663 (ListLongMap!11671 tuple2!12960) ListLongMap!11671)

(assert (=> b!922943 (contains!4876 (+!2663 lt!414557 lt!414551) k!1099)))

(declare-fun lt!414552 () Unit!31133)

(declare-fun lt!414550 () V!31167)

(declare-fun addStillContains!425 (ListLongMap!11671 (_ BitVec 64) V!31167 (_ BitVec 64)) Unit!31133)

(assert (=> b!922943 (= lt!414552 (addStillContains!425 lt!414557 lt!414553 lt!414550 k!1099))))

(declare-fun getCurrentListMap!3070 (array!55288 array!55290 (_ BitVec 32) (_ BitVec 32) V!31167 V!31167 (_ BitVec 32) Int) ListLongMap!11671)

(assert (=> b!922943 (= (getCurrentListMap!3070 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2663 (getCurrentListMap!3070 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!414551))))

(assert (=> b!922943 (= lt!414551 (tuple2!12961 lt!414553 lt!414550))))

(declare-fun get!13990 (ValueCell!9344 V!31167) V!31167)

(declare-fun dynLambda!1502 (Int (_ BitVec 64)) V!31167)

(assert (=> b!922943 (= lt!414550 (get!13990 (select (arr!26586 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1502 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!414555 () Unit!31133)

(declare-fun lemmaListMapRecursiveValidKeyArray!98 (array!55288 array!55290 (_ BitVec 32) (_ BitVec 32) V!31167 V!31167 (_ BitVec 32) Int) Unit!31133)

(assert (=> b!922943 (= lt!414555 (lemmaListMapRecursiveValidKeyArray!98 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!922944 () Bool)

(declare-fun res!622468 () Bool)

(assert (=> b!922944 (=> (not res!622468) (not e!517854))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55288 (_ BitVec 32)) Bool)

(assert (=> b!922944 (= res!622468 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapNonEmpty!31233 () Bool)

(declare-fun tp!59870 () Bool)

(assert (=> mapNonEmpty!31233 (= mapRes!31233 (and tp!59870 e!517859))))

(declare-fun mapRest!31233 () (Array (_ BitVec 32) ValueCell!9344))

(declare-fun mapValue!31233 () ValueCell!9344)

(declare-fun mapKey!31233 () (_ BitVec 32))

(assert (=> mapNonEmpty!31233 (= (arr!26586 _values!1231) (store mapRest!31233 mapKey!31233 mapValue!31233))))

(declare-fun b!922945 () Bool)

(assert (=> b!922945 (= e!517858 (and e!517855 mapRes!31233))))

(declare-fun condMapEmpty!31233 () Bool)

(declare-fun mapDefault!31233 () ValueCell!9344)

