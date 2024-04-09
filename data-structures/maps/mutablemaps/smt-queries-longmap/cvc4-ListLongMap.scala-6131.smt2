; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78926 () Bool)

(assert start!78926)

(declare-fun b_free!17111 () Bool)

(declare-fun b_next!17111 () Bool)

(assert (=> start!78926 (= b_free!17111 (not b_next!17111))))

(declare-fun tp!59775 () Bool)

(declare-fun b_and!27977 () Bool)

(assert (=> start!78926 (= tp!59775 b_and!27977)))

(declare-fun b!922180 () Bool)

(declare-fun res!621986 () Bool)

(declare-fun e!517470 () Bool)

(assert (=> b!922180 (=> (not res!621986) (not e!517470))))

(declare-datatypes ((array!55226 0))(
  ( (array!55227 (arr!26554 (Array (_ BitVec 32) (_ BitVec 64))) (size!27014 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55226)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55226 (_ BitVec 32)) Bool)

(assert (=> b!922180 (= res!621986 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!922181 () Bool)

(declare-fun res!621995 () Bool)

(assert (=> b!922181 (=> (not res!621995) (not e!517470))))

(declare-datatypes ((List!18767 0))(
  ( (Nil!18764) (Cons!18763 (h!19909 (_ BitVec 64)) (t!26616 List!18767)) )
))
(declare-fun arrayNoDuplicates!0 (array!55226 (_ BitVec 32) List!18767) Bool)

(assert (=> b!922181 (= res!621995 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18764))))

(declare-fun b!922182 () Bool)

(declare-fun res!621988 () Bool)

(declare-fun e!517472 () Bool)

(assert (=> b!922182 (=> (not res!621988) (not e!517472))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!922182 (= res!621988 (validKeyInArray!0 k!1099))))

(declare-fun res!621990 () Bool)

(assert (=> start!78926 (=> (not res!621990) (not e!517470))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78926 (= res!621990 (validMask!0 mask!1881))))

(assert (=> start!78926 e!517470))

(assert (=> start!78926 true))

(declare-fun tp_is_empty!19619 () Bool)

(assert (=> start!78926 tp_is_empty!19619))

(declare-datatypes ((V!31123 0))(
  ( (V!31124 (val!9860 Int)) )
))
(declare-datatypes ((ValueCell!9328 0))(
  ( (ValueCellFull!9328 (v!12378 V!31123)) (EmptyCell!9328) )
))
(declare-datatypes ((array!55228 0))(
  ( (array!55229 (arr!26555 (Array (_ BitVec 32) ValueCell!9328)) (size!27015 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55228)

(declare-fun e!517471 () Bool)

(declare-fun array_inv!20674 (array!55228) Bool)

(assert (=> start!78926 (and (array_inv!20674 _values!1231) e!517471)))

(assert (=> start!78926 tp!59775))

(declare-fun array_inv!20675 (array!55226) Bool)

(assert (=> start!78926 (array_inv!20675 _keys!1487)))

(declare-fun mapIsEmpty!31185 () Bool)

(declare-fun mapRes!31185 () Bool)

(assert (=> mapIsEmpty!31185 mapRes!31185))

(declare-fun b!922183 () Bool)

(declare-fun e!517469 () Bool)

(assert (=> b!922183 (= e!517469 (not true))))

(declare-fun lt!414124 () (_ BitVec 64))

(assert (=> b!922183 (not (= lt!414124 k!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((Unit!31105 0))(
  ( (Unit!31106) )
))
(declare-fun lt!414122 () Unit!31105)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55226 (_ BitVec 64) (_ BitVec 32) List!18767) Unit!31105)

(assert (=> b!922183 (= lt!414122 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18764))))

(declare-fun e!517475 () Bool)

(assert (=> b!922183 e!517475))

(declare-fun c!96086 () Bool)

(assert (=> b!922183 (= c!96086 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun lt!414119 () Unit!31105)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31123)

(declare-fun minValue!1173 () V!31123)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!195 (array!55226 array!55228 (_ BitVec 32) (_ BitVec 32) V!31123 V!31123 (_ BitVec 64) (_ BitVec 32) Int) Unit!31105)

(assert (=> b!922183 (= lt!414119 (lemmaListMapContainsThenArrayContainsFrom!195 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(assert (=> b!922183 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18764)))

(declare-fun lt!414121 () Unit!31105)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55226 (_ BitVec 32) (_ BitVec 32)) Unit!31105)

(assert (=> b!922183 (= lt!414121 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((tuple2!12928 0))(
  ( (tuple2!12929 (_1!6474 (_ BitVec 64)) (_2!6474 V!31123)) )
))
(declare-datatypes ((List!18768 0))(
  ( (Nil!18765) (Cons!18764 (h!19910 tuple2!12928) (t!26617 List!18768)) )
))
(declare-datatypes ((ListLongMap!11639 0))(
  ( (ListLongMap!11640 (toList!5835 List!18768)) )
))
(declare-fun lt!414118 () ListLongMap!11639)

(declare-fun lt!414120 () tuple2!12928)

(declare-fun contains!4862 (ListLongMap!11639 (_ BitVec 64)) Bool)

(declare-fun +!2649 (ListLongMap!11639 tuple2!12928) ListLongMap!11639)

(assert (=> b!922183 (contains!4862 (+!2649 lt!414118 lt!414120) k!1099)))

(declare-fun lt!414123 () Unit!31105)

(declare-fun lt!414125 () V!31123)

(declare-fun addStillContains!411 (ListLongMap!11639 (_ BitVec 64) V!31123 (_ BitVec 64)) Unit!31105)

(assert (=> b!922183 (= lt!414123 (addStillContains!411 lt!414118 lt!414124 lt!414125 k!1099))))

(declare-fun getCurrentListMap!3056 (array!55226 array!55228 (_ BitVec 32) (_ BitVec 32) V!31123 V!31123 (_ BitVec 32) Int) ListLongMap!11639)

(assert (=> b!922183 (= (getCurrentListMap!3056 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2649 (getCurrentListMap!3056 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!414120))))

(assert (=> b!922183 (= lt!414120 (tuple2!12929 lt!414124 lt!414125))))

(declare-fun get!13964 (ValueCell!9328 V!31123) V!31123)

(declare-fun dynLambda!1488 (Int (_ BitVec 64)) V!31123)

(assert (=> b!922183 (= lt!414125 (get!13964 (select (arr!26555 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1488 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!414126 () Unit!31105)

(declare-fun lemmaListMapRecursiveValidKeyArray!84 (array!55226 array!55228 (_ BitVec 32) (_ BitVec 32) V!31123 V!31123 (_ BitVec 32) Int) Unit!31105)

(assert (=> b!922183 (= lt!414126 (lemmaListMapRecursiveValidKeyArray!84 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!922184 () Bool)

(declare-fun res!621989 () Bool)

(assert (=> b!922184 (=> (not res!621989) (not e!517470))))

(assert (=> b!922184 (= res!621989 (and (= (size!27015 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27014 _keys!1487) (size!27015 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!922185 () Bool)

(declare-fun res!621992 () Bool)

(assert (=> b!922185 (=> (not res!621992) (not e!517470))))

(assert (=> b!922185 (= res!621992 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27014 _keys!1487))))))

(declare-fun b!922186 () Bool)

(declare-fun res!621991 () Bool)

(assert (=> b!922186 (=> (not res!621991) (not e!517472))))

(assert (=> b!922186 (= res!621991 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!31185 () Bool)

(declare-fun tp!59774 () Bool)

(declare-fun e!517476 () Bool)

(assert (=> mapNonEmpty!31185 (= mapRes!31185 (and tp!59774 e!517476))))

(declare-fun mapRest!31185 () (Array (_ BitVec 32) ValueCell!9328))

(declare-fun mapKey!31185 () (_ BitVec 32))

(declare-fun mapValue!31185 () ValueCell!9328)

(assert (=> mapNonEmpty!31185 (= (arr!26555 _values!1231) (store mapRest!31185 mapKey!31185 mapValue!31185))))

(declare-fun b!922187 () Bool)

(assert (=> b!922187 (= e!517470 e!517472)))

(declare-fun res!621993 () Bool)

(assert (=> b!922187 (=> (not res!621993) (not e!517472))))

(assert (=> b!922187 (= res!621993 (contains!4862 lt!414118 k!1099))))

(assert (=> b!922187 (= lt!414118 (getCurrentListMap!3056 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!922188 () Bool)

(assert (=> b!922188 (= e!517472 e!517469)))

(declare-fun res!621987 () Bool)

(assert (=> b!922188 (=> (not res!621987) (not e!517469))))

(assert (=> b!922188 (= res!621987 (validKeyInArray!0 lt!414124))))

(assert (=> b!922188 (= lt!414124 (select (arr!26554 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!922189 () Bool)

(assert (=> b!922189 (= e!517476 tp_is_empty!19619)))

(declare-fun b!922190 () Bool)

(declare-fun e!517474 () Bool)

(assert (=> b!922190 (= e!517471 (and e!517474 mapRes!31185))))

(declare-fun condMapEmpty!31185 () Bool)

(declare-fun mapDefault!31185 () ValueCell!9328)

