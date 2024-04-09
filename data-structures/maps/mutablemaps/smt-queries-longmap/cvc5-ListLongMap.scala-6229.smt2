; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79674 () Bool)

(assert start!79674)

(declare-fun b_free!17695 () Bool)

(declare-fun b_next!17695 () Bool)

(assert (=> start!79674 (= b_free!17695 (not b_next!17695))))

(declare-fun tp!61541 () Bool)

(declare-fun b_and!28999 () Bool)

(assert (=> start!79674 (= tp!61541 b_and!28999)))

(declare-fun b!936188 () Bool)

(declare-fun e!525704 () Bool)

(declare-fun tp_is_empty!20203 () Bool)

(assert (=> b!936188 (= e!525704 tp_is_empty!20203)))

(declare-fun mapIsEmpty!32076 () Bool)

(declare-fun mapRes!32076 () Bool)

(assert (=> mapIsEmpty!32076 mapRes!32076))

(declare-fun b!936189 () Bool)

(declare-datatypes ((Unit!31576 0))(
  ( (Unit!31577) )
))
(declare-fun e!525696 () Unit!31576)

(declare-fun Unit!31578 () Unit!31576)

(assert (=> b!936189 (= e!525696 Unit!31578)))

(declare-fun b!936190 () Bool)

(declare-fun e!525697 () Bool)

(declare-fun e!525703 () Bool)

(assert (=> b!936190 (= e!525697 e!525703)))

(declare-fun res!630506 () Bool)

(assert (=> b!936190 (=> (not res!630506) (not e!525703))))

(declare-datatypes ((V!31903 0))(
  ( (V!31904 (val!10152 Int)) )
))
(declare-datatypes ((tuple2!13432 0))(
  ( (tuple2!13433 (_1!6726 (_ BitVec 64)) (_2!6726 V!31903)) )
))
(declare-datatypes ((List!19239 0))(
  ( (Nil!19236) (Cons!19235 (h!20381 tuple2!13432) (t!27486 List!19239)) )
))
(declare-datatypes ((ListLongMap!12143 0))(
  ( (ListLongMap!12144 (toList!6087 List!19239)) )
))
(declare-fun lt!422092 () ListLongMap!12143)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!5098 (ListLongMap!12143 (_ BitVec 64)) Bool)

(assert (=> b!936190 (= res!630506 (contains!5098 lt!422092 k!1099))))

(declare-datatypes ((array!56370 0))(
  ( (array!56371 (arr!27121 (Array (_ BitVec 32) (_ BitVec 64))) (size!27581 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56370)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9620 0))(
  ( (ValueCellFull!9620 (v!12677 V!31903)) (EmptyCell!9620) )
))
(declare-datatypes ((array!56372 0))(
  ( (array!56373 (arr!27122 (Array (_ BitVec 32) ValueCell!9620)) (size!27582 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56372)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31903)

(declare-fun minValue!1173 () V!31903)

(declare-fun getCurrentListMap!3277 (array!56370 array!56372 (_ BitVec 32) (_ BitVec 32) V!31903 V!31903 (_ BitVec 32) Int) ListLongMap!12143)

(assert (=> b!936190 (= lt!422092 (getCurrentListMap!3277 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!936191 () Bool)

(declare-fun e!525699 () Bool)

(declare-fun arrayContainsKey!0 (array!56370 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!936191 (= e!525699 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!936192 () Bool)

(declare-fun e!525702 () Bool)

(assert (=> b!936192 (= e!525702 tp_is_empty!20203)))

(declare-fun b!936193 () Bool)

(declare-fun lt!422090 () ListLongMap!12143)

(declare-fun lt!422099 () V!31903)

(declare-fun apply!865 (ListLongMap!12143 (_ BitVec 64)) V!31903)

(assert (=> b!936193 (= (apply!865 lt!422090 k!1099) lt!422099)))

(declare-fun lt!422093 () V!31903)

(declare-fun lt!422089 () (_ BitVec 64))

(declare-fun lt!422095 () Unit!31576)

(declare-fun addApplyDifferent!414 (ListLongMap!12143 (_ BitVec 64) V!31903 (_ BitVec 64)) Unit!31576)

(assert (=> b!936193 (= lt!422095 (addApplyDifferent!414 lt!422092 lt!422089 lt!422093 k!1099))))

(assert (=> b!936193 (not (= lt!422089 k!1099))))

(declare-fun lt!422091 () Unit!31576)

(declare-datatypes ((List!19240 0))(
  ( (Nil!19237) (Cons!19236 (h!20382 (_ BitVec 64)) (t!27487 List!19240)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!56370 (_ BitVec 64) (_ BitVec 32) List!19240) Unit!31576)

(assert (=> b!936193 (= lt!422091 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19237))))

(assert (=> b!936193 e!525699))

(declare-fun c!97296 () Bool)

(assert (=> b!936193 (= c!97296 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!422094 () Unit!31576)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!297 (array!56370 array!56372 (_ BitVec 32) (_ BitVec 32) V!31903 V!31903 (_ BitVec 64) (_ BitVec 32) Int) Unit!31576)

(assert (=> b!936193 (= lt!422094 (lemmaListMapContainsThenArrayContainsFrom!297 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!56370 (_ BitVec 32) List!19240) Bool)

(assert (=> b!936193 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19237)))

(declare-fun lt!422097 () Unit!31576)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56370 (_ BitVec 32) (_ BitVec 32)) Unit!31576)

(assert (=> b!936193 (= lt!422097 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!936193 (contains!5098 lt!422090 k!1099)))

(declare-fun lt!422098 () tuple2!13432)

(declare-fun +!2784 (ListLongMap!12143 tuple2!13432) ListLongMap!12143)

(assert (=> b!936193 (= lt!422090 (+!2784 lt!422092 lt!422098))))

(declare-fun lt!422096 () Unit!31576)

(declare-fun addStillContains!540 (ListLongMap!12143 (_ BitVec 64) V!31903 (_ BitVec 64)) Unit!31576)

(assert (=> b!936193 (= lt!422096 (addStillContains!540 lt!422092 lt!422089 lt!422093 k!1099))))

(assert (=> b!936193 (= (getCurrentListMap!3277 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2784 (getCurrentListMap!3277 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!422098))))

(assert (=> b!936193 (= lt!422098 (tuple2!13433 lt!422089 lt!422093))))

(declare-fun get!14310 (ValueCell!9620 V!31903) V!31903)

(declare-fun dynLambda!1623 (Int (_ BitVec 64)) V!31903)

(assert (=> b!936193 (= lt!422093 (get!14310 (select (arr!27122 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1623 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!422100 () Unit!31576)

(declare-fun lemmaListMapRecursiveValidKeyArray!219 (array!56370 array!56372 (_ BitVec 32) (_ BitVec 32) V!31903 V!31903 (_ BitVec 32) Int) Unit!31576)

(assert (=> b!936193 (= lt!422100 (lemmaListMapRecursiveValidKeyArray!219 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!936193 (= e!525696 lt!422095)))

(declare-fun res!630507 () Bool)

(assert (=> start!79674 (=> (not res!630507) (not e!525697))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79674 (= res!630507 (validMask!0 mask!1881))))

(assert (=> start!79674 e!525697))

(assert (=> start!79674 true))

(assert (=> start!79674 tp_is_empty!20203))

(declare-fun e!525698 () Bool)

(declare-fun array_inv!21060 (array!56372) Bool)

(assert (=> start!79674 (and (array_inv!21060 _values!1231) e!525698)))

(assert (=> start!79674 tp!61541))

(declare-fun array_inv!21061 (array!56370) Bool)

(assert (=> start!79674 (array_inv!21061 _keys!1487)))

(declare-fun b!936194 () Bool)

(declare-fun res!630508 () Bool)

(assert (=> b!936194 (=> (not res!630508) (not e!525697))))

(assert (=> b!936194 (= res!630508 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19237))))

(declare-fun b!936195 () Bool)

(declare-fun e!525695 () Bool)

(assert (=> b!936195 (= e!525703 e!525695)))

(declare-fun res!630509 () Bool)

(assert (=> b!936195 (=> (not res!630509) (not e!525695))))

(declare-fun v!791 () V!31903)

(assert (=> b!936195 (= res!630509 (and (= lt!422099 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!936195 (= lt!422099 (apply!865 lt!422092 k!1099))))

(declare-fun b!936196 () Bool)

(assert (=> b!936196 (= e!525695 false)))

(declare-fun lt!422101 () Unit!31576)

(declare-fun e!525701 () Unit!31576)

(assert (=> b!936196 (= lt!422101 e!525701)))

(declare-fun c!97297 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!936196 (= c!97297 (validKeyInArray!0 k!1099))))

(declare-fun b!936197 () Bool)

(declare-fun res!630505 () Bool)

(assert (=> b!936197 (=> (not res!630505) (not e!525697))))

(assert (=> b!936197 (= res!630505 (and (= (size!27582 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27581 _keys!1487) (size!27582 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!936198 () Bool)

(assert (=> b!936198 (= e!525701 e!525696)))

(assert (=> b!936198 (= lt!422089 (select (arr!27121 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!97298 () Bool)

(assert (=> b!936198 (= c!97298 (validKeyInArray!0 lt!422089))))

(declare-fun b!936199 () Bool)

(declare-fun Unit!31579 () Unit!31576)

(assert (=> b!936199 (= e!525701 Unit!31579)))

(declare-fun b!936200 () Bool)

(assert (=> b!936200 (= e!525699 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!936201 () Bool)

(assert (=> b!936201 (= e!525698 (and e!525702 mapRes!32076))))

(declare-fun condMapEmpty!32076 () Bool)

(declare-fun mapDefault!32076 () ValueCell!9620)

