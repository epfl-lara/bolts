; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79184 () Bool)

(assert start!79184)

(declare-fun b_free!17369 () Bool)

(declare-fun b_next!17369 () Bool)

(assert (=> start!79184 (= b_free!17369 (not b_next!17369))))

(declare-fun tp!60548 () Bool)

(declare-fun b_and!28453 () Bool)

(assert (=> start!79184 (= tp!60548 b_and!28453)))

(declare-fun res!625681 () Bool)

(declare-fun e!521694 () Bool)

(assert (=> start!79184 (=> (not res!625681) (not e!521694))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79184 (= res!625681 (validMask!0 mask!1881))))

(assert (=> start!79184 e!521694))

(assert (=> start!79184 true))

(declare-datatypes ((V!31467 0))(
  ( (V!31468 (val!9989 Int)) )
))
(declare-datatypes ((ValueCell!9457 0))(
  ( (ValueCellFull!9457 (v!12507 V!31467)) (EmptyCell!9457) )
))
(declare-datatypes ((array!55728 0))(
  ( (array!55729 (arr!26805 (Array (_ BitVec 32) ValueCell!9457)) (size!27265 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55728)

(declare-fun e!521695 () Bool)

(declare-fun array_inv!20860 (array!55728) Bool)

(assert (=> start!79184 (and (array_inv!20860 _values!1231) e!521695)))

(assert (=> start!79184 tp!60548))

(declare-datatypes ((array!55730 0))(
  ( (array!55731 (arr!26806 (Array (_ BitVec 32) (_ BitVec 64))) (size!27266 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55730)

(declare-fun array_inv!20861 (array!55730) Bool)

(assert (=> start!79184 (array_inv!20861 _keys!1487)))

(declare-fun tp_is_empty!19877 () Bool)

(assert (=> start!79184 tp_is_empty!19877))

(declare-fun b!928983 () Bool)

(declare-fun e!521693 () Bool)

(assert (=> b!928983 (= e!521694 e!521693)))

(declare-fun res!625685 () Bool)

(assert (=> b!928983 (=> (not res!625685) (not e!521693))))

(declare-datatypes ((tuple2!13164 0))(
  ( (tuple2!13165 (_1!6592 (_ BitVec 64)) (_2!6592 V!31467)) )
))
(declare-datatypes ((List!18987 0))(
  ( (Nil!18984) (Cons!18983 (h!20129 tuple2!13164) (t!27052 List!18987)) )
))
(declare-datatypes ((ListLongMap!11875 0))(
  ( (ListLongMap!11876 (toList!5953 List!18987)) )
))
(declare-fun lt!418959 () ListLongMap!11875)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4969 (ListLongMap!11875 (_ BitVec 64)) Bool)

(assert (=> b!928983 (= res!625685 (contains!4969 lt!418959 k!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31467)

(declare-fun minValue!1173 () V!31467)

(declare-fun getCurrentListMap!3163 (array!55730 array!55728 (_ BitVec 32) (_ BitVec 32) V!31467 V!31467 (_ BitVec 32) Int) ListLongMap!11875)

(assert (=> b!928983 (= lt!418959 (getCurrentListMap!3163 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!928984 () Bool)

(declare-fun res!625680 () Bool)

(assert (=> b!928984 (=> (not res!625680) (not e!521694))))

(assert (=> b!928984 (= res!625680 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27266 _keys!1487))))))

(declare-fun b!928985 () Bool)

(assert (=> b!928985 (= e!521693 false)))

(declare-fun lt!418958 () V!31467)

(declare-fun apply!748 (ListLongMap!11875 (_ BitVec 64)) V!31467)

(assert (=> b!928985 (= lt!418958 (apply!748 lt!418959 k!1099))))

(declare-fun b!928986 () Bool)

(declare-fun res!625684 () Bool)

(assert (=> b!928986 (=> (not res!625684) (not e!521694))))

(assert (=> b!928986 (= res!625684 (and (= (size!27265 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27266 _keys!1487) (size!27265 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!31572 () Bool)

(declare-fun mapRes!31572 () Bool)

(assert (=> mapIsEmpty!31572 mapRes!31572))

(declare-fun b!928987 () Bool)

(declare-fun res!625683 () Bool)

(assert (=> b!928987 (=> (not res!625683) (not e!521694))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55730 (_ BitVec 32)) Bool)

(assert (=> b!928987 (= res!625683 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!928988 () Bool)

(declare-fun e!521692 () Bool)

(assert (=> b!928988 (= e!521692 tp_is_empty!19877)))

(declare-fun b!928989 () Bool)

(declare-fun res!625682 () Bool)

(assert (=> b!928989 (=> (not res!625682) (not e!521694))))

(declare-datatypes ((List!18988 0))(
  ( (Nil!18985) (Cons!18984 (h!20130 (_ BitVec 64)) (t!27053 List!18988)) )
))
(declare-fun arrayNoDuplicates!0 (array!55730 (_ BitVec 32) List!18988) Bool)

(assert (=> b!928989 (= res!625682 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18985))))

(declare-fun b!928990 () Bool)

(assert (=> b!928990 (= e!521695 (and e!521692 mapRes!31572))))

(declare-fun condMapEmpty!31572 () Bool)

(declare-fun mapDefault!31572 () ValueCell!9457)

