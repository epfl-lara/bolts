; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79446 () Bool)

(assert start!79446)

(declare-fun b_free!17605 () Bool)

(declare-fun b_next!17605 () Bool)

(assert (=> start!79446 (= b_free!17605 (not b_next!17605))))

(declare-fun tp!61259 () Bool)

(declare-fun b_and!28787 () Bool)

(assert (=> start!79446 (= tp!61259 b_and!28787)))

(declare-fun b!933238 () Bool)

(declare-fun res!628696 () Bool)

(declare-fun e!524069 () Bool)

(assert (=> b!933238 (=> (not res!628696) (not e!524069))))

(declare-datatypes ((array!56186 0))(
  ( (array!56187 (arr!27033 (Array (_ BitVec 32) (_ BitVec 64))) (size!27493 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56186)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56186 (_ BitVec 32)) Bool)

(assert (=> b!933238 (= res!628696 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!933239 () Bool)

(declare-fun e!524067 () Bool)

(assert (=> b!933239 (= e!524067 (not true))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((List!19162 0))(
  ( (Nil!19159) (Cons!19158 (h!20304 (_ BitVec 64)) (t!27319 List!19162)) )
))
(declare-fun arrayNoDuplicates!0 (array!56186 (_ BitVec 32) List!19162) Bool)

(assert (=> b!933239 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19159)))

(declare-datatypes ((Unit!31486 0))(
  ( (Unit!31487) )
))
(declare-fun lt!420320 () Unit!31486)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56186 (_ BitVec 32) (_ BitVec 32)) Unit!31486)

(assert (=> b!933239 (= lt!420320 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((V!31783 0))(
  ( (V!31784 (val!10107 Int)) )
))
(declare-datatypes ((tuple2!13354 0))(
  ( (tuple2!13355 (_1!6687 (_ BitVec 64)) (_2!6687 V!31783)) )
))
(declare-datatypes ((List!19163 0))(
  ( (Nil!19160) (Cons!19159 (h!20305 tuple2!13354) (t!27320 List!19163)) )
))
(declare-datatypes ((ListLongMap!12065 0))(
  ( (ListLongMap!12066 (toList!6048 List!19163)) )
))
(declare-fun lt!420321 () ListLongMap!12065)

(declare-fun lt!420323 () tuple2!13354)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!5047 (ListLongMap!12065 (_ BitVec 64)) Bool)

(declare-fun +!2749 (ListLongMap!12065 tuple2!13354) ListLongMap!12065)

(assert (=> b!933239 (contains!5047 (+!2749 lt!420321 lt!420323) k!1099)))

(declare-fun lt!420324 () Unit!31486)

(declare-fun lt!420322 () (_ BitVec 64))

(declare-fun lt!420325 () V!31783)

(declare-fun addStillContains!505 (ListLongMap!12065 (_ BitVec 64) V!31783 (_ BitVec 64)) Unit!31486)

(assert (=> b!933239 (= lt!420324 (addStillContains!505 lt!420321 lt!420322 lt!420325 k!1099))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9575 0))(
  ( (ValueCellFull!9575 (v!12626 V!31783)) (EmptyCell!9575) )
))
(declare-datatypes ((array!56188 0))(
  ( (array!56189 (arr!27034 (Array (_ BitVec 32) ValueCell!9575)) (size!27494 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56188)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31783)

(declare-fun minValue!1173 () V!31783)

(declare-fun getCurrentListMap!3240 (array!56186 array!56188 (_ BitVec 32) (_ BitVec 32) V!31783 V!31783 (_ BitVec 32) Int) ListLongMap!12065)

(assert (=> b!933239 (= (getCurrentListMap!3240 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2749 (getCurrentListMap!3240 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!420323))))

(assert (=> b!933239 (= lt!420323 (tuple2!13355 lt!420322 lt!420325))))

(declare-fun get!14233 (ValueCell!9575 V!31783) V!31783)

(declare-fun dynLambda!1588 (Int (_ BitVec 64)) V!31783)

(assert (=> b!933239 (= lt!420325 (get!14233 (select (arr!27034 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1588 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!420319 () Unit!31486)

(declare-fun lemmaListMapRecursiveValidKeyArray!184 (array!56186 array!56188 (_ BitVec 32) (_ BitVec 32) V!31783 V!31783 (_ BitVec 32) Int) Unit!31486)

(assert (=> b!933239 (= lt!420319 (lemmaListMapRecursiveValidKeyArray!184 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun mapNonEmpty!31929 () Bool)

(declare-fun mapRes!31929 () Bool)

(declare-fun tp!61260 () Bool)

(declare-fun e!524064 () Bool)

(assert (=> mapNonEmpty!31929 (= mapRes!31929 (and tp!61260 e!524064))))

(declare-fun mapRest!31929 () (Array (_ BitVec 32) ValueCell!9575))

(declare-fun mapKey!31929 () (_ BitVec 32))

(declare-fun mapValue!31929 () ValueCell!9575)

(assert (=> mapNonEmpty!31929 (= (arr!27034 _values!1231) (store mapRest!31929 mapKey!31929 mapValue!31929))))

(declare-fun b!933240 () Bool)

(declare-fun res!628697 () Bool)

(declare-fun e!524066 () Bool)

(assert (=> b!933240 (=> (not res!628697) (not e!524066))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!933240 (= res!628697 (validKeyInArray!0 k!1099))))

(declare-fun b!933241 () Bool)

(assert (=> b!933241 (= e!524066 e!524067)))

(declare-fun res!628689 () Bool)

(assert (=> b!933241 (=> (not res!628689) (not e!524067))))

(assert (=> b!933241 (= res!628689 (validKeyInArray!0 lt!420322))))

(assert (=> b!933241 (= lt!420322 (select (arr!27033 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!933242 () Bool)

(declare-fun res!628690 () Bool)

(assert (=> b!933242 (=> (not res!628690) (not e!524069))))

(assert (=> b!933242 (= res!628690 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19159))))

(declare-fun mapIsEmpty!31929 () Bool)

(assert (=> mapIsEmpty!31929 mapRes!31929))

(declare-fun b!933243 () Bool)

(declare-fun res!628695 () Bool)

(assert (=> b!933243 (=> (not res!628695) (not e!524066))))

(declare-fun v!791 () V!31783)

(declare-fun apply!831 (ListLongMap!12065 (_ BitVec 64)) V!31783)

(assert (=> b!933243 (= res!628695 (= (apply!831 lt!420321 k!1099) v!791))))

(declare-fun b!933244 () Bool)

(assert (=> b!933244 (= e!524069 e!524066)))

(declare-fun res!628692 () Bool)

(assert (=> b!933244 (=> (not res!628692) (not e!524066))))

(assert (=> b!933244 (= res!628692 (contains!5047 lt!420321 k!1099))))

(assert (=> b!933244 (= lt!420321 (getCurrentListMap!3240 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!933245 () Bool)

(declare-fun res!628688 () Bool)

(assert (=> b!933245 (=> (not res!628688) (not e!524066))))

(assert (=> b!933245 (= res!628688 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!933246 () Bool)

(declare-fun e!524068 () Bool)

(declare-fun e!524063 () Bool)

(assert (=> b!933246 (= e!524068 (and e!524063 mapRes!31929))))

(declare-fun condMapEmpty!31929 () Bool)

(declare-fun mapDefault!31929 () ValueCell!9575)

