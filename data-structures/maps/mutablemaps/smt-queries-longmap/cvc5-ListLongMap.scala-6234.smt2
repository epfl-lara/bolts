; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79704 () Bool)

(assert start!79704)

(declare-fun b_free!17725 () Bool)

(declare-fun b_next!17725 () Bool)

(assert (=> start!79704 (= b_free!17725 (not b_next!17725))))

(declare-fun tp!61632 () Bool)

(declare-fun b_and!29059 () Bool)

(assert (=> start!79704 (= tp!61632 b_and!29059)))

(declare-fun b!936938 () Bool)

(declare-fun e!526145 () Bool)

(declare-fun tp_is_empty!20233 () Bool)

(assert (=> b!936938 (= e!526145 tp_is_empty!20233)))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun b!936939 () Bool)

(declare-fun e!526147 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((array!56430 0))(
  ( (array!56431 (arr!27151 (Array (_ BitVec 32) (_ BitVec 64))) (size!27611 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56430)

(declare-fun arrayContainsKey!0 (array!56430 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!936939 (= e!526147 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!936940 () Bool)

(declare-datatypes ((Unit!31630 0))(
  ( (Unit!31631) )
))
(declare-fun e!526153 () Unit!31630)

(declare-fun Unit!31632 () Unit!31630)

(assert (=> b!936940 (= e!526153 Unit!31632)))

(declare-fun b!936941 () Bool)

(declare-datatypes ((V!31943 0))(
  ( (V!31944 (val!10167 Int)) )
))
(declare-datatypes ((tuple2!13460 0))(
  ( (tuple2!13461 (_1!6740 (_ BitVec 64)) (_2!6740 V!31943)) )
))
(declare-datatypes ((List!19267 0))(
  ( (Nil!19264) (Cons!19263 (h!20409 tuple2!13460) (t!27544 List!19267)) )
))
(declare-datatypes ((ListLongMap!12171 0))(
  ( (ListLongMap!12172 (toList!6101 List!19267)) )
))
(declare-fun lt!422683 () ListLongMap!12171)

(declare-fun lt!422676 () V!31943)

(declare-fun apply!879 (ListLongMap!12171 (_ BitVec 64)) V!31943)

(assert (=> b!936941 (= (apply!879 lt!422683 k!1099) lt!422676)))

(declare-fun lt!422682 () (_ BitVec 64))

(declare-fun lt!422679 () V!31943)

(declare-fun lt!422680 () Unit!31630)

(declare-fun lt!422685 () ListLongMap!12171)

(declare-fun addApplyDifferent!427 (ListLongMap!12171 (_ BitVec 64) V!31943 (_ BitVec 64)) Unit!31630)

(assert (=> b!936941 (= lt!422680 (addApplyDifferent!427 lt!422685 lt!422682 lt!422679 k!1099))))

(assert (=> b!936941 (not (= lt!422682 k!1099))))

(declare-fun lt!422677 () Unit!31630)

(declare-datatypes ((List!19268 0))(
  ( (Nil!19265) (Cons!19264 (h!20410 (_ BitVec 64)) (t!27545 List!19268)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!56430 (_ BitVec 64) (_ BitVec 32) List!19268) Unit!31630)

(assert (=> b!936941 (= lt!422677 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19265))))

(assert (=> b!936941 e!526147))

(declare-fun c!97432 () Bool)

(assert (=> b!936941 (= c!97432 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun lt!422674 () Unit!31630)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9635 0))(
  ( (ValueCellFull!9635 (v!12692 V!31943)) (EmptyCell!9635) )
))
(declare-datatypes ((array!56432 0))(
  ( (array!56433 (arr!27152 (Array (_ BitVec 32) ValueCell!9635)) (size!27612 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56432)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31943)

(declare-fun minValue!1173 () V!31943)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!310 (array!56430 array!56432 (_ BitVec 32) (_ BitVec 32) V!31943 V!31943 (_ BitVec 64) (_ BitVec 32) Int) Unit!31630)

(assert (=> b!936941 (= lt!422674 (lemmaListMapContainsThenArrayContainsFrom!310 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!56430 (_ BitVec 32) List!19268) Bool)

(assert (=> b!936941 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19265)))

(declare-fun lt!422686 () Unit!31630)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56430 (_ BitVec 32) (_ BitVec 32)) Unit!31630)

(assert (=> b!936941 (= lt!422686 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun contains!5111 (ListLongMap!12171 (_ BitVec 64)) Bool)

(assert (=> b!936941 (contains!5111 lt!422683 k!1099)))

(declare-fun lt!422675 () tuple2!13460)

(declare-fun +!2797 (ListLongMap!12171 tuple2!13460) ListLongMap!12171)

(assert (=> b!936941 (= lt!422683 (+!2797 lt!422685 lt!422675))))

(declare-fun lt!422684 () Unit!31630)

(declare-fun addStillContains!553 (ListLongMap!12171 (_ BitVec 64) V!31943 (_ BitVec 64)) Unit!31630)

(assert (=> b!936941 (= lt!422684 (addStillContains!553 lt!422685 lt!422682 lt!422679 k!1099))))

(declare-fun getCurrentListMap!3290 (array!56430 array!56432 (_ BitVec 32) (_ BitVec 32) V!31943 V!31943 (_ BitVec 32) Int) ListLongMap!12171)

(assert (=> b!936941 (= (getCurrentListMap!3290 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2797 (getCurrentListMap!3290 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!422675))))

(assert (=> b!936941 (= lt!422675 (tuple2!13461 lt!422682 lt!422679))))

(declare-fun get!14333 (ValueCell!9635 V!31943) V!31943)

(declare-fun dynLambda!1636 (Int (_ BitVec 64)) V!31943)

(assert (=> b!936941 (= lt!422679 (get!14333 (select (arr!27152 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1636 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!422681 () Unit!31630)

(declare-fun lemmaListMapRecursiveValidKeyArray!232 (array!56430 array!56432 (_ BitVec 32) (_ BitVec 32) V!31943 V!31943 (_ BitVec 32) Int) Unit!31630)

(assert (=> b!936941 (= lt!422681 (lemmaListMapRecursiveValidKeyArray!232 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!936941 (= e!526153 lt!422680)))

(declare-fun b!936942 () Bool)

(declare-fun res!630818 () Bool)

(declare-fun e!526152 () Bool)

(assert (=> b!936942 (=> (not res!630818) (not e!526152))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56430 (_ BitVec 32)) Bool)

(assert (=> b!936942 (= res!630818 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!936943 () Bool)

(declare-fun res!630821 () Bool)

(assert (=> b!936943 (=> (not res!630821) (not e!526152))))

(assert (=> b!936943 (= res!630821 (and (= (size!27612 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27611 _keys!1487) (size!27612 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!936944 () Bool)

(declare-fun e!526148 () Bool)

(declare-fun mapRes!32121 () Bool)

(assert (=> b!936944 (= e!526148 (and e!526145 mapRes!32121))))

(declare-fun condMapEmpty!32121 () Bool)

(declare-fun mapDefault!32121 () ValueCell!9635)

