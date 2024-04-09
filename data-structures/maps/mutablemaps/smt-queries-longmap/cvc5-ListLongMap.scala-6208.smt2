; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79410 () Bool)

(assert start!79410)

(declare-fun b_free!17569 () Bool)

(declare-fun b_next!17569 () Bool)

(assert (=> start!79410 (= b_free!17569 (not b_next!17569))))

(declare-fun tp!61151 () Bool)

(declare-fun b_and!28715 () Bool)

(assert (=> start!79410 (= tp!61151 b_and!28715)))

(declare-fun b!932500 () Bool)

(declare-fun e!523685 () Bool)

(assert (=> b!932500 (= e!523685 (not true))))

(declare-datatypes ((array!56116 0))(
  ( (array!56117 (arr!26998 (Array (_ BitVec 32) (_ BitVec 64))) (size!27458 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56116)

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((List!19134 0))(
  ( (Nil!19131) (Cons!19130 (h!20276 (_ BitVec 64)) (t!27255 List!19134)) )
))
(declare-fun arrayNoDuplicates!0 (array!56116 (_ BitVec 32) List!19134) Bool)

(assert (=> b!932500 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19131)))

(declare-datatypes ((Unit!31466 0))(
  ( (Unit!31467) )
))
(declare-fun lt!419941 () Unit!31466)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56116 (_ BitVec 32) (_ BitVec 32)) Unit!31466)

(assert (=> b!932500 (= lt!419941 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((V!31735 0))(
  ( (V!31736 (val!10089 Int)) )
))
(declare-datatypes ((tuple2!13324 0))(
  ( (tuple2!13325 (_1!6672 (_ BitVec 64)) (_2!6672 V!31735)) )
))
(declare-datatypes ((List!19135 0))(
  ( (Nil!19132) (Cons!19131 (h!20277 tuple2!13324) (t!27256 List!19135)) )
))
(declare-datatypes ((ListLongMap!12035 0))(
  ( (ListLongMap!12036 (toList!6033 List!19135)) )
))
(declare-fun lt!419944 () ListLongMap!12035)

(declare-fun lt!419946 () tuple2!13324)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!5033 (ListLongMap!12035 (_ BitVec 64)) Bool)

(declare-fun +!2739 (ListLongMap!12035 tuple2!13324) ListLongMap!12035)

(assert (=> b!932500 (contains!5033 (+!2739 lt!419944 lt!419946) k!1099)))

(declare-fun lt!419943 () (_ BitVec 64))

(declare-fun lt!419942 () V!31735)

(declare-fun lt!419947 () Unit!31466)

(declare-fun addStillContains!495 (ListLongMap!12035 (_ BitVec 64) V!31735 (_ BitVec 64)) Unit!31466)

(assert (=> b!932500 (= lt!419947 (addStillContains!495 lt!419944 lt!419943 lt!419942 k!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9557 0))(
  ( (ValueCellFull!9557 (v!12608 V!31735)) (EmptyCell!9557) )
))
(declare-datatypes ((array!56118 0))(
  ( (array!56119 (arr!26999 (Array (_ BitVec 32) ValueCell!9557)) (size!27459 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56118)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31735)

(declare-fun minValue!1173 () V!31735)

(declare-fun getCurrentListMap!3226 (array!56116 array!56118 (_ BitVec 32) (_ BitVec 32) V!31735 V!31735 (_ BitVec 32) Int) ListLongMap!12035)

(assert (=> b!932500 (= (getCurrentListMap!3226 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2739 (getCurrentListMap!3226 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!419946))))

(assert (=> b!932500 (= lt!419946 (tuple2!13325 lt!419943 lt!419942))))

(declare-fun get!14211 (ValueCell!9557 V!31735) V!31735)

(declare-fun dynLambda!1578 (Int (_ BitVec 64)) V!31735)

(assert (=> b!932500 (= lt!419942 (get!14211 (select (arr!26999 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1578 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!419945 () Unit!31466)

(declare-fun lemmaListMapRecursiveValidKeyArray!174 (array!56116 array!56118 (_ BitVec 32) (_ BitVec 32) V!31735 V!31735 (_ BitVec 32) Int) Unit!31466)

(assert (=> b!932500 (= lt!419945 (lemmaListMapRecursiveValidKeyArray!174 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!932501 () Bool)

(declare-fun res!628150 () Bool)

(declare-fun e!523686 () Bool)

(assert (=> b!932501 (=> (not res!628150) (not e!523686))))

(declare-fun v!791 () V!31735)

(declare-fun apply!818 (ListLongMap!12035 (_ BitVec 64)) V!31735)

(assert (=> b!932501 (= res!628150 (= (apply!818 lt!419944 k!1099) v!791))))

(declare-fun b!932502 () Bool)

(declare-fun e!523689 () Bool)

(declare-fun e!523690 () Bool)

(declare-fun mapRes!31875 () Bool)

(assert (=> b!932502 (= e!523689 (and e!523690 mapRes!31875))))

(declare-fun condMapEmpty!31875 () Bool)

(declare-fun mapDefault!31875 () ValueCell!9557)

