; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79250 () Bool)

(assert start!79250)

(declare-fun b_free!17435 () Bool)

(declare-fun b_next!17435 () Bool)

(assert (=> start!79250 (= b_free!17435 (not b_next!17435))))

(declare-fun tp!60746 () Bool)

(declare-fun b_and!28519 () Bool)

(assert (=> start!79250 (= tp!60746 b_and!28519)))

(declare-fun b!930051 () Bool)

(declare-fun res!626451 () Bool)

(declare-fun e!522287 () Bool)

(assert (=> b!930051 (=> (not res!626451) (not e!522287))))

(declare-datatypes ((array!55856 0))(
  ( (array!55857 (arr!26869 (Array (_ BitVec 32) (_ BitVec 64))) (size!27329 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55856)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31555 0))(
  ( (V!31556 (val!10022 Int)) )
))
(declare-datatypes ((ValueCell!9490 0))(
  ( (ValueCellFull!9490 (v!12540 V!31555)) (EmptyCell!9490) )
))
(declare-datatypes ((array!55858 0))(
  ( (array!55859 (arr!26870 (Array (_ BitVec 32) ValueCell!9490)) (size!27330 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55858)

(assert (=> b!930051 (= res!626451 (and (= (size!27330 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27329 _keys!1487) (size!27330 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!930052 () Bool)

(declare-fun res!626455 () Bool)

(assert (=> b!930052 (=> (not res!626455) (not e!522287))))

(declare-datatypes ((List!19033 0))(
  ( (Nil!19030) (Cons!19029 (h!20175 (_ BitVec 64)) (t!27098 List!19033)) )
))
(declare-fun arrayNoDuplicates!0 (array!55856 (_ BitVec 32) List!19033) Bool)

(assert (=> b!930052 (= res!626455 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19030))))

(declare-fun res!626458 () Bool)

(assert (=> start!79250 (=> (not res!626458) (not e!522287))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79250 (= res!626458 (validMask!0 mask!1881))))

(assert (=> start!79250 e!522287))

(assert (=> start!79250 true))

(declare-fun tp_is_empty!19943 () Bool)

(assert (=> start!79250 tp_is_empty!19943))

(declare-fun e!522291 () Bool)

(declare-fun array_inv!20896 (array!55858) Bool)

(assert (=> start!79250 (and (array_inv!20896 _values!1231) e!522291)))

(assert (=> start!79250 tp!60746))

(declare-fun array_inv!20897 (array!55856) Bool)

(assert (=> start!79250 (array_inv!20897 _keys!1487)))

(declare-fun b!930053 () Bool)

(declare-fun e!522288 () Bool)

(assert (=> b!930053 (= e!522288 tp_is_empty!19943)))

(declare-fun b!930054 () Bool)

(declare-fun res!626459 () Bool)

(declare-fun e!522289 () Bool)

(assert (=> b!930054 (=> (not res!626459) (not e!522289))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!930054 (= res!626459 (bvsle from!1844 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!31671 () Bool)

(declare-fun mapRes!31671 () Bool)

(declare-fun tp!60747 () Bool)

(assert (=> mapNonEmpty!31671 (= mapRes!31671 (and tp!60747 e!522288))))

(declare-fun mapValue!31671 () ValueCell!9490)

(declare-fun mapRest!31671 () (Array (_ BitVec 32) ValueCell!9490))

(declare-fun mapKey!31671 () (_ BitVec 32))

(assert (=> mapNonEmpty!31671 (= (arr!26870 _values!1231) (store mapRest!31671 mapKey!31671 mapValue!31671))))

(declare-fun b!930055 () Bool)

(declare-fun e!522286 () Bool)

(assert (=> b!930055 (= e!522291 (and e!522286 mapRes!31671))))

(declare-fun condMapEmpty!31671 () Bool)

(declare-fun mapDefault!31671 () ValueCell!9490)

