; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79698 () Bool)

(assert start!79698)

(declare-fun b_free!17719 () Bool)

(declare-fun b_next!17719 () Bool)

(assert (=> start!79698 (= b_free!17719 (not b_next!17719))))

(declare-fun tp!61614 () Bool)

(declare-fun b_and!29047 () Bool)

(assert (=> start!79698 (= tp!61614 b_and!29047)))

(declare-fun mapIsEmpty!32112 () Bool)

(declare-fun mapRes!32112 () Bool)

(assert (=> mapIsEmpty!32112 mapRes!32112))

(declare-fun b!936788 () Bool)

(declare-fun e!526062 () Bool)

(declare-fun e!526059 () Bool)

(assert (=> b!936788 (= e!526062 e!526059)))

(declare-fun res!630759 () Bool)

(assert (=> b!936788 (=> (not res!630759) (not e!526059))))

(declare-datatypes ((V!31935 0))(
  ( (V!31936 (val!10164 Int)) )
))
(declare-datatypes ((tuple2!13454 0))(
  ( (tuple2!13455 (_1!6737 (_ BitVec 64)) (_2!6737 V!31935)) )
))
(declare-datatypes ((List!19261 0))(
  ( (Nil!19258) (Cons!19257 (h!20403 tuple2!13454) (t!27532 List!19261)) )
))
(declare-datatypes ((ListLongMap!12165 0))(
  ( (ListLongMap!12166 (toList!6098 List!19261)) )
))
(declare-fun lt!422564 () ListLongMap!12165)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!5108 (ListLongMap!12165 (_ BitVec 64)) Bool)

(assert (=> b!936788 (= res!630759 (contains!5108 lt!422564 k!1099))))

(declare-datatypes ((array!56418 0))(
  ( (array!56419 (arr!27145 (Array (_ BitVec 32) (_ BitVec 64))) (size!27605 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56418)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9632 0))(
  ( (ValueCellFull!9632 (v!12689 V!31935)) (EmptyCell!9632) )
))
(declare-datatypes ((array!56420 0))(
  ( (array!56421 (arr!27146 (Array (_ BitVec 32) ValueCell!9632)) (size!27606 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56420)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31935)

(declare-fun minValue!1173 () V!31935)

(declare-fun getCurrentListMap!3287 (array!56418 array!56420 (_ BitVec 32) (_ BitVec 32) V!31935 V!31935 (_ BitVec 32) Int) ListLongMap!12165)

(assert (=> b!936788 (= lt!422564 (getCurrentListMap!3287 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!936789 () Bool)

(declare-fun res!630758 () Bool)

(assert (=> b!936789 (=> (not res!630758) (not e!526062))))

(assert (=> b!936789 (= res!630758 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27605 _keys!1487))))))

(declare-fun b!936790 () Bool)

(declare-fun lt!422562 () ListLongMap!12165)

(declare-fun lt!422565 () V!31935)

(declare-fun apply!876 (ListLongMap!12165 (_ BitVec 64)) V!31935)

(assert (=> b!936790 (= (apply!876 lt!422562 k!1099) lt!422565)))

(declare-datatypes ((Unit!31620 0))(
  ( (Unit!31621) )
))
(declare-fun lt!422567 () Unit!31620)

(declare-fun lt!422560 () (_ BitVec 64))

(declare-fun lt!422559 () V!31935)

(declare-fun addApplyDifferent!424 (ListLongMap!12165 (_ BitVec 64) V!31935 (_ BitVec 64)) Unit!31620)

(assert (=> b!936790 (= lt!422567 (addApplyDifferent!424 lt!422564 lt!422560 lt!422559 k!1099))))

(assert (=> b!936790 (not (= lt!422560 k!1099))))

(declare-fun lt!422566 () Unit!31620)

(declare-datatypes ((List!19262 0))(
  ( (Nil!19259) (Cons!19258 (h!20404 (_ BitVec 64)) (t!27533 List!19262)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!56418 (_ BitVec 64) (_ BitVec 32) List!19262) Unit!31620)

(assert (=> b!936790 (= lt!422566 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19259))))

(declare-fun e!526064 () Bool)

(assert (=> b!936790 e!526064))

(declare-fun c!97405 () Bool)

(assert (=> b!936790 (= c!97405 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!422557 () Unit!31620)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!307 (array!56418 array!56420 (_ BitVec 32) (_ BitVec 32) V!31935 V!31935 (_ BitVec 64) (_ BitVec 32) Int) Unit!31620)

(assert (=> b!936790 (= lt!422557 (lemmaListMapContainsThenArrayContainsFrom!307 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!56418 (_ BitVec 32) List!19262) Bool)

(assert (=> b!936790 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19259)))

(declare-fun lt!422563 () Unit!31620)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56418 (_ BitVec 32) (_ BitVec 32)) Unit!31620)

(assert (=> b!936790 (= lt!422563 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!936790 (contains!5108 lt!422562 k!1099)))

(declare-fun lt!422558 () tuple2!13454)

(declare-fun +!2794 (ListLongMap!12165 tuple2!13454) ListLongMap!12165)

(assert (=> b!936790 (= lt!422562 (+!2794 lt!422564 lt!422558))))

(declare-fun lt!422568 () Unit!31620)

(declare-fun addStillContains!550 (ListLongMap!12165 (_ BitVec 64) V!31935 (_ BitVec 64)) Unit!31620)

(assert (=> b!936790 (= lt!422568 (addStillContains!550 lt!422564 lt!422560 lt!422559 k!1099))))

(assert (=> b!936790 (= (getCurrentListMap!3287 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2794 (getCurrentListMap!3287 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!422558))))

(assert (=> b!936790 (= lt!422558 (tuple2!13455 lt!422560 lt!422559))))

(declare-fun get!14328 (ValueCell!9632 V!31935) V!31935)

(declare-fun dynLambda!1633 (Int (_ BitVec 64)) V!31935)

(assert (=> b!936790 (= lt!422559 (get!14328 (select (arr!27146 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1633 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!422561 () Unit!31620)

(declare-fun lemmaListMapRecursiveValidKeyArray!229 (array!56418 array!56420 (_ BitVec 32) (_ BitVec 32) V!31935 V!31935 (_ BitVec 32) Int) Unit!31620)

(assert (=> b!936790 (= lt!422561 (lemmaListMapRecursiveValidKeyArray!229 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!526061 () Unit!31620)

(assert (=> b!936790 (= e!526061 lt!422567)))

(declare-fun b!936791 () Bool)

(declare-fun e!526057 () Unit!31620)

(declare-fun Unit!31622 () Unit!31620)

(assert (=> b!936791 (= e!526057 Unit!31622)))

(declare-fun b!936792 () Bool)

(declare-fun Unit!31623 () Unit!31620)

(assert (=> b!936792 (= e!526061 Unit!31623)))

(declare-fun mapNonEmpty!32112 () Bool)

(declare-fun tp!61613 () Bool)

(declare-fun e!526056 () Bool)

(assert (=> mapNonEmpty!32112 (= mapRes!32112 (and tp!61613 e!526056))))

(declare-fun mapKey!32112 () (_ BitVec 32))

(declare-fun mapRest!32112 () (Array (_ BitVec 32) ValueCell!9632))

(declare-fun mapValue!32112 () ValueCell!9632)

(assert (=> mapNonEmpty!32112 (= (arr!27146 _values!1231) (store mapRest!32112 mapKey!32112 mapValue!32112))))

(declare-fun b!936793 () Bool)

(assert (=> b!936793 (= e!526057 e!526061)))

(assert (=> b!936793 (= lt!422560 (select (arr!27145 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!97404 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!936793 (= c!97404 (validKeyInArray!0 lt!422560))))

(declare-fun b!936794 () Bool)

(declare-fun e!526063 () Bool)

(assert (=> b!936794 (= e!526063 false)))

(declare-fun lt!422569 () Unit!31620)

(assert (=> b!936794 (= lt!422569 e!526057)))

(declare-fun c!97406 () Bool)

(assert (=> b!936794 (= c!97406 (validKeyInArray!0 k!1099))))

(declare-fun b!936795 () Bool)

(declare-fun e!526060 () Bool)

(declare-fun tp_is_empty!20227 () Bool)

(assert (=> b!936795 (= e!526060 tp_is_empty!20227)))

(declare-fun res!630761 () Bool)

(assert (=> start!79698 (=> (not res!630761) (not e!526062))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79698 (= res!630761 (validMask!0 mask!1881))))

(assert (=> start!79698 e!526062))

(assert (=> start!79698 true))

(assert (=> start!79698 tp_is_empty!20227))

(declare-fun e!526058 () Bool)

(declare-fun array_inv!21078 (array!56420) Bool)

(assert (=> start!79698 (and (array_inv!21078 _values!1231) e!526058)))

(assert (=> start!79698 tp!61614))

(declare-fun array_inv!21079 (array!56418) Bool)

(assert (=> start!79698 (array_inv!21079 _keys!1487)))

(declare-fun b!936796 () Bool)

(declare-fun res!630760 () Bool)

(assert (=> b!936796 (=> (not res!630760) (not e!526062))))

(assert (=> b!936796 (= res!630760 (and (= (size!27606 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27605 _keys!1487) (size!27606 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!936797 () Bool)

(assert (=> b!936797 (= e!526056 tp_is_empty!20227)))

(declare-fun b!936798 () Bool)

(declare-fun arrayContainsKey!0 (array!56418 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!936798 (= e!526064 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!936799 () Bool)

(assert (=> b!936799 (= e!526058 (and e!526060 mapRes!32112))))

(declare-fun condMapEmpty!32112 () Bool)

(declare-fun mapDefault!32112 () ValueCell!9632)

