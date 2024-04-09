; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78838 () Bool)

(assert start!78838)

(declare-fun b_free!17023 () Bool)

(declare-fun b_next!17023 () Bool)

(assert (=> start!78838 (= b_free!17023 (not b_next!17023))))

(declare-fun tp!59510 () Bool)

(declare-fun b_and!27801 () Bool)

(assert (=> start!78838 (= tp!59510 b_and!27801)))

(declare-fun b!919901 () Bool)

(declare-fun res!620426 () Bool)

(declare-fun e!516354 () Bool)

(assert (=> b!919901 (=> (not res!620426) (not e!516354))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((V!31007 0))(
  ( (V!31008 (val!9816 Int)) )
))
(declare-fun v!791 () V!31007)

(declare-datatypes ((tuple2!12848 0))(
  ( (tuple2!12849 (_1!6434 (_ BitVec 64)) (_2!6434 V!31007)) )
))
(declare-datatypes ((List!18691 0))(
  ( (Nil!18688) (Cons!18687 (h!19833 tuple2!12848) (t!26452 List!18691)) )
))
(declare-datatypes ((ListLongMap!11559 0))(
  ( (ListLongMap!11560 (toList!5795 List!18691)) )
))
(declare-fun lt!412968 () ListLongMap!11559)

(declare-fun apply!608 (ListLongMap!11559 (_ BitVec 64)) V!31007)

(assert (=> b!919901 (= res!620426 (= (apply!608 lt!412968 k!1099) v!791))))

(declare-fun b!919902 () Bool)

(declare-fun res!620423 () Bool)

(declare-fun e!516349 () Bool)

(assert (=> b!919902 (=> (not res!620423) (not e!516349))))

(declare-datatypes ((array!55054 0))(
  ( (array!55055 (arr!26468 (Array (_ BitVec 32) (_ BitVec 64))) (size!26928 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55054)

(declare-datatypes ((List!18692 0))(
  ( (Nil!18689) (Cons!18688 (h!19834 (_ BitVec 64)) (t!26453 List!18692)) )
))
(declare-fun arrayNoDuplicates!0 (array!55054 (_ BitVec 32) List!18692) Bool)

(assert (=> b!919902 (= res!620423 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18689))))

(declare-fun b!919903 () Bool)

(declare-fun e!516350 () Bool)

(assert (=> b!919903 (= e!516354 e!516350)))

(declare-fun res!620429 () Bool)

(assert (=> b!919903 (=> (not res!620429) (not e!516350))))

(declare-fun lt!412967 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!919903 (= res!620429 (validKeyInArray!0 lt!412967))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!919903 (= lt!412967 (select (arr!26468 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!919904 () Bool)

(declare-fun res!620425 () Bool)

(assert (=> b!919904 (=> (not res!620425) (not e!516349))))

(assert (=> b!919904 (= res!620425 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26928 _keys!1487))))))

(declare-fun b!919905 () Bool)

(assert (=> b!919905 (= e!516349 e!516354)))

(declare-fun res!620430 () Bool)

(assert (=> b!919905 (=> (not res!620430) (not e!516354))))

(declare-fun contains!4805 (ListLongMap!11559 (_ BitVec 64)) Bool)

(assert (=> b!919905 (= res!620430 (contains!4805 lt!412968 k!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-datatypes ((ValueCell!9284 0))(
  ( (ValueCellFull!9284 (v!12334 V!31007)) (EmptyCell!9284) )
))
(declare-datatypes ((array!55056 0))(
  ( (array!55057 (arr!26469 (Array (_ BitVec 32) ValueCell!9284)) (size!26929 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55056)

(declare-fun zeroValue!1173 () V!31007)

(declare-fun minValue!1173 () V!31007)

(declare-fun getCurrentListMap!3017 (array!55054 array!55056 (_ BitVec 32) (_ BitVec 32) V!31007 V!31007 (_ BitVec 32) Int) ListLongMap!11559)

(assert (=> b!919905 (= lt!412968 (getCurrentListMap!3017 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapNonEmpty!31053 () Bool)

(declare-fun mapRes!31053 () Bool)

(declare-fun tp!59511 () Bool)

(declare-fun e!516353 () Bool)

(assert (=> mapNonEmpty!31053 (= mapRes!31053 (and tp!59511 e!516353))))

(declare-fun mapValue!31053 () ValueCell!9284)

(declare-fun mapRest!31053 () (Array (_ BitVec 32) ValueCell!9284))

(declare-fun mapKey!31053 () (_ BitVec 32))

(assert (=> mapNonEmpty!31053 (= (arr!26469 _values!1231) (store mapRest!31053 mapKey!31053 mapValue!31053))))

(declare-fun b!919906 () Bool)

(declare-fun e!516348 () Bool)

(declare-fun e!516351 () Bool)

(assert (=> b!919906 (= e!516348 (and e!516351 mapRes!31053))))

(declare-fun condMapEmpty!31053 () Bool)

(declare-fun mapDefault!31053 () ValueCell!9284)

