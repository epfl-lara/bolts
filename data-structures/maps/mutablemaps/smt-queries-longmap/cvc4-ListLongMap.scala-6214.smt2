; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79450 () Bool)

(assert start!79450)

(declare-fun b_free!17609 () Bool)

(declare-fun b_next!17609 () Bool)

(assert (=> start!79450 (= b_free!17609 (not b_next!17609))))

(declare-fun tp!61271 () Bool)

(declare-fun b_and!28795 () Bool)

(assert (=> start!79450 (= tp!61271 b_and!28795)))

(declare-fun mapNonEmpty!31935 () Bool)

(declare-fun mapRes!31935 () Bool)

(declare-fun tp!61272 () Bool)

(declare-fun e!524105 () Bool)

(assert (=> mapNonEmpty!31935 (= mapRes!31935 (and tp!61272 e!524105))))

(declare-datatypes ((V!31787 0))(
  ( (V!31788 (val!10109 Int)) )
))
(declare-datatypes ((ValueCell!9577 0))(
  ( (ValueCellFull!9577 (v!12628 V!31787)) (EmptyCell!9577) )
))
(declare-fun mapRest!31935 () (Array (_ BitVec 32) ValueCell!9577))

(declare-fun mapKey!31935 () (_ BitVec 32))

(declare-datatypes ((array!56194 0))(
  ( (array!56195 (arr!27037 (Array (_ BitVec 32) ValueCell!9577)) (size!27497 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56194)

(declare-fun mapValue!31935 () ValueCell!9577)

(assert (=> mapNonEmpty!31935 (= (arr!27037 _values!1231) (store mapRest!31935 mapKey!31935 mapValue!31935))))

(declare-fun b!933320 () Bool)

(declare-fun res!628754 () Bool)

(declare-fun e!524108 () Bool)

(assert (=> b!933320 (=> (not res!628754) (not e!524108))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!56196 0))(
  ( (array!56197 (arr!27038 (Array (_ BitVec 32) (_ BitVec 64))) (size!27498 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56196)

(assert (=> b!933320 (= res!628754 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27498 _keys!1487))))))

(declare-fun b!933321 () Bool)

(declare-fun tp_is_empty!20117 () Bool)

(assert (=> b!933321 (= e!524105 tp_is_empty!20117)))

(declare-fun b!933322 () Bool)

(declare-fun e!524111 () Bool)

(assert (=> b!933322 (= e!524111 tp_is_empty!20117)))

(declare-fun b!933323 () Bool)

(declare-fun e!524106 () Bool)

(assert (=> b!933323 (= e!524106 (not true))))

(declare-datatypes ((List!19166 0))(
  ( (Nil!19163) (Cons!19162 (h!20308 (_ BitVec 64)) (t!27327 List!19166)) )
))
(declare-fun arrayNoDuplicates!0 (array!56196 (_ BitVec 32) List!19166) Bool)

(assert (=> b!933323 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19163)))

(declare-datatypes ((Unit!31490 0))(
  ( (Unit!31491) )
))
(declare-fun lt!420367 () Unit!31490)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56196 (_ BitVec 32) (_ BitVec 32)) Unit!31490)

(assert (=> b!933323 (= lt!420367 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((tuple2!13358 0))(
  ( (tuple2!13359 (_1!6689 (_ BitVec 64)) (_2!6689 V!31787)) )
))
(declare-datatypes ((List!19167 0))(
  ( (Nil!19164) (Cons!19163 (h!20309 tuple2!13358) (t!27328 List!19167)) )
))
(declare-datatypes ((ListLongMap!12069 0))(
  ( (ListLongMap!12070 (toList!6050 List!19167)) )
))
(declare-fun lt!420363 () ListLongMap!12069)

(declare-fun lt!420365 () tuple2!13358)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!5049 (ListLongMap!12069 (_ BitVec 64)) Bool)

(declare-fun +!2751 (ListLongMap!12069 tuple2!13358) ListLongMap!12069)

(assert (=> b!933323 (contains!5049 (+!2751 lt!420363 lt!420365) k!1099)))

(declare-fun lt!420361 () Unit!31490)

(declare-fun lt!420362 () (_ BitVec 64))

(declare-fun lt!420366 () V!31787)

(declare-fun addStillContains!507 (ListLongMap!12069 (_ BitVec 64) V!31787 (_ BitVec 64)) Unit!31490)

(assert (=> b!933323 (= lt!420361 (addStillContains!507 lt!420363 lt!420362 lt!420366 k!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31787)

(declare-fun minValue!1173 () V!31787)

(declare-fun getCurrentListMap!3242 (array!56196 array!56194 (_ BitVec 32) (_ BitVec 32) V!31787 V!31787 (_ BitVec 32) Int) ListLongMap!12069)

(assert (=> b!933323 (= (getCurrentListMap!3242 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2751 (getCurrentListMap!3242 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!420365))))

(assert (=> b!933323 (= lt!420365 (tuple2!13359 lt!420362 lt!420366))))

(declare-fun get!14235 (ValueCell!9577 V!31787) V!31787)

(declare-fun dynLambda!1590 (Int (_ BitVec 64)) V!31787)

(assert (=> b!933323 (= lt!420366 (get!14235 (select (arr!27037 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1590 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!420364 () Unit!31490)

(declare-fun lemmaListMapRecursiveValidKeyArray!186 (array!56196 array!56194 (_ BitVec 32) (_ BitVec 32) V!31787 V!31787 (_ BitVec 32) Int) Unit!31490)

(assert (=> b!933323 (= lt!420364 (lemmaListMapRecursiveValidKeyArray!186 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun mapIsEmpty!31935 () Bool)

(assert (=> mapIsEmpty!31935 mapRes!31935))

(declare-fun b!933324 () Bool)

(declare-fun res!628755 () Bool)

(declare-fun e!524107 () Bool)

(assert (=> b!933324 (=> (not res!628755) (not e!524107))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!933324 (= res!628755 (validKeyInArray!0 k!1099))))

(declare-fun b!933326 () Bool)

(declare-fun e!524109 () Bool)

(assert (=> b!933326 (= e!524109 (and e!524111 mapRes!31935))))

(declare-fun condMapEmpty!31935 () Bool)

(declare-fun mapDefault!31935 () ValueCell!9577)

