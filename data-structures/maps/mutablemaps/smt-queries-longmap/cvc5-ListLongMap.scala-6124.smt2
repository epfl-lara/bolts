; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78880 () Bool)

(assert start!78880)

(declare-fun b_free!17065 () Bool)

(declare-fun b_next!17065 () Bool)

(assert (=> start!78880 (= b_free!17065 (not b_next!17065))))

(declare-fun tp!59637 () Bool)

(declare-fun b_and!27885 () Bool)

(assert (=> start!78880 (= tp!59637 b_and!27885)))

(declare-fun b!920997 () Bool)

(declare-fun e!516886 () Bool)

(declare-fun e!516889 () Bool)

(assert (=> b!920997 (= e!516886 e!516889)))

(declare-fun res!621195 () Bool)

(assert (=> b!920997 (=> (not res!621195) (not e!516889))))

(declare-fun lt!413498 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!920997 (= res!621195 (validKeyInArray!0 lt!413498))))

(declare-datatypes ((array!55138 0))(
  ( (array!55139 (arr!26510 (Array (_ BitVec 32) (_ BitVec 64))) (size!26970 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55138)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!920997 (= lt!413498 (select (arr!26510 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!920998 () Bool)

(declare-fun res!621194 () Bool)

(declare-fun e!516885 () Bool)

(assert (=> b!920998 (=> (not res!621194) (not e!516885))))

(declare-datatypes ((List!18731 0))(
  ( (Nil!18728) (Cons!18727 (h!19873 (_ BitVec 64)) (t!26534 List!18731)) )
))
(declare-fun arrayNoDuplicates!0 (array!55138 (_ BitVec 32) List!18731) Bool)

(assert (=> b!920998 (= res!621194 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18728))))

(declare-fun b!920999 () Bool)

(declare-fun res!621201 () Bool)

(assert (=> b!920999 (=> (not res!621201) (not e!516885))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55138 (_ BitVec 32)) Bool)

(assert (=> b!920999 (= res!621201 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!921000 () Bool)

(declare-fun e!516883 () Bool)

(declare-fun tp_is_empty!19573 () Bool)

(assert (=> b!921000 (= e!516883 tp_is_empty!19573)))

(declare-fun b!921001 () Bool)

(declare-fun e!516884 () Bool)

(assert (=> b!921001 (= e!516889 (not e!516884))))

(declare-fun res!621199 () Bool)

(assert (=> b!921001 (=> res!621199 e!516884)))

(assert (=> b!921001 (= res!621199 (or (bvsge (size!26970 _keys!1487) #b01111111111111111111111111111111) (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!26970 _keys!1487))))))

(declare-fun e!516891 () Bool)

(assert (=> b!921001 e!516891))

(declare-fun c!96017 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(assert (=> b!921001 (= c!96017 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!31073 0))(
  ( (Unit!31074) )
))
(declare-fun lt!413504 () Unit!31073)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31063 0))(
  ( (V!31064 (val!9837 Int)) )
))
(declare-datatypes ((ValueCell!9305 0))(
  ( (ValueCellFull!9305 (v!12355 V!31063)) (EmptyCell!9305) )
))
(declare-datatypes ((array!55140 0))(
  ( (array!55141 (arr!26511 (Array (_ BitVec 32) ValueCell!9305)) (size!26971 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55140)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31063)

(declare-fun minValue!1173 () V!31063)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!179 (array!55138 array!55140 (_ BitVec 32) (_ BitVec 32) V!31063 V!31063 (_ BitVec 64) (_ BitVec 32) Int) Unit!31073)

(assert (=> b!921001 (= lt!413504 (lemmaListMapContainsThenArrayContainsFrom!179 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(assert (=> b!921001 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18728)))

(declare-fun lt!413500 () Unit!31073)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55138 (_ BitVec 32) (_ BitVec 32)) Unit!31073)

(assert (=> b!921001 (= lt!413500 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((tuple2!12890 0))(
  ( (tuple2!12891 (_1!6455 (_ BitVec 64)) (_2!6455 V!31063)) )
))
(declare-datatypes ((List!18732 0))(
  ( (Nil!18729) (Cons!18728 (h!19874 tuple2!12890) (t!26535 List!18732)) )
))
(declare-datatypes ((ListLongMap!11601 0))(
  ( (ListLongMap!11602 (toList!5816 List!18732)) )
))
(declare-fun lt!413499 () ListLongMap!11601)

(declare-fun lt!413501 () tuple2!12890)

(declare-fun contains!4837 (ListLongMap!11601 (_ BitVec 64)) Bool)

(declare-fun +!2633 (ListLongMap!11601 tuple2!12890) ListLongMap!11601)

(assert (=> b!921001 (contains!4837 (+!2633 lt!413499 lt!413501) k!1099)))

(declare-fun lt!413505 () V!31063)

(declare-fun lt!413502 () Unit!31073)

(declare-fun addStillContains!395 (ListLongMap!11601 (_ BitVec 64) V!31063 (_ BitVec 64)) Unit!31073)

(assert (=> b!921001 (= lt!413502 (addStillContains!395 lt!413499 lt!413498 lt!413505 k!1099))))

(declare-fun getCurrentListMap!3038 (array!55138 array!55140 (_ BitVec 32) (_ BitVec 32) V!31063 V!31063 (_ BitVec 32) Int) ListLongMap!11601)

(assert (=> b!921001 (= (getCurrentListMap!3038 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2633 (getCurrentListMap!3038 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!413501))))

(assert (=> b!921001 (= lt!413501 (tuple2!12891 lt!413498 lt!413505))))

(declare-fun get!13934 (ValueCell!9305 V!31063) V!31063)

(declare-fun dynLambda!1472 (Int (_ BitVec 64)) V!31063)

(assert (=> b!921001 (= lt!413505 (get!13934 (select (arr!26511 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1472 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!413503 () Unit!31073)

(declare-fun lemmaListMapRecursiveValidKeyArray!68 (array!55138 array!55140 (_ BitVec 32) (_ BitVec 32) V!31063 V!31063 (_ BitVec 32) Int) Unit!31073)

(assert (=> b!921001 (= lt!413503 (lemmaListMapRecursiveValidKeyArray!68 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun res!621198 () Bool)

(assert (=> start!78880 (=> (not res!621198) (not e!516885))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78880 (= res!621198 (validMask!0 mask!1881))))

(assert (=> start!78880 e!516885))

(assert (=> start!78880 true))

(assert (=> start!78880 tp_is_empty!19573))

(declare-fun e!516890 () Bool)

(declare-fun array_inv!20642 (array!55140) Bool)

(assert (=> start!78880 (and (array_inv!20642 _values!1231) e!516890)))

(assert (=> start!78880 tp!59637))

(declare-fun array_inv!20643 (array!55138) Bool)

(assert (=> start!78880 (array_inv!20643 _keys!1487)))

(declare-fun b!921002 () Bool)

(declare-fun res!621197 () Bool)

(assert (=> b!921002 (=> res!621197 e!516884)))

(declare-fun noDuplicate!1344 (List!18731) Bool)

(assert (=> b!921002 (= res!621197 (not (noDuplicate!1344 Nil!18728)))))

(declare-fun mapNonEmpty!31116 () Bool)

(declare-fun mapRes!31116 () Bool)

(declare-fun tp!59636 () Bool)

(declare-fun e!516887 () Bool)

(assert (=> mapNonEmpty!31116 (= mapRes!31116 (and tp!59636 e!516887))))

(declare-fun mapValue!31116 () ValueCell!9305)

(declare-fun mapKey!31116 () (_ BitVec 32))

(declare-fun mapRest!31116 () (Array (_ BitVec 32) ValueCell!9305))

(assert (=> mapNonEmpty!31116 (= (arr!26511 _values!1231) (store mapRest!31116 mapKey!31116 mapValue!31116))))

(declare-fun b!921003 () Bool)

(assert (=> b!921003 (= e!516884 true)))

(declare-fun lt!413497 () Bool)

(declare-fun contains!4838 (List!18731 (_ BitVec 64)) Bool)

(assert (=> b!921003 (= lt!413497 (contains!4838 Nil!18728 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!921004 () Bool)

(declare-fun res!621203 () Bool)

(assert (=> b!921004 (=> (not res!621203) (not e!516886))))

(assert (=> b!921004 (= res!621203 (validKeyInArray!0 k!1099))))

(declare-fun b!921005 () Bool)

(declare-fun res!621200 () Bool)

(assert (=> b!921005 (=> res!621200 e!516884)))

(assert (=> b!921005 (= res!621200 (contains!4838 Nil!18728 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!921006 () Bool)

(declare-fun res!621202 () Bool)

(assert (=> b!921006 (=> (not res!621202) (not e!516885))))

(assert (=> b!921006 (= res!621202 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26970 _keys!1487))))))

(declare-fun b!921007 () Bool)

(declare-fun res!621196 () Bool)

(assert (=> b!921007 (=> (not res!621196) (not e!516886))))

(declare-fun v!791 () V!31063)

(declare-fun apply!625 (ListLongMap!11601 (_ BitVec 64)) V!31063)

(assert (=> b!921007 (= res!621196 (= (apply!625 lt!413499 k!1099) v!791))))

(declare-fun b!921008 () Bool)

(assert (=> b!921008 (= e!516891 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!921009 () Bool)

(assert (=> b!921009 (= e!516885 e!516886)))

(declare-fun res!621206 () Bool)

(assert (=> b!921009 (=> (not res!621206) (not e!516886))))

(assert (=> b!921009 (= res!621206 (contains!4837 lt!413499 k!1099))))

(assert (=> b!921009 (= lt!413499 (getCurrentListMap!3038 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!921010 () Bool)

(declare-fun arrayContainsKey!0 (array!55138 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!921010 (= e!516891 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun mapIsEmpty!31116 () Bool)

(assert (=> mapIsEmpty!31116 mapRes!31116))

(declare-fun b!921011 () Bool)

(declare-fun res!621205 () Bool)

(assert (=> b!921011 (=> (not res!621205) (not e!516886))))

(assert (=> b!921011 (= res!621205 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!921012 () Bool)

(assert (=> b!921012 (= e!516887 tp_is_empty!19573)))

(declare-fun b!921013 () Bool)

(assert (=> b!921013 (= e!516890 (and e!516883 mapRes!31116))))

(declare-fun condMapEmpty!31116 () Bool)

(declare-fun mapDefault!31116 () ValueCell!9305)

