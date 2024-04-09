; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79902 () Bool)

(assert start!79902)

(declare-fun b_free!17771 () Bool)

(declare-fun b_next!17771 () Bool)

(assert (=> start!79902 (= b_free!17771 (not b_next!17771))))

(declare-fun tp!61778 () Bool)

(declare-fun b_and!29199 () Bool)

(assert (=> start!79902 (= tp!61778 b_and!29199)))

(declare-fun mapIsEmpty!32198 () Bool)

(declare-fun mapRes!32198 () Bool)

(assert (=> mapIsEmpty!32198 mapRes!32198))

(declare-fun b!939242 () Bool)

(declare-datatypes ((V!32003 0))(
  ( (V!32004 (val!10190 Int)) )
))
(declare-datatypes ((tuple2!13498 0))(
  ( (tuple2!13499 (_1!6759 (_ BitVec 64)) (_2!6759 V!32003)) )
))
(declare-datatypes ((List!19305 0))(
  ( (Nil!19302) (Cons!19301 (h!20447 tuple2!13498) (t!27628 List!19305)) )
))
(declare-datatypes ((ListLongMap!12209 0))(
  ( (ListLongMap!12210 (toList!6120 List!19305)) )
))
(declare-fun lt!424462 () ListLongMap!12209)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun lt!424468 () V!32003)

(declare-fun apply!898 (ListLongMap!12209 (_ BitVec 64)) V!32003)

(assert (=> b!939242 (= (apply!898 lt!424462 k!1099) lt!424468)))

(declare-fun lt!424469 () (_ BitVec 64))

(declare-datatypes ((Unit!31749 0))(
  ( (Unit!31750) )
))
(declare-fun lt!424458 () Unit!31749)

(declare-fun lt!424467 () ListLongMap!12209)

(declare-fun lt!424461 () V!32003)

(declare-fun addApplyDifferent!444 (ListLongMap!12209 (_ BitVec 64) V!32003 (_ BitVec 64)) Unit!31749)

(assert (=> b!939242 (= lt!424458 (addApplyDifferent!444 lt!424467 lt!424469 lt!424461 k!1099))))

(assert (=> b!939242 (not (= lt!424469 k!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun lt!424459 () Unit!31749)

(declare-datatypes ((array!56522 0))(
  ( (array!56523 (arr!27195 (Array (_ BitVec 32) (_ BitVec 64))) (size!27655 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56522)

(declare-datatypes ((List!19306 0))(
  ( (Nil!19303) (Cons!19302 (h!20448 (_ BitVec 64)) (t!27629 List!19306)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!56522 (_ BitVec 64) (_ BitVec 32) List!19306) Unit!31749)

(assert (=> b!939242 (= lt!424459 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19303))))

(declare-fun e!527590 () Bool)

(assert (=> b!939242 e!527590))

(declare-fun c!97920 () Bool)

(assert (=> b!939242 (= c!97920 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun lt!424473 () Unit!31749)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9658 0))(
  ( (ValueCellFull!9658 (v!12721 V!32003)) (EmptyCell!9658) )
))
(declare-datatypes ((array!56524 0))(
  ( (array!56525 (arr!27196 (Array (_ BitVec 32) ValueCell!9658)) (size!27656 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56524)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!32003)

(declare-fun minValue!1173 () V!32003)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!327 (array!56522 array!56524 (_ BitVec 32) (_ BitVec 32) V!32003 V!32003 (_ BitVec 64) (_ BitVec 32) Int) Unit!31749)

(assert (=> b!939242 (= lt!424473 (lemmaListMapContainsThenArrayContainsFrom!327 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!56522 (_ BitVec 32) List!19306) Bool)

(assert (=> b!939242 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19303)))

(declare-fun lt!424457 () Unit!31749)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56522 (_ BitVec 32) (_ BitVec 32)) Unit!31749)

(assert (=> b!939242 (= lt!424457 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun contains!5133 (ListLongMap!12209 (_ BitVec 64)) Bool)

(assert (=> b!939242 (contains!5133 lt!424462 k!1099)))

(declare-fun lt!424464 () tuple2!13498)

(declare-fun +!2814 (ListLongMap!12209 tuple2!13498) ListLongMap!12209)

(assert (=> b!939242 (= lt!424462 (+!2814 lt!424467 lt!424464))))

(declare-fun lt!424472 () Unit!31749)

(declare-fun addStillContains!570 (ListLongMap!12209 (_ BitVec 64) V!32003 (_ BitVec 64)) Unit!31749)

(assert (=> b!939242 (= lt!424472 (addStillContains!570 lt!424467 lt!424469 lt!424461 k!1099))))

(declare-fun getCurrentListMap!3308 (array!56522 array!56524 (_ BitVec 32) (_ BitVec 32) V!32003 V!32003 (_ BitVec 32) Int) ListLongMap!12209)

(assert (=> b!939242 (= (getCurrentListMap!3308 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2814 (getCurrentListMap!3308 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!424464))))

(assert (=> b!939242 (= lt!424464 (tuple2!13499 lt!424469 lt!424461))))

(declare-fun get!14370 (ValueCell!9658 V!32003) V!32003)

(declare-fun dynLambda!1653 (Int (_ BitVec 64)) V!32003)

(assert (=> b!939242 (= lt!424461 (get!14370 (select (arr!27196 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1653 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!424465 () Unit!31749)

(declare-fun lemmaListMapRecursiveValidKeyArray!249 (array!56522 array!56524 (_ BitVec 32) (_ BitVec 32) V!32003 V!32003 (_ BitVec 32) Int) Unit!31749)

(assert (=> b!939242 (= lt!424465 (lemmaListMapRecursiveValidKeyArray!249 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!527586 () Unit!31749)

(assert (=> b!939242 (= e!527586 lt!424458)))

(declare-fun b!939243 () Bool)

(declare-fun e!527593 () Bool)

(declare-fun e!527587 () Bool)

(assert (=> b!939243 (= e!527593 e!527587)))

(declare-fun res!631871 () Bool)

(assert (=> b!939243 (=> (not res!631871) (not e!527587))))

(declare-fun v!791 () V!32003)

(assert (=> b!939243 (= res!631871 (and (= lt!424468 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!939243 (= lt!424468 (apply!898 lt!424467 k!1099))))

(declare-fun b!939244 () Bool)

(declare-fun e!527589 () Bool)

(assert (=> b!939244 (= e!527589 (not true))))

(declare-fun lt!424466 () V!32003)

(declare-fun lt!424470 () ListLongMap!12209)

(assert (=> b!939244 (= lt!424466 (apply!898 lt!424470 k!1099))))

(declare-fun e!527584 () Bool)

(assert (=> b!939244 e!527584))

(declare-fun res!631870 () Bool)

(assert (=> b!939244 (=> (not res!631870) (not e!527584))))

(assert (=> b!939244 (= res!631870 (contains!5133 lt!424470 k!1099))))

(assert (=> b!939244 (= lt!424470 (getCurrentListMap!3308 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun lt!424471 () Unit!31749)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!112 (array!56522 array!56524 (_ BitVec 32) (_ BitVec 32) V!32003 V!32003 (_ BitVec 64) V!32003 (_ BitVec 32) Int) Unit!31749)

(assert (=> b!939244 (= lt!424471 (lemmaListMapApplyFromThenApplyFromZero!112 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!939245 () Bool)

(declare-fun res!631872 () Bool)

(declare-fun e!527585 () Bool)

(assert (=> b!939245 (=> (not res!631872) (not e!527585))))

(assert (=> b!939245 (= res!631872 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19303))))

(declare-fun b!939246 () Bool)

(assert (=> b!939246 (= e!527584 (= (apply!898 lt!424470 k!1099) v!791))))

(declare-fun b!939247 () Bool)

(declare-fun res!631877 () Bool)

(assert (=> b!939247 (=> (not res!631877) (not e!527585))))

(assert (=> b!939247 (= res!631877 (and (= (size!27656 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27655 _keys!1487) (size!27656 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!939248 () Bool)

(declare-fun e!527588 () Bool)

(declare-fun tp_is_empty!20279 () Bool)

(assert (=> b!939248 (= e!527588 tp_is_empty!20279)))

(declare-fun b!939249 () Bool)

(declare-fun e!527594 () Bool)

(assert (=> b!939249 (= e!527587 e!527594)))

(declare-fun res!631876 () Bool)

(assert (=> b!939249 (=> (not res!631876) (not e!527594))))

(assert (=> b!939249 (= res!631876 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27655 _keys!1487)))))

(declare-fun lt!424460 () Unit!31749)

(declare-fun e!527583 () Unit!31749)

(assert (=> b!939249 (= lt!424460 e!527583)))

(declare-fun c!97918 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!939249 (= c!97918 (validKeyInArray!0 k!1099))))

(declare-fun b!939250 () Bool)

(assert (=> b!939250 (= e!527583 e!527586)))

(assert (=> b!939250 (= lt!424469 (select (arr!27195 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!97919 () Bool)

(assert (=> b!939250 (= c!97919 (validKeyInArray!0 lt!424469))))

(declare-fun b!939251 () Bool)

(declare-fun res!631873 () Bool)

(assert (=> b!939251 (=> (not res!631873) (not e!527585))))

(assert (=> b!939251 (= res!631873 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27655 _keys!1487))))))

(declare-fun b!939252 () Bool)

(declare-fun res!631868 () Bool)

(assert (=> b!939252 (=> (not res!631868) (not e!527589))))

(declare-fun lt!424463 () ListLongMap!12209)

(assert (=> b!939252 (= res!631868 (= (apply!898 lt!424463 k!1099) v!791))))

(declare-fun b!939253 () Bool)

(declare-fun arrayContainsKey!0 (array!56522 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!939253 (= e!527590 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!939254 () Bool)

(declare-fun Unit!31751 () Unit!31749)

(assert (=> b!939254 (= e!527586 Unit!31751)))

(declare-fun res!631875 () Bool)

(assert (=> start!79902 (=> (not res!631875) (not e!527585))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79902 (= res!631875 (validMask!0 mask!1881))))

(assert (=> start!79902 e!527585))

(assert (=> start!79902 true))

(assert (=> start!79902 tp_is_empty!20279))

(declare-fun e!527592 () Bool)

(declare-fun array_inv!21106 (array!56524) Bool)

(assert (=> start!79902 (and (array_inv!21106 _values!1231) e!527592)))

(assert (=> start!79902 tp!61778))

(declare-fun array_inv!21107 (array!56522) Bool)

(assert (=> start!79902 (array_inv!21107 _keys!1487)))

(declare-fun mapNonEmpty!32198 () Bool)

(declare-fun tp!61777 () Bool)

(assert (=> mapNonEmpty!32198 (= mapRes!32198 (and tp!61777 e!527588))))

(declare-fun mapValue!32198 () ValueCell!9658)

(declare-fun mapKey!32198 () (_ BitVec 32))

(declare-fun mapRest!32198 () (Array (_ BitVec 32) ValueCell!9658))

(assert (=> mapNonEmpty!32198 (= (arr!27196 _values!1231) (store mapRest!32198 mapKey!32198 mapValue!32198))))

(declare-fun b!939255 () Bool)

(declare-fun e!527591 () Bool)

(assert (=> b!939255 (= e!527591 tp_is_empty!20279)))

(declare-fun b!939256 () Bool)

(assert (=> b!939256 (= e!527594 e!527589)))

(declare-fun res!631869 () Bool)

(assert (=> b!939256 (=> (not res!631869) (not e!527589))))

(assert (=> b!939256 (= res!631869 (contains!5133 lt!424463 k!1099))))

(assert (=> b!939256 (= lt!424463 (getCurrentListMap!3308 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!939257 () Bool)

(declare-fun Unit!31752 () Unit!31749)

(assert (=> b!939257 (= e!527583 Unit!31752)))

(declare-fun b!939258 () Bool)

(assert (=> b!939258 (= e!527590 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!939259 () Bool)

(declare-fun res!631867 () Bool)

(assert (=> b!939259 (=> (not res!631867) (not e!527585))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56522 (_ BitVec 32)) Bool)

(assert (=> b!939259 (= res!631867 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!939260 () Bool)

(assert (=> b!939260 (= e!527585 e!527593)))

(declare-fun res!631874 () Bool)

(assert (=> b!939260 (=> (not res!631874) (not e!527593))))

(assert (=> b!939260 (= res!631874 (contains!5133 lt!424467 k!1099))))

(assert (=> b!939260 (= lt!424467 (getCurrentListMap!3308 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!939261 () Bool)

(assert (=> b!939261 (= e!527592 (and e!527591 mapRes!32198))))

(declare-fun condMapEmpty!32198 () Bool)

(declare-fun mapDefault!32198 () ValueCell!9658)

