; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79502 () Bool)

(assert start!79502)

(declare-fun b_free!17629 () Bool)

(declare-fun b_next!17629 () Bool)

(assert (=> start!79502 (= b_free!17629 (not b_next!17629))))

(declare-fun tp!61334 () Bool)

(declare-fun b_and!28843 () Bool)

(assert (=> start!79502 (= tp!61334 b_and!28843)))

(declare-fun b!933939 () Bool)

(declare-fun e!524455 () Bool)

(assert (=> b!933939 (= e!524455 (not true))))

(declare-fun e!524452 () Bool)

(assert (=> b!933939 e!524452))

(declare-fun c!97052 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(assert (=> b!933939 (= c!97052 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31815 0))(
  ( (V!31816 (val!10119 Int)) )
))
(declare-datatypes ((ValueCell!9587 0))(
  ( (ValueCellFull!9587 (v!12639 V!31815)) (EmptyCell!9587) )
))
(declare-datatypes ((array!56232 0))(
  ( (array!56233 (arr!27055 (Array (_ BitVec 32) ValueCell!9587)) (size!27515 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56232)

(declare-fun defaultEntry!1235 () Int)

(declare-datatypes ((array!56234 0))(
  ( (array!56235 (arr!27056 (Array (_ BitVec 32) (_ BitVec 64))) (size!27516 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56234)

(declare-datatypes ((Unit!31509 0))(
  ( (Unit!31510) )
))
(declare-fun lt!420746 () Unit!31509)

(declare-fun zeroValue!1173 () V!31815)

(declare-fun minValue!1173 () V!31815)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!271 (array!56234 array!56232 (_ BitVec 32) (_ BitVec 32) V!31815 V!31815 (_ BitVec 64) (_ BitVec 32) Int) Unit!31509)

(assert (=> b!933939 (= lt!420746 (lemmaListMapContainsThenArrayContainsFrom!271 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-datatypes ((List!19181 0))(
  ( (Nil!19178) (Cons!19177 (h!20323 (_ BitVec 64)) (t!27362 List!19181)) )
))
(declare-fun arrayNoDuplicates!0 (array!56234 (_ BitVec 32) List!19181) Bool)

(assert (=> b!933939 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19178)))

(declare-fun lt!420745 () Unit!31509)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56234 (_ BitVec 32) (_ BitVec 32)) Unit!31509)

(assert (=> b!933939 (= lt!420745 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((tuple2!13374 0))(
  ( (tuple2!13375 (_1!6697 (_ BitVec 64)) (_2!6697 V!31815)) )
))
(declare-datatypes ((List!19182 0))(
  ( (Nil!19179) (Cons!19178 (h!20324 tuple2!13374) (t!27363 List!19182)) )
))
(declare-datatypes ((ListLongMap!12085 0))(
  ( (ListLongMap!12086 (toList!6058 List!19182)) )
))
(declare-fun lt!420752 () ListLongMap!12085)

(declare-fun lt!420748 () tuple2!13374)

(declare-fun contains!5059 (ListLongMap!12085 (_ BitVec 64)) Bool)

(declare-fun +!2758 (ListLongMap!12085 tuple2!13374) ListLongMap!12085)

(assert (=> b!933939 (contains!5059 (+!2758 lt!420752 lt!420748) k!1099)))

(declare-fun lt!420751 () Unit!31509)

(declare-fun lt!420750 () (_ BitVec 64))

(declare-fun lt!420747 () V!31815)

(declare-fun addStillContains!514 (ListLongMap!12085 (_ BitVec 64) V!31815 (_ BitVec 64)) Unit!31509)

(assert (=> b!933939 (= lt!420751 (addStillContains!514 lt!420752 lt!420750 lt!420747 k!1099))))

(declare-fun getCurrentListMap!3250 (array!56234 array!56232 (_ BitVec 32) (_ BitVec 32) V!31815 V!31815 (_ BitVec 32) Int) ListLongMap!12085)

(assert (=> b!933939 (= (getCurrentListMap!3250 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2758 (getCurrentListMap!3250 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!420748))))

(assert (=> b!933939 (= lt!420748 (tuple2!13375 lt!420750 lt!420747))))

(declare-fun get!14253 (ValueCell!9587 V!31815) V!31815)

(declare-fun dynLambda!1597 (Int (_ BitVec 64)) V!31815)

(assert (=> b!933939 (= lt!420747 (get!14253 (select (arr!27055 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1597 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!420749 () Unit!31509)

(declare-fun lemmaListMapRecursiveValidKeyArray!193 (array!56234 array!56232 (_ BitVec 32) (_ BitVec 32) V!31815 V!31815 (_ BitVec 32) Int) Unit!31509)

(assert (=> b!933939 (= lt!420749 (lemmaListMapRecursiveValidKeyArray!193 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!933940 () Bool)

(declare-fun res!629134 () Bool)

(declare-fun e!524451 () Bool)

(assert (=> b!933940 (=> (not res!629134) (not e!524451))))

(assert (=> b!933940 (= res!629134 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!933941 () Bool)

(declare-fun e!524453 () Bool)

(declare-fun e!524456 () Bool)

(declare-fun mapRes!31968 () Bool)

(assert (=> b!933941 (= e!524453 (and e!524456 mapRes!31968))))

(declare-fun condMapEmpty!31968 () Bool)

(declare-fun mapDefault!31968 () ValueCell!9587)

