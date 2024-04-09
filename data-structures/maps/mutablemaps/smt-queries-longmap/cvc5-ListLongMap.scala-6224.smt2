; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79608 () Bool)

(assert start!79608)

(declare-fun b_free!17665 () Bool)

(declare-fun b_next!17665 () Bool)

(assert (=> start!79608 (= b_free!17665 (not b_next!17665))))

(declare-fun tp!61449 () Bool)

(declare-fun b_and!28931 () Bool)

(assert (=> start!79608 (= tp!61449 b_and!28931)))

(declare-fun b!935223 () Bool)

(declare-fun e!525183 () Bool)

(declare-fun tp_is_empty!20173 () Bool)

(assert (=> b!935223 (= e!525183 tp_is_empty!20173)))

(declare-fun mapIsEmpty!32028 () Bool)

(declare-fun mapRes!32028 () Bool)

(assert (=> mapIsEmpty!32028 mapRes!32028))

(declare-fun lt!421517 () (_ BitVec 32))

(declare-fun e!525184 () Bool)

(declare-fun b!935224 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((array!56308 0))(
  ( (array!56309 (arr!27091 (Array (_ BitVec 32) (_ BitVec 64))) (size!27551 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56308)

(declare-fun arrayContainsKey!0 (array!56308 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!935224 (= e!525184 (arrayContainsKey!0 _keys!1487 k!1099 lt!421517))))

(declare-fun b!935225 () Bool)

(declare-fun e!525178 () Bool)

(assert (=> b!935225 (= e!525178 (not e!525184))))

(declare-fun res!629916 () Bool)

(assert (=> b!935225 (=> res!629916 e!525184)))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!935225 (= res!629916 (or (bvsge (size!27551 _keys!1487) #b01111111111111111111111111111111) (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!27551 _keys!1487))))))

(declare-fun e!525177 () Bool)

(assert (=> b!935225 e!525177))

(declare-fun c!97200 () Bool)

(assert (=> b!935225 (= c!97200 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!31551 0))(
  ( (Unit!31552) )
))
(declare-fun lt!421514 () Unit!31551)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31863 0))(
  ( (V!31864 (val!10137 Int)) )
))
(declare-datatypes ((ValueCell!9605 0))(
  ( (ValueCellFull!9605 (v!12660 V!31863)) (EmptyCell!9605) )
))
(declare-datatypes ((array!56310 0))(
  ( (array!56311 (arr!27092 (Array (_ BitVec 32) ValueCell!9605)) (size!27552 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56310)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31863)

(declare-fun minValue!1173 () V!31863)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!287 (array!56308 array!56310 (_ BitVec 32) (_ BitVec 32) V!31863 V!31863 (_ BitVec 64) (_ BitVec 32) Int) Unit!31551)

(assert (=> b!935225 (= lt!421514 (lemmaListMapContainsThenArrayContainsFrom!287 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-datatypes ((List!19215 0))(
  ( (Nil!19212) (Cons!19211 (h!20357 (_ BitVec 64)) (t!27432 List!19215)) )
))
(declare-fun arrayNoDuplicates!0 (array!56308 (_ BitVec 32) List!19215) Bool)

(assert (=> b!935225 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19212)))

(declare-fun lt!421510 () Unit!31551)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56308 (_ BitVec 32) (_ BitVec 32)) Unit!31551)

(assert (=> b!935225 (= lt!421510 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((tuple2!13408 0))(
  ( (tuple2!13409 (_1!6714 (_ BitVec 64)) (_2!6714 V!31863)) )
))
(declare-datatypes ((List!19216 0))(
  ( (Nil!19213) (Cons!19212 (h!20358 tuple2!13408) (t!27433 List!19216)) )
))
(declare-datatypes ((ListLongMap!12119 0))(
  ( (ListLongMap!12120 (toList!6075 List!19216)) )
))
(declare-fun lt!421515 () ListLongMap!12119)

(declare-fun lt!421511 () tuple2!13408)

(declare-fun contains!5082 (ListLongMap!12119 (_ BitVec 64)) Bool)

(declare-fun +!2774 (ListLongMap!12119 tuple2!13408) ListLongMap!12119)

(assert (=> b!935225 (contains!5082 (+!2774 lt!421515 lt!421511) k!1099)))

(declare-fun lt!421509 () Unit!31551)

(declare-fun lt!421516 () (_ BitVec 64))

(declare-fun lt!421513 () V!31863)

(declare-fun addStillContains!530 (ListLongMap!12119 (_ BitVec 64) V!31863 (_ BitVec 64)) Unit!31551)

(assert (=> b!935225 (= lt!421509 (addStillContains!530 lt!421515 lt!421516 lt!421513 k!1099))))

(declare-fun getCurrentListMap!3267 (array!56308 array!56310 (_ BitVec 32) (_ BitVec 32) V!31863 V!31863 (_ BitVec 32) Int) ListLongMap!12119)

(assert (=> b!935225 (= (getCurrentListMap!3267 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2774 (getCurrentListMap!3267 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 lt!421517 defaultEntry!1235) lt!421511))))

(assert (=> b!935225 (= lt!421511 (tuple2!13409 lt!421516 lt!421513))))

(declare-fun get!14287 (ValueCell!9605 V!31863) V!31863)

(declare-fun dynLambda!1613 (Int (_ BitVec 64)) V!31863)

(assert (=> b!935225 (= lt!421513 (get!14287 (select (arr!27092 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1613 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!935225 (= lt!421517 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!421512 () Unit!31551)

(declare-fun lemmaListMapRecursiveValidKeyArray!209 (array!56308 array!56310 (_ BitVec 32) (_ BitVec 32) V!31863 V!31863 (_ BitVec 32) Int) Unit!31551)

(assert (=> b!935225 (= lt!421512 (lemmaListMapRecursiveValidKeyArray!209 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!935226 () Bool)

(declare-fun e!525181 () Bool)

(assert (=> b!935226 (= e!525181 tp_is_empty!20173)))

(declare-fun b!935227 () Bool)

(declare-fun e!525180 () Bool)

(assert (=> b!935227 (= e!525180 e!525178)))

(declare-fun res!629910 () Bool)

(assert (=> b!935227 (=> (not res!629910) (not e!525178))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!935227 (= res!629910 (validKeyInArray!0 lt!421516))))

(assert (=> b!935227 (= lt!421516 (select (arr!27091 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!935228 () Bool)

(declare-fun res!629914 () Bool)

(assert (=> b!935228 (=> res!629914 e!525184)))

(declare-fun noDuplicate!1357 (List!19215) Bool)

(assert (=> b!935228 (= res!629914 (not (noDuplicate!1357 Nil!19212)))))

(declare-fun b!935229 () Bool)

(declare-fun res!629907 () Bool)

(assert (=> b!935229 (=> (not res!629907) (not e!525180))))

(declare-fun v!791 () V!31863)

(declare-fun apply!854 (ListLongMap!12119 (_ BitVec 64)) V!31863)

(assert (=> b!935229 (= res!629907 (= (apply!854 lt!421515 k!1099) v!791))))

(declare-fun b!935230 () Bool)

(declare-fun res!629911 () Bool)

(assert (=> b!935230 (=> (not res!629911) (not e!525180))))

(assert (=> b!935230 (= res!629911 (validKeyInArray!0 k!1099))))

(declare-fun b!935231 () Bool)

(declare-fun res!629905 () Bool)

(declare-fun e!525179 () Bool)

(assert (=> b!935231 (=> (not res!629905) (not e!525179))))

(assert (=> b!935231 (= res!629905 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19212))))

(declare-fun b!935232 () Bool)

(declare-fun res!629913 () Bool)

(assert (=> b!935232 (=> res!629913 e!525184)))

(declare-fun contains!5083 (List!19215 (_ BitVec 64)) Bool)

(assert (=> b!935232 (= res!629913 (contains!5083 Nil!19212 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!935233 () Bool)

(assert (=> b!935233 (= e!525177 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!935234 () Bool)

(declare-fun res!629915 () Bool)

(assert (=> b!935234 (=> res!629915 e!525184)))

(assert (=> b!935234 (= res!629915 (contains!5083 Nil!19212 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!935235 () Bool)

(assert (=> b!935235 (= e!525179 e!525180)))

(declare-fun res!629912 () Bool)

(assert (=> b!935235 (=> (not res!629912) (not e!525180))))

(assert (=> b!935235 (= res!629912 (contains!5082 lt!421515 k!1099))))

(assert (=> b!935235 (= lt!421515 (getCurrentListMap!3267 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun res!629904 () Bool)

(assert (=> start!79608 (=> (not res!629904) (not e!525179))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79608 (= res!629904 (validMask!0 mask!1881))))

(assert (=> start!79608 e!525179))

(assert (=> start!79608 true))

(assert (=> start!79608 tp_is_empty!20173))

(declare-fun e!525176 () Bool)

(declare-fun array_inv!21038 (array!56310) Bool)

(assert (=> start!79608 (and (array_inv!21038 _values!1231) e!525176)))

(assert (=> start!79608 tp!61449))

(declare-fun array_inv!21039 (array!56308) Bool)

(assert (=> start!79608 (array_inv!21039 _keys!1487)))

(declare-fun b!935236 () Bool)

(assert (=> b!935236 (= e!525176 (and e!525181 mapRes!32028))))

(declare-fun condMapEmpty!32028 () Bool)

(declare-fun mapDefault!32028 () ValueCell!9605)

