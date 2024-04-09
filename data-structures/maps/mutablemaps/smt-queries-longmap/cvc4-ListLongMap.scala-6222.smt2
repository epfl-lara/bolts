; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79530 () Bool)

(assert start!79530)

(declare-fun b_free!17657 () Bool)

(declare-fun b_next!17657 () Bool)

(assert (=> start!79530 (= b_free!17657 (not b_next!17657))))

(declare-fun tp!61419 () Bool)

(declare-fun b_and!28899 () Bool)

(assert (=> start!79530 (= tp!61419 b_and!28899)))

(declare-fun b!934605 () Bool)

(declare-fun e!524801 () Bool)

(declare-datatypes ((List!19207 0))(
  ( (Nil!19204) (Cons!19203 (h!20349 (_ BitVec 64)) (t!27416 List!19207)) )
))
(declare-fun noDuplicate!1353 (List!19207) Bool)

(assert (=> b!934605 (= e!524801 (noDuplicate!1353 Nil!19204))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun b!934606 () Bool)

(declare-fun e!524794 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((array!56288 0))(
  ( (array!56289 (arr!27083 (Array (_ BitVec 32) (_ BitVec 64))) (size!27543 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56288)

(declare-fun arrayContainsKey!0 (array!56288 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!934606 (= e!524794 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!934607 () Bool)

(declare-fun res!629569 () Bool)

(declare-fun e!524797 () Bool)

(assert (=> b!934607 (=> (not res!629569) (not e!524797))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!934607 (= res!629569 (validKeyInArray!0 k!1099))))

(declare-fun b!934608 () Bool)

(declare-fun e!524793 () Bool)

(assert (=> b!934608 (= e!524793 e!524797)))

(declare-fun res!629565 () Bool)

(assert (=> b!934608 (=> (not res!629565) (not e!524797))))

(declare-datatypes ((V!31851 0))(
  ( (V!31852 (val!10133 Int)) )
))
(declare-datatypes ((tuple2!13400 0))(
  ( (tuple2!13401 (_1!6710 (_ BitVec 64)) (_2!6710 V!31851)) )
))
(declare-datatypes ((List!19208 0))(
  ( (Nil!19205) (Cons!19204 (h!20350 tuple2!13400) (t!27417 List!19208)) )
))
(declare-datatypes ((ListLongMap!12111 0))(
  ( (ListLongMap!12112 (toList!6071 List!19208)) )
))
(declare-fun lt!421085 () ListLongMap!12111)

(declare-fun contains!5072 (ListLongMap!12111 (_ BitVec 64)) Bool)

(assert (=> b!934608 (= res!629565 (contains!5072 lt!421085 k!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9601 0))(
  ( (ValueCellFull!9601 (v!12653 V!31851)) (EmptyCell!9601) )
))
(declare-datatypes ((array!56290 0))(
  ( (array!56291 (arr!27084 (Array (_ BitVec 32) ValueCell!9601)) (size!27544 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56290)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31851)

(declare-fun minValue!1173 () V!31851)

(declare-fun getCurrentListMap!3263 (array!56288 array!56290 (_ BitVec 32) (_ BitVec 32) V!31851 V!31851 (_ BitVec 32) Int) ListLongMap!12111)

(assert (=> b!934608 (= lt!421085 (getCurrentListMap!3263 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun res!629568 () Bool)

(assert (=> start!79530 (=> (not res!629568) (not e!524793))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79530 (= res!629568 (validMask!0 mask!1881))))

(assert (=> start!79530 e!524793))

(assert (=> start!79530 true))

(declare-fun tp_is_empty!20165 () Bool)

(assert (=> start!79530 tp_is_empty!20165))

(declare-fun e!524795 () Bool)

(declare-fun array_inv!21032 (array!56290) Bool)

(assert (=> start!79530 (and (array_inv!21032 _values!1231) e!524795)))

(assert (=> start!79530 tp!61419))

(declare-fun array_inv!21033 (array!56288) Bool)

(assert (=> start!79530 (array_inv!21033 _keys!1487)))

(declare-fun b!934609 () Bool)

(declare-fun e!524796 () Bool)

(assert (=> b!934609 (= e!524796 (not e!524801))))

(declare-fun res!629564 () Bool)

(assert (=> b!934609 (=> res!629564 e!524801)))

(assert (=> b!934609 (= res!629564 (or (bvsge (size!27543 _keys!1487) #b01111111111111111111111111111111) (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!27543 _keys!1487))))))

(assert (=> b!934609 e!524794))

(declare-fun c!97094 () Bool)

(assert (=> b!934609 (= c!97094 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!31533 0))(
  ( (Unit!31534) )
))
(declare-fun lt!421083 () Unit!31533)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!283 (array!56288 array!56290 (_ BitVec 32) (_ BitVec 32) V!31851 V!31851 (_ BitVec 64) (_ BitVec 32) Int) Unit!31533)

(assert (=> b!934609 (= lt!421083 (lemmaListMapContainsThenArrayContainsFrom!283 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!56288 (_ BitVec 32) List!19207) Bool)

(assert (=> b!934609 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19204)))

(declare-fun lt!421087 () Unit!31533)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56288 (_ BitVec 32) (_ BitVec 32)) Unit!31533)

(assert (=> b!934609 (= lt!421087 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!421088 () tuple2!13400)

(declare-fun +!2770 (ListLongMap!12111 tuple2!13400) ListLongMap!12111)

(assert (=> b!934609 (contains!5072 (+!2770 lt!421085 lt!421088) k!1099)))

(declare-fun lt!421086 () V!31851)

(declare-fun lt!421082 () (_ BitVec 64))

(declare-fun lt!421084 () Unit!31533)

(declare-fun addStillContains!526 (ListLongMap!12111 (_ BitVec 64) V!31851 (_ BitVec 64)) Unit!31533)

(assert (=> b!934609 (= lt!421084 (addStillContains!526 lt!421085 lt!421082 lt!421086 k!1099))))

(assert (=> b!934609 (= (getCurrentListMap!3263 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2770 (getCurrentListMap!3263 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!421088))))

(assert (=> b!934609 (= lt!421088 (tuple2!13401 lt!421082 lt!421086))))

(declare-fun get!14273 (ValueCell!9601 V!31851) V!31851)

(declare-fun dynLambda!1609 (Int (_ BitVec 64)) V!31851)

(assert (=> b!934609 (= lt!421086 (get!14273 (select (arr!27084 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1609 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!421081 () Unit!31533)

(declare-fun lemmaListMapRecursiveValidKeyArray!205 (array!56288 array!56290 (_ BitVec 32) (_ BitVec 32) V!31851 V!31851 (_ BitVec 32) Int) Unit!31533)

(assert (=> b!934609 (= lt!421081 (lemmaListMapRecursiveValidKeyArray!205 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun mapIsEmpty!32010 () Bool)

(declare-fun mapRes!32010 () Bool)

(assert (=> mapIsEmpty!32010 mapRes!32010))

(declare-fun b!934610 () Bool)

(declare-fun res!629561 () Bool)

(assert (=> b!934610 (=> (not res!629561) (not e!524797))))

(assert (=> b!934610 (= res!629561 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!934611 () Bool)

(assert (=> b!934611 (= e!524797 e!524796)))

(declare-fun res!629567 () Bool)

(assert (=> b!934611 (=> (not res!629567) (not e!524796))))

(assert (=> b!934611 (= res!629567 (validKeyInArray!0 lt!421082))))

(assert (=> b!934611 (= lt!421082 (select (arr!27083 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun mapNonEmpty!32010 () Bool)

(declare-fun tp!61418 () Bool)

(declare-fun e!524799 () Bool)

(assert (=> mapNonEmpty!32010 (= mapRes!32010 (and tp!61418 e!524799))))

(declare-fun mapValue!32010 () ValueCell!9601)

(declare-fun mapKey!32010 () (_ BitVec 32))

(declare-fun mapRest!32010 () (Array (_ BitVec 32) ValueCell!9601))

(assert (=> mapNonEmpty!32010 (= (arr!27084 _values!1231) (store mapRest!32010 mapKey!32010 mapValue!32010))))

(declare-fun b!934612 () Bool)

(declare-fun res!629563 () Bool)

(assert (=> b!934612 (=> (not res!629563) (not e!524793))))

(assert (=> b!934612 (= res!629563 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27543 _keys!1487))))))

(declare-fun b!934613 () Bool)

(declare-fun e!524798 () Bool)

(assert (=> b!934613 (= e!524798 tp_is_empty!20165)))

(declare-fun b!934614 () Bool)

(assert (=> b!934614 (= e!524794 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!934615 () Bool)

(assert (=> b!934615 (= e!524795 (and e!524798 mapRes!32010))))

(declare-fun condMapEmpty!32010 () Bool)

(declare-fun mapDefault!32010 () ValueCell!9601)

