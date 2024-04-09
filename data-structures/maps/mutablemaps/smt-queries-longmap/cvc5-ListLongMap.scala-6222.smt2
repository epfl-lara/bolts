; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79526 () Bool)

(assert start!79526)

(declare-fun b_free!17653 () Bool)

(declare-fun b_next!17653 () Bool)

(assert (=> start!79526 (= b_free!17653 (not b_next!17653))))

(declare-fun tp!61406 () Bool)

(declare-fun b_and!28891 () Bool)

(assert (=> start!79526 (= tp!61406 b_and!28891)))

(declare-fun b!934505 () Bool)

(declare-fun e!524740 () Bool)

(declare-datatypes ((List!19203 0))(
  ( (Nil!19200) (Cons!19199 (h!20345 (_ BitVec 64)) (t!27408 List!19203)) )
))
(declare-fun noDuplicate!1351 (List!19203) Bool)

(assert (=> b!934505 (= e!524740 (noDuplicate!1351 Nil!19200))))

(declare-fun b!934506 () Bool)

(declare-fun res!629501 () Bool)

(declare-fun e!524747 () Bool)

(assert (=> b!934506 (=> (not res!629501) (not e!524747))))

(declare-datatypes ((array!56280 0))(
  ( (array!56281 (arr!27079 (Array (_ BitVec 32) (_ BitVec 64))) (size!27539 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56280)

(declare-fun arrayNoDuplicates!0 (array!56280 (_ BitVec 32) List!19203) Bool)

(assert (=> b!934506 (= res!629501 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19200))))

(declare-fun mapIsEmpty!32004 () Bool)

(declare-fun mapRes!32004 () Bool)

(assert (=> mapIsEmpty!32004 mapRes!32004))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun e!524745 () Bool)

(declare-fun b!934507 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!56280 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!934507 (= e!524745 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun res!629500 () Bool)

(assert (=> start!79526 (=> (not res!629500) (not e!524747))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79526 (= res!629500 (validMask!0 mask!1881))))

(assert (=> start!79526 e!524747))

(assert (=> start!79526 true))

(declare-fun tp_is_empty!20161 () Bool)

(assert (=> start!79526 tp_is_empty!20161))

(declare-datatypes ((V!31847 0))(
  ( (V!31848 (val!10131 Int)) )
))
(declare-datatypes ((ValueCell!9599 0))(
  ( (ValueCellFull!9599 (v!12651 V!31847)) (EmptyCell!9599) )
))
(declare-datatypes ((array!56282 0))(
  ( (array!56283 (arr!27080 (Array (_ BitVec 32) ValueCell!9599)) (size!27540 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56282)

(declare-fun e!524741 () Bool)

(declare-fun array_inv!21028 (array!56282) Bool)

(assert (=> start!79526 (and (array_inv!21028 _values!1231) e!524741)))

(assert (=> start!79526 tp!61406))

(declare-fun array_inv!21029 (array!56280) Bool)

(assert (=> start!79526 (array_inv!21029 _keys!1487)))

(declare-fun b!934508 () Bool)

(declare-fun res!629497 () Bool)

(declare-fun e!524744 () Bool)

(assert (=> b!934508 (=> (not res!629497) (not e!524744))))

(declare-datatypes ((tuple2!13396 0))(
  ( (tuple2!13397 (_1!6708 (_ BitVec 64)) (_2!6708 V!31847)) )
))
(declare-datatypes ((List!19204 0))(
  ( (Nil!19201) (Cons!19200 (h!20346 tuple2!13396) (t!27409 List!19204)) )
))
(declare-datatypes ((ListLongMap!12107 0))(
  ( (ListLongMap!12108 (toList!6069 List!19204)) )
))
(declare-fun lt!421033 () ListLongMap!12107)

(declare-fun v!791 () V!31847)

(declare-fun apply!849 (ListLongMap!12107 (_ BitVec 64)) V!31847)

(assert (=> b!934508 (= res!629497 (= (apply!849 lt!421033 k!1099) v!791))))

(declare-fun b!934509 () Bool)

(declare-fun e!524739 () Bool)

(assert (=> b!934509 (= e!524744 e!524739)))

(declare-fun res!629499 () Bool)

(assert (=> b!934509 (=> (not res!629499) (not e!524739))))

(declare-fun lt!421035 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!934509 (= res!629499 (validKeyInArray!0 lt!421035))))

(assert (=> b!934509 (= lt!421035 (select (arr!27079 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!934510 () Bool)

(assert (=> b!934510 (= e!524747 e!524744)))

(declare-fun res!629502 () Bool)

(assert (=> b!934510 (=> (not res!629502) (not e!524744))))

(declare-fun contains!5070 (ListLongMap!12107 (_ BitVec 64)) Bool)

(assert (=> b!934510 (= res!629502 (contains!5070 lt!421033 k!1099))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31847)

(declare-fun minValue!1173 () V!31847)

(declare-fun getCurrentListMap!3261 (array!56280 array!56282 (_ BitVec 32) (_ BitVec 32) V!31847 V!31847 (_ BitVec 32) Int) ListLongMap!12107)

(assert (=> b!934510 (= lt!421033 (getCurrentListMap!3261 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!934511 () Bool)

(declare-fun res!629503 () Bool)

(assert (=> b!934511 (=> (not res!629503) (not e!524744))))

(assert (=> b!934511 (= res!629503 (validKeyInArray!0 k!1099))))

(declare-fun b!934512 () Bool)

(declare-fun e!524743 () Bool)

(assert (=> b!934512 (= e!524743 tp_is_empty!20161)))

(declare-fun b!934513 () Bool)

(assert (=> b!934513 (= e!524739 (not e!524740))))

(declare-fun res!629498 () Bool)

(assert (=> b!934513 (=> res!629498 e!524740)))

(assert (=> b!934513 (= res!629498 (or (bvsge (size!27539 _keys!1487) #b01111111111111111111111111111111) (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!27539 _keys!1487))))))

(assert (=> b!934513 e!524745))

(declare-fun c!97088 () Bool)

(assert (=> b!934513 (= c!97088 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!31529 0))(
  ( (Unit!31530) )
))
(declare-fun lt!421036 () Unit!31529)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!281 (array!56280 array!56282 (_ BitVec 32) (_ BitVec 32) V!31847 V!31847 (_ BitVec 64) (_ BitVec 32) Int) Unit!31529)

(assert (=> b!934513 (= lt!421036 (lemmaListMapContainsThenArrayContainsFrom!281 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(assert (=> b!934513 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19200)))

(declare-fun lt!421034 () Unit!31529)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56280 (_ BitVec 32) (_ BitVec 32)) Unit!31529)

(assert (=> b!934513 (= lt!421034 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!421039 () tuple2!13396)

(declare-fun +!2768 (ListLongMap!12107 tuple2!13396) ListLongMap!12107)

(assert (=> b!934513 (contains!5070 (+!2768 lt!421033 lt!421039) k!1099)))

(declare-fun lt!421040 () Unit!31529)

(declare-fun lt!421037 () V!31847)

(declare-fun addStillContains!524 (ListLongMap!12107 (_ BitVec 64) V!31847 (_ BitVec 64)) Unit!31529)

(assert (=> b!934513 (= lt!421040 (addStillContains!524 lt!421033 lt!421035 lt!421037 k!1099))))

(assert (=> b!934513 (= (getCurrentListMap!3261 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2768 (getCurrentListMap!3261 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!421039))))

(assert (=> b!934513 (= lt!421039 (tuple2!13397 lt!421035 lt!421037))))

(declare-fun get!14271 (ValueCell!9599 V!31847) V!31847)

(declare-fun dynLambda!1607 (Int (_ BitVec 64)) V!31847)

(assert (=> b!934513 (= lt!421037 (get!14271 (select (arr!27080 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1607 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!421038 () Unit!31529)

(declare-fun lemmaListMapRecursiveValidKeyArray!203 (array!56280 array!56282 (_ BitVec 32) (_ BitVec 32) V!31847 V!31847 (_ BitVec 32) Int) Unit!31529)

(assert (=> b!934513 (= lt!421038 (lemmaListMapRecursiveValidKeyArray!203 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!934514 () Bool)

(declare-fun res!629495 () Bool)

(assert (=> b!934514 (=> (not res!629495) (not e!524747))))

(assert (=> b!934514 (= res!629495 (and (= (size!27540 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27539 _keys!1487) (size!27540 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!934515 () Bool)

(declare-fun res!629494 () Bool)

(assert (=> b!934515 (=> (not res!629494) (not e!524747))))

(assert (=> b!934515 (= res!629494 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27539 _keys!1487))))))

(declare-fun mapNonEmpty!32004 () Bool)

(declare-fun tp!61407 () Bool)

(declare-fun e!524746 () Bool)

(assert (=> mapNonEmpty!32004 (= mapRes!32004 (and tp!61407 e!524746))))

(declare-fun mapValue!32004 () ValueCell!9599)

(declare-fun mapKey!32004 () (_ BitVec 32))

(declare-fun mapRest!32004 () (Array (_ BitVec 32) ValueCell!9599))

(assert (=> mapNonEmpty!32004 (= (arr!27080 _values!1231) (store mapRest!32004 mapKey!32004 mapValue!32004))))

(declare-fun b!934516 () Bool)

(assert (=> b!934516 (= e!524746 tp_is_empty!20161)))

(declare-fun b!934517 () Bool)

(assert (=> b!934517 (= e!524741 (and e!524743 mapRes!32004))))

(declare-fun condMapEmpty!32004 () Bool)

(declare-fun mapDefault!32004 () ValueCell!9599)

