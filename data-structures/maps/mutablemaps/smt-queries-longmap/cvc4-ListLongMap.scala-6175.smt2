; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79190 () Bool)

(assert start!79190)

(declare-fun b_free!17375 () Bool)

(declare-fun b_next!17375 () Bool)

(assert (=> start!79190 (= b_free!17375 (not b_next!17375))))

(declare-fun tp!60567 () Bool)

(declare-fun b_and!28459 () Bool)

(assert (=> start!79190 (= tp!60567 b_and!28459)))

(declare-fun mapNonEmpty!31581 () Bool)

(declare-fun mapRes!31581 () Bool)

(declare-fun tp!60566 () Bool)

(declare-fun e!521748 () Bool)

(assert (=> mapNonEmpty!31581 (= mapRes!31581 (and tp!60566 e!521748))))

(declare-datatypes ((V!31475 0))(
  ( (V!31476 (val!9992 Int)) )
))
(declare-datatypes ((ValueCell!9460 0))(
  ( (ValueCellFull!9460 (v!12510 V!31475)) (EmptyCell!9460) )
))
(declare-fun mapRest!31581 () (Array (_ BitVec 32) ValueCell!9460))

(declare-fun mapKey!31581 () (_ BitVec 32))

(declare-datatypes ((array!55740 0))(
  ( (array!55741 (arr!26811 (Array (_ BitVec 32) ValueCell!9460)) (size!27271 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55740)

(declare-fun mapValue!31581 () ValueCell!9460)

(assert (=> mapNonEmpty!31581 (= (arr!26811 _values!1231) (store mapRest!31581 mapKey!31581 mapValue!31581))))

(declare-fun mapIsEmpty!31581 () Bool)

(assert (=> mapIsEmpty!31581 mapRes!31581))

(declare-fun b!929064 () Bool)

(declare-fun res!625737 () Bool)

(declare-fun e!521750 () Bool)

(assert (=> b!929064 (=> (not res!625737) (not e!521750))))

(declare-datatypes ((array!55742 0))(
  ( (array!55743 (arr!26812 (Array (_ BitVec 32) (_ BitVec 64))) (size!27272 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55742)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!929064 (= res!625737 (and (= (size!27271 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27272 _keys!1487) (size!27271 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!929065 () Bool)

(declare-fun e!521746 () Bool)

(declare-fun tp_is_empty!19883 () Bool)

(assert (=> b!929065 (= e!521746 tp_is_empty!19883)))

(declare-fun b!929066 () Bool)

(declare-fun e!521751 () Bool)

(assert (=> b!929066 (= e!521751 (and e!521746 mapRes!31581))))

(declare-fun condMapEmpty!31581 () Bool)

(declare-fun mapDefault!31581 () ValueCell!9460)

