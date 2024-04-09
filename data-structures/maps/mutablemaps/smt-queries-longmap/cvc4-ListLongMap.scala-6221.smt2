; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79524 () Bool)

(assert start!79524)

(declare-fun b_free!17651 () Bool)

(declare-fun b_next!17651 () Bool)

(assert (=> start!79524 (= b_free!17651 (not b_next!17651))))

(declare-fun tp!61401 () Bool)

(declare-fun b_and!28887 () Bool)

(assert (=> start!79524 (= tp!61401 b_and!28887)))

(declare-fun mapIsEmpty!32001 () Bool)

(declare-fun mapRes!32001 () Bool)

(assert (=> mapIsEmpty!32001 mapRes!32001))

(declare-fun res!629470 () Bool)

(declare-fun e!524717 () Bool)

(assert (=> start!79524 (=> (not res!629470) (not e!524717))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79524 (= res!629470 (validMask!0 mask!1881))))

(assert (=> start!79524 e!524717))

(assert (=> start!79524 true))

(declare-fun tp_is_empty!20159 () Bool)

(assert (=> start!79524 tp_is_empty!20159))

(declare-datatypes ((V!31843 0))(
  ( (V!31844 (val!10130 Int)) )
))
(declare-datatypes ((ValueCell!9598 0))(
  ( (ValueCellFull!9598 (v!12650 V!31843)) (EmptyCell!9598) )
))
(declare-datatypes ((array!56276 0))(
  ( (array!56277 (arr!27077 (Array (_ BitVec 32) ValueCell!9598)) (size!27537 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56276)

(declare-fun e!524713 () Bool)

(declare-fun array_inv!21026 (array!56276) Bool)

(assert (=> start!79524 (and (array_inv!21026 _values!1231) e!524713)))

(assert (=> start!79524 tp!61401))

(declare-datatypes ((array!56278 0))(
  ( (array!56279 (arr!27078 (Array (_ BitVec 32) (_ BitVec 64))) (size!27538 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56278)

(declare-fun array_inv!21027 (array!56278) Bool)

(assert (=> start!79524 (array_inv!21027 _keys!1487)))

(declare-fun b!934456 () Bool)

(declare-fun e!524716 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!934456 (= e!524716 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!934457 () Bool)

(declare-fun e!524715 () Bool)

(assert (=> b!934457 (= e!524717 e!524715)))

(declare-fun res!629471 () Bool)

(assert (=> b!934457 (=> (not res!629471) (not e!524715))))

(declare-datatypes ((tuple2!13394 0))(
  ( (tuple2!13395 (_1!6707 (_ BitVec 64)) (_2!6707 V!31843)) )
))
(declare-datatypes ((List!19201 0))(
  ( (Nil!19198) (Cons!19197 (h!20343 tuple2!13394) (t!27404 List!19201)) )
))
(declare-datatypes ((ListLongMap!12105 0))(
  ( (ListLongMap!12106 (toList!6068 List!19201)) )
))
(declare-fun lt!421015 () ListLongMap!12105)

(declare-fun contains!5069 (ListLongMap!12105 (_ BitVec 64)) Bool)

(assert (=> b!934457 (= res!629471 (contains!5069 lt!421015 k!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31843)

(declare-fun minValue!1173 () V!31843)

(declare-fun getCurrentListMap!3260 (array!56278 array!56276 (_ BitVec 32) (_ BitVec 32) V!31843 V!31843 (_ BitVec 32) Int) ListLongMap!12105)

(assert (=> b!934457 (= lt!421015 (getCurrentListMap!3260 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!934458 () Bool)

(declare-fun e!524719 () Bool)

(assert (=> b!934458 (= e!524719 tp_is_empty!20159)))

(declare-fun b!934459 () Bool)

(declare-fun res!629468 () Bool)

(assert (=> b!934459 (=> (not res!629468) (not e!524717))))

(assert (=> b!934459 (= res!629468 (and (= (size!27537 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27538 _keys!1487) (size!27537 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!934460 () Bool)

(declare-fun e!524718 () Bool)

(assert (=> b!934460 (= e!524715 e!524718)))

(declare-fun res!629464 () Bool)

(assert (=> b!934460 (=> (not res!629464) (not e!524718))))

(declare-fun lt!421011 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!934460 (= res!629464 (validKeyInArray!0 lt!421011))))

(assert (=> b!934460 (= lt!421011 (select (arr!27078 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!934461 () Bool)

(assert (=> b!934461 (= e!524718 (not (or (bvsge (size!27538 _keys!1487) #b01111111111111111111111111111111) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27538 _keys!1487)))))))

(assert (=> b!934461 e!524716))

(declare-fun c!97085 () Bool)

(assert (=> b!934461 (= c!97085 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!31527 0))(
  ( (Unit!31528) )
))
(declare-fun lt!421012 () Unit!31527)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!280 (array!56278 array!56276 (_ BitVec 32) (_ BitVec 32) V!31843 V!31843 (_ BitVec 64) (_ BitVec 32) Int) Unit!31527)

(assert (=> b!934461 (= lt!421012 (lemmaListMapContainsThenArrayContainsFrom!280 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-datatypes ((List!19202 0))(
  ( (Nil!19199) (Cons!19198 (h!20344 (_ BitVec 64)) (t!27405 List!19202)) )
))
(declare-fun arrayNoDuplicates!0 (array!56278 (_ BitVec 32) List!19202) Bool)

(assert (=> b!934461 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19199)))

(declare-fun lt!421009 () Unit!31527)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56278 (_ BitVec 32) (_ BitVec 32)) Unit!31527)

(assert (=> b!934461 (= lt!421009 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!421014 () tuple2!13394)

(declare-fun +!2767 (ListLongMap!12105 tuple2!13394) ListLongMap!12105)

(assert (=> b!934461 (contains!5069 (+!2767 lt!421015 lt!421014) k!1099)))

(declare-fun lt!421010 () Unit!31527)

(declare-fun lt!421016 () V!31843)

(declare-fun addStillContains!523 (ListLongMap!12105 (_ BitVec 64) V!31843 (_ BitVec 64)) Unit!31527)

(assert (=> b!934461 (= lt!421010 (addStillContains!523 lt!421015 lt!421011 lt!421016 k!1099))))

(assert (=> b!934461 (= (getCurrentListMap!3260 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2767 (getCurrentListMap!3260 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!421014))))

(assert (=> b!934461 (= lt!421014 (tuple2!13395 lt!421011 lt!421016))))

(declare-fun get!14268 (ValueCell!9598 V!31843) V!31843)

(declare-fun dynLambda!1606 (Int (_ BitVec 64)) V!31843)

(assert (=> b!934461 (= lt!421016 (get!14268 (select (arr!27077 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1606 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!421013 () Unit!31527)

(declare-fun lemmaListMapRecursiveValidKeyArray!202 (array!56278 array!56276 (_ BitVec 32) (_ BitVec 32) V!31843 V!31843 (_ BitVec 32) Int) Unit!31527)

(assert (=> b!934461 (= lt!421013 (lemmaListMapRecursiveValidKeyArray!202 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!934462 () Bool)

(declare-fun res!629463 () Bool)

(assert (=> b!934462 (=> (not res!629463) (not e!524717))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56278 (_ BitVec 32)) Bool)

(assert (=> b!934462 (= res!629463 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapNonEmpty!32001 () Bool)

(declare-fun tp!61400 () Bool)

(assert (=> mapNonEmpty!32001 (= mapRes!32001 (and tp!61400 e!524719))))

(declare-fun mapKey!32001 () (_ BitVec 32))

(declare-fun mapValue!32001 () ValueCell!9598)

(declare-fun mapRest!32001 () (Array (_ BitVec 32) ValueCell!9598))

(assert (=> mapNonEmpty!32001 (= (arr!27077 _values!1231) (store mapRest!32001 mapKey!32001 mapValue!32001))))

(declare-fun b!934463 () Bool)

(declare-fun res!629466 () Bool)

(assert (=> b!934463 (=> (not res!629466) (not e!524715))))

(assert (=> b!934463 (= res!629466 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!934464 () Bool)

(declare-fun res!629465 () Bool)

(assert (=> b!934464 (=> (not res!629465) (not e!524717))))

(assert (=> b!934464 (= res!629465 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19199))))

(declare-fun b!934465 () Bool)

(declare-fun res!629467 () Bool)

(assert (=> b!934465 (=> (not res!629467) (not e!524715))))

(assert (=> b!934465 (= res!629467 (validKeyInArray!0 k!1099))))

(declare-fun b!934466 () Bool)

(declare-fun res!629462 () Bool)

(assert (=> b!934466 (=> (not res!629462) (not e!524717))))

(assert (=> b!934466 (= res!629462 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27538 _keys!1487))))))

(declare-fun b!934467 () Bool)

(declare-fun res!629469 () Bool)

(assert (=> b!934467 (=> (not res!629469) (not e!524715))))

(declare-fun v!791 () V!31843)

(declare-fun apply!848 (ListLongMap!12105 (_ BitVec 64)) V!31843)

(assert (=> b!934467 (= res!629469 (= (apply!848 lt!421015 k!1099) v!791))))

(declare-fun b!934468 () Bool)

(declare-fun arrayContainsKey!0 (array!56278 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!934468 (= e!524716 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!934469 () Bool)

(declare-fun e!524720 () Bool)

(assert (=> b!934469 (= e!524720 tp_is_empty!20159)))

(declare-fun b!934470 () Bool)

(assert (=> b!934470 (= e!524713 (and e!524720 mapRes!32001))))

(declare-fun condMapEmpty!32001 () Bool)

(declare-fun mapDefault!32001 () ValueCell!9598)

