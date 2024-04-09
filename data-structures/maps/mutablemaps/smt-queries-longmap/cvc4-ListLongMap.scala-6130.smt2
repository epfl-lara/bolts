; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78920 () Bool)

(assert start!78920)

(declare-fun b_free!17105 () Bool)

(declare-fun b_next!17105 () Bool)

(assert (=> start!78920 (= b_free!17105 (not b_next!17105))))

(declare-fun tp!59757 () Bool)

(declare-fun b_and!27965 () Bool)

(assert (=> start!78920 (= tp!59757 b_and!27965)))

(declare-fun b!922039 () Bool)

(declare-fun res!621902 () Bool)

(declare-fun e!517399 () Bool)

(assert (=> b!922039 (=> (not res!621902) (not e!517399))))

(declare-datatypes ((array!55214 0))(
  ( (array!55215 (arr!26548 (Array (_ BitVec 32) (_ BitVec 64))) (size!27008 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55214)

(declare-datatypes ((List!18761 0))(
  ( (Nil!18758) (Cons!18757 (h!19903 (_ BitVec 64)) (t!26604 List!18761)) )
))
(declare-fun arrayNoDuplicates!0 (array!55214 (_ BitVec 32) List!18761) Bool)

(assert (=> b!922039 (= res!621902 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18758))))

(declare-fun b!922040 () Bool)

(declare-fun res!621903 () Bool)

(declare-fun e!517397 () Bool)

(assert (=> b!922040 (=> (not res!621903) (not e!517397))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!922040 (= res!621903 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!922041 () Bool)

(assert (=> b!922041 (= e!517399 e!517397)))

(declare-fun res!621899 () Bool)

(assert (=> b!922041 (=> (not res!621899) (not e!517397))))

(declare-datatypes ((V!31115 0))(
  ( (V!31116 (val!9857 Int)) )
))
(declare-datatypes ((tuple2!12922 0))(
  ( (tuple2!12923 (_1!6471 (_ BitVec 64)) (_2!6471 V!31115)) )
))
(declare-datatypes ((List!18762 0))(
  ( (Nil!18759) (Cons!18758 (h!19904 tuple2!12922) (t!26605 List!18762)) )
))
(declare-datatypes ((ListLongMap!11633 0))(
  ( (ListLongMap!11634 (toList!5832 List!18762)) )
))
(declare-fun lt!414042 () ListLongMap!11633)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4859 (ListLongMap!11633 (_ BitVec 64)) Bool)

(assert (=> b!922041 (= res!621899 (contains!4859 lt!414042 k!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9325 0))(
  ( (ValueCellFull!9325 (v!12375 V!31115)) (EmptyCell!9325) )
))
(declare-datatypes ((array!55216 0))(
  ( (array!55217 (arr!26549 (Array (_ BitVec 32) ValueCell!9325)) (size!27009 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55216)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31115)

(declare-fun minValue!1173 () V!31115)

(declare-fun getCurrentListMap!3053 (array!55214 array!55216 (_ BitVec 32) (_ BitVec 32) V!31115 V!31115 (_ BitVec 32) Int) ListLongMap!11633)

(assert (=> b!922041 (= lt!414042 (getCurrentListMap!3053 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapNonEmpty!31176 () Bool)

(declare-fun mapRes!31176 () Bool)

(declare-fun tp!59756 () Bool)

(declare-fun e!517401 () Bool)

(assert (=> mapNonEmpty!31176 (= mapRes!31176 (and tp!59756 e!517401))))

(declare-fun mapKey!31176 () (_ BitVec 32))

(declare-fun mapValue!31176 () ValueCell!9325)

(declare-fun mapRest!31176 () (Array (_ BitVec 32) ValueCell!9325))

(assert (=> mapNonEmpty!31176 (= (arr!26549 _values!1231) (store mapRest!31176 mapKey!31176 mapValue!31176))))

(declare-fun b!922042 () Bool)

(declare-fun res!621904 () Bool)

(assert (=> b!922042 (=> (not res!621904) (not e!517399))))

(assert (=> b!922042 (= res!621904 (and (= (size!27009 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27008 _keys!1487) (size!27009 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!922043 () Bool)

(declare-fun e!517404 () Bool)

(declare-fun tp_is_empty!19613 () Bool)

(assert (=> b!922043 (= e!517404 tp_is_empty!19613)))

(declare-fun b!922044 () Bool)

(declare-fun res!621896 () Bool)

(assert (=> b!922044 (=> (not res!621896) (not e!517397))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!922044 (= res!621896 (validKeyInArray!0 k!1099))))

(declare-fun mapIsEmpty!31176 () Bool)

(assert (=> mapIsEmpty!31176 mapRes!31176))

(declare-fun b!922045 () Bool)

(declare-fun e!517398 () Bool)

(assert (=> b!922045 (= e!517398 (not true))))

(declare-fun lt!414038 () (_ BitVec 64))

(assert (=> b!922045 (not (= lt!414038 k!1099))))

(declare-datatypes ((Unit!31099 0))(
  ( (Unit!31100) )
))
(declare-fun lt!414044 () Unit!31099)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55214 (_ BitVec 64) (_ BitVec 32) List!18761) Unit!31099)

(assert (=> b!922045 (= lt!414044 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18758))))

(declare-fun e!517400 () Bool)

(assert (=> b!922045 e!517400))

(declare-fun c!96077 () Bool)

(assert (=> b!922045 (= c!96077 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!414043 () Unit!31099)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!192 (array!55214 array!55216 (_ BitVec 32) (_ BitVec 32) V!31115 V!31115 (_ BitVec 64) (_ BitVec 32) Int) Unit!31099)

(assert (=> b!922045 (= lt!414043 (lemmaListMapContainsThenArrayContainsFrom!192 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(assert (=> b!922045 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18758)))

(declare-fun lt!414040 () Unit!31099)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55214 (_ BitVec 32) (_ BitVec 32)) Unit!31099)

(assert (=> b!922045 (= lt!414040 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!414039 () tuple2!12922)

(declare-fun +!2646 (ListLongMap!11633 tuple2!12922) ListLongMap!11633)

(assert (=> b!922045 (contains!4859 (+!2646 lt!414042 lt!414039) k!1099)))

(declare-fun lt!414045 () V!31115)

(declare-fun lt!414037 () Unit!31099)

(declare-fun addStillContains!408 (ListLongMap!11633 (_ BitVec 64) V!31115 (_ BitVec 64)) Unit!31099)

(assert (=> b!922045 (= lt!414037 (addStillContains!408 lt!414042 lt!414038 lt!414045 k!1099))))

(assert (=> b!922045 (= (getCurrentListMap!3053 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2646 (getCurrentListMap!3053 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!414039))))

(assert (=> b!922045 (= lt!414039 (tuple2!12923 lt!414038 lt!414045))))

(declare-fun get!13959 (ValueCell!9325 V!31115) V!31115)

(declare-fun dynLambda!1485 (Int (_ BitVec 64)) V!31115)

(assert (=> b!922045 (= lt!414045 (get!13959 (select (arr!26549 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1485 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!414041 () Unit!31099)

(declare-fun lemmaListMapRecursiveValidKeyArray!81 (array!55214 array!55216 (_ BitVec 32) (_ BitVec 32) V!31115 V!31115 (_ BitVec 32) Int) Unit!31099)

(assert (=> b!922045 (= lt!414041 (lemmaListMapRecursiveValidKeyArray!81 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!922046 () Bool)

(assert (=> b!922046 (= e!517397 e!517398)))

(declare-fun res!621901 () Bool)

(assert (=> b!922046 (=> (not res!621901) (not e!517398))))

(assert (=> b!922046 (= res!621901 (validKeyInArray!0 lt!414038))))

(assert (=> b!922046 (= lt!414038 (select (arr!26548 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun res!621900 () Bool)

(assert (=> start!78920 (=> (not res!621900) (not e!517399))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78920 (= res!621900 (validMask!0 mask!1881))))

(assert (=> start!78920 e!517399))

(assert (=> start!78920 true))

(assert (=> start!78920 tp_is_empty!19613))

(declare-fun e!517403 () Bool)

(declare-fun array_inv!20668 (array!55216) Bool)

(assert (=> start!78920 (and (array_inv!20668 _values!1231) e!517403)))

(assert (=> start!78920 tp!59757))

(declare-fun array_inv!20669 (array!55214) Bool)

(assert (=> start!78920 (array_inv!20669 _keys!1487)))

(declare-fun b!922047 () Bool)

(declare-fun res!621905 () Bool)

(assert (=> b!922047 (=> (not res!621905) (not e!517397))))

(declare-fun v!791 () V!31115)

(declare-fun apply!638 (ListLongMap!11633 (_ BitVec 64)) V!31115)

(assert (=> b!922047 (= res!621905 (= (apply!638 lt!414042 k!1099) v!791))))

(declare-fun b!922048 () Bool)

(declare-fun arrayContainsKey!0 (array!55214 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!922048 (= e!517400 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!922049 () Bool)

(assert (=> b!922049 (= e!517400 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!922050 () Bool)

(declare-fun res!621897 () Bool)

(assert (=> b!922050 (=> (not res!621897) (not e!517399))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55214 (_ BitVec 32)) Bool)

(assert (=> b!922050 (= res!621897 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!922051 () Bool)

(declare-fun res!621898 () Bool)

(assert (=> b!922051 (=> (not res!621898) (not e!517399))))

(assert (=> b!922051 (= res!621898 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27008 _keys!1487))))))

(declare-fun b!922052 () Bool)

(assert (=> b!922052 (= e!517401 tp_is_empty!19613)))

(declare-fun b!922053 () Bool)

(assert (=> b!922053 (= e!517403 (and e!517404 mapRes!31176))))

(declare-fun condMapEmpty!31176 () Bool)

(declare-fun mapDefault!31176 () ValueCell!9325)

