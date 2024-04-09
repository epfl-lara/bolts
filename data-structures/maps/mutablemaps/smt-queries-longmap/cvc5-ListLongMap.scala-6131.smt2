; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78922 () Bool)

(assert start!78922)

(declare-fun b_free!17107 () Bool)

(declare-fun b_next!17107 () Bool)

(assert (=> start!78922 (= b_free!17107 (not b_next!17107))))

(declare-fun tp!59763 () Bool)

(declare-fun b_and!27969 () Bool)

(assert (=> start!78922 (= tp!59763 b_and!27969)))

(declare-fun b!922086 () Bool)

(declare-fun e!517422 () Bool)

(assert (=> b!922086 (= e!517422 (not true))))

(declare-fun lt!414068 () (_ BitVec 64))

(declare-fun k!1099 () (_ BitVec 64))

(assert (=> b!922086 (not (= lt!414068 k!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((Unit!31101 0))(
  ( (Unit!31102) )
))
(declare-fun lt!414072 () Unit!31101)

(declare-datatypes ((array!55218 0))(
  ( (array!55219 (arr!26550 (Array (_ BitVec 32) (_ BitVec 64))) (size!27010 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55218)

(declare-datatypes ((List!18763 0))(
  ( (Nil!18760) (Cons!18759 (h!19905 (_ BitVec 64)) (t!26608 List!18763)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55218 (_ BitVec 64) (_ BitVec 32) List!18763) Unit!31101)

(assert (=> b!922086 (= lt!414072 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18760))))

(declare-fun e!517421 () Bool)

(assert (=> b!922086 e!517421))

(declare-fun c!96080 () Bool)

(assert (=> b!922086 (= c!96080 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun lt!414070 () Unit!31101)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31119 0))(
  ( (V!31120 (val!9858 Int)) )
))
(declare-datatypes ((ValueCell!9326 0))(
  ( (ValueCellFull!9326 (v!12376 V!31119)) (EmptyCell!9326) )
))
(declare-datatypes ((array!55220 0))(
  ( (array!55221 (arr!26551 (Array (_ BitVec 32) ValueCell!9326)) (size!27011 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55220)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31119)

(declare-fun minValue!1173 () V!31119)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!193 (array!55218 array!55220 (_ BitVec 32) (_ BitVec 32) V!31119 V!31119 (_ BitVec 64) (_ BitVec 32) Int) Unit!31101)

(assert (=> b!922086 (= lt!414070 (lemmaListMapContainsThenArrayContainsFrom!193 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55218 (_ BitVec 32) List!18763) Bool)

(assert (=> b!922086 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18760)))

(declare-fun lt!414064 () Unit!31101)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55218 (_ BitVec 32) (_ BitVec 32)) Unit!31101)

(assert (=> b!922086 (= lt!414064 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((tuple2!12924 0))(
  ( (tuple2!12925 (_1!6472 (_ BitVec 64)) (_2!6472 V!31119)) )
))
(declare-datatypes ((List!18764 0))(
  ( (Nil!18761) (Cons!18760 (h!19906 tuple2!12924) (t!26609 List!18764)) )
))
(declare-datatypes ((ListLongMap!11635 0))(
  ( (ListLongMap!11636 (toList!5833 List!18764)) )
))
(declare-fun lt!414071 () ListLongMap!11635)

(declare-fun lt!414067 () tuple2!12924)

(declare-fun contains!4860 (ListLongMap!11635 (_ BitVec 64)) Bool)

(declare-fun +!2647 (ListLongMap!11635 tuple2!12924) ListLongMap!11635)

(assert (=> b!922086 (contains!4860 (+!2647 lt!414071 lt!414067) k!1099)))

(declare-fun lt!414066 () Unit!31101)

(declare-fun lt!414069 () V!31119)

(declare-fun addStillContains!409 (ListLongMap!11635 (_ BitVec 64) V!31119 (_ BitVec 64)) Unit!31101)

(assert (=> b!922086 (= lt!414066 (addStillContains!409 lt!414071 lt!414068 lt!414069 k!1099))))

(declare-fun getCurrentListMap!3054 (array!55218 array!55220 (_ BitVec 32) (_ BitVec 32) V!31119 V!31119 (_ BitVec 32) Int) ListLongMap!11635)

(assert (=> b!922086 (= (getCurrentListMap!3054 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2647 (getCurrentListMap!3054 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!414067))))

(assert (=> b!922086 (= lt!414067 (tuple2!12925 lt!414068 lt!414069))))

(declare-fun get!13962 (ValueCell!9326 V!31119) V!31119)

(declare-fun dynLambda!1486 (Int (_ BitVec 64)) V!31119)

(assert (=> b!922086 (= lt!414069 (get!13962 (select (arr!26551 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1486 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!414065 () Unit!31101)

(declare-fun lemmaListMapRecursiveValidKeyArray!82 (array!55218 array!55220 (_ BitVec 32) (_ BitVec 32) V!31119 V!31119 (_ BitVec 32) Int) Unit!31101)

(assert (=> b!922086 (= lt!414065 (lemmaListMapRecursiveValidKeyArray!82 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!922087 () Bool)

(declare-fun res!621935 () Bool)

(declare-fun e!517428 () Bool)

(assert (=> b!922087 (=> (not res!621935) (not e!517428))))

(assert (=> b!922087 (= res!621935 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18760))))

(declare-fun b!922088 () Bool)

(declare-fun res!621926 () Bool)

(declare-fun e!517425 () Bool)

(assert (=> b!922088 (=> (not res!621926) (not e!517425))))

(assert (=> b!922088 (= res!621926 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!922089 () Bool)

(declare-fun res!621933 () Bool)

(assert (=> b!922089 (=> (not res!621933) (not e!517425))))

(declare-fun v!791 () V!31119)

(declare-fun apply!639 (ListLongMap!11635 (_ BitVec 64)) V!31119)

(assert (=> b!922089 (= res!621933 (= (apply!639 lt!414071 k!1099) v!791))))

(declare-fun mapIsEmpty!31179 () Bool)

(declare-fun mapRes!31179 () Bool)

(assert (=> mapIsEmpty!31179 mapRes!31179))

(declare-fun mapNonEmpty!31179 () Bool)

(declare-fun tp!59762 () Bool)

(declare-fun e!517423 () Bool)

(assert (=> mapNonEmpty!31179 (= mapRes!31179 (and tp!59762 e!517423))))

(declare-fun mapKey!31179 () (_ BitVec 32))

(declare-fun mapValue!31179 () ValueCell!9326)

(declare-fun mapRest!31179 () (Array (_ BitVec 32) ValueCell!9326))

(assert (=> mapNonEmpty!31179 (= (arr!26551 _values!1231) (store mapRest!31179 mapKey!31179 mapValue!31179))))

(declare-fun b!922090 () Bool)

(declare-fun res!621927 () Bool)

(assert (=> b!922090 (=> (not res!621927) (not e!517428))))

(assert (=> b!922090 (= res!621927 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27010 _keys!1487))))))

(declare-fun b!922091 () Bool)

(assert (=> b!922091 (= e!517421 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!922092 () Bool)

(declare-fun e!517424 () Bool)

(declare-fun tp_is_empty!19615 () Bool)

(assert (=> b!922092 (= e!517424 tp_is_empty!19615)))

(declare-fun b!922094 () Bool)

(declare-fun res!621934 () Bool)

(assert (=> b!922094 (=> (not res!621934) (not e!517428))))

(assert (=> b!922094 (= res!621934 (and (= (size!27011 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27010 _keys!1487) (size!27011 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!922095 () Bool)

(assert (=> b!922095 (= e!517428 e!517425)))

(declare-fun res!621929 () Bool)

(assert (=> b!922095 (=> (not res!621929) (not e!517425))))

(assert (=> b!922095 (= res!621929 (contains!4860 lt!414071 k!1099))))

(assert (=> b!922095 (= lt!414071 (getCurrentListMap!3054 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!922096 () Bool)

(declare-fun arrayContainsKey!0 (array!55218 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!922096 (= e!517421 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!922097 () Bool)

(declare-fun res!621928 () Bool)

(assert (=> b!922097 (=> (not res!621928) (not e!517428))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55218 (_ BitVec 32)) Bool)

(assert (=> b!922097 (= res!621928 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!922098 () Bool)

(assert (=> b!922098 (= e!517425 e!517422)))

(declare-fun res!621931 () Bool)

(assert (=> b!922098 (=> (not res!621931) (not e!517422))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!922098 (= res!621931 (validKeyInArray!0 lt!414068))))

(assert (=> b!922098 (= lt!414068 (select (arr!26550 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun res!621930 () Bool)

(assert (=> start!78922 (=> (not res!621930) (not e!517428))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78922 (= res!621930 (validMask!0 mask!1881))))

(assert (=> start!78922 e!517428))

(assert (=> start!78922 true))

(assert (=> start!78922 tp_is_empty!19615))

(declare-fun e!517426 () Bool)

(declare-fun array_inv!20670 (array!55220) Bool)

(assert (=> start!78922 (and (array_inv!20670 _values!1231) e!517426)))

(assert (=> start!78922 tp!59763))

(declare-fun array_inv!20671 (array!55218) Bool)

(assert (=> start!78922 (array_inv!20671 _keys!1487)))

(declare-fun b!922093 () Bool)

(declare-fun res!621932 () Bool)

(assert (=> b!922093 (=> (not res!621932) (not e!517425))))

(assert (=> b!922093 (= res!621932 (validKeyInArray!0 k!1099))))

(declare-fun b!922099 () Bool)

(assert (=> b!922099 (= e!517426 (and e!517424 mapRes!31179))))

(declare-fun condMapEmpty!31179 () Bool)

(declare-fun mapDefault!31179 () ValueCell!9326)

