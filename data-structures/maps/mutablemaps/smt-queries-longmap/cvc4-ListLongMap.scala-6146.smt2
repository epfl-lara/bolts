; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79016 () Bool)

(assert start!79016)

(declare-fun b_free!17201 () Bool)

(declare-fun b_next!17201 () Bool)

(assert (=> start!79016 (= b_free!17201 (not b_next!17201))))

(declare-fun tp!60045 () Bool)

(declare-fun b_and!28157 () Bool)

(assert (=> start!79016 (= tp!60045 b_and!28157)))

(declare-fun b!924535 () Bool)

(declare-fun res!623260 () Bool)

(declare-fun e!518871 () Bool)

(assert (=> b!924535 (=> (not res!623260) (not e!518871))))

(declare-datatypes ((array!55402 0))(
  ( (array!55403 (arr!26642 (Array (_ BitVec 32) (_ BitVec 64))) (size!27102 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55402)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55402 (_ BitVec 32)) Bool)

(assert (=> b!924535 (= res!623260 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!924536 () Bool)

(declare-fun res!623256 () Bool)

(assert (=> b!924536 (=> (not res!623256) (not e!518871))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31243 0))(
  ( (V!31244 (val!9905 Int)) )
))
(declare-datatypes ((ValueCell!9373 0))(
  ( (ValueCellFull!9373 (v!12423 V!31243)) (EmptyCell!9373) )
))
(declare-datatypes ((array!55404 0))(
  ( (array!55405 (arr!26643 (Array (_ BitVec 32) ValueCell!9373)) (size!27103 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55404)

(assert (=> b!924536 (= res!623256 (and (= (size!27103 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27102 _keys!1487) (size!27103 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!924537 () Bool)

(declare-fun res!623259 () Bool)

(assert (=> b!924537 (=> (not res!623259) (not e!518871))))

(declare-datatypes ((List!18851 0))(
  ( (Nil!18848) (Cons!18847 (h!19993 (_ BitVec 64)) (t!26790 List!18851)) )
))
(declare-fun arrayNoDuplicates!0 (array!55402 (_ BitVec 32) List!18851) Bool)

(assert (=> b!924537 (= res!623259 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18848))))

(declare-fun b!924538 () Bool)

(declare-fun e!518873 () Bool)

(assert (=> b!924538 (= e!518873 false)))

(declare-fun lt!415813 () V!31243)

(declare-datatypes ((tuple2!13014 0))(
  ( (tuple2!13015 (_1!6517 (_ BitVec 64)) (_2!6517 V!31243)) )
))
(declare-datatypes ((List!18852 0))(
  ( (Nil!18849) (Cons!18848 (h!19994 tuple2!13014) (t!26791 List!18852)) )
))
(declare-datatypes ((ListLongMap!11725 0))(
  ( (ListLongMap!11726 (toList!5878 List!18852)) )
))
(declare-fun lt!415826 () ListLongMap!11725)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!680 (ListLongMap!11725 (_ BitVec 64)) V!31243)

(assert (=> b!924538 (= lt!415813 (apply!680 lt!415826 k!1099))))

(declare-fun b!924539 () Bool)

(declare-fun e!518877 () Bool)

(declare-fun tp_is_empty!19709 () Bool)

(assert (=> b!924539 (= e!518877 tp_is_empty!19709)))

(declare-fun b!924540 () Bool)

(declare-fun e!518872 () Bool)

(assert (=> b!924540 (= e!518872 e!518873)))

(declare-fun res!623257 () Bool)

(assert (=> b!924540 (=> (not res!623257) (not e!518873))))

(declare-fun contains!4902 (ListLongMap!11725 (_ BitVec 64)) Bool)

(assert (=> b!924540 (= res!623257 (contains!4902 lt!415826 k!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31243)

(declare-fun minValue!1173 () V!31243)

(declare-fun getCurrentListMap!3096 (array!55402 array!55404 (_ BitVec 32) (_ BitVec 32) V!31243 V!31243 (_ BitVec 32) Int) ListLongMap!11725)

(assert (=> b!924540 (= lt!415826 (getCurrentListMap!3096 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun res!623261 () Bool)

(assert (=> start!79016 (=> (not res!623261) (not e!518871))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79016 (= res!623261 (validMask!0 mask!1881))))

(assert (=> start!79016 e!518871))

(assert (=> start!79016 true))

(assert (=> start!79016 tp_is_empty!19709))

(declare-fun e!518878 () Bool)

(declare-fun array_inv!20746 (array!55404) Bool)

(assert (=> start!79016 (and (array_inv!20746 _values!1231) e!518878)))

(assert (=> start!79016 tp!60045))

(declare-fun array_inv!20747 (array!55402) Bool)

(assert (=> start!79016 (array_inv!20747 _keys!1487)))

(declare-fun b!924541 () Bool)

(declare-fun e!518879 () Bool)

(declare-fun e!518874 () Bool)

(assert (=> b!924541 (= e!518879 e!518874)))

(declare-fun res!623262 () Bool)

(assert (=> b!924541 (=> (not res!623262) (not e!518874))))

(declare-fun v!791 () V!31243)

(declare-fun lt!415816 () V!31243)

(assert (=> b!924541 (= res!623262 (and (= lt!415816 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-fun lt!415823 () ListLongMap!11725)

(assert (=> b!924541 (= lt!415816 (apply!680 lt!415823 k!1099))))

(declare-fun b!924542 () Bool)

(assert (=> b!924542 (= e!518871 e!518879)))

(declare-fun res!623263 () Bool)

(assert (=> b!924542 (=> (not res!623263) (not e!518879))))

(assert (=> b!924542 (= res!623263 (contains!4902 lt!415823 k!1099))))

(assert (=> b!924542 (= lt!415823 (getCurrentListMap!3096 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!924543 () Bool)

(declare-fun e!518875 () Bool)

(declare-fun mapRes!31320 () Bool)

(assert (=> b!924543 (= e!518878 (and e!518875 mapRes!31320))))

(declare-fun condMapEmpty!31320 () Bool)

(declare-fun mapDefault!31320 () ValueCell!9373)

